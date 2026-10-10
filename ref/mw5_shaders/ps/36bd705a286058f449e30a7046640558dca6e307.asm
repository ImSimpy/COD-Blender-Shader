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
; LMAP_COORDS              0   xyz         5     NONE   float   xyz 
; PACKED_TRI_DATA          0   xyzw        6     NONE    uint   x z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: dbe52edb02232089bae72fa43005c57b
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
; LMAP_COORDS              0                 linear       
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
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32     2darray      T4     t23,space2     1
;                                   texture     f32     2darray      T5     t24,space2     1
;                                   texture     f32     2darray      T6     t25,space2     1
;                                   texture     f32          2d      T7     t33,space2     1
;                                   texture     f32     2darray      T8     t16,space2     1
;                                   texture     f32          3d      T9     t15,space2     1
;                                   texture     f32          2d     T10     t14,space2     1
;                                   texture     f32          2d     T11     t13,space2     1
;                                   texture     u32          2d     T12     t17,space2     1
;                                   texture     f32          3d     T13     t18,space2     1
;                                   texture     u32     2darray     T14     t11,space2     1
;                                   texture     f32     2darray     T15     t10,space2     1
;                                   texture     f32          2d     T16     t69,space2     1
;                                   texture    byte         r/o     T17     t49,space1     1
;                                   texture    byte         r/o     T18     t50,space1     1
;                                   texture    byte         r/o     T19     t51,space1     1
;                                   texture    byte         r/o     T20     t52,space1     1
;                                   texture     f32          2d     T21     t58,space2     1
;                                   texture     f32          2d     T22     t59,space2     1
;                                   texture     f32          2d     T23     t60,space2     1
;                                   texture    byte         r/o     T24     t45,space1     1
;                                   texture    byte         r/o     T25     t46,space1     1
;                                   texture    byte         r/o     T26     t47,space1     1
;                                   texture    byte         r/o     T27     t48,space1     1
;                                   texture     f32          2d     T28     t57,space2     1
;                                   texture    byte         r/o     T29     t69,space1     1
;                                   texture    byte         r/o     T30     t10,space1     1
;                                   texture    byte         r/o     T31     t68,space1     1
;                                   texture     f32          2d     T32      t0,space2     1
;                                   texture    byte         r/o     T33     t11,space1     1
;                                   texture    byte         r/o     T34     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 26 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 26 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 26 }
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
%"class.Texture2D<float>" = type { float, %"class.Texture2D<float>::mips_type" }
%"class.Texture2D<float>::mips_type" = type { i32 }
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
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
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
  %61 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %62 = extractvalue %dx.types.CBufRet.f32 %61, 0
  %63 = fmul fast float %62, %56
  %64 = fmul fast float %62, %57
  %65 = call float @dx.op.dot3.f32(i32 55, float %48, float %49, float %50, float %48, float %49, float %50)  ; Dot3(ax,ay,az,bx,by,bz)
  %66 = bitcast float %65 to i32
  %67 = ashr i32 %66, 1
  %68 = sub nsw i32 1597250115, %67
  %69 = bitcast i32 %68 to float
  %70 = fmul fast float %69, %48
  %71 = fmul fast float %69, %49
  %72 = fmul fast float %69, %50
  %73 = fmul fast float %49, %46
  %74 = fmul fast float %50, %45
  %75 = fsub fast float %73, %74
  %76 = fmul fast float %50, %44
  %77 = fmul fast float %48, %46
  %78 = fsub fast float %76, %77
  %79 = fmul fast float %48, %45
  %80 = fmul fast float %49, %44
  %81 = fsub fast float %79, %80
  %82 = fmul fast float %75, %47
  %83 = fmul fast float %78, %47
  %84 = fmul fast float %81, %47
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 3
  %88 = fmul fast float %63, 2.000000e+00
  %89 = fmul fast float %88, %86
  %90 = fmul fast float %64, 2.000000e+00
  %91 = fmul fast float %90, %87
  %92 = fsub fast float 1.000000e+00, %89
  %93 = fsub fast float 1.000000e+00, %91
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = fmul fast float %92, %95
  %99 = fmul fast float %92, %96
  %100 = fmul fast float %92, %97
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = fmul fast float %93, %102
  %106 = fmul fast float %93, %103
  %107 = fmul fast float %93, %104
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fadd fast float %105, %109
  %113 = fadd fast float %112, %98
  %114 = fadd fast float %106, %110
  %115 = fadd fast float %114, %99
  %116 = fadd fast float %107, %111
  %117 = fadd fast float %116, %100
  %118 = fmul fast float %113, %58
  %119 = fmul fast float %115, %58
  %120 = fmul fast float %117, %58
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 3
  %124 = fmul fast float %122, %63
  %125 = fmul fast float %123, %64
  %126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %127 = extractvalue %dx.types.ResRet.i32 %126, 0
  %128 = and i32 %127, 114688
  %129 = icmp ne i32 %128, 0
  %130 = select i1 %129, float %124, float 0.000000e+00
  %131 = select i1 %129, float %125, float 0.000000e+00
  %132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %36, float %130, float %131, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %133 = extractvalue %dx.types.ResRet.f32 %132, 0
  %134 = fmul fast float %133, 2.550000e+02
  %135 = fptoui float %134 to i32
  %136 = select i1 %129, i32 %135, i32 0
  %137 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.i32 %137, 3
  %139 = and i32 %138, 3
  %140 = icmp ne i32 %139, 0
  %141 = and i32 %138, 4
  %142 = icmp ne i32 %141, 0
  %143 = and i1 %140, %142
  br i1 %143, label %144, label %153

; <label>:144                                     ; preds = %0
  %145 = fmul fast float %87, %64
  %146 = fmul fast float %86, %63
  %147 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %35, float %146, float %145, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %148 = extractvalue %dx.types.ResRet.f32 %147, 0
  %149 = fsub fast float 1.000000e+00, %148
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 0
  %152 = fcmp fast olt float %149, %151
  br label %161

; <label>:153                                     ; preds = %0
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 3
  %156 = and i32 %155, 3
  %157 = icmp ne i32 %156, 0
  %158 = and i32 %155, 4
  %159 = icmp eq i32 %158, 0
  %160 = and i1 %157, %159
  br label %161

; <label>:161                                     ; preds = %153, %144
  %162 = phi i1 [ %152, %144 ], [ %160, %153 ]
  %163 = add i32 %39, 156
  %164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %163, i32 undef)  ; BufferLoad(srv,index,wot)
  %165 = extractvalue %dx.types.ResRet.i32 %164, 0
  %166 = shl i32 %165, 4
  %167 = and i32 %166, 32752
  %168 = call float @dx.op.legacyF16ToF32(i32 131, i32 %167)  ; LegacyF16ToF32(value)
  %169 = lshr i32 %165, 7
  %170 = and i32 %169, 32752
  %171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %170)  ; LegacyF16ToF32(value)
  %172 = lshr i32 %165, 22
  %173 = shl nuw nsw i32 %172, 5
  %174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %173)  ; LegacyF16ToF32(value)
  %175 = add i32 %39, 216
  %176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %177 = extractvalue %dx.types.ResRet.i32 %176, 0
  %178 = and i32 %177, 255
  %179 = uitofp i32 %178 to float
  %180 = fmul fast float %179, 0x3F70101020000000
  %181 = lshr i32 %177, 8
  %182 = and i32 %181, 255
  %183 = uitofp i32 %182 to float
  %184 = fmul fast float %183, 0x3F70101020000000
  %185 = lshr i32 %177, 16
  %186 = and i32 %185, 255
  %187 = uitofp i32 %186 to float
  %188 = fmul fast float %187, 0x3F70101020000000
  %189 = add i32 %39, 36
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = and i32 %191, 65535
  %193 = call float @dx.op.legacyF16ToF32(i32 131, i32 %192)  ; LegacyF16ToF32(value)
  %194 = lshr i32 %191, 16
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = add i32 %39, 288
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = and i32 %198, 65535
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = lshr i32 %198, 16
  %202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %201)  ; LegacyF16ToF32(value)
  %203 = fmul fast float %200, 0x3F50624DE0000000
  %204 = fmul fast float %202, 0x3F50624DE0000000
  %205 = add i32 %39, 172
  %206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %205, i32 undef)  ; BufferLoad(srv,index,wot)
  %207 = extractvalue %dx.types.ResRet.i32 %206, 0
  %208 = shl i32 %207, 4
  %209 = and i32 %208, 32752
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = lshr i32 %207, 7
  %212 = and i32 %211, 32752
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %207, 22
  %215 = shl nuw nsw i32 %214, 5
  %216 = call float @dx.op.legacyF16ToF32(i32 131, i32 %215)  ; LegacyF16ToF32(value)
  %217 = add i32 %39, 232
  %218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %219 = extractvalue %dx.types.ResRet.i32 %218, 0
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = lshr i32 %219, 8
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = lshr i32 %219, 16
  %228 = and i32 %227, 255
  %229 = uitofp i32 %228 to float
  %230 = fmul fast float %229, 0x3F70101020000000
  %231 = add i32 %39, 52
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = and i32 %233, 65535
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %233, 16
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = add i32 %39, 304
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = and i32 %240, 65535
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %240, 16
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = fmul fast float %242, 0x3F50624DE0000000
  %246 = fmul fast float %244, 0x3F50624DE0000000
  %247 = add i32 %39, 188
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = shl i32 %249, 4
  %251 = and i32 %250, 32752
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %249, 7
  %254 = and i32 %253, 32752
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %249, 22
  %257 = shl nuw nsw i32 %256, 5
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = add i32 %39, 248
  %260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %261 = extractvalue %dx.types.ResRet.i32 %260, 0
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = lshr i32 %261, 8
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = lshr i32 %261, 16
  %270 = and i32 %269, 255
  %271 = uitofp i32 %270 to float
  %272 = fmul fast float %271, 0x3F70101020000000
  %273 = add i32 %39, 68
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 65535
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %275, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = add i32 %39, 320
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 65535
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %282, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = fmul fast float %284, 0x3F50624DE0000000
  %288 = fmul fast float %286, 0x3F50624DE0000000
  %289 = add i32 %39, 204
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = shl i32 %291, 4
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %291, 7
  %296 = and i32 %295, 32752
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %291, 22
  %299 = shl nuw nsw i32 %298, 5
  %300 = call float @dx.op.legacyF16ToF32(i32 131, i32 %299)  ; LegacyF16ToF32(value)
  %301 = add i32 %39, 264
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %303, 8
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = lshr i32 %303, 16
  %312 = and i32 %311, 255
  %313 = uitofp i32 %312 to float
  %314 = fmul fast float %313, 0x3F70101020000000
  %315 = add i32 %39, 84
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = add i32 %39, 336
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = and i32 %324, 65535
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %324, 16
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = fmul fast float %326, 0x3F50624DE0000000
  %330 = fmul fast float %328, 0x3F50624DE0000000
  %331 = add i32 %39, 348
  %332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %333 = extractvalue %dx.types.ResRet.i32 %332, 0
  %334 = and i32 %333, 32
  %335 = icmp eq i32 %334, 0
  %336 = and i32 %333, 64
  %337 = icmp eq i32 %336, 0
  %338 = and i32 %333, 128
  %339 = icmp eq i32 %338, 0
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 2
  %343 = icmp eq i32 %342, 0
  br i1 %343, label %357, label %344

; <label>:344                                     ; preds = %161
  %345 = add i32 %39, 472
  %346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %345, i32 undef)  ; BufferLoad(srv,index,wot)
  %347 = extractvalue %dx.types.ResRet.i32 %346, 0
  %348 = add i32 %347, 0
  %349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %348, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %350 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %349, %dx.types.Handle %60, float %51, float %52, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %351 = extractvalue %dx.types.ResRet.f32 %350, 0
  %352 = extractvalue %dx.types.ResRet.f32 %350, 1
  %353 = extractvalue %dx.types.ResRet.f32 %350, 2
  %354 = fmul fast float %351, %53
  %355 = fmul fast float %352, %54
  %356 = fmul fast float %353, %55
  br label %357

; <label>:357                                     ; preds = %344, %161
  %358 = phi float [ %55, %161 ], [ %356, %344 ]
  %359 = phi float [ %54, %161 ], [ %355, %344 ]
  %360 = phi float [ %53, %161 ], [ %354, %344 ]
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %331, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 2
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %384, label %365

; <label>:365                                     ; preds = %357
  %366 = add i32 %39, 44
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 1
  %370 = icmp ne i32 %369, 0
  %371 = select i1 %370, float %360, float 1.000000e+00
  %372 = add i32 %39, 60
  %373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %372, i32 undef)  ; BufferLoad(srv,index,wot)
  %374 = extractvalue %dx.types.ResRet.i32 %373, 0
  %375 = and i32 %374, 1
  %376 = icmp ne i32 %375, 0
  %377 = select i1 %376, float %359, float 1.000000e+00
  %378 = add i32 %39, 76
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %378, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 1
  %382 = icmp ne i32 %381, 0
  %383 = select i1 %382, float %358, float 1.000000e+00
  br label %384

; <label>:384                                     ; preds = %365, %357
  %385 = phi float [ %358, %357 ], [ %383, %365 ]
  %386 = phi float [ %359, %357 ], [ %377, %365 ]
  %387 = phi float [ %360, %357 ], [ %371, %365 ]
  %388 = lshr i32 %362, 20
  %389 = and i32 %388, 3
  %390 = add nuw nsw i32 %389, 1
  %391 = add i32 %39, 24
  %392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %393 = extractvalue %dx.types.ResRet.i32 %392, 0
  %394 = add i32 %39, 28
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %394, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = or i32 %396, %393
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %849, label %399

; <label>:399                                     ; preds = %384
  %400 = add i32 %39, 284
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = lshr i32 %402, 16
  %404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %403)  ; LegacyF16ToF32(value)
  %405 = fmul fast float %404, 0x3F50624DE0000000
  %406 = add i32 %39, 88
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = lshr i32 %408, 16
  %410 = and i32 %409, 255
  %411 = lshr i32 %408, 24
  %412 = add i32 %39, 292
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 65535
  %416 = call float @dx.op.legacyF16ToF32(i32 131, i32 %415)  ; LegacyF16ToF32(value)
  %417 = lshr i32 %414, 16
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = add i32 %39, 32
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = lshr i32 %421, 22
  %423 = shl nuw nsw i32 %422, 5
  %424 = call float @dx.op.legacyF16ToF32(i32 131, i32 %423)  ; LegacyF16ToF32(value)
  %425 = shl i32 %421, 4
  %426 = and i32 %425, 32752
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = lshr i32 %421, 7
  %429 = and i32 %428, 32752
  %430 = call float @dx.op.legacyF16ToF32(i32 131, i32 %429)  ; LegacyF16ToF32(value)
  %431 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %432 = extractvalue %dx.types.CBufRet.f32 %431, 3
  %433 = fmul fast float %432, 1.000000e+03
  %434 = fmul fast float %203, %433
  %435 = call float @dx.op.unary.f32(i32 22, float %434)  ; Frc(value)
  %436 = fadd fast float %435, %193
  %437 = fmul fast float %204, %433
  %438 = call float @dx.op.unary.f32(i32 22, float %437)  ; Frc(value)
  %439 = fadd fast float %438, %195
  %440 = fmul fast float %405, %433
  %441 = call float @dx.op.unary.f32(i32 22, float %440)  ; Frc(value)
  %442 = fmul fast float %441, 0x401921FB60000000
  %443 = fadd fast float %442, %424
  %444 = call float @dx.op.unary.f32(i32 13, float %443)  ; Sin(value)
  %445 = call float @dx.op.unary.f32(i32 12, float %443)  ; Cos(value)
  %446 = fsub fast float -0.000000e+00, %444
  %447 = fadd fast float %51, -5.000000e-01
  %448 = fadd fast float %52, -5.000000e-01
  %449 = fmul fast float %416, %447
  %450 = fmul fast float %418, %448
  %451 = fadd fast float %449, 5.000000e-01
  %452 = fadd fast float %450, 5.000000e-01
  %453 = fmul fast float %427, %451
  %454 = fmul fast float %430, %452
  %455 = fmul fast float %445, %453
  %456 = call float @dx.op.tertiary.f32(i32 46, float %446, float %454, float %455)  ; FMad(a,b,c)
  %457 = fmul fast float %444, %453
  %458 = call float @dx.op.tertiary.f32(i32 46, float %445, float %454, float %457)  ; FMad(a,b,c)
  %459 = fadd fast float %436, %456
  %460 = fadd fast float %439, %458
  %461 = icmp ugt i32 %410, 1
  %462 = icmp ugt i32 %408, 33554431
  %463 = or i1 %462, %461
  br i1 %463, label %464, label %489

; <label>:464                                     ; preds = %399
  %465 = add i32 %39, 228
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = lshr i32 %467, 16
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = fmul fast float %432, %469
  %471 = call float @dx.op.unary.f32(i32 22, float %470)  ; Frc(value)
  %472 = mul nuw nsw i32 %410, %411
  %473 = uitofp i32 %472 to float
  %474 = fmul fast float %471, %473
  %475 = call float @dx.op.unary.f32(i32 27, float %474)  ; Round_ni(value)
  %476 = fptoui float %475 to i32
  %477 = urem i32 %476, %410
  %478 = udiv i32 %476, %411
  %479 = call float @dx.op.unary.f32(i32 22, float %459)  ; Frc(value)
  %480 = call float @dx.op.unary.f32(i32 22, float %460)  ; Frc(value)
  %481 = uitofp i32 %477 to float
  %482 = uitofp i32 %478 to float
  %483 = fadd fast float %479, %481
  %484 = fadd fast float %480, %482
  %485 = uitofp i32 %410 to float
  %486 = uitofp i32 %411 to float
  %487 = fdiv fast float %483, %485
  %488 = fdiv fast float %484, %486
  br label %489

; <label>:489                                     ; preds = %464, %399
  %490 = phi float [ %487, %464 ], [ %459, %399 ]
  %491 = phi float [ %488, %464 ], [ %460, %399 ]
  %492 = and i32 %393, 16
  %493 = icmp eq i32 %492, 0
  br i1 %493, label %690, label %494

; <label>:494                                     ; preds = %489
  %495 = add i32 %39, 360
  %496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %495, i32 undef)  ; BufferLoad(srv,index,wot)
  %497 = extractvalue %dx.types.ResRet.i32 %496, 0
  %498 = add i32 %497, 0
  %499 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %498, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %500 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %499, %dx.types.Handle %59, float %490, float %491, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %501 = extractvalue %dx.types.ResRet.f32 %500, 0
  %502 = extractvalue %dx.types.ResRet.f32 %500, 1
  %503 = extractvalue %dx.types.ResRet.f32 %500, 2
  %504 = extractvalue %dx.types.ResRet.f32 %500, 3
  %505 = and i32 %408, 255
  %506 = uitofp i32 %505 to float
  %507 = lshr i32 %408, 8
  %508 = and i32 %507, 255
  %509 = uitofp i32 %508 to float
  %510 = fmul fast float %504, %506
  %511 = fadd fast float %510, %509
  %512 = fmul fast float %511, 0x3F70101000000000
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = and i32 %514, 512
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %525, label %517

; <label>:517                                     ; preds = %494
  %518 = add i32 %39, 440
  %519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %518, i32 undef)  ; BufferLoad(srv,index,wot)
  %520 = extractvalue %dx.types.ResRet.i32 %519, 0
  %521 = add i32 %520, 0
  %522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %522, %dx.types.Handle %60, float %490, float %491, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %524 = extractvalue %dx.types.ResRet.f32 %523, 0
  br label %525

; <label>:525                                     ; preds = %517, %494
  %526 = phi float [ %524, %517 ], [ 1.000000e+00, %494 ]
  %527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %528 = extractvalue %dx.types.ResRet.i32 %527, 0
  %529 = and i32 %528, 33554432
  %530 = icmp eq i32 %529, 0
  br i1 %530, label %637, label %531

; <label>:531                                     ; preds = %525
  %532 = add i32 %39, 224
  %533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %532, i32 undef)  ; BufferLoad(srv,index,wot)
  %534 = extractvalue %dx.types.ResRet.i32 %533, 0
  %535 = and i32 %534, 65535
  %536 = call float @dx.op.legacyF16ToF32(i32 131, i32 %535)  ; LegacyF16ToF32(value)
  %537 = lshr i32 %534, 16
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = add i32 %39, 228
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = and i32 %541, 65535
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %175, i32 undef)  ; BufferLoad(srv,index,wot)
  %545 = extractvalue %dx.types.ResRet.i32 %544, 0
  %546 = lshr i32 %545, 24
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %547, 0x3F70101020000000
  %549 = and i32 %545, 255
  %550 = uitofp i32 %549 to float
  %551 = fmul fast float %550, 0x3F70101020000000
  %552 = lshr i32 %545, 8
  %553 = and i32 %552, 255
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %554, 0x3F70101020000000
  %556 = lshr i32 %545, 16
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = fmul fast float %558, 0x3F70101020000000
  %560 = add i32 %39, 220
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = lshr i32 %562, 24
  %564 = uitofp i32 %563 to float
  %565 = fmul fast float %564, 0x3F70101020000000
  %566 = and i32 %562, 255
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = lshr i32 %562, 8
  %570 = and i32 %569, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101020000000
  %573 = lshr i32 %562, 16
  %574 = and i32 %573, 255
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %575, 0x3F70101020000000
  %577 = bitcast float %501 to i32
  %578 = ashr i32 %577, 1
  %579 = sub nsw i32 1597463174, %578
  %580 = bitcast i32 %579 to float
  %581 = fmul fast float %501, 5.000000e-01
  %582 = fmul fast float %580, %580
  %583 = fmul fast float %582, %581
  %584 = fsub fast float 1.500000e+00, %583
  %585 = fmul fast float %580, %501
  %586 = fmul fast float %585, %584
  %587 = bitcast float %502 to i32
  %588 = ashr i32 %587, 1
  %589 = sub nsw i32 1597463174, %588
  %590 = bitcast i32 %589 to float
  %591 = fmul fast float %502, 5.000000e-01
  %592 = fmul fast float %590, %590
  %593 = fmul fast float %592, %591
  %594 = fsub fast float 1.500000e+00, %593
  %595 = fmul fast float %590, %502
  %596 = fmul fast float %595, %594
  %597 = bitcast float %503 to i32
  %598 = ashr i32 %597, 1
  %599 = sub nsw i32 1597463174, %598
  %600 = bitcast i32 %599 to float
  %601 = fmul fast float %503, 5.000000e-01
  %602 = fmul fast float %600, %600
  %603 = fmul fast float %602, %601
  %604 = fsub fast float 1.500000e+00, %603
  %605 = fmul fast float %600, %503
  %606 = fmul fast float %605, %604
  %607 = fsub fast float %586, %568
  %608 = fsub fast float %596, %572
  %609 = fsub fast float %606, %576
  %610 = fmul fast float %607, %536
  %611 = fmul fast float %608, %538
  %612 = fmul fast float %609, %543
  %613 = fadd fast float %610, %551
  %614 = fadd fast float %611, %555
  %615 = fadd fast float %612, %559
  %616 = call float @dx.op.unary.f32(i32 7, float %613)  ; Saturate(value)
  %617 = call float @dx.op.unary.f32(i32 7, float %614)  ; Saturate(value)
  %618 = call float @dx.op.unary.f32(i32 7, float %615)  ; Saturate(value)
  %619 = fmul fast float %616, %616
  %620 = fmul fast float %617, %617
  %621 = fmul fast float %618, %618
  %622 = fsub fast float %619, %501
  %623 = fsub fast float %620, %502
  %624 = fsub fast float %621, %503
  %625 = fmul fast float %622, %526
  %626 = fmul fast float %623, %526
  %627 = fmul fast float %624, %526
  %628 = fadd fast float %625, %501
  %629 = fadd fast float %626, %502
  %630 = fadd fast float %627, %503
  %631 = fadd fast float %548, %512
  %632 = fsub fast float %631, %565
  %633 = call float @dx.op.unary.f32(i32 7, float %632)  ; Saturate(value)
  %634 = fsub fast float %633, %512
  %635 = fmul fast float %634, %526
  %636 = fadd fast float %635, %512
  br label %690

; <label>:637                                     ; preds = %525
  %638 = and i32 %528, 134217728
  %639 = icmp eq i32 %638, 0
  br i1 %639, label %674, label %640

; <label>:640                                     ; preds = %637
  %641 = call float @dx.op.unary.f32(i32 24, float %180)  ; Sqrt(value)
  %642 = call float @dx.op.unary.f32(i32 24, float %184)  ; Sqrt(value)
  %643 = call float @dx.op.unary.f32(i32 24, float %188)  ; Sqrt(value)
  %644 = fadd fast float %641, -5.000000e-01
  %645 = fadd fast float %642, -5.000000e-01
  %646 = fadd fast float %643, -5.000000e-01
  %647 = fmul fast float %644, %526
  %648 = fmul fast float %645, %526
  %649 = fmul fast float %646, %526
  %650 = fadd fast float %647, 5.000000e-01
  %651 = fadd fast float %648, 5.000000e-01
  %652 = fadd fast float %649, 5.000000e-01
  %653 = call float @dx.op.unary.f32(i32 24, float %501)  ; Sqrt(value)
  %654 = call float @dx.op.unary.f32(i32 24, float %502)  ; Sqrt(value)
  %655 = call float @dx.op.unary.f32(i32 24, float %503)  ; Sqrt(value)
  %656 = fmul fast float %650, 2.000000e+00
  %657 = fsub fast float 1.000000e+00, %656
  %658 = fmul fast float %657, %653
  %659 = fadd fast float %658, %656
  %660 = fmul fast float %659, %653
  %661 = fmul fast float %651, 2.000000e+00
  %662 = fsub fast float 1.000000e+00, %661
  %663 = fmul fast float %662, %654
  %664 = fadd fast float %663, %661
  %665 = fmul fast float %664, %654
  %666 = fmul fast float %652, 2.000000e+00
  %667 = fsub fast float 1.000000e+00, %666
  %668 = fmul fast float %667, %655
  %669 = fadd fast float %668, %666
  %670 = fmul fast float %669, %655
  %671 = fmul fast float %660, %660
  %672 = fmul fast float %665, %665
  %673 = fmul fast float %670, %670
  br label %690

; <label>:674                                     ; preds = %637
  %675 = fmul fast float %180, %180
  %676 = fmul fast float %184, %184
  %677 = fmul fast float %188, %188
  %678 = fadd fast float %675, -1.000000e+00
  %679 = fadd fast float %676, -1.000000e+00
  %680 = fadd fast float %677, -1.000000e+00
  %681 = fmul fast float %526, %678
  %682 = fmul fast float %526, %679
  %683 = fmul fast float %526, %680
  %684 = fadd fast float %681, 1.000000e+00
  %685 = fadd fast float %682, 1.000000e+00
  %686 = fadd fast float %683, 1.000000e+00
  %687 = fmul fast float %684, %501
  %688 = fmul fast float %685, %502
  %689 = fmul fast float %686, %503
  br label %690

; <label>:690                                     ; preds = %674, %640, %531, %489
  %691 = phi float [ %636, %531 ], [ %512, %640 ], [ %512, %674 ], [ 0x3FA23C0BE0000000, %489 ]
  %692 = phi float [ %628, %531 ], [ %671, %640 ], [ %687, %674 ], [ 1.000000e+00, %489 ]
  %693 = phi float [ %629, %531 ], [ %672, %640 ], [ %688, %674 ], [ 1.000000e+00, %489 ]
  %694 = phi float [ %630, %531 ], [ %673, %640 ], [ %689, %674 ], [ 1.000000e+00, %489 ]
  %695 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %696 = extractvalue %dx.types.CBufRet.i32 %695, 1
  %697 = and i32 %696, 1
  %698 = icmp ne i32 %697, 0
  %699 = add i32 %39, 356
  %700 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %699, i32 undef)  ; BufferLoad(srv,index,wot)
  %701 = extractvalue %dx.types.ResRet.i32 %700, 0
  %702 = and i32 %701, 32
  %703 = icmp ne i32 %702, 0
  %704 = and i1 %698, %703
  %705 = select i1 %704, float 1.000000e+00, float %692
  %706 = select i1 %704, float 0x3FD3333340000000, float %693
  %707 = select i1 %704, float 0x3FD3333340000000, float %694
  %708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %709 = extractvalue %dx.types.ResRet.i32 %708, 0
  %710 = and i32 %709, 32
  %711 = icmp eq i32 %710, 0
  br i1 %711, label %784, label %712

; <label>:712                                     ; preds = %690
  %713 = add i32 %39, 92
  %714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %713, i32 undef)  ; BufferLoad(srv,index,wot)
  %715 = extractvalue %dx.types.ResRet.i32 %714, 0
  %716 = add i32 %39, 376
  %717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %716, i32 undef)  ; BufferLoad(srv,index,wot)
  %718 = extractvalue %dx.types.ResRet.i32 %717, 0
  %719 = add i32 %718, 0
  %720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %719, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %721 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %720, %dx.types.Handle %59, float %490, float %491, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %722 = extractvalue %dx.types.ResRet.f32 %721, 0
  %723 = extractvalue %dx.types.ResRet.f32 %721, 1
  %724 = extractvalue %dx.types.ResRet.f32 %721, 2
  %725 = extractvalue %dx.types.ResRet.f32 %721, 3
  %726 = and i32 %715, 255
  %727 = uitofp i32 %726 to float
  %728 = lshr i32 %715, 8
  %729 = and i32 %728, 255
  %730 = uitofp i32 %729 to float
  %731 = lshr i32 %715, 16
  %732 = and i32 %731, 255
  %733 = uitofp i32 %732 to float
  %734 = fmul fast float %733, 0x3F70101000000000
  %735 = fmul fast float %722, %727
  %736 = fadd fast float %735, %730
  %737 = fmul fast float %736, 0x3F70101000000000
  %738 = fadd fast float %723, -5.000000e-01
  %739 = fadd fast float %725, -5.000000e-01
  %740 = fmul fast float %738, %734
  %741 = fmul fast float %739, %734
  %742 = fadd fast float %740, 5.000000e-01
  %743 = fadd fast float %741, 5.000000e-01
  %744 = fmul fast float %742, 2.000000e+00
  %745 = fadd fast float %744, -1.000000e+00
  %746 = fmul fast float %743, 2.000000e+00
  %747 = fadd fast float %746, -1.000000e+00
  %748 = fadd fast float %745, %747
  %749 = fmul fast float %748, 5.000000e-01
  %750 = fsub fast float %745, %747
  %751 = fmul fast float %750, 5.000000e-01
  %752 = call float @dx.op.unary.f32(i32 6, float %749)  ; FAbs(value)
  %753 = fsub fast float 1.000000e+00, %752
  %754 = call float @dx.op.unary.f32(i32 6, float %751)  ; FAbs(value)
  %755 = fsub fast float %753, %754
  %756 = call float @dx.op.dot3.f32(i32 55, float %749, float %751, float %755, float %749, float %751, float %755)  ; Dot3(ax,ay,az,bx,by,bz)
  %757 = call float @dx.op.unary.f32(i32 25, float %756)  ; Rsqrt(value)
  %758 = fmul fast float %749, %757
  %759 = fmul fast float %751, %757
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = and i32 %761, 67108864
  %763 = icmp eq i32 %762, 0
  br i1 %763, label %780, label %764

; <label>:764                                     ; preds = %712
  %765 = add i32 %39, 280
  %766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %765, i32 undef)  ; BufferLoad(srv,index,wot)
  %767 = extractvalue %dx.types.ResRet.i32 %766, 0
  %768 = and i32 %767, 65535
  %769 = call float @dx.op.legacyF16ToF32(i32 131, i32 %768)  ; LegacyF16ToF32(value)
  %770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %771 = extractvalue %dx.types.ResRet.i32 %770, 0
  %772 = and i32 %771, 65535
  %773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %772)  ; LegacyF16ToF32(value)
  %774 = lshr i32 %767, 16
  %775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %774)  ; LegacyF16ToF32(value)
  %776 = fsub fast float %737, %775
  %777 = fmul fast float %776, %769
  %778 = fadd fast float %777, %773
  %779 = call float @dx.op.unary.f32(i32 7, float %778)  ; Saturate(value)
  br label %780

; <label>:780                                     ; preds = %764, %712
  %781 = phi float [ %779, %764 ], [ %737, %712 ]
  %782 = call float @dx.op.dot2.f32(i32 54, float %758, float %759, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %783 = call float @dx.op.dot2.f32(i32 54, float %758, float %759, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %784

; <label>:784                                     ; preds = %780, %690
  %785 = phi float [ %781, %780 ], [ 0x3FD6666660000000, %690 ]
  %786 = phi float [ %782, %780 ], [ 0.000000e+00, %690 ]
  %787 = phi float [ %783, %780 ], [ 0.000000e+00, %690 ]
  %788 = phi float [ %724, %780 ], [ 1.000000e+00, %690 ]
  %789 = add i32 %39, 160
  %790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %789, i32 undef)  ; BufferLoad(srv,index,wot)
  %791 = extractvalue %dx.types.ResRet.i32 %790, 0
  %792 = lshr i32 %791, 22
  %793 = shl nuw nsw i32 %792, 5
  %794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %793)  ; LegacyF16ToF32(value)
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = and i32 %796, 64
  %798 = icmp eq i32 %797, 0
  br i1 %798, label %832, label %799

; <label>:799                                     ; preds = %784
  %800 = add i32 %39, 392
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = add i32 %802, 0
  %804 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %803, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %391, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 131072
  %808 = icmp eq i32 %807, 0
  %809 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %804, %dx.types.Handle %59, float %490, float %491, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %810 = extractvalue %dx.types.ResRet.f32 %809, 0
  %811 = extractvalue %dx.types.ResRet.f32 %809, 1
  %812 = extractvalue %dx.types.ResRet.f32 %809, 2
  %813 = fmul fast float %810, %168
  %814 = fmul fast float %811, %171
  %815 = fmul fast float %812, %174
  br i1 %808, label %822, label %816

; <label>:816                                     ; preds = %799
  %817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %818 = extractvalue %dx.types.CBufRet.f32 %817, 0
  %819 = fmul fast float %818, %813
  %820 = fmul fast float %818, %814
  %821 = fmul fast float %818, %815
  br label %822

; <label>:822                                     ; preds = %816, %799
  %823 = phi float [ %819, %816 ], [ %813, %799 ]
  %824 = phi float [ %820, %816 ], [ %814, %799 ]
  %825 = phi float [ %821, %816 ], [ %815, %799 ]
  %826 = fmul fast float %823, %794
  %827 = select i1 %162, float %826, float %823
  %828 = call float @dx.op.dot3.f32(i32 55, float %827, float %824, float %825, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %829 = select i1 %162, float 0.000000e+00, float %823
  %830 = select i1 %162, float %828, float %824
  %831 = select i1 %162, float 0.000000e+00, float %825
  br label %832

; <label>:832                                     ; preds = %822, %784
  %833 = phi float [ %829, %822 ], [ 0.000000e+00, %784 ]
  %834 = phi float [ %830, %822 ], [ 0.000000e+00, %784 ]
  %835 = phi float [ %831, %822 ], [ 0.000000e+00, %784 ]
  %836 = add i32 %39, 96
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = and i32 %838, 255
  %840 = uitofp i32 %839 to float
  %841 = lshr i32 %838, 8
  %842 = and i32 %841, 255
  %843 = uitofp i32 %842 to float
  %844 = call float @dx.op.dot3.f32(i32 55, float %705, float %706, float %707, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %845 = fmul fast float %843, %844
  %846 = fadd fast float %845, %840
  %847 = fmul fast float %846, 0x3F70101020000000
  %848 = call float @dx.op.unary.f32(i32 7, float %847)  ; Saturate(value)
  br label %849

; <label>:849                                     ; preds = %832, %384
  %850 = phi float [ 0.000000e+00, %384 ], [ %786, %832 ]
  %851 = phi float [ 0.000000e+00, %384 ], [ %787, %832 ]
  %852 = phi float [ 0.000000e+00, %384 ], [ %705, %832 ]
  %853 = phi float [ 0.000000e+00, %384 ], [ %706, %832 ]
  %854 = phi float [ 0.000000e+00, %384 ], [ %707, %832 ]
  %855 = phi float [ 0.000000e+00, %384 ], [ %833, %832 ]
  %856 = phi float [ 0.000000e+00, %384 ], [ %834, %832 ]
  %857 = phi float [ 0.000000e+00, %384 ], [ %835, %832 ]
  %858 = phi float [ 0.000000e+00, %384 ], [ %691, %832 ]
  %859 = phi float [ 0.000000e+00, %384 ], [ 1.000000e+00, %832 ]
  %860 = phi float [ 0.000000e+00, %384 ], [ %785, %832 ]
  %861 = phi float [ 0.000000e+00, %384 ], [ %788, %832 ]
  %862 = phi float [ 0.000000e+00, %384 ], [ %848, %832 ]
  br i1 %335, label %1696, label %863

; <label>:863                                     ; preds = %849
  %864 = icmp ult i32 %390, 2
  %865 = add i32 %39, 40
  %866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.i32 %866, 0
  %868 = add i32 %39, 44
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %868, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = or i32 %870, %867
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %1696, label %873

; <label>:873                                     ; preds = %863
  %874 = add i32 %39, 300
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = lshr i32 %876, 16
  %878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %877)  ; LegacyF16ToF32(value)
  %879 = fmul fast float %878, 0x3F50624DE0000000
  %880 = add i32 %39, 104
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = lshr i32 %882, 16
  %884 = and i32 %883, 255
  %885 = lshr i32 %882, 24
  %886 = add i32 %39, 308
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = and i32 %888, 65535
  %890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %889)  ; LegacyF16ToF32(value)
  %891 = lshr i32 %888, 16
  %892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %891)  ; LegacyF16ToF32(value)
  %893 = add i32 %39, 48
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = lshr i32 %895, 22
  %897 = shl nuw nsw i32 %896, 5
  %898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %897)  ; LegacyF16ToF32(value)
  %899 = shl i32 %895, 4
  %900 = and i32 %899, 32752
  %901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %900)  ; LegacyF16ToF32(value)
  %902 = lshr i32 %895, 7
  %903 = and i32 %902, 32752
  %904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %903)  ; LegacyF16ToF32(value)
  %905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %906 = extractvalue %dx.types.CBufRet.f32 %905, 3
  %907 = fmul fast float %906, 1.000000e+03
  %908 = fmul fast float %245, %907
  %909 = call float @dx.op.unary.f32(i32 22, float %908)  ; Frc(value)
  %910 = fadd fast float %909, %235
  %911 = fmul fast float %246, %907
  %912 = call float @dx.op.unary.f32(i32 22, float %911)  ; Frc(value)
  %913 = fadd fast float %912, %237
  %914 = fmul fast float %879, %907
  %915 = call float @dx.op.unary.f32(i32 22, float %914)  ; Frc(value)
  %916 = fmul fast float %915, 0x401921FB60000000
  %917 = fadd fast float %916, %898
  %918 = call float @dx.op.unary.f32(i32 13, float %917)  ; Sin(value)
  %919 = call float @dx.op.unary.f32(i32 12, float %917)  ; Cos(value)
  %920 = fsub fast float -0.000000e+00, %918
  %921 = fadd fast float %51, -5.000000e-01
  %922 = fadd fast float %52, -5.000000e-01
  %923 = fmul fast float %890, %921
  %924 = fmul fast float %892, %922
  %925 = fadd fast float %923, 5.000000e-01
  %926 = fadd fast float %924, 5.000000e-01
  %927 = fmul fast float %901, %925
  %928 = fmul fast float %904, %926
  %929 = fmul fast float %919, %927
  %930 = call float @dx.op.tertiary.f32(i32 46, float %920, float %928, float %929)  ; FMad(a,b,c)
  %931 = fmul fast float %918, %927
  %932 = call float @dx.op.tertiary.f32(i32 46, float %919, float %928, float %931)  ; FMad(a,b,c)
  %933 = fadd fast float %910, %930
  %934 = fadd fast float %913, %932
  %935 = icmp ugt i32 %884, 1
  %936 = icmp ugt i32 %882, 33554431
  %937 = or i1 %936, %935
  br i1 %937, label %938, label %963

; <label>:938                                     ; preds = %873
  %939 = add i32 %39, 244
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = lshr i32 %941, 16
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = fmul fast float %906, %943
  %945 = call float @dx.op.unary.f32(i32 22, float %944)  ; Frc(value)
  %946 = mul nuw nsw i32 %884, %885
  %947 = uitofp i32 %946 to float
  %948 = fmul fast float %945, %947
  %949 = call float @dx.op.unary.f32(i32 27, float %948)  ; Round_ni(value)
  %950 = fptoui float %949 to i32
  %951 = urem i32 %950, %884
  %952 = udiv i32 %950, %885
  %953 = call float @dx.op.unary.f32(i32 22, float %933)  ; Frc(value)
  %954 = call float @dx.op.unary.f32(i32 22, float %934)  ; Frc(value)
  %955 = uitofp i32 %951 to float
  %956 = uitofp i32 %952 to float
  %957 = fadd fast float %953, %955
  %958 = fadd fast float %954, %956
  %959 = uitofp i32 %884 to float
  %960 = uitofp i32 %885 to float
  %961 = fdiv fast float %957, %959
  %962 = fdiv fast float %958, %960
  br label %963

; <label>:963                                     ; preds = %938, %873
  %964 = phi float [ %961, %938 ], [ %933, %873 ]
  %965 = phi float [ %962, %938 ], [ %934, %873 ]
  %966 = and i32 %867, 16777216
  %967 = icmp eq i32 %966, 0
  br i1 %967, label %1077, label %968

; <label>:968                                     ; preds = %963
  %969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %970 = extractvalue %dx.types.CBufRet.f32 %969, 0
  %971 = extractvalue %dx.types.CBufRet.f32 %969, 1
  %972 = extractvalue %dx.types.CBufRet.f32 %969, 2
  %973 = fadd fast float %970, %118
  %974 = fadd fast float %971, %119
  %975 = fadd fast float %972, %120
  %976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %977 = extractvalue %dx.types.CBufRet.f32 %976, 0
  %978 = call float @dx.op.unary.f32(i32 7, float %977)  ; Saturate(value)
  %979 = icmp eq i32 %40, 65535
  br i1 %979, label %1074, label %980

; <label>:980                                     ; preds = %968
  %981 = lshr i32 %40, 1
  %982 = shl i32 %981, 2
  %983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %982, i32 undef)  ; BufferLoad(srv,index,wot)
  %984 = extractvalue %dx.types.ResRet.i32 %983, 0
  %985 = and i32 %40, 1
  %986 = icmp ne i32 %985, 0
  %987 = lshr i32 %984, 16
  %988 = and i32 %984, 65535
  %989 = select i1 %986, i32 %987, i32 %988
  %990 = icmp eq i32 %989, 65535
  br i1 %990, label %1070, label %991

; <label>:991                                     ; preds = %980
  %992 = mul nuw nsw i32 %989, 40
  %993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %992, i32 undef)  ; BufferLoad(srv,index,wot)
  %994 = extractvalue %dx.types.ResRet.f32 %993, 0
  %995 = extractvalue %dx.types.ResRet.f32 %993, 1
  %996 = extractvalue %dx.types.ResRet.f32 %993, 2
  %997 = add nuw nsw i32 %992, 12
  %998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.f32 %998, 0
  %1000 = extractvalue %dx.types.ResRet.f32 %998, 1
  %1001 = extractvalue %dx.types.ResRet.f32 %998, 2
  %1002 = add nuw nsw i32 %992, 24
  %1003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1002, i32 undef)  ; BufferLoad(srv,index,wot)
  %1004 = extractvalue %dx.types.ResRet.f32 %1003, 0
  %1005 = extractvalue %dx.types.ResRet.f32 %1003, 1
  %1006 = extractvalue %dx.types.ResRet.f32 %1003, 2
  %1007 = add nuw nsw i32 %992, 36
  %1008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = fsub fast float %973, %994
  %1011 = fsub fast float %974, %995
  %1012 = fsub fast float %975, %996
  %1013 = fmul fast float %1009, %1010
  %1014 = fmul fast float %1009, %1011
  %1015 = fmul fast float %1009, %1012
  %1016 = call float @dx.op.unary.f32(i32 27, float %1013)  ; Round_ni(value)
  %1017 = call float @dx.op.unary.f32(i32 27, float %1014)  ; Round_ni(value)
  %1018 = call float @dx.op.unary.f32(i32 27, float %1015)  ; Round_ni(value)
  %1019 = fadd fast float %1016, 5.000000e-01
  %1020 = fadd fast float %1017, 5.000000e-01
  %1021 = fadd fast float %1018, 5.000000e-01
  %1022 = fmul fast float %1019, %999
  %1023 = fmul fast float %1020, %1000
  %1024 = fmul fast float %1021, %1001
  %1025 = shl i32 %40, 2
  %1026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1027 = extractvalue %dx.types.ResRet.i32 %1026, 0
  %1028 = add i32 %1027, 0
  %1029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1030 = call float @dx.op.unary.f32(i32 22, float %1022)  ; Frc(value)
  %1031 = call float @dx.op.unary.f32(i32 22, float %1023)  ; Frc(value)
  %1032 = call float @dx.op.unary.f32(i32 22, float %1024)  ; Frc(value)
  %1033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1029, %dx.types.Handle %36, float %1030, float %1031, float %1032, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1034 = extractvalue %dx.types.ResRet.f32 %1033, 0
  %1035 = extractvalue %dx.types.ResRet.f32 %1033, 1
  %1036 = extractvalue %dx.types.ResRet.f32 %1033, 2
  %1037 = fmul fast float %1034, 1.023000e+03
  %1038 = fmul fast float %1035, 1.023000e+03
  %1039 = fmul fast float %1036, 1.023000e+03
  %1040 = fadd fast float %1037, 5.000000e-01
  %1041 = fadd fast float %1038, 5.000000e-01
  %1042 = fadd fast float %1039, 5.000000e-01
  %1043 = call float @dx.op.unary.f32(i32 27, float %1040)  ; Round_ni(value)
  %1044 = call float @dx.op.unary.f32(i32 27, float %1041)  ; Round_ni(value)
  %1045 = call float @dx.op.unary.f32(i32 27, float %1042)  ; Round_ni(value)
  %1046 = fsub fast float %1013, %1016
  %1047 = fsub fast float %1014, %1017
  %1048 = fsub fast float %1015, %1018
  %1049 = fmul fast float %1046, 7.500000e-01
  %1050 = fmul fast float %1047, 7.500000e-01
  %1051 = fmul fast float %1048, 7.500000e-01
  %1052 = fadd fast float %1016, 1.250000e-01
  %1053 = fadd fast float %1052, %1049
  %1054 = fadd fast float %1053, %1043
  %1055 = fadd fast float %1017, 1.250000e-01
  %1056 = fadd fast float %1055, %1050
  %1057 = fadd fast float %1056, %1044
  %1058 = fadd fast float %1018, 1.250000e-01
  %1059 = fadd fast float %1058, %1051
  %1060 = fadd fast float %1059, %1045
  %1061 = fmul fast float %1054, %1004
  %1062 = fmul fast float %1057, %1005
  %1063 = fmul fast float %1060, %1006
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1025, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = add i32 %1065, 0
  %1067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1067, %dx.types.Handle %34, float %1061, float %1062, float %1063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1069 = extractvalue %dx.types.ResRet.f32 %1068, 0
  br label %1070

; <label>:1070                                    ; preds = %991, %980
  %1071 = phi float [ %1069, %991 ], [ -1.000000e+00, %980 ]
  %1072 = fadd fast float %1071, %978
  %1073 = call float @dx.op.unary.f32(i32 7, float %1072)  ; Saturate(value)
  br label %1074

; <label>:1074                                    ; preds = %1070, %968
  %1075 = phi float [ %1073, %1070 ], [ %978, %968 ]
  %1076 = fmul fast float %1075, %387
  br label %1077

; <label>:1077                                    ; preds = %1074, %963
  %1078 = phi float [ %1076, %1074 ], [ %387, %963 ]
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = and i32 %1080, 256
  %1082 = icmp eq i32 %1081, 0
  br i1 %1082, label %1129, label %1083

; <label>:1083                                    ; preds = %1077
  %1084 = add i32 %39, 428
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = add i32 %1086, 0
  %1088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1089 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1088, %dx.types.Handle %60, float %964, float %965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = add i32 %39, 116
  %1092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1091, i32 undef)  ; BufferLoad(srv,index,wot)
  %1093 = extractvalue %dx.types.ResRet.i32 %1092, 0
  %1094 = shl i32 %1093, 4
  %1095 = and i32 %1094, 32752
  %1096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1095)  ; LegacyF16ToF32(value)
  %1097 = lshr i32 %1093, 7
  %1098 = and i32 %1097, 32752
  %1099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1098)  ; LegacyF16ToF32(value)
  %1100 = fsub fast float 1.000000e+00, %1078
  %1101 = call float @dx.op.binary.f32(i32 35, float %1100, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1102 = bitcast float %1078 to i32
  %1103 = sitofp i32 %1102 to float
  %1104 = fadd fast float %1103, 0xC1CFBF8940000000
  %1105 = fmul fast float %1099, %1104
  %1106 = fadd fast float %1105, 0x41CFBF8940000000
  %1107 = fptosi float %1106 to i32
  %1108 = bitcast i32 %1107 to float
  %1109 = bitcast float %1101 to i32
  %1110 = sitofp i32 %1109 to float
  %1111 = fadd fast float %1110, 0xC1CFBF8940000000
  %1112 = fmul fast float %1111, %1099
  %1113 = fadd fast float %1112, 0x41CFBF8940000000
  %1114 = fptosi float %1113 to i32
  %1115 = bitcast i32 %1114 to float
  %1116 = fmul fast float %1108, %1096
  %1117 = fmul fast float %1115, %1096
  %1118 = fsub fast float %1101, %1116
  %1119 = fadd fast float %1117, %1101
  %1120 = call float @dx.op.unary.f32(i32 7, float %1118)  ; Saturate(value)
  %1121 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  %1122 = fsub fast float %1090, %1120
  %1123 = fsub fast float %1121, %1120
  %1124 = bitcast float %1123 to i32
  %1125 = sub nsw i32 2129859010, %1124
  %1126 = bitcast i32 %1125 to float
  %1127 = fmul fast float %1126, %1122
  %1128 = call float @dx.op.unary.f32(i32 7, float %1127)  ; Saturate(value)
  br label %1129

; <label>:1129                                    ; preds = %1083, %1077
  %1130 = phi float [ %1128, %1083 ], [ %1078, %1077 ]
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = and i32 %1132, 128
  %1134 = icmp eq i32 %1133, 0
  br i1 %1134, label %1151, label %1135

; <label>:1135                                    ; preds = %1129
  %1136 = add i32 %39, 412
  %1137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1136, i32 undef)  ; BufferLoad(srv,index,wot)
  %1138 = extractvalue %dx.types.ResRet.i32 %1137, 0
  %1139 = add i32 %1138, 0
  %1140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1140, %dx.types.Handle %60, float %964, float %965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1142 = extractvalue %dx.types.ResRet.f32 %1141, 0
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = and i32 %1144, 524288
  %1146 = icmp ne i32 %1145, 0
  %1147 = fcmp fast ogt float %1142, 0x3FE0101020000000
  %1148 = select i1 %1147, float 1.000000e+00, float 0.000000e+00
  %1149 = select i1 %1146, float %1148, float %1142
  %1150 = fmul fast float %1149, %1130
  br label %1151

; <label>:1151                                    ; preds = %1135, %1129
  %1152 = phi float [ %1150, %1135 ], [ %1130, %1129 ]
  %1153 = fcmp fast ult float %1152, 0x3F70101020000000
  br i1 %1153, label %1696, label %1154

; <label>:1154                                    ; preds = %1151
  %1155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1156 = extractvalue %dx.types.ResRet.i32 %1155, 0
  %1157 = and i32 %1156, 16
  %1158 = icmp eq i32 %1157, 0
  br i1 %1158, label %1357, label %1159

; <label>:1159                                    ; preds = %1154
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = add i32 %39, 364
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = add i32 %1164, 0
  %1166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1166, %dx.types.Handle %59, float %964, float %965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = extractvalue %dx.types.ResRet.f32 %1167, 1
  %1170 = extractvalue %dx.types.ResRet.f32 %1167, 2
  %1171 = extractvalue %dx.types.ResRet.f32 %1167, 3
  %1172 = and i32 %1161, 255
  %1173 = uitofp i32 %1172 to float
  %1174 = lshr i32 %1161, 8
  %1175 = and i32 %1174, 255
  %1176 = uitofp i32 %1175 to float
  %1177 = fmul fast float %1171, %1173
  %1178 = fadd fast float %1177, %1176
  %1179 = fmul fast float %1178, 0x3F70101000000000
  %1180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1181 = extractvalue %dx.types.ResRet.i32 %1180, 0
  %1182 = and i32 %1181, 512
  %1183 = icmp eq i32 %1182, 0
  br i1 %1183, label %1192, label %1184

; <label>:1184                                    ; preds = %1159
  %1185 = add i32 %39, 444
  %1186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1185, i32 undef)  ; BufferLoad(srv,index,wot)
  %1187 = extractvalue %dx.types.ResRet.i32 %1186, 0
  %1188 = add i32 %1187, 0
  %1189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1188, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1189, %dx.types.Handle %60, float %964, float %965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1191 = extractvalue %dx.types.ResRet.f32 %1190, 0
  br label %1192

; <label>:1192                                    ; preds = %1184, %1159
  %1193 = phi float [ %1191, %1184 ], [ 1.000000e+00, %1159 ]
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = and i32 %1195, 33554432
  %1197 = icmp eq i32 %1196, 0
  br i1 %1197, label %1304, label %1198

; <label>:1198                                    ; preds = %1192
  %1199 = add i32 %39, 240
  %1200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1199, i32 undef)  ; BufferLoad(srv,index,wot)
  %1201 = extractvalue %dx.types.ResRet.i32 %1200, 0
  %1202 = and i32 %1201, 65535
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = lshr i32 %1201, 16
  %1205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1204)  ; LegacyF16ToF32(value)
  %1206 = add i32 %39, 244
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = and i32 %1208, 65535
  %1210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1209)  ; LegacyF16ToF32(value)
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = lshr i32 %1212, 24
  %1214 = uitofp i32 %1213 to float
  %1215 = fmul fast float %1214, 0x3F70101020000000
  %1216 = and i32 %1212, 255
  %1217 = uitofp i32 %1216 to float
  %1218 = fmul fast float %1217, 0x3F70101020000000
  %1219 = lshr i32 %1212, 8
  %1220 = and i32 %1219, 255
  %1221 = uitofp i32 %1220 to float
  %1222 = fmul fast float %1221, 0x3F70101020000000
  %1223 = lshr i32 %1212, 16
  %1224 = and i32 %1223, 255
  %1225 = uitofp i32 %1224 to float
  %1226 = fmul fast float %1225, 0x3F70101020000000
  %1227 = add i32 %39, 236
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %1244 = bitcast float %1168 to i32
  %1245 = ashr i32 %1244, 1
  %1246 = sub nsw i32 1597463174, %1245
  %1247 = bitcast i32 %1246 to float
  %1248 = fmul fast float %1168, 5.000000e-01
  %1249 = fmul fast float %1247, %1247
  %1250 = fmul fast float %1249, %1248
  %1251 = fsub fast float 1.500000e+00, %1250
  %1252 = fmul fast float %1247, %1168
  %1253 = fmul fast float %1252, %1251
  %1254 = bitcast float %1169 to i32
  %1255 = ashr i32 %1254, 1
  %1256 = sub nsw i32 1597463174, %1255
  %1257 = bitcast i32 %1256 to float
  %1258 = fmul fast float %1169, 5.000000e-01
  %1259 = fmul fast float %1257, %1257
  %1260 = fmul fast float %1259, %1258
  %1261 = fsub fast float 1.500000e+00, %1260
  %1262 = fmul fast float %1257, %1169
  %1263 = fmul fast float %1262, %1261
  %1264 = bitcast float %1170 to i32
  %1265 = ashr i32 %1264, 1
  %1266 = sub nsw i32 1597463174, %1265
  %1267 = bitcast i32 %1266 to float
  %1268 = fmul fast float %1170, 5.000000e-01
  %1269 = fmul fast float %1267, %1267
  %1270 = fmul fast float %1269, %1268
  %1271 = fsub fast float 1.500000e+00, %1270
  %1272 = fmul fast float %1267, %1170
  %1273 = fmul fast float %1272, %1271
  %1274 = fsub fast float %1253, %1235
  %1275 = fsub fast float %1263, %1239
  %1276 = fsub fast float %1273, %1243
  %1277 = fmul fast float %1274, %1203
  %1278 = fmul fast float %1275, %1205
  %1279 = fmul fast float %1276, %1210
  %1280 = fadd fast float %1277, %1218
  %1281 = fadd fast float %1278, %1222
  %1282 = fadd fast float %1279, %1226
  %1283 = call float @dx.op.unary.f32(i32 7, float %1280)  ; Saturate(value)
  %1284 = call float @dx.op.unary.f32(i32 7, float %1281)  ; Saturate(value)
  %1285 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  %1286 = fmul fast float %1283, %1283
  %1287 = fmul fast float %1284, %1284
  %1288 = fmul fast float %1285, %1285
  %1289 = fsub fast float %1286, %1168
  %1290 = fsub fast float %1287, %1169
  %1291 = fsub fast float %1288, %1170
  %1292 = fmul fast float %1289, %1193
  %1293 = fmul fast float %1290, %1193
  %1294 = fmul fast float %1291, %1193
  %1295 = fadd fast float %1292, %1168
  %1296 = fadd fast float %1293, %1169
  %1297 = fadd fast float %1294, %1170
  %1298 = fadd fast float %1215, %1179
  %1299 = fsub fast float %1298, %1232
  %1300 = call float @dx.op.unary.f32(i32 7, float %1299)  ; Saturate(value)
  %1301 = fsub fast float %1300, %1179
  %1302 = fmul fast float %1301, %1193
  %1303 = fadd fast float %1302, %1179
  br label %1357

; <label>:1304                                    ; preds = %1192
  %1305 = and i32 %1195, 134217728
  %1306 = icmp eq i32 %1305, 0
  br i1 %1306, label %1341, label %1307

; <label>:1307                                    ; preds = %1304
  %1308 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %1309 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %1310 = call float @dx.op.unary.f32(i32 24, float %230)  ; Sqrt(value)
  %1311 = fadd fast float %1308, -5.000000e-01
  %1312 = fadd fast float %1309, -5.000000e-01
  %1313 = fadd fast float %1310, -5.000000e-01
  %1314 = fmul fast float %1311, %1193
  %1315 = fmul fast float %1312, %1193
  %1316 = fmul fast float %1313, %1193
  %1317 = fadd fast float %1314, 5.000000e-01
  %1318 = fadd fast float %1315, 5.000000e-01
  %1319 = fadd fast float %1316, 5.000000e-01
  %1320 = call float @dx.op.unary.f32(i32 24, float %1168)  ; Sqrt(value)
  %1321 = call float @dx.op.unary.f32(i32 24, float %1169)  ; Sqrt(value)
  %1322 = call float @dx.op.unary.f32(i32 24, float %1170)  ; Sqrt(value)
  %1323 = fmul fast float %1317, 2.000000e+00
  %1324 = fsub fast float 1.000000e+00, %1323
  %1325 = fmul fast float %1324, %1320
  %1326 = fadd fast float %1325, %1323
  %1327 = fmul fast float %1326, %1320
  %1328 = fmul fast float %1318, 2.000000e+00
  %1329 = fsub fast float 1.000000e+00, %1328
  %1330 = fmul fast float %1329, %1321
  %1331 = fadd fast float %1330, %1328
  %1332 = fmul fast float %1331, %1321
  %1333 = fmul fast float %1319, 2.000000e+00
  %1334 = fsub fast float 1.000000e+00, %1333
  %1335 = fmul fast float %1334, %1322
  %1336 = fadd fast float %1335, %1333
  %1337 = fmul fast float %1336, %1322
  %1338 = fmul fast float %1327, %1327
  %1339 = fmul fast float %1332, %1332
  %1340 = fmul fast float %1337, %1337
  br label %1357

; <label>:1341                                    ; preds = %1304
  %1342 = fmul fast float %222, %222
  %1343 = fmul fast float %226, %226
  %1344 = fmul fast float %230, %230
  %1345 = fadd fast float %1342, -1.000000e+00
  %1346 = fadd fast float %1343, -1.000000e+00
  %1347 = fadd fast float %1344, -1.000000e+00
  %1348 = fmul fast float %1193, %1345
  %1349 = fmul fast float %1193, %1346
  %1350 = fmul fast float %1193, %1347
  %1351 = fadd fast float %1348, 1.000000e+00
  %1352 = fadd fast float %1349, 1.000000e+00
  %1353 = fadd fast float %1350, 1.000000e+00
  %1354 = fmul fast float %1351, %1168
  %1355 = fmul fast float %1352, %1169
  %1356 = fmul fast float %1353, %1170
  br label %1357

; <label>:1357                                    ; preds = %1341, %1307, %1198, %1154
  %1358 = phi float [ %1303, %1198 ], [ %1179, %1307 ], [ %1179, %1341 ], [ 0x3FA23C0BE0000000, %1154 ]
  %1359 = phi float [ %1295, %1198 ], [ %1338, %1307 ], [ %1354, %1341 ], [ 1.000000e+00, %1154 ]
  %1360 = phi float [ %1296, %1198 ], [ %1339, %1307 ], [ %1355, %1341 ], [ 1.000000e+00, %1154 ]
  %1361 = phi float [ %1297, %1198 ], [ %1340, %1307 ], [ %1356, %1341 ], [ 1.000000e+00, %1154 ]
  %1362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1363 = extractvalue %dx.types.CBufRet.i32 %1362, 1
  %1364 = and i32 %1363, 1
  %1365 = icmp ne i32 %1364, 0
  %1366 = add i32 %39, 356
  %1367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1366, i32 undef)  ; BufferLoad(srv,index,wot)
  %1368 = extractvalue %dx.types.ResRet.i32 %1367, 0
  %1369 = and i32 %1368, 32
  %1370 = icmp ne i32 %1369, 0
  %1371 = and i1 %1365, %1370
  %1372 = select i1 %1371, float 1.000000e+00, float %1359
  %1373 = select i1 %1371, float 0x3FD3333340000000, float %1360
  %1374 = select i1 %1371, float 0x3FD3333340000000, float %1361
  %1375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1376 = extractvalue %dx.types.ResRet.i32 %1375, 0
  %1377 = and i32 %1376, 32
  %1378 = icmp eq i32 %1377, 0
  br i1 %1378, label %1451, label %1379

; <label>:1379                                    ; preds = %1357
  %1380 = add i32 %39, 108
  %1381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1380, i32 undef)  ; BufferLoad(srv,index,wot)
  %1382 = extractvalue %dx.types.ResRet.i32 %1381, 0
  %1383 = add i32 %39, 380
  %1384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1383, i32 undef)  ; BufferLoad(srv,index,wot)
  %1385 = extractvalue %dx.types.ResRet.i32 %1384, 0
  %1386 = add i32 %1385, 0
  %1387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1388 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1387, %dx.types.Handle %59, float %964, float %965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1389 = extractvalue %dx.types.ResRet.f32 %1388, 0
  %1390 = extractvalue %dx.types.ResRet.f32 %1388, 1
  %1391 = extractvalue %dx.types.ResRet.f32 %1388, 2
  %1392 = extractvalue %dx.types.ResRet.f32 %1388, 3
  %1393 = and i32 %1382, 255
  %1394 = uitofp i32 %1393 to float
  %1395 = lshr i32 %1382, 8
  %1396 = and i32 %1395, 255
  %1397 = uitofp i32 %1396 to float
  %1398 = lshr i32 %1382, 16
  %1399 = and i32 %1398, 255
  %1400 = uitofp i32 %1399 to float
  %1401 = fmul fast float %1400, 0x3F70101000000000
  %1402 = fmul fast float %1389, %1394
  %1403 = fadd fast float %1402, %1397
  %1404 = fmul fast float %1403, 0x3F70101000000000
  %1405 = fadd fast float %1390, -5.000000e-01
  %1406 = fadd fast float %1392, -5.000000e-01
  %1407 = fmul fast float %1405, %1401
  %1408 = fmul fast float %1406, %1401
  %1409 = fadd fast float %1407, 5.000000e-01
  %1410 = fadd fast float %1408, 5.000000e-01
  %1411 = fmul fast float %1409, 2.000000e+00
  %1412 = fadd fast float %1411, -1.000000e+00
  %1413 = fmul fast float %1410, 2.000000e+00
  %1414 = fadd fast float %1413, -1.000000e+00
  %1415 = fadd fast float %1412, %1414
  %1416 = fmul fast float %1415, 5.000000e-01
  %1417 = fsub fast float %1412, %1414
  %1418 = fmul fast float %1417, 5.000000e-01
  %1419 = call float @dx.op.unary.f32(i32 6, float %1416)  ; FAbs(value)
  %1420 = fsub fast float 1.000000e+00, %1419
  %1421 = call float @dx.op.unary.f32(i32 6, float %1418)  ; FAbs(value)
  %1422 = fsub fast float %1420, %1421
  %1423 = call float @dx.op.dot3.f32(i32 55, float %1416, float %1418, float %1422, float %1416, float %1418, float %1422)  ; Dot3(ax,ay,az,bx,by,bz)
  %1424 = call float @dx.op.unary.f32(i32 25, float %1423)  ; Rsqrt(value)
  %1425 = fmul fast float %1416, %1424
  %1426 = fmul fast float %1418, %1424
  %1427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.i32 %1427, 0
  %1429 = and i32 %1428, 67108864
  %1430 = icmp eq i32 %1429, 0
  br i1 %1430, label %1447, label %1431

; <label>:1431                                    ; preds = %1379
  %1432 = add i32 %39, 296
  %1433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1432, i32 undef)  ; BufferLoad(srv,index,wot)
  %1434 = extractvalue %dx.types.ResRet.i32 %1433, 0
  %1435 = and i32 %1434, 65535
  %1436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1435)  ; LegacyF16ToF32(value)
  %1437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %1438 = extractvalue %dx.types.ResRet.i32 %1437, 0
  %1439 = and i32 %1438, 65535
  %1440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1439)  ; LegacyF16ToF32(value)
  %1441 = lshr i32 %1434, 16
  %1442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1441)  ; LegacyF16ToF32(value)
  %1443 = fsub fast float %1404, %1442
  %1444 = fmul fast float %1443, %1436
  %1445 = fadd fast float %1444, %1440
  %1446 = call float @dx.op.unary.f32(i32 7, float %1445)  ; Saturate(value)
  br label %1447

; <label>:1447                                    ; preds = %1431, %1379
  %1448 = phi float [ %1446, %1431 ], [ %1404, %1379 ]
  %1449 = call float @dx.op.dot2.f32(i32 54, float %1425, float %1426, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %1450 = call float @dx.op.dot2.f32(i32 54, float %1425, float %1426, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %1451

; <label>:1451                                    ; preds = %1447, %1357
  %1452 = phi float [ %1448, %1447 ], [ 0x3FD6666660000000, %1357 ]
  %1453 = phi float [ %1449, %1447 ], [ 0.000000e+00, %1357 ]
  %1454 = phi float [ %1450, %1447 ], [ 0.000000e+00, %1357 ]
  %1455 = phi float [ %1391, %1447 ], [ 1.000000e+00, %1357 ]
  %1456 = add i32 %39, 176
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1456, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = lshr i32 %1458, 22
  %1460 = shl nuw nsw i32 %1459, 5
  %1461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1460)  ; LegacyF16ToF32(value)
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = and i32 %1463, 64
  %1465 = icmp eq i32 %1464, 0
  br i1 %1465, label %1499, label %1466

; <label>:1466                                    ; preds = %1451
  %1467 = add i32 %39, 396
  %1468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1467, i32 undef)  ; BufferLoad(srv,index,wot)
  %1469 = extractvalue %dx.types.ResRet.i32 %1468, 0
  %1470 = add i32 %1469, 0
  %1471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = and i32 %1473, 131072
  %1475 = icmp eq i32 %1474, 0
  %1476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1471, %dx.types.Handle %59, float %964, float %965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1477 = extractvalue %dx.types.ResRet.f32 %1476, 0
  %1478 = extractvalue %dx.types.ResRet.f32 %1476, 1
  %1479 = extractvalue %dx.types.ResRet.f32 %1476, 2
  %1480 = fmul fast float %1477, %210
  %1481 = fmul fast float %1478, %213
  %1482 = fmul fast float %1479, %216
  br i1 %1475, label %1489, label %1483

; <label>:1483                                    ; preds = %1466
  %1484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1485 = extractvalue %dx.types.CBufRet.f32 %1484, 0
  %1486 = fmul fast float %1485, %1480
  %1487 = fmul fast float %1485, %1481
  %1488 = fmul fast float %1485, %1482
  br label %1489

; <label>:1489                                    ; preds = %1483, %1466
  %1490 = phi float [ %1486, %1483 ], [ %1480, %1466 ]
  %1491 = phi float [ %1487, %1483 ], [ %1481, %1466 ]
  %1492 = phi float [ %1488, %1483 ], [ %1482, %1466 ]
  %1493 = fmul fast float %1490, %1461
  %1494 = select i1 %162, float %1493, float %1490
  %1495 = call float @dx.op.dot3.f32(i32 55, float %1494, float %1491, float %1492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1496 = select i1 %162, float 0.000000e+00, float %1490
  %1497 = select i1 %162, float %1495, float %1491
  %1498 = select i1 %162, float 0.000000e+00, float %1492
  br label %1499

; <label>:1499                                    ; preds = %1489, %1451
  %1500 = phi float [ %1496, %1489 ], [ 0.000000e+00, %1451 ]
  %1501 = phi float [ %1497, %1489 ], [ 0.000000e+00, %1451 ]
  %1502 = phi float [ %1498, %1489 ], [ 0.000000e+00, %1451 ]
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = add i32 %39, 112
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = lshr i32 %1507, 8
  %1511 = and i32 %1510, 255
  %1512 = uitofp i32 %1511 to float
  %1513 = call float @dx.op.dot3.f32(i32 55, float %1372, float %1373, float %1374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1514 = fmul fast float %1512, %1513
  %1515 = fadd fast float %1514, %1509
  %1516 = fmul fast float %1515, 0x3F70101020000000
  %1517 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  br i1 %864, label %1518, label %1526

; <label>:1518                                    ; preds = %1499
  %1519 = fsub fast float 1.000000e+00, %1152
  %1520 = fmul fast float %1519, %852
  %1521 = fmul fast float %1519, %853
  %1522 = fmul fast float %1519, %854
  %1523 = fmul fast float %1519, %855
  %1524 = fmul fast float %1519, %856
  %1525 = fmul fast float %1519, %857
  br label %1526

; <label>:1526                                    ; preds = %1518, %1499
  %1527 = phi float [ %1520, %1518 ], [ %852, %1499 ]
  %1528 = phi float [ %1521, %1518 ], [ %853, %1499 ]
  %1529 = phi float [ %1522, %1518 ], [ %854, %1499 ]
  %1530 = phi float [ %1523, %1518 ], [ %855, %1499 ]
  %1531 = phi float [ %1524, %1518 ], [ %856, %1499 ]
  %1532 = phi float [ %1525, %1518 ], [ %857, %1499 ]
  %1533 = and i32 %1504, 3
  %1534 = icmp eq i32 %1533, 3
  br i1 %1534, label %1613, label %1535

; <label>:1535                                    ; preds = %1526
  %1536 = and i32 %1504, 16
  %1537 = icmp ne i32 %1536, 0
  %1538 = select i1 %1537, float %1152, float 0.000000e+00
  %1539 = icmp eq i32 %1533, 0
  br i1 %1539, label %1540, label %1568

; <label>:1540                                    ; preds = %1535
  %1541 = and i32 %1504, 64
  %1542 = icmp ne i32 %1541, 0
  %1543 = select i1 %1542, float %1152, float 0.000000e+00
  %1544 = fsub fast float %1372, %1527
  %1545 = fsub fast float %1373, %1528
  %1546 = fsub fast float %1374, %1529
  %1547 = fmul fast float %1538, %1544
  %1548 = fmul fast float %1538, %1545
  %1549 = fmul fast float %1538, %1546
  %1550 = fadd fast float %1547, %1527
  %1551 = fadd fast float %1548, %1528
  %1552 = fadd fast float %1549, %1529
  %1553 = fsub fast float %1358, %858
  %1554 = fmul fast float %1538, %1553
  %1555 = fadd fast float %1554, %858
  %1556 = fsub fast float %1500, %1530
  %1557 = fsub fast float %1501, %1531
  %1558 = fsub fast float %1502, %1532
  %1559 = fmul fast float %1543, %1556
  %1560 = fmul fast float %1543, %1557
  %1561 = fmul fast float %1543, %1558
  %1562 = fadd fast float %1559, %1530
  %1563 = fadd fast float %1560, %1531
  %1564 = fadd fast float %1561, %1532
  %1565 = fsub fast float %1517, %862
  %1566 = fmul fast float %1538, %1565
  %1567 = fadd fast float %1566, %862
  br label %1613

; <label>:1568                                    ; preds = %1535
  %1569 = icmp eq i32 %1533, 1
  br i1 %1569, label %1570, label %1583

; <label>:1570                                    ; preds = %1568
  %1571 = fadd fast float %1372, -1.000000e+00
  %1572 = fadd fast float %1373, -1.000000e+00
  %1573 = fadd fast float %1374, -1.000000e+00
  %1574 = fmul fast float %1538, %1571
  %1575 = fmul fast float %1538, %1572
  %1576 = fmul fast float %1538, %1573
  %1577 = fadd fast float %1574, 1.000000e+00
  %1578 = fadd fast float %1575, 1.000000e+00
  %1579 = fadd fast float %1576, 1.000000e+00
  %1580 = fmul fast float %1577, %1527
  %1581 = fmul fast float %1578, %1528
  %1582 = fmul fast float %1579, %1529
  br label %1613

; <label>:1583                                    ; preds = %1568
  %1584 = icmp eq i32 %1533, 2
  br i1 %1584, label %1585, label %1613

; <label>:1585                                    ; preds = %1583
  %1586 = call float @dx.op.unary.f32(i32 24, float %1372)  ; Sqrt(value)
  %1587 = call float @dx.op.unary.f32(i32 24, float %1373)  ; Sqrt(value)
  %1588 = call float @dx.op.unary.f32(i32 24, float %1374)  ; Sqrt(value)
  %1589 = fadd fast float %1586, -5.000000e-01
  %1590 = fadd fast float %1587, -5.000000e-01
  %1591 = fadd fast float %1588, -5.000000e-01
  %1592 = fmul fast float %1589, %1538
  %1593 = fmul fast float %1590, %1538
  %1594 = fmul fast float %1591, %1538
  %1595 = fadd fast float %1592, 5.000000e-01
  %1596 = fadd fast float %1593, 5.000000e-01
  %1597 = fadd fast float %1594, 5.000000e-01
  %1598 = fmul fast float %1595, 2.000000e+00
  %1599 = fsub fast float 1.000000e+00, %1598
  %1600 = fmul fast float %1599, %1527
  %1601 = fadd fast float %1600, %1598
  %1602 = fmul fast float %1601, %1527
  %1603 = fmul fast float %1596, 2.000000e+00
  %1604 = fsub fast float 1.000000e+00, %1603
  %1605 = fmul fast float %1604, %1528
  %1606 = fadd fast float %1605, %1603
  %1607 = fmul fast float %1606, %1528
  %1608 = fmul fast float %1597, 2.000000e+00
  %1609 = fsub fast float 1.000000e+00, %1608
  %1610 = fmul fast float %1609, %1529
  %1611 = fadd fast float %1610, %1608
  %1612 = fmul fast float %1611, %1529
  br label %1613

; <label>:1613                                    ; preds = %1585, %1583, %1570, %1540, %1526
  %1614 = phi float [ %1527, %1526 ], [ %1602, %1585 ], [ %1527, %1583 ], [ %1580, %1570 ], [ %1550, %1540 ]
  %1615 = phi float [ %1528, %1526 ], [ %1607, %1585 ], [ %1528, %1583 ], [ %1581, %1570 ], [ %1551, %1540 ]
  %1616 = phi float [ %1529, %1526 ], [ %1612, %1585 ], [ %1529, %1583 ], [ %1582, %1570 ], [ %1552, %1540 ]
  %1617 = phi float [ %1530, %1526 ], [ %1530, %1585 ], [ %1530, %1583 ], [ %1530, %1570 ], [ %1562, %1540 ]
  %1618 = phi float [ %1531, %1526 ], [ %1531, %1585 ], [ %1531, %1583 ], [ %1531, %1570 ], [ %1563, %1540 ]
  %1619 = phi float [ %1532, %1526 ], [ %1532, %1585 ], [ %1532, %1583 ], [ %1532, %1570 ], [ %1564, %1540 ]
  %1620 = phi float [ %858, %1526 ], [ %858, %1585 ], [ %858, %1583 ], [ %858, %1570 ], [ %1555, %1540 ]
  %1621 = phi float [ %862, %1526 ], [ %862, %1585 ], [ %862, %1583 ], [ %862, %1570 ], [ %1567, %1540 ]
  %1622 = and i32 %1504, 12
  %1623 = icmp eq i32 %1622, 12
  br i1 %1623, label %1696, label %1624

; <label>:1624                                    ; preds = %1613
  %1625 = and i32 %1504, 2097184
  %1626 = icmp eq i32 %1625, 2097184
  %1627 = select i1 %1626, float %1152, float 0.000000e+00
  %1628 = and i32 %1504, 4194336
  %1629 = icmp eq i32 %1628, 4194336
  %1630 = select i1 %1629, float %1152, float 0.000000e+00
  %1631 = and i32 %1504, 8388640
  %1632 = icmp eq i32 %1631, 8388640
  %1633 = select i1 %1632, float %1152, float 0.000000e+00
  %1634 = icmp eq i32 %1622, 0
  br i1 %1634, label %1635, label %1648

; <label>:1635                                    ; preds = %1624
  %1636 = fsub fast float %1453, %850
  %1637 = fsub fast float %1454, %851
  %1638 = fmul fast float %1627, %1636
  %1639 = fmul fast float %1627, %1637
  %1640 = fadd fast float %1638, %850
  %1641 = fadd fast float %1639, %851
  %1642 = fsub fast float %1455, %861
  %1643 = fmul fast float %1630, %1642
  %1644 = fadd fast float %1643, %861
  %1645 = fsub fast float %1452, %860
  %1646 = fmul fast float %1633, %1645
  %1647 = fadd fast float %1646, %860
  br label %1696

; <label>:1648                                    ; preds = %1624
  %1649 = icmp eq i32 %1622, 4
  br i1 %1649, label %1650, label %1682

; <label>:1650                                    ; preds = %1648
  %1651 = fmul fast float %1627, %1453
  %1652 = fmul fast float %1627, %1454
  %1653 = fadd fast float %1651, %850
  %1654 = fadd fast float %1652, %851
  %1655 = call float @dx.op.binary.f32(i32 36, float %861, float %1455)  ; FMin(a,b)
  %1656 = fsub fast float %1655, %861
  %1657 = fmul fast float %1656, %1630
  %1658 = fadd fast float %1657, %861
  %1659 = fadd fast float %1452, %860
  %1660 = fmul fast float %1659, 0x3FF337FAE0000000
  %1661 = fmul fast float %860, %860
  %1662 = fmul fast float %1452, %1452
  %1663 = fadd fast float %1662, %1661
  %1664 = fmul fast float %1663, 0x3FE5152B00000000
  %1665 = fmul fast float %860, 0xBFCC1F85E0000000
  %1666 = fmul fast float %1665, %1452
  %1667 = fadd fast float %1666, 0xBFE1363700000000
  %1668 = fadd fast float %1667, %1660
  %1669 = fsub fast float %1668, %1664
  %1670 = fmul fast float %1659, 0x3FBA6F0D00000000
  %1671 = fmul fast float %1663, 0x3FD0432880000000
  %1672 = fmul fast float %860, 0xBFEF110800000000
  %1673 = fmul fast float %1672, %1452
  %1674 = fadd fast float %1673, 1.000000e+00
  %1675 = fsub fast float %1674, %1670
  %1676 = fadd fast float %1675, %1671
  %1677 = fdiv fast float %1669, %1676
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  %1679 = fsub fast float %1678, %860
  %1680 = fmul fast float %1679, %1633
  %1681 = fadd fast float %1680, %860
  br label %1696

; <label>:1682                                    ; preds = %1648
  %1683 = icmp eq i32 %1622, 8
  br i1 %1683, label %1684, label %1696

; <label>:1684                                    ; preds = %1682
  %1685 = fmul fast float %1627, %1453
  %1686 = fmul fast float %1627, %1454
  %1687 = fadd fast float %1685, %850
  %1688 = fadd fast float %1686, %851
  %1689 = call float @dx.op.binary.f32(i32 36, float %861, float %1455)  ; FMin(a,b)
  %1690 = fsub fast float %1689, %861
  %1691 = fmul fast float %1690, %1630
  %1692 = fadd fast float %1691, %861
  %1693 = fsub fast float %1452, %860
  %1694 = fmul fast float %1633, %1693
  %1695 = fadd fast float %1694, %860
  br label %1696

; <label>:1696                                    ; preds = %1684, %1682, %1650, %1635, %1613, %1151, %863, %849
  %1697 = phi float [ %850, %1613 ], [ %850, %1151 ], [ %850, %849 ], [ %1687, %1684 ], [ %850, %1682 ], [ %1653, %1650 ], [ %1640, %1635 ], [ %850, %863 ]
  %1698 = phi float [ %851, %1613 ], [ %851, %1151 ], [ %851, %849 ], [ %1688, %1684 ], [ %851, %1682 ], [ %1654, %1650 ], [ %1641, %1635 ], [ %851, %863 ]
  %1699 = phi float [ %1614, %1613 ], [ %852, %1151 ], [ %852, %849 ], [ %1614, %1684 ], [ %1614, %1682 ], [ %1614, %1650 ], [ %1614, %1635 ], [ %852, %863 ]
  %1700 = phi float [ %1615, %1613 ], [ %853, %1151 ], [ %853, %849 ], [ %1615, %1684 ], [ %1615, %1682 ], [ %1615, %1650 ], [ %1615, %1635 ], [ %853, %863 ]
  %1701 = phi float [ %1616, %1613 ], [ %854, %1151 ], [ %854, %849 ], [ %1616, %1684 ], [ %1616, %1682 ], [ %1616, %1650 ], [ %1616, %1635 ], [ %854, %863 ]
  %1702 = phi float [ %1617, %1613 ], [ %855, %1151 ], [ %855, %849 ], [ %1617, %1684 ], [ %1617, %1682 ], [ %1617, %1650 ], [ %1617, %1635 ], [ %855, %863 ]
  %1703 = phi float [ %1618, %1613 ], [ %856, %1151 ], [ %856, %849 ], [ %1618, %1684 ], [ %1618, %1682 ], [ %1618, %1650 ], [ %1618, %1635 ], [ %856, %863 ]
  %1704 = phi float [ %1619, %1613 ], [ %857, %1151 ], [ %857, %849 ], [ %1619, %1684 ], [ %1619, %1682 ], [ %1619, %1650 ], [ %1619, %1635 ], [ %857, %863 ]
  %1705 = phi float [ %1620, %1613 ], [ %858, %1151 ], [ %858, %849 ], [ %1620, %1684 ], [ %1620, %1682 ], [ %1620, %1650 ], [ %1620, %1635 ], [ %858, %863 ]
  %1706 = phi float [ %860, %1613 ], [ %860, %1151 ], [ %860, %849 ], [ %1695, %1684 ], [ %860, %1682 ], [ %1681, %1650 ], [ %1647, %1635 ], [ %860, %863 ]
  %1707 = phi float [ %861, %1613 ], [ %861, %1151 ], [ %861, %849 ], [ %1692, %1684 ], [ %861, %1682 ], [ %1658, %1650 ], [ %1644, %1635 ], [ %861, %863 ]
  %1708 = phi float [ %1621, %1613 ], [ %862, %1151 ], [ %862, %849 ], [ %1621, %1684 ], [ %1621, %1682 ], [ %1621, %1650 ], [ %1621, %1635 ], [ %862, %863 ]
  br i1 %337, label %2542, label %1709

; <label>:1709                                    ; preds = %1696
  %1710 = icmp ult i32 %390, 3
  %1711 = add i32 %39, 56
  %1712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1713 = extractvalue %dx.types.ResRet.i32 %1712, 0
  %1714 = add i32 %39, 60
  %1715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1714, i32 undef)  ; BufferLoad(srv,index,wot)
  %1716 = extractvalue %dx.types.ResRet.i32 %1715, 0
  %1717 = or i32 %1716, %1713
  %1718 = icmp eq i32 %1717, 0
  br i1 %1718, label %2542, label %1719

; <label>:1719                                    ; preds = %1709
  %1720 = add i32 %39, 316
  %1721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1720, i32 undef)  ; BufferLoad(srv,index,wot)
  %1722 = extractvalue %dx.types.ResRet.i32 %1721, 0
  %1723 = lshr i32 %1722, 16
  %1724 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1723)  ; LegacyF16ToF32(value)
  %1725 = fmul fast float %1724, 0x3F50624DE0000000
  %1726 = add i32 %39, 120
  %1727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.i32 %1727, 0
  %1729 = lshr i32 %1728, 16
  %1730 = and i32 %1729, 255
  %1731 = lshr i32 %1728, 24
  %1732 = add i32 %39, 324
  %1733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = and i32 %1734, 65535
  %1736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1735)  ; LegacyF16ToF32(value)
  %1737 = lshr i32 %1734, 16
  %1738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1737)  ; LegacyF16ToF32(value)
  %1739 = add i32 %39, 64
  %1740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1739, i32 undef)  ; BufferLoad(srv,index,wot)
  %1741 = extractvalue %dx.types.ResRet.i32 %1740, 0
  %1742 = lshr i32 %1741, 22
  %1743 = shl nuw nsw i32 %1742, 5
  %1744 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1743)  ; LegacyF16ToF32(value)
  %1745 = shl i32 %1741, 4
  %1746 = and i32 %1745, 32752
  %1747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1746)  ; LegacyF16ToF32(value)
  %1748 = lshr i32 %1741, 7
  %1749 = and i32 %1748, 32752
  %1750 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1749)  ; LegacyF16ToF32(value)
  %1751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1752 = extractvalue %dx.types.CBufRet.f32 %1751, 3
  %1753 = fmul fast float %1752, 1.000000e+03
  %1754 = fmul fast float %287, %1753
  %1755 = call float @dx.op.unary.f32(i32 22, float %1754)  ; Frc(value)
  %1756 = fadd fast float %1755, %277
  %1757 = fmul fast float %288, %1753
  %1758 = call float @dx.op.unary.f32(i32 22, float %1757)  ; Frc(value)
  %1759 = fadd fast float %1758, %279
  %1760 = fmul fast float %1725, %1753
  %1761 = call float @dx.op.unary.f32(i32 22, float %1760)  ; Frc(value)
  %1762 = fmul fast float %1761, 0x401921FB60000000
  %1763 = fadd fast float %1762, %1744
  %1764 = call float @dx.op.unary.f32(i32 13, float %1763)  ; Sin(value)
  %1765 = call float @dx.op.unary.f32(i32 12, float %1763)  ; Cos(value)
  %1766 = fsub fast float -0.000000e+00, %1764
  %1767 = fadd fast float %51, -5.000000e-01
  %1768 = fadd fast float %52, -5.000000e-01
  %1769 = fmul fast float %1736, %1767
  %1770 = fmul fast float %1738, %1768
  %1771 = fadd fast float %1769, 5.000000e-01
  %1772 = fadd fast float %1770, 5.000000e-01
  %1773 = fmul fast float %1747, %1771
  %1774 = fmul fast float %1750, %1772
  %1775 = fmul fast float %1765, %1773
  %1776 = call float @dx.op.tertiary.f32(i32 46, float %1766, float %1774, float %1775)  ; FMad(a,b,c)
  %1777 = fmul fast float %1764, %1773
  %1778 = call float @dx.op.tertiary.f32(i32 46, float %1765, float %1774, float %1777)  ; FMad(a,b,c)
  %1779 = fadd fast float %1756, %1776
  %1780 = fadd fast float %1759, %1778
  %1781 = icmp ugt i32 %1730, 1
  %1782 = icmp ugt i32 %1728, 33554431
  %1783 = or i1 %1782, %1781
  br i1 %1783, label %1784, label %1809

; <label>:1784                                    ; preds = %1719
  %1785 = add i32 %39, 260
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = lshr i32 %1787, 16
  %1789 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1788)  ; LegacyF16ToF32(value)
  %1790 = fmul fast float %1752, %1789
  %1791 = call float @dx.op.unary.f32(i32 22, float %1790)  ; Frc(value)
  %1792 = mul nuw nsw i32 %1730, %1731
  %1793 = uitofp i32 %1792 to float
  %1794 = fmul fast float %1791, %1793
  %1795 = call float @dx.op.unary.f32(i32 27, float %1794)  ; Round_ni(value)
  %1796 = fptoui float %1795 to i32
  %1797 = urem i32 %1796, %1730
  %1798 = udiv i32 %1796, %1731
  %1799 = call float @dx.op.unary.f32(i32 22, float %1779)  ; Frc(value)
  %1800 = call float @dx.op.unary.f32(i32 22, float %1780)  ; Frc(value)
  %1801 = uitofp i32 %1797 to float
  %1802 = uitofp i32 %1798 to float
  %1803 = fadd fast float %1799, %1801
  %1804 = fadd fast float %1800, %1802
  %1805 = uitofp i32 %1730 to float
  %1806 = uitofp i32 %1731 to float
  %1807 = fdiv fast float %1803, %1805
  %1808 = fdiv fast float %1804, %1806
  br label %1809

; <label>:1809                                    ; preds = %1784, %1719
  %1810 = phi float [ %1807, %1784 ], [ %1779, %1719 ]
  %1811 = phi float [ %1808, %1784 ], [ %1780, %1719 ]
  %1812 = and i32 %1713, 16777216
  %1813 = icmp eq i32 %1812, 0
  br i1 %1813, label %1923, label %1814

; <label>:1814                                    ; preds = %1809
  %1815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1816 = extractvalue %dx.types.CBufRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.CBufRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.CBufRet.f32 %1815, 2
  %1819 = fadd fast float %1816, %118
  %1820 = fadd fast float %1817, %119
  %1821 = fadd fast float %1818, %120
  %1822 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1823 = extractvalue %dx.types.CBufRet.f32 %1822, 0
  %1824 = call float @dx.op.unary.f32(i32 7, float %1823)  ; Saturate(value)
  %1825 = icmp eq i32 %40, 65535
  br i1 %1825, label %1920, label %1826

; <label>:1826                                    ; preds = %1814
  %1827 = lshr i32 %40, 1
  %1828 = shl i32 %1827, 2
  %1829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1828, i32 undef)  ; BufferLoad(srv,index,wot)
  %1830 = extractvalue %dx.types.ResRet.i32 %1829, 0
  %1831 = and i32 %40, 1
  %1832 = icmp ne i32 %1831, 0
  %1833 = lshr i32 %1830, 16
  %1834 = and i32 %1830, 65535
  %1835 = select i1 %1832, i32 %1833, i32 %1834
  %1836 = icmp eq i32 %1835, 65535
  br i1 %1836, label %1916, label %1837

; <label>:1837                                    ; preds = %1826
  %1838 = mul nuw nsw i32 %1835, 40
  %1839 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1838, i32 undef)  ; BufferLoad(srv,index,wot)
  %1840 = extractvalue %dx.types.ResRet.f32 %1839, 0
  %1841 = extractvalue %dx.types.ResRet.f32 %1839, 1
  %1842 = extractvalue %dx.types.ResRet.f32 %1839, 2
  %1843 = add nuw nsw i32 %1838, 12
  %1844 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1843, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.f32 %1844, 0
  %1846 = extractvalue %dx.types.ResRet.f32 %1844, 1
  %1847 = extractvalue %dx.types.ResRet.f32 %1844, 2
  %1848 = add nuw nsw i32 %1838, 24
  %1849 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1848, i32 undef)  ; BufferLoad(srv,index,wot)
  %1850 = extractvalue %dx.types.ResRet.f32 %1849, 0
  %1851 = extractvalue %dx.types.ResRet.f32 %1849, 1
  %1852 = extractvalue %dx.types.ResRet.f32 %1849, 2
  %1853 = add nuw nsw i32 %1838, 36
  %1854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.f32 %1854, 0
  %1856 = fsub fast float %1819, %1840
  %1857 = fsub fast float %1820, %1841
  %1858 = fsub fast float %1821, %1842
  %1859 = fmul fast float %1855, %1856
  %1860 = fmul fast float %1855, %1857
  %1861 = fmul fast float %1855, %1858
  %1862 = call float @dx.op.unary.f32(i32 27, float %1859)  ; Round_ni(value)
  %1863 = call float @dx.op.unary.f32(i32 27, float %1860)  ; Round_ni(value)
  %1864 = call float @dx.op.unary.f32(i32 27, float %1861)  ; Round_ni(value)
  %1865 = fadd fast float %1862, 5.000000e-01
  %1866 = fadd fast float %1863, 5.000000e-01
  %1867 = fadd fast float %1864, 5.000000e-01
  %1868 = fmul fast float %1865, %1845
  %1869 = fmul fast float %1866, %1846
  %1870 = fmul fast float %1867, %1847
  %1871 = shl i32 %40, 2
  %1872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.i32 %1872, 0
  %1874 = add i32 %1873, 0
  %1875 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1874, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1876 = call float @dx.op.unary.f32(i32 22, float %1868)  ; Frc(value)
  %1877 = call float @dx.op.unary.f32(i32 22, float %1869)  ; Frc(value)
  %1878 = call float @dx.op.unary.f32(i32 22, float %1870)  ; Frc(value)
  %1879 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1875, %dx.types.Handle %36, float %1876, float %1877, float %1878, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1880 = extractvalue %dx.types.ResRet.f32 %1879, 0
  %1881 = extractvalue %dx.types.ResRet.f32 %1879, 1
  %1882 = extractvalue %dx.types.ResRet.f32 %1879, 2
  %1883 = fmul fast float %1880, 1.023000e+03
  %1884 = fmul fast float %1881, 1.023000e+03
  %1885 = fmul fast float %1882, 1.023000e+03
  %1886 = fadd fast float %1883, 5.000000e-01
  %1887 = fadd fast float %1884, 5.000000e-01
  %1888 = fadd fast float %1885, 5.000000e-01
  %1889 = call float @dx.op.unary.f32(i32 27, float %1886)  ; Round_ni(value)
  %1890 = call float @dx.op.unary.f32(i32 27, float %1887)  ; Round_ni(value)
  %1891 = call float @dx.op.unary.f32(i32 27, float %1888)  ; Round_ni(value)
  %1892 = fsub fast float %1859, %1862
  %1893 = fsub fast float %1860, %1863
  %1894 = fsub fast float %1861, %1864
  %1895 = fmul fast float %1892, 7.500000e-01
  %1896 = fmul fast float %1893, 7.500000e-01
  %1897 = fmul fast float %1894, 7.500000e-01
  %1898 = fadd fast float %1862, 1.250000e-01
  %1899 = fadd fast float %1898, %1895
  %1900 = fadd fast float %1899, %1889
  %1901 = fadd fast float %1863, 1.250000e-01
  %1902 = fadd fast float %1901, %1896
  %1903 = fadd fast float %1902, %1890
  %1904 = fadd fast float %1864, 1.250000e-01
  %1905 = fadd fast float %1904, %1897
  %1906 = fadd fast float %1905, %1891
  %1907 = fmul fast float %1900, %1850
  %1908 = fmul fast float %1903, %1851
  %1909 = fmul fast float %1906, %1852
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = add i32 %1911, 0
  %1913 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1912, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1913, %dx.types.Handle %34, float %1907, float %1908, float %1909, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  br label %1916

; <label>:1916                                    ; preds = %1837, %1826
  %1917 = phi float [ %1915, %1837 ], [ -1.000000e+00, %1826 ]
  %1918 = fadd fast float %1917, %1824
  %1919 = call float @dx.op.unary.f32(i32 7, float %1918)  ; Saturate(value)
  br label %1920

; <label>:1920                                    ; preds = %1916, %1814
  %1921 = phi float [ %1919, %1916 ], [ %1824, %1814 ]
  %1922 = fmul fast float %1921, %386
  br label %1923

; <label>:1923                                    ; preds = %1920, %1809
  %1924 = phi float [ %1922, %1920 ], [ %386, %1809 ]
  %1925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1926 = extractvalue %dx.types.ResRet.i32 %1925, 0
  %1927 = and i32 %1926, 256
  %1928 = icmp eq i32 %1927, 0
  br i1 %1928, label %1975, label %1929

; <label>:1929                                    ; preds = %1923
  %1930 = add i32 %39, 432
  %1931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1932 = extractvalue %dx.types.ResRet.i32 %1931, 0
  %1933 = add i32 %1932, 0
  %1934 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1933, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1935 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1934, %dx.types.Handle %60, float %1810, float %1811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1936 = extractvalue %dx.types.ResRet.f32 %1935, 0
  %1937 = add i32 %39, 132
  %1938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1939 = extractvalue %dx.types.ResRet.i32 %1938, 0
  %1940 = shl i32 %1939, 4
  %1941 = and i32 %1940, 32752
  %1942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1941)  ; LegacyF16ToF32(value)
  %1943 = lshr i32 %1939, 7
  %1944 = and i32 %1943, 32752
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = fsub fast float 1.000000e+00, %1924
  %1947 = call float @dx.op.binary.f32(i32 35, float %1946, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1948 = bitcast float %1924 to i32
  %1949 = sitofp i32 %1948 to float
  %1950 = fadd fast float %1949, 0xC1CFBF8940000000
  %1951 = fmul fast float %1945, %1950
  %1952 = fadd fast float %1951, 0x41CFBF8940000000
  %1953 = fptosi float %1952 to i32
  %1954 = bitcast i32 %1953 to float
  %1955 = bitcast float %1947 to i32
  %1956 = sitofp i32 %1955 to float
  %1957 = fadd fast float %1956, 0xC1CFBF8940000000
  %1958 = fmul fast float %1957, %1945
  %1959 = fadd fast float %1958, 0x41CFBF8940000000
  %1960 = fptosi float %1959 to i32
  %1961 = bitcast i32 %1960 to float
  %1962 = fmul fast float %1954, %1942
  %1963 = fmul fast float %1961, %1942
  %1964 = fsub fast float %1947, %1962
  %1965 = fadd fast float %1963, %1947
  %1966 = call float @dx.op.unary.f32(i32 7, float %1964)  ; Saturate(value)
  %1967 = call float @dx.op.unary.f32(i32 7, float %1965)  ; Saturate(value)
  %1968 = fsub fast float %1936, %1966
  %1969 = fsub fast float %1967, %1966
  %1970 = bitcast float %1969 to i32
  %1971 = sub nsw i32 2129859010, %1970
  %1972 = bitcast i32 %1971 to float
  %1973 = fmul fast float %1972, %1968
  %1974 = call float @dx.op.unary.f32(i32 7, float %1973)  ; Saturate(value)
  br label %1975

; <label>:1975                                    ; preds = %1929, %1923
  %1976 = phi float [ %1974, %1929 ], [ %1924, %1923 ]
  %1977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.i32 %1977, 0
  %1979 = and i32 %1978, 128
  %1980 = icmp eq i32 %1979, 0
  br i1 %1980, label %1997, label %1981

; <label>:1981                                    ; preds = %1975
  %1982 = add i32 %39, 416
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = add i32 %1984, 0
  %1986 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1985, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1987 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1986, %dx.types.Handle %60, float %1810, float %1811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1988 = extractvalue %dx.types.ResRet.f32 %1987, 0
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = and i32 %1990, 524288
  %1992 = icmp ne i32 %1991, 0
  %1993 = fcmp fast ogt float %1988, 0x3FE0101020000000
  %1994 = select i1 %1993, float 1.000000e+00, float 0.000000e+00
  %1995 = select i1 %1992, float %1994, float %1988
  %1996 = fmul fast float %1995, %1976
  br label %1997

; <label>:1997                                    ; preds = %1981, %1975
  %1998 = phi float [ %1996, %1981 ], [ %1976, %1975 ]
  %1999 = fcmp fast ult float %1998, 0x3F70101020000000
  br i1 %1999, label %2542, label %2000

; <label>:2000                                    ; preds = %1997
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = and i32 %2002, 16
  %2004 = icmp eq i32 %2003, 0
  br i1 %2004, label %2203, label %2005

; <label>:2005                                    ; preds = %2000
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = add i32 %39, 368
  %2009 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.i32 %2009, 0
  %2011 = add i32 %2010, 0
  %2012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2011, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2013 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2012, %dx.types.Handle %59, float %1810, float %1811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2014 = extractvalue %dx.types.ResRet.f32 %2013, 0
  %2015 = extractvalue %dx.types.ResRet.f32 %2013, 1
  %2016 = extractvalue %dx.types.ResRet.f32 %2013, 2
  %2017 = extractvalue %dx.types.ResRet.f32 %2013, 3
  %2018 = and i32 %2007, 255
  %2019 = uitofp i32 %2018 to float
  %2020 = lshr i32 %2007, 8
  %2021 = and i32 %2020, 255
  %2022 = uitofp i32 %2021 to float
  %2023 = fmul fast float %2017, %2019
  %2024 = fadd fast float %2023, %2022
  %2025 = fmul fast float %2024, 0x3F70101000000000
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = and i32 %2027, 512
  %2029 = icmp eq i32 %2028, 0
  br i1 %2029, label %2038, label %2030

; <label>:2030                                    ; preds = %2005
  %2031 = add i32 %39, 448
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = add i32 %2033, 0
  %2035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2035, %dx.types.Handle %60, float %1810, float %1811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 0
  br label %2038

; <label>:2038                                    ; preds = %2030, %2005
  %2039 = phi float [ %2037, %2030 ], [ 1.000000e+00, %2005 ]
  %2040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2041 = extractvalue %dx.types.ResRet.i32 %2040, 0
  %2042 = and i32 %2041, 33554432
  %2043 = icmp eq i32 %2042, 0
  br i1 %2043, label %2150, label %2044

; <label>:2044                                    ; preds = %2038
  %2045 = add i32 %39, 256
  %2046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2045, i32 undef)  ; BufferLoad(srv,index,wot)
  %2047 = extractvalue %dx.types.ResRet.i32 %2046, 0
  %2048 = and i32 %2047, 65535
  %2049 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2048)  ; LegacyF16ToF32(value)
  %2050 = lshr i32 %2047, 16
  %2051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2050)  ; LegacyF16ToF32(value)
  %2052 = add i32 %39, 260
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = and i32 %2054, 65535
  %2056 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2055)  ; LegacyF16ToF32(value)
  %2057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %259, i32 undef)  ; BufferLoad(srv,index,wot)
  %2058 = extractvalue %dx.types.ResRet.i32 %2057, 0
  %2059 = lshr i32 %2058, 24
  %2060 = uitofp i32 %2059 to float
  %2061 = fmul fast float %2060, 0x3F70101020000000
  %2062 = and i32 %2058, 255
  %2063 = uitofp i32 %2062 to float
  %2064 = fmul fast float %2063, 0x3F70101020000000
  %2065 = lshr i32 %2058, 8
  %2066 = and i32 %2065, 255
  %2067 = uitofp i32 %2066 to float
  %2068 = fmul fast float %2067, 0x3F70101020000000
  %2069 = lshr i32 %2058, 16
  %2070 = and i32 %2069, 255
  %2071 = uitofp i32 %2070 to float
  %2072 = fmul fast float %2071, 0x3F70101020000000
  %2073 = add i32 %39, 252
  %2074 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2073, i32 undef)  ; BufferLoad(srv,index,wot)
  %2075 = extractvalue %dx.types.ResRet.i32 %2074, 0
  %2076 = lshr i32 %2075, 24
  %2077 = uitofp i32 %2076 to float
  %2078 = fmul fast float %2077, 0x3F70101020000000
  %2079 = and i32 %2075, 255
  %2080 = uitofp i32 %2079 to float
  %2081 = fmul fast float %2080, 0x3F70101020000000
  %2082 = lshr i32 %2075, 8
  %2083 = and i32 %2082, 255
  %2084 = uitofp i32 %2083 to float
  %2085 = fmul fast float %2084, 0x3F70101020000000
  %2086 = lshr i32 %2075, 16
  %2087 = and i32 %2086, 255
  %2088 = uitofp i32 %2087 to float
  %2089 = fmul fast float %2088, 0x3F70101020000000
  %2090 = bitcast float %2014 to i32
  %2091 = ashr i32 %2090, 1
  %2092 = sub nsw i32 1597463174, %2091
  %2093 = bitcast i32 %2092 to float
  %2094 = fmul fast float %2014, 5.000000e-01
  %2095 = fmul fast float %2093, %2093
  %2096 = fmul fast float %2095, %2094
  %2097 = fsub fast float 1.500000e+00, %2096
  %2098 = fmul fast float %2093, %2014
  %2099 = fmul fast float %2098, %2097
  %2100 = bitcast float %2015 to i32
  %2101 = ashr i32 %2100, 1
  %2102 = sub nsw i32 1597463174, %2101
  %2103 = bitcast i32 %2102 to float
  %2104 = fmul fast float %2015, 5.000000e-01
  %2105 = fmul fast float %2103, %2103
  %2106 = fmul fast float %2105, %2104
  %2107 = fsub fast float 1.500000e+00, %2106
  %2108 = fmul fast float %2103, %2015
  %2109 = fmul fast float %2108, %2107
  %2110 = bitcast float %2016 to i32
  %2111 = ashr i32 %2110, 1
  %2112 = sub nsw i32 1597463174, %2111
  %2113 = bitcast i32 %2112 to float
  %2114 = fmul fast float %2016, 5.000000e-01
  %2115 = fmul fast float %2113, %2113
  %2116 = fmul fast float %2115, %2114
  %2117 = fsub fast float 1.500000e+00, %2116
  %2118 = fmul fast float %2113, %2016
  %2119 = fmul fast float %2118, %2117
  %2120 = fsub fast float %2099, %2081
  %2121 = fsub fast float %2109, %2085
  %2122 = fsub fast float %2119, %2089
  %2123 = fmul fast float %2120, %2049
  %2124 = fmul fast float %2121, %2051
  %2125 = fmul fast float %2122, %2056
  %2126 = fadd fast float %2123, %2064
  %2127 = fadd fast float %2124, %2068
  %2128 = fadd fast float %2125, %2072
  %2129 = call float @dx.op.unary.f32(i32 7, float %2126)  ; Saturate(value)
  %2130 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  %2131 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2132 = fmul fast float %2129, %2129
  %2133 = fmul fast float %2130, %2130
  %2134 = fmul fast float %2131, %2131
  %2135 = fsub fast float %2132, %2014
  %2136 = fsub fast float %2133, %2015
  %2137 = fsub fast float %2134, %2016
  %2138 = fmul fast float %2135, %2039
  %2139 = fmul fast float %2136, %2039
  %2140 = fmul fast float %2137, %2039
  %2141 = fadd fast float %2138, %2014
  %2142 = fadd fast float %2139, %2015
  %2143 = fadd fast float %2140, %2016
  %2144 = fadd fast float %2061, %2025
  %2145 = fsub fast float %2144, %2078
  %2146 = call float @dx.op.unary.f32(i32 7, float %2145)  ; Saturate(value)
  %2147 = fsub fast float %2146, %2025
  %2148 = fmul fast float %2147, %2039
  %2149 = fadd fast float %2148, %2025
  br label %2203

; <label>:2150                                    ; preds = %2038
  %2151 = and i32 %2041, 134217728
  %2152 = icmp eq i32 %2151, 0
  br i1 %2152, label %2187, label %2153

; <label>:2153                                    ; preds = %2150
  %2154 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %2155 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %2156 = call float @dx.op.unary.f32(i32 24, float %272)  ; Sqrt(value)
  %2157 = fadd fast float %2154, -5.000000e-01
  %2158 = fadd fast float %2155, -5.000000e-01
  %2159 = fadd fast float %2156, -5.000000e-01
  %2160 = fmul fast float %2157, %2039
  %2161 = fmul fast float %2158, %2039
  %2162 = fmul fast float %2159, %2039
  %2163 = fadd fast float %2160, 5.000000e-01
  %2164 = fadd fast float %2161, 5.000000e-01
  %2165 = fadd fast float %2162, 5.000000e-01
  %2166 = call float @dx.op.unary.f32(i32 24, float %2014)  ; Sqrt(value)
  %2167 = call float @dx.op.unary.f32(i32 24, float %2015)  ; Sqrt(value)
  %2168 = call float @dx.op.unary.f32(i32 24, float %2016)  ; Sqrt(value)
  %2169 = fmul fast float %2163, 2.000000e+00
  %2170 = fsub fast float 1.000000e+00, %2169
  %2171 = fmul fast float %2170, %2166
  %2172 = fadd fast float %2171, %2169
  %2173 = fmul fast float %2172, %2166
  %2174 = fmul fast float %2164, 2.000000e+00
  %2175 = fsub fast float 1.000000e+00, %2174
  %2176 = fmul fast float %2175, %2167
  %2177 = fadd fast float %2176, %2174
  %2178 = fmul fast float %2177, %2167
  %2179 = fmul fast float %2165, 2.000000e+00
  %2180 = fsub fast float 1.000000e+00, %2179
  %2181 = fmul fast float %2180, %2168
  %2182 = fadd fast float %2181, %2179
  %2183 = fmul fast float %2182, %2168
  %2184 = fmul fast float %2173, %2173
  %2185 = fmul fast float %2178, %2178
  %2186 = fmul fast float %2183, %2183
  br label %2203

; <label>:2187                                    ; preds = %2150
  %2188 = fmul fast float %264, %264
  %2189 = fmul fast float %268, %268
  %2190 = fmul fast float %272, %272
  %2191 = fadd fast float %2188, -1.000000e+00
  %2192 = fadd fast float %2189, -1.000000e+00
  %2193 = fadd fast float %2190, -1.000000e+00
  %2194 = fmul fast float %2039, %2191
  %2195 = fmul fast float %2039, %2192
  %2196 = fmul fast float %2039, %2193
  %2197 = fadd fast float %2194, 1.000000e+00
  %2198 = fadd fast float %2195, 1.000000e+00
  %2199 = fadd fast float %2196, 1.000000e+00
  %2200 = fmul fast float %2197, %2014
  %2201 = fmul fast float %2198, %2015
  %2202 = fmul fast float %2199, %2016
  br label %2203

; <label>:2203                                    ; preds = %2187, %2153, %2044, %2000
  %2204 = phi float [ %2149, %2044 ], [ %2025, %2153 ], [ %2025, %2187 ], [ 0x3FA23C0BE0000000, %2000 ]
  %2205 = phi float [ %2141, %2044 ], [ %2184, %2153 ], [ %2200, %2187 ], [ 1.000000e+00, %2000 ]
  %2206 = phi float [ %2142, %2044 ], [ %2185, %2153 ], [ %2201, %2187 ], [ 1.000000e+00, %2000 ]
  %2207 = phi float [ %2143, %2044 ], [ %2186, %2153 ], [ %2202, %2187 ], [ 1.000000e+00, %2000 ]
  %2208 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2209 = extractvalue %dx.types.CBufRet.i32 %2208, 1
  %2210 = and i32 %2209, 1
  %2211 = icmp ne i32 %2210, 0
  %2212 = add i32 %39, 356
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2212, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = and i32 %2214, 32
  %2216 = icmp ne i32 %2215, 0
  %2217 = and i1 %2211, %2216
  %2218 = select i1 %2217, float 1.000000e+00, float %2205
  %2219 = select i1 %2217, float 0x3FD3333340000000, float %2206
  %2220 = select i1 %2217, float 0x3FD3333340000000, float %2207
  %2221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2222 = extractvalue %dx.types.ResRet.i32 %2221, 0
  %2223 = and i32 %2222, 32
  %2224 = icmp eq i32 %2223, 0
  br i1 %2224, label %2297, label %2225

; <label>:2225                                    ; preds = %2203
  %2226 = add i32 %39, 124
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2226, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = add i32 %39, 384
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = add i32 %2231, 0
  %2233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2232, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2233, %dx.types.Handle %59, float %1810, float %1811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2235 = extractvalue %dx.types.ResRet.f32 %2234, 0
  %2236 = extractvalue %dx.types.ResRet.f32 %2234, 1
  %2237 = extractvalue %dx.types.ResRet.f32 %2234, 2
  %2238 = extractvalue %dx.types.ResRet.f32 %2234, 3
  %2239 = and i32 %2228, 255
  %2240 = uitofp i32 %2239 to float
  %2241 = lshr i32 %2228, 8
  %2242 = and i32 %2241, 255
  %2243 = uitofp i32 %2242 to float
  %2244 = lshr i32 %2228, 16
  %2245 = and i32 %2244, 255
  %2246 = uitofp i32 %2245 to float
  %2247 = fmul fast float %2246, 0x3F70101000000000
  %2248 = fmul fast float %2235, %2240
  %2249 = fadd fast float %2248, %2243
  %2250 = fmul fast float %2249, 0x3F70101000000000
  %2251 = fadd fast float %2236, -5.000000e-01
  %2252 = fadd fast float %2238, -5.000000e-01
  %2253 = fmul fast float %2251, %2247
  %2254 = fmul fast float %2252, %2247
  %2255 = fadd fast float %2253, 5.000000e-01
  %2256 = fadd fast float %2254, 5.000000e-01
  %2257 = fmul fast float %2255, 2.000000e+00
  %2258 = fadd fast float %2257, -1.000000e+00
  %2259 = fmul fast float %2256, 2.000000e+00
  %2260 = fadd fast float %2259, -1.000000e+00
  %2261 = fadd fast float %2258, %2260
  %2262 = fmul fast float %2261, 5.000000e-01
  %2263 = fsub fast float %2258, %2260
  %2264 = fmul fast float %2263, 5.000000e-01
  %2265 = call float @dx.op.unary.f32(i32 6, float %2262)  ; FAbs(value)
  %2266 = fsub fast float 1.000000e+00, %2265
  %2267 = call float @dx.op.unary.f32(i32 6, float %2264)  ; FAbs(value)
  %2268 = fsub fast float %2266, %2267
  %2269 = call float @dx.op.dot3.f32(i32 55, float %2262, float %2264, float %2268, float %2262, float %2264, float %2268)  ; Dot3(ax,ay,az,bx,by,bz)
  %2270 = call float @dx.op.unary.f32(i32 25, float %2269)  ; Rsqrt(value)
  %2271 = fmul fast float %2262, %2270
  %2272 = fmul fast float %2264, %2270
  %2273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2274 = extractvalue %dx.types.ResRet.i32 %2273, 0
  %2275 = and i32 %2274, 67108864
  %2276 = icmp eq i32 %2275, 0
  br i1 %2276, label %2293, label %2277

; <label>:2277                                    ; preds = %2225
  %2278 = add i32 %39, 312
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2278, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = and i32 %2280, 65535
  %2282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2281)  ; LegacyF16ToF32(value)
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = and i32 %2284, 65535
  %2286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2285)  ; LegacyF16ToF32(value)
  %2287 = lshr i32 %2280, 16
  %2288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2287)  ; LegacyF16ToF32(value)
  %2289 = fsub fast float %2250, %2288
  %2290 = fmul fast float %2289, %2282
  %2291 = fadd fast float %2290, %2286
  %2292 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  br label %2293

; <label>:2293                                    ; preds = %2277, %2225
  %2294 = phi float [ %2292, %2277 ], [ %2250, %2225 ]
  %2295 = call float @dx.op.dot2.f32(i32 54, float %2271, float %2272, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %2296 = call float @dx.op.dot2.f32(i32 54, float %2271, float %2272, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %2297

; <label>:2297                                    ; preds = %2293, %2203
  %2298 = phi float [ %2294, %2293 ], [ 0x3FD6666660000000, %2203 ]
  %2299 = phi float [ %2295, %2293 ], [ 0.000000e+00, %2203 ]
  %2300 = phi float [ %2296, %2293 ], [ 0.000000e+00, %2203 ]
  %2301 = phi float [ %2237, %2293 ], [ 1.000000e+00, %2203 ]
  %2302 = add i32 %39, 192
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = lshr i32 %2304, 22
  %2306 = shl nuw nsw i32 %2305, 5
  %2307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2306)  ; LegacyF16ToF32(value)
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 64
  %2311 = icmp eq i32 %2310, 0
  br i1 %2311, label %2345, label %2312

; <label>:2312                                    ; preds = %2297
  %2313 = add i32 %39, 400
  %2314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2313, i32 undef)  ; BufferLoad(srv,index,wot)
  %2315 = extractvalue %dx.types.ResRet.i32 %2314, 0
  %2316 = add i32 %2315, 0
  %2317 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2316, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2319 = extractvalue %dx.types.ResRet.i32 %2318, 0
  %2320 = and i32 %2319, 131072
  %2321 = icmp eq i32 %2320, 0
  %2322 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2317, %dx.types.Handle %59, float %1810, float %1811, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2323 = extractvalue %dx.types.ResRet.f32 %2322, 0
  %2324 = extractvalue %dx.types.ResRet.f32 %2322, 1
  %2325 = extractvalue %dx.types.ResRet.f32 %2322, 2
  %2326 = fmul fast float %2323, %252
  %2327 = fmul fast float %2324, %255
  %2328 = fmul fast float %2325, %258
  br i1 %2321, label %2335, label %2329

; <label>:2329                                    ; preds = %2312
  %2330 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2331 = extractvalue %dx.types.CBufRet.f32 %2330, 0
  %2332 = fmul fast float %2331, %2326
  %2333 = fmul fast float %2331, %2327
  %2334 = fmul fast float %2331, %2328
  br label %2335

; <label>:2335                                    ; preds = %2329, %2312
  %2336 = phi float [ %2332, %2329 ], [ %2326, %2312 ]
  %2337 = phi float [ %2333, %2329 ], [ %2327, %2312 ]
  %2338 = phi float [ %2334, %2329 ], [ %2328, %2312 ]
  %2339 = fmul fast float %2336, %2307
  %2340 = select i1 %162, float %2339, float %2336
  %2341 = call float @dx.op.dot3.f32(i32 55, float %2340, float %2337, float %2338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2342 = select i1 %162, float 0.000000e+00, float %2336
  %2343 = select i1 %162, float %2341, float %2337
  %2344 = select i1 %162, float 0.000000e+00, float %2338
  br label %2345

; <label>:2345                                    ; preds = %2335, %2297
  %2346 = phi float [ %2342, %2335 ], [ 0.000000e+00, %2297 ]
  %2347 = phi float [ %2343, %2335 ], [ 0.000000e+00, %2297 ]
  %2348 = phi float [ %2344, %2335 ], [ 0.000000e+00, %2297 ]
  %2349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %1711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2350 = extractvalue %dx.types.ResRet.i32 %2349, 0
  %2351 = add i32 %39, 128
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2351, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 255
  %2355 = uitofp i32 %2354 to float
  %2356 = lshr i32 %2353, 8
  %2357 = and i32 %2356, 255
  %2358 = uitofp i32 %2357 to float
  %2359 = call float @dx.op.dot3.f32(i32 55, float %2218, float %2219, float %2220, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2360 = fmul fast float %2358, %2359
  %2361 = fadd fast float %2360, %2355
  %2362 = fmul fast float %2361, 0x3F70101020000000
  %2363 = call float @dx.op.unary.f32(i32 7, float %2362)  ; Saturate(value)
  br i1 %1710, label %2364, label %2372

; <label>:2364                                    ; preds = %2345
  %2365 = fsub fast float 1.000000e+00, %1998
  %2366 = fmul fast float %2365, %1699
  %2367 = fmul fast float %2365, %1700
  %2368 = fmul fast float %2365, %1701
  %2369 = fmul fast float %2365, %1702
  %2370 = fmul fast float %2365, %1703
  %2371 = fmul fast float %2365, %1704
  br label %2372

; <label>:2372                                    ; preds = %2364, %2345
  %2373 = phi float [ %2366, %2364 ], [ %1699, %2345 ]
  %2374 = phi float [ %2367, %2364 ], [ %1700, %2345 ]
  %2375 = phi float [ %2368, %2364 ], [ %1701, %2345 ]
  %2376 = phi float [ %2369, %2364 ], [ %1702, %2345 ]
  %2377 = phi float [ %2370, %2364 ], [ %1703, %2345 ]
  %2378 = phi float [ %2371, %2364 ], [ %1704, %2345 ]
  %2379 = and i32 %2350, 3
  %2380 = icmp eq i32 %2379, 3
  br i1 %2380, label %2459, label %2381

; <label>:2381                                    ; preds = %2372
  %2382 = and i32 %2350, 16
  %2383 = icmp ne i32 %2382, 0
  %2384 = select i1 %2383, float %1998, float 0.000000e+00
  %2385 = icmp eq i32 %2379, 0
  br i1 %2385, label %2386, label %2414

; <label>:2386                                    ; preds = %2381
  %2387 = and i32 %2350, 64
  %2388 = icmp ne i32 %2387, 0
  %2389 = select i1 %2388, float %1998, float 0.000000e+00
  %2390 = fsub fast float %2218, %2373
  %2391 = fsub fast float %2219, %2374
  %2392 = fsub fast float %2220, %2375
  %2393 = fmul fast float %2384, %2390
  %2394 = fmul fast float %2384, %2391
  %2395 = fmul fast float %2384, %2392
  %2396 = fadd fast float %2393, %2373
  %2397 = fadd fast float %2394, %2374
  %2398 = fadd fast float %2395, %2375
  %2399 = fsub fast float %2204, %1705
  %2400 = fmul fast float %2384, %2399
  %2401 = fadd fast float %2400, %1705
  %2402 = fsub fast float %2346, %2376
  %2403 = fsub fast float %2347, %2377
  %2404 = fsub fast float %2348, %2378
  %2405 = fmul fast float %2389, %2402
  %2406 = fmul fast float %2389, %2403
  %2407 = fmul fast float %2389, %2404
  %2408 = fadd fast float %2405, %2376
  %2409 = fadd fast float %2406, %2377
  %2410 = fadd fast float %2407, %2378
  %2411 = fsub fast float %2363, %1708
  %2412 = fmul fast float %2384, %2411
  %2413 = fadd fast float %2412, %1708
  br label %2459

; <label>:2414                                    ; preds = %2381
  %2415 = icmp eq i32 %2379, 1
  br i1 %2415, label %2416, label %2429

; <label>:2416                                    ; preds = %2414
  %2417 = fadd fast float %2218, -1.000000e+00
  %2418 = fadd fast float %2219, -1.000000e+00
  %2419 = fadd fast float %2220, -1.000000e+00
  %2420 = fmul fast float %2384, %2417
  %2421 = fmul fast float %2384, %2418
  %2422 = fmul fast float %2384, %2419
  %2423 = fadd fast float %2420, 1.000000e+00
  %2424 = fadd fast float %2421, 1.000000e+00
  %2425 = fadd fast float %2422, 1.000000e+00
  %2426 = fmul fast float %2423, %2373
  %2427 = fmul fast float %2424, %2374
  %2428 = fmul fast float %2425, %2375
  br label %2459

; <label>:2429                                    ; preds = %2414
  %2430 = icmp eq i32 %2379, 2
  br i1 %2430, label %2431, label %2459

; <label>:2431                                    ; preds = %2429
  %2432 = call float @dx.op.unary.f32(i32 24, float %2218)  ; Sqrt(value)
  %2433 = call float @dx.op.unary.f32(i32 24, float %2219)  ; Sqrt(value)
  %2434 = call float @dx.op.unary.f32(i32 24, float %2220)  ; Sqrt(value)
  %2435 = fadd fast float %2432, -5.000000e-01
  %2436 = fadd fast float %2433, -5.000000e-01
  %2437 = fadd fast float %2434, -5.000000e-01
  %2438 = fmul fast float %2435, %2384
  %2439 = fmul fast float %2436, %2384
  %2440 = fmul fast float %2437, %2384
  %2441 = fadd fast float %2438, 5.000000e-01
  %2442 = fadd fast float %2439, 5.000000e-01
  %2443 = fadd fast float %2440, 5.000000e-01
  %2444 = fmul fast float %2441, 2.000000e+00
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = fmul fast float %2445, %2373
  %2447 = fadd fast float %2446, %2444
  %2448 = fmul fast float %2447, %2373
  %2449 = fmul fast float %2442, 2.000000e+00
  %2450 = fsub fast float 1.000000e+00, %2449
  %2451 = fmul fast float %2450, %2374
  %2452 = fadd fast float %2451, %2449
  %2453 = fmul fast float %2452, %2374
  %2454 = fmul fast float %2443, 2.000000e+00
  %2455 = fsub fast float 1.000000e+00, %2454
  %2456 = fmul fast float %2455, %2375
  %2457 = fadd fast float %2456, %2454
  %2458 = fmul fast float %2457, %2375
  br label %2459

; <label>:2459                                    ; preds = %2431, %2429, %2416, %2386, %2372
  %2460 = phi float [ %2373, %2372 ], [ %2448, %2431 ], [ %2373, %2429 ], [ %2426, %2416 ], [ %2396, %2386 ]
  %2461 = phi float [ %2374, %2372 ], [ %2453, %2431 ], [ %2374, %2429 ], [ %2427, %2416 ], [ %2397, %2386 ]
  %2462 = phi float [ %2375, %2372 ], [ %2458, %2431 ], [ %2375, %2429 ], [ %2428, %2416 ], [ %2398, %2386 ]
  %2463 = phi float [ %2376, %2372 ], [ %2376, %2431 ], [ %2376, %2429 ], [ %2376, %2416 ], [ %2408, %2386 ]
  %2464 = phi float [ %2377, %2372 ], [ %2377, %2431 ], [ %2377, %2429 ], [ %2377, %2416 ], [ %2409, %2386 ]
  %2465 = phi float [ %2378, %2372 ], [ %2378, %2431 ], [ %2378, %2429 ], [ %2378, %2416 ], [ %2410, %2386 ]
  %2466 = phi float [ %1705, %2372 ], [ %1705, %2431 ], [ %1705, %2429 ], [ %1705, %2416 ], [ %2401, %2386 ]
  %2467 = phi float [ %1708, %2372 ], [ %1708, %2431 ], [ %1708, %2429 ], [ %1708, %2416 ], [ %2413, %2386 ]
  %2468 = and i32 %2350, 12
  %2469 = icmp eq i32 %2468, 12
  br i1 %2469, label %2542, label %2470

; <label>:2470                                    ; preds = %2459
  %2471 = and i32 %2350, 2097184
  %2472 = icmp eq i32 %2471, 2097184
  %2473 = select i1 %2472, float %1998, float 0.000000e+00
  %2474 = and i32 %2350, 4194336
  %2475 = icmp eq i32 %2474, 4194336
  %2476 = select i1 %2475, float %1998, float 0.000000e+00
  %2477 = and i32 %2350, 8388640
  %2478 = icmp eq i32 %2477, 8388640
  %2479 = select i1 %2478, float %1998, float 0.000000e+00
  %2480 = icmp eq i32 %2468, 0
  br i1 %2480, label %2481, label %2494

; <label>:2481                                    ; preds = %2470
  %2482 = fsub fast float %2299, %1697
  %2483 = fsub fast float %2300, %1698
  %2484 = fmul fast float %2473, %2482
  %2485 = fmul fast float %2473, %2483
  %2486 = fadd fast float %2484, %1697
  %2487 = fadd fast float %2485, %1698
  %2488 = fsub fast float %2301, %1707
  %2489 = fmul fast float %2476, %2488
  %2490 = fadd fast float %2489, %1707
  %2491 = fsub fast float %2298, %1706
  %2492 = fmul fast float %2479, %2491
  %2493 = fadd fast float %2492, %1706
  br label %2542

; <label>:2494                                    ; preds = %2470
  %2495 = icmp eq i32 %2468, 4
  br i1 %2495, label %2496, label %2528

; <label>:2496                                    ; preds = %2494
  %2497 = fmul fast float %2473, %2299
  %2498 = fmul fast float %2473, %2300
  %2499 = fadd fast float %2497, %1697
  %2500 = fadd fast float %2498, %1698
  %2501 = call float @dx.op.binary.f32(i32 36, float %1707, float %2301)  ; FMin(a,b)
  %2502 = fsub fast float %2501, %1707
  %2503 = fmul fast float %2502, %2476
  %2504 = fadd fast float %2503, %1707
  %2505 = fadd fast float %2298, %1706
  %2506 = fmul fast float %2505, 0x3FF337FAE0000000
  %2507 = fmul fast float %1706, %1706
  %2508 = fmul fast float %2298, %2298
  %2509 = fadd fast float %2508, %2507
  %2510 = fmul fast float %2509, 0x3FE5152B00000000
  %2511 = fmul fast float %1706, 0xBFCC1F85E0000000
  %2512 = fmul fast float %2511, %2298
  %2513 = fadd fast float %2512, 0xBFE1363700000000
  %2514 = fadd fast float %2513, %2506
  %2515 = fsub fast float %2514, %2510
  %2516 = fmul fast float %2505, 0x3FBA6F0D00000000
  %2517 = fmul fast float %2509, 0x3FD0432880000000
  %2518 = fmul fast float %1706, 0xBFEF110800000000
  %2519 = fmul fast float %2518, %2298
  %2520 = fadd fast float %2519, 1.000000e+00
  %2521 = fsub fast float %2520, %2516
  %2522 = fadd fast float %2521, %2517
  %2523 = fdiv fast float %2515, %2522
  %2524 = call float @dx.op.unary.f32(i32 7, float %2523)  ; Saturate(value)
  %2525 = fsub fast float %2524, %1706
  %2526 = fmul fast float %2525, %2479
  %2527 = fadd fast float %2526, %1706
  br label %2542

; <label>:2528                                    ; preds = %2494
  %2529 = icmp eq i32 %2468, 8
  br i1 %2529, label %2530, label %2542

; <label>:2530                                    ; preds = %2528
  %2531 = fmul fast float %2473, %2299
  %2532 = fmul fast float %2473, %2300
  %2533 = fadd fast float %2531, %1697
  %2534 = fadd fast float %2532, %1698
  %2535 = call float @dx.op.binary.f32(i32 36, float %1707, float %2301)  ; FMin(a,b)
  %2536 = fsub fast float %2535, %1707
  %2537 = fmul fast float %2536, %2476
  %2538 = fadd fast float %2537, %1707
  %2539 = fsub fast float %2298, %1706
  %2540 = fmul fast float %2479, %2539
  %2541 = fadd fast float %2540, %1706
  br label %2542

; <label>:2542                                    ; preds = %2530, %2528, %2496, %2481, %2459, %1997, %1709, %1696
  %2543 = phi float [ %1697, %2459 ], [ %1697, %1997 ], [ %1697, %1696 ], [ %2533, %2530 ], [ %1697, %2528 ], [ %2499, %2496 ], [ %2486, %2481 ], [ %1697, %1709 ]
  %2544 = phi float [ %1698, %2459 ], [ %1698, %1997 ], [ %1698, %1696 ], [ %2534, %2530 ], [ %1698, %2528 ], [ %2500, %2496 ], [ %2487, %2481 ], [ %1698, %1709 ]
  %2545 = phi float [ %2460, %2459 ], [ %1699, %1997 ], [ %1699, %1696 ], [ %2460, %2530 ], [ %2460, %2528 ], [ %2460, %2496 ], [ %2460, %2481 ], [ %1699, %1709 ]
  %2546 = phi float [ %2461, %2459 ], [ %1700, %1997 ], [ %1700, %1696 ], [ %2461, %2530 ], [ %2461, %2528 ], [ %2461, %2496 ], [ %2461, %2481 ], [ %1700, %1709 ]
  %2547 = phi float [ %2462, %2459 ], [ %1701, %1997 ], [ %1701, %1696 ], [ %2462, %2530 ], [ %2462, %2528 ], [ %2462, %2496 ], [ %2462, %2481 ], [ %1701, %1709 ]
  %2548 = phi float [ %2463, %2459 ], [ %1702, %1997 ], [ %1702, %1696 ], [ %2463, %2530 ], [ %2463, %2528 ], [ %2463, %2496 ], [ %2463, %2481 ], [ %1702, %1709 ]
  %2549 = phi float [ %2464, %2459 ], [ %1703, %1997 ], [ %1703, %1696 ], [ %2464, %2530 ], [ %2464, %2528 ], [ %2464, %2496 ], [ %2464, %2481 ], [ %1703, %1709 ]
  %2550 = phi float [ %2465, %2459 ], [ %1704, %1997 ], [ %1704, %1696 ], [ %2465, %2530 ], [ %2465, %2528 ], [ %2465, %2496 ], [ %2465, %2481 ], [ %1704, %1709 ]
  %2551 = phi float [ %2466, %2459 ], [ %1705, %1997 ], [ %1705, %1696 ], [ %2466, %2530 ], [ %2466, %2528 ], [ %2466, %2496 ], [ %2466, %2481 ], [ %1705, %1709 ]
  %2552 = phi float [ %1706, %2459 ], [ %1706, %1997 ], [ %1706, %1696 ], [ %2541, %2530 ], [ %1706, %2528 ], [ %2527, %2496 ], [ %2493, %2481 ], [ %1706, %1709 ]
  %2553 = phi float [ %1707, %2459 ], [ %1707, %1997 ], [ %1707, %1696 ], [ %2538, %2530 ], [ %1707, %2528 ], [ %2504, %2496 ], [ %2490, %2481 ], [ %1707, %1709 ]
  %2554 = phi float [ %2467, %2459 ], [ %1708, %1997 ], [ %1708, %1696 ], [ %2467, %2530 ], [ %2467, %2528 ], [ %2467, %2496 ], [ %2467, %2481 ], [ %1708, %1709 ]
  br i1 %339, label %3388, label %2555

; <label>:2555                                    ; preds = %2542
  %2556 = icmp ult i32 %390, 4
  %2557 = add i32 %39, 72
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = add i32 %39, 76
  %2561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2560, i32 undef)  ; BufferLoad(srv,index,wot)
  %2562 = extractvalue %dx.types.ResRet.i32 %2561, 0
  %2563 = or i32 %2562, %2559
  %2564 = icmp eq i32 %2563, 0
  br i1 %2564, label %3388, label %2565

; <label>:2565                                    ; preds = %2555
  %2566 = add i32 %39, 332
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2566, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = lshr i32 %2568, 16
  %2570 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2569)  ; LegacyF16ToF32(value)
  %2571 = fmul fast float %2570, 0x3F50624DE0000000
  %2572 = add i32 %39, 136
  %2573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2574 = extractvalue %dx.types.ResRet.i32 %2573, 0
  %2575 = lshr i32 %2574, 16
  %2576 = and i32 %2575, 255
  %2577 = lshr i32 %2574, 24
  %2578 = add i32 %39, 340
  %2579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2578, i32 undef)  ; BufferLoad(srv,index,wot)
  %2580 = extractvalue %dx.types.ResRet.i32 %2579, 0
  %2581 = and i32 %2580, 65535
  %2582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2581)  ; LegacyF16ToF32(value)
  %2583 = lshr i32 %2580, 16
  %2584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2583)  ; LegacyF16ToF32(value)
  %2585 = add i32 %39, 80
  %2586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2585, i32 undef)  ; BufferLoad(srv,index,wot)
  %2587 = extractvalue %dx.types.ResRet.i32 %2586, 0
  %2588 = lshr i32 %2587, 22
  %2589 = shl nuw nsw i32 %2588, 5
  %2590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2589)  ; LegacyF16ToF32(value)
  %2591 = shl i32 %2587, 4
  %2592 = and i32 %2591, 32752
  %2593 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2592)  ; LegacyF16ToF32(value)
  %2594 = lshr i32 %2587, 7
  %2595 = and i32 %2594, 32752
  %2596 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2595)  ; LegacyF16ToF32(value)
  %2597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2598 = extractvalue %dx.types.CBufRet.f32 %2597, 3
  %2599 = fmul fast float %2598, 1.000000e+03
  %2600 = fmul fast float %329, %2599
  %2601 = call float @dx.op.unary.f32(i32 22, float %2600)  ; Frc(value)
  %2602 = fadd fast float %2601, %319
  %2603 = fmul fast float %330, %2599
  %2604 = call float @dx.op.unary.f32(i32 22, float %2603)  ; Frc(value)
  %2605 = fadd fast float %2604, %321
  %2606 = fmul fast float %2571, %2599
  %2607 = call float @dx.op.unary.f32(i32 22, float %2606)  ; Frc(value)
  %2608 = fmul fast float %2607, 0x401921FB60000000
  %2609 = fadd fast float %2608, %2590
  %2610 = call float @dx.op.unary.f32(i32 13, float %2609)  ; Sin(value)
  %2611 = call float @dx.op.unary.f32(i32 12, float %2609)  ; Cos(value)
  %2612 = fsub fast float -0.000000e+00, %2610
  %2613 = fadd fast float %51, -5.000000e-01
  %2614 = fadd fast float %52, -5.000000e-01
  %2615 = fmul fast float %2582, %2613
  %2616 = fmul fast float %2584, %2614
  %2617 = fadd fast float %2615, 5.000000e-01
  %2618 = fadd fast float %2616, 5.000000e-01
  %2619 = fmul fast float %2593, %2617
  %2620 = fmul fast float %2596, %2618
  %2621 = fmul fast float %2611, %2619
  %2622 = call float @dx.op.tertiary.f32(i32 46, float %2612, float %2620, float %2621)  ; FMad(a,b,c)
  %2623 = fmul fast float %2610, %2619
  %2624 = call float @dx.op.tertiary.f32(i32 46, float %2611, float %2620, float %2623)  ; FMad(a,b,c)
  %2625 = fadd fast float %2602, %2622
  %2626 = fadd fast float %2605, %2624
  %2627 = icmp ugt i32 %2576, 1
  %2628 = icmp ugt i32 %2574, 33554431
  %2629 = or i1 %2628, %2627
  br i1 %2629, label %2630, label %2655

; <label>:2630                                    ; preds = %2565
  %2631 = add i32 %39, 276
  %2632 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2631, i32 undef)  ; BufferLoad(srv,index,wot)
  %2633 = extractvalue %dx.types.ResRet.i32 %2632, 0
  %2634 = lshr i32 %2633, 16
  %2635 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2634)  ; LegacyF16ToF32(value)
  %2636 = fmul fast float %2598, %2635
  %2637 = call float @dx.op.unary.f32(i32 22, float %2636)  ; Frc(value)
  %2638 = mul nuw nsw i32 %2576, %2577
  %2639 = uitofp i32 %2638 to float
  %2640 = fmul fast float %2637, %2639
  %2641 = call float @dx.op.unary.f32(i32 27, float %2640)  ; Round_ni(value)
  %2642 = fptoui float %2641 to i32
  %2643 = urem i32 %2642, %2576
  %2644 = udiv i32 %2642, %2577
  %2645 = call float @dx.op.unary.f32(i32 22, float %2625)  ; Frc(value)
  %2646 = call float @dx.op.unary.f32(i32 22, float %2626)  ; Frc(value)
  %2647 = uitofp i32 %2643 to float
  %2648 = uitofp i32 %2644 to float
  %2649 = fadd fast float %2645, %2647
  %2650 = fadd fast float %2646, %2648
  %2651 = uitofp i32 %2576 to float
  %2652 = uitofp i32 %2577 to float
  %2653 = fdiv fast float %2649, %2651
  %2654 = fdiv fast float %2650, %2652
  br label %2655

; <label>:2655                                    ; preds = %2630, %2565
  %2656 = phi float [ %2653, %2630 ], [ %2625, %2565 ]
  %2657 = phi float [ %2654, %2630 ], [ %2626, %2565 ]
  %2658 = and i32 %2559, 16777216
  %2659 = icmp eq i32 %2658, 0
  br i1 %2659, label %2769, label %2660

; <label>:2660                                    ; preds = %2655
  %2661 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2662 = extractvalue %dx.types.CBufRet.f32 %2661, 0
  %2663 = extractvalue %dx.types.CBufRet.f32 %2661, 1
  %2664 = extractvalue %dx.types.CBufRet.f32 %2661, 2
  %2665 = fadd fast float %2662, %118
  %2666 = fadd fast float %2663, %119
  %2667 = fadd fast float %2664, %120
  %2668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2669 = extractvalue %dx.types.CBufRet.f32 %2668, 0
  %2670 = call float @dx.op.unary.f32(i32 7, float %2669)  ; Saturate(value)
  %2671 = icmp eq i32 %40, 65535
  br i1 %2671, label %2766, label %2672

; <label>:2672                                    ; preds = %2660
  %2673 = lshr i32 %40, 1
  %2674 = shl i32 %2673, 2
  %2675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2674, i32 undef)  ; BufferLoad(srv,index,wot)
  %2676 = extractvalue %dx.types.ResRet.i32 %2675, 0
  %2677 = and i32 %40, 1
  %2678 = icmp ne i32 %2677, 0
  %2679 = lshr i32 %2676, 16
  %2680 = and i32 %2676, 65535
  %2681 = select i1 %2678, i32 %2679, i32 %2680
  %2682 = icmp eq i32 %2681, 65535
  br i1 %2682, label %2762, label %2683

; <label>:2683                                    ; preds = %2672
  %2684 = mul nuw nsw i32 %2681, 40
  %2685 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.f32 %2685, 0
  %2687 = extractvalue %dx.types.ResRet.f32 %2685, 1
  %2688 = extractvalue %dx.types.ResRet.f32 %2685, 2
  %2689 = add nuw nsw i32 %2684, 12
  %2690 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2689, i32 undef)  ; BufferLoad(srv,index,wot)
  %2691 = extractvalue %dx.types.ResRet.f32 %2690, 0
  %2692 = extractvalue %dx.types.ResRet.f32 %2690, 1
  %2693 = extractvalue %dx.types.ResRet.f32 %2690, 2
  %2694 = add nuw nsw i32 %2684, 24
  %2695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2694, i32 undef)  ; BufferLoad(srv,index,wot)
  %2696 = extractvalue %dx.types.ResRet.f32 %2695, 0
  %2697 = extractvalue %dx.types.ResRet.f32 %2695, 1
  %2698 = extractvalue %dx.types.ResRet.f32 %2695, 2
  %2699 = add nuw nsw i32 %2684, 36
  %2700 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2699, i32 undef)  ; BufferLoad(srv,index,wot)
  %2701 = extractvalue %dx.types.ResRet.f32 %2700, 0
  %2702 = fsub fast float %2665, %2686
  %2703 = fsub fast float %2666, %2687
  %2704 = fsub fast float %2667, %2688
  %2705 = fmul fast float %2701, %2702
  %2706 = fmul fast float %2701, %2703
  %2707 = fmul fast float %2701, %2704
  %2708 = call float @dx.op.unary.f32(i32 27, float %2705)  ; Round_ni(value)
  %2709 = call float @dx.op.unary.f32(i32 27, float %2706)  ; Round_ni(value)
  %2710 = call float @dx.op.unary.f32(i32 27, float %2707)  ; Round_ni(value)
  %2711 = fadd fast float %2708, 5.000000e-01
  %2712 = fadd fast float %2709, 5.000000e-01
  %2713 = fadd fast float %2710, 5.000000e-01
  %2714 = fmul fast float %2711, %2691
  %2715 = fmul fast float %2712, %2692
  %2716 = fmul fast float %2713, %2693
  %2717 = shl i32 %40, 2
  %2718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2717, i32 undef)  ; BufferLoad(srv,index,wot)
  %2719 = extractvalue %dx.types.ResRet.i32 %2718, 0
  %2720 = add i32 %2719, 0
  %2721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2720, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2722 = call float @dx.op.unary.f32(i32 22, float %2714)  ; Frc(value)
  %2723 = call float @dx.op.unary.f32(i32 22, float %2715)  ; Frc(value)
  %2724 = call float @dx.op.unary.f32(i32 22, float %2716)  ; Frc(value)
  %2725 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2721, %dx.types.Handle %36, float %2722, float %2723, float %2724, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2726 = extractvalue %dx.types.ResRet.f32 %2725, 0
  %2727 = extractvalue %dx.types.ResRet.f32 %2725, 1
  %2728 = extractvalue %dx.types.ResRet.f32 %2725, 2
  %2729 = fmul fast float %2726, 1.023000e+03
  %2730 = fmul fast float %2727, 1.023000e+03
  %2731 = fmul fast float %2728, 1.023000e+03
  %2732 = fadd fast float %2729, 5.000000e-01
  %2733 = fadd fast float %2730, 5.000000e-01
  %2734 = fadd fast float %2731, 5.000000e-01
  %2735 = call float @dx.op.unary.f32(i32 27, float %2732)  ; Round_ni(value)
  %2736 = call float @dx.op.unary.f32(i32 27, float %2733)  ; Round_ni(value)
  %2737 = call float @dx.op.unary.f32(i32 27, float %2734)  ; Round_ni(value)
  %2738 = fsub fast float %2705, %2708
  %2739 = fsub fast float %2706, %2709
  %2740 = fsub fast float %2707, %2710
  %2741 = fmul fast float %2738, 7.500000e-01
  %2742 = fmul fast float %2739, 7.500000e-01
  %2743 = fmul fast float %2740, 7.500000e-01
  %2744 = fadd fast float %2708, 1.250000e-01
  %2745 = fadd fast float %2744, %2741
  %2746 = fadd fast float %2745, %2735
  %2747 = fadd fast float %2709, 1.250000e-01
  %2748 = fadd fast float %2747, %2742
  %2749 = fadd fast float %2748, %2736
  %2750 = fadd fast float %2710, 1.250000e-01
  %2751 = fadd fast float %2750, %2743
  %2752 = fadd fast float %2751, %2737
  %2753 = fmul fast float %2746, %2696
  %2754 = fmul fast float %2749, %2697
  %2755 = fmul fast float %2752, %2698
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2717, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = add i32 %2757, 0
  %2759 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2758, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2760 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2759, %dx.types.Handle %34, float %2753, float %2754, float %2755, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2761 = extractvalue %dx.types.ResRet.f32 %2760, 0
  br label %2762

; <label>:2762                                    ; preds = %2683, %2672
  %2763 = phi float [ %2761, %2683 ], [ -1.000000e+00, %2672 ]
  %2764 = fadd fast float %2763, %2670
  %2765 = call float @dx.op.unary.f32(i32 7, float %2764)  ; Saturate(value)
  br label %2766

; <label>:2766                                    ; preds = %2762, %2660
  %2767 = phi float [ %2765, %2762 ], [ %2670, %2660 ]
  %2768 = fmul fast float %2767, %385
  br label %2769

; <label>:2769                                    ; preds = %2766, %2655
  %2770 = phi float [ %2768, %2766 ], [ %385, %2655 ]
  %2771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2772 = extractvalue %dx.types.ResRet.i32 %2771, 0
  %2773 = and i32 %2772, 256
  %2774 = icmp eq i32 %2773, 0
  br i1 %2774, label %2821, label %2775

; <label>:2775                                    ; preds = %2769
  %2776 = add i32 %39, 436
  %2777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2776, i32 undef)  ; BufferLoad(srv,index,wot)
  %2778 = extractvalue %dx.types.ResRet.i32 %2777, 0
  %2779 = add i32 %2778, 0
  %2780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2779, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2781 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2780, %dx.types.Handle %60, float %2656, float %2657, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2782 = extractvalue %dx.types.ResRet.f32 %2781, 0
  %2783 = add i32 %39, 148
  %2784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.i32 %2784, 0
  %2786 = shl i32 %2785, 4
  %2787 = and i32 %2786, 32752
  %2788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2787)  ; LegacyF16ToF32(value)
  %2789 = lshr i32 %2785, 7
  %2790 = and i32 %2789, 32752
  %2791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2790)  ; LegacyF16ToF32(value)
  %2792 = fsub fast float 1.000000e+00, %2770
  %2793 = call float @dx.op.binary.f32(i32 35, float %2792, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2794 = bitcast float %2770 to i32
  %2795 = sitofp i32 %2794 to float
  %2796 = fadd fast float %2795, 0xC1CFBF8940000000
  %2797 = fmul fast float %2791, %2796
  %2798 = fadd fast float %2797, 0x41CFBF8940000000
  %2799 = fptosi float %2798 to i32
  %2800 = bitcast i32 %2799 to float
  %2801 = bitcast float %2793 to i32
  %2802 = sitofp i32 %2801 to float
  %2803 = fadd fast float %2802, 0xC1CFBF8940000000
  %2804 = fmul fast float %2803, %2791
  %2805 = fadd fast float %2804, 0x41CFBF8940000000
  %2806 = fptosi float %2805 to i32
  %2807 = bitcast i32 %2806 to float
  %2808 = fmul fast float %2800, %2788
  %2809 = fmul fast float %2807, %2788
  %2810 = fsub fast float %2793, %2808
  %2811 = fadd fast float %2809, %2793
  %2812 = call float @dx.op.unary.f32(i32 7, float %2810)  ; Saturate(value)
  %2813 = call float @dx.op.unary.f32(i32 7, float %2811)  ; Saturate(value)
  %2814 = fsub fast float %2782, %2812
  %2815 = fsub fast float %2813, %2812
  %2816 = bitcast float %2815 to i32
  %2817 = sub nsw i32 2129859010, %2816
  %2818 = bitcast i32 %2817 to float
  %2819 = fmul fast float %2818, %2814
  %2820 = call float @dx.op.unary.f32(i32 7, float %2819)  ; Saturate(value)
  br label %2821

; <label>:2821                                    ; preds = %2775, %2769
  %2822 = phi float [ %2820, %2775 ], [ %2770, %2769 ]
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = and i32 %2824, 128
  %2826 = icmp eq i32 %2825, 0
  br i1 %2826, label %2843, label %2827

; <label>:2827                                    ; preds = %2821
  %2828 = add i32 %39, 420
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = add i32 %2830, 0
  %2832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2833 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2832, %dx.types.Handle %60, float %2656, float %2657, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 0
  %2835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.i32 %2835, 0
  %2837 = and i32 %2836, 524288
  %2838 = icmp ne i32 %2837, 0
  %2839 = fcmp fast ogt float %2834, 0x3FE0101020000000
  %2840 = select i1 %2839, float 1.000000e+00, float 0.000000e+00
  %2841 = select i1 %2838, float %2840, float %2834
  %2842 = fmul fast float %2841, %2822
  br label %2843

; <label>:2843                                    ; preds = %2827, %2821
  %2844 = phi float [ %2842, %2827 ], [ %2822, %2821 ]
  %2845 = fcmp fast ult float %2844, 0x3F70101020000000
  br i1 %2845, label %3388, label %2846

; <label>:2846                                    ; preds = %2843
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = and i32 %2848, 16
  %2850 = icmp eq i32 %2849, 0
  br i1 %2850, label %3049, label %2851

; <label>:2851                                    ; preds = %2846
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2572, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = add i32 %39, 372
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = add i32 %2856, 0
  %2858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2858, %dx.types.Handle %59, float %2656, float %2657, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2860 = extractvalue %dx.types.ResRet.f32 %2859, 0
  %2861 = extractvalue %dx.types.ResRet.f32 %2859, 1
  %2862 = extractvalue %dx.types.ResRet.f32 %2859, 2
  %2863 = extractvalue %dx.types.ResRet.f32 %2859, 3
  %2864 = and i32 %2853, 255
  %2865 = uitofp i32 %2864 to float
  %2866 = lshr i32 %2853, 8
  %2867 = and i32 %2866, 255
  %2868 = uitofp i32 %2867 to float
  %2869 = fmul fast float %2863, %2865
  %2870 = fadd fast float %2869, %2868
  %2871 = fmul fast float %2870, 0x3F70101000000000
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = and i32 %2873, 512
  %2875 = icmp eq i32 %2874, 0
  br i1 %2875, label %2884, label %2876

; <label>:2876                                    ; preds = %2851
  %2877 = add i32 %39, 452
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2877, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = add i32 %2879, 0
  %2881 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2880, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2882 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2881, %dx.types.Handle %60, float %2656, float %2657, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2883 = extractvalue %dx.types.ResRet.f32 %2882, 0
  br label %2884

; <label>:2884                                    ; preds = %2876, %2851
  %2885 = phi float [ %2883, %2876 ], [ 1.000000e+00, %2851 ]
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = and i32 %2887, 33554432
  %2889 = icmp eq i32 %2888, 0
  br i1 %2889, label %2996, label %2890

; <label>:2890                                    ; preds = %2884
  %2891 = add i32 %39, 272
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = and i32 %2893, 65535
  %2895 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2894)  ; LegacyF16ToF32(value)
  %2896 = lshr i32 %2893, 16
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = add i32 %39, 276
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = and i32 %2900, 65535
  %2902 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2901)  ; LegacyF16ToF32(value)
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = lshr i32 %2904, 24
  %2906 = uitofp i32 %2905 to float
  %2907 = fmul fast float %2906, 0x3F70101020000000
  %2908 = and i32 %2904, 255
  %2909 = uitofp i32 %2908 to float
  %2910 = fmul fast float %2909, 0x3F70101020000000
  %2911 = lshr i32 %2904, 8
  %2912 = and i32 %2911, 255
  %2913 = uitofp i32 %2912 to float
  %2914 = fmul fast float %2913, 0x3F70101020000000
  %2915 = lshr i32 %2904, 16
  %2916 = and i32 %2915, 255
  %2917 = uitofp i32 %2916 to float
  %2918 = fmul fast float %2917, 0x3F70101020000000
  %2919 = add i32 %39, 268
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = lshr i32 %2921, 24
  %2923 = uitofp i32 %2922 to float
  %2924 = fmul fast float %2923, 0x3F70101020000000
  %2925 = and i32 %2921, 255
  %2926 = uitofp i32 %2925 to float
  %2927 = fmul fast float %2926, 0x3F70101020000000
  %2928 = lshr i32 %2921, 8
  %2929 = and i32 %2928, 255
  %2930 = uitofp i32 %2929 to float
  %2931 = fmul fast float %2930, 0x3F70101020000000
  %2932 = lshr i32 %2921, 16
  %2933 = and i32 %2932, 255
  %2934 = uitofp i32 %2933 to float
  %2935 = fmul fast float %2934, 0x3F70101020000000
  %2936 = bitcast float %2860 to i32
  %2937 = ashr i32 %2936, 1
  %2938 = sub nsw i32 1597463174, %2937
  %2939 = bitcast i32 %2938 to float
  %2940 = fmul fast float %2860, 5.000000e-01
  %2941 = fmul fast float %2939, %2939
  %2942 = fmul fast float %2941, %2940
  %2943 = fsub fast float 1.500000e+00, %2942
  %2944 = fmul fast float %2939, %2860
  %2945 = fmul fast float %2944, %2943
  %2946 = bitcast float %2861 to i32
  %2947 = ashr i32 %2946, 1
  %2948 = sub nsw i32 1597463174, %2947
  %2949 = bitcast i32 %2948 to float
  %2950 = fmul fast float %2861, 5.000000e-01
  %2951 = fmul fast float %2949, %2949
  %2952 = fmul fast float %2951, %2950
  %2953 = fsub fast float 1.500000e+00, %2952
  %2954 = fmul fast float %2949, %2861
  %2955 = fmul fast float %2954, %2953
  %2956 = bitcast float %2862 to i32
  %2957 = ashr i32 %2956, 1
  %2958 = sub nsw i32 1597463174, %2957
  %2959 = bitcast i32 %2958 to float
  %2960 = fmul fast float %2862, 5.000000e-01
  %2961 = fmul fast float %2959, %2959
  %2962 = fmul fast float %2961, %2960
  %2963 = fsub fast float 1.500000e+00, %2962
  %2964 = fmul fast float %2959, %2862
  %2965 = fmul fast float %2964, %2963
  %2966 = fsub fast float %2945, %2927
  %2967 = fsub fast float %2955, %2931
  %2968 = fsub fast float %2965, %2935
  %2969 = fmul fast float %2966, %2895
  %2970 = fmul fast float %2967, %2897
  %2971 = fmul fast float %2968, %2902
  %2972 = fadd fast float %2969, %2910
  %2973 = fadd fast float %2970, %2914
  %2974 = fadd fast float %2971, %2918
  %2975 = call float @dx.op.unary.f32(i32 7, float %2972)  ; Saturate(value)
  %2976 = call float @dx.op.unary.f32(i32 7, float %2973)  ; Saturate(value)
  %2977 = call float @dx.op.unary.f32(i32 7, float %2974)  ; Saturate(value)
  %2978 = fmul fast float %2975, %2975
  %2979 = fmul fast float %2976, %2976
  %2980 = fmul fast float %2977, %2977
  %2981 = fsub fast float %2978, %2860
  %2982 = fsub fast float %2979, %2861
  %2983 = fsub fast float %2980, %2862
  %2984 = fmul fast float %2981, %2885
  %2985 = fmul fast float %2982, %2885
  %2986 = fmul fast float %2983, %2885
  %2987 = fadd fast float %2984, %2860
  %2988 = fadd fast float %2985, %2861
  %2989 = fadd fast float %2986, %2862
  %2990 = fadd fast float %2907, %2871
  %2991 = fsub fast float %2990, %2924
  %2992 = call float @dx.op.unary.f32(i32 7, float %2991)  ; Saturate(value)
  %2993 = fsub fast float %2992, %2871
  %2994 = fmul fast float %2993, %2885
  %2995 = fadd fast float %2994, %2871
  br label %3049

; <label>:2996                                    ; preds = %2884
  %2997 = and i32 %2887, 134217728
  %2998 = icmp eq i32 %2997, 0
  br i1 %2998, label %3033, label %2999

; <label>:2999                                    ; preds = %2996
  %3000 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %3001 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %3002 = call float @dx.op.unary.f32(i32 24, float %314)  ; Sqrt(value)
  %3003 = fadd fast float %3000, -5.000000e-01
  %3004 = fadd fast float %3001, -5.000000e-01
  %3005 = fadd fast float %3002, -5.000000e-01
  %3006 = fmul fast float %3003, %2885
  %3007 = fmul fast float %3004, %2885
  %3008 = fmul fast float %3005, %2885
  %3009 = fadd fast float %3006, 5.000000e-01
  %3010 = fadd fast float %3007, 5.000000e-01
  %3011 = fadd fast float %3008, 5.000000e-01
  %3012 = call float @dx.op.unary.f32(i32 24, float %2860)  ; Sqrt(value)
  %3013 = call float @dx.op.unary.f32(i32 24, float %2861)  ; Sqrt(value)
  %3014 = call float @dx.op.unary.f32(i32 24, float %2862)  ; Sqrt(value)
  %3015 = fmul fast float %3009, 2.000000e+00
  %3016 = fsub fast float 1.000000e+00, %3015
  %3017 = fmul fast float %3016, %3012
  %3018 = fadd fast float %3017, %3015
  %3019 = fmul fast float %3018, %3012
  %3020 = fmul fast float %3010, 2.000000e+00
  %3021 = fsub fast float 1.000000e+00, %3020
  %3022 = fmul fast float %3021, %3013
  %3023 = fadd fast float %3022, %3020
  %3024 = fmul fast float %3023, %3013
  %3025 = fmul fast float %3011, 2.000000e+00
  %3026 = fsub fast float 1.000000e+00, %3025
  %3027 = fmul fast float %3026, %3014
  %3028 = fadd fast float %3027, %3025
  %3029 = fmul fast float %3028, %3014
  %3030 = fmul fast float %3019, %3019
  %3031 = fmul fast float %3024, %3024
  %3032 = fmul fast float %3029, %3029
  br label %3049

; <label>:3033                                    ; preds = %2996
  %3034 = fmul fast float %306, %306
  %3035 = fmul fast float %310, %310
  %3036 = fmul fast float %314, %314
  %3037 = fadd fast float %3034, -1.000000e+00
  %3038 = fadd fast float %3035, -1.000000e+00
  %3039 = fadd fast float %3036, -1.000000e+00
  %3040 = fmul fast float %2885, %3037
  %3041 = fmul fast float %2885, %3038
  %3042 = fmul fast float %2885, %3039
  %3043 = fadd fast float %3040, 1.000000e+00
  %3044 = fadd fast float %3041, 1.000000e+00
  %3045 = fadd fast float %3042, 1.000000e+00
  %3046 = fmul fast float %3043, %2860
  %3047 = fmul fast float %3044, %2861
  %3048 = fmul fast float %3045, %2862
  br label %3049

; <label>:3049                                    ; preds = %3033, %2999, %2890, %2846
  %3050 = phi float [ %2995, %2890 ], [ %2871, %2999 ], [ %2871, %3033 ], [ 0x3FA23C0BE0000000, %2846 ]
  %3051 = phi float [ %2987, %2890 ], [ %3030, %2999 ], [ %3046, %3033 ], [ 1.000000e+00, %2846 ]
  %3052 = phi float [ %2988, %2890 ], [ %3031, %2999 ], [ %3047, %3033 ], [ 1.000000e+00, %2846 ]
  %3053 = phi float [ %2989, %2890 ], [ %3032, %2999 ], [ %3048, %3033 ], [ 1.000000e+00, %2846 ]
  %3054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3055 = extractvalue %dx.types.CBufRet.i32 %3054, 1
  %3056 = and i32 %3055, 1
  %3057 = icmp ne i32 %3056, 0
  %3058 = add i32 %39, 356
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3058, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = and i32 %3060, 32
  %3062 = icmp ne i32 %3061, 0
  %3063 = and i1 %3057, %3062
  %3064 = select i1 %3063, float 1.000000e+00, float %3051
  %3065 = select i1 %3063, float 0x3FD3333340000000, float %3052
  %3066 = select i1 %3063, float 0x3FD3333340000000, float %3053
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = and i32 %3068, 32
  %3070 = icmp eq i32 %3069, 0
  br i1 %3070, label %3143, label %3071

; <label>:3071                                    ; preds = %3049
  %3072 = add i32 %39, 140
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = add i32 %39, 388
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = add i32 %3077, 0
  %3079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3079, %dx.types.Handle %59, float %2656, float %2657, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3081 = extractvalue %dx.types.ResRet.f32 %3080, 0
  %3082 = extractvalue %dx.types.ResRet.f32 %3080, 1
  %3083 = extractvalue %dx.types.ResRet.f32 %3080, 2
  %3084 = extractvalue %dx.types.ResRet.f32 %3080, 3
  %3085 = and i32 %3074, 255
  %3086 = uitofp i32 %3085 to float
  %3087 = lshr i32 %3074, 8
  %3088 = and i32 %3087, 255
  %3089 = uitofp i32 %3088 to float
  %3090 = lshr i32 %3074, 16
  %3091 = and i32 %3090, 255
  %3092 = uitofp i32 %3091 to float
  %3093 = fmul fast float %3092, 0x3F70101000000000
  %3094 = fmul fast float %3081, %3086
  %3095 = fadd fast float %3094, %3089
  %3096 = fmul fast float %3095, 0x3F70101000000000
  %3097 = fadd fast float %3082, -5.000000e-01
  %3098 = fadd fast float %3084, -5.000000e-01
  %3099 = fmul fast float %3097, %3093
  %3100 = fmul fast float %3098, %3093
  %3101 = fadd fast float %3099, 5.000000e-01
  %3102 = fadd fast float %3100, 5.000000e-01
  %3103 = fmul fast float %3101, 2.000000e+00
  %3104 = fadd fast float %3103, -1.000000e+00
  %3105 = fmul fast float %3102, 2.000000e+00
  %3106 = fadd fast float %3105, -1.000000e+00
  %3107 = fadd fast float %3104, %3106
  %3108 = fmul fast float %3107, 5.000000e-01
  %3109 = fsub fast float %3104, %3106
  %3110 = fmul fast float %3109, 5.000000e-01
  %3111 = call float @dx.op.unary.f32(i32 6, float %3108)  ; FAbs(value)
  %3112 = fsub fast float 1.000000e+00, %3111
  %3113 = call float @dx.op.unary.f32(i32 6, float %3110)  ; FAbs(value)
  %3114 = fsub fast float %3112, %3113
  %3115 = call float @dx.op.dot3.f32(i32 55, float %3108, float %3110, float %3114, float %3108, float %3110, float %3114)  ; Dot3(ax,ay,az,bx,by,bz)
  %3116 = call float @dx.op.unary.f32(i32 25, float %3115)  ; Rsqrt(value)
  %3117 = fmul fast float %3108, %3116
  %3118 = fmul fast float %3110, %3116
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = and i32 %3120, 67108864
  %3122 = icmp eq i32 %3121, 0
  br i1 %3122, label %3139, label %3123

; <label>:3123                                    ; preds = %3071
  %3124 = add i32 %39, 328
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 65535
  %3128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3127)  ; LegacyF16ToF32(value)
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = and i32 %3130, 65535
  %3132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3131)  ; LegacyF16ToF32(value)
  %3133 = lshr i32 %3126, 16
  %3134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3133)  ; LegacyF16ToF32(value)
  %3135 = fsub fast float %3096, %3134
  %3136 = fmul fast float %3135, %3128
  %3137 = fadd fast float %3136, %3132
  %3138 = call float @dx.op.unary.f32(i32 7, float %3137)  ; Saturate(value)
  br label %3139

; <label>:3139                                    ; preds = %3123, %3071
  %3140 = phi float [ %3138, %3123 ], [ %3096, %3071 ]
  %3141 = call float @dx.op.dot2.f32(i32 54, float %3117, float %3118, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %3142 = call float @dx.op.dot2.f32(i32 54, float %3117, float %3118, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %3143

; <label>:3143                                    ; preds = %3139, %3049
  %3144 = phi float [ %3140, %3139 ], [ 0x3FD6666660000000, %3049 ]
  %3145 = phi float [ %3141, %3139 ], [ 0.000000e+00, %3049 ]
  %3146 = phi float [ %3142, %3139 ], [ 0.000000e+00, %3049 ]
  %3147 = phi float [ %3083, %3139 ], [ 1.000000e+00, %3049 ]
  %3148 = add i32 %39, 208
  %3149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3148, i32 undef)  ; BufferLoad(srv,index,wot)
  %3150 = extractvalue %dx.types.ResRet.i32 %3149, 0
  %3151 = lshr i32 %3150, 22
  %3152 = shl nuw nsw i32 %3151, 5
  %3153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3152)  ; LegacyF16ToF32(value)
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = and i32 %3155, 64
  %3157 = icmp eq i32 %3156, 0
  br i1 %3157, label %3191, label %3158

; <label>:3158                                    ; preds = %3143
  %3159 = add i32 %39, 404
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3159, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = add i32 %3161, 0
  %3163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = and i32 %3165, 131072
  %3167 = icmp eq i32 %3166, 0
  %3168 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3163, %dx.types.Handle %59, float %2656, float %2657, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3169 = extractvalue %dx.types.ResRet.f32 %3168, 0
  %3170 = extractvalue %dx.types.ResRet.f32 %3168, 1
  %3171 = extractvalue %dx.types.ResRet.f32 %3168, 2
  %3172 = fmul fast float %3169, %294
  %3173 = fmul fast float %3170, %297
  %3174 = fmul fast float %3171, %300
  br i1 %3167, label %3181, label %3175

; <label>:3175                                    ; preds = %3158
  %3176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3177 = extractvalue %dx.types.CBufRet.f32 %3176, 0
  %3178 = fmul fast float %3177, %3172
  %3179 = fmul fast float %3177, %3173
  %3180 = fmul fast float %3177, %3174
  br label %3181

; <label>:3181                                    ; preds = %3175, %3158
  %3182 = phi float [ %3178, %3175 ], [ %3172, %3158 ]
  %3183 = phi float [ %3179, %3175 ], [ %3173, %3158 ]
  %3184 = phi float [ %3180, %3175 ], [ %3174, %3158 ]
  %3185 = fmul fast float %3182, %3153
  %3186 = select i1 %162, float %3185, float %3182
  %3187 = call float @dx.op.dot3.f32(i32 55, float %3186, float %3183, float %3184, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3188 = select i1 %162, float 0.000000e+00, float %3182
  %3189 = select i1 %162, float %3187, float %3183
  %3190 = select i1 %162, float 0.000000e+00, float %3184
  br label %3191

; <label>:3191                                    ; preds = %3181, %3143
  %3192 = phi float [ %3188, %3181 ], [ 0.000000e+00, %3143 ]
  %3193 = phi float [ %3189, %3181 ], [ 0.000000e+00, %3143 ]
  %3194 = phi float [ %3190, %3181 ], [ 0.000000e+00, %3143 ]
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %2557, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = add i32 %39, 144
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 255
  %3201 = uitofp i32 %3200 to float
  %3202 = lshr i32 %3199, 8
  %3203 = and i32 %3202, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = call float @dx.op.dot3.f32(i32 55, float %3064, float %3065, float %3066, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3206 = fmul fast float %3204, %3205
  %3207 = fadd fast float %3206, %3201
  %3208 = fmul fast float %3207, 0x3F70101020000000
  %3209 = call float @dx.op.unary.f32(i32 7, float %3208)  ; Saturate(value)
  br i1 %2556, label %3210, label %3218

; <label>:3210                                    ; preds = %3191
  %3211 = fsub fast float 1.000000e+00, %2844
  %3212 = fmul fast float %3211, %2545
  %3213 = fmul fast float %3211, %2546
  %3214 = fmul fast float %3211, %2547
  %3215 = fmul fast float %3211, %2548
  %3216 = fmul fast float %3211, %2549
  %3217 = fmul fast float %3211, %2550
  br label %3218

; <label>:3218                                    ; preds = %3210, %3191
  %3219 = phi float [ %3212, %3210 ], [ %2545, %3191 ]
  %3220 = phi float [ %3213, %3210 ], [ %2546, %3191 ]
  %3221 = phi float [ %3214, %3210 ], [ %2547, %3191 ]
  %3222 = phi float [ %3215, %3210 ], [ %2548, %3191 ]
  %3223 = phi float [ %3216, %3210 ], [ %2549, %3191 ]
  %3224 = phi float [ %3217, %3210 ], [ %2550, %3191 ]
  %3225 = and i32 %3196, 3
  %3226 = icmp eq i32 %3225, 3
  br i1 %3226, label %3305, label %3227

; <label>:3227                                    ; preds = %3218
  %3228 = and i32 %3196, 16
  %3229 = icmp ne i32 %3228, 0
  %3230 = select i1 %3229, float %2844, float 0.000000e+00
  %3231 = icmp eq i32 %3225, 0
  br i1 %3231, label %3232, label %3260

; <label>:3232                                    ; preds = %3227
  %3233 = and i32 %3196, 64
  %3234 = icmp ne i32 %3233, 0
  %3235 = select i1 %3234, float %2844, float 0.000000e+00
  %3236 = fsub fast float %3064, %3219
  %3237 = fsub fast float %3065, %3220
  %3238 = fsub fast float %3066, %3221
  %3239 = fmul fast float %3230, %3236
  %3240 = fmul fast float %3230, %3237
  %3241 = fmul fast float %3230, %3238
  %3242 = fadd fast float %3239, %3219
  %3243 = fadd fast float %3240, %3220
  %3244 = fadd fast float %3241, %3221
  %3245 = fsub fast float %3050, %2551
  %3246 = fmul fast float %3230, %3245
  %3247 = fadd fast float %3246, %2551
  %3248 = fsub fast float %3192, %3222
  %3249 = fsub fast float %3193, %3223
  %3250 = fsub fast float %3194, %3224
  %3251 = fmul fast float %3235, %3248
  %3252 = fmul fast float %3235, %3249
  %3253 = fmul fast float %3235, %3250
  %3254 = fadd fast float %3251, %3222
  %3255 = fadd fast float %3252, %3223
  %3256 = fadd fast float %3253, %3224
  %3257 = fsub fast float %3209, %2554
  %3258 = fmul fast float %3230, %3257
  %3259 = fadd fast float %3258, %2554
  br label %3305

; <label>:3260                                    ; preds = %3227
  %3261 = icmp eq i32 %3225, 1
  br i1 %3261, label %3262, label %3275

; <label>:3262                                    ; preds = %3260
  %3263 = fadd fast float %3064, -1.000000e+00
  %3264 = fadd fast float %3065, -1.000000e+00
  %3265 = fadd fast float %3066, -1.000000e+00
  %3266 = fmul fast float %3230, %3263
  %3267 = fmul fast float %3230, %3264
  %3268 = fmul fast float %3230, %3265
  %3269 = fadd fast float %3266, 1.000000e+00
  %3270 = fadd fast float %3267, 1.000000e+00
  %3271 = fadd fast float %3268, 1.000000e+00
  %3272 = fmul fast float %3269, %3219
  %3273 = fmul fast float %3270, %3220
  %3274 = fmul fast float %3271, %3221
  br label %3305

; <label>:3275                                    ; preds = %3260
  %3276 = icmp eq i32 %3225, 2
  br i1 %3276, label %3277, label %3305

; <label>:3277                                    ; preds = %3275
  %3278 = call float @dx.op.unary.f32(i32 24, float %3064)  ; Sqrt(value)
  %3279 = call float @dx.op.unary.f32(i32 24, float %3065)  ; Sqrt(value)
  %3280 = call float @dx.op.unary.f32(i32 24, float %3066)  ; Sqrt(value)
  %3281 = fadd fast float %3278, -5.000000e-01
  %3282 = fadd fast float %3279, -5.000000e-01
  %3283 = fadd fast float %3280, -5.000000e-01
  %3284 = fmul fast float %3281, %3230
  %3285 = fmul fast float %3282, %3230
  %3286 = fmul fast float %3283, %3230
  %3287 = fadd fast float %3284, 5.000000e-01
  %3288 = fadd fast float %3285, 5.000000e-01
  %3289 = fadd fast float %3286, 5.000000e-01
  %3290 = fmul fast float %3287, 2.000000e+00
  %3291 = fsub fast float 1.000000e+00, %3290
  %3292 = fmul fast float %3291, %3219
  %3293 = fadd fast float %3292, %3290
  %3294 = fmul fast float %3293, %3219
  %3295 = fmul fast float %3288, 2.000000e+00
  %3296 = fsub fast float 1.000000e+00, %3295
  %3297 = fmul fast float %3296, %3220
  %3298 = fadd fast float %3297, %3295
  %3299 = fmul fast float %3298, %3220
  %3300 = fmul fast float %3289, 2.000000e+00
  %3301 = fsub fast float 1.000000e+00, %3300
  %3302 = fmul fast float %3301, %3221
  %3303 = fadd fast float %3302, %3300
  %3304 = fmul fast float %3303, %3221
  br label %3305

; <label>:3305                                    ; preds = %3277, %3275, %3262, %3232, %3218
  %3306 = phi float [ %3219, %3218 ], [ %3294, %3277 ], [ %3219, %3275 ], [ %3272, %3262 ], [ %3242, %3232 ]
  %3307 = phi float [ %3220, %3218 ], [ %3299, %3277 ], [ %3220, %3275 ], [ %3273, %3262 ], [ %3243, %3232 ]
  %3308 = phi float [ %3221, %3218 ], [ %3304, %3277 ], [ %3221, %3275 ], [ %3274, %3262 ], [ %3244, %3232 ]
  %3309 = phi float [ %3222, %3218 ], [ %3222, %3277 ], [ %3222, %3275 ], [ %3222, %3262 ], [ %3254, %3232 ]
  %3310 = phi float [ %3223, %3218 ], [ %3223, %3277 ], [ %3223, %3275 ], [ %3223, %3262 ], [ %3255, %3232 ]
  %3311 = phi float [ %3224, %3218 ], [ %3224, %3277 ], [ %3224, %3275 ], [ %3224, %3262 ], [ %3256, %3232 ]
  %3312 = phi float [ %2551, %3218 ], [ %2551, %3277 ], [ %2551, %3275 ], [ %2551, %3262 ], [ %3247, %3232 ]
  %3313 = phi float [ %2554, %3218 ], [ %2554, %3277 ], [ %2554, %3275 ], [ %2554, %3262 ], [ %3259, %3232 ]
  %3314 = and i32 %3196, 12
  %3315 = icmp eq i32 %3314, 12
  br i1 %3315, label %3388, label %3316

; <label>:3316                                    ; preds = %3305
  %3317 = and i32 %3196, 2097184
  %3318 = icmp eq i32 %3317, 2097184
  %3319 = select i1 %3318, float %2844, float 0.000000e+00
  %3320 = and i32 %3196, 4194336
  %3321 = icmp eq i32 %3320, 4194336
  %3322 = select i1 %3321, float %2844, float 0.000000e+00
  %3323 = and i32 %3196, 8388640
  %3324 = icmp eq i32 %3323, 8388640
  %3325 = select i1 %3324, float %2844, float 0.000000e+00
  %3326 = icmp eq i32 %3314, 0
  br i1 %3326, label %3327, label %3340

; <label>:3327                                    ; preds = %3316
  %3328 = fsub fast float %3145, %2543
  %3329 = fsub fast float %3146, %2544
  %3330 = fmul fast float %3319, %3328
  %3331 = fmul fast float %3319, %3329
  %3332 = fadd fast float %3330, %2543
  %3333 = fadd fast float %3331, %2544
  %3334 = fsub fast float %3147, %2553
  %3335 = fmul fast float %3322, %3334
  %3336 = fadd fast float %3335, %2553
  %3337 = fsub fast float %3144, %2552
  %3338 = fmul fast float %3325, %3337
  %3339 = fadd fast float %3338, %2552
  br label %3388

; <label>:3340                                    ; preds = %3316
  %3341 = icmp eq i32 %3314, 4
  br i1 %3341, label %3342, label %3374

; <label>:3342                                    ; preds = %3340
  %3343 = fmul fast float %3319, %3145
  %3344 = fmul fast float %3319, %3146
  %3345 = fadd fast float %3343, %2543
  %3346 = fadd fast float %3344, %2544
  %3347 = call float @dx.op.binary.f32(i32 36, float %2553, float %3147)  ; FMin(a,b)
  %3348 = fsub fast float %3347, %2553
  %3349 = fmul fast float %3348, %3322
  %3350 = fadd fast float %3349, %2553
  %3351 = fadd fast float %3144, %2552
  %3352 = fmul fast float %3351, 0x3FF337FAE0000000
  %3353 = fmul fast float %2552, %2552
  %3354 = fmul fast float %3144, %3144
  %3355 = fadd fast float %3354, %3353
  %3356 = fmul fast float %3355, 0x3FE5152B00000000
  %3357 = fmul fast float %2552, 0xBFCC1F85E0000000
  %3358 = fmul fast float %3357, %3144
  %3359 = fadd fast float %3358, 0xBFE1363700000000
  %3360 = fadd fast float %3359, %3352
  %3361 = fsub fast float %3360, %3356
  %3362 = fmul fast float %3351, 0x3FBA6F0D00000000
  %3363 = fmul fast float %3355, 0x3FD0432880000000
  %3364 = fmul fast float %2552, 0xBFEF110800000000
  %3365 = fmul fast float %3364, %3144
  %3366 = fadd fast float %3365, 1.000000e+00
  %3367 = fsub fast float %3366, %3362
  %3368 = fadd fast float %3367, %3363
  %3369 = fdiv fast float %3361, %3368
  %3370 = call float @dx.op.unary.f32(i32 7, float %3369)  ; Saturate(value)
  %3371 = fsub fast float %3370, %2552
  %3372 = fmul fast float %3371, %3325
  %3373 = fadd fast float %3372, %2552
  br label %3388

; <label>:3374                                    ; preds = %3340
  %3375 = icmp eq i32 %3314, 8
  br i1 %3375, label %3376, label %3388

; <label>:3376                                    ; preds = %3374
  %3377 = fmul fast float %3319, %3145
  %3378 = fmul fast float %3319, %3146
  %3379 = fadd fast float %3377, %2543
  %3380 = fadd fast float %3378, %2544
  %3381 = call float @dx.op.binary.f32(i32 36, float %2553, float %3147)  ; FMin(a,b)
  %3382 = fsub fast float %3381, %2553
  %3383 = fmul fast float %3382, %3322
  %3384 = fadd fast float %3383, %2553
  %3385 = fsub fast float %3144, %2552
  %3386 = fmul fast float %3325, %3385
  %3387 = fadd fast float %3386, %2552
  br label %3388

; <label>:3388                                    ; preds = %3376, %3374, %3342, %3327, %3305, %2843, %2555, %2542
  %3389 = phi float [ %2543, %3305 ], [ %2543, %2843 ], [ %2543, %2542 ], [ %2543, %2555 ], [ %3332, %3327 ], [ %3345, %3342 ], [ %2543, %3374 ], [ %3379, %3376 ]
  %3390 = phi float [ %2544, %3305 ], [ %2544, %2843 ], [ %2544, %2542 ], [ %2544, %2555 ], [ %3333, %3327 ], [ %3346, %3342 ], [ %2544, %3374 ], [ %3380, %3376 ]
  %3391 = phi float [ %3306, %3305 ], [ %2545, %2843 ], [ %2545, %2542 ], [ %2545, %2555 ], [ %3306, %3327 ], [ %3306, %3342 ], [ %3306, %3374 ], [ %3306, %3376 ]
  %3392 = phi float [ %3307, %3305 ], [ %2546, %2843 ], [ %2546, %2542 ], [ %2546, %2555 ], [ %3307, %3327 ], [ %3307, %3342 ], [ %3307, %3374 ], [ %3307, %3376 ]
  %3393 = phi float [ %3308, %3305 ], [ %2547, %2843 ], [ %2547, %2542 ], [ %2547, %2555 ], [ %3308, %3327 ], [ %3308, %3342 ], [ %3308, %3374 ], [ %3308, %3376 ]
  %3394 = phi float [ %3309, %3305 ], [ %2548, %2843 ], [ %2548, %2542 ], [ %2548, %2555 ], [ %3309, %3327 ], [ %3309, %3342 ], [ %3309, %3374 ], [ %3309, %3376 ]
  %3395 = phi float [ %3310, %3305 ], [ %2549, %2843 ], [ %2549, %2542 ], [ %2549, %2555 ], [ %3310, %3327 ], [ %3310, %3342 ], [ %3310, %3374 ], [ %3310, %3376 ]
  %3396 = phi float [ %3311, %3305 ], [ %2550, %2843 ], [ %2550, %2542 ], [ %2550, %2555 ], [ %3311, %3327 ], [ %3311, %3342 ], [ %3311, %3374 ], [ %3311, %3376 ]
  %3397 = phi float [ %3312, %3305 ], [ %2551, %2843 ], [ %2551, %2542 ], [ %2551, %2555 ], [ %3312, %3327 ], [ %3312, %3342 ], [ %3312, %3374 ], [ %3312, %3376 ]
  %3398 = phi float [ %2552, %3305 ], [ %2552, %2843 ], [ %2552, %2542 ], [ %2552, %2555 ], [ %3339, %3327 ], [ %3373, %3342 ], [ %2552, %3374 ], [ %3387, %3376 ]
  %3399 = phi float [ %2553, %3305 ], [ %2553, %2843 ], [ %2553, %2542 ], [ %2553, %2555 ], [ %3336, %3327 ], [ %3350, %3342 ], [ %2553, %3374 ], [ %3384, %3376 ]
  %3400 = phi float [ %3313, %3305 ], [ %2554, %2843 ], [ %2554, %2542 ], [ %2554, %2555 ], [ %3313, %3327 ], [ %3313, %3342 ], [ %3313, %3374 ], [ %3313, %3376 ]
  %3401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3402 = extractvalue %dx.types.CBufRet.f32 %3401, 0
  %3403 = call float @dx.op.dot2.f32(i32 54, float %3389, float %3390, float %3389, float %3390)  ; Dot2(ax,ay,bx,by)
  %3404 = fmul fast float %3403, 0x3FE3333340000000
  %3405 = fsub fast float 1.000000e+00, %3404
  %3406 = call float @dx.op.dot3.f32(i32 55, float %3389, float %3390, float %3405, float %3389, float %3390, float %3405)  ; Dot3(ax,ay,az,bx,by,bz)
  %3407 = call float @dx.op.unary.f32(i32 25, float %3406)  ; Rsqrt(value)
  %3408 = fmul fast float %3407, %3389
  %3409 = fmul fast float %3407, %3390
  %3410 = fmul fast float %3405, %3407
  %3411 = fmul fast float %3410, %70
  %3412 = fmul fast float %3410, %71
  %3413 = fmul fast float %3410, %72
  %3414 = fmul fast float %3408, %44
  %3415 = fmul fast float %3408, %45
  %3416 = fmul fast float %3408, %46
  %3417 = fadd fast float %3411, %3414
  %3418 = fadd fast float %3412, %3415
  %3419 = fadd fast float %3413, %3416
  %3420 = fmul fast float %3409, %82
  %3421 = fmul fast float %3409, %83
  %3422 = fmul fast float %3409, %84
  %3423 = fadd fast float %3417, %3420
  %3424 = fadd fast float %3418, %3421
  %3425 = fadd fast float %3419, %3422
  %3426 = call float @dx.op.dot3.f32(i32 55, float %3423, float %3424, float %3425, float %3423, float %3424, float %3425)  ; Dot3(ax,ay,az,bx,by,bz)
  %3427 = call float @dx.op.unary.f32(i32 25, float %3426)  ; Rsqrt(value)
  %3428 = fmul fast float %3423, %3427
  %3429 = fmul fast float %3424, %3427
  %3430 = fmul fast float %3425, %3427
  %3431 = fadd fast float %3397, 0xBFB99999A0000000
  %3432 = call float @dx.op.unary.f32(i32 7, float %3431)  ; Saturate(value)
  %3433 = fmul fast float %3432, 0x3FF1C71C80000000
  %3434 = call float @dx.op.binary.f32(i32 36, float %3397, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3435 = fsub fast float 1.000000e+00, %3433
  %3436 = call float @dx.op.unary.f32(i32 7, float %3435)  ; Saturate(value)
  %3437 = fmul fast float %3436, %3391
  %3438 = fmul fast float %3436, %3392
  %3439 = fmul fast float %3436, %3393
  %3440 = call float @dx.op.unary.f32(i32 7, float %3437)  ; Saturate(value)
  %3441 = call float @dx.op.unary.f32(i32 7, float %3438)  ; Saturate(value)
  %3442 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  %3443 = fmul fast float %3433, %3391
  %3444 = fmul fast float %3433, %3392
  %3445 = fmul fast float %3433, %3393
  %3446 = fadd fast float %3443, %3434
  %3447 = fadd fast float %3444, %3434
  %3448 = fadd fast float %3445, %3434
  %3449 = call float @dx.op.unary.f32(i32 7, float %3446)  ; Saturate(value)
  %3450 = call float @dx.op.unary.f32(i32 7, float %3447)  ; Saturate(value)
  %3451 = call float @dx.op.unary.f32(i32 7, float %3448)  ; Saturate(value)
  %3452 = call float @dx.op.unary.f32(i32 7, float %3398)  ; Saturate(value)
  %3453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3454 = extractvalue %dx.types.CBufRet.i32 %3453, 3
  %3455 = and i32 %3454, 8
  %3456 = icmp ne i32 %3455, 0
  %3457 = call float @dx.op.binary.f32(i32 35, float %3440, float %3391)  ; FMax(a,b)
  %3458 = call float @dx.op.binary.f32(i32 35, float %3441, float %3391)  ; FMax(a,b)
  %3459 = call float @dx.op.binary.f32(i32 35, float %3442, float %3391)  ; FMax(a,b)
  %3460 = call float @dx.op.dot3.f32(i32 55, float %3440, float %3441, float %3442, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3461 = select i1 %162, float %3391, float %3440
  %3462 = select i1 %162, float %3460, float %3441
  %3463 = select i1 %162, float 1.000000e+00, float %3442
  %3464 = select i1 %3456, float %3457, float %3461
  %3465 = select i1 %3456, float %3458, float %3462
  %3466 = select i1 %3456, float %3459, float %3463
  %3467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3468 = extractvalue %dx.types.CBufRet.f32 %3467, 0
  %3469 = extractvalue %dx.types.CBufRet.f32 %3467, 1
  %3470 = extractvalue %dx.types.CBufRet.f32 %3467, 2
  %3471 = fadd fast float %3468, %118
  %3472 = fadd fast float %3469, %119
  %3473 = fadd fast float %3470, %120
  %3474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.f32 %3474, 0
  %3476 = extractvalue %dx.types.CBufRet.f32 %3474, 1
  %3477 = fsub fast float %3471, %3475
  %3478 = fsub fast float %3472, %3476
  %3479 = fmul fast float %3477, %3477
  %3480 = fmul fast float %3478, %3478
  %3481 = fadd fast float %3479, %3480
  %3482 = call float @dx.op.unary.f32(i32 24, float %3481)  ; Sqrt(value)
  %3483 = extractvalue %dx.types.CBufRet.f32 %3474, 2
  %3484 = fcmp fast olt float %3482, %3483
  br i1 %3484, label %3485, label %3552

; <label>:3485                                    ; preds = %3388
  %3486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3487 = extractvalue %dx.types.CBufRet.f32 %3486, 0
  %3488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3489 = extractvalue %dx.types.CBufRet.f32 %3488, 0
  %3490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3491 = extractvalue %dx.types.CBufRet.f32 %3490, 0
  %3492 = extractvalue %dx.types.CBufRet.f32 %3486, 1
  %3493 = extractvalue %dx.types.CBufRet.f32 %3488, 1
  %3494 = extractvalue %dx.types.CBufRet.f32 %3490, 1
  %3495 = extractvalue %dx.types.CBufRet.f32 %3486, 3
  %3496 = extractvalue %dx.types.CBufRet.f32 %3488, 3
  %3497 = extractvalue %dx.types.CBufRet.f32 %3490, 3
  %3498 = fadd fast float %3495, %3471
  %3499 = fadd fast float %3496, %3472
  %3500 = fadd fast float %3497, %3473
  %3501 = fmul fast float %3498, %3487
  %3502 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %3489, float %3501)  ; FMad(a,b,c)
  %3503 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %3491, float %3502)  ; FMad(a,b,c)
  %3504 = fmul fast float %3498, %3492
  %3505 = call float @dx.op.tertiary.f32(i32 46, float %3499, float %3493, float %3504)  ; FMad(a,b,c)
  %3506 = call float @dx.op.tertiary.f32(i32 46, float %3500, float %3494, float %3505)  ; FMad(a,b,c)
  %3507 = fsub fast float %3503, %3495
  %3508 = fsub fast float %3506, %3496
  %3509 = fsub fast float %3507, %3475
  %3510 = fadd fast float %3509, %3483
  %3511 = fsub fast float %3508, %3476
  %3512 = fadd fast float %3511, %3483
  %3513 = extractvalue %dx.types.CBufRet.f32 %3474, 3
  %3514 = fmul fast float %3510, %3513
  %3515 = fmul fast float %3512, %3513
  %3516 = call float @dx.op.unary.f32(i32 7, float %3514)  ; Saturate(value)
  %3517 = call float @dx.op.unary.f32(i32 7, float %3515)  ; Saturate(value)
  %3518 = fsub fast float 1.000000e+00, %3516
  %3519 = fsub fast float 1.000000e+00, %3517
  %3520 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %35, float %3518, float %3519, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3521 = extractvalue %dx.types.ResRet.f32 %3520, 0
  %3522 = fcmp fast ugt float %3521, 0.000000e+00
  br i1 %3522, label %3523, label %3826

; <label>:3523                                    ; preds = %3485
  %3524 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3525 = extractvalue %dx.types.CBufRet.f32 %3524, 2
  %3526 = fmul fast float %3525, %3521
  %3527 = extractvalue %dx.types.CBufRet.f32 %3524, 3
  %3528 = fadd fast float %3527, %3526
  %3529 = extractvalue %dx.types.CBufRet.f32 %3490, 2
  %3530 = fadd fast float %3528, %3497
  %3531 = fmul fast float %3503, %3491
  %3532 = call float @dx.op.tertiary.f32(i32 46, float %3506, float %3494, float %3531)  ; FMad(a,b,c)
  %3533 = call float @dx.op.tertiary.f32(i32 46, float %3530, float %3529, float %3532)  ; FMad(a,b,c)
  %3534 = fsub fast float %3533, %3497
  %3535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3536 = extractvalue %dx.types.CBufRet.f32 %3535, 2
  %3537 = fsub fast float %3534, %3536
  %3538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %35, float %3518, float %3519, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.ResRet.f32 %3538, 1
  %3541 = extractvalue %dx.types.ResRet.f32 %3538, 2
  %3542 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %35, float %3518, float %3519, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3543 = extractvalue %dx.types.ResRet.f32 %3542, 0
  %3544 = extractvalue %dx.types.ResRet.f32 %3542, 1
  %3545 = extractvalue %dx.types.ResRet.f32 %3542, 2
  %3546 = fadd fast float %3543, %3539
  %3547 = fmul fast float %3546, 0x3F847AE140000000
  %3548 = fadd fast float %3544, %3540
  %3549 = fmul fast float %3548, 0x3F847AE140000000
  %3550 = fadd fast float %3545, %3541
  %3551 = fmul fast float %3550, 0x3F847AE140000000
  br label %3826

; <label>:3552                                    ; preds = %3388
  %3553 = and i32 %136, 1
  %3554 = icmp eq i32 %3553, 0
  br i1 %3554, label %3826, label %3555

; <label>:3555                                    ; preds = %3552
  %3556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3557 = extractvalue %dx.types.CBufRet.f32 %3556, 0
  %3558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3559 = extractvalue %dx.types.CBufRet.f32 %3558, 0
  %3560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3561 = extractvalue %dx.types.CBufRet.f32 %3560, 0
  %3562 = extractvalue %dx.types.CBufRet.f32 %3556, 1
  %3563 = extractvalue %dx.types.CBufRet.f32 %3558, 1
  %3564 = extractvalue %dx.types.CBufRet.f32 %3560, 1
  %3565 = extractvalue %dx.types.CBufRet.f32 %3556, 3
  %3566 = extractvalue %dx.types.CBufRet.f32 %3558, 3
  %3567 = extractvalue %dx.types.CBufRet.f32 %3560, 3
  %3568 = fadd fast float %3565, %3471
  %3569 = fadd fast float %3566, %3472
  %3570 = fadd fast float %3567, %3473
  %3571 = fmul fast float %3568, %3557
  %3572 = call float @dx.op.tertiary.f32(i32 46, float %3569, float %3559, float %3571)  ; FMad(a,b,c)
  %3573 = call float @dx.op.tertiary.f32(i32 46, float %3570, float %3561, float %3572)  ; FMad(a,b,c)
  %3574 = fmul fast float %3568, %3562
  %3575 = call float @dx.op.tertiary.f32(i32 46, float %3569, float %3563, float %3574)  ; FMad(a,b,c)
  %3576 = call float @dx.op.tertiary.f32(i32 46, float %3570, float %3564, float %3575)  ; FMad(a,b,c)
  %3577 = fsub fast float %3573, %3565
  %3578 = fsub fast float %3576, %3566
  %3579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3580 = extractvalue %dx.types.CBufRet.f32 %3579, 0
  %3581 = extractvalue %dx.types.CBufRet.f32 %3579, 1
  %3582 = extractvalue %dx.types.CBufRet.f32 %3579, 2
  %3583 = extractvalue %dx.types.CBufRet.f32 %3579, 3
  %3584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.f32 %3584, 3
  %3586 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3587 = extractvalue %dx.types.CBufRet.i32 %3586, 0
  %3588 = extractvalue %dx.types.CBufRet.i32 %3586, 1
  %3589 = udiv i32 %3588, %3587
  %3590 = fsub fast float %3577, %3580
  %3591 = fsub fast float %3578, %3581
  %3592 = call float @dx.op.binary.f32(i32 35, float %3590, float 0.000000e+00)  ; FMax(a,b)
  %3593 = call float @dx.op.binary.f32(i32 35, float %3591, float 0.000000e+00)  ; FMax(a,b)
  %3594 = call float @dx.op.binary.f32(i32 36, float %3592, float %3582)  ; FMin(a,b)
  %3595 = call float @dx.op.binary.f32(i32 36, float %3593, float %3583)  ; FMin(a,b)
  %3596 = add i32 %3587, -1
  %3597 = add i32 %3589, -1
  %3598 = fmul fast float %3594, %3585
  %3599 = fmul fast float %3595, %3585
  %3600 = fptoui float %3598 to i32
  %3601 = fptoui float %3599 to i32
  %3602 = call i32 @dx.op.binary.i32(i32 40, i32 %3600, i32 %3596)  ; UMin(a,b)
  %3603 = call i32 @dx.op.binary.i32(i32 40, i32 %3601, i32 %3597)  ; UMin(a,b)
  %3604 = mul i32 %3603, %3587
  %3605 = add i32 %3604, %3602
  %3606 = shl i32 %3605, 2
  %3607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.i32 %3607, 0
  %3609 = icmp eq i32 %3608, -1
  br i1 %3609, label %3826, label %3610

; <label>:3610                                    ; preds = %3555
  %3611 = mul i32 %3608, 148
  %3612 = add i32 %3611, 4
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = add i32 %3611, 8
  %3616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.f32 %3616, 0
  %3618 = add i32 %3611, 36
  %3619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = add i32 %3611, 60
  %3622 = add i32 %3611, 92
  %3623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.i32 %3623, 0
  %3625 = add i32 %3611, 116
  %3626 = fsub fast float %3577, %3614
  %3627 = fsub fast float %3578, %3617
  %3628 = fmul fast float %3585, %3626
  %3629 = fmul fast float %3585, %3627
  %3630 = call float @dx.op.unary.f32(i32 7, float %3628)  ; Saturate(value)
  %3631 = call float @dx.op.unary.f32(i32 7, float %3629)  ; Saturate(value)
  %3632 = fsub fast float 1.000000e+00, %3631
  %3633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3634 = extractvalue %dx.types.CBufRet.f32 %3633, 2
  %3635 = call float @dx.op.unary.f32(i32 83, float %3630)  ; DerivCoarseX(value)
  %3636 = call float @dx.op.unary.f32(i32 83, float %3632)  ; DerivCoarseX(value)
  %3637 = call float @dx.op.unary.f32(i32 84, float %3630)  ; DerivCoarseY(value)
  %3638 = call float @dx.op.unary.f32(i32 84, float %3632)  ; DerivCoarseY(value)
  %3639 = fmul fast float %3635, %3634
  %3640 = fmul fast float %3636, %3634
  %3641 = fmul fast float %3637, %3634
  %3642 = fmul fast float %3638, %3634
  %3643 = call float @dx.op.dot2.f32(i32 54, float %3641, float %3642, float %3641, float %3642)  ; Dot2(ax,ay,bx,by)
  %3644 = call float @dx.op.dot2.f32(i32 54, float %3639, float %3640, float %3639, float %3640)  ; Dot2(ax,ay,bx,by)
  %3645 = call float @dx.op.binary.f32(i32 35, float %3644, float %3643)  ; FMax(a,b)
  %3646 = call float @dx.op.unary.f32(i32 23, float %3645)  ; Log(value)
  %3647 = fmul fast float %3646, 5.000000e-01
  %3648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3649 = extractvalue %dx.types.CBufRet.f32 %3648, 1
  %3650 = fadd fast float %3649, %3647
  %3651 = call float @dx.op.binary.f32(i32 35, float %3650, float 0.000000e+00)  ; FMax(a,b)
  %3652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3653 = extractvalue %dx.types.CBufRet.f32 %3652, 3
  %3654 = fadd fast float %3653, %3651
  %3655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3656 = extractvalue %dx.types.CBufRet.f32 %3655, 3
  %3657 = fadd fast float %3654, %3656
  %3658 = add i32 %3624, 0
  %3659 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3658, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3660 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3659, i32 0)  ; GetDimensions(handle,mipLevel)
  %3661 = extractvalue %dx.types.Dimensions %3660, 0
  %3662 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3661)  ; FirstbitLo(value)
  %3663 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3664 = extractvalue %dx.types.CBufRet.i32 %3663, 1
  %3665 = sub nsw i32 %3664, %3662
  %3666 = sitofp i32 %3665 to float
  %3667 = fsub fast float %3657, %3666
  %3668 = call float @dx.op.binary.f32(i32 35, float %3667, float 0.000000e+00)  ; FMax(a,b)
  %3669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3659, %dx.types.Handle %33, float %3630, float %3632, float %3620, float undef, i32 0, i32 0, i32 undef, float %3668)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3670 = extractvalue %dx.types.ResRet.f32 %3669, 0
  %3671 = fcmp ule float %3670, 0x3FE0101020000000
  %3672 = extractvalue %dx.types.CBufRet.i32 %3663, 0
  %3673 = and i32 %3672, 128
  %3674 = icmp ne i32 %3673, 0
  %3675 = and i1 %3671, %3674
  br i1 %3675, label %3826, label %3676

; <label>:3676                                    ; preds = %3610
  %3677 = add i32 %3611, 20
  %3678 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3677, i32 undef)  ; BufferLoad(srv,index,wot)
  %3679 = extractvalue %dx.types.ResRet.f32 %3678, 0
  %3680 = add i32 %3611, 24
  %3681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3680, i32 undef)  ; BufferLoad(srv,index,wot)
  %3682 = extractvalue %dx.types.ResRet.f32 %3681, 0
  %3683 = add i32 %3611, 40
  %3684 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3683, i32 undef)  ; BufferLoad(srv,index,wot)
  %3685 = extractvalue %dx.types.ResRet.f32 %3684, 0
  %3686 = add i32 %3611, 96
  %3687 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3686, i32 undef)  ; BufferLoad(srv,index,wot)
  %3688 = extractvalue %dx.types.ResRet.i32 %3687, 0
  %3689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.f32 %3689, 2
  %3691 = fmul fast float %3690, %3630
  %3692 = fmul fast float %3690, %3632
  %3693 = extractvalue %dx.types.CBufRet.f32 %3689, 3
  %3694 = fadd fast float %3691, %3693
  %3695 = fadd fast float %3692, %3693
  %3696 = add i32 %3688, 0
  %3697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3696, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3698 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3697, i32 0)  ; GetDimensions(handle,mipLevel)
  %3699 = extractvalue %dx.types.Dimensions %3698, 0
  %3700 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3699)  ; FirstbitLo(value)
  %3701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3702 = extractvalue %dx.types.CBufRet.i32 %3701, 1
  %3703 = sub nsw i32 %3702, %3700
  %3704 = sitofp i32 %3703 to float
  %3705 = fsub fast float %3654, %3704
  %3706 = call float @dx.op.binary.f32(i32 35, float %3705, float 0.000000e+00)  ; FMax(a,b)
  %3707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3697, %dx.types.Handle %33, float %3694, float %3695, float %3685, float undef, i32 0, i32 0, i32 undef, float %3706)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3708 = extractvalue %dx.types.ResRet.f32 %3707, 0
  %3709 = fmul fast float %3708, %3679
  %3710 = fadd fast float %3709, %3682
  %3711 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3712 = extractvalue %dx.types.CBufRet.f32 %3711, 0
  %3713 = extractvalue %dx.types.CBufRet.f32 %3711, 1
  %3714 = extractvalue %dx.types.CBufRet.f32 %3711, 2
  %3715 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3716 = extractvalue %dx.types.CBufRet.f32 %3715, 3
  %3717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3718 = extractvalue %dx.types.CBufRet.f32 %3717, 3
  %3719 = extractvalue %dx.types.CBufRet.f32 %3711, 3
  %3720 = fadd fast float %3716, %3577
  %3721 = fadd fast float %3718, %3578
  %3722 = fadd fast float %3710, %3719
  %3723 = fmul fast float %3720, %3712
  %3724 = call float @dx.op.tertiary.f32(i32 46, float %3721, float %3713, float %3723)  ; FMad(a,b,c)
  %3725 = call float @dx.op.tertiary.f32(i32 46, float %3722, float %3714, float %3724)  ; FMad(a,b,c)
  %3726 = fsub fast float %3725, %3719
  %3727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3728 = extractvalue %dx.types.CBufRet.f32 %3727, 2
  %3729 = fsub fast float %3726, %3728
  %3730 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3731 = extractvalue %dx.types.CBufRet.i32 %3730, 0
  %3732 = call i32 @dx.op.binary.i32(i32 40, i32 %3608, i32 %3731)  ; UMin(a,b)
  %3733 = mul i32 %3732, 36
  %3734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3733, i32 undef)  ; BufferLoad(srv,index,wot)
  %3735 = extractvalue %dx.types.ResRet.i32 %3734, 0
  %3736 = add i32 %3733, 4
  %3737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3738 = extractvalue %dx.types.CBufRet.f32 %3737, 0
  %3739 = fmul fast float %3738, %3630
  %3740 = fmul fast float %3738, %3632
  %3741 = extractvalue %dx.types.CBufRet.f32 %3737, 1
  %3742 = fadd fast float %3739, %3741
  %3743 = fadd fast float %3740, %3741
  %3744 = icmp eq i32 %3735, 0
  br i1 %3744, label %3813, label %3745

; <label>:3745                                    ; preds = %3676
  br label %3746

; <label>:3746                                    ; preds = %3803, %3745
  %3747 = phi float [ %3804, %3803 ], [ 0.000000e+00, %3745 ]
  %3748 = phi float [ %3805, %3803 ], [ 0.000000e+00, %3745 ]
  %3749 = phi float [ %3806, %3803 ], [ 0.000000e+00, %3745 ]
  %3750 = phi float [ %3807, %3803 ], [ 0.000000e+00, %3745 ]
  %3751 = phi float [ %3808, %3803 ], [ 0.000000e+00, %3745 ]
  %3752 = phi float [ %3809, %3803 ], [ 0.000000e+00, %3745 ]
  %3753 = phi i32 [ %3810, %3803 ], [ 0, %3745 ]
  %3754 = shl i32 %3753, 2
  %3755 = add i32 %3621, %3754
  %3756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.f32 %3756, 0
  %3758 = add i32 %3625, %3754
  %3759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3758, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.i32 %3759, 0
  %3761 = add i32 %3760, 0
  %3762 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3761, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3763 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3762, i32 0)  ; GetDimensions(handle,mipLevel)
  %3764 = extractvalue %dx.types.Dimensions %3763, 0
  %3765 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3764)  ; FirstbitLo(value)
  %3766 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3767 = extractvalue %dx.types.CBufRet.i32 %3766, 1
  %3768 = sub nsw i32 %3767, %3765
  %3769 = sitofp i32 %3768 to float
  %3770 = fsub fast float %3654, %3769
  %3771 = call float @dx.op.binary.f32(i32 35, float %3770, float 0.000000e+00)  ; FMax(a,b)
  %3772 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3762, %dx.types.Handle %33, float %3742, float %3743, float %3757, float undef, i32 0, i32 0, i32 undef, float %3771)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3773 = extractvalue %dx.types.ResRet.f32 %3772, 0
  %3774 = fcmp fast ogt float %3773, 0.000000e+00
  br i1 %3774, label %3775, label %3803

; <label>:3775                                    ; preds = %3746
  %3776 = add i32 %3736, %3754
  %3777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3776, i32 undef)  ; BufferLoad(srv,index,wot)
  %3778 = extractvalue %dx.types.ResRet.i32 %3777, 0
  %3779 = and i32 %3778, 32767
  %3780 = mul nuw nsw i32 %3779, 928
  %3781 = add nuw nsw i32 %3780, 48
  %3782 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3781, i32 undef)  ; BufferLoad(srv,index,wot)
  %3783 = extractvalue %dx.types.ResRet.f32 %3782, 0
  %3784 = extractvalue %dx.types.ResRet.f32 %3782, 1
  %3785 = extractvalue %dx.types.ResRet.f32 %3782, 2
  %3786 = add nuw nsw i32 %3780, 60
  %3787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3786, i32 undef)  ; BufferLoad(srv,index,wot)
  %3788 = extractvalue %dx.types.ResRet.f32 %3787, 0
  %3789 = extractvalue %dx.types.ResRet.f32 %3787, 1
  %3790 = extractvalue %dx.types.ResRet.f32 %3787, 2
  %3791 = fmul fast float %3783, %3773
  %3792 = fmul fast float %3784, %3773
  %3793 = fmul fast float %3785, %3773
  %3794 = fadd fast float %3791, %3747
  %3795 = fadd fast float %3792, %3748
  %3796 = fadd fast float %3793, %3749
  %3797 = fmul fast float %3788, %3773
  %3798 = fmul fast float %3789, %3773
  %3799 = fmul fast float %3790, %3773
  %3800 = fadd fast float %3797, %3750
  %3801 = fadd fast float %3798, %3751
  %3802 = fadd fast float %3799, %3752
  br label %3803

; <label>:3803                                    ; preds = %3775, %3746
  %3804 = phi float [ %3794, %3775 ], [ %3747, %3746 ]
  %3805 = phi float [ %3795, %3775 ], [ %3748, %3746 ]
  %3806 = phi float [ %3796, %3775 ], [ %3749, %3746 ]
  %3807 = phi float [ %3800, %3775 ], [ %3750, %3746 ]
  %3808 = phi float [ %3801, %3775 ], [ %3751, %3746 ]
  %3809 = phi float [ %3802, %3775 ], [ %3752, %3746 ]
  %3810 = add nuw i32 %3753, 1
  %3811 = icmp eq i32 %3810, %3735
  br i1 %3811, label %3812, label %3746

; <label>:3812                                    ; preds = %3803
  br label %3813

; <label>:3813                                    ; preds = %3812, %3676
  %3814 = phi float [ 0.000000e+00, %3676 ], [ %3804, %3812 ]
  %3815 = phi float [ 0.000000e+00, %3676 ], [ %3805, %3812 ]
  %3816 = phi float [ 0.000000e+00, %3676 ], [ %3806, %3812 ]
  %3817 = phi float [ 0.000000e+00, %3676 ], [ %3807, %3812 ]
  %3818 = phi float [ 0.000000e+00, %3676 ], [ %3808, %3812 ]
  %3819 = phi float [ 0.000000e+00, %3676 ], [ %3809, %3812 ]
  %3820 = fadd fast float %3817, %3814
  %3821 = fmul fast float %3820, 0x3F847AE140000000
  %3822 = fadd fast float %3818, %3815
  %3823 = fmul fast float %3822, 0x3F847AE140000000
  %3824 = fadd fast float %3819, %3816
  %3825 = fmul fast float %3824, 0x3F847AE140000000
  br label %3826

; <label>:3826                                    ; preds = %3813, %3610, %3555, %3552, %3523, %3485
  %3827 = phi float [ %3537, %3523 ], [ -1.310720e+05, %3485 ], [ %3729, %3813 ], [ -1.310720e+05, %3555 ], [ -1.310720e+05, %3610 ], [ -1.310720e+05, %3552 ]
  %3828 = phi float [ %3547, %3523 ], [ 0.000000e+00, %3485 ], [ %3821, %3813 ], [ 0.000000e+00, %3555 ], [ 0.000000e+00, %3610 ], [ 0.000000e+00, %3552 ]
  %3829 = phi float [ %3549, %3523 ], [ 0.000000e+00, %3485 ], [ %3823, %3813 ], [ 0.000000e+00, %3555 ], [ 0.000000e+00, %3610 ], [ 0.000000e+00, %3552 ]
  %3830 = phi float [ %3551, %3523 ], [ 0.000000e+00, %3485 ], [ %3825, %3813 ], [ 0.000000e+00, %3555 ], [ 0.000000e+00, %3610 ], [ 0.000000e+00, %3552 ]
  %3831 = phi i1 [ true, %3523 ], [ false, %3485 ], [ true, %3813 ], [ false, %3555 ], [ false, %3610 ], [ false, %3552 ]
  %3832 = and i32 %136, 3
  %3833 = icmp eq i32 %3832, 1
  %3834 = select i1 %3833, float 1.000000e+00, float 0.000000e+00
  %3835 = fsub fast float %3827, %120
  %3836 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3837 = select i1 %3831, float %3836, float 1.000000e+00
  %3838 = fmul fast float %3837, %3834
  %3839 = icmp eq i32 %3832, 3
  %3840 = select i1 %3839, float 1.000000e+00, float %3838
  %3841 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3840)  ; FMax(a,b)
  %3842 = call float @dx.op.unary.f32(i32 7, float %3841)  ; Saturate(value)
  %3843 = fcmp fast une float %3842, 0.000000e+00
  %3844 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %3845 = call float @dx.op.unary.f32(i32 25, float %3844)  ; Rsqrt(value)
  br i1 %3843, label %3853, label %3846

; <label>:3846                                    ; preds = %3826
  %3847 = fmul fast float %3845, %118
  %3848 = fmul fast float %3845, %119
  %3849 = fmul fast float %3845, %120
  %3850 = fsub fast float -0.000000e+00, %3847
  %3851 = fsub fast float -0.000000e+00, %3848
  %3852 = fsub fast float -0.000000e+00, %3849
  br label %4021

; <label>:3853                                    ; preds = %3826
  %3854 = fmul fast float %118, %3845
  %3855 = fsub fast float -0.000000e+00, %3854
  %3856 = fmul fast float %119, %3845
  %3857 = fsub fast float -0.000000e+00, %3856
  %3858 = fmul fast float %120, %3845
  %3859 = fsub fast float -0.000000e+00, %3858
  %3860 = call float @dx.op.dot3.f32(i32 55, float %3855, float %3857, float %3859, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %3861 = fmul fast float %3842, 2.500000e+00
  %3862 = call float @dx.op.unary.f32(i32 7, float %3861)  ; Saturate(value)
  %3863 = fmul fast float %3842, 0x4013FFFFE0000000
  %3864 = fadd fast float %3863, 0xBFFFFFFFE0000000
  %3865 = call float @dx.op.unary.f32(i32 7, float %3864)  ; Saturate(value)
  %3866 = fmul fast float %3842, 0x4004000020000000
  %3867 = fadd fast float %3866, 0xBFF8000040000000
  %3868 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3869 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3870 = fmul fast float %3431, 1.000000e+01
  %3871 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3872 = fmul fast float %3871, 2.000000e+00
  %3873 = fsub fast float 3.000000e+00, %3872
  %3874 = fmul fast float %3871, %3871
  %3875 = fmul fast float %3874, %3873
  %3876 = fsub fast float 1.000000e+00, %3875
  %3877 = fsub fast float 0x3FE3333340000000, %3452
  %3878 = fmul fast float %3877, 0x400AAAAAA0000000
  %3879 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3880 = fmul fast float %3876, %3879
  %3881 = fmul fast float %3464, 0x3FEA2B8620000000
  %3882 = fmul fast float %3465, 0x3FEA2B8620000000
  %3883 = fmul fast float %3466, 0x3FEA2B8620000000
  %3884 = fadd fast float %3881, 0x3FC81DFBA0000000
  %3885 = fmul fast float %3884, %3464
  %3886 = fadd fast float %3885, 0x3F910E6020000000
  %3887 = fadd fast float %3882, 0x3FC81DFBA0000000
  %3888 = fmul fast float %3887, %3465
  %3889 = fadd fast float %3888, 0x3F910E6020000000
  %3890 = fadd fast float %3883, 0x3FC81DFBA0000000
  %3891 = fmul fast float %3890, %3466
  %3892 = fadd fast float %3891, 0x3F910E6020000000
  %3893 = call float @dx.op.unary.f32(i32 7, float %3886)  ; Saturate(value)
  %3894 = call float @dx.op.unary.f32(i32 7, float %3889)  ; Saturate(value)
  %3895 = call float @dx.op.unary.f32(i32 7, float %3892)  ; Saturate(value)
  %3896 = fsub fast float %3893, %3464
  %3897 = fsub fast float %3894, %3465
  %3898 = fsub fast float %3895, %3466
  %3899 = fmul fast float %3896, %3869
  %3900 = fmul fast float %3899, %3880
  %3901 = fmul fast float %3897, %3869
  %3902 = fmul fast float %3901, %3880
  %3903 = fmul fast float %3898, %3869
  %3904 = fmul fast float %3903, %3880
  %3905 = fadd fast float %3900, %3464
  %3906 = fadd fast float %3902, %3465
  %3907 = fadd fast float %3904, %3466
  %3908 = fmul fast float %3399, %3399
  %3909 = fmul fast float %3908, %3908
  %3910 = fadd fast float %3865, 1.000000e+00
  %3911 = fsub fast float %3910, %3880
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3913 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = fsub fast float 1.000000e+00, %3909
  %3916 = call float @dx.op.binary.f32(i32 36, float %3912, float %3915)  ; FMin(a,b)
  %3917 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3918 = call float @dx.op.binary.f32(i32 35, float %3916, float %3917)  ; FMax(a,b)
  %3919 = fadd fast float %3914, 0xBFE4CCCCC0000000
  %3920 = fmul fast float %3919, 0x4006DB6DA0000000
  %3921 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3922 = fmul fast float %3921, 2.000000e+00
  %3923 = fsub fast float 3.000000e+00, %3922
  %3924 = bitcast float %3449 to i32
  %3925 = ashr i32 %3924, 1
  %3926 = add nsw i32 %3925, 532487669
  %3927 = bitcast i32 %3926 to float
  %3928 = fsub fast float 1.000000e+00, %3927
  %3929 = bitcast float %3928 to i32
  %3930 = sub nsw i32 2129859010, %3929
  %3931 = bitcast i32 %3930 to float
  %3932 = fmul fast float %3931, 2.000000e+00
  %3933 = bitcast float %3450 to i32
  %3934 = ashr i32 %3933, 1
  %3935 = add nsw i32 %3934, 532487669
  %3936 = bitcast i32 %3935 to float
  %3937 = fsub fast float 1.000000e+00, %3936
  %3938 = bitcast float %3937 to i32
  %3939 = sub nsw i32 2129859010, %3938
  %3940 = bitcast i32 %3939 to float
  %3941 = fmul fast float %3940, 2.000000e+00
  %3942 = bitcast float %3451 to i32
  %3943 = ashr i32 %3942, 1
  %3944 = add nsw i32 %3943, 532487669
  %3945 = bitcast i32 %3944 to float
  %3946 = fsub fast float 1.000000e+00, %3945
  %3947 = bitcast float %3946 to i32
  %3948 = sub nsw i32 2129859010, %3947
  %3949 = bitcast i32 %3948 to float
  %3950 = fmul fast float %3949, 2.000000e+00
  %3951 = fsub fast float 0x4002A9FBE0000000, %3932
  %3952 = fadd fast float %3932, 0x3FD54FDF00000000
  %3953 = bitcast float %3952 to i32
  %3954 = sub nsw i32 2129859010, %3953
  %3955 = bitcast i32 %3954 to float
  %3956 = fmul fast float %3955, %3951
  %3957 = fmul fast float %3956, %3956
  %3958 = fsub fast float 0x4002A9FBE0000000, %3941
  %3959 = fadd fast float %3941, 0x3FD54FDF00000000
  %3960 = bitcast float %3959 to i32
  %3961 = sub nsw i32 2129859010, %3960
  %3962 = bitcast i32 %3961 to float
  %3963 = fmul fast float %3962, %3958
  %3964 = fmul fast float %3963, %3963
  %3965 = fsub fast float 0x4002A9FBE0000000, %3950
  %3966 = fadd fast float %3950, 0x3FD54FDF00000000
  %3967 = bitcast float %3966 to i32
  %3968 = sub nsw i32 2129859010, %3967
  %3969 = bitcast i32 %3968 to float
  %3970 = fmul fast float %3969, %3965
  %3971 = fmul fast float %3970, %3970
  %3972 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3957)  ; FMax(a,b)
  %3973 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3964)  ; FMax(a,b)
  %3974 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3971)  ; FMax(a,b)
  %3975 = fsub fast float 1.000000e+00, %3860
  %3976 = fadd fast float %3975, %3876
  %3977 = call float @dx.op.unary.f32(i32 7, float %3976)  ; Saturate(value)
  %3978 = fsub fast float 1.000000e+00, %3840
  %3979 = fmul fast float %3918, %3978
  %3980 = fmul fast float %3921, %3921
  %3981 = fmul fast float %3980, %3979
  %3982 = fmul fast float %3981, %3923
  %3983 = fmul fast float %3978, 0xBFE99999A0000000
  %3984 = fmul fast float %3983, %3869
  %3985 = fmul fast float %3984, %3880
  %3986 = fadd fast float %3985, 1.000000e+00
  %3987 = fadd fast float %3452, -1.000000e+00
  %3988 = fmul fast float %3986, %3987
  %3989 = fadd fast float %3988, 1.000000e+00
  %3990 = fsub fast float %3972, %3449
  %3991 = fsub fast float %3973, %3450
  %3992 = fsub fast float %3974, %3451
  %3993 = fmul fast float %3982, %3990
  %3994 = fmul fast float %3982, %3991
  %3995 = fmul fast float %3982, %3992
  %3996 = fadd fast float %3993, %3449
  %3997 = fadd fast float %3994, %3450
  %3998 = fadd fast float %3995, %3451
  %3999 = fsub fast float %70, %3428
  %4000 = fsub fast float %71, %3429
  %4001 = fsub fast float %72, %3430
  %4002 = fmul fast float %3982, %3999
  %4003 = fmul fast float %3982, %4000
  %4004 = fmul fast float %3982, %4001
  %4005 = fadd fast float %4002, %3428
  %4006 = fadd fast float %4003, %3429
  %4007 = fadd fast float %4004, %3430
  %4008 = fmul fast float %3982, %3977
  %4009 = call float @dx.op.unary.f32(i32 7, float %3989)  ; Saturate(value)
  %4010 = fsub fast float 1.000000e+00, %4009
  %4011 = fmul fast float %4008, %4010
  %4012 = fadd fast float %4011, %4009
  %4013 = fsub fast float 1.000000e+00, %3399
  %4014 = fmul fast float %3982, %4013
  %4015 = fadd fast float %4014, %3399
  %4016 = call float @dx.op.dot3.f32(i32 55, float %4005, float %4006, float %4007, float %4005, float %4006, float %4007)  ; Dot3(ax,ay,az,bx,by,bz)
  %4017 = call float @dx.op.unary.f32(i32 25, float %4016)  ; Rsqrt(value)
  %4018 = fmul fast float %4005, %4017
  %4019 = fmul fast float %4006, %4017
  %4020 = fmul fast float %4007, %4017
  br label %4021

; <label>:4021                                    ; preds = %3853, %3846
  %4022 = phi float [ %3852, %3846 ], [ %3859, %3853 ]
  %4023 = phi float [ %3851, %3846 ], [ %3857, %3853 ]
  %4024 = phi float [ %3850, %3846 ], [ %3855, %3853 ]
  %4025 = phi float [ %3849, %3846 ], [ %3858, %3853 ]
  %4026 = phi float [ %3848, %3846 ], [ %3856, %3853 ]
  %4027 = phi float [ %3847, %3846 ], [ %3854, %3853 ]
  %4028 = phi float [ %3464, %3846 ], [ %3905, %3853 ]
  %4029 = phi float [ %3465, %3846 ], [ %3906, %3853 ]
  %4030 = phi float [ %3466, %3846 ], [ %3907, %3853 ]
  %4031 = phi float [ %3449, %3846 ], [ %3996, %3853 ]
  %4032 = phi float [ %3450, %3846 ], [ %3997, %3853 ]
  %4033 = phi float [ %3451, %3846 ], [ %3998, %3853 ]
  %4034 = phi float [ %3428, %3846 ], [ %4018, %3853 ]
  %4035 = phi float [ %3429, %3846 ], [ %4019, %3853 ]
  %4036 = phi float [ %3430, %3846 ], [ %4020, %3853 ]
  %4037 = phi float [ %3452, %3846 ], [ %4012, %3853 ]
  %4038 = phi float [ %3399, %3846 ], [ %4015, %3853 ]
  %4039 = select i1 %162, float 0.000000e+00, float %4033
  %4040 = call float @dx.op.dot3.f32(i32 55, float %4034, float %4035, float %4036, float %4024, float %4023, float %4022)  ; Dot3(ax,ay,az,bx,by,bz)
  %4041 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4042 = call float @dx.op.dot3.f32(i32 55, float %4027, float %4026, float %4025, float %4034, float %4035, float %4036)  ; Dot3(ax,ay,az,bx,by,bz)
  %4043 = fmul fast float %4042, 2.000000e+00
  %4044 = fmul fast float %4043, %4034
  %4045 = fmul fast float %4043, %4035
  %4046 = fmul fast float %4043, %4036
  %4047 = fsub fast float %4027, %4044
  %4048 = fsub fast float %4026, %4045
  %4049 = fsub fast float %4025, %4046
  %4050 = call float @dx.op.binary.f32(i32 36, float %4038, float 1.000000e+00)  ; FMin(a,b)
  %4051 = fsub fast float 1.000000e+00, %4038
  %4052 = bitcast float %4051 to i32
  %4053 = sub nsw i32 2129859010, %4052
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.CBufRet.f32 %4054, 1
  %4057 = fadd fast float %4055, %118
  %4058 = fadd fast float %4056, %119
  %4059 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %4060 = extractvalue %dx.types.CBufRet.i32 %4059, 0
  %4061 = icmp eq i32 %4060, 1
  br i1 %4061, label %4062, label %4097

; <label>:4062                                    ; preds = %4021
  %4063 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.f32 %4063, 0
  %4065 = extractvalue %dx.types.CBufRet.f32 %4063, 1
  %4066 = fsub fast float %4057, %4064
  %4067 = fsub fast float %4058, %4065
  %4068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4069 = extractvalue %dx.types.CBufRet.f32 %4068, 0
  %4070 = extractvalue %dx.types.CBufRet.f32 %4068, 1
  %4071 = fmul fast float %4066, %4069
  %4072 = fmul fast float %4067, %4070
  %4073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %35, float %4071, float %4072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4074 = extractvalue %dx.types.ResRet.f32 %4073, 0
  %4075 = fcmp fast ogt float %4074, 0.000000e+00
  %4076 = extractvalue %dx.types.CBufRet.i32 %4059, 3
  %4077 = icmp ne i32 %4076, 0
  %4078 = and i1 %4075, %4077
  br i1 %4078, label %4079, label %4097, !dx.controlflow.hints !74

; <label>:4079                                    ; preds = %4062
  %4080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4080, 0
  %4082 = extractvalue %dx.types.CBufRet.f32 %4080, 1
  %4083 = fsub fast float %4057, %4081
  %4084 = fsub fast float %4058, %4082
  %4085 = fmul fast float %4083, %4083
  %4086 = fmul fast float %4084, %4084
  %4087 = fadd fast float %4085, %4086
  %4088 = uitofp i32 %4076 to float
  %4089 = fmul fast float %4088, %4088
  %4090 = fcmp fast ogt float %4087, %4089
  br i1 %4090, label %4097, label %4091

; <label>:4091                                    ; preds = %4079
  %4092 = call float @dx.op.unary.f32(i32 24, float %4087)  ; Sqrt(value)
  %4093 = fsub fast float %4088, %4092
  %4094 = fmul fast float %4093, 0x3F75555560000000
  %4095 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4096 = call float @dx.op.binary.f32(i32 36, float %4095, float %4074)  ; FMin(a,b)
  br label %4097

; <label>:4097                                    ; preds = %4091, %4079, %4062, %4021
  %4098 = phi float [ 1.000000e+00, %4021 ], [ %4096, %4091 ], [ %4074, %4062 ], [ 0.000000e+00, %4079 ]
  %4099 = fcmp fast ogt float %4098, 0.000000e+00
  br i1 %4099, label %4100, label %4198, !dx.controlflow.hints !75

; <label>:4100                                    ; preds = %4097
  %4101 = fadd fast float %43, 5.000000e-01
  %4102 = call float @dx.op.unary.f32(i32 27, float %4101)  ; Round_ni(value)
  %4103 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %35, float %41, float %42, float %4102, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4104 = extractvalue %dx.types.ResRet.f32 %4103, 0
  %4105 = extractvalue %dx.types.ResRet.f32 %4103, 1
  %4106 = extractvalue %dx.types.ResRet.f32 %4103, 2
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 3
  %4109 = fmul fast float %4108, %4104
  %4110 = fmul fast float %4108, %4105
  %4111 = fmul fast float %4108, %4106
  %4112 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %35, float %41, float %42, float %4102, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4113 = extractvalue %dx.types.ResRet.f32 %4112, 0
  %4114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %35, float %41, float %42, float %4102, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4115 = extractvalue %dx.types.ResRet.f32 %4114, 0
  %4116 = extractvalue %dx.types.ResRet.f32 %4114, 1
  %4117 = fmul fast float %4115, 2.000000e+00
  %4118 = fmul fast float %4116, 2.000000e+00
  %4119 = fadd fast float %4117, -1.000000e+00
  %4120 = fadd fast float %4118, -1.000000e+00
  %4121 = fadd fast float %4119, %4120
  %4122 = fmul fast float %4121, 5.000000e-01
  %4123 = fsub fast float %4119, %4120
  %4124 = fmul fast float %4123, 5.000000e-01
  %4125 = call float @dx.op.unary.f32(i32 6, float %4122)  ; FAbs(value)
  %4126 = fsub fast float 1.000000e+00, %4125
  %4127 = call float @dx.op.unary.f32(i32 6, float %4124)  ; FAbs(value)
  %4128 = fsub fast float %4126, %4127
  %4129 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %4128)  ; FMax(a,b)
  %4130 = call float @dx.op.dot3.f32(i32 55, float %4122, float %4124, float %4129, float %4122, float %4124, float %4129)  ; Dot3(ax,ay,az,bx,by,bz)
  %4131 = bitcast float %4130 to i32
  %4132 = ashr i32 %4131, 1
  %4133 = sub nsw i32 1597250115, %4132
  %4134 = bitcast i32 %4133 to float
  %4135 = fmul fast float %4134, %4122
  %4136 = fmul fast float %4134, %4124
  %4137 = fmul fast float %4134, %4129
  %4138 = fsub fast float 1.000000e+00, %4113
  %4139 = fdiv fast float %4138, %4137
  %4140 = fmul fast float %4137, %70
  %4141 = fmul fast float %4137, %71
  %4142 = fmul fast float %4137, %72
  %4143 = fmul fast float %4135, %44
  %4144 = fmul fast float %4135, %45
  %4145 = fmul fast float %4135, %46
  %4146 = fadd fast float %4140, %4143
  %4147 = fadd fast float %4141, %4144
  %4148 = fadd fast float %4142, %4145
  %4149 = fmul fast float %4136, %82
  %4150 = fmul fast float %4136, %83
  %4151 = fmul fast float %4136, %84
  %4152 = fadd fast float %4146, %4149
  %4153 = fadd fast float %4147, %4150
  %4154 = fadd fast float %4148, %4151
  %4155 = call float @dx.op.dot3.f32(i32 55, float %4152, float %4153, float %4154, float %4152, float %4153, float %4154)  ; Dot3(ax,ay,az,bx,by,bz)
  %4156 = call float @dx.op.unary.f32(i32 25, float %4155)  ; Rsqrt(value)
  %4157 = fmul fast float %4152, %4156
  %4158 = fmul fast float %4153, %4156
  %4159 = fmul fast float %4154, %4156
  %4160 = call float @dx.op.dot3.f32(i32 55, float %4034, float %4035, float %4036, float %4034, float %4035, float %4036)  ; Dot3(ax,ay,az,bx,by,bz)
  %4161 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4162 = fmul fast float %4161, 5.000000e-01
  %4163 = fadd fast float %4162, 5.000000e-01
  %4164 = fmul fast float %4163, %4113
  %4165 = call float @dx.op.dot3.f32(i32 55, float %4034, float %4035, float %4036, float %4157, float %4158, float %4159)  ; Dot3(ax,ay,az,bx,by,bz)
  %4166 = call float @dx.op.unary.f32(i32 7, float %4165)  ; Saturate(value)
  %4167 = fmul fast float %4166, %4139
  %4168 = fadd fast float %4164, %4167
  %4169 = fsub fast float 5.000000e-01, %4162
  %4170 = fmul fast float %4169, %4028
  %4171 = fmul fast float %4169, %4029
  %4172 = fmul fast float %4169, %4030
  %4173 = fadd fast float %4168, %4170
  %4174 = fmul fast float %4173, %4109
  %4175 = fadd fast float %4168, %4171
  %4176 = fmul fast float %4175, %4110
  %4177 = fadd fast float %4168, %4172
  %4178 = fmul fast float %4177, %4111
  %4179 = call float @dx.op.dot3.f32(i32 55, float %4047, float %4048, float %4049, float %4034, float %4035, float %4036)  ; Dot3(ax,ay,az,bx,by,bz)
  %4180 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4181 = fmul fast float %4180, 5.000000e-01
  %4182 = fadd fast float %4181, 5.000000e-01
  %4183 = fmul fast float %4182, %4113
  %4184 = call float @dx.op.dot3.f32(i32 55, float %4047, float %4048, float %4049, float %4157, float %4158, float %4159)  ; Dot3(ax,ay,az,bx,by,bz)
  %4185 = call float @dx.op.unary.f32(i32 7, float %4184)  ; Saturate(value)
  %4186 = fmul fast float %4185, %4139
  %4187 = fadd fast float %4183, %4186
  %4188 = fsub fast float 5.000000e-01, %4181
  %4189 = fmul fast float %4188, %4028
  %4190 = fmul fast float %4188, %4029
  %4191 = fmul fast float %4188, %4030
  %4192 = fadd fast float %4187, %4189
  %4193 = fmul fast float %4192, %4109
  %4194 = fadd fast float %4187, %4190
  %4195 = fmul fast float %4194, %4110
  %4196 = fadd fast float %4187, %4191
  %4197 = fmul fast float %4196, %4111
  br label %4198

; <label>:4198                                    ; preds = %4100, %4097
  %4199 = phi float [ %4193, %4100 ], [ 0.000000e+00, %4097 ]
  %4200 = phi float [ %4195, %4100 ], [ 0.000000e+00, %4097 ]
  %4201 = phi float [ %4197, %4100 ], [ 0.000000e+00, %4097 ]
  %4202 = phi float [ %4174, %4100 ], [ 0.000000e+00, %4097 ]
  %4203 = phi float [ %4176, %4100 ], [ 0.000000e+00, %4097 ]
  %4204 = phi float [ %4178, %4100 ], [ 0.000000e+00, %4097 ]
  %4205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.f32 %4205, 0
  %4207 = fcmp fast ogt float %4206, 0.000000e+00
  %4208 = and i1 %4099, %4207
  br i1 %4208, label %4209, label %4413, !dx.controlflow.hints !76

; <label>:4209                                    ; preds = %4198
  %4210 = extractvalue %dx.types.CBufRet.f32 %4054, 2
  %4211 = fadd fast float %4210, %120
  %4212 = fmul fast float %4034, 3.200000e+01
  %4213 = fmul fast float %4035, 3.200000e+01
  %4214 = fadd fast float %4057, %4212
  %4215 = fadd fast float %4058, %4213
  %4216 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4217 = extractvalue %dx.types.CBufRet.f32 %4216, 0
  %4218 = extractvalue %dx.types.CBufRet.f32 %4216, 1
  %4219 = fsub fast float %4214, %4217
  %4220 = fsub fast float %4215, %4218
  %4221 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4222 = extractvalue %dx.types.CBufRet.f32 %4221, 0
  %4223 = extractvalue %dx.types.CBufRet.f32 %4221, 1
  %4224 = fmul fast float %4219, %4222
  %4225 = fmul fast float %4220, %4223
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.CBufRet.f32 %4226, 1
  %4229 = fsub fast float %4057, %4227
  %4230 = fsub fast float %4058, %4228
  %4231 = fmul fast float %4229, %4229
  %4232 = fmul fast float %4230, %4230
  %4233 = fadd fast float %4231, %4232
  %4234 = call float @dx.op.unary.f32(i32 24, float %4233)  ; Sqrt(value)
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 0
  %4237 = extractvalue %dx.types.CBufRet.f32 %4235, 1
  %4238 = fsub fast float %4234, %4236
  %4239 = fdiv fast float %4238, %4237
  %4240 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4241 = fmul fast float %4240, 2.000000e+00
  %4242 = fsub fast float 3.000000e+00, %4241
  %4243 = fmul fast float %4240, %4240
  %4244 = fmul fast float %4243, %4242
  %4245 = fcmp fast oge float %4224, 0.000000e+00
  %4246 = fcmp fast ole float %4224, 1.000000e+00
  %4247 = and i1 %4246, %4245
  %4248 = fcmp fast oge float %4225, 0.000000e+00
  %4249 = and i1 %4248, %4247
  %4250 = fcmp fast ole float %4225, 1.000000e+00
  %4251 = and i1 %4250, %4249
  %4252 = fcmp fast ogt float %4244, 0.000000e+00
  %4253 = and i1 %4252, %4251
  br i1 %4253, label %4254, label %4377, !dx.controlflow.hints !77

; <label>:4254                                    ; preds = %4209
  %4255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4256 = extractvalue %dx.types.CBufRet.f32 %4255, 2
  %4257 = extractvalue %dx.types.CBufRet.f32 %4255, 3
  %4258 = fmul fast float %4256, %4224
  %4259 = fmul fast float %4257, %4225
  %4260 = call float @dx.op.unary.f32(i32 27, float %4258)  ; Round_ni(value)
  %4261 = call float @dx.op.unary.f32(i32 27, float %4259)  ; Round_ni(value)
  %4262 = fptosi float %4260 to i32
  %4263 = fptosi float %4261 to i32
  %4264 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %4262, i32 %4263, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4265 = extractvalue %dx.types.ResRet.i32 %4264, 0
  %4266 = lshr i32 %4265, 16
  %4267 = icmp eq i32 %4266, 65535
  br i1 %4267, label %4377, label %4268

; <label>:4268                                    ; preds = %4254
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 0
  %4271 = fmul fast float %4270, %4224
  %4272 = extractvalue %dx.types.CBufRet.f32 %4269, 1
  %4273 = fadd fast float %4271, %4272
  %4274 = extractvalue %dx.types.CBufRet.f32 %4269, 2
  %4275 = fmul fast float %4274, %4225
  %4276 = extractvalue %dx.types.CBufRet.f32 %4269, 3
  %4277 = fadd fast float %4275, %4276
  %4278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %4273, float %4277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4279 = extractvalue %dx.types.ResRet.f32 %4278, 0
  %4280 = extractvalue %dx.types.ResRet.f32 %4278, 1
  %4281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4282 = extractvalue %dx.types.CBufRet.f32 %4281, 1
  %4283 = extractvalue %dx.types.CBufRet.f32 %4281, 0
  %4284 = fsub fast float %4282, %4283
  %4285 = fmul fast float %4284, %4279
  %4286 = fadd fast float %4285, %4283
  %4287 = extractvalue %dx.types.CBufRet.f32 %4281, 3
  %4288 = extractvalue %dx.types.CBufRet.f32 %4281, 2
  %4289 = fsub fast float %4287, %4288
  %4290 = fmul fast float %4289, %4280
  %4291 = fadd fast float %4290, %4288
  %4292 = fsub fast float %4211, %4286
  %4293 = fsub fast float %4291, %4286
  %4294 = fdiv fast float %4292, %4293
  %4295 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4205, 1
  %4297 = extractvalue %dx.types.CBufRet.f32 %4255, 0
  %4298 = extractvalue %dx.types.CBufRet.f32 %4255, 1
  %4299 = fmul fast float %4297, %4224
  %4300 = fmul fast float %4298, %4225
  %4301 = fmul fast float %4299, 1.250000e-01
  %4302 = fmul fast float %4300, 1.250000e-01
  %4303 = call float @dx.op.unary.f32(i32 27, float %4301)  ; Round_ni(value)
  %4304 = call float @dx.op.unary.f32(i32 27, float %4302)  ; Round_ni(value)
  %4305 = fmul fast float %4303, 8.000000e+00
  %4306 = fmul fast float %4304, 8.000000e+00
  %4307 = fsub fast float %4299, %4305
  %4308 = fsub fast float %4300, %4306
  %4309 = fadd fast float %4307, 5.000000e-01
  %4310 = fadd fast float %4308, 5.000000e-01
  %4311 = and i32 %4266, 255
  %4312 = lshr i32 %4265, 24
  %4313 = mul nuw nsw i32 %4311, 9
  %4314 = uitofp i32 %4313 to float
  %4315 = mul nuw nsw i32 %4312, 9
  %4316 = uitofp i32 %4315 to float
  %4317 = fadd fast float %4309, %4314
  %4318 = fadd fast float %4310, %4316
  %4319 = fdiv fast float %4317, %4206
  %4320 = fdiv fast float %4318, %4296
  %4321 = fmul fast float %4295, 4.375000e-01
  %4322 = fadd fast float %4321, 3.125000e-02
  %4323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %35, float %4319, float %4320, float %4322, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4324 = extractvalue %dx.types.ResRet.f32 %4323, 0
  %4325 = extractvalue %dx.types.ResRet.f32 %4323, 1
  %4326 = extractvalue %dx.types.ResRet.f32 %4323, 2
  %4327 = fadd fast float %4321, 5.312500e-01
  %4328 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %35, float %4319, float %4320, float %4327, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  %4330 = extractvalue %dx.types.ResRet.f32 %4328, 1
  %4331 = extractvalue %dx.types.ResRet.f32 %4328, 2
  %4332 = fmul fast float %4329, 2.000000e+00
  %4333 = fmul fast float %4330, 2.000000e+00
  %4334 = fmul fast float %4331, 2.000000e+00
  %4335 = fadd fast float %4332, -1.000000e+00
  %4336 = fadd fast float %4333, -1.000000e+00
  %4337 = fadd fast float %4334, -1.000000e+00
  %4338 = fmul fast float %4335, %4335
  %4339 = fmul fast float %4336, %4336
  %4340 = fadd fast float %4338, %4339
  %4341 = fmul fast float %4337, %4337
  %4342 = fadd fast float %4340, %4341
  %4343 = call float @dx.op.unary.f32(i32 24, float %4342)  ; Sqrt(value)
  %4344 = fcmp fast ogt float %4343, 0.000000e+00
  br i1 %4344, label %4345, label %4349

; <label>:4345                                    ; preds = %4268
  %4346 = fdiv fast float %4335, %4343
  %4347 = fdiv fast float %4336, %4343
  %4348 = fdiv fast float %4337, %4343
  br label %4349

; <label>:4349                                    ; preds = %4345, %4268
  %4350 = phi float [ %4346, %4345 ], [ 0.000000e+00, %4268 ]
  %4351 = phi float [ %4347, %4345 ], [ 0.000000e+00, %4268 ]
  %4352 = phi float [ %4348, %4345 ], [ 0.000000e+00, %4268 ]
  %4353 = call float @dx.op.dot3.f32(i32 55, float %4350, float %4351, float %4352, float %4034, float %4035, float %4036)  ; Dot3(ax,ay,az,bx,by,bz)
  %4354 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4353)  ; FMax(a,b)
  %4355 = fmul fast float %4354, 0x400C5BF8A0000000
  %4356 = fmul fast float %4324, %4244
  %4357 = fmul fast float %4356, %4355
  %4358 = fmul fast float %4325, %4244
  %4359 = fmul fast float %4358, %4355
  %4360 = fmul fast float %4326, %4244
  %4361 = fmul fast float %4360, %4355
  %4362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4363 = extractvalue %dx.types.CBufRet.f32 %4362, 3
  %4364 = fmul fast float %4357, %4363
  %4365 = fmul fast float %4359, %4363
  %4366 = fmul fast float %4361, %4363
  %4367 = fcmp fast ogt float %4211, %4291
  br i1 %4367, label %4368, label %4377

; <label>:4368                                    ; preds = %4349
  %4369 = fmul fast float %4293, 0x3FC24924A0000000
  %4370 = fsub fast float %4211, %4291
  %4371 = fdiv fast float %4370, %4369
  %4372 = call float @dx.op.unary.f32(i32 7, float %4371)  ; Saturate(value)
  %4373 = fsub fast float 1.000000e+00, %4372
  %4374 = fmul fast float %4373, %4364
  %4375 = fmul fast float %4373, %4365
  %4376 = fmul fast float %4373, %4366
  br label %4377

; <label>:4377                                    ; preds = %4368, %4349, %4254, %4209
  %4378 = phi float [ %4376, %4368 ], [ %4366, %4349 ], [ 0.000000e+00, %4254 ], [ 0.000000e+00, %4209 ]
  %4379 = phi float [ %4375, %4368 ], [ %4365, %4349 ], [ 0.000000e+00, %4254 ], [ 0.000000e+00, %4209 ]
  %4380 = phi float [ %4374, %4368 ], [ %4364, %4349 ], [ 0.000000e+00, %4254 ], [ 0.000000e+00, %4209 ]
  %4381 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4380)  ; FMax(a,b)
  %4382 = fmul fast float %4381, 0x3FD20DD760000000
  %4383 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4047, float %4048, float %4049)  ; Dot3(ax,ay,az,bx,by,bz)
  %4384 = fmul fast float %4383, 0x3FDF454380000000
  %4385 = fmul fast float %4383, %4383
  %4386 = fmul fast float %4385, 0x3FEE471020000000
  %4387 = fadd fast float %4386, 0xBFD42F6020000000
  %4388 = call float @dx.op.dot3.f32(i32 55, float %4381, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4384, float %4387)  ; Dot3(ax,ay,az,bx,by,bz)
  %4389 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4379)  ; FMax(a,b)
  %4390 = fmul fast float %4389, 0x3FD20DD760000000
  %4391 = call float @dx.op.dot3.f32(i32 55, float %4389, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4384, float %4387)  ; Dot3(ax,ay,az,bx,by,bz)
  %4392 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4378)  ; FMax(a,b)
  %4393 = fmul fast float %4392, 0x3FD20DD760000000
  %4394 = call float @dx.op.dot3.f32(i32 55, float %4392, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4384, float %4387)  ; Dot3(ax,ay,az,bx,by,bz)
  %4395 = call float @dx.op.binary.f32(i32 35, float %4382, float 0.000000e+00)  ; FMax(a,b)
  %4396 = call float @dx.op.binary.f32(i32 35, float %4390, float 0.000000e+00)  ; FMax(a,b)
  %4397 = call float @dx.op.binary.f32(i32 35, float %4393, float 0.000000e+00)  ; FMax(a,b)
  %4398 = call float @dx.op.binary.f32(i32 35, float %4388, float 0.000000e+00)  ; FMax(a,b)
  %4399 = call float @dx.op.binary.f32(i32 35, float %4391, float 0.000000e+00)  ; FMax(a,b)
  %4400 = call float @dx.op.binary.f32(i32 35, float %4394, float 0.000000e+00)  ; FMax(a,b)
  %4401 = fmul fast float %4395, %4098
  %4402 = fmul fast float %4396, %4098
  %4403 = fmul fast float %4397, %4098
  %4404 = fadd fast float %4401, %4202
  %4405 = fadd fast float %4402, %4203
  %4406 = fadd fast float %4403, %4204
  %4407 = fmul fast float %4398, %4098
  %4408 = fmul fast float %4399, %4098
  %4409 = fmul fast float %4400, %4098
  %4410 = fadd fast float %4407, %4199
  %4411 = fadd fast float %4408, %4200
  %4412 = fadd fast float %4409, %4201
  br label %4413

; <label>:4413                                    ; preds = %4377, %4198
  %4414 = phi float [ %4410, %4377 ], [ %4199, %4198 ]
  %4415 = phi float [ %4411, %4377 ], [ %4200, %4198 ]
  %4416 = phi float [ %4412, %4377 ], [ %4201, %4198 ]
  %4417 = phi float [ %4404, %4377 ], [ %4202, %4198 ]
  %4418 = phi float [ %4405, %4377 ], [ %4203, %4198 ]
  %4419 = phi float [ %4406, %4377 ], [ %4204, %4198 ]
  %4420 = fcmp fast olt float %4098, 1.000000e+00
  br i1 %4420, label %4421, label %5239, !dx.controlflow.hints !78

; <label>:4421                                    ; preds = %4413
  %4422 = extractvalue %dx.types.CBufRet.f32 %4054, 2
  %4423 = fadd fast float %4422, %120
  %4424 = fmul fast float %4034, 3.200000e+01
  %4425 = fmul fast float %4035, 3.200000e+01
  %4426 = fadd fast float %4057, %4424
  %4427 = fadd fast float %4058, %4425
  %4428 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4429 = extractvalue %dx.types.CBufRet.f32 %4428, 0
  %4430 = extractvalue %dx.types.CBufRet.f32 %4428, 1
  %4431 = fsub fast float %4426, %4429
  %4432 = fsub fast float %4427, %4430
  %4433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4434 = extractvalue %dx.types.CBufRet.f32 %4433, 0
  %4435 = extractvalue %dx.types.CBufRet.f32 %4433, 1
  %4436 = fmul fast float %4431, %4434
  %4437 = fmul fast float %4432, %4435
  %4438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4439 = extractvalue %dx.types.CBufRet.f32 %4438, 0
  %4440 = fmul fast float %4436, %4439
  %4441 = extractvalue %dx.types.CBufRet.f32 %4438, 1
  %4442 = fadd fast float %4440, %4441
  %4443 = extractvalue %dx.types.CBufRet.f32 %4438, 2
  %4444 = fmul fast float %4443, %4437
  %4445 = extractvalue %dx.types.CBufRet.f32 %4438, 3
  %4446 = fadd fast float %4444, %4445
  %4447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %35, float %4442, float %4446, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4448 = extractvalue %dx.types.ResRet.f32 %4447, 0
  %4449 = extractvalue %dx.types.ResRet.f32 %4447, 1
  %4450 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4451 = extractvalue %dx.types.CBufRet.f32 %4450, 1
  %4452 = extractvalue %dx.types.CBufRet.f32 %4450, 0
  %4453 = fsub fast float %4451, %4452
  %4454 = fmul fast float %4453, %4448
  %4455 = fadd fast float %4454, %4452
  %4456 = extractvalue %dx.types.CBufRet.f32 %4450, 3
  %4457 = extractvalue %dx.types.CBufRet.f32 %4450, 2
  %4458 = fsub fast float %4456, %4457
  %4459 = fmul fast float %4458, %4449
  %4460 = fadd fast float %4459, %4457
  %4461 = fsub fast float %4423, %4455
  %4462 = fsub fast float %4460, %4455
  %4463 = fdiv fast float %4461, %4462
  %4464 = call float @dx.op.unary.f32(i32 7, float %4463)  ; Saturate(value)
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 0
  %4467 = fmul fast float %4466, %4464
  %4468 = extractvalue %dx.types.CBufRet.f32 %4465, 1
  %4469 = fadd fast float %4467, %4468
  %4470 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %35, float %4442, float %4446, float %4469, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4471 = extractvalue %dx.types.ResRet.f32 %4470, 0
  %4472 = extractvalue %dx.types.ResRet.f32 %4470, 1
  %4473 = extractvalue %dx.types.ResRet.f32 %4470, 2
  %4474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4475 = extractvalue %dx.types.CBufRet.f32 %4474, 0
  %4476 = extractvalue %dx.types.CBufRet.f32 %4474, 1
  %4477 = extractvalue %dx.types.CBufRet.f32 %4474, 2
  %4478 = fmul fast float %4475, %4471
  %4479 = fmul fast float %4476, %4472
  %4480 = fmul fast float %4477, %4473
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 0
  %4483 = extractvalue %dx.types.CBufRet.f32 %4481, 1
  %4484 = extractvalue %dx.types.CBufRet.f32 %4481, 2
  %4485 = fadd fast float %4478, %4482
  %4486 = fadd fast float %4479, %4483
  %4487 = fadd fast float %4480, %4484
  %4488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.f32 %4488, 0
  %4490 = fmul fast float %4489, %4436
  %4491 = extractvalue %dx.types.CBufRet.f32 %4488, 1
  %4492 = fadd fast float %4490, %4491
  %4493 = extractvalue %dx.types.CBufRet.f32 %4488, 2
  %4494 = fmul fast float %4493, %4437
  %4495 = extractvalue %dx.types.CBufRet.f32 %4488, 3
  %4496 = fadd fast float %4494, %4495
  %4497 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4498 = extractvalue %dx.types.CBufRet.f32 %4497, 0
  %4499 = extractvalue %dx.types.CBufRet.f32 %4497, 1
  %4500 = extractvalue %dx.types.CBufRet.f32 %4497, 2
  %4501 = extractvalue %dx.types.CBufRet.f32 %4497, 3
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 0
  %4504 = extractvalue %dx.types.CBufRet.f32 %4502, 1
  %4505 = extractvalue %dx.types.CBufRet.f32 %4502, 2
  %4506 = extractvalue %dx.types.CBufRet.f32 %4502, 3
  %4507 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %35, float %4492, float %4496, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 0
  %4509 = extractvalue %dx.types.ResRet.f32 %4507, 1
  %4510 = extractvalue %dx.types.ResRet.f32 %4507, 2
  %4511 = extractvalue %dx.types.ResRet.f32 %4507, 3
  %4512 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %35, float %4492, float %4496, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4513 = extractvalue %dx.types.ResRet.f32 %4512, 0
  %4514 = extractvalue %dx.types.ResRet.f32 %4512, 1
  %4515 = extractvalue %dx.types.ResRet.f32 %4512, 2
  %4516 = extractvalue %dx.types.ResRet.f32 %4512, 3
  %4517 = fmul fast float %4508, %4485
  %4518 = fmul fast float %4513, %4485
  %4519 = fmul fast float %4515, %4485
  %4520 = fmul fast float %4511, %4485
  %4521 = fadd fast float %4517, %4498
  %4522 = fadd fast float %4518, %4499
  %4523 = fadd fast float %4519, %4500
  %4524 = fadd fast float %4520, %4501
  %4525 = fmul fast float %4509, %4485
  %4526 = fmul fast float %4514, %4485
  %4527 = fadd fast float %4525, %4503
  %4528 = fadd fast float %4526, %4504
  %4529 = fmul fast float %4510, %4485
  %4530 = fmul fast float %4516, %4485
  %4531 = fadd fast float %4529, %4505
  %4532 = fadd fast float %4530, %4506
  %4533 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %35, float %4492, float %4496, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4534 = extractvalue %dx.types.ResRet.f32 %4533, 0
  %4535 = extractvalue %dx.types.ResRet.f32 %4533, 1
  %4536 = extractvalue %dx.types.ResRet.f32 %4533, 2
  %4537 = extractvalue %dx.types.ResRet.f32 %4533, 3
  %4538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %35, float %4492, float %4496, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4539 = extractvalue %dx.types.ResRet.f32 %4538, 0
  %4540 = extractvalue %dx.types.ResRet.f32 %4538, 1
  %4541 = extractvalue %dx.types.ResRet.f32 %4538, 2
  %4542 = extractvalue %dx.types.ResRet.f32 %4538, 3
  %4543 = fmul fast float %4534, %4486
  %4544 = fmul fast float %4539, %4486
  %4545 = fmul fast float %4541, %4486
  %4546 = fmul fast float %4537, %4486
  %4547 = fadd fast float %4521, %4543
  %4548 = fadd fast float %4522, %4544
  %4549 = fadd fast float %4523, %4545
  %4550 = fadd fast float %4524, %4546
  %4551 = fmul fast float %4535, %4486
  %4552 = fmul fast float %4540, %4486
  %4553 = fadd fast float %4527, %4551
  %4554 = fadd fast float %4528, %4552
  %4555 = fmul fast float %4536, %4486
  %4556 = fmul fast float %4542, %4486
  %4557 = fadd fast float %4531, %4555
  %4558 = fadd fast float %4532, %4556
  %4559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %35, float %4492, float %4496, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4560 = extractvalue %dx.types.ResRet.f32 %4559, 0
  %4561 = extractvalue %dx.types.ResRet.f32 %4559, 1
  %4562 = extractvalue %dx.types.ResRet.f32 %4559, 2
  %4563 = extractvalue %dx.types.ResRet.f32 %4559, 3
  %4564 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %35, float %4492, float %4496, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4565 = extractvalue %dx.types.ResRet.f32 %4564, 0
  %4566 = extractvalue %dx.types.ResRet.f32 %4564, 1
  %4567 = extractvalue %dx.types.ResRet.f32 %4564, 2
  %4568 = extractvalue %dx.types.ResRet.f32 %4564, 3
  %4569 = fmul fast float %4560, %4487
  %4570 = fmul fast float %4565, %4487
  %4571 = fmul fast float %4567, %4487
  %4572 = fmul fast float %4563, %4487
  %4573 = fadd fast float %4547, %4569
  %4574 = fadd fast float %4548, %4570
  %4575 = fadd fast float %4549, %4571
  %4576 = fadd fast float %4550, %4572
  %4577 = fmul fast float %4561, %4487
  %4578 = fmul fast float %4566, %4487
  %4579 = fadd fast float %4553, %4577
  %4580 = fadd fast float %4554, %4578
  %4581 = fmul fast float %4562, %4487
  %4582 = fmul fast float %4568, %4487
  %4583 = fadd fast float %4557, %4581
  %4584 = fadd fast float %4558, %4582
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 0
  %4587 = fsub fast float %4057, %4586
  %4588 = fsub fast float %4429, %4057
  %4589 = call float @dx.op.binary.f32(i32 35, float %4588, float %4587)  ; FMax(a,b)
  %4590 = extractvalue %dx.types.CBufRet.f32 %4585, 1
  %4591 = fsub fast float %4058, %4590
  %4592 = fsub fast float %4430, %4058
  %4593 = call float @dx.op.binary.f32(i32 35, float %4592, float %4591)  ; FMax(a,b)
  %4594 = call float @dx.op.binary.f32(i32 35, float %4589, float %4593)  ; FMax(a,b)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4433, 3
  %4596 = fmul fast float %4595, %4594
  %4597 = call float @dx.op.unary.f32(i32 7, float %4596)  ; Saturate(value)
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 0
  %4600 = extractvalue %dx.types.CBufRet.f32 %4598, 1
  %4601 = extractvalue %dx.types.CBufRet.f32 %4598, 2
  %4602 = extractvalue %dx.types.CBufRet.f32 %4598, 3
  %4603 = fsub fast float %4599, %4573
  %4604 = fsub fast float %4600, %4574
  %4605 = fsub fast float %4601, %4575
  %4606 = fsub fast float %4602, %4576
  %4607 = fmul fast float %4603, %4597
  %4608 = fmul fast float %4604, %4597
  %4609 = fmul fast float %4605, %4597
  %4610 = fmul fast float %4606, %4597
  %4611 = fadd fast float %4607, %4573
  %4612 = fadd fast float %4608, %4574
  %4613 = fadd fast float %4609, %4575
  %4614 = fadd fast float %4610, %4576
  %4615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4616 = extractvalue %dx.types.CBufRet.f32 %4615, 0
  %4617 = extractvalue %dx.types.CBufRet.f32 %4615, 1
  %4618 = fsub fast float %4616, %4579
  %4619 = fsub fast float %4617, %4580
  %4620 = fmul fast float %4618, %4597
  %4621 = fmul fast float %4619, %4597
  %4622 = fadd fast float %4620, %4579
  %4623 = fadd fast float %4621, %4580
  %4624 = extractvalue %dx.types.CBufRet.f32 %4615, 2
  %4625 = extractvalue %dx.types.CBufRet.f32 %4615, 3
  %4626 = fsub fast float %4624, %4583
  %4627 = fsub fast float %4625, %4584
  %4628 = fmul fast float %4626, %4597
  %4629 = fmul fast float %4627, %4597
  %4630 = fadd fast float %4628, %4583
  %4631 = fadd fast float %4629, %4584
  %4632 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4633 = extractvalue %dx.types.CBufRet.f32 %4632, 0
  %4634 = fmul fast float %4633, %4611
  %4635 = fmul fast float %4633, %4612
  %4636 = fmul fast float %4633, %4613
  %4637 = fmul fast float %4633, %4614
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 0
  %4640 = fmul fast float %4639, %4622
  %4641 = fmul fast float %4639, %4623
  %4642 = fadd fast float %4640, %4634
  %4643 = fadd fast float %4641, %4636
  %4644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4645 = extractvalue %dx.types.CBufRet.f32 %4644, 0
  %4646 = fmul fast float %4645, %4630
  %4647 = fmul fast float %4645, %4631
  %4648 = fadd fast float %4642, %4646
  %4649 = fadd fast float %4643, %4647
  %4650 = extractvalue %dx.types.CBufRet.f32 %4632, 1
  %4651 = fmul fast float %4650, %4611
  %4652 = fmul fast float %4650, %4612
  %4653 = fmul fast float %4650, %4613
  %4654 = fmul fast float %4650, %4614
  %4655 = extractvalue %dx.types.CBufRet.f32 %4638, 1
  %4656 = fmul fast float %4655, %4622
  %4657 = fmul fast float %4655, %4623
  %4658 = fadd fast float %4656, %4651
  %4659 = fadd fast float %4657, %4653
  %4660 = extractvalue %dx.types.CBufRet.f32 %4644, 1
  %4661 = fmul fast float %4660, %4630
  %4662 = fmul fast float %4660, %4631
  %4663 = fadd fast float %4658, %4661
  %4664 = fadd fast float %4659, %4662
  %4665 = extractvalue %dx.types.CBufRet.f32 %4632, 2
  %4666 = fmul fast float %4665, %4611
  %4667 = fmul fast float %4665, %4612
  %4668 = fmul fast float %4665, %4613
  %4669 = fmul fast float %4665, %4614
  %4670 = extractvalue %dx.types.CBufRet.f32 %4638, 2
  %4671 = fmul fast float %4670, %4622
  %4672 = fmul fast float %4670, %4623
  %4673 = fadd fast float %4671, %4666
  %4674 = fadd fast float %4672, %4668
  %4675 = extractvalue %dx.types.CBufRet.f32 %4644, 2
  %4676 = fmul fast float %4675, %4630
  %4677 = fmul fast float %4675, %4631
  %4678 = fadd fast float %4673, %4676
  %4679 = fadd fast float %4674, %4677
  %4680 = fmul fast float %4667, %4667
  %4681 = fmul fast float %4679, %4679
  %4682 = fmul fast float %4669, %4669
  %4683 = fadd fast float %4682, %4680
  %4684 = fadd fast float %4683, %4681
  %4685 = call float @dx.op.unary.f32(i32 24, float %4684)  ; Sqrt(value)
  %4686 = fcmp fast ugt float %4685, 0.000000e+00
  br i1 %4686, label %4687, label %4702

; <label>:4687                                    ; preds = %4421
  %4688 = fsub fast float -0.000000e+00, %4669
  %4689 = fdiv fast float %4688, %4685
  %4690 = fsub fast float -0.000000e+00, %4667
  %4691 = fdiv fast float %4690, %4685
  %4692 = fdiv fast float %4679, %4685
  %4693 = fmul fast float %4678, 0x3FE279A760000000
  %4694 = fmul fast float %4691, %4667
  %4695 = fmul fast float %4692, %4679
  %4696 = fmul fast float %4689, %4669
  %4697 = fadd fast float %4694, %4696
  %4698 = fsub fast float %4697, %4695
  %4699 = call float @dx.op.unary.f32(i32 6, float %4698)  ; FAbs(value)
  %4700 = fadd fast float %4699, 0x3DDB7CDFE0000000
  %4701 = fdiv fast float %4693, %4700
  br label %4702

; <label>:4702                                    ; preds = %4687, %4421
  %4703 = phi float [ %4701, %4687 ], [ 1.000000e+00, %4421 ]
  %4704 = fmul fast float %4652, %4652
  %4705 = fmul fast float %4664, %4664
  %4706 = fmul fast float %4654, %4654
  %4707 = fadd fast float %4706, %4704
  %4708 = fadd fast float %4707, %4705
  %4709 = call float @dx.op.unary.f32(i32 24, float %4708)  ; Sqrt(value)
  %4710 = fcmp fast ugt float %4709, 0.000000e+00
  br i1 %4710, label %4711, label %4726

; <label>:4711                                    ; preds = %4702
  %4712 = fsub fast float -0.000000e+00, %4654
  %4713 = fdiv fast float %4712, %4709
  %4714 = fsub fast float -0.000000e+00, %4652
  %4715 = fdiv fast float %4714, %4709
  %4716 = fdiv fast float %4664, %4709
  %4717 = fmul fast float %4663, 0x3FE279A760000000
  %4718 = fmul fast float %4715, %4652
  %4719 = fmul fast float %4716, %4664
  %4720 = fmul fast float %4713, %4654
  %4721 = fadd fast float %4718, %4720
  %4722 = fsub fast float %4721, %4719
  %4723 = call float @dx.op.unary.f32(i32 6, float %4722)  ; FAbs(value)
  %4724 = fadd fast float %4723, 0x3DDB7CDFE0000000
  %4725 = fdiv fast float %4717, %4724
  br label %4726

; <label>:4726                                    ; preds = %4711, %4702
  %4727 = phi float [ %4725, %4711 ], [ 1.000000e+00, %4702 ]
  %4728 = call float @dx.op.binary.f32(i32 36, float %4727, float %4703)  ; FMin(a,b)
  %4729 = fmul fast float %4635, %4635
  %4730 = fmul fast float %4649, %4649
  %4731 = fmul fast float %4637, %4637
  %4732 = fadd fast float %4731, %4729
  %4733 = fadd fast float %4732, %4730
  %4734 = call float @dx.op.unary.f32(i32 24, float %4733)  ; Sqrt(value)
  %4735 = fcmp fast ugt float %4734, 0.000000e+00
  br i1 %4735, label %4736, label %4751

; <label>:4736                                    ; preds = %4726
  %4737 = fsub fast float -0.000000e+00, %4637
  %4738 = fdiv fast float %4737, %4734
  %4739 = fsub fast float -0.000000e+00, %4635
  %4740 = fdiv fast float %4739, %4734
  %4741 = fdiv fast float %4649, %4734
  %4742 = fmul fast float %4648, 0x3FE279A760000000
  %4743 = fmul fast float %4740, %4635
  %4744 = fmul fast float %4741, %4649
  %4745 = fmul fast float %4738, %4637
  %4746 = fadd fast float %4743, %4745
  %4747 = fsub fast float %4746, %4744
  %4748 = call float @dx.op.unary.f32(i32 6, float %4747)  ; FAbs(value)
  %4749 = fadd fast float %4748, 0x3DDB7CDFE0000000
  %4750 = fdiv fast float %4742, %4749
  br label %4751

; <label>:4751                                    ; preds = %4736, %4726
  %4752 = phi float [ %4750, %4736 ], [ 1.000000e+00, %4726 ]
  %4753 = call float @dx.op.binary.f32(i32 36, float %4752, float %4728)  ; FMin(a,b)
  %4754 = call float @dx.op.unary.f32(i32 7, float %4753)  ; Saturate(value)
  %4755 = fcmp fast olt float %4754, 1.000000e+00
  br i1 %4755, label %4756, label %4766

; <label>:4756                                    ; preds = %4751
  %4757 = fmul fast float %4754, %4635
  %4758 = fmul fast float %4754, %4649
  %4759 = fmul fast float %4754, %4637
  %4760 = fmul fast float %4754, %4652
  %4761 = fmul fast float %4754, %4664
  %4762 = fmul fast float %4754, %4654
  %4763 = fmul fast float %4754, %4667
  %4764 = fmul fast float %4754, %4679
  %4765 = fmul fast float %4754, %4669
  br label %4766

; <label>:4766                                    ; preds = %4756, %4751
  %4767 = phi float [ %4763, %4756 ], [ %4667, %4751 ]
  %4768 = phi float [ %4764, %4756 ], [ %4679, %4751 ]
  %4769 = phi float [ %4765, %4756 ], [ %4669, %4751 ]
  %4770 = phi float [ %4760, %4756 ], [ %4652, %4751 ]
  %4771 = phi float [ %4761, %4756 ], [ %4664, %4751 ]
  %4772 = phi float [ %4762, %4756 ], [ %4654, %4751 ]
  %4773 = phi float [ %4757, %4756 ], [ %4635, %4751 ]
  %4774 = phi float [ %4758, %4756 ], [ %4649, %4751 ]
  %4775 = phi float [ %4759, %4756 ], [ %4637, %4751 ]
  %4776 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4648)  ; FMax(a,b)
  %4777 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4663)  ; FMax(a,b)
  %4778 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4678)  ; FMax(a,b)
  %4779 = fcmp fast oge float %4436, 0.000000e+00
  %4780 = and i1 %4779, %4207
  %4781 = fcmp fast ole float %4436, 1.000000e+00
  %4782 = and i1 %4781, %4780
  %4783 = fcmp fast oge float %4437, 0.000000e+00
  %4784 = and i1 %4783, %4782
  %4785 = fcmp fast ole float %4437, 1.000000e+00
  %4786 = and i1 %4785, %4784
  br i1 %4786, label %4787, label %4932, !dx.controlflow.hints !79

; <label>:4787                                    ; preds = %4766
  %4788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4789 = extractvalue %dx.types.CBufRet.f32 %4788, 2
  %4790 = extractvalue %dx.types.CBufRet.f32 %4788, 3
  %4791 = fmul fast float %4789, %4436
  %4792 = fmul fast float %4790, %4437
  %4793 = call float @dx.op.unary.f32(i32 27, float %4791)  ; Round_ni(value)
  %4794 = call float @dx.op.unary.f32(i32 27, float %4792)  ; Round_ni(value)
  %4795 = fptosi float %4793 to i32
  %4796 = fptosi float %4794 to i32
  %4797 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %4795, i32 %4796, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4798 = extractvalue %dx.types.ResRet.i32 %4797, 0
  %4799 = and i32 %4798, 65535
  %4800 = lshr i32 %4798, 16
  %4801 = icmp eq i32 %4799, 65535
  br i1 %4801, label %4838, label %4802

; <label>:4802                                    ; preds = %4787
  %4803 = extractvalue %dx.types.CBufRet.f32 %4205, 1
  %4804 = extractvalue %dx.types.CBufRet.f32 %4788, 0
  %4805 = extractvalue %dx.types.CBufRet.f32 %4788, 1
  %4806 = fmul fast float %4804, %4436
  %4807 = fmul fast float %4805, %4437
  %4808 = fmul fast float %4806, 1.250000e-01
  %4809 = fmul fast float %4807, 1.250000e-01
  %4810 = call float @dx.op.unary.f32(i32 27, float %4808)  ; Round_ni(value)
  %4811 = call float @dx.op.unary.f32(i32 27, float %4809)  ; Round_ni(value)
  %4812 = fmul fast float %4810, 8.000000e+00
  %4813 = fmul fast float %4811, 8.000000e+00
  %4814 = and i32 %4798, 255
  %4815 = lshr i32 %4798, 8
  %4816 = and i32 %4815, 255
  %4817 = mul nuw nsw i32 %4814, 9
  %4818 = uitofp i32 %4817 to float
  %4819 = mul nuw nsw i32 %4816, 9
  %4820 = uitofp i32 %4819 to float
  %4821 = fadd fast float %4818, 5.000000e-01
  %4822 = fadd fast float %4821, %4806
  %4823 = fsub fast float %4822, %4812
  %4824 = fadd fast float %4820, 5.000000e-01
  %4825 = fadd fast float %4824, %4807
  %4826 = fsub fast float %4825, %4813
  %4827 = fdiv fast float %4823, %4206
  %4828 = fdiv fast float %4826, %4803
  %4829 = fmul fast float %4464, 4.375000e-01
  %4830 = fadd fast float %4829, 3.125000e-02
  %4831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %35, float %4827, float %4828, float %4830, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4832 = extractvalue %dx.types.ResRet.f32 %4831, 0
  %4833 = extractvalue %dx.types.ResRet.f32 %4831, 1
  %4834 = extractvalue %dx.types.ResRet.f32 %4831, 2
  %4835 = fadd fast float %4832, %4776
  %4836 = fadd fast float %4833, %4777
  %4837 = fadd fast float %4834, %4778
  br label %4838

; <label>:4838                                    ; preds = %4802, %4787
  %4839 = phi float [ %4837, %4802 ], [ %4778, %4787 ]
  %4840 = phi float [ %4836, %4802 ], [ %4777, %4787 ]
  %4841 = phi float [ %4835, %4802 ], [ %4776, %4787 ]
  %4842 = icmp eq i32 %4800, 65535
  br i1 %4842, label %4932, label %4843

; <label>:4843                                    ; preds = %4838
  %4844 = extractvalue %dx.types.CBufRet.f32 %4205, 1
  %4845 = extractvalue %dx.types.CBufRet.f32 %4788, 0
  %4846 = extractvalue %dx.types.CBufRet.f32 %4788, 1
  %4847 = fmul fast float %4845, %4436
  %4848 = fmul fast float %4846, %4437
  %4849 = fmul fast float %4847, 1.250000e-01
  %4850 = fmul fast float %4848, 1.250000e-01
  %4851 = call float @dx.op.unary.f32(i32 27, float %4849)  ; Round_ni(value)
  %4852 = call float @dx.op.unary.f32(i32 27, float %4850)  ; Round_ni(value)
  %4853 = fmul fast float %4851, 8.000000e+00
  %4854 = fmul fast float %4852, 8.000000e+00
  %4855 = fsub fast float %4847, %4853
  %4856 = fsub fast float %4848, %4854
  %4857 = fadd fast float %4855, 5.000000e-01
  %4858 = fadd fast float %4856, 5.000000e-01
  %4859 = and i32 %4800, 255
  %4860 = lshr i32 %4798, 24
  %4861 = mul nuw nsw i32 %4859, 9
  %4862 = uitofp i32 %4861 to float
  %4863 = mul nuw nsw i32 %4860, 9
  %4864 = uitofp i32 %4863 to float
  %4865 = fadd fast float %4857, %4862
  %4866 = fadd fast float %4858, %4864
  %4867 = fdiv fast float %4865, %4206
  %4868 = fdiv fast float %4866, %4844
  %4869 = fmul fast float %4464, 4.375000e-01
  %4870 = fadd fast float %4869, 3.125000e-02
  %4871 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %35, float %4867, float %4868, float %4870, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4872 = extractvalue %dx.types.ResRet.f32 %4871, 0
  %4873 = extractvalue %dx.types.ResRet.f32 %4871, 1
  %4874 = extractvalue %dx.types.ResRet.f32 %4871, 2
  %4875 = fadd fast float %4869, 5.312500e-01
  %4876 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %35, float %4867, float %4868, float %4875, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4877 = extractvalue %dx.types.ResRet.f32 %4876, 0
  %4878 = extractvalue %dx.types.ResRet.f32 %4876, 1
  %4879 = extractvalue %dx.types.ResRet.f32 %4876, 2
  %4880 = fmul fast float %4877, 2.000000e+00
  %4881 = fmul fast float %4878, 2.000000e+00
  %4882 = fmul fast float %4879, 2.000000e+00
  %4883 = fadd fast float %4880, -1.000000e+00
  %4884 = fadd fast float %4881, -1.000000e+00
  %4885 = fadd fast float %4882, -1.000000e+00
  %4886 = fmul fast float %4883, %4883
  %4887 = fmul fast float %4884, %4884
  %4888 = fadd fast float %4886, %4887
  %4889 = fmul fast float %4885, %4885
  %4890 = fadd fast float %4888, %4889
  %4891 = call float @dx.op.unary.f32(i32 24, float %4890)  ; Sqrt(value)
  %4892 = fcmp fast ogt float %4891, 0.000000e+00
  br i1 %4892, label %4893, label %4897

; <label>:4893                                    ; preds = %4843
  %4894 = fdiv fast float %4883, %4891
  %4895 = fdiv fast float %4884, %4891
  %4896 = fdiv fast float %4885, %4891
  br label %4897

; <label>:4897                                    ; preds = %4893, %4843
  %4898 = phi float [ %4894, %4893 ], [ 0.000000e+00, %4843 ]
  %4899 = phi float [ %4895, %4893 ], [ 0.000000e+00, %4843 ]
  %4900 = phi float [ %4896, %4893 ], [ 0.000000e+00, %4843 ]
  %4901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4902 = extractvalue %dx.types.CBufRet.f32 %4901, 0
  %4903 = extractvalue %dx.types.CBufRet.f32 %4901, 1
  %4904 = fsub fast float %4057, %4902
  %4905 = fsub fast float %4058, %4903
  %4906 = fmul fast float %4904, %4904
  %4907 = fmul fast float %4905, %4905
  %4908 = fadd fast float %4906, %4907
  %4909 = call float @dx.op.unary.f32(i32 24, float %4908)  ; Sqrt(value)
  %4910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.f32 %4910, 0
  %4912 = extractvalue %dx.types.CBufRet.f32 %4910, 1
  %4913 = fsub fast float %4909, %4911
  %4914 = fdiv fast float %4913, %4912
  %4915 = call float @dx.op.unary.f32(i32 7, float %4914)  ; Saturate(value)
  %4916 = fmul fast float %4915, 2.000000e+00
  %4917 = fsub fast float 3.000000e+00, %4916
  %4918 = fmul fast float %4915, %4915
  %4919 = fmul fast float %4918, %4917
  %4920 = call float @dx.op.dot3.f32(i32 55, float %4898, float %4899, float %4900, float %4034, float %4035, float %4036)  ; Dot3(ax,ay,az,bx,by,bz)
  %4921 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4920)  ; FMax(a,b)
  %4922 = fmul fast float %4921, 0x400C5BF8A0000000
  %4923 = fmul fast float %4919, %4872
  %4924 = fmul fast float %4923, %4922
  %4925 = fadd fast float %4924, %4841
  %4926 = fmul fast float %4919, %4873
  %4927 = fmul fast float %4926, %4922
  %4928 = fadd fast float %4927, %4840
  %4929 = fmul fast float %4919, %4874
  %4930 = fmul fast float %4929, %4922
  %4931 = fadd fast float %4930, %4839
  br label %4932

; <label>:4932                                    ; preds = %4897, %4838, %4766
  %4933 = phi float [ %4931, %4897 ], [ %4839, %4838 ], [ %4778, %4766 ]
  %4934 = phi float [ %4928, %4897 ], [ %4840, %4838 ], [ %4777, %4766 ]
  %4935 = phi float [ %4925, %4897 ], [ %4841, %4838 ], [ %4776, %4766 ]
  %4936 = fcmp fast ogt float %4423, %4460
  %4937 = and i1 %4779, %4936
  %4938 = and i1 %4781, %4937
  %4939 = and i1 %4783, %4938
  %4940 = and i1 %4785, %4939
  br i1 %4940, label %4941, label %4998, !dx.controlflow.hints !80

; <label>:4941                                    ; preds = %4932
  %4942 = fmul fast float %4462, 0x3FC24924A0000000
  %4943 = fsub fast float %4423, %4460
  %4944 = fdiv fast float %4943, %4942
  %4945 = call float @dx.op.unary.f32(i32 7, float %4944)  ; Saturate(value)
  %4946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4947 = extractvalue %dx.types.CBufRet.f32 %4946, 0
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 0
  %4950 = extractvalue %dx.types.CBufRet.f32 %4948, 1
  %4951 = extractvalue %dx.types.CBufRet.f32 %4948, 2
  %4952 = fsub fast float %4947, %4935
  %4953 = fsub fast float %4949, %4773
  %4954 = fsub fast float %4950, %4774
  %4955 = fsub fast float %4951, %4775
  %4956 = fmul fast float %4952, %4945
  %4957 = fmul fast float %4953, %4945
  %4958 = fmul fast float %4954, %4945
  %4959 = fmul fast float %4955, %4945
  %4960 = fadd fast float %4956, %4935
  %4961 = fadd fast float %4957, %4773
  %4962 = fadd fast float %4958, %4774
  %4963 = fadd fast float %4959, %4775
  %4964 = extractvalue %dx.types.CBufRet.f32 %4946, 1
  %4965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4966 = extractvalue %dx.types.CBufRet.f32 %4965, 0
  %4967 = extractvalue %dx.types.CBufRet.f32 %4965, 1
  %4968 = extractvalue %dx.types.CBufRet.f32 %4965, 2
  %4969 = fsub fast float %4964, %4934
  %4970 = fsub fast float %4966, %4770
  %4971 = fsub fast float %4967, %4771
  %4972 = fsub fast float %4968, %4772
  %4973 = fmul fast float %4969, %4945
  %4974 = fmul fast float %4970, %4945
  %4975 = fmul fast float %4971, %4945
  %4976 = fmul fast float %4972, %4945
  %4977 = fadd fast float %4973, %4934
  %4978 = fadd fast float %4974, %4770
  %4979 = fadd fast float %4975, %4771
  %4980 = fadd fast float %4976, %4772
  %4981 = extractvalue %dx.types.CBufRet.f32 %4946, 2
  %4982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4983 = extractvalue %dx.types.CBufRet.f32 %4982, 0
  %4984 = extractvalue %dx.types.CBufRet.f32 %4982, 1
  %4985 = extractvalue %dx.types.CBufRet.f32 %4982, 2
  %4986 = fsub fast float %4981, %4933
  %4987 = fsub fast float %4983, %4767
  %4988 = fsub fast float %4984, %4768
  %4989 = fsub fast float %4985, %4769
  %4990 = fmul fast float %4986, %4945
  %4991 = fmul fast float %4987, %4945
  %4992 = fmul fast float %4988, %4945
  %4993 = fmul fast float %4989, %4945
  %4994 = fadd fast float %4990, %4933
  %4995 = fadd fast float %4991, %4767
  %4996 = fadd fast float %4992, %4768
  %4997 = fadd fast float %4993, %4769
  br label %4998

; <label>:4998                                    ; preds = %4941, %4932
  %4999 = phi float [ %4994, %4941 ], [ %4933, %4932 ]
  %5000 = phi float [ %4995, %4941 ], [ %4767, %4932 ]
  %5001 = phi float [ %4996, %4941 ], [ %4768, %4932 ]
  %5002 = phi float [ %4997, %4941 ], [ %4769, %4932 ]
  %5003 = phi float [ %4977, %4941 ], [ %4934, %4932 ]
  %5004 = phi float [ %4978, %4941 ], [ %4770, %4932 ]
  %5005 = phi float [ %4979, %4941 ], [ %4771, %4932 ]
  %5006 = phi float [ %4980, %4941 ], [ %4772, %4932 ]
  %5007 = phi float [ %4960, %4941 ], [ %4935, %4932 ]
  %5008 = phi float [ %4961, %4941 ], [ %4773, %4932 ]
  %5009 = phi float [ %4962, %4941 ], [ %4774, %4932 ]
  %5010 = phi float [ %4963, %4941 ], [ %4775, %4932 ]
  %5011 = extractvalue %dx.types.CBufRet.f32 %4585, 3
  %5012 = fmul fast float %5011, %5007
  %5013 = fmul fast float %5011, %5003
  %5014 = fmul fast float %5011, %4999
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 3
  %5017 = fmul fast float %5012, %5016
  %5018 = fmul fast float %5013, %5016
  %5019 = fmul fast float %5014, %5016
  %5020 = fmul fast float %5008, 1.500000e+00
  %5021 = fmul fast float %5020, %5011
  %5022 = fmul fast float %5021, %5016
  %5023 = fmul fast float %5009, 1.500000e+00
  %5024 = fmul fast float %5023, %5011
  %5025 = fmul fast float %5024, %5016
  %5026 = fmul fast float %5010, 1.500000e+00
  %5027 = fmul fast float %5026, %5011
  %5028 = fmul fast float %5027, %5016
  %5029 = fmul fast float %5004, 1.500000e+00
  %5030 = fmul fast float %5029, %5011
  %5031 = fmul fast float %5030, %5016
  %5032 = fmul fast float %5005, 1.500000e+00
  %5033 = fmul fast float %5032, %5011
  %5034 = fmul fast float %5033, %5016
  %5035 = fmul fast float %5006, 1.500000e+00
  %5036 = fmul fast float %5035, %5011
  %5037 = fmul fast float %5036, %5016
  %5038 = fmul fast float %5000, 1.500000e+00
  %5039 = fmul fast float %5038, %5011
  %5040 = fmul fast float %5039, %5016
  %5041 = fmul fast float %5001, 1.500000e+00
  %5042 = fmul fast float %5041, %5011
  %5043 = fmul fast float %5042, %5016
  %5044 = fmul fast float %5002, 1.500000e+00
  %5045 = fmul fast float %5044, %5011
  %5046 = fmul fast float %5045, %5016
  %5047 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5017)  ; FMax(a,b)
  %5048 = call float @dx.op.dot3.f32(i32 55, float %5022, float %5025, float %5028, float %5022, float %5025, float %5028)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = fcmp fast oeq float %5048, 0.000000e+00
  %5050 = fcmp fast oeq float %5047, 0.000000e+00
  %5051 = or i1 %5050, %5049
  br i1 %5051, label %5081, label %5052

; <label>:5052                                    ; preds = %4998
  %5053 = fsub fast float -0.000000e+00, %5028
  %5054 = fsub fast float -0.000000e+00, %5022
  %5055 = call float @dx.op.unary.f32(i32 24, float %5048)  ; Sqrt(value)
  %5056 = fdiv fast float %5055, %5047
  %5057 = fcmp fast ogt float %5056, 0x3FFB6F8900000000
  %5058 = select i1 %5057, float 0x3FFB6F8900000000, float %5056
  %5059 = fmul fast float %5058, 0x3FE8A23460000000
  %5060 = call float @dx.op.unary.f32(i32 7, float %5059)  ; Saturate(value)
  %5061 = call float @dx.op.binary.f32(i32 35, float %5058, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5062 = fmul fast float %5060, %5047
  %5063 = fmul fast float %5061, 0x3FF279A740000000
  %5064 = fadd fast float %5063, -1.000000e+00
  %5065 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5054, float %5025, float %5053, float %5054, float %5025)  ; Dot3(ax,ay,az,bx,by,bz)
  %5066 = call float @dx.op.unary.f32(i32 25, float %5065)  ; Rsqrt(value)
  %5067 = fmul fast float %5066, %5053
  %5068 = fmul fast float %5066, %5054
  %5069 = fmul fast float %5066, %5025
  %5070 = fmul fast float %5064, %5064
  %5071 = fsub fast float 1.000000e+00, %5070
  %5072 = fmul fast float %5061, 0x40005F8BE0000000
  %5073 = fsub fast float 0x400C5BF8A0000000, %5072
  %5074 = fdiv fast float %5062, %5073
  %5075 = fmul fast float %5074, 0x3FEE31C3C0000000
  %5076 = fmul fast float %5075, %5071
  %5077 = fmul fast float %5061, 0x3FDACB7480000000
  %5078 = fadd fast float %5077, 0xBFD7347680000000
  %5079 = fmul fast float %5078, %5074
  %5080 = fmul fast float %5079, %5071
  br label %5081

; <label>:5081                                    ; preds = %5052, %4998
  %5082 = phi float [ %5067, %5052 ], [ 0.000000e+00, %4998 ]
  %5083 = phi float [ %5068, %5052 ], [ 0.000000e+00, %4998 ]
  %5084 = phi float [ %5069, %5052 ], [ 0.000000e+00, %4998 ]
  %5085 = phi float [ %5076, %5052 ], [ 0.000000e+00, %4998 ]
  %5086 = phi float [ %5080, %5052 ], [ 0.000000e+00, %4998 ]
  %5087 = call float @dx.op.dot3.f32(i32 55, float %5082, float %5083, float %5084, float %4034, float %4035, float %4036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5088 = fmul fast float %5087, %5087
  %5089 = fmul fast float %5088, 0x3FEE471020000000
  %5090 = fadd fast float %5089, 0xBFD42F6020000000
  %5091 = fmul fast float %5047, 0x3FD20DD760000000
  %5092 = fmul fast float %5090, %5086
  %5093 = fmul fast float %5085, 0x3FDF454380000000
  %5094 = fmul fast float %5093, %5087
  %5095 = fadd fast float %5094, %5091
  %5096 = fadd fast float %5095, %5092
  %5097 = call float @dx.op.dot3.f32(i32 55, float %5082, float %5083, float %5084, float %4047, float %4048, float %4049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5098 = fmul fast float %5097, 0x3FDF454380000000
  %5099 = fmul fast float %5097, %5097
  %5100 = fmul fast float %5099, 0x3FEE471020000000
  %5101 = fadd fast float %5100, 0xBFD42F6020000000
  %5102 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5085, float %5086, float 0x3FD20DD760000000, float %5098, float %5101)  ; Dot3(ax,ay,az,bx,by,bz)
  %5103 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5018)  ; FMax(a,b)
  %5104 = call float @dx.op.dot3.f32(i32 55, float %5031, float %5034, float %5037, float %5031, float %5034, float %5037)  ; Dot3(ax,ay,az,bx,by,bz)
  %5105 = fcmp fast oeq float %5104, 0.000000e+00
  %5106 = fcmp fast oeq float %5103, 0.000000e+00
  %5107 = or i1 %5106, %5105
  br i1 %5107, label %5137, label %5108

; <label>:5108                                    ; preds = %5081
  %5109 = fsub fast float -0.000000e+00, %5037
  %5110 = fsub fast float -0.000000e+00, %5031
  %5111 = call float @dx.op.unary.f32(i32 24, float %5104)  ; Sqrt(value)
  %5112 = fdiv fast float %5111, %5103
  %5113 = fcmp fast ogt float %5112, 0x3FFB6F8900000000
  %5114 = select i1 %5113, float 0x3FFB6F8900000000, float %5112
  %5115 = fmul fast float %5114, 0x3FE8A23460000000
  %5116 = call float @dx.op.unary.f32(i32 7, float %5115)  ; Saturate(value)
  %5117 = call float @dx.op.binary.f32(i32 35, float %5114, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5118 = fmul fast float %5116, %5103
  %5119 = fmul fast float %5117, 0x3FF279A740000000
  %5120 = fadd fast float %5119, -1.000000e+00
  %5121 = call float @dx.op.dot3.f32(i32 55, float %5109, float %5110, float %5034, float %5109, float %5110, float %5034)  ; Dot3(ax,ay,az,bx,by,bz)
  %5122 = call float @dx.op.unary.f32(i32 25, float %5121)  ; Rsqrt(value)
  %5123 = fmul fast float %5122, %5109
  %5124 = fmul fast float %5122, %5110
  %5125 = fmul fast float %5122, %5034
  %5126 = fmul fast float %5120, %5120
  %5127 = fsub fast float 1.000000e+00, %5126
  %5128 = fmul fast float %5117, 0x40005F8BE0000000
  %5129 = fsub fast float 0x400C5BF8A0000000, %5128
  %5130 = fdiv fast float %5118, %5129
  %5131 = fmul fast float %5130, 0x3FEE31C3C0000000
  %5132 = fmul fast float %5131, %5127
  %5133 = fmul fast float %5117, 0x3FDACB7480000000
  %5134 = fadd fast float %5133, 0xBFD7347680000000
  %5135 = fmul fast float %5134, %5130
  %5136 = fmul fast float %5135, %5127
  br label %5137

; <label>:5137                                    ; preds = %5108, %5081
  %5138 = phi float [ %5123, %5108 ], [ 0.000000e+00, %5081 ]
  %5139 = phi float [ %5124, %5108 ], [ 0.000000e+00, %5081 ]
  %5140 = phi float [ %5125, %5108 ], [ 0.000000e+00, %5081 ]
  %5141 = phi float [ %5132, %5108 ], [ 0.000000e+00, %5081 ]
  %5142 = phi float [ %5136, %5108 ], [ 0.000000e+00, %5081 ]
  %5143 = call float @dx.op.dot3.f32(i32 55, float %5138, float %5139, float %5140, float %4034, float %4035, float %4036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5144 = fmul fast float %5143, %5143
  %5145 = fmul fast float %5144, 0x3FEE471020000000
  %5146 = fadd fast float %5145, 0xBFD42F6020000000
  %5147 = fmul fast float %5103, 0x3FD20DD760000000
  %5148 = fmul fast float %5146, %5142
  %5149 = fmul fast float %5141, 0x3FDF454380000000
  %5150 = fmul fast float %5149, %5143
  %5151 = fadd fast float %5150, %5147
  %5152 = fadd fast float %5151, %5148
  %5153 = call float @dx.op.dot3.f32(i32 55, float %5138, float %5139, float %5140, float %4047, float %4048, float %4049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5154 = fmul fast float %5153, 0x3FDF454380000000
  %5155 = fmul fast float %5153, %5153
  %5156 = fmul fast float %5155, 0x3FEE471020000000
  %5157 = fadd fast float %5156, 0xBFD42F6020000000
  %5158 = call float @dx.op.dot3.f32(i32 55, float %5103, float %5141, float %5142, float 0x3FD20DD760000000, float %5154, float %5157)  ; Dot3(ax,ay,az,bx,by,bz)
  %5159 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5019)  ; FMax(a,b)
  %5160 = call float @dx.op.dot3.f32(i32 55, float %5040, float %5043, float %5046, float %5040, float %5043, float %5046)  ; Dot3(ax,ay,az,bx,by,bz)
  %5161 = fcmp fast oeq float %5160, 0.000000e+00
  %5162 = fcmp fast oeq float %5159, 0.000000e+00
  %5163 = or i1 %5162, %5161
  br i1 %5163, label %5193, label %5164

; <label>:5164                                    ; preds = %5137
  %5165 = fsub fast float -0.000000e+00, %5046
  %5166 = fsub fast float -0.000000e+00, %5040
  %5167 = call float @dx.op.unary.f32(i32 24, float %5160)  ; Sqrt(value)
  %5168 = fdiv fast float %5167, %5159
  %5169 = fcmp fast ogt float %5168, 0x3FFB6F8900000000
  %5170 = select i1 %5169, float 0x3FFB6F8900000000, float %5168
  %5171 = fmul fast float %5170, 0x3FE8A23460000000
  %5172 = call float @dx.op.unary.f32(i32 7, float %5171)  ; Saturate(value)
  %5173 = call float @dx.op.binary.f32(i32 35, float %5170, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5174 = fmul fast float %5172, %5159
  %5175 = fmul fast float %5173, 0x3FF279A740000000
  %5176 = fadd fast float %5175, -1.000000e+00
  %5177 = call float @dx.op.dot3.f32(i32 55, float %5165, float %5166, float %5043, float %5165, float %5166, float %5043)  ; Dot3(ax,ay,az,bx,by,bz)
  %5178 = call float @dx.op.unary.f32(i32 25, float %5177)  ; Rsqrt(value)
  %5179 = fmul fast float %5178, %5165
  %5180 = fmul fast float %5178, %5166
  %5181 = fmul fast float %5178, %5043
  %5182 = fmul fast float %5176, %5176
  %5183 = fsub fast float 1.000000e+00, %5182
  %5184 = fmul fast float %5173, 0x40005F8BE0000000
  %5185 = fsub fast float 0x400C5BF8A0000000, %5184
  %5186 = fdiv fast float %5174, %5185
  %5187 = fmul fast float %5186, 0x3FEE31C3C0000000
  %5188 = fmul fast float %5187, %5183
  %5189 = fmul fast float %5173, 0x3FDACB7480000000
  %5190 = fadd fast float %5189, 0xBFD7347680000000
  %5191 = fmul fast float %5190, %5186
  %5192 = fmul fast float %5191, %5183
  br label %5193

; <label>:5193                                    ; preds = %5164, %5137
  %5194 = phi float [ %5179, %5164 ], [ 0.000000e+00, %5137 ]
  %5195 = phi float [ %5180, %5164 ], [ 0.000000e+00, %5137 ]
  %5196 = phi float [ %5181, %5164 ], [ 0.000000e+00, %5137 ]
  %5197 = phi float [ %5188, %5164 ], [ 0.000000e+00, %5137 ]
  %5198 = phi float [ %5192, %5164 ], [ 0.000000e+00, %5137 ]
  %5199 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5195, float %5196, float %4034, float %4035, float %4036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5200 = fmul fast float %5199, %5199
  %5201 = fmul fast float %5200, 0x3FEE471020000000
  %5202 = fadd fast float %5201, 0xBFD42F6020000000
  %5203 = fmul fast float %5159, 0x3FD20DD760000000
  %5204 = fmul fast float %5202, %5198
  %5205 = fmul fast float %5197, 0x3FDF454380000000
  %5206 = fmul fast float %5205, %5199
  %5207 = fadd fast float %5206, %5203
  %5208 = fadd fast float %5207, %5204
  %5209 = call float @dx.op.dot3.f32(i32 55, float %5194, float %5195, float %5196, float %4047, float %4048, float %4049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5210 = fmul fast float %5209, 0x3FDF454380000000
  %5211 = fmul fast float %5209, %5209
  %5212 = fmul fast float %5211, 0x3FEE471020000000
  %5213 = fadd fast float %5212, 0xBFD42F6020000000
  %5214 = call float @dx.op.dot3.f32(i32 55, float %5159, float %5197, float %5198, float 0x3FD20DD760000000, float %5210, float %5213)  ; Dot3(ax,ay,az,bx,by,bz)
  %5215 = call float @dx.op.binary.f32(i32 35, float %5096, float 0.000000e+00)  ; FMax(a,b)
  %5216 = call float @dx.op.binary.f32(i32 35, float %5152, float 0.000000e+00)  ; FMax(a,b)
  %5217 = call float @dx.op.binary.f32(i32 35, float %5208, float 0.000000e+00)  ; FMax(a,b)
  %5218 = call float @dx.op.binary.f32(i32 35, float %5102, float 0.000000e+00)  ; FMax(a,b)
  %5219 = call float @dx.op.binary.f32(i32 35, float %5158, float 0.000000e+00)  ; FMax(a,b)
  %5220 = call float @dx.op.binary.f32(i32 35, float %5214, float 0.000000e+00)  ; FMax(a,b)
  %5221 = fsub fast float %4417, %5215
  %5222 = fsub fast float %4418, %5216
  %5223 = fsub fast float %4419, %5217
  %5224 = fmul fast float %5221, %4098
  %5225 = fmul fast float %5222, %4098
  %5226 = fmul fast float %5223, %4098
  %5227 = fadd fast float %5224, %5215
  %5228 = fadd fast float %5225, %5216
  %5229 = fadd fast float %5226, %5217
  %5230 = fsub fast float %4414, %5218
  %5231 = fsub fast float %4415, %5219
  %5232 = fsub fast float %4416, %5220
  %5233 = fmul fast float %5230, %4098
  %5234 = fmul fast float %5231, %4098
  %5235 = fmul fast float %5232, %4098
  %5236 = fadd fast float %5233, %5218
  %5237 = fadd fast float %5234, %5219
  %5238 = fadd fast float %5235, %5220
  br label %5239

; <label>:5239                                    ; preds = %5193, %4413
  %5240 = phi float [ %5236, %5193 ], [ %4414, %4413 ]
  %5241 = phi float [ %5237, %5193 ], [ %4415, %4413 ]
  %5242 = phi float [ %5238, %5193 ], [ %4416, %4413 ]
  %5243 = phi float [ %5227, %5193 ], [ %4417, %4413 ]
  %5244 = phi float [ %5228, %5193 ], [ %4418, %4413 ]
  %5245 = phi float [ %5229, %5193 ], [ %4419, %4413 ]
  %5246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5246, 0
  %5248 = call float @dx.op.binary.f32(i32 36, float %4028, float %5247)  ; FMin(a,b)
  %5249 = fsub fast float 1.000000e+00, %4050
  %5250 = fmul fast float %5248, %5249
  %5251 = fsub fast float 1.000000e+00, %5250
  %5252 = bitcast float %5251 to i32
  %5253 = sub nsw i32 2129859010, %5252
  %5254 = bitcast i32 %5253 to float
  %5255 = call float @dx.op.binary.f32(i32 36, float %4029, float %5247)  ; FMin(a,b)
  %5256 = fmul fast float %5255, %5249
  %5257 = fsub fast float 1.000000e+00, %5256
  %5258 = bitcast float %5257 to i32
  %5259 = sub nsw i32 2129859010, %5258
  %5260 = bitcast i32 %5259 to float
  %5261 = call float @dx.op.binary.f32(i32 36, float %4030, float %5247)  ; FMin(a,b)
  %5262 = fmul fast float %5261, %5249
  %5263 = fsub fast float 1.000000e+00, %5262
  %5264 = bitcast float %5263 to i32
  %5265 = sub nsw i32 2129859010, %5264
  %5266 = bitcast i32 %5265 to float
  %5267 = fmul fast float %5243, %4050
  %5268 = fmul fast float %5267, %5254
  %5269 = fmul fast float %5244, %4050
  %5270 = fmul fast float %5269, %5260
  %5271 = fmul fast float %5245, %4050
  %5272 = fmul fast float %5271, %5266
  %5273 = call float @dx.op.binary.f32(i32 36, float %4031, float %5247)  ; FMin(a,b)
  %5274 = fmul fast float %5273, %5249
  %5275 = fsub fast float 1.000000e+00, %5274
  %5276 = bitcast float %5275 to i32
  %5277 = sub nsw i32 2129859010, %5276
  %5278 = bitcast i32 %5277 to float
  %5279 = call float @dx.op.binary.f32(i32 36, float %4032, float %5247)  ; FMin(a,b)
  %5280 = fmul fast float %5279, %5249
  %5281 = fsub fast float 1.000000e+00, %5280
  %5282 = bitcast float %5281 to i32
  %5283 = sub nsw i32 2129859010, %5282
  %5284 = bitcast i32 %5283 to float
  %5285 = call float @dx.op.binary.f32(i32 36, float %4039, float %5247)  ; FMin(a,b)
  %5286 = fmul fast float %5285, %5249
  %5287 = fsub fast float 1.000000e+00, %5286
  %5288 = bitcast float %5287 to i32
  %5289 = sub nsw i32 2129859010, %5288
  %5290 = bitcast i32 %5289 to float
  %5291 = fmul fast float %5240, %4050
  %5292 = fmul fast float %5291, %5278
  %5293 = fmul fast float %5241, %4050
  %5294 = fmul fast float %5293, %5284
  %5295 = fmul fast float %5242, %4050
  %5296 = fmul fast float %5295, %5290
  %5297 = call float @dx.op.dot3.f32(i32 55, float %5268, float %5270, float %5272, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = select i1 %162, float 0.000000e+00, float %5268
  %5299 = select i1 %162, float %5297, float %5270
  %5300 = select i1 %162, float 0.000000e+00, float %5272
  %5301 = call float @dx.op.dot3.f32(i32 55, float %5292, float %5294, float %5296, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5302 = select i1 %162, float 0.000000e+00, float %5292
  %5303 = select i1 %162, float %5301, float %5294
  %5304 = select i1 %162, float 0.000000e+00, float %5296
  %5305 = fmul fast float %4041, 9.843750e-01
  %5306 = fmul fast float %4037, 9.843750e-01
  %5307 = fadd fast float %5305, 7.812500e-03
  %5308 = fadd fast float %5306, 7.812500e-03
  %5309 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %35, float %5307, float %5308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5310 = extractvalue %dx.types.ResRet.f32 %5309, 2
  %5311 = extractvalue %dx.types.ResRet.f32 %5309, 3
  %5312 = fmul fast float %5310, %4031
  %5313 = fmul fast float %5310, %4032
  %5314 = fmul fast float %5310, %4039
  %5315 = fadd fast float %5312, %5311
  %5316 = fadd fast float %5313, %5311
  %5317 = fadd fast float %5314, %5311
  %5318 = call float @dx.op.binary.f32(i32 35, float %5316, float %5317)  ; FMax(a,b)
  %5319 = call float @dx.op.binary.f32(i32 35, float %5315, float %5318)  ; FMax(a,b)
  %5320 = fsub fast float 1.000000e+00, %5319
  %5321 = fmul fast float %5320, %5298
  %5322 = fmul fast float %5320, %5299
  %5323 = fmul fast float %5320, %5300
  %5324 = fmul fast float %5315, %5302
  %5325 = fmul fast float %5316, %5303
  %5326 = fmul fast float %5317, %5304
  %5327 = fmul fast float %5321, %859
  %5328 = fmul fast float %5322, %859
  %5329 = fmul fast float %5323, %859
  %5330 = fadd fast float %5324, %3394
  %5331 = fmul fast float %5330, %859
  %5332 = fadd fast float %5325, %3395
  %5333 = fmul fast float %5332, %859
  %5334 = fadd fast float %5326, %3396
  %5335 = fmul fast float %5334, %859
  %5336 = bitcast i32 %4053 to float
  %5337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5338 = extractvalue %dx.types.CBufRet.f32 %5337, 3
  %5339 = fcmp fast oeq float %5338, 0.000000e+00
  br i1 %5339, label %5498, label %5340

; <label>:5340                                    ; preds = %5239
  %5341 = extractvalue %dx.types.CBufRet.f32 %5337, 0
  %5342 = extractvalue %dx.types.CBufRet.f32 %5337, 1
  %5343 = extractvalue %dx.types.CBufRet.f32 %5337, 2
  %5344 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5345 = extractvalue %dx.types.CBufRet.f32 %5344, 0
  %5346 = extractvalue %dx.types.CBufRet.f32 %5344, 1
  %5347 = extractvalue %dx.types.CBufRet.f32 %5344, 2
  %5348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5348, 0
  %5350 = extractvalue %dx.types.CBufRet.f32 %5348, 1
  %5351 = call float @dx.op.dot3.f32(i32 55, float %5345, float %5346, float %5347, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = select i1 %162, float %5349, float %5345
  %5353 = select i1 %162, float %5351, float %5346
  %5354 = select i1 %162, float %5350, float %5347
  %5355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5356 = extractvalue %dx.types.CBufRet.f32 %5355, 1
  %5357 = fcmp fast une float %5356, 0.000000e+00
  br i1 %5357, label %5358, label %5375

; <label>:5358                                    ; preds = %5340
  %5359 = fptoui float %63 to i32
  %5360 = fptoui float %64 to i32
  %5361 = lshr i32 %5359, 4
  %5362 = lshr i32 %5360, 4
  %5363 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5364 = extractvalue %dx.types.CBufRet.f32 %5363, 0
  %5365 = fptoui float %5364 to i32
  %5366 = add i32 %5365, 15
  %5367 = lshr i32 %5366, 4
  %5368 = mul i32 %5367, %5362
  %5369 = add i32 %5368, %5361
  %5370 = shl i32 %5369, 3
  %5371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5370, i32 undef)  ; BufferLoad(srv,index,wot)
  %5372 = extractvalue %dx.types.ResRet.i32 %5371, 0
  %5373 = and i32 %5372, -268435456
  %5374 = icmp eq i32 %5373, -1342177280
  br i1 %5374, label %5385, label %5375

; <label>:5375                                    ; preds = %5358, %5340
  %5376 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5377 = extractvalue %dx.types.CBufRet.f32 %5376, 2
  %5378 = extractvalue %dx.types.CBufRet.f32 %5376, 3
  %5379 = fmul fast float %5377, %63
  %5380 = fmul fast float %5378, %64
  %5381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %36, float %5379, float %5380, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5382 = extractvalue %dx.types.ResRet.f32 %5381, 0
  %5383 = extractvalue %dx.types.ResRet.f32 %5381, 1
  %5384 = extractvalue %dx.types.ResRet.f32 %5381, 2
  br label %5385

; <label>:5385                                    ; preds = %5375, %5358
  %5386 = phi float [ %5382, %5375 ], [ 0.000000e+00, %5358 ]
  %5387 = phi float [ %5383, %5375 ], [ 0.000000e+00, %5358 ]
  %5388 = phi float [ %5384, %5375 ], [ 0.000000e+00, %5358 ]
  %5389 = call float @dx.op.binary.f32(i32 36, float %5387, float %5388)  ; FMin(a,b)
  %5390 = call float @dx.op.binary.f32(i32 36, float %5386, float %5389)  ; FMin(a,b)
  %5391 = fcmp fast ogt float %5390, 0.000000e+00
  br i1 %5391, label %5392, label %5498, !dx.controlflow.hints !81

; <label>:5392                                    ; preds = %5385
  %5393 = fmul fast float %5386, %5352
  %5394 = fmul fast float %5387, %5353
  %5395 = fmul fast float %5388, %5354
  %5396 = fsub fast float %5341, %4027
  %5397 = fsub fast float %5342, %4026
  %5398 = fsub fast float %5343, %4025
  %5399 = call float @dx.op.dot3.f32(i32 55, float %5396, float %5397, float %5398, float %5396, float %5397, float %5398)  ; Dot3(ax,ay,az,bx,by,bz)
  %5400 = call float @dx.op.unary.f32(i32 25, float %5399)  ; Rsqrt(value)
  %5401 = fmul fast float %5400, %5396
  %5402 = fmul fast float %5400, %5397
  %5403 = fmul fast float %5400, %5398
  %5404 = call float @dx.op.dot3.f32(i32 55, float %5341, float %5342, float %5343, float %4034, float %4035, float %4036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5405 = call float @dx.op.dot3.f32(i32 55, float %4024, float %4023, float %4022, float %5401, float %5402, float %5403)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = call float @dx.op.unary.f32(i32 7, float %5404)  ; Saturate(value)
  %5407 = fmul fast float %5406, %5406
  %5408 = fmul fast float %5407, %5336
  %5409 = call float @dx.op.unary.f32(i32 7, float %5408)  ; Saturate(value)
  %5410 = fmul fast float %5409, %5406
  %5411 = call float @dx.op.dot3.f32(i32 55, float %4034, float %4035, float %4036, float %5401, float %5402, float %5403)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = fmul fast float %5411, %5411
  %5413 = call float @dx.op.unary.f32(i32 6, float %5404)  ; FAbs(value)
  %5414 = fsub fast float 1.000000e+00, %4037
  %5415 = call float @dx.op.binary.f32(i32 35, float %5414, float 0x3F847AE140000000)  ; FMax(a,b)
  %5416 = fmul fast float %5415, %5415
  %5417 = fmul fast float %5416, %5416
  %5418 = fsub fast float 1.000000e+00, %5417
  %5419 = fmul fast float %4041, %4041
  %5420 = fmul fast float %5419, %5418
  %5421 = fadd fast float %5420, %5417
  %5422 = bitcast float %5421 to i32
  %5423 = ashr i32 %5422, 1
  %5424 = add nsw i32 %5423, 532487669
  %5425 = bitcast i32 %5424 to float
  %5426 = fadd fast float %5425, %4041
  %5427 = fmul fast float %5417, %5412
  %5428 = fsub fast float 1.000000e+00, %5412
  %5429 = fadd fast float %5428, %5427
  %5430 = fmul fast float %5413, %5413
  %5431 = fmul fast float %5430, %5418
  %5432 = fadd fast float %5431, %5417
  %5433 = bitcast float %5432 to i32
  %5434 = ashr i32 %5433, 1
  %5435 = add nsw i32 %5434, 532487669
  %5436 = bitcast i32 %5435 to float
  %5437 = fadd fast float %5436, %5413
  %5438 = fmul fast float %5429, %5429
  %5439 = fmul fast float %5438, %5426
  %5440 = fmul fast float %5439, %5437
  %5441 = fdiv fast float 0x3FF0A00000000000, %5440
  %5442 = fmul fast float %5441, %5417
  %5443 = call float @dx.op.unary.f32(i32 6, float %5405)  ; FAbs(value)
  %5444 = fsub fast float 1.000000e+00, %5443
  %5445 = bitcast float %5444 to i32
  %5446 = sitofp i32 %5445 to float
  %5447 = fmul fast float %5446, 5.000000e+00
  %5448 = fadd fast float %5447, 0xC1EFBF8940000000
  %5449 = fptosi float %5448 to i32
  %5450 = bitcast i32 %5449 to float
  %5451 = fsub fast float 1.000000e+00, %4031
  %5452 = fsub fast float 1.000000e+00, %4032
  %5453 = fsub fast float 1.000000e+00, %4039
  %5454 = fmul fast float %5450, %5451
  %5455 = fmul fast float %5450, %5452
  %5456 = fmul fast float %5450, %5453
  %5457 = fadd fast float %5454, %4031
  %5458 = fadd fast float %5455, %4032
  %5459 = fadd fast float %5456, %4039
  %5460 = fmul fast float %5404, 9.843750e-01
  %5461 = fadd fast float %5460, 7.812500e-03
  %5462 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %35, float %5461, float %5308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5463 = extractvalue %dx.types.ResRet.f32 %5462, 2
  %5464 = extractvalue %dx.types.ResRet.f32 %5462, 3
  %5465 = fmul fast float %5463, %4031
  %5466 = fmul fast float %5463, %4032
  %5467 = fmul fast float %5463, %4039
  %5468 = fadd fast float %5465, %5464
  %5469 = fadd fast float %5466, %5464
  %5470 = fadd fast float %5467, %5464
  %5471 = call float @dx.op.binary.f32(i32 35, float %5469, float %5470)  ; FMax(a,b)
  %5472 = call float @dx.op.binary.f32(i32 35, float %5468, float %5471)  ; FMax(a,b)
  %5473 = fsub fast float 1.000000e+00, %5472
  %5474 = fmul fast float %5410, %5393
  %5475 = fmul fast float %5474, %5473
  %5476 = fmul fast float %5410, %5394
  %5477 = fmul fast float %5476, %5473
  %5478 = fmul fast float %5410, %5395
  %5479 = fmul fast float %5478, %5473
  %5480 = fmul fast float %5474, %5442
  %5481 = fmul fast float %5480, %5457
  %5482 = fmul fast float %5476, %5442
  %5483 = fmul fast float %5482, %5458
  %5484 = fmul fast float %5478, %5442
  %5485 = fmul fast float %5484, %5459
  %5486 = fadd fast float %5475, %5321
  %5487 = fmul fast float %5486, %859
  %5488 = fadd fast float %5477, %5322
  %5489 = fmul fast float %5488, %859
  %5490 = fadd fast float %5479, %5323
  %5491 = fmul fast float %5490, %859
  %5492 = fadd fast float %5481, %5330
  %5493 = fmul fast float %5492, %859
  %5494 = fadd fast float %5483, %5332
  %5495 = fmul fast float %5494, %859
  %5496 = fadd fast float %5485, %5334
  %5497 = fmul fast float %5496, %859
  br label %5498

; <label>:5498                                    ; preds = %5392, %5385, %5239
  %5499 = phi float [ %5331, %5239 ], [ %5331, %5385 ], [ %5493, %5392 ]
  %5500 = phi float [ %5333, %5239 ], [ %5333, %5385 ], [ %5495, %5392 ]
  %5501 = phi float [ %5335, %5239 ], [ %5335, %5385 ], [ %5497, %5392 ]
  %5502 = phi float [ %5327, %5239 ], [ %5327, %5385 ], [ %5487, %5392 ]
  %5503 = phi float [ %5328, %5239 ], [ %5328, %5385 ], [ %5489, %5392 ]
  %5504 = phi float [ %5329, %5239 ], [ %5329, %5385 ], [ %5491, %5392 ]
  %5505 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5506 = extractvalue %dx.types.CBufRet.i32 %5505, 0
  %5507 = icmp eq i32 %5506, 0
  br i1 %5507, label %5873, label %5508

; <label>:5508                                    ; preds = %5498
  %5509 = fptoui float %63 to i32
  %5510 = fptoui float %64 to i32
  %5511 = lshr i32 %5509, 4
  %5512 = lshr i32 %5510, 4
  %5513 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5514 = extractvalue %dx.types.CBufRet.i32 %5513, 0
  %5515 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5512, i32 %5514, i32 %5511)  ; UMad(a,b,c)
  %5516 = add nsw i32 %5506, -1
  %5517 = call i32 @dx.op.binary.i32(i32 37, i32 %5516, i32 0)  ; IMax(a,b)
  %5518 = call float @dx.op.binary.f32(i32 35, float %58, float 0.000000e+00)  ; FMax(a,b)
  %5519 = fptoui float %5518 to i32
  %5520 = lshr i32 %5519, 5
  %5521 = call i32 @dx.op.binary.i32(i32 40, i32 %5520, i32 8191)  ; UMin(a,b)
  %5522 = shl i32 %5521, 2
  %5523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5522, i32 undef)  ; BufferLoad(srv,index,wot)
  %5524 = extractvalue %dx.types.ResRet.i32 %5523, 0
  %5525 = lshr i32 %5524, 16
  %5526 = and i32 %5524, 65535
  %5527 = lshr i32 %5524, 21
  %5528 = lshr i32 %5526, 5
  %5529 = call i32 @dx.op.binary.i32(i32 40, i32 %5528, i32 %5517)  ; UMin(a,b)
  %5530 = icmp ugt i32 %5527, %5529
  br i1 %5530, label %5873, label %5531

; <label>:5531                                    ; preds = %5508
  br label %5532

; <label>:5532                                    ; preds = %5863, %5531
  %5533 = phi i32 [ %5870, %5863 ], [ %5527, %5531 ]
  %5534 = phi float [ %5864, %5863 ], [ %5499, %5531 ]
  %5535 = phi float [ %5865, %5863 ], [ %5500, %5531 ]
  %5536 = phi float [ %5866, %5863 ], [ %5501, %5531 ]
  %5537 = phi float [ %5867, %5863 ], [ %5502, %5531 ]
  %5538 = phi float [ %5868, %5863 ], [ %5503, %5531 ]
  %5539 = phi float [ %5869, %5863 ], [ %5504, %5531 ]
  %5540 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %38, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5541 = extractvalue %dx.types.CBufRet.i32 %5540, 0
  %5542 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5515, i32 %5541, i32 %5533)  ; UMad(a,b,c)
  %5543 = shl i32 %5542, 2
  %5544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5543, i32 undef)  ; BufferLoad(srv,index,wot)
  %5545 = extractvalue %dx.types.ResRet.i32 %5544, 0
  %5546 = shl i32 %5533, 5
  %5547 = sub nsw i32 %5525, %5546
  %5548 = call i32 @dx.op.binary.i32(i32 37, i32 %5547, i32 0)  ; IMax(a,b)
  %5549 = call i32 @dx.op.binary.i32(i32 38, i32 %5548, i32 31)  ; IMin(a,b)
  %5550 = sub nsw i32 1, %5525
  %5551 = add nsw i32 %5550, %5526
  %5552 = call i32 @dx.op.binary.i32(i32 37, i32 %5551, i32 0)  ; IMax(a,b)
  %5553 = call i32 @dx.op.binary.i32(i32 38, i32 %5552, i32 32)  ; IMin(a,b)
  %5554 = and i32 %5553, 31
  %5555 = shl i32 -1, %5554
  %5556 = xor i32 %5555, -1
  %5557 = and i32 %5549, 31
  %5558 = shl i32 %5556, %5557
  %5559 = icmp eq i32 %5553, 32
  %5560 = select i1 %5559, i32 -1, i32 %5558
  %5561 = and i32 %5560, %5545
  %5562 = icmp eq i32 %5561, 0
  br i1 %5562, label %5863, label %5563

; <label>:5563                                    ; preds = %5532
  br label %5564

; <label>:5564                                    ; preds = %5644, %5563
  %5565 = phi i32 [ %5576, %5644 ], [ %5561, %5563 ]
  %5566 = phi float [ %5645, %5644 ], [ %5534, %5563 ]
  %5567 = phi float [ %5646, %5644 ], [ %5535, %5563 ]
  %5568 = phi float [ %5647, %5644 ], [ %5536, %5563 ]
  %5569 = phi float [ %5648, %5644 ], [ %5537, %5563 ]
  %5570 = phi float [ %5649, %5644 ], [ %5538, %5563 ]
  %5571 = phi float [ %5650, %5644 ], [ %5539, %5563 ]
  %5572 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5565)  ; FirstbitLo(value)
  %5573 = add i32 %5572, %5546
  %5574 = and i32 %5572, 31
  %5575 = shl i32 1, %5574
  %5576 = xor i32 %5575, %5565
  %5577 = mul i32 %5573, 112
  %5578 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5577, i32 undef)  ; BufferLoad(srv,index,wot)
  %5579 = extractvalue %dx.types.ResRet.f32 %5578, 0
  %5580 = extractvalue %dx.types.ResRet.f32 %5578, 1
  %5581 = extractvalue %dx.types.ResRet.f32 %5578, 2
  %5582 = or i32 %5577, 12
  %5583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5582, i32 undef)  ; BufferLoad(srv,index,wot)
  %5584 = extractvalue %dx.types.ResRet.f32 %5583, 0
  %5585 = add i32 %5577, 44
  %5586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5585, i32 undef)  ; BufferLoad(srv,index,wot)
  %5587 = extractvalue %dx.types.ResRet.f32 %5586, 0
  %5588 = add i32 %5577, 48
  %5589 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5588, i32 undef)  ; BufferLoad(srv,index,wot)
  %5590 = extractvalue %dx.types.ResRet.f32 %5589, 0
  %5591 = extractvalue %dx.types.ResRet.f32 %5589, 1
  %5592 = extractvalue %dx.types.ResRet.f32 %5589, 2
  %5593 = add i32 %5577, 80
  %5594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5593, i32 undef)  ; BufferLoad(srv,index,wot)
  %5595 = extractvalue %dx.types.ResRet.f32 %5594, 1
  %5596 = extractvalue %dx.types.ResRet.f32 %5594, 2
  %5597 = call float @dx.op.dot3.f32(i32 55, float %5579, float %5580, float %5581, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5598 = select i1 %162, float %5595, float %5579
  %5599 = select i1 %162, float %5597, float %5580
  %5600 = select i1 %162, float %5596, float %5581
  %5601 = fsub fast float %5590, %118
  %5602 = fsub fast float %5591, %119
  %5603 = fsub fast float %5592, %120
  %5604 = call float @dx.op.dot3.f32(i32 55, float %5601, float %5602, float %5603, float %5601, float %5602, float %5603)  ; Dot3(ax,ay,az,bx,by,bz)
  %5605 = call float @dx.op.unary.f32(i32 24, float %5604)  ; Sqrt(value)
  %5606 = fdiv fast float 1.000000e+00, %5605
  %5607 = fmul fast float %5606, %5601
  %5608 = fmul fast float %5606, %5602
  %5609 = fmul fast float %5606, %5603
  %5610 = fadd fast float %5605, %5584
  %5611 = fdiv fast float 1.000000e+00, %5610
  %5612 = fmul float %5587, %5611
  %5613 = fmul float %5612, %5612
  %5614 = call float @dx.op.unary.f32(i32 7, float %5613)  ; Saturate(value)
  %5615 = and i32 %5575, %5561
  %5616 = icmp eq i32 %5615, 0
  br i1 %5616, label %5639, label %5617, !dx.controlflow.hints !82

; <label>:5617                                    ; preds = %5564
  %5618 = lshr i32 %5509, 5
  %5619 = lshr i32 %5510, 5
  %5620 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %5618, i32 %5619, i32 %5573, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5621 = extractvalue %dx.types.ResRet.i32 %5620, 0
  %5622 = and i32 %5621, 3
  %5623 = icmp eq i32 %5622, 0
  %5624 = select i1 %5623, float 1.000000e+00, float 0.000000e+00
  %5625 = icmp eq i32 %5622, 3
  br i1 %5625, label %5626, label %5639

; <label>:5626                                    ; preds = %5617
  %5627 = lshr i32 %5621, 10
  %5628 = and i32 %5627, 8160
  %5629 = and i32 %5510, 31
  %5630 = or i32 %5628, %5629
  %5631 = lshr i32 %5621, 1
  %5632 = and i32 %5631, 16352
  %5633 = and i32 %5509, 31
  %5634 = or i32 %5632, %5633
  %5635 = lshr i32 %5621, 23
  %5636 = and i32 %5635, 255
  %5637 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %5634, i32 %5630, i32 %5636, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5638 = extractvalue %dx.types.ResRet.f32 %5637, 0
  br label %5639

; <label>:5639                                    ; preds = %5626, %5617, %5564
  %5640 = phi float [ %5638, %5626 ], [ %5624, %5617 ], [ 0.000000e+00, %5564 ]
  %5641 = call float @dx.op.binary.f32(i32 36, float %5640, float %5640)  ; FMin(a,b)
  %5642 = call float @dx.op.binary.f32(i32 36, float %5640, float %5641)  ; FMin(a,b)
  %5643 = fcmp fast ogt float %5642, 0.000000e+00
  br i1 %5643, label %5652, label %5644, !dx.controlflow.hints !83

; <label>:5644                                    ; preds = %5713, %5639
  %5645 = phi float [ %5566, %5639 ], [ %5859, %5713 ]
  %5646 = phi float [ %5567, %5639 ], [ %5860, %5713 ]
  %5647 = phi float [ %5568, %5639 ], [ %5861, %5713 ]
  %5648 = phi float [ %5569, %5639 ], [ %5850, %5713 ]
  %5649 = phi float [ %5570, %5639 ], [ %5851, %5713 ]
  %5650 = phi float [ %5571, %5639 ], [ %5852, %5713 ]
  %5651 = icmp eq i32 %5565, %5575
  br i1 %5651, label %5862, label %5564

; <label>:5652                                    ; preds = %5639
  %5653 = fmul fast float %5640, %5598
  %5654 = fmul fast float %5640, %5599
  %5655 = fmul fast float %5640, %5600
  %5656 = fsub fast float %5592, %3827
  %5657 = fcmp fast ogt float %5656, 0.000000e+00
  %5658 = fsub fast float %120, %3827
  %5659 = fcmp fast ogt float %5658, 0.000000e+00
  %5660 = xor i1 %5659, %5657
  %5661 = fsub fast float %3827, %5592
  %5662 = fmul fast float %5661, 2.000000e+00
  %5663 = fadd fast float %5662, %5592
  %5664 = select i1 %5660, float %5592, float %5663
  %5665 = fsub fast float %5664, %120
  %5666 = call float @dx.op.dot3.f32(i32 55, float %5601, float %5602, float %5665, float %5601, float %5602, float %5665)  ; Dot3(ax,ay,az,bx,by,bz)
  %5667 = call float @dx.op.unary.f32(i32 25, float %5666)  ; Rsqrt(value)
  %5668 = fmul fast float %5667, %5601
  %5669 = fmul fast float %5667, %5602
  %5670 = fmul fast float %5667, %5665
  %5671 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3835)  ; Dot3(ax,ay,az,bx,by,bz)
  %5672 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5668, float %5669, float %5670)  ; Dot3(ax,ay,az,bx,by,bz)
  %5673 = fdiv fast float 1.000000e+00, %5672
  %5674 = fmul fast float %5673, %5671
  %5675 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5658, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = fcmp fast ogt float %5675, 0.000000e+00
  %5677 = fcmp fast olt float %5675, 0.000000e+00
  %5678 = zext i1 %5676 to i32
  %5679 = zext i1 %5677 to i32
  %5680 = sub nsw i32 %5678, %5679
  %5681 = sitofp i32 %5680 to float
  %5682 = fsub fast float %5664, %3827
  %5683 = call float @dx.op.dot3.f32(i32 55, float %5601, float %5602, float %5682, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5684 = fcmp fast ogt float %5683, 0.000000e+00
  %5685 = fcmp fast olt float %5683, 0.000000e+00
  %5686 = zext i1 %5684 to i32
  %5687 = zext i1 %5685 to i32
  %5688 = sub nsw i32 %5686, %5687
  %5689 = sitofp i32 %5688 to float
  %5690 = fcmp fast une float %5681, %5689
  br i1 %5690, label %5691, label %5701

; <label>:5691                                    ; preds = %5652
  %5692 = fmul fast float %5674, %5670
  %5693 = fmul fast float %5674, %5669
  %5694 = fmul fast float %5674, %5668
  %5695 = fmul fast float %5694, %5694
  %5696 = fmul fast float %5693, %5693
  %5697 = fadd fast float %5695, %5696
  %5698 = fmul fast float %5692, %5692
  %5699 = fadd fast float %5697, %5698
  %5700 = call float @dx.op.unary.f32(i32 24, float %5699)  ; Sqrt(value)
  br label %5713

; <label>:5701                                    ; preds = %5652
  %5702 = icmp slt i32 %5680, 0
  br i1 %5702, label %5703, label %5713

; <label>:5703                                    ; preds = %5701
  %5704 = fsub fast float %118, %5590
  %5705 = fsub fast float %119, %5591
  %5706 = fsub fast float %120, %5664
  %5707 = fmul fast float %5704, %5704
  %5708 = fmul fast float %5705, %5705
  %5709 = fadd fast float %5707, %5708
  %5710 = fmul fast float %5706, %5706
  %5711 = fadd fast float %5709, %5710
  %5712 = call float @dx.op.unary.f32(i32 24, float %5711)  ; Sqrt(value)
  br label %5713

; <label>:5713                                    ; preds = %5703, %5701, %5691
  %5714 = phi float [ %5700, %5691 ], [ %5712, %5703 ], [ 0.000000e+00, %5701 ]
  %5715 = and i1 %5659, %5657
  %5716 = fsub fast float -0.000000e+00, %5714
  %5717 = select i1 %5715, float -0.000000e+00, float %5716
  %5718 = fmul fast float %3828, 0x3FF7154760000000
  %5719 = fmul fast float %5718, %5717
  %5720 = fmul fast float %3829, 0x3FF7154760000000
  %5721 = fmul fast float %5720, %5717
  %5722 = fmul fast float %3830, 0x3FF7154760000000
  %5723 = fmul fast float %5722, %5717
  %5724 = call float @dx.op.unary.f32(i32 21, float %5719)  ; Exp(value)
  %5725 = call float @dx.op.unary.f32(i32 21, float %5721)  ; Exp(value)
  %5726 = call float @dx.op.unary.f32(i32 21, float %5723)  ; Exp(value)
  %5727 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5728 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  %5729 = call float @dx.op.unary.f32(i32 7, float %5726)  ; Saturate(value)
  %5730 = fmul fast float %5653, %5727
  %5731 = fmul fast float %5654, %5728
  %5732 = fmul fast float %5655, %5729
  %5733 = fsub fast float %5607, %4027
  %5734 = fsub fast float %5608, %4026
  %5735 = fsub fast float %5609, %4025
  %5736 = call float @dx.op.dot3.f32(i32 55, float %5733, float %5734, float %5735, float %5733, float %5734, float %5735)  ; Dot3(ax,ay,az,bx,by,bz)
  %5737 = call float @dx.op.unary.f32(i32 25, float %5736)  ; Rsqrt(value)
  %5738 = fmul fast float %5737, %5733
  %5739 = fmul fast float %5737, %5734
  %5740 = fmul fast float %5737, %5735
  %5741 = call float @dx.op.dot3.f32(i32 55, float %5607, float %5608, float %5609, float %4034, float %4035, float %4036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5742 = call float @dx.op.dot3.f32(i32 55, float %4024, float %4023, float %4022, float %5738, float %5739, float %5740)  ; Dot3(ax,ay,az,bx,by,bz)
  %5743 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5744 = fmul fast float %5743, %5614
  %5745 = fmul fast float %5743, %5743
  %5746 = fmul fast float %5745, %5336
  %5747 = call float @dx.op.unary.f32(i32 7, float %5746)  ; Saturate(value)
  %5748 = fmul fast float %5744, %5747
  %5749 = bitcast float %5604 to i32
  %5750 = ashr i32 %5749, 1
  %5751 = sub nsw i32 1597463007, %5750
  %5752 = bitcast i32 %5751 to float
  %5753 = fmul fast float %5752, %5601
  %5754 = fmul fast float %5752, %5602
  %5755 = fmul fast float %5752, %5603
  %5756 = fsub fast float %5753, %4027
  %5757 = fsub fast float %5754, %4026
  %5758 = fsub fast float %5755, %4025
  %5759 = call float @dx.op.dot3.f32(i32 55, float %5756, float %5757, float %5758, float %5756, float %5757, float %5758)  ; Dot3(ax,ay,az,bx,by,bz)
  %5760 = call float @dx.op.unary.f32(i32 25, float %5759)  ; Rsqrt(value)
  %5761 = fmul fast float %5756, %5760
  %5762 = fmul fast float %5757, %5760
  %5763 = fmul fast float %5758, %5760
  %5764 = call float @dx.op.dot3.f32(i32 55, float %4034, float %4035, float %4036, float %5761, float %5762, float %5763)  ; Dot3(ax,ay,az,bx,by,bz)
  %5765 = fmul fast float %5764, %5764
  %5766 = call float @dx.op.unary.f32(i32 6, float %5741)  ; FAbs(value)
  %5767 = fsub fast float 1.000000e+00, %4037
  %5768 = call float @dx.op.binary.f32(i32 35, float %5767, float 0x3F847AE140000000)  ; FMax(a,b)
  %5769 = fmul fast float %5768, %5768
  %5770 = fmul fast float %5769, %5769
  %5771 = fsub fast float 1.000000e+00, %5770
  %5772 = fmul fast float %4041, %4041
  %5773 = fmul fast float %5772, %5771
  %5774 = fadd fast float %5773, %5770
  %5775 = bitcast float %5774 to i32
  %5776 = ashr i32 %5775, 1
  %5777 = add nsw i32 %5776, 532487669
  %5778 = bitcast i32 %5777 to float
  %5779 = fadd fast float %5778, %4041
  %5780 = fmul fast float %5770, %5765
  %5781 = fsub fast float 1.000000e+00, %5765
  %5782 = fadd fast float %5781, %5780
  %5783 = fmul fast float %5766, %5766
  %5784 = fmul fast float %5783, %5771
  %5785 = fadd fast float %5784, %5770
  %5786 = bitcast float %5785 to i32
  %5787 = ashr i32 %5786, 1
  %5788 = add nsw i32 %5787, 532487669
  %5789 = bitcast i32 %5788 to float
  %5790 = fadd fast float %5789, %5766
  %5791 = fmul fast float %5782, %5782
  %5792 = fmul fast float %5791, %5779
  %5793 = fmul fast float %5792, %5790
  %5794 = fdiv fast float 1.000000e+00, %5793
  %5795 = bitcast float %5770 to i32
  %5796 = sitofp i32 %5795 to float
  %5797 = fmul fast float %5796, 0x3FE7F73180000000
  %5798 = fadd fast float %5797, 0x41AFE27C40000000
  %5799 = fptosi float %5798 to i32
  %5800 = bitcast i32 %5799 to float
  %5801 = fmul fast float %5587, 0x3FD80E9D60000000
  %5802 = fmul fast float %5801, %5752
  %5803 = fadd fast float %5800, %5802
  %5804 = bitcast float %5803 to i32
  %5805 = sub nsw i32 2129859010, %5804
  %5806 = bitcast i32 %5805 to float
  %5807 = fmul fast float %5770, %5794
  %5808 = fmul fast float %5807, %5800
  %5809 = fmul fast float %5808, %5806
  %5810 = call float @dx.op.unary.f32(i32 6, float %5742)  ; FAbs(value)
  %5811 = fsub fast float 1.000000e+00, %5810
  %5812 = bitcast float %5811 to i32
  %5813 = sitofp i32 %5812 to float
  %5814 = fmul fast float %5813, 5.000000e+00
  %5815 = fadd fast float %5814, 0xC1EFBF8940000000
  %5816 = fptosi float %5815 to i32
  %5817 = bitcast i32 %5816 to float
  %5818 = fsub fast float 1.000000e+00, %4031
  %5819 = fsub fast float 1.000000e+00, %4032
  %5820 = fsub fast float 1.000000e+00, %4039
  %5821 = fmul fast float %5817, %5818
  %5822 = fmul fast float %5817, %5819
  %5823 = fmul fast float %5817, %5820
  %5824 = fadd fast float %5821, %4031
  %5825 = fadd fast float %5822, %4032
  %5826 = fadd fast float %5823, %4039
  %5827 = fmul fast float %5741, 9.843750e-01
  %5828 = fadd fast float %5827, 7.812500e-03
  %5829 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %35, float %5828, float %5308, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5830 = extractvalue %dx.types.ResRet.f32 %5829, 2
  %5831 = extractvalue %dx.types.ResRet.f32 %5829, 3
  %5832 = fmul fast float %5830, %4031
  %5833 = fmul fast float %5830, %4032
  %5834 = fmul fast float %5830, %4039
  %5835 = fadd fast float %5832, %5831
  %5836 = fadd fast float %5833, %5831
  %5837 = fadd fast float %5834, %5831
  %5838 = call float @dx.op.binary.f32(i32 35, float %5836, float %5837)  ; FMax(a,b)
  %5839 = call float @dx.op.binary.f32(i32 35, float %5835, float %5838)  ; FMax(a,b)
  %5840 = fsub fast float 1.000000e+00, %5839
  %5841 = fmul fast float %5730, %859
  %5842 = fmul fast float %5841, %5748
  %5843 = fmul fast float %5842, %5840
  %5844 = fmul fast float %5731, %859
  %5845 = fmul fast float %5844, %5748
  %5846 = fmul fast float %5845, %5840
  %5847 = fmul fast float %5732, %859
  %5848 = fmul fast float %5847, %5748
  %5849 = fmul fast float %5848, %5840
  %5850 = fadd fast float %5843, %5569
  %5851 = fadd fast float %5846, %5570
  %5852 = fadd fast float %5849, %5571
  %5853 = fmul fast float %5842, %5824
  %5854 = fmul fast float %5853, %5809
  %5855 = fmul fast float %5845, %5825
  %5856 = fmul fast float %5855, %5809
  %5857 = fmul fast float %5848, %5826
  %5858 = fmul fast float %5857, %5809
  %5859 = fadd fast float %5854, %5566
  %5860 = fadd fast float %5856, %5567
  %5861 = fadd fast float %5858, %5568
  br label %5644

; <label>:5862                                    ; preds = %5644
  br label %5863

; <label>:5863                                    ; preds = %5862, %5532
  %5864 = phi float [ %5534, %5532 ], [ %5645, %5862 ]
  %5865 = phi float [ %5535, %5532 ], [ %5646, %5862 ]
  %5866 = phi float [ %5536, %5532 ], [ %5647, %5862 ]
  %5867 = phi float [ %5537, %5532 ], [ %5648, %5862 ]
  %5868 = phi float [ %5538, %5532 ], [ %5649, %5862 ]
  %5869 = phi float [ %5539, %5532 ], [ %5650, %5862 ]
  %5870 = add i32 %5533, 1
  %5871 = icmp ugt i32 %5870, %5529
  br i1 %5871, label %5872, label %5532

; <label>:5872                                    ; preds = %5863
  br label %5873

; <label>:5873                                    ; preds = %5872, %5508, %5498
  %5874 = phi float [ %5499, %5498 ], [ %5499, %5508 ], [ %5864, %5872 ]
  %5875 = phi float [ %5500, %5498 ], [ %5500, %5508 ], [ %5865, %5872 ]
  %5876 = phi float [ %5501, %5498 ], [ %5501, %5508 ], [ %5866, %5872 ]
  %5877 = phi float [ %5502, %5498 ], [ %5502, %5508 ], [ %5867, %5872 ]
  %5878 = phi float [ %5503, %5498 ], [ %5503, %5508 ], [ %5868, %5872 ]
  %5879 = phi float [ %5504, %5498 ], [ %5504, %5508 ], [ %5869, %5872 ]
  %5880 = call float @dx.op.unary.f32(i32 24, float %4028)  ; Sqrt(value)
  %5881 = call float @dx.op.unary.f32(i32 24, float %4029)  ; Sqrt(value)
  %5882 = call float @dx.op.unary.f32(i32 24, float %4030)  ; Sqrt(value)
  %5883 = fmul fast float %5880, %5877
  %5884 = fmul fast float %5881, %5878
  %5885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5886 = extractvalue %dx.types.CBufRet.f32 %5885, 0
  br i1 %162, label %5887, label %5908

; <label>:5887                                    ; preds = %5873
  %5888 = fadd fast float %5879, %3402
  %5889 = fmul fast float %5888, %3400
  %5890 = fsub fast float 1.000000e+00, %3400
  %5891 = call float @dx.op.unary.f32(i32 7, float %5890)  ; Saturate(value)
  %5892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5893 = extractvalue %dx.types.CBufRet.f32 %5892, 3
  %5894 = fmul fast float %5893, %5891
  %5895 = fadd fast float %5894, %5889
  %5896 = fsub fast float 1.000000e+00, %4041
  %5897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5898 = extractvalue %dx.types.CBufRet.f32 %5897, 0
  %5899 = fmul fast float %5898, %5896
  %5900 = fsub fast float %5895, %5899
  %5901 = fadd fast float %5884, %5883
  %5902 = fmul fast float %5886, %5901
  %5903 = extractvalue %dx.types.CBufRet.f32 %5892, 1
  %5904 = fsub fast float %5900, %5903
  %5905 = extractvalue %dx.types.CBufRet.f32 %5892, 2
  %5906 = fmul fast float %5904, %5905
  %5907 = call float @dx.op.unary.f32(i32 7, float %5906)  ; Saturate(value)
  br label %5924

; <label>:5908                                    ; preds = %5873
  %5909 = fmul fast float %5882, %5879
  %5910 = fmul fast float %5886, %5883
  %5911 = fmul fast float %5886, %5884
  %5912 = fmul fast float %5909, %5886
  %5913 = add i32 %39, 356
  %5914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5913, i32 undef)  ; BufferLoad(srv,index,wot)
  %5915 = extractvalue %dx.types.ResRet.i32 %5914, 0
  %5916 = and i32 %5915, 32
  %5917 = icmp eq i32 %5916, 0
  br i1 %5917, label %5924, label %5918

; <label>:5918                                    ; preds = %5908
  %5919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5920 = extractvalue %dx.types.CBufRet.f32 %5919, 0
  %5921 = fmul fast float %5920, 0x3FE99999A0000000
  %5922 = fadd fast float %5920, %5910
  %5923 = fadd fast float %5921, %5912
  br label %5924

; <label>:5924                                    ; preds = %5918, %5908, %5887
  %5925 = phi float [ %5902, %5887 ], [ %5922, %5918 ], [ %5910, %5908 ]
  %5926 = phi float [ %5907, %5887 ], [ %5911, %5918 ], [ %5911, %5908 ]
  %5927 = phi float [ 1.000000e+00, %5887 ], [ %5923, %5918 ], [ %5912, %5908 ]
  %5928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %38, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5929 = extractvalue %dx.types.CBufRet.f32 %5928, 0
  %5930 = fmul fast float %5929, %5875
  %5931 = fmul fast float %5929, %5876
  %5932 = fadd fast float %5875, %5874
  %5933 = select i1 %162, float %5932, float %5874
  %5934 = fmul float %5933, %5929
  %5935 = select i1 %162, float 0.000000e+00, float %5930
  %5936 = select i1 %162, float 0.000000e+00, float %5931
  %5937 = fmul fast float %5925, %5880
  %5938 = fmul fast float %5926, %5881
  %5939 = fmul fast float %5927, %5882
  %5940 = fadd fast float %5934, %5937
  %5941 = fadd fast float %5935, %5938
  %5942 = fadd fast float %5936, %5939
  %5943 = select i1 %162, float %5926, float %5941
  %5944 = select i1 %162, float %5927, float %5942
  %5945 = call float @dx.op.binary.f32(i32 36, float %5940, float 3.225500e+04)  ; FMin(a,b)
  %5946 = call float @dx.op.binary.f32(i32 36, float %5943, float 3.225500e+04)  ; FMin(a,b)
  %5947 = call float @dx.op.binary.f32(i32 36, float %5944, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5945)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5946)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5947)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.binary.f32(i32, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

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
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!16 = !{i32 9, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !20}
!20 = !{i32 0, i32 5}
!21 = !{i32 13, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!22 = !{i32 14, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !20}
!23 = !{i32 15, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!24 = !{i32 16, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
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
!52 = !{[30 x i32] [i32 28, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0]}
!53 = !{void ()* @ps_main, !"ps_main", !54, !4, !73}
!54 = !{!55, !71, null}
!55 = !{!56, !59, !61, !63, !65, !67, !68, !70}
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
!67 = !{i32 5, !"LMAP_COORDS", i8 9, i8 0, !57, i8 2, i32 1, i8 3, i32 5, i8 0, !64}
!68 = !{i32 6, !"PACKED_TRI_DATA", i8 5, i8 0, !57, i8 1, i32 1, i8 4, i32 6, i8 0, !69}
!69 = !{i32 3, i32 5}
!70 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !57, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!71 = !{!72}
!72 = !{i32 0, !"SV_Target", i8 9, i8 16, !57, i8 0, i32 1, i8 4, i32 0, i8 0, !66}
!73 = !{i32 0, i64 24}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}

