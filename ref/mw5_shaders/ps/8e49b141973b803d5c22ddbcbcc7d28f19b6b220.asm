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
; SECONDARY_TEXCOORDS      0   xy          5     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        6     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        7     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 845a8d8b5a119a88de619d1f30c5cfce
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
;                                   texture     f32     2darray      T6     t16,space2     1
;                                   texture     f32          3d      T7     t15,space2     1
;                                   texture     f32          2d      T8     t13,space2     1
;                                   texture     u32          2d      T9     t17,space2     1
;                                   texture     f32          3d     T10     t18,space2     1
;                                   texture     u32     2darray     T11     t11,space2     1
;                                   texture     f32     2darray     T12     t10,space2     1
;                                   texture     f32          2d     T13     t69,space2     1
;                                   texture    byte         r/o     T14     t49,space1     1
;                                   texture    byte         r/o     T15     t50,space1     1
;                                   texture    byte         r/o     T16     t51,space1     1
;                                   texture    byte         r/o     T17     t52,space1     1
;                                   texture    byte         r/o     T18     t16,space1     1
;                                   texture    byte         r/o     T19     t17,space1     1
;                                   texture     f32          2d     T20     t58,space2     1
;                                   texture     f32          2d     T21     t59,space2     1
;                                   texture     f32          2d     T22     t60,space2     1
;                                   texture    byte         r/o     T23     t45,space1     1
;                                   texture    byte         r/o     T24     t46,space1     1
;                                   texture    byte         r/o     T25     t47,space1     1
;                                   texture    byte         r/o     T26     t48,space1     1
;                                   texture     f32          2d     T27     t57,space2     1
;                                   texture    byte         r/o     T28     t69,space1     1
;                                   texture     f32          2d     T29     t34,space2     1
;                                   texture    byte         r/o     T30     t10,space1     1
;                                   texture    byte         r/o     T31     t68,space1     1
;                                   texture     f32          2d     T32      t0,space2     1
;                                   texture    byte         r/o     T33     t11,space1     1
;                                   texture    byte         r/o     T34     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 32, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 31 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 31 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 31 }
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
%"class.Texture2D<vector<float, 2> >" = type { <2 x float>, %"class.Texture2D<vector<float, 2> >::mips_type" }
%"class.Texture2D<vector<float, 2> >::mips_type" = type { i32 }
%"class.Texture2D<unsigned int>" = type { i32, %"class.Texture2D<unsigned int>::mips_type" }
%"class.Texture2D<unsigned int>::mips_type" = type { i32 }
%"class.Texture3D<vector<float, 3> >" = type { <3 x float>, %"class.Texture3D<vector<float, 3> >::mips_type" }
%"class.Texture3D<vector<float, 3> >::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %65 = extractvalue %dx.types.CBufRet.f32 %64, 0
  %66 = fmul fast float %65, %59
  %67 = fmul fast float %65, %60
  %68 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %69 = bitcast float %68 to i32
  %70 = ashr i32 %69, 1
  %71 = sub nsw i32 1597250115, %70
  %72 = bitcast i32 %71 to float
  %73 = fmul fast float %72, %51
  %74 = fmul fast float %72, %52
  %75 = fmul fast float %72, %53
  %76 = fmul fast float %52, %49
  %77 = fmul fast float %53, %48
  %78 = fsub fast float %76, %77
  %79 = fmul fast float %53, %47
  %80 = fmul fast float %51, %49
  %81 = fsub fast float %79, %80
  %82 = fmul fast float %51, %48
  %83 = fmul fast float %52, %47
  %84 = fsub fast float %82, %83
  %85 = fmul fast float %78, %50
  %86 = fmul fast float %81, %50
  %87 = fmul fast float %84, %50
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 3
  %91 = fmul fast float %66, 2.000000e+00
  %92 = fmul fast float %91, %89
  %93 = fmul fast float %67, 2.000000e+00
  %94 = fmul fast float %93, %90
  %95 = fsub fast float 1.000000e+00, %92
  %96 = fsub fast float 1.000000e+00, %94
  %97 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %98 = extractvalue %dx.types.CBufRet.f32 %97, 0
  %99 = extractvalue %dx.types.CBufRet.f32 %97, 1
  %100 = extractvalue %dx.types.CBufRet.f32 %97, 2
  %101 = fmul fast float %95, %98
  %102 = fmul fast float %95, %99
  %103 = fmul fast float %95, %100
  %104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %105 = extractvalue %dx.types.CBufRet.f32 %104, 0
  %106 = extractvalue %dx.types.CBufRet.f32 %104, 1
  %107 = extractvalue %dx.types.CBufRet.f32 %104, 2
  %108 = fmul fast float %96, %105
  %109 = fmul fast float %96, %106
  %110 = fmul fast float %96, %107
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 0
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 1
  %114 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %115 = fadd fast float %108, %112
  %116 = fadd fast float %115, %101
  %117 = fadd fast float %109, %113
  %118 = fadd fast float %117, %102
  %119 = fadd fast float %110, %114
  %120 = fadd fast float %119, %103
  %121 = fmul fast float %116, %61
  %122 = fmul fast float %118, %61
  %123 = fmul fast float %120, %61
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 3
  %127 = fmul fast float %125, %66
  %128 = fmul fast float %126, %67
  %129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %130 = extractvalue %dx.types.ResRet.i32 %129, 0
  %131 = and i32 %130, 114688
  %132 = icmp ne i32 %131, 0
  %133 = select i1 %132, float %127, float 0.000000e+00
  %134 = select i1 %132, float %128, float 0.000000e+00
  %135 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %133, float %134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %136 = extractvalue %dx.types.ResRet.f32 %135, 0
  %137 = fmul fast float %136, 2.550000e+02
  %138 = fptoui float %137 to i32
  %139 = select i1 %132, i32 %138, i32 0
  %140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %141 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = extractvalue %dx.types.CBufRet.i32 %141, 3
  %143 = and i32 %142, 3
  %144 = icmp ne i32 %143, 0
  %145 = and i32 %142, 4
  %146 = icmp ne i32 %145, 0
  %147 = and i1 %144, %146
  br i1 %147, label %148, label %159

; <label>:148                                     ; preds = %0
  %149 = extractvalue %dx.types.CBufRet.f32 %140, 3
  %150 = fmul fast float %149, %67
  %151 = extractvalue %dx.types.CBufRet.f32 %140, 2
  %152 = fmul fast float %151, %66
  %153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %152, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %154 = extractvalue %dx.types.ResRet.f32 %153, 0
  %155 = fsub fast float 1.000000e+00, %154
  %156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %157 = extractvalue %dx.types.CBufRet.f32 %156, 0
  %158 = fcmp fast olt float %155, %157
  br label %162

; <label>:159                                     ; preds = %0
  %160 = icmp eq i32 %145, 0
  %161 = and i1 %144, %160
  br label %162

; <label>:162                                     ; preds = %159, %148
  %163 = phi i1 [ %158, %148 ], [ %161, %159 ]
  %164 = add i32 %38, 156
  %165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %164, i32 undef)  ; BufferLoad(srv,index,wot)
  %166 = extractvalue %dx.types.ResRet.i32 %165, 0
  %167 = shl i32 %166, 4
  %168 = and i32 %167, 32752
  %169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %168)  ; LegacyF16ToF32(value)
  %170 = lshr i32 %166, 7
  %171 = and i32 %170, 32752
  %172 = call float @dx.op.legacyF16ToF32(i32 131, i32 %171)  ; LegacyF16ToF32(value)
  %173 = lshr i32 %166, 22
  %174 = shl nuw nsw i32 %173, 5
  %175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %174)  ; LegacyF16ToF32(value)
  %176 = add i32 %38, 216
  %177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %178 = extractvalue %dx.types.ResRet.i32 %177, 0
  %179 = and i32 %178, 255
  %180 = uitofp i32 %179 to float
  %181 = fmul fast float %180, 0x3F70101020000000
  %182 = lshr i32 %178, 8
  %183 = and i32 %182, 255
  %184 = uitofp i32 %183 to float
  %185 = fmul fast float %184, 0x3F70101020000000
  %186 = lshr i32 %178, 16
  %187 = and i32 %186, 255
  %188 = uitofp i32 %187 to float
  %189 = fmul fast float %188, 0x3F70101020000000
  %190 = add i32 %38, 36
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = and i32 %192, 65535
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = lshr i32 %192, 16
  %196 = call float @dx.op.legacyF16ToF32(i32 131, i32 %195)  ; LegacyF16ToF32(value)
  %197 = add i32 %38, 288
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = and i32 %199, 65535
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = lshr i32 %199, 16
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = fmul fast float %201, 0x3F50624DE0000000
  %205 = fmul fast float %203, 0x3F50624DE0000000
  %206 = add i32 %38, 172
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = shl i32 %208, 4
  %210 = and i32 %209, 32752
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = lshr i32 %208, 7
  %213 = and i32 %212, 32752
  %214 = call float @dx.op.legacyF16ToF32(i32 131, i32 %213)  ; LegacyF16ToF32(value)
  %215 = lshr i32 %208, 22
  %216 = shl nuw nsw i32 %215, 5
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = add i32 %38, 232
  %219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %220 = extractvalue %dx.types.ResRet.i32 %219, 0
  %221 = and i32 %220, 255
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F70101020000000
  %224 = lshr i32 %220, 8
  %225 = and i32 %224, 255
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F70101020000000
  %228 = lshr i32 %220, 16
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = add i32 %38, 52
  %233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %232, i32 undef)  ; BufferLoad(srv,index,wot)
  %234 = extractvalue %dx.types.ResRet.i32 %233, 0
  %235 = and i32 %234, 65535
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = lshr i32 %234, 16
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = add i32 %38, 304
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = and i32 %241, 65535
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = lshr i32 %241, 16
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = fmul fast float %243, 0x3F50624DE0000000
  %247 = fmul fast float %245, 0x3F50624DE0000000
  %248 = add i32 %38, 188
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = shl i32 %250, 4
  %252 = and i32 %251, 32752
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = lshr i32 %250, 7
  %255 = and i32 %254, 32752
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = lshr i32 %250, 22
  %258 = shl nuw nsw i32 %257, 5
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = add i32 %38, 248
  %261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %262 = extractvalue %dx.types.ResRet.i32 %261, 0
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = lshr i32 %262, 8
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = lshr i32 %262, 16
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = add i32 %38, 68
  %275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %274, i32 undef)  ; BufferLoad(srv,index,wot)
  %276 = extractvalue %dx.types.ResRet.i32 %275, 0
  %277 = and i32 %276, 65535
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = lshr i32 %276, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = add i32 %38, 320
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = and i32 %283, 65535
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = lshr i32 %283, 16
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = fmul fast float %285, 0x3F50624DE0000000
  %289 = fmul fast float %287, 0x3F50624DE0000000
  %290 = add i32 %38, 204
  %291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %290, i32 undef)  ; BufferLoad(srv,index,wot)
  %292 = extractvalue %dx.types.ResRet.i32 %291, 0
  %293 = shl i32 %292, 4
  %294 = and i32 %293, 32752
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = lshr i32 %292, 7
  %297 = and i32 %296, 32752
  %298 = call float @dx.op.legacyF16ToF32(i32 131, i32 %297)  ; LegacyF16ToF32(value)
  %299 = lshr i32 %292, 22
  %300 = shl nuw nsw i32 %299, 5
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = add i32 %38, 264
  %303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %304 = extractvalue %dx.types.ResRet.i32 %303, 0
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = lshr i32 %304, 8
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = lshr i32 %304, 16
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = add i32 %38, 84
  %317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %316, i32 undef)  ; BufferLoad(srv,index,wot)
  %318 = extractvalue %dx.types.ResRet.i32 %317, 0
  %319 = and i32 %318, 65535
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = lshr i32 %318, 16
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = add i32 %38, 336
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = and i32 %325, 65535
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = lshr i32 %325, 16
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = fmul fast float %327, 0x3F50624DE0000000
  %331 = fmul fast float %329, 0x3F50624DE0000000
  %332 = add i32 %38, 348
  %333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %334 = extractvalue %dx.types.ResRet.i32 %333, 0
  %335 = and i32 %334, 32
  %336 = icmp eq i32 %335, 0
  %337 = and i32 %334, 64
  %338 = icmp eq i32 %337, 0
  %339 = and i32 %334, 128
  %340 = icmp eq i32 %339, 0
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 2
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %358, label %345

; <label>:345                                     ; preds = %162
  %346 = add i32 %38, 476
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = add i32 %348, 0
  %350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %350, %dx.types.Handle %63, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 0
  %353 = extractvalue %dx.types.ResRet.f32 %351, 1
  %354 = extractvalue %dx.types.ResRet.f32 %351, 2
  %355 = fmul fast float %352, %56
  %356 = fmul fast float %353, %57
  %357 = fmul fast float %354, %58
  br label %358

; <label>:358                                     ; preds = %345, %162
  %359 = phi float [ %58, %162 ], [ %357, %345 ]
  %360 = phi float [ %57, %162 ], [ %356, %345 ]
  %361 = phi float [ %56, %162 ], [ %355, %345 ]
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 2
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %385, label %366

; <label>:366                                     ; preds = %358
  %367 = add i32 %38, 44
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 1
  %371 = icmp ne i32 %370, 0
  %372 = select i1 %371, float %361, float 1.000000e+00
  %373 = add i32 %38, 60
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 1
  %377 = icmp ne i32 %376, 0
  %378 = select i1 %377, float %360, float 1.000000e+00
  %379 = add i32 %38, 76
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 1
  %383 = icmp ne i32 %382, 0
  %384 = select i1 %383, float %359, float 1.000000e+00
  br label %385

; <label>:385                                     ; preds = %366, %358
  %386 = phi float [ %359, %358 ], [ %384, %366 ]
  %387 = phi float [ %360, %358 ], [ %378, %366 ]
  %388 = phi float [ %361, %358 ], [ %372, %366 ]
  %389 = lshr i32 %363, 20
  %390 = and i32 %389, 3
  %391 = add nuw nsw i32 %390, 1
  %392 = add i32 %38, 24
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = add i32 %38, 28
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %395, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = or i32 %397, %394
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %841, label %400

; <label>:400                                     ; preds = %385
  %401 = and i32 %394, 262144
  %402 = icmp ne i32 %401, 0
  %403 = select i1 %402, float %41, float 1.000000e+00
  %404 = select i1 %402, float %42, float 0.000000e+00
  %405 = select i1 %402, float %43, float 0.000000e+00
  %406 = select i1 %402, float %44, float 1.000000e+00
  %407 = select i1 %402, float %45, float %54
  %408 = select i1 %402, float %46, float %55
  %409 = add i32 %38, 284
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = lshr i32 %411, 16
  %413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %412)  ; LegacyF16ToF32(value)
  %414 = fmul fast float %413, 0x3F50624DE0000000
  %415 = add i32 %38, 88
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = lshr i32 %417, 16
  %419 = and i32 %418, 255
  %420 = lshr i32 %417, 24
  %421 = add i32 %38, 292
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = add i32 %38, 32
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = lshr i32 %430, 22
  %432 = shl nuw nsw i32 %431, 5
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = shl i32 %430, 4
  %435 = and i32 %434, 32752
  %436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %435)  ; LegacyF16ToF32(value)
  %437 = lshr i32 %430, 7
  %438 = and i32 %437, 32752
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %441 = extractvalue %dx.types.CBufRet.f32 %440, 3
  %442 = fmul fast float %441, 1.000000e+03
  %443 = fmul fast float %204, %442
  %444 = call float @dx.op.unary.f32(i32 22, float %443)  ; Frc(value)
  %445 = fadd fast float %444, %194
  %446 = fmul fast float %205, %442
  %447 = call float @dx.op.unary.f32(i32 22, float %446)  ; Frc(value)
  %448 = fadd fast float %447, %196
  %449 = fmul fast float %414, %442
  %450 = call float @dx.op.unary.f32(i32 22, float %449)  ; Frc(value)
  %451 = fmul fast float %450, 0x401921FB60000000
  %452 = fadd fast float %451, %433
  %453 = call float @dx.op.unary.f32(i32 13, float %452)  ; Sin(value)
  %454 = call float @dx.op.unary.f32(i32 12, float %452)  ; Cos(value)
  %455 = fsub fast float -0.000000e+00, %453
  %456 = fadd fast float %407, -5.000000e-01
  %457 = fadd fast float %408, -5.000000e-01
  %458 = fmul fast float %425, %456
  %459 = fmul fast float %427, %457
  %460 = fadd fast float %458, 5.000000e-01
  %461 = fadd fast float %459, 5.000000e-01
  %462 = fmul fast float %436, %460
  %463 = fmul fast float %439, %461
  %464 = fmul fast float %454, %462
  %465 = call float @dx.op.tertiary.f32(i32 46, float %455, float %463, float %464)  ; FMad(a,b,c)
  %466 = fmul fast float %453, %462
  %467 = call float @dx.op.tertiary.f32(i32 46, float %454, float %463, float %466)  ; FMad(a,b,c)
  %468 = fadd fast float %445, %465
  %469 = fadd fast float %448, %467
  %470 = icmp ugt i32 %419, 1
  %471 = icmp ugt i32 %417, 33554431
  %472 = or i1 %471, %470
  br i1 %472, label %473, label %498

; <label>:473                                     ; preds = %400
  %474 = add i32 %38, 228
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = lshr i32 %476, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = fmul fast float %441, %478
  %480 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %481 = mul nuw nsw i32 %419, %420
  %482 = uitofp i32 %481 to float
  %483 = fmul fast float %480, %482
  %484 = call float @dx.op.unary.f32(i32 27, float %483)  ; Round_ni(value)
  %485 = fptoui float %484 to i32
  %486 = urem i32 %485, %419
  %487 = udiv i32 %485, %420
  %488 = call float @dx.op.unary.f32(i32 22, float %468)  ; Frc(value)
  %489 = call float @dx.op.unary.f32(i32 22, float %469)  ; Frc(value)
  %490 = uitofp i32 %486 to float
  %491 = uitofp i32 %487 to float
  %492 = fadd fast float %488, %490
  %493 = fadd fast float %489, %491
  %494 = uitofp i32 %419 to float
  %495 = uitofp i32 %420 to float
  %496 = fdiv fast float %492, %494
  %497 = fdiv fast float %493, %495
  br label %498

; <label>:498                                     ; preds = %473, %400
  %499 = phi float [ %496, %473 ], [ %468, %400 ]
  %500 = phi float [ %497, %473 ], [ %469, %400 ]
  %501 = and i32 %394, 16
  %502 = icmp eq i32 %501, 0
  br i1 %502, label %699, label %503

; <label>:503                                     ; preds = %498
  %504 = add i32 %38, 360
  %505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %504, i32 undef)  ; BufferLoad(srv,index,wot)
  %506 = extractvalue %dx.types.ResRet.i32 %505, 0
  %507 = add i32 %506, 0
  %508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %507, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %509 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %508, %dx.types.Handle %62, float %499, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %510 = extractvalue %dx.types.ResRet.f32 %509, 0
  %511 = extractvalue %dx.types.ResRet.f32 %509, 1
  %512 = extractvalue %dx.types.ResRet.f32 %509, 2
  %513 = extractvalue %dx.types.ResRet.f32 %509, 3
  %514 = and i32 %417, 255
  %515 = uitofp i32 %514 to float
  %516 = lshr i32 %417, 8
  %517 = and i32 %516, 255
  %518 = uitofp i32 %517 to float
  %519 = fmul fast float %513, %515
  %520 = fadd fast float %519, %518
  %521 = fmul fast float %520, 0x3F70101000000000
  %522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %523 = extractvalue %dx.types.ResRet.i32 %522, 0
  %524 = and i32 %523, 512
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %534, label %526

; <label>:526                                     ; preds = %503
  %527 = add i32 %38, 444
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = add i32 %529, 0
  %531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %531, %dx.types.Handle %63, float %499, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %533 = extractvalue %dx.types.ResRet.f32 %532, 0
  br label %534

; <label>:534                                     ; preds = %526, %503
  %535 = phi float [ %533, %526 ], [ 1.000000e+00, %503 ]
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 33554432
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %646, label %540

; <label>:540                                     ; preds = %534
  %541 = add i32 %38, 224
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = and i32 %543, 65535
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = lshr i32 %543, 16
  %547 = call float @dx.op.legacyF16ToF32(i32 131, i32 %546)  ; LegacyF16ToF32(value)
  %548 = add i32 %38, 228
  %549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %548, i32 undef)  ; BufferLoad(srv,index,wot)
  %550 = extractvalue %dx.types.ResRet.i32 %549, 0
  %551 = and i32 %550, 65535
  %552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %551)  ; LegacyF16ToF32(value)
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %176, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = lshr i32 %554, 24
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %556, 0x3F70101020000000
  %558 = and i32 %554, 255
  %559 = uitofp i32 %558 to float
  %560 = fmul fast float %559, 0x3F70101020000000
  %561 = lshr i32 %554, 8
  %562 = and i32 %561, 255
  %563 = uitofp i32 %562 to float
  %564 = fmul fast float %563, 0x3F70101020000000
  %565 = lshr i32 %554, 16
  %566 = and i32 %565, 255
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = add i32 %38, 220
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = lshr i32 %571, 24
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %573, 0x3F70101020000000
  %575 = and i32 %571, 255
  %576 = uitofp i32 %575 to float
  %577 = fmul fast float %576, 0x3F70101020000000
  %578 = lshr i32 %571, 8
  %579 = and i32 %578, 255
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %580, 0x3F70101020000000
  %582 = lshr i32 %571, 16
  %583 = and i32 %582, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = bitcast float %510 to i32
  %587 = ashr i32 %586, 1
  %588 = sub nsw i32 1597463174, %587
  %589 = bitcast i32 %588 to float
  %590 = fmul fast float %510, 5.000000e-01
  %591 = fmul fast float %589, %589
  %592 = fmul fast float %591, %590
  %593 = fsub fast float 1.500000e+00, %592
  %594 = fmul fast float %589, %510
  %595 = fmul fast float %594, %593
  %596 = bitcast float %511 to i32
  %597 = ashr i32 %596, 1
  %598 = sub nsw i32 1597463174, %597
  %599 = bitcast i32 %598 to float
  %600 = fmul fast float %511, 5.000000e-01
  %601 = fmul fast float %599, %599
  %602 = fmul fast float %601, %600
  %603 = fsub fast float 1.500000e+00, %602
  %604 = fmul fast float %599, %511
  %605 = fmul fast float %604, %603
  %606 = bitcast float %512 to i32
  %607 = ashr i32 %606, 1
  %608 = sub nsw i32 1597463174, %607
  %609 = bitcast i32 %608 to float
  %610 = fmul fast float %512, 5.000000e-01
  %611 = fmul fast float %609, %609
  %612 = fmul fast float %611, %610
  %613 = fsub fast float 1.500000e+00, %612
  %614 = fmul fast float %609, %512
  %615 = fmul fast float %614, %613
  %616 = fsub fast float %595, %577
  %617 = fsub fast float %605, %581
  %618 = fsub fast float %615, %585
  %619 = fmul fast float %616, %545
  %620 = fmul fast float %617, %547
  %621 = fmul fast float %618, %552
  %622 = fadd fast float %619, %560
  %623 = fadd fast float %620, %564
  %624 = fadd fast float %621, %568
  %625 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %626 = call float @dx.op.unary.f32(i32 7, float %623)  ; Saturate(value)
  %627 = call float @dx.op.unary.f32(i32 7, float %624)  ; Saturate(value)
  %628 = fmul fast float %625, %625
  %629 = fmul fast float %626, %626
  %630 = fmul fast float %627, %627
  %631 = fsub fast float %628, %510
  %632 = fsub fast float %629, %511
  %633 = fsub fast float %630, %512
  %634 = fmul fast float %631, %535
  %635 = fmul fast float %632, %535
  %636 = fmul fast float %633, %535
  %637 = fadd fast float %634, %510
  %638 = fadd fast float %635, %511
  %639 = fadd fast float %636, %512
  %640 = fadd fast float %557, %521
  %641 = fsub fast float %640, %574
  %642 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %643 = fsub fast float %642, %521
  %644 = fmul fast float %643, %535
  %645 = fadd fast float %644, %521
  br label %699

; <label>:646                                     ; preds = %534
  %647 = and i32 %537, 134217728
  %648 = icmp eq i32 %647, 0
  br i1 %648, label %683, label %649

; <label>:649                                     ; preds = %646
  %650 = call float @dx.op.unary.f32(i32 24, float %181)  ; Sqrt(value)
  %651 = call float @dx.op.unary.f32(i32 24, float %185)  ; Sqrt(value)
  %652 = call float @dx.op.unary.f32(i32 24, float %189)  ; Sqrt(value)
  %653 = fadd fast float %650, -5.000000e-01
  %654 = fadd fast float %651, -5.000000e-01
  %655 = fadd fast float %652, -5.000000e-01
  %656 = fmul fast float %653, %535
  %657 = fmul fast float %654, %535
  %658 = fmul fast float %655, %535
  %659 = fadd fast float %656, 5.000000e-01
  %660 = fadd fast float %657, 5.000000e-01
  %661 = fadd fast float %658, 5.000000e-01
  %662 = call float @dx.op.unary.f32(i32 24, float %510)  ; Sqrt(value)
  %663 = call float @dx.op.unary.f32(i32 24, float %511)  ; Sqrt(value)
  %664 = call float @dx.op.unary.f32(i32 24, float %512)  ; Sqrt(value)
  %665 = fmul fast float %659, 2.000000e+00
  %666 = fsub fast float 1.000000e+00, %665
  %667 = fmul fast float %666, %662
  %668 = fadd fast float %667, %665
  %669 = fmul fast float %668, %662
  %670 = fmul fast float %660, 2.000000e+00
  %671 = fsub fast float 1.000000e+00, %670
  %672 = fmul fast float %671, %663
  %673 = fadd fast float %672, %670
  %674 = fmul fast float %673, %663
  %675 = fmul fast float %661, 2.000000e+00
  %676 = fsub fast float 1.000000e+00, %675
  %677 = fmul fast float %676, %664
  %678 = fadd fast float %677, %675
  %679 = fmul fast float %678, %664
  %680 = fmul fast float %669, %669
  %681 = fmul fast float %674, %674
  %682 = fmul fast float %679, %679
  br label %699

; <label>:683                                     ; preds = %646
  %684 = fmul fast float %181, %181
  %685 = fmul fast float %185, %185
  %686 = fmul fast float %189, %189
  %687 = fadd fast float %684, -1.000000e+00
  %688 = fadd fast float %685, -1.000000e+00
  %689 = fadd fast float %686, -1.000000e+00
  %690 = fmul fast float %535, %687
  %691 = fmul fast float %535, %688
  %692 = fmul fast float %535, %689
  %693 = fadd fast float %690, 1.000000e+00
  %694 = fadd fast float %691, 1.000000e+00
  %695 = fadd fast float %692, 1.000000e+00
  %696 = fmul fast float %693, %510
  %697 = fmul fast float %694, %511
  %698 = fmul fast float %695, %512
  br label %699

; <label>:699                                     ; preds = %683, %649, %540, %498
  %700 = phi float [ %645, %540 ], [ %521, %649 ], [ %521, %683 ], [ 0x3FA23C0BE0000000, %498 ]
  %701 = phi float [ %637, %540 ], [ %680, %649 ], [ %696, %683 ], [ 1.000000e+00, %498 ]
  %702 = phi float [ %638, %540 ], [ %681, %649 ], [ %697, %683 ], [ 1.000000e+00, %498 ]
  %703 = phi float [ %639, %540 ], [ %682, %649 ], [ %698, %683 ], [ 1.000000e+00, %498 ]
  %704 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %705 = extractvalue %dx.types.CBufRet.i32 %704, 1
  %706 = and i32 %705, 1
  %707 = icmp ne i32 %706, 0
  %708 = add i32 %38, 356
  %709 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %708, i32 undef)  ; BufferLoad(srv,index,wot)
  %710 = extractvalue %dx.types.ResRet.i32 %709, 0
  %711 = and i32 %710, 32
  %712 = icmp ne i32 %711, 0
  %713 = and i1 %707, %712
  %714 = select i1 %713, float 1.000000e+00, float %701
  %715 = select i1 %713, float 0x3FD3333340000000, float %702
  %716 = select i1 %713, float 0x3FD3333340000000, float %703
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = and i32 %718, 32
  %720 = icmp eq i32 %719, 0
  br i1 %720, label %793, label %721

; <label>:721                                     ; preds = %699
  %722 = add i32 %38, 92
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %722, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = add i32 %38, 376
  %726 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %725, i32 undef)  ; BufferLoad(srv,index,wot)
  %727 = extractvalue %dx.types.ResRet.i32 %726, 0
  %728 = add i32 %727, 0
  %729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %728, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %730 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %729, %dx.types.Handle %62, float %499, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %731 = extractvalue %dx.types.ResRet.f32 %730, 0
  %732 = extractvalue %dx.types.ResRet.f32 %730, 1
  %733 = extractvalue %dx.types.ResRet.f32 %730, 2
  %734 = extractvalue %dx.types.ResRet.f32 %730, 3
  %735 = and i32 %724, 255
  %736 = uitofp i32 %735 to float
  %737 = lshr i32 %724, 8
  %738 = and i32 %737, 255
  %739 = uitofp i32 %738 to float
  %740 = lshr i32 %724, 16
  %741 = and i32 %740, 255
  %742 = uitofp i32 %741 to float
  %743 = fmul fast float %742, 0x3F70101000000000
  %744 = fmul fast float %731, %736
  %745 = fadd fast float %744, %739
  %746 = fmul fast float %745, 0x3F70101000000000
  %747 = fadd fast float %732, -5.000000e-01
  %748 = fadd fast float %734, -5.000000e-01
  %749 = fmul fast float %747, %743
  %750 = fmul fast float %748, %743
  %751 = fadd fast float %749, 5.000000e-01
  %752 = fadd fast float %750, 5.000000e-01
  %753 = fmul fast float %751, 2.000000e+00
  %754 = fadd fast float %753, -1.000000e+00
  %755 = fmul fast float %752, 2.000000e+00
  %756 = fadd fast float %755, -1.000000e+00
  %757 = fadd fast float %754, %756
  %758 = fmul fast float %757, 5.000000e-01
  %759 = fsub fast float %754, %756
  %760 = fmul fast float %759, 5.000000e-01
  %761 = call float @dx.op.unary.f32(i32 6, float %758)  ; FAbs(value)
  %762 = fsub fast float 1.000000e+00, %761
  %763 = call float @dx.op.unary.f32(i32 6, float %760)  ; FAbs(value)
  %764 = fsub fast float %762, %763
  %765 = call float @dx.op.dot3.f32(i32 55, float %758, float %760, float %764, float %758, float %760, float %764)  ; Dot3(ax,ay,az,bx,by,bz)
  %766 = call float @dx.op.unary.f32(i32 25, float %765)  ; Rsqrt(value)
  %767 = fmul fast float %758, %766
  %768 = fmul fast float %760, %766
  %769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %770 = extractvalue %dx.types.ResRet.i32 %769, 0
  %771 = and i32 %770, 67108864
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %789, label %773

; <label>:773                                     ; preds = %721
  %774 = add i32 %38, 280
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %774, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 65535
  %778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %777)  ; LegacyF16ToF32(value)
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = and i32 %780, 65535
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = lshr i32 %776, 16
  %784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %783)  ; LegacyF16ToF32(value)
  %785 = fsub fast float %746, %784
  %786 = fmul fast float %785, %778
  %787 = fadd fast float %786, %782
  %788 = call float @dx.op.unary.f32(i32 7, float %787)  ; Saturate(value)
  br label %789

; <label>:789                                     ; preds = %773, %721
  %790 = phi float [ %788, %773 ], [ %746, %721 ]
  %791 = call float @dx.op.dot2.f32(i32 54, float %767, float %768, float %403, float %404)  ; Dot2(ax,ay,bx,by)
  %792 = call float @dx.op.dot2.f32(i32 54, float %767, float %768, float %405, float %406)  ; Dot2(ax,ay,bx,by)
  br label %793

; <label>:793                                     ; preds = %789, %699
  %794 = phi float [ %790, %789 ], [ 0x3FD6666660000000, %699 ]
  %795 = phi float [ %791, %789 ], [ 0.000000e+00, %699 ]
  %796 = phi float [ %792, %789 ], [ 0.000000e+00, %699 ]
  %797 = phi float [ %733, %789 ], [ 1.000000e+00, %699 ]
  %798 = add i32 %38, 160
  %799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %800 = extractvalue %dx.types.ResRet.i32 %799, 0
  %801 = lshr i32 %800, 22
  %802 = shl nuw nsw i32 %801, 5
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %805 = extractvalue %dx.types.ResRet.i32 %804, 0
  %806 = and i32 %805, 64
  %807 = icmp eq i32 %806, 0
  br i1 %807, label %841, label %808

; <label>:808                                     ; preds = %793
  %809 = add i32 %38, 392
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = add i32 %811, 0
  %813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = and i32 %815, 131072
  %817 = icmp eq i32 %816, 0
  %818 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %813, %dx.types.Handle %62, float %499, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %819 = extractvalue %dx.types.ResRet.f32 %818, 0
  %820 = extractvalue %dx.types.ResRet.f32 %818, 1
  %821 = extractvalue %dx.types.ResRet.f32 %818, 2
  %822 = fmul fast float %819, %169
  %823 = fmul fast float %820, %172
  %824 = fmul fast float %821, %175
  br i1 %817, label %831, label %825

; <label>:825                                     ; preds = %808
  %826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %827 = extractvalue %dx.types.CBufRet.f32 %826, 0
  %828 = fmul fast float %827, %822
  %829 = fmul fast float %827, %823
  %830 = fmul fast float %827, %824
  br label %831

; <label>:831                                     ; preds = %825, %808
  %832 = phi float [ %828, %825 ], [ %822, %808 ]
  %833 = phi float [ %829, %825 ], [ %823, %808 ]
  %834 = phi float [ %830, %825 ], [ %824, %808 ]
  %835 = fmul fast float %832, %803
  %836 = select i1 %163, float %835, float %832
  %837 = call float @dx.op.dot3.f32(i32 55, float %836, float %833, float %834, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %838 = select i1 %163, float 0.000000e+00, float %832
  %839 = select i1 %163, float %837, float %833
  %840 = select i1 %163, float 0.000000e+00, float %834
  br label %841

; <label>:841                                     ; preds = %831, %793, %385
  %842 = phi float [ 0.000000e+00, %385 ], [ %795, %793 ], [ %795, %831 ]
  %843 = phi float [ 0.000000e+00, %385 ], [ %796, %793 ], [ %796, %831 ]
  %844 = phi float [ 0.000000e+00, %385 ], [ 0.000000e+00, %793 ], [ %838, %831 ]
  %845 = phi float [ 0.000000e+00, %385 ], [ 0.000000e+00, %793 ], [ %839, %831 ]
  %846 = phi float [ 0.000000e+00, %385 ], [ 0.000000e+00, %793 ], [ %840, %831 ]
  %847 = phi float [ 0.000000e+00, %385 ], [ %714, %793 ], [ %714, %831 ]
  %848 = phi float [ 0.000000e+00, %385 ], [ %715, %793 ], [ %715, %831 ]
  %849 = phi float [ 0.000000e+00, %385 ], [ %716, %793 ], [ %716, %831 ]
  %850 = phi float [ 0.000000e+00, %385 ], [ %700, %793 ], [ %700, %831 ]
  %851 = phi float [ 0.000000e+00, %385 ], [ 1.000000e+00, %793 ], [ 1.000000e+00, %831 ]
  %852 = phi float [ 0.000000e+00, %385 ], [ %794, %793 ], [ %794, %831 ]
  %853 = phi float [ 0.000000e+00, %385 ], [ %797, %793 ], [ %797, %831 ]
  br i1 %336, label %1678, label %854

; <label>:854                                     ; preds = %841
  %855 = icmp ult i32 %391, 2
  %856 = add i32 %38, 40
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = add i32 %38, 44
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = or i32 %861, %858
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %1678, label %864

; <label>:864                                     ; preds = %854
  %865 = and i32 %858, 262144
  %866 = icmp ne i32 %865, 0
  %867 = select i1 %866, float %41, float 1.000000e+00
  %868 = select i1 %866, float %42, float 0.000000e+00
  %869 = select i1 %866, float %43, float 0.000000e+00
  %870 = select i1 %866, float %44, float 1.000000e+00
  %871 = select i1 %866, float %45, float %54
  %872 = select i1 %866, float %46, float %55
  %873 = add i32 %38, 300
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = lshr i32 %875, 16
  %877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %876)  ; LegacyF16ToF32(value)
  %878 = fmul fast float %877, 0x3F50624DE0000000
  %879 = add i32 %38, 104
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = lshr i32 %881, 16
  %883 = and i32 %882, 255
  %884 = lshr i32 %881, 24
  %885 = add i32 %38, 308
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %885, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = and i32 %887, 65535
  %889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %888)  ; LegacyF16ToF32(value)
  %890 = lshr i32 %887, 16
  %891 = call float @dx.op.legacyF16ToF32(i32 131, i32 %890)  ; LegacyF16ToF32(value)
  %892 = add i32 %38, 48
  %893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %892, i32 undef)  ; BufferLoad(srv,index,wot)
  %894 = extractvalue %dx.types.ResRet.i32 %893, 0
  %895 = lshr i32 %894, 22
  %896 = shl nuw nsw i32 %895, 5
  %897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %896)  ; LegacyF16ToF32(value)
  %898 = shl i32 %894, 4
  %899 = and i32 %898, 32752
  %900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %899)  ; LegacyF16ToF32(value)
  %901 = lshr i32 %894, 7
  %902 = and i32 %901, 32752
  %903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %902)  ; LegacyF16ToF32(value)
  %904 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %905 = extractvalue %dx.types.CBufRet.f32 %904, 3
  %906 = fmul fast float %905, 1.000000e+03
  %907 = fmul fast float %246, %906
  %908 = call float @dx.op.unary.f32(i32 22, float %907)  ; Frc(value)
  %909 = fadd fast float %908, %236
  %910 = fmul fast float %247, %906
  %911 = call float @dx.op.unary.f32(i32 22, float %910)  ; Frc(value)
  %912 = fadd fast float %911, %238
  %913 = fmul fast float %878, %906
  %914 = call float @dx.op.unary.f32(i32 22, float %913)  ; Frc(value)
  %915 = fmul fast float %914, 0x401921FB60000000
  %916 = fadd fast float %915, %897
  %917 = call float @dx.op.unary.f32(i32 13, float %916)  ; Sin(value)
  %918 = call float @dx.op.unary.f32(i32 12, float %916)  ; Cos(value)
  %919 = fsub fast float -0.000000e+00, %917
  %920 = fadd fast float %871, -5.000000e-01
  %921 = fadd fast float %872, -5.000000e-01
  %922 = fmul fast float %889, %920
  %923 = fmul fast float %891, %921
  %924 = fadd fast float %922, 5.000000e-01
  %925 = fadd fast float %923, 5.000000e-01
  %926 = fmul fast float %900, %924
  %927 = fmul fast float %903, %925
  %928 = fmul fast float %918, %926
  %929 = call float @dx.op.tertiary.f32(i32 46, float %919, float %927, float %928)  ; FMad(a,b,c)
  %930 = fmul fast float %917, %926
  %931 = call float @dx.op.tertiary.f32(i32 46, float %918, float %927, float %930)  ; FMad(a,b,c)
  %932 = fadd fast float %909, %929
  %933 = fadd fast float %912, %931
  %934 = icmp ugt i32 %883, 1
  %935 = icmp ugt i32 %881, 33554431
  %936 = or i1 %935, %934
  br i1 %936, label %937, label %962

; <label>:937                                     ; preds = %864
  %938 = add i32 %38, 244
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = lshr i32 %940, 16
  %942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %941)  ; LegacyF16ToF32(value)
  %943 = fmul fast float %905, %942
  %944 = call float @dx.op.unary.f32(i32 22, float %943)  ; Frc(value)
  %945 = mul nuw nsw i32 %883, %884
  %946 = uitofp i32 %945 to float
  %947 = fmul fast float %944, %946
  %948 = call float @dx.op.unary.f32(i32 27, float %947)  ; Round_ni(value)
  %949 = fptoui float %948 to i32
  %950 = urem i32 %949, %883
  %951 = udiv i32 %949, %884
  %952 = call float @dx.op.unary.f32(i32 22, float %932)  ; Frc(value)
  %953 = call float @dx.op.unary.f32(i32 22, float %933)  ; Frc(value)
  %954 = uitofp i32 %950 to float
  %955 = uitofp i32 %951 to float
  %956 = fadd fast float %952, %954
  %957 = fadd fast float %953, %955
  %958 = uitofp i32 %883 to float
  %959 = uitofp i32 %884 to float
  %960 = fdiv fast float %956, %958
  %961 = fdiv fast float %957, %959
  br label %962

; <label>:962                                     ; preds = %937, %864
  %963 = phi float [ %960, %937 ], [ %932, %864 ]
  %964 = phi float [ %961, %937 ], [ %933, %864 ]
  %965 = and i32 %858, 16777216
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %1076, label %967

; <label>:967                                     ; preds = %962
  %968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %969 = extractvalue %dx.types.CBufRet.f32 %968, 0
  %970 = extractvalue %dx.types.CBufRet.f32 %968, 1
  %971 = extractvalue %dx.types.CBufRet.f32 %968, 2
  %972 = fadd fast float %969, %121
  %973 = fadd fast float %970, %122
  %974 = fadd fast float %971, %123
  %975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %976 = extractvalue %dx.types.CBufRet.f32 %975, 0
  %977 = call float @dx.op.unary.f32(i32 7, float %976)  ; Saturate(value)
  %978 = icmp eq i32 %39, 65535
  br i1 %978, label %1073, label %979

; <label>:979                                     ; preds = %967
  %980 = lshr i32 %39, 1
  %981 = shl i32 %980, 2
  %982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %981, i32 undef)  ; BufferLoad(srv,index,wot)
  %983 = extractvalue %dx.types.ResRet.i32 %982, 0
  %984 = and i32 %39, 1
  %985 = icmp ne i32 %984, 0
  %986 = lshr i32 %983, 16
  %987 = and i32 %983, 65535
  %988 = select i1 %985, i32 %986, i32 %987
  %989 = icmp eq i32 %988, 65535
  br i1 %989, label %1069, label %990

; <label>:990                                     ; preds = %979
  %991 = mul nuw nsw i32 %988, 40
  %992 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %991, i32 undef)  ; BufferLoad(srv,index,wot)
  %993 = extractvalue %dx.types.ResRet.f32 %992, 0
  %994 = extractvalue %dx.types.ResRet.f32 %992, 1
  %995 = extractvalue %dx.types.ResRet.f32 %992, 2
  %996 = add nuw nsw i32 %991, 12
  %997 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.f32 %997, 0
  %999 = extractvalue %dx.types.ResRet.f32 %997, 1
  %1000 = extractvalue %dx.types.ResRet.f32 %997, 2
  %1001 = add nuw nsw i32 %991, 24
  %1002 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1001, i32 undef)  ; BufferLoad(srv,index,wot)
  %1003 = extractvalue %dx.types.ResRet.f32 %1002, 0
  %1004 = extractvalue %dx.types.ResRet.f32 %1002, 1
  %1005 = extractvalue %dx.types.ResRet.f32 %1002, 2
  %1006 = add nuw nsw i32 %991, 36
  %1007 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1006, i32 undef)  ; BufferLoad(srv,index,wot)
  %1008 = extractvalue %dx.types.ResRet.f32 %1007, 0
  %1009 = fsub fast float %972, %993
  %1010 = fsub fast float %973, %994
  %1011 = fsub fast float %974, %995
  %1012 = fmul fast float %1008, %1009
  %1013 = fmul fast float %1008, %1010
  %1014 = fmul fast float %1008, %1011
  %1015 = call float @dx.op.unary.f32(i32 27, float %1012)  ; Round_ni(value)
  %1016 = call float @dx.op.unary.f32(i32 27, float %1013)  ; Round_ni(value)
  %1017 = call float @dx.op.unary.f32(i32 27, float %1014)  ; Round_ni(value)
  %1018 = fadd fast float %1015, 5.000000e-01
  %1019 = fadd fast float %1016, 5.000000e-01
  %1020 = fadd fast float %1017, 5.000000e-01
  %1021 = fmul fast float %1018, %998
  %1022 = fmul fast float %1019, %999
  %1023 = fmul fast float %1020, %1000
  %1024 = shl i32 %39, 2
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = add i32 %1026, 0
  %1028 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1027, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1029 = call float @dx.op.unary.f32(i32 22, float %1021)  ; Frc(value)
  %1030 = call float @dx.op.unary.f32(i32 22, float %1022)  ; Frc(value)
  %1031 = call float @dx.op.unary.f32(i32 22, float %1023)  ; Frc(value)
  %1032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1028, %dx.types.Handle %35, float %1029, float %1030, float %1031, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1033 = extractvalue %dx.types.ResRet.f32 %1032, 0
  %1034 = extractvalue %dx.types.ResRet.f32 %1032, 1
  %1035 = extractvalue %dx.types.ResRet.f32 %1032, 2
  %1036 = fmul fast float %1033, 1.023000e+03
  %1037 = fmul fast float %1034, 1.023000e+03
  %1038 = fmul fast float %1035, 1.023000e+03
  %1039 = fadd fast float %1036, 5.000000e-01
  %1040 = fadd fast float %1037, 5.000000e-01
  %1041 = fadd fast float %1038, 5.000000e-01
  %1042 = call float @dx.op.unary.f32(i32 27, float %1039)  ; Round_ni(value)
  %1043 = call float @dx.op.unary.f32(i32 27, float %1040)  ; Round_ni(value)
  %1044 = call float @dx.op.unary.f32(i32 27, float %1041)  ; Round_ni(value)
  %1045 = fsub fast float %1012, %1015
  %1046 = fsub fast float %1013, %1016
  %1047 = fsub fast float %1014, %1017
  %1048 = fmul fast float %1045, 7.500000e-01
  %1049 = fmul fast float %1046, 7.500000e-01
  %1050 = fmul fast float %1047, 7.500000e-01
  %1051 = fadd fast float %1015, 1.250000e-01
  %1052 = fadd fast float %1051, %1048
  %1053 = fadd fast float %1052, %1042
  %1054 = fadd fast float %1016, 1.250000e-01
  %1055 = fadd fast float %1054, %1049
  %1056 = fadd fast float %1055, %1043
  %1057 = fadd fast float %1017, 1.250000e-01
  %1058 = fadd fast float %1057, %1050
  %1059 = fadd fast float %1058, %1044
  %1060 = fmul fast float %1053, %1003
  %1061 = fmul fast float %1056, %1004
  %1062 = fmul fast float %1059, %1005
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = add i32 %1064, 0
  %1066 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1065, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1067 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1066, %dx.types.Handle %33, float %1060, float %1061, float %1062, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  br label %1069

; <label>:1069                                    ; preds = %990, %979
  %1070 = phi float [ %1068, %990 ], [ -1.000000e+00, %979 ]
  %1071 = fadd fast float %1070, %977
  %1072 = call float @dx.op.unary.f32(i32 7, float %1071)  ; Saturate(value)
  br label %1073

; <label>:1073                                    ; preds = %1069, %967
  %1074 = phi float [ %1072, %1069 ], [ %977, %967 ]
  %1075 = fmul fast float %1074, %388
  br label %1076

; <label>:1076                                    ; preds = %1073, %962
  %1077 = phi float [ %1075, %1073 ], [ %388, %962 ]
  %1078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.i32 %1078, 0
  %1080 = and i32 %1079, 256
  %1081 = icmp eq i32 %1080, 0
  br i1 %1081, label %1128, label %1082

; <label>:1082                                    ; preds = %1076
  %1083 = add i32 %38, 428
  %1084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.i32 %1084, 0
  %1086 = add i32 %1085, 0
  %1087 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1086, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1088 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1087, %dx.types.Handle %63, float %963, float %964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = add i32 %38, 116
  %1091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1090, i32 undef)  ; BufferLoad(srv,index,wot)
  %1092 = extractvalue %dx.types.ResRet.i32 %1091, 0
  %1093 = shl i32 %1092, 4
  %1094 = and i32 %1093, 32752
  %1095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1094)  ; LegacyF16ToF32(value)
  %1096 = lshr i32 %1092, 7
  %1097 = and i32 %1096, 32752
  %1098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1097)  ; LegacyF16ToF32(value)
  %1099 = fsub fast float 1.000000e+00, %1077
  %1100 = call float @dx.op.binary.f32(i32 35, float %1099, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1101 = bitcast float %1077 to i32
  %1102 = sitofp i32 %1101 to float
  %1103 = fadd fast float %1102, 0xC1CFBF8940000000
  %1104 = fmul fast float %1098, %1103
  %1105 = fadd fast float %1104, 0x41CFBF8940000000
  %1106 = fptosi float %1105 to i32
  %1107 = bitcast i32 %1106 to float
  %1108 = bitcast float %1100 to i32
  %1109 = sitofp i32 %1108 to float
  %1110 = fadd fast float %1109, 0xC1CFBF8940000000
  %1111 = fmul fast float %1110, %1098
  %1112 = fadd fast float %1111, 0x41CFBF8940000000
  %1113 = fptosi float %1112 to i32
  %1114 = bitcast i32 %1113 to float
  %1115 = fmul fast float %1107, %1095
  %1116 = fmul fast float %1114, %1095
  %1117 = fsub fast float %1100, %1115
  %1118 = fadd fast float %1116, %1100
  %1119 = call float @dx.op.unary.f32(i32 7, float %1117)  ; Saturate(value)
  %1120 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1121 = fsub fast float %1089, %1119
  %1122 = fsub fast float %1120, %1119
  %1123 = bitcast float %1122 to i32
  %1124 = sub nsw i32 2129859010, %1123
  %1125 = bitcast i32 %1124 to float
  %1126 = fmul fast float %1125, %1121
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  br label %1128

; <label>:1128                                    ; preds = %1082, %1076
  %1129 = phi float [ %1127, %1082 ], [ %1077, %1076 ]
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = and i32 %1131, 128
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1150, label %1134

; <label>:1134                                    ; preds = %1128
  %1135 = add i32 %38, 412
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = add i32 %1137, 0
  %1139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1139, %dx.types.Handle %63, float %963, float %964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = and i32 %1143, 524288
  %1145 = icmp ne i32 %1144, 0
  %1146 = fcmp fast ogt float %1141, 0x3FE0101020000000
  %1147 = select i1 %1146, float 1.000000e+00, float 0.000000e+00
  %1148 = select i1 %1145, float %1147, float %1141
  %1149 = fmul fast float %1148, %1129
  br label %1150

; <label>:1150                                    ; preds = %1134, %1128
  %1151 = phi float [ %1149, %1134 ], [ %1129, %1128 ]
  %1152 = fcmp fast ult float %1151, 0x3F70101020000000
  br i1 %1152, label %1678, label %1153

; <label>:1153                                    ; preds = %1150
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = and i32 %1155, 16
  %1157 = icmp eq i32 %1156, 0
  br i1 %1157, label %1356, label %1158

; <label>:1158                                    ; preds = %1153
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = add i32 %38, 364
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1161, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = add i32 %1163, 0
  %1165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1166 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1165, %dx.types.Handle %62, float %963, float %964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1167 = extractvalue %dx.types.ResRet.f32 %1166, 0
  %1168 = extractvalue %dx.types.ResRet.f32 %1166, 1
  %1169 = extractvalue %dx.types.ResRet.f32 %1166, 2
  %1170 = extractvalue %dx.types.ResRet.f32 %1166, 3
  %1171 = and i32 %1160, 255
  %1172 = uitofp i32 %1171 to float
  %1173 = lshr i32 %1160, 8
  %1174 = and i32 %1173, 255
  %1175 = uitofp i32 %1174 to float
  %1176 = fmul fast float %1170, %1172
  %1177 = fadd fast float %1176, %1175
  %1178 = fmul fast float %1177, 0x3F70101000000000
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 512
  %1182 = icmp eq i32 %1181, 0
  br i1 %1182, label %1191, label %1183

; <label>:1183                                    ; preds = %1158
  %1184 = add i32 %38, 448
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1184, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = add i32 %1186, 0
  %1188 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1187, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1189 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1188, %dx.types.Handle %63, float %963, float %964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1190 = extractvalue %dx.types.ResRet.f32 %1189, 0
  br label %1191

; <label>:1191                                    ; preds = %1183, %1158
  %1192 = phi float [ %1190, %1183 ], [ 1.000000e+00, %1158 ]
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = and i32 %1194, 33554432
  %1196 = icmp eq i32 %1195, 0
  br i1 %1196, label %1303, label %1197

; <label>:1197                                    ; preds = %1191
  %1198 = add i32 %38, 240
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = and i32 %1200, 65535
  %1202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1201)  ; LegacyF16ToF32(value)
  %1203 = lshr i32 %1200, 16
  %1204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1203)  ; LegacyF16ToF32(value)
  %1205 = add i32 %38, 244
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1205, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 65535
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = lshr i32 %1211, 24
  %1213 = uitofp i32 %1212 to float
  %1214 = fmul fast float %1213, 0x3F70101020000000
  %1215 = and i32 %1211, 255
  %1216 = uitofp i32 %1215 to float
  %1217 = fmul fast float %1216, 0x3F70101020000000
  %1218 = lshr i32 %1211, 8
  %1219 = and i32 %1218, 255
  %1220 = uitofp i32 %1219 to float
  %1221 = fmul fast float %1220, 0x3F70101020000000
  %1222 = lshr i32 %1211, 16
  %1223 = and i32 %1222, 255
  %1224 = uitofp i32 %1223 to float
  %1225 = fmul fast float %1224, 0x3F70101020000000
  %1226 = add i32 %38, 236
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1226, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = lshr i32 %1228, 24
  %1230 = uitofp i32 %1229 to float
  %1231 = fmul fast float %1230, 0x3F70101020000000
  %1232 = and i32 %1228, 255
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1233, 0x3F70101020000000
  %1235 = lshr i32 %1228, 8
  %1236 = and i32 %1235, 255
  %1237 = uitofp i32 %1236 to float
  %1238 = fmul fast float %1237, 0x3F70101020000000
  %1239 = lshr i32 %1228, 16
  %1240 = and i32 %1239, 255
  %1241 = uitofp i32 %1240 to float
  %1242 = fmul fast float %1241, 0x3F70101020000000
  %1243 = bitcast float %1167 to i32
  %1244 = ashr i32 %1243, 1
  %1245 = sub nsw i32 1597463174, %1244
  %1246 = bitcast i32 %1245 to float
  %1247 = fmul fast float %1167, 5.000000e-01
  %1248 = fmul fast float %1246, %1246
  %1249 = fmul fast float %1248, %1247
  %1250 = fsub fast float 1.500000e+00, %1249
  %1251 = fmul fast float %1246, %1167
  %1252 = fmul fast float %1251, %1250
  %1253 = bitcast float %1168 to i32
  %1254 = ashr i32 %1253, 1
  %1255 = sub nsw i32 1597463174, %1254
  %1256 = bitcast i32 %1255 to float
  %1257 = fmul fast float %1168, 5.000000e-01
  %1258 = fmul fast float %1256, %1256
  %1259 = fmul fast float %1258, %1257
  %1260 = fsub fast float 1.500000e+00, %1259
  %1261 = fmul fast float %1256, %1168
  %1262 = fmul fast float %1261, %1260
  %1263 = bitcast float %1169 to i32
  %1264 = ashr i32 %1263, 1
  %1265 = sub nsw i32 1597463174, %1264
  %1266 = bitcast i32 %1265 to float
  %1267 = fmul fast float %1169, 5.000000e-01
  %1268 = fmul fast float %1266, %1266
  %1269 = fmul fast float %1268, %1267
  %1270 = fsub fast float 1.500000e+00, %1269
  %1271 = fmul fast float %1266, %1169
  %1272 = fmul fast float %1271, %1270
  %1273 = fsub fast float %1252, %1234
  %1274 = fsub fast float %1262, %1238
  %1275 = fsub fast float %1272, %1242
  %1276 = fmul fast float %1273, %1202
  %1277 = fmul fast float %1274, %1204
  %1278 = fmul fast float %1275, %1209
  %1279 = fadd fast float %1276, %1217
  %1280 = fadd fast float %1277, %1221
  %1281 = fadd fast float %1278, %1225
  %1282 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1283 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1284 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1285 = fmul fast float %1282, %1282
  %1286 = fmul fast float %1283, %1283
  %1287 = fmul fast float %1284, %1284
  %1288 = fsub fast float %1285, %1167
  %1289 = fsub fast float %1286, %1168
  %1290 = fsub fast float %1287, %1169
  %1291 = fmul fast float %1288, %1192
  %1292 = fmul fast float %1289, %1192
  %1293 = fmul fast float %1290, %1192
  %1294 = fadd fast float %1291, %1167
  %1295 = fadd fast float %1292, %1168
  %1296 = fadd fast float %1293, %1169
  %1297 = fadd fast float %1214, %1178
  %1298 = fsub fast float %1297, %1231
  %1299 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1300 = fsub fast float %1299, %1178
  %1301 = fmul fast float %1300, %1192
  %1302 = fadd fast float %1301, %1178
  br label %1356

; <label>:1303                                    ; preds = %1191
  %1304 = and i32 %1194, 134217728
  %1305 = icmp eq i32 %1304, 0
  br i1 %1305, label %1340, label %1306

; <label>:1306                                    ; preds = %1303
  %1307 = call float @dx.op.unary.f32(i32 24, float %223)  ; Sqrt(value)
  %1308 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %1309 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %1310 = fadd fast float %1307, -5.000000e-01
  %1311 = fadd fast float %1308, -5.000000e-01
  %1312 = fadd fast float %1309, -5.000000e-01
  %1313 = fmul fast float %1310, %1192
  %1314 = fmul fast float %1311, %1192
  %1315 = fmul fast float %1312, %1192
  %1316 = fadd fast float %1313, 5.000000e-01
  %1317 = fadd fast float %1314, 5.000000e-01
  %1318 = fadd fast float %1315, 5.000000e-01
  %1319 = call float @dx.op.unary.f32(i32 24, float %1167)  ; Sqrt(value)
  %1320 = call float @dx.op.unary.f32(i32 24, float %1168)  ; Sqrt(value)
  %1321 = call float @dx.op.unary.f32(i32 24, float %1169)  ; Sqrt(value)
  %1322 = fmul fast float %1316, 2.000000e+00
  %1323 = fsub fast float 1.000000e+00, %1322
  %1324 = fmul fast float %1323, %1319
  %1325 = fadd fast float %1324, %1322
  %1326 = fmul fast float %1325, %1319
  %1327 = fmul fast float %1317, 2.000000e+00
  %1328 = fsub fast float 1.000000e+00, %1327
  %1329 = fmul fast float %1328, %1320
  %1330 = fadd fast float %1329, %1327
  %1331 = fmul fast float %1330, %1320
  %1332 = fmul fast float %1318, 2.000000e+00
  %1333 = fsub fast float 1.000000e+00, %1332
  %1334 = fmul fast float %1333, %1321
  %1335 = fadd fast float %1334, %1332
  %1336 = fmul fast float %1335, %1321
  %1337 = fmul fast float %1326, %1326
  %1338 = fmul fast float %1331, %1331
  %1339 = fmul fast float %1336, %1336
  br label %1356

; <label>:1340                                    ; preds = %1303
  %1341 = fmul fast float %223, %223
  %1342 = fmul fast float %227, %227
  %1343 = fmul fast float %231, %231
  %1344 = fadd fast float %1341, -1.000000e+00
  %1345 = fadd fast float %1342, -1.000000e+00
  %1346 = fadd fast float %1343, -1.000000e+00
  %1347 = fmul fast float %1192, %1344
  %1348 = fmul fast float %1192, %1345
  %1349 = fmul fast float %1192, %1346
  %1350 = fadd fast float %1347, 1.000000e+00
  %1351 = fadd fast float %1348, 1.000000e+00
  %1352 = fadd fast float %1349, 1.000000e+00
  %1353 = fmul fast float %1350, %1167
  %1354 = fmul fast float %1351, %1168
  %1355 = fmul fast float %1352, %1169
  br label %1356

; <label>:1356                                    ; preds = %1340, %1306, %1197, %1153
  %1357 = phi float [ %1302, %1197 ], [ %1178, %1306 ], [ %1178, %1340 ], [ 0x3FA23C0BE0000000, %1153 ]
  %1358 = phi float [ %1294, %1197 ], [ %1337, %1306 ], [ %1353, %1340 ], [ 1.000000e+00, %1153 ]
  %1359 = phi float [ %1295, %1197 ], [ %1338, %1306 ], [ %1354, %1340 ], [ 1.000000e+00, %1153 ]
  %1360 = phi float [ %1296, %1197 ], [ %1339, %1306 ], [ %1355, %1340 ], [ 1.000000e+00, %1153 ]
  %1361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1362 = extractvalue %dx.types.CBufRet.i32 %1361, 1
  %1363 = and i32 %1362, 1
  %1364 = icmp ne i32 %1363, 0
  %1365 = add i32 %38, 356
  %1366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1365, i32 undef)  ; BufferLoad(srv,index,wot)
  %1367 = extractvalue %dx.types.ResRet.i32 %1366, 0
  %1368 = and i32 %1367, 32
  %1369 = icmp ne i32 %1368, 0
  %1370 = and i1 %1364, %1369
  %1371 = select i1 %1370, float 1.000000e+00, float %1358
  %1372 = select i1 %1370, float 0x3FD3333340000000, float %1359
  %1373 = select i1 %1370, float 0x3FD3333340000000, float %1360
  %1374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1375 = extractvalue %dx.types.ResRet.i32 %1374, 0
  %1376 = and i32 %1375, 32
  %1377 = icmp eq i32 %1376, 0
  br i1 %1377, label %1450, label %1378

; <label>:1378                                    ; preds = %1356
  %1379 = add i32 %38, 108
  %1380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1379, i32 undef)  ; BufferLoad(srv,index,wot)
  %1381 = extractvalue %dx.types.ResRet.i32 %1380, 0
  %1382 = add i32 %38, 380
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = add i32 %1384, 0
  %1386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1386, %dx.types.Handle %62, float %963, float %964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1388 = extractvalue %dx.types.ResRet.f32 %1387, 0
  %1389 = extractvalue %dx.types.ResRet.f32 %1387, 1
  %1390 = extractvalue %dx.types.ResRet.f32 %1387, 2
  %1391 = extractvalue %dx.types.ResRet.f32 %1387, 3
  %1392 = and i32 %1381, 255
  %1393 = uitofp i32 %1392 to float
  %1394 = lshr i32 %1381, 8
  %1395 = and i32 %1394, 255
  %1396 = uitofp i32 %1395 to float
  %1397 = lshr i32 %1381, 16
  %1398 = and i32 %1397, 255
  %1399 = uitofp i32 %1398 to float
  %1400 = fmul fast float %1399, 0x3F70101000000000
  %1401 = fmul fast float %1388, %1393
  %1402 = fadd fast float %1401, %1396
  %1403 = fmul fast float %1402, 0x3F70101000000000
  %1404 = fadd fast float %1389, -5.000000e-01
  %1405 = fadd fast float %1391, -5.000000e-01
  %1406 = fmul fast float %1404, %1400
  %1407 = fmul fast float %1405, %1400
  %1408 = fadd fast float %1406, 5.000000e-01
  %1409 = fadd fast float %1407, 5.000000e-01
  %1410 = fmul fast float %1408, 2.000000e+00
  %1411 = fadd fast float %1410, -1.000000e+00
  %1412 = fmul fast float %1409, 2.000000e+00
  %1413 = fadd fast float %1412, -1.000000e+00
  %1414 = fadd fast float %1411, %1413
  %1415 = fmul fast float %1414, 5.000000e-01
  %1416 = fsub fast float %1411, %1413
  %1417 = fmul fast float %1416, 5.000000e-01
  %1418 = call float @dx.op.unary.f32(i32 6, float %1415)  ; FAbs(value)
  %1419 = fsub fast float 1.000000e+00, %1418
  %1420 = call float @dx.op.unary.f32(i32 6, float %1417)  ; FAbs(value)
  %1421 = fsub fast float %1419, %1420
  %1422 = call float @dx.op.dot3.f32(i32 55, float %1415, float %1417, float %1421, float %1415, float %1417, float %1421)  ; Dot3(ax,ay,az,bx,by,bz)
  %1423 = call float @dx.op.unary.f32(i32 25, float %1422)  ; Rsqrt(value)
  %1424 = fmul fast float %1415, %1423
  %1425 = fmul fast float %1417, %1423
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = and i32 %1427, 67108864
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1446, label %1430

; <label>:1430                                    ; preds = %1378
  %1431 = add i32 %38, 296
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = and i32 %1433, 65535
  %1435 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1434)  ; LegacyF16ToF32(value)
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = and i32 %1437, 65535
  %1439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1438)  ; LegacyF16ToF32(value)
  %1440 = lshr i32 %1433, 16
  %1441 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1440)  ; LegacyF16ToF32(value)
  %1442 = fsub fast float %1403, %1441
  %1443 = fmul fast float %1442, %1435
  %1444 = fadd fast float %1443, %1439
  %1445 = call float @dx.op.unary.f32(i32 7, float %1444)  ; Saturate(value)
  br label %1446

; <label>:1446                                    ; preds = %1430, %1378
  %1447 = phi float [ %1445, %1430 ], [ %1403, %1378 ]
  %1448 = call float @dx.op.dot2.f32(i32 54, float %1424, float %1425, float %867, float %868)  ; Dot2(ax,ay,bx,by)
  %1449 = call float @dx.op.dot2.f32(i32 54, float %1424, float %1425, float %869, float %870)  ; Dot2(ax,ay,bx,by)
  br label %1450

; <label>:1450                                    ; preds = %1446, %1356
  %1451 = phi float [ %1447, %1446 ], [ 0x3FD6666660000000, %1356 ]
  %1452 = phi float [ %1448, %1446 ], [ 0.000000e+00, %1356 ]
  %1453 = phi float [ %1449, %1446 ], [ 0.000000e+00, %1356 ]
  %1454 = phi float [ %1390, %1446 ], [ 1.000000e+00, %1356 ]
  %1455 = add i32 %38, 176
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1455, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = lshr i32 %1457, 22
  %1459 = shl nuw nsw i32 %1458, 5
  %1460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1459)  ; LegacyF16ToF32(value)
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = and i32 %1462, 64
  %1464 = icmp eq i32 %1463, 0
  br i1 %1464, label %1498, label %1465

; <label>:1465                                    ; preds = %1450
  %1466 = add i32 %38, 396
  %1467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1466, i32 undef)  ; BufferLoad(srv,index,wot)
  %1468 = extractvalue %dx.types.ResRet.i32 %1467, 0
  %1469 = add i32 %1468, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1469, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1472 = extractvalue %dx.types.ResRet.i32 %1471, 0
  %1473 = and i32 %1472, 131072
  %1474 = icmp eq i32 %1473, 0
  %1475 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1470, %dx.types.Handle %62, float %963, float %964, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1476 = extractvalue %dx.types.ResRet.f32 %1475, 0
  %1477 = extractvalue %dx.types.ResRet.f32 %1475, 1
  %1478 = extractvalue %dx.types.ResRet.f32 %1475, 2
  %1479 = fmul fast float %1476, %211
  %1480 = fmul fast float %1477, %214
  %1481 = fmul fast float %1478, %217
  br i1 %1474, label %1488, label %1482

; <label>:1482                                    ; preds = %1465
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 0
  %1485 = fmul fast float %1484, %1479
  %1486 = fmul fast float %1484, %1480
  %1487 = fmul fast float %1484, %1481
  br label %1488

; <label>:1488                                    ; preds = %1482, %1465
  %1489 = phi float [ %1485, %1482 ], [ %1479, %1465 ]
  %1490 = phi float [ %1486, %1482 ], [ %1480, %1465 ]
  %1491 = phi float [ %1487, %1482 ], [ %1481, %1465 ]
  %1492 = fmul fast float %1489, %1460
  %1493 = select i1 %163, float %1492, float %1489
  %1494 = call float @dx.op.dot3.f32(i32 55, float %1493, float %1490, float %1491, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1495 = select i1 %163, float 0.000000e+00, float %1489
  %1496 = select i1 %163, float %1494, float %1490
  %1497 = select i1 %163, float 0.000000e+00, float %1491
  br label %1498

; <label>:1498                                    ; preds = %1488, %1450
  %1499 = phi float [ %1495, %1488 ], [ 0.000000e+00, %1450 ]
  %1500 = phi float [ %1496, %1488 ], [ 0.000000e+00, %1450 ]
  %1501 = phi float [ %1497, %1488 ], [ 0.000000e+00, %1450 ]
  br i1 %855, label %1502, label %1510

; <label>:1502                                    ; preds = %1498
  %1503 = fsub fast float 1.000000e+00, %1151
  %1504 = fmul fast float %1503, %847
  %1505 = fmul fast float %1503, %848
  %1506 = fmul fast float %1503, %849
  %1507 = fmul fast float %1503, %844
  %1508 = fmul fast float %1503, %845
  %1509 = fmul fast float %1503, %846
  br label %1510

; <label>:1510                                    ; preds = %1502, %1498
  %1511 = phi float [ %1507, %1502 ], [ %844, %1498 ]
  %1512 = phi float [ %1508, %1502 ], [ %845, %1498 ]
  %1513 = phi float [ %1509, %1502 ], [ %846, %1498 ]
  %1514 = phi float [ %1504, %1502 ], [ %847, %1498 ]
  %1515 = phi float [ %1505, %1502 ], [ %848, %1498 ]
  %1516 = phi float [ %1506, %1502 ], [ %849, %1498 ]
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = and i32 %1518, 3
  %1520 = icmp eq i32 %1519, 3
  br i1 %1520, label %1596, label %1521

; <label>:1521                                    ; preds = %1510
  %1522 = and i32 %1518, 16
  %1523 = icmp ne i32 %1522, 0
  %1524 = select i1 %1523, float %1151, float 0.000000e+00
  %1525 = icmp eq i32 %1519, 0
  br i1 %1525, label %1526, label %1551

; <label>:1526                                    ; preds = %1521
  %1527 = and i32 %1518, 64
  %1528 = icmp ne i32 %1527, 0
  %1529 = select i1 %1528, float %1151, float 0.000000e+00
  %1530 = fsub fast float %1371, %1514
  %1531 = fsub fast float %1372, %1515
  %1532 = fsub fast float %1373, %1516
  %1533 = fmul fast float %1524, %1530
  %1534 = fmul fast float %1524, %1531
  %1535 = fmul fast float %1524, %1532
  %1536 = fadd fast float %1533, %1514
  %1537 = fadd fast float %1534, %1515
  %1538 = fadd fast float %1535, %1516
  %1539 = fsub fast float %1357, %850
  %1540 = fmul fast float %1524, %1539
  %1541 = fadd fast float %1540, %850
  %1542 = fsub fast float %1499, %1511
  %1543 = fsub fast float %1500, %1512
  %1544 = fsub fast float %1501, %1513
  %1545 = fmul fast float %1529, %1542
  %1546 = fmul fast float %1529, %1543
  %1547 = fmul fast float %1529, %1544
  %1548 = fadd fast float %1545, %1511
  %1549 = fadd fast float %1546, %1512
  %1550 = fadd fast float %1547, %1513
  br label %1596

; <label>:1551                                    ; preds = %1521
  %1552 = icmp eq i32 %1519, 1
  br i1 %1552, label %1553, label %1566

; <label>:1553                                    ; preds = %1551
  %1554 = fadd fast float %1371, -1.000000e+00
  %1555 = fadd fast float %1372, -1.000000e+00
  %1556 = fadd fast float %1373, -1.000000e+00
  %1557 = fmul fast float %1524, %1554
  %1558 = fmul fast float %1524, %1555
  %1559 = fmul fast float %1524, %1556
  %1560 = fadd fast float %1557, 1.000000e+00
  %1561 = fadd fast float %1558, 1.000000e+00
  %1562 = fadd fast float %1559, 1.000000e+00
  %1563 = fmul fast float %1560, %1514
  %1564 = fmul fast float %1561, %1515
  %1565 = fmul fast float %1562, %1516
  br label %1596

; <label>:1566                                    ; preds = %1551
  %1567 = icmp eq i32 %1519, 2
  br i1 %1567, label %1568, label %1596

; <label>:1568                                    ; preds = %1566
  %1569 = call float @dx.op.unary.f32(i32 24, float %1371)  ; Sqrt(value)
  %1570 = call float @dx.op.unary.f32(i32 24, float %1372)  ; Sqrt(value)
  %1571 = call float @dx.op.unary.f32(i32 24, float %1373)  ; Sqrt(value)
  %1572 = fadd fast float %1569, -5.000000e-01
  %1573 = fadd fast float %1570, -5.000000e-01
  %1574 = fadd fast float %1571, -5.000000e-01
  %1575 = fmul fast float %1572, %1524
  %1576 = fmul fast float %1573, %1524
  %1577 = fmul fast float %1574, %1524
  %1578 = fadd fast float %1575, 5.000000e-01
  %1579 = fadd fast float %1576, 5.000000e-01
  %1580 = fadd fast float %1577, 5.000000e-01
  %1581 = fmul fast float %1578, 2.000000e+00
  %1582 = fsub fast float 1.000000e+00, %1581
  %1583 = fmul fast float %1582, %1514
  %1584 = fadd fast float %1583, %1581
  %1585 = fmul fast float %1584, %1514
  %1586 = fmul fast float %1579, 2.000000e+00
  %1587 = fsub fast float 1.000000e+00, %1586
  %1588 = fmul fast float %1587, %1515
  %1589 = fadd fast float %1588, %1586
  %1590 = fmul fast float %1589, %1515
  %1591 = fmul fast float %1580, 2.000000e+00
  %1592 = fsub fast float 1.000000e+00, %1591
  %1593 = fmul fast float %1592, %1516
  %1594 = fadd fast float %1593, %1591
  %1595 = fmul fast float %1594, %1516
  br label %1596

; <label>:1596                                    ; preds = %1568, %1566, %1553, %1526, %1510
  %1597 = phi float [ %1511, %1510 ], [ %1511, %1568 ], [ %1511, %1566 ], [ %1511, %1553 ], [ %1548, %1526 ]
  %1598 = phi float [ %1512, %1510 ], [ %1512, %1568 ], [ %1512, %1566 ], [ %1512, %1553 ], [ %1549, %1526 ]
  %1599 = phi float [ %1513, %1510 ], [ %1513, %1568 ], [ %1513, %1566 ], [ %1513, %1553 ], [ %1550, %1526 ]
  %1600 = phi float [ %1514, %1510 ], [ %1585, %1568 ], [ %1514, %1566 ], [ %1563, %1553 ], [ %1536, %1526 ]
  %1601 = phi float [ %1515, %1510 ], [ %1590, %1568 ], [ %1515, %1566 ], [ %1564, %1553 ], [ %1537, %1526 ]
  %1602 = phi float [ %1516, %1510 ], [ %1595, %1568 ], [ %1516, %1566 ], [ %1565, %1553 ], [ %1538, %1526 ]
  %1603 = phi float [ %850, %1510 ], [ %850, %1568 ], [ %850, %1566 ], [ %850, %1553 ], [ %1541, %1526 ]
  %1604 = and i32 %1518, 12
  %1605 = icmp eq i32 %1604, 12
  br i1 %1605, label %1678, label %1606

; <label>:1606                                    ; preds = %1596
  %1607 = and i32 %1518, 2097184
  %1608 = icmp eq i32 %1607, 2097184
  %1609 = select i1 %1608, float %1151, float 0.000000e+00
  %1610 = and i32 %1518, 4194336
  %1611 = icmp eq i32 %1610, 4194336
  %1612 = select i1 %1611, float %1151, float 0.000000e+00
  %1613 = and i32 %1518, 8388640
  %1614 = icmp eq i32 %1613, 8388640
  %1615 = select i1 %1614, float %1151, float 0.000000e+00
  %1616 = icmp eq i32 %1604, 0
  br i1 %1616, label %1617, label %1630

; <label>:1617                                    ; preds = %1606
  %1618 = fsub fast float %1452, %842
  %1619 = fsub fast float %1453, %843
  %1620 = fmul fast float %1609, %1618
  %1621 = fmul fast float %1609, %1619
  %1622 = fadd fast float %1620, %842
  %1623 = fadd fast float %1621, %843
  %1624 = fsub fast float %1454, %853
  %1625 = fmul fast float %1612, %1624
  %1626 = fadd fast float %1625, %853
  %1627 = fsub fast float %1451, %852
  %1628 = fmul fast float %1615, %1627
  %1629 = fadd fast float %1628, %852
  br label %1678

; <label>:1630                                    ; preds = %1606
  %1631 = icmp eq i32 %1604, 4
  br i1 %1631, label %1632, label %1664

; <label>:1632                                    ; preds = %1630
  %1633 = fmul fast float %1609, %1452
  %1634 = fmul fast float %1609, %1453
  %1635 = fadd fast float %1633, %842
  %1636 = fadd fast float %1634, %843
  %1637 = call float @dx.op.binary.f32(i32 36, float %853, float %1454)  ; FMin(a,b)
  %1638 = fsub fast float %1637, %853
  %1639 = fmul fast float %1638, %1612
  %1640 = fadd fast float %1639, %853
  %1641 = fadd fast float %1451, %852
  %1642 = fmul fast float %1641, 0x3FF337FAE0000000
  %1643 = fmul fast float %852, %852
  %1644 = fmul fast float %1451, %1451
  %1645 = fadd fast float %1644, %1643
  %1646 = fmul fast float %1645, 0x3FE5152B00000000
  %1647 = fmul fast float %852, 0xBFCC1F85E0000000
  %1648 = fmul fast float %1647, %1451
  %1649 = fadd fast float %1648, 0xBFE1363700000000
  %1650 = fadd fast float %1649, %1642
  %1651 = fsub fast float %1650, %1646
  %1652 = fmul fast float %1641, 0x3FBA6F0D00000000
  %1653 = fmul fast float %1645, 0x3FD0432880000000
  %1654 = fmul fast float %852, 0xBFEF110800000000
  %1655 = fmul fast float %1654, %1451
  %1656 = fadd fast float %1655, 1.000000e+00
  %1657 = fsub fast float %1656, %1652
  %1658 = fadd fast float %1657, %1653
  %1659 = fdiv fast float %1651, %1658
  %1660 = call float @dx.op.unary.f32(i32 7, float %1659)  ; Saturate(value)
  %1661 = fsub fast float %1660, %852
  %1662 = fmul fast float %1661, %1615
  %1663 = fadd fast float %1662, %852
  br label %1678

; <label>:1664                                    ; preds = %1630
  %1665 = icmp eq i32 %1604, 8
  br i1 %1665, label %1666, label %1678

; <label>:1666                                    ; preds = %1664
  %1667 = fmul fast float %1609, %1452
  %1668 = fmul fast float %1609, %1453
  %1669 = fadd fast float %1667, %842
  %1670 = fadd fast float %1668, %843
  %1671 = call float @dx.op.binary.f32(i32 36, float %853, float %1454)  ; FMin(a,b)
  %1672 = fsub fast float %1671, %853
  %1673 = fmul fast float %1672, %1612
  %1674 = fadd fast float %1673, %853
  %1675 = fsub fast float %1451, %852
  %1676 = fmul fast float %1615, %1675
  %1677 = fadd fast float %1676, %852
  br label %1678

; <label>:1678                                    ; preds = %1666, %1664, %1632, %1617, %1596, %1150, %854, %841
  %1679 = phi float [ %842, %1596 ], [ %842, %1150 ], [ %842, %841 ], [ %1669, %1666 ], [ %842, %1664 ], [ %1635, %1632 ], [ %1622, %1617 ], [ %842, %854 ]
  %1680 = phi float [ %843, %1596 ], [ %843, %1150 ], [ %843, %841 ], [ %1670, %1666 ], [ %843, %1664 ], [ %1636, %1632 ], [ %1623, %1617 ], [ %843, %854 ]
  %1681 = phi float [ %1597, %1596 ], [ %844, %1150 ], [ %844, %841 ], [ %1597, %1666 ], [ %1597, %1664 ], [ %1597, %1632 ], [ %1597, %1617 ], [ %844, %854 ]
  %1682 = phi float [ %1598, %1596 ], [ %845, %1150 ], [ %845, %841 ], [ %1598, %1666 ], [ %1598, %1664 ], [ %1598, %1632 ], [ %1598, %1617 ], [ %845, %854 ]
  %1683 = phi float [ %1599, %1596 ], [ %846, %1150 ], [ %846, %841 ], [ %1599, %1666 ], [ %1599, %1664 ], [ %1599, %1632 ], [ %1599, %1617 ], [ %846, %854 ]
  %1684 = phi float [ %1600, %1596 ], [ %847, %1150 ], [ %847, %841 ], [ %1600, %1666 ], [ %1600, %1664 ], [ %1600, %1632 ], [ %1600, %1617 ], [ %847, %854 ]
  %1685 = phi float [ %1601, %1596 ], [ %848, %1150 ], [ %848, %841 ], [ %1601, %1666 ], [ %1601, %1664 ], [ %1601, %1632 ], [ %1601, %1617 ], [ %848, %854 ]
  %1686 = phi float [ %1602, %1596 ], [ %849, %1150 ], [ %849, %841 ], [ %1602, %1666 ], [ %1602, %1664 ], [ %1602, %1632 ], [ %1602, %1617 ], [ %849, %854 ]
  %1687 = phi float [ %1603, %1596 ], [ %850, %1150 ], [ %850, %841 ], [ %1603, %1666 ], [ %1603, %1664 ], [ %1603, %1632 ], [ %1603, %1617 ], [ %850, %854 ]
  %1688 = phi float [ %852, %1596 ], [ %852, %1150 ], [ %852, %841 ], [ %1677, %1666 ], [ %852, %1664 ], [ %1663, %1632 ], [ %1629, %1617 ], [ %852, %854 ]
  %1689 = phi float [ %853, %1596 ], [ %853, %1150 ], [ %853, %841 ], [ %1674, %1666 ], [ %853, %1664 ], [ %1640, %1632 ], [ %1626, %1617 ], [ %853, %854 ]
  br i1 %338, label %2514, label %1690

; <label>:1690                                    ; preds = %1678
  %1691 = icmp ult i32 %391, 3
  %1692 = add i32 %38, 56
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = add i32 %38, 60
  %1696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1695, i32 undef)  ; BufferLoad(srv,index,wot)
  %1697 = extractvalue %dx.types.ResRet.i32 %1696, 0
  %1698 = or i32 %1697, %1694
  %1699 = icmp eq i32 %1698, 0
  br i1 %1699, label %2514, label %1700

; <label>:1700                                    ; preds = %1690
  %1701 = and i32 %1694, 262144
  %1702 = icmp ne i32 %1701, 0
  %1703 = select i1 %1702, float %41, float 1.000000e+00
  %1704 = select i1 %1702, float %42, float 0.000000e+00
  %1705 = select i1 %1702, float %43, float 0.000000e+00
  %1706 = select i1 %1702, float %44, float 1.000000e+00
  %1707 = select i1 %1702, float %45, float %54
  %1708 = select i1 %1702, float %46, float %55
  %1709 = add i32 %38, 316
  %1710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %1711 = extractvalue %dx.types.ResRet.i32 %1710, 0
  %1712 = lshr i32 %1711, 16
  %1713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1712)  ; LegacyF16ToF32(value)
  %1714 = fmul fast float %1713, 0x3F50624DE0000000
  %1715 = add i32 %38, 120
  %1716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1717 = extractvalue %dx.types.ResRet.i32 %1716, 0
  %1718 = lshr i32 %1717, 16
  %1719 = and i32 %1718, 255
  %1720 = lshr i32 %1717, 24
  %1721 = add i32 %38, 324
  %1722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1721, i32 undef)  ; BufferLoad(srv,index,wot)
  %1723 = extractvalue %dx.types.ResRet.i32 %1722, 0
  %1724 = and i32 %1723, 65535
  %1725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1724)  ; LegacyF16ToF32(value)
  %1726 = lshr i32 %1723, 16
  %1727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1726)  ; LegacyF16ToF32(value)
  %1728 = add i32 %38, 64
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = lshr i32 %1730, 22
  %1732 = shl nuw nsw i32 %1731, 5
  %1733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1732)  ; LegacyF16ToF32(value)
  %1734 = shl i32 %1730, 4
  %1735 = and i32 %1734, 32752
  %1736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1735)  ; LegacyF16ToF32(value)
  %1737 = lshr i32 %1730, 7
  %1738 = and i32 %1737, 32752
  %1739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1738)  ; LegacyF16ToF32(value)
  %1740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1741 = extractvalue %dx.types.CBufRet.f32 %1740, 3
  %1742 = fmul fast float %1741, 1.000000e+03
  %1743 = fmul fast float %288, %1742
  %1744 = call float @dx.op.unary.f32(i32 22, float %1743)  ; Frc(value)
  %1745 = fadd fast float %1744, %278
  %1746 = fmul fast float %289, %1742
  %1747 = call float @dx.op.unary.f32(i32 22, float %1746)  ; Frc(value)
  %1748 = fadd fast float %1747, %280
  %1749 = fmul fast float %1714, %1742
  %1750 = call float @dx.op.unary.f32(i32 22, float %1749)  ; Frc(value)
  %1751 = fmul fast float %1750, 0x401921FB60000000
  %1752 = fadd fast float %1751, %1733
  %1753 = call float @dx.op.unary.f32(i32 13, float %1752)  ; Sin(value)
  %1754 = call float @dx.op.unary.f32(i32 12, float %1752)  ; Cos(value)
  %1755 = fsub fast float -0.000000e+00, %1753
  %1756 = fadd fast float %1707, -5.000000e-01
  %1757 = fadd fast float %1708, -5.000000e-01
  %1758 = fmul fast float %1725, %1756
  %1759 = fmul fast float %1727, %1757
  %1760 = fadd fast float %1758, 5.000000e-01
  %1761 = fadd fast float %1759, 5.000000e-01
  %1762 = fmul fast float %1736, %1760
  %1763 = fmul fast float %1739, %1761
  %1764 = fmul fast float %1754, %1762
  %1765 = call float @dx.op.tertiary.f32(i32 46, float %1755, float %1763, float %1764)  ; FMad(a,b,c)
  %1766 = fmul fast float %1753, %1762
  %1767 = call float @dx.op.tertiary.f32(i32 46, float %1754, float %1763, float %1766)  ; FMad(a,b,c)
  %1768 = fadd fast float %1745, %1765
  %1769 = fadd fast float %1748, %1767
  %1770 = icmp ugt i32 %1719, 1
  %1771 = icmp ugt i32 %1717, 33554431
  %1772 = or i1 %1771, %1770
  br i1 %1772, label %1773, label %1798

; <label>:1773                                    ; preds = %1700
  %1774 = add i32 %38, 260
  %1775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1774, i32 undef)  ; BufferLoad(srv,index,wot)
  %1776 = extractvalue %dx.types.ResRet.i32 %1775, 0
  %1777 = lshr i32 %1776, 16
  %1778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1777)  ; LegacyF16ToF32(value)
  %1779 = fmul fast float %1741, %1778
  %1780 = call float @dx.op.unary.f32(i32 22, float %1779)  ; Frc(value)
  %1781 = mul nuw nsw i32 %1719, %1720
  %1782 = uitofp i32 %1781 to float
  %1783 = fmul fast float %1780, %1782
  %1784 = call float @dx.op.unary.f32(i32 27, float %1783)  ; Round_ni(value)
  %1785 = fptoui float %1784 to i32
  %1786 = urem i32 %1785, %1719
  %1787 = udiv i32 %1785, %1720
  %1788 = call float @dx.op.unary.f32(i32 22, float %1768)  ; Frc(value)
  %1789 = call float @dx.op.unary.f32(i32 22, float %1769)  ; Frc(value)
  %1790 = uitofp i32 %1786 to float
  %1791 = uitofp i32 %1787 to float
  %1792 = fadd fast float %1788, %1790
  %1793 = fadd fast float %1789, %1791
  %1794 = uitofp i32 %1719 to float
  %1795 = uitofp i32 %1720 to float
  %1796 = fdiv fast float %1792, %1794
  %1797 = fdiv fast float %1793, %1795
  br label %1798

; <label>:1798                                    ; preds = %1773, %1700
  %1799 = phi float [ %1796, %1773 ], [ %1768, %1700 ]
  %1800 = phi float [ %1797, %1773 ], [ %1769, %1700 ]
  %1801 = and i32 %1694, 16777216
  %1802 = icmp eq i32 %1801, 0
  br i1 %1802, label %1912, label %1803

; <label>:1803                                    ; preds = %1798
  %1804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1805 = extractvalue %dx.types.CBufRet.f32 %1804, 0
  %1806 = extractvalue %dx.types.CBufRet.f32 %1804, 1
  %1807 = extractvalue %dx.types.CBufRet.f32 %1804, 2
  %1808 = fadd fast float %1805, %121
  %1809 = fadd fast float %1806, %122
  %1810 = fadd fast float %1807, %123
  %1811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1812 = extractvalue %dx.types.CBufRet.f32 %1811, 0
  %1813 = call float @dx.op.unary.f32(i32 7, float %1812)  ; Saturate(value)
  %1814 = icmp eq i32 %39, 65535
  br i1 %1814, label %1909, label %1815

; <label>:1815                                    ; preds = %1803
  %1816 = lshr i32 %39, 1
  %1817 = shl i32 %1816, 2
  %1818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1817, i32 undef)  ; BufferLoad(srv,index,wot)
  %1819 = extractvalue %dx.types.ResRet.i32 %1818, 0
  %1820 = and i32 %39, 1
  %1821 = icmp ne i32 %1820, 0
  %1822 = lshr i32 %1819, 16
  %1823 = and i32 %1819, 65535
  %1824 = select i1 %1821, i32 %1822, i32 %1823
  %1825 = icmp eq i32 %1824, 65535
  br i1 %1825, label %1905, label %1826

; <label>:1826                                    ; preds = %1815
  %1827 = mul nuw nsw i32 %1824, 40
  %1828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1827, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.f32 %1828, 0
  %1830 = extractvalue %dx.types.ResRet.f32 %1828, 1
  %1831 = extractvalue %dx.types.ResRet.f32 %1828, 2
  %1832 = add nuw nsw i32 %1827, 12
  %1833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.f32 %1833, 0
  %1835 = extractvalue %dx.types.ResRet.f32 %1833, 1
  %1836 = extractvalue %dx.types.ResRet.f32 %1833, 2
  %1837 = add nuw nsw i32 %1827, 24
  %1838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1837, i32 undef)  ; BufferLoad(srv,index,wot)
  %1839 = extractvalue %dx.types.ResRet.f32 %1838, 0
  %1840 = extractvalue %dx.types.ResRet.f32 %1838, 1
  %1841 = extractvalue %dx.types.ResRet.f32 %1838, 2
  %1842 = add nuw nsw i32 %1827, 36
  %1843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1842, i32 undef)  ; BufferLoad(srv,index,wot)
  %1844 = extractvalue %dx.types.ResRet.f32 %1843, 0
  %1845 = fsub fast float %1808, %1829
  %1846 = fsub fast float %1809, %1830
  %1847 = fsub fast float %1810, %1831
  %1848 = fmul fast float %1844, %1845
  %1849 = fmul fast float %1844, %1846
  %1850 = fmul fast float %1844, %1847
  %1851 = call float @dx.op.unary.f32(i32 27, float %1848)  ; Round_ni(value)
  %1852 = call float @dx.op.unary.f32(i32 27, float %1849)  ; Round_ni(value)
  %1853 = call float @dx.op.unary.f32(i32 27, float %1850)  ; Round_ni(value)
  %1854 = fadd fast float %1851, 5.000000e-01
  %1855 = fadd fast float %1852, 5.000000e-01
  %1856 = fadd fast float %1853, 5.000000e-01
  %1857 = fmul fast float %1854, %1834
  %1858 = fmul fast float %1855, %1835
  %1859 = fmul fast float %1856, %1836
  %1860 = shl i32 %39, 2
  %1861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1862 = extractvalue %dx.types.ResRet.i32 %1861, 0
  %1863 = add i32 %1862, 0
  %1864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1863, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1865 = call float @dx.op.unary.f32(i32 22, float %1857)  ; Frc(value)
  %1866 = call float @dx.op.unary.f32(i32 22, float %1858)  ; Frc(value)
  %1867 = call float @dx.op.unary.f32(i32 22, float %1859)  ; Frc(value)
  %1868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1864, %dx.types.Handle %35, float %1865, float %1866, float %1867, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1869 = extractvalue %dx.types.ResRet.f32 %1868, 0
  %1870 = extractvalue %dx.types.ResRet.f32 %1868, 1
  %1871 = extractvalue %dx.types.ResRet.f32 %1868, 2
  %1872 = fmul fast float %1869, 1.023000e+03
  %1873 = fmul fast float %1870, 1.023000e+03
  %1874 = fmul fast float %1871, 1.023000e+03
  %1875 = fadd fast float %1872, 5.000000e-01
  %1876 = fadd fast float %1873, 5.000000e-01
  %1877 = fadd fast float %1874, 5.000000e-01
  %1878 = call float @dx.op.unary.f32(i32 27, float %1875)  ; Round_ni(value)
  %1879 = call float @dx.op.unary.f32(i32 27, float %1876)  ; Round_ni(value)
  %1880 = call float @dx.op.unary.f32(i32 27, float %1877)  ; Round_ni(value)
  %1881 = fsub fast float %1848, %1851
  %1882 = fsub fast float %1849, %1852
  %1883 = fsub fast float %1850, %1853
  %1884 = fmul fast float %1881, 7.500000e-01
  %1885 = fmul fast float %1882, 7.500000e-01
  %1886 = fmul fast float %1883, 7.500000e-01
  %1887 = fadd fast float %1851, 1.250000e-01
  %1888 = fadd fast float %1887, %1884
  %1889 = fadd fast float %1888, %1878
  %1890 = fadd fast float %1852, 1.250000e-01
  %1891 = fadd fast float %1890, %1885
  %1892 = fadd fast float %1891, %1879
  %1893 = fadd fast float %1853, 1.250000e-01
  %1894 = fadd fast float %1893, %1886
  %1895 = fadd fast float %1894, %1880
  %1896 = fmul fast float %1889, %1839
  %1897 = fmul fast float %1892, %1840
  %1898 = fmul fast float %1895, %1841
  %1899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1860, i32 undef)  ; BufferLoad(srv,index,wot)
  %1900 = extractvalue %dx.types.ResRet.i32 %1899, 0
  %1901 = add i32 %1900, 0
  %1902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1902, %dx.types.Handle %33, float %1896, float %1897, float %1898, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1904 = extractvalue %dx.types.ResRet.f32 %1903, 0
  br label %1905

; <label>:1905                                    ; preds = %1826, %1815
  %1906 = phi float [ %1904, %1826 ], [ -1.000000e+00, %1815 ]
  %1907 = fadd fast float %1906, %1813
  %1908 = call float @dx.op.unary.f32(i32 7, float %1907)  ; Saturate(value)
  br label %1909

; <label>:1909                                    ; preds = %1905, %1803
  %1910 = phi float [ %1908, %1905 ], [ %1813, %1803 ]
  %1911 = fmul fast float %1910, %387
  br label %1912

; <label>:1912                                    ; preds = %1909, %1798
  %1913 = phi float [ %1911, %1909 ], [ %387, %1798 ]
  %1914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1915 = extractvalue %dx.types.ResRet.i32 %1914, 0
  %1916 = and i32 %1915, 256
  %1917 = icmp eq i32 %1916, 0
  br i1 %1917, label %1964, label %1918

; <label>:1918                                    ; preds = %1912
  %1919 = add i32 %38, 432
  %1920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1919, i32 undef)  ; BufferLoad(srv,index,wot)
  %1921 = extractvalue %dx.types.ResRet.i32 %1920, 0
  %1922 = add i32 %1921, 0
  %1923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1923, %dx.types.Handle %63, float %1799, float %1800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1925 = extractvalue %dx.types.ResRet.f32 %1924, 0
  %1926 = add i32 %38, 132
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1926, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = shl i32 %1928, 4
  %1930 = and i32 %1929, 32752
  %1931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1930)  ; LegacyF16ToF32(value)
  %1932 = lshr i32 %1928, 7
  %1933 = and i32 %1932, 32752
  %1934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1933)  ; LegacyF16ToF32(value)
  %1935 = fsub fast float 1.000000e+00, %1913
  %1936 = call float @dx.op.binary.f32(i32 35, float %1935, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1937 = bitcast float %1913 to i32
  %1938 = sitofp i32 %1937 to float
  %1939 = fadd fast float %1938, 0xC1CFBF8940000000
  %1940 = fmul fast float %1934, %1939
  %1941 = fadd fast float %1940, 0x41CFBF8940000000
  %1942 = fptosi float %1941 to i32
  %1943 = bitcast i32 %1942 to float
  %1944 = bitcast float %1936 to i32
  %1945 = sitofp i32 %1944 to float
  %1946 = fadd fast float %1945, 0xC1CFBF8940000000
  %1947 = fmul fast float %1946, %1934
  %1948 = fadd fast float %1947, 0x41CFBF8940000000
  %1949 = fptosi float %1948 to i32
  %1950 = bitcast i32 %1949 to float
  %1951 = fmul fast float %1943, %1931
  %1952 = fmul fast float %1950, %1931
  %1953 = fsub fast float %1936, %1951
  %1954 = fadd fast float %1952, %1936
  %1955 = call float @dx.op.unary.f32(i32 7, float %1953)  ; Saturate(value)
  %1956 = call float @dx.op.unary.f32(i32 7, float %1954)  ; Saturate(value)
  %1957 = fsub fast float %1925, %1955
  %1958 = fsub fast float %1956, %1955
  %1959 = bitcast float %1958 to i32
  %1960 = sub nsw i32 2129859010, %1959
  %1961 = bitcast i32 %1960 to float
  %1962 = fmul fast float %1961, %1957
  %1963 = call float @dx.op.unary.f32(i32 7, float %1962)  ; Saturate(value)
  br label %1964

; <label>:1964                                    ; preds = %1918, %1912
  %1965 = phi float [ %1963, %1918 ], [ %1913, %1912 ]
  %1966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.i32 %1966, 0
  %1968 = and i32 %1967, 128
  %1969 = icmp eq i32 %1968, 0
  br i1 %1969, label %1986, label %1970

; <label>:1970                                    ; preds = %1964
  %1971 = add i32 %38, 416
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = add i32 %1973, 0
  %1975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1975, %dx.types.Handle %63, float %1799, float %1800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1977 = extractvalue %dx.types.ResRet.f32 %1976, 0
  %1978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.i32 %1978, 0
  %1980 = and i32 %1979, 524288
  %1981 = icmp ne i32 %1980, 0
  %1982 = fcmp fast ogt float %1977, 0x3FE0101020000000
  %1983 = select i1 %1982, float 1.000000e+00, float 0.000000e+00
  %1984 = select i1 %1981, float %1983, float %1977
  %1985 = fmul fast float %1984, %1965
  br label %1986

; <label>:1986                                    ; preds = %1970, %1964
  %1987 = phi float [ %1985, %1970 ], [ %1965, %1964 ]
  %1988 = fcmp fast ult float %1987, 0x3F70101020000000
  br i1 %1988, label %2514, label %1989

; <label>:1989                                    ; preds = %1986
  %1990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %1991 = extractvalue %dx.types.ResRet.i32 %1990, 0
  %1992 = and i32 %1991, 16
  %1993 = icmp eq i32 %1992, 0
  br i1 %1993, label %2192, label %1994

; <label>:1994                                    ; preds = %1989
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1715, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = add i32 %38, 368
  %1998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1997, i32 undef)  ; BufferLoad(srv,index,wot)
  %1999 = extractvalue %dx.types.ResRet.i32 %1998, 0
  %2000 = add i32 %1999, 0
  %2001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2001, %dx.types.Handle %62, float %1799, float %1800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2003 = extractvalue %dx.types.ResRet.f32 %2002, 0
  %2004 = extractvalue %dx.types.ResRet.f32 %2002, 1
  %2005 = extractvalue %dx.types.ResRet.f32 %2002, 2
  %2006 = extractvalue %dx.types.ResRet.f32 %2002, 3
  %2007 = and i32 %1996, 255
  %2008 = uitofp i32 %2007 to float
  %2009 = lshr i32 %1996, 8
  %2010 = and i32 %2009, 255
  %2011 = uitofp i32 %2010 to float
  %2012 = fmul fast float %2006, %2008
  %2013 = fadd fast float %2012, %2011
  %2014 = fmul fast float %2013, 0x3F70101000000000
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = and i32 %2016, 512
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2027, label %2019

; <label>:2019                                    ; preds = %1994
  %2020 = add i32 %38, 452
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = add i32 %2022, 0
  %2024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2024, %dx.types.Handle %63, float %1799, float %1800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 0
  br label %2027

; <label>:2027                                    ; preds = %2019, %1994
  %2028 = phi float [ %2026, %2019 ], [ 1.000000e+00, %1994 ]
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = and i32 %2030, 33554432
  %2032 = icmp eq i32 %2031, 0
  br i1 %2032, label %2139, label %2033

; <label>:2033                                    ; preds = %2027
  %2034 = add i32 %38, 256
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2034, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = and i32 %2036, 65535
  %2038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2037)  ; LegacyF16ToF32(value)
  %2039 = lshr i32 %2036, 16
  %2040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2039)  ; LegacyF16ToF32(value)
  %2041 = add i32 %38, 260
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = and i32 %2043, 65535
  %2045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2044)  ; LegacyF16ToF32(value)
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = lshr i32 %2047, 24
  %2049 = uitofp i32 %2048 to float
  %2050 = fmul fast float %2049, 0x3F70101020000000
  %2051 = and i32 %2047, 255
  %2052 = uitofp i32 %2051 to float
  %2053 = fmul fast float %2052, 0x3F70101020000000
  %2054 = lshr i32 %2047, 8
  %2055 = and i32 %2054, 255
  %2056 = uitofp i32 %2055 to float
  %2057 = fmul fast float %2056, 0x3F70101020000000
  %2058 = lshr i32 %2047, 16
  %2059 = and i32 %2058, 255
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2060, 0x3F70101020000000
  %2062 = add i32 %38, 252
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = lshr i32 %2064, 24
  %2066 = uitofp i32 %2065 to float
  %2067 = fmul fast float %2066, 0x3F70101020000000
  %2068 = and i32 %2064, 255
  %2069 = uitofp i32 %2068 to float
  %2070 = fmul fast float %2069, 0x3F70101020000000
  %2071 = lshr i32 %2064, 8
  %2072 = and i32 %2071, 255
  %2073 = uitofp i32 %2072 to float
  %2074 = fmul fast float %2073, 0x3F70101020000000
  %2075 = lshr i32 %2064, 16
  %2076 = and i32 %2075, 255
  %2077 = uitofp i32 %2076 to float
  %2078 = fmul fast float %2077, 0x3F70101020000000
  %2079 = bitcast float %2003 to i32
  %2080 = ashr i32 %2079, 1
  %2081 = sub nsw i32 1597463174, %2080
  %2082 = bitcast i32 %2081 to float
  %2083 = fmul fast float %2003, 5.000000e-01
  %2084 = fmul fast float %2082, %2082
  %2085 = fmul fast float %2084, %2083
  %2086 = fsub fast float 1.500000e+00, %2085
  %2087 = fmul fast float %2082, %2003
  %2088 = fmul fast float %2087, %2086
  %2089 = bitcast float %2004 to i32
  %2090 = ashr i32 %2089, 1
  %2091 = sub nsw i32 1597463174, %2090
  %2092 = bitcast i32 %2091 to float
  %2093 = fmul fast float %2004, 5.000000e-01
  %2094 = fmul fast float %2092, %2092
  %2095 = fmul fast float %2094, %2093
  %2096 = fsub fast float 1.500000e+00, %2095
  %2097 = fmul fast float %2092, %2004
  %2098 = fmul fast float %2097, %2096
  %2099 = bitcast float %2005 to i32
  %2100 = ashr i32 %2099, 1
  %2101 = sub nsw i32 1597463174, %2100
  %2102 = bitcast i32 %2101 to float
  %2103 = fmul fast float %2005, 5.000000e-01
  %2104 = fmul fast float %2102, %2102
  %2105 = fmul fast float %2104, %2103
  %2106 = fsub fast float 1.500000e+00, %2105
  %2107 = fmul fast float %2102, %2005
  %2108 = fmul fast float %2107, %2106
  %2109 = fsub fast float %2088, %2070
  %2110 = fsub fast float %2098, %2074
  %2111 = fsub fast float %2108, %2078
  %2112 = fmul fast float %2109, %2038
  %2113 = fmul fast float %2110, %2040
  %2114 = fmul fast float %2111, %2045
  %2115 = fadd fast float %2112, %2053
  %2116 = fadd fast float %2113, %2057
  %2117 = fadd fast float %2114, %2061
  %2118 = call float @dx.op.unary.f32(i32 7, float %2115)  ; Saturate(value)
  %2119 = call float @dx.op.unary.f32(i32 7, float %2116)  ; Saturate(value)
  %2120 = call float @dx.op.unary.f32(i32 7, float %2117)  ; Saturate(value)
  %2121 = fmul fast float %2118, %2118
  %2122 = fmul fast float %2119, %2119
  %2123 = fmul fast float %2120, %2120
  %2124 = fsub fast float %2121, %2003
  %2125 = fsub fast float %2122, %2004
  %2126 = fsub fast float %2123, %2005
  %2127 = fmul fast float %2124, %2028
  %2128 = fmul fast float %2125, %2028
  %2129 = fmul fast float %2126, %2028
  %2130 = fadd fast float %2127, %2003
  %2131 = fadd fast float %2128, %2004
  %2132 = fadd fast float %2129, %2005
  %2133 = fadd fast float %2050, %2014
  %2134 = fsub fast float %2133, %2067
  %2135 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2136 = fsub fast float %2135, %2014
  %2137 = fmul fast float %2136, %2028
  %2138 = fadd fast float %2137, %2014
  br label %2192

; <label>:2139                                    ; preds = %2027
  %2140 = and i32 %2030, 134217728
  %2141 = icmp eq i32 %2140, 0
  br i1 %2141, label %2176, label %2142

; <label>:2142                                    ; preds = %2139
  %2143 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %2144 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %2145 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %2146 = fadd fast float %2143, -5.000000e-01
  %2147 = fadd fast float %2144, -5.000000e-01
  %2148 = fadd fast float %2145, -5.000000e-01
  %2149 = fmul fast float %2146, %2028
  %2150 = fmul fast float %2147, %2028
  %2151 = fmul fast float %2148, %2028
  %2152 = fadd fast float %2149, 5.000000e-01
  %2153 = fadd fast float %2150, 5.000000e-01
  %2154 = fadd fast float %2151, 5.000000e-01
  %2155 = call float @dx.op.unary.f32(i32 24, float %2003)  ; Sqrt(value)
  %2156 = call float @dx.op.unary.f32(i32 24, float %2004)  ; Sqrt(value)
  %2157 = call float @dx.op.unary.f32(i32 24, float %2005)  ; Sqrt(value)
  %2158 = fmul fast float %2152, 2.000000e+00
  %2159 = fsub fast float 1.000000e+00, %2158
  %2160 = fmul fast float %2159, %2155
  %2161 = fadd fast float %2160, %2158
  %2162 = fmul fast float %2161, %2155
  %2163 = fmul fast float %2153, 2.000000e+00
  %2164 = fsub fast float 1.000000e+00, %2163
  %2165 = fmul fast float %2164, %2156
  %2166 = fadd fast float %2165, %2163
  %2167 = fmul fast float %2166, %2156
  %2168 = fmul fast float %2154, 2.000000e+00
  %2169 = fsub fast float 1.000000e+00, %2168
  %2170 = fmul fast float %2169, %2157
  %2171 = fadd fast float %2170, %2168
  %2172 = fmul fast float %2171, %2157
  %2173 = fmul fast float %2162, %2162
  %2174 = fmul fast float %2167, %2167
  %2175 = fmul fast float %2172, %2172
  br label %2192

; <label>:2176                                    ; preds = %2139
  %2177 = fmul fast float %265, %265
  %2178 = fmul fast float %269, %269
  %2179 = fmul fast float %273, %273
  %2180 = fadd fast float %2177, -1.000000e+00
  %2181 = fadd fast float %2178, -1.000000e+00
  %2182 = fadd fast float %2179, -1.000000e+00
  %2183 = fmul fast float %2028, %2180
  %2184 = fmul fast float %2028, %2181
  %2185 = fmul fast float %2028, %2182
  %2186 = fadd fast float %2183, 1.000000e+00
  %2187 = fadd fast float %2184, 1.000000e+00
  %2188 = fadd fast float %2185, 1.000000e+00
  %2189 = fmul fast float %2186, %2003
  %2190 = fmul fast float %2187, %2004
  %2191 = fmul fast float %2188, %2005
  br label %2192

; <label>:2192                                    ; preds = %2176, %2142, %2033, %1989
  %2193 = phi float [ %2138, %2033 ], [ %2014, %2142 ], [ %2014, %2176 ], [ 0x3FA23C0BE0000000, %1989 ]
  %2194 = phi float [ %2130, %2033 ], [ %2173, %2142 ], [ %2189, %2176 ], [ 1.000000e+00, %1989 ]
  %2195 = phi float [ %2131, %2033 ], [ %2174, %2142 ], [ %2190, %2176 ], [ 1.000000e+00, %1989 ]
  %2196 = phi float [ %2132, %2033 ], [ %2175, %2142 ], [ %2191, %2176 ], [ 1.000000e+00, %1989 ]
  %2197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2198 = extractvalue %dx.types.CBufRet.i32 %2197, 1
  %2199 = and i32 %2198, 1
  %2200 = icmp ne i32 %2199, 0
  %2201 = add i32 %38, 356
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = and i32 %2203, 32
  %2205 = icmp ne i32 %2204, 0
  %2206 = and i1 %2200, %2205
  %2207 = select i1 %2206, float 1.000000e+00, float %2194
  %2208 = select i1 %2206, float 0x3FD3333340000000, float %2195
  %2209 = select i1 %2206, float 0x3FD3333340000000, float %2196
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 32
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2286, label %2214

; <label>:2214                                    ; preds = %2192
  %2215 = add i32 %38, 124
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2215, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = add i32 %38, 384
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2218, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = add i32 %2220, 0
  %2222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2221, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2223 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2222, %dx.types.Handle %62, float %1799, float %1800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2224 = extractvalue %dx.types.ResRet.f32 %2223, 0
  %2225 = extractvalue %dx.types.ResRet.f32 %2223, 1
  %2226 = extractvalue %dx.types.ResRet.f32 %2223, 2
  %2227 = extractvalue %dx.types.ResRet.f32 %2223, 3
  %2228 = and i32 %2217, 255
  %2229 = uitofp i32 %2228 to float
  %2230 = lshr i32 %2217, 8
  %2231 = and i32 %2230, 255
  %2232 = uitofp i32 %2231 to float
  %2233 = lshr i32 %2217, 16
  %2234 = and i32 %2233, 255
  %2235 = uitofp i32 %2234 to float
  %2236 = fmul fast float %2235, 0x3F70101000000000
  %2237 = fmul fast float %2224, %2229
  %2238 = fadd fast float %2237, %2232
  %2239 = fmul fast float %2238, 0x3F70101000000000
  %2240 = fadd fast float %2225, -5.000000e-01
  %2241 = fadd fast float %2227, -5.000000e-01
  %2242 = fmul fast float %2240, %2236
  %2243 = fmul fast float %2241, %2236
  %2244 = fadd fast float %2242, 5.000000e-01
  %2245 = fadd fast float %2243, 5.000000e-01
  %2246 = fmul fast float %2244, 2.000000e+00
  %2247 = fadd fast float %2246, -1.000000e+00
  %2248 = fmul fast float %2245, 2.000000e+00
  %2249 = fadd fast float %2248, -1.000000e+00
  %2250 = fadd fast float %2247, %2249
  %2251 = fmul fast float %2250, 5.000000e-01
  %2252 = fsub fast float %2247, %2249
  %2253 = fmul fast float %2252, 5.000000e-01
  %2254 = call float @dx.op.unary.f32(i32 6, float %2251)  ; FAbs(value)
  %2255 = fsub fast float 1.000000e+00, %2254
  %2256 = call float @dx.op.unary.f32(i32 6, float %2253)  ; FAbs(value)
  %2257 = fsub fast float %2255, %2256
  %2258 = call float @dx.op.dot3.f32(i32 55, float %2251, float %2253, float %2257, float %2251, float %2253, float %2257)  ; Dot3(ax,ay,az,bx,by,bz)
  %2259 = call float @dx.op.unary.f32(i32 25, float %2258)  ; Rsqrt(value)
  %2260 = fmul fast float %2251, %2259
  %2261 = fmul fast float %2253, %2259
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = and i32 %2263, 67108864
  %2265 = icmp eq i32 %2264, 0
  br i1 %2265, label %2282, label %2266

; <label>:2266                                    ; preds = %2214
  %2267 = add i32 %38, 312
  %2268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2267, i32 undef)  ; BufferLoad(srv,index,wot)
  %2269 = extractvalue %dx.types.ResRet.i32 %2268, 0
  %2270 = and i32 %2269, 65535
  %2271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2270)  ; LegacyF16ToF32(value)
  %2272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2273 = extractvalue %dx.types.ResRet.i32 %2272, 0
  %2274 = and i32 %2273, 65535
  %2275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2274)  ; LegacyF16ToF32(value)
  %2276 = lshr i32 %2269, 16
  %2277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2276)  ; LegacyF16ToF32(value)
  %2278 = fsub fast float %2239, %2277
  %2279 = fmul fast float %2278, %2271
  %2280 = fadd fast float %2279, %2275
  %2281 = call float @dx.op.unary.f32(i32 7, float %2280)  ; Saturate(value)
  br label %2282

; <label>:2282                                    ; preds = %2266, %2214
  %2283 = phi float [ %2281, %2266 ], [ %2239, %2214 ]
  %2284 = call float @dx.op.dot2.f32(i32 54, float %2260, float %2261, float %1703, float %1704)  ; Dot2(ax,ay,bx,by)
  %2285 = call float @dx.op.dot2.f32(i32 54, float %2260, float %2261, float %1705, float %1706)  ; Dot2(ax,ay,bx,by)
  br label %2286

; <label>:2286                                    ; preds = %2282, %2192
  %2287 = phi float [ %2283, %2282 ], [ 0x3FD6666660000000, %2192 ]
  %2288 = phi float [ %2284, %2282 ], [ 0.000000e+00, %2192 ]
  %2289 = phi float [ %2285, %2282 ], [ 0.000000e+00, %2192 ]
  %2290 = phi float [ %2226, %2282 ], [ 1.000000e+00, %2192 ]
  %2291 = add i32 %38, 192
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = lshr i32 %2293, 22
  %2295 = shl nuw nsw i32 %2294, 5
  %2296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2295)  ; LegacyF16ToF32(value)
  %2297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2298 = extractvalue %dx.types.ResRet.i32 %2297, 0
  %2299 = and i32 %2298, 64
  %2300 = icmp eq i32 %2299, 0
  br i1 %2300, label %2334, label %2301

; <label>:2301                                    ; preds = %2286
  %2302 = add i32 %38, 400
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = add i32 %2304, 0
  %2306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2305, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2308 = extractvalue %dx.types.ResRet.i32 %2307, 0
  %2309 = and i32 %2308, 131072
  %2310 = icmp eq i32 %2309, 0
  %2311 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2306, %dx.types.Handle %62, float %1799, float %1800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2312 = extractvalue %dx.types.ResRet.f32 %2311, 0
  %2313 = extractvalue %dx.types.ResRet.f32 %2311, 1
  %2314 = extractvalue %dx.types.ResRet.f32 %2311, 2
  %2315 = fmul fast float %2312, %253
  %2316 = fmul fast float %2313, %256
  %2317 = fmul fast float %2314, %259
  br i1 %2310, label %2324, label %2318

; <label>:2318                                    ; preds = %2301
  %2319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2320 = extractvalue %dx.types.CBufRet.f32 %2319, 0
  %2321 = fmul fast float %2320, %2315
  %2322 = fmul fast float %2320, %2316
  %2323 = fmul fast float %2320, %2317
  br label %2324

; <label>:2324                                    ; preds = %2318, %2301
  %2325 = phi float [ %2321, %2318 ], [ %2315, %2301 ]
  %2326 = phi float [ %2322, %2318 ], [ %2316, %2301 ]
  %2327 = phi float [ %2323, %2318 ], [ %2317, %2301 ]
  %2328 = fmul fast float %2325, %2296
  %2329 = select i1 %163, float %2328, float %2325
  %2330 = call float @dx.op.dot3.f32(i32 55, float %2329, float %2326, float %2327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2331 = select i1 %163, float 0.000000e+00, float %2325
  %2332 = select i1 %163, float %2330, float %2326
  %2333 = select i1 %163, float 0.000000e+00, float %2327
  br label %2334

; <label>:2334                                    ; preds = %2324, %2286
  %2335 = phi float [ %2331, %2324 ], [ 0.000000e+00, %2286 ]
  %2336 = phi float [ %2332, %2324 ], [ 0.000000e+00, %2286 ]
  %2337 = phi float [ %2333, %2324 ], [ 0.000000e+00, %2286 ]
  br i1 %1691, label %2338, label %2346

; <label>:2338                                    ; preds = %2334
  %2339 = fsub fast float 1.000000e+00, %1987
  %2340 = fmul fast float %2339, %1684
  %2341 = fmul fast float %2339, %1685
  %2342 = fmul fast float %2339, %1686
  %2343 = fmul fast float %2339, %1681
  %2344 = fmul fast float %2339, %1682
  %2345 = fmul fast float %2339, %1683
  br label %2346

; <label>:2346                                    ; preds = %2338, %2334
  %2347 = phi float [ %2343, %2338 ], [ %1681, %2334 ]
  %2348 = phi float [ %2344, %2338 ], [ %1682, %2334 ]
  %2349 = phi float [ %2345, %2338 ], [ %1683, %2334 ]
  %2350 = phi float [ %2340, %2338 ], [ %1684, %2334 ]
  %2351 = phi float [ %2341, %2338 ], [ %1685, %2334 ]
  %2352 = phi float [ %2342, %2338 ], [ %1686, %2334 ]
  %2353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2354 = extractvalue %dx.types.ResRet.i32 %2353, 0
  %2355 = and i32 %2354, 3
  %2356 = icmp eq i32 %2355, 3
  br i1 %2356, label %2432, label %2357

; <label>:2357                                    ; preds = %2346
  %2358 = and i32 %2354, 16
  %2359 = icmp ne i32 %2358, 0
  %2360 = select i1 %2359, float %1987, float 0.000000e+00
  %2361 = icmp eq i32 %2355, 0
  br i1 %2361, label %2362, label %2387

; <label>:2362                                    ; preds = %2357
  %2363 = and i32 %2354, 64
  %2364 = icmp ne i32 %2363, 0
  %2365 = select i1 %2364, float %1987, float 0.000000e+00
  %2366 = fsub fast float %2207, %2350
  %2367 = fsub fast float %2208, %2351
  %2368 = fsub fast float %2209, %2352
  %2369 = fmul fast float %2360, %2366
  %2370 = fmul fast float %2360, %2367
  %2371 = fmul fast float %2360, %2368
  %2372 = fadd fast float %2369, %2350
  %2373 = fadd fast float %2370, %2351
  %2374 = fadd fast float %2371, %2352
  %2375 = fsub fast float %2193, %1687
  %2376 = fmul fast float %2360, %2375
  %2377 = fadd fast float %2376, %1687
  %2378 = fsub fast float %2335, %2347
  %2379 = fsub fast float %2336, %2348
  %2380 = fsub fast float %2337, %2349
  %2381 = fmul fast float %2365, %2378
  %2382 = fmul fast float %2365, %2379
  %2383 = fmul fast float %2365, %2380
  %2384 = fadd fast float %2381, %2347
  %2385 = fadd fast float %2382, %2348
  %2386 = fadd fast float %2383, %2349
  br label %2432

; <label>:2387                                    ; preds = %2357
  %2388 = icmp eq i32 %2355, 1
  br i1 %2388, label %2389, label %2402

; <label>:2389                                    ; preds = %2387
  %2390 = fadd fast float %2207, -1.000000e+00
  %2391 = fadd fast float %2208, -1.000000e+00
  %2392 = fadd fast float %2209, -1.000000e+00
  %2393 = fmul fast float %2360, %2390
  %2394 = fmul fast float %2360, %2391
  %2395 = fmul fast float %2360, %2392
  %2396 = fadd fast float %2393, 1.000000e+00
  %2397 = fadd fast float %2394, 1.000000e+00
  %2398 = fadd fast float %2395, 1.000000e+00
  %2399 = fmul fast float %2396, %2350
  %2400 = fmul fast float %2397, %2351
  %2401 = fmul fast float %2398, %2352
  br label %2432

; <label>:2402                                    ; preds = %2387
  %2403 = icmp eq i32 %2355, 2
  br i1 %2403, label %2404, label %2432

; <label>:2404                                    ; preds = %2402
  %2405 = call float @dx.op.unary.f32(i32 24, float %2207)  ; Sqrt(value)
  %2406 = call float @dx.op.unary.f32(i32 24, float %2208)  ; Sqrt(value)
  %2407 = call float @dx.op.unary.f32(i32 24, float %2209)  ; Sqrt(value)
  %2408 = fadd fast float %2405, -5.000000e-01
  %2409 = fadd fast float %2406, -5.000000e-01
  %2410 = fadd fast float %2407, -5.000000e-01
  %2411 = fmul fast float %2408, %2360
  %2412 = fmul fast float %2409, %2360
  %2413 = fmul fast float %2410, %2360
  %2414 = fadd fast float %2411, 5.000000e-01
  %2415 = fadd fast float %2412, 5.000000e-01
  %2416 = fadd fast float %2413, 5.000000e-01
  %2417 = fmul fast float %2414, 2.000000e+00
  %2418 = fsub fast float 1.000000e+00, %2417
  %2419 = fmul fast float %2418, %2350
  %2420 = fadd fast float %2419, %2417
  %2421 = fmul fast float %2420, %2350
  %2422 = fmul fast float %2415, 2.000000e+00
  %2423 = fsub fast float 1.000000e+00, %2422
  %2424 = fmul fast float %2423, %2351
  %2425 = fadd fast float %2424, %2422
  %2426 = fmul fast float %2425, %2351
  %2427 = fmul fast float %2416, 2.000000e+00
  %2428 = fsub fast float 1.000000e+00, %2427
  %2429 = fmul fast float %2428, %2352
  %2430 = fadd fast float %2429, %2427
  %2431 = fmul fast float %2430, %2352
  br label %2432

; <label>:2432                                    ; preds = %2404, %2402, %2389, %2362, %2346
  %2433 = phi float [ %2347, %2346 ], [ %2347, %2404 ], [ %2347, %2402 ], [ %2347, %2389 ], [ %2384, %2362 ]
  %2434 = phi float [ %2348, %2346 ], [ %2348, %2404 ], [ %2348, %2402 ], [ %2348, %2389 ], [ %2385, %2362 ]
  %2435 = phi float [ %2349, %2346 ], [ %2349, %2404 ], [ %2349, %2402 ], [ %2349, %2389 ], [ %2386, %2362 ]
  %2436 = phi float [ %2350, %2346 ], [ %2421, %2404 ], [ %2350, %2402 ], [ %2399, %2389 ], [ %2372, %2362 ]
  %2437 = phi float [ %2351, %2346 ], [ %2426, %2404 ], [ %2351, %2402 ], [ %2400, %2389 ], [ %2373, %2362 ]
  %2438 = phi float [ %2352, %2346 ], [ %2431, %2404 ], [ %2352, %2402 ], [ %2401, %2389 ], [ %2374, %2362 ]
  %2439 = phi float [ %1687, %2346 ], [ %1687, %2404 ], [ %1687, %2402 ], [ %1687, %2389 ], [ %2377, %2362 ]
  %2440 = and i32 %2354, 12
  %2441 = icmp eq i32 %2440, 12
  br i1 %2441, label %2514, label %2442

; <label>:2442                                    ; preds = %2432
  %2443 = and i32 %2354, 2097184
  %2444 = icmp eq i32 %2443, 2097184
  %2445 = select i1 %2444, float %1987, float 0.000000e+00
  %2446 = and i32 %2354, 4194336
  %2447 = icmp eq i32 %2446, 4194336
  %2448 = select i1 %2447, float %1987, float 0.000000e+00
  %2449 = and i32 %2354, 8388640
  %2450 = icmp eq i32 %2449, 8388640
  %2451 = select i1 %2450, float %1987, float 0.000000e+00
  %2452 = icmp eq i32 %2440, 0
  br i1 %2452, label %2453, label %2466

; <label>:2453                                    ; preds = %2442
  %2454 = fsub fast float %2288, %1679
  %2455 = fsub fast float %2289, %1680
  %2456 = fmul fast float %2445, %2454
  %2457 = fmul fast float %2445, %2455
  %2458 = fadd fast float %2456, %1679
  %2459 = fadd fast float %2457, %1680
  %2460 = fsub fast float %2290, %1689
  %2461 = fmul fast float %2448, %2460
  %2462 = fadd fast float %2461, %1689
  %2463 = fsub fast float %2287, %1688
  %2464 = fmul fast float %2451, %2463
  %2465 = fadd fast float %2464, %1688
  br label %2514

; <label>:2466                                    ; preds = %2442
  %2467 = icmp eq i32 %2440, 4
  br i1 %2467, label %2468, label %2500

; <label>:2468                                    ; preds = %2466
  %2469 = fmul fast float %2445, %2288
  %2470 = fmul fast float %2445, %2289
  %2471 = fadd fast float %2469, %1679
  %2472 = fadd fast float %2470, %1680
  %2473 = call float @dx.op.binary.f32(i32 36, float %1689, float %2290)  ; FMin(a,b)
  %2474 = fsub fast float %2473, %1689
  %2475 = fmul fast float %2474, %2448
  %2476 = fadd fast float %2475, %1689
  %2477 = fadd fast float %2287, %1688
  %2478 = fmul fast float %2477, 0x3FF337FAE0000000
  %2479 = fmul fast float %1688, %1688
  %2480 = fmul fast float %2287, %2287
  %2481 = fadd fast float %2480, %2479
  %2482 = fmul fast float %2481, 0x3FE5152B00000000
  %2483 = fmul fast float %1688, 0xBFCC1F85E0000000
  %2484 = fmul fast float %2483, %2287
  %2485 = fadd fast float %2484, 0xBFE1363700000000
  %2486 = fadd fast float %2485, %2478
  %2487 = fsub fast float %2486, %2482
  %2488 = fmul fast float %2477, 0x3FBA6F0D00000000
  %2489 = fmul fast float %2481, 0x3FD0432880000000
  %2490 = fmul fast float %1688, 0xBFEF110800000000
  %2491 = fmul fast float %2490, %2287
  %2492 = fadd fast float %2491, 1.000000e+00
  %2493 = fsub fast float %2492, %2488
  %2494 = fadd fast float %2493, %2489
  %2495 = fdiv fast float %2487, %2494
  %2496 = call float @dx.op.unary.f32(i32 7, float %2495)  ; Saturate(value)
  %2497 = fsub fast float %2496, %1688
  %2498 = fmul fast float %2497, %2451
  %2499 = fadd fast float %2498, %1688
  br label %2514

; <label>:2500                                    ; preds = %2466
  %2501 = icmp eq i32 %2440, 8
  br i1 %2501, label %2502, label %2514

; <label>:2502                                    ; preds = %2500
  %2503 = fmul fast float %2445, %2288
  %2504 = fmul fast float %2445, %2289
  %2505 = fadd fast float %2503, %1679
  %2506 = fadd fast float %2504, %1680
  %2507 = call float @dx.op.binary.f32(i32 36, float %1689, float %2290)  ; FMin(a,b)
  %2508 = fsub fast float %2507, %1689
  %2509 = fmul fast float %2508, %2448
  %2510 = fadd fast float %2509, %1689
  %2511 = fsub fast float %2287, %1688
  %2512 = fmul fast float %2451, %2511
  %2513 = fadd fast float %2512, %1688
  br label %2514

; <label>:2514                                    ; preds = %2502, %2500, %2468, %2453, %2432, %1986, %1690, %1678
  %2515 = phi float [ %1679, %2432 ], [ %1679, %1986 ], [ %1679, %1678 ], [ %2505, %2502 ], [ %1679, %2500 ], [ %2471, %2468 ], [ %2458, %2453 ], [ %1679, %1690 ]
  %2516 = phi float [ %1680, %2432 ], [ %1680, %1986 ], [ %1680, %1678 ], [ %2506, %2502 ], [ %1680, %2500 ], [ %2472, %2468 ], [ %2459, %2453 ], [ %1680, %1690 ]
  %2517 = phi float [ %2433, %2432 ], [ %1681, %1986 ], [ %1681, %1678 ], [ %2433, %2502 ], [ %2433, %2500 ], [ %2433, %2468 ], [ %2433, %2453 ], [ %1681, %1690 ]
  %2518 = phi float [ %2434, %2432 ], [ %1682, %1986 ], [ %1682, %1678 ], [ %2434, %2502 ], [ %2434, %2500 ], [ %2434, %2468 ], [ %2434, %2453 ], [ %1682, %1690 ]
  %2519 = phi float [ %2435, %2432 ], [ %1683, %1986 ], [ %1683, %1678 ], [ %2435, %2502 ], [ %2435, %2500 ], [ %2435, %2468 ], [ %2435, %2453 ], [ %1683, %1690 ]
  %2520 = phi float [ %2436, %2432 ], [ %1684, %1986 ], [ %1684, %1678 ], [ %2436, %2502 ], [ %2436, %2500 ], [ %2436, %2468 ], [ %2436, %2453 ], [ %1684, %1690 ]
  %2521 = phi float [ %2437, %2432 ], [ %1685, %1986 ], [ %1685, %1678 ], [ %2437, %2502 ], [ %2437, %2500 ], [ %2437, %2468 ], [ %2437, %2453 ], [ %1685, %1690 ]
  %2522 = phi float [ %2438, %2432 ], [ %1686, %1986 ], [ %1686, %1678 ], [ %2438, %2502 ], [ %2438, %2500 ], [ %2438, %2468 ], [ %2438, %2453 ], [ %1686, %1690 ]
  %2523 = phi float [ %2439, %2432 ], [ %1687, %1986 ], [ %1687, %1678 ], [ %2439, %2502 ], [ %2439, %2500 ], [ %2439, %2468 ], [ %2439, %2453 ], [ %1687, %1690 ]
  %2524 = phi float [ %1688, %2432 ], [ %1688, %1986 ], [ %1688, %1678 ], [ %2513, %2502 ], [ %1688, %2500 ], [ %2499, %2468 ], [ %2465, %2453 ], [ %1688, %1690 ]
  %2525 = phi float [ %1689, %2432 ], [ %1689, %1986 ], [ %1689, %1678 ], [ %2510, %2502 ], [ %1689, %2500 ], [ %2476, %2468 ], [ %2462, %2453 ], [ %1689, %1690 ]
  br i1 %340, label %3350, label %2526

; <label>:2526                                    ; preds = %2514
  %2527 = icmp ult i32 %391, 4
  %2528 = add i32 %38, 72
  %2529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2530 = extractvalue %dx.types.ResRet.i32 %2529, 0
  %2531 = add i32 %38, 76
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = or i32 %2533, %2530
  %2535 = icmp eq i32 %2534, 0
  br i1 %2535, label %3350, label %2536

; <label>:2536                                    ; preds = %2526
  %2537 = and i32 %2530, 262144
  %2538 = icmp ne i32 %2537, 0
  %2539 = select i1 %2538, float %41, float 1.000000e+00
  %2540 = select i1 %2538, float %42, float 0.000000e+00
  %2541 = select i1 %2538, float %43, float 0.000000e+00
  %2542 = select i1 %2538, float %44, float 1.000000e+00
  %2543 = select i1 %2538, float %45, float %54
  %2544 = select i1 %2538, float %46, float %55
  %2545 = add i32 %38, 332
  %2546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2545, i32 undef)  ; BufferLoad(srv,index,wot)
  %2547 = extractvalue %dx.types.ResRet.i32 %2546, 0
  %2548 = lshr i32 %2547, 16
  %2549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2548)  ; LegacyF16ToF32(value)
  %2550 = fmul fast float %2549, 0x3F50624DE0000000
  %2551 = add i32 %38, 136
  %2552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2553 = extractvalue %dx.types.ResRet.i32 %2552, 0
  %2554 = lshr i32 %2553, 16
  %2555 = and i32 %2554, 255
  %2556 = lshr i32 %2553, 24
  %2557 = add i32 %38, 340
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = and i32 %2559, 65535
  %2561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2560)  ; LegacyF16ToF32(value)
  %2562 = lshr i32 %2559, 16
  %2563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2562)  ; LegacyF16ToF32(value)
  %2564 = add i32 %38, 80
  %2565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2564, i32 undef)  ; BufferLoad(srv,index,wot)
  %2566 = extractvalue %dx.types.ResRet.i32 %2565, 0
  %2567 = lshr i32 %2566, 22
  %2568 = shl nuw nsw i32 %2567, 5
  %2569 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2568)  ; LegacyF16ToF32(value)
  %2570 = shl i32 %2566, 4
  %2571 = and i32 %2570, 32752
  %2572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2571)  ; LegacyF16ToF32(value)
  %2573 = lshr i32 %2566, 7
  %2574 = and i32 %2573, 32752
  %2575 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2574)  ; LegacyF16ToF32(value)
  %2576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2577 = extractvalue %dx.types.CBufRet.f32 %2576, 3
  %2578 = fmul fast float %2577, 1.000000e+03
  %2579 = fmul fast float %330, %2578
  %2580 = call float @dx.op.unary.f32(i32 22, float %2579)  ; Frc(value)
  %2581 = fadd fast float %2580, %320
  %2582 = fmul fast float %331, %2578
  %2583 = call float @dx.op.unary.f32(i32 22, float %2582)  ; Frc(value)
  %2584 = fadd fast float %2583, %322
  %2585 = fmul fast float %2550, %2578
  %2586 = call float @dx.op.unary.f32(i32 22, float %2585)  ; Frc(value)
  %2587 = fmul fast float %2586, 0x401921FB60000000
  %2588 = fadd fast float %2587, %2569
  %2589 = call float @dx.op.unary.f32(i32 13, float %2588)  ; Sin(value)
  %2590 = call float @dx.op.unary.f32(i32 12, float %2588)  ; Cos(value)
  %2591 = fsub fast float -0.000000e+00, %2589
  %2592 = fadd fast float %2543, -5.000000e-01
  %2593 = fadd fast float %2544, -5.000000e-01
  %2594 = fmul fast float %2561, %2592
  %2595 = fmul fast float %2563, %2593
  %2596 = fadd fast float %2594, 5.000000e-01
  %2597 = fadd fast float %2595, 5.000000e-01
  %2598 = fmul fast float %2572, %2596
  %2599 = fmul fast float %2575, %2597
  %2600 = fmul fast float %2590, %2598
  %2601 = call float @dx.op.tertiary.f32(i32 46, float %2591, float %2599, float %2600)  ; FMad(a,b,c)
  %2602 = fmul fast float %2589, %2598
  %2603 = call float @dx.op.tertiary.f32(i32 46, float %2590, float %2599, float %2602)  ; FMad(a,b,c)
  %2604 = fadd fast float %2581, %2601
  %2605 = fadd fast float %2584, %2603
  %2606 = icmp ugt i32 %2555, 1
  %2607 = icmp ugt i32 %2553, 33554431
  %2608 = or i1 %2607, %2606
  br i1 %2608, label %2609, label %2634

; <label>:2609                                    ; preds = %2536
  %2610 = add i32 %38, 276
  %2611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2610, i32 undef)  ; BufferLoad(srv,index,wot)
  %2612 = extractvalue %dx.types.ResRet.i32 %2611, 0
  %2613 = lshr i32 %2612, 16
  %2614 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2613)  ; LegacyF16ToF32(value)
  %2615 = fmul fast float %2577, %2614
  %2616 = call float @dx.op.unary.f32(i32 22, float %2615)  ; Frc(value)
  %2617 = mul nuw nsw i32 %2555, %2556
  %2618 = uitofp i32 %2617 to float
  %2619 = fmul fast float %2616, %2618
  %2620 = call float @dx.op.unary.f32(i32 27, float %2619)  ; Round_ni(value)
  %2621 = fptoui float %2620 to i32
  %2622 = urem i32 %2621, %2555
  %2623 = udiv i32 %2621, %2556
  %2624 = call float @dx.op.unary.f32(i32 22, float %2604)  ; Frc(value)
  %2625 = call float @dx.op.unary.f32(i32 22, float %2605)  ; Frc(value)
  %2626 = uitofp i32 %2622 to float
  %2627 = uitofp i32 %2623 to float
  %2628 = fadd fast float %2624, %2626
  %2629 = fadd fast float %2625, %2627
  %2630 = uitofp i32 %2555 to float
  %2631 = uitofp i32 %2556 to float
  %2632 = fdiv fast float %2628, %2630
  %2633 = fdiv fast float %2629, %2631
  br label %2634

; <label>:2634                                    ; preds = %2609, %2536
  %2635 = phi float [ %2632, %2609 ], [ %2604, %2536 ]
  %2636 = phi float [ %2633, %2609 ], [ %2605, %2536 ]
  %2637 = and i32 %2530, 16777216
  %2638 = icmp eq i32 %2637, 0
  br i1 %2638, label %2748, label %2639

; <label>:2639                                    ; preds = %2634
  %2640 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2641 = extractvalue %dx.types.CBufRet.f32 %2640, 0
  %2642 = extractvalue %dx.types.CBufRet.f32 %2640, 1
  %2643 = extractvalue %dx.types.CBufRet.f32 %2640, 2
  %2644 = fadd fast float %2641, %121
  %2645 = fadd fast float %2642, %122
  %2646 = fadd fast float %2643, %123
  %2647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2648 = extractvalue %dx.types.CBufRet.f32 %2647, 0
  %2649 = call float @dx.op.unary.f32(i32 7, float %2648)  ; Saturate(value)
  %2650 = icmp eq i32 %39, 65535
  br i1 %2650, label %2745, label %2651

; <label>:2651                                    ; preds = %2639
  %2652 = lshr i32 %39, 1
  %2653 = shl i32 %2652, 2
  %2654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2653, i32 undef)  ; BufferLoad(srv,index,wot)
  %2655 = extractvalue %dx.types.ResRet.i32 %2654, 0
  %2656 = and i32 %39, 1
  %2657 = icmp ne i32 %2656, 0
  %2658 = lshr i32 %2655, 16
  %2659 = and i32 %2655, 65535
  %2660 = select i1 %2657, i32 %2658, i32 %2659
  %2661 = icmp eq i32 %2660, 65535
  br i1 %2661, label %2741, label %2662

; <label>:2662                                    ; preds = %2651
  %2663 = mul nuw nsw i32 %2660, 40
  %2664 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2663, i32 undef)  ; BufferLoad(srv,index,wot)
  %2665 = extractvalue %dx.types.ResRet.f32 %2664, 0
  %2666 = extractvalue %dx.types.ResRet.f32 %2664, 1
  %2667 = extractvalue %dx.types.ResRet.f32 %2664, 2
  %2668 = add nuw nsw i32 %2663, 12
  %2669 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2668, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.f32 %2669, 0
  %2671 = extractvalue %dx.types.ResRet.f32 %2669, 1
  %2672 = extractvalue %dx.types.ResRet.f32 %2669, 2
  %2673 = add nuw nsw i32 %2663, 24
  %2674 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2673, i32 undef)  ; BufferLoad(srv,index,wot)
  %2675 = extractvalue %dx.types.ResRet.f32 %2674, 0
  %2676 = extractvalue %dx.types.ResRet.f32 %2674, 1
  %2677 = extractvalue %dx.types.ResRet.f32 %2674, 2
  %2678 = add nuw nsw i32 %2663, 36
  %2679 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2678, i32 undef)  ; BufferLoad(srv,index,wot)
  %2680 = extractvalue %dx.types.ResRet.f32 %2679, 0
  %2681 = fsub fast float %2644, %2665
  %2682 = fsub fast float %2645, %2666
  %2683 = fsub fast float %2646, %2667
  %2684 = fmul fast float %2680, %2681
  %2685 = fmul fast float %2680, %2682
  %2686 = fmul fast float %2680, %2683
  %2687 = call float @dx.op.unary.f32(i32 27, float %2684)  ; Round_ni(value)
  %2688 = call float @dx.op.unary.f32(i32 27, float %2685)  ; Round_ni(value)
  %2689 = call float @dx.op.unary.f32(i32 27, float %2686)  ; Round_ni(value)
  %2690 = fadd fast float %2687, 5.000000e-01
  %2691 = fadd fast float %2688, 5.000000e-01
  %2692 = fadd fast float %2689, 5.000000e-01
  %2693 = fmul fast float %2690, %2670
  %2694 = fmul fast float %2691, %2671
  %2695 = fmul fast float %2692, %2672
  %2696 = shl i32 %39, 2
  %2697 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.i32 %2697, 0
  %2699 = add i32 %2698, 0
  %2700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2699, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2701 = call float @dx.op.unary.f32(i32 22, float %2693)  ; Frc(value)
  %2702 = call float @dx.op.unary.f32(i32 22, float %2694)  ; Frc(value)
  %2703 = call float @dx.op.unary.f32(i32 22, float %2695)  ; Frc(value)
  %2704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2700, %dx.types.Handle %35, float %2701, float %2702, float %2703, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2705 = extractvalue %dx.types.ResRet.f32 %2704, 0
  %2706 = extractvalue %dx.types.ResRet.f32 %2704, 1
  %2707 = extractvalue %dx.types.ResRet.f32 %2704, 2
  %2708 = fmul fast float %2705, 1.023000e+03
  %2709 = fmul fast float %2706, 1.023000e+03
  %2710 = fmul fast float %2707, 1.023000e+03
  %2711 = fadd fast float %2708, 5.000000e-01
  %2712 = fadd fast float %2709, 5.000000e-01
  %2713 = fadd fast float %2710, 5.000000e-01
  %2714 = call float @dx.op.unary.f32(i32 27, float %2711)  ; Round_ni(value)
  %2715 = call float @dx.op.unary.f32(i32 27, float %2712)  ; Round_ni(value)
  %2716 = call float @dx.op.unary.f32(i32 27, float %2713)  ; Round_ni(value)
  %2717 = fsub fast float %2684, %2687
  %2718 = fsub fast float %2685, %2688
  %2719 = fsub fast float %2686, %2689
  %2720 = fmul fast float %2717, 7.500000e-01
  %2721 = fmul fast float %2718, 7.500000e-01
  %2722 = fmul fast float %2719, 7.500000e-01
  %2723 = fadd fast float %2687, 1.250000e-01
  %2724 = fadd fast float %2723, %2720
  %2725 = fadd fast float %2724, %2714
  %2726 = fadd fast float %2688, 1.250000e-01
  %2727 = fadd fast float %2726, %2721
  %2728 = fadd fast float %2727, %2715
  %2729 = fadd fast float %2689, 1.250000e-01
  %2730 = fadd fast float %2729, %2722
  %2731 = fadd fast float %2730, %2716
  %2732 = fmul fast float %2725, %2675
  %2733 = fmul fast float %2728, %2676
  %2734 = fmul fast float %2731, %2677
  %2735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2736 = extractvalue %dx.types.ResRet.i32 %2735, 0
  %2737 = add i32 %2736, 0
  %2738 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2737, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2739 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2738, %dx.types.Handle %33, float %2732, float %2733, float %2734, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2740 = extractvalue %dx.types.ResRet.f32 %2739, 0
  br label %2741

; <label>:2741                                    ; preds = %2662, %2651
  %2742 = phi float [ %2740, %2662 ], [ -1.000000e+00, %2651 ]
  %2743 = fadd fast float %2742, %2649
  %2744 = call float @dx.op.unary.f32(i32 7, float %2743)  ; Saturate(value)
  br label %2745

; <label>:2745                                    ; preds = %2741, %2639
  %2746 = phi float [ %2744, %2741 ], [ %2649, %2639 ]
  %2747 = fmul fast float %2746, %386
  br label %2748

; <label>:2748                                    ; preds = %2745, %2634
  %2749 = phi float [ %2747, %2745 ], [ %386, %2634 ]
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = and i32 %2751, 256
  %2753 = icmp eq i32 %2752, 0
  br i1 %2753, label %2800, label %2754

; <label>:2754                                    ; preds = %2748
  %2755 = add i32 %38, 436
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = add i32 %2757, 0
  %2759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2758, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2760 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2759, %dx.types.Handle %63, float %2635, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2761 = extractvalue %dx.types.ResRet.f32 %2760, 0
  %2762 = add i32 %38, 148
  %2763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2764 = extractvalue %dx.types.ResRet.i32 %2763, 0
  %2765 = shl i32 %2764, 4
  %2766 = and i32 %2765, 32752
  %2767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2766)  ; LegacyF16ToF32(value)
  %2768 = lshr i32 %2764, 7
  %2769 = and i32 %2768, 32752
  %2770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2769)  ; LegacyF16ToF32(value)
  %2771 = fsub fast float 1.000000e+00, %2749
  %2772 = call float @dx.op.binary.f32(i32 35, float %2771, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2773 = bitcast float %2749 to i32
  %2774 = sitofp i32 %2773 to float
  %2775 = fadd fast float %2774, 0xC1CFBF8940000000
  %2776 = fmul fast float %2770, %2775
  %2777 = fadd fast float %2776, 0x41CFBF8940000000
  %2778 = fptosi float %2777 to i32
  %2779 = bitcast i32 %2778 to float
  %2780 = bitcast float %2772 to i32
  %2781 = sitofp i32 %2780 to float
  %2782 = fadd fast float %2781, 0xC1CFBF8940000000
  %2783 = fmul fast float %2782, %2770
  %2784 = fadd fast float %2783, 0x41CFBF8940000000
  %2785 = fptosi float %2784 to i32
  %2786 = bitcast i32 %2785 to float
  %2787 = fmul fast float %2779, %2767
  %2788 = fmul fast float %2786, %2767
  %2789 = fsub fast float %2772, %2787
  %2790 = fadd fast float %2788, %2772
  %2791 = call float @dx.op.unary.f32(i32 7, float %2789)  ; Saturate(value)
  %2792 = call float @dx.op.unary.f32(i32 7, float %2790)  ; Saturate(value)
  %2793 = fsub fast float %2761, %2791
  %2794 = fsub fast float %2792, %2791
  %2795 = bitcast float %2794 to i32
  %2796 = sub nsw i32 2129859010, %2795
  %2797 = bitcast i32 %2796 to float
  %2798 = fmul fast float %2797, %2793
  %2799 = call float @dx.op.unary.f32(i32 7, float %2798)  ; Saturate(value)
  br label %2800

; <label>:2800                                    ; preds = %2754, %2748
  %2801 = phi float [ %2799, %2754 ], [ %2749, %2748 ]
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = and i32 %2803, 128
  %2805 = icmp eq i32 %2804, 0
  br i1 %2805, label %2822, label %2806

; <label>:2806                                    ; preds = %2800
  %2807 = add i32 %38, 420
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = add i32 %2809, 0
  %2811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2812 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2811, %dx.types.Handle %63, float %2635, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2813 = extractvalue %dx.types.ResRet.f32 %2812, 0
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = and i32 %2815, 524288
  %2817 = icmp ne i32 %2816, 0
  %2818 = fcmp fast ogt float %2813, 0x3FE0101020000000
  %2819 = select i1 %2818, float 1.000000e+00, float 0.000000e+00
  %2820 = select i1 %2817, float %2819, float %2813
  %2821 = fmul fast float %2820, %2801
  br label %2822

; <label>:2822                                    ; preds = %2806, %2800
  %2823 = phi float [ %2821, %2806 ], [ %2801, %2800 ]
  %2824 = fcmp fast ult float %2823, 0x3F70101020000000
  br i1 %2824, label %3350, label %2825

; <label>:2825                                    ; preds = %2822
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = and i32 %2827, 16
  %2829 = icmp eq i32 %2828, 0
  br i1 %2829, label %3028, label %2830

; <label>:2830                                    ; preds = %2825
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2551, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = add i32 %38, 372
  %2834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2833, i32 undef)  ; BufferLoad(srv,index,wot)
  %2835 = extractvalue %dx.types.ResRet.i32 %2834, 0
  %2836 = add i32 %2835, 0
  %2837 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2836, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2838 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2837, %dx.types.Handle %62, float %2635, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.ResRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.ResRet.f32 %2838, 2
  %2842 = extractvalue %dx.types.ResRet.f32 %2838, 3
  %2843 = and i32 %2832, 255
  %2844 = uitofp i32 %2843 to float
  %2845 = lshr i32 %2832, 8
  %2846 = and i32 %2845, 255
  %2847 = uitofp i32 %2846 to float
  %2848 = fmul fast float %2842, %2844
  %2849 = fadd fast float %2848, %2847
  %2850 = fmul fast float %2849, 0x3F70101000000000
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = and i32 %2852, 512
  %2854 = icmp eq i32 %2853, 0
  br i1 %2854, label %2863, label %2855

; <label>:2855                                    ; preds = %2830
  %2856 = add i32 %38, 456
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = add i32 %2858, 0
  %2860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2859, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2861 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2860, %dx.types.Handle %63, float %2635, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2862 = extractvalue %dx.types.ResRet.f32 %2861, 0
  br label %2863

; <label>:2863                                    ; preds = %2855, %2830
  %2864 = phi float [ %2862, %2855 ], [ 1.000000e+00, %2830 ]
  %2865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %2866 = extractvalue %dx.types.ResRet.i32 %2865, 0
  %2867 = and i32 %2866, 33554432
  %2868 = icmp eq i32 %2867, 0
  br i1 %2868, label %2975, label %2869

; <label>:2869                                    ; preds = %2863
  %2870 = add i32 %38, 272
  %2871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.i32 %2871, 0
  %2873 = and i32 %2872, 65535
  %2874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2873)  ; LegacyF16ToF32(value)
  %2875 = lshr i32 %2872, 16
  %2876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2875)  ; LegacyF16ToF32(value)
  %2877 = add i32 %38, 276
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 65535
  %2881 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2880)  ; LegacyF16ToF32(value)
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = lshr i32 %2883, 24
  %2885 = uitofp i32 %2884 to float
  %2886 = fmul fast float %2885, 0x3F70101020000000
  %2887 = and i32 %2883, 255
  %2888 = uitofp i32 %2887 to float
  %2889 = fmul fast float %2888, 0x3F70101020000000
  %2890 = lshr i32 %2883, 8
  %2891 = and i32 %2890, 255
  %2892 = uitofp i32 %2891 to float
  %2893 = fmul fast float %2892, 0x3F70101020000000
  %2894 = lshr i32 %2883, 16
  %2895 = and i32 %2894, 255
  %2896 = uitofp i32 %2895 to float
  %2897 = fmul fast float %2896, 0x3F70101020000000
  %2898 = add i32 %38, 268
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = lshr i32 %2900, 24
  %2902 = uitofp i32 %2901 to float
  %2903 = fmul fast float %2902, 0x3F70101020000000
  %2904 = and i32 %2900, 255
  %2905 = uitofp i32 %2904 to float
  %2906 = fmul fast float %2905, 0x3F70101020000000
  %2907 = lshr i32 %2900, 8
  %2908 = and i32 %2907, 255
  %2909 = uitofp i32 %2908 to float
  %2910 = fmul fast float %2909, 0x3F70101020000000
  %2911 = lshr i32 %2900, 16
  %2912 = and i32 %2911, 255
  %2913 = uitofp i32 %2912 to float
  %2914 = fmul fast float %2913, 0x3F70101020000000
  %2915 = bitcast float %2839 to i32
  %2916 = ashr i32 %2915, 1
  %2917 = sub nsw i32 1597463174, %2916
  %2918 = bitcast i32 %2917 to float
  %2919 = fmul fast float %2839, 5.000000e-01
  %2920 = fmul fast float %2918, %2918
  %2921 = fmul fast float %2920, %2919
  %2922 = fsub fast float 1.500000e+00, %2921
  %2923 = fmul fast float %2918, %2839
  %2924 = fmul fast float %2923, %2922
  %2925 = bitcast float %2840 to i32
  %2926 = ashr i32 %2925, 1
  %2927 = sub nsw i32 1597463174, %2926
  %2928 = bitcast i32 %2927 to float
  %2929 = fmul fast float %2840, 5.000000e-01
  %2930 = fmul fast float %2928, %2928
  %2931 = fmul fast float %2930, %2929
  %2932 = fsub fast float 1.500000e+00, %2931
  %2933 = fmul fast float %2928, %2840
  %2934 = fmul fast float %2933, %2932
  %2935 = bitcast float %2841 to i32
  %2936 = ashr i32 %2935, 1
  %2937 = sub nsw i32 1597463174, %2936
  %2938 = bitcast i32 %2937 to float
  %2939 = fmul fast float %2841, 5.000000e-01
  %2940 = fmul fast float %2938, %2938
  %2941 = fmul fast float %2940, %2939
  %2942 = fsub fast float 1.500000e+00, %2941
  %2943 = fmul fast float %2938, %2841
  %2944 = fmul fast float %2943, %2942
  %2945 = fsub fast float %2924, %2906
  %2946 = fsub fast float %2934, %2910
  %2947 = fsub fast float %2944, %2914
  %2948 = fmul fast float %2945, %2874
  %2949 = fmul fast float %2946, %2876
  %2950 = fmul fast float %2947, %2881
  %2951 = fadd fast float %2948, %2889
  %2952 = fadd fast float %2949, %2893
  %2953 = fadd fast float %2950, %2897
  %2954 = call float @dx.op.unary.f32(i32 7, float %2951)  ; Saturate(value)
  %2955 = call float @dx.op.unary.f32(i32 7, float %2952)  ; Saturate(value)
  %2956 = call float @dx.op.unary.f32(i32 7, float %2953)  ; Saturate(value)
  %2957 = fmul fast float %2954, %2954
  %2958 = fmul fast float %2955, %2955
  %2959 = fmul fast float %2956, %2956
  %2960 = fsub fast float %2957, %2839
  %2961 = fsub fast float %2958, %2840
  %2962 = fsub fast float %2959, %2841
  %2963 = fmul fast float %2960, %2864
  %2964 = fmul fast float %2961, %2864
  %2965 = fmul fast float %2962, %2864
  %2966 = fadd fast float %2963, %2839
  %2967 = fadd fast float %2964, %2840
  %2968 = fadd fast float %2965, %2841
  %2969 = fadd fast float %2886, %2850
  %2970 = fsub fast float %2969, %2903
  %2971 = call float @dx.op.unary.f32(i32 7, float %2970)  ; Saturate(value)
  %2972 = fsub fast float %2971, %2850
  %2973 = fmul fast float %2972, %2864
  %2974 = fadd fast float %2973, %2850
  br label %3028

; <label>:2975                                    ; preds = %2863
  %2976 = and i32 %2866, 134217728
  %2977 = icmp eq i32 %2976, 0
  br i1 %2977, label %3012, label %2978

; <label>:2978                                    ; preds = %2975
  %2979 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2980 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %2981 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %2982 = fadd fast float %2979, -5.000000e-01
  %2983 = fadd fast float %2980, -5.000000e-01
  %2984 = fadd fast float %2981, -5.000000e-01
  %2985 = fmul fast float %2982, %2864
  %2986 = fmul fast float %2983, %2864
  %2987 = fmul fast float %2984, %2864
  %2988 = fadd fast float %2985, 5.000000e-01
  %2989 = fadd fast float %2986, 5.000000e-01
  %2990 = fadd fast float %2987, 5.000000e-01
  %2991 = call float @dx.op.unary.f32(i32 24, float %2839)  ; Sqrt(value)
  %2992 = call float @dx.op.unary.f32(i32 24, float %2840)  ; Sqrt(value)
  %2993 = call float @dx.op.unary.f32(i32 24, float %2841)  ; Sqrt(value)
  %2994 = fmul fast float %2988, 2.000000e+00
  %2995 = fsub fast float 1.000000e+00, %2994
  %2996 = fmul fast float %2995, %2991
  %2997 = fadd fast float %2996, %2994
  %2998 = fmul fast float %2997, %2991
  %2999 = fmul fast float %2989, 2.000000e+00
  %3000 = fsub fast float 1.000000e+00, %2999
  %3001 = fmul fast float %3000, %2992
  %3002 = fadd fast float %3001, %2999
  %3003 = fmul fast float %3002, %2992
  %3004 = fmul fast float %2990, 2.000000e+00
  %3005 = fsub fast float 1.000000e+00, %3004
  %3006 = fmul fast float %3005, %2993
  %3007 = fadd fast float %3006, %3004
  %3008 = fmul fast float %3007, %2993
  %3009 = fmul fast float %2998, %2998
  %3010 = fmul fast float %3003, %3003
  %3011 = fmul fast float %3008, %3008
  br label %3028

; <label>:3012                                    ; preds = %2975
  %3013 = fmul fast float %307, %307
  %3014 = fmul fast float %311, %311
  %3015 = fmul fast float %315, %315
  %3016 = fadd fast float %3013, -1.000000e+00
  %3017 = fadd fast float %3014, -1.000000e+00
  %3018 = fadd fast float %3015, -1.000000e+00
  %3019 = fmul fast float %2864, %3016
  %3020 = fmul fast float %2864, %3017
  %3021 = fmul fast float %2864, %3018
  %3022 = fadd fast float %3019, 1.000000e+00
  %3023 = fadd fast float %3020, 1.000000e+00
  %3024 = fadd fast float %3021, 1.000000e+00
  %3025 = fmul fast float %3022, %2839
  %3026 = fmul fast float %3023, %2840
  %3027 = fmul fast float %3024, %2841
  br label %3028

; <label>:3028                                    ; preds = %3012, %2978, %2869, %2825
  %3029 = phi float [ %2974, %2869 ], [ %2850, %2978 ], [ %2850, %3012 ], [ 0x3FA23C0BE0000000, %2825 ]
  %3030 = phi float [ %2966, %2869 ], [ %3009, %2978 ], [ %3025, %3012 ], [ 1.000000e+00, %2825 ]
  %3031 = phi float [ %2967, %2869 ], [ %3010, %2978 ], [ %3026, %3012 ], [ 1.000000e+00, %2825 ]
  %3032 = phi float [ %2968, %2869 ], [ %3011, %2978 ], [ %3027, %3012 ], [ 1.000000e+00, %2825 ]
  %3033 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3034 = extractvalue %dx.types.CBufRet.i32 %3033, 1
  %3035 = and i32 %3034, 1
  %3036 = icmp ne i32 %3035, 0
  %3037 = add i32 %38, 356
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3037, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = and i32 %3039, 32
  %3041 = icmp ne i32 %3040, 0
  %3042 = and i1 %3036, %3041
  %3043 = select i1 %3042, float 1.000000e+00, float %3030
  %3044 = select i1 %3042, float 0x3FD3333340000000, float %3031
  %3045 = select i1 %3042, float 0x3FD3333340000000, float %3032
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = and i32 %3047, 32
  %3049 = icmp eq i32 %3048, 0
  br i1 %3049, label %3122, label %3050

; <label>:3050                                    ; preds = %3028
  %3051 = add i32 %38, 140
  %3052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3051, i32 undef)  ; BufferLoad(srv,index,wot)
  %3053 = extractvalue %dx.types.ResRet.i32 %3052, 0
  %3054 = add i32 %38, 388
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3054, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = add i32 %3056, 0
  %3058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3058, %dx.types.Handle %62, float %2635, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 0
  %3061 = extractvalue %dx.types.ResRet.f32 %3059, 1
  %3062 = extractvalue %dx.types.ResRet.f32 %3059, 2
  %3063 = extractvalue %dx.types.ResRet.f32 %3059, 3
  %3064 = and i32 %3053, 255
  %3065 = uitofp i32 %3064 to float
  %3066 = lshr i32 %3053, 8
  %3067 = and i32 %3066, 255
  %3068 = uitofp i32 %3067 to float
  %3069 = lshr i32 %3053, 16
  %3070 = and i32 %3069, 255
  %3071 = uitofp i32 %3070 to float
  %3072 = fmul fast float %3071, 0x3F70101000000000
  %3073 = fmul fast float %3060, %3065
  %3074 = fadd fast float %3073, %3068
  %3075 = fmul fast float %3074, 0x3F70101000000000
  %3076 = fadd fast float %3061, -5.000000e-01
  %3077 = fadd fast float %3063, -5.000000e-01
  %3078 = fmul fast float %3076, %3072
  %3079 = fmul fast float %3077, %3072
  %3080 = fadd fast float %3078, 5.000000e-01
  %3081 = fadd fast float %3079, 5.000000e-01
  %3082 = fmul fast float %3080, 2.000000e+00
  %3083 = fadd fast float %3082, -1.000000e+00
  %3084 = fmul fast float %3081, 2.000000e+00
  %3085 = fadd fast float %3084, -1.000000e+00
  %3086 = fadd fast float %3083, %3085
  %3087 = fmul fast float %3086, 5.000000e-01
  %3088 = fsub fast float %3083, %3085
  %3089 = fmul fast float %3088, 5.000000e-01
  %3090 = call float @dx.op.unary.f32(i32 6, float %3087)  ; FAbs(value)
  %3091 = fsub fast float 1.000000e+00, %3090
  %3092 = call float @dx.op.unary.f32(i32 6, float %3089)  ; FAbs(value)
  %3093 = fsub fast float %3091, %3092
  %3094 = call float @dx.op.dot3.f32(i32 55, float %3087, float %3089, float %3093, float %3087, float %3089, float %3093)  ; Dot3(ax,ay,az,bx,by,bz)
  %3095 = call float @dx.op.unary.f32(i32 25, float %3094)  ; Rsqrt(value)
  %3096 = fmul fast float %3087, %3095
  %3097 = fmul fast float %3089, %3095
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = and i32 %3099, 67108864
  %3101 = icmp eq i32 %3100, 0
  br i1 %3101, label %3118, label %3102

; <label>:3102                                    ; preds = %3050
  %3103 = add i32 %38, 328
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3103, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = and i32 %3105, 65535
  %3107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3106)  ; LegacyF16ToF32(value)
  %3108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3109 = extractvalue %dx.types.ResRet.i32 %3108, 0
  %3110 = and i32 %3109, 65535
  %3111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3110)  ; LegacyF16ToF32(value)
  %3112 = lshr i32 %3105, 16
  %3113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3112)  ; LegacyF16ToF32(value)
  %3114 = fsub fast float %3075, %3113
  %3115 = fmul fast float %3114, %3107
  %3116 = fadd fast float %3115, %3111
  %3117 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  br label %3118

; <label>:3118                                    ; preds = %3102, %3050
  %3119 = phi float [ %3117, %3102 ], [ %3075, %3050 ]
  %3120 = call float @dx.op.dot2.f32(i32 54, float %3096, float %3097, float %2539, float %2540)  ; Dot2(ax,ay,bx,by)
  %3121 = call float @dx.op.dot2.f32(i32 54, float %3096, float %3097, float %2541, float %2542)  ; Dot2(ax,ay,bx,by)
  br label %3122

; <label>:3122                                    ; preds = %3118, %3028
  %3123 = phi float [ %3119, %3118 ], [ 0x3FD6666660000000, %3028 ]
  %3124 = phi float [ %3120, %3118 ], [ 0.000000e+00, %3028 ]
  %3125 = phi float [ %3121, %3118 ], [ 0.000000e+00, %3028 ]
  %3126 = phi float [ %3062, %3118 ], [ 1.000000e+00, %3028 ]
  %3127 = add i32 %38, 208
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3127, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = lshr i32 %3129, 22
  %3131 = shl nuw nsw i32 %3130, 5
  %3132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3131)  ; LegacyF16ToF32(value)
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = and i32 %3134, 64
  %3136 = icmp eq i32 %3135, 0
  br i1 %3136, label %3170, label %3137

; <label>:3137                                    ; preds = %3122
  %3138 = add i32 %38, 404
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = add i32 %3140, 0
  %3142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = and i32 %3144, 131072
  %3146 = icmp eq i32 %3145, 0
  %3147 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3142, %dx.types.Handle %62, float %2635, float %2636, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3148 = extractvalue %dx.types.ResRet.f32 %3147, 0
  %3149 = extractvalue %dx.types.ResRet.f32 %3147, 1
  %3150 = extractvalue %dx.types.ResRet.f32 %3147, 2
  %3151 = fmul fast float %3148, %295
  %3152 = fmul fast float %3149, %298
  %3153 = fmul fast float %3150, %301
  br i1 %3146, label %3160, label %3154

; <label>:3154                                    ; preds = %3137
  %3155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3156 = extractvalue %dx.types.CBufRet.f32 %3155, 0
  %3157 = fmul fast float %3156, %3151
  %3158 = fmul fast float %3156, %3152
  %3159 = fmul fast float %3156, %3153
  br label %3160

; <label>:3160                                    ; preds = %3154, %3137
  %3161 = phi float [ %3157, %3154 ], [ %3151, %3137 ]
  %3162 = phi float [ %3158, %3154 ], [ %3152, %3137 ]
  %3163 = phi float [ %3159, %3154 ], [ %3153, %3137 ]
  %3164 = fmul fast float %3161, %3132
  %3165 = select i1 %163, float %3164, float %3161
  %3166 = call float @dx.op.dot3.f32(i32 55, float %3165, float %3162, float %3163, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3167 = select i1 %163, float 0.000000e+00, float %3161
  %3168 = select i1 %163, float %3166, float %3162
  %3169 = select i1 %163, float 0.000000e+00, float %3163
  br label %3170

; <label>:3170                                    ; preds = %3160, %3122
  %3171 = phi float [ %3167, %3160 ], [ 0.000000e+00, %3122 ]
  %3172 = phi float [ %3168, %3160 ], [ 0.000000e+00, %3122 ]
  %3173 = phi float [ %3169, %3160 ], [ 0.000000e+00, %3122 ]
  br i1 %2527, label %3174, label %3182

; <label>:3174                                    ; preds = %3170
  %3175 = fsub fast float 1.000000e+00, %2823
  %3176 = fmul fast float %3175, %2520
  %3177 = fmul fast float %3175, %2521
  %3178 = fmul fast float %3175, %2522
  %3179 = fmul fast float %3175, %2517
  %3180 = fmul fast float %3175, %2518
  %3181 = fmul fast float %3175, %2519
  br label %3182

; <label>:3182                                    ; preds = %3174, %3170
  %3183 = phi float [ %3179, %3174 ], [ %2517, %3170 ]
  %3184 = phi float [ %3180, %3174 ], [ %2518, %3170 ]
  %3185 = phi float [ %3181, %3174 ], [ %2519, %3170 ]
  %3186 = phi float [ %3176, %3174 ], [ %2520, %3170 ]
  %3187 = phi float [ %3177, %3174 ], [ %2521, %3170 ]
  %3188 = phi float [ %3178, %3174 ], [ %2522, %3170 ]
  %3189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.i32 %3189, 0
  %3191 = and i32 %3190, 3
  %3192 = icmp eq i32 %3191, 3
  br i1 %3192, label %3268, label %3193

; <label>:3193                                    ; preds = %3182
  %3194 = and i32 %3190, 16
  %3195 = icmp ne i32 %3194, 0
  %3196 = select i1 %3195, float %2823, float 0.000000e+00
  %3197 = icmp eq i32 %3191, 0
  br i1 %3197, label %3198, label %3223

; <label>:3198                                    ; preds = %3193
  %3199 = and i32 %3190, 64
  %3200 = icmp ne i32 %3199, 0
  %3201 = select i1 %3200, float %2823, float 0.000000e+00
  %3202 = fsub fast float %3043, %3186
  %3203 = fsub fast float %3044, %3187
  %3204 = fsub fast float %3045, %3188
  %3205 = fmul fast float %3196, %3202
  %3206 = fmul fast float %3196, %3203
  %3207 = fmul fast float %3196, %3204
  %3208 = fadd fast float %3205, %3186
  %3209 = fadd fast float %3206, %3187
  %3210 = fadd fast float %3207, %3188
  %3211 = fsub fast float %3029, %2523
  %3212 = fmul fast float %3196, %3211
  %3213 = fadd fast float %3212, %2523
  %3214 = fsub fast float %3171, %3183
  %3215 = fsub fast float %3172, %3184
  %3216 = fsub fast float %3173, %3185
  %3217 = fmul fast float %3201, %3214
  %3218 = fmul fast float %3201, %3215
  %3219 = fmul fast float %3201, %3216
  %3220 = fadd fast float %3217, %3183
  %3221 = fadd fast float %3218, %3184
  %3222 = fadd fast float %3219, %3185
  br label %3268

; <label>:3223                                    ; preds = %3193
  %3224 = icmp eq i32 %3191, 1
  br i1 %3224, label %3225, label %3238

; <label>:3225                                    ; preds = %3223
  %3226 = fadd fast float %3043, -1.000000e+00
  %3227 = fadd fast float %3044, -1.000000e+00
  %3228 = fadd fast float %3045, -1.000000e+00
  %3229 = fmul fast float %3196, %3226
  %3230 = fmul fast float %3196, %3227
  %3231 = fmul fast float %3196, %3228
  %3232 = fadd fast float %3229, 1.000000e+00
  %3233 = fadd fast float %3230, 1.000000e+00
  %3234 = fadd fast float %3231, 1.000000e+00
  %3235 = fmul fast float %3232, %3186
  %3236 = fmul fast float %3233, %3187
  %3237 = fmul fast float %3234, %3188
  br label %3268

; <label>:3238                                    ; preds = %3223
  %3239 = icmp eq i32 %3191, 2
  br i1 %3239, label %3240, label %3268

; <label>:3240                                    ; preds = %3238
  %3241 = call float @dx.op.unary.f32(i32 24, float %3043)  ; Sqrt(value)
  %3242 = call float @dx.op.unary.f32(i32 24, float %3044)  ; Sqrt(value)
  %3243 = call float @dx.op.unary.f32(i32 24, float %3045)  ; Sqrt(value)
  %3244 = fadd fast float %3241, -5.000000e-01
  %3245 = fadd fast float %3242, -5.000000e-01
  %3246 = fadd fast float %3243, -5.000000e-01
  %3247 = fmul fast float %3244, %3196
  %3248 = fmul fast float %3245, %3196
  %3249 = fmul fast float %3246, %3196
  %3250 = fadd fast float %3247, 5.000000e-01
  %3251 = fadd fast float %3248, 5.000000e-01
  %3252 = fadd fast float %3249, 5.000000e-01
  %3253 = fmul fast float %3250, 2.000000e+00
  %3254 = fsub fast float 1.000000e+00, %3253
  %3255 = fmul fast float %3254, %3186
  %3256 = fadd fast float %3255, %3253
  %3257 = fmul fast float %3256, %3186
  %3258 = fmul fast float %3251, 2.000000e+00
  %3259 = fsub fast float 1.000000e+00, %3258
  %3260 = fmul fast float %3259, %3187
  %3261 = fadd fast float %3260, %3258
  %3262 = fmul fast float %3261, %3187
  %3263 = fmul fast float %3252, 2.000000e+00
  %3264 = fsub fast float 1.000000e+00, %3263
  %3265 = fmul fast float %3264, %3188
  %3266 = fadd fast float %3265, %3263
  %3267 = fmul fast float %3266, %3188
  br label %3268

; <label>:3268                                    ; preds = %3240, %3238, %3225, %3198, %3182
  %3269 = phi float [ %3183, %3182 ], [ %3183, %3240 ], [ %3183, %3238 ], [ %3183, %3225 ], [ %3220, %3198 ]
  %3270 = phi float [ %3184, %3182 ], [ %3184, %3240 ], [ %3184, %3238 ], [ %3184, %3225 ], [ %3221, %3198 ]
  %3271 = phi float [ %3185, %3182 ], [ %3185, %3240 ], [ %3185, %3238 ], [ %3185, %3225 ], [ %3222, %3198 ]
  %3272 = phi float [ %3186, %3182 ], [ %3257, %3240 ], [ %3186, %3238 ], [ %3235, %3225 ], [ %3208, %3198 ]
  %3273 = phi float [ %3187, %3182 ], [ %3262, %3240 ], [ %3187, %3238 ], [ %3236, %3225 ], [ %3209, %3198 ]
  %3274 = phi float [ %3188, %3182 ], [ %3267, %3240 ], [ %3188, %3238 ], [ %3237, %3225 ], [ %3210, %3198 ]
  %3275 = phi float [ %2523, %3182 ], [ %2523, %3240 ], [ %2523, %3238 ], [ %2523, %3225 ], [ %3213, %3198 ]
  %3276 = and i32 %3190, 12
  %3277 = icmp eq i32 %3276, 12
  br i1 %3277, label %3350, label %3278

; <label>:3278                                    ; preds = %3268
  %3279 = and i32 %3190, 2097184
  %3280 = icmp eq i32 %3279, 2097184
  %3281 = select i1 %3280, float %2823, float 0.000000e+00
  %3282 = and i32 %3190, 4194336
  %3283 = icmp eq i32 %3282, 4194336
  %3284 = select i1 %3283, float %2823, float 0.000000e+00
  %3285 = and i32 %3190, 8388640
  %3286 = icmp eq i32 %3285, 8388640
  %3287 = select i1 %3286, float %2823, float 0.000000e+00
  %3288 = icmp eq i32 %3276, 0
  br i1 %3288, label %3289, label %3302

; <label>:3289                                    ; preds = %3278
  %3290 = fsub fast float %3124, %2515
  %3291 = fsub fast float %3125, %2516
  %3292 = fmul fast float %3281, %3290
  %3293 = fmul fast float %3281, %3291
  %3294 = fadd fast float %3292, %2515
  %3295 = fadd fast float %3293, %2516
  %3296 = fsub fast float %3126, %2525
  %3297 = fmul fast float %3284, %3296
  %3298 = fadd fast float %3297, %2525
  %3299 = fsub fast float %3123, %2524
  %3300 = fmul fast float %3287, %3299
  %3301 = fadd fast float %3300, %2524
  br label %3350

; <label>:3302                                    ; preds = %3278
  %3303 = icmp eq i32 %3276, 4
  br i1 %3303, label %3304, label %3336

; <label>:3304                                    ; preds = %3302
  %3305 = fmul fast float %3281, %3124
  %3306 = fmul fast float %3281, %3125
  %3307 = fadd fast float %3305, %2515
  %3308 = fadd fast float %3306, %2516
  %3309 = call float @dx.op.binary.f32(i32 36, float %2525, float %3126)  ; FMin(a,b)
  %3310 = fsub fast float %3309, %2525
  %3311 = fmul fast float %3310, %3284
  %3312 = fadd fast float %3311, %2525
  %3313 = fadd fast float %3123, %2524
  %3314 = fmul fast float %3313, 0x3FF337FAE0000000
  %3315 = fmul fast float %2524, %2524
  %3316 = fmul fast float %3123, %3123
  %3317 = fadd fast float %3316, %3315
  %3318 = fmul fast float %3317, 0x3FE5152B00000000
  %3319 = fmul fast float %2524, 0xBFCC1F85E0000000
  %3320 = fmul fast float %3319, %3123
  %3321 = fadd fast float %3320, 0xBFE1363700000000
  %3322 = fadd fast float %3321, %3314
  %3323 = fsub fast float %3322, %3318
  %3324 = fmul fast float %3313, 0x3FBA6F0D00000000
  %3325 = fmul fast float %3317, 0x3FD0432880000000
  %3326 = fmul fast float %2524, 0xBFEF110800000000
  %3327 = fmul fast float %3326, %3123
  %3328 = fadd fast float %3327, 1.000000e+00
  %3329 = fsub fast float %3328, %3324
  %3330 = fadd fast float %3329, %3325
  %3331 = fdiv fast float %3323, %3330
  %3332 = call float @dx.op.unary.f32(i32 7, float %3331)  ; Saturate(value)
  %3333 = fsub fast float %3332, %2524
  %3334 = fmul fast float %3333, %3287
  %3335 = fadd fast float %3334, %2524
  br label %3350

; <label>:3336                                    ; preds = %3302
  %3337 = icmp eq i32 %3276, 8
  br i1 %3337, label %3338, label %3350

; <label>:3338                                    ; preds = %3336
  %3339 = fmul fast float %3281, %3124
  %3340 = fmul fast float %3281, %3125
  %3341 = fadd fast float %3339, %2515
  %3342 = fadd fast float %3340, %2516
  %3343 = call float @dx.op.binary.f32(i32 36, float %2525, float %3126)  ; FMin(a,b)
  %3344 = fsub fast float %3343, %2525
  %3345 = fmul fast float %3344, %3284
  %3346 = fadd fast float %3345, %2525
  %3347 = fsub fast float %3123, %2524
  %3348 = fmul fast float %3287, %3347
  %3349 = fadd fast float %3348, %2524
  br label %3350

; <label>:3350                                    ; preds = %3338, %3336, %3304, %3289, %3268, %2822, %2526, %2514
  %3351 = phi float [ %2515, %3268 ], [ %2515, %2822 ], [ %2515, %2514 ], [ %2515, %2526 ], [ %3294, %3289 ], [ %3307, %3304 ], [ %2515, %3336 ], [ %3341, %3338 ]
  %3352 = phi float [ %2516, %3268 ], [ %2516, %2822 ], [ %2516, %2514 ], [ %2516, %2526 ], [ %3295, %3289 ], [ %3308, %3304 ], [ %2516, %3336 ], [ %3342, %3338 ]
  %3353 = phi float [ %3269, %3268 ], [ %2517, %2822 ], [ %2517, %2514 ], [ %2517, %2526 ], [ %3269, %3289 ], [ %3269, %3304 ], [ %3269, %3336 ], [ %3269, %3338 ]
  %3354 = phi float [ %3270, %3268 ], [ %2518, %2822 ], [ %2518, %2514 ], [ %2518, %2526 ], [ %3270, %3289 ], [ %3270, %3304 ], [ %3270, %3336 ], [ %3270, %3338 ]
  %3355 = phi float [ %3271, %3268 ], [ %2519, %2822 ], [ %2519, %2514 ], [ %2519, %2526 ], [ %3271, %3289 ], [ %3271, %3304 ], [ %3271, %3336 ], [ %3271, %3338 ]
  %3356 = phi float [ %3272, %3268 ], [ %2520, %2822 ], [ %2520, %2514 ], [ %2520, %2526 ], [ %3272, %3289 ], [ %3272, %3304 ], [ %3272, %3336 ], [ %3272, %3338 ]
  %3357 = phi float [ %3273, %3268 ], [ %2521, %2822 ], [ %2521, %2514 ], [ %2521, %2526 ], [ %3273, %3289 ], [ %3273, %3304 ], [ %3273, %3336 ], [ %3273, %3338 ]
  %3358 = phi float [ %3274, %3268 ], [ %2522, %2822 ], [ %2522, %2514 ], [ %2522, %2526 ], [ %3274, %3289 ], [ %3274, %3304 ], [ %3274, %3336 ], [ %3274, %3338 ]
  %3359 = phi float [ %3275, %3268 ], [ %2523, %2822 ], [ %2523, %2514 ], [ %2523, %2526 ], [ %3275, %3289 ], [ %3275, %3304 ], [ %3275, %3336 ], [ %3275, %3338 ]
  %3360 = phi float [ %2524, %3268 ], [ %2524, %2822 ], [ %2524, %2514 ], [ %2524, %2526 ], [ %3301, %3289 ], [ %3335, %3304 ], [ %2524, %3336 ], [ %3349, %3338 ]
  %3361 = phi float [ %2525, %3268 ], [ %2525, %2822 ], [ %2525, %2514 ], [ %2525, %2526 ], [ %3298, %3289 ], [ %3312, %3304 ], [ %2525, %3336 ], [ %3346, %3338 ]
  %3362 = add i32 %38, 440
  %3363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3362, i32 undef)  ; BufferLoad(srv,index,wot)
  %3364 = extractvalue %dx.types.ResRet.i32 %3363, 0
  %3365 = add i32 %3364, 0
  %3366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3367 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3366, %dx.types.Handle %63, float %54, float %55, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3368 = extractvalue %dx.types.ResRet.f32 %3367, 0
  %3369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3370 = extractvalue %dx.types.CBufRet.f32 %3369, 0
  %3371 = call float @dx.op.dot2.f32(i32 54, float %3351, float %3352, float %3351, float %3352)  ; Dot2(ax,ay,bx,by)
  %3372 = fmul fast float %3371, 0x3FE3333340000000
  %3373 = fsub fast float 1.000000e+00, %3372
  %3374 = call float @dx.op.dot3.f32(i32 55, float %3351, float %3352, float %3373, float %3351, float %3352, float %3373)  ; Dot3(ax,ay,az,bx,by,bz)
  %3375 = call float @dx.op.unary.f32(i32 25, float %3374)  ; Rsqrt(value)
  %3376 = fmul fast float %3375, %3351
  %3377 = fmul fast float %3375, %3352
  %3378 = fmul fast float %3373, %3375
  %3379 = fmul fast float %3378, %73
  %3380 = fmul fast float %3378, %74
  %3381 = fmul fast float %3378, %75
  %3382 = fmul fast float %3376, %47
  %3383 = fmul fast float %3376, %48
  %3384 = fmul fast float %3376, %49
  %3385 = fadd fast float %3379, %3382
  %3386 = fadd fast float %3380, %3383
  %3387 = fadd fast float %3381, %3384
  %3388 = fmul fast float %85, %3377
  %3389 = fmul fast float %86, %3377
  %3390 = fmul fast float %87, %3377
  %3391 = fadd fast float %3385, %3388
  %3392 = fadd fast float %3386, %3389
  %3393 = fadd fast float %3387, %3390
  %3394 = call float @dx.op.dot3.f32(i32 55, float %3391, float %3392, float %3393, float %3391, float %3392, float %3393)  ; Dot3(ax,ay,az,bx,by,bz)
  %3395 = call float @dx.op.unary.f32(i32 25, float %3394)  ; Rsqrt(value)
  %3396 = fmul fast float %3391, %3395
  %3397 = fmul fast float %3392, %3395
  %3398 = fmul fast float %3393, %3395
  %3399 = and i32 %40, 1
  %3400 = icmp eq i32 %3399, 0
  br i1 %3400, label %3401, label %3909

; <label>:3401                                    ; preds = %3350
  %3402 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %3403 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %3404 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %3405 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %3406 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %3407 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %3408 = fadd fast float %3402, %121
  %3409 = fadd fast float %3403, %122
  %3410 = fadd fast float %3404, %123
  %3411 = fadd fast float %3405, %121
  %3412 = fadd fast float %3406, %122
  %3413 = fadd fast float %3407, %123
  %3414 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3415 = extractvalue %dx.types.CBufRet.f32 %3414, 0
  %3416 = extractvalue %dx.types.CBufRet.f32 %3414, 1
  %3417 = extractvalue %dx.types.CBufRet.f32 %3414, 2
  %3418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3419 = extractvalue %dx.types.CBufRet.f32 %3418, 2
  %3420 = extractvalue %dx.types.CBufRet.f32 %3418, 3
  %3421 = fmul fast float %3415, %66
  %3422 = fmul fast float %3421, %3419
  %3423 = fmul fast float %3416, %67
  %3424 = fmul fast float %3423, %3420
  %3425 = fptoui float %3422 to i32
  %3426 = fptoui float %3424 to i32
  %3427 = fadd fast float %3415, -1.000000e+00
  %3428 = fadd fast float %3416, -1.000000e+00
  %3429 = fptoui float %3427 to i32
  %3430 = fptoui float %3428 to i32
  %3431 = call i32 @dx.op.binary.i32(i32 40, i32 %3425, i32 %3429)  ; UMin(a,b)
  %3432 = call i32 @dx.op.binary.i32(i32 40, i32 %3426, i32 %3430)  ; UMin(a,b)
  %3433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3434 = extractvalue %dx.types.CBufRet.f32 %3433, 2
  %3435 = extractvalue %dx.types.CBufRet.f32 %3433, 3
  %3436 = fmul fast float %3434, %61
  %3437 = fsub fast float %3436, %3435
  %3438 = fadd fast float %3417, -1.000000e+00
  %3439 = call float @dx.op.binary.f32(i32 36, float %3437, float %3438)  ; FMin(a,b)
  %3440 = fptoui float %3439 to i32
  %3441 = fptoui float %3415 to i32
  %3442 = fptoui float %3416 to i32
  %3443 = mul i32 %3440, %3442
  %3444 = add i32 %3443, %3432
  %3445 = mul i32 %3444, %3441
  %3446 = add i32 %3445, %3431
  %3447 = shl i32 %3446, 2
  %3448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3447, i32 undef)  ; BufferLoad(srv,index,wot)
  %3449 = extractvalue %dx.types.ResRet.i32 %3448, 0
  %3450 = and i32 %3449, 1023
  %3451 = lshr i32 %3449, 10
  %3452 = icmp eq i32 %3450, 0
  br i1 %3452, label %3878, label %3453

; <label>:3453                                    ; preds = %3401
  %3454 = and i32 %3449, 1023
  br label %3455

; <label>:3455                                    ; preds = %3581, %3453
  %3456 = phi i32 [ %3531, %3581 ], [ 0, %3453 ]
  %3457 = phi float [ %3582, %3581 ], [ 0.000000e+00, %3453 ]
  %3458 = phi float [ %3583, %3581 ], [ %3370, %3453 ]
  %3459 = phi float [ %3584, %3581 ], [ %3368, %3453 ]
  %3460 = phi float [ %3585, %3581 ], [ 0.000000e+00, %3453 ]
  %3461 = phi float [ %3586, %3581 ], [ 0.000000e+00, %3453 ]
  %3462 = phi float [ %3587, %3581 ], [ %3353, %3453 ]
  %3463 = phi float [ %3588, %3581 ], [ %3354, %3453 ]
  %3464 = phi float [ %3589, %3581 ], [ %3355, %3453 ]
  %3465 = phi float [ %3590, %3581 ], [ %3396, %3453 ]
  %3466 = phi float [ %3591, %3581 ], [ %3397, %3453 ]
  %3467 = phi float [ %3592, %3581 ], [ %3398, %3453 ]
  %3468 = phi float [ %3593, %3581 ], [ %3361, %3453 ]
  %3469 = phi float [ %3594, %3581 ], [ %3360, %3453 ]
  %3470 = phi float [ %3595, %3581 ], [ 0.000000e+00, %3453 ]
  %3471 = phi float [ %3596, %3581 ], [ %3359, %3453 ]
  %3472 = phi float [ %3597, %3581 ], [ %3356, %3453 ]
  %3473 = phi float [ %3598, %3581 ], [ %3357, %3453 ]
  %3474 = phi float [ %3599, %3581 ], [ %3358, %3453 ]
  %3475 = add nuw nsw i32 %3456, %3451
  %3476 = shl i32 %3475, 2
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = shl i32 %3478, 8
  %3480 = or i32 %3479, 48
  %3481 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3480, i32 undef)  ; BufferLoad(srv,index,wot)
  %3482 = extractvalue %dx.types.ResRet.f32 %3481, 0
  %3483 = extractvalue %dx.types.ResRet.f32 %3481, 1
  %3484 = extractvalue %dx.types.ResRet.f32 %3481, 2
  %3485 = extractvalue %dx.types.ResRet.f32 %3481, 3
  %3486 = or i32 %3479, 64
  %3487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3486, i32 undef)  ; BufferLoad(srv,index,wot)
  %3488 = extractvalue %dx.types.ResRet.i32 %3487, 0
  %3489 = extractvalue %dx.types.ResRet.i32 %3487, 1
  %3490 = or i32 %3479, 80
  %3491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.f32 %3491, 2
  %3493 = extractvalue %dx.types.ResRet.f32 %3491, 3
  %3494 = or i32 %3479, 96
  %3495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3494, i32 undef)  ; BufferLoad(srv,index,wot)
  %3496 = extractvalue %dx.types.ResRet.f32 %3495, 0
  %3497 = extractvalue %dx.types.ResRet.f32 %3495, 1
  %3498 = extractvalue %dx.types.ResRet.f32 %3495, 2
  %3499 = extractvalue %dx.types.ResRet.f32 %3495, 3
  %3500 = or i32 %3479, 112
  %3501 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3500, i32 undef)  ; BufferLoad(srv,index,wot)
  %3502 = extractvalue %dx.types.ResRet.f32 %3501, 2
  %3503 = or i32 %3479, 128
  %3504 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3503, i32 undef)  ; BufferLoad(srv,index,wot)
  %3505 = extractvalue %dx.types.ResRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.ResRet.f32 %3504, 1
  %3507 = extractvalue %dx.types.ResRet.f32 %3504, 2
  %3508 = extractvalue %dx.types.ResRet.f32 %3504, 3
  %3509 = or i32 %3479, 144
  %3510 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3509, i32 undef)  ; BufferLoad(srv,index,wot)
  %3511 = extractvalue %dx.types.ResRet.f32 %3510, 0
  %3512 = extractvalue %dx.types.ResRet.f32 %3510, 1
  %3513 = extractvalue %dx.types.ResRet.f32 %3510, 2
  %3514 = extractvalue %dx.types.ResRet.f32 %3510, 3
  %3515 = or i32 %3479, 160
  %3516 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3515, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.f32 %3516, 0
  %3518 = extractvalue %dx.types.ResRet.f32 %3516, 1
  %3519 = extractvalue %dx.types.ResRet.f32 %3516, 2
  %3520 = extractvalue %dx.types.ResRet.f32 %3516, 3
  %3521 = or i32 %3479, 192
  %3522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3521, i32 undef)  ; BufferLoad(srv,index,wot)
  %3523 = extractvalue %dx.types.ResRet.i32 %3522, 0
  %3524 = or i32 %3479, 208
  %3525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.f32 %3525, 0
  %3527 = or i32 %3479, 248
  %3528 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.f32 %3528, 0
  %3530 = extractvalue %dx.types.ResRet.f32 %3528, 1
  %3531 = add nuw nsw i32 %3456, 1
  %3532 = bitcast float %3485 to i32
  %3533 = and i32 %3532, 512
  %3534 = icmp eq i32 %3533, 0
  %3535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3479, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.f32 %3535, 0
  %3537 = extractvalue %dx.types.ResRet.f32 %3535, 1
  %3538 = extractvalue %dx.types.ResRet.f32 %3535, 2
  %3539 = extractvalue %dx.types.ResRet.f32 %3535, 3
  %3540 = call float @dx.op.dot4.f32(i32 56, float %3536, float %3537, float %3538, float %3539, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3541 = or i32 %3479, 16
  %3542 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.ResRet.f32 %3542, 1
  %3545 = extractvalue %dx.types.ResRet.f32 %3542, 2
  %3546 = extractvalue %dx.types.ResRet.f32 %3542, 3
  %3547 = call float @dx.op.dot4.f32(i32 56, float %3543, float %3544, float %3545, float %3546, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3548 = or i32 %3479, 32
  %3549 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3548, i32 undef)  ; BufferLoad(srv,index,wot)
  %3550 = extractvalue %dx.types.ResRet.f32 %3549, 0
  %3551 = extractvalue %dx.types.ResRet.f32 %3549, 1
  %3552 = extractvalue %dx.types.ResRet.f32 %3549, 2
  %3553 = extractvalue %dx.types.ResRet.f32 %3549, 3
  %3554 = call float @dx.op.dot4.f32(i32 56, float %3550, float %3551, float %3552, float %3553, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3555 = call float @dx.op.unary.f32(i32 27, float %3540)  ; Round_ni(value)
  %3556 = call float @dx.op.unary.f32(i32 6, float %3555)  ; FAbs(value)
  %3557 = call float @dx.op.unary.f32(i32 27, float %3547)  ; Round_ni(value)
  %3558 = call float @dx.op.unary.f32(i32 6, float %3557)  ; FAbs(value)
  %3559 = call float @dx.op.unary.f32(i32 6, float %3554)  ; FAbs(value)
  %3560 = call float @dx.op.unary.f32(i32 27, float %3559)  ; Round_ni(value)
  %3561 = fadd fast float %3558, %3556
  %3562 = fadd fast float %3561, %3560
  %3563 = fcmp fast oeq float %3562, 0.000000e+00
  %3564 = call float @dx.op.dot4.f32(i32 56, float %3536, float %3537, float %3538, float %3539, float %3408, float %3409, float %3410, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3565 = call float @dx.op.dot4.f32(i32 56, float %3543, float %3544, float %3545, float %3546, float %3408, float %3409, float %3410, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3566 = call float @dx.op.dot4.f32(i32 56, float %3536, float %3537, float %3538, float %3539, float %3411, float %3412, float %3413, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3567 = call float @dx.op.dot4.f32(i32 56, float %3543, float %3544, float %3545, float %3546, float %3411, float %3412, float %3413, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3568 = fsub fast float %3564, %3540
  %3569 = fsub fast float %3566, %3540
  %3570 = fsub fast float %3565, %3547
  %3571 = fsub fast float %3567, %3547
  %3572 = call float @dx.op.dot3.f32(i32 55, float %3482, float %3483, float %3484, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %3573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3574 = extractvalue %dx.types.CBufRet.f32 %3573, 2
  %3575 = fadd fast float %3574, %3572
  %3576 = call float @dx.op.unary.f32(i32 7, float %3575)  ; Saturate(value)
  %3577 = extractvalue %dx.types.CBufRet.f32 %3573, 0
  %3578 = fcmp fast ogt float %3576, %3577
  %3579 = and i1 %3563, %3578
  %3580 = and i1 %3534, %3579
  br i1 %3580, label %3601, label %3581

; <label>:3581                                    ; preds = %3864, %3682, %3601, %3455
  %3582 = phi float [ %3457, %3601 ], [ %3685, %3682 ], [ %3685, %3864 ], [ %3457, %3455 ]
  %3583 = phi float [ %3458, %3601 ], [ %3458, %3682 ], [ %3839, %3864 ], [ %3458, %3455 ]
  %3584 = phi float [ %3459, %3601 ], [ %3459, %3682 ], [ %3837, %3864 ], [ %3459, %3455 ]
  %3585 = phi float [ %3460, %3601 ], [ %3460, %3682 ], [ %3809, %3864 ], [ %3460, %3455 ]
  %3586 = phi float [ %3461, %3601 ], [ %3461, %3682 ], [ %3807, %3864 ], [ %3461, %3455 ]
  %3587 = phi float [ %3462, %3601 ], [ %3462, %3682 ], [ %3874, %3864 ], [ %3462, %3455 ]
  %3588 = phi float [ %3463, %3601 ], [ %3463, %3682 ], [ %3875, %3864 ], [ %3463, %3455 ]
  %3589 = phi float [ %3464, %3601 ], [ %3464, %3682 ], [ %3876, %3864 ], [ %3464, %3455 ]
  %3590 = phi float [ %3465, %3601 ], [ %3465, %3682 ], [ %3788, %3864 ], [ %3465, %3455 ]
  %3591 = phi float [ %3466, %3601 ], [ %3466, %3682 ], [ %3789, %3864 ], [ %3466, %3455 ]
  %3592 = phi float [ %3467, %3601 ], [ %3467, %3682 ], [ %3790, %3864 ], [ %3467, %3455 ]
  %3593 = phi float [ %3468, %3601 ], [ %3468, %3682 ], [ %3817, %3864 ], [ %3468, %3455 ]
  %3594 = phi float [ %3469, %3601 ], [ %3469, %3682 ], [ %3814, %3864 ], [ %3469, %3455 ]
  %3595 = phi float [ %3470, %3601 ], [ %3470, %3682 ], [ %3811, %3864 ], [ %3470, %3455 ]
  %3596 = phi float [ %3471, %3601 ], [ %3471, %3682 ], [ %3805, %3864 ], [ %3471, %3455 ]
  %3597 = phi float [ %3472, %3601 ], [ %3472, %3682 ], [ %3800, %3864 ], [ %3472, %3455 ]
  %3598 = phi float [ %3473, %3601 ], [ %3473, %3682 ], [ %3801, %3864 ], [ %3473, %3455 ]
  %3599 = phi float [ %3474, %3601 ], [ %3474, %3682 ], [ %3802, %3864 ], [ %3474, %3455 ]
  %3600 = icmp eq i32 %3531, %3454
  br i1 %3600, label %3877, label %3455

; <label>:3601                                    ; preds = %3455
  %3602 = extractvalue %dx.types.ResRet.f32 %3501, 3
  %3603 = extractvalue %dx.types.ResRet.f32 %3501, 1
  %3604 = extractvalue %dx.types.ResRet.f32 %3501, 0
  %3605 = extractvalue %dx.types.ResRet.f32 %3491, 1
  %3606 = extractvalue %dx.types.ResRet.f32 %3491, 0
  %3607 = extractvalue %dx.types.ResRet.i32 %3487, 3
  %3608 = extractvalue %dx.types.ResRet.i32 %3487, 2
  %3609 = add i32 %3607, 0
  %3610 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3609, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3611 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3612 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3610, %dx.types.Handle %3611, float %3540, float %3547, float undef, float undef, i32 0, i32 0, i32 undef, float %3568, float %3570, float undef, float %3569, float %3571, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3613 = extractvalue %dx.types.ResRet.f32 %3612, 0
  %3614 = fmul fast float %3613, %3606
  %3615 = fadd fast float %3614, %3605
  %3616 = call float @dx.op.unary.f32(i32 7, float %3615)  ; Saturate(value)
  %3617 = fmul fast float %3540, %3496
  %3618 = call float @dx.op.tertiary.f32(i32 46, float %3497, float %3547, float %3617)  ; FMad(a,b,c)
  %3619 = fadd fast float %3618, %3604
  %3620 = fmul fast float %3540, %3498
  %3621 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %3547, float %3620)  ; FMad(a,b,c)
  %3622 = fadd fast float %3621, %3603
  %3623 = fmul fast float %3568, %3496
  %3624 = call float @dx.op.tertiary.f32(i32 46, float %3497, float %3570, float %3623)  ; FMad(a,b,c)
  %3625 = fmul fast float %3568, %3498
  %3626 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %3570, float %3625)  ; FMad(a,b,c)
  %3627 = fmul fast float %3569, %3496
  %3628 = call float @dx.op.tertiary.f32(i32 46, float %3497, float %3571, float %3627)  ; FMad(a,b,c)
  %3629 = fmul fast float %3569, %3498
  %3630 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %3571, float %3629)  ; FMad(a,b,c)
  %3631 = add i32 %3608, 0
  %3632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3631, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3633 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3632, %dx.types.Handle %3611, float %3619, float %3622, float undef, float undef, i32 0, i32 0, i32 undef, float %3624, float %3626, float undef, float %3628, float %3630, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3634 = extractvalue %dx.types.ResRet.f32 %3633, 0
  %3635 = and i32 %3532, 1024
  %3636 = icmp ne i32 %3635, 0
  %3637 = fcmp fast ogt float %3634, 0x3FE0101020000000
  %3638 = uitofp i1 %3637 to float
  %3639 = select i1 %3636, float %3638, float %3634
  %3640 = and i32 %3532, 8192
  %3641 = icmp ne i32 %3640, 0
  %3642 = select i1 %3641, float %3602, float 1.000000e+00
  %3643 = fmul fast float %3540, 2.000000e+00
  %3644 = fadd fast float %3643, -1.000000e+00
  %3645 = call float @dx.op.unary.f32(i32 6, float %3644)  ; FAbs(value)
  %3646 = fmul fast float %3645, %3529
  %3647 = fsub fast float %3646, %3529
  %3648 = call float @dx.op.unary.f32(i32 7, float %3647)  ; Saturate(value)
  %3649 = fmul fast float %3547, 2.000000e+00
  %3650 = fadd fast float %3649, -1.000000e+00
  %3651 = call float @dx.op.unary.f32(i32 6, float %3650)  ; FAbs(value)
  %3652 = fmul fast float %3651, %3530
  %3653 = fsub fast float %3652, %3530
  %3654 = call float @dx.op.unary.f32(i32 7, float %3653)  ; Saturate(value)
  %3655 = fmul fast float %3559, %3492
  %3656 = fsub fast float %3655, %3492
  %3657 = call float @dx.op.unary.f32(i32 7, float %3656)  ; Saturate(value)
  %3658 = fmul fast float %3616, %3642
  %3659 = fmul fast float %3658, %3613
  %3660 = fmul fast float %3659, %3648
  %3661 = fmul fast float %3660, %3639
  %3662 = fmul fast float %3661, %3654
  %3663 = fmul fast float %3662, %3657
  %3664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3664, 1
  %3666 = extractvalue %dx.types.CBufRet.f32 %3664, 0
  %3667 = fsub fast float %3576, %3666
  %3668 = fmul fast float %3667, %3665
  %3669 = call float @dx.op.unary.f32(i32 7, float %3668)  ; Saturate(value)
  %3670 = fmul fast float %3663, %3493
  %3671 = fadd fast float %3663, %3493
  %3672 = fmul fast float %3671, %3502
  %3673 = fsub fast float %3672, %3502
  %3674 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3675 = and i32 %3532, 128
  %3676 = icmp ne i32 %3675, 0
  %3677 = select i1 %3676, float %3674, float %3670
  %3678 = fmul fast float %3677, %3669
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 0
  %3681 = fcmp fast ugt float %3678, %3680
  br i1 %3681, label %3682, label %3581

; <label>:3682                                    ; preds = %3601
  %3683 = select i1 %3641, float %3678, float 0.000000e+00
  %3684 = fadd fast float %3683, %3457
  %3685 = call float @dx.op.unary.f32(i32 7, float %3684)  ; Saturate(value)
  br i1 %3641, label %3581, label %3686

; <label>:3686                                    ; preds = %3682
  %3687 = and i32 %3532, 4
  %3688 = and i32 %3532, 8
  %3689 = add i32 %3488, 0
  %3690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3689, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3691 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3692 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3690, %dx.types.Handle %3691, float %3619, float %3622, float undef, float undef, i32 0, i32 0, i32 undef, float %3624, float %3626, float undef, float %3628, float %3630, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3693 = extractvalue %dx.types.ResRet.f32 %3692, 0
  %3694 = extractvalue %dx.types.ResRet.f32 %3692, 1
  %3695 = extractvalue %dx.types.ResRet.f32 %3692, 2
  %3696 = extractvalue %dx.types.ResRet.f32 %3692, 3
  %3697 = bitcast float %3514 to i32
  %3698 = and i32 %3697, 255
  %3699 = uitofp i32 %3698 to float
  %3700 = lshr i32 %3697, 8
  %3701 = and i32 %3700, 255
  %3702 = uitofp i32 %3701 to float
  %3703 = fmul fast float %3696, %3699
  %3704 = fadd fast float %3703, %3702
  %3705 = fmul fast float %3704, 0x3F70101000000000
  %3706 = add i32 %3489, 0
  %3707 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3706, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3708 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3707, %dx.types.Handle %3691, float %3619, float %3622, float undef, float undef, i32 0, i32 0, i32 undef, float %3624, float %3626, float undef, float %3628, float %3630, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3709 = extractvalue %dx.types.ResRet.f32 %3708, 0
  %3710 = extractvalue %dx.types.ResRet.f32 %3708, 1
  %3711 = extractvalue %dx.types.ResRet.f32 %3708, 2
  %3712 = extractvalue %dx.types.ResRet.f32 %3708, 3
  %3713 = bitcast float %3508 to i32
  %3714 = and i32 %3713, 255
  %3715 = uitofp i32 %3714 to float
  %3716 = lshr i32 %3713, 8
  %3717 = and i32 %3716, 255
  %3718 = uitofp i32 %3717 to float
  %3719 = lshr i32 %3713, 16
  %3720 = and i32 %3719, 255
  %3721 = uitofp i32 %3720 to float
  %3722 = fmul fast float %3721, 0x3F70101000000000
  %3723 = fmul fast float %3709, %3715
  %3724 = fadd fast float %3723, %3718
  %3725 = fmul fast float %3724, 0x3F70101000000000
  %3726 = fadd fast float %3710, -5.000000e-01
  %3727 = fadd fast float %3712, -5.000000e-01
  %3728 = fmul fast float %3726, %3722
  %3729 = fmul fast float %3727, %3722
  %3730 = fadd fast float %3728, 5.000000e-01
  %3731 = fadd fast float %3729, 5.000000e-01
  %3732 = fmul fast float %3693, %3517
  %3733 = fmul fast float %3694, %3518
  %3734 = fmul fast float %3695, %3519
  %3735 = fmul fast float %3730, 2.000000e+00
  %3736 = fadd fast float %3735, -1.000000e+00
  %3737 = fmul fast float %3731, 2.000000e+00
  %3738 = fadd fast float %3737, -1.000000e+00
  %3739 = fadd fast float %3736, %3738
  %3740 = fmul fast float %3739, 5.000000e-01
  %3741 = fsub fast float %3736, %3738
  %3742 = fmul fast float %3741, 5.000000e-01
  %3743 = call float @dx.op.unary.f32(i32 6, float %3740)  ; FAbs(value)
  %3744 = fsub fast float 1.000000e+00, %3743
  %3745 = call float @dx.op.unary.f32(i32 6, float %3742)  ; FAbs(value)
  %3746 = fsub fast float %3744, %3745
  %3747 = call float @dx.op.dot3.f32(i32 55, float %3740, float %3742, float %3746, float %3740, float %3742, float %3746)  ; Dot3(ax,ay,az,bx,by,bz)
  %3748 = call float @dx.op.unary.f32(i32 25, float %3747)  ; Rsqrt(value)
  %3749 = fmul fast float %3740, %3748
  %3750 = fmul fast float %3742, %3748
  %3751 = fmul fast float %3748, %3746
  %3752 = fmul fast float %3751, %3482
  %3753 = fmul fast float %3751, %3483
  %3754 = fmul fast float %3751, %3484
  %3755 = fmul fast float %3749, %3505
  %3756 = fmul fast float %3749, %3506
  %3757 = fmul fast float %3749, %3507
  %3758 = fadd fast float %3755, %3752
  %3759 = fadd fast float %3756, %3753
  %3760 = fadd fast float %3757, %3754
  %3761 = fmul fast float %3750, %3511
  %3762 = fmul fast float %3750, %3512
  %3763 = fmul fast float %3750, %3513
  %3764 = fadd fast float %3758, %3761
  %3765 = fadd fast float %3759, %3762
  %3766 = fadd fast float %3760, %3763
  %3767 = call float @dx.op.dot3.f32(i32 55, float %3764, float %3765, float %3766, float %3764, float %3765, float %3766)  ; Dot3(ax,ay,az,bx,by,bz)
  %3768 = call float @dx.op.unary.f32(i32 25, float %3767)  ; Rsqrt(value)
  %3769 = fmul fast float %3764, %3768
  %3770 = fmul fast float %3765, %3768
  %3771 = fmul fast float %3766, %3768
  %3772 = icmp ne i32 %3688, 0
  %3773 = select i1 %3772, float 1.000000e+00, float 0.000000e+00
  %3774 = fmul fast float %3678, %3773
  %3775 = and i32 %3532, 1
  %3776 = icmp eq i32 %3775, 0
  br i1 %3776, label %3777, label %3781

; <label>:3777                                    ; preds = %3686
  %3778 = fsub fast float %3769, %3465
  %3779 = fsub fast float %3770, %3466
  %3780 = fsub fast float %3771, %3467
  br label %3781

; <label>:3781                                    ; preds = %3777, %3686
  %3782 = phi float [ %3778, %3777 ], [ %3769, %3686 ]
  %3783 = phi float [ %3779, %3777 ], [ %3770, %3686 ]
  %3784 = phi float [ %3780, %3777 ], [ %3771, %3686 ]
  %3785 = fmul float %3784, %3774
  %3786 = fmul float %3783, %3774
  %3787 = fmul float %3782, %3774
  %3788 = fadd fast float %3787, %3465
  %3789 = fadd fast float %3786, %3466
  %3790 = fadd fast float %3785, %3467
  %3791 = icmp ne i32 %3687, 0
  %3792 = select i1 %3791, float 1.000000e+00, float 0.000000e+00
  %3793 = fmul fast float %3678, %3792
  %3794 = fsub fast float %3732, %3472
  %3795 = fsub fast float %3733, %3473
  %3796 = fsub fast float %3734, %3474
  %3797 = fmul fast float %3794, %3793
  %3798 = fmul fast float %3795, %3793
  %3799 = fmul fast float %3796, %3793
  %3800 = fadd fast float %3797, %3472
  %3801 = fadd fast float %3798, %3473
  %3802 = fadd fast float %3799, %3474
  %3803 = fsub fast float %3705, %3471
  %3804 = fmul fast float %3803, %3793
  %3805 = fadd fast float %3804, %3471
  %3806 = fmul fast float %3793, %3461
  %3807 = fsub fast float %3461, %3806
  %3808 = fmul fast float %3793, %3460
  %3809 = fsub fast float %3460, %3808
  %3810 = fadd fast float %3678, %3470
  %3811 = call float @dx.op.unary.f32(i32 7, float %3810)  ; Saturate(value)
  %3812 = fsub fast float %3725, %3469
  %3813 = fmul fast float %3812, %3774
  %3814 = fadd fast float %3813, %3469
  %3815 = fsub fast float %3711, %3468
  %3816 = fmul fast float %3815, %3774
  %3817 = fadd fast float %3816, %3468
  %3818 = call float @dx.op.dot3.f32(i32 55, float %3732, float %3733, float %3734, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3820 = extractvalue %dx.types.CBufRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.CBufRet.f32 %3819, 1
  %3822 = fmul fast float %3821, %3818
  %3823 = fadd fast float %3822, %3820
  %3824 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  %3825 = bitcast float %3520 to i32
  %3826 = and i32 %3825, 65535
  %3827 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3826)  ; LegacyF16ToF32(value)
  %3828 = lshr i32 %3825, 16
  %3829 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3828)  ; LegacyF16ToF32(value)
  %3830 = fcmp fast oge float %3827, 0.000000e+00
  %3831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.f32 %3831, 0
  %3833 = select i1 %3830, float %3827, float %3832
  %3834 = fadd fast float %3833, %3829
  %3835 = fsub fast float %3824, %3459
  %3836 = fmul fast float %3835, %3678
  %3837 = fadd fast float %3836, %3459
  %3838 = fmul fast float %3834, %3678
  %3839 = call float @dx.op.binary.f32(i32 35, float %3458, float %3838)  ; FMax(a,b)
  %3840 = and i32 %3532, 16
  %3841 = icmp eq i32 %3840, 0
  br i1 %3841, label %3864, label %3842

; <label>:3842                                    ; preds = %3781
  %3843 = bitcast float %3526 to i32
  %3844 = add i32 %3523, 0
  %3845 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3844, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3846 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3845, %dx.types.Handle %3691, float %3619, float %3622, float undef, float undef, i32 0, i32 0, i32 undef, float %3624, float %3626, float undef, float %3628, float %3630, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3847 = extractvalue %dx.types.ResRet.f32 %3846, 0
  %3848 = extractvalue %dx.types.ResRet.f32 %3846, 1
  %3849 = extractvalue %dx.types.ResRet.f32 %3846, 2
  %3850 = and i32 %3843, 65535
  %3851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3850)  ; LegacyF16ToF32(value)
  %3852 = fmul fast float %3847, %3517
  %3853 = fmul fast float %3848, %3518
  %3854 = fmul fast float %3849, %3519
  %3855 = and i32 %3532, 16384
  %3856 = icmp ne i32 %3855, 0
  %3857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3858 = extractvalue %dx.types.CBufRet.f32 %3857, 0
  %3859 = select i1 %3856, float %3858, float 1.000000e+00
  %3860 = fmul fast float %3859, %3851
  %3861 = fmul fast float %3852, %3860
  %3862 = fmul fast float %3853, %3860
  %3863 = fmul fast float %3854, %3860
  br label %3864

; <label>:3864                                    ; preds = %3842, %3781
  %3865 = phi float [ %3861, %3842 ], [ 0.000000e+00, %3781 ]
  %3866 = phi float [ %3862, %3842 ], [ 0.000000e+00, %3781 ]
  %3867 = phi float [ %3863, %3842 ], [ 0.000000e+00, %3781 ]
  %3868 = fsub fast float %3865, %3462
  %3869 = fsub fast float %3866, %3463
  %3870 = fsub fast float %3867, %3464
  %3871 = fmul fast float %3868, %3678
  %3872 = fmul fast float %3869, %3678
  %3873 = fmul fast float %3870, %3678
  %3874 = fadd fast float %3871, %3462
  %3875 = fadd fast float %3872, %3463
  %3876 = fadd fast float %3873, %3464
  br label %3581

; <label>:3877                                    ; preds = %3581
  br label %3878

; <label>:3878                                    ; preds = %3877, %3401
  %3879 = phi float [ 0.000000e+00, %3401 ], [ %3582, %3877 ]
  %3880 = phi float [ %3370, %3401 ], [ %3583, %3877 ]
  %3881 = phi float [ %3368, %3401 ], [ %3584, %3877 ]
  %3882 = phi float [ 0.000000e+00, %3401 ], [ %3585, %3877 ]
  %3883 = phi float [ 0.000000e+00, %3401 ], [ %3586, %3877 ]
  %3884 = phi float [ %3353, %3401 ], [ %3587, %3877 ]
  %3885 = phi float [ %3354, %3401 ], [ %3588, %3877 ]
  %3886 = phi float [ %3355, %3401 ], [ %3589, %3877 ]
  %3887 = phi float [ %3396, %3401 ], [ %3590, %3877 ]
  %3888 = phi float [ %3397, %3401 ], [ %3591, %3877 ]
  %3889 = phi float [ %3398, %3401 ], [ %3592, %3877 ]
  %3890 = phi float [ %3361, %3401 ], [ %3593, %3877 ]
  %3891 = phi float [ %3360, %3401 ], [ %3594, %3877 ]
  %3892 = phi float [ 0.000000e+00, %3401 ], [ %3595, %3877 ]
  %3893 = phi float [ %3359, %3401 ], [ %3596, %3877 ]
  %3894 = phi float [ %3356, %3401 ], [ %3597, %3877 ]
  %3895 = phi float [ %3357, %3401 ], [ %3598, %3877 ]
  %3896 = phi float [ %3358, %3401 ], [ %3599, %3877 ]
  %3897 = call float @dx.op.dot3.f32(i32 55, float %3887, float %3888, float %3889, float %3887, float %3888, float %3889)  ; Dot3(ax,ay,az,bx,by,bz)
  %3898 = call float @dx.op.unary.f32(i32 25, float %3897)  ; Rsqrt(value)
  %3899 = fmul fast float %3898, %3887
  %3900 = fmul fast float %3898, %3888
  %3901 = fmul fast float %3898, %3889
  %3902 = fadd fast float %3892, %851
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = call float @dx.op.dot3.f32(i32 55, float %3899, float %3900, float %3901, float %3899, float %3900, float %3901)  ; Dot3(ax,ay,az,bx,by,bz)
  %3905 = call float @dx.op.unary.f32(i32 25, float %3904)  ; Rsqrt(value)
  %3906 = fmul fast float %3905, %3899
  %3907 = fmul fast float %3905, %3900
  %3908 = fmul fast float %3905, %3901
  br label %3909

; <label>:3909                                    ; preds = %3878, %3350
  %3910 = phi float [ %3906, %3878 ], [ %3396, %3350 ]
  %3911 = phi float [ %3907, %3878 ], [ %3397, %3350 ]
  %3912 = phi float [ %3908, %3878 ], [ %3398, %3350 ]
  %3913 = phi float [ %3894, %3878 ], [ %3356, %3350 ]
  %3914 = phi float [ %3895, %3878 ], [ %3357, %3350 ]
  %3915 = phi float [ %3896, %3878 ], [ %3358, %3350 ]
  %3916 = phi float [ %3884, %3878 ], [ %3353, %3350 ]
  %3917 = phi float [ %3885, %3878 ], [ %3354, %3350 ]
  %3918 = phi float [ %3886, %3878 ], [ %3355, %3350 ]
  %3919 = phi float [ %3893, %3878 ], [ %3359, %3350 ]
  %3920 = phi float [ %3903, %3878 ], [ %851, %3350 ]
  %3921 = phi float [ %3891, %3878 ], [ %3360, %3350 ]
  %3922 = phi float [ %3890, %3878 ], [ %3361, %3350 ]
  %3923 = phi float [ %3883, %3878 ], [ 0.000000e+00, %3350 ]
  %3924 = phi float [ %3882, %3878 ], [ 0.000000e+00, %3350 ]
  %3925 = phi float [ %3879, %3878 ], [ 0.000000e+00, %3350 ]
  %3926 = phi float [ %3880, %3878 ], [ %3370, %3350 ]
  %3927 = phi float [ %3881, %3878 ], [ %3368, %3350 ]
  %3928 = fadd fast float %3919, 0xBFB99999A0000000
  %3929 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3930 = fmul fast float %3929, 0x3FF1C71C80000000
  %3931 = call float @dx.op.binary.f32(i32 36, float %3919, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3932 = fsub fast float 1.000000e+00, %3930
  %3933 = call float @dx.op.unary.f32(i32 7, float %3932)  ; Saturate(value)
  %3934 = fmul fast float %3933, %3913
  %3935 = fmul fast float %3933, %3914
  %3936 = fmul fast float %3933, %3915
  %3937 = call float @dx.op.unary.f32(i32 7, float %3934)  ; Saturate(value)
  %3938 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3939 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3940 = fmul fast float %3930, %3913
  %3941 = fmul fast float %3930, %3914
  %3942 = fmul fast float %3930, %3915
  %3943 = fadd fast float %3940, %3931
  %3944 = fadd fast float %3941, %3931
  %3945 = fadd fast float %3942, %3931
  %3946 = call float @dx.op.unary.f32(i32 7, float %3943)  ; Saturate(value)
  %3947 = call float @dx.op.unary.f32(i32 7, float %3944)  ; Saturate(value)
  %3948 = call float @dx.op.unary.f32(i32 7, float %3945)  ; Saturate(value)
  %3949 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3950 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.i32 %3950, 3
  %3952 = and i32 %3951, 8
  %3953 = icmp ne i32 %3952, 0
  %3954 = call float @dx.op.binary.f32(i32 35, float %3937, float %3913)  ; FMax(a,b)
  %3955 = call float @dx.op.binary.f32(i32 35, float %3938, float %3913)  ; FMax(a,b)
  %3956 = call float @dx.op.binary.f32(i32 35, float %3939, float %3913)  ; FMax(a,b)
  %3957 = call float @dx.op.dot3.f32(i32 55, float %3937, float %3938, float %3939, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3958 = select i1 %163, float %3913, float %3937
  %3959 = select i1 %163, float %3957, float %3938
  %3960 = select i1 %163, float 1.000000e+00, float %3939
  %3961 = select i1 %3953, float %3954, float %3958
  %3962 = select i1 %3953, float %3955, float %3959
  %3963 = select i1 %3953, float %3956, float %3960
  %3964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3965 = extractvalue %dx.types.CBufRet.f32 %3964, 0
  %3966 = extractvalue %dx.types.CBufRet.f32 %3964, 1
  %3967 = extractvalue %dx.types.CBufRet.f32 %3964, 2
  %3968 = fadd fast float %3965, %121
  %3969 = fadd fast float %3966, %122
  %3970 = fadd fast float %3967, %123
  %3971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.f32 %3971, 0
  %3973 = extractvalue %dx.types.CBufRet.f32 %3971, 1
  %3974 = fsub fast float %3968, %3972
  %3975 = fsub fast float %3969, %3973
  %3976 = fmul fast float %3974, %3974
  %3977 = fmul fast float %3975, %3975
  %3978 = fadd fast float %3976, %3977
  %3979 = call float @dx.op.unary.f32(i32 24, float %3978)  ; Sqrt(value)
  %3980 = extractvalue %dx.types.CBufRet.f32 %3971, 2
  %3981 = fcmp fast olt float %3979, %3980
  br i1 %3981, label %3982, label %4049

; <label>:3982                                    ; preds = %3909
  %3983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3984 = extractvalue %dx.types.CBufRet.f32 %3983, 0
  %3985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3986 = extractvalue %dx.types.CBufRet.f32 %3985, 0
  %3987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.CBufRet.f32 %3983, 1
  %3990 = extractvalue %dx.types.CBufRet.f32 %3985, 1
  %3991 = extractvalue %dx.types.CBufRet.f32 %3987, 1
  %3992 = extractvalue %dx.types.CBufRet.f32 %3983, 3
  %3993 = extractvalue %dx.types.CBufRet.f32 %3985, 3
  %3994 = extractvalue %dx.types.CBufRet.f32 %3987, 3
  %3995 = fadd fast float %3992, %3968
  %3996 = fadd fast float %3993, %3969
  %3997 = fadd fast float %3994, %3970
  %3998 = fmul fast float %3995, %3984
  %3999 = call float @dx.op.tertiary.f32(i32 46, float %3996, float %3986, float %3998)  ; FMad(a,b,c)
  %4000 = call float @dx.op.tertiary.f32(i32 46, float %3997, float %3988, float %3999)  ; FMad(a,b,c)
  %4001 = fmul fast float %3995, %3989
  %4002 = call float @dx.op.tertiary.f32(i32 46, float %3996, float %3990, float %4001)  ; FMad(a,b,c)
  %4003 = call float @dx.op.tertiary.f32(i32 46, float %3997, float %3991, float %4002)  ; FMad(a,b,c)
  %4004 = fsub fast float %4000, %3992
  %4005 = fsub fast float %4003, %3993
  %4006 = fsub fast float %4004, %3972
  %4007 = fadd fast float %4006, %3980
  %4008 = fsub fast float %4005, %3973
  %4009 = fadd fast float %4008, %3980
  %4010 = extractvalue %dx.types.CBufRet.f32 %3971, 3
  %4011 = fmul fast float %4007, %4010
  %4012 = fmul fast float %4009, %4010
  %4013 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4014 = call float @dx.op.unary.f32(i32 7, float %4012)  ; Saturate(value)
  %4015 = fsub fast float 1.000000e+00, %4013
  %4016 = fsub fast float 1.000000e+00, %4014
  %4017 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %4015, float %4016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4018 = extractvalue %dx.types.ResRet.f32 %4017, 0
  %4019 = fcmp fast ugt float %4018, 0.000000e+00
  br i1 %4019, label %4020, label %4323

; <label>:4020                                    ; preds = %3982
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 2
  %4023 = fmul fast float %4022, %4018
  %4024 = extractvalue %dx.types.CBufRet.f32 %4021, 3
  %4025 = fadd fast float %4024, %4023
  %4026 = extractvalue %dx.types.CBufRet.f32 %3987, 2
  %4027 = fadd fast float %4025, %3994
  %4028 = fmul fast float %4000, %3988
  %4029 = call float @dx.op.tertiary.f32(i32 46, float %4003, float %3991, float %4028)  ; FMad(a,b,c)
  %4030 = call float @dx.op.tertiary.f32(i32 46, float %4027, float %4026, float %4029)  ; FMad(a,b,c)
  %4031 = fsub fast float %4030, %3994
  %4032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4033 = extractvalue %dx.types.CBufRet.f32 %4032, 2
  %4034 = fsub fast float %4031, %4033
  %4035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %4015, float %4016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4036 = extractvalue %dx.types.ResRet.f32 %4035, 0
  %4037 = extractvalue %dx.types.ResRet.f32 %4035, 1
  %4038 = extractvalue %dx.types.ResRet.f32 %4035, 2
  %4039 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %4015, float %4016, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4040 = extractvalue %dx.types.ResRet.f32 %4039, 0
  %4041 = extractvalue %dx.types.ResRet.f32 %4039, 1
  %4042 = extractvalue %dx.types.ResRet.f32 %4039, 2
  %4043 = fadd fast float %4040, %4036
  %4044 = fmul fast float %4043, 0x3F847AE140000000
  %4045 = fadd fast float %4041, %4037
  %4046 = fmul fast float %4045, 0x3F847AE140000000
  %4047 = fadd fast float %4042, %4038
  %4048 = fmul fast float %4047, 0x3F847AE140000000
  br label %4323

; <label>:4049                                    ; preds = %3909
  %4050 = and i32 %139, 1
  %4051 = icmp eq i32 %4050, 0
  br i1 %4051, label %4323, label %4052

; <label>:4052                                    ; preds = %4049
  %4053 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4054 = extractvalue %dx.types.CBufRet.f32 %4053, 0
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 0
  %4057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4058 = extractvalue %dx.types.CBufRet.f32 %4057, 0
  %4059 = extractvalue %dx.types.CBufRet.f32 %4053, 1
  %4060 = extractvalue %dx.types.CBufRet.f32 %4055, 1
  %4061 = extractvalue %dx.types.CBufRet.f32 %4057, 1
  %4062 = extractvalue %dx.types.CBufRet.f32 %4053, 3
  %4063 = extractvalue %dx.types.CBufRet.f32 %4055, 3
  %4064 = extractvalue %dx.types.CBufRet.f32 %4057, 3
  %4065 = fadd fast float %4062, %3968
  %4066 = fadd fast float %4063, %3969
  %4067 = fadd fast float %4064, %3970
  %4068 = fmul fast float %4065, %4054
  %4069 = call float @dx.op.tertiary.f32(i32 46, float %4066, float %4056, float %4068)  ; FMad(a,b,c)
  %4070 = call float @dx.op.tertiary.f32(i32 46, float %4067, float %4058, float %4069)  ; FMad(a,b,c)
  %4071 = fmul fast float %4065, %4059
  %4072 = call float @dx.op.tertiary.f32(i32 46, float %4066, float %4060, float %4071)  ; FMad(a,b,c)
  %4073 = call float @dx.op.tertiary.f32(i32 46, float %4067, float %4061, float %4072)  ; FMad(a,b,c)
  %4074 = fsub fast float %4070, %4062
  %4075 = fsub fast float %4073, %4063
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 0
  %4078 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4079 = extractvalue %dx.types.CBufRet.f32 %4076, 2
  %4080 = extractvalue %dx.types.CBufRet.f32 %4076, 3
  %4081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4081, 3
  %4083 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.i32 %4083, 0
  %4085 = extractvalue %dx.types.CBufRet.i32 %4083, 1
  %4086 = udiv i32 %4085, %4084
  %4087 = fsub fast float %4074, %4077
  %4088 = fsub fast float %4075, %4078
  %4089 = call float @dx.op.binary.f32(i32 35, float %4087, float 0.000000e+00)  ; FMax(a,b)
  %4090 = call float @dx.op.binary.f32(i32 35, float %4088, float 0.000000e+00)  ; FMax(a,b)
  %4091 = call float @dx.op.binary.f32(i32 36, float %4089, float %4079)  ; FMin(a,b)
  %4092 = call float @dx.op.binary.f32(i32 36, float %4090, float %4080)  ; FMin(a,b)
  %4093 = add i32 %4084, -1
  %4094 = add i32 %4086, -1
  %4095 = fmul fast float %4091, %4082
  %4096 = fmul fast float %4092, %4082
  %4097 = fptoui float %4095 to i32
  %4098 = fptoui float %4096 to i32
  %4099 = call i32 @dx.op.binary.i32(i32 40, i32 %4097, i32 %4093)  ; UMin(a,b)
  %4100 = call i32 @dx.op.binary.i32(i32 40, i32 %4098, i32 %4094)  ; UMin(a,b)
  %4101 = mul i32 %4100, %4084
  %4102 = add i32 %4101, %4099
  %4103 = shl i32 %4102, 2
  %4104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4103, i32 undef)  ; BufferLoad(srv,index,wot)
  %4105 = extractvalue %dx.types.ResRet.i32 %4104, 0
  %4106 = icmp eq i32 %4105, -1
  br i1 %4106, label %4323, label %4107

; <label>:4107                                    ; preds = %4052
  %4108 = mul i32 %4105, 148
  %4109 = add i32 %4108, 4
  %4110 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4109, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = add i32 %4108, 8
  %4113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4112, i32 undef)  ; BufferLoad(srv,index,wot)
  %4114 = extractvalue %dx.types.ResRet.f32 %4113, 0
  %4115 = add i32 %4108, 36
  %4116 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4115, i32 undef)  ; BufferLoad(srv,index,wot)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4118 = add i32 %4108, 60
  %4119 = add i32 %4108, 92
  %4120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4119, i32 undef)  ; BufferLoad(srv,index,wot)
  %4121 = extractvalue %dx.types.ResRet.i32 %4120, 0
  %4122 = add i32 %4108, 116
  %4123 = fsub fast float %4074, %4111
  %4124 = fsub fast float %4075, %4114
  %4125 = fmul fast float %4082, %4123
  %4126 = fmul fast float %4082, %4124
  %4127 = call float @dx.op.unary.f32(i32 7, float %4125)  ; Saturate(value)
  %4128 = call float @dx.op.unary.f32(i32 7, float %4126)  ; Saturate(value)
  %4129 = fsub fast float 1.000000e+00, %4128
  %4130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4131 = extractvalue %dx.types.CBufRet.f32 %4130, 2
  %4132 = call float @dx.op.unary.f32(i32 83, float %4127)  ; DerivCoarseX(value)
  %4133 = call float @dx.op.unary.f32(i32 83, float %4129)  ; DerivCoarseX(value)
  %4134 = call float @dx.op.unary.f32(i32 84, float %4127)  ; DerivCoarseY(value)
  %4135 = call float @dx.op.unary.f32(i32 84, float %4129)  ; DerivCoarseY(value)
  %4136 = fmul fast float %4132, %4131
  %4137 = fmul fast float %4133, %4131
  %4138 = fmul fast float %4134, %4131
  %4139 = fmul fast float %4135, %4131
  %4140 = call float @dx.op.dot2.f32(i32 54, float %4138, float %4139, float %4138, float %4139)  ; Dot2(ax,ay,bx,by)
  %4141 = call float @dx.op.dot2.f32(i32 54, float %4136, float %4137, float %4136, float %4137)  ; Dot2(ax,ay,bx,by)
  %4142 = call float @dx.op.binary.f32(i32 35, float %4141, float %4140)  ; FMax(a,b)
  %4143 = call float @dx.op.unary.f32(i32 23, float %4142)  ; Log(value)
  %4144 = fmul fast float %4143, 5.000000e-01
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 1
  %4147 = fadd fast float %4146, %4144
  %4148 = call float @dx.op.binary.f32(i32 35, float %4147, float 0.000000e+00)  ; FMax(a,b)
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 3
  %4151 = fadd fast float %4150, %4148
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4154 = fadd fast float %4151, %4153
  %4155 = add i32 %4121, 0
  %4156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4155, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4157 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4156, i32 0)  ; GetDimensions(handle,mipLevel)
  %4158 = extractvalue %dx.types.Dimensions %4157, 0
  %4159 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4158)  ; FirstbitLo(value)
  %4160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.i32 %4160, 1
  %4162 = sub nsw i32 %4161, %4159
  %4163 = sitofp i32 %4162 to float
  %4164 = fsub fast float %4154, %4163
  %4165 = call float @dx.op.binary.f32(i32 35, float %4164, float 0.000000e+00)  ; FMax(a,b)
  %4166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4156, %dx.types.Handle %32, float %4127, float %4129, float %4117, float undef, i32 0, i32 0, i32 undef, float %4165)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4167 = extractvalue %dx.types.ResRet.f32 %4166, 0
  %4168 = fcmp ule float %4167, 0x3FE0101020000000
  %4169 = extractvalue %dx.types.CBufRet.i32 %4160, 0
  %4170 = and i32 %4169, 128
  %4171 = icmp ne i32 %4170, 0
  %4172 = and i1 %4168, %4171
  br i1 %4172, label %4323, label %4173

; <label>:4173                                    ; preds = %4107
  %4174 = add i32 %4108, 20
  %4175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4174, i32 undef)  ; BufferLoad(srv,index,wot)
  %4176 = extractvalue %dx.types.ResRet.f32 %4175, 0
  %4177 = add i32 %4108, 24
  %4178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4177, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.f32 %4178, 0
  %4180 = add i32 %4108, 40
  %4181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = add i32 %4108, 96
  %4184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4183, i32 undef)  ; BufferLoad(srv,index,wot)
  %4185 = extractvalue %dx.types.ResRet.i32 %4184, 0
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 2
  %4188 = fmul fast float %4187, %4127
  %4189 = fmul fast float %4187, %4129
  %4190 = extractvalue %dx.types.CBufRet.f32 %4186, 3
  %4191 = fadd fast float %4188, %4190
  %4192 = fadd fast float %4189, %4190
  %4193 = add i32 %4185, 0
  %4194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4193, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4195 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4194, i32 0)  ; GetDimensions(handle,mipLevel)
  %4196 = extractvalue %dx.types.Dimensions %4195, 0
  %4197 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4196)  ; FirstbitLo(value)
  %4198 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4199 = extractvalue %dx.types.CBufRet.i32 %4198, 1
  %4200 = sub nsw i32 %4199, %4197
  %4201 = sitofp i32 %4200 to float
  %4202 = fsub fast float %4151, %4201
  %4203 = call float @dx.op.binary.f32(i32 35, float %4202, float 0.000000e+00)  ; FMax(a,b)
  %4204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4194, %dx.types.Handle %32, float %4191, float %4192, float %4182, float undef, i32 0, i32 0, i32 undef, float %4203)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4205 = extractvalue %dx.types.ResRet.f32 %4204, 0
  %4206 = fmul fast float %4205, %4176
  %4207 = fadd fast float %4206, %4179
  %4208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4209 = extractvalue %dx.types.CBufRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.CBufRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.CBufRet.f32 %4208, 2
  %4212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4213 = extractvalue %dx.types.CBufRet.f32 %4212, 3
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 3
  %4216 = extractvalue %dx.types.CBufRet.f32 %4208, 3
  %4217 = fadd fast float %4213, %4074
  %4218 = fadd fast float %4215, %4075
  %4219 = fadd fast float %4207, %4216
  %4220 = fmul fast float %4217, %4209
  %4221 = call float @dx.op.tertiary.f32(i32 46, float %4218, float %4210, float %4220)  ; FMad(a,b,c)
  %4222 = call float @dx.op.tertiary.f32(i32 46, float %4219, float %4211, float %4221)  ; FMad(a,b,c)
  %4223 = fsub fast float %4222, %4216
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 2
  %4226 = fsub fast float %4223, %4225
  %4227 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4228 = extractvalue %dx.types.CBufRet.i32 %4227, 0
  %4229 = call i32 @dx.op.binary.i32(i32 40, i32 %4105, i32 %4228)  ; UMin(a,b)
  %4230 = mul i32 %4229, 36
  %4231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4230, i32 undef)  ; BufferLoad(srv,index,wot)
  %4232 = extractvalue %dx.types.ResRet.i32 %4231, 0
  %4233 = add i32 %4230, 4
  %4234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4235 = extractvalue %dx.types.CBufRet.f32 %4234, 0
  %4236 = fmul fast float %4235, %4127
  %4237 = fmul fast float %4235, %4129
  %4238 = extractvalue %dx.types.CBufRet.f32 %4234, 1
  %4239 = fadd fast float %4236, %4238
  %4240 = fadd fast float %4237, %4238
  %4241 = icmp eq i32 %4232, 0
  br i1 %4241, label %4310, label %4242

; <label>:4242                                    ; preds = %4173
  br label %4243

; <label>:4243                                    ; preds = %4300, %4242
  %4244 = phi float [ %4301, %4300 ], [ 0.000000e+00, %4242 ]
  %4245 = phi float [ %4302, %4300 ], [ 0.000000e+00, %4242 ]
  %4246 = phi float [ %4303, %4300 ], [ 0.000000e+00, %4242 ]
  %4247 = phi float [ %4304, %4300 ], [ 0.000000e+00, %4242 ]
  %4248 = phi float [ %4305, %4300 ], [ 0.000000e+00, %4242 ]
  %4249 = phi float [ %4306, %4300 ], [ 0.000000e+00, %4242 ]
  %4250 = phi i32 [ %4307, %4300 ], [ 0, %4242 ]
  %4251 = shl i32 %4250, 2
  %4252 = add i32 %4118, %4251
  %4253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4252, i32 undef)  ; BufferLoad(srv,index,wot)
  %4254 = extractvalue %dx.types.ResRet.f32 %4253, 0
  %4255 = add i32 %4122, %4251
  %4256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4255, i32 undef)  ; BufferLoad(srv,index,wot)
  %4257 = extractvalue %dx.types.ResRet.i32 %4256, 0
  %4258 = add i32 %4257, 0
  %4259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4258, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4260 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4259, i32 0)  ; GetDimensions(handle,mipLevel)
  %4261 = extractvalue %dx.types.Dimensions %4260, 0
  %4262 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4261)  ; FirstbitLo(value)
  %4263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4264 = extractvalue %dx.types.CBufRet.i32 %4263, 1
  %4265 = sub nsw i32 %4264, %4262
  %4266 = sitofp i32 %4265 to float
  %4267 = fsub fast float %4151, %4266
  %4268 = call float @dx.op.binary.f32(i32 35, float %4267, float 0.000000e+00)  ; FMax(a,b)
  %4269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4259, %dx.types.Handle %32, float %4239, float %4240, float %4254, float undef, i32 0, i32 0, i32 undef, float %4268)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4270 = extractvalue %dx.types.ResRet.f32 %4269, 0
  %4271 = fcmp fast ogt float %4270, 0.000000e+00
  br i1 %4271, label %4272, label %4300

; <label>:4272                                    ; preds = %4243
  %4273 = add i32 %4233, %4251
  %4274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.i32 %4274, 0
  %4276 = and i32 %4275, 32767
  %4277 = mul nuw nsw i32 %4276, 928
  %4278 = add nuw nsw i32 %4277, 48
  %4279 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4278, i32 undef)  ; BufferLoad(srv,index,wot)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = extractvalue %dx.types.ResRet.f32 %4279, 1
  %4282 = extractvalue %dx.types.ResRet.f32 %4279, 2
  %4283 = add nuw nsw i32 %4277, 60
  %4284 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4283, i32 undef)  ; BufferLoad(srv,index,wot)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.ResRet.f32 %4284, 1
  %4287 = extractvalue %dx.types.ResRet.f32 %4284, 2
  %4288 = fmul fast float %4280, %4270
  %4289 = fmul fast float %4281, %4270
  %4290 = fmul fast float %4282, %4270
  %4291 = fadd fast float %4288, %4244
  %4292 = fadd fast float %4289, %4245
  %4293 = fadd fast float %4290, %4246
  %4294 = fmul fast float %4285, %4270
  %4295 = fmul fast float %4286, %4270
  %4296 = fmul fast float %4287, %4270
  %4297 = fadd fast float %4294, %4247
  %4298 = fadd fast float %4295, %4248
  %4299 = fadd fast float %4296, %4249
  br label %4300

; <label>:4300                                    ; preds = %4272, %4243
  %4301 = phi float [ %4291, %4272 ], [ %4244, %4243 ]
  %4302 = phi float [ %4292, %4272 ], [ %4245, %4243 ]
  %4303 = phi float [ %4293, %4272 ], [ %4246, %4243 ]
  %4304 = phi float [ %4297, %4272 ], [ %4247, %4243 ]
  %4305 = phi float [ %4298, %4272 ], [ %4248, %4243 ]
  %4306 = phi float [ %4299, %4272 ], [ %4249, %4243 ]
  %4307 = add nuw i32 %4250, 1
  %4308 = icmp eq i32 %4307, %4232
  br i1 %4308, label %4309, label %4243

; <label>:4309                                    ; preds = %4300
  br label %4310

; <label>:4310                                    ; preds = %4309, %4173
  %4311 = phi float [ 0.000000e+00, %4173 ], [ %4301, %4309 ]
  %4312 = phi float [ 0.000000e+00, %4173 ], [ %4302, %4309 ]
  %4313 = phi float [ 0.000000e+00, %4173 ], [ %4303, %4309 ]
  %4314 = phi float [ 0.000000e+00, %4173 ], [ %4304, %4309 ]
  %4315 = phi float [ 0.000000e+00, %4173 ], [ %4305, %4309 ]
  %4316 = phi float [ 0.000000e+00, %4173 ], [ %4306, %4309 ]
  %4317 = fadd fast float %4314, %4311
  %4318 = fmul fast float %4317, 0x3F847AE140000000
  %4319 = fadd fast float %4315, %4312
  %4320 = fmul fast float %4319, 0x3F847AE140000000
  %4321 = fadd fast float %4316, %4313
  %4322 = fmul fast float %4321, 0x3F847AE140000000
  br label %4323

; <label>:4323                                    ; preds = %4310, %4107, %4052, %4049, %4020, %3982
  %4324 = phi float [ %4034, %4020 ], [ -1.310720e+05, %3982 ], [ %4226, %4310 ], [ -1.310720e+05, %4052 ], [ -1.310720e+05, %4107 ], [ -1.310720e+05, %4049 ]
  %4325 = phi float [ %4044, %4020 ], [ 0.000000e+00, %3982 ], [ %4318, %4310 ], [ 0.000000e+00, %4052 ], [ 0.000000e+00, %4107 ], [ 0.000000e+00, %4049 ]
  %4326 = phi float [ %4046, %4020 ], [ 0.000000e+00, %3982 ], [ %4320, %4310 ], [ 0.000000e+00, %4052 ], [ 0.000000e+00, %4107 ], [ 0.000000e+00, %4049 ]
  %4327 = phi float [ %4048, %4020 ], [ 0.000000e+00, %3982 ], [ %4322, %4310 ], [ 0.000000e+00, %4052 ], [ 0.000000e+00, %4107 ], [ 0.000000e+00, %4049 ]
  %4328 = phi i1 [ true, %4020 ], [ false, %3982 ], [ true, %4310 ], [ false, %4052 ], [ false, %4107 ], [ false, %4049 ]
  %4329 = and i32 %139, 3
  %4330 = icmp eq i32 %4329, 1
  %4331 = select i1 %4330, float 1.000000e+00, float 0.000000e+00
  %4332 = fsub fast float %4324, %123
  %4333 = call float @dx.op.unary.f32(i32 7, float %4332)  ; Saturate(value)
  %4334 = select i1 %4328, float %4333, float 1.000000e+00
  %4335 = fmul fast float %4334, %4331
  %4336 = icmp eq i32 %4329, 3
  %4337 = select i1 %4336, float 1.000000e+00, float %4335
  %4338 = call float @dx.op.binary.f32(i32 35, float %3925, float %4337)  ; FMax(a,b)
  %4339 = call float @dx.op.unary.f32(i32 7, float %4338)  ; Saturate(value)
  %4340 = fcmp fast une float %4339, 0.000000e+00
  %4341 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4342 = call float @dx.op.unary.f32(i32 25, float %4341)  ; Rsqrt(value)
  br i1 %4340, label %4350, label %4343

; <label>:4343                                    ; preds = %4323
  %4344 = fmul fast float %4342, %121
  %4345 = fmul fast float %4342, %122
  %4346 = fmul fast float %4342, %123
  %4347 = fsub fast float -0.000000e+00, %4344
  %4348 = fsub fast float -0.000000e+00, %4345
  %4349 = fsub fast float -0.000000e+00, %4346
  br label %4518

; <label>:4350                                    ; preds = %4323
  %4351 = fmul fast float %121, %4342
  %4352 = fsub fast float -0.000000e+00, %4351
  %4353 = fmul fast float %122, %4342
  %4354 = fsub fast float -0.000000e+00, %4353
  %4355 = fmul fast float %123, %4342
  %4356 = fsub fast float -0.000000e+00, %4355
  %4357 = call float @dx.op.dot3.f32(i32 55, float %4352, float %4354, float %4356, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4358 = fmul fast float %4339, 2.500000e+00
  %4359 = call float @dx.op.unary.f32(i32 7, float %4358)  ; Saturate(value)
  %4360 = fmul fast float %4339, 0x4013FFFFE0000000
  %4361 = fadd fast float %4360, 0xBFFFFFFFE0000000
  %4362 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4363 = fmul fast float %4339, 0x4004000020000000
  %4364 = fadd fast float %4363, 0xBFF8000040000000
  %4365 = call float @dx.op.unary.f32(i32 7, float %4364)  ; Saturate(value)
  %4366 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4367 = fmul fast float %3928, 1.000000e+01
  %4368 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4369 = fmul fast float %4368, 2.000000e+00
  %4370 = fsub fast float 3.000000e+00, %4369
  %4371 = fmul fast float %4368, %4368
  %4372 = fmul fast float %4371, %4370
  %4373 = fsub fast float 1.000000e+00, %4372
  %4374 = fsub fast float 0x3FE3333340000000, %3949
  %4375 = fmul fast float %4374, 0x400AAAAAA0000000
  %4376 = call float @dx.op.unary.f32(i32 7, float %4375)  ; Saturate(value)
  %4377 = fmul fast float %4373, %4376
  %4378 = fmul fast float %3961, 0x3FEA2B8620000000
  %4379 = fmul fast float %3962, 0x3FEA2B8620000000
  %4380 = fmul fast float %3963, 0x3FEA2B8620000000
  %4381 = fadd fast float %4378, 0x3FC81DFBA0000000
  %4382 = fmul fast float %4381, %3961
  %4383 = fadd fast float %4382, 0x3F910E6020000000
  %4384 = fadd fast float %4379, 0x3FC81DFBA0000000
  %4385 = fmul fast float %4384, %3962
  %4386 = fadd fast float %4385, 0x3F910E6020000000
  %4387 = fadd fast float %4380, 0x3FC81DFBA0000000
  %4388 = fmul fast float %4387, %3963
  %4389 = fadd fast float %4388, 0x3F910E6020000000
  %4390 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4391 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4392 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4393 = fsub fast float %4390, %3961
  %4394 = fsub fast float %4391, %3962
  %4395 = fsub fast float %4392, %3963
  %4396 = fmul fast float %4393, %4366
  %4397 = fmul fast float %4396, %4377
  %4398 = fmul fast float %4394, %4366
  %4399 = fmul fast float %4398, %4377
  %4400 = fmul fast float %4395, %4366
  %4401 = fmul fast float %4400, %4377
  %4402 = fadd fast float %4397, %3961
  %4403 = fadd fast float %4399, %3962
  %4404 = fadd fast float %4401, %3963
  %4405 = fmul fast float %3922, %3922
  %4406 = fmul fast float %4405, %4405
  %4407 = fadd fast float %4362, 1.000000e+00
  %4408 = fsub fast float %4407, %4377
  %4409 = call float @dx.op.unary.f32(i32 7, float %4408)  ; Saturate(value)
  %4410 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4411 = call float @dx.op.unary.f32(i32 7, float %4410)  ; Saturate(value)
  %4412 = fsub fast float 1.000000e+00, %4406
  %4413 = call float @dx.op.binary.f32(i32 36, float %4409, float %4412)  ; FMin(a,b)
  %4414 = call float @dx.op.unary.f32(i32 7, float %4365)  ; Saturate(value)
  %4415 = call float @dx.op.binary.f32(i32 35, float %4413, float %4414)  ; FMax(a,b)
  %4416 = fadd fast float %4411, 0xBFE4CCCCC0000000
  %4417 = fmul fast float %4416, 0x4006DB6DA0000000
  %4418 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4419 = fmul fast float %4418, 2.000000e+00
  %4420 = fsub fast float 3.000000e+00, %4419
  %4421 = bitcast float %3946 to i32
  %4422 = ashr i32 %4421, 1
  %4423 = add nsw i32 %4422, 532487669
  %4424 = bitcast i32 %4423 to float
  %4425 = fsub fast float 1.000000e+00, %4424
  %4426 = bitcast float %4425 to i32
  %4427 = sub nsw i32 2129859010, %4426
  %4428 = bitcast i32 %4427 to float
  %4429 = fmul fast float %4428, 2.000000e+00
  %4430 = bitcast float %3947 to i32
  %4431 = ashr i32 %4430, 1
  %4432 = add nsw i32 %4431, 532487669
  %4433 = bitcast i32 %4432 to float
  %4434 = fsub fast float 1.000000e+00, %4433
  %4435 = bitcast float %4434 to i32
  %4436 = sub nsw i32 2129859010, %4435
  %4437 = bitcast i32 %4436 to float
  %4438 = fmul fast float %4437, 2.000000e+00
  %4439 = bitcast float %3948 to i32
  %4440 = ashr i32 %4439, 1
  %4441 = add nsw i32 %4440, 532487669
  %4442 = bitcast i32 %4441 to float
  %4443 = fsub fast float 1.000000e+00, %4442
  %4444 = bitcast float %4443 to i32
  %4445 = sub nsw i32 2129859010, %4444
  %4446 = bitcast i32 %4445 to float
  %4447 = fmul fast float %4446, 2.000000e+00
  %4448 = fsub fast float 0x4002A9FBE0000000, %4429
  %4449 = fadd fast float %4429, 0x3FD54FDF00000000
  %4450 = bitcast float %4449 to i32
  %4451 = sub nsw i32 2129859010, %4450
  %4452 = bitcast i32 %4451 to float
  %4453 = fmul fast float %4452, %4448
  %4454 = fmul fast float %4453, %4453
  %4455 = fsub fast float 0x4002A9FBE0000000, %4438
  %4456 = fadd fast float %4438, 0x3FD54FDF00000000
  %4457 = bitcast float %4456 to i32
  %4458 = sub nsw i32 2129859010, %4457
  %4459 = bitcast i32 %4458 to float
  %4460 = fmul fast float %4459, %4455
  %4461 = fmul fast float %4460, %4460
  %4462 = fsub fast float 0x4002A9FBE0000000, %4447
  %4463 = fadd fast float %4447, 0x3FD54FDF00000000
  %4464 = bitcast float %4463 to i32
  %4465 = sub nsw i32 2129859010, %4464
  %4466 = bitcast i32 %4465 to float
  %4467 = fmul fast float %4466, %4462
  %4468 = fmul fast float %4467, %4467
  %4469 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4454)  ; FMax(a,b)
  %4470 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4461)  ; FMax(a,b)
  %4471 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4468)  ; FMax(a,b)
  %4472 = fsub fast float 1.000000e+00, %4357
  %4473 = fadd fast float %4472, %4373
  %4474 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4475 = fsub fast float 1.000000e+00, %4337
  %4476 = fmul fast float %4415, %4475
  %4477 = fmul fast float %4418, %4418
  %4478 = fmul fast float %4477, %4476
  %4479 = fmul fast float %4478, %4420
  %4480 = fmul fast float %4475, 0xBFE99999A0000000
  %4481 = fmul fast float %4480, %4366
  %4482 = fmul fast float %4481, %4377
  %4483 = fadd fast float %4482, 1.000000e+00
  %4484 = fadd fast float %3949, -1.000000e+00
  %4485 = fmul fast float %4483, %4484
  %4486 = fadd fast float %4485, 1.000000e+00
  %4487 = fsub fast float %4469, %3946
  %4488 = fsub fast float %4470, %3947
  %4489 = fsub fast float %4471, %3948
  %4490 = fmul fast float %4479, %4487
  %4491 = fmul fast float %4479, %4488
  %4492 = fmul fast float %4479, %4489
  %4493 = fadd fast float %4490, %3946
  %4494 = fadd fast float %4491, %3947
  %4495 = fadd fast float %4492, %3948
  %4496 = fsub fast float %73, %3910
  %4497 = fsub fast float %74, %3911
  %4498 = fsub fast float %75, %3912
  %4499 = fmul fast float %4479, %4496
  %4500 = fmul fast float %4479, %4497
  %4501 = fmul fast float %4479, %4498
  %4502 = fadd fast float %4499, %3910
  %4503 = fadd fast float %4500, %3911
  %4504 = fadd fast float %4501, %3912
  %4505 = fmul fast float %4479, %4474
  %4506 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4507 = fsub fast float 1.000000e+00, %4506
  %4508 = fmul fast float %4505, %4507
  %4509 = fadd fast float %4508, %4506
  %4510 = fsub fast float 1.000000e+00, %3922
  %4511 = fmul fast float %4479, %4510
  %4512 = fadd fast float %4511, %3922
  %4513 = call float @dx.op.dot3.f32(i32 55, float %4502, float %4503, float %4504, float %4502, float %4503, float %4504)  ; Dot3(ax,ay,az,bx,by,bz)
  %4514 = call float @dx.op.unary.f32(i32 25, float %4513)  ; Rsqrt(value)
  %4515 = fmul fast float %4502, %4514
  %4516 = fmul fast float %4503, %4514
  %4517 = fmul fast float %4504, %4514
  br label %4518

; <label>:4518                                    ; preds = %4350, %4343
  %4519 = phi float [ %4349, %4343 ], [ %4356, %4350 ]
  %4520 = phi float [ %4348, %4343 ], [ %4354, %4350 ]
  %4521 = phi float [ %4347, %4343 ], [ %4352, %4350 ]
  %4522 = phi float [ %4346, %4343 ], [ %4355, %4350 ]
  %4523 = phi float [ %4345, %4343 ], [ %4353, %4350 ]
  %4524 = phi float [ %4344, %4343 ], [ %4351, %4350 ]
  %4525 = phi float [ %3946, %4343 ], [ %4493, %4350 ]
  %4526 = phi float [ %3947, %4343 ], [ %4494, %4350 ]
  %4527 = phi float [ %3948, %4343 ], [ %4495, %4350 ]
  %4528 = phi float [ %3961, %4343 ], [ %4402, %4350 ]
  %4529 = phi float [ %3962, %4343 ], [ %4403, %4350 ]
  %4530 = phi float [ %3963, %4343 ], [ %4404, %4350 ]
  %4531 = phi float [ %3910, %4343 ], [ %4515, %4350 ]
  %4532 = phi float [ %3911, %4343 ], [ %4516, %4350 ]
  %4533 = phi float [ %3912, %4343 ], [ %4517, %4350 ]
  %4534 = phi float [ %3949, %4343 ], [ %4509, %4350 ]
  %4535 = phi float [ %3922, %4343 ], [ %4512, %4350 ]
  %4536 = select i1 %163, float 0.000000e+00, float %4527
  %4537 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float %4521, float %4520, float %4519)  ; Dot3(ax,ay,az,bx,by,bz)
  %4538 = call float @dx.op.unary.f32(i32 7, float %4537)  ; Saturate(value)
  %4539 = call float @dx.op.dot3.f32(i32 55, float %4524, float %4523, float %4522, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %4540 = fmul fast float %4539, 2.000000e+00
  %4541 = fmul fast float %4540, %4531
  %4542 = fmul fast float %4540, %4532
  %4543 = fmul fast float %4540, %4533
  %4544 = fsub fast float %4524, %4541
  %4545 = fsub fast float %4523, %4542
  %4546 = fsub fast float %4522, %4543
  %4547 = call float @dx.op.binary.f32(i32 36, float %4535, float 1.000000e+00)  ; FMin(a,b)
  %4548 = fsub fast float 1.000000e+00, %4535
  %4549 = bitcast float %4548 to i32
  %4550 = sub nsw i32 2129859010, %4549
  %4551 = bitcast i32 %4550 to float
  %4552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4553 = extractvalue %dx.types.CBufRet.f32 %4552, 0
  %4554 = extractvalue %dx.types.CBufRet.f32 %4552, 1
  %4555 = extractvalue %dx.types.CBufRet.f32 %4552, 2
  %4556 = fadd fast float %4553, %121
  %4557 = fadd fast float %4554, %122
  %4558 = fadd fast float %4555, %123
  %4559 = fmul fast float %4531, 3.200000e+01
  %4560 = fmul fast float %4532, 3.200000e+01
  %4561 = fadd fast float %4556, %4559
  %4562 = fadd fast float %4557, %4560
  %4563 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4564 = extractvalue %dx.types.CBufRet.f32 %4563, 0
  %4565 = extractvalue %dx.types.CBufRet.f32 %4563, 1
  %4566 = fsub fast float %4561, %4564
  %4567 = fsub fast float %4562, %4565
  %4568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4569 = extractvalue %dx.types.CBufRet.f32 %4568, 0
  %4570 = extractvalue %dx.types.CBufRet.f32 %4568, 1
  %4571 = fmul fast float %4566, %4569
  %4572 = fmul fast float %4567, %4570
  %4573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4574 = extractvalue %dx.types.CBufRet.f32 %4573, 0
  %4575 = fmul fast float %4571, %4574
  %4576 = extractvalue %dx.types.CBufRet.f32 %4573, 1
  %4577 = fadd fast float %4575, %4576
  %4578 = extractvalue %dx.types.CBufRet.f32 %4573, 2
  %4579 = fmul fast float %4578, %4572
  %4580 = extractvalue %dx.types.CBufRet.f32 %4573, 3
  %4581 = fadd fast float %4579, %4580
  %4582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %4577, float %4581, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 1
  %4587 = extractvalue %dx.types.CBufRet.f32 %4585, 0
  %4588 = fsub fast float %4586, %4587
  %4589 = fmul fast float %4588, %4583
  %4590 = fadd fast float %4589, %4587
  %4591 = extractvalue %dx.types.CBufRet.f32 %4585, 3
  %4592 = extractvalue %dx.types.CBufRet.f32 %4585, 2
  %4593 = fsub fast float %4591, %4592
  %4594 = fmul fast float %4593, %4584
  %4595 = fadd fast float %4594, %4592
  %4596 = fsub fast float %4558, %4590
  %4597 = fsub fast float %4595, %4590
  %4598 = fdiv fast float %4596, %4597
  %4599 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.f32 %4600, 0
  %4602 = fmul fast float %4601, %4599
  %4603 = extractvalue %dx.types.CBufRet.f32 %4600, 1
  %4604 = fadd fast float %4602, %4603
  %4605 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %4577, float %4581, float %4604, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4606 = extractvalue %dx.types.ResRet.f32 %4605, 0
  %4607 = extractvalue %dx.types.ResRet.f32 %4605, 1
  %4608 = extractvalue %dx.types.ResRet.f32 %4605, 2
  %4609 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4610 = extractvalue %dx.types.CBufRet.f32 %4609, 0
  %4611 = extractvalue %dx.types.CBufRet.f32 %4609, 1
  %4612 = extractvalue %dx.types.CBufRet.f32 %4609, 2
  %4613 = fmul fast float %4610, %4606
  %4614 = fmul fast float %4611, %4607
  %4615 = fmul fast float %4612, %4608
  %4616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4617 = extractvalue %dx.types.CBufRet.f32 %4616, 0
  %4618 = extractvalue %dx.types.CBufRet.f32 %4616, 1
  %4619 = extractvalue %dx.types.CBufRet.f32 %4616, 2
  %4620 = fadd fast float %4613, %4617
  %4621 = fadd fast float %4614, %4618
  %4622 = fadd fast float %4615, %4619
  %4623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4624 = extractvalue %dx.types.CBufRet.f32 %4623, 0
  %4625 = fmul fast float %4624, %4571
  %4626 = extractvalue %dx.types.CBufRet.f32 %4623, 1
  %4627 = fadd fast float %4625, %4626
  %4628 = extractvalue %dx.types.CBufRet.f32 %4623, 2
  %4629 = fmul fast float %4628, %4572
  %4630 = extractvalue %dx.types.CBufRet.f32 %4623, 3
  %4631 = fadd fast float %4629, %4630
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4634 = extractvalue %dx.types.CBufRet.f32 %4632, 1
  %4635 = extractvalue %dx.types.CBufRet.f32 %4632, 2
  %4636 = extractvalue %dx.types.CBufRet.f32 %4632, 3
  %4637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4638 = extractvalue %dx.types.CBufRet.f32 %4637, 0
  %4639 = extractvalue %dx.types.CBufRet.f32 %4637, 1
  %4640 = extractvalue %dx.types.CBufRet.f32 %4637, 2
  %4641 = extractvalue %dx.types.CBufRet.f32 %4637, 3
  %4642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4627, float %4631, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4643 = extractvalue %dx.types.ResRet.f32 %4642, 0
  %4644 = extractvalue %dx.types.ResRet.f32 %4642, 1
  %4645 = extractvalue %dx.types.ResRet.f32 %4642, 2
  %4646 = extractvalue %dx.types.ResRet.f32 %4642, 3
  %4647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4627, float %4631, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4648 = extractvalue %dx.types.ResRet.f32 %4647, 0
  %4649 = extractvalue %dx.types.ResRet.f32 %4647, 1
  %4650 = extractvalue %dx.types.ResRet.f32 %4647, 2
  %4651 = extractvalue %dx.types.ResRet.f32 %4647, 3
  %4652 = fmul fast float %4643, %4620
  %4653 = fmul fast float %4648, %4620
  %4654 = fmul fast float %4650, %4620
  %4655 = fmul fast float %4646, %4620
  %4656 = fadd fast float %4652, %4633
  %4657 = fadd fast float %4653, %4634
  %4658 = fadd fast float %4654, %4635
  %4659 = fadd fast float %4655, %4636
  %4660 = fmul fast float %4644, %4620
  %4661 = fmul fast float %4649, %4620
  %4662 = fadd fast float %4660, %4638
  %4663 = fadd fast float %4661, %4639
  %4664 = fmul fast float %4645, %4620
  %4665 = fmul fast float %4651, %4620
  %4666 = fadd fast float %4664, %4640
  %4667 = fadd fast float %4665, %4641
  %4668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4627, float %4631, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4669 = extractvalue %dx.types.ResRet.f32 %4668, 0
  %4670 = extractvalue %dx.types.ResRet.f32 %4668, 1
  %4671 = extractvalue %dx.types.ResRet.f32 %4668, 2
  %4672 = extractvalue %dx.types.ResRet.f32 %4668, 3
  %4673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4627, float %4631, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 0
  %4675 = extractvalue %dx.types.ResRet.f32 %4673, 1
  %4676 = extractvalue %dx.types.ResRet.f32 %4673, 2
  %4677 = extractvalue %dx.types.ResRet.f32 %4673, 3
  %4678 = fmul fast float %4669, %4621
  %4679 = fmul fast float %4674, %4621
  %4680 = fmul fast float %4676, %4621
  %4681 = fmul fast float %4672, %4621
  %4682 = fadd fast float %4656, %4678
  %4683 = fadd fast float %4657, %4679
  %4684 = fadd fast float %4658, %4680
  %4685 = fadd fast float %4659, %4681
  %4686 = fmul fast float %4670, %4621
  %4687 = fmul fast float %4675, %4621
  %4688 = fadd fast float %4662, %4686
  %4689 = fadd fast float %4663, %4687
  %4690 = fmul fast float %4671, %4621
  %4691 = fmul fast float %4677, %4621
  %4692 = fadd fast float %4666, %4690
  %4693 = fadd fast float %4667, %4691
  %4694 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4627, float %4631, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4695 = extractvalue %dx.types.ResRet.f32 %4694, 0
  %4696 = extractvalue %dx.types.ResRet.f32 %4694, 1
  %4697 = extractvalue %dx.types.ResRet.f32 %4694, 2
  %4698 = extractvalue %dx.types.ResRet.f32 %4694, 3
  %4699 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4627, float %4631, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4700 = extractvalue %dx.types.ResRet.f32 %4699, 0
  %4701 = extractvalue %dx.types.ResRet.f32 %4699, 1
  %4702 = extractvalue %dx.types.ResRet.f32 %4699, 2
  %4703 = extractvalue %dx.types.ResRet.f32 %4699, 3
  %4704 = fmul fast float %4695, %4622
  %4705 = fmul fast float %4700, %4622
  %4706 = fmul fast float %4702, %4622
  %4707 = fmul fast float %4698, %4622
  %4708 = fadd fast float %4682, %4704
  %4709 = fadd fast float %4683, %4705
  %4710 = fadd fast float %4684, %4706
  %4711 = fadd fast float %4685, %4707
  %4712 = fmul fast float %4696, %4622
  %4713 = fmul fast float %4701, %4622
  %4714 = fadd fast float %4688, %4712
  %4715 = fadd fast float %4689, %4713
  %4716 = fmul fast float %4697, %4622
  %4717 = fmul fast float %4703, %4622
  %4718 = fadd fast float %4692, %4716
  %4719 = fadd fast float %4693, %4717
  %4720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4721 = extractvalue %dx.types.CBufRet.f32 %4720, 0
  %4722 = fsub fast float %4556, %4721
  %4723 = fsub fast float %4564, %4556
  %4724 = call float @dx.op.binary.f32(i32 35, float %4723, float %4722)  ; FMax(a,b)
  %4725 = extractvalue %dx.types.CBufRet.f32 %4720, 1
  %4726 = fsub fast float %4557, %4725
  %4727 = fsub fast float %4565, %4557
  %4728 = call float @dx.op.binary.f32(i32 35, float %4727, float %4726)  ; FMax(a,b)
  %4729 = call float @dx.op.binary.f32(i32 35, float %4724, float %4728)  ; FMax(a,b)
  %4730 = extractvalue %dx.types.CBufRet.f32 %4568, 3
  %4731 = fmul fast float %4730, %4729
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4734 = extractvalue %dx.types.CBufRet.f32 %4733, 0
  %4735 = extractvalue %dx.types.CBufRet.f32 %4733, 1
  %4736 = extractvalue %dx.types.CBufRet.f32 %4733, 2
  %4737 = extractvalue %dx.types.CBufRet.f32 %4733, 3
  %4738 = fsub fast float %4734, %4708
  %4739 = fsub fast float %4735, %4709
  %4740 = fsub fast float %4736, %4710
  %4741 = fsub fast float %4737, %4711
  %4742 = fmul fast float %4738, %4732
  %4743 = fmul fast float %4739, %4732
  %4744 = fmul fast float %4740, %4732
  %4745 = fmul fast float %4741, %4732
  %4746 = fadd fast float %4742, %4708
  %4747 = fadd fast float %4743, %4709
  %4748 = fadd fast float %4744, %4710
  %4749 = fadd fast float %4745, %4711
  %4750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4751 = extractvalue %dx.types.CBufRet.f32 %4750, 0
  %4752 = extractvalue %dx.types.CBufRet.f32 %4750, 1
  %4753 = fsub fast float %4751, %4714
  %4754 = fsub fast float %4752, %4715
  %4755 = fmul fast float %4753, %4732
  %4756 = fmul fast float %4754, %4732
  %4757 = fadd fast float %4755, %4714
  %4758 = fadd fast float %4756, %4715
  %4759 = extractvalue %dx.types.CBufRet.f32 %4750, 2
  %4760 = extractvalue %dx.types.CBufRet.f32 %4750, 3
  %4761 = fsub fast float %4759, %4718
  %4762 = fsub fast float %4760, %4719
  %4763 = fmul fast float %4761, %4732
  %4764 = fmul fast float %4762, %4732
  %4765 = fadd fast float %4763, %4718
  %4766 = fadd fast float %4764, %4719
  %4767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4768 = extractvalue %dx.types.CBufRet.f32 %4767, 0
  %4769 = fmul fast float %4768, %4746
  %4770 = fmul fast float %4768, %4747
  %4771 = fmul fast float %4768, %4748
  %4772 = fmul fast float %4768, %4749
  %4773 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4774 = extractvalue %dx.types.CBufRet.f32 %4773, 0
  %4775 = fmul fast float %4774, %4757
  %4776 = fmul fast float %4774, %4758
  %4777 = fadd fast float %4775, %4769
  %4778 = fadd fast float %4776, %4771
  %4779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4780 = extractvalue %dx.types.CBufRet.f32 %4779, 0
  %4781 = fmul fast float %4780, %4765
  %4782 = fmul fast float %4780, %4766
  %4783 = fadd fast float %4777, %4781
  %4784 = fadd fast float %4778, %4782
  %4785 = extractvalue %dx.types.CBufRet.f32 %4767, 1
  %4786 = fmul fast float %4785, %4746
  %4787 = fmul fast float %4785, %4747
  %4788 = fmul fast float %4785, %4748
  %4789 = fmul fast float %4785, %4749
  %4790 = extractvalue %dx.types.CBufRet.f32 %4773, 1
  %4791 = fmul fast float %4790, %4757
  %4792 = fmul fast float %4790, %4758
  %4793 = fadd fast float %4791, %4786
  %4794 = fadd fast float %4792, %4788
  %4795 = extractvalue %dx.types.CBufRet.f32 %4779, 1
  %4796 = fmul fast float %4795, %4765
  %4797 = fmul fast float %4795, %4766
  %4798 = fadd fast float %4793, %4796
  %4799 = fadd fast float %4794, %4797
  %4800 = extractvalue %dx.types.CBufRet.f32 %4767, 2
  %4801 = fmul fast float %4800, %4746
  %4802 = fmul fast float %4800, %4747
  %4803 = fmul fast float %4800, %4748
  %4804 = fmul fast float %4800, %4749
  %4805 = extractvalue %dx.types.CBufRet.f32 %4773, 2
  %4806 = fmul fast float %4805, %4757
  %4807 = fmul fast float %4805, %4758
  %4808 = fadd fast float %4806, %4801
  %4809 = fadd fast float %4807, %4803
  %4810 = extractvalue %dx.types.CBufRet.f32 %4779, 2
  %4811 = fmul fast float %4810, %4765
  %4812 = fmul fast float %4810, %4766
  %4813 = fadd fast float %4808, %4811
  %4814 = fadd fast float %4809, %4812
  %4815 = fmul fast float %4802, %4802
  %4816 = fmul fast float %4814, %4814
  %4817 = fmul fast float %4804, %4804
  %4818 = fadd fast float %4817, %4815
  %4819 = fadd fast float %4818, %4816
  %4820 = call float @dx.op.unary.f32(i32 24, float %4819)  ; Sqrt(value)
  %4821 = fcmp fast ugt float %4820, 0.000000e+00
  br i1 %4821, label %4822, label %4837

; <label>:4822                                    ; preds = %4518
  %4823 = fsub fast float -0.000000e+00, %4804
  %4824 = fdiv fast float %4823, %4820
  %4825 = fsub fast float -0.000000e+00, %4802
  %4826 = fdiv fast float %4825, %4820
  %4827 = fdiv fast float %4814, %4820
  %4828 = fmul fast float %4813, 0x3FE279A760000000
  %4829 = fmul fast float %4826, %4802
  %4830 = fmul fast float %4827, %4814
  %4831 = fmul fast float %4824, %4804
  %4832 = fadd fast float %4829, %4831
  %4833 = fsub fast float %4832, %4830
  %4834 = call float @dx.op.unary.f32(i32 6, float %4833)  ; FAbs(value)
  %4835 = fadd fast float %4834, 0x3DDB7CDFE0000000
  %4836 = fdiv fast float %4828, %4835
  br label %4837

; <label>:4837                                    ; preds = %4822, %4518
  %4838 = phi float [ %4836, %4822 ], [ 1.000000e+00, %4518 ]
  %4839 = fmul fast float %4787, %4787
  %4840 = fmul fast float %4799, %4799
  %4841 = fmul fast float %4789, %4789
  %4842 = fadd fast float %4841, %4839
  %4843 = fadd fast float %4842, %4840
  %4844 = call float @dx.op.unary.f32(i32 24, float %4843)  ; Sqrt(value)
  %4845 = fcmp fast ugt float %4844, 0.000000e+00
  br i1 %4845, label %4846, label %4861

; <label>:4846                                    ; preds = %4837
  %4847 = fsub fast float -0.000000e+00, %4789
  %4848 = fdiv fast float %4847, %4844
  %4849 = fsub fast float -0.000000e+00, %4787
  %4850 = fdiv fast float %4849, %4844
  %4851 = fdiv fast float %4799, %4844
  %4852 = fmul fast float %4798, 0x3FE279A760000000
  %4853 = fmul fast float %4850, %4787
  %4854 = fmul fast float %4851, %4799
  %4855 = fmul fast float %4848, %4789
  %4856 = fadd fast float %4853, %4855
  %4857 = fsub fast float %4856, %4854
  %4858 = call float @dx.op.unary.f32(i32 6, float %4857)  ; FAbs(value)
  %4859 = fadd fast float %4858, 0x3DDB7CDFE0000000
  %4860 = fdiv fast float %4852, %4859
  br label %4861

; <label>:4861                                    ; preds = %4846, %4837
  %4862 = phi float [ %4860, %4846 ], [ 1.000000e+00, %4837 ]
  %4863 = call float @dx.op.binary.f32(i32 36, float %4862, float %4838)  ; FMin(a,b)
  %4864 = fmul fast float %4770, %4770
  %4865 = fmul fast float %4784, %4784
  %4866 = fmul fast float %4772, %4772
  %4867 = fadd fast float %4866, %4864
  %4868 = fadd fast float %4867, %4865
  %4869 = call float @dx.op.unary.f32(i32 24, float %4868)  ; Sqrt(value)
  %4870 = fcmp fast ugt float %4869, 0.000000e+00
  br i1 %4870, label %4871, label %4886

; <label>:4871                                    ; preds = %4861
  %4872 = fsub fast float -0.000000e+00, %4772
  %4873 = fdiv fast float %4872, %4869
  %4874 = fsub fast float -0.000000e+00, %4770
  %4875 = fdiv fast float %4874, %4869
  %4876 = fdiv fast float %4784, %4869
  %4877 = fmul fast float %4783, 0x3FE279A760000000
  %4878 = fmul fast float %4875, %4770
  %4879 = fmul fast float %4876, %4784
  %4880 = fmul fast float %4873, %4772
  %4881 = fadd fast float %4878, %4880
  %4882 = fsub fast float %4881, %4879
  %4883 = call float @dx.op.unary.f32(i32 6, float %4882)  ; FAbs(value)
  %4884 = fadd fast float %4883, 0x3DDB7CDFE0000000
  %4885 = fdiv fast float %4877, %4884
  br label %4886

; <label>:4886                                    ; preds = %4871, %4861
  %4887 = phi float [ %4885, %4871 ], [ 1.000000e+00, %4861 ]
  %4888 = call float @dx.op.binary.f32(i32 36, float %4887, float %4863)  ; FMin(a,b)
  %4889 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4890 = fcmp fast olt float %4889, 1.000000e+00
  br i1 %4890, label %4891, label %4901

; <label>:4891                                    ; preds = %4886
  %4892 = fmul fast float %4889, %4770
  %4893 = fmul fast float %4889, %4784
  %4894 = fmul fast float %4889, %4772
  %4895 = fmul fast float %4889, %4787
  %4896 = fmul fast float %4889, %4799
  %4897 = fmul fast float %4889, %4789
  %4898 = fmul fast float %4889, %4802
  %4899 = fmul fast float %4889, %4814
  %4900 = fmul fast float %4889, %4804
  br label %4901

; <label>:4901                                    ; preds = %4891, %4886
  %4902 = phi float [ %4898, %4891 ], [ %4802, %4886 ]
  %4903 = phi float [ %4899, %4891 ], [ %4814, %4886 ]
  %4904 = phi float [ %4900, %4891 ], [ %4804, %4886 ]
  %4905 = phi float [ %4895, %4891 ], [ %4787, %4886 ]
  %4906 = phi float [ %4896, %4891 ], [ %4799, %4886 ]
  %4907 = phi float [ %4897, %4891 ], [ %4789, %4886 ]
  %4908 = phi float [ %4892, %4891 ], [ %4770, %4886 ]
  %4909 = phi float [ %4893, %4891 ], [ %4784, %4886 ]
  %4910 = phi float [ %4894, %4891 ], [ %4772, %4886 ]
  %4911 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4783)  ; FMax(a,b)
  %4912 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4798)  ; FMax(a,b)
  %4913 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4813)  ; FMax(a,b)
  %4914 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4915 = extractvalue %dx.types.CBufRet.f32 %4914, 0
  %4916 = fcmp fast ogt float %4915, 0.000000e+00
  %4917 = fcmp fast oge float %4571, 0.000000e+00
  %4918 = and i1 %4917, %4916
  %4919 = fcmp fast ole float %4571, 1.000000e+00
  %4920 = and i1 %4919, %4918
  %4921 = fcmp fast oge float %4572, 0.000000e+00
  %4922 = and i1 %4921, %4920
  %4923 = fcmp fast ole float %4572, 1.000000e+00
  %4924 = and i1 %4923, %4922
  br i1 %4924, label %4925, label %5070, !dx.controlflow.hints !75

; <label>:4925                                    ; preds = %4901
  %4926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4927 = extractvalue %dx.types.CBufRet.f32 %4926, 2
  %4928 = extractvalue %dx.types.CBufRet.f32 %4926, 3
  %4929 = fmul fast float %4927, %4571
  %4930 = fmul fast float %4928, %4572
  %4931 = call float @dx.op.unary.f32(i32 27, float %4929)  ; Round_ni(value)
  %4932 = call float @dx.op.unary.f32(i32 27, float %4930)  ; Round_ni(value)
  %4933 = fptosi float %4931 to i32
  %4934 = fptosi float %4932 to i32
  %4935 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4933, i32 %4934, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4936 = extractvalue %dx.types.ResRet.i32 %4935, 0
  %4937 = and i32 %4936, 65535
  %4938 = lshr i32 %4936, 16
  %4939 = icmp eq i32 %4937, 65535
  br i1 %4939, label %4976, label %4940

; <label>:4940                                    ; preds = %4925
  %4941 = extractvalue %dx.types.CBufRet.f32 %4914, 1
  %4942 = extractvalue %dx.types.CBufRet.f32 %4926, 0
  %4943 = extractvalue %dx.types.CBufRet.f32 %4926, 1
  %4944 = fmul fast float %4942, %4571
  %4945 = fmul fast float %4943, %4572
  %4946 = fmul fast float %4944, 1.250000e-01
  %4947 = fmul fast float %4945, 1.250000e-01
  %4948 = call float @dx.op.unary.f32(i32 27, float %4946)  ; Round_ni(value)
  %4949 = call float @dx.op.unary.f32(i32 27, float %4947)  ; Round_ni(value)
  %4950 = fmul fast float %4948, 8.000000e+00
  %4951 = fmul fast float %4949, 8.000000e+00
  %4952 = and i32 %4936, 255
  %4953 = lshr i32 %4936, 8
  %4954 = and i32 %4953, 255
  %4955 = mul nuw nsw i32 %4952, 9
  %4956 = uitofp i32 %4955 to float
  %4957 = mul nuw nsw i32 %4954, 9
  %4958 = uitofp i32 %4957 to float
  %4959 = fadd fast float %4956, 5.000000e-01
  %4960 = fadd fast float %4959, %4944
  %4961 = fsub fast float %4960, %4950
  %4962 = fadd fast float %4958, 5.000000e-01
  %4963 = fadd fast float %4962, %4945
  %4964 = fsub fast float %4963, %4951
  %4965 = fdiv fast float %4961, %4915
  %4966 = fdiv fast float %4964, %4941
  %4967 = fmul fast float %4599, 4.375000e-01
  %4968 = fadd fast float %4967, 3.125000e-02
  %4969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %4965, float %4966, float %4968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4970 = extractvalue %dx.types.ResRet.f32 %4969, 0
  %4971 = extractvalue %dx.types.ResRet.f32 %4969, 1
  %4972 = extractvalue %dx.types.ResRet.f32 %4969, 2
  %4973 = fadd fast float %4970, %4911
  %4974 = fadd fast float %4971, %4912
  %4975 = fadd fast float %4972, %4913
  br label %4976

; <label>:4976                                    ; preds = %4940, %4925
  %4977 = phi float [ %4975, %4940 ], [ %4913, %4925 ]
  %4978 = phi float [ %4974, %4940 ], [ %4912, %4925 ]
  %4979 = phi float [ %4973, %4940 ], [ %4911, %4925 ]
  %4980 = icmp eq i32 %4938, 65535
  br i1 %4980, label %5070, label %4981

; <label>:4981                                    ; preds = %4976
  %4982 = extractvalue %dx.types.CBufRet.f32 %4914, 1
  %4983 = extractvalue %dx.types.CBufRet.f32 %4926, 0
  %4984 = extractvalue %dx.types.CBufRet.f32 %4926, 1
  %4985 = fmul fast float %4983, %4571
  %4986 = fmul fast float %4984, %4572
  %4987 = fmul fast float %4985, 1.250000e-01
  %4988 = fmul fast float %4986, 1.250000e-01
  %4989 = call float @dx.op.unary.f32(i32 27, float %4987)  ; Round_ni(value)
  %4990 = call float @dx.op.unary.f32(i32 27, float %4988)  ; Round_ni(value)
  %4991 = fmul fast float %4989, 8.000000e+00
  %4992 = fmul fast float %4990, 8.000000e+00
  %4993 = fsub fast float %4985, %4991
  %4994 = fsub fast float %4986, %4992
  %4995 = fadd fast float %4993, 5.000000e-01
  %4996 = fadd fast float %4994, 5.000000e-01
  %4997 = and i32 %4938, 255
  %4998 = lshr i32 %4936, 24
  %4999 = mul nuw nsw i32 %4997, 9
  %5000 = uitofp i32 %4999 to float
  %5001 = mul nuw nsw i32 %4998, 9
  %5002 = uitofp i32 %5001 to float
  %5003 = fadd fast float %4995, %5000
  %5004 = fadd fast float %4996, %5002
  %5005 = fdiv fast float %5003, %4915
  %5006 = fdiv fast float %5004, %4982
  %5007 = fmul fast float %4599, 4.375000e-01
  %5008 = fadd fast float %5007, 3.125000e-02
  %5009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5005, float %5006, float %5008, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5010 = extractvalue %dx.types.ResRet.f32 %5009, 0
  %5011 = extractvalue %dx.types.ResRet.f32 %5009, 1
  %5012 = extractvalue %dx.types.ResRet.f32 %5009, 2
  %5013 = fadd fast float %5007, 5.312500e-01
  %5014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5005, float %5006, float %5013, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5015 = extractvalue %dx.types.ResRet.f32 %5014, 0
  %5016 = extractvalue %dx.types.ResRet.f32 %5014, 1
  %5017 = extractvalue %dx.types.ResRet.f32 %5014, 2
  %5018 = fmul fast float %5015, 2.000000e+00
  %5019 = fmul fast float %5016, 2.000000e+00
  %5020 = fmul fast float %5017, 2.000000e+00
  %5021 = fadd fast float %5018, -1.000000e+00
  %5022 = fadd fast float %5019, -1.000000e+00
  %5023 = fadd fast float %5020, -1.000000e+00
  %5024 = fmul fast float %5021, %5021
  %5025 = fmul fast float %5022, %5022
  %5026 = fadd fast float %5024, %5025
  %5027 = fmul fast float %5023, %5023
  %5028 = fadd fast float %5026, %5027
  %5029 = call float @dx.op.unary.f32(i32 24, float %5028)  ; Sqrt(value)
  %5030 = fcmp fast ogt float %5029, 0.000000e+00
  br i1 %5030, label %5031, label %5035

; <label>:5031                                    ; preds = %4981
  %5032 = fdiv fast float %5021, %5029
  %5033 = fdiv fast float %5022, %5029
  %5034 = fdiv fast float %5023, %5029
  br label %5035

; <label>:5035                                    ; preds = %5031, %4981
  %5036 = phi float [ %5032, %5031 ], [ 0.000000e+00, %4981 ]
  %5037 = phi float [ %5033, %5031 ], [ 0.000000e+00, %4981 ]
  %5038 = phi float [ %5034, %5031 ], [ 0.000000e+00, %4981 ]
  %5039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5040 = extractvalue %dx.types.CBufRet.f32 %5039, 0
  %5041 = extractvalue %dx.types.CBufRet.f32 %5039, 1
  %5042 = fsub fast float %4556, %5040
  %5043 = fsub fast float %4557, %5041
  %5044 = fmul fast float %5042, %5042
  %5045 = fmul fast float %5043, %5043
  %5046 = fadd fast float %5044, %5045
  %5047 = call float @dx.op.unary.f32(i32 24, float %5046)  ; Sqrt(value)
  %5048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %5049 = extractvalue %dx.types.CBufRet.f32 %5048, 0
  %5050 = extractvalue %dx.types.CBufRet.f32 %5048, 1
  %5051 = fsub fast float %5047, %5049
  %5052 = fdiv fast float %5051, %5050
  %5053 = call float @dx.op.unary.f32(i32 7, float %5052)  ; Saturate(value)
  %5054 = fmul fast float %5053, 2.000000e+00
  %5055 = fsub fast float 3.000000e+00, %5054
  %5056 = fmul fast float %5053, %5053
  %5057 = fmul fast float %5056, %5055
  %5058 = call float @dx.op.dot3.f32(i32 55, float %5036, float %5037, float %5038, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %5059 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5058)  ; FMax(a,b)
  %5060 = fmul fast float %5059, 0x400C5BF8A0000000
  %5061 = fmul fast float %5057, %5010
  %5062 = fmul fast float %5061, %5060
  %5063 = fadd fast float %5062, %4979
  %5064 = fmul fast float %5057, %5011
  %5065 = fmul fast float %5064, %5060
  %5066 = fadd fast float %5065, %4978
  %5067 = fmul fast float %5057, %5012
  %5068 = fmul fast float %5067, %5060
  %5069 = fadd fast float %5068, %4977
  br label %5070

; <label>:5070                                    ; preds = %5035, %4976, %4901
  %5071 = phi float [ %5069, %5035 ], [ %4977, %4976 ], [ %4913, %4901 ]
  %5072 = phi float [ %5066, %5035 ], [ %4978, %4976 ], [ %4912, %4901 ]
  %5073 = phi float [ %5063, %5035 ], [ %4979, %4976 ], [ %4911, %4901 ]
  %5074 = fcmp fast ogt float %4558, %4595
  %5075 = and i1 %4917, %5074
  %5076 = and i1 %4919, %5075
  %5077 = and i1 %4921, %5076
  %5078 = and i1 %4923, %5077
  br i1 %5078, label %5079, label %5136, !dx.controlflow.hints !76

; <label>:5079                                    ; preds = %5070
  %5080 = fmul fast float %4597, 0x3FC24924A0000000
  %5081 = fsub fast float %4558, %4595
  %5082 = fdiv fast float %5081, %5080
  %5083 = call float @dx.op.unary.f32(i32 7, float %5082)  ; Saturate(value)
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 0
  %5086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %5087 = extractvalue %dx.types.CBufRet.f32 %5086, 0
  %5088 = extractvalue %dx.types.CBufRet.f32 %5086, 1
  %5089 = extractvalue %dx.types.CBufRet.f32 %5086, 2
  %5090 = fsub fast float %5085, %5073
  %5091 = fsub fast float %5087, %4908
  %5092 = fsub fast float %5088, %4909
  %5093 = fsub fast float %5089, %4910
  %5094 = fmul fast float %5090, %5083
  %5095 = fmul fast float %5091, %5083
  %5096 = fmul fast float %5092, %5083
  %5097 = fmul fast float %5093, %5083
  %5098 = fadd fast float %5094, %5073
  %5099 = fadd fast float %5095, %4908
  %5100 = fadd fast float %5096, %4909
  %5101 = fadd fast float %5097, %4910
  %5102 = extractvalue %dx.types.CBufRet.f32 %5084, 1
  %5103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %5104 = extractvalue %dx.types.CBufRet.f32 %5103, 0
  %5105 = extractvalue %dx.types.CBufRet.f32 %5103, 1
  %5106 = extractvalue %dx.types.CBufRet.f32 %5103, 2
  %5107 = fsub fast float %5102, %5072
  %5108 = fsub fast float %5104, %4905
  %5109 = fsub fast float %5105, %4906
  %5110 = fsub fast float %5106, %4907
  %5111 = fmul fast float %5107, %5083
  %5112 = fmul fast float %5108, %5083
  %5113 = fmul fast float %5109, %5083
  %5114 = fmul fast float %5110, %5083
  %5115 = fadd fast float %5111, %5072
  %5116 = fadd fast float %5112, %4905
  %5117 = fadd fast float %5113, %4906
  %5118 = fadd fast float %5114, %4907
  %5119 = extractvalue %dx.types.CBufRet.f32 %5084, 2
  %5120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5120, 0
  %5122 = extractvalue %dx.types.CBufRet.f32 %5120, 1
  %5123 = extractvalue %dx.types.CBufRet.f32 %5120, 2
  %5124 = fsub fast float %5119, %5071
  %5125 = fsub fast float %5121, %4902
  %5126 = fsub fast float %5122, %4903
  %5127 = fsub fast float %5123, %4904
  %5128 = fmul fast float %5124, %5083
  %5129 = fmul fast float %5125, %5083
  %5130 = fmul fast float %5126, %5083
  %5131 = fmul fast float %5127, %5083
  %5132 = fadd fast float %5128, %5071
  %5133 = fadd fast float %5129, %4902
  %5134 = fadd fast float %5130, %4903
  %5135 = fadd fast float %5131, %4904
  br label %5136

; <label>:5136                                    ; preds = %5079, %5070
  %5137 = phi float [ %5132, %5079 ], [ %5071, %5070 ]
  %5138 = phi float [ %5133, %5079 ], [ %4902, %5070 ]
  %5139 = phi float [ %5134, %5079 ], [ %4903, %5070 ]
  %5140 = phi float [ %5135, %5079 ], [ %4904, %5070 ]
  %5141 = phi float [ %5115, %5079 ], [ %5072, %5070 ]
  %5142 = phi float [ %5116, %5079 ], [ %4905, %5070 ]
  %5143 = phi float [ %5117, %5079 ], [ %4906, %5070 ]
  %5144 = phi float [ %5118, %5079 ], [ %4907, %5070 ]
  %5145 = phi float [ %5098, %5079 ], [ %5073, %5070 ]
  %5146 = phi float [ %5099, %5079 ], [ %4908, %5070 ]
  %5147 = phi float [ %5100, %5079 ], [ %4909, %5070 ]
  %5148 = phi float [ %5101, %5079 ], [ %4910, %5070 ]
  %5149 = extractvalue %dx.types.CBufRet.f32 %4720, 3
  %5150 = fmul fast float %5149, %5145
  %5151 = fmul fast float %5149, %5141
  %5152 = fmul fast float %5149, %5137
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 3
  %5155 = fmul fast float %5150, %5154
  %5156 = fmul fast float %5151, %5154
  %5157 = fmul fast float %5152, %5154
  %5158 = fmul fast float %5146, 1.500000e+00
  %5159 = fmul fast float %5158, %5149
  %5160 = fmul fast float %5159, %5154
  %5161 = fmul fast float %5147, 1.500000e+00
  %5162 = fmul fast float %5161, %5149
  %5163 = fmul fast float %5162, %5154
  %5164 = fmul fast float %5148, 1.500000e+00
  %5165 = fmul fast float %5164, %5149
  %5166 = fmul fast float %5165, %5154
  %5167 = fmul fast float %5142, 1.500000e+00
  %5168 = fmul fast float %5167, %5149
  %5169 = fmul fast float %5168, %5154
  %5170 = fmul fast float %5143, 1.500000e+00
  %5171 = fmul fast float %5170, %5149
  %5172 = fmul fast float %5171, %5154
  %5173 = fmul fast float %5144, 1.500000e+00
  %5174 = fmul fast float %5173, %5149
  %5175 = fmul fast float %5174, %5154
  %5176 = fmul fast float %5138, 1.500000e+00
  %5177 = fmul fast float %5176, %5149
  %5178 = fmul fast float %5177, %5154
  %5179 = fmul fast float %5139, 1.500000e+00
  %5180 = fmul fast float %5179, %5149
  %5181 = fmul fast float %5180, %5154
  %5182 = fmul fast float %5140, 1.500000e+00
  %5183 = fmul fast float %5182, %5149
  %5184 = fmul fast float %5183, %5154
  %5185 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5155)  ; FMax(a,b)
  %5186 = call float @dx.op.dot3.f32(i32 55, float %5160, float %5163, float %5166, float %5160, float %5163, float %5166)  ; Dot3(ax,ay,az,bx,by,bz)
  %5187 = fcmp fast oeq float %5186, 0.000000e+00
  %5188 = fcmp fast oeq float %5185, 0.000000e+00
  %5189 = or i1 %5188, %5187
  br i1 %5189, label %5219, label %5190

; <label>:5190                                    ; preds = %5136
  %5191 = fsub fast float -0.000000e+00, %5166
  %5192 = fsub fast float -0.000000e+00, %5160
  %5193 = call float @dx.op.unary.f32(i32 24, float %5186)  ; Sqrt(value)
  %5194 = fdiv fast float %5193, %5185
  %5195 = fcmp fast ogt float %5194, 0x3FFB6F8900000000
  %5196 = select i1 %5195, float 0x3FFB6F8900000000, float %5194
  %5197 = fmul fast float %5196, 0x3FE8A23460000000
  %5198 = call float @dx.op.unary.f32(i32 7, float %5197)  ; Saturate(value)
  %5199 = call float @dx.op.binary.f32(i32 35, float %5196, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5200 = fmul fast float %5198, %5185
  %5201 = fmul fast float %5199, 0x3FF279A740000000
  %5202 = fadd fast float %5201, -1.000000e+00
  %5203 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %5163, float %5191, float %5192, float %5163)  ; Dot3(ax,ay,az,bx,by,bz)
  %5204 = call float @dx.op.unary.f32(i32 25, float %5203)  ; Rsqrt(value)
  %5205 = fmul fast float %5204, %5191
  %5206 = fmul fast float %5204, %5192
  %5207 = fmul fast float %5204, %5163
  %5208 = fmul fast float %5202, %5202
  %5209 = fsub fast float 1.000000e+00, %5208
  %5210 = fmul fast float %5199, 0x40005F8BE0000000
  %5211 = fsub fast float 0x400C5BF8A0000000, %5210
  %5212 = fdiv fast float %5200, %5211
  %5213 = fmul fast float %5212, 0x3FEE31C3C0000000
  %5214 = fmul fast float %5213, %5209
  %5215 = fmul fast float %5199, 0x3FDACB7480000000
  %5216 = fadd fast float %5215, 0xBFD7347680000000
  %5217 = fmul fast float %5216, %5212
  %5218 = fmul fast float %5217, %5209
  br label %5219

; <label>:5219                                    ; preds = %5190, %5136
  %5220 = phi float [ %5205, %5190 ], [ 0.000000e+00, %5136 ]
  %5221 = phi float [ %5206, %5190 ], [ 0.000000e+00, %5136 ]
  %5222 = phi float [ %5207, %5190 ], [ 0.000000e+00, %5136 ]
  %5223 = phi float [ %5214, %5190 ], [ 0.000000e+00, %5136 ]
  %5224 = phi float [ %5218, %5190 ], [ 0.000000e+00, %5136 ]
  %5225 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %5226 = fmul fast float %5225, %5225
  %5227 = fmul fast float %5226, 0x3FEE471020000000
  %5228 = fadd fast float %5227, 0xBFD42F6020000000
  %5229 = fmul fast float %5185, 0x3FD20DD760000000
  %5230 = fmul fast float %5228, %5224
  %5231 = fmul fast float %5223, 0x3FDF454380000000
  %5232 = fmul fast float %5231, %5225
  %5233 = fadd fast float %5232, %5229
  %5234 = fadd fast float %5233, %5230
  %5235 = call float @dx.op.dot3.f32(i32 55, float %5220, float %5221, float %5222, float %4544, float %4545, float %4546)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = fmul fast float %5235, 0x3FDF454380000000
  %5237 = fmul fast float %5235, %5235
  %5238 = fmul fast float %5237, 0x3FEE471020000000
  %5239 = fadd fast float %5238, 0xBFD42F6020000000
  %5240 = call float @dx.op.dot3.f32(i32 55, float %5185, float %5223, float %5224, float 0x3FD20DD760000000, float %5236, float %5239)  ; Dot3(ax,ay,az,bx,by,bz)
  %5241 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5156)  ; FMax(a,b)
  %5242 = call float @dx.op.dot3.f32(i32 55, float %5169, float %5172, float %5175, float %5169, float %5172, float %5175)  ; Dot3(ax,ay,az,bx,by,bz)
  %5243 = fcmp fast oeq float %5242, 0.000000e+00
  %5244 = fcmp fast oeq float %5241, 0.000000e+00
  %5245 = or i1 %5244, %5243
  br i1 %5245, label %5275, label %5246

; <label>:5246                                    ; preds = %5219
  %5247 = fsub fast float -0.000000e+00, %5175
  %5248 = fsub fast float -0.000000e+00, %5169
  %5249 = call float @dx.op.unary.f32(i32 24, float %5242)  ; Sqrt(value)
  %5250 = fdiv fast float %5249, %5241
  %5251 = fcmp fast ogt float %5250, 0x3FFB6F8900000000
  %5252 = select i1 %5251, float 0x3FFB6F8900000000, float %5250
  %5253 = fmul fast float %5252, 0x3FE8A23460000000
  %5254 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5255 = call float @dx.op.binary.f32(i32 35, float %5252, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5256 = fmul fast float %5254, %5241
  %5257 = fmul fast float %5255, 0x3FF279A740000000
  %5258 = fadd fast float %5257, -1.000000e+00
  %5259 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5248, float %5172, float %5247, float %5248, float %5172)  ; Dot3(ax,ay,az,bx,by,bz)
  %5260 = call float @dx.op.unary.f32(i32 25, float %5259)  ; Rsqrt(value)
  %5261 = fmul fast float %5260, %5247
  %5262 = fmul fast float %5260, %5248
  %5263 = fmul fast float %5260, %5172
  %5264 = fmul fast float %5258, %5258
  %5265 = fsub fast float 1.000000e+00, %5264
  %5266 = fmul fast float %5255, 0x40005F8BE0000000
  %5267 = fsub fast float 0x400C5BF8A0000000, %5266
  %5268 = fdiv fast float %5256, %5267
  %5269 = fmul fast float %5268, 0x3FEE31C3C0000000
  %5270 = fmul fast float %5269, %5265
  %5271 = fmul fast float %5255, 0x3FDACB7480000000
  %5272 = fadd fast float %5271, 0xBFD7347680000000
  %5273 = fmul fast float %5272, %5268
  %5274 = fmul fast float %5273, %5265
  br label %5275

; <label>:5275                                    ; preds = %5246, %5219
  %5276 = phi float [ %5261, %5246 ], [ 0.000000e+00, %5219 ]
  %5277 = phi float [ %5262, %5246 ], [ 0.000000e+00, %5219 ]
  %5278 = phi float [ %5263, %5246 ], [ 0.000000e+00, %5219 ]
  %5279 = phi float [ %5270, %5246 ], [ 0.000000e+00, %5219 ]
  %5280 = phi float [ %5274, %5246 ], [ 0.000000e+00, %5219 ]
  %5281 = call float @dx.op.dot3.f32(i32 55, float %5276, float %5277, float %5278, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %5282 = fmul fast float %5281, %5281
  %5283 = fmul fast float %5282, 0x3FEE471020000000
  %5284 = fadd fast float %5283, 0xBFD42F6020000000
  %5285 = fmul fast float %5241, 0x3FD20DD760000000
  %5286 = fmul fast float %5284, %5280
  %5287 = fmul fast float %5279, 0x3FDF454380000000
  %5288 = fmul fast float %5287, %5281
  %5289 = fadd fast float %5288, %5285
  %5290 = fadd fast float %5289, %5286
  %5291 = call float @dx.op.dot3.f32(i32 55, float %5276, float %5277, float %5278, float %4544, float %4545, float %4546)  ; Dot3(ax,ay,az,bx,by,bz)
  %5292 = fmul fast float %5291, 0x3FDF454380000000
  %5293 = fmul fast float %5291, %5291
  %5294 = fmul fast float %5293, 0x3FEE471020000000
  %5295 = fadd fast float %5294, 0xBFD42F6020000000
  %5296 = call float @dx.op.dot3.f32(i32 55, float %5241, float %5279, float %5280, float 0x3FD20DD760000000, float %5292, float %5295)  ; Dot3(ax,ay,az,bx,by,bz)
  %5297 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5157)  ; FMax(a,b)
  %5298 = call float @dx.op.dot3.f32(i32 55, float %5178, float %5181, float %5184, float %5178, float %5181, float %5184)  ; Dot3(ax,ay,az,bx,by,bz)
  %5299 = fcmp fast oeq float %5298, 0.000000e+00
  %5300 = fcmp fast oeq float %5297, 0.000000e+00
  %5301 = or i1 %5300, %5299
  br i1 %5301, label %5331, label %5302

; <label>:5302                                    ; preds = %5275
  %5303 = fsub fast float -0.000000e+00, %5184
  %5304 = fsub fast float -0.000000e+00, %5178
  %5305 = call float @dx.op.unary.f32(i32 24, float %5298)  ; Sqrt(value)
  %5306 = fdiv fast float %5305, %5297
  %5307 = fcmp fast ogt float %5306, 0x3FFB6F8900000000
  %5308 = select i1 %5307, float 0x3FFB6F8900000000, float %5306
  %5309 = fmul fast float %5308, 0x3FE8A23460000000
  %5310 = call float @dx.op.unary.f32(i32 7, float %5309)  ; Saturate(value)
  %5311 = call float @dx.op.binary.f32(i32 35, float %5308, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5312 = fmul fast float %5310, %5297
  %5313 = fmul fast float %5311, 0x3FF279A740000000
  %5314 = fadd fast float %5313, -1.000000e+00
  %5315 = call float @dx.op.dot3.f32(i32 55, float %5303, float %5304, float %5181, float %5303, float %5304, float %5181)  ; Dot3(ax,ay,az,bx,by,bz)
  %5316 = call float @dx.op.unary.f32(i32 25, float %5315)  ; Rsqrt(value)
  %5317 = fmul fast float %5316, %5303
  %5318 = fmul fast float %5316, %5304
  %5319 = fmul fast float %5316, %5181
  %5320 = fmul fast float %5314, %5314
  %5321 = fsub fast float 1.000000e+00, %5320
  %5322 = fmul fast float %5311, 0x40005F8BE0000000
  %5323 = fsub fast float 0x400C5BF8A0000000, %5322
  %5324 = fdiv fast float %5312, %5323
  %5325 = fmul fast float %5324, 0x3FEE31C3C0000000
  %5326 = fmul fast float %5325, %5321
  %5327 = fmul fast float %5311, 0x3FDACB7480000000
  %5328 = fadd fast float %5327, 0xBFD7347680000000
  %5329 = fmul fast float %5328, %5324
  %5330 = fmul fast float %5329, %5321
  br label %5331

; <label>:5331                                    ; preds = %5302, %5275
  %5332 = phi float [ %5317, %5302 ], [ 0.000000e+00, %5275 ]
  %5333 = phi float [ %5318, %5302 ], [ 0.000000e+00, %5275 ]
  %5334 = phi float [ %5319, %5302 ], [ 0.000000e+00, %5275 ]
  %5335 = phi float [ %5326, %5302 ], [ 0.000000e+00, %5275 ]
  %5336 = phi float [ %5330, %5302 ], [ 0.000000e+00, %5275 ]
  %5337 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %5338 = fmul fast float %5337, %5337
  %5339 = fmul fast float %5338, 0x3FEE471020000000
  %5340 = fadd fast float %5339, 0xBFD42F6020000000
  %5341 = fmul fast float %5297, 0x3FD20DD760000000
  %5342 = fmul fast float %5340, %5336
  %5343 = fmul fast float %5335, 0x3FDF454380000000
  %5344 = fmul fast float %5343, %5337
  %5345 = fadd fast float %5344, %5341
  %5346 = fadd fast float %5345, %5342
  %5347 = call float @dx.op.dot3.f32(i32 55, float %5332, float %5333, float %5334, float %4544, float %4545, float %4546)  ; Dot3(ax,ay,az,bx,by,bz)
  %5348 = fmul fast float %5347, 0x3FDF454380000000
  %5349 = fmul fast float %5347, %5347
  %5350 = fmul fast float %5349, 0x3FEE471020000000
  %5351 = fadd fast float %5350, 0xBFD42F6020000000
  %5352 = call float @dx.op.dot3.f32(i32 55, float %5297, float %5335, float %5336, float 0x3FD20DD760000000, float %5348, float %5351)  ; Dot3(ax,ay,az,bx,by,bz)
  %5353 = call float @dx.op.binary.f32(i32 35, float %5234, float 0.000000e+00)  ; FMax(a,b)
  %5354 = call float @dx.op.binary.f32(i32 35, float %5290, float 0.000000e+00)  ; FMax(a,b)
  %5355 = call float @dx.op.binary.f32(i32 35, float %5346, float 0.000000e+00)  ; FMax(a,b)
  %5356 = call float @dx.op.binary.f32(i32 35, float %5240, float 0.000000e+00)  ; FMax(a,b)
  %5357 = call float @dx.op.binary.f32(i32 35, float %5296, float 0.000000e+00)  ; FMax(a,b)
  %5358 = call float @dx.op.binary.f32(i32 35, float %5352, float 0.000000e+00)  ; FMax(a,b)
  %5359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5360 = extractvalue %dx.types.CBufRet.f32 %5359, 0
  %5361 = call float @dx.op.binary.f32(i32 36, float %4528, float %5360)  ; FMin(a,b)
  %5362 = fsub fast float 1.000000e+00, %4547
  %5363 = fmul fast float %5361, %5362
  %5364 = fsub fast float 1.000000e+00, %5363
  %5365 = bitcast float %5364 to i32
  %5366 = sub nsw i32 2129859010, %5365
  %5367 = bitcast i32 %5366 to float
  %5368 = call float @dx.op.binary.f32(i32 36, float %4529, float %5360)  ; FMin(a,b)
  %5369 = fmul fast float %5368, %5362
  %5370 = fsub fast float 1.000000e+00, %5369
  %5371 = bitcast float %5370 to i32
  %5372 = sub nsw i32 2129859010, %5371
  %5373 = bitcast i32 %5372 to float
  %5374 = call float @dx.op.binary.f32(i32 36, float %4530, float %5360)  ; FMin(a,b)
  %5375 = fmul fast float %5374, %5362
  %5376 = fsub fast float 1.000000e+00, %5375
  %5377 = bitcast float %5376 to i32
  %5378 = sub nsw i32 2129859010, %5377
  %5379 = bitcast i32 %5378 to float
  %5380 = fmul fast float %5353, %4547
  %5381 = fmul fast float %5380, %5367
  %5382 = fmul fast float %5354, %4547
  %5383 = fmul fast float %5382, %5373
  %5384 = fmul fast float %5355, %4547
  %5385 = fmul fast float %5384, %5379
  %5386 = call float @dx.op.binary.f32(i32 36, float %4525, float %5360)  ; FMin(a,b)
  %5387 = fmul fast float %5386, %5362
  %5388 = fsub fast float 1.000000e+00, %5387
  %5389 = bitcast float %5388 to i32
  %5390 = sub nsw i32 2129859010, %5389
  %5391 = bitcast i32 %5390 to float
  %5392 = call float @dx.op.binary.f32(i32 36, float %4526, float %5360)  ; FMin(a,b)
  %5393 = fmul fast float %5392, %5362
  %5394 = fsub fast float 1.000000e+00, %5393
  %5395 = bitcast float %5394 to i32
  %5396 = sub nsw i32 2129859010, %5395
  %5397 = bitcast i32 %5396 to float
  %5398 = call float @dx.op.binary.f32(i32 36, float %4536, float %5360)  ; FMin(a,b)
  %5399 = fmul fast float %5398, %5362
  %5400 = fsub fast float 1.000000e+00, %5399
  %5401 = bitcast float %5400 to i32
  %5402 = sub nsw i32 2129859010, %5401
  %5403 = bitcast i32 %5402 to float
  %5404 = fmul fast float %5356, %4547
  %5405 = fmul fast float %5404, %5391
  %5406 = fmul fast float %5357, %4547
  %5407 = fmul fast float %5406, %5397
  %5408 = fmul fast float %5358, %4547
  %5409 = fmul fast float %5408, %5403
  %5410 = call float @dx.op.dot3.f32(i32 55, float %5381, float %5383, float %5385, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5411 = select i1 %163, float 0.000000e+00, float %5381
  %5412 = select i1 %163, float %5410, float %5383
  %5413 = select i1 %163, float 0.000000e+00, float %5385
  %5414 = call float @dx.op.dot3.f32(i32 55, float %5405, float %5407, float %5409, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = select i1 %163, float 0.000000e+00, float %5405
  %5416 = select i1 %163, float %5414, float %5407
  %5417 = select i1 %163, float 0.000000e+00, float %5409
  %5418 = fmul fast float %4538, 9.843750e-01
  %5419 = fmul fast float %4534, 9.843750e-01
  %5420 = fadd fast float %5418, 7.812500e-03
  %5421 = fadd fast float %5419, 7.812500e-03
  %5422 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %5420, float %5421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5423 = extractvalue %dx.types.ResRet.f32 %5422, 2
  %5424 = extractvalue %dx.types.ResRet.f32 %5422, 3
  %5425 = fmul fast float %5423, %4525
  %5426 = fmul fast float %5423, %4526
  %5427 = fmul fast float %5423, %4536
  %5428 = fadd fast float %5425, %5424
  %5429 = fadd fast float %5426, %5424
  %5430 = fadd fast float %5427, %5424
  %5431 = fcmp fast ogt float %3923, 0.000000e+00
  br i1 %5431, label %5432, label %5458

; <label>:5432                                    ; preds = %5331
  %5433 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3923, float %4538, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5434 = extractvalue %dx.types.ResRet.f32 %5433, 0
  %5435 = extractvalue %dx.types.ResRet.f32 %5433, 1
  %5436 = extractvalue %dx.types.ResRet.f32 %5433, 2
  %5437 = fadd fast float %5434, -5.000000e-01
  %5438 = fadd fast float %5435, -5.000000e-01
  %5439 = fadd fast float %5436, -5.000000e-01
  %5440 = fsub fast float 1.000000e+00, %4525
  %5441 = fsub fast float 1.000000e+00, %4526
  %5442 = fsub fast float 1.000000e+00, %4536
  %5443 = fmul fast float %4525, 4.000000e+00
  %5444 = fmul fast float %5443, %5440
  %5445 = fmul fast float %5444, %5437
  %5446 = fmul fast float %4526, 4.000000e+00
  %5447 = fmul fast float %5446, %5441
  %5448 = fmul fast float %5447, %5438
  %5449 = fmul fast float %4536, 4.000000e+00
  %5450 = fmul fast float %5449, %5442
  %5451 = fmul fast float %5450, %5439
  %5452 = fadd fast float %5445, %5428
  %5453 = fadd fast float %5448, %5429
  %5454 = fadd fast float %5451, %5430
  %5455 = call float @dx.op.unary.f32(i32 7, float %5452)  ; Saturate(value)
  %5456 = call float @dx.op.unary.f32(i32 7, float %5453)  ; Saturate(value)
  %5457 = call float @dx.op.unary.f32(i32 7, float %5454)  ; Saturate(value)
  br label %5458

; <label>:5458                                    ; preds = %5432, %5331
  %5459 = phi float [ %5455, %5432 ], [ %5428, %5331 ]
  %5460 = phi float [ %5456, %5432 ], [ %5429, %5331 ]
  %5461 = phi float [ %5457, %5432 ], [ %5430, %5331 ]
  %5462 = call float @dx.op.binary.f32(i32 35, float %5460, float %5461)  ; FMax(a,b)
  %5463 = call float @dx.op.binary.f32(i32 35, float %5459, float %5462)  ; FMax(a,b)
  %5464 = fsub fast float 1.000000e+00, %5463
  %5465 = fmul fast float %5464, %5411
  %5466 = fmul fast float %5464, %5412
  %5467 = fmul fast float %5464, %5413
  %5468 = call float @dx.op.dot3.f32(i32 55, float %4528, float %4529, float %4530, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5469 = fcmp fast ogt float %5468, 0x3E7FF19E20000000
  %5470 = fdiv fast float 1.000000e+00, %5468
  %5471 = select i1 %5469, float %5470, float 0.000000e+00
  %5472 = fmul fast float %5471, %4528
  %5473 = fmul fast float %5471, %4529
  %5474 = fmul fast float %5471, %4530
  %5475 = fadd fast float %5472, -1.000000e+00
  %5476 = fadd fast float %5473, -1.000000e+00
  %5477 = fadd fast float %5474, -1.000000e+00
  %5478 = fmul fast float %5475, 5.000000e-01
  %5479 = fmul fast float %5476, 5.000000e-01
  %5480 = fmul fast float %5477, 5.000000e-01
  %5481 = fadd fast float %5478, 1.000000e+00
  %5482 = fadd fast float %5479, 1.000000e+00
  %5483 = fadd fast float %5480, 1.000000e+00
  %5484 = fmul fast float %5459, %5415
  %5485 = fmul fast float %5460, %5416
  %5486 = fmul fast float %5461, %5417
  %5487 = fsub fast float 1.000000e+00, %4538
  %5488 = bitcast float %5487 to i32
  %5489 = sitofp i32 %5488 to float
  %5490 = fmul fast float %5489, 5.000000e+00
  %5491 = fadd fast float %5490, 0xC1EFBF8940000000
  %5492 = fptosi float %5491 to i32
  %5493 = bitcast i32 %5492 to float
  %5494 = fmul fast float %5493, %3924
  %5495 = fmul fast float %5411, %5494
  %5496 = fmul fast float %5495, %5464
  %5497 = fmul fast float %5496, %5481
  %5498 = fmul fast float %5412, %5494
  %5499 = fmul fast float %5498, %5464
  %5500 = fmul fast float %5499, %5482
  %5501 = fmul fast float %5413, %5494
  %5502 = fmul fast float %5501, %5464
  %5503 = fmul fast float %5502, %5483
  %5504 = fmul fast float %5465, %3920
  %5505 = fmul fast float %5466, %3920
  %5506 = fmul fast float %5467, %3920
  %5507 = fadd fast float %5484, %3916
  %5508 = fadd fast float %5507, %5497
  %5509 = fmul fast float %5508, %3920
  %5510 = fadd fast float %5485, %3917
  %5511 = fadd fast float %5510, %5500
  %5512 = fmul fast float %5511, %3920
  %5513 = fadd fast float %5486, %3918
  %5514 = fadd fast float %5513, %5503
  %5515 = fmul fast float %5514, %3920
  %5516 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5517 = extractvalue %dx.types.CBufRet.f32 %5516, 3
  %5518 = fcmp fast oeq float %5517, 0.000000e+00
  br i1 %5518, label %5746, label %5519

; <label>:5519                                    ; preds = %5458
  %5520 = extractvalue %dx.types.CBufRet.f32 %5516, 0
  %5521 = extractvalue %dx.types.CBufRet.f32 %5516, 1
  %5522 = extractvalue %dx.types.CBufRet.f32 %5516, 2
  %5523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5524 = extractvalue %dx.types.CBufRet.f32 %5523, 0
  %5525 = extractvalue %dx.types.CBufRet.f32 %5523, 1
  %5526 = extractvalue %dx.types.CBufRet.f32 %5523, 2
  %5527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5528 = extractvalue %dx.types.CBufRet.f32 %5527, 0
  %5529 = extractvalue %dx.types.CBufRet.f32 %5527, 1
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5524, float %5525, float %5526, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = select i1 %163, float %5528, float %5524
  %5532 = select i1 %163, float %5530, float %5525
  %5533 = select i1 %163, float %5529, float %5526
  %5534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.f32 %5534, 1
  %5536 = fcmp fast une float %5535, 0.000000e+00
  br i1 %5536, label %5537, label %5554

; <label>:5537                                    ; preds = %5519
  %5538 = fptoui float %66 to i32
  %5539 = fptoui float %67 to i32
  %5540 = lshr i32 %5538, 4
  %5541 = lshr i32 %5539, 4
  %5542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.f32 %5542, 0
  %5544 = fptoui float %5543 to i32
  %5545 = add i32 %5544, 15
  %5546 = lshr i32 %5545, 4
  %5547 = mul i32 %5546, %5541
  %5548 = add i32 %5547, %5540
  %5549 = shl i32 %5548, 3
  %5550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5549, i32 undef)  ; BufferLoad(srv,index,wot)
  %5551 = extractvalue %dx.types.ResRet.i32 %5550, 0
  %5552 = and i32 %5551, -268435456
  %5553 = icmp eq i32 %5552, -1342177280
  br i1 %5553, label %5564, label %5554

; <label>:5554                                    ; preds = %5537, %5519
  %5555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5556 = extractvalue %dx.types.CBufRet.f32 %5555, 2
  %5557 = extractvalue %dx.types.CBufRet.f32 %5555, 3
  %5558 = fmul fast float %5556, %66
  %5559 = fmul fast float %5557, %67
  %5560 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %5558, float %5559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5561 = extractvalue %dx.types.ResRet.f32 %5560, 0
  %5562 = extractvalue %dx.types.ResRet.f32 %5560, 1
  %5563 = extractvalue %dx.types.ResRet.f32 %5560, 2
  br label %5564

; <label>:5564                                    ; preds = %5554, %5537
  %5565 = phi float [ %5561, %5554 ], [ 0.000000e+00, %5537 ]
  %5566 = phi float [ %5562, %5554 ], [ 0.000000e+00, %5537 ]
  %5567 = phi float [ %5563, %5554 ], [ 0.000000e+00, %5537 ]
  %5568 = call float @dx.op.binary.f32(i32 36, float %5566, float %5567)  ; FMin(a,b)
  %5569 = call float @dx.op.binary.f32(i32 36, float %5565, float %5568)  ; FMin(a,b)
  %5570 = fcmp fast ogt float %5569, 0.000000e+00
  br i1 %5570, label %5571, label %5746, !dx.controlflow.hints !77

; <label>:5571                                    ; preds = %5564
  %5572 = fmul fast float %5565, %5531
  %5573 = fmul fast float %5566, %5532
  %5574 = fmul fast float %5567, %5533
  %5575 = fsub fast float %5520, %4524
  %5576 = fsub fast float %5521, %4523
  %5577 = fsub fast float %5522, %4522
  %5578 = call float @dx.op.dot3.f32(i32 55, float %5575, float %5576, float %5577, float %5575, float %5576, float %5577)  ; Dot3(ax,ay,az,bx,by,bz)
  %5579 = call float @dx.op.unary.f32(i32 25, float %5578)  ; Rsqrt(value)
  %5580 = fmul fast float %5579, %5575
  %5581 = fmul fast float %5579, %5576
  %5582 = fmul fast float %5579, %5577
  %5583 = call float @dx.op.dot3.f32(i32 55, float %5520, float %5521, float %5522, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %5584 = call float @dx.op.dot3.f32(i32 55, float %4521, float %4520, float %4519, float %5580, float %5581, float %5582)  ; Dot3(ax,ay,az,bx,by,bz)
  %5585 = call float @dx.op.unary.f32(i32 7, float %5583)  ; Saturate(value)
  %5586 = fmul fast float %5585, %5585
  %5587 = fmul fast float %5586, %4551
  %5588 = call float @dx.op.unary.f32(i32 7, float %5587)  ; Saturate(value)
  %5589 = fmul fast float %5588, %5585
  %5590 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float %5580, float %5581, float %5582)  ; Dot3(ax,ay,az,bx,by,bz)
  %5591 = fmul fast float %5590, %5590
  %5592 = call float @dx.op.unary.f32(i32 6, float %5583)  ; FAbs(value)
  %5593 = fsub fast float 1.000000e+00, %4534
  %5594 = call float @dx.op.binary.f32(i32 35, float %5593, float 0x3F847AE140000000)  ; FMax(a,b)
  %5595 = fmul fast float %5594, %5594
  %5596 = fmul fast float %5595, %5595
  %5597 = fsub fast float 1.000000e+00, %5596
  %5598 = fmul fast float %4538, %4538
  %5599 = fmul fast float %5598, %5597
  %5600 = fadd fast float %5599, %5596
  %5601 = bitcast float %5600 to i32
  %5602 = ashr i32 %5601, 1
  %5603 = add nsw i32 %5602, 532487669
  %5604 = bitcast i32 %5603 to float
  %5605 = fadd fast float %5604, %4538
  %5606 = fmul fast float %5596, %5591
  %5607 = fsub fast float 1.000000e+00, %5591
  %5608 = fadd fast float %5607, %5606
  %5609 = fmul fast float %5592, %5592
  %5610 = fmul fast float %5609, %5597
  %5611 = fadd fast float %5610, %5596
  %5612 = bitcast float %5611 to i32
  %5613 = ashr i32 %5612, 1
  %5614 = add nsw i32 %5613, 532487669
  %5615 = bitcast i32 %5614 to float
  %5616 = fadd fast float %5615, %5592
  %5617 = fmul fast float %5608, %5608
  %5618 = fmul fast float %5617, %5605
  %5619 = fmul fast float %5618, %5616
  %5620 = fdiv fast float 0x3FF0A00000000000, %5619
  %5621 = fmul fast float %5620, %5596
  %5622 = call float @dx.op.unary.f32(i32 6, float %5584)  ; FAbs(value)
  %5623 = fsub fast float 1.000000e+00, %5622
  %5624 = bitcast float %5623 to i32
  %5625 = sitofp i32 %5624 to float
  %5626 = fmul fast float %5625, 5.000000e+00
  %5627 = fadd fast float %5626, 0xC1EFBF8940000000
  %5628 = fptosi float %5627 to i32
  %5629 = bitcast i32 %5628 to float
  %5630 = fsub fast float 1.000000e+00, %4525
  %5631 = fsub fast float 1.000000e+00, %4526
  %5632 = fsub fast float 1.000000e+00, %4536
  %5633 = fmul fast float %5629, %5630
  %5634 = fmul fast float %5629, %5631
  %5635 = fmul fast float %5629, %5632
  %5636 = fadd fast float %5633, %4525
  %5637 = fadd fast float %5634, %4526
  %5638 = fadd fast float %5635, %4536
  br i1 %5431, label %5639, label %5662

; <label>:5639                                    ; preds = %5571
  %5640 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3923, float %5622, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5641 = extractvalue %dx.types.ResRet.f32 %5640, 0
  %5642 = extractvalue %dx.types.ResRet.f32 %5640, 1
  %5643 = extractvalue %dx.types.ResRet.f32 %5640, 2
  %5644 = fadd fast float %5641, -5.000000e-01
  %5645 = fadd fast float %5642, -5.000000e-01
  %5646 = fadd fast float %5643, -5.000000e-01
  %5647 = fmul fast float %4525, 4.000000e+00
  %5648 = fmul fast float %5647, %5630
  %5649 = fmul fast float %5648, %5644
  %5650 = fmul fast float %4526, 4.000000e+00
  %5651 = fmul fast float %5650, %5631
  %5652 = fmul fast float %5651, %5645
  %5653 = fmul fast float %4536, 4.000000e+00
  %5654 = fmul fast float %5653, %5632
  %5655 = fmul fast float %5654, %5646
  %5656 = fadd fast float %5649, %5636
  %5657 = fadd fast float %5652, %5637
  %5658 = fadd fast float %5655, %5638
  %5659 = call float @dx.op.unary.f32(i32 7, float %5656)  ; Saturate(value)
  %5660 = call float @dx.op.unary.f32(i32 7, float %5657)  ; Saturate(value)
  %5661 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  br label %5662

; <label>:5662                                    ; preds = %5639, %5571
  %5663 = phi float [ %5659, %5639 ], [ %5636, %5571 ]
  %5664 = phi float [ %5660, %5639 ], [ %5637, %5571 ]
  %5665 = phi float [ %5661, %5639 ], [ %5638, %5571 ]
  %5666 = fmul fast float %5583, 9.843750e-01
  %5667 = fadd fast float %5666, 7.812500e-03
  %5668 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %5667, float %5421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5669 = extractvalue %dx.types.ResRet.f32 %5668, 2
  %5670 = extractvalue %dx.types.ResRet.f32 %5668, 3
  %5671 = fmul fast float %5669, %4525
  %5672 = fmul fast float %5669, %4526
  %5673 = fmul fast float %5669, %4536
  %5674 = fadd fast float %5671, %5670
  %5675 = fadd fast float %5672, %5670
  %5676 = fadd fast float %5673, %5670
  br i1 %5431, label %5677, label %5700

; <label>:5677                                    ; preds = %5662
  %5678 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3923, float %5583, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5679 = extractvalue %dx.types.ResRet.f32 %5678, 0
  %5680 = extractvalue %dx.types.ResRet.f32 %5678, 1
  %5681 = extractvalue %dx.types.ResRet.f32 %5678, 2
  %5682 = fadd fast float %5679, -5.000000e-01
  %5683 = fadd fast float %5680, -5.000000e-01
  %5684 = fadd fast float %5681, -5.000000e-01
  %5685 = fmul fast float %4525, 4.000000e+00
  %5686 = fmul fast float %5685, %5630
  %5687 = fmul fast float %5686, %5682
  %5688 = fmul fast float %4526, 4.000000e+00
  %5689 = fmul fast float %5688, %5631
  %5690 = fmul fast float %5689, %5683
  %5691 = fmul fast float %4536, 4.000000e+00
  %5692 = fmul fast float %5691, %5632
  %5693 = fmul fast float %5692, %5684
  %5694 = fadd fast float %5687, %5674
  %5695 = fadd fast float %5690, %5675
  %5696 = fadd fast float %5693, %5676
  %5697 = call float @dx.op.unary.f32(i32 7, float %5694)  ; Saturate(value)
  %5698 = call float @dx.op.unary.f32(i32 7, float %5695)  ; Saturate(value)
  %5699 = call float @dx.op.unary.f32(i32 7, float %5696)  ; Saturate(value)
  br label %5700

; <label>:5700                                    ; preds = %5677, %5662
  %5701 = phi float [ %5697, %5677 ], [ %5674, %5662 ]
  %5702 = phi float [ %5698, %5677 ], [ %5675, %5662 ]
  %5703 = phi float [ %5699, %5677 ], [ %5676, %5662 ]
  %5704 = call float @dx.op.binary.f32(i32 35, float %5702, float %5703)  ; FMax(a,b)
  %5705 = call float @dx.op.binary.f32(i32 35, float %5701, float %5704)  ; FMax(a,b)
  %5706 = fsub fast float 1.000000e+00, %5705
  %5707 = fmul fast float %5663, %5621
  %5708 = fmul fast float %5664, %5621
  %5709 = fmul fast float %5665, %5621
  %5710 = fsub fast float 1.000000e+00, %5584
  %5711 = bitcast float %5710 to i32
  %5712 = sitofp i32 %5711 to float
  %5713 = fmul fast float %5712, 5.000000e+00
  %5714 = fadd fast float %5713, 0xC1EFBF8940000000
  %5715 = fptosi float %5714 to i32
  %5716 = bitcast i32 %5715 to float
  %5717 = fmul fast float %5716, %3924
  %5718 = fmul fast float %5706, %5717
  %5719 = fmul fast float %5718, %5481
  %5720 = fmul fast float %5718, %5482
  %5721 = fmul fast float %5718, %5483
  %5722 = fadd fast float %5719, %5707
  %5723 = fadd fast float %5720, %5708
  %5724 = fadd fast float %5721, %5709
  %5725 = fmul fast float %5589, %5572
  %5726 = fmul fast float %5725, %5706
  %5727 = fmul fast float %5589, %5573
  %5728 = fmul fast float %5727, %5706
  %5729 = fmul fast float %5589, %5574
  %5730 = fmul fast float %5729, %5706
  %5731 = fmul fast float %5725, %5722
  %5732 = fmul fast float %5727, %5723
  %5733 = fmul fast float %5729, %5724
  %5734 = fadd fast float %5726, %5465
  %5735 = fmul fast float %5734, %3920
  %5736 = fadd fast float %5728, %5466
  %5737 = fmul fast float %5736, %3920
  %5738 = fadd fast float %5730, %5467
  %5739 = fmul fast float %5738, %3920
  %5740 = fadd fast float %5731, %5508
  %5741 = fmul fast float %5740, %3920
  %5742 = fadd fast float %5732, %5511
  %5743 = fmul fast float %5742, %3920
  %5744 = fadd fast float %5733, %5514
  %5745 = fmul fast float %5744, %3920
  br label %5746

; <label>:5746                                    ; preds = %5700, %5564, %5458
  %5747 = phi float [ %5509, %5458 ], [ %5509, %5564 ], [ %5741, %5700 ]
  %5748 = phi float [ %5512, %5458 ], [ %5512, %5564 ], [ %5743, %5700 ]
  %5749 = phi float [ %5515, %5458 ], [ %5515, %5564 ], [ %5745, %5700 ]
  %5750 = phi float [ %5504, %5458 ], [ %5504, %5564 ], [ %5735, %5700 ]
  %5751 = phi float [ %5505, %5458 ], [ %5505, %5564 ], [ %5737, %5700 ]
  %5752 = phi float [ %5506, %5458 ], [ %5506, %5564 ], [ %5739, %5700 ]
  %5753 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5754 = extractvalue %dx.types.CBufRet.i32 %5753, 0
  %5755 = icmp eq i32 %5754, 0
  br i1 %5755, label %6190, label %5756

; <label>:5756                                    ; preds = %5746
  %5757 = fptoui float %66 to i32
  %5758 = fptoui float %67 to i32
  %5759 = lshr i32 %5757, 4
  %5760 = lshr i32 %5758, 4
  %5761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5762 = extractvalue %dx.types.CBufRet.i32 %5761, 0
  %5763 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5760, i32 %5762, i32 %5759)  ; UMad(a,b,c)
  %5764 = add nsw i32 %5754, -1
  %5765 = call i32 @dx.op.binary.i32(i32 37, i32 %5764, i32 0)  ; IMax(a,b)
  %5766 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %5767 = fptoui float %5766 to i32
  %5768 = lshr i32 %5767, 5
  %5769 = call i32 @dx.op.binary.i32(i32 40, i32 %5768, i32 8191)  ; UMin(a,b)
  %5770 = shl i32 %5769, 2
  %5771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5770, i32 undef)  ; BufferLoad(srv,index,wot)
  %5772 = extractvalue %dx.types.ResRet.i32 %5771, 0
  %5773 = lshr i32 %5772, 16
  %5774 = and i32 %5772, 65535
  %5775 = lshr i32 %5772, 21
  %5776 = lshr i32 %5774, 5
  %5777 = call i32 @dx.op.binary.i32(i32 40, i32 %5776, i32 %5765)  ; UMin(a,b)
  %5778 = icmp ugt i32 %5775, %5777
  br i1 %5778, label %6190, label %5779

; <label>:5779                                    ; preds = %5756
  br label %5780

; <label>:5780                                    ; preds = %6180, %5779
  %5781 = phi i32 [ %6187, %6180 ], [ %5775, %5779 ]
  %5782 = phi float [ %6181, %6180 ], [ %5747, %5779 ]
  %5783 = phi float [ %6182, %6180 ], [ %5748, %5779 ]
  %5784 = phi float [ %6183, %6180 ], [ %5749, %5779 ]
  %5785 = phi float [ %6184, %6180 ], [ %5750, %5779 ]
  %5786 = phi float [ %6185, %6180 ], [ %5751, %5779 ]
  %5787 = phi float [ %6186, %6180 ], [ %5752, %5779 ]
  %5788 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5789 = extractvalue %dx.types.CBufRet.i32 %5788, 0
  %5790 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5763, i32 %5789, i32 %5781)  ; UMad(a,b,c)
  %5791 = shl i32 %5790, 2
  %5792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5791, i32 undef)  ; BufferLoad(srv,index,wot)
  %5793 = extractvalue %dx.types.ResRet.i32 %5792, 0
  %5794 = shl i32 %5781, 5
  %5795 = sub nsw i32 %5773, %5794
  %5796 = call i32 @dx.op.binary.i32(i32 37, i32 %5795, i32 0)  ; IMax(a,b)
  %5797 = call i32 @dx.op.binary.i32(i32 38, i32 %5796, i32 31)  ; IMin(a,b)
  %5798 = sub nsw i32 1, %5773
  %5799 = add nsw i32 %5798, %5774
  %5800 = call i32 @dx.op.binary.i32(i32 37, i32 %5799, i32 0)  ; IMax(a,b)
  %5801 = call i32 @dx.op.binary.i32(i32 38, i32 %5800, i32 32)  ; IMin(a,b)
  %5802 = and i32 %5801, 31
  %5803 = shl i32 -1, %5802
  %5804 = xor i32 %5803, -1
  %5805 = and i32 %5797, 31
  %5806 = shl i32 %5804, %5805
  %5807 = icmp eq i32 %5801, 32
  %5808 = select i1 %5807, i32 -1, i32 %5806
  %5809 = and i32 %5808, %5793
  %5810 = icmp eq i32 %5809, 0
  br i1 %5810, label %6180, label %5811

; <label>:5811                                    ; preds = %5780
  br label %5812

; <label>:5812                                    ; preds = %5892, %5811
  %5813 = phi i32 [ %5824, %5892 ], [ %5809, %5811 ]
  %5814 = phi float [ %5893, %5892 ], [ %5782, %5811 ]
  %5815 = phi float [ %5894, %5892 ], [ %5783, %5811 ]
  %5816 = phi float [ %5895, %5892 ], [ %5784, %5811 ]
  %5817 = phi float [ %5896, %5892 ], [ %5785, %5811 ]
  %5818 = phi float [ %5897, %5892 ], [ %5786, %5811 ]
  %5819 = phi float [ %5898, %5892 ], [ %5787, %5811 ]
  %5820 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5813)  ; FirstbitLo(value)
  %5821 = add i32 %5820, %5794
  %5822 = and i32 %5820, 31
  %5823 = shl i32 1, %5822
  %5824 = xor i32 %5823, %5813
  %5825 = mul i32 %5821, 112
  %5826 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5825, i32 undef)  ; BufferLoad(srv,index,wot)
  %5827 = extractvalue %dx.types.ResRet.f32 %5826, 0
  %5828 = extractvalue %dx.types.ResRet.f32 %5826, 1
  %5829 = extractvalue %dx.types.ResRet.f32 %5826, 2
  %5830 = or i32 %5825, 12
  %5831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5830, i32 undef)  ; BufferLoad(srv,index,wot)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = add i32 %5825, 44
  %5834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5833, i32 undef)  ; BufferLoad(srv,index,wot)
  %5835 = extractvalue %dx.types.ResRet.f32 %5834, 0
  %5836 = add i32 %5825, 48
  %5837 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5836, i32 undef)  ; BufferLoad(srv,index,wot)
  %5838 = extractvalue %dx.types.ResRet.f32 %5837, 0
  %5839 = extractvalue %dx.types.ResRet.f32 %5837, 1
  %5840 = extractvalue %dx.types.ResRet.f32 %5837, 2
  %5841 = add i32 %5825, 80
  %5842 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5841, i32 undef)  ; BufferLoad(srv,index,wot)
  %5843 = extractvalue %dx.types.ResRet.f32 %5842, 1
  %5844 = extractvalue %dx.types.ResRet.f32 %5842, 2
  %5845 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5829, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5846 = select i1 %163, float %5843, float %5827
  %5847 = select i1 %163, float %5845, float %5828
  %5848 = select i1 %163, float %5844, float %5829
  %5849 = fsub fast float %5838, %121
  %5850 = fsub fast float %5839, %122
  %5851 = fsub fast float %5840, %123
  %5852 = call float @dx.op.dot3.f32(i32 55, float %5849, float %5850, float %5851, float %5849, float %5850, float %5851)  ; Dot3(ax,ay,az,bx,by,bz)
  %5853 = call float @dx.op.unary.f32(i32 24, float %5852)  ; Sqrt(value)
  %5854 = fdiv fast float 1.000000e+00, %5853
  %5855 = fmul fast float %5854, %5849
  %5856 = fmul fast float %5854, %5850
  %5857 = fmul fast float %5854, %5851
  %5858 = fadd fast float %5853, %5832
  %5859 = fdiv fast float 1.000000e+00, %5858
  %5860 = fmul float %5835, %5859
  %5861 = fmul float %5860, %5860
  %5862 = call float @dx.op.unary.f32(i32 7, float %5861)  ; Saturate(value)
  %5863 = and i32 %5823, %5809
  %5864 = icmp eq i32 %5863, 0
  br i1 %5864, label %5887, label %5865, !dx.controlflow.hints !78

; <label>:5865                                    ; preds = %5812
  %5866 = lshr i32 %5757, 5
  %5867 = lshr i32 %5758, 5
  %5868 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5866, i32 %5867, i32 %5821, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5869 = extractvalue %dx.types.ResRet.i32 %5868, 0
  %5870 = and i32 %5869, 3
  %5871 = icmp eq i32 %5870, 0
  %5872 = select i1 %5871, float 1.000000e+00, float 0.000000e+00
  %5873 = icmp eq i32 %5870, 3
  br i1 %5873, label %5874, label %5887

; <label>:5874                                    ; preds = %5865
  %5875 = lshr i32 %5869, 10
  %5876 = and i32 %5875, 8160
  %5877 = and i32 %5758, 31
  %5878 = or i32 %5876, %5877
  %5879 = lshr i32 %5869, 1
  %5880 = and i32 %5879, 16352
  %5881 = and i32 %5757, 31
  %5882 = or i32 %5880, %5881
  %5883 = lshr i32 %5869, 23
  %5884 = and i32 %5883, 255
  %5885 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5882, i32 %5878, i32 %5884, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5886 = extractvalue %dx.types.ResRet.f32 %5885, 0
  br label %5887

; <label>:5887                                    ; preds = %5874, %5865, %5812
  %5888 = phi float [ %5886, %5874 ], [ %5872, %5865 ], [ 0.000000e+00, %5812 ]
  %5889 = call float @dx.op.binary.f32(i32 36, float %5888, float %5888)  ; FMin(a,b)
  %5890 = call float @dx.op.binary.f32(i32 36, float %5888, float %5889)  ; FMin(a,b)
  %5891 = fcmp fast ogt float %5890, 0.000000e+00
  br i1 %5891, label %5900, label %5892, !dx.controlflow.hints !79

; <label>:5892                                    ; preds = %6136, %5887
  %5893 = phi float [ %5814, %5887 ], [ %6176, %6136 ]
  %5894 = phi float [ %5815, %5887 ], [ %6177, %6136 ]
  %5895 = phi float [ %5816, %5887 ], [ %6178, %6136 ]
  %5896 = phi float [ %5817, %5887 ], [ %6170, %6136 ]
  %5897 = phi float [ %5818, %5887 ], [ %6171, %6136 ]
  %5898 = phi float [ %5819, %5887 ], [ %6172, %6136 ]
  %5899 = icmp eq i32 %5813, %5823
  br i1 %5899, label %6179, label %5812

; <label>:5900                                    ; preds = %5887
  %5901 = fmul fast float %5888, %5846
  %5902 = fmul fast float %5888, %5847
  %5903 = fmul fast float %5888, %5848
  %5904 = fsub fast float %5840, %4324
  %5905 = fcmp fast ogt float %5904, 0.000000e+00
  %5906 = fsub fast float %123, %4324
  %5907 = fcmp fast ogt float %5906, 0.000000e+00
  %5908 = xor i1 %5907, %5905
  %5909 = fsub fast float %4324, %5840
  %5910 = fmul fast float %5909, 2.000000e+00
  %5911 = fadd fast float %5910, %5840
  %5912 = select i1 %5908, float %5840, float %5911
  %5913 = fsub fast float %5912, %123
  %5914 = call float @dx.op.dot3.f32(i32 55, float %5849, float %5850, float %5913, float %5849, float %5850, float %5913)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = call float @dx.op.unary.f32(i32 25, float %5914)  ; Rsqrt(value)
  %5916 = fmul fast float %5915, %5849
  %5917 = fmul fast float %5915, %5850
  %5918 = fmul fast float %5915, %5913
  %5919 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4332)  ; Dot3(ax,ay,az,bx,by,bz)
  %5920 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5916, float %5917, float %5918)  ; Dot3(ax,ay,az,bx,by,bz)
  %5921 = fdiv fast float 1.000000e+00, %5920
  %5922 = fmul fast float %5921, %5919
  %5923 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5906, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5924 = fcmp fast ogt float %5923, 0.000000e+00
  %5925 = fcmp fast olt float %5923, 0.000000e+00
  %5926 = zext i1 %5924 to i32
  %5927 = zext i1 %5925 to i32
  %5928 = sub nsw i32 %5926, %5927
  %5929 = sitofp i32 %5928 to float
  %5930 = fsub fast float %5912, %4324
  %5931 = call float @dx.op.dot3.f32(i32 55, float %5849, float %5850, float %5930, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5932 = fcmp fast ogt float %5931, 0.000000e+00
  %5933 = fcmp fast olt float %5931, 0.000000e+00
  %5934 = zext i1 %5932 to i32
  %5935 = zext i1 %5933 to i32
  %5936 = sub nsw i32 %5934, %5935
  %5937 = sitofp i32 %5936 to float
  %5938 = fcmp fast une float %5929, %5937
  br i1 %5938, label %5939, label %5949

; <label>:5939                                    ; preds = %5900
  %5940 = fmul fast float %5922, %5918
  %5941 = fmul fast float %5922, %5917
  %5942 = fmul fast float %5922, %5916
  %5943 = fmul fast float %5942, %5942
  %5944 = fmul fast float %5941, %5941
  %5945 = fadd fast float %5943, %5944
  %5946 = fmul fast float %5940, %5940
  %5947 = fadd fast float %5945, %5946
  %5948 = call float @dx.op.unary.f32(i32 24, float %5947)  ; Sqrt(value)
  br label %5961

; <label>:5949                                    ; preds = %5900
  %5950 = icmp slt i32 %5928, 0
  br i1 %5950, label %5951, label %5961

; <label>:5951                                    ; preds = %5949
  %5952 = fsub fast float %121, %5838
  %5953 = fsub fast float %122, %5839
  %5954 = fsub fast float %123, %5912
  %5955 = fmul fast float %5952, %5952
  %5956 = fmul fast float %5953, %5953
  %5957 = fadd fast float %5955, %5956
  %5958 = fmul fast float %5954, %5954
  %5959 = fadd fast float %5957, %5958
  %5960 = call float @dx.op.unary.f32(i32 24, float %5959)  ; Sqrt(value)
  br label %5961

; <label>:5961                                    ; preds = %5951, %5949, %5939
  %5962 = phi float [ %5948, %5939 ], [ %5960, %5951 ], [ 0.000000e+00, %5949 ]
  %5963 = and i1 %5907, %5905
  %5964 = fsub fast float -0.000000e+00, %5962
  %5965 = select i1 %5963, float -0.000000e+00, float %5964
  %5966 = fmul fast float %4325, 0x3FF7154760000000
  %5967 = fmul fast float %5966, %5965
  %5968 = fmul fast float %4326, 0x3FF7154760000000
  %5969 = fmul fast float %5968, %5965
  %5970 = fmul fast float %4327, 0x3FF7154760000000
  %5971 = fmul fast float %5970, %5965
  %5972 = call float @dx.op.unary.f32(i32 21, float %5967)  ; Exp(value)
  %5973 = call float @dx.op.unary.f32(i32 21, float %5969)  ; Exp(value)
  %5974 = call float @dx.op.unary.f32(i32 21, float %5971)  ; Exp(value)
  %5975 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  %5976 = call float @dx.op.unary.f32(i32 7, float %5973)  ; Saturate(value)
  %5977 = call float @dx.op.unary.f32(i32 7, float %5974)  ; Saturate(value)
  %5978 = fmul fast float %5901, %5975
  %5979 = fmul fast float %5902, %5976
  %5980 = fmul fast float %5903, %5977
  %5981 = fsub fast float %5855, %4524
  %5982 = fsub fast float %5856, %4523
  %5983 = fsub fast float %5857, %4522
  %5984 = call float @dx.op.dot3.f32(i32 55, float %5981, float %5982, float %5983, float %5981, float %5982, float %5983)  ; Dot3(ax,ay,az,bx,by,bz)
  %5985 = call float @dx.op.unary.f32(i32 25, float %5984)  ; Rsqrt(value)
  %5986 = fmul fast float %5985, %5981
  %5987 = fmul fast float %5985, %5982
  %5988 = fmul fast float %5985, %5983
  %5989 = call float @dx.op.dot3.f32(i32 55, float %5855, float %5856, float %5857, float %4531, float %4532, float %4533)  ; Dot3(ax,ay,az,bx,by,bz)
  %5990 = call float @dx.op.dot3.f32(i32 55, float %4521, float %4520, float %4519, float %5986, float %5987, float %5988)  ; Dot3(ax,ay,az,bx,by,bz)
  %5991 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  %5992 = fmul fast float %5991, %5862
  %5993 = fmul fast float %5991, %5991
  %5994 = fmul fast float %5993, %4551
  %5995 = call float @dx.op.unary.f32(i32 7, float %5994)  ; Saturate(value)
  %5996 = fmul fast float %5992, %5995
  %5997 = bitcast float %5852 to i32
  %5998 = ashr i32 %5997, 1
  %5999 = sub nsw i32 1597463007, %5998
  %6000 = bitcast i32 %5999 to float
  %6001 = fmul fast float %6000, %5849
  %6002 = fmul fast float %6000, %5850
  %6003 = fmul fast float %6000, %5851
  %6004 = fsub fast float %6001, %4524
  %6005 = fsub fast float %6002, %4523
  %6006 = fsub fast float %6003, %4522
  %6007 = call float @dx.op.dot3.f32(i32 55, float %6004, float %6005, float %6006, float %6004, float %6005, float %6006)  ; Dot3(ax,ay,az,bx,by,bz)
  %6008 = call float @dx.op.unary.f32(i32 25, float %6007)  ; Rsqrt(value)
  %6009 = fmul fast float %6004, %6008
  %6010 = fmul fast float %6005, %6008
  %6011 = fmul fast float %6006, %6008
  %6012 = call float @dx.op.dot3.f32(i32 55, float %4531, float %4532, float %4533, float %6009, float %6010, float %6011)  ; Dot3(ax,ay,az,bx,by,bz)
  %6013 = fmul fast float %6012, %6012
  %6014 = call float @dx.op.unary.f32(i32 6, float %5989)  ; FAbs(value)
  %6015 = fsub fast float 1.000000e+00, %4534
  %6016 = call float @dx.op.binary.f32(i32 35, float %6015, float 0x3F847AE140000000)  ; FMax(a,b)
  %6017 = fmul fast float %6016, %6016
  %6018 = fmul fast float %6017, %6017
  %6019 = fsub fast float 1.000000e+00, %6018
  %6020 = fmul fast float %4538, %4538
  %6021 = fmul fast float %6020, %6019
  %6022 = fadd fast float %6021, %6018
  %6023 = bitcast float %6022 to i32
  %6024 = ashr i32 %6023, 1
  %6025 = add nsw i32 %6024, 532487669
  %6026 = bitcast i32 %6025 to float
  %6027 = fadd fast float %6026, %4538
  %6028 = fmul fast float %6018, %6013
  %6029 = fsub fast float 1.000000e+00, %6013
  %6030 = fadd fast float %6029, %6028
  %6031 = fmul fast float %6014, %6014
  %6032 = fmul fast float %6031, %6019
  %6033 = fadd fast float %6032, %6018
  %6034 = bitcast float %6033 to i32
  %6035 = ashr i32 %6034, 1
  %6036 = add nsw i32 %6035, 532487669
  %6037 = bitcast i32 %6036 to float
  %6038 = fadd fast float %6037, %6014
  %6039 = fmul fast float %6030, %6030
  %6040 = fmul fast float %6039, %6027
  %6041 = fmul fast float %6040, %6038
  %6042 = fdiv fast float 1.000000e+00, %6041
  %6043 = bitcast float %6018 to i32
  %6044 = sitofp i32 %6043 to float
  %6045 = fmul fast float %6044, 0x3FE7F73180000000
  %6046 = fadd fast float %6045, 0x41AFE27C40000000
  %6047 = fptosi float %6046 to i32
  %6048 = bitcast i32 %6047 to float
  %6049 = fmul fast float %5835, 0x3FD80E9D60000000
  %6050 = fmul fast float %6049, %6000
  %6051 = fadd fast float %6048, %6050
  %6052 = bitcast float %6051 to i32
  %6053 = sub nsw i32 2129859010, %6052
  %6054 = bitcast i32 %6053 to float
  %6055 = fmul fast float %6018, %6042
  %6056 = fmul fast float %6055, %6048
  %6057 = fmul fast float %6056, %6054
  %6058 = call float @dx.op.unary.f32(i32 6, float %5990)  ; FAbs(value)
  %6059 = fsub fast float 1.000000e+00, %6058
  %6060 = bitcast float %6059 to i32
  %6061 = sitofp i32 %6060 to float
  %6062 = fmul fast float %6061, 5.000000e+00
  %6063 = fadd fast float %6062, 0xC1EFBF8940000000
  %6064 = fptosi float %6063 to i32
  %6065 = bitcast i32 %6064 to float
  %6066 = fsub fast float 1.000000e+00, %4525
  %6067 = fsub fast float 1.000000e+00, %4526
  %6068 = fsub fast float 1.000000e+00, %4536
  %6069 = fmul fast float %6065, %6066
  %6070 = fmul fast float %6065, %6067
  %6071 = fmul fast float %6065, %6068
  %6072 = fadd fast float %6069, %4525
  %6073 = fadd fast float %6070, %4526
  %6074 = fadd fast float %6071, %4536
  br i1 %5431, label %6075, label %6098

; <label>:6075                                    ; preds = %5961
  %6076 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3923, float %6058, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6077 = extractvalue %dx.types.ResRet.f32 %6076, 0
  %6078 = extractvalue %dx.types.ResRet.f32 %6076, 1
  %6079 = extractvalue %dx.types.ResRet.f32 %6076, 2
  %6080 = fadd fast float %6077, -5.000000e-01
  %6081 = fadd fast float %6078, -5.000000e-01
  %6082 = fadd fast float %6079, -5.000000e-01
  %6083 = fmul fast float %4525, 4.000000e+00
  %6084 = fmul fast float %6083, %6066
  %6085 = fmul fast float %6084, %6080
  %6086 = fmul fast float %4526, 4.000000e+00
  %6087 = fmul fast float %6086, %6067
  %6088 = fmul fast float %6087, %6081
  %6089 = fmul fast float %4536, 4.000000e+00
  %6090 = fmul fast float %6089, %6068
  %6091 = fmul fast float %6090, %6082
  %6092 = fadd fast float %6085, %6072
  %6093 = fadd fast float %6088, %6073
  %6094 = fadd fast float %6091, %6074
  %6095 = call float @dx.op.unary.f32(i32 7, float %6092)  ; Saturate(value)
  %6096 = call float @dx.op.unary.f32(i32 7, float %6093)  ; Saturate(value)
  %6097 = call float @dx.op.unary.f32(i32 7, float %6094)  ; Saturate(value)
  br label %6098

; <label>:6098                                    ; preds = %6075, %5961
  %6099 = phi float [ %6095, %6075 ], [ %6072, %5961 ]
  %6100 = phi float [ %6096, %6075 ], [ %6073, %5961 ]
  %6101 = phi float [ %6097, %6075 ], [ %6074, %5961 ]
  %6102 = fmul fast float %5989, 9.843750e-01
  %6103 = fadd fast float %6102, 7.812500e-03
  %6104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %6103, float %5421, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6105 = extractvalue %dx.types.ResRet.f32 %6104, 2
  %6106 = extractvalue %dx.types.ResRet.f32 %6104, 3
  %6107 = fmul fast float %6105, %4525
  %6108 = fmul fast float %6105, %4526
  %6109 = fmul fast float %6105, %4536
  %6110 = fadd fast float %6107, %6106
  %6111 = fadd fast float %6108, %6106
  %6112 = fadd fast float %6109, %6106
  br i1 %5431, label %6113, label %6136

; <label>:6113                                    ; preds = %6098
  %6114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3923, float %5989, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6115 = extractvalue %dx.types.ResRet.f32 %6114, 0
  %6116 = extractvalue %dx.types.ResRet.f32 %6114, 1
  %6117 = extractvalue %dx.types.ResRet.f32 %6114, 2
  %6118 = fadd fast float %6115, -5.000000e-01
  %6119 = fadd fast float %6116, -5.000000e-01
  %6120 = fadd fast float %6117, -5.000000e-01
  %6121 = fmul fast float %4525, 4.000000e+00
  %6122 = fmul fast float %6121, %6066
  %6123 = fmul fast float %6122, %6118
  %6124 = fmul fast float %4526, 4.000000e+00
  %6125 = fmul fast float %6124, %6067
  %6126 = fmul fast float %6125, %6119
  %6127 = fmul fast float %4536, 4.000000e+00
  %6128 = fmul fast float %6127, %6068
  %6129 = fmul fast float %6128, %6120
  %6130 = fadd fast float %6123, %6110
  %6131 = fadd fast float %6126, %6111
  %6132 = fadd fast float %6129, %6112
  %6133 = call float @dx.op.unary.f32(i32 7, float %6130)  ; Saturate(value)
  %6134 = call float @dx.op.unary.f32(i32 7, float %6131)  ; Saturate(value)
  %6135 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  br label %6136

; <label>:6136                                    ; preds = %6113, %6098
  %6137 = phi float [ %6133, %6113 ], [ %6110, %6098 ]
  %6138 = phi float [ %6134, %6113 ], [ %6111, %6098 ]
  %6139 = phi float [ %6135, %6113 ], [ %6112, %6098 ]
  %6140 = call float @dx.op.binary.f32(i32 35, float %6138, float %6139)  ; FMax(a,b)
  %6141 = call float @dx.op.binary.f32(i32 35, float %6137, float %6140)  ; FMax(a,b)
  %6142 = fsub fast float 1.000000e+00, %6141
  %6143 = fmul fast float %6099, %6057
  %6144 = fmul fast float %6100, %6057
  %6145 = fmul fast float %6101, %6057
  %6146 = fsub fast float 1.000000e+00, %5990
  %6147 = bitcast float %6146 to i32
  %6148 = sitofp i32 %6147 to float
  %6149 = fmul fast float %6148, 5.000000e+00
  %6150 = fadd fast float %6149, 0xC1EFBF8940000000
  %6151 = fptosi float %6150 to i32
  %6152 = bitcast i32 %6151 to float
  %6153 = fmul fast float %6152, %3924
  %6154 = fmul fast float %6142, %6153
  %6155 = fmul fast float %6154, %5481
  %6156 = fmul fast float %6154, %5482
  %6157 = fmul fast float %6154, %5483
  %6158 = fadd fast float %6155, %6143
  %6159 = fadd fast float %6156, %6144
  %6160 = fadd fast float %6157, %6145
  %6161 = fmul fast float %5978, %3920
  %6162 = fmul fast float %6161, %5996
  %6163 = fmul fast float %6162, %6142
  %6164 = fmul fast float %5979, %3920
  %6165 = fmul fast float %6164, %5996
  %6166 = fmul fast float %6165, %6142
  %6167 = fmul fast float %5980, %3920
  %6168 = fmul fast float %6167, %5996
  %6169 = fmul fast float %6168, %6142
  %6170 = fadd fast float %6163, %5817
  %6171 = fadd fast float %6166, %5818
  %6172 = fadd fast float %6169, %5819
  %6173 = fmul fast float %6162, %6158
  %6174 = fmul fast float %6165, %6159
  %6175 = fmul fast float %6168, %6160
  %6176 = fadd fast float %6173, %5814
  %6177 = fadd fast float %6174, %5815
  %6178 = fadd fast float %6175, %5816
  br label %5892

; <label>:6179                                    ; preds = %5892
  br label %6180

; <label>:6180                                    ; preds = %6179, %5780
  %6181 = phi float [ %5782, %5780 ], [ %5893, %6179 ]
  %6182 = phi float [ %5783, %5780 ], [ %5894, %6179 ]
  %6183 = phi float [ %5784, %5780 ], [ %5895, %6179 ]
  %6184 = phi float [ %5785, %5780 ], [ %5896, %6179 ]
  %6185 = phi float [ %5786, %5780 ], [ %5897, %6179 ]
  %6186 = phi float [ %5787, %5780 ], [ %5898, %6179 ]
  %6187 = add i32 %5781, 1
  %6188 = icmp ugt i32 %6187, %5777
  br i1 %6188, label %6189, label %5780

; <label>:6189                                    ; preds = %6180
  br label %6190

; <label>:6190                                    ; preds = %6189, %5756, %5746
  %6191 = phi float [ %5747, %5746 ], [ %5747, %5756 ], [ %6181, %6189 ]
  %6192 = phi float [ %5748, %5746 ], [ %5748, %5756 ], [ %6182, %6189 ]
  %6193 = phi float [ %5749, %5746 ], [ %5749, %5756 ], [ %6183, %6189 ]
  %6194 = phi float [ %5750, %5746 ], [ %5750, %5756 ], [ %6184, %6189 ]
  %6195 = phi float [ %5751, %5746 ], [ %5751, %5756 ], [ %6185, %6189 ]
  %6196 = phi float [ %5752, %5746 ], [ %5752, %5756 ], [ %6186, %6189 ]
  %6197 = call float @dx.op.unary.f32(i32 24, float %4528)  ; Sqrt(value)
  %6198 = call float @dx.op.unary.f32(i32 24, float %4529)  ; Sqrt(value)
  %6199 = call float @dx.op.unary.f32(i32 24, float %4530)  ; Sqrt(value)
  %6200 = fmul fast float %6197, %6194
  %6201 = fmul fast float %6198, %6195
  %6202 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  br i1 %163, label %6203, label %6223

; <label>:6203                                    ; preds = %6190
  %6204 = fadd fast float %6196, %3926
  %6205 = fmul fast float %6204, %3927
  %6206 = fsub fast float 1.000000e+00, %3927
  %6207 = call float @dx.op.unary.f32(i32 7, float %6206)  ; Saturate(value)
  %6208 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6209 = extractvalue %dx.types.CBufRet.f32 %6208, 3
  %6210 = fmul fast float %6209, %6207
  %6211 = fadd fast float %6210, %6205
  %6212 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6213 = extractvalue %dx.types.CBufRet.f32 %6212, 0
  %6214 = fmul fast float %6213, %5487
  %6215 = fsub fast float %6211, %6214
  %6216 = fadd fast float %6201, %6200
  %6217 = fmul fast float %6202, %6216
  %6218 = extractvalue %dx.types.CBufRet.f32 %6208, 1
  %6219 = fsub fast float %6215, %6218
  %6220 = extractvalue %dx.types.CBufRet.f32 %6208, 2
  %6221 = fmul fast float %6219, %6220
  %6222 = call float @dx.op.unary.f32(i32 7, float %6221)  ; Saturate(value)
  br label %6239

; <label>:6223                                    ; preds = %6190
  %6224 = fmul fast float %6199, %6196
  %6225 = fmul fast float %6202, %6200
  %6226 = fmul fast float %6202, %6201
  %6227 = fmul fast float %6224, %6202
  %6228 = add i32 %38, 356
  %6229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %6228, i32 undef)  ; BufferLoad(srv,index,wot)
  %6230 = extractvalue %dx.types.ResRet.i32 %6229, 0
  %6231 = and i32 %6230, 32
  %6232 = icmp eq i32 %6231, 0
  br i1 %6232, label %6239, label %6233

; <label>:6233                                    ; preds = %6223
  %6234 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6235 = extractvalue %dx.types.CBufRet.f32 %6234, 0
  %6236 = fmul fast float %6235, 0x3FE99999A0000000
  %6237 = fadd fast float %6235, %6225
  %6238 = fadd fast float %6236, %6227
  br label %6239

; <label>:6239                                    ; preds = %6233, %6223, %6203
  %6240 = phi float [ %6217, %6203 ], [ %6237, %6233 ], [ %6225, %6223 ]
  %6241 = phi float [ %6222, %6203 ], [ %6226, %6233 ], [ %6226, %6223 ]
  %6242 = phi float [ 1.000000e+00, %6203 ], [ %6238, %6233 ], [ %6227, %6223 ]
  %6243 = fmul fast float %6202, %6192
  %6244 = fmul fast float %6202, %6193
  %6245 = fadd fast float %6192, %6191
  %6246 = select i1 %163, float %6245, float %6191
  %6247 = fmul float %6246, %6202
  %6248 = select i1 %163, float 0.000000e+00, float %6243
  %6249 = select i1 %163, float 0.000000e+00, float %6244
  %6250 = fmul fast float %6240, %6197
  %6251 = fmul fast float %6241, %6198
  %6252 = fmul fast float %6242, %6199
  %6253 = fadd fast float %6247, %6250
  %6254 = fadd fast float %6248, %6251
  %6255 = fadd fast float %6249, %6252
  %6256 = select i1 %163, float %6241, float %6254
  %6257 = select i1 %163, float %6242, float %6255
  %6258 = call float @dx.op.binary.f32(i32 36, float %6253, float 3.225500e+04)  ; FMin(a,b)
  %6259 = call float @dx.op.binary.f32(i32 36, float %6256, float 3.225500e+04)  ; FMin(a,b)
  %6260 = call float @dx.op.binary.f32(i32 36, float %6257, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6258)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6259)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6260)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

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
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

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
!dx.viewIdState = !{!52}
!dx.entryPoints = !{!53}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !43, !46}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !17}
!20 = !{i32 12, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!43 = !{!44, !45}
!44 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!45 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!46 = !{!47, !48, !49, !50, !51}
!47 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!48 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!49 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!51 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!52 = !{[34 x i32] [i32 32, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!53 = !{void ()* @ps_main, !"ps_main", !54, !4, !74}
!54 = !{!55, !72, null}
!55 = !{!56, !59, !61, !63, !65, !67, !68, !69, !71}
!56 = !{i32 0, !"SV_Position", i8 9, i8 3, !57, i8 4, i32 1, i8 4, i32 0, i8 0, !58}
!57 = !{i32 0}
!58 = !{i32 3, i32 11}
!59 = !{i32 1, !"COLOR", i8 9, i8 0, !57, i8 2, i32 1, i8 4, i32 1, i8 0, !60}
!60 = !{i32 3, i32 14}
!61 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !57, i8 2, i32 1, i8 4, i32 2, i8 0, !62}
!62 = !{i32 3, i32 3}
!63 = !{i32 3, !"NORMAL", i8 9, i8 0, !57, i8 2, i32 1, i8 3, i32 3, i8 0, !64}
!64 = !{i32 3, i32 7}
!65 = !{i32 4, !"TANGENT", i8 9, i8 0, !57, i8 2, i32 1, i8 4, i32 4, i8 0, !66}
!66 = !{i32 3, i32 15}
!67 = !{i32 5, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !57, i8 2, i32 1, i8 2, i32 5, i8 0, !62}
!68 = !{i32 6, !"SCEONDARY_NORMAL", i8 9, i8 0, !57, i8 2, i32 1, i8 4, i32 6, i8 0, !66}
!69 = !{i32 7, !"PACKED_TRI_DATA", i8 5, i8 0, !57, i8 1, i32 1, i8 4, i32 7, i8 0, !70}
!70 = !{i32 3, i32 13}
!71 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !57, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!72 = !{!73}
!73 = !{i32 0, !"SV_Target", i8 9, i8 16, !57, i8 0, i32 1, i8 4, i32 0, i8 0, !66}
!74 = !{i32 0, i64 24}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}

