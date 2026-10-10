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
; PACKED_TRI_DATA          0   xyzw        6     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 26a112a9149388d7dd558f6936e3f053
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
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32     2darray      T5     t23,space2     1
;                                   texture     f32     2darray      T6     t24,space2     1
;                                   texture     f32     2darray      T7     t25,space2     1
;                                   texture     f32          2d      T8     t33,space2     1
;                                   texture     f32     2darray      T9     t16,space2     1
;                                   texture     f32          3d     T10     t15,space2     1
;                                   texture     f32          2d     T11     t14,space2     1
;                                   texture     f32          2d     T12     t13,space2     1
;                                   texture     u32          2d     T13     t17,space2     1
;                                   texture     f32          3d     T14     t18,space2     1
;                                   texture     u32     2darray     T15     t11,space2     1
;                                   texture     f32     2darray     T16     t10,space2     1
;                                   texture     f32          2d     T17     t69,space2     1
;                                   texture    byte         r/o     T18     t49,space1     1
;                                   texture    byte         r/o     T19     t50,space1     1
;                                   texture    byte         r/o     T20     t51,space1     1
;                                   texture    byte         r/o     T21     t52,space1     1
;                                   texture    byte         r/o     T22     t16,space1     1
;                                   texture    byte         r/o     T23     t17,space1     1
;                                   texture     f32          2d     T24     t58,space2     1
;                                   texture     f32          2d     T25     t59,space2     1
;                                   texture     f32          2d     T26     t60,space2     1
;                                   texture    byte         r/o     T27     t45,space1     1
;                                   texture    byte         r/o     T28     t46,space1     1
;                                   texture    byte         r/o     T29     t47,space1     1
;                                   texture    byte         r/o     T30     t48,space1     1
;                                   texture     f32          2d     T31     t57,space2     1
;                                   texture    byte         r/o     T32     t69,space1     1
;                                   texture     f32          2d     T33     t34,space2     1
;                                   texture    byte         r/o     T34     t10,space1     1
;                                   texture    byte         r/o     T35     t68,space1     1
;                                   texture     f32          2d     T36      t0,space2     1
;                                   texture    byte         r/o     T37     t11,space1     1
;                                   texture    byte         r/o     T38     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 28, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 26, 27 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 26, 27 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 26, 27 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %66 = extractvalue %dx.types.CBufRet.f32 %65, 0
  %67 = fmul fast float %66, %60
  %68 = fmul fast float %66, %61
  %69 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %70 = bitcast float %69 to i32
  %71 = ashr i32 %70, 1
  %72 = sub nsw i32 1597250115, %71
  %73 = bitcast i32 %72 to float
  %74 = fmul fast float %73, %52
  %75 = fmul fast float %73, %53
  %76 = fmul fast float %73, %54
  %77 = fmul fast float %53, %50
  %78 = fmul fast float %54, %49
  %79 = fsub fast float %77, %78
  %80 = fmul fast float %54, %48
  %81 = fmul fast float %52, %50
  %82 = fsub fast float %80, %81
  %83 = fmul fast float %52, %49
  %84 = fmul fast float %53, %48
  %85 = fsub fast float %83, %84
  %86 = fmul fast float %79, %51
  %87 = fmul fast float %82, %51
  %88 = fmul fast float %85, %51
  %89 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %90 = extractvalue %dx.types.CBufRet.f32 %89, 2
  %91 = extractvalue %dx.types.CBufRet.f32 %89, 3
  %92 = fmul fast float %67, 2.000000e+00
  %93 = fmul fast float %92, %90
  %94 = fmul fast float %68, 2.000000e+00
  %95 = fmul fast float %94, %91
  %96 = fsub fast float 1.000000e+00, %93
  %97 = fsub fast float 1.000000e+00, %95
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = fmul fast float %96, %99
  %103 = fmul fast float %96, %100
  %104 = fmul fast float %96, %101
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fmul fast float %97, %106
  %110 = fmul fast float %97, %107
  %111 = fmul fast float %97, %108
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 0
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 1
  %115 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %116 = fadd fast float %109, %113
  %117 = fadd fast float %116, %102
  %118 = fadd fast float %110, %114
  %119 = fadd fast float %118, %103
  %120 = fadd fast float %111, %115
  %121 = fadd fast float %120, %104
  %122 = fmul fast float %117, %62
  %123 = fmul fast float %119, %62
  %124 = fmul fast float %121, %62
  %125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %126 = extractvalue %dx.types.CBufRet.f32 %125, 2
  %127 = extractvalue %dx.types.CBufRet.f32 %125, 3
  %128 = fmul fast float %126, %67
  %129 = fmul fast float %127, %68
  %130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %131 = extractvalue %dx.types.ResRet.i32 %130, 0
  %132 = and i32 %131, 114688
  %133 = icmp ne i32 %132, 0
  %134 = select i1 %133, float %128, float 0.000000e+00
  %135 = select i1 %133, float %129, float 0.000000e+00
  %136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %134, float %135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %137 = extractvalue %dx.types.ResRet.f32 %136, 0
  %138 = fmul fast float %137, 2.550000e+02
  %139 = fptoui float %138 to i32
  %140 = select i1 %133, i32 %139, i32 0
  %141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.i32 %142, 3
  %144 = and i32 %143, 3
  %145 = icmp ne i32 %144, 0
  %146 = and i32 %143, 4
  %147 = icmp ne i32 %146, 0
  %148 = and i1 %145, %147
  br i1 %148, label %149, label %160

; <label>:149                                     ; preds = %0
  %150 = extractvalue %dx.types.CBufRet.f32 %141, 3
  %151 = fmul fast float %150, %68
  %152 = extractvalue %dx.types.CBufRet.f32 %141, 2
  %153 = fmul fast float %152, %67
  %154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %38, float %153, float %151, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = fsub fast float 1.000000e+00, %155
  %157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %158 = extractvalue %dx.types.CBufRet.f32 %157, 0
  %159 = fcmp fast olt float %156, %158
  br label %163

; <label>:160                                     ; preds = %0
  %161 = icmp eq i32 %146, 0
  %162 = and i1 %145, %161
  br label %163

; <label>:163                                     ; preds = %160, %149
  %164 = phi i1 [ %159, %149 ], [ %162, %160 ]
  %165 = add i32 %42, 156
  %166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %165, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %177 = add i32 %42, 216
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %191 = add i32 %42, 36
  %192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %191, i32 undef)  ; BufferLoad(srv,index,wot)
  %193 = extractvalue %dx.types.ResRet.i32 %192, 0
  %194 = and i32 %193, 65535
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = lshr i32 %193, 16
  %197 = call float @dx.op.legacyF16ToF32(i32 131, i32 %196)  ; LegacyF16ToF32(value)
  %198 = add i32 %42, 288
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = and i32 %200, 65535
  %202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %201)  ; LegacyF16ToF32(value)
  %203 = lshr i32 %200, 16
  %204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %203)  ; LegacyF16ToF32(value)
  %205 = fmul fast float %202, 0x3F50624DE0000000
  %206 = fmul fast float %204, 0x3F50624DE0000000
  %207 = add i32 %42, 172
  %208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %207, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %219 = add i32 %42, 232
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %233 = add i32 %42, 52
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %235, 16
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = add i32 %42, 304
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %242, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = fmul fast float %244, 0x3F50624DE0000000
  %248 = fmul fast float %246, 0x3F50624DE0000000
  %249 = add i32 %42, 188
  %250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %249, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %261 = add i32 %42, 248
  %262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %275 = add i32 %42, 68
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = add i32 %42, 320
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = and i32 %284, 65535
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %284, 16
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = fmul fast float %286, 0x3F50624DE0000000
  %290 = fmul fast float %288, 0x3F50624DE0000000
  %291 = add i32 %42, 204
  %292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %291, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %303 = add i32 %42, 264
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %317 = add i32 %42, 84
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = add i32 %42, 336
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = and i32 %326, 65535
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %326, 16
  %330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %329)  ; LegacyF16ToF32(value)
  %331 = fmul fast float %328, 0x3F50624DE0000000
  %332 = fmul fast float %330, 0x3F50624DE0000000
  %333 = add i32 %42, 348
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = and i32 %335, 32
  %337 = icmp eq i32 %336, 0
  %338 = and i32 %335, 64
  %339 = icmp eq i32 %338, 0
  %340 = and i32 %335, 128
  %341 = icmp eq i32 %340, 0
  %342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %343 = extractvalue %dx.types.ResRet.i32 %342, 0
  %344 = and i32 %343, 2
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %359, label %346

; <label>:346                                     ; preds = %163
  %347 = add i32 %42, 472
  %348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %347, i32 undef)  ; BufferLoad(srv,index,wot)
  %349 = extractvalue %dx.types.ResRet.i32 %348, 0
  %350 = add i32 %349, 0
  %351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %350, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %352 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %351, %dx.types.Handle %64, float %55, float %56, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %353 = extractvalue %dx.types.ResRet.f32 %352, 0
  %354 = extractvalue %dx.types.ResRet.f32 %352, 1
  %355 = extractvalue %dx.types.ResRet.f32 %352, 2
  %356 = fmul fast float %353, %57
  %357 = fmul fast float %354, %58
  %358 = fmul fast float %355, %59
  br label %359

; <label>:359                                     ; preds = %346, %163
  %360 = phi float [ %59, %163 ], [ %358, %346 ]
  %361 = phi float [ %58, %163 ], [ %357, %346 ]
  %362 = phi float [ %57, %163 ], [ %356, %346 ]
  %363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %364 = extractvalue %dx.types.ResRet.i32 %363, 0
  %365 = and i32 %364, 2
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %386, label %367

; <label>:367                                     ; preds = %359
  %368 = add i32 %42, 44
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 1
  %372 = icmp ne i32 %371, 0
  %373 = select i1 %372, float %362, float 1.000000e+00
  %374 = add i32 %42, 60
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %374, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 1
  %378 = icmp ne i32 %377, 0
  %379 = select i1 %378, float %361, float 1.000000e+00
  %380 = add i32 %42, 76
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
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
  %393 = add i32 %42, 24
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = add i32 %42, 28
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = or i32 %398, %395
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %851, label %401

; <label>:401                                     ; preds = %386
  %402 = add i32 %42, 284
  %403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %404 = extractvalue %dx.types.ResRet.i32 %403, 0
  %405 = lshr i32 %404, 16
  %406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %405)  ; LegacyF16ToF32(value)
  %407 = fmul fast float %406, 0x3F50624DE0000000
  %408 = add i32 %42, 88
  %409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %408, i32 undef)  ; BufferLoad(srv,index,wot)
  %410 = extractvalue %dx.types.ResRet.i32 %409, 0
  %411 = lshr i32 %410, 16
  %412 = and i32 %411, 255
  %413 = lshr i32 %410, 24
  %414 = add i32 %42, 292
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = and i32 %416, 65535
  %418 = call float @dx.op.legacyF16ToF32(i32 131, i32 %417)  ; LegacyF16ToF32(value)
  %419 = lshr i32 %416, 16
  %420 = call float @dx.op.legacyF16ToF32(i32 131, i32 %419)  ; LegacyF16ToF32(value)
  %421 = add i32 %42, 32
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = lshr i32 %423, 22
  %425 = shl nuw nsw i32 %424, 5
  %426 = call float @dx.op.legacyF16ToF32(i32 131, i32 %425)  ; LegacyF16ToF32(value)
  %427 = shl i32 %423, 4
  %428 = and i32 %427, 32752
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = lshr i32 %423, 7
  %431 = and i32 %430, 32752
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %434 = extractvalue %dx.types.CBufRet.f32 %433, 3
  %435 = fmul fast float %434, 1.000000e+03
  %436 = fmul fast float %205, %435
  %437 = call float @dx.op.unary.f32(i32 22, float %436)  ; Frc(value)
  %438 = fadd fast float %437, %195
  %439 = fmul fast float %206, %435
  %440 = call float @dx.op.unary.f32(i32 22, float %439)  ; Frc(value)
  %441 = fadd fast float %440, %197
  %442 = fmul fast float %407, %435
  %443 = call float @dx.op.unary.f32(i32 22, float %442)  ; Frc(value)
  %444 = fmul fast float %443, 0x401921FB60000000
  %445 = fadd fast float %444, %426
  %446 = call float @dx.op.unary.f32(i32 13, float %445)  ; Sin(value)
  %447 = call float @dx.op.unary.f32(i32 12, float %445)  ; Cos(value)
  %448 = fsub fast float -0.000000e+00, %446
  %449 = fadd fast float %55, -5.000000e-01
  %450 = fadd fast float %56, -5.000000e-01
  %451 = fmul fast float %418, %449
  %452 = fmul fast float %420, %450
  %453 = fadd fast float %451, 5.000000e-01
  %454 = fadd fast float %452, 5.000000e-01
  %455 = fmul fast float %429, %453
  %456 = fmul fast float %432, %454
  %457 = fmul fast float %447, %455
  %458 = call float @dx.op.tertiary.f32(i32 46, float %448, float %456, float %457)  ; FMad(a,b,c)
  %459 = fmul fast float %446, %455
  %460 = call float @dx.op.tertiary.f32(i32 46, float %447, float %456, float %459)  ; FMad(a,b,c)
  %461 = fadd fast float %438, %458
  %462 = fadd fast float %441, %460
  %463 = icmp ugt i32 %412, 1
  %464 = icmp ugt i32 %410, 33554431
  %465 = or i1 %464, %463
  br i1 %465, label %466, label %491

; <label>:466                                     ; preds = %401
  %467 = add i32 %42, 228
  %468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %467, i32 undef)  ; BufferLoad(srv,index,wot)
  %469 = extractvalue %dx.types.ResRet.i32 %468, 0
  %470 = lshr i32 %469, 16
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = fmul fast float %434, %471
  %473 = call float @dx.op.unary.f32(i32 22, float %472)  ; Frc(value)
  %474 = mul nuw nsw i32 %412, %413
  %475 = uitofp i32 %474 to float
  %476 = fmul fast float %473, %475
  %477 = call float @dx.op.unary.f32(i32 27, float %476)  ; Round_ni(value)
  %478 = fptoui float %477 to i32
  %479 = urem i32 %478, %412
  %480 = udiv i32 %478, %413
  %481 = call float @dx.op.unary.f32(i32 22, float %461)  ; Frc(value)
  %482 = call float @dx.op.unary.f32(i32 22, float %462)  ; Frc(value)
  %483 = uitofp i32 %479 to float
  %484 = uitofp i32 %480 to float
  %485 = fadd fast float %481, %483
  %486 = fadd fast float %482, %484
  %487 = uitofp i32 %412 to float
  %488 = uitofp i32 %413 to float
  %489 = fdiv fast float %485, %487
  %490 = fdiv fast float %486, %488
  br label %491

; <label>:491                                     ; preds = %466, %401
  %492 = phi float [ %489, %466 ], [ %461, %401 ]
  %493 = phi float [ %490, %466 ], [ %462, %401 ]
  %494 = and i32 %395, 16
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %692, label %496

; <label>:496                                     ; preds = %491
  %497 = add i32 %42, 360
  %498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %497, i32 undef)  ; BufferLoad(srv,index,wot)
  %499 = extractvalue %dx.types.ResRet.i32 %498, 0
  %500 = add i32 %499, 0
  %501 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %500, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %502 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %501, %dx.types.Handle %63, float %492, float %493, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %503 = extractvalue %dx.types.ResRet.f32 %502, 0
  %504 = extractvalue %dx.types.ResRet.f32 %502, 1
  %505 = extractvalue %dx.types.ResRet.f32 %502, 2
  %506 = extractvalue %dx.types.ResRet.f32 %502, 3
  %507 = and i32 %410, 255
  %508 = uitofp i32 %507 to float
  %509 = lshr i32 %410, 8
  %510 = and i32 %509, 255
  %511 = uitofp i32 %510 to float
  %512 = fmul fast float %506, %508
  %513 = fadd fast float %512, %511
  %514 = fmul fast float %513, 0x3F70101000000000
  %515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %516 = extractvalue %dx.types.ResRet.i32 %515, 0
  %517 = and i32 %516, 512
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %527, label %519

; <label>:519                                     ; preds = %496
  %520 = add i32 %42, 440
  %521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %520, i32 undef)  ; BufferLoad(srv,index,wot)
  %522 = extractvalue %dx.types.ResRet.i32 %521, 0
  %523 = add i32 %522, 0
  %524 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %523, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %525 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %524, %dx.types.Handle %64, float %492, float %493, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %526 = extractvalue %dx.types.ResRet.f32 %525, 0
  br label %527

; <label>:527                                     ; preds = %519, %496
  %528 = phi float [ %526, %519 ], [ 1.000000e+00, %496 ]
  %529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %530 = extractvalue %dx.types.ResRet.i32 %529, 0
  %531 = and i32 %530, 33554432
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %639, label %533

; <label>:533                                     ; preds = %527
  %534 = add i32 %42, 224
  %535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %534, i32 undef)  ; BufferLoad(srv,index,wot)
  %536 = extractvalue %dx.types.ResRet.i32 %535, 0
  %537 = and i32 %536, 65535
  %538 = call float @dx.op.legacyF16ToF32(i32 131, i32 %537)  ; LegacyF16ToF32(value)
  %539 = lshr i32 %536, 16
  %540 = call float @dx.op.legacyF16ToF32(i32 131, i32 %539)  ; LegacyF16ToF32(value)
  %541 = add i32 %42, 228
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = and i32 %543, 65535
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = lshr i32 %547, 24
  %549 = uitofp i32 %548 to float
  %550 = fmul fast float %549, 0x3F70101020000000
  %551 = and i32 %547, 255
  %552 = uitofp i32 %551 to float
  %553 = fmul fast float %552, 0x3F70101020000000
  %554 = lshr i32 %547, 8
  %555 = and i32 %554, 255
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %556, 0x3F70101020000000
  %558 = lshr i32 %547, 16
  %559 = and i32 %558, 255
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %560, 0x3F70101020000000
  %562 = add i32 %42, 220
  %563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %562, i32 undef)  ; BufferLoad(srv,index,wot)
  %564 = extractvalue %dx.types.ResRet.i32 %563, 0
  %565 = lshr i32 %564, 24
  %566 = uitofp i32 %565 to float
  %567 = fmul fast float %566, 0x3F70101020000000
  %568 = and i32 %564, 255
  %569 = uitofp i32 %568 to float
  %570 = fmul fast float %569, 0x3F70101020000000
  %571 = lshr i32 %564, 8
  %572 = and i32 %571, 255
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %573, 0x3F70101020000000
  %575 = lshr i32 %564, 16
  %576 = and i32 %575, 255
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %577, 0x3F70101020000000
  %579 = bitcast float %503 to i32
  %580 = ashr i32 %579, 1
  %581 = sub nsw i32 1597463174, %580
  %582 = bitcast i32 %581 to float
  %583 = fmul fast float %503, 5.000000e-01
  %584 = fmul fast float %582, %582
  %585 = fmul fast float %584, %583
  %586 = fsub fast float 1.500000e+00, %585
  %587 = fmul fast float %582, %503
  %588 = fmul fast float %587, %586
  %589 = bitcast float %504 to i32
  %590 = ashr i32 %589, 1
  %591 = sub nsw i32 1597463174, %590
  %592 = bitcast i32 %591 to float
  %593 = fmul fast float %504, 5.000000e-01
  %594 = fmul fast float %592, %592
  %595 = fmul fast float %594, %593
  %596 = fsub fast float 1.500000e+00, %595
  %597 = fmul fast float %592, %504
  %598 = fmul fast float %597, %596
  %599 = bitcast float %505 to i32
  %600 = ashr i32 %599, 1
  %601 = sub nsw i32 1597463174, %600
  %602 = bitcast i32 %601 to float
  %603 = fmul fast float %505, 5.000000e-01
  %604 = fmul fast float %602, %602
  %605 = fmul fast float %604, %603
  %606 = fsub fast float 1.500000e+00, %605
  %607 = fmul fast float %602, %505
  %608 = fmul fast float %607, %606
  %609 = fsub fast float %588, %570
  %610 = fsub fast float %598, %574
  %611 = fsub fast float %608, %578
  %612 = fmul fast float %609, %538
  %613 = fmul fast float %610, %540
  %614 = fmul fast float %611, %545
  %615 = fadd fast float %612, %553
  %616 = fadd fast float %613, %557
  %617 = fadd fast float %614, %561
  %618 = call float @dx.op.unary.f32(i32 7, float %615)  ; Saturate(value)
  %619 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  %620 = call float @dx.op.unary.f32(i32 7, float %617)  ; Saturate(value)
  %621 = fmul fast float %618, %618
  %622 = fmul fast float %619, %619
  %623 = fmul fast float %620, %620
  %624 = fsub fast float %621, %503
  %625 = fsub fast float %622, %504
  %626 = fsub fast float %623, %505
  %627 = fmul fast float %624, %528
  %628 = fmul fast float %625, %528
  %629 = fmul fast float %626, %528
  %630 = fadd fast float %627, %503
  %631 = fadd fast float %628, %504
  %632 = fadd fast float %629, %505
  %633 = fadd fast float %550, %514
  %634 = fsub fast float %633, %567
  %635 = call float @dx.op.unary.f32(i32 7, float %634)  ; Saturate(value)
  %636 = fsub fast float %635, %514
  %637 = fmul fast float %636, %528
  %638 = fadd fast float %637, %514
  br label %692

; <label>:639                                     ; preds = %527
  %640 = and i32 %530, 134217728
  %641 = icmp eq i32 %640, 0
  br i1 %641, label %676, label %642

; <label>:642                                     ; preds = %639
  %643 = call float @dx.op.unary.f32(i32 24, float %182)  ; Sqrt(value)
  %644 = call float @dx.op.unary.f32(i32 24, float %186)  ; Sqrt(value)
  %645 = call float @dx.op.unary.f32(i32 24, float %190)  ; Sqrt(value)
  %646 = fadd fast float %643, -5.000000e-01
  %647 = fadd fast float %644, -5.000000e-01
  %648 = fadd fast float %645, -5.000000e-01
  %649 = fmul fast float %646, %528
  %650 = fmul fast float %647, %528
  %651 = fmul fast float %648, %528
  %652 = fadd fast float %649, 5.000000e-01
  %653 = fadd fast float %650, 5.000000e-01
  %654 = fadd fast float %651, 5.000000e-01
  %655 = call float @dx.op.unary.f32(i32 24, float %503)  ; Sqrt(value)
  %656 = call float @dx.op.unary.f32(i32 24, float %504)  ; Sqrt(value)
  %657 = call float @dx.op.unary.f32(i32 24, float %505)  ; Sqrt(value)
  %658 = fmul fast float %652, 2.000000e+00
  %659 = fsub fast float 1.000000e+00, %658
  %660 = fmul fast float %659, %655
  %661 = fadd fast float %660, %658
  %662 = fmul fast float %661, %655
  %663 = fmul fast float %653, 2.000000e+00
  %664 = fsub fast float 1.000000e+00, %663
  %665 = fmul fast float %664, %656
  %666 = fadd fast float %665, %663
  %667 = fmul fast float %666, %656
  %668 = fmul fast float %654, 2.000000e+00
  %669 = fsub fast float 1.000000e+00, %668
  %670 = fmul fast float %669, %657
  %671 = fadd fast float %670, %668
  %672 = fmul fast float %671, %657
  %673 = fmul fast float %662, %662
  %674 = fmul fast float %667, %667
  %675 = fmul fast float %672, %672
  br label %692

; <label>:676                                     ; preds = %639
  %677 = fmul fast float %182, %182
  %678 = fmul fast float %186, %186
  %679 = fmul fast float %190, %190
  %680 = fadd fast float %677, -1.000000e+00
  %681 = fadd fast float %678, -1.000000e+00
  %682 = fadd fast float %679, -1.000000e+00
  %683 = fmul fast float %528, %680
  %684 = fmul fast float %528, %681
  %685 = fmul fast float %528, %682
  %686 = fadd fast float %683, 1.000000e+00
  %687 = fadd fast float %684, 1.000000e+00
  %688 = fadd fast float %685, 1.000000e+00
  %689 = fmul fast float %686, %503
  %690 = fmul fast float %687, %504
  %691 = fmul fast float %688, %505
  br label %692

; <label>:692                                     ; preds = %676, %642, %533, %491
  %693 = phi float [ %638, %533 ], [ %514, %642 ], [ %514, %676 ], [ 0x3FA23C0BE0000000, %491 ]
  %694 = phi float [ %630, %533 ], [ %673, %642 ], [ %689, %676 ], [ 1.000000e+00, %491 ]
  %695 = phi float [ %631, %533 ], [ %674, %642 ], [ %690, %676 ], [ 1.000000e+00, %491 ]
  %696 = phi float [ %632, %533 ], [ %675, %642 ], [ %691, %676 ], [ 1.000000e+00, %491 ]
  %697 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %698 = extractvalue %dx.types.CBufRet.i32 %697, 1
  %699 = and i32 %698, 1
  %700 = icmp ne i32 %699, 0
  %701 = add i32 %42, 356
  %702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %701, i32 undef)  ; BufferLoad(srv,index,wot)
  %703 = extractvalue %dx.types.ResRet.i32 %702, 0
  %704 = and i32 %703, 32
  %705 = icmp ne i32 %704, 0
  %706 = and i1 %700, %705
  %707 = select i1 %706, float 1.000000e+00, float %694
  %708 = select i1 %706, float 0x3FD3333340000000, float %695
  %709 = select i1 %706, float 0x3FD3333340000000, float %696
  %710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %711 = extractvalue %dx.types.ResRet.i32 %710, 0
  %712 = and i32 %711, 32
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %786, label %714

; <label>:714                                     ; preds = %692
  %715 = add i32 %42, 92
  %716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %715, i32 undef)  ; BufferLoad(srv,index,wot)
  %717 = extractvalue %dx.types.ResRet.i32 %716, 0
  %718 = add i32 %42, 376
  %719 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %718, i32 undef)  ; BufferLoad(srv,index,wot)
  %720 = extractvalue %dx.types.ResRet.i32 %719, 0
  %721 = add i32 %720, 0
  %722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %721, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %723 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %722, %dx.types.Handle %63, float %492, float %493, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %724 = extractvalue %dx.types.ResRet.f32 %723, 0
  %725 = extractvalue %dx.types.ResRet.f32 %723, 1
  %726 = extractvalue %dx.types.ResRet.f32 %723, 2
  %727 = extractvalue %dx.types.ResRet.f32 %723, 3
  %728 = and i32 %717, 255
  %729 = uitofp i32 %728 to float
  %730 = lshr i32 %717, 8
  %731 = and i32 %730, 255
  %732 = uitofp i32 %731 to float
  %733 = lshr i32 %717, 16
  %734 = and i32 %733, 255
  %735 = uitofp i32 %734 to float
  %736 = fmul fast float %735, 0x3F70101000000000
  %737 = fmul fast float %724, %729
  %738 = fadd fast float %737, %732
  %739 = fmul fast float %738, 0x3F70101000000000
  %740 = fadd fast float %725, -5.000000e-01
  %741 = fadd fast float %727, -5.000000e-01
  %742 = fmul fast float %740, %736
  %743 = fmul fast float %741, %736
  %744 = fadd fast float %742, 5.000000e-01
  %745 = fadd fast float %743, 5.000000e-01
  %746 = fmul fast float %744, 2.000000e+00
  %747 = fadd fast float %746, -1.000000e+00
  %748 = fmul fast float %745, 2.000000e+00
  %749 = fadd fast float %748, -1.000000e+00
  %750 = fadd fast float %747, %749
  %751 = fmul fast float %750, 5.000000e-01
  %752 = fsub fast float %747, %749
  %753 = fmul fast float %752, 5.000000e-01
  %754 = call float @dx.op.unary.f32(i32 6, float %751)  ; FAbs(value)
  %755 = fsub fast float 1.000000e+00, %754
  %756 = call float @dx.op.unary.f32(i32 6, float %753)  ; FAbs(value)
  %757 = fsub fast float %755, %756
  %758 = call float @dx.op.dot3.f32(i32 55, float %751, float %753, float %757, float %751, float %753, float %757)  ; Dot3(ax,ay,az,bx,by,bz)
  %759 = call float @dx.op.unary.f32(i32 25, float %758)  ; Rsqrt(value)
  %760 = fmul fast float %751, %759
  %761 = fmul fast float %753, %759
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = and i32 %763, 67108864
  %765 = icmp eq i32 %764, 0
  br i1 %765, label %782, label %766

; <label>:766                                     ; preds = %714
  %767 = add i32 %42, 280
  %768 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %767, i32 undef)  ; BufferLoad(srv,index,wot)
  %769 = extractvalue %dx.types.ResRet.i32 %768, 0
  %770 = and i32 %769, 65535
  %771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %770)  ; LegacyF16ToF32(value)
  %772 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %402, i32 undef)  ; BufferLoad(srv,index,wot)
  %773 = extractvalue %dx.types.ResRet.i32 %772, 0
  %774 = and i32 %773, 65535
  %775 = call float @dx.op.legacyF16ToF32(i32 131, i32 %774)  ; LegacyF16ToF32(value)
  %776 = lshr i32 %769, 16
  %777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %776)  ; LegacyF16ToF32(value)
  %778 = fsub fast float %739, %777
  %779 = fmul fast float %778, %771
  %780 = fadd fast float %779, %775
  %781 = call float @dx.op.unary.f32(i32 7, float %780)  ; Saturate(value)
  br label %782

; <label>:782                                     ; preds = %766, %714
  %783 = phi float [ %781, %766 ], [ %739, %714 ]
  %784 = call float @dx.op.dot2.f32(i32 54, float %760, float %761, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %785 = call float @dx.op.dot2.f32(i32 54, float %760, float %761, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %786

; <label>:786                                     ; preds = %782, %692
  %787 = phi float [ %783, %782 ], [ 0x3FD6666660000000, %692 ]
  %788 = phi float [ %784, %782 ], [ 0.000000e+00, %692 ]
  %789 = phi float [ %785, %782 ], [ 0.000000e+00, %692 ]
  %790 = phi float [ %726, %782 ], [ 1.000000e+00, %692 ]
  %791 = add i32 %42, 160
  %792 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %791, i32 undef)  ; BufferLoad(srv,index,wot)
  %793 = extractvalue %dx.types.ResRet.i32 %792, 0
  %794 = lshr i32 %793, 22
  %795 = shl nuw nsw i32 %794, 5
  %796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %795)  ; LegacyF16ToF32(value)
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, 64
  %800 = icmp eq i32 %799, 0
  br i1 %800, label %834, label %801

; <label>:801                                     ; preds = %786
  %802 = add i32 %42, 392
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = add i32 %804, 0
  %806 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %805, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 131072
  %810 = icmp eq i32 %809, 0
  %811 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %806, %dx.types.Handle %63, float %492, float %493, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %812 = extractvalue %dx.types.ResRet.f32 %811, 0
  %813 = extractvalue %dx.types.ResRet.f32 %811, 1
  %814 = extractvalue %dx.types.ResRet.f32 %811, 2
  %815 = fmul fast float %812, %170
  %816 = fmul fast float %813, %173
  %817 = fmul fast float %814, %176
  br i1 %810, label %824, label %818

; <label>:818                                     ; preds = %801
  %819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %820 = extractvalue %dx.types.CBufRet.f32 %819, 0
  %821 = fmul fast float %820, %815
  %822 = fmul fast float %820, %816
  %823 = fmul fast float %820, %817
  br label %824

; <label>:824                                     ; preds = %818, %801
  %825 = phi float [ %821, %818 ], [ %815, %801 ]
  %826 = phi float [ %822, %818 ], [ %816, %801 ]
  %827 = phi float [ %823, %818 ], [ %817, %801 ]
  %828 = fmul fast float %825, %796
  %829 = select i1 %164, float %828, float %825
  %830 = call float @dx.op.dot3.f32(i32 55, float %829, float %826, float %827, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = select i1 %164, float 0.000000e+00, float %825
  %832 = select i1 %164, float %830, float %826
  %833 = select i1 %164, float 0.000000e+00, float %827
  br label %834

; <label>:834                                     ; preds = %824, %786
  %835 = phi float [ %831, %824 ], [ 0.000000e+00, %786 ]
  %836 = phi float [ %832, %824 ], [ 0.000000e+00, %786 ]
  %837 = phi float [ %833, %824 ], [ 0.000000e+00, %786 ]
  %838 = add i32 %42, 96
  %839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %838, i32 undef)  ; BufferLoad(srv,index,wot)
  %840 = extractvalue %dx.types.ResRet.i32 %839, 0
  %841 = and i32 %840, 255
  %842 = uitofp i32 %841 to float
  %843 = lshr i32 %840, 8
  %844 = and i32 %843, 255
  %845 = uitofp i32 %844 to float
  %846 = call float @dx.op.dot3.f32(i32 55, float %707, float %708, float %709, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %847 = fmul fast float %845, %846
  %848 = fadd fast float %847, %842
  %849 = fmul fast float %848, 0x3F70101020000000
  %850 = call float @dx.op.unary.f32(i32 7, float %849)  ; Saturate(value)
  br label %851

; <label>:851                                     ; preds = %834, %386
  %852 = phi float [ 0.000000e+00, %386 ], [ %788, %834 ]
  %853 = phi float [ 0.000000e+00, %386 ], [ %789, %834 ]
  %854 = phi float [ 0.000000e+00, %386 ], [ %707, %834 ]
  %855 = phi float [ 0.000000e+00, %386 ], [ %708, %834 ]
  %856 = phi float [ 0.000000e+00, %386 ], [ %709, %834 ]
  %857 = phi float [ 0.000000e+00, %386 ], [ %835, %834 ]
  %858 = phi float [ 0.000000e+00, %386 ], [ %836, %834 ]
  %859 = phi float [ 0.000000e+00, %386 ], [ %837, %834 ]
  %860 = phi float [ 0.000000e+00, %386 ], [ %693, %834 ]
  %861 = phi float [ 0.000000e+00, %386 ], [ 1.000000e+00, %834 ]
  %862 = phi float [ 0.000000e+00, %386 ], [ %787, %834 ]
  %863 = phi float [ 0.000000e+00, %386 ], [ %790, %834 ]
  %864 = phi float [ 0.000000e+00, %386 ], [ %850, %834 ]
  br i1 %337, label %1698, label %865

; <label>:865                                     ; preds = %851
  %866 = icmp ult i32 %392, 2
  %867 = add i32 %42, 40
  %868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %869 = extractvalue %dx.types.ResRet.i32 %868, 0
  %870 = add i32 %42, 44
  %871 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %870, i32 undef)  ; BufferLoad(srv,index,wot)
  %872 = extractvalue %dx.types.ResRet.i32 %871, 0
  %873 = or i32 %872, %869
  %874 = icmp eq i32 %873, 0
  br i1 %874, label %1698, label %875

; <label>:875                                     ; preds = %865
  %876 = add i32 %42, 300
  %877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %878 = extractvalue %dx.types.ResRet.i32 %877, 0
  %879 = lshr i32 %878, 16
  %880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %879)  ; LegacyF16ToF32(value)
  %881 = fmul fast float %880, 0x3F50624DE0000000
  %882 = add i32 %42, 104
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = lshr i32 %884, 16
  %886 = and i32 %885, 255
  %887 = lshr i32 %884, 24
  %888 = add i32 %42, 308
  %889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %888, i32 undef)  ; BufferLoad(srv,index,wot)
  %890 = extractvalue %dx.types.ResRet.i32 %889, 0
  %891 = and i32 %890, 65535
  %892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %891)  ; LegacyF16ToF32(value)
  %893 = lshr i32 %890, 16
  %894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %893)  ; LegacyF16ToF32(value)
  %895 = add i32 %42, 48
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = lshr i32 %897, 22
  %899 = shl nuw nsw i32 %898, 5
  %900 = call float @dx.op.legacyF16ToF32(i32 131, i32 %899)  ; LegacyF16ToF32(value)
  %901 = shl i32 %897, 4
  %902 = and i32 %901, 32752
  %903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %902)  ; LegacyF16ToF32(value)
  %904 = lshr i32 %897, 7
  %905 = and i32 %904, 32752
  %906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %905)  ; LegacyF16ToF32(value)
  %907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %908 = extractvalue %dx.types.CBufRet.f32 %907, 3
  %909 = fmul fast float %908, 1.000000e+03
  %910 = fmul fast float %247, %909
  %911 = call float @dx.op.unary.f32(i32 22, float %910)  ; Frc(value)
  %912 = fadd fast float %911, %237
  %913 = fmul fast float %248, %909
  %914 = call float @dx.op.unary.f32(i32 22, float %913)  ; Frc(value)
  %915 = fadd fast float %914, %239
  %916 = fmul fast float %881, %909
  %917 = call float @dx.op.unary.f32(i32 22, float %916)  ; Frc(value)
  %918 = fmul fast float %917, 0x401921FB60000000
  %919 = fadd fast float %918, %900
  %920 = call float @dx.op.unary.f32(i32 13, float %919)  ; Sin(value)
  %921 = call float @dx.op.unary.f32(i32 12, float %919)  ; Cos(value)
  %922 = fsub fast float -0.000000e+00, %920
  %923 = fadd fast float %55, -5.000000e-01
  %924 = fadd fast float %56, -5.000000e-01
  %925 = fmul fast float %892, %923
  %926 = fmul fast float %894, %924
  %927 = fadd fast float %925, 5.000000e-01
  %928 = fadd fast float %926, 5.000000e-01
  %929 = fmul fast float %903, %927
  %930 = fmul fast float %906, %928
  %931 = fmul fast float %921, %929
  %932 = call float @dx.op.tertiary.f32(i32 46, float %922, float %930, float %931)  ; FMad(a,b,c)
  %933 = fmul fast float %920, %929
  %934 = call float @dx.op.tertiary.f32(i32 46, float %921, float %930, float %933)  ; FMad(a,b,c)
  %935 = fadd fast float %912, %932
  %936 = fadd fast float %915, %934
  %937 = icmp ugt i32 %886, 1
  %938 = icmp ugt i32 %884, 33554431
  %939 = or i1 %938, %937
  br i1 %939, label %940, label %965

; <label>:940                                     ; preds = %875
  %941 = add i32 %42, 244
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = lshr i32 %943, 16
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = fmul fast float %908, %945
  %947 = call float @dx.op.unary.f32(i32 22, float %946)  ; Frc(value)
  %948 = mul nuw nsw i32 %886, %887
  %949 = uitofp i32 %948 to float
  %950 = fmul fast float %947, %949
  %951 = call float @dx.op.unary.f32(i32 27, float %950)  ; Round_ni(value)
  %952 = fptoui float %951 to i32
  %953 = urem i32 %952, %886
  %954 = udiv i32 %952, %887
  %955 = call float @dx.op.unary.f32(i32 22, float %935)  ; Frc(value)
  %956 = call float @dx.op.unary.f32(i32 22, float %936)  ; Frc(value)
  %957 = uitofp i32 %953 to float
  %958 = uitofp i32 %954 to float
  %959 = fadd fast float %955, %957
  %960 = fadd fast float %956, %958
  %961 = uitofp i32 %886 to float
  %962 = uitofp i32 %887 to float
  %963 = fdiv fast float %959, %961
  %964 = fdiv fast float %960, %962
  br label %965

; <label>:965                                     ; preds = %940, %875
  %966 = phi float [ %963, %940 ], [ %935, %875 ]
  %967 = phi float [ %964, %940 ], [ %936, %875 ]
  %968 = and i32 %869, 16777216
  %969 = icmp eq i32 %968, 0
  br i1 %969, label %1079, label %970

; <label>:970                                     ; preds = %965
  %971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %972 = extractvalue %dx.types.CBufRet.f32 %971, 0
  %973 = extractvalue %dx.types.CBufRet.f32 %971, 1
  %974 = extractvalue %dx.types.CBufRet.f32 %971, 2
  %975 = fadd fast float %972, %122
  %976 = fadd fast float %973, %123
  %977 = fadd fast float %974, %124
  %978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %979 = extractvalue %dx.types.CBufRet.f32 %978, 0
  %980 = call float @dx.op.unary.f32(i32 7, float %979)  ; Saturate(value)
  %981 = icmp eq i32 %43, 65535
  br i1 %981, label %1076, label %982

; <label>:982                                     ; preds = %970
  %983 = lshr i32 %43, 1
  %984 = shl i32 %983, 2
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = and i32 %43, 1
  %988 = icmp ne i32 %987, 0
  %989 = lshr i32 %986, 16
  %990 = and i32 %986, 65535
  %991 = select i1 %988, i32 %989, i32 %990
  %992 = icmp eq i32 %991, 65535
  br i1 %992, label %1072, label %993

; <label>:993                                     ; preds = %982
  %994 = mul nuw nsw i32 %991, 40
  %995 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %994, i32 undef)  ; BufferLoad(srv,index,wot)
  %996 = extractvalue %dx.types.ResRet.f32 %995, 0
  %997 = extractvalue %dx.types.ResRet.f32 %995, 1
  %998 = extractvalue %dx.types.ResRet.f32 %995, 2
  %999 = add nuw nsw i32 %994, 12
  %1000 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.f32 %1000, 0
  %1002 = extractvalue %dx.types.ResRet.f32 %1000, 1
  %1003 = extractvalue %dx.types.ResRet.f32 %1000, 2
  %1004 = add nuw nsw i32 %994, 24
  %1005 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.ResRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.ResRet.f32 %1005, 2
  %1009 = add nuw nsw i32 %994, 36
  %1010 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1009, i32 undef)  ; BufferLoad(srv,index,wot)
  %1011 = extractvalue %dx.types.ResRet.f32 %1010, 0
  %1012 = fsub fast float %975, %996
  %1013 = fsub fast float %976, %997
  %1014 = fsub fast float %977, %998
  %1015 = fmul fast float %1011, %1012
  %1016 = fmul fast float %1011, %1013
  %1017 = fmul fast float %1011, %1014
  %1018 = call float @dx.op.unary.f32(i32 27, float %1015)  ; Round_ni(value)
  %1019 = call float @dx.op.unary.f32(i32 27, float %1016)  ; Round_ni(value)
  %1020 = call float @dx.op.unary.f32(i32 27, float %1017)  ; Round_ni(value)
  %1021 = fadd fast float %1018, 5.000000e-01
  %1022 = fadd fast float %1019, 5.000000e-01
  %1023 = fadd fast float %1020, 5.000000e-01
  %1024 = fmul fast float %1021, %1001
  %1025 = fmul fast float %1022, %1002
  %1026 = fmul fast float %1023, %1003
  %1027 = shl i32 %43, 2
  %1028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1029 = extractvalue %dx.types.ResRet.i32 %1028, 0
  %1030 = add i32 %1029, 0
  %1031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1030, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1032 = call float @dx.op.unary.f32(i32 22, float %1024)  ; Frc(value)
  %1033 = call float @dx.op.unary.f32(i32 22, float %1025)  ; Frc(value)
  %1034 = call float @dx.op.unary.f32(i32 22, float %1026)  ; Frc(value)
  %1035 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1031, %dx.types.Handle %39, float %1032, float %1033, float %1034, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1036 = extractvalue %dx.types.ResRet.f32 %1035, 0
  %1037 = extractvalue %dx.types.ResRet.f32 %1035, 1
  %1038 = extractvalue %dx.types.ResRet.f32 %1035, 2
  %1039 = fmul fast float %1036, 1.023000e+03
  %1040 = fmul fast float %1037, 1.023000e+03
  %1041 = fmul fast float %1038, 1.023000e+03
  %1042 = fadd fast float %1039, 5.000000e-01
  %1043 = fadd fast float %1040, 5.000000e-01
  %1044 = fadd fast float %1041, 5.000000e-01
  %1045 = call float @dx.op.unary.f32(i32 27, float %1042)  ; Round_ni(value)
  %1046 = call float @dx.op.unary.f32(i32 27, float %1043)  ; Round_ni(value)
  %1047 = call float @dx.op.unary.f32(i32 27, float %1044)  ; Round_ni(value)
  %1048 = fsub fast float %1015, %1018
  %1049 = fsub fast float %1016, %1019
  %1050 = fsub fast float %1017, %1020
  %1051 = fmul fast float %1048, 7.500000e-01
  %1052 = fmul fast float %1049, 7.500000e-01
  %1053 = fmul fast float %1050, 7.500000e-01
  %1054 = fadd fast float %1018, 1.250000e-01
  %1055 = fadd fast float %1054, %1051
  %1056 = fadd fast float %1055, %1045
  %1057 = fadd fast float %1019, 1.250000e-01
  %1058 = fadd fast float %1057, %1052
  %1059 = fadd fast float %1058, %1046
  %1060 = fadd fast float %1020, 1.250000e-01
  %1061 = fadd fast float %1060, %1053
  %1062 = fadd fast float %1061, %1047
  %1063 = fmul fast float %1056, %1006
  %1064 = fmul fast float %1059, %1007
  %1065 = fmul fast float %1062, %1008
  %1066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1027, i32 undef)  ; BufferLoad(srv,index,wot)
  %1067 = extractvalue %dx.types.ResRet.i32 %1066, 0
  %1068 = add i32 %1067, 0
  %1069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1068, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1070 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1069, %dx.types.Handle %37, float %1063, float %1064, float %1065, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1071 = extractvalue %dx.types.ResRet.f32 %1070, 0
  br label %1072

; <label>:1072                                    ; preds = %993, %982
  %1073 = phi float [ %1071, %993 ], [ -1.000000e+00, %982 ]
  %1074 = fadd fast float %1073, %980
  %1075 = call float @dx.op.unary.f32(i32 7, float %1074)  ; Saturate(value)
  br label %1076

; <label>:1076                                    ; preds = %1072, %970
  %1077 = phi float [ %1075, %1072 ], [ %980, %970 ]
  %1078 = fmul fast float %1077, %389
  br label %1079

; <label>:1079                                    ; preds = %1076, %965
  %1080 = phi float [ %1078, %1076 ], [ %389, %965 ]
  %1081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.i32 %1081, 0
  %1083 = and i32 %1082, 256
  %1084 = icmp eq i32 %1083, 0
  br i1 %1084, label %1131, label %1085

; <label>:1085                                    ; preds = %1079
  %1086 = add i32 %42, 428
  %1087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1086, i32 undef)  ; BufferLoad(srv,index,wot)
  %1088 = extractvalue %dx.types.ResRet.i32 %1087, 0
  %1089 = add i32 %1088, 0
  %1090 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1089, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1091 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1090, %dx.types.Handle %64, float %966, float %967, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1092 = extractvalue %dx.types.ResRet.f32 %1091, 0
  %1093 = add i32 %42, 116
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1093, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = shl i32 %1095, 4
  %1097 = and i32 %1096, 32752
  %1098 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1097)  ; LegacyF16ToF32(value)
  %1099 = lshr i32 %1095, 7
  %1100 = and i32 %1099, 32752
  %1101 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1100)  ; LegacyF16ToF32(value)
  %1102 = fsub fast float 1.000000e+00, %1080
  %1103 = call float @dx.op.binary.f32(i32 35, float %1102, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1104 = bitcast float %1080 to i32
  %1105 = sitofp i32 %1104 to float
  %1106 = fadd fast float %1105, 0xC1CFBF8940000000
  %1107 = fmul fast float %1101, %1106
  %1108 = fadd fast float %1107, 0x41CFBF8940000000
  %1109 = fptosi float %1108 to i32
  %1110 = bitcast i32 %1109 to float
  %1111 = bitcast float %1103 to i32
  %1112 = sitofp i32 %1111 to float
  %1113 = fadd fast float %1112, 0xC1CFBF8940000000
  %1114 = fmul fast float %1113, %1101
  %1115 = fadd fast float %1114, 0x41CFBF8940000000
  %1116 = fptosi float %1115 to i32
  %1117 = bitcast i32 %1116 to float
  %1118 = fmul fast float %1110, %1098
  %1119 = fmul fast float %1117, %1098
  %1120 = fsub fast float %1103, %1118
  %1121 = fadd fast float %1119, %1103
  %1122 = call float @dx.op.unary.f32(i32 7, float %1120)  ; Saturate(value)
  %1123 = call float @dx.op.unary.f32(i32 7, float %1121)  ; Saturate(value)
  %1124 = fsub fast float %1092, %1122
  %1125 = fsub fast float %1123, %1122
  %1126 = bitcast float %1125 to i32
  %1127 = sub nsw i32 2129859010, %1126
  %1128 = bitcast i32 %1127 to float
  %1129 = fmul fast float %1128, %1124
  %1130 = call float @dx.op.unary.f32(i32 7, float %1129)  ; Saturate(value)
  br label %1131

; <label>:1131                                    ; preds = %1085, %1079
  %1132 = phi float [ %1130, %1085 ], [ %1080, %1079 ]
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = and i32 %1134, 128
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1153, label %1137

; <label>:1137                                    ; preds = %1131
  %1138 = add i32 %42, 412
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = add i32 %1140, 0
  %1142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1142, %dx.types.Handle %64, float %966, float %967, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = and i32 %1146, 524288
  %1148 = icmp ne i32 %1147, 0
  %1149 = fcmp fast ogt float %1144, 0x3FE0101020000000
  %1150 = select i1 %1149, float 1.000000e+00, float 0.000000e+00
  %1151 = select i1 %1148, float %1150, float %1144
  %1152 = fmul fast float %1151, %1132
  br label %1153

; <label>:1153                                    ; preds = %1137, %1131
  %1154 = phi float [ %1152, %1137 ], [ %1132, %1131 ]
  %1155 = fcmp fast ult float %1154, 0x3F70101020000000
  br i1 %1155, label %1698, label %1156

; <label>:1156                                    ; preds = %1153
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = and i32 %1158, 16
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1359, label %1161

; <label>:1161                                    ; preds = %1156
  %1162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1163 = extractvalue %dx.types.ResRet.i32 %1162, 0
  %1164 = add i32 %42, 364
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = add i32 %1166, 0
  %1168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1168, %dx.types.Handle %63, float %966, float %967, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = extractvalue %dx.types.ResRet.f32 %1169, 1
  %1172 = extractvalue %dx.types.ResRet.f32 %1169, 2
  %1173 = extractvalue %dx.types.ResRet.f32 %1169, 3
  %1174 = and i32 %1163, 255
  %1175 = uitofp i32 %1174 to float
  %1176 = lshr i32 %1163, 8
  %1177 = and i32 %1176, 255
  %1178 = uitofp i32 %1177 to float
  %1179 = fmul fast float %1173, %1175
  %1180 = fadd fast float %1179, %1178
  %1181 = fmul fast float %1180, 0x3F70101000000000
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 512
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1194, label %1186

; <label>:1186                                    ; preds = %1161
  %1187 = add i32 %42, 444
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = add i32 %1189, 0
  %1191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1191, %dx.types.Handle %64, float %966, float %967, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  br label %1194

; <label>:1194                                    ; preds = %1186, %1161
  %1195 = phi float [ %1193, %1186 ], [ 1.000000e+00, %1161 ]
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = and i32 %1197, 33554432
  %1199 = icmp eq i32 %1198, 0
  br i1 %1199, label %1306, label %1200

; <label>:1200                                    ; preds = %1194
  %1201 = add i32 %42, 240
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = and i32 %1203, 65535
  %1205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1204)  ; LegacyF16ToF32(value)
  %1206 = lshr i32 %1203, 16
  %1207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1206)  ; LegacyF16ToF32(value)
  %1208 = add i32 %42, 244
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1208, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = and i32 %1210, 65535
  %1212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1211)  ; LegacyF16ToF32(value)
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = lshr i32 %1214, 24
  %1216 = uitofp i32 %1215 to float
  %1217 = fmul fast float %1216, 0x3F70101020000000
  %1218 = and i32 %1214, 255
  %1219 = uitofp i32 %1218 to float
  %1220 = fmul fast float %1219, 0x3F70101020000000
  %1221 = lshr i32 %1214, 8
  %1222 = and i32 %1221, 255
  %1223 = uitofp i32 %1222 to float
  %1224 = fmul fast float %1223, 0x3F70101020000000
  %1225 = lshr i32 %1214, 16
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = fmul fast float %1227, 0x3F70101020000000
  %1229 = add i32 %42, 236
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1229, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = lshr i32 %1231, 24
  %1233 = uitofp i32 %1232 to float
  %1234 = fmul fast float %1233, 0x3F70101020000000
  %1235 = and i32 %1231, 255
  %1236 = uitofp i32 %1235 to float
  %1237 = fmul fast float %1236, 0x3F70101020000000
  %1238 = lshr i32 %1231, 8
  %1239 = and i32 %1238, 255
  %1240 = uitofp i32 %1239 to float
  %1241 = fmul fast float %1240, 0x3F70101020000000
  %1242 = lshr i32 %1231, 16
  %1243 = and i32 %1242, 255
  %1244 = uitofp i32 %1243 to float
  %1245 = fmul fast float %1244, 0x3F70101020000000
  %1246 = bitcast float %1170 to i32
  %1247 = ashr i32 %1246, 1
  %1248 = sub nsw i32 1597463174, %1247
  %1249 = bitcast i32 %1248 to float
  %1250 = fmul fast float %1170, 5.000000e-01
  %1251 = fmul fast float %1249, %1249
  %1252 = fmul fast float %1251, %1250
  %1253 = fsub fast float 1.500000e+00, %1252
  %1254 = fmul fast float %1249, %1170
  %1255 = fmul fast float %1254, %1253
  %1256 = bitcast float %1171 to i32
  %1257 = ashr i32 %1256, 1
  %1258 = sub nsw i32 1597463174, %1257
  %1259 = bitcast i32 %1258 to float
  %1260 = fmul fast float %1171, 5.000000e-01
  %1261 = fmul fast float %1259, %1259
  %1262 = fmul fast float %1261, %1260
  %1263 = fsub fast float 1.500000e+00, %1262
  %1264 = fmul fast float %1259, %1171
  %1265 = fmul fast float %1264, %1263
  %1266 = bitcast float %1172 to i32
  %1267 = ashr i32 %1266, 1
  %1268 = sub nsw i32 1597463174, %1267
  %1269 = bitcast i32 %1268 to float
  %1270 = fmul fast float %1172, 5.000000e-01
  %1271 = fmul fast float %1269, %1269
  %1272 = fmul fast float %1271, %1270
  %1273 = fsub fast float 1.500000e+00, %1272
  %1274 = fmul fast float %1269, %1172
  %1275 = fmul fast float %1274, %1273
  %1276 = fsub fast float %1255, %1237
  %1277 = fsub fast float %1265, %1241
  %1278 = fsub fast float %1275, %1245
  %1279 = fmul fast float %1276, %1205
  %1280 = fmul fast float %1277, %1207
  %1281 = fmul fast float %1278, %1212
  %1282 = fadd fast float %1279, %1220
  %1283 = fadd fast float %1280, %1224
  %1284 = fadd fast float %1281, %1228
  %1285 = call float @dx.op.unary.f32(i32 7, float %1282)  ; Saturate(value)
  %1286 = call float @dx.op.unary.f32(i32 7, float %1283)  ; Saturate(value)
  %1287 = call float @dx.op.unary.f32(i32 7, float %1284)  ; Saturate(value)
  %1288 = fmul fast float %1285, %1285
  %1289 = fmul fast float %1286, %1286
  %1290 = fmul fast float %1287, %1287
  %1291 = fsub fast float %1288, %1170
  %1292 = fsub fast float %1289, %1171
  %1293 = fsub fast float %1290, %1172
  %1294 = fmul fast float %1291, %1195
  %1295 = fmul fast float %1292, %1195
  %1296 = fmul fast float %1293, %1195
  %1297 = fadd fast float %1294, %1170
  %1298 = fadd fast float %1295, %1171
  %1299 = fadd fast float %1296, %1172
  %1300 = fadd fast float %1217, %1181
  %1301 = fsub fast float %1300, %1234
  %1302 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1303 = fsub fast float %1302, %1181
  %1304 = fmul fast float %1303, %1195
  %1305 = fadd fast float %1304, %1181
  br label %1359

; <label>:1306                                    ; preds = %1194
  %1307 = and i32 %1197, 134217728
  %1308 = icmp eq i32 %1307, 0
  br i1 %1308, label %1343, label %1309

; <label>:1309                                    ; preds = %1306
  %1310 = call float @dx.op.unary.f32(i32 24, float %224)  ; Sqrt(value)
  %1311 = call float @dx.op.unary.f32(i32 24, float %228)  ; Sqrt(value)
  %1312 = call float @dx.op.unary.f32(i32 24, float %232)  ; Sqrt(value)
  %1313 = fadd fast float %1310, -5.000000e-01
  %1314 = fadd fast float %1311, -5.000000e-01
  %1315 = fadd fast float %1312, -5.000000e-01
  %1316 = fmul fast float %1313, %1195
  %1317 = fmul fast float %1314, %1195
  %1318 = fmul fast float %1315, %1195
  %1319 = fadd fast float %1316, 5.000000e-01
  %1320 = fadd fast float %1317, 5.000000e-01
  %1321 = fadd fast float %1318, 5.000000e-01
  %1322 = call float @dx.op.unary.f32(i32 24, float %1170)  ; Sqrt(value)
  %1323 = call float @dx.op.unary.f32(i32 24, float %1171)  ; Sqrt(value)
  %1324 = call float @dx.op.unary.f32(i32 24, float %1172)  ; Sqrt(value)
  %1325 = fmul fast float %1319, 2.000000e+00
  %1326 = fsub fast float 1.000000e+00, %1325
  %1327 = fmul fast float %1326, %1322
  %1328 = fadd fast float %1327, %1325
  %1329 = fmul fast float %1328, %1322
  %1330 = fmul fast float %1320, 2.000000e+00
  %1331 = fsub fast float 1.000000e+00, %1330
  %1332 = fmul fast float %1331, %1323
  %1333 = fadd fast float %1332, %1330
  %1334 = fmul fast float %1333, %1323
  %1335 = fmul fast float %1321, 2.000000e+00
  %1336 = fsub fast float 1.000000e+00, %1335
  %1337 = fmul fast float %1336, %1324
  %1338 = fadd fast float %1337, %1335
  %1339 = fmul fast float %1338, %1324
  %1340 = fmul fast float %1329, %1329
  %1341 = fmul fast float %1334, %1334
  %1342 = fmul fast float %1339, %1339
  br label %1359

; <label>:1343                                    ; preds = %1306
  %1344 = fmul fast float %224, %224
  %1345 = fmul fast float %228, %228
  %1346 = fmul fast float %232, %232
  %1347 = fadd fast float %1344, -1.000000e+00
  %1348 = fadd fast float %1345, -1.000000e+00
  %1349 = fadd fast float %1346, -1.000000e+00
  %1350 = fmul fast float %1195, %1347
  %1351 = fmul fast float %1195, %1348
  %1352 = fmul fast float %1195, %1349
  %1353 = fadd fast float %1350, 1.000000e+00
  %1354 = fadd fast float %1351, 1.000000e+00
  %1355 = fadd fast float %1352, 1.000000e+00
  %1356 = fmul fast float %1353, %1170
  %1357 = fmul fast float %1354, %1171
  %1358 = fmul fast float %1355, %1172
  br label %1359

; <label>:1359                                    ; preds = %1343, %1309, %1200, %1156
  %1360 = phi float [ %1305, %1200 ], [ %1181, %1309 ], [ %1181, %1343 ], [ 0x3FA23C0BE0000000, %1156 ]
  %1361 = phi float [ %1297, %1200 ], [ %1340, %1309 ], [ %1356, %1343 ], [ 1.000000e+00, %1156 ]
  %1362 = phi float [ %1298, %1200 ], [ %1341, %1309 ], [ %1357, %1343 ], [ 1.000000e+00, %1156 ]
  %1363 = phi float [ %1299, %1200 ], [ %1342, %1309 ], [ %1358, %1343 ], [ 1.000000e+00, %1156 ]
  %1364 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1365 = extractvalue %dx.types.CBufRet.i32 %1364, 1
  %1366 = and i32 %1365, 1
  %1367 = icmp ne i32 %1366, 0
  %1368 = add i32 %42, 356
  %1369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1368, i32 undef)  ; BufferLoad(srv,index,wot)
  %1370 = extractvalue %dx.types.ResRet.i32 %1369, 0
  %1371 = and i32 %1370, 32
  %1372 = icmp ne i32 %1371, 0
  %1373 = and i1 %1367, %1372
  %1374 = select i1 %1373, float 1.000000e+00, float %1361
  %1375 = select i1 %1373, float 0x3FD3333340000000, float %1362
  %1376 = select i1 %1373, float 0x3FD3333340000000, float %1363
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = and i32 %1378, 32
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1453, label %1381

; <label>:1381                                    ; preds = %1359
  %1382 = add i32 %42, 108
  %1383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1382, i32 undef)  ; BufferLoad(srv,index,wot)
  %1384 = extractvalue %dx.types.ResRet.i32 %1383, 0
  %1385 = add i32 %42, 380
  %1386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1385, i32 undef)  ; BufferLoad(srv,index,wot)
  %1387 = extractvalue %dx.types.ResRet.i32 %1386, 0
  %1388 = add i32 %1387, 0
  %1389 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1388, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1390 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1389, %dx.types.Handle %63, float %966, float %967, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1391 = extractvalue %dx.types.ResRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.ResRet.f32 %1390, 1
  %1393 = extractvalue %dx.types.ResRet.f32 %1390, 2
  %1394 = extractvalue %dx.types.ResRet.f32 %1390, 3
  %1395 = and i32 %1384, 255
  %1396 = uitofp i32 %1395 to float
  %1397 = lshr i32 %1384, 8
  %1398 = and i32 %1397, 255
  %1399 = uitofp i32 %1398 to float
  %1400 = lshr i32 %1384, 16
  %1401 = and i32 %1400, 255
  %1402 = uitofp i32 %1401 to float
  %1403 = fmul fast float %1402, 0x3F70101000000000
  %1404 = fmul fast float %1391, %1396
  %1405 = fadd fast float %1404, %1399
  %1406 = fmul fast float %1405, 0x3F70101000000000
  %1407 = fadd fast float %1392, -5.000000e-01
  %1408 = fadd fast float %1394, -5.000000e-01
  %1409 = fmul fast float %1407, %1403
  %1410 = fmul fast float %1408, %1403
  %1411 = fadd fast float %1409, 5.000000e-01
  %1412 = fadd fast float %1410, 5.000000e-01
  %1413 = fmul fast float %1411, 2.000000e+00
  %1414 = fadd fast float %1413, -1.000000e+00
  %1415 = fmul fast float %1412, 2.000000e+00
  %1416 = fadd fast float %1415, -1.000000e+00
  %1417 = fadd fast float %1414, %1416
  %1418 = fmul fast float %1417, 5.000000e-01
  %1419 = fsub fast float %1414, %1416
  %1420 = fmul fast float %1419, 5.000000e-01
  %1421 = call float @dx.op.unary.f32(i32 6, float %1418)  ; FAbs(value)
  %1422 = fsub fast float 1.000000e+00, %1421
  %1423 = call float @dx.op.unary.f32(i32 6, float %1420)  ; FAbs(value)
  %1424 = fsub fast float %1422, %1423
  %1425 = call float @dx.op.dot3.f32(i32 55, float %1418, float %1420, float %1424, float %1418, float %1420, float %1424)  ; Dot3(ax,ay,az,bx,by,bz)
  %1426 = call float @dx.op.unary.f32(i32 25, float %1425)  ; Rsqrt(value)
  %1427 = fmul fast float %1418, %1426
  %1428 = fmul fast float %1420, %1426
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = and i32 %1430, 67108864
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1449, label %1433

; <label>:1433                                    ; preds = %1381
  %1434 = add i32 %42, 296
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = and i32 %1436, 65535
  %1438 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1437)  ; LegacyF16ToF32(value)
  %1439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1440 = extractvalue %dx.types.ResRet.i32 %1439, 0
  %1441 = and i32 %1440, 65535
  %1442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1441)  ; LegacyF16ToF32(value)
  %1443 = lshr i32 %1436, 16
  %1444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1443)  ; LegacyF16ToF32(value)
  %1445 = fsub fast float %1406, %1444
  %1446 = fmul fast float %1445, %1438
  %1447 = fadd fast float %1446, %1442
  %1448 = call float @dx.op.unary.f32(i32 7, float %1447)  ; Saturate(value)
  br label %1449

; <label>:1449                                    ; preds = %1433, %1381
  %1450 = phi float [ %1448, %1433 ], [ %1406, %1381 ]
  %1451 = call float @dx.op.dot2.f32(i32 54, float %1427, float %1428, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %1452 = call float @dx.op.dot2.f32(i32 54, float %1427, float %1428, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %1453

; <label>:1453                                    ; preds = %1449, %1359
  %1454 = phi float [ %1450, %1449 ], [ 0x3FD6666660000000, %1359 ]
  %1455 = phi float [ %1451, %1449 ], [ 0.000000e+00, %1359 ]
  %1456 = phi float [ %1452, %1449 ], [ 0.000000e+00, %1359 ]
  %1457 = phi float [ %1393, %1449 ], [ 1.000000e+00, %1359 ]
  %1458 = add i32 %42, 176
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = lshr i32 %1460, 22
  %1462 = shl nuw nsw i32 %1461, 5
  %1463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1462)  ; LegacyF16ToF32(value)
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = and i32 %1465, 64
  %1467 = icmp eq i32 %1466, 0
  br i1 %1467, label %1501, label %1468

; <label>:1468                                    ; preds = %1453
  %1469 = add i32 %42, 396
  %1470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1469, i32 undef)  ; BufferLoad(srv,index,wot)
  %1471 = extractvalue %dx.types.ResRet.i32 %1470, 0
  %1472 = add i32 %1471, 0
  %1473 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1472, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 131072
  %1477 = icmp eq i32 %1476, 0
  %1478 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1473, %dx.types.Handle %63, float %966, float %967, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1479 = extractvalue %dx.types.ResRet.f32 %1478, 0
  %1480 = extractvalue %dx.types.ResRet.f32 %1478, 1
  %1481 = extractvalue %dx.types.ResRet.f32 %1478, 2
  %1482 = fmul fast float %1479, %212
  %1483 = fmul fast float %1480, %215
  %1484 = fmul fast float %1481, %218
  br i1 %1477, label %1491, label %1485

; <label>:1485                                    ; preds = %1468
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 0
  %1488 = fmul fast float %1487, %1482
  %1489 = fmul fast float %1487, %1483
  %1490 = fmul fast float %1487, %1484
  br label %1491

; <label>:1491                                    ; preds = %1485, %1468
  %1492 = phi float [ %1488, %1485 ], [ %1482, %1468 ]
  %1493 = phi float [ %1489, %1485 ], [ %1483, %1468 ]
  %1494 = phi float [ %1490, %1485 ], [ %1484, %1468 ]
  %1495 = fmul fast float %1492, %1463
  %1496 = select i1 %164, float %1495, float %1492
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1496, float %1493, float %1494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = select i1 %164, float 0.000000e+00, float %1492
  %1499 = select i1 %164, float %1497, float %1493
  %1500 = select i1 %164, float 0.000000e+00, float %1494
  br label %1501

; <label>:1501                                    ; preds = %1491, %1453
  %1502 = phi float [ %1498, %1491 ], [ 0.000000e+00, %1453 ]
  %1503 = phi float [ %1499, %1491 ], [ 0.000000e+00, %1453 ]
  %1504 = phi float [ %1500, %1491 ], [ 0.000000e+00, %1453 ]
  %1505 = add i32 %42, 112
  %1506 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1505, i32 undef)  ; BufferLoad(srv,index,wot)
  %1507 = extractvalue %dx.types.ResRet.i32 %1506, 0
  %1508 = and i32 %1507, 255
  %1509 = uitofp i32 %1508 to float
  %1510 = lshr i32 %1507, 8
  %1511 = and i32 %1510, 255
  %1512 = uitofp i32 %1511 to float
  %1513 = call float @dx.op.dot3.f32(i32 55, float %1374, float %1375, float %1376, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1514 = fmul fast float %1512, %1513
  %1515 = fadd fast float %1514, %1509
  %1516 = fmul fast float %1515, 0x3F70101020000000
  %1517 = call float @dx.op.unary.f32(i32 7, float %1516)  ; Saturate(value)
  br i1 %866, label %1518, label %1526

; <label>:1518                                    ; preds = %1501
  %1519 = fsub fast float 1.000000e+00, %1154
  %1520 = fmul fast float %1519, %854
  %1521 = fmul fast float %1519, %855
  %1522 = fmul fast float %1519, %856
  %1523 = fmul fast float %1519, %857
  %1524 = fmul fast float %1519, %858
  %1525 = fmul fast float %1519, %859
  br label %1526

; <label>:1526                                    ; preds = %1518, %1501
  %1527 = phi float [ %1520, %1518 ], [ %854, %1501 ]
  %1528 = phi float [ %1521, %1518 ], [ %855, %1501 ]
  %1529 = phi float [ %1522, %1518 ], [ %856, %1501 ]
  %1530 = phi float [ %1523, %1518 ], [ %857, %1501 ]
  %1531 = phi float [ %1524, %1518 ], [ %858, %1501 ]
  %1532 = phi float [ %1525, %1518 ], [ %859, %1501 ]
  %1533 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1534 = extractvalue %dx.types.ResRet.i32 %1533, 0
  %1535 = and i32 %1534, 3
  %1536 = icmp eq i32 %1535, 3
  br i1 %1536, label %1615, label %1537

; <label>:1537                                    ; preds = %1526
  %1538 = and i32 %1534, 16
  %1539 = icmp ne i32 %1538, 0
  %1540 = select i1 %1539, float %1154, float 0.000000e+00
  %1541 = icmp eq i32 %1535, 0
  br i1 %1541, label %1542, label %1570

; <label>:1542                                    ; preds = %1537
  %1543 = and i32 %1534, 64
  %1544 = icmp ne i32 %1543, 0
  %1545 = select i1 %1544, float %1154, float 0.000000e+00
  %1546 = fsub fast float %1374, %1527
  %1547 = fsub fast float %1375, %1528
  %1548 = fsub fast float %1376, %1529
  %1549 = fmul fast float %1540, %1546
  %1550 = fmul fast float %1540, %1547
  %1551 = fmul fast float %1540, %1548
  %1552 = fadd fast float %1549, %1527
  %1553 = fadd fast float %1550, %1528
  %1554 = fadd fast float %1551, %1529
  %1555 = fsub fast float %1360, %860
  %1556 = fmul fast float %1540, %1555
  %1557 = fadd fast float %1556, %860
  %1558 = fsub fast float %1502, %1530
  %1559 = fsub fast float %1503, %1531
  %1560 = fsub fast float %1504, %1532
  %1561 = fmul fast float %1545, %1558
  %1562 = fmul fast float %1545, %1559
  %1563 = fmul fast float %1545, %1560
  %1564 = fadd fast float %1561, %1530
  %1565 = fadd fast float %1562, %1531
  %1566 = fadd fast float %1563, %1532
  %1567 = fsub fast float %1517, %864
  %1568 = fmul fast float %1540, %1567
  %1569 = fadd fast float %1568, %864
  br label %1615

; <label>:1570                                    ; preds = %1537
  %1571 = icmp eq i32 %1535, 1
  br i1 %1571, label %1572, label %1585

; <label>:1572                                    ; preds = %1570
  %1573 = fadd fast float %1374, -1.000000e+00
  %1574 = fadd fast float %1375, -1.000000e+00
  %1575 = fadd fast float %1376, -1.000000e+00
  %1576 = fmul fast float %1540, %1573
  %1577 = fmul fast float %1540, %1574
  %1578 = fmul fast float %1540, %1575
  %1579 = fadd fast float %1576, 1.000000e+00
  %1580 = fadd fast float %1577, 1.000000e+00
  %1581 = fadd fast float %1578, 1.000000e+00
  %1582 = fmul fast float %1579, %1527
  %1583 = fmul fast float %1580, %1528
  %1584 = fmul fast float %1581, %1529
  br label %1615

; <label>:1585                                    ; preds = %1570
  %1586 = icmp eq i32 %1535, 2
  br i1 %1586, label %1587, label %1615

; <label>:1587                                    ; preds = %1585
  %1588 = call float @dx.op.unary.f32(i32 24, float %1374)  ; Sqrt(value)
  %1589 = call float @dx.op.unary.f32(i32 24, float %1375)  ; Sqrt(value)
  %1590 = call float @dx.op.unary.f32(i32 24, float %1376)  ; Sqrt(value)
  %1591 = fadd fast float %1588, -5.000000e-01
  %1592 = fadd fast float %1589, -5.000000e-01
  %1593 = fadd fast float %1590, -5.000000e-01
  %1594 = fmul fast float %1591, %1540
  %1595 = fmul fast float %1592, %1540
  %1596 = fmul fast float %1593, %1540
  %1597 = fadd fast float %1594, 5.000000e-01
  %1598 = fadd fast float %1595, 5.000000e-01
  %1599 = fadd fast float %1596, 5.000000e-01
  %1600 = fmul fast float %1597, 2.000000e+00
  %1601 = fsub fast float 1.000000e+00, %1600
  %1602 = fmul fast float %1601, %1527
  %1603 = fadd fast float %1602, %1600
  %1604 = fmul fast float %1603, %1527
  %1605 = fmul fast float %1598, 2.000000e+00
  %1606 = fsub fast float 1.000000e+00, %1605
  %1607 = fmul fast float %1606, %1528
  %1608 = fadd fast float %1607, %1605
  %1609 = fmul fast float %1608, %1528
  %1610 = fmul fast float %1599, 2.000000e+00
  %1611 = fsub fast float 1.000000e+00, %1610
  %1612 = fmul fast float %1611, %1529
  %1613 = fadd fast float %1612, %1610
  %1614 = fmul fast float %1613, %1529
  br label %1615

; <label>:1615                                    ; preds = %1587, %1585, %1572, %1542, %1526
  %1616 = phi float [ %1527, %1526 ], [ %1604, %1587 ], [ %1527, %1585 ], [ %1582, %1572 ], [ %1552, %1542 ]
  %1617 = phi float [ %1528, %1526 ], [ %1609, %1587 ], [ %1528, %1585 ], [ %1583, %1572 ], [ %1553, %1542 ]
  %1618 = phi float [ %1529, %1526 ], [ %1614, %1587 ], [ %1529, %1585 ], [ %1584, %1572 ], [ %1554, %1542 ]
  %1619 = phi float [ %1530, %1526 ], [ %1530, %1587 ], [ %1530, %1585 ], [ %1530, %1572 ], [ %1564, %1542 ]
  %1620 = phi float [ %1531, %1526 ], [ %1531, %1587 ], [ %1531, %1585 ], [ %1531, %1572 ], [ %1565, %1542 ]
  %1621 = phi float [ %1532, %1526 ], [ %1532, %1587 ], [ %1532, %1585 ], [ %1532, %1572 ], [ %1566, %1542 ]
  %1622 = phi float [ %860, %1526 ], [ %860, %1587 ], [ %860, %1585 ], [ %860, %1572 ], [ %1557, %1542 ]
  %1623 = phi float [ %864, %1526 ], [ %864, %1587 ], [ %864, %1585 ], [ %864, %1572 ], [ %1569, %1542 ]
  %1624 = and i32 %1534, 12
  %1625 = icmp eq i32 %1624, 12
  br i1 %1625, label %1698, label %1626

; <label>:1626                                    ; preds = %1615
  %1627 = and i32 %1534, 2097184
  %1628 = icmp eq i32 %1627, 2097184
  %1629 = select i1 %1628, float %1154, float 0.000000e+00
  %1630 = and i32 %1534, 4194336
  %1631 = icmp eq i32 %1630, 4194336
  %1632 = select i1 %1631, float %1154, float 0.000000e+00
  %1633 = and i32 %1534, 8388640
  %1634 = icmp eq i32 %1633, 8388640
  %1635 = select i1 %1634, float %1154, float 0.000000e+00
  %1636 = icmp eq i32 %1624, 0
  br i1 %1636, label %1637, label %1650

; <label>:1637                                    ; preds = %1626
  %1638 = fsub fast float %1455, %852
  %1639 = fsub fast float %1456, %853
  %1640 = fmul fast float %1629, %1638
  %1641 = fmul fast float %1629, %1639
  %1642 = fadd fast float %1640, %852
  %1643 = fadd fast float %1641, %853
  %1644 = fsub fast float %1457, %863
  %1645 = fmul fast float %1632, %1644
  %1646 = fadd fast float %1645, %863
  %1647 = fsub fast float %1454, %862
  %1648 = fmul fast float %1635, %1647
  %1649 = fadd fast float %1648, %862
  br label %1698

; <label>:1650                                    ; preds = %1626
  %1651 = icmp eq i32 %1624, 4
  br i1 %1651, label %1652, label %1684

; <label>:1652                                    ; preds = %1650
  %1653 = fmul fast float %1629, %1455
  %1654 = fmul fast float %1629, %1456
  %1655 = fadd fast float %1653, %852
  %1656 = fadd fast float %1654, %853
  %1657 = call float @dx.op.binary.f32(i32 36, float %863, float %1457)  ; FMin(a,b)
  %1658 = fsub fast float %1657, %863
  %1659 = fmul fast float %1658, %1632
  %1660 = fadd fast float %1659, %863
  %1661 = fadd fast float %1454, %862
  %1662 = fmul fast float %1661, 0x3FF337FAE0000000
  %1663 = fmul fast float %862, %862
  %1664 = fmul fast float %1454, %1454
  %1665 = fadd fast float %1664, %1663
  %1666 = fmul fast float %1665, 0x3FE5152B00000000
  %1667 = fmul fast float %862, 0xBFCC1F85E0000000
  %1668 = fmul fast float %1667, %1454
  %1669 = fadd fast float %1668, 0xBFE1363700000000
  %1670 = fadd fast float %1669, %1662
  %1671 = fsub fast float %1670, %1666
  %1672 = fmul fast float %1661, 0x3FBA6F0D00000000
  %1673 = fmul fast float %1665, 0x3FD0432880000000
  %1674 = fmul fast float %862, 0xBFEF110800000000
  %1675 = fmul fast float %1674, %1454
  %1676 = fadd fast float %1675, 1.000000e+00
  %1677 = fsub fast float %1676, %1672
  %1678 = fadd fast float %1677, %1673
  %1679 = fdiv fast float %1671, %1678
  %1680 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1681 = fsub fast float %1680, %862
  %1682 = fmul fast float %1681, %1635
  %1683 = fadd fast float %1682, %862
  br label %1698

; <label>:1684                                    ; preds = %1650
  %1685 = icmp eq i32 %1624, 8
  br i1 %1685, label %1686, label %1698

; <label>:1686                                    ; preds = %1684
  %1687 = fmul fast float %1629, %1455
  %1688 = fmul fast float %1629, %1456
  %1689 = fadd fast float %1687, %852
  %1690 = fadd fast float %1688, %853
  %1691 = call float @dx.op.binary.f32(i32 36, float %863, float %1457)  ; FMin(a,b)
  %1692 = fsub fast float %1691, %863
  %1693 = fmul fast float %1692, %1632
  %1694 = fadd fast float %1693, %863
  %1695 = fsub fast float %1454, %862
  %1696 = fmul fast float %1635, %1695
  %1697 = fadd fast float %1696, %862
  br label %1698

; <label>:1698                                    ; preds = %1686, %1684, %1652, %1637, %1615, %1153, %865, %851
  %1699 = phi float [ %852, %1615 ], [ %852, %1153 ], [ %852, %851 ], [ %1689, %1686 ], [ %852, %1684 ], [ %1655, %1652 ], [ %1642, %1637 ], [ %852, %865 ]
  %1700 = phi float [ %853, %1615 ], [ %853, %1153 ], [ %853, %851 ], [ %1690, %1686 ], [ %853, %1684 ], [ %1656, %1652 ], [ %1643, %1637 ], [ %853, %865 ]
  %1701 = phi float [ %1616, %1615 ], [ %854, %1153 ], [ %854, %851 ], [ %1616, %1686 ], [ %1616, %1684 ], [ %1616, %1652 ], [ %1616, %1637 ], [ %854, %865 ]
  %1702 = phi float [ %1617, %1615 ], [ %855, %1153 ], [ %855, %851 ], [ %1617, %1686 ], [ %1617, %1684 ], [ %1617, %1652 ], [ %1617, %1637 ], [ %855, %865 ]
  %1703 = phi float [ %1618, %1615 ], [ %856, %1153 ], [ %856, %851 ], [ %1618, %1686 ], [ %1618, %1684 ], [ %1618, %1652 ], [ %1618, %1637 ], [ %856, %865 ]
  %1704 = phi float [ %1619, %1615 ], [ %857, %1153 ], [ %857, %851 ], [ %1619, %1686 ], [ %1619, %1684 ], [ %1619, %1652 ], [ %1619, %1637 ], [ %857, %865 ]
  %1705 = phi float [ %1620, %1615 ], [ %858, %1153 ], [ %858, %851 ], [ %1620, %1686 ], [ %1620, %1684 ], [ %1620, %1652 ], [ %1620, %1637 ], [ %858, %865 ]
  %1706 = phi float [ %1621, %1615 ], [ %859, %1153 ], [ %859, %851 ], [ %1621, %1686 ], [ %1621, %1684 ], [ %1621, %1652 ], [ %1621, %1637 ], [ %859, %865 ]
  %1707 = phi float [ %1622, %1615 ], [ %860, %1153 ], [ %860, %851 ], [ %1622, %1686 ], [ %1622, %1684 ], [ %1622, %1652 ], [ %1622, %1637 ], [ %860, %865 ]
  %1708 = phi float [ %862, %1615 ], [ %862, %1153 ], [ %862, %851 ], [ %1697, %1686 ], [ %862, %1684 ], [ %1683, %1652 ], [ %1649, %1637 ], [ %862, %865 ]
  %1709 = phi float [ %863, %1615 ], [ %863, %1153 ], [ %863, %851 ], [ %1694, %1686 ], [ %863, %1684 ], [ %1660, %1652 ], [ %1646, %1637 ], [ %863, %865 ]
  %1710 = phi float [ %1623, %1615 ], [ %864, %1153 ], [ %864, %851 ], [ %1623, %1686 ], [ %1623, %1684 ], [ %1623, %1652 ], [ %1623, %1637 ], [ %864, %865 ]
  br i1 %339, label %2544, label %1711

; <label>:1711                                    ; preds = %1698
  %1712 = icmp ult i32 %392, 3
  %1713 = add i32 %42, 56
  %1714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1715 = extractvalue %dx.types.ResRet.i32 %1714, 0
  %1716 = add i32 %42, 60
  %1717 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1716, i32 undef)  ; BufferLoad(srv,index,wot)
  %1718 = extractvalue %dx.types.ResRet.i32 %1717, 0
  %1719 = or i32 %1718, %1715
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %2544, label %1721

; <label>:1721                                    ; preds = %1711
  %1722 = add i32 %42, 316
  %1723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %1724 = extractvalue %dx.types.ResRet.i32 %1723, 0
  %1725 = lshr i32 %1724, 16
  %1726 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1725)  ; LegacyF16ToF32(value)
  %1727 = fmul fast float %1726, 0x3F50624DE0000000
  %1728 = add i32 %42, 120
  %1729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %1730 = extractvalue %dx.types.ResRet.i32 %1729, 0
  %1731 = lshr i32 %1730, 16
  %1732 = and i32 %1731, 255
  %1733 = lshr i32 %1730, 24
  %1734 = add i32 %42, 324
  %1735 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1734, i32 undef)  ; BufferLoad(srv,index,wot)
  %1736 = extractvalue %dx.types.ResRet.i32 %1735, 0
  %1737 = and i32 %1736, 65535
  %1738 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1737)  ; LegacyF16ToF32(value)
  %1739 = lshr i32 %1736, 16
  %1740 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1739)  ; LegacyF16ToF32(value)
  %1741 = add i32 %42, 64
  %1742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1741, i32 undef)  ; BufferLoad(srv,index,wot)
  %1743 = extractvalue %dx.types.ResRet.i32 %1742, 0
  %1744 = lshr i32 %1743, 22
  %1745 = shl nuw nsw i32 %1744, 5
  %1746 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1745)  ; LegacyF16ToF32(value)
  %1747 = shl i32 %1743, 4
  %1748 = and i32 %1747, 32752
  %1749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1748)  ; LegacyF16ToF32(value)
  %1750 = lshr i32 %1743, 7
  %1751 = and i32 %1750, 32752
  %1752 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1751)  ; LegacyF16ToF32(value)
  %1753 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1754 = extractvalue %dx.types.CBufRet.f32 %1753, 3
  %1755 = fmul fast float %1754, 1.000000e+03
  %1756 = fmul fast float %289, %1755
  %1757 = call float @dx.op.unary.f32(i32 22, float %1756)  ; Frc(value)
  %1758 = fadd fast float %1757, %279
  %1759 = fmul fast float %290, %1755
  %1760 = call float @dx.op.unary.f32(i32 22, float %1759)  ; Frc(value)
  %1761 = fadd fast float %1760, %281
  %1762 = fmul fast float %1727, %1755
  %1763 = call float @dx.op.unary.f32(i32 22, float %1762)  ; Frc(value)
  %1764 = fmul fast float %1763, 0x401921FB60000000
  %1765 = fadd fast float %1764, %1746
  %1766 = call float @dx.op.unary.f32(i32 13, float %1765)  ; Sin(value)
  %1767 = call float @dx.op.unary.f32(i32 12, float %1765)  ; Cos(value)
  %1768 = fsub fast float -0.000000e+00, %1766
  %1769 = fadd fast float %55, -5.000000e-01
  %1770 = fadd fast float %56, -5.000000e-01
  %1771 = fmul fast float %1738, %1769
  %1772 = fmul fast float %1740, %1770
  %1773 = fadd fast float %1771, 5.000000e-01
  %1774 = fadd fast float %1772, 5.000000e-01
  %1775 = fmul fast float %1749, %1773
  %1776 = fmul fast float %1752, %1774
  %1777 = fmul fast float %1767, %1775
  %1778 = call float @dx.op.tertiary.f32(i32 46, float %1768, float %1776, float %1777)  ; FMad(a,b,c)
  %1779 = fmul fast float %1766, %1775
  %1780 = call float @dx.op.tertiary.f32(i32 46, float %1767, float %1776, float %1779)  ; FMad(a,b,c)
  %1781 = fadd fast float %1758, %1778
  %1782 = fadd fast float %1761, %1780
  %1783 = icmp ugt i32 %1732, 1
  %1784 = icmp ugt i32 %1730, 33554431
  %1785 = or i1 %1784, %1783
  br i1 %1785, label %1786, label %1811

; <label>:1786                                    ; preds = %1721
  %1787 = add i32 %42, 260
  %1788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1787, i32 undef)  ; BufferLoad(srv,index,wot)
  %1789 = extractvalue %dx.types.ResRet.i32 %1788, 0
  %1790 = lshr i32 %1789, 16
  %1791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1790)  ; LegacyF16ToF32(value)
  %1792 = fmul fast float %1754, %1791
  %1793 = call float @dx.op.unary.f32(i32 22, float %1792)  ; Frc(value)
  %1794 = mul nuw nsw i32 %1732, %1733
  %1795 = uitofp i32 %1794 to float
  %1796 = fmul fast float %1793, %1795
  %1797 = call float @dx.op.unary.f32(i32 27, float %1796)  ; Round_ni(value)
  %1798 = fptoui float %1797 to i32
  %1799 = urem i32 %1798, %1732
  %1800 = udiv i32 %1798, %1733
  %1801 = call float @dx.op.unary.f32(i32 22, float %1781)  ; Frc(value)
  %1802 = call float @dx.op.unary.f32(i32 22, float %1782)  ; Frc(value)
  %1803 = uitofp i32 %1799 to float
  %1804 = uitofp i32 %1800 to float
  %1805 = fadd fast float %1801, %1803
  %1806 = fadd fast float %1802, %1804
  %1807 = uitofp i32 %1732 to float
  %1808 = uitofp i32 %1733 to float
  %1809 = fdiv fast float %1805, %1807
  %1810 = fdiv fast float %1806, %1808
  br label %1811

; <label>:1811                                    ; preds = %1786, %1721
  %1812 = phi float [ %1809, %1786 ], [ %1781, %1721 ]
  %1813 = phi float [ %1810, %1786 ], [ %1782, %1721 ]
  %1814 = and i32 %1715, 16777216
  %1815 = icmp eq i32 %1814, 0
  br i1 %1815, label %1925, label %1816

; <label>:1816                                    ; preds = %1811
  %1817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1818 = extractvalue %dx.types.CBufRet.f32 %1817, 0
  %1819 = extractvalue %dx.types.CBufRet.f32 %1817, 1
  %1820 = extractvalue %dx.types.CBufRet.f32 %1817, 2
  %1821 = fadd fast float %1818, %122
  %1822 = fadd fast float %1819, %123
  %1823 = fadd fast float %1820, %124
  %1824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1825 = extractvalue %dx.types.CBufRet.f32 %1824, 0
  %1826 = call float @dx.op.unary.f32(i32 7, float %1825)  ; Saturate(value)
  %1827 = icmp eq i32 %43, 65535
  br i1 %1827, label %1922, label %1828

; <label>:1828                                    ; preds = %1816
  %1829 = lshr i32 %43, 1
  %1830 = shl i32 %1829, 2
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = and i32 %43, 1
  %1834 = icmp ne i32 %1833, 0
  %1835 = lshr i32 %1832, 16
  %1836 = and i32 %1832, 65535
  %1837 = select i1 %1834, i32 %1835, i32 %1836
  %1838 = icmp eq i32 %1837, 65535
  br i1 %1838, label %1918, label %1839

; <label>:1839                                    ; preds = %1828
  %1840 = mul nuw nsw i32 %1837, 40
  %1841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.ResRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.ResRet.f32 %1841, 2
  %1845 = add nuw nsw i32 %1840, 12
  %1846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1845, i32 undef)  ; BufferLoad(srv,index,wot)
  %1847 = extractvalue %dx.types.ResRet.f32 %1846, 0
  %1848 = extractvalue %dx.types.ResRet.f32 %1846, 1
  %1849 = extractvalue %dx.types.ResRet.f32 %1846, 2
  %1850 = add nuw nsw i32 %1840, 24
  %1851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1850, i32 undef)  ; BufferLoad(srv,index,wot)
  %1852 = extractvalue %dx.types.ResRet.f32 %1851, 0
  %1853 = extractvalue %dx.types.ResRet.f32 %1851, 1
  %1854 = extractvalue %dx.types.ResRet.f32 %1851, 2
  %1855 = add nuw nsw i32 %1840, 36
  %1856 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.f32 %1856, 0
  %1858 = fsub fast float %1821, %1842
  %1859 = fsub fast float %1822, %1843
  %1860 = fsub fast float %1823, %1844
  %1861 = fmul fast float %1857, %1858
  %1862 = fmul fast float %1857, %1859
  %1863 = fmul fast float %1857, %1860
  %1864 = call float @dx.op.unary.f32(i32 27, float %1861)  ; Round_ni(value)
  %1865 = call float @dx.op.unary.f32(i32 27, float %1862)  ; Round_ni(value)
  %1866 = call float @dx.op.unary.f32(i32 27, float %1863)  ; Round_ni(value)
  %1867 = fadd fast float %1864, 5.000000e-01
  %1868 = fadd fast float %1865, 5.000000e-01
  %1869 = fadd fast float %1866, 5.000000e-01
  %1870 = fmul fast float %1867, %1847
  %1871 = fmul fast float %1868, %1848
  %1872 = fmul fast float %1869, %1849
  %1873 = shl i32 %43, 2
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = add i32 %1875, 0
  %1877 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1876, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1878 = call float @dx.op.unary.f32(i32 22, float %1870)  ; Frc(value)
  %1879 = call float @dx.op.unary.f32(i32 22, float %1871)  ; Frc(value)
  %1880 = call float @dx.op.unary.f32(i32 22, float %1872)  ; Frc(value)
  %1881 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1877, %dx.types.Handle %39, float %1878, float %1879, float %1880, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1882 = extractvalue %dx.types.ResRet.f32 %1881, 0
  %1883 = extractvalue %dx.types.ResRet.f32 %1881, 1
  %1884 = extractvalue %dx.types.ResRet.f32 %1881, 2
  %1885 = fmul fast float %1882, 1.023000e+03
  %1886 = fmul fast float %1883, 1.023000e+03
  %1887 = fmul fast float %1884, 1.023000e+03
  %1888 = fadd fast float %1885, 5.000000e-01
  %1889 = fadd fast float %1886, 5.000000e-01
  %1890 = fadd fast float %1887, 5.000000e-01
  %1891 = call float @dx.op.unary.f32(i32 27, float %1888)  ; Round_ni(value)
  %1892 = call float @dx.op.unary.f32(i32 27, float %1889)  ; Round_ni(value)
  %1893 = call float @dx.op.unary.f32(i32 27, float %1890)  ; Round_ni(value)
  %1894 = fsub fast float %1861, %1864
  %1895 = fsub fast float %1862, %1865
  %1896 = fsub fast float %1863, %1866
  %1897 = fmul fast float %1894, 7.500000e-01
  %1898 = fmul fast float %1895, 7.500000e-01
  %1899 = fmul fast float %1896, 7.500000e-01
  %1900 = fadd fast float %1864, 1.250000e-01
  %1901 = fadd fast float %1900, %1897
  %1902 = fadd fast float %1901, %1891
  %1903 = fadd fast float %1865, 1.250000e-01
  %1904 = fadd fast float %1903, %1898
  %1905 = fadd fast float %1904, %1892
  %1906 = fadd fast float %1866, 1.250000e-01
  %1907 = fadd fast float %1906, %1899
  %1908 = fadd fast float %1907, %1893
  %1909 = fmul fast float %1902, %1852
  %1910 = fmul fast float %1905, %1853
  %1911 = fmul fast float %1908, %1854
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = add i32 %1913, 0
  %1915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1916 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1915, %dx.types.Handle %37, float %1909, float %1910, float %1911, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  br label %1918

; <label>:1918                                    ; preds = %1839, %1828
  %1919 = phi float [ %1917, %1839 ], [ -1.000000e+00, %1828 ]
  %1920 = fadd fast float %1919, %1826
  %1921 = call float @dx.op.unary.f32(i32 7, float %1920)  ; Saturate(value)
  br label %1922

; <label>:1922                                    ; preds = %1918, %1816
  %1923 = phi float [ %1921, %1918 ], [ %1826, %1816 ]
  %1924 = fmul fast float %1923, %388
  br label %1925

; <label>:1925                                    ; preds = %1922, %1811
  %1926 = phi float [ %1924, %1922 ], [ %388, %1811 ]
  %1927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1928 = extractvalue %dx.types.ResRet.i32 %1927, 0
  %1929 = and i32 %1928, 256
  %1930 = icmp eq i32 %1929, 0
  br i1 %1930, label %1977, label %1931

; <label>:1931                                    ; preds = %1925
  %1932 = add i32 %42, 432
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1932, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = add i32 %1934, 0
  %1936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1937 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1936, %dx.types.Handle %64, float %1812, float %1813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  %1939 = add i32 %42, 132
  %1940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1941 = extractvalue %dx.types.ResRet.i32 %1940, 0
  %1942 = shl i32 %1941, 4
  %1943 = and i32 %1942, 32752
  %1944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1943)  ; LegacyF16ToF32(value)
  %1945 = lshr i32 %1941, 7
  %1946 = and i32 %1945, 32752
  %1947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1946)  ; LegacyF16ToF32(value)
  %1948 = fsub fast float 1.000000e+00, %1926
  %1949 = call float @dx.op.binary.f32(i32 35, float %1948, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1950 = bitcast float %1926 to i32
  %1951 = sitofp i32 %1950 to float
  %1952 = fadd fast float %1951, 0xC1CFBF8940000000
  %1953 = fmul fast float %1947, %1952
  %1954 = fadd fast float %1953, 0x41CFBF8940000000
  %1955 = fptosi float %1954 to i32
  %1956 = bitcast i32 %1955 to float
  %1957 = bitcast float %1949 to i32
  %1958 = sitofp i32 %1957 to float
  %1959 = fadd fast float %1958, 0xC1CFBF8940000000
  %1960 = fmul fast float %1959, %1947
  %1961 = fadd fast float %1960, 0x41CFBF8940000000
  %1962 = fptosi float %1961 to i32
  %1963 = bitcast i32 %1962 to float
  %1964 = fmul fast float %1956, %1944
  %1965 = fmul fast float %1963, %1944
  %1966 = fsub fast float %1949, %1964
  %1967 = fadd fast float %1965, %1949
  %1968 = call float @dx.op.unary.f32(i32 7, float %1966)  ; Saturate(value)
  %1969 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1970 = fsub fast float %1938, %1968
  %1971 = fsub fast float %1969, %1968
  %1972 = bitcast float %1971 to i32
  %1973 = sub nsw i32 2129859010, %1972
  %1974 = bitcast i32 %1973 to float
  %1975 = fmul fast float %1974, %1970
  %1976 = call float @dx.op.unary.f32(i32 7, float %1975)  ; Saturate(value)
  br label %1977

; <label>:1977                                    ; preds = %1931, %1925
  %1978 = phi float [ %1976, %1931 ], [ %1926, %1925 ]
  %1979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1980 = extractvalue %dx.types.ResRet.i32 %1979, 0
  %1981 = and i32 %1980, 128
  %1982 = icmp eq i32 %1981, 0
  br i1 %1982, label %1999, label %1983

; <label>:1983                                    ; preds = %1977
  %1984 = add i32 %42, 416
  %1985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1986 = extractvalue %dx.types.ResRet.i32 %1985, 0
  %1987 = add i32 %1986, 0
  %1988 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1987, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1989 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1988, %dx.types.Handle %64, float %1812, float %1813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1990 = extractvalue %dx.types.ResRet.f32 %1989, 0
  %1991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %1992 = extractvalue %dx.types.ResRet.i32 %1991, 0
  %1993 = and i32 %1992, 524288
  %1994 = icmp ne i32 %1993, 0
  %1995 = fcmp fast ogt float %1990, 0x3FE0101020000000
  %1996 = select i1 %1995, float 1.000000e+00, float 0.000000e+00
  %1997 = select i1 %1994, float %1996, float %1990
  %1998 = fmul fast float %1997, %1978
  br label %1999

; <label>:1999                                    ; preds = %1983, %1977
  %2000 = phi float [ %1998, %1983 ], [ %1978, %1977 ]
  %2001 = fcmp fast ult float %2000, 0x3F70101020000000
  br i1 %2001, label %2544, label %2002

; <label>:2002                                    ; preds = %1999
  %2003 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2004 = extractvalue %dx.types.ResRet.i32 %2003, 0
  %2005 = and i32 %2004, 16
  %2006 = icmp eq i32 %2005, 0
  br i1 %2006, label %2205, label %2007

; <label>:2007                                    ; preds = %2002
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = add i32 %42, 368
  %2011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2010, i32 undef)  ; BufferLoad(srv,index,wot)
  %2012 = extractvalue %dx.types.ResRet.i32 %2011, 0
  %2013 = add i32 %2012, 0
  %2014 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2013, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2015 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2014, %dx.types.Handle %63, float %1812, float %1813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2016 = extractvalue %dx.types.ResRet.f32 %2015, 0
  %2017 = extractvalue %dx.types.ResRet.f32 %2015, 1
  %2018 = extractvalue %dx.types.ResRet.f32 %2015, 2
  %2019 = extractvalue %dx.types.ResRet.f32 %2015, 3
  %2020 = and i32 %2009, 255
  %2021 = uitofp i32 %2020 to float
  %2022 = lshr i32 %2009, 8
  %2023 = and i32 %2022, 255
  %2024 = uitofp i32 %2023 to float
  %2025 = fmul fast float %2019, %2021
  %2026 = fadd fast float %2025, %2024
  %2027 = fmul fast float %2026, 0x3F70101000000000
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = and i32 %2029, 512
  %2031 = icmp eq i32 %2030, 0
  br i1 %2031, label %2040, label %2032

; <label>:2032                                    ; preds = %2007
  %2033 = add i32 %42, 448
  %2034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2033, i32 undef)  ; BufferLoad(srv,index,wot)
  %2035 = extractvalue %dx.types.ResRet.i32 %2034, 0
  %2036 = add i32 %2035, 0
  %2037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2036, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2038 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2037, %dx.types.Handle %64, float %1812, float %1813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2039 = extractvalue %dx.types.ResRet.f32 %2038, 0
  br label %2040

; <label>:2040                                    ; preds = %2032, %2007
  %2041 = phi float [ %2039, %2032 ], [ 1.000000e+00, %2007 ]
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = and i32 %2043, 33554432
  %2045 = icmp eq i32 %2044, 0
  br i1 %2045, label %2152, label %2046

; <label>:2046                                    ; preds = %2040
  %2047 = add i32 %42, 256
  %2048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.i32 %2048, 0
  %2050 = and i32 %2049, 65535
  %2051 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2050)  ; LegacyF16ToF32(value)
  %2052 = lshr i32 %2049, 16
  %2053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2052)  ; LegacyF16ToF32(value)
  %2054 = add i32 %42, 260
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = and i32 %2056, 65535
  %2058 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2057)  ; LegacyF16ToF32(value)
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = lshr i32 %2060, 24
  %2062 = uitofp i32 %2061 to float
  %2063 = fmul fast float %2062, 0x3F70101020000000
  %2064 = and i32 %2060, 255
  %2065 = uitofp i32 %2064 to float
  %2066 = fmul fast float %2065, 0x3F70101020000000
  %2067 = lshr i32 %2060, 8
  %2068 = and i32 %2067, 255
  %2069 = uitofp i32 %2068 to float
  %2070 = fmul fast float %2069, 0x3F70101020000000
  %2071 = lshr i32 %2060, 16
  %2072 = and i32 %2071, 255
  %2073 = uitofp i32 %2072 to float
  %2074 = fmul fast float %2073, 0x3F70101020000000
  %2075 = add i32 %42, 252
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = lshr i32 %2077, 24
  %2079 = uitofp i32 %2078 to float
  %2080 = fmul fast float %2079, 0x3F70101020000000
  %2081 = and i32 %2077, 255
  %2082 = uitofp i32 %2081 to float
  %2083 = fmul fast float %2082, 0x3F70101020000000
  %2084 = lshr i32 %2077, 8
  %2085 = and i32 %2084, 255
  %2086 = uitofp i32 %2085 to float
  %2087 = fmul fast float %2086, 0x3F70101020000000
  %2088 = lshr i32 %2077, 16
  %2089 = and i32 %2088, 255
  %2090 = uitofp i32 %2089 to float
  %2091 = fmul fast float %2090, 0x3F70101020000000
  %2092 = bitcast float %2016 to i32
  %2093 = ashr i32 %2092, 1
  %2094 = sub nsw i32 1597463174, %2093
  %2095 = bitcast i32 %2094 to float
  %2096 = fmul fast float %2016, 5.000000e-01
  %2097 = fmul fast float %2095, %2095
  %2098 = fmul fast float %2097, %2096
  %2099 = fsub fast float 1.500000e+00, %2098
  %2100 = fmul fast float %2095, %2016
  %2101 = fmul fast float %2100, %2099
  %2102 = bitcast float %2017 to i32
  %2103 = ashr i32 %2102, 1
  %2104 = sub nsw i32 1597463174, %2103
  %2105 = bitcast i32 %2104 to float
  %2106 = fmul fast float %2017, 5.000000e-01
  %2107 = fmul fast float %2105, %2105
  %2108 = fmul fast float %2107, %2106
  %2109 = fsub fast float 1.500000e+00, %2108
  %2110 = fmul fast float %2105, %2017
  %2111 = fmul fast float %2110, %2109
  %2112 = bitcast float %2018 to i32
  %2113 = ashr i32 %2112, 1
  %2114 = sub nsw i32 1597463174, %2113
  %2115 = bitcast i32 %2114 to float
  %2116 = fmul fast float %2018, 5.000000e-01
  %2117 = fmul fast float %2115, %2115
  %2118 = fmul fast float %2117, %2116
  %2119 = fsub fast float 1.500000e+00, %2118
  %2120 = fmul fast float %2115, %2018
  %2121 = fmul fast float %2120, %2119
  %2122 = fsub fast float %2101, %2083
  %2123 = fsub fast float %2111, %2087
  %2124 = fsub fast float %2121, %2091
  %2125 = fmul fast float %2122, %2051
  %2126 = fmul fast float %2123, %2053
  %2127 = fmul fast float %2124, %2058
  %2128 = fadd fast float %2125, %2066
  %2129 = fadd fast float %2126, %2070
  %2130 = fadd fast float %2127, %2074
  %2131 = call float @dx.op.unary.f32(i32 7, float %2128)  ; Saturate(value)
  %2132 = call float @dx.op.unary.f32(i32 7, float %2129)  ; Saturate(value)
  %2133 = call float @dx.op.unary.f32(i32 7, float %2130)  ; Saturate(value)
  %2134 = fmul fast float %2131, %2131
  %2135 = fmul fast float %2132, %2132
  %2136 = fmul fast float %2133, %2133
  %2137 = fsub fast float %2134, %2016
  %2138 = fsub fast float %2135, %2017
  %2139 = fsub fast float %2136, %2018
  %2140 = fmul fast float %2137, %2041
  %2141 = fmul fast float %2138, %2041
  %2142 = fmul fast float %2139, %2041
  %2143 = fadd fast float %2140, %2016
  %2144 = fadd fast float %2141, %2017
  %2145 = fadd fast float %2142, %2018
  %2146 = fadd fast float %2063, %2027
  %2147 = fsub fast float %2146, %2080
  %2148 = call float @dx.op.unary.f32(i32 7, float %2147)  ; Saturate(value)
  %2149 = fsub fast float %2148, %2027
  %2150 = fmul fast float %2149, %2041
  %2151 = fadd fast float %2150, %2027
  br label %2205

; <label>:2152                                    ; preds = %2040
  %2153 = and i32 %2043, 134217728
  %2154 = icmp eq i32 %2153, 0
  br i1 %2154, label %2189, label %2155

; <label>:2155                                    ; preds = %2152
  %2156 = call float @dx.op.unary.f32(i32 24, float %266)  ; Sqrt(value)
  %2157 = call float @dx.op.unary.f32(i32 24, float %270)  ; Sqrt(value)
  %2158 = call float @dx.op.unary.f32(i32 24, float %274)  ; Sqrt(value)
  %2159 = fadd fast float %2156, -5.000000e-01
  %2160 = fadd fast float %2157, -5.000000e-01
  %2161 = fadd fast float %2158, -5.000000e-01
  %2162 = fmul fast float %2159, %2041
  %2163 = fmul fast float %2160, %2041
  %2164 = fmul fast float %2161, %2041
  %2165 = fadd fast float %2162, 5.000000e-01
  %2166 = fadd fast float %2163, 5.000000e-01
  %2167 = fadd fast float %2164, 5.000000e-01
  %2168 = call float @dx.op.unary.f32(i32 24, float %2016)  ; Sqrt(value)
  %2169 = call float @dx.op.unary.f32(i32 24, float %2017)  ; Sqrt(value)
  %2170 = call float @dx.op.unary.f32(i32 24, float %2018)  ; Sqrt(value)
  %2171 = fmul fast float %2165, 2.000000e+00
  %2172 = fsub fast float 1.000000e+00, %2171
  %2173 = fmul fast float %2172, %2168
  %2174 = fadd fast float %2173, %2171
  %2175 = fmul fast float %2174, %2168
  %2176 = fmul fast float %2166, 2.000000e+00
  %2177 = fsub fast float 1.000000e+00, %2176
  %2178 = fmul fast float %2177, %2169
  %2179 = fadd fast float %2178, %2176
  %2180 = fmul fast float %2179, %2169
  %2181 = fmul fast float %2167, 2.000000e+00
  %2182 = fsub fast float 1.000000e+00, %2181
  %2183 = fmul fast float %2182, %2170
  %2184 = fadd fast float %2183, %2181
  %2185 = fmul fast float %2184, %2170
  %2186 = fmul fast float %2175, %2175
  %2187 = fmul fast float %2180, %2180
  %2188 = fmul fast float %2185, %2185
  br label %2205

; <label>:2189                                    ; preds = %2152
  %2190 = fmul fast float %266, %266
  %2191 = fmul fast float %270, %270
  %2192 = fmul fast float %274, %274
  %2193 = fadd fast float %2190, -1.000000e+00
  %2194 = fadd fast float %2191, -1.000000e+00
  %2195 = fadd fast float %2192, -1.000000e+00
  %2196 = fmul fast float %2041, %2193
  %2197 = fmul fast float %2041, %2194
  %2198 = fmul fast float %2041, %2195
  %2199 = fadd fast float %2196, 1.000000e+00
  %2200 = fadd fast float %2197, 1.000000e+00
  %2201 = fadd fast float %2198, 1.000000e+00
  %2202 = fmul fast float %2199, %2016
  %2203 = fmul fast float %2200, %2017
  %2204 = fmul fast float %2201, %2018
  br label %2205

; <label>:2205                                    ; preds = %2189, %2155, %2046, %2002
  %2206 = phi float [ %2151, %2046 ], [ %2027, %2155 ], [ %2027, %2189 ], [ 0x3FA23C0BE0000000, %2002 ]
  %2207 = phi float [ %2143, %2046 ], [ %2186, %2155 ], [ %2202, %2189 ], [ 1.000000e+00, %2002 ]
  %2208 = phi float [ %2144, %2046 ], [ %2187, %2155 ], [ %2203, %2189 ], [ 1.000000e+00, %2002 ]
  %2209 = phi float [ %2145, %2046 ], [ %2188, %2155 ], [ %2204, %2189 ], [ 1.000000e+00, %2002 ]
  %2210 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2211 = extractvalue %dx.types.CBufRet.i32 %2210, 1
  %2212 = and i32 %2211, 1
  %2213 = icmp ne i32 %2212, 0
  %2214 = add i32 %42, 356
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2214, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = and i32 %2216, 32
  %2218 = icmp ne i32 %2217, 0
  %2219 = and i1 %2213, %2218
  %2220 = select i1 %2219, float 1.000000e+00, float %2207
  %2221 = select i1 %2219, float 0x3FD3333340000000, float %2208
  %2222 = select i1 %2219, float 0x3FD3333340000000, float %2209
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 32
  %2226 = icmp eq i32 %2225, 0
  br i1 %2226, label %2299, label %2227

; <label>:2227                                    ; preds = %2205
  %2228 = add i32 %42, 124
  %2229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2228, i32 undef)  ; BufferLoad(srv,index,wot)
  %2230 = extractvalue %dx.types.ResRet.i32 %2229, 0
  %2231 = add i32 %42, 384
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2231, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = add i32 %2233, 0
  %2235 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2234, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2236 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2235, %dx.types.Handle %63, float %1812, float %1813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2237 = extractvalue %dx.types.ResRet.f32 %2236, 0
  %2238 = extractvalue %dx.types.ResRet.f32 %2236, 1
  %2239 = extractvalue %dx.types.ResRet.f32 %2236, 2
  %2240 = extractvalue %dx.types.ResRet.f32 %2236, 3
  %2241 = and i32 %2230, 255
  %2242 = uitofp i32 %2241 to float
  %2243 = lshr i32 %2230, 8
  %2244 = and i32 %2243, 255
  %2245 = uitofp i32 %2244 to float
  %2246 = lshr i32 %2230, 16
  %2247 = and i32 %2246, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = fmul fast float %2248, 0x3F70101000000000
  %2250 = fmul fast float %2237, %2242
  %2251 = fadd fast float %2250, %2245
  %2252 = fmul fast float %2251, 0x3F70101000000000
  %2253 = fadd fast float %2238, -5.000000e-01
  %2254 = fadd fast float %2240, -5.000000e-01
  %2255 = fmul fast float %2253, %2249
  %2256 = fmul fast float %2254, %2249
  %2257 = fadd fast float %2255, 5.000000e-01
  %2258 = fadd fast float %2256, 5.000000e-01
  %2259 = fmul fast float %2257, 2.000000e+00
  %2260 = fadd fast float %2259, -1.000000e+00
  %2261 = fmul fast float %2258, 2.000000e+00
  %2262 = fadd fast float %2261, -1.000000e+00
  %2263 = fadd fast float %2260, %2262
  %2264 = fmul fast float %2263, 5.000000e-01
  %2265 = fsub fast float %2260, %2262
  %2266 = fmul fast float %2265, 5.000000e-01
  %2267 = call float @dx.op.unary.f32(i32 6, float %2264)  ; FAbs(value)
  %2268 = fsub fast float 1.000000e+00, %2267
  %2269 = call float @dx.op.unary.f32(i32 6, float %2266)  ; FAbs(value)
  %2270 = fsub fast float %2268, %2269
  %2271 = call float @dx.op.dot3.f32(i32 55, float %2264, float %2266, float %2270, float %2264, float %2266, float %2270)  ; Dot3(ax,ay,az,bx,by,bz)
  %2272 = call float @dx.op.unary.f32(i32 25, float %2271)  ; Rsqrt(value)
  %2273 = fmul fast float %2264, %2272
  %2274 = fmul fast float %2266, %2272
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = and i32 %2276, 67108864
  %2278 = icmp eq i32 %2277, 0
  br i1 %2278, label %2295, label %2279

; <label>:2279                                    ; preds = %2227
  %2280 = add i32 %42, 312
  %2281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2280, i32 undef)  ; BufferLoad(srv,index,wot)
  %2282 = extractvalue %dx.types.ResRet.i32 %2281, 0
  %2283 = and i32 %2282, 65535
  %2284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2283)  ; LegacyF16ToF32(value)
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1722, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = and i32 %2286, 65535
  %2288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2287)  ; LegacyF16ToF32(value)
  %2289 = lshr i32 %2282, 16
  %2290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2289)  ; LegacyF16ToF32(value)
  %2291 = fsub fast float %2252, %2290
  %2292 = fmul fast float %2291, %2284
  %2293 = fadd fast float %2292, %2288
  %2294 = call float @dx.op.unary.f32(i32 7, float %2293)  ; Saturate(value)
  br label %2295

; <label>:2295                                    ; preds = %2279, %2227
  %2296 = phi float [ %2294, %2279 ], [ %2252, %2227 ]
  %2297 = call float @dx.op.dot2.f32(i32 54, float %2273, float %2274, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %2298 = call float @dx.op.dot2.f32(i32 54, float %2273, float %2274, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %2299

; <label>:2299                                    ; preds = %2295, %2205
  %2300 = phi float [ %2296, %2295 ], [ 0x3FD6666660000000, %2205 ]
  %2301 = phi float [ %2297, %2295 ], [ 0.000000e+00, %2205 ]
  %2302 = phi float [ %2298, %2295 ], [ 0.000000e+00, %2205 ]
  %2303 = phi float [ %2239, %2295 ], [ 1.000000e+00, %2205 ]
  %2304 = add i32 %42, 192
  %2305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2304, i32 undef)  ; BufferLoad(srv,index,wot)
  %2306 = extractvalue %dx.types.ResRet.i32 %2305, 0
  %2307 = lshr i32 %2306, 22
  %2308 = shl nuw nsw i32 %2307, 5
  %2309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2308)  ; LegacyF16ToF32(value)
  %2310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2311 = extractvalue %dx.types.ResRet.i32 %2310, 0
  %2312 = and i32 %2311, 64
  %2313 = icmp eq i32 %2312, 0
  br i1 %2313, label %2347, label %2314

; <label>:2314                                    ; preds = %2299
  %2315 = add i32 %42, 400
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2315, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = add i32 %2317, 0
  %2319 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2318, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = and i32 %2321, 131072
  %2323 = icmp eq i32 %2322, 0
  %2324 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2319, %dx.types.Handle %63, float %1812, float %1813, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2325 = extractvalue %dx.types.ResRet.f32 %2324, 0
  %2326 = extractvalue %dx.types.ResRet.f32 %2324, 1
  %2327 = extractvalue %dx.types.ResRet.f32 %2324, 2
  %2328 = fmul fast float %2325, %254
  %2329 = fmul fast float %2326, %257
  %2330 = fmul fast float %2327, %260
  br i1 %2323, label %2337, label %2331

; <label>:2331                                    ; preds = %2314
  %2332 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2333 = extractvalue %dx.types.CBufRet.f32 %2332, 0
  %2334 = fmul fast float %2333, %2328
  %2335 = fmul fast float %2333, %2329
  %2336 = fmul fast float %2333, %2330
  br label %2337

; <label>:2337                                    ; preds = %2331, %2314
  %2338 = phi float [ %2334, %2331 ], [ %2328, %2314 ]
  %2339 = phi float [ %2335, %2331 ], [ %2329, %2314 ]
  %2340 = phi float [ %2336, %2331 ], [ %2330, %2314 ]
  %2341 = fmul fast float %2338, %2309
  %2342 = select i1 %164, float %2341, float %2338
  %2343 = call float @dx.op.dot3.f32(i32 55, float %2342, float %2339, float %2340, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2344 = select i1 %164, float 0.000000e+00, float %2338
  %2345 = select i1 %164, float %2343, float %2339
  %2346 = select i1 %164, float 0.000000e+00, float %2340
  br label %2347

; <label>:2347                                    ; preds = %2337, %2299
  %2348 = phi float [ %2344, %2337 ], [ 0.000000e+00, %2299 ]
  %2349 = phi float [ %2345, %2337 ], [ 0.000000e+00, %2299 ]
  %2350 = phi float [ %2346, %2337 ], [ 0.000000e+00, %2299 ]
  %2351 = add i32 %42, 128
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2351, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 255
  %2355 = uitofp i32 %2354 to float
  %2356 = lshr i32 %2353, 8
  %2357 = and i32 %2356, 255
  %2358 = uitofp i32 %2357 to float
  %2359 = call float @dx.op.dot3.f32(i32 55, float %2220, float %2221, float %2222, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2360 = fmul fast float %2358, %2359
  %2361 = fadd fast float %2360, %2355
  %2362 = fmul fast float %2361, 0x3F70101020000000
  %2363 = call float @dx.op.unary.f32(i32 7, float %2362)  ; Saturate(value)
  br i1 %1712, label %2364, label %2372

; <label>:2364                                    ; preds = %2347
  %2365 = fsub fast float 1.000000e+00, %2000
  %2366 = fmul fast float %2365, %1701
  %2367 = fmul fast float %2365, %1702
  %2368 = fmul fast float %2365, %1703
  %2369 = fmul fast float %2365, %1704
  %2370 = fmul fast float %2365, %1705
  %2371 = fmul fast float %2365, %1706
  br label %2372

; <label>:2372                                    ; preds = %2364, %2347
  %2373 = phi float [ %2366, %2364 ], [ %1701, %2347 ]
  %2374 = phi float [ %2367, %2364 ], [ %1702, %2347 ]
  %2375 = phi float [ %2368, %2364 ], [ %1703, %2347 ]
  %2376 = phi float [ %2369, %2364 ], [ %1704, %2347 ]
  %2377 = phi float [ %2370, %2364 ], [ %1705, %2347 ]
  %2378 = phi float [ %2371, %2364 ], [ %1706, %2347 ]
  %2379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %1713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2380 = extractvalue %dx.types.ResRet.i32 %2379, 0
  %2381 = and i32 %2380, 3
  %2382 = icmp eq i32 %2381, 3
  br i1 %2382, label %2461, label %2383

; <label>:2383                                    ; preds = %2372
  %2384 = and i32 %2380, 16
  %2385 = icmp ne i32 %2384, 0
  %2386 = select i1 %2385, float %2000, float 0.000000e+00
  %2387 = icmp eq i32 %2381, 0
  br i1 %2387, label %2388, label %2416

; <label>:2388                                    ; preds = %2383
  %2389 = and i32 %2380, 64
  %2390 = icmp ne i32 %2389, 0
  %2391 = select i1 %2390, float %2000, float 0.000000e+00
  %2392 = fsub fast float %2220, %2373
  %2393 = fsub fast float %2221, %2374
  %2394 = fsub fast float %2222, %2375
  %2395 = fmul fast float %2386, %2392
  %2396 = fmul fast float %2386, %2393
  %2397 = fmul fast float %2386, %2394
  %2398 = fadd fast float %2395, %2373
  %2399 = fadd fast float %2396, %2374
  %2400 = fadd fast float %2397, %2375
  %2401 = fsub fast float %2206, %1707
  %2402 = fmul fast float %2386, %2401
  %2403 = fadd fast float %2402, %1707
  %2404 = fsub fast float %2348, %2376
  %2405 = fsub fast float %2349, %2377
  %2406 = fsub fast float %2350, %2378
  %2407 = fmul fast float %2391, %2404
  %2408 = fmul fast float %2391, %2405
  %2409 = fmul fast float %2391, %2406
  %2410 = fadd fast float %2407, %2376
  %2411 = fadd fast float %2408, %2377
  %2412 = fadd fast float %2409, %2378
  %2413 = fsub fast float %2363, %1710
  %2414 = fmul fast float %2386, %2413
  %2415 = fadd fast float %2414, %1710
  br label %2461

; <label>:2416                                    ; preds = %2383
  %2417 = icmp eq i32 %2381, 1
  br i1 %2417, label %2418, label %2431

; <label>:2418                                    ; preds = %2416
  %2419 = fadd fast float %2220, -1.000000e+00
  %2420 = fadd fast float %2221, -1.000000e+00
  %2421 = fadd fast float %2222, -1.000000e+00
  %2422 = fmul fast float %2386, %2419
  %2423 = fmul fast float %2386, %2420
  %2424 = fmul fast float %2386, %2421
  %2425 = fadd fast float %2422, 1.000000e+00
  %2426 = fadd fast float %2423, 1.000000e+00
  %2427 = fadd fast float %2424, 1.000000e+00
  %2428 = fmul fast float %2425, %2373
  %2429 = fmul fast float %2426, %2374
  %2430 = fmul fast float %2427, %2375
  br label %2461

; <label>:2431                                    ; preds = %2416
  %2432 = icmp eq i32 %2381, 2
  br i1 %2432, label %2433, label %2461

; <label>:2433                                    ; preds = %2431
  %2434 = call float @dx.op.unary.f32(i32 24, float %2220)  ; Sqrt(value)
  %2435 = call float @dx.op.unary.f32(i32 24, float %2221)  ; Sqrt(value)
  %2436 = call float @dx.op.unary.f32(i32 24, float %2222)  ; Sqrt(value)
  %2437 = fadd fast float %2434, -5.000000e-01
  %2438 = fadd fast float %2435, -5.000000e-01
  %2439 = fadd fast float %2436, -5.000000e-01
  %2440 = fmul fast float %2437, %2386
  %2441 = fmul fast float %2438, %2386
  %2442 = fmul fast float %2439, %2386
  %2443 = fadd fast float %2440, 5.000000e-01
  %2444 = fadd fast float %2441, 5.000000e-01
  %2445 = fadd fast float %2442, 5.000000e-01
  %2446 = fmul fast float %2443, 2.000000e+00
  %2447 = fsub fast float 1.000000e+00, %2446
  %2448 = fmul fast float %2447, %2373
  %2449 = fadd fast float %2448, %2446
  %2450 = fmul fast float %2449, %2373
  %2451 = fmul fast float %2444, 2.000000e+00
  %2452 = fsub fast float 1.000000e+00, %2451
  %2453 = fmul fast float %2452, %2374
  %2454 = fadd fast float %2453, %2451
  %2455 = fmul fast float %2454, %2374
  %2456 = fmul fast float %2445, 2.000000e+00
  %2457 = fsub fast float 1.000000e+00, %2456
  %2458 = fmul fast float %2457, %2375
  %2459 = fadd fast float %2458, %2456
  %2460 = fmul fast float %2459, %2375
  br label %2461

; <label>:2461                                    ; preds = %2433, %2431, %2418, %2388, %2372
  %2462 = phi float [ %2373, %2372 ], [ %2450, %2433 ], [ %2373, %2431 ], [ %2428, %2418 ], [ %2398, %2388 ]
  %2463 = phi float [ %2374, %2372 ], [ %2455, %2433 ], [ %2374, %2431 ], [ %2429, %2418 ], [ %2399, %2388 ]
  %2464 = phi float [ %2375, %2372 ], [ %2460, %2433 ], [ %2375, %2431 ], [ %2430, %2418 ], [ %2400, %2388 ]
  %2465 = phi float [ %2376, %2372 ], [ %2376, %2433 ], [ %2376, %2431 ], [ %2376, %2418 ], [ %2410, %2388 ]
  %2466 = phi float [ %2377, %2372 ], [ %2377, %2433 ], [ %2377, %2431 ], [ %2377, %2418 ], [ %2411, %2388 ]
  %2467 = phi float [ %2378, %2372 ], [ %2378, %2433 ], [ %2378, %2431 ], [ %2378, %2418 ], [ %2412, %2388 ]
  %2468 = phi float [ %1707, %2372 ], [ %1707, %2433 ], [ %1707, %2431 ], [ %1707, %2418 ], [ %2403, %2388 ]
  %2469 = phi float [ %1710, %2372 ], [ %1710, %2433 ], [ %1710, %2431 ], [ %1710, %2418 ], [ %2415, %2388 ]
  %2470 = and i32 %2380, 12
  %2471 = icmp eq i32 %2470, 12
  br i1 %2471, label %2544, label %2472

; <label>:2472                                    ; preds = %2461
  %2473 = and i32 %2380, 2097184
  %2474 = icmp eq i32 %2473, 2097184
  %2475 = select i1 %2474, float %2000, float 0.000000e+00
  %2476 = and i32 %2380, 4194336
  %2477 = icmp eq i32 %2476, 4194336
  %2478 = select i1 %2477, float %2000, float 0.000000e+00
  %2479 = and i32 %2380, 8388640
  %2480 = icmp eq i32 %2479, 8388640
  %2481 = select i1 %2480, float %2000, float 0.000000e+00
  %2482 = icmp eq i32 %2470, 0
  br i1 %2482, label %2483, label %2496

; <label>:2483                                    ; preds = %2472
  %2484 = fsub fast float %2301, %1699
  %2485 = fsub fast float %2302, %1700
  %2486 = fmul fast float %2475, %2484
  %2487 = fmul fast float %2475, %2485
  %2488 = fadd fast float %2486, %1699
  %2489 = fadd fast float %2487, %1700
  %2490 = fsub fast float %2303, %1709
  %2491 = fmul fast float %2478, %2490
  %2492 = fadd fast float %2491, %1709
  %2493 = fsub fast float %2300, %1708
  %2494 = fmul fast float %2481, %2493
  %2495 = fadd fast float %2494, %1708
  br label %2544

; <label>:2496                                    ; preds = %2472
  %2497 = icmp eq i32 %2470, 4
  br i1 %2497, label %2498, label %2530

; <label>:2498                                    ; preds = %2496
  %2499 = fmul fast float %2475, %2301
  %2500 = fmul fast float %2475, %2302
  %2501 = fadd fast float %2499, %1699
  %2502 = fadd fast float %2500, %1700
  %2503 = call float @dx.op.binary.f32(i32 36, float %1709, float %2303)  ; FMin(a,b)
  %2504 = fsub fast float %2503, %1709
  %2505 = fmul fast float %2504, %2478
  %2506 = fadd fast float %2505, %1709
  %2507 = fadd fast float %2300, %1708
  %2508 = fmul fast float %2507, 0x3FF337FAE0000000
  %2509 = fmul fast float %1708, %1708
  %2510 = fmul fast float %2300, %2300
  %2511 = fadd fast float %2510, %2509
  %2512 = fmul fast float %2511, 0x3FE5152B00000000
  %2513 = fmul fast float %1708, 0xBFCC1F85E0000000
  %2514 = fmul fast float %2513, %2300
  %2515 = fadd fast float %2514, 0xBFE1363700000000
  %2516 = fadd fast float %2515, %2508
  %2517 = fsub fast float %2516, %2512
  %2518 = fmul fast float %2507, 0x3FBA6F0D00000000
  %2519 = fmul fast float %2511, 0x3FD0432880000000
  %2520 = fmul fast float %1708, 0xBFEF110800000000
  %2521 = fmul fast float %2520, %2300
  %2522 = fadd fast float %2521, 1.000000e+00
  %2523 = fsub fast float %2522, %2518
  %2524 = fadd fast float %2523, %2519
  %2525 = fdiv fast float %2517, %2524
  %2526 = call float @dx.op.unary.f32(i32 7, float %2525)  ; Saturate(value)
  %2527 = fsub fast float %2526, %1708
  %2528 = fmul fast float %2527, %2481
  %2529 = fadd fast float %2528, %1708
  br label %2544

; <label>:2530                                    ; preds = %2496
  %2531 = icmp eq i32 %2470, 8
  br i1 %2531, label %2532, label %2544

; <label>:2532                                    ; preds = %2530
  %2533 = fmul fast float %2475, %2301
  %2534 = fmul fast float %2475, %2302
  %2535 = fadd fast float %2533, %1699
  %2536 = fadd fast float %2534, %1700
  %2537 = call float @dx.op.binary.f32(i32 36, float %1709, float %2303)  ; FMin(a,b)
  %2538 = fsub fast float %2537, %1709
  %2539 = fmul fast float %2538, %2478
  %2540 = fadd fast float %2539, %1709
  %2541 = fsub fast float %2300, %1708
  %2542 = fmul fast float %2481, %2541
  %2543 = fadd fast float %2542, %1708
  br label %2544

; <label>:2544                                    ; preds = %2532, %2530, %2498, %2483, %2461, %1999, %1711, %1698
  %2545 = phi float [ %1699, %2461 ], [ %1699, %1999 ], [ %1699, %1698 ], [ %2535, %2532 ], [ %1699, %2530 ], [ %2501, %2498 ], [ %2488, %2483 ], [ %1699, %1711 ]
  %2546 = phi float [ %1700, %2461 ], [ %1700, %1999 ], [ %1700, %1698 ], [ %2536, %2532 ], [ %1700, %2530 ], [ %2502, %2498 ], [ %2489, %2483 ], [ %1700, %1711 ]
  %2547 = phi float [ %2462, %2461 ], [ %1701, %1999 ], [ %1701, %1698 ], [ %2462, %2532 ], [ %2462, %2530 ], [ %2462, %2498 ], [ %2462, %2483 ], [ %1701, %1711 ]
  %2548 = phi float [ %2463, %2461 ], [ %1702, %1999 ], [ %1702, %1698 ], [ %2463, %2532 ], [ %2463, %2530 ], [ %2463, %2498 ], [ %2463, %2483 ], [ %1702, %1711 ]
  %2549 = phi float [ %2464, %2461 ], [ %1703, %1999 ], [ %1703, %1698 ], [ %2464, %2532 ], [ %2464, %2530 ], [ %2464, %2498 ], [ %2464, %2483 ], [ %1703, %1711 ]
  %2550 = phi float [ %2465, %2461 ], [ %1704, %1999 ], [ %1704, %1698 ], [ %2465, %2532 ], [ %2465, %2530 ], [ %2465, %2498 ], [ %2465, %2483 ], [ %1704, %1711 ]
  %2551 = phi float [ %2466, %2461 ], [ %1705, %1999 ], [ %1705, %1698 ], [ %2466, %2532 ], [ %2466, %2530 ], [ %2466, %2498 ], [ %2466, %2483 ], [ %1705, %1711 ]
  %2552 = phi float [ %2467, %2461 ], [ %1706, %1999 ], [ %1706, %1698 ], [ %2467, %2532 ], [ %2467, %2530 ], [ %2467, %2498 ], [ %2467, %2483 ], [ %1706, %1711 ]
  %2553 = phi float [ %2468, %2461 ], [ %1707, %1999 ], [ %1707, %1698 ], [ %2468, %2532 ], [ %2468, %2530 ], [ %2468, %2498 ], [ %2468, %2483 ], [ %1707, %1711 ]
  %2554 = phi float [ %1708, %2461 ], [ %1708, %1999 ], [ %1708, %1698 ], [ %2543, %2532 ], [ %1708, %2530 ], [ %2529, %2498 ], [ %2495, %2483 ], [ %1708, %1711 ]
  %2555 = phi float [ %1709, %2461 ], [ %1709, %1999 ], [ %1709, %1698 ], [ %2540, %2532 ], [ %1709, %2530 ], [ %2506, %2498 ], [ %2492, %2483 ], [ %1709, %1711 ]
  %2556 = phi float [ %2469, %2461 ], [ %1710, %1999 ], [ %1710, %1698 ], [ %2469, %2532 ], [ %2469, %2530 ], [ %2469, %2498 ], [ %2469, %2483 ], [ %1710, %1711 ]
  br i1 %341, label %3390, label %2557

; <label>:2557                                    ; preds = %2544
  %2558 = icmp ult i32 %392, 4
  %2559 = add i32 %42, 72
  %2560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2561 = extractvalue %dx.types.ResRet.i32 %2560, 0
  %2562 = add i32 %42, 76
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2562, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = or i32 %2564, %2561
  %2566 = icmp eq i32 %2565, 0
  br i1 %2566, label %3390, label %2567

; <label>:2567                                    ; preds = %2557
  %2568 = add i32 %42, 332
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = lshr i32 %2570, 16
  %2572 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2571)  ; LegacyF16ToF32(value)
  %2573 = fmul fast float %2572, 0x3F50624DE0000000
  %2574 = add i32 %42, 136
  %2575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2574, i32 undef)  ; BufferLoad(srv,index,wot)
  %2576 = extractvalue %dx.types.ResRet.i32 %2575, 0
  %2577 = lshr i32 %2576, 16
  %2578 = and i32 %2577, 255
  %2579 = lshr i32 %2576, 24
  %2580 = add i32 %42, 340
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = and i32 %2582, 65535
  %2584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2583)  ; LegacyF16ToF32(value)
  %2585 = lshr i32 %2582, 16
  %2586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2585)  ; LegacyF16ToF32(value)
  %2587 = add i32 %42, 80
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2587, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = lshr i32 %2589, 22
  %2591 = shl nuw nsw i32 %2590, 5
  %2592 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2591)  ; LegacyF16ToF32(value)
  %2593 = shl i32 %2589, 4
  %2594 = and i32 %2593, 32752
  %2595 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2594)  ; LegacyF16ToF32(value)
  %2596 = lshr i32 %2589, 7
  %2597 = and i32 %2596, 32752
  %2598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2597)  ; LegacyF16ToF32(value)
  %2599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2600 = extractvalue %dx.types.CBufRet.f32 %2599, 3
  %2601 = fmul fast float %2600, 1.000000e+03
  %2602 = fmul fast float %331, %2601
  %2603 = call float @dx.op.unary.f32(i32 22, float %2602)  ; Frc(value)
  %2604 = fadd fast float %2603, %321
  %2605 = fmul fast float %332, %2601
  %2606 = call float @dx.op.unary.f32(i32 22, float %2605)  ; Frc(value)
  %2607 = fadd fast float %2606, %323
  %2608 = fmul fast float %2573, %2601
  %2609 = call float @dx.op.unary.f32(i32 22, float %2608)  ; Frc(value)
  %2610 = fmul fast float %2609, 0x401921FB60000000
  %2611 = fadd fast float %2610, %2592
  %2612 = call float @dx.op.unary.f32(i32 13, float %2611)  ; Sin(value)
  %2613 = call float @dx.op.unary.f32(i32 12, float %2611)  ; Cos(value)
  %2614 = fsub fast float -0.000000e+00, %2612
  %2615 = fadd fast float %55, -5.000000e-01
  %2616 = fadd fast float %56, -5.000000e-01
  %2617 = fmul fast float %2584, %2615
  %2618 = fmul fast float %2586, %2616
  %2619 = fadd fast float %2617, 5.000000e-01
  %2620 = fadd fast float %2618, 5.000000e-01
  %2621 = fmul fast float %2595, %2619
  %2622 = fmul fast float %2598, %2620
  %2623 = fmul fast float %2613, %2621
  %2624 = call float @dx.op.tertiary.f32(i32 46, float %2614, float %2622, float %2623)  ; FMad(a,b,c)
  %2625 = fmul fast float %2612, %2621
  %2626 = call float @dx.op.tertiary.f32(i32 46, float %2613, float %2622, float %2625)  ; FMad(a,b,c)
  %2627 = fadd fast float %2604, %2624
  %2628 = fadd fast float %2607, %2626
  %2629 = icmp ugt i32 %2578, 1
  %2630 = icmp ugt i32 %2576, 33554431
  %2631 = or i1 %2630, %2629
  br i1 %2631, label %2632, label %2657

; <label>:2632                                    ; preds = %2567
  %2633 = add i32 %42, 276
  %2634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2633, i32 undef)  ; BufferLoad(srv,index,wot)
  %2635 = extractvalue %dx.types.ResRet.i32 %2634, 0
  %2636 = lshr i32 %2635, 16
  %2637 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2636)  ; LegacyF16ToF32(value)
  %2638 = fmul fast float %2600, %2637
  %2639 = call float @dx.op.unary.f32(i32 22, float %2638)  ; Frc(value)
  %2640 = mul nuw nsw i32 %2578, %2579
  %2641 = uitofp i32 %2640 to float
  %2642 = fmul fast float %2639, %2641
  %2643 = call float @dx.op.unary.f32(i32 27, float %2642)  ; Round_ni(value)
  %2644 = fptoui float %2643 to i32
  %2645 = urem i32 %2644, %2578
  %2646 = udiv i32 %2644, %2579
  %2647 = call float @dx.op.unary.f32(i32 22, float %2627)  ; Frc(value)
  %2648 = call float @dx.op.unary.f32(i32 22, float %2628)  ; Frc(value)
  %2649 = uitofp i32 %2645 to float
  %2650 = uitofp i32 %2646 to float
  %2651 = fadd fast float %2647, %2649
  %2652 = fadd fast float %2648, %2650
  %2653 = uitofp i32 %2578 to float
  %2654 = uitofp i32 %2579 to float
  %2655 = fdiv fast float %2651, %2653
  %2656 = fdiv fast float %2652, %2654
  br label %2657

; <label>:2657                                    ; preds = %2632, %2567
  %2658 = phi float [ %2655, %2632 ], [ %2627, %2567 ]
  %2659 = phi float [ %2656, %2632 ], [ %2628, %2567 ]
  %2660 = and i32 %2561, 16777216
  %2661 = icmp eq i32 %2660, 0
  br i1 %2661, label %2771, label %2662

; <label>:2662                                    ; preds = %2657
  %2663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2664 = extractvalue %dx.types.CBufRet.f32 %2663, 0
  %2665 = extractvalue %dx.types.CBufRet.f32 %2663, 1
  %2666 = extractvalue %dx.types.CBufRet.f32 %2663, 2
  %2667 = fadd fast float %2664, %122
  %2668 = fadd fast float %2665, %123
  %2669 = fadd fast float %2666, %124
  %2670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2671 = extractvalue %dx.types.CBufRet.f32 %2670, 0
  %2672 = call float @dx.op.unary.f32(i32 7, float %2671)  ; Saturate(value)
  %2673 = icmp eq i32 %43, 65535
  br i1 %2673, label %2768, label %2674

; <label>:2674                                    ; preds = %2662
  %2675 = lshr i32 %43, 1
  %2676 = shl i32 %2675, 2
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %43, 1
  %2680 = icmp ne i32 %2679, 0
  %2681 = lshr i32 %2678, 16
  %2682 = and i32 %2678, 65535
  %2683 = select i1 %2680, i32 %2681, i32 %2682
  %2684 = icmp eq i32 %2683, 65535
  br i1 %2684, label %2764, label %2685

; <label>:2685                                    ; preds = %2674
  %2686 = mul nuw nsw i32 %2683, 40
  %2687 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2686, i32 undef)  ; BufferLoad(srv,index,wot)
  %2688 = extractvalue %dx.types.ResRet.f32 %2687, 0
  %2689 = extractvalue %dx.types.ResRet.f32 %2687, 1
  %2690 = extractvalue %dx.types.ResRet.f32 %2687, 2
  %2691 = add nuw nsw i32 %2686, 12
  %2692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2691, i32 undef)  ; BufferLoad(srv,index,wot)
  %2693 = extractvalue %dx.types.ResRet.f32 %2692, 0
  %2694 = extractvalue %dx.types.ResRet.f32 %2692, 1
  %2695 = extractvalue %dx.types.ResRet.f32 %2692, 2
  %2696 = add nuw nsw i32 %2686, 24
  %2697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2696, i32 undef)  ; BufferLoad(srv,index,wot)
  %2698 = extractvalue %dx.types.ResRet.f32 %2697, 0
  %2699 = extractvalue %dx.types.ResRet.f32 %2697, 1
  %2700 = extractvalue %dx.types.ResRet.f32 %2697, 2
  %2701 = add nuw nsw i32 %2686, 36
  %2702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %2703 = extractvalue %dx.types.ResRet.f32 %2702, 0
  %2704 = fsub fast float %2667, %2688
  %2705 = fsub fast float %2668, %2689
  %2706 = fsub fast float %2669, %2690
  %2707 = fmul fast float %2703, %2704
  %2708 = fmul fast float %2703, %2705
  %2709 = fmul fast float %2703, %2706
  %2710 = call float @dx.op.unary.f32(i32 27, float %2707)  ; Round_ni(value)
  %2711 = call float @dx.op.unary.f32(i32 27, float %2708)  ; Round_ni(value)
  %2712 = call float @dx.op.unary.f32(i32 27, float %2709)  ; Round_ni(value)
  %2713 = fadd fast float %2710, 5.000000e-01
  %2714 = fadd fast float %2711, 5.000000e-01
  %2715 = fadd fast float %2712, 5.000000e-01
  %2716 = fmul fast float %2713, %2693
  %2717 = fmul fast float %2714, %2694
  %2718 = fmul fast float %2715, %2695
  %2719 = shl i32 %43, 2
  %2720 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2721 = extractvalue %dx.types.ResRet.i32 %2720, 0
  %2722 = add i32 %2721, 0
  %2723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2722, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2724 = call float @dx.op.unary.f32(i32 22, float %2716)  ; Frc(value)
  %2725 = call float @dx.op.unary.f32(i32 22, float %2717)  ; Frc(value)
  %2726 = call float @dx.op.unary.f32(i32 22, float %2718)  ; Frc(value)
  %2727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2723, %dx.types.Handle %39, float %2724, float %2725, float %2726, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2728 = extractvalue %dx.types.ResRet.f32 %2727, 0
  %2729 = extractvalue %dx.types.ResRet.f32 %2727, 1
  %2730 = extractvalue %dx.types.ResRet.f32 %2727, 2
  %2731 = fmul fast float %2728, 1.023000e+03
  %2732 = fmul fast float %2729, 1.023000e+03
  %2733 = fmul fast float %2730, 1.023000e+03
  %2734 = fadd fast float %2731, 5.000000e-01
  %2735 = fadd fast float %2732, 5.000000e-01
  %2736 = fadd fast float %2733, 5.000000e-01
  %2737 = call float @dx.op.unary.f32(i32 27, float %2734)  ; Round_ni(value)
  %2738 = call float @dx.op.unary.f32(i32 27, float %2735)  ; Round_ni(value)
  %2739 = call float @dx.op.unary.f32(i32 27, float %2736)  ; Round_ni(value)
  %2740 = fsub fast float %2707, %2710
  %2741 = fsub fast float %2708, %2711
  %2742 = fsub fast float %2709, %2712
  %2743 = fmul fast float %2740, 7.500000e-01
  %2744 = fmul fast float %2741, 7.500000e-01
  %2745 = fmul fast float %2742, 7.500000e-01
  %2746 = fadd fast float %2710, 1.250000e-01
  %2747 = fadd fast float %2746, %2743
  %2748 = fadd fast float %2747, %2737
  %2749 = fadd fast float %2711, 1.250000e-01
  %2750 = fadd fast float %2749, %2744
  %2751 = fadd fast float %2750, %2738
  %2752 = fadd fast float %2712, 1.250000e-01
  %2753 = fadd fast float %2752, %2745
  %2754 = fadd fast float %2753, %2739
  %2755 = fmul fast float %2748, %2698
  %2756 = fmul fast float %2751, %2699
  %2757 = fmul fast float %2754, %2700
  %2758 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2719, i32 undef)  ; BufferLoad(srv,index,wot)
  %2759 = extractvalue %dx.types.ResRet.i32 %2758, 0
  %2760 = add i32 %2759, 0
  %2761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2760, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2761, %dx.types.Handle %37, float %2755, float %2756, float %2757, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2763 = extractvalue %dx.types.ResRet.f32 %2762, 0
  br label %2764

; <label>:2764                                    ; preds = %2685, %2674
  %2765 = phi float [ %2763, %2685 ], [ -1.000000e+00, %2674 ]
  %2766 = fadd fast float %2765, %2672
  %2767 = call float @dx.op.unary.f32(i32 7, float %2766)  ; Saturate(value)
  br label %2768

; <label>:2768                                    ; preds = %2764, %2662
  %2769 = phi float [ %2767, %2764 ], [ %2672, %2662 ]
  %2770 = fmul fast float %2769, %387
  br label %2771

; <label>:2771                                    ; preds = %2768, %2657
  %2772 = phi float [ %2770, %2768 ], [ %387, %2657 ]
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = and i32 %2774, 256
  %2776 = icmp eq i32 %2775, 0
  br i1 %2776, label %2823, label %2777

; <label>:2777                                    ; preds = %2771
  %2778 = add i32 %42, 436
  %2779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2780 = extractvalue %dx.types.ResRet.i32 %2779, 0
  %2781 = add i32 %2780, 0
  %2782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2781, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2783 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2782, %dx.types.Handle %64, float %2658, float %2659, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2784 = extractvalue %dx.types.ResRet.f32 %2783, 0
  %2785 = add i32 %42, 148
  %2786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2785, i32 undef)  ; BufferLoad(srv,index,wot)
  %2787 = extractvalue %dx.types.ResRet.i32 %2786, 0
  %2788 = shl i32 %2787, 4
  %2789 = and i32 %2788, 32752
  %2790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2789)  ; LegacyF16ToF32(value)
  %2791 = lshr i32 %2787, 7
  %2792 = and i32 %2791, 32752
  %2793 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2792)  ; LegacyF16ToF32(value)
  %2794 = fsub fast float 1.000000e+00, %2772
  %2795 = call float @dx.op.binary.f32(i32 35, float %2794, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2796 = bitcast float %2772 to i32
  %2797 = sitofp i32 %2796 to float
  %2798 = fadd fast float %2797, 0xC1CFBF8940000000
  %2799 = fmul fast float %2793, %2798
  %2800 = fadd fast float %2799, 0x41CFBF8940000000
  %2801 = fptosi float %2800 to i32
  %2802 = bitcast i32 %2801 to float
  %2803 = bitcast float %2795 to i32
  %2804 = sitofp i32 %2803 to float
  %2805 = fadd fast float %2804, 0xC1CFBF8940000000
  %2806 = fmul fast float %2805, %2793
  %2807 = fadd fast float %2806, 0x41CFBF8940000000
  %2808 = fptosi float %2807 to i32
  %2809 = bitcast i32 %2808 to float
  %2810 = fmul fast float %2802, %2790
  %2811 = fmul fast float %2809, %2790
  %2812 = fsub fast float %2795, %2810
  %2813 = fadd fast float %2811, %2795
  %2814 = call float @dx.op.unary.f32(i32 7, float %2812)  ; Saturate(value)
  %2815 = call float @dx.op.unary.f32(i32 7, float %2813)  ; Saturate(value)
  %2816 = fsub fast float %2784, %2814
  %2817 = fsub fast float %2815, %2814
  %2818 = bitcast float %2817 to i32
  %2819 = sub nsw i32 2129859010, %2818
  %2820 = bitcast i32 %2819 to float
  %2821 = fmul fast float %2820, %2816
  %2822 = call float @dx.op.unary.f32(i32 7, float %2821)  ; Saturate(value)
  br label %2823

; <label>:2823                                    ; preds = %2777, %2771
  %2824 = phi float [ %2822, %2777 ], [ %2772, %2771 ]
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = and i32 %2826, 128
  %2828 = icmp eq i32 %2827, 0
  br i1 %2828, label %2845, label %2829

; <label>:2829                                    ; preds = %2823
  %2830 = add i32 %42, 420
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = add i32 %2832, 0
  %2834 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2833, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2835 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2834, %dx.types.Handle %64, float %2658, float %2659, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2836 = extractvalue %dx.types.ResRet.f32 %2835, 0
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = and i32 %2838, 524288
  %2840 = icmp ne i32 %2839, 0
  %2841 = fcmp fast ogt float %2836, 0x3FE0101020000000
  %2842 = select i1 %2841, float 1.000000e+00, float 0.000000e+00
  %2843 = select i1 %2840, float %2842, float %2836
  %2844 = fmul fast float %2843, %2824
  br label %2845

; <label>:2845                                    ; preds = %2829, %2823
  %2846 = phi float [ %2844, %2829 ], [ %2824, %2823 ]
  %2847 = fcmp fast ult float %2846, 0x3F70101020000000
  br i1 %2847, label %3390, label %2848

; <label>:2848                                    ; preds = %2845
  %2849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2850 = extractvalue %dx.types.ResRet.i32 %2849, 0
  %2851 = and i32 %2850, 16
  %2852 = icmp eq i32 %2851, 0
  br i1 %2852, label %3051, label %2853

; <label>:2853                                    ; preds = %2848
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2574, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = add i32 %42, 372
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = add i32 %2858, 0
  %2860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2859, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2861 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2860, %dx.types.Handle %63, float %2658, float %2659, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2862 = extractvalue %dx.types.ResRet.f32 %2861, 0
  %2863 = extractvalue %dx.types.ResRet.f32 %2861, 1
  %2864 = extractvalue %dx.types.ResRet.f32 %2861, 2
  %2865 = extractvalue %dx.types.ResRet.f32 %2861, 3
  %2866 = and i32 %2855, 255
  %2867 = uitofp i32 %2866 to float
  %2868 = lshr i32 %2855, 8
  %2869 = and i32 %2868, 255
  %2870 = uitofp i32 %2869 to float
  %2871 = fmul fast float %2865, %2867
  %2872 = fadd fast float %2871, %2870
  %2873 = fmul fast float %2872, 0x3F70101000000000
  %2874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2875 = extractvalue %dx.types.ResRet.i32 %2874, 0
  %2876 = and i32 %2875, 512
  %2877 = icmp eq i32 %2876, 0
  br i1 %2877, label %2886, label %2878

; <label>:2878                                    ; preds = %2853
  %2879 = add i32 %42, 452
  %2880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2879, i32 undef)  ; BufferLoad(srv,index,wot)
  %2881 = extractvalue %dx.types.ResRet.i32 %2880, 0
  %2882 = add i32 %2881, 0
  %2883 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2882, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2884 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2883, %dx.types.Handle %64, float %2658, float %2659, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2885 = extractvalue %dx.types.ResRet.f32 %2884, 0
  br label %2886

; <label>:2886                                    ; preds = %2878, %2853
  %2887 = phi float [ %2885, %2878 ], [ 1.000000e+00, %2853 ]
  %2888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %2889 = extractvalue %dx.types.ResRet.i32 %2888, 0
  %2890 = and i32 %2889, 33554432
  %2891 = icmp eq i32 %2890, 0
  br i1 %2891, label %2998, label %2892

; <label>:2892                                    ; preds = %2886
  %2893 = add i32 %42, 272
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = and i32 %2895, 65535
  %2897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2896)  ; LegacyF16ToF32(value)
  %2898 = lshr i32 %2895, 16
  %2899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2898)  ; LegacyF16ToF32(value)
  %2900 = add i32 %42, 276
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2900, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = and i32 %2902, 65535
  %2904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2903)  ; LegacyF16ToF32(value)
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = lshr i32 %2906, 24
  %2908 = uitofp i32 %2907 to float
  %2909 = fmul fast float %2908, 0x3F70101020000000
  %2910 = and i32 %2906, 255
  %2911 = uitofp i32 %2910 to float
  %2912 = fmul fast float %2911, 0x3F70101020000000
  %2913 = lshr i32 %2906, 8
  %2914 = and i32 %2913, 255
  %2915 = uitofp i32 %2914 to float
  %2916 = fmul fast float %2915, 0x3F70101020000000
  %2917 = lshr i32 %2906, 16
  %2918 = and i32 %2917, 255
  %2919 = uitofp i32 %2918 to float
  %2920 = fmul fast float %2919, 0x3F70101020000000
  %2921 = add i32 %42, 268
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2921, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = lshr i32 %2923, 24
  %2925 = uitofp i32 %2924 to float
  %2926 = fmul fast float %2925, 0x3F70101020000000
  %2927 = and i32 %2923, 255
  %2928 = uitofp i32 %2927 to float
  %2929 = fmul fast float %2928, 0x3F70101020000000
  %2930 = lshr i32 %2923, 8
  %2931 = and i32 %2930, 255
  %2932 = uitofp i32 %2931 to float
  %2933 = fmul fast float %2932, 0x3F70101020000000
  %2934 = lshr i32 %2923, 16
  %2935 = and i32 %2934, 255
  %2936 = uitofp i32 %2935 to float
  %2937 = fmul fast float %2936, 0x3F70101020000000
  %2938 = bitcast float %2862 to i32
  %2939 = ashr i32 %2938, 1
  %2940 = sub nsw i32 1597463174, %2939
  %2941 = bitcast i32 %2940 to float
  %2942 = fmul fast float %2862, 5.000000e-01
  %2943 = fmul fast float %2941, %2941
  %2944 = fmul fast float %2943, %2942
  %2945 = fsub fast float 1.500000e+00, %2944
  %2946 = fmul fast float %2941, %2862
  %2947 = fmul fast float %2946, %2945
  %2948 = bitcast float %2863 to i32
  %2949 = ashr i32 %2948, 1
  %2950 = sub nsw i32 1597463174, %2949
  %2951 = bitcast i32 %2950 to float
  %2952 = fmul fast float %2863, 5.000000e-01
  %2953 = fmul fast float %2951, %2951
  %2954 = fmul fast float %2953, %2952
  %2955 = fsub fast float 1.500000e+00, %2954
  %2956 = fmul fast float %2951, %2863
  %2957 = fmul fast float %2956, %2955
  %2958 = bitcast float %2864 to i32
  %2959 = ashr i32 %2958, 1
  %2960 = sub nsw i32 1597463174, %2959
  %2961 = bitcast i32 %2960 to float
  %2962 = fmul fast float %2864, 5.000000e-01
  %2963 = fmul fast float %2961, %2961
  %2964 = fmul fast float %2963, %2962
  %2965 = fsub fast float 1.500000e+00, %2964
  %2966 = fmul fast float %2961, %2864
  %2967 = fmul fast float %2966, %2965
  %2968 = fsub fast float %2947, %2929
  %2969 = fsub fast float %2957, %2933
  %2970 = fsub fast float %2967, %2937
  %2971 = fmul fast float %2968, %2897
  %2972 = fmul fast float %2969, %2899
  %2973 = fmul fast float %2970, %2904
  %2974 = fadd fast float %2971, %2912
  %2975 = fadd fast float %2972, %2916
  %2976 = fadd fast float %2973, %2920
  %2977 = call float @dx.op.unary.f32(i32 7, float %2974)  ; Saturate(value)
  %2978 = call float @dx.op.unary.f32(i32 7, float %2975)  ; Saturate(value)
  %2979 = call float @dx.op.unary.f32(i32 7, float %2976)  ; Saturate(value)
  %2980 = fmul fast float %2977, %2977
  %2981 = fmul fast float %2978, %2978
  %2982 = fmul fast float %2979, %2979
  %2983 = fsub fast float %2980, %2862
  %2984 = fsub fast float %2981, %2863
  %2985 = fsub fast float %2982, %2864
  %2986 = fmul fast float %2983, %2887
  %2987 = fmul fast float %2984, %2887
  %2988 = fmul fast float %2985, %2887
  %2989 = fadd fast float %2986, %2862
  %2990 = fadd fast float %2987, %2863
  %2991 = fadd fast float %2988, %2864
  %2992 = fadd fast float %2909, %2873
  %2993 = fsub fast float %2992, %2926
  %2994 = call float @dx.op.unary.f32(i32 7, float %2993)  ; Saturate(value)
  %2995 = fsub fast float %2994, %2873
  %2996 = fmul fast float %2995, %2887
  %2997 = fadd fast float %2996, %2873
  br label %3051

; <label>:2998                                    ; preds = %2886
  %2999 = and i32 %2889, 134217728
  %3000 = icmp eq i32 %2999, 0
  br i1 %3000, label %3035, label %3001

; <label>:3001                                    ; preds = %2998
  %3002 = call float @dx.op.unary.f32(i32 24, float %308)  ; Sqrt(value)
  %3003 = call float @dx.op.unary.f32(i32 24, float %312)  ; Sqrt(value)
  %3004 = call float @dx.op.unary.f32(i32 24, float %316)  ; Sqrt(value)
  %3005 = fadd fast float %3002, -5.000000e-01
  %3006 = fadd fast float %3003, -5.000000e-01
  %3007 = fadd fast float %3004, -5.000000e-01
  %3008 = fmul fast float %3005, %2887
  %3009 = fmul fast float %3006, %2887
  %3010 = fmul fast float %3007, %2887
  %3011 = fadd fast float %3008, 5.000000e-01
  %3012 = fadd fast float %3009, 5.000000e-01
  %3013 = fadd fast float %3010, 5.000000e-01
  %3014 = call float @dx.op.unary.f32(i32 24, float %2862)  ; Sqrt(value)
  %3015 = call float @dx.op.unary.f32(i32 24, float %2863)  ; Sqrt(value)
  %3016 = call float @dx.op.unary.f32(i32 24, float %2864)  ; Sqrt(value)
  %3017 = fmul fast float %3011, 2.000000e+00
  %3018 = fsub fast float 1.000000e+00, %3017
  %3019 = fmul fast float %3018, %3014
  %3020 = fadd fast float %3019, %3017
  %3021 = fmul fast float %3020, %3014
  %3022 = fmul fast float %3012, 2.000000e+00
  %3023 = fsub fast float 1.000000e+00, %3022
  %3024 = fmul fast float %3023, %3015
  %3025 = fadd fast float %3024, %3022
  %3026 = fmul fast float %3025, %3015
  %3027 = fmul fast float %3013, 2.000000e+00
  %3028 = fsub fast float 1.000000e+00, %3027
  %3029 = fmul fast float %3028, %3016
  %3030 = fadd fast float %3029, %3027
  %3031 = fmul fast float %3030, %3016
  %3032 = fmul fast float %3021, %3021
  %3033 = fmul fast float %3026, %3026
  %3034 = fmul fast float %3031, %3031
  br label %3051

; <label>:3035                                    ; preds = %2998
  %3036 = fmul fast float %308, %308
  %3037 = fmul fast float %312, %312
  %3038 = fmul fast float %316, %316
  %3039 = fadd fast float %3036, -1.000000e+00
  %3040 = fadd fast float %3037, -1.000000e+00
  %3041 = fadd fast float %3038, -1.000000e+00
  %3042 = fmul fast float %2887, %3039
  %3043 = fmul fast float %2887, %3040
  %3044 = fmul fast float %2887, %3041
  %3045 = fadd fast float %3042, 1.000000e+00
  %3046 = fadd fast float %3043, 1.000000e+00
  %3047 = fadd fast float %3044, 1.000000e+00
  %3048 = fmul fast float %3045, %2862
  %3049 = fmul fast float %3046, %2863
  %3050 = fmul fast float %3047, %2864
  br label %3051

; <label>:3051                                    ; preds = %3035, %3001, %2892, %2848
  %3052 = phi float [ %2997, %2892 ], [ %2873, %3001 ], [ %2873, %3035 ], [ 0x3FA23C0BE0000000, %2848 ]
  %3053 = phi float [ %2989, %2892 ], [ %3032, %3001 ], [ %3048, %3035 ], [ 1.000000e+00, %2848 ]
  %3054 = phi float [ %2990, %2892 ], [ %3033, %3001 ], [ %3049, %3035 ], [ 1.000000e+00, %2848 ]
  %3055 = phi float [ %2991, %2892 ], [ %3034, %3001 ], [ %3050, %3035 ], [ 1.000000e+00, %2848 ]
  %3056 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3057 = extractvalue %dx.types.CBufRet.i32 %3056, 1
  %3058 = and i32 %3057, 1
  %3059 = icmp ne i32 %3058, 0
  %3060 = add i32 %42, 356
  %3061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %3060, i32 undef)  ; BufferLoad(srv,index,wot)
  %3062 = extractvalue %dx.types.ResRet.i32 %3061, 0
  %3063 = and i32 %3062, 32
  %3064 = icmp ne i32 %3063, 0
  %3065 = and i1 %3059, %3064
  %3066 = select i1 %3065, float 1.000000e+00, float %3053
  %3067 = select i1 %3065, float 0x3FD3333340000000, float %3054
  %3068 = select i1 %3065, float 0x3FD3333340000000, float %3055
  %3069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.i32 %3069, 0
  %3071 = and i32 %3070, 32
  %3072 = icmp eq i32 %3071, 0
  br i1 %3072, label %3145, label %3073

; <label>:3073                                    ; preds = %3051
  %3074 = add i32 %42, 140
  %3075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %3074, i32 undef)  ; BufferLoad(srv,index,wot)
  %3076 = extractvalue %dx.types.ResRet.i32 %3075, 0
  %3077 = add i32 %42, 388
  %3078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %3077, i32 undef)  ; BufferLoad(srv,index,wot)
  %3079 = extractvalue %dx.types.ResRet.i32 %3078, 0
  %3080 = add i32 %3079, 0
  %3081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3080, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3082 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3081, %dx.types.Handle %63, float %2658, float %2659, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3083 = extractvalue %dx.types.ResRet.f32 %3082, 0
  %3084 = extractvalue %dx.types.ResRet.f32 %3082, 1
  %3085 = extractvalue %dx.types.ResRet.f32 %3082, 2
  %3086 = extractvalue %dx.types.ResRet.f32 %3082, 3
  %3087 = and i32 %3076, 255
  %3088 = uitofp i32 %3087 to float
  %3089 = lshr i32 %3076, 8
  %3090 = and i32 %3089, 255
  %3091 = uitofp i32 %3090 to float
  %3092 = lshr i32 %3076, 16
  %3093 = and i32 %3092, 255
  %3094 = uitofp i32 %3093 to float
  %3095 = fmul fast float %3094, 0x3F70101000000000
  %3096 = fmul fast float %3083, %3088
  %3097 = fadd fast float %3096, %3091
  %3098 = fmul fast float %3097, 0x3F70101000000000
  %3099 = fadd fast float %3084, -5.000000e-01
  %3100 = fadd fast float %3086, -5.000000e-01
  %3101 = fmul fast float %3099, %3095
  %3102 = fmul fast float %3100, %3095
  %3103 = fadd fast float %3101, 5.000000e-01
  %3104 = fadd fast float %3102, 5.000000e-01
  %3105 = fmul fast float %3103, 2.000000e+00
  %3106 = fadd fast float %3105, -1.000000e+00
  %3107 = fmul fast float %3104, 2.000000e+00
  %3108 = fadd fast float %3107, -1.000000e+00
  %3109 = fadd fast float %3106, %3108
  %3110 = fmul fast float %3109, 5.000000e-01
  %3111 = fsub fast float %3106, %3108
  %3112 = fmul fast float %3111, 5.000000e-01
  %3113 = call float @dx.op.unary.f32(i32 6, float %3110)  ; FAbs(value)
  %3114 = fsub fast float 1.000000e+00, %3113
  %3115 = call float @dx.op.unary.f32(i32 6, float %3112)  ; FAbs(value)
  %3116 = fsub fast float %3114, %3115
  %3117 = call float @dx.op.dot3.f32(i32 55, float %3110, float %3112, float %3116, float %3110, float %3112, float %3116)  ; Dot3(ax,ay,az,bx,by,bz)
  %3118 = call float @dx.op.unary.f32(i32 25, float %3117)  ; Rsqrt(value)
  %3119 = fmul fast float %3110, %3118
  %3120 = fmul fast float %3112, %3118
  %3121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3122 = extractvalue %dx.types.ResRet.i32 %3121, 0
  %3123 = and i32 %3122, 67108864
  %3124 = icmp eq i32 %3123, 0
  br i1 %3124, label %3141, label %3125

; <label>:3125                                    ; preds = %3073
  %3126 = add i32 %42, 328
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %3126, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = and i32 %3128, 65535
  %3130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3129)  ; LegacyF16ToF32(value)
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = and i32 %3132, 65535
  %3134 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3133)  ; LegacyF16ToF32(value)
  %3135 = lshr i32 %3128, 16
  %3136 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3135)  ; LegacyF16ToF32(value)
  %3137 = fsub fast float %3098, %3136
  %3138 = fmul fast float %3137, %3130
  %3139 = fadd fast float %3138, %3134
  %3140 = call float @dx.op.unary.f32(i32 7, float %3139)  ; Saturate(value)
  br label %3141

; <label>:3141                                    ; preds = %3125, %3073
  %3142 = phi float [ %3140, %3125 ], [ %3098, %3073 ]
  %3143 = call float @dx.op.dot2.f32(i32 54, float %3119, float %3120, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %3144 = call float @dx.op.dot2.f32(i32 54, float %3119, float %3120, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %3145

; <label>:3145                                    ; preds = %3141, %3051
  %3146 = phi float [ %3142, %3141 ], [ 0x3FD6666660000000, %3051 ]
  %3147 = phi float [ %3143, %3141 ], [ 0.000000e+00, %3051 ]
  %3148 = phi float [ %3144, %3141 ], [ 0.000000e+00, %3051 ]
  %3149 = phi float [ %3085, %3141 ], [ 1.000000e+00, %3051 ]
  %3150 = add i32 %42, 208
  %3151 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %3150, i32 undef)  ; BufferLoad(srv,index,wot)
  %3152 = extractvalue %dx.types.ResRet.i32 %3151, 0
  %3153 = lshr i32 %3152, 22
  %3154 = shl nuw nsw i32 %3153, 5
  %3155 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3154)  ; LegacyF16ToF32(value)
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = and i32 %3157, 64
  %3159 = icmp eq i32 %3158, 0
  br i1 %3159, label %3193, label %3160

; <label>:3160                                    ; preds = %3145
  %3161 = add i32 %42, 404
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = add i32 %3163, 0
  %3165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 131072
  %3169 = icmp eq i32 %3168, 0
  %3170 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3165, %dx.types.Handle %63, float %2658, float %2659, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3171 = extractvalue %dx.types.ResRet.f32 %3170, 0
  %3172 = extractvalue %dx.types.ResRet.f32 %3170, 1
  %3173 = extractvalue %dx.types.ResRet.f32 %3170, 2
  %3174 = fmul fast float %3171, %296
  %3175 = fmul fast float %3172, %299
  %3176 = fmul fast float %3173, %302
  br i1 %3169, label %3183, label %3177

; <label>:3177                                    ; preds = %3160
  %3178 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3179 = extractvalue %dx.types.CBufRet.f32 %3178, 0
  %3180 = fmul fast float %3179, %3174
  %3181 = fmul fast float %3179, %3175
  %3182 = fmul fast float %3179, %3176
  br label %3183

; <label>:3183                                    ; preds = %3177, %3160
  %3184 = phi float [ %3180, %3177 ], [ %3174, %3160 ]
  %3185 = phi float [ %3181, %3177 ], [ %3175, %3160 ]
  %3186 = phi float [ %3182, %3177 ], [ %3176, %3160 ]
  %3187 = fmul fast float %3184, %3155
  %3188 = select i1 %164, float %3187, float %3184
  %3189 = call float @dx.op.dot3.f32(i32 55, float %3188, float %3185, float %3186, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3190 = select i1 %164, float 0.000000e+00, float %3184
  %3191 = select i1 %164, float %3189, float %3185
  %3192 = select i1 %164, float 0.000000e+00, float %3186
  br label %3193

; <label>:3193                                    ; preds = %3183, %3145
  %3194 = phi float [ %3190, %3183 ], [ 0.000000e+00, %3145 ]
  %3195 = phi float [ %3191, %3183 ], [ 0.000000e+00, %3145 ]
  %3196 = phi float [ %3192, %3183 ], [ 0.000000e+00, %3145 ]
  %3197 = add i32 %42, 144
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = and i32 %3199, 255
  %3201 = uitofp i32 %3200 to float
  %3202 = lshr i32 %3199, 8
  %3203 = and i32 %3202, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = call float @dx.op.dot3.f32(i32 55, float %3066, float %3067, float %3068, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3206 = fmul fast float %3204, %3205
  %3207 = fadd fast float %3206, %3201
  %3208 = fmul fast float %3207, 0x3F70101020000000
  %3209 = call float @dx.op.unary.f32(i32 7, float %3208)  ; Saturate(value)
  br i1 %2558, label %3210, label %3218

; <label>:3210                                    ; preds = %3193
  %3211 = fsub fast float 1.000000e+00, %2846
  %3212 = fmul fast float %3211, %2547
  %3213 = fmul fast float %3211, %2548
  %3214 = fmul fast float %3211, %2549
  %3215 = fmul fast float %3211, %2550
  %3216 = fmul fast float %3211, %2551
  %3217 = fmul fast float %3211, %2552
  br label %3218

; <label>:3218                                    ; preds = %3210, %3193
  %3219 = phi float [ %3212, %3210 ], [ %2547, %3193 ]
  %3220 = phi float [ %3213, %3210 ], [ %2548, %3193 ]
  %3221 = phi float [ %3214, %3210 ], [ %2549, %3193 ]
  %3222 = phi float [ %3215, %3210 ], [ %2550, %3193 ]
  %3223 = phi float [ %3216, %3210 ], [ %2551, %3193 ]
  %3224 = phi float [ %3217, %3210 ], [ %2552, %3193 ]
  %3225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %2559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3226 = extractvalue %dx.types.ResRet.i32 %3225, 0
  %3227 = and i32 %3226, 3
  %3228 = icmp eq i32 %3227, 3
  br i1 %3228, label %3307, label %3229

; <label>:3229                                    ; preds = %3218
  %3230 = and i32 %3226, 16
  %3231 = icmp ne i32 %3230, 0
  %3232 = select i1 %3231, float %2846, float 0.000000e+00
  %3233 = icmp eq i32 %3227, 0
  br i1 %3233, label %3234, label %3262

; <label>:3234                                    ; preds = %3229
  %3235 = and i32 %3226, 64
  %3236 = icmp ne i32 %3235, 0
  %3237 = select i1 %3236, float %2846, float 0.000000e+00
  %3238 = fsub fast float %3066, %3219
  %3239 = fsub fast float %3067, %3220
  %3240 = fsub fast float %3068, %3221
  %3241 = fmul fast float %3232, %3238
  %3242 = fmul fast float %3232, %3239
  %3243 = fmul fast float %3232, %3240
  %3244 = fadd fast float %3241, %3219
  %3245 = fadd fast float %3242, %3220
  %3246 = fadd fast float %3243, %3221
  %3247 = fsub fast float %3052, %2553
  %3248 = fmul fast float %3232, %3247
  %3249 = fadd fast float %3248, %2553
  %3250 = fsub fast float %3194, %3222
  %3251 = fsub fast float %3195, %3223
  %3252 = fsub fast float %3196, %3224
  %3253 = fmul fast float %3237, %3250
  %3254 = fmul fast float %3237, %3251
  %3255 = fmul fast float %3237, %3252
  %3256 = fadd fast float %3253, %3222
  %3257 = fadd fast float %3254, %3223
  %3258 = fadd fast float %3255, %3224
  %3259 = fsub fast float %3209, %2556
  %3260 = fmul fast float %3232, %3259
  %3261 = fadd fast float %3260, %2556
  br label %3307

; <label>:3262                                    ; preds = %3229
  %3263 = icmp eq i32 %3227, 1
  br i1 %3263, label %3264, label %3277

; <label>:3264                                    ; preds = %3262
  %3265 = fadd fast float %3066, -1.000000e+00
  %3266 = fadd fast float %3067, -1.000000e+00
  %3267 = fadd fast float %3068, -1.000000e+00
  %3268 = fmul fast float %3232, %3265
  %3269 = fmul fast float %3232, %3266
  %3270 = fmul fast float %3232, %3267
  %3271 = fadd fast float %3268, 1.000000e+00
  %3272 = fadd fast float %3269, 1.000000e+00
  %3273 = fadd fast float %3270, 1.000000e+00
  %3274 = fmul fast float %3271, %3219
  %3275 = fmul fast float %3272, %3220
  %3276 = fmul fast float %3273, %3221
  br label %3307

; <label>:3277                                    ; preds = %3262
  %3278 = icmp eq i32 %3227, 2
  br i1 %3278, label %3279, label %3307

; <label>:3279                                    ; preds = %3277
  %3280 = call float @dx.op.unary.f32(i32 24, float %3066)  ; Sqrt(value)
  %3281 = call float @dx.op.unary.f32(i32 24, float %3067)  ; Sqrt(value)
  %3282 = call float @dx.op.unary.f32(i32 24, float %3068)  ; Sqrt(value)
  %3283 = fadd fast float %3280, -5.000000e-01
  %3284 = fadd fast float %3281, -5.000000e-01
  %3285 = fadd fast float %3282, -5.000000e-01
  %3286 = fmul fast float %3283, %3232
  %3287 = fmul fast float %3284, %3232
  %3288 = fmul fast float %3285, %3232
  %3289 = fadd fast float %3286, 5.000000e-01
  %3290 = fadd fast float %3287, 5.000000e-01
  %3291 = fadd fast float %3288, 5.000000e-01
  %3292 = fmul fast float %3289, 2.000000e+00
  %3293 = fsub fast float 1.000000e+00, %3292
  %3294 = fmul fast float %3293, %3219
  %3295 = fadd fast float %3294, %3292
  %3296 = fmul fast float %3295, %3219
  %3297 = fmul fast float %3290, 2.000000e+00
  %3298 = fsub fast float 1.000000e+00, %3297
  %3299 = fmul fast float %3298, %3220
  %3300 = fadd fast float %3299, %3297
  %3301 = fmul fast float %3300, %3220
  %3302 = fmul fast float %3291, 2.000000e+00
  %3303 = fsub fast float 1.000000e+00, %3302
  %3304 = fmul fast float %3303, %3221
  %3305 = fadd fast float %3304, %3302
  %3306 = fmul fast float %3305, %3221
  br label %3307

; <label>:3307                                    ; preds = %3279, %3277, %3264, %3234, %3218
  %3308 = phi float [ %3219, %3218 ], [ %3296, %3279 ], [ %3219, %3277 ], [ %3274, %3264 ], [ %3244, %3234 ]
  %3309 = phi float [ %3220, %3218 ], [ %3301, %3279 ], [ %3220, %3277 ], [ %3275, %3264 ], [ %3245, %3234 ]
  %3310 = phi float [ %3221, %3218 ], [ %3306, %3279 ], [ %3221, %3277 ], [ %3276, %3264 ], [ %3246, %3234 ]
  %3311 = phi float [ %3222, %3218 ], [ %3222, %3279 ], [ %3222, %3277 ], [ %3222, %3264 ], [ %3256, %3234 ]
  %3312 = phi float [ %3223, %3218 ], [ %3223, %3279 ], [ %3223, %3277 ], [ %3223, %3264 ], [ %3257, %3234 ]
  %3313 = phi float [ %3224, %3218 ], [ %3224, %3279 ], [ %3224, %3277 ], [ %3224, %3264 ], [ %3258, %3234 ]
  %3314 = phi float [ %2553, %3218 ], [ %2553, %3279 ], [ %2553, %3277 ], [ %2553, %3264 ], [ %3249, %3234 ]
  %3315 = phi float [ %2556, %3218 ], [ %2556, %3279 ], [ %2556, %3277 ], [ %2556, %3264 ], [ %3261, %3234 ]
  %3316 = and i32 %3226, 12
  %3317 = icmp eq i32 %3316, 12
  br i1 %3317, label %3390, label %3318

; <label>:3318                                    ; preds = %3307
  %3319 = and i32 %3226, 2097184
  %3320 = icmp eq i32 %3319, 2097184
  %3321 = select i1 %3320, float %2846, float 0.000000e+00
  %3322 = and i32 %3226, 4194336
  %3323 = icmp eq i32 %3322, 4194336
  %3324 = select i1 %3323, float %2846, float 0.000000e+00
  %3325 = and i32 %3226, 8388640
  %3326 = icmp eq i32 %3325, 8388640
  %3327 = select i1 %3326, float %2846, float 0.000000e+00
  %3328 = icmp eq i32 %3316, 0
  br i1 %3328, label %3329, label %3342

; <label>:3329                                    ; preds = %3318
  %3330 = fsub fast float %3147, %2545
  %3331 = fsub fast float %3148, %2546
  %3332 = fmul fast float %3321, %3330
  %3333 = fmul fast float %3321, %3331
  %3334 = fadd fast float %3332, %2545
  %3335 = fadd fast float %3333, %2546
  %3336 = fsub fast float %3149, %2555
  %3337 = fmul fast float %3324, %3336
  %3338 = fadd fast float %3337, %2555
  %3339 = fsub fast float %3146, %2554
  %3340 = fmul fast float %3327, %3339
  %3341 = fadd fast float %3340, %2554
  br label %3390

; <label>:3342                                    ; preds = %3318
  %3343 = icmp eq i32 %3316, 4
  br i1 %3343, label %3344, label %3376

; <label>:3344                                    ; preds = %3342
  %3345 = fmul fast float %3321, %3147
  %3346 = fmul fast float %3321, %3148
  %3347 = fadd fast float %3345, %2545
  %3348 = fadd fast float %3346, %2546
  %3349 = call float @dx.op.binary.f32(i32 36, float %2555, float %3149)  ; FMin(a,b)
  %3350 = fsub fast float %3349, %2555
  %3351 = fmul fast float %3350, %3324
  %3352 = fadd fast float %3351, %2555
  %3353 = fadd fast float %3146, %2554
  %3354 = fmul fast float %3353, 0x3FF337FAE0000000
  %3355 = fmul fast float %2554, %2554
  %3356 = fmul fast float %3146, %3146
  %3357 = fadd fast float %3356, %3355
  %3358 = fmul fast float %3357, 0x3FE5152B00000000
  %3359 = fmul fast float %2554, 0xBFCC1F85E0000000
  %3360 = fmul fast float %3359, %3146
  %3361 = fadd fast float %3360, 0xBFE1363700000000
  %3362 = fadd fast float %3361, %3354
  %3363 = fsub fast float %3362, %3358
  %3364 = fmul fast float %3353, 0x3FBA6F0D00000000
  %3365 = fmul fast float %3357, 0x3FD0432880000000
  %3366 = fmul fast float %2554, 0xBFEF110800000000
  %3367 = fmul fast float %3366, %3146
  %3368 = fadd fast float %3367, 1.000000e+00
  %3369 = fsub fast float %3368, %3364
  %3370 = fadd fast float %3369, %3365
  %3371 = fdiv fast float %3363, %3370
  %3372 = call float @dx.op.unary.f32(i32 7, float %3371)  ; Saturate(value)
  %3373 = fsub fast float %3372, %2554
  %3374 = fmul fast float %3373, %3327
  %3375 = fadd fast float %3374, %2554
  br label %3390

; <label>:3376                                    ; preds = %3342
  %3377 = icmp eq i32 %3316, 8
  br i1 %3377, label %3378, label %3390

; <label>:3378                                    ; preds = %3376
  %3379 = fmul fast float %3321, %3147
  %3380 = fmul fast float %3321, %3148
  %3381 = fadd fast float %3379, %2545
  %3382 = fadd fast float %3380, %2546
  %3383 = call float @dx.op.binary.f32(i32 36, float %2555, float %3149)  ; FMin(a,b)
  %3384 = fsub fast float %3383, %2555
  %3385 = fmul fast float %3384, %3324
  %3386 = fadd fast float %3385, %2555
  %3387 = fsub fast float %3146, %2554
  %3388 = fmul fast float %3327, %3387
  %3389 = fadd fast float %3388, %2554
  br label %3390

; <label>:3390                                    ; preds = %3378, %3376, %3344, %3329, %3307, %2845, %2557, %2544
  %3391 = phi float [ %2545, %3307 ], [ %2545, %2845 ], [ %2545, %2544 ], [ %2545, %2557 ], [ %3334, %3329 ], [ %3347, %3344 ], [ %2545, %3376 ], [ %3381, %3378 ]
  %3392 = phi float [ %2546, %3307 ], [ %2546, %2845 ], [ %2546, %2544 ], [ %2546, %2557 ], [ %3335, %3329 ], [ %3348, %3344 ], [ %2546, %3376 ], [ %3382, %3378 ]
  %3393 = phi float [ %3308, %3307 ], [ %2547, %2845 ], [ %2547, %2544 ], [ %2547, %2557 ], [ %3308, %3329 ], [ %3308, %3344 ], [ %3308, %3376 ], [ %3308, %3378 ]
  %3394 = phi float [ %3309, %3307 ], [ %2548, %2845 ], [ %2548, %2544 ], [ %2548, %2557 ], [ %3309, %3329 ], [ %3309, %3344 ], [ %3309, %3376 ], [ %3309, %3378 ]
  %3395 = phi float [ %3310, %3307 ], [ %2549, %2845 ], [ %2549, %2544 ], [ %2549, %2557 ], [ %3310, %3329 ], [ %3310, %3344 ], [ %3310, %3376 ], [ %3310, %3378 ]
  %3396 = phi float [ %3311, %3307 ], [ %2550, %2845 ], [ %2550, %2544 ], [ %2550, %2557 ], [ %3311, %3329 ], [ %3311, %3344 ], [ %3311, %3376 ], [ %3311, %3378 ]
  %3397 = phi float [ %3312, %3307 ], [ %2551, %2845 ], [ %2551, %2544 ], [ %2551, %2557 ], [ %3312, %3329 ], [ %3312, %3344 ], [ %3312, %3376 ], [ %3312, %3378 ]
  %3398 = phi float [ %3313, %3307 ], [ %2552, %2845 ], [ %2552, %2544 ], [ %2552, %2557 ], [ %3313, %3329 ], [ %3313, %3344 ], [ %3313, %3376 ], [ %3313, %3378 ]
  %3399 = phi float [ %3314, %3307 ], [ %2553, %2845 ], [ %2553, %2544 ], [ %2553, %2557 ], [ %3314, %3329 ], [ %3314, %3344 ], [ %3314, %3376 ], [ %3314, %3378 ]
  %3400 = phi float [ %2554, %3307 ], [ %2554, %2845 ], [ %2554, %2544 ], [ %2554, %2557 ], [ %3341, %3329 ], [ %3375, %3344 ], [ %2554, %3376 ], [ %3389, %3378 ]
  %3401 = phi float [ %2555, %3307 ], [ %2555, %2845 ], [ %2555, %2544 ], [ %2555, %2557 ], [ %3338, %3329 ], [ %3352, %3344 ], [ %2555, %3376 ], [ %3386, %3378 ]
  %3402 = phi float [ %3315, %3307 ], [ %2556, %2845 ], [ %2556, %2544 ], [ %2556, %2557 ], [ %3315, %3329 ], [ %3315, %3344 ], [ %3315, %3376 ], [ %3315, %3378 ]
  %3403 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3404 = extractvalue %dx.types.CBufRet.f32 %3403, 0
  %3405 = call float @dx.op.dot2.f32(i32 54, float %3391, float %3392, float %3391, float %3392)  ; Dot2(ax,ay,bx,by)
  %3406 = fmul fast float %3405, 0x3FE3333340000000
  %3407 = fsub fast float 1.000000e+00, %3406
  %3408 = call float @dx.op.dot3.f32(i32 55, float %3391, float %3392, float %3407, float %3391, float %3392, float %3407)  ; Dot3(ax,ay,az,bx,by,bz)
  %3409 = call float @dx.op.unary.f32(i32 25, float %3408)  ; Rsqrt(value)
  %3410 = fmul fast float %3409, %3391
  %3411 = fmul fast float %3409, %3392
  %3412 = fmul fast float %3407, %3409
  %3413 = fmul fast float %3412, %74
  %3414 = fmul fast float %3412, %75
  %3415 = fmul fast float %3412, %76
  %3416 = fmul fast float %3410, %48
  %3417 = fmul fast float %3410, %49
  %3418 = fmul fast float %3410, %50
  %3419 = fadd fast float %3413, %3416
  %3420 = fadd fast float %3414, %3417
  %3421 = fadd fast float %3415, %3418
  %3422 = fmul fast float %3411, %86
  %3423 = fmul fast float %3411, %87
  %3424 = fmul fast float %3411, %88
  %3425 = fadd fast float %3419, %3422
  %3426 = fadd fast float %3420, %3423
  %3427 = fadd fast float %3421, %3424
  %3428 = call float @dx.op.dot3.f32(i32 55, float %3425, float %3426, float %3427, float %3425, float %3426, float %3427)  ; Dot3(ax,ay,az,bx,by,bz)
  %3429 = call float @dx.op.unary.f32(i32 25, float %3428)  ; Rsqrt(value)
  %3430 = fmul fast float %3425, %3429
  %3431 = fmul fast float %3426, %3429
  %3432 = fmul fast float %3427, %3429
  %3433 = and i32 %44, 1
  %3434 = icmp eq i32 %3433, 0
  br i1 %3434, label %3435, label %3943

; <label>:3435                                    ; preds = %3390
  %3436 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %3437 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %3438 = call float @dx.op.unary.f32(i32 83, float %124)  ; DerivCoarseX(value)
  %3439 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %3440 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %3441 = call float @dx.op.unary.f32(i32 84, float %124)  ; DerivCoarseY(value)
  %3442 = fadd fast float %3436, %122
  %3443 = fadd fast float %3437, %123
  %3444 = fadd fast float %3438, %124
  %3445 = fadd fast float %3439, %122
  %3446 = fadd fast float %3440, %123
  %3447 = fadd fast float %3441, %124
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 0
  %3450 = extractvalue %dx.types.CBufRet.f32 %3448, 1
  %3451 = extractvalue %dx.types.CBufRet.f32 %3448, 2
  %3452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3453 = extractvalue %dx.types.CBufRet.f32 %3452, 2
  %3454 = extractvalue %dx.types.CBufRet.f32 %3452, 3
  %3455 = fmul fast float %3449, %67
  %3456 = fmul fast float %3455, %3453
  %3457 = fmul fast float %3450, %68
  %3458 = fmul fast float %3457, %3454
  %3459 = fptoui float %3456 to i32
  %3460 = fptoui float %3458 to i32
  %3461 = fadd fast float %3449, -1.000000e+00
  %3462 = fadd fast float %3450, -1.000000e+00
  %3463 = fptoui float %3461 to i32
  %3464 = fptoui float %3462 to i32
  %3465 = call i32 @dx.op.binary.i32(i32 40, i32 %3459, i32 %3463)  ; UMin(a,b)
  %3466 = call i32 @dx.op.binary.i32(i32 40, i32 %3460, i32 %3464)  ; UMin(a,b)
  %3467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3468 = extractvalue %dx.types.CBufRet.f32 %3467, 2
  %3469 = extractvalue %dx.types.CBufRet.f32 %3467, 3
  %3470 = fmul fast float %3468, %62
  %3471 = fsub fast float %3470, %3469
  %3472 = fadd fast float %3451, -1.000000e+00
  %3473 = call float @dx.op.binary.f32(i32 36, float %3471, float %3472)  ; FMin(a,b)
  %3474 = fptoui float %3473 to i32
  %3475 = fptoui float %3449 to i32
  %3476 = fptoui float %3450 to i32
  %3477 = mul i32 %3474, %3476
  %3478 = add i32 %3477, %3466
  %3479 = mul i32 %3478, %3475
  %3480 = add i32 %3479, %3465
  %3481 = shl i32 %3480, 2
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = and i32 %3483, 1023
  %3485 = lshr i32 %3483, 10
  %3486 = icmp eq i32 %3484, 0
  br i1 %3486, label %3912, label %3487

; <label>:3487                                    ; preds = %3435
  %3488 = and i32 %3483, 1023
  br label %3489

; <label>:3489                                    ; preds = %3615, %3487
  %3490 = phi float [ %3616, %3615 ], [ 0.000000e+00, %3487 ]
  %3491 = phi float [ %3617, %3615 ], [ %3404, %3487 ]
  %3492 = phi float [ %3618, %3615 ], [ %3402, %3487 ]
  %3493 = phi float [ %3619, %3615 ], [ 0.000000e+00, %3487 ]
  %3494 = phi float [ %3620, %3615 ], [ 0.000000e+00, %3487 ]
  %3495 = phi float [ %3621, %3615 ], [ %3396, %3487 ]
  %3496 = phi float [ %3622, %3615 ], [ %3397, %3487 ]
  %3497 = phi float [ %3623, %3615 ], [ %3398, %3487 ]
  %3498 = phi float [ %3624, %3615 ], [ %3430, %3487 ]
  %3499 = phi float [ %3625, %3615 ], [ %3431, %3487 ]
  %3500 = phi float [ %3626, %3615 ], [ %3432, %3487 ]
  %3501 = phi float [ %3627, %3615 ], [ %3401, %3487 ]
  %3502 = phi float [ %3628, %3615 ], [ %3400, %3487 ]
  %3503 = phi float [ %3629, %3615 ], [ 0.000000e+00, %3487 ]
  %3504 = phi float [ %3630, %3615 ], [ %3399, %3487 ]
  %3505 = phi float [ %3631, %3615 ], [ %3393, %3487 ]
  %3506 = phi float [ %3632, %3615 ], [ %3394, %3487 ]
  %3507 = phi float [ %3633, %3615 ], [ %3395, %3487 ]
  %3508 = phi i32 [ %3565, %3615 ], [ 0, %3487 ]
  %3509 = add nuw nsw i32 %3508, %3485
  %3510 = shl i32 %3509, 2
  %3511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.i32 %3511, 0
  %3513 = shl i32 %3512, 8
  %3514 = or i32 %3513, 48
  %3515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3514, i32 undef)  ; BufferLoad(srv,index,wot)
  %3516 = extractvalue %dx.types.ResRet.f32 %3515, 0
  %3517 = extractvalue %dx.types.ResRet.f32 %3515, 1
  %3518 = extractvalue %dx.types.ResRet.f32 %3515, 2
  %3519 = extractvalue %dx.types.ResRet.f32 %3515, 3
  %3520 = or i32 %3513, 64
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = extractvalue %dx.types.ResRet.i32 %3521, 1
  %3524 = or i32 %3513, 80
  %3525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.f32 %3525, 2
  %3527 = extractvalue %dx.types.ResRet.f32 %3525, 3
  %3528 = or i32 %3513, 96
  %3529 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3528, i32 undef)  ; BufferLoad(srv,index,wot)
  %3530 = extractvalue %dx.types.ResRet.f32 %3529, 0
  %3531 = extractvalue %dx.types.ResRet.f32 %3529, 1
  %3532 = extractvalue %dx.types.ResRet.f32 %3529, 2
  %3533 = extractvalue %dx.types.ResRet.f32 %3529, 3
  %3534 = or i32 %3513, 112
  %3535 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3534, i32 undef)  ; BufferLoad(srv,index,wot)
  %3536 = extractvalue %dx.types.ResRet.f32 %3535, 2
  %3537 = or i32 %3513, 128
  %3538 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3537, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.f32 %3538, 0
  %3540 = extractvalue %dx.types.ResRet.f32 %3538, 1
  %3541 = extractvalue %dx.types.ResRet.f32 %3538, 2
  %3542 = extractvalue %dx.types.ResRet.f32 %3538, 3
  %3543 = or i32 %3513, 144
  %3544 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3543, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.f32 %3544, 0
  %3546 = extractvalue %dx.types.ResRet.f32 %3544, 1
  %3547 = extractvalue %dx.types.ResRet.f32 %3544, 2
  %3548 = extractvalue %dx.types.ResRet.f32 %3544, 3
  %3549 = or i32 %3513, 160
  %3550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.f32 %3550, 0
  %3552 = extractvalue %dx.types.ResRet.f32 %3550, 1
  %3553 = extractvalue %dx.types.ResRet.f32 %3550, 2
  %3554 = extractvalue %dx.types.ResRet.f32 %3550, 3
  %3555 = or i32 %3513, 192
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = or i32 %3513, 208
  %3559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3558, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.f32 %3559, 0
  %3561 = or i32 %3513, 248
  %3562 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3561, i32 undef)  ; BufferLoad(srv,index,wot)
  %3563 = extractvalue %dx.types.ResRet.f32 %3562, 0
  %3564 = extractvalue %dx.types.ResRet.f32 %3562, 1
  %3565 = add nuw nsw i32 %3508, 1
  %3566 = bitcast float %3519 to i32
  %3567 = and i32 %3566, 512
  %3568 = icmp eq i32 %3567, 0
  %3569 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3513, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3573 = extractvalue %dx.types.ResRet.f32 %3569, 3
  %3574 = call float @dx.op.dot4.f32(i32 56, float %3570, float %3571, float %3572, float %3573, float %122, float %123, float %124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3575 = or i32 %3513, 16
  %3576 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3575, i32 undef)  ; BufferLoad(srv,index,wot)
  %3577 = extractvalue %dx.types.ResRet.f32 %3576, 0
  %3578 = extractvalue %dx.types.ResRet.f32 %3576, 1
  %3579 = extractvalue %dx.types.ResRet.f32 %3576, 2
  %3580 = extractvalue %dx.types.ResRet.f32 %3576, 3
  %3581 = call float @dx.op.dot4.f32(i32 56, float %3577, float %3578, float %3579, float %3580, float %122, float %123, float %124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3582 = or i32 %3513, 32
  %3583 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3582, i32 undef)  ; BufferLoad(srv,index,wot)
  %3584 = extractvalue %dx.types.ResRet.f32 %3583, 0
  %3585 = extractvalue %dx.types.ResRet.f32 %3583, 1
  %3586 = extractvalue %dx.types.ResRet.f32 %3583, 2
  %3587 = extractvalue %dx.types.ResRet.f32 %3583, 3
  %3588 = call float @dx.op.dot4.f32(i32 56, float %3584, float %3585, float %3586, float %3587, float %122, float %123, float %124, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3589 = call float @dx.op.unary.f32(i32 27, float %3574)  ; Round_ni(value)
  %3590 = call float @dx.op.unary.f32(i32 6, float %3589)  ; FAbs(value)
  %3591 = call float @dx.op.unary.f32(i32 27, float %3581)  ; Round_ni(value)
  %3592 = call float @dx.op.unary.f32(i32 6, float %3591)  ; FAbs(value)
  %3593 = call float @dx.op.unary.f32(i32 6, float %3588)  ; FAbs(value)
  %3594 = call float @dx.op.unary.f32(i32 27, float %3593)  ; Round_ni(value)
  %3595 = fadd fast float %3592, %3590
  %3596 = fadd fast float %3595, %3594
  %3597 = fcmp fast oeq float %3596, 0.000000e+00
  %3598 = call float @dx.op.dot4.f32(i32 56, float %3570, float %3571, float %3572, float %3573, float %3442, float %3443, float %3444, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3599 = call float @dx.op.dot4.f32(i32 56, float %3577, float %3578, float %3579, float %3580, float %3442, float %3443, float %3444, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3600 = call float @dx.op.dot4.f32(i32 56, float %3570, float %3571, float %3572, float %3573, float %3445, float %3446, float %3447, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3601 = call float @dx.op.dot4.f32(i32 56, float %3577, float %3578, float %3579, float %3580, float %3445, float %3446, float %3447, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3602 = fsub fast float %3598, %3574
  %3603 = fsub fast float %3600, %3574
  %3604 = fsub fast float %3599, %3581
  %3605 = fsub fast float %3601, %3581
  %3606 = call float @dx.op.dot3.f32(i32 55, float %3516, float %3517, float %3518, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %3607 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3608 = extractvalue %dx.types.CBufRet.f32 %3607, 2
  %3609 = fadd fast float %3608, %3606
  %3610 = call float @dx.op.unary.f32(i32 7, float %3609)  ; Saturate(value)
  %3611 = extractvalue %dx.types.CBufRet.f32 %3607, 0
  %3612 = fcmp fast ogt float %3610, %3611
  %3613 = and i1 %3597, %3612
  %3614 = and i1 %3568, %3613
  br i1 %3614, label %3635, label %3615

; <label>:3615                                    ; preds = %3898, %3716, %3635, %3489
  %3616 = phi float [ %3490, %3635 ], [ %3719, %3716 ], [ %3719, %3898 ], [ %3490, %3489 ]
  %3617 = phi float [ %3491, %3635 ], [ %3491, %3716 ], [ %3873, %3898 ], [ %3491, %3489 ]
  %3618 = phi float [ %3492, %3635 ], [ %3492, %3716 ], [ %3871, %3898 ], [ %3492, %3489 ]
  %3619 = phi float [ %3493, %3635 ], [ %3493, %3716 ], [ %3843, %3898 ], [ %3493, %3489 ]
  %3620 = phi float [ %3494, %3635 ], [ %3494, %3716 ], [ %3841, %3898 ], [ %3494, %3489 ]
  %3621 = phi float [ %3495, %3635 ], [ %3495, %3716 ], [ %3908, %3898 ], [ %3495, %3489 ]
  %3622 = phi float [ %3496, %3635 ], [ %3496, %3716 ], [ %3909, %3898 ], [ %3496, %3489 ]
  %3623 = phi float [ %3497, %3635 ], [ %3497, %3716 ], [ %3910, %3898 ], [ %3497, %3489 ]
  %3624 = phi float [ %3498, %3635 ], [ %3498, %3716 ], [ %3822, %3898 ], [ %3498, %3489 ]
  %3625 = phi float [ %3499, %3635 ], [ %3499, %3716 ], [ %3823, %3898 ], [ %3499, %3489 ]
  %3626 = phi float [ %3500, %3635 ], [ %3500, %3716 ], [ %3824, %3898 ], [ %3500, %3489 ]
  %3627 = phi float [ %3501, %3635 ], [ %3501, %3716 ], [ %3851, %3898 ], [ %3501, %3489 ]
  %3628 = phi float [ %3502, %3635 ], [ %3502, %3716 ], [ %3848, %3898 ], [ %3502, %3489 ]
  %3629 = phi float [ %3503, %3635 ], [ %3503, %3716 ], [ %3845, %3898 ], [ %3503, %3489 ]
  %3630 = phi float [ %3504, %3635 ], [ %3504, %3716 ], [ %3839, %3898 ], [ %3504, %3489 ]
  %3631 = phi float [ %3505, %3635 ], [ %3505, %3716 ], [ %3834, %3898 ], [ %3505, %3489 ]
  %3632 = phi float [ %3506, %3635 ], [ %3506, %3716 ], [ %3835, %3898 ], [ %3506, %3489 ]
  %3633 = phi float [ %3507, %3635 ], [ %3507, %3716 ], [ %3836, %3898 ], [ %3507, %3489 ]
  %3634 = icmp eq i32 %3565, %3488
  br i1 %3634, label %3911, label %3489

; <label>:3635                                    ; preds = %3489
  %3636 = extractvalue %dx.types.ResRet.f32 %3535, 3
  %3637 = extractvalue %dx.types.ResRet.f32 %3535, 1
  %3638 = extractvalue %dx.types.ResRet.f32 %3535, 0
  %3639 = extractvalue %dx.types.ResRet.f32 %3525, 1
  %3640 = extractvalue %dx.types.ResRet.f32 %3525, 0
  %3641 = extractvalue %dx.types.ResRet.i32 %3521, 3
  %3642 = extractvalue %dx.types.ResRet.i32 %3521, 2
  %3643 = add i32 %3641, 0
  %3644 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3643, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3645 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3646 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3644, %dx.types.Handle %3645, float %3574, float %3581, float undef, float undef, i32 0, i32 0, i32 undef, float %3602, float %3604, float undef, float %3603, float %3605, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3647 = extractvalue %dx.types.ResRet.f32 %3646, 0
  %3648 = fmul fast float %3647, %3640
  %3649 = fadd fast float %3648, %3639
  %3650 = call float @dx.op.unary.f32(i32 7, float %3649)  ; Saturate(value)
  %3651 = fmul fast float %3574, %3530
  %3652 = call float @dx.op.tertiary.f32(i32 46, float %3531, float %3581, float %3651)  ; FMad(a,b,c)
  %3653 = fadd fast float %3652, %3638
  %3654 = fmul fast float %3574, %3532
  %3655 = call float @dx.op.tertiary.f32(i32 46, float %3533, float %3581, float %3654)  ; FMad(a,b,c)
  %3656 = fadd fast float %3655, %3637
  %3657 = fmul fast float %3602, %3530
  %3658 = call float @dx.op.tertiary.f32(i32 46, float %3531, float %3604, float %3657)  ; FMad(a,b,c)
  %3659 = fmul fast float %3602, %3532
  %3660 = call float @dx.op.tertiary.f32(i32 46, float %3533, float %3604, float %3659)  ; FMad(a,b,c)
  %3661 = fmul fast float %3603, %3530
  %3662 = call float @dx.op.tertiary.f32(i32 46, float %3531, float %3605, float %3661)  ; FMad(a,b,c)
  %3663 = fmul fast float %3603, %3532
  %3664 = call float @dx.op.tertiary.f32(i32 46, float %3533, float %3605, float %3663)  ; FMad(a,b,c)
  %3665 = add i32 %3642, 0
  %3666 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3665, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3667 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3666, %dx.types.Handle %3645, float %3653, float %3656, float undef, float undef, i32 0, i32 0, i32 undef, float %3658, float %3660, float undef, float %3662, float %3664, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3668 = extractvalue %dx.types.ResRet.f32 %3667, 0
  %3669 = and i32 %3566, 1024
  %3670 = icmp ne i32 %3669, 0
  %3671 = fcmp fast ogt float %3668, 0x3FE0101020000000
  %3672 = uitofp i1 %3671 to float
  %3673 = select i1 %3670, float %3672, float %3668
  %3674 = and i32 %3566, 8192
  %3675 = icmp ne i32 %3674, 0
  %3676 = select i1 %3675, float %3636, float 1.000000e+00
  %3677 = fmul fast float %3574, 2.000000e+00
  %3678 = fadd fast float %3677, -1.000000e+00
  %3679 = call float @dx.op.unary.f32(i32 6, float %3678)  ; FAbs(value)
  %3680 = fmul fast float %3679, %3563
  %3681 = fsub fast float %3680, %3563
  %3682 = call float @dx.op.unary.f32(i32 7, float %3681)  ; Saturate(value)
  %3683 = fmul fast float %3581, 2.000000e+00
  %3684 = fadd fast float %3683, -1.000000e+00
  %3685 = call float @dx.op.unary.f32(i32 6, float %3684)  ; FAbs(value)
  %3686 = fmul fast float %3685, %3564
  %3687 = fsub fast float %3686, %3564
  %3688 = call float @dx.op.unary.f32(i32 7, float %3687)  ; Saturate(value)
  %3689 = fmul fast float %3593, %3526
  %3690 = fsub fast float %3689, %3526
  %3691 = call float @dx.op.unary.f32(i32 7, float %3690)  ; Saturate(value)
  %3692 = fmul fast float %3650, %3676
  %3693 = fmul fast float %3692, %3647
  %3694 = fmul fast float %3693, %3682
  %3695 = fmul fast float %3694, %3673
  %3696 = fmul fast float %3695, %3688
  %3697 = fmul fast float %3696, %3691
  %3698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3699 = extractvalue %dx.types.CBufRet.f32 %3698, 1
  %3700 = extractvalue %dx.types.CBufRet.f32 %3698, 0
  %3701 = fsub fast float %3610, %3700
  %3702 = fmul fast float %3701, %3699
  %3703 = call float @dx.op.unary.f32(i32 7, float %3702)  ; Saturate(value)
  %3704 = fmul fast float %3697, %3527
  %3705 = fadd fast float %3697, %3527
  %3706 = fmul fast float %3705, %3536
  %3707 = fsub fast float %3706, %3536
  %3708 = call float @dx.op.unary.f32(i32 7, float %3707)  ; Saturate(value)
  %3709 = and i32 %3566, 128
  %3710 = icmp ne i32 %3709, 0
  %3711 = select i1 %3710, float %3708, float %3704
  %3712 = fmul fast float %3711, %3703
  %3713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3714 = extractvalue %dx.types.CBufRet.f32 %3713, 0
  %3715 = fcmp fast ugt float %3712, %3714
  br i1 %3715, label %3716, label %3615

; <label>:3716                                    ; preds = %3635
  %3717 = select i1 %3675, float %3712, float 0.000000e+00
  %3718 = fadd fast float %3717, %3490
  %3719 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  br i1 %3675, label %3615, label %3720

; <label>:3720                                    ; preds = %3716
  %3721 = and i32 %3566, 4
  %3722 = and i32 %3566, 8
  %3723 = add i32 %3522, 0
  %3724 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3723, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3725 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3726 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3724, %dx.types.Handle %3725, float %3653, float %3656, float undef, float undef, i32 0, i32 0, i32 undef, float %3658, float %3660, float undef, float %3662, float %3664, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3727 = extractvalue %dx.types.ResRet.f32 %3726, 0
  %3728 = extractvalue %dx.types.ResRet.f32 %3726, 1
  %3729 = extractvalue %dx.types.ResRet.f32 %3726, 2
  %3730 = extractvalue %dx.types.ResRet.f32 %3726, 3
  %3731 = bitcast float %3548 to i32
  %3732 = and i32 %3731, 255
  %3733 = uitofp i32 %3732 to float
  %3734 = lshr i32 %3731, 8
  %3735 = and i32 %3734, 255
  %3736 = uitofp i32 %3735 to float
  %3737 = fmul fast float %3730, %3733
  %3738 = fadd fast float %3737, %3736
  %3739 = fmul fast float %3738, 0x3F70101000000000
  %3740 = add i32 %3523, 0
  %3741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3740, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3742 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3741, %dx.types.Handle %3725, float %3653, float %3656, float undef, float undef, i32 0, i32 0, i32 undef, float %3658, float %3660, float undef, float %3662, float %3664, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3743 = extractvalue %dx.types.ResRet.f32 %3742, 0
  %3744 = extractvalue %dx.types.ResRet.f32 %3742, 1
  %3745 = extractvalue %dx.types.ResRet.f32 %3742, 2
  %3746 = extractvalue %dx.types.ResRet.f32 %3742, 3
  %3747 = bitcast float %3542 to i32
  %3748 = and i32 %3747, 255
  %3749 = uitofp i32 %3748 to float
  %3750 = lshr i32 %3747, 8
  %3751 = and i32 %3750, 255
  %3752 = uitofp i32 %3751 to float
  %3753 = lshr i32 %3747, 16
  %3754 = and i32 %3753, 255
  %3755 = uitofp i32 %3754 to float
  %3756 = fmul fast float %3755, 0x3F70101000000000
  %3757 = fmul fast float %3743, %3749
  %3758 = fadd fast float %3757, %3752
  %3759 = fmul fast float %3758, 0x3F70101000000000
  %3760 = fadd fast float %3744, -5.000000e-01
  %3761 = fadd fast float %3746, -5.000000e-01
  %3762 = fmul fast float %3760, %3756
  %3763 = fmul fast float %3761, %3756
  %3764 = fadd fast float %3762, 5.000000e-01
  %3765 = fadd fast float %3763, 5.000000e-01
  %3766 = fmul fast float %3727, %3551
  %3767 = fmul fast float %3728, %3552
  %3768 = fmul fast float %3729, %3553
  %3769 = fmul fast float %3764, 2.000000e+00
  %3770 = fadd fast float %3769, -1.000000e+00
  %3771 = fmul fast float %3765, 2.000000e+00
  %3772 = fadd fast float %3771, -1.000000e+00
  %3773 = fadd fast float %3770, %3772
  %3774 = fmul fast float %3773, 5.000000e-01
  %3775 = fsub fast float %3770, %3772
  %3776 = fmul fast float %3775, 5.000000e-01
  %3777 = call float @dx.op.unary.f32(i32 6, float %3774)  ; FAbs(value)
  %3778 = fsub fast float 1.000000e+00, %3777
  %3779 = call float @dx.op.unary.f32(i32 6, float %3776)  ; FAbs(value)
  %3780 = fsub fast float %3778, %3779
  %3781 = call float @dx.op.dot3.f32(i32 55, float %3774, float %3776, float %3780, float %3774, float %3776, float %3780)  ; Dot3(ax,ay,az,bx,by,bz)
  %3782 = call float @dx.op.unary.f32(i32 25, float %3781)  ; Rsqrt(value)
  %3783 = fmul fast float %3774, %3782
  %3784 = fmul fast float %3776, %3782
  %3785 = fmul fast float %3782, %3780
  %3786 = fmul fast float %3785, %3516
  %3787 = fmul fast float %3785, %3517
  %3788 = fmul fast float %3785, %3518
  %3789 = fmul fast float %3783, %3539
  %3790 = fmul fast float %3783, %3540
  %3791 = fmul fast float %3783, %3541
  %3792 = fadd fast float %3789, %3786
  %3793 = fadd fast float %3790, %3787
  %3794 = fadd fast float %3791, %3788
  %3795 = fmul fast float %3784, %3545
  %3796 = fmul fast float %3784, %3546
  %3797 = fmul fast float %3784, %3547
  %3798 = fadd fast float %3792, %3795
  %3799 = fadd fast float %3793, %3796
  %3800 = fadd fast float %3794, %3797
  %3801 = call float @dx.op.dot3.f32(i32 55, float %3798, float %3799, float %3800, float %3798, float %3799, float %3800)  ; Dot3(ax,ay,az,bx,by,bz)
  %3802 = call float @dx.op.unary.f32(i32 25, float %3801)  ; Rsqrt(value)
  %3803 = fmul fast float %3798, %3802
  %3804 = fmul fast float %3799, %3802
  %3805 = fmul fast float %3800, %3802
  %3806 = icmp ne i32 %3722, 0
  %3807 = select i1 %3806, float 1.000000e+00, float 0.000000e+00
  %3808 = fmul fast float %3712, %3807
  %3809 = and i32 %3566, 1
  %3810 = icmp eq i32 %3809, 0
  br i1 %3810, label %3811, label %3815

; <label>:3811                                    ; preds = %3720
  %3812 = fsub fast float %3803, %3498
  %3813 = fsub fast float %3804, %3499
  %3814 = fsub fast float %3805, %3500
  br label %3815

; <label>:3815                                    ; preds = %3811, %3720
  %3816 = phi float [ %3812, %3811 ], [ %3803, %3720 ]
  %3817 = phi float [ %3813, %3811 ], [ %3804, %3720 ]
  %3818 = phi float [ %3814, %3811 ], [ %3805, %3720 ]
  %3819 = fmul float %3818, %3808
  %3820 = fmul float %3817, %3808
  %3821 = fmul float %3816, %3808
  %3822 = fadd fast float %3821, %3498
  %3823 = fadd fast float %3820, %3499
  %3824 = fadd fast float %3819, %3500
  %3825 = icmp ne i32 %3721, 0
  %3826 = select i1 %3825, float 1.000000e+00, float 0.000000e+00
  %3827 = fmul fast float %3712, %3826
  %3828 = fsub fast float %3766, %3505
  %3829 = fsub fast float %3767, %3506
  %3830 = fsub fast float %3768, %3507
  %3831 = fmul fast float %3828, %3827
  %3832 = fmul fast float %3829, %3827
  %3833 = fmul fast float %3830, %3827
  %3834 = fadd fast float %3831, %3505
  %3835 = fadd fast float %3832, %3506
  %3836 = fadd fast float %3833, %3507
  %3837 = fsub fast float %3739, %3504
  %3838 = fmul fast float %3837, %3827
  %3839 = fadd fast float %3838, %3504
  %3840 = fmul fast float %3827, %3494
  %3841 = fsub fast float %3494, %3840
  %3842 = fmul fast float %3827, %3493
  %3843 = fsub fast float %3493, %3842
  %3844 = fadd fast float %3712, %3503
  %3845 = call float @dx.op.unary.f32(i32 7, float %3844)  ; Saturate(value)
  %3846 = fsub fast float %3759, %3502
  %3847 = fmul fast float %3846, %3808
  %3848 = fadd fast float %3847, %3502
  %3849 = fsub fast float %3745, %3501
  %3850 = fmul fast float %3849, %3808
  %3851 = fadd fast float %3850, %3501
  %3852 = call float @dx.op.dot3.f32(i32 55, float %3766, float %3767, float %3768, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3853 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3854 = extractvalue %dx.types.CBufRet.f32 %3853, 0
  %3855 = extractvalue %dx.types.CBufRet.f32 %3853, 1
  %3856 = fmul fast float %3855, %3852
  %3857 = fadd fast float %3856, %3854
  %3858 = call float @dx.op.unary.f32(i32 7, float %3857)  ; Saturate(value)
  %3859 = bitcast float %3554 to i32
  %3860 = and i32 %3859, 65535
  %3861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3860)  ; LegacyF16ToF32(value)
  %3862 = lshr i32 %3859, 16
  %3863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3862)  ; LegacyF16ToF32(value)
  %3864 = fcmp fast oge float %3861, 0.000000e+00
  %3865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3866 = extractvalue %dx.types.CBufRet.f32 %3865, 0
  %3867 = select i1 %3864, float %3861, float %3866
  %3868 = fadd fast float %3867, %3863
  %3869 = fsub fast float %3858, %3492
  %3870 = fmul fast float %3869, %3712
  %3871 = fadd fast float %3870, %3492
  %3872 = fmul fast float %3868, %3712
  %3873 = call float @dx.op.binary.f32(i32 35, float %3491, float %3872)  ; FMax(a,b)
  %3874 = and i32 %3566, 16
  %3875 = icmp eq i32 %3874, 0
  br i1 %3875, label %3898, label %3876

; <label>:3876                                    ; preds = %3815
  %3877 = bitcast float %3560 to i32
  %3878 = add i32 %3557, 0
  %3879 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3878, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3880 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3879, %dx.types.Handle %3725, float %3653, float %3656, float undef, float undef, i32 0, i32 0, i32 undef, float %3658, float %3660, float undef, float %3662, float %3664, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3881 = extractvalue %dx.types.ResRet.f32 %3880, 0
  %3882 = extractvalue %dx.types.ResRet.f32 %3880, 1
  %3883 = extractvalue %dx.types.ResRet.f32 %3880, 2
  %3884 = and i32 %3877, 65535
  %3885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3884)  ; LegacyF16ToF32(value)
  %3886 = fmul fast float %3881, %3551
  %3887 = fmul fast float %3882, %3552
  %3888 = fmul fast float %3883, %3553
  %3889 = and i32 %3566, 16384
  %3890 = icmp ne i32 %3889, 0
  %3891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3892 = extractvalue %dx.types.CBufRet.f32 %3891, 0
  %3893 = select i1 %3890, float %3892, float 1.000000e+00
  %3894 = fmul fast float %3893, %3885
  %3895 = fmul fast float %3886, %3894
  %3896 = fmul fast float %3887, %3894
  %3897 = fmul fast float %3888, %3894
  br label %3898

; <label>:3898                                    ; preds = %3876, %3815
  %3899 = phi float [ %3895, %3876 ], [ 0.000000e+00, %3815 ]
  %3900 = phi float [ %3896, %3876 ], [ 0.000000e+00, %3815 ]
  %3901 = phi float [ %3897, %3876 ], [ 0.000000e+00, %3815 ]
  %3902 = fsub fast float %3899, %3495
  %3903 = fsub fast float %3900, %3496
  %3904 = fsub fast float %3901, %3497
  %3905 = fmul fast float %3902, %3712
  %3906 = fmul fast float %3903, %3712
  %3907 = fmul fast float %3904, %3712
  %3908 = fadd fast float %3905, %3495
  %3909 = fadd fast float %3906, %3496
  %3910 = fadd fast float %3907, %3497
  br label %3615

; <label>:3911                                    ; preds = %3615
  br label %3912

; <label>:3912                                    ; preds = %3911, %3435
  %3913 = phi float [ 0.000000e+00, %3435 ], [ %3616, %3911 ]
  %3914 = phi float [ %3404, %3435 ], [ %3617, %3911 ]
  %3915 = phi float [ %3402, %3435 ], [ %3618, %3911 ]
  %3916 = phi float [ 0.000000e+00, %3435 ], [ %3619, %3911 ]
  %3917 = phi float [ 0.000000e+00, %3435 ], [ %3620, %3911 ]
  %3918 = phi float [ %3396, %3435 ], [ %3621, %3911 ]
  %3919 = phi float [ %3397, %3435 ], [ %3622, %3911 ]
  %3920 = phi float [ %3398, %3435 ], [ %3623, %3911 ]
  %3921 = phi float [ %3430, %3435 ], [ %3624, %3911 ]
  %3922 = phi float [ %3431, %3435 ], [ %3625, %3911 ]
  %3923 = phi float [ %3432, %3435 ], [ %3626, %3911 ]
  %3924 = phi float [ %3401, %3435 ], [ %3627, %3911 ]
  %3925 = phi float [ %3400, %3435 ], [ %3628, %3911 ]
  %3926 = phi float [ 0.000000e+00, %3435 ], [ %3629, %3911 ]
  %3927 = phi float [ %3399, %3435 ], [ %3630, %3911 ]
  %3928 = phi float [ %3393, %3435 ], [ %3631, %3911 ]
  %3929 = phi float [ %3394, %3435 ], [ %3632, %3911 ]
  %3930 = phi float [ %3395, %3435 ], [ %3633, %3911 ]
  %3931 = call float @dx.op.dot3.f32(i32 55, float %3921, float %3922, float %3923, float %3921, float %3922, float %3923)  ; Dot3(ax,ay,az,bx,by,bz)
  %3932 = call float @dx.op.unary.f32(i32 25, float %3931)  ; Rsqrt(value)
  %3933 = fmul fast float %3932, %3921
  %3934 = fmul fast float %3932, %3922
  %3935 = fmul fast float %3932, %3923
  %3936 = fadd fast float %3926, %861
  %3937 = call float @dx.op.unary.f32(i32 7, float %3936)  ; Saturate(value)
  %3938 = call float @dx.op.dot3.f32(i32 55, float %3933, float %3934, float %3935, float %3933, float %3934, float %3935)  ; Dot3(ax,ay,az,bx,by,bz)
  %3939 = call float @dx.op.unary.f32(i32 25, float %3938)  ; Rsqrt(value)
  %3940 = fmul fast float %3939, %3933
  %3941 = fmul fast float %3939, %3934
  %3942 = fmul fast float %3939, %3935
  br label %3943

; <label>:3943                                    ; preds = %3912, %3390
  %3944 = phi float [ %3928, %3912 ], [ %3393, %3390 ]
  %3945 = phi float [ %3929, %3912 ], [ %3394, %3390 ]
  %3946 = phi float [ %3930, %3912 ], [ %3395, %3390 ]
  %3947 = phi float [ %3940, %3912 ], [ %3430, %3390 ]
  %3948 = phi float [ %3941, %3912 ], [ %3431, %3390 ]
  %3949 = phi float [ %3942, %3912 ], [ %3432, %3390 ]
  %3950 = phi float [ %3918, %3912 ], [ %3396, %3390 ]
  %3951 = phi float [ %3919, %3912 ], [ %3397, %3390 ]
  %3952 = phi float [ %3920, %3912 ], [ %3398, %3390 ]
  %3953 = phi float [ %3927, %3912 ], [ %3399, %3390 ]
  %3954 = phi float [ %3937, %3912 ], [ %861, %3390 ]
  %3955 = phi float [ %3925, %3912 ], [ %3400, %3390 ]
  %3956 = phi float [ %3924, %3912 ], [ %3401, %3390 ]
  %3957 = phi float [ %3917, %3912 ], [ 0.000000e+00, %3390 ]
  %3958 = phi float [ %3916, %3912 ], [ 0.000000e+00, %3390 ]
  %3959 = phi float [ %3913, %3912 ], [ 0.000000e+00, %3390 ]
  %3960 = phi float [ %3914, %3912 ], [ %3404, %3390 ]
  %3961 = phi float [ %3915, %3912 ], [ %3402, %3390 ]
  %3962 = fadd fast float %3953, 0xBFB99999A0000000
  %3963 = call float @dx.op.unary.f32(i32 7, float %3962)  ; Saturate(value)
  %3964 = fmul fast float %3963, 0x3FF1C71C80000000
  %3965 = call float @dx.op.binary.f32(i32 36, float %3953, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3966 = fsub fast float 1.000000e+00, %3964
  %3967 = call float @dx.op.unary.f32(i32 7, float %3966)  ; Saturate(value)
  %3968 = fmul fast float %3967, %3944
  %3969 = fmul fast float %3967, %3945
  %3970 = fmul fast float %3967, %3946
  %3971 = call float @dx.op.unary.f32(i32 7, float %3968)  ; Saturate(value)
  %3972 = call float @dx.op.unary.f32(i32 7, float %3969)  ; Saturate(value)
  %3973 = call float @dx.op.unary.f32(i32 7, float %3970)  ; Saturate(value)
  %3974 = fmul fast float %3964, %3944
  %3975 = fmul fast float %3964, %3945
  %3976 = fmul fast float %3964, %3946
  %3977 = fadd fast float %3974, %3965
  %3978 = fadd fast float %3975, %3965
  %3979 = fadd fast float %3976, %3965
  %3980 = call float @dx.op.unary.f32(i32 7, float %3977)  ; Saturate(value)
  %3981 = call float @dx.op.unary.f32(i32 7, float %3978)  ; Saturate(value)
  %3982 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3983 = call float @dx.op.unary.f32(i32 7, float %3955)  ; Saturate(value)
  %3984 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3985 = extractvalue %dx.types.CBufRet.i32 %3984, 3
  %3986 = and i32 %3985, 8
  %3987 = icmp ne i32 %3986, 0
  %3988 = call float @dx.op.binary.f32(i32 35, float %3971, float %3944)  ; FMax(a,b)
  %3989 = call float @dx.op.binary.f32(i32 35, float %3972, float %3944)  ; FMax(a,b)
  %3990 = call float @dx.op.binary.f32(i32 35, float %3973, float %3944)  ; FMax(a,b)
  %3991 = call float @dx.op.dot3.f32(i32 55, float %3971, float %3972, float %3973, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3992 = select i1 %164, float %3944, float %3971
  %3993 = select i1 %164, float %3991, float %3972
  %3994 = select i1 %164, float 1.000000e+00, float %3973
  %3995 = select i1 %3987, float %3988, float %3992
  %3996 = select i1 %3987, float %3989, float %3993
  %3997 = select i1 %3987, float %3990, float %3994
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 0
  %4000 = extractvalue %dx.types.CBufRet.f32 %3998, 1
  %4001 = extractvalue %dx.types.CBufRet.f32 %3998, 2
  %4002 = fadd fast float %3999, %122
  %4003 = fadd fast float %4000, %123
  %4004 = fadd fast float %4001, %124
  %4005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4006 = extractvalue %dx.types.CBufRet.f32 %4005, 0
  %4007 = extractvalue %dx.types.CBufRet.f32 %4005, 1
  %4008 = fsub fast float %4002, %4006
  %4009 = fsub fast float %4003, %4007
  %4010 = fmul fast float %4008, %4008
  %4011 = fmul fast float %4009, %4009
  %4012 = fadd fast float %4010, %4011
  %4013 = call float @dx.op.unary.f32(i32 24, float %4012)  ; Sqrt(value)
  %4014 = extractvalue %dx.types.CBufRet.f32 %4005, 2
  %4015 = fcmp fast olt float %4013, %4014
  br i1 %4015, label %4016, label %4083

; <label>:4016                                    ; preds = %3943
  %4017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4017, 0
  %4019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.f32 %4019, 0
  %4021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4022 = extractvalue %dx.types.CBufRet.f32 %4021, 0
  %4023 = extractvalue %dx.types.CBufRet.f32 %4017, 1
  %4024 = extractvalue %dx.types.CBufRet.f32 %4019, 1
  %4025 = extractvalue %dx.types.CBufRet.f32 %4021, 1
  %4026 = extractvalue %dx.types.CBufRet.f32 %4017, 3
  %4027 = extractvalue %dx.types.CBufRet.f32 %4019, 3
  %4028 = extractvalue %dx.types.CBufRet.f32 %4021, 3
  %4029 = fadd fast float %4026, %4002
  %4030 = fadd fast float %4027, %4003
  %4031 = fadd fast float %4028, %4004
  %4032 = fmul fast float %4029, %4018
  %4033 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4020, float %4032)  ; FMad(a,b,c)
  %4034 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %4022, float %4033)  ; FMad(a,b,c)
  %4035 = fmul fast float %4029, %4023
  %4036 = call float @dx.op.tertiary.f32(i32 46, float %4030, float %4024, float %4035)  ; FMad(a,b,c)
  %4037 = call float @dx.op.tertiary.f32(i32 46, float %4031, float %4025, float %4036)  ; FMad(a,b,c)
  %4038 = fsub fast float %4034, %4026
  %4039 = fsub fast float %4037, %4027
  %4040 = fsub fast float %4038, %4006
  %4041 = fadd fast float %4040, %4014
  %4042 = fsub fast float %4039, %4007
  %4043 = fadd fast float %4042, %4014
  %4044 = extractvalue %dx.types.CBufRet.f32 %4005, 3
  %4045 = fmul fast float %4041, %4044
  %4046 = fmul fast float %4043, %4044
  %4047 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4048 = call float @dx.op.unary.f32(i32 7, float %4046)  ; Saturate(value)
  %4049 = fsub fast float 1.000000e+00, %4047
  %4050 = fsub fast float 1.000000e+00, %4048
  %4051 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %38, float %4049, float %4050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4052 = extractvalue %dx.types.ResRet.f32 %4051, 0
  %4053 = fcmp fast ugt float %4052, 0.000000e+00
  br i1 %4053, label %4054, label %4357

; <label>:4054                                    ; preds = %4016
  %4055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4056 = extractvalue %dx.types.CBufRet.f32 %4055, 2
  %4057 = fmul fast float %4056, %4052
  %4058 = extractvalue %dx.types.CBufRet.f32 %4055, 3
  %4059 = fadd fast float %4058, %4057
  %4060 = extractvalue %dx.types.CBufRet.f32 %4021, 2
  %4061 = fadd fast float %4059, %4028
  %4062 = fmul fast float %4034, %4022
  %4063 = call float @dx.op.tertiary.f32(i32 46, float %4037, float %4025, float %4062)  ; FMad(a,b,c)
  %4064 = call float @dx.op.tertiary.f32(i32 46, float %4061, float %4060, float %4063)  ; FMad(a,b,c)
  %4065 = fsub fast float %4064, %4028
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 2
  %4068 = fsub fast float %4065, %4067
  %4069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %38, float %4049, float %4050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4070 = extractvalue %dx.types.ResRet.f32 %4069, 0
  %4071 = extractvalue %dx.types.ResRet.f32 %4069, 1
  %4072 = extractvalue %dx.types.ResRet.f32 %4069, 2
  %4073 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %38, float %4049, float %4050, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4074 = extractvalue %dx.types.ResRet.f32 %4073, 0
  %4075 = extractvalue %dx.types.ResRet.f32 %4073, 1
  %4076 = extractvalue %dx.types.ResRet.f32 %4073, 2
  %4077 = fadd fast float %4074, %4070
  %4078 = fmul fast float %4077, 0x3F847AE140000000
  %4079 = fadd fast float %4075, %4071
  %4080 = fmul fast float %4079, 0x3F847AE140000000
  %4081 = fadd fast float %4076, %4072
  %4082 = fmul fast float %4081, 0x3F847AE140000000
  br label %4357

; <label>:4083                                    ; preds = %3943
  %4084 = and i32 %140, 1
  %4085 = icmp eq i32 %4084, 0
  br i1 %4085, label %4357, label %4086

; <label>:4086                                    ; preds = %4083
  %4087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4088 = extractvalue %dx.types.CBufRet.f32 %4087, 0
  %4089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4090 = extractvalue %dx.types.CBufRet.f32 %4089, 0
  %4091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4092 = extractvalue %dx.types.CBufRet.f32 %4091, 0
  %4093 = extractvalue %dx.types.CBufRet.f32 %4087, 1
  %4094 = extractvalue %dx.types.CBufRet.f32 %4089, 1
  %4095 = extractvalue %dx.types.CBufRet.f32 %4091, 1
  %4096 = extractvalue %dx.types.CBufRet.f32 %4087, 3
  %4097 = extractvalue %dx.types.CBufRet.f32 %4089, 3
  %4098 = extractvalue %dx.types.CBufRet.f32 %4091, 3
  %4099 = fadd fast float %4096, %4002
  %4100 = fadd fast float %4097, %4003
  %4101 = fadd fast float %4098, %4004
  %4102 = fmul fast float %4099, %4088
  %4103 = call float @dx.op.tertiary.f32(i32 46, float %4100, float %4090, float %4102)  ; FMad(a,b,c)
  %4104 = call float @dx.op.tertiary.f32(i32 46, float %4101, float %4092, float %4103)  ; FMad(a,b,c)
  %4105 = fmul fast float %4099, %4093
  %4106 = call float @dx.op.tertiary.f32(i32 46, float %4100, float %4094, float %4105)  ; FMad(a,b,c)
  %4107 = call float @dx.op.tertiary.f32(i32 46, float %4101, float %4095, float %4106)  ; FMad(a,b,c)
  %4108 = fsub fast float %4104, %4096
  %4109 = fsub fast float %4107, %4097
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 0
  %4112 = extractvalue %dx.types.CBufRet.f32 %4110, 1
  %4113 = extractvalue %dx.types.CBufRet.f32 %4110, 2
  %4114 = extractvalue %dx.types.CBufRet.f32 %4110, 3
  %4115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4116 = extractvalue %dx.types.CBufRet.f32 %4115, 3
  %4117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.i32 %4117, 0
  %4119 = extractvalue %dx.types.CBufRet.i32 %4117, 1
  %4120 = udiv i32 %4119, %4118
  %4121 = fsub fast float %4108, %4111
  %4122 = fsub fast float %4109, %4112
  %4123 = call float @dx.op.binary.f32(i32 35, float %4121, float 0.000000e+00)  ; FMax(a,b)
  %4124 = call float @dx.op.binary.f32(i32 35, float %4122, float 0.000000e+00)  ; FMax(a,b)
  %4125 = call float @dx.op.binary.f32(i32 36, float %4123, float %4113)  ; FMin(a,b)
  %4126 = call float @dx.op.binary.f32(i32 36, float %4124, float %4114)  ; FMin(a,b)
  %4127 = add i32 %4118, -1
  %4128 = add i32 %4120, -1
  %4129 = fmul fast float %4125, %4116
  %4130 = fmul fast float %4126, %4116
  %4131 = fptoui float %4129 to i32
  %4132 = fptoui float %4130 to i32
  %4133 = call i32 @dx.op.binary.i32(i32 40, i32 %4131, i32 %4127)  ; UMin(a,b)
  %4134 = call i32 @dx.op.binary.i32(i32 40, i32 %4132, i32 %4128)  ; UMin(a,b)
  %4135 = mul i32 %4134, %4118
  %4136 = add i32 %4135, %4133
  %4137 = shl i32 %4136, 2
  %4138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4137, i32 undef)  ; BufferLoad(srv,index,wot)
  %4139 = extractvalue %dx.types.ResRet.i32 %4138, 0
  %4140 = icmp eq i32 %4139, -1
  br i1 %4140, label %4357, label %4141

; <label>:4141                                    ; preds = %4086
  %4142 = mul i32 %4139, 148
  %4143 = add i32 %4142, 4
  %4144 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4143, i32 undef)  ; BufferLoad(srv,index,wot)
  %4145 = extractvalue %dx.types.ResRet.f32 %4144, 0
  %4146 = add i32 %4142, 8
  %4147 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4146, i32 undef)  ; BufferLoad(srv,index,wot)
  %4148 = extractvalue %dx.types.ResRet.f32 %4147, 0
  %4149 = add i32 %4142, 36
  %4150 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4149, i32 undef)  ; BufferLoad(srv,index,wot)
  %4151 = extractvalue %dx.types.ResRet.f32 %4150, 0
  %4152 = add i32 %4142, 60
  %4153 = add i32 %4142, 92
  %4154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4153, i32 undef)  ; BufferLoad(srv,index,wot)
  %4155 = extractvalue %dx.types.ResRet.i32 %4154, 0
  %4156 = add i32 %4142, 116
  %4157 = fsub fast float %4108, %4145
  %4158 = fsub fast float %4109, %4148
  %4159 = fmul fast float %4116, %4157
  %4160 = fmul fast float %4116, %4158
  %4161 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4162 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4163 = fsub fast float 1.000000e+00, %4162
  %4164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4165 = extractvalue %dx.types.CBufRet.f32 %4164, 2
  %4166 = call float @dx.op.unary.f32(i32 83, float %4161)  ; DerivCoarseX(value)
  %4167 = call float @dx.op.unary.f32(i32 83, float %4163)  ; DerivCoarseX(value)
  %4168 = call float @dx.op.unary.f32(i32 84, float %4161)  ; DerivCoarseY(value)
  %4169 = call float @dx.op.unary.f32(i32 84, float %4163)  ; DerivCoarseY(value)
  %4170 = fmul fast float %4166, %4165
  %4171 = fmul fast float %4167, %4165
  %4172 = fmul fast float %4168, %4165
  %4173 = fmul fast float %4169, %4165
  %4174 = call float @dx.op.dot2.f32(i32 54, float %4172, float %4173, float %4172, float %4173)  ; Dot2(ax,ay,bx,by)
  %4175 = call float @dx.op.dot2.f32(i32 54, float %4170, float %4171, float %4170, float %4171)  ; Dot2(ax,ay,bx,by)
  %4176 = call float @dx.op.binary.f32(i32 35, float %4175, float %4174)  ; FMax(a,b)
  %4177 = call float @dx.op.unary.f32(i32 23, float %4176)  ; Log(value)
  %4178 = fmul fast float %4177, 5.000000e-01
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 1
  %4181 = fadd fast float %4180, %4178
  %4182 = call float @dx.op.binary.f32(i32 35, float %4181, float 0.000000e+00)  ; FMax(a,b)
  %4183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4184 = extractvalue %dx.types.CBufRet.f32 %4183, 3
  %4185 = fadd fast float %4184, %4182
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 3
  %4188 = fadd fast float %4185, %4187
  %4189 = add i32 %4155, 0
  %4190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4189, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4191 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4190, i32 0)  ; GetDimensions(handle,mipLevel)
  %4192 = extractvalue %dx.types.Dimensions %4191, 0
  %4193 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4192)  ; FirstbitLo(value)
  %4194 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.i32 %4194, 1
  %4196 = sub nsw i32 %4195, %4193
  %4197 = sitofp i32 %4196 to float
  %4198 = fsub fast float %4188, %4197
  %4199 = call float @dx.op.binary.f32(i32 35, float %4198, float 0.000000e+00)  ; FMax(a,b)
  %4200 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4190, %dx.types.Handle %36, float %4161, float %4163, float %4151, float undef, i32 0, i32 0, i32 undef, float %4199)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = fcmp ule float %4201, 0x3FE0101020000000
  %4203 = extractvalue %dx.types.CBufRet.i32 %4194, 0
  %4204 = and i32 %4203, 128
  %4205 = icmp ne i32 %4204, 0
  %4206 = and i1 %4202, %4205
  br i1 %4206, label %4357, label %4207

; <label>:4207                                    ; preds = %4141
  %4208 = add i32 %4142, 20
  %4209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4208, i32 undef)  ; BufferLoad(srv,index,wot)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = add i32 %4142, 24
  %4212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4211, i32 undef)  ; BufferLoad(srv,index,wot)
  %4213 = extractvalue %dx.types.ResRet.f32 %4212, 0
  %4214 = add i32 %4142, 40
  %4215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = add i32 %4142, 96
  %4218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4217, i32 undef)  ; BufferLoad(srv,index,wot)
  %4219 = extractvalue %dx.types.ResRet.i32 %4218, 0
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 2
  %4222 = fmul fast float %4221, %4161
  %4223 = fmul fast float %4221, %4163
  %4224 = extractvalue %dx.types.CBufRet.f32 %4220, 3
  %4225 = fadd fast float %4222, %4224
  %4226 = fadd fast float %4223, %4224
  %4227 = add i32 %4219, 0
  %4228 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4227, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4229 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4228, i32 0)  ; GetDimensions(handle,mipLevel)
  %4230 = extractvalue %dx.types.Dimensions %4229, 0
  %4231 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4230)  ; FirstbitLo(value)
  %4232 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4233 = extractvalue %dx.types.CBufRet.i32 %4232, 1
  %4234 = sub nsw i32 %4233, %4231
  %4235 = sitofp i32 %4234 to float
  %4236 = fsub fast float %4185, %4235
  %4237 = call float @dx.op.binary.f32(i32 35, float %4236, float 0.000000e+00)  ; FMax(a,b)
  %4238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4228, %dx.types.Handle %36, float %4225, float %4226, float %4216, float undef, i32 0, i32 0, i32 undef, float %4237)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4239 = extractvalue %dx.types.ResRet.f32 %4238, 0
  %4240 = fmul fast float %4239, %4210
  %4241 = fadd fast float %4240, %4213
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 0
  %4244 = extractvalue %dx.types.CBufRet.f32 %4242, 1
  %4245 = extractvalue %dx.types.CBufRet.f32 %4242, 2
  %4246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4247 = extractvalue %dx.types.CBufRet.f32 %4246, 3
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 3
  %4250 = extractvalue %dx.types.CBufRet.f32 %4242, 3
  %4251 = fadd fast float %4247, %4108
  %4252 = fadd fast float %4249, %4109
  %4253 = fadd fast float %4241, %4250
  %4254 = fmul fast float %4251, %4243
  %4255 = call float @dx.op.tertiary.f32(i32 46, float %4252, float %4244, float %4254)  ; FMad(a,b,c)
  %4256 = call float @dx.op.tertiary.f32(i32 46, float %4253, float %4245, float %4255)  ; FMad(a,b,c)
  %4257 = fsub fast float %4256, %4250
  %4258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4259 = extractvalue %dx.types.CBufRet.f32 %4258, 2
  %4260 = fsub fast float %4257, %4259
  %4261 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4262 = extractvalue %dx.types.CBufRet.i32 %4261, 0
  %4263 = call i32 @dx.op.binary.i32(i32 40, i32 %4139, i32 %4262)  ; UMin(a,b)
  %4264 = mul i32 %4263, 36
  %4265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4264, i32 undef)  ; BufferLoad(srv,index,wot)
  %4266 = extractvalue %dx.types.ResRet.i32 %4265, 0
  %4267 = add i32 %4264, 4
  %4268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4269 = extractvalue %dx.types.CBufRet.f32 %4268, 0
  %4270 = fmul fast float %4269, %4161
  %4271 = fmul fast float %4269, %4163
  %4272 = extractvalue %dx.types.CBufRet.f32 %4268, 1
  %4273 = fadd fast float %4270, %4272
  %4274 = fadd fast float %4271, %4272
  %4275 = icmp eq i32 %4266, 0
  br i1 %4275, label %4344, label %4276

; <label>:4276                                    ; preds = %4207
  br label %4277

; <label>:4277                                    ; preds = %4334, %4276
  %4278 = phi float [ %4335, %4334 ], [ 0.000000e+00, %4276 ]
  %4279 = phi float [ %4336, %4334 ], [ 0.000000e+00, %4276 ]
  %4280 = phi float [ %4337, %4334 ], [ 0.000000e+00, %4276 ]
  %4281 = phi float [ %4338, %4334 ], [ 0.000000e+00, %4276 ]
  %4282 = phi float [ %4339, %4334 ], [ 0.000000e+00, %4276 ]
  %4283 = phi float [ %4340, %4334 ], [ 0.000000e+00, %4276 ]
  %4284 = phi i32 [ %4341, %4334 ], [ 0, %4276 ]
  %4285 = shl i32 %4284, 2
  %4286 = add i32 %4152, %4285
  %4287 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4286, i32 undef)  ; BufferLoad(srv,index,wot)
  %4288 = extractvalue %dx.types.ResRet.f32 %4287, 0
  %4289 = add i32 %4156, %4285
  %4290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4289, i32 undef)  ; BufferLoad(srv,index,wot)
  %4291 = extractvalue %dx.types.ResRet.i32 %4290, 0
  %4292 = add i32 %4291, 0
  %4293 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4292, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4294 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4293, i32 0)  ; GetDimensions(handle,mipLevel)
  %4295 = extractvalue %dx.types.Dimensions %4294, 0
  %4296 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4295)  ; FirstbitLo(value)
  %4297 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.i32 %4297, 1
  %4299 = sub nsw i32 %4298, %4296
  %4300 = sitofp i32 %4299 to float
  %4301 = fsub fast float %4185, %4300
  %4302 = call float @dx.op.binary.f32(i32 35, float %4301, float 0.000000e+00)  ; FMax(a,b)
  %4303 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4293, %dx.types.Handle %36, float %4273, float %4274, float %4288, float undef, i32 0, i32 0, i32 undef, float %4302)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4304 = extractvalue %dx.types.ResRet.f32 %4303, 0
  %4305 = fcmp fast ogt float %4304, 0.000000e+00
  br i1 %4305, label %4306, label %4334

; <label>:4306                                    ; preds = %4277
  %4307 = add i32 %4267, %4285
  %4308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4307, i32 undef)  ; BufferLoad(srv,index,wot)
  %4309 = extractvalue %dx.types.ResRet.i32 %4308, 0
  %4310 = and i32 %4309, 32767
  %4311 = mul nuw nsw i32 %4310, 928
  %4312 = add nuw nsw i32 %4311, 48
  %4313 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4312, i32 undef)  ; BufferLoad(srv,index,wot)
  %4314 = extractvalue %dx.types.ResRet.f32 %4313, 0
  %4315 = extractvalue %dx.types.ResRet.f32 %4313, 1
  %4316 = extractvalue %dx.types.ResRet.f32 %4313, 2
  %4317 = add nuw nsw i32 %4311, 60
  %4318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4317, i32 undef)  ; BufferLoad(srv,index,wot)
  %4319 = extractvalue %dx.types.ResRet.f32 %4318, 0
  %4320 = extractvalue %dx.types.ResRet.f32 %4318, 1
  %4321 = extractvalue %dx.types.ResRet.f32 %4318, 2
  %4322 = fmul fast float %4314, %4304
  %4323 = fmul fast float %4315, %4304
  %4324 = fmul fast float %4316, %4304
  %4325 = fadd fast float %4322, %4278
  %4326 = fadd fast float %4323, %4279
  %4327 = fadd fast float %4324, %4280
  %4328 = fmul fast float %4319, %4304
  %4329 = fmul fast float %4320, %4304
  %4330 = fmul fast float %4321, %4304
  %4331 = fadd fast float %4328, %4281
  %4332 = fadd fast float %4329, %4282
  %4333 = fadd fast float %4330, %4283
  br label %4334

; <label>:4334                                    ; preds = %4306, %4277
  %4335 = phi float [ %4325, %4306 ], [ %4278, %4277 ]
  %4336 = phi float [ %4326, %4306 ], [ %4279, %4277 ]
  %4337 = phi float [ %4327, %4306 ], [ %4280, %4277 ]
  %4338 = phi float [ %4331, %4306 ], [ %4281, %4277 ]
  %4339 = phi float [ %4332, %4306 ], [ %4282, %4277 ]
  %4340 = phi float [ %4333, %4306 ], [ %4283, %4277 ]
  %4341 = add nuw i32 %4284, 1
  %4342 = icmp eq i32 %4341, %4266
  br i1 %4342, label %4343, label %4277

; <label>:4343                                    ; preds = %4334
  br label %4344

; <label>:4344                                    ; preds = %4343, %4207
  %4345 = phi float [ 0.000000e+00, %4207 ], [ %4335, %4343 ]
  %4346 = phi float [ 0.000000e+00, %4207 ], [ %4336, %4343 ]
  %4347 = phi float [ 0.000000e+00, %4207 ], [ %4337, %4343 ]
  %4348 = phi float [ 0.000000e+00, %4207 ], [ %4338, %4343 ]
  %4349 = phi float [ 0.000000e+00, %4207 ], [ %4339, %4343 ]
  %4350 = phi float [ 0.000000e+00, %4207 ], [ %4340, %4343 ]
  %4351 = fadd fast float %4348, %4345
  %4352 = fmul fast float %4351, 0x3F847AE140000000
  %4353 = fadd fast float %4349, %4346
  %4354 = fmul fast float %4353, 0x3F847AE140000000
  %4355 = fadd fast float %4350, %4347
  %4356 = fmul fast float %4355, 0x3F847AE140000000
  br label %4357

; <label>:4357                                    ; preds = %4344, %4141, %4086, %4083, %4054, %4016
  %4358 = phi float [ %4068, %4054 ], [ -1.310720e+05, %4016 ], [ %4260, %4344 ], [ -1.310720e+05, %4086 ], [ -1.310720e+05, %4141 ], [ -1.310720e+05, %4083 ]
  %4359 = phi float [ %4078, %4054 ], [ 0.000000e+00, %4016 ], [ %4352, %4344 ], [ 0.000000e+00, %4086 ], [ 0.000000e+00, %4141 ], [ 0.000000e+00, %4083 ]
  %4360 = phi float [ %4080, %4054 ], [ 0.000000e+00, %4016 ], [ %4354, %4344 ], [ 0.000000e+00, %4086 ], [ 0.000000e+00, %4141 ], [ 0.000000e+00, %4083 ]
  %4361 = phi float [ %4082, %4054 ], [ 0.000000e+00, %4016 ], [ %4356, %4344 ], [ 0.000000e+00, %4086 ], [ 0.000000e+00, %4141 ], [ 0.000000e+00, %4083 ]
  %4362 = phi i1 [ true, %4054 ], [ false, %4016 ], [ true, %4344 ], [ false, %4086 ], [ false, %4141 ], [ false, %4083 ]
  %4363 = and i32 %140, 3
  %4364 = icmp eq i32 %4363, 1
  %4365 = select i1 %4364, float 1.000000e+00, float 0.000000e+00
  %4366 = fsub fast float %4358, %124
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = select i1 %4362, float %4367, float 1.000000e+00
  %4369 = fmul fast float %4368, %4365
  %4370 = icmp eq i32 %4363, 3
  %4371 = select i1 %4370, float 1.000000e+00, float %4369
  %4372 = call float @dx.op.binary.f32(i32 35, float %3959, float %4371)  ; FMax(a,b)
  %4373 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4374 = fcmp fast une float %4373, 0.000000e+00
  %4375 = call float @dx.op.dot3.f32(i32 55, float %122, float %123, float %124, float %122, float %123, float %124)  ; Dot3(ax,ay,az,bx,by,bz)
  %4376 = call float @dx.op.unary.f32(i32 25, float %4375)  ; Rsqrt(value)
  br i1 %4374, label %4384, label %4377

; <label>:4377                                    ; preds = %4357
  %4378 = fmul fast float %4376, %122
  %4379 = fmul fast float %4376, %123
  %4380 = fmul fast float %4376, %124
  %4381 = fsub fast float -0.000000e+00, %4378
  %4382 = fsub fast float -0.000000e+00, %4379
  %4383 = fsub fast float -0.000000e+00, %4380
  br label %4552

; <label>:4384                                    ; preds = %4357
  %4385 = fmul fast float %122, %4376
  %4386 = fsub fast float -0.000000e+00, %4385
  %4387 = fmul fast float %123, %4376
  %4388 = fsub fast float -0.000000e+00, %4387
  %4389 = fmul fast float %124, %4376
  %4390 = fsub fast float -0.000000e+00, %4389
  %4391 = call float @dx.op.dot3.f32(i32 55, float %4386, float %4388, float %4390, float %74, float %75, float %76)  ; Dot3(ax,ay,az,bx,by,bz)
  %4392 = fmul fast float %4373, 2.500000e+00
  %4393 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4394 = fmul fast float %4373, 0x4013FFFFE0000000
  %4395 = fadd fast float %4394, 0xBFFFFFFFE0000000
  %4396 = call float @dx.op.unary.f32(i32 7, float %4395)  ; Saturate(value)
  %4397 = fmul fast float %4373, 0x4004000020000000
  %4398 = fadd fast float %4397, 0xBFF8000040000000
  %4399 = call float @dx.op.unary.f32(i32 7, float %4398)  ; Saturate(value)
  %4400 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4401 = fmul fast float %3962, 1.000000e+01
  %4402 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4403 = fmul fast float %4402, 2.000000e+00
  %4404 = fsub fast float 3.000000e+00, %4403
  %4405 = fmul fast float %4402, %4402
  %4406 = fmul fast float %4405, %4404
  %4407 = fsub fast float 1.000000e+00, %4406
  %4408 = fsub fast float 0x3FE3333340000000, %3983
  %4409 = fmul fast float %4408, 0x400AAAAAA0000000
  %4410 = call float @dx.op.unary.f32(i32 7, float %4409)  ; Saturate(value)
  %4411 = fmul fast float %4407, %4410
  %4412 = fmul fast float %3995, 0x3FEA2B8620000000
  %4413 = fmul fast float %3996, 0x3FEA2B8620000000
  %4414 = fmul fast float %3997, 0x3FEA2B8620000000
  %4415 = fadd fast float %4412, 0x3FC81DFBA0000000
  %4416 = fmul fast float %4415, %3995
  %4417 = fadd fast float %4416, 0x3F910E6020000000
  %4418 = fadd fast float %4413, 0x3FC81DFBA0000000
  %4419 = fmul fast float %4418, %3996
  %4420 = fadd fast float %4419, 0x3F910E6020000000
  %4421 = fadd fast float %4414, 0x3FC81DFBA0000000
  %4422 = fmul fast float %4421, %3997
  %4423 = fadd fast float %4422, 0x3F910E6020000000
  %4424 = call float @dx.op.unary.f32(i32 7, float %4417)  ; Saturate(value)
  %4425 = call float @dx.op.unary.f32(i32 7, float %4420)  ; Saturate(value)
  %4426 = call float @dx.op.unary.f32(i32 7, float %4423)  ; Saturate(value)
  %4427 = fsub fast float %4424, %3995
  %4428 = fsub fast float %4425, %3996
  %4429 = fsub fast float %4426, %3997
  %4430 = fmul fast float %4427, %4400
  %4431 = fmul fast float %4430, %4411
  %4432 = fmul fast float %4428, %4400
  %4433 = fmul fast float %4432, %4411
  %4434 = fmul fast float %4429, %4400
  %4435 = fmul fast float %4434, %4411
  %4436 = fadd fast float %4431, %3995
  %4437 = fadd fast float %4433, %3996
  %4438 = fadd fast float %4435, %3997
  %4439 = fmul fast float %3956, %3956
  %4440 = fmul fast float %4439, %4439
  %4441 = fadd fast float %4396, 1.000000e+00
  %4442 = fsub fast float %4441, %4411
  %4443 = call float @dx.op.unary.f32(i32 7, float %4442)  ; Saturate(value)
  %4444 = call float @dx.op.dot3.f32(i32 55, float %74, float %75, float %76, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4445 = call float @dx.op.unary.f32(i32 7, float %4444)  ; Saturate(value)
  %4446 = fsub fast float 1.000000e+00, %4440
  %4447 = call float @dx.op.binary.f32(i32 36, float %4443, float %4446)  ; FMin(a,b)
  %4448 = call float @dx.op.unary.f32(i32 7, float %4399)  ; Saturate(value)
  %4449 = call float @dx.op.binary.f32(i32 35, float %4447, float %4448)  ; FMax(a,b)
  %4450 = fadd fast float %4445, 0xBFE4CCCCC0000000
  %4451 = fmul fast float %4450, 0x4006DB6DA0000000
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = fmul fast float %4452, 2.000000e+00
  %4454 = fsub fast float 3.000000e+00, %4453
  %4455 = bitcast float %3980 to i32
  %4456 = ashr i32 %4455, 1
  %4457 = add nsw i32 %4456, 532487669
  %4458 = bitcast i32 %4457 to float
  %4459 = fsub fast float 1.000000e+00, %4458
  %4460 = bitcast float %4459 to i32
  %4461 = sub nsw i32 2129859010, %4460
  %4462 = bitcast i32 %4461 to float
  %4463 = fmul fast float %4462, 2.000000e+00
  %4464 = bitcast float %3981 to i32
  %4465 = ashr i32 %4464, 1
  %4466 = add nsw i32 %4465, 532487669
  %4467 = bitcast i32 %4466 to float
  %4468 = fsub fast float 1.000000e+00, %4467
  %4469 = bitcast float %4468 to i32
  %4470 = sub nsw i32 2129859010, %4469
  %4471 = bitcast i32 %4470 to float
  %4472 = fmul fast float %4471, 2.000000e+00
  %4473 = bitcast float %3982 to i32
  %4474 = ashr i32 %4473, 1
  %4475 = add nsw i32 %4474, 532487669
  %4476 = bitcast i32 %4475 to float
  %4477 = fsub fast float 1.000000e+00, %4476
  %4478 = bitcast float %4477 to i32
  %4479 = sub nsw i32 2129859010, %4478
  %4480 = bitcast i32 %4479 to float
  %4481 = fmul fast float %4480, 2.000000e+00
  %4482 = fsub fast float 0x4002A9FBE0000000, %4463
  %4483 = fadd fast float %4463, 0x3FD54FDF00000000
  %4484 = bitcast float %4483 to i32
  %4485 = sub nsw i32 2129859010, %4484
  %4486 = bitcast i32 %4485 to float
  %4487 = fmul fast float %4486, %4482
  %4488 = fmul fast float %4487, %4487
  %4489 = fsub fast float 0x4002A9FBE0000000, %4472
  %4490 = fadd fast float %4472, 0x3FD54FDF00000000
  %4491 = bitcast float %4490 to i32
  %4492 = sub nsw i32 2129859010, %4491
  %4493 = bitcast i32 %4492 to float
  %4494 = fmul fast float %4493, %4489
  %4495 = fmul fast float %4494, %4494
  %4496 = fsub fast float 0x4002A9FBE0000000, %4481
  %4497 = fadd fast float %4481, 0x3FD54FDF00000000
  %4498 = bitcast float %4497 to i32
  %4499 = sub nsw i32 2129859010, %4498
  %4500 = bitcast i32 %4499 to float
  %4501 = fmul fast float %4500, %4496
  %4502 = fmul fast float %4501, %4501
  %4503 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4488)  ; FMax(a,b)
  %4504 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4495)  ; FMax(a,b)
  %4505 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4502)  ; FMax(a,b)
  %4506 = fsub fast float 1.000000e+00, %4391
  %4507 = fadd fast float %4506, %4407
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = fsub fast float 1.000000e+00, %4371
  %4510 = fmul fast float %4449, %4509
  %4511 = fmul fast float %4452, %4452
  %4512 = fmul fast float %4511, %4510
  %4513 = fmul fast float %4512, %4454
  %4514 = fmul fast float %4509, 0xBFE99999A0000000
  %4515 = fmul fast float %4514, %4400
  %4516 = fmul fast float %4515, %4411
  %4517 = fadd fast float %4516, 1.000000e+00
  %4518 = fadd fast float %3983, -1.000000e+00
  %4519 = fmul fast float %4517, %4518
  %4520 = fadd fast float %4519, 1.000000e+00
  %4521 = fsub fast float %4503, %3980
  %4522 = fsub fast float %4504, %3981
  %4523 = fsub fast float %4505, %3982
  %4524 = fmul fast float %4513, %4521
  %4525 = fmul fast float %4513, %4522
  %4526 = fmul fast float %4513, %4523
  %4527 = fadd fast float %4524, %3980
  %4528 = fadd fast float %4525, %3981
  %4529 = fadd fast float %4526, %3982
  %4530 = fsub fast float %74, %3947
  %4531 = fsub fast float %75, %3948
  %4532 = fsub fast float %76, %3949
  %4533 = fmul fast float %4513, %4530
  %4534 = fmul fast float %4513, %4531
  %4535 = fmul fast float %4513, %4532
  %4536 = fadd fast float %4533, %3947
  %4537 = fadd fast float %4534, %3948
  %4538 = fadd fast float %4535, %3949
  %4539 = fmul fast float %4513, %4508
  %4540 = call float @dx.op.unary.f32(i32 7, float %4520)  ; Saturate(value)
  %4541 = fsub fast float 1.000000e+00, %4540
  %4542 = fmul fast float %4539, %4541
  %4543 = fadd fast float %4542, %4540
  %4544 = fsub fast float 1.000000e+00, %3956
  %4545 = fmul fast float %4513, %4544
  %4546 = fadd fast float %4545, %3956
  %4547 = call float @dx.op.dot3.f32(i32 55, float %4536, float %4537, float %4538, float %4536, float %4537, float %4538)  ; Dot3(ax,ay,az,bx,by,bz)
  %4548 = call float @dx.op.unary.f32(i32 25, float %4547)  ; Rsqrt(value)
  %4549 = fmul fast float %4536, %4548
  %4550 = fmul fast float %4537, %4548
  %4551 = fmul fast float %4538, %4548
  br label %4552

; <label>:4552                                    ; preds = %4384, %4377
  %4553 = phi float [ %4383, %4377 ], [ %4390, %4384 ]
  %4554 = phi float [ %4382, %4377 ], [ %4388, %4384 ]
  %4555 = phi float [ %4381, %4377 ], [ %4386, %4384 ]
  %4556 = phi float [ %4380, %4377 ], [ %4389, %4384 ]
  %4557 = phi float [ %4379, %4377 ], [ %4387, %4384 ]
  %4558 = phi float [ %4378, %4377 ], [ %4385, %4384 ]
  %4559 = phi float [ %3995, %4377 ], [ %4436, %4384 ]
  %4560 = phi float [ %3996, %4377 ], [ %4437, %4384 ]
  %4561 = phi float [ %3997, %4377 ], [ %4438, %4384 ]
  %4562 = phi float [ %3947, %4377 ], [ %4549, %4384 ]
  %4563 = phi float [ %3948, %4377 ], [ %4550, %4384 ]
  %4564 = phi float [ %3949, %4377 ], [ %4551, %4384 ]
  %4565 = phi float [ %3980, %4377 ], [ %4527, %4384 ]
  %4566 = phi float [ %3981, %4377 ], [ %4528, %4384 ]
  %4567 = phi float [ %3982, %4377 ], [ %4529, %4384 ]
  %4568 = phi float [ %3983, %4377 ], [ %4543, %4384 ]
  %4569 = phi float [ %3956, %4377 ], [ %4546, %4384 ]
  %4570 = select i1 %164, float 0.000000e+00, float %4567
  %4571 = call float @dx.op.dot3.f32(i32 55, float %4562, float %4563, float %4564, float %4555, float %4554, float %4553)  ; Dot3(ax,ay,az,bx,by,bz)
  %4572 = call float @dx.op.unary.f32(i32 7, float %4571)  ; Saturate(value)
  %4573 = call float @dx.op.dot3.f32(i32 55, float %4558, float %4557, float %4556, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %4574 = fmul fast float %4573, 2.000000e+00
  %4575 = fmul fast float %4574, %4562
  %4576 = fmul fast float %4574, %4563
  %4577 = fmul fast float %4574, %4564
  %4578 = fsub fast float %4558, %4575
  %4579 = fsub fast float %4557, %4576
  %4580 = fsub fast float %4556, %4577
  %4581 = call float @dx.op.binary.f32(i32 36, float %4569, float 1.000000e+00)  ; FMin(a,b)
  %4582 = fsub fast float 1.000000e+00, %4569
  %4583 = bitcast float %4582 to i32
  %4584 = sub nsw i32 2129859010, %4583
  %4585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4586 = extractvalue %dx.types.CBufRet.f32 %4585, 0
  %4587 = extractvalue %dx.types.CBufRet.f32 %4585, 1
  %4588 = fadd fast float %4586, %122
  %4589 = fadd fast float %4587, %123
  %4590 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %4591 = extractvalue %dx.types.CBufRet.i32 %4590, 0
  %4592 = icmp eq i32 %4591, 1
  br i1 %4592, label %4593, label %4628

; <label>:4593                                    ; preds = %4552
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 0
  %4596 = extractvalue %dx.types.CBufRet.f32 %4594, 1
  %4597 = fsub fast float %4588, %4595
  %4598 = fsub fast float %4589, %4596
  %4599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.CBufRet.f32 %4599, 1
  %4602 = fmul fast float %4597, %4600
  %4603 = fmul fast float %4598, %4601
  %4604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %38, float %4602, float %4603, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = fcmp fast ogt float %4605, 0.000000e+00
  %4607 = extractvalue %dx.types.CBufRet.i32 %4590, 3
  %4608 = icmp ne i32 %4607, 0
  %4609 = and i1 %4606, %4608
  br i1 %4609, label %4610, label %4628, !dx.controlflow.hints !78

; <label>:4610                                    ; preds = %4593
  %4611 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4612 = extractvalue %dx.types.CBufRet.f32 %4611, 0
  %4613 = extractvalue %dx.types.CBufRet.f32 %4611, 1
  %4614 = fsub fast float %4588, %4612
  %4615 = fsub fast float %4589, %4613
  %4616 = fmul fast float %4614, %4614
  %4617 = fmul fast float %4615, %4615
  %4618 = fadd fast float %4616, %4617
  %4619 = uitofp i32 %4607 to float
  %4620 = fmul fast float %4619, %4619
  %4621 = fcmp fast ogt float %4618, %4620
  br i1 %4621, label %4628, label %4622

; <label>:4622                                    ; preds = %4610
  %4623 = call float @dx.op.unary.f32(i32 24, float %4618)  ; Sqrt(value)
  %4624 = fsub fast float %4619, %4623
  %4625 = fmul fast float %4624, 0x3F75555560000000
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = call float @dx.op.binary.f32(i32 36, float %4626, float %4605)  ; FMin(a,b)
  br label %4628

; <label>:4628                                    ; preds = %4622, %4610, %4593, %4552
  %4629 = phi float [ 1.000000e+00, %4552 ], [ %4627, %4622 ], [ %4605, %4593 ], [ 0.000000e+00, %4610 ]
  %4630 = fcmp fast ogt float %4629, 0.000000e+00
  br i1 %4630, label %4631, label %4729, !dx.controlflow.hints !79

; <label>:4631                                    ; preds = %4628
  %4632 = fadd fast float %47, 5.000000e-01
  %4633 = call float @dx.op.unary.f32(i32 27, float %4632)  ; Round_ni(value)
  %4634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %38, float %45, float %46, float %4633, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = extractvalue %dx.types.ResRet.f32 %4634, 1
  %4637 = extractvalue %dx.types.ResRet.f32 %4634, 2
  %4638 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4639 = extractvalue %dx.types.CBufRet.f32 %4638, 3
  %4640 = fmul fast float %4639, %4635
  %4641 = fmul fast float %4639, %4636
  %4642 = fmul fast float %4639, %4637
  %4643 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %38, float %45, float %46, float %4633, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4644 = extractvalue %dx.types.ResRet.f32 %4643, 0
  %4645 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %38, float %45, float %46, float %4633, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4646 = extractvalue %dx.types.ResRet.f32 %4645, 0
  %4647 = extractvalue %dx.types.ResRet.f32 %4645, 1
  %4648 = fmul fast float %4646, 2.000000e+00
  %4649 = fmul fast float %4647, 2.000000e+00
  %4650 = fadd fast float %4648, -1.000000e+00
  %4651 = fadd fast float %4649, -1.000000e+00
  %4652 = fadd fast float %4650, %4651
  %4653 = fmul fast float %4652, 5.000000e-01
  %4654 = fsub fast float %4650, %4651
  %4655 = fmul fast float %4654, 5.000000e-01
  %4656 = call float @dx.op.unary.f32(i32 6, float %4653)  ; FAbs(value)
  %4657 = fsub fast float 1.000000e+00, %4656
  %4658 = call float @dx.op.unary.f32(i32 6, float %4655)  ; FAbs(value)
  %4659 = fsub fast float %4657, %4658
  %4660 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %4659)  ; FMax(a,b)
  %4661 = call float @dx.op.dot3.f32(i32 55, float %4653, float %4655, float %4660, float %4653, float %4655, float %4660)  ; Dot3(ax,ay,az,bx,by,bz)
  %4662 = bitcast float %4661 to i32
  %4663 = ashr i32 %4662, 1
  %4664 = sub nsw i32 1597250115, %4663
  %4665 = bitcast i32 %4664 to float
  %4666 = fmul fast float %4665, %4653
  %4667 = fmul fast float %4665, %4655
  %4668 = fmul fast float %4665, %4660
  %4669 = fsub fast float 1.000000e+00, %4644
  %4670 = fdiv fast float %4669, %4668
  %4671 = fmul fast float %4668, %74
  %4672 = fmul fast float %4668, %75
  %4673 = fmul fast float %4668, %76
  %4674 = fmul fast float %4666, %48
  %4675 = fmul fast float %4666, %49
  %4676 = fmul fast float %4666, %50
  %4677 = fadd fast float %4671, %4674
  %4678 = fadd fast float %4672, %4675
  %4679 = fadd fast float %4673, %4676
  %4680 = fmul fast float %4667, %86
  %4681 = fmul fast float %4667, %87
  %4682 = fmul fast float %4667, %88
  %4683 = fadd fast float %4677, %4680
  %4684 = fadd fast float %4678, %4681
  %4685 = fadd fast float %4679, %4682
  %4686 = call float @dx.op.dot3.f32(i32 55, float %4683, float %4684, float %4685, float %4683, float %4684, float %4685)  ; Dot3(ax,ay,az,bx,by,bz)
  %4687 = call float @dx.op.unary.f32(i32 25, float %4686)  ; Rsqrt(value)
  %4688 = fmul fast float %4683, %4687
  %4689 = fmul fast float %4684, %4687
  %4690 = fmul fast float %4685, %4687
  %4691 = call float @dx.op.dot3.f32(i32 55, float %4562, float %4563, float %4564, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %4692 = call float @dx.op.unary.f32(i32 7, float %4691)  ; Saturate(value)
  %4693 = fmul fast float %4692, 5.000000e-01
  %4694 = fadd fast float %4693, 5.000000e-01
  %4695 = fmul fast float %4694, %4644
  %4696 = call float @dx.op.dot3.f32(i32 55, float %4562, float %4563, float %4564, float %4688, float %4689, float %4690)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = call float @dx.op.unary.f32(i32 7, float %4696)  ; Saturate(value)
  %4698 = fmul fast float %4697, %4670
  %4699 = fadd fast float %4695, %4698
  %4700 = fsub fast float 5.000000e-01, %4693
  %4701 = fmul fast float %4700, %4559
  %4702 = fmul fast float %4700, %4560
  %4703 = fmul fast float %4700, %4561
  %4704 = fadd fast float %4699, %4701
  %4705 = fmul fast float %4704, %4640
  %4706 = fadd fast float %4699, %4702
  %4707 = fmul fast float %4706, %4641
  %4708 = fadd fast float %4699, %4703
  %4709 = fmul fast float %4708, %4642
  %4710 = call float @dx.op.dot3.f32(i32 55, float %4578, float %4579, float %4580, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %4711 = call float @dx.op.unary.f32(i32 7, float %4710)  ; Saturate(value)
  %4712 = fmul fast float %4711, 5.000000e-01
  %4713 = fadd fast float %4712, 5.000000e-01
  %4714 = fmul fast float %4713, %4644
  %4715 = call float @dx.op.dot3.f32(i32 55, float %4578, float %4579, float %4580, float %4688, float %4689, float %4690)  ; Dot3(ax,ay,az,bx,by,bz)
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fmul fast float %4716, %4670
  %4718 = fadd fast float %4714, %4717
  %4719 = fsub fast float 5.000000e-01, %4712
  %4720 = fmul fast float %4719, %4559
  %4721 = fmul fast float %4719, %4560
  %4722 = fmul fast float %4719, %4561
  %4723 = fadd fast float %4718, %4720
  %4724 = fmul fast float %4723, %4640
  %4725 = fadd fast float %4718, %4721
  %4726 = fmul fast float %4725, %4641
  %4727 = fadd fast float %4718, %4722
  %4728 = fmul fast float %4727, %4642
  br label %4729

; <label>:4729                                    ; preds = %4631, %4628
  %4730 = phi float [ %4724, %4631 ], [ 0.000000e+00, %4628 ]
  %4731 = phi float [ %4726, %4631 ], [ 0.000000e+00, %4628 ]
  %4732 = phi float [ %4728, %4631 ], [ 0.000000e+00, %4628 ]
  %4733 = phi float [ %4705, %4631 ], [ 0.000000e+00, %4628 ]
  %4734 = phi float [ %4707, %4631 ], [ 0.000000e+00, %4628 ]
  %4735 = phi float [ %4709, %4631 ], [ 0.000000e+00, %4628 ]
  %4736 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4737 = extractvalue %dx.types.CBufRet.f32 %4736, 0
  %4738 = fcmp fast ogt float %4737, 0.000000e+00
  %4739 = and i1 %4630, %4738
  br i1 %4739, label %4740, label %4944, !dx.controlflow.hints !80

; <label>:4740                                    ; preds = %4729
  %4741 = extractvalue %dx.types.CBufRet.f32 %4585, 2
  %4742 = fadd fast float %4741, %124
  %4743 = fmul fast float %4562, 3.200000e+01
  %4744 = fmul fast float %4563, 3.200000e+01
  %4745 = fadd fast float %4588, %4743
  %4746 = fadd fast float %4589, %4744
  %4747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.f32 %4747, 0
  %4749 = extractvalue %dx.types.CBufRet.f32 %4747, 1
  %4750 = fsub fast float %4745, %4748
  %4751 = fsub fast float %4746, %4749
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 0
  %4754 = extractvalue %dx.types.CBufRet.f32 %4752, 1
  %4755 = fmul fast float %4750, %4753
  %4756 = fmul fast float %4751, %4754
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.CBufRet.f32 %4757, 1
  %4760 = fsub fast float %4588, %4758
  %4761 = fsub fast float %4589, %4759
  %4762 = fmul fast float %4760, %4760
  %4763 = fmul fast float %4761, %4761
  %4764 = fadd fast float %4762, %4763
  %4765 = call float @dx.op.unary.f32(i32 24, float %4764)  ; Sqrt(value)
  %4766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4767 = extractvalue %dx.types.CBufRet.f32 %4766, 0
  %4768 = extractvalue %dx.types.CBufRet.f32 %4766, 1
  %4769 = fsub fast float %4765, %4767
  %4770 = fdiv fast float %4769, %4768
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = fmul fast float %4771, 2.000000e+00
  %4773 = fsub fast float 3.000000e+00, %4772
  %4774 = fmul fast float %4771, %4771
  %4775 = fmul fast float %4774, %4773
  %4776 = fcmp fast oge float %4755, 0.000000e+00
  %4777 = fcmp fast ole float %4755, 1.000000e+00
  %4778 = and i1 %4777, %4776
  %4779 = fcmp fast oge float %4756, 0.000000e+00
  %4780 = and i1 %4779, %4778
  %4781 = fcmp fast ole float %4756, 1.000000e+00
  %4782 = and i1 %4781, %4780
  %4783 = fcmp fast ogt float %4775, 0.000000e+00
  %4784 = and i1 %4783, %4782
  br i1 %4784, label %4785, label %4908, !dx.controlflow.hints !81

; <label>:4785                                    ; preds = %4740
  %4786 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.f32 %4786, 2
  %4788 = extractvalue %dx.types.CBufRet.f32 %4786, 3
  %4789 = fmul fast float %4787, %4755
  %4790 = fmul fast float %4788, %4756
  %4791 = call float @dx.op.unary.f32(i32 27, float %4789)  ; Round_ni(value)
  %4792 = call float @dx.op.unary.f32(i32 27, float %4790)  ; Round_ni(value)
  %4793 = fptosi float %4791 to i32
  %4794 = fptosi float %4792 to i32
  %4795 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %4793, i32 %4794, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4796 = extractvalue %dx.types.ResRet.i32 %4795, 0
  %4797 = lshr i32 %4796, 16
  %4798 = icmp eq i32 %4797, 65535
  br i1 %4798, label %4908, label %4799

; <label>:4799                                    ; preds = %4785
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 0
  %4802 = fmul fast float %4801, %4755
  %4803 = extractvalue %dx.types.CBufRet.f32 %4800, 1
  %4804 = fadd fast float %4802, %4803
  %4805 = extractvalue %dx.types.CBufRet.f32 %4800, 2
  %4806 = fmul fast float %4805, %4756
  %4807 = extractvalue %dx.types.CBufRet.f32 %4800, 3
  %4808 = fadd fast float %4806, %4807
  %4809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %38, float %4804, float %4808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4810 = extractvalue %dx.types.ResRet.f32 %4809, 0
  %4811 = extractvalue %dx.types.ResRet.f32 %4809, 1
  %4812 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4813 = extractvalue %dx.types.CBufRet.f32 %4812, 1
  %4814 = extractvalue %dx.types.CBufRet.f32 %4812, 0
  %4815 = fsub fast float %4813, %4814
  %4816 = fmul fast float %4815, %4810
  %4817 = fadd fast float %4816, %4814
  %4818 = extractvalue %dx.types.CBufRet.f32 %4812, 3
  %4819 = extractvalue %dx.types.CBufRet.f32 %4812, 2
  %4820 = fsub fast float %4818, %4819
  %4821 = fmul fast float %4820, %4811
  %4822 = fadd fast float %4821, %4819
  %4823 = fsub fast float %4742, %4817
  %4824 = fsub fast float %4822, %4817
  %4825 = fdiv fast float %4823, %4824
  %4826 = call float @dx.op.unary.f32(i32 7, float %4825)  ; Saturate(value)
  %4827 = extractvalue %dx.types.CBufRet.f32 %4736, 1
  %4828 = extractvalue %dx.types.CBufRet.f32 %4786, 0
  %4829 = extractvalue %dx.types.CBufRet.f32 %4786, 1
  %4830 = fmul fast float %4828, %4755
  %4831 = fmul fast float %4829, %4756
  %4832 = fmul fast float %4830, 1.250000e-01
  %4833 = fmul fast float %4831, 1.250000e-01
  %4834 = call float @dx.op.unary.f32(i32 27, float %4832)  ; Round_ni(value)
  %4835 = call float @dx.op.unary.f32(i32 27, float %4833)  ; Round_ni(value)
  %4836 = fmul fast float %4834, 8.000000e+00
  %4837 = fmul fast float %4835, 8.000000e+00
  %4838 = fsub fast float %4830, %4836
  %4839 = fsub fast float %4831, %4837
  %4840 = fadd fast float %4838, 5.000000e-01
  %4841 = fadd fast float %4839, 5.000000e-01
  %4842 = and i32 %4797, 255
  %4843 = lshr i32 %4796, 24
  %4844 = mul nuw nsw i32 %4842, 9
  %4845 = uitofp i32 %4844 to float
  %4846 = mul nuw nsw i32 %4843, 9
  %4847 = uitofp i32 %4846 to float
  %4848 = fadd fast float %4840, %4845
  %4849 = fadd fast float %4841, %4847
  %4850 = fdiv fast float %4848, %4737
  %4851 = fdiv fast float %4849, %4827
  %4852 = fmul fast float %4826, 4.375000e-01
  %4853 = fadd fast float %4852, 3.125000e-02
  %4854 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %4850, float %4851, float %4853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4855 = extractvalue %dx.types.ResRet.f32 %4854, 0
  %4856 = extractvalue %dx.types.ResRet.f32 %4854, 1
  %4857 = extractvalue %dx.types.ResRet.f32 %4854, 2
  %4858 = fadd fast float %4852, 5.312500e-01
  %4859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %4850, float %4851, float %4858, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4860 = extractvalue %dx.types.ResRet.f32 %4859, 0
  %4861 = extractvalue %dx.types.ResRet.f32 %4859, 1
  %4862 = extractvalue %dx.types.ResRet.f32 %4859, 2
  %4863 = fmul fast float %4860, 2.000000e+00
  %4864 = fmul fast float %4861, 2.000000e+00
  %4865 = fmul fast float %4862, 2.000000e+00
  %4866 = fadd fast float %4863, -1.000000e+00
  %4867 = fadd fast float %4864, -1.000000e+00
  %4868 = fadd fast float %4865, -1.000000e+00
  %4869 = fmul fast float %4866, %4866
  %4870 = fmul fast float %4867, %4867
  %4871 = fadd fast float %4869, %4870
  %4872 = fmul fast float %4868, %4868
  %4873 = fadd fast float %4871, %4872
  %4874 = call float @dx.op.unary.f32(i32 24, float %4873)  ; Sqrt(value)
  %4875 = fcmp fast ogt float %4874, 0.000000e+00
  br i1 %4875, label %4876, label %4880

; <label>:4876                                    ; preds = %4799
  %4877 = fdiv fast float %4866, %4874
  %4878 = fdiv fast float %4867, %4874
  %4879 = fdiv fast float %4868, %4874
  br label %4880

; <label>:4880                                    ; preds = %4876, %4799
  %4881 = phi float [ %4877, %4876 ], [ 0.000000e+00, %4799 ]
  %4882 = phi float [ %4878, %4876 ], [ 0.000000e+00, %4799 ]
  %4883 = phi float [ %4879, %4876 ], [ 0.000000e+00, %4799 ]
  %4884 = call float @dx.op.dot3.f32(i32 55, float %4881, float %4882, float %4883, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4884)  ; FMax(a,b)
  %4886 = fmul fast float %4885, 0x400C5BF8A0000000
  %4887 = fmul fast float %4855, %4775
  %4888 = fmul fast float %4887, %4886
  %4889 = fmul fast float %4856, %4775
  %4890 = fmul fast float %4889, %4886
  %4891 = fmul fast float %4857, %4775
  %4892 = fmul fast float %4891, %4886
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 3
  %4895 = fmul fast float %4888, %4894
  %4896 = fmul fast float %4890, %4894
  %4897 = fmul fast float %4892, %4894
  %4898 = fcmp fast ogt float %4742, %4822
  br i1 %4898, label %4899, label %4908

; <label>:4899                                    ; preds = %4880
  %4900 = fmul fast float %4824, 0x3FC24924A0000000
  %4901 = fsub fast float %4742, %4822
  %4902 = fdiv fast float %4901, %4900
  %4903 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4904 = fsub fast float 1.000000e+00, %4903
  %4905 = fmul fast float %4904, %4895
  %4906 = fmul fast float %4904, %4896
  %4907 = fmul fast float %4904, %4897
  br label %4908

; <label>:4908                                    ; preds = %4899, %4880, %4785, %4740
  %4909 = phi float [ %4907, %4899 ], [ %4897, %4880 ], [ 0.000000e+00, %4785 ], [ 0.000000e+00, %4740 ]
  %4910 = phi float [ %4906, %4899 ], [ %4896, %4880 ], [ 0.000000e+00, %4785 ], [ 0.000000e+00, %4740 ]
  %4911 = phi float [ %4905, %4899 ], [ %4895, %4880 ], [ 0.000000e+00, %4785 ], [ 0.000000e+00, %4740 ]
  %4912 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4911)  ; FMax(a,b)
  %4913 = fmul fast float %4912, 0x3FD20DD760000000
  %4914 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4578, float %4579, float %4580)  ; Dot3(ax,ay,az,bx,by,bz)
  %4915 = fmul fast float %4914, 0x3FDF454380000000
  %4916 = fmul fast float %4914, %4914
  %4917 = fmul fast float %4916, 0x3FEE471020000000
  %4918 = fadd fast float %4917, 0xBFD42F6020000000
  %4919 = call float @dx.op.dot3.f32(i32 55, float %4912, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4915, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %4920 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4910)  ; FMax(a,b)
  %4921 = fmul fast float %4920, 0x3FD20DD760000000
  %4922 = call float @dx.op.dot3.f32(i32 55, float %4920, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4915, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4909)  ; FMax(a,b)
  %4924 = fmul fast float %4923, 0x3FD20DD760000000
  %4925 = call float @dx.op.dot3.f32(i32 55, float %4923, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %4915, float %4918)  ; Dot3(ax,ay,az,bx,by,bz)
  %4926 = call float @dx.op.binary.f32(i32 35, float %4913, float 0.000000e+00)  ; FMax(a,b)
  %4927 = call float @dx.op.binary.f32(i32 35, float %4921, float 0.000000e+00)  ; FMax(a,b)
  %4928 = call float @dx.op.binary.f32(i32 35, float %4924, float 0.000000e+00)  ; FMax(a,b)
  %4929 = call float @dx.op.binary.f32(i32 35, float %4919, float 0.000000e+00)  ; FMax(a,b)
  %4930 = call float @dx.op.binary.f32(i32 35, float %4922, float 0.000000e+00)  ; FMax(a,b)
  %4931 = call float @dx.op.binary.f32(i32 35, float %4925, float 0.000000e+00)  ; FMax(a,b)
  %4932 = fmul fast float %4926, %4629
  %4933 = fmul fast float %4927, %4629
  %4934 = fmul fast float %4928, %4629
  %4935 = fadd fast float %4932, %4733
  %4936 = fadd fast float %4933, %4734
  %4937 = fadd fast float %4934, %4735
  %4938 = fmul fast float %4929, %4629
  %4939 = fmul fast float %4930, %4629
  %4940 = fmul fast float %4931, %4629
  %4941 = fadd fast float %4938, %4730
  %4942 = fadd fast float %4939, %4731
  %4943 = fadd fast float %4940, %4732
  br label %4944

; <label>:4944                                    ; preds = %4908, %4729
  %4945 = phi float [ %4941, %4908 ], [ %4730, %4729 ]
  %4946 = phi float [ %4942, %4908 ], [ %4731, %4729 ]
  %4947 = phi float [ %4943, %4908 ], [ %4732, %4729 ]
  %4948 = phi float [ %4935, %4908 ], [ %4733, %4729 ]
  %4949 = phi float [ %4936, %4908 ], [ %4734, %4729 ]
  %4950 = phi float [ %4937, %4908 ], [ %4735, %4729 ]
  %4951 = fcmp fast olt float %4629, 1.000000e+00
  br i1 %4951, label %4952, label %5770, !dx.controlflow.hints !82

; <label>:4952                                    ; preds = %4944
  %4953 = extractvalue %dx.types.CBufRet.f32 %4585, 2
  %4954 = fadd fast float %4953, %124
  %4955 = fmul fast float %4562, 3.200000e+01
  %4956 = fmul fast float %4563, 3.200000e+01
  %4957 = fadd fast float %4588, %4955
  %4958 = fadd fast float %4589, %4956
  %4959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4960 = extractvalue %dx.types.CBufRet.f32 %4959, 0
  %4961 = extractvalue %dx.types.CBufRet.f32 %4959, 1
  %4962 = fsub fast float %4957, %4960
  %4963 = fsub fast float %4958, %4961
  %4964 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4965 = extractvalue %dx.types.CBufRet.f32 %4964, 0
  %4966 = extractvalue %dx.types.CBufRet.f32 %4964, 1
  %4967 = fmul fast float %4962, %4965
  %4968 = fmul fast float %4963, %4966
  %4969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4970 = extractvalue %dx.types.CBufRet.f32 %4969, 0
  %4971 = fmul fast float %4967, %4970
  %4972 = extractvalue %dx.types.CBufRet.f32 %4969, 1
  %4973 = fadd fast float %4971, %4972
  %4974 = extractvalue %dx.types.CBufRet.f32 %4969, 2
  %4975 = fmul fast float %4974, %4968
  %4976 = extractvalue %dx.types.CBufRet.f32 %4969, 3
  %4977 = fadd fast float %4975, %4976
  %4978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %38, float %4973, float %4977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4979 = extractvalue %dx.types.ResRet.f32 %4978, 0
  %4980 = extractvalue %dx.types.ResRet.f32 %4978, 1
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %4983 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4984 = fsub fast float %4982, %4983
  %4985 = fmul fast float %4984, %4979
  %4986 = fadd fast float %4985, %4983
  %4987 = extractvalue %dx.types.CBufRet.f32 %4981, 3
  %4988 = extractvalue %dx.types.CBufRet.f32 %4981, 2
  %4989 = fsub fast float %4987, %4988
  %4990 = fmul fast float %4989, %4980
  %4991 = fadd fast float %4990, %4988
  %4992 = fsub fast float %4954, %4986
  %4993 = fsub fast float %4991, %4986
  %4994 = fdiv fast float %4992, %4993
  %4995 = call float @dx.op.unary.f32(i32 7, float %4994)  ; Saturate(value)
  %4996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.f32 %4996, 0
  %4998 = fmul fast float %4997, %4995
  %4999 = extractvalue %dx.types.CBufRet.f32 %4996, 1
  %5000 = fadd fast float %4998, %4999
  %5001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %38, float %4973, float %4977, float %5000, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5002 = extractvalue %dx.types.ResRet.f32 %5001, 0
  %5003 = extractvalue %dx.types.ResRet.f32 %5001, 1
  %5004 = extractvalue %dx.types.ResRet.f32 %5001, 2
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 0
  %5007 = extractvalue %dx.types.CBufRet.f32 %5005, 1
  %5008 = extractvalue %dx.types.CBufRet.f32 %5005, 2
  %5009 = fmul fast float %5006, %5002
  %5010 = fmul fast float %5007, %5003
  %5011 = fmul fast float %5008, %5004
  %5012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.f32 %5012, 0
  %5014 = extractvalue %dx.types.CBufRet.f32 %5012, 1
  %5015 = extractvalue %dx.types.CBufRet.f32 %5012, 2
  %5016 = fadd fast float %5009, %5013
  %5017 = fadd fast float %5010, %5014
  %5018 = fadd fast float %5011, %5015
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = fmul fast float %5020, %4967
  %5022 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5023 = fadd fast float %5021, %5022
  %5024 = extractvalue %dx.types.CBufRet.f32 %5019, 2
  %5025 = fmul fast float %5024, %4968
  %5026 = extractvalue %dx.types.CBufRet.f32 %5019, 3
  %5027 = fadd fast float %5025, %5026
  %5028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %5029 = extractvalue %dx.types.CBufRet.f32 %5028, 0
  %5030 = extractvalue %dx.types.CBufRet.f32 %5028, 1
  %5031 = extractvalue %dx.types.CBufRet.f32 %5028, 2
  %5032 = extractvalue %dx.types.CBufRet.f32 %5028, 3
  %5033 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %5034 = extractvalue %dx.types.CBufRet.f32 %5033, 0
  %5035 = extractvalue %dx.types.CBufRet.f32 %5033, 1
  %5036 = extractvalue %dx.types.CBufRet.f32 %5033, 2
  %5037 = extractvalue %dx.types.CBufRet.f32 %5033, 3
  %5038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %38, float %5023, float %5027, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5039 = extractvalue %dx.types.ResRet.f32 %5038, 0
  %5040 = extractvalue %dx.types.ResRet.f32 %5038, 1
  %5041 = extractvalue %dx.types.ResRet.f32 %5038, 2
  %5042 = extractvalue %dx.types.ResRet.f32 %5038, 3
  %5043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %38, float %5023, float %5027, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5044 = extractvalue %dx.types.ResRet.f32 %5043, 0
  %5045 = extractvalue %dx.types.ResRet.f32 %5043, 1
  %5046 = extractvalue %dx.types.ResRet.f32 %5043, 2
  %5047 = extractvalue %dx.types.ResRet.f32 %5043, 3
  %5048 = fmul fast float %5039, %5016
  %5049 = fmul fast float %5044, %5016
  %5050 = fmul fast float %5046, %5016
  %5051 = fmul fast float %5042, %5016
  %5052 = fadd fast float %5048, %5029
  %5053 = fadd fast float %5049, %5030
  %5054 = fadd fast float %5050, %5031
  %5055 = fadd fast float %5051, %5032
  %5056 = fmul fast float %5040, %5016
  %5057 = fmul fast float %5045, %5016
  %5058 = fadd fast float %5056, %5034
  %5059 = fadd fast float %5057, %5035
  %5060 = fmul fast float %5041, %5016
  %5061 = fmul fast float %5047, %5016
  %5062 = fadd fast float %5060, %5036
  %5063 = fadd fast float %5061, %5037
  %5064 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %38, float %5023, float %5027, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5065 = extractvalue %dx.types.ResRet.f32 %5064, 0
  %5066 = extractvalue %dx.types.ResRet.f32 %5064, 1
  %5067 = extractvalue %dx.types.ResRet.f32 %5064, 2
  %5068 = extractvalue %dx.types.ResRet.f32 %5064, 3
  %5069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %38, float %5023, float %5027, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5070 = extractvalue %dx.types.ResRet.f32 %5069, 0
  %5071 = extractvalue %dx.types.ResRet.f32 %5069, 1
  %5072 = extractvalue %dx.types.ResRet.f32 %5069, 2
  %5073 = extractvalue %dx.types.ResRet.f32 %5069, 3
  %5074 = fmul fast float %5065, %5017
  %5075 = fmul fast float %5070, %5017
  %5076 = fmul fast float %5072, %5017
  %5077 = fmul fast float %5068, %5017
  %5078 = fadd fast float %5052, %5074
  %5079 = fadd fast float %5053, %5075
  %5080 = fadd fast float %5054, %5076
  %5081 = fadd fast float %5055, %5077
  %5082 = fmul fast float %5066, %5017
  %5083 = fmul fast float %5071, %5017
  %5084 = fadd fast float %5058, %5082
  %5085 = fadd fast float %5059, %5083
  %5086 = fmul fast float %5067, %5017
  %5087 = fmul fast float %5073, %5017
  %5088 = fadd fast float %5062, %5086
  %5089 = fadd fast float %5063, %5087
  %5090 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %38, float %5023, float %5027, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5091 = extractvalue %dx.types.ResRet.f32 %5090, 0
  %5092 = extractvalue %dx.types.ResRet.f32 %5090, 1
  %5093 = extractvalue %dx.types.ResRet.f32 %5090, 2
  %5094 = extractvalue %dx.types.ResRet.f32 %5090, 3
  %5095 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %38, float %5023, float %5027, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5096 = extractvalue %dx.types.ResRet.f32 %5095, 0
  %5097 = extractvalue %dx.types.ResRet.f32 %5095, 1
  %5098 = extractvalue %dx.types.ResRet.f32 %5095, 2
  %5099 = extractvalue %dx.types.ResRet.f32 %5095, 3
  %5100 = fmul fast float %5091, %5018
  %5101 = fmul fast float %5096, %5018
  %5102 = fmul fast float %5098, %5018
  %5103 = fmul fast float %5094, %5018
  %5104 = fadd fast float %5078, %5100
  %5105 = fadd fast float %5079, %5101
  %5106 = fadd fast float %5080, %5102
  %5107 = fadd fast float %5081, %5103
  %5108 = fmul fast float %5092, %5018
  %5109 = fmul fast float %5097, %5018
  %5110 = fadd fast float %5084, %5108
  %5111 = fadd fast float %5085, %5109
  %5112 = fmul fast float %5093, %5018
  %5113 = fmul fast float %5099, %5018
  %5114 = fadd fast float %5088, %5112
  %5115 = fadd fast float %5089, %5113
  %5116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %5117 = extractvalue %dx.types.CBufRet.f32 %5116, 0
  %5118 = fsub fast float %4588, %5117
  %5119 = fsub fast float %4960, %4588
  %5120 = call float @dx.op.binary.f32(i32 35, float %5119, float %5118)  ; FMax(a,b)
  %5121 = extractvalue %dx.types.CBufRet.f32 %5116, 1
  %5122 = fsub fast float %4589, %5121
  %5123 = fsub fast float %4961, %4589
  %5124 = call float @dx.op.binary.f32(i32 35, float %5123, float %5122)  ; FMax(a,b)
  %5125 = call float @dx.op.binary.f32(i32 35, float %5120, float %5124)  ; FMax(a,b)
  %5126 = extractvalue %dx.types.CBufRet.f32 %4964, 3
  %5127 = fmul fast float %5126, %5125
  %5128 = call float @dx.op.unary.f32(i32 7, float %5127)  ; Saturate(value)
  %5129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %5130 = extractvalue %dx.types.CBufRet.f32 %5129, 0
  %5131 = extractvalue %dx.types.CBufRet.f32 %5129, 1
  %5132 = extractvalue %dx.types.CBufRet.f32 %5129, 2
  %5133 = extractvalue %dx.types.CBufRet.f32 %5129, 3
  %5134 = fsub fast float %5130, %5104
  %5135 = fsub fast float %5131, %5105
  %5136 = fsub fast float %5132, %5106
  %5137 = fsub fast float %5133, %5107
  %5138 = fmul fast float %5134, %5128
  %5139 = fmul fast float %5135, %5128
  %5140 = fmul fast float %5136, %5128
  %5141 = fmul fast float %5137, %5128
  %5142 = fadd fast float %5138, %5104
  %5143 = fadd fast float %5139, %5105
  %5144 = fadd fast float %5140, %5106
  %5145 = fadd fast float %5141, %5107
  %5146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %5147 = extractvalue %dx.types.CBufRet.f32 %5146, 0
  %5148 = extractvalue %dx.types.CBufRet.f32 %5146, 1
  %5149 = fsub fast float %5147, %5110
  %5150 = fsub fast float %5148, %5111
  %5151 = fmul fast float %5149, %5128
  %5152 = fmul fast float %5150, %5128
  %5153 = fadd fast float %5151, %5110
  %5154 = fadd fast float %5152, %5111
  %5155 = extractvalue %dx.types.CBufRet.f32 %5146, 2
  %5156 = extractvalue %dx.types.CBufRet.f32 %5146, 3
  %5157 = fsub fast float %5155, %5114
  %5158 = fsub fast float %5156, %5115
  %5159 = fmul fast float %5157, %5128
  %5160 = fmul fast float %5158, %5128
  %5161 = fadd fast float %5159, %5114
  %5162 = fadd fast float %5160, %5115
  %5163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %5164 = extractvalue %dx.types.CBufRet.f32 %5163, 0
  %5165 = fmul fast float %5164, %5142
  %5166 = fmul fast float %5164, %5143
  %5167 = fmul fast float %5164, %5144
  %5168 = fmul fast float %5164, %5145
  %5169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %5170 = extractvalue %dx.types.CBufRet.f32 %5169, 0
  %5171 = fmul fast float %5170, %5153
  %5172 = fmul fast float %5170, %5154
  %5173 = fadd fast float %5171, %5165
  %5174 = fadd fast float %5172, %5167
  %5175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.f32 %5175, 0
  %5177 = fmul fast float %5176, %5161
  %5178 = fmul fast float %5176, %5162
  %5179 = fadd fast float %5173, %5177
  %5180 = fadd fast float %5174, %5178
  %5181 = extractvalue %dx.types.CBufRet.f32 %5163, 1
  %5182 = fmul fast float %5181, %5142
  %5183 = fmul fast float %5181, %5143
  %5184 = fmul fast float %5181, %5144
  %5185 = fmul fast float %5181, %5145
  %5186 = extractvalue %dx.types.CBufRet.f32 %5169, 1
  %5187 = fmul fast float %5186, %5153
  %5188 = fmul fast float %5186, %5154
  %5189 = fadd fast float %5187, %5182
  %5190 = fadd fast float %5188, %5184
  %5191 = extractvalue %dx.types.CBufRet.f32 %5175, 1
  %5192 = fmul fast float %5191, %5161
  %5193 = fmul fast float %5191, %5162
  %5194 = fadd fast float %5189, %5192
  %5195 = fadd fast float %5190, %5193
  %5196 = extractvalue %dx.types.CBufRet.f32 %5163, 2
  %5197 = fmul fast float %5196, %5142
  %5198 = fmul fast float %5196, %5143
  %5199 = fmul fast float %5196, %5144
  %5200 = fmul fast float %5196, %5145
  %5201 = extractvalue %dx.types.CBufRet.f32 %5169, 2
  %5202 = fmul fast float %5201, %5153
  %5203 = fmul fast float %5201, %5154
  %5204 = fadd fast float %5202, %5197
  %5205 = fadd fast float %5203, %5199
  %5206 = extractvalue %dx.types.CBufRet.f32 %5175, 2
  %5207 = fmul fast float %5206, %5161
  %5208 = fmul fast float %5206, %5162
  %5209 = fadd fast float %5204, %5207
  %5210 = fadd fast float %5205, %5208
  %5211 = fmul fast float %5198, %5198
  %5212 = fmul fast float %5210, %5210
  %5213 = fmul fast float %5200, %5200
  %5214 = fadd fast float %5213, %5211
  %5215 = fadd fast float %5214, %5212
  %5216 = call float @dx.op.unary.f32(i32 24, float %5215)  ; Sqrt(value)
  %5217 = fcmp fast ugt float %5216, 0.000000e+00
  br i1 %5217, label %5218, label %5233

; <label>:5218                                    ; preds = %4952
  %5219 = fsub fast float -0.000000e+00, %5200
  %5220 = fdiv fast float %5219, %5216
  %5221 = fsub fast float -0.000000e+00, %5198
  %5222 = fdiv fast float %5221, %5216
  %5223 = fdiv fast float %5210, %5216
  %5224 = fmul fast float %5209, 0x3FE279A760000000
  %5225 = fmul fast float %5222, %5198
  %5226 = fmul fast float %5223, %5210
  %5227 = fmul fast float %5220, %5200
  %5228 = fadd fast float %5225, %5227
  %5229 = fsub fast float %5228, %5226
  %5230 = call float @dx.op.unary.f32(i32 6, float %5229)  ; FAbs(value)
  %5231 = fadd fast float %5230, 0x3DDB7CDFE0000000
  %5232 = fdiv fast float %5224, %5231
  br label %5233

; <label>:5233                                    ; preds = %5218, %4952
  %5234 = phi float [ %5232, %5218 ], [ 1.000000e+00, %4952 ]
  %5235 = fmul fast float %5183, %5183
  %5236 = fmul fast float %5195, %5195
  %5237 = fmul fast float %5185, %5185
  %5238 = fadd fast float %5237, %5235
  %5239 = fadd fast float %5238, %5236
  %5240 = call float @dx.op.unary.f32(i32 24, float %5239)  ; Sqrt(value)
  %5241 = fcmp fast ugt float %5240, 0.000000e+00
  br i1 %5241, label %5242, label %5257

; <label>:5242                                    ; preds = %5233
  %5243 = fsub fast float -0.000000e+00, %5185
  %5244 = fdiv fast float %5243, %5240
  %5245 = fsub fast float -0.000000e+00, %5183
  %5246 = fdiv fast float %5245, %5240
  %5247 = fdiv fast float %5195, %5240
  %5248 = fmul fast float %5194, 0x3FE279A760000000
  %5249 = fmul fast float %5246, %5183
  %5250 = fmul fast float %5247, %5195
  %5251 = fmul fast float %5244, %5185
  %5252 = fadd fast float %5249, %5251
  %5253 = fsub fast float %5252, %5250
  %5254 = call float @dx.op.unary.f32(i32 6, float %5253)  ; FAbs(value)
  %5255 = fadd fast float %5254, 0x3DDB7CDFE0000000
  %5256 = fdiv fast float %5248, %5255
  br label %5257

; <label>:5257                                    ; preds = %5242, %5233
  %5258 = phi float [ %5256, %5242 ], [ 1.000000e+00, %5233 ]
  %5259 = call float @dx.op.binary.f32(i32 36, float %5258, float %5234)  ; FMin(a,b)
  %5260 = fmul fast float %5166, %5166
  %5261 = fmul fast float %5180, %5180
  %5262 = fmul fast float %5168, %5168
  %5263 = fadd fast float %5262, %5260
  %5264 = fadd fast float %5263, %5261
  %5265 = call float @dx.op.unary.f32(i32 24, float %5264)  ; Sqrt(value)
  %5266 = fcmp fast ugt float %5265, 0.000000e+00
  br i1 %5266, label %5267, label %5282

; <label>:5267                                    ; preds = %5257
  %5268 = fsub fast float -0.000000e+00, %5168
  %5269 = fdiv fast float %5268, %5265
  %5270 = fsub fast float -0.000000e+00, %5166
  %5271 = fdiv fast float %5270, %5265
  %5272 = fdiv fast float %5180, %5265
  %5273 = fmul fast float %5179, 0x3FE279A760000000
  %5274 = fmul fast float %5271, %5166
  %5275 = fmul fast float %5272, %5180
  %5276 = fmul fast float %5269, %5168
  %5277 = fadd fast float %5274, %5276
  %5278 = fsub fast float %5277, %5275
  %5279 = call float @dx.op.unary.f32(i32 6, float %5278)  ; FAbs(value)
  %5280 = fadd fast float %5279, 0x3DDB7CDFE0000000
  %5281 = fdiv fast float %5273, %5280
  br label %5282

; <label>:5282                                    ; preds = %5267, %5257
  %5283 = phi float [ %5281, %5267 ], [ 1.000000e+00, %5257 ]
  %5284 = call float @dx.op.binary.f32(i32 36, float %5283, float %5259)  ; FMin(a,b)
  %5285 = call float @dx.op.unary.f32(i32 7, float %5284)  ; Saturate(value)
  %5286 = fcmp fast olt float %5285, 1.000000e+00
  br i1 %5286, label %5287, label %5297

; <label>:5287                                    ; preds = %5282
  %5288 = fmul fast float %5285, %5166
  %5289 = fmul fast float %5285, %5180
  %5290 = fmul fast float %5285, %5168
  %5291 = fmul fast float %5285, %5183
  %5292 = fmul fast float %5285, %5195
  %5293 = fmul fast float %5285, %5185
  %5294 = fmul fast float %5285, %5198
  %5295 = fmul fast float %5285, %5210
  %5296 = fmul fast float %5285, %5200
  br label %5297

; <label>:5297                                    ; preds = %5287, %5282
  %5298 = phi float [ %5294, %5287 ], [ %5198, %5282 ]
  %5299 = phi float [ %5295, %5287 ], [ %5210, %5282 ]
  %5300 = phi float [ %5296, %5287 ], [ %5200, %5282 ]
  %5301 = phi float [ %5291, %5287 ], [ %5183, %5282 ]
  %5302 = phi float [ %5292, %5287 ], [ %5195, %5282 ]
  %5303 = phi float [ %5293, %5287 ], [ %5185, %5282 ]
  %5304 = phi float [ %5288, %5287 ], [ %5166, %5282 ]
  %5305 = phi float [ %5289, %5287 ], [ %5180, %5282 ]
  %5306 = phi float [ %5290, %5287 ], [ %5168, %5282 ]
  %5307 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5179)  ; FMax(a,b)
  %5308 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5194)  ; FMax(a,b)
  %5309 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5209)  ; FMax(a,b)
  %5310 = fcmp fast oge float %4967, 0.000000e+00
  %5311 = and i1 %5310, %4738
  %5312 = fcmp fast ole float %4967, 1.000000e+00
  %5313 = and i1 %5312, %5311
  %5314 = fcmp fast oge float %4968, 0.000000e+00
  %5315 = and i1 %5314, %5313
  %5316 = fcmp fast ole float %4968, 1.000000e+00
  %5317 = and i1 %5316, %5315
  br i1 %5317, label %5318, label %5463, !dx.controlflow.hints !83

; <label>:5318                                    ; preds = %5297
  %5319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %5320 = extractvalue %dx.types.CBufRet.f32 %5319, 2
  %5321 = extractvalue %dx.types.CBufRet.f32 %5319, 3
  %5322 = fmul fast float %5320, %4967
  %5323 = fmul fast float %5321, %4968
  %5324 = call float @dx.op.unary.f32(i32 27, float %5322)  ; Round_ni(value)
  %5325 = call float @dx.op.unary.f32(i32 27, float %5323)  ; Round_ni(value)
  %5326 = fptosi float %5324 to i32
  %5327 = fptosi float %5325 to i32
  %5328 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5326, i32 %5327, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5329 = extractvalue %dx.types.ResRet.i32 %5328, 0
  %5330 = and i32 %5329, 65535
  %5331 = lshr i32 %5329, 16
  %5332 = icmp eq i32 %5330, 65535
  br i1 %5332, label %5369, label %5333

; <label>:5333                                    ; preds = %5318
  %5334 = extractvalue %dx.types.CBufRet.f32 %4736, 1
  %5335 = extractvalue %dx.types.CBufRet.f32 %5319, 0
  %5336 = extractvalue %dx.types.CBufRet.f32 %5319, 1
  %5337 = fmul fast float %5335, %4967
  %5338 = fmul fast float %5336, %4968
  %5339 = fmul fast float %5337, 1.250000e-01
  %5340 = fmul fast float %5338, 1.250000e-01
  %5341 = call float @dx.op.unary.f32(i32 27, float %5339)  ; Round_ni(value)
  %5342 = call float @dx.op.unary.f32(i32 27, float %5340)  ; Round_ni(value)
  %5343 = fmul fast float %5341, 8.000000e+00
  %5344 = fmul fast float %5342, 8.000000e+00
  %5345 = and i32 %5329, 255
  %5346 = lshr i32 %5329, 8
  %5347 = and i32 %5346, 255
  %5348 = mul nuw nsw i32 %5345, 9
  %5349 = uitofp i32 %5348 to float
  %5350 = mul nuw nsw i32 %5347, 9
  %5351 = uitofp i32 %5350 to float
  %5352 = fadd fast float %5349, 5.000000e-01
  %5353 = fadd fast float %5352, %5337
  %5354 = fsub fast float %5353, %5343
  %5355 = fadd fast float %5351, 5.000000e-01
  %5356 = fadd fast float %5355, %5338
  %5357 = fsub fast float %5356, %5344
  %5358 = fdiv fast float %5354, %4737
  %5359 = fdiv fast float %5357, %5334
  %5360 = fmul fast float %4995, 4.375000e-01
  %5361 = fadd fast float %5360, 3.125000e-02
  %5362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %5358, float %5359, float %5361, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5363 = extractvalue %dx.types.ResRet.f32 %5362, 0
  %5364 = extractvalue %dx.types.ResRet.f32 %5362, 1
  %5365 = extractvalue %dx.types.ResRet.f32 %5362, 2
  %5366 = fadd fast float %5363, %5307
  %5367 = fadd fast float %5364, %5308
  %5368 = fadd fast float %5365, %5309
  br label %5369

; <label>:5369                                    ; preds = %5333, %5318
  %5370 = phi float [ %5368, %5333 ], [ %5309, %5318 ]
  %5371 = phi float [ %5367, %5333 ], [ %5308, %5318 ]
  %5372 = phi float [ %5366, %5333 ], [ %5307, %5318 ]
  %5373 = icmp eq i32 %5331, 65535
  br i1 %5373, label %5463, label %5374

; <label>:5374                                    ; preds = %5369
  %5375 = extractvalue %dx.types.CBufRet.f32 %4736, 1
  %5376 = extractvalue %dx.types.CBufRet.f32 %5319, 0
  %5377 = extractvalue %dx.types.CBufRet.f32 %5319, 1
  %5378 = fmul fast float %5376, %4967
  %5379 = fmul fast float %5377, %4968
  %5380 = fmul fast float %5378, 1.250000e-01
  %5381 = fmul fast float %5379, 1.250000e-01
  %5382 = call float @dx.op.unary.f32(i32 27, float %5380)  ; Round_ni(value)
  %5383 = call float @dx.op.unary.f32(i32 27, float %5381)  ; Round_ni(value)
  %5384 = fmul fast float %5382, 8.000000e+00
  %5385 = fmul fast float %5383, 8.000000e+00
  %5386 = fsub fast float %5378, %5384
  %5387 = fsub fast float %5379, %5385
  %5388 = fadd fast float %5386, 5.000000e-01
  %5389 = fadd fast float %5387, 5.000000e-01
  %5390 = and i32 %5331, 255
  %5391 = lshr i32 %5329, 24
  %5392 = mul nuw nsw i32 %5390, 9
  %5393 = uitofp i32 %5392 to float
  %5394 = mul nuw nsw i32 %5391, 9
  %5395 = uitofp i32 %5394 to float
  %5396 = fadd fast float %5388, %5393
  %5397 = fadd fast float %5389, %5395
  %5398 = fdiv fast float %5396, %4737
  %5399 = fdiv fast float %5397, %5375
  %5400 = fmul fast float %4995, 4.375000e-01
  %5401 = fadd fast float %5400, 3.125000e-02
  %5402 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %5398, float %5399, float %5401, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5403 = extractvalue %dx.types.ResRet.f32 %5402, 0
  %5404 = extractvalue %dx.types.ResRet.f32 %5402, 1
  %5405 = extractvalue %dx.types.ResRet.f32 %5402, 2
  %5406 = fadd fast float %5400, 5.312500e-01
  %5407 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %38, float %5398, float %5399, float %5406, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = extractvalue %dx.types.ResRet.f32 %5407, 1
  %5410 = extractvalue %dx.types.ResRet.f32 %5407, 2
  %5411 = fmul fast float %5408, 2.000000e+00
  %5412 = fmul fast float %5409, 2.000000e+00
  %5413 = fmul fast float %5410, 2.000000e+00
  %5414 = fadd fast float %5411, -1.000000e+00
  %5415 = fadd fast float %5412, -1.000000e+00
  %5416 = fadd fast float %5413, -1.000000e+00
  %5417 = fmul fast float %5414, %5414
  %5418 = fmul fast float %5415, %5415
  %5419 = fadd fast float %5417, %5418
  %5420 = fmul fast float %5416, %5416
  %5421 = fadd fast float %5419, %5420
  %5422 = call float @dx.op.unary.f32(i32 24, float %5421)  ; Sqrt(value)
  %5423 = fcmp fast ogt float %5422, 0.000000e+00
  br i1 %5423, label %5424, label %5428

; <label>:5424                                    ; preds = %5374
  %5425 = fdiv fast float %5414, %5422
  %5426 = fdiv fast float %5415, %5422
  %5427 = fdiv fast float %5416, %5422
  br label %5428

; <label>:5428                                    ; preds = %5424, %5374
  %5429 = phi float [ %5425, %5424 ], [ 0.000000e+00, %5374 ]
  %5430 = phi float [ %5426, %5424 ], [ 0.000000e+00, %5374 ]
  %5431 = phi float [ %5427, %5424 ], [ 0.000000e+00, %5374 ]
  %5432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5433 = extractvalue %dx.types.CBufRet.f32 %5432, 0
  %5434 = extractvalue %dx.types.CBufRet.f32 %5432, 1
  %5435 = fsub fast float %4588, %5433
  %5436 = fsub fast float %4589, %5434
  %5437 = fmul fast float %5435, %5435
  %5438 = fmul fast float %5436, %5436
  %5439 = fadd fast float %5437, %5438
  %5440 = call float @dx.op.unary.f32(i32 24, float %5439)  ; Sqrt(value)
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.CBufRet.f32 %5441, 1
  %5444 = fsub fast float %5440, %5442
  %5445 = fdiv fast float %5444, %5443
  %5446 = call float @dx.op.unary.f32(i32 7, float %5445)  ; Saturate(value)
  %5447 = fmul fast float %5446, 2.000000e+00
  %5448 = fsub fast float 3.000000e+00, %5447
  %5449 = fmul fast float %5446, %5446
  %5450 = fmul fast float %5449, %5448
  %5451 = call float @dx.op.dot3.f32(i32 55, float %5429, float %5430, float %5431, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %5452 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5451)  ; FMax(a,b)
  %5453 = fmul fast float %5452, 0x400C5BF8A0000000
  %5454 = fmul fast float %5450, %5403
  %5455 = fmul fast float %5454, %5453
  %5456 = fadd fast float %5455, %5372
  %5457 = fmul fast float %5450, %5404
  %5458 = fmul fast float %5457, %5453
  %5459 = fadd fast float %5458, %5371
  %5460 = fmul fast float %5450, %5405
  %5461 = fmul fast float %5460, %5453
  %5462 = fadd fast float %5461, %5370
  br label %5463

; <label>:5463                                    ; preds = %5428, %5369, %5297
  %5464 = phi float [ %5462, %5428 ], [ %5370, %5369 ], [ %5309, %5297 ]
  %5465 = phi float [ %5459, %5428 ], [ %5371, %5369 ], [ %5308, %5297 ]
  %5466 = phi float [ %5456, %5428 ], [ %5372, %5369 ], [ %5307, %5297 ]
  %5467 = fcmp fast ogt float %4954, %4991
  %5468 = and i1 %5310, %5467
  %5469 = and i1 %5312, %5468
  %5470 = and i1 %5314, %5469
  %5471 = and i1 %5316, %5470
  br i1 %5471, label %5472, label %5529, !dx.controlflow.hints !84

; <label>:5472                                    ; preds = %5463
  %5473 = fmul fast float %4993, 0x3FC24924A0000000
  %5474 = fsub fast float %4954, %4991
  %5475 = fdiv fast float %5474, %5473
  %5476 = call float @dx.op.unary.f32(i32 7, float %5475)  ; Saturate(value)
  %5477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %5478 = extractvalue %dx.types.CBufRet.f32 %5477, 0
  %5479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %5480 = extractvalue %dx.types.CBufRet.f32 %5479, 0
  %5481 = extractvalue %dx.types.CBufRet.f32 %5479, 1
  %5482 = extractvalue %dx.types.CBufRet.f32 %5479, 2
  %5483 = fsub fast float %5478, %5466
  %5484 = fsub fast float %5480, %5304
  %5485 = fsub fast float %5481, %5305
  %5486 = fsub fast float %5482, %5306
  %5487 = fmul fast float %5483, %5476
  %5488 = fmul fast float %5484, %5476
  %5489 = fmul fast float %5485, %5476
  %5490 = fmul fast float %5486, %5476
  %5491 = fadd fast float %5487, %5466
  %5492 = fadd fast float %5488, %5304
  %5493 = fadd fast float %5489, %5305
  %5494 = fadd fast float %5490, %5306
  %5495 = extractvalue %dx.types.CBufRet.f32 %5477, 1
  %5496 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %5497 = extractvalue %dx.types.CBufRet.f32 %5496, 0
  %5498 = extractvalue %dx.types.CBufRet.f32 %5496, 1
  %5499 = extractvalue %dx.types.CBufRet.f32 %5496, 2
  %5500 = fsub fast float %5495, %5465
  %5501 = fsub fast float %5497, %5301
  %5502 = fsub fast float %5498, %5302
  %5503 = fsub fast float %5499, %5303
  %5504 = fmul fast float %5500, %5476
  %5505 = fmul fast float %5501, %5476
  %5506 = fmul fast float %5502, %5476
  %5507 = fmul fast float %5503, %5476
  %5508 = fadd fast float %5504, %5465
  %5509 = fadd fast float %5505, %5301
  %5510 = fadd fast float %5506, %5302
  %5511 = fadd fast float %5507, %5303
  %5512 = extractvalue %dx.types.CBufRet.f32 %5477, 2
  %5513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %5514 = extractvalue %dx.types.CBufRet.f32 %5513, 0
  %5515 = extractvalue %dx.types.CBufRet.f32 %5513, 1
  %5516 = extractvalue %dx.types.CBufRet.f32 %5513, 2
  %5517 = fsub fast float %5512, %5464
  %5518 = fsub fast float %5514, %5298
  %5519 = fsub fast float %5515, %5299
  %5520 = fsub fast float %5516, %5300
  %5521 = fmul fast float %5517, %5476
  %5522 = fmul fast float %5518, %5476
  %5523 = fmul fast float %5519, %5476
  %5524 = fmul fast float %5520, %5476
  %5525 = fadd fast float %5521, %5464
  %5526 = fadd fast float %5522, %5298
  %5527 = fadd fast float %5523, %5299
  %5528 = fadd fast float %5524, %5300
  br label %5529

; <label>:5529                                    ; preds = %5472, %5463
  %5530 = phi float [ %5525, %5472 ], [ %5464, %5463 ]
  %5531 = phi float [ %5526, %5472 ], [ %5298, %5463 ]
  %5532 = phi float [ %5527, %5472 ], [ %5299, %5463 ]
  %5533 = phi float [ %5528, %5472 ], [ %5300, %5463 ]
  %5534 = phi float [ %5508, %5472 ], [ %5465, %5463 ]
  %5535 = phi float [ %5509, %5472 ], [ %5301, %5463 ]
  %5536 = phi float [ %5510, %5472 ], [ %5302, %5463 ]
  %5537 = phi float [ %5511, %5472 ], [ %5303, %5463 ]
  %5538 = phi float [ %5491, %5472 ], [ %5466, %5463 ]
  %5539 = phi float [ %5492, %5472 ], [ %5304, %5463 ]
  %5540 = phi float [ %5493, %5472 ], [ %5305, %5463 ]
  %5541 = phi float [ %5494, %5472 ], [ %5306, %5463 ]
  %5542 = extractvalue %dx.types.CBufRet.f32 %5116, 3
  %5543 = fmul fast float %5542, %5538
  %5544 = fmul fast float %5542, %5534
  %5545 = fmul fast float %5542, %5530
  %5546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5547 = extractvalue %dx.types.CBufRet.f32 %5546, 3
  %5548 = fmul fast float %5543, %5547
  %5549 = fmul fast float %5544, %5547
  %5550 = fmul fast float %5545, %5547
  %5551 = fmul fast float %5539, 1.500000e+00
  %5552 = fmul fast float %5551, %5542
  %5553 = fmul fast float %5552, %5547
  %5554 = fmul fast float %5540, 1.500000e+00
  %5555 = fmul fast float %5554, %5542
  %5556 = fmul fast float %5555, %5547
  %5557 = fmul fast float %5541, 1.500000e+00
  %5558 = fmul fast float %5557, %5542
  %5559 = fmul fast float %5558, %5547
  %5560 = fmul fast float %5535, 1.500000e+00
  %5561 = fmul fast float %5560, %5542
  %5562 = fmul fast float %5561, %5547
  %5563 = fmul fast float %5536, 1.500000e+00
  %5564 = fmul fast float %5563, %5542
  %5565 = fmul fast float %5564, %5547
  %5566 = fmul fast float %5537, 1.500000e+00
  %5567 = fmul fast float %5566, %5542
  %5568 = fmul fast float %5567, %5547
  %5569 = fmul fast float %5531, 1.500000e+00
  %5570 = fmul fast float %5569, %5542
  %5571 = fmul fast float %5570, %5547
  %5572 = fmul fast float %5532, 1.500000e+00
  %5573 = fmul fast float %5572, %5542
  %5574 = fmul fast float %5573, %5547
  %5575 = fmul fast float %5533, 1.500000e+00
  %5576 = fmul fast float %5575, %5542
  %5577 = fmul fast float %5576, %5547
  %5578 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5548)  ; FMax(a,b)
  %5579 = call float @dx.op.dot3.f32(i32 55, float %5553, float %5556, float %5559, float %5553, float %5556, float %5559)  ; Dot3(ax,ay,az,bx,by,bz)
  %5580 = fcmp fast oeq float %5579, 0.000000e+00
  %5581 = fcmp fast oeq float %5578, 0.000000e+00
  %5582 = or i1 %5581, %5580
  br i1 %5582, label %5612, label %5583

; <label>:5583                                    ; preds = %5529
  %5584 = fsub fast float -0.000000e+00, %5559
  %5585 = fsub fast float -0.000000e+00, %5553
  %5586 = call float @dx.op.unary.f32(i32 24, float %5579)  ; Sqrt(value)
  %5587 = fdiv fast float %5586, %5578
  %5588 = fcmp fast ogt float %5587, 0x3FFB6F8900000000
  %5589 = select i1 %5588, float 0x3FFB6F8900000000, float %5587
  %5590 = fmul fast float %5589, 0x3FE8A23460000000
  %5591 = call float @dx.op.unary.f32(i32 7, float %5590)  ; Saturate(value)
  %5592 = call float @dx.op.binary.f32(i32 35, float %5589, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5593 = fmul fast float %5591, %5578
  %5594 = fmul fast float %5592, 0x3FF279A740000000
  %5595 = fadd fast float %5594, -1.000000e+00
  %5596 = call float @dx.op.dot3.f32(i32 55, float %5584, float %5585, float %5556, float %5584, float %5585, float %5556)  ; Dot3(ax,ay,az,bx,by,bz)
  %5597 = call float @dx.op.unary.f32(i32 25, float %5596)  ; Rsqrt(value)
  %5598 = fmul fast float %5597, %5584
  %5599 = fmul fast float %5597, %5585
  %5600 = fmul fast float %5597, %5556
  %5601 = fmul fast float %5595, %5595
  %5602 = fsub fast float 1.000000e+00, %5601
  %5603 = fmul fast float %5592, 0x40005F8BE0000000
  %5604 = fsub fast float 0x400C5BF8A0000000, %5603
  %5605 = fdiv fast float %5593, %5604
  %5606 = fmul fast float %5605, 0x3FEE31C3C0000000
  %5607 = fmul fast float %5606, %5602
  %5608 = fmul fast float %5592, 0x3FDACB7480000000
  %5609 = fadd fast float %5608, 0xBFD7347680000000
  %5610 = fmul fast float %5609, %5605
  %5611 = fmul fast float %5610, %5602
  br label %5612

; <label>:5612                                    ; preds = %5583, %5529
  %5613 = phi float [ %5598, %5583 ], [ 0.000000e+00, %5529 ]
  %5614 = phi float [ %5599, %5583 ], [ 0.000000e+00, %5529 ]
  %5615 = phi float [ %5600, %5583 ], [ 0.000000e+00, %5529 ]
  %5616 = phi float [ %5607, %5583 ], [ 0.000000e+00, %5529 ]
  %5617 = phi float [ %5611, %5583 ], [ 0.000000e+00, %5529 ]
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %5615, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = fmul fast float %5618, %5618
  %5620 = fmul fast float %5619, 0x3FEE471020000000
  %5621 = fadd fast float %5620, 0xBFD42F6020000000
  %5622 = fmul fast float %5578, 0x3FD20DD760000000
  %5623 = fmul fast float %5621, %5617
  %5624 = fmul fast float %5616, 0x3FDF454380000000
  %5625 = fmul fast float %5624, %5618
  %5626 = fadd fast float %5625, %5622
  %5627 = fadd fast float %5626, %5623
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %5615, float %4578, float %4579, float %4580)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = fmul fast float %5628, 0x3FDF454380000000
  %5630 = fmul fast float %5628, %5628
  %5631 = fmul fast float %5630, 0x3FEE471020000000
  %5632 = fadd fast float %5631, 0xBFD42F6020000000
  %5633 = call float @dx.op.dot3.f32(i32 55, float %5578, float %5616, float %5617, float 0x3FD20DD760000000, float %5629, float %5632)  ; Dot3(ax,ay,az,bx,by,bz)
  %5634 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5549)  ; FMax(a,b)
  %5635 = call float @dx.op.dot3.f32(i32 55, float %5562, float %5565, float %5568, float %5562, float %5565, float %5568)  ; Dot3(ax,ay,az,bx,by,bz)
  %5636 = fcmp fast oeq float %5635, 0.000000e+00
  %5637 = fcmp fast oeq float %5634, 0.000000e+00
  %5638 = or i1 %5637, %5636
  br i1 %5638, label %5668, label %5639

; <label>:5639                                    ; preds = %5612
  %5640 = fsub fast float -0.000000e+00, %5568
  %5641 = fsub fast float -0.000000e+00, %5562
  %5642 = call float @dx.op.unary.f32(i32 24, float %5635)  ; Sqrt(value)
  %5643 = fdiv fast float %5642, %5634
  %5644 = fcmp fast ogt float %5643, 0x3FFB6F8900000000
  %5645 = select i1 %5644, float 0x3FFB6F8900000000, float %5643
  %5646 = fmul fast float %5645, 0x3FE8A23460000000
  %5647 = call float @dx.op.unary.f32(i32 7, float %5646)  ; Saturate(value)
  %5648 = call float @dx.op.binary.f32(i32 35, float %5645, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5649 = fmul fast float %5647, %5634
  %5650 = fmul fast float %5648, 0x3FF279A740000000
  %5651 = fadd fast float %5650, -1.000000e+00
  %5652 = call float @dx.op.dot3.f32(i32 55, float %5640, float %5641, float %5565, float %5640, float %5641, float %5565)  ; Dot3(ax,ay,az,bx,by,bz)
  %5653 = call float @dx.op.unary.f32(i32 25, float %5652)  ; Rsqrt(value)
  %5654 = fmul fast float %5653, %5640
  %5655 = fmul fast float %5653, %5641
  %5656 = fmul fast float %5653, %5565
  %5657 = fmul fast float %5651, %5651
  %5658 = fsub fast float 1.000000e+00, %5657
  %5659 = fmul fast float %5648, 0x40005F8BE0000000
  %5660 = fsub fast float 0x400C5BF8A0000000, %5659
  %5661 = fdiv fast float %5649, %5660
  %5662 = fmul fast float %5661, 0x3FEE31C3C0000000
  %5663 = fmul fast float %5662, %5658
  %5664 = fmul fast float %5648, 0x3FDACB7480000000
  %5665 = fadd fast float %5664, 0xBFD7347680000000
  %5666 = fmul fast float %5665, %5661
  %5667 = fmul fast float %5666, %5658
  br label %5668

; <label>:5668                                    ; preds = %5639, %5612
  %5669 = phi float [ %5654, %5639 ], [ 0.000000e+00, %5612 ]
  %5670 = phi float [ %5655, %5639 ], [ 0.000000e+00, %5612 ]
  %5671 = phi float [ %5656, %5639 ], [ 0.000000e+00, %5612 ]
  %5672 = phi float [ %5663, %5639 ], [ 0.000000e+00, %5612 ]
  %5673 = phi float [ %5667, %5639 ], [ 0.000000e+00, %5612 ]
  %5674 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %5671, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %5675 = fmul fast float %5674, %5674
  %5676 = fmul fast float %5675, 0x3FEE471020000000
  %5677 = fadd fast float %5676, 0xBFD42F6020000000
  %5678 = fmul fast float %5634, 0x3FD20DD760000000
  %5679 = fmul fast float %5677, %5673
  %5680 = fmul fast float %5672, 0x3FDF454380000000
  %5681 = fmul fast float %5680, %5674
  %5682 = fadd fast float %5681, %5678
  %5683 = fadd fast float %5682, %5679
  %5684 = call float @dx.op.dot3.f32(i32 55, float %5669, float %5670, float %5671, float %4578, float %4579, float %4580)  ; Dot3(ax,ay,az,bx,by,bz)
  %5685 = fmul fast float %5684, 0x3FDF454380000000
  %5686 = fmul fast float %5684, %5684
  %5687 = fmul fast float %5686, 0x3FEE471020000000
  %5688 = fadd fast float %5687, 0xBFD42F6020000000
  %5689 = call float @dx.op.dot3.f32(i32 55, float %5634, float %5672, float %5673, float 0x3FD20DD760000000, float %5685, float %5688)  ; Dot3(ax,ay,az,bx,by,bz)
  %5690 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5550)  ; FMax(a,b)
  %5691 = call float @dx.op.dot3.f32(i32 55, float %5571, float %5574, float %5577, float %5571, float %5574, float %5577)  ; Dot3(ax,ay,az,bx,by,bz)
  %5692 = fcmp fast oeq float %5691, 0.000000e+00
  %5693 = fcmp fast oeq float %5690, 0.000000e+00
  %5694 = or i1 %5693, %5692
  br i1 %5694, label %5724, label %5695

; <label>:5695                                    ; preds = %5668
  %5696 = fsub fast float -0.000000e+00, %5577
  %5697 = fsub fast float -0.000000e+00, %5571
  %5698 = call float @dx.op.unary.f32(i32 24, float %5691)  ; Sqrt(value)
  %5699 = fdiv fast float %5698, %5690
  %5700 = fcmp fast ogt float %5699, 0x3FFB6F8900000000
  %5701 = select i1 %5700, float 0x3FFB6F8900000000, float %5699
  %5702 = fmul fast float %5701, 0x3FE8A23460000000
  %5703 = call float @dx.op.unary.f32(i32 7, float %5702)  ; Saturate(value)
  %5704 = call float @dx.op.binary.f32(i32 35, float %5701, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5705 = fmul fast float %5703, %5690
  %5706 = fmul fast float %5704, 0x3FF279A740000000
  %5707 = fadd fast float %5706, -1.000000e+00
  %5708 = call float @dx.op.dot3.f32(i32 55, float %5696, float %5697, float %5574, float %5696, float %5697, float %5574)  ; Dot3(ax,ay,az,bx,by,bz)
  %5709 = call float @dx.op.unary.f32(i32 25, float %5708)  ; Rsqrt(value)
  %5710 = fmul fast float %5709, %5696
  %5711 = fmul fast float %5709, %5697
  %5712 = fmul fast float %5709, %5574
  %5713 = fmul fast float %5707, %5707
  %5714 = fsub fast float 1.000000e+00, %5713
  %5715 = fmul fast float %5704, 0x40005F8BE0000000
  %5716 = fsub fast float 0x400C5BF8A0000000, %5715
  %5717 = fdiv fast float %5705, %5716
  %5718 = fmul fast float %5717, 0x3FEE31C3C0000000
  %5719 = fmul fast float %5718, %5714
  %5720 = fmul fast float %5704, 0x3FDACB7480000000
  %5721 = fadd fast float %5720, 0xBFD7347680000000
  %5722 = fmul fast float %5721, %5717
  %5723 = fmul fast float %5722, %5714
  br label %5724

; <label>:5724                                    ; preds = %5695, %5668
  %5725 = phi float [ %5710, %5695 ], [ 0.000000e+00, %5668 ]
  %5726 = phi float [ %5711, %5695 ], [ 0.000000e+00, %5668 ]
  %5727 = phi float [ %5712, %5695 ], [ 0.000000e+00, %5668 ]
  %5728 = phi float [ %5719, %5695 ], [ 0.000000e+00, %5668 ]
  %5729 = phi float [ %5723, %5695 ], [ 0.000000e+00, %5668 ]
  %5730 = call float @dx.op.dot3.f32(i32 55, float %5725, float %5726, float %5727, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %5731 = fmul fast float %5730, %5730
  %5732 = fmul fast float %5731, 0x3FEE471020000000
  %5733 = fadd fast float %5732, 0xBFD42F6020000000
  %5734 = fmul fast float %5690, 0x3FD20DD760000000
  %5735 = fmul fast float %5733, %5729
  %5736 = fmul fast float %5728, 0x3FDF454380000000
  %5737 = fmul fast float %5736, %5730
  %5738 = fadd fast float %5737, %5734
  %5739 = fadd fast float %5738, %5735
  %5740 = call float @dx.op.dot3.f32(i32 55, float %5725, float %5726, float %5727, float %4578, float %4579, float %4580)  ; Dot3(ax,ay,az,bx,by,bz)
  %5741 = fmul fast float %5740, 0x3FDF454380000000
  %5742 = fmul fast float %5740, %5740
  %5743 = fmul fast float %5742, 0x3FEE471020000000
  %5744 = fadd fast float %5743, 0xBFD42F6020000000
  %5745 = call float @dx.op.dot3.f32(i32 55, float %5690, float %5728, float %5729, float 0x3FD20DD760000000, float %5741, float %5744)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = call float @dx.op.binary.f32(i32 35, float %5627, float 0.000000e+00)  ; FMax(a,b)
  %5747 = call float @dx.op.binary.f32(i32 35, float %5683, float 0.000000e+00)  ; FMax(a,b)
  %5748 = call float @dx.op.binary.f32(i32 35, float %5739, float 0.000000e+00)  ; FMax(a,b)
  %5749 = call float @dx.op.binary.f32(i32 35, float %5633, float 0.000000e+00)  ; FMax(a,b)
  %5750 = call float @dx.op.binary.f32(i32 35, float %5689, float 0.000000e+00)  ; FMax(a,b)
  %5751 = call float @dx.op.binary.f32(i32 35, float %5745, float 0.000000e+00)  ; FMax(a,b)
  %5752 = fsub fast float %4948, %5746
  %5753 = fsub fast float %4949, %5747
  %5754 = fsub fast float %4950, %5748
  %5755 = fmul fast float %5752, %4629
  %5756 = fmul fast float %5753, %4629
  %5757 = fmul fast float %5754, %4629
  %5758 = fadd fast float %5755, %5746
  %5759 = fadd fast float %5756, %5747
  %5760 = fadd fast float %5757, %5748
  %5761 = fsub fast float %4945, %5749
  %5762 = fsub fast float %4946, %5750
  %5763 = fsub fast float %4947, %5751
  %5764 = fmul fast float %5761, %4629
  %5765 = fmul fast float %5762, %4629
  %5766 = fmul fast float %5763, %4629
  %5767 = fadd fast float %5764, %5749
  %5768 = fadd fast float %5765, %5750
  %5769 = fadd fast float %5766, %5751
  br label %5770

; <label>:5770                                    ; preds = %5724, %4944
  %5771 = phi float [ %5767, %5724 ], [ %4945, %4944 ]
  %5772 = phi float [ %5768, %5724 ], [ %4946, %4944 ]
  %5773 = phi float [ %5769, %5724 ], [ %4947, %4944 ]
  %5774 = phi float [ %5758, %5724 ], [ %4948, %4944 ]
  %5775 = phi float [ %5759, %5724 ], [ %4949, %4944 ]
  %5776 = phi float [ %5760, %5724 ], [ %4950, %4944 ]
  %5777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5778 = extractvalue %dx.types.CBufRet.f32 %5777, 0
  %5779 = call float @dx.op.binary.f32(i32 36, float %4559, float %5778)  ; FMin(a,b)
  %5780 = fsub fast float 1.000000e+00, %4581
  %5781 = fmul fast float %5779, %5780
  %5782 = fsub fast float 1.000000e+00, %5781
  %5783 = bitcast float %5782 to i32
  %5784 = sub nsw i32 2129859010, %5783
  %5785 = bitcast i32 %5784 to float
  %5786 = call float @dx.op.binary.f32(i32 36, float %4560, float %5778)  ; FMin(a,b)
  %5787 = fmul fast float %5786, %5780
  %5788 = fsub fast float 1.000000e+00, %5787
  %5789 = bitcast float %5788 to i32
  %5790 = sub nsw i32 2129859010, %5789
  %5791 = bitcast i32 %5790 to float
  %5792 = call float @dx.op.binary.f32(i32 36, float %4561, float %5778)  ; FMin(a,b)
  %5793 = fmul fast float %5792, %5780
  %5794 = fsub fast float 1.000000e+00, %5793
  %5795 = bitcast float %5794 to i32
  %5796 = sub nsw i32 2129859010, %5795
  %5797 = bitcast i32 %5796 to float
  %5798 = fmul fast float %5774, %4581
  %5799 = fmul fast float %5798, %5785
  %5800 = fmul fast float %5775, %4581
  %5801 = fmul fast float %5800, %5791
  %5802 = fmul fast float %5776, %4581
  %5803 = fmul fast float %5802, %5797
  %5804 = call float @dx.op.binary.f32(i32 36, float %4565, float %5778)  ; FMin(a,b)
  %5805 = fmul fast float %5804, %5780
  %5806 = fsub fast float 1.000000e+00, %5805
  %5807 = bitcast float %5806 to i32
  %5808 = sub nsw i32 2129859010, %5807
  %5809 = bitcast i32 %5808 to float
  %5810 = call float @dx.op.binary.f32(i32 36, float %4566, float %5778)  ; FMin(a,b)
  %5811 = fmul fast float %5810, %5780
  %5812 = fsub fast float 1.000000e+00, %5811
  %5813 = bitcast float %5812 to i32
  %5814 = sub nsw i32 2129859010, %5813
  %5815 = bitcast i32 %5814 to float
  %5816 = call float @dx.op.binary.f32(i32 36, float %4570, float %5778)  ; FMin(a,b)
  %5817 = fmul fast float %5816, %5780
  %5818 = fsub fast float 1.000000e+00, %5817
  %5819 = bitcast float %5818 to i32
  %5820 = sub nsw i32 2129859010, %5819
  %5821 = bitcast i32 %5820 to float
  %5822 = fmul fast float %5771, %4581
  %5823 = fmul fast float %5822, %5809
  %5824 = fmul fast float %5772, %4581
  %5825 = fmul fast float %5824, %5815
  %5826 = fmul fast float %5773, %4581
  %5827 = fmul fast float %5826, %5821
  %5828 = call float @dx.op.dot3.f32(i32 55, float %5799, float %5801, float %5803, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5829 = select i1 %164, float 0.000000e+00, float %5799
  %5830 = select i1 %164, float %5828, float %5801
  %5831 = select i1 %164, float 0.000000e+00, float %5803
  %5832 = call float @dx.op.dot3.f32(i32 55, float %5823, float %5825, float %5827, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5833 = select i1 %164, float 0.000000e+00, float %5823
  %5834 = select i1 %164, float %5832, float %5825
  %5835 = select i1 %164, float 0.000000e+00, float %5827
  %5836 = fmul fast float %4572, 9.843750e-01
  %5837 = fmul fast float %4568, 9.843750e-01
  %5838 = fadd fast float %5836, 7.812500e-03
  %5839 = fadd fast float %5837, 7.812500e-03
  %5840 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %5838, float %5839, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5841 = extractvalue %dx.types.ResRet.f32 %5840, 2
  %5842 = extractvalue %dx.types.ResRet.f32 %5840, 3
  %5843 = fmul fast float %5841, %4565
  %5844 = fmul fast float %5841, %4566
  %5845 = fmul fast float %5841, %4570
  %5846 = fadd fast float %5843, %5842
  %5847 = fadd fast float %5844, %5842
  %5848 = fadd fast float %5845, %5842
  %5849 = fcmp fast ogt float %3957, 0.000000e+00
  br i1 %5849, label %5850, label %5876

; <label>:5850                                    ; preds = %5770
  %5851 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %38, float %3957, float %4572, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5852 = extractvalue %dx.types.ResRet.f32 %5851, 0
  %5853 = extractvalue %dx.types.ResRet.f32 %5851, 1
  %5854 = extractvalue %dx.types.ResRet.f32 %5851, 2
  %5855 = fadd fast float %5852, -5.000000e-01
  %5856 = fadd fast float %5853, -5.000000e-01
  %5857 = fadd fast float %5854, -5.000000e-01
  %5858 = fsub fast float 1.000000e+00, %4565
  %5859 = fsub fast float 1.000000e+00, %4566
  %5860 = fsub fast float 1.000000e+00, %4570
  %5861 = fmul fast float %4565, 4.000000e+00
  %5862 = fmul fast float %5861, %5858
  %5863 = fmul fast float %5862, %5855
  %5864 = fmul fast float %4566, 4.000000e+00
  %5865 = fmul fast float %5864, %5859
  %5866 = fmul fast float %5865, %5856
  %5867 = fmul fast float %4570, 4.000000e+00
  %5868 = fmul fast float %5867, %5860
  %5869 = fmul fast float %5868, %5857
  %5870 = fadd fast float %5863, %5846
  %5871 = fadd fast float %5866, %5847
  %5872 = fadd fast float %5869, %5848
  %5873 = call float @dx.op.unary.f32(i32 7, float %5870)  ; Saturate(value)
  %5874 = call float @dx.op.unary.f32(i32 7, float %5871)  ; Saturate(value)
  %5875 = call float @dx.op.unary.f32(i32 7, float %5872)  ; Saturate(value)
  br label %5876

; <label>:5876                                    ; preds = %5850, %5770
  %5877 = phi float [ %5873, %5850 ], [ %5846, %5770 ]
  %5878 = phi float [ %5874, %5850 ], [ %5847, %5770 ]
  %5879 = phi float [ %5875, %5850 ], [ %5848, %5770 ]
  %5880 = call float @dx.op.binary.f32(i32 35, float %5878, float %5879)  ; FMax(a,b)
  %5881 = call float @dx.op.binary.f32(i32 35, float %5877, float %5880)  ; FMax(a,b)
  %5882 = fsub fast float 1.000000e+00, %5881
  %5883 = fmul fast float %5882, %5829
  %5884 = fmul fast float %5882, %5830
  %5885 = fmul fast float %5882, %5831
  %5886 = call float @dx.op.dot3.f32(i32 55, float %4559, float %4560, float %4561, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5887 = fcmp fast ogt float %5886, 0x3E7FF19E20000000
  %5888 = fdiv fast float 1.000000e+00, %5886
  %5889 = select i1 %5887, float %5888, float 0.000000e+00
  %5890 = fmul fast float %5889, %4559
  %5891 = fmul fast float %5889, %4560
  %5892 = fmul fast float %5889, %4561
  %5893 = fadd fast float %5890, -1.000000e+00
  %5894 = fadd fast float %5891, -1.000000e+00
  %5895 = fadd fast float %5892, -1.000000e+00
  %5896 = fmul fast float %5893, 5.000000e-01
  %5897 = fmul fast float %5894, 5.000000e-01
  %5898 = fmul fast float %5895, 5.000000e-01
  %5899 = fadd fast float %5896, 1.000000e+00
  %5900 = fadd fast float %5897, 1.000000e+00
  %5901 = fadd fast float %5898, 1.000000e+00
  %5902 = fmul fast float %5877, %5833
  %5903 = fmul fast float %5878, %5834
  %5904 = fmul fast float %5879, %5835
  %5905 = fsub fast float 1.000000e+00, %4572
  %5906 = bitcast float %5905 to i32
  %5907 = sitofp i32 %5906 to float
  %5908 = fmul fast float %5907, 5.000000e+00
  %5909 = fadd fast float %5908, 0xC1EFBF8940000000
  %5910 = fptosi float %5909 to i32
  %5911 = bitcast i32 %5910 to float
  %5912 = fmul fast float %5911, %3958
  %5913 = fmul fast float %5829, %5912
  %5914 = fmul fast float %5913, %5882
  %5915 = fmul fast float %5914, %5899
  %5916 = fmul fast float %5830, %5912
  %5917 = fmul fast float %5916, %5882
  %5918 = fmul fast float %5917, %5900
  %5919 = fmul fast float %5831, %5912
  %5920 = fmul fast float %5919, %5882
  %5921 = fmul fast float %5920, %5901
  %5922 = fmul fast float %5883, %3954
  %5923 = fmul fast float %5884, %3954
  %5924 = fmul fast float %5885, %3954
  %5925 = fadd fast float %5902, %3950
  %5926 = fadd fast float %5925, %5915
  %5927 = fmul fast float %5926, %3954
  %5928 = fadd fast float %5903, %3951
  %5929 = fadd fast float %5928, %5918
  %5930 = fmul fast float %5929, %3954
  %5931 = fadd fast float %5904, %3952
  %5932 = fadd fast float %5931, %5921
  %5933 = fmul fast float %5932, %3954
  %5934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5935 = extractvalue %dx.types.CBufRet.f32 %5934, 3
  %5936 = fcmp fast oeq float %5935, 0.000000e+00
  br i1 %5936, label %6165, label %5937

; <label>:5937                                    ; preds = %5876
  %5938 = extractvalue %dx.types.CBufRet.f32 %5934, 0
  %5939 = extractvalue %dx.types.CBufRet.f32 %5934, 1
  %5940 = extractvalue %dx.types.CBufRet.f32 %5934, 2
  %5941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5942 = extractvalue %dx.types.CBufRet.f32 %5941, 0
  %5943 = extractvalue %dx.types.CBufRet.f32 %5941, 1
  %5944 = extractvalue %dx.types.CBufRet.f32 %5941, 2
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.CBufRet.f32 %5945, 1
  %5948 = call float @dx.op.dot3.f32(i32 55, float %5942, float %5943, float %5944, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5949 = select i1 %164, float %5946, float %5942
  %5950 = select i1 %164, float %5948, float %5943
  %5951 = select i1 %164, float %5947, float %5944
  %5952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5953 = extractvalue %dx.types.CBufRet.f32 %5952, 1
  %5954 = fcmp fast une float %5953, 0.000000e+00
  br i1 %5954, label %5955, label %5972

; <label>:5955                                    ; preds = %5937
  %5956 = fptoui float %67 to i32
  %5957 = fptoui float %68 to i32
  %5958 = lshr i32 %5956, 4
  %5959 = lshr i32 %5957, 4
  %5960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5961 = extractvalue %dx.types.CBufRet.f32 %5960, 0
  %5962 = fptoui float %5961 to i32
  %5963 = add i32 %5962, 15
  %5964 = lshr i32 %5963, 4
  %5965 = mul i32 %5964, %5959
  %5966 = add i32 %5965, %5958
  %5967 = shl i32 %5966, 3
  %5968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5967, i32 undef)  ; BufferLoad(srv,index,wot)
  %5969 = extractvalue %dx.types.ResRet.i32 %5968, 0
  %5970 = and i32 %5969, -268435456
  %5971 = icmp eq i32 %5970, -1342177280
  br i1 %5971, label %5982, label %5972

; <label>:5972                                    ; preds = %5955, %5937
  %5973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %40, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5974 = extractvalue %dx.types.CBufRet.f32 %5973, 2
  %5975 = extractvalue %dx.types.CBufRet.f32 %5973, 3
  %5976 = fmul fast float %5974, %67
  %5977 = fmul fast float %5975, %68
  %5978 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %39, float %5976, float %5977, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5979 = extractvalue %dx.types.ResRet.f32 %5978, 0
  %5980 = extractvalue %dx.types.ResRet.f32 %5978, 1
  %5981 = extractvalue %dx.types.ResRet.f32 %5978, 2
  br label %5982

; <label>:5982                                    ; preds = %5972, %5955
  %5983 = phi float [ %5979, %5972 ], [ 0.000000e+00, %5955 ]
  %5984 = phi float [ %5980, %5972 ], [ 0.000000e+00, %5955 ]
  %5985 = phi float [ %5981, %5972 ], [ 0.000000e+00, %5955 ]
  %5986 = call float @dx.op.binary.f32(i32 36, float %5984, float %5985)  ; FMin(a,b)
  %5987 = call float @dx.op.binary.f32(i32 36, float %5983, float %5986)  ; FMin(a,b)
  %5988 = fcmp fast ogt float %5987, 0.000000e+00
  br i1 %5988, label %5989, label %6165, !dx.controlflow.hints !85

; <label>:5989                                    ; preds = %5982
  %5990 = fmul fast float %5983, %5949
  %5991 = fmul fast float %5984, %5950
  %5992 = fmul fast float %5985, %5951
  %5993 = fsub fast float %5938, %4558
  %5994 = fsub fast float %5939, %4557
  %5995 = fsub fast float %5940, %4556
  %5996 = call float @dx.op.dot3.f32(i32 55, float %5993, float %5994, float %5995, float %5993, float %5994, float %5995)  ; Dot3(ax,ay,az,bx,by,bz)
  %5997 = call float @dx.op.unary.f32(i32 25, float %5996)  ; Rsqrt(value)
  %5998 = fmul fast float %5997, %5993
  %5999 = fmul fast float %5997, %5994
  %6000 = fmul fast float %5997, %5995
  %6001 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5939, float %5940, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %6002 = call float @dx.op.dot3.f32(i32 55, float %4555, float %4554, float %4553, float %5998, float %5999, float %6000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6003 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6004 = bitcast i32 %4584 to float
  %6005 = fmul fast float %6003, %6003
  %6006 = fmul fast float %6005, %6004
  %6007 = call float @dx.op.unary.f32(i32 7, float %6006)  ; Saturate(value)
  %6008 = fmul fast float %6007, %6003
  %6009 = call float @dx.op.dot3.f32(i32 55, float %4562, float %4563, float %4564, float %5998, float %5999, float %6000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6010 = fmul fast float %6009, %6009
  %6011 = call float @dx.op.unary.f32(i32 6, float %6001)  ; FAbs(value)
  %6012 = fsub fast float 1.000000e+00, %4568
  %6013 = call float @dx.op.binary.f32(i32 35, float %6012, float 0x3F847AE140000000)  ; FMax(a,b)
  %6014 = fmul fast float %6013, %6013
  %6015 = fmul fast float %6014, %6014
  %6016 = fsub fast float 1.000000e+00, %6015
  %6017 = fmul fast float %4572, %4572
  %6018 = fmul fast float %6017, %6016
  %6019 = fadd fast float %6018, %6015
  %6020 = bitcast float %6019 to i32
  %6021 = ashr i32 %6020, 1
  %6022 = add nsw i32 %6021, 532487669
  %6023 = bitcast i32 %6022 to float
  %6024 = fadd fast float %6023, %4572
  %6025 = fmul fast float %6015, %6010
  %6026 = fsub fast float 1.000000e+00, %6010
  %6027 = fadd fast float %6026, %6025
  %6028 = fmul fast float %6011, %6011
  %6029 = fmul fast float %6028, %6016
  %6030 = fadd fast float %6029, %6015
  %6031 = bitcast float %6030 to i32
  %6032 = ashr i32 %6031, 1
  %6033 = add nsw i32 %6032, 532487669
  %6034 = bitcast i32 %6033 to float
  %6035 = fadd fast float %6034, %6011
  %6036 = fmul fast float %6027, %6027
  %6037 = fmul fast float %6036, %6024
  %6038 = fmul fast float %6037, %6035
  %6039 = fdiv fast float 0x3FF0A00000000000, %6038
  %6040 = fmul fast float %6039, %6015
  %6041 = call float @dx.op.unary.f32(i32 6, float %6002)  ; FAbs(value)
  %6042 = fsub fast float 1.000000e+00, %6041
  %6043 = bitcast float %6042 to i32
  %6044 = sitofp i32 %6043 to float
  %6045 = fmul fast float %6044, 5.000000e+00
  %6046 = fadd fast float %6045, 0xC1EFBF8940000000
  %6047 = fptosi float %6046 to i32
  %6048 = bitcast i32 %6047 to float
  %6049 = fsub fast float 1.000000e+00, %4565
  %6050 = fsub fast float 1.000000e+00, %4566
  %6051 = fsub fast float 1.000000e+00, %4570
  %6052 = fmul fast float %6048, %6049
  %6053 = fmul fast float %6048, %6050
  %6054 = fmul fast float %6048, %6051
  %6055 = fadd fast float %6052, %4565
  %6056 = fadd fast float %6053, %4566
  %6057 = fadd fast float %6054, %4570
  br i1 %5849, label %6058, label %6081

; <label>:6058                                    ; preds = %5989
  %6059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %38, float %3957, float %6041, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6060 = extractvalue %dx.types.ResRet.f32 %6059, 0
  %6061 = extractvalue %dx.types.ResRet.f32 %6059, 1
  %6062 = extractvalue %dx.types.ResRet.f32 %6059, 2
  %6063 = fadd fast float %6060, -5.000000e-01
  %6064 = fadd fast float %6061, -5.000000e-01
  %6065 = fadd fast float %6062, -5.000000e-01
  %6066 = fmul fast float %4565, 4.000000e+00
  %6067 = fmul fast float %6066, %6049
  %6068 = fmul fast float %6067, %6063
  %6069 = fmul fast float %4566, 4.000000e+00
  %6070 = fmul fast float %6069, %6050
  %6071 = fmul fast float %6070, %6064
  %6072 = fmul fast float %4570, 4.000000e+00
  %6073 = fmul fast float %6072, %6051
  %6074 = fmul fast float %6073, %6065
  %6075 = fadd fast float %6068, %6055
  %6076 = fadd fast float %6071, %6056
  %6077 = fadd fast float %6074, %6057
  %6078 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6079 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6080 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  br label %6081

; <label>:6081                                    ; preds = %6058, %5989
  %6082 = phi float [ %6078, %6058 ], [ %6055, %5989 ]
  %6083 = phi float [ %6079, %6058 ], [ %6056, %5989 ]
  %6084 = phi float [ %6080, %6058 ], [ %6057, %5989 ]
  %6085 = fmul fast float %6001, 9.843750e-01
  %6086 = fadd fast float %6085, 7.812500e-03
  %6087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %6086, float %5839, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6088 = extractvalue %dx.types.ResRet.f32 %6087, 2
  %6089 = extractvalue %dx.types.ResRet.f32 %6087, 3
  %6090 = fmul fast float %6088, %4565
  %6091 = fmul fast float %6088, %4566
  %6092 = fmul fast float %6088, %4570
  %6093 = fadd fast float %6090, %6089
  %6094 = fadd fast float %6091, %6089
  %6095 = fadd fast float %6092, %6089
  br i1 %5849, label %6096, label %6119

; <label>:6096                                    ; preds = %6081
  %6097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %38, float %3957, float %6001, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6098 = extractvalue %dx.types.ResRet.f32 %6097, 0
  %6099 = extractvalue %dx.types.ResRet.f32 %6097, 1
  %6100 = extractvalue %dx.types.ResRet.f32 %6097, 2
  %6101 = fadd fast float %6098, -5.000000e-01
  %6102 = fadd fast float %6099, -5.000000e-01
  %6103 = fadd fast float %6100, -5.000000e-01
  %6104 = fmul fast float %4565, 4.000000e+00
  %6105 = fmul fast float %6104, %6049
  %6106 = fmul fast float %6105, %6101
  %6107 = fmul fast float %4566, 4.000000e+00
  %6108 = fmul fast float %6107, %6050
  %6109 = fmul fast float %6108, %6102
  %6110 = fmul fast float %4570, 4.000000e+00
  %6111 = fmul fast float %6110, %6051
  %6112 = fmul fast float %6111, %6103
  %6113 = fadd fast float %6106, %6093
  %6114 = fadd fast float %6109, %6094
  %6115 = fadd fast float %6112, %6095
  %6116 = call float @dx.op.unary.f32(i32 7, float %6113)  ; Saturate(value)
  %6117 = call float @dx.op.unary.f32(i32 7, float %6114)  ; Saturate(value)
  %6118 = call float @dx.op.unary.f32(i32 7, float %6115)  ; Saturate(value)
  br label %6119

; <label>:6119                                    ; preds = %6096, %6081
  %6120 = phi float [ %6116, %6096 ], [ %6093, %6081 ]
  %6121 = phi float [ %6117, %6096 ], [ %6094, %6081 ]
  %6122 = phi float [ %6118, %6096 ], [ %6095, %6081 ]
  %6123 = call float @dx.op.binary.f32(i32 35, float %6121, float %6122)  ; FMax(a,b)
  %6124 = call float @dx.op.binary.f32(i32 35, float %6120, float %6123)  ; FMax(a,b)
  %6125 = fsub fast float 1.000000e+00, %6124
  %6126 = fmul fast float %6082, %6040
  %6127 = fmul fast float %6083, %6040
  %6128 = fmul fast float %6084, %6040
  %6129 = fsub fast float 1.000000e+00, %6002
  %6130 = bitcast float %6129 to i32
  %6131 = sitofp i32 %6130 to float
  %6132 = fmul fast float %6131, 5.000000e+00
  %6133 = fadd fast float %6132, 0xC1EFBF8940000000
  %6134 = fptosi float %6133 to i32
  %6135 = bitcast i32 %6134 to float
  %6136 = fmul fast float %6135, %3958
  %6137 = fmul fast float %6125, %6136
  %6138 = fmul fast float %6137, %5899
  %6139 = fmul fast float %6137, %5900
  %6140 = fmul fast float %6137, %5901
  %6141 = fadd fast float %6138, %6126
  %6142 = fadd fast float %6139, %6127
  %6143 = fadd fast float %6140, %6128
  %6144 = fmul fast float %6008, %5990
  %6145 = fmul fast float %6144, %6125
  %6146 = fmul fast float %6008, %5991
  %6147 = fmul fast float %6146, %6125
  %6148 = fmul fast float %6008, %5992
  %6149 = fmul fast float %6148, %6125
  %6150 = fmul fast float %6144, %6141
  %6151 = fmul fast float %6146, %6142
  %6152 = fmul fast float %6148, %6143
  %6153 = fadd fast float %6145, %5883
  %6154 = fmul fast float %6153, %3954
  %6155 = fadd fast float %6147, %5884
  %6156 = fmul fast float %6155, %3954
  %6157 = fadd fast float %6149, %5885
  %6158 = fmul fast float %6157, %3954
  %6159 = fadd fast float %6150, %5926
  %6160 = fmul fast float %6159, %3954
  %6161 = fadd fast float %6151, %5929
  %6162 = fmul fast float %6161, %3954
  %6163 = fadd fast float %6152, %5932
  %6164 = fmul fast float %6163, %3954
  br label %6165

; <label>:6165                                    ; preds = %6119, %5982, %5876
  %6166 = phi float [ %5927, %5876 ], [ %5927, %5982 ], [ %6160, %6119 ]
  %6167 = phi float [ %5930, %5876 ], [ %5930, %5982 ], [ %6162, %6119 ]
  %6168 = phi float [ %5933, %5876 ], [ %5933, %5982 ], [ %6164, %6119 ]
  %6169 = phi float [ %5922, %5876 ], [ %5922, %5982 ], [ %6154, %6119 ]
  %6170 = phi float [ %5923, %5876 ], [ %5923, %5982 ], [ %6156, %6119 ]
  %6171 = phi float [ %5924, %5876 ], [ %5924, %5982 ], [ %6158, %6119 ]
  %6172 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6173 = extractvalue %dx.types.CBufRet.i32 %6172, 0
  %6174 = icmp eq i32 %6173, 0
  br i1 %6174, label %6610, label %6175

; <label>:6175                                    ; preds = %6165
  %6176 = fptoui float %67 to i32
  %6177 = fptoui float %68 to i32
  %6178 = lshr i32 %6176, 4
  %6179 = lshr i32 %6177, 4
  %6180 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6181 = extractvalue %dx.types.CBufRet.i32 %6180, 0
  %6182 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6179, i32 %6181, i32 %6178)  ; UMad(a,b,c)
  %6183 = add nsw i32 %6173, -1
  %6184 = call i32 @dx.op.binary.i32(i32 37, i32 %6183, i32 0)  ; IMax(a,b)
  %6185 = call float @dx.op.binary.f32(i32 35, float %62, float 0.000000e+00)  ; FMax(a,b)
  %6186 = fptoui float %6185 to i32
  %6187 = lshr i32 %6186, 5
  %6188 = call i32 @dx.op.binary.i32(i32 40, i32 %6187, i32 8191)  ; UMin(a,b)
  %6189 = shl i32 %6188, 2
  %6190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6189, i32 undef)  ; BufferLoad(srv,index,wot)
  %6191 = extractvalue %dx.types.ResRet.i32 %6190, 0
  %6192 = lshr i32 %6191, 16
  %6193 = and i32 %6191, 65535
  %6194 = lshr i32 %6191, 21
  %6195 = lshr i32 %6193, 5
  %6196 = call i32 @dx.op.binary.i32(i32 40, i32 %6195, i32 %6184)  ; UMin(a,b)
  %6197 = icmp ugt i32 %6194, %6196
  br i1 %6197, label %6610, label %6198

; <label>:6198                                    ; preds = %6175
  br label %6199

; <label>:6199                                    ; preds = %6600, %6198
  %6200 = phi i32 [ %6607, %6600 ], [ %6194, %6198 ]
  %6201 = phi float [ %6601, %6600 ], [ %6166, %6198 ]
  %6202 = phi float [ %6602, %6600 ], [ %6167, %6198 ]
  %6203 = phi float [ %6603, %6600 ], [ %6168, %6198 ]
  %6204 = phi float [ %6604, %6600 ], [ %6169, %6198 ]
  %6205 = phi float [ %6605, %6600 ], [ %6170, %6198 ]
  %6206 = phi float [ %6606, %6600 ], [ %6171, %6198 ]
  %6207 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %41, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6208 = extractvalue %dx.types.CBufRet.i32 %6207, 0
  %6209 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6182, i32 %6208, i32 %6200)  ; UMad(a,b,c)
  %6210 = shl i32 %6209, 2
  %6211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6210, i32 undef)  ; BufferLoad(srv,index,wot)
  %6212 = extractvalue %dx.types.ResRet.i32 %6211, 0
  %6213 = shl i32 %6200, 5
  %6214 = sub nsw i32 %6192, %6213
  %6215 = call i32 @dx.op.binary.i32(i32 37, i32 %6214, i32 0)  ; IMax(a,b)
  %6216 = call i32 @dx.op.binary.i32(i32 38, i32 %6215, i32 31)  ; IMin(a,b)
  %6217 = sub nsw i32 1, %6192
  %6218 = add nsw i32 %6217, %6193
  %6219 = call i32 @dx.op.binary.i32(i32 37, i32 %6218, i32 0)  ; IMax(a,b)
  %6220 = call i32 @dx.op.binary.i32(i32 38, i32 %6219, i32 32)  ; IMin(a,b)
  %6221 = and i32 %6220, 31
  %6222 = shl i32 -1, %6221
  %6223 = xor i32 %6222, -1
  %6224 = and i32 %6216, 31
  %6225 = shl i32 %6223, %6224
  %6226 = icmp eq i32 %6220, 32
  %6227 = select i1 %6226, i32 -1, i32 %6225
  %6228 = and i32 %6227, %6212
  %6229 = icmp eq i32 %6228, 0
  br i1 %6229, label %6600, label %6230

; <label>:6230                                    ; preds = %6199
  br label %6231

; <label>:6231                                    ; preds = %6311, %6230
  %6232 = phi i32 [ %6243, %6311 ], [ %6228, %6230 ]
  %6233 = phi float [ %6312, %6311 ], [ %6201, %6230 ]
  %6234 = phi float [ %6313, %6311 ], [ %6202, %6230 ]
  %6235 = phi float [ %6314, %6311 ], [ %6203, %6230 ]
  %6236 = phi float [ %6315, %6311 ], [ %6204, %6230 ]
  %6237 = phi float [ %6316, %6311 ], [ %6205, %6230 ]
  %6238 = phi float [ %6317, %6311 ], [ %6206, %6230 ]
  %6239 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6232)  ; FirstbitLo(value)
  %6240 = add i32 %6239, %6213
  %6241 = and i32 %6239, 31
  %6242 = shl i32 1, %6241
  %6243 = xor i32 %6242, %6232
  %6244 = mul i32 %6240, 112
  %6245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6244, i32 undef)  ; BufferLoad(srv,index,wot)
  %6246 = extractvalue %dx.types.ResRet.f32 %6245, 0
  %6247 = extractvalue %dx.types.ResRet.f32 %6245, 1
  %6248 = extractvalue %dx.types.ResRet.f32 %6245, 2
  %6249 = or i32 %6244, 12
  %6250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6249, i32 undef)  ; BufferLoad(srv,index,wot)
  %6251 = extractvalue %dx.types.ResRet.f32 %6250, 0
  %6252 = add i32 %6244, 44
  %6253 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6252, i32 undef)  ; BufferLoad(srv,index,wot)
  %6254 = extractvalue %dx.types.ResRet.f32 %6253, 0
  %6255 = add i32 %6244, 48
  %6256 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6255, i32 undef)  ; BufferLoad(srv,index,wot)
  %6257 = extractvalue %dx.types.ResRet.f32 %6256, 0
  %6258 = extractvalue %dx.types.ResRet.f32 %6256, 1
  %6259 = extractvalue %dx.types.ResRet.f32 %6256, 2
  %6260 = add i32 %6244, 80
  %6261 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6260, i32 undef)  ; BufferLoad(srv,index,wot)
  %6262 = extractvalue %dx.types.ResRet.f32 %6261, 1
  %6263 = extractvalue %dx.types.ResRet.f32 %6261, 2
  %6264 = call float @dx.op.dot3.f32(i32 55, float %6246, float %6247, float %6248, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6265 = select i1 %164, float %6262, float %6246
  %6266 = select i1 %164, float %6264, float %6247
  %6267 = select i1 %164, float %6263, float %6248
  %6268 = fsub fast float %6257, %122
  %6269 = fsub fast float %6258, %123
  %6270 = fsub fast float %6259, %124
  %6271 = call float @dx.op.dot3.f32(i32 55, float %6268, float %6269, float %6270, float %6268, float %6269, float %6270)  ; Dot3(ax,ay,az,bx,by,bz)
  %6272 = call float @dx.op.unary.f32(i32 24, float %6271)  ; Sqrt(value)
  %6273 = fdiv fast float 1.000000e+00, %6272
  %6274 = fmul fast float %6273, %6268
  %6275 = fmul fast float %6273, %6269
  %6276 = fmul fast float %6273, %6270
  %6277 = fadd fast float %6272, %6251
  %6278 = fdiv fast float 1.000000e+00, %6277
  %6279 = fmul float %6254, %6278
  %6280 = fmul float %6279, %6279
  %6281 = call float @dx.op.unary.f32(i32 7, float %6280)  ; Saturate(value)
  %6282 = and i32 %6242, %6228
  %6283 = icmp eq i32 %6282, 0
  br i1 %6283, label %6306, label %6284, !dx.controlflow.hints !86

; <label>:6284                                    ; preds = %6231
  %6285 = lshr i32 %6176, 5
  %6286 = lshr i32 %6177, 5
  %6287 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %6285, i32 %6286, i32 %6240, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6288 = extractvalue %dx.types.ResRet.i32 %6287, 0
  %6289 = and i32 %6288, 3
  %6290 = icmp eq i32 %6289, 0
  %6291 = select i1 %6290, float 1.000000e+00, float 0.000000e+00
  %6292 = icmp eq i32 %6289, 3
  br i1 %6292, label %6293, label %6306

; <label>:6293                                    ; preds = %6284
  %6294 = lshr i32 %6288, 10
  %6295 = and i32 %6294, 8160
  %6296 = and i32 %6177, 31
  %6297 = or i32 %6295, %6296
  %6298 = lshr i32 %6288, 1
  %6299 = and i32 %6298, 16352
  %6300 = and i32 %6176, 31
  %6301 = or i32 %6299, %6300
  %6302 = lshr i32 %6288, 23
  %6303 = and i32 %6302, 255
  %6304 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %6301, i32 %6297, i32 %6303, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6305 = extractvalue %dx.types.ResRet.f32 %6304, 0
  br label %6306

; <label>:6306                                    ; preds = %6293, %6284, %6231
  %6307 = phi float [ %6305, %6293 ], [ %6291, %6284 ], [ 0.000000e+00, %6231 ]
  %6308 = call float @dx.op.binary.f32(i32 36, float %6307, float %6307)  ; FMin(a,b)
  %6309 = call float @dx.op.binary.f32(i32 36, float %6307, float %6308)  ; FMin(a,b)
  %6310 = fcmp fast ogt float %6309, 0.000000e+00
  br i1 %6310, label %6319, label %6311, !dx.controlflow.hints !87

; <label>:6311                                    ; preds = %6556, %6306
  %6312 = phi float [ %6233, %6306 ], [ %6596, %6556 ]
  %6313 = phi float [ %6234, %6306 ], [ %6597, %6556 ]
  %6314 = phi float [ %6235, %6306 ], [ %6598, %6556 ]
  %6315 = phi float [ %6236, %6306 ], [ %6590, %6556 ]
  %6316 = phi float [ %6237, %6306 ], [ %6591, %6556 ]
  %6317 = phi float [ %6238, %6306 ], [ %6592, %6556 ]
  %6318 = icmp eq i32 %6232, %6242
  br i1 %6318, label %6599, label %6231

; <label>:6319                                    ; preds = %6306
  %6320 = fmul fast float %6307, %6265
  %6321 = fmul fast float %6307, %6266
  %6322 = fmul fast float %6307, %6267
  %6323 = fsub fast float %6259, %4358
  %6324 = fcmp fast ogt float %6323, 0.000000e+00
  %6325 = fsub fast float %124, %4358
  %6326 = fcmp fast ogt float %6325, 0.000000e+00
  %6327 = xor i1 %6326, %6324
  %6328 = fsub fast float %4358, %6259
  %6329 = fmul fast float %6328, 2.000000e+00
  %6330 = fadd fast float %6329, %6259
  %6331 = select i1 %6327, float %6259, float %6330
  %6332 = fsub fast float %6331, %124
  %6333 = call float @dx.op.dot3.f32(i32 55, float %6268, float %6269, float %6332, float %6268, float %6269, float %6332)  ; Dot3(ax,ay,az,bx,by,bz)
  %6334 = call float @dx.op.unary.f32(i32 25, float %6333)  ; Rsqrt(value)
  %6335 = fmul fast float %6334, %6268
  %6336 = fmul fast float %6334, %6269
  %6337 = fmul fast float %6334, %6332
  %6338 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4366)  ; Dot3(ax,ay,az,bx,by,bz)
  %6339 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6335, float %6336, float %6337)  ; Dot3(ax,ay,az,bx,by,bz)
  %6340 = fdiv fast float 1.000000e+00, %6339
  %6341 = fmul fast float %6340, %6338
  %6342 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6325, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6343 = fcmp fast ogt float %6342, 0.000000e+00
  %6344 = fcmp fast olt float %6342, 0.000000e+00
  %6345 = zext i1 %6343 to i32
  %6346 = zext i1 %6344 to i32
  %6347 = sub nsw i32 %6345, %6346
  %6348 = sitofp i32 %6347 to float
  %6349 = fsub fast float %6331, %4358
  %6350 = call float @dx.op.dot3.f32(i32 55, float %6268, float %6269, float %6349, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6351 = fcmp fast ogt float %6350, 0.000000e+00
  %6352 = fcmp fast olt float %6350, 0.000000e+00
  %6353 = zext i1 %6351 to i32
  %6354 = zext i1 %6352 to i32
  %6355 = sub nsw i32 %6353, %6354
  %6356 = sitofp i32 %6355 to float
  %6357 = fcmp fast une float %6348, %6356
  br i1 %6357, label %6358, label %6368

; <label>:6358                                    ; preds = %6319
  %6359 = fmul fast float %6341, %6337
  %6360 = fmul fast float %6341, %6336
  %6361 = fmul fast float %6341, %6335
  %6362 = fmul fast float %6361, %6361
  %6363 = fmul fast float %6360, %6360
  %6364 = fadd fast float %6362, %6363
  %6365 = fmul fast float %6359, %6359
  %6366 = fadd fast float %6364, %6365
  %6367 = call float @dx.op.unary.f32(i32 24, float %6366)  ; Sqrt(value)
  br label %6380

; <label>:6368                                    ; preds = %6319
  %6369 = icmp slt i32 %6347, 0
  br i1 %6369, label %6370, label %6380

; <label>:6370                                    ; preds = %6368
  %6371 = fsub fast float %122, %6257
  %6372 = fsub fast float %123, %6258
  %6373 = fsub fast float %124, %6331
  %6374 = fmul fast float %6371, %6371
  %6375 = fmul fast float %6372, %6372
  %6376 = fadd fast float %6374, %6375
  %6377 = fmul fast float %6373, %6373
  %6378 = fadd fast float %6376, %6377
  %6379 = call float @dx.op.unary.f32(i32 24, float %6378)  ; Sqrt(value)
  br label %6380

; <label>:6380                                    ; preds = %6370, %6368, %6358
  %6381 = phi float [ %6367, %6358 ], [ %6379, %6370 ], [ 0.000000e+00, %6368 ]
  %6382 = and i1 %6326, %6324
  %6383 = fsub fast float -0.000000e+00, %6381
  %6384 = select i1 %6382, float -0.000000e+00, float %6383
  %6385 = fmul fast float %4359, 0x3FF7154760000000
  %6386 = fmul fast float %6385, %6384
  %6387 = fmul fast float %4360, 0x3FF7154760000000
  %6388 = fmul fast float %6387, %6384
  %6389 = fmul fast float %4361, 0x3FF7154760000000
  %6390 = fmul fast float %6389, %6384
  %6391 = call float @dx.op.unary.f32(i32 21, float %6386)  ; Exp(value)
  %6392 = call float @dx.op.unary.f32(i32 21, float %6388)  ; Exp(value)
  %6393 = call float @dx.op.unary.f32(i32 21, float %6390)  ; Exp(value)
  %6394 = call float @dx.op.unary.f32(i32 7, float %6391)  ; Saturate(value)
  %6395 = call float @dx.op.unary.f32(i32 7, float %6392)  ; Saturate(value)
  %6396 = call float @dx.op.unary.f32(i32 7, float %6393)  ; Saturate(value)
  %6397 = fmul fast float %6320, %6394
  %6398 = fmul fast float %6321, %6395
  %6399 = fmul fast float %6322, %6396
  %6400 = fsub fast float %6274, %4558
  %6401 = fsub fast float %6275, %4557
  %6402 = fsub fast float %6276, %4556
  %6403 = call float @dx.op.dot3.f32(i32 55, float %6400, float %6401, float %6402, float %6400, float %6401, float %6402)  ; Dot3(ax,ay,az,bx,by,bz)
  %6404 = call float @dx.op.unary.f32(i32 25, float %6403)  ; Rsqrt(value)
  %6405 = fmul fast float %6404, %6400
  %6406 = fmul fast float %6404, %6401
  %6407 = fmul fast float %6404, %6402
  %6408 = call float @dx.op.dot3.f32(i32 55, float %6274, float %6275, float %6276, float %4562, float %4563, float %4564)  ; Dot3(ax,ay,az,bx,by,bz)
  %6409 = call float @dx.op.dot3.f32(i32 55, float %4555, float %4554, float %4553, float %6405, float %6406, float %6407)  ; Dot3(ax,ay,az,bx,by,bz)
  %6410 = call float @dx.op.unary.f32(i32 7, float %6408)  ; Saturate(value)
  %6411 = fmul fast float %6410, %6281
  %6412 = bitcast i32 %4584 to float
  %6413 = fmul fast float %6410, %6410
  %6414 = fmul fast float %6413, %6412
  %6415 = call float @dx.op.unary.f32(i32 7, float %6414)  ; Saturate(value)
  %6416 = fmul fast float %6411, %6415
  %6417 = bitcast float %6271 to i32
  %6418 = ashr i32 %6417, 1
  %6419 = sub nsw i32 1597463007, %6418
  %6420 = bitcast i32 %6419 to float
  %6421 = fmul fast float %6420, %6268
  %6422 = fmul fast float %6420, %6269
  %6423 = fmul fast float %6420, %6270
  %6424 = fsub fast float %6421, %4558
  %6425 = fsub fast float %6422, %4557
  %6426 = fsub fast float %6423, %4556
  %6427 = call float @dx.op.dot3.f32(i32 55, float %6424, float %6425, float %6426, float %6424, float %6425, float %6426)  ; Dot3(ax,ay,az,bx,by,bz)
  %6428 = call float @dx.op.unary.f32(i32 25, float %6427)  ; Rsqrt(value)
  %6429 = fmul fast float %6424, %6428
  %6430 = fmul fast float %6425, %6428
  %6431 = fmul fast float %6426, %6428
  %6432 = call float @dx.op.dot3.f32(i32 55, float %4562, float %4563, float %4564, float %6429, float %6430, float %6431)  ; Dot3(ax,ay,az,bx,by,bz)
  %6433 = fmul fast float %6432, %6432
  %6434 = call float @dx.op.unary.f32(i32 6, float %6408)  ; FAbs(value)
  %6435 = fsub fast float 1.000000e+00, %4568
  %6436 = call float @dx.op.binary.f32(i32 35, float %6435, float 0x3F847AE140000000)  ; FMax(a,b)
  %6437 = fmul fast float %6436, %6436
  %6438 = fmul fast float %6437, %6437
  %6439 = fsub fast float 1.000000e+00, %6438
  %6440 = fmul fast float %4572, %4572
  %6441 = fmul fast float %6440, %6439
  %6442 = fadd fast float %6441, %6438
  %6443 = bitcast float %6442 to i32
  %6444 = ashr i32 %6443, 1
  %6445 = add nsw i32 %6444, 532487669
  %6446 = bitcast i32 %6445 to float
  %6447 = fadd fast float %6446, %4572
  %6448 = fmul fast float %6438, %6433
  %6449 = fsub fast float 1.000000e+00, %6433
  %6450 = fadd fast float %6449, %6448
  %6451 = fmul fast float %6434, %6434
  %6452 = fmul fast float %6451, %6439
  %6453 = fadd fast float %6452, %6438
  %6454 = bitcast float %6453 to i32
  %6455 = ashr i32 %6454, 1
  %6456 = add nsw i32 %6455, 532487669
  %6457 = bitcast i32 %6456 to float
  %6458 = fadd fast float %6457, %6434
  %6459 = fmul fast float %6450, %6450
  %6460 = fmul fast float %6459, %6447
  %6461 = fmul fast float %6460, %6458
  %6462 = fdiv fast float 1.000000e+00, %6461
  %6463 = bitcast float %6438 to i32
  %6464 = sitofp i32 %6463 to float
  %6465 = fmul fast float %6464, 0x3FE7F73180000000
  %6466 = fadd fast float %6465, 0x41AFE27C40000000
  %6467 = fptosi float %6466 to i32
  %6468 = bitcast i32 %6467 to float
  %6469 = fmul fast float %6254, 0x3FD80E9D60000000
  %6470 = fmul fast float %6469, %6420
  %6471 = fadd fast float %6468, %6470
  %6472 = bitcast float %6471 to i32
  %6473 = sub nsw i32 2129859010, %6472
  %6474 = bitcast i32 %6473 to float
  %6475 = fmul fast float %6438, %6462
  %6476 = fmul fast float %6475, %6468
  %6477 = fmul fast float %6476, %6474
  %6478 = call float @dx.op.unary.f32(i32 6, float %6409)  ; FAbs(value)
  %6479 = fsub fast float 1.000000e+00, %6478
  %6480 = bitcast float %6479 to i32
  %6481 = sitofp i32 %6480 to float
  %6482 = fmul fast float %6481, 5.000000e+00
  %6483 = fadd fast float %6482, 0xC1EFBF8940000000
  %6484 = fptosi float %6483 to i32
  %6485 = bitcast i32 %6484 to float
  %6486 = fsub fast float 1.000000e+00, %4565
  %6487 = fsub fast float 1.000000e+00, %4566
  %6488 = fsub fast float 1.000000e+00, %4570
  %6489 = fmul fast float %6485, %6486
  %6490 = fmul fast float %6485, %6487
  %6491 = fmul fast float %6485, %6488
  %6492 = fadd fast float %6489, %4565
  %6493 = fadd fast float %6490, %4566
  %6494 = fadd fast float %6491, %4570
  br i1 %5849, label %6495, label %6518

; <label>:6495                                    ; preds = %6380
  %6496 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %38, float %3957, float %6478, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6497 = extractvalue %dx.types.ResRet.f32 %6496, 0
  %6498 = extractvalue %dx.types.ResRet.f32 %6496, 1
  %6499 = extractvalue %dx.types.ResRet.f32 %6496, 2
  %6500 = fadd fast float %6497, -5.000000e-01
  %6501 = fadd fast float %6498, -5.000000e-01
  %6502 = fadd fast float %6499, -5.000000e-01
  %6503 = fmul fast float %4565, 4.000000e+00
  %6504 = fmul fast float %6503, %6486
  %6505 = fmul fast float %6504, %6500
  %6506 = fmul fast float %4566, 4.000000e+00
  %6507 = fmul fast float %6506, %6487
  %6508 = fmul fast float %6507, %6501
  %6509 = fmul fast float %4570, 4.000000e+00
  %6510 = fmul fast float %6509, %6488
  %6511 = fmul fast float %6510, %6502
  %6512 = fadd fast float %6505, %6492
  %6513 = fadd fast float %6508, %6493
  %6514 = fadd fast float %6511, %6494
  %6515 = call float @dx.op.unary.f32(i32 7, float %6512)  ; Saturate(value)
  %6516 = call float @dx.op.unary.f32(i32 7, float %6513)  ; Saturate(value)
  %6517 = call float @dx.op.unary.f32(i32 7, float %6514)  ; Saturate(value)
  br label %6518

; <label>:6518                                    ; preds = %6495, %6380
  %6519 = phi float [ %6515, %6495 ], [ %6492, %6380 ]
  %6520 = phi float [ %6516, %6495 ], [ %6493, %6380 ]
  %6521 = phi float [ %6517, %6495 ], [ %6494, %6380 ]
  %6522 = fmul fast float %6408, 9.843750e-01
  %6523 = fadd fast float %6522, 7.812500e-03
  %6524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %38, float %6523, float %5839, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6525 = extractvalue %dx.types.ResRet.f32 %6524, 2
  %6526 = extractvalue %dx.types.ResRet.f32 %6524, 3
  %6527 = fmul fast float %6525, %4565
  %6528 = fmul fast float %6525, %4566
  %6529 = fmul fast float %6525, %4570
  %6530 = fadd fast float %6527, %6526
  %6531 = fadd fast float %6528, %6526
  %6532 = fadd fast float %6529, %6526
  br i1 %5849, label %6533, label %6556

; <label>:6533                                    ; preds = %6518
  %6534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %38, float %3957, float %6408, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6535 = extractvalue %dx.types.ResRet.f32 %6534, 0
  %6536 = extractvalue %dx.types.ResRet.f32 %6534, 1
  %6537 = extractvalue %dx.types.ResRet.f32 %6534, 2
  %6538 = fadd fast float %6535, -5.000000e-01
  %6539 = fadd fast float %6536, -5.000000e-01
  %6540 = fadd fast float %6537, -5.000000e-01
  %6541 = fmul fast float %4565, 4.000000e+00
  %6542 = fmul fast float %6541, %6486
  %6543 = fmul fast float %6542, %6538
  %6544 = fmul fast float %4566, 4.000000e+00
  %6545 = fmul fast float %6544, %6487
  %6546 = fmul fast float %6545, %6539
  %6547 = fmul fast float %4570, 4.000000e+00
  %6548 = fmul fast float %6547, %6488
  %6549 = fmul fast float %6548, %6540
  %6550 = fadd fast float %6543, %6530
  %6551 = fadd fast float %6546, %6531
  %6552 = fadd fast float %6549, %6532
  %6553 = call float @dx.op.unary.f32(i32 7, float %6550)  ; Saturate(value)
  %6554 = call float @dx.op.unary.f32(i32 7, float %6551)  ; Saturate(value)
  %6555 = call float @dx.op.unary.f32(i32 7, float %6552)  ; Saturate(value)
  br label %6556

; <label>:6556                                    ; preds = %6533, %6518
  %6557 = phi float [ %6553, %6533 ], [ %6530, %6518 ]
  %6558 = phi float [ %6554, %6533 ], [ %6531, %6518 ]
  %6559 = phi float [ %6555, %6533 ], [ %6532, %6518 ]
  %6560 = call float @dx.op.binary.f32(i32 35, float %6558, float %6559)  ; FMax(a,b)
  %6561 = call float @dx.op.binary.f32(i32 35, float %6557, float %6560)  ; FMax(a,b)
  %6562 = fsub fast float 1.000000e+00, %6561
  %6563 = fmul fast float %6519, %6477
  %6564 = fmul fast float %6520, %6477
  %6565 = fmul fast float %6521, %6477
  %6566 = fsub fast float 1.000000e+00, %6409
  %6567 = bitcast float %6566 to i32
  %6568 = sitofp i32 %6567 to float
  %6569 = fmul fast float %6568, 5.000000e+00
  %6570 = fadd fast float %6569, 0xC1EFBF8940000000
  %6571 = fptosi float %6570 to i32
  %6572 = bitcast i32 %6571 to float
  %6573 = fmul fast float %6572, %3958
  %6574 = fmul fast float %6562, %6573
  %6575 = fmul fast float %6574, %5899
  %6576 = fmul fast float %6574, %5900
  %6577 = fmul fast float %6574, %5901
  %6578 = fadd fast float %6575, %6563
  %6579 = fadd fast float %6576, %6564
  %6580 = fadd fast float %6577, %6565
  %6581 = fmul fast float %6397, %3954
  %6582 = fmul fast float %6581, %6416
  %6583 = fmul fast float %6582, %6562
  %6584 = fmul fast float %6398, %3954
  %6585 = fmul fast float %6584, %6416
  %6586 = fmul fast float %6585, %6562
  %6587 = fmul fast float %6399, %3954
  %6588 = fmul fast float %6587, %6416
  %6589 = fmul fast float %6588, %6562
  %6590 = fadd fast float %6583, %6236
  %6591 = fadd fast float %6586, %6237
  %6592 = fadd fast float %6589, %6238
  %6593 = fmul fast float %6582, %6578
  %6594 = fmul fast float %6585, %6579
  %6595 = fmul fast float %6588, %6580
  %6596 = fadd fast float %6593, %6233
  %6597 = fadd fast float %6594, %6234
  %6598 = fadd fast float %6595, %6235
  br label %6311

; <label>:6599                                    ; preds = %6311
  br label %6600

; <label>:6600                                    ; preds = %6599, %6199
  %6601 = phi float [ %6201, %6199 ], [ %6312, %6599 ]
  %6602 = phi float [ %6202, %6199 ], [ %6313, %6599 ]
  %6603 = phi float [ %6203, %6199 ], [ %6314, %6599 ]
  %6604 = phi float [ %6204, %6199 ], [ %6315, %6599 ]
  %6605 = phi float [ %6205, %6199 ], [ %6316, %6599 ]
  %6606 = phi float [ %6206, %6199 ], [ %6317, %6599 ]
  %6607 = add i32 %6200, 1
  %6608 = icmp ugt i32 %6607, %6196
  br i1 %6608, label %6609, label %6199

; <label>:6609                                    ; preds = %6600
  br label %6610

; <label>:6610                                    ; preds = %6609, %6175, %6165
  %6611 = phi float [ %6166, %6165 ], [ %6166, %6175 ], [ %6601, %6609 ]
  %6612 = phi float [ %6167, %6165 ], [ %6167, %6175 ], [ %6602, %6609 ]
  %6613 = phi float [ %6168, %6165 ], [ %6168, %6175 ], [ %6603, %6609 ]
  %6614 = phi float [ %6169, %6165 ], [ %6169, %6175 ], [ %6604, %6609 ]
  %6615 = phi float [ %6170, %6165 ], [ %6170, %6175 ], [ %6605, %6609 ]
  %6616 = phi float [ %6171, %6165 ], [ %6171, %6175 ], [ %6606, %6609 ]
  %6617 = call float @dx.op.unary.f32(i32 24, float %4559)  ; Sqrt(value)
  %6618 = call float @dx.op.unary.f32(i32 24, float %4560)  ; Sqrt(value)
  %6619 = call float @dx.op.unary.f32(i32 24, float %4561)  ; Sqrt(value)
  %6620 = fmul fast float %6617, %6614
  %6621 = fmul fast float %6618, %6615
  %6622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6623 = extractvalue %dx.types.CBufRet.f32 %6622, 0
  br i1 %164, label %6624, label %6644

; <label>:6624                                    ; preds = %6610
  %6625 = fadd fast float %6616, %3960
  %6626 = fmul fast float %6625, %3961
  %6627 = fsub fast float 1.000000e+00, %3961
  %6628 = call float @dx.op.unary.f32(i32 7, float %6627)  ; Saturate(value)
  %6629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6630 = extractvalue %dx.types.CBufRet.f32 %6629, 3
  %6631 = fmul fast float %6630, %6628
  %6632 = fadd fast float %6631, %6626
  %6633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6634 = extractvalue %dx.types.CBufRet.f32 %6633, 0
  %6635 = fmul fast float %6634, %5905
  %6636 = fsub fast float %6632, %6635
  %6637 = fadd fast float %6621, %6620
  %6638 = fmul fast float %6623, %6637
  %6639 = extractvalue %dx.types.CBufRet.f32 %6629, 1
  %6640 = fsub fast float %6636, %6639
  %6641 = extractvalue %dx.types.CBufRet.f32 %6629, 2
  %6642 = fmul fast float %6640, %6641
  %6643 = call float @dx.op.unary.f32(i32 7, float %6642)  ; Saturate(value)
  br label %6660

; <label>:6644                                    ; preds = %6610
  %6645 = fmul fast float %6619, %6616
  %6646 = fmul fast float %6623, %6620
  %6647 = fmul fast float %6623, %6621
  %6648 = fmul fast float %6645, %6623
  %6649 = add i32 %42, 356
  %6650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %35, i32 %6649, i32 undef)  ; BufferLoad(srv,index,wot)
  %6651 = extractvalue %dx.types.ResRet.i32 %6650, 0
  %6652 = and i32 %6651, 32
  %6653 = icmp eq i32 %6652, 0
  br i1 %6653, label %6660, label %6654

; <label>:6654                                    ; preds = %6644
  %6655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6656 = extractvalue %dx.types.CBufRet.f32 %6655, 0
  %6657 = fmul fast float %6656, 0x3FE99999A0000000
  %6658 = fadd fast float %6656, %6646
  %6659 = fadd fast float %6657, %6648
  br label %6660

; <label>:6660                                    ; preds = %6654, %6644, %6624
  %6661 = phi float [ %6638, %6624 ], [ %6658, %6654 ], [ %6646, %6644 ]
  %6662 = phi float [ %6643, %6624 ], [ %6647, %6654 ], [ %6647, %6644 ]
  %6663 = phi float [ 1.000000e+00, %6624 ], [ %6659, %6654 ], [ %6648, %6644 ]
  %6664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6665 = extractvalue %dx.types.CBufRet.f32 %6664, 0
  %6666 = fmul fast float %6665, %6612
  %6667 = fmul fast float %6665, %6613
  %6668 = fadd fast float %6612, %6611
  %6669 = select i1 %164, float %6668, float %6611
  %6670 = fmul float %6669, %6665
  %6671 = select i1 %164, float 0.000000e+00, float %6666
  %6672 = select i1 %164, float 0.000000e+00, float %6667
  %6673 = fmul fast float %6661, %6617
  %6674 = fmul fast float %6662, %6618
  %6675 = fmul fast float %6663, %6619
  %6676 = fadd fast float %6670, %6673
  %6677 = fadd fast float %6671, %6674
  %6678 = fadd fast float %6672, %6675
  %6679 = select i1 %164, float %6662, float %6677
  %6680 = select i1 %164, float %6663, float %6678
  %6681 = call float @dx.op.binary.f32(i32 36, float %6676, float 3.225500e+04)  ; FMin(a,b)
  %6682 = call float @dx.op.binary.f32(i32 36, float %6679, float 3.225500e+04)  ; FMin(a,b)
  %6683 = call float @dx.op.binary.f32(i32 36, float %6680, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6681)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6682)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6683)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!56}
!dx.entryPoints = !{!57}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !47, !50}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!14 = !{i32 7, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!17 = !{i32 10, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!18 = !{i32 11, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!19 = !{i32 12, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!20 = !{i32 13, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !21}
!21 = !{i32 0, i32 5}
!22 = !{i32 14, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!23 = !{i32 15, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !21}
!24 = !{i32 16, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!40 = !{i32 32, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!41 = !{i32 33, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!46 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!47 = !{!48, !49}
!48 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!49 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!50 = !{!51, !52, !53, !54, !55}
!51 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!52 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!53 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!54 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!55 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!56 = !{[30 x i32] [i32 28, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7]}
!57 = !{void ()* @ps_main, !"ps_main", !58, !4, !77}
!58 = !{!59, !75, null}
!59 = !{!60, !63, !65, !67, !69, !71, !72, !74}
!60 = !{i32 0, !"SV_Position", i8 9, i8 3, !61, i8 4, i32 1, i8 4, i32 0, i8 0, !62}
!61 = !{i32 0}
!62 = !{i32 3, i32 11}
!63 = !{i32 1, !"COLOR", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 1, i8 0, !64}
!64 = !{i32 3, i32 14}
!65 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 2, i8 0, !66}
!66 = !{i32 3, i32 3}
!67 = !{i32 3, !"NORMAL", i8 9, i8 0, !61, i8 2, i32 1, i8 3, i32 3, i8 0, !68}
!68 = !{i32 3, i32 7}
!69 = !{i32 4, !"TANGENT", i8 9, i8 0, !61, i8 2, i32 1, i8 4, i32 4, i8 0, !70}
!70 = !{i32 3, i32 15}
!71 = !{i32 5, !"LMAP_COORDS", i8 9, i8 0, !61, i8 2, i32 1, i8 3, i32 5, i8 0, !68}
!72 = !{i32 6, !"PACKED_TRI_DATA", i8 5, i8 0, !61, i8 1, i32 1, i8 4, i32 6, i8 0, !73}
!73 = !{i32 3, i32 13}
!74 = !{i32 7, !"SV_SampleIndex", i8 5, i8 12, !61, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!75 = !{!76}
!76 = !{i32 0, !"SV_Target", i8 9, i8 16, !61, i8 0, i32 1, i8 4, i32 0, i8 0, !70}
!77 = !{i32 0, i64 24}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}

