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
; SH_RED                   0   xyzw        5     NONE   float       
; SH_GREEN                 0   xyzw        6     NONE   float       
; SH_BLUE                  0   xyzw        7     NONE   float       
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
; shader hash: b2b3fbe1823a1ccf7042d9fd854bb0d3
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = fmul fast float %62, %56
  %64 = fmul fast float %62, %57
  %65 = select i1 %34, float 1.000000e+00, float -1.000000e+00
  %66 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %67 = bitcast float %66 to i32
  %68 = ashr i32 %67, 1
  %69 = sub nsw i32 1597250115, %68
  %70 = bitcast i32 %69 to float
  %71 = fmul fast float %48, %65
  %72 = fmul fast float %71, %70
  %73 = fmul fast float %49, %65
  %74 = fmul fast float %73, %70
  %75 = fmul fast float %50, %65
  %76 = fmul fast float %75, %70
  %77 = fmul fast float %49, %46
  %78 = fmul fast float %50, %45
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %50, %44
  %81 = fmul fast float %48, %46
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %48, %45
  %84 = fmul fast float %49, %44
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %79, %47
  %87 = fmul fast float %82, %47
  %88 = fmul fast float %85, %47
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 3
  %92 = fmul fast float %63, 2.000000e+00
  %93 = fmul fast float %92, %90
  %94 = fmul fast float %64, 2.000000e+00
  %95 = fmul fast float %94, %91
  %96 = fsub fast float 1.000000e+00, %93
  %97 = fsub fast float 1.000000e+00, %95
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = fmul fast float %96, %99
  %103 = fmul fast float %96, %100
  %104 = fmul fast float %96, %101
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fmul fast float %97, %106
  %110 = fmul fast float %97, %107
  %111 = fmul fast float %97, %108
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %116 = fadd fast float %109, %113
  %117 = fadd fast float %116, %102
  %118 = fadd fast float %110, %114
  %119 = fadd fast float %118, %103
  %120 = fadd fast float %111, %115
  %121 = fadd fast float %120, %104
  %122 = fmul fast float %117, %58
  %123 = fmul fast float %119, %58
  %124 = fmul fast float %121, %58
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %128 = fmul fast float %126, %63
  %129 = fmul fast float %127, %64
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = and i32 %131, 114688
  %133 = icmp ne i32 %132, 0
  %134 = select i1 %133, float %128, float 0.000000e+00
  %135 = select i1 %133, float %129, float 0.000000e+00
  %136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %134, float %135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 0
  %138 = fmul fast float %137, 2.550000e+02
  %139 = fptoui float %138 to i32
  %140 = select i1 %133, i32 %139, i32 0
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.i32 %142, 3
  %144 = and i32 %143, 3
  %145 = icmp ne i32 %144, 0
  %146 = and i32 %143, 4
  %147 = icmp ne i32 %146, 0
  %148 = and i1 %145, %147
  br i1 %148, label %149, label %160

; <label>:149                                     ; preds = %0
  %150 = extractvalue %dx.types.CBufRet.f32 %141, 3
  %151 = fmul fast float %150, %64
  %152 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %153 = fmul fast float %152, %63
  %154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %153, float %151, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = fsub fast float 1.000000e+00, %155
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = fcmp fast olt float %156, %158
  br label %163

; <label>:160                                     ; preds = %0
  %161 = icmp eq i32 %146, 0
  %162 = and i1 %145, %161
  br label %163

; <label>:163                                     ; preds = %160, %149
  %164 = phi i1 [ %159, %149 ], [ %162, %160 ]
  %165 = add i32 %35, 156
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
  %167 = extractvalue %dx.types.ResRet.i32 %166, 0
  %168 = shl i32 %167, 4
  %169 = and i32 %168, 32752
  %170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %169)  ; LegacyF16ToF32(value)
  %171 = lshr i32 %167, 7
  %172 = and i32 %171, 32752
  %173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %172)  ; LegacyF16ToF32(value)
  %174 = lshr i32 %167, 22
  %175 = shl nuw nsw i32 %174, 5
  %176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %175)  ; LegacyF16ToF32(value)
  %177 = add i32 %35, 216
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = and i32 %179, 255
  %181 = uitofp i32 %180 to float
  %182 = fmul fast float %181, 0x3F70101020000000
  %183 = lshr i32 %179, 8
  %184 = and i32 %183, 255
  %185 = uitofp i32 %184 to float
  %186 = fmul fast float %185, 0x3F70101020000000
  %187 = lshr i32 %179, 16
  %188 = and i32 %187, 255
  %189 = uitofp i32 %188 to float
  %190 = fmul fast float %189, 0x3F70101020000000
  %191 = add i32 %35, 36
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = and i32 %193, 65535
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = lshr i32 %193, 16
  %197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %196)  ; LegacyF16ToF32(value)
  %198 = add i32 %35, 288
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = and i32 %200, 65535
  %202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %201)  ; LegacyF16ToF32(value)
  %203 = lshr i32 %200, 16
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = fmul fast float %202, 0x3F50624DE0000000
  %206 = fmul fast float %204, 0x3F50624DE0000000
  %207 = add i32 %35, 172
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
  %209 = extractvalue %dx.types.ResRet.i32 %208, 0
  %210 = shl i32 %209, 4
  %211 = and i32 %210, 32752
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = lshr i32 %209, 7
  %214 = and i32 %213, 32752
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = lshr i32 %209, 22
  %217 = shl nuw nsw i32 %216, 5
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = add i32 %35, 232
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = and i32 %221, 255
  %223 = uitofp i32 %222 to float
  %224 = fmul fast float %223, 0x3F70101020000000
  %225 = lshr i32 %221, 8
  %226 = and i32 %225, 255
  %227 = uitofp i32 %226 to float
  %228 = fmul fast float %227, 0x3F70101020000000
  %229 = lshr i32 %221, 16
  %230 = and i32 %229, 255
  %231 = uitofp i32 %230 to float
  %232 = fmul fast float %231, 0x3F70101020000000
  %233 = add i32 %35, 52
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %235, 16
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = add i32 %35, 304
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %242, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = fmul fast float %244, 0x3F50624DE0000000
  %248 = fmul fast float %246, 0x3F50624DE0000000
  %249 = add i32 %35, 188
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
  %251 = extractvalue %dx.types.ResRet.i32 %250, 0
  %252 = shl i32 %251, 4
  %253 = and i32 %252, 32752
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %251, 7
  %256 = and i32 %255, 32752
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %251, 22
  %259 = shl nuw nsw i32 %258, 5
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = add i32 %35, 248
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %263 = extractvalue %dx.types.ResRet.i32 %262, 0
  %264 = and i32 %263, 255
  %265 = uitofp i32 %264 to float
  %266 = fmul fast float %265, 0x3F70101020000000
  %267 = lshr i32 %263, 8
  %268 = and i32 %267, 255
  %269 = uitofp i32 %268 to float
  %270 = fmul fast float %269, 0x3F70101020000000
  %271 = lshr i32 %263, 16
  %272 = and i32 %271, 255
  %273 = uitofp i32 %272 to float
  %274 = fmul fast float %273, 0x3F70101020000000
  %275 = add i32 %35, 68
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = add i32 %35, 320
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %284, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = fmul fast float %286, 0x3F50624DE0000000
  %290 = fmul fast float %288, 0x3F50624DE0000000
  %291 = add i32 %35, 204
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
  %293 = extractvalue %dx.types.ResRet.i32 %292, 0
  %294 = shl i32 %293, 4
  %295 = and i32 %294, 32752
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %293, 7
  %298 = and i32 %297, 32752
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %293, 22
  %301 = shl nuw nsw i32 %300, 5
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = add i32 %35, 264
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = and i32 %305, 255
  %307 = uitofp i32 %306 to float
  %308 = fmul fast float %307, 0x3F70101020000000
  %309 = lshr i32 %305, 8
  %310 = and i32 %309, 255
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %311, 0x3F70101020000000
  %313 = lshr i32 %305, 16
  %314 = and i32 %313, 255
  %315 = uitofp i32 %314 to float
  %316 = fmul fast float %315, 0x3F70101020000000
  %317 = add i32 %35, 84
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = add i32 %35, 336
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %326, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = fmul fast float %328, 0x3F50624DE0000000
  %332 = fmul fast float %330, 0x3F50624DE0000000
  %333 = add i32 %35, 348
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 32
  %337 = icmp eq i32 %336, 0
  %338 = and i32 %335, 64
  %339 = icmp eq i32 %338, 0
  %340 = and i32 %335, 128
  %341 = icmp eq i32 %340, 0
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 2
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %359, label %346

; <label>:346                                     ; preds = %163
  %347 = add i32 %35, 472
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = add i32 %349, 0
  %351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %350, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %352 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %351, %dx.types.Handle %60, float %51, float %52, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = extractvalue %dx.types.ResRet.f32 %352, 1
  %355 = extractvalue %dx.types.ResRet.f32 %352, 2
  %356 = fmul fast float %353, %53
  %357 = fmul fast float %354, %54
  %358 = fmul fast float %355, %55
  br label %359

; <label>:359                                     ; preds = %346, %163
  %360 = phi float [ %55, %163 ], [ %358, %346 ]
  %361 = phi float [ %54, %163 ], [ %357, %346 ]
  %362 = phi float [ %53, %163 ], [ %356, %346 ]
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 2
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %386, label %367

; <label>:367                                     ; preds = %359
  %368 = add i32 %35, 44
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 1
  %372 = icmp ne i32 %371, 0
  %373 = select i1 %372, float %362, float 1.000000e+00
  %374 = add i32 %35, 60
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 1
  %378 = icmp ne i32 %377, 0
  %379 = select i1 %378, float %361, float 1.000000e+00
  %380 = add i32 %35, 76
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 1
  %384 = icmp ne i32 %383, 0
  %385 = select i1 %384, float %360, float 1.000000e+00
  br label %386

; <label>:386                                     ; preds = %367, %359
  %387 = phi float [ %360, %359 ], [ %385, %367 ]
  %388 = phi float [ %361, %359 ], [ %379, %367 ]
  %389 = phi float [ %362, %359 ], [ %373, %367 ]
  %390 = lshr i32 %364, 20
  %391 = and i32 %390, 3
  %392 = add nuw nsw i32 %391, 1
  %393 = add i32 %35, 24
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = add i32 %35, 28
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = or i32 %398, %395
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %859, label %401

; <label>:401                                     ; preds = %386
  %402 = and i32 %395, 262144
  %403 = icmp ne i32 %402, 0
  %404 = select i1 %403, float %38, float 1.000000e+00
  %405 = select i1 %403, float %39, float 0.000000e+00
  %406 = select i1 %403, float %40, float 0.000000e+00
  %407 = select i1 %403, float %41, float 1.000000e+00
  %408 = select i1 %403, float %42, float %51
  %409 = select i1 %403, float %43, float %52
  %410 = add i32 %35, 284
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = lshr i32 %412, 16
  %414 = call float @dx.op.legacyF16ToF32(i32 131, i32 %413)  ; LegacyF16ToF32(value)
  %415 = fmul fast float %414, 0x3F50624DE0000000
  %416 = add i32 %35, 88
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = lshr i32 %418, 16
  %420 = and i32 %419, 255
  %421 = lshr i32 %418, 24
  %422 = add i32 %35, 292
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = and i32 %424, 65535
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = lshr i32 %424, 16
  %428 = call float @dx.op.legacyF16ToF32(i32 131, i32 %427)  ; LegacyF16ToF32(value)
  %429 = add i32 %35, 32
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = lshr i32 %431, 22
  %433 = shl nuw nsw i32 %432, 5
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = shl i32 %431, 4
  %436 = and i32 %435, 32752
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = lshr i32 %431, 7
  %439 = and i32 %438, 32752
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %442 = extractvalue %dx.types.CBufRet.f32 %441, 3
  %443 = fmul fast float %442, 1.000000e+03
  %444 = fmul fast float %205, %443
  %445 = call float @dx.op.unary.f32(i32 22, float %444)  ; Frc(value)
  %446 = fadd fast float %445, %195
  %447 = fmul fast float %206, %443
  %448 = call float @dx.op.unary.f32(i32 22, float %447)  ; Frc(value)
  %449 = fadd fast float %448, %197
  %450 = fmul fast float %415, %443
  %451 = call float @dx.op.unary.f32(i32 22, float %450)  ; Frc(value)
  %452 = fmul fast float %451, 0x401921FB60000000
  %453 = fadd fast float %452, %434
  %454 = call float @dx.op.unary.f32(i32 13, float %453)  ; Sin(value)
  %455 = call float @dx.op.unary.f32(i32 12, float %453)  ; Cos(value)
  %456 = fsub fast float -0.000000e+00, %454
  %457 = fadd fast float %408, -5.000000e-01
  %458 = fadd fast float %409, -5.000000e-01
  %459 = fmul fast float %426, %457
  %460 = fmul fast float %428, %458
  %461 = fadd fast float %459, 5.000000e-01
  %462 = fadd fast float %460, 5.000000e-01
  %463 = fmul fast float %437, %461
  %464 = fmul fast float %440, %462
  %465 = fmul fast float %455, %463
  %466 = call float @dx.op.tertiary.f32(i32 46, float %456, float %464, float %465)  ; FMad(a,b,c)
  %467 = fmul fast float %454, %463
  %468 = call float @dx.op.tertiary.f32(i32 46, float %455, float %464, float %467)  ; FMad(a,b,c)
  %469 = fadd fast float %446, %466
  %470 = fadd fast float %449, %468
  %471 = icmp ugt i32 %420, 1
  %472 = icmp ugt i32 %418, 33554431
  %473 = or i1 %472, %471
  br i1 %473, label %474, label %499

; <label>:474                                     ; preds = %401
  %475 = add i32 %35, 228
  %476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %475, i32 undef)  ; BufferLoad(srv,index,wot)
  %477 = extractvalue %dx.types.ResRet.i32 %476, 0
  %478 = lshr i32 %477, 16
  %479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %478)  ; LegacyF16ToF32(value)
  %480 = fmul fast float %442, %479
  %481 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %482 = mul nuw nsw i32 %420, %421
  %483 = uitofp i32 %482 to float
  %484 = fmul fast float %481, %483
  %485 = call float @dx.op.unary.f32(i32 27, float %484)  ; Round_ni(value)
  %486 = fptoui float %485 to i32
  %487 = urem i32 %486, %420
  %488 = udiv i32 %486, %421
  %489 = call float @dx.op.unary.f32(i32 22, float %469)  ; Frc(value)
  %490 = call float @dx.op.unary.f32(i32 22, float %470)  ; Frc(value)
  %491 = uitofp i32 %487 to float
  %492 = uitofp i32 %488 to float
  %493 = fadd fast float %489, %491
  %494 = fadd fast float %490, %492
  %495 = uitofp i32 %420 to float
  %496 = uitofp i32 %421 to float
  %497 = fdiv fast float %493, %495
  %498 = fdiv fast float %494, %496
  br label %499

; <label>:499                                     ; preds = %474, %401
  %500 = phi float [ %497, %474 ], [ %469, %401 ]
  %501 = phi float [ %498, %474 ], [ %470, %401 ]
  %502 = and i32 %395, 16
  %503 = icmp eq i32 %502, 0
  br i1 %503, label %700, label %504

; <label>:504                                     ; preds = %499
  %505 = add i32 %35, 360
  %506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %505, i32 undef)  ; BufferLoad(srv,index,wot)
  %507 = extractvalue %dx.types.ResRet.i32 %506, 0
  %508 = add i32 %507, 0
  %509 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %508, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %510 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %509, %dx.types.Handle %59, float %500, float %501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %511 = extractvalue %dx.types.ResRet.f32 %510, 0
  %512 = extractvalue %dx.types.ResRet.f32 %510, 1
  %513 = extractvalue %dx.types.ResRet.f32 %510, 2
  %514 = extractvalue %dx.types.ResRet.f32 %510, 3
  %515 = and i32 %418, 255
  %516 = uitofp i32 %515 to float
  %517 = lshr i32 %418, 8
  %518 = and i32 %517, 255
  %519 = uitofp i32 %518 to float
  %520 = fmul fast float %514, %516
  %521 = fadd fast float %520, %519
  %522 = fmul fast float %521, 0x3F70101000000000
  %523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %524 = extractvalue %dx.types.ResRet.i32 %523, 0
  %525 = and i32 %524, 512
  %526 = icmp eq i32 %525, 0
  br i1 %526, label %535, label %527

; <label>:527                                     ; preds = %504
  %528 = add i32 %35, 440
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %528, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = add i32 %530, 0
  %532 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %531, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %533 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %532, %dx.types.Handle %60, float %500, float %501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %534 = extractvalue %dx.types.ResRet.f32 %533, 0
  br label %535

; <label>:535                                     ; preds = %527, %504
  %536 = phi float [ %534, %527 ], [ 1.000000e+00, %504 ]
  %537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %538 = extractvalue %dx.types.ResRet.i32 %537, 0
  %539 = and i32 %538, 33554432
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %647, label %541

; <label>:541                                     ; preds = %535
  %542 = add i32 %35, 224
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = and i32 %544, 65535
  %546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %545)  ; LegacyF16ToF32(value)
  %547 = lshr i32 %544, 16
  %548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %547)  ; LegacyF16ToF32(value)
  %549 = add i32 %35, 228
  %550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %549, i32 undef)  ; BufferLoad(srv,index,wot)
  %551 = extractvalue %dx.types.ResRet.i32 %550, 0
  %552 = and i32 %551, 65535
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %555 = extractvalue %dx.types.ResRet.i32 %554, 0
  %556 = lshr i32 %555, 24
  %557 = uitofp i32 %556 to float
  %558 = fmul fast float %557, 0x3F70101020000000
  %559 = and i32 %555, 255
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %560, 0x3F70101020000000
  %562 = lshr i32 %555, 8
  %563 = and i32 %562, 255
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = lshr i32 %555, 16
  %567 = and i32 %566, 255
  %568 = uitofp i32 %567 to float
  %569 = fmul fast float %568, 0x3F70101020000000
  %570 = add i32 %35, 220
  %571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %570, i32 undef)  ; BufferLoad(srv,index,wot)
  %572 = extractvalue %dx.types.ResRet.i32 %571, 0
  %573 = lshr i32 %572, 24
  %574 = uitofp i32 %573 to float
  %575 = fmul fast float %574, 0x3F70101020000000
  %576 = and i32 %572, 255
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %577, 0x3F70101020000000
  %579 = lshr i32 %572, 8
  %580 = and i32 %579, 255
  %581 = uitofp i32 %580 to float
  %582 = fmul fast float %581, 0x3F70101020000000
  %583 = lshr i32 %572, 16
  %584 = and i32 %583, 255
  %585 = uitofp i32 %584 to float
  %586 = fmul fast float %585, 0x3F70101020000000
  %587 = bitcast float %511 to i32
  %588 = ashr i32 %587, 1
  %589 = sub nsw i32 1597463174, %588
  %590 = bitcast i32 %589 to float
  %591 = fmul fast float %511, 5.000000e-01
  %592 = fmul fast float %590, %590
  %593 = fmul fast float %592, %591
  %594 = fsub fast float 1.500000e+00, %593
  %595 = fmul fast float %590, %511
  %596 = fmul fast float %595, %594
  %597 = bitcast float %512 to i32
  %598 = ashr i32 %597, 1
  %599 = sub nsw i32 1597463174, %598
  %600 = bitcast i32 %599 to float
  %601 = fmul fast float %512, 5.000000e-01
  %602 = fmul fast float %600, %600
  %603 = fmul fast float %602, %601
  %604 = fsub fast float 1.500000e+00, %603
  %605 = fmul fast float %600, %512
  %606 = fmul fast float %605, %604
  %607 = bitcast float %513 to i32
  %608 = ashr i32 %607, 1
  %609 = sub nsw i32 1597463174, %608
  %610 = bitcast i32 %609 to float
  %611 = fmul fast float %513, 5.000000e-01
  %612 = fmul fast float %610, %610
  %613 = fmul fast float %612, %611
  %614 = fsub fast float 1.500000e+00, %613
  %615 = fmul fast float %610, %513
  %616 = fmul fast float %615, %614
  %617 = fsub fast float %596, %578
  %618 = fsub fast float %606, %582
  %619 = fsub fast float %616, %586
  %620 = fmul fast float %617, %546
  %621 = fmul fast float %618, %548
  %622 = fmul fast float %619, %553
  %623 = fadd fast float %620, %561
  %624 = fadd fast float %621, %565
  %625 = fadd fast float %622, %569
  %626 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %627 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %628 = call float @dx.op.unary.f32(i32 7, float %625)  ; Saturate(value)
  %629 = fmul fast float %626, %626
  %630 = fmul fast float %627, %627
  %631 = fmul fast float %628, %628
  %632 = fsub fast float %629, %511
  %633 = fsub fast float %630, %512
  %634 = fsub fast float %631, %513
  %635 = fmul fast float %632, %536
  %636 = fmul fast float %633, %536
  %637 = fmul fast float %634, %536
  %638 = fadd fast float %635, %511
  %639 = fadd fast float %636, %512
  %640 = fadd fast float %637, %513
  %641 = fadd fast float %558, %522
  %642 = fsub fast float %641, %575
  %643 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %644 = fsub fast float %643, %522
  %645 = fmul fast float %644, %536
  %646 = fadd fast float %645, %522
  br label %700

; <label>:647                                     ; preds = %535
  %648 = and i32 %538, 134217728
  %649 = icmp eq i32 %648, 0
  br i1 %649, label %684, label %650

; <label>:650                                     ; preds = %647
  %651 = call float @dx.op.unary.f32(i32 24, float %182)  ; Sqrt(value)
  %652 = call float @dx.op.unary.f32(i32 24, float %186)  ; Sqrt(value)
  %653 = call float @dx.op.unary.f32(i32 24, float %190)  ; Sqrt(value)
  %654 = fadd fast float %651, -5.000000e-01
  %655 = fadd fast float %652, -5.000000e-01
  %656 = fadd fast float %653, -5.000000e-01
  %657 = fmul fast float %654, %536
  %658 = fmul fast float %655, %536
  %659 = fmul fast float %656, %536
  %660 = fadd fast float %657, 5.000000e-01
  %661 = fadd fast float %658, 5.000000e-01
  %662 = fadd fast float %659, 5.000000e-01
  %663 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %664 = call float @dx.op.unary.f32(i32 24, float %512)  ; Sqrt(value)
  %665 = call float @dx.op.unary.f32(i32 24, float %513)  ; Sqrt(value)
  %666 = fmul fast float %660, 2.000000e+00
  %667 = fsub fast float 1.000000e+00, %666
  %668 = fmul fast float %667, %663
  %669 = fadd fast float %668, %666
  %670 = fmul fast float %669, %663
  %671 = fmul fast float %661, 2.000000e+00
  %672 = fsub fast float 1.000000e+00, %671
  %673 = fmul fast float %672, %664
  %674 = fadd fast float %673, %671
  %675 = fmul fast float %674, %664
  %676 = fmul fast float %662, 2.000000e+00
  %677 = fsub fast float 1.000000e+00, %676
  %678 = fmul fast float %677, %665
  %679 = fadd fast float %678, %676
  %680 = fmul fast float %679, %665
  %681 = fmul fast float %670, %670
  %682 = fmul fast float %675, %675
  %683 = fmul fast float %680, %680
  br label %700

; <label>:684                                     ; preds = %647
  %685 = fmul fast float %182, %182
  %686 = fmul fast float %186, %186
  %687 = fmul fast float %190, %190
  %688 = fadd fast float %685, -1.000000e+00
  %689 = fadd fast float %686, -1.000000e+00
  %690 = fadd fast float %687, -1.000000e+00
  %691 = fmul fast float %536, %688
  %692 = fmul fast float %536, %689
  %693 = fmul fast float %536, %690
  %694 = fadd fast float %691, 1.000000e+00
  %695 = fadd fast float %692, 1.000000e+00
  %696 = fadd fast float %693, 1.000000e+00
  %697 = fmul fast float %694, %511
  %698 = fmul fast float %695, %512
  %699 = fmul fast float %696, %513
  br label %700

; <label>:700                                     ; preds = %684, %650, %541, %499
  %701 = phi float [ %646, %541 ], [ %522, %650 ], [ %522, %684 ], [ 0x3FA23C0BE0000000, %499 ]
  %702 = phi float [ %638, %541 ], [ %681, %650 ], [ %697, %684 ], [ 1.000000e+00, %499 ]
  %703 = phi float [ %639, %541 ], [ %682, %650 ], [ %698, %684 ], [ 1.000000e+00, %499 ]
  %704 = phi float [ %640, %541 ], [ %683, %650 ], [ %699, %684 ], [ 1.000000e+00, %499 ]
  %705 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %706 = extractvalue %dx.types.CBufRet.i32 %705, 1
  %707 = and i32 %706, 1
  %708 = icmp ne i32 %707, 0
  %709 = add i32 %35, 356
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %709, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = and i32 %711, 32
  %713 = icmp ne i32 %712, 0
  %714 = and i1 %708, %713
  %715 = select i1 %714, float 1.000000e+00, float %702
  %716 = select i1 %714, float 0x3FD3333340000000, float %703
  %717 = select i1 %714, float 0x3FD3333340000000, float %704
  %718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %719 = extractvalue %dx.types.ResRet.i32 %718, 0
  %720 = and i32 %719, 32
  %721 = icmp eq i32 %720, 0
  br i1 %721, label %794, label %722

; <label>:722                                     ; preds = %700
  %723 = add i32 %35, 92
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = add i32 %35, 376
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = add i32 %728, 0
  %730 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %729, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %731 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %730, %dx.types.Handle %59, float %500, float %501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %732 = extractvalue %dx.types.ResRet.f32 %731, 0
  %733 = extractvalue %dx.types.ResRet.f32 %731, 1
  %734 = extractvalue %dx.types.ResRet.f32 %731, 2
  %735 = extractvalue %dx.types.ResRet.f32 %731, 3
  %736 = and i32 %725, 255
  %737 = uitofp i32 %736 to float
  %738 = lshr i32 %725, 8
  %739 = and i32 %738, 255
  %740 = uitofp i32 %739 to float
  %741 = lshr i32 %725, 16
  %742 = and i32 %741, 255
  %743 = uitofp i32 %742 to float
  %744 = fmul fast float %743, 0x3F70101000000000
  %745 = fmul fast float %732, %737
  %746 = fadd fast float %745, %740
  %747 = fmul fast float %746, 0x3F70101000000000
  %748 = fadd fast float %733, -5.000000e-01
  %749 = fadd fast float %735, -5.000000e-01
  %750 = fmul fast float %748, %744
  %751 = fmul fast float %749, %744
  %752 = fadd fast float %750, 5.000000e-01
  %753 = fadd fast float %751, 5.000000e-01
  %754 = fmul fast float %752, 2.000000e+00
  %755 = fadd fast float %754, -1.000000e+00
  %756 = fmul fast float %753, 2.000000e+00
  %757 = fadd fast float %756, -1.000000e+00
  %758 = fadd fast float %755, %757
  %759 = fmul fast float %758, 5.000000e-01
  %760 = fsub fast float %755, %757
  %761 = fmul fast float %760, 5.000000e-01
  %762 = call float @dx.op.unary.f32(i32 6, float %759)  ; FAbs(value)
  %763 = fsub fast float 1.000000e+00, %762
  %764 = call float @dx.op.unary.f32(i32 6, float %761)  ; FAbs(value)
  %765 = fsub fast float %763, %764
  %766 = call float @dx.op.dot3.f32(i32 55, float %759, float %761, float %765, float %759, float %761, float %765)  ; Dot3(ax,ay,az,bx,by,bz)
  %767 = call float @dx.op.unary.f32(i32 25, float %766)  ; Rsqrt(value)
  %768 = fmul fast float %759, %767
  %769 = fmul fast float %761, %767
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 67108864
  %773 = icmp eq i32 %772, 0
  br i1 %773, label %790, label %774

; <label>:774                                     ; preds = %722
  %775 = add i32 %35, 280
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %775, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 65535
  %779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %778)  ; LegacyF16ToF32(value)
  %780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %781 = extractvalue %dx.types.ResRet.i32 %780, 0
  %782 = and i32 %781, 65535
  %783 = call float @dx.op.legacyF16ToF32(i32 131, i32 %782)  ; LegacyF16ToF32(value)
  %784 = lshr i32 %777, 16
  %785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %784)  ; LegacyF16ToF32(value)
  %786 = fsub fast float %747, %785
  %787 = fmul fast float %786, %779
  %788 = fadd fast float %787, %783
  %789 = call float @dx.op.unary.f32(i32 7, float %788)  ; Saturate(value)
  br label %790

; <label>:790                                     ; preds = %774, %722
  %791 = phi float [ %789, %774 ], [ %747, %722 ]
  %792 = call float @dx.op.dot2.f32(i32 54, float %768, float %769, float %404, float %405)  ; Dot2(ax,ay,bx,by)
  %793 = call float @dx.op.dot2.f32(i32 54, float %768, float %769, float %406, float %407)  ; Dot2(ax,ay,bx,by)
  br label %794

; <label>:794                                     ; preds = %790, %700
  %795 = phi float [ %791, %790 ], [ 0x3FD6666660000000, %700 ]
  %796 = phi float [ %792, %790 ], [ 0.000000e+00, %700 ]
  %797 = phi float [ %793, %790 ], [ 0.000000e+00, %700 ]
  %798 = phi float [ %734, %790 ], [ 1.000000e+00, %700 ]
  %799 = add i32 %35, 160
  %800 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %799, i32 undef)  ; BufferLoad(srv,index,wot)
  %801 = extractvalue %dx.types.ResRet.i32 %800, 0
  %802 = lshr i32 %801, 22
  %803 = shl nuw nsw i32 %802, 5
  %804 = call float @dx.op.legacyF16ToF32(i32 131, i32 %803)  ; LegacyF16ToF32(value)
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 64
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %842, label %809

; <label>:809                                     ; preds = %794
  %810 = add i32 %35, 392
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = add i32 %812, 0
  %814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %813, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 131072
  %818 = icmp eq i32 %817, 0
  %819 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %814, %dx.types.Handle %59, float %500, float %501, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %820 = extractvalue %dx.types.ResRet.f32 %819, 0
  %821 = extractvalue %dx.types.ResRet.f32 %819, 1
  %822 = extractvalue %dx.types.ResRet.f32 %819, 2
  %823 = fmul fast float %820, %170
  %824 = fmul fast float %821, %173
  %825 = fmul fast float %822, %176
  br i1 %818, label %832, label %826

; <label>:826                                     ; preds = %809
  %827 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %828 = extractvalue %dx.types.CBufRet.f32 %827, 0
  %829 = fmul fast float %828, %823
  %830 = fmul fast float %828, %824
  %831 = fmul fast float %828, %825
  br label %832

; <label>:832                                     ; preds = %826, %809
  %833 = phi float [ %829, %826 ], [ %823, %809 ]
  %834 = phi float [ %830, %826 ], [ %824, %809 ]
  %835 = phi float [ %831, %826 ], [ %825, %809 ]
  %836 = fmul fast float %833, %804
  %837 = select i1 %164, float %836, float %833
  %838 = call float @dx.op.dot3.f32(i32 55, float %837, float %834, float %835, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %839 = select i1 %164, float 0.000000e+00, float %833
  %840 = select i1 %164, float %838, float %834
  %841 = select i1 %164, float 0.000000e+00, float %835
  br label %842

; <label>:842                                     ; preds = %832, %794
  %843 = phi float [ %839, %832 ], [ 0.000000e+00, %794 ]
  %844 = phi float [ %840, %832 ], [ 0.000000e+00, %794 ]
  %845 = phi float [ %841, %832 ], [ 0.000000e+00, %794 ]
  %846 = add i32 %35, 96
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %846, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = and i32 %848, 255
  %850 = uitofp i32 %849 to float
  %851 = lshr i32 %848, 8
  %852 = and i32 %851, 255
  %853 = uitofp i32 %852 to float
  %854 = call float @dx.op.dot3.f32(i32 55, float %715, float %716, float %717, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %855 = fmul fast float %853, %854
  %856 = fadd fast float %855, %850
  %857 = fmul fast float %856, 0x3F70101020000000
  %858 = call float @dx.op.unary.f32(i32 7, float %857)  ; Saturate(value)
  br label %859

; <label>:859                                     ; preds = %842, %386
  %860 = phi float [ 0.000000e+00, %386 ], [ %796, %842 ]
  %861 = phi float [ 0.000000e+00, %386 ], [ %797, %842 ]
  %862 = phi float [ 0.000000e+00, %386 ], [ %715, %842 ]
  %863 = phi float [ 0.000000e+00, %386 ], [ %716, %842 ]
  %864 = phi float [ 0.000000e+00, %386 ], [ %717, %842 ]
  %865 = phi float [ 0.000000e+00, %386 ], [ %843, %842 ]
  %866 = phi float [ 0.000000e+00, %386 ], [ %844, %842 ]
  %867 = phi float [ 0.000000e+00, %386 ], [ %845, %842 ]
  %868 = phi float [ 0.000000e+00, %386 ], [ %701, %842 ]
  %869 = phi float [ 0.000000e+00, %386 ], [ 1.000000e+00, %842 ]
  %870 = phi float [ 0.000000e+00, %386 ], [ %795, %842 ]
  %871 = phi float [ 0.000000e+00, %386 ], [ %798, %842 ]
  %872 = phi float [ 0.000000e+00, %386 ], [ %858, %842 ]
  br i1 %337, label %1714, label %873

; <label>:873                                     ; preds = %859
  %874 = icmp ult i32 %392, 2
  %875 = add i32 %35, 40
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = add i32 %35, 44
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = or i32 %880, %877
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %1714, label %883

; <label>:883                                     ; preds = %873
  %884 = and i32 %877, 262144
  %885 = icmp ne i32 %884, 0
  %886 = select i1 %885, float %38, float 1.000000e+00
  %887 = select i1 %885, float %39, float 0.000000e+00
  %888 = select i1 %885, float %40, float 0.000000e+00
  %889 = select i1 %885, float %41, float 1.000000e+00
  %890 = select i1 %885, float %42, float %51
  %891 = select i1 %885, float %43, float %52
  %892 = add i32 %35, 300
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = lshr i32 %894, 16
  %896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %895)  ; LegacyF16ToF32(value)
  %897 = fmul fast float %896, 0x3F50624DE0000000
  %898 = add i32 %35, 104
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = lshr i32 %900, 16
  %902 = and i32 %901, 255
  %903 = lshr i32 %900, 24
  %904 = add i32 %35, 308
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = and i32 %906, 65535
  %908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %907)  ; LegacyF16ToF32(value)
  %909 = lshr i32 %906, 16
  %910 = call float @dx.op.legacyF16ToF32(i32 131, i32 %909)  ; LegacyF16ToF32(value)
  %911 = add i32 %35, 48
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = lshr i32 %913, 22
  %915 = shl nuw nsw i32 %914, 5
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = shl i32 %913, 4
  %918 = and i32 %917, 32752
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = lshr i32 %913, 7
  %921 = and i32 %920, 32752
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 3
  %925 = fmul fast float %924, 1.000000e+03
  %926 = fmul fast float %247, %925
  %927 = call float @dx.op.unary.f32(i32 22, float %926)  ; Frc(value)
  %928 = fadd fast float %927, %237
  %929 = fmul fast float %248, %925
  %930 = call float @dx.op.unary.f32(i32 22, float %929)  ; Frc(value)
  %931 = fadd fast float %930, %239
  %932 = fmul fast float %897, %925
  %933 = call float @dx.op.unary.f32(i32 22, float %932)  ; Frc(value)
  %934 = fmul fast float %933, 0x401921FB60000000
  %935 = fadd fast float %934, %916
  %936 = call float @dx.op.unary.f32(i32 13, float %935)  ; Sin(value)
  %937 = call float @dx.op.unary.f32(i32 12, float %935)  ; Cos(value)
  %938 = fsub fast float -0.000000e+00, %936
  %939 = fadd fast float %890, -5.000000e-01
  %940 = fadd fast float %891, -5.000000e-01
  %941 = fmul fast float %908, %939
  %942 = fmul fast float %910, %940
  %943 = fadd fast float %941, 5.000000e-01
  %944 = fadd fast float %942, 5.000000e-01
  %945 = fmul fast float %919, %943
  %946 = fmul fast float %922, %944
  %947 = fmul fast float %937, %945
  %948 = call float @dx.op.tertiary.f32(i32 46, float %938, float %946, float %947)  ; FMad(a,b,c)
  %949 = fmul fast float %936, %945
  %950 = call float @dx.op.tertiary.f32(i32 46, float %937, float %946, float %949)  ; FMad(a,b,c)
  %951 = fadd fast float %928, %948
  %952 = fadd fast float %931, %950
  %953 = icmp ugt i32 %902, 1
  %954 = icmp ugt i32 %900, 33554431
  %955 = or i1 %954, %953
  br i1 %955, label %956, label %981

; <label>:956                                     ; preds = %883
  %957 = add i32 %35, 244
  %958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %957, i32 undef)  ; BufferLoad(srv,index,wot)
  %959 = extractvalue %dx.types.ResRet.i32 %958, 0
  %960 = lshr i32 %959, 16
  %961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %960)  ; LegacyF16ToF32(value)
  %962 = fmul fast float %924, %961
  %963 = call float @dx.op.unary.f32(i32 22, float %962)  ; Frc(value)
  %964 = mul nuw nsw i32 %902, %903
  %965 = uitofp i32 %964 to float
  %966 = fmul fast float %963, %965
  %967 = call float @dx.op.unary.f32(i32 27, float %966)  ; Round_ni(value)
  %968 = fptoui float %967 to i32
  %969 = urem i32 %968, %902
  %970 = udiv i32 %968, %903
  %971 = call float @dx.op.unary.f32(i32 22, float %951)  ; Frc(value)
  %972 = call float @dx.op.unary.f32(i32 22, float %952)  ; Frc(value)
  %973 = uitofp i32 %969 to float
  %974 = uitofp i32 %970 to float
  %975 = fadd fast float %971, %973
  %976 = fadd fast float %972, %974
  %977 = uitofp i32 %902 to float
  %978 = uitofp i32 %903 to float
  %979 = fdiv fast float %975, %977
  %980 = fdiv fast float %976, %978
  br label %981

; <label>:981                                     ; preds = %956, %883
  %982 = phi float [ %979, %956 ], [ %951, %883 ]
  %983 = phi float [ %980, %956 ], [ %952, %883 ]
  %984 = and i32 %877, 16777216
  %985 = icmp eq i32 %984, 0
  br i1 %985, label %1095, label %986

; <label>:986                                     ; preds = %981
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 0
  %989 = extractvalue %dx.types.CBufRet.f32 %987, 1
  %990 = extractvalue %dx.types.CBufRet.f32 %987, 2
  %991 = fadd fast float %988, %122
  %992 = fadd fast float %989, %123
  %993 = fadd fast float %990, %124
  %994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %995 = extractvalue %dx.types.CBufRet.f32 %994, 0
  %996 = call float @dx.op.unary.f32(i32 7, float %995)  ; Saturate(value)
  %997 = icmp eq i32 %36, 65535
  br i1 %997, label %1092, label %998

; <label>:998                                     ; preds = %986
  %999 = lshr i32 %36, 1
  %1000 = shl i32 %999, 2
  %1001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1000, i32 undef)  ; BufferLoad(srv,index,wot)
  %1002 = extractvalue %dx.types.ResRet.i32 %1001, 0
  %1003 = and i32 %36, 1
  %1004 = icmp ne i32 %1003, 0
  %1005 = lshr i32 %1002, 16
  %1006 = and i32 %1002, 65535
  %1007 = select i1 %1004, i32 %1005, i32 %1006
  %1008 = icmp eq i32 %1007, 65535
  br i1 %1008, label %1088, label %1009

; <label>:1009                                    ; preds = %998
  %1010 = mul nuw nsw i32 %1007, 40
  %1011 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1010, i32 undef)  ; BufferLoad(srv,index,wot)
  %1012 = extractvalue %dx.types.ResRet.f32 %1011, 0
  %1013 = extractvalue %dx.types.ResRet.f32 %1011, 1
  %1014 = extractvalue %dx.types.ResRet.f32 %1011, 2
  %1015 = add nuw nsw i32 %1010, 12
  %1016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1015, i32 undef)  ; BufferLoad(srv,index,wot)
  %1017 = extractvalue %dx.types.ResRet.f32 %1016, 0
  %1018 = extractvalue %dx.types.ResRet.f32 %1016, 1
  %1019 = extractvalue %dx.types.ResRet.f32 %1016, 2
  %1020 = add nuw nsw i32 %1010, 24
  %1021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.f32 %1021, 0
  %1023 = extractvalue %dx.types.ResRet.f32 %1021, 1
  %1024 = extractvalue %dx.types.ResRet.f32 %1021, 2
  %1025 = add nuw nsw i32 %1010, 36
  %1026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.f32 %1026, 0
  %1028 = fsub fast float %991, %1012
  %1029 = fsub fast float %992, %1013
  %1030 = fsub fast float %993, %1014
  %1031 = fmul fast float %1027, %1028
  %1032 = fmul fast float %1027, %1029
  %1033 = fmul fast float %1027, %1030
  %1034 = call float @dx.op.unary.f32(i32 27, float %1031)  ; Round_ni(value)
  %1035 = call float @dx.op.unary.f32(i32 27, float %1032)  ; Round_ni(value)
  %1036 = call float @dx.op.unary.f32(i32 27, float %1033)  ; Round_ni(value)
  %1037 = fadd fast float %1034, 5.000000e-01
  %1038 = fadd fast float %1035, 5.000000e-01
  %1039 = fadd fast float %1036, 5.000000e-01
  %1040 = fmul fast float %1037, %1017
  %1041 = fmul fast float %1038, %1018
  %1042 = fmul fast float %1039, %1019
  %1043 = shl i32 %36, 2
  %1044 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.i32 %1044, 0
  %1046 = add i32 %1045, 0
  %1047 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1046, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1048 = call float @dx.op.unary.f32(i32 22, float %1040)  ; Frc(value)
  %1049 = call float @dx.op.unary.f32(i32 22, float %1041)  ; Frc(value)
  %1050 = call float @dx.op.unary.f32(i32 22, float %1042)  ; Frc(value)
  %1051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1047, %dx.types.Handle %30, float %1048, float %1049, float %1050, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1052 = extractvalue %dx.types.ResRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.ResRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.ResRet.f32 %1051, 2
  %1055 = fmul fast float %1052, 1.023000e+03
  %1056 = fmul fast float %1053, 1.023000e+03
  %1057 = fmul fast float %1054, 1.023000e+03
  %1058 = fadd fast float %1055, 5.000000e-01
  %1059 = fadd fast float %1056, 5.000000e-01
  %1060 = fadd fast float %1057, 5.000000e-01
  %1061 = call float @dx.op.unary.f32(i32 27, float %1058)  ; Round_ni(value)
  %1062 = call float @dx.op.unary.f32(i32 27, float %1059)  ; Round_ni(value)
  %1063 = call float @dx.op.unary.f32(i32 27, float %1060)  ; Round_ni(value)
  %1064 = fsub fast float %1031, %1034
  %1065 = fsub fast float %1032, %1035
  %1066 = fsub fast float %1033, %1036
  %1067 = fmul fast float %1064, 7.500000e-01
  %1068 = fmul fast float %1065, 7.500000e-01
  %1069 = fmul fast float %1066, 7.500000e-01
  %1070 = fadd fast float %1034, 1.250000e-01
  %1071 = fadd fast float %1070, %1067
  %1072 = fadd fast float %1071, %1061
  %1073 = fadd fast float %1035, 1.250000e-01
  %1074 = fadd fast float %1073, %1068
  %1075 = fadd fast float %1074, %1062
  %1076 = fadd fast float %1036, 1.250000e-01
  %1077 = fadd fast float %1076, %1069
  %1078 = fadd fast float %1077, %1063
  %1079 = fmul fast float %1072, %1022
  %1080 = fmul fast float %1075, %1023
  %1081 = fmul fast float %1078, %1024
  %1082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.i32 %1082, 0
  %1084 = add i32 %1083, 0
  %1085 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1084, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1085, %dx.types.Handle %28, float %1079, float %1080, float %1081, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  br label %1088

; <label>:1088                                    ; preds = %1009, %998
  %1089 = phi float [ %1087, %1009 ], [ -1.000000e+00, %998 ]
  %1090 = fadd fast float %1089, %996
  %1091 = call float @dx.op.unary.f32(i32 7, float %1090)  ; Saturate(value)
  br label %1092

; <label>:1092                                    ; preds = %1088, %986
  %1093 = phi float [ %1091, %1088 ], [ %996, %986 ]
  %1094 = fmul fast float %1093, %389
  br label %1095

; <label>:1095                                    ; preds = %1092, %981
  %1096 = phi float [ %1094, %1092 ], [ %389, %981 ]
  %1097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1098 = extractvalue %dx.types.ResRet.i32 %1097, 0
  %1099 = and i32 %1098, 256
  %1100 = icmp eq i32 %1099, 0
  br i1 %1100, label %1147, label %1101

; <label>:1101                                    ; preds = %1095
  %1102 = add i32 %35, 428
  %1103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.i32 %1103, 0
  %1105 = add i32 %1104, 0
  %1106 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1105, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1107 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1106, %dx.types.Handle %60, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = add i32 %35, 116
  %1110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1109, i32 undef)  ; BufferLoad(srv,index,wot)
  %1111 = extractvalue %dx.types.ResRet.i32 %1110, 0
  %1112 = shl i32 %1111, 4
  %1113 = and i32 %1112, 32752
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = lshr i32 %1111, 7
  %1116 = and i32 %1115, 32752
  %1117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1116)  ; LegacyF16ToF32(value)
  %1118 = fsub fast float 1.000000e+00, %1096
  %1119 = call float @dx.op.binary.f32(i32 35, float %1118, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1120 = bitcast float %1096 to i32
  %1121 = sitofp i32 %1120 to float
  %1122 = fadd fast float %1121, 0xC1CFBF8940000000
  %1123 = fmul fast float %1117, %1122
  %1124 = fadd fast float %1123, 0x41CFBF8940000000
  %1125 = fptosi float %1124 to i32
  %1126 = bitcast i32 %1125 to float
  %1127 = bitcast float %1119 to i32
  %1128 = sitofp i32 %1127 to float
  %1129 = fadd fast float %1128, 0xC1CFBF8940000000
  %1130 = fmul fast float %1129, %1117
  %1131 = fadd fast float %1130, 0x41CFBF8940000000
  %1132 = fptosi float %1131 to i32
  %1133 = bitcast i32 %1132 to float
  %1134 = fmul fast float %1126, %1114
  %1135 = fmul fast float %1133, %1114
  %1136 = fsub fast float %1119, %1134
  %1137 = fadd fast float %1135, %1119
  %1138 = call float @dx.op.unary.f32(i32 7, float %1136)  ; Saturate(value)
  %1139 = call float @dx.op.unary.f32(i32 7, float %1137)  ; Saturate(value)
  %1140 = fsub fast float %1108, %1138
  %1141 = fsub fast float %1139, %1138
  %1142 = bitcast float %1141 to i32
  %1143 = sub nsw i32 2129859010, %1142
  %1144 = bitcast i32 %1143 to float
  %1145 = fmul fast float %1144, %1140
  %1146 = call float @dx.op.unary.f32(i32 7, float %1145)  ; Saturate(value)
  br label %1147

; <label>:1147                                    ; preds = %1101, %1095
  %1148 = phi float [ %1146, %1101 ], [ %1096, %1095 ]
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = and i32 %1150, 128
  %1152 = icmp eq i32 %1151, 0
  br i1 %1152, label %1169, label %1153

; <label>:1153                                    ; preds = %1147
  %1154 = add i32 %35, 412
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1154, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = add i32 %1156, 0
  %1158 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1157, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1159 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1158, %dx.types.Handle %60, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1160 = extractvalue %dx.types.ResRet.f32 %1159, 0
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 524288
  %1164 = icmp ne i32 %1163, 0
  %1165 = fcmp fast ogt float %1160, 0x3FE0101020000000
  %1166 = select i1 %1165, float 1.000000e+00, float 0.000000e+00
  %1167 = select i1 %1164, float %1166, float %1160
  %1168 = fmul fast float %1167, %1148
  br label %1169

; <label>:1169                                    ; preds = %1153, %1147
  %1170 = phi float [ %1168, %1153 ], [ %1148, %1147 ]
  %1171 = fcmp fast ult float %1170, 0x3F70101020000000
  br i1 %1171, label %1714, label %1172

; <label>:1172                                    ; preds = %1169
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = and i32 %1174, 16
  %1176 = icmp eq i32 %1175, 0
  br i1 %1176, label %1375, label %1177

; <label>:1177                                    ; preds = %1172
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = add i32 %35, 364
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1180, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = add i32 %1182, 0
  %1184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1183, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1185 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1184, %dx.types.Handle %59, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1186 = extractvalue %dx.types.ResRet.f32 %1185, 0
  %1187 = extractvalue %dx.types.ResRet.f32 %1185, 1
  %1188 = extractvalue %dx.types.ResRet.f32 %1185, 2
  %1189 = extractvalue %dx.types.ResRet.f32 %1185, 3
  %1190 = and i32 %1179, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = lshr i32 %1179, 8
  %1193 = and i32 %1192, 255
  %1194 = uitofp i32 %1193 to float
  %1195 = fmul fast float %1189, %1191
  %1196 = fadd fast float %1195, %1194
  %1197 = fmul fast float %1196, 0x3F70101000000000
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 512
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1210, label %1202

; <label>:1202                                    ; preds = %1177
  %1203 = add i32 %35, 444
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = add i32 %1205, 0
  %1207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1208 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1207, %dx.types.Handle %60, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  br label %1210

; <label>:1210                                    ; preds = %1202, %1177
  %1211 = phi float [ %1209, %1202 ], [ 1.000000e+00, %1177 ]
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 33554432
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1322, label %1216

; <label>:1216                                    ; preds = %1210
  %1217 = add i32 %35, 240
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = and i32 %1219, 65535
  %1221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1220)  ; LegacyF16ToF32(value)
  %1222 = lshr i32 %1219, 16
  %1223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1222)  ; LegacyF16ToF32(value)
  %1224 = add i32 %35, 244
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = and i32 %1226, 65535
  %1228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1227)  ; LegacyF16ToF32(value)
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = lshr i32 %1230, 24
  %1232 = uitofp i32 %1231 to float
  %1233 = fmul fast float %1232, 0x3F70101020000000
  %1234 = and i32 %1230, 255
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1235, 0x3F70101020000000
  %1237 = lshr i32 %1230, 8
  %1238 = and i32 %1237, 255
  %1239 = uitofp i32 %1238 to float
  %1240 = fmul fast float %1239, 0x3F70101020000000
  %1241 = lshr i32 %1230, 16
  %1242 = and i32 %1241, 255
  %1243 = uitofp i32 %1242 to float
  %1244 = fmul fast float %1243, 0x3F70101020000000
  %1245 = add i32 %35, 236
  %1246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1245, i32 undef)  ; BufferLoad(srv,index,wot)
  %1247 = extractvalue %dx.types.ResRet.i32 %1246, 0
  %1248 = lshr i32 %1247, 24
  %1249 = uitofp i32 %1248 to float
  %1250 = fmul fast float %1249, 0x3F70101020000000
  %1251 = and i32 %1247, 255
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F70101020000000
  %1254 = lshr i32 %1247, 8
  %1255 = and i32 %1254, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1256, 0x3F70101020000000
  %1258 = lshr i32 %1247, 16
  %1259 = and i32 %1258, 255
  %1260 = uitofp i32 %1259 to float
  %1261 = fmul fast float %1260, 0x3F70101020000000
  %1262 = bitcast float %1186 to i32
  %1263 = ashr i32 %1262, 1
  %1264 = sub nsw i32 1597463174, %1263
  %1265 = bitcast i32 %1264 to float
  %1266 = fmul fast float %1186, 5.000000e-01
  %1267 = fmul fast float %1265, %1265
  %1268 = fmul fast float %1267, %1266
  %1269 = fsub fast float 1.500000e+00, %1268
  %1270 = fmul fast float %1265, %1186
  %1271 = fmul fast float %1270, %1269
  %1272 = bitcast float %1187 to i32
  %1273 = ashr i32 %1272, 1
  %1274 = sub nsw i32 1597463174, %1273
  %1275 = bitcast i32 %1274 to float
  %1276 = fmul fast float %1187, 5.000000e-01
  %1277 = fmul fast float %1275, %1275
  %1278 = fmul fast float %1277, %1276
  %1279 = fsub fast float 1.500000e+00, %1278
  %1280 = fmul fast float %1275, %1187
  %1281 = fmul fast float %1280, %1279
  %1282 = bitcast float %1188 to i32
  %1283 = ashr i32 %1282, 1
  %1284 = sub nsw i32 1597463174, %1283
  %1285 = bitcast i32 %1284 to float
  %1286 = fmul fast float %1188, 5.000000e-01
  %1287 = fmul fast float %1285, %1285
  %1288 = fmul fast float %1287, %1286
  %1289 = fsub fast float 1.500000e+00, %1288
  %1290 = fmul fast float %1285, %1188
  %1291 = fmul fast float %1290, %1289
  %1292 = fsub fast float %1271, %1253
  %1293 = fsub fast float %1281, %1257
  %1294 = fsub fast float %1291, %1261
  %1295 = fmul fast float %1292, %1221
  %1296 = fmul fast float %1293, %1223
  %1297 = fmul fast float %1294, %1228
  %1298 = fadd fast float %1295, %1236
  %1299 = fadd fast float %1296, %1240
  %1300 = fadd fast float %1297, %1244
  %1301 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1302 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1303 = call float @dx.op.unary.f32(i32 7, float %1300)  ; Saturate(value)
  %1304 = fmul fast float %1301, %1301
  %1305 = fmul fast float %1302, %1302
  %1306 = fmul fast float %1303, %1303
  %1307 = fsub fast float %1304, %1186
  %1308 = fsub fast float %1305, %1187
  %1309 = fsub fast float %1306, %1188
  %1310 = fmul fast float %1307, %1211
  %1311 = fmul fast float %1308, %1211
  %1312 = fmul fast float %1309, %1211
  %1313 = fadd fast float %1310, %1186
  %1314 = fadd fast float %1311, %1187
  %1315 = fadd fast float %1312, %1188
  %1316 = fadd fast float %1233, %1197
  %1317 = fsub fast float %1316, %1250
  %1318 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1319 = fsub fast float %1318, %1197
  %1320 = fmul fast float %1319, %1211
  %1321 = fadd fast float %1320, %1197
  br label %1375

; <label>:1322                                    ; preds = %1210
  %1323 = and i32 %1213, 134217728
  %1324 = icmp eq i32 %1323, 0
  br i1 %1324, label %1359, label %1325

; <label>:1325                                    ; preds = %1322
  %1326 = call float @dx.op.unary.f32(i32 24, float %224)  ; Sqrt(value)
  %1327 = call float @dx.op.unary.f32(i32 24, float %228)  ; Sqrt(value)
  %1328 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %1329 = fadd fast float %1326, -5.000000e-01
  %1330 = fadd fast float %1327, -5.000000e-01
  %1331 = fadd fast float %1328, -5.000000e-01
  %1332 = fmul fast float %1329, %1211
  %1333 = fmul fast float %1330, %1211
  %1334 = fmul fast float %1331, %1211
  %1335 = fadd fast float %1332, 5.000000e-01
  %1336 = fadd fast float %1333, 5.000000e-01
  %1337 = fadd fast float %1334, 5.000000e-01
  %1338 = call float @dx.op.unary.f32(i32 24, float %1186)  ; Sqrt(value)
  %1339 = call float @dx.op.unary.f32(i32 24, float %1187)  ; Sqrt(value)
  %1340 = call float @dx.op.unary.f32(i32 24, float %1188)  ; Sqrt(value)
  %1341 = fmul fast float %1335, 2.000000e+00
  %1342 = fsub fast float 1.000000e+00, %1341
  %1343 = fmul fast float %1342, %1338
  %1344 = fadd fast float %1343, %1341
  %1345 = fmul fast float %1344, %1338
  %1346 = fmul fast float %1336, 2.000000e+00
  %1347 = fsub fast float 1.000000e+00, %1346
  %1348 = fmul fast float %1347, %1339
  %1349 = fadd fast float %1348, %1346
  %1350 = fmul fast float %1349, %1339
  %1351 = fmul fast float %1337, 2.000000e+00
  %1352 = fsub fast float 1.000000e+00, %1351
  %1353 = fmul fast float %1352, %1340
  %1354 = fadd fast float %1353, %1351
  %1355 = fmul fast float %1354, %1340
  %1356 = fmul fast float %1345, %1345
  %1357 = fmul fast float %1350, %1350
  %1358 = fmul fast float %1355, %1355
  br label %1375

; <label>:1359                                    ; preds = %1322
  %1360 = fmul fast float %224, %224
  %1361 = fmul fast float %228, %228
  %1362 = fmul fast float %232, %232
  %1363 = fadd fast float %1360, -1.000000e+00
  %1364 = fadd fast float %1361, -1.000000e+00
  %1365 = fadd fast float %1362, -1.000000e+00
  %1366 = fmul fast float %1211, %1363
  %1367 = fmul fast float %1211, %1364
  %1368 = fmul fast float %1211, %1365
  %1369 = fadd fast float %1366, 1.000000e+00
  %1370 = fadd fast float %1367, 1.000000e+00
  %1371 = fadd fast float %1368, 1.000000e+00
  %1372 = fmul fast float %1369, %1186
  %1373 = fmul fast float %1370, %1187
  %1374 = fmul fast float %1371, %1188
  br label %1375

; <label>:1375                                    ; preds = %1359, %1325, %1216, %1172
  %1376 = phi float [ %1321, %1216 ], [ %1197, %1325 ], [ %1197, %1359 ], [ 0x3FA23C0BE0000000, %1172 ]
  %1377 = phi float [ %1313, %1216 ], [ %1356, %1325 ], [ %1372, %1359 ], [ 1.000000e+00, %1172 ]
  %1378 = phi float [ %1314, %1216 ], [ %1357, %1325 ], [ %1373, %1359 ], [ 1.000000e+00, %1172 ]
  %1379 = phi float [ %1315, %1216 ], [ %1358, %1325 ], [ %1374, %1359 ], [ 1.000000e+00, %1172 ]
  %1380 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1381 = extractvalue %dx.types.CBufRet.i32 %1380, 1
  %1382 = and i32 %1381, 1
  %1383 = icmp ne i32 %1382, 0
  %1384 = add i32 %35, 356
  %1385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1384, i32 undef)  ; BufferLoad(srv,index,wot)
  %1386 = extractvalue %dx.types.ResRet.i32 %1385, 0
  %1387 = and i32 %1386, 32
  %1388 = icmp ne i32 %1387, 0
  %1389 = and i1 %1383, %1388
  %1390 = select i1 %1389, float 1.000000e+00, float %1377
  %1391 = select i1 %1389, float 0x3FD3333340000000, float %1378
  %1392 = select i1 %1389, float 0x3FD3333340000000, float %1379
  %1393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1394 = extractvalue %dx.types.ResRet.i32 %1393, 0
  %1395 = and i32 %1394, 32
  %1396 = icmp eq i32 %1395, 0
  br i1 %1396, label %1469, label %1397

; <label>:1397                                    ; preds = %1375
  %1398 = add i32 %35, 108
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1398, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = add i32 %35, 380
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = add i32 %1403, 0
  %1405 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1404, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1406 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1405, %dx.types.Handle %59, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1407 = extractvalue %dx.types.ResRet.f32 %1406, 0
  %1408 = extractvalue %dx.types.ResRet.f32 %1406, 1
  %1409 = extractvalue %dx.types.ResRet.f32 %1406, 2
  %1410 = extractvalue %dx.types.ResRet.f32 %1406, 3
  %1411 = and i32 %1400, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = lshr i32 %1400, 8
  %1414 = and i32 %1413, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = lshr i32 %1400, 16
  %1417 = and i32 %1416, 255
  %1418 = uitofp i32 %1417 to float
  %1419 = fmul fast float %1418, 0x3F70101000000000
  %1420 = fmul fast float %1407, %1412
  %1421 = fadd fast float %1420, %1415
  %1422 = fmul fast float %1421, 0x3F70101000000000
  %1423 = fadd fast float %1408, -5.000000e-01
  %1424 = fadd fast float %1410, -5.000000e-01
  %1425 = fmul fast float %1423, %1419
  %1426 = fmul fast float %1424, %1419
  %1427 = fadd fast float %1425, 5.000000e-01
  %1428 = fadd fast float %1426, 5.000000e-01
  %1429 = fmul fast float %1427, 2.000000e+00
  %1430 = fadd fast float %1429, -1.000000e+00
  %1431 = fmul fast float %1428, 2.000000e+00
  %1432 = fadd fast float %1431, -1.000000e+00
  %1433 = fadd fast float %1430, %1432
  %1434 = fmul fast float %1433, 5.000000e-01
  %1435 = fsub fast float %1430, %1432
  %1436 = fmul fast float %1435, 5.000000e-01
  %1437 = call float @dx.op.unary.f32(i32 6, float %1434)  ; FAbs(value)
  %1438 = fsub fast float 1.000000e+00, %1437
  %1439 = call float @dx.op.unary.f32(i32 6, float %1436)  ; FAbs(value)
  %1440 = fsub fast float %1438, %1439
  %1441 = call float @dx.op.dot3.f32(i32 55, float %1434, float %1436, float %1440, float %1434, float %1436, float %1440)  ; Dot3(ax,ay,az,bx,by,bz)
  %1442 = call float @dx.op.unary.f32(i32 25, float %1441)  ; Rsqrt(value)
  %1443 = fmul fast float %1434, %1442
  %1444 = fmul fast float %1436, %1442
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 67108864
  %1448 = icmp eq i32 %1447, 0
  br i1 %1448, label %1465, label %1449

; <label>:1449                                    ; preds = %1397
  %1450 = add i32 %35, 296
  %1451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1450, i32 undef)  ; BufferLoad(srv,index,wot)
  %1452 = extractvalue %dx.types.ResRet.i32 %1451, 0
  %1453 = and i32 %1452, 65535
  %1454 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1453)  ; LegacyF16ToF32(value)
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 65535
  %1458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1457)  ; LegacyF16ToF32(value)
  %1459 = lshr i32 %1452, 16
  %1460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1459)  ; LegacyF16ToF32(value)
  %1461 = fsub fast float %1422, %1460
  %1462 = fmul fast float %1461, %1454
  %1463 = fadd fast float %1462, %1458
  %1464 = call float @dx.op.unary.f32(i32 7, float %1463)  ; Saturate(value)
  br label %1465

; <label>:1465                                    ; preds = %1449, %1397
  %1466 = phi float [ %1464, %1449 ], [ %1422, %1397 ]
  %1467 = call float @dx.op.dot2.f32(i32 54, float %1443, float %1444, float %886, float %887)  ; Dot2(ax,ay,bx,by)
  %1468 = call float @dx.op.dot2.f32(i32 54, float %1443, float %1444, float %888, float %889)  ; Dot2(ax,ay,bx,by)
  br label %1469

; <label>:1469                                    ; preds = %1465, %1375
  %1470 = phi float [ %1466, %1465 ], [ 0x3FD6666660000000, %1375 ]
  %1471 = phi float [ %1467, %1465 ], [ 0.000000e+00, %1375 ]
  %1472 = phi float [ %1468, %1465 ], [ 0.000000e+00, %1375 ]
  %1473 = phi float [ %1409, %1465 ], [ 1.000000e+00, %1375 ]
  %1474 = add i32 %35, 176
  %1475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1474, i32 undef)  ; BufferLoad(srv,index,wot)
  %1476 = extractvalue %dx.types.ResRet.i32 %1475, 0
  %1477 = lshr i32 %1476, 22
  %1478 = shl nuw nsw i32 %1477, 5
  %1479 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1478)  ; LegacyF16ToF32(value)
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = and i32 %1481, 64
  %1483 = icmp eq i32 %1482, 0
  br i1 %1483, label %1517, label %1484

; <label>:1484                                    ; preds = %1469
  %1485 = add i32 %35, 396
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = add i32 %1487, 0
  %1489 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1488, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1491 = extractvalue %dx.types.ResRet.i32 %1490, 0
  %1492 = and i32 %1491, 131072
  %1493 = icmp eq i32 %1492, 0
  %1494 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1489, %dx.types.Handle %59, float %982, float %983, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1495 = extractvalue %dx.types.ResRet.f32 %1494, 0
  %1496 = extractvalue %dx.types.ResRet.f32 %1494, 1
  %1497 = extractvalue %dx.types.ResRet.f32 %1494, 2
  %1498 = fmul fast float %1495, %212
  %1499 = fmul fast float %1496, %215
  %1500 = fmul fast float %1497, %218
  br i1 %1493, label %1507, label %1501

; <label>:1501                                    ; preds = %1484
  %1502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1503 = extractvalue %dx.types.CBufRet.f32 %1502, 0
  %1504 = fmul fast float %1503, %1498
  %1505 = fmul fast float %1503, %1499
  %1506 = fmul fast float %1503, %1500
  br label %1507

; <label>:1507                                    ; preds = %1501, %1484
  %1508 = phi float [ %1504, %1501 ], [ %1498, %1484 ]
  %1509 = phi float [ %1505, %1501 ], [ %1499, %1484 ]
  %1510 = phi float [ %1506, %1501 ], [ %1500, %1484 ]
  %1511 = fmul fast float %1508, %1479
  %1512 = select i1 %164, float %1511, float %1508
  %1513 = call float @dx.op.dot3.f32(i32 55, float %1512, float %1509, float %1510, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1514 = select i1 %164, float 0.000000e+00, float %1508
  %1515 = select i1 %164, float %1513, float %1509
  %1516 = select i1 %164, float 0.000000e+00, float %1510
  br label %1517

; <label>:1517                                    ; preds = %1507, %1469
  %1518 = phi float [ %1514, %1507 ], [ 0.000000e+00, %1469 ]
  %1519 = phi float [ %1515, %1507 ], [ 0.000000e+00, %1469 ]
  %1520 = phi float [ %1516, %1507 ], [ 0.000000e+00, %1469 ]
  %1521 = add i32 %35, 112
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 255
  %1525 = uitofp i32 %1524 to float
  %1526 = lshr i32 %1523, 8
  %1527 = and i32 %1526, 255
  %1528 = uitofp i32 %1527 to float
  %1529 = call float @dx.op.dot3.f32(i32 55, float %1390, float %1391, float %1392, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1530 = fmul fast float %1528, %1529
  %1531 = fadd fast float %1530, %1525
  %1532 = fmul fast float %1531, 0x3F70101020000000
  %1533 = call float @dx.op.unary.f32(i32 7, float %1532)  ; Saturate(value)
  br i1 %874, label %1534, label %1542

; <label>:1534                                    ; preds = %1517
  %1535 = fsub fast float 1.000000e+00, %1170
  %1536 = fmul fast float %1535, %862
  %1537 = fmul fast float %1535, %863
  %1538 = fmul fast float %1535, %864
  %1539 = fmul fast float %1535, %865
  %1540 = fmul fast float %1535, %866
  %1541 = fmul fast float %1535, %867
  br label %1542

; <label>:1542                                    ; preds = %1534, %1517
  %1543 = phi float [ %1536, %1534 ], [ %862, %1517 ]
  %1544 = phi float [ %1537, %1534 ], [ %863, %1517 ]
  %1545 = phi float [ %1538, %1534 ], [ %864, %1517 ]
  %1546 = phi float [ %1539, %1534 ], [ %865, %1517 ]
  %1547 = phi float [ %1540, %1534 ], [ %866, %1517 ]
  %1548 = phi float [ %1541, %1534 ], [ %867, %1517 ]
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = and i32 %1550, 3
  %1552 = icmp eq i32 %1551, 3
  br i1 %1552, label %1631, label %1553

; <label>:1553                                    ; preds = %1542
  %1554 = and i32 %1550, 16
  %1555 = icmp ne i32 %1554, 0
  %1556 = select i1 %1555, float %1170, float 0.000000e+00
  %1557 = icmp eq i32 %1551, 0
  br i1 %1557, label %1558, label %1586

; <label>:1558                                    ; preds = %1553
  %1559 = and i32 %1550, 64
  %1560 = icmp ne i32 %1559, 0
  %1561 = select i1 %1560, float %1170, float 0.000000e+00
  %1562 = fsub fast float %1390, %1543
  %1563 = fsub fast float %1391, %1544
  %1564 = fsub fast float %1392, %1545
  %1565 = fmul fast float %1556, %1562
  %1566 = fmul fast float %1556, %1563
  %1567 = fmul fast float %1556, %1564
  %1568 = fadd fast float %1565, %1543
  %1569 = fadd fast float %1566, %1544
  %1570 = fadd fast float %1567, %1545
  %1571 = fsub fast float %1376, %868
  %1572 = fmul fast float %1556, %1571
  %1573 = fadd fast float %1572, %868
  %1574 = fsub fast float %1518, %1546
  %1575 = fsub fast float %1519, %1547
  %1576 = fsub fast float %1520, %1548
  %1577 = fmul fast float %1561, %1574
  %1578 = fmul fast float %1561, %1575
  %1579 = fmul fast float %1561, %1576
  %1580 = fadd fast float %1577, %1546
  %1581 = fadd fast float %1578, %1547
  %1582 = fadd fast float %1579, %1548
  %1583 = fsub fast float %1533, %872
  %1584 = fmul fast float %1556, %1583
  %1585 = fadd fast float %1584, %872
  br label %1631

; <label>:1586                                    ; preds = %1553
  %1587 = icmp eq i32 %1551, 1
  br i1 %1587, label %1588, label %1601

; <label>:1588                                    ; preds = %1586
  %1589 = fadd fast float %1390, -1.000000e+00
  %1590 = fadd fast float %1391, -1.000000e+00
  %1591 = fadd fast float %1392, -1.000000e+00
  %1592 = fmul fast float %1556, %1589
  %1593 = fmul fast float %1556, %1590
  %1594 = fmul fast float %1556, %1591
  %1595 = fadd fast float %1592, 1.000000e+00
  %1596 = fadd fast float %1593, 1.000000e+00
  %1597 = fadd fast float %1594, 1.000000e+00
  %1598 = fmul fast float %1595, %1543
  %1599 = fmul fast float %1596, %1544
  %1600 = fmul fast float %1597, %1545
  br label %1631

; <label>:1601                                    ; preds = %1586
  %1602 = icmp eq i32 %1551, 2
  br i1 %1602, label %1603, label %1631

; <label>:1603                                    ; preds = %1601
  %1604 = call float @dx.op.unary.f32(i32 24, float %1390)  ; Sqrt(value)
  %1605 = call float @dx.op.unary.f32(i32 24, float %1391)  ; Sqrt(value)
  %1606 = call float @dx.op.unary.f32(i32 24, float %1392)  ; Sqrt(value)
  %1607 = fadd fast float %1604, -5.000000e-01
  %1608 = fadd fast float %1605, -5.000000e-01
  %1609 = fadd fast float %1606, -5.000000e-01
  %1610 = fmul fast float %1607, %1556
  %1611 = fmul fast float %1608, %1556
  %1612 = fmul fast float %1609, %1556
  %1613 = fadd fast float %1610, 5.000000e-01
  %1614 = fadd fast float %1611, 5.000000e-01
  %1615 = fadd fast float %1612, 5.000000e-01
  %1616 = fmul fast float %1613, 2.000000e+00
  %1617 = fsub fast float 1.000000e+00, %1616
  %1618 = fmul fast float %1617, %1543
  %1619 = fadd fast float %1618, %1616
  %1620 = fmul fast float %1619, %1543
  %1621 = fmul fast float %1614, 2.000000e+00
  %1622 = fsub fast float 1.000000e+00, %1621
  %1623 = fmul fast float %1622, %1544
  %1624 = fadd fast float %1623, %1621
  %1625 = fmul fast float %1624, %1544
  %1626 = fmul fast float %1615, 2.000000e+00
  %1627 = fsub fast float 1.000000e+00, %1626
  %1628 = fmul fast float %1627, %1545
  %1629 = fadd fast float %1628, %1626
  %1630 = fmul fast float %1629, %1545
  br label %1631

; <label>:1631                                    ; preds = %1603, %1601, %1588, %1558, %1542
  %1632 = phi float [ %1543, %1542 ], [ %1620, %1603 ], [ %1543, %1601 ], [ %1598, %1588 ], [ %1568, %1558 ]
  %1633 = phi float [ %1544, %1542 ], [ %1625, %1603 ], [ %1544, %1601 ], [ %1599, %1588 ], [ %1569, %1558 ]
  %1634 = phi float [ %1545, %1542 ], [ %1630, %1603 ], [ %1545, %1601 ], [ %1600, %1588 ], [ %1570, %1558 ]
  %1635 = phi float [ %1546, %1542 ], [ %1546, %1603 ], [ %1546, %1601 ], [ %1546, %1588 ], [ %1580, %1558 ]
  %1636 = phi float [ %1547, %1542 ], [ %1547, %1603 ], [ %1547, %1601 ], [ %1547, %1588 ], [ %1581, %1558 ]
  %1637 = phi float [ %1548, %1542 ], [ %1548, %1603 ], [ %1548, %1601 ], [ %1548, %1588 ], [ %1582, %1558 ]
  %1638 = phi float [ %868, %1542 ], [ %868, %1603 ], [ %868, %1601 ], [ %868, %1588 ], [ %1573, %1558 ]
  %1639 = phi float [ %872, %1542 ], [ %872, %1603 ], [ %872, %1601 ], [ %872, %1588 ], [ %1585, %1558 ]
  %1640 = and i32 %1550, 12
  %1641 = icmp eq i32 %1640, 12
  br i1 %1641, label %1714, label %1642

; <label>:1642                                    ; preds = %1631
  %1643 = and i32 %1550, 2097184
  %1644 = icmp eq i32 %1643, 2097184
  %1645 = select i1 %1644, float %1170, float 0.000000e+00
  %1646 = and i32 %1550, 4194336
  %1647 = icmp eq i32 %1646, 4194336
  %1648 = select i1 %1647, float %1170, float 0.000000e+00
  %1649 = and i32 %1550, 8388640
  %1650 = icmp eq i32 %1649, 8388640
  %1651 = select i1 %1650, float %1170, float 0.000000e+00
  %1652 = icmp eq i32 %1640, 0
  br i1 %1652, label %1653, label %1666

; <label>:1653                                    ; preds = %1642
  %1654 = fsub fast float %1471, %860
  %1655 = fsub fast float %1472, %861
  %1656 = fmul fast float %1645, %1654
  %1657 = fmul fast float %1645, %1655
  %1658 = fadd fast float %1656, %860
  %1659 = fadd fast float %1657, %861
  %1660 = fsub fast float %1473, %871
  %1661 = fmul fast float %1648, %1660
  %1662 = fadd fast float %1661, %871
  %1663 = fsub fast float %1470, %870
  %1664 = fmul fast float %1651, %1663
  %1665 = fadd fast float %1664, %870
  br label %1714

; <label>:1666                                    ; preds = %1642
  %1667 = icmp eq i32 %1640, 4
  br i1 %1667, label %1668, label %1700

; <label>:1668                                    ; preds = %1666
  %1669 = fmul fast float %1645, %1471
  %1670 = fmul fast float %1645, %1472
  %1671 = fadd fast float %1669, %860
  %1672 = fadd fast float %1670, %861
  %1673 = call float @dx.op.binary.f32(i32 36, float %871, float %1473)  ; FMin(a,b)
  %1674 = fsub fast float %1673, %871
  %1675 = fmul fast float %1674, %1648
  %1676 = fadd fast float %1675, %871
  %1677 = fadd fast float %1470, %870
  %1678 = fmul fast float %1677, 0x3FF337FAE0000000
  %1679 = fmul fast float %870, %870
  %1680 = fmul fast float %1470, %1470
  %1681 = fadd fast float %1680, %1679
  %1682 = fmul fast float %1681, 0x3FE5152B00000000
  %1683 = fmul fast float %870, 0xBFCC1F85E0000000
  %1684 = fmul fast float %1683, %1470
  %1685 = fadd fast float %1684, 0xBFE1363700000000
  %1686 = fadd fast float %1685, %1678
  %1687 = fsub fast float %1686, %1682
  %1688 = fmul fast float %1677, 0x3FBA6F0D00000000
  %1689 = fmul fast float %1681, 0x3FD0432880000000
  %1690 = fmul fast float %870, 0xBFEF110800000000
  %1691 = fmul fast float %1690, %1470
  %1692 = fadd fast float %1691, 1.000000e+00
  %1693 = fsub fast float %1692, %1688
  %1694 = fadd fast float %1693, %1689
  %1695 = fdiv fast float %1687, %1694
  %1696 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1697 = fsub fast float %1696, %870
  %1698 = fmul fast float %1697, %1651
  %1699 = fadd fast float %1698, %870
  br label %1714

; <label>:1700                                    ; preds = %1666
  %1701 = icmp eq i32 %1640, 8
  br i1 %1701, label %1702, label %1714

; <label>:1702                                    ; preds = %1700
  %1703 = fmul fast float %1645, %1471
  %1704 = fmul fast float %1645, %1472
  %1705 = fadd fast float %1703, %860
  %1706 = fadd fast float %1704, %861
  %1707 = call float @dx.op.binary.f32(i32 36, float %871, float %1473)  ; FMin(a,b)
  %1708 = fsub fast float %1707, %871
  %1709 = fmul fast float %1708, %1648
  %1710 = fadd fast float %1709, %871
  %1711 = fsub fast float %1470, %870
  %1712 = fmul fast float %1651, %1711
  %1713 = fadd fast float %1712, %870
  br label %1714

; <label>:1714                                    ; preds = %1702, %1700, %1668, %1653, %1631, %1169, %873, %859
  %1715 = phi float [ %860, %1631 ], [ %860, %1169 ], [ %860, %859 ], [ %1705, %1702 ], [ %860, %1700 ], [ %1671, %1668 ], [ %1658, %1653 ], [ %860, %873 ]
  %1716 = phi float [ %861, %1631 ], [ %861, %1169 ], [ %861, %859 ], [ %1706, %1702 ], [ %861, %1700 ], [ %1672, %1668 ], [ %1659, %1653 ], [ %861, %873 ]
  %1717 = phi float [ %1632, %1631 ], [ %862, %1169 ], [ %862, %859 ], [ %1632, %1702 ], [ %1632, %1700 ], [ %1632, %1668 ], [ %1632, %1653 ], [ %862, %873 ]
  %1718 = phi float [ %1633, %1631 ], [ %863, %1169 ], [ %863, %859 ], [ %1633, %1702 ], [ %1633, %1700 ], [ %1633, %1668 ], [ %1633, %1653 ], [ %863, %873 ]
  %1719 = phi float [ %1634, %1631 ], [ %864, %1169 ], [ %864, %859 ], [ %1634, %1702 ], [ %1634, %1700 ], [ %1634, %1668 ], [ %1634, %1653 ], [ %864, %873 ]
  %1720 = phi float [ %1635, %1631 ], [ %865, %1169 ], [ %865, %859 ], [ %1635, %1702 ], [ %1635, %1700 ], [ %1635, %1668 ], [ %1635, %1653 ], [ %865, %873 ]
  %1721 = phi float [ %1636, %1631 ], [ %866, %1169 ], [ %866, %859 ], [ %1636, %1702 ], [ %1636, %1700 ], [ %1636, %1668 ], [ %1636, %1653 ], [ %866, %873 ]
  %1722 = phi float [ %1637, %1631 ], [ %867, %1169 ], [ %867, %859 ], [ %1637, %1702 ], [ %1637, %1700 ], [ %1637, %1668 ], [ %1637, %1653 ], [ %867, %873 ]
  %1723 = phi float [ %1638, %1631 ], [ %868, %1169 ], [ %868, %859 ], [ %1638, %1702 ], [ %1638, %1700 ], [ %1638, %1668 ], [ %1638, %1653 ], [ %868, %873 ]
  %1724 = phi float [ %870, %1631 ], [ %870, %1169 ], [ %870, %859 ], [ %1713, %1702 ], [ %870, %1700 ], [ %1699, %1668 ], [ %1665, %1653 ], [ %870, %873 ]
  %1725 = phi float [ %871, %1631 ], [ %871, %1169 ], [ %871, %859 ], [ %1710, %1702 ], [ %871, %1700 ], [ %1676, %1668 ], [ %1662, %1653 ], [ %871, %873 ]
  %1726 = phi float [ %1639, %1631 ], [ %872, %1169 ], [ %872, %859 ], [ %1639, %1702 ], [ %1639, %1700 ], [ %1639, %1668 ], [ %1639, %1653 ], [ %872, %873 ]
  br i1 %339, label %2568, label %1727

; <label>:1727                                    ; preds = %1714
  %1728 = icmp ult i32 %392, 3
  %1729 = add i32 %35, 56
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = add i32 %35, 60
  %1733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = or i32 %1734, %1731
  %1736 = icmp eq i32 %1735, 0
  br i1 %1736, label %2568, label %1737

; <label>:1737                                    ; preds = %1727
  %1738 = and i32 %1731, 262144
  %1739 = icmp ne i32 %1738, 0
  %1740 = select i1 %1739, float %38, float 1.000000e+00
  %1741 = select i1 %1739, float %39, float 0.000000e+00
  %1742 = select i1 %1739, float %40, float 0.000000e+00
  %1743 = select i1 %1739, float %41, float 1.000000e+00
  %1744 = select i1 %1739, float %42, float %51
  %1745 = select i1 %1739, float %43, float %52
  %1746 = add i32 %35, 316
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = lshr i32 %1748, 16
  %1750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1749)  ; LegacyF16ToF32(value)
  %1751 = fmul fast float %1750, 0x3F50624DE0000000
  %1752 = add i32 %35, 120
  %1753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %1754 = extractvalue %dx.types.ResRet.i32 %1753, 0
  %1755 = lshr i32 %1754, 16
  %1756 = and i32 %1755, 255
  %1757 = lshr i32 %1754, 24
  %1758 = add i32 %35, 324
  %1759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1758, i32 undef)  ; BufferLoad(srv,index,wot)
  %1760 = extractvalue %dx.types.ResRet.i32 %1759, 0
  %1761 = and i32 %1760, 65535
  %1762 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1761)  ; LegacyF16ToF32(value)
  %1763 = lshr i32 %1760, 16
  %1764 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1763)  ; LegacyF16ToF32(value)
  %1765 = add i32 %35, 64
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = lshr i32 %1767, 22
  %1769 = shl nuw nsw i32 %1768, 5
  %1770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1769)  ; LegacyF16ToF32(value)
  %1771 = shl i32 %1767, 4
  %1772 = and i32 %1771, 32752
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = lshr i32 %1767, 7
  %1775 = and i32 %1774, 32752
  %1776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1775)  ; LegacyF16ToF32(value)
  %1777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1778 = extractvalue %dx.types.CBufRet.f32 %1777, 3
  %1779 = fmul fast float %1778, 1.000000e+03
  %1780 = fmul fast float %289, %1779
  %1781 = call float @dx.op.unary.f32(i32 22, float %1780)  ; Frc(value)
  %1782 = fadd fast float %1781, %279
  %1783 = fmul fast float %290, %1779
  %1784 = call float @dx.op.unary.f32(i32 22, float %1783)  ; Frc(value)
  %1785 = fadd fast float %1784, %281
  %1786 = fmul fast float %1751, %1779
  %1787 = call float @dx.op.unary.f32(i32 22, float %1786)  ; Frc(value)
  %1788 = fmul fast float %1787, 0x401921FB60000000
  %1789 = fadd fast float %1788, %1770
  %1790 = call float @dx.op.unary.f32(i32 13, float %1789)  ; Sin(value)
  %1791 = call float @dx.op.unary.f32(i32 12, float %1789)  ; Cos(value)
  %1792 = fsub fast float -0.000000e+00, %1790
  %1793 = fadd fast float %1744, -5.000000e-01
  %1794 = fadd fast float %1745, -5.000000e-01
  %1795 = fmul fast float %1762, %1793
  %1796 = fmul fast float %1764, %1794
  %1797 = fadd fast float %1795, 5.000000e-01
  %1798 = fadd fast float %1796, 5.000000e-01
  %1799 = fmul fast float %1773, %1797
  %1800 = fmul fast float %1776, %1798
  %1801 = fmul fast float %1791, %1799
  %1802 = call float @dx.op.tertiary.f32(i32 46, float %1792, float %1800, float %1801)  ; FMad(a,b,c)
  %1803 = fmul fast float %1790, %1799
  %1804 = call float @dx.op.tertiary.f32(i32 46, float %1791, float %1800, float %1803)  ; FMad(a,b,c)
  %1805 = fadd fast float %1782, %1802
  %1806 = fadd fast float %1785, %1804
  %1807 = icmp ugt i32 %1756, 1
  %1808 = icmp ugt i32 %1754, 33554431
  %1809 = or i1 %1808, %1807
  br i1 %1809, label %1810, label %1835

; <label>:1810                                    ; preds = %1737
  %1811 = add i32 %35, 260
  %1812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1811, i32 undef)  ; BufferLoad(srv,index,wot)
  %1813 = extractvalue %dx.types.ResRet.i32 %1812, 0
  %1814 = lshr i32 %1813, 16
  %1815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1814)  ; LegacyF16ToF32(value)
  %1816 = fmul fast float %1778, %1815
  %1817 = call float @dx.op.unary.f32(i32 22, float %1816)  ; Frc(value)
  %1818 = mul nuw nsw i32 %1756, %1757
  %1819 = uitofp i32 %1818 to float
  %1820 = fmul fast float %1817, %1819
  %1821 = call float @dx.op.unary.f32(i32 27, float %1820)  ; Round_ni(value)
  %1822 = fptoui float %1821 to i32
  %1823 = urem i32 %1822, %1756
  %1824 = udiv i32 %1822, %1757
  %1825 = call float @dx.op.unary.f32(i32 22, float %1805)  ; Frc(value)
  %1826 = call float @dx.op.unary.f32(i32 22, float %1806)  ; Frc(value)
  %1827 = uitofp i32 %1823 to float
  %1828 = uitofp i32 %1824 to float
  %1829 = fadd fast float %1825, %1827
  %1830 = fadd fast float %1826, %1828
  %1831 = uitofp i32 %1756 to float
  %1832 = uitofp i32 %1757 to float
  %1833 = fdiv fast float %1829, %1831
  %1834 = fdiv fast float %1830, %1832
  br label %1835

; <label>:1835                                    ; preds = %1810, %1737
  %1836 = phi float [ %1833, %1810 ], [ %1805, %1737 ]
  %1837 = phi float [ %1834, %1810 ], [ %1806, %1737 ]
  %1838 = and i32 %1731, 16777216
  %1839 = icmp eq i32 %1838, 0
  br i1 %1839, label %1949, label %1840

; <label>:1840                                    ; preds = %1835
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.CBufRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.CBufRet.f32 %1841, 2
  %1845 = fadd fast float %1842, %122
  %1846 = fadd fast float %1843, %123
  %1847 = fadd fast float %1844, %124
  %1848 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1849 = extractvalue %dx.types.CBufRet.f32 %1848, 0
  %1850 = call float @dx.op.unary.f32(i32 7, float %1849)  ; Saturate(value)
  %1851 = icmp eq i32 %36, 65535
  br i1 %1851, label %1946, label %1852

; <label>:1852                                    ; preds = %1840
  %1853 = lshr i32 %36, 1
  %1854 = shl i32 %1853, 2
  %1855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1854, i32 undef)  ; BufferLoad(srv,index,wot)
  %1856 = extractvalue %dx.types.ResRet.i32 %1855, 0
  %1857 = and i32 %36, 1
  %1858 = icmp ne i32 %1857, 0
  %1859 = lshr i32 %1856, 16
  %1860 = and i32 %1856, 65535
  %1861 = select i1 %1858, i32 %1859, i32 %1860
  %1862 = icmp eq i32 %1861, 65535
  br i1 %1862, label %1942, label %1863

; <label>:1863                                    ; preds = %1852
  %1864 = mul nuw nsw i32 %1861, 40
  %1865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1864, i32 undef)  ; BufferLoad(srv,index,wot)
  %1866 = extractvalue %dx.types.ResRet.f32 %1865, 0
  %1867 = extractvalue %dx.types.ResRet.f32 %1865, 1
  %1868 = extractvalue %dx.types.ResRet.f32 %1865, 2
  %1869 = add nuw nsw i32 %1864, 12
  %1870 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1869, i32 undef)  ; BufferLoad(srv,index,wot)
  %1871 = extractvalue %dx.types.ResRet.f32 %1870, 0
  %1872 = extractvalue %dx.types.ResRet.f32 %1870, 1
  %1873 = extractvalue %dx.types.ResRet.f32 %1870, 2
  %1874 = add nuw nsw i32 %1864, 24
  %1875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1876 = extractvalue %dx.types.ResRet.f32 %1875, 0
  %1877 = extractvalue %dx.types.ResRet.f32 %1875, 1
  %1878 = extractvalue %dx.types.ResRet.f32 %1875, 2
  %1879 = add nuw nsw i32 %1864, 36
  %1880 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.f32 %1880, 0
  %1882 = fsub fast float %1845, %1866
  %1883 = fsub fast float %1846, %1867
  %1884 = fsub fast float %1847, %1868
  %1885 = fmul fast float %1881, %1882
  %1886 = fmul fast float %1881, %1883
  %1887 = fmul fast float %1881, %1884
  %1888 = call float @dx.op.unary.f32(i32 27, float %1885)  ; Round_ni(value)
  %1889 = call float @dx.op.unary.f32(i32 27, float %1886)  ; Round_ni(value)
  %1890 = call float @dx.op.unary.f32(i32 27, float %1887)  ; Round_ni(value)
  %1891 = fadd fast float %1888, 5.000000e-01
  %1892 = fadd fast float %1889, 5.000000e-01
  %1893 = fadd fast float %1890, 5.000000e-01
  %1894 = fmul fast float %1891, %1871
  %1895 = fmul fast float %1892, %1872
  %1896 = fmul fast float %1893, %1873
  %1897 = shl i32 %36, 2
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = add i32 %1899, 0
  %1901 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1900, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1902 = call float @dx.op.unary.f32(i32 22, float %1894)  ; Frc(value)
  %1903 = call float @dx.op.unary.f32(i32 22, float %1895)  ; Frc(value)
  %1904 = call float @dx.op.unary.f32(i32 22, float %1896)  ; Frc(value)
  %1905 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1901, %dx.types.Handle %30, float %1902, float %1903, float %1904, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1906 = extractvalue %dx.types.ResRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.ResRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.ResRet.f32 %1905, 2
  %1909 = fmul fast float %1906, 1.023000e+03
  %1910 = fmul fast float %1907, 1.023000e+03
  %1911 = fmul fast float %1908, 1.023000e+03
  %1912 = fadd fast float %1909, 5.000000e-01
  %1913 = fadd fast float %1910, 5.000000e-01
  %1914 = fadd fast float %1911, 5.000000e-01
  %1915 = call float @dx.op.unary.f32(i32 27, float %1912)  ; Round_ni(value)
  %1916 = call float @dx.op.unary.f32(i32 27, float %1913)  ; Round_ni(value)
  %1917 = call float @dx.op.unary.f32(i32 27, float %1914)  ; Round_ni(value)
  %1918 = fsub fast float %1885, %1888
  %1919 = fsub fast float %1886, %1889
  %1920 = fsub fast float %1887, %1890
  %1921 = fmul fast float %1918, 7.500000e-01
  %1922 = fmul fast float %1919, 7.500000e-01
  %1923 = fmul fast float %1920, 7.500000e-01
  %1924 = fadd fast float %1888, 1.250000e-01
  %1925 = fadd fast float %1924, %1921
  %1926 = fadd fast float %1925, %1915
  %1927 = fadd fast float %1889, 1.250000e-01
  %1928 = fadd fast float %1927, %1922
  %1929 = fadd fast float %1928, %1916
  %1930 = fadd fast float %1890, 1.250000e-01
  %1931 = fadd fast float %1930, %1923
  %1932 = fadd fast float %1931, %1917
  %1933 = fmul fast float %1926, %1876
  %1934 = fmul fast float %1929, %1877
  %1935 = fmul fast float %1932, %1878
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = add i32 %1937, 0
  %1939 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1938, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1939, %dx.types.Handle %28, float %1933, float %1934, float %1935, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1941 = extractvalue %dx.types.ResRet.f32 %1940, 0
  br label %1942

; <label>:1942                                    ; preds = %1863, %1852
  %1943 = phi float [ %1941, %1863 ], [ -1.000000e+00, %1852 ]
  %1944 = fadd fast float %1943, %1850
  %1945 = call float @dx.op.unary.f32(i32 7, float %1944)  ; Saturate(value)
  br label %1946

; <label>:1946                                    ; preds = %1942, %1840
  %1947 = phi float [ %1945, %1942 ], [ %1850, %1840 ]
  %1948 = fmul fast float %1947, %388
  br label %1949

; <label>:1949                                    ; preds = %1946, %1835
  %1950 = phi float [ %1948, %1946 ], [ %388, %1835 ]
  %1951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1952 = extractvalue %dx.types.ResRet.i32 %1951, 0
  %1953 = and i32 %1952, 256
  %1954 = icmp eq i32 %1953, 0
  br i1 %1954, label %2001, label %1955

; <label>:1955                                    ; preds = %1949
  %1956 = add i32 %35, 432
  %1957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1958 = extractvalue %dx.types.ResRet.i32 %1957, 0
  %1959 = add i32 %1958, 0
  %1960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1959, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1961 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1960, %dx.types.Handle %60, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1962 = extractvalue %dx.types.ResRet.f32 %1961, 0
  %1963 = add i32 %35, 132
  %1964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1963, i32 undef)  ; BufferLoad(srv,index,wot)
  %1965 = extractvalue %dx.types.ResRet.i32 %1964, 0
  %1966 = shl i32 %1965, 4
  %1967 = and i32 %1966, 32752
  %1968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1967)  ; LegacyF16ToF32(value)
  %1969 = lshr i32 %1965, 7
  %1970 = and i32 %1969, 32752
  %1971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1970)  ; LegacyF16ToF32(value)
  %1972 = fsub fast float 1.000000e+00, %1950
  %1973 = call float @dx.op.binary.f32(i32 35, float %1972, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1974 = bitcast float %1950 to i32
  %1975 = sitofp i32 %1974 to float
  %1976 = fadd fast float %1975, 0xC1CFBF8940000000
  %1977 = fmul fast float %1971, %1976
  %1978 = fadd fast float %1977, 0x41CFBF8940000000
  %1979 = fptosi float %1978 to i32
  %1980 = bitcast i32 %1979 to float
  %1981 = bitcast float %1973 to i32
  %1982 = sitofp i32 %1981 to float
  %1983 = fadd fast float %1982, 0xC1CFBF8940000000
  %1984 = fmul fast float %1983, %1971
  %1985 = fadd fast float %1984, 0x41CFBF8940000000
  %1986 = fptosi float %1985 to i32
  %1987 = bitcast i32 %1986 to float
  %1988 = fmul fast float %1980, %1968
  %1989 = fmul fast float %1987, %1968
  %1990 = fsub fast float %1973, %1988
  %1991 = fadd fast float %1989, %1973
  %1992 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1993 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1994 = fsub fast float %1962, %1992
  %1995 = fsub fast float %1993, %1992
  %1996 = bitcast float %1995 to i32
  %1997 = sub nsw i32 2129859010, %1996
  %1998 = bitcast i32 %1997 to float
  %1999 = fmul fast float %1998, %1994
  %2000 = call float @dx.op.unary.f32(i32 7, float %1999)  ; Saturate(value)
  br label %2001

; <label>:2001                                    ; preds = %1955, %1949
  %2002 = phi float [ %2000, %1955 ], [ %1950, %1949 ]
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = and i32 %2004, 128
  %2006 = icmp eq i32 %2005, 0
  br i1 %2006, label %2023, label %2007

; <label>:2007                                    ; preds = %2001
  %2008 = add i32 %35, 416
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = add i32 %2010, 0
  %2012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2012, %dx.types.Handle %60, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2014 = extractvalue %dx.types.ResRet.f32 %2013, 0
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = and i32 %2016, 524288
  %2018 = icmp ne i32 %2017, 0
  %2019 = fcmp fast ogt float %2014, 0x3FE0101020000000
  %2020 = select i1 %2019, float 1.000000e+00, float 0.000000e+00
  %2021 = select i1 %2018, float %2020, float %2014
  %2022 = fmul fast float %2021, %2002
  br label %2023

; <label>:2023                                    ; preds = %2007, %2001
  %2024 = phi float [ %2022, %2007 ], [ %2002, %2001 ]
  %2025 = fcmp fast ult float %2024, 0x3F70101020000000
  br i1 %2025, label %2568, label %2026

; <label>:2026                                    ; preds = %2023
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = and i32 %2028, 16
  %2030 = icmp eq i32 %2029, 0
  br i1 %2030, label %2229, label %2031

; <label>:2031                                    ; preds = %2026
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1752, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = add i32 %35, 368
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = add i32 %2036, 0
  %2038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2039 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2038, %dx.types.Handle %59, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2040 = extractvalue %dx.types.ResRet.f32 %2039, 0
  %2041 = extractvalue %dx.types.ResRet.f32 %2039, 1
  %2042 = extractvalue %dx.types.ResRet.f32 %2039, 2
  %2043 = extractvalue %dx.types.ResRet.f32 %2039, 3
  %2044 = and i32 %2033, 255
  %2045 = uitofp i32 %2044 to float
  %2046 = lshr i32 %2033, 8
  %2047 = and i32 %2046, 255
  %2048 = uitofp i32 %2047 to float
  %2049 = fmul fast float %2043, %2045
  %2050 = fadd fast float %2049, %2048
  %2051 = fmul fast float %2050, 0x3F70101000000000
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = and i32 %2053, 512
  %2055 = icmp eq i32 %2054, 0
  br i1 %2055, label %2064, label %2056

; <label>:2056                                    ; preds = %2031
  %2057 = add i32 %35, 448
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = add i32 %2059, 0
  %2061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2060, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2062 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2061, %dx.types.Handle %60, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2063 = extractvalue %dx.types.ResRet.f32 %2062, 0
  br label %2064

; <label>:2064                                    ; preds = %2056, %2031
  %2065 = phi float [ %2063, %2056 ], [ 1.000000e+00, %2031 ]
  %2066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2067 = extractvalue %dx.types.ResRet.i32 %2066, 0
  %2068 = and i32 %2067, 33554432
  %2069 = icmp eq i32 %2068, 0
  br i1 %2069, label %2176, label %2070

; <label>:2070                                    ; preds = %2064
  %2071 = add i32 %35, 256
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2071, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = and i32 %2073, 65535
  %2075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2074)  ; LegacyF16ToF32(value)
  %2076 = lshr i32 %2073, 16
  %2077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2076)  ; LegacyF16ToF32(value)
  %2078 = add i32 %35, 260
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2078, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = and i32 %2080, 65535
  %2082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2081)  ; LegacyF16ToF32(value)
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = lshr i32 %2084, 24
  %2086 = uitofp i32 %2085 to float
  %2087 = fmul fast float %2086, 0x3F70101020000000
  %2088 = and i32 %2084, 255
  %2089 = uitofp i32 %2088 to float
  %2090 = fmul fast float %2089, 0x3F70101020000000
  %2091 = lshr i32 %2084, 8
  %2092 = and i32 %2091, 255
  %2093 = uitofp i32 %2092 to float
  %2094 = fmul fast float %2093, 0x3F70101020000000
  %2095 = lshr i32 %2084, 16
  %2096 = and i32 %2095, 255
  %2097 = uitofp i32 %2096 to float
  %2098 = fmul fast float %2097, 0x3F70101020000000
  %2099 = add i32 %35, 252
  %2100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2099, i32 undef)  ; BufferLoad(srv,index,wot)
  %2101 = extractvalue %dx.types.ResRet.i32 %2100, 0
  %2102 = lshr i32 %2101, 24
  %2103 = uitofp i32 %2102 to float
  %2104 = fmul fast float %2103, 0x3F70101020000000
  %2105 = and i32 %2101, 255
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101020000000
  %2108 = lshr i32 %2101, 8
  %2109 = and i32 %2108, 255
  %2110 = uitofp i32 %2109 to float
  %2111 = fmul fast float %2110, 0x3F70101020000000
  %2112 = lshr i32 %2101, 16
  %2113 = and i32 %2112, 255
  %2114 = uitofp i32 %2113 to float
  %2115 = fmul fast float %2114, 0x3F70101020000000
  %2116 = bitcast float %2040 to i32
  %2117 = ashr i32 %2116, 1
  %2118 = sub nsw i32 1597463174, %2117
  %2119 = bitcast i32 %2118 to float
  %2120 = fmul fast float %2040, 5.000000e-01
  %2121 = fmul fast float %2119, %2119
  %2122 = fmul fast float %2121, %2120
  %2123 = fsub fast float 1.500000e+00, %2122
  %2124 = fmul fast float %2119, %2040
  %2125 = fmul fast float %2124, %2123
  %2126 = bitcast float %2041 to i32
  %2127 = ashr i32 %2126, 1
  %2128 = sub nsw i32 1597463174, %2127
  %2129 = bitcast i32 %2128 to float
  %2130 = fmul fast float %2041, 5.000000e-01
  %2131 = fmul fast float %2129, %2129
  %2132 = fmul fast float %2131, %2130
  %2133 = fsub fast float 1.500000e+00, %2132
  %2134 = fmul fast float %2129, %2041
  %2135 = fmul fast float %2134, %2133
  %2136 = bitcast float %2042 to i32
  %2137 = ashr i32 %2136, 1
  %2138 = sub nsw i32 1597463174, %2137
  %2139 = bitcast i32 %2138 to float
  %2140 = fmul fast float %2042, 5.000000e-01
  %2141 = fmul fast float %2139, %2139
  %2142 = fmul fast float %2141, %2140
  %2143 = fsub fast float 1.500000e+00, %2142
  %2144 = fmul fast float %2139, %2042
  %2145 = fmul fast float %2144, %2143
  %2146 = fsub fast float %2125, %2107
  %2147 = fsub fast float %2135, %2111
  %2148 = fsub fast float %2145, %2115
  %2149 = fmul fast float %2146, %2075
  %2150 = fmul fast float %2147, %2077
  %2151 = fmul fast float %2148, %2082
  %2152 = fadd fast float %2149, %2090
  %2153 = fadd fast float %2150, %2094
  %2154 = fadd fast float %2151, %2098
  %2155 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  %2156 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2157 = call float @dx.op.unary.f32(i32 7, float %2154)  ; Saturate(value)
  %2158 = fmul fast float %2155, %2155
  %2159 = fmul fast float %2156, %2156
  %2160 = fmul fast float %2157, %2157
  %2161 = fsub fast float %2158, %2040
  %2162 = fsub fast float %2159, %2041
  %2163 = fsub fast float %2160, %2042
  %2164 = fmul fast float %2161, %2065
  %2165 = fmul fast float %2162, %2065
  %2166 = fmul fast float %2163, %2065
  %2167 = fadd fast float %2164, %2040
  %2168 = fadd fast float %2165, %2041
  %2169 = fadd fast float %2166, %2042
  %2170 = fadd fast float %2087, %2051
  %2171 = fsub fast float %2170, %2104
  %2172 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2173 = fsub fast float %2172, %2051
  %2174 = fmul fast float %2173, %2065
  %2175 = fadd fast float %2174, %2051
  br label %2229

; <label>:2176                                    ; preds = %2064
  %2177 = and i32 %2067, 134217728
  %2178 = icmp eq i32 %2177, 0
  br i1 %2178, label %2213, label %2179

; <label>:2179                                    ; preds = %2176
  %2180 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %2181 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %2182 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %2183 = fadd fast float %2180, -5.000000e-01
  %2184 = fadd fast float %2181, -5.000000e-01
  %2185 = fadd fast float %2182, -5.000000e-01
  %2186 = fmul fast float %2183, %2065
  %2187 = fmul fast float %2184, %2065
  %2188 = fmul fast float %2185, %2065
  %2189 = fadd fast float %2186, 5.000000e-01
  %2190 = fadd fast float %2187, 5.000000e-01
  %2191 = fadd fast float %2188, 5.000000e-01
  %2192 = call float @dx.op.unary.f32(i32 24, float %2040)  ; Sqrt(value)
  %2193 = call float @dx.op.unary.f32(i32 24, float %2041)  ; Sqrt(value)
  %2194 = call float @dx.op.unary.f32(i32 24, float %2042)  ; Sqrt(value)
  %2195 = fmul fast float %2189, 2.000000e+00
  %2196 = fsub fast float 1.000000e+00, %2195
  %2197 = fmul fast float %2196, %2192
  %2198 = fadd fast float %2197, %2195
  %2199 = fmul fast float %2198, %2192
  %2200 = fmul fast float %2190, 2.000000e+00
  %2201 = fsub fast float 1.000000e+00, %2200
  %2202 = fmul fast float %2201, %2193
  %2203 = fadd fast float %2202, %2200
  %2204 = fmul fast float %2203, %2193
  %2205 = fmul fast float %2191, 2.000000e+00
  %2206 = fsub fast float 1.000000e+00, %2205
  %2207 = fmul fast float %2206, %2194
  %2208 = fadd fast float %2207, %2205
  %2209 = fmul fast float %2208, %2194
  %2210 = fmul fast float %2199, %2199
  %2211 = fmul fast float %2204, %2204
  %2212 = fmul fast float %2209, %2209
  br label %2229

; <label>:2213                                    ; preds = %2176
  %2214 = fmul fast float %266, %266
  %2215 = fmul fast float %270, %270
  %2216 = fmul fast float %274, %274
  %2217 = fadd fast float %2214, -1.000000e+00
  %2218 = fadd fast float %2215, -1.000000e+00
  %2219 = fadd fast float %2216, -1.000000e+00
  %2220 = fmul fast float %2065, %2217
  %2221 = fmul fast float %2065, %2218
  %2222 = fmul fast float %2065, %2219
  %2223 = fadd fast float %2220, 1.000000e+00
  %2224 = fadd fast float %2221, 1.000000e+00
  %2225 = fadd fast float %2222, 1.000000e+00
  %2226 = fmul fast float %2223, %2040
  %2227 = fmul fast float %2224, %2041
  %2228 = fmul fast float %2225, %2042
  br label %2229

; <label>:2229                                    ; preds = %2213, %2179, %2070, %2026
  %2230 = phi float [ %2175, %2070 ], [ %2051, %2179 ], [ %2051, %2213 ], [ 0x3FA23C0BE0000000, %2026 ]
  %2231 = phi float [ %2167, %2070 ], [ %2210, %2179 ], [ %2226, %2213 ], [ 1.000000e+00, %2026 ]
  %2232 = phi float [ %2168, %2070 ], [ %2211, %2179 ], [ %2227, %2213 ], [ 1.000000e+00, %2026 ]
  %2233 = phi float [ %2169, %2070 ], [ %2212, %2179 ], [ %2228, %2213 ], [ 1.000000e+00, %2026 ]
  %2234 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2235 = extractvalue %dx.types.CBufRet.i32 %2234, 1
  %2236 = and i32 %2235, 1
  %2237 = icmp ne i32 %2236, 0
  %2238 = add i32 %35, 356
  %2239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2238, i32 undef)  ; BufferLoad(srv,index,wot)
  %2240 = extractvalue %dx.types.ResRet.i32 %2239, 0
  %2241 = and i32 %2240, 32
  %2242 = icmp ne i32 %2241, 0
  %2243 = and i1 %2237, %2242
  %2244 = select i1 %2243, float 1.000000e+00, float %2231
  %2245 = select i1 %2243, float 0x3FD3333340000000, float %2232
  %2246 = select i1 %2243, float 0x3FD3333340000000, float %2233
  %2247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.i32 %2247, 0
  %2249 = and i32 %2248, 32
  %2250 = icmp eq i32 %2249, 0
  br i1 %2250, label %2323, label %2251

; <label>:2251                                    ; preds = %2229
  %2252 = add i32 %35, 124
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = add i32 %35, 384
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = add i32 %2257, 0
  %2259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2259, %dx.types.Handle %59, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2261 = extractvalue %dx.types.ResRet.f32 %2260, 0
  %2262 = extractvalue %dx.types.ResRet.f32 %2260, 1
  %2263 = extractvalue %dx.types.ResRet.f32 %2260, 2
  %2264 = extractvalue %dx.types.ResRet.f32 %2260, 3
  %2265 = and i32 %2254, 255
  %2266 = uitofp i32 %2265 to float
  %2267 = lshr i32 %2254, 8
  %2268 = and i32 %2267, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = lshr i32 %2254, 16
  %2271 = and i32 %2270, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = fmul fast float %2272, 0x3F70101000000000
  %2274 = fmul fast float %2261, %2266
  %2275 = fadd fast float %2274, %2269
  %2276 = fmul fast float %2275, 0x3F70101000000000
  %2277 = fadd fast float %2262, -5.000000e-01
  %2278 = fadd fast float %2264, -5.000000e-01
  %2279 = fmul fast float %2277, %2273
  %2280 = fmul fast float %2278, %2273
  %2281 = fadd fast float %2279, 5.000000e-01
  %2282 = fadd fast float %2280, 5.000000e-01
  %2283 = fmul fast float %2281, 2.000000e+00
  %2284 = fadd fast float %2283, -1.000000e+00
  %2285 = fmul fast float %2282, 2.000000e+00
  %2286 = fadd fast float %2285, -1.000000e+00
  %2287 = fadd fast float %2284, %2286
  %2288 = fmul fast float %2287, 5.000000e-01
  %2289 = fsub fast float %2284, %2286
  %2290 = fmul fast float %2289, 5.000000e-01
  %2291 = call float @dx.op.unary.f32(i32 6, float %2288)  ; FAbs(value)
  %2292 = fsub fast float 1.000000e+00, %2291
  %2293 = call float @dx.op.unary.f32(i32 6, float %2290)  ; FAbs(value)
  %2294 = fsub fast float %2292, %2293
  %2295 = call float @dx.op.dot3.f32(i32 55, float %2288, float %2290, float %2294, float %2288, float %2290, float %2294)  ; Dot3(ax,ay,az,bx,by,bz)
  %2296 = call float @dx.op.unary.f32(i32 25, float %2295)  ; Rsqrt(value)
  %2297 = fmul fast float %2288, %2296
  %2298 = fmul fast float %2290, %2296
  %2299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2300 = extractvalue %dx.types.ResRet.i32 %2299, 0
  %2301 = and i32 %2300, 67108864
  %2302 = icmp eq i32 %2301, 0
  br i1 %2302, label %2319, label %2303

; <label>:2303                                    ; preds = %2251
  %2304 = add i32 %35, 312
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = and i32 %2306, 65535
  %2308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2307)  ; LegacyF16ToF32(value)
  %2309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2310 = extractvalue %dx.types.ResRet.i32 %2309, 0
  %2311 = and i32 %2310, 65535
  %2312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2311)  ; LegacyF16ToF32(value)
  %2313 = lshr i32 %2306, 16
  %2314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2313)  ; LegacyF16ToF32(value)
  %2315 = fsub fast float %2276, %2314
  %2316 = fmul fast float %2315, %2308
  %2317 = fadd fast float %2316, %2312
  %2318 = call float @dx.op.unary.f32(i32 7, float %2317)  ; Saturate(value)
  br label %2319

; <label>:2319                                    ; preds = %2303, %2251
  %2320 = phi float [ %2318, %2303 ], [ %2276, %2251 ]
  %2321 = call float @dx.op.dot2.f32(i32 54, float %2297, float %2298, float %1740, float %1741)  ; Dot2(ax,ay,bx,by)
  %2322 = call float @dx.op.dot2.f32(i32 54, float %2297, float %2298, float %1742, float %1743)  ; Dot2(ax,ay,bx,by)
  br label %2323

; <label>:2323                                    ; preds = %2319, %2229
  %2324 = phi float [ %2320, %2319 ], [ 0x3FD6666660000000, %2229 ]
  %2325 = phi float [ %2321, %2319 ], [ 0.000000e+00, %2229 ]
  %2326 = phi float [ %2322, %2319 ], [ 0.000000e+00, %2229 ]
  %2327 = phi float [ %2263, %2319 ], [ 1.000000e+00, %2229 ]
  %2328 = add i32 %35, 192
  %2329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2328, i32 undef)  ; BufferLoad(srv,index,wot)
  %2330 = extractvalue %dx.types.ResRet.i32 %2329, 0
  %2331 = lshr i32 %2330, 22
  %2332 = shl nuw nsw i32 %2331, 5
  %2333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2332)  ; LegacyF16ToF32(value)
  %2334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2335 = extractvalue %dx.types.ResRet.i32 %2334, 0
  %2336 = and i32 %2335, 64
  %2337 = icmp eq i32 %2336, 0
  br i1 %2337, label %2371, label %2338

; <label>:2338                                    ; preds = %2323
  %2339 = add i32 %35, 400
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = add i32 %2341, 0
  %2343 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2342, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2345 = extractvalue %dx.types.ResRet.i32 %2344, 0
  %2346 = and i32 %2345, 131072
  %2347 = icmp eq i32 %2346, 0
  %2348 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2343, %dx.types.Handle %59, float %1836, float %1837, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2349 = extractvalue %dx.types.ResRet.f32 %2348, 0
  %2350 = extractvalue %dx.types.ResRet.f32 %2348, 1
  %2351 = extractvalue %dx.types.ResRet.f32 %2348, 2
  %2352 = fmul fast float %2349, %254
  %2353 = fmul fast float %2350, %257
  %2354 = fmul fast float %2351, %260
  br i1 %2347, label %2361, label %2355

; <label>:2355                                    ; preds = %2338
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 0
  %2358 = fmul fast float %2357, %2352
  %2359 = fmul fast float %2357, %2353
  %2360 = fmul fast float %2357, %2354
  br label %2361

; <label>:2361                                    ; preds = %2355, %2338
  %2362 = phi float [ %2358, %2355 ], [ %2352, %2338 ]
  %2363 = phi float [ %2359, %2355 ], [ %2353, %2338 ]
  %2364 = phi float [ %2360, %2355 ], [ %2354, %2338 ]
  %2365 = fmul fast float %2362, %2333
  %2366 = select i1 %164, float %2365, float %2362
  %2367 = call float @dx.op.dot3.f32(i32 55, float %2366, float %2363, float %2364, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2368 = select i1 %164, float 0.000000e+00, float %2362
  %2369 = select i1 %164, float %2367, float %2363
  %2370 = select i1 %164, float 0.000000e+00, float %2364
  br label %2371

; <label>:2371                                    ; preds = %2361, %2323
  %2372 = phi float [ %2368, %2361 ], [ 0.000000e+00, %2323 ]
  %2373 = phi float [ %2369, %2361 ], [ 0.000000e+00, %2323 ]
  %2374 = phi float [ %2370, %2361 ], [ 0.000000e+00, %2323 ]
  %2375 = add i32 %35, 128
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2375, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = and i32 %2377, 255
  %2379 = uitofp i32 %2378 to float
  %2380 = lshr i32 %2377, 8
  %2381 = and i32 %2380, 255
  %2382 = uitofp i32 %2381 to float
  %2383 = call float @dx.op.dot3.f32(i32 55, float %2244, float %2245, float %2246, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2384 = fmul fast float %2382, %2383
  %2385 = fadd fast float %2384, %2379
  %2386 = fmul fast float %2385, 0x3F70101020000000
  %2387 = call float @dx.op.unary.f32(i32 7, float %2386)  ; Saturate(value)
  br i1 %1728, label %2388, label %2396

; <label>:2388                                    ; preds = %2371
  %2389 = fsub fast float 1.000000e+00, %2024
  %2390 = fmul fast float %2389, %1717
  %2391 = fmul fast float %2389, %1718
  %2392 = fmul fast float %2389, %1719
  %2393 = fmul fast float %2389, %1720
  %2394 = fmul fast float %2389, %1721
  %2395 = fmul fast float %2389, %1722
  br label %2396

; <label>:2396                                    ; preds = %2388, %2371
  %2397 = phi float [ %2390, %2388 ], [ %1717, %2371 ]
  %2398 = phi float [ %2391, %2388 ], [ %1718, %2371 ]
  %2399 = phi float [ %2392, %2388 ], [ %1719, %2371 ]
  %2400 = phi float [ %2393, %2388 ], [ %1720, %2371 ]
  %2401 = phi float [ %2394, %2388 ], [ %1721, %2371 ]
  %2402 = phi float [ %2395, %2388 ], [ %1722, %2371 ]
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = and i32 %2404, 3
  %2406 = icmp eq i32 %2405, 3
  br i1 %2406, label %2485, label %2407

; <label>:2407                                    ; preds = %2396
  %2408 = and i32 %2404, 16
  %2409 = icmp ne i32 %2408, 0
  %2410 = select i1 %2409, float %2024, float 0.000000e+00
  %2411 = icmp eq i32 %2405, 0
  br i1 %2411, label %2412, label %2440

; <label>:2412                                    ; preds = %2407
  %2413 = and i32 %2404, 64
  %2414 = icmp ne i32 %2413, 0
  %2415 = select i1 %2414, float %2024, float 0.000000e+00
  %2416 = fsub fast float %2244, %2397
  %2417 = fsub fast float %2245, %2398
  %2418 = fsub fast float %2246, %2399
  %2419 = fmul fast float %2410, %2416
  %2420 = fmul fast float %2410, %2417
  %2421 = fmul fast float %2410, %2418
  %2422 = fadd fast float %2419, %2397
  %2423 = fadd fast float %2420, %2398
  %2424 = fadd fast float %2421, %2399
  %2425 = fsub fast float %2230, %1723
  %2426 = fmul fast float %2410, %2425
  %2427 = fadd fast float %2426, %1723
  %2428 = fsub fast float %2372, %2400
  %2429 = fsub fast float %2373, %2401
  %2430 = fsub fast float %2374, %2402
  %2431 = fmul fast float %2415, %2428
  %2432 = fmul fast float %2415, %2429
  %2433 = fmul fast float %2415, %2430
  %2434 = fadd fast float %2431, %2400
  %2435 = fadd fast float %2432, %2401
  %2436 = fadd fast float %2433, %2402
  %2437 = fsub fast float %2387, %1726
  %2438 = fmul fast float %2410, %2437
  %2439 = fadd fast float %2438, %1726
  br label %2485

; <label>:2440                                    ; preds = %2407
  %2441 = icmp eq i32 %2405, 1
  br i1 %2441, label %2442, label %2455

; <label>:2442                                    ; preds = %2440
  %2443 = fadd fast float %2244, -1.000000e+00
  %2444 = fadd fast float %2245, -1.000000e+00
  %2445 = fadd fast float %2246, -1.000000e+00
  %2446 = fmul fast float %2410, %2443
  %2447 = fmul fast float %2410, %2444
  %2448 = fmul fast float %2410, %2445
  %2449 = fadd fast float %2446, 1.000000e+00
  %2450 = fadd fast float %2447, 1.000000e+00
  %2451 = fadd fast float %2448, 1.000000e+00
  %2452 = fmul fast float %2449, %2397
  %2453 = fmul fast float %2450, %2398
  %2454 = fmul fast float %2451, %2399
  br label %2485

; <label>:2455                                    ; preds = %2440
  %2456 = icmp eq i32 %2405, 2
  br i1 %2456, label %2457, label %2485

; <label>:2457                                    ; preds = %2455
  %2458 = call float @dx.op.unary.f32(i32 24, float %2244)  ; Sqrt(value)
  %2459 = call float @dx.op.unary.f32(i32 24, float %2245)  ; Sqrt(value)
  %2460 = call float @dx.op.unary.f32(i32 24, float %2246)  ; Sqrt(value)
  %2461 = fadd fast float %2458, -5.000000e-01
  %2462 = fadd fast float %2459, -5.000000e-01
  %2463 = fadd fast float %2460, -5.000000e-01
  %2464 = fmul fast float %2461, %2410
  %2465 = fmul fast float %2462, %2410
  %2466 = fmul fast float %2463, %2410
  %2467 = fadd fast float %2464, 5.000000e-01
  %2468 = fadd fast float %2465, 5.000000e-01
  %2469 = fadd fast float %2466, 5.000000e-01
  %2470 = fmul fast float %2467, 2.000000e+00
  %2471 = fsub fast float 1.000000e+00, %2470
  %2472 = fmul fast float %2471, %2397
  %2473 = fadd fast float %2472, %2470
  %2474 = fmul fast float %2473, %2397
  %2475 = fmul fast float %2468, 2.000000e+00
  %2476 = fsub fast float 1.000000e+00, %2475
  %2477 = fmul fast float %2476, %2398
  %2478 = fadd fast float %2477, %2475
  %2479 = fmul fast float %2478, %2398
  %2480 = fmul fast float %2469, 2.000000e+00
  %2481 = fsub fast float 1.000000e+00, %2480
  %2482 = fmul fast float %2481, %2399
  %2483 = fadd fast float %2482, %2480
  %2484 = fmul fast float %2483, %2399
  br label %2485

; <label>:2485                                    ; preds = %2457, %2455, %2442, %2412, %2396
  %2486 = phi float [ %2397, %2396 ], [ %2474, %2457 ], [ %2397, %2455 ], [ %2452, %2442 ], [ %2422, %2412 ]
  %2487 = phi float [ %2398, %2396 ], [ %2479, %2457 ], [ %2398, %2455 ], [ %2453, %2442 ], [ %2423, %2412 ]
  %2488 = phi float [ %2399, %2396 ], [ %2484, %2457 ], [ %2399, %2455 ], [ %2454, %2442 ], [ %2424, %2412 ]
  %2489 = phi float [ %2400, %2396 ], [ %2400, %2457 ], [ %2400, %2455 ], [ %2400, %2442 ], [ %2434, %2412 ]
  %2490 = phi float [ %2401, %2396 ], [ %2401, %2457 ], [ %2401, %2455 ], [ %2401, %2442 ], [ %2435, %2412 ]
  %2491 = phi float [ %2402, %2396 ], [ %2402, %2457 ], [ %2402, %2455 ], [ %2402, %2442 ], [ %2436, %2412 ]
  %2492 = phi float [ %1723, %2396 ], [ %1723, %2457 ], [ %1723, %2455 ], [ %1723, %2442 ], [ %2427, %2412 ]
  %2493 = phi float [ %1726, %2396 ], [ %1726, %2457 ], [ %1726, %2455 ], [ %1726, %2442 ], [ %2439, %2412 ]
  %2494 = and i32 %2404, 12
  %2495 = icmp eq i32 %2494, 12
  br i1 %2495, label %2568, label %2496

; <label>:2496                                    ; preds = %2485
  %2497 = and i32 %2404, 2097184
  %2498 = icmp eq i32 %2497, 2097184
  %2499 = select i1 %2498, float %2024, float 0.000000e+00
  %2500 = and i32 %2404, 4194336
  %2501 = icmp eq i32 %2500, 4194336
  %2502 = select i1 %2501, float %2024, float 0.000000e+00
  %2503 = and i32 %2404, 8388640
  %2504 = icmp eq i32 %2503, 8388640
  %2505 = select i1 %2504, float %2024, float 0.000000e+00
  %2506 = icmp eq i32 %2494, 0
  br i1 %2506, label %2507, label %2520

; <label>:2507                                    ; preds = %2496
  %2508 = fsub fast float %2325, %1715
  %2509 = fsub fast float %2326, %1716
  %2510 = fmul fast float %2499, %2508
  %2511 = fmul fast float %2499, %2509
  %2512 = fadd fast float %2510, %1715
  %2513 = fadd fast float %2511, %1716
  %2514 = fsub fast float %2327, %1725
  %2515 = fmul fast float %2502, %2514
  %2516 = fadd fast float %2515, %1725
  %2517 = fsub fast float %2324, %1724
  %2518 = fmul fast float %2505, %2517
  %2519 = fadd fast float %2518, %1724
  br label %2568

; <label>:2520                                    ; preds = %2496
  %2521 = icmp eq i32 %2494, 4
  br i1 %2521, label %2522, label %2554

; <label>:2522                                    ; preds = %2520
  %2523 = fmul fast float %2499, %2325
  %2524 = fmul fast float %2499, %2326
  %2525 = fadd fast float %2523, %1715
  %2526 = fadd fast float %2524, %1716
  %2527 = call float @dx.op.binary.f32(i32 36, float %1725, float %2327)  ; FMin(a,b)
  %2528 = fsub fast float %2527, %1725
  %2529 = fmul fast float %2528, %2502
  %2530 = fadd fast float %2529, %1725
  %2531 = fadd fast float %2324, %1724
  %2532 = fmul fast float %2531, 0x3FF337FAE0000000
  %2533 = fmul fast float %1724, %1724
  %2534 = fmul fast float %2324, %2324
  %2535 = fadd fast float %2534, %2533
  %2536 = fmul fast float %2535, 0x3FE5152B00000000
  %2537 = fmul fast float %1724, 0xBFCC1F85E0000000
  %2538 = fmul fast float %2537, %2324
  %2539 = fadd fast float %2538, 0xBFE1363700000000
  %2540 = fadd fast float %2539, %2532
  %2541 = fsub fast float %2540, %2536
  %2542 = fmul fast float %2531, 0x3FBA6F0D00000000
  %2543 = fmul fast float %2535, 0x3FD0432880000000
  %2544 = fmul fast float %1724, 0xBFEF110800000000
  %2545 = fmul fast float %2544, %2324
  %2546 = fadd fast float %2545, 1.000000e+00
  %2547 = fsub fast float %2546, %2542
  %2548 = fadd fast float %2547, %2543
  %2549 = fdiv fast float %2541, %2548
  %2550 = call float @dx.op.unary.f32(i32 7, float %2549)  ; Saturate(value)
  %2551 = fsub fast float %2550, %1724
  %2552 = fmul fast float %2551, %2505
  %2553 = fadd fast float %2552, %1724
  br label %2568

; <label>:2554                                    ; preds = %2520
  %2555 = icmp eq i32 %2494, 8
  br i1 %2555, label %2556, label %2568

; <label>:2556                                    ; preds = %2554
  %2557 = fmul fast float %2499, %2325
  %2558 = fmul fast float %2499, %2326
  %2559 = fadd fast float %2557, %1715
  %2560 = fadd fast float %2558, %1716
  %2561 = call float @dx.op.binary.f32(i32 36, float %1725, float %2327)  ; FMin(a,b)
  %2562 = fsub fast float %2561, %1725
  %2563 = fmul fast float %2562, %2502
  %2564 = fadd fast float %2563, %1725
  %2565 = fsub fast float %2324, %1724
  %2566 = fmul fast float %2505, %2565
  %2567 = fadd fast float %2566, %1724
  br label %2568

; <label>:2568                                    ; preds = %2556, %2554, %2522, %2507, %2485, %2023, %1727, %1714
  %2569 = phi float [ %1715, %2485 ], [ %1715, %2023 ], [ %1715, %1714 ], [ %2559, %2556 ], [ %1715, %2554 ], [ %2525, %2522 ], [ %2512, %2507 ], [ %1715, %1727 ]
  %2570 = phi float [ %1716, %2485 ], [ %1716, %2023 ], [ %1716, %1714 ], [ %2560, %2556 ], [ %1716, %2554 ], [ %2526, %2522 ], [ %2513, %2507 ], [ %1716, %1727 ]
  %2571 = phi float [ %2486, %2485 ], [ %1717, %2023 ], [ %1717, %1714 ], [ %2486, %2556 ], [ %2486, %2554 ], [ %2486, %2522 ], [ %2486, %2507 ], [ %1717, %1727 ]
  %2572 = phi float [ %2487, %2485 ], [ %1718, %2023 ], [ %1718, %1714 ], [ %2487, %2556 ], [ %2487, %2554 ], [ %2487, %2522 ], [ %2487, %2507 ], [ %1718, %1727 ]
  %2573 = phi float [ %2488, %2485 ], [ %1719, %2023 ], [ %1719, %1714 ], [ %2488, %2556 ], [ %2488, %2554 ], [ %2488, %2522 ], [ %2488, %2507 ], [ %1719, %1727 ]
  %2574 = phi float [ %2489, %2485 ], [ %1720, %2023 ], [ %1720, %1714 ], [ %2489, %2556 ], [ %2489, %2554 ], [ %2489, %2522 ], [ %2489, %2507 ], [ %1720, %1727 ]
  %2575 = phi float [ %2490, %2485 ], [ %1721, %2023 ], [ %1721, %1714 ], [ %2490, %2556 ], [ %2490, %2554 ], [ %2490, %2522 ], [ %2490, %2507 ], [ %1721, %1727 ]
  %2576 = phi float [ %2491, %2485 ], [ %1722, %2023 ], [ %1722, %1714 ], [ %2491, %2556 ], [ %2491, %2554 ], [ %2491, %2522 ], [ %2491, %2507 ], [ %1722, %1727 ]
  %2577 = phi float [ %2492, %2485 ], [ %1723, %2023 ], [ %1723, %1714 ], [ %2492, %2556 ], [ %2492, %2554 ], [ %2492, %2522 ], [ %2492, %2507 ], [ %1723, %1727 ]
  %2578 = phi float [ %1724, %2485 ], [ %1724, %2023 ], [ %1724, %1714 ], [ %2567, %2556 ], [ %1724, %2554 ], [ %2553, %2522 ], [ %2519, %2507 ], [ %1724, %1727 ]
  %2579 = phi float [ %1725, %2485 ], [ %1725, %2023 ], [ %1725, %1714 ], [ %2564, %2556 ], [ %1725, %2554 ], [ %2530, %2522 ], [ %2516, %2507 ], [ %1725, %1727 ]
  %2580 = phi float [ %2493, %2485 ], [ %1726, %2023 ], [ %1726, %1714 ], [ %2493, %2556 ], [ %2493, %2554 ], [ %2493, %2522 ], [ %2493, %2507 ], [ %1726, %1727 ]
  br i1 %341, label %3422, label %2581

; <label>:2581                                    ; preds = %2568
  %2582 = icmp ult i32 %392, 4
  %2583 = add i32 %35, 72
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = add i32 %35, 76
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = or i32 %2588, %2585
  %2590 = icmp eq i32 %2589, 0
  br i1 %2590, label %3422, label %2591

; <label>:2591                                    ; preds = %2581
  %2592 = and i32 %2585, 262144
  %2593 = icmp ne i32 %2592, 0
  %2594 = select i1 %2593, float %38, float 1.000000e+00
  %2595 = select i1 %2593, float %39, float 0.000000e+00
  %2596 = select i1 %2593, float %40, float 0.000000e+00
  %2597 = select i1 %2593, float %41, float 1.000000e+00
  %2598 = select i1 %2593, float %42, float %51
  %2599 = select i1 %2593, float %43, float %52
  %2600 = add i32 %35, 332
  %2601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %2602 = extractvalue %dx.types.ResRet.i32 %2601, 0
  %2603 = lshr i32 %2602, 16
  %2604 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2603)  ; LegacyF16ToF32(value)
  %2605 = fmul fast float %2604, 0x3F50624DE0000000
  %2606 = add i32 %35, 136
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2606, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = lshr i32 %2608, 16
  %2610 = and i32 %2609, 255
  %2611 = lshr i32 %2608, 24
  %2612 = add i32 %35, 340
  %2613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2612, i32 undef)  ; BufferLoad(srv,index,wot)
  %2614 = extractvalue %dx.types.ResRet.i32 %2613, 0
  %2615 = and i32 %2614, 65535
  %2616 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2615)  ; LegacyF16ToF32(value)
  %2617 = lshr i32 %2614, 16
  %2618 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2617)  ; LegacyF16ToF32(value)
  %2619 = add i32 %35, 80
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = lshr i32 %2621, 22
  %2623 = shl nuw nsw i32 %2622, 5
  %2624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2623)  ; LegacyF16ToF32(value)
  %2625 = shl i32 %2621, 4
  %2626 = and i32 %2625, 32752
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = lshr i32 %2621, 7
  %2629 = and i32 %2628, 32752
  %2630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2629)  ; LegacyF16ToF32(value)
  %2631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2632 = extractvalue %dx.types.CBufRet.f32 %2631, 3
  %2633 = fmul fast float %2632, 1.000000e+03
  %2634 = fmul fast float %331, %2633
  %2635 = call float @dx.op.unary.f32(i32 22, float %2634)  ; Frc(value)
  %2636 = fadd fast float %2635, %321
  %2637 = fmul fast float %332, %2633
  %2638 = call float @dx.op.unary.f32(i32 22, float %2637)  ; Frc(value)
  %2639 = fadd fast float %2638, %323
  %2640 = fmul fast float %2605, %2633
  %2641 = call float @dx.op.unary.f32(i32 22, float %2640)  ; Frc(value)
  %2642 = fmul fast float %2641, 0x401921FB60000000
  %2643 = fadd fast float %2642, %2624
  %2644 = call float @dx.op.unary.f32(i32 13, float %2643)  ; Sin(value)
  %2645 = call float @dx.op.unary.f32(i32 12, float %2643)  ; Cos(value)
  %2646 = fsub fast float -0.000000e+00, %2644
  %2647 = fadd fast float %2598, -5.000000e-01
  %2648 = fadd fast float %2599, -5.000000e-01
  %2649 = fmul fast float %2616, %2647
  %2650 = fmul fast float %2618, %2648
  %2651 = fadd fast float %2649, 5.000000e-01
  %2652 = fadd fast float %2650, 5.000000e-01
  %2653 = fmul fast float %2627, %2651
  %2654 = fmul fast float %2630, %2652
  %2655 = fmul fast float %2645, %2653
  %2656 = call float @dx.op.tertiary.f32(i32 46, float %2646, float %2654, float %2655)  ; FMad(a,b,c)
  %2657 = fmul fast float %2644, %2653
  %2658 = call float @dx.op.tertiary.f32(i32 46, float %2645, float %2654, float %2657)  ; FMad(a,b,c)
  %2659 = fadd fast float %2636, %2656
  %2660 = fadd fast float %2639, %2658
  %2661 = icmp ugt i32 %2610, 1
  %2662 = icmp ugt i32 %2608, 33554431
  %2663 = or i1 %2662, %2661
  br i1 %2663, label %2664, label %2689

; <label>:2664                                    ; preds = %2591
  %2665 = add i32 %35, 276
  %2666 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2665, i32 undef)  ; BufferLoad(srv,index,wot)
  %2667 = extractvalue %dx.types.ResRet.i32 %2666, 0
  %2668 = lshr i32 %2667, 16
  %2669 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2668)  ; LegacyF16ToF32(value)
  %2670 = fmul fast float %2632, %2669
  %2671 = call float @dx.op.unary.f32(i32 22, float %2670)  ; Frc(value)
  %2672 = mul nuw nsw i32 %2610, %2611
  %2673 = uitofp i32 %2672 to float
  %2674 = fmul fast float %2671, %2673
  %2675 = call float @dx.op.unary.f32(i32 27, float %2674)  ; Round_ni(value)
  %2676 = fptoui float %2675 to i32
  %2677 = urem i32 %2676, %2610
  %2678 = udiv i32 %2676, %2611
  %2679 = call float @dx.op.unary.f32(i32 22, float %2659)  ; Frc(value)
  %2680 = call float @dx.op.unary.f32(i32 22, float %2660)  ; Frc(value)
  %2681 = uitofp i32 %2677 to float
  %2682 = uitofp i32 %2678 to float
  %2683 = fadd fast float %2679, %2681
  %2684 = fadd fast float %2680, %2682
  %2685 = uitofp i32 %2610 to float
  %2686 = uitofp i32 %2611 to float
  %2687 = fdiv fast float %2683, %2685
  %2688 = fdiv fast float %2684, %2686
  br label %2689

; <label>:2689                                    ; preds = %2664, %2591
  %2690 = phi float [ %2687, %2664 ], [ %2659, %2591 ]
  %2691 = phi float [ %2688, %2664 ], [ %2660, %2591 ]
  %2692 = and i32 %2585, 16777216
  %2693 = icmp eq i32 %2692, 0
  br i1 %2693, label %2803, label %2694

; <label>:2694                                    ; preds = %2689
  %2695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2696 = extractvalue %dx.types.CBufRet.f32 %2695, 0
  %2697 = extractvalue %dx.types.CBufRet.f32 %2695, 1
  %2698 = extractvalue %dx.types.CBufRet.f32 %2695, 2
  %2699 = fadd fast float %2696, %122
  %2700 = fadd fast float %2697, %123
  %2701 = fadd fast float %2698, %124
  %2702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2703 = extractvalue %dx.types.CBufRet.f32 %2702, 0
  %2704 = call float @dx.op.unary.f32(i32 7, float %2703)  ; Saturate(value)
  %2705 = icmp eq i32 %36, 65535
  br i1 %2705, label %2800, label %2706

; <label>:2706                                    ; preds = %2694
  %2707 = lshr i32 %36, 1
  %2708 = shl i32 %2707, 2
  %2709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2708, i32 undef)  ; BufferLoad(srv,index,wot)
  %2710 = extractvalue %dx.types.ResRet.i32 %2709, 0
  %2711 = and i32 %36, 1
  %2712 = icmp ne i32 %2711, 0
  %2713 = lshr i32 %2710, 16
  %2714 = and i32 %2710, 65535
  %2715 = select i1 %2712, i32 %2713, i32 %2714
  %2716 = icmp eq i32 %2715, 65535
  br i1 %2716, label %2796, label %2717

; <label>:2717                                    ; preds = %2706
  %2718 = mul nuw nsw i32 %2715, 40
  %2719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2718, i32 undef)  ; BufferLoad(srv,index,wot)
  %2720 = extractvalue %dx.types.ResRet.f32 %2719, 0
  %2721 = extractvalue %dx.types.ResRet.f32 %2719, 1
  %2722 = extractvalue %dx.types.ResRet.f32 %2719, 2
  %2723 = add nuw nsw i32 %2718, 12
  %2724 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2723, i32 undef)  ; BufferLoad(srv,index,wot)
  %2725 = extractvalue %dx.types.ResRet.f32 %2724, 0
  %2726 = extractvalue %dx.types.ResRet.f32 %2724, 1
  %2727 = extractvalue %dx.types.ResRet.f32 %2724, 2
  %2728 = add nuw nsw i32 %2718, 24
  %2729 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.f32 %2729, 0
  %2731 = extractvalue %dx.types.ResRet.f32 %2729, 1
  %2732 = extractvalue %dx.types.ResRet.f32 %2729, 2
  %2733 = add nuw nsw i32 %2718, 36
  %2734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.f32 %2734, 0
  %2736 = fsub fast float %2699, %2720
  %2737 = fsub fast float %2700, %2721
  %2738 = fsub fast float %2701, %2722
  %2739 = fmul fast float %2735, %2736
  %2740 = fmul fast float %2735, %2737
  %2741 = fmul fast float %2735, %2738
  %2742 = call float @dx.op.unary.f32(i32 27, float %2739)  ; Round_ni(value)
  %2743 = call float @dx.op.unary.f32(i32 27, float %2740)  ; Round_ni(value)
  %2744 = call float @dx.op.unary.f32(i32 27, float %2741)  ; Round_ni(value)
  %2745 = fadd fast float %2742, 5.000000e-01
  %2746 = fadd fast float %2743, 5.000000e-01
  %2747 = fadd fast float %2744, 5.000000e-01
  %2748 = fmul fast float %2745, %2725
  %2749 = fmul fast float %2746, %2726
  %2750 = fmul fast float %2747, %2727
  %2751 = shl i32 %36, 2
  %2752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.i32 %2752, 0
  %2754 = add i32 %2753, 0
  %2755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2754, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2756 = call float @dx.op.unary.f32(i32 22, float %2748)  ; Frc(value)
  %2757 = call float @dx.op.unary.f32(i32 22, float %2749)  ; Frc(value)
  %2758 = call float @dx.op.unary.f32(i32 22, float %2750)  ; Frc(value)
  %2759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2755, %dx.types.Handle %30, float %2756, float %2757, float %2758, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2760 = extractvalue %dx.types.ResRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.ResRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.ResRet.f32 %2759, 2
  %2763 = fmul fast float %2760, 1.023000e+03
  %2764 = fmul fast float %2761, 1.023000e+03
  %2765 = fmul fast float %2762, 1.023000e+03
  %2766 = fadd fast float %2763, 5.000000e-01
  %2767 = fadd fast float %2764, 5.000000e-01
  %2768 = fadd fast float %2765, 5.000000e-01
  %2769 = call float @dx.op.unary.f32(i32 27, float %2766)  ; Round_ni(value)
  %2770 = call float @dx.op.unary.f32(i32 27, float %2767)  ; Round_ni(value)
  %2771 = call float @dx.op.unary.f32(i32 27, float %2768)  ; Round_ni(value)
  %2772 = fsub fast float %2739, %2742
  %2773 = fsub fast float %2740, %2743
  %2774 = fsub fast float %2741, %2744
  %2775 = fmul fast float %2772, 7.500000e-01
  %2776 = fmul fast float %2773, 7.500000e-01
  %2777 = fmul fast float %2774, 7.500000e-01
  %2778 = fadd fast float %2742, 1.250000e-01
  %2779 = fadd fast float %2778, %2775
  %2780 = fadd fast float %2779, %2769
  %2781 = fadd fast float %2743, 1.250000e-01
  %2782 = fadd fast float %2781, %2776
  %2783 = fadd fast float %2782, %2770
  %2784 = fadd fast float %2744, 1.250000e-01
  %2785 = fadd fast float %2784, %2777
  %2786 = fadd fast float %2785, %2771
  %2787 = fmul fast float %2780, %2730
  %2788 = fmul fast float %2783, %2731
  %2789 = fmul fast float %2786, %2732
  %2790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2791 = extractvalue %dx.types.ResRet.i32 %2790, 0
  %2792 = add i32 %2791, 0
  %2793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2792, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2794 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2793, %dx.types.Handle %28, float %2787, float %2788, float %2789, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2795 = extractvalue %dx.types.ResRet.f32 %2794, 0
  br label %2796

; <label>:2796                                    ; preds = %2717, %2706
  %2797 = phi float [ %2795, %2717 ], [ -1.000000e+00, %2706 ]
  %2798 = fadd fast float %2797, %2704
  %2799 = call float @dx.op.unary.f32(i32 7, float %2798)  ; Saturate(value)
  br label %2800

; <label>:2800                                    ; preds = %2796, %2694
  %2801 = phi float [ %2799, %2796 ], [ %2704, %2694 ]
  %2802 = fmul fast float %2801, %387
  br label %2803

; <label>:2803                                    ; preds = %2800, %2689
  %2804 = phi float [ %2802, %2800 ], [ %387, %2689 ]
  %2805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2806 = extractvalue %dx.types.ResRet.i32 %2805, 0
  %2807 = and i32 %2806, 256
  %2808 = icmp eq i32 %2807, 0
  br i1 %2808, label %2855, label %2809

; <label>:2809                                    ; preds = %2803
  %2810 = add i32 %35, 436
  %2811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2812 = extractvalue %dx.types.ResRet.i32 %2811, 0
  %2813 = add i32 %2812, 0
  %2814 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2813, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2815 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2814, %dx.types.Handle %60, float %2690, float %2691, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2816 = extractvalue %dx.types.ResRet.f32 %2815, 0
  %2817 = add i32 %35, 148
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = shl i32 %2819, 4
  %2821 = and i32 %2820, 32752
  %2822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2821)  ; LegacyF16ToF32(value)
  %2823 = lshr i32 %2819, 7
  %2824 = and i32 %2823, 32752
  %2825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2824)  ; LegacyF16ToF32(value)
  %2826 = fsub fast float 1.000000e+00, %2804
  %2827 = call float @dx.op.binary.f32(i32 35, float %2826, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2828 = bitcast float %2804 to i32
  %2829 = sitofp i32 %2828 to float
  %2830 = fadd fast float %2829, 0xC1CFBF8940000000
  %2831 = fmul fast float %2825, %2830
  %2832 = fadd fast float %2831, 0x41CFBF8940000000
  %2833 = fptosi float %2832 to i32
  %2834 = bitcast i32 %2833 to float
  %2835 = bitcast float %2827 to i32
  %2836 = sitofp i32 %2835 to float
  %2837 = fadd fast float %2836, 0xC1CFBF8940000000
  %2838 = fmul fast float %2837, %2825
  %2839 = fadd fast float %2838, 0x41CFBF8940000000
  %2840 = fptosi float %2839 to i32
  %2841 = bitcast i32 %2840 to float
  %2842 = fmul fast float %2834, %2822
  %2843 = fmul fast float %2841, %2822
  %2844 = fsub fast float %2827, %2842
  %2845 = fadd fast float %2843, %2827
  %2846 = call float @dx.op.unary.f32(i32 7, float %2844)  ; Saturate(value)
  %2847 = call float @dx.op.unary.f32(i32 7, float %2845)  ; Saturate(value)
  %2848 = fsub fast float %2816, %2846
  %2849 = fsub fast float %2847, %2846
  %2850 = bitcast float %2849 to i32
  %2851 = sub nsw i32 2129859010, %2850
  %2852 = bitcast i32 %2851 to float
  %2853 = fmul fast float %2852, %2848
  %2854 = call float @dx.op.unary.f32(i32 7, float %2853)  ; Saturate(value)
  br label %2855

; <label>:2855                                    ; preds = %2809, %2803
  %2856 = phi float [ %2854, %2809 ], [ %2804, %2803 ]
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = and i32 %2858, 128
  %2860 = icmp eq i32 %2859, 0
  br i1 %2860, label %2877, label %2861

; <label>:2861                                    ; preds = %2855
  %2862 = add i32 %35, 420
  %2863 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2862, i32 undef)  ; BufferLoad(srv,index,wot)
  %2864 = extractvalue %dx.types.ResRet.i32 %2863, 0
  %2865 = add i32 %2864, 0
  %2866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2865, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2867 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2866, %dx.types.Handle %60, float %2690, float %2691, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2868 = extractvalue %dx.types.ResRet.f32 %2867, 0
  %2869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.i32 %2869, 0
  %2871 = and i32 %2870, 524288
  %2872 = icmp ne i32 %2871, 0
  %2873 = fcmp fast ogt float %2868, 0x3FE0101020000000
  %2874 = select i1 %2873, float 1.000000e+00, float 0.000000e+00
  %2875 = select i1 %2872, float %2874, float %2868
  %2876 = fmul fast float %2875, %2856
  br label %2877

; <label>:2877                                    ; preds = %2861, %2855
  %2878 = phi float [ %2876, %2861 ], [ %2856, %2855 ]
  %2879 = fcmp fast ult float %2878, 0x3F70101020000000
  br i1 %2879, label %3422, label %2880

; <label>:2880                                    ; preds = %2877
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = and i32 %2882, 16
  %2884 = icmp eq i32 %2883, 0
  br i1 %2884, label %3083, label %2885

; <label>:2885                                    ; preds = %2880
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2606, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = add i32 %35, 372
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2888, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = add i32 %2890, 0
  %2892 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2891, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2893 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2892, %dx.types.Handle %59, float %2690, float %2691, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2894 = extractvalue %dx.types.ResRet.f32 %2893, 0
  %2895 = extractvalue %dx.types.ResRet.f32 %2893, 1
  %2896 = extractvalue %dx.types.ResRet.f32 %2893, 2
  %2897 = extractvalue %dx.types.ResRet.f32 %2893, 3
  %2898 = and i32 %2887, 255
  %2899 = uitofp i32 %2898 to float
  %2900 = lshr i32 %2887, 8
  %2901 = and i32 %2900, 255
  %2902 = uitofp i32 %2901 to float
  %2903 = fmul fast float %2897, %2899
  %2904 = fadd fast float %2903, %2902
  %2905 = fmul fast float %2904, 0x3F70101000000000
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = and i32 %2907, 512
  %2909 = icmp eq i32 %2908, 0
  br i1 %2909, label %2918, label %2910

; <label>:2910                                    ; preds = %2885
  %2911 = add i32 %35, 452
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = add i32 %2913, 0
  %2915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2916 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2915, %dx.types.Handle %60, float %2690, float %2691, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2917 = extractvalue %dx.types.ResRet.f32 %2916, 0
  br label %2918

; <label>:2918                                    ; preds = %2910, %2885
  %2919 = phi float [ %2917, %2910 ], [ 1.000000e+00, %2885 ]
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = and i32 %2921, 33554432
  %2923 = icmp eq i32 %2922, 0
  br i1 %2923, label %3030, label %2924

; <label>:2924                                    ; preds = %2918
  %2925 = add i32 %35, 272
  %2926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2925, i32 undef)  ; BufferLoad(srv,index,wot)
  %2927 = extractvalue %dx.types.ResRet.i32 %2926, 0
  %2928 = and i32 %2927, 65535
  %2929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2928)  ; LegacyF16ToF32(value)
  %2930 = lshr i32 %2927, 16
  %2931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2930)  ; LegacyF16ToF32(value)
  %2932 = add i32 %35, 276
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2932, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 65535
  %2936 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2935)  ; LegacyF16ToF32(value)
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = lshr i32 %2938, 24
  %2940 = uitofp i32 %2939 to float
  %2941 = fmul fast float %2940, 0x3F70101020000000
  %2942 = and i32 %2938, 255
  %2943 = uitofp i32 %2942 to float
  %2944 = fmul fast float %2943, 0x3F70101020000000
  %2945 = lshr i32 %2938, 8
  %2946 = and i32 %2945, 255
  %2947 = uitofp i32 %2946 to float
  %2948 = fmul fast float %2947, 0x3F70101020000000
  %2949 = lshr i32 %2938, 16
  %2950 = and i32 %2949, 255
  %2951 = uitofp i32 %2950 to float
  %2952 = fmul fast float %2951, 0x3F70101020000000
  %2953 = add i32 %35, 268
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = lshr i32 %2955, 24
  %2957 = uitofp i32 %2956 to float
  %2958 = fmul fast float %2957, 0x3F70101020000000
  %2959 = and i32 %2955, 255
  %2960 = uitofp i32 %2959 to float
  %2961 = fmul fast float %2960, 0x3F70101020000000
  %2962 = lshr i32 %2955, 8
  %2963 = and i32 %2962, 255
  %2964 = uitofp i32 %2963 to float
  %2965 = fmul fast float %2964, 0x3F70101020000000
  %2966 = lshr i32 %2955, 16
  %2967 = and i32 %2966, 255
  %2968 = uitofp i32 %2967 to float
  %2969 = fmul fast float %2968, 0x3F70101020000000
  %2970 = bitcast float %2894 to i32
  %2971 = ashr i32 %2970, 1
  %2972 = sub nsw i32 1597463174, %2971
  %2973 = bitcast i32 %2972 to float
  %2974 = fmul fast float %2894, 5.000000e-01
  %2975 = fmul fast float %2973, %2973
  %2976 = fmul fast float %2975, %2974
  %2977 = fsub fast float 1.500000e+00, %2976
  %2978 = fmul fast float %2973, %2894
  %2979 = fmul fast float %2978, %2977
  %2980 = bitcast float %2895 to i32
  %2981 = ashr i32 %2980, 1
  %2982 = sub nsw i32 1597463174, %2981
  %2983 = bitcast i32 %2982 to float
  %2984 = fmul fast float %2895, 5.000000e-01
  %2985 = fmul fast float %2983, %2983
  %2986 = fmul fast float %2985, %2984
  %2987 = fsub fast float 1.500000e+00, %2986
  %2988 = fmul fast float %2983, %2895
  %2989 = fmul fast float %2988, %2987
  %2990 = bitcast float %2896 to i32
  %2991 = ashr i32 %2990, 1
  %2992 = sub nsw i32 1597463174, %2991
  %2993 = bitcast i32 %2992 to float
  %2994 = fmul fast float %2896, 5.000000e-01
  %2995 = fmul fast float %2993, %2993
  %2996 = fmul fast float %2995, %2994
  %2997 = fsub fast float 1.500000e+00, %2996
  %2998 = fmul fast float %2993, %2896
  %2999 = fmul fast float %2998, %2997
  %3000 = fsub fast float %2979, %2961
  %3001 = fsub fast float %2989, %2965
  %3002 = fsub fast float %2999, %2969
  %3003 = fmul fast float %3000, %2929
  %3004 = fmul fast float %3001, %2931
  %3005 = fmul fast float %3002, %2936
  %3006 = fadd fast float %3003, %2944
  %3007 = fadd fast float %3004, %2948
  %3008 = fadd fast float %3005, %2952
  %3009 = call float @dx.op.unary.f32(i32 7, float %3006)  ; Saturate(value)
  %3010 = call float @dx.op.unary.f32(i32 7, float %3007)  ; Saturate(value)
  %3011 = call float @dx.op.unary.f32(i32 7, float %3008)  ; Saturate(value)
  %3012 = fmul fast float %3009, %3009
  %3013 = fmul fast float %3010, %3010
  %3014 = fmul fast float %3011, %3011
  %3015 = fsub fast float %3012, %2894
  %3016 = fsub fast float %3013, %2895
  %3017 = fsub fast float %3014, %2896
  %3018 = fmul fast float %3015, %2919
  %3019 = fmul fast float %3016, %2919
  %3020 = fmul fast float %3017, %2919
  %3021 = fadd fast float %3018, %2894
  %3022 = fadd fast float %3019, %2895
  %3023 = fadd fast float %3020, %2896
  %3024 = fadd fast float %2941, %2905
  %3025 = fsub fast float %3024, %2958
  %3026 = call float @dx.op.unary.f32(i32 7, float %3025)  ; Saturate(value)
  %3027 = fsub fast float %3026, %2905
  %3028 = fmul fast float %3027, %2919
  %3029 = fadd fast float %3028, %2905
  br label %3083

; <label>:3030                                    ; preds = %2918
  %3031 = and i32 %2921, 134217728
  %3032 = icmp eq i32 %3031, 0
  br i1 %3032, label %3067, label %3033

; <label>:3033                                    ; preds = %3030
  %3034 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %3035 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %3036 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %3037 = fadd fast float %3034, -5.000000e-01
  %3038 = fadd fast float %3035, -5.000000e-01
  %3039 = fadd fast float %3036, -5.000000e-01
  %3040 = fmul fast float %3037, %2919
  %3041 = fmul fast float %3038, %2919
  %3042 = fmul fast float %3039, %2919
  %3043 = fadd fast float %3040, 5.000000e-01
  %3044 = fadd fast float %3041, 5.000000e-01
  %3045 = fadd fast float %3042, 5.000000e-01
  %3046 = call float @dx.op.unary.f32(i32 24, float %2894)  ; Sqrt(value)
  %3047 = call float @dx.op.unary.f32(i32 24, float %2895)  ; Sqrt(value)
  %3048 = call float @dx.op.unary.f32(i32 24, float %2896)  ; Sqrt(value)
  %3049 = fmul fast float %3043, 2.000000e+00
  %3050 = fsub fast float 1.000000e+00, %3049
  %3051 = fmul fast float %3050, %3046
  %3052 = fadd fast float %3051, %3049
  %3053 = fmul fast float %3052, %3046
  %3054 = fmul fast float %3044, 2.000000e+00
  %3055 = fsub fast float 1.000000e+00, %3054
  %3056 = fmul fast float %3055, %3047
  %3057 = fadd fast float %3056, %3054
  %3058 = fmul fast float %3057, %3047
  %3059 = fmul fast float %3045, 2.000000e+00
  %3060 = fsub fast float 1.000000e+00, %3059
  %3061 = fmul fast float %3060, %3048
  %3062 = fadd fast float %3061, %3059
  %3063 = fmul fast float %3062, %3048
  %3064 = fmul fast float %3053, %3053
  %3065 = fmul fast float %3058, %3058
  %3066 = fmul fast float %3063, %3063
  br label %3083

; <label>:3067                                    ; preds = %3030
  %3068 = fmul fast float %308, %308
  %3069 = fmul fast float %312, %312
  %3070 = fmul fast float %316, %316
  %3071 = fadd fast float %3068, -1.000000e+00
  %3072 = fadd fast float %3069, -1.000000e+00
  %3073 = fadd fast float %3070, -1.000000e+00
  %3074 = fmul fast float %2919, %3071
  %3075 = fmul fast float %2919, %3072
  %3076 = fmul fast float %2919, %3073
  %3077 = fadd fast float %3074, 1.000000e+00
  %3078 = fadd fast float %3075, 1.000000e+00
  %3079 = fadd fast float %3076, 1.000000e+00
  %3080 = fmul fast float %3077, %2894
  %3081 = fmul fast float %3078, %2895
  %3082 = fmul fast float %3079, %2896
  br label %3083

; <label>:3083                                    ; preds = %3067, %3033, %2924, %2880
  %3084 = phi float [ %3029, %2924 ], [ %2905, %3033 ], [ %2905, %3067 ], [ 0x3FA23C0BE0000000, %2880 ]
  %3085 = phi float [ %3021, %2924 ], [ %3064, %3033 ], [ %3080, %3067 ], [ 1.000000e+00, %2880 ]
  %3086 = phi float [ %3022, %2924 ], [ %3065, %3033 ], [ %3081, %3067 ], [ 1.000000e+00, %2880 ]
  %3087 = phi float [ %3023, %2924 ], [ %3066, %3033 ], [ %3082, %3067 ], [ 1.000000e+00, %2880 ]
  %3088 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3089 = extractvalue %dx.types.CBufRet.i32 %3088, 1
  %3090 = and i32 %3089, 1
  %3091 = icmp ne i32 %3090, 0
  %3092 = add i32 %35, 356
  %3093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3092, i32 undef)  ; BufferLoad(srv,index,wot)
  %3094 = extractvalue %dx.types.ResRet.i32 %3093, 0
  %3095 = and i32 %3094, 32
  %3096 = icmp ne i32 %3095, 0
  %3097 = and i1 %3091, %3096
  %3098 = select i1 %3097, float 1.000000e+00, float %3085
  %3099 = select i1 %3097, float 0x3FD3333340000000, float %3086
  %3100 = select i1 %3097, float 0x3FD3333340000000, float %3087
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = and i32 %3102, 32
  %3104 = icmp eq i32 %3103, 0
  br i1 %3104, label %3177, label %3105

; <label>:3105                                    ; preds = %3083
  %3106 = add i32 %35, 140
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3106, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = add i32 %35, 388
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3109, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = add i32 %3111, 0
  %3113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3113, %dx.types.Handle %59, float %2690, float %2691, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3115 = extractvalue %dx.types.ResRet.f32 %3114, 0
  %3116 = extractvalue %dx.types.ResRet.f32 %3114, 1
  %3117 = extractvalue %dx.types.ResRet.f32 %3114, 2
  %3118 = extractvalue %dx.types.ResRet.f32 %3114, 3
  %3119 = and i32 %3108, 255
  %3120 = uitofp i32 %3119 to float
  %3121 = lshr i32 %3108, 8
  %3122 = and i32 %3121, 255
  %3123 = uitofp i32 %3122 to float
  %3124 = lshr i32 %3108, 16
  %3125 = and i32 %3124, 255
  %3126 = uitofp i32 %3125 to float
  %3127 = fmul fast float %3126, 0x3F70101000000000
  %3128 = fmul fast float %3115, %3120
  %3129 = fadd fast float %3128, %3123
  %3130 = fmul fast float %3129, 0x3F70101000000000
  %3131 = fadd fast float %3116, -5.000000e-01
  %3132 = fadd fast float %3118, -5.000000e-01
  %3133 = fmul fast float %3131, %3127
  %3134 = fmul fast float %3132, %3127
  %3135 = fadd fast float %3133, 5.000000e-01
  %3136 = fadd fast float %3134, 5.000000e-01
  %3137 = fmul fast float %3135, 2.000000e+00
  %3138 = fadd fast float %3137, -1.000000e+00
  %3139 = fmul fast float %3136, 2.000000e+00
  %3140 = fadd fast float %3139, -1.000000e+00
  %3141 = fadd fast float %3138, %3140
  %3142 = fmul fast float %3141, 5.000000e-01
  %3143 = fsub fast float %3138, %3140
  %3144 = fmul fast float %3143, 5.000000e-01
  %3145 = call float @dx.op.unary.f32(i32 6, float %3142)  ; FAbs(value)
  %3146 = fsub fast float 1.000000e+00, %3145
  %3147 = call float @dx.op.unary.f32(i32 6, float %3144)  ; FAbs(value)
  %3148 = fsub fast float %3146, %3147
  %3149 = call float @dx.op.dot3.f32(i32 55, float %3142, float %3144, float %3148, float %3142, float %3144, float %3148)  ; Dot3(ax,ay,az,bx,by,bz)
  %3150 = call float @dx.op.unary.f32(i32 25, float %3149)  ; Rsqrt(value)
  %3151 = fmul fast float %3142, %3150
  %3152 = fmul fast float %3144, %3150
  %3153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3154 = extractvalue %dx.types.ResRet.i32 %3153, 0
  %3155 = and i32 %3154, 67108864
  %3156 = icmp eq i32 %3155, 0
  br i1 %3156, label %3173, label %3157

; <label>:3157                                    ; preds = %3105
  %3158 = add i32 %35, 328
  %3159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3158, i32 undef)  ; BufferLoad(srv,index,wot)
  %3160 = extractvalue %dx.types.ResRet.i32 %3159, 0
  %3161 = and i32 %3160, 65535
  %3162 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3161)  ; LegacyF16ToF32(value)
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2600, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = and i32 %3164, 65535
  %3166 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3165)  ; LegacyF16ToF32(value)
  %3167 = lshr i32 %3160, 16
  %3168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3167)  ; LegacyF16ToF32(value)
  %3169 = fsub fast float %3130, %3168
  %3170 = fmul fast float %3169, %3162
  %3171 = fadd fast float %3170, %3166
  %3172 = call float @dx.op.unary.f32(i32 7, float %3171)  ; Saturate(value)
  br label %3173

; <label>:3173                                    ; preds = %3157, %3105
  %3174 = phi float [ %3172, %3157 ], [ %3130, %3105 ]
  %3175 = call float @dx.op.dot2.f32(i32 54, float %3151, float %3152, float %2594, float %2595)  ; Dot2(ax,ay,bx,by)
  %3176 = call float @dx.op.dot2.f32(i32 54, float %3151, float %3152, float %2596, float %2597)  ; Dot2(ax,ay,bx,by)
  br label %3177

; <label>:3177                                    ; preds = %3173, %3083
  %3178 = phi float [ %3174, %3173 ], [ 0x3FD6666660000000, %3083 ]
  %3179 = phi float [ %3175, %3173 ], [ 0.000000e+00, %3083 ]
  %3180 = phi float [ %3176, %3173 ], [ 0.000000e+00, %3083 ]
  %3181 = phi float [ %3117, %3173 ], [ 1.000000e+00, %3083 ]
  %3182 = add i32 %35, 208
  %3183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3182, i32 undef)  ; BufferLoad(srv,index,wot)
  %3184 = extractvalue %dx.types.ResRet.i32 %3183, 0
  %3185 = lshr i32 %3184, 22
  %3186 = shl nuw nsw i32 %3185, 5
  %3187 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3186)  ; LegacyF16ToF32(value)
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = and i32 %3189, 64
  %3191 = icmp eq i32 %3190, 0
  br i1 %3191, label %3225, label %3192

; <label>:3192                                    ; preds = %3177
  %3193 = add i32 %35, 404
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = add i32 %3195, 0
  %3197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3196, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 131072
  %3201 = icmp eq i32 %3200, 0
  %3202 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3197, %dx.types.Handle %59, float %2690, float %2691, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3203 = extractvalue %dx.types.ResRet.f32 %3202, 0
  %3204 = extractvalue %dx.types.ResRet.f32 %3202, 1
  %3205 = extractvalue %dx.types.ResRet.f32 %3202, 2
  %3206 = fmul fast float %3203, %296
  %3207 = fmul fast float %3204, %299
  %3208 = fmul fast float %3205, %302
  br i1 %3201, label %3215, label %3209

; <label>:3209                                    ; preds = %3192
  %3210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3211 = extractvalue %dx.types.CBufRet.f32 %3210, 0
  %3212 = fmul fast float %3211, %3206
  %3213 = fmul fast float %3211, %3207
  %3214 = fmul fast float %3211, %3208
  br label %3215

; <label>:3215                                    ; preds = %3209, %3192
  %3216 = phi float [ %3212, %3209 ], [ %3206, %3192 ]
  %3217 = phi float [ %3213, %3209 ], [ %3207, %3192 ]
  %3218 = phi float [ %3214, %3209 ], [ %3208, %3192 ]
  %3219 = fmul fast float %3216, %3187
  %3220 = select i1 %164, float %3219, float %3216
  %3221 = call float @dx.op.dot3.f32(i32 55, float %3220, float %3217, float %3218, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3222 = select i1 %164, float 0.000000e+00, float %3216
  %3223 = select i1 %164, float %3221, float %3217
  %3224 = select i1 %164, float 0.000000e+00, float %3218
  br label %3225

; <label>:3225                                    ; preds = %3215, %3177
  %3226 = phi float [ %3222, %3215 ], [ 0.000000e+00, %3177 ]
  %3227 = phi float [ %3223, %3215 ], [ 0.000000e+00, %3177 ]
  %3228 = phi float [ %3224, %3215 ], [ 0.000000e+00, %3177 ]
  %3229 = add i32 %35, 144
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = and i32 %3231, 255
  %3233 = uitofp i32 %3232 to float
  %3234 = lshr i32 %3231, 8
  %3235 = and i32 %3234, 255
  %3236 = uitofp i32 %3235 to float
  %3237 = call float @dx.op.dot3.f32(i32 55, float %3098, float %3099, float %3100, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3238 = fmul fast float %3236, %3237
  %3239 = fadd fast float %3238, %3233
  %3240 = fmul fast float %3239, 0x3F70101020000000
  %3241 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  br i1 %2582, label %3242, label %3250

; <label>:3242                                    ; preds = %3225
  %3243 = fsub fast float 1.000000e+00, %2878
  %3244 = fmul fast float %3243, %2571
  %3245 = fmul fast float %3243, %2572
  %3246 = fmul fast float %3243, %2573
  %3247 = fmul fast float %3243, %2574
  %3248 = fmul fast float %3243, %2575
  %3249 = fmul fast float %3243, %2576
  br label %3250

; <label>:3250                                    ; preds = %3242, %3225
  %3251 = phi float [ %3244, %3242 ], [ %2571, %3225 ]
  %3252 = phi float [ %3245, %3242 ], [ %2572, %3225 ]
  %3253 = phi float [ %3246, %3242 ], [ %2573, %3225 ]
  %3254 = phi float [ %3247, %3242 ], [ %2574, %3225 ]
  %3255 = phi float [ %3248, %3242 ], [ %2575, %3225 ]
  %3256 = phi float [ %3249, %3242 ], [ %2576, %3225 ]
  %3257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.i32 %3257, 0
  %3259 = and i32 %3258, 3
  %3260 = icmp eq i32 %3259, 3
  br i1 %3260, label %3339, label %3261

; <label>:3261                                    ; preds = %3250
  %3262 = and i32 %3258, 16
  %3263 = icmp ne i32 %3262, 0
  %3264 = select i1 %3263, float %2878, float 0.000000e+00
  %3265 = icmp eq i32 %3259, 0
  br i1 %3265, label %3266, label %3294

; <label>:3266                                    ; preds = %3261
  %3267 = and i32 %3258, 64
  %3268 = icmp ne i32 %3267, 0
  %3269 = select i1 %3268, float %2878, float 0.000000e+00
  %3270 = fsub fast float %3098, %3251
  %3271 = fsub fast float %3099, %3252
  %3272 = fsub fast float %3100, %3253
  %3273 = fmul fast float %3264, %3270
  %3274 = fmul fast float %3264, %3271
  %3275 = fmul fast float %3264, %3272
  %3276 = fadd fast float %3273, %3251
  %3277 = fadd fast float %3274, %3252
  %3278 = fadd fast float %3275, %3253
  %3279 = fsub fast float %3084, %2577
  %3280 = fmul fast float %3264, %3279
  %3281 = fadd fast float %3280, %2577
  %3282 = fsub fast float %3226, %3254
  %3283 = fsub fast float %3227, %3255
  %3284 = fsub fast float %3228, %3256
  %3285 = fmul fast float %3269, %3282
  %3286 = fmul fast float %3269, %3283
  %3287 = fmul fast float %3269, %3284
  %3288 = fadd fast float %3285, %3254
  %3289 = fadd fast float %3286, %3255
  %3290 = fadd fast float %3287, %3256
  %3291 = fsub fast float %3241, %2580
  %3292 = fmul fast float %3264, %3291
  %3293 = fadd fast float %3292, %2580
  br label %3339

; <label>:3294                                    ; preds = %3261
  %3295 = icmp eq i32 %3259, 1
  br i1 %3295, label %3296, label %3309

; <label>:3296                                    ; preds = %3294
  %3297 = fadd fast float %3098, -1.000000e+00
  %3298 = fadd fast float %3099, -1.000000e+00
  %3299 = fadd fast float %3100, -1.000000e+00
  %3300 = fmul fast float %3264, %3297
  %3301 = fmul fast float %3264, %3298
  %3302 = fmul fast float %3264, %3299
  %3303 = fadd fast float %3300, 1.000000e+00
  %3304 = fadd fast float %3301, 1.000000e+00
  %3305 = fadd fast float %3302, 1.000000e+00
  %3306 = fmul fast float %3303, %3251
  %3307 = fmul fast float %3304, %3252
  %3308 = fmul fast float %3305, %3253
  br label %3339

; <label>:3309                                    ; preds = %3294
  %3310 = icmp eq i32 %3259, 2
  br i1 %3310, label %3311, label %3339

; <label>:3311                                    ; preds = %3309
  %3312 = call float @dx.op.unary.f32(i32 24, float %3098)  ; Sqrt(value)
  %3313 = call float @dx.op.unary.f32(i32 24, float %3099)  ; Sqrt(value)
  %3314 = call float @dx.op.unary.f32(i32 24, float %3100)  ; Sqrt(value)
  %3315 = fadd fast float %3312, -5.000000e-01
  %3316 = fadd fast float %3313, -5.000000e-01
  %3317 = fadd fast float %3314, -5.000000e-01
  %3318 = fmul fast float %3315, %3264
  %3319 = fmul fast float %3316, %3264
  %3320 = fmul fast float %3317, %3264
  %3321 = fadd fast float %3318, 5.000000e-01
  %3322 = fadd fast float %3319, 5.000000e-01
  %3323 = fadd fast float %3320, 5.000000e-01
  %3324 = fmul fast float %3321, 2.000000e+00
  %3325 = fsub fast float 1.000000e+00, %3324
  %3326 = fmul fast float %3325, %3251
  %3327 = fadd fast float %3326, %3324
  %3328 = fmul fast float %3327, %3251
  %3329 = fmul fast float %3322, 2.000000e+00
  %3330 = fsub fast float 1.000000e+00, %3329
  %3331 = fmul fast float %3330, %3252
  %3332 = fadd fast float %3331, %3329
  %3333 = fmul fast float %3332, %3252
  %3334 = fmul fast float %3323, 2.000000e+00
  %3335 = fsub fast float 1.000000e+00, %3334
  %3336 = fmul fast float %3335, %3253
  %3337 = fadd fast float %3336, %3334
  %3338 = fmul fast float %3337, %3253
  br label %3339

; <label>:3339                                    ; preds = %3311, %3309, %3296, %3266, %3250
  %3340 = phi float [ %3251, %3250 ], [ %3328, %3311 ], [ %3251, %3309 ], [ %3306, %3296 ], [ %3276, %3266 ]
  %3341 = phi float [ %3252, %3250 ], [ %3333, %3311 ], [ %3252, %3309 ], [ %3307, %3296 ], [ %3277, %3266 ]
  %3342 = phi float [ %3253, %3250 ], [ %3338, %3311 ], [ %3253, %3309 ], [ %3308, %3296 ], [ %3278, %3266 ]
  %3343 = phi float [ %3254, %3250 ], [ %3254, %3311 ], [ %3254, %3309 ], [ %3254, %3296 ], [ %3288, %3266 ]
  %3344 = phi float [ %3255, %3250 ], [ %3255, %3311 ], [ %3255, %3309 ], [ %3255, %3296 ], [ %3289, %3266 ]
  %3345 = phi float [ %3256, %3250 ], [ %3256, %3311 ], [ %3256, %3309 ], [ %3256, %3296 ], [ %3290, %3266 ]
  %3346 = phi float [ %2577, %3250 ], [ %2577, %3311 ], [ %2577, %3309 ], [ %2577, %3296 ], [ %3281, %3266 ]
  %3347 = phi float [ %2580, %3250 ], [ %2580, %3311 ], [ %2580, %3309 ], [ %2580, %3296 ], [ %3293, %3266 ]
  %3348 = and i32 %3258, 12
  %3349 = icmp eq i32 %3348, 12
  br i1 %3349, label %3422, label %3350

; <label>:3350                                    ; preds = %3339
  %3351 = and i32 %3258, 2097184
  %3352 = icmp eq i32 %3351, 2097184
  %3353 = select i1 %3352, float %2878, float 0.000000e+00
  %3354 = and i32 %3258, 4194336
  %3355 = icmp eq i32 %3354, 4194336
  %3356 = select i1 %3355, float %2878, float 0.000000e+00
  %3357 = and i32 %3258, 8388640
  %3358 = icmp eq i32 %3357, 8388640
  %3359 = select i1 %3358, float %2878, float 0.000000e+00
  %3360 = icmp eq i32 %3348, 0
  br i1 %3360, label %3361, label %3374

; <label>:3361                                    ; preds = %3350
  %3362 = fsub fast float %3179, %2569
  %3363 = fsub fast float %3180, %2570
  %3364 = fmul fast float %3353, %3362
  %3365 = fmul fast float %3353, %3363
  %3366 = fadd fast float %3364, %2569
  %3367 = fadd fast float %3365, %2570
  %3368 = fsub fast float %3181, %2579
  %3369 = fmul fast float %3356, %3368
  %3370 = fadd fast float %3369, %2579
  %3371 = fsub fast float %3178, %2578
  %3372 = fmul fast float %3359, %3371
  %3373 = fadd fast float %3372, %2578
  br label %3422

; <label>:3374                                    ; preds = %3350
  %3375 = icmp eq i32 %3348, 4
  br i1 %3375, label %3376, label %3408

; <label>:3376                                    ; preds = %3374
  %3377 = fmul fast float %3353, %3179
  %3378 = fmul fast float %3353, %3180
  %3379 = fadd fast float %3377, %2569
  %3380 = fadd fast float %3378, %2570
  %3381 = call float @dx.op.binary.f32(i32 36, float %2579, float %3181)  ; FMin(a,b)
  %3382 = fsub fast float %3381, %2579
  %3383 = fmul fast float %3382, %3356
  %3384 = fadd fast float %3383, %2579
  %3385 = fadd fast float %3178, %2578
  %3386 = fmul fast float %3385, 0x3FF337FAE0000000
  %3387 = fmul fast float %2578, %2578
  %3388 = fmul fast float %3178, %3178
  %3389 = fadd fast float %3388, %3387
  %3390 = fmul fast float %3389, 0x3FE5152B00000000
  %3391 = fmul fast float %2578, 0xBFCC1F85E0000000
  %3392 = fmul fast float %3391, %3178
  %3393 = fadd fast float %3392, 0xBFE1363700000000
  %3394 = fadd fast float %3393, %3386
  %3395 = fsub fast float %3394, %3390
  %3396 = fmul fast float %3385, 0x3FBA6F0D00000000
  %3397 = fmul fast float %3389, 0x3FD0432880000000
  %3398 = fmul fast float %2578, 0xBFEF110800000000
  %3399 = fmul fast float %3398, %3178
  %3400 = fadd fast float %3399, 1.000000e+00
  %3401 = fsub fast float %3400, %3396
  %3402 = fadd fast float %3401, %3397
  %3403 = fdiv fast float %3395, %3402
  %3404 = call float @dx.op.unary.f32(i32 7, float %3403)  ; Saturate(value)
  %3405 = fsub fast float %3404, %2578
  %3406 = fmul fast float %3405, %3359
  %3407 = fadd fast float %3406, %2578
  br label %3422

; <label>:3408                                    ; preds = %3374
  %3409 = icmp eq i32 %3348, 8
  br i1 %3409, label %3410, label %3422

; <label>:3410                                    ; preds = %3408
  %3411 = fmul fast float %3353, %3179
  %3412 = fmul fast float %3353, %3180
  %3413 = fadd fast float %3411, %2569
  %3414 = fadd fast float %3412, %2570
  %3415 = call float @dx.op.binary.f32(i32 36, float %2579, float %3181)  ; FMin(a,b)
  %3416 = fsub fast float %3415, %2579
  %3417 = fmul fast float %3416, %3356
  %3418 = fadd fast float %3417, %2579
  %3419 = fsub fast float %3178, %2578
  %3420 = fmul fast float %3359, %3419
  %3421 = fadd fast float %3420, %2578
  br label %3422

; <label>:3422                                    ; preds = %3410, %3408, %3376, %3361, %3339, %2877, %2581, %2568
  %3423 = phi float [ %2569, %3339 ], [ %2569, %2877 ], [ %2569, %2568 ], [ %2569, %2581 ], [ %3366, %3361 ], [ %3379, %3376 ], [ %2569, %3408 ], [ %3413, %3410 ]
  %3424 = phi float [ %2570, %3339 ], [ %2570, %2877 ], [ %2570, %2568 ], [ %2570, %2581 ], [ %3367, %3361 ], [ %3380, %3376 ], [ %2570, %3408 ], [ %3414, %3410 ]
  %3425 = phi float [ %3340, %3339 ], [ %2571, %2877 ], [ %2571, %2568 ], [ %2571, %2581 ], [ %3340, %3361 ], [ %3340, %3376 ], [ %3340, %3408 ], [ %3340, %3410 ]
  %3426 = phi float [ %3341, %3339 ], [ %2572, %2877 ], [ %2572, %2568 ], [ %2572, %2581 ], [ %3341, %3361 ], [ %3341, %3376 ], [ %3341, %3408 ], [ %3341, %3410 ]
  %3427 = phi float [ %3342, %3339 ], [ %2573, %2877 ], [ %2573, %2568 ], [ %2573, %2581 ], [ %3342, %3361 ], [ %3342, %3376 ], [ %3342, %3408 ], [ %3342, %3410 ]
  %3428 = phi float [ %3343, %3339 ], [ %2574, %2877 ], [ %2574, %2568 ], [ %2574, %2581 ], [ %3343, %3361 ], [ %3343, %3376 ], [ %3343, %3408 ], [ %3343, %3410 ]
  %3429 = phi float [ %3344, %3339 ], [ %2575, %2877 ], [ %2575, %2568 ], [ %2575, %2581 ], [ %3344, %3361 ], [ %3344, %3376 ], [ %3344, %3408 ], [ %3344, %3410 ]
  %3430 = phi float [ %3345, %3339 ], [ %2576, %2877 ], [ %2576, %2568 ], [ %2576, %2581 ], [ %3345, %3361 ], [ %3345, %3376 ], [ %3345, %3408 ], [ %3345, %3410 ]
  %3431 = phi float [ %3346, %3339 ], [ %2577, %2877 ], [ %2577, %2568 ], [ %2577, %2581 ], [ %3346, %3361 ], [ %3346, %3376 ], [ %3346, %3408 ], [ %3346, %3410 ]
  %3432 = phi float [ %2578, %3339 ], [ %2578, %2877 ], [ %2578, %2568 ], [ %2578, %2581 ], [ %3373, %3361 ], [ %3407, %3376 ], [ %2578, %3408 ], [ %3421, %3410 ]
  %3433 = phi float [ %2579, %3339 ], [ %2579, %2877 ], [ %2579, %2568 ], [ %2579, %2581 ], [ %3370, %3361 ], [ %3384, %3376 ], [ %2579, %3408 ], [ %3418, %3410 ]
  %3434 = phi float [ %3347, %3339 ], [ %2580, %2877 ], [ %2580, %2568 ], [ %2580, %2581 ], [ %3347, %3361 ], [ %3347, %3376 ], [ %3347, %3408 ], [ %3347, %3410 ]
  %3435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3436 = extractvalue %dx.types.CBufRet.f32 %3435, 0
  %3437 = call float @dx.op.dot2.f32(i32 54, float %3423, float %3424, float %3423, float %3424)  ; Dot2(ax,ay,bx,by)
  %3438 = fmul fast float %3437, 0x3FE3333340000000
  %3439 = fsub fast float 1.000000e+00, %3438
  %3440 = call float @dx.op.dot3.f32(i32 55, float %3423, float %3424, float %3439, float %3423, float %3424, float %3439)  ; Dot3(ax,ay,az,bx,by,bz)
  %3441 = call float @dx.op.unary.f32(i32 25, float %3440)  ; Rsqrt(value)
  %3442 = fmul fast float %3441, %3423
  %3443 = fmul fast float %3441, %3424
  %3444 = fmul fast float %3439, %3441
  %3445 = fmul fast float %3444, %72
  %3446 = fmul fast float %3444, %74
  %3447 = fmul fast float %3444, %76
  %3448 = fmul fast float %3442, %44
  %3449 = fmul fast float %3442, %45
  %3450 = fmul fast float %3442, %46
  %3451 = fadd fast float %3445, %3448
  %3452 = fadd fast float %3446, %3449
  %3453 = fadd fast float %3447, %3450
  %3454 = fmul fast float %86, %3443
  %3455 = fmul fast float %87, %3443
  %3456 = fmul fast float %88, %3443
  %3457 = fadd fast float %3451, %3454
  %3458 = fadd fast float %3452, %3455
  %3459 = fadd fast float %3453, %3456
  %3460 = call float @dx.op.dot3.f32(i32 55, float %3457, float %3458, float %3459, float %3457, float %3458, float %3459)  ; Dot3(ax,ay,az,bx,by,bz)
  %3461 = call float @dx.op.unary.f32(i32 25, float %3460)  ; Rsqrt(value)
  %3462 = fmul fast float %3457, %3461
  %3463 = fmul fast float %3458, %3461
  %3464 = fmul fast float %3459, %3461
  %3465 = and i32 %37, 1
  %3466 = icmp eq i32 %3465, 0
  br i1 %3466, label %3467, label %3975

; <label>:3467                                    ; preds = %3422
  %3468 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %3469 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %3470 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %3471 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %3472 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %3473 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %3474 = fadd fast float %3468, %122
  %3475 = fadd fast float %3469, %123
  %3476 = fadd fast float %3470, %124
  %3477 = fadd fast float %3471, %122
  %3478 = fadd fast float %3472, %123
  %3479 = fadd fast float %3473, %124
  %3480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3481 = extractvalue %dx.types.CBufRet.f32 %3480, 0
  %3482 = extractvalue %dx.types.CBufRet.f32 %3480, 1
  %3483 = extractvalue %dx.types.CBufRet.f32 %3480, 2
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 2
  %3486 = extractvalue %dx.types.CBufRet.f32 %3484, 3
  %3487 = fmul fast float %3481, %63
  %3488 = fmul fast float %3487, %3485
  %3489 = fmul fast float %3482, %64
  %3490 = fmul fast float %3489, %3486
  %3491 = fptoui float %3488 to i32
  %3492 = fptoui float %3490 to i32
  %3493 = fadd fast float %3481, -1.000000e+00
  %3494 = fadd fast float %3482, -1.000000e+00
  %3495 = fptoui float %3493 to i32
  %3496 = fptoui float %3494 to i32
  %3497 = call i32 @dx.op.binary.i32(i32 40, i32 %3491, i32 %3495)  ; UMin(a,b)
  %3498 = call i32 @dx.op.binary.i32(i32 40, i32 %3492, i32 %3496)  ; UMin(a,b)
  %3499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3500 = extractvalue %dx.types.CBufRet.f32 %3499, 2
  %3501 = extractvalue %dx.types.CBufRet.f32 %3499, 3
  %3502 = fmul fast float %3500, %58
  %3503 = fsub fast float %3502, %3501
  %3504 = fadd fast float %3483, -1.000000e+00
  %3505 = call float @dx.op.binary.f32(i32 36, float %3503, float %3504)  ; FMin(a,b)
  %3506 = fptoui float %3505 to i32
  %3507 = fptoui float %3481 to i32
  %3508 = fptoui float %3482 to i32
  %3509 = mul i32 %3506, %3508
  %3510 = add i32 %3509, %3498
  %3511 = mul i32 %3510, %3507
  %3512 = add i32 %3511, %3497
  %3513 = shl i32 %3512, 2
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = and i32 %3515, 1023
  %3517 = lshr i32 %3515, 10
  %3518 = icmp eq i32 %3516, 0
  br i1 %3518, label %3944, label %3519

; <label>:3519                                    ; preds = %3467
  %3520 = and i32 %3515, 1023
  br label %3521

; <label>:3521                                    ; preds = %3647, %3519
  %3522 = phi i32 [ %3597, %3647 ], [ 0, %3519 ]
  %3523 = phi float [ %3648, %3647 ], [ 0.000000e+00, %3519 ]
  %3524 = phi float [ %3649, %3647 ], [ %3436, %3519 ]
  %3525 = phi float [ %3650, %3647 ], [ %3434, %3519 ]
  %3526 = phi float [ %3651, %3647 ], [ 0.000000e+00, %3519 ]
  %3527 = phi float [ %3652, %3647 ], [ 0.000000e+00, %3519 ]
  %3528 = phi float [ %3653, %3647 ], [ %3428, %3519 ]
  %3529 = phi float [ %3654, %3647 ], [ %3429, %3519 ]
  %3530 = phi float [ %3655, %3647 ], [ %3430, %3519 ]
  %3531 = phi float [ %3656, %3647 ], [ %3462, %3519 ]
  %3532 = phi float [ %3657, %3647 ], [ %3463, %3519 ]
  %3533 = phi float [ %3658, %3647 ], [ %3464, %3519 ]
  %3534 = phi float [ %3659, %3647 ], [ %3433, %3519 ]
  %3535 = phi float [ %3660, %3647 ], [ %3432, %3519 ]
  %3536 = phi float [ %3661, %3647 ], [ 0.000000e+00, %3519 ]
  %3537 = phi float [ %3662, %3647 ], [ %3431, %3519 ]
  %3538 = phi float [ %3663, %3647 ], [ %3425, %3519 ]
  %3539 = phi float [ %3664, %3647 ], [ %3426, %3519 ]
  %3540 = phi float [ %3665, %3647 ], [ %3427, %3519 ]
  %3541 = add nuw nsw i32 %3522, %3517
  %3542 = shl i32 %3541, 2
  %3543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3542, i32 undef)  ; BufferLoad(srv,index,wot)
  %3544 = extractvalue %dx.types.ResRet.i32 %3543, 0
  %3545 = shl i32 %3544, 8
  %3546 = or i32 %3545, 48
  %3547 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3546, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.f32 %3547, 0
  %3549 = extractvalue %dx.types.ResRet.f32 %3547, 1
  %3550 = extractvalue %dx.types.ResRet.f32 %3547, 2
  %3551 = extractvalue %dx.types.ResRet.f32 %3547, 3
  %3552 = or i32 %3545, 64
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = extractvalue %dx.types.ResRet.i32 %3553, 1
  %3556 = or i32 %3545, 80
  %3557 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.f32 %3557, 2
  %3559 = extractvalue %dx.types.ResRet.f32 %3557, 3
  %3560 = or i32 %3545, 96
  %3561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3560, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.f32 %3561, 0
  %3563 = extractvalue %dx.types.ResRet.f32 %3561, 1
  %3564 = extractvalue %dx.types.ResRet.f32 %3561, 2
  %3565 = extractvalue %dx.types.ResRet.f32 %3561, 3
  %3566 = or i32 %3545, 112
  %3567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.f32 %3567, 2
  %3569 = or i32 %3545, 128
  %3570 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3571 = extractvalue %dx.types.ResRet.f32 %3570, 0
  %3572 = extractvalue %dx.types.ResRet.f32 %3570, 1
  %3573 = extractvalue %dx.types.ResRet.f32 %3570, 2
  %3574 = extractvalue %dx.types.ResRet.f32 %3570, 3
  %3575 = or i32 %3545, 144
  %3576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = extractvalue %dx.types.ResRet.f32 %3576, 1
  %3579 = extractvalue %dx.types.ResRet.f32 %3576, 2
  %3580 = extractvalue %dx.types.ResRet.f32 %3576, 3
  %3581 = or i32 %3545, 160
  %3582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3581, i32 undef)  ; BufferLoad(srv,index,wot)
  %3583 = extractvalue %dx.types.ResRet.f32 %3582, 0
  %3584 = extractvalue %dx.types.ResRet.f32 %3582, 1
  %3585 = extractvalue %dx.types.ResRet.f32 %3582, 2
  %3586 = extractvalue %dx.types.ResRet.f32 %3582, 3
  %3587 = or i32 %3545, 192
  %3588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3587, i32 undef)  ; BufferLoad(srv,index,wot)
  %3589 = extractvalue %dx.types.ResRet.i32 %3588, 0
  %3590 = or i32 %3545, 208
  %3591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3593 = or i32 %3545, 248
  %3594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3597 = add nuw nsw i32 %3522, 1
  %3598 = bitcast float %3551 to i32
  %3599 = and i32 %3598, 512
  %3600 = icmp eq i32 %3599, 0
  %3601 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3602 = extractvalue %dx.types.ResRet.f32 %3601, 0
  %3603 = extractvalue %dx.types.ResRet.f32 %3601, 1
  %3604 = extractvalue %dx.types.ResRet.f32 %3601, 2
  %3605 = extractvalue %dx.types.ResRet.f32 %3601, 3
  %3606 = call float @dx.op.dot4.f32(i32 56, float %3602, float %3603, float %3604, float %3605, float %122, float %123, float %124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3607 = or i32 %3545, 16
  %3608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = extractvalue %dx.types.ResRet.f32 %3608, 3
  %3613 = call float @dx.op.dot4.f32(i32 56, float %3609, float %3610, float %3611, float %3612, float %122, float %123, float %124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3614 = or i32 %3545, 32
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = extractvalue %dx.types.ResRet.f32 %3615, 1
  %3618 = extractvalue %dx.types.ResRet.f32 %3615, 2
  %3619 = extractvalue %dx.types.ResRet.f32 %3615, 3
  %3620 = call float @dx.op.dot4.f32(i32 56, float %3616, float %3617, float %3618, float %3619, float %122, float %123, float %124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3621 = call float @dx.op.unary.f32(i32 27, float %3606)  ; Round_ni(value)
  %3622 = call float @dx.op.unary.f32(i32 6, float %3621)  ; FAbs(value)
  %3623 = call float @dx.op.unary.f32(i32 27, float %3613)  ; Round_ni(value)
  %3624 = call float @dx.op.unary.f32(i32 6, float %3623)  ; FAbs(value)
  %3625 = call float @dx.op.unary.f32(i32 6, float %3620)  ; FAbs(value)
  %3626 = call float @dx.op.unary.f32(i32 27, float %3625)  ; Round_ni(value)
  %3627 = fadd fast float %3624, %3622
  %3628 = fadd fast float %3627, %3626
  %3629 = fcmp fast oeq float %3628, 0.000000e+00
  %3630 = call float @dx.op.dot4.f32(i32 56, float %3602, float %3603, float %3604, float %3605, float %3474, float %3475, float %3476, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3631 = call float @dx.op.dot4.f32(i32 56, float %3609, float %3610, float %3611, float %3612, float %3474, float %3475, float %3476, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3632 = call float @dx.op.dot4.f32(i32 56, float %3602, float %3603, float %3604, float %3605, float %3477, float %3478, float %3479, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3633 = call float @dx.op.dot4.f32(i32 56, float %3609, float %3610, float %3611, float %3612, float %3477, float %3478, float %3479, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3634 = fsub fast float %3630, %3606
  %3635 = fsub fast float %3632, %3606
  %3636 = fsub fast float %3631, %3613
  %3637 = fsub fast float %3633, %3613
  %3638 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3550, float %72, float %74, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %3639 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3640 = extractvalue %dx.types.CBufRet.f32 %3639, 2
  %3641 = fadd fast float %3640, %3638
  %3642 = call float @dx.op.unary.f32(i32 7, float %3641)  ; Saturate(value)
  %3643 = extractvalue %dx.types.CBufRet.f32 %3639, 0
  %3644 = fcmp fast ogt float %3642, %3643
  %3645 = and i1 %3629, %3644
  %3646 = and i1 %3600, %3645
  br i1 %3646, label %3667, label %3647

; <label>:3647                                    ; preds = %3930, %3748, %3667, %3521
  %3648 = phi float [ %3523, %3667 ], [ %3751, %3748 ], [ %3751, %3930 ], [ %3523, %3521 ]
  %3649 = phi float [ %3524, %3667 ], [ %3524, %3748 ], [ %3905, %3930 ], [ %3524, %3521 ]
  %3650 = phi float [ %3525, %3667 ], [ %3525, %3748 ], [ %3903, %3930 ], [ %3525, %3521 ]
  %3651 = phi float [ %3526, %3667 ], [ %3526, %3748 ], [ %3875, %3930 ], [ %3526, %3521 ]
  %3652 = phi float [ %3527, %3667 ], [ %3527, %3748 ], [ %3873, %3930 ], [ %3527, %3521 ]
  %3653 = phi float [ %3528, %3667 ], [ %3528, %3748 ], [ %3940, %3930 ], [ %3528, %3521 ]
  %3654 = phi float [ %3529, %3667 ], [ %3529, %3748 ], [ %3941, %3930 ], [ %3529, %3521 ]
  %3655 = phi float [ %3530, %3667 ], [ %3530, %3748 ], [ %3942, %3930 ], [ %3530, %3521 ]
  %3656 = phi float [ %3531, %3667 ], [ %3531, %3748 ], [ %3854, %3930 ], [ %3531, %3521 ]
  %3657 = phi float [ %3532, %3667 ], [ %3532, %3748 ], [ %3855, %3930 ], [ %3532, %3521 ]
  %3658 = phi float [ %3533, %3667 ], [ %3533, %3748 ], [ %3856, %3930 ], [ %3533, %3521 ]
  %3659 = phi float [ %3534, %3667 ], [ %3534, %3748 ], [ %3883, %3930 ], [ %3534, %3521 ]
  %3660 = phi float [ %3535, %3667 ], [ %3535, %3748 ], [ %3880, %3930 ], [ %3535, %3521 ]
  %3661 = phi float [ %3536, %3667 ], [ %3536, %3748 ], [ %3877, %3930 ], [ %3536, %3521 ]
  %3662 = phi float [ %3537, %3667 ], [ %3537, %3748 ], [ %3871, %3930 ], [ %3537, %3521 ]
  %3663 = phi float [ %3538, %3667 ], [ %3538, %3748 ], [ %3866, %3930 ], [ %3538, %3521 ]
  %3664 = phi float [ %3539, %3667 ], [ %3539, %3748 ], [ %3867, %3930 ], [ %3539, %3521 ]
  %3665 = phi float [ %3540, %3667 ], [ %3540, %3748 ], [ %3868, %3930 ], [ %3540, %3521 ]
  %3666 = icmp eq i32 %3597, %3520
  br i1 %3666, label %3943, label %3521

; <label>:3667                                    ; preds = %3521
  %3668 = extractvalue %dx.types.ResRet.f32 %3567, 3
  %3669 = extractvalue %dx.types.ResRet.f32 %3567, 1
  %3670 = extractvalue %dx.types.ResRet.f32 %3567, 0
  %3671 = extractvalue %dx.types.ResRet.f32 %3557, 1
  %3672 = extractvalue %dx.types.ResRet.f32 %3557, 0
  %3673 = extractvalue %dx.types.ResRet.i32 %3553, 3
  %3674 = extractvalue %dx.types.ResRet.i32 %3553, 2
  %3675 = add i32 %3673, 0
  %3676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3675, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3677 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3678 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3676, %dx.types.Handle %3677, float %3606, float %3613, float undef, float undef, i32 0, i32 0, i32 undef, float %3634, float %3636, float undef, float %3635, float %3637, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = fmul fast float %3679, %3672
  %3681 = fadd fast float %3680, %3671
  %3682 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  %3683 = fmul fast float %3606, %3562
  %3684 = call float @dx.op.tertiary.f32(i32 46, float %3563, float %3613, float %3683)  ; FMad(a,b,c)
  %3685 = fadd fast float %3684, %3670
  %3686 = fmul fast float %3606, %3564
  %3687 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3613, float %3686)  ; FMad(a,b,c)
  %3688 = fadd fast float %3687, %3669
  %3689 = fmul fast float %3634, %3562
  %3690 = call float @dx.op.tertiary.f32(i32 46, float %3563, float %3636, float %3689)  ; FMad(a,b,c)
  %3691 = fmul fast float %3634, %3564
  %3692 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3636, float %3691)  ; FMad(a,b,c)
  %3693 = fmul fast float %3635, %3562
  %3694 = call float @dx.op.tertiary.f32(i32 46, float %3563, float %3637, float %3693)  ; FMad(a,b,c)
  %3695 = fmul fast float %3635, %3564
  %3696 = call float @dx.op.tertiary.f32(i32 46, float %3565, float %3637, float %3695)  ; FMad(a,b,c)
  %3697 = add i32 %3674, 0
  %3698 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3697, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3699 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3698, %dx.types.Handle %3677, float %3685, float %3688, float undef, float undef, i32 0, i32 0, i32 undef, float %3690, float %3692, float undef, float %3694, float %3696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3700 = extractvalue %dx.types.ResRet.f32 %3699, 0
  %3701 = and i32 %3598, 1024
  %3702 = icmp ne i32 %3701, 0
  %3703 = fcmp fast ogt float %3700, 0x3FE0101020000000
  %3704 = uitofp i1 %3703 to float
  %3705 = select i1 %3702, float %3704, float %3700
  %3706 = and i32 %3598, 8192
  %3707 = icmp ne i32 %3706, 0
  %3708 = select i1 %3707, float %3668, float 1.000000e+00
  %3709 = fmul fast float %3606, 2.000000e+00
  %3710 = fadd fast float %3709, -1.000000e+00
  %3711 = call float @dx.op.unary.f32(i32 6, float %3710)  ; FAbs(value)
  %3712 = fmul fast float %3711, %3595
  %3713 = fsub fast float %3712, %3595
  %3714 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3715 = fmul fast float %3613, 2.000000e+00
  %3716 = fadd fast float %3715, -1.000000e+00
  %3717 = call float @dx.op.unary.f32(i32 6, float %3716)  ; FAbs(value)
  %3718 = fmul fast float %3717, %3596
  %3719 = fsub fast float %3718, %3596
  %3720 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3721 = fmul fast float %3625, %3558
  %3722 = fsub fast float %3721, %3558
  %3723 = call float @dx.op.unary.f32(i32 7, float %3722)  ; Saturate(value)
  %3724 = fmul fast float %3682, %3708
  %3725 = fmul fast float %3724, %3679
  %3726 = fmul fast float %3725, %3714
  %3727 = fmul fast float %3726, %3705
  %3728 = fmul fast float %3727, %3720
  %3729 = fmul fast float %3728, %3723
  %3730 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3731 = extractvalue %dx.types.CBufRet.f32 %3730, 1
  %3732 = extractvalue %dx.types.CBufRet.f32 %3730, 0
  %3733 = fsub fast float %3642, %3732
  %3734 = fmul fast float %3733, %3731
  %3735 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3736 = fmul fast float %3729, %3559
  %3737 = fadd fast float %3729, %3559
  %3738 = fmul fast float %3737, %3568
  %3739 = fsub fast float %3738, %3568
  %3740 = call float @dx.op.unary.f32(i32 7, float %3739)  ; Saturate(value)
  %3741 = and i32 %3598, 128
  %3742 = icmp ne i32 %3741, 0
  %3743 = select i1 %3742, float %3740, float %3736
  %3744 = fmul fast float %3743, %3735
  %3745 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3746 = extractvalue %dx.types.CBufRet.f32 %3745, 0
  %3747 = fcmp fast ugt float %3744, %3746
  br i1 %3747, label %3748, label %3647

; <label>:3748                                    ; preds = %3667
  %3749 = select i1 %3707, float %3744, float 0.000000e+00
  %3750 = fadd fast float %3749, %3523
  %3751 = call float @dx.op.unary.f32(i32 7, float %3750)  ; Saturate(value)
  br i1 %3707, label %3647, label %3752

; <label>:3752                                    ; preds = %3748
  %3753 = and i32 %3598, 4
  %3754 = and i32 %3598, 8
  %3755 = add i32 %3554, 0
  %3756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3755, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3757 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3758 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3756, %dx.types.Handle %3757, float %3685, float %3688, float undef, float undef, i32 0, i32 0, i32 undef, float %3690, float %3692, float undef, float %3694, float %3696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3759 = extractvalue %dx.types.ResRet.f32 %3758, 0
  %3760 = extractvalue %dx.types.ResRet.f32 %3758, 1
  %3761 = extractvalue %dx.types.ResRet.f32 %3758, 2
  %3762 = extractvalue %dx.types.ResRet.f32 %3758, 3
  %3763 = bitcast float %3580 to i32
  %3764 = and i32 %3763, 255
  %3765 = uitofp i32 %3764 to float
  %3766 = lshr i32 %3763, 8
  %3767 = and i32 %3766, 255
  %3768 = uitofp i32 %3767 to float
  %3769 = fmul fast float %3762, %3765
  %3770 = fadd fast float %3769, %3768
  %3771 = fmul fast float %3770, 0x3F70101000000000
  %3772 = add i32 %3555, 0
  %3773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3772, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3774 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3773, %dx.types.Handle %3757, float %3685, float %3688, float undef, float undef, i32 0, i32 0, i32 undef, float %3690, float %3692, float undef, float %3694, float %3696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3775 = extractvalue %dx.types.ResRet.f32 %3774, 0
  %3776 = extractvalue %dx.types.ResRet.f32 %3774, 1
  %3777 = extractvalue %dx.types.ResRet.f32 %3774, 2
  %3778 = extractvalue %dx.types.ResRet.f32 %3774, 3
  %3779 = bitcast float %3574 to i32
  %3780 = and i32 %3779, 255
  %3781 = uitofp i32 %3780 to float
  %3782 = lshr i32 %3779, 8
  %3783 = and i32 %3782, 255
  %3784 = uitofp i32 %3783 to float
  %3785 = lshr i32 %3779, 16
  %3786 = and i32 %3785, 255
  %3787 = uitofp i32 %3786 to float
  %3788 = fmul fast float %3787, 0x3F70101000000000
  %3789 = fmul fast float %3775, %3781
  %3790 = fadd fast float %3789, %3784
  %3791 = fmul fast float %3790, 0x3F70101000000000
  %3792 = fadd fast float %3776, -5.000000e-01
  %3793 = fadd fast float %3778, -5.000000e-01
  %3794 = fmul fast float %3792, %3788
  %3795 = fmul fast float %3793, %3788
  %3796 = fadd fast float %3794, 5.000000e-01
  %3797 = fadd fast float %3795, 5.000000e-01
  %3798 = fmul fast float %3759, %3583
  %3799 = fmul fast float %3760, %3584
  %3800 = fmul fast float %3761, %3585
  %3801 = fmul fast float %3796, 2.000000e+00
  %3802 = fadd fast float %3801, -1.000000e+00
  %3803 = fmul fast float %3797, 2.000000e+00
  %3804 = fadd fast float %3803, -1.000000e+00
  %3805 = fadd fast float %3802, %3804
  %3806 = fmul fast float %3805, 5.000000e-01
  %3807 = fsub fast float %3802, %3804
  %3808 = fmul fast float %3807, 5.000000e-01
  %3809 = call float @dx.op.unary.f32(i32 6, float %3806)  ; FAbs(value)
  %3810 = fsub fast float 1.000000e+00, %3809
  %3811 = call float @dx.op.unary.f32(i32 6, float %3808)  ; FAbs(value)
  %3812 = fsub fast float %3810, %3811
  %3813 = call float @dx.op.dot3.f32(i32 55, float %3806, float %3808, float %3812, float %3806, float %3808, float %3812)  ; Dot3(ax,ay,az,bx,by,bz)
  %3814 = call float @dx.op.unary.f32(i32 25, float %3813)  ; Rsqrt(value)
  %3815 = fmul fast float %3806, %3814
  %3816 = fmul fast float %3808, %3814
  %3817 = fmul fast float %3814, %3812
  %3818 = fmul fast float %3817, %3548
  %3819 = fmul fast float %3817, %3549
  %3820 = fmul fast float %3817, %3550
  %3821 = fmul fast float %3815, %3571
  %3822 = fmul fast float %3815, %3572
  %3823 = fmul fast float %3815, %3573
  %3824 = fadd fast float %3821, %3818
  %3825 = fadd fast float %3822, %3819
  %3826 = fadd fast float %3823, %3820
  %3827 = fmul fast float %3816, %3577
  %3828 = fmul fast float %3816, %3578
  %3829 = fmul fast float %3816, %3579
  %3830 = fadd fast float %3824, %3827
  %3831 = fadd fast float %3825, %3828
  %3832 = fadd fast float %3826, %3829
  %3833 = call float @dx.op.dot3.f32(i32 55, float %3830, float %3831, float %3832, float %3830, float %3831, float %3832)  ; Dot3(ax,ay,az,bx,by,bz)
  %3834 = call float @dx.op.unary.f32(i32 25, float %3833)  ; Rsqrt(value)
  %3835 = fmul fast float %3830, %3834
  %3836 = fmul fast float %3831, %3834
  %3837 = fmul fast float %3832, %3834
  %3838 = icmp ne i32 %3754, 0
  %3839 = select i1 %3838, float 1.000000e+00, float 0.000000e+00
  %3840 = fmul fast float %3744, %3839
  %3841 = and i32 %3598, 1
  %3842 = icmp eq i32 %3841, 0
  br i1 %3842, label %3843, label %3847

; <label>:3843                                    ; preds = %3752
  %3844 = fsub fast float %3835, %3531
  %3845 = fsub fast float %3836, %3532
  %3846 = fsub fast float %3837, %3533
  br label %3847

; <label>:3847                                    ; preds = %3843, %3752
  %3848 = phi float [ %3844, %3843 ], [ %3835, %3752 ]
  %3849 = phi float [ %3845, %3843 ], [ %3836, %3752 ]
  %3850 = phi float [ %3846, %3843 ], [ %3837, %3752 ]
  %3851 = fmul float %3850, %3840
  %3852 = fmul float %3849, %3840
  %3853 = fmul float %3848, %3840
  %3854 = fadd fast float %3853, %3531
  %3855 = fadd fast float %3852, %3532
  %3856 = fadd fast float %3851, %3533
  %3857 = icmp ne i32 %3753, 0
  %3858 = select i1 %3857, float 1.000000e+00, float 0.000000e+00
  %3859 = fmul fast float %3744, %3858
  %3860 = fsub fast float %3798, %3538
  %3861 = fsub fast float %3799, %3539
  %3862 = fsub fast float %3800, %3540
  %3863 = fmul fast float %3860, %3859
  %3864 = fmul fast float %3861, %3859
  %3865 = fmul fast float %3862, %3859
  %3866 = fadd fast float %3863, %3538
  %3867 = fadd fast float %3864, %3539
  %3868 = fadd fast float %3865, %3540
  %3869 = fsub fast float %3771, %3537
  %3870 = fmul fast float %3869, %3859
  %3871 = fadd fast float %3870, %3537
  %3872 = fmul fast float %3859, %3527
  %3873 = fsub fast float %3527, %3872
  %3874 = fmul fast float %3859, %3526
  %3875 = fsub fast float %3526, %3874
  %3876 = fadd fast float %3744, %3536
  %3877 = call float @dx.op.unary.f32(i32 7, float %3876)  ; Saturate(value)
  %3878 = fsub fast float %3791, %3535
  %3879 = fmul fast float %3878, %3840
  %3880 = fadd fast float %3879, %3535
  %3881 = fsub fast float %3777, %3534
  %3882 = fmul fast float %3881, %3840
  %3883 = fadd fast float %3882, %3534
  %3884 = call float @dx.op.dot3.f32(i32 55, float %3798, float %3799, float %3800, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3886 = extractvalue %dx.types.CBufRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.CBufRet.f32 %3885, 1
  %3888 = fmul fast float %3887, %3884
  %3889 = fadd fast float %3888, %3886
  %3890 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3891 = bitcast float %3586 to i32
  %3892 = and i32 %3891, 65535
  %3893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3892)  ; LegacyF16ToF32(value)
  %3894 = lshr i32 %3891, 16
  %3895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3894)  ; LegacyF16ToF32(value)
  %3896 = fcmp fast oge float %3893, 0.000000e+00
  %3897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3898 = extractvalue %dx.types.CBufRet.f32 %3897, 0
  %3899 = select i1 %3896, float %3893, float %3898
  %3900 = fadd fast float %3899, %3895
  %3901 = fsub fast float %3890, %3525
  %3902 = fmul fast float %3901, %3744
  %3903 = fadd fast float %3902, %3525
  %3904 = fmul fast float %3900, %3744
  %3905 = call float @dx.op.binary.f32(i32 35, float %3524, float %3904)  ; FMax(a,b)
  %3906 = and i32 %3598, 16
  %3907 = icmp eq i32 %3906, 0
  br i1 %3907, label %3930, label %3908

; <label>:3908                                    ; preds = %3847
  %3909 = bitcast float %3592 to i32
  %3910 = add i32 %3589, 0
  %3911 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3910, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3912 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3911, %dx.types.Handle %3757, float %3685, float %3688, float undef, float undef, i32 0, i32 0, i32 undef, float %3690, float %3692, float undef, float %3694, float %3696, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3913 = extractvalue %dx.types.ResRet.f32 %3912, 0
  %3914 = extractvalue %dx.types.ResRet.f32 %3912, 1
  %3915 = extractvalue %dx.types.ResRet.f32 %3912, 2
  %3916 = and i32 %3909, 65535
  %3917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3916)  ; LegacyF16ToF32(value)
  %3918 = fmul fast float %3913, %3583
  %3919 = fmul fast float %3914, %3584
  %3920 = fmul fast float %3915, %3585
  %3921 = and i32 %3598, 16384
  %3922 = icmp ne i32 %3921, 0
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 0
  %3925 = select i1 %3922, float %3924, float 1.000000e+00
  %3926 = fmul fast float %3925, %3917
  %3927 = fmul fast float %3918, %3926
  %3928 = fmul fast float %3919, %3926
  %3929 = fmul fast float %3920, %3926
  br label %3930

; <label>:3930                                    ; preds = %3908, %3847
  %3931 = phi float [ %3927, %3908 ], [ 0.000000e+00, %3847 ]
  %3932 = phi float [ %3928, %3908 ], [ 0.000000e+00, %3847 ]
  %3933 = phi float [ %3929, %3908 ], [ 0.000000e+00, %3847 ]
  %3934 = fsub fast float %3931, %3528
  %3935 = fsub fast float %3932, %3529
  %3936 = fsub fast float %3933, %3530
  %3937 = fmul fast float %3934, %3744
  %3938 = fmul fast float %3935, %3744
  %3939 = fmul fast float %3936, %3744
  %3940 = fadd fast float %3937, %3528
  %3941 = fadd fast float %3938, %3529
  %3942 = fadd fast float %3939, %3530
  br label %3647

; <label>:3943                                    ; preds = %3647
  br label %3944

; <label>:3944                                    ; preds = %3943, %3467
  %3945 = phi float [ 0.000000e+00, %3467 ], [ %3648, %3943 ]
  %3946 = phi float [ %3436, %3467 ], [ %3649, %3943 ]
  %3947 = phi float [ %3434, %3467 ], [ %3650, %3943 ]
  %3948 = phi float [ 0.000000e+00, %3467 ], [ %3651, %3943 ]
  %3949 = phi float [ 0.000000e+00, %3467 ], [ %3652, %3943 ]
  %3950 = phi float [ %3428, %3467 ], [ %3653, %3943 ]
  %3951 = phi float [ %3429, %3467 ], [ %3654, %3943 ]
  %3952 = phi float [ %3430, %3467 ], [ %3655, %3943 ]
  %3953 = phi float [ %3462, %3467 ], [ %3656, %3943 ]
  %3954 = phi float [ %3463, %3467 ], [ %3657, %3943 ]
  %3955 = phi float [ %3464, %3467 ], [ %3658, %3943 ]
  %3956 = phi float [ %3433, %3467 ], [ %3659, %3943 ]
  %3957 = phi float [ %3432, %3467 ], [ %3660, %3943 ]
  %3958 = phi float [ 0.000000e+00, %3467 ], [ %3661, %3943 ]
  %3959 = phi float [ %3431, %3467 ], [ %3662, %3943 ]
  %3960 = phi float [ %3425, %3467 ], [ %3663, %3943 ]
  %3961 = phi float [ %3426, %3467 ], [ %3664, %3943 ]
  %3962 = phi float [ %3427, %3467 ], [ %3665, %3943 ]
  %3963 = call float @dx.op.dot3.f32(i32 55, float %3953, float %3954, float %3955, float %3953, float %3954, float %3955)  ; Dot3(ax,ay,az,bx,by,bz)
  %3964 = call float @dx.op.unary.f32(i32 25, float %3963)  ; Rsqrt(value)
  %3965 = fmul fast float %3964, %3953
  %3966 = fmul fast float %3964, %3954
  %3967 = fmul fast float %3964, %3955
  %3968 = fadd fast float %3958, %869
  %3969 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  %3970 = call float @dx.op.dot3.f32(i32 55, float %3965, float %3966, float %3967, float %3965, float %3966, float %3967)  ; Dot3(ax,ay,az,bx,by,bz)
  %3971 = call float @dx.op.unary.f32(i32 25, float %3970)  ; Rsqrt(value)
  %3972 = fmul fast float %3971, %3965
  %3973 = fmul fast float %3971, %3966
  %3974 = fmul fast float %3971, %3967
  br label %3975

; <label>:3975                                    ; preds = %3944, %3422
  %3976 = phi float [ %3972, %3944 ], [ %3462, %3422 ]
  %3977 = phi float [ %3973, %3944 ], [ %3463, %3422 ]
  %3978 = phi float [ %3974, %3944 ], [ %3464, %3422 ]
  %3979 = phi float [ %3960, %3944 ], [ %3425, %3422 ]
  %3980 = phi float [ %3961, %3944 ], [ %3426, %3422 ]
  %3981 = phi float [ %3962, %3944 ], [ %3427, %3422 ]
  %3982 = phi float [ %3950, %3944 ], [ %3428, %3422 ]
  %3983 = phi float [ %3951, %3944 ], [ %3429, %3422 ]
  %3984 = phi float [ %3952, %3944 ], [ %3430, %3422 ]
  %3985 = phi float [ %3959, %3944 ], [ %3431, %3422 ]
  %3986 = phi float [ %3969, %3944 ], [ %869, %3422 ]
  %3987 = phi float [ %3957, %3944 ], [ %3432, %3422 ]
  %3988 = phi float [ %3956, %3944 ], [ %3433, %3422 ]
  %3989 = phi float [ %3949, %3944 ], [ 0.000000e+00, %3422 ]
  %3990 = phi float [ %3948, %3944 ], [ 0.000000e+00, %3422 ]
  %3991 = phi float [ %3945, %3944 ], [ 0.000000e+00, %3422 ]
  %3992 = phi float [ %3946, %3944 ], [ %3436, %3422 ]
  %3993 = phi float [ %3947, %3944 ], [ %3434, %3422 ]
  %3994 = fadd fast float %3985, 0xBFB99999A0000000
  %3995 = call float @dx.op.unary.f32(i32 7, float %3994)  ; Saturate(value)
  %3996 = fmul fast float %3995, 0x3FF1C71C80000000
  %3997 = call float @dx.op.binary.f32(i32 36, float %3985, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3998 = fsub fast float 1.000000e+00, %3996
  %3999 = call float @dx.op.unary.f32(i32 7, float %3998)  ; Saturate(value)
  %4000 = fmul fast float %3999, %3979
  %4001 = fmul fast float %3999, %3980
  %4002 = fmul fast float %3999, %3981
  %4003 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4004 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  %4005 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4006 = fmul fast float %3996, %3979
  %4007 = fmul fast float %3996, %3980
  %4008 = fmul fast float %3996, %3981
  %4009 = fadd fast float %4006, %3997
  %4010 = fadd fast float %4007, %3997
  %4011 = fadd fast float %4008, %3997
  %4012 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4013 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4014 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4015 = call float @dx.op.unary.f32(i32 7, float %3987)  ; Saturate(value)
  %4016 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4017 = extractvalue %dx.types.CBufRet.i32 %4016, 3
  %4018 = and i32 %4017, 8
  %4019 = icmp ne i32 %4018, 0
  %4020 = call float @dx.op.binary.f32(i32 35, float %4003, float %3979)  ; FMax(a,b)
  %4021 = call float @dx.op.binary.f32(i32 35, float %4004, float %3979)  ; FMax(a,b)
  %4022 = call float @dx.op.binary.f32(i32 35, float %4005, float %3979)  ; FMax(a,b)
  %4023 = call float @dx.op.dot3.f32(i32 55, float %4003, float %4004, float %4005, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4024 = select i1 %164, float %3979, float %4003
  %4025 = select i1 %164, float %4023, float %4004
  %4026 = select i1 %164, float 1.000000e+00, float %4005
  %4027 = select i1 %4019, float %4020, float %4024
  %4028 = select i1 %4019, float %4021, float %4025
  %4029 = select i1 %4019, float %4022, float %4026
  %4030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4031 = extractvalue %dx.types.CBufRet.f32 %4030, 0
  %4032 = extractvalue %dx.types.CBufRet.f32 %4030, 1
  %4033 = extractvalue %dx.types.CBufRet.f32 %4030, 2
  %4034 = fadd fast float %4031, %122
  %4035 = fadd fast float %4032, %123
  %4036 = fadd fast float %4033, %124
  %4037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4038 = extractvalue %dx.types.CBufRet.f32 %4037, 0
  %4039 = extractvalue %dx.types.CBufRet.f32 %4037, 1
  %4040 = fsub fast float %4034, %4038
  %4041 = fsub fast float %4035, %4039
  %4042 = fmul fast float %4040, %4040
  %4043 = fmul fast float %4041, %4041
  %4044 = fadd fast float %4042, %4043
  %4045 = call float @dx.op.unary.f32(i32 24, float %4044)  ; Sqrt(value)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4037, 2
  %4047 = fcmp fast olt float %4045, %4046
  br i1 %4047, label %4048, label %4115

; <label>:4048                                    ; preds = %3975
  %4049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4050 = extractvalue %dx.types.CBufRet.f32 %4049, 0
  %4051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4052 = extractvalue %dx.types.CBufRet.f32 %4051, 0
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 0
  %4055 = extractvalue %dx.types.CBufRet.f32 %4049, 1
  %4056 = extractvalue %dx.types.CBufRet.f32 %4051, 1
  %4057 = extractvalue %dx.types.CBufRet.f32 %4053, 1
  %4058 = extractvalue %dx.types.CBufRet.f32 %4049, 3
  %4059 = extractvalue %dx.types.CBufRet.f32 %4051, 3
  %4060 = extractvalue %dx.types.CBufRet.f32 %4053, 3
  %4061 = fadd fast float %4058, %4034
  %4062 = fadd fast float %4059, %4035
  %4063 = fadd fast float %4060, %4036
  %4064 = fmul fast float %4061, %4050
  %4065 = call float @dx.op.tertiary.f32(i32 46, float %4062, float %4052, float %4064)  ; FMad(a,b,c)
  %4066 = call float @dx.op.tertiary.f32(i32 46, float %4063, float %4054, float %4065)  ; FMad(a,b,c)
  %4067 = fmul fast float %4061, %4055
  %4068 = call float @dx.op.tertiary.f32(i32 46, float %4062, float %4056, float %4067)  ; FMad(a,b,c)
  %4069 = call float @dx.op.tertiary.f32(i32 46, float %4063, float %4057, float %4068)  ; FMad(a,b,c)
  %4070 = fsub fast float %4066, %4058
  %4071 = fsub fast float %4069, %4059
  %4072 = fsub fast float %4070, %4038
  %4073 = fadd fast float %4072, %4046
  %4074 = fsub fast float %4071, %4039
  %4075 = fadd fast float %4074, %4046
  %4076 = extractvalue %dx.types.CBufRet.f32 %4037, 3
  %4077 = fmul fast float %4073, %4076
  %4078 = fmul fast float %4075, %4076
  %4079 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4080 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4081 = fsub fast float 1.000000e+00, %4079
  %4082 = fsub fast float 1.000000e+00, %4080
  %4083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4081, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4084 = extractvalue %dx.types.ResRet.f32 %4083, 0
  %4085 = fcmp fast ugt float %4084, 0.000000e+00
  br i1 %4085, label %4086, label %4389

; <label>:4086                                    ; preds = %4048
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 2
  %4089 = fmul fast float %4088, %4084
  %4090 = extractvalue %dx.types.CBufRet.f32 %4087, 3
  %4091 = fadd fast float %4090, %4089
  %4092 = extractvalue %dx.types.CBufRet.f32 %4053, 2
  %4093 = fadd fast float %4091, %4060
  %4094 = fmul fast float %4066, %4054
  %4095 = call float @dx.op.tertiary.f32(i32 46, float %4069, float %4057, float %4094)  ; FMad(a,b,c)
  %4096 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4092, float %4095)  ; FMad(a,b,c)
  %4097 = fsub fast float %4096, %4060
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4100 = fsub fast float %4097, %4099
  %4101 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4081, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4102 = extractvalue %dx.types.ResRet.f32 %4101, 0
  %4103 = extractvalue %dx.types.ResRet.f32 %4101, 1
  %4104 = extractvalue %dx.types.ResRet.f32 %4101, 2
  %4105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4081, float %4082, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4106 = extractvalue %dx.types.ResRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.ResRet.f32 %4105, 1
  %4108 = extractvalue %dx.types.ResRet.f32 %4105, 2
  %4109 = fadd fast float %4106, %4102
  %4110 = fmul fast float %4109, 0x3F847AE140000000
  %4111 = fadd fast float %4107, %4103
  %4112 = fmul fast float %4111, 0x3F847AE140000000
  %4113 = fadd fast float %4108, %4104
  %4114 = fmul fast float %4113, 0x3F847AE140000000
  br label %4389

; <label>:4115                                    ; preds = %3975
  %4116 = and i32 %140, 1
  %4117 = icmp eq i32 %4116, 0
  br i1 %4117, label %4389, label %4118

; <label>:4118                                    ; preds = %4115
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 0
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4124 = extractvalue %dx.types.CBufRet.f32 %4123, 0
  %4125 = extractvalue %dx.types.CBufRet.f32 %4119, 1
  %4126 = extractvalue %dx.types.CBufRet.f32 %4121, 1
  %4127 = extractvalue %dx.types.CBufRet.f32 %4123, 1
  %4128 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4129 = extractvalue %dx.types.CBufRet.f32 %4121, 3
  %4130 = extractvalue %dx.types.CBufRet.f32 %4123, 3
  %4131 = fadd fast float %4128, %4034
  %4132 = fadd fast float %4129, %4035
  %4133 = fadd fast float %4130, %4036
  %4134 = fmul fast float %4131, %4120
  %4135 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %4122, float %4134)  ; FMad(a,b,c)
  %4136 = call float @dx.op.tertiary.f32(i32 46, float %4133, float %4124, float %4135)  ; FMad(a,b,c)
  %4137 = fmul fast float %4131, %4125
  %4138 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %4126, float %4137)  ; FMad(a,b,c)
  %4139 = call float @dx.op.tertiary.f32(i32 46, float %4133, float %4127, float %4138)  ; FMad(a,b,c)
  %4140 = fsub fast float %4136, %4128
  %4141 = fsub fast float %4139, %4129
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 0
  %4144 = extractvalue %dx.types.CBufRet.f32 %4142, 1
  %4145 = extractvalue %dx.types.CBufRet.f32 %4142, 2
  %4146 = extractvalue %dx.types.CBufRet.f32 %4142, 3
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4149 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.i32 %4149, 0
  %4151 = extractvalue %dx.types.CBufRet.i32 %4149, 1
  %4152 = udiv i32 %4151, %4150
  %4153 = fsub fast float %4140, %4143
  %4154 = fsub fast float %4141, %4144
  %4155 = call float @dx.op.binary.f32(i32 35, float %4153, float 0.000000e+00)  ; FMax(a,b)
  %4156 = call float @dx.op.binary.f32(i32 35, float %4154, float 0.000000e+00)  ; FMax(a,b)
  %4157 = call float @dx.op.binary.f32(i32 36, float %4155, float %4145)  ; FMin(a,b)
  %4158 = call float @dx.op.binary.f32(i32 36, float %4156, float %4146)  ; FMin(a,b)
  %4159 = add i32 %4150, -1
  %4160 = add i32 %4152, -1
  %4161 = fmul fast float %4157, %4148
  %4162 = fmul fast float %4158, %4148
  %4163 = fptoui float %4161 to i32
  %4164 = fptoui float %4162 to i32
  %4165 = call i32 @dx.op.binary.i32(i32 40, i32 %4163, i32 %4159)  ; UMin(a,b)
  %4166 = call i32 @dx.op.binary.i32(i32 40, i32 %4164, i32 %4160)  ; UMin(a,b)
  %4167 = mul i32 %4166, %4150
  %4168 = add i32 %4167, %4165
  %4169 = shl i32 %4168, 2
  %4170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4169, i32 undef)  ; BufferLoad(srv,index,wot)
  %4171 = extractvalue %dx.types.ResRet.i32 %4170, 0
  %4172 = icmp eq i32 %4171, -1
  br i1 %4172, label %4389, label %4173

; <label>:4173                                    ; preds = %4118
  %4174 = mul i32 %4171, 148
  %4175 = add i32 %4174, 4
  %4176 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4175, i32 undef)  ; BufferLoad(srv,index,wot)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4178 = add i32 %4174, 8
  %4179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4178, i32 undef)  ; BufferLoad(srv,index,wot)
  %4180 = extractvalue %dx.types.ResRet.f32 %4179, 0
  %4181 = add i32 %4174, 36
  %4182 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4181, i32 undef)  ; BufferLoad(srv,index,wot)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = add i32 %4174, 60
  %4185 = add i32 %4174, 92
  %4186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4185, i32 undef)  ; BufferLoad(srv,index,wot)
  %4187 = extractvalue %dx.types.ResRet.i32 %4186, 0
  %4188 = add i32 %4174, 116
  %4189 = fsub fast float %4140, %4177
  %4190 = fsub fast float %4141, %4180
  %4191 = fmul fast float %4148, %4189
  %4192 = fmul fast float %4148, %4190
  %4193 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  %4194 = call float @dx.op.unary.f32(i32 7, float %4192)  ; Saturate(value)
  %4195 = fsub fast float 1.000000e+00, %4194
  %4196 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.f32 %4196, 2
  %4198 = call float @dx.op.unary.f32(i32 83, float %4193)  ; DerivCoarseX(value)
  %4199 = call float @dx.op.unary.f32(i32 83, float %4195)  ; DerivCoarseX(value)
  %4200 = call float @dx.op.unary.f32(i32 84, float %4193)  ; DerivCoarseY(value)
  %4201 = call float @dx.op.unary.f32(i32 84, float %4195)  ; DerivCoarseY(value)
  %4202 = fmul fast float %4198, %4197
  %4203 = fmul fast float %4199, %4197
  %4204 = fmul fast float %4200, %4197
  %4205 = fmul fast float %4201, %4197
  %4206 = call float @dx.op.dot2.f32(i32 54, float %4204, float %4205, float %4204, float %4205)  ; Dot2(ax,ay,bx,by)
  %4207 = call float @dx.op.dot2.f32(i32 54, float %4202, float %4203, float %4202, float %4203)  ; Dot2(ax,ay,bx,by)
  %4208 = call float @dx.op.binary.f32(i32 35, float %4207, float %4206)  ; FMax(a,b)
  %4209 = call float @dx.op.unary.f32(i32 23, float %4208)  ; Log(value)
  %4210 = fmul fast float %4209, 5.000000e-01
  %4211 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4212 = extractvalue %dx.types.CBufRet.f32 %4211, 1
  %4213 = fadd fast float %4212, %4210
  %4214 = call float @dx.op.binary.f32(i32 35, float %4213, float 0.000000e+00)  ; FMax(a,b)
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 3
  %4217 = fadd fast float %4216, %4214
  %4218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4219 = extractvalue %dx.types.CBufRet.f32 %4218, 3
  %4220 = fadd fast float %4217, %4219
  %4221 = add i32 %4187, 0
  %4222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4221, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4223 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4222, i32 0)  ; GetDimensions(handle,mipLevel)
  %4224 = extractvalue %dx.types.Dimensions %4223, 0
  %4225 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4224)  ; FirstbitLo(value)
  %4226 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.i32 %4226, 1
  %4228 = sub nsw i32 %4227, %4225
  %4229 = sitofp i32 %4228 to float
  %4230 = fsub fast float %4220, %4229
  %4231 = call float @dx.op.binary.f32(i32 35, float %4230, float 0.000000e+00)  ; FMax(a,b)
  %4232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4222, %dx.types.Handle %27, float %4193, float %4195, float %4183, float undef, i32 0, i32 0, i32 undef, float %4231)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4233 = extractvalue %dx.types.ResRet.f32 %4232, 0
  %4234 = fcmp ule float %4233, 0x3FE0101020000000
  %4235 = extractvalue %dx.types.CBufRet.i32 %4226, 0
  %4236 = and i32 %4235, 128
  %4237 = icmp ne i32 %4236, 0
  %4238 = and i1 %4234, %4237
  br i1 %4238, label %4389, label %4239

; <label>:4239                                    ; preds = %4173
  %4240 = add i32 %4174, 20
  %4241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4240, i32 undef)  ; BufferLoad(srv,index,wot)
  %4242 = extractvalue %dx.types.ResRet.f32 %4241, 0
  %4243 = add i32 %4174, 24
  %4244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.f32 %4244, 0
  %4246 = add i32 %4174, 40
  %4247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = add i32 %4174, 96
  %4250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.i32 %4250, 0
  %4252 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4253 = extractvalue %dx.types.CBufRet.f32 %4252, 2
  %4254 = fmul fast float %4253, %4193
  %4255 = fmul fast float %4253, %4195
  %4256 = extractvalue %dx.types.CBufRet.f32 %4252, 3
  %4257 = fadd fast float %4254, %4256
  %4258 = fadd fast float %4255, %4256
  %4259 = add i32 %4251, 0
  %4260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4259, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4261 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4260, i32 0)  ; GetDimensions(handle,mipLevel)
  %4262 = extractvalue %dx.types.Dimensions %4261, 0
  %4263 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4262)  ; FirstbitLo(value)
  %4264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.i32 %4264, 1
  %4266 = sub nsw i32 %4265, %4263
  %4267 = sitofp i32 %4266 to float
  %4268 = fsub fast float %4217, %4267
  %4269 = call float @dx.op.binary.f32(i32 35, float %4268, float 0.000000e+00)  ; FMax(a,b)
  %4270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4260, %dx.types.Handle %27, float %4257, float %4258, float %4248, float undef, i32 0, i32 0, i32 undef, float %4269)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4271 = extractvalue %dx.types.ResRet.f32 %4270, 0
  %4272 = fmul fast float %4271, %4242
  %4273 = fadd fast float %4272, %4245
  %4274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4274, 0
  %4276 = extractvalue %dx.types.CBufRet.f32 %4274, 1
  %4277 = extractvalue %dx.types.CBufRet.f32 %4274, 2
  %4278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4279 = extractvalue %dx.types.CBufRet.f32 %4278, 3
  %4280 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4281 = extractvalue %dx.types.CBufRet.f32 %4280, 3
  %4282 = extractvalue %dx.types.CBufRet.f32 %4274, 3
  %4283 = fadd fast float %4279, %4140
  %4284 = fadd fast float %4281, %4141
  %4285 = fadd fast float %4273, %4282
  %4286 = fmul fast float %4283, %4275
  %4287 = call float @dx.op.tertiary.f32(i32 46, float %4284, float %4276, float %4286)  ; FMad(a,b,c)
  %4288 = call float @dx.op.tertiary.f32(i32 46, float %4285, float %4277, float %4287)  ; FMad(a,b,c)
  %4289 = fsub fast float %4288, %4282
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 2
  %4292 = fsub fast float %4289, %4291
  %4293 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4294 = extractvalue %dx.types.CBufRet.i32 %4293, 0
  %4295 = call i32 @dx.op.binary.i32(i32 40, i32 %4171, i32 %4294)  ; UMin(a,b)
  %4296 = mul i32 %4295, 36
  %4297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4296, i32 undef)  ; BufferLoad(srv,index,wot)
  %4298 = extractvalue %dx.types.ResRet.i32 %4297, 0
  %4299 = add i32 %4296, 4
  %4300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4301 = extractvalue %dx.types.CBufRet.f32 %4300, 0
  %4302 = fmul fast float %4301, %4193
  %4303 = fmul fast float %4301, %4195
  %4304 = extractvalue %dx.types.CBufRet.f32 %4300, 1
  %4305 = fadd fast float %4302, %4304
  %4306 = fadd fast float %4303, %4304
  %4307 = icmp eq i32 %4298, 0
  br i1 %4307, label %4376, label %4308

; <label>:4308                                    ; preds = %4239
  br label %4309

; <label>:4309                                    ; preds = %4366, %4308
  %4310 = phi float [ %4367, %4366 ], [ 0.000000e+00, %4308 ]
  %4311 = phi float [ %4368, %4366 ], [ 0.000000e+00, %4308 ]
  %4312 = phi float [ %4369, %4366 ], [ 0.000000e+00, %4308 ]
  %4313 = phi float [ %4370, %4366 ], [ 0.000000e+00, %4308 ]
  %4314 = phi float [ %4371, %4366 ], [ 0.000000e+00, %4308 ]
  %4315 = phi float [ %4372, %4366 ], [ 0.000000e+00, %4308 ]
  %4316 = phi i32 [ %4373, %4366 ], [ 0, %4308 ]
  %4317 = shl i32 %4316, 2
  %4318 = add i32 %4184, %4317
  %4319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4318, i32 undef)  ; BufferLoad(srv,index,wot)
  %4320 = extractvalue %dx.types.ResRet.f32 %4319, 0
  %4321 = add i32 %4188, %4317
  %4322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4321, i32 undef)  ; BufferLoad(srv,index,wot)
  %4323 = extractvalue %dx.types.ResRet.i32 %4322, 0
  %4324 = add i32 %4323, 0
  %4325 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4324, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4326 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4325, i32 0)  ; GetDimensions(handle,mipLevel)
  %4327 = extractvalue %dx.types.Dimensions %4326, 0
  %4328 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4327)  ; FirstbitLo(value)
  %4329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.i32 %4329, 1
  %4331 = sub nsw i32 %4330, %4328
  %4332 = sitofp i32 %4331 to float
  %4333 = fsub fast float %4217, %4332
  %4334 = call float @dx.op.binary.f32(i32 35, float %4333, float 0.000000e+00)  ; FMax(a,b)
  %4335 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4325, %dx.types.Handle %27, float %4305, float %4306, float %4320, float undef, i32 0, i32 0, i32 undef, float %4334)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4336 = extractvalue %dx.types.ResRet.f32 %4335, 0
  %4337 = fcmp fast ogt float %4336, 0.000000e+00
  br i1 %4337, label %4338, label %4366

; <label>:4338                                    ; preds = %4309
  %4339 = add i32 %4299, %4317
  %4340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4341 = extractvalue %dx.types.ResRet.i32 %4340, 0
  %4342 = and i32 %4341, 32767
  %4343 = mul nuw nsw i32 %4342, 928
  %4344 = add nuw nsw i32 %4343, 48
  %4345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = extractvalue %dx.types.ResRet.f32 %4345, 1
  %4348 = extractvalue %dx.types.ResRet.f32 %4345, 2
  %4349 = add nuw nsw i32 %4343, 60
  %4350 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4349, i32 undef)  ; BufferLoad(srv,index,wot)
  %4351 = extractvalue %dx.types.ResRet.f32 %4350, 0
  %4352 = extractvalue %dx.types.ResRet.f32 %4350, 1
  %4353 = extractvalue %dx.types.ResRet.f32 %4350, 2
  %4354 = fmul fast float %4346, %4336
  %4355 = fmul fast float %4347, %4336
  %4356 = fmul fast float %4348, %4336
  %4357 = fadd fast float %4354, %4310
  %4358 = fadd fast float %4355, %4311
  %4359 = fadd fast float %4356, %4312
  %4360 = fmul fast float %4351, %4336
  %4361 = fmul fast float %4352, %4336
  %4362 = fmul fast float %4353, %4336
  %4363 = fadd fast float %4360, %4313
  %4364 = fadd fast float %4361, %4314
  %4365 = fadd fast float %4362, %4315
  br label %4366

; <label>:4366                                    ; preds = %4338, %4309
  %4367 = phi float [ %4357, %4338 ], [ %4310, %4309 ]
  %4368 = phi float [ %4358, %4338 ], [ %4311, %4309 ]
  %4369 = phi float [ %4359, %4338 ], [ %4312, %4309 ]
  %4370 = phi float [ %4363, %4338 ], [ %4313, %4309 ]
  %4371 = phi float [ %4364, %4338 ], [ %4314, %4309 ]
  %4372 = phi float [ %4365, %4338 ], [ %4315, %4309 ]
  %4373 = add nuw i32 %4316, 1
  %4374 = icmp eq i32 %4373, %4298
  br i1 %4374, label %4375, label %4309

; <label>:4375                                    ; preds = %4366
  br label %4376

; <label>:4376                                    ; preds = %4375, %4239
  %4377 = phi float [ 0.000000e+00, %4239 ], [ %4367, %4375 ]
  %4378 = phi float [ 0.000000e+00, %4239 ], [ %4368, %4375 ]
  %4379 = phi float [ 0.000000e+00, %4239 ], [ %4369, %4375 ]
  %4380 = phi float [ 0.000000e+00, %4239 ], [ %4370, %4375 ]
  %4381 = phi float [ 0.000000e+00, %4239 ], [ %4371, %4375 ]
  %4382 = phi float [ 0.000000e+00, %4239 ], [ %4372, %4375 ]
  %4383 = fadd fast float %4380, %4377
  %4384 = fmul fast float %4383, 0x3F847AE140000000
  %4385 = fadd fast float %4381, %4378
  %4386 = fmul fast float %4385, 0x3F847AE140000000
  %4387 = fadd fast float %4382, %4379
  %4388 = fmul fast float %4387, 0x3F847AE140000000
  br label %4389

; <label>:4389                                    ; preds = %4376, %4173, %4118, %4115, %4086, %4048
  %4390 = phi float [ %4100, %4086 ], [ -1.310720e+05, %4048 ], [ %4292, %4376 ], [ -1.310720e+05, %4118 ], [ -1.310720e+05, %4173 ], [ -1.310720e+05, %4115 ]
  %4391 = phi float [ %4110, %4086 ], [ 0.000000e+00, %4048 ], [ %4384, %4376 ], [ 0.000000e+00, %4118 ], [ 0.000000e+00, %4173 ], [ 0.000000e+00, %4115 ]
  %4392 = phi float [ %4112, %4086 ], [ 0.000000e+00, %4048 ], [ %4386, %4376 ], [ 0.000000e+00, %4118 ], [ 0.000000e+00, %4173 ], [ 0.000000e+00, %4115 ]
  %4393 = phi float [ %4114, %4086 ], [ 0.000000e+00, %4048 ], [ %4388, %4376 ], [ 0.000000e+00, %4118 ], [ 0.000000e+00, %4173 ], [ 0.000000e+00, %4115 ]
  %4394 = phi i1 [ true, %4086 ], [ false, %4048 ], [ true, %4376 ], [ false, %4118 ], [ false, %4173 ], [ false, %4115 ]
  %4395 = and i32 %140, 3
  %4396 = icmp eq i32 %4395, 1
  %4397 = select i1 %4396, float 1.000000e+00, float 0.000000e+00
  %4398 = fsub fast float %4390, %124
  %4399 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4400 = select i1 %4394, float %4399, float 1.000000e+00
  %4401 = fmul fast float %4400, %4397
  %4402 = icmp eq i32 %4395, 3
  %4403 = select i1 %4402, float 1.000000e+00, float %4401
  %4404 = call float @dx.op.binary.f32(i32 35, float %3991, float %4403)  ; FMax(a,b)
  %4405 = call float @dx.op.unary.f32(i32 7, float %4404)  ; Saturate(value)
  %4406 = fcmp fast une float %4405, 0.000000e+00
  %4407 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4408 = call float @dx.op.unary.f32(i32 25, float %4407)  ; Rsqrt(value)
  br i1 %4406, label %4416, label %4409

; <label>:4409                                    ; preds = %4389
  %4410 = fmul fast float %4408, %122
  %4411 = fmul fast float %4408, %123
  %4412 = fmul fast float %4408, %124
  %4413 = fsub fast float -0.000000e+00, %4410
  %4414 = fsub fast float -0.000000e+00, %4411
  %4415 = fsub fast float -0.000000e+00, %4412
  br label %4584

; <label>:4416                                    ; preds = %4389
  %4417 = fmul fast float %122, %4408
  %4418 = fsub fast float -0.000000e+00, %4417
  %4419 = fmul fast float %123, %4408
  %4420 = fsub fast float -0.000000e+00, %4419
  %4421 = fmul fast float %124, %4408
  %4422 = fsub fast float -0.000000e+00, %4421
  %4423 = call float @dx.op.dot3.f32(i32 55, float %4418, float %4420, float %4422, float %72, float %74, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4424 = fmul fast float %4405, 2.500000e+00
  %4425 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4426 = fmul fast float %4405, 0x4013FFFFE0000000
  %4427 = fadd fast float %4426, 0xBFFFFFFFE0000000
  %4428 = call float @dx.op.unary.f32(i32 7, float %4427)  ; Saturate(value)
  %4429 = fmul fast float %4405, 0x4004000020000000
  %4430 = fadd fast float %4429, 0xBFF8000040000000
  %4431 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4432 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4433 = fmul fast float %3994, 1.000000e+01
  %4434 = call float @dx.op.unary.f32(i32 7, float %4433)  ; Saturate(value)
  %4435 = fmul fast float %4434, 2.000000e+00
  %4436 = fsub fast float 3.000000e+00, %4435
  %4437 = fmul fast float %4434, %4434
  %4438 = fmul fast float %4437, %4436
  %4439 = fsub fast float 1.000000e+00, %4438
  %4440 = fsub fast float 0x3FE3333340000000, %4015
  %4441 = fmul fast float %4440, 0x400AAAAAA0000000
  %4442 = call float @dx.op.unary.f32(i32 7, float %4441)  ; Saturate(value)
  %4443 = fmul fast float %4439, %4442
  %4444 = fmul fast float %4027, 0x3FEA2B8620000000
  %4445 = fmul fast float %4028, 0x3FEA2B8620000000
  %4446 = fmul fast float %4029, 0x3FEA2B8620000000
  %4447 = fadd fast float %4444, 0x3FC81DFBA0000000
  %4448 = fmul fast float %4447, %4027
  %4449 = fadd fast float %4448, 0x3F910E6020000000
  %4450 = fadd fast float %4445, 0x3FC81DFBA0000000
  %4451 = fmul fast float %4450, %4028
  %4452 = fadd fast float %4451, 0x3F910E6020000000
  %4453 = fadd fast float %4446, 0x3FC81DFBA0000000
  %4454 = fmul fast float %4453, %4029
  %4455 = fadd fast float %4454, 0x3F910E6020000000
  %4456 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4459 = fsub fast float %4456, %4027
  %4460 = fsub fast float %4457, %4028
  %4461 = fsub fast float %4458, %4029
  %4462 = fmul fast float %4459, %4432
  %4463 = fmul fast float %4462, %4443
  %4464 = fmul fast float %4460, %4432
  %4465 = fmul fast float %4464, %4443
  %4466 = fmul fast float %4461, %4432
  %4467 = fmul fast float %4466, %4443
  %4468 = fadd fast float %4463, %4027
  %4469 = fadd fast float %4465, %4028
  %4470 = fadd fast float %4467, %4029
  %4471 = fmul fast float %3988, %3988
  %4472 = fmul fast float %4471, %4471
  %4473 = fadd fast float %4428, 1.000000e+00
  %4474 = fsub fast float %4473, %4443
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = call float @dx.op.dot3.f32(i32 55, float %72, float %74, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4477 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4478 = fsub fast float 1.000000e+00, %4472
  %4479 = call float @dx.op.binary.f32(i32 36, float %4475, float %4478)  ; FMin(a,b)
  %4480 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4481 = call float @dx.op.binary.f32(i32 35, float %4479, float %4480)  ; FMax(a,b)
  %4482 = fadd fast float %4477, 0xBFE4CCCCC0000000
  %4483 = fmul fast float %4482, 0x4006DB6DA0000000
  %4484 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4485 = fmul fast float %4484, 2.000000e+00
  %4486 = fsub fast float 3.000000e+00, %4485
  %4487 = bitcast float %4012 to i32
  %4488 = ashr i32 %4487, 1
  %4489 = add nsw i32 %4488, 532487669
  %4490 = bitcast i32 %4489 to float
  %4491 = fsub fast float 1.000000e+00, %4490
  %4492 = bitcast float %4491 to i32
  %4493 = sub nsw i32 2129859010, %4492
  %4494 = bitcast i32 %4493 to float
  %4495 = fmul fast float %4494, 2.000000e+00
  %4496 = bitcast float %4013 to i32
  %4497 = ashr i32 %4496, 1
  %4498 = add nsw i32 %4497, 532487669
  %4499 = bitcast i32 %4498 to float
  %4500 = fsub fast float 1.000000e+00, %4499
  %4501 = bitcast float %4500 to i32
  %4502 = sub nsw i32 2129859010, %4501
  %4503 = bitcast i32 %4502 to float
  %4504 = fmul fast float %4503, 2.000000e+00
  %4505 = bitcast float %4014 to i32
  %4506 = ashr i32 %4505, 1
  %4507 = add nsw i32 %4506, 532487669
  %4508 = bitcast i32 %4507 to float
  %4509 = fsub fast float 1.000000e+00, %4508
  %4510 = bitcast float %4509 to i32
  %4511 = sub nsw i32 2129859010, %4510
  %4512 = bitcast i32 %4511 to float
  %4513 = fmul fast float %4512, 2.000000e+00
  %4514 = fsub fast float 0x4002A9FBE0000000, %4495
  %4515 = fadd fast float %4495, 0x3FD54FDF00000000
  %4516 = bitcast float %4515 to i32
  %4517 = sub nsw i32 2129859010, %4516
  %4518 = bitcast i32 %4517 to float
  %4519 = fmul fast float %4518, %4514
  %4520 = fmul fast float %4519, %4519
  %4521 = fsub fast float 0x4002A9FBE0000000, %4504
  %4522 = fadd fast float %4504, 0x3FD54FDF00000000
  %4523 = bitcast float %4522 to i32
  %4524 = sub nsw i32 2129859010, %4523
  %4525 = bitcast i32 %4524 to float
  %4526 = fmul fast float %4525, %4521
  %4527 = fmul fast float %4526, %4526
  %4528 = fsub fast float 0x4002A9FBE0000000, %4513
  %4529 = fadd fast float %4513, 0x3FD54FDF00000000
  %4530 = bitcast float %4529 to i32
  %4531 = sub nsw i32 2129859010, %4530
  %4532 = bitcast i32 %4531 to float
  %4533 = fmul fast float %4532, %4528
  %4534 = fmul fast float %4533, %4533
  %4535 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4520)  ; FMax(a,b)
  %4536 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4527)  ; FMax(a,b)
  %4537 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4534)  ; FMax(a,b)
  %4538 = fsub fast float 1.000000e+00, %4423
  %4539 = fadd fast float %4538, %4439
  %4540 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4541 = fsub fast float 1.000000e+00, %4403
  %4542 = fmul fast float %4481, %4541
  %4543 = fmul fast float %4484, %4484
  %4544 = fmul fast float %4543, %4542
  %4545 = fmul fast float %4544, %4486
  %4546 = fmul fast float %4541, 0xBFE99999A0000000
  %4547 = fmul fast float %4546, %4432
  %4548 = fmul fast float %4547, %4443
  %4549 = fadd fast float %4548, 1.000000e+00
  %4550 = fadd fast float %4015, -1.000000e+00
  %4551 = fmul fast float %4549, %4550
  %4552 = fadd fast float %4551, 1.000000e+00
  %4553 = fsub fast float %4535, %4012
  %4554 = fsub fast float %4536, %4013
  %4555 = fsub fast float %4537, %4014
  %4556 = fmul fast float %4545, %4553
  %4557 = fmul fast float %4545, %4554
  %4558 = fmul fast float %4545, %4555
  %4559 = fadd fast float %4556, %4012
  %4560 = fadd fast float %4557, %4013
  %4561 = fadd fast float %4558, %4014
  %4562 = fsub fast float %72, %3976
  %4563 = fsub fast float %74, %3977
  %4564 = fsub fast float %76, %3978
  %4565 = fmul fast float %4545, %4562
  %4566 = fmul fast float %4545, %4563
  %4567 = fmul fast float %4545, %4564
  %4568 = fadd fast float %4565, %3976
  %4569 = fadd fast float %4566, %3977
  %4570 = fadd fast float %4567, %3978
  %4571 = fmul fast float %4545, %4540
  %4572 = call float @dx.op.unary.f32(i32 7, float %4552)  ; Saturate(value)
  %4573 = fsub fast float 1.000000e+00, %4572
  %4574 = fmul fast float %4571, %4573
  %4575 = fadd fast float %4574, %4572
  %4576 = fsub fast float 1.000000e+00, %3988
  %4577 = fmul fast float %4545, %4576
  %4578 = fadd fast float %4577, %3988
  %4579 = call float @dx.op.dot3.f32(i32 55, float %4568, float %4569, float %4570, float %4568, float %4569, float %4570)  ; Dot3(ax,ay,az,bx,by,bz)
  %4580 = call float @dx.op.unary.f32(i32 25, float %4579)  ; Rsqrt(value)
  %4581 = fmul fast float %4568, %4580
  %4582 = fmul fast float %4569, %4580
  %4583 = fmul fast float %4570, %4580
  br label %4584

; <label>:4584                                    ; preds = %4416, %4409
  %4585 = phi float [ %4415, %4409 ], [ %4422, %4416 ]
  %4586 = phi float [ %4414, %4409 ], [ %4420, %4416 ]
  %4587 = phi float [ %4413, %4409 ], [ %4418, %4416 ]
  %4588 = phi float [ %4412, %4409 ], [ %4421, %4416 ]
  %4589 = phi float [ %4411, %4409 ], [ %4419, %4416 ]
  %4590 = phi float [ %4410, %4409 ], [ %4417, %4416 ]
  %4591 = phi float [ %4012, %4409 ], [ %4559, %4416 ]
  %4592 = phi float [ %4013, %4409 ], [ %4560, %4416 ]
  %4593 = phi float [ %4014, %4409 ], [ %4561, %4416 ]
  %4594 = phi float [ %4027, %4409 ], [ %4468, %4416 ]
  %4595 = phi float [ %4028, %4409 ], [ %4469, %4416 ]
  %4596 = phi float [ %4029, %4409 ], [ %4470, %4416 ]
  %4597 = phi float [ %3976, %4409 ], [ %4581, %4416 ]
  %4598 = phi float [ %3977, %4409 ], [ %4582, %4416 ]
  %4599 = phi float [ %3978, %4409 ], [ %4583, %4416 ]
  %4600 = phi float [ %4015, %4409 ], [ %4575, %4416 ]
  %4601 = phi float [ %3988, %4409 ], [ %4578, %4416 ]
  %4602 = select i1 %164, float 0.000000e+00, float %4593
  %4603 = call float @dx.op.dot3.f32(i32 55, float %4597, float %4598, float %4599, float %4587, float %4586, float %4585)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = call float @dx.op.unary.f32(i32 7, float %4603)  ; Saturate(value)
  %4605 = fsub fast float 1.000000e+00, %4601
  %4606 = bitcast float %4605 to i32
  %4607 = sub nsw i32 2129859010, %4606
  %4608 = bitcast i32 %4607 to float
  %4609 = fmul fast float %3986, %3982
  %4610 = fmul fast float %3986, %3983
  %4611 = fmul fast float %3986, %3984
  %4612 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4613 = extractvalue %dx.types.CBufRet.f32 %4612, 3
  %4614 = fcmp fast oeq float %4613, 0.000000e+00
  br i1 %4614, label %4861, label %4615

; <label>:4615                                    ; preds = %4584
  %4616 = extractvalue %dx.types.CBufRet.f32 %4612, 0
  %4617 = extractvalue %dx.types.CBufRet.f32 %4612, 1
  %4618 = extractvalue %dx.types.CBufRet.f32 %4612, 2
  %4619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4620 = extractvalue %dx.types.CBufRet.f32 %4619, 0
  %4621 = extractvalue %dx.types.CBufRet.f32 %4619, 1
  %4622 = extractvalue %dx.types.CBufRet.f32 %4619, 2
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 0
  %4625 = extractvalue %dx.types.CBufRet.f32 %4623, 1
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4620, float %4621, float %4622, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = select i1 %164, float %4624, float %4620
  %4628 = select i1 %164, float %4626, float %4621
  %4629 = select i1 %164, float %4625, float %4622
  %4630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4631 = extractvalue %dx.types.CBufRet.f32 %4630, 1
  %4632 = fcmp fast une float %4631, 0.000000e+00
  br i1 %4632, label %4633, label %4650

; <label>:4633                                    ; preds = %4615
  %4634 = fptoui float %63 to i32
  %4635 = fptoui float %64 to i32
  %4636 = lshr i32 %4634, 4
  %4637 = lshr i32 %4635, 4
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 0
  %4640 = fptoui float %4639 to i32
  %4641 = add i32 %4640, 15
  %4642 = lshr i32 %4641, 4
  %4643 = mul i32 %4642, %4637
  %4644 = add i32 %4643, %4636
  %4645 = shl i32 %4644, 3
  %4646 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4645, i32 undef)  ; BufferLoad(srv,index,wot)
  %4647 = extractvalue %dx.types.ResRet.i32 %4646, 0
  %4648 = and i32 %4647, -268435456
  %4649 = icmp eq i32 %4648, -1342177280
  br i1 %4649, label %4660, label %4650

; <label>:4650                                    ; preds = %4633, %4615
  %4651 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4652 = extractvalue %dx.types.CBufRet.f32 %4651, 2
  %4653 = extractvalue %dx.types.CBufRet.f32 %4651, 3
  %4654 = fmul fast float %4652, %63
  %4655 = fmul fast float %4653, %64
  %4656 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %4654, float %4655, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4657 = extractvalue %dx.types.ResRet.f32 %4656, 0
  %4658 = extractvalue %dx.types.ResRet.f32 %4656, 1
  %4659 = extractvalue %dx.types.ResRet.f32 %4656, 2
  br label %4660

; <label>:4660                                    ; preds = %4650, %4633
  %4661 = phi float [ %4657, %4650 ], [ 0.000000e+00, %4633 ]
  %4662 = phi float [ %4658, %4650 ], [ 0.000000e+00, %4633 ]
  %4663 = phi float [ %4659, %4650 ], [ 0.000000e+00, %4633 ]
  %4664 = call float @dx.op.binary.f32(i32 36, float %4662, float %4663)  ; FMin(a,b)
  %4665 = call float @dx.op.binary.f32(i32 36, float %4661, float %4664)  ; FMin(a,b)
  %4666 = fcmp fast ogt float %4665, 0.000000e+00
  br i1 %4666, label %4667, label %4861, !dx.controlflow.hints !75

; <label>:4667                                    ; preds = %4660
  %4668 = fmul fast float %4661, %4627
  %4669 = fmul fast float %4662, %4628
  %4670 = fmul fast float %4663, %4629
  %4671 = fsub fast float %4616, %4590
  %4672 = fsub fast float %4617, %4589
  %4673 = fsub fast float %4618, %4588
  %4674 = call float @dx.op.dot3.f32(i32 55, float %4671, float %4672, float %4673, float %4671, float %4672, float %4673)  ; Dot3(ax,ay,az,bx,by,bz)
  %4675 = call float @dx.op.unary.f32(i32 25, float %4674)  ; Rsqrt(value)
  %4676 = fmul fast float %4675, %4671
  %4677 = fmul fast float %4675, %4672
  %4678 = fmul fast float %4675, %4673
  %4679 = call float @dx.op.dot3.f32(i32 55, float %4616, float %4617, float %4618, float %4597, float %4598, float %4599)  ; Dot3(ax,ay,az,bx,by,bz)
  %4680 = call float @dx.op.dot3.f32(i32 55, float %4587, float %4586, float %4585, float %4676, float %4677, float %4678)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = call float @dx.op.unary.f32(i32 7, float %4679)  ; Saturate(value)
  %4682 = fmul fast float %4681, %4681
  %4683 = fmul fast float %4682, %4608
  %4684 = call float @dx.op.unary.f32(i32 7, float %4683)  ; Saturate(value)
  %4685 = fmul fast float %4684, %4681
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4597, float %4598, float %4599, float %4676, float %4677, float %4678)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = fmul fast float %4686, %4686
  %4688 = call float @dx.op.unary.f32(i32 6, float %4679)  ; FAbs(value)
  %4689 = fsub fast float 1.000000e+00, %4600
  %4690 = call float @dx.op.binary.f32(i32 35, float %4689, float 0x3F847AE140000000)  ; FMax(a,b)
  %4691 = fmul fast float %4690, %4690
  %4692 = fmul fast float %4691, %4691
  %4693 = fsub fast float 1.000000e+00, %4692
  %4694 = fmul fast float %4604, %4604
  %4695 = fmul fast float %4694, %4693
  %4696 = fadd fast float %4695, %4692
  %4697 = bitcast float %4696 to i32
  %4698 = ashr i32 %4697, 1
  %4699 = add nsw i32 %4698, 532487669
  %4700 = bitcast i32 %4699 to float
  %4701 = fadd fast float %4700, %4604
  %4702 = fmul fast float %4692, %4687
  %4703 = fsub fast float 1.000000e+00, %4687
  %4704 = fadd fast float %4703, %4702
  %4705 = fmul fast float %4688, %4688
  %4706 = fmul fast float %4705, %4693
  %4707 = fadd fast float %4706, %4692
  %4708 = bitcast float %4707 to i32
  %4709 = ashr i32 %4708, 1
  %4710 = add nsw i32 %4709, 532487669
  %4711 = bitcast i32 %4710 to float
  %4712 = fadd fast float %4711, %4688
  %4713 = fmul fast float %4704, %4704
  %4714 = fmul fast float %4713, %4701
  %4715 = fmul fast float %4714, %4712
  %4716 = fdiv fast float 0x3FF0A00000000000, %4715
  %4717 = fmul fast float %4716, %4692
  %4718 = call float @dx.op.unary.f32(i32 6, float %4680)  ; FAbs(value)
  %4719 = fsub fast float 1.000000e+00, %4718
  %4720 = bitcast float %4719 to i32
  %4721 = sitofp i32 %4720 to float
  %4722 = fmul fast float %4721, 5.000000e+00
  %4723 = fadd fast float %4722, 0xC1EFBF8940000000
  %4724 = fptosi float %4723 to i32
  %4725 = bitcast i32 %4724 to float
  %4726 = fsub fast float 1.000000e+00, %4591
  %4727 = fsub fast float 1.000000e+00, %4592
  %4728 = fsub fast float 1.000000e+00, %4602
  %4729 = fmul fast float %4725, %4726
  %4730 = fmul fast float %4725, %4727
  %4731 = fmul fast float %4725, %4728
  %4732 = fadd fast float %4729, %4591
  %4733 = fadd fast float %4730, %4592
  %4734 = fadd fast float %4731, %4602
  %4735 = fcmp fast ogt float %3989, 0.000000e+00
  br i1 %4735, label %4736, label %4759

; <label>:4736                                    ; preds = %4667
  %4737 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3989, float %4718, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4738 = extractvalue %dx.types.ResRet.f32 %4737, 0
  %4739 = extractvalue %dx.types.ResRet.f32 %4737, 1
  %4740 = extractvalue %dx.types.ResRet.f32 %4737, 2
  %4741 = fadd fast float %4738, -5.000000e-01
  %4742 = fadd fast float %4739, -5.000000e-01
  %4743 = fadd fast float %4740, -5.000000e-01
  %4744 = fmul fast float %4591, 4.000000e+00
  %4745 = fmul fast float %4744, %4726
  %4746 = fmul fast float %4745, %4741
  %4747 = fmul fast float %4592, 4.000000e+00
  %4748 = fmul fast float %4747, %4727
  %4749 = fmul fast float %4748, %4742
  %4750 = fmul fast float %4602, 4.000000e+00
  %4751 = fmul fast float %4750, %4728
  %4752 = fmul fast float %4751, %4743
  %4753 = fadd fast float %4746, %4732
  %4754 = fadd fast float %4749, %4733
  %4755 = fadd fast float %4752, %4734
  %4756 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4757 = call float @dx.op.unary.f32(i32 7, float %4754)  ; Saturate(value)
  %4758 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  br label %4759

; <label>:4759                                    ; preds = %4736, %4667
  %4760 = phi float [ %4756, %4736 ], [ %4732, %4667 ]
  %4761 = phi float [ %4757, %4736 ], [ %4733, %4667 ]
  %4762 = phi float [ %4758, %4736 ], [ %4734, %4667 ]
  %4763 = fmul fast float %4679, 9.843750e-01
  %4764 = fmul fast float %4600, 9.843750e-01
  %4765 = fadd fast float %4763, 7.812500e-03
  %4766 = fadd fast float %4764, 7.812500e-03
  %4767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %4765, float %4766, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4768 = extractvalue %dx.types.ResRet.f32 %4767, 2
  %4769 = extractvalue %dx.types.ResRet.f32 %4767, 3
  %4770 = fmul fast float %4768, %4591
  %4771 = fmul fast float %4768, %4592
  %4772 = fmul fast float %4768, %4602
  %4773 = fadd fast float %4770, %4769
  %4774 = fadd fast float %4771, %4769
  %4775 = fadd fast float %4772, %4769
  br i1 %4735, label %4776, label %4799

; <label>:4776                                    ; preds = %4759
  %4777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3989, float %4679, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4778 = extractvalue %dx.types.ResRet.f32 %4777, 0
  %4779 = extractvalue %dx.types.ResRet.f32 %4777, 1
  %4780 = extractvalue %dx.types.ResRet.f32 %4777, 2
  %4781 = fadd fast float %4778, -5.000000e-01
  %4782 = fadd fast float %4779, -5.000000e-01
  %4783 = fadd fast float %4780, -5.000000e-01
  %4784 = fmul fast float %4591, 4.000000e+00
  %4785 = fmul fast float %4784, %4726
  %4786 = fmul fast float %4785, %4781
  %4787 = fmul fast float %4592, 4.000000e+00
  %4788 = fmul fast float %4787, %4727
  %4789 = fmul fast float %4788, %4782
  %4790 = fmul fast float %4602, 4.000000e+00
  %4791 = fmul fast float %4790, %4728
  %4792 = fmul fast float %4791, %4783
  %4793 = fadd fast float %4786, %4773
  %4794 = fadd fast float %4789, %4774
  %4795 = fadd fast float %4792, %4775
  %4796 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4797 = call float @dx.op.unary.f32(i32 7, float %4794)  ; Saturate(value)
  %4798 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  br label %4799

; <label>:4799                                    ; preds = %4776, %4759
  %4800 = phi float [ %4796, %4776 ], [ %4773, %4759 ]
  %4801 = phi float [ %4797, %4776 ], [ %4774, %4759 ]
  %4802 = phi float [ %4798, %4776 ], [ %4775, %4759 ]
  %4803 = call float @dx.op.binary.f32(i32 35, float %4801, float %4802)  ; FMax(a,b)
  %4804 = call float @dx.op.binary.f32(i32 35, float %4800, float %4803)  ; FMax(a,b)
  %4805 = fsub fast float 1.000000e+00, %4804
  %4806 = fmul fast float %4760, %4717
  %4807 = fmul fast float %4761, %4717
  %4808 = fmul fast float %4762, %4717
  %4809 = call float @dx.op.dot3.f32(i32 55, float %4594, float %4595, float %4596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4810 = fcmp fast ogt float %4809, 0x3E7FF19E20000000
  %4811 = fdiv fast float 1.000000e+00, %4809
  %4812 = select i1 %4810, float %4811, float 0.000000e+00
  %4813 = fmul fast float %4812, %4594
  %4814 = fmul fast float %4812, %4595
  %4815 = fmul fast float %4812, %4596
  %4816 = fadd fast float %4813, -1.000000e+00
  %4817 = fadd fast float %4814, -1.000000e+00
  %4818 = fadd fast float %4815, -1.000000e+00
  %4819 = fmul fast float %4816, 5.000000e-01
  %4820 = fmul fast float %4817, 5.000000e-01
  %4821 = fmul fast float %4818, 5.000000e-01
  %4822 = fadd fast float %4819, 1.000000e+00
  %4823 = fadd fast float %4820, 1.000000e+00
  %4824 = fadd fast float %4821, 1.000000e+00
  %4825 = fsub fast float 1.000000e+00, %4680
  %4826 = bitcast float %4825 to i32
  %4827 = sitofp i32 %4826 to float
  %4828 = fmul fast float %4827, 5.000000e+00
  %4829 = fadd fast float %4828, 0xC1EFBF8940000000
  %4830 = fptosi float %4829 to i32
  %4831 = bitcast i32 %4830 to float
  %4832 = fmul fast float %4831, %3990
  %4833 = fmul fast float %4805, %4832
  %4834 = fmul fast float %4833, %4822
  %4835 = fmul fast float %4833, %4823
  %4836 = fmul fast float %4833, %4824
  %4837 = fadd fast float %4834, %4806
  %4838 = fadd fast float %4835, %4807
  %4839 = fadd fast float %4836, %4808
  %4840 = fmul fast float %4685, %4668
  %4841 = fmul fast float %4840, %4837
  %4842 = fmul fast float %4685, %4669
  %4843 = fmul fast float %4842, %4838
  %4844 = fmul fast float %4685, %4670
  %4845 = fmul fast float %4844, %4839
  %4846 = fmul fast float %4668, %3986
  %4847 = fmul fast float %4846, %4685
  %4848 = fmul fast float %4847, %4805
  %4849 = fmul fast float %4669, %3986
  %4850 = fmul fast float %4849, %4685
  %4851 = fmul fast float %4850, %4805
  %4852 = fmul fast float %4670, %3986
  %4853 = fmul fast float %4852, %4685
  %4854 = fmul fast float %4853, %4805
  %4855 = fadd fast float %4841, %3982
  %4856 = fmul fast float %4855, %3986
  %4857 = fadd fast float %4843, %3983
  %4858 = fmul fast float %4857, %3986
  %4859 = fadd fast float %4845, %3984
  %4860 = fmul fast float %4859, %3986
  br label %4861

; <label>:4861                                    ; preds = %4799, %4660, %4584
  %4862 = phi float [ %4609, %4584 ], [ %4609, %4660 ], [ %4856, %4799 ]
  %4863 = phi float [ %4610, %4584 ], [ %4610, %4660 ], [ %4858, %4799 ]
  %4864 = phi float [ %4611, %4584 ], [ %4611, %4660 ], [ %4860, %4799 ]
  %4865 = phi float [ 0.000000e+00, %4584 ], [ 0.000000e+00, %4660 ], [ %4848, %4799 ]
  %4866 = phi float [ 0.000000e+00, %4584 ], [ 0.000000e+00, %4660 ], [ %4851, %4799 ]
  %4867 = phi float [ 0.000000e+00, %4584 ], [ 0.000000e+00, %4660 ], [ %4854, %4799 ]
  %4868 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.i32 %4868, 0
  %4870 = icmp eq i32 %4869, 0
  br i1 %4870, label %5324, label %4871

; <label>:4871                                    ; preds = %4861
  %4872 = fptoui float %63 to i32
  %4873 = fptoui float %64 to i32
  %4874 = lshr i32 %4872, 4
  %4875 = lshr i32 %4873, 4
  %4876 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4877 = extractvalue %dx.types.CBufRet.i32 %4876, 0
  %4878 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4875, i32 %4877, i32 %4874)  ; UMad(a,b,c)
  %4879 = add nsw i32 %4869, -1
  %4880 = call i32 @dx.op.binary.i32(i32 37, i32 %4879, i32 0)  ; IMax(a,b)
  %4881 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %4882 = fptoui float %4881 to i32
  %4883 = lshr i32 %4882, 5
  %4884 = call i32 @dx.op.binary.i32(i32 40, i32 %4883, i32 8191)  ; UMin(a,b)
  %4885 = shl i32 %4884, 2
  %4886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4885, i32 undef)  ; BufferLoad(srv,index,wot)
  %4887 = extractvalue %dx.types.ResRet.i32 %4886, 0
  %4888 = lshr i32 %4887, 16
  %4889 = and i32 %4887, 65535
  %4890 = lshr i32 %4887, 21
  %4891 = lshr i32 %4889, 5
  %4892 = call i32 @dx.op.binary.i32(i32 40, i32 %4891, i32 %4880)  ; UMin(a,b)
  %4893 = icmp ugt i32 %4890, %4892
  br i1 %4893, label %5324, label %4894

; <label>:4894                                    ; preds = %4871
  br label %4895

; <label>:4895                                    ; preds = %5314, %4894
  %4896 = phi i32 [ %5321, %5314 ], [ %4890, %4894 ]
  %4897 = phi float [ %5315, %5314 ], [ %4862, %4894 ]
  %4898 = phi float [ %5316, %5314 ], [ %4863, %4894 ]
  %4899 = phi float [ %5317, %5314 ], [ %4864, %4894 ]
  %4900 = phi float [ %5318, %5314 ], [ %4865, %4894 ]
  %4901 = phi float [ %5319, %5314 ], [ %4866, %4894 ]
  %4902 = phi float [ %5320, %5314 ], [ %4867, %4894 ]
  %4903 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4904 = extractvalue %dx.types.CBufRet.i32 %4903, 0
  %4905 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4878, i32 %4904, i32 %4896)  ; UMad(a,b,c)
  %4906 = shl i32 %4905, 2
  %4907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4906, i32 undef)  ; BufferLoad(srv,index,wot)
  %4908 = extractvalue %dx.types.ResRet.i32 %4907, 0
  %4909 = shl i32 %4896, 5
  %4910 = sub nsw i32 %4888, %4909
  %4911 = call i32 @dx.op.binary.i32(i32 37, i32 %4910, i32 0)  ; IMax(a,b)
  %4912 = call i32 @dx.op.binary.i32(i32 38, i32 %4911, i32 31)  ; IMin(a,b)
  %4913 = sub nsw i32 1, %4888
  %4914 = add nsw i32 %4913, %4889
  %4915 = call i32 @dx.op.binary.i32(i32 37, i32 %4914, i32 0)  ; IMax(a,b)
  %4916 = call i32 @dx.op.binary.i32(i32 38, i32 %4915, i32 32)  ; IMin(a,b)
  %4917 = and i32 %4916, 31
  %4918 = shl i32 -1, %4917
  %4919 = xor i32 %4918, -1
  %4920 = and i32 %4912, 31
  %4921 = shl i32 %4919, %4920
  %4922 = icmp eq i32 %4916, 32
  %4923 = select i1 %4922, i32 -1, i32 %4921
  %4924 = and i32 %4923, %4908
  %4925 = icmp eq i32 %4924, 0
  br i1 %4925, label %5314, label %4926

; <label>:4926                                    ; preds = %4895
  br label %4927

; <label>:4927                                    ; preds = %5007, %4926
  %4928 = phi i32 [ %4939, %5007 ], [ %4924, %4926 ]
  %4929 = phi float [ %5008, %5007 ], [ %4897, %4926 ]
  %4930 = phi float [ %5009, %5007 ], [ %4898, %4926 ]
  %4931 = phi float [ %5010, %5007 ], [ %4899, %4926 ]
  %4932 = phi float [ %5011, %5007 ], [ %4900, %4926 ]
  %4933 = phi float [ %5012, %5007 ], [ %4901, %4926 ]
  %4934 = phi float [ %5013, %5007 ], [ %4902, %4926 ]
  %4935 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4928)  ; FirstbitLo(value)
  %4936 = add i32 %4935, %4909
  %4937 = and i32 %4935, 31
  %4938 = shl i32 1, %4937
  %4939 = xor i32 %4938, %4928
  %4940 = mul i32 %4936, 112
  %4941 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4940, i32 undef)  ; BufferLoad(srv,index,wot)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.ResRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.ResRet.f32 %4941, 2
  %4945 = or i32 %4940, 12
  %4946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4945, i32 undef)  ; BufferLoad(srv,index,wot)
  %4947 = extractvalue %dx.types.ResRet.f32 %4946, 0
  %4948 = add i32 %4940, 44
  %4949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4948, i32 undef)  ; BufferLoad(srv,index,wot)
  %4950 = extractvalue %dx.types.ResRet.f32 %4949, 0
  %4951 = add i32 %4940, 48
  %4952 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4951, i32 undef)  ; BufferLoad(srv,index,wot)
  %4953 = extractvalue %dx.types.ResRet.f32 %4952, 0
  %4954 = extractvalue %dx.types.ResRet.f32 %4952, 1
  %4955 = extractvalue %dx.types.ResRet.f32 %4952, 2
  %4956 = add i32 %4940, 80
  %4957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4956, i32 undef)  ; BufferLoad(srv,index,wot)
  %4958 = extractvalue %dx.types.ResRet.f32 %4957, 1
  %4959 = extractvalue %dx.types.ResRet.f32 %4957, 2
  %4960 = call float @dx.op.dot3.f32(i32 55, float %4942, float %4943, float %4944, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4961 = select i1 %164, float %4958, float %4942
  %4962 = select i1 %164, float %4960, float %4943
  %4963 = select i1 %164, float %4959, float %4944
  %4964 = fsub fast float %4953, %122
  %4965 = fsub fast float %4954, %123
  %4966 = fsub fast float %4955, %124
  %4967 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4965, float %4966, float %4964, float %4965, float %4966)  ; Dot3(ax,ay,az,bx,by,bz)
  %4968 = call float @dx.op.unary.f32(i32 24, float %4967)  ; Sqrt(value)
  %4969 = fdiv fast float 1.000000e+00, %4968
  %4970 = fmul fast float %4969, %4964
  %4971 = fmul fast float %4969, %4965
  %4972 = fmul fast float %4969, %4966
  %4973 = fadd fast float %4968, %4947
  %4974 = fdiv fast float 1.000000e+00, %4973
  %4975 = fmul float %4950, %4974
  %4976 = fmul float %4975, %4975
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = and i32 %4938, %4924
  %4979 = icmp eq i32 %4978, 0
  br i1 %4979, label %5002, label %4980, !dx.controlflow.hints !76

; <label>:4980                                    ; preds = %4927
  %4981 = lshr i32 %4872, 5
  %4982 = lshr i32 %4873, 5
  %4983 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %4981, i32 %4982, i32 %4936, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4984 = extractvalue %dx.types.ResRet.i32 %4983, 0
  %4985 = and i32 %4984, 3
  %4986 = icmp eq i32 %4985, 0
  %4987 = select i1 %4986, float 1.000000e+00, float 0.000000e+00
  %4988 = icmp eq i32 %4985, 3
  br i1 %4988, label %4989, label %5002

; <label>:4989                                    ; preds = %4980
  %4990 = lshr i32 %4984, 10
  %4991 = and i32 %4990, 8160
  %4992 = and i32 %4873, 31
  %4993 = or i32 %4991, %4992
  %4994 = lshr i32 %4984, 1
  %4995 = and i32 %4994, 16352
  %4996 = and i32 %4872, 31
  %4997 = or i32 %4995, %4996
  %4998 = lshr i32 %4984, 23
  %4999 = and i32 %4998, 255
  %5000 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %4997, i32 %4993, i32 %4999, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5001 = extractvalue %dx.types.ResRet.f32 %5000, 0
  br label %5002

; <label>:5002                                    ; preds = %4989, %4980, %4927
  %5003 = phi float [ %5001, %4989 ], [ %4987, %4980 ], [ 0.000000e+00, %4927 ]
  %5004 = call float @dx.op.binary.f32(i32 36, float %5003, float %5003)  ; FMin(a,b)
  %5005 = call float @dx.op.binary.f32(i32 36, float %5003, float %5004)  ; FMin(a,b)
  %5006 = fcmp fast ogt float %5005, 0.000000e+00
  br i1 %5006, label %5015, label %5007, !dx.controlflow.hints !77

; <label>:5007                                    ; preds = %5254, %5002
  %5008 = phi float [ %4929, %5002 ], [ %5310, %5254 ]
  %5009 = phi float [ %4930, %5002 ], [ %5311, %5254 ]
  %5010 = phi float [ %4931, %5002 ], [ %5312, %5254 ]
  %5011 = phi float [ %4932, %5002 ], [ %5304, %5254 ]
  %5012 = phi float [ %4933, %5002 ], [ %5305, %5254 ]
  %5013 = phi float [ %4934, %5002 ], [ %5306, %5254 ]
  %5014 = icmp eq i32 %4928, %4938
  br i1 %5014, label %5313, label %4927

; <label>:5015                                    ; preds = %5002
  %5016 = fmul fast float %5003, %4961
  %5017 = fmul fast float %5003, %4962
  %5018 = fmul fast float %5003, %4963
  %5019 = fsub fast float %4955, %4390
  %5020 = fcmp fast ogt float %5019, 0.000000e+00
  %5021 = fsub fast float %124, %4390
  %5022 = fcmp fast ogt float %5021, 0.000000e+00
  %5023 = xor i1 %5022, %5020
  %5024 = fsub fast float %4390, %4955
  %5025 = fmul fast float %5024, 2.000000e+00
  %5026 = fadd fast float %5025, %4955
  %5027 = select i1 %5023, float %4955, float %5026
  %5028 = fsub fast float %5027, %124
  %5029 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4965, float %5028, float %4964, float %4965, float %5028)  ; Dot3(ax,ay,az,bx,by,bz)
  %5030 = call float @dx.op.unary.f32(i32 25, float %5029)  ; Rsqrt(value)
  %5031 = fmul fast float %5030, %4964
  %5032 = fmul fast float %5030, %4965
  %5033 = fmul fast float %5030, %5028
  %5034 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4398)  ; Dot3(ax,ay,az,bx,by,bz)
  %5035 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5031, float %5032, float %5033)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = fdiv fast float 1.000000e+00, %5035
  %5037 = fmul fast float %5036, %5034
  %5038 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5021, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5039 = fcmp fast ogt float %5038, 0.000000e+00
  %5040 = fcmp fast olt float %5038, 0.000000e+00
  %5041 = zext i1 %5039 to i32
  %5042 = zext i1 %5040 to i32
  %5043 = sub nsw i32 %5041, %5042
  %5044 = sitofp i32 %5043 to float
  %5045 = fsub fast float %5027, %4390
  %5046 = call float @dx.op.dot3.f32(i32 55, float %4964, float %4965, float %5045, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5047 = fcmp fast ogt float %5046, 0.000000e+00
  %5048 = fcmp fast olt float %5046, 0.000000e+00
  %5049 = zext i1 %5047 to i32
  %5050 = zext i1 %5048 to i32
  %5051 = sub nsw i32 %5049, %5050
  %5052 = sitofp i32 %5051 to float
  %5053 = fcmp fast une float %5044, %5052
  br i1 %5053, label %5054, label %5064

; <label>:5054                                    ; preds = %5015
  %5055 = fmul fast float %5037, %5033
  %5056 = fmul fast float %5037, %5032
  %5057 = fmul fast float %5037, %5031
  %5058 = fmul fast float %5057, %5057
  %5059 = fmul fast float %5056, %5056
  %5060 = fadd fast float %5058, %5059
  %5061 = fmul fast float %5055, %5055
  %5062 = fadd fast float %5060, %5061
  %5063 = call float @dx.op.unary.f32(i32 24, float %5062)  ; Sqrt(value)
  br label %5076

; <label>:5064                                    ; preds = %5015
  %5065 = icmp slt i32 %5043, 0
  br i1 %5065, label %5066, label %5076

; <label>:5066                                    ; preds = %5064
  %5067 = fsub fast float %122, %4953
  %5068 = fsub fast float %123, %4954
  %5069 = fsub fast float %124, %5027
  %5070 = fmul fast float %5067, %5067
  %5071 = fmul fast float %5068, %5068
  %5072 = fadd fast float %5070, %5071
  %5073 = fmul fast float %5069, %5069
  %5074 = fadd fast float %5072, %5073
  %5075 = call float @dx.op.unary.f32(i32 24, float %5074)  ; Sqrt(value)
  br label %5076

; <label>:5076                                    ; preds = %5066, %5064, %5054
  %5077 = phi float [ %5063, %5054 ], [ %5075, %5066 ], [ 0.000000e+00, %5064 ]
  %5078 = and i1 %5022, %5020
  %5079 = fsub fast float -0.000000e+00, %5077
  %5080 = select i1 %5078, float -0.000000e+00, float %5079
  %5081 = fmul fast float %4391, 0x3FF7154760000000
  %5082 = fmul fast float %5081, %5080
  %5083 = fmul fast float %4392, 0x3FF7154760000000
  %5084 = fmul fast float %5083, %5080
  %5085 = fmul fast float %4393, 0x3FF7154760000000
  %5086 = fmul fast float %5085, %5080
  %5087 = call float @dx.op.unary.f32(i32 21, float %5082)  ; Exp(value)
  %5088 = call float @dx.op.unary.f32(i32 21, float %5084)  ; Exp(value)
  %5089 = call float @dx.op.unary.f32(i32 21, float %5086)  ; Exp(value)
  %5090 = call float @dx.op.unary.f32(i32 7, float %5087)  ; Saturate(value)
  %5091 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5092 = call float @dx.op.unary.f32(i32 7, float %5089)  ; Saturate(value)
  %5093 = fmul fast float %5016, %5090
  %5094 = fmul fast float %5017, %5091
  %5095 = fmul fast float %5018, %5092
  %5096 = fsub fast float %4970, %4590
  %5097 = fsub fast float %4971, %4589
  %5098 = fsub fast float %4972, %4588
  %5099 = call float @dx.op.dot3.f32(i32 55, float %5096, float %5097, float %5098, float %5096, float %5097, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5100 = call float @dx.op.unary.f32(i32 25, float %5099)  ; Rsqrt(value)
  %5101 = fmul fast float %5100, %5096
  %5102 = fmul fast float %5100, %5097
  %5103 = fmul fast float %5100, %5098
  %5104 = call float @dx.op.dot3.f32(i32 55, float %4970, float %4971, float %4972, float %4597, float %4598, float %4599)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = call float @dx.op.dot3.f32(i32 55, float %4587, float %4586, float %4585, float %5101, float %5102, float %5103)  ; Dot3(ax,ay,az,bx,by,bz)
  %5106 = call float @dx.op.unary.f32(i32 7, float %5104)  ; Saturate(value)
  %5107 = fmul fast float %5106, %4977
  %5108 = fmul fast float %5106, %5106
  %5109 = fmul fast float %5108, %4608
  %5110 = call float @dx.op.unary.f32(i32 7, float %5109)  ; Saturate(value)
  %5111 = fmul fast float %5107, %5110
  %5112 = bitcast float %4967 to i32
  %5113 = ashr i32 %5112, 1
  %5114 = sub nsw i32 1597463007, %5113
  %5115 = bitcast i32 %5114 to float
  %5116 = fmul fast float %5115, %4964
  %5117 = fmul fast float %5115, %4965
  %5118 = fmul fast float %5115, %4966
  %5119 = fsub fast float %5116, %4590
  %5120 = fsub fast float %5117, %4589
  %5121 = fsub fast float %5118, %4588
  %5122 = call float @dx.op.dot3.f32(i32 55, float %5119, float %5120, float %5121, float %5119, float %5120, float %5121)  ; Dot3(ax,ay,az,bx,by,bz)
  %5123 = call float @dx.op.unary.f32(i32 25, float %5122)  ; Rsqrt(value)
  %5124 = fmul fast float %5119, %5123
  %5125 = fmul fast float %5120, %5123
  %5126 = fmul fast float %5121, %5123
  %5127 = call float @dx.op.dot3.f32(i32 55, float %4597, float %4598, float %4599, float %5124, float %5125, float %5126)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = fmul fast float %5127, %5127
  %5129 = call float @dx.op.unary.f32(i32 6, float %5104)  ; FAbs(value)
  %5130 = fsub fast float 1.000000e+00, %4600
  %5131 = call float @dx.op.binary.f32(i32 35, float %5130, float 0x3F847AE140000000)  ; FMax(a,b)
  %5132 = fmul fast float %5131, %5131
  %5133 = fmul fast float %5132, %5132
  %5134 = fsub fast float 1.000000e+00, %5133
  %5135 = fmul fast float %4604, %4604
  %5136 = fmul fast float %5135, %5134
  %5137 = fadd fast float %5136, %5133
  %5138 = bitcast float %5137 to i32
  %5139 = ashr i32 %5138, 1
  %5140 = add nsw i32 %5139, 532487669
  %5141 = bitcast i32 %5140 to float
  %5142 = fadd fast float %5141, %4604
  %5143 = fmul fast float %5133, %5128
  %5144 = fsub fast float 1.000000e+00, %5128
  %5145 = fadd fast float %5144, %5143
  %5146 = fmul fast float %5129, %5129
  %5147 = fmul fast float %5146, %5134
  %5148 = fadd fast float %5147, %5133
  %5149 = bitcast float %5148 to i32
  %5150 = ashr i32 %5149, 1
  %5151 = add nsw i32 %5150, 532487669
  %5152 = bitcast i32 %5151 to float
  %5153 = fadd fast float %5152, %5129
  %5154 = fmul fast float %5145, %5145
  %5155 = fmul fast float %5154, %5142
  %5156 = fmul fast float %5155, %5153
  %5157 = fdiv fast float 1.000000e+00, %5156
  %5158 = bitcast float %5133 to i32
  %5159 = sitofp i32 %5158 to float
  %5160 = fmul fast float %5159, 0x3FE7F73180000000
  %5161 = fadd fast float %5160, 0x41AFE27C40000000
  %5162 = fptosi float %5161 to i32
  %5163 = bitcast i32 %5162 to float
  %5164 = fmul fast float %4950, 0x3FD80E9D60000000
  %5165 = fmul fast float %5164, %5115
  %5166 = fadd fast float %5163, %5165
  %5167 = bitcast float %5166 to i32
  %5168 = sub nsw i32 2129859010, %5167
  %5169 = bitcast i32 %5168 to float
  %5170 = fmul fast float %5133, %5157
  %5171 = fmul fast float %5170, %5163
  %5172 = fmul fast float %5171, %5169
  %5173 = call float @dx.op.unary.f32(i32 6, float %5105)  ; FAbs(value)
  %5174 = fsub fast float 1.000000e+00, %5173
  %5175 = bitcast float %5174 to i32
  %5176 = sitofp i32 %5175 to float
  %5177 = fmul fast float %5176, 5.000000e+00
  %5178 = fadd fast float %5177, 0xC1EFBF8940000000
  %5179 = fptosi float %5178 to i32
  %5180 = bitcast i32 %5179 to float
  %5181 = fsub fast float 1.000000e+00, %4591
  %5182 = fsub fast float 1.000000e+00, %4592
  %5183 = fsub fast float 1.000000e+00, %4602
  %5184 = fmul fast float %5180, %5181
  %5185 = fmul fast float %5180, %5182
  %5186 = fmul fast float %5180, %5183
  %5187 = fadd fast float %5184, %4591
  %5188 = fadd fast float %5185, %4592
  %5189 = fadd fast float %5186, %4602
  %5190 = fcmp fast ogt float %3989, 0.000000e+00
  br i1 %5190, label %5191, label %5214

; <label>:5191                                    ; preds = %5076
  %5192 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3989, float %5173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5193 = extractvalue %dx.types.ResRet.f32 %5192, 0
  %5194 = extractvalue %dx.types.ResRet.f32 %5192, 1
  %5195 = extractvalue %dx.types.ResRet.f32 %5192, 2
  %5196 = fadd fast float %5193, -5.000000e-01
  %5197 = fadd fast float %5194, -5.000000e-01
  %5198 = fadd fast float %5195, -5.000000e-01
  %5199 = fmul fast float %4591, 4.000000e+00
  %5200 = fmul fast float %5199, %5181
  %5201 = fmul fast float %5200, %5196
  %5202 = fmul fast float %4592, 4.000000e+00
  %5203 = fmul fast float %5202, %5182
  %5204 = fmul fast float %5203, %5197
  %5205 = fmul fast float %4602, 4.000000e+00
  %5206 = fmul fast float %5205, %5183
  %5207 = fmul fast float %5206, %5198
  %5208 = fadd fast float %5201, %5187
  %5209 = fadd fast float %5204, %5188
  %5210 = fadd fast float %5207, %5189
  %5211 = call float @dx.op.unary.f32(i32 7, float %5208)  ; Saturate(value)
  %5212 = call float @dx.op.unary.f32(i32 7, float %5209)  ; Saturate(value)
  %5213 = call float @dx.op.unary.f32(i32 7, float %5210)  ; Saturate(value)
  br label %5214

; <label>:5214                                    ; preds = %5191, %5076
  %5215 = phi float [ %5211, %5191 ], [ %5187, %5076 ]
  %5216 = phi float [ %5212, %5191 ], [ %5188, %5076 ]
  %5217 = phi float [ %5213, %5191 ], [ %5189, %5076 ]
  %5218 = fmul fast float %5104, 9.843750e-01
  %5219 = fmul fast float %4600, 9.843750e-01
  %5220 = fadd fast float %5218, 7.812500e-03
  %5221 = fadd fast float %5219, 7.812500e-03
  %5222 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5220, float %5221, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5223 = extractvalue %dx.types.ResRet.f32 %5222, 2
  %5224 = extractvalue %dx.types.ResRet.f32 %5222, 3
  %5225 = fmul fast float %5223, %4591
  %5226 = fmul fast float %5223, %4592
  %5227 = fmul fast float %5223, %4602
  %5228 = fadd fast float %5225, %5224
  %5229 = fadd fast float %5226, %5224
  %5230 = fadd fast float %5227, %5224
  br i1 %5190, label %5231, label %5254

; <label>:5231                                    ; preds = %5214
  %5232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %3989, float %5104, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5233 = extractvalue %dx.types.ResRet.f32 %5232, 0
  %5234 = extractvalue %dx.types.ResRet.f32 %5232, 1
  %5235 = extractvalue %dx.types.ResRet.f32 %5232, 2
  %5236 = fadd fast float %5233, -5.000000e-01
  %5237 = fadd fast float %5234, -5.000000e-01
  %5238 = fadd fast float %5235, -5.000000e-01
  %5239 = fmul fast float %4591, 4.000000e+00
  %5240 = fmul fast float %5239, %5181
  %5241 = fmul fast float %5240, %5236
  %5242 = fmul fast float %4592, 4.000000e+00
  %5243 = fmul fast float %5242, %5182
  %5244 = fmul fast float %5243, %5237
  %5245 = fmul fast float %4602, 4.000000e+00
  %5246 = fmul fast float %5245, %5183
  %5247 = fmul fast float %5246, %5238
  %5248 = fadd fast float %5241, %5228
  %5249 = fadd fast float %5244, %5229
  %5250 = fadd fast float %5247, %5230
  %5251 = call float @dx.op.unary.f32(i32 7, float %5248)  ; Saturate(value)
  %5252 = call float @dx.op.unary.f32(i32 7, float %5249)  ; Saturate(value)
  %5253 = call float @dx.op.unary.f32(i32 7, float %5250)  ; Saturate(value)
  br label %5254

; <label>:5254                                    ; preds = %5231, %5214
  %5255 = phi float [ %5251, %5231 ], [ %5228, %5214 ]
  %5256 = phi float [ %5252, %5231 ], [ %5229, %5214 ]
  %5257 = phi float [ %5253, %5231 ], [ %5230, %5214 ]
  %5258 = call float @dx.op.binary.f32(i32 35, float %5256, float %5257)  ; FMax(a,b)
  %5259 = call float @dx.op.binary.f32(i32 35, float %5255, float %5258)  ; FMax(a,b)
  %5260 = fsub fast float 1.000000e+00, %5259
  %5261 = fmul fast float %5215, %5172
  %5262 = fmul fast float %5216, %5172
  %5263 = fmul fast float %5217, %5172
  %5264 = call float @dx.op.dot3.f32(i32 55, float %4594, float %4595, float %4596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5265 = fcmp fast ogt float %5264, 0x3E7FF19E20000000
  %5266 = fdiv fast float 1.000000e+00, %5264
  %5267 = select i1 %5265, float %5266, float 0.000000e+00
  %5268 = fmul fast float %5267, %4594
  %5269 = fmul fast float %5267, %4595
  %5270 = fmul fast float %5267, %4596
  %5271 = fadd fast float %5268, -1.000000e+00
  %5272 = fadd fast float %5269, -1.000000e+00
  %5273 = fadd fast float %5270, -1.000000e+00
  %5274 = fmul fast float %5271, 5.000000e-01
  %5275 = fmul fast float %5272, 5.000000e-01
  %5276 = fmul fast float %5273, 5.000000e-01
  %5277 = fadd fast float %5274, 1.000000e+00
  %5278 = fadd fast float %5275, 1.000000e+00
  %5279 = fadd fast float %5276, 1.000000e+00
  %5280 = fsub fast float 1.000000e+00, %5105
  %5281 = bitcast float %5280 to i32
  %5282 = sitofp i32 %5281 to float
  %5283 = fmul fast float %5282, 5.000000e+00
  %5284 = fadd fast float %5283, 0xC1EFBF8940000000
  %5285 = fptosi float %5284 to i32
  %5286 = bitcast i32 %5285 to float
  %5287 = fmul fast float %5286, %3990
  %5288 = fmul fast float %5260, %5287
  %5289 = fmul fast float %5288, %5277
  %5290 = fmul fast float %5288, %5278
  %5291 = fmul fast float %5288, %5279
  %5292 = fadd fast float %5289, %5261
  %5293 = fadd fast float %5290, %5262
  %5294 = fadd fast float %5291, %5263
  %5295 = fmul fast float %5093, %3986
  %5296 = fmul fast float %5295, %5111
  %5297 = fmul fast float %5296, %5260
  %5298 = fmul fast float %5094, %3986
  %5299 = fmul fast float %5298, %5111
  %5300 = fmul fast float %5299, %5260
  %5301 = fmul fast float %5095, %3986
  %5302 = fmul fast float %5301, %5111
  %5303 = fmul fast float %5302, %5260
  %5304 = fadd fast float %5297, %4932
  %5305 = fadd fast float %5300, %4933
  %5306 = fadd fast float %5303, %4934
  %5307 = fmul fast float %5296, %5292
  %5308 = fmul fast float %5299, %5293
  %5309 = fmul fast float %5302, %5294
  %5310 = fadd fast float %5307, %4929
  %5311 = fadd fast float %5308, %4930
  %5312 = fadd fast float %5309, %4931
  br label %5007

; <label>:5313                                    ; preds = %5007
  br label %5314

; <label>:5314                                    ; preds = %5313, %4895
  %5315 = phi float [ %4897, %4895 ], [ %5008, %5313 ]
  %5316 = phi float [ %4898, %4895 ], [ %5009, %5313 ]
  %5317 = phi float [ %4899, %4895 ], [ %5010, %5313 ]
  %5318 = phi float [ %4900, %4895 ], [ %5011, %5313 ]
  %5319 = phi float [ %4901, %4895 ], [ %5012, %5313 ]
  %5320 = phi float [ %4902, %4895 ], [ %5013, %5313 ]
  %5321 = add i32 %4896, 1
  %5322 = icmp ugt i32 %5321, %4892
  br i1 %5322, label %5323, label %4895

; <label>:5323                                    ; preds = %5314
  br label %5324

; <label>:5324                                    ; preds = %5323, %4871, %4861
  %5325 = phi float [ %4862, %4861 ], [ %4862, %4871 ], [ %5315, %5323 ]
  %5326 = phi float [ %4863, %4861 ], [ %4863, %4871 ], [ %5316, %5323 ]
  %5327 = phi float [ %4864, %4861 ], [ %4864, %4871 ], [ %5317, %5323 ]
  %5328 = phi float [ %4865, %4861 ], [ %4865, %4871 ], [ %5318, %5323 ]
  %5329 = phi float [ %4866, %4861 ], [ %4866, %4871 ], [ %5319, %5323 ]
  %5330 = phi float [ %4867, %4861 ], [ %4867, %4871 ], [ %5320, %5323 ]
  %5331 = call float @dx.op.unary.f32(i32 24, float %4594)  ; Sqrt(value)
  %5332 = call float @dx.op.unary.f32(i32 24, float %4595)  ; Sqrt(value)
  %5333 = call float @dx.op.unary.f32(i32 24, float %4596)  ; Sqrt(value)
  %5334 = fmul fast float %5331, %5328
  %5335 = fmul fast float %5332, %5329
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 0
  br i1 %164, label %5338, label %5359

; <label>:5338                                    ; preds = %5324
  %5339 = fadd fast float %5330, %3992
  %5340 = fmul fast float %5339, %3993
  %5341 = fsub fast float 1.000000e+00, %3993
  %5342 = call float @dx.op.unary.f32(i32 7, float %5341)  ; Saturate(value)
  %5343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5344 = extractvalue %dx.types.CBufRet.f32 %5343, 3
  %5345 = fmul fast float %5344, %5342
  %5346 = fadd fast float %5345, %5340
  %5347 = fsub fast float 1.000000e+00, %4604
  %5348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5348, 0
  %5350 = fmul fast float %5349, %5347
  %5351 = fsub fast float %5346, %5350
  %5352 = fadd fast float %5335, %5334
  %5353 = fmul fast float %5337, %5352
  %5354 = extractvalue %dx.types.CBufRet.f32 %5343, 1
  %5355 = fsub fast float %5351, %5354
  %5356 = extractvalue %dx.types.CBufRet.f32 %5343, 2
  %5357 = fmul fast float %5355, %5356
  %5358 = call float @dx.op.unary.f32(i32 7, float %5357)  ; Saturate(value)
  br label %5375

; <label>:5359                                    ; preds = %5324
  %5360 = fmul fast float %5333, %5330
  %5361 = fmul fast float %5337, %5334
  %5362 = fmul fast float %5337, %5335
  %5363 = fmul fast float %5360, %5337
  %5364 = add i32 %35, 356
  %5365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %5364, i32 undef)  ; BufferLoad(srv,index,wot)
  %5366 = extractvalue %dx.types.ResRet.i32 %5365, 0
  %5367 = and i32 %5366, 32
  %5368 = icmp eq i32 %5367, 0
  br i1 %5368, label %5375, label %5369

; <label>:5369                                    ; preds = %5359
  %5370 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5371 = extractvalue %dx.types.CBufRet.f32 %5370, 0
  %5372 = fmul fast float %5371, 0x3FE99999A0000000
  %5373 = fadd fast float %5371, %5361
  %5374 = fadd fast float %5372, %5363
  br label %5375

; <label>:5375                                    ; preds = %5369, %5359, %5338
  %5376 = phi float [ %5353, %5338 ], [ %5373, %5369 ], [ %5361, %5359 ]
  %5377 = phi float [ %5358, %5338 ], [ %5362, %5369 ], [ %5362, %5359 ]
  %5378 = phi float [ 1.000000e+00, %5338 ], [ %5374, %5369 ], [ %5363, %5359 ]
  %5379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5380 = extractvalue %dx.types.CBufRet.f32 %5379, 0
  %5381 = fmul fast float %5380, %5326
  %5382 = fmul fast float %5380, %5327
  %5383 = fadd fast float %5326, %5325
  %5384 = select i1 %164, float %5383, float %5325
  %5385 = fmul float %5384, %5380
  %5386 = select i1 %164, float 0.000000e+00, float %5381
  %5387 = select i1 %164, float 0.000000e+00, float %5382
  %5388 = fmul fast float %5376, %5331
  %5389 = fmul fast float %5377, %5332
  %5390 = fmul fast float %5378, %5333
  %5391 = fadd fast float %5385, %5388
  %5392 = fadd fast float %5386, %5389
  %5393 = fadd fast float %5387, %5390
  %5394 = select i1 %164, float %5377, float %5392
  %5395 = select i1 %164, float %5378, float %5393
  %5396 = call float @dx.op.binary.f32(i32 36, float %5391, float 3.225500e+04)  ; FMin(a,b)
  %5397 = call float @dx.op.binary.f32(i32 36, float %5394, float 3.225500e+04)  ; FMin(a,b)
  %5398 = call float @dx.op.binary.f32(i32 36, float %5395, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5396)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5397)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5398)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!47 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
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
!62 = !{i32 5, !"SH_RED", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 5, i8 0, null}
!63 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 6, i8 0, null}
!64 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !52, i8 2, i32 1, i8 4, i32 7, i8 0, null}
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
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

