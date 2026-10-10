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
; shader hash: 7807ea269f3a6ed6915d658941baca01
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
  %346 = add i32 %38, 472
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
  br i1 %399, label %858, label %400

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
  %527 = add i32 %38, 440
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

; <label>:841                                     ; preds = %831, %793
  %842 = phi float [ %838, %831 ], [ 0.000000e+00, %793 ]
  %843 = phi float [ %839, %831 ], [ 0.000000e+00, %793 ]
  %844 = phi float [ %840, %831 ], [ 0.000000e+00, %793 ]
  %845 = add i32 %38, 96
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = and i32 %847, 255
  %849 = uitofp i32 %848 to float
  %850 = lshr i32 %847, 8
  %851 = and i32 %850, 255
  %852 = uitofp i32 %851 to float
  %853 = call float @dx.op.dot3.f32(i32 55, float %714, float %715, float %716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %854 = fmul fast float %852, %853
  %855 = fadd fast float %854, %849
  %856 = fmul fast float %855, 0x3F70101020000000
  %857 = call float @dx.op.unary.f32(i32 7, float %856)  ; Saturate(value)
  br label %858

; <label>:858                                     ; preds = %841, %385
  %859 = phi float [ 0.000000e+00, %385 ], [ %795, %841 ]
  %860 = phi float [ 0.000000e+00, %385 ], [ %796, %841 ]
  %861 = phi float [ 0.000000e+00, %385 ], [ %714, %841 ]
  %862 = phi float [ 0.000000e+00, %385 ], [ %715, %841 ]
  %863 = phi float [ 0.000000e+00, %385 ], [ %716, %841 ]
  %864 = phi float [ 0.000000e+00, %385 ], [ %842, %841 ]
  %865 = phi float [ 0.000000e+00, %385 ], [ %843, %841 ]
  %866 = phi float [ 0.000000e+00, %385 ], [ %844, %841 ]
  %867 = phi float [ 0.000000e+00, %385 ], [ %700, %841 ]
  %868 = phi float [ 0.000000e+00, %385 ], [ 1.000000e+00, %841 ]
  %869 = phi float [ 0.000000e+00, %385 ], [ %794, %841 ]
  %870 = phi float [ 0.000000e+00, %385 ], [ %797, %841 ]
  %871 = phi float [ 0.000000e+00, %385 ], [ %857, %841 ]
  br i1 %336, label %1713, label %872

; <label>:872                                     ; preds = %858
  %873 = icmp ult i32 %391, 2
  %874 = add i32 %38, 40
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = add i32 %38, 44
  %878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.i32 %878, 0
  %880 = or i32 %879, %876
  %881 = icmp eq i32 %880, 0
  br i1 %881, label %1713, label %882

; <label>:882                                     ; preds = %872
  %883 = and i32 %876, 262144
  %884 = icmp ne i32 %883, 0
  %885 = select i1 %884, float %41, float 1.000000e+00
  %886 = select i1 %884, float %42, float 0.000000e+00
  %887 = select i1 %884, float %43, float 0.000000e+00
  %888 = select i1 %884, float %44, float 1.000000e+00
  %889 = select i1 %884, float %45, float %54
  %890 = select i1 %884, float %46, float %55
  %891 = add i32 %38, 300
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = lshr i32 %893, 16
  %895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %894)  ; LegacyF16ToF32(value)
  %896 = fmul fast float %895, 0x3F50624DE0000000
  %897 = add i32 %38, 104
  %898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %899 = extractvalue %dx.types.ResRet.i32 %898, 0
  %900 = lshr i32 %899, 16
  %901 = and i32 %900, 255
  %902 = lshr i32 %899, 24
  %903 = add i32 %38, 308
  %904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %903, i32 undef)  ; BufferLoad(srv,index,wot)
  %905 = extractvalue %dx.types.ResRet.i32 %904, 0
  %906 = and i32 %905, 65535
  %907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %906)  ; LegacyF16ToF32(value)
  %908 = lshr i32 %905, 16
  %909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %908)  ; LegacyF16ToF32(value)
  %910 = add i32 %38, 48
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = lshr i32 %912, 22
  %914 = shl nuw nsw i32 %913, 5
  %915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %914)  ; LegacyF16ToF32(value)
  %916 = shl i32 %912, 4
  %917 = and i32 %916, 32752
  %918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %917)  ; LegacyF16ToF32(value)
  %919 = lshr i32 %912, 7
  %920 = and i32 %919, 32752
  %921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %920)  ; LegacyF16ToF32(value)
  %922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %923 = extractvalue %dx.types.CBufRet.f32 %922, 3
  %924 = fmul fast float %923, 1.000000e+03
  %925 = fmul fast float %246, %924
  %926 = call float @dx.op.unary.f32(i32 22, float %925)  ; Frc(value)
  %927 = fadd fast float %926, %236
  %928 = fmul fast float %247, %924
  %929 = call float @dx.op.unary.f32(i32 22, float %928)  ; Frc(value)
  %930 = fadd fast float %929, %238
  %931 = fmul fast float %896, %924
  %932 = call float @dx.op.unary.f32(i32 22, float %931)  ; Frc(value)
  %933 = fmul fast float %932, 0x401921FB60000000
  %934 = fadd fast float %933, %915
  %935 = call float @dx.op.unary.f32(i32 13, float %934)  ; Sin(value)
  %936 = call float @dx.op.unary.f32(i32 12, float %934)  ; Cos(value)
  %937 = fsub fast float -0.000000e+00, %935
  %938 = fadd fast float %889, -5.000000e-01
  %939 = fadd fast float %890, -5.000000e-01
  %940 = fmul fast float %907, %938
  %941 = fmul fast float %909, %939
  %942 = fadd fast float %940, 5.000000e-01
  %943 = fadd fast float %941, 5.000000e-01
  %944 = fmul fast float %918, %942
  %945 = fmul fast float %921, %943
  %946 = fmul fast float %936, %944
  %947 = call float @dx.op.tertiary.f32(i32 46, float %937, float %945, float %946)  ; FMad(a,b,c)
  %948 = fmul fast float %935, %944
  %949 = call float @dx.op.tertiary.f32(i32 46, float %936, float %945, float %948)  ; FMad(a,b,c)
  %950 = fadd fast float %927, %947
  %951 = fadd fast float %930, %949
  %952 = icmp ugt i32 %901, 1
  %953 = icmp ugt i32 %899, 33554431
  %954 = or i1 %953, %952
  br i1 %954, label %955, label %980

; <label>:955                                     ; preds = %882
  %956 = add i32 %38, 244
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = lshr i32 %958, 16
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = fmul fast float %923, %960
  %962 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %963 = mul nuw nsw i32 %901, %902
  %964 = uitofp i32 %963 to float
  %965 = fmul fast float %962, %964
  %966 = call float @dx.op.unary.f32(i32 27, float %965)  ; Round_ni(value)
  %967 = fptoui float %966 to i32
  %968 = urem i32 %967, %901
  %969 = udiv i32 %967, %902
  %970 = call float @dx.op.unary.f32(i32 22, float %950)  ; Frc(value)
  %971 = call float @dx.op.unary.f32(i32 22, float %951)  ; Frc(value)
  %972 = uitofp i32 %968 to float
  %973 = uitofp i32 %969 to float
  %974 = fadd fast float %970, %972
  %975 = fadd fast float %971, %973
  %976 = uitofp i32 %901 to float
  %977 = uitofp i32 %902 to float
  %978 = fdiv fast float %974, %976
  %979 = fdiv fast float %975, %977
  br label %980

; <label>:980                                     ; preds = %955, %882
  %981 = phi float [ %978, %955 ], [ %950, %882 ]
  %982 = phi float [ %979, %955 ], [ %951, %882 ]
  %983 = and i32 %876, 16777216
  %984 = icmp eq i32 %983, 0
  br i1 %984, label %1094, label %985

; <label>:985                                     ; preds = %980
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 0
  %988 = extractvalue %dx.types.CBufRet.f32 %986, 1
  %989 = extractvalue %dx.types.CBufRet.f32 %986, 2
  %990 = fadd fast float %987, %121
  %991 = fadd fast float %988, %122
  %992 = fadd fast float %989, %123
  %993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %994 = extractvalue %dx.types.CBufRet.f32 %993, 0
  %995 = call float @dx.op.unary.f32(i32 7, float %994)  ; Saturate(value)
  %996 = icmp eq i32 %39, 65535
  br i1 %996, label %1091, label %997

; <label>:997                                     ; preds = %985
  %998 = lshr i32 %39, 1
  %999 = shl i32 %998, 2
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = and i32 %39, 1
  %1003 = icmp ne i32 %1002, 0
  %1004 = lshr i32 %1001, 16
  %1005 = and i32 %1001, 65535
  %1006 = select i1 %1003, i32 %1004, i32 %1005
  %1007 = icmp eq i32 %1006, 65535
  br i1 %1007, label %1087, label %1008

; <label>:1008                                    ; preds = %997
  %1009 = mul nuw nsw i32 %1006, 40
  %1010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = extractvalue %dx.types.ResRet.f32 %1010, 1
  %1013 = extractvalue %dx.types.ResRet.f32 %1010, 2
  %1014 = add nuw nsw i32 %1009, 12
  %1015 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1014, i32 undef)  ; BufferLoad(srv,index,wot)
  %1016 = extractvalue %dx.types.ResRet.f32 %1015, 0
  %1017 = extractvalue %dx.types.ResRet.f32 %1015, 1
  %1018 = extractvalue %dx.types.ResRet.f32 %1015, 2
  %1019 = add nuw nsw i32 %1009, 24
  %1020 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.ResRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.ResRet.f32 %1020, 2
  %1024 = add nuw nsw i32 %1009, 36
  %1025 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.f32 %1025, 0
  %1027 = fsub fast float %990, %1011
  %1028 = fsub fast float %991, %1012
  %1029 = fsub fast float %992, %1013
  %1030 = fmul fast float %1026, %1027
  %1031 = fmul fast float %1026, %1028
  %1032 = fmul fast float %1026, %1029
  %1033 = call float @dx.op.unary.f32(i32 27, float %1030)  ; Round_ni(value)
  %1034 = call float @dx.op.unary.f32(i32 27, float %1031)  ; Round_ni(value)
  %1035 = call float @dx.op.unary.f32(i32 27, float %1032)  ; Round_ni(value)
  %1036 = fadd fast float %1033, 5.000000e-01
  %1037 = fadd fast float %1034, 5.000000e-01
  %1038 = fadd fast float %1035, 5.000000e-01
  %1039 = fmul fast float %1036, %1016
  %1040 = fmul fast float %1037, %1017
  %1041 = fmul fast float %1038, %1018
  %1042 = shl i32 %39, 2
  %1043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.i32 %1043, 0
  %1045 = add i32 %1044, 0
  %1046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1047 = call float @dx.op.unary.f32(i32 22, float %1039)  ; Frc(value)
  %1048 = call float @dx.op.unary.f32(i32 22, float %1040)  ; Frc(value)
  %1049 = call float @dx.op.unary.f32(i32 22, float %1041)  ; Frc(value)
  %1050 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1046, %dx.types.Handle %35, float %1047, float %1048, float %1049, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = fmul fast float %1051, 1.023000e+03
  %1055 = fmul fast float %1052, 1.023000e+03
  %1056 = fmul fast float %1053, 1.023000e+03
  %1057 = fadd fast float %1054, 5.000000e-01
  %1058 = fadd fast float %1055, 5.000000e-01
  %1059 = fadd fast float %1056, 5.000000e-01
  %1060 = call float @dx.op.unary.f32(i32 27, float %1057)  ; Round_ni(value)
  %1061 = call float @dx.op.unary.f32(i32 27, float %1058)  ; Round_ni(value)
  %1062 = call float @dx.op.unary.f32(i32 27, float %1059)  ; Round_ni(value)
  %1063 = fsub fast float %1030, %1033
  %1064 = fsub fast float %1031, %1034
  %1065 = fsub fast float %1032, %1035
  %1066 = fmul fast float %1063, 7.500000e-01
  %1067 = fmul fast float %1064, 7.500000e-01
  %1068 = fmul fast float %1065, 7.500000e-01
  %1069 = fadd fast float %1033, 1.250000e-01
  %1070 = fadd fast float %1069, %1066
  %1071 = fadd fast float %1070, %1060
  %1072 = fadd fast float %1034, 1.250000e-01
  %1073 = fadd fast float %1072, %1067
  %1074 = fadd fast float %1073, %1061
  %1075 = fadd fast float %1035, 1.250000e-01
  %1076 = fadd fast float %1075, %1068
  %1077 = fadd fast float %1076, %1062
  %1078 = fmul fast float %1071, %1021
  %1079 = fmul fast float %1074, %1022
  %1080 = fmul fast float %1077, %1023
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = add i32 %1082, 0
  %1084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1085 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1084, %dx.types.Handle %33, float %1078, float %1079, float %1080, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 0
  br label %1087

; <label>:1087                                    ; preds = %1008, %997
  %1088 = phi float [ %1086, %1008 ], [ -1.000000e+00, %997 ]
  %1089 = fadd fast float %1088, %995
  %1090 = call float @dx.op.unary.f32(i32 7, float %1089)  ; Saturate(value)
  br label %1091

; <label>:1091                                    ; preds = %1087, %985
  %1092 = phi float [ %1090, %1087 ], [ %995, %985 ]
  %1093 = fmul fast float %1092, %388
  br label %1094

; <label>:1094                                    ; preds = %1091, %980
  %1095 = phi float [ %1093, %1091 ], [ %388, %980 ]
  %1096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1097 = extractvalue %dx.types.ResRet.i32 %1096, 0
  %1098 = and i32 %1097, 256
  %1099 = icmp eq i32 %1098, 0
  br i1 %1099, label %1146, label %1100

; <label>:1100                                    ; preds = %1094
  %1101 = add i32 %38, 428
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = add i32 %1103, 0
  %1105 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1104, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1106 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1105, %dx.types.Handle %63, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1107 = extractvalue %dx.types.ResRet.f32 %1106, 0
  %1108 = add i32 %38, 116
  %1109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1108, i32 undef)  ; BufferLoad(srv,index,wot)
  %1110 = extractvalue %dx.types.ResRet.i32 %1109, 0
  %1111 = shl i32 %1110, 4
  %1112 = and i32 %1111, 32752
  %1113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1112)  ; LegacyF16ToF32(value)
  %1114 = lshr i32 %1110, 7
  %1115 = and i32 %1114, 32752
  %1116 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1115)  ; LegacyF16ToF32(value)
  %1117 = fsub fast float 1.000000e+00, %1095
  %1118 = call float @dx.op.binary.f32(i32 35, float %1117, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1119 = bitcast float %1095 to i32
  %1120 = sitofp i32 %1119 to float
  %1121 = fadd fast float %1120, 0xC1CFBF8940000000
  %1122 = fmul fast float %1116, %1121
  %1123 = fadd fast float %1122, 0x41CFBF8940000000
  %1124 = fptosi float %1123 to i32
  %1125 = bitcast i32 %1124 to float
  %1126 = bitcast float %1118 to i32
  %1127 = sitofp i32 %1126 to float
  %1128 = fadd fast float %1127, 0xC1CFBF8940000000
  %1129 = fmul fast float %1128, %1116
  %1130 = fadd fast float %1129, 0x41CFBF8940000000
  %1131 = fptosi float %1130 to i32
  %1132 = bitcast i32 %1131 to float
  %1133 = fmul fast float %1125, %1113
  %1134 = fmul fast float %1132, %1113
  %1135 = fsub fast float %1118, %1133
  %1136 = fadd fast float %1134, %1118
  %1137 = call float @dx.op.unary.f32(i32 7, float %1135)  ; Saturate(value)
  %1138 = call float @dx.op.unary.f32(i32 7, float %1136)  ; Saturate(value)
  %1139 = fsub fast float %1107, %1137
  %1140 = fsub fast float %1138, %1137
  %1141 = bitcast float %1140 to i32
  %1142 = sub nsw i32 2129859010, %1141
  %1143 = bitcast i32 %1142 to float
  %1144 = fmul fast float %1143, %1139
  %1145 = call float @dx.op.unary.f32(i32 7, float %1144)  ; Saturate(value)
  br label %1146

; <label>:1146                                    ; preds = %1100, %1094
  %1147 = phi float [ %1145, %1100 ], [ %1095, %1094 ]
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = and i32 %1149, 128
  %1151 = icmp eq i32 %1150, 0
  br i1 %1151, label %1168, label %1152

; <label>:1152                                    ; preds = %1146
  %1153 = add i32 %38, 412
  %1154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1153, i32 undef)  ; BufferLoad(srv,index,wot)
  %1155 = extractvalue %dx.types.ResRet.i32 %1154, 0
  %1156 = add i32 %1155, 0
  %1157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1157, %dx.types.Handle %63, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1159 = extractvalue %dx.types.ResRet.f32 %1158, 0
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = and i32 %1161, 524288
  %1163 = icmp ne i32 %1162, 0
  %1164 = fcmp fast ogt float %1159, 0x3FE0101020000000
  %1165 = select i1 %1164, float 1.000000e+00, float 0.000000e+00
  %1166 = select i1 %1163, float %1165, float %1159
  %1167 = fmul fast float %1166, %1147
  br label %1168

; <label>:1168                                    ; preds = %1152, %1146
  %1169 = phi float [ %1167, %1152 ], [ %1147, %1146 ]
  %1170 = fcmp fast ult float %1169, 0x3F70101020000000
  br i1 %1170, label %1713, label %1171

; <label>:1171                                    ; preds = %1168
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = and i32 %1173, 16
  %1175 = icmp eq i32 %1174, 0
  br i1 %1175, label %1374, label %1176

; <label>:1176                                    ; preds = %1171
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = add i32 %38, 364
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1179, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = add i32 %1181, 0
  %1183 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1182, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1184 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1183, %dx.types.Handle %62, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1185 = extractvalue %dx.types.ResRet.f32 %1184, 0
  %1186 = extractvalue %dx.types.ResRet.f32 %1184, 1
  %1187 = extractvalue %dx.types.ResRet.f32 %1184, 2
  %1188 = extractvalue %dx.types.ResRet.f32 %1184, 3
  %1189 = and i32 %1178, 255
  %1190 = uitofp i32 %1189 to float
  %1191 = lshr i32 %1178, 8
  %1192 = and i32 %1191, 255
  %1193 = uitofp i32 %1192 to float
  %1194 = fmul fast float %1188, %1190
  %1195 = fadd fast float %1194, %1193
  %1196 = fmul fast float %1195, 0x3F70101000000000
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 512
  %1200 = icmp eq i32 %1199, 0
  br i1 %1200, label %1209, label %1201

; <label>:1201                                    ; preds = %1176
  %1202 = add i32 %38, 444
  %1203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1202, i32 undef)  ; BufferLoad(srv,index,wot)
  %1204 = extractvalue %dx.types.ResRet.i32 %1203, 0
  %1205 = add i32 %1204, 0
  %1206 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1205, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1207 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1206, %dx.types.Handle %63, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1208 = extractvalue %dx.types.ResRet.f32 %1207, 0
  br label %1209

; <label>:1209                                    ; preds = %1201, %1176
  %1210 = phi float [ %1208, %1201 ], [ 1.000000e+00, %1176 ]
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = and i32 %1212, 33554432
  %1214 = icmp eq i32 %1213, 0
  br i1 %1214, label %1321, label %1215

; <label>:1215                                    ; preds = %1209
  %1216 = add i32 %38, 240
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 65535
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = lshr i32 %1218, 16
  %1222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1221)  ; LegacyF16ToF32(value)
  %1223 = add i32 %38, 244
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1223, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = and i32 %1225, 65535
  %1227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1226)  ; LegacyF16ToF32(value)
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = lshr i32 %1229, 24
  %1231 = uitofp i32 %1230 to float
  %1232 = fmul fast float %1231, 0x3F70101020000000
  %1233 = and i32 %1229, 255
  %1234 = uitofp i32 %1233 to float
  %1235 = fmul fast float %1234, 0x3F70101020000000
  %1236 = lshr i32 %1229, 8
  %1237 = and i32 %1236, 255
  %1238 = uitofp i32 %1237 to float
  %1239 = fmul fast float %1238, 0x3F70101020000000
  %1240 = lshr i32 %1229, 16
  %1241 = and i32 %1240, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = fmul fast float %1242, 0x3F70101020000000
  %1244 = add i32 %38, 236
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = lshr i32 %1246, 24
  %1248 = uitofp i32 %1247 to float
  %1249 = fmul fast float %1248, 0x3F70101020000000
  %1250 = and i32 %1246, 255
  %1251 = uitofp i32 %1250 to float
  %1252 = fmul fast float %1251, 0x3F70101020000000
  %1253 = lshr i32 %1246, 8
  %1254 = and i32 %1253, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = fmul fast float %1255, 0x3F70101020000000
  %1257 = lshr i32 %1246, 16
  %1258 = and i32 %1257, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1259, 0x3F70101020000000
  %1261 = bitcast float %1185 to i32
  %1262 = ashr i32 %1261, 1
  %1263 = sub nsw i32 1597463174, %1262
  %1264 = bitcast i32 %1263 to float
  %1265 = fmul fast float %1185, 5.000000e-01
  %1266 = fmul fast float %1264, %1264
  %1267 = fmul fast float %1266, %1265
  %1268 = fsub fast float 1.500000e+00, %1267
  %1269 = fmul fast float %1264, %1185
  %1270 = fmul fast float %1269, %1268
  %1271 = bitcast float %1186 to i32
  %1272 = ashr i32 %1271, 1
  %1273 = sub nsw i32 1597463174, %1272
  %1274 = bitcast i32 %1273 to float
  %1275 = fmul fast float %1186, 5.000000e-01
  %1276 = fmul fast float %1274, %1274
  %1277 = fmul fast float %1276, %1275
  %1278 = fsub fast float 1.500000e+00, %1277
  %1279 = fmul fast float %1274, %1186
  %1280 = fmul fast float %1279, %1278
  %1281 = bitcast float %1187 to i32
  %1282 = ashr i32 %1281, 1
  %1283 = sub nsw i32 1597463174, %1282
  %1284 = bitcast i32 %1283 to float
  %1285 = fmul fast float %1187, 5.000000e-01
  %1286 = fmul fast float %1284, %1284
  %1287 = fmul fast float %1286, %1285
  %1288 = fsub fast float 1.500000e+00, %1287
  %1289 = fmul fast float %1284, %1187
  %1290 = fmul fast float %1289, %1288
  %1291 = fsub fast float %1270, %1252
  %1292 = fsub fast float %1280, %1256
  %1293 = fsub fast float %1290, %1260
  %1294 = fmul fast float %1291, %1220
  %1295 = fmul fast float %1292, %1222
  %1296 = fmul fast float %1293, %1227
  %1297 = fadd fast float %1294, %1235
  %1298 = fadd fast float %1295, %1239
  %1299 = fadd fast float %1296, %1243
  %1300 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1301 = call float @dx.op.unary.f32(i32 7, float %1298)  ; Saturate(value)
  %1302 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1303 = fmul fast float %1300, %1300
  %1304 = fmul fast float %1301, %1301
  %1305 = fmul fast float %1302, %1302
  %1306 = fsub fast float %1303, %1185
  %1307 = fsub fast float %1304, %1186
  %1308 = fsub fast float %1305, %1187
  %1309 = fmul fast float %1306, %1210
  %1310 = fmul fast float %1307, %1210
  %1311 = fmul fast float %1308, %1210
  %1312 = fadd fast float %1309, %1185
  %1313 = fadd fast float %1310, %1186
  %1314 = fadd fast float %1311, %1187
  %1315 = fadd fast float %1232, %1196
  %1316 = fsub fast float %1315, %1249
  %1317 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1318 = fsub fast float %1317, %1196
  %1319 = fmul fast float %1318, %1210
  %1320 = fadd fast float %1319, %1196
  br label %1374

; <label>:1321                                    ; preds = %1209
  %1322 = and i32 %1212, 134217728
  %1323 = icmp eq i32 %1322, 0
  br i1 %1323, label %1358, label %1324

; <label>:1324                                    ; preds = %1321
  %1325 = call float @dx.op.unary.f32(i32 24, float %223)  ; Sqrt(value)
  %1326 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %1327 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %1328 = fadd fast float %1325, -5.000000e-01
  %1329 = fadd fast float %1326, -5.000000e-01
  %1330 = fadd fast float %1327, -5.000000e-01
  %1331 = fmul fast float %1328, %1210
  %1332 = fmul fast float %1329, %1210
  %1333 = fmul fast float %1330, %1210
  %1334 = fadd fast float %1331, 5.000000e-01
  %1335 = fadd fast float %1332, 5.000000e-01
  %1336 = fadd fast float %1333, 5.000000e-01
  %1337 = call float @dx.op.unary.f32(i32 24, float %1185)  ; Sqrt(value)
  %1338 = call float @dx.op.unary.f32(i32 24, float %1186)  ; Sqrt(value)
  %1339 = call float @dx.op.unary.f32(i32 24, float %1187)  ; Sqrt(value)
  %1340 = fmul fast float %1334, 2.000000e+00
  %1341 = fsub fast float 1.000000e+00, %1340
  %1342 = fmul fast float %1341, %1337
  %1343 = fadd fast float %1342, %1340
  %1344 = fmul fast float %1343, %1337
  %1345 = fmul fast float %1335, 2.000000e+00
  %1346 = fsub fast float 1.000000e+00, %1345
  %1347 = fmul fast float %1346, %1338
  %1348 = fadd fast float %1347, %1345
  %1349 = fmul fast float %1348, %1338
  %1350 = fmul fast float %1336, 2.000000e+00
  %1351 = fsub fast float 1.000000e+00, %1350
  %1352 = fmul fast float %1351, %1339
  %1353 = fadd fast float %1352, %1350
  %1354 = fmul fast float %1353, %1339
  %1355 = fmul fast float %1344, %1344
  %1356 = fmul fast float %1349, %1349
  %1357 = fmul fast float %1354, %1354
  br label %1374

; <label>:1358                                    ; preds = %1321
  %1359 = fmul fast float %223, %223
  %1360 = fmul fast float %227, %227
  %1361 = fmul fast float %231, %231
  %1362 = fadd fast float %1359, -1.000000e+00
  %1363 = fadd fast float %1360, -1.000000e+00
  %1364 = fadd fast float %1361, -1.000000e+00
  %1365 = fmul fast float %1210, %1362
  %1366 = fmul fast float %1210, %1363
  %1367 = fmul fast float %1210, %1364
  %1368 = fadd fast float %1365, 1.000000e+00
  %1369 = fadd fast float %1366, 1.000000e+00
  %1370 = fadd fast float %1367, 1.000000e+00
  %1371 = fmul fast float %1368, %1185
  %1372 = fmul fast float %1369, %1186
  %1373 = fmul fast float %1370, %1187
  br label %1374

; <label>:1374                                    ; preds = %1358, %1324, %1215, %1171
  %1375 = phi float [ %1320, %1215 ], [ %1196, %1324 ], [ %1196, %1358 ], [ 0x3FA23C0BE0000000, %1171 ]
  %1376 = phi float [ %1312, %1215 ], [ %1355, %1324 ], [ %1371, %1358 ], [ 1.000000e+00, %1171 ]
  %1377 = phi float [ %1313, %1215 ], [ %1356, %1324 ], [ %1372, %1358 ], [ 1.000000e+00, %1171 ]
  %1378 = phi float [ %1314, %1215 ], [ %1357, %1324 ], [ %1373, %1358 ], [ 1.000000e+00, %1171 ]
  %1379 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1380 = extractvalue %dx.types.CBufRet.i32 %1379, 1
  %1381 = and i32 %1380, 1
  %1382 = icmp ne i32 %1381, 0
  %1383 = add i32 %38, 356
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = and i32 %1385, 32
  %1387 = icmp ne i32 %1386, 0
  %1388 = and i1 %1382, %1387
  %1389 = select i1 %1388, float 1.000000e+00, float %1376
  %1390 = select i1 %1388, float 0x3FD3333340000000, float %1377
  %1391 = select i1 %1388, float 0x3FD3333340000000, float %1378
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 32
  %1395 = icmp eq i32 %1394, 0
  br i1 %1395, label %1468, label %1396

; <label>:1396                                    ; preds = %1374
  %1397 = add i32 %38, 108
  %1398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1397, i32 undef)  ; BufferLoad(srv,index,wot)
  %1399 = extractvalue %dx.types.ResRet.i32 %1398, 0
  %1400 = add i32 %38, 380
  %1401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1400, i32 undef)  ; BufferLoad(srv,index,wot)
  %1402 = extractvalue %dx.types.ResRet.i32 %1401, 0
  %1403 = add i32 %1402, 0
  %1404 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1403, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1405 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1404, %dx.types.Handle %62, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1406 = extractvalue %dx.types.ResRet.f32 %1405, 0
  %1407 = extractvalue %dx.types.ResRet.f32 %1405, 1
  %1408 = extractvalue %dx.types.ResRet.f32 %1405, 2
  %1409 = extractvalue %dx.types.ResRet.f32 %1405, 3
  %1410 = and i32 %1399, 255
  %1411 = uitofp i32 %1410 to float
  %1412 = lshr i32 %1399, 8
  %1413 = and i32 %1412, 255
  %1414 = uitofp i32 %1413 to float
  %1415 = lshr i32 %1399, 16
  %1416 = and i32 %1415, 255
  %1417 = uitofp i32 %1416 to float
  %1418 = fmul fast float %1417, 0x3F70101000000000
  %1419 = fmul fast float %1406, %1411
  %1420 = fadd fast float %1419, %1414
  %1421 = fmul fast float %1420, 0x3F70101000000000
  %1422 = fadd fast float %1407, -5.000000e-01
  %1423 = fadd fast float %1409, -5.000000e-01
  %1424 = fmul fast float %1422, %1418
  %1425 = fmul fast float %1423, %1418
  %1426 = fadd fast float %1424, 5.000000e-01
  %1427 = fadd fast float %1425, 5.000000e-01
  %1428 = fmul fast float %1426, 2.000000e+00
  %1429 = fadd fast float %1428, -1.000000e+00
  %1430 = fmul fast float %1427, 2.000000e+00
  %1431 = fadd fast float %1430, -1.000000e+00
  %1432 = fadd fast float %1429, %1431
  %1433 = fmul fast float %1432, 5.000000e-01
  %1434 = fsub fast float %1429, %1431
  %1435 = fmul fast float %1434, 5.000000e-01
  %1436 = call float @dx.op.unary.f32(i32 6, float %1433)  ; FAbs(value)
  %1437 = fsub fast float 1.000000e+00, %1436
  %1438 = call float @dx.op.unary.f32(i32 6, float %1435)  ; FAbs(value)
  %1439 = fsub fast float %1437, %1438
  %1440 = call float @dx.op.dot3.f32(i32 55, float %1433, float %1435, float %1439, float %1433, float %1435, float %1439)  ; Dot3(ax,ay,az,bx,by,bz)
  %1441 = call float @dx.op.unary.f32(i32 25, float %1440)  ; Rsqrt(value)
  %1442 = fmul fast float %1433, %1441
  %1443 = fmul fast float %1435, %1441
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = and i32 %1445, 67108864
  %1447 = icmp eq i32 %1446, 0
  br i1 %1447, label %1464, label %1448

; <label>:1448                                    ; preds = %1396
  %1449 = add i32 %38, 296
  %1450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.i32 %1450, 0
  %1452 = and i32 %1451, 65535
  %1453 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1452)  ; LegacyF16ToF32(value)
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 65535
  %1457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1456)  ; LegacyF16ToF32(value)
  %1458 = lshr i32 %1451, 16
  %1459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1458)  ; LegacyF16ToF32(value)
  %1460 = fsub fast float %1421, %1459
  %1461 = fmul fast float %1460, %1453
  %1462 = fadd fast float %1461, %1457
  %1463 = call float @dx.op.unary.f32(i32 7, float %1462)  ; Saturate(value)
  br label %1464

; <label>:1464                                    ; preds = %1448, %1396
  %1465 = phi float [ %1463, %1448 ], [ %1421, %1396 ]
  %1466 = call float @dx.op.dot2.f32(i32 54, float %1442, float %1443, float %885, float %886)  ; Dot2(ax,ay,bx,by)
  %1467 = call float @dx.op.dot2.f32(i32 54, float %1442, float %1443, float %887, float %888)  ; Dot2(ax,ay,bx,by)
  br label %1468

; <label>:1468                                    ; preds = %1464, %1374
  %1469 = phi float [ %1465, %1464 ], [ 0x3FD6666660000000, %1374 ]
  %1470 = phi float [ %1466, %1464 ], [ 0.000000e+00, %1374 ]
  %1471 = phi float [ %1467, %1464 ], [ 0.000000e+00, %1374 ]
  %1472 = phi float [ %1408, %1464 ], [ 1.000000e+00, %1374 ]
  %1473 = add i32 %38, 176
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1473, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = lshr i32 %1475, 22
  %1477 = shl nuw nsw i32 %1476, 5
  %1478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1477)  ; LegacyF16ToF32(value)
  %1479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1480 = extractvalue %dx.types.ResRet.i32 %1479, 0
  %1481 = and i32 %1480, 64
  %1482 = icmp eq i32 %1481, 0
  br i1 %1482, label %1516, label %1483

; <label>:1483                                    ; preds = %1468
  %1484 = add i32 %38, 396
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1484, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = add i32 %1486, 0
  %1488 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1487, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = and i32 %1490, 131072
  %1492 = icmp eq i32 %1491, 0
  %1493 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1488, %dx.types.Handle %62, float %981, float %982, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1494 = extractvalue %dx.types.ResRet.f32 %1493, 0
  %1495 = extractvalue %dx.types.ResRet.f32 %1493, 1
  %1496 = extractvalue %dx.types.ResRet.f32 %1493, 2
  %1497 = fmul fast float %1494, %211
  %1498 = fmul fast float %1495, %214
  %1499 = fmul fast float %1496, %217
  br i1 %1492, label %1506, label %1500

; <label>:1500                                    ; preds = %1483
  %1501 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1502 = extractvalue %dx.types.CBufRet.f32 %1501, 0
  %1503 = fmul fast float %1502, %1497
  %1504 = fmul fast float %1502, %1498
  %1505 = fmul fast float %1502, %1499
  br label %1506

; <label>:1506                                    ; preds = %1500, %1483
  %1507 = phi float [ %1503, %1500 ], [ %1497, %1483 ]
  %1508 = phi float [ %1504, %1500 ], [ %1498, %1483 ]
  %1509 = phi float [ %1505, %1500 ], [ %1499, %1483 ]
  %1510 = fmul fast float %1507, %1478
  %1511 = select i1 %163, float %1510, float %1507
  %1512 = call float @dx.op.dot3.f32(i32 55, float %1511, float %1508, float %1509, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1513 = select i1 %163, float 0.000000e+00, float %1507
  %1514 = select i1 %163, float %1512, float %1508
  %1515 = select i1 %163, float 0.000000e+00, float %1509
  br label %1516

; <label>:1516                                    ; preds = %1506, %1468
  %1517 = phi float [ %1513, %1506 ], [ 0.000000e+00, %1468 ]
  %1518 = phi float [ %1514, %1506 ], [ 0.000000e+00, %1468 ]
  %1519 = phi float [ %1515, %1506 ], [ 0.000000e+00, %1468 ]
  %1520 = add i32 %38, 112
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = lshr i32 %1522, 8
  %1526 = and i32 %1525, 255
  %1527 = uitofp i32 %1526 to float
  %1528 = call float @dx.op.dot3.f32(i32 55, float %1389, float %1390, float %1391, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1529 = fmul fast float %1527, %1528
  %1530 = fadd fast float %1529, %1524
  %1531 = fmul fast float %1530, 0x3F70101020000000
  %1532 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  br i1 %873, label %1533, label %1541

; <label>:1533                                    ; preds = %1516
  %1534 = fsub fast float 1.000000e+00, %1169
  %1535 = fmul fast float %1534, %861
  %1536 = fmul fast float %1534, %862
  %1537 = fmul fast float %1534, %863
  %1538 = fmul fast float %1534, %864
  %1539 = fmul fast float %1534, %865
  %1540 = fmul fast float %1534, %866
  br label %1541

; <label>:1541                                    ; preds = %1533, %1516
  %1542 = phi float [ %1535, %1533 ], [ %861, %1516 ]
  %1543 = phi float [ %1536, %1533 ], [ %862, %1516 ]
  %1544 = phi float [ %1537, %1533 ], [ %863, %1516 ]
  %1545 = phi float [ %1538, %1533 ], [ %864, %1516 ]
  %1546 = phi float [ %1539, %1533 ], [ %865, %1516 ]
  %1547 = phi float [ %1540, %1533 ], [ %866, %1516 ]
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = and i32 %1549, 3
  %1551 = icmp eq i32 %1550, 3
  br i1 %1551, label %1630, label %1552

; <label>:1552                                    ; preds = %1541
  %1553 = and i32 %1549, 16
  %1554 = icmp ne i32 %1553, 0
  %1555 = select i1 %1554, float %1169, float 0.000000e+00
  %1556 = icmp eq i32 %1550, 0
  br i1 %1556, label %1557, label %1585

; <label>:1557                                    ; preds = %1552
  %1558 = and i32 %1549, 64
  %1559 = icmp ne i32 %1558, 0
  %1560 = select i1 %1559, float %1169, float 0.000000e+00
  %1561 = fsub fast float %1389, %1542
  %1562 = fsub fast float %1390, %1543
  %1563 = fsub fast float %1391, %1544
  %1564 = fmul fast float %1555, %1561
  %1565 = fmul fast float %1555, %1562
  %1566 = fmul fast float %1555, %1563
  %1567 = fadd fast float %1564, %1542
  %1568 = fadd fast float %1565, %1543
  %1569 = fadd fast float %1566, %1544
  %1570 = fsub fast float %1375, %867
  %1571 = fmul fast float %1555, %1570
  %1572 = fadd fast float %1571, %867
  %1573 = fsub fast float %1517, %1545
  %1574 = fsub fast float %1518, %1546
  %1575 = fsub fast float %1519, %1547
  %1576 = fmul fast float %1560, %1573
  %1577 = fmul fast float %1560, %1574
  %1578 = fmul fast float %1560, %1575
  %1579 = fadd fast float %1576, %1545
  %1580 = fadd fast float %1577, %1546
  %1581 = fadd fast float %1578, %1547
  %1582 = fsub fast float %1532, %871
  %1583 = fmul fast float %1555, %1582
  %1584 = fadd fast float %1583, %871
  br label %1630

; <label>:1585                                    ; preds = %1552
  %1586 = icmp eq i32 %1550, 1
  br i1 %1586, label %1587, label %1600

; <label>:1587                                    ; preds = %1585
  %1588 = fadd fast float %1389, -1.000000e+00
  %1589 = fadd fast float %1390, -1.000000e+00
  %1590 = fadd fast float %1391, -1.000000e+00
  %1591 = fmul fast float %1555, %1588
  %1592 = fmul fast float %1555, %1589
  %1593 = fmul fast float %1555, %1590
  %1594 = fadd fast float %1591, 1.000000e+00
  %1595 = fadd fast float %1592, 1.000000e+00
  %1596 = fadd fast float %1593, 1.000000e+00
  %1597 = fmul fast float %1594, %1542
  %1598 = fmul fast float %1595, %1543
  %1599 = fmul fast float %1596, %1544
  br label %1630

; <label>:1600                                    ; preds = %1585
  %1601 = icmp eq i32 %1550, 2
  br i1 %1601, label %1602, label %1630

; <label>:1602                                    ; preds = %1600
  %1603 = call float @dx.op.unary.f32(i32 24, float %1389)  ; Sqrt(value)
  %1604 = call float @dx.op.unary.f32(i32 24, float %1390)  ; Sqrt(value)
  %1605 = call float @dx.op.unary.f32(i32 24, float %1391)  ; Sqrt(value)
  %1606 = fadd fast float %1603, -5.000000e-01
  %1607 = fadd fast float %1604, -5.000000e-01
  %1608 = fadd fast float %1605, -5.000000e-01
  %1609 = fmul fast float %1606, %1555
  %1610 = fmul fast float %1607, %1555
  %1611 = fmul fast float %1608, %1555
  %1612 = fadd fast float %1609, 5.000000e-01
  %1613 = fadd fast float %1610, 5.000000e-01
  %1614 = fadd fast float %1611, 5.000000e-01
  %1615 = fmul fast float %1612, 2.000000e+00
  %1616 = fsub fast float 1.000000e+00, %1615
  %1617 = fmul fast float %1616, %1542
  %1618 = fadd fast float %1617, %1615
  %1619 = fmul fast float %1618, %1542
  %1620 = fmul fast float %1613, 2.000000e+00
  %1621 = fsub fast float 1.000000e+00, %1620
  %1622 = fmul fast float %1621, %1543
  %1623 = fadd fast float %1622, %1620
  %1624 = fmul fast float %1623, %1543
  %1625 = fmul fast float %1614, 2.000000e+00
  %1626 = fsub fast float 1.000000e+00, %1625
  %1627 = fmul fast float %1626, %1544
  %1628 = fadd fast float %1627, %1625
  %1629 = fmul fast float %1628, %1544
  br label %1630

; <label>:1630                                    ; preds = %1602, %1600, %1587, %1557, %1541
  %1631 = phi float [ %1542, %1541 ], [ %1619, %1602 ], [ %1542, %1600 ], [ %1597, %1587 ], [ %1567, %1557 ]
  %1632 = phi float [ %1543, %1541 ], [ %1624, %1602 ], [ %1543, %1600 ], [ %1598, %1587 ], [ %1568, %1557 ]
  %1633 = phi float [ %1544, %1541 ], [ %1629, %1602 ], [ %1544, %1600 ], [ %1599, %1587 ], [ %1569, %1557 ]
  %1634 = phi float [ %1545, %1541 ], [ %1545, %1602 ], [ %1545, %1600 ], [ %1545, %1587 ], [ %1579, %1557 ]
  %1635 = phi float [ %1546, %1541 ], [ %1546, %1602 ], [ %1546, %1600 ], [ %1546, %1587 ], [ %1580, %1557 ]
  %1636 = phi float [ %1547, %1541 ], [ %1547, %1602 ], [ %1547, %1600 ], [ %1547, %1587 ], [ %1581, %1557 ]
  %1637 = phi float [ %867, %1541 ], [ %867, %1602 ], [ %867, %1600 ], [ %867, %1587 ], [ %1572, %1557 ]
  %1638 = phi float [ %871, %1541 ], [ %871, %1602 ], [ %871, %1600 ], [ %871, %1587 ], [ %1584, %1557 ]
  %1639 = and i32 %1549, 12
  %1640 = icmp eq i32 %1639, 12
  br i1 %1640, label %1713, label %1641

; <label>:1641                                    ; preds = %1630
  %1642 = and i32 %1549, 2097184
  %1643 = icmp eq i32 %1642, 2097184
  %1644 = select i1 %1643, float %1169, float 0.000000e+00
  %1645 = and i32 %1549, 4194336
  %1646 = icmp eq i32 %1645, 4194336
  %1647 = select i1 %1646, float %1169, float 0.000000e+00
  %1648 = and i32 %1549, 8388640
  %1649 = icmp eq i32 %1648, 8388640
  %1650 = select i1 %1649, float %1169, float 0.000000e+00
  %1651 = icmp eq i32 %1639, 0
  br i1 %1651, label %1652, label %1665

; <label>:1652                                    ; preds = %1641
  %1653 = fsub fast float %1470, %859
  %1654 = fsub fast float %1471, %860
  %1655 = fmul fast float %1644, %1653
  %1656 = fmul fast float %1644, %1654
  %1657 = fadd fast float %1655, %859
  %1658 = fadd fast float %1656, %860
  %1659 = fsub fast float %1472, %870
  %1660 = fmul fast float %1647, %1659
  %1661 = fadd fast float %1660, %870
  %1662 = fsub fast float %1469, %869
  %1663 = fmul fast float %1650, %1662
  %1664 = fadd fast float %1663, %869
  br label %1713

; <label>:1665                                    ; preds = %1641
  %1666 = icmp eq i32 %1639, 4
  br i1 %1666, label %1667, label %1699

; <label>:1667                                    ; preds = %1665
  %1668 = fmul fast float %1644, %1470
  %1669 = fmul fast float %1644, %1471
  %1670 = fadd fast float %1668, %859
  %1671 = fadd fast float %1669, %860
  %1672 = call float @dx.op.binary.f32(i32 36, float %870, float %1472)  ; FMin(a,b)
  %1673 = fsub fast float %1672, %870
  %1674 = fmul fast float %1673, %1647
  %1675 = fadd fast float %1674, %870
  %1676 = fadd fast float %1469, %869
  %1677 = fmul fast float %1676, 0x3FF337FAE0000000
  %1678 = fmul fast float %869, %869
  %1679 = fmul fast float %1469, %1469
  %1680 = fadd fast float %1679, %1678
  %1681 = fmul fast float %1680, 0x3FE5152B00000000
  %1682 = fmul fast float %869, 0xBFCC1F85E0000000
  %1683 = fmul fast float %1682, %1469
  %1684 = fadd fast float %1683, 0xBFE1363700000000
  %1685 = fadd fast float %1684, %1677
  %1686 = fsub fast float %1685, %1681
  %1687 = fmul fast float %1676, 0x3FBA6F0D00000000
  %1688 = fmul fast float %1680, 0x3FD0432880000000
  %1689 = fmul fast float %869, 0xBFEF110800000000
  %1690 = fmul fast float %1689, %1469
  %1691 = fadd fast float %1690, 1.000000e+00
  %1692 = fsub fast float %1691, %1687
  %1693 = fadd fast float %1692, %1688
  %1694 = fdiv fast float %1686, %1693
  %1695 = call float @dx.op.unary.f32(i32 7, float %1694)  ; Saturate(value)
  %1696 = fsub fast float %1695, %869
  %1697 = fmul fast float %1696, %1650
  %1698 = fadd fast float %1697, %869
  br label %1713

; <label>:1699                                    ; preds = %1665
  %1700 = icmp eq i32 %1639, 8
  br i1 %1700, label %1701, label %1713

; <label>:1701                                    ; preds = %1699
  %1702 = fmul fast float %1644, %1470
  %1703 = fmul fast float %1644, %1471
  %1704 = fadd fast float %1702, %859
  %1705 = fadd fast float %1703, %860
  %1706 = call float @dx.op.binary.f32(i32 36, float %870, float %1472)  ; FMin(a,b)
  %1707 = fsub fast float %1706, %870
  %1708 = fmul fast float %1707, %1647
  %1709 = fadd fast float %1708, %870
  %1710 = fsub fast float %1469, %869
  %1711 = fmul fast float %1650, %1710
  %1712 = fadd fast float %1711, %869
  br label %1713

; <label>:1713                                    ; preds = %1701, %1699, %1667, %1652, %1630, %1168, %872, %858
  %1714 = phi float [ %859, %1630 ], [ %859, %1168 ], [ %859, %858 ], [ %1704, %1701 ], [ %859, %1699 ], [ %1670, %1667 ], [ %1657, %1652 ], [ %859, %872 ]
  %1715 = phi float [ %860, %1630 ], [ %860, %1168 ], [ %860, %858 ], [ %1705, %1701 ], [ %860, %1699 ], [ %1671, %1667 ], [ %1658, %1652 ], [ %860, %872 ]
  %1716 = phi float [ %1631, %1630 ], [ %861, %1168 ], [ %861, %858 ], [ %1631, %1701 ], [ %1631, %1699 ], [ %1631, %1667 ], [ %1631, %1652 ], [ %861, %872 ]
  %1717 = phi float [ %1632, %1630 ], [ %862, %1168 ], [ %862, %858 ], [ %1632, %1701 ], [ %1632, %1699 ], [ %1632, %1667 ], [ %1632, %1652 ], [ %862, %872 ]
  %1718 = phi float [ %1633, %1630 ], [ %863, %1168 ], [ %863, %858 ], [ %1633, %1701 ], [ %1633, %1699 ], [ %1633, %1667 ], [ %1633, %1652 ], [ %863, %872 ]
  %1719 = phi float [ %1634, %1630 ], [ %864, %1168 ], [ %864, %858 ], [ %1634, %1701 ], [ %1634, %1699 ], [ %1634, %1667 ], [ %1634, %1652 ], [ %864, %872 ]
  %1720 = phi float [ %1635, %1630 ], [ %865, %1168 ], [ %865, %858 ], [ %1635, %1701 ], [ %1635, %1699 ], [ %1635, %1667 ], [ %1635, %1652 ], [ %865, %872 ]
  %1721 = phi float [ %1636, %1630 ], [ %866, %1168 ], [ %866, %858 ], [ %1636, %1701 ], [ %1636, %1699 ], [ %1636, %1667 ], [ %1636, %1652 ], [ %866, %872 ]
  %1722 = phi float [ %1637, %1630 ], [ %867, %1168 ], [ %867, %858 ], [ %1637, %1701 ], [ %1637, %1699 ], [ %1637, %1667 ], [ %1637, %1652 ], [ %867, %872 ]
  %1723 = phi float [ %869, %1630 ], [ %869, %1168 ], [ %869, %858 ], [ %1712, %1701 ], [ %869, %1699 ], [ %1698, %1667 ], [ %1664, %1652 ], [ %869, %872 ]
  %1724 = phi float [ %870, %1630 ], [ %870, %1168 ], [ %870, %858 ], [ %1709, %1701 ], [ %870, %1699 ], [ %1675, %1667 ], [ %1661, %1652 ], [ %870, %872 ]
  %1725 = phi float [ %1638, %1630 ], [ %871, %1168 ], [ %871, %858 ], [ %1638, %1701 ], [ %1638, %1699 ], [ %1638, %1667 ], [ %1638, %1652 ], [ %871, %872 ]
  br i1 %338, label %2567, label %1726

; <label>:1726                                    ; preds = %1713
  %1727 = icmp ult i32 %391, 3
  %1728 = add i32 %38, 56
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = add i32 %38, 60
  %1732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1731, i32 undef)  ; BufferLoad(srv,index,wot)
  %1733 = extractvalue %dx.types.ResRet.i32 %1732, 0
  %1734 = or i32 %1733, %1730
  %1735 = icmp eq i32 %1734, 0
  br i1 %1735, label %2567, label %1736

; <label>:1736                                    ; preds = %1726
  %1737 = and i32 %1730, 262144
  %1738 = icmp ne i32 %1737, 0
  %1739 = select i1 %1738, float %41, float 1.000000e+00
  %1740 = select i1 %1738, float %42, float 0.000000e+00
  %1741 = select i1 %1738, float %43, float 0.000000e+00
  %1742 = select i1 %1738, float %44, float 1.000000e+00
  %1743 = select i1 %1738, float %45, float %54
  %1744 = select i1 %1738, float %46, float %55
  %1745 = add i32 %38, 316
  %1746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %1747 = extractvalue %dx.types.ResRet.i32 %1746, 0
  %1748 = lshr i32 %1747, 16
  %1749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1748)  ; LegacyF16ToF32(value)
  %1750 = fmul fast float %1749, 0x3F50624DE0000000
  %1751 = add i32 %38, 120
  %1752 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %1753 = extractvalue %dx.types.ResRet.i32 %1752, 0
  %1754 = lshr i32 %1753, 16
  %1755 = and i32 %1754, 255
  %1756 = lshr i32 %1753, 24
  %1757 = add i32 %38, 324
  %1758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1757, i32 undef)  ; BufferLoad(srv,index,wot)
  %1759 = extractvalue %dx.types.ResRet.i32 %1758, 0
  %1760 = and i32 %1759, 65535
  %1761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1760)  ; LegacyF16ToF32(value)
  %1762 = lshr i32 %1759, 16
  %1763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1762)  ; LegacyF16ToF32(value)
  %1764 = add i32 %38, 64
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = lshr i32 %1766, 22
  %1768 = shl nuw nsw i32 %1767, 5
  %1769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1768)  ; LegacyF16ToF32(value)
  %1770 = shl i32 %1766, 4
  %1771 = and i32 %1770, 32752
  %1772 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1771)  ; LegacyF16ToF32(value)
  %1773 = lshr i32 %1766, 7
  %1774 = and i32 %1773, 32752
  %1775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1774)  ; LegacyF16ToF32(value)
  %1776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1777 = extractvalue %dx.types.CBufRet.f32 %1776, 3
  %1778 = fmul fast float %1777, 1.000000e+03
  %1779 = fmul fast float %288, %1778
  %1780 = call float @dx.op.unary.f32(i32 22, float %1779)  ; Frc(value)
  %1781 = fadd fast float %1780, %278
  %1782 = fmul fast float %289, %1778
  %1783 = call float @dx.op.unary.f32(i32 22, float %1782)  ; Frc(value)
  %1784 = fadd fast float %1783, %280
  %1785 = fmul fast float %1750, %1778
  %1786 = call float @dx.op.unary.f32(i32 22, float %1785)  ; Frc(value)
  %1787 = fmul fast float %1786, 0x401921FB60000000
  %1788 = fadd fast float %1787, %1769
  %1789 = call float @dx.op.unary.f32(i32 13, float %1788)  ; Sin(value)
  %1790 = call float @dx.op.unary.f32(i32 12, float %1788)  ; Cos(value)
  %1791 = fsub fast float -0.000000e+00, %1789
  %1792 = fadd fast float %1743, -5.000000e-01
  %1793 = fadd fast float %1744, -5.000000e-01
  %1794 = fmul fast float %1761, %1792
  %1795 = fmul fast float %1763, %1793
  %1796 = fadd fast float %1794, 5.000000e-01
  %1797 = fadd fast float %1795, 5.000000e-01
  %1798 = fmul fast float %1772, %1796
  %1799 = fmul fast float %1775, %1797
  %1800 = fmul fast float %1790, %1798
  %1801 = call float @dx.op.tertiary.f32(i32 46, float %1791, float %1799, float %1800)  ; FMad(a,b,c)
  %1802 = fmul fast float %1789, %1798
  %1803 = call float @dx.op.tertiary.f32(i32 46, float %1790, float %1799, float %1802)  ; FMad(a,b,c)
  %1804 = fadd fast float %1781, %1801
  %1805 = fadd fast float %1784, %1803
  %1806 = icmp ugt i32 %1755, 1
  %1807 = icmp ugt i32 %1753, 33554431
  %1808 = or i1 %1807, %1806
  br i1 %1808, label %1809, label %1834

; <label>:1809                                    ; preds = %1736
  %1810 = add i32 %38, 260
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = lshr i32 %1812, 16
  %1814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1813)  ; LegacyF16ToF32(value)
  %1815 = fmul fast float %1777, %1814
  %1816 = call float @dx.op.unary.f32(i32 22, float %1815)  ; Frc(value)
  %1817 = mul nuw nsw i32 %1755, %1756
  %1818 = uitofp i32 %1817 to float
  %1819 = fmul fast float %1816, %1818
  %1820 = call float @dx.op.unary.f32(i32 27, float %1819)  ; Round_ni(value)
  %1821 = fptoui float %1820 to i32
  %1822 = urem i32 %1821, %1755
  %1823 = udiv i32 %1821, %1756
  %1824 = call float @dx.op.unary.f32(i32 22, float %1804)  ; Frc(value)
  %1825 = call float @dx.op.unary.f32(i32 22, float %1805)  ; Frc(value)
  %1826 = uitofp i32 %1822 to float
  %1827 = uitofp i32 %1823 to float
  %1828 = fadd fast float %1824, %1826
  %1829 = fadd fast float %1825, %1827
  %1830 = uitofp i32 %1755 to float
  %1831 = uitofp i32 %1756 to float
  %1832 = fdiv fast float %1828, %1830
  %1833 = fdiv fast float %1829, %1831
  br label %1834

; <label>:1834                                    ; preds = %1809, %1736
  %1835 = phi float [ %1832, %1809 ], [ %1804, %1736 ]
  %1836 = phi float [ %1833, %1809 ], [ %1805, %1736 ]
  %1837 = and i32 %1730, 16777216
  %1838 = icmp eq i32 %1837, 0
  br i1 %1838, label %1948, label %1839

; <label>:1839                                    ; preds = %1834
  %1840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1841 = extractvalue %dx.types.CBufRet.f32 %1840, 0
  %1842 = extractvalue %dx.types.CBufRet.f32 %1840, 1
  %1843 = extractvalue %dx.types.CBufRet.f32 %1840, 2
  %1844 = fadd fast float %1841, %121
  %1845 = fadd fast float %1842, %122
  %1846 = fadd fast float %1843, %123
  %1847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1848 = extractvalue %dx.types.CBufRet.f32 %1847, 0
  %1849 = call float @dx.op.unary.f32(i32 7, float %1848)  ; Saturate(value)
  %1850 = icmp eq i32 %39, 65535
  br i1 %1850, label %1945, label %1851

; <label>:1851                                    ; preds = %1839
  %1852 = lshr i32 %39, 1
  %1853 = shl i32 %1852, 2
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = and i32 %39, 1
  %1857 = icmp ne i32 %1856, 0
  %1858 = lshr i32 %1855, 16
  %1859 = and i32 %1855, 65535
  %1860 = select i1 %1857, i32 %1858, i32 %1859
  %1861 = icmp eq i32 %1860, 65535
  br i1 %1861, label %1941, label %1862

; <label>:1862                                    ; preds = %1851
  %1863 = mul nuw nsw i32 %1860, 40
  %1864 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1863, i32 undef)  ; BufferLoad(srv,index,wot)
  %1865 = extractvalue %dx.types.ResRet.f32 %1864, 0
  %1866 = extractvalue %dx.types.ResRet.f32 %1864, 1
  %1867 = extractvalue %dx.types.ResRet.f32 %1864, 2
  %1868 = add nuw nsw i32 %1863, 12
  %1869 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.f32 %1869, 0
  %1871 = extractvalue %dx.types.ResRet.f32 %1869, 1
  %1872 = extractvalue %dx.types.ResRet.f32 %1869, 2
  %1873 = add nuw nsw i32 %1863, 24
  %1874 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.ResRet.f32 %1874, 1
  %1877 = extractvalue %dx.types.ResRet.f32 %1874, 2
  %1878 = add nuw nsw i32 %1863, 36
  %1879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = fsub fast float %1844, %1865
  %1882 = fsub fast float %1845, %1866
  %1883 = fsub fast float %1846, %1867
  %1884 = fmul fast float %1880, %1881
  %1885 = fmul fast float %1880, %1882
  %1886 = fmul fast float %1880, %1883
  %1887 = call float @dx.op.unary.f32(i32 27, float %1884)  ; Round_ni(value)
  %1888 = call float @dx.op.unary.f32(i32 27, float %1885)  ; Round_ni(value)
  %1889 = call float @dx.op.unary.f32(i32 27, float %1886)  ; Round_ni(value)
  %1890 = fadd fast float %1887, 5.000000e-01
  %1891 = fadd fast float %1888, 5.000000e-01
  %1892 = fadd fast float %1889, 5.000000e-01
  %1893 = fmul fast float %1890, %1870
  %1894 = fmul fast float %1891, %1871
  %1895 = fmul fast float %1892, %1872
  %1896 = shl i32 %39, 2
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = add i32 %1898, 0
  %1900 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1899, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1901 = call float @dx.op.unary.f32(i32 22, float %1893)  ; Frc(value)
  %1902 = call float @dx.op.unary.f32(i32 22, float %1894)  ; Frc(value)
  %1903 = call float @dx.op.unary.f32(i32 22, float %1895)  ; Frc(value)
  %1904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1900, %dx.types.Handle %35, float %1901, float %1902, float %1903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1905 = extractvalue %dx.types.ResRet.f32 %1904, 0
  %1906 = extractvalue %dx.types.ResRet.f32 %1904, 1
  %1907 = extractvalue %dx.types.ResRet.f32 %1904, 2
  %1908 = fmul fast float %1905, 1.023000e+03
  %1909 = fmul fast float %1906, 1.023000e+03
  %1910 = fmul fast float %1907, 1.023000e+03
  %1911 = fadd fast float %1908, 5.000000e-01
  %1912 = fadd fast float %1909, 5.000000e-01
  %1913 = fadd fast float %1910, 5.000000e-01
  %1914 = call float @dx.op.unary.f32(i32 27, float %1911)  ; Round_ni(value)
  %1915 = call float @dx.op.unary.f32(i32 27, float %1912)  ; Round_ni(value)
  %1916 = call float @dx.op.unary.f32(i32 27, float %1913)  ; Round_ni(value)
  %1917 = fsub fast float %1884, %1887
  %1918 = fsub fast float %1885, %1888
  %1919 = fsub fast float %1886, %1889
  %1920 = fmul fast float %1917, 7.500000e-01
  %1921 = fmul fast float %1918, 7.500000e-01
  %1922 = fmul fast float %1919, 7.500000e-01
  %1923 = fadd fast float %1887, 1.250000e-01
  %1924 = fadd fast float %1923, %1920
  %1925 = fadd fast float %1924, %1914
  %1926 = fadd fast float %1888, 1.250000e-01
  %1927 = fadd fast float %1926, %1921
  %1928 = fadd fast float %1927, %1915
  %1929 = fadd fast float %1889, 1.250000e-01
  %1930 = fadd fast float %1929, %1922
  %1931 = fadd fast float %1930, %1916
  %1932 = fmul fast float %1925, %1875
  %1933 = fmul fast float %1928, %1876
  %1934 = fmul fast float %1931, %1877
  %1935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1936 = extractvalue %dx.types.ResRet.i32 %1935, 0
  %1937 = add i32 %1936, 0
  %1938 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1937, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1938, %dx.types.Handle %33, float %1932, float %1933, float %1934, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1940 = extractvalue %dx.types.ResRet.f32 %1939, 0
  br label %1941

; <label>:1941                                    ; preds = %1862, %1851
  %1942 = phi float [ %1940, %1862 ], [ -1.000000e+00, %1851 ]
  %1943 = fadd fast float %1942, %1849
  %1944 = call float @dx.op.unary.f32(i32 7, float %1943)  ; Saturate(value)
  br label %1945

; <label>:1945                                    ; preds = %1941, %1839
  %1946 = phi float [ %1944, %1941 ], [ %1849, %1839 ]
  %1947 = fmul fast float %1946, %387
  br label %1948

; <label>:1948                                    ; preds = %1945, %1834
  %1949 = phi float [ %1947, %1945 ], [ %387, %1834 ]
  %1950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1951 = extractvalue %dx.types.ResRet.i32 %1950, 0
  %1952 = and i32 %1951, 256
  %1953 = icmp eq i32 %1952, 0
  br i1 %1953, label %2000, label %1954

; <label>:1954                                    ; preds = %1948
  %1955 = add i32 %38, 432
  %1956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1955, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.i32 %1956, 0
  %1958 = add i32 %1957, 0
  %1959 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1958, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1960 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1959, %dx.types.Handle %63, float %1835, float %1836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1961 = extractvalue %dx.types.ResRet.f32 %1960, 0
  %1962 = add i32 %38, 132
  %1963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.i32 %1963, 0
  %1965 = shl i32 %1964, 4
  %1966 = and i32 %1965, 32752
  %1967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1966)  ; LegacyF16ToF32(value)
  %1968 = lshr i32 %1964, 7
  %1969 = and i32 %1968, 32752
  %1970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1969)  ; LegacyF16ToF32(value)
  %1971 = fsub fast float 1.000000e+00, %1949
  %1972 = call float @dx.op.binary.f32(i32 35, float %1971, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1973 = bitcast float %1949 to i32
  %1974 = sitofp i32 %1973 to float
  %1975 = fadd fast float %1974, 0xC1CFBF8940000000
  %1976 = fmul fast float %1970, %1975
  %1977 = fadd fast float %1976, 0x41CFBF8940000000
  %1978 = fptosi float %1977 to i32
  %1979 = bitcast i32 %1978 to float
  %1980 = bitcast float %1972 to i32
  %1981 = sitofp i32 %1980 to float
  %1982 = fadd fast float %1981, 0xC1CFBF8940000000
  %1983 = fmul fast float %1982, %1970
  %1984 = fadd fast float %1983, 0x41CFBF8940000000
  %1985 = fptosi float %1984 to i32
  %1986 = bitcast i32 %1985 to float
  %1987 = fmul fast float %1979, %1967
  %1988 = fmul fast float %1986, %1967
  %1989 = fsub fast float %1972, %1987
  %1990 = fadd fast float %1988, %1972
  %1991 = call float @dx.op.unary.f32(i32 7, float %1989)  ; Saturate(value)
  %1992 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1993 = fsub fast float %1961, %1991
  %1994 = fsub fast float %1992, %1991
  %1995 = bitcast float %1994 to i32
  %1996 = sub nsw i32 2129859010, %1995
  %1997 = bitcast i32 %1996 to float
  %1998 = fmul fast float %1997, %1993
  %1999 = call float @dx.op.unary.f32(i32 7, float %1998)  ; Saturate(value)
  br label %2000

; <label>:2000                                    ; preds = %1954, %1948
  %2001 = phi float [ %1999, %1954 ], [ %1949, %1948 ]
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = and i32 %2003, 128
  %2005 = icmp eq i32 %2004, 0
  br i1 %2005, label %2022, label %2006

; <label>:2006                                    ; preds = %2000
  %2007 = add i32 %38, 416
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = add i32 %2009, 0
  %2011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2010, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2012 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2011, %dx.types.Handle %63, float %1835, float %1836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.i32 %2014, 0
  %2016 = and i32 %2015, 524288
  %2017 = icmp ne i32 %2016, 0
  %2018 = fcmp fast ogt float %2013, 0x3FE0101020000000
  %2019 = select i1 %2018, float 1.000000e+00, float 0.000000e+00
  %2020 = select i1 %2017, float %2019, float %2013
  %2021 = fmul fast float %2020, %2001
  br label %2022

; <label>:2022                                    ; preds = %2006, %2000
  %2023 = phi float [ %2021, %2006 ], [ %2001, %2000 ]
  %2024 = fcmp fast ult float %2023, 0x3F70101020000000
  br i1 %2024, label %2567, label %2025

; <label>:2025                                    ; preds = %2022
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = and i32 %2027, 16
  %2029 = icmp eq i32 %2028, 0
  br i1 %2029, label %2228, label %2030

; <label>:2030                                    ; preds = %2025
  %2031 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.i32 %2031, 0
  %2033 = add i32 %38, 368
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = add i32 %2035, 0
  %2037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2036, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2038 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2037, %dx.types.Handle %62, float %1835, float %1836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2039 = extractvalue %dx.types.ResRet.f32 %2038, 0
  %2040 = extractvalue %dx.types.ResRet.f32 %2038, 1
  %2041 = extractvalue %dx.types.ResRet.f32 %2038, 2
  %2042 = extractvalue %dx.types.ResRet.f32 %2038, 3
  %2043 = and i32 %2032, 255
  %2044 = uitofp i32 %2043 to float
  %2045 = lshr i32 %2032, 8
  %2046 = and i32 %2045, 255
  %2047 = uitofp i32 %2046 to float
  %2048 = fmul fast float %2042, %2044
  %2049 = fadd fast float %2048, %2047
  %2050 = fmul fast float %2049, 0x3F70101000000000
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = and i32 %2052, 512
  %2054 = icmp eq i32 %2053, 0
  br i1 %2054, label %2063, label %2055

; <label>:2055                                    ; preds = %2030
  %2056 = add i32 %38, 448
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2056, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = add i32 %2058, 0
  %2060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2061 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2060, %dx.types.Handle %63, float %1835, float %1836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2062 = extractvalue %dx.types.ResRet.f32 %2061, 0
  br label %2063

; <label>:2063                                    ; preds = %2055, %2030
  %2064 = phi float [ %2062, %2055 ], [ 1.000000e+00, %2030 ]
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = and i32 %2066, 33554432
  %2068 = icmp eq i32 %2067, 0
  br i1 %2068, label %2175, label %2069

; <label>:2069                                    ; preds = %2063
  %2070 = add i32 %38, 256
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = and i32 %2072, 65535
  %2074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2073)  ; LegacyF16ToF32(value)
  %2075 = lshr i32 %2072, 16
  %2076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2075)  ; LegacyF16ToF32(value)
  %2077 = add i32 %38, 260
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = and i32 %2079, 65535
  %2081 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2080)  ; LegacyF16ToF32(value)
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = lshr i32 %2083, 24
  %2085 = uitofp i32 %2084 to float
  %2086 = fmul fast float %2085, 0x3F70101020000000
  %2087 = and i32 %2083, 255
  %2088 = uitofp i32 %2087 to float
  %2089 = fmul fast float %2088, 0x3F70101020000000
  %2090 = lshr i32 %2083, 8
  %2091 = and i32 %2090, 255
  %2092 = uitofp i32 %2091 to float
  %2093 = fmul fast float %2092, 0x3F70101020000000
  %2094 = lshr i32 %2083, 16
  %2095 = and i32 %2094, 255
  %2096 = uitofp i32 %2095 to float
  %2097 = fmul fast float %2096, 0x3F70101020000000
  %2098 = add i32 %38, 252
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = lshr i32 %2100, 24
  %2102 = uitofp i32 %2101 to float
  %2103 = fmul fast float %2102, 0x3F70101020000000
  %2104 = and i32 %2100, 255
  %2105 = uitofp i32 %2104 to float
  %2106 = fmul fast float %2105, 0x3F70101020000000
  %2107 = lshr i32 %2100, 8
  %2108 = and i32 %2107, 255
  %2109 = uitofp i32 %2108 to float
  %2110 = fmul fast float %2109, 0x3F70101020000000
  %2111 = lshr i32 %2100, 16
  %2112 = and i32 %2111, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = fmul fast float %2113, 0x3F70101020000000
  %2115 = bitcast float %2039 to i32
  %2116 = ashr i32 %2115, 1
  %2117 = sub nsw i32 1597463174, %2116
  %2118 = bitcast i32 %2117 to float
  %2119 = fmul fast float %2039, 5.000000e-01
  %2120 = fmul fast float %2118, %2118
  %2121 = fmul fast float %2120, %2119
  %2122 = fsub fast float 1.500000e+00, %2121
  %2123 = fmul fast float %2118, %2039
  %2124 = fmul fast float %2123, %2122
  %2125 = bitcast float %2040 to i32
  %2126 = ashr i32 %2125, 1
  %2127 = sub nsw i32 1597463174, %2126
  %2128 = bitcast i32 %2127 to float
  %2129 = fmul fast float %2040, 5.000000e-01
  %2130 = fmul fast float %2128, %2128
  %2131 = fmul fast float %2130, %2129
  %2132 = fsub fast float 1.500000e+00, %2131
  %2133 = fmul fast float %2128, %2040
  %2134 = fmul fast float %2133, %2132
  %2135 = bitcast float %2041 to i32
  %2136 = ashr i32 %2135, 1
  %2137 = sub nsw i32 1597463174, %2136
  %2138 = bitcast i32 %2137 to float
  %2139 = fmul fast float %2041, 5.000000e-01
  %2140 = fmul fast float %2138, %2138
  %2141 = fmul fast float %2140, %2139
  %2142 = fsub fast float 1.500000e+00, %2141
  %2143 = fmul fast float %2138, %2041
  %2144 = fmul fast float %2143, %2142
  %2145 = fsub fast float %2124, %2106
  %2146 = fsub fast float %2134, %2110
  %2147 = fsub fast float %2144, %2114
  %2148 = fmul fast float %2145, %2074
  %2149 = fmul fast float %2146, %2076
  %2150 = fmul fast float %2147, %2081
  %2151 = fadd fast float %2148, %2089
  %2152 = fadd fast float %2149, %2093
  %2153 = fadd fast float %2150, %2097
  %2154 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2155 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  %2156 = call float @dx.op.unary.f32(i32 7, float %2153)  ; Saturate(value)
  %2157 = fmul fast float %2154, %2154
  %2158 = fmul fast float %2155, %2155
  %2159 = fmul fast float %2156, %2156
  %2160 = fsub fast float %2157, %2039
  %2161 = fsub fast float %2158, %2040
  %2162 = fsub fast float %2159, %2041
  %2163 = fmul fast float %2160, %2064
  %2164 = fmul fast float %2161, %2064
  %2165 = fmul fast float %2162, %2064
  %2166 = fadd fast float %2163, %2039
  %2167 = fadd fast float %2164, %2040
  %2168 = fadd fast float %2165, %2041
  %2169 = fadd fast float %2086, %2050
  %2170 = fsub fast float %2169, %2103
  %2171 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  %2172 = fsub fast float %2171, %2050
  %2173 = fmul fast float %2172, %2064
  %2174 = fadd fast float %2173, %2050
  br label %2228

; <label>:2175                                    ; preds = %2063
  %2176 = and i32 %2066, 134217728
  %2177 = icmp eq i32 %2176, 0
  br i1 %2177, label %2212, label %2178

; <label>:2178                                    ; preds = %2175
  %2179 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %2180 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %2181 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %2182 = fadd fast float %2179, -5.000000e-01
  %2183 = fadd fast float %2180, -5.000000e-01
  %2184 = fadd fast float %2181, -5.000000e-01
  %2185 = fmul fast float %2182, %2064
  %2186 = fmul fast float %2183, %2064
  %2187 = fmul fast float %2184, %2064
  %2188 = fadd fast float %2185, 5.000000e-01
  %2189 = fadd fast float %2186, 5.000000e-01
  %2190 = fadd fast float %2187, 5.000000e-01
  %2191 = call float @dx.op.unary.f32(i32 24, float %2039)  ; Sqrt(value)
  %2192 = call float @dx.op.unary.f32(i32 24, float %2040)  ; Sqrt(value)
  %2193 = call float @dx.op.unary.f32(i32 24, float %2041)  ; Sqrt(value)
  %2194 = fmul fast float %2188, 2.000000e+00
  %2195 = fsub fast float 1.000000e+00, %2194
  %2196 = fmul fast float %2195, %2191
  %2197 = fadd fast float %2196, %2194
  %2198 = fmul fast float %2197, %2191
  %2199 = fmul fast float %2189, 2.000000e+00
  %2200 = fsub fast float 1.000000e+00, %2199
  %2201 = fmul fast float %2200, %2192
  %2202 = fadd fast float %2201, %2199
  %2203 = fmul fast float %2202, %2192
  %2204 = fmul fast float %2190, 2.000000e+00
  %2205 = fsub fast float 1.000000e+00, %2204
  %2206 = fmul fast float %2205, %2193
  %2207 = fadd fast float %2206, %2204
  %2208 = fmul fast float %2207, %2193
  %2209 = fmul fast float %2198, %2198
  %2210 = fmul fast float %2203, %2203
  %2211 = fmul fast float %2208, %2208
  br label %2228

; <label>:2212                                    ; preds = %2175
  %2213 = fmul fast float %265, %265
  %2214 = fmul fast float %269, %269
  %2215 = fmul fast float %273, %273
  %2216 = fadd fast float %2213, -1.000000e+00
  %2217 = fadd fast float %2214, -1.000000e+00
  %2218 = fadd fast float %2215, -1.000000e+00
  %2219 = fmul fast float %2064, %2216
  %2220 = fmul fast float %2064, %2217
  %2221 = fmul fast float %2064, %2218
  %2222 = fadd fast float %2219, 1.000000e+00
  %2223 = fadd fast float %2220, 1.000000e+00
  %2224 = fadd fast float %2221, 1.000000e+00
  %2225 = fmul fast float %2222, %2039
  %2226 = fmul fast float %2223, %2040
  %2227 = fmul fast float %2224, %2041
  br label %2228

; <label>:2228                                    ; preds = %2212, %2178, %2069, %2025
  %2229 = phi float [ %2174, %2069 ], [ %2050, %2178 ], [ %2050, %2212 ], [ 0x3FA23C0BE0000000, %2025 ]
  %2230 = phi float [ %2166, %2069 ], [ %2209, %2178 ], [ %2225, %2212 ], [ 1.000000e+00, %2025 ]
  %2231 = phi float [ %2167, %2069 ], [ %2210, %2178 ], [ %2226, %2212 ], [ 1.000000e+00, %2025 ]
  %2232 = phi float [ %2168, %2069 ], [ %2211, %2178 ], [ %2227, %2212 ], [ 1.000000e+00, %2025 ]
  %2233 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2234 = extractvalue %dx.types.CBufRet.i32 %2233, 1
  %2235 = and i32 %2234, 1
  %2236 = icmp ne i32 %2235, 0
  %2237 = add i32 %38, 356
  %2238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2237, i32 undef)  ; BufferLoad(srv,index,wot)
  %2239 = extractvalue %dx.types.ResRet.i32 %2238, 0
  %2240 = and i32 %2239, 32
  %2241 = icmp ne i32 %2240, 0
  %2242 = and i1 %2236, %2241
  %2243 = select i1 %2242, float 1.000000e+00, float %2230
  %2244 = select i1 %2242, float 0x3FD3333340000000, float %2231
  %2245 = select i1 %2242, float 0x3FD3333340000000, float %2232
  %2246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2247 = extractvalue %dx.types.ResRet.i32 %2246, 0
  %2248 = and i32 %2247, 32
  %2249 = icmp eq i32 %2248, 0
  br i1 %2249, label %2322, label %2250

; <label>:2250                                    ; preds = %2228
  %2251 = add i32 %38, 124
  %2252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2251, i32 undef)  ; BufferLoad(srv,index,wot)
  %2253 = extractvalue %dx.types.ResRet.i32 %2252, 0
  %2254 = add i32 %38, 384
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = add i32 %2256, 0
  %2258 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2257, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2259 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2258, %dx.types.Handle %62, float %1835, float %1836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2260 = extractvalue %dx.types.ResRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.ResRet.f32 %2259, 1
  %2262 = extractvalue %dx.types.ResRet.f32 %2259, 2
  %2263 = extractvalue %dx.types.ResRet.f32 %2259, 3
  %2264 = and i32 %2253, 255
  %2265 = uitofp i32 %2264 to float
  %2266 = lshr i32 %2253, 8
  %2267 = and i32 %2266, 255
  %2268 = uitofp i32 %2267 to float
  %2269 = lshr i32 %2253, 16
  %2270 = and i32 %2269, 255
  %2271 = uitofp i32 %2270 to float
  %2272 = fmul fast float %2271, 0x3F70101000000000
  %2273 = fmul fast float %2260, %2265
  %2274 = fadd fast float %2273, %2268
  %2275 = fmul fast float %2274, 0x3F70101000000000
  %2276 = fadd fast float %2261, -5.000000e-01
  %2277 = fadd fast float %2263, -5.000000e-01
  %2278 = fmul fast float %2276, %2272
  %2279 = fmul fast float %2277, %2272
  %2280 = fadd fast float %2278, 5.000000e-01
  %2281 = fadd fast float %2279, 5.000000e-01
  %2282 = fmul fast float %2280, 2.000000e+00
  %2283 = fadd fast float %2282, -1.000000e+00
  %2284 = fmul fast float %2281, 2.000000e+00
  %2285 = fadd fast float %2284, -1.000000e+00
  %2286 = fadd fast float %2283, %2285
  %2287 = fmul fast float %2286, 5.000000e-01
  %2288 = fsub fast float %2283, %2285
  %2289 = fmul fast float %2288, 5.000000e-01
  %2290 = call float @dx.op.unary.f32(i32 6, float %2287)  ; FAbs(value)
  %2291 = fsub fast float 1.000000e+00, %2290
  %2292 = call float @dx.op.unary.f32(i32 6, float %2289)  ; FAbs(value)
  %2293 = fsub fast float %2291, %2292
  %2294 = call float @dx.op.dot3.f32(i32 55, float %2287, float %2289, float %2293, float %2287, float %2289, float %2293)  ; Dot3(ax,ay,az,bx,by,bz)
  %2295 = call float @dx.op.unary.f32(i32 25, float %2294)  ; Rsqrt(value)
  %2296 = fmul fast float %2287, %2295
  %2297 = fmul fast float %2289, %2295
  %2298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2299 = extractvalue %dx.types.ResRet.i32 %2298, 0
  %2300 = and i32 %2299, 67108864
  %2301 = icmp eq i32 %2300, 0
  br i1 %2301, label %2318, label %2302

; <label>:2302                                    ; preds = %2250
  %2303 = add i32 %38, 312
  %2304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2305 = extractvalue %dx.types.ResRet.i32 %2304, 0
  %2306 = and i32 %2305, 65535
  %2307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2306)  ; LegacyF16ToF32(value)
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1745, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 65535
  %2311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2310)  ; LegacyF16ToF32(value)
  %2312 = lshr i32 %2305, 16
  %2313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2312)  ; LegacyF16ToF32(value)
  %2314 = fsub fast float %2275, %2313
  %2315 = fmul fast float %2314, %2307
  %2316 = fadd fast float %2315, %2311
  %2317 = call float @dx.op.unary.f32(i32 7, float %2316)  ; Saturate(value)
  br label %2318

; <label>:2318                                    ; preds = %2302, %2250
  %2319 = phi float [ %2317, %2302 ], [ %2275, %2250 ]
  %2320 = call float @dx.op.dot2.f32(i32 54, float %2296, float %2297, float %1739, float %1740)  ; Dot2(ax,ay,bx,by)
  %2321 = call float @dx.op.dot2.f32(i32 54, float %2296, float %2297, float %1741, float %1742)  ; Dot2(ax,ay,bx,by)
  br label %2322

; <label>:2322                                    ; preds = %2318, %2228
  %2323 = phi float [ %2319, %2318 ], [ 0x3FD6666660000000, %2228 ]
  %2324 = phi float [ %2320, %2318 ], [ 0.000000e+00, %2228 ]
  %2325 = phi float [ %2321, %2318 ], [ 0.000000e+00, %2228 ]
  %2326 = phi float [ %2262, %2318 ], [ 1.000000e+00, %2228 ]
  %2327 = add i32 %38, 192
  %2328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2327, i32 undef)  ; BufferLoad(srv,index,wot)
  %2329 = extractvalue %dx.types.ResRet.i32 %2328, 0
  %2330 = lshr i32 %2329, 22
  %2331 = shl nuw nsw i32 %2330, 5
  %2332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2331)  ; LegacyF16ToF32(value)
  %2333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2334 = extractvalue %dx.types.ResRet.i32 %2333, 0
  %2335 = and i32 %2334, 64
  %2336 = icmp eq i32 %2335, 0
  br i1 %2336, label %2370, label %2337

; <label>:2337                                    ; preds = %2322
  %2338 = add i32 %38, 400
  %2339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2338, i32 undef)  ; BufferLoad(srv,index,wot)
  %2340 = extractvalue %dx.types.ResRet.i32 %2339, 0
  %2341 = add i32 %2340, 0
  %2342 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2341, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = and i32 %2344, 131072
  %2346 = icmp eq i32 %2345, 0
  %2347 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2342, %dx.types.Handle %62, float %1835, float %1836, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2348 = extractvalue %dx.types.ResRet.f32 %2347, 0
  %2349 = extractvalue %dx.types.ResRet.f32 %2347, 1
  %2350 = extractvalue %dx.types.ResRet.f32 %2347, 2
  %2351 = fmul fast float %2348, %253
  %2352 = fmul fast float %2349, %256
  %2353 = fmul fast float %2350, %259
  br i1 %2346, label %2360, label %2354

; <label>:2354                                    ; preds = %2337
  %2355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2356 = extractvalue %dx.types.CBufRet.f32 %2355, 0
  %2357 = fmul fast float %2356, %2351
  %2358 = fmul fast float %2356, %2352
  %2359 = fmul fast float %2356, %2353
  br label %2360

; <label>:2360                                    ; preds = %2354, %2337
  %2361 = phi float [ %2357, %2354 ], [ %2351, %2337 ]
  %2362 = phi float [ %2358, %2354 ], [ %2352, %2337 ]
  %2363 = phi float [ %2359, %2354 ], [ %2353, %2337 ]
  %2364 = fmul fast float %2361, %2332
  %2365 = select i1 %163, float %2364, float %2361
  %2366 = call float @dx.op.dot3.f32(i32 55, float %2365, float %2362, float %2363, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2367 = select i1 %163, float 0.000000e+00, float %2361
  %2368 = select i1 %163, float %2366, float %2362
  %2369 = select i1 %163, float 0.000000e+00, float %2363
  br label %2370

; <label>:2370                                    ; preds = %2360, %2322
  %2371 = phi float [ %2367, %2360 ], [ 0.000000e+00, %2322 ]
  %2372 = phi float [ %2368, %2360 ], [ 0.000000e+00, %2322 ]
  %2373 = phi float [ %2369, %2360 ], [ 0.000000e+00, %2322 ]
  %2374 = add i32 %38, 128
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = lshr i32 %2376, 8
  %2380 = and i32 %2379, 255
  %2381 = uitofp i32 %2380 to float
  %2382 = call float @dx.op.dot3.f32(i32 55, float %2243, float %2244, float %2245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2383 = fmul fast float %2381, %2382
  %2384 = fadd fast float %2383, %2378
  %2385 = fmul fast float %2384, 0x3F70101020000000
  %2386 = call float @dx.op.unary.f32(i32 7, float %2385)  ; Saturate(value)
  br i1 %1727, label %2387, label %2395

; <label>:2387                                    ; preds = %2370
  %2388 = fsub fast float 1.000000e+00, %2023
  %2389 = fmul fast float %2388, %1716
  %2390 = fmul fast float %2388, %1717
  %2391 = fmul fast float %2388, %1718
  %2392 = fmul fast float %2388, %1719
  %2393 = fmul fast float %2388, %1720
  %2394 = fmul fast float %2388, %1721
  br label %2395

; <label>:2395                                    ; preds = %2387, %2370
  %2396 = phi float [ %2389, %2387 ], [ %1716, %2370 ]
  %2397 = phi float [ %2390, %2387 ], [ %1717, %2370 ]
  %2398 = phi float [ %2391, %2387 ], [ %1718, %2370 ]
  %2399 = phi float [ %2392, %2387 ], [ %1719, %2370 ]
  %2400 = phi float [ %2393, %2387 ], [ %1720, %2370 ]
  %2401 = phi float [ %2394, %2387 ], [ %1721, %2370 ]
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = and i32 %2403, 3
  %2405 = icmp eq i32 %2404, 3
  br i1 %2405, label %2484, label %2406

; <label>:2406                                    ; preds = %2395
  %2407 = and i32 %2403, 16
  %2408 = icmp ne i32 %2407, 0
  %2409 = select i1 %2408, float %2023, float 0.000000e+00
  %2410 = icmp eq i32 %2404, 0
  br i1 %2410, label %2411, label %2439

; <label>:2411                                    ; preds = %2406
  %2412 = and i32 %2403, 64
  %2413 = icmp ne i32 %2412, 0
  %2414 = select i1 %2413, float %2023, float 0.000000e+00
  %2415 = fsub fast float %2243, %2396
  %2416 = fsub fast float %2244, %2397
  %2417 = fsub fast float %2245, %2398
  %2418 = fmul fast float %2409, %2415
  %2419 = fmul fast float %2409, %2416
  %2420 = fmul fast float %2409, %2417
  %2421 = fadd fast float %2418, %2396
  %2422 = fadd fast float %2419, %2397
  %2423 = fadd fast float %2420, %2398
  %2424 = fsub fast float %2229, %1722
  %2425 = fmul fast float %2409, %2424
  %2426 = fadd fast float %2425, %1722
  %2427 = fsub fast float %2371, %2399
  %2428 = fsub fast float %2372, %2400
  %2429 = fsub fast float %2373, %2401
  %2430 = fmul fast float %2414, %2427
  %2431 = fmul fast float %2414, %2428
  %2432 = fmul fast float %2414, %2429
  %2433 = fadd fast float %2430, %2399
  %2434 = fadd fast float %2431, %2400
  %2435 = fadd fast float %2432, %2401
  %2436 = fsub fast float %2386, %1725
  %2437 = fmul fast float %2409, %2436
  %2438 = fadd fast float %2437, %1725
  br label %2484

; <label>:2439                                    ; preds = %2406
  %2440 = icmp eq i32 %2404, 1
  br i1 %2440, label %2441, label %2454

; <label>:2441                                    ; preds = %2439
  %2442 = fadd fast float %2243, -1.000000e+00
  %2443 = fadd fast float %2244, -1.000000e+00
  %2444 = fadd fast float %2245, -1.000000e+00
  %2445 = fmul fast float %2409, %2442
  %2446 = fmul fast float %2409, %2443
  %2447 = fmul fast float %2409, %2444
  %2448 = fadd fast float %2445, 1.000000e+00
  %2449 = fadd fast float %2446, 1.000000e+00
  %2450 = fadd fast float %2447, 1.000000e+00
  %2451 = fmul fast float %2448, %2396
  %2452 = fmul fast float %2449, %2397
  %2453 = fmul fast float %2450, %2398
  br label %2484

; <label>:2454                                    ; preds = %2439
  %2455 = icmp eq i32 %2404, 2
  br i1 %2455, label %2456, label %2484

; <label>:2456                                    ; preds = %2454
  %2457 = call float @dx.op.unary.f32(i32 24, float %2243)  ; Sqrt(value)
  %2458 = call float @dx.op.unary.f32(i32 24, float %2244)  ; Sqrt(value)
  %2459 = call float @dx.op.unary.f32(i32 24, float %2245)  ; Sqrt(value)
  %2460 = fadd fast float %2457, -5.000000e-01
  %2461 = fadd fast float %2458, -5.000000e-01
  %2462 = fadd fast float %2459, -5.000000e-01
  %2463 = fmul fast float %2460, %2409
  %2464 = fmul fast float %2461, %2409
  %2465 = fmul fast float %2462, %2409
  %2466 = fadd fast float %2463, 5.000000e-01
  %2467 = fadd fast float %2464, 5.000000e-01
  %2468 = fadd fast float %2465, 5.000000e-01
  %2469 = fmul fast float %2466, 2.000000e+00
  %2470 = fsub fast float 1.000000e+00, %2469
  %2471 = fmul fast float %2470, %2396
  %2472 = fadd fast float %2471, %2469
  %2473 = fmul fast float %2472, %2396
  %2474 = fmul fast float %2467, 2.000000e+00
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = fmul fast float %2475, %2397
  %2477 = fadd fast float %2476, %2474
  %2478 = fmul fast float %2477, %2397
  %2479 = fmul fast float %2468, 2.000000e+00
  %2480 = fsub fast float 1.000000e+00, %2479
  %2481 = fmul fast float %2480, %2398
  %2482 = fadd fast float %2481, %2479
  %2483 = fmul fast float %2482, %2398
  br label %2484

; <label>:2484                                    ; preds = %2456, %2454, %2441, %2411, %2395
  %2485 = phi float [ %2396, %2395 ], [ %2473, %2456 ], [ %2396, %2454 ], [ %2451, %2441 ], [ %2421, %2411 ]
  %2486 = phi float [ %2397, %2395 ], [ %2478, %2456 ], [ %2397, %2454 ], [ %2452, %2441 ], [ %2422, %2411 ]
  %2487 = phi float [ %2398, %2395 ], [ %2483, %2456 ], [ %2398, %2454 ], [ %2453, %2441 ], [ %2423, %2411 ]
  %2488 = phi float [ %2399, %2395 ], [ %2399, %2456 ], [ %2399, %2454 ], [ %2399, %2441 ], [ %2433, %2411 ]
  %2489 = phi float [ %2400, %2395 ], [ %2400, %2456 ], [ %2400, %2454 ], [ %2400, %2441 ], [ %2434, %2411 ]
  %2490 = phi float [ %2401, %2395 ], [ %2401, %2456 ], [ %2401, %2454 ], [ %2401, %2441 ], [ %2435, %2411 ]
  %2491 = phi float [ %1722, %2395 ], [ %1722, %2456 ], [ %1722, %2454 ], [ %1722, %2441 ], [ %2426, %2411 ]
  %2492 = phi float [ %1725, %2395 ], [ %1725, %2456 ], [ %1725, %2454 ], [ %1725, %2441 ], [ %2438, %2411 ]
  %2493 = and i32 %2403, 12
  %2494 = icmp eq i32 %2493, 12
  br i1 %2494, label %2567, label %2495

; <label>:2495                                    ; preds = %2484
  %2496 = and i32 %2403, 2097184
  %2497 = icmp eq i32 %2496, 2097184
  %2498 = select i1 %2497, float %2023, float 0.000000e+00
  %2499 = and i32 %2403, 4194336
  %2500 = icmp eq i32 %2499, 4194336
  %2501 = select i1 %2500, float %2023, float 0.000000e+00
  %2502 = and i32 %2403, 8388640
  %2503 = icmp eq i32 %2502, 8388640
  %2504 = select i1 %2503, float %2023, float 0.000000e+00
  %2505 = icmp eq i32 %2493, 0
  br i1 %2505, label %2506, label %2519

; <label>:2506                                    ; preds = %2495
  %2507 = fsub fast float %2324, %1714
  %2508 = fsub fast float %2325, %1715
  %2509 = fmul fast float %2498, %2507
  %2510 = fmul fast float %2498, %2508
  %2511 = fadd fast float %2509, %1714
  %2512 = fadd fast float %2510, %1715
  %2513 = fsub fast float %2326, %1724
  %2514 = fmul fast float %2501, %2513
  %2515 = fadd fast float %2514, %1724
  %2516 = fsub fast float %2323, %1723
  %2517 = fmul fast float %2504, %2516
  %2518 = fadd fast float %2517, %1723
  br label %2567

; <label>:2519                                    ; preds = %2495
  %2520 = icmp eq i32 %2493, 4
  br i1 %2520, label %2521, label %2553

; <label>:2521                                    ; preds = %2519
  %2522 = fmul fast float %2498, %2324
  %2523 = fmul fast float %2498, %2325
  %2524 = fadd fast float %2522, %1714
  %2525 = fadd fast float %2523, %1715
  %2526 = call float @dx.op.binary.f32(i32 36, float %1724, float %2326)  ; FMin(a,b)
  %2527 = fsub fast float %2526, %1724
  %2528 = fmul fast float %2527, %2501
  %2529 = fadd fast float %2528, %1724
  %2530 = fadd fast float %2323, %1723
  %2531 = fmul fast float %2530, 0x3FF337FAE0000000
  %2532 = fmul fast float %1723, %1723
  %2533 = fmul fast float %2323, %2323
  %2534 = fadd fast float %2533, %2532
  %2535 = fmul fast float %2534, 0x3FE5152B00000000
  %2536 = fmul fast float %1723, 0xBFCC1F85E0000000
  %2537 = fmul fast float %2536, %2323
  %2538 = fadd fast float %2537, 0xBFE1363700000000
  %2539 = fadd fast float %2538, %2531
  %2540 = fsub fast float %2539, %2535
  %2541 = fmul fast float %2530, 0x3FBA6F0D00000000
  %2542 = fmul fast float %2534, 0x3FD0432880000000
  %2543 = fmul fast float %1723, 0xBFEF110800000000
  %2544 = fmul fast float %2543, %2323
  %2545 = fadd fast float %2544, 1.000000e+00
  %2546 = fsub fast float %2545, %2541
  %2547 = fadd fast float %2546, %2542
  %2548 = fdiv fast float %2540, %2547
  %2549 = call float @dx.op.unary.f32(i32 7, float %2548)  ; Saturate(value)
  %2550 = fsub fast float %2549, %1723
  %2551 = fmul fast float %2550, %2504
  %2552 = fadd fast float %2551, %1723
  br label %2567

; <label>:2553                                    ; preds = %2519
  %2554 = icmp eq i32 %2493, 8
  br i1 %2554, label %2555, label %2567

; <label>:2555                                    ; preds = %2553
  %2556 = fmul fast float %2498, %2324
  %2557 = fmul fast float %2498, %2325
  %2558 = fadd fast float %2556, %1714
  %2559 = fadd fast float %2557, %1715
  %2560 = call float @dx.op.binary.f32(i32 36, float %1724, float %2326)  ; FMin(a,b)
  %2561 = fsub fast float %2560, %1724
  %2562 = fmul fast float %2561, %2501
  %2563 = fadd fast float %2562, %1724
  %2564 = fsub fast float %2323, %1723
  %2565 = fmul fast float %2504, %2564
  %2566 = fadd fast float %2565, %1723
  br label %2567

; <label>:2567                                    ; preds = %2555, %2553, %2521, %2506, %2484, %2022, %1726, %1713
  %2568 = phi float [ %1714, %2484 ], [ %1714, %2022 ], [ %1714, %1713 ], [ %2558, %2555 ], [ %1714, %2553 ], [ %2524, %2521 ], [ %2511, %2506 ], [ %1714, %1726 ]
  %2569 = phi float [ %1715, %2484 ], [ %1715, %2022 ], [ %1715, %1713 ], [ %2559, %2555 ], [ %1715, %2553 ], [ %2525, %2521 ], [ %2512, %2506 ], [ %1715, %1726 ]
  %2570 = phi float [ %2485, %2484 ], [ %1716, %2022 ], [ %1716, %1713 ], [ %2485, %2555 ], [ %2485, %2553 ], [ %2485, %2521 ], [ %2485, %2506 ], [ %1716, %1726 ]
  %2571 = phi float [ %2486, %2484 ], [ %1717, %2022 ], [ %1717, %1713 ], [ %2486, %2555 ], [ %2486, %2553 ], [ %2486, %2521 ], [ %2486, %2506 ], [ %1717, %1726 ]
  %2572 = phi float [ %2487, %2484 ], [ %1718, %2022 ], [ %1718, %1713 ], [ %2487, %2555 ], [ %2487, %2553 ], [ %2487, %2521 ], [ %2487, %2506 ], [ %1718, %1726 ]
  %2573 = phi float [ %2488, %2484 ], [ %1719, %2022 ], [ %1719, %1713 ], [ %2488, %2555 ], [ %2488, %2553 ], [ %2488, %2521 ], [ %2488, %2506 ], [ %1719, %1726 ]
  %2574 = phi float [ %2489, %2484 ], [ %1720, %2022 ], [ %1720, %1713 ], [ %2489, %2555 ], [ %2489, %2553 ], [ %2489, %2521 ], [ %2489, %2506 ], [ %1720, %1726 ]
  %2575 = phi float [ %2490, %2484 ], [ %1721, %2022 ], [ %1721, %1713 ], [ %2490, %2555 ], [ %2490, %2553 ], [ %2490, %2521 ], [ %2490, %2506 ], [ %1721, %1726 ]
  %2576 = phi float [ %2491, %2484 ], [ %1722, %2022 ], [ %1722, %1713 ], [ %2491, %2555 ], [ %2491, %2553 ], [ %2491, %2521 ], [ %2491, %2506 ], [ %1722, %1726 ]
  %2577 = phi float [ %1723, %2484 ], [ %1723, %2022 ], [ %1723, %1713 ], [ %2566, %2555 ], [ %1723, %2553 ], [ %2552, %2521 ], [ %2518, %2506 ], [ %1723, %1726 ]
  %2578 = phi float [ %1724, %2484 ], [ %1724, %2022 ], [ %1724, %1713 ], [ %2563, %2555 ], [ %1724, %2553 ], [ %2529, %2521 ], [ %2515, %2506 ], [ %1724, %1726 ]
  %2579 = phi float [ %2492, %2484 ], [ %1725, %2022 ], [ %1725, %1713 ], [ %2492, %2555 ], [ %2492, %2553 ], [ %2492, %2521 ], [ %2492, %2506 ], [ %1725, %1726 ]
  br i1 %340, label %3421, label %2580

; <label>:2580                                    ; preds = %2567
  %2581 = icmp ult i32 %391, 4
  %2582 = add i32 %38, 72
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = add i32 %38, 76
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = or i32 %2587, %2584
  %2589 = icmp eq i32 %2588, 0
  br i1 %2589, label %3421, label %2590

; <label>:2590                                    ; preds = %2580
  %2591 = and i32 %2584, 262144
  %2592 = icmp ne i32 %2591, 0
  %2593 = select i1 %2592, float %41, float 1.000000e+00
  %2594 = select i1 %2592, float %42, float 0.000000e+00
  %2595 = select i1 %2592, float %43, float 0.000000e+00
  %2596 = select i1 %2592, float %44, float 1.000000e+00
  %2597 = select i1 %2592, float %45, float %54
  %2598 = select i1 %2592, float %46, float %55
  %2599 = add i32 %38, 332
  %2600 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2599, i32 undef)  ; BufferLoad(srv,index,wot)
  %2601 = extractvalue %dx.types.ResRet.i32 %2600, 0
  %2602 = lshr i32 %2601, 16
  %2603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2602)  ; LegacyF16ToF32(value)
  %2604 = fmul fast float %2603, 0x3F50624DE0000000
  %2605 = add i32 %38, 136
  %2606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2607 = extractvalue %dx.types.ResRet.i32 %2606, 0
  %2608 = lshr i32 %2607, 16
  %2609 = and i32 %2608, 255
  %2610 = lshr i32 %2607, 24
  %2611 = add i32 %38, 340
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = and i32 %2613, 65535
  %2615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2614)  ; LegacyF16ToF32(value)
  %2616 = lshr i32 %2613, 16
  %2617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2616)  ; LegacyF16ToF32(value)
  %2618 = add i32 %38, 80
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = lshr i32 %2620, 22
  %2622 = shl nuw nsw i32 %2621, 5
  %2623 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2622)  ; LegacyF16ToF32(value)
  %2624 = shl i32 %2620, 4
  %2625 = and i32 %2624, 32752
  %2626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2625)  ; LegacyF16ToF32(value)
  %2627 = lshr i32 %2620, 7
  %2628 = and i32 %2627, 32752
  %2629 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2628)  ; LegacyF16ToF32(value)
  %2630 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2631 = extractvalue %dx.types.CBufRet.f32 %2630, 3
  %2632 = fmul fast float %2631, 1.000000e+03
  %2633 = fmul fast float %330, %2632
  %2634 = call float @dx.op.unary.f32(i32 22, float %2633)  ; Frc(value)
  %2635 = fadd fast float %2634, %320
  %2636 = fmul fast float %331, %2632
  %2637 = call float @dx.op.unary.f32(i32 22, float %2636)  ; Frc(value)
  %2638 = fadd fast float %2637, %322
  %2639 = fmul fast float %2604, %2632
  %2640 = call float @dx.op.unary.f32(i32 22, float %2639)  ; Frc(value)
  %2641 = fmul fast float %2640, 0x401921FB60000000
  %2642 = fadd fast float %2641, %2623
  %2643 = call float @dx.op.unary.f32(i32 13, float %2642)  ; Sin(value)
  %2644 = call float @dx.op.unary.f32(i32 12, float %2642)  ; Cos(value)
  %2645 = fsub fast float -0.000000e+00, %2643
  %2646 = fadd fast float %2597, -5.000000e-01
  %2647 = fadd fast float %2598, -5.000000e-01
  %2648 = fmul fast float %2615, %2646
  %2649 = fmul fast float %2617, %2647
  %2650 = fadd fast float %2648, 5.000000e-01
  %2651 = fadd fast float %2649, 5.000000e-01
  %2652 = fmul fast float %2626, %2650
  %2653 = fmul fast float %2629, %2651
  %2654 = fmul fast float %2644, %2652
  %2655 = call float @dx.op.tertiary.f32(i32 46, float %2645, float %2653, float %2654)  ; FMad(a,b,c)
  %2656 = fmul fast float %2643, %2652
  %2657 = call float @dx.op.tertiary.f32(i32 46, float %2644, float %2653, float %2656)  ; FMad(a,b,c)
  %2658 = fadd fast float %2635, %2655
  %2659 = fadd fast float %2638, %2657
  %2660 = icmp ugt i32 %2609, 1
  %2661 = icmp ugt i32 %2607, 33554431
  %2662 = or i1 %2661, %2660
  br i1 %2662, label %2663, label %2688

; <label>:2663                                    ; preds = %2590
  %2664 = add i32 %38, 276
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = lshr i32 %2666, 16
  %2668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2667)  ; LegacyF16ToF32(value)
  %2669 = fmul fast float %2631, %2668
  %2670 = call float @dx.op.unary.f32(i32 22, float %2669)  ; Frc(value)
  %2671 = mul nuw nsw i32 %2609, %2610
  %2672 = uitofp i32 %2671 to float
  %2673 = fmul fast float %2670, %2672
  %2674 = call float @dx.op.unary.f32(i32 27, float %2673)  ; Round_ni(value)
  %2675 = fptoui float %2674 to i32
  %2676 = urem i32 %2675, %2609
  %2677 = udiv i32 %2675, %2610
  %2678 = call float @dx.op.unary.f32(i32 22, float %2658)  ; Frc(value)
  %2679 = call float @dx.op.unary.f32(i32 22, float %2659)  ; Frc(value)
  %2680 = uitofp i32 %2676 to float
  %2681 = uitofp i32 %2677 to float
  %2682 = fadd fast float %2678, %2680
  %2683 = fadd fast float %2679, %2681
  %2684 = uitofp i32 %2609 to float
  %2685 = uitofp i32 %2610 to float
  %2686 = fdiv fast float %2682, %2684
  %2687 = fdiv fast float %2683, %2685
  br label %2688

; <label>:2688                                    ; preds = %2663, %2590
  %2689 = phi float [ %2686, %2663 ], [ %2658, %2590 ]
  %2690 = phi float [ %2687, %2663 ], [ %2659, %2590 ]
  %2691 = and i32 %2584, 16777216
  %2692 = icmp eq i32 %2691, 0
  br i1 %2692, label %2802, label %2693

; <label>:2693                                    ; preds = %2688
  %2694 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2695 = extractvalue %dx.types.CBufRet.f32 %2694, 0
  %2696 = extractvalue %dx.types.CBufRet.f32 %2694, 1
  %2697 = extractvalue %dx.types.CBufRet.f32 %2694, 2
  %2698 = fadd fast float %2695, %121
  %2699 = fadd fast float %2696, %122
  %2700 = fadd fast float %2697, %123
  %2701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2702 = extractvalue %dx.types.CBufRet.f32 %2701, 0
  %2703 = call float @dx.op.unary.f32(i32 7, float %2702)  ; Saturate(value)
  %2704 = icmp eq i32 %39, 65535
  br i1 %2704, label %2799, label %2705

; <label>:2705                                    ; preds = %2693
  %2706 = lshr i32 %39, 1
  %2707 = shl i32 %2706, 2
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2707, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = and i32 %39, 1
  %2711 = icmp ne i32 %2710, 0
  %2712 = lshr i32 %2709, 16
  %2713 = and i32 %2709, 65535
  %2714 = select i1 %2711, i32 %2712, i32 %2713
  %2715 = icmp eq i32 %2714, 65535
  br i1 %2715, label %2795, label %2716

; <label>:2716                                    ; preds = %2705
  %2717 = mul nuw nsw i32 %2714, 40
  %2718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2717, i32 undef)  ; BufferLoad(srv,index,wot)
  %2719 = extractvalue %dx.types.ResRet.f32 %2718, 0
  %2720 = extractvalue %dx.types.ResRet.f32 %2718, 1
  %2721 = extractvalue %dx.types.ResRet.f32 %2718, 2
  %2722 = add nuw nsw i32 %2717, 12
  %2723 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2724 = extractvalue %dx.types.ResRet.f32 %2723, 0
  %2725 = extractvalue %dx.types.ResRet.f32 %2723, 1
  %2726 = extractvalue %dx.types.ResRet.f32 %2723, 2
  %2727 = add nuw nsw i32 %2717, 24
  %2728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2727, i32 undef)  ; BufferLoad(srv,index,wot)
  %2729 = extractvalue %dx.types.ResRet.f32 %2728, 0
  %2730 = extractvalue %dx.types.ResRet.f32 %2728, 1
  %2731 = extractvalue %dx.types.ResRet.f32 %2728, 2
  %2732 = add nuw nsw i32 %2717, 36
  %2733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2734 = extractvalue %dx.types.ResRet.f32 %2733, 0
  %2735 = fsub fast float %2698, %2719
  %2736 = fsub fast float %2699, %2720
  %2737 = fsub fast float %2700, %2721
  %2738 = fmul fast float %2734, %2735
  %2739 = fmul fast float %2734, %2736
  %2740 = fmul fast float %2734, %2737
  %2741 = call float @dx.op.unary.f32(i32 27, float %2738)  ; Round_ni(value)
  %2742 = call float @dx.op.unary.f32(i32 27, float %2739)  ; Round_ni(value)
  %2743 = call float @dx.op.unary.f32(i32 27, float %2740)  ; Round_ni(value)
  %2744 = fadd fast float %2741, 5.000000e-01
  %2745 = fadd fast float %2742, 5.000000e-01
  %2746 = fadd fast float %2743, 5.000000e-01
  %2747 = fmul fast float %2744, %2724
  %2748 = fmul fast float %2745, %2725
  %2749 = fmul fast float %2746, %2726
  %2750 = shl i32 %39, 2
  %2751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.i32 %2751, 0
  %2753 = add i32 %2752, 0
  %2754 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2753, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2755 = call float @dx.op.unary.f32(i32 22, float %2747)  ; Frc(value)
  %2756 = call float @dx.op.unary.f32(i32 22, float %2748)  ; Frc(value)
  %2757 = call float @dx.op.unary.f32(i32 22, float %2749)  ; Frc(value)
  %2758 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2754, %dx.types.Handle %35, float %2755, float %2756, float %2757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2759 = extractvalue %dx.types.ResRet.f32 %2758, 0
  %2760 = extractvalue %dx.types.ResRet.f32 %2758, 1
  %2761 = extractvalue %dx.types.ResRet.f32 %2758, 2
  %2762 = fmul fast float %2759, 1.023000e+03
  %2763 = fmul fast float %2760, 1.023000e+03
  %2764 = fmul fast float %2761, 1.023000e+03
  %2765 = fadd fast float %2762, 5.000000e-01
  %2766 = fadd fast float %2763, 5.000000e-01
  %2767 = fadd fast float %2764, 5.000000e-01
  %2768 = call float @dx.op.unary.f32(i32 27, float %2765)  ; Round_ni(value)
  %2769 = call float @dx.op.unary.f32(i32 27, float %2766)  ; Round_ni(value)
  %2770 = call float @dx.op.unary.f32(i32 27, float %2767)  ; Round_ni(value)
  %2771 = fsub fast float %2738, %2741
  %2772 = fsub fast float %2739, %2742
  %2773 = fsub fast float %2740, %2743
  %2774 = fmul fast float %2771, 7.500000e-01
  %2775 = fmul fast float %2772, 7.500000e-01
  %2776 = fmul fast float %2773, 7.500000e-01
  %2777 = fadd fast float %2741, 1.250000e-01
  %2778 = fadd fast float %2777, %2774
  %2779 = fadd fast float %2778, %2768
  %2780 = fadd fast float %2742, 1.250000e-01
  %2781 = fadd fast float %2780, %2775
  %2782 = fadd fast float %2781, %2769
  %2783 = fadd fast float %2743, 1.250000e-01
  %2784 = fadd fast float %2783, %2776
  %2785 = fadd fast float %2784, %2770
  %2786 = fmul fast float %2779, %2729
  %2787 = fmul fast float %2782, %2730
  %2788 = fmul fast float %2785, %2731
  %2789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2790 = extractvalue %dx.types.ResRet.i32 %2789, 0
  %2791 = add i32 %2790, 0
  %2792 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2791, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2793 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2792, %dx.types.Handle %33, float %2786, float %2787, float %2788, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2794 = extractvalue %dx.types.ResRet.f32 %2793, 0
  br label %2795

; <label>:2795                                    ; preds = %2716, %2705
  %2796 = phi float [ %2794, %2716 ], [ -1.000000e+00, %2705 ]
  %2797 = fadd fast float %2796, %2703
  %2798 = call float @dx.op.unary.f32(i32 7, float %2797)  ; Saturate(value)
  br label %2799

; <label>:2799                                    ; preds = %2795, %2693
  %2800 = phi float [ %2798, %2795 ], [ %2703, %2693 ]
  %2801 = fmul fast float %2800, %386
  br label %2802

; <label>:2802                                    ; preds = %2799, %2688
  %2803 = phi float [ %2801, %2799 ], [ %386, %2688 ]
  %2804 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2805 = extractvalue %dx.types.ResRet.i32 %2804, 0
  %2806 = and i32 %2805, 256
  %2807 = icmp eq i32 %2806, 0
  br i1 %2807, label %2854, label %2808

; <label>:2808                                    ; preds = %2802
  %2809 = add i32 %38, 436
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = add i32 %2811, 0
  %2813 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2812, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2814 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2813, %dx.types.Handle %63, float %2689, float %2690, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2815 = extractvalue %dx.types.ResRet.f32 %2814, 0
  %2816 = add i32 %38, 148
  %2817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2818 = extractvalue %dx.types.ResRet.i32 %2817, 0
  %2819 = shl i32 %2818, 4
  %2820 = and i32 %2819, 32752
  %2821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2820)  ; LegacyF16ToF32(value)
  %2822 = lshr i32 %2818, 7
  %2823 = and i32 %2822, 32752
  %2824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2823)  ; LegacyF16ToF32(value)
  %2825 = fsub fast float 1.000000e+00, %2803
  %2826 = call float @dx.op.binary.f32(i32 35, float %2825, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2827 = bitcast float %2803 to i32
  %2828 = sitofp i32 %2827 to float
  %2829 = fadd fast float %2828, 0xC1CFBF8940000000
  %2830 = fmul fast float %2824, %2829
  %2831 = fadd fast float %2830, 0x41CFBF8940000000
  %2832 = fptosi float %2831 to i32
  %2833 = bitcast i32 %2832 to float
  %2834 = bitcast float %2826 to i32
  %2835 = sitofp i32 %2834 to float
  %2836 = fadd fast float %2835, 0xC1CFBF8940000000
  %2837 = fmul fast float %2836, %2824
  %2838 = fadd fast float %2837, 0x41CFBF8940000000
  %2839 = fptosi float %2838 to i32
  %2840 = bitcast i32 %2839 to float
  %2841 = fmul fast float %2833, %2821
  %2842 = fmul fast float %2840, %2821
  %2843 = fsub fast float %2826, %2841
  %2844 = fadd fast float %2842, %2826
  %2845 = call float @dx.op.unary.f32(i32 7, float %2843)  ; Saturate(value)
  %2846 = call float @dx.op.unary.f32(i32 7, float %2844)  ; Saturate(value)
  %2847 = fsub fast float %2815, %2845
  %2848 = fsub fast float %2846, %2845
  %2849 = bitcast float %2848 to i32
  %2850 = sub nsw i32 2129859010, %2849
  %2851 = bitcast i32 %2850 to float
  %2852 = fmul fast float %2851, %2847
  %2853 = call float @dx.op.unary.f32(i32 7, float %2852)  ; Saturate(value)
  br label %2854

; <label>:2854                                    ; preds = %2808, %2802
  %2855 = phi float [ %2853, %2808 ], [ %2803, %2802 ]
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = and i32 %2857, 128
  %2859 = icmp eq i32 %2858, 0
  br i1 %2859, label %2876, label %2860

; <label>:2860                                    ; preds = %2854
  %2861 = add i32 %38, 420
  %2862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 0
  %2864 = add i32 %2863, 0
  %2865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2864, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2866 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2865, %dx.types.Handle %63, float %2689, float %2690, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2867 = extractvalue %dx.types.ResRet.f32 %2866, 0
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = and i32 %2869, 524288
  %2871 = icmp ne i32 %2870, 0
  %2872 = fcmp fast ogt float %2867, 0x3FE0101020000000
  %2873 = select i1 %2872, float 1.000000e+00, float 0.000000e+00
  %2874 = select i1 %2871, float %2873, float %2867
  %2875 = fmul fast float %2874, %2855
  br label %2876

; <label>:2876                                    ; preds = %2860, %2854
  %2877 = phi float [ %2875, %2860 ], [ %2855, %2854 ]
  %2878 = fcmp fast ult float %2877, 0x3F70101020000000
  br i1 %2878, label %3421, label %2879

; <label>:2879                                    ; preds = %2876
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = and i32 %2881, 16
  %2883 = icmp eq i32 %2882, 0
  br i1 %2883, label %3082, label %2884

; <label>:2884                                    ; preds = %2879
  %2885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2605, i32 undef)  ; BufferLoad(srv,index,wot)
  %2886 = extractvalue %dx.types.ResRet.i32 %2885, 0
  %2887 = add i32 %38, 372
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2887, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = add i32 %2889, 0
  %2891 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2890, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2892 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2891, %dx.types.Handle %62, float %2689, float %2690, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2893 = extractvalue %dx.types.ResRet.f32 %2892, 0
  %2894 = extractvalue %dx.types.ResRet.f32 %2892, 1
  %2895 = extractvalue %dx.types.ResRet.f32 %2892, 2
  %2896 = extractvalue %dx.types.ResRet.f32 %2892, 3
  %2897 = and i32 %2886, 255
  %2898 = uitofp i32 %2897 to float
  %2899 = lshr i32 %2886, 8
  %2900 = and i32 %2899, 255
  %2901 = uitofp i32 %2900 to float
  %2902 = fmul fast float %2896, %2898
  %2903 = fadd fast float %2902, %2901
  %2904 = fmul fast float %2903, 0x3F70101000000000
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = and i32 %2906, 512
  %2908 = icmp eq i32 %2907, 0
  br i1 %2908, label %2917, label %2909

; <label>:2909                                    ; preds = %2884
  %2910 = add i32 %38, 452
  %2911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2910, i32 undef)  ; BufferLoad(srv,index,wot)
  %2912 = extractvalue %dx.types.ResRet.i32 %2911, 0
  %2913 = add i32 %2912, 0
  %2914 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2913, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2915 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2914, %dx.types.Handle %63, float %2689, float %2690, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2916 = extractvalue %dx.types.ResRet.f32 %2915, 0
  br label %2917

; <label>:2917                                    ; preds = %2909, %2884
  %2918 = phi float [ %2916, %2909 ], [ 1.000000e+00, %2884 ]
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = and i32 %2920, 33554432
  %2922 = icmp eq i32 %2921, 0
  br i1 %2922, label %3029, label %2923

; <label>:2923                                    ; preds = %2917
  %2924 = add i32 %38, 272
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = and i32 %2926, 65535
  %2928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2927)  ; LegacyF16ToF32(value)
  %2929 = lshr i32 %2926, 16
  %2930 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2929)  ; LegacyF16ToF32(value)
  %2931 = add i32 %38, 276
  %2932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2931, i32 undef)  ; BufferLoad(srv,index,wot)
  %2933 = extractvalue %dx.types.ResRet.i32 %2932, 0
  %2934 = and i32 %2933, 65535
  %2935 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2934)  ; LegacyF16ToF32(value)
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = lshr i32 %2937, 24
  %2939 = uitofp i32 %2938 to float
  %2940 = fmul fast float %2939, 0x3F70101020000000
  %2941 = and i32 %2937, 255
  %2942 = uitofp i32 %2941 to float
  %2943 = fmul fast float %2942, 0x3F70101020000000
  %2944 = lshr i32 %2937, 8
  %2945 = and i32 %2944, 255
  %2946 = uitofp i32 %2945 to float
  %2947 = fmul fast float %2946, 0x3F70101020000000
  %2948 = lshr i32 %2937, 16
  %2949 = and i32 %2948, 255
  %2950 = uitofp i32 %2949 to float
  %2951 = fmul fast float %2950, 0x3F70101020000000
  %2952 = add i32 %38, 268
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = lshr i32 %2954, 24
  %2956 = uitofp i32 %2955 to float
  %2957 = fmul fast float %2956, 0x3F70101020000000
  %2958 = and i32 %2954, 255
  %2959 = uitofp i32 %2958 to float
  %2960 = fmul fast float %2959, 0x3F70101020000000
  %2961 = lshr i32 %2954, 8
  %2962 = and i32 %2961, 255
  %2963 = uitofp i32 %2962 to float
  %2964 = fmul fast float %2963, 0x3F70101020000000
  %2965 = lshr i32 %2954, 16
  %2966 = and i32 %2965, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = bitcast float %2893 to i32
  %2970 = ashr i32 %2969, 1
  %2971 = sub nsw i32 1597463174, %2970
  %2972 = bitcast i32 %2971 to float
  %2973 = fmul fast float %2893, 5.000000e-01
  %2974 = fmul fast float %2972, %2972
  %2975 = fmul fast float %2974, %2973
  %2976 = fsub fast float 1.500000e+00, %2975
  %2977 = fmul fast float %2972, %2893
  %2978 = fmul fast float %2977, %2976
  %2979 = bitcast float %2894 to i32
  %2980 = ashr i32 %2979, 1
  %2981 = sub nsw i32 1597463174, %2980
  %2982 = bitcast i32 %2981 to float
  %2983 = fmul fast float %2894, 5.000000e-01
  %2984 = fmul fast float %2982, %2982
  %2985 = fmul fast float %2984, %2983
  %2986 = fsub fast float 1.500000e+00, %2985
  %2987 = fmul fast float %2982, %2894
  %2988 = fmul fast float %2987, %2986
  %2989 = bitcast float %2895 to i32
  %2990 = ashr i32 %2989, 1
  %2991 = sub nsw i32 1597463174, %2990
  %2992 = bitcast i32 %2991 to float
  %2993 = fmul fast float %2895, 5.000000e-01
  %2994 = fmul fast float %2992, %2992
  %2995 = fmul fast float %2994, %2993
  %2996 = fsub fast float 1.500000e+00, %2995
  %2997 = fmul fast float %2992, %2895
  %2998 = fmul fast float %2997, %2996
  %2999 = fsub fast float %2978, %2960
  %3000 = fsub fast float %2988, %2964
  %3001 = fsub fast float %2998, %2968
  %3002 = fmul fast float %2999, %2928
  %3003 = fmul fast float %3000, %2930
  %3004 = fmul fast float %3001, %2935
  %3005 = fadd fast float %3002, %2943
  %3006 = fadd fast float %3003, %2947
  %3007 = fadd fast float %3004, %2951
  %3008 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  %3009 = call float @dx.op.unary.f32(i32 7, float %3006)  ; Saturate(value)
  %3010 = call float @dx.op.unary.f32(i32 7, float %3007)  ; Saturate(value)
  %3011 = fmul fast float %3008, %3008
  %3012 = fmul fast float %3009, %3009
  %3013 = fmul fast float %3010, %3010
  %3014 = fsub fast float %3011, %2893
  %3015 = fsub fast float %3012, %2894
  %3016 = fsub fast float %3013, %2895
  %3017 = fmul fast float %3014, %2918
  %3018 = fmul fast float %3015, %2918
  %3019 = fmul fast float %3016, %2918
  %3020 = fadd fast float %3017, %2893
  %3021 = fadd fast float %3018, %2894
  %3022 = fadd fast float %3019, %2895
  %3023 = fadd fast float %2940, %2904
  %3024 = fsub fast float %3023, %2957
  %3025 = call float @dx.op.unary.f32(i32 7, float %3024)  ; Saturate(value)
  %3026 = fsub fast float %3025, %2904
  %3027 = fmul fast float %3026, %2918
  %3028 = fadd fast float %3027, %2904
  br label %3082

; <label>:3029                                    ; preds = %2917
  %3030 = and i32 %2920, 134217728
  %3031 = icmp eq i32 %3030, 0
  br i1 %3031, label %3066, label %3032

; <label>:3032                                    ; preds = %3029
  %3033 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %3034 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %3035 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %3036 = fadd fast float %3033, -5.000000e-01
  %3037 = fadd fast float %3034, -5.000000e-01
  %3038 = fadd fast float %3035, -5.000000e-01
  %3039 = fmul fast float %3036, %2918
  %3040 = fmul fast float %3037, %2918
  %3041 = fmul fast float %3038, %2918
  %3042 = fadd fast float %3039, 5.000000e-01
  %3043 = fadd fast float %3040, 5.000000e-01
  %3044 = fadd fast float %3041, 5.000000e-01
  %3045 = call float @dx.op.unary.f32(i32 24, float %2893)  ; Sqrt(value)
  %3046 = call float @dx.op.unary.f32(i32 24, float %2894)  ; Sqrt(value)
  %3047 = call float @dx.op.unary.f32(i32 24, float %2895)  ; Sqrt(value)
  %3048 = fmul fast float %3042, 2.000000e+00
  %3049 = fsub fast float 1.000000e+00, %3048
  %3050 = fmul fast float %3049, %3045
  %3051 = fadd fast float %3050, %3048
  %3052 = fmul fast float %3051, %3045
  %3053 = fmul fast float %3043, 2.000000e+00
  %3054 = fsub fast float 1.000000e+00, %3053
  %3055 = fmul fast float %3054, %3046
  %3056 = fadd fast float %3055, %3053
  %3057 = fmul fast float %3056, %3046
  %3058 = fmul fast float %3044, 2.000000e+00
  %3059 = fsub fast float 1.000000e+00, %3058
  %3060 = fmul fast float %3059, %3047
  %3061 = fadd fast float %3060, %3058
  %3062 = fmul fast float %3061, %3047
  %3063 = fmul fast float %3052, %3052
  %3064 = fmul fast float %3057, %3057
  %3065 = fmul fast float %3062, %3062
  br label %3082

; <label>:3066                                    ; preds = %3029
  %3067 = fmul fast float %307, %307
  %3068 = fmul fast float %311, %311
  %3069 = fmul fast float %315, %315
  %3070 = fadd fast float %3067, -1.000000e+00
  %3071 = fadd fast float %3068, -1.000000e+00
  %3072 = fadd fast float %3069, -1.000000e+00
  %3073 = fmul fast float %2918, %3070
  %3074 = fmul fast float %2918, %3071
  %3075 = fmul fast float %2918, %3072
  %3076 = fadd fast float %3073, 1.000000e+00
  %3077 = fadd fast float %3074, 1.000000e+00
  %3078 = fadd fast float %3075, 1.000000e+00
  %3079 = fmul fast float %3076, %2893
  %3080 = fmul fast float %3077, %2894
  %3081 = fmul fast float %3078, %2895
  br label %3082

; <label>:3082                                    ; preds = %3066, %3032, %2923, %2879
  %3083 = phi float [ %3028, %2923 ], [ %2904, %3032 ], [ %2904, %3066 ], [ 0x3FA23C0BE0000000, %2879 ]
  %3084 = phi float [ %3020, %2923 ], [ %3063, %3032 ], [ %3079, %3066 ], [ 1.000000e+00, %2879 ]
  %3085 = phi float [ %3021, %2923 ], [ %3064, %3032 ], [ %3080, %3066 ], [ 1.000000e+00, %2879 ]
  %3086 = phi float [ %3022, %2923 ], [ %3065, %3032 ], [ %3081, %3066 ], [ 1.000000e+00, %2879 ]
  %3087 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3088 = extractvalue %dx.types.CBufRet.i32 %3087, 1
  %3089 = and i32 %3088, 1
  %3090 = icmp ne i32 %3089, 0
  %3091 = add i32 %38, 356
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = and i32 %3093, 32
  %3095 = icmp ne i32 %3094, 0
  %3096 = and i1 %3090, %3095
  %3097 = select i1 %3096, float 1.000000e+00, float %3084
  %3098 = select i1 %3096, float 0x3FD3333340000000, float %3085
  %3099 = select i1 %3096, float 0x3FD3333340000000, float %3086
  %3100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3101 = extractvalue %dx.types.ResRet.i32 %3100, 0
  %3102 = and i32 %3101, 32
  %3103 = icmp eq i32 %3102, 0
  br i1 %3103, label %3176, label %3104

; <label>:3104                                    ; preds = %3082
  %3105 = add i32 %38, 140
  %3106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3105, i32 undef)  ; BufferLoad(srv,index,wot)
  %3107 = extractvalue %dx.types.ResRet.i32 %3106, 0
  %3108 = add i32 %38, 388
  %3109 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3108, i32 undef)  ; BufferLoad(srv,index,wot)
  %3110 = extractvalue %dx.types.ResRet.i32 %3109, 0
  %3111 = add i32 %3110, 0
  %3112 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3111, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3113 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3112, %dx.types.Handle %62, float %2689, float %2690, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3114 = extractvalue %dx.types.ResRet.f32 %3113, 0
  %3115 = extractvalue %dx.types.ResRet.f32 %3113, 1
  %3116 = extractvalue %dx.types.ResRet.f32 %3113, 2
  %3117 = extractvalue %dx.types.ResRet.f32 %3113, 3
  %3118 = and i32 %3107, 255
  %3119 = uitofp i32 %3118 to float
  %3120 = lshr i32 %3107, 8
  %3121 = and i32 %3120, 255
  %3122 = uitofp i32 %3121 to float
  %3123 = lshr i32 %3107, 16
  %3124 = and i32 %3123, 255
  %3125 = uitofp i32 %3124 to float
  %3126 = fmul fast float %3125, 0x3F70101000000000
  %3127 = fmul fast float %3114, %3119
  %3128 = fadd fast float %3127, %3122
  %3129 = fmul fast float %3128, 0x3F70101000000000
  %3130 = fadd fast float %3115, -5.000000e-01
  %3131 = fadd fast float %3117, -5.000000e-01
  %3132 = fmul fast float %3130, %3126
  %3133 = fmul fast float %3131, %3126
  %3134 = fadd fast float %3132, 5.000000e-01
  %3135 = fadd fast float %3133, 5.000000e-01
  %3136 = fmul fast float %3134, 2.000000e+00
  %3137 = fadd fast float %3136, -1.000000e+00
  %3138 = fmul fast float %3135, 2.000000e+00
  %3139 = fadd fast float %3138, -1.000000e+00
  %3140 = fadd fast float %3137, %3139
  %3141 = fmul fast float %3140, 5.000000e-01
  %3142 = fsub fast float %3137, %3139
  %3143 = fmul fast float %3142, 5.000000e-01
  %3144 = call float @dx.op.unary.f32(i32 6, float %3141)  ; FAbs(value)
  %3145 = fsub fast float 1.000000e+00, %3144
  %3146 = call float @dx.op.unary.f32(i32 6, float %3143)  ; FAbs(value)
  %3147 = fsub fast float %3145, %3146
  %3148 = call float @dx.op.dot3.f32(i32 55, float %3141, float %3143, float %3147, float %3141, float %3143, float %3147)  ; Dot3(ax,ay,az,bx,by,bz)
  %3149 = call float @dx.op.unary.f32(i32 25, float %3148)  ; Rsqrt(value)
  %3150 = fmul fast float %3141, %3149
  %3151 = fmul fast float %3143, %3149
  %3152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3153 = extractvalue %dx.types.ResRet.i32 %3152, 0
  %3154 = and i32 %3153, 67108864
  %3155 = icmp eq i32 %3154, 0
  br i1 %3155, label %3172, label %3156

; <label>:3156                                    ; preds = %3104
  %3157 = add i32 %38, 328
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3157, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = and i32 %3159, 65535
  %3161 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3160)  ; LegacyF16ToF32(value)
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 65535
  %3165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3164)  ; LegacyF16ToF32(value)
  %3166 = lshr i32 %3159, 16
  %3167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3166)  ; LegacyF16ToF32(value)
  %3168 = fsub fast float %3129, %3167
  %3169 = fmul fast float %3168, %3161
  %3170 = fadd fast float %3169, %3165
  %3171 = call float @dx.op.unary.f32(i32 7, float %3170)  ; Saturate(value)
  br label %3172

; <label>:3172                                    ; preds = %3156, %3104
  %3173 = phi float [ %3171, %3156 ], [ %3129, %3104 ]
  %3174 = call float @dx.op.dot2.f32(i32 54, float %3150, float %3151, float %2593, float %2594)  ; Dot2(ax,ay,bx,by)
  %3175 = call float @dx.op.dot2.f32(i32 54, float %3150, float %3151, float %2595, float %2596)  ; Dot2(ax,ay,bx,by)
  br label %3176

; <label>:3176                                    ; preds = %3172, %3082
  %3177 = phi float [ %3173, %3172 ], [ 0x3FD6666660000000, %3082 ]
  %3178 = phi float [ %3174, %3172 ], [ 0.000000e+00, %3082 ]
  %3179 = phi float [ %3175, %3172 ], [ 0.000000e+00, %3082 ]
  %3180 = phi float [ %3116, %3172 ], [ 1.000000e+00, %3082 ]
  %3181 = add i32 %38, 208
  %3182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3181, i32 undef)  ; BufferLoad(srv,index,wot)
  %3183 = extractvalue %dx.types.ResRet.i32 %3182, 0
  %3184 = lshr i32 %3183, 22
  %3185 = shl nuw nsw i32 %3184, 5
  %3186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3185)  ; LegacyF16ToF32(value)
  %3187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3188 = extractvalue %dx.types.ResRet.i32 %3187, 0
  %3189 = and i32 %3188, 64
  %3190 = icmp eq i32 %3189, 0
  br i1 %3190, label %3224, label %3191

; <label>:3191                                    ; preds = %3176
  %3192 = add i32 %38, 404
  %3193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3192, i32 undef)  ; BufferLoad(srv,index,wot)
  %3194 = extractvalue %dx.types.ResRet.i32 %3193, 0
  %3195 = add i32 %3194, 0
  %3196 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3195, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = and i32 %3198, 131072
  %3200 = icmp eq i32 %3199, 0
  %3201 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3196, %dx.types.Handle %62, float %2689, float %2690, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3202 = extractvalue %dx.types.ResRet.f32 %3201, 0
  %3203 = extractvalue %dx.types.ResRet.f32 %3201, 1
  %3204 = extractvalue %dx.types.ResRet.f32 %3201, 2
  %3205 = fmul fast float %3202, %295
  %3206 = fmul fast float %3203, %298
  %3207 = fmul fast float %3204, %301
  br i1 %3200, label %3214, label %3208

; <label>:3208                                    ; preds = %3191
  %3209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3210 = extractvalue %dx.types.CBufRet.f32 %3209, 0
  %3211 = fmul fast float %3210, %3205
  %3212 = fmul fast float %3210, %3206
  %3213 = fmul fast float %3210, %3207
  br label %3214

; <label>:3214                                    ; preds = %3208, %3191
  %3215 = phi float [ %3211, %3208 ], [ %3205, %3191 ]
  %3216 = phi float [ %3212, %3208 ], [ %3206, %3191 ]
  %3217 = phi float [ %3213, %3208 ], [ %3207, %3191 ]
  %3218 = fmul fast float %3215, %3186
  %3219 = select i1 %163, float %3218, float %3215
  %3220 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3216, float %3217, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3221 = select i1 %163, float 0.000000e+00, float %3215
  %3222 = select i1 %163, float %3220, float %3216
  %3223 = select i1 %163, float 0.000000e+00, float %3217
  br label %3224

; <label>:3224                                    ; preds = %3214, %3176
  %3225 = phi float [ %3221, %3214 ], [ 0.000000e+00, %3176 ]
  %3226 = phi float [ %3222, %3214 ], [ 0.000000e+00, %3176 ]
  %3227 = phi float [ %3223, %3214 ], [ 0.000000e+00, %3176 ]
  %3228 = add i32 %38, 144
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = and i32 %3230, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = lshr i32 %3230, 8
  %3234 = and i32 %3233, 255
  %3235 = uitofp i32 %3234 to float
  %3236 = call float @dx.op.dot3.f32(i32 55, float %3097, float %3098, float %3099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3237 = fmul fast float %3235, %3236
  %3238 = fadd fast float %3237, %3232
  %3239 = fmul fast float %3238, 0x3F70101020000000
  %3240 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  br i1 %2581, label %3241, label %3249

; <label>:3241                                    ; preds = %3224
  %3242 = fsub fast float 1.000000e+00, %2877
  %3243 = fmul fast float %3242, %2570
  %3244 = fmul fast float %3242, %2571
  %3245 = fmul fast float %3242, %2572
  %3246 = fmul fast float %3242, %2573
  %3247 = fmul fast float %3242, %2574
  %3248 = fmul fast float %3242, %2575
  br label %3249

; <label>:3249                                    ; preds = %3241, %3224
  %3250 = phi float [ %3243, %3241 ], [ %2570, %3224 ]
  %3251 = phi float [ %3244, %3241 ], [ %2571, %3224 ]
  %3252 = phi float [ %3245, %3241 ], [ %2572, %3224 ]
  %3253 = phi float [ %3246, %3241 ], [ %2573, %3224 ]
  %3254 = phi float [ %3247, %3241 ], [ %2574, %3224 ]
  %3255 = phi float [ %3248, %3241 ], [ %2575, %3224 ]
  %3256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3257 = extractvalue %dx.types.ResRet.i32 %3256, 0
  %3258 = and i32 %3257, 3
  %3259 = icmp eq i32 %3258, 3
  br i1 %3259, label %3338, label %3260

; <label>:3260                                    ; preds = %3249
  %3261 = and i32 %3257, 16
  %3262 = icmp ne i32 %3261, 0
  %3263 = select i1 %3262, float %2877, float 0.000000e+00
  %3264 = icmp eq i32 %3258, 0
  br i1 %3264, label %3265, label %3293

; <label>:3265                                    ; preds = %3260
  %3266 = and i32 %3257, 64
  %3267 = icmp ne i32 %3266, 0
  %3268 = select i1 %3267, float %2877, float 0.000000e+00
  %3269 = fsub fast float %3097, %3250
  %3270 = fsub fast float %3098, %3251
  %3271 = fsub fast float %3099, %3252
  %3272 = fmul fast float %3263, %3269
  %3273 = fmul fast float %3263, %3270
  %3274 = fmul fast float %3263, %3271
  %3275 = fadd fast float %3272, %3250
  %3276 = fadd fast float %3273, %3251
  %3277 = fadd fast float %3274, %3252
  %3278 = fsub fast float %3083, %2576
  %3279 = fmul fast float %3263, %3278
  %3280 = fadd fast float %3279, %2576
  %3281 = fsub fast float %3225, %3253
  %3282 = fsub fast float %3226, %3254
  %3283 = fsub fast float %3227, %3255
  %3284 = fmul fast float %3268, %3281
  %3285 = fmul fast float %3268, %3282
  %3286 = fmul fast float %3268, %3283
  %3287 = fadd fast float %3284, %3253
  %3288 = fadd fast float %3285, %3254
  %3289 = fadd fast float %3286, %3255
  %3290 = fsub fast float %3240, %2579
  %3291 = fmul fast float %3263, %3290
  %3292 = fadd fast float %3291, %2579
  br label %3338

; <label>:3293                                    ; preds = %3260
  %3294 = icmp eq i32 %3258, 1
  br i1 %3294, label %3295, label %3308

; <label>:3295                                    ; preds = %3293
  %3296 = fadd fast float %3097, -1.000000e+00
  %3297 = fadd fast float %3098, -1.000000e+00
  %3298 = fadd fast float %3099, -1.000000e+00
  %3299 = fmul fast float %3263, %3296
  %3300 = fmul fast float %3263, %3297
  %3301 = fmul fast float %3263, %3298
  %3302 = fadd fast float %3299, 1.000000e+00
  %3303 = fadd fast float %3300, 1.000000e+00
  %3304 = fadd fast float %3301, 1.000000e+00
  %3305 = fmul fast float %3302, %3250
  %3306 = fmul fast float %3303, %3251
  %3307 = fmul fast float %3304, %3252
  br label %3338

; <label>:3308                                    ; preds = %3293
  %3309 = icmp eq i32 %3258, 2
  br i1 %3309, label %3310, label %3338

; <label>:3310                                    ; preds = %3308
  %3311 = call float @dx.op.unary.f32(i32 24, float %3097)  ; Sqrt(value)
  %3312 = call float @dx.op.unary.f32(i32 24, float %3098)  ; Sqrt(value)
  %3313 = call float @dx.op.unary.f32(i32 24, float %3099)  ; Sqrt(value)
  %3314 = fadd fast float %3311, -5.000000e-01
  %3315 = fadd fast float %3312, -5.000000e-01
  %3316 = fadd fast float %3313, -5.000000e-01
  %3317 = fmul fast float %3314, %3263
  %3318 = fmul fast float %3315, %3263
  %3319 = fmul fast float %3316, %3263
  %3320 = fadd fast float %3317, 5.000000e-01
  %3321 = fadd fast float %3318, 5.000000e-01
  %3322 = fadd fast float %3319, 5.000000e-01
  %3323 = fmul fast float %3320, 2.000000e+00
  %3324 = fsub fast float 1.000000e+00, %3323
  %3325 = fmul fast float %3324, %3250
  %3326 = fadd fast float %3325, %3323
  %3327 = fmul fast float %3326, %3250
  %3328 = fmul fast float %3321, 2.000000e+00
  %3329 = fsub fast float 1.000000e+00, %3328
  %3330 = fmul fast float %3329, %3251
  %3331 = fadd fast float %3330, %3328
  %3332 = fmul fast float %3331, %3251
  %3333 = fmul fast float %3322, 2.000000e+00
  %3334 = fsub fast float 1.000000e+00, %3333
  %3335 = fmul fast float %3334, %3252
  %3336 = fadd fast float %3335, %3333
  %3337 = fmul fast float %3336, %3252
  br label %3338

; <label>:3338                                    ; preds = %3310, %3308, %3295, %3265, %3249
  %3339 = phi float [ %3250, %3249 ], [ %3327, %3310 ], [ %3250, %3308 ], [ %3305, %3295 ], [ %3275, %3265 ]
  %3340 = phi float [ %3251, %3249 ], [ %3332, %3310 ], [ %3251, %3308 ], [ %3306, %3295 ], [ %3276, %3265 ]
  %3341 = phi float [ %3252, %3249 ], [ %3337, %3310 ], [ %3252, %3308 ], [ %3307, %3295 ], [ %3277, %3265 ]
  %3342 = phi float [ %3253, %3249 ], [ %3253, %3310 ], [ %3253, %3308 ], [ %3253, %3295 ], [ %3287, %3265 ]
  %3343 = phi float [ %3254, %3249 ], [ %3254, %3310 ], [ %3254, %3308 ], [ %3254, %3295 ], [ %3288, %3265 ]
  %3344 = phi float [ %3255, %3249 ], [ %3255, %3310 ], [ %3255, %3308 ], [ %3255, %3295 ], [ %3289, %3265 ]
  %3345 = phi float [ %2576, %3249 ], [ %2576, %3310 ], [ %2576, %3308 ], [ %2576, %3295 ], [ %3280, %3265 ]
  %3346 = phi float [ %2579, %3249 ], [ %2579, %3310 ], [ %2579, %3308 ], [ %2579, %3295 ], [ %3292, %3265 ]
  %3347 = and i32 %3257, 12
  %3348 = icmp eq i32 %3347, 12
  br i1 %3348, label %3421, label %3349

; <label>:3349                                    ; preds = %3338
  %3350 = and i32 %3257, 2097184
  %3351 = icmp eq i32 %3350, 2097184
  %3352 = select i1 %3351, float %2877, float 0.000000e+00
  %3353 = and i32 %3257, 4194336
  %3354 = icmp eq i32 %3353, 4194336
  %3355 = select i1 %3354, float %2877, float 0.000000e+00
  %3356 = and i32 %3257, 8388640
  %3357 = icmp eq i32 %3356, 8388640
  %3358 = select i1 %3357, float %2877, float 0.000000e+00
  %3359 = icmp eq i32 %3347, 0
  br i1 %3359, label %3360, label %3373

; <label>:3360                                    ; preds = %3349
  %3361 = fsub fast float %3178, %2568
  %3362 = fsub fast float %3179, %2569
  %3363 = fmul fast float %3352, %3361
  %3364 = fmul fast float %3352, %3362
  %3365 = fadd fast float %3363, %2568
  %3366 = fadd fast float %3364, %2569
  %3367 = fsub fast float %3180, %2578
  %3368 = fmul fast float %3355, %3367
  %3369 = fadd fast float %3368, %2578
  %3370 = fsub fast float %3177, %2577
  %3371 = fmul fast float %3358, %3370
  %3372 = fadd fast float %3371, %2577
  br label %3421

; <label>:3373                                    ; preds = %3349
  %3374 = icmp eq i32 %3347, 4
  br i1 %3374, label %3375, label %3407

; <label>:3375                                    ; preds = %3373
  %3376 = fmul fast float %3352, %3178
  %3377 = fmul fast float %3352, %3179
  %3378 = fadd fast float %3376, %2568
  %3379 = fadd fast float %3377, %2569
  %3380 = call float @dx.op.binary.f32(i32 36, float %2578, float %3180)  ; FMin(a,b)
  %3381 = fsub fast float %3380, %2578
  %3382 = fmul fast float %3381, %3355
  %3383 = fadd fast float %3382, %2578
  %3384 = fadd fast float %3177, %2577
  %3385 = fmul fast float %3384, 0x3FF337FAE0000000
  %3386 = fmul fast float %2577, %2577
  %3387 = fmul fast float %3177, %3177
  %3388 = fadd fast float %3387, %3386
  %3389 = fmul fast float %3388, 0x3FE5152B00000000
  %3390 = fmul fast float %2577, 0xBFCC1F85E0000000
  %3391 = fmul fast float %3390, %3177
  %3392 = fadd fast float %3391, 0xBFE1363700000000
  %3393 = fadd fast float %3392, %3385
  %3394 = fsub fast float %3393, %3389
  %3395 = fmul fast float %3384, 0x3FBA6F0D00000000
  %3396 = fmul fast float %3388, 0x3FD0432880000000
  %3397 = fmul fast float %2577, 0xBFEF110800000000
  %3398 = fmul fast float %3397, %3177
  %3399 = fadd fast float %3398, 1.000000e+00
  %3400 = fsub fast float %3399, %3395
  %3401 = fadd fast float %3400, %3396
  %3402 = fdiv fast float %3394, %3401
  %3403 = call float @dx.op.unary.f32(i32 7, float %3402)  ; Saturate(value)
  %3404 = fsub fast float %3403, %2577
  %3405 = fmul fast float %3404, %3358
  %3406 = fadd fast float %3405, %2577
  br label %3421

; <label>:3407                                    ; preds = %3373
  %3408 = icmp eq i32 %3347, 8
  br i1 %3408, label %3409, label %3421

; <label>:3409                                    ; preds = %3407
  %3410 = fmul fast float %3352, %3178
  %3411 = fmul fast float %3352, %3179
  %3412 = fadd fast float %3410, %2568
  %3413 = fadd fast float %3411, %2569
  %3414 = call float @dx.op.binary.f32(i32 36, float %2578, float %3180)  ; FMin(a,b)
  %3415 = fsub fast float %3414, %2578
  %3416 = fmul fast float %3415, %3355
  %3417 = fadd fast float %3416, %2578
  %3418 = fsub fast float %3177, %2577
  %3419 = fmul fast float %3358, %3418
  %3420 = fadd fast float %3419, %2577
  br label %3421

; <label>:3421                                    ; preds = %3409, %3407, %3375, %3360, %3338, %2876, %2580, %2567
  %3422 = phi float [ %2568, %3338 ], [ %2568, %2876 ], [ %2568, %2567 ], [ %2568, %2580 ], [ %3365, %3360 ], [ %3378, %3375 ], [ %2568, %3407 ], [ %3412, %3409 ]
  %3423 = phi float [ %2569, %3338 ], [ %2569, %2876 ], [ %2569, %2567 ], [ %2569, %2580 ], [ %3366, %3360 ], [ %3379, %3375 ], [ %2569, %3407 ], [ %3413, %3409 ]
  %3424 = phi float [ %3339, %3338 ], [ %2570, %2876 ], [ %2570, %2567 ], [ %2570, %2580 ], [ %3339, %3360 ], [ %3339, %3375 ], [ %3339, %3407 ], [ %3339, %3409 ]
  %3425 = phi float [ %3340, %3338 ], [ %2571, %2876 ], [ %2571, %2567 ], [ %2571, %2580 ], [ %3340, %3360 ], [ %3340, %3375 ], [ %3340, %3407 ], [ %3340, %3409 ]
  %3426 = phi float [ %3341, %3338 ], [ %2572, %2876 ], [ %2572, %2567 ], [ %2572, %2580 ], [ %3341, %3360 ], [ %3341, %3375 ], [ %3341, %3407 ], [ %3341, %3409 ]
  %3427 = phi float [ %3342, %3338 ], [ %2573, %2876 ], [ %2573, %2567 ], [ %2573, %2580 ], [ %3342, %3360 ], [ %3342, %3375 ], [ %3342, %3407 ], [ %3342, %3409 ]
  %3428 = phi float [ %3343, %3338 ], [ %2574, %2876 ], [ %2574, %2567 ], [ %2574, %2580 ], [ %3343, %3360 ], [ %3343, %3375 ], [ %3343, %3407 ], [ %3343, %3409 ]
  %3429 = phi float [ %3344, %3338 ], [ %2575, %2876 ], [ %2575, %2567 ], [ %2575, %2580 ], [ %3344, %3360 ], [ %3344, %3375 ], [ %3344, %3407 ], [ %3344, %3409 ]
  %3430 = phi float [ %3345, %3338 ], [ %2576, %2876 ], [ %2576, %2567 ], [ %2576, %2580 ], [ %3345, %3360 ], [ %3345, %3375 ], [ %3345, %3407 ], [ %3345, %3409 ]
  %3431 = phi float [ %2577, %3338 ], [ %2577, %2876 ], [ %2577, %2567 ], [ %2577, %2580 ], [ %3372, %3360 ], [ %3406, %3375 ], [ %2577, %3407 ], [ %3420, %3409 ]
  %3432 = phi float [ %2578, %3338 ], [ %2578, %2876 ], [ %2578, %2567 ], [ %2578, %2580 ], [ %3369, %3360 ], [ %3383, %3375 ], [ %2578, %3407 ], [ %3417, %3409 ]
  %3433 = phi float [ %3346, %3338 ], [ %2579, %2876 ], [ %2579, %2567 ], [ %2579, %2580 ], [ %3346, %3360 ], [ %3346, %3375 ], [ %3346, %3407 ], [ %3346, %3409 ]
  %3434 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3435 = extractvalue %dx.types.CBufRet.f32 %3434, 0
  %3436 = call float @dx.op.dot2.f32(i32 54, float %3422, float %3423, float %3422, float %3423)  ; Dot2(ax,ay,bx,by)
  %3437 = fmul fast float %3436, 0x3FE3333340000000
  %3438 = fsub fast float 1.000000e+00, %3437
  %3439 = call float @dx.op.dot3.f32(i32 55, float %3422, float %3423, float %3438, float %3422, float %3423, float %3438)  ; Dot3(ax,ay,az,bx,by,bz)
  %3440 = call float @dx.op.unary.f32(i32 25, float %3439)  ; Rsqrt(value)
  %3441 = fmul fast float %3440, %3422
  %3442 = fmul fast float %3440, %3423
  %3443 = fmul fast float %3438, %3440
  %3444 = fmul fast float %3443, %73
  %3445 = fmul fast float %3443, %74
  %3446 = fmul fast float %3443, %75
  %3447 = fmul fast float %3441, %47
  %3448 = fmul fast float %3441, %48
  %3449 = fmul fast float %3441, %49
  %3450 = fadd fast float %3444, %3447
  %3451 = fadd fast float %3445, %3448
  %3452 = fadd fast float %3446, %3449
  %3453 = fmul fast float %85, %3442
  %3454 = fmul fast float %86, %3442
  %3455 = fmul fast float %87, %3442
  %3456 = fadd fast float %3450, %3453
  %3457 = fadd fast float %3451, %3454
  %3458 = fadd fast float %3452, %3455
  %3459 = call float @dx.op.dot3.f32(i32 55, float %3456, float %3457, float %3458, float %3456, float %3457, float %3458)  ; Dot3(ax,ay,az,bx,by,bz)
  %3460 = call float @dx.op.unary.f32(i32 25, float %3459)  ; Rsqrt(value)
  %3461 = fmul fast float %3456, %3460
  %3462 = fmul fast float %3457, %3460
  %3463 = fmul fast float %3458, %3460
  %3464 = and i32 %40, 1
  %3465 = icmp eq i32 %3464, 0
  br i1 %3465, label %3466, label %3974

; <label>:3466                                    ; preds = %3421
  %3467 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %3468 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %3469 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %3470 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %3471 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %3472 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %3473 = fadd fast float %3467, %121
  %3474 = fadd fast float %3468, %122
  %3475 = fadd fast float %3469, %123
  %3476 = fadd fast float %3470, %121
  %3477 = fadd fast float %3471, %122
  %3478 = fadd fast float %3472, %123
  %3479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3480 = extractvalue %dx.types.CBufRet.f32 %3479, 0
  %3481 = extractvalue %dx.types.CBufRet.f32 %3479, 1
  %3482 = extractvalue %dx.types.CBufRet.f32 %3479, 2
  %3483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3484 = extractvalue %dx.types.CBufRet.f32 %3483, 2
  %3485 = extractvalue %dx.types.CBufRet.f32 %3483, 3
  %3486 = fmul fast float %3480, %66
  %3487 = fmul fast float %3486, %3484
  %3488 = fmul fast float %3481, %67
  %3489 = fmul fast float %3488, %3485
  %3490 = fptoui float %3487 to i32
  %3491 = fptoui float %3489 to i32
  %3492 = fadd fast float %3480, -1.000000e+00
  %3493 = fadd fast float %3481, -1.000000e+00
  %3494 = fptoui float %3492 to i32
  %3495 = fptoui float %3493 to i32
  %3496 = call i32 @dx.op.binary.i32(i32 40, i32 %3490, i32 %3494)  ; UMin(a,b)
  %3497 = call i32 @dx.op.binary.i32(i32 40, i32 %3491, i32 %3495)  ; UMin(a,b)
  %3498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3499 = extractvalue %dx.types.CBufRet.f32 %3498, 2
  %3500 = extractvalue %dx.types.CBufRet.f32 %3498, 3
  %3501 = fmul fast float %3499, %61
  %3502 = fsub fast float %3501, %3500
  %3503 = fadd fast float %3482, -1.000000e+00
  %3504 = call float @dx.op.binary.f32(i32 36, float %3502, float %3503)  ; FMin(a,b)
  %3505 = fptoui float %3504 to i32
  %3506 = fptoui float %3480 to i32
  %3507 = fptoui float %3481 to i32
  %3508 = mul i32 %3505, %3507
  %3509 = add i32 %3508, %3497
  %3510 = mul i32 %3509, %3506
  %3511 = add i32 %3510, %3496
  %3512 = shl i32 %3511, 2
  %3513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3512, i32 undef)  ; BufferLoad(srv,index,wot)
  %3514 = extractvalue %dx.types.ResRet.i32 %3513, 0
  %3515 = and i32 %3514, 1023
  %3516 = lshr i32 %3514, 10
  %3517 = icmp eq i32 %3515, 0
  br i1 %3517, label %3943, label %3518

; <label>:3518                                    ; preds = %3466
  %3519 = and i32 %3514, 1023
  br label %3520

; <label>:3520                                    ; preds = %3646, %3518
  %3521 = phi i32 [ %3596, %3646 ], [ 0, %3518 ]
  %3522 = phi float [ %3647, %3646 ], [ 0.000000e+00, %3518 ]
  %3523 = phi float [ %3648, %3646 ], [ %3435, %3518 ]
  %3524 = phi float [ %3649, %3646 ], [ %3433, %3518 ]
  %3525 = phi float [ %3650, %3646 ], [ 0.000000e+00, %3518 ]
  %3526 = phi float [ %3651, %3646 ], [ 0.000000e+00, %3518 ]
  %3527 = phi float [ %3652, %3646 ], [ %3427, %3518 ]
  %3528 = phi float [ %3653, %3646 ], [ %3428, %3518 ]
  %3529 = phi float [ %3654, %3646 ], [ %3429, %3518 ]
  %3530 = phi float [ %3655, %3646 ], [ %3461, %3518 ]
  %3531 = phi float [ %3656, %3646 ], [ %3462, %3518 ]
  %3532 = phi float [ %3657, %3646 ], [ %3463, %3518 ]
  %3533 = phi float [ %3658, %3646 ], [ %3432, %3518 ]
  %3534 = phi float [ %3659, %3646 ], [ %3431, %3518 ]
  %3535 = phi float [ %3660, %3646 ], [ 0.000000e+00, %3518 ]
  %3536 = phi float [ %3661, %3646 ], [ %3430, %3518 ]
  %3537 = phi float [ %3662, %3646 ], [ %3424, %3518 ]
  %3538 = phi float [ %3663, %3646 ], [ %3425, %3518 ]
  %3539 = phi float [ %3664, %3646 ], [ %3426, %3518 ]
  %3540 = add nuw nsw i32 %3521, %3516
  %3541 = shl i32 %3540, 2
  %3542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3541, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.i32 %3542, 0
  %3544 = shl i32 %3543, 8
  %3545 = or i32 %3544, 48
  %3546 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3545, i32 undef)  ; BufferLoad(srv,index,wot)
  %3547 = extractvalue %dx.types.ResRet.f32 %3546, 0
  %3548 = extractvalue %dx.types.ResRet.f32 %3546, 1
  %3549 = extractvalue %dx.types.ResRet.f32 %3546, 2
  %3550 = extractvalue %dx.types.ResRet.f32 %3546, 3
  %3551 = or i32 %3544, 64
  %3552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3551, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.i32 %3552, 0
  %3554 = extractvalue %dx.types.ResRet.i32 %3552, 1
  %3555 = or i32 %3544, 80
  %3556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.f32 %3556, 2
  %3558 = extractvalue %dx.types.ResRet.f32 %3556, 3
  %3559 = or i32 %3544, 96
  %3560 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.f32 %3560, 0
  %3562 = extractvalue %dx.types.ResRet.f32 %3560, 1
  %3563 = extractvalue %dx.types.ResRet.f32 %3560, 2
  %3564 = extractvalue %dx.types.ResRet.f32 %3560, 3
  %3565 = or i32 %3544, 112
  %3566 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3565, i32 undef)  ; BufferLoad(srv,index,wot)
  %3567 = extractvalue %dx.types.ResRet.f32 %3566, 2
  %3568 = or i32 %3544, 128
  %3569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3573 = extractvalue %dx.types.ResRet.f32 %3569, 3
  %3574 = or i32 %3544, 144
  %3575 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  %3577 = extractvalue %dx.types.ResRet.f32 %3575, 1
  %3578 = extractvalue %dx.types.ResRet.f32 %3575, 2
  %3579 = extractvalue %dx.types.ResRet.f32 %3575, 3
  %3580 = or i32 %3544, 160
  %3581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3583 = extractvalue %dx.types.ResRet.f32 %3581, 1
  %3584 = extractvalue %dx.types.ResRet.f32 %3581, 2
  %3585 = extractvalue %dx.types.ResRet.f32 %3581, 3
  %3586 = or i32 %3544, 192
  %3587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = or i32 %3544, 208
  %3590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3589, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.f32 %3590, 0
  %3592 = or i32 %3544, 248
  %3593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.ResRet.f32 %3593, 1
  %3596 = add nuw nsw i32 %3521, 1
  %3597 = bitcast float %3550 to i32
  %3598 = and i32 %3597, 512
  %3599 = icmp eq i32 %3598, 0
  %3600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3603 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3604 = extractvalue %dx.types.ResRet.f32 %3600, 3
  %3605 = call float @dx.op.dot4.f32(i32 56, float %3601, float %3602, float %3603, float %3604, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3606 = or i32 %3544, 16
  %3607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3610 = extractvalue %dx.types.ResRet.f32 %3607, 2
  %3611 = extractvalue %dx.types.ResRet.f32 %3607, 3
  %3612 = call float @dx.op.dot4.f32(i32 56, float %3608, float %3609, float %3610, float %3611, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3613 = or i32 %3544, 32
  %3614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3617 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3618 = extractvalue %dx.types.ResRet.f32 %3614, 3
  %3619 = call float @dx.op.dot4.f32(i32 56, float %3615, float %3616, float %3617, float %3618, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3620 = call float @dx.op.unary.f32(i32 27, float %3605)  ; Round_ni(value)
  %3621 = call float @dx.op.unary.f32(i32 6, float %3620)  ; FAbs(value)
  %3622 = call float @dx.op.unary.f32(i32 27, float %3612)  ; Round_ni(value)
  %3623 = call float @dx.op.unary.f32(i32 6, float %3622)  ; FAbs(value)
  %3624 = call float @dx.op.unary.f32(i32 6, float %3619)  ; FAbs(value)
  %3625 = call float @dx.op.unary.f32(i32 27, float %3624)  ; Round_ni(value)
  %3626 = fadd fast float %3623, %3621
  %3627 = fadd fast float %3626, %3625
  %3628 = fcmp fast oeq float %3627, 0.000000e+00
  %3629 = call float @dx.op.dot4.f32(i32 56, float %3601, float %3602, float %3603, float %3604, float %3473, float %3474, float %3475, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3630 = call float @dx.op.dot4.f32(i32 56, float %3608, float %3609, float %3610, float %3611, float %3473, float %3474, float %3475, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3631 = call float @dx.op.dot4.f32(i32 56, float %3601, float %3602, float %3603, float %3604, float %3476, float %3477, float %3478, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3632 = call float @dx.op.dot4.f32(i32 56, float %3608, float %3609, float %3610, float %3611, float %3476, float %3477, float %3478, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3633 = fsub fast float %3629, %3605
  %3634 = fsub fast float %3631, %3605
  %3635 = fsub fast float %3630, %3612
  %3636 = fsub fast float %3632, %3612
  %3637 = call float @dx.op.dot3.f32(i32 55, float %3547, float %3548, float %3549, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %3638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3639 = extractvalue %dx.types.CBufRet.f32 %3638, 2
  %3640 = fadd fast float %3639, %3637
  %3641 = call float @dx.op.unary.f32(i32 7, float %3640)  ; Saturate(value)
  %3642 = extractvalue %dx.types.CBufRet.f32 %3638, 0
  %3643 = fcmp fast ogt float %3641, %3642
  %3644 = and i1 %3628, %3643
  %3645 = and i1 %3599, %3644
  br i1 %3645, label %3666, label %3646

; <label>:3646                                    ; preds = %3929, %3747, %3666, %3520
  %3647 = phi float [ %3522, %3666 ], [ %3750, %3747 ], [ %3750, %3929 ], [ %3522, %3520 ]
  %3648 = phi float [ %3523, %3666 ], [ %3523, %3747 ], [ %3904, %3929 ], [ %3523, %3520 ]
  %3649 = phi float [ %3524, %3666 ], [ %3524, %3747 ], [ %3902, %3929 ], [ %3524, %3520 ]
  %3650 = phi float [ %3525, %3666 ], [ %3525, %3747 ], [ %3874, %3929 ], [ %3525, %3520 ]
  %3651 = phi float [ %3526, %3666 ], [ %3526, %3747 ], [ %3872, %3929 ], [ %3526, %3520 ]
  %3652 = phi float [ %3527, %3666 ], [ %3527, %3747 ], [ %3939, %3929 ], [ %3527, %3520 ]
  %3653 = phi float [ %3528, %3666 ], [ %3528, %3747 ], [ %3940, %3929 ], [ %3528, %3520 ]
  %3654 = phi float [ %3529, %3666 ], [ %3529, %3747 ], [ %3941, %3929 ], [ %3529, %3520 ]
  %3655 = phi float [ %3530, %3666 ], [ %3530, %3747 ], [ %3853, %3929 ], [ %3530, %3520 ]
  %3656 = phi float [ %3531, %3666 ], [ %3531, %3747 ], [ %3854, %3929 ], [ %3531, %3520 ]
  %3657 = phi float [ %3532, %3666 ], [ %3532, %3747 ], [ %3855, %3929 ], [ %3532, %3520 ]
  %3658 = phi float [ %3533, %3666 ], [ %3533, %3747 ], [ %3882, %3929 ], [ %3533, %3520 ]
  %3659 = phi float [ %3534, %3666 ], [ %3534, %3747 ], [ %3879, %3929 ], [ %3534, %3520 ]
  %3660 = phi float [ %3535, %3666 ], [ %3535, %3747 ], [ %3876, %3929 ], [ %3535, %3520 ]
  %3661 = phi float [ %3536, %3666 ], [ %3536, %3747 ], [ %3870, %3929 ], [ %3536, %3520 ]
  %3662 = phi float [ %3537, %3666 ], [ %3537, %3747 ], [ %3865, %3929 ], [ %3537, %3520 ]
  %3663 = phi float [ %3538, %3666 ], [ %3538, %3747 ], [ %3866, %3929 ], [ %3538, %3520 ]
  %3664 = phi float [ %3539, %3666 ], [ %3539, %3747 ], [ %3867, %3929 ], [ %3539, %3520 ]
  %3665 = icmp eq i32 %3596, %3519
  br i1 %3665, label %3942, label %3520

; <label>:3666                                    ; preds = %3520
  %3667 = extractvalue %dx.types.ResRet.f32 %3566, 3
  %3668 = extractvalue %dx.types.ResRet.f32 %3566, 1
  %3669 = extractvalue %dx.types.ResRet.f32 %3566, 0
  %3670 = extractvalue %dx.types.ResRet.f32 %3556, 1
  %3671 = extractvalue %dx.types.ResRet.f32 %3556, 0
  %3672 = extractvalue %dx.types.ResRet.i32 %3552, 3
  %3673 = extractvalue %dx.types.ResRet.i32 %3552, 2
  %3674 = add i32 %3672, 0
  %3675 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3674, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3676 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3677 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3675, %dx.types.Handle %3676, float %3605, float %3612, float undef, float undef, i32 0, i32 0, i32 undef, float %3633, float %3635, float undef, float %3634, float %3636, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = fmul fast float %3678, %3671
  %3680 = fadd fast float %3679, %3670
  %3681 = call float @dx.op.unary.f32(i32 7, float %3680)  ; Saturate(value)
  %3682 = fmul fast float %3605, %3561
  %3683 = call float @dx.op.tertiary.f32(i32 46, float %3562, float %3612, float %3682)  ; FMad(a,b,c)
  %3684 = fadd fast float %3683, %3669
  %3685 = fmul fast float %3605, %3563
  %3686 = call float @dx.op.tertiary.f32(i32 46, float %3564, float %3612, float %3685)  ; FMad(a,b,c)
  %3687 = fadd fast float %3686, %3668
  %3688 = fmul fast float %3633, %3561
  %3689 = call float @dx.op.tertiary.f32(i32 46, float %3562, float %3635, float %3688)  ; FMad(a,b,c)
  %3690 = fmul fast float %3633, %3563
  %3691 = call float @dx.op.tertiary.f32(i32 46, float %3564, float %3635, float %3690)  ; FMad(a,b,c)
  %3692 = fmul fast float %3634, %3561
  %3693 = call float @dx.op.tertiary.f32(i32 46, float %3562, float %3636, float %3692)  ; FMad(a,b,c)
  %3694 = fmul fast float %3634, %3563
  %3695 = call float @dx.op.tertiary.f32(i32 46, float %3564, float %3636, float %3694)  ; FMad(a,b,c)
  %3696 = add i32 %3673, 0
  %3697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3696, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3698 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3697, %dx.types.Handle %3676, float %3684, float %3687, float undef, float undef, i32 0, i32 0, i32 undef, float %3689, float %3691, float undef, float %3693, float %3695, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3699 = extractvalue %dx.types.ResRet.f32 %3698, 0
  %3700 = and i32 %3597, 1024
  %3701 = icmp ne i32 %3700, 0
  %3702 = fcmp fast ogt float %3699, 0x3FE0101020000000
  %3703 = uitofp i1 %3702 to float
  %3704 = select i1 %3701, float %3703, float %3699
  %3705 = and i32 %3597, 8192
  %3706 = icmp ne i32 %3705, 0
  %3707 = select i1 %3706, float %3667, float 1.000000e+00
  %3708 = fmul fast float %3605, 2.000000e+00
  %3709 = fadd fast float %3708, -1.000000e+00
  %3710 = call float @dx.op.unary.f32(i32 6, float %3709)  ; FAbs(value)
  %3711 = fmul fast float %3710, %3594
  %3712 = fsub fast float %3711, %3594
  %3713 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3714 = fmul fast float %3612, 2.000000e+00
  %3715 = fadd fast float %3714, -1.000000e+00
  %3716 = call float @dx.op.unary.f32(i32 6, float %3715)  ; FAbs(value)
  %3717 = fmul fast float %3716, %3595
  %3718 = fsub fast float %3717, %3595
  %3719 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3720 = fmul fast float %3624, %3557
  %3721 = fsub fast float %3720, %3557
  %3722 = call float @dx.op.unary.f32(i32 7, float %3721)  ; Saturate(value)
  %3723 = fmul fast float %3681, %3707
  %3724 = fmul fast float %3723, %3678
  %3725 = fmul fast float %3724, %3713
  %3726 = fmul fast float %3725, %3704
  %3727 = fmul fast float %3726, %3719
  %3728 = fmul fast float %3727, %3722
  %3729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3730 = extractvalue %dx.types.CBufRet.f32 %3729, 1
  %3731 = extractvalue %dx.types.CBufRet.f32 %3729, 0
  %3732 = fsub fast float %3641, %3731
  %3733 = fmul fast float %3732, %3730
  %3734 = call float @dx.op.unary.f32(i32 7, float %3733)  ; Saturate(value)
  %3735 = fmul fast float %3728, %3558
  %3736 = fadd fast float %3728, %3558
  %3737 = fmul fast float %3736, %3567
  %3738 = fsub fast float %3737, %3567
  %3739 = call float @dx.op.unary.f32(i32 7, float %3738)  ; Saturate(value)
  %3740 = and i32 %3597, 128
  %3741 = icmp ne i32 %3740, 0
  %3742 = select i1 %3741, float %3739, float %3735
  %3743 = fmul fast float %3742, %3734
  %3744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3745 = extractvalue %dx.types.CBufRet.f32 %3744, 0
  %3746 = fcmp fast ugt float %3743, %3745
  br i1 %3746, label %3747, label %3646

; <label>:3747                                    ; preds = %3666
  %3748 = select i1 %3706, float %3743, float 0.000000e+00
  %3749 = fadd fast float %3748, %3522
  %3750 = call float @dx.op.unary.f32(i32 7, float %3749)  ; Saturate(value)
  br i1 %3706, label %3646, label %3751

; <label>:3751                                    ; preds = %3747
  %3752 = and i32 %3597, 4
  %3753 = and i32 %3597, 8
  %3754 = add i32 %3553, 0
  %3755 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3754, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3756 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3757 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3755, %dx.types.Handle %3756, float %3684, float %3687, float undef, float undef, i32 0, i32 0, i32 undef, float %3689, float %3691, float undef, float %3693, float %3695, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3758 = extractvalue %dx.types.ResRet.f32 %3757, 0
  %3759 = extractvalue %dx.types.ResRet.f32 %3757, 1
  %3760 = extractvalue %dx.types.ResRet.f32 %3757, 2
  %3761 = extractvalue %dx.types.ResRet.f32 %3757, 3
  %3762 = bitcast float %3579 to i32
  %3763 = and i32 %3762, 255
  %3764 = uitofp i32 %3763 to float
  %3765 = lshr i32 %3762, 8
  %3766 = and i32 %3765, 255
  %3767 = uitofp i32 %3766 to float
  %3768 = fmul fast float %3761, %3764
  %3769 = fadd fast float %3768, %3767
  %3770 = fmul fast float %3769, 0x3F70101000000000
  %3771 = add i32 %3554, 0
  %3772 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3771, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3773 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3772, %dx.types.Handle %3756, float %3684, float %3687, float undef, float undef, i32 0, i32 0, i32 undef, float %3689, float %3691, float undef, float %3693, float %3695, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3774 = extractvalue %dx.types.ResRet.f32 %3773, 0
  %3775 = extractvalue %dx.types.ResRet.f32 %3773, 1
  %3776 = extractvalue %dx.types.ResRet.f32 %3773, 2
  %3777 = extractvalue %dx.types.ResRet.f32 %3773, 3
  %3778 = bitcast float %3573 to i32
  %3779 = and i32 %3778, 255
  %3780 = uitofp i32 %3779 to float
  %3781 = lshr i32 %3778, 8
  %3782 = and i32 %3781, 255
  %3783 = uitofp i32 %3782 to float
  %3784 = lshr i32 %3778, 16
  %3785 = and i32 %3784, 255
  %3786 = uitofp i32 %3785 to float
  %3787 = fmul fast float %3786, 0x3F70101000000000
  %3788 = fmul fast float %3774, %3780
  %3789 = fadd fast float %3788, %3783
  %3790 = fmul fast float %3789, 0x3F70101000000000
  %3791 = fadd fast float %3775, -5.000000e-01
  %3792 = fadd fast float %3777, -5.000000e-01
  %3793 = fmul fast float %3791, %3787
  %3794 = fmul fast float %3792, %3787
  %3795 = fadd fast float %3793, 5.000000e-01
  %3796 = fadd fast float %3794, 5.000000e-01
  %3797 = fmul fast float %3758, %3582
  %3798 = fmul fast float %3759, %3583
  %3799 = fmul fast float %3760, %3584
  %3800 = fmul fast float %3795, 2.000000e+00
  %3801 = fadd fast float %3800, -1.000000e+00
  %3802 = fmul fast float %3796, 2.000000e+00
  %3803 = fadd fast float %3802, -1.000000e+00
  %3804 = fadd fast float %3801, %3803
  %3805 = fmul fast float %3804, 5.000000e-01
  %3806 = fsub fast float %3801, %3803
  %3807 = fmul fast float %3806, 5.000000e-01
  %3808 = call float @dx.op.unary.f32(i32 6, float %3805)  ; FAbs(value)
  %3809 = fsub fast float 1.000000e+00, %3808
  %3810 = call float @dx.op.unary.f32(i32 6, float %3807)  ; FAbs(value)
  %3811 = fsub fast float %3809, %3810
  %3812 = call float @dx.op.dot3.f32(i32 55, float %3805, float %3807, float %3811, float %3805, float %3807, float %3811)  ; Dot3(ax,ay,az,bx,by,bz)
  %3813 = call float @dx.op.unary.f32(i32 25, float %3812)  ; Rsqrt(value)
  %3814 = fmul fast float %3805, %3813
  %3815 = fmul fast float %3807, %3813
  %3816 = fmul fast float %3813, %3811
  %3817 = fmul fast float %3816, %3547
  %3818 = fmul fast float %3816, %3548
  %3819 = fmul fast float %3816, %3549
  %3820 = fmul fast float %3814, %3570
  %3821 = fmul fast float %3814, %3571
  %3822 = fmul fast float %3814, %3572
  %3823 = fadd fast float %3820, %3817
  %3824 = fadd fast float %3821, %3818
  %3825 = fadd fast float %3822, %3819
  %3826 = fmul fast float %3815, %3576
  %3827 = fmul fast float %3815, %3577
  %3828 = fmul fast float %3815, %3578
  %3829 = fadd fast float %3823, %3826
  %3830 = fadd fast float %3824, %3827
  %3831 = fadd fast float %3825, %3828
  %3832 = call float @dx.op.dot3.f32(i32 55, float %3829, float %3830, float %3831, float %3829, float %3830, float %3831)  ; Dot3(ax,ay,az,bx,by,bz)
  %3833 = call float @dx.op.unary.f32(i32 25, float %3832)  ; Rsqrt(value)
  %3834 = fmul fast float %3829, %3833
  %3835 = fmul fast float %3830, %3833
  %3836 = fmul fast float %3831, %3833
  %3837 = icmp ne i32 %3753, 0
  %3838 = select i1 %3837, float 1.000000e+00, float 0.000000e+00
  %3839 = fmul fast float %3743, %3838
  %3840 = and i32 %3597, 1
  %3841 = icmp eq i32 %3840, 0
  br i1 %3841, label %3842, label %3846

; <label>:3842                                    ; preds = %3751
  %3843 = fsub fast float %3834, %3530
  %3844 = fsub fast float %3835, %3531
  %3845 = fsub fast float %3836, %3532
  br label %3846

; <label>:3846                                    ; preds = %3842, %3751
  %3847 = phi float [ %3843, %3842 ], [ %3834, %3751 ]
  %3848 = phi float [ %3844, %3842 ], [ %3835, %3751 ]
  %3849 = phi float [ %3845, %3842 ], [ %3836, %3751 ]
  %3850 = fmul float %3849, %3839
  %3851 = fmul float %3848, %3839
  %3852 = fmul float %3847, %3839
  %3853 = fadd fast float %3852, %3530
  %3854 = fadd fast float %3851, %3531
  %3855 = fadd fast float %3850, %3532
  %3856 = icmp ne i32 %3752, 0
  %3857 = select i1 %3856, float 1.000000e+00, float 0.000000e+00
  %3858 = fmul fast float %3743, %3857
  %3859 = fsub fast float %3797, %3537
  %3860 = fsub fast float %3798, %3538
  %3861 = fsub fast float %3799, %3539
  %3862 = fmul fast float %3859, %3858
  %3863 = fmul fast float %3860, %3858
  %3864 = fmul fast float %3861, %3858
  %3865 = fadd fast float %3862, %3537
  %3866 = fadd fast float %3863, %3538
  %3867 = fadd fast float %3864, %3539
  %3868 = fsub fast float %3770, %3536
  %3869 = fmul fast float %3868, %3858
  %3870 = fadd fast float %3869, %3536
  %3871 = fmul fast float %3858, %3526
  %3872 = fsub fast float %3526, %3871
  %3873 = fmul fast float %3858, %3525
  %3874 = fsub fast float %3525, %3873
  %3875 = fadd fast float %3743, %3535
  %3876 = call float @dx.op.unary.f32(i32 7, float %3875)  ; Saturate(value)
  %3877 = fsub fast float %3790, %3534
  %3878 = fmul fast float %3877, %3839
  %3879 = fadd fast float %3878, %3534
  %3880 = fsub fast float %3776, %3533
  %3881 = fmul fast float %3880, %3839
  %3882 = fadd fast float %3881, %3533
  %3883 = call float @dx.op.dot3.f32(i32 55, float %3797, float %3798, float %3799, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3885 = extractvalue %dx.types.CBufRet.f32 %3884, 0
  %3886 = extractvalue %dx.types.CBufRet.f32 %3884, 1
  %3887 = fmul fast float %3886, %3883
  %3888 = fadd fast float %3887, %3885
  %3889 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3890 = bitcast float %3585 to i32
  %3891 = and i32 %3890, 65535
  %3892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3891)  ; LegacyF16ToF32(value)
  %3893 = lshr i32 %3890, 16
  %3894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3893)  ; LegacyF16ToF32(value)
  %3895 = fcmp fast oge float %3892, 0.000000e+00
  %3896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3897 = extractvalue %dx.types.CBufRet.f32 %3896, 0
  %3898 = select i1 %3895, float %3892, float %3897
  %3899 = fadd fast float %3898, %3894
  %3900 = fsub fast float %3889, %3524
  %3901 = fmul fast float %3900, %3743
  %3902 = fadd fast float %3901, %3524
  %3903 = fmul fast float %3899, %3743
  %3904 = call float @dx.op.binary.f32(i32 35, float %3523, float %3903)  ; FMax(a,b)
  %3905 = and i32 %3597, 16
  %3906 = icmp eq i32 %3905, 0
  br i1 %3906, label %3929, label %3907

; <label>:3907                                    ; preds = %3846
  %3908 = bitcast float %3591 to i32
  %3909 = add i32 %3588, 0
  %3910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3909, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3911 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3910, %dx.types.Handle %3756, float %3684, float %3687, float undef, float undef, i32 0, i32 0, i32 undef, float %3689, float %3691, float undef, float %3693, float %3695, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3912 = extractvalue %dx.types.ResRet.f32 %3911, 0
  %3913 = extractvalue %dx.types.ResRet.f32 %3911, 1
  %3914 = extractvalue %dx.types.ResRet.f32 %3911, 2
  %3915 = and i32 %3908, 65535
  %3916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3915)  ; LegacyF16ToF32(value)
  %3917 = fmul fast float %3912, %3582
  %3918 = fmul fast float %3913, %3583
  %3919 = fmul fast float %3914, %3584
  %3920 = and i32 %3597, 16384
  %3921 = icmp ne i32 %3920, 0
  %3922 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3923 = extractvalue %dx.types.CBufRet.f32 %3922, 0
  %3924 = select i1 %3921, float %3923, float 1.000000e+00
  %3925 = fmul fast float %3924, %3916
  %3926 = fmul fast float %3917, %3925
  %3927 = fmul fast float %3918, %3925
  %3928 = fmul fast float %3919, %3925
  br label %3929

; <label>:3929                                    ; preds = %3907, %3846
  %3930 = phi float [ %3926, %3907 ], [ 0.000000e+00, %3846 ]
  %3931 = phi float [ %3927, %3907 ], [ 0.000000e+00, %3846 ]
  %3932 = phi float [ %3928, %3907 ], [ 0.000000e+00, %3846 ]
  %3933 = fsub fast float %3930, %3527
  %3934 = fsub fast float %3931, %3528
  %3935 = fsub fast float %3932, %3529
  %3936 = fmul fast float %3933, %3743
  %3937 = fmul fast float %3934, %3743
  %3938 = fmul fast float %3935, %3743
  %3939 = fadd fast float %3936, %3527
  %3940 = fadd fast float %3937, %3528
  %3941 = fadd fast float %3938, %3529
  br label %3646

; <label>:3942                                    ; preds = %3646
  br label %3943

; <label>:3943                                    ; preds = %3942, %3466
  %3944 = phi float [ 0.000000e+00, %3466 ], [ %3647, %3942 ]
  %3945 = phi float [ %3435, %3466 ], [ %3648, %3942 ]
  %3946 = phi float [ %3433, %3466 ], [ %3649, %3942 ]
  %3947 = phi float [ 0.000000e+00, %3466 ], [ %3650, %3942 ]
  %3948 = phi float [ 0.000000e+00, %3466 ], [ %3651, %3942 ]
  %3949 = phi float [ %3427, %3466 ], [ %3652, %3942 ]
  %3950 = phi float [ %3428, %3466 ], [ %3653, %3942 ]
  %3951 = phi float [ %3429, %3466 ], [ %3654, %3942 ]
  %3952 = phi float [ %3461, %3466 ], [ %3655, %3942 ]
  %3953 = phi float [ %3462, %3466 ], [ %3656, %3942 ]
  %3954 = phi float [ %3463, %3466 ], [ %3657, %3942 ]
  %3955 = phi float [ %3432, %3466 ], [ %3658, %3942 ]
  %3956 = phi float [ %3431, %3466 ], [ %3659, %3942 ]
  %3957 = phi float [ 0.000000e+00, %3466 ], [ %3660, %3942 ]
  %3958 = phi float [ %3430, %3466 ], [ %3661, %3942 ]
  %3959 = phi float [ %3424, %3466 ], [ %3662, %3942 ]
  %3960 = phi float [ %3425, %3466 ], [ %3663, %3942 ]
  %3961 = phi float [ %3426, %3466 ], [ %3664, %3942 ]
  %3962 = call float @dx.op.dot3.f32(i32 55, float %3952, float %3953, float %3954, float %3952, float %3953, float %3954)  ; Dot3(ax,ay,az,bx,by,bz)
  %3963 = call float @dx.op.unary.f32(i32 25, float %3962)  ; Rsqrt(value)
  %3964 = fmul fast float %3963, %3952
  %3965 = fmul fast float %3963, %3953
  %3966 = fmul fast float %3963, %3954
  %3967 = fadd fast float %3957, %868
  %3968 = call float @dx.op.unary.f32(i32 7, float %3967)  ; Saturate(value)
  %3969 = call float @dx.op.dot3.f32(i32 55, float %3964, float %3965, float %3966, float %3964, float %3965, float %3966)  ; Dot3(ax,ay,az,bx,by,bz)
  %3970 = call float @dx.op.unary.f32(i32 25, float %3969)  ; Rsqrt(value)
  %3971 = fmul fast float %3970, %3964
  %3972 = fmul fast float %3970, %3965
  %3973 = fmul fast float %3970, %3966
  br label %3974

; <label>:3974                                    ; preds = %3943, %3421
  %3975 = phi float [ %3971, %3943 ], [ %3461, %3421 ]
  %3976 = phi float [ %3972, %3943 ], [ %3462, %3421 ]
  %3977 = phi float [ %3973, %3943 ], [ %3463, %3421 ]
  %3978 = phi float [ %3959, %3943 ], [ %3424, %3421 ]
  %3979 = phi float [ %3960, %3943 ], [ %3425, %3421 ]
  %3980 = phi float [ %3961, %3943 ], [ %3426, %3421 ]
  %3981 = phi float [ %3949, %3943 ], [ %3427, %3421 ]
  %3982 = phi float [ %3950, %3943 ], [ %3428, %3421 ]
  %3983 = phi float [ %3951, %3943 ], [ %3429, %3421 ]
  %3984 = phi float [ %3958, %3943 ], [ %3430, %3421 ]
  %3985 = phi float [ %3968, %3943 ], [ %868, %3421 ]
  %3986 = phi float [ %3956, %3943 ], [ %3431, %3421 ]
  %3987 = phi float [ %3955, %3943 ], [ %3432, %3421 ]
  %3988 = phi float [ %3948, %3943 ], [ 0.000000e+00, %3421 ]
  %3989 = phi float [ %3947, %3943 ], [ 0.000000e+00, %3421 ]
  %3990 = phi float [ %3944, %3943 ], [ 0.000000e+00, %3421 ]
  %3991 = phi float [ %3945, %3943 ], [ %3435, %3421 ]
  %3992 = phi float [ %3946, %3943 ], [ %3433, %3421 ]
  %3993 = fadd fast float %3984, 0xBFB99999A0000000
  %3994 = call float @dx.op.unary.f32(i32 7, float %3993)  ; Saturate(value)
  %3995 = fmul fast float %3994, 0x3FF1C71C80000000
  %3996 = call float @dx.op.binary.f32(i32 36, float %3984, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3997 = fsub fast float 1.000000e+00, %3995
  %3998 = call float @dx.op.unary.f32(i32 7, float %3997)  ; Saturate(value)
  %3999 = fmul fast float %3998, %3978
  %4000 = fmul fast float %3998, %3979
  %4001 = fmul fast float %3998, %3980
  %4002 = call float @dx.op.unary.f32(i32 7, float %3999)  ; Saturate(value)
  %4003 = call float @dx.op.unary.f32(i32 7, float %4000)  ; Saturate(value)
  %4004 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  %4005 = fmul fast float %3995, %3978
  %4006 = fmul fast float %3995, %3979
  %4007 = fmul fast float %3995, %3980
  %4008 = fadd fast float %4005, %3996
  %4009 = fadd fast float %4006, %3996
  %4010 = fadd fast float %4007, %3996
  %4011 = call float @dx.op.unary.f32(i32 7, float %4008)  ; Saturate(value)
  %4012 = call float @dx.op.unary.f32(i32 7, float %4009)  ; Saturate(value)
  %4013 = call float @dx.op.unary.f32(i32 7, float %4010)  ; Saturate(value)
  %4014 = call float @dx.op.unary.f32(i32 7, float %3986)  ; Saturate(value)
  %4015 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4016 = extractvalue %dx.types.CBufRet.i32 %4015, 3
  %4017 = and i32 %4016, 8
  %4018 = icmp ne i32 %4017, 0
  %4019 = call float @dx.op.binary.f32(i32 35, float %4002, float %3978)  ; FMax(a,b)
  %4020 = call float @dx.op.binary.f32(i32 35, float %4003, float %3978)  ; FMax(a,b)
  %4021 = call float @dx.op.binary.f32(i32 35, float %4004, float %3978)  ; FMax(a,b)
  %4022 = call float @dx.op.dot3.f32(i32 55, float %4002, float %4003, float %4004, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4023 = select i1 %163, float %3978, float %4002
  %4024 = select i1 %163, float %4022, float %4003
  %4025 = select i1 %163, float 1.000000e+00, float %4004
  %4026 = select i1 %4018, float %4019, float %4023
  %4027 = select i1 %4018, float %4020, float %4024
  %4028 = select i1 %4018, float %4021, float %4025
  %4029 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4030 = extractvalue %dx.types.CBufRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.CBufRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.CBufRet.f32 %4029, 2
  %4033 = fadd fast float %4030, %121
  %4034 = fadd fast float %4031, %122
  %4035 = fadd fast float %4032, %123
  %4036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4037 = extractvalue %dx.types.CBufRet.f32 %4036, 0
  %4038 = extractvalue %dx.types.CBufRet.f32 %4036, 1
  %4039 = fsub fast float %4033, %4037
  %4040 = fsub fast float %4034, %4038
  %4041 = fmul fast float %4039, %4039
  %4042 = fmul fast float %4040, %4040
  %4043 = fadd fast float %4041, %4042
  %4044 = call float @dx.op.unary.f32(i32 24, float %4043)  ; Sqrt(value)
  %4045 = extractvalue %dx.types.CBufRet.f32 %4036, 2
  %4046 = fcmp fast olt float %4044, %4045
  br i1 %4046, label %4047, label %4114

; <label>:4047                                    ; preds = %3974
  %4048 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4049 = extractvalue %dx.types.CBufRet.f32 %4048, 0
  %4050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4051 = extractvalue %dx.types.CBufRet.f32 %4050, 0
  %4052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4053 = extractvalue %dx.types.CBufRet.f32 %4052, 0
  %4054 = extractvalue %dx.types.CBufRet.f32 %4048, 1
  %4055 = extractvalue %dx.types.CBufRet.f32 %4050, 1
  %4056 = extractvalue %dx.types.CBufRet.f32 %4052, 1
  %4057 = extractvalue %dx.types.CBufRet.f32 %4048, 3
  %4058 = extractvalue %dx.types.CBufRet.f32 %4050, 3
  %4059 = extractvalue %dx.types.CBufRet.f32 %4052, 3
  %4060 = fadd fast float %4057, %4033
  %4061 = fadd fast float %4058, %4034
  %4062 = fadd fast float %4059, %4035
  %4063 = fmul fast float %4060, %4049
  %4064 = call float @dx.op.tertiary.f32(i32 46, float %4061, float %4051, float %4063)  ; FMad(a,b,c)
  %4065 = call float @dx.op.tertiary.f32(i32 46, float %4062, float %4053, float %4064)  ; FMad(a,b,c)
  %4066 = fmul fast float %4060, %4054
  %4067 = call float @dx.op.tertiary.f32(i32 46, float %4061, float %4055, float %4066)  ; FMad(a,b,c)
  %4068 = call float @dx.op.tertiary.f32(i32 46, float %4062, float %4056, float %4067)  ; FMad(a,b,c)
  %4069 = fsub fast float %4065, %4057
  %4070 = fsub fast float %4068, %4058
  %4071 = fsub fast float %4069, %4037
  %4072 = fadd fast float %4071, %4045
  %4073 = fsub fast float %4070, %4038
  %4074 = fadd fast float %4073, %4045
  %4075 = extractvalue %dx.types.CBufRet.f32 %4036, 3
  %4076 = fmul fast float %4072, %4075
  %4077 = fmul fast float %4074, %4075
  %4078 = call float @dx.op.unary.f32(i32 7, float %4076)  ; Saturate(value)
  %4079 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4080 = fsub fast float 1.000000e+00, %4078
  %4081 = fsub fast float 1.000000e+00, %4079
  %4082 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %4080, float %4081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4083 = extractvalue %dx.types.ResRet.f32 %4082, 0
  %4084 = fcmp fast ugt float %4083, 0.000000e+00
  br i1 %4084, label %4085, label %4388

; <label>:4085                                    ; preds = %4047
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 2
  %4088 = fmul fast float %4087, %4083
  %4089 = extractvalue %dx.types.CBufRet.f32 %4086, 3
  %4090 = fadd fast float %4089, %4088
  %4091 = extractvalue %dx.types.CBufRet.f32 %4052, 2
  %4092 = fadd fast float %4090, %4059
  %4093 = fmul fast float %4065, %4053
  %4094 = call float @dx.op.tertiary.f32(i32 46, float %4068, float %4056, float %4093)  ; FMad(a,b,c)
  %4095 = call float @dx.op.tertiary.f32(i32 46, float %4092, float %4091, float %4094)  ; FMad(a,b,c)
  %4096 = fsub fast float %4095, %4059
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 2
  %4099 = fsub fast float %4096, %4098
  %4100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %4080, float %4081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.ResRet.f32 %4100, 1
  %4103 = extractvalue %dx.types.ResRet.f32 %4100, 2
  %4104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %4080, float %4081, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4105 = extractvalue %dx.types.ResRet.f32 %4104, 0
  %4106 = extractvalue %dx.types.ResRet.f32 %4104, 1
  %4107 = extractvalue %dx.types.ResRet.f32 %4104, 2
  %4108 = fadd fast float %4105, %4101
  %4109 = fmul fast float %4108, 0x3F847AE140000000
  %4110 = fadd fast float %4106, %4102
  %4111 = fmul fast float %4110, 0x3F847AE140000000
  %4112 = fadd fast float %4107, %4103
  %4113 = fmul fast float %4112, 0x3F847AE140000000
  br label %4388

; <label>:4114                                    ; preds = %3974
  %4115 = and i32 %139, 1
  %4116 = icmp eq i32 %4115, 0
  br i1 %4116, label %4388, label %4117

; <label>:4117                                    ; preds = %4114
  %4118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4119 = extractvalue %dx.types.CBufRet.f32 %4118, 0
  %4120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4121 = extractvalue %dx.types.CBufRet.f32 %4120, 0
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.CBufRet.f32 %4118, 1
  %4125 = extractvalue %dx.types.CBufRet.f32 %4120, 1
  %4126 = extractvalue %dx.types.CBufRet.f32 %4122, 1
  %4127 = extractvalue %dx.types.CBufRet.f32 %4118, 3
  %4128 = extractvalue %dx.types.CBufRet.f32 %4120, 3
  %4129 = extractvalue %dx.types.CBufRet.f32 %4122, 3
  %4130 = fadd fast float %4127, %4033
  %4131 = fadd fast float %4128, %4034
  %4132 = fadd fast float %4129, %4035
  %4133 = fmul fast float %4130, %4119
  %4134 = call float @dx.op.tertiary.f32(i32 46, float %4131, float %4121, float %4133)  ; FMad(a,b,c)
  %4135 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %4123, float %4134)  ; FMad(a,b,c)
  %4136 = fmul fast float %4130, %4124
  %4137 = call float @dx.op.tertiary.f32(i32 46, float %4131, float %4125, float %4136)  ; FMad(a,b,c)
  %4138 = call float @dx.op.tertiary.f32(i32 46, float %4132, float %4126, float %4137)  ; FMad(a,b,c)
  %4139 = fsub fast float %4135, %4127
  %4140 = fsub fast float %4138, %4128
  %4141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4142 = extractvalue %dx.types.CBufRet.f32 %4141, 0
  %4143 = extractvalue %dx.types.CBufRet.f32 %4141, 1
  %4144 = extractvalue %dx.types.CBufRet.f32 %4141, 2
  %4145 = extractvalue %dx.types.CBufRet.f32 %4141, 3
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 3
  %4148 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.i32 %4148, 0
  %4150 = extractvalue %dx.types.CBufRet.i32 %4148, 1
  %4151 = udiv i32 %4150, %4149
  %4152 = fsub fast float %4139, %4142
  %4153 = fsub fast float %4140, %4143
  %4154 = call float @dx.op.binary.f32(i32 35, float %4152, float 0.000000e+00)  ; FMax(a,b)
  %4155 = call float @dx.op.binary.f32(i32 35, float %4153, float 0.000000e+00)  ; FMax(a,b)
  %4156 = call float @dx.op.binary.f32(i32 36, float %4154, float %4144)  ; FMin(a,b)
  %4157 = call float @dx.op.binary.f32(i32 36, float %4155, float %4145)  ; FMin(a,b)
  %4158 = add i32 %4149, -1
  %4159 = add i32 %4151, -1
  %4160 = fmul fast float %4156, %4147
  %4161 = fmul fast float %4157, %4147
  %4162 = fptoui float %4160 to i32
  %4163 = fptoui float %4161 to i32
  %4164 = call i32 @dx.op.binary.i32(i32 40, i32 %4162, i32 %4158)  ; UMin(a,b)
  %4165 = call i32 @dx.op.binary.i32(i32 40, i32 %4163, i32 %4159)  ; UMin(a,b)
  %4166 = mul i32 %4165, %4149
  %4167 = add i32 %4166, %4164
  %4168 = shl i32 %4167, 2
  %4169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4168, i32 undef)  ; BufferLoad(srv,index,wot)
  %4170 = extractvalue %dx.types.ResRet.i32 %4169, 0
  %4171 = icmp eq i32 %4170, -1
  br i1 %4171, label %4388, label %4172

; <label>:4172                                    ; preds = %4117
  %4173 = mul i32 %4170, 148
  %4174 = add i32 %4173, 4
  %4175 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4174, i32 undef)  ; BufferLoad(srv,index,wot)
  %4176 = extractvalue %dx.types.ResRet.f32 %4175, 0
  %4177 = add i32 %4173, 8
  %4178 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4177, i32 undef)  ; BufferLoad(srv,index,wot)
  %4179 = extractvalue %dx.types.ResRet.f32 %4178, 0
  %4180 = add i32 %4173, 36
  %4181 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4180, i32 undef)  ; BufferLoad(srv,index,wot)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = add i32 %4173, 60
  %4184 = add i32 %4173, 92
  %4185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4184, i32 undef)  ; BufferLoad(srv,index,wot)
  %4186 = extractvalue %dx.types.ResRet.i32 %4185, 0
  %4187 = add i32 %4173, 116
  %4188 = fsub fast float %4139, %4176
  %4189 = fsub fast float %4140, %4179
  %4190 = fmul fast float %4147, %4188
  %4191 = fmul fast float %4147, %4189
  %4192 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4193 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  %4194 = fsub fast float 1.000000e+00, %4193
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 2
  %4197 = call float @dx.op.unary.f32(i32 83, float %4192)  ; DerivCoarseX(value)
  %4198 = call float @dx.op.unary.f32(i32 83, float %4194)  ; DerivCoarseX(value)
  %4199 = call float @dx.op.unary.f32(i32 84, float %4192)  ; DerivCoarseY(value)
  %4200 = call float @dx.op.unary.f32(i32 84, float %4194)  ; DerivCoarseY(value)
  %4201 = fmul fast float %4197, %4196
  %4202 = fmul fast float %4198, %4196
  %4203 = fmul fast float %4199, %4196
  %4204 = fmul fast float %4200, %4196
  %4205 = call float @dx.op.dot2.f32(i32 54, float %4203, float %4204, float %4203, float %4204)  ; Dot2(ax,ay,bx,by)
  %4206 = call float @dx.op.dot2.f32(i32 54, float %4201, float %4202, float %4201, float %4202)  ; Dot2(ax,ay,bx,by)
  %4207 = call float @dx.op.binary.f32(i32 35, float %4206, float %4205)  ; FMax(a,b)
  %4208 = call float @dx.op.unary.f32(i32 23, float %4207)  ; Log(value)
  %4209 = fmul fast float %4208, 5.000000e-01
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 1
  %4212 = fadd fast float %4211, %4209
  %4213 = call float @dx.op.binary.f32(i32 35, float %4212, float 0.000000e+00)  ; FMax(a,b)
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 3
  %4216 = fadd fast float %4215, %4213
  %4217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.f32 %4217, 3
  %4219 = fadd fast float %4216, %4218
  %4220 = add i32 %4186, 0
  %4221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4220, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4222 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4221, i32 0)  ; GetDimensions(handle,mipLevel)
  %4223 = extractvalue %dx.types.Dimensions %4222, 0
  %4224 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4223)  ; FirstbitLo(value)
  %4225 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4226 = extractvalue %dx.types.CBufRet.i32 %4225, 1
  %4227 = sub nsw i32 %4226, %4224
  %4228 = sitofp i32 %4227 to float
  %4229 = fsub fast float %4219, %4228
  %4230 = call float @dx.op.binary.f32(i32 35, float %4229, float 0.000000e+00)  ; FMax(a,b)
  %4231 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4221, %dx.types.Handle %32, float %4192, float %4194, float %4182, float undef, i32 0, i32 0, i32 undef, float %4230)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4232 = extractvalue %dx.types.ResRet.f32 %4231, 0
  %4233 = fcmp ule float %4232, 0x3FE0101020000000
  %4234 = extractvalue %dx.types.CBufRet.i32 %4225, 0
  %4235 = and i32 %4234, 128
  %4236 = icmp ne i32 %4235, 0
  %4237 = and i1 %4233, %4236
  br i1 %4237, label %4388, label %4238

; <label>:4238                                    ; preds = %4172
  %4239 = add i32 %4173, 20
  %4240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4239, i32 undef)  ; BufferLoad(srv,index,wot)
  %4241 = extractvalue %dx.types.ResRet.f32 %4240, 0
  %4242 = add i32 %4173, 24
  %4243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4242, i32 undef)  ; BufferLoad(srv,index,wot)
  %4244 = extractvalue %dx.types.ResRet.f32 %4243, 0
  %4245 = add i32 %4173, 40
  %4246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4245, i32 undef)  ; BufferLoad(srv,index,wot)
  %4247 = extractvalue %dx.types.ResRet.f32 %4246, 0
  %4248 = add i32 %4173, 96
  %4249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4248, i32 undef)  ; BufferLoad(srv,index,wot)
  %4250 = extractvalue %dx.types.ResRet.i32 %4249, 0
  %4251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4252 = extractvalue %dx.types.CBufRet.f32 %4251, 2
  %4253 = fmul fast float %4252, %4192
  %4254 = fmul fast float %4252, %4194
  %4255 = extractvalue %dx.types.CBufRet.f32 %4251, 3
  %4256 = fadd fast float %4253, %4255
  %4257 = fadd fast float %4254, %4255
  %4258 = add i32 %4250, 0
  %4259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4258, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4260 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4259, i32 0)  ; GetDimensions(handle,mipLevel)
  %4261 = extractvalue %dx.types.Dimensions %4260, 0
  %4262 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4261)  ; FirstbitLo(value)
  %4263 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4264 = extractvalue %dx.types.CBufRet.i32 %4263, 1
  %4265 = sub nsw i32 %4264, %4262
  %4266 = sitofp i32 %4265 to float
  %4267 = fsub fast float %4216, %4266
  %4268 = call float @dx.op.binary.f32(i32 35, float %4267, float 0.000000e+00)  ; FMax(a,b)
  %4269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4259, %dx.types.Handle %32, float %4256, float %4257, float %4247, float undef, i32 0, i32 0, i32 undef, float %4268)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4270 = extractvalue %dx.types.ResRet.f32 %4269, 0
  %4271 = fmul fast float %4270, %4241
  %4272 = fadd fast float %4271, %4244
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 0
  %4275 = extractvalue %dx.types.CBufRet.f32 %4273, 1
  %4276 = extractvalue %dx.types.CBufRet.f32 %4273, 2
  %4277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4278 = extractvalue %dx.types.CBufRet.f32 %4277, 3
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 3
  %4281 = extractvalue %dx.types.CBufRet.f32 %4273, 3
  %4282 = fadd fast float %4278, %4139
  %4283 = fadd fast float %4280, %4140
  %4284 = fadd fast float %4272, %4281
  %4285 = fmul fast float %4282, %4274
  %4286 = call float @dx.op.tertiary.f32(i32 46, float %4283, float %4275, float %4285)  ; FMad(a,b,c)
  %4287 = call float @dx.op.tertiary.f32(i32 46, float %4284, float %4276, float %4286)  ; FMad(a,b,c)
  %4288 = fsub fast float %4287, %4281
  %4289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4290 = extractvalue %dx.types.CBufRet.f32 %4289, 2
  %4291 = fsub fast float %4288, %4290
  %4292 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4293 = extractvalue %dx.types.CBufRet.i32 %4292, 0
  %4294 = call i32 @dx.op.binary.i32(i32 40, i32 %4170, i32 %4293)  ; UMin(a,b)
  %4295 = mul i32 %4294, 36
  %4296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4295, i32 undef)  ; BufferLoad(srv,index,wot)
  %4297 = extractvalue %dx.types.ResRet.i32 %4296, 0
  %4298 = add i32 %4295, 4
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 0
  %4301 = fmul fast float %4300, %4192
  %4302 = fmul fast float %4300, %4194
  %4303 = extractvalue %dx.types.CBufRet.f32 %4299, 1
  %4304 = fadd fast float %4301, %4303
  %4305 = fadd fast float %4302, %4303
  %4306 = icmp eq i32 %4297, 0
  br i1 %4306, label %4375, label %4307

; <label>:4307                                    ; preds = %4238
  br label %4308

; <label>:4308                                    ; preds = %4365, %4307
  %4309 = phi float [ %4366, %4365 ], [ 0.000000e+00, %4307 ]
  %4310 = phi float [ %4367, %4365 ], [ 0.000000e+00, %4307 ]
  %4311 = phi float [ %4368, %4365 ], [ 0.000000e+00, %4307 ]
  %4312 = phi float [ %4369, %4365 ], [ 0.000000e+00, %4307 ]
  %4313 = phi float [ %4370, %4365 ], [ 0.000000e+00, %4307 ]
  %4314 = phi float [ %4371, %4365 ], [ 0.000000e+00, %4307 ]
  %4315 = phi i32 [ %4372, %4365 ], [ 0, %4307 ]
  %4316 = shl i32 %4315, 2
  %4317 = add i32 %4183, %4316
  %4318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4317, i32 undef)  ; BufferLoad(srv,index,wot)
  %4319 = extractvalue %dx.types.ResRet.f32 %4318, 0
  %4320 = add i32 %4187, %4316
  %4321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4320, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.i32 %4321, 0
  %4323 = add i32 %4322, 0
  %4324 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4323, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4325 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4324, i32 0)  ; GetDimensions(handle,mipLevel)
  %4326 = extractvalue %dx.types.Dimensions %4325, 0
  %4327 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4326)  ; FirstbitLo(value)
  %4328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4329 = extractvalue %dx.types.CBufRet.i32 %4328, 1
  %4330 = sub nsw i32 %4329, %4327
  %4331 = sitofp i32 %4330 to float
  %4332 = fsub fast float %4216, %4331
  %4333 = call float @dx.op.binary.f32(i32 35, float %4332, float 0.000000e+00)  ; FMax(a,b)
  %4334 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4324, %dx.types.Handle %32, float %4304, float %4305, float %4319, float undef, i32 0, i32 0, i32 undef, float %4333)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4335 = extractvalue %dx.types.ResRet.f32 %4334, 0
  %4336 = fcmp fast ogt float %4335, 0.000000e+00
  br i1 %4336, label %4337, label %4365

; <label>:4337                                    ; preds = %4308
  %4338 = add i32 %4298, %4316
  %4339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4338, i32 undef)  ; BufferLoad(srv,index,wot)
  %4340 = extractvalue %dx.types.ResRet.i32 %4339, 0
  %4341 = and i32 %4340, 32767
  %4342 = mul nuw nsw i32 %4341, 928
  %4343 = add nuw nsw i32 %4342, 48
  %4344 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4343, i32 undef)  ; BufferLoad(srv,index,wot)
  %4345 = extractvalue %dx.types.ResRet.f32 %4344, 0
  %4346 = extractvalue %dx.types.ResRet.f32 %4344, 1
  %4347 = extractvalue %dx.types.ResRet.f32 %4344, 2
  %4348 = add nuw nsw i32 %4342, 60
  %4349 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4348, i32 undef)  ; BufferLoad(srv,index,wot)
  %4350 = extractvalue %dx.types.ResRet.f32 %4349, 0
  %4351 = extractvalue %dx.types.ResRet.f32 %4349, 1
  %4352 = extractvalue %dx.types.ResRet.f32 %4349, 2
  %4353 = fmul fast float %4345, %4335
  %4354 = fmul fast float %4346, %4335
  %4355 = fmul fast float %4347, %4335
  %4356 = fadd fast float %4353, %4309
  %4357 = fadd fast float %4354, %4310
  %4358 = fadd fast float %4355, %4311
  %4359 = fmul fast float %4350, %4335
  %4360 = fmul fast float %4351, %4335
  %4361 = fmul fast float %4352, %4335
  %4362 = fadd fast float %4359, %4312
  %4363 = fadd fast float %4360, %4313
  %4364 = fadd fast float %4361, %4314
  br label %4365

; <label>:4365                                    ; preds = %4337, %4308
  %4366 = phi float [ %4356, %4337 ], [ %4309, %4308 ]
  %4367 = phi float [ %4357, %4337 ], [ %4310, %4308 ]
  %4368 = phi float [ %4358, %4337 ], [ %4311, %4308 ]
  %4369 = phi float [ %4362, %4337 ], [ %4312, %4308 ]
  %4370 = phi float [ %4363, %4337 ], [ %4313, %4308 ]
  %4371 = phi float [ %4364, %4337 ], [ %4314, %4308 ]
  %4372 = add nuw i32 %4315, 1
  %4373 = icmp eq i32 %4372, %4297
  br i1 %4373, label %4374, label %4308

; <label>:4374                                    ; preds = %4365
  br label %4375

; <label>:4375                                    ; preds = %4374, %4238
  %4376 = phi float [ 0.000000e+00, %4238 ], [ %4366, %4374 ]
  %4377 = phi float [ 0.000000e+00, %4238 ], [ %4367, %4374 ]
  %4378 = phi float [ 0.000000e+00, %4238 ], [ %4368, %4374 ]
  %4379 = phi float [ 0.000000e+00, %4238 ], [ %4369, %4374 ]
  %4380 = phi float [ 0.000000e+00, %4238 ], [ %4370, %4374 ]
  %4381 = phi float [ 0.000000e+00, %4238 ], [ %4371, %4374 ]
  %4382 = fadd fast float %4379, %4376
  %4383 = fmul fast float %4382, 0x3F847AE140000000
  %4384 = fadd fast float %4380, %4377
  %4385 = fmul fast float %4384, 0x3F847AE140000000
  %4386 = fadd fast float %4381, %4378
  %4387 = fmul fast float %4386, 0x3F847AE140000000
  br label %4388

; <label>:4388                                    ; preds = %4375, %4172, %4117, %4114, %4085, %4047
  %4389 = phi float [ %4099, %4085 ], [ -1.310720e+05, %4047 ], [ %4291, %4375 ], [ -1.310720e+05, %4117 ], [ -1.310720e+05, %4172 ], [ -1.310720e+05, %4114 ]
  %4390 = phi float [ %4109, %4085 ], [ 0.000000e+00, %4047 ], [ %4383, %4375 ], [ 0.000000e+00, %4117 ], [ 0.000000e+00, %4172 ], [ 0.000000e+00, %4114 ]
  %4391 = phi float [ %4111, %4085 ], [ 0.000000e+00, %4047 ], [ %4385, %4375 ], [ 0.000000e+00, %4117 ], [ 0.000000e+00, %4172 ], [ 0.000000e+00, %4114 ]
  %4392 = phi float [ %4113, %4085 ], [ 0.000000e+00, %4047 ], [ %4387, %4375 ], [ 0.000000e+00, %4117 ], [ 0.000000e+00, %4172 ], [ 0.000000e+00, %4114 ]
  %4393 = phi i1 [ true, %4085 ], [ false, %4047 ], [ true, %4375 ], [ false, %4117 ], [ false, %4172 ], [ false, %4114 ]
  %4394 = and i32 %139, 3
  %4395 = icmp eq i32 %4394, 1
  %4396 = select i1 %4395, float 1.000000e+00, float 0.000000e+00
  %4397 = fsub fast float %4389, %123
  %4398 = call float @dx.op.unary.f32(i32 7, float %4397)  ; Saturate(value)
  %4399 = select i1 %4393, float %4398, float 1.000000e+00
  %4400 = fmul fast float %4399, %4396
  %4401 = icmp eq i32 %4394, 3
  %4402 = select i1 %4401, float 1.000000e+00, float %4400
  %4403 = call float @dx.op.binary.f32(i32 35, float %3990, float %4402)  ; FMax(a,b)
  %4404 = call float @dx.op.unary.f32(i32 7, float %4403)  ; Saturate(value)
  %4405 = fcmp fast une float %4404, 0.000000e+00
  %4406 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4407 = call float @dx.op.unary.f32(i32 25, float %4406)  ; Rsqrt(value)
  br i1 %4405, label %4415, label %4408

; <label>:4408                                    ; preds = %4388
  %4409 = fmul fast float %4407, %121
  %4410 = fmul fast float %4407, %122
  %4411 = fmul fast float %4407, %123
  %4412 = fsub fast float -0.000000e+00, %4409
  %4413 = fsub fast float -0.000000e+00, %4410
  %4414 = fsub fast float -0.000000e+00, %4411
  br label %4583

; <label>:4415                                    ; preds = %4388
  %4416 = fmul fast float %121, %4407
  %4417 = fsub fast float -0.000000e+00, %4416
  %4418 = fmul fast float %122, %4407
  %4419 = fsub fast float -0.000000e+00, %4418
  %4420 = fmul fast float %123, %4407
  %4421 = fsub fast float -0.000000e+00, %4420
  %4422 = call float @dx.op.dot3.f32(i32 55, float %4417, float %4419, float %4421, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4423 = fmul fast float %4404, 2.500000e+00
  %4424 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4425 = fmul fast float %4404, 0x4013FFFFE0000000
  %4426 = fadd fast float %4425, 0xBFFFFFFFE0000000
  %4427 = call float @dx.op.unary.f32(i32 7, float %4426)  ; Saturate(value)
  %4428 = fmul fast float %4404, 0x4004000020000000
  %4429 = fadd fast float %4428, 0xBFF8000040000000
  %4430 = call float @dx.op.unary.f32(i32 7, float %4429)  ; Saturate(value)
  %4431 = call float @dx.op.unary.f32(i32 7, float %4424)  ; Saturate(value)
  %4432 = fmul fast float %3993, 1.000000e+01
  %4433 = call float @dx.op.unary.f32(i32 7, float %4432)  ; Saturate(value)
  %4434 = fmul fast float %4433, 2.000000e+00
  %4435 = fsub fast float 3.000000e+00, %4434
  %4436 = fmul fast float %4433, %4433
  %4437 = fmul fast float %4436, %4435
  %4438 = fsub fast float 1.000000e+00, %4437
  %4439 = fsub fast float 0x3FE3333340000000, %4014
  %4440 = fmul fast float %4439, 0x400AAAAAA0000000
  %4441 = call float @dx.op.unary.f32(i32 7, float %4440)  ; Saturate(value)
  %4442 = fmul fast float %4438, %4441
  %4443 = fmul fast float %4026, 0x3FEA2B8620000000
  %4444 = fmul fast float %4027, 0x3FEA2B8620000000
  %4445 = fmul fast float %4028, 0x3FEA2B8620000000
  %4446 = fadd fast float %4443, 0x3FC81DFBA0000000
  %4447 = fmul fast float %4446, %4026
  %4448 = fadd fast float %4447, 0x3F910E6020000000
  %4449 = fadd fast float %4444, 0x3FC81DFBA0000000
  %4450 = fmul fast float %4449, %4027
  %4451 = fadd fast float %4450, 0x3F910E6020000000
  %4452 = fadd fast float %4445, 0x3FC81DFBA0000000
  %4453 = fmul fast float %4452, %4028
  %4454 = fadd fast float %4453, 0x3F910E6020000000
  %4455 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4456 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4457 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4458 = fsub fast float %4455, %4026
  %4459 = fsub fast float %4456, %4027
  %4460 = fsub fast float %4457, %4028
  %4461 = fmul fast float %4458, %4431
  %4462 = fmul fast float %4461, %4442
  %4463 = fmul fast float %4459, %4431
  %4464 = fmul fast float %4463, %4442
  %4465 = fmul fast float %4460, %4431
  %4466 = fmul fast float %4465, %4442
  %4467 = fadd fast float %4462, %4026
  %4468 = fadd fast float %4464, %4027
  %4469 = fadd fast float %4466, %4028
  %4470 = fmul fast float %3987, %3987
  %4471 = fmul fast float %4470, %4470
  %4472 = fadd fast float %4427, 1.000000e+00
  %4473 = fsub fast float %4472, %4442
  %4474 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4475 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4476 = call float @dx.op.unary.f32(i32 7, float %4475)  ; Saturate(value)
  %4477 = fsub fast float 1.000000e+00, %4471
  %4478 = call float @dx.op.binary.f32(i32 36, float %4474, float %4477)  ; FMin(a,b)
  %4479 = call float @dx.op.unary.f32(i32 7, float %4430)  ; Saturate(value)
  %4480 = call float @dx.op.binary.f32(i32 35, float %4478, float %4479)  ; FMax(a,b)
  %4481 = fadd fast float %4476, 0xBFE4CCCCC0000000
  %4482 = fmul fast float %4481, 0x4006DB6DA0000000
  %4483 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4484 = fmul fast float %4483, 2.000000e+00
  %4485 = fsub fast float 3.000000e+00, %4484
  %4486 = bitcast float %4011 to i32
  %4487 = ashr i32 %4486, 1
  %4488 = add nsw i32 %4487, 532487669
  %4489 = bitcast i32 %4488 to float
  %4490 = fsub fast float 1.000000e+00, %4489
  %4491 = bitcast float %4490 to i32
  %4492 = sub nsw i32 2129859010, %4491
  %4493 = bitcast i32 %4492 to float
  %4494 = fmul fast float %4493, 2.000000e+00
  %4495 = bitcast float %4012 to i32
  %4496 = ashr i32 %4495, 1
  %4497 = add nsw i32 %4496, 532487669
  %4498 = bitcast i32 %4497 to float
  %4499 = fsub fast float 1.000000e+00, %4498
  %4500 = bitcast float %4499 to i32
  %4501 = sub nsw i32 2129859010, %4500
  %4502 = bitcast i32 %4501 to float
  %4503 = fmul fast float %4502, 2.000000e+00
  %4504 = bitcast float %4013 to i32
  %4505 = ashr i32 %4504, 1
  %4506 = add nsw i32 %4505, 532487669
  %4507 = bitcast i32 %4506 to float
  %4508 = fsub fast float 1.000000e+00, %4507
  %4509 = bitcast float %4508 to i32
  %4510 = sub nsw i32 2129859010, %4509
  %4511 = bitcast i32 %4510 to float
  %4512 = fmul fast float %4511, 2.000000e+00
  %4513 = fsub fast float 0x4002A9FBE0000000, %4494
  %4514 = fadd fast float %4494, 0x3FD54FDF00000000
  %4515 = bitcast float %4514 to i32
  %4516 = sub nsw i32 2129859010, %4515
  %4517 = bitcast i32 %4516 to float
  %4518 = fmul fast float %4517, %4513
  %4519 = fmul fast float %4518, %4518
  %4520 = fsub fast float 0x4002A9FBE0000000, %4503
  %4521 = fadd fast float %4503, 0x3FD54FDF00000000
  %4522 = bitcast float %4521 to i32
  %4523 = sub nsw i32 2129859010, %4522
  %4524 = bitcast i32 %4523 to float
  %4525 = fmul fast float %4524, %4520
  %4526 = fmul fast float %4525, %4525
  %4527 = fsub fast float 0x4002A9FBE0000000, %4512
  %4528 = fadd fast float %4512, 0x3FD54FDF00000000
  %4529 = bitcast float %4528 to i32
  %4530 = sub nsw i32 2129859010, %4529
  %4531 = bitcast i32 %4530 to float
  %4532 = fmul fast float %4531, %4527
  %4533 = fmul fast float %4532, %4532
  %4534 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4519)  ; FMax(a,b)
  %4535 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4526)  ; FMax(a,b)
  %4536 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4533)  ; FMax(a,b)
  %4537 = fsub fast float 1.000000e+00, %4422
  %4538 = fadd fast float %4537, %4438
  %4539 = call float @dx.op.unary.f32(i32 7, float %4538)  ; Saturate(value)
  %4540 = fsub fast float 1.000000e+00, %4402
  %4541 = fmul fast float %4480, %4540
  %4542 = fmul fast float %4483, %4483
  %4543 = fmul fast float %4542, %4541
  %4544 = fmul fast float %4543, %4485
  %4545 = fmul fast float %4540, 0xBFE99999A0000000
  %4546 = fmul fast float %4545, %4431
  %4547 = fmul fast float %4546, %4442
  %4548 = fadd fast float %4547, 1.000000e+00
  %4549 = fadd fast float %4014, -1.000000e+00
  %4550 = fmul fast float %4548, %4549
  %4551 = fadd fast float %4550, 1.000000e+00
  %4552 = fsub fast float %4534, %4011
  %4553 = fsub fast float %4535, %4012
  %4554 = fsub fast float %4536, %4013
  %4555 = fmul fast float %4544, %4552
  %4556 = fmul fast float %4544, %4553
  %4557 = fmul fast float %4544, %4554
  %4558 = fadd fast float %4555, %4011
  %4559 = fadd fast float %4556, %4012
  %4560 = fadd fast float %4557, %4013
  %4561 = fsub fast float %73, %3975
  %4562 = fsub fast float %74, %3976
  %4563 = fsub fast float %75, %3977
  %4564 = fmul fast float %4544, %4561
  %4565 = fmul fast float %4544, %4562
  %4566 = fmul fast float %4544, %4563
  %4567 = fadd fast float %4564, %3975
  %4568 = fadd fast float %4565, %3976
  %4569 = fadd fast float %4566, %3977
  %4570 = fmul fast float %4544, %4539
  %4571 = call float @dx.op.unary.f32(i32 7, float %4551)  ; Saturate(value)
  %4572 = fsub fast float 1.000000e+00, %4571
  %4573 = fmul fast float %4570, %4572
  %4574 = fadd fast float %4573, %4571
  %4575 = fsub fast float 1.000000e+00, %3987
  %4576 = fmul fast float %4544, %4575
  %4577 = fadd fast float %4576, %3987
  %4578 = call float @dx.op.dot3.f32(i32 55, float %4567, float %4568, float %4569, float %4567, float %4568, float %4569)  ; Dot3(ax,ay,az,bx,by,bz)
  %4579 = call float @dx.op.unary.f32(i32 25, float %4578)  ; Rsqrt(value)
  %4580 = fmul fast float %4567, %4579
  %4581 = fmul fast float %4568, %4579
  %4582 = fmul fast float %4569, %4579
  br label %4583

; <label>:4583                                    ; preds = %4415, %4408
  %4584 = phi float [ %4414, %4408 ], [ %4421, %4415 ]
  %4585 = phi float [ %4413, %4408 ], [ %4419, %4415 ]
  %4586 = phi float [ %4412, %4408 ], [ %4417, %4415 ]
  %4587 = phi float [ %4411, %4408 ], [ %4420, %4415 ]
  %4588 = phi float [ %4410, %4408 ], [ %4418, %4415 ]
  %4589 = phi float [ %4409, %4408 ], [ %4416, %4415 ]
  %4590 = phi float [ %4011, %4408 ], [ %4558, %4415 ]
  %4591 = phi float [ %4012, %4408 ], [ %4559, %4415 ]
  %4592 = phi float [ %4013, %4408 ], [ %4560, %4415 ]
  %4593 = phi float [ %4026, %4408 ], [ %4467, %4415 ]
  %4594 = phi float [ %4027, %4408 ], [ %4468, %4415 ]
  %4595 = phi float [ %4028, %4408 ], [ %4469, %4415 ]
  %4596 = phi float [ %3975, %4408 ], [ %4580, %4415 ]
  %4597 = phi float [ %3976, %4408 ], [ %4581, %4415 ]
  %4598 = phi float [ %3977, %4408 ], [ %4582, %4415 ]
  %4599 = phi float [ %4014, %4408 ], [ %4574, %4415 ]
  %4600 = phi float [ %3987, %4408 ], [ %4577, %4415 ]
  %4601 = select i1 %163, float 0.000000e+00, float %4592
  %4602 = call float @dx.op.dot3.f32(i32 55, float %4596, float %4597, float %4598, float %4586, float %4585, float %4584)  ; Dot3(ax,ay,az,bx,by,bz)
  %4603 = call float @dx.op.unary.f32(i32 7, float %4602)  ; Saturate(value)
  %4604 = call float @dx.op.dot3.f32(i32 55, float %4589, float %4588, float %4587, float %4596, float %4597, float %4598)  ; Dot3(ax,ay,az,bx,by,bz)
  %4605 = fmul fast float %4604, 2.000000e+00
  %4606 = fmul fast float %4605, %4596
  %4607 = fmul fast float %4605, %4597
  %4608 = fmul fast float %4605, %4598
  %4609 = fsub fast float %4589, %4606
  %4610 = fsub fast float %4588, %4607
  %4611 = fsub fast float %4587, %4608
  %4612 = call float @dx.op.binary.f32(i32 36, float %4600, float 1.000000e+00)  ; FMin(a,b)
  %4613 = fsub fast float 1.000000e+00, %4600
  %4614 = bitcast float %4613 to i32
  %4615 = sub nsw i32 2129859010, %4614
  %4616 = bitcast i32 %4615 to float
  %4617 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4618 = extractvalue %dx.types.CBufRet.f32 %4617, 0
  %4619 = extractvalue %dx.types.CBufRet.f32 %4617, 1
  %4620 = extractvalue %dx.types.CBufRet.f32 %4617, 2
  %4621 = fadd fast float %4618, %121
  %4622 = fadd fast float %4619, %122
  %4623 = fadd fast float %4620, %123
  %4624 = fmul fast float %4596, 3.200000e+01
  %4625 = fmul fast float %4597, 3.200000e+01
  %4626 = fadd fast float %4621, %4624
  %4627 = fadd fast float %4622, %4625
  %4628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4629 = extractvalue %dx.types.CBufRet.f32 %4628, 0
  %4630 = extractvalue %dx.types.CBufRet.f32 %4628, 1
  %4631 = fsub fast float %4626, %4629
  %4632 = fsub fast float %4627, %4630
  %4633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4634 = extractvalue %dx.types.CBufRet.f32 %4633, 0
  %4635 = extractvalue %dx.types.CBufRet.f32 %4633, 1
  %4636 = fmul fast float %4631, %4634
  %4637 = fmul fast float %4632, %4635
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 0
  %4640 = fmul fast float %4636, %4639
  %4641 = extractvalue %dx.types.CBufRet.f32 %4638, 1
  %4642 = fadd fast float %4640, %4641
  %4643 = extractvalue %dx.types.CBufRet.f32 %4638, 2
  %4644 = fmul fast float %4643, %4637
  %4645 = extractvalue %dx.types.CBufRet.f32 %4638, 3
  %4646 = fadd fast float %4644, %4645
  %4647 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %4642, float %4646, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4648 = extractvalue %dx.types.ResRet.f32 %4647, 0
  %4649 = extractvalue %dx.types.ResRet.f32 %4647, 1
  %4650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4651 = extractvalue %dx.types.CBufRet.f32 %4650, 1
  %4652 = extractvalue %dx.types.CBufRet.f32 %4650, 0
  %4653 = fsub fast float %4651, %4652
  %4654 = fmul fast float %4653, %4648
  %4655 = fadd fast float %4654, %4652
  %4656 = extractvalue %dx.types.CBufRet.f32 %4650, 3
  %4657 = extractvalue %dx.types.CBufRet.f32 %4650, 2
  %4658 = fsub fast float %4656, %4657
  %4659 = fmul fast float %4658, %4649
  %4660 = fadd fast float %4659, %4657
  %4661 = fsub fast float %4623, %4655
  %4662 = fsub fast float %4660, %4655
  %4663 = fdiv fast float %4661, %4662
  %4664 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4665 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.f32 %4665, 0
  %4667 = fmul fast float %4666, %4664
  %4668 = extractvalue %dx.types.CBufRet.f32 %4665, 1
  %4669 = fadd fast float %4667, %4668
  %4670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %4642, float %4646, float %4669, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.ResRet.f32 %4670, 1
  %4673 = extractvalue %dx.types.ResRet.f32 %4670, 2
  %4674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4675 = extractvalue %dx.types.CBufRet.f32 %4674, 0
  %4676 = extractvalue %dx.types.CBufRet.f32 %4674, 1
  %4677 = extractvalue %dx.types.CBufRet.f32 %4674, 2
  %4678 = fmul fast float %4675, %4671
  %4679 = fmul fast float %4676, %4672
  %4680 = fmul fast float %4677, %4673
  %4681 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4682 = extractvalue %dx.types.CBufRet.f32 %4681, 0
  %4683 = extractvalue %dx.types.CBufRet.f32 %4681, 1
  %4684 = extractvalue %dx.types.CBufRet.f32 %4681, 2
  %4685 = fadd fast float %4678, %4682
  %4686 = fadd fast float %4679, %4683
  %4687 = fadd fast float %4680, %4684
  %4688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4689 = extractvalue %dx.types.CBufRet.f32 %4688, 0
  %4690 = fmul fast float %4689, %4636
  %4691 = extractvalue %dx.types.CBufRet.f32 %4688, 1
  %4692 = fadd fast float %4690, %4691
  %4693 = extractvalue %dx.types.CBufRet.f32 %4688, 2
  %4694 = fmul fast float %4693, %4637
  %4695 = extractvalue %dx.types.CBufRet.f32 %4688, 3
  %4696 = fadd fast float %4694, %4695
  %4697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4698 = extractvalue %dx.types.CBufRet.f32 %4697, 0
  %4699 = extractvalue %dx.types.CBufRet.f32 %4697, 1
  %4700 = extractvalue %dx.types.CBufRet.f32 %4697, 2
  %4701 = extractvalue %dx.types.CBufRet.f32 %4697, 3
  %4702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.f32 %4702, 0
  %4704 = extractvalue %dx.types.CBufRet.f32 %4702, 1
  %4705 = extractvalue %dx.types.CBufRet.f32 %4702, 2
  %4706 = extractvalue %dx.types.CBufRet.f32 %4702, 3
  %4707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4692, float %4696, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = extractvalue %dx.types.ResRet.f32 %4707, 1
  %4710 = extractvalue %dx.types.ResRet.f32 %4707, 2
  %4711 = extractvalue %dx.types.ResRet.f32 %4707, 3
  %4712 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4692, float %4696, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4713 = extractvalue %dx.types.ResRet.f32 %4712, 0
  %4714 = extractvalue %dx.types.ResRet.f32 %4712, 1
  %4715 = extractvalue %dx.types.ResRet.f32 %4712, 2
  %4716 = extractvalue %dx.types.ResRet.f32 %4712, 3
  %4717 = fmul fast float %4708, %4685
  %4718 = fmul fast float %4713, %4685
  %4719 = fmul fast float %4715, %4685
  %4720 = fmul fast float %4711, %4685
  %4721 = fadd fast float %4717, %4698
  %4722 = fadd fast float %4718, %4699
  %4723 = fadd fast float %4719, %4700
  %4724 = fadd fast float %4720, %4701
  %4725 = fmul fast float %4709, %4685
  %4726 = fmul fast float %4714, %4685
  %4727 = fadd fast float %4725, %4703
  %4728 = fadd fast float %4726, %4704
  %4729 = fmul fast float %4710, %4685
  %4730 = fmul fast float %4716, %4685
  %4731 = fadd fast float %4729, %4705
  %4732 = fadd fast float %4730, %4706
  %4733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4692, float %4696, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4734 = extractvalue %dx.types.ResRet.f32 %4733, 0
  %4735 = extractvalue %dx.types.ResRet.f32 %4733, 1
  %4736 = extractvalue %dx.types.ResRet.f32 %4733, 2
  %4737 = extractvalue %dx.types.ResRet.f32 %4733, 3
  %4738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4692, float %4696, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4739 = extractvalue %dx.types.ResRet.f32 %4738, 0
  %4740 = extractvalue %dx.types.ResRet.f32 %4738, 1
  %4741 = extractvalue %dx.types.ResRet.f32 %4738, 2
  %4742 = extractvalue %dx.types.ResRet.f32 %4738, 3
  %4743 = fmul fast float %4734, %4686
  %4744 = fmul fast float %4739, %4686
  %4745 = fmul fast float %4741, %4686
  %4746 = fmul fast float %4737, %4686
  %4747 = fadd fast float %4721, %4743
  %4748 = fadd fast float %4722, %4744
  %4749 = fadd fast float %4723, %4745
  %4750 = fadd fast float %4724, %4746
  %4751 = fmul fast float %4735, %4686
  %4752 = fmul fast float %4740, %4686
  %4753 = fadd fast float %4727, %4751
  %4754 = fadd fast float %4728, %4752
  %4755 = fmul fast float %4736, %4686
  %4756 = fmul fast float %4742, %4686
  %4757 = fadd fast float %4731, %4755
  %4758 = fadd fast float %4732, %4756
  %4759 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4692, float %4696, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4760 = extractvalue %dx.types.ResRet.f32 %4759, 0
  %4761 = extractvalue %dx.types.ResRet.f32 %4759, 1
  %4762 = extractvalue %dx.types.ResRet.f32 %4759, 2
  %4763 = extractvalue %dx.types.ResRet.f32 %4759, 3
  %4764 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4692, float %4696, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4765 = extractvalue %dx.types.ResRet.f32 %4764, 0
  %4766 = extractvalue %dx.types.ResRet.f32 %4764, 1
  %4767 = extractvalue %dx.types.ResRet.f32 %4764, 2
  %4768 = extractvalue %dx.types.ResRet.f32 %4764, 3
  %4769 = fmul fast float %4760, %4687
  %4770 = fmul fast float %4765, %4687
  %4771 = fmul fast float %4767, %4687
  %4772 = fmul fast float %4763, %4687
  %4773 = fadd fast float %4747, %4769
  %4774 = fadd fast float %4748, %4770
  %4775 = fadd fast float %4749, %4771
  %4776 = fadd fast float %4750, %4772
  %4777 = fmul fast float %4761, %4687
  %4778 = fmul fast float %4766, %4687
  %4779 = fadd fast float %4753, %4777
  %4780 = fadd fast float %4754, %4778
  %4781 = fmul fast float %4762, %4687
  %4782 = fmul fast float %4768, %4687
  %4783 = fadd fast float %4757, %4781
  %4784 = fadd fast float %4758, %4782
  %4785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4786 = extractvalue %dx.types.CBufRet.f32 %4785, 0
  %4787 = fsub fast float %4621, %4786
  %4788 = fsub fast float %4629, %4621
  %4789 = call float @dx.op.binary.f32(i32 35, float %4788, float %4787)  ; FMax(a,b)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4785, 1
  %4791 = fsub fast float %4622, %4790
  %4792 = fsub fast float %4630, %4622
  %4793 = call float @dx.op.binary.f32(i32 35, float %4792, float %4791)  ; FMax(a,b)
  %4794 = call float @dx.op.binary.f32(i32 35, float %4789, float %4793)  ; FMax(a,b)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4633, 3
  %4796 = fmul fast float %4795, %4794
  %4797 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4799 = extractvalue %dx.types.CBufRet.f32 %4798, 0
  %4800 = extractvalue %dx.types.CBufRet.f32 %4798, 1
  %4801 = extractvalue %dx.types.CBufRet.f32 %4798, 2
  %4802 = extractvalue %dx.types.CBufRet.f32 %4798, 3
  %4803 = fsub fast float %4799, %4773
  %4804 = fsub fast float %4800, %4774
  %4805 = fsub fast float %4801, %4775
  %4806 = fsub fast float %4802, %4776
  %4807 = fmul fast float %4803, %4797
  %4808 = fmul fast float %4804, %4797
  %4809 = fmul fast float %4805, %4797
  %4810 = fmul fast float %4806, %4797
  %4811 = fadd fast float %4807, %4773
  %4812 = fadd fast float %4808, %4774
  %4813 = fadd fast float %4809, %4775
  %4814 = fadd fast float %4810, %4776
  %4815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.f32 %4815, 0
  %4817 = extractvalue %dx.types.CBufRet.f32 %4815, 1
  %4818 = fsub fast float %4816, %4779
  %4819 = fsub fast float %4817, %4780
  %4820 = fmul fast float %4818, %4797
  %4821 = fmul fast float %4819, %4797
  %4822 = fadd fast float %4820, %4779
  %4823 = fadd fast float %4821, %4780
  %4824 = extractvalue %dx.types.CBufRet.f32 %4815, 2
  %4825 = extractvalue %dx.types.CBufRet.f32 %4815, 3
  %4826 = fsub fast float %4824, %4783
  %4827 = fsub fast float %4825, %4784
  %4828 = fmul fast float %4826, %4797
  %4829 = fmul fast float %4827, %4797
  %4830 = fadd fast float %4828, %4783
  %4831 = fadd fast float %4829, %4784
  %4832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4833 = extractvalue %dx.types.CBufRet.f32 %4832, 0
  %4834 = fmul fast float %4833, %4811
  %4835 = fmul fast float %4833, %4812
  %4836 = fmul fast float %4833, %4813
  %4837 = fmul fast float %4833, %4814
  %4838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4839 = extractvalue %dx.types.CBufRet.f32 %4838, 0
  %4840 = fmul fast float %4839, %4822
  %4841 = fmul fast float %4839, %4823
  %4842 = fadd fast float %4840, %4834
  %4843 = fadd fast float %4841, %4836
  %4844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4845 = extractvalue %dx.types.CBufRet.f32 %4844, 0
  %4846 = fmul fast float %4845, %4830
  %4847 = fmul fast float %4845, %4831
  %4848 = fadd fast float %4842, %4846
  %4849 = fadd fast float %4843, %4847
  %4850 = extractvalue %dx.types.CBufRet.f32 %4832, 1
  %4851 = fmul fast float %4850, %4811
  %4852 = fmul fast float %4850, %4812
  %4853 = fmul fast float %4850, %4813
  %4854 = fmul fast float %4850, %4814
  %4855 = extractvalue %dx.types.CBufRet.f32 %4838, 1
  %4856 = fmul fast float %4855, %4822
  %4857 = fmul fast float %4855, %4823
  %4858 = fadd fast float %4856, %4851
  %4859 = fadd fast float %4857, %4853
  %4860 = extractvalue %dx.types.CBufRet.f32 %4844, 1
  %4861 = fmul fast float %4860, %4830
  %4862 = fmul fast float %4860, %4831
  %4863 = fadd fast float %4858, %4861
  %4864 = fadd fast float %4859, %4862
  %4865 = extractvalue %dx.types.CBufRet.f32 %4832, 2
  %4866 = fmul fast float %4865, %4811
  %4867 = fmul fast float %4865, %4812
  %4868 = fmul fast float %4865, %4813
  %4869 = fmul fast float %4865, %4814
  %4870 = extractvalue %dx.types.CBufRet.f32 %4838, 2
  %4871 = fmul fast float %4870, %4822
  %4872 = fmul fast float %4870, %4823
  %4873 = fadd fast float %4871, %4866
  %4874 = fadd fast float %4872, %4868
  %4875 = extractvalue %dx.types.CBufRet.f32 %4844, 2
  %4876 = fmul fast float %4875, %4830
  %4877 = fmul fast float %4875, %4831
  %4878 = fadd fast float %4873, %4876
  %4879 = fadd fast float %4874, %4877
  %4880 = fmul fast float %4867, %4867
  %4881 = fmul fast float %4879, %4879
  %4882 = fmul fast float %4869, %4869
  %4883 = fadd fast float %4882, %4880
  %4884 = fadd fast float %4883, %4881
  %4885 = call float @dx.op.unary.f32(i32 24, float %4884)  ; Sqrt(value)
  %4886 = fcmp fast ugt float %4885, 0.000000e+00
  br i1 %4886, label %4887, label %4902

; <label>:4887                                    ; preds = %4583
  %4888 = fsub fast float -0.000000e+00, %4869
  %4889 = fdiv fast float %4888, %4885
  %4890 = fsub fast float -0.000000e+00, %4867
  %4891 = fdiv fast float %4890, %4885
  %4892 = fdiv fast float %4879, %4885
  %4893 = fmul fast float %4878, 0x3FE279A760000000
  %4894 = fmul fast float %4891, %4867
  %4895 = fmul fast float %4892, %4879
  %4896 = fmul fast float %4889, %4869
  %4897 = fadd fast float %4894, %4896
  %4898 = fsub fast float %4897, %4895
  %4899 = call float @dx.op.unary.f32(i32 6, float %4898)  ; FAbs(value)
  %4900 = fadd fast float %4899, 0x3DDB7CDFE0000000
  %4901 = fdiv fast float %4893, %4900
  br label %4902

; <label>:4902                                    ; preds = %4887, %4583
  %4903 = phi float [ %4901, %4887 ], [ 1.000000e+00, %4583 ]
  %4904 = fmul fast float %4852, %4852
  %4905 = fmul fast float %4864, %4864
  %4906 = fmul fast float %4854, %4854
  %4907 = fadd fast float %4906, %4904
  %4908 = fadd fast float %4907, %4905
  %4909 = call float @dx.op.unary.f32(i32 24, float %4908)  ; Sqrt(value)
  %4910 = fcmp fast ugt float %4909, 0.000000e+00
  br i1 %4910, label %4911, label %4926

; <label>:4911                                    ; preds = %4902
  %4912 = fsub fast float -0.000000e+00, %4854
  %4913 = fdiv fast float %4912, %4909
  %4914 = fsub fast float -0.000000e+00, %4852
  %4915 = fdiv fast float %4914, %4909
  %4916 = fdiv fast float %4864, %4909
  %4917 = fmul fast float %4863, 0x3FE279A760000000
  %4918 = fmul fast float %4915, %4852
  %4919 = fmul fast float %4916, %4864
  %4920 = fmul fast float %4913, %4854
  %4921 = fadd fast float %4918, %4920
  %4922 = fsub fast float %4921, %4919
  %4923 = call float @dx.op.unary.f32(i32 6, float %4922)  ; FAbs(value)
  %4924 = fadd fast float %4923, 0x3DDB7CDFE0000000
  %4925 = fdiv fast float %4917, %4924
  br label %4926

; <label>:4926                                    ; preds = %4911, %4902
  %4927 = phi float [ %4925, %4911 ], [ 1.000000e+00, %4902 ]
  %4928 = call float @dx.op.binary.f32(i32 36, float %4927, float %4903)  ; FMin(a,b)
  %4929 = fmul fast float %4835, %4835
  %4930 = fmul fast float %4849, %4849
  %4931 = fmul fast float %4837, %4837
  %4932 = fadd fast float %4931, %4929
  %4933 = fadd fast float %4932, %4930
  %4934 = call float @dx.op.unary.f32(i32 24, float %4933)  ; Sqrt(value)
  %4935 = fcmp fast ugt float %4934, 0.000000e+00
  br i1 %4935, label %4936, label %4951

; <label>:4936                                    ; preds = %4926
  %4937 = fsub fast float -0.000000e+00, %4837
  %4938 = fdiv fast float %4937, %4934
  %4939 = fsub fast float -0.000000e+00, %4835
  %4940 = fdiv fast float %4939, %4934
  %4941 = fdiv fast float %4849, %4934
  %4942 = fmul fast float %4848, 0x3FE279A760000000
  %4943 = fmul fast float %4940, %4835
  %4944 = fmul fast float %4941, %4849
  %4945 = fmul fast float %4938, %4837
  %4946 = fadd fast float %4943, %4945
  %4947 = fsub fast float %4946, %4944
  %4948 = call float @dx.op.unary.f32(i32 6, float %4947)  ; FAbs(value)
  %4949 = fadd fast float %4948, 0x3DDB7CDFE0000000
  %4950 = fdiv fast float %4942, %4949
  br label %4951

; <label>:4951                                    ; preds = %4936, %4926
  %4952 = phi float [ %4950, %4936 ], [ 1.000000e+00, %4926 ]
  %4953 = call float @dx.op.binary.f32(i32 36, float %4952, float %4928)  ; FMin(a,b)
  %4954 = call float @dx.op.unary.f32(i32 7, float %4953)  ; Saturate(value)
  %4955 = fcmp fast olt float %4954, 1.000000e+00
  br i1 %4955, label %4956, label %4966

; <label>:4956                                    ; preds = %4951
  %4957 = fmul fast float %4954, %4835
  %4958 = fmul fast float %4954, %4849
  %4959 = fmul fast float %4954, %4837
  %4960 = fmul fast float %4954, %4852
  %4961 = fmul fast float %4954, %4864
  %4962 = fmul fast float %4954, %4854
  %4963 = fmul fast float %4954, %4867
  %4964 = fmul fast float %4954, %4879
  %4965 = fmul fast float %4954, %4869
  br label %4966

; <label>:4966                                    ; preds = %4956, %4951
  %4967 = phi float [ %4963, %4956 ], [ %4867, %4951 ]
  %4968 = phi float [ %4964, %4956 ], [ %4879, %4951 ]
  %4969 = phi float [ %4965, %4956 ], [ %4869, %4951 ]
  %4970 = phi float [ %4960, %4956 ], [ %4852, %4951 ]
  %4971 = phi float [ %4961, %4956 ], [ %4864, %4951 ]
  %4972 = phi float [ %4962, %4956 ], [ %4854, %4951 ]
  %4973 = phi float [ %4957, %4956 ], [ %4835, %4951 ]
  %4974 = phi float [ %4958, %4956 ], [ %4849, %4951 ]
  %4975 = phi float [ %4959, %4956 ], [ %4837, %4951 ]
  %4976 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4848)  ; FMax(a,b)
  %4977 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4863)  ; FMax(a,b)
  %4978 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4878)  ; FMax(a,b)
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = fcmp fast ogt float %4980, 0.000000e+00
  %4982 = fcmp fast oge float %4636, 0.000000e+00
  %4983 = and i1 %4982, %4981
  %4984 = fcmp fast ole float %4636, 1.000000e+00
  %4985 = and i1 %4984, %4983
  %4986 = fcmp fast oge float %4637, 0.000000e+00
  %4987 = and i1 %4986, %4985
  %4988 = fcmp fast ole float %4637, 1.000000e+00
  %4989 = and i1 %4988, %4987
  br i1 %4989, label %4990, label %5135, !dx.controlflow.hints !75

; <label>:4990                                    ; preds = %4966
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 2
  %4993 = extractvalue %dx.types.CBufRet.f32 %4991, 3
  %4994 = fmul fast float %4992, %4636
  %4995 = fmul fast float %4993, %4637
  %4996 = call float @dx.op.unary.f32(i32 27, float %4994)  ; Round_ni(value)
  %4997 = call float @dx.op.unary.f32(i32 27, float %4995)  ; Round_ni(value)
  %4998 = fptosi float %4996 to i32
  %4999 = fptosi float %4997 to i32
  %5000 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4998, i32 %4999, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5001 = extractvalue %dx.types.ResRet.i32 %5000, 0
  %5002 = and i32 %5001, 65535
  %5003 = lshr i32 %5001, 16
  %5004 = icmp eq i32 %5002, 65535
  br i1 %5004, label %5041, label %5005

; <label>:5005                                    ; preds = %4990
  %5006 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %5007 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %5008 = extractvalue %dx.types.CBufRet.f32 %4991, 1
  %5009 = fmul fast float %5007, %4636
  %5010 = fmul fast float %5008, %4637
  %5011 = fmul fast float %5009, 1.250000e-01
  %5012 = fmul fast float %5010, 1.250000e-01
  %5013 = call float @dx.op.unary.f32(i32 27, float %5011)  ; Round_ni(value)
  %5014 = call float @dx.op.unary.f32(i32 27, float %5012)  ; Round_ni(value)
  %5015 = fmul fast float %5013, 8.000000e+00
  %5016 = fmul fast float %5014, 8.000000e+00
  %5017 = and i32 %5001, 255
  %5018 = lshr i32 %5001, 8
  %5019 = and i32 %5018, 255
  %5020 = mul nuw nsw i32 %5017, 9
  %5021 = uitofp i32 %5020 to float
  %5022 = mul nuw nsw i32 %5019, 9
  %5023 = uitofp i32 %5022 to float
  %5024 = fadd fast float %5021, 5.000000e-01
  %5025 = fadd fast float %5024, %5009
  %5026 = fsub fast float %5025, %5015
  %5027 = fadd fast float %5023, 5.000000e-01
  %5028 = fadd fast float %5027, %5010
  %5029 = fsub fast float %5028, %5016
  %5030 = fdiv fast float %5026, %4980
  %5031 = fdiv fast float %5029, %5006
  %5032 = fmul fast float %4664, 4.375000e-01
  %5033 = fadd fast float %5032, 3.125000e-02
  %5034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5030, float %5031, float %5033, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = extractvalue %dx.types.ResRet.f32 %5034, 1
  %5037 = extractvalue %dx.types.ResRet.f32 %5034, 2
  %5038 = fadd fast float %5035, %4976
  %5039 = fadd fast float %5036, %4977
  %5040 = fadd fast float %5037, %4978
  br label %5041

; <label>:5041                                    ; preds = %5005, %4990
  %5042 = phi float [ %5040, %5005 ], [ %4978, %4990 ]
  %5043 = phi float [ %5039, %5005 ], [ %4977, %4990 ]
  %5044 = phi float [ %5038, %5005 ], [ %4976, %4990 ]
  %5045 = icmp eq i32 %5003, 65535
  br i1 %5045, label %5135, label %5046

; <label>:5046                                    ; preds = %5041
  %5047 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %5048 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %5049 = extractvalue %dx.types.CBufRet.f32 %4991, 1
  %5050 = fmul fast float %5048, %4636
  %5051 = fmul fast float %5049, %4637
  %5052 = fmul fast float %5050, 1.250000e-01
  %5053 = fmul fast float %5051, 1.250000e-01
  %5054 = call float @dx.op.unary.f32(i32 27, float %5052)  ; Round_ni(value)
  %5055 = call float @dx.op.unary.f32(i32 27, float %5053)  ; Round_ni(value)
  %5056 = fmul fast float %5054, 8.000000e+00
  %5057 = fmul fast float %5055, 8.000000e+00
  %5058 = fsub fast float %5050, %5056
  %5059 = fsub fast float %5051, %5057
  %5060 = fadd fast float %5058, 5.000000e-01
  %5061 = fadd fast float %5059, 5.000000e-01
  %5062 = and i32 %5003, 255
  %5063 = lshr i32 %5001, 24
  %5064 = mul nuw nsw i32 %5062, 9
  %5065 = uitofp i32 %5064 to float
  %5066 = mul nuw nsw i32 %5063, 9
  %5067 = uitofp i32 %5066 to float
  %5068 = fadd fast float %5060, %5065
  %5069 = fadd fast float %5061, %5067
  %5070 = fdiv fast float %5068, %4980
  %5071 = fdiv fast float %5069, %5047
  %5072 = fmul fast float %4664, 4.375000e-01
  %5073 = fadd fast float %5072, 3.125000e-02
  %5074 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5070, float %5071, float %5073, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5075 = extractvalue %dx.types.ResRet.f32 %5074, 0
  %5076 = extractvalue %dx.types.ResRet.f32 %5074, 1
  %5077 = extractvalue %dx.types.ResRet.f32 %5074, 2
  %5078 = fadd fast float %5072, 5.312500e-01
  %5079 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5070, float %5071, float %5078, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5080 = extractvalue %dx.types.ResRet.f32 %5079, 0
  %5081 = extractvalue %dx.types.ResRet.f32 %5079, 1
  %5082 = extractvalue %dx.types.ResRet.f32 %5079, 2
  %5083 = fmul fast float %5080, 2.000000e+00
  %5084 = fmul fast float %5081, 2.000000e+00
  %5085 = fmul fast float %5082, 2.000000e+00
  %5086 = fadd fast float %5083, -1.000000e+00
  %5087 = fadd fast float %5084, -1.000000e+00
  %5088 = fadd fast float %5085, -1.000000e+00
  %5089 = fmul fast float %5086, %5086
  %5090 = fmul fast float %5087, %5087
  %5091 = fadd fast float %5089, %5090
  %5092 = fmul fast float %5088, %5088
  %5093 = fadd fast float %5091, %5092
  %5094 = call float @dx.op.unary.f32(i32 24, float %5093)  ; Sqrt(value)
  %5095 = fcmp fast ogt float %5094, 0.000000e+00
  br i1 %5095, label %5096, label %5100

; <label>:5096                                    ; preds = %5046
  %5097 = fdiv fast float %5086, %5094
  %5098 = fdiv fast float %5087, %5094
  %5099 = fdiv fast float %5088, %5094
  br label %5100

; <label>:5100                                    ; preds = %5096, %5046
  %5101 = phi float [ %5097, %5096 ], [ 0.000000e+00, %5046 ]
  %5102 = phi float [ %5098, %5096 ], [ 0.000000e+00, %5046 ]
  %5103 = phi float [ %5099, %5096 ], [ 0.000000e+00, %5046 ]
  %5104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5105 = extractvalue %dx.types.CBufRet.f32 %5104, 0
  %5106 = extractvalue %dx.types.CBufRet.f32 %5104, 1
  %5107 = fsub fast float %4621, %5105
  %5108 = fsub fast float %4622, %5106
  %5109 = fmul fast float %5107, %5107
  %5110 = fmul fast float %5108, %5108
  %5111 = fadd fast float %5109, %5110
  %5112 = call float @dx.op.unary.f32(i32 24, float %5111)  ; Sqrt(value)
  %5113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %5114 = extractvalue %dx.types.CBufRet.f32 %5113, 0
  %5115 = extractvalue %dx.types.CBufRet.f32 %5113, 1
  %5116 = fsub fast float %5112, %5114
  %5117 = fdiv fast float %5116, %5115
  %5118 = call float @dx.op.unary.f32(i32 7, float %5117)  ; Saturate(value)
  %5119 = fmul fast float %5118, 2.000000e+00
  %5120 = fsub fast float 3.000000e+00, %5119
  %5121 = fmul fast float %5118, %5118
  %5122 = fmul fast float %5121, %5120
  %5123 = call float @dx.op.dot3.f32(i32 55, float %5101, float %5102, float %5103, float %4596, float %4597, float %4598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5124 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5123)  ; FMax(a,b)
  %5125 = fmul fast float %5124, 0x400C5BF8A0000000
  %5126 = fmul fast float %5122, %5075
  %5127 = fmul fast float %5126, %5125
  %5128 = fadd fast float %5127, %5044
  %5129 = fmul fast float %5122, %5076
  %5130 = fmul fast float %5129, %5125
  %5131 = fadd fast float %5130, %5043
  %5132 = fmul fast float %5122, %5077
  %5133 = fmul fast float %5132, %5125
  %5134 = fadd fast float %5133, %5042
  br label %5135

; <label>:5135                                    ; preds = %5100, %5041, %4966
  %5136 = phi float [ %5134, %5100 ], [ %5042, %5041 ], [ %4978, %4966 ]
  %5137 = phi float [ %5131, %5100 ], [ %5043, %5041 ], [ %4977, %4966 ]
  %5138 = phi float [ %5128, %5100 ], [ %5044, %5041 ], [ %4976, %4966 ]
  %5139 = fcmp fast ogt float %4623, %4660
  %5140 = and i1 %4982, %5139
  %5141 = and i1 %4984, %5140
  %5142 = and i1 %4986, %5141
  %5143 = and i1 %4988, %5142
  br i1 %5143, label %5144, label %5201, !dx.controlflow.hints !76

; <label>:5144                                    ; preds = %5135
  %5145 = fmul fast float %4662, 0x3FC24924A0000000
  %5146 = fsub fast float %4623, %4660
  %5147 = fdiv fast float %5146, %5145
  %5148 = call float @dx.op.unary.f32(i32 7, float %5147)  ; Saturate(value)
  %5149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %5150 = extractvalue %dx.types.CBufRet.f32 %5149, 0
  %5151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.f32 %5151, 0
  %5153 = extractvalue %dx.types.CBufRet.f32 %5151, 1
  %5154 = extractvalue %dx.types.CBufRet.f32 %5151, 2
  %5155 = fsub fast float %5150, %5138
  %5156 = fsub fast float %5152, %4973
  %5157 = fsub fast float %5153, %4974
  %5158 = fsub fast float %5154, %4975
  %5159 = fmul fast float %5155, %5148
  %5160 = fmul fast float %5156, %5148
  %5161 = fmul fast float %5157, %5148
  %5162 = fmul fast float %5158, %5148
  %5163 = fadd fast float %5159, %5138
  %5164 = fadd fast float %5160, %4973
  %5165 = fadd fast float %5161, %4974
  %5166 = fadd fast float %5162, %4975
  %5167 = extractvalue %dx.types.CBufRet.f32 %5149, 1
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 0
  %5170 = extractvalue %dx.types.CBufRet.f32 %5168, 1
  %5171 = extractvalue %dx.types.CBufRet.f32 %5168, 2
  %5172 = fsub fast float %5167, %5137
  %5173 = fsub fast float %5169, %4970
  %5174 = fsub fast float %5170, %4971
  %5175 = fsub fast float %5171, %4972
  %5176 = fmul fast float %5172, %5148
  %5177 = fmul fast float %5173, %5148
  %5178 = fmul fast float %5174, %5148
  %5179 = fmul fast float %5175, %5148
  %5180 = fadd fast float %5176, %5137
  %5181 = fadd fast float %5177, %4970
  %5182 = fadd fast float %5178, %4971
  %5183 = fadd fast float %5179, %4972
  %5184 = extractvalue %dx.types.CBufRet.f32 %5149, 2
  %5185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.CBufRet.f32 %5185, 1
  %5188 = extractvalue %dx.types.CBufRet.f32 %5185, 2
  %5189 = fsub fast float %5184, %5136
  %5190 = fsub fast float %5186, %4967
  %5191 = fsub fast float %5187, %4968
  %5192 = fsub fast float %5188, %4969
  %5193 = fmul fast float %5189, %5148
  %5194 = fmul fast float %5190, %5148
  %5195 = fmul fast float %5191, %5148
  %5196 = fmul fast float %5192, %5148
  %5197 = fadd fast float %5193, %5136
  %5198 = fadd fast float %5194, %4967
  %5199 = fadd fast float %5195, %4968
  %5200 = fadd fast float %5196, %4969
  br label %5201

; <label>:5201                                    ; preds = %5144, %5135
  %5202 = phi float [ %5197, %5144 ], [ %5136, %5135 ]
  %5203 = phi float [ %5198, %5144 ], [ %4967, %5135 ]
  %5204 = phi float [ %5199, %5144 ], [ %4968, %5135 ]
  %5205 = phi float [ %5200, %5144 ], [ %4969, %5135 ]
  %5206 = phi float [ %5180, %5144 ], [ %5137, %5135 ]
  %5207 = phi float [ %5181, %5144 ], [ %4970, %5135 ]
  %5208 = phi float [ %5182, %5144 ], [ %4971, %5135 ]
  %5209 = phi float [ %5183, %5144 ], [ %4972, %5135 ]
  %5210 = phi float [ %5163, %5144 ], [ %5138, %5135 ]
  %5211 = phi float [ %5164, %5144 ], [ %4973, %5135 ]
  %5212 = phi float [ %5165, %5144 ], [ %4974, %5135 ]
  %5213 = phi float [ %5166, %5144 ], [ %4975, %5135 ]
  %5214 = extractvalue %dx.types.CBufRet.f32 %4785, 3
  %5215 = fmul fast float %5214, %5210
  %5216 = fmul fast float %5214, %5206
  %5217 = fmul fast float %5214, %5202
  %5218 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5219 = extractvalue %dx.types.CBufRet.f32 %5218, 3
  %5220 = fmul fast float %5215, %5219
  %5221 = fmul fast float %5216, %5219
  %5222 = fmul fast float %5217, %5219
  %5223 = fmul fast float %5211, 1.500000e+00
  %5224 = fmul fast float %5223, %5214
  %5225 = fmul fast float %5224, %5219
  %5226 = fmul fast float %5212, 1.500000e+00
  %5227 = fmul fast float %5226, %5214
  %5228 = fmul fast float %5227, %5219
  %5229 = fmul fast float %5213, 1.500000e+00
  %5230 = fmul fast float %5229, %5214
  %5231 = fmul fast float %5230, %5219
  %5232 = fmul fast float %5207, 1.500000e+00
  %5233 = fmul fast float %5232, %5214
  %5234 = fmul fast float %5233, %5219
  %5235 = fmul fast float %5208, 1.500000e+00
  %5236 = fmul fast float %5235, %5214
  %5237 = fmul fast float %5236, %5219
  %5238 = fmul fast float %5209, 1.500000e+00
  %5239 = fmul fast float %5238, %5214
  %5240 = fmul fast float %5239, %5219
  %5241 = fmul fast float %5203, 1.500000e+00
  %5242 = fmul fast float %5241, %5214
  %5243 = fmul fast float %5242, %5219
  %5244 = fmul fast float %5204, 1.500000e+00
  %5245 = fmul fast float %5244, %5214
  %5246 = fmul fast float %5245, %5219
  %5247 = fmul fast float %5205, 1.500000e+00
  %5248 = fmul fast float %5247, %5214
  %5249 = fmul fast float %5248, %5219
  %5250 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5220)  ; FMax(a,b)
  %5251 = call float @dx.op.dot3.f32(i32 55, float %5225, float %5228, float %5231, float %5225, float %5228, float %5231)  ; Dot3(ax,ay,az,bx,by,bz)
  %5252 = fcmp fast oeq float %5251, 0.000000e+00
  %5253 = fcmp fast oeq float %5250, 0.000000e+00
  %5254 = or i1 %5253, %5252
  br i1 %5254, label %5284, label %5255

; <label>:5255                                    ; preds = %5201
  %5256 = fsub fast float -0.000000e+00, %5231
  %5257 = fsub fast float -0.000000e+00, %5225
  %5258 = call float @dx.op.unary.f32(i32 24, float %5251)  ; Sqrt(value)
  %5259 = fdiv fast float %5258, %5250
  %5260 = fcmp fast ogt float %5259, 0x3FFB6F8900000000
  %5261 = select i1 %5260, float 0x3FFB6F8900000000, float %5259
  %5262 = fmul fast float %5261, 0x3FE8A23460000000
  %5263 = call float @dx.op.unary.f32(i32 7, float %5262)  ; Saturate(value)
  %5264 = call float @dx.op.binary.f32(i32 35, float %5261, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5265 = fmul fast float %5263, %5250
  %5266 = fmul fast float %5264, 0x3FF279A740000000
  %5267 = fadd fast float %5266, -1.000000e+00
  %5268 = call float @dx.op.dot3.f32(i32 55, float %5256, float %5257, float %5228, float %5256, float %5257, float %5228)  ; Dot3(ax,ay,az,bx,by,bz)
  %5269 = call float @dx.op.unary.f32(i32 25, float %5268)  ; Rsqrt(value)
  %5270 = fmul fast float %5269, %5256
  %5271 = fmul fast float %5269, %5257
  %5272 = fmul fast float %5269, %5228
  %5273 = fmul fast float %5267, %5267
  %5274 = fsub fast float 1.000000e+00, %5273
  %5275 = fmul fast float %5264, 0x40005F8BE0000000
  %5276 = fsub fast float 0x400C5BF8A0000000, %5275
  %5277 = fdiv fast float %5265, %5276
  %5278 = fmul fast float %5277, 0x3FEE31C3C0000000
  %5279 = fmul fast float %5278, %5274
  %5280 = fmul fast float %5264, 0x3FDACB7480000000
  %5281 = fadd fast float %5280, 0xBFD7347680000000
  %5282 = fmul fast float %5281, %5277
  %5283 = fmul fast float %5282, %5274
  br label %5284

; <label>:5284                                    ; preds = %5255, %5201
  %5285 = phi float [ %5270, %5255 ], [ 0.000000e+00, %5201 ]
  %5286 = phi float [ %5271, %5255 ], [ 0.000000e+00, %5201 ]
  %5287 = phi float [ %5272, %5255 ], [ 0.000000e+00, %5201 ]
  %5288 = phi float [ %5279, %5255 ], [ 0.000000e+00, %5201 ]
  %5289 = phi float [ %5283, %5255 ], [ 0.000000e+00, %5201 ]
  %5290 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float %4596, float %4597, float %4598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5291 = fmul fast float %5290, %5290
  %5292 = fmul fast float %5291, 0x3FEE471020000000
  %5293 = fadd fast float %5292, 0xBFD42F6020000000
  %5294 = fmul fast float %5250, 0x3FD20DD760000000
  %5295 = fmul fast float %5293, %5289
  %5296 = fmul fast float %5288, 0x3FDF454380000000
  %5297 = fmul fast float %5296, %5290
  %5298 = fadd fast float %5297, %5294
  %5299 = fadd fast float %5298, %5295
  %5300 = call float @dx.op.dot3.f32(i32 55, float %5285, float %5286, float %5287, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %5301 = fmul fast float %5300, 0x3FDF454380000000
  %5302 = fmul fast float %5300, %5300
  %5303 = fmul fast float %5302, 0x3FEE471020000000
  %5304 = fadd fast float %5303, 0xBFD42F6020000000
  %5305 = call float @dx.op.dot3.f32(i32 55, float %5250, float %5288, float %5289, float 0x3FD20DD760000000, float %5301, float %5304)  ; Dot3(ax,ay,az,bx,by,bz)
  %5306 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5221)  ; FMax(a,b)
  %5307 = call float @dx.op.dot3.f32(i32 55, float %5234, float %5237, float %5240, float %5234, float %5237, float %5240)  ; Dot3(ax,ay,az,bx,by,bz)
  %5308 = fcmp fast oeq float %5307, 0.000000e+00
  %5309 = fcmp fast oeq float %5306, 0.000000e+00
  %5310 = or i1 %5309, %5308
  br i1 %5310, label %5340, label %5311

; <label>:5311                                    ; preds = %5284
  %5312 = fsub fast float -0.000000e+00, %5240
  %5313 = fsub fast float -0.000000e+00, %5234
  %5314 = call float @dx.op.unary.f32(i32 24, float %5307)  ; Sqrt(value)
  %5315 = fdiv fast float %5314, %5306
  %5316 = fcmp fast ogt float %5315, 0x3FFB6F8900000000
  %5317 = select i1 %5316, float 0x3FFB6F8900000000, float %5315
  %5318 = fmul fast float %5317, 0x3FE8A23460000000
  %5319 = call float @dx.op.unary.f32(i32 7, float %5318)  ; Saturate(value)
  %5320 = call float @dx.op.binary.f32(i32 35, float %5317, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5321 = fmul fast float %5319, %5306
  %5322 = fmul fast float %5320, 0x3FF279A740000000
  %5323 = fadd fast float %5322, -1.000000e+00
  %5324 = call float @dx.op.dot3.f32(i32 55, float %5312, float %5313, float %5237, float %5312, float %5313, float %5237)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = call float @dx.op.unary.f32(i32 25, float %5324)  ; Rsqrt(value)
  %5326 = fmul fast float %5325, %5312
  %5327 = fmul fast float %5325, %5313
  %5328 = fmul fast float %5325, %5237
  %5329 = fmul fast float %5323, %5323
  %5330 = fsub fast float 1.000000e+00, %5329
  %5331 = fmul fast float %5320, 0x40005F8BE0000000
  %5332 = fsub fast float 0x400C5BF8A0000000, %5331
  %5333 = fdiv fast float %5321, %5332
  %5334 = fmul fast float %5333, 0x3FEE31C3C0000000
  %5335 = fmul fast float %5334, %5330
  %5336 = fmul fast float %5320, 0x3FDACB7480000000
  %5337 = fadd fast float %5336, 0xBFD7347680000000
  %5338 = fmul fast float %5337, %5333
  %5339 = fmul fast float %5338, %5330
  br label %5340

; <label>:5340                                    ; preds = %5311, %5284
  %5341 = phi float [ %5326, %5311 ], [ 0.000000e+00, %5284 ]
  %5342 = phi float [ %5327, %5311 ], [ 0.000000e+00, %5284 ]
  %5343 = phi float [ %5328, %5311 ], [ 0.000000e+00, %5284 ]
  %5344 = phi float [ %5335, %5311 ], [ 0.000000e+00, %5284 ]
  %5345 = phi float [ %5339, %5311 ], [ 0.000000e+00, %5284 ]
  %5346 = call float @dx.op.dot3.f32(i32 55, float %5341, float %5342, float %5343, float %4596, float %4597, float %4598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5347 = fmul fast float %5346, %5346
  %5348 = fmul fast float %5347, 0x3FEE471020000000
  %5349 = fadd fast float %5348, 0xBFD42F6020000000
  %5350 = fmul fast float %5306, 0x3FD20DD760000000
  %5351 = fmul fast float %5349, %5345
  %5352 = fmul fast float %5344, 0x3FDF454380000000
  %5353 = fmul fast float %5352, %5346
  %5354 = fadd fast float %5353, %5350
  %5355 = fadd fast float %5354, %5351
  %5356 = call float @dx.op.dot3.f32(i32 55, float %5341, float %5342, float %5343, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %5357 = fmul fast float %5356, 0x3FDF454380000000
  %5358 = fmul fast float %5356, %5356
  %5359 = fmul fast float %5358, 0x3FEE471020000000
  %5360 = fadd fast float %5359, 0xBFD42F6020000000
  %5361 = call float @dx.op.dot3.f32(i32 55, float %5306, float %5344, float %5345, float 0x3FD20DD760000000, float %5357, float %5360)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5222)  ; FMax(a,b)
  %5363 = call float @dx.op.dot3.f32(i32 55, float %5243, float %5246, float %5249, float %5243, float %5246, float %5249)  ; Dot3(ax,ay,az,bx,by,bz)
  %5364 = fcmp fast oeq float %5363, 0.000000e+00
  %5365 = fcmp fast oeq float %5362, 0.000000e+00
  %5366 = or i1 %5365, %5364
  br i1 %5366, label %5396, label %5367

; <label>:5367                                    ; preds = %5340
  %5368 = fsub fast float -0.000000e+00, %5249
  %5369 = fsub fast float -0.000000e+00, %5243
  %5370 = call float @dx.op.unary.f32(i32 24, float %5363)  ; Sqrt(value)
  %5371 = fdiv fast float %5370, %5362
  %5372 = fcmp fast ogt float %5371, 0x3FFB6F8900000000
  %5373 = select i1 %5372, float 0x3FFB6F8900000000, float %5371
  %5374 = fmul fast float %5373, 0x3FE8A23460000000
  %5375 = call float @dx.op.unary.f32(i32 7, float %5374)  ; Saturate(value)
  %5376 = call float @dx.op.binary.f32(i32 35, float %5373, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5377 = fmul fast float %5375, %5362
  %5378 = fmul fast float %5376, 0x3FF279A740000000
  %5379 = fadd fast float %5378, -1.000000e+00
  %5380 = call float @dx.op.dot3.f32(i32 55, float %5368, float %5369, float %5246, float %5368, float %5369, float %5246)  ; Dot3(ax,ay,az,bx,by,bz)
  %5381 = call float @dx.op.unary.f32(i32 25, float %5380)  ; Rsqrt(value)
  %5382 = fmul fast float %5381, %5368
  %5383 = fmul fast float %5381, %5369
  %5384 = fmul fast float %5381, %5246
  %5385 = fmul fast float %5379, %5379
  %5386 = fsub fast float 1.000000e+00, %5385
  %5387 = fmul fast float %5376, 0x40005F8BE0000000
  %5388 = fsub fast float 0x400C5BF8A0000000, %5387
  %5389 = fdiv fast float %5377, %5388
  %5390 = fmul fast float %5389, 0x3FEE31C3C0000000
  %5391 = fmul fast float %5390, %5386
  %5392 = fmul fast float %5376, 0x3FDACB7480000000
  %5393 = fadd fast float %5392, 0xBFD7347680000000
  %5394 = fmul fast float %5393, %5389
  %5395 = fmul fast float %5394, %5386
  br label %5396

; <label>:5396                                    ; preds = %5367, %5340
  %5397 = phi float [ %5382, %5367 ], [ 0.000000e+00, %5340 ]
  %5398 = phi float [ %5383, %5367 ], [ 0.000000e+00, %5340 ]
  %5399 = phi float [ %5384, %5367 ], [ 0.000000e+00, %5340 ]
  %5400 = phi float [ %5391, %5367 ], [ 0.000000e+00, %5340 ]
  %5401 = phi float [ %5395, %5367 ], [ 0.000000e+00, %5340 ]
  %5402 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5398, float %5399, float %4596, float %4597, float %4598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5403 = fmul fast float %5402, %5402
  %5404 = fmul fast float %5403, 0x3FEE471020000000
  %5405 = fadd fast float %5404, 0xBFD42F6020000000
  %5406 = fmul fast float %5362, 0x3FD20DD760000000
  %5407 = fmul fast float %5405, %5401
  %5408 = fmul fast float %5400, 0x3FDF454380000000
  %5409 = fmul fast float %5408, %5402
  %5410 = fadd fast float %5409, %5406
  %5411 = fadd fast float %5410, %5407
  %5412 = call float @dx.op.dot3.f32(i32 55, float %5397, float %5398, float %5399, float %4609, float %4610, float %4611)  ; Dot3(ax,ay,az,bx,by,bz)
  %5413 = fmul fast float %5412, 0x3FDF454380000000
  %5414 = fmul fast float %5412, %5412
  %5415 = fmul fast float %5414, 0x3FEE471020000000
  %5416 = fadd fast float %5415, 0xBFD42F6020000000
  %5417 = call float @dx.op.dot3.f32(i32 55, float %5362, float %5400, float %5401, float 0x3FD20DD760000000, float %5413, float %5416)  ; Dot3(ax,ay,az,bx,by,bz)
  %5418 = call float @dx.op.binary.f32(i32 35, float %5299, float 0.000000e+00)  ; FMax(a,b)
  %5419 = call float @dx.op.binary.f32(i32 35, float %5355, float 0.000000e+00)  ; FMax(a,b)
  %5420 = call float @dx.op.binary.f32(i32 35, float %5411, float 0.000000e+00)  ; FMax(a,b)
  %5421 = call float @dx.op.binary.f32(i32 35, float %5305, float 0.000000e+00)  ; FMax(a,b)
  %5422 = call float @dx.op.binary.f32(i32 35, float %5361, float 0.000000e+00)  ; FMax(a,b)
  %5423 = call float @dx.op.binary.f32(i32 35, float %5417, float 0.000000e+00)  ; FMax(a,b)
  %5424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5425 = extractvalue %dx.types.CBufRet.f32 %5424, 0
  %5426 = call float @dx.op.binary.f32(i32 36, float %4593, float %5425)  ; FMin(a,b)
  %5427 = fsub fast float 1.000000e+00, %4612
  %5428 = fmul fast float %5426, %5427
  %5429 = fsub fast float 1.000000e+00, %5428
  %5430 = bitcast float %5429 to i32
  %5431 = sub nsw i32 2129859010, %5430
  %5432 = bitcast i32 %5431 to float
  %5433 = call float @dx.op.binary.f32(i32 36, float %4594, float %5425)  ; FMin(a,b)
  %5434 = fmul fast float %5433, %5427
  %5435 = fsub fast float 1.000000e+00, %5434
  %5436 = bitcast float %5435 to i32
  %5437 = sub nsw i32 2129859010, %5436
  %5438 = bitcast i32 %5437 to float
  %5439 = call float @dx.op.binary.f32(i32 36, float %4595, float %5425)  ; FMin(a,b)
  %5440 = fmul fast float %5439, %5427
  %5441 = fsub fast float 1.000000e+00, %5440
  %5442 = bitcast float %5441 to i32
  %5443 = sub nsw i32 2129859010, %5442
  %5444 = bitcast i32 %5443 to float
  %5445 = fmul fast float %5418, %4612
  %5446 = fmul fast float %5445, %5432
  %5447 = fmul fast float %5419, %4612
  %5448 = fmul fast float %5447, %5438
  %5449 = fmul fast float %5420, %4612
  %5450 = fmul fast float %5449, %5444
  %5451 = call float @dx.op.binary.f32(i32 36, float %4590, float %5425)  ; FMin(a,b)
  %5452 = fmul fast float %5451, %5427
  %5453 = fsub fast float 1.000000e+00, %5452
  %5454 = bitcast float %5453 to i32
  %5455 = sub nsw i32 2129859010, %5454
  %5456 = bitcast i32 %5455 to float
  %5457 = call float @dx.op.binary.f32(i32 36, float %4591, float %5425)  ; FMin(a,b)
  %5458 = fmul fast float %5457, %5427
  %5459 = fsub fast float 1.000000e+00, %5458
  %5460 = bitcast float %5459 to i32
  %5461 = sub nsw i32 2129859010, %5460
  %5462 = bitcast i32 %5461 to float
  %5463 = call float @dx.op.binary.f32(i32 36, float %4601, float %5425)  ; FMin(a,b)
  %5464 = fmul fast float %5463, %5427
  %5465 = fsub fast float 1.000000e+00, %5464
  %5466 = bitcast float %5465 to i32
  %5467 = sub nsw i32 2129859010, %5466
  %5468 = bitcast i32 %5467 to float
  %5469 = fmul fast float %5421, %4612
  %5470 = fmul fast float %5469, %5456
  %5471 = fmul fast float %5422, %4612
  %5472 = fmul fast float %5471, %5462
  %5473 = fmul fast float %5423, %4612
  %5474 = fmul fast float %5473, %5468
  %5475 = call float @dx.op.dot3.f32(i32 55, float %5446, float %5448, float %5450, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = select i1 %163, float 0.000000e+00, float %5446
  %5477 = select i1 %163, float %5475, float %5448
  %5478 = select i1 %163, float 0.000000e+00, float %5450
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5470, float %5472, float %5474, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = select i1 %163, float 0.000000e+00, float %5470
  %5481 = select i1 %163, float %5479, float %5472
  %5482 = select i1 %163, float 0.000000e+00, float %5474
  %5483 = fmul fast float %4603, 9.843750e-01
  %5484 = fmul fast float %4599, 9.843750e-01
  %5485 = fadd fast float %5483, 7.812500e-03
  %5486 = fadd fast float %5484, 7.812500e-03
  %5487 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %5485, float %5486, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5488 = extractvalue %dx.types.ResRet.f32 %5487, 2
  %5489 = extractvalue %dx.types.ResRet.f32 %5487, 3
  %5490 = fmul fast float %5488, %4590
  %5491 = fmul fast float %5488, %4591
  %5492 = fmul fast float %5488, %4601
  %5493 = fadd fast float %5490, %5489
  %5494 = fadd fast float %5491, %5489
  %5495 = fadd fast float %5492, %5489
  %5496 = fcmp fast ogt float %3988, 0.000000e+00
  br i1 %5496, label %5497, label %5523

; <label>:5497                                    ; preds = %5396
  %5498 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3988, float %4603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5499 = extractvalue %dx.types.ResRet.f32 %5498, 0
  %5500 = extractvalue %dx.types.ResRet.f32 %5498, 1
  %5501 = extractvalue %dx.types.ResRet.f32 %5498, 2
  %5502 = fadd fast float %5499, -5.000000e-01
  %5503 = fadd fast float %5500, -5.000000e-01
  %5504 = fadd fast float %5501, -5.000000e-01
  %5505 = fsub fast float 1.000000e+00, %4590
  %5506 = fsub fast float 1.000000e+00, %4591
  %5507 = fsub fast float 1.000000e+00, %4601
  %5508 = fmul fast float %4590, 4.000000e+00
  %5509 = fmul fast float %5508, %5505
  %5510 = fmul fast float %5509, %5502
  %5511 = fmul fast float %4591, 4.000000e+00
  %5512 = fmul fast float %5511, %5506
  %5513 = fmul fast float %5512, %5503
  %5514 = fmul fast float %4601, 4.000000e+00
  %5515 = fmul fast float %5514, %5507
  %5516 = fmul fast float %5515, %5504
  %5517 = fadd fast float %5510, %5493
  %5518 = fadd fast float %5513, %5494
  %5519 = fadd fast float %5516, %5495
  %5520 = call float @dx.op.unary.f32(i32 7, float %5517)  ; Saturate(value)
  %5521 = call float @dx.op.unary.f32(i32 7, float %5518)  ; Saturate(value)
  %5522 = call float @dx.op.unary.f32(i32 7, float %5519)  ; Saturate(value)
  br label %5523

; <label>:5523                                    ; preds = %5497, %5396
  %5524 = phi float [ %5520, %5497 ], [ %5493, %5396 ]
  %5525 = phi float [ %5521, %5497 ], [ %5494, %5396 ]
  %5526 = phi float [ %5522, %5497 ], [ %5495, %5396 ]
  %5527 = call float @dx.op.binary.f32(i32 35, float %5525, float %5526)  ; FMax(a,b)
  %5528 = call float @dx.op.binary.f32(i32 35, float %5524, float %5527)  ; FMax(a,b)
  %5529 = fsub fast float 1.000000e+00, %5528
  %5530 = fmul fast float %5529, %5476
  %5531 = fmul fast float %5529, %5477
  %5532 = fmul fast float %5529, %5478
  %5533 = call float @dx.op.dot3.f32(i32 55, float %4593, float %4594, float %4595, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5534 = fcmp fast ogt float %5533, 0x3E7FF19E20000000
  %5535 = fdiv fast float 1.000000e+00, %5533
  %5536 = select i1 %5534, float %5535, float 0.000000e+00
  %5537 = fmul fast float %5536, %4593
  %5538 = fmul fast float %5536, %4594
  %5539 = fmul fast float %5536, %4595
  %5540 = fadd fast float %5537, -1.000000e+00
  %5541 = fadd fast float %5538, -1.000000e+00
  %5542 = fadd fast float %5539, -1.000000e+00
  %5543 = fmul fast float %5540, 5.000000e-01
  %5544 = fmul fast float %5541, 5.000000e-01
  %5545 = fmul fast float %5542, 5.000000e-01
  %5546 = fadd fast float %5543, 1.000000e+00
  %5547 = fadd fast float %5544, 1.000000e+00
  %5548 = fadd fast float %5545, 1.000000e+00
  %5549 = fmul fast float %5524, %5480
  %5550 = fmul fast float %5525, %5481
  %5551 = fmul fast float %5526, %5482
  %5552 = fsub fast float 1.000000e+00, %4603
  %5553 = bitcast float %5552 to i32
  %5554 = sitofp i32 %5553 to float
  %5555 = fmul fast float %5554, 5.000000e+00
  %5556 = fadd fast float %5555, 0xC1EFBF8940000000
  %5557 = fptosi float %5556 to i32
  %5558 = bitcast i32 %5557 to float
  %5559 = fmul fast float %5558, %3989
  %5560 = fmul fast float %5476, %5559
  %5561 = fmul fast float %5560, %5529
  %5562 = fmul fast float %5561, %5546
  %5563 = fmul fast float %5477, %5559
  %5564 = fmul fast float %5563, %5529
  %5565 = fmul fast float %5564, %5547
  %5566 = fmul fast float %5478, %5559
  %5567 = fmul fast float %5566, %5529
  %5568 = fmul fast float %5567, %5548
  %5569 = fmul fast float %5530, %3985
  %5570 = fmul fast float %5531, %3985
  %5571 = fmul fast float %5532, %3985
  %5572 = fadd fast float %5549, %3981
  %5573 = fadd fast float %5572, %5562
  %5574 = fmul fast float %5573, %3985
  %5575 = fadd fast float %5550, %3982
  %5576 = fadd fast float %5575, %5565
  %5577 = fmul fast float %5576, %3985
  %5578 = fadd fast float %5551, %3983
  %5579 = fadd fast float %5578, %5568
  %5580 = fmul fast float %5579, %3985
  %5581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5582 = extractvalue %dx.types.CBufRet.f32 %5581, 3
  %5583 = fcmp fast oeq float %5582, 0.000000e+00
  br i1 %5583, label %5811, label %5584

; <label>:5584                                    ; preds = %5523
  %5585 = extractvalue %dx.types.CBufRet.f32 %5581, 0
  %5586 = extractvalue %dx.types.CBufRet.f32 %5581, 1
  %5587 = extractvalue %dx.types.CBufRet.f32 %5581, 2
  %5588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5589 = extractvalue %dx.types.CBufRet.f32 %5588, 0
  %5590 = extractvalue %dx.types.CBufRet.f32 %5588, 1
  %5591 = extractvalue %dx.types.CBufRet.f32 %5588, 2
  %5592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5593 = extractvalue %dx.types.CBufRet.f32 %5592, 0
  %5594 = extractvalue %dx.types.CBufRet.f32 %5592, 1
  %5595 = call float @dx.op.dot3.f32(i32 55, float %5589, float %5590, float %5591, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5596 = select i1 %163, float %5593, float %5589
  %5597 = select i1 %163, float %5595, float %5590
  %5598 = select i1 %163, float %5594, float %5591
  %5599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5600 = extractvalue %dx.types.CBufRet.f32 %5599, 1
  %5601 = fcmp fast une float %5600, 0.000000e+00
  br i1 %5601, label %5602, label %5619

; <label>:5602                                    ; preds = %5584
  %5603 = fptoui float %66 to i32
  %5604 = fptoui float %67 to i32
  %5605 = lshr i32 %5603, 4
  %5606 = lshr i32 %5604, 4
  %5607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5608 = extractvalue %dx.types.CBufRet.f32 %5607, 0
  %5609 = fptoui float %5608 to i32
  %5610 = add i32 %5609, 15
  %5611 = lshr i32 %5610, 4
  %5612 = mul i32 %5611, %5606
  %5613 = add i32 %5612, %5605
  %5614 = shl i32 %5613, 3
  %5615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5614, i32 undef)  ; BufferLoad(srv,index,wot)
  %5616 = extractvalue %dx.types.ResRet.i32 %5615, 0
  %5617 = and i32 %5616, -268435456
  %5618 = icmp eq i32 %5617, -1342177280
  br i1 %5618, label %5629, label %5619

; <label>:5619                                    ; preds = %5602, %5584
  %5620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5621 = extractvalue %dx.types.CBufRet.f32 %5620, 2
  %5622 = extractvalue %dx.types.CBufRet.f32 %5620, 3
  %5623 = fmul fast float %5621, %66
  %5624 = fmul fast float %5622, %67
  %5625 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %5623, float %5624, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5626 = extractvalue %dx.types.ResRet.f32 %5625, 0
  %5627 = extractvalue %dx.types.ResRet.f32 %5625, 1
  %5628 = extractvalue %dx.types.ResRet.f32 %5625, 2
  br label %5629

; <label>:5629                                    ; preds = %5619, %5602
  %5630 = phi float [ %5626, %5619 ], [ 0.000000e+00, %5602 ]
  %5631 = phi float [ %5627, %5619 ], [ 0.000000e+00, %5602 ]
  %5632 = phi float [ %5628, %5619 ], [ 0.000000e+00, %5602 ]
  %5633 = call float @dx.op.binary.f32(i32 36, float %5631, float %5632)  ; FMin(a,b)
  %5634 = call float @dx.op.binary.f32(i32 36, float %5630, float %5633)  ; FMin(a,b)
  %5635 = fcmp fast ogt float %5634, 0.000000e+00
  br i1 %5635, label %5636, label %5811, !dx.controlflow.hints !77

; <label>:5636                                    ; preds = %5629
  %5637 = fmul fast float %5630, %5596
  %5638 = fmul fast float %5631, %5597
  %5639 = fmul fast float %5632, %5598
  %5640 = fsub fast float %5585, %4589
  %5641 = fsub fast float %5586, %4588
  %5642 = fsub fast float %5587, %4587
  %5643 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5642, float %5640, float %5641, float %5642)  ; Dot3(ax,ay,az,bx,by,bz)
  %5644 = call float @dx.op.unary.f32(i32 25, float %5643)  ; Rsqrt(value)
  %5645 = fmul fast float %5644, %5640
  %5646 = fmul fast float %5644, %5641
  %5647 = fmul fast float %5644, %5642
  %5648 = call float @dx.op.dot3.f32(i32 55, float %5585, float %5586, float %5587, float %4596, float %4597, float %4598)  ; Dot3(ax,ay,az,bx,by,bz)
  %5649 = call float @dx.op.dot3.f32(i32 55, float %4586, float %4585, float %4584, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %5650 = call float @dx.op.unary.f32(i32 7, float %5648)  ; Saturate(value)
  %5651 = fmul fast float %5650, %5650
  %5652 = fmul fast float %5651, %4616
  %5653 = call float @dx.op.unary.f32(i32 7, float %5652)  ; Saturate(value)
  %5654 = fmul fast float %5653, %5650
  %5655 = call float @dx.op.dot3.f32(i32 55, float %4596, float %4597, float %4598, float %5645, float %5646, float %5647)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = fmul fast float %5655, %5655
  %5657 = call float @dx.op.unary.f32(i32 6, float %5648)  ; FAbs(value)
  %5658 = fsub fast float 1.000000e+00, %4599
  %5659 = call float @dx.op.binary.f32(i32 35, float %5658, float 0x3F847AE140000000)  ; FMax(a,b)
  %5660 = fmul fast float %5659, %5659
  %5661 = fmul fast float %5660, %5660
  %5662 = fsub fast float 1.000000e+00, %5661
  %5663 = fmul fast float %4603, %4603
  %5664 = fmul fast float %5663, %5662
  %5665 = fadd fast float %5664, %5661
  %5666 = bitcast float %5665 to i32
  %5667 = ashr i32 %5666, 1
  %5668 = add nsw i32 %5667, 532487669
  %5669 = bitcast i32 %5668 to float
  %5670 = fadd fast float %5669, %4603
  %5671 = fmul fast float %5661, %5656
  %5672 = fsub fast float 1.000000e+00, %5656
  %5673 = fadd fast float %5672, %5671
  %5674 = fmul fast float %5657, %5657
  %5675 = fmul fast float %5674, %5662
  %5676 = fadd fast float %5675, %5661
  %5677 = bitcast float %5676 to i32
  %5678 = ashr i32 %5677, 1
  %5679 = add nsw i32 %5678, 532487669
  %5680 = bitcast i32 %5679 to float
  %5681 = fadd fast float %5680, %5657
  %5682 = fmul fast float %5673, %5673
  %5683 = fmul fast float %5682, %5670
  %5684 = fmul fast float %5683, %5681
  %5685 = fdiv fast float 0x3FF0A00000000000, %5684
  %5686 = fmul fast float %5685, %5661
  %5687 = call float @dx.op.unary.f32(i32 6, float %5649)  ; FAbs(value)
  %5688 = fsub fast float 1.000000e+00, %5687
  %5689 = bitcast float %5688 to i32
  %5690 = sitofp i32 %5689 to float
  %5691 = fmul fast float %5690, 5.000000e+00
  %5692 = fadd fast float %5691, 0xC1EFBF8940000000
  %5693 = fptosi float %5692 to i32
  %5694 = bitcast i32 %5693 to float
  %5695 = fsub fast float 1.000000e+00, %4590
  %5696 = fsub fast float 1.000000e+00, %4591
  %5697 = fsub fast float 1.000000e+00, %4601
  %5698 = fmul fast float %5694, %5695
  %5699 = fmul fast float %5694, %5696
  %5700 = fmul fast float %5694, %5697
  %5701 = fadd fast float %5698, %4590
  %5702 = fadd fast float %5699, %4591
  %5703 = fadd fast float %5700, %4601
  br i1 %5496, label %5704, label %5727

; <label>:5704                                    ; preds = %5636
  %5705 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3988, float %5687, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5706 = extractvalue %dx.types.ResRet.f32 %5705, 0
  %5707 = extractvalue %dx.types.ResRet.f32 %5705, 1
  %5708 = extractvalue %dx.types.ResRet.f32 %5705, 2
  %5709 = fadd fast float %5706, -5.000000e-01
  %5710 = fadd fast float %5707, -5.000000e-01
  %5711 = fadd fast float %5708, -5.000000e-01
  %5712 = fmul fast float %4590, 4.000000e+00
  %5713 = fmul fast float %5712, %5695
  %5714 = fmul fast float %5713, %5709
  %5715 = fmul fast float %4591, 4.000000e+00
  %5716 = fmul fast float %5715, %5696
  %5717 = fmul fast float %5716, %5710
  %5718 = fmul fast float %4601, 4.000000e+00
  %5719 = fmul fast float %5718, %5697
  %5720 = fmul fast float %5719, %5711
  %5721 = fadd fast float %5714, %5701
  %5722 = fadd fast float %5717, %5702
  %5723 = fadd fast float %5720, %5703
  %5724 = call float @dx.op.unary.f32(i32 7, float %5721)  ; Saturate(value)
  %5725 = call float @dx.op.unary.f32(i32 7, float %5722)  ; Saturate(value)
  %5726 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  br label %5727

; <label>:5727                                    ; preds = %5704, %5636
  %5728 = phi float [ %5724, %5704 ], [ %5701, %5636 ]
  %5729 = phi float [ %5725, %5704 ], [ %5702, %5636 ]
  %5730 = phi float [ %5726, %5704 ], [ %5703, %5636 ]
  %5731 = fmul fast float %5648, 9.843750e-01
  %5732 = fadd fast float %5731, 7.812500e-03
  %5733 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %5732, float %5486, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5734 = extractvalue %dx.types.ResRet.f32 %5733, 2
  %5735 = extractvalue %dx.types.ResRet.f32 %5733, 3
  %5736 = fmul fast float %5734, %4590
  %5737 = fmul fast float %5734, %4591
  %5738 = fmul fast float %5734, %4601
  %5739 = fadd fast float %5736, %5735
  %5740 = fadd fast float %5737, %5735
  %5741 = fadd fast float %5738, %5735
  br i1 %5496, label %5742, label %5765

; <label>:5742                                    ; preds = %5727
  %5743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3988, float %5648, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5744 = extractvalue %dx.types.ResRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.ResRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.ResRet.f32 %5743, 2
  %5747 = fadd fast float %5744, -5.000000e-01
  %5748 = fadd fast float %5745, -5.000000e-01
  %5749 = fadd fast float %5746, -5.000000e-01
  %5750 = fmul fast float %4590, 4.000000e+00
  %5751 = fmul fast float %5750, %5695
  %5752 = fmul fast float %5751, %5747
  %5753 = fmul fast float %4591, 4.000000e+00
  %5754 = fmul fast float %5753, %5696
  %5755 = fmul fast float %5754, %5748
  %5756 = fmul fast float %4601, 4.000000e+00
  %5757 = fmul fast float %5756, %5697
  %5758 = fmul fast float %5757, %5749
  %5759 = fadd fast float %5752, %5739
  %5760 = fadd fast float %5755, %5740
  %5761 = fadd fast float %5758, %5741
  %5762 = call float @dx.op.unary.f32(i32 7, float %5759)  ; Saturate(value)
  %5763 = call float @dx.op.unary.f32(i32 7, float %5760)  ; Saturate(value)
  %5764 = call float @dx.op.unary.f32(i32 7, float %5761)  ; Saturate(value)
  br label %5765

; <label>:5765                                    ; preds = %5742, %5727
  %5766 = phi float [ %5762, %5742 ], [ %5739, %5727 ]
  %5767 = phi float [ %5763, %5742 ], [ %5740, %5727 ]
  %5768 = phi float [ %5764, %5742 ], [ %5741, %5727 ]
  %5769 = call float @dx.op.binary.f32(i32 35, float %5767, float %5768)  ; FMax(a,b)
  %5770 = call float @dx.op.binary.f32(i32 35, float %5766, float %5769)  ; FMax(a,b)
  %5771 = fsub fast float 1.000000e+00, %5770
  %5772 = fmul fast float %5728, %5686
  %5773 = fmul fast float %5729, %5686
  %5774 = fmul fast float %5730, %5686
  %5775 = fsub fast float 1.000000e+00, %5649
  %5776 = bitcast float %5775 to i32
  %5777 = sitofp i32 %5776 to float
  %5778 = fmul fast float %5777, 5.000000e+00
  %5779 = fadd fast float %5778, 0xC1EFBF8940000000
  %5780 = fptosi float %5779 to i32
  %5781 = bitcast i32 %5780 to float
  %5782 = fmul fast float %5781, %3989
  %5783 = fmul fast float %5771, %5782
  %5784 = fmul fast float %5783, %5546
  %5785 = fmul fast float %5783, %5547
  %5786 = fmul fast float %5783, %5548
  %5787 = fadd fast float %5784, %5772
  %5788 = fadd fast float %5785, %5773
  %5789 = fadd fast float %5786, %5774
  %5790 = fmul fast float %5654, %5637
  %5791 = fmul fast float %5790, %5771
  %5792 = fmul fast float %5654, %5638
  %5793 = fmul fast float %5792, %5771
  %5794 = fmul fast float %5654, %5639
  %5795 = fmul fast float %5794, %5771
  %5796 = fmul fast float %5790, %5787
  %5797 = fmul fast float %5792, %5788
  %5798 = fmul fast float %5794, %5789
  %5799 = fadd fast float %5791, %5530
  %5800 = fmul fast float %5799, %3985
  %5801 = fadd fast float %5793, %5531
  %5802 = fmul fast float %5801, %3985
  %5803 = fadd fast float %5795, %5532
  %5804 = fmul fast float %5803, %3985
  %5805 = fadd fast float %5796, %5573
  %5806 = fmul fast float %5805, %3985
  %5807 = fadd fast float %5797, %5576
  %5808 = fmul fast float %5807, %3985
  %5809 = fadd fast float %5798, %5579
  %5810 = fmul fast float %5809, %3985
  br label %5811

; <label>:5811                                    ; preds = %5765, %5629, %5523
  %5812 = phi float [ %5574, %5523 ], [ %5574, %5629 ], [ %5806, %5765 ]
  %5813 = phi float [ %5577, %5523 ], [ %5577, %5629 ], [ %5808, %5765 ]
  %5814 = phi float [ %5580, %5523 ], [ %5580, %5629 ], [ %5810, %5765 ]
  %5815 = phi float [ %5569, %5523 ], [ %5569, %5629 ], [ %5800, %5765 ]
  %5816 = phi float [ %5570, %5523 ], [ %5570, %5629 ], [ %5802, %5765 ]
  %5817 = phi float [ %5571, %5523 ], [ %5571, %5629 ], [ %5804, %5765 ]
  %5818 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.i32 %5818, 0
  %5820 = icmp eq i32 %5819, 0
  br i1 %5820, label %6255, label %5821

; <label>:5821                                    ; preds = %5811
  %5822 = fptoui float %66 to i32
  %5823 = fptoui float %67 to i32
  %5824 = lshr i32 %5822, 4
  %5825 = lshr i32 %5823, 4
  %5826 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5827 = extractvalue %dx.types.CBufRet.i32 %5826, 0
  %5828 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5825, i32 %5827, i32 %5824)  ; UMad(a,b,c)
  %5829 = add nsw i32 %5819, -1
  %5830 = call i32 @dx.op.binary.i32(i32 37, i32 %5829, i32 0)  ; IMax(a,b)
  %5831 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %5832 = fptoui float %5831 to i32
  %5833 = lshr i32 %5832, 5
  %5834 = call i32 @dx.op.binary.i32(i32 40, i32 %5833, i32 8191)  ; UMin(a,b)
  %5835 = shl i32 %5834, 2
  %5836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5835, i32 undef)  ; BufferLoad(srv,index,wot)
  %5837 = extractvalue %dx.types.ResRet.i32 %5836, 0
  %5838 = lshr i32 %5837, 16
  %5839 = and i32 %5837, 65535
  %5840 = lshr i32 %5837, 21
  %5841 = lshr i32 %5839, 5
  %5842 = call i32 @dx.op.binary.i32(i32 40, i32 %5841, i32 %5830)  ; UMin(a,b)
  %5843 = icmp ugt i32 %5840, %5842
  br i1 %5843, label %6255, label %5844

; <label>:5844                                    ; preds = %5821
  br label %5845

; <label>:5845                                    ; preds = %6245, %5844
  %5846 = phi i32 [ %6252, %6245 ], [ %5840, %5844 ]
  %5847 = phi float [ %6246, %6245 ], [ %5812, %5844 ]
  %5848 = phi float [ %6247, %6245 ], [ %5813, %5844 ]
  %5849 = phi float [ %6248, %6245 ], [ %5814, %5844 ]
  %5850 = phi float [ %6249, %6245 ], [ %5815, %5844 ]
  %5851 = phi float [ %6250, %6245 ], [ %5816, %5844 ]
  %5852 = phi float [ %6251, %6245 ], [ %5817, %5844 ]
  %5853 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5854 = extractvalue %dx.types.CBufRet.i32 %5853, 0
  %5855 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5828, i32 %5854, i32 %5846)  ; UMad(a,b,c)
  %5856 = shl i32 %5855, 2
  %5857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5856, i32 undef)  ; BufferLoad(srv,index,wot)
  %5858 = extractvalue %dx.types.ResRet.i32 %5857, 0
  %5859 = shl i32 %5846, 5
  %5860 = sub nsw i32 %5838, %5859
  %5861 = call i32 @dx.op.binary.i32(i32 37, i32 %5860, i32 0)  ; IMax(a,b)
  %5862 = call i32 @dx.op.binary.i32(i32 38, i32 %5861, i32 31)  ; IMin(a,b)
  %5863 = sub nsw i32 1, %5838
  %5864 = add nsw i32 %5863, %5839
  %5865 = call i32 @dx.op.binary.i32(i32 37, i32 %5864, i32 0)  ; IMax(a,b)
  %5866 = call i32 @dx.op.binary.i32(i32 38, i32 %5865, i32 32)  ; IMin(a,b)
  %5867 = and i32 %5866, 31
  %5868 = shl i32 -1, %5867
  %5869 = xor i32 %5868, -1
  %5870 = and i32 %5862, 31
  %5871 = shl i32 %5869, %5870
  %5872 = icmp eq i32 %5866, 32
  %5873 = select i1 %5872, i32 -1, i32 %5871
  %5874 = and i32 %5873, %5858
  %5875 = icmp eq i32 %5874, 0
  br i1 %5875, label %6245, label %5876

; <label>:5876                                    ; preds = %5845
  br label %5877

; <label>:5877                                    ; preds = %5957, %5876
  %5878 = phi i32 [ %5889, %5957 ], [ %5874, %5876 ]
  %5879 = phi float [ %5958, %5957 ], [ %5847, %5876 ]
  %5880 = phi float [ %5959, %5957 ], [ %5848, %5876 ]
  %5881 = phi float [ %5960, %5957 ], [ %5849, %5876 ]
  %5882 = phi float [ %5961, %5957 ], [ %5850, %5876 ]
  %5883 = phi float [ %5962, %5957 ], [ %5851, %5876 ]
  %5884 = phi float [ %5963, %5957 ], [ %5852, %5876 ]
  %5885 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5878)  ; FirstbitLo(value)
  %5886 = add i32 %5885, %5859
  %5887 = and i32 %5885, 31
  %5888 = shl i32 1, %5887
  %5889 = xor i32 %5888, %5878
  %5890 = mul i32 %5886, 112
  %5891 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5890, i32 undef)  ; BufferLoad(srv,index,wot)
  %5892 = extractvalue %dx.types.ResRet.f32 %5891, 0
  %5893 = extractvalue %dx.types.ResRet.f32 %5891, 1
  %5894 = extractvalue %dx.types.ResRet.f32 %5891, 2
  %5895 = or i32 %5890, 12
  %5896 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5895, i32 undef)  ; BufferLoad(srv,index,wot)
  %5897 = extractvalue %dx.types.ResRet.f32 %5896, 0
  %5898 = add i32 %5890, 44
  %5899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5898, i32 undef)  ; BufferLoad(srv,index,wot)
  %5900 = extractvalue %dx.types.ResRet.f32 %5899, 0
  %5901 = add i32 %5890, 48
  %5902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5901, i32 undef)  ; BufferLoad(srv,index,wot)
  %5903 = extractvalue %dx.types.ResRet.f32 %5902, 0
  %5904 = extractvalue %dx.types.ResRet.f32 %5902, 1
  %5905 = extractvalue %dx.types.ResRet.f32 %5902, 2
  %5906 = add i32 %5890, 80
  %5907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5906, i32 undef)  ; BufferLoad(srv,index,wot)
  %5908 = extractvalue %dx.types.ResRet.f32 %5907, 1
  %5909 = extractvalue %dx.types.ResRet.f32 %5907, 2
  %5910 = call float @dx.op.dot3.f32(i32 55, float %5892, float %5893, float %5894, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5911 = select i1 %163, float %5908, float %5892
  %5912 = select i1 %163, float %5910, float %5893
  %5913 = select i1 %163, float %5909, float %5894
  %5914 = fsub fast float %5903, %121
  %5915 = fsub fast float %5904, %122
  %5916 = fsub fast float %5905, %123
  %5917 = call float @dx.op.dot3.f32(i32 55, float %5914, float %5915, float %5916, float %5914, float %5915, float %5916)  ; Dot3(ax,ay,az,bx,by,bz)
  %5918 = call float @dx.op.unary.f32(i32 24, float %5917)  ; Sqrt(value)
  %5919 = fdiv fast float 1.000000e+00, %5918
  %5920 = fmul fast float %5919, %5914
  %5921 = fmul fast float %5919, %5915
  %5922 = fmul fast float %5919, %5916
  %5923 = fadd fast float %5918, %5897
  %5924 = fdiv fast float 1.000000e+00, %5923
  %5925 = fmul float %5900, %5924
  %5926 = fmul float %5925, %5925
  %5927 = call float @dx.op.unary.f32(i32 7, float %5926)  ; Saturate(value)
  %5928 = and i32 %5888, %5874
  %5929 = icmp eq i32 %5928, 0
  br i1 %5929, label %5952, label %5930, !dx.controlflow.hints !78

; <label>:5930                                    ; preds = %5877
  %5931 = lshr i32 %5822, 5
  %5932 = lshr i32 %5823, 5
  %5933 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %5931, i32 %5932, i32 %5886, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5934 = extractvalue %dx.types.ResRet.i32 %5933, 0
  %5935 = and i32 %5934, 3
  %5936 = icmp eq i32 %5935, 0
  %5937 = select i1 %5936, float 1.000000e+00, float 0.000000e+00
  %5938 = icmp eq i32 %5935, 3
  br i1 %5938, label %5939, label %5952

; <label>:5939                                    ; preds = %5930
  %5940 = lshr i32 %5934, 10
  %5941 = and i32 %5940, 8160
  %5942 = and i32 %5823, 31
  %5943 = or i32 %5941, %5942
  %5944 = lshr i32 %5934, 1
  %5945 = and i32 %5944, 16352
  %5946 = and i32 %5822, 31
  %5947 = or i32 %5945, %5946
  %5948 = lshr i32 %5934, 23
  %5949 = and i32 %5948, 255
  %5950 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %5947, i32 %5943, i32 %5949, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5951 = extractvalue %dx.types.ResRet.f32 %5950, 0
  br label %5952

; <label>:5952                                    ; preds = %5939, %5930, %5877
  %5953 = phi float [ %5951, %5939 ], [ %5937, %5930 ], [ 0.000000e+00, %5877 ]
  %5954 = call float @dx.op.binary.f32(i32 36, float %5953, float %5953)  ; FMin(a,b)
  %5955 = call float @dx.op.binary.f32(i32 36, float %5953, float %5954)  ; FMin(a,b)
  %5956 = fcmp fast ogt float %5955, 0.000000e+00
  br i1 %5956, label %5965, label %5957, !dx.controlflow.hints !79

; <label>:5957                                    ; preds = %6201, %5952
  %5958 = phi float [ %5879, %5952 ], [ %6241, %6201 ]
  %5959 = phi float [ %5880, %5952 ], [ %6242, %6201 ]
  %5960 = phi float [ %5881, %5952 ], [ %6243, %6201 ]
  %5961 = phi float [ %5882, %5952 ], [ %6235, %6201 ]
  %5962 = phi float [ %5883, %5952 ], [ %6236, %6201 ]
  %5963 = phi float [ %5884, %5952 ], [ %6237, %6201 ]
  %5964 = icmp eq i32 %5878, %5888
  br i1 %5964, label %6244, label %5877

; <label>:5965                                    ; preds = %5952
  %5966 = fmul fast float %5953, %5911
  %5967 = fmul fast float %5953, %5912
  %5968 = fmul fast float %5953, %5913
  %5969 = fsub fast float %5905, %4389
  %5970 = fcmp fast ogt float %5969, 0.000000e+00
  %5971 = fsub fast float %123, %4389
  %5972 = fcmp fast ogt float %5971, 0.000000e+00
  %5973 = xor i1 %5972, %5970
  %5974 = fsub fast float %4389, %5905
  %5975 = fmul fast float %5974, 2.000000e+00
  %5976 = fadd fast float %5975, %5905
  %5977 = select i1 %5973, float %5905, float %5976
  %5978 = fsub fast float %5977, %123
  %5979 = call float @dx.op.dot3.f32(i32 55, float %5914, float %5915, float %5978, float %5914, float %5915, float %5978)  ; Dot3(ax,ay,az,bx,by,bz)
  %5980 = call float @dx.op.unary.f32(i32 25, float %5979)  ; Rsqrt(value)
  %5981 = fmul fast float %5980, %5914
  %5982 = fmul fast float %5980, %5915
  %5983 = fmul fast float %5980, %5978
  %5984 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4397)  ; Dot3(ax,ay,az,bx,by,bz)
  %5985 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5981, float %5982, float %5983)  ; Dot3(ax,ay,az,bx,by,bz)
  %5986 = fdiv fast float 1.000000e+00, %5985
  %5987 = fmul fast float %5986, %5984
  %5988 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5971, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5989 = fcmp fast ogt float %5988, 0.000000e+00
  %5990 = fcmp fast olt float %5988, 0.000000e+00
  %5991 = zext i1 %5989 to i32
  %5992 = zext i1 %5990 to i32
  %5993 = sub nsw i32 %5991, %5992
  %5994 = sitofp i32 %5993 to float
  %5995 = fsub fast float %5977, %4389
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5914, float %5915, float %5995, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = fcmp fast ogt float %5996, 0.000000e+00
  %5998 = fcmp fast olt float %5996, 0.000000e+00
  %5999 = zext i1 %5997 to i32
  %6000 = zext i1 %5998 to i32
  %6001 = sub nsw i32 %5999, %6000
  %6002 = sitofp i32 %6001 to float
  %6003 = fcmp fast une float %5994, %6002
  br i1 %6003, label %6004, label %6014

; <label>:6004                                    ; preds = %5965
  %6005 = fmul fast float %5987, %5983
  %6006 = fmul fast float %5987, %5982
  %6007 = fmul fast float %5987, %5981
  %6008 = fmul fast float %6007, %6007
  %6009 = fmul fast float %6006, %6006
  %6010 = fadd fast float %6008, %6009
  %6011 = fmul fast float %6005, %6005
  %6012 = fadd fast float %6010, %6011
  %6013 = call float @dx.op.unary.f32(i32 24, float %6012)  ; Sqrt(value)
  br label %6026

; <label>:6014                                    ; preds = %5965
  %6015 = icmp slt i32 %5993, 0
  br i1 %6015, label %6016, label %6026

; <label>:6016                                    ; preds = %6014
  %6017 = fsub fast float %121, %5903
  %6018 = fsub fast float %122, %5904
  %6019 = fsub fast float %123, %5977
  %6020 = fmul fast float %6017, %6017
  %6021 = fmul fast float %6018, %6018
  %6022 = fadd fast float %6020, %6021
  %6023 = fmul fast float %6019, %6019
  %6024 = fadd fast float %6022, %6023
  %6025 = call float @dx.op.unary.f32(i32 24, float %6024)  ; Sqrt(value)
  br label %6026

; <label>:6026                                    ; preds = %6016, %6014, %6004
  %6027 = phi float [ %6013, %6004 ], [ %6025, %6016 ], [ 0.000000e+00, %6014 ]
  %6028 = and i1 %5972, %5970
  %6029 = fsub fast float -0.000000e+00, %6027
  %6030 = select i1 %6028, float -0.000000e+00, float %6029
  %6031 = fmul fast float %4390, 0x3FF7154760000000
  %6032 = fmul fast float %6031, %6030
  %6033 = fmul fast float %4391, 0x3FF7154760000000
  %6034 = fmul fast float %6033, %6030
  %6035 = fmul fast float %4392, 0x3FF7154760000000
  %6036 = fmul fast float %6035, %6030
  %6037 = call float @dx.op.unary.f32(i32 21, float %6032)  ; Exp(value)
  %6038 = call float @dx.op.unary.f32(i32 21, float %6034)  ; Exp(value)
  %6039 = call float @dx.op.unary.f32(i32 21, float %6036)  ; Exp(value)
  %6040 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6041 = call float @dx.op.unary.f32(i32 7, float %6038)  ; Saturate(value)
  %6042 = call float @dx.op.unary.f32(i32 7, float %6039)  ; Saturate(value)
  %6043 = fmul fast float %5966, %6040
  %6044 = fmul fast float %5967, %6041
  %6045 = fmul fast float %5968, %6042
  %6046 = fsub fast float %5920, %4589
  %6047 = fsub fast float %5921, %4588
  %6048 = fsub fast float %5922, %4587
  %6049 = call float @dx.op.dot3.f32(i32 55, float %6046, float %6047, float %6048, float %6046, float %6047, float %6048)  ; Dot3(ax,ay,az,bx,by,bz)
  %6050 = call float @dx.op.unary.f32(i32 25, float %6049)  ; Rsqrt(value)
  %6051 = fmul fast float %6050, %6046
  %6052 = fmul fast float %6050, %6047
  %6053 = fmul fast float %6050, %6048
  %6054 = call float @dx.op.dot3.f32(i32 55, float %5920, float %5921, float %5922, float %4596, float %4597, float %4598)  ; Dot3(ax,ay,az,bx,by,bz)
  %6055 = call float @dx.op.dot3.f32(i32 55, float %4586, float %4585, float %4584, float %6051, float %6052, float %6053)  ; Dot3(ax,ay,az,bx,by,bz)
  %6056 = call float @dx.op.unary.f32(i32 7, float %6054)  ; Saturate(value)
  %6057 = fmul fast float %6056, %5927
  %6058 = fmul fast float %6056, %6056
  %6059 = fmul fast float %6058, %4616
  %6060 = call float @dx.op.unary.f32(i32 7, float %6059)  ; Saturate(value)
  %6061 = fmul fast float %6057, %6060
  %6062 = bitcast float %5917 to i32
  %6063 = ashr i32 %6062, 1
  %6064 = sub nsw i32 1597463007, %6063
  %6065 = bitcast i32 %6064 to float
  %6066 = fmul fast float %6065, %5914
  %6067 = fmul fast float %6065, %5915
  %6068 = fmul fast float %6065, %5916
  %6069 = fsub fast float %6066, %4589
  %6070 = fsub fast float %6067, %4588
  %6071 = fsub fast float %6068, %4587
  %6072 = call float @dx.op.dot3.f32(i32 55, float %6069, float %6070, float %6071, float %6069, float %6070, float %6071)  ; Dot3(ax,ay,az,bx,by,bz)
  %6073 = call float @dx.op.unary.f32(i32 25, float %6072)  ; Rsqrt(value)
  %6074 = fmul fast float %6069, %6073
  %6075 = fmul fast float %6070, %6073
  %6076 = fmul fast float %6071, %6073
  %6077 = call float @dx.op.dot3.f32(i32 55, float %4596, float %4597, float %4598, float %6074, float %6075, float %6076)  ; Dot3(ax,ay,az,bx,by,bz)
  %6078 = fmul fast float %6077, %6077
  %6079 = call float @dx.op.unary.f32(i32 6, float %6054)  ; FAbs(value)
  %6080 = fsub fast float 1.000000e+00, %4599
  %6081 = call float @dx.op.binary.f32(i32 35, float %6080, float 0x3F847AE140000000)  ; FMax(a,b)
  %6082 = fmul fast float %6081, %6081
  %6083 = fmul fast float %6082, %6082
  %6084 = fsub fast float 1.000000e+00, %6083
  %6085 = fmul fast float %4603, %4603
  %6086 = fmul fast float %6085, %6084
  %6087 = fadd fast float %6086, %6083
  %6088 = bitcast float %6087 to i32
  %6089 = ashr i32 %6088, 1
  %6090 = add nsw i32 %6089, 532487669
  %6091 = bitcast i32 %6090 to float
  %6092 = fadd fast float %6091, %4603
  %6093 = fmul fast float %6083, %6078
  %6094 = fsub fast float 1.000000e+00, %6078
  %6095 = fadd fast float %6094, %6093
  %6096 = fmul fast float %6079, %6079
  %6097 = fmul fast float %6096, %6084
  %6098 = fadd fast float %6097, %6083
  %6099 = bitcast float %6098 to i32
  %6100 = ashr i32 %6099, 1
  %6101 = add nsw i32 %6100, 532487669
  %6102 = bitcast i32 %6101 to float
  %6103 = fadd fast float %6102, %6079
  %6104 = fmul fast float %6095, %6095
  %6105 = fmul fast float %6104, %6092
  %6106 = fmul fast float %6105, %6103
  %6107 = fdiv fast float 1.000000e+00, %6106
  %6108 = bitcast float %6083 to i32
  %6109 = sitofp i32 %6108 to float
  %6110 = fmul fast float %6109, 0x3FE7F73180000000
  %6111 = fadd fast float %6110, 0x41AFE27C40000000
  %6112 = fptosi float %6111 to i32
  %6113 = bitcast i32 %6112 to float
  %6114 = fmul fast float %5900, 0x3FD80E9D60000000
  %6115 = fmul fast float %6114, %6065
  %6116 = fadd fast float %6113, %6115
  %6117 = bitcast float %6116 to i32
  %6118 = sub nsw i32 2129859010, %6117
  %6119 = bitcast i32 %6118 to float
  %6120 = fmul fast float %6083, %6107
  %6121 = fmul fast float %6120, %6113
  %6122 = fmul fast float %6121, %6119
  %6123 = call float @dx.op.unary.f32(i32 6, float %6055)  ; FAbs(value)
  %6124 = fsub fast float 1.000000e+00, %6123
  %6125 = bitcast float %6124 to i32
  %6126 = sitofp i32 %6125 to float
  %6127 = fmul fast float %6126, 5.000000e+00
  %6128 = fadd fast float %6127, 0xC1EFBF8940000000
  %6129 = fptosi float %6128 to i32
  %6130 = bitcast i32 %6129 to float
  %6131 = fsub fast float 1.000000e+00, %4590
  %6132 = fsub fast float 1.000000e+00, %4591
  %6133 = fsub fast float 1.000000e+00, %4601
  %6134 = fmul fast float %6130, %6131
  %6135 = fmul fast float %6130, %6132
  %6136 = fmul fast float %6130, %6133
  %6137 = fadd fast float %6134, %4590
  %6138 = fadd fast float %6135, %4591
  %6139 = fadd fast float %6136, %4601
  br i1 %5496, label %6140, label %6163

; <label>:6140                                    ; preds = %6026
  %6141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3988, float %6123, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6142 = extractvalue %dx.types.ResRet.f32 %6141, 0
  %6143 = extractvalue %dx.types.ResRet.f32 %6141, 1
  %6144 = extractvalue %dx.types.ResRet.f32 %6141, 2
  %6145 = fadd fast float %6142, -5.000000e-01
  %6146 = fadd fast float %6143, -5.000000e-01
  %6147 = fadd fast float %6144, -5.000000e-01
  %6148 = fmul fast float %4590, 4.000000e+00
  %6149 = fmul fast float %6148, %6131
  %6150 = fmul fast float %6149, %6145
  %6151 = fmul fast float %4591, 4.000000e+00
  %6152 = fmul fast float %6151, %6132
  %6153 = fmul fast float %6152, %6146
  %6154 = fmul fast float %4601, 4.000000e+00
  %6155 = fmul fast float %6154, %6133
  %6156 = fmul fast float %6155, %6147
  %6157 = fadd fast float %6150, %6137
  %6158 = fadd fast float %6153, %6138
  %6159 = fadd fast float %6156, %6139
  %6160 = call float @dx.op.unary.f32(i32 7, float %6157)  ; Saturate(value)
  %6161 = call float @dx.op.unary.f32(i32 7, float %6158)  ; Saturate(value)
  %6162 = call float @dx.op.unary.f32(i32 7, float %6159)  ; Saturate(value)
  br label %6163

; <label>:6163                                    ; preds = %6140, %6026
  %6164 = phi float [ %6160, %6140 ], [ %6137, %6026 ]
  %6165 = phi float [ %6161, %6140 ], [ %6138, %6026 ]
  %6166 = phi float [ %6162, %6140 ], [ %6139, %6026 ]
  %6167 = fmul fast float %6054, 9.843750e-01
  %6168 = fadd fast float %6167, 7.812500e-03
  %6169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %6168, float %5486, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6170 = extractvalue %dx.types.ResRet.f32 %6169, 2
  %6171 = extractvalue %dx.types.ResRet.f32 %6169, 3
  %6172 = fmul fast float %6170, %4590
  %6173 = fmul fast float %6170, %4591
  %6174 = fmul fast float %6170, %4601
  %6175 = fadd fast float %6172, %6171
  %6176 = fadd fast float %6173, %6171
  %6177 = fadd fast float %6174, %6171
  br i1 %5496, label %6178, label %6201

; <label>:6178                                    ; preds = %6163
  %6179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %3988, float %6054, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6180 = extractvalue %dx.types.ResRet.f32 %6179, 0
  %6181 = extractvalue %dx.types.ResRet.f32 %6179, 1
  %6182 = extractvalue %dx.types.ResRet.f32 %6179, 2
  %6183 = fadd fast float %6180, -5.000000e-01
  %6184 = fadd fast float %6181, -5.000000e-01
  %6185 = fadd fast float %6182, -5.000000e-01
  %6186 = fmul fast float %4590, 4.000000e+00
  %6187 = fmul fast float %6186, %6131
  %6188 = fmul fast float %6187, %6183
  %6189 = fmul fast float %4591, 4.000000e+00
  %6190 = fmul fast float %6189, %6132
  %6191 = fmul fast float %6190, %6184
  %6192 = fmul fast float %4601, 4.000000e+00
  %6193 = fmul fast float %6192, %6133
  %6194 = fmul fast float %6193, %6185
  %6195 = fadd fast float %6188, %6175
  %6196 = fadd fast float %6191, %6176
  %6197 = fadd fast float %6194, %6177
  %6198 = call float @dx.op.unary.f32(i32 7, float %6195)  ; Saturate(value)
  %6199 = call float @dx.op.unary.f32(i32 7, float %6196)  ; Saturate(value)
  %6200 = call float @dx.op.unary.f32(i32 7, float %6197)  ; Saturate(value)
  br label %6201

; <label>:6201                                    ; preds = %6178, %6163
  %6202 = phi float [ %6198, %6178 ], [ %6175, %6163 ]
  %6203 = phi float [ %6199, %6178 ], [ %6176, %6163 ]
  %6204 = phi float [ %6200, %6178 ], [ %6177, %6163 ]
  %6205 = call float @dx.op.binary.f32(i32 35, float %6203, float %6204)  ; FMax(a,b)
  %6206 = call float @dx.op.binary.f32(i32 35, float %6202, float %6205)  ; FMax(a,b)
  %6207 = fsub fast float 1.000000e+00, %6206
  %6208 = fmul fast float %6164, %6122
  %6209 = fmul fast float %6165, %6122
  %6210 = fmul fast float %6166, %6122
  %6211 = fsub fast float 1.000000e+00, %6055
  %6212 = bitcast float %6211 to i32
  %6213 = sitofp i32 %6212 to float
  %6214 = fmul fast float %6213, 5.000000e+00
  %6215 = fadd fast float %6214, 0xC1EFBF8940000000
  %6216 = fptosi float %6215 to i32
  %6217 = bitcast i32 %6216 to float
  %6218 = fmul fast float %6217, %3989
  %6219 = fmul fast float %6207, %6218
  %6220 = fmul fast float %6219, %5546
  %6221 = fmul fast float %6219, %5547
  %6222 = fmul fast float %6219, %5548
  %6223 = fadd fast float %6220, %6208
  %6224 = fadd fast float %6221, %6209
  %6225 = fadd fast float %6222, %6210
  %6226 = fmul fast float %6043, %3985
  %6227 = fmul fast float %6226, %6061
  %6228 = fmul fast float %6227, %6207
  %6229 = fmul fast float %6044, %3985
  %6230 = fmul fast float %6229, %6061
  %6231 = fmul fast float %6230, %6207
  %6232 = fmul fast float %6045, %3985
  %6233 = fmul fast float %6232, %6061
  %6234 = fmul fast float %6233, %6207
  %6235 = fadd fast float %6228, %5882
  %6236 = fadd fast float %6231, %5883
  %6237 = fadd fast float %6234, %5884
  %6238 = fmul fast float %6227, %6223
  %6239 = fmul fast float %6230, %6224
  %6240 = fmul fast float %6233, %6225
  %6241 = fadd fast float %6238, %5879
  %6242 = fadd fast float %6239, %5880
  %6243 = fadd fast float %6240, %5881
  br label %5957

; <label>:6244                                    ; preds = %5957
  br label %6245

; <label>:6245                                    ; preds = %6244, %5845
  %6246 = phi float [ %5847, %5845 ], [ %5958, %6244 ]
  %6247 = phi float [ %5848, %5845 ], [ %5959, %6244 ]
  %6248 = phi float [ %5849, %5845 ], [ %5960, %6244 ]
  %6249 = phi float [ %5850, %5845 ], [ %5961, %6244 ]
  %6250 = phi float [ %5851, %5845 ], [ %5962, %6244 ]
  %6251 = phi float [ %5852, %5845 ], [ %5963, %6244 ]
  %6252 = add i32 %5846, 1
  %6253 = icmp ugt i32 %6252, %5842
  br i1 %6253, label %6254, label %5845

; <label>:6254                                    ; preds = %6245
  br label %6255

; <label>:6255                                    ; preds = %6254, %5821, %5811
  %6256 = phi float [ %5812, %5811 ], [ %5812, %5821 ], [ %6246, %6254 ]
  %6257 = phi float [ %5813, %5811 ], [ %5813, %5821 ], [ %6247, %6254 ]
  %6258 = phi float [ %5814, %5811 ], [ %5814, %5821 ], [ %6248, %6254 ]
  %6259 = phi float [ %5815, %5811 ], [ %5815, %5821 ], [ %6249, %6254 ]
  %6260 = phi float [ %5816, %5811 ], [ %5816, %5821 ], [ %6250, %6254 ]
  %6261 = phi float [ %5817, %5811 ], [ %5817, %5821 ], [ %6251, %6254 ]
  %6262 = call float @dx.op.unary.f32(i32 24, float %4593)  ; Sqrt(value)
  %6263 = call float @dx.op.unary.f32(i32 24, float %4594)  ; Sqrt(value)
  %6264 = call float @dx.op.unary.f32(i32 24, float %4595)  ; Sqrt(value)
  %6265 = fmul fast float %6262, %6259
  %6266 = fmul fast float %6263, %6260
  %6267 = extractvalue %dx.types.CBufRet.f32 %5218, 0
  br i1 %163, label %6268, label %6288

; <label>:6268                                    ; preds = %6255
  %6269 = fadd fast float %6261, %3991
  %6270 = fmul fast float %6269, %3992
  %6271 = fsub fast float 1.000000e+00, %3992
  %6272 = call float @dx.op.unary.f32(i32 7, float %6271)  ; Saturate(value)
  %6273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6274 = extractvalue %dx.types.CBufRet.f32 %6273, 3
  %6275 = fmul fast float %6274, %6272
  %6276 = fadd fast float %6275, %6270
  %6277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6278 = extractvalue %dx.types.CBufRet.f32 %6277, 0
  %6279 = fmul fast float %6278, %5552
  %6280 = fsub fast float %6276, %6279
  %6281 = fadd fast float %6266, %6265
  %6282 = fmul fast float %6267, %6281
  %6283 = extractvalue %dx.types.CBufRet.f32 %6273, 1
  %6284 = fsub fast float %6280, %6283
  %6285 = extractvalue %dx.types.CBufRet.f32 %6273, 2
  %6286 = fmul fast float %6284, %6285
  %6287 = call float @dx.op.unary.f32(i32 7, float %6286)  ; Saturate(value)
  br label %6304

; <label>:6288                                    ; preds = %6255
  %6289 = fmul fast float %6264, %6261
  %6290 = fmul fast float %6267, %6265
  %6291 = fmul fast float %6267, %6266
  %6292 = fmul fast float %6289, %6267
  %6293 = add i32 %38, 356
  %6294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %6293, i32 undef)  ; BufferLoad(srv,index,wot)
  %6295 = extractvalue %dx.types.ResRet.i32 %6294, 0
  %6296 = and i32 %6295, 32
  %6297 = icmp eq i32 %6296, 0
  br i1 %6297, label %6304, label %6298

; <label>:6298                                    ; preds = %6288
  %6299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6300 = extractvalue %dx.types.CBufRet.f32 %6299, 0
  %6301 = fmul fast float %6300, 0x3FE99999A0000000
  %6302 = fadd fast float %6300, %6290
  %6303 = fadd fast float %6301, %6292
  br label %6304

; <label>:6304                                    ; preds = %6298, %6288, %6268
  %6305 = phi float [ %6282, %6268 ], [ %6302, %6298 ], [ %6290, %6288 ]
  %6306 = phi float [ %6287, %6268 ], [ %6291, %6298 ], [ %6291, %6288 ]
  %6307 = phi float [ 1.000000e+00, %6268 ], [ %6303, %6298 ], [ %6292, %6288 ]
  %6308 = fmul fast float %6267, %6257
  %6309 = fmul fast float %6267, %6258
  %6310 = fadd fast float %6257, %6256
  %6311 = select i1 %163, float %6310, float %6256
  %6312 = fmul float %6311, %6267
  %6313 = select i1 %163, float 0.000000e+00, float %6308
  %6314 = select i1 %163, float 0.000000e+00, float %6309
  %6315 = fmul fast float %6305, %6262
  %6316 = fmul fast float %6306, %6263
  %6317 = fmul fast float %6307, %6264
  %6318 = fadd fast float %6312, %6315
  %6319 = fadd fast float %6313, %6316
  %6320 = fadd fast float %6314, %6317
  %6321 = select i1 %163, float %6306, float %6319
  %6322 = select i1 %163, float %6307, float %6320
  %6323 = call float @dx.op.binary.f32(i32 36, float %6318, float 3.225500e+04)  ; FMin(a,b)
  %6324 = call float @dx.op.binary.f32(i32 36, float %6321, float 3.225500e+04)  ; FMin(a,b)
  %6325 = call float @dx.op.binary.f32(i32 36, float %6322, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6323)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6324)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6325)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

