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
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: c11337553ba3b0b42215224593c0ceb0
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
; Number of inputs: 44, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43 }
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
  %33 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %34 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %70 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %71 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %72 = extractvalue %dx.types.CBufRet.f32 %71, 0
  %73 = fmul fast float %72, %66
  %74 = fmul fast float %72, %67
  %75 = call float @dx.op.dot3.f32(i32 55, float %58, float %59, float %60, float %58, float %59, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %76 = bitcast float %75 to i32
  %77 = ashr i32 %76, 1
  %78 = sub nsw i32 1597250115, %77
  %79 = bitcast i32 %78 to float
  %80 = fmul fast float %79, %58
  %81 = fmul fast float %79, %59
  %82 = fmul fast float %79, %60
  %83 = fmul fast float %59, %56
  %84 = fmul fast float %60, %55
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %60, %54
  %87 = fmul fast float %58, %56
  %88 = fsub fast float %86, %87
  %89 = fmul fast float %58, %55
  %90 = fmul fast float %59, %54
  %91 = fsub fast float %89, %90
  %92 = fmul fast float %85, %57
  %93 = fmul fast float %88, %57
  %94 = fmul fast float %91, %57
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 3
  %98 = fmul fast float %73, 2.000000e+00
  %99 = fmul fast float %98, %96
  %100 = fmul fast float %74, 2.000000e+00
  %101 = fmul fast float %100, %97
  %102 = fsub fast float 1.000000e+00, %99
  %103 = fsub fast float 1.000000e+00, %101
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %107 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %108 = fmul fast float %102, %105
  %109 = fmul fast float %102, %106
  %110 = fmul fast float %102, %107
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = fmul fast float %103, %112
  %116 = fmul fast float %103, %113
  %117 = fmul fast float %103, %114
  %118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %119 = extractvalue %dx.types.CBufRet.f32 %118, 0
  %120 = extractvalue %dx.types.CBufRet.f32 %118, 1
  %121 = extractvalue %dx.types.CBufRet.f32 %118, 2
  %122 = fadd fast float %115, %119
  %123 = fadd fast float %122, %108
  %124 = fadd fast float %116, %120
  %125 = fadd fast float %124, %109
  %126 = fadd fast float %117, %121
  %127 = fadd fast float %126, %110
  %128 = fmul fast float %123, %68
  %129 = fmul fast float %125, %68
  %130 = fmul fast float %127, %68
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 3
  %134 = fmul fast float %132, %73
  %135 = fmul fast float %133, %74
  %136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %137 = extractvalue %dx.types.ResRet.i32 %136, 0
  %138 = and i32 %137, 114688
  %139 = icmp ne i32 %138, 0
  %140 = select i1 %139, float %134, float 0.000000e+00
  %141 = select i1 %139, float %135, float 0.000000e+00
  %142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %30, float %140, float %141, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %143 = extractvalue %dx.types.ResRet.f32 %142, 0
  %144 = fmul fast float %143, 2.550000e+02
  %145 = fptoui float %144 to i32
  %146 = select i1 %139, i32 %145, i32 0
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.i32 %148, 3
  %150 = and i32 %149, 3
  %151 = icmp ne i32 %150, 0
  %152 = and i32 %149, 4
  %153 = icmp ne i32 %152, 0
  %154 = and i1 %151, %153
  br i1 %154, label %155, label %166

; <label>:155                                     ; preds = %0
  %156 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %157 = fmul fast float %156, %74
  %158 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %159 = fmul fast float %158, %73
  %160 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %29, float %159, float %157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %161 = extractvalue %dx.types.ResRet.f32 %160, 0
  %162 = fsub fast float 1.000000e+00, %161
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = extractvalue %dx.types.CBufRet.f32 %163, 0
  %165 = fcmp fast olt float %162, %164
  br label %169

; <label>:166                                     ; preds = %0
  %167 = icmp eq i32 %152, 0
  %168 = and i1 %151, %167
  br label %169

; <label>:169                                     ; preds = %166, %155
  %170 = phi i1 [ %165, %155 ], [ %168, %166 ]
  %171 = add i32 %33, 156
  %172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %171, i32 undef)  ; BufferLoad(srv,index,wot)
  %173 = extractvalue %dx.types.ResRet.i32 %172, 0
  %174 = shl i32 %173, 4
  %175 = and i32 %174, 32752
  %176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %175)  ; LegacyF16ToF32(value)
  %177 = lshr i32 %173, 7
  %178 = and i32 %177, 32752
  %179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %178)  ; LegacyF16ToF32(value)
  %180 = lshr i32 %173, 22
  %181 = shl nuw nsw i32 %180, 5
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = add i32 %33, 216
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = and i32 %185, 255
  %187 = uitofp i32 %186 to float
  %188 = fmul fast float %187, 0x3F70101020000000
  %189 = lshr i32 %185, 8
  %190 = and i32 %189, 255
  %191 = uitofp i32 %190 to float
  %192 = fmul fast float %191, 0x3F70101020000000
  %193 = lshr i32 %185, 16
  %194 = and i32 %193, 255
  %195 = uitofp i32 %194 to float
  %196 = fmul fast float %195, 0x3F70101020000000
  %197 = add i32 %33, 36
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = and i32 %199, 65535
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %199, 16
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = add i32 %33, 288
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = and i32 %206, 65535
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = lshr i32 %206, 16
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = fmul fast float %208, 0x3F50624DE0000000
  %212 = fmul fast float %210, 0x3F50624DE0000000
  %213 = add i32 %33, 172
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = shl i32 %215, 4
  %217 = and i32 %216, 32752
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = lshr i32 %215, 7
  %220 = and i32 %219, 32752
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = lshr i32 %215, 22
  %223 = shl nuw nsw i32 %222, 5
  %224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %223)  ; LegacyF16ToF32(value)
  %225 = add i32 %33, 232
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = and i32 %227, 255
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F70101020000000
  %231 = lshr i32 %227, 8
  %232 = and i32 %231, 255
  %233 = uitofp i32 %232 to float
  %234 = fmul fast float %233, 0x3F70101020000000
  %235 = lshr i32 %227, 16
  %236 = and i32 %235, 255
  %237 = uitofp i32 %236 to float
  %238 = fmul fast float %237, 0x3F70101020000000
  %239 = add i32 %33, 52
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 65535
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %241, 16
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = add i32 %33, 304
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = and i32 %248, 65535
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %248, 16
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = fmul fast float %250, 0x3F50624DE0000000
  %254 = fmul fast float %252, 0x3F50624DE0000000
  %255 = add i32 %33, 188
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = shl i32 %257, 4
  %259 = and i32 %258, 32752
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %257, 7
  %262 = and i32 %261, 32752
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = lshr i32 %257, 22
  %265 = shl nuw nsw i32 %264, 5
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = add i32 %33, 248
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = lshr i32 %269, 8
  %274 = and i32 %273, 255
  %275 = uitofp i32 %274 to float
  %276 = fmul fast float %275, 0x3F70101020000000
  %277 = lshr i32 %269, 16
  %278 = and i32 %277, 255
  %279 = uitofp i32 %278 to float
  %280 = fmul fast float %279, 0x3F70101020000000
  %281 = add i32 %33, 68
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 65535
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %283, 16
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = add i32 %33, 320
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = and i32 %290, 65535
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %290, 16
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = fmul fast float %292, 0x3F50624DE0000000
  %296 = fmul fast float %294, 0x3F50624DE0000000
  %297 = add i32 %33, 204
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = shl i32 %299, 4
  %301 = and i32 %300, 32752
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %299, 7
  %304 = and i32 %303, 32752
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %299, 22
  %307 = shl nuw nsw i32 %306, 5
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = add i32 %33, 264
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fmul fast float %313, 0x3F70101020000000
  %315 = lshr i32 %311, 8
  %316 = and i32 %315, 255
  %317 = uitofp i32 %316 to float
  %318 = fmul fast float %317, 0x3F70101020000000
  %319 = lshr i32 %311, 16
  %320 = and i32 %319, 255
  %321 = uitofp i32 %320 to float
  %322 = fmul fast float %321, 0x3F70101020000000
  %323 = add i32 %33, 84
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 65535
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %325, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = add i32 %33, 336
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 65535
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %332, 16
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = fmul fast float %334, 0x3F50624DE0000000
  %338 = fmul fast float %336, 0x3F50624DE0000000
  %339 = add i32 %33, 348
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 32
  %343 = icmp eq i32 %342, 0
  %344 = and i32 %341, 64
  %345 = icmp eq i32 %344, 0
  %346 = and i32 %341, 128
  %347 = icmp eq i32 %346, 0
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = and i32 %349, 2
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %365, label %352

; <label>:352                                     ; preds = %169
  %353 = add i32 %33, 472
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = add i32 %355, 0
  %357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %358 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %357, %dx.types.Handle %70, float %61, float %62, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %359 = extractvalue %dx.types.ResRet.f32 %358, 0
  %360 = extractvalue %dx.types.ResRet.f32 %358, 1
  %361 = extractvalue %dx.types.ResRet.f32 %358, 2
  %362 = fmul fast float %359, %63
  %363 = fmul fast float %360, %64
  %364 = fmul fast float %361, %65
  br label %365

; <label>:365                                     ; preds = %352, %169
  %366 = phi float [ %65, %169 ], [ %364, %352 ]
  %367 = phi float [ %64, %169 ], [ %363, %352 ]
  %368 = phi float [ %63, %169 ], [ %362, %352 ]
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 2
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %392, label %373

; <label>:373                                     ; preds = %365
  %374 = add i32 %33, 44
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 1
  %378 = icmp ne i32 %377, 0
  %379 = select i1 %378, float %368, float 1.000000e+00
  %380 = add i32 %33, 60
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 1
  %384 = icmp ne i32 %383, 0
  %385 = select i1 %384, float %367, float 1.000000e+00
  %386 = add i32 %33, 76
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 1
  %390 = icmp ne i32 %389, 0
  %391 = select i1 %390, float %366, float 1.000000e+00
  br label %392

; <label>:392                                     ; preds = %373, %365
  %393 = phi float [ %366, %365 ], [ %391, %373 ]
  %394 = phi float [ %367, %365 ], [ %385, %373 ]
  %395 = phi float [ %368, %365 ], [ %379, %373 ]
  %396 = lshr i32 %370, 20
  %397 = and i32 %396, 3
  %398 = add nuw nsw i32 %397, 1
  %399 = add i32 %33, 24
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = add i32 %33, 28
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = or i32 %404, %401
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %918, label %407

; <label>:407                                     ; preds = %392
  %408 = and i32 %401, 262144
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %36, float 1.000000e+00
  %411 = select i1 %409, float %37, float 0.000000e+00
  %412 = select i1 %409, float %38, float 0.000000e+00
  %413 = select i1 %409, float %39, float 1.000000e+00
  %414 = select i1 %409, float %40, float %61
  %415 = select i1 %409, float %41, float %62
  %416 = add i32 %33, 284
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = lshr i32 %418, 16
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = fmul fast float %420, 0x3F50624DE0000000
  %422 = add i32 %33, 88
  %423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %422, i32 undef)  ; BufferLoad(srv,index,wot)
  %424 = extractvalue %dx.types.ResRet.i32 %423, 0
  %425 = lshr i32 %424, 16
  %426 = and i32 %425, 255
  %427 = lshr i32 %424, 24
  %428 = add i32 %33, 292
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = lshr i32 %430, 16
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = add i32 %33, 32
  %436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %435, i32 undef)  ; BufferLoad(srv,index,wot)
  %437 = extractvalue %dx.types.ResRet.i32 %436, 0
  %438 = lshr i32 %437, 22
  %439 = shl nuw nsw i32 %438, 5
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = shl i32 %437, 4
  %442 = and i32 %441, 32752
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = lshr i32 %437, 7
  %445 = and i32 %444, 32752
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %448 = extractvalue %dx.types.CBufRet.f32 %447, 3
  %449 = fmul fast float %448, 1.000000e+03
  %450 = fmul fast float %211, %449
  %451 = call float @dx.op.unary.f32(i32 22, float %450)  ; Frc(value)
  %452 = fadd fast float %451, %201
  %453 = fmul fast float %212, %449
  %454 = call float @dx.op.unary.f32(i32 22, float %453)  ; Frc(value)
  %455 = fadd fast float %454, %203
  %456 = fmul fast float %421, %449
  %457 = call float @dx.op.unary.f32(i32 22, float %456)  ; Frc(value)
  %458 = fmul fast float %457, 0x401921FB60000000
  %459 = fadd fast float %458, %440
  %460 = call float @dx.op.unary.f32(i32 13, float %459)  ; Sin(value)
  %461 = call float @dx.op.unary.f32(i32 12, float %459)  ; Cos(value)
  %462 = fsub fast float -0.000000e+00, %460
  %463 = fadd fast float %414, -5.000000e-01
  %464 = fadd fast float %415, -5.000000e-01
  %465 = fmul fast float %432, %463
  %466 = fmul fast float %434, %464
  %467 = fadd fast float %465, 5.000000e-01
  %468 = fadd fast float %466, 5.000000e-01
  %469 = fmul fast float %443, %467
  %470 = fmul fast float %446, %468
  %471 = fmul fast float %461, %469
  %472 = call float @dx.op.tertiary.f32(i32 46, float %462, float %470, float %471)  ; FMad(a,b,c)
  %473 = fmul fast float %460, %469
  %474 = call float @dx.op.tertiary.f32(i32 46, float %461, float %470, float %473)  ; FMad(a,b,c)
  %475 = fadd fast float %452, %472
  %476 = fadd fast float %455, %474
  %477 = icmp ugt i32 %426, 1
  %478 = icmp ugt i32 %424, 33554431
  %479 = or i1 %478, %477
  br i1 %479, label %480, label %505

; <label>:480                                     ; preds = %407
  %481 = add i32 %33, 228
  %482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %481, i32 undef)  ; BufferLoad(srv,index,wot)
  %483 = extractvalue %dx.types.ResRet.i32 %482, 0
  %484 = lshr i32 %483, 16
  %485 = call float @dx.op.legacyF16ToF32(i32 131, i32 %484)  ; LegacyF16ToF32(value)
  %486 = fmul fast float %448, %485
  %487 = call float @dx.op.unary.f32(i32 22, float %486)  ; Frc(value)
  %488 = mul nuw nsw i32 %426, %427
  %489 = uitofp i32 %488 to float
  %490 = fmul fast float %487, %489
  %491 = call float @dx.op.unary.f32(i32 27, float %490)  ; Round_ni(value)
  %492 = fptoui float %491 to i32
  %493 = urem i32 %492, %426
  %494 = udiv i32 %492, %427
  %495 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %496 = call float @dx.op.unary.f32(i32 22, float %476)  ; Frc(value)
  %497 = uitofp i32 %493 to float
  %498 = uitofp i32 %494 to float
  %499 = fadd fast float %495, %497
  %500 = fadd fast float %496, %498
  %501 = uitofp i32 %426 to float
  %502 = uitofp i32 %427 to float
  %503 = fdiv fast float %499, %501
  %504 = fdiv fast float %500, %502
  br label %505

; <label>:505                                     ; preds = %480, %407
  %506 = phi float [ %503, %480 ], [ %475, %407 ]
  %507 = phi float [ %504, %480 ], [ %476, %407 ]
  %508 = and i32 %401, 16
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %706, label %510

; <label>:510                                     ; preds = %505
  %511 = add i32 %33, 360
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = add i32 %513, 0
  %515 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %514, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %516 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %515, %dx.types.Handle %69, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %517 = extractvalue %dx.types.ResRet.f32 %516, 0
  %518 = extractvalue %dx.types.ResRet.f32 %516, 1
  %519 = extractvalue %dx.types.ResRet.f32 %516, 2
  %520 = extractvalue %dx.types.ResRet.f32 %516, 3
  %521 = and i32 %424, 255
  %522 = uitofp i32 %521 to float
  %523 = lshr i32 %424, 8
  %524 = and i32 %523, 255
  %525 = uitofp i32 %524 to float
  %526 = fmul fast float %520, %522
  %527 = fadd fast float %526, %525
  %528 = fmul fast float %527, 0x3F70101000000000
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = and i32 %530, 512
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %541, label %533

; <label>:533                                     ; preds = %510
  %534 = add i32 %33, 440
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = add i32 %536, 0
  %538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %539 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %538, %dx.types.Handle %70, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %540 = extractvalue %dx.types.ResRet.f32 %539, 0
  br label %541

; <label>:541                                     ; preds = %533, %510
  %542 = phi float [ %540, %533 ], [ 1.000000e+00, %510 ]
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = and i32 %544, 33554432
  %546 = icmp eq i32 %545, 0
  br i1 %546, label %653, label %547

; <label>:547                                     ; preds = %541
  %548 = add i32 %33, 224
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = and i32 %550, 65535
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = lshr i32 %550, 16
  %554 = call float @dx.op.legacyF16ToF32(i32 131, i32 %553)  ; LegacyF16ToF32(value)
  %555 = add i32 %33, 228
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %555, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = and i32 %557, 65535
  %559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %558)  ; LegacyF16ToF32(value)
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = lshr i32 %561, 24
  %563 = uitofp i32 %562 to float
  %564 = fmul fast float %563, 0x3F70101020000000
  %565 = and i32 %561, 255
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %566, 0x3F70101020000000
  %568 = lshr i32 %561, 8
  %569 = and i32 %568, 255
  %570 = uitofp i32 %569 to float
  %571 = fmul fast float %570, 0x3F70101020000000
  %572 = lshr i32 %561, 16
  %573 = and i32 %572, 255
  %574 = uitofp i32 %573 to float
  %575 = fmul fast float %574, 0x3F70101020000000
  %576 = add i32 %33, 220
  %577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %576, i32 undef)  ; BufferLoad(srv,index,wot)
  %578 = extractvalue %dx.types.ResRet.i32 %577, 0
  %579 = lshr i32 %578, 24
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %580, 0x3F70101020000000
  %582 = and i32 %578, 255
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %583, 0x3F70101020000000
  %585 = lshr i32 %578, 8
  %586 = and i32 %585, 255
  %587 = uitofp i32 %586 to float
  %588 = fmul fast float %587, 0x3F70101020000000
  %589 = lshr i32 %578, 16
  %590 = and i32 %589, 255
  %591 = uitofp i32 %590 to float
  %592 = fmul fast float %591, 0x3F70101020000000
  %593 = bitcast float %517 to i32
  %594 = ashr i32 %593, 1
  %595 = sub nsw i32 1597463174, %594
  %596 = bitcast i32 %595 to float
  %597 = fmul fast float %517, 5.000000e-01
  %598 = fmul fast float %596, %596
  %599 = fmul fast float %598, %597
  %600 = fsub fast float 1.500000e+00, %599
  %601 = fmul fast float %596, %517
  %602 = fmul fast float %601, %600
  %603 = bitcast float %518 to i32
  %604 = ashr i32 %603, 1
  %605 = sub nsw i32 1597463174, %604
  %606 = bitcast i32 %605 to float
  %607 = fmul fast float %518, 5.000000e-01
  %608 = fmul fast float %606, %606
  %609 = fmul fast float %608, %607
  %610 = fsub fast float 1.500000e+00, %609
  %611 = fmul fast float %606, %518
  %612 = fmul fast float %611, %610
  %613 = bitcast float %519 to i32
  %614 = ashr i32 %613, 1
  %615 = sub nsw i32 1597463174, %614
  %616 = bitcast i32 %615 to float
  %617 = fmul fast float %519, 5.000000e-01
  %618 = fmul fast float %616, %616
  %619 = fmul fast float %618, %617
  %620 = fsub fast float 1.500000e+00, %619
  %621 = fmul fast float %616, %519
  %622 = fmul fast float %621, %620
  %623 = fsub fast float %602, %584
  %624 = fsub fast float %612, %588
  %625 = fsub fast float %622, %592
  %626 = fmul fast float %623, %552
  %627 = fmul fast float %624, %554
  %628 = fmul fast float %625, %559
  %629 = fadd fast float %626, %567
  %630 = fadd fast float %627, %571
  %631 = fadd fast float %628, %575
  %632 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %633 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %634 = call float @dx.op.unary.f32(i32 7, float %631)  ; Saturate(value)
  %635 = fmul fast float %632, %632
  %636 = fmul fast float %633, %633
  %637 = fmul fast float %634, %634
  %638 = fsub fast float %635, %517
  %639 = fsub fast float %636, %518
  %640 = fsub fast float %637, %519
  %641 = fmul fast float %638, %542
  %642 = fmul fast float %639, %542
  %643 = fmul fast float %640, %542
  %644 = fadd fast float %641, %517
  %645 = fadd fast float %642, %518
  %646 = fadd fast float %643, %519
  %647 = fadd fast float %564, %528
  %648 = fsub fast float %647, %581
  %649 = call float @dx.op.unary.f32(i32 7, float %648)  ; Saturate(value)
  %650 = fsub fast float %649, %528
  %651 = fmul fast float %650, %542
  %652 = fadd fast float %651, %528
  br label %706

; <label>:653                                     ; preds = %541
  %654 = and i32 %544, 134217728
  %655 = icmp eq i32 %654, 0
  br i1 %655, label %690, label %656

; <label>:656                                     ; preds = %653
  %657 = call float @dx.op.unary.f32(i32 24, float %188)  ; Sqrt(value)
  %658 = call float @dx.op.unary.f32(i32 24, float %192)  ; Sqrt(value)
  %659 = call float @dx.op.unary.f32(i32 24, float %196)  ; Sqrt(value)
  %660 = fadd fast float %657, -5.000000e-01
  %661 = fadd fast float %658, -5.000000e-01
  %662 = fadd fast float %659, -5.000000e-01
  %663 = fmul fast float %660, %542
  %664 = fmul fast float %661, %542
  %665 = fmul fast float %662, %542
  %666 = fadd fast float %663, 5.000000e-01
  %667 = fadd fast float %664, 5.000000e-01
  %668 = fadd fast float %665, 5.000000e-01
  %669 = call float @dx.op.unary.f32(i32 24, float %517)  ; Sqrt(value)
  %670 = call float @dx.op.unary.f32(i32 24, float %518)  ; Sqrt(value)
  %671 = call float @dx.op.unary.f32(i32 24, float %519)  ; Sqrt(value)
  %672 = fmul fast float %666, 2.000000e+00
  %673 = fsub fast float 1.000000e+00, %672
  %674 = fmul fast float %673, %669
  %675 = fadd fast float %674, %672
  %676 = fmul fast float %675, %669
  %677 = fmul fast float %667, 2.000000e+00
  %678 = fsub fast float 1.000000e+00, %677
  %679 = fmul fast float %678, %670
  %680 = fadd fast float %679, %677
  %681 = fmul fast float %680, %670
  %682 = fmul fast float %668, 2.000000e+00
  %683 = fsub fast float 1.000000e+00, %682
  %684 = fmul fast float %683, %671
  %685 = fadd fast float %684, %682
  %686 = fmul fast float %685, %671
  %687 = fmul fast float %676, %676
  %688 = fmul fast float %681, %681
  %689 = fmul fast float %686, %686
  br label %706

; <label>:690                                     ; preds = %653
  %691 = fmul fast float %188, %188
  %692 = fmul fast float %192, %192
  %693 = fmul fast float %196, %196
  %694 = fadd fast float %691, -1.000000e+00
  %695 = fadd fast float %692, -1.000000e+00
  %696 = fadd fast float %693, -1.000000e+00
  %697 = fmul fast float %542, %694
  %698 = fmul fast float %542, %695
  %699 = fmul fast float %542, %696
  %700 = fadd fast float %697, 1.000000e+00
  %701 = fadd fast float %698, 1.000000e+00
  %702 = fadd fast float %699, 1.000000e+00
  %703 = fmul fast float %700, %517
  %704 = fmul fast float %701, %518
  %705 = fmul fast float %702, %519
  br label %706

; <label>:706                                     ; preds = %690, %656, %547, %505
  %707 = phi float [ %652, %547 ], [ %528, %656 ], [ %528, %690 ], [ 0x3FA23C0BE0000000, %505 ]
  %708 = phi float [ %644, %547 ], [ %687, %656 ], [ %703, %690 ], [ 1.000000e+00, %505 ]
  %709 = phi float [ %645, %547 ], [ %688, %656 ], [ %704, %690 ], [ 1.000000e+00, %505 ]
  %710 = phi float [ %646, %547 ], [ %689, %656 ], [ %705, %690 ], [ 1.000000e+00, %505 ]
  %711 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %712 = extractvalue %dx.types.CBufRet.i32 %711, 1
  %713 = and i32 %712, 1
  %714 = icmp ne i32 %713, 0
  %715 = add i32 %33, 356
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = and i32 %717, 32
  %719 = icmp ne i32 %718, 0
  %720 = and i1 %714, %719
  %721 = select i1 %720, float 1.000000e+00, float %708
  %722 = select i1 %720, float 0x3FD3333340000000, float %709
  %723 = select i1 %720, float 0x3FD3333340000000, float %710
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = and i32 %725, 32
  %727 = icmp eq i32 %726, 0
  br i1 %727, label %800, label %728

; <label>:728                                     ; preds = %706
  %729 = add i32 %33, 92
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = add i32 %33, 376
  %733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %732, i32 undef)  ; BufferLoad(srv,index,wot)
  %734 = extractvalue %dx.types.ResRet.i32 %733, 0
  %735 = add i32 %734, 0
  %736 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %735, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %737 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %736, %dx.types.Handle %69, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %738 = extractvalue %dx.types.ResRet.f32 %737, 0
  %739 = extractvalue %dx.types.ResRet.f32 %737, 1
  %740 = extractvalue %dx.types.ResRet.f32 %737, 2
  %741 = extractvalue %dx.types.ResRet.f32 %737, 3
  %742 = and i32 %731, 255
  %743 = uitofp i32 %742 to float
  %744 = lshr i32 %731, 8
  %745 = and i32 %744, 255
  %746 = uitofp i32 %745 to float
  %747 = lshr i32 %731, 16
  %748 = and i32 %747, 255
  %749 = uitofp i32 %748 to float
  %750 = fmul fast float %749, 0x3F70101000000000
  %751 = fmul fast float %738, %743
  %752 = fadd fast float %751, %746
  %753 = fmul fast float %752, 0x3F70101000000000
  %754 = fadd fast float %739, -5.000000e-01
  %755 = fadd fast float %741, -5.000000e-01
  %756 = fmul fast float %754, %750
  %757 = fmul fast float %755, %750
  %758 = fadd fast float %756, 5.000000e-01
  %759 = fadd fast float %757, 5.000000e-01
  %760 = fmul fast float %758, 2.000000e+00
  %761 = fadd fast float %760, -1.000000e+00
  %762 = fmul fast float %759, 2.000000e+00
  %763 = fadd fast float %762, -1.000000e+00
  %764 = fadd fast float %761, %763
  %765 = fmul fast float %764, 5.000000e-01
  %766 = fsub fast float %761, %763
  %767 = fmul fast float %766, 5.000000e-01
  %768 = call float @dx.op.unary.f32(i32 6, float %765)  ; FAbs(value)
  %769 = fsub fast float 1.000000e+00, %768
  %770 = call float @dx.op.unary.f32(i32 6, float %767)  ; FAbs(value)
  %771 = fsub fast float %769, %770
  %772 = call float @dx.op.dot3.f32(i32 55, float %765, float %767, float %771, float %765, float %767, float %771)  ; Dot3(ax,ay,az,bx,by,bz)
  %773 = call float @dx.op.unary.f32(i32 25, float %772)  ; Rsqrt(value)
  %774 = fmul fast float %765, %773
  %775 = fmul fast float %767, %773
  %776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %777 = extractvalue %dx.types.ResRet.i32 %776, 0
  %778 = and i32 %777, 67108864
  %779 = icmp eq i32 %778, 0
  br i1 %779, label %796, label %780

; <label>:780                                     ; preds = %728
  %781 = add i32 %33, 280
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %781, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 65535
  %785 = call float @dx.op.legacyF16ToF32(i32 131, i32 %784)  ; LegacyF16ToF32(value)
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = and i32 %787, 65535
  %789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %788)  ; LegacyF16ToF32(value)
  %790 = lshr i32 %783, 16
  %791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %790)  ; LegacyF16ToF32(value)
  %792 = fsub fast float %753, %791
  %793 = fmul fast float %792, %785
  %794 = fadd fast float %793, %789
  %795 = call float @dx.op.unary.f32(i32 7, float %794)  ; Saturate(value)
  br label %796

; <label>:796                                     ; preds = %780, %728
  %797 = phi float [ %795, %780 ], [ %753, %728 ]
  %798 = call float @dx.op.dot2.f32(i32 54, float %774, float %775, float %410, float %411)  ; Dot2(ax,ay,bx,by)
  %799 = call float @dx.op.dot2.f32(i32 54, float %774, float %775, float %412, float %413)  ; Dot2(ax,ay,bx,by)
  br label %800

; <label>:800                                     ; preds = %796, %706
  %801 = phi float [ %797, %796 ], [ 0x3FD6666660000000, %706 ]
  %802 = phi float [ %798, %796 ], [ 0.000000e+00, %706 ]
  %803 = phi float [ %799, %796 ], [ 0.000000e+00, %706 ]
  %804 = phi float [ %740, %796 ], [ 1.000000e+00, %706 ]
  %805 = add i32 %33, 160
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = lshr i32 %807, 22
  %809 = shl nuw nsw i32 %808, 5
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 64
  %814 = icmp eq i32 %813, 0
  br i1 %814, label %848, label %815

; <label>:815                                     ; preds = %800
  %816 = add i32 %33, 392
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = add i32 %818, 0
  %820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %819, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.i32 %821, 0
  %823 = and i32 %822, 131072
  %824 = icmp eq i32 %823, 0
  %825 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %820, %dx.types.Handle %69, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = extractvalue %dx.types.ResRet.f32 %825, 1
  %828 = extractvalue %dx.types.ResRet.f32 %825, 2
  %829 = fmul fast float %826, %176
  %830 = fmul fast float %827, %179
  %831 = fmul fast float %828, %182
  br i1 %824, label %838, label %832

; <label>:832                                     ; preds = %815
  %833 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %834 = extractvalue %dx.types.CBufRet.f32 %833, 0
  %835 = fmul fast float %834, %829
  %836 = fmul fast float %834, %830
  %837 = fmul fast float %834, %831
  br label %838

; <label>:838                                     ; preds = %832, %815
  %839 = phi float [ %835, %832 ], [ %829, %815 ]
  %840 = phi float [ %836, %832 ], [ %830, %815 ]
  %841 = phi float [ %837, %832 ], [ %831, %815 ]
  %842 = fmul fast float %839, %810
  %843 = select i1 %170, float %842, float %839
  %844 = call float @dx.op.dot3.f32(i32 55, float %843, float %840, float %841, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %845 = select i1 %170, float 0.000000e+00, float %839
  %846 = select i1 %170, float %844, float %840
  %847 = select i1 %170, float 0.000000e+00, float %841
  br label %848

; <label>:848                                     ; preds = %838, %800
  %849 = phi float [ %845, %838 ], [ 0.000000e+00, %800 ]
  %850 = phi float [ %846, %838 ], [ 0.000000e+00, %800 ]
  %851 = phi float [ %847, %838 ], [ 0.000000e+00, %800 ]
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = and i32 %853, 10240
  %855 = icmp eq i32 %854, 0
  br i1 %855, label %900, label %856

; <label>:856                                     ; preds = %848
  %857 = add i32 %33, 456
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = add i32 %859, 0
  %861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %862 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %861, %dx.types.Handle %70, float %506, float %507, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 1
  %864 = extractvalue %dx.types.ResRet.f32 %862, 3
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = and i32 %866, 1048576
  %868 = icmp ne i32 %867, 0
  %869 = and i32 %866, 8192
  %870 = icmp eq i32 %869, 0
  br i1 %870, label %886, label %871

; <label>:871                                     ; preds = %856
  %872 = extractvalue %dx.types.ResRet.f32 %862, 2
  %873 = select i1 %868, float %872, float %863
  %874 = extractvalue %dx.types.ResRet.f32 %862, 0
  %875 = select i1 %868, float %874, float %863
  %876 = add i32 %33, 96
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = lshr i32 %878, 16
  %880 = and i32 %879, 255
  %881 = uitofp i32 %880 to float
  %882 = fmul fast float %881, 0x3F80101020000000
  %883 = fmul fast float %882, %875
  %884 = fmul fast float %882, %863
  %885 = fmul fast float %882, %873
  br label %886

; <label>:886                                     ; preds = %871, %856
  %887 = phi float [ %883, %871 ], [ 0.000000e+00, %856 ]
  %888 = phi float [ %884, %871 ], [ 0.000000e+00, %856 ]
  %889 = phi float [ %885, %871 ], [ 0.000000e+00, %856 ]
  %890 = and i32 %866, 2048
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %900, label %892

; <label>:892                                     ; preds = %886
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %805, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = shl i32 %894, 4
  %896 = and i32 %895, 32752
  %897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %896)  ; LegacyF16ToF32(value)
  %898 = fmul fast float %897, %864
  %899 = call float @dx.op.binary.f32(i32 35, float %898, float 0x3F70101020000000)  ; FMax(a,b)
  br label %900

; <label>:900                                     ; preds = %892, %886, %848
  %901 = phi float [ %887, %892 ], [ %887, %886 ], [ 0.000000e+00, %848 ]
  %902 = phi float [ %888, %892 ], [ %888, %886 ], [ 0.000000e+00, %848 ]
  %903 = phi float [ %889, %892 ], [ %889, %886 ], [ 0.000000e+00, %848 ]
  %904 = phi float [ %899, %892 ], [ 0x3F70101020000000, %886 ], [ 0x3F70101020000000, %848 ]
  %905 = add i32 %33, 96
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = and i32 %907, 255
  %909 = uitofp i32 %908 to float
  %910 = lshr i32 %907, 8
  %911 = and i32 %910, 255
  %912 = uitofp i32 %911 to float
  %913 = call float @dx.op.dot3.f32(i32 55, float %721, float %722, float %723, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %914 = fmul fast float %912, %913
  %915 = fadd fast float %914, %909
  %916 = fmul fast float %915, 0x3F70101020000000
  %917 = call float @dx.op.unary.f32(i32 7, float %916)  ; Saturate(value)
  br label %918

; <label>:918                                     ; preds = %900, %392
  %919 = phi float [ 0.000000e+00, %392 ], [ %802, %900 ]
  %920 = phi float [ 0.000000e+00, %392 ], [ %803, %900 ]
  %921 = phi float [ 0.000000e+00, %392 ], [ %721, %900 ]
  %922 = phi float [ 0.000000e+00, %392 ], [ %722, %900 ]
  %923 = phi float [ 0.000000e+00, %392 ], [ %723, %900 ]
  %924 = phi float [ 0.000000e+00, %392 ], [ %849, %900 ]
  %925 = phi float [ 0.000000e+00, %392 ], [ %850, %900 ]
  %926 = phi float [ 0.000000e+00, %392 ], [ %851, %900 ]
  %927 = phi float [ 0.000000e+00, %392 ], [ %901, %900 ]
  %928 = phi float [ 0.000000e+00, %392 ], [ %902, %900 ]
  %929 = phi float [ 0.000000e+00, %392 ], [ %903, %900 ]
  %930 = phi float [ 0.000000e+00, %392 ], [ %707, %900 ]
  %931 = phi float [ 0.000000e+00, %392 ], [ 1.000000e+00, %900 ]
  %932 = phi float [ 0.000000e+00, %392 ], [ %801, %900 ]
  %933 = phi float [ 0.000000e+00, %392 ], [ %804, %900 ]
  %934 = phi float [ 0.000000e+00, %392 ], [ %904, %900 ]
  %935 = phi float [ 0.000000e+00, %392 ], [ %917, %900 ]
  br i1 %343, label %1864, label %936

; <label>:936                                     ; preds = %918
  %937 = icmp ult i32 %398, 2
  %938 = add i32 %33, 40
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = add i32 %33, 44
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = or i32 %943, %940
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %1864, label %946

; <label>:946                                     ; preds = %936
  %947 = and i32 %940, 262144
  %948 = icmp ne i32 %947, 0
  %949 = select i1 %948, float %36, float 1.000000e+00
  %950 = select i1 %948, float %37, float 0.000000e+00
  %951 = select i1 %948, float %38, float 0.000000e+00
  %952 = select i1 %948, float %39, float 1.000000e+00
  %953 = select i1 %948, float %40, float %61
  %954 = select i1 %948, float %41, float %62
  %955 = add i32 %33, 300
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = lshr i32 %957, 16
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = fmul fast float %959, 0x3F50624DE0000000
  %961 = add i32 %33, 104
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = lshr i32 %963, 16
  %965 = and i32 %964, 255
  %966 = lshr i32 %963, 24
  %967 = add i32 %33, 308
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 65535
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = lshr i32 %969, 16
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = add i32 %33, 48
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = lshr i32 %976, 22
  %978 = shl nuw nsw i32 %977, 5
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = shl i32 %976, 4
  %981 = and i32 %980, 32752
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = lshr i32 %976, 7
  %984 = and i32 %983, 32752
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %988 = fmul fast float %987, 1.000000e+03
  %989 = fmul fast float %253, %988
  %990 = call float @dx.op.unary.f32(i32 22, float %989)  ; Frc(value)
  %991 = fadd fast float %990, %243
  %992 = fmul fast float %254, %988
  %993 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %994 = fadd fast float %993, %245
  %995 = fmul fast float %960, %988
  %996 = call float @dx.op.unary.f32(i32 22, float %995)  ; Frc(value)
  %997 = fmul fast float %996, 0x401921FB60000000
  %998 = fadd fast float %997, %979
  %999 = call float @dx.op.unary.f32(i32 13, float %998)  ; Sin(value)
  %1000 = call float @dx.op.unary.f32(i32 12, float %998)  ; Cos(value)
  %1001 = fsub fast float -0.000000e+00, %999
  %1002 = fadd fast float %953, -5.000000e-01
  %1003 = fadd fast float %954, -5.000000e-01
  %1004 = fmul fast float %971, %1002
  %1005 = fmul fast float %973, %1003
  %1006 = fadd fast float %1004, 5.000000e-01
  %1007 = fadd fast float %1005, 5.000000e-01
  %1008 = fmul fast float %982, %1006
  %1009 = fmul fast float %985, %1007
  %1010 = fmul fast float %1000, %1008
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %1001, float %1009, float %1010)  ; FMad(a,b,c)
  %1012 = fmul fast float %999, %1008
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %1000, float %1009, float %1012)  ; FMad(a,b,c)
  %1014 = fadd fast float %991, %1011
  %1015 = fadd fast float %994, %1013
  %1016 = icmp ugt i32 %965, 1
  %1017 = icmp ugt i32 %963, 33554431
  %1018 = or i1 %1017, %1016
  br i1 %1018, label %1019, label %1044

; <label>:1019                                    ; preds = %946
  %1020 = add i32 %33, 244
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = lshr i32 %1022, 16
  %1024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1023)  ; LegacyF16ToF32(value)
  %1025 = fmul fast float %987, %1024
  %1026 = call float @dx.op.unary.f32(i32 22, float %1025)  ; Frc(value)
  %1027 = mul nuw nsw i32 %965, %966
  %1028 = uitofp i32 %1027 to float
  %1029 = fmul fast float %1026, %1028
  %1030 = call float @dx.op.unary.f32(i32 27, float %1029)  ; Round_ni(value)
  %1031 = fptoui float %1030 to i32
  %1032 = urem i32 %1031, %965
  %1033 = udiv i32 %1031, %966
  %1034 = call float @dx.op.unary.f32(i32 22, float %1014)  ; Frc(value)
  %1035 = call float @dx.op.unary.f32(i32 22, float %1015)  ; Frc(value)
  %1036 = uitofp i32 %1032 to float
  %1037 = uitofp i32 %1033 to float
  %1038 = fadd fast float %1034, %1036
  %1039 = fadd fast float %1035, %1037
  %1040 = uitofp i32 %965 to float
  %1041 = uitofp i32 %966 to float
  %1042 = fdiv fast float %1038, %1040
  %1043 = fdiv fast float %1039, %1041
  br label %1044

; <label>:1044                                    ; preds = %1019, %946
  %1045 = phi float [ %1042, %1019 ], [ %1014, %946 ]
  %1046 = phi float [ %1043, %1019 ], [ %1015, %946 ]
  %1047 = and i32 %940, 16777216
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1158, label %1049

; <label>:1049                                    ; preds = %1044
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1054 = fadd fast float %1051, %128
  %1055 = fadd fast float %1052, %129
  %1056 = fadd fast float %1053, %130
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 0
  %1059 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  %1060 = icmp eq i32 %34, 65535
  br i1 %1060, label %1155, label %1061

; <label>:1061                                    ; preds = %1049
  %1062 = lshr i32 %34, 1
  %1063 = shl i32 %1062, 2
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %34, 1
  %1067 = icmp ne i32 %1066, 0
  %1068 = lshr i32 %1065, 16
  %1069 = and i32 %1065, 65535
  %1070 = select i1 %1067, i32 %1068, i32 %1069
  %1071 = icmp eq i32 %1070, 65535
  br i1 %1071, label %1151, label %1072

; <label>:1072                                    ; preds = %1061
  %1073 = mul nuw nsw i32 %1070, 40
  %1074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1078 = add nuw nsw i32 %1073, 12
  %1079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = add nuw nsw i32 %1073, 24
  %1084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = add nuw nsw i32 %1073, 36
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = fsub fast float %1054, %1075
  %1092 = fsub fast float %1055, %1076
  %1093 = fsub fast float %1056, %1077
  %1094 = fmul fast float %1090, %1091
  %1095 = fmul fast float %1090, %1092
  %1096 = fmul fast float %1090, %1093
  %1097 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1099 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1100 = fadd fast float %1097, 5.000000e-01
  %1101 = fadd fast float %1098, 5.000000e-01
  %1102 = fadd fast float %1099, 5.000000e-01
  %1103 = fmul fast float %1100, %1080
  %1104 = fmul fast float %1101, %1081
  %1105 = fmul fast float %1102, %1082
  %1106 = shl i32 %34, 2
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = add i32 %1108, 0
  %1110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1109, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1111 = call float @dx.op.unary.f32(i32 22, float %1103)  ; Frc(value)
  %1112 = call float @dx.op.unary.f32(i32 22, float %1104)  ; Frc(value)
  %1113 = call float @dx.op.unary.f32(i32 22, float %1105)  ; Frc(value)
  %1114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1110, %dx.types.Handle %30, float %1111, float %1112, float %1113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = fmul fast float %1115, 1.023000e+03
  %1119 = fmul fast float %1116, 1.023000e+03
  %1120 = fmul fast float %1117, 1.023000e+03
  %1121 = fadd fast float %1118, 5.000000e-01
  %1122 = fadd fast float %1119, 5.000000e-01
  %1123 = fadd fast float %1120, 5.000000e-01
  %1124 = call float @dx.op.unary.f32(i32 27, float %1121)  ; Round_ni(value)
  %1125 = call float @dx.op.unary.f32(i32 27, float %1122)  ; Round_ni(value)
  %1126 = call float @dx.op.unary.f32(i32 27, float %1123)  ; Round_ni(value)
  %1127 = fsub fast float %1094, %1097
  %1128 = fsub fast float %1095, %1098
  %1129 = fsub fast float %1096, %1099
  %1130 = fmul fast float %1127, 7.500000e-01
  %1131 = fmul fast float %1128, 7.500000e-01
  %1132 = fmul fast float %1129, 7.500000e-01
  %1133 = fadd fast float %1097, 1.250000e-01
  %1134 = fadd fast float %1133, %1130
  %1135 = fadd fast float %1134, %1124
  %1136 = fadd fast float %1098, 1.250000e-01
  %1137 = fadd fast float %1136, %1131
  %1138 = fadd fast float %1137, %1125
  %1139 = fadd fast float %1099, 1.250000e-01
  %1140 = fadd fast float %1139, %1132
  %1141 = fadd fast float %1140, %1126
  %1142 = fmul fast float %1135, %1085
  %1143 = fmul fast float %1138, %1086
  %1144 = fmul fast float %1141, %1087
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = add i32 %1146, 0
  %1148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1148, %dx.types.Handle %28, float %1142, float %1143, float %1144, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  br label %1151

; <label>:1151                                    ; preds = %1072, %1061
  %1152 = phi float [ %1150, %1072 ], [ -1.000000e+00, %1061 ]
  %1153 = fadd fast float %1152, %1059
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  br label %1155

; <label>:1155                                    ; preds = %1151, %1049
  %1156 = phi float [ %1154, %1151 ], [ %1059, %1049 ]
  %1157 = fmul fast float %1156, %395
  br label %1158

; <label>:1158                                    ; preds = %1155, %1044
  %1159 = phi float [ %1157, %1155 ], [ %395, %1044 ]
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = and i32 %1161, 256
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1210, label %1164

; <label>:1164                                    ; preds = %1158
  %1165 = add i32 %33, 428
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = add i32 %1167, 0
  %1169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1168, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1170 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1169, %dx.types.Handle %70, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = add i32 %33, 116
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = shl i32 %1174, 4
  %1176 = and i32 %1175, 32752
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = lshr i32 %1174, 7
  %1179 = and i32 %1178, 32752
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = fsub fast float 1.000000e+00, %1159
  %1182 = call float @dx.op.binary.f32(i32 35, float %1181, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1183 = bitcast float %1159 to i32
  %1184 = sitofp i32 %1183 to float
  %1185 = fadd fast float %1184, 0xC1CFBF8940000000
  %1186 = fmul fast float %1180, %1185
  %1187 = fadd fast float %1186, 0x41CFBF8940000000
  %1188 = fptosi float %1187 to i32
  %1189 = bitcast i32 %1188 to float
  %1190 = bitcast float %1182 to i32
  %1191 = sitofp i32 %1190 to float
  %1192 = fadd fast float %1191, 0xC1CFBF8940000000
  %1193 = fmul fast float %1192, %1180
  %1194 = fadd fast float %1193, 0x41CFBF8940000000
  %1195 = fptosi float %1194 to i32
  %1196 = bitcast i32 %1195 to float
  %1197 = fmul fast float %1189, %1177
  %1198 = fmul fast float %1196, %1177
  %1199 = fsub fast float %1182, %1197
  %1200 = fadd fast float %1198, %1182
  %1201 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1202 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1203 = fsub fast float %1171, %1201
  %1204 = fsub fast float %1202, %1201
  %1205 = bitcast float %1204 to i32
  %1206 = sub nsw i32 2129859010, %1205
  %1207 = bitcast i32 %1206 to float
  %1208 = fmul fast float %1207, %1203
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  br label %1210

; <label>:1210                                    ; preds = %1164, %1158
  %1211 = phi float [ %1209, %1164 ], [ %1159, %1158 ]
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 128
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1232, label %1216

; <label>:1216                                    ; preds = %1210
  %1217 = add i32 %33, 412
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = add i32 %1219, 0
  %1221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1221, %dx.types.Handle %70, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = and i32 %1225, 524288
  %1227 = icmp ne i32 %1226, 0
  %1228 = fcmp fast ogt float %1223, 0x3FE0101020000000
  %1229 = select i1 %1228, float 1.000000e+00, float 0.000000e+00
  %1230 = select i1 %1227, float %1229, float %1223
  %1231 = fmul fast float %1230, %1211
  br label %1232

; <label>:1232                                    ; preds = %1216, %1210
  %1233 = phi float [ %1231, %1216 ], [ %1211, %1210 ]
  %1234 = fcmp fast ult float %1233, 0x3F70101020000000
  br i1 %1234, label %1864, label %1235

; <label>:1235                                    ; preds = %1232
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 16
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1438, label %1240

; <label>:1240                                    ; preds = %1235
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = add i32 %33, 364
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = add i32 %1245, 0
  %1247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1246, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1248 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1247, %dx.types.Handle %69, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.ResRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.ResRet.f32 %1248, 2
  %1252 = extractvalue %dx.types.ResRet.f32 %1248, 3
  %1253 = and i32 %1242, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = lshr i32 %1242, 8
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1252, %1254
  %1259 = fadd fast float %1258, %1257
  %1260 = fmul fast float %1259, 0x3F70101000000000
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = and i32 %1262, 512
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1273, label %1265

; <label>:1265                                    ; preds = %1240
  %1266 = add i32 %33, 444
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = add i32 %1268, 0
  %1270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1270, %dx.types.Handle %70, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  br label %1273

; <label>:1273                                    ; preds = %1265, %1240
  %1274 = phi float [ %1272, %1265 ], [ 1.000000e+00, %1240 ]
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = and i32 %1276, 33554432
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1385, label %1279

; <label>:1279                                    ; preds = %1273
  %1280 = add i32 %33, 240
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 65535
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = lshr i32 %1282, 16
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = add i32 %33, 244
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = and i32 %1289, 65535
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = lshr i32 %1293, 24
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1295, 0x3F70101020000000
  %1297 = and i32 %1293, 255
  %1298 = uitofp i32 %1297 to float
  %1299 = fmul fast float %1298, 0x3F70101020000000
  %1300 = lshr i32 %1293, 8
  %1301 = and i32 %1300, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1302, 0x3F70101020000000
  %1304 = lshr i32 %1293, 16
  %1305 = and i32 %1304, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1306, 0x3F70101020000000
  %1308 = add i32 %33, 236
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = lshr i32 %1310, 24
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1312, 0x3F70101020000000
  %1314 = and i32 %1310, 255
  %1315 = uitofp i32 %1314 to float
  %1316 = fmul fast float %1315, 0x3F70101020000000
  %1317 = lshr i32 %1310, 8
  %1318 = and i32 %1317, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F70101020000000
  %1321 = lshr i32 %1310, 16
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = bitcast float %1249 to i32
  %1326 = ashr i32 %1325, 1
  %1327 = sub nsw i32 1597463174, %1326
  %1328 = bitcast i32 %1327 to float
  %1329 = fmul fast float %1249, 5.000000e-01
  %1330 = fmul fast float %1328, %1328
  %1331 = fmul fast float %1330, %1329
  %1332 = fsub fast float 1.500000e+00, %1331
  %1333 = fmul fast float %1328, %1249
  %1334 = fmul fast float %1333, %1332
  %1335 = bitcast float %1250 to i32
  %1336 = ashr i32 %1335, 1
  %1337 = sub nsw i32 1597463174, %1336
  %1338 = bitcast i32 %1337 to float
  %1339 = fmul fast float %1250, 5.000000e-01
  %1340 = fmul fast float %1338, %1338
  %1341 = fmul fast float %1340, %1339
  %1342 = fsub fast float 1.500000e+00, %1341
  %1343 = fmul fast float %1338, %1250
  %1344 = fmul fast float %1343, %1342
  %1345 = bitcast float %1251 to i32
  %1346 = ashr i32 %1345, 1
  %1347 = sub nsw i32 1597463174, %1346
  %1348 = bitcast i32 %1347 to float
  %1349 = fmul fast float %1251, 5.000000e-01
  %1350 = fmul fast float %1348, %1348
  %1351 = fmul fast float %1350, %1349
  %1352 = fsub fast float 1.500000e+00, %1351
  %1353 = fmul fast float %1348, %1251
  %1354 = fmul fast float %1353, %1352
  %1355 = fsub fast float %1334, %1316
  %1356 = fsub fast float %1344, %1320
  %1357 = fsub fast float %1354, %1324
  %1358 = fmul fast float %1355, %1284
  %1359 = fmul fast float %1356, %1286
  %1360 = fmul fast float %1357, %1291
  %1361 = fadd fast float %1358, %1299
  %1362 = fadd fast float %1359, %1303
  %1363 = fadd fast float %1360, %1307
  %1364 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1365 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1366 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1367 = fmul fast float %1364, %1364
  %1368 = fmul fast float %1365, %1365
  %1369 = fmul fast float %1366, %1366
  %1370 = fsub fast float %1367, %1249
  %1371 = fsub fast float %1368, %1250
  %1372 = fsub fast float %1369, %1251
  %1373 = fmul fast float %1370, %1274
  %1374 = fmul fast float %1371, %1274
  %1375 = fmul fast float %1372, %1274
  %1376 = fadd fast float %1373, %1249
  %1377 = fadd fast float %1374, %1250
  %1378 = fadd fast float %1375, %1251
  %1379 = fadd fast float %1296, %1260
  %1380 = fsub fast float %1379, %1313
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = fsub fast float %1381, %1260
  %1383 = fmul fast float %1382, %1274
  %1384 = fadd fast float %1383, %1260
  br label %1438

; <label>:1385                                    ; preds = %1273
  %1386 = and i32 %1276, 134217728
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %1422, label %1388

; <label>:1388                                    ; preds = %1385
  %1389 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %1390 = call float @dx.op.unary.f32(i32 24, float %234)  ; Sqrt(value)
  %1391 = call float @dx.op.unary.f32(i32 24, float %238)  ; Sqrt(value)
  %1392 = fadd fast float %1389, -5.000000e-01
  %1393 = fadd fast float %1390, -5.000000e-01
  %1394 = fadd fast float %1391, -5.000000e-01
  %1395 = fmul fast float %1392, %1274
  %1396 = fmul fast float %1393, %1274
  %1397 = fmul fast float %1394, %1274
  %1398 = fadd fast float %1395, 5.000000e-01
  %1399 = fadd fast float %1396, 5.000000e-01
  %1400 = fadd fast float %1397, 5.000000e-01
  %1401 = call float @dx.op.unary.f32(i32 24, float %1249)  ; Sqrt(value)
  %1402 = call float @dx.op.unary.f32(i32 24, float %1250)  ; Sqrt(value)
  %1403 = call float @dx.op.unary.f32(i32 24, float %1251)  ; Sqrt(value)
  %1404 = fmul fast float %1398, 2.000000e+00
  %1405 = fsub fast float 1.000000e+00, %1404
  %1406 = fmul fast float %1405, %1401
  %1407 = fadd fast float %1406, %1404
  %1408 = fmul fast float %1407, %1401
  %1409 = fmul fast float %1399, 2.000000e+00
  %1410 = fsub fast float 1.000000e+00, %1409
  %1411 = fmul fast float %1410, %1402
  %1412 = fadd fast float %1411, %1409
  %1413 = fmul fast float %1412, %1402
  %1414 = fmul fast float %1400, 2.000000e+00
  %1415 = fsub fast float 1.000000e+00, %1414
  %1416 = fmul fast float %1415, %1403
  %1417 = fadd fast float %1416, %1414
  %1418 = fmul fast float %1417, %1403
  %1419 = fmul fast float %1408, %1408
  %1420 = fmul fast float %1413, %1413
  %1421 = fmul fast float %1418, %1418
  br label %1438

; <label>:1422                                    ; preds = %1385
  %1423 = fmul fast float %230, %230
  %1424 = fmul fast float %234, %234
  %1425 = fmul fast float %238, %238
  %1426 = fadd fast float %1423, -1.000000e+00
  %1427 = fadd fast float %1424, -1.000000e+00
  %1428 = fadd fast float %1425, -1.000000e+00
  %1429 = fmul fast float %1274, %1426
  %1430 = fmul fast float %1274, %1427
  %1431 = fmul fast float %1274, %1428
  %1432 = fadd fast float %1429, 1.000000e+00
  %1433 = fadd fast float %1430, 1.000000e+00
  %1434 = fadd fast float %1431, 1.000000e+00
  %1435 = fmul fast float %1432, %1249
  %1436 = fmul fast float %1433, %1250
  %1437 = fmul fast float %1434, %1251
  br label %1438

; <label>:1438                                    ; preds = %1422, %1388, %1279, %1235
  %1439 = phi float [ %1384, %1279 ], [ %1260, %1388 ], [ %1260, %1422 ], [ 0x3FA23C0BE0000000, %1235 ]
  %1440 = phi float [ %1376, %1279 ], [ %1419, %1388 ], [ %1435, %1422 ], [ 1.000000e+00, %1235 ]
  %1441 = phi float [ %1377, %1279 ], [ %1420, %1388 ], [ %1436, %1422 ], [ 1.000000e+00, %1235 ]
  %1442 = phi float [ %1378, %1279 ], [ %1421, %1388 ], [ %1437, %1422 ], [ 1.000000e+00, %1235 ]
  %1443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.i32 %1443, 1
  %1445 = and i32 %1444, 1
  %1446 = icmp ne i32 %1445, 0
  %1447 = add i32 %33, 356
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 32
  %1451 = icmp ne i32 %1450, 0
  %1452 = and i1 %1446, %1451
  %1453 = select i1 %1452, float 1.000000e+00, float %1440
  %1454 = select i1 %1452, float 0x3FD3333340000000, float %1441
  %1455 = select i1 %1452, float 0x3FD3333340000000, float %1442
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = and i32 %1457, 32
  %1459 = icmp eq i32 %1458, 0
  br i1 %1459, label %1532, label %1460

; <label>:1460                                    ; preds = %1438
  %1461 = add i32 %33, 108
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = add i32 %33, 380
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %1466, 0
  %1468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1468, %dx.types.Handle %69, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = extractvalue %dx.types.ResRet.f32 %1469, 3
  %1474 = and i32 %1463, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = lshr i32 %1463, 8
  %1477 = and i32 %1476, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = lshr i32 %1463, 16
  %1480 = and i32 %1479, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = fmul fast float %1481, 0x3F70101000000000
  %1483 = fmul fast float %1470, %1475
  %1484 = fadd fast float %1483, %1478
  %1485 = fmul fast float %1484, 0x3F70101000000000
  %1486 = fadd fast float %1471, -5.000000e-01
  %1487 = fadd fast float %1473, -5.000000e-01
  %1488 = fmul fast float %1486, %1482
  %1489 = fmul fast float %1487, %1482
  %1490 = fadd fast float %1488, 5.000000e-01
  %1491 = fadd fast float %1489, 5.000000e-01
  %1492 = fmul fast float %1490, 2.000000e+00
  %1493 = fadd fast float %1492, -1.000000e+00
  %1494 = fmul fast float %1491, 2.000000e+00
  %1495 = fadd fast float %1494, -1.000000e+00
  %1496 = fadd fast float %1493, %1495
  %1497 = fmul fast float %1496, 5.000000e-01
  %1498 = fsub fast float %1493, %1495
  %1499 = fmul fast float %1498, 5.000000e-01
  %1500 = call float @dx.op.unary.f32(i32 6, float %1497)  ; FAbs(value)
  %1501 = fsub fast float 1.000000e+00, %1500
  %1502 = call float @dx.op.unary.f32(i32 6, float %1499)  ; FAbs(value)
  %1503 = fsub fast float %1501, %1502
  %1504 = call float @dx.op.dot3.f32(i32 55, float %1497, float %1499, float %1503, float %1497, float %1499, float %1503)  ; Dot3(ax,ay,az,bx,by,bz)
  %1505 = call float @dx.op.unary.f32(i32 25, float %1504)  ; Rsqrt(value)
  %1506 = fmul fast float %1497, %1505
  %1507 = fmul fast float %1499, %1505
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = and i32 %1509, 67108864
  %1511 = icmp eq i32 %1510, 0
  br i1 %1511, label %1528, label %1512

; <label>:1512                                    ; preds = %1460
  %1513 = add i32 %33, 296
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 65535
  %1517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1516)  ; LegacyF16ToF32(value)
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 65535
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = lshr i32 %1515, 16
  %1523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1522)  ; LegacyF16ToF32(value)
  %1524 = fsub fast float %1485, %1523
  %1525 = fmul fast float %1524, %1517
  %1526 = fadd fast float %1525, %1521
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  br label %1528

; <label>:1528                                    ; preds = %1512, %1460
  %1529 = phi float [ %1527, %1512 ], [ %1485, %1460 ]
  %1530 = call float @dx.op.dot2.f32(i32 54, float %1506, float %1507, float %949, float %950)  ; Dot2(ax,ay,bx,by)
  %1531 = call float @dx.op.dot2.f32(i32 54, float %1506, float %1507, float %951, float %952)  ; Dot2(ax,ay,bx,by)
  br label %1532

; <label>:1532                                    ; preds = %1528, %1438
  %1533 = phi float [ %1529, %1528 ], [ 0x3FD6666660000000, %1438 ]
  %1534 = phi float [ %1530, %1528 ], [ 0.000000e+00, %1438 ]
  %1535 = phi float [ %1531, %1528 ], [ 0.000000e+00, %1438 ]
  %1536 = phi float [ %1472, %1528 ], [ 1.000000e+00, %1438 ]
  %1537 = add i32 %33, 176
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = lshr i32 %1539, 22
  %1541 = shl nuw nsw i32 %1540, 5
  %1542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1541)  ; LegacyF16ToF32(value)
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 64
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %1580, label %1547

; <label>:1547                                    ; preds = %1532
  %1548 = add i32 %33, 396
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = add i32 %1550, 0
  %1552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 131072
  %1556 = icmp eq i32 %1555, 0
  %1557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1552, %dx.types.Handle %69, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1559 = extractvalue %dx.types.ResRet.f32 %1557, 1
  %1560 = extractvalue %dx.types.ResRet.f32 %1557, 2
  %1561 = fmul fast float %1558, %218
  %1562 = fmul fast float %1559, %221
  %1563 = fmul fast float %1560, %224
  br i1 %1556, label %1570, label %1564

; <label>:1564                                    ; preds = %1547
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 0
  %1567 = fmul fast float %1566, %1561
  %1568 = fmul fast float %1566, %1562
  %1569 = fmul fast float %1566, %1563
  br label %1570

; <label>:1570                                    ; preds = %1564, %1547
  %1571 = phi float [ %1567, %1564 ], [ %1561, %1547 ]
  %1572 = phi float [ %1568, %1564 ], [ %1562, %1547 ]
  %1573 = phi float [ %1569, %1564 ], [ %1563, %1547 ]
  %1574 = fmul fast float %1571, %1542
  %1575 = select i1 %170, float %1574, float %1571
  %1576 = call float @dx.op.dot3.f32(i32 55, float %1575, float %1572, float %1573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1577 = select i1 %170, float 0.000000e+00, float %1571
  %1578 = select i1 %170, float %1576, float %1572
  %1579 = select i1 %170, float 0.000000e+00, float %1573
  br label %1580

; <label>:1580                                    ; preds = %1570, %1532
  %1581 = phi float [ %1577, %1570 ], [ 0.000000e+00, %1532 ]
  %1582 = phi float [ %1578, %1570 ], [ 0.000000e+00, %1532 ]
  %1583 = phi float [ %1579, %1570 ], [ 0.000000e+00, %1532 ]
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 10240
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1632, label %1588

; <label>:1588                                    ; preds = %1580
  %1589 = add i32 %33, 460
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = add i32 %1591, 0
  %1593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1592, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1594 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1593, %dx.types.Handle %70, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1595 = extractvalue %dx.types.ResRet.f32 %1594, 1
  %1596 = extractvalue %dx.types.ResRet.f32 %1594, 3
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = and i32 %1598, 1048576
  %1600 = icmp ne i32 %1599, 0
  %1601 = and i32 %1598, 8192
  %1602 = icmp eq i32 %1601, 0
  br i1 %1602, label %1618, label %1603

; <label>:1603                                    ; preds = %1588
  %1604 = extractvalue %dx.types.ResRet.f32 %1594, 2
  %1605 = select i1 %1600, float %1604, float %1595
  %1606 = extractvalue %dx.types.ResRet.f32 %1594, 0
  %1607 = select i1 %1600, float %1606, float %1595
  %1608 = add i32 %33, 112
  %1609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1608, i32 undef)  ; BufferLoad(srv,index,wot)
  %1610 = extractvalue %dx.types.ResRet.i32 %1609, 0
  %1611 = lshr i32 %1610, 16
  %1612 = and i32 %1611, 255
  %1613 = uitofp i32 %1612 to float
  %1614 = fmul fast float %1613, 0x3F80101020000000
  %1615 = fmul fast float %1614, %1607
  %1616 = fmul fast float %1614, %1595
  %1617 = fmul fast float %1614, %1605
  br label %1618

; <label>:1618                                    ; preds = %1603, %1588
  %1619 = phi float [ %1615, %1603 ], [ 0.000000e+00, %1588 ]
  %1620 = phi float [ %1616, %1603 ], [ 0.000000e+00, %1588 ]
  %1621 = phi float [ %1617, %1603 ], [ 0.000000e+00, %1588 ]
  %1622 = and i32 %1598, 2048
  %1623 = icmp eq i32 %1622, 0
  br i1 %1623, label %1632, label %1624

; <label>:1624                                    ; preds = %1618
  %1625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1626 = extractvalue %dx.types.ResRet.i32 %1625, 0
  %1627 = shl i32 %1626, 4
  %1628 = and i32 %1627, 32752
  %1629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1628)  ; LegacyF16ToF32(value)
  %1630 = fmul fast float %1629, %1596
  %1631 = call float @dx.op.binary.f32(i32 35, float %1630, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1632

; <label>:1632                                    ; preds = %1624, %1618, %1580
  %1633 = phi float [ %1619, %1624 ], [ %1619, %1618 ], [ 0.000000e+00, %1580 ]
  %1634 = phi float [ %1620, %1624 ], [ %1620, %1618 ], [ 0.000000e+00, %1580 ]
  %1635 = phi float [ %1621, %1624 ], [ %1621, %1618 ], [ 0.000000e+00, %1580 ]
  %1636 = phi float [ %1631, %1624 ], [ 0x3F70101020000000, %1618 ], [ 0x3F70101020000000, %1580 ]
  %1637 = add i32 %33, 112
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1637, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = and i32 %1639, 255
  %1641 = uitofp i32 %1640 to float
  %1642 = lshr i32 %1639, 8
  %1643 = and i32 %1642, 255
  %1644 = uitofp i32 %1643 to float
  %1645 = call float @dx.op.dot3.f32(i32 55, float %1453, float %1454, float %1455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1646 = fmul fast float %1644, %1645
  %1647 = fadd fast float %1646, %1641
  %1648 = fmul fast float %1647, 0x3F70101020000000
  %1649 = call float @dx.op.unary.f32(i32 7, float %1648)  ; Saturate(value)
  br i1 %937, label %1650, label %1658

; <label>:1650                                    ; preds = %1632
  %1651 = fsub fast float 1.000000e+00, %1233
  %1652 = fmul fast float %1651, %921
  %1653 = fmul fast float %1651, %922
  %1654 = fmul fast float %1651, %923
  %1655 = fmul fast float %1651, %924
  %1656 = fmul fast float %1651, %925
  %1657 = fmul fast float %1651, %926
  br label %1658

; <label>:1658                                    ; preds = %1650, %1632
  %1659 = phi float [ %1652, %1650 ], [ %921, %1632 ]
  %1660 = phi float [ %1653, %1650 ], [ %922, %1632 ]
  %1661 = phi float [ %1654, %1650 ], [ %923, %1632 ]
  %1662 = phi float [ %1655, %1650 ], [ %924, %1632 ]
  %1663 = phi float [ %1656, %1650 ], [ %925, %1632 ]
  %1664 = phi float [ %1657, %1650 ], [ %926, %1632 ]
  %1665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1666 = extractvalue %dx.types.ResRet.i32 %1665, 0
  %1667 = and i32 %1666, 3
  %1668 = icmp eq i32 %1667, 3
  br i1 %1668, label %1747, label %1669

; <label>:1669                                    ; preds = %1658
  %1670 = and i32 %1666, 16
  %1671 = icmp ne i32 %1670, 0
  %1672 = select i1 %1671, float %1233, float 0.000000e+00
  %1673 = icmp eq i32 %1667, 0
  br i1 %1673, label %1674, label %1702

; <label>:1674                                    ; preds = %1669
  %1675 = and i32 %1666, 64
  %1676 = icmp ne i32 %1675, 0
  %1677 = select i1 %1676, float %1233, float 0.000000e+00
  %1678 = fsub fast float %1453, %1659
  %1679 = fsub fast float %1454, %1660
  %1680 = fsub fast float %1455, %1661
  %1681 = fmul fast float %1672, %1678
  %1682 = fmul fast float %1672, %1679
  %1683 = fmul fast float %1672, %1680
  %1684 = fadd fast float %1681, %1659
  %1685 = fadd fast float %1682, %1660
  %1686 = fadd fast float %1683, %1661
  %1687 = fsub fast float %1439, %930
  %1688 = fmul fast float %1672, %1687
  %1689 = fadd fast float %1688, %930
  %1690 = fsub fast float %1581, %1662
  %1691 = fsub fast float %1582, %1663
  %1692 = fsub fast float %1583, %1664
  %1693 = fmul fast float %1677, %1690
  %1694 = fmul fast float %1677, %1691
  %1695 = fmul fast float %1677, %1692
  %1696 = fadd fast float %1693, %1662
  %1697 = fadd fast float %1694, %1663
  %1698 = fadd fast float %1695, %1664
  %1699 = fsub fast float %1649, %935
  %1700 = fmul fast float %1672, %1699
  %1701 = fadd fast float %1700, %935
  br label %1747

; <label>:1702                                    ; preds = %1669
  %1703 = icmp eq i32 %1667, 1
  br i1 %1703, label %1704, label %1717

; <label>:1704                                    ; preds = %1702
  %1705 = fadd fast float %1453, -1.000000e+00
  %1706 = fadd fast float %1454, -1.000000e+00
  %1707 = fadd fast float %1455, -1.000000e+00
  %1708 = fmul fast float %1672, %1705
  %1709 = fmul fast float %1672, %1706
  %1710 = fmul fast float %1672, %1707
  %1711 = fadd fast float %1708, 1.000000e+00
  %1712 = fadd fast float %1709, 1.000000e+00
  %1713 = fadd fast float %1710, 1.000000e+00
  %1714 = fmul fast float %1711, %1659
  %1715 = fmul fast float %1712, %1660
  %1716 = fmul fast float %1713, %1661
  br label %1747

; <label>:1717                                    ; preds = %1702
  %1718 = icmp eq i32 %1667, 2
  br i1 %1718, label %1719, label %1747

; <label>:1719                                    ; preds = %1717
  %1720 = call float @dx.op.unary.f32(i32 24, float %1453)  ; Sqrt(value)
  %1721 = call float @dx.op.unary.f32(i32 24, float %1454)  ; Sqrt(value)
  %1722 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1723 = fadd fast float %1720, -5.000000e-01
  %1724 = fadd fast float %1721, -5.000000e-01
  %1725 = fadd fast float %1722, -5.000000e-01
  %1726 = fmul fast float %1723, %1672
  %1727 = fmul fast float %1724, %1672
  %1728 = fmul fast float %1725, %1672
  %1729 = fadd fast float %1726, 5.000000e-01
  %1730 = fadd fast float %1727, 5.000000e-01
  %1731 = fadd fast float %1728, 5.000000e-01
  %1732 = fmul fast float %1729, 2.000000e+00
  %1733 = fsub fast float 1.000000e+00, %1732
  %1734 = fmul fast float %1733, %1659
  %1735 = fadd fast float %1734, %1732
  %1736 = fmul fast float %1735, %1659
  %1737 = fmul fast float %1730, 2.000000e+00
  %1738 = fsub fast float 1.000000e+00, %1737
  %1739 = fmul fast float %1738, %1660
  %1740 = fadd fast float %1739, %1737
  %1741 = fmul fast float %1740, %1660
  %1742 = fmul fast float %1731, 2.000000e+00
  %1743 = fsub fast float 1.000000e+00, %1742
  %1744 = fmul fast float %1743, %1661
  %1745 = fadd fast float %1744, %1742
  %1746 = fmul fast float %1745, %1661
  br label %1747

; <label>:1747                                    ; preds = %1719, %1717, %1704, %1674, %1658
  %1748 = phi float [ %1659, %1658 ], [ %1736, %1719 ], [ %1659, %1717 ], [ %1714, %1704 ], [ %1684, %1674 ]
  %1749 = phi float [ %1660, %1658 ], [ %1741, %1719 ], [ %1660, %1717 ], [ %1715, %1704 ], [ %1685, %1674 ]
  %1750 = phi float [ %1661, %1658 ], [ %1746, %1719 ], [ %1661, %1717 ], [ %1716, %1704 ], [ %1686, %1674 ]
  %1751 = phi float [ %1662, %1658 ], [ %1662, %1719 ], [ %1662, %1717 ], [ %1662, %1704 ], [ %1696, %1674 ]
  %1752 = phi float [ %1663, %1658 ], [ %1663, %1719 ], [ %1663, %1717 ], [ %1663, %1704 ], [ %1697, %1674 ]
  %1753 = phi float [ %1664, %1658 ], [ %1664, %1719 ], [ %1664, %1717 ], [ %1664, %1704 ], [ %1698, %1674 ]
  %1754 = phi float [ %930, %1658 ], [ %930, %1719 ], [ %930, %1717 ], [ %930, %1704 ], [ %1689, %1674 ]
  %1755 = phi float [ %935, %1658 ], [ %935, %1719 ], [ %935, %1717 ], [ %935, %1704 ], [ %1701, %1674 ]
  %1756 = and i32 %1666, 12
  %1757 = icmp eq i32 %1756, 12
  br i1 %1757, label %1864, label %1758

; <label>:1758                                    ; preds = %1747
  %1759 = and i32 %1666, 2097184
  %1760 = icmp eq i32 %1759, 2097184
  %1761 = select i1 %1760, float %1233, float 0.000000e+00
  %1762 = and i32 %1666, 4194336
  %1763 = icmp eq i32 %1762, 4194336
  %1764 = select i1 %1763, float %1233, float 0.000000e+00
  %1765 = and i32 %1666, 8388640
  %1766 = icmp eq i32 %1765, 8388640
  %1767 = select i1 %1766, float %1233, float 0.000000e+00
  %1768 = and i32 %1666, 2048
  %1769 = icmp ne i32 %1768, 0
  %1770 = select i1 %1769, float %1233, float 0.000000e+00
  %1771 = and i32 %1666, 8192
  %1772 = icmp ne i32 %1771, 0
  %1773 = select i1 %1772, float %1233, float 0.000000e+00
  %1774 = icmp eq i32 %1756, 0
  br i1 %1774, label %1775, label %1800

; <label>:1775                                    ; preds = %1758
  %1776 = fsub fast float %1534, %919
  %1777 = fsub fast float %1535, %920
  %1778 = fmul fast float %1761, %1776
  %1779 = fmul fast float %1761, %1777
  %1780 = fadd fast float %1778, %919
  %1781 = fadd fast float %1779, %920
  %1782 = fsub fast float %1536, %933
  %1783 = fmul fast float %1764, %1782
  %1784 = fadd fast float %1783, %933
  %1785 = fsub fast float %1533, %932
  %1786 = fmul fast float %1767, %1785
  %1787 = fadd fast float %1786, %932
  %1788 = fsub fast float %1636, %934
  %1789 = fmul fast float %1770, %1788
  %1790 = fadd fast float %1789, %934
  %1791 = fsub fast float %1633, %927
  %1792 = fsub fast float %1634, %928
  %1793 = fsub fast float %1635, %929
  %1794 = fmul fast float %1773, %1791
  %1795 = fmul fast float %1773, %1792
  %1796 = fmul fast float %1773, %1793
  %1797 = fadd fast float %1794, %927
  %1798 = fadd fast float %1795, %928
  %1799 = fadd fast float %1796, %929
  br label %1864

; <label>:1800                                    ; preds = %1758
  %1801 = icmp eq i32 %1756, 4
  br i1 %1801, label %1802, label %1842

; <label>:1802                                    ; preds = %1800
  %1803 = fmul fast float %1761, %1534
  %1804 = fmul fast float %1761, %1535
  %1805 = fadd fast float %1803, %919
  %1806 = fadd fast float %1804, %920
  %1807 = call float @dx.op.binary.f32(i32 36, float %933, float %1536)  ; FMin(a,b)
  %1808 = fsub fast float %1807, %933
  %1809 = fmul fast float %1808, %1764
  %1810 = fadd fast float %1809, %933
  %1811 = fadd fast float %1533, %932
  %1812 = fmul fast float %1811, 0x3FF337FAE0000000
  %1813 = fmul fast float %932, %932
  %1814 = fmul fast float %1533, %1533
  %1815 = fadd fast float %1814, %1813
  %1816 = fmul fast float %1815, 0x3FE5152B00000000
  %1817 = fmul fast float %932, 0xBFCC1F85E0000000
  %1818 = fmul fast float %1817, %1533
  %1819 = fadd fast float %1818, 0xBFE1363700000000
  %1820 = fadd fast float %1819, %1812
  %1821 = fsub fast float %1820, %1816
  %1822 = fmul fast float %1811, 0x3FBA6F0D00000000
  %1823 = fmul fast float %1815, 0x3FD0432880000000
  %1824 = fmul fast float %932, 0xBFEF110800000000
  %1825 = fmul fast float %1824, %1533
  %1826 = fadd fast float %1825, 1.000000e+00
  %1827 = fsub fast float %1826, %1822
  %1828 = fadd fast float %1827, %1823
  %1829 = fdiv fast float %1821, %1828
  %1830 = call float @dx.op.unary.f32(i32 7, float %1829)  ; Saturate(value)
  %1831 = fsub fast float %1830, %932
  %1832 = fmul fast float %1831, %1767
  %1833 = fadd fast float %1832, %932
  %1834 = fmul fast float %1770, %1636
  %1835 = fadd fast float %1834, %934
  %1836 = fmul fast float %1773, %1633
  %1837 = fmul fast float %1773, %1634
  %1838 = fmul fast float %1773, %1635
  %1839 = fadd fast float %1836, %927
  %1840 = fadd fast float %1837, %928
  %1841 = fadd fast float %1838, %929
  br label %1864

; <label>:1842                                    ; preds = %1800
  %1843 = icmp eq i32 %1756, 8
  br i1 %1843, label %1844, label %1864

; <label>:1844                                    ; preds = %1842
  %1845 = fmul fast float %1761, %1534
  %1846 = fmul fast float %1761, %1535
  %1847 = fadd fast float %1845, %919
  %1848 = fadd fast float %1846, %920
  %1849 = call float @dx.op.binary.f32(i32 36, float %933, float %1536)  ; FMin(a,b)
  %1850 = fsub fast float %1849, %933
  %1851 = fmul fast float %1850, %1764
  %1852 = fadd fast float %1851, %933
  %1853 = fsub fast float %1533, %932
  %1854 = fmul fast float %1767, %1853
  %1855 = fadd fast float %1854, %932
  %1856 = fmul fast float %1770, %1636
  %1857 = fadd fast float %1856, %934
  %1858 = fmul fast float %1773, %1633
  %1859 = fmul fast float %1773, %1634
  %1860 = fmul fast float %1773, %1635
  %1861 = fadd fast float %1858, %927
  %1862 = fadd fast float %1859, %928
  %1863 = fadd fast float %1860, %929
  br label %1864

; <label>:1864                                    ; preds = %1844, %1842, %1802, %1775, %1747, %1232, %936, %918
  %1865 = phi float [ %919, %1747 ], [ %919, %1232 ], [ %919, %918 ], [ %1847, %1844 ], [ %919, %1842 ], [ %1805, %1802 ], [ %1780, %1775 ], [ %919, %936 ]
  %1866 = phi float [ %920, %1747 ], [ %920, %1232 ], [ %920, %918 ], [ %1848, %1844 ], [ %920, %1842 ], [ %1806, %1802 ], [ %1781, %1775 ], [ %920, %936 ]
  %1867 = phi float [ %1748, %1747 ], [ %921, %1232 ], [ %921, %918 ], [ %1748, %1844 ], [ %1748, %1842 ], [ %1748, %1802 ], [ %1748, %1775 ], [ %921, %936 ]
  %1868 = phi float [ %1749, %1747 ], [ %922, %1232 ], [ %922, %918 ], [ %1749, %1844 ], [ %1749, %1842 ], [ %1749, %1802 ], [ %1749, %1775 ], [ %922, %936 ]
  %1869 = phi float [ %1750, %1747 ], [ %923, %1232 ], [ %923, %918 ], [ %1750, %1844 ], [ %1750, %1842 ], [ %1750, %1802 ], [ %1750, %1775 ], [ %923, %936 ]
  %1870 = phi float [ %1751, %1747 ], [ %924, %1232 ], [ %924, %918 ], [ %1751, %1844 ], [ %1751, %1842 ], [ %1751, %1802 ], [ %1751, %1775 ], [ %924, %936 ]
  %1871 = phi float [ %1752, %1747 ], [ %925, %1232 ], [ %925, %918 ], [ %1752, %1844 ], [ %1752, %1842 ], [ %1752, %1802 ], [ %1752, %1775 ], [ %925, %936 ]
  %1872 = phi float [ %1753, %1747 ], [ %926, %1232 ], [ %926, %918 ], [ %1753, %1844 ], [ %1753, %1842 ], [ %1753, %1802 ], [ %1753, %1775 ], [ %926, %936 ]
  %1873 = phi float [ %927, %1747 ], [ %927, %1232 ], [ %927, %918 ], [ %1861, %1844 ], [ %927, %1842 ], [ %1839, %1802 ], [ %1797, %1775 ], [ %927, %936 ]
  %1874 = phi float [ %928, %1747 ], [ %928, %1232 ], [ %928, %918 ], [ %1862, %1844 ], [ %928, %1842 ], [ %1840, %1802 ], [ %1798, %1775 ], [ %928, %936 ]
  %1875 = phi float [ %929, %1747 ], [ %929, %1232 ], [ %929, %918 ], [ %1863, %1844 ], [ %929, %1842 ], [ %1841, %1802 ], [ %1799, %1775 ], [ %929, %936 ]
  %1876 = phi float [ %1754, %1747 ], [ %930, %1232 ], [ %930, %918 ], [ %1754, %1844 ], [ %1754, %1842 ], [ %1754, %1802 ], [ %1754, %1775 ], [ %930, %936 ]
  %1877 = phi float [ %932, %1747 ], [ %932, %1232 ], [ %932, %918 ], [ %1855, %1844 ], [ %932, %1842 ], [ %1833, %1802 ], [ %1787, %1775 ], [ %932, %936 ]
  %1878 = phi float [ %933, %1747 ], [ %933, %1232 ], [ %933, %918 ], [ %1852, %1844 ], [ %933, %1842 ], [ %1810, %1802 ], [ %1784, %1775 ], [ %933, %936 ]
  %1879 = phi float [ %934, %1747 ], [ %934, %1232 ], [ %934, %918 ], [ %1857, %1844 ], [ %934, %1842 ], [ %1835, %1802 ], [ %1790, %1775 ], [ %934, %936 ]
  %1880 = phi float [ %1755, %1747 ], [ %935, %1232 ], [ %935, %918 ], [ %1755, %1844 ], [ %1755, %1842 ], [ %1755, %1802 ], [ %1755, %1775 ], [ %935, %936 ]
  br i1 %345, label %2809, label %1881

; <label>:1881                                    ; preds = %1864
  %1882 = icmp ult i32 %398, 3
  %1883 = add i32 %33, 56
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = add i32 %33, 60
  %1887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.i32 %1887, 0
  %1889 = or i32 %1888, %1885
  %1890 = icmp eq i32 %1889, 0
  br i1 %1890, label %2809, label %1891

; <label>:1891                                    ; preds = %1881
  %1892 = and i32 %1885, 262144
  %1893 = icmp ne i32 %1892, 0
  %1894 = select i1 %1893, float %36, float 1.000000e+00
  %1895 = select i1 %1893, float %37, float 0.000000e+00
  %1896 = select i1 %1893, float %38, float 0.000000e+00
  %1897 = select i1 %1893, float %39, float 1.000000e+00
  %1898 = select i1 %1893, float %40, float %61
  %1899 = select i1 %1893, float %41, float %62
  %1900 = add i32 %33, 316
  %1901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.i32 %1901, 0
  %1903 = lshr i32 %1902, 16
  %1904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1903)  ; LegacyF16ToF32(value)
  %1905 = fmul fast float %1904, 0x3F50624DE0000000
  %1906 = add i32 %33, 120
  %1907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.i32 %1907, 0
  %1909 = lshr i32 %1908, 16
  %1910 = and i32 %1909, 255
  %1911 = lshr i32 %1908, 24
  %1912 = add i32 %33, 324
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = and i32 %1914, 65535
  %1916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1915)  ; LegacyF16ToF32(value)
  %1917 = lshr i32 %1914, 16
  %1918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1917)  ; LegacyF16ToF32(value)
  %1919 = add i32 %33, 64
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = lshr i32 %1921, 22
  %1923 = shl nuw nsw i32 %1922, 5
  %1924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1923)  ; LegacyF16ToF32(value)
  %1925 = shl i32 %1921, 4
  %1926 = and i32 %1925, 32752
  %1927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1926)  ; LegacyF16ToF32(value)
  %1928 = lshr i32 %1921, 7
  %1929 = and i32 %1928, 32752
  %1930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1929)  ; LegacyF16ToF32(value)
  %1931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1932 = extractvalue %dx.types.CBufRet.f32 %1931, 3
  %1933 = fmul fast float %1932, 1.000000e+03
  %1934 = fmul fast float %295, %1933
  %1935 = call float @dx.op.unary.f32(i32 22, float %1934)  ; Frc(value)
  %1936 = fadd fast float %1935, %285
  %1937 = fmul fast float %296, %1933
  %1938 = call float @dx.op.unary.f32(i32 22, float %1937)  ; Frc(value)
  %1939 = fadd fast float %1938, %287
  %1940 = fmul fast float %1905, %1933
  %1941 = call float @dx.op.unary.f32(i32 22, float %1940)  ; Frc(value)
  %1942 = fmul fast float %1941, 0x401921FB60000000
  %1943 = fadd fast float %1942, %1924
  %1944 = call float @dx.op.unary.f32(i32 13, float %1943)  ; Sin(value)
  %1945 = call float @dx.op.unary.f32(i32 12, float %1943)  ; Cos(value)
  %1946 = fsub fast float -0.000000e+00, %1944
  %1947 = fadd fast float %1898, -5.000000e-01
  %1948 = fadd fast float %1899, -5.000000e-01
  %1949 = fmul fast float %1916, %1947
  %1950 = fmul fast float %1918, %1948
  %1951 = fadd fast float %1949, 5.000000e-01
  %1952 = fadd fast float %1950, 5.000000e-01
  %1953 = fmul fast float %1927, %1951
  %1954 = fmul fast float %1930, %1952
  %1955 = fmul fast float %1945, %1953
  %1956 = call float @dx.op.tertiary.f32(i32 46, float %1946, float %1954, float %1955)  ; FMad(a,b,c)
  %1957 = fmul fast float %1944, %1953
  %1958 = call float @dx.op.tertiary.f32(i32 46, float %1945, float %1954, float %1957)  ; FMad(a,b,c)
  %1959 = fadd fast float %1936, %1956
  %1960 = fadd fast float %1939, %1958
  %1961 = icmp ugt i32 %1910, 1
  %1962 = icmp ugt i32 %1908, 33554431
  %1963 = or i1 %1962, %1961
  br i1 %1963, label %1964, label %1989

; <label>:1964                                    ; preds = %1891
  %1965 = add i32 %33, 260
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = lshr i32 %1967, 16
  %1969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1968)  ; LegacyF16ToF32(value)
  %1970 = fmul fast float %1932, %1969
  %1971 = call float @dx.op.unary.f32(i32 22, float %1970)  ; Frc(value)
  %1972 = mul nuw nsw i32 %1910, %1911
  %1973 = uitofp i32 %1972 to float
  %1974 = fmul fast float %1971, %1973
  %1975 = call float @dx.op.unary.f32(i32 27, float %1974)  ; Round_ni(value)
  %1976 = fptoui float %1975 to i32
  %1977 = urem i32 %1976, %1910
  %1978 = udiv i32 %1976, %1911
  %1979 = call float @dx.op.unary.f32(i32 22, float %1959)  ; Frc(value)
  %1980 = call float @dx.op.unary.f32(i32 22, float %1960)  ; Frc(value)
  %1981 = uitofp i32 %1977 to float
  %1982 = uitofp i32 %1978 to float
  %1983 = fadd fast float %1979, %1981
  %1984 = fadd fast float %1980, %1982
  %1985 = uitofp i32 %1910 to float
  %1986 = uitofp i32 %1911 to float
  %1987 = fdiv fast float %1983, %1985
  %1988 = fdiv fast float %1984, %1986
  br label %1989

; <label>:1989                                    ; preds = %1964, %1891
  %1990 = phi float [ %1987, %1964 ], [ %1959, %1891 ]
  %1991 = phi float [ %1988, %1964 ], [ %1960, %1891 ]
  %1992 = and i32 %1885, 16777216
  %1993 = icmp eq i32 %1992, 0
  br i1 %1993, label %2103, label %1994

; <label>:1994                                    ; preds = %1989
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 0
  %1997 = extractvalue %dx.types.CBufRet.f32 %1995, 1
  %1998 = extractvalue %dx.types.CBufRet.f32 %1995, 2
  %1999 = fadd fast float %1996, %128
  %2000 = fadd fast float %1997, %129
  %2001 = fadd fast float %1998, %130
  %2002 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2003 = extractvalue %dx.types.CBufRet.f32 %2002, 0
  %2004 = call float @dx.op.unary.f32(i32 7, float %2003)  ; Saturate(value)
  %2005 = icmp eq i32 %34, 65535
  br i1 %2005, label %2100, label %2006

; <label>:2006                                    ; preds = %1994
  %2007 = lshr i32 %34, 1
  %2008 = shl i32 %2007, 2
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = and i32 %34, 1
  %2012 = icmp ne i32 %2011, 0
  %2013 = lshr i32 %2010, 16
  %2014 = and i32 %2010, 65535
  %2015 = select i1 %2012, i32 %2013, i32 %2014
  %2016 = icmp eq i32 %2015, 65535
  br i1 %2016, label %2096, label %2017

; <label>:2017                                    ; preds = %2006
  %2018 = mul nuw nsw i32 %2015, 40
  %2019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.f32 %2019, 0
  %2021 = extractvalue %dx.types.ResRet.f32 %2019, 1
  %2022 = extractvalue %dx.types.ResRet.f32 %2019, 2
  %2023 = add nuw nsw i32 %2018, 12
  %2024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.ResRet.f32 %2024, 1
  %2027 = extractvalue %dx.types.ResRet.f32 %2024, 2
  %2028 = add nuw nsw i32 %2018, 24
  %2029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2028, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.f32 %2029, 0
  %2031 = extractvalue %dx.types.ResRet.f32 %2029, 1
  %2032 = extractvalue %dx.types.ResRet.f32 %2029, 2
  %2033 = add nuw nsw i32 %2018, 36
  %2034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.f32 %2034, 0
  %2036 = fsub fast float %1999, %2020
  %2037 = fsub fast float %2000, %2021
  %2038 = fsub fast float %2001, %2022
  %2039 = fmul fast float %2035, %2036
  %2040 = fmul fast float %2035, %2037
  %2041 = fmul fast float %2035, %2038
  %2042 = call float @dx.op.unary.f32(i32 27, float %2039)  ; Round_ni(value)
  %2043 = call float @dx.op.unary.f32(i32 27, float %2040)  ; Round_ni(value)
  %2044 = call float @dx.op.unary.f32(i32 27, float %2041)  ; Round_ni(value)
  %2045 = fadd fast float %2042, 5.000000e-01
  %2046 = fadd fast float %2043, 5.000000e-01
  %2047 = fadd fast float %2044, 5.000000e-01
  %2048 = fmul fast float %2045, %2025
  %2049 = fmul fast float %2046, %2026
  %2050 = fmul fast float %2047, %2027
  %2051 = shl i32 %34, 2
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = add i32 %2053, 0
  %2055 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2054, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2056 = call float @dx.op.unary.f32(i32 22, float %2048)  ; Frc(value)
  %2057 = call float @dx.op.unary.f32(i32 22, float %2049)  ; Frc(value)
  %2058 = call float @dx.op.unary.f32(i32 22, float %2050)  ; Frc(value)
  %2059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2055, %dx.types.Handle %30, float %2056, float %2057, float %2058, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2060 = extractvalue %dx.types.ResRet.f32 %2059, 0
  %2061 = extractvalue %dx.types.ResRet.f32 %2059, 1
  %2062 = extractvalue %dx.types.ResRet.f32 %2059, 2
  %2063 = fmul fast float %2060, 1.023000e+03
  %2064 = fmul fast float %2061, 1.023000e+03
  %2065 = fmul fast float %2062, 1.023000e+03
  %2066 = fadd fast float %2063, 5.000000e-01
  %2067 = fadd fast float %2064, 5.000000e-01
  %2068 = fadd fast float %2065, 5.000000e-01
  %2069 = call float @dx.op.unary.f32(i32 27, float %2066)  ; Round_ni(value)
  %2070 = call float @dx.op.unary.f32(i32 27, float %2067)  ; Round_ni(value)
  %2071 = call float @dx.op.unary.f32(i32 27, float %2068)  ; Round_ni(value)
  %2072 = fsub fast float %2039, %2042
  %2073 = fsub fast float %2040, %2043
  %2074 = fsub fast float %2041, %2044
  %2075 = fmul fast float %2072, 7.500000e-01
  %2076 = fmul fast float %2073, 7.500000e-01
  %2077 = fmul fast float %2074, 7.500000e-01
  %2078 = fadd fast float %2042, 1.250000e-01
  %2079 = fadd fast float %2078, %2075
  %2080 = fadd fast float %2079, %2069
  %2081 = fadd fast float %2043, 1.250000e-01
  %2082 = fadd fast float %2081, %2076
  %2083 = fadd fast float %2082, %2070
  %2084 = fadd fast float %2044, 1.250000e-01
  %2085 = fadd fast float %2084, %2077
  %2086 = fadd fast float %2085, %2071
  %2087 = fmul fast float %2080, %2030
  %2088 = fmul fast float %2083, %2031
  %2089 = fmul fast float %2086, %2032
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2051, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = add i32 %2091, 0
  %2093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2094 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2093, %dx.types.Handle %28, float %2087, float %2088, float %2089, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  br label %2096

; <label>:2096                                    ; preds = %2017, %2006
  %2097 = phi float [ %2095, %2017 ], [ -1.000000e+00, %2006 ]
  %2098 = fadd fast float %2097, %2004
  %2099 = call float @dx.op.unary.f32(i32 7, float %2098)  ; Saturate(value)
  br label %2100

; <label>:2100                                    ; preds = %2096, %1994
  %2101 = phi float [ %2099, %2096 ], [ %2004, %1994 ]
  %2102 = fmul fast float %2101, %394
  br label %2103

; <label>:2103                                    ; preds = %2100, %1989
  %2104 = phi float [ %2102, %2100 ], [ %394, %1989 ]
  %2105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2106 = extractvalue %dx.types.ResRet.i32 %2105, 0
  %2107 = and i32 %2106, 256
  %2108 = icmp eq i32 %2107, 0
  br i1 %2108, label %2155, label %2109

; <label>:2109                                    ; preds = %2103
  %2110 = add i32 %33, 432
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = add i32 %2112, 0
  %2114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2115 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2114, %dx.types.Handle %70, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2116 = extractvalue %dx.types.ResRet.f32 %2115, 0
  %2117 = add i32 %33, 132
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2117, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = shl i32 %2119, 4
  %2121 = and i32 %2120, 32752
  %2122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2121)  ; LegacyF16ToF32(value)
  %2123 = lshr i32 %2119, 7
  %2124 = and i32 %2123, 32752
  %2125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2124)  ; LegacyF16ToF32(value)
  %2126 = fsub fast float 1.000000e+00, %2104
  %2127 = call float @dx.op.binary.f32(i32 35, float %2126, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2128 = bitcast float %2104 to i32
  %2129 = sitofp i32 %2128 to float
  %2130 = fadd fast float %2129, 0xC1CFBF8940000000
  %2131 = fmul fast float %2125, %2130
  %2132 = fadd fast float %2131, 0x41CFBF8940000000
  %2133 = fptosi float %2132 to i32
  %2134 = bitcast i32 %2133 to float
  %2135 = bitcast float %2127 to i32
  %2136 = sitofp i32 %2135 to float
  %2137 = fadd fast float %2136, 0xC1CFBF8940000000
  %2138 = fmul fast float %2137, %2125
  %2139 = fadd fast float %2138, 0x41CFBF8940000000
  %2140 = fptosi float %2139 to i32
  %2141 = bitcast i32 %2140 to float
  %2142 = fmul fast float %2134, %2122
  %2143 = fmul fast float %2141, %2122
  %2144 = fsub fast float %2127, %2142
  %2145 = fadd fast float %2143, %2127
  %2146 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2147 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2148 = fsub fast float %2116, %2146
  %2149 = fsub fast float %2147, %2146
  %2150 = bitcast float %2149 to i32
  %2151 = sub nsw i32 2129859010, %2150
  %2152 = bitcast i32 %2151 to float
  %2153 = fmul fast float %2152, %2148
  %2154 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  br label %2155

; <label>:2155                                    ; preds = %2109, %2103
  %2156 = phi float [ %2154, %2109 ], [ %2104, %2103 ]
  %2157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2158 = extractvalue %dx.types.ResRet.i32 %2157, 0
  %2159 = and i32 %2158, 128
  %2160 = icmp eq i32 %2159, 0
  br i1 %2160, label %2177, label %2161

; <label>:2161                                    ; preds = %2155
  %2162 = add i32 %33, 416
  %2163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2162, i32 undef)  ; BufferLoad(srv,index,wot)
  %2164 = extractvalue %dx.types.ResRet.i32 %2163, 0
  %2165 = add i32 %2164, 0
  %2166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2166, %dx.types.Handle %70, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2168 = extractvalue %dx.types.ResRet.f32 %2167, 0
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = and i32 %2170, 524288
  %2172 = icmp ne i32 %2171, 0
  %2173 = fcmp fast ogt float %2168, 0x3FE0101020000000
  %2174 = select i1 %2173, float 1.000000e+00, float 0.000000e+00
  %2175 = select i1 %2172, float %2174, float %2168
  %2176 = fmul fast float %2175, %2156
  br label %2177

; <label>:2177                                    ; preds = %2161, %2155
  %2178 = phi float [ %2176, %2161 ], [ %2156, %2155 ]
  %2179 = fcmp fast ult float %2178, 0x3F70101020000000
  br i1 %2179, label %2809, label %2180

; <label>:2180                                    ; preds = %2177
  %2181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2182 = extractvalue %dx.types.ResRet.i32 %2181, 0
  %2183 = and i32 %2182, 16
  %2184 = icmp eq i32 %2183, 0
  br i1 %2184, label %2383, label %2185

; <label>:2185                                    ; preds = %2180
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = add i32 %33, 368
  %2189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2188, i32 undef)  ; BufferLoad(srv,index,wot)
  %2190 = extractvalue %dx.types.ResRet.i32 %2189, 0
  %2191 = add i32 %2190, 0
  %2192 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2191, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2193 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2192, %dx.types.Handle %69, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2194 = extractvalue %dx.types.ResRet.f32 %2193, 0
  %2195 = extractvalue %dx.types.ResRet.f32 %2193, 1
  %2196 = extractvalue %dx.types.ResRet.f32 %2193, 2
  %2197 = extractvalue %dx.types.ResRet.f32 %2193, 3
  %2198 = and i32 %2187, 255
  %2199 = uitofp i32 %2198 to float
  %2200 = lshr i32 %2187, 8
  %2201 = and i32 %2200, 255
  %2202 = uitofp i32 %2201 to float
  %2203 = fmul fast float %2197, %2199
  %2204 = fadd fast float %2203, %2202
  %2205 = fmul fast float %2204, 0x3F70101000000000
  %2206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2207 = extractvalue %dx.types.ResRet.i32 %2206, 0
  %2208 = and i32 %2207, 512
  %2209 = icmp eq i32 %2208, 0
  br i1 %2209, label %2218, label %2210

; <label>:2210                                    ; preds = %2185
  %2211 = add i32 %33, 448
  %2212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2211, i32 undef)  ; BufferLoad(srv,index,wot)
  %2213 = extractvalue %dx.types.ResRet.i32 %2212, 0
  %2214 = add i32 %2213, 0
  %2215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2216 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2215, %dx.types.Handle %70, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2217 = extractvalue %dx.types.ResRet.f32 %2216, 0
  br label %2218

; <label>:2218                                    ; preds = %2210, %2185
  %2219 = phi float [ %2217, %2210 ], [ 1.000000e+00, %2185 ]
  %2220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2221 = extractvalue %dx.types.ResRet.i32 %2220, 0
  %2222 = and i32 %2221, 33554432
  %2223 = icmp eq i32 %2222, 0
  br i1 %2223, label %2330, label %2224

; <label>:2224                                    ; preds = %2218
  %2225 = add i32 %33, 256
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = and i32 %2227, 65535
  %2229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2228)  ; LegacyF16ToF32(value)
  %2230 = lshr i32 %2227, 16
  %2231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2230)  ; LegacyF16ToF32(value)
  %2232 = add i32 %33, 260
  %2233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2232, i32 undef)  ; BufferLoad(srv,index,wot)
  %2234 = extractvalue %dx.types.ResRet.i32 %2233, 0
  %2235 = and i32 %2234, 65535
  %2236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2235)  ; LegacyF16ToF32(value)
  %2237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2238 = extractvalue %dx.types.ResRet.i32 %2237, 0
  %2239 = lshr i32 %2238, 24
  %2240 = uitofp i32 %2239 to float
  %2241 = fmul fast float %2240, 0x3F70101020000000
  %2242 = and i32 %2238, 255
  %2243 = uitofp i32 %2242 to float
  %2244 = fmul fast float %2243, 0x3F70101020000000
  %2245 = lshr i32 %2238, 8
  %2246 = and i32 %2245, 255
  %2247 = uitofp i32 %2246 to float
  %2248 = fmul fast float %2247, 0x3F70101020000000
  %2249 = lshr i32 %2238, 16
  %2250 = and i32 %2249, 255
  %2251 = uitofp i32 %2250 to float
  %2252 = fmul fast float %2251, 0x3F70101020000000
  %2253 = add i32 %33, 252
  %2254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2253, i32 undef)  ; BufferLoad(srv,index,wot)
  %2255 = extractvalue %dx.types.ResRet.i32 %2254, 0
  %2256 = lshr i32 %2255, 24
  %2257 = uitofp i32 %2256 to float
  %2258 = fmul fast float %2257, 0x3F70101020000000
  %2259 = and i32 %2255, 255
  %2260 = uitofp i32 %2259 to float
  %2261 = fmul fast float %2260, 0x3F70101020000000
  %2262 = lshr i32 %2255, 8
  %2263 = and i32 %2262, 255
  %2264 = uitofp i32 %2263 to float
  %2265 = fmul fast float %2264, 0x3F70101020000000
  %2266 = lshr i32 %2255, 16
  %2267 = and i32 %2266, 255
  %2268 = uitofp i32 %2267 to float
  %2269 = fmul fast float %2268, 0x3F70101020000000
  %2270 = bitcast float %2194 to i32
  %2271 = ashr i32 %2270, 1
  %2272 = sub nsw i32 1597463174, %2271
  %2273 = bitcast i32 %2272 to float
  %2274 = fmul fast float %2194, 5.000000e-01
  %2275 = fmul fast float %2273, %2273
  %2276 = fmul fast float %2275, %2274
  %2277 = fsub fast float 1.500000e+00, %2276
  %2278 = fmul fast float %2273, %2194
  %2279 = fmul fast float %2278, %2277
  %2280 = bitcast float %2195 to i32
  %2281 = ashr i32 %2280, 1
  %2282 = sub nsw i32 1597463174, %2281
  %2283 = bitcast i32 %2282 to float
  %2284 = fmul fast float %2195, 5.000000e-01
  %2285 = fmul fast float %2283, %2283
  %2286 = fmul fast float %2285, %2284
  %2287 = fsub fast float 1.500000e+00, %2286
  %2288 = fmul fast float %2283, %2195
  %2289 = fmul fast float %2288, %2287
  %2290 = bitcast float %2196 to i32
  %2291 = ashr i32 %2290, 1
  %2292 = sub nsw i32 1597463174, %2291
  %2293 = bitcast i32 %2292 to float
  %2294 = fmul fast float %2196, 5.000000e-01
  %2295 = fmul fast float %2293, %2293
  %2296 = fmul fast float %2295, %2294
  %2297 = fsub fast float 1.500000e+00, %2296
  %2298 = fmul fast float %2293, %2196
  %2299 = fmul fast float %2298, %2297
  %2300 = fsub fast float %2279, %2261
  %2301 = fsub fast float %2289, %2265
  %2302 = fsub fast float %2299, %2269
  %2303 = fmul fast float %2300, %2229
  %2304 = fmul fast float %2301, %2231
  %2305 = fmul fast float %2302, %2236
  %2306 = fadd fast float %2303, %2244
  %2307 = fadd fast float %2304, %2248
  %2308 = fadd fast float %2305, %2252
  %2309 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2310 = call float @dx.op.unary.f32(i32 7, float %2307)  ; Saturate(value)
  %2311 = call float @dx.op.unary.f32(i32 7, float %2308)  ; Saturate(value)
  %2312 = fmul fast float %2309, %2309
  %2313 = fmul fast float %2310, %2310
  %2314 = fmul fast float %2311, %2311
  %2315 = fsub fast float %2312, %2194
  %2316 = fsub fast float %2313, %2195
  %2317 = fsub fast float %2314, %2196
  %2318 = fmul fast float %2315, %2219
  %2319 = fmul fast float %2316, %2219
  %2320 = fmul fast float %2317, %2219
  %2321 = fadd fast float %2318, %2194
  %2322 = fadd fast float %2319, %2195
  %2323 = fadd fast float %2320, %2196
  %2324 = fadd fast float %2241, %2205
  %2325 = fsub fast float %2324, %2258
  %2326 = call float @dx.op.unary.f32(i32 7, float %2325)  ; Saturate(value)
  %2327 = fsub fast float %2326, %2205
  %2328 = fmul fast float %2327, %2219
  %2329 = fadd fast float %2328, %2205
  br label %2383

; <label>:2330                                    ; preds = %2218
  %2331 = and i32 %2221, 134217728
  %2332 = icmp eq i32 %2331, 0
  br i1 %2332, label %2367, label %2333

; <label>:2333                                    ; preds = %2330
  %2334 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %2335 = call float @dx.op.unary.f32(i32 24, float %276)  ; Sqrt(value)
  %2336 = call float @dx.op.unary.f32(i32 24, float %280)  ; Sqrt(value)
  %2337 = fadd fast float %2334, -5.000000e-01
  %2338 = fadd fast float %2335, -5.000000e-01
  %2339 = fadd fast float %2336, -5.000000e-01
  %2340 = fmul fast float %2337, %2219
  %2341 = fmul fast float %2338, %2219
  %2342 = fmul fast float %2339, %2219
  %2343 = fadd fast float %2340, 5.000000e-01
  %2344 = fadd fast float %2341, 5.000000e-01
  %2345 = fadd fast float %2342, 5.000000e-01
  %2346 = call float @dx.op.unary.f32(i32 24, float %2194)  ; Sqrt(value)
  %2347 = call float @dx.op.unary.f32(i32 24, float %2195)  ; Sqrt(value)
  %2348 = call float @dx.op.unary.f32(i32 24, float %2196)  ; Sqrt(value)
  %2349 = fmul fast float %2343, 2.000000e+00
  %2350 = fsub fast float 1.000000e+00, %2349
  %2351 = fmul fast float %2350, %2346
  %2352 = fadd fast float %2351, %2349
  %2353 = fmul fast float %2352, %2346
  %2354 = fmul fast float %2344, 2.000000e+00
  %2355 = fsub fast float 1.000000e+00, %2354
  %2356 = fmul fast float %2355, %2347
  %2357 = fadd fast float %2356, %2354
  %2358 = fmul fast float %2357, %2347
  %2359 = fmul fast float %2345, 2.000000e+00
  %2360 = fsub fast float 1.000000e+00, %2359
  %2361 = fmul fast float %2360, %2348
  %2362 = fadd fast float %2361, %2359
  %2363 = fmul fast float %2362, %2348
  %2364 = fmul fast float %2353, %2353
  %2365 = fmul fast float %2358, %2358
  %2366 = fmul fast float %2363, %2363
  br label %2383

; <label>:2367                                    ; preds = %2330
  %2368 = fmul fast float %272, %272
  %2369 = fmul fast float %276, %276
  %2370 = fmul fast float %280, %280
  %2371 = fadd fast float %2368, -1.000000e+00
  %2372 = fadd fast float %2369, -1.000000e+00
  %2373 = fadd fast float %2370, -1.000000e+00
  %2374 = fmul fast float %2219, %2371
  %2375 = fmul fast float %2219, %2372
  %2376 = fmul fast float %2219, %2373
  %2377 = fadd fast float %2374, 1.000000e+00
  %2378 = fadd fast float %2375, 1.000000e+00
  %2379 = fadd fast float %2376, 1.000000e+00
  %2380 = fmul fast float %2377, %2194
  %2381 = fmul fast float %2378, %2195
  %2382 = fmul fast float %2379, %2196
  br label %2383

; <label>:2383                                    ; preds = %2367, %2333, %2224, %2180
  %2384 = phi float [ %2329, %2224 ], [ %2205, %2333 ], [ %2205, %2367 ], [ 0x3FA23C0BE0000000, %2180 ]
  %2385 = phi float [ %2321, %2224 ], [ %2364, %2333 ], [ %2380, %2367 ], [ 1.000000e+00, %2180 ]
  %2386 = phi float [ %2322, %2224 ], [ %2365, %2333 ], [ %2381, %2367 ], [ 1.000000e+00, %2180 ]
  %2387 = phi float [ %2323, %2224 ], [ %2366, %2333 ], [ %2382, %2367 ], [ 1.000000e+00, %2180 ]
  %2388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2389 = extractvalue %dx.types.CBufRet.i32 %2388, 1
  %2390 = and i32 %2389, 1
  %2391 = icmp ne i32 %2390, 0
  %2392 = add i32 %33, 356
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = and i32 %2394, 32
  %2396 = icmp ne i32 %2395, 0
  %2397 = and i1 %2391, %2396
  %2398 = select i1 %2397, float 1.000000e+00, float %2385
  %2399 = select i1 %2397, float 0x3FD3333340000000, float %2386
  %2400 = select i1 %2397, float 0x3FD3333340000000, float %2387
  %2401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2402 = extractvalue %dx.types.ResRet.i32 %2401, 0
  %2403 = and i32 %2402, 32
  %2404 = icmp eq i32 %2403, 0
  br i1 %2404, label %2477, label %2405

; <label>:2405                                    ; preds = %2383
  %2406 = add i32 %33, 124
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = add i32 %33, 384
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2409, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = add i32 %2411, 0
  %2413 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2412, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2414 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2413, %dx.types.Handle %69, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2415 = extractvalue %dx.types.ResRet.f32 %2414, 0
  %2416 = extractvalue %dx.types.ResRet.f32 %2414, 1
  %2417 = extractvalue %dx.types.ResRet.f32 %2414, 2
  %2418 = extractvalue %dx.types.ResRet.f32 %2414, 3
  %2419 = and i32 %2408, 255
  %2420 = uitofp i32 %2419 to float
  %2421 = lshr i32 %2408, 8
  %2422 = and i32 %2421, 255
  %2423 = uitofp i32 %2422 to float
  %2424 = lshr i32 %2408, 16
  %2425 = and i32 %2424, 255
  %2426 = uitofp i32 %2425 to float
  %2427 = fmul fast float %2426, 0x3F70101000000000
  %2428 = fmul fast float %2415, %2420
  %2429 = fadd fast float %2428, %2423
  %2430 = fmul fast float %2429, 0x3F70101000000000
  %2431 = fadd fast float %2416, -5.000000e-01
  %2432 = fadd fast float %2418, -5.000000e-01
  %2433 = fmul fast float %2431, %2427
  %2434 = fmul fast float %2432, %2427
  %2435 = fadd fast float %2433, 5.000000e-01
  %2436 = fadd fast float %2434, 5.000000e-01
  %2437 = fmul fast float %2435, 2.000000e+00
  %2438 = fadd fast float %2437, -1.000000e+00
  %2439 = fmul fast float %2436, 2.000000e+00
  %2440 = fadd fast float %2439, -1.000000e+00
  %2441 = fadd fast float %2438, %2440
  %2442 = fmul fast float %2441, 5.000000e-01
  %2443 = fsub fast float %2438, %2440
  %2444 = fmul fast float %2443, 5.000000e-01
  %2445 = call float @dx.op.unary.f32(i32 6, float %2442)  ; FAbs(value)
  %2446 = fsub fast float 1.000000e+00, %2445
  %2447 = call float @dx.op.unary.f32(i32 6, float %2444)  ; FAbs(value)
  %2448 = fsub fast float %2446, %2447
  %2449 = call float @dx.op.dot3.f32(i32 55, float %2442, float %2444, float %2448, float %2442, float %2444, float %2448)  ; Dot3(ax,ay,az,bx,by,bz)
  %2450 = call float @dx.op.unary.f32(i32 25, float %2449)  ; Rsqrt(value)
  %2451 = fmul fast float %2442, %2450
  %2452 = fmul fast float %2444, %2450
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 67108864
  %2456 = icmp eq i32 %2455, 0
  br i1 %2456, label %2473, label %2457

; <label>:2457                                    ; preds = %2405
  %2458 = add i32 %33, 312
  %2459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2458, i32 undef)  ; BufferLoad(srv,index,wot)
  %2460 = extractvalue %dx.types.ResRet.i32 %2459, 0
  %2461 = and i32 %2460, 65535
  %2462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2461)  ; LegacyF16ToF32(value)
  %2463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2464 = extractvalue %dx.types.ResRet.i32 %2463, 0
  %2465 = and i32 %2464, 65535
  %2466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2465)  ; LegacyF16ToF32(value)
  %2467 = lshr i32 %2460, 16
  %2468 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2467)  ; LegacyF16ToF32(value)
  %2469 = fsub fast float %2430, %2468
  %2470 = fmul fast float %2469, %2462
  %2471 = fadd fast float %2470, %2466
  %2472 = call float @dx.op.unary.f32(i32 7, float %2471)  ; Saturate(value)
  br label %2473

; <label>:2473                                    ; preds = %2457, %2405
  %2474 = phi float [ %2472, %2457 ], [ %2430, %2405 ]
  %2475 = call float @dx.op.dot2.f32(i32 54, float %2451, float %2452, float %1894, float %1895)  ; Dot2(ax,ay,bx,by)
  %2476 = call float @dx.op.dot2.f32(i32 54, float %2451, float %2452, float %1896, float %1897)  ; Dot2(ax,ay,bx,by)
  br label %2477

; <label>:2477                                    ; preds = %2473, %2383
  %2478 = phi float [ %2474, %2473 ], [ 0x3FD6666660000000, %2383 ]
  %2479 = phi float [ %2475, %2473 ], [ 0.000000e+00, %2383 ]
  %2480 = phi float [ %2476, %2473 ], [ 0.000000e+00, %2383 ]
  %2481 = phi float [ %2417, %2473 ], [ 1.000000e+00, %2383 ]
  %2482 = add i32 %33, 192
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = lshr i32 %2484, 22
  %2486 = shl nuw nsw i32 %2485, 5
  %2487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2486)  ; LegacyF16ToF32(value)
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 64
  %2491 = icmp eq i32 %2490, 0
  br i1 %2491, label %2525, label %2492

; <label>:2492                                    ; preds = %2477
  %2493 = add i32 %33, 400
  %2494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2493, i32 undef)  ; BufferLoad(srv,index,wot)
  %2495 = extractvalue %dx.types.ResRet.i32 %2494, 0
  %2496 = add i32 %2495, 0
  %2497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = and i32 %2499, 131072
  %2501 = icmp eq i32 %2500, 0
  %2502 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2497, %dx.types.Handle %69, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2503 = extractvalue %dx.types.ResRet.f32 %2502, 0
  %2504 = extractvalue %dx.types.ResRet.f32 %2502, 1
  %2505 = extractvalue %dx.types.ResRet.f32 %2502, 2
  %2506 = fmul fast float %2503, %260
  %2507 = fmul fast float %2504, %263
  %2508 = fmul fast float %2505, %266
  br i1 %2501, label %2515, label %2509

; <label>:2509                                    ; preds = %2492
  %2510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2511 = extractvalue %dx.types.CBufRet.f32 %2510, 0
  %2512 = fmul fast float %2511, %2506
  %2513 = fmul fast float %2511, %2507
  %2514 = fmul fast float %2511, %2508
  br label %2515

; <label>:2515                                    ; preds = %2509, %2492
  %2516 = phi float [ %2512, %2509 ], [ %2506, %2492 ]
  %2517 = phi float [ %2513, %2509 ], [ %2507, %2492 ]
  %2518 = phi float [ %2514, %2509 ], [ %2508, %2492 ]
  %2519 = fmul fast float %2516, %2487
  %2520 = select i1 %170, float %2519, float %2516
  %2521 = call float @dx.op.dot3.f32(i32 55, float %2520, float %2517, float %2518, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2522 = select i1 %170, float 0.000000e+00, float %2516
  %2523 = select i1 %170, float %2521, float %2517
  %2524 = select i1 %170, float 0.000000e+00, float %2518
  br label %2525

; <label>:2525                                    ; preds = %2515, %2477
  %2526 = phi float [ %2522, %2515 ], [ 0.000000e+00, %2477 ]
  %2527 = phi float [ %2523, %2515 ], [ 0.000000e+00, %2477 ]
  %2528 = phi float [ %2524, %2515 ], [ 0.000000e+00, %2477 ]
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = and i32 %2530, 10240
  %2532 = icmp eq i32 %2531, 0
  br i1 %2532, label %2577, label %2533

; <label>:2533                                    ; preds = %2525
  %2534 = add i32 %33, 464
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2534, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = add i32 %2536, 0
  %2538 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2537, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2539 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2538, %dx.types.Handle %70, float %1990, float %1991, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2540 = extractvalue %dx.types.ResRet.f32 %2539, 1
  %2541 = extractvalue %dx.types.ResRet.f32 %2539, 3
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = and i32 %2543, 1048576
  %2545 = icmp ne i32 %2544, 0
  %2546 = and i32 %2543, 8192
  %2547 = icmp eq i32 %2546, 0
  br i1 %2547, label %2563, label %2548

; <label>:2548                                    ; preds = %2533
  %2549 = extractvalue %dx.types.ResRet.f32 %2539, 2
  %2550 = select i1 %2545, float %2549, float %2540
  %2551 = extractvalue %dx.types.ResRet.f32 %2539, 0
  %2552 = select i1 %2545, float %2551, float %2540
  %2553 = add i32 %33, 128
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2553, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = lshr i32 %2555, 16
  %2557 = and i32 %2556, 255
  %2558 = uitofp i32 %2557 to float
  %2559 = fmul fast float %2558, 0x3F80101020000000
  %2560 = fmul fast float %2559, %2552
  %2561 = fmul fast float %2559, %2540
  %2562 = fmul fast float %2559, %2550
  br label %2563

; <label>:2563                                    ; preds = %2548, %2533
  %2564 = phi float [ %2560, %2548 ], [ 0.000000e+00, %2533 ]
  %2565 = phi float [ %2561, %2548 ], [ 0.000000e+00, %2533 ]
  %2566 = phi float [ %2562, %2548 ], [ 0.000000e+00, %2533 ]
  %2567 = and i32 %2543, 2048
  %2568 = icmp eq i32 %2567, 0
  br i1 %2568, label %2577, label %2569

; <label>:2569                                    ; preds = %2563
  %2570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2482, i32 undef)  ; BufferLoad(srv,index,wot)
  %2571 = extractvalue %dx.types.ResRet.i32 %2570, 0
  %2572 = shl i32 %2571, 4
  %2573 = and i32 %2572, 32752
  %2574 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2573)  ; LegacyF16ToF32(value)
  %2575 = fmul fast float %2574, %2541
  %2576 = call float @dx.op.binary.f32(i32 35, float %2575, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2577

; <label>:2577                                    ; preds = %2569, %2563, %2525
  %2578 = phi float [ %2564, %2569 ], [ %2564, %2563 ], [ 0.000000e+00, %2525 ]
  %2579 = phi float [ %2565, %2569 ], [ %2565, %2563 ], [ 0.000000e+00, %2525 ]
  %2580 = phi float [ %2566, %2569 ], [ %2566, %2563 ], [ 0.000000e+00, %2525 ]
  %2581 = phi float [ %2576, %2569 ], [ 0x3F70101020000000, %2563 ], [ 0x3F70101020000000, %2525 ]
  %2582 = add i32 %33, 128
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = and i32 %2584, 255
  %2586 = uitofp i32 %2585 to float
  %2587 = lshr i32 %2584, 8
  %2588 = and i32 %2587, 255
  %2589 = uitofp i32 %2588 to float
  %2590 = call float @dx.op.dot3.f32(i32 55, float %2398, float %2399, float %2400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2591 = fmul fast float %2589, %2590
  %2592 = fadd fast float %2591, %2586
  %2593 = fmul fast float %2592, 0x3F70101020000000
  %2594 = call float @dx.op.unary.f32(i32 7, float %2593)  ; Saturate(value)
  br i1 %1882, label %2595, label %2603

; <label>:2595                                    ; preds = %2577
  %2596 = fsub fast float 1.000000e+00, %2178
  %2597 = fmul fast float %2596, %1867
  %2598 = fmul fast float %2596, %1868
  %2599 = fmul fast float %2596, %1869
  %2600 = fmul fast float %2596, %1870
  %2601 = fmul fast float %2596, %1871
  %2602 = fmul fast float %2596, %1872
  br label %2603

; <label>:2603                                    ; preds = %2595, %2577
  %2604 = phi float [ %2597, %2595 ], [ %1867, %2577 ]
  %2605 = phi float [ %2598, %2595 ], [ %1868, %2577 ]
  %2606 = phi float [ %2599, %2595 ], [ %1869, %2577 ]
  %2607 = phi float [ %2600, %2595 ], [ %1870, %2577 ]
  %2608 = phi float [ %2601, %2595 ], [ %1871, %2577 ]
  %2609 = phi float [ %2602, %2595 ], [ %1872, %2577 ]
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = and i32 %2611, 3
  %2613 = icmp eq i32 %2612, 3
  br i1 %2613, label %2692, label %2614

; <label>:2614                                    ; preds = %2603
  %2615 = and i32 %2611, 16
  %2616 = icmp ne i32 %2615, 0
  %2617 = select i1 %2616, float %2178, float 0.000000e+00
  %2618 = icmp eq i32 %2612, 0
  br i1 %2618, label %2619, label %2647

; <label>:2619                                    ; preds = %2614
  %2620 = and i32 %2611, 64
  %2621 = icmp ne i32 %2620, 0
  %2622 = select i1 %2621, float %2178, float 0.000000e+00
  %2623 = fsub fast float %2398, %2604
  %2624 = fsub fast float %2399, %2605
  %2625 = fsub fast float %2400, %2606
  %2626 = fmul fast float %2617, %2623
  %2627 = fmul fast float %2617, %2624
  %2628 = fmul fast float %2617, %2625
  %2629 = fadd fast float %2626, %2604
  %2630 = fadd fast float %2627, %2605
  %2631 = fadd fast float %2628, %2606
  %2632 = fsub fast float %2384, %1876
  %2633 = fmul fast float %2617, %2632
  %2634 = fadd fast float %2633, %1876
  %2635 = fsub fast float %2526, %2607
  %2636 = fsub fast float %2527, %2608
  %2637 = fsub fast float %2528, %2609
  %2638 = fmul fast float %2622, %2635
  %2639 = fmul fast float %2622, %2636
  %2640 = fmul fast float %2622, %2637
  %2641 = fadd fast float %2638, %2607
  %2642 = fadd fast float %2639, %2608
  %2643 = fadd fast float %2640, %2609
  %2644 = fsub fast float %2594, %1880
  %2645 = fmul fast float %2617, %2644
  %2646 = fadd fast float %2645, %1880
  br label %2692

; <label>:2647                                    ; preds = %2614
  %2648 = icmp eq i32 %2612, 1
  br i1 %2648, label %2649, label %2662

; <label>:2649                                    ; preds = %2647
  %2650 = fadd fast float %2398, -1.000000e+00
  %2651 = fadd fast float %2399, -1.000000e+00
  %2652 = fadd fast float %2400, -1.000000e+00
  %2653 = fmul fast float %2617, %2650
  %2654 = fmul fast float %2617, %2651
  %2655 = fmul fast float %2617, %2652
  %2656 = fadd fast float %2653, 1.000000e+00
  %2657 = fadd fast float %2654, 1.000000e+00
  %2658 = fadd fast float %2655, 1.000000e+00
  %2659 = fmul fast float %2656, %2604
  %2660 = fmul fast float %2657, %2605
  %2661 = fmul fast float %2658, %2606
  br label %2692

; <label>:2662                                    ; preds = %2647
  %2663 = icmp eq i32 %2612, 2
  br i1 %2663, label %2664, label %2692

; <label>:2664                                    ; preds = %2662
  %2665 = call float @dx.op.unary.f32(i32 24, float %2398)  ; Sqrt(value)
  %2666 = call float @dx.op.unary.f32(i32 24, float %2399)  ; Sqrt(value)
  %2667 = call float @dx.op.unary.f32(i32 24, float %2400)  ; Sqrt(value)
  %2668 = fadd fast float %2665, -5.000000e-01
  %2669 = fadd fast float %2666, -5.000000e-01
  %2670 = fadd fast float %2667, -5.000000e-01
  %2671 = fmul fast float %2668, %2617
  %2672 = fmul fast float %2669, %2617
  %2673 = fmul fast float %2670, %2617
  %2674 = fadd fast float %2671, 5.000000e-01
  %2675 = fadd fast float %2672, 5.000000e-01
  %2676 = fadd fast float %2673, 5.000000e-01
  %2677 = fmul fast float %2674, 2.000000e+00
  %2678 = fsub fast float 1.000000e+00, %2677
  %2679 = fmul fast float %2678, %2604
  %2680 = fadd fast float %2679, %2677
  %2681 = fmul fast float %2680, %2604
  %2682 = fmul fast float %2675, 2.000000e+00
  %2683 = fsub fast float 1.000000e+00, %2682
  %2684 = fmul fast float %2683, %2605
  %2685 = fadd fast float %2684, %2682
  %2686 = fmul fast float %2685, %2605
  %2687 = fmul fast float %2676, 2.000000e+00
  %2688 = fsub fast float 1.000000e+00, %2687
  %2689 = fmul fast float %2688, %2606
  %2690 = fadd fast float %2689, %2687
  %2691 = fmul fast float %2690, %2606
  br label %2692

; <label>:2692                                    ; preds = %2664, %2662, %2649, %2619, %2603
  %2693 = phi float [ %2604, %2603 ], [ %2681, %2664 ], [ %2604, %2662 ], [ %2659, %2649 ], [ %2629, %2619 ]
  %2694 = phi float [ %2605, %2603 ], [ %2686, %2664 ], [ %2605, %2662 ], [ %2660, %2649 ], [ %2630, %2619 ]
  %2695 = phi float [ %2606, %2603 ], [ %2691, %2664 ], [ %2606, %2662 ], [ %2661, %2649 ], [ %2631, %2619 ]
  %2696 = phi float [ %2607, %2603 ], [ %2607, %2664 ], [ %2607, %2662 ], [ %2607, %2649 ], [ %2641, %2619 ]
  %2697 = phi float [ %2608, %2603 ], [ %2608, %2664 ], [ %2608, %2662 ], [ %2608, %2649 ], [ %2642, %2619 ]
  %2698 = phi float [ %2609, %2603 ], [ %2609, %2664 ], [ %2609, %2662 ], [ %2609, %2649 ], [ %2643, %2619 ]
  %2699 = phi float [ %1876, %2603 ], [ %1876, %2664 ], [ %1876, %2662 ], [ %1876, %2649 ], [ %2634, %2619 ]
  %2700 = phi float [ %1880, %2603 ], [ %1880, %2664 ], [ %1880, %2662 ], [ %1880, %2649 ], [ %2646, %2619 ]
  %2701 = and i32 %2611, 12
  %2702 = icmp eq i32 %2701, 12
  br i1 %2702, label %2809, label %2703

; <label>:2703                                    ; preds = %2692
  %2704 = and i32 %2611, 2097184
  %2705 = icmp eq i32 %2704, 2097184
  %2706 = select i1 %2705, float %2178, float 0.000000e+00
  %2707 = and i32 %2611, 4194336
  %2708 = icmp eq i32 %2707, 4194336
  %2709 = select i1 %2708, float %2178, float 0.000000e+00
  %2710 = and i32 %2611, 8388640
  %2711 = icmp eq i32 %2710, 8388640
  %2712 = select i1 %2711, float %2178, float 0.000000e+00
  %2713 = and i32 %2611, 2048
  %2714 = icmp ne i32 %2713, 0
  %2715 = select i1 %2714, float %2178, float 0.000000e+00
  %2716 = and i32 %2611, 8192
  %2717 = icmp ne i32 %2716, 0
  %2718 = select i1 %2717, float %2178, float 0.000000e+00
  %2719 = icmp eq i32 %2701, 0
  br i1 %2719, label %2720, label %2745

; <label>:2720                                    ; preds = %2703
  %2721 = fsub fast float %2479, %1865
  %2722 = fsub fast float %2480, %1866
  %2723 = fmul fast float %2706, %2721
  %2724 = fmul fast float %2706, %2722
  %2725 = fadd fast float %2723, %1865
  %2726 = fadd fast float %2724, %1866
  %2727 = fsub fast float %2481, %1878
  %2728 = fmul fast float %2709, %2727
  %2729 = fadd fast float %2728, %1878
  %2730 = fsub fast float %2478, %1877
  %2731 = fmul fast float %2712, %2730
  %2732 = fadd fast float %2731, %1877
  %2733 = fsub fast float %2581, %1879
  %2734 = fmul fast float %2715, %2733
  %2735 = fadd fast float %2734, %1879
  %2736 = fsub fast float %2578, %1873
  %2737 = fsub fast float %2579, %1874
  %2738 = fsub fast float %2580, %1875
  %2739 = fmul fast float %2718, %2736
  %2740 = fmul fast float %2718, %2737
  %2741 = fmul fast float %2718, %2738
  %2742 = fadd fast float %2739, %1873
  %2743 = fadd fast float %2740, %1874
  %2744 = fadd fast float %2741, %1875
  br label %2809

; <label>:2745                                    ; preds = %2703
  %2746 = icmp eq i32 %2701, 4
  br i1 %2746, label %2747, label %2787

; <label>:2747                                    ; preds = %2745
  %2748 = fmul fast float %2706, %2479
  %2749 = fmul fast float %2706, %2480
  %2750 = fadd fast float %2748, %1865
  %2751 = fadd fast float %2749, %1866
  %2752 = call float @dx.op.binary.f32(i32 36, float %1878, float %2481)  ; FMin(a,b)
  %2753 = fsub fast float %2752, %1878
  %2754 = fmul fast float %2753, %2709
  %2755 = fadd fast float %2754, %1878
  %2756 = fadd fast float %2478, %1877
  %2757 = fmul fast float %2756, 0x3FF337FAE0000000
  %2758 = fmul fast float %1877, %1877
  %2759 = fmul fast float %2478, %2478
  %2760 = fadd fast float %2759, %2758
  %2761 = fmul fast float %2760, 0x3FE5152B00000000
  %2762 = fmul fast float %1877, 0xBFCC1F85E0000000
  %2763 = fmul fast float %2762, %2478
  %2764 = fadd fast float %2763, 0xBFE1363700000000
  %2765 = fadd fast float %2764, %2757
  %2766 = fsub fast float %2765, %2761
  %2767 = fmul fast float %2756, 0x3FBA6F0D00000000
  %2768 = fmul fast float %2760, 0x3FD0432880000000
  %2769 = fmul fast float %1877, 0xBFEF110800000000
  %2770 = fmul fast float %2769, %2478
  %2771 = fadd fast float %2770, 1.000000e+00
  %2772 = fsub fast float %2771, %2767
  %2773 = fadd fast float %2772, %2768
  %2774 = fdiv fast float %2766, %2773
  %2775 = call float @dx.op.unary.f32(i32 7, float %2774)  ; Saturate(value)
  %2776 = fsub fast float %2775, %1877
  %2777 = fmul fast float %2776, %2712
  %2778 = fadd fast float %2777, %1877
  %2779 = fmul fast float %2715, %2581
  %2780 = fadd fast float %2779, %1879
  %2781 = fmul fast float %2718, %2578
  %2782 = fmul fast float %2718, %2579
  %2783 = fmul fast float %2718, %2580
  %2784 = fadd fast float %2781, %1873
  %2785 = fadd fast float %2782, %1874
  %2786 = fadd fast float %2783, %1875
  br label %2809

; <label>:2787                                    ; preds = %2745
  %2788 = icmp eq i32 %2701, 8
  br i1 %2788, label %2789, label %2809

; <label>:2789                                    ; preds = %2787
  %2790 = fmul fast float %2706, %2479
  %2791 = fmul fast float %2706, %2480
  %2792 = fadd fast float %2790, %1865
  %2793 = fadd fast float %2791, %1866
  %2794 = call float @dx.op.binary.f32(i32 36, float %1878, float %2481)  ; FMin(a,b)
  %2795 = fsub fast float %2794, %1878
  %2796 = fmul fast float %2795, %2709
  %2797 = fadd fast float %2796, %1878
  %2798 = fsub fast float %2478, %1877
  %2799 = fmul fast float %2712, %2798
  %2800 = fadd fast float %2799, %1877
  %2801 = fmul fast float %2715, %2581
  %2802 = fadd fast float %2801, %1879
  %2803 = fmul fast float %2718, %2578
  %2804 = fmul fast float %2718, %2579
  %2805 = fmul fast float %2718, %2580
  %2806 = fadd fast float %2803, %1873
  %2807 = fadd fast float %2804, %1874
  %2808 = fadd fast float %2805, %1875
  br label %2809

; <label>:2809                                    ; preds = %2789, %2787, %2747, %2720, %2692, %2177, %1881, %1864
  %2810 = phi float [ %1865, %2692 ], [ %1865, %2177 ], [ %1865, %1864 ], [ %2792, %2789 ], [ %1865, %2787 ], [ %2750, %2747 ], [ %2725, %2720 ], [ %1865, %1881 ]
  %2811 = phi float [ %1866, %2692 ], [ %1866, %2177 ], [ %1866, %1864 ], [ %2793, %2789 ], [ %1866, %2787 ], [ %2751, %2747 ], [ %2726, %2720 ], [ %1866, %1881 ]
  %2812 = phi float [ %2693, %2692 ], [ %1867, %2177 ], [ %1867, %1864 ], [ %2693, %2789 ], [ %2693, %2787 ], [ %2693, %2747 ], [ %2693, %2720 ], [ %1867, %1881 ]
  %2813 = phi float [ %2694, %2692 ], [ %1868, %2177 ], [ %1868, %1864 ], [ %2694, %2789 ], [ %2694, %2787 ], [ %2694, %2747 ], [ %2694, %2720 ], [ %1868, %1881 ]
  %2814 = phi float [ %2695, %2692 ], [ %1869, %2177 ], [ %1869, %1864 ], [ %2695, %2789 ], [ %2695, %2787 ], [ %2695, %2747 ], [ %2695, %2720 ], [ %1869, %1881 ]
  %2815 = phi float [ %2696, %2692 ], [ %1870, %2177 ], [ %1870, %1864 ], [ %2696, %2789 ], [ %2696, %2787 ], [ %2696, %2747 ], [ %2696, %2720 ], [ %1870, %1881 ]
  %2816 = phi float [ %2697, %2692 ], [ %1871, %2177 ], [ %1871, %1864 ], [ %2697, %2789 ], [ %2697, %2787 ], [ %2697, %2747 ], [ %2697, %2720 ], [ %1871, %1881 ]
  %2817 = phi float [ %2698, %2692 ], [ %1872, %2177 ], [ %1872, %1864 ], [ %2698, %2789 ], [ %2698, %2787 ], [ %2698, %2747 ], [ %2698, %2720 ], [ %1872, %1881 ]
  %2818 = phi float [ %1873, %2692 ], [ %1873, %2177 ], [ %1873, %1864 ], [ %2806, %2789 ], [ %1873, %2787 ], [ %2784, %2747 ], [ %2742, %2720 ], [ %1873, %1881 ]
  %2819 = phi float [ %1874, %2692 ], [ %1874, %2177 ], [ %1874, %1864 ], [ %2807, %2789 ], [ %1874, %2787 ], [ %2785, %2747 ], [ %2743, %2720 ], [ %1874, %1881 ]
  %2820 = phi float [ %1875, %2692 ], [ %1875, %2177 ], [ %1875, %1864 ], [ %2808, %2789 ], [ %1875, %2787 ], [ %2786, %2747 ], [ %2744, %2720 ], [ %1875, %1881 ]
  %2821 = phi float [ %2699, %2692 ], [ %1876, %2177 ], [ %1876, %1864 ], [ %2699, %2789 ], [ %2699, %2787 ], [ %2699, %2747 ], [ %2699, %2720 ], [ %1876, %1881 ]
  %2822 = phi float [ %1877, %2692 ], [ %1877, %2177 ], [ %1877, %1864 ], [ %2800, %2789 ], [ %1877, %2787 ], [ %2778, %2747 ], [ %2732, %2720 ], [ %1877, %1881 ]
  %2823 = phi float [ %1878, %2692 ], [ %1878, %2177 ], [ %1878, %1864 ], [ %2797, %2789 ], [ %1878, %2787 ], [ %2755, %2747 ], [ %2729, %2720 ], [ %1878, %1881 ]
  %2824 = phi float [ %1879, %2692 ], [ %1879, %2177 ], [ %1879, %1864 ], [ %2802, %2789 ], [ %1879, %2787 ], [ %2780, %2747 ], [ %2735, %2720 ], [ %1879, %1881 ]
  %2825 = phi float [ %2700, %2692 ], [ %1880, %2177 ], [ %1880, %1864 ], [ %2700, %2789 ], [ %2700, %2787 ], [ %2700, %2747 ], [ %2700, %2720 ], [ %1880, %1881 ]
  br i1 %347, label %3754, label %2826

; <label>:2826                                    ; preds = %2809
  %2827 = icmp ult i32 %398, 4
  %2828 = add i32 %33, 72
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = add i32 %33, 76
  %2832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2831, i32 undef)  ; BufferLoad(srv,index,wot)
  %2833 = extractvalue %dx.types.ResRet.i32 %2832, 0
  %2834 = or i32 %2833, %2830
  %2835 = icmp eq i32 %2834, 0
  br i1 %2835, label %3754, label %2836

; <label>:2836                                    ; preds = %2826
  %2837 = and i32 %2830, 262144
  %2838 = icmp ne i32 %2837, 0
  %2839 = select i1 %2838, float %36, float 1.000000e+00
  %2840 = select i1 %2838, float %37, float 0.000000e+00
  %2841 = select i1 %2838, float %38, float 0.000000e+00
  %2842 = select i1 %2838, float %39, float 1.000000e+00
  %2843 = select i1 %2838, float %40, float %61
  %2844 = select i1 %2838, float %41, float %62
  %2845 = add i32 %33, 332
  %2846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %2847 = extractvalue %dx.types.ResRet.i32 %2846, 0
  %2848 = lshr i32 %2847, 16
  %2849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2848)  ; LegacyF16ToF32(value)
  %2850 = fmul fast float %2849, 0x3F50624DE0000000
  %2851 = add i32 %33, 136
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = lshr i32 %2853, 16
  %2855 = and i32 %2854, 255
  %2856 = lshr i32 %2853, 24
  %2857 = add i32 %33, 340
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = and i32 %2859, 65535
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = lshr i32 %2859, 16
  %2863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2862)  ; LegacyF16ToF32(value)
  %2864 = add i32 %33, 80
  %2865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2864, i32 undef)  ; BufferLoad(srv,index,wot)
  %2866 = extractvalue %dx.types.ResRet.i32 %2865, 0
  %2867 = lshr i32 %2866, 22
  %2868 = shl nuw nsw i32 %2867, 5
  %2869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2868)  ; LegacyF16ToF32(value)
  %2870 = shl i32 %2866, 4
  %2871 = and i32 %2870, 32752
  %2872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2871)  ; LegacyF16ToF32(value)
  %2873 = lshr i32 %2866, 7
  %2874 = and i32 %2873, 32752
  %2875 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2874)  ; LegacyF16ToF32(value)
  %2876 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2877 = extractvalue %dx.types.CBufRet.f32 %2876, 3
  %2878 = fmul fast float %2877, 1.000000e+03
  %2879 = fmul fast float %337, %2878
  %2880 = call float @dx.op.unary.f32(i32 22, float %2879)  ; Frc(value)
  %2881 = fadd fast float %2880, %327
  %2882 = fmul fast float %338, %2878
  %2883 = call float @dx.op.unary.f32(i32 22, float %2882)  ; Frc(value)
  %2884 = fadd fast float %2883, %329
  %2885 = fmul fast float %2850, %2878
  %2886 = call float @dx.op.unary.f32(i32 22, float %2885)  ; Frc(value)
  %2887 = fmul fast float %2886, 0x401921FB60000000
  %2888 = fadd fast float %2887, %2869
  %2889 = call float @dx.op.unary.f32(i32 13, float %2888)  ; Sin(value)
  %2890 = call float @dx.op.unary.f32(i32 12, float %2888)  ; Cos(value)
  %2891 = fsub fast float -0.000000e+00, %2889
  %2892 = fadd fast float %2843, -5.000000e-01
  %2893 = fadd fast float %2844, -5.000000e-01
  %2894 = fmul fast float %2861, %2892
  %2895 = fmul fast float %2863, %2893
  %2896 = fadd fast float %2894, 5.000000e-01
  %2897 = fadd fast float %2895, 5.000000e-01
  %2898 = fmul fast float %2872, %2896
  %2899 = fmul fast float %2875, %2897
  %2900 = fmul fast float %2890, %2898
  %2901 = call float @dx.op.tertiary.f32(i32 46, float %2891, float %2899, float %2900)  ; FMad(a,b,c)
  %2902 = fmul fast float %2889, %2898
  %2903 = call float @dx.op.tertiary.f32(i32 46, float %2890, float %2899, float %2902)  ; FMad(a,b,c)
  %2904 = fadd fast float %2881, %2901
  %2905 = fadd fast float %2884, %2903
  %2906 = icmp ugt i32 %2855, 1
  %2907 = icmp ugt i32 %2853, 33554431
  %2908 = or i1 %2907, %2906
  br i1 %2908, label %2909, label %2934

; <label>:2909                                    ; preds = %2836
  %2910 = add i32 %33, 276
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = lshr i32 %2912, 16
  %2914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2913)  ; LegacyF16ToF32(value)
  %2915 = fmul fast float %2877, %2914
  %2916 = call float @dx.op.unary.f32(i32 22, float %2915)  ; Frc(value)
  %2917 = mul nuw nsw i32 %2855, %2856
  %2918 = uitofp i32 %2917 to float
  %2919 = fmul fast float %2916, %2918
  %2920 = call float @dx.op.unary.f32(i32 27, float %2919)  ; Round_ni(value)
  %2921 = fptoui float %2920 to i32
  %2922 = urem i32 %2921, %2855
  %2923 = udiv i32 %2921, %2856
  %2924 = call float @dx.op.unary.f32(i32 22, float %2904)  ; Frc(value)
  %2925 = call float @dx.op.unary.f32(i32 22, float %2905)  ; Frc(value)
  %2926 = uitofp i32 %2922 to float
  %2927 = uitofp i32 %2923 to float
  %2928 = fadd fast float %2924, %2926
  %2929 = fadd fast float %2925, %2927
  %2930 = uitofp i32 %2855 to float
  %2931 = uitofp i32 %2856 to float
  %2932 = fdiv fast float %2928, %2930
  %2933 = fdiv fast float %2929, %2931
  br label %2934

; <label>:2934                                    ; preds = %2909, %2836
  %2935 = phi float [ %2932, %2909 ], [ %2904, %2836 ]
  %2936 = phi float [ %2933, %2909 ], [ %2905, %2836 ]
  %2937 = and i32 %2830, 16777216
  %2938 = icmp eq i32 %2937, 0
  br i1 %2938, label %3048, label %2939

; <label>:2939                                    ; preds = %2934
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = extractvalue %dx.types.CBufRet.f32 %2940, 1
  %2943 = extractvalue %dx.types.CBufRet.f32 %2940, 2
  %2944 = fadd fast float %2941, %128
  %2945 = fadd fast float %2942, %129
  %2946 = fadd fast float %2943, %130
  %2947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2948 = extractvalue %dx.types.CBufRet.f32 %2947, 0
  %2949 = call float @dx.op.unary.f32(i32 7, float %2948)  ; Saturate(value)
  %2950 = icmp eq i32 %34, 65535
  br i1 %2950, label %3045, label %2951

; <label>:2951                                    ; preds = %2939
  %2952 = lshr i32 %34, 1
  %2953 = shl i32 %2952, 2
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = and i32 %34, 1
  %2957 = icmp ne i32 %2956, 0
  %2958 = lshr i32 %2955, 16
  %2959 = and i32 %2955, 65535
  %2960 = select i1 %2957, i32 %2958, i32 %2959
  %2961 = icmp eq i32 %2960, 65535
  br i1 %2961, label %3041, label %2962

; <label>:2962                                    ; preds = %2951
  %2963 = mul nuw nsw i32 %2960, 40
  %2964 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.f32 %2964, 0
  %2966 = extractvalue %dx.types.ResRet.f32 %2964, 1
  %2967 = extractvalue %dx.types.ResRet.f32 %2964, 2
  %2968 = add nuw nsw i32 %2963, 12
  %2969 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.f32 %2969, 0
  %2971 = extractvalue %dx.types.ResRet.f32 %2969, 1
  %2972 = extractvalue %dx.types.ResRet.f32 %2969, 2
  %2973 = add nuw nsw i32 %2963, 24
  %2974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.f32 %2974, 0
  %2976 = extractvalue %dx.types.ResRet.f32 %2974, 1
  %2977 = extractvalue %dx.types.ResRet.f32 %2974, 2
  %2978 = add nuw nsw i32 %2963, 36
  %2979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.f32 %2979, 0
  %2981 = fsub fast float %2944, %2965
  %2982 = fsub fast float %2945, %2966
  %2983 = fsub fast float %2946, %2967
  %2984 = fmul fast float %2980, %2981
  %2985 = fmul fast float %2980, %2982
  %2986 = fmul fast float %2980, %2983
  %2987 = call float @dx.op.unary.f32(i32 27, float %2984)  ; Round_ni(value)
  %2988 = call float @dx.op.unary.f32(i32 27, float %2985)  ; Round_ni(value)
  %2989 = call float @dx.op.unary.f32(i32 27, float %2986)  ; Round_ni(value)
  %2990 = fadd fast float %2987, 5.000000e-01
  %2991 = fadd fast float %2988, 5.000000e-01
  %2992 = fadd fast float %2989, 5.000000e-01
  %2993 = fmul fast float %2990, %2970
  %2994 = fmul fast float %2991, %2971
  %2995 = fmul fast float %2992, %2972
  %2996 = shl i32 %34, 2
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = add i32 %2998, 0
  %3000 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2999, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3001 = call float @dx.op.unary.f32(i32 22, float %2993)  ; Frc(value)
  %3002 = call float @dx.op.unary.f32(i32 22, float %2994)  ; Frc(value)
  %3003 = call float @dx.op.unary.f32(i32 22, float %2995)  ; Frc(value)
  %3004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3000, %dx.types.Handle %30, float %3001, float %3002, float %3003, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3005 = extractvalue %dx.types.ResRet.f32 %3004, 0
  %3006 = extractvalue %dx.types.ResRet.f32 %3004, 1
  %3007 = extractvalue %dx.types.ResRet.f32 %3004, 2
  %3008 = fmul fast float %3005, 1.023000e+03
  %3009 = fmul fast float %3006, 1.023000e+03
  %3010 = fmul fast float %3007, 1.023000e+03
  %3011 = fadd fast float %3008, 5.000000e-01
  %3012 = fadd fast float %3009, 5.000000e-01
  %3013 = fadd fast float %3010, 5.000000e-01
  %3014 = call float @dx.op.unary.f32(i32 27, float %3011)  ; Round_ni(value)
  %3015 = call float @dx.op.unary.f32(i32 27, float %3012)  ; Round_ni(value)
  %3016 = call float @dx.op.unary.f32(i32 27, float %3013)  ; Round_ni(value)
  %3017 = fsub fast float %2984, %2987
  %3018 = fsub fast float %2985, %2988
  %3019 = fsub fast float %2986, %2989
  %3020 = fmul fast float %3017, 7.500000e-01
  %3021 = fmul fast float %3018, 7.500000e-01
  %3022 = fmul fast float %3019, 7.500000e-01
  %3023 = fadd fast float %2987, 1.250000e-01
  %3024 = fadd fast float %3023, %3020
  %3025 = fadd fast float %3024, %3014
  %3026 = fadd fast float %2988, 1.250000e-01
  %3027 = fadd fast float %3026, %3021
  %3028 = fadd fast float %3027, %3015
  %3029 = fadd fast float %2989, 1.250000e-01
  %3030 = fadd fast float %3029, %3022
  %3031 = fadd fast float %3030, %3016
  %3032 = fmul fast float %3025, %2975
  %3033 = fmul fast float %3028, %2976
  %3034 = fmul fast float %3031, %2977
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = add i32 %3036, 0
  %3038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3037, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3038, %dx.types.Handle %28, float %3032, float %3033, float %3034, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3040 = extractvalue %dx.types.ResRet.f32 %3039, 0
  br label %3041

; <label>:3041                                    ; preds = %2962, %2951
  %3042 = phi float [ %3040, %2962 ], [ -1.000000e+00, %2951 ]
  %3043 = fadd fast float %3042, %2949
  %3044 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  br label %3045

; <label>:3045                                    ; preds = %3041, %2939
  %3046 = phi float [ %3044, %3041 ], [ %2949, %2939 ]
  %3047 = fmul fast float %3046, %393
  br label %3048

; <label>:3048                                    ; preds = %3045, %2934
  %3049 = phi float [ %3047, %3045 ], [ %393, %2934 ]
  %3050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3051 = extractvalue %dx.types.ResRet.i32 %3050, 0
  %3052 = and i32 %3051, 256
  %3053 = icmp eq i32 %3052, 0
  br i1 %3053, label %3100, label %3054

; <label>:3054                                    ; preds = %3048
  %3055 = add i32 %33, 436
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = add i32 %3057, 0
  %3059 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3058, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3060 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3059, %dx.types.Handle %70, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3061 = extractvalue %dx.types.ResRet.f32 %3060, 0
  %3062 = add i32 %33, 148
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3062, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = shl i32 %3064, 4
  %3066 = and i32 %3065, 32752
  %3067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3066)  ; LegacyF16ToF32(value)
  %3068 = lshr i32 %3064, 7
  %3069 = and i32 %3068, 32752
  %3070 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3069)  ; LegacyF16ToF32(value)
  %3071 = fsub fast float 1.000000e+00, %3049
  %3072 = call float @dx.op.binary.f32(i32 35, float %3071, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3073 = bitcast float %3049 to i32
  %3074 = sitofp i32 %3073 to float
  %3075 = fadd fast float %3074, 0xC1CFBF8940000000
  %3076 = fmul fast float %3070, %3075
  %3077 = fadd fast float %3076, 0x41CFBF8940000000
  %3078 = fptosi float %3077 to i32
  %3079 = bitcast i32 %3078 to float
  %3080 = bitcast float %3072 to i32
  %3081 = sitofp i32 %3080 to float
  %3082 = fadd fast float %3081, 0xC1CFBF8940000000
  %3083 = fmul fast float %3082, %3070
  %3084 = fadd fast float %3083, 0x41CFBF8940000000
  %3085 = fptosi float %3084 to i32
  %3086 = bitcast i32 %3085 to float
  %3087 = fmul fast float %3079, %3067
  %3088 = fmul fast float %3086, %3067
  %3089 = fsub fast float %3072, %3087
  %3090 = fadd fast float %3088, %3072
  %3091 = call float @dx.op.unary.f32(i32 7, float %3089)  ; Saturate(value)
  %3092 = call float @dx.op.unary.f32(i32 7, float %3090)  ; Saturate(value)
  %3093 = fsub fast float %3061, %3091
  %3094 = fsub fast float %3092, %3091
  %3095 = bitcast float %3094 to i32
  %3096 = sub nsw i32 2129859010, %3095
  %3097 = bitcast i32 %3096 to float
  %3098 = fmul fast float %3097, %3093
  %3099 = call float @dx.op.unary.f32(i32 7, float %3098)  ; Saturate(value)
  br label %3100

; <label>:3100                                    ; preds = %3054, %3048
  %3101 = phi float [ %3099, %3054 ], [ %3049, %3048 ]
  %3102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3103 = extractvalue %dx.types.ResRet.i32 %3102, 0
  %3104 = and i32 %3103, 128
  %3105 = icmp eq i32 %3104, 0
  br i1 %3105, label %3122, label %3106

; <label>:3106                                    ; preds = %3100
  %3107 = add i32 %33, 420
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3107, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = add i32 %3109, 0
  %3111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3110, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3112 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3111, %dx.types.Handle %70, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3113 = extractvalue %dx.types.ResRet.f32 %3112, 0
  %3114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3115 = extractvalue %dx.types.ResRet.i32 %3114, 0
  %3116 = and i32 %3115, 524288
  %3117 = icmp ne i32 %3116, 0
  %3118 = fcmp fast ogt float %3113, 0x3FE0101020000000
  %3119 = select i1 %3118, float 1.000000e+00, float 0.000000e+00
  %3120 = select i1 %3117, float %3119, float %3113
  %3121 = fmul fast float %3120, %3101
  br label %3122

; <label>:3122                                    ; preds = %3106, %3100
  %3123 = phi float [ %3121, %3106 ], [ %3101, %3100 ]
  %3124 = fcmp fast ult float %3123, 0x3F70101020000000
  br i1 %3124, label %3754, label %3125

; <label>:3125                                    ; preds = %3122
  %3126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3127 = extractvalue %dx.types.ResRet.i32 %3126, 0
  %3128 = and i32 %3127, 16
  %3129 = icmp eq i32 %3128, 0
  br i1 %3129, label %3328, label %3130

; <label>:3130                                    ; preds = %3125
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = add i32 %33, 372
  %3134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3133, i32 undef)  ; BufferLoad(srv,index,wot)
  %3135 = extractvalue %dx.types.ResRet.i32 %3134, 0
  %3136 = add i32 %3135, 0
  %3137 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3136, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3138 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3137, %dx.types.Handle %69, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3139 = extractvalue %dx.types.ResRet.f32 %3138, 0
  %3140 = extractvalue %dx.types.ResRet.f32 %3138, 1
  %3141 = extractvalue %dx.types.ResRet.f32 %3138, 2
  %3142 = extractvalue %dx.types.ResRet.f32 %3138, 3
  %3143 = and i32 %3132, 255
  %3144 = uitofp i32 %3143 to float
  %3145 = lshr i32 %3132, 8
  %3146 = and i32 %3145, 255
  %3147 = uitofp i32 %3146 to float
  %3148 = fmul fast float %3142, %3144
  %3149 = fadd fast float %3148, %3147
  %3150 = fmul fast float %3149, 0x3F70101000000000
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = and i32 %3152, 512
  %3154 = icmp eq i32 %3153, 0
  br i1 %3154, label %3163, label %3155

; <label>:3155                                    ; preds = %3130
  %3156 = add i32 %33, 452
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3156, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = add i32 %3158, 0
  %3160 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3159, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3161 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3160, %dx.types.Handle %70, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3162 = extractvalue %dx.types.ResRet.f32 %3161, 0
  br label %3163

; <label>:3163                                    ; preds = %3155, %3130
  %3164 = phi float [ %3162, %3155 ], [ 1.000000e+00, %3130 ]
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = and i32 %3166, 33554432
  %3168 = icmp eq i32 %3167, 0
  br i1 %3168, label %3275, label %3169

; <label>:3169                                    ; preds = %3163
  %3170 = add i32 %33, 272
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3170, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, 65535
  %3174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3173)  ; LegacyF16ToF32(value)
  %3175 = lshr i32 %3172, 16
  %3176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3175)  ; LegacyF16ToF32(value)
  %3177 = add i32 %33, 276
  %3178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3177, i32 undef)  ; BufferLoad(srv,index,wot)
  %3179 = extractvalue %dx.types.ResRet.i32 %3178, 0
  %3180 = and i32 %3179, 65535
  %3181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3180)  ; LegacyF16ToF32(value)
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = lshr i32 %3183, 24
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3185, 0x3F70101020000000
  %3187 = and i32 %3183, 255
  %3188 = uitofp i32 %3187 to float
  %3189 = fmul fast float %3188, 0x3F70101020000000
  %3190 = lshr i32 %3183, 8
  %3191 = and i32 %3190, 255
  %3192 = uitofp i32 %3191 to float
  %3193 = fmul fast float %3192, 0x3F70101020000000
  %3194 = lshr i32 %3183, 16
  %3195 = and i32 %3194, 255
  %3196 = uitofp i32 %3195 to float
  %3197 = fmul fast float %3196, 0x3F70101020000000
  %3198 = add i32 %33, 268
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3198, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = lshr i32 %3200, 24
  %3202 = uitofp i32 %3201 to float
  %3203 = fmul fast float %3202, 0x3F70101020000000
  %3204 = and i32 %3200, 255
  %3205 = uitofp i32 %3204 to float
  %3206 = fmul fast float %3205, 0x3F70101020000000
  %3207 = lshr i32 %3200, 8
  %3208 = and i32 %3207, 255
  %3209 = uitofp i32 %3208 to float
  %3210 = fmul fast float %3209, 0x3F70101020000000
  %3211 = lshr i32 %3200, 16
  %3212 = and i32 %3211, 255
  %3213 = uitofp i32 %3212 to float
  %3214 = fmul fast float %3213, 0x3F70101020000000
  %3215 = bitcast float %3139 to i32
  %3216 = ashr i32 %3215, 1
  %3217 = sub nsw i32 1597463174, %3216
  %3218 = bitcast i32 %3217 to float
  %3219 = fmul fast float %3139, 5.000000e-01
  %3220 = fmul fast float %3218, %3218
  %3221 = fmul fast float %3220, %3219
  %3222 = fsub fast float 1.500000e+00, %3221
  %3223 = fmul fast float %3218, %3139
  %3224 = fmul fast float %3223, %3222
  %3225 = bitcast float %3140 to i32
  %3226 = ashr i32 %3225, 1
  %3227 = sub nsw i32 1597463174, %3226
  %3228 = bitcast i32 %3227 to float
  %3229 = fmul fast float %3140, 5.000000e-01
  %3230 = fmul fast float %3228, %3228
  %3231 = fmul fast float %3230, %3229
  %3232 = fsub fast float 1.500000e+00, %3231
  %3233 = fmul fast float %3228, %3140
  %3234 = fmul fast float %3233, %3232
  %3235 = bitcast float %3141 to i32
  %3236 = ashr i32 %3235, 1
  %3237 = sub nsw i32 1597463174, %3236
  %3238 = bitcast i32 %3237 to float
  %3239 = fmul fast float %3141, 5.000000e-01
  %3240 = fmul fast float %3238, %3238
  %3241 = fmul fast float %3240, %3239
  %3242 = fsub fast float 1.500000e+00, %3241
  %3243 = fmul fast float %3238, %3141
  %3244 = fmul fast float %3243, %3242
  %3245 = fsub fast float %3224, %3206
  %3246 = fsub fast float %3234, %3210
  %3247 = fsub fast float %3244, %3214
  %3248 = fmul fast float %3245, %3174
  %3249 = fmul fast float %3246, %3176
  %3250 = fmul fast float %3247, %3181
  %3251 = fadd fast float %3248, %3189
  %3252 = fadd fast float %3249, %3193
  %3253 = fadd fast float %3250, %3197
  %3254 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  %3255 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3256 = call float @dx.op.unary.f32(i32 7, float %3253)  ; Saturate(value)
  %3257 = fmul fast float %3254, %3254
  %3258 = fmul fast float %3255, %3255
  %3259 = fmul fast float %3256, %3256
  %3260 = fsub fast float %3257, %3139
  %3261 = fsub fast float %3258, %3140
  %3262 = fsub fast float %3259, %3141
  %3263 = fmul fast float %3260, %3164
  %3264 = fmul fast float %3261, %3164
  %3265 = fmul fast float %3262, %3164
  %3266 = fadd fast float %3263, %3139
  %3267 = fadd fast float %3264, %3140
  %3268 = fadd fast float %3265, %3141
  %3269 = fadd fast float %3186, %3150
  %3270 = fsub fast float %3269, %3203
  %3271 = call float @dx.op.unary.f32(i32 7, float %3270)  ; Saturate(value)
  %3272 = fsub fast float %3271, %3150
  %3273 = fmul fast float %3272, %3164
  %3274 = fadd fast float %3273, %3150
  br label %3328

; <label>:3275                                    ; preds = %3163
  %3276 = and i32 %3166, 134217728
  %3277 = icmp eq i32 %3276, 0
  br i1 %3277, label %3312, label %3278

; <label>:3278                                    ; preds = %3275
  %3279 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %3280 = call float @dx.op.unary.f32(i32 24, float %318)  ; Sqrt(value)
  %3281 = call float @dx.op.unary.f32(i32 24, float %322)  ; Sqrt(value)
  %3282 = fadd fast float %3279, -5.000000e-01
  %3283 = fadd fast float %3280, -5.000000e-01
  %3284 = fadd fast float %3281, -5.000000e-01
  %3285 = fmul fast float %3282, %3164
  %3286 = fmul fast float %3283, %3164
  %3287 = fmul fast float %3284, %3164
  %3288 = fadd fast float %3285, 5.000000e-01
  %3289 = fadd fast float %3286, 5.000000e-01
  %3290 = fadd fast float %3287, 5.000000e-01
  %3291 = call float @dx.op.unary.f32(i32 24, float %3139)  ; Sqrt(value)
  %3292 = call float @dx.op.unary.f32(i32 24, float %3140)  ; Sqrt(value)
  %3293 = call float @dx.op.unary.f32(i32 24, float %3141)  ; Sqrt(value)
  %3294 = fmul fast float %3288, 2.000000e+00
  %3295 = fsub fast float 1.000000e+00, %3294
  %3296 = fmul fast float %3295, %3291
  %3297 = fadd fast float %3296, %3294
  %3298 = fmul fast float %3297, %3291
  %3299 = fmul fast float %3289, 2.000000e+00
  %3300 = fsub fast float 1.000000e+00, %3299
  %3301 = fmul fast float %3300, %3292
  %3302 = fadd fast float %3301, %3299
  %3303 = fmul fast float %3302, %3292
  %3304 = fmul fast float %3290, 2.000000e+00
  %3305 = fsub fast float 1.000000e+00, %3304
  %3306 = fmul fast float %3305, %3293
  %3307 = fadd fast float %3306, %3304
  %3308 = fmul fast float %3307, %3293
  %3309 = fmul fast float %3298, %3298
  %3310 = fmul fast float %3303, %3303
  %3311 = fmul fast float %3308, %3308
  br label %3328

; <label>:3312                                    ; preds = %3275
  %3313 = fmul fast float %314, %314
  %3314 = fmul fast float %318, %318
  %3315 = fmul fast float %322, %322
  %3316 = fadd fast float %3313, -1.000000e+00
  %3317 = fadd fast float %3314, -1.000000e+00
  %3318 = fadd fast float %3315, -1.000000e+00
  %3319 = fmul fast float %3164, %3316
  %3320 = fmul fast float %3164, %3317
  %3321 = fmul fast float %3164, %3318
  %3322 = fadd fast float %3319, 1.000000e+00
  %3323 = fadd fast float %3320, 1.000000e+00
  %3324 = fadd fast float %3321, 1.000000e+00
  %3325 = fmul fast float %3322, %3139
  %3326 = fmul fast float %3323, %3140
  %3327 = fmul fast float %3324, %3141
  br label %3328

; <label>:3328                                    ; preds = %3312, %3278, %3169, %3125
  %3329 = phi float [ %3274, %3169 ], [ %3150, %3278 ], [ %3150, %3312 ], [ 0x3FA23C0BE0000000, %3125 ]
  %3330 = phi float [ %3266, %3169 ], [ %3309, %3278 ], [ %3325, %3312 ], [ 1.000000e+00, %3125 ]
  %3331 = phi float [ %3267, %3169 ], [ %3310, %3278 ], [ %3326, %3312 ], [ 1.000000e+00, %3125 ]
  %3332 = phi float [ %3268, %3169 ], [ %3311, %3278 ], [ %3327, %3312 ], [ 1.000000e+00, %3125 ]
  %3333 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3334 = extractvalue %dx.types.CBufRet.i32 %3333, 1
  %3335 = and i32 %3334, 1
  %3336 = icmp ne i32 %3335, 0
  %3337 = add i32 %33, 356
  %3338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3337, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.i32 %3338, 0
  %3340 = and i32 %3339, 32
  %3341 = icmp ne i32 %3340, 0
  %3342 = and i1 %3336, %3341
  %3343 = select i1 %3342, float 1.000000e+00, float %3330
  %3344 = select i1 %3342, float 0x3FD3333340000000, float %3331
  %3345 = select i1 %3342, float 0x3FD3333340000000, float %3332
  %3346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3347 = extractvalue %dx.types.ResRet.i32 %3346, 0
  %3348 = and i32 %3347, 32
  %3349 = icmp eq i32 %3348, 0
  br i1 %3349, label %3422, label %3350

; <label>:3350                                    ; preds = %3328
  %3351 = add i32 %33, 140
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3351, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = add i32 %33, 388
  %3355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3354, i32 undef)  ; BufferLoad(srv,index,wot)
  %3356 = extractvalue %dx.types.ResRet.i32 %3355, 0
  %3357 = add i32 %3356, 0
  %3358 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3357, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3359 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3358, %dx.types.Handle %69, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3360 = extractvalue %dx.types.ResRet.f32 %3359, 0
  %3361 = extractvalue %dx.types.ResRet.f32 %3359, 1
  %3362 = extractvalue %dx.types.ResRet.f32 %3359, 2
  %3363 = extractvalue %dx.types.ResRet.f32 %3359, 3
  %3364 = and i32 %3353, 255
  %3365 = uitofp i32 %3364 to float
  %3366 = lshr i32 %3353, 8
  %3367 = and i32 %3366, 255
  %3368 = uitofp i32 %3367 to float
  %3369 = lshr i32 %3353, 16
  %3370 = and i32 %3369, 255
  %3371 = uitofp i32 %3370 to float
  %3372 = fmul fast float %3371, 0x3F70101000000000
  %3373 = fmul fast float %3360, %3365
  %3374 = fadd fast float %3373, %3368
  %3375 = fmul fast float %3374, 0x3F70101000000000
  %3376 = fadd fast float %3361, -5.000000e-01
  %3377 = fadd fast float %3363, -5.000000e-01
  %3378 = fmul fast float %3376, %3372
  %3379 = fmul fast float %3377, %3372
  %3380 = fadd fast float %3378, 5.000000e-01
  %3381 = fadd fast float %3379, 5.000000e-01
  %3382 = fmul fast float %3380, 2.000000e+00
  %3383 = fadd fast float %3382, -1.000000e+00
  %3384 = fmul fast float %3381, 2.000000e+00
  %3385 = fadd fast float %3384, -1.000000e+00
  %3386 = fadd fast float %3383, %3385
  %3387 = fmul fast float %3386, 5.000000e-01
  %3388 = fsub fast float %3383, %3385
  %3389 = fmul fast float %3388, 5.000000e-01
  %3390 = call float @dx.op.unary.f32(i32 6, float %3387)  ; FAbs(value)
  %3391 = fsub fast float 1.000000e+00, %3390
  %3392 = call float @dx.op.unary.f32(i32 6, float %3389)  ; FAbs(value)
  %3393 = fsub fast float %3391, %3392
  %3394 = call float @dx.op.dot3.f32(i32 55, float %3387, float %3389, float %3393, float %3387, float %3389, float %3393)  ; Dot3(ax,ay,az,bx,by,bz)
  %3395 = call float @dx.op.unary.f32(i32 25, float %3394)  ; Rsqrt(value)
  %3396 = fmul fast float %3387, %3395
  %3397 = fmul fast float %3389, %3395
  %3398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3399 = extractvalue %dx.types.ResRet.i32 %3398, 0
  %3400 = and i32 %3399, 67108864
  %3401 = icmp eq i32 %3400, 0
  br i1 %3401, label %3418, label %3402

; <label>:3402                                    ; preds = %3350
  %3403 = add i32 %33, 328
  %3404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3403, i32 undef)  ; BufferLoad(srv,index,wot)
  %3405 = extractvalue %dx.types.ResRet.i32 %3404, 0
  %3406 = and i32 %3405, 65535
  %3407 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3406)  ; LegacyF16ToF32(value)
  %3408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2845, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.i32 %3408, 0
  %3410 = and i32 %3409, 65535
  %3411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3410)  ; LegacyF16ToF32(value)
  %3412 = lshr i32 %3405, 16
  %3413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3412)  ; LegacyF16ToF32(value)
  %3414 = fsub fast float %3375, %3413
  %3415 = fmul fast float %3414, %3407
  %3416 = fadd fast float %3415, %3411
  %3417 = call float @dx.op.unary.f32(i32 7, float %3416)  ; Saturate(value)
  br label %3418

; <label>:3418                                    ; preds = %3402, %3350
  %3419 = phi float [ %3417, %3402 ], [ %3375, %3350 ]
  %3420 = call float @dx.op.dot2.f32(i32 54, float %3396, float %3397, float %2839, float %2840)  ; Dot2(ax,ay,bx,by)
  %3421 = call float @dx.op.dot2.f32(i32 54, float %3396, float %3397, float %2841, float %2842)  ; Dot2(ax,ay,bx,by)
  br label %3422

; <label>:3422                                    ; preds = %3418, %3328
  %3423 = phi float [ %3419, %3418 ], [ 0x3FD6666660000000, %3328 ]
  %3424 = phi float [ %3420, %3418 ], [ 0.000000e+00, %3328 ]
  %3425 = phi float [ %3421, %3418 ], [ 0.000000e+00, %3328 ]
  %3426 = phi float [ %3362, %3418 ], [ 1.000000e+00, %3328 ]
  %3427 = add i32 %33, 208
  %3428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3429 = extractvalue %dx.types.ResRet.i32 %3428, 0
  %3430 = lshr i32 %3429, 22
  %3431 = shl nuw nsw i32 %3430, 5
  %3432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3431)  ; LegacyF16ToF32(value)
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = and i32 %3434, 64
  %3436 = icmp eq i32 %3435, 0
  br i1 %3436, label %3470, label %3437

; <label>:3437                                    ; preds = %3422
  %3438 = add i32 %33, 404
  %3439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3438, i32 undef)  ; BufferLoad(srv,index,wot)
  %3440 = extractvalue %dx.types.ResRet.i32 %3439, 0
  %3441 = add i32 %3440, 0
  %3442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.i32 %3443, 0
  %3445 = and i32 %3444, 131072
  %3446 = icmp eq i32 %3445, 0
  %3447 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3442, %dx.types.Handle %69, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3448 = extractvalue %dx.types.ResRet.f32 %3447, 0
  %3449 = extractvalue %dx.types.ResRet.f32 %3447, 1
  %3450 = extractvalue %dx.types.ResRet.f32 %3447, 2
  %3451 = fmul fast float %3448, %302
  %3452 = fmul fast float %3449, %305
  %3453 = fmul fast float %3450, %308
  br i1 %3446, label %3460, label %3454

; <label>:3454                                    ; preds = %3437
  %3455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3456 = extractvalue %dx.types.CBufRet.f32 %3455, 0
  %3457 = fmul fast float %3456, %3451
  %3458 = fmul fast float %3456, %3452
  %3459 = fmul fast float %3456, %3453
  br label %3460

; <label>:3460                                    ; preds = %3454, %3437
  %3461 = phi float [ %3457, %3454 ], [ %3451, %3437 ]
  %3462 = phi float [ %3458, %3454 ], [ %3452, %3437 ]
  %3463 = phi float [ %3459, %3454 ], [ %3453, %3437 ]
  %3464 = fmul fast float %3461, %3432
  %3465 = select i1 %170, float %3464, float %3461
  %3466 = call float @dx.op.dot3.f32(i32 55, float %3465, float %3462, float %3463, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3467 = select i1 %170, float 0.000000e+00, float %3461
  %3468 = select i1 %170, float %3466, float %3462
  %3469 = select i1 %170, float 0.000000e+00, float %3463
  br label %3470

; <label>:3470                                    ; preds = %3460, %3422
  %3471 = phi float [ %3467, %3460 ], [ 0.000000e+00, %3422 ]
  %3472 = phi float [ %3468, %3460 ], [ 0.000000e+00, %3422 ]
  %3473 = phi float [ %3469, %3460 ], [ 0.000000e+00, %3422 ]
  %3474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3475 = extractvalue %dx.types.ResRet.i32 %3474, 0
  %3476 = and i32 %3475, 10240
  %3477 = icmp eq i32 %3476, 0
  br i1 %3477, label %3522, label %3478

; <label>:3478                                    ; preds = %3470
  %3479 = add i32 %33, 468
  %3480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3479, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.i32 %3480, 0
  %3482 = add i32 %3481, 0
  %3483 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3482, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3484 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3483, %dx.types.Handle %70, float %2935, float %2936, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3485 = extractvalue %dx.types.ResRet.f32 %3484, 1
  %3486 = extractvalue %dx.types.ResRet.f32 %3484, 3
  %3487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.i32 %3487, 0
  %3489 = and i32 %3488, 1048576
  %3490 = icmp ne i32 %3489, 0
  %3491 = and i32 %3488, 8192
  %3492 = icmp eq i32 %3491, 0
  br i1 %3492, label %3508, label %3493

; <label>:3493                                    ; preds = %3478
  %3494 = extractvalue %dx.types.ResRet.f32 %3484, 2
  %3495 = select i1 %3490, float %3494, float %3485
  %3496 = extractvalue %dx.types.ResRet.f32 %3484, 0
  %3497 = select i1 %3490, float %3496, float %3485
  %3498 = add i32 %33, 144
  %3499 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3498, i32 undef)  ; BufferLoad(srv,index,wot)
  %3500 = extractvalue %dx.types.ResRet.i32 %3499, 0
  %3501 = lshr i32 %3500, 16
  %3502 = and i32 %3501, 255
  %3503 = uitofp i32 %3502 to float
  %3504 = fmul fast float %3503, 0x3F80101020000000
  %3505 = fmul fast float %3504, %3497
  %3506 = fmul fast float %3504, %3485
  %3507 = fmul fast float %3504, %3495
  br label %3508

; <label>:3508                                    ; preds = %3493, %3478
  %3509 = phi float [ %3505, %3493 ], [ 0.000000e+00, %3478 ]
  %3510 = phi float [ %3506, %3493 ], [ 0.000000e+00, %3478 ]
  %3511 = phi float [ %3507, %3493 ], [ 0.000000e+00, %3478 ]
  %3512 = and i32 %3488, 2048
  %3513 = icmp eq i32 %3512, 0
  br i1 %3513, label %3522, label %3514

; <label>:3514                                    ; preds = %3508
  %3515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3427, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.i32 %3515, 0
  %3517 = shl i32 %3516, 4
  %3518 = and i32 %3517, 32752
  %3519 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3518)  ; LegacyF16ToF32(value)
  %3520 = fmul fast float %3519, %3486
  %3521 = call float @dx.op.binary.f32(i32 35, float %3520, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3522

; <label>:3522                                    ; preds = %3514, %3508, %3470
  %3523 = phi float [ %3509, %3514 ], [ %3509, %3508 ], [ 0.000000e+00, %3470 ]
  %3524 = phi float [ %3510, %3514 ], [ %3510, %3508 ], [ 0.000000e+00, %3470 ]
  %3525 = phi float [ %3511, %3514 ], [ %3511, %3508 ], [ 0.000000e+00, %3470 ]
  %3526 = phi float [ %3521, %3514 ], [ 0x3F70101020000000, %3508 ], [ 0x3F70101020000000, %3470 ]
  %3527 = add i32 %33, 144
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = and i32 %3529, 255
  %3531 = uitofp i32 %3530 to float
  %3532 = lshr i32 %3529, 8
  %3533 = and i32 %3532, 255
  %3534 = uitofp i32 %3533 to float
  %3535 = call float @dx.op.dot3.f32(i32 55, float %3343, float %3344, float %3345, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3536 = fmul fast float %3534, %3535
  %3537 = fadd fast float %3536, %3531
  %3538 = fmul fast float %3537, 0x3F70101020000000
  %3539 = call float @dx.op.unary.f32(i32 7, float %3538)  ; Saturate(value)
  br i1 %2827, label %3540, label %3548

; <label>:3540                                    ; preds = %3522
  %3541 = fsub fast float 1.000000e+00, %3123
  %3542 = fmul fast float %3541, %2812
  %3543 = fmul fast float %3541, %2813
  %3544 = fmul fast float %3541, %2814
  %3545 = fmul fast float %3541, %2815
  %3546 = fmul fast float %3541, %2816
  %3547 = fmul fast float %3541, %2817
  br label %3548

; <label>:3548                                    ; preds = %3540, %3522
  %3549 = phi float [ %3542, %3540 ], [ %2812, %3522 ]
  %3550 = phi float [ %3543, %3540 ], [ %2813, %3522 ]
  %3551 = phi float [ %3544, %3540 ], [ %2814, %3522 ]
  %3552 = phi float [ %3545, %3540 ], [ %2815, %3522 ]
  %3553 = phi float [ %3546, %3540 ], [ %2816, %3522 ]
  %3554 = phi float [ %3547, %3540 ], [ %2817, %3522 ]
  %3555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %3556 = extractvalue %dx.types.ResRet.i32 %3555, 0
  %3557 = and i32 %3556, 3
  %3558 = icmp eq i32 %3557, 3
  br i1 %3558, label %3637, label %3559

; <label>:3559                                    ; preds = %3548
  %3560 = and i32 %3556, 16
  %3561 = icmp ne i32 %3560, 0
  %3562 = select i1 %3561, float %3123, float 0.000000e+00
  %3563 = icmp eq i32 %3557, 0
  br i1 %3563, label %3564, label %3592

; <label>:3564                                    ; preds = %3559
  %3565 = and i32 %3556, 64
  %3566 = icmp ne i32 %3565, 0
  %3567 = select i1 %3566, float %3123, float 0.000000e+00
  %3568 = fsub fast float %3343, %3549
  %3569 = fsub fast float %3344, %3550
  %3570 = fsub fast float %3345, %3551
  %3571 = fmul fast float %3562, %3568
  %3572 = fmul fast float %3562, %3569
  %3573 = fmul fast float %3562, %3570
  %3574 = fadd fast float %3571, %3549
  %3575 = fadd fast float %3572, %3550
  %3576 = fadd fast float %3573, %3551
  %3577 = fsub fast float %3329, %2821
  %3578 = fmul fast float %3562, %3577
  %3579 = fadd fast float %3578, %2821
  %3580 = fsub fast float %3471, %3552
  %3581 = fsub fast float %3472, %3553
  %3582 = fsub fast float %3473, %3554
  %3583 = fmul fast float %3567, %3580
  %3584 = fmul fast float %3567, %3581
  %3585 = fmul fast float %3567, %3582
  %3586 = fadd fast float %3583, %3552
  %3587 = fadd fast float %3584, %3553
  %3588 = fadd fast float %3585, %3554
  %3589 = fsub fast float %3539, %2825
  %3590 = fmul fast float %3562, %3589
  %3591 = fadd fast float %3590, %2825
  br label %3637

; <label>:3592                                    ; preds = %3559
  %3593 = icmp eq i32 %3557, 1
  br i1 %3593, label %3594, label %3607

; <label>:3594                                    ; preds = %3592
  %3595 = fadd fast float %3343, -1.000000e+00
  %3596 = fadd fast float %3344, -1.000000e+00
  %3597 = fadd fast float %3345, -1.000000e+00
  %3598 = fmul fast float %3562, %3595
  %3599 = fmul fast float %3562, %3596
  %3600 = fmul fast float %3562, %3597
  %3601 = fadd fast float %3598, 1.000000e+00
  %3602 = fadd fast float %3599, 1.000000e+00
  %3603 = fadd fast float %3600, 1.000000e+00
  %3604 = fmul fast float %3601, %3549
  %3605 = fmul fast float %3602, %3550
  %3606 = fmul fast float %3603, %3551
  br label %3637

; <label>:3607                                    ; preds = %3592
  %3608 = icmp eq i32 %3557, 2
  br i1 %3608, label %3609, label %3637

; <label>:3609                                    ; preds = %3607
  %3610 = call float @dx.op.unary.f32(i32 24, float %3343)  ; Sqrt(value)
  %3611 = call float @dx.op.unary.f32(i32 24, float %3344)  ; Sqrt(value)
  %3612 = call float @dx.op.unary.f32(i32 24, float %3345)  ; Sqrt(value)
  %3613 = fadd fast float %3610, -5.000000e-01
  %3614 = fadd fast float %3611, -5.000000e-01
  %3615 = fadd fast float %3612, -5.000000e-01
  %3616 = fmul fast float %3613, %3562
  %3617 = fmul fast float %3614, %3562
  %3618 = fmul fast float %3615, %3562
  %3619 = fadd fast float %3616, 5.000000e-01
  %3620 = fadd fast float %3617, 5.000000e-01
  %3621 = fadd fast float %3618, 5.000000e-01
  %3622 = fmul fast float %3619, 2.000000e+00
  %3623 = fsub fast float 1.000000e+00, %3622
  %3624 = fmul fast float %3623, %3549
  %3625 = fadd fast float %3624, %3622
  %3626 = fmul fast float %3625, %3549
  %3627 = fmul fast float %3620, 2.000000e+00
  %3628 = fsub fast float 1.000000e+00, %3627
  %3629 = fmul fast float %3628, %3550
  %3630 = fadd fast float %3629, %3627
  %3631 = fmul fast float %3630, %3550
  %3632 = fmul fast float %3621, 2.000000e+00
  %3633 = fsub fast float 1.000000e+00, %3632
  %3634 = fmul fast float %3633, %3551
  %3635 = fadd fast float %3634, %3632
  %3636 = fmul fast float %3635, %3551
  br label %3637

; <label>:3637                                    ; preds = %3609, %3607, %3594, %3564, %3548
  %3638 = phi float [ %3549, %3548 ], [ %3626, %3609 ], [ %3549, %3607 ], [ %3604, %3594 ], [ %3574, %3564 ]
  %3639 = phi float [ %3550, %3548 ], [ %3631, %3609 ], [ %3550, %3607 ], [ %3605, %3594 ], [ %3575, %3564 ]
  %3640 = phi float [ %3551, %3548 ], [ %3636, %3609 ], [ %3551, %3607 ], [ %3606, %3594 ], [ %3576, %3564 ]
  %3641 = phi float [ %3552, %3548 ], [ %3552, %3609 ], [ %3552, %3607 ], [ %3552, %3594 ], [ %3586, %3564 ]
  %3642 = phi float [ %3553, %3548 ], [ %3553, %3609 ], [ %3553, %3607 ], [ %3553, %3594 ], [ %3587, %3564 ]
  %3643 = phi float [ %3554, %3548 ], [ %3554, %3609 ], [ %3554, %3607 ], [ %3554, %3594 ], [ %3588, %3564 ]
  %3644 = phi float [ %2821, %3548 ], [ %2821, %3609 ], [ %2821, %3607 ], [ %2821, %3594 ], [ %3579, %3564 ]
  %3645 = phi float [ %2825, %3548 ], [ %2825, %3609 ], [ %2825, %3607 ], [ %2825, %3594 ], [ %3591, %3564 ]
  %3646 = and i32 %3556, 12
  %3647 = icmp eq i32 %3646, 12
  br i1 %3647, label %3754, label %3648

; <label>:3648                                    ; preds = %3637
  %3649 = and i32 %3556, 2097184
  %3650 = icmp eq i32 %3649, 2097184
  %3651 = select i1 %3650, float %3123, float 0.000000e+00
  %3652 = and i32 %3556, 4194336
  %3653 = icmp eq i32 %3652, 4194336
  %3654 = select i1 %3653, float %3123, float 0.000000e+00
  %3655 = and i32 %3556, 8388640
  %3656 = icmp eq i32 %3655, 8388640
  %3657 = select i1 %3656, float %3123, float 0.000000e+00
  %3658 = and i32 %3556, 2048
  %3659 = icmp ne i32 %3658, 0
  %3660 = select i1 %3659, float %3123, float 0.000000e+00
  %3661 = and i32 %3556, 8192
  %3662 = icmp ne i32 %3661, 0
  %3663 = select i1 %3662, float %3123, float 0.000000e+00
  %3664 = icmp eq i32 %3646, 0
  br i1 %3664, label %3665, label %3690

; <label>:3665                                    ; preds = %3648
  %3666 = fsub fast float %3424, %2810
  %3667 = fsub fast float %3425, %2811
  %3668 = fmul fast float %3651, %3666
  %3669 = fmul fast float %3651, %3667
  %3670 = fadd fast float %3668, %2810
  %3671 = fadd fast float %3669, %2811
  %3672 = fsub fast float %3426, %2823
  %3673 = fmul fast float %3654, %3672
  %3674 = fadd fast float %3673, %2823
  %3675 = fsub fast float %3423, %2822
  %3676 = fmul fast float %3657, %3675
  %3677 = fadd fast float %3676, %2822
  %3678 = fsub fast float %3526, %2824
  %3679 = fmul fast float %3660, %3678
  %3680 = fadd fast float %3679, %2824
  %3681 = fsub fast float %3523, %2818
  %3682 = fsub fast float %3524, %2819
  %3683 = fsub fast float %3525, %2820
  %3684 = fmul fast float %3663, %3681
  %3685 = fmul fast float %3663, %3682
  %3686 = fmul fast float %3663, %3683
  %3687 = fadd fast float %3684, %2818
  %3688 = fadd fast float %3685, %2819
  %3689 = fadd fast float %3686, %2820
  br label %3754

; <label>:3690                                    ; preds = %3648
  %3691 = icmp eq i32 %3646, 4
  br i1 %3691, label %3692, label %3732

; <label>:3692                                    ; preds = %3690
  %3693 = fmul fast float %3651, %3424
  %3694 = fmul fast float %3651, %3425
  %3695 = fadd fast float %3693, %2810
  %3696 = fadd fast float %3694, %2811
  %3697 = call float @dx.op.binary.f32(i32 36, float %2823, float %3426)  ; FMin(a,b)
  %3698 = fsub fast float %3697, %2823
  %3699 = fmul fast float %3698, %3654
  %3700 = fadd fast float %3699, %2823
  %3701 = fadd fast float %3423, %2822
  %3702 = fmul fast float %3701, 0x3FF337FAE0000000
  %3703 = fmul fast float %2822, %2822
  %3704 = fmul fast float %3423, %3423
  %3705 = fadd fast float %3704, %3703
  %3706 = fmul fast float %3705, 0x3FE5152B00000000
  %3707 = fmul fast float %2822, 0xBFCC1F85E0000000
  %3708 = fmul fast float %3707, %3423
  %3709 = fadd fast float %3708, 0xBFE1363700000000
  %3710 = fadd fast float %3709, %3702
  %3711 = fsub fast float %3710, %3706
  %3712 = fmul fast float %3701, 0x3FBA6F0D00000000
  %3713 = fmul fast float %3705, 0x3FD0432880000000
  %3714 = fmul fast float %2822, 0xBFEF110800000000
  %3715 = fmul fast float %3714, %3423
  %3716 = fadd fast float %3715, 1.000000e+00
  %3717 = fsub fast float %3716, %3712
  %3718 = fadd fast float %3717, %3713
  %3719 = fdiv fast float %3711, %3718
  %3720 = call float @dx.op.unary.f32(i32 7, float %3719)  ; Saturate(value)
  %3721 = fsub fast float %3720, %2822
  %3722 = fmul fast float %3721, %3657
  %3723 = fadd fast float %3722, %2822
  %3724 = fmul fast float %3660, %3526
  %3725 = fadd fast float %3724, %2824
  %3726 = fmul fast float %3663, %3523
  %3727 = fmul fast float %3663, %3524
  %3728 = fmul fast float %3663, %3525
  %3729 = fadd fast float %3726, %2818
  %3730 = fadd fast float %3727, %2819
  %3731 = fadd fast float %3728, %2820
  br label %3754

; <label>:3732                                    ; preds = %3690
  %3733 = icmp eq i32 %3646, 8
  br i1 %3733, label %3734, label %3754

; <label>:3734                                    ; preds = %3732
  %3735 = fmul fast float %3651, %3424
  %3736 = fmul fast float %3651, %3425
  %3737 = fadd fast float %3735, %2810
  %3738 = fadd fast float %3736, %2811
  %3739 = call float @dx.op.binary.f32(i32 36, float %2823, float %3426)  ; FMin(a,b)
  %3740 = fsub fast float %3739, %2823
  %3741 = fmul fast float %3740, %3654
  %3742 = fadd fast float %3741, %2823
  %3743 = fsub fast float %3423, %2822
  %3744 = fmul fast float %3657, %3743
  %3745 = fadd fast float %3744, %2822
  %3746 = fmul fast float %3660, %3526
  %3747 = fadd fast float %3746, %2824
  %3748 = fmul fast float %3663, %3523
  %3749 = fmul fast float %3663, %3524
  %3750 = fmul fast float %3663, %3525
  %3751 = fadd fast float %3748, %2818
  %3752 = fadd fast float %3749, %2819
  %3753 = fadd fast float %3750, %2820
  br label %3754

; <label>:3754                                    ; preds = %3734, %3732, %3692, %3665, %3637, %3122, %2826, %2809
  %3755 = phi float [ %2810, %3637 ], [ %2810, %3122 ], [ %2810, %2809 ], [ %2810, %2826 ], [ %3670, %3665 ], [ %3695, %3692 ], [ %2810, %3732 ], [ %3737, %3734 ]
  %3756 = phi float [ %2811, %3637 ], [ %2811, %3122 ], [ %2811, %2809 ], [ %2811, %2826 ], [ %3671, %3665 ], [ %3696, %3692 ], [ %2811, %3732 ], [ %3738, %3734 ]
  %3757 = phi float [ %3638, %3637 ], [ %2812, %3122 ], [ %2812, %2809 ], [ %2812, %2826 ], [ %3638, %3665 ], [ %3638, %3692 ], [ %3638, %3732 ], [ %3638, %3734 ]
  %3758 = phi float [ %3639, %3637 ], [ %2813, %3122 ], [ %2813, %2809 ], [ %2813, %2826 ], [ %3639, %3665 ], [ %3639, %3692 ], [ %3639, %3732 ], [ %3639, %3734 ]
  %3759 = phi float [ %3640, %3637 ], [ %2814, %3122 ], [ %2814, %2809 ], [ %2814, %2826 ], [ %3640, %3665 ], [ %3640, %3692 ], [ %3640, %3732 ], [ %3640, %3734 ]
  %3760 = phi float [ %3641, %3637 ], [ %2815, %3122 ], [ %2815, %2809 ], [ %2815, %2826 ], [ %3641, %3665 ], [ %3641, %3692 ], [ %3641, %3732 ], [ %3641, %3734 ]
  %3761 = phi float [ %3642, %3637 ], [ %2816, %3122 ], [ %2816, %2809 ], [ %2816, %2826 ], [ %3642, %3665 ], [ %3642, %3692 ], [ %3642, %3732 ], [ %3642, %3734 ]
  %3762 = phi float [ %3643, %3637 ], [ %2817, %3122 ], [ %2817, %2809 ], [ %2817, %2826 ], [ %3643, %3665 ], [ %3643, %3692 ], [ %3643, %3732 ], [ %3643, %3734 ]
  %3763 = phi float [ %2818, %3637 ], [ %2818, %3122 ], [ %2818, %2809 ], [ %2818, %2826 ], [ %3687, %3665 ], [ %3729, %3692 ], [ %2818, %3732 ], [ %3751, %3734 ]
  %3764 = phi float [ %2819, %3637 ], [ %2819, %3122 ], [ %2819, %2809 ], [ %2819, %2826 ], [ %3688, %3665 ], [ %3730, %3692 ], [ %2819, %3732 ], [ %3752, %3734 ]
  %3765 = phi float [ %2820, %3637 ], [ %2820, %3122 ], [ %2820, %2809 ], [ %2820, %2826 ], [ %3689, %3665 ], [ %3731, %3692 ], [ %2820, %3732 ], [ %3753, %3734 ]
  %3766 = phi float [ %3644, %3637 ], [ %2821, %3122 ], [ %2821, %2809 ], [ %2821, %2826 ], [ %3644, %3665 ], [ %3644, %3692 ], [ %3644, %3732 ], [ %3644, %3734 ]
  %3767 = phi float [ %2822, %3637 ], [ %2822, %3122 ], [ %2822, %2809 ], [ %2822, %2826 ], [ %3677, %3665 ], [ %3723, %3692 ], [ %2822, %3732 ], [ %3745, %3734 ]
  %3768 = phi float [ %2823, %3637 ], [ %2823, %3122 ], [ %2823, %2809 ], [ %2823, %2826 ], [ %3674, %3665 ], [ %3700, %3692 ], [ %2823, %3732 ], [ %3742, %3734 ]
  %3769 = phi float [ %2824, %3637 ], [ %2824, %3122 ], [ %2824, %2809 ], [ %2824, %2826 ], [ %3680, %3665 ], [ %3725, %3692 ], [ %2824, %3732 ], [ %3747, %3734 ]
  %3770 = phi float [ %3645, %3637 ], [ %2825, %3122 ], [ %2825, %2809 ], [ %2825, %2826 ], [ %3645, %3665 ], [ %3645, %3692 ], [ %3645, %3732 ], [ %3645, %3734 ]
  %3771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3772 = extractvalue %dx.types.CBufRet.f32 %3771, 0
  %3773 = call float @dx.op.dot2.f32(i32 54, float %3755, float %3756, float %3755, float %3756)  ; Dot2(ax,ay,bx,by)
  %3774 = fmul fast float %3773, 0x3FE3333340000000
  %3775 = fsub fast float 1.000000e+00, %3774
  %3776 = call float @dx.op.dot3.f32(i32 55, float %3755, float %3756, float %3775, float %3755, float %3756, float %3775)  ; Dot3(ax,ay,az,bx,by,bz)
  %3777 = call float @dx.op.unary.f32(i32 25, float %3776)  ; Rsqrt(value)
  %3778 = fmul fast float %3777, %3755
  %3779 = fmul fast float %3777, %3756
  %3780 = fmul fast float %3775, %3777
  %3781 = fmul fast float %3780, %80
  %3782 = fmul fast float %3780, %81
  %3783 = fmul fast float %3780, %82
  %3784 = fmul fast float %3778, %54
  %3785 = fmul fast float %3778, %55
  %3786 = fmul fast float %3778, %56
  %3787 = fadd fast float %3781, %3784
  %3788 = fadd fast float %3782, %3785
  %3789 = fadd fast float %3783, %3786
  %3790 = fmul fast float %92, %3779
  %3791 = fmul fast float %93, %3779
  %3792 = fmul fast float %94, %3779
  %3793 = fadd fast float %3787, %3790
  %3794 = fadd fast float %3788, %3791
  %3795 = fadd fast float %3789, %3792
  %3796 = call float @dx.op.dot3.f32(i32 55, float %3793, float %3794, float %3795, float %3793, float %3794, float %3795)  ; Dot3(ax,ay,az,bx,by,bz)
  %3797 = call float @dx.op.unary.f32(i32 25, float %3796)  ; Rsqrt(value)
  %3798 = fmul fast float %3793, %3797
  %3799 = fmul fast float %3794, %3797
  %3800 = fmul fast float %3795, %3797
  %3801 = and i32 %35, 1
  %3802 = icmp eq i32 %3801, 0
  br i1 %3802, label %3803, label %4364

; <label>:3803                                    ; preds = %3754
  %3804 = call float @dx.op.unary.f32(i32 83, float %128)  ; DerivCoarseX(value)
  %3805 = call float @dx.op.unary.f32(i32 83, float %129)  ; DerivCoarseX(value)
  %3806 = call float @dx.op.unary.f32(i32 83, float %130)  ; DerivCoarseX(value)
  %3807 = call float @dx.op.unary.f32(i32 84, float %128)  ; DerivCoarseY(value)
  %3808 = call float @dx.op.unary.f32(i32 84, float %129)  ; DerivCoarseY(value)
  %3809 = call float @dx.op.unary.f32(i32 84, float %130)  ; DerivCoarseY(value)
  %3810 = fadd fast float %3804, %128
  %3811 = fadd fast float %3805, %129
  %3812 = fadd fast float %3806, %130
  %3813 = fadd fast float %3807, %128
  %3814 = fadd fast float %3808, %129
  %3815 = fadd fast float %3809, %130
  %3816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3817 = extractvalue %dx.types.CBufRet.f32 %3816, 0
  %3818 = extractvalue %dx.types.CBufRet.f32 %3816, 1
  %3819 = extractvalue %dx.types.CBufRet.f32 %3816, 2
  %3820 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3821 = extractvalue %dx.types.CBufRet.f32 %3820, 2
  %3822 = extractvalue %dx.types.CBufRet.f32 %3820, 3
  %3823 = fmul fast float %3817, %73
  %3824 = fmul fast float %3823, %3821
  %3825 = fmul fast float %3818, %74
  %3826 = fmul fast float %3825, %3822
  %3827 = fptoui float %3824 to i32
  %3828 = fptoui float %3826 to i32
  %3829 = fadd fast float %3817, -1.000000e+00
  %3830 = fadd fast float %3818, -1.000000e+00
  %3831 = fptoui float %3829 to i32
  %3832 = fptoui float %3830 to i32
  %3833 = call i32 @dx.op.binary.i32(i32 40, i32 %3827, i32 %3831)  ; UMin(a,b)
  %3834 = call i32 @dx.op.binary.i32(i32 40, i32 %3828, i32 %3832)  ; UMin(a,b)
  %3835 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3836 = extractvalue %dx.types.CBufRet.f32 %3835, 2
  %3837 = extractvalue %dx.types.CBufRet.f32 %3835, 3
  %3838 = fmul fast float %3836, %68
  %3839 = fsub fast float %3838, %3837
  %3840 = fadd fast float %3819, -1.000000e+00
  %3841 = call float @dx.op.binary.f32(i32 36, float %3839, float %3840)  ; FMin(a,b)
  %3842 = fptoui float %3841 to i32
  %3843 = fptoui float %3817 to i32
  %3844 = fptoui float %3818 to i32
  %3845 = mul i32 %3842, %3844
  %3846 = add i32 %3845, %3834
  %3847 = mul i32 %3846, %3843
  %3848 = add i32 %3847, %3833
  %3849 = shl i32 %3848, 2
  %3850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3849, i32 undef)  ; BufferLoad(srv,index,wot)
  %3851 = extractvalue %dx.types.ResRet.i32 %3850, 0
  %3852 = and i32 %3851, 1023
  %3853 = lshr i32 %3851, 10
  %3854 = icmp eq i32 %3852, 0
  br i1 %3854, label %4330, label %3855

; <label>:3855                                    ; preds = %3803
  %3856 = and i32 %3851, 1023
  br label %3857

; <label>:3857                                    ; preds = %3986, %3855
  %3858 = phi i32 [ %3936, %3986 ], [ 0, %3855 ]
  %3859 = phi float [ %3987, %3986 ], [ 0.000000e+00, %3855 ]
  %3860 = phi float [ %3988, %3986 ], [ %3772, %3855 ]
  %3861 = phi float [ %3989, %3986 ], [ %3770, %3855 ]
  %3862 = phi float [ %3990, %3986 ], [ 0.000000e+00, %3855 ]
  %3863 = phi float [ %3991, %3986 ], [ 0.000000e+00, %3855 ]
  %3864 = phi float [ %3992, %3986 ], [ %3763, %3855 ]
  %3865 = phi float [ %3993, %3986 ], [ %3764, %3855 ]
  %3866 = phi float [ %3994, %3986 ], [ %3765, %3855 ]
  %3867 = phi float [ %3995, %3986 ], [ %3760, %3855 ]
  %3868 = phi float [ %3996, %3986 ], [ %3761, %3855 ]
  %3869 = phi float [ %3997, %3986 ], [ %3762, %3855 ]
  %3870 = phi float [ %3998, %3986 ], [ %3798, %3855 ]
  %3871 = phi float [ %3999, %3986 ], [ %3799, %3855 ]
  %3872 = phi float [ %4000, %3986 ], [ %3800, %3855 ]
  %3873 = phi float [ %4001, %3986 ], [ %3768, %3855 ]
  %3874 = phi float [ %4002, %3986 ], [ %3767, %3855 ]
  %3875 = phi float [ %4003, %3986 ], [ 0.000000e+00, %3855 ]
  %3876 = phi float [ %4004, %3986 ], [ %3766, %3855 ]
  %3877 = phi float [ %4005, %3986 ], [ %3757, %3855 ]
  %3878 = phi float [ %4006, %3986 ], [ %3758, %3855 ]
  %3879 = phi float [ %4007, %3986 ], [ %3759, %3855 ]
  %3880 = add nuw nsw i32 %3858, %3853
  %3881 = shl i32 %3880, 2
  %3882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3881, i32 undef)  ; BufferLoad(srv,index,wot)
  %3883 = extractvalue %dx.types.ResRet.i32 %3882, 0
  %3884 = shl i32 %3883, 8
  %3885 = or i32 %3884, 48
  %3886 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.f32 %3886, 0
  %3888 = extractvalue %dx.types.ResRet.f32 %3886, 1
  %3889 = extractvalue %dx.types.ResRet.f32 %3886, 2
  %3890 = extractvalue %dx.types.ResRet.f32 %3886, 3
  %3891 = or i32 %3884, 64
  %3892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3891, i32 undef)  ; BufferLoad(srv,index,wot)
  %3893 = extractvalue %dx.types.ResRet.i32 %3892, 0
  %3894 = extractvalue %dx.types.ResRet.i32 %3892, 1
  %3895 = or i32 %3884, 80
  %3896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3895, i32 undef)  ; BufferLoad(srv,index,wot)
  %3897 = extractvalue %dx.types.ResRet.f32 %3896, 2
  %3898 = extractvalue %dx.types.ResRet.f32 %3896, 3
  %3899 = or i32 %3884, 96
  %3900 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3899, i32 undef)  ; BufferLoad(srv,index,wot)
  %3901 = extractvalue %dx.types.ResRet.f32 %3900, 0
  %3902 = extractvalue %dx.types.ResRet.f32 %3900, 1
  %3903 = extractvalue %dx.types.ResRet.f32 %3900, 2
  %3904 = extractvalue %dx.types.ResRet.f32 %3900, 3
  %3905 = or i32 %3884, 112
  %3906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3905, i32 undef)  ; BufferLoad(srv,index,wot)
  %3907 = extractvalue %dx.types.ResRet.f32 %3906, 2
  %3908 = or i32 %3884, 128
  %3909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3908, i32 undef)  ; BufferLoad(srv,index,wot)
  %3910 = extractvalue %dx.types.ResRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.ResRet.f32 %3909, 1
  %3912 = extractvalue %dx.types.ResRet.f32 %3909, 2
  %3913 = extractvalue %dx.types.ResRet.f32 %3909, 3
  %3914 = or i32 %3884, 144
  %3915 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.f32 %3915, 0
  %3917 = extractvalue %dx.types.ResRet.f32 %3915, 1
  %3918 = extractvalue %dx.types.ResRet.f32 %3915, 2
  %3919 = extractvalue %dx.types.ResRet.f32 %3915, 3
  %3920 = or i32 %3884, 160
  %3921 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3920, i32 undef)  ; BufferLoad(srv,index,wot)
  %3922 = extractvalue %dx.types.ResRet.f32 %3921, 0
  %3923 = extractvalue %dx.types.ResRet.f32 %3921, 1
  %3924 = extractvalue %dx.types.ResRet.f32 %3921, 2
  %3925 = extractvalue %dx.types.ResRet.f32 %3921, 3
  %3926 = or i32 %3884, 192
  %3927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3926, i32 undef)  ; BufferLoad(srv,index,wot)
  %3928 = extractvalue %dx.types.ResRet.i32 %3927, 0
  %3929 = or i32 %3884, 208
  %3930 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3929, i32 undef)  ; BufferLoad(srv,index,wot)
  %3931 = extractvalue %dx.types.ResRet.f32 %3930, 0
  %3932 = or i32 %3884, 248
  %3933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3936 = add nuw nsw i32 %3858, 1
  %3937 = bitcast float %3890 to i32
  %3938 = and i32 %3937, 512
  %3939 = icmp eq i32 %3938, 0
  %3940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.ResRet.f32 %3940, 1
  %3943 = extractvalue %dx.types.ResRet.f32 %3940, 2
  %3944 = extractvalue %dx.types.ResRet.f32 %3940, 3
  %3945 = call float @dx.op.dot4.f32(i32 56, float %3941, float %3942, float %3943, float %3944, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3946 = or i32 %3884, 16
  %3947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = extractvalue %dx.types.ResRet.f32 %3947, 3
  %3952 = call float @dx.op.dot4.f32(i32 56, float %3948, float %3949, float %3950, float %3951, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3953 = or i32 %3884, 32
  %3954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.ResRet.f32 %3954, 2
  %3958 = extractvalue %dx.types.ResRet.f32 %3954, 3
  %3959 = call float @dx.op.dot4.f32(i32 56, float %3955, float %3956, float %3957, float %3958, float %128, float %129, float %130, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3960 = call float @dx.op.unary.f32(i32 27, float %3945)  ; Round_ni(value)
  %3961 = call float @dx.op.unary.f32(i32 6, float %3960)  ; FAbs(value)
  %3962 = call float @dx.op.unary.f32(i32 27, float %3952)  ; Round_ni(value)
  %3963 = call float @dx.op.unary.f32(i32 6, float %3962)  ; FAbs(value)
  %3964 = call float @dx.op.unary.f32(i32 6, float %3959)  ; FAbs(value)
  %3965 = call float @dx.op.unary.f32(i32 27, float %3964)  ; Round_ni(value)
  %3966 = fadd fast float %3963, %3961
  %3967 = fadd fast float %3966, %3965
  %3968 = fcmp fast oeq float %3967, 0.000000e+00
  %3969 = call float @dx.op.dot4.f32(i32 56, float %3941, float %3942, float %3943, float %3944, float %3810, float %3811, float %3812, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3970 = call float @dx.op.dot4.f32(i32 56, float %3948, float %3949, float %3950, float %3951, float %3810, float %3811, float %3812, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3971 = call float @dx.op.dot4.f32(i32 56, float %3941, float %3942, float %3943, float %3944, float %3813, float %3814, float %3815, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3972 = call float @dx.op.dot4.f32(i32 56, float %3948, float %3949, float %3950, float %3951, float %3813, float %3814, float %3815, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3973 = fsub fast float %3969, %3945
  %3974 = fsub fast float %3971, %3945
  %3975 = fsub fast float %3970, %3952
  %3976 = fsub fast float %3972, %3952
  %3977 = call float @dx.op.dot3.f32(i32 55, float %3887, float %3888, float %3889, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %3978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3979 = extractvalue %dx.types.CBufRet.f32 %3978, 2
  %3980 = fadd fast float %3979, %3977
  %3981 = call float @dx.op.unary.f32(i32 7, float %3980)  ; Saturate(value)
  %3982 = extractvalue %dx.types.CBufRet.f32 %3978, 0
  %3983 = fcmp fast ogt float %3981, %3982
  %3984 = and i1 %3968, %3983
  %3985 = and i1 %3939, %3984
  br i1 %3985, label %4009, label %3986

; <label>:3986                                    ; preds = %4316, %4090, %4009, %3857
  %3987 = phi float [ %3859, %4009 ], [ %4093, %4090 ], [ %4093, %4316 ], [ %3859, %3857 ]
  %3988 = phi float [ %3860, %4009 ], [ %3860, %4090 ], [ %4292, %4316 ], [ %3860, %3857 ]
  %3989 = phi float [ %3861, %4009 ], [ %3861, %4090 ], [ %4290, %4316 ], [ %3861, %3857 ]
  %3990 = phi float [ %3862, %4009 ], [ %3862, %4090 ], [ %4217, %4316 ], [ %3862, %3857 ]
  %3991 = phi float [ %3863, %4009 ], [ %3863, %4090 ], [ %4215, %4316 ], [ %3863, %3857 ]
  %3992 = phi float [ %3864, %4009 ], [ %3864, %4090 ], [ %4260, %4316 ], [ %3864, %3857 ]
  %3993 = phi float [ %3865, %4009 ], [ %3865, %4090 ], [ %4261, %4316 ], [ %3865, %3857 ]
  %3994 = phi float [ %3866, %4009 ], [ %3866, %4090 ], [ %4262, %4316 ], [ %3866, %3857 ]
  %3995 = phi float [ %3867, %4009 ], [ %3867, %4090 ], [ %4326, %4316 ], [ %3867, %3857 ]
  %3996 = phi float [ %3868, %4009 ], [ %3868, %4090 ], [ %4327, %4316 ], [ %3868, %3857 ]
  %3997 = phi float [ %3869, %4009 ], [ %3869, %4090 ], [ %4328, %4316 ], [ %3869, %3857 ]
  %3998 = phi float [ %3870, %4009 ], [ %3870, %4090 ], [ %4196, %4316 ], [ %3870, %3857 ]
  %3999 = phi float [ %3871, %4009 ], [ %3871, %4090 ], [ %4197, %4316 ], [ %3871, %3857 ]
  %4000 = phi float [ %3872, %4009 ], [ %3872, %4090 ], [ %4198, %4316 ], [ %3872, %3857 ]
  %4001 = phi float [ %3873, %4009 ], [ %3873, %4090 ], [ %4270, %4316 ], [ %3873, %3857 ]
  %4002 = phi float [ %3874, %4009 ], [ %3874, %4090 ], [ %4267, %4316 ], [ %3874, %3857 ]
  %4003 = phi float [ %3875, %4009 ], [ %3875, %4090 ], [ %4264, %4316 ], [ %3875, %3857 ]
  %4004 = phi float [ %3876, %4009 ], [ %3876, %4090 ], [ %4213, %4316 ], [ %3876, %3857 ]
  %4005 = phi float [ %3877, %4009 ], [ %3877, %4090 ], [ %4208, %4316 ], [ %3877, %3857 ]
  %4006 = phi float [ %3878, %4009 ], [ %3878, %4090 ], [ %4209, %4316 ], [ %3878, %3857 ]
  %4007 = phi float [ %3879, %4009 ], [ %3879, %4090 ], [ %4210, %4316 ], [ %3879, %3857 ]
  %4008 = icmp eq i32 %3936, %3856
  br i1 %4008, label %4329, label %3857

; <label>:4009                                    ; preds = %3857
  %4010 = extractvalue %dx.types.ResRet.f32 %3906, 3
  %4011 = extractvalue %dx.types.ResRet.f32 %3906, 1
  %4012 = extractvalue %dx.types.ResRet.f32 %3906, 0
  %4013 = extractvalue %dx.types.ResRet.f32 %3896, 1
  %4014 = extractvalue %dx.types.ResRet.f32 %3896, 0
  %4015 = extractvalue %dx.types.ResRet.i32 %3892, 3
  %4016 = extractvalue %dx.types.ResRet.i32 %3892, 2
  %4017 = add i32 %4015, 0
  %4018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4017, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4019 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4020 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4018, %dx.types.Handle %4019, float %3945, float %3952, float undef, float undef, i32 0, i32 0, i32 undef, float %3973, float %3975, float undef, float %3974, float %3976, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4021 = extractvalue %dx.types.ResRet.f32 %4020, 0
  %4022 = fmul fast float %4021, %4014
  %4023 = fadd fast float %4022, %4013
  %4024 = call float @dx.op.unary.f32(i32 7, float %4023)  ; Saturate(value)
  %4025 = fmul fast float %3945, %3901
  %4026 = call float @dx.op.tertiary.f32(i32 46, float %3902, float %3952, float %4025)  ; FMad(a,b,c)
  %4027 = fadd fast float %4026, %4012
  %4028 = fmul fast float %3945, %3903
  %4029 = call float @dx.op.tertiary.f32(i32 46, float %3904, float %3952, float %4028)  ; FMad(a,b,c)
  %4030 = fadd fast float %4029, %4011
  %4031 = fmul fast float %3973, %3901
  %4032 = call float @dx.op.tertiary.f32(i32 46, float %3902, float %3975, float %4031)  ; FMad(a,b,c)
  %4033 = fmul fast float %3973, %3903
  %4034 = call float @dx.op.tertiary.f32(i32 46, float %3904, float %3975, float %4033)  ; FMad(a,b,c)
  %4035 = fmul fast float %3974, %3901
  %4036 = call float @dx.op.tertiary.f32(i32 46, float %3902, float %3976, float %4035)  ; FMad(a,b,c)
  %4037 = fmul fast float %3974, %3903
  %4038 = call float @dx.op.tertiary.f32(i32 46, float %3904, float %3976, float %4037)  ; FMad(a,b,c)
  %4039 = add i32 %4016, 0
  %4040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4039, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4041 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4040, %dx.types.Handle %4019, float %4027, float %4030, float undef, float undef, i32 0, i32 0, i32 undef, float %4032, float %4034, float undef, float %4036, float %4038, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4042 = extractvalue %dx.types.ResRet.f32 %4041, 0
  %4043 = and i32 %3937, 1024
  %4044 = icmp ne i32 %4043, 0
  %4045 = fcmp fast ogt float %4042, 0x3FE0101020000000
  %4046 = uitofp i1 %4045 to float
  %4047 = select i1 %4044, float %4046, float %4042
  %4048 = and i32 %3937, 8192
  %4049 = icmp ne i32 %4048, 0
  %4050 = select i1 %4049, float %4010, float 1.000000e+00
  %4051 = fmul fast float %3945, 2.000000e+00
  %4052 = fadd fast float %4051, -1.000000e+00
  %4053 = call float @dx.op.unary.f32(i32 6, float %4052)  ; FAbs(value)
  %4054 = fmul fast float %4053, %3934
  %4055 = fsub fast float %4054, %3934
  %4056 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  %4057 = fmul fast float %3952, 2.000000e+00
  %4058 = fadd fast float %4057, -1.000000e+00
  %4059 = call float @dx.op.unary.f32(i32 6, float %4058)  ; FAbs(value)
  %4060 = fmul fast float %4059, %3935
  %4061 = fsub fast float %4060, %3935
  %4062 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4063 = fmul fast float %3964, %3897
  %4064 = fsub fast float %4063, %3897
  %4065 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  %4066 = fmul fast float %4024, %4050
  %4067 = fmul fast float %4066, %4021
  %4068 = fmul fast float %4067, %4056
  %4069 = fmul fast float %4068, %4047
  %4070 = fmul fast float %4069, %4062
  %4071 = fmul fast float %4070, %4065
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4074 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4075 = fsub fast float %3981, %4074
  %4076 = fmul fast float %4075, %4073
  %4077 = call float @dx.op.unary.f32(i32 7, float %4076)  ; Saturate(value)
  %4078 = fmul fast float %4071, %3898
  %4079 = fadd fast float %4071, %3898
  %4080 = fmul fast float %4079, %3907
  %4081 = fsub fast float %4080, %3907
  %4082 = call float @dx.op.unary.f32(i32 7, float %4081)  ; Saturate(value)
  %4083 = and i32 %3937, 128
  %4084 = icmp ne i32 %4083, 0
  %4085 = select i1 %4084, float %4082, float %4078
  %4086 = fmul fast float %4085, %4077
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 0
  %4089 = fcmp fast ugt float %4086, %4088
  br i1 %4089, label %4090, label %3986

; <label>:4090                                    ; preds = %4009
  %4091 = select i1 %4049, float %4086, float 0.000000e+00
  %4092 = fadd fast float %4091, %3859
  %4093 = call float @dx.op.unary.f32(i32 7, float %4092)  ; Saturate(value)
  br i1 %4049, label %3986, label %4094

; <label>:4094                                    ; preds = %4090
  %4095 = and i32 %3937, 4
  %4096 = and i32 %3937, 8
  %4097 = add i32 %3893, 0
  %4098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4097, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4099 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4100 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4098, %dx.types.Handle %4099, float %4027, float %4030, float undef, float undef, i32 0, i32 0, i32 undef, float %4032, float %4034, float undef, float %4036, float %4038, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.ResRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.ResRet.f32 %4100, 2
  %4104 = extractvalue %dx.types.ResRet.f32 %4100, 3
  %4105 = bitcast float %3919 to i32
  %4106 = and i32 %4105, 255
  %4107 = uitofp i32 %4106 to float
  %4108 = lshr i32 %4105, 8
  %4109 = and i32 %4108, 255
  %4110 = uitofp i32 %4109 to float
  %4111 = fmul fast float %4104, %4107
  %4112 = fadd fast float %4111, %4110
  %4113 = fmul fast float %4112, 0x3F70101000000000
  %4114 = add i32 %3894, 0
  %4115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4114, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4116 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4115, %dx.types.Handle %4099, float %4027, float %4030, float undef, float undef, i32 0, i32 0, i32 undef, float %4032, float %4034, float undef, float %4036, float %4038, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4118 = extractvalue %dx.types.ResRet.f32 %4116, 1
  %4119 = extractvalue %dx.types.ResRet.f32 %4116, 2
  %4120 = extractvalue %dx.types.ResRet.f32 %4116, 3
  %4121 = bitcast float %3913 to i32
  %4122 = and i32 %4121, 255
  %4123 = uitofp i32 %4122 to float
  %4124 = lshr i32 %4121, 8
  %4125 = and i32 %4124, 255
  %4126 = uitofp i32 %4125 to float
  %4127 = lshr i32 %4121, 16
  %4128 = and i32 %4127, 255
  %4129 = uitofp i32 %4128 to float
  %4130 = fmul fast float %4129, 0x3F70101000000000
  %4131 = fmul fast float %4117, %4123
  %4132 = fadd fast float %4131, %4126
  %4133 = fmul fast float %4132, 0x3F70101000000000
  %4134 = fadd fast float %4118, -5.000000e-01
  %4135 = fadd fast float %4120, -5.000000e-01
  %4136 = fmul fast float %4134, %4130
  %4137 = fmul fast float %4135, %4130
  %4138 = fadd fast float %4136, 5.000000e-01
  %4139 = fadd fast float %4137, 5.000000e-01
  %4140 = fmul fast float %4101, %3922
  %4141 = fmul fast float %4102, %3923
  %4142 = fmul fast float %4103, %3924
  %4143 = fmul fast float %4138, 2.000000e+00
  %4144 = fadd fast float %4143, -1.000000e+00
  %4145 = fmul fast float %4139, 2.000000e+00
  %4146 = fadd fast float %4145, -1.000000e+00
  %4147 = fadd fast float %4144, %4146
  %4148 = fmul fast float %4147, 5.000000e-01
  %4149 = fsub fast float %4144, %4146
  %4150 = fmul fast float %4149, 5.000000e-01
  %4151 = call float @dx.op.unary.f32(i32 6, float %4148)  ; FAbs(value)
  %4152 = fsub fast float 1.000000e+00, %4151
  %4153 = call float @dx.op.unary.f32(i32 6, float %4150)  ; FAbs(value)
  %4154 = fsub fast float %4152, %4153
  %4155 = call float @dx.op.dot3.f32(i32 55, float %4148, float %4150, float %4154, float %4148, float %4150, float %4154)  ; Dot3(ax,ay,az,bx,by,bz)
  %4156 = call float @dx.op.unary.f32(i32 25, float %4155)  ; Rsqrt(value)
  %4157 = fmul fast float %4148, %4156
  %4158 = fmul fast float %4150, %4156
  %4159 = fmul fast float %4156, %4154
  %4160 = fmul fast float %4159, %3887
  %4161 = fmul fast float %4159, %3888
  %4162 = fmul fast float %4159, %3889
  %4163 = fmul fast float %4157, %3910
  %4164 = fmul fast float %4157, %3911
  %4165 = fmul fast float %4157, %3912
  %4166 = fadd fast float %4163, %4160
  %4167 = fadd fast float %4164, %4161
  %4168 = fadd fast float %4165, %4162
  %4169 = fmul fast float %4158, %3916
  %4170 = fmul fast float %4158, %3917
  %4171 = fmul fast float %4158, %3918
  %4172 = fadd fast float %4166, %4169
  %4173 = fadd fast float %4167, %4170
  %4174 = fadd fast float %4168, %4171
  %4175 = call float @dx.op.dot3.f32(i32 55, float %4172, float %4173, float %4174, float %4172, float %4173, float %4174)  ; Dot3(ax,ay,az,bx,by,bz)
  %4176 = call float @dx.op.unary.f32(i32 25, float %4175)  ; Rsqrt(value)
  %4177 = fmul fast float %4172, %4176
  %4178 = fmul fast float %4173, %4176
  %4179 = fmul fast float %4174, %4176
  %4180 = icmp ne i32 %4096, 0
  %4181 = select i1 %4180, float 1.000000e+00, float 0.000000e+00
  %4182 = fmul fast float %4086, %4181
  %4183 = and i32 %3937, 1
  %4184 = icmp eq i32 %4183, 0
  br i1 %4184, label %4185, label %4189

; <label>:4185                                    ; preds = %4094
  %4186 = fsub fast float %4177, %3870
  %4187 = fsub fast float %4178, %3871
  %4188 = fsub fast float %4179, %3872
  br label %4189

; <label>:4189                                    ; preds = %4185, %4094
  %4190 = phi float [ %4186, %4185 ], [ %4177, %4094 ]
  %4191 = phi float [ %4187, %4185 ], [ %4178, %4094 ]
  %4192 = phi float [ %4188, %4185 ], [ %4179, %4094 ]
  %4193 = fmul float %4192, %4182
  %4194 = fmul float %4191, %4182
  %4195 = fmul float %4190, %4182
  %4196 = fadd fast float %4195, %3870
  %4197 = fadd fast float %4194, %3871
  %4198 = fadd fast float %4193, %3872
  %4199 = icmp ne i32 %4095, 0
  %4200 = select i1 %4199, float 1.000000e+00, float 0.000000e+00
  %4201 = fmul fast float %4086, %4200
  %4202 = fsub fast float %4140, %3877
  %4203 = fsub fast float %4141, %3878
  %4204 = fsub fast float %4142, %3879
  %4205 = fmul fast float %4202, %4201
  %4206 = fmul fast float %4203, %4201
  %4207 = fmul fast float %4204, %4201
  %4208 = fadd fast float %4205, %3877
  %4209 = fadd fast float %4206, %3878
  %4210 = fadd fast float %4207, %3879
  %4211 = fsub fast float %4113, %3876
  %4212 = fmul fast float %4211, %4201
  %4213 = fadd fast float %4212, %3876
  %4214 = fmul fast float %4201, %3863
  %4215 = fsub fast float %3863, %4214
  %4216 = fmul fast float %4201, %3862
  %4217 = fsub fast float %3862, %4216
  %4218 = bitcast float %3931 to i32
  %4219 = lshr i32 %4218, 16
  %4220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4219)  ; LegacyF16ToF32(value)
  %4221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.i32 %4221, 0
  %4223 = and i32 %4222, 1
  %4224 = icmp eq i32 %4223, 0
  br i1 %4224, label %4225, label %4250

; <label>:4225                                    ; preds = %4189
  %4226 = fadd fast float %4113, 0xBFB99999A0000000
  %4227 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4228 = fmul fast float %4227, 0x3FF1C71C80000000
  %4229 = fsub fast float 1.000000e+00, %4228
  %4230 = call float @dx.op.unary.f32(i32 7, float %4229)  ; Saturate(value)
  %4231 = fmul fast float %4230, %4140
  %4232 = fmul fast float %4230, %4141
  %4233 = fmul fast float %4230, %4142
  %4234 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4235 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4236 = call float @dx.op.unary.f32(i32 7, float %4233)  ; Saturate(value)
  %4237 = call float @dx.op.binary.f32(i32 35, float %4235, float %4236)  ; FMax(a,b)
  %4238 = call float @dx.op.binary.f32(i32 35, float %4234, float %4237)  ; FMax(a,b)
  %4239 = fcmp fast ogt float %4238, 0.000000e+00
  %4240 = bitcast float %4238 to i32
  %4241 = sub nsw i32 2129859010, %4240
  %4242 = bitcast i32 %4241 to float
  %4243 = select i1 %4239, float %4242, float 0.000000e+00
  %4244 = fmul fast float %4234, %4220
  %4245 = fmul fast float %4235, %4220
  %4246 = fmul fast float %4236, %4220
  %4247 = fmul fast float %4244, %4243
  %4248 = fmul fast float %4245, %4243
  %4249 = fmul fast float %4246, %4243
  br label %4250

; <label>:4250                                    ; preds = %4225, %4189
  %4251 = phi float [ %4220, %4189 ], [ %4247, %4225 ]
  %4252 = phi float [ %4220, %4189 ], [ %4248, %4225 ]
  %4253 = phi float [ %4220, %4189 ], [ %4249, %4225 ]
  %4254 = fsub fast float %4251, %3864
  %4255 = fsub fast float %4252, %3865
  %4256 = fsub fast float %4253, %3866
  %4257 = fmul fast float %4254, %4201
  %4258 = fmul fast float %4255, %4201
  %4259 = fmul fast float %4256, %4201
  %4260 = fadd fast float %4257, %3864
  %4261 = fadd fast float %4258, %3865
  %4262 = fadd fast float %4259, %3866
  %4263 = fadd fast float %4086, %3875
  %4264 = call float @dx.op.unary.f32(i32 7, float %4263)  ; Saturate(value)
  %4265 = fsub fast float %4133, %3874
  %4266 = fmul fast float %4265, %4182
  %4267 = fadd fast float %4266, %3874
  %4268 = fsub fast float %4119, %3873
  %4269 = fmul fast float %4268, %4182
  %4270 = fadd fast float %4269, %3873
  %4271 = call float @dx.op.dot3.f32(i32 55, float %4140, float %4141, float %4142, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4272, 0
  %4274 = extractvalue %dx.types.CBufRet.f32 %4272, 1
  %4275 = fmul fast float %4274, %4271
  %4276 = fadd fast float %4275, %4273
  %4277 = call float @dx.op.unary.f32(i32 7, float %4276)  ; Saturate(value)
  %4278 = bitcast float %3925 to i32
  %4279 = and i32 %4278, 65535
  %4280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4279)  ; LegacyF16ToF32(value)
  %4281 = lshr i32 %4278, 16
  %4282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4281)  ; LegacyF16ToF32(value)
  %4283 = fcmp fast oge float %4280, 0.000000e+00
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = select i1 %4283, float %4280, float %4285
  %4287 = fadd fast float %4286, %4282
  %4288 = fsub fast float %4277, %3861
  %4289 = fmul fast float %4288, %4086
  %4290 = fadd fast float %4289, %3861
  %4291 = fmul fast float %4287, %4086
  %4292 = call float @dx.op.binary.f32(i32 35, float %3860, float %4291)  ; FMax(a,b)
  %4293 = and i32 %3937, 16
  %4294 = icmp eq i32 %4293, 0
  br i1 %4294, label %4316, label %4295

; <label>:4295                                    ; preds = %4250
  %4296 = add i32 %3928, 0
  %4297 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4296, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4298 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4297, %dx.types.Handle %4099, float %4027, float %4030, float undef, float undef, i32 0, i32 0, i32 undef, float %4032, float %4034, float undef, float %4036, float %4038, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4299 = extractvalue %dx.types.ResRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.ResRet.f32 %4298, 1
  %4301 = extractvalue %dx.types.ResRet.f32 %4298, 2
  %4302 = and i32 %4218, 65535
  %4303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4302)  ; LegacyF16ToF32(value)
  %4304 = fmul fast float %4299, %3922
  %4305 = fmul fast float %4300, %3923
  %4306 = fmul fast float %4301, %3924
  %4307 = and i32 %3937, 16384
  %4308 = icmp ne i32 %4307, 0
  %4309 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4310 = extractvalue %dx.types.CBufRet.f32 %4309, 0
  %4311 = select i1 %4308, float %4310, float 1.000000e+00
  %4312 = fmul fast float %4311, %4303
  %4313 = fmul fast float %4304, %4312
  %4314 = fmul fast float %4305, %4312
  %4315 = fmul fast float %4306, %4312
  br label %4316

; <label>:4316                                    ; preds = %4295, %4250
  %4317 = phi float [ %4313, %4295 ], [ 0.000000e+00, %4250 ]
  %4318 = phi float [ %4314, %4295 ], [ 0.000000e+00, %4250 ]
  %4319 = phi float [ %4315, %4295 ], [ 0.000000e+00, %4250 ]
  %4320 = fsub fast float %4317, %3867
  %4321 = fsub fast float %4318, %3868
  %4322 = fsub fast float %4319, %3869
  %4323 = fmul fast float %4320, %4086
  %4324 = fmul fast float %4321, %4086
  %4325 = fmul fast float %4322, %4086
  %4326 = fadd fast float %4323, %3867
  %4327 = fadd fast float %4324, %3868
  %4328 = fadd fast float %4325, %3869
  br label %3986

; <label>:4329                                    ; preds = %3986
  br label %4330

; <label>:4330                                    ; preds = %4329, %3803
  %4331 = phi float [ 0.000000e+00, %3803 ], [ %3987, %4329 ]
  %4332 = phi float [ %3772, %3803 ], [ %3988, %4329 ]
  %4333 = phi float [ %3770, %3803 ], [ %3989, %4329 ]
  %4334 = phi float [ 0.000000e+00, %3803 ], [ %3990, %4329 ]
  %4335 = phi float [ 0.000000e+00, %3803 ], [ %3991, %4329 ]
  %4336 = phi float [ %3763, %3803 ], [ %3992, %4329 ]
  %4337 = phi float [ %3764, %3803 ], [ %3993, %4329 ]
  %4338 = phi float [ %3765, %3803 ], [ %3994, %4329 ]
  %4339 = phi float [ %3760, %3803 ], [ %3995, %4329 ]
  %4340 = phi float [ %3761, %3803 ], [ %3996, %4329 ]
  %4341 = phi float [ %3762, %3803 ], [ %3997, %4329 ]
  %4342 = phi float [ %3798, %3803 ], [ %3998, %4329 ]
  %4343 = phi float [ %3799, %3803 ], [ %3999, %4329 ]
  %4344 = phi float [ %3800, %3803 ], [ %4000, %4329 ]
  %4345 = phi float [ %3768, %3803 ], [ %4001, %4329 ]
  %4346 = phi float [ %3767, %3803 ], [ %4002, %4329 ]
  %4347 = phi float [ 0.000000e+00, %3803 ], [ %4003, %4329 ]
  %4348 = phi float [ %3766, %3803 ], [ %4004, %4329 ]
  %4349 = phi float [ %3757, %3803 ], [ %4005, %4329 ]
  %4350 = phi float [ %3758, %3803 ], [ %4006, %4329 ]
  %4351 = phi float [ %3759, %3803 ], [ %4007, %4329 ]
  %4352 = call float @dx.op.dot3.f32(i32 55, float %4342, float %4343, float %4344, float %4342, float %4343, float %4344)  ; Dot3(ax,ay,az,bx,by,bz)
  %4353 = call float @dx.op.unary.f32(i32 25, float %4352)  ; Rsqrt(value)
  %4354 = fmul fast float %4353, %4342
  %4355 = fmul fast float %4353, %4343
  %4356 = fmul fast float %4353, %4344
  %4357 = fadd fast float %4347, %931
  %4358 = call float @dx.op.unary.f32(i32 7, float %4357)  ; Saturate(value)
  %4359 = call float @dx.op.dot3.f32(i32 55, float %4354, float %4355, float %4356, float %4354, float %4355, float %4356)  ; Dot3(ax,ay,az,bx,by,bz)
  %4360 = call float @dx.op.unary.f32(i32 25, float %4359)  ; Rsqrt(value)
  %4361 = fmul fast float %4360, %4354
  %4362 = fmul fast float %4360, %4355
  %4363 = fmul fast float %4360, %4356
  br label %4364

; <label>:4364                                    ; preds = %4330, %3754
  %4365 = phi float [ %4361, %4330 ], [ %3798, %3754 ]
  %4366 = phi float [ %4362, %4330 ], [ %3799, %3754 ]
  %4367 = phi float [ %4363, %4330 ], [ %3800, %3754 ]
  %4368 = phi float [ %4339, %4330 ], [ %3760, %3754 ]
  %4369 = phi float [ %4340, %4330 ], [ %3761, %3754 ]
  %4370 = phi float [ %4341, %4330 ], [ %3762, %3754 ]
  %4371 = phi float [ %4349, %4330 ], [ %3757, %3754 ]
  %4372 = phi float [ %4350, %4330 ], [ %3758, %3754 ]
  %4373 = phi float [ %4351, %4330 ], [ %3759, %3754 ]
  %4374 = phi float [ %4336, %4330 ], [ %3763, %3754 ]
  %4375 = phi float [ %4337, %4330 ], [ %3764, %3754 ]
  %4376 = phi float [ %4338, %4330 ], [ %3765, %3754 ]
  %4377 = phi float [ %4348, %4330 ], [ %3766, %3754 ]
  %4378 = phi float [ %4358, %4330 ], [ %931, %3754 ]
  %4379 = phi float [ %4346, %4330 ], [ %3767, %3754 ]
  %4380 = phi float [ %4345, %4330 ], [ %3768, %3754 ]
  %4381 = phi float [ %4335, %4330 ], [ 0.000000e+00, %3754 ]
  %4382 = phi float [ %4334, %4330 ], [ 0.000000e+00, %3754 ]
  %4383 = phi float [ %4331, %4330 ], [ 0.000000e+00, %3754 ]
  %4384 = phi float [ %4332, %4330 ], [ %3772, %3754 ]
  %4385 = phi float [ %4333, %4330 ], [ %3770, %3754 ]
  %4386 = fadd fast float %4377, 0xBFB99999A0000000
  %4387 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4388 = fmul fast float %4387, 0x3FF1C71C80000000
  %4389 = call float @dx.op.binary.f32(i32 36, float %4377, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4390 = fsub fast float 1.000000e+00, %4388
  %4391 = call float @dx.op.unary.f32(i32 7, float %4390)  ; Saturate(value)
  %4392 = fmul fast float %4391, %4371
  %4393 = fmul fast float %4391, %4372
  %4394 = fmul fast float %4391, %4373
  %4395 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4396 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4397 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4398 = fmul fast float %4388, %4371
  %4399 = fmul fast float %4388, %4372
  %4400 = fmul fast float %4388, %4373
  %4401 = fadd fast float %4398, %4389
  %4402 = fadd fast float %4399, %4389
  %4403 = fadd fast float %4400, %4389
  %4404 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4405 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4406 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4407 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %4409 = extractvalue %dx.types.ResRet.i32 %4408, 0
  %4410 = and i32 %4409, 1
  %4411 = icmp eq i32 %4410, 0
  br i1 %4411, label %4426, label %4412

; <label>:4412                                    ; preds = %4364
  %4413 = call float @dx.op.binary.f32(i32 35, float %4396, float %4397)  ; FMax(a,b)
  %4414 = call float @dx.op.binary.f32(i32 35, float %4395, float %4413)  ; FMax(a,b)
  %4415 = fcmp fast ogt float %4414, 0.000000e+00
  %4416 = bitcast float %4414 to i32
  %4417 = sub nsw i32 2129859010, %4416
  %4418 = bitcast i32 %4417 to float
  %4419 = select i1 %4415, float %4418, float 0.000000e+00
  %4420 = fmul fast float %4395, %4374
  %4421 = fmul fast float %4396, %4375
  %4422 = fmul fast float %4397, %4376
  %4423 = fmul fast float %4420, %4419
  %4424 = fmul fast float %4421, %4419
  %4425 = fmul fast float %4422, %4419
  br label %4426

; <label>:4426                                    ; preds = %4412, %4364
  %4427 = phi float [ %4423, %4412 ], [ %4374, %4364 ]
  %4428 = phi float [ %4424, %4412 ], [ %4375, %4364 ]
  %4429 = phi float [ %4425, %4412 ], [ %4376, %4364 ]
  %4430 = fadd fast float %4395, 0xBFD51EB860000000
  %4431 = fadd fast float %4396, 0xBFD51EB860000000
  %4432 = fadd fast float %4397, 0xBFD51EB860000000
  %4433 = fmul fast float %4430, %4430
  %4434 = fmul fast float %4431, %4431
  %4435 = fmul fast float %4432, %4432
  %4436 = fmul fast float %4433, %4433
  %4437 = fmul fast float %4436, 1.000000e+02
  %4438 = fmul fast float %4434, %4434
  %4439 = fmul fast float %4438, 1.000000e+02
  %4440 = fmul fast float %4435, %4435
  %4441 = fmul fast float %4440, 1.000000e+02
  %4442 = fadd fast float %4437, 3.500000e+00
  %4443 = fadd fast float %4439, 3.500000e+00
  %4444 = fadd fast float %4441, 3.500000e+00
  %4445 = call float @dx.op.binary.f32(i32 35, float %4427, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4446 = call float @dx.op.binary.f32(i32 35, float %4428, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4447 = call float @dx.op.binary.f32(i32 35, float %4429, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4448 = fdiv fast float %4442, %4445
  %4449 = fdiv fast float %4443, %4446
  %4450 = fdiv fast float %4444, %4447
  %4451 = fmul fast float %3769, 0xBFF7154760000000
  %4452 = fmul fast float %4451, %4448
  %4453 = call float @dx.op.unary.f32(i32 21, float %4452)  ; Exp(value)
  %4454 = fmul fast float %4453, 2.500000e-01
  %4455 = fmul fast float %3769, 0xBFDEC709E0000000
  %4456 = fmul fast float %4455, %4448
  %4457 = call float @dx.op.unary.f32(i32 21, float %4456)  ; Exp(value)
  %4458 = fmul fast float %4457, 7.500000e-01
  %4459 = fmul fast float %4451, %4449
  %4460 = call float @dx.op.unary.f32(i32 21, float %4459)  ; Exp(value)
  %4461 = fmul fast float %4460, 2.500000e-01
  %4462 = fmul fast float %4455, %4449
  %4463 = call float @dx.op.unary.f32(i32 21, float %4462)  ; Exp(value)
  %4464 = fmul fast float %4463, 7.500000e-01
  %4465 = fmul fast float %4451, %4450
  %4466 = call float @dx.op.unary.f32(i32 21, float %4465)  ; Exp(value)
  %4467 = fmul fast float %4466, 2.500000e-01
  %4468 = fmul fast float %4455, %4450
  %4469 = call float @dx.op.unary.f32(i32 21, float %4468)  ; Exp(value)
  %4470 = fmul fast float %4469, 7.500000e-01
  %4471 = fadd fast float %4454, %4458
  %4472 = fadd fast float %4461, %4464
  %4473 = fadd fast float %4467, %4470
  %4474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.i32 %4474, 3
  %4476 = and i32 %4475, 8
  %4477 = icmp ne i32 %4476, 0
  %4478 = call float @dx.op.binary.f32(i32 35, float %4395, float %4371)  ; FMax(a,b)
  %4479 = call float @dx.op.binary.f32(i32 35, float %4396, float %4371)  ; FMax(a,b)
  %4480 = call float @dx.op.binary.f32(i32 35, float %4397, float %4371)  ; FMax(a,b)
  %4481 = call float @dx.op.dot3.f32(i32 55, float %4395, float %4396, float %4397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4482 = select i1 %170, float %4371, float %4395
  %4483 = select i1 %170, float %4481, float %4396
  %4484 = select i1 %170, float 1.000000e+00, float %4397
  %4485 = select i1 %4477, float %4478, float %4482
  %4486 = select i1 %4477, float %4479, float %4483
  %4487 = select i1 %4477, float %4480, float %4484
  %4488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.f32 %4488, 0
  %4490 = extractvalue %dx.types.CBufRet.f32 %4488, 1
  %4491 = extractvalue %dx.types.CBufRet.f32 %4488, 2
  %4492 = fadd fast float %4489, %128
  %4493 = fadd fast float %4490, %129
  %4494 = fadd fast float %4491, %130
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 0
  %4497 = extractvalue %dx.types.CBufRet.f32 %4495, 1
  %4498 = fsub fast float %4492, %4496
  %4499 = fsub fast float %4493, %4497
  %4500 = fmul fast float %4498, %4498
  %4501 = fmul fast float %4499, %4499
  %4502 = fadd fast float %4500, %4501
  %4503 = call float @dx.op.unary.f32(i32 24, float %4502)  ; Sqrt(value)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4495, 2
  %4505 = fcmp fast olt float %4503, %4504
  br i1 %4505, label %4506, label %4573

; <label>:4506                                    ; preds = %4426
  %4507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4508 = extractvalue %dx.types.CBufRet.f32 %4507, 0
  %4509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4510 = extractvalue %dx.types.CBufRet.f32 %4509, 0
  %4511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4512 = extractvalue %dx.types.CBufRet.f32 %4511, 0
  %4513 = extractvalue %dx.types.CBufRet.f32 %4507, 1
  %4514 = extractvalue %dx.types.CBufRet.f32 %4509, 1
  %4515 = extractvalue %dx.types.CBufRet.f32 %4511, 1
  %4516 = extractvalue %dx.types.CBufRet.f32 %4507, 3
  %4517 = extractvalue %dx.types.CBufRet.f32 %4509, 3
  %4518 = extractvalue %dx.types.CBufRet.f32 %4511, 3
  %4519 = fadd fast float %4516, %4492
  %4520 = fadd fast float %4517, %4493
  %4521 = fadd fast float %4518, %4494
  %4522 = fmul fast float %4519, %4508
  %4523 = call float @dx.op.tertiary.f32(i32 46, float %4520, float %4510, float %4522)  ; FMad(a,b,c)
  %4524 = call float @dx.op.tertiary.f32(i32 46, float %4521, float %4512, float %4523)  ; FMad(a,b,c)
  %4525 = fmul fast float %4519, %4513
  %4526 = call float @dx.op.tertiary.f32(i32 46, float %4520, float %4514, float %4525)  ; FMad(a,b,c)
  %4527 = call float @dx.op.tertiary.f32(i32 46, float %4521, float %4515, float %4526)  ; FMad(a,b,c)
  %4528 = fsub fast float %4524, %4516
  %4529 = fsub fast float %4527, %4517
  %4530 = fsub fast float %4528, %4496
  %4531 = fadd fast float %4530, %4504
  %4532 = fsub fast float %4529, %4497
  %4533 = fadd fast float %4532, %4504
  %4534 = extractvalue %dx.types.CBufRet.f32 %4495, 3
  %4535 = fmul fast float %4531, %4534
  %4536 = fmul fast float %4533, %4534
  %4537 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  %4538 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4539 = fsub fast float 1.000000e+00, %4537
  %4540 = fsub fast float 1.000000e+00, %4538
  %4541 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %29, float %4539, float %4540, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4542 = extractvalue %dx.types.ResRet.f32 %4541, 0
  %4543 = fcmp fast ugt float %4542, 0.000000e+00
  br i1 %4543, label %4544, label %4847

; <label>:4544                                    ; preds = %4506
  %4545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4546 = extractvalue %dx.types.CBufRet.f32 %4545, 2
  %4547 = fmul fast float %4546, %4542
  %4548 = extractvalue %dx.types.CBufRet.f32 %4545, 3
  %4549 = fadd fast float %4548, %4547
  %4550 = extractvalue %dx.types.CBufRet.f32 %4511, 2
  %4551 = fadd fast float %4549, %4518
  %4552 = fmul fast float %4524, %4512
  %4553 = call float @dx.op.tertiary.f32(i32 46, float %4527, float %4515, float %4552)  ; FMad(a,b,c)
  %4554 = call float @dx.op.tertiary.f32(i32 46, float %4551, float %4550, float %4553)  ; FMad(a,b,c)
  %4555 = fsub fast float %4554, %4518
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 2
  %4558 = fsub fast float %4555, %4557
  %4559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %29, float %4539, float %4540, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4561 = extractvalue %dx.types.ResRet.f32 %4559, 1
  %4562 = extractvalue %dx.types.ResRet.f32 %4559, 2
  %4563 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %29, float %4539, float %4540, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4564 = extractvalue %dx.types.ResRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.ResRet.f32 %4563, 1
  %4566 = extractvalue %dx.types.ResRet.f32 %4563, 2
  %4567 = fadd fast float %4564, %4560
  %4568 = fmul fast float %4567, 0x3F847AE140000000
  %4569 = fadd fast float %4565, %4561
  %4570 = fmul fast float %4569, 0x3F847AE140000000
  %4571 = fadd fast float %4566, %4562
  %4572 = fmul fast float %4571, 0x3F847AE140000000
  br label %4847

; <label>:4573                                    ; preds = %4426
  %4574 = and i32 %146, 1
  %4575 = icmp eq i32 %4574, 0
  br i1 %4575, label %4847, label %4576

; <label>:4576                                    ; preds = %4573
  %4577 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4578 = extractvalue %dx.types.CBufRet.f32 %4577, 0
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 0
  %4581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4582 = extractvalue %dx.types.CBufRet.f32 %4581, 0
  %4583 = extractvalue %dx.types.CBufRet.f32 %4577, 1
  %4584 = extractvalue %dx.types.CBufRet.f32 %4579, 1
  %4585 = extractvalue %dx.types.CBufRet.f32 %4581, 1
  %4586 = extractvalue %dx.types.CBufRet.f32 %4577, 3
  %4587 = extractvalue %dx.types.CBufRet.f32 %4579, 3
  %4588 = extractvalue %dx.types.CBufRet.f32 %4581, 3
  %4589 = fadd fast float %4586, %4492
  %4590 = fadd fast float %4587, %4493
  %4591 = fadd fast float %4588, %4494
  %4592 = fmul fast float %4589, %4578
  %4593 = call float @dx.op.tertiary.f32(i32 46, float %4590, float %4580, float %4592)  ; FMad(a,b,c)
  %4594 = call float @dx.op.tertiary.f32(i32 46, float %4591, float %4582, float %4593)  ; FMad(a,b,c)
  %4595 = fmul fast float %4589, %4583
  %4596 = call float @dx.op.tertiary.f32(i32 46, float %4590, float %4584, float %4595)  ; FMad(a,b,c)
  %4597 = call float @dx.op.tertiary.f32(i32 46, float %4591, float %4585, float %4596)  ; FMad(a,b,c)
  %4598 = fsub fast float %4594, %4586
  %4599 = fsub fast float %4597, %4587
  %4600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.f32 %4600, 0
  %4602 = extractvalue %dx.types.CBufRet.f32 %4600, 1
  %4603 = extractvalue %dx.types.CBufRet.f32 %4600, 2
  %4604 = extractvalue %dx.types.CBufRet.f32 %4600, 3
  %4605 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4606 = extractvalue %dx.types.CBufRet.f32 %4605, 3
  %4607 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4608 = extractvalue %dx.types.CBufRet.i32 %4607, 0
  %4609 = extractvalue %dx.types.CBufRet.i32 %4607, 1
  %4610 = udiv i32 %4609, %4608
  %4611 = fsub fast float %4598, %4601
  %4612 = fsub fast float %4599, %4602
  %4613 = call float @dx.op.binary.f32(i32 35, float %4611, float 0.000000e+00)  ; FMax(a,b)
  %4614 = call float @dx.op.binary.f32(i32 35, float %4612, float 0.000000e+00)  ; FMax(a,b)
  %4615 = call float @dx.op.binary.f32(i32 36, float %4613, float %4603)  ; FMin(a,b)
  %4616 = call float @dx.op.binary.f32(i32 36, float %4614, float %4604)  ; FMin(a,b)
  %4617 = add i32 %4608, -1
  %4618 = add i32 %4610, -1
  %4619 = fmul fast float %4615, %4606
  %4620 = fmul fast float %4616, %4606
  %4621 = fptoui float %4619 to i32
  %4622 = fptoui float %4620 to i32
  %4623 = call i32 @dx.op.binary.i32(i32 40, i32 %4621, i32 %4617)  ; UMin(a,b)
  %4624 = call i32 @dx.op.binary.i32(i32 40, i32 %4622, i32 %4618)  ; UMin(a,b)
  %4625 = mul i32 %4624, %4608
  %4626 = add i32 %4625, %4623
  %4627 = shl i32 %4626, 2
  %4628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4627, i32 undef)  ; BufferLoad(srv,index,wot)
  %4629 = extractvalue %dx.types.ResRet.i32 %4628, 0
  %4630 = icmp eq i32 %4629, -1
  br i1 %4630, label %4847, label %4631

; <label>:4631                                    ; preds = %4576
  %4632 = mul i32 %4629, 148
  %4633 = add i32 %4632, 4
  %4634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4633, i32 undef)  ; BufferLoad(srv,index,wot)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = add i32 %4632, 8
  %4637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4636, i32 undef)  ; BufferLoad(srv,index,wot)
  %4638 = extractvalue %dx.types.ResRet.f32 %4637, 0
  %4639 = add i32 %4632, 36
  %4640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4639, i32 undef)  ; BufferLoad(srv,index,wot)
  %4641 = extractvalue %dx.types.ResRet.f32 %4640, 0
  %4642 = add i32 %4632, 60
  %4643 = add i32 %4632, 92
  %4644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4643, i32 undef)  ; BufferLoad(srv,index,wot)
  %4645 = extractvalue %dx.types.ResRet.i32 %4644, 0
  %4646 = add i32 %4632, 116
  %4647 = fsub fast float %4598, %4635
  %4648 = fsub fast float %4599, %4638
  %4649 = fmul fast float %4606, %4647
  %4650 = fmul fast float %4606, %4648
  %4651 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4652 = call float @dx.op.unary.f32(i32 7, float %4650)  ; Saturate(value)
  %4653 = fsub fast float 1.000000e+00, %4652
  %4654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4655 = extractvalue %dx.types.CBufRet.f32 %4654, 2
  %4656 = call float @dx.op.unary.f32(i32 83, float %4651)  ; DerivCoarseX(value)
  %4657 = call float @dx.op.unary.f32(i32 83, float %4653)  ; DerivCoarseX(value)
  %4658 = call float @dx.op.unary.f32(i32 84, float %4651)  ; DerivCoarseY(value)
  %4659 = call float @dx.op.unary.f32(i32 84, float %4653)  ; DerivCoarseY(value)
  %4660 = fmul fast float %4656, %4655
  %4661 = fmul fast float %4657, %4655
  %4662 = fmul fast float %4658, %4655
  %4663 = fmul fast float %4659, %4655
  %4664 = call float @dx.op.dot2.f32(i32 54, float %4662, float %4663, float %4662, float %4663)  ; Dot2(ax,ay,bx,by)
  %4665 = call float @dx.op.dot2.f32(i32 54, float %4660, float %4661, float %4660, float %4661)  ; Dot2(ax,ay,bx,by)
  %4666 = call float @dx.op.binary.f32(i32 35, float %4665, float %4664)  ; FMax(a,b)
  %4667 = call float @dx.op.unary.f32(i32 23, float %4666)  ; Log(value)
  %4668 = fmul fast float %4667, 5.000000e-01
  %4669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4670 = extractvalue %dx.types.CBufRet.f32 %4669, 1
  %4671 = fadd fast float %4670, %4668
  %4672 = call float @dx.op.binary.f32(i32 35, float %4671, float 0.000000e+00)  ; FMax(a,b)
  %4673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4674 = extractvalue %dx.types.CBufRet.f32 %4673, 3
  %4675 = fadd fast float %4674, %4672
  %4676 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4677 = extractvalue %dx.types.CBufRet.f32 %4676, 3
  %4678 = fadd fast float %4675, %4677
  %4679 = add i32 %4645, 0
  %4680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4679, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4681 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4680, i32 0)  ; GetDimensions(handle,mipLevel)
  %4682 = extractvalue %dx.types.Dimensions %4681, 0
  %4683 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4682)  ; FirstbitLo(value)
  %4684 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4685 = extractvalue %dx.types.CBufRet.i32 %4684, 1
  %4686 = sub nsw i32 %4685, %4683
  %4687 = sitofp i32 %4686 to float
  %4688 = fsub fast float %4678, %4687
  %4689 = call float @dx.op.binary.f32(i32 35, float %4688, float 0.000000e+00)  ; FMax(a,b)
  %4690 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4680, %dx.types.Handle %27, float %4651, float %4653, float %4641, float undef, i32 0, i32 0, i32 undef, float %4689)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4691 = extractvalue %dx.types.ResRet.f32 %4690, 0
  %4692 = fcmp ule float %4691, 0x3FE0101020000000
  %4693 = extractvalue %dx.types.CBufRet.i32 %4684, 0
  %4694 = and i32 %4693, 128
  %4695 = icmp ne i32 %4694, 0
  %4696 = and i1 %4692, %4695
  br i1 %4696, label %4847, label %4697

; <label>:4697                                    ; preds = %4631
  %4698 = add i32 %4632, 20
  %4699 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4698, i32 undef)  ; BufferLoad(srv,index,wot)
  %4700 = extractvalue %dx.types.ResRet.f32 %4699, 0
  %4701 = add i32 %4632, 24
  %4702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4701, i32 undef)  ; BufferLoad(srv,index,wot)
  %4703 = extractvalue %dx.types.ResRet.f32 %4702, 0
  %4704 = add i32 %4632, 40
  %4705 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4704, i32 undef)  ; BufferLoad(srv,index,wot)
  %4706 = extractvalue %dx.types.ResRet.f32 %4705, 0
  %4707 = add i32 %4632, 96
  %4708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4707, i32 undef)  ; BufferLoad(srv,index,wot)
  %4709 = extractvalue %dx.types.ResRet.i32 %4708, 0
  %4710 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4711 = extractvalue %dx.types.CBufRet.f32 %4710, 2
  %4712 = fmul fast float %4711, %4651
  %4713 = fmul fast float %4711, %4653
  %4714 = extractvalue %dx.types.CBufRet.f32 %4710, 3
  %4715 = fadd fast float %4712, %4714
  %4716 = fadd fast float %4713, %4714
  %4717 = add i32 %4709, 0
  %4718 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4717, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4719 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4718, i32 0)  ; GetDimensions(handle,mipLevel)
  %4720 = extractvalue %dx.types.Dimensions %4719, 0
  %4721 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4720)  ; FirstbitLo(value)
  %4722 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4723 = extractvalue %dx.types.CBufRet.i32 %4722, 1
  %4724 = sub nsw i32 %4723, %4721
  %4725 = sitofp i32 %4724 to float
  %4726 = fsub fast float %4675, %4725
  %4727 = call float @dx.op.binary.f32(i32 35, float %4726, float 0.000000e+00)  ; FMax(a,b)
  %4728 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4718, %dx.types.Handle %27, float %4715, float %4716, float %4706, float undef, i32 0, i32 0, i32 undef, float %4727)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4729 = extractvalue %dx.types.ResRet.f32 %4728, 0
  %4730 = fmul fast float %4729, %4700
  %4731 = fadd fast float %4730, %4703
  %4732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.f32 %4732, 0
  %4734 = extractvalue %dx.types.CBufRet.f32 %4732, 1
  %4735 = extractvalue %dx.types.CBufRet.f32 %4732, 2
  %4736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4737 = extractvalue %dx.types.CBufRet.f32 %4736, 3
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 3
  %4740 = extractvalue %dx.types.CBufRet.f32 %4732, 3
  %4741 = fadd fast float %4737, %4598
  %4742 = fadd fast float %4739, %4599
  %4743 = fadd fast float %4731, %4740
  %4744 = fmul fast float %4741, %4733
  %4745 = call float @dx.op.tertiary.f32(i32 46, float %4742, float %4734, float %4744)  ; FMad(a,b,c)
  %4746 = call float @dx.op.tertiary.f32(i32 46, float %4743, float %4735, float %4745)  ; FMad(a,b,c)
  %4747 = fsub fast float %4746, %4740
  %4748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4749 = extractvalue %dx.types.CBufRet.f32 %4748, 2
  %4750 = fsub fast float %4747, %4749
  %4751 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.i32 %4751, 0
  %4753 = call i32 @dx.op.binary.i32(i32 40, i32 %4629, i32 %4752)  ; UMin(a,b)
  %4754 = mul i32 %4753, 36
  %4755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4754, i32 undef)  ; BufferLoad(srv,index,wot)
  %4756 = extractvalue %dx.types.ResRet.i32 %4755, 0
  %4757 = add i32 %4754, 4
  %4758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4759 = extractvalue %dx.types.CBufRet.f32 %4758, 0
  %4760 = fmul fast float %4759, %4651
  %4761 = fmul fast float %4759, %4653
  %4762 = extractvalue %dx.types.CBufRet.f32 %4758, 1
  %4763 = fadd fast float %4760, %4762
  %4764 = fadd fast float %4761, %4762
  %4765 = icmp eq i32 %4756, 0
  br i1 %4765, label %4834, label %4766

; <label>:4766                                    ; preds = %4697
  br label %4767

; <label>:4767                                    ; preds = %4824, %4766
  %4768 = phi float [ %4825, %4824 ], [ 0.000000e+00, %4766 ]
  %4769 = phi float [ %4826, %4824 ], [ 0.000000e+00, %4766 ]
  %4770 = phi float [ %4827, %4824 ], [ 0.000000e+00, %4766 ]
  %4771 = phi float [ %4828, %4824 ], [ 0.000000e+00, %4766 ]
  %4772 = phi float [ %4829, %4824 ], [ 0.000000e+00, %4766 ]
  %4773 = phi float [ %4830, %4824 ], [ 0.000000e+00, %4766 ]
  %4774 = phi i32 [ %4831, %4824 ], [ 0, %4766 ]
  %4775 = shl i32 %4774, 2
  %4776 = add i32 %4642, %4775
  %4777 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4776, i32 undef)  ; BufferLoad(srv,index,wot)
  %4778 = extractvalue %dx.types.ResRet.f32 %4777, 0
  %4779 = add i32 %4646, %4775
  %4780 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4779, i32 undef)  ; BufferLoad(srv,index,wot)
  %4781 = extractvalue %dx.types.ResRet.i32 %4780, 0
  %4782 = add i32 %4781, 0
  %4783 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4782, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4784 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4783, i32 0)  ; GetDimensions(handle,mipLevel)
  %4785 = extractvalue %dx.types.Dimensions %4784, 0
  %4786 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4785)  ; FirstbitLo(value)
  %4787 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4788 = extractvalue %dx.types.CBufRet.i32 %4787, 1
  %4789 = sub nsw i32 %4788, %4786
  %4790 = sitofp i32 %4789 to float
  %4791 = fsub fast float %4675, %4790
  %4792 = call float @dx.op.binary.f32(i32 35, float %4791, float 0.000000e+00)  ; FMax(a,b)
  %4793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4783, %dx.types.Handle %27, float %4763, float %4764, float %4778, float undef, i32 0, i32 0, i32 undef, float %4792)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4794 = extractvalue %dx.types.ResRet.f32 %4793, 0
  %4795 = fcmp fast ogt float %4794, 0.000000e+00
  br i1 %4795, label %4796, label %4824

; <label>:4796                                    ; preds = %4767
  %4797 = add i32 %4757, %4775
  %4798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4797, i32 undef)  ; BufferLoad(srv,index,wot)
  %4799 = extractvalue %dx.types.ResRet.i32 %4798, 0
  %4800 = and i32 %4799, 32767
  %4801 = mul nuw nsw i32 %4800, 928
  %4802 = add nuw nsw i32 %4801, 48
  %4803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4802, i32 undef)  ; BufferLoad(srv,index,wot)
  %4804 = extractvalue %dx.types.ResRet.f32 %4803, 0
  %4805 = extractvalue %dx.types.ResRet.f32 %4803, 1
  %4806 = extractvalue %dx.types.ResRet.f32 %4803, 2
  %4807 = add nuw nsw i32 %4801, 60
  %4808 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4807, i32 undef)  ; BufferLoad(srv,index,wot)
  %4809 = extractvalue %dx.types.ResRet.f32 %4808, 0
  %4810 = extractvalue %dx.types.ResRet.f32 %4808, 1
  %4811 = extractvalue %dx.types.ResRet.f32 %4808, 2
  %4812 = fmul fast float %4804, %4794
  %4813 = fmul fast float %4805, %4794
  %4814 = fmul fast float %4806, %4794
  %4815 = fadd fast float %4812, %4768
  %4816 = fadd fast float %4813, %4769
  %4817 = fadd fast float %4814, %4770
  %4818 = fmul fast float %4809, %4794
  %4819 = fmul fast float %4810, %4794
  %4820 = fmul fast float %4811, %4794
  %4821 = fadd fast float %4818, %4771
  %4822 = fadd fast float %4819, %4772
  %4823 = fadd fast float %4820, %4773
  br label %4824

; <label>:4824                                    ; preds = %4796, %4767
  %4825 = phi float [ %4815, %4796 ], [ %4768, %4767 ]
  %4826 = phi float [ %4816, %4796 ], [ %4769, %4767 ]
  %4827 = phi float [ %4817, %4796 ], [ %4770, %4767 ]
  %4828 = phi float [ %4821, %4796 ], [ %4771, %4767 ]
  %4829 = phi float [ %4822, %4796 ], [ %4772, %4767 ]
  %4830 = phi float [ %4823, %4796 ], [ %4773, %4767 ]
  %4831 = add nuw i32 %4774, 1
  %4832 = icmp eq i32 %4831, %4756
  br i1 %4832, label %4833, label %4767

; <label>:4833                                    ; preds = %4824
  br label %4834

; <label>:4834                                    ; preds = %4833, %4697
  %4835 = phi float [ 0.000000e+00, %4697 ], [ %4825, %4833 ]
  %4836 = phi float [ 0.000000e+00, %4697 ], [ %4826, %4833 ]
  %4837 = phi float [ 0.000000e+00, %4697 ], [ %4827, %4833 ]
  %4838 = phi float [ 0.000000e+00, %4697 ], [ %4828, %4833 ]
  %4839 = phi float [ 0.000000e+00, %4697 ], [ %4829, %4833 ]
  %4840 = phi float [ 0.000000e+00, %4697 ], [ %4830, %4833 ]
  %4841 = fadd fast float %4838, %4835
  %4842 = fmul fast float %4841, 0x3F847AE140000000
  %4843 = fadd fast float %4839, %4836
  %4844 = fmul fast float %4843, 0x3F847AE140000000
  %4845 = fadd fast float %4840, %4837
  %4846 = fmul fast float %4845, 0x3F847AE140000000
  br label %4847

; <label>:4847                                    ; preds = %4834, %4631, %4576, %4573, %4544, %4506
  %4848 = phi float [ %4558, %4544 ], [ -1.310720e+05, %4506 ], [ %4750, %4834 ], [ -1.310720e+05, %4576 ], [ -1.310720e+05, %4631 ], [ -1.310720e+05, %4573 ]
  %4849 = phi float [ %4568, %4544 ], [ 0.000000e+00, %4506 ], [ %4842, %4834 ], [ 0.000000e+00, %4576 ], [ 0.000000e+00, %4631 ], [ 0.000000e+00, %4573 ]
  %4850 = phi float [ %4570, %4544 ], [ 0.000000e+00, %4506 ], [ %4844, %4834 ], [ 0.000000e+00, %4576 ], [ 0.000000e+00, %4631 ], [ 0.000000e+00, %4573 ]
  %4851 = phi float [ %4572, %4544 ], [ 0.000000e+00, %4506 ], [ %4846, %4834 ], [ 0.000000e+00, %4576 ], [ 0.000000e+00, %4631 ], [ 0.000000e+00, %4573 ]
  %4852 = phi i1 [ true, %4544 ], [ false, %4506 ], [ true, %4834 ], [ false, %4576 ], [ false, %4631 ], [ false, %4573 ]
  %4853 = and i32 %146, 3
  %4854 = icmp eq i32 %4853, 1
  %4855 = select i1 %4854, float 1.000000e+00, float 0.000000e+00
  %4856 = fsub fast float %4848, %130
  %4857 = call float @dx.op.unary.f32(i32 7, float %4856)  ; Saturate(value)
  %4858 = select i1 %4852, float %4857, float 1.000000e+00
  %4859 = fmul fast float %4858, %4855
  %4860 = icmp eq i32 %4853, 3
  %4861 = select i1 %4860, float 1.000000e+00, float %4859
  %4862 = call float @dx.op.binary.f32(i32 35, float %4383, float %4861)  ; FMax(a,b)
  %4863 = call float @dx.op.unary.f32(i32 7, float %4862)  ; Saturate(value)
  %4864 = fcmp fast une float %4863, 0.000000e+00
  %4865 = call float @dx.op.dot3.f32(i32 55, float %128, float %129, float %130, float %128, float %129, float %130)  ; Dot3(ax,ay,az,bx,by,bz)
  %4866 = call float @dx.op.unary.f32(i32 25, float %4865)  ; Rsqrt(value)
  br i1 %4864, label %4874, label %4867

; <label>:4867                                    ; preds = %4847
  %4868 = fmul fast float %4866, %128
  %4869 = fmul fast float %4866, %129
  %4870 = fmul fast float %4866, %130
  %4871 = fsub fast float -0.000000e+00, %4868
  %4872 = fsub fast float -0.000000e+00, %4869
  %4873 = fsub fast float -0.000000e+00, %4870
  br label %5042

; <label>:4874                                    ; preds = %4847
  %4875 = fmul fast float %128, %4866
  %4876 = fsub fast float -0.000000e+00, %4875
  %4877 = fmul fast float %129, %4866
  %4878 = fsub fast float -0.000000e+00, %4877
  %4879 = fmul fast float %130, %4866
  %4880 = fsub fast float -0.000000e+00, %4879
  %4881 = call float @dx.op.dot3.f32(i32 55, float %4876, float %4878, float %4880, float %80, float %81, float %82)  ; Dot3(ax,ay,az,bx,by,bz)
  %4882 = fmul fast float %4863, 2.500000e+00
  %4883 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4884 = fmul fast float %4863, 0x4013FFFFE0000000
  %4885 = fadd fast float %4884, 0xBFFFFFFFE0000000
  %4886 = call float @dx.op.unary.f32(i32 7, float %4885)  ; Saturate(value)
  %4887 = fmul fast float %4863, 0x4004000020000000
  %4888 = fadd fast float %4887, 0xBFF8000040000000
  %4889 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4890 = call float @dx.op.unary.f32(i32 7, float %4883)  ; Saturate(value)
  %4891 = fmul fast float %4386, 1.000000e+01
  %4892 = call float @dx.op.unary.f32(i32 7, float %4891)  ; Saturate(value)
  %4893 = fmul fast float %4892, 2.000000e+00
  %4894 = fsub fast float 3.000000e+00, %4893
  %4895 = fmul fast float %4892, %4892
  %4896 = fmul fast float %4895, %4894
  %4897 = fsub fast float 1.000000e+00, %4896
  %4898 = fsub fast float 0x3FE3333340000000, %4407
  %4899 = fmul fast float %4898, 0x400AAAAAA0000000
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = fmul fast float %4897, %4900
  %4902 = fmul fast float %4485, 0x3FEA2B8620000000
  %4903 = fmul fast float %4486, 0x3FEA2B8620000000
  %4904 = fmul fast float %4487, 0x3FEA2B8620000000
  %4905 = fadd fast float %4902, 0x3FC81DFBA0000000
  %4906 = fmul fast float %4905, %4485
  %4907 = fadd fast float %4906, 0x3F910E6020000000
  %4908 = fadd fast float %4903, 0x3FC81DFBA0000000
  %4909 = fmul fast float %4908, %4486
  %4910 = fadd fast float %4909, 0x3F910E6020000000
  %4911 = fadd fast float %4904, 0x3FC81DFBA0000000
  %4912 = fmul fast float %4911, %4487
  %4913 = fadd fast float %4912, 0x3F910E6020000000
  %4914 = call float @dx.op.unary.f32(i32 7, float %4907)  ; Saturate(value)
  %4915 = call float @dx.op.unary.f32(i32 7, float %4910)  ; Saturate(value)
  %4916 = call float @dx.op.unary.f32(i32 7, float %4913)  ; Saturate(value)
  %4917 = fsub fast float %4914, %4485
  %4918 = fsub fast float %4915, %4486
  %4919 = fsub fast float %4916, %4487
  %4920 = fmul fast float %4917, %4890
  %4921 = fmul fast float %4920, %4901
  %4922 = fmul fast float %4918, %4890
  %4923 = fmul fast float %4922, %4901
  %4924 = fmul fast float %4919, %4890
  %4925 = fmul fast float %4924, %4901
  %4926 = fadd fast float %4921, %4485
  %4927 = fadd fast float %4923, %4486
  %4928 = fadd fast float %4925, %4487
  %4929 = fmul fast float %4380, %4380
  %4930 = fmul fast float %4929, %4929
  %4931 = fadd fast float %4886, 1.000000e+00
  %4932 = fsub fast float %4931, %4901
  %4933 = call float @dx.op.unary.f32(i32 7, float %4932)  ; Saturate(value)
  %4934 = call float @dx.op.dot3.f32(i32 55, float %80, float %81, float %82, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = fsub fast float 1.000000e+00, %4930
  %4937 = call float @dx.op.binary.f32(i32 36, float %4933, float %4936)  ; FMin(a,b)
  %4938 = call float @dx.op.unary.f32(i32 7, float %4889)  ; Saturate(value)
  %4939 = call float @dx.op.binary.f32(i32 35, float %4937, float %4938)  ; FMax(a,b)
  %4940 = fadd fast float %4935, 0xBFE4CCCCC0000000
  %4941 = fmul fast float %4940, 0x4006DB6DA0000000
  %4942 = call float @dx.op.unary.f32(i32 7, float %4941)  ; Saturate(value)
  %4943 = fmul fast float %4942, 2.000000e+00
  %4944 = fsub fast float 3.000000e+00, %4943
  %4945 = bitcast float %4404 to i32
  %4946 = ashr i32 %4945, 1
  %4947 = add nsw i32 %4946, 532487669
  %4948 = bitcast i32 %4947 to float
  %4949 = fsub fast float 1.000000e+00, %4948
  %4950 = bitcast float %4949 to i32
  %4951 = sub nsw i32 2129859010, %4950
  %4952 = bitcast i32 %4951 to float
  %4953 = fmul fast float %4952, 2.000000e+00
  %4954 = bitcast float %4405 to i32
  %4955 = ashr i32 %4954, 1
  %4956 = add nsw i32 %4955, 532487669
  %4957 = bitcast i32 %4956 to float
  %4958 = fsub fast float 1.000000e+00, %4957
  %4959 = bitcast float %4958 to i32
  %4960 = sub nsw i32 2129859010, %4959
  %4961 = bitcast i32 %4960 to float
  %4962 = fmul fast float %4961, 2.000000e+00
  %4963 = bitcast float %4406 to i32
  %4964 = ashr i32 %4963, 1
  %4965 = add nsw i32 %4964, 532487669
  %4966 = bitcast i32 %4965 to float
  %4967 = fsub fast float 1.000000e+00, %4966
  %4968 = bitcast float %4967 to i32
  %4969 = sub nsw i32 2129859010, %4968
  %4970 = bitcast i32 %4969 to float
  %4971 = fmul fast float %4970, 2.000000e+00
  %4972 = fsub fast float 0x4002A9FBE0000000, %4953
  %4973 = fadd fast float %4953, 0x3FD54FDF00000000
  %4974 = bitcast float %4973 to i32
  %4975 = sub nsw i32 2129859010, %4974
  %4976 = bitcast i32 %4975 to float
  %4977 = fmul fast float %4976, %4972
  %4978 = fmul fast float %4977, %4977
  %4979 = fsub fast float 0x4002A9FBE0000000, %4962
  %4980 = fadd fast float %4962, 0x3FD54FDF00000000
  %4981 = bitcast float %4980 to i32
  %4982 = sub nsw i32 2129859010, %4981
  %4983 = bitcast i32 %4982 to float
  %4984 = fmul fast float %4983, %4979
  %4985 = fmul fast float %4984, %4984
  %4986 = fsub fast float 0x4002A9FBE0000000, %4971
  %4987 = fadd fast float %4971, 0x3FD54FDF00000000
  %4988 = bitcast float %4987 to i32
  %4989 = sub nsw i32 2129859010, %4988
  %4990 = bitcast i32 %4989 to float
  %4991 = fmul fast float %4990, %4986
  %4992 = fmul fast float %4991, %4991
  %4993 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4978)  ; FMax(a,b)
  %4994 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4985)  ; FMax(a,b)
  %4995 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4992)  ; FMax(a,b)
  %4996 = fsub fast float 1.000000e+00, %4881
  %4997 = fadd fast float %4996, %4897
  %4998 = call float @dx.op.unary.f32(i32 7, float %4997)  ; Saturate(value)
  %4999 = fsub fast float 1.000000e+00, %4861
  %5000 = fmul fast float %4939, %4999
  %5001 = fmul fast float %4942, %4942
  %5002 = fmul fast float %5001, %5000
  %5003 = fmul fast float %5002, %4944
  %5004 = fmul fast float %4999, 0xBFE99999A0000000
  %5005 = fmul fast float %5004, %4890
  %5006 = fmul fast float %5005, %4901
  %5007 = fadd fast float %5006, 1.000000e+00
  %5008 = fadd fast float %4407, -1.000000e+00
  %5009 = fmul fast float %5007, %5008
  %5010 = fadd fast float %5009, 1.000000e+00
  %5011 = fsub fast float %4993, %4404
  %5012 = fsub fast float %4994, %4405
  %5013 = fsub fast float %4995, %4406
  %5014 = fmul fast float %5003, %5011
  %5015 = fmul fast float %5003, %5012
  %5016 = fmul fast float %5003, %5013
  %5017 = fadd fast float %5014, %4404
  %5018 = fadd fast float %5015, %4405
  %5019 = fadd fast float %5016, %4406
  %5020 = fsub fast float %80, %4365
  %5021 = fsub fast float %81, %4366
  %5022 = fsub fast float %82, %4367
  %5023 = fmul fast float %5003, %5020
  %5024 = fmul fast float %5003, %5021
  %5025 = fmul fast float %5003, %5022
  %5026 = fadd fast float %5023, %4365
  %5027 = fadd fast float %5024, %4366
  %5028 = fadd fast float %5025, %4367
  %5029 = fmul fast float %5003, %4998
  %5030 = call float @dx.op.unary.f32(i32 7, float %5010)  ; Saturate(value)
  %5031 = fsub fast float 1.000000e+00, %5030
  %5032 = fmul fast float %5029, %5031
  %5033 = fadd fast float %5032, %5030
  %5034 = fsub fast float 1.000000e+00, %4380
  %5035 = fmul fast float %5003, %5034
  %5036 = fadd fast float %5035, %4380
  %5037 = call float @dx.op.dot3.f32(i32 55, float %5026, float %5027, float %5028, float %5026, float %5027, float %5028)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = call float @dx.op.unary.f32(i32 25, float %5037)  ; Rsqrt(value)
  %5039 = fmul fast float %5026, %5038
  %5040 = fmul fast float %5027, %5038
  %5041 = fmul fast float %5028, %5038
  br label %5042

; <label>:5042                                    ; preds = %4874, %4867
  %5043 = phi float [ %4873, %4867 ], [ %4880, %4874 ]
  %5044 = phi float [ %4872, %4867 ], [ %4878, %4874 ]
  %5045 = phi float [ %4871, %4867 ], [ %4876, %4874 ]
  %5046 = phi float [ %4870, %4867 ], [ %4879, %4874 ]
  %5047 = phi float [ %4869, %4867 ], [ %4877, %4874 ]
  %5048 = phi float [ %4868, %4867 ], [ %4875, %4874 ]
  %5049 = phi float [ %4485, %4867 ], [ %4926, %4874 ]
  %5050 = phi float [ %4486, %4867 ], [ %4927, %4874 ]
  %5051 = phi float [ %4487, %4867 ], [ %4928, %4874 ]
  %5052 = phi float [ %4404, %4867 ], [ %5017, %4874 ]
  %5053 = phi float [ %4405, %4867 ], [ %5018, %4874 ]
  %5054 = phi float [ %4406, %4867 ], [ %5019, %4874 ]
  %5055 = phi float [ %4365, %4867 ], [ %5039, %4874 ]
  %5056 = phi float [ %4366, %4867 ], [ %5040, %4874 ]
  %5057 = phi float [ %4367, %4867 ], [ %5041, %4874 ]
  %5058 = phi float [ %4407, %4867 ], [ %5033, %4874 ]
  %5059 = phi float [ %4380, %4867 ], [ %5036, %4874 ]
  %5060 = select i1 %170, float 0.000000e+00, float %5054
  %5061 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5056, float %5057, float %5045, float %5044, float %5043)  ; Dot3(ax,ay,az,bx,by,bz)
  %5062 = call float @dx.op.unary.f32(i32 7, float %5061)  ; Saturate(value)
  %5063 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5047, float %5046, float %5055, float %5056, float %5057)  ; Dot3(ax,ay,az,bx,by,bz)
  %5064 = fmul fast float %5063, 2.000000e+00
  %5065 = fmul fast float %5064, %5055
  %5066 = fmul fast float %5064, %5056
  %5067 = fmul fast float %5064, %5057
  %5068 = fsub fast float %5048, %5065
  %5069 = fsub fast float %5047, %5066
  %5070 = fsub fast float %5046, %5067
  %5071 = call float @dx.op.binary.f32(i32 36, float %5059, float 1.000000e+00)  ; FMin(a,b)
  %5072 = fsub fast float 1.000000e+00, %5059
  %5073 = bitcast float %5072 to i32
  %5074 = sub nsw i32 2129859010, %5073
  %5075 = bitcast i32 %5074 to float
  %5076 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %50)  ; FMax(a,b)
  %5077 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %5078 = fcmp fast oeq float %5077, 0.000000e+00
  %5079 = fcmp fast oeq float %5076, 0.000000e+00
  %5080 = or i1 %5079, %5078
  br i1 %5080, label %5110, label %5081

; <label>:5081                                    ; preds = %5042
  %5082 = fsub fast float -0.000000e+00, %53
  %5083 = fsub fast float -0.000000e+00, %51
  %5084 = call float @dx.op.unary.f32(i32 24, float %5077)  ; Sqrt(value)
  %5085 = fdiv fast float %5084, %5076
  %5086 = fcmp fast ogt float %5085, 0x3FFB6F8900000000
  %5087 = select i1 %5086, float 0x3FFB6F8900000000, float %5085
  %5088 = fmul fast float %5087, 0x3FE8A23460000000
  %5089 = call float @dx.op.unary.f32(i32 7, float %5088)  ; Saturate(value)
  %5090 = call float @dx.op.binary.f32(i32 35, float %5087, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5091 = fmul fast float %5089, %5076
  %5092 = fmul fast float %5090, 0x3FF279A740000000
  %5093 = fadd fast float %5092, -1.000000e+00
  %5094 = call float @dx.op.dot3.f32(i32 55, float %5082, float %5083, float %52, float %5082, float %5083, float %52)  ; Dot3(ax,ay,az,bx,by,bz)
  %5095 = call float @dx.op.unary.f32(i32 25, float %5094)  ; Rsqrt(value)
  %5096 = fmul fast float %5095, %5082
  %5097 = fmul fast float %5095, %5083
  %5098 = fmul fast float %5095, %52
  %5099 = fmul fast float %5093, %5093
  %5100 = fsub fast float 1.000000e+00, %5099
  %5101 = fmul fast float %5090, 0x40005F8BE0000000
  %5102 = fsub fast float 0x400C5BF8A0000000, %5101
  %5103 = fdiv fast float %5091, %5102
  %5104 = fmul fast float %5103, 0x3FEE31C3C0000000
  %5105 = fmul fast float %5104, %5100
  %5106 = fmul fast float %5090, 0x3FDACB7480000000
  %5107 = fadd fast float %5106, 0xBFD7347680000000
  %5108 = fmul fast float %5107, %5103
  %5109 = fmul fast float %5108, %5100
  br label %5110

; <label>:5110                                    ; preds = %5081, %5042
  %5111 = phi float [ %5096, %5081 ], [ 0.000000e+00, %5042 ]
  %5112 = phi float [ %5097, %5081 ], [ 0.000000e+00, %5042 ]
  %5113 = phi float [ %5098, %5081 ], [ 0.000000e+00, %5042 ]
  %5114 = phi float [ %5105, %5081 ], [ 0.000000e+00, %5042 ]
  %5115 = phi float [ %5109, %5081 ], [ 0.000000e+00, %5042 ]
  %5116 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5112, float %5113, float %5055, float %5056, float %5057)  ; Dot3(ax,ay,az,bx,by,bz)
  %5117 = fmul fast float %5116, 0x3FDF454380000000
  %5118 = fmul fast float %5116, %5116
  %5119 = fmul fast float %5118, 0x3FEE471020000000
  %5120 = fadd fast float %5119, 0xBFD42F6020000000
  %5121 = fmul fast float %5076, 0x3FD20DD760000000
  %5122 = fmul fast float %5120, %5115
  %5123 = fadd fast float %5122, %5121
  %5124 = fmul fast float %5117, %5114
  %5125 = fadd fast float %5123, %5124
  %5126 = fsub fast float %5123, %5124
  %5127 = call float @dx.op.dot3.f32(i32 55, float %5111, float %5112, float %5113, float %5068, float %5069, float %5070)  ; Dot3(ax,ay,az,bx,by,bz)
  %5128 = fmul fast float %5127, 0x3FDF454380000000
  %5129 = fmul fast float %5127, %5127
  %5130 = fmul fast float %5129, 0x3FEE471020000000
  %5131 = fadd fast float %5130, 0xBFD42F6020000000
  %5132 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5114, float %5115, float 0x3FD20DD760000000, float %5128, float %5131)  ; Dot3(ax,ay,az,bx,by,bz)
  %5133 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %46)  ; FMax(a,b)
  %5134 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %5135 = fcmp fast oeq float %5134, 0.000000e+00
  %5136 = fcmp fast oeq float %5133, 0.000000e+00
  %5137 = or i1 %5136, %5135
  br i1 %5137, label %5167, label %5138

; <label>:5138                                    ; preds = %5110
  %5139 = fsub fast float -0.000000e+00, %49
  %5140 = fsub fast float -0.000000e+00, %47
  %5141 = call float @dx.op.unary.f32(i32 24, float %5134)  ; Sqrt(value)
  %5142 = fdiv fast float %5141, %5133
  %5143 = fcmp fast ogt float %5142, 0x3FFB6F8900000000
  %5144 = select i1 %5143, float 0x3FFB6F8900000000, float %5142
  %5145 = fmul fast float %5144, 0x3FE8A23460000000
  %5146 = call float @dx.op.unary.f32(i32 7, float %5145)  ; Saturate(value)
  %5147 = call float @dx.op.binary.f32(i32 35, float %5144, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5148 = fmul fast float %5146, %5133
  %5149 = fmul fast float %5147, 0x3FF279A740000000
  %5150 = fadd fast float %5149, -1.000000e+00
  %5151 = call float @dx.op.dot3.f32(i32 55, float %5139, float %5140, float %48, float %5139, float %5140, float %48)  ; Dot3(ax,ay,az,bx,by,bz)
  %5152 = call float @dx.op.unary.f32(i32 25, float %5151)  ; Rsqrt(value)
  %5153 = fmul fast float %5152, %5139
  %5154 = fmul fast float %5152, %5140
  %5155 = fmul fast float %5152, %48
  %5156 = fmul fast float %5150, %5150
  %5157 = fsub fast float 1.000000e+00, %5156
  %5158 = fmul fast float %5147, 0x40005F8BE0000000
  %5159 = fsub fast float 0x400C5BF8A0000000, %5158
  %5160 = fdiv fast float %5148, %5159
  %5161 = fmul fast float %5160, 0x3FEE31C3C0000000
  %5162 = fmul fast float %5161, %5157
  %5163 = fmul fast float %5147, 0x3FDACB7480000000
  %5164 = fadd fast float %5163, 0xBFD7347680000000
  %5165 = fmul fast float %5164, %5160
  %5166 = fmul fast float %5165, %5157
  br label %5167

; <label>:5167                                    ; preds = %5138, %5110
  %5168 = phi float [ %5153, %5138 ], [ 0.000000e+00, %5110 ]
  %5169 = phi float [ %5154, %5138 ], [ 0.000000e+00, %5110 ]
  %5170 = phi float [ %5155, %5138 ], [ 0.000000e+00, %5110 ]
  %5171 = phi float [ %5162, %5138 ], [ 0.000000e+00, %5110 ]
  %5172 = phi float [ %5166, %5138 ], [ 0.000000e+00, %5110 ]
  %5173 = call float @dx.op.dot3.f32(i32 55, float %5168, float %5169, float %5170, float %5055, float %5056, float %5057)  ; Dot3(ax,ay,az,bx,by,bz)
  %5174 = fmul fast float %5173, 0x3FDF454380000000
  %5175 = fmul fast float %5173, %5173
  %5176 = fmul fast float %5175, 0x3FEE471020000000
  %5177 = fadd fast float %5176, 0xBFD42F6020000000
  %5178 = fmul fast float %5133, 0x3FD20DD760000000
  %5179 = fmul fast float %5177, %5172
  %5180 = fadd fast float %5179, %5178
  %5181 = fmul fast float %5174, %5171
  %5182 = fadd fast float %5180, %5181
  %5183 = fsub fast float %5180, %5181
  %5184 = call float @dx.op.dot3.f32(i32 55, float %5168, float %5169, float %5170, float %5068, float %5069, float %5070)  ; Dot3(ax,ay,az,bx,by,bz)
  %5185 = fmul fast float %5184, 0x3FDF454380000000
  %5186 = fmul fast float %5184, %5184
  %5187 = fmul fast float %5186, 0x3FEE471020000000
  %5188 = fadd fast float %5187, 0xBFD42F6020000000
  %5189 = call float @dx.op.dot3.f32(i32 55, float %5133, float %5171, float %5172, float 0x3FD20DD760000000, float %5185, float %5188)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %42)  ; FMax(a,b)
  %5191 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %5192 = fcmp fast oeq float %5191, 0.000000e+00
  %5193 = fcmp fast oeq float %5190, 0.000000e+00
  %5194 = or i1 %5193, %5192
  br i1 %5194, label %5224, label %5195

; <label>:5195                                    ; preds = %5167
  %5196 = fsub fast float -0.000000e+00, %45
  %5197 = fsub fast float -0.000000e+00, %43
  %5198 = call float @dx.op.unary.f32(i32 24, float %5191)  ; Sqrt(value)
  %5199 = fdiv fast float %5198, %5190
  %5200 = fcmp fast ogt float %5199, 0x3FFB6F8900000000
  %5201 = select i1 %5200, float 0x3FFB6F8900000000, float %5199
  %5202 = fmul fast float %5201, 0x3FE8A23460000000
  %5203 = call float @dx.op.unary.f32(i32 7, float %5202)  ; Saturate(value)
  %5204 = call float @dx.op.binary.f32(i32 35, float %5201, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5205 = fmul fast float %5203, %5190
  %5206 = fmul fast float %5204, 0x3FF279A740000000
  %5207 = fadd fast float %5206, -1.000000e+00
  %5208 = call float @dx.op.dot3.f32(i32 55, float %5196, float %5197, float %44, float %5196, float %5197, float %44)  ; Dot3(ax,ay,az,bx,by,bz)
  %5209 = call float @dx.op.unary.f32(i32 25, float %5208)  ; Rsqrt(value)
  %5210 = fmul fast float %5209, %5196
  %5211 = fmul fast float %5209, %5197
  %5212 = fmul fast float %5209, %44
  %5213 = fmul fast float %5207, %5207
  %5214 = fsub fast float 1.000000e+00, %5213
  %5215 = fmul fast float %5204, 0x40005F8BE0000000
  %5216 = fsub fast float 0x400C5BF8A0000000, %5215
  %5217 = fdiv fast float %5205, %5216
  %5218 = fmul fast float %5217, 0x3FEE31C3C0000000
  %5219 = fmul fast float %5218, %5214
  %5220 = fmul fast float %5204, 0x3FDACB7480000000
  %5221 = fadd fast float %5220, 0xBFD7347680000000
  %5222 = fmul fast float %5221, %5217
  %5223 = fmul fast float %5222, %5214
  br label %5224

; <label>:5224                                    ; preds = %5195, %5167
  %5225 = phi float [ %5210, %5195 ], [ 0.000000e+00, %5167 ]
  %5226 = phi float [ %5211, %5195 ], [ 0.000000e+00, %5167 ]
  %5227 = phi float [ %5212, %5195 ], [ 0.000000e+00, %5167 ]
  %5228 = phi float [ %5219, %5195 ], [ 0.000000e+00, %5167 ]
  %5229 = phi float [ %5223, %5195 ], [ 0.000000e+00, %5167 ]
  %5230 = call float @dx.op.dot3.f32(i32 55, float %5225, float %5226, float %5227, float %5055, float %5056, float %5057)  ; Dot3(ax,ay,az,bx,by,bz)
  %5231 = fmul fast float %5230, 0x3FDF454380000000
  %5232 = fmul fast float %5230, %5230
  %5233 = fmul fast float %5232, 0x3FEE471020000000
  %5234 = fadd fast float %5233, 0xBFD42F6020000000
  %5235 = fmul fast float %5190, 0x3FD20DD760000000
  %5236 = fmul fast float %5234, %5229
  %5237 = fadd fast float %5236, %5235
  %5238 = fmul fast float %5231, %5228
  %5239 = fadd fast float %5237, %5238
  %5240 = fsub fast float %5237, %5238
  %5241 = call float @dx.op.dot3.f32(i32 55, float %5225, float %5226, float %5227, float %5068, float %5069, float %5070)  ; Dot3(ax,ay,az,bx,by,bz)
  %5242 = fmul fast float %5241, 0x3FDF454380000000
  %5243 = fmul fast float %5241, %5241
  %5244 = fmul fast float %5243, 0x3FEE471020000000
  %5245 = fadd fast float %5244, 0xBFD42F6020000000
  %5246 = call float @dx.op.dot3.f32(i32 55, float %5190, float %5228, float %5229, float 0x3FD20DD760000000, float %5242, float %5245)  ; Dot3(ax,ay,az,bx,by,bz)
  %5247 = call float @dx.op.binary.f32(i32 35, float %5125, float 0.000000e+00)  ; FMax(a,b)
  %5248 = call float @dx.op.binary.f32(i32 35, float %5182, float 0.000000e+00)  ; FMax(a,b)
  %5249 = call float @dx.op.binary.f32(i32 35, float %5239, float 0.000000e+00)  ; FMax(a,b)
  %5250 = call float @dx.op.binary.f32(i32 35, float %5126, float 0.000000e+00)  ; FMax(a,b)
  %5251 = call float @dx.op.binary.f32(i32 35, float %5183, float 0.000000e+00)  ; FMax(a,b)
  %5252 = call float @dx.op.binary.f32(i32 35, float %5240, float 0.000000e+00)  ; FMax(a,b)
  %5253 = call float @dx.op.binary.f32(i32 35, float %5132, float 0.000000e+00)  ; FMax(a,b)
  %5254 = call float @dx.op.binary.f32(i32 35, float %5189, float 0.000000e+00)  ; FMax(a,b)
  %5255 = call float @dx.op.binary.f32(i32 35, float %5246, float 0.000000e+00)  ; FMax(a,b)
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 0
  %5258 = call float @dx.op.binary.f32(i32 36, float %5049, float %5257)  ; FMin(a,b)
  %5259 = fsub fast float 1.000000e+00, %5071
  %5260 = fmul fast float %5258, %5259
  %5261 = fsub fast float 1.000000e+00, %5260
  %5262 = bitcast float %5261 to i32
  %5263 = sub nsw i32 2129859010, %5262
  %5264 = bitcast i32 %5263 to float
  %5265 = call float @dx.op.binary.f32(i32 36, float %5050, float %5257)  ; FMin(a,b)
  %5266 = fmul fast float %5265, %5259
  %5267 = fsub fast float 1.000000e+00, %5266
  %5268 = bitcast float %5267 to i32
  %5269 = sub nsw i32 2129859010, %5268
  %5270 = bitcast i32 %5269 to float
  %5271 = call float @dx.op.binary.f32(i32 36, float %5051, float %5257)  ; FMin(a,b)
  %5272 = fmul fast float %5271, %5259
  %5273 = fsub fast float 1.000000e+00, %5272
  %5274 = bitcast float %5273 to i32
  %5275 = sub nsw i32 2129859010, %5274
  %5276 = bitcast i32 %5275 to float
  %5277 = fmul fast float %5247, %5071
  %5278 = fmul fast float %5277, %5264
  %5279 = fmul fast float %5248, %5071
  %5280 = fmul fast float %5279, %5270
  %5281 = fmul fast float %5249, %5071
  %5282 = fmul fast float %5281, %5276
  %5283 = call float @dx.op.binary.f32(i32 36, float %5052, float %5257)  ; FMin(a,b)
  %5284 = fmul fast float %5283, %5259
  %5285 = fsub fast float 1.000000e+00, %5284
  %5286 = bitcast float %5285 to i32
  %5287 = sub nsw i32 2129859010, %5286
  %5288 = bitcast i32 %5287 to float
  %5289 = call float @dx.op.binary.f32(i32 36, float %5053, float %5257)  ; FMin(a,b)
  %5290 = fmul fast float %5289, %5259
  %5291 = fsub fast float 1.000000e+00, %5290
  %5292 = bitcast float %5291 to i32
  %5293 = sub nsw i32 2129859010, %5292
  %5294 = bitcast i32 %5293 to float
  %5295 = call float @dx.op.binary.f32(i32 36, float %5060, float %5257)  ; FMin(a,b)
  %5296 = fmul fast float %5295, %5259
  %5297 = fsub fast float 1.000000e+00, %5296
  %5298 = bitcast float %5297 to i32
  %5299 = sub nsw i32 2129859010, %5298
  %5300 = bitcast i32 %5299 to float
  %5301 = fmul fast float %5253, %5071
  %5302 = fmul fast float %5301, %5288
  %5303 = fmul fast float %5254, %5071
  %5304 = fmul fast float %5303, %5294
  %5305 = fmul fast float %5255, %5071
  %5306 = fmul fast float %5305, %5300
  %5307 = call float @dx.op.dot3.f32(i32 55, float %5278, float %5280, float %5282, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = select i1 %170, float 0.000000e+00, float %5278
  %5309 = select i1 %170, float %5307, float %5280
  %5310 = select i1 %170, float 0.000000e+00, float %5282
  %5311 = call float @dx.op.dot3.f32(i32 55, float %5250, float %5251, float %5252, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5312 = select i1 %170, float 0.000000e+00, float %5250
  %5313 = select i1 %170, float %5311, float %5251
  %5314 = select i1 %170, float 0.000000e+00, float %5252
  %5315 = call float @dx.op.dot3.f32(i32 55, float %5302, float %5304, float %5306, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5316 = select i1 %170, float 0.000000e+00, float %5302
  %5317 = select i1 %170, float %5315, float %5304
  %5318 = select i1 %170, float 0.000000e+00, float %5306
  %5319 = fmul fast float %5062, 9.843750e-01
  %5320 = fmul fast float %5058, 9.843750e-01
  %5321 = fadd fast float %5319, 7.812500e-03
  %5322 = fadd fast float %5320, 7.812500e-03
  %5323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5321, float %5322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5324 = extractvalue %dx.types.ResRet.f32 %5323, 2
  %5325 = extractvalue %dx.types.ResRet.f32 %5323, 3
  %5326 = fmul fast float %5324, %5052
  %5327 = fmul fast float %5324, %5053
  %5328 = fmul fast float %5324, %5060
  %5329 = fadd fast float %5326, %5325
  %5330 = fadd fast float %5327, %5325
  %5331 = fadd fast float %5328, %5325
  %5332 = fcmp fast ogt float %4381, 0.000000e+00
  br i1 %5332, label %5333, label %5359

; <label>:5333                                    ; preds = %5224
  %5334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4381, float %5062, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5335 = extractvalue %dx.types.ResRet.f32 %5334, 0
  %5336 = extractvalue %dx.types.ResRet.f32 %5334, 1
  %5337 = extractvalue %dx.types.ResRet.f32 %5334, 2
  %5338 = fadd fast float %5335, -5.000000e-01
  %5339 = fadd fast float %5336, -5.000000e-01
  %5340 = fadd fast float %5337, -5.000000e-01
  %5341 = fsub fast float 1.000000e+00, %5052
  %5342 = fsub fast float 1.000000e+00, %5053
  %5343 = fsub fast float 1.000000e+00, %5060
  %5344 = fmul fast float %5052, 4.000000e+00
  %5345 = fmul fast float %5344, %5341
  %5346 = fmul fast float %5345, %5338
  %5347 = fmul fast float %5053, 4.000000e+00
  %5348 = fmul fast float %5347, %5342
  %5349 = fmul fast float %5348, %5339
  %5350 = fmul fast float %5060, 4.000000e+00
  %5351 = fmul fast float %5350, %5343
  %5352 = fmul fast float %5351, %5340
  %5353 = fadd fast float %5346, %5329
  %5354 = fadd fast float %5349, %5330
  %5355 = fadd fast float %5352, %5331
  %5356 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5357 = call float @dx.op.unary.f32(i32 7, float %5354)  ; Saturate(value)
  %5358 = call float @dx.op.unary.f32(i32 7, float %5355)  ; Saturate(value)
  br label %5359

; <label>:5359                                    ; preds = %5333, %5224
  %5360 = phi float [ %5356, %5333 ], [ %5329, %5224 ]
  %5361 = phi float [ %5357, %5333 ], [ %5330, %5224 ]
  %5362 = phi float [ %5358, %5333 ], [ %5331, %5224 ]
  %5363 = call float @dx.op.binary.f32(i32 35, float %5361, float %5362)  ; FMax(a,b)
  %5364 = call float @dx.op.binary.f32(i32 35, float %5360, float %5363)  ; FMax(a,b)
  %5365 = fsub fast float 1.000000e+00, %5364
  %5366 = call float @dx.op.dot3.f32(i32 55, float %5049, float %5050, float %5051, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5367 = fcmp fast ogt float %5366, 0x3E7FF19E20000000
  %5368 = fdiv fast float 1.000000e+00, %5366
  %5369 = select i1 %5367, float %5368, float 0.000000e+00
  %5370 = fmul fast float %5369, %5049
  %5371 = fmul fast float %5369, %5050
  %5372 = fmul fast float %5369, %5051
  %5373 = fadd fast float %5370, -1.000000e+00
  %5374 = fadd fast float %5371, -1.000000e+00
  %5375 = fadd fast float %5372, -1.000000e+00
  %5376 = fmul fast float %5373, 5.000000e-01
  %5377 = fmul fast float %5374, 5.000000e-01
  %5378 = fmul fast float %5375, 5.000000e-01
  %5379 = fadd fast float %5376, 1.000000e+00
  %5380 = fadd fast float %5377, 1.000000e+00
  %5381 = fadd fast float %5378, 1.000000e+00
  %5382 = fmul fast float %5360, %5316
  %5383 = fmul fast float %5361, %5317
  %5384 = fmul fast float %5362, %5318
  %5385 = fsub fast float 1.000000e+00, %5062
  %5386 = bitcast float %5385 to i32
  %5387 = sitofp i32 %5386 to float
  %5388 = fmul fast float %5387, 5.000000e+00
  %5389 = fadd fast float %5388, 0xC1EFBF8940000000
  %5390 = fptosi float %5389 to i32
  %5391 = bitcast i32 %5390 to float
  %5392 = fmul fast float %5391, %4382
  %5393 = fmul fast float %5308, %5392
  %5394 = fmul fast float %5393, %5365
  %5395 = fmul fast float %5394, %5379
  %5396 = fmul fast float %5309, %5392
  %5397 = fmul fast float %5396, %5365
  %5398 = fmul fast float %5397, %5380
  %5399 = fmul fast float %5310, %5392
  %5400 = fmul fast float %5399, %5365
  %5401 = fmul fast float %5400, %5381
  %5402 = fadd fast float %5382, %4368
  %5403 = fadd fast float %5402, %5395
  %5404 = fmul fast float %5403, %4378
  %5405 = fadd fast float %5383, %4369
  %5406 = fadd fast float %5405, %5398
  %5407 = fmul fast float %5406, %4378
  %5408 = fadd fast float %5384, %4370
  %5409 = fadd fast float %5408, %5401
  %5410 = fmul fast float %5409, %4378
  %5411 = fmul fast float %5365, %5310
  %5412 = fmul fast float %5365, %5309
  %5413 = fmul fast float %5365, %5308
  %5414 = fmul fast float %5365, %4473
  %5415 = fadd fast float %5414, -1.000000e+00
  %5416 = fmul fast float %5415, %4378
  %5417 = fadd fast float %5416, 1.000000e+00
  %5418 = fmul fast float %5365, %4472
  %5419 = fadd fast float %5418, -1.000000e+00
  %5420 = fmul fast float %5419, %4378
  %5421 = fadd fast float %5420, 1.000000e+00
  %5422 = fmul fast float %5365, %4471
  %5423 = fadd fast float %5422, -1.000000e+00
  %5424 = fmul fast float %5423, %4378
  %5425 = fadd fast float %5424, 1.000000e+00
  %5426 = fmul fast float %5425, %5312
  %5427 = fmul fast float %5421, %5313
  %5428 = fmul fast float %5417, %5314
  %5429 = fadd fast float %5426, %5413
  %5430 = fmul fast float %5429, %4378
  %5431 = fadd fast float %5427, %5412
  %5432 = fmul fast float %5431, %4378
  %5433 = fadd fast float %5428, %5411
  %5434 = fmul fast float %5433, %4378
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 3
  %5437 = fcmp fast oeq float %5436, 0.000000e+00
  br i1 %5437, label %5719, label %5438

; <label>:5438                                    ; preds = %5359
  %5439 = extractvalue %dx.types.CBufRet.f32 %5435, 0
  %5440 = extractvalue %dx.types.CBufRet.f32 %5435, 1
  %5441 = extractvalue %dx.types.CBufRet.f32 %5435, 2
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5444 = extractvalue %dx.types.CBufRet.f32 %5442, 1
  %5445 = extractvalue %dx.types.CBufRet.f32 %5442, 2
  %5446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = extractvalue %dx.types.CBufRet.f32 %5446, 0
  %5448 = extractvalue %dx.types.CBufRet.f32 %5446, 1
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5443, float %5444, float %5445, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = select i1 %170, float %5447, float %5443
  %5451 = select i1 %170, float %5449, float %5444
  %5452 = select i1 %170, float %5448, float %5445
  %5453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5454 = extractvalue %dx.types.CBufRet.f32 %5453, 1
  %5455 = fcmp fast une float %5454, 0.000000e+00
  br i1 %5455, label %5456, label %5473

; <label>:5456                                    ; preds = %5438
  %5457 = fptoui float %73 to i32
  %5458 = fptoui float %74 to i32
  %5459 = lshr i32 %5457, 4
  %5460 = lshr i32 %5458, 4
  %5461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5462 = extractvalue %dx.types.CBufRet.f32 %5461, 0
  %5463 = fptoui float %5462 to i32
  %5464 = add i32 %5463, 15
  %5465 = lshr i32 %5464, 4
  %5466 = mul i32 %5465, %5460
  %5467 = add i32 %5466, %5459
  %5468 = shl i32 %5467, 3
  %5469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5468, i32 undef)  ; BufferLoad(srv,index,wot)
  %5470 = extractvalue %dx.types.ResRet.i32 %5469, 0
  %5471 = and i32 %5470, -268435456
  %5472 = icmp eq i32 %5471, -1342177280
  br i1 %5472, label %5483, label %5473

; <label>:5473                                    ; preds = %5456, %5438
  %5474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %31, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5475 = extractvalue %dx.types.CBufRet.f32 %5474, 2
  %5476 = extractvalue %dx.types.CBufRet.f32 %5474, 3
  %5477 = fmul fast float %5475, %73
  %5478 = fmul fast float %5476, %74
  %5479 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %30, float %5477, float %5478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5480 = extractvalue %dx.types.ResRet.f32 %5479, 0
  %5481 = extractvalue %dx.types.ResRet.f32 %5479, 1
  %5482 = extractvalue %dx.types.ResRet.f32 %5479, 2
  br label %5483

; <label>:5483                                    ; preds = %5473, %5456
  %5484 = phi float [ %5480, %5473 ], [ 0.000000e+00, %5456 ]
  %5485 = phi float [ %5481, %5473 ], [ 0.000000e+00, %5456 ]
  %5486 = phi float [ %5482, %5473 ], [ 0.000000e+00, %5456 ]
  %5487 = call float @dx.op.binary.f32(i32 36, float %5485, float %5486)  ; FMin(a,b)
  %5488 = call float @dx.op.binary.f32(i32 36, float %5484, float %5487)  ; FMin(a,b)
  %5489 = fcmp fast ogt float %5488, 0.000000e+00
  br i1 %5489, label %5490, label %5719, !dx.controlflow.hints !73

; <label>:5490                                    ; preds = %5483
  %5491 = fmul fast float %5484, %5450
  %5492 = fmul fast float %5485, %5451
  %5493 = fmul fast float %5486, %5452
  %5494 = fsub fast float %5439, %5048
  %5495 = fsub fast float %5440, %5047
  %5496 = fsub fast float %5441, %5046
  %5497 = call float @dx.op.dot3.f32(i32 55, float %5494, float %5495, float %5496, float %5494, float %5495, float %5496)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = call float @dx.op.unary.f32(i32 25, float %5497)  ; Rsqrt(value)
  %5499 = fmul fast float %5498, %5494
  %5500 = fmul fast float %5498, %5495
  %5501 = fmul fast float %5498, %5496
  %5502 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5441, float %5055, float %5056, float %5057)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = call float @dx.op.dot3.f32(i32 55, float %5045, float %5044, float %5043, float %5499, float %5500, float %5501)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = call float @dx.op.unary.f32(i32 7, float %5502)  ; Saturate(value)
  %5505 = fmul fast float %5504, %5504
  %5506 = fmul fast float %5505, %5075
  %5507 = call float @dx.op.unary.f32(i32 7, float %5506)  ; Saturate(value)
  %5508 = fmul fast float %5507, %5504
  %5509 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5056, float %5057, float %5499, float %5500, float %5501)  ; Dot3(ax,ay,az,bx,by,bz)
  %5510 = fmul fast float %5509, %5509
  %5511 = call float @dx.op.unary.f32(i32 6, float %5502)  ; FAbs(value)
  %5512 = fsub fast float 1.000000e+00, %5058
  %5513 = call float @dx.op.binary.f32(i32 35, float %5512, float 0x3F847AE140000000)  ; FMax(a,b)
  %5514 = fmul fast float %5513, %5513
  %5515 = fmul fast float %5514, %5514
  %5516 = fsub fast float 1.000000e+00, %5515
  %5517 = fmul fast float %5062, %5062
  %5518 = fmul fast float %5517, %5516
  %5519 = fadd fast float %5518, %5515
  %5520 = bitcast float %5519 to i32
  %5521 = ashr i32 %5520, 1
  %5522 = add nsw i32 %5521, 532487669
  %5523 = bitcast i32 %5522 to float
  %5524 = fadd fast float %5523, %5062
  %5525 = fmul fast float %5515, %5510
  %5526 = fsub fast float 1.000000e+00, %5510
  %5527 = fadd fast float %5526, %5525
  %5528 = fmul fast float %5511, %5511
  %5529 = fmul fast float %5528, %5516
  %5530 = fadd fast float %5529, %5515
  %5531 = bitcast float %5530 to i32
  %5532 = ashr i32 %5531, 1
  %5533 = add nsw i32 %5532, 532487669
  %5534 = bitcast i32 %5533 to float
  %5535 = fadd fast float %5534, %5511
  %5536 = fmul fast float %5527, %5527
  %5537 = fmul fast float %5536, %5524
  %5538 = fmul fast float %5537, %5535
  %5539 = fdiv fast float 0x3FF0A00000000000, %5538
  %5540 = fmul fast float %5539, %5515
  %5541 = call float @dx.op.unary.f32(i32 6, float %5503)  ; FAbs(value)
  %5542 = fsub fast float 1.000000e+00, %5541
  %5543 = bitcast float %5542 to i32
  %5544 = sitofp i32 %5543 to float
  %5545 = fmul fast float %5544, 5.000000e+00
  %5546 = fadd fast float %5545, 0xC1EFBF8940000000
  %5547 = fptosi float %5546 to i32
  %5548 = bitcast i32 %5547 to float
  %5549 = fsub fast float 1.000000e+00, %5052
  %5550 = fsub fast float 1.000000e+00, %5053
  %5551 = fsub fast float 1.000000e+00, %5060
  %5552 = fmul fast float %5548, %5549
  %5553 = fmul fast float %5548, %5550
  %5554 = fmul fast float %5548, %5551
  %5555 = fadd fast float %5552, %5052
  %5556 = fadd fast float %5553, %5053
  %5557 = fadd fast float %5554, %5060
  br i1 %5332, label %5558, label %5581

; <label>:5558                                    ; preds = %5490
  %5559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4381, float %5541, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5560 = extractvalue %dx.types.ResRet.f32 %5559, 0
  %5561 = extractvalue %dx.types.ResRet.f32 %5559, 1
  %5562 = extractvalue %dx.types.ResRet.f32 %5559, 2
  %5563 = fadd fast float %5560, -5.000000e-01
  %5564 = fadd fast float %5561, -5.000000e-01
  %5565 = fadd fast float %5562, -5.000000e-01
  %5566 = fmul fast float %5052, 4.000000e+00
  %5567 = fmul fast float %5566, %5549
  %5568 = fmul fast float %5567, %5563
  %5569 = fmul fast float %5053, 4.000000e+00
  %5570 = fmul fast float %5569, %5550
  %5571 = fmul fast float %5570, %5564
  %5572 = fmul fast float %5060, 4.000000e+00
  %5573 = fmul fast float %5572, %5551
  %5574 = fmul fast float %5573, %5565
  %5575 = fadd fast float %5568, %5555
  %5576 = fadd fast float %5571, %5556
  %5577 = fadd fast float %5574, %5557
  %5578 = call float @dx.op.unary.f32(i32 7, float %5575)  ; Saturate(value)
  %5579 = call float @dx.op.unary.f32(i32 7, float %5576)  ; Saturate(value)
  %5580 = call float @dx.op.unary.f32(i32 7, float %5577)  ; Saturate(value)
  br label %5581

; <label>:5581                                    ; preds = %5558, %5490
  %5582 = phi float [ %5578, %5558 ], [ %5555, %5490 ]
  %5583 = phi float [ %5579, %5558 ], [ %5556, %5490 ]
  %5584 = phi float [ %5580, %5558 ], [ %5557, %5490 ]
  %5585 = fmul fast float %5502, 9.843750e-01
  %5586 = fadd fast float %5585, 7.812500e-03
  %5587 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5586, float %5322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5588 = extractvalue %dx.types.ResRet.f32 %5587, 2
  %5589 = extractvalue %dx.types.ResRet.f32 %5587, 3
  %5590 = fmul fast float %5588, %5052
  %5591 = fmul fast float %5588, %5053
  %5592 = fmul fast float %5588, %5060
  %5593 = fadd fast float %5590, %5589
  %5594 = fadd fast float %5591, %5589
  %5595 = fadd fast float %5592, %5589
  br i1 %5332, label %5596, label %5619

; <label>:5596                                    ; preds = %5581
  %5597 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4381, float %5502, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5598 = extractvalue %dx.types.ResRet.f32 %5597, 0
  %5599 = extractvalue %dx.types.ResRet.f32 %5597, 1
  %5600 = extractvalue %dx.types.ResRet.f32 %5597, 2
  %5601 = fadd fast float %5598, -5.000000e-01
  %5602 = fadd fast float %5599, -5.000000e-01
  %5603 = fadd fast float %5600, -5.000000e-01
  %5604 = fmul fast float %5052, 4.000000e+00
  %5605 = fmul fast float %5604, %5549
  %5606 = fmul fast float %5605, %5601
  %5607 = fmul fast float %5053, 4.000000e+00
  %5608 = fmul fast float %5607, %5550
  %5609 = fmul fast float %5608, %5602
  %5610 = fmul fast float %5060, 4.000000e+00
  %5611 = fmul fast float %5610, %5551
  %5612 = fmul fast float %5611, %5603
  %5613 = fadd fast float %5606, %5593
  %5614 = fadd fast float %5609, %5594
  %5615 = fadd fast float %5612, %5595
  %5616 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5617 = call float @dx.op.unary.f32(i32 7, float %5614)  ; Saturate(value)
  %5618 = call float @dx.op.unary.f32(i32 7, float %5615)  ; Saturate(value)
  br label %5619

; <label>:5619                                    ; preds = %5596, %5581
  %5620 = phi float [ %5616, %5596 ], [ %5593, %5581 ]
  %5621 = phi float [ %5617, %5596 ], [ %5594, %5581 ]
  %5622 = phi float [ %5618, %5596 ], [ %5595, %5581 ]
  %5623 = call float @dx.op.binary.f32(i32 35, float %5621, float %5622)  ; FMax(a,b)
  %5624 = call float @dx.op.binary.f32(i32 35, float %5620, float %5623)  ; FMax(a,b)
  %5625 = fsub fast float 1.000000e+00, %5624
  %5626 = fsub fast float -0.000000e+00, %5055
  %5627 = fsub fast float -0.000000e+00, %5056
  %5628 = fsub fast float -0.000000e+00, %5057
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5439, float %5440, float %5441, float %5626, float %5627, float %5628)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = call float @dx.op.unary.f32(i32 7, float %5629)  ; Saturate(value)
  %5631 = fmul fast float %5630, 9.843750e-01
  %5632 = fadd fast float %5631, 7.812500e-03
  %5633 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %5632, float %5322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5634 = extractvalue %dx.types.ResRet.f32 %5633, 2
  %5635 = extractvalue %dx.types.ResRet.f32 %5633, 3
  %5636 = fmul fast float %5634, %5052
  %5637 = fmul fast float %5634, %5053
  %5638 = fmul fast float %5634, %5060
  %5639 = fadd fast float %5636, %5635
  %5640 = fadd fast float %5637, %5635
  %5641 = fadd fast float %5638, %5635
  br i1 %5332, label %5642, label %5665

; <label>:5642                                    ; preds = %5619
  %5643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4381, float %5630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5644 = extractvalue %dx.types.ResRet.f32 %5643, 0
  %5645 = extractvalue %dx.types.ResRet.f32 %5643, 1
  %5646 = extractvalue %dx.types.ResRet.f32 %5643, 2
  %5647 = fadd fast float %5644, -5.000000e-01
  %5648 = fadd fast float %5645, -5.000000e-01
  %5649 = fadd fast float %5646, -5.000000e-01
  %5650 = fmul fast float %5052, 4.000000e+00
  %5651 = fmul fast float %5650, %5549
  %5652 = fmul fast float %5651, %5647
  %5653 = fmul fast float %5053, 4.000000e+00
  %5654 = fmul fast float %5653, %5550
  %5655 = fmul fast float %5654, %5648
  %5656 = fmul fast float %5060, 4.000000e+00
  %5657 = fmul fast float %5656, %5551
  %5658 = fmul fast float %5657, %5649
  %5659 = fadd fast float %5652, %5639
  %5660 = fadd fast float %5655, %5640
  %5661 = fadd fast float %5658, %5641
  %5662 = call float @dx.op.unary.f32(i32 7, float %5659)  ; Saturate(value)
  %5663 = call float @dx.op.unary.f32(i32 7, float %5660)  ; Saturate(value)
  %5664 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  br label %5665

; <label>:5665                                    ; preds = %5642, %5619
  %5666 = phi float [ %5662, %5642 ], [ %5639, %5619 ]
  %5667 = phi float [ %5663, %5642 ], [ %5640, %5619 ]
  %5668 = phi float [ %5664, %5642 ], [ %5641, %5619 ]
  %5669 = call float @dx.op.binary.f32(i32 35, float %5667, float %5668)  ; FMax(a,b)
  %5670 = call float @dx.op.binary.f32(i32 35, float %5666, float %5669)  ; FMax(a,b)
  %5671 = fsub fast float 1.000000e+00, %5670
  %5672 = fmul fast float %5671, %5630
  %5673 = fmul fast float %5672, %4471
  %5674 = fmul fast float %5672, %4472
  %5675 = fmul fast float %5672, %4473
  %5676 = fmul fast float %5582, %5540
  %5677 = fmul fast float %5583, %5540
  %5678 = fmul fast float %5584, %5540
  %5679 = fsub fast float 1.000000e+00, %5503
  %5680 = bitcast float %5679 to i32
  %5681 = sitofp i32 %5680 to float
  %5682 = fmul fast float %5681, 5.000000e+00
  %5683 = fadd fast float %5682, 0xC1EFBF8940000000
  %5684 = fptosi float %5683 to i32
  %5685 = bitcast i32 %5684 to float
  %5686 = fmul fast float %5685, %4382
  %5687 = fmul fast float %5625, %5686
  %5688 = fmul fast float %5687, %5379
  %5689 = fmul fast float %5687, %5380
  %5690 = fmul fast float %5687, %5381
  %5691 = fmul fast float %5625, %5508
  %5692 = fadd fast float %5688, %5676
  %5693 = fadd fast float %5689, %5677
  %5694 = fadd fast float %5690, %5678
  %5695 = fadd fast float %5673, %5691
  %5696 = fadd fast float %5674, %5691
  %5697 = fadd fast float %5675, %5691
  %5698 = fmul fast float %5695, %5491
  %5699 = fmul fast float %5696, %5492
  %5700 = fmul fast float %5697, %5493
  %5701 = fmul fast float %5508, %5491
  %5702 = fmul fast float %5701, %5692
  %5703 = fmul fast float %5508, %5492
  %5704 = fmul fast float %5703, %5693
  %5705 = fmul fast float %5508, %5493
  %5706 = fmul fast float %5705, %5694
  %5707 = fadd fast float %5698, %5429
  %5708 = fmul fast float %5707, %4378
  %5709 = fadd fast float %5699, %5431
  %5710 = fmul fast float %5709, %4378
  %5711 = fadd fast float %5700, %5433
  %5712 = fmul fast float %5711, %4378
  %5713 = fadd fast float %5702, %5403
  %5714 = fmul fast float %5713, %4378
  %5715 = fadd fast float %5704, %5406
  %5716 = fmul fast float %5715, %4378
  %5717 = fadd fast float %5706, %5409
  %5718 = fmul fast float %5717, %4378
  br label %5719

; <label>:5719                                    ; preds = %5665, %5483, %5359
  %5720 = phi float [ %5404, %5359 ], [ %5404, %5483 ], [ %5714, %5665 ]
  %5721 = phi float [ %5407, %5359 ], [ %5407, %5483 ], [ %5716, %5665 ]
  %5722 = phi float [ %5410, %5359 ], [ %5410, %5483 ], [ %5718, %5665 ]
  %5723 = phi float [ %5430, %5359 ], [ %5430, %5483 ], [ %5708, %5665 ]
  %5724 = phi float [ %5432, %5359 ], [ %5432, %5483 ], [ %5710, %5665 ]
  %5725 = phi float [ %5434, %5359 ], [ %5434, %5483 ], [ %5712, %5665 ]
  %5726 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5727 = extractvalue %dx.types.CBufRet.i32 %5726, 0
  %5728 = icmp eq i32 %5727, 0
  br i1 %5728, label %6218, label %5729

; <label>:5729                                    ; preds = %5719
  %5730 = fptoui float %73 to i32
  %5731 = fptoui float %74 to i32
  %5732 = lshr i32 %5730, 4
  %5733 = lshr i32 %5731, 4
  %5734 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5735 = extractvalue %dx.types.CBufRet.i32 %5734, 0
  %5736 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5733, i32 %5735, i32 %5732)  ; UMad(a,b,c)
  %5737 = add nsw i32 %5727, -1
  %5738 = call i32 @dx.op.binary.i32(i32 37, i32 %5737, i32 0)  ; IMax(a,b)
  %5739 = call float @dx.op.binary.f32(i32 35, float %68, float 0.000000e+00)  ; FMax(a,b)
  %5740 = fptoui float %5739 to i32
  %5741 = lshr i32 %5740, 5
  %5742 = call i32 @dx.op.binary.i32(i32 40, i32 %5741, i32 8191)  ; UMin(a,b)
  %5743 = shl i32 %5742, 2
  %5744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5743, i32 undef)  ; BufferLoad(srv,index,wot)
  %5745 = extractvalue %dx.types.ResRet.i32 %5744, 0
  %5746 = lshr i32 %5745, 16
  %5747 = and i32 %5745, 65535
  %5748 = lshr i32 %5745, 21
  %5749 = lshr i32 %5747, 5
  %5750 = call i32 @dx.op.binary.i32(i32 40, i32 %5749, i32 %5738)  ; UMin(a,b)
  %5751 = icmp ugt i32 %5748, %5750
  br i1 %5751, label %6218, label %5752

; <label>:5752                                    ; preds = %5729
  br label %5753

; <label>:5753                                    ; preds = %6208, %5752
  %5754 = phi i32 [ %6215, %6208 ], [ %5748, %5752 ]
  %5755 = phi float [ %6209, %6208 ], [ %5720, %5752 ]
  %5756 = phi float [ %6210, %6208 ], [ %5721, %5752 ]
  %5757 = phi float [ %6211, %6208 ], [ %5722, %5752 ]
  %5758 = phi float [ %6212, %6208 ], [ %5723, %5752 ]
  %5759 = phi float [ %6213, %6208 ], [ %5724, %5752 ]
  %5760 = phi float [ %6214, %6208 ], [ %5725, %5752 ]
  %5761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %32, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5762 = extractvalue %dx.types.CBufRet.i32 %5761, 0
  %5763 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5736, i32 %5762, i32 %5754)  ; UMad(a,b,c)
  %5764 = shl i32 %5763, 2
  %5765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5764, i32 undef)  ; BufferLoad(srv,index,wot)
  %5766 = extractvalue %dx.types.ResRet.i32 %5765, 0
  %5767 = shl i32 %5754, 5
  %5768 = sub nsw i32 %5746, %5767
  %5769 = call i32 @dx.op.binary.i32(i32 37, i32 %5768, i32 0)  ; IMax(a,b)
  %5770 = call i32 @dx.op.binary.i32(i32 38, i32 %5769, i32 31)  ; IMin(a,b)
  %5771 = sub nsw i32 1, %5746
  %5772 = add nsw i32 %5771, %5747
  %5773 = call i32 @dx.op.binary.i32(i32 37, i32 %5772, i32 0)  ; IMax(a,b)
  %5774 = call i32 @dx.op.binary.i32(i32 38, i32 %5773, i32 32)  ; IMin(a,b)
  %5775 = and i32 %5774, 31
  %5776 = shl i32 -1, %5775
  %5777 = xor i32 %5776, -1
  %5778 = and i32 %5770, 31
  %5779 = shl i32 %5777, %5778
  %5780 = icmp eq i32 %5774, 32
  %5781 = select i1 %5780, i32 -1, i32 %5779
  %5782 = and i32 %5781, %5766
  %5783 = icmp eq i32 %5782, 0
  br i1 %5783, label %6208, label %5784

; <label>:5784                                    ; preds = %5753
  br label %5785

; <label>:5785                                    ; preds = %5865, %5784
  %5786 = phi i32 [ %5797, %5865 ], [ %5782, %5784 ]
  %5787 = phi float [ %5866, %5865 ], [ %5755, %5784 ]
  %5788 = phi float [ %5867, %5865 ], [ %5756, %5784 ]
  %5789 = phi float [ %5868, %5865 ], [ %5757, %5784 ]
  %5790 = phi float [ %5869, %5865 ], [ %5758, %5784 ]
  %5791 = phi float [ %5870, %5865 ], [ %5759, %5784 ]
  %5792 = phi float [ %5871, %5865 ], [ %5760, %5784 ]
  %5793 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5786)  ; FirstbitLo(value)
  %5794 = add i32 %5793, %5767
  %5795 = and i32 %5793, 31
  %5796 = shl i32 1, %5795
  %5797 = xor i32 %5796, %5786
  %5798 = mul i32 %5794, 112
  %5799 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5798, i32 undef)  ; BufferLoad(srv,index,wot)
  %5800 = extractvalue %dx.types.ResRet.f32 %5799, 0
  %5801 = extractvalue %dx.types.ResRet.f32 %5799, 1
  %5802 = extractvalue %dx.types.ResRet.f32 %5799, 2
  %5803 = or i32 %5798, 12
  %5804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5803, i32 undef)  ; BufferLoad(srv,index,wot)
  %5805 = extractvalue %dx.types.ResRet.f32 %5804, 0
  %5806 = add i32 %5798, 44
  %5807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5806, i32 undef)  ; BufferLoad(srv,index,wot)
  %5808 = extractvalue %dx.types.ResRet.f32 %5807, 0
  %5809 = add i32 %5798, 48
  %5810 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5809, i32 undef)  ; BufferLoad(srv,index,wot)
  %5811 = extractvalue %dx.types.ResRet.f32 %5810, 0
  %5812 = extractvalue %dx.types.ResRet.f32 %5810, 1
  %5813 = extractvalue %dx.types.ResRet.f32 %5810, 2
  %5814 = add i32 %5798, 80
  %5815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5814, i32 undef)  ; BufferLoad(srv,index,wot)
  %5816 = extractvalue %dx.types.ResRet.f32 %5815, 1
  %5817 = extractvalue %dx.types.ResRet.f32 %5815, 2
  %5818 = call float @dx.op.dot3.f32(i32 55, float %5800, float %5801, float %5802, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5819 = select i1 %170, float %5816, float %5800
  %5820 = select i1 %170, float %5818, float %5801
  %5821 = select i1 %170, float %5817, float %5802
  %5822 = fsub fast float %5811, %128
  %5823 = fsub fast float %5812, %129
  %5824 = fsub fast float %5813, %130
  %5825 = call float @dx.op.dot3.f32(i32 55, float %5822, float %5823, float %5824, float %5822, float %5823, float %5824)  ; Dot3(ax,ay,az,bx,by,bz)
  %5826 = call float @dx.op.unary.f32(i32 24, float %5825)  ; Sqrt(value)
  %5827 = fdiv fast float 1.000000e+00, %5826
  %5828 = fmul fast float %5827, %5822
  %5829 = fmul fast float %5827, %5823
  %5830 = fmul fast float %5827, %5824
  %5831 = fadd fast float %5826, %5805
  %5832 = fdiv fast float 1.000000e+00, %5831
  %5833 = fmul float %5808, %5832
  %5834 = fmul float %5833, %5833
  %5835 = call float @dx.op.unary.f32(i32 7, float %5834)  ; Saturate(value)
  %5836 = and i32 %5796, %5782
  %5837 = icmp eq i32 %5836, 0
  br i1 %5837, label %5860, label %5838, !dx.controlflow.hints !74

; <label>:5838                                    ; preds = %5785
  %5839 = lshr i32 %5730, 5
  %5840 = lshr i32 %5731, 5
  %5841 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5839, i32 %5840, i32 %5794, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5842 = extractvalue %dx.types.ResRet.i32 %5841, 0
  %5843 = and i32 %5842, 3
  %5844 = icmp eq i32 %5843, 0
  %5845 = select i1 %5844, float 1.000000e+00, float 0.000000e+00
  %5846 = icmp eq i32 %5843, 3
  br i1 %5846, label %5847, label %5860

; <label>:5847                                    ; preds = %5838
  %5848 = lshr i32 %5842, 10
  %5849 = and i32 %5848, 8160
  %5850 = and i32 %5731, 31
  %5851 = or i32 %5849, %5850
  %5852 = lshr i32 %5842, 1
  %5853 = and i32 %5852, 16352
  %5854 = and i32 %5730, 31
  %5855 = or i32 %5853, %5854
  %5856 = lshr i32 %5842, 23
  %5857 = and i32 %5856, 255
  %5858 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5855, i32 %5851, i32 %5857, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5859 = extractvalue %dx.types.ResRet.f32 %5858, 0
  br label %5860

; <label>:5860                                    ; preds = %5847, %5838, %5785
  %5861 = phi float [ %5859, %5847 ], [ %5845, %5838 ], [ 0.000000e+00, %5785 ]
  %5862 = call float @dx.op.binary.f32(i32 36, float %5861, float %5861)  ; FMin(a,b)
  %5863 = call float @dx.op.binary.f32(i32 36, float %5861, float %5862)  ; FMin(a,b)
  %5864 = fcmp fast ogt float %5863, 0.000000e+00
  br i1 %5864, label %5873, label %5865, !dx.controlflow.hints !75

; <label>:5865                                    ; preds = %6156, %5860
  %5866 = phi float [ %5787, %5860 ], [ %6204, %6156 ]
  %5867 = phi float [ %5788, %5860 ], [ %6205, %6156 ]
  %5868 = phi float [ %5789, %5860 ], [ %6206, %6156 ]
  %5869 = phi float [ %5790, %5860 ], [ %6195, %6156 ]
  %5870 = phi float [ %5791, %5860 ], [ %6196, %6156 ]
  %5871 = phi float [ %5792, %5860 ], [ %6197, %6156 ]
  %5872 = icmp eq i32 %5786, %5796
  br i1 %5872, label %6207, label %5785

; <label>:5873                                    ; preds = %5860
  %5874 = fmul fast float %5861, %5819
  %5875 = fmul fast float %5861, %5820
  %5876 = fmul fast float %5861, %5821
  %5877 = fsub fast float %5813, %4848
  %5878 = fcmp fast ogt float %5877, 0.000000e+00
  %5879 = fsub fast float %130, %4848
  %5880 = fcmp fast ogt float %5879, 0.000000e+00
  %5881 = xor i1 %5880, %5878
  %5882 = fsub fast float %4848, %5813
  %5883 = fmul fast float %5882, 2.000000e+00
  %5884 = fadd fast float %5883, %5813
  %5885 = select i1 %5881, float %5813, float %5884
  %5886 = fsub fast float %5885, %130
  %5887 = call float @dx.op.dot3.f32(i32 55, float %5822, float %5823, float %5886, float %5822, float %5823, float %5886)  ; Dot3(ax,ay,az,bx,by,bz)
  %5888 = call float @dx.op.unary.f32(i32 25, float %5887)  ; Rsqrt(value)
  %5889 = fmul fast float %5888, %5822
  %5890 = fmul fast float %5888, %5823
  %5891 = fmul fast float %5888, %5886
  %5892 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4856)  ; Dot3(ax,ay,az,bx,by,bz)
  %5893 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5889, float %5890, float %5891)  ; Dot3(ax,ay,az,bx,by,bz)
  %5894 = fdiv fast float 1.000000e+00, %5893
  %5895 = fmul fast float %5894, %5892
  %5896 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5879, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5897 = fcmp fast ogt float %5896, 0.000000e+00
  %5898 = fcmp fast olt float %5896, 0.000000e+00
  %5899 = zext i1 %5897 to i32
  %5900 = zext i1 %5898 to i32
  %5901 = sub nsw i32 %5899, %5900
  %5902 = sitofp i32 %5901 to float
  %5903 = fsub fast float %5885, %4848
  %5904 = call float @dx.op.dot3.f32(i32 55, float %5822, float %5823, float %5903, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5905 = fcmp fast ogt float %5904, 0.000000e+00
  %5906 = fcmp fast olt float %5904, 0.000000e+00
  %5907 = zext i1 %5905 to i32
  %5908 = zext i1 %5906 to i32
  %5909 = sub nsw i32 %5907, %5908
  %5910 = sitofp i32 %5909 to float
  %5911 = fcmp fast une float %5902, %5910
  br i1 %5911, label %5912, label %5922

; <label>:5912                                    ; preds = %5873
  %5913 = fmul fast float %5895, %5891
  %5914 = fmul fast float %5895, %5890
  %5915 = fmul fast float %5895, %5889
  %5916 = fmul fast float %5915, %5915
  %5917 = fmul fast float %5914, %5914
  %5918 = fadd fast float %5916, %5917
  %5919 = fmul fast float %5913, %5913
  %5920 = fadd fast float %5918, %5919
  %5921 = call float @dx.op.unary.f32(i32 24, float %5920)  ; Sqrt(value)
  br label %5934

; <label>:5922                                    ; preds = %5873
  %5923 = icmp slt i32 %5901, 0
  br i1 %5923, label %5924, label %5934

; <label>:5924                                    ; preds = %5922
  %5925 = fsub fast float %128, %5811
  %5926 = fsub fast float %129, %5812
  %5927 = fsub fast float %130, %5885
  %5928 = fmul fast float %5925, %5925
  %5929 = fmul fast float %5926, %5926
  %5930 = fadd fast float %5928, %5929
  %5931 = fmul fast float %5927, %5927
  %5932 = fadd fast float %5930, %5931
  %5933 = call float @dx.op.unary.f32(i32 24, float %5932)  ; Sqrt(value)
  br label %5934

; <label>:5934                                    ; preds = %5924, %5922, %5912
  %5935 = phi float [ %5921, %5912 ], [ %5933, %5924 ], [ 0.000000e+00, %5922 ]
  %5936 = and i1 %5880, %5878
  %5937 = fsub fast float -0.000000e+00, %5935
  %5938 = select i1 %5936, float -0.000000e+00, float %5937
  %5939 = fmul fast float %4849, 0x3FF7154760000000
  %5940 = fmul fast float %5939, %5938
  %5941 = fmul fast float %4850, 0x3FF7154760000000
  %5942 = fmul fast float %5941, %5938
  %5943 = fmul fast float %4851, 0x3FF7154760000000
  %5944 = fmul fast float %5943, %5938
  %5945 = call float @dx.op.unary.f32(i32 21, float %5940)  ; Exp(value)
  %5946 = call float @dx.op.unary.f32(i32 21, float %5942)  ; Exp(value)
  %5947 = call float @dx.op.unary.f32(i32 21, float %5944)  ; Exp(value)
  %5948 = call float @dx.op.unary.f32(i32 7, float %5945)  ; Saturate(value)
  %5949 = call float @dx.op.unary.f32(i32 7, float %5946)  ; Saturate(value)
  %5950 = call float @dx.op.unary.f32(i32 7, float %5947)  ; Saturate(value)
  %5951 = fmul fast float %5874, %5948
  %5952 = fmul fast float %5875, %5949
  %5953 = fmul fast float %5876, %5950
  %5954 = fsub fast float %5828, %5048
  %5955 = fsub fast float %5829, %5047
  %5956 = fsub fast float %5830, %5046
  %5957 = call float @dx.op.dot3.f32(i32 55, float %5954, float %5955, float %5956, float %5954, float %5955, float %5956)  ; Dot3(ax,ay,az,bx,by,bz)
  %5958 = call float @dx.op.unary.f32(i32 25, float %5957)  ; Rsqrt(value)
  %5959 = fmul fast float %5958, %5954
  %5960 = fmul fast float %5958, %5955
  %5961 = fmul fast float %5958, %5956
  %5962 = call float @dx.op.dot3.f32(i32 55, float %5828, float %5829, float %5830, float %5055, float %5056, float %5057)  ; Dot3(ax,ay,az,bx,by,bz)
  %5963 = call float @dx.op.dot3.f32(i32 55, float %5045, float %5044, float %5043, float %5959, float %5960, float %5961)  ; Dot3(ax,ay,az,bx,by,bz)
  %5964 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5965 = fmul fast float %5964, %5835
  %5966 = fmul fast float %5964, %5964
  %5967 = fmul fast float %5966, %5075
  %5968 = call float @dx.op.unary.f32(i32 7, float %5967)  ; Saturate(value)
  %5969 = fmul fast float %5965, %5968
  %5970 = bitcast float %5825 to i32
  %5971 = ashr i32 %5970, 1
  %5972 = sub nsw i32 1597463007, %5971
  %5973 = bitcast i32 %5972 to float
  %5974 = fmul fast float %5973, %5822
  %5975 = fmul fast float %5973, %5823
  %5976 = fmul fast float %5973, %5824
  %5977 = fsub fast float %5974, %5048
  %5978 = fsub fast float %5975, %5047
  %5979 = fsub fast float %5976, %5046
  %5980 = call float @dx.op.dot3.f32(i32 55, float %5977, float %5978, float %5979, float %5977, float %5978, float %5979)  ; Dot3(ax,ay,az,bx,by,bz)
  %5981 = call float @dx.op.unary.f32(i32 25, float %5980)  ; Rsqrt(value)
  %5982 = fmul fast float %5977, %5981
  %5983 = fmul fast float %5978, %5981
  %5984 = fmul fast float %5979, %5981
  %5985 = call float @dx.op.dot3.f32(i32 55, float %5055, float %5056, float %5057, float %5982, float %5983, float %5984)  ; Dot3(ax,ay,az,bx,by,bz)
  %5986 = fmul fast float %5985, %5985
  %5987 = call float @dx.op.unary.f32(i32 6, float %5962)  ; FAbs(value)
  %5988 = fsub fast float 1.000000e+00, %5058
  %5989 = call float @dx.op.binary.f32(i32 35, float %5988, float 0x3F847AE140000000)  ; FMax(a,b)
  %5990 = fmul fast float %5989, %5989
  %5991 = fmul fast float %5990, %5990
  %5992 = fsub fast float 1.000000e+00, %5991
  %5993 = fmul fast float %5062, %5062
  %5994 = fmul fast float %5993, %5992
  %5995 = fadd fast float %5994, %5991
  %5996 = bitcast float %5995 to i32
  %5997 = ashr i32 %5996, 1
  %5998 = add nsw i32 %5997, 532487669
  %5999 = bitcast i32 %5998 to float
  %6000 = fadd fast float %5999, %5062
  %6001 = fmul fast float %5991, %5986
  %6002 = fsub fast float 1.000000e+00, %5986
  %6003 = fadd fast float %6002, %6001
  %6004 = fmul fast float %5987, %5987
  %6005 = fmul fast float %6004, %5992
  %6006 = fadd fast float %6005, %5991
  %6007 = bitcast float %6006 to i32
  %6008 = ashr i32 %6007, 1
  %6009 = add nsw i32 %6008, 532487669
  %6010 = bitcast i32 %6009 to float
  %6011 = fadd fast float %6010, %5987
  %6012 = fmul fast float %6003, %6003
  %6013 = fmul fast float %6012, %6000
  %6014 = fmul fast float %6013, %6011
  %6015 = fdiv fast float 1.000000e+00, %6014
  %6016 = bitcast float %5991 to i32
  %6017 = sitofp i32 %6016 to float
  %6018 = fmul fast float %6017, 0x3FE7F73180000000
  %6019 = fadd fast float %6018, 0x41AFE27C40000000
  %6020 = fptosi float %6019 to i32
  %6021 = bitcast i32 %6020 to float
  %6022 = fmul fast float %5808, 0x3FD80E9D60000000
  %6023 = fmul fast float %6022, %5973
  %6024 = fadd fast float %6021, %6023
  %6025 = bitcast float %6024 to i32
  %6026 = sub nsw i32 2129859010, %6025
  %6027 = bitcast i32 %6026 to float
  %6028 = fmul fast float %5991, %6015
  %6029 = fmul fast float %6028, %6021
  %6030 = fmul fast float %6029, %6027
  %6031 = call float @dx.op.unary.f32(i32 6, float %5963)  ; FAbs(value)
  %6032 = fsub fast float 1.000000e+00, %6031
  %6033 = bitcast float %6032 to i32
  %6034 = sitofp i32 %6033 to float
  %6035 = fmul fast float %6034, 5.000000e+00
  %6036 = fadd fast float %6035, 0xC1EFBF8940000000
  %6037 = fptosi float %6036 to i32
  %6038 = bitcast i32 %6037 to float
  %6039 = fsub fast float 1.000000e+00, %5052
  %6040 = fsub fast float 1.000000e+00, %5053
  %6041 = fsub fast float 1.000000e+00, %5060
  %6042 = fmul fast float %6038, %6039
  %6043 = fmul fast float %6038, %6040
  %6044 = fmul fast float %6038, %6041
  %6045 = fadd fast float %6042, %5052
  %6046 = fadd fast float %6043, %5053
  %6047 = fadd fast float %6044, %5060
  br i1 %5332, label %6048, label %6071

; <label>:6048                                    ; preds = %5934
  %6049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4381, float %6031, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6050 = extractvalue %dx.types.ResRet.f32 %6049, 0
  %6051 = extractvalue %dx.types.ResRet.f32 %6049, 1
  %6052 = extractvalue %dx.types.ResRet.f32 %6049, 2
  %6053 = fadd fast float %6050, -5.000000e-01
  %6054 = fadd fast float %6051, -5.000000e-01
  %6055 = fadd fast float %6052, -5.000000e-01
  %6056 = fmul fast float %5052, 4.000000e+00
  %6057 = fmul fast float %6056, %6039
  %6058 = fmul fast float %6057, %6053
  %6059 = fmul fast float %5053, 4.000000e+00
  %6060 = fmul fast float %6059, %6040
  %6061 = fmul fast float %6060, %6054
  %6062 = fmul fast float %5060, 4.000000e+00
  %6063 = fmul fast float %6062, %6041
  %6064 = fmul fast float %6063, %6055
  %6065 = fadd fast float %6058, %6045
  %6066 = fadd fast float %6061, %6046
  %6067 = fadd fast float %6064, %6047
  %6068 = call float @dx.op.unary.f32(i32 7, float %6065)  ; Saturate(value)
  %6069 = call float @dx.op.unary.f32(i32 7, float %6066)  ; Saturate(value)
  %6070 = call float @dx.op.unary.f32(i32 7, float %6067)  ; Saturate(value)
  br label %6071

; <label>:6071                                    ; preds = %6048, %5934
  %6072 = phi float [ %6068, %6048 ], [ %6045, %5934 ]
  %6073 = phi float [ %6069, %6048 ], [ %6046, %5934 ]
  %6074 = phi float [ %6070, %6048 ], [ %6047, %5934 ]
  %6075 = fmul fast float %5962, 9.843750e-01
  %6076 = fadd fast float %6075, 7.812500e-03
  %6077 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6076, float %5322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6078 = extractvalue %dx.types.ResRet.f32 %6077, 2
  %6079 = extractvalue %dx.types.ResRet.f32 %6077, 3
  %6080 = fmul fast float %6078, %5052
  %6081 = fmul fast float %6078, %5053
  %6082 = fmul fast float %6078, %5060
  %6083 = fadd fast float %6080, %6079
  %6084 = fadd fast float %6081, %6079
  %6085 = fadd fast float %6082, %6079
  br i1 %5332, label %6086, label %6109

; <label>:6086                                    ; preds = %6071
  %6087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4381, float %5962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6088 = extractvalue %dx.types.ResRet.f32 %6087, 0
  %6089 = extractvalue %dx.types.ResRet.f32 %6087, 1
  %6090 = extractvalue %dx.types.ResRet.f32 %6087, 2
  %6091 = fadd fast float %6088, -5.000000e-01
  %6092 = fadd fast float %6089, -5.000000e-01
  %6093 = fadd fast float %6090, -5.000000e-01
  %6094 = fmul fast float %5052, 4.000000e+00
  %6095 = fmul fast float %6094, %6039
  %6096 = fmul fast float %6095, %6091
  %6097 = fmul fast float %5053, 4.000000e+00
  %6098 = fmul fast float %6097, %6040
  %6099 = fmul fast float %6098, %6092
  %6100 = fmul fast float %5060, 4.000000e+00
  %6101 = fmul fast float %6100, %6041
  %6102 = fmul fast float %6101, %6093
  %6103 = fadd fast float %6096, %6083
  %6104 = fadd fast float %6099, %6084
  %6105 = fadd fast float %6102, %6085
  %6106 = call float @dx.op.unary.f32(i32 7, float %6103)  ; Saturate(value)
  %6107 = call float @dx.op.unary.f32(i32 7, float %6104)  ; Saturate(value)
  %6108 = call float @dx.op.unary.f32(i32 7, float %6105)  ; Saturate(value)
  br label %6109

; <label>:6109                                    ; preds = %6086, %6071
  %6110 = phi float [ %6106, %6086 ], [ %6083, %6071 ]
  %6111 = phi float [ %6107, %6086 ], [ %6084, %6071 ]
  %6112 = phi float [ %6108, %6086 ], [ %6085, %6071 ]
  %6113 = call float @dx.op.binary.f32(i32 35, float %6111, float %6112)  ; FMax(a,b)
  %6114 = call float @dx.op.binary.f32(i32 35, float %6110, float %6113)  ; FMax(a,b)
  %6115 = fsub fast float 1.000000e+00, %6114
  %6116 = fsub fast float -0.000000e+00, %5055
  %6117 = fsub fast float -0.000000e+00, %5056
  %6118 = fsub fast float -0.000000e+00, %5057
  %6119 = call float @dx.op.dot3.f32(i32 55, float %5828, float %5829, float %5830, float %6116, float %6117, float %6118)  ; Dot3(ax,ay,az,bx,by,bz)
  %6120 = call float @dx.op.unary.f32(i32 7, float %6119)  ; Saturate(value)
  %6121 = fmul fast float %6120, %5835
  %6122 = fmul fast float %6120, 9.843750e-01
  %6123 = fadd fast float %6122, 7.812500e-03
  %6124 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %29, float %6123, float %5322, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6125 = extractvalue %dx.types.ResRet.f32 %6124, 2
  %6126 = extractvalue %dx.types.ResRet.f32 %6124, 3
  %6127 = fmul fast float %6125, %5052
  %6128 = fmul fast float %6125, %5053
  %6129 = fmul fast float %6125, %5060
  %6130 = fadd fast float %6127, %6126
  %6131 = fadd fast float %6128, %6126
  %6132 = fadd fast float %6129, %6126
  br i1 %5332, label %6133, label %6156

; <label>:6133                                    ; preds = %6109
  %6134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %29, float %4381, float %6120, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6135 = extractvalue %dx.types.ResRet.f32 %6134, 0
  %6136 = extractvalue %dx.types.ResRet.f32 %6134, 1
  %6137 = extractvalue %dx.types.ResRet.f32 %6134, 2
  %6138 = fadd fast float %6135, -5.000000e-01
  %6139 = fadd fast float %6136, -5.000000e-01
  %6140 = fadd fast float %6137, -5.000000e-01
  %6141 = fmul fast float %5052, 4.000000e+00
  %6142 = fmul fast float %6141, %6039
  %6143 = fmul fast float %6142, %6138
  %6144 = fmul fast float %5053, 4.000000e+00
  %6145 = fmul fast float %6144, %6040
  %6146 = fmul fast float %6145, %6139
  %6147 = fmul fast float %5060, 4.000000e+00
  %6148 = fmul fast float %6147, %6041
  %6149 = fmul fast float %6148, %6140
  %6150 = fadd fast float %6143, %6130
  %6151 = fadd fast float %6146, %6131
  %6152 = fadd fast float %6149, %6132
  %6153 = call float @dx.op.unary.f32(i32 7, float %6150)  ; Saturate(value)
  %6154 = call float @dx.op.unary.f32(i32 7, float %6151)  ; Saturate(value)
  %6155 = call float @dx.op.unary.f32(i32 7, float %6152)  ; Saturate(value)
  br label %6156

; <label>:6156                                    ; preds = %6133, %6109
  %6157 = phi float [ %6153, %6133 ], [ %6130, %6109 ]
  %6158 = phi float [ %6154, %6133 ], [ %6131, %6109 ]
  %6159 = phi float [ %6155, %6133 ], [ %6132, %6109 ]
  %6160 = call float @dx.op.binary.f32(i32 35, float %6158, float %6159)  ; FMax(a,b)
  %6161 = call float @dx.op.binary.f32(i32 35, float %6157, float %6160)  ; FMax(a,b)
  %6162 = fsub fast float 1.000000e+00, %6161
  %6163 = fmul fast float %6121, %6162
  %6164 = fmul fast float %6163, %4471
  %6165 = fmul fast float %6163, %4472
  %6166 = fmul fast float %6163, %4473
  %6167 = fmul fast float %6072, %6030
  %6168 = fmul fast float %6073, %6030
  %6169 = fmul fast float %6074, %6030
  %6170 = fsub fast float 1.000000e+00, %5963
  %6171 = bitcast float %6170 to i32
  %6172 = sitofp i32 %6171 to float
  %6173 = fmul fast float %6172, 5.000000e+00
  %6174 = fadd fast float %6173, 0xC1EFBF8940000000
  %6175 = fptosi float %6174 to i32
  %6176 = bitcast i32 %6175 to float
  %6177 = fmul fast float %6176, %4382
  %6178 = fmul fast float %6115, %6177
  %6179 = fmul fast float %6178, %5379
  %6180 = fmul fast float %6178, %5380
  %6181 = fmul fast float %6178, %5381
  %6182 = fmul fast float %6115, %5969
  %6183 = fadd fast float %6179, %6167
  %6184 = fadd fast float %6180, %6168
  %6185 = fadd fast float %6181, %6169
  %6186 = fadd fast float %6164, %6182
  %6187 = fadd fast float %6165, %6182
  %6188 = fadd fast float %6166, %6182
  %6189 = fmul fast float %5951, %4378
  %6190 = fmul fast float %6189, %6186
  %6191 = fmul fast float %5952, %4378
  %6192 = fmul fast float %6191, %6187
  %6193 = fmul fast float %5953, %4378
  %6194 = fmul fast float %6193, %6188
  %6195 = fadd fast float %6190, %5790
  %6196 = fadd fast float %6192, %5791
  %6197 = fadd fast float %6194, %5792
  %6198 = fmul fast float %6189, %5969
  %6199 = fmul fast float %6198, %6183
  %6200 = fmul fast float %6191, %5969
  %6201 = fmul fast float %6200, %6184
  %6202 = fmul fast float %6193, %5969
  %6203 = fmul fast float %6202, %6185
  %6204 = fadd fast float %6199, %5787
  %6205 = fadd fast float %6201, %5788
  %6206 = fadd fast float %6203, %5789
  br label %5865

; <label>:6207                                    ; preds = %5865
  br label %6208

; <label>:6208                                    ; preds = %6207, %5753
  %6209 = phi float [ %5755, %5753 ], [ %5866, %6207 ]
  %6210 = phi float [ %5756, %5753 ], [ %5867, %6207 ]
  %6211 = phi float [ %5757, %5753 ], [ %5868, %6207 ]
  %6212 = phi float [ %5758, %5753 ], [ %5869, %6207 ]
  %6213 = phi float [ %5759, %5753 ], [ %5870, %6207 ]
  %6214 = phi float [ %5760, %5753 ], [ %5871, %6207 ]
  %6215 = add i32 %5754, 1
  %6216 = icmp ugt i32 %6215, %5750
  br i1 %6216, label %6217, label %5753

; <label>:6217                                    ; preds = %6208
  br label %6218

; <label>:6218                                    ; preds = %6217, %5729, %5719
  %6219 = phi float [ %5720, %5719 ], [ %5720, %5729 ], [ %6209, %6217 ]
  %6220 = phi float [ %5721, %5719 ], [ %5721, %5729 ], [ %6210, %6217 ]
  %6221 = phi float [ %5722, %5719 ], [ %5722, %5729 ], [ %6211, %6217 ]
  %6222 = phi float [ %5723, %5719 ], [ %5723, %5729 ], [ %6212, %6217 ]
  %6223 = phi float [ %5724, %5719 ], [ %5724, %5729 ], [ %6213, %6217 ]
  %6224 = phi float [ %5725, %5719 ], [ %5725, %5729 ], [ %6214, %6217 ]
  %6225 = call float @dx.op.unary.f32(i32 24, float %5049)  ; Sqrt(value)
  %6226 = call float @dx.op.unary.f32(i32 24, float %5050)  ; Sqrt(value)
  %6227 = call float @dx.op.unary.f32(i32 24, float %5051)  ; Sqrt(value)
  %6228 = fmul fast float %6225, %6222
  %6229 = fmul fast float %6226, %6223
  %6230 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6231 = extractvalue %dx.types.CBufRet.f32 %6230, 0
  br i1 %170, label %6232, label %6252

; <label>:6232                                    ; preds = %6218
  %6233 = fadd fast float %6224, %4384
  %6234 = fmul fast float %6233, %4385
  %6235 = fsub fast float 1.000000e+00, %4385
  %6236 = call float @dx.op.unary.f32(i32 7, float %6235)  ; Saturate(value)
  %6237 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6238 = extractvalue %dx.types.CBufRet.f32 %6237, 3
  %6239 = fmul fast float %6238, %6236
  %6240 = fadd fast float %6239, %6234
  %6241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6242 = extractvalue %dx.types.CBufRet.f32 %6241, 0
  %6243 = fmul fast float %6242, %5385
  %6244 = fsub fast float %6240, %6243
  %6245 = fadd fast float %6229, %6228
  %6246 = fmul fast float %6231, %6245
  %6247 = extractvalue %dx.types.CBufRet.f32 %6237, 1
  %6248 = fsub fast float %6244, %6247
  %6249 = extractvalue %dx.types.CBufRet.f32 %6237, 2
  %6250 = fmul fast float %6248, %6249
  %6251 = call float @dx.op.unary.f32(i32 7, float %6250)  ; Saturate(value)
  br label %6268

; <label>:6252                                    ; preds = %6218
  %6253 = fmul fast float %6227, %6224
  %6254 = fmul fast float %6231, %6228
  %6255 = fmul fast float %6231, %6229
  %6256 = fmul fast float %6253, %6231
  %6257 = add i32 %33, 356
  %6258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %6257, i32 undef)  ; BufferLoad(srv,index,wot)
  %6259 = extractvalue %dx.types.ResRet.i32 %6258, 0
  %6260 = and i32 %6259, 32
  %6261 = icmp eq i32 %6260, 0
  br i1 %6261, label %6268, label %6262

; <label>:6262                                    ; preds = %6252
  %6263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6264 = extractvalue %dx.types.CBufRet.f32 %6263, 0
  %6265 = fmul fast float %6264, 0x3FE99999A0000000
  %6266 = fadd fast float %6264, %6254
  %6267 = fadd fast float %6265, %6256
  br label %6268

; <label>:6268                                    ; preds = %6262, %6252, %6232
  %6269 = phi float [ %6246, %6232 ], [ %6266, %6262 ], [ %6254, %6252 ]
  %6270 = phi float [ %6251, %6232 ], [ %6255, %6262 ], [ %6255, %6252 ]
  %6271 = phi float [ 1.000000e+00, %6232 ], [ %6267, %6262 ], [ %6256, %6252 ]
  %6272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %32, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6273 = extractvalue %dx.types.CBufRet.f32 %6272, 0
  %6274 = fmul fast float %6273, %6220
  %6275 = fmul fast float %6273, %6221
  %6276 = fadd fast float %6220, %6219
  %6277 = select i1 %170, float %6276, float %6219
  %6278 = fmul float %6277, %6273
  %6279 = select i1 %170, float 0.000000e+00, float %6274
  %6280 = select i1 %170, float 0.000000e+00, float %6275
  %6281 = fmul fast float %6269, %6225
  %6282 = fmul fast float %6270, %6226
  %6283 = fmul fast float %6271, %6227
  %6284 = fadd fast float %6278, %6281
  %6285 = fadd fast float %6279, %6282
  %6286 = fadd fast float %6280, %6283
  %6287 = select i1 %170, float %6270, float %6285
  %6288 = select i1 %170, float %6271, float %6286
  %6289 = call float @dx.op.binary.f32(i32 36, float %6284, float 3.225500e+04)  ; FMin(a,b)
  %6290 = call float @dx.op.binary.f32(i32 36, float %6287, float 3.225500e+04)  ; FMin(a,b)
  %6291 = call float @dx.op.binary.f32(i32 36, float %6288, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6289)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6290)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6291)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!47 = !{[46 x i32] [i32 44, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!48 = !{void ()* @ps_main, !"ps_main", !49, !4, !72}
!49 = !{!50, !70, null}
!50 = !{!51, !54, !56, !58, !60, !62, !63, !64, !65, !66, !67, !69}
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
!69 = !{i32 11, !"SV_SampleIndex", i8 5, i8 12, !52, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!70 = !{!71}
!71 = !{i32 0, !"SV_Target", i8 9, i8 16, !52, i8 0, i32 1, i8 4, i32 0, i8 0, !61}
!72 = !{i32 0, i64 24}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}

