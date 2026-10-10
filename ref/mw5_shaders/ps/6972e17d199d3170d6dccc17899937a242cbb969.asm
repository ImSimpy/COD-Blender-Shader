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
; shader hash: ebf599da2fa1455f1fdbdd566eb1cf48
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
  br i1 %399, label %911, label %400

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
  %845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.i32 %845, 0
  %847 = and i32 %846, 10240
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %893, label %849

; <label>:849                                     ; preds = %841
  %850 = add i32 %38, 456
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = add i32 %852, 0
  %854 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %853, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %855 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %854, %dx.types.Handle %63, float %499, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 1
  %857 = extractvalue %dx.types.ResRet.f32 %855, 3
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = and i32 %859, 1048576
  %861 = icmp ne i32 %860, 0
  %862 = and i32 %859, 8192
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %879, label %864

; <label>:864                                     ; preds = %849
  %865 = extractvalue %dx.types.ResRet.f32 %855, 2
  %866 = select i1 %861, float %865, float %856
  %867 = extractvalue %dx.types.ResRet.f32 %855, 0
  %868 = select i1 %861, float %867, float %856
  %869 = add i32 %38, 96
  %870 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %869, i32 undef)  ; BufferLoad(srv,index,wot)
  %871 = extractvalue %dx.types.ResRet.i32 %870, 0
  %872 = lshr i32 %871, 16
  %873 = and i32 %872, 255
  %874 = uitofp i32 %873 to float
  %875 = fmul fast float %874, 0x3F80101020000000
  %876 = fmul fast float %875, %868
  %877 = fmul fast float %875, %856
  %878 = fmul fast float %875, %866
  br label %879

; <label>:879                                     ; preds = %864, %849
  %880 = phi float [ %876, %864 ], [ 0.000000e+00, %849 ]
  %881 = phi float [ %877, %864 ], [ 0.000000e+00, %849 ]
  %882 = phi float [ %878, %864 ], [ 0.000000e+00, %849 ]
  %883 = and i32 %859, 2048
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %893, label %885

; <label>:885                                     ; preds = %879
  %886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %798, i32 undef)  ; BufferLoad(srv,index,wot)
  %887 = extractvalue %dx.types.ResRet.i32 %886, 0
  %888 = shl i32 %887, 4
  %889 = and i32 %888, 32752
  %890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %889)  ; LegacyF16ToF32(value)
  %891 = fmul fast float %890, %857
  %892 = call float @dx.op.binary.f32(i32 35, float %891, float 0x3F70101020000000)  ; FMax(a,b)
  br label %893

; <label>:893                                     ; preds = %885, %879, %841
  %894 = phi float [ %880, %885 ], [ %880, %879 ], [ 0.000000e+00, %841 ]
  %895 = phi float [ %881, %885 ], [ %881, %879 ], [ 0.000000e+00, %841 ]
  %896 = phi float [ %882, %885 ], [ %882, %879 ], [ 0.000000e+00, %841 ]
  %897 = phi float [ %892, %885 ], [ 0x3F70101020000000, %879 ], [ 0x3F70101020000000, %841 ]
  %898 = add i32 %38, 96
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = and i32 %900, 255
  %902 = uitofp i32 %901 to float
  %903 = lshr i32 %900, 8
  %904 = and i32 %903, 255
  %905 = uitofp i32 %904 to float
  %906 = call float @dx.op.dot3.f32(i32 55, float %714, float %715, float %716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %907 = fmul fast float %905, %906
  %908 = fadd fast float %907, %902
  %909 = fmul fast float %908, 0x3F70101020000000
  %910 = call float @dx.op.unary.f32(i32 7, float %909)  ; Saturate(value)
  br label %911

; <label>:911                                     ; preds = %893, %385
  %912 = phi float [ 0.000000e+00, %385 ], [ %795, %893 ]
  %913 = phi float [ 0.000000e+00, %385 ], [ %796, %893 ]
  %914 = phi float [ 0.000000e+00, %385 ], [ %714, %893 ]
  %915 = phi float [ 0.000000e+00, %385 ], [ %715, %893 ]
  %916 = phi float [ 0.000000e+00, %385 ], [ %716, %893 ]
  %917 = phi float [ 0.000000e+00, %385 ], [ %842, %893 ]
  %918 = phi float [ 0.000000e+00, %385 ], [ %843, %893 ]
  %919 = phi float [ 0.000000e+00, %385 ], [ %844, %893 ]
  %920 = phi float [ 0.000000e+00, %385 ], [ %894, %893 ]
  %921 = phi float [ 0.000000e+00, %385 ], [ %895, %893 ]
  %922 = phi float [ 0.000000e+00, %385 ], [ %896, %893 ]
  %923 = phi float [ 0.000000e+00, %385 ], [ %700, %893 ]
  %924 = phi float [ 0.000000e+00, %385 ], [ 1.000000e+00, %893 ]
  %925 = phi float [ 0.000000e+00, %385 ], [ %794, %893 ]
  %926 = phi float [ 0.000000e+00, %385 ], [ %797, %893 ]
  %927 = phi float [ 0.000000e+00, %385 ], [ %897, %893 ]
  %928 = phi float [ 0.000000e+00, %385 ], [ %910, %893 ]
  br i1 %336, label %1857, label %929

; <label>:929                                     ; preds = %911
  %930 = icmp ult i32 %391, 2
  %931 = add i32 %38, 40
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = add i32 %38, 44
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = or i32 %936, %933
  %938 = icmp eq i32 %937, 0
  br i1 %938, label %1857, label %939

; <label>:939                                     ; preds = %929
  %940 = and i32 %933, 262144
  %941 = icmp ne i32 %940, 0
  %942 = select i1 %941, float %41, float 1.000000e+00
  %943 = select i1 %941, float %42, float 0.000000e+00
  %944 = select i1 %941, float %43, float 0.000000e+00
  %945 = select i1 %941, float %44, float 1.000000e+00
  %946 = select i1 %941, float %45, float %54
  %947 = select i1 %941, float %46, float %55
  %948 = add i32 %38, 300
  %949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %950 = extractvalue %dx.types.ResRet.i32 %949, 0
  %951 = lshr i32 %950, 16
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = fmul fast float %952, 0x3F50624DE0000000
  %954 = add i32 %38, 104
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = lshr i32 %956, 16
  %958 = and i32 %957, 255
  %959 = lshr i32 %956, 24
  %960 = add i32 %38, 308
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = and i32 %962, 65535
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = lshr i32 %962, 16
  %966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %965)  ; LegacyF16ToF32(value)
  %967 = add i32 %38, 48
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = lshr i32 %969, 22
  %971 = shl nuw nsw i32 %970, 5
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = shl i32 %969, 4
  %974 = and i32 %973, 32752
  %975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %974)  ; LegacyF16ToF32(value)
  %976 = lshr i32 %969, 7
  %977 = and i32 %976, 32752
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %980 = extractvalue %dx.types.CBufRet.f32 %979, 3
  %981 = fmul fast float %980, 1.000000e+03
  %982 = fmul fast float %246, %981
  %983 = call float @dx.op.unary.f32(i32 22, float %982)  ; Frc(value)
  %984 = fadd fast float %983, %236
  %985 = fmul fast float %247, %981
  %986 = call float @dx.op.unary.f32(i32 22, float %985)  ; Frc(value)
  %987 = fadd fast float %986, %238
  %988 = fmul fast float %953, %981
  %989 = call float @dx.op.unary.f32(i32 22, float %988)  ; Frc(value)
  %990 = fmul fast float %989, 0x401921FB60000000
  %991 = fadd fast float %990, %972
  %992 = call float @dx.op.unary.f32(i32 13, float %991)  ; Sin(value)
  %993 = call float @dx.op.unary.f32(i32 12, float %991)  ; Cos(value)
  %994 = fsub fast float -0.000000e+00, %992
  %995 = fadd fast float %946, -5.000000e-01
  %996 = fadd fast float %947, -5.000000e-01
  %997 = fmul fast float %964, %995
  %998 = fmul fast float %966, %996
  %999 = fadd fast float %997, 5.000000e-01
  %1000 = fadd fast float %998, 5.000000e-01
  %1001 = fmul fast float %975, %999
  %1002 = fmul fast float %978, %1000
  %1003 = fmul fast float %993, %1001
  %1004 = call float @dx.op.tertiary.f32(i32 46, float %994, float %1002, float %1003)  ; FMad(a,b,c)
  %1005 = fmul fast float %992, %1001
  %1006 = call float @dx.op.tertiary.f32(i32 46, float %993, float %1002, float %1005)  ; FMad(a,b,c)
  %1007 = fadd fast float %984, %1004
  %1008 = fadd fast float %987, %1006
  %1009 = icmp ugt i32 %958, 1
  %1010 = icmp ugt i32 %956, 33554431
  %1011 = or i1 %1010, %1009
  br i1 %1011, label %1012, label %1037

; <label>:1012                                    ; preds = %939
  %1013 = add i32 %38, 244
  %1014 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.i32 %1014, 0
  %1016 = lshr i32 %1015, 16
  %1017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1016)  ; LegacyF16ToF32(value)
  %1018 = fmul fast float %980, %1017
  %1019 = call float @dx.op.unary.f32(i32 22, float %1018)  ; Frc(value)
  %1020 = mul nuw nsw i32 %958, %959
  %1021 = uitofp i32 %1020 to float
  %1022 = fmul fast float %1019, %1021
  %1023 = call float @dx.op.unary.f32(i32 27, float %1022)  ; Round_ni(value)
  %1024 = fptoui float %1023 to i32
  %1025 = urem i32 %1024, %958
  %1026 = udiv i32 %1024, %959
  %1027 = call float @dx.op.unary.f32(i32 22, float %1007)  ; Frc(value)
  %1028 = call float @dx.op.unary.f32(i32 22, float %1008)  ; Frc(value)
  %1029 = uitofp i32 %1025 to float
  %1030 = uitofp i32 %1026 to float
  %1031 = fadd fast float %1027, %1029
  %1032 = fadd fast float %1028, %1030
  %1033 = uitofp i32 %958 to float
  %1034 = uitofp i32 %959 to float
  %1035 = fdiv fast float %1031, %1033
  %1036 = fdiv fast float %1032, %1034
  br label %1037

; <label>:1037                                    ; preds = %1012, %939
  %1038 = phi float [ %1035, %1012 ], [ %1007, %939 ]
  %1039 = phi float [ %1036, %1012 ], [ %1008, %939 ]
  %1040 = and i32 %933, 16777216
  %1041 = icmp eq i32 %1040, 0
  br i1 %1041, label %1151, label %1042

; <label>:1042                                    ; preds = %1037
  %1043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1044 = extractvalue %dx.types.CBufRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.CBufRet.f32 %1043, 1
  %1046 = extractvalue %dx.types.CBufRet.f32 %1043, 2
  %1047 = fadd fast float %1044, %121
  %1048 = fadd fast float %1045, %122
  %1049 = fadd fast float %1046, %123
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = call float @dx.op.unary.f32(i32 7, float %1051)  ; Saturate(value)
  %1053 = icmp eq i32 %39, 65535
  br i1 %1053, label %1148, label %1054

; <label>:1054                                    ; preds = %1042
  %1055 = lshr i32 %39, 1
  %1056 = shl i32 %1055, 2
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = and i32 %39, 1
  %1060 = icmp ne i32 %1059, 0
  %1061 = lshr i32 %1058, 16
  %1062 = and i32 %1058, 65535
  %1063 = select i1 %1060, i32 %1061, i32 %1062
  %1064 = icmp eq i32 %1063, 65535
  br i1 %1064, label %1144, label %1065

; <label>:1065                                    ; preds = %1054
  %1066 = mul nuw nsw i32 %1063, 40
  %1067 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1066, i32 undef)  ; BufferLoad(srv,index,wot)
  %1068 = extractvalue %dx.types.ResRet.f32 %1067, 0
  %1069 = extractvalue %dx.types.ResRet.f32 %1067, 1
  %1070 = extractvalue %dx.types.ResRet.f32 %1067, 2
  %1071 = add nuw nsw i32 %1066, 12
  %1072 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1071, i32 undef)  ; BufferLoad(srv,index,wot)
  %1073 = extractvalue %dx.types.ResRet.f32 %1072, 0
  %1074 = extractvalue %dx.types.ResRet.f32 %1072, 1
  %1075 = extractvalue %dx.types.ResRet.f32 %1072, 2
  %1076 = add nuw nsw i32 %1066, 24
  %1077 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.f32 %1077, 0
  %1079 = extractvalue %dx.types.ResRet.f32 %1077, 1
  %1080 = extractvalue %dx.types.ResRet.f32 %1077, 2
  %1081 = add nuw nsw i32 %1066, 36
  %1082 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1081, i32 undef)  ; BufferLoad(srv,index,wot)
  %1083 = extractvalue %dx.types.ResRet.f32 %1082, 0
  %1084 = fsub fast float %1047, %1068
  %1085 = fsub fast float %1048, %1069
  %1086 = fsub fast float %1049, %1070
  %1087 = fmul fast float %1083, %1084
  %1088 = fmul fast float %1083, %1085
  %1089 = fmul fast float %1083, %1086
  %1090 = call float @dx.op.unary.f32(i32 27, float %1087)  ; Round_ni(value)
  %1091 = call float @dx.op.unary.f32(i32 27, float %1088)  ; Round_ni(value)
  %1092 = call float @dx.op.unary.f32(i32 27, float %1089)  ; Round_ni(value)
  %1093 = fadd fast float %1090, 5.000000e-01
  %1094 = fadd fast float %1091, 5.000000e-01
  %1095 = fadd fast float %1092, 5.000000e-01
  %1096 = fmul fast float %1093, %1073
  %1097 = fmul fast float %1094, %1074
  %1098 = fmul fast float %1095, %1075
  %1099 = shl i32 %39, 2
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = add i32 %1101, 0
  %1103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1104 = call float @dx.op.unary.f32(i32 22, float %1096)  ; Frc(value)
  %1105 = call float @dx.op.unary.f32(i32 22, float %1097)  ; Frc(value)
  %1106 = call float @dx.op.unary.f32(i32 22, float %1098)  ; Frc(value)
  %1107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1103, %dx.types.Handle %35, float %1104, float %1105, float %1106, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1108 = extractvalue %dx.types.ResRet.f32 %1107, 0
  %1109 = extractvalue %dx.types.ResRet.f32 %1107, 1
  %1110 = extractvalue %dx.types.ResRet.f32 %1107, 2
  %1111 = fmul fast float %1108, 1.023000e+03
  %1112 = fmul fast float %1109, 1.023000e+03
  %1113 = fmul fast float %1110, 1.023000e+03
  %1114 = fadd fast float %1111, 5.000000e-01
  %1115 = fadd fast float %1112, 5.000000e-01
  %1116 = fadd fast float %1113, 5.000000e-01
  %1117 = call float @dx.op.unary.f32(i32 27, float %1114)  ; Round_ni(value)
  %1118 = call float @dx.op.unary.f32(i32 27, float %1115)  ; Round_ni(value)
  %1119 = call float @dx.op.unary.f32(i32 27, float %1116)  ; Round_ni(value)
  %1120 = fsub fast float %1087, %1090
  %1121 = fsub fast float %1088, %1091
  %1122 = fsub fast float %1089, %1092
  %1123 = fmul fast float %1120, 7.500000e-01
  %1124 = fmul fast float %1121, 7.500000e-01
  %1125 = fmul fast float %1122, 7.500000e-01
  %1126 = fadd fast float %1090, 1.250000e-01
  %1127 = fadd fast float %1126, %1123
  %1128 = fadd fast float %1127, %1117
  %1129 = fadd fast float %1091, 1.250000e-01
  %1130 = fadd fast float %1129, %1124
  %1131 = fadd fast float %1130, %1118
  %1132 = fadd fast float %1092, 1.250000e-01
  %1133 = fadd fast float %1132, %1125
  %1134 = fadd fast float %1133, %1119
  %1135 = fmul fast float %1128, %1078
  %1136 = fmul fast float %1131, %1079
  %1137 = fmul fast float %1134, %1080
  %1138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1139 = extractvalue %dx.types.ResRet.i32 %1138, 0
  %1140 = add i32 %1139, 0
  %1141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1142 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1141, %dx.types.Handle %33, float %1135, float %1136, float %1137, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1143 = extractvalue %dx.types.ResRet.f32 %1142, 0
  br label %1144

; <label>:1144                                    ; preds = %1065, %1054
  %1145 = phi float [ %1143, %1065 ], [ -1.000000e+00, %1054 ]
  %1146 = fadd fast float %1145, %1052
  %1147 = call float @dx.op.unary.f32(i32 7, float %1146)  ; Saturate(value)
  br label %1148

; <label>:1148                                    ; preds = %1144, %1042
  %1149 = phi float [ %1147, %1144 ], [ %1052, %1042 ]
  %1150 = fmul fast float %1149, %388
  br label %1151

; <label>:1151                                    ; preds = %1148, %1037
  %1152 = phi float [ %1150, %1148 ], [ %388, %1037 ]
  %1153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1154 = extractvalue %dx.types.ResRet.i32 %1153, 0
  %1155 = and i32 %1154, 256
  %1156 = icmp eq i32 %1155, 0
  br i1 %1156, label %1203, label %1157

; <label>:1157                                    ; preds = %1151
  %1158 = add i32 %38, 428
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1158, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = add i32 %1160, 0
  %1162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1163 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1162, %dx.types.Handle %63, float %1038, float %1039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1164 = extractvalue %dx.types.ResRet.f32 %1163, 0
  %1165 = add i32 %38, 116
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = shl i32 %1167, 4
  %1169 = and i32 %1168, 32752
  %1170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1169)  ; LegacyF16ToF32(value)
  %1171 = lshr i32 %1167, 7
  %1172 = and i32 %1171, 32752
  %1173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1172)  ; LegacyF16ToF32(value)
  %1174 = fsub fast float 1.000000e+00, %1152
  %1175 = call float @dx.op.binary.f32(i32 35, float %1174, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1176 = bitcast float %1152 to i32
  %1177 = sitofp i32 %1176 to float
  %1178 = fadd fast float %1177, 0xC1CFBF8940000000
  %1179 = fmul fast float %1173, %1178
  %1180 = fadd fast float %1179, 0x41CFBF8940000000
  %1181 = fptosi float %1180 to i32
  %1182 = bitcast i32 %1181 to float
  %1183 = bitcast float %1175 to i32
  %1184 = sitofp i32 %1183 to float
  %1185 = fadd fast float %1184, 0xC1CFBF8940000000
  %1186 = fmul fast float %1185, %1173
  %1187 = fadd fast float %1186, 0x41CFBF8940000000
  %1188 = fptosi float %1187 to i32
  %1189 = bitcast i32 %1188 to float
  %1190 = fmul fast float %1182, %1170
  %1191 = fmul fast float %1189, %1170
  %1192 = fsub fast float %1175, %1190
  %1193 = fadd fast float %1191, %1175
  %1194 = call float @dx.op.unary.f32(i32 7, float %1192)  ; Saturate(value)
  %1195 = call float @dx.op.unary.f32(i32 7, float %1193)  ; Saturate(value)
  %1196 = fsub fast float %1164, %1194
  %1197 = fsub fast float %1195, %1194
  %1198 = bitcast float %1197 to i32
  %1199 = sub nsw i32 2129859010, %1198
  %1200 = bitcast i32 %1199 to float
  %1201 = fmul fast float %1200, %1196
  %1202 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  br label %1203

; <label>:1203                                    ; preds = %1157, %1151
  %1204 = phi float [ %1202, %1157 ], [ %1152, %1151 ]
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = and i32 %1206, 128
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1225, label %1209

; <label>:1209                                    ; preds = %1203
  %1210 = add i32 %38, 412
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1210, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = add i32 %1212, 0
  %1214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1214, %dx.types.Handle %63, float %1038, float %1039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1216 = extractvalue %dx.types.ResRet.f32 %1215, 0
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = and i32 %1218, 524288
  %1220 = icmp ne i32 %1219, 0
  %1221 = fcmp fast ogt float %1216, 0x3FE0101020000000
  %1222 = select i1 %1221, float 1.000000e+00, float 0.000000e+00
  %1223 = select i1 %1220, float %1222, float %1216
  %1224 = fmul fast float %1223, %1204
  br label %1225

; <label>:1225                                    ; preds = %1209, %1203
  %1226 = phi float [ %1224, %1209 ], [ %1204, %1203 ]
  %1227 = fcmp fast ult float %1226, 0x3F70101020000000
  br i1 %1227, label %1857, label %1228

; <label>:1228                                    ; preds = %1225
  %1229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1230 = extractvalue %dx.types.ResRet.i32 %1229, 0
  %1231 = and i32 %1230, 16
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1431, label %1233

; <label>:1233                                    ; preds = %1228
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = add i32 %38, 364
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = add i32 %1238, 0
  %1240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1240, %dx.types.Handle %62, float %1038, float %1039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  %1243 = extractvalue %dx.types.ResRet.f32 %1241, 1
  %1244 = extractvalue %dx.types.ResRet.f32 %1241, 2
  %1245 = extractvalue %dx.types.ResRet.f32 %1241, 3
  %1246 = and i32 %1235, 255
  %1247 = uitofp i32 %1246 to float
  %1248 = lshr i32 %1235, 8
  %1249 = and i32 %1248, 255
  %1250 = uitofp i32 %1249 to float
  %1251 = fmul fast float %1245, %1247
  %1252 = fadd fast float %1251, %1250
  %1253 = fmul fast float %1252, 0x3F70101000000000
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = and i32 %1255, 512
  %1257 = icmp eq i32 %1256, 0
  br i1 %1257, label %1266, label %1258

; <label>:1258                                    ; preds = %1233
  %1259 = add i32 %38, 444
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1259, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = add i32 %1261, 0
  %1263 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1262, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1264 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1263, %dx.types.Handle %63, float %1038, float %1039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1265 = extractvalue %dx.types.ResRet.f32 %1264, 0
  br label %1266

; <label>:1266                                    ; preds = %1258, %1233
  %1267 = phi float [ %1265, %1258 ], [ 1.000000e+00, %1233 ]
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = and i32 %1269, 33554432
  %1271 = icmp eq i32 %1270, 0
  br i1 %1271, label %1378, label %1272

; <label>:1272                                    ; preds = %1266
  %1273 = add i32 %38, 240
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1273, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = and i32 %1275, 65535
  %1277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1276)  ; LegacyF16ToF32(value)
  %1278 = lshr i32 %1275, 16
  %1279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1278)  ; LegacyF16ToF32(value)
  %1280 = add i32 %38, 244
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 65535
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = lshr i32 %1286, 24
  %1288 = uitofp i32 %1287 to float
  %1289 = fmul fast float %1288, 0x3F70101020000000
  %1290 = and i32 %1286, 255
  %1291 = uitofp i32 %1290 to float
  %1292 = fmul fast float %1291, 0x3F70101020000000
  %1293 = lshr i32 %1286, 8
  %1294 = and i32 %1293, 255
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1295, 0x3F70101020000000
  %1297 = lshr i32 %1286, 16
  %1298 = and i32 %1297, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1299, 0x3F70101020000000
  %1301 = add i32 %38, 236
  %1302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1301, i32 undef)  ; BufferLoad(srv,index,wot)
  %1303 = extractvalue %dx.types.ResRet.i32 %1302, 0
  %1304 = lshr i32 %1303, 24
  %1305 = uitofp i32 %1304 to float
  %1306 = fmul fast float %1305, 0x3F70101020000000
  %1307 = and i32 %1303, 255
  %1308 = uitofp i32 %1307 to float
  %1309 = fmul fast float %1308, 0x3F70101020000000
  %1310 = lshr i32 %1303, 8
  %1311 = and i32 %1310, 255
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1312, 0x3F70101020000000
  %1314 = lshr i32 %1303, 16
  %1315 = and i32 %1314, 255
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3F70101020000000
  %1318 = bitcast float %1242 to i32
  %1319 = ashr i32 %1318, 1
  %1320 = sub nsw i32 1597463174, %1319
  %1321 = bitcast i32 %1320 to float
  %1322 = fmul fast float %1242, 5.000000e-01
  %1323 = fmul fast float %1321, %1321
  %1324 = fmul fast float %1323, %1322
  %1325 = fsub fast float 1.500000e+00, %1324
  %1326 = fmul fast float %1321, %1242
  %1327 = fmul fast float %1326, %1325
  %1328 = bitcast float %1243 to i32
  %1329 = ashr i32 %1328, 1
  %1330 = sub nsw i32 1597463174, %1329
  %1331 = bitcast i32 %1330 to float
  %1332 = fmul fast float %1243, 5.000000e-01
  %1333 = fmul fast float %1331, %1331
  %1334 = fmul fast float %1333, %1332
  %1335 = fsub fast float 1.500000e+00, %1334
  %1336 = fmul fast float %1331, %1243
  %1337 = fmul fast float %1336, %1335
  %1338 = bitcast float %1244 to i32
  %1339 = ashr i32 %1338, 1
  %1340 = sub nsw i32 1597463174, %1339
  %1341 = bitcast i32 %1340 to float
  %1342 = fmul fast float %1244, 5.000000e-01
  %1343 = fmul fast float %1341, %1341
  %1344 = fmul fast float %1343, %1342
  %1345 = fsub fast float 1.500000e+00, %1344
  %1346 = fmul fast float %1341, %1244
  %1347 = fmul fast float %1346, %1345
  %1348 = fsub fast float %1327, %1309
  %1349 = fsub fast float %1337, %1313
  %1350 = fsub fast float %1347, %1317
  %1351 = fmul fast float %1348, %1277
  %1352 = fmul fast float %1349, %1279
  %1353 = fmul fast float %1350, %1284
  %1354 = fadd fast float %1351, %1292
  %1355 = fadd fast float %1352, %1296
  %1356 = fadd fast float %1353, %1300
  %1357 = call float @dx.op.unary.f32(i32 7, float %1354)  ; Saturate(value)
  %1358 = call float @dx.op.unary.f32(i32 7, float %1355)  ; Saturate(value)
  %1359 = call float @dx.op.unary.f32(i32 7, float %1356)  ; Saturate(value)
  %1360 = fmul fast float %1357, %1357
  %1361 = fmul fast float %1358, %1358
  %1362 = fmul fast float %1359, %1359
  %1363 = fsub fast float %1360, %1242
  %1364 = fsub fast float %1361, %1243
  %1365 = fsub fast float %1362, %1244
  %1366 = fmul fast float %1363, %1267
  %1367 = fmul fast float %1364, %1267
  %1368 = fmul fast float %1365, %1267
  %1369 = fadd fast float %1366, %1242
  %1370 = fadd fast float %1367, %1243
  %1371 = fadd fast float %1368, %1244
  %1372 = fadd fast float %1289, %1253
  %1373 = fsub fast float %1372, %1306
  %1374 = call float @dx.op.unary.f32(i32 7, float %1373)  ; Saturate(value)
  %1375 = fsub fast float %1374, %1253
  %1376 = fmul fast float %1375, %1267
  %1377 = fadd fast float %1376, %1253
  br label %1431

; <label>:1378                                    ; preds = %1266
  %1379 = and i32 %1269, 134217728
  %1380 = icmp eq i32 %1379, 0
  br i1 %1380, label %1415, label %1381

; <label>:1381                                    ; preds = %1378
  %1382 = call float @dx.op.unary.f32(i32 24, float %223)  ; Sqrt(value)
  %1383 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %1384 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %1385 = fadd fast float %1382, -5.000000e-01
  %1386 = fadd fast float %1383, -5.000000e-01
  %1387 = fadd fast float %1384, -5.000000e-01
  %1388 = fmul fast float %1385, %1267
  %1389 = fmul fast float %1386, %1267
  %1390 = fmul fast float %1387, %1267
  %1391 = fadd fast float %1388, 5.000000e-01
  %1392 = fadd fast float %1389, 5.000000e-01
  %1393 = fadd fast float %1390, 5.000000e-01
  %1394 = call float @dx.op.unary.f32(i32 24, float %1242)  ; Sqrt(value)
  %1395 = call float @dx.op.unary.f32(i32 24, float %1243)  ; Sqrt(value)
  %1396 = call float @dx.op.unary.f32(i32 24, float %1244)  ; Sqrt(value)
  %1397 = fmul fast float %1391, 2.000000e+00
  %1398 = fsub fast float 1.000000e+00, %1397
  %1399 = fmul fast float %1398, %1394
  %1400 = fadd fast float %1399, %1397
  %1401 = fmul fast float %1400, %1394
  %1402 = fmul fast float %1392, 2.000000e+00
  %1403 = fsub fast float 1.000000e+00, %1402
  %1404 = fmul fast float %1403, %1395
  %1405 = fadd fast float %1404, %1402
  %1406 = fmul fast float %1405, %1395
  %1407 = fmul fast float %1393, 2.000000e+00
  %1408 = fsub fast float 1.000000e+00, %1407
  %1409 = fmul fast float %1408, %1396
  %1410 = fadd fast float %1409, %1407
  %1411 = fmul fast float %1410, %1396
  %1412 = fmul fast float %1401, %1401
  %1413 = fmul fast float %1406, %1406
  %1414 = fmul fast float %1411, %1411
  br label %1431

; <label>:1415                                    ; preds = %1378
  %1416 = fmul fast float %223, %223
  %1417 = fmul fast float %227, %227
  %1418 = fmul fast float %231, %231
  %1419 = fadd fast float %1416, -1.000000e+00
  %1420 = fadd fast float %1417, -1.000000e+00
  %1421 = fadd fast float %1418, -1.000000e+00
  %1422 = fmul fast float %1267, %1419
  %1423 = fmul fast float %1267, %1420
  %1424 = fmul fast float %1267, %1421
  %1425 = fadd fast float %1422, 1.000000e+00
  %1426 = fadd fast float %1423, 1.000000e+00
  %1427 = fadd fast float %1424, 1.000000e+00
  %1428 = fmul fast float %1425, %1242
  %1429 = fmul fast float %1426, %1243
  %1430 = fmul fast float %1427, %1244
  br label %1431

; <label>:1431                                    ; preds = %1415, %1381, %1272, %1228
  %1432 = phi float [ %1377, %1272 ], [ %1253, %1381 ], [ %1253, %1415 ], [ 0x3FA23C0BE0000000, %1228 ]
  %1433 = phi float [ %1369, %1272 ], [ %1412, %1381 ], [ %1428, %1415 ], [ 1.000000e+00, %1228 ]
  %1434 = phi float [ %1370, %1272 ], [ %1413, %1381 ], [ %1429, %1415 ], [ 1.000000e+00, %1228 ]
  %1435 = phi float [ %1371, %1272 ], [ %1414, %1381 ], [ %1430, %1415 ], [ 1.000000e+00, %1228 ]
  %1436 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1437 = extractvalue %dx.types.CBufRet.i32 %1436, 1
  %1438 = and i32 %1437, 1
  %1439 = icmp ne i32 %1438, 0
  %1440 = add i32 %38, 356
  %1441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1440, i32 undef)  ; BufferLoad(srv,index,wot)
  %1442 = extractvalue %dx.types.ResRet.i32 %1441, 0
  %1443 = and i32 %1442, 32
  %1444 = icmp ne i32 %1443, 0
  %1445 = and i1 %1439, %1444
  %1446 = select i1 %1445, float 1.000000e+00, float %1433
  %1447 = select i1 %1445, float 0x3FD3333340000000, float %1434
  %1448 = select i1 %1445, float 0x3FD3333340000000, float %1435
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = and i32 %1450, 32
  %1452 = icmp eq i32 %1451, 0
  br i1 %1452, label %1525, label %1453

; <label>:1453                                    ; preds = %1431
  %1454 = add i32 %38, 108
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1454, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = add i32 %38, 380
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1457, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = add i32 %1459, 0
  %1461 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1460, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1462 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1461, %dx.types.Handle %62, float %1038, float %1039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1463 = extractvalue %dx.types.ResRet.f32 %1462, 0
  %1464 = extractvalue %dx.types.ResRet.f32 %1462, 1
  %1465 = extractvalue %dx.types.ResRet.f32 %1462, 2
  %1466 = extractvalue %dx.types.ResRet.f32 %1462, 3
  %1467 = and i32 %1456, 255
  %1468 = uitofp i32 %1467 to float
  %1469 = lshr i32 %1456, 8
  %1470 = and i32 %1469, 255
  %1471 = uitofp i32 %1470 to float
  %1472 = lshr i32 %1456, 16
  %1473 = and i32 %1472, 255
  %1474 = uitofp i32 %1473 to float
  %1475 = fmul fast float %1474, 0x3F70101000000000
  %1476 = fmul fast float %1463, %1468
  %1477 = fadd fast float %1476, %1471
  %1478 = fmul fast float %1477, 0x3F70101000000000
  %1479 = fadd fast float %1464, -5.000000e-01
  %1480 = fadd fast float %1466, -5.000000e-01
  %1481 = fmul fast float %1479, %1475
  %1482 = fmul fast float %1480, %1475
  %1483 = fadd fast float %1481, 5.000000e-01
  %1484 = fadd fast float %1482, 5.000000e-01
  %1485 = fmul fast float %1483, 2.000000e+00
  %1486 = fadd fast float %1485, -1.000000e+00
  %1487 = fmul fast float %1484, 2.000000e+00
  %1488 = fadd fast float %1487, -1.000000e+00
  %1489 = fadd fast float %1486, %1488
  %1490 = fmul fast float %1489, 5.000000e-01
  %1491 = fsub fast float %1486, %1488
  %1492 = fmul fast float %1491, 5.000000e-01
  %1493 = call float @dx.op.unary.f32(i32 6, float %1490)  ; FAbs(value)
  %1494 = fsub fast float 1.000000e+00, %1493
  %1495 = call float @dx.op.unary.f32(i32 6, float %1492)  ; FAbs(value)
  %1496 = fsub fast float %1494, %1495
  %1497 = call float @dx.op.dot3.f32(i32 55, float %1490, float %1492, float %1496, float %1490, float %1492, float %1496)  ; Dot3(ax,ay,az,bx,by,bz)
  %1498 = call float @dx.op.unary.f32(i32 25, float %1497)  ; Rsqrt(value)
  %1499 = fmul fast float %1490, %1498
  %1500 = fmul fast float %1492, %1498
  %1501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1502 = extractvalue %dx.types.ResRet.i32 %1501, 0
  %1503 = and i32 %1502, 67108864
  %1504 = icmp eq i32 %1503, 0
  br i1 %1504, label %1521, label %1505

; <label>:1505                                    ; preds = %1453
  %1506 = add i32 %38, 296
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = and i32 %1508, 65535
  %1510 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1509)  ; LegacyF16ToF32(value)
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 65535
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = lshr i32 %1508, 16
  %1516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1515)  ; LegacyF16ToF32(value)
  %1517 = fsub fast float %1478, %1516
  %1518 = fmul fast float %1517, %1510
  %1519 = fadd fast float %1518, %1514
  %1520 = call float @dx.op.unary.f32(i32 7, float %1519)  ; Saturate(value)
  br label %1521

; <label>:1521                                    ; preds = %1505, %1453
  %1522 = phi float [ %1520, %1505 ], [ %1478, %1453 ]
  %1523 = call float @dx.op.dot2.f32(i32 54, float %1499, float %1500, float %942, float %943)  ; Dot2(ax,ay,bx,by)
  %1524 = call float @dx.op.dot2.f32(i32 54, float %1499, float %1500, float %944, float %945)  ; Dot2(ax,ay,bx,by)
  br label %1525

; <label>:1525                                    ; preds = %1521, %1431
  %1526 = phi float [ %1522, %1521 ], [ 0x3FD6666660000000, %1431 ]
  %1527 = phi float [ %1523, %1521 ], [ 0.000000e+00, %1431 ]
  %1528 = phi float [ %1524, %1521 ], [ 0.000000e+00, %1431 ]
  %1529 = phi float [ %1465, %1521 ], [ 1.000000e+00, %1431 ]
  %1530 = add i32 %38, 176
  %1531 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1532 = extractvalue %dx.types.ResRet.i32 %1531, 0
  %1533 = lshr i32 %1532, 22
  %1534 = shl nuw nsw i32 %1533, 5
  %1535 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1534)  ; LegacyF16ToF32(value)
  %1536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1537 = extractvalue %dx.types.ResRet.i32 %1536, 0
  %1538 = and i32 %1537, 64
  %1539 = icmp eq i32 %1538, 0
  br i1 %1539, label %1573, label %1540

; <label>:1540                                    ; preds = %1525
  %1541 = add i32 %38, 396
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = add i32 %1543, 0
  %1545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 131072
  %1549 = icmp eq i32 %1548, 0
  %1550 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1545, %dx.types.Handle %62, float %1038, float %1039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1551 = extractvalue %dx.types.ResRet.f32 %1550, 0
  %1552 = extractvalue %dx.types.ResRet.f32 %1550, 1
  %1553 = extractvalue %dx.types.ResRet.f32 %1550, 2
  %1554 = fmul fast float %1551, %211
  %1555 = fmul fast float %1552, %214
  %1556 = fmul fast float %1553, %217
  br i1 %1549, label %1563, label %1557

; <label>:1557                                    ; preds = %1540
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 0
  %1560 = fmul fast float %1559, %1554
  %1561 = fmul fast float %1559, %1555
  %1562 = fmul fast float %1559, %1556
  br label %1563

; <label>:1563                                    ; preds = %1557, %1540
  %1564 = phi float [ %1560, %1557 ], [ %1554, %1540 ]
  %1565 = phi float [ %1561, %1557 ], [ %1555, %1540 ]
  %1566 = phi float [ %1562, %1557 ], [ %1556, %1540 ]
  %1567 = fmul fast float %1564, %1535
  %1568 = select i1 %163, float %1567, float %1564
  %1569 = call float @dx.op.dot3.f32(i32 55, float %1568, float %1565, float %1566, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1570 = select i1 %163, float 0.000000e+00, float %1564
  %1571 = select i1 %163, float %1569, float %1565
  %1572 = select i1 %163, float 0.000000e+00, float %1566
  br label %1573

; <label>:1573                                    ; preds = %1563, %1525
  %1574 = phi float [ %1570, %1563 ], [ 0.000000e+00, %1525 ]
  %1575 = phi float [ %1571, %1563 ], [ 0.000000e+00, %1525 ]
  %1576 = phi float [ %1572, %1563 ], [ 0.000000e+00, %1525 ]
  %1577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.i32 %1577, 0
  %1579 = and i32 %1578, 10240
  %1580 = icmp eq i32 %1579, 0
  br i1 %1580, label %1625, label %1581

; <label>:1581                                    ; preds = %1573
  %1582 = add i32 %38, 460
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1582, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = add i32 %1584, 0
  %1586 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1585, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1587 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1586, %dx.types.Handle %63, float %1038, float %1039, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1588 = extractvalue %dx.types.ResRet.f32 %1587, 1
  %1589 = extractvalue %dx.types.ResRet.f32 %1587, 3
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = and i32 %1591, 1048576
  %1593 = icmp ne i32 %1592, 0
  %1594 = and i32 %1591, 8192
  %1595 = icmp eq i32 %1594, 0
  br i1 %1595, label %1611, label %1596

; <label>:1596                                    ; preds = %1581
  %1597 = extractvalue %dx.types.ResRet.f32 %1587, 2
  %1598 = select i1 %1593, float %1597, float %1588
  %1599 = extractvalue %dx.types.ResRet.f32 %1587, 0
  %1600 = select i1 %1593, float %1599, float %1588
  %1601 = add i32 %38, 112
  %1602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1601, i32 undef)  ; BufferLoad(srv,index,wot)
  %1603 = extractvalue %dx.types.ResRet.i32 %1602, 0
  %1604 = lshr i32 %1603, 16
  %1605 = and i32 %1604, 255
  %1606 = uitofp i32 %1605 to float
  %1607 = fmul fast float %1606, 0x3F80101020000000
  %1608 = fmul fast float %1607, %1600
  %1609 = fmul fast float %1607, %1588
  %1610 = fmul fast float %1607, %1598
  br label %1611

; <label>:1611                                    ; preds = %1596, %1581
  %1612 = phi float [ %1608, %1596 ], [ 0.000000e+00, %1581 ]
  %1613 = phi float [ %1609, %1596 ], [ 0.000000e+00, %1581 ]
  %1614 = phi float [ %1610, %1596 ], [ 0.000000e+00, %1581 ]
  %1615 = and i32 %1591, 2048
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1625, label %1617

; <label>:1617                                    ; preds = %1611
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1530, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = shl i32 %1619, 4
  %1621 = and i32 %1620, 32752
  %1622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1621)  ; LegacyF16ToF32(value)
  %1623 = fmul fast float %1622, %1589
  %1624 = call float @dx.op.binary.f32(i32 35, float %1623, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1625

; <label>:1625                                    ; preds = %1617, %1611, %1573
  %1626 = phi float [ %1612, %1617 ], [ %1612, %1611 ], [ 0.000000e+00, %1573 ]
  %1627 = phi float [ %1613, %1617 ], [ %1613, %1611 ], [ 0.000000e+00, %1573 ]
  %1628 = phi float [ %1614, %1617 ], [ %1614, %1611 ], [ 0.000000e+00, %1573 ]
  %1629 = phi float [ %1624, %1617 ], [ 0x3F70101020000000, %1611 ], [ 0x3F70101020000000, %1573 ]
  %1630 = add i32 %38, 112
  %1631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1630, i32 undef)  ; BufferLoad(srv,index,wot)
  %1632 = extractvalue %dx.types.ResRet.i32 %1631, 0
  %1633 = and i32 %1632, 255
  %1634 = uitofp i32 %1633 to float
  %1635 = lshr i32 %1632, 8
  %1636 = and i32 %1635, 255
  %1637 = uitofp i32 %1636 to float
  %1638 = call float @dx.op.dot3.f32(i32 55, float %1446, float %1447, float %1448, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1639 = fmul fast float %1637, %1638
  %1640 = fadd fast float %1639, %1634
  %1641 = fmul fast float %1640, 0x3F70101020000000
  %1642 = call float @dx.op.unary.f32(i32 7, float %1641)  ; Saturate(value)
  br i1 %930, label %1643, label %1651

; <label>:1643                                    ; preds = %1625
  %1644 = fsub fast float 1.000000e+00, %1226
  %1645 = fmul fast float %1644, %914
  %1646 = fmul fast float %1644, %915
  %1647 = fmul fast float %1644, %916
  %1648 = fmul fast float %1644, %917
  %1649 = fmul fast float %1644, %918
  %1650 = fmul fast float %1644, %919
  br label %1651

; <label>:1651                                    ; preds = %1643, %1625
  %1652 = phi float [ %1645, %1643 ], [ %914, %1625 ]
  %1653 = phi float [ %1646, %1643 ], [ %915, %1625 ]
  %1654 = phi float [ %1647, %1643 ], [ %916, %1625 ]
  %1655 = phi float [ %1648, %1643 ], [ %917, %1625 ]
  %1656 = phi float [ %1649, %1643 ], [ %918, %1625 ]
  %1657 = phi float [ %1650, %1643 ], [ %919, %1625 ]
  %1658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1659 = extractvalue %dx.types.ResRet.i32 %1658, 0
  %1660 = and i32 %1659, 3
  %1661 = icmp eq i32 %1660, 3
  br i1 %1661, label %1740, label %1662

; <label>:1662                                    ; preds = %1651
  %1663 = and i32 %1659, 16
  %1664 = icmp ne i32 %1663, 0
  %1665 = select i1 %1664, float %1226, float 0.000000e+00
  %1666 = icmp eq i32 %1660, 0
  br i1 %1666, label %1667, label %1695

; <label>:1667                                    ; preds = %1662
  %1668 = and i32 %1659, 64
  %1669 = icmp ne i32 %1668, 0
  %1670 = select i1 %1669, float %1226, float 0.000000e+00
  %1671 = fsub fast float %1446, %1652
  %1672 = fsub fast float %1447, %1653
  %1673 = fsub fast float %1448, %1654
  %1674 = fmul fast float %1665, %1671
  %1675 = fmul fast float %1665, %1672
  %1676 = fmul fast float %1665, %1673
  %1677 = fadd fast float %1674, %1652
  %1678 = fadd fast float %1675, %1653
  %1679 = fadd fast float %1676, %1654
  %1680 = fsub fast float %1432, %923
  %1681 = fmul fast float %1665, %1680
  %1682 = fadd fast float %1681, %923
  %1683 = fsub fast float %1574, %1655
  %1684 = fsub fast float %1575, %1656
  %1685 = fsub fast float %1576, %1657
  %1686 = fmul fast float %1670, %1683
  %1687 = fmul fast float %1670, %1684
  %1688 = fmul fast float %1670, %1685
  %1689 = fadd fast float %1686, %1655
  %1690 = fadd fast float %1687, %1656
  %1691 = fadd fast float %1688, %1657
  %1692 = fsub fast float %1642, %928
  %1693 = fmul fast float %1665, %1692
  %1694 = fadd fast float %1693, %928
  br label %1740

; <label>:1695                                    ; preds = %1662
  %1696 = icmp eq i32 %1660, 1
  br i1 %1696, label %1697, label %1710

; <label>:1697                                    ; preds = %1695
  %1698 = fadd fast float %1446, -1.000000e+00
  %1699 = fadd fast float %1447, -1.000000e+00
  %1700 = fadd fast float %1448, -1.000000e+00
  %1701 = fmul fast float %1665, %1698
  %1702 = fmul fast float %1665, %1699
  %1703 = fmul fast float %1665, %1700
  %1704 = fadd fast float %1701, 1.000000e+00
  %1705 = fadd fast float %1702, 1.000000e+00
  %1706 = fadd fast float %1703, 1.000000e+00
  %1707 = fmul fast float %1704, %1652
  %1708 = fmul fast float %1705, %1653
  %1709 = fmul fast float %1706, %1654
  br label %1740

; <label>:1710                                    ; preds = %1695
  %1711 = icmp eq i32 %1660, 2
  br i1 %1711, label %1712, label %1740

; <label>:1712                                    ; preds = %1710
  %1713 = call float @dx.op.unary.f32(i32 24, float %1446)  ; Sqrt(value)
  %1714 = call float @dx.op.unary.f32(i32 24, float %1447)  ; Sqrt(value)
  %1715 = call float @dx.op.unary.f32(i32 24, float %1448)  ; Sqrt(value)
  %1716 = fadd fast float %1713, -5.000000e-01
  %1717 = fadd fast float %1714, -5.000000e-01
  %1718 = fadd fast float %1715, -5.000000e-01
  %1719 = fmul fast float %1716, %1665
  %1720 = fmul fast float %1717, %1665
  %1721 = fmul fast float %1718, %1665
  %1722 = fadd fast float %1719, 5.000000e-01
  %1723 = fadd fast float %1720, 5.000000e-01
  %1724 = fadd fast float %1721, 5.000000e-01
  %1725 = fmul fast float %1722, 2.000000e+00
  %1726 = fsub fast float 1.000000e+00, %1725
  %1727 = fmul fast float %1726, %1652
  %1728 = fadd fast float %1727, %1725
  %1729 = fmul fast float %1728, %1652
  %1730 = fmul fast float %1723, 2.000000e+00
  %1731 = fsub fast float 1.000000e+00, %1730
  %1732 = fmul fast float %1731, %1653
  %1733 = fadd fast float %1732, %1730
  %1734 = fmul fast float %1733, %1653
  %1735 = fmul fast float %1724, 2.000000e+00
  %1736 = fsub fast float 1.000000e+00, %1735
  %1737 = fmul fast float %1736, %1654
  %1738 = fadd fast float %1737, %1735
  %1739 = fmul fast float %1738, %1654
  br label %1740

; <label>:1740                                    ; preds = %1712, %1710, %1697, %1667, %1651
  %1741 = phi float [ %1652, %1651 ], [ %1729, %1712 ], [ %1652, %1710 ], [ %1707, %1697 ], [ %1677, %1667 ]
  %1742 = phi float [ %1653, %1651 ], [ %1734, %1712 ], [ %1653, %1710 ], [ %1708, %1697 ], [ %1678, %1667 ]
  %1743 = phi float [ %1654, %1651 ], [ %1739, %1712 ], [ %1654, %1710 ], [ %1709, %1697 ], [ %1679, %1667 ]
  %1744 = phi float [ %1655, %1651 ], [ %1655, %1712 ], [ %1655, %1710 ], [ %1655, %1697 ], [ %1689, %1667 ]
  %1745 = phi float [ %1656, %1651 ], [ %1656, %1712 ], [ %1656, %1710 ], [ %1656, %1697 ], [ %1690, %1667 ]
  %1746 = phi float [ %1657, %1651 ], [ %1657, %1712 ], [ %1657, %1710 ], [ %1657, %1697 ], [ %1691, %1667 ]
  %1747 = phi float [ %923, %1651 ], [ %923, %1712 ], [ %923, %1710 ], [ %923, %1697 ], [ %1682, %1667 ]
  %1748 = phi float [ %928, %1651 ], [ %928, %1712 ], [ %928, %1710 ], [ %928, %1697 ], [ %1694, %1667 ]
  %1749 = and i32 %1659, 12
  %1750 = icmp eq i32 %1749, 12
  br i1 %1750, label %1857, label %1751

; <label>:1751                                    ; preds = %1740
  %1752 = and i32 %1659, 2097184
  %1753 = icmp eq i32 %1752, 2097184
  %1754 = select i1 %1753, float %1226, float 0.000000e+00
  %1755 = and i32 %1659, 4194336
  %1756 = icmp eq i32 %1755, 4194336
  %1757 = select i1 %1756, float %1226, float 0.000000e+00
  %1758 = and i32 %1659, 8388640
  %1759 = icmp eq i32 %1758, 8388640
  %1760 = select i1 %1759, float %1226, float 0.000000e+00
  %1761 = and i32 %1659, 2048
  %1762 = icmp ne i32 %1761, 0
  %1763 = select i1 %1762, float %1226, float 0.000000e+00
  %1764 = and i32 %1659, 8192
  %1765 = icmp ne i32 %1764, 0
  %1766 = select i1 %1765, float %1226, float 0.000000e+00
  %1767 = icmp eq i32 %1749, 0
  br i1 %1767, label %1768, label %1793

; <label>:1768                                    ; preds = %1751
  %1769 = fsub fast float %1527, %912
  %1770 = fsub fast float %1528, %913
  %1771 = fmul fast float %1754, %1769
  %1772 = fmul fast float %1754, %1770
  %1773 = fadd fast float %1771, %912
  %1774 = fadd fast float %1772, %913
  %1775 = fsub fast float %1529, %926
  %1776 = fmul fast float %1757, %1775
  %1777 = fadd fast float %1776, %926
  %1778 = fsub fast float %1526, %925
  %1779 = fmul fast float %1760, %1778
  %1780 = fadd fast float %1779, %925
  %1781 = fsub fast float %1629, %927
  %1782 = fmul fast float %1763, %1781
  %1783 = fadd fast float %1782, %927
  %1784 = fsub fast float %1626, %920
  %1785 = fsub fast float %1627, %921
  %1786 = fsub fast float %1628, %922
  %1787 = fmul fast float %1766, %1784
  %1788 = fmul fast float %1766, %1785
  %1789 = fmul fast float %1766, %1786
  %1790 = fadd fast float %1787, %920
  %1791 = fadd fast float %1788, %921
  %1792 = fadd fast float %1789, %922
  br label %1857

; <label>:1793                                    ; preds = %1751
  %1794 = icmp eq i32 %1749, 4
  br i1 %1794, label %1795, label %1835

; <label>:1795                                    ; preds = %1793
  %1796 = fmul fast float %1754, %1527
  %1797 = fmul fast float %1754, %1528
  %1798 = fadd fast float %1796, %912
  %1799 = fadd fast float %1797, %913
  %1800 = call float @dx.op.binary.f32(i32 36, float %926, float %1529)  ; FMin(a,b)
  %1801 = fsub fast float %1800, %926
  %1802 = fmul fast float %1801, %1757
  %1803 = fadd fast float %1802, %926
  %1804 = fadd fast float %1526, %925
  %1805 = fmul fast float %1804, 0x3FF337FAE0000000
  %1806 = fmul fast float %925, %925
  %1807 = fmul fast float %1526, %1526
  %1808 = fadd fast float %1807, %1806
  %1809 = fmul fast float %1808, 0x3FE5152B00000000
  %1810 = fmul fast float %925, 0xBFCC1F85E0000000
  %1811 = fmul fast float %1810, %1526
  %1812 = fadd fast float %1811, 0xBFE1363700000000
  %1813 = fadd fast float %1812, %1805
  %1814 = fsub fast float %1813, %1809
  %1815 = fmul fast float %1804, 0x3FBA6F0D00000000
  %1816 = fmul fast float %1808, 0x3FD0432880000000
  %1817 = fmul fast float %925, 0xBFEF110800000000
  %1818 = fmul fast float %1817, %1526
  %1819 = fadd fast float %1818, 1.000000e+00
  %1820 = fsub fast float %1819, %1815
  %1821 = fadd fast float %1820, %1816
  %1822 = fdiv fast float %1814, %1821
  %1823 = call float @dx.op.unary.f32(i32 7, float %1822)  ; Saturate(value)
  %1824 = fsub fast float %1823, %925
  %1825 = fmul fast float %1824, %1760
  %1826 = fadd fast float %1825, %925
  %1827 = fmul fast float %1763, %1629
  %1828 = fadd fast float %1827, %927
  %1829 = fmul fast float %1766, %1626
  %1830 = fmul fast float %1766, %1627
  %1831 = fmul fast float %1766, %1628
  %1832 = fadd fast float %1829, %920
  %1833 = fadd fast float %1830, %921
  %1834 = fadd fast float %1831, %922
  br label %1857

; <label>:1835                                    ; preds = %1793
  %1836 = icmp eq i32 %1749, 8
  br i1 %1836, label %1837, label %1857

; <label>:1837                                    ; preds = %1835
  %1838 = fmul fast float %1754, %1527
  %1839 = fmul fast float %1754, %1528
  %1840 = fadd fast float %1838, %912
  %1841 = fadd fast float %1839, %913
  %1842 = call float @dx.op.binary.f32(i32 36, float %926, float %1529)  ; FMin(a,b)
  %1843 = fsub fast float %1842, %926
  %1844 = fmul fast float %1843, %1757
  %1845 = fadd fast float %1844, %926
  %1846 = fsub fast float %1526, %925
  %1847 = fmul fast float %1760, %1846
  %1848 = fadd fast float %1847, %925
  %1849 = fmul fast float %1763, %1629
  %1850 = fadd fast float %1849, %927
  %1851 = fmul fast float %1766, %1626
  %1852 = fmul fast float %1766, %1627
  %1853 = fmul fast float %1766, %1628
  %1854 = fadd fast float %1851, %920
  %1855 = fadd fast float %1852, %921
  %1856 = fadd fast float %1853, %922
  br label %1857

; <label>:1857                                    ; preds = %1837, %1835, %1795, %1768, %1740, %1225, %929, %911
  %1858 = phi float [ %912, %1740 ], [ %912, %1225 ], [ %912, %911 ], [ %1840, %1837 ], [ %912, %1835 ], [ %1798, %1795 ], [ %1773, %1768 ], [ %912, %929 ]
  %1859 = phi float [ %913, %1740 ], [ %913, %1225 ], [ %913, %911 ], [ %1841, %1837 ], [ %913, %1835 ], [ %1799, %1795 ], [ %1774, %1768 ], [ %913, %929 ]
  %1860 = phi float [ %1741, %1740 ], [ %914, %1225 ], [ %914, %911 ], [ %1741, %1837 ], [ %1741, %1835 ], [ %1741, %1795 ], [ %1741, %1768 ], [ %914, %929 ]
  %1861 = phi float [ %1742, %1740 ], [ %915, %1225 ], [ %915, %911 ], [ %1742, %1837 ], [ %1742, %1835 ], [ %1742, %1795 ], [ %1742, %1768 ], [ %915, %929 ]
  %1862 = phi float [ %1743, %1740 ], [ %916, %1225 ], [ %916, %911 ], [ %1743, %1837 ], [ %1743, %1835 ], [ %1743, %1795 ], [ %1743, %1768 ], [ %916, %929 ]
  %1863 = phi float [ %1744, %1740 ], [ %917, %1225 ], [ %917, %911 ], [ %1744, %1837 ], [ %1744, %1835 ], [ %1744, %1795 ], [ %1744, %1768 ], [ %917, %929 ]
  %1864 = phi float [ %1745, %1740 ], [ %918, %1225 ], [ %918, %911 ], [ %1745, %1837 ], [ %1745, %1835 ], [ %1745, %1795 ], [ %1745, %1768 ], [ %918, %929 ]
  %1865 = phi float [ %1746, %1740 ], [ %919, %1225 ], [ %919, %911 ], [ %1746, %1837 ], [ %1746, %1835 ], [ %1746, %1795 ], [ %1746, %1768 ], [ %919, %929 ]
  %1866 = phi float [ %920, %1740 ], [ %920, %1225 ], [ %920, %911 ], [ %1854, %1837 ], [ %920, %1835 ], [ %1832, %1795 ], [ %1790, %1768 ], [ %920, %929 ]
  %1867 = phi float [ %921, %1740 ], [ %921, %1225 ], [ %921, %911 ], [ %1855, %1837 ], [ %921, %1835 ], [ %1833, %1795 ], [ %1791, %1768 ], [ %921, %929 ]
  %1868 = phi float [ %922, %1740 ], [ %922, %1225 ], [ %922, %911 ], [ %1856, %1837 ], [ %922, %1835 ], [ %1834, %1795 ], [ %1792, %1768 ], [ %922, %929 ]
  %1869 = phi float [ %1747, %1740 ], [ %923, %1225 ], [ %923, %911 ], [ %1747, %1837 ], [ %1747, %1835 ], [ %1747, %1795 ], [ %1747, %1768 ], [ %923, %929 ]
  %1870 = phi float [ %925, %1740 ], [ %925, %1225 ], [ %925, %911 ], [ %1848, %1837 ], [ %925, %1835 ], [ %1826, %1795 ], [ %1780, %1768 ], [ %925, %929 ]
  %1871 = phi float [ %926, %1740 ], [ %926, %1225 ], [ %926, %911 ], [ %1845, %1837 ], [ %926, %1835 ], [ %1803, %1795 ], [ %1777, %1768 ], [ %926, %929 ]
  %1872 = phi float [ %927, %1740 ], [ %927, %1225 ], [ %927, %911 ], [ %1850, %1837 ], [ %927, %1835 ], [ %1828, %1795 ], [ %1783, %1768 ], [ %927, %929 ]
  %1873 = phi float [ %1748, %1740 ], [ %928, %1225 ], [ %928, %911 ], [ %1748, %1837 ], [ %1748, %1835 ], [ %1748, %1795 ], [ %1748, %1768 ], [ %928, %929 ]
  br i1 %338, label %2802, label %1874

; <label>:1874                                    ; preds = %1857
  %1875 = icmp ult i32 %391, 3
  %1876 = add i32 %38, 56
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = add i32 %38, 60
  %1880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1879, i32 undef)  ; BufferLoad(srv,index,wot)
  %1881 = extractvalue %dx.types.ResRet.i32 %1880, 0
  %1882 = or i32 %1881, %1878
  %1883 = icmp eq i32 %1882, 0
  br i1 %1883, label %2802, label %1884

; <label>:1884                                    ; preds = %1874
  %1885 = and i32 %1878, 262144
  %1886 = icmp ne i32 %1885, 0
  %1887 = select i1 %1886, float %41, float 1.000000e+00
  %1888 = select i1 %1886, float %42, float 0.000000e+00
  %1889 = select i1 %1886, float %43, float 0.000000e+00
  %1890 = select i1 %1886, float %44, float 1.000000e+00
  %1891 = select i1 %1886, float %45, float %54
  %1892 = select i1 %1886, float %46, float %55
  %1893 = add i32 %38, 316
  %1894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1895 = extractvalue %dx.types.ResRet.i32 %1894, 0
  %1896 = lshr i32 %1895, 16
  %1897 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1896)  ; LegacyF16ToF32(value)
  %1898 = fmul fast float %1897, 0x3F50624DE0000000
  %1899 = add i32 %38, 120
  %1900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.i32 %1900, 0
  %1902 = lshr i32 %1901, 16
  %1903 = and i32 %1902, 255
  %1904 = lshr i32 %1901, 24
  %1905 = add i32 %38, 324
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = and i32 %1907, 65535
  %1909 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1908)  ; LegacyF16ToF32(value)
  %1910 = lshr i32 %1907, 16
  %1911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1910)  ; LegacyF16ToF32(value)
  %1912 = add i32 %38, 64
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = lshr i32 %1914, 22
  %1916 = shl nuw nsw i32 %1915, 5
  %1917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1916)  ; LegacyF16ToF32(value)
  %1918 = shl i32 %1914, 4
  %1919 = and i32 %1918, 32752
  %1920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1919)  ; LegacyF16ToF32(value)
  %1921 = lshr i32 %1914, 7
  %1922 = and i32 %1921, 32752
  %1923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1922)  ; LegacyF16ToF32(value)
  %1924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1925 = extractvalue %dx.types.CBufRet.f32 %1924, 3
  %1926 = fmul fast float %1925, 1.000000e+03
  %1927 = fmul fast float %288, %1926
  %1928 = call float @dx.op.unary.f32(i32 22, float %1927)  ; Frc(value)
  %1929 = fadd fast float %1928, %278
  %1930 = fmul fast float %289, %1926
  %1931 = call float @dx.op.unary.f32(i32 22, float %1930)  ; Frc(value)
  %1932 = fadd fast float %1931, %280
  %1933 = fmul fast float %1898, %1926
  %1934 = call float @dx.op.unary.f32(i32 22, float %1933)  ; Frc(value)
  %1935 = fmul fast float %1934, 0x401921FB60000000
  %1936 = fadd fast float %1935, %1917
  %1937 = call float @dx.op.unary.f32(i32 13, float %1936)  ; Sin(value)
  %1938 = call float @dx.op.unary.f32(i32 12, float %1936)  ; Cos(value)
  %1939 = fsub fast float -0.000000e+00, %1937
  %1940 = fadd fast float %1891, -5.000000e-01
  %1941 = fadd fast float %1892, -5.000000e-01
  %1942 = fmul fast float %1909, %1940
  %1943 = fmul fast float %1911, %1941
  %1944 = fadd fast float %1942, 5.000000e-01
  %1945 = fadd fast float %1943, 5.000000e-01
  %1946 = fmul fast float %1920, %1944
  %1947 = fmul fast float %1923, %1945
  %1948 = fmul fast float %1938, %1946
  %1949 = call float @dx.op.tertiary.f32(i32 46, float %1939, float %1947, float %1948)  ; FMad(a,b,c)
  %1950 = fmul fast float %1937, %1946
  %1951 = call float @dx.op.tertiary.f32(i32 46, float %1938, float %1947, float %1950)  ; FMad(a,b,c)
  %1952 = fadd fast float %1929, %1949
  %1953 = fadd fast float %1932, %1951
  %1954 = icmp ugt i32 %1903, 1
  %1955 = icmp ugt i32 %1901, 33554431
  %1956 = or i1 %1955, %1954
  br i1 %1956, label %1957, label %1982

; <label>:1957                                    ; preds = %1884
  %1958 = add i32 %38, 260
  %1959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1960 = extractvalue %dx.types.ResRet.i32 %1959, 0
  %1961 = lshr i32 %1960, 16
  %1962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1961)  ; LegacyF16ToF32(value)
  %1963 = fmul fast float %1925, %1962
  %1964 = call float @dx.op.unary.f32(i32 22, float %1963)  ; Frc(value)
  %1965 = mul nuw nsw i32 %1903, %1904
  %1966 = uitofp i32 %1965 to float
  %1967 = fmul fast float %1964, %1966
  %1968 = call float @dx.op.unary.f32(i32 27, float %1967)  ; Round_ni(value)
  %1969 = fptoui float %1968 to i32
  %1970 = urem i32 %1969, %1903
  %1971 = udiv i32 %1969, %1904
  %1972 = call float @dx.op.unary.f32(i32 22, float %1952)  ; Frc(value)
  %1973 = call float @dx.op.unary.f32(i32 22, float %1953)  ; Frc(value)
  %1974 = uitofp i32 %1970 to float
  %1975 = uitofp i32 %1971 to float
  %1976 = fadd fast float %1972, %1974
  %1977 = fadd fast float %1973, %1975
  %1978 = uitofp i32 %1903 to float
  %1979 = uitofp i32 %1904 to float
  %1980 = fdiv fast float %1976, %1978
  %1981 = fdiv fast float %1977, %1979
  br label %1982

; <label>:1982                                    ; preds = %1957, %1884
  %1983 = phi float [ %1980, %1957 ], [ %1952, %1884 ]
  %1984 = phi float [ %1981, %1957 ], [ %1953, %1884 ]
  %1985 = and i32 %1878, 16777216
  %1986 = icmp eq i32 %1985, 0
  br i1 %1986, label %2096, label %1987

; <label>:1987                                    ; preds = %1982
  %1988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1989 = extractvalue %dx.types.CBufRet.f32 %1988, 0
  %1990 = extractvalue %dx.types.CBufRet.f32 %1988, 1
  %1991 = extractvalue %dx.types.CBufRet.f32 %1988, 2
  %1992 = fadd fast float %1989, %121
  %1993 = fadd fast float %1990, %122
  %1994 = fadd fast float %1991, %123
  %1995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1996 = extractvalue %dx.types.CBufRet.f32 %1995, 0
  %1997 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %1998 = icmp eq i32 %39, 65535
  br i1 %1998, label %2093, label %1999

; <label>:1999                                    ; preds = %1987
  %2000 = lshr i32 %39, 1
  %2001 = shl i32 %2000, 2
  %2002 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2001, i32 undef)  ; BufferLoad(srv,index,wot)
  %2003 = extractvalue %dx.types.ResRet.i32 %2002, 0
  %2004 = and i32 %39, 1
  %2005 = icmp ne i32 %2004, 0
  %2006 = lshr i32 %2003, 16
  %2007 = and i32 %2003, 65535
  %2008 = select i1 %2005, i32 %2006, i32 %2007
  %2009 = icmp eq i32 %2008, 65535
  br i1 %2009, label %2089, label %2010

; <label>:2010                                    ; preds = %1999
  %2011 = mul nuw nsw i32 %2008, 40
  %2012 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = extractvalue %dx.types.ResRet.f32 %2012, 1
  %2015 = extractvalue %dx.types.ResRet.f32 %2012, 2
  %2016 = add nuw nsw i32 %2011, 12
  %2017 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2016, i32 undef)  ; BufferLoad(srv,index,wot)
  %2018 = extractvalue %dx.types.ResRet.f32 %2017, 0
  %2019 = extractvalue %dx.types.ResRet.f32 %2017, 1
  %2020 = extractvalue %dx.types.ResRet.f32 %2017, 2
  %2021 = add nuw nsw i32 %2011, 24
  %2022 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2021, i32 undef)  ; BufferLoad(srv,index,wot)
  %2023 = extractvalue %dx.types.ResRet.f32 %2022, 0
  %2024 = extractvalue %dx.types.ResRet.f32 %2022, 1
  %2025 = extractvalue %dx.types.ResRet.f32 %2022, 2
  %2026 = add nuw nsw i32 %2011, 36
  %2027 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.f32 %2027, 0
  %2029 = fsub fast float %1992, %2013
  %2030 = fsub fast float %1993, %2014
  %2031 = fsub fast float %1994, %2015
  %2032 = fmul fast float %2028, %2029
  %2033 = fmul fast float %2028, %2030
  %2034 = fmul fast float %2028, %2031
  %2035 = call float @dx.op.unary.f32(i32 27, float %2032)  ; Round_ni(value)
  %2036 = call float @dx.op.unary.f32(i32 27, float %2033)  ; Round_ni(value)
  %2037 = call float @dx.op.unary.f32(i32 27, float %2034)  ; Round_ni(value)
  %2038 = fadd fast float %2035, 5.000000e-01
  %2039 = fadd fast float %2036, 5.000000e-01
  %2040 = fadd fast float %2037, 5.000000e-01
  %2041 = fmul fast float %2038, %2018
  %2042 = fmul fast float %2039, %2019
  %2043 = fmul fast float %2040, %2020
  %2044 = shl i32 %39, 2
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = add i32 %2046, 0
  %2048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2049 = call float @dx.op.unary.f32(i32 22, float %2041)  ; Frc(value)
  %2050 = call float @dx.op.unary.f32(i32 22, float %2042)  ; Frc(value)
  %2051 = call float @dx.op.unary.f32(i32 22, float %2043)  ; Frc(value)
  %2052 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2048, %dx.types.Handle %35, float %2049, float %2050, float %2051, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2053 = extractvalue %dx.types.ResRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.ResRet.f32 %2052, 1
  %2055 = extractvalue %dx.types.ResRet.f32 %2052, 2
  %2056 = fmul fast float %2053, 1.023000e+03
  %2057 = fmul fast float %2054, 1.023000e+03
  %2058 = fmul fast float %2055, 1.023000e+03
  %2059 = fadd fast float %2056, 5.000000e-01
  %2060 = fadd fast float %2057, 5.000000e-01
  %2061 = fadd fast float %2058, 5.000000e-01
  %2062 = call float @dx.op.unary.f32(i32 27, float %2059)  ; Round_ni(value)
  %2063 = call float @dx.op.unary.f32(i32 27, float %2060)  ; Round_ni(value)
  %2064 = call float @dx.op.unary.f32(i32 27, float %2061)  ; Round_ni(value)
  %2065 = fsub fast float %2032, %2035
  %2066 = fsub fast float %2033, %2036
  %2067 = fsub fast float %2034, %2037
  %2068 = fmul fast float %2065, 7.500000e-01
  %2069 = fmul fast float %2066, 7.500000e-01
  %2070 = fmul fast float %2067, 7.500000e-01
  %2071 = fadd fast float %2035, 1.250000e-01
  %2072 = fadd fast float %2071, %2068
  %2073 = fadd fast float %2072, %2062
  %2074 = fadd fast float %2036, 1.250000e-01
  %2075 = fadd fast float %2074, %2069
  %2076 = fadd fast float %2075, %2063
  %2077 = fadd fast float %2037, 1.250000e-01
  %2078 = fadd fast float %2077, %2070
  %2079 = fadd fast float %2078, %2064
  %2080 = fmul fast float %2073, %2023
  %2081 = fmul fast float %2076, %2024
  %2082 = fmul fast float %2079, %2025
  %2083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2084 = extractvalue %dx.types.ResRet.i32 %2083, 0
  %2085 = add i32 %2084, 0
  %2086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2086, %dx.types.Handle %33, float %2080, float %2081, float %2082, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2088 = extractvalue %dx.types.ResRet.f32 %2087, 0
  br label %2089

; <label>:2089                                    ; preds = %2010, %1999
  %2090 = phi float [ %2088, %2010 ], [ -1.000000e+00, %1999 ]
  %2091 = fadd fast float %2090, %1997
  %2092 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  br label %2093

; <label>:2093                                    ; preds = %2089, %1987
  %2094 = phi float [ %2092, %2089 ], [ %1997, %1987 ]
  %2095 = fmul fast float %2094, %387
  br label %2096

; <label>:2096                                    ; preds = %2093, %1982
  %2097 = phi float [ %2095, %2093 ], [ %387, %1982 ]
  %2098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.i32 %2098, 0
  %2100 = and i32 %2099, 256
  %2101 = icmp eq i32 %2100, 0
  br i1 %2101, label %2148, label %2102

; <label>:2102                                    ; preds = %2096
  %2103 = add i32 %38, 432
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2103, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = add i32 %2105, 0
  %2107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2108 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2107, %dx.types.Handle %63, float %1983, float %1984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2109 = extractvalue %dx.types.ResRet.f32 %2108, 0
  %2110 = add i32 %38, 132
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = shl i32 %2112, 4
  %2114 = and i32 %2113, 32752
  %2115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2114)  ; LegacyF16ToF32(value)
  %2116 = lshr i32 %2112, 7
  %2117 = and i32 %2116, 32752
  %2118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2117)  ; LegacyF16ToF32(value)
  %2119 = fsub fast float 1.000000e+00, %2097
  %2120 = call float @dx.op.binary.f32(i32 35, float %2119, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2121 = bitcast float %2097 to i32
  %2122 = sitofp i32 %2121 to float
  %2123 = fadd fast float %2122, 0xC1CFBF8940000000
  %2124 = fmul fast float %2118, %2123
  %2125 = fadd fast float %2124, 0x41CFBF8940000000
  %2126 = fptosi float %2125 to i32
  %2127 = bitcast i32 %2126 to float
  %2128 = bitcast float %2120 to i32
  %2129 = sitofp i32 %2128 to float
  %2130 = fadd fast float %2129, 0xC1CFBF8940000000
  %2131 = fmul fast float %2130, %2118
  %2132 = fadd fast float %2131, 0x41CFBF8940000000
  %2133 = fptosi float %2132 to i32
  %2134 = bitcast i32 %2133 to float
  %2135 = fmul fast float %2127, %2115
  %2136 = fmul fast float %2134, %2115
  %2137 = fsub fast float %2120, %2135
  %2138 = fadd fast float %2136, %2120
  %2139 = call float @dx.op.unary.f32(i32 7, float %2137)  ; Saturate(value)
  %2140 = call float @dx.op.unary.f32(i32 7, float %2138)  ; Saturate(value)
  %2141 = fsub fast float %2109, %2139
  %2142 = fsub fast float %2140, %2139
  %2143 = bitcast float %2142 to i32
  %2144 = sub nsw i32 2129859010, %2143
  %2145 = bitcast i32 %2144 to float
  %2146 = fmul fast float %2145, %2141
  %2147 = call float @dx.op.unary.f32(i32 7, float %2146)  ; Saturate(value)
  br label %2148

; <label>:2148                                    ; preds = %2102, %2096
  %2149 = phi float [ %2147, %2102 ], [ %2097, %2096 ]
  %2150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2151 = extractvalue %dx.types.ResRet.i32 %2150, 0
  %2152 = and i32 %2151, 128
  %2153 = icmp eq i32 %2152, 0
  br i1 %2153, label %2170, label %2154

; <label>:2154                                    ; preds = %2148
  %2155 = add i32 %38, 416
  %2156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2155, i32 undef)  ; BufferLoad(srv,index,wot)
  %2157 = extractvalue %dx.types.ResRet.i32 %2156, 0
  %2158 = add i32 %2157, 0
  %2159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2158, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2160 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2159, %dx.types.Handle %63, float %1983, float %1984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2161 = extractvalue %dx.types.ResRet.f32 %2160, 0
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = and i32 %2163, 524288
  %2165 = icmp ne i32 %2164, 0
  %2166 = fcmp fast ogt float %2161, 0x3FE0101020000000
  %2167 = select i1 %2166, float 1.000000e+00, float 0.000000e+00
  %2168 = select i1 %2165, float %2167, float %2161
  %2169 = fmul fast float %2168, %2149
  br label %2170

; <label>:2170                                    ; preds = %2154, %2148
  %2171 = phi float [ %2169, %2154 ], [ %2149, %2148 ]
  %2172 = fcmp fast ult float %2171, 0x3F70101020000000
  br i1 %2172, label %2802, label %2173

; <label>:2173                                    ; preds = %2170
  %2174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2175 = extractvalue %dx.types.ResRet.i32 %2174, 0
  %2176 = and i32 %2175, 16
  %2177 = icmp eq i32 %2176, 0
  br i1 %2177, label %2376, label %2178

; <label>:2178                                    ; preds = %2173
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = add i32 %38, 368
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = add i32 %2183, 0
  %2185 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2184, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2186 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2185, %dx.types.Handle %62, float %1983, float %1984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2187 = extractvalue %dx.types.ResRet.f32 %2186, 0
  %2188 = extractvalue %dx.types.ResRet.f32 %2186, 1
  %2189 = extractvalue %dx.types.ResRet.f32 %2186, 2
  %2190 = extractvalue %dx.types.ResRet.f32 %2186, 3
  %2191 = and i32 %2180, 255
  %2192 = uitofp i32 %2191 to float
  %2193 = lshr i32 %2180, 8
  %2194 = and i32 %2193, 255
  %2195 = uitofp i32 %2194 to float
  %2196 = fmul fast float %2190, %2192
  %2197 = fadd fast float %2196, %2195
  %2198 = fmul fast float %2197, 0x3F70101000000000
  %2199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2200 = extractvalue %dx.types.ResRet.i32 %2199, 0
  %2201 = and i32 %2200, 512
  %2202 = icmp eq i32 %2201, 0
  br i1 %2202, label %2211, label %2203

; <label>:2203                                    ; preds = %2178
  %2204 = add i32 %38, 448
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2204, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = add i32 %2206, 0
  %2208 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2207, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2209 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2208, %dx.types.Handle %63, float %1983, float %1984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2210 = extractvalue %dx.types.ResRet.f32 %2209, 0
  br label %2211

; <label>:2211                                    ; preds = %2203, %2178
  %2212 = phi float [ %2210, %2203 ], [ 1.000000e+00, %2178 ]
  %2213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2214 = extractvalue %dx.types.ResRet.i32 %2213, 0
  %2215 = and i32 %2214, 33554432
  %2216 = icmp eq i32 %2215, 0
  br i1 %2216, label %2323, label %2217

; <label>:2217                                    ; preds = %2211
  %2218 = add i32 %38, 256
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2218, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = and i32 %2220, 65535
  %2222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2221)  ; LegacyF16ToF32(value)
  %2223 = lshr i32 %2220, 16
  %2224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2223)  ; LegacyF16ToF32(value)
  %2225 = add i32 %38, 260
  %2226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2225, i32 undef)  ; BufferLoad(srv,index,wot)
  %2227 = extractvalue %dx.types.ResRet.i32 %2226, 0
  %2228 = and i32 %2227, 65535
  %2229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2228)  ; LegacyF16ToF32(value)
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = lshr i32 %2231, 24
  %2233 = uitofp i32 %2232 to float
  %2234 = fmul fast float %2233, 0x3F70101020000000
  %2235 = and i32 %2231, 255
  %2236 = uitofp i32 %2235 to float
  %2237 = fmul fast float %2236, 0x3F70101020000000
  %2238 = lshr i32 %2231, 8
  %2239 = and i32 %2238, 255
  %2240 = uitofp i32 %2239 to float
  %2241 = fmul fast float %2240, 0x3F70101020000000
  %2242 = lshr i32 %2231, 16
  %2243 = and i32 %2242, 255
  %2244 = uitofp i32 %2243 to float
  %2245 = fmul fast float %2244, 0x3F70101020000000
  %2246 = add i32 %38, 252
  %2247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2246, i32 undef)  ; BufferLoad(srv,index,wot)
  %2248 = extractvalue %dx.types.ResRet.i32 %2247, 0
  %2249 = lshr i32 %2248, 24
  %2250 = uitofp i32 %2249 to float
  %2251 = fmul fast float %2250, 0x3F70101020000000
  %2252 = and i32 %2248, 255
  %2253 = uitofp i32 %2252 to float
  %2254 = fmul fast float %2253, 0x3F70101020000000
  %2255 = lshr i32 %2248, 8
  %2256 = and i32 %2255, 255
  %2257 = uitofp i32 %2256 to float
  %2258 = fmul fast float %2257, 0x3F70101020000000
  %2259 = lshr i32 %2248, 16
  %2260 = and i32 %2259, 255
  %2261 = uitofp i32 %2260 to float
  %2262 = fmul fast float %2261, 0x3F70101020000000
  %2263 = bitcast float %2187 to i32
  %2264 = ashr i32 %2263, 1
  %2265 = sub nsw i32 1597463174, %2264
  %2266 = bitcast i32 %2265 to float
  %2267 = fmul fast float %2187, 5.000000e-01
  %2268 = fmul fast float %2266, %2266
  %2269 = fmul fast float %2268, %2267
  %2270 = fsub fast float 1.500000e+00, %2269
  %2271 = fmul fast float %2266, %2187
  %2272 = fmul fast float %2271, %2270
  %2273 = bitcast float %2188 to i32
  %2274 = ashr i32 %2273, 1
  %2275 = sub nsw i32 1597463174, %2274
  %2276 = bitcast i32 %2275 to float
  %2277 = fmul fast float %2188, 5.000000e-01
  %2278 = fmul fast float %2276, %2276
  %2279 = fmul fast float %2278, %2277
  %2280 = fsub fast float 1.500000e+00, %2279
  %2281 = fmul fast float %2276, %2188
  %2282 = fmul fast float %2281, %2280
  %2283 = bitcast float %2189 to i32
  %2284 = ashr i32 %2283, 1
  %2285 = sub nsw i32 1597463174, %2284
  %2286 = bitcast i32 %2285 to float
  %2287 = fmul fast float %2189, 5.000000e-01
  %2288 = fmul fast float %2286, %2286
  %2289 = fmul fast float %2288, %2287
  %2290 = fsub fast float 1.500000e+00, %2289
  %2291 = fmul fast float %2286, %2189
  %2292 = fmul fast float %2291, %2290
  %2293 = fsub fast float %2272, %2254
  %2294 = fsub fast float %2282, %2258
  %2295 = fsub fast float %2292, %2262
  %2296 = fmul fast float %2293, %2222
  %2297 = fmul fast float %2294, %2224
  %2298 = fmul fast float %2295, %2229
  %2299 = fadd fast float %2296, %2237
  %2300 = fadd fast float %2297, %2241
  %2301 = fadd fast float %2298, %2245
  %2302 = call float @dx.op.unary.f32(i32 7, float %2299)  ; Saturate(value)
  %2303 = call float @dx.op.unary.f32(i32 7, float %2300)  ; Saturate(value)
  %2304 = call float @dx.op.unary.f32(i32 7, float %2301)  ; Saturate(value)
  %2305 = fmul fast float %2302, %2302
  %2306 = fmul fast float %2303, %2303
  %2307 = fmul fast float %2304, %2304
  %2308 = fsub fast float %2305, %2187
  %2309 = fsub fast float %2306, %2188
  %2310 = fsub fast float %2307, %2189
  %2311 = fmul fast float %2308, %2212
  %2312 = fmul fast float %2309, %2212
  %2313 = fmul fast float %2310, %2212
  %2314 = fadd fast float %2311, %2187
  %2315 = fadd fast float %2312, %2188
  %2316 = fadd fast float %2313, %2189
  %2317 = fadd fast float %2234, %2198
  %2318 = fsub fast float %2317, %2251
  %2319 = call float @dx.op.unary.f32(i32 7, float %2318)  ; Saturate(value)
  %2320 = fsub fast float %2319, %2198
  %2321 = fmul fast float %2320, %2212
  %2322 = fadd fast float %2321, %2198
  br label %2376

; <label>:2323                                    ; preds = %2211
  %2324 = and i32 %2214, 134217728
  %2325 = icmp eq i32 %2324, 0
  br i1 %2325, label %2360, label %2326

; <label>:2326                                    ; preds = %2323
  %2327 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %2328 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %2329 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %2330 = fadd fast float %2327, -5.000000e-01
  %2331 = fadd fast float %2328, -5.000000e-01
  %2332 = fadd fast float %2329, -5.000000e-01
  %2333 = fmul fast float %2330, %2212
  %2334 = fmul fast float %2331, %2212
  %2335 = fmul fast float %2332, %2212
  %2336 = fadd fast float %2333, 5.000000e-01
  %2337 = fadd fast float %2334, 5.000000e-01
  %2338 = fadd fast float %2335, 5.000000e-01
  %2339 = call float @dx.op.unary.f32(i32 24, float %2187)  ; Sqrt(value)
  %2340 = call float @dx.op.unary.f32(i32 24, float %2188)  ; Sqrt(value)
  %2341 = call float @dx.op.unary.f32(i32 24, float %2189)  ; Sqrt(value)
  %2342 = fmul fast float %2336, 2.000000e+00
  %2343 = fsub fast float 1.000000e+00, %2342
  %2344 = fmul fast float %2343, %2339
  %2345 = fadd fast float %2344, %2342
  %2346 = fmul fast float %2345, %2339
  %2347 = fmul fast float %2337, 2.000000e+00
  %2348 = fsub fast float 1.000000e+00, %2347
  %2349 = fmul fast float %2348, %2340
  %2350 = fadd fast float %2349, %2347
  %2351 = fmul fast float %2350, %2340
  %2352 = fmul fast float %2338, 2.000000e+00
  %2353 = fsub fast float 1.000000e+00, %2352
  %2354 = fmul fast float %2353, %2341
  %2355 = fadd fast float %2354, %2352
  %2356 = fmul fast float %2355, %2341
  %2357 = fmul fast float %2346, %2346
  %2358 = fmul fast float %2351, %2351
  %2359 = fmul fast float %2356, %2356
  br label %2376

; <label>:2360                                    ; preds = %2323
  %2361 = fmul fast float %265, %265
  %2362 = fmul fast float %269, %269
  %2363 = fmul fast float %273, %273
  %2364 = fadd fast float %2361, -1.000000e+00
  %2365 = fadd fast float %2362, -1.000000e+00
  %2366 = fadd fast float %2363, -1.000000e+00
  %2367 = fmul fast float %2212, %2364
  %2368 = fmul fast float %2212, %2365
  %2369 = fmul fast float %2212, %2366
  %2370 = fadd fast float %2367, 1.000000e+00
  %2371 = fadd fast float %2368, 1.000000e+00
  %2372 = fadd fast float %2369, 1.000000e+00
  %2373 = fmul fast float %2370, %2187
  %2374 = fmul fast float %2371, %2188
  %2375 = fmul fast float %2372, %2189
  br label %2376

; <label>:2376                                    ; preds = %2360, %2326, %2217, %2173
  %2377 = phi float [ %2322, %2217 ], [ %2198, %2326 ], [ %2198, %2360 ], [ 0x3FA23C0BE0000000, %2173 ]
  %2378 = phi float [ %2314, %2217 ], [ %2357, %2326 ], [ %2373, %2360 ], [ 1.000000e+00, %2173 ]
  %2379 = phi float [ %2315, %2217 ], [ %2358, %2326 ], [ %2374, %2360 ], [ 1.000000e+00, %2173 ]
  %2380 = phi float [ %2316, %2217 ], [ %2359, %2326 ], [ %2375, %2360 ], [ 1.000000e+00, %2173 ]
  %2381 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2382 = extractvalue %dx.types.CBufRet.i32 %2381, 1
  %2383 = and i32 %2382, 1
  %2384 = icmp ne i32 %2383, 0
  %2385 = add i32 %38, 356
  %2386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2385, i32 undef)  ; BufferLoad(srv,index,wot)
  %2387 = extractvalue %dx.types.ResRet.i32 %2386, 0
  %2388 = and i32 %2387, 32
  %2389 = icmp ne i32 %2388, 0
  %2390 = and i1 %2384, %2389
  %2391 = select i1 %2390, float 1.000000e+00, float %2378
  %2392 = select i1 %2390, float 0x3FD3333340000000, float %2379
  %2393 = select i1 %2390, float 0x3FD3333340000000, float %2380
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = and i32 %2395, 32
  %2397 = icmp eq i32 %2396, 0
  br i1 %2397, label %2470, label %2398

; <label>:2398                                    ; preds = %2376
  %2399 = add i32 %38, 124
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = add i32 %38, 384
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2402, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = add i32 %2404, 0
  %2406 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2405, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2407 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2406, %dx.types.Handle %62, float %1983, float %1984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2408 = extractvalue %dx.types.ResRet.f32 %2407, 0
  %2409 = extractvalue %dx.types.ResRet.f32 %2407, 1
  %2410 = extractvalue %dx.types.ResRet.f32 %2407, 2
  %2411 = extractvalue %dx.types.ResRet.f32 %2407, 3
  %2412 = and i32 %2401, 255
  %2413 = uitofp i32 %2412 to float
  %2414 = lshr i32 %2401, 8
  %2415 = and i32 %2414, 255
  %2416 = uitofp i32 %2415 to float
  %2417 = lshr i32 %2401, 16
  %2418 = and i32 %2417, 255
  %2419 = uitofp i32 %2418 to float
  %2420 = fmul fast float %2419, 0x3F70101000000000
  %2421 = fmul fast float %2408, %2413
  %2422 = fadd fast float %2421, %2416
  %2423 = fmul fast float %2422, 0x3F70101000000000
  %2424 = fadd fast float %2409, -5.000000e-01
  %2425 = fadd fast float %2411, -5.000000e-01
  %2426 = fmul fast float %2424, %2420
  %2427 = fmul fast float %2425, %2420
  %2428 = fadd fast float %2426, 5.000000e-01
  %2429 = fadd fast float %2427, 5.000000e-01
  %2430 = fmul fast float %2428, 2.000000e+00
  %2431 = fadd fast float %2430, -1.000000e+00
  %2432 = fmul fast float %2429, 2.000000e+00
  %2433 = fadd fast float %2432, -1.000000e+00
  %2434 = fadd fast float %2431, %2433
  %2435 = fmul fast float %2434, 5.000000e-01
  %2436 = fsub fast float %2431, %2433
  %2437 = fmul fast float %2436, 5.000000e-01
  %2438 = call float @dx.op.unary.f32(i32 6, float %2435)  ; FAbs(value)
  %2439 = fsub fast float 1.000000e+00, %2438
  %2440 = call float @dx.op.unary.f32(i32 6, float %2437)  ; FAbs(value)
  %2441 = fsub fast float %2439, %2440
  %2442 = call float @dx.op.dot3.f32(i32 55, float %2435, float %2437, float %2441, float %2435, float %2437, float %2441)  ; Dot3(ax,ay,az,bx,by,bz)
  %2443 = call float @dx.op.unary.f32(i32 25, float %2442)  ; Rsqrt(value)
  %2444 = fmul fast float %2435, %2443
  %2445 = fmul fast float %2437, %2443
  %2446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2447 = extractvalue %dx.types.ResRet.i32 %2446, 0
  %2448 = and i32 %2447, 67108864
  %2449 = icmp eq i32 %2448, 0
  br i1 %2449, label %2466, label %2450

; <label>:2450                                    ; preds = %2398
  %2451 = add i32 %38, 312
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2451, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = and i32 %2453, 65535
  %2455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2454)  ; LegacyF16ToF32(value)
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = and i32 %2457, 65535
  %2459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2458)  ; LegacyF16ToF32(value)
  %2460 = lshr i32 %2453, 16
  %2461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2460)  ; LegacyF16ToF32(value)
  %2462 = fsub fast float %2423, %2461
  %2463 = fmul fast float %2462, %2455
  %2464 = fadd fast float %2463, %2459
  %2465 = call float @dx.op.unary.f32(i32 7, float %2464)  ; Saturate(value)
  br label %2466

; <label>:2466                                    ; preds = %2450, %2398
  %2467 = phi float [ %2465, %2450 ], [ %2423, %2398 ]
  %2468 = call float @dx.op.dot2.f32(i32 54, float %2444, float %2445, float %1887, float %1888)  ; Dot2(ax,ay,bx,by)
  %2469 = call float @dx.op.dot2.f32(i32 54, float %2444, float %2445, float %1889, float %1890)  ; Dot2(ax,ay,bx,by)
  br label %2470

; <label>:2470                                    ; preds = %2466, %2376
  %2471 = phi float [ %2467, %2466 ], [ 0x3FD6666660000000, %2376 ]
  %2472 = phi float [ %2468, %2466 ], [ 0.000000e+00, %2376 ]
  %2473 = phi float [ %2469, %2466 ], [ 0.000000e+00, %2376 ]
  %2474 = phi float [ %2410, %2466 ], [ 1.000000e+00, %2376 ]
  %2475 = add i32 %38, 192
  %2476 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2477 = extractvalue %dx.types.ResRet.i32 %2476, 0
  %2478 = lshr i32 %2477, 22
  %2479 = shl nuw nsw i32 %2478, 5
  %2480 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2479)  ; LegacyF16ToF32(value)
  %2481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2482 = extractvalue %dx.types.ResRet.i32 %2481, 0
  %2483 = and i32 %2482, 64
  %2484 = icmp eq i32 %2483, 0
  br i1 %2484, label %2518, label %2485

; <label>:2485                                    ; preds = %2470
  %2486 = add i32 %38, 400
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2486, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = add i32 %2488, 0
  %2490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2489, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = and i32 %2492, 131072
  %2494 = icmp eq i32 %2493, 0
  %2495 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2490, %dx.types.Handle %62, float %1983, float %1984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2496 = extractvalue %dx.types.ResRet.f32 %2495, 0
  %2497 = extractvalue %dx.types.ResRet.f32 %2495, 1
  %2498 = extractvalue %dx.types.ResRet.f32 %2495, 2
  %2499 = fmul fast float %2496, %253
  %2500 = fmul fast float %2497, %256
  %2501 = fmul fast float %2498, %259
  br i1 %2494, label %2508, label %2502

; <label>:2502                                    ; preds = %2485
  %2503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2504 = extractvalue %dx.types.CBufRet.f32 %2503, 0
  %2505 = fmul fast float %2504, %2499
  %2506 = fmul fast float %2504, %2500
  %2507 = fmul fast float %2504, %2501
  br label %2508

; <label>:2508                                    ; preds = %2502, %2485
  %2509 = phi float [ %2505, %2502 ], [ %2499, %2485 ]
  %2510 = phi float [ %2506, %2502 ], [ %2500, %2485 ]
  %2511 = phi float [ %2507, %2502 ], [ %2501, %2485 ]
  %2512 = fmul fast float %2509, %2480
  %2513 = select i1 %163, float %2512, float %2509
  %2514 = call float @dx.op.dot3.f32(i32 55, float %2513, float %2510, float %2511, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2515 = select i1 %163, float 0.000000e+00, float %2509
  %2516 = select i1 %163, float %2514, float %2510
  %2517 = select i1 %163, float 0.000000e+00, float %2511
  br label %2518

; <label>:2518                                    ; preds = %2508, %2470
  %2519 = phi float [ %2515, %2508 ], [ 0.000000e+00, %2470 ]
  %2520 = phi float [ %2516, %2508 ], [ 0.000000e+00, %2470 ]
  %2521 = phi float [ %2517, %2508 ], [ 0.000000e+00, %2470 ]
  %2522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2523 = extractvalue %dx.types.ResRet.i32 %2522, 0
  %2524 = and i32 %2523, 10240
  %2525 = icmp eq i32 %2524, 0
  br i1 %2525, label %2570, label %2526

; <label>:2526                                    ; preds = %2518
  %2527 = add i32 %38, 464
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2527, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = add i32 %2529, 0
  %2531 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2530, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2532 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2531, %dx.types.Handle %63, float %1983, float %1984, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2533 = extractvalue %dx.types.ResRet.f32 %2532, 1
  %2534 = extractvalue %dx.types.ResRet.f32 %2532, 3
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = and i32 %2536, 1048576
  %2538 = icmp ne i32 %2537, 0
  %2539 = and i32 %2536, 8192
  %2540 = icmp eq i32 %2539, 0
  br i1 %2540, label %2556, label %2541

; <label>:2541                                    ; preds = %2526
  %2542 = extractvalue %dx.types.ResRet.f32 %2532, 2
  %2543 = select i1 %2538, float %2542, float %2533
  %2544 = extractvalue %dx.types.ResRet.f32 %2532, 0
  %2545 = select i1 %2538, float %2544, float %2533
  %2546 = add i32 %38, 128
  %2547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2546, i32 undef)  ; BufferLoad(srv,index,wot)
  %2548 = extractvalue %dx.types.ResRet.i32 %2547, 0
  %2549 = lshr i32 %2548, 16
  %2550 = and i32 %2549, 255
  %2551 = uitofp i32 %2550 to float
  %2552 = fmul fast float %2551, 0x3F80101020000000
  %2553 = fmul fast float %2552, %2545
  %2554 = fmul fast float %2552, %2533
  %2555 = fmul fast float %2552, %2543
  br label %2556

; <label>:2556                                    ; preds = %2541, %2526
  %2557 = phi float [ %2553, %2541 ], [ 0.000000e+00, %2526 ]
  %2558 = phi float [ %2554, %2541 ], [ 0.000000e+00, %2526 ]
  %2559 = phi float [ %2555, %2541 ], [ 0.000000e+00, %2526 ]
  %2560 = and i32 %2536, 2048
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %2570, label %2562

; <label>:2562                                    ; preds = %2556
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2475, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = shl i32 %2564, 4
  %2566 = and i32 %2565, 32752
  %2567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2566)  ; LegacyF16ToF32(value)
  %2568 = fmul fast float %2567, %2534
  %2569 = call float @dx.op.binary.f32(i32 35, float %2568, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2570

; <label>:2570                                    ; preds = %2562, %2556, %2518
  %2571 = phi float [ %2557, %2562 ], [ %2557, %2556 ], [ 0.000000e+00, %2518 ]
  %2572 = phi float [ %2558, %2562 ], [ %2558, %2556 ], [ 0.000000e+00, %2518 ]
  %2573 = phi float [ %2559, %2562 ], [ %2559, %2556 ], [ 0.000000e+00, %2518 ]
  %2574 = phi float [ %2569, %2562 ], [ 0x3F70101020000000, %2556 ], [ 0x3F70101020000000, %2518 ]
  %2575 = add i32 %38, 128
  %2576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2575, i32 undef)  ; BufferLoad(srv,index,wot)
  %2577 = extractvalue %dx.types.ResRet.i32 %2576, 0
  %2578 = and i32 %2577, 255
  %2579 = uitofp i32 %2578 to float
  %2580 = lshr i32 %2577, 8
  %2581 = and i32 %2580, 255
  %2582 = uitofp i32 %2581 to float
  %2583 = call float @dx.op.dot3.f32(i32 55, float %2391, float %2392, float %2393, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2584 = fmul fast float %2582, %2583
  %2585 = fadd fast float %2584, %2579
  %2586 = fmul fast float %2585, 0x3F70101020000000
  %2587 = call float @dx.op.unary.f32(i32 7, float %2586)  ; Saturate(value)
  br i1 %1875, label %2588, label %2596

; <label>:2588                                    ; preds = %2570
  %2589 = fsub fast float 1.000000e+00, %2171
  %2590 = fmul fast float %2589, %1860
  %2591 = fmul fast float %2589, %1861
  %2592 = fmul fast float %2589, %1862
  %2593 = fmul fast float %2589, %1863
  %2594 = fmul fast float %2589, %1864
  %2595 = fmul fast float %2589, %1865
  br label %2596

; <label>:2596                                    ; preds = %2588, %2570
  %2597 = phi float [ %2590, %2588 ], [ %1860, %2570 ]
  %2598 = phi float [ %2591, %2588 ], [ %1861, %2570 ]
  %2599 = phi float [ %2592, %2588 ], [ %1862, %2570 ]
  %2600 = phi float [ %2593, %2588 ], [ %1863, %2570 ]
  %2601 = phi float [ %2594, %2588 ], [ %1864, %2570 ]
  %2602 = phi float [ %2595, %2588 ], [ %1865, %2570 ]
  %2603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2604 = extractvalue %dx.types.ResRet.i32 %2603, 0
  %2605 = and i32 %2604, 3
  %2606 = icmp eq i32 %2605, 3
  br i1 %2606, label %2685, label %2607

; <label>:2607                                    ; preds = %2596
  %2608 = and i32 %2604, 16
  %2609 = icmp ne i32 %2608, 0
  %2610 = select i1 %2609, float %2171, float 0.000000e+00
  %2611 = icmp eq i32 %2605, 0
  br i1 %2611, label %2612, label %2640

; <label>:2612                                    ; preds = %2607
  %2613 = and i32 %2604, 64
  %2614 = icmp ne i32 %2613, 0
  %2615 = select i1 %2614, float %2171, float 0.000000e+00
  %2616 = fsub fast float %2391, %2597
  %2617 = fsub fast float %2392, %2598
  %2618 = fsub fast float %2393, %2599
  %2619 = fmul fast float %2610, %2616
  %2620 = fmul fast float %2610, %2617
  %2621 = fmul fast float %2610, %2618
  %2622 = fadd fast float %2619, %2597
  %2623 = fadd fast float %2620, %2598
  %2624 = fadd fast float %2621, %2599
  %2625 = fsub fast float %2377, %1869
  %2626 = fmul fast float %2610, %2625
  %2627 = fadd fast float %2626, %1869
  %2628 = fsub fast float %2519, %2600
  %2629 = fsub fast float %2520, %2601
  %2630 = fsub fast float %2521, %2602
  %2631 = fmul fast float %2615, %2628
  %2632 = fmul fast float %2615, %2629
  %2633 = fmul fast float %2615, %2630
  %2634 = fadd fast float %2631, %2600
  %2635 = fadd fast float %2632, %2601
  %2636 = fadd fast float %2633, %2602
  %2637 = fsub fast float %2587, %1873
  %2638 = fmul fast float %2610, %2637
  %2639 = fadd fast float %2638, %1873
  br label %2685

; <label>:2640                                    ; preds = %2607
  %2641 = icmp eq i32 %2605, 1
  br i1 %2641, label %2642, label %2655

; <label>:2642                                    ; preds = %2640
  %2643 = fadd fast float %2391, -1.000000e+00
  %2644 = fadd fast float %2392, -1.000000e+00
  %2645 = fadd fast float %2393, -1.000000e+00
  %2646 = fmul fast float %2610, %2643
  %2647 = fmul fast float %2610, %2644
  %2648 = fmul fast float %2610, %2645
  %2649 = fadd fast float %2646, 1.000000e+00
  %2650 = fadd fast float %2647, 1.000000e+00
  %2651 = fadd fast float %2648, 1.000000e+00
  %2652 = fmul fast float %2649, %2597
  %2653 = fmul fast float %2650, %2598
  %2654 = fmul fast float %2651, %2599
  br label %2685

; <label>:2655                                    ; preds = %2640
  %2656 = icmp eq i32 %2605, 2
  br i1 %2656, label %2657, label %2685

; <label>:2657                                    ; preds = %2655
  %2658 = call float @dx.op.unary.f32(i32 24, float %2391)  ; Sqrt(value)
  %2659 = call float @dx.op.unary.f32(i32 24, float %2392)  ; Sqrt(value)
  %2660 = call float @dx.op.unary.f32(i32 24, float %2393)  ; Sqrt(value)
  %2661 = fadd fast float %2658, -5.000000e-01
  %2662 = fadd fast float %2659, -5.000000e-01
  %2663 = fadd fast float %2660, -5.000000e-01
  %2664 = fmul fast float %2661, %2610
  %2665 = fmul fast float %2662, %2610
  %2666 = fmul fast float %2663, %2610
  %2667 = fadd fast float %2664, 5.000000e-01
  %2668 = fadd fast float %2665, 5.000000e-01
  %2669 = fadd fast float %2666, 5.000000e-01
  %2670 = fmul fast float %2667, 2.000000e+00
  %2671 = fsub fast float 1.000000e+00, %2670
  %2672 = fmul fast float %2671, %2597
  %2673 = fadd fast float %2672, %2670
  %2674 = fmul fast float %2673, %2597
  %2675 = fmul fast float %2668, 2.000000e+00
  %2676 = fsub fast float 1.000000e+00, %2675
  %2677 = fmul fast float %2676, %2598
  %2678 = fadd fast float %2677, %2675
  %2679 = fmul fast float %2678, %2598
  %2680 = fmul fast float %2669, 2.000000e+00
  %2681 = fsub fast float 1.000000e+00, %2680
  %2682 = fmul fast float %2681, %2599
  %2683 = fadd fast float %2682, %2680
  %2684 = fmul fast float %2683, %2599
  br label %2685

; <label>:2685                                    ; preds = %2657, %2655, %2642, %2612, %2596
  %2686 = phi float [ %2597, %2596 ], [ %2674, %2657 ], [ %2597, %2655 ], [ %2652, %2642 ], [ %2622, %2612 ]
  %2687 = phi float [ %2598, %2596 ], [ %2679, %2657 ], [ %2598, %2655 ], [ %2653, %2642 ], [ %2623, %2612 ]
  %2688 = phi float [ %2599, %2596 ], [ %2684, %2657 ], [ %2599, %2655 ], [ %2654, %2642 ], [ %2624, %2612 ]
  %2689 = phi float [ %2600, %2596 ], [ %2600, %2657 ], [ %2600, %2655 ], [ %2600, %2642 ], [ %2634, %2612 ]
  %2690 = phi float [ %2601, %2596 ], [ %2601, %2657 ], [ %2601, %2655 ], [ %2601, %2642 ], [ %2635, %2612 ]
  %2691 = phi float [ %2602, %2596 ], [ %2602, %2657 ], [ %2602, %2655 ], [ %2602, %2642 ], [ %2636, %2612 ]
  %2692 = phi float [ %1869, %2596 ], [ %1869, %2657 ], [ %1869, %2655 ], [ %1869, %2642 ], [ %2627, %2612 ]
  %2693 = phi float [ %1873, %2596 ], [ %1873, %2657 ], [ %1873, %2655 ], [ %1873, %2642 ], [ %2639, %2612 ]
  %2694 = and i32 %2604, 12
  %2695 = icmp eq i32 %2694, 12
  br i1 %2695, label %2802, label %2696

; <label>:2696                                    ; preds = %2685
  %2697 = and i32 %2604, 2097184
  %2698 = icmp eq i32 %2697, 2097184
  %2699 = select i1 %2698, float %2171, float 0.000000e+00
  %2700 = and i32 %2604, 4194336
  %2701 = icmp eq i32 %2700, 4194336
  %2702 = select i1 %2701, float %2171, float 0.000000e+00
  %2703 = and i32 %2604, 8388640
  %2704 = icmp eq i32 %2703, 8388640
  %2705 = select i1 %2704, float %2171, float 0.000000e+00
  %2706 = and i32 %2604, 2048
  %2707 = icmp ne i32 %2706, 0
  %2708 = select i1 %2707, float %2171, float 0.000000e+00
  %2709 = and i32 %2604, 8192
  %2710 = icmp ne i32 %2709, 0
  %2711 = select i1 %2710, float %2171, float 0.000000e+00
  %2712 = icmp eq i32 %2694, 0
  br i1 %2712, label %2713, label %2738

; <label>:2713                                    ; preds = %2696
  %2714 = fsub fast float %2472, %1858
  %2715 = fsub fast float %2473, %1859
  %2716 = fmul fast float %2699, %2714
  %2717 = fmul fast float %2699, %2715
  %2718 = fadd fast float %2716, %1858
  %2719 = fadd fast float %2717, %1859
  %2720 = fsub fast float %2474, %1871
  %2721 = fmul fast float %2702, %2720
  %2722 = fadd fast float %2721, %1871
  %2723 = fsub fast float %2471, %1870
  %2724 = fmul fast float %2705, %2723
  %2725 = fadd fast float %2724, %1870
  %2726 = fsub fast float %2574, %1872
  %2727 = fmul fast float %2708, %2726
  %2728 = fadd fast float %2727, %1872
  %2729 = fsub fast float %2571, %1866
  %2730 = fsub fast float %2572, %1867
  %2731 = fsub fast float %2573, %1868
  %2732 = fmul fast float %2711, %2729
  %2733 = fmul fast float %2711, %2730
  %2734 = fmul fast float %2711, %2731
  %2735 = fadd fast float %2732, %1866
  %2736 = fadd fast float %2733, %1867
  %2737 = fadd fast float %2734, %1868
  br label %2802

; <label>:2738                                    ; preds = %2696
  %2739 = icmp eq i32 %2694, 4
  br i1 %2739, label %2740, label %2780

; <label>:2740                                    ; preds = %2738
  %2741 = fmul fast float %2699, %2472
  %2742 = fmul fast float %2699, %2473
  %2743 = fadd fast float %2741, %1858
  %2744 = fadd fast float %2742, %1859
  %2745 = call float @dx.op.binary.f32(i32 36, float %1871, float %2474)  ; FMin(a,b)
  %2746 = fsub fast float %2745, %1871
  %2747 = fmul fast float %2746, %2702
  %2748 = fadd fast float %2747, %1871
  %2749 = fadd fast float %2471, %1870
  %2750 = fmul fast float %2749, 0x3FF337FAE0000000
  %2751 = fmul fast float %1870, %1870
  %2752 = fmul fast float %2471, %2471
  %2753 = fadd fast float %2752, %2751
  %2754 = fmul fast float %2753, 0x3FE5152B00000000
  %2755 = fmul fast float %1870, 0xBFCC1F85E0000000
  %2756 = fmul fast float %2755, %2471
  %2757 = fadd fast float %2756, 0xBFE1363700000000
  %2758 = fadd fast float %2757, %2750
  %2759 = fsub fast float %2758, %2754
  %2760 = fmul fast float %2749, 0x3FBA6F0D00000000
  %2761 = fmul fast float %2753, 0x3FD0432880000000
  %2762 = fmul fast float %1870, 0xBFEF110800000000
  %2763 = fmul fast float %2762, %2471
  %2764 = fadd fast float %2763, 1.000000e+00
  %2765 = fsub fast float %2764, %2760
  %2766 = fadd fast float %2765, %2761
  %2767 = fdiv fast float %2759, %2766
  %2768 = call float @dx.op.unary.f32(i32 7, float %2767)  ; Saturate(value)
  %2769 = fsub fast float %2768, %1870
  %2770 = fmul fast float %2769, %2705
  %2771 = fadd fast float %2770, %1870
  %2772 = fmul fast float %2708, %2574
  %2773 = fadd fast float %2772, %1872
  %2774 = fmul fast float %2711, %2571
  %2775 = fmul fast float %2711, %2572
  %2776 = fmul fast float %2711, %2573
  %2777 = fadd fast float %2774, %1866
  %2778 = fadd fast float %2775, %1867
  %2779 = fadd fast float %2776, %1868
  br label %2802

; <label>:2780                                    ; preds = %2738
  %2781 = icmp eq i32 %2694, 8
  br i1 %2781, label %2782, label %2802

; <label>:2782                                    ; preds = %2780
  %2783 = fmul fast float %2699, %2472
  %2784 = fmul fast float %2699, %2473
  %2785 = fadd fast float %2783, %1858
  %2786 = fadd fast float %2784, %1859
  %2787 = call float @dx.op.binary.f32(i32 36, float %1871, float %2474)  ; FMin(a,b)
  %2788 = fsub fast float %2787, %1871
  %2789 = fmul fast float %2788, %2702
  %2790 = fadd fast float %2789, %1871
  %2791 = fsub fast float %2471, %1870
  %2792 = fmul fast float %2705, %2791
  %2793 = fadd fast float %2792, %1870
  %2794 = fmul fast float %2708, %2574
  %2795 = fadd fast float %2794, %1872
  %2796 = fmul fast float %2711, %2571
  %2797 = fmul fast float %2711, %2572
  %2798 = fmul fast float %2711, %2573
  %2799 = fadd fast float %2796, %1866
  %2800 = fadd fast float %2797, %1867
  %2801 = fadd fast float %2798, %1868
  br label %2802

; <label>:2802                                    ; preds = %2782, %2780, %2740, %2713, %2685, %2170, %1874, %1857
  %2803 = phi float [ %1858, %2685 ], [ %1858, %2170 ], [ %1858, %1857 ], [ %2785, %2782 ], [ %1858, %2780 ], [ %2743, %2740 ], [ %2718, %2713 ], [ %1858, %1874 ]
  %2804 = phi float [ %1859, %2685 ], [ %1859, %2170 ], [ %1859, %1857 ], [ %2786, %2782 ], [ %1859, %2780 ], [ %2744, %2740 ], [ %2719, %2713 ], [ %1859, %1874 ]
  %2805 = phi float [ %2686, %2685 ], [ %1860, %2170 ], [ %1860, %1857 ], [ %2686, %2782 ], [ %2686, %2780 ], [ %2686, %2740 ], [ %2686, %2713 ], [ %1860, %1874 ]
  %2806 = phi float [ %2687, %2685 ], [ %1861, %2170 ], [ %1861, %1857 ], [ %2687, %2782 ], [ %2687, %2780 ], [ %2687, %2740 ], [ %2687, %2713 ], [ %1861, %1874 ]
  %2807 = phi float [ %2688, %2685 ], [ %1862, %2170 ], [ %1862, %1857 ], [ %2688, %2782 ], [ %2688, %2780 ], [ %2688, %2740 ], [ %2688, %2713 ], [ %1862, %1874 ]
  %2808 = phi float [ %2689, %2685 ], [ %1863, %2170 ], [ %1863, %1857 ], [ %2689, %2782 ], [ %2689, %2780 ], [ %2689, %2740 ], [ %2689, %2713 ], [ %1863, %1874 ]
  %2809 = phi float [ %2690, %2685 ], [ %1864, %2170 ], [ %1864, %1857 ], [ %2690, %2782 ], [ %2690, %2780 ], [ %2690, %2740 ], [ %2690, %2713 ], [ %1864, %1874 ]
  %2810 = phi float [ %2691, %2685 ], [ %1865, %2170 ], [ %1865, %1857 ], [ %2691, %2782 ], [ %2691, %2780 ], [ %2691, %2740 ], [ %2691, %2713 ], [ %1865, %1874 ]
  %2811 = phi float [ %1866, %2685 ], [ %1866, %2170 ], [ %1866, %1857 ], [ %2799, %2782 ], [ %1866, %2780 ], [ %2777, %2740 ], [ %2735, %2713 ], [ %1866, %1874 ]
  %2812 = phi float [ %1867, %2685 ], [ %1867, %2170 ], [ %1867, %1857 ], [ %2800, %2782 ], [ %1867, %2780 ], [ %2778, %2740 ], [ %2736, %2713 ], [ %1867, %1874 ]
  %2813 = phi float [ %1868, %2685 ], [ %1868, %2170 ], [ %1868, %1857 ], [ %2801, %2782 ], [ %1868, %2780 ], [ %2779, %2740 ], [ %2737, %2713 ], [ %1868, %1874 ]
  %2814 = phi float [ %2692, %2685 ], [ %1869, %2170 ], [ %1869, %1857 ], [ %2692, %2782 ], [ %2692, %2780 ], [ %2692, %2740 ], [ %2692, %2713 ], [ %1869, %1874 ]
  %2815 = phi float [ %1870, %2685 ], [ %1870, %2170 ], [ %1870, %1857 ], [ %2793, %2782 ], [ %1870, %2780 ], [ %2771, %2740 ], [ %2725, %2713 ], [ %1870, %1874 ]
  %2816 = phi float [ %1871, %2685 ], [ %1871, %2170 ], [ %1871, %1857 ], [ %2790, %2782 ], [ %1871, %2780 ], [ %2748, %2740 ], [ %2722, %2713 ], [ %1871, %1874 ]
  %2817 = phi float [ %1872, %2685 ], [ %1872, %2170 ], [ %1872, %1857 ], [ %2795, %2782 ], [ %1872, %2780 ], [ %2773, %2740 ], [ %2728, %2713 ], [ %1872, %1874 ]
  %2818 = phi float [ %2693, %2685 ], [ %1873, %2170 ], [ %1873, %1857 ], [ %2693, %2782 ], [ %2693, %2780 ], [ %2693, %2740 ], [ %2693, %2713 ], [ %1873, %1874 ]
  br i1 %340, label %3747, label %2819

; <label>:2819                                    ; preds = %2802
  %2820 = icmp ult i32 %391, 4
  %2821 = add i32 %38, 72
  %2822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %2823 = extractvalue %dx.types.ResRet.i32 %2822, 0
  %2824 = add i32 %38, 76
  %2825 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.i32 %2825, 0
  %2827 = or i32 %2826, %2823
  %2828 = icmp eq i32 %2827, 0
  br i1 %2828, label %3747, label %2829

; <label>:2829                                    ; preds = %2819
  %2830 = and i32 %2823, 262144
  %2831 = icmp ne i32 %2830, 0
  %2832 = select i1 %2831, float %41, float 1.000000e+00
  %2833 = select i1 %2831, float %42, float 0.000000e+00
  %2834 = select i1 %2831, float %43, float 0.000000e+00
  %2835 = select i1 %2831, float %44, float 1.000000e+00
  %2836 = select i1 %2831, float %45, float %54
  %2837 = select i1 %2831, float %46, float %55
  %2838 = add i32 %38, 332
  %2839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %2840 = extractvalue %dx.types.ResRet.i32 %2839, 0
  %2841 = lshr i32 %2840, 16
  %2842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2841)  ; LegacyF16ToF32(value)
  %2843 = fmul fast float %2842, 0x3F50624DE0000000
  %2844 = add i32 %38, 136
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = lshr i32 %2846, 16
  %2848 = and i32 %2847, 255
  %2849 = lshr i32 %2846, 24
  %2850 = add i32 %38, 340
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = and i32 %2852, 65535
  %2854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2853)  ; LegacyF16ToF32(value)
  %2855 = lshr i32 %2852, 16
  %2856 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2855)  ; LegacyF16ToF32(value)
  %2857 = add i32 %38, 80
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = lshr i32 %2859, 22
  %2861 = shl nuw nsw i32 %2860, 5
  %2862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2861)  ; LegacyF16ToF32(value)
  %2863 = shl i32 %2859, 4
  %2864 = and i32 %2863, 32752
  %2865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2864)  ; LegacyF16ToF32(value)
  %2866 = lshr i32 %2859, 7
  %2867 = and i32 %2866, 32752
  %2868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2867)  ; LegacyF16ToF32(value)
  %2869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2870 = extractvalue %dx.types.CBufRet.f32 %2869, 3
  %2871 = fmul fast float %2870, 1.000000e+03
  %2872 = fmul fast float %330, %2871
  %2873 = call float @dx.op.unary.f32(i32 22, float %2872)  ; Frc(value)
  %2874 = fadd fast float %2873, %320
  %2875 = fmul fast float %331, %2871
  %2876 = call float @dx.op.unary.f32(i32 22, float %2875)  ; Frc(value)
  %2877 = fadd fast float %2876, %322
  %2878 = fmul fast float %2843, %2871
  %2879 = call float @dx.op.unary.f32(i32 22, float %2878)  ; Frc(value)
  %2880 = fmul fast float %2879, 0x401921FB60000000
  %2881 = fadd fast float %2880, %2862
  %2882 = call float @dx.op.unary.f32(i32 13, float %2881)  ; Sin(value)
  %2883 = call float @dx.op.unary.f32(i32 12, float %2881)  ; Cos(value)
  %2884 = fsub fast float -0.000000e+00, %2882
  %2885 = fadd fast float %2836, -5.000000e-01
  %2886 = fadd fast float %2837, -5.000000e-01
  %2887 = fmul fast float %2854, %2885
  %2888 = fmul fast float %2856, %2886
  %2889 = fadd fast float %2887, 5.000000e-01
  %2890 = fadd fast float %2888, 5.000000e-01
  %2891 = fmul fast float %2865, %2889
  %2892 = fmul fast float %2868, %2890
  %2893 = fmul fast float %2883, %2891
  %2894 = call float @dx.op.tertiary.f32(i32 46, float %2884, float %2892, float %2893)  ; FMad(a,b,c)
  %2895 = fmul fast float %2882, %2891
  %2896 = call float @dx.op.tertiary.f32(i32 46, float %2883, float %2892, float %2895)  ; FMad(a,b,c)
  %2897 = fadd fast float %2874, %2894
  %2898 = fadd fast float %2877, %2896
  %2899 = icmp ugt i32 %2848, 1
  %2900 = icmp ugt i32 %2846, 33554431
  %2901 = or i1 %2900, %2899
  br i1 %2901, label %2902, label %2927

; <label>:2902                                    ; preds = %2829
  %2903 = add i32 %38, 276
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = lshr i32 %2905, 16
  %2907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2906)  ; LegacyF16ToF32(value)
  %2908 = fmul fast float %2870, %2907
  %2909 = call float @dx.op.unary.f32(i32 22, float %2908)  ; Frc(value)
  %2910 = mul nuw nsw i32 %2848, %2849
  %2911 = uitofp i32 %2910 to float
  %2912 = fmul fast float %2909, %2911
  %2913 = call float @dx.op.unary.f32(i32 27, float %2912)  ; Round_ni(value)
  %2914 = fptoui float %2913 to i32
  %2915 = urem i32 %2914, %2848
  %2916 = udiv i32 %2914, %2849
  %2917 = call float @dx.op.unary.f32(i32 22, float %2897)  ; Frc(value)
  %2918 = call float @dx.op.unary.f32(i32 22, float %2898)  ; Frc(value)
  %2919 = uitofp i32 %2915 to float
  %2920 = uitofp i32 %2916 to float
  %2921 = fadd fast float %2917, %2919
  %2922 = fadd fast float %2918, %2920
  %2923 = uitofp i32 %2848 to float
  %2924 = uitofp i32 %2849 to float
  %2925 = fdiv fast float %2921, %2923
  %2926 = fdiv fast float %2922, %2924
  br label %2927

; <label>:2927                                    ; preds = %2902, %2829
  %2928 = phi float [ %2925, %2902 ], [ %2897, %2829 ]
  %2929 = phi float [ %2926, %2902 ], [ %2898, %2829 ]
  %2930 = and i32 %2823, 16777216
  %2931 = icmp eq i32 %2930, 0
  br i1 %2931, label %3041, label %2932

; <label>:2932                                    ; preds = %2927
  %2933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2934 = extractvalue %dx.types.CBufRet.f32 %2933, 0
  %2935 = extractvalue %dx.types.CBufRet.f32 %2933, 1
  %2936 = extractvalue %dx.types.CBufRet.f32 %2933, 2
  %2937 = fadd fast float %2934, %121
  %2938 = fadd fast float %2935, %122
  %2939 = fadd fast float %2936, %123
  %2940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2941 = extractvalue %dx.types.CBufRet.f32 %2940, 0
  %2942 = call float @dx.op.unary.f32(i32 7, float %2941)  ; Saturate(value)
  %2943 = icmp eq i32 %39, 65535
  br i1 %2943, label %3038, label %2944

; <label>:2944                                    ; preds = %2932
  %2945 = lshr i32 %39, 1
  %2946 = shl i32 %2945, 2
  %2947 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2946, i32 undef)  ; BufferLoad(srv,index,wot)
  %2948 = extractvalue %dx.types.ResRet.i32 %2947, 0
  %2949 = and i32 %39, 1
  %2950 = icmp ne i32 %2949, 0
  %2951 = lshr i32 %2948, 16
  %2952 = and i32 %2948, 65535
  %2953 = select i1 %2950, i32 %2951, i32 %2952
  %2954 = icmp eq i32 %2953, 65535
  br i1 %2954, label %3034, label %2955

; <label>:2955                                    ; preds = %2944
  %2956 = mul nuw nsw i32 %2953, 40
  %2957 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.f32 %2957, 0
  %2959 = extractvalue %dx.types.ResRet.f32 %2957, 1
  %2960 = extractvalue %dx.types.ResRet.f32 %2957, 2
  %2961 = add nuw nsw i32 %2956, 12
  %2962 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.f32 %2962, 0
  %2964 = extractvalue %dx.types.ResRet.f32 %2962, 1
  %2965 = extractvalue %dx.types.ResRet.f32 %2962, 2
  %2966 = add nuw nsw i32 %2956, 24
  %2967 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2968 = extractvalue %dx.types.ResRet.f32 %2967, 0
  %2969 = extractvalue %dx.types.ResRet.f32 %2967, 1
  %2970 = extractvalue %dx.types.ResRet.f32 %2967, 2
  %2971 = add nuw nsw i32 %2956, 36
  %2972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.f32 %2972, 0
  %2974 = fsub fast float %2937, %2958
  %2975 = fsub fast float %2938, %2959
  %2976 = fsub fast float %2939, %2960
  %2977 = fmul fast float %2973, %2974
  %2978 = fmul fast float %2973, %2975
  %2979 = fmul fast float %2973, %2976
  %2980 = call float @dx.op.unary.f32(i32 27, float %2977)  ; Round_ni(value)
  %2981 = call float @dx.op.unary.f32(i32 27, float %2978)  ; Round_ni(value)
  %2982 = call float @dx.op.unary.f32(i32 27, float %2979)  ; Round_ni(value)
  %2983 = fadd fast float %2980, 5.000000e-01
  %2984 = fadd fast float %2981, 5.000000e-01
  %2985 = fadd fast float %2982, 5.000000e-01
  %2986 = fmul fast float %2983, %2963
  %2987 = fmul fast float %2984, %2964
  %2988 = fmul fast float %2985, %2965
  %2989 = shl i32 %39, 2
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = add i32 %2991, 0
  %2993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2994 = call float @dx.op.unary.f32(i32 22, float %2986)  ; Frc(value)
  %2995 = call float @dx.op.unary.f32(i32 22, float %2987)  ; Frc(value)
  %2996 = call float @dx.op.unary.f32(i32 22, float %2988)  ; Frc(value)
  %2997 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2993, %dx.types.Handle %35, float %2994, float %2995, float %2996, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2998 = extractvalue %dx.types.ResRet.f32 %2997, 0
  %2999 = extractvalue %dx.types.ResRet.f32 %2997, 1
  %3000 = extractvalue %dx.types.ResRet.f32 %2997, 2
  %3001 = fmul fast float %2998, 1.023000e+03
  %3002 = fmul fast float %2999, 1.023000e+03
  %3003 = fmul fast float %3000, 1.023000e+03
  %3004 = fadd fast float %3001, 5.000000e-01
  %3005 = fadd fast float %3002, 5.000000e-01
  %3006 = fadd fast float %3003, 5.000000e-01
  %3007 = call float @dx.op.unary.f32(i32 27, float %3004)  ; Round_ni(value)
  %3008 = call float @dx.op.unary.f32(i32 27, float %3005)  ; Round_ni(value)
  %3009 = call float @dx.op.unary.f32(i32 27, float %3006)  ; Round_ni(value)
  %3010 = fsub fast float %2977, %2980
  %3011 = fsub fast float %2978, %2981
  %3012 = fsub fast float %2979, %2982
  %3013 = fmul fast float %3010, 7.500000e-01
  %3014 = fmul fast float %3011, 7.500000e-01
  %3015 = fmul fast float %3012, 7.500000e-01
  %3016 = fadd fast float %2980, 1.250000e-01
  %3017 = fadd fast float %3016, %3013
  %3018 = fadd fast float %3017, %3007
  %3019 = fadd fast float %2981, 1.250000e-01
  %3020 = fadd fast float %3019, %3014
  %3021 = fadd fast float %3020, %3008
  %3022 = fadd fast float %2982, 1.250000e-01
  %3023 = fadd fast float %3022, %3015
  %3024 = fadd fast float %3023, %3009
  %3025 = fmul fast float %3018, %2968
  %3026 = fmul fast float %3021, %2969
  %3027 = fmul fast float %3024, %2970
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = add i32 %3029, 0
  %3031 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3030, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3032 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3031, %dx.types.Handle %33, float %3025, float %3026, float %3027, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3033 = extractvalue %dx.types.ResRet.f32 %3032, 0
  br label %3034

; <label>:3034                                    ; preds = %2955, %2944
  %3035 = phi float [ %3033, %2955 ], [ -1.000000e+00, %2944 ]
  %3036 = fadd fast float %3035, %2942
  %3037 = call float @dx.op.unary.f32(i32 7, float %3036)  ; Saturate(value)
  br label %3038

; <label>:3038                                    ; preds = %3034, %2932
  %3039 = phi float [ %3037, %3034 ], [ %2942, %2932 ]
  %3040 = fmul fast float %3039, %386
  br label %3041

; <label>:3041                                    ; preds = %3038, %2927
  %3042 = phi float [ %3040, %3038 ], [ %386, %2927 ]
  %3043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3044 = extractvalue %dx.types.ResRet.i32 %3043, 0
  %3045 = and i32 %3044, 256
  %3046 = icmp eq i32 %3045, 0
  br i1 %3046, label %3093, label %3047

; <label>:3047                                    ; preds = %3041
  %3048 = add i32 %38, 436
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3048, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = add i32 %3050, 0
  %3052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3051, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3053 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3052, %dx.types.Handle %63, float %2928, float %2929, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3054 = extractvalue %dx.types.ResRet.f32 %3053, 0
  %3055 = add i32 %38, 148
  %3056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3055, i32 undef)  ; BufferLoad(srv,index,wot)
  %3057 = extractvalue %dx.types.ResRet.i32 %3056, 0
  %3058 = shl i32 %3057, 4
  %3059 = and i32 %3058, 32752
  %3060 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3059)  ; LegacyF16ToF32(value)
  %3061 = lshr i32 %3057, 7
  %3062 = and i32 %3061, 32752
  %3063 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3062)  ; LegacyF16ToF32(value)
  %3064 = fsub fast float 1.000000e+00, %3042
  %3065 = call float @dx.op.binary.f32(i32 35, float %3064, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3066 = bitcast float %3042 to i32
  %3067 = sitofp i32 %3066 to float
  %3068 = fadd fast float %3067, 0xC1CFBF8940000000
  %3069 = fmul fast float %3063, %3068
  %3070 = fadd fast float %3069, 0x41CFBF8940000000
  %3071 = fptosi float %3070 to i32
  %3072 = bitcast i32 %3071 to float
  %3073 = bitcast float %3065 to i32
  %3074 = sitofp i32 %3073 to float
  %3075 = fadd fast float %3074, 0xC1CFBF8940000000
  %3076 = fmul fast float %3075, %3063
  %3077 = fadd fast float %3076, 0x41CFBF8940000000
  %3078 = fptosi float %3077 to i32
  %3079 = bitcast i32 %3078 to float
  %3080 = fmul fast float %3072, %3060
  %3081 = fmul fast float %3079, %3060
  %3082 = fsub fast float %3065, %3080
  %3083 = fadd fast float %3081, %3065
  %3084 = call float @dx.op.unary.f32(i32 7, float %3082)  ; Saturate(value)
  %3085 = call float @dx.op.unary.f32(i32 7, float %3083)  ; Saturate(value)
  %3086 = fsub fast float %3054, %3084
  %3087 = fsub fast float %3085, %3084
  %3088 = bitcast float %3087 to i32
  %3089 = sub nsw i32 2129859010, %3088
  %3090 = bitcast i32 %3089 to float
  %3091 = fmul fast float %3090, %3086
  %3092 = call float @dx.op.unary.f32(i32 7, float %3091)  ; Saturate(value)
  br label %3093

; <label>:3093                                    ; preds = %3047, %3041
  %3094 = phi float [ %3092, %3047 ], [ %3042, %3041 ]
  %3095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3096 = extractvalue %dx.types.ResRet.i32 %3095, 0
  %3097 = and i32 %3096, 128
  %3098 = icmp eq i32 %3097, 0
  br i1 %3098, label %3115, label %3099

; <label>:3099                                    ; preds = %3093
  %3100 = add i32 %38, 420
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3100, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = add i32 %3102, 0
  %3104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3104, %dx.types.Handle %63, float %2928, float %2929, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3106 = extractvalue %dx.types.ResRet.f32 %3105, 0
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = and i32 %3108, 524288
  %3110 = icmp ne i32 %3109, 0
  %3111 = fcmp fast ogt float %3106, 0x3FE0101020000000
  %3112 = select i1 %3111, float 1.000000e+00, float 0.000000e+00
  %3113 = select i1 %3110, float %3112, float %3106
  %3114 = fmul fast float %3113, %3094
  br label %3115

; <label>:3115                                    ; preds = %3099, %3093
  %3116 = phi float [ %3114, %3099 ], [ %3094, %3093 ]
  %3117 = fcmp fast ult float %3116, 0x3F70101020000000
  br i1 %3117, label %3747, label %3118

; <label>:3118                                    ; preds = %3115
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = and i32 %3120, 16
  %3122 = icmp eq i32 %3121, 0
  br i1 %3122, label %3321, label %3123

; <label>:3123                                    ; preds = %3118
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = add i32 %38, 372
  %3127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3126, i32 undef)  ; BufferLoad(srv,index,wot)
  %3128 = extractvalue %dx.types.ResRet.i32 %3127, 0
  %3129 = add i32 %3128, 0
  %3130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3129, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3131 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3130, %dx.types.Handle %62, float %2928, float %2929, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3132 = extractvalue %dx.types.ResRet.f32 %3131, 0
  %3133 = extractvalue %dx.types.ResRet.f32 %3131, 1
  %3134 = extractvalue %dx.types.ResRet.f32 %3131, 2
  %3135 = extractvalue %dx.types.ResRet.f32 %3131, 3
  %3136 = and i32 %3125, 255
  %3137 = uitofp i32 %3136 to float
  %3138 = lshr i32 %3125, 8
  %3139 = and i32 %3138, 255
  %3140 = uitofp i32 %3139 to float
  %3141 = fmul fast float %3135, %3137
  %3142 = fadd fast float %3141, %3140
  %3143 = fmul fast float %3142, 0x3F70101000000000
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = and i32 %3145, 512
  %3147 = icmp eq i32 %3146, 0
  br i1 %3147, label %3156, label %3148

; <label>:3148                                    ; preds = %3123
  %3149 = add i32 %38, 452
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3149, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = add i32 %3151, 0
  %3153 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3152, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3154 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3153, %dx.types.Handle %63, float %2928, float %2929, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3155 = extractvalue %dx.types.ResRet.f32 %3154, 0
  br label %3156

; <label>:3156                                    ; preds = %3148, %3123
  %3157 = phi float [ %3155, %3148 ], [ 1.000000e+00, %3123 ]
  %3158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3159 = extractvalue %dx.types.ResRet.i32 %3158, 0
  %3160 = and i32 %3159, 33554432
  %3161 = icmp eq i32 %3160, 0
  br i1 %3161, label %3268, label %3162

; <label>:3162                                    ; preds = %3156
  %3163 = add i32 %38, 272
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3163, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = and i32 %3165, 65535
  %3167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3166)  ; LegacyF16ToF32(value)
  %3168 = lshr i32 %3165, 16
  %3169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3168)  ; LegacyF16ToF32(value)
  %3170 = add i32 %38, 276
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3170, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, 65535
  %3174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3173)  ; LegacyF16ToF32(value)
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = lshr i32 %3176, 24
  %3178 = uitofp i32 %3177 to float
  %3179 = fmul fast float %3178, 0x3F70101020000000
  %3180 = and i32 %3176, 255
  %3181 = uitofp i32 %3180 to float
  %3182 = fmul fast float %3181, 0x3F70101020000000
  %3183 = lshr i32 %3176, 8
  %3184 = and i32 %3183, 255
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3185, 0x3F70101020000000
  %3187 = lshr i32 %3176, 16
  %3188 = and i32 %3187, 255
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3189, 0x3F70101020000000
  %3191 = add i32 %38, 268
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3191, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = lshr i32 %3193, 24
  %3195 = uitofp i32 %3194 to float
  %3196 = fmul fast float %3195, 0x3F70101020000000
  %3197 = and i32 %3193, 255
  %3198 = uitofp i32 %3197 to float
  %3199 = fmul fast float %3198, 0x3F70101020000000
  %3200 = lshr i32 %3193, 8
  %3201 = and i32 %3200, 255
  %3202 = uitofp i32 %3201 to float
  %3203 = fmul fast float %3202, 0x3F70101020000000
  %3204 = lshr i32 %3193, 16
  %3205 = and i32 %3204, 255
  %3206 = uitofp i32 %3205 to float
  %3207 = fmul fast float %3206, 0x3F70101020000000
  %3208 = bitcast float %3132 to i32
  %3209 = ashr i32 %3208, 1
  %3210 = sub nsw i32 1597463174, %3209
  %3211 = bitcast i32 %3210 to float
  %3212 = fmul fast float %3132, 5.000000e-01
  %3213 = fmul fast float %3211, %3211
  %3214 = fmul fast float %3213, %3212
  %3215 = fsub fast float 1.500000e+00, %3214
  %3216 = fmul fast float %3211, %3132
  %3217 = fmul fast float %3216, %3215
  %3218 = bitcast float %3133 to i32
  %3219 = ashr i32 %3218, 1
  %3220 = sub nsw i32 1597463174, %3219
  %3221 = bitcast i32 %3220 to float
  %3222 = fmul fast float %3133, 5.000000e-01
  %3223 = fmul fast float %3221, %3221
  %3224 = fmul fast float %3223, %3222
  %3225 = fsub fast float 1.500000e+00, %3224
  %3226 = fmul fast float %3221, %3133
  %3227 = fmul fast float %3226, %3225
  %3228 = bitcast float %3134 to i32
  %3229 = ashr i32 %3228, 1
  %3230 = sub nsw i32 1597463174, %3229
  %3231 = bitcast i32 %3230 to float
  %3232 = fmul fast float %3134, 5.000000e-01
  %3233 = fmul fast float %3231, %3231
  %3234 = fmul fast float %3233, %3232
  %3235 = fsub fast float 1.500000e+00, %3234
  %3236 = fmul fast float %3231, %3134
  %3237 = fmul fast float %3236, %3235
  %3238 = fsub fast float %3217, %3199
  %3239 = fsub fast float %3227, %3203
  %3240 = fsub fast float %3237, %3207
  %3241 = fmul fast float %3238, %3167
  %3242 = fmul fast float %3239, %3169
  %3243 = fmul fast float %3240, %3174
  %3244 = fadd fast float %3241, %3182
  %3245 = fadd fast float %3242, %3186
  %3246 = fadd fast float %3243, %3190
  %3247 = call float @dx.op.unary.f32(i32 7, float %3244)  ; Saturate(value)
  %3248 = call float @dx.op.unary.f32(i32 7, float %3245)  ; Saturate(value)
  %3249 = call float @dx.op.unary.f32(i32 7, float %3246)  ; Saturate(value)
  %3250 = fmul fast float %3247, %3247
  %3251 = fmul fast float %3248, %3248
  %3252 = fmul fast float %3249, %3249
  %3253 = fsub fast float %3250, %3132
  %3254 = fsub fast float %3251, %3133
  %3255 = fsub fast float %3252, %3134
  %3256 = fmul fast float %3253, %3157
  %3257 = fmul fast float %3254, %3157
  %3258 = fmul fast float %3255, %3157
  %3259 = fadd fast float %3256, %3132
  %3260 = fadd fast float %3257, %3133
  %3261 = fadd fast float %3258, %3134
  %3262 = fadd fast float %3179, %3143
  %3263 = fsub fast float %3262, %3196
  %3264 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3265 = fsub fast float %3264, %3143
  %3266 = fmul fast float %3265, %3157
  %3267 = fadd fast float %3266, %3143
  br label %3321

; <label>:3268                                    ; preds = %3156
  %3269 = and i32 %3159, 134217728
  %3270 = icmp eq i32 %3269, 0
  br i1 %3270, label %3305, label %3271

; <label>:3271                                    ; preds = %3268
  %3272 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %3273 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %3274 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %3275 = fadd fast float %3272, -5.000000e-01
  %3276 = fadd fast float %3273, -5.000000e-01
  %3277 = fadd fast float %3274, -5.000000e-01
  %3278 = fmul fast float %3275, %3157
  %3279 = fmul fast float %3276, %3157
  %3280 = fmul fast float %3277, %3157
  %3281 = fadd fast float %3278, 5.000000e-01
  %3282 = fadd fast float %3279, 5.000000e-01
  %3283 = fadd fast float %3280, 5.000000e-01
  %3284 = call float @dx.op.unary.f32(i32 24, float %3132)  ; Sqrt(value)
  %3285 = call float @dx.op.unary.f32(i32 24, float %3133)  ; Sqrt(value)
  %3286 = call float @dx.op.unary.f32(i32 24, float %3134)  ; Sqrt(value)
  %3287 = fmul fast float %3281, 2.000000e+00
  %3288 = fsub fast float 1.000000e+00, %3287
  %3289 = fmul fast float %3288, %3284
  %3290 = fadd fast float %3289, %3287
  %3291 = fmul fast float %3290, %3284
  %3292 = fmul fast float %3282, 2.000000e+00
  %3293 = fsub fast float 1.000000e+00, %3292
  %3294 = fmul fast float %3293, %3285
  %3295 = fadd fast float %3294, %3292
  %3296 = fmul fast float %3295, %3285
  %3297 = fmul fast float %3283, 2.000000e+00
  %3298 = fsub fast float 1.000000e+00, %3297
  %3299 = fmul fast float %3298, %3286
  %3300 = fadd fast float %3299, %3297
  %3301 = fmul fast float %3300, %3286
  %3302 = fmul fast float %3291, %3291
  %3303 = fmul fast float %3296, %3296
  %3304 = fmul fast float %3301, %3301
  br label %3321

; <label>:3305                                    ; preds = %3268
  %3306 = fmul fast float %307, %307
  %3307 = fmul fast float %311, %311
  %3308 = fmul fast float %315, %315
  %3309 = fadd fast float %3306, -1.000000e+00
  %3310 = fadd fast float %3307, -1.000000e+00
  %3311 = fadd fast float %3308, -1.000000e+00
  %3312 = fmul fast float %3157, %3309
  %3313 = fmul fast float %3157, %3310
  %3314 = fmul fast float %3157, %3311
  %3315 = fadd fast float %3312, 1.000000e+00
  %3316 = fadd fast float %3313, 1.000000e+00
  %3317 = fadd fast float %3314, 1.000000e+00
  %3318 = fmul fast float %3315, %3132
  %3319 = fmul fast float %3316, %3133
  %3320 = fmul fast float %3317, %3134
  br label %3321

; <label>:3321                                    ; preds = %3305, %3271, %3162, %3118
  %3322 = phi float [ %3267, %3162 ], [ %3143, %3271 ], [ %3143, %3305 ], [ 0x3FA23C0BE0000000, %3118 ]
  %3323 = phi float [ %3259, %3162 ], [ %3302, %3271 ], [ %3318, %3305 ], [ 1.000000e+00, %3118 ]
  %3324 = phi float [ %3260, %3162 ], [ %3303, %3271 ], [ %3319, %3305 ], [ 1.000000e+00, %3118 ]
  %3325 = phi float [ %3261, %3162 ], [ %3304, %3271 ], [ %3320, %3305 ], [ 1.000000e+00, %3118 ]
  %3326 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3327 = extractvalue %dx.types.CBufRet.i32 %3326, 1
  %3328 = and i32 %3327, 1
  %3329 = icmp ne i32 %3328, 0
  %3330 = add i32 %38, 356
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = and i32 %3332, 32
  %3334 = icmp ne i32 %3333, 0
  %3335 = and i1 %3329, %3334
  %3336 = select i1 %3335, float 1.000000e+00, float %3323
  %3337 = select i1 %3335, float 0x3FD3333340000000, float %3324
  %3338 = select i1 %3335, float 0x3FD3333340000000, float %3325
  %3339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3340 = extractvalue %dx.types.ResRet.i32 %3339, 0
  %3341 = and i32 %3340, 32
  %3342 = icmp eq i32 %3341, 0
  br i1 %3342, label %3415, label %3343

; <label>:3343                                    ; preds = %3321
  %3344 = add i32 %38, 140
  %3345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3344, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.i32 %3345, 0
  %3347 = add i32 %38, 388
  %3348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3347, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.i32 %3348, 0
  %3350 = add i32 %3349, 0
  %3351 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3350, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3352 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3351, %dx.types.Handle %62, float %2928, float %2929, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3353 = extractvalue %dx.types.ResRet.f32 %3352, 0
  %3354 = extractvalue %dx.types.ResRet.f32 %3352, 1
  %3355 = extractvalue %dx.types.ResRet.f32 %3352, 2
  %3356 = extractvalue %dx.types.ResRet.f32 %3352, 3
  %3357 = and i32 %3346, 255
  %3358 = uitofp i32 %3357 to float
  %3359 = lshr i32 %3346, 8
  %3360 = and i32 %3359, 255
  %3361 = uitofp i32 %3360 to float
  %3362 = lshr i32 %3346, 16
  %3363 = and i32 %3362, 255
  %3364 = uitofp i32 %3363 to float
  %3365 = fmul fast float %3364, 0x3F70101000000000
  %3366 = fmul fast float %3353, %3358
  %3367 = fadd fast float %3366, %3361
  %3368 = fmul fast float %3367, 0x3F70101000000000
  %3369 = fadd fast float %3354, -5.000000e-01
  %3370 = fadd fast float %3356, -5.000000e-01
  %3371 = fmul fast float %3369, %3365
  %3372 = fmul fast float %3370, %3365
  %3373 = fadd fast float %3371, 5.000000e-01
  %3374 = fadd fast float %3372, 5.000000e-01
  %3375 = fmul fast float %3373, 2.000000e+00
  %3376 = fadd fast float %3375, -1.000000e+00
  %3377 = fmul fast float %3374, 2.000000e+00
  %3378 = fadd fast float %3377, -1.000000e+00
  %3379 = fadd fast float %3376, %3378
  %3380 = fmul fast float %3379, 5.000000e-01
  %3381 = fsub fast float %3376, %3378
  %3382 = fmul fast float %3381, 5.000000e-01
  %3383 = call float @dx.op.unary.f32(i32 6, float %3380)  ; FAbs(value)
  %3384 = fsub fast float 1.000000e+00, %3383
  %3385 = call float @dx.op.unary.f32(i32 6, float %3382)  ; FAbs(value)
  %3386 = fsub fast float %3384, %3385
  %3387 = call float @dx.op.dot3.f32(i32 55, float %3380, float %3382, float %3386, float %3380, float %3382, float %3386)  ; Dot3(ax,ay,az,bx,by,bz)
  %3388 = call float @dx.op.unary.f32(i32 25, float %3387)  ; Rsqrt(value)
  %3389 = fmul fast float %3380, %3388
  %3390 = fmul fast float %3382, %3388
  %3391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3392 = extractvalue %dx.types.ResRet.i32 %3391, 0
  %3393 = and i32 %3392, 67108864
  %3394 = icmp eq i32 %3393, 0
  br i1 %3394, label %3411, label %3395

; <label>:3395                                    ; preds = %3343
  %3396 = add i32 %38, 328
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3396, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = and i32 %3398, 65535
  %3400 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3399)  ; LegacyF16ToF32(value)
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = and i32 %3402, 65535
  %3404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3403)  ; LegacyF16ToF32(value)
  %3405 = lshr i32 %3398, 16
  %3406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3405)  ; LegacyF16ToF32(value)
  %3407 = fsub fast float %3368, %3406
  %3408 = fmul fast float %3407, %3400
  %3409 = fadd fast float %3408, %3404
  %3410 = call float @dx.op.unary.f32(i32 7, float %3409)  ; Saturate(value)
  br label %3411

; <label>:3411                                    ; preds = %3395, %3343
  %3412 = phi float [ %3410, %3395 ], [ %3368, %3343 ]
  %3413 = call float @dx.op.dot2.f32(i32 54, float %3389, float %3390, float %2832, float %2833)  ; Dot2(ax,ay,bx,by)
  %3414 = call float @dx.op.dot2.f32(i32 54, float %3389, float %3390, float %2834, float %2835)  ; Dot2(ax,ay,bx,by)
  br label %3415

; <label>:3415                                    ; preds = %3411, %3321
  %3416 = phi float [ %3412, %3411 ], [ 0x3FD6666660000000, %3321 ]
  %3417 = phi float [ %3413, %3411 ], [ 0.000000e+00, %3321 ]
  %3418 = phi float [ %3414, %3411 ], [ 0.000000e+00, %3321 ]
  %3419 = phi float [ %3355, %3411 ], [ 1.000000e+00, %3321 ]
  %3420 = add i32 %38, 208
  %3421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3420, i32 undef)  ; BufferLoad(srv,index,wot)
  %3422 = extractvalue %dx.types.ResRet.i32 %3421, 0
  %3423 = lshr i32 %3422, 22
  %3424 = shl nuw nsw i32 %3423, 5
  %3425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3424)  ; LegacyF16ToF32(value)
  %3426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3427 = extractvalue %dx.types.ResRet.i32 %3426, 0
  %3428 = and i32 %3427, 64
  %3429 = icmp eq i32 %3428, 0
  br i1 %3429, label %3463, label %3430

; <label>:3430                                    ; preds = %3415
  %3431 = add i32 %38, 404
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3431, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = add i32 %3433, 0
  %3435 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3434, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = and i32 %3437, 131072
  %3439 = icmp eq i32 %3438, 0
  %3440 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3435, %dx.types.Handle %62, float %2928, float %2929, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3441 = extractvalue %dx.types.ResRet.f32 %3440, 0
  %3442 = extractvalue %dx.types.ResRet.f32 %3440, 1
  %3443 = extractvalue %dx.types.ResRet.f32 %3440, 2
  %3444 = fmul fast float %3441, %295
  %3445 = fmul fast float %3442, %298
  %3446 = fmul fast float %3443, %301
  br i1 %3439, label %3453, label %3447

; <label>:3447                                    ; preds = %3430
  %3448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3449 = extractvalue %dx.types.CBufRet.f32 %3448, 0
  %3450 = fmul fast float %3449, %3444
  %3451 = fmul fast float %3449, %3445
  %3452 = fmul fast float %3449, %3446
  br label %3453

; <label>:3453                                    ; preds = %3447, %3430
  %3454 = phi float [ %3450, %3447 ], [ %3444, %3430 ]
  %3455 = phi float [ %3451, %3447 ], [ %3445, %3430 ]
  %3456 = phi float [ %3452, %3447 ], [ %3446, %3430 ]
  %3457 = fmul fast float %3454, %3425
  %3458 = select i1 %163, float %3457, float %3454
  %3459 = call float @dx.op.dot3.f32(i32 55, float %3458, float %3455, float %3456, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3460 = select i1 %163, float 0.000000e+00, float %3454
  %3461 = select i1 %163, float %3459, float %3455
  %3462 = select i1 %163, float 0.000000e+00, float %3456
  br label %3463

; <label>:3463                                    ; preds = %3453, %3415
  %3464 = phi float [ %3460, %3453 ], [ 0.000000e+00, %3415 ]
  %3465 = phi float [ %3461, %3453 ], [ 0.000000e+00, %3415 ]
  %3466 = phi float [ %3462, %3453 ], [ 0.000000e+00, %3415 ]
  %3467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3468 = extractvalue %dx.types.ResRet.i32 %3467, 0
  %3469 = and i32 %3468, 10240
  %3470 = icmp eq i32 %3469, 0
  br i1 %3470, label %3515, label %3471

; <label>:3471                                    ; preds = %3463
  %3472 = add i32 %38, 468
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3472, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = add i32 %3474, 0
  %3476 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3475, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3477 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3476, %dx.types.Handle %63, float %2928, float %2929, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3478 = extractvalue %dx.types.ResRet.f32 %3477, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3477, 3
  %3480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3481 = extractvalue %dx.types.ResRet.i32 %3480, 0
  %3482 = and i32 %3481, 1048576
  %3483 = icmp ne i32 %3482, 0
  %3484 = and i32 %3481, 8192
  %3485 = icmp eq i32 %3484, 0
  br i1 %3485, label %3501, label %3486

; <label>:3486                                    ; preds = %3471
  %3487 = extractvalue %dx.types.ResRet.f32 %3477, 2
  %3488 = select i1 %3483, float %3487, float %3478
  %3489 = extractvalue %dx.types.ResRet.f32 %3477, 0
  %3490 = select i1 %3483, float %3489, float %3478
  %3491 = add i32 %38, 144
  %3492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3491, i32 undef)  ; BufferLoad(srv,index,wot)
  %3493 = extractvalue %dx.types.ResRet.i32 %3492, 0
  %3494 = lshr i32 %3493, 16
  %3495 = and i32 %3494, 255
  %3496 = uitofp i32 %3495 to float
  %3497 = fmul fast float %3496, 0x3F80101020000000
  %3498 = fmul fast float %3497, %3490
  %3499 = fmul fast float %3497, %3478
  %3500 = fmul fast float %3497, %3488
  br label %3501

; <label>:3501                                    ; preds = %3486, %3471
  %3502 = phi float [ %3498, %3486 ], [ 0.000000e+00, %3471 ]
  %3503 = phi float [ %3499, %3486 ], [ 0.000000e+00, %3471 ]
  %3504 = phi float [ %3500, %3486 ], [ 0.000000e+00, %3471 ]
  %3505 = and i32 %3481, 2048
  %3506 = icmp eq i32 %3505, 0
  br i1 %3506, label %3515, label %3507

; <label>:3507                                    ; preds = %3501
  %3508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3420, i32 undef)  ; BufferLoad(srv,index,wot)
  %3509 = extractvalue %dx.types.ResRet.i32 %3508, 0
  %3510 = shl i32 %3509, 4
  %3511 = and i32 %3510, 32752
  %3512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3511)  ; LegacyF16ToF32(value)
  %3513 = fmul fast float %3512, %3479
  %3514 = call float @dx.op.binary.f32(i32 35, float %3513, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3515

; <label>:3515                                    ; preds = %3507, %3501, %3463
  %3516 = phi float [ %3502, %3507 ], [ %3502, %3501 ], [ 0.000000e+00, %3463 ]
  %3517 = phi float [ %3503, %3507 ], [ %3503, %3501 ], [ 0.000000e+00, %3463 ]
  %3518 = phi float [ %3504, %3507 ], [ %3504, %3501 ], [ 0.000000e+00, %3463 ]
  %3519 = phi float [ %3514, %3507 ], [ 0x3F70101020000000, %3501 ], [ 0x3F70101020000000, %3463 ]
  %3520 = add i32 %38, 144
  %3521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3520, i32 undef)  ; BufferLoad(srv,index,wot)
  %3522 = extractvalue %dx.types.ResRet.i32 %3521, 0
  %3523 = and i32 %3522, 255
  %3524 = uitofp i32 %3523 to float
  %3525 = lshr i32 %3522, 8
  %3526 = and i32 %3525, 255
  %3527 = uitofp i32 %3526 to float
  %3528 = call float @dx.op.dot3.f32(i32 55, float %3336, float %3337, float %3338, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3529 = fmul fast float %3527, %3528
  %3530 = fadd fast float %3529, %3524
  %3531 = fmul fast float %3530, 0x3F70101020000000
  %3532 = call float @dx.op.unary.f32(i32 7, float %3531)  ; Saturate(value)
  br i1 %2820, label %3533, label %3541

; <label>:3533                                    ; preds = %3515
  %3534 = fsub fast float 1.000000e+00, %3116
  %3535 = fmul fast float %3534, %2805
  %3536 = fmul fast float %3534, %2806
  %3537 = fmul fast float %3534, %2807
  %3538 = fmul fast float %3534, %2808
  %3539 = fmul fast float %3534, %2809
  %3540 = fmul fast float %3534, %2810
  br label %3541

; <label>:3541                                    ; preds = %3533, %3515
  %3542 = phi float [ %3535, %3533 ], [ %2805, %3515 ]
  %3543 = phi float [ %3536, %3533 ], [ %2806, %3515 ]
  %3544 = phi float [ %3537, %3533 ], [ %2807, %3515 ]
  %3545 = phi float [ %3538, %3533 ], [ %2808, %3515 ]
  %3546 = phi float [ %3539, %3533 ], [ %2809, %3515 ]
  %3547 = phi float [ %3540, %3533 ], [ %2810, %3515 ]
  %3548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2821, i32 undef)  ; BufferLoad(srv,index,wot)
  %3549 = extractvalue %dx.types.ResRet.i32 %3548, 0
  %3550 = and i32 %3549, 3
  %3551 = icmp eq i32 %3550, 3
  br i1 %3551, label %3630, label %3552

; <label>:3552                                    ; preds = %3541
  %3553 = and i32 %3549, 16
  %3554 = icmp ne i32 %3553, 0
  %3555 = select i1 %3554, float %3116, float 0.000000e+00
  %3556 = icmp eq i32 %3550, 0
  br i1 %3556, label %3557, label %3585

; <label>:3557                                    ; preds = %3552
  %3558 = and i32 %3549, 64
  %3559 = icmp ne i32 %3558, 0
  %3560 = select i1 %3559, float %3116, float 0.000000e+00
  %3561 = fsub fast float %3336, %3542
  %3562 = fsub fast float %3337, %3543
  %3563 = fsub fast float %3338, %3544
  %3564 = fmul fast float %3555, %3561
  %3565 = fmul fast float %3555, %3562
  %3566 = fmul fast float %3555, %3563
  %3567 = fadd fast float %3564, %3542
  %3568 = fadd fast float %3565, %3543
  %3569 = fadd fast float %3566, %3544
  %3570 = fsub fast float %3322, %2814
  %3571 = fmul fast float %3555, %3570
  %3572 = fadd fast float %3571, %2814
  %3573 = fsub fast float %3464, %3545
  %3574 = fsub fast float %3465, %3546
  %3575 = fsub fast float %3466, %3547
  %3576 = fmul fast float %3560, %3573
  %3577 = fmul fast float %3560, %3574
  %3578 = fmul fast float %3560, %3575
  %3579 = fadd fast float %3576, %3545
  %3580 = fadd fast float %3577, %3546
  %3581 = fadd fast float %3578, %3547
  %3582 = fsub fast float %3532, %2818
  %3583 = fmul fast float %3555, %3582
  %3584 = fadd fast float %3583, %2818
  br label %3630

; <label>:3585                                    ; preds = %3552
  %3586 = icmp eq i32 %3550, 1
  br i1 %3586, label %3587, label %3600

; <label>:3587                                    ; preds = %3585
  %3588 = fadd fast float %3336, -1.000000e+00
  %3589 = fadd fast float %3337, -1.000000e+00
  %3590 = fadd fast float %3338, -1.000000e+00
  %3591 = fmul fast float %3555, %3588
  %3592 = fmul fast float %3555, %3589
  %3593 = fmul fast float %3555, %3590
  %3594 = fadd fast float %3591, 1.000000e+00
  %3595 = fadd fast float %3592, 1.000000e+00
  %3596 = fadd fast float %3593, 1.000000e+00
  %3597 = fmul fast float %3594, %3542
  %3598 = fmul fast float %3595, %3543
  %3599 = fmul fast float %3596, %3544
  br label %3630

; <label>:3600                                    ; preds = %3585
  %3601 = icmp eq i32 %3550, 2
  br i1 %3601, label %3602, label %3630

; <label>:3602                                    ; preds = %3600
  %3603 = call float @dx.op.unary.f32(i32 24, float %3336)  ; Sqrt(value)
  %3604 = call float @dx.op.unary.f32(i32 24, float %3337)  ; Sqrt(value)
  %3605 = call float @dx.op.unary.f32(i32 24, float %3338)  ; Sqrt(value)
  %3606 = fadd fast float %3603, -5.000000e-01
  %3607 = fadd fast float %3604, -5.000000e-01
  %3608 = fadd fast float %3605, -5.000000e-01
  %3609 = fmul fast float %3606, %3555
  %3610 = fmul fast float %3607, %3555
  %3611 = fmul fast float %3608, %3555
  %3612 = fadd fast float %3609, 5.000000e-01
  %3613 = fadd fast float %3610, 5.000000e-01
  %3614 = fadd fast float %3611, 5.000000e-01
  %3615 = fmul fast float %3612, 2.000000e+00
  %3616 = fsub fast float 1.000000e+00, %3615
  %3617 = fmul fast float %3616, %3542
  %3618 = fadd fast float %3617, %3615
  %3619 = fmul fast float %3618, %3542
  %3620 = fmul fast float %3613, 2.000000e+00
  %3621 = fsub fast float 1.000000e+00, %3620
  %3622 = fmul fast float %3621, %3543
  %3623 = fadd fast float %3622, %3620
  %3624 = fmul fast float %3623, %3543
  %3625 = fmul fast float %3614, 2.000000e+00
  %3626 = fsub fast float 1.000000e+00, %3625
  %3627 = fmul fast float %3626, %3544
  %3628 = fadd fast float %3627, %3625
  %3629 = fmul fast float %3628, %3544
  br label %3630

; <label>:3630                                    ; preds = %3602, %3600, %3587, %3557, %3541
  %3631 = phi float [ %3542, %3541 ], [ %3619, %3602 ], [ %3542, %3600 ], [ %3597, %3587 ], [ %3567, %3557 ]
  %3632 = phi float [ %3543, %3541 ], [ %3624, %3602 ], [ %3543, %3600 ], [ %3598, %3587 ], [ %3568, %3557 ]
  %3633 = phi float [ %3544, %3541 ], [ %3629, %3602 ], [ %3544, %3600 ], [ %3599, %3587 ], [ %3569, %3557 ]
  %3634 = phi float [ %3545, %3541 ], [ %3545, %3602 ], [ %3545, %3600 ], [ %3545, %3587 ], [ %3579, %3557 ]
  %3635 = phi float [ %3546, %3541 ], [ %3546, %3602 ], [ %3546, %3600 ], [ %3546, %3587 ], [ %3580, %3557 ]
  %3636 = phi float [ %3547, %3541 ], [ %3547, %3602 ], [ %3547, %3600 ], [ %3547, %3587 ], [ %3581, %3557 ]
  %3637 = phi float [ %2814, %3541 ], [ %2814, %3602 ], [ %2814, %3600 ], [ %2814, %3587 ], [ %3572, %3557 ]
  %3638 = phi float [ %2818, %3541 ], [ %2818, %3602 ], [ %2818, %3600 ], [ %2818, %3587 ], [ %3584, %3557 ]
  %3639 = and i32 %3549, 12
  %3640 = icmp eq i32 %3639, 12
  br i1 %3640, label %3747, label %3641

; <label>:3641                                    ; preds = %3630
  %3642 = and i32 %3549, 2097184
  %3643 = icmp eq i32 %3642, 2097184
  %3644 = select i1 %3643, float %3116, float 0.000000e+00
  %3645 = and i32 %3549, 4194336
  %3646 = icmp eq i32 %3645, 4194336
  %3647 = select i1 %3646, float %3116, float 0.000000e+00
  %3648 = and i32 %3549, 8388640
  %3649 = icmp eq i32 %3648, 8388640
  %3650 = select i1 %3649, float %3116, float 0.000000e+00
  %3651 = and i32 %3549, 2048
  %3652 = icmp ne i32 %3651, 0
  %3653 = select i1 %3652, float %3116, float 0.000000e+00
  %3654 = and i32 %3549, 8192
  %3655 = icmp ne i32 %3654, 0
  %3656 = select i1 %3655, float %3116, float 0.000000e+00
  %3657 = icmp eq i32 %3639, 0
  br i1 %3657, label %3658, label %3683

; <label>:3658                                    ; preds = %3641
  %3659 = fsub fast float %3417, %2803
  %3660 = fsub fast float %3418, %2804
  %3661 = fmul fast float %3644, %3659
  %3662 = fmul fast float %3644, %3660
  %3663 = fadd fast float %3661, %2803
  %3664 = fadd fast float %3662, %2804
  %3665 = fsub fast float %3419, %2816
  %3666 = fmul fast float %3647, %3665
  %3667 = fadd fast float %3666, %2816
  %3668 = fsub fast float %3416, %2815
  %3669 = fmul fast float %3650, %3668
  %3670 = fadd fast float %3669, %2815
  %3671 = fsub fast float %3519, %2817
  %3672 = fmul fast float %3653, %3671
  %3673 = fadd fast float %3672, %2817
  %3674 = fsub fast float %3516, %2811
  %3675 = fsub fast float %3517, %2812
  %3676 = fsub fast float %3518, %2813
  %3677 = fmul fast float %3656, %3674
  %3678 = fmul fast float %3656, %3675
  %3679 = fmul fast float %3656, %3676
  %3680 = fadd fast float %3677, %2811
  %3681 = fadd fast float %3678, %2812
  %3682 = fadd fast float %3679, %2813
  br label %3747

; <label>:3683                                    ; preds = %3641
  %3684 = icmp eq i32 %3639, 4
  br i1 %3684, label %3685, label %3725

; <label>:3685                                    ; preds = %3683
  %3686 = fmul fast float %3644, %3417
  %3687 = fmul fast float %3644, %3418
  %3688 = fadd fast float %3686, %2803
  %3689 = fadd fast float %3687, %2804
  %3690 = call float @dx.op.binary.f32(i32 36, float %2816, float %3419)  ; FMin(a,b)
  %3691 = fsub fast float %3690, %2816
  %3692 = fmul fast float %3691, %3647
  %3693 = fadd fast float %3692, %2816
  %3694 = fadd fast float %3416, %2815
  %3695 = fmul fast float %3694, 0x3FF337FAE0000000
  %3696 = fmul fast float %2815, %2815
  %3697 = fmul fast float %3416, %3416
  %3698 = fadd fast float %3697, %3696
  %3699 = fmul fast float %3698, 0x3FE5152B00000000
  %3700 = fmul fast float %2815, 0xBFCC1F85E0000000
  %3701 = fmul fast float %3700, %3416
  %3702 = fadd fast float %3701, 0xBFE1363700000000
  %3703 = fadd fast float %3702, %3695
  %3704 = fsub fast float %3703, %3699
  %3705 = fmul fast float %3694, 0x3FBA6F0D00000000
  %3706 = fmul fast float %3698, 0x3FD0432880000000
  %3707 = fmul fast float %2815, 0xBFEF110800000000
  %3708 = fmul fast float %3707, %3416
  %3709 = fadd fast float %3708, 1.000000e+00
  %3710 = fsub fast float %3709, %3705
  %3711 = fadd fast float %3710, %3706
  %3712 = fdiv fast float %3704, %3711
  %3713 = call float @dx.op.unary.f32(i32 7, float %3712)  ; Saturate(value)
  %3714 = fsub fast float %3713, %2815
  %3715 = fmul fast float %3714, %3650
  %3716 = fadd fast float %3715, %2815
  %3717 = fmul fast float %3653, %3519
  %3718 = fadd fast float %3717, %2817
  %3719 = fmul fast float %3656, %3516
  %3720 = fmul fast float %3656, %3517
  %3721 = fmul fast float %3656, %3518
  %3722 = fadd fast float %3719, %2811
  %3723 = fadd fast float %3720, %2812
  %3724 = fadd fast float %3721, %2813
  br label %3747

; <label>:3725                                    ; preds = %3683
  %3726 = icmp eq i32 %3639, 8
  br i1 %3726, label %3727, label %3747

; <label>:3727                                    ; preds = %3725
  %3728 = fmul fast float %3644, %3417
  %3729 = fmul fast float %3644, %3418
  %3730 = fadd fast float %3728, %2803
  %3731 = fadd fast float %3729, %2804
  %3732 = call float @dx.op.binary.f32(i32 36, float %2816, float %3419)  ; FMin(a,b)
  %3733 = fsub fast float %3732, %2816
  %3734 = fmul fast float %3733, %3647
  %3735 = fadd fast float %3734, %2816
  %3736 = fsub fast float %3416, %2815
  %3737 = fmul fast float %3650, %3736
  %3738 = fadd fast float %3737, %2815
  %3739 = fmul fast float %3653, %3519
  %3740 = fadd fast float %3739, %2817
  %3741 = fmul fast float %3656, %3516
  %3742 = fmul fast float %3656, %3517
  %3743 = fmul fast float %3656, %3518
  %3744 = fadd fast float %3741, %2811
  %3745 = fadd fast float %3742, %2812
  %3746 = fadd fast float %3743, %2813
  br label %3747

; <label>:3747                                    ; preds = %3727, %3725, %3685, %3658, %3630, %3115, %2819, %2802
  %3748 = phi float [ %2803, %3630 ], [ %2803, %3115 ], [ %2803, %2802 ], [ %2803, %2819 ], [ %3663, %3658 ], [ %3688, %3685 ], [ %2803, %3725 ], [ %3730, %3727 ]
  %3749 = phi float [ %2804, %3630 ], [ %2804, %3115 ], [ %2804, %2802 ], [ %2804, %2819 ], [ %3664, %3658 ], [ %3689, %3685 ], [ %2804, %3725 ], [ %3731, %3727 ]
  %3750 = phi float [ %3631, %3630 ], [ %2805, %3115 ], [ %2805, %2802 ], [ %2805, %2819 ], [ %3631, %3658 ], [ %3631, %3685 ], [ %3631, %3725 ], [ %3631, %3727 ]
  %3751 = phi float [ %3632, %3630 ], [ %2806, %3115 ], [ %2806, %2802 ], [ %2806, %2819 ], [ %3632, %3658 ], [ %3632, %3685 ], [ %3632, %3725 ], [ %3632, %3727 ]
  %3752 = phi float [ %3633, %3630 ], [ %2807, %3115 ], [ %2807, %2802 ], [ %2807, %2819 ], [ %3633, %3658 ], [ %3633, %3685 ], [ %3633, %3725 ], [ %3633, %3727 ]
  %3753 = phi float [ %3634, %3630 ], [ %2808, %3115 ], [ %2808, %2802 ], [ %2808, %2819 ], [ %3634, %3658 ], [ %3634, %3685 ], [ %3634, %3725 ], [ %3634, %3727 ]
  %3754 = phi float [ %3635, %3630 ], [ %2809, %3115 ], [ %2809, %2802 ], [ %2809, %2819 ], [ %3635, %3658 ], [ %3635, %3685 ], [ %3635, %3725 ], [ %3635, %3727 ]
  %3755 = phi float [ %3636, %3630 ], [ %2810, %3115 ], [ %2810, %2802 ], [ %2810, %2819 ], [ %3636, %3658 ], [ %3636, %3685 ], [ %3636, %3725 ], [ %3636, %3727 ]
  %3756 = phi float [ %2811, %3630 ], [ %2811, %3115 ], [ %2811, %2802 ], [ %2811, %2819 ], [ %3680, %3658 ], [ %3722, %3685 ], [ %2811, %3725 ], [ %3744, %3727 ]
  %3757 = phi float [ %2812, %3630 ], [ %2812, %3115 ], [ %2812, %2802 ], [ %2812, %2819 ], [ %3681, %3658 ], [ %3723, %3685 ], [ %2812, %3725 ], [ %3745, %3727 ]
  %3758 = phi float [ %2813, %3630 ], [ %2813, %3115 ], [ %2813, %2802 ], [ %2813, %2819 ], [ %3682, %3658 ], [ %3724, %3685 ], [ %2813, %3725 ], [ %3746, %3727 ]
  %3759 = phi float [ %3637, %3630 ], [ %2814, %3115 ], [ %2814, %2802 ], [ %2814, %2819 ], [ %3637, %3658 ], [ %3637, %3685 ], [ %3637, %3725 ], [ %3637, %3727 ]
  %3760 = phi float [ %2815, %3630 ], [ %2815, %3115 ], [ %2815, %2802 ], [ %2815, %2819 ], [ %3670, %3658 ], [ %3716, %3685 ], [ %2815, %3725 ], [ %3738, %3727 ]
  %3761 = phi float [ %2816, %3630 ], [ %2816, %3115 ], [ %2816, %2802 ], [ %2816, %2819 ], [ %3667, %3658 ], [ %3693, %3685 ], [ %2816, %3725 ], [ %3735, %3727 ]
  %3762 = phi float [ %2817, %3630 ], [ %2817, %3115 ], [ %2817, %2802 ], [ %2817, %2819 ], [ %3673, %3658 ], [ %3718, %3685 ], [ %2817, %3725 ], [ %3740, %3727 ]
  %3763 = phi float [ %3638, %3630 ], [ %2818, %3115 ], [ %2818, %2802 ], [ %2818, %2819 ], [ %3638, %3658 ], [ %3638, %3685 ], [ %3638, %3725 ], [ %3638, %3727 ]
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 0
  %3766 = call float @dx.op.dot2.f32(i32 54, float %3748, float %3749, float %3748, float %3749)  ; Dot2(ax,ay,bx,by)
  %3767 = fmul fast float %3766, 0x3FE3333340000000
  %3768 = fsub fast float 1.000000e+00, %3767
  %3769 = call float @dx.op.dot3.f32(i32 55, float %3748, float %3749, float %3768, float %3748, float %3749, float %3768)  ; Dot3(ax,ay,az,bx,by,bz)
  %3770 = call float @dx.op.unary.f32(i32 25, float %3769)  ; Rsqrt(value)
  %3771 = fmul fast float %3770, %3748
  %3772 = fmul fast float %3770, %3749
  %3773 = fmul fast float %3768, %3770
  %3774 = fmul fast float %3773, %73
  %3775 = fmul fast float %3773, %74
  %3776 = fmul fast float %3773, %75
  %3777 = fmul fast float %3771, %47
  %3778 = fmul fast float %3771, %48
  %3779 = fmul fast float %3771, %49
  %3780 = fadd fast float %3774, %3777
  %3781 = fadd fast float %3775, %3778
  %3782 = fadd fast float %3776, %3779
  %3783 = fmul fast float %85, %3772
  %3784 = fmul fast float %86, %3772
  %3785 = fmul fast float %87, %3772
  %3786 = fadd fast float %3780, %3783
  %3787 = fadd fast float %3781, %3784
  %3788 = fadd fast float %3782, %3785
  %3789 = call float @dx.op.dot3.f32(i32 55, float %3786, float %3787, float %3788, float %3786, float %3787, float %3788)  ; Dot3(ax,ay,az,bx,by,bz)
  %3790 = call float @dx.op.unary.f32(i32 25, float %3789)  ; Rsqrt(value)
  %3791 = fmul fast float %3786, %3790
  %3792 = fmul fast float %3787, %3790
  %3793 = fmul fast float %3788, %3790
  %3794 = and i32 %40, 1
  %3795 = icmp eq i32 %3794, 0
  br i1 %3795, label %3796, label %4357

; <label>:3796                                    ; preds = %3747
  %3797 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %3798 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %3799 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %3800 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %3801 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %3802 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %3803 = fadd fast float %3797, %121
  %3804 = fadd fast float %3798, %122
  %3805 = fadd fast float %3799, %123
  %3806 = fadd fast float %3800, %121
  %3807 = fadd fast float %3801, %122
  %3808 = fadd fast float %3802, %123
  %3809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3810 = extractvalue %dx.types.CBufRet.f32 %3809, 0
  %3811 = extractvalue %dx.types.CBufRet.f32 %3809, 1
  %3812 = extractvalue %dx.types.CBufRet.f32 %3809, 2
  %3813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3814 = extractvalue %dx.types.CBufRet.f32 %3813, 2
  %3815 = extractvalue %dx.types.CBufRet.f32 %3813, 3
  %3816 = fmul fast float %3810, %66
  %3817 = fmul fast float %3816, %3814
  %3818 = fmul fast float %3811, %67
  %3819 = fmul fast float %3818, %3815
  %3820 = fptoui float %3817 to i32
  %3821 = fptoui float %3819 to i32
  %3822 = fadd fast float %3810, -1.000000e+00
  %3823 = fadd fast float %3811, -1.000000e+00
  %3824 = fptoui float %3822 to i32
  %3825 = fptoui float %3823 to i32
  %3826 = call i32 @dx.op.binary.i32(i32 40, i32 %3820, i32 %3824)  ; UMin(a,b)
  %3827 = call i32 @dx.op.binary.i32(i32 40, i32 %3821, i32 %3825)  ; UMin(a,b)
  %3828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.f32 %3828, 2
  %3830 = extractvalue %dx.types.CBufRet.f32 %3828, 3
  %3831 = fmul fast float %3829, %61
  %3832 = fsub fast float %3831, %3830
  %3833 = fadd fast float %3812, -1.000000e+00
  %3834 = call float @dx.op.binary.f32(i32 36, float %3832, float %3833)  ; FMin(a,b)
  %3835 = fptoui float %3834 to i32
  %3836 = fptoui float %3810 to i32
  %3837 = fptoui float %3811 to i32
  %3838 = mul i32 %3835, %3837
  %3839 = add i32 %3838, %3827
  %3840 = mul i32 %3839, %3836
  %3841 = add i32 %3840, %3826
  %3842 = shl i32 %3841, 2
  %3843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3844 = extractvalue %dx.types.ResRet.i32 %3843, 0
  %3845 = and i32 %3844, 1023
  %3846 = lshr i32 %3844, 10
  %3847 = icmp eq i32 %3845, 0
  br i1 %3847, label %4323, label %3848

; <label>:3848                                    ; preds = %3796
  %3849 = and i32 %3844, 1023
  br label %3850

; <label>:3850                                    ; preds = %3979, %3848
  %3851 = phi i32 [ %3929, %3979 ], [ 0, %3848 ]
  %3852 = phi float [ %3980, %3979 ], [ 0.000000e+00, %3848 ]
  %3853 = phi float [ %3981, %3979 ], [ %3765, %3848 ]
  %3854 = phi float [ %3982, %3979 ], [ %3763, %3848 ]
  %3855 = phi float [ %3983, %3979 ], [ 0.000000e+00, %3848 ]
  %3856 = phi float [ %3984, %3979 ], [ 0.000000e+00, %3848 ]
  %3857 = phi float [ %3985, %3979 ], [ %3756, %3848 ]
  %3858 = phi float [ %3986, %3979 ], [ %3757, %3848 ]
  %3859 = phi float [ %3987, %3979 ], [ %3758, %3848 ]
  %3860 = phi float [ %3988, %3979 ], [ %3753, %3848 ]
  %3861 = phi float [ %3989, %3979 ], [ %3754, %3848 ]
  %3862 = phi float [ %3990, %3979 ], [ %3755, %3848 ]
  %3863 = phi float [ %3991, %3979 ], [ %3791, %3848 ]
  %3864 = phi float [ %3992, %3979 ], [ %3792, %3848 ]
  %3865 = phi float [ %3993, %3979 ], [ %3793, %3848 ]
  %3866 = phi float [ %3994, %3979 ], [ %3761, %3848 ]
  %3867 = phi float [ %3995, %3979 ], [ %3760, %3848 ]
  %3868 = phi float [ %3996, %3979 ], [ 0.000000e+00, %3848 ]
  %3869 = phi float [ %3997, %3979 ], [ %3759, %3848 ]
  %3870 = phi float [ %3998, %3979 ], [ %3750, %3848 ]
  %3871 = phi float [ %3999, %3979 ], [ %3751, %3848 ]
  %3872 = phi float [ %4000, %3979 ], [ %3752, %3848 ]
  %3873 = add nuw nsw i32 %3851, %3846
  %3874 = shl i32 %3873, 2
  %3875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3876 = extractvalue %dx.types.ResRet.i32 %3875, 0
  %3877 = shl i32 %3876, 8
  %3878 = or i32 %3877, 48
  %3879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3878, i32 undef)  ; BufferLoad(srv,index,wot)
  %3880 = extractvalue %dx.types.ResRet.f32 %3879, 0
  %3881 = extractvalue %dx.types.ResRet.f32 %3879, 1
  %3882 = extractvalue %dx.types.ResRet.f32 %3879, 2
  %3883 = extractvalue %dx.types.ResRet.f32 %3879, 3
  %3884 = or i32 %3877, 64
  %3885 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.i32 %3885, 0
  %3887 = extractvalue %dx.types.ResRet.i32 %3885, 1
  %3888 = or i32 %3877, 80
  %3889 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3888, i32 undef)  ; BufferLoad(srv,index,wot)
  %3890 = extractvalue %dx.types.ResRet.f32 %3889, 2
  %3891 = extractvalue %dx.types.ResRet.f32 %3889, 3
  %3892 = or i32 %3877, 96
  %3893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3892, i32 undef)  ; BufferLoad(srv,index,wot)
  %3894 = extractvalue %dx.types.ResRet.f32 %3893, 0
  %3895 = extractvalue %dx.types.ResRet.f32 %3893, 1
  %3896 = extractvalue %dx.types.ResRet.f32 %3893, 2
  %3897 = extractvalue %dx.types.ResRet.f32 %3893, 3
  %3898 = or i32 %3877, 112
  %3899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.f32 %3899, 2
  %3901 = or i32 %3877, 128
  %3902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3901, i32 undef)  ; BufferLoad(srv,index,wot)
  %3903 = extractvalue %dx.types.ResRet.f32 %3902, 0
  %3904 = extractvalue %dx.types.ResRet.f32 %3902, 1
  %3905 = extractvalue %dx.types.ResRet.f32 %3902, 2
  %3906 = extractvalue %dx.types.ResRet.f32 %3902, 3
  %3907 = or i32 %3877, 144
  %3908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.ResRet.f32 %3908, 1
  %3911 = extractvalue %dx.types.ResRet.f32 %3908, 2
  %3912 = extractvalue %dx.types.ResRet.f32 %3908, 3
  %3913 = or i32 %3877, 160
  %3914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.ResRet.f32 %3914, 1
  %3917 = extractvalue %dx.types.ResRet.f32 %3914, 2
  %3918 = extractvalue %dx.types.ResRet.f32 %3914, 3
  %3919 = or i32 %3877, 192
  %3920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.i32 %3920, 0
  %3922 = or i32 %3877, 208
  %3923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3922, i32 undef)  ; BufferLoad(srv,index,wot)
  %3924 = extractvalue %dx.types.ResRet.f32 %3923, 0
  %3925 = or i32 %3877, 248
  %3926 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.f32 %3926, 0
  %3928 = extractvalue %dx.types.ResRet.f32 %3926, 1
  %3929 = add nuw nsw i32 %3851, 1
  %3930 = bitcast float %3883 to i32
  %3931 = and i32 %3930, 512
  %3932 = icmp eq i32 %3931, 0
  %3933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3877, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3936 = extractvalue %dx.types.ResRet.f32 %3933, 2
  %3937 = extractvalue %dx.types.ResRet.f32 %3933, 3
  %3938 = call float @dx.op.dot4.f32(i32 56, float %3934, float %3935, float %3936, float %3937, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3939 = or i32 %3877, 16
  %3940 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3939, i32 undef)  ; BufferLoad(srv,index,wot)
  %3941 = extractvalue %dx.types.ResRet.f32 %3940, 0
  %3942 = extractvalue %dx.types.ResRet.f32 %3940, 1
  %3943 = extractvalue %dx.types.ResRet.f32 %3940, 2
  %3944 = extractvalue %dx.types.ResRet.f32 %3940, 3
  %3945 = call float @dx.op.dot4.f32(i32 56, float %3941, float %3942, float %3943, float %3944, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3946 = or i32 %3877, 32
  %3947 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3946, i32 undef)  ; BufferLoad(srv,index,wot)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = extractvalue %dx.types.ResRet.f32 %3947, 3
  %3952 = call float @dx.op.dot4.f32(i32 56, float %3948, float %3949, float %3950, float %3951, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3953 = call float @dx.op.unary.f32(i32 27, float %3938)  ; Round_ni(value)
  %3954 = call float @dx.op.unary.f32(i32 6, float %3953)  ; FAbs(value)
  %3955 = call float @dx.op.unary.f32(i32 27, float %3945)  ; Round_ni(value)
  %3956 = call float @dx.op.unary.f32(i32 6, float %3955)  ; FAbs(value)
  %3957 = call float @dx.op.unary.f32(i32 6, float %3952)  ; FAbs(value)
  %3958 = call float @dx.op.unary.f32(i32 27, float %3957)  ; Round_ni(value)
  %3959 = fadd fast float %3956, %3954
  %3960 = fadd fast float %3959, %3958
  %3961 = fcmp fast oeq float %3960, 0.000000e+00
  %3962 = call float @dx.op.dot4.f32(i32 56, float %3934, float %3935, float %3936, float %3937, float %3803, float %3804, float %3805, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3963 = call float @dx.op.dot4.f32(i32 56, float %3941, float %3942, float %3943, float %3944, float %3803, float %3804, float %3805, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3964 = call float @dx.op.dot4.f32(i32 56, float %3934, float %3935, float %3936, float %3937, float %3806, float %3807, float %3808, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3965 = call float @dx.op.dot4.f32(i32 56, float %3941, float %3942, float %3943, float %3944, float %3806, float %3807, float %3808, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3966 = fsub fast float %3962, %3938
  %3967 = fsub fast float %3964, %3938
  %3968 = fsub fast float %3963, %3945
  %3969 = fsub fast float %3965, %3945
  %3970 = call float @dx.op.dot3.f32(i32 55, float %3880, float %3881, float %3882, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %3971 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3972 = extractvalue %dx.types.CBufRet.f32 %3971, 2
  %3973 = fadd fast float %3972, %3970
  %3974 = call float @dx.op.unary.f32(i32 7, float %3973)  ; Saturate(value)
  %3975 = extractvalue %dx.types.CBufRet.f32 %3971, 0
  %3976 = fcmp fast ogt float %3974, %3975
  %3977 = and i1 %3961, %3976
  %3978 = and i1 %3932, %3977
  br i1 %3978, label %4002, label %3979

; <label>:3979                                    ; preds = %4309, %4083, %4002, %3850
  %3980 = phi float [ %3852, %4002 ], [ %4086, %4083 ], [ %4086, %4309 ], [ %3852, %3850 ]
  %3981 = phi float [ %3853, %4002 ], [ %3853, %4083 ], [ %4285, %4309 ], [ %3853, %3850 ]
  %3982 = phi float [ %3854, %4002 ], [ %3854, %4083 ], [ %4283, %4309 ], [ %3854, %3850 ]
  %3983 = phi float [ %3855, %4002 ], [ %3855, %4083 ], [ %4210, %4309 ], [ %3855, %3850 ]
  %3984 = phi float [ %3856, %4002 ], [ %3856, %4083 ], [ %4208, %4309 ], [ %3856, %3850 ]
  %3985 = phi float [ %3857, %4002 ], [ %3857, %4083 ], [ %4253, %4309 ], [ %3857, %3850 ]
  %3986 = phi float [ %3858, %4002 ], [ %3858, %4083 ], [ %4254, %4309 ], [ %3858, %3850 ]
  %3987 = phi float [ %3859, %4002 ], [ %3859, %4083 ], [ %4255, %4309 ], [ %3859, %3850 ]
  %3988 = phi float [ %3860, %4002 ], [ %3860, %4083 ], [ %4319, %4309 ], [ %3860, %3850 ]
  %3989 = phi float [ %3861, %4002 ], [ %3861, %4083 ], [ %4320, %4309 ], [ %3861, %3850 ]
  %3990 = phi float [ %3862, %4002 ], [ %3862, %4083 ], [ %4321, %4309 ], [ %3862, %3850 ]
  %3991 = phi float [ %3863, %4002 ], [ %3863, %4083 ], [ %4189, %4309 ], [ %3863, %3850 ]
  %3992 = phi float [ %3864, %4002 ], [ %3864, %4083 ], [ %4190, %4309 ], [ %3864, %3850 ]
  %3993 = phi float [ %3865, %4002 ], [ %3865, %4083 ], [ %4191, %4309 ], [ %3865, %3850 ]
  %3994 = phi float [ %3866, %4002 ], [ %3866, %4083 ], [ %4263, %4309 ], [ %3866, %3850 ]
  %3995 = phi float [ %3867, %4002 ], [ %3867, %4083 ], [ %4260, %4309 ], [ %3867, %3850 ]
  %3996 = phi float [ %3868, %4002 ], [ %3868, %4083 ], [ %4257, %4309 ], [ %3868, %3850 ]
  %3997 = phi float [ %3869, %4002 ], [ %3869, %4083 ], [ %4206, %4309 ], [ %3869, %3850 ]
  %3998 = phi float [ %3870, %4002 ], [ %3870, %4083 ], [ %4201, %4309 ], [ %3870, %3850 ]
  %3999 = phi float [ %3871, %4002 ], [ %3871, %4083 ], [ %4202, %4309 ], [ %3871, %3850 ]
  %4000 = phi float [ %3872, %4002 ], [ %3872, %4083 ], [ %4203, %4309 ], [ %3872, %3850 ]
  %4001 = icmp eq i32 %3929, %3849
  br i1 %4001, label %4322, label %3850

; <label>:4002                                    ; preds = %3850
  %4003 = extractvalue %dx.types.ResRet.f32 %3899, 3
  %4004 = extractvalue %dx.types.ResRet.f32 %3899, 1
  %4005 = extractvalue %dx.types.ResRet.f32 %3899, 0
  %4006 = extractvalue %dx.types.ResRet.f32 %3889, 1
  %4007 = extractvalue %dx.types.ResRet.f32 %3889, 0
  %4008 = extractvalue %dx.types.ResRet.i32 %3885, 3
  %4009 = extractvalue %dx.types.ResRet.i32 %3885, 2
  %4010 = add i32 %4008, 0
  %4011 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4010, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4013 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4011, %dx.types.Handle %4012, float %3938, float %3945, float undef, float undef, i32 0, i32 0, i32 undef, float %3966, float %3968, float undef, float %3967, float %3969, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4015 = fmul fast float %4014, %4007
  %4016 = fadd fast float %4015, %4006
  %4017 = call float @dx.op.unary.f32(i32 7, float %4016)  ; Saturate(value)
  %4018 = fmul fast float %3938, %3894
  %4019 = call float @dx.op.tertiary.f32(i32 46, float %3895, float %3945, float %4018)  ; FMad(a,b,c)
  %4020 = fadd fast float %4019, %4005
  %4021 = fmul fast float %3938, %3896
  %4022 = call float @dx.op.tertiary.f32(i32 46, float %3897, float %3945, float %4021)  ; FMad(a,b,c)
  %4023 = fadd fast float %4022, %4004
  %4024 = fmul fast float %3966, %3894
  %4025 = call float @dx.op.tertiary.f32(i32 46, float %3895, float %3968, float %4024)  ; FMad(a,b,c)
  %4026 = fmul fast float %3966, %3896
  %4027 = call float @dx.op.tertiary.f32(i32 46, float %3897, float %3968, float %4026)  ; FMad(a,b,c)
  %4028 = fmul fast float %3967, %3894
  %4029 = call float @dx.op.tertiary.f32(i32 46, float %3895, float %3969, float %4028)  ; FMad(a,b,c)
  %4030 = fmul fast float %3967, %3896
  %4031 = call float @dx.op.tertiary.f32(i32 46, float %3897, float %3969, float %4030)  ; FMad(a,b,c)
  %4032 = add i32 %4009, 0
  %4033 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4032, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4034 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4033, %dx.types.Handle %4012, float %4020, float %4023, float undef, float undef, i32 0, i32 0, i32 undef, float %4025, float %4027, float undef, float %4029, float %4031, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4035 = extractvalue %dx.types.ResRet.f32 %4034, 0
  %4036 = and i32 %3930, 1024
  %4037 = icmp ne i32 %4036, 0
  %4038 = fcmp fast ogt float %4035, 0x3FE0101020000000
  %4039 = uitofp i1 %4038 to float
  %4040 = select i1 %4037, float %4039, float %4035
  %4041 = and i32 %3930, 8192
  %4042 = icmp ne i32 %4041, 0
  %4043 = select i1 %4042, float %4003, float 1.000000e+00
  %4044 = fmul fast float %3938, 2.000000e+00
  %4045 = fadd fast float %4044, -1.000000e+00
  %4046 = call float @dx.op.unary.f32(i32 6, float %4045)  ; FAbs(value)
  %4047 = fmul fast float %4046, %3927
  %4048 = fsub fast float %4047, %3927
  %4049 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4050 = fmul fast float %3945, 2.000000e+00
  %4051 = fadd fast float %4050, -1.000000e+00
  %4052 = call float @dx.op.unary.f32(i32 6, float %4051)  ; FAbs(value)
  %4053 = fmul fast float %4052, %3928
  %4054 = fsub fast float %4053, %3928
  %4055 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4056 = fmul fast float %3957, %3890
  %4057 = fsub fast float %4056, %3890
  %4058 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4059 = fmul fast float %4017, %4043
  %4060 = fmul fast float %4059, %4014
  %4061 = fmul fast float %4060, %4049
  %4062 = fmul fast float %4061, %4040
  %4063 = fmul fast float %4062, %4055
  %4064 = fmul fast float %4063, %4058
  %4065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4066 = extractvalue %dx.types.CBufRet.f32 %4065, 1
  %4067 = extractvalue %dx.types.CBufRet.f32 %4065, 0
  %4068 = fsub fast float %3974, %4067
  %4069 = fmul fast float %4068, %4066
  %4070 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4071 = fmul fast float %4064, %3891
  %4072 = fadd fast float %4064, %3891
  %4073 = fmul fast float %4072, %3900
  %4074 = fsub fast float %4073, %3900
  %4075 = call float @dx.op.unary.f32(i32 7, float %4074)  ; Saturate(value)
  %4076 = and i32 %3930, 128
  %4077 = icmp ne i32 %4076, 0
  %4078 = select i1 %4077, float %4075, float %4071
  %4079 = fmul fast float %4078, %4070
  %4080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4080, 0
  %4082 = fcmp fast ugt float %4079, %4081
  br i1 %4082, label %4083, label %3979

; <label>:4083                                    ; preds = %4002
  %4084 = select i1 %4042, float %4079, float 0.000000e+00
  %4085 = fadd fast float %4084, %3852
  %4086 = call float @dx.op.unary.f32(i32 7, float %4085)  ; Saturate(value)
  br i1 %4042, label %3979, label %4087

; <label>:4087                                    ; preds = %4083
  %4088 = and i32 %3930, 4
  %4089 = and i32 %3930, 8
  %4090 = add i32 %3886, 0
  %4091 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4090, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4093 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4091, %dx.types.Handle %4092, float %4020, float %4023, float undef, float undef, i32 0, i32 0, i32 undef, float %4025, float %4027, float undef, float %4029, float %4031, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4094 = extractvalue %dx.types.ResRet.f32 %4093, 0
  %4095 = extractvalue %dx.types.ResRet.f32 %4093, 1
  %4096 = extractvalue %dx.types.ResRet.f32 %4093, 2
  %4097 = extractvalue %dx.types.ResRet.f32 %4093, 3
  %4098 = bitcast float %3912 to i32
  %4099 = and i32 %4098, 255
  %4100 = uitofp i32 %4099 to float
  %4101 = lshr i32 %4098, 8
  %4102 = and i32 %4101, 255
  %4103 = uitofp i32 %4102 to float
  %4104 = fmul fast float %4097, %4100
  %4105 = fadd fast float %4104, %4103
  %4106 = fmul fast float %4105, 0x3F70101000000000
  %4107 = add i32 %3887, 0
  %4108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4107, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4109 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4108, %dx.types.Handle %4092, float %4020, float %4023, float undef, float undef, i32 0, i32 0, i32 undef, float %4025, float %4027, float undef, float %4029, float %4031, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4110 = extractvalue %dx.types.ResRet.f32 %4109, 0
  %4111 = extractvalue %dx.types.ResRet.f32 %4109, 1
  %4112 = extractvalue %dx.types.ResRet.f32 %4109, 2
  %4113 = extractvalue %dx.types.ResRet.f32 %4109, 3
  %4114 = bitcast float %3906 to i32
  %4115 = and i32 %4114, 255
  %4116 = uitofp i32 %4115 to float
  %4117 = lshr i32 %4114, 8
  %4118 = and i32 %4117, 255
  %4119 = uitofp i32 %4118 to float
  %4120 = lshr i32 %4114, 16
  %4121 = and i32 %4120, 255
  %4122 = uitofp i32 %4121 to float
  %4123 = fmul fast float %4122, 0x3F70101000000000
  %4124 = fmul fast float %4110, %4116
  %4125 = fadd fast float %4124, %4119
  %4126 = fmul fast float %4125, 0x3F70101000000000
  %4127 = fadd fast float %4111, -5.000000e-01
  %4128 = fadd fast float %4113, -5.000000e-01
  %4129 = fmul fast float %4127, %4123
  %4130 = fmul fast float %4128, %4123
  %4131 = fadd fast float %4129, 5.000000e-01
  %4132 = fadd fast float %4130, 5.000000e-01
  %4133 = fmul fast float %4094, %3915
  %4134 = fmul fast float %4095, %3916
  %4135 = fmul fast float %4096, %3917
  %4136 = fmul fast float %4131, 2.000000e+00
  %4137 = fadd fast float %4136, -1.000000e+00
  %4138 = fmul fast float %4132, 2.000000e+00
  %4139 = fadd fast float %4138, -1.000000e+00
  %4140 = fadd fast float %4137, %4139
  %4141 = fmul fast float %4140, 5.000000e-01
  %4142 = fsub fast float %4137, %4139
  %4143 = fmul fast float %4142, 5.000000e-01
  %4144 = call float @dx.op.unary.f32(i32 6, float %4141)  ; FAbs(value)
  %4145 = fsub fast float 1.000000e+00, %4144
  %4146 = call float @dx.op.unary.f32(i32 6, float %4143)  ; FAbs(value)
  %4147 = fsub fast float %4145, %4146
  %4148 = call float @dx.op.dot3.f32(i32 55, float %4141, float %4143, float %4147, float %4141, float %4143, float %4147)  ; Dot3(ax,ay,az,bx,by,bz)
  %4149 = call float @dx.op.unary.f32(i32 25, float %4148)  ; Rsqrt(value)
  %4150 = fmul fast float %4141, %4149
  %4151 = fmul fast float %4143, %4149
  %4152 = fmul fast float %4149, %4147
  %4153 = fmul fast float %4152, %3880
  %4154 = fmul fast float %4152, %3881
  %4155 = fmul fast float %4152, %3882
  %4156 = fmul fast float %4150, %3903
  %4157 = fmul fast float %4150, %3904
  %4158 = fmul fast float %4150, %3905
  %4159 = fadd fast float %4156, %4153
  %4160 = fadd fast float %4157, %4154
  %4161 = fadd fast float %4158, %4155
  %4162 = fmul fast float %4151, %3909
  %4163 = fmul fast float %4151, %3910
  %4164 = fmul fast float %4151, %3911
  %4165 = fadd fast float %4159, %4162
  %4166 = fadd fast float %4160, %4163
  %4167 = fadd fast float %4161, %4164
  %4168 = call float @dx.op.dot3.f32(i32 55, float %4165, float %4166, float %4167, float %4165, float %4166, float %4167)  ; Dot3(ax,ay,az,bx,by,bz)
  %4169 = call float @dx.op.unary.f32(i32 25, float %4168)  ; Rsqrt(value)
  %4170 = fmul fast float %4165, %4169
  %4171 = fmul fast float %4166, %4169
  %4172 = fmul fast float %4167, %4169
  %4173 = icmp ne i32 %4089, 0
  %4174 = select i1 %4173, float 1.000000e+00, float 0.000000e+00
  %4175 = fmul fast float %4079, %4174
  %4176 = and i32 %3930, 1
  %4177 = icmp eq i32 %4176, 0
  br i1 %4177, label %4178, label %4182

; <label>:4178                                    ; preds = %4087
  %4179 = fsub fast float %4170, %3863
  %4180 = fsub fast float %4171, %3864
  %4181 = fsub fast float %4172, %3865
  br label %4182

; <label>:4182                                    ; preds = %4178, %4087
  %4183 = phi float [ %4179, %4178 ], [ %4170, %4087 ]
  %4184 = phi float [ %4180, %4178 ], [ %4171, %4087 ]
  %4185 = phi float [ %4181, %4178 ], [ %4172, %4087 ]
  %4186 = fmul float %4185, %4175
  %4187 = fmul float %4184, %4175
  %4188 = fmul float %4183, %4175
  %4189 = fadd fast float %4188, %3863
  %4190 = fadd fast float %4187, %3864
  %4191 = fadd fast float %4186, %3865
  %4192 = icmp ne i32 %4088, 0
  %4193 = select i1 %4192, float 1.000000e+00, float 0.000000e+00
  %4194 = fmul fast float %4079, %4193
  %4195 = fsub fast float %4133, %3870
  %4196 = fsub fast float %4134, %3871
  %4197 = fsub fast float %4135, %3872
  %4198 = fmul fast float %4195, %4194
  %4199 = fmul fast float %4196, %4194
  %4200 = fmul fast float %4197, %4194
  %4201 = fadd fast float %4198, %3870
  %4202 = fadd fast float %4199, %3871
  %4203 = fadd fast float %4200, %3872
  %4204 = fsub fast float %4106, %3869
  %4205 = fmul fast float %4204, %4194
  %4206 = fadd fast float %4205, %3869
  %4207 = fmul fast float %4194, %3856
  %4208 = fsub fast float %3856, %4207
  %4209 = fmul fast float %4194, %3855
  %4210 = fsub fast float %3855, %4209
  %4211 = bitcast float %3924 to i32
  %4212 = lshr i32 %4211, 16
  %4213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4212)  ; LegacyF16ToF32(value)
  %4214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %4215 = extractvalue %dx.types.ResRet.i32 %4214, 0
  %4216 = and i32 %4215, 1
  %4217 = icmp eq i32 %4216, 0
  br i1 %4217, label %4218, label %4243

; <label>:4218                                    ; preds = %4182
  %4219 = fadd fast float %4106, 0xBFB99999A0000000
  %4220 = call float @dx.op.unary.f32(i32 7, float %4219)  ; Saturate(value)
  %4221 = fmul fast float %4220, 0x3FF1C71C80000000
  %4222 = fsub fast float 1.000000e+00, %4221
  %4223 = call float @dx.op.unary.f32(i32 7, float %4222)  ; Saturate(value)
  %4224 = fmul fast float %4223, %4133
  %4225 = fmul fast float %4223, %4134
  %4226 = fmul fast float %4223, %4135
  %4227 = call float @dx.op.unary.f32(i32 7, float %4224)  ; Saturate(value)
  %4228 = call float @dx.op.unary.f32(i32 7, float %4225)  ; Saturate(value)
  %4229 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4230 = call float @dx.op.binary.f32(i32 35, float %4228, float %4229)  ; FMax(a,b)
  %4231 = call float @dx.op.binary.f32(i32 35, float %4227, float %4230)  ; FMax(a,b)
  %4232 = fcmp fast ogt float %4231, 0.000000e+00
  %4233 = bitcast float %4231 to i32
  %4234 = sub nsw i32 2129859010, %4233
  %4235 = bitcast i32 %4234 to float
  %4236 = select i1 %4232, float %4235, float 0.000000e+00
  %4237 = fmul fast float %4227, %4213
  %4238 = fmul fast float %4228, %4213
  %4239 = fmul fast float %4229, %4213
  %4240 = fmul fast float %4237, %4236
  %4241 = fmul fast float %4238, %4236
  %4242 = fmul fast float %4239, %4236
  br label %4243

; <label>:4243                                    ; preds = %4218, %4182
  %4244 = phi float [ %4213, %4182 ], [ %4240, %4218 ]
  %4245 = phi float [ %4213, %4182 ], [ %4241, %4218 ]
  %4246 = phi float [ %4213, %4182 ], [ %4242, %4218 ]
  %4247 = fsub fast float %4244, %3857
  %4248 = fsub fast float %4245, %3858
  %4249 = fsub fast float %4246, %3859
  %4250 = fmul fast float %4247, %4194
  %4251 = fmul fast float %4248, %4194
  %4252 = fmul fast float %4249, %4194
  %4253 = fadd fast float %4250, %3857
  %4254 = fadd fast float %4251, %3858
  %4255 = fadd fast float %4252, %3859
  %4256 = fadd fast float %4079, %3868
  %4257 = call float @dx.op.unary.f32(i32 7, float %4256)  ; Saturate(value)
  %4258 = fsub fast float %4126, %3867
  %4259 = fmul fast float %4258, %4175
  %4260 = fadd fast float %4259, %3867
  %4261 = fsub fast float %4112, %3866
  %4262 = fmul fast float %4261, %4175
  %4263 = fadd fast float %4262, %3866
  %4264 = call float @dx.op.dot3.f32(i32 55, float %4133, float %4134, float %4135, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4265, 0
  %4267 = extractvalue %dx.types.CBufRet.f32 %4265, 1
  %4268 = fmul fast float %4267, %4264
  %4269 = fadd fast float %4268, %4266
  %4270 = call float @dx.op.unary.f32(i32 7, float %4269)  ; Saturate(value)
  %4271 = bitcast float %3918 to i32
  %4272 = and i32 %4271, 65535
  %4273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4272)  ; LegacyF16ToF32(value)
  %4274 = lshr i32 %4271, 16
  %4275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4274)  ; LegacyF16ToF32(value)
  %4276 = fcmp fast oge float %4273, 0.000000e+00
  %4277 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4278 = extractvalue %dx.types.CBufRet.f32 %4277, 0
  %4279 = select i1 %4276, float %4273, float %4278
  %4280 = fadd fast float %4279, %4275
  %4281 = fsub fast float %4270, %3854
  %4282 = fmul fast float %4281, %4079
  %4283 = fadd fast float %4282, %3854
  %4284 = fmul fast float %4280, %4079
  %4285 = call float @dx.op.binary.f32(i32 35, float %3853, float %4284)  ; FMax(a,b)
  %4286 = and i32 %3930, 16
  %4287 = icmp eq i32 %4286, 0
  br i1 %4287, label %4309, label %4288

; <label>:4288                                    ; preds = %4243
  %4289 = add i32 %3921, 0
  %4290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4289, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4291 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4290, %dx.types.Handle %4092, float %4020, float %4023, float undef, float undef, i32 0, i32 0, i32 undef, float %4025, float %4027, float undef, float %4029, float %4031, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4292 = extractvalue %dx.types.ResRet.f32 %4291, 0
  %4293 = extractvalue %dx.types.ResRet.f32 %4291, 1
  %4294 = extractvalue %dx.types.ResRet.f32 %4291, 2
  %4295 = and i32 %4211, 65535
  %4296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4295)  ; LegacyF16ToF32(value)
  %4297 = fmul fast float %4292, %3915
  %4298 = fmul fast float %4293, %3916
  %4299 = fmul fast float %4294, %3917
  %4300 = and i32 %3930, 16384
  %4301 = icmp ne i32 %4300, 0
  %4302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.f32 %4302, 0
  %4304 = select i1 %4301, float %4303, float 1.000000e+00
  %4305 = fmul fast float %4304, %4296
  %4306 = fmul fast float %4297, %4305
  %4307 = fmul fast float %4298, %4305
  %4308 = fmul fast float %4299, %4305
  br label %4309

; <label>:4309                                    ; preds = %4288, %4243
  %4310 = phi float [ %4306, %4288 ], [ 0.000000e+00, %4243 ]
  %4311 = phi float [ %4307, %4288 ], [ 0.000000e+00, %4243 ]
  %4312 = phi float [ %4308, %4288 ], [ 0.000000e+00, %4243 ]
  %4313 = fsub fast float %4310, %3860
  %4314 = fsub fast float %4311, %3861
  %4315 = fsub fast float %4312, %3862
  %4316 = fmul fast float %4313, %4079
  %4317 = fmul fast float %4314, %4079
  %4318 = fmul fast float %4315, %4079
  %4319 = fadd fast float %4316, %3860
  %4320 = fadd fast float %4317, %3861
  %4321 = fadd fast float %4318, %3862
  br label %3979

; <label>:4322                                    ; preds = %3979
  br label %4323

; <label>:4323                                    ; preds = %4322, %3796
  %4324 = phi float [ 0.000000e+00, %3796 ], [ %3980, %4322 ]
  %4325 = phi float [ %3765, %3796 ], [ %3981, %4322 ]
  %4326 = phi float [ %3763, %3796 ], [ %3982, %4322 ]
  %4327 = phi float [ 0.000000e+00, %3796 ], [ %3983, %4322 ]
  %4328 = phi float [ 0.000000e+00, %3796 ], [ %3984, %4322 ]
  %4329 = phi float [ %3756, %3796 ], [ %3985, %4322 ]
  %4330 = phi float [ %3757, %3796 ], [ %3986, %4322 ]
  %4331 = phi float [ %3758, %3796 ], [ %3987, %4322 ]
  %4332 = phi float [ %3753, %3796 ], [ %3988, %4322 ]
  %4333 = phi float [ %3754, %3796 ], [ %3989, %4322 ]
  %4334 = phi float [ %3755, %3796 ], [ %3990, %4322 ]
  %4335 = phi float [ %3791, %3796 ], [ %3991, %4322 ]
  %4336 = phi float [ %3792, %3796 ], [ %3992, %4322 ]
  %4337 = phi float [ %3793, %3796 ], [ %3993, %4322 ]
  %4338 = phi float [ %3761, %3796 ], [ %3994, %4322 ]
  %4339 = phi float [ %3760, %3796 ], [ %3995, %4322 ]
  %4340 = phi float [ 0.000000e+00, %3796 ], [ %3996, %4322 ]
  %4341 = phi float [ %3759, %3796 ], [ %3997, %4322 ]
  %4342 = phi float [ %3750, %3796 ], [ %3998, %4322 ]
  %4343 = phi float [ %3751, %3796 ], [ %3999, %4322 ]
  %4344 = phi float [ %3752, %3796 ], [ %4000, %4322 ]
  %4345 = call float @dx.op.dot3.f32(i32 55, float %4335, float %4336, float %4337, float %4335, float %4336, float %4337)  ; Dot3(ax,ay,az,bx,by,bz)
  %4346 = call float @dx.op.unary.f32(i32 25, float %4345)  ; Rsqrt(value)
  %4347 = fmul fast float %4346, %4335
  %4348 = fmul fast float %4346, %4336
  %4349 = fmul fast float %4346, %4337
  %4350 = fadd fast float %4340, %924
  %4351 = call float @dx.op.unary.f32(i32 7, float %4350)  ; Saturate(value)
  %4352 = call float @dx.op.dot3.f32(i32 55, float %4347, float %4348, float %4349, float %4347, float %4348, float %4349)  ; Dot3(ax,ay,az,bx,by,bz)
  %4353 = call float @dx.op.unary.f32(i32 25, float %4352)  ; Rsqrt(value)
  %4354 = fmul fast float %4353, %4347
  %4355 = fmul fast float %4353, %4348
  %4356 = fmul fast float %4353, %4349
  br label %4357

; <label>:4357                                    ; preds = %4323, %3747
  %4358 = phi float [ %4354, %4323 ], [ %3791, %3747 ]
  %4359 = phi float [ %4355, %4323 ], [ %3792, %3747 ]
  %4360 = phi float [ %4356, %4323 ], [ %3793, %3747 ]
  %4361 = phi float [ %4332, %4323 ], [ %3753, %3747 ]
  %4362 = phi float [ %4333, %4323 ], [ %3754, %3747 ]
  %4363 = phi float [ %4334, %4323 ], [ %3755, %3747 ]
  %4364 = phi float [ %4329, %4323 ], [ %3756, %3747 ]
  %4365 = phi float [ %4330, %4323 ], [ %3757, %3747 ]
  %4366 = phi float [ %4331, %4323 ], [ %3758, %3747 ]
  %4367 = phi float [ %4342, %4323 ], [ %3750, %3747 ]
  %4368 = phi float [ %4343, %4323 ], [ %3751, %3747 ]
  %4369 = phi float [ %4344, %4323 ], [ %3752, %3747 ]
  %4370 = phi float [ %4341, %4323 ], [ %3759, %3747 ]
  %4371 = phi float [ %4351, %4323 ], [ %924, %3747 ]
  %4372 = phi float [ %4339, %4323 ], [ %3760, %3747 ]
  %4373 = phi float [ %4338, %4323 ], [ %3761, %3747 ]
  %4374 = phi float [ %4328, %4323 ], [ 0.000000e+00, %3747 ]
  %4375 = phi float [ %4327, %4323 ], [ 0.000000e+00, %3747 ]
  %4376 = phi float [ %4324, %4323 ], [ 0.000000e+00, %3747 ]
  %4377 = phi float [ %4325, %4323 ], [ %3765, %3747 ]
  %4378 = phi float [ %4326, %4323 ], [ %3763, %3747 ]
  %4379 = fadd fast float %4370, 0xBFB99999A0000000
  %4380 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4381 = fmul fast float %4380, 0x3FF1C71C80000000
  %4382 = call float @dx.op.binary.f32(i32 36, float %4370, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4383 = fsub fast float 1.000000e+00, %4381
  %4384 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4385 = fmul fast float %4384, %4367
  %4386 = fmul fast float %4384, %4368
  %4387 = fmul fast float %4384, %4369
  %4388 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  %4389 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4390 = call float @dx.op.unary.f32(i32 7, float %4387)  ; Saturate(value)
  %4391 = fmul fast float %4381, %4367
  %4392 = fmul fast float %4381, %4368
  %4393 = fmul fast float %4381, %4369
  %4394 = fadd fast float %4391, %4382
  %4395 = fadd fast float %4392, %4382
  %4396 = fadd fast float %4393, %4382
  %4397 = call float @dx.op.unary.f32(i32 7, float %4394)  ; Saturate(value)
  %4398 = call float @dx.op.unary.f32(i32 7, float %4395)  ; Saturate(value)
  %4399 = call float @dx.op.unary.f32(i32 7, float %4396)  ; Saturate(value)
  %4400 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %332, i32 undef)  ; BufferLoad(srv,index,wot)
  %4402 = extractvalue %dx.types.ResRet.i32 %4401, 0
  %4403 = and i32 %4402, 1
  %4404 = icmp eq i32 %4403, 0
  br i1 %4404, label %4419, label %4405

; <label>:4405                                    ; preds = %4357
  %4406 = call float @dx.op.binary.f32(i32 35, float %4389, float %4390)  ; FMax(a,b)
  %4407 = call float @dx.op.binary.f32(i32 35, float %4388, float %4406)  ; FMax(a,b)
  %4408 = fcmp fast ogt float %4407, 0.000000e+00
  %4409 = bitcast float %4407 to i32
  %4410 = sub nsw i32 2129859010, %4409
  %4411 = bitcast i32 %4410 to float
  %4412 = select i1 %4408, float %4411, float 0.000000e+00
  %4413 = fmul fast float %4388, %4364
  %4414 = fmul fast float %4389, %4365
  %4415 = fmul fast float %4390, %4366
  %4416 = fmul fast float %4413, %4412
  %4417 = fmul fast float %4414, %4412
  %4418 = fmul fast float %4415, %4412
  br label %4419

; <label>:4419                                    ; preds = %4405, %4357
  %4420 = phi float [ %4416, %4405 ], [ %4364, %4357 ]
  %4421 = phi float [ %4417, %4405 ], [ %4365, %4357 ]
  %4422 = phi float [ %4418, %4405 ], [ %4366, %4357 ]
  %4423 = fadd fast float %4388, 0xBFD51EB860000000
  %4424 = fadd fast float %4389, 0xBFD51EB860000000
  %4425 = fadd fast float %4390, 0xBFD51EB860000000
  %4426 = fmul fast float %4423, %4423
  %4427 = fmul fast float %4424, %4424
  %4428 = fmul fast float %4425, %4425
  %4429 = fmul fast float %4426, %4426
  %4430 = fmul fast float %4429, 1.000000e+02
  %4431 = fmul fast float %4427, %4427
  %4432 = fmul fast float %4431, 1.000000e+02
  %4433 = fmul fast float %4428, %4428
  %4434 = fmul fast float %4433, 1.000000e+02
  %4435 = fadd fast float %4430, 3.500000e+00
  %4436 = fadd fast float %4432, 3.500000e+00
  %4437 = fadd fast float %4434, 3.500000e+00
  %4438 = call float @dx.op.binary.f32(i32 35, float %4420, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4439 = call float @dx.op.binary.f32(i32 35, float %4421, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4440 = call float @dx.op.binary.f32(i32 35, float %4422, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4441 = fdiv fast float %4435, %4438
  %4442 = fdiv fast float %4436, %4439
  %4443 = fdiv fast float %4437, %4440
  %4444 = fmul fast float %3762, 0xBFF7154760000000
  %4445 = fmul fast float %4444, %4441
  %4446 = call float @dx.op.unary.f32(i32 21, float %4445)  ; Exp(value)
  %4447 = fmul fast float %4446, 2.500000e-01
  %4448 = fmul fast float %3762, 0xBFDEC709E0000000
  %4449 = fmul fast float %4448, %4441
  %4450 = call float @dx.op.unary.f32(i32 21, float %4449)  ; Exp(value)
  %4451 = fmul fast float %4450, 7.500000e-01
  %4452 = fmul fast float %4444, %4442
  %4453 = call float @dx.op.unary.f32(i32 21, float %4452)  ; Exp(value)
  %4454 = fmul fast float %4453, 2.500000e-01
  %4455 = fmul fast float %4448, %4442
  %4456 = call float @dx.op.unary.f32(i32 21, float %4455)  ; Exp(value)
  %4457 = fmul fast float %4456, 7.500000e-01
  %4458 = fmul fast float %4444, %4443
  %4459 = call float @dx.op.unary.f32(i32 21, float %4458)  ; Exp(value)
  %4460 = fmul fast float %4459, 2.500000e-01
  %4461 = fmul fast float %4448, %4443
  %4462 = call float @dx.op.unary.f32(i32 21, float %4461)  ; Exp(value)
  %4463 = fmul fast float %4462, 7.500000e-01
  %4464 = fadd fast float %4447, %4451
  %4465 = fadd fast float %4454, %4457
  %4466 = fadd fast float %4460, %4463
  %4467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.i32 %4467, 3
  %4469 = and i32 %4468, 8
  %4470 = icmp ne i32 %4469, 0
  %4471 = call float @dx.op.binary.f32(i32 35, float %4388, float %4367)  ; FMax(a,b)
  %4472 = call float @dx.op.binary.f32(i32 35, float %4389, float %4367)  ; FMax(a,b)
  %4473 = call float @dx.op.binary.f32(i32 35, float %4390, float %4367)  ; FMax(a,b)
  %4474 = call float @dx.op.dot3.f32(i32 55, float %4388, float %4389, float %4390, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4475 = select i1 %163, float %4367, float %4388
  %4476 = select i1 %163, float %4474, float %4389
  %4477 = select i1 %163, float 1.000000e+00, float %4390
  %4478 = select i1 %4470, float %4471, float %4475
  %4479 = select i1 %4470, float %4472, float %4476
  %4480 = select i1 %4470, float %4473, float %4477
  %4481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4482 = extractvalue %dx.types.CBufRet.f32 %4481, 0
  %4483 = extractvalue %dx.types.CBufRet.f32 %4481, 1
  %4484 = extractvalue %dx.types.CBufRet.f32 %4481, 2
  %4485 = fadd fast float %4482, %121
  %4486 = fadd fast float %4483, %122
  %4487 = fadd fast float %4484, %123
  %4488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4489 = extractvalue %dx.types.CBufRet.f32 %4488, 0
  %4490 = extractvalue %dx.types.CBufRet.f32 %4488, 1
  %4491 = fsub fast float %4485, %4489
  %4492 = fsub fast float %4486, %4490
  %4493 = fmul fast float %4491, %4491
  %4494 = fmul fast float %4492, %4492
  %4495 = fadd fast float %4493, %4494
  %4496 = call float @dx.op.unary.f32(i32 24, float %4495)  ; Sqrt(value)
  %4497 = extractvalue %dx.types.CBufRet.f32 %4488, 2
  %4498 = fcmp fast olt float %4496, %4497
  br i1 %4498, label %4499, label %4566

; <label>:4499                                    ; preds = %4419
  %4500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4501 = extractvalue %dx.types.CBufRet.f32 %4500, 0
  %4502 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4502, 0
  %4504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4505 = extractvalue %dx.types.CBufRet.f32 %4504, 0
  %4506 = extractvalue %dx.types.CBufRet.f32 %4500, 1
  %4507 = extractvalue %dx.types.CBufRet.f32 %4502, 1
  %4508 = extractvalue %dx.types.CBufRet.f32 %4504, 1
  %4509 = extractvalue %dx.types.CBufRet.f32 %4500, 3
  %4510 = extractvalue %dx.types.CBufRet.f32 %4502, 3
  %4511 = extractvalue %dx.types.CBufRet.f32 %4504, 3
  %4512 = fadd fast float %4509, %4485
  %4513 = fadd fast float %4510, %4486
  %4514 = fadd fast float %4511, %4487
  %4515 = fmul fast float %4512, %4501
  %4516 = call float @dx.op.tertiary.f32(i32 46, float %4513, float %4503, float %4515)  ; FMad(a,b,c)
  %4517 = call float @dx.op.tertiary.f32(i32 46, float %4514, float %4505, float %4516)  ; FMad(a,b,c)
  %4518 = fmul fast float %4512, %4506
  %4519 = call float @dx.op.tertiary.f32(i32 46, float %4513, float %4507, float %4518)  ; FMad(a,b,c)
  %4520 = call float @dx.op.tertiary.f32(i32 46, float %4514, float %4508, float %4519)  ; FMad(a,b,c)
  %4521 = fsub fast float %4517, %4509
  %4522 = fsub fast float %4520, %4510
  %4523 = fsub fast float %4521, %4489
  %4524 = fadd fast float %4523, %4497
  %4525 = fsub fast float %4522, %4490
  %4526 = fadd fast float %4525, %4497
  %4527 = extractvalue %dx.types.CBufRet.f32 %4488, 3
  %4528 = fmul fast float %4524, %4527
  %4529 = fmul fast float %4526, %4527
  %4530 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4531 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4532 = fsub fast float 1.000000e+00, %4530
  %4533 = fsub fast float 1.000000e+00, %4531
  %4534 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %4532, float %4533, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 0
  %4536 = fcmp fast ugt float %4535, 0.000000e+00
  br i1 %4536, label %4537, label %4840

; <label>:4537                                    ; preds = %4499
  %4538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4539 = extractvalue %dx.types.CBufRet.f32 %4538, 2
  %4540 = fmul fast float %4539, %4535
  %4541 = extractvalue %dx.types.CBufRet.f32 %4538, 3
  %4542 = fadd fast float %4541, %4540
  %4543 = extractvalue %dx.types.CBufRet.f32 %4504, 2
  %4544 = fadd fast float %4542, %4511
  %4545 = fmul fast float %4517, %4505
  %4546 = call float @dx.op.tertiary.f32(i32 46, float %4520, float %4508, float %4545)  ; FMad(a,b,c)
  %4547 = call float @dx.op.tertiary.f32(i32 46, float %4544, float %4543, float %4546)  ; FMad(a,b,c)
  %4548 = fsub fast float %4547, %4511
  %4549 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4550 = extractvalue %dx.types.CBufRet.f32 %4549, 2
  %4551 = fsub fast float %4548, %4550
  %4552 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %4532, float %4533, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4553 = extractvalue %dx.types.ResRet.f32 %4552, 0
  %4554 = extractvalue %dx.types.ResRet.f32 %4552, 1
  %4555 = extractvalue %dx.types.ResRet.f32 %4552, 2
  %4556 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %4532, float %4533, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4557 = extractvalue %dx.types.ResRet.f32 %4556, 0
  %4558 = extractvalue %dx.types.ResRet.f32 %4556, 1
  %4559 = extractvalue %dx.types.ResRet.f32 %4556, 2
  %4560 = fadd fast float %4557, %4553
  %4561 = fmul fast float %4560, 0x3F847AE140000000
  %4562 = fadd fast float %4558, %4554
  %4563 = fmul fast float %4562, 0x3F847AE140000000
  %4564 = fadd fast float %4559, %4555
  %4565 = fmul fast float %4564, 0x3F847AE140000000
  br label %4840

; <label>:4566                                    ; preds = %4419
  %4567 = and i32 %139, 1
  %4568 = icmp eq i32 %4567, 0
  br i1 %4568, label %4840, label %4569

; <label>:4569                                    ; preds = %4566
  %4570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4571 = extractvalue %dx.types.CBufRet.f32 %4570, 0
  %4572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.f32 %4572, 0
  %4574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4575 = extractvalue %dx.types.CBufRet.f32 %4574, 0
  %4576 = extractvalue %dx.types.CBufRet.f32 %4570, 1
  %4577 = extractvalue %dx.types.CBufRet.f32 %4572, 1
  %4578 = extractvalue %dx.types.CBufRet.f32 %4574, 1
  %4579 = extractvalue %dx.types.CBufRet.f32 %4570, 3
  %4580 = extractvalue %dx.types.CBufRet.f32 %4572, 3
  %4581 = extractvalue %dx.types.CBufRet.f32 %4574, 3
  %4582 = fadd fast float %4579, %4485
  %4583 = fadd fast float %4580, %4486
  %4584 = fadd fast float %4581, %4487
  %4585 = fmul fast float %4582, %4571
  %4586 = call float @dx.op.tertiary.f32(i32 46, float %4583, float %4573, float %4585)  ; FMad(a,b,c)
  %4587 = call float @dx.op.tertiary.f32(i32 46, float %4584, float %4575, float %4586)  ; FMad(a,b,c)
  %4588 = fmul fast float %4582, %4576
  %4589 = call float @dx.op.tertiary.f32(i32 46, float %4583, float %4577, float %4588)  ; FMad(a,b,c)
  %4590 = call float @dx.op.tertiary.f32(i32 46, float %4584, float %4578, float %4589)  ; FMad(a,b,c)
  %4591 = fsub fast float %4587, %4579
  %4592 = fsub fast float %4590, %4580
  %4593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4594 = extractvalue %dx.types.CBufRet.f32 %4593, 0
  %4595 = extractvalue %dx.types.CBufRet.f32 %4593, 1
  %4596 = extractvalue %dx.types.CBufRet.f32 %4593, 2
  %4597 = extractvalue %dx.types.CBufRet.f32 %4593, 3
  %4598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.f32 %4598, 3
  %4600 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4601 = extractvalue %dx.types.CBufRet.i32 %4600, 0
  %4602 = extractvalue %dx.types.CBufRet.i32 %4600, 1
  %4603 = udiv i32 %4602, %4601
  %4604 = fsub fast float %4591, %4594
  %4605 = fsub fast float %4592, %4595
  %4606 = call float @dx.op.binary.f32(i32 35, float %4604, float 0.000000e+00)  ; FMax(a,b)
  %4607 = call float @dx.op.binary.f32(i32 35, float %4605, float 0.000000e+00)  ; FMax(a,b)
  %4608 = call float @dx.op.binary.f32(i32 36, float %4606, float %4596)  ; FMin(a,b)
  %4609 = call float @dx.op.binary.f32(i32 36, float %4607, float %4597)  ; FMin(a,b)
  %4610 = add i32 %4601, -1
  %4611 = add i32 %4603, -1
  %4612 = fmul fast float %4608, %4599
  %4613 = fmul fast float %4609, %4599
  %4614 = fptoui float %4612 to i32
  %4615 = fptoui float %4613 to i32
  %4616 = call i32 @dx.op.binary.i32(i32 40, i32 %4614, i32 %4610)  ; UMin(a,b)
  %4617 = call i32 @dx.op.binary.i32(i32 40, i32 %4615, i32 %4611)  ; UMin(a,b)
  %4618 = mul i32 %4617, %4601
  %4619 = add i32 %4618, %4616
  %4620 = shl i32 %4619, 2
  %4621 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4620, i32 undef)  ; BufferLoad(srv,index,wot)
  %4622 = extractvalue %dx.types.ResRet.i32 %4621, 0
  %4623 = icmp eq i32 %4622, -1
  br i1 %4623, label %4840, label %4624

; <label>:4624                                    ; preds = %4569
  %4625 = mul i32 %4622, 148
  %4626 = add i32 %4625, 4
  %4627 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4626, i32 undef)  ; BufferLoad(srv,index,wot)
  %4628 = extractvalue %dx.types.ResRet.f32 %4627, 0
  %4629 = add i32 %4625, 8
  %4630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4629, i32 undef)  ; BufferLoad(srv,index,wot)
  %4631 = extractvalue %dx.types.ResRet.f32 %4630, 0
  %4632 = add i32 %4625, 36
  %4633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4632, i32 undef)  ; BufferLoad(srv,index,wot)
  %4634 = extractvalue %dx.types.ResRet.f32 %4633, 0
  %4635 = add i32 %4625, 60
  %4636 = add i32 %4625, 92
  %4637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4636, i32 undef)  ; BufferLoad(srv,index,wot)
  %4638 = extractvalue %dx.types.ResRet.i32 %4637, 0
  %4639 = add i32 %4625, 116
  %4640 = fsub fast float %4591, %4628
  %4641 = fsub fast float %4592, %4631
  %4642 = fmul fast float %4599, %4640
  %4643 = fmul fast float %4599, %4641
  %4644 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4645 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4646 = fsub fast float 1.000000e+00, %4645
  %4647 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4648 = extractvalue %dx.types.CBufRet.f32 %4647, 2
  %4649 = call float @dx.op.unary.f32(i32 83, float %4644)  ; DerivCoarseX(value)
  %4650 = call float @dx.op.unary.f32(i32 83, float %4646)  ; DerivCoarseX(value)
  %4651 = call float @dx.op.unary.f32(i32 84, float %4644)  ; DerivCoarseY(value)
  %4652 = call float @dx.op.unary.f32(i32 84, float %4646)  ; DerivCoarseY(value)
  %4653 = fmul fast float %4649, %4648
  %4654 = fmul fast float %4650, %4648
  %4655 = fmul fast float %4651, %4648
  %4656 = fmul fast float %4652, %4648
  %4657 = call float @dx.op.dot2.f32(i32 54, float %4655, float %4656, float %4655, float %4656)  ; Dot2(ax,ay,bx,by)
  %4658 = call float @dx.op.dot2.f32(i32 54, float %4653, float %4654, float %4653, float %4654)  ; Dot2(ax,ay,bx,by)
  %4659 = call float @dx.op.binary.f32(i32 35, float %4658, float %4657)  ; FMax(a,b)
  %4660 = call float @dx.op.unary.f32(i32 23, float %4659)  ; Log(value)
  %4661 = fmul fast float %4660, 5.000000e-01
  %4662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4663 = extractvalue %dx.types.CBufRet.f32 %4662, 1
  %4664 = fadd fast float %4663, %4661
  %4665 = call float @dx.op.binary.f32(i32 35, float %4664, float 0.000000e+00)  ; FMax(a,b)
  %4666 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4667 = extractvalue %dx.types.CBufRet.f32 %4666, 3
  %4668 = fadd fast float %4667, %4665
  %4669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4670 = extractvalue %dx.types.CBufRet.f32 %4669, 3
  %4671 = fadd fast float %4668, %4670
  %4672 = add i32 %4638, 0
  %4673 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4672, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4674 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4673, i32 0)  ; GetDimensions(handle,mipLevel)
  %4675 = extractvalue %dx.types.Dimensions %4674, 0
  %4676 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4675)  ; FirstbitLo(value)
  %4677 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4678 = extractvalue %dx.types.CBufRet.i32 %4677, 1
  %4679 = sub nsw i32 %4678, %4676
  %4680 = sitofp i32 %4679 to float
  %4681 = fsub fast float %4671, %4680
  %4682 = call float @dx.op.binary.f32(i32 35, float %4681, float 0.000000e+00)  ; FMax(a,b)
  %4683 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4673, %dx.types.Handle %32, float %4644, float %4646, float %4634, float undef, i32 0, i32 0, i32 undef, float %4682)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4684 = extractvalue %dx.types.ResRet.f32 %4683, 0
  %4685 = fcmp ule float %4684, 0x3FE0101020000000
  %4686 = extractvalue %dx.types.CBufRet.i32 %4677, 0
  %4687 = and i32 %4686, 128
  %4688 = icmp ne i32 %4687, 0
  %4689 = and i1 %4685, %4688
  br i1 %4689, label %4840, label %4690

; <label>:4690                                    ; preds = %4624
  %4691 = add i32 %4625, 20
  %4692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4691, i32 undef)  ; BufferLoad(srv,index,wot)
  %4693 = extractvalue %dx.types.ResRet.f32 %4692, 0
  %4694 = add i32 %4625, 24
  %4695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4694, i32 undef)  ; BufferLoad(srv,index,wot)
  %4696 = extractvalue %dx.types.ResRet.f32 %4695, 0
  %4697 = add i32 %4625, 40
  %4698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4697, i32 undef)  ; BufferLoad(srv,index,wot)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = add i32 %4625, 96
  %4701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4700, i32 undef)  ; BufferLoad(srv,index,wot)
  %4702 = extractvalue %dx.types.ResRet.i32 %4701, 0
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 2
  %4705 = fmul fast float %4704, %4644
  %4706 = fmul fast float %4704, %4646
  %4707 = extractvalue %dx.types.CBufRet.f32 %4703, 3
  %4708 = fadd fast float %4705, %4707
  %4709 = fadd fast float %4706, %4707
  %4710 = add i32 %4702, 0
  %4711 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4710, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4712 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4711, i32 0)  ; GetDimensions(handle,mipLevel)
  %4713 = extractvalue %dx.types.Dimensions %4712, 0
  %4714 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4713)  ; FirstbitLo(value)
  %4715 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4716 = extractvalue %dx.types.CBufRet.i32 %4715, 1
  %4717 = sub nsw i32 %4716, %4714
  %4718 = sitofp i32 %4717 to float
  %4719 = fsub fast float %4668, %4718
  %4720 = call float @dx.op.binary.f32(i32 35, float %4719, float 0.000000e+00)  ; FMax(a,b)
  %4721 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4711, %dx.types.Handle %32, float %4708, float %4709, float %4699, float undef, i32 0, i32 0, i32 undef, float %4720)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4722 = extractvalue %dx.types.ResRet.f32 %4721, 0
  %4723 = fmul fast float %4722, %4693
  %4724 = fadd fast float %4723, %4696
  %4725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4726 = extractvalue %dx.types.CBufRet.f32 %4725, 0
  %4727 = extractvalue %dx.types.CBufRet.f32 %4725, 1
  %4728 = extractvalue %dx.types.CBufRet.f32 %4725, 2
  %4729 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4730 = extractvalue %dx.types.CBufRet.f32 %4729, 3
  %4731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4732 = extractvalue %dx.types.CBufRet.f32 %4731, 3
  %4733 = extractvalue %dx.types.CBufRet.f32 %4725, 3
  %4734 = fadd fast float %4730, %4591
  %4735 = fadd fast float %4732, %4592
  %4736 = fadd fast float %4724, %4733
  %4737 = fmul fast float %4734, %4726
  %4738 = call float @dx.op.tertiary.f32(i32 46, float %4735, float %4727, float %4737)  ; FMad(a,b,c)
  %4739 = call float @dx.op.tertiary.f32(i32 46, float %4736, float %4728, float %4738)  ; FMad(a,b,c)
  %4740 = fsub fast float %4739, %4733
  %4741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4742 = extractvalue %dx.types.CBufRet.f32 %4741, 2
  %4743 = fsub fast float %4740, %4742
  %4744 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.i32 %4744, 0
  %4746 = call i32 @dx.op.binary.i32(i32 40, i32 %4622, i32 %4745)  ; UMin(a,b)
  %4747 = mul i32 %4746, 36
  %4748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4747, i32 undef)  ; BufferLoad(srv,index,wot)
  %4749 = extractvalue %dx.types.ResRet.i32 %4748, 0
  %4750 = add i32 %4747, 4
  %4751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4752 = extractvalue %dx.types.CBufRet.f32 %4751, 0
  %4753 = fmul fast float %4752, %4644
  %4754 = fmul fast float %4752, %4646
  %4755 = extractvalue %dx.types.CBufRet.f32 %4751, 1
  %4756 = fadd fast float %4753, %4755
  %4757 = fadd fast float %4754, %4755
  %4758 = icmp eq i32 %4749, 0
  br i1 %4758, label %4827, label %4759

; <label>:4759                                    ; preds = %4690
  br label %4760

; <label>:4760                                    ; preds = %4817, %4759
  %4761 = phi float [ %4818, %4817 ], [ 0.000000e+00, %4759 ]
  %4762 = phi float [ %4819, %4817 ], [ 0.000000e+00, %4759 ]
  %4763 = phi float [ %4820, %4817 ], [ 0.000000e+00, %4759 ]
  %4764 = phi float [ %4821, %4817 ], [ 0.000000e+00, %4759 ]
  %4765 = phi float [ %4822, %4817 ], [ 0.000000e+00, %4759 ]
  %4766 = phi float [ %4823, %4817 ], [ 0.000000e+00, %4759 ]
  %4767 = phi i32 [ %4824, %4817 ], [ 0, %4759 ]
  %4768 = shl i32 %4767, 2
  %4769 = add i32 %4635, %4768
  %4770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4769, i32 undef)  ; BufferLoad(srv,index,wot)
  %4771 = extractvalue %dx.types.ResRet.f32 %4770, 0
  %4772 = add i32 %4639, %4768
  %4773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4772, i32 undef)  ; BufferLoad(srv,index,wot)
  %4774 = extractvalue %dx.types.ResRet.i32 %4773, 0
  %4775 = add i32 %4774, 0
  %4776 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4775, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4777 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4776, i32 0)  ; GetDimensions(handle,mipLevel)
  %4778 = extractvalue %dx.types.Dimensions %4777, 0
  %4779 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4778)  ; FirstbitLo(value)
  %4780 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4781 = extractvalue %dx.types.CBufRet.i32 %4780, 1
  %4782 = sub nsw i32 %4781, %4779
  %4783 = sitofp i32 %4782 to float
  %4784 = fsub fast float %4668, %4783
  %4785 = call float @dx.op.binary.f32(i32 35, float %4784, float 0.000000e+00)  ; FMax(a,b)
  %4786 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4776, %dx.types.Handle %32, float %4756, float %4757, float %4771, float undef, i32 0, i32 0, i32 undef, float %4785)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4787 = extractvalue %dx.types.ResRet.f32 %4786, 0
  %4788 = fcmp fast ogt float %4787, 0.000000e+00
  br i1 %4788, label %4789, label %4817

; <label>:4789                                    ; preds = %4760
  %4790 = add i32 %4750, %4768
  %4791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4790, i32 undef)  ; BufferLoad(srv,index,wot)
  %4792 = extractvalue %dx.types.ResRet.i32 %4791, 0
  %4793 = and i32 %4792, 32767
  %4794 = mul nuw nsw i32 %4793, 928
  %4795 = add nuw nsw i32 %4794, 48
  %4796 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4795, i32 undef)  ; BufferLoad(srv,index,wot)
  %4797 = extractvalue %dx.types.ResRet.f32 %4796, 0
  %4798 = extractvalue %dx.types.ResRet.f32 %4796, 1
  %4799 = extractvalue %dx.types.ResRet.f32 %4796, 2
  %4800 = add nuw nsw i32 %4794, 60
  %4801 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4800, i32 undef)  ; BufferLoad(srv,index,wot)
  %4802 = extractvalue %dx.types.ResRet.f32 %4801, 0
  %4803 = extractvalue %dx.types.ResRet.f32 %4801, 1
  %4804 = extractvalue %dx.types.ResRet.f32 %4801, 2
  %4805 = fmul fast float %4797, %4787
  %4806 = fmul fast float %4798, %4787
  %4807 = fmul fast float %4799, %4787
  %4808 = fadd fast float %4805, %4761
  %4809 = fadd fast float %4806, %4762
  %4810 = fadd fast float %4807, %4763
  %4811 = fmul fast float %4802, %4787
  %4812 = fmul fast float %4803, %4787
  %4813 = fmul fast float %4804, %4787
  %4814 = fadd fast float %4811, %4764
  %4815 = fadd fast float %4812, %4765
  %4816 = fadd fast float %4813, %4766
  br label %4817

; <label>:4817                                    ; preds = %4789, %4760
  %4818 = phi float [ %4808, %4789 ], [ %4761, %4760 ]
  %4819 = phi float [ %4809, %4789 ], [ %4762, %4760 ]
  %4820 = phi float [ %4810, %4789 ], [ %4763, %4760 ]
  %4821 = phi float [ %4814, %4789 ], [ %4764, %4760 ]
  %4822 = phi float [ %4815, %4789 ], [ %4765, %4760 ]
  %4823 = phi float [ %4816, %4789 ], [ %4766, %4760 ]
  %4824 = add nuw i32 %4767, 1
  %4825 = icmp eq i32 %4824, %4749
  br i1 %4825, label %4826, label %4760

; <label>:4826                                    ; preds = %4817
  br label %4827

; <label>:4827                                    ; preds = %4826, %4690
  %4828 = phi float [ 0.000000e+00, %4690 ], [ %4818, %4826 ]
  %4829 = phi float [ 0.000000e+00, %4690 ], [ %4819, %4826 ]
  %4830 = phi float [ 0.000000e+00, %4690 ], [ %4820, %4826 ]
  %4831 = phi float [ 0.000000e+00, %4690 ], [ %4821, %4826 ]
  %4832 = phi float [ 0.000000e+00, %4690 ], [ %4822, %4826 ]
  %4833 = phi float [ 0.000000e+00, %4690 ], [ %4823, %4826 ]
  %4834 = fadd fast float %4831, %4828
  %4835 = fmul fast float %4834, 0x3F847AE140000000
  %4836 = fadd fast float %4832, %4829
  %4837 = fmul fast float %4836, 0x3F847AE140000000
  %4838 = fadd fast float %4833, %4830
  %4839 = fmul fast float %4838, 0x3F847AE140000000
  br label %4840

; <label>:4840                                    ; preds = %4827, %4624, %4569, %4566, %4537, %4499
  %4841 = phi float [ %4551, %4537 ], [ -1.310720e+05, %4499 ], [ %4743, %4827 ], [ -1.310720e+05, %4569 ], [ -1.310720e+05, %4624 ], [ -1.310720e+05, %4566 ]
  %4842 = phi float [ %4561, %4537 ], [ 0.000000e+00, %4499 ], [ %4835, %4827 ], [ 0.000000e+00, %4569 ], [ 0.000000e+00, %4624 ], [ 0.000000e+00, %4566 ]
  %4843 = phi float [ %4563, %4537 ], [ 0.000000e+00, %4499 ], [ %4837, %4827 ], [ 0.000000e+00, %4569 ], [ 0.000000e+00, %4624 ], [ 0.000000e+00, %4566 ]
  %4844 = phi float [ %4565, %4537 ], [ 0.000000e+00, %4499 ], [ %4839, %4827 ], [ 0.000000e+00, %4569 ], [ 0.000000e+00, %4624 ], [ 0.000000e+00, %4566 ]
  %4845 = phi i1 [ true, %4537 ], [ false, %4499 ], [ true, %4827 ], [ false, %4569 ], [ false, %4624 ], [ false, %4566 ]
  %4846 = and i32 %139, 3
  %4847 = icmp eq i32 %4846, 1
  %4848 = select i1 %4847, float 1.000000e+00, float 0.000000e+00
  %4849 = fsub fast float %4841, %123
  %4850 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4851 = select i1 %4845, float %4850, float 1.000000e+00
  %4852 = fmul fast float %4851, %4848
  %4853 = icmp eq i32 %4846, 3
  %4854 = select i1 %4853, float 1.000000e+00, float %4852
  %4855 = call float @dx.op.binary.f32(i32 35, float %4376, float %4854)  ; FMax(a,b)
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4857 = fcmp fast une float %4856, 0.000000e+00
  %4858 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = call float @dx.op.unary.f32(i32 25, float %4858)  ; Rsqrt(value)
  br i1 %4857, label %4867, label %4860

; <label>:4860                                    ; preds = %4840
  %4861 = fmul fast float %4859, %121
  %4862 = fmul fast float %4859, %122
  %4863 = fmul fast float %4859, %123
  %4864 = fsub fast float -0.000000e+00, %4861
  %4865 = fsub fast float -0.000000e+00, %4862
  %4866 = fsub fast float -0.000000e+00, %4863
  br label %5035

; <label>:4867                                    ; preds = %4840
  %4868 = fmul fast float %121, %4859
  %4869 = fsub fast float -0.000000e+00, %4868
  %4870 = fmul fast float %122, %4859
  %4871 = fsub fast float -0.000000e+00, %4870
  %4872 = fmul fast float %123, %4859
  %4873 = fsub fast float -0.000000e+00, %4872
  %4874 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4871, float %4873, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = fmul fast float %4856, 2.500000e+00
  %4876 = call float @dx.op.unary.f32(i32 7, float %4875)  ; Saturate(value)
  %4877 = fmul fast float %4856, 0x4013FFFFE0000000
  %4878 = fadd fast float %4877, 0xBFFFFFFFE0000000
  %4879 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4880 = fmul fast float %4856, 0x4004000020000000
  %4881 = fadd fast float %4880, 0xBFF8000040000000
  %4882 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4883 = call float @dx.op.unary.f32(i32 7, float %4876)  ; Saturate(value)
  %4884 = fmul fast float %4379, 1.000000e+01
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fmul fast float %4885, 2.000000e+00
  %4887 = fsub fast float 3.000000e+00, %4886
  %4888 = fmul fast float %4885, %4885
  %4889 = fmul fast float %4888, %4887
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = fsub fast float 0x3FE3333340000000, %4400
  %4892 = fmul fast float %4891, 0x400AAAAAA0000000
  %4893 = call float @dx.op.unary.f32(i32 7, float %4892)  ; Saturate(value)
  %4894 = fmul fast float %4890, %4893
  %4895 = fmul fast float %4478, 0x3FEA2B8620000000
  %4896 = fmul fast float %4479, 0x3FEA2B8620000000
  %4897 = fmul fast float %4480, 0x3FEA2B8620000000
  %4898 = fadd fast float %4895, 0x3FC81DFBA0000000
  %4899 = fmul fast float %4898, %4478
  %4900 = fadd fast float %4899, 0x3F910E6020000000
  %4901 = fadd fast float %4896, 0x3FC81DFBA0000000
  %4902 = fmul fast float %4901, %4479
  %4903 = fadd fast float %4902, 0x3F910E6020000000
  %4904 = fadd fast float %4897, 0x3FC81DFBA0000000
  %4905 = fmul fast float %4904, %4480
  %4906 = fadd fast float %4905, 0x3F910E6020000000
  %4907 = call float @dx.op.unary.f32(i32 7, float %4900)  ; Saturate(value)
  %4908 = call float @dx.op.unary.f32(i32 7, float %4903)  ; Saturate(value)
  %4909 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4910 = fsub fast float %4907, %4478
  %4911 = fsub fast float %4908, %4479
  %4912 = fsub fast float %4909, %4480
  %4913 = fmul fast float %4910, %4883
  %4914 = fmul fast float %4913, %4894
  %4915 = fmul fast float %4911, %4883
  %4916 = fmul fast float %4915, %4894
  %4917 = fmul fast float %4912, %4883
  %4918 = fmul fast float %4917, %4894
  %4919 = fadd fast float %4914, %4478
  %4920 = fadd fast float %4916, %4479
  %4921 = fadd fast float %4918, %4480
  %4922 = fmul fast float %4373, %4373
  %4923 = fmul fast float %4922, %4922
  %4924 = fadd fast float %4879, 1.000000e+00
  %4925 = fsub fast float %4924, %4894
  %4926 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4927 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = call float @dx.op.unary.f32(i32 7, float %4927)  ; Saturate(value)
  %4929 = fsub fast float 1.000000e+00, %4923
  %4930 = call float @dx.op.binary.f32(i32 36, float %4926, float %4929)  ; FMin(a,b)
  %4931 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4932 = call float @dx.op.binary.f32(i32 35, float %4930, float %4931)  ; FMax(a,b)
  %4933 = fadd fast float %4928, 0xBFE4CCCCC0000000
  %4934 = fmul fast float %4933, 0x4006DB6DA0000000
  %4935 = call float @dx.op.unary.f32(i32 7, float %4934)  ; Saturate(value)
  %4936 = fmul fast float %4935, 2.000000e+00
  %4937 = fsub fast float 3.000000e+00, %4936
  %4938 = bitcast float %4397 to i32
  %4939 = ashr i32 %4938, 1
  %4940 = add nsw i32 %4939, 532487669
  %4941 = bitcast i32 %4940 to float
  %4942 = fsub fast float 1.000000e+00, %4941
  %4943 = bitcast float %4942 to i32
  %4944 = sub nsw i32 2129859010, %4943
  %4945 = bitcast i32 %4944 to float
  %4946 = fmul fast float %4945, 2.000000e+00
  %4947 = bitcast float %4398 to i32
  %4948 = ashr i32 %4947, 1
  %4949 = add nsw i32 %4948, 532487669
  %4950 = bitcast i32 %4949 to float
  %4951 = fsub fast float 1.000000e+00, %4950
  %4952 = bitcast float %4951 to i32
  %4953 = sub nsw i32 2129859010, %4952
  %4954 = bitcast i32 %4953 to float
  %4955 = fmul fast float %4954, 2.000000e+00
  %4956 = bitcast float %4399 to i32
  %4957 = ashr i32 %4956, 1
  %4958 = add nsw i32 %4957, 532487669
  %4959 = bitcast i32 %4958 to float
  %4960 = fsub fast float 1.000000e+00, %4959
  %4961 = bitcast float %4960 to i32
  %4962 = sub nsw i32 2129859010, %4961
  %4963 = bitcast i32 %4962 to float
  %4964 = fmul fast float %4963, 2.000000e+00
  %4965 = fsub fast float 0x4002A9FBE0000000, %4946
  %4966 = fadd fast float %4946, 0x3FD54FDF00000000
  %4967 = bitcast float %4966 to i32
  %4968 = sub nsw i32 2129859010, %4967
  %4969 = bitcast i32 %4968 to float
  %4970 = fmul fast float %4969, %4965
  %4971 = fmul fast float %4970, %4970
  %4972 = fsub fast float 0x4002A9FBE0000000, %4955
  %4973 = fadd fast float %4955, 0x3FD54FDF00000000
  %4974 = bitcast float %4973 to i32
  %4975 = sub nsw i32 2129859010, %4974
  %4976 = bitcast i32 %4975 to float
  %4977 = fmul fast float %4976, %4972
  %4978 = fmul fast float %4977, %4977
  %4979 = fsub fast float 0x4002A9FBE0000000, %4964
  %4980 = fadd fast float %4964, 0x3FD54FDF00000000
  %4981 = bitcast float %4980 to i32
  %4982 = sub nsw i32 2129859010, %4981
  %4983 = bitcast i32 %4982 to float
  %4984 = fmul fast float %4983, %4979
  %4985 = fmul fast float %4984, %4984
  %4986 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4971)  ; FMax(a,b)
  %4987 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4978)  ; FMax(a,b)
  %4988 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4985)  ; FMax(a,b)
  %4989 = fsub fast float 1.000000e+00, %4874
  %4990 = fadd fast float %4989, %4890
  %4991 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4992 = fsub fast float 1.000000e+00, %4854
  %4993 = fmul fast float %4932, %4992
  %4994 = fmul fast float %4935, %4935
  %4995 = fmul fast float %4994, %4993
  %4996 = fmul fast float %4995, %4937
  %4997 = fmul fast float %4992, 0xBFE99999A0000000
  %4998 = fmul fast float %4997, %4883
  %4999 = fmul fast float %4998, %4894
  %5000 = fadd fast float %4999, 1.000000e+00
  %5001 = fadd fast float %4400, -1.000000e+00
  %5002 = fmul fast float %5000, %5001
  %5003 = fadd fast float %5002, 1.000000e+00
  %5004 = fsub fast float %4986, %4397
  %5005 = fsub fast float %4987, %4398
  %5006 = fsub fast float %4988, %4399
  %5007 = fmul fast float %4996, %5004
  %5008 = fmul fast float %4996, %5005
  %5009 = fmul fast float %4996, %5006
  %5010 = fadd fast float %5007, %4397
  %5011 = fadd fast float %5008, %4398
  %5012 = fadd fast float %5009, %4399
  %5013 = fsub fast float %73, %4358
  %5014 = fsub fast float %74, %4359
  %5015 = fsub fast float %75, %4360
  %5016 = fmul fast float %4996, %5013
  %5017 = fmul fast float %4996, %5014
  %5018 = fmul fast float %4996, %5015
  %5019 = fadd fast float %5016, %4358
  %5020 = fadd fast float %5017, %4359
  %5021 = fadd fast float %5018, %4360
  %5022 = fmul fast float %4996, %4991
  %5023 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5024 = fsub fast float 1.000000e+00, %5023
  %5025 = fmul fast float %5022, %5024
  %5026 = fadd fast float %5025, %5023
  %5027 = fsub fast float 1.000000e+00, %4373
  %5028 = fmul fast float %4996, %5027
  %5029 = fadd fast float %5028, %4373
  %5030 = call float @dx.op.dot3.f32(i32 55, float %5019, float %5020, float %5021, float %5019, float %5020, float %5021)  ; Dot3(ax,ay,az,bx,by,bz)
  %5031 = call float @dx.op.unary.f32(i32 25, float %5030)  ; Rsqrt(value)
  %5032 = fmul fast float %5019, %5031
  %5033 = fmul fast float %5020, %5031
  %5034 = fmul fast float %5021, %5031
  br label %5035

; <label>:5035                                    ; preds = %4867, %4860
  %5036 = phi float [ %4866, %4860 ], [ %4873, %4867 ]
  %5037 = phi float [ %4865, %4860 ], [ %4871, %4867 ]
  %5038 = phi float [ %4864, %4860 ], [ %4869, %4867 ]
  %5039 = phi float [ %4863, %4860 ], [ %4872, %4867 ]
  %5040 = phi float [ %4862, %4860 ], [ %4870, %4867 ]
  %5041 = phi float [ %4861, %4860 ], [ %4868, %4867 ]
  %5042 = phi float [ %4478, %4860 ], [ %4919, %4867 ]
  %5043 = phi float [ %4479, %4860 ], [ %4920, %4867 ]
  %5044 = phi float [ %4480, %4860 ], [ %4921, %4867 ]
  %5045 = phi float [ %4397, %4860 ], [ %5010, %4867 ]
  %5046 = phi float [ %4398, %4860 ], [ %5011, %4867 ]
  %5047 = phi float [ %4399, %4860 ], [ %5012, %4867 ]
  %5048 = phi float [ %4358, %4860 ], [ %5032, %4867 ]
  %5049 = phi float [ %4359, %4860 ], [ %5033, %4867 ]
  %5050 = phi float [ %4360, %4860 ], [ %5034, %4867 ]
  %5051 = phi float [ %4400, %4860 ], [ %5026, %4867 ]
  %5052 = phi float [ %4373, %4860 ], [ %5029, %4867 ]
  %5053 = select i1 %163, float 0.000000e+00, float %5047
  %5054 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float %5038, float %5037, float %5036)  ; Dot3(ax,ay,az,bx,by,bz)
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = call float @dx.op.dot3.f32(i32 55, float %5041, float %5040, float %5039, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = fmul fast float %5056, 2.000000e+00
  %5058 = fmul fast float %5057, %5048
  %5059 = fmul fast float %5057, %5049
  %5060 = fmul fast float %5057, %5050
  %5061 = fsub fast float %5041, %5058
  %5062 = fsub fast float %5040, %5059
  %5063 = fsub fast float %5039, %5060
  %5064 = call float @dx.op.binary.f32(i32 36, float %5052, float 1.000000e+00)  ; FMin(a,b)
  %5065 = fsub fast float 1.000000e+00, %5052
  %5066 = bitcast float %5065 to i32
  %5067 = sub nsw i32 2129859010, %5066
  %5068 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5069 = extractvalue %dx.types.CBufRet.f32 %5068, 0
  %5070 = extractvalue %dx.types.CBufRet.f32 %5068, 1
  %5071 = extractvalue %dx.types.CBufRet.f32 %5068, 2
  %5072 = fadd fast float %5069, %121
  %5073 = fadd fast float %5070, %122
  %5074 = fadd fast float %5071, %123
  %5075 = fmul fast float %5048, 3.200000e+01
  %5076 = fmul fast float %5049, 3.200000e+01
  %5077 = fadd fast float %5072, %5075
  %5078 = fadd fast float %5073, %5076
  %5079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %5080 = extractvalue %dx.types.CBufRet.f32 %5079, 0
  %5081 = extractvalue %dx.types.CBufRet.f32 %5079, 1
  %5082 = fsub fast float %5077, %5080
  %5083 = fsub fast float %5078, %5081
  %5084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %5085 = extractvalue %dx.types.CBufRet.f32 %5084, 0
  %5086 = extractvalue %dx.types.CBufRet.f32 %5084, 1
  %5087 = fmul fast float %5082, %5085
  %5088 = fmul fast float %5083, %5086
  %5089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %5090 = extractvalue %dx.types.CBufRet.f32 %5089, 0
  %5091 = fmul fast float %5087, %5090
  %5092 = extractvalue %dx.types.CBufRet.f32 %5089, 1
  %5093 = fadd fast float %5091, %5092
  %5094 = extractvalue %dx.types.CBufRet.f32 %5089, 2
  %5095 = fmul fast float %5094, %5088
  %5096 = extractvalue %dx.types.CBufRet.f32 %5089, 3
  %5097 = fadd fast float %5095, %5096
  %5098 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %5093, float %5097, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5099 = extractvalue %dx.types.ResRet.f32 %5098, 0
  %5100 = extractvalue %dx.types.ResRet.f32 %5098, 1
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 1
  %5103 = extractvalue %dx.types.CBufRet.f32 %5101, 0
  %5104 = fsub fast float %5102, %5103
  %5105 = fmul fast float %5104, %5099
  %5106 = fadd fast float %5105, %5103
  %5107 = extractvalue %dx.types.CBufRet.f32 %5101, 3
  %5108 = extractvalue %dx.types.CBufRet.f32 %5101, 2
  %5109 = fsub fast float %5107, %5108
  %5110 = fmul fast float %5109, %5100
  %5111 = fadd fast float %5110, %5108
  %5112 = fsub fast float %5074, %5106
  %5113 = fsub fast float %5111, %5106
  %5114 = fdiv fast float %5112, %5113
  %5115 = call float @dx.op.unary.f32(i32 7, float %5114)  ; Saturate(value)
  %5116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %5117 = extractvalue %dx.types.CBufRet.f32 %5116, 0
  %5118 = fmul fast float %5117, %5115
  %5119 = extractvalue %dx.types.CBufRet.f32 %5116, 1
  %5120 = fadd fast float %5118, %5119
  %5121 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %5093, float %5097, float %5120, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5122 = extractvalue %dx.types.ResRet.f32 %5121, 0
  %5123 = extractvalue %dx.types.ResRet.f32 %5121, 1
  %5124 = extractvalue %dx.types.ResRet.f32 %5121, 2
  %5125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %5126 = extractvalue %dx.types.CBufRet.f32 %5125, 0
  %5127 = extractvalue %dx.types.CBufRet.f32 %5125, 1
  %5128 = extractvalue %dx.types.CBufRet.f32 %5125, 2
  %5129 = fmul fast float %5126, %5122
  %5130 = fmul fast float %5127, %5123
  %5131 = fmul fast float %5128, %5124
  %5132 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %5133 = extractvalue %dx.types.CBufRet.f32 %5132, 0
  %5134 = extractvalue %dx.types.CBufRet.f32 %5132, 1
  %5135 = extractvalue %dx.types.CBufRet.f32 %5132, 2
  %5136 = fadd fast float %5129, %5133
  %5137 = fadd fast float %5130, %5134
  %5138 = fadd fast float %5131, %5135
  %5139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %5140 = extractvalue %dx.types.CBufRet.f32 %5139, 0
  %5141 = fmul fast float %5140, %5087
  %5142 = extractvalue %dx.types.CBufRet.f32 %5139, 1
  %5143 = fadd fast float %5141, %5142
  %5144 = extractvalue %dx.types.CBufRet.f32 %5139, 2
  %5145 = fmul fast float %5144, %5088
  %5146 = extractvalue %dx.types.CBufRet.f32 %5139, 3
  %5147 = fadd fast float %5145, %5146
  %5148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %5149 = extractvalue %dx.types.CBufRet.f32 %5148, 0
  %5150 = extractvalue %dx.types.CBufRet.f32 %5148, 1
  %5151 = extractvalue %dx.types.CBufRet.f32 %5148, 2
  %5152 = extractvalue %dx.types.CBufRet.f32 %5148, 3
  %5153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %5154 = extractvalue %dx.types.CBufRet.f32 %5153, 0
  %5155 = extractvalue %dx.types.CBufRet.f32 %5153, 1
  %5156 = extractvalue %dx.types.CBufRet.f32 %5153, 2
  %5157 = extractvalue %dx.types.CBufRet.f32 %5153, 3
  %5158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %5143, float %5147, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5159 = extractvalue %dx.types.ResRet.f32 %5158, 0
  %5160 = extractvalue %dx.types.ResRet.f32 %5158, 1
  %5161 = extractvalue %dx.types.ResRet.f32 %5158, 2
  %5162 = extractvalue %dx.types.ResRet.f32 %5158, 3
  %5163 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %5143, float %5147, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5164 = extractvalue %dx.types.ResRet.f32 %5163, 0
  %5165 = extractvalue %dx.types.ResRet.f32 %5163, 1
  %5166 = extractvalue %dx.types.ResRet.f32 %5163, 2
  %5167 = extractvalue %dx.types.ResRet.f32 %5163, 3
  %5168 = fmul fast float %5159, %5136
  %5169 = fmul fast float %5164, %5136
  %5170 = fmul fast float %5166, %5136
  %5171 = fmul fast float %5162, %5136
  %5172 = fadd fast float %5168, %5149
  %5173 = fadd fast float %5169, %5150
  %5174 = fadd fast float %5170, %5151
  %5175 = fadd fast float %5171, %5152
  %5176 = fmul fast float %5160, %5136
  %5177 = fmul fast float %5165, %5136
  %5178 = fadd fast float %5176, %5154
  %5179 = fadd fast float %5177, %5155
  %5180 = fmul fast float %5161, %5136
  %5181 = fmul fast float %5167, %5136
  %5182 = fadd fast float %5180, %5156
  %5183 = fadd fast float %5181, %5157
  %5184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %5143, float %5147, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5185 = extractvalue %dx.types.ResRet.f32 %5184, 0
  %5186 = extractvalue %dx.types.ResRet.f32 %5184, 1
  %5187 = extractvalue %dx.types.ResRet.f32 %5184, 2
  %5188 = extractvalue %dx.types.ResRet.f32 %5184, 3
  %5189 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %5143, float %5147, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5190 = extractvalue %dx.types.ResRet.f32 %5189, 0
  %5191 = extractvalue %dx.types.ResRet.f32 %5189, 1
  %5192 = extractvalue %dx.types.ResRet.f32 %5189, 2
  %5193 = extractvalue %dx.types.ResRet.f32 %5189, 3
  %5194 = fmul fast float %5185, %5137
  %5195 = fmul fast float %5190, %5137
  %5196 = fmul fast float %5192, %5137
  %5197 = fmul fast float %5188, %5137
  %5198 = fadd fast float %5172, %5194
  %5199 = fadd fast float %5173, %5195
  %5200 = fadd fast float %5174, %5196
  %5201 = fadd fast float %5175, %5197
  %5202 = fmul fast float %5186, %5137
  %5203 = fmul fast float %5191, %5137
  %5204 = fadd fast float %5178, %5202
  %5205 = fadd fast float %5179, %5203
  %5206 = fmul fast float %5187, %5137
  %5207 = fmul fast float %5193, %5137
  %5208 = fadd fast float %5182, %5206
  %5209 = fadd fast float %5183, %5207
  %5210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %5143, float %5147, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5211 = extractvalue %dx.types.ResRet.f32 %5210, 0
  %5212 = extractvalue %dx.types.ResRet.f32 %5210, 1
  %5213 = extractvalue %dx.types.ResRet.f32 %5210, 2
  %5214 = extractvalue %dx.types.ResRet.f32 %5210, 3
  %5215 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %5143, float %5147, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5216 = extractvalue %dx.types.ResRet.f32 %5215, 0
  %5217 = extractvalue %dx.types.ResRet.f32 %5215, 1
  %5218 = extractvalue %dx.types.ResRet.f32 %5215, 2
  %5219 = extractvalue %dx.types.ResRet.f32 %5215, 3
  %5220 = fmul fast float %5211, %5138
  %5221 = fmul fast float %5216, %5138
  %5222 = fmul fast float %5218, %5138
  %5223 = fmul fast float %5214, %5138
  %5224 = fadd fast float %5198, %5220
  %5225 = fadd fast float %5199, %5221
  %5226 = fadd fast float %5200, %5222
  %5227 = fadd fast float %5201, %5223
  %5228 = fmul fast float %5212, %5138
  %5229 = fmul fast float %5217, %5138
  %5230 = fadd fast float %5204, %5228
  %5231 = fadd fast float %5205, %5229
  %5232 = fmul fast float %5213, %5138
  %5233 = fmul fast float %5219, %5138
  %5234 = fadd fast float %5208, %5232
  %5235 = fadd fast float %5209, %5233
  %5236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %5237 = extractvalue %dx.types.CBufRet.f32 %5236, 0
  %5238 = fsub fast float %5072, %5237
  %5239 = fsub fast float %5080, %5072
  %5240 = call float @dx.op.binary.f32(i32 35, float %5239, float %5238)  ; FMax(a,b)
  %5241 = extractvalue %dx.types.CBufRet.f32 %5236, 1
  %5242 = fsub fast float %5073, %5241
  %5243 = fsub fast float %5081, %5073
  %5244 = call float @dx.op.binary.f32(i32 35, float %5243, float %5242)  ; FMax(a,b)
  %5245 = call float @dx.op.binary.f32(i32 35, float %5240, float %5244)  ; FMax(a,b)
  %5246 = extractvalue %dx.types.CBufRet.f32 %5084, 3
  %5247 = fmul fast float %5246, %5245
  %5248 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %5250 = extractvalue %dx.types.CBufRet.f32 %5249, 0
  %5251 = extractvalue %dx.types.CBufRet.f32 %5249, 1
  %5252 = extractvalue %dx.types.CBufRet.f32 %5249, 2
  %5253 = extractvalue %dx.types.CBufRet.f32 %5249, 3
  %5254 = fsub fast float %5250, %5224
  %5255 = fsub fast float %5251, %5225
  %5256 = fsub fast float %5252, %5226
  %5257 = fsub fast float %5253, %5227
  %5258 = fmul fast float %5254, %5248
  %5259 = fmul fast float %5255, %5248
  %5260 = fmul fast float %5256, %5248
  %5261 = fmul fast float %5257, %5248
  %5262 = fadd fast float %5258, %5224
  %5263 = fadd fast float %5259, %5225
  %5264 = fadd fast float %5260, %5226
  %5265 = fadd fast float %5261, %5227
  %5266 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %5267 = extractvalue %dx.types.CBufRet.f32 %5266, 0
  %5268 = extractvalue %dx.types.CBufRet.f32 %5266, 1
  %5269 = fsub fast float %5267, %5230
  %5270 = fsub fast float %5268, %5231
  %5271 = fmul fast float %5269, %5248
  %5272 = fmul fast float %5270, %5248
  %5273 = fadd fast float %5271, %5230
  %5274 = fadd fast float %5272, %5231
  %5275 = extractvalue %dx.types.CBufRet.f32 %5266, 2
  %5276 = extractvalue %dx.types.CBufRet.f32 %5266, 3
  %5277 = fsub fast float %5275, %5234
  %5278 = fsub fast float %5276, %5235
  %5279 = fmul fast float %5277, %5248
  %5280 = fmul fast float %5278, %5248
  %5281 = fadd fast float %5279, %5234
  %5282 = fadd fast float %5280, %5235
  %5283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %5284 = extractvalue %dx.types.CBufRet.f32 %5283, 0
  %5285 = fmul fast float %5284, %5262
  %5286 = fmul fast float %5284, %5263
  %5287 = fmul fast float %5284, %5264
  %5288 = fmul fast float %5284, %5265
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 0
  %5291 = fmul fast float %5290, %5273
  %5292 = fmul fast float %5290, %5274
  %5293 = fadd fast float %5291, %5285
  %5294 = fadd fast float %5292, %5287
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 0
  %5297 = fmul fast float %5296, %5281
  %5298 = fmul fast float %5296, %5282
  %5299 = fadd fast float %5293, %5297
  %5300 = fadd fast float %5294, %5298
  %5301 = extractvalue %dx.types.CBufRet.f32 %5283, 1
  %5302 = fmul fast float %5301, %5262
  %5303 = fmul fast float %5301, %5263
  %5304 = fmul fast float %5301, %5264
  %5305 = fmul fast float %5301, %5265
  %5306 = extractvalue %dx.types.CBufRet.f32 %5289, 1
  %5307 = fmul fast float %5306, %5273
  %5308 = fmul fast float %5306, %5274
  %5309 = fadd fast float %5307, %5302
  %5310 = fadd fast float %5308, %5304
  %5311 = extractvalue %dx.types.CBufRet.f32 %5295, 1
  %5312 = fmul fast float %5311, %5281
  %5313 = fmul fast float %5311, %5282
  %5314 = fadd fast float %5309, %5312
  %5315 = fadd fast float %5310, %5313
  %5316 = extractvalue %dx.types.CBufRet.f32 %5283, 2
  %5317 = fmul fast float %5316, %5262
  %5318 = fmul fast float %5316, %5263
  %5319 = fmul fast float %5316, %5264
  %5320 = fmul fast float %5316, %5265
  %5321 = extractvalue %dx.types.CBufRet.f32 %5289, 2
  %5322 = fmul fast float %5321, %5273
  %5323 = fmul fast float %5321, %5274
  %5324 = fadd fast float %5322, %5317
  %5325 = fadd fast float %5323, %5319
  %5326 = extractvalue %dx.types.CBufRet.f32 %5295, 2
  %5327 = fmul fast float %5326, %5281
  %5328 = fmul fast float %5326, %5282
  %5329 = fadd fast float %5324, %5327
  %5330 = fadd fast float %5325, %5328
  %5331 = fmul fast float %5318, %5318
  %5332 = fmul fast float %5330, %5330
  %5333 = fmul fast float %5320, %5320
  %5334 = fadd fast float %5333, %5331
  %5335 = fadd fast float %5334, %5332
  %5336 = call float @dx.op.unary.f32(i32 24, float %5335)  ; Sqrt(value)
  %5337 = fcmp fast ugt float %5336, 0.000000e+00
  br i1 %5337, label %5338, label %5353

; <label>:5338                                    ; preds = %5035
  %5339 = fsub fast float -0.000000e+00, %5320
  %5340 = fdiv fast float %5339, %5336
  %5341 = fsub fast float -0.000000e+00, %5318
  %5342 = fdiv fast float %5341, %5336
  %5343 = fdiv fast float %5330, %5336
  %5344 = fmul fast float %5329, 0x3FE279A760000000
  %5345 = fmul fast float %5342, %5318
  %5346 = fmul fast float %5343, %5330
  %5347 = fmul fast float %5340, %5320
  %5348 = fadd fast float %5345, %5347
  %5349 = fsub fast float %5348, %5346
  %5350 = call float @dx.op.unary.f32(i32 6, float %5349)  ; FAbs(value)
  %5351 = fadd fast float %5350, 0x3DDB7CDFE0000000
  %5352 = fdiv fast float %5344, %5351
  br label %5353

; <label>:5353                                    ; preds = %5338, %5035
  %5354 = phi float [ %5352, %5338 ], [ 1.000000e+00, %5035 ]
  %5355 = fmul fast float %5303, %5303
  %5356 = fmul fast float %5315, %5315
  %5357 = fmul fast float %5305, %5305
  %5358 = fadd fast float %5357, %5355
  %5359 = fadd fast float %5358, %5356
  %5360 = call float @dx.op.unary.f32(i32 24, float %5359)  ; Sqrt(value)
  %5361 = fcmp fast ugt float %5360, 0.000000e+00
  br i1 %5361, label %5362, label %5377

; <label>:5362                                    ; preds = %5353
  %5363 = fsub fast float -0.000000e+00, %5305
  %5364 = fdiv fast float %5363, %5360
  %5365 = fsub fast float -0.000000e+00, %5303
  %5366 = fdiv fast float %5365, %5360
  %5367 = fdiv fast float %5315, %5360
  %5368 = fmul fast float %5314, 0x3FE279A760000000
  %5369 = fmul fast float %5366, %5303
  %5370 = fmul fast float %5367, %5315
  %5371 = fmul fast float %5364, %5305
  %5372 = fadd fast float %5369, %5371
  %5373 = fsub fast float %5372, %5370
  %5374 = call float @dx.op.unary.f32(i32 6, float %5373)  ; FAbs(value)
  %5375 = fadd fast float %5374, 0x3DDB7CDFE0000000
  %5376 = fdiv fast float %5368, %5375
  br label %5377

; <label>:5377                                    ; preds = %5362, %5353
  %5378 = phi float [ %5376, %5362 ], [ 1.000000e+00, %5353 ]
  %5379 = call float @dx.op.binary.f32(i32 36, float %5378, float %5354)  ; FMin(a,b)
  %5380 = fmul fast float %5286, %5286
  %5381 = fmul fast float %5300, %5300
  %5382 = fmul fast float %5288, %5288
  %5383 = fadd fast float %5382, %5380
  %5384 = fadd fast float %5383, %5381
  %5385 = call float @dx.op.unary.f32(i32 24, float %5384)  ; Sqrt(value)
  %5386 = fcmp fast ugt float %5385, 0.000000e+00
  br i1 %5386, label %5387, label %5402

; <label>:5387                                    ; preds = %5377
  %5388 = fsub fast float -0.000000e+00, %5288
  %5389 = fdiv fast float %5388, %5385
  %5390 = fsub fast float -0.000000e+00, %5286
  %5391 = fdiv fast float %5390, %5385
  %5392 = fdiv fast float %5300, %5385
  %5393 = fmul fast float %5299, 0x3FE279A760000000
  %5394 = fmul fast float %5391, %5286
  %5395 = fmul fast float %5392, %5300
  %5396 = fmul fast float %5389, %5288
  %5397 = fadd fast float %5394, %5396
  %5398 = fsub fast float %5397, %5395
  %5399 = call float @dx.op.unary.f32(i32 6, float %5398)  ; FAbs(value)
  %5400 = fadd fast float %5399, 0x3DDB7CDFE0000000
  %5401 = fdiv fast float %5393, %5400
  br label %5402

; <label>:5402                                    ; preds = %5387, %5377
  %5403 = phi float [ %5401, %5387 ], [ 1.000000e+00, %5377 ]
  %5404 = call float @dx.op.binary.f32(i32 36, float %5403, float %5379)  ; FMin(a,b)
  %5405 = call float @dx.op.unary.f32(i32 7, float %5404)  ; Saturate(value)
  %5406 = fcmp fast olt float %5405, 1.000000e+00
  br i1 %5406, label %5407, label %5417

; <label>:5407                                    ; preds = %5402
  %5408 = fmul fast float %5405, %5286
  %5409 = fmul fast float %5405, %5300
  %5410 = fmul fast float %5405, %5288
  %5411 = fmul fast float %5405, %5303
  %5412 = fmul fast float %5405, %5315
  %5413 = fmul fast float %5405, %5305
  %5414 = fmul fast float %5405, %5318
  %5415 = fmul fast float %5405, %5330
  %5416 = fmul fast float %5405, %5320
  br label %5417

; <label>:5417                                    ; preds = %5407, %5402
  %5418 = phi float [ %5414, %5407 ], [ %5318, %5402 ]
  %5419 = phi float [ %5415, %5407 ], [ %5330, %5402 ]
  %5420 = phi float [ %5416, %5407 ], [ %5320, %5402 ]
  %5421 = phi float [ %5411, %5407 ], [ %5303, %5402 ]
  %5422 = phi float [ %5412, %5407 ], [ %5315, %5402 ]
  %5423 = phi float [ %5413, %5407 ], [ %5305, %5402 ]
  %5424 = phi float [ %5408, %5407 ], [ %5286, %5402 ]
  %5425 = phi float [ %5409, %5407 ], [ %5300, %5402 ]
  %5426 = phi float [ %5410, %5407 ], [ %5288, %5402 ]
  %5427 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5299)  ; FMax(a,b)
  %5428 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5314)  ; FMax(a,b)
  %5429 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5329)  ; FMax(a,b)
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 0
  %5432 = fcmp fast ogt float %5431, 0.000000e+00
  %5433 = fcmp fast oge float %5087, 0.000000e+00
  %5434 = and i1 %5433, %5432
  %5435 = fcmp fast ole float %5087, 1.000000e+00
  %5436 = and i1 %5435, %5434
  %5437 = fcmp fast oge float %5088, 0.000000e+00
  %5438 = and i1 %5437, %5436
  %5439 = fcmp fast ole float %5088, 1.000000e+00
  %5440 = and i1 %5439, %5438
  br i1 %5440, label %5441, label %5586, !dx.controlflow.hints !75

; <label>:5441                                    ; preds = %5417
  %5442 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %5443 = extractvalue %dx.types.CBufRet.f32 %5442, 2
  %5444 = extractvalue %dx.types.CBufRet.f32 %5442, 3
  %5445 = fmul fast float %5443, %5087
  %5446 = fmul fast float %5444, %5088
  %5447 = call float @dx.op.unary.f32(i32 27, float %5445)  ; Round_ni(value)
  %5448 = call float @dx.op.unary.f32(i32 27, float %5446)  ; Round_ni(value)
  %5449 = fptosi float %5447 to i32
  %5450 = fptosi float %5448 to i32
  %5451 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5449, i32 %5450, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5452 = extractvalue %dx.types.ResRet.i32 %5451, 0
  %5453 = and i32 %5452, 65535
  %5454 = lshr i32 %5452, 16
  %5455 = icmp eq i32 %5453, 65535
  br i1 %5455, label %5492, label %5456

; <label>:5456                                    ; preds = %5441
  %5457 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5458 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5459 = extractvalue %dx.types.CBufRet.f32 %5442, 1
  %5460 = fmul fast float %5458, %5087
  %5461 = fmul fast float %5459, %5088
  %5462 = fmul fast float %5460, 1.250000e-01
  %5463 = fmul fast float %5461, 1.250000e-01
  %5464 = call float @dx.op.unary.f32(i32 27, float %5462)  ; Round_ni(value)
  %5465 = call float @dx.op.unary.f32(i32 27, float %5463)  ; Round_ni(value)
  %5466 = fmul fast float %5464, 8.000000e+00
  %5467 = fmul fast float %5465, 8.000000e+00
  %5468 = and i32 %5452, 255
  %5469 = lshr i32 %5452, 8
  %5470 = and i32 %5469, 255
  %5471 = mul nuw nsw i32 %5468, 9
  %5472 = uitofp i32 %5471 to float
  %5473 = mul nuw nsw i32 %5470, 9
  %5474 = uitofp i32 %5473 to float
  %5475 = fadd fast float %5472, 5.000000e-01
  %5476 = fadd fast float %5475, %5460
  %5477 = fsub fast float %5476, %5466
  %5478 = fadd fast float %5474, 5.000000e-01
  %5479 = fadd fast float %5478, %5461
  %5480 = fsub fast float %5479, %5467
  %5481 = fdiv fast float %5477, %5431
  %5482 = fdiv fast float %5480, %5457
  %5483 = fmul fast float %5115, 4.375000e-01
  %5484 = fadd fast float %5483, 3.125000e-02
  %5485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5481, float %5482, float %5484, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5486 = extractvalue %dx.types.ResRet.f32 %5485, 0
  %5487 = extractvalue %dx.types.ResRet.f32 %5485, 1
  %5488 = extractvalue %dx.types.ResRet.f32 %5485, 2
  %5489 = fadd fast float %5486, %5427
  %5490 = fadd fast float %5487, %5428
  %5491 = fadd fast float %5488, %5429
  br label %5492

; <label>:5492                                    ; preds = %5456, %5441
  %5493 = phi float [ %5491, %5456 ], [ %5429, %5441 ]
  %5494 = phi float [ %5490, %5456 ], [ %5428, %5441 ]
  %5495 = phi float [ %5489, %5456 ], [ %5427, %5441 ]
  %5496 = icmp eq i32 %5454, 65535
  br i1 %5496, label %5586, label %5497

; <label>:5497                                    ; preds = %5492
  %5498 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5499 = extractvalue %dx.types.CBufRet.f32 %5442, 0
  %5500 = extractvalue %dx.types.CBufRet.f32 %5442, 1
  %5501 = fmul fast float %5499, %5087
  %5502 = fmul fast float %5500, %5088
  %5503 = fmul fast float %5501, 1.250000e-01
  %5504 = fmul fast float %5502, 1.250000e-01
  %5505 = call float @dx.op.unary.f32(i32 27, float %5503)  ; Round_ni(value)
  %5506 = call float @dx.op.unary.f32(i32 27, float %5504)  ; Round_ni(value)
  %5507 = fmul fast float %5505, 8.000000e+00
  %5508 = fmul fast float %5506, 8.000000e+00
  %5509 = fsub fast float %5501, %5507
  %5510 = fsub fast float %5502, %5508
  %5511 = fadd fast float %5509, 5.000000e-01
  %5512 = fadd fast float %5510, 5.000000e-01
  %5513 = and i32 %5454, 255
  %5514 = lshr i32 %5452, 24
  %5515 = mul nuw nsw i32 %5513, 9
  %5516 = uitofp i32 %5515 to float
  %5517 = mul nuw nsw i32 %5514, 9
  %5518 = uitofp i32 %5517 to float
  %5519 = fadd fast float %5511, %5516
  %5520 = fadd fast float %5512, %5518
  %5521 = fdiv fast float %5519, %5431
  %5522 = fdiv fast float %5520, %5498
  %5523 = fmul fast float %5115, 4.375000e-01
  %5524 = fadd fast float %5523, 3.125000e-02
  %5525 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5521, float %5522, float %5524, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5526 = extractvalue %dx.types.ResRet.f32 %5525, 0
  %5527 = extractvalue %dx.types.ResRet.f32 %5525, 1
  %5528 = extractvalue %dx.types.ResRet.f32 %5525, 2
  %5529 = fadd fast float %5523, 5.312500e-01
  %5530 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5521, float %5522, float %5529, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5531 = extractvalue %dx.types.ResRet.f32 %5530, 0
  %5532 = extractvalue %dx.types.ResRet.f32 %5530, 1
  %5533 = extractvalue %dx.types.ResRet.f32 %5530, 2
  %5534 = fmul fast float %5531, 2.000000e+00
  %5535 = fmul fast float %5532, 2.000000e+00
  %5536 = fmul fast float %5533, 2.000000e+00
  %5537 = fadd fast float %5534, -1.000000e+00
  %5538 = fadd fast float %5535, -1.000000e+00
  %5539 = fadd fast float %5536, -1.000000e+00
  %5540 = fmul fast float %5537, %5537
  %5541 = fmul fast float %5538, %5538
  %5542 = fadd fast float %5540, %5541
  %5543 = fmul fast float %5539, %5539
  %5544 = fadd fast float %5542, %5543
  %5545 = call float @dx.op.unary.f32(i32 24, float %5544)  ; Sqrt(value)
  %5546 = fcmp fast ogt float %5545, 0.000000e+00
  br i1 %5546, label %5547, label %5551

; <label>:5547                                    ; preds = %5497
  %5548 = fdiv fast float %5537, %5545
  %5549 = fdiv fast float %5538, %5545
  %5550 = fdiv fast float %5539, %5545
  br label %5551

; <label>:5551                                    ; preds = %5547, %5497
  %5552 = phi float [ %5548, %5547 ], [ 0.000000e+00, %5497 ]
  %5553 = phi float [ %5549, %5547 ], [ 0.000000e+00, %5497 ]
  %5554 = phi float [ %5550, %5547 ], [ 0.000000e+00, %5497 ]
  %5555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5556 = extractvalue %dx.types.CBufRet.f32 %5555, 0
  %5557 = extractvalue %dx.types.CBufRet.f32 %5555, 1
  %5558 = fsub fast float %5072, %5556
  %5559 = fsub fast float %5073, %5557
  %5560 = fmul fast float %5558, %5558
  %5561 = fmul fast float %5559, %5559
  %5562 = fadd fast float %5560, %5561
  %5563 = call float @dx.op.unary.f32(i32 24, float %5562)  ; Sqrt(value)
  %5564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5564, 0
  %5566 = extractvalue %dx.types.CBufRet.f32 %5564, 1
  %5567 = fsub fast float %5563, %5565
  %5568 = fdiv fast float %5567, %5566
  %5569 = call float @dx.op.unary.f32(i32 7, float %5568)  ; Saturate(value)
  %5570 = fmul fast float %5569, 2.000000e+00
  %5571 = fsub fast float 3.000000e+00, %5570
  %5572 = fmul fast float %5569, %5569
  %5573 = fmul fast float %5572, %5571
  %5574 = call float @dx.op.dot3.f32(i32 55, float %5552, float %5553, float %5554, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5575 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5574)  ; FMax(a,b)
  %5576 = fmul fast float %5575, 0x400C5BF8A0000000
  %5577 = fmul fast float %5573, %5526
  %5578 = fmul fast float %5577, %5576
  %5579 = fadd fast float %5578, %5495
  %5580 = fmul fast float %5573, %5527
  %5581 = fmul fast float %5580, %5576
  %5582 = fadd fast float %5581, %5494
  %5583 = fmul fast float %5573, %5528
  %5584 = fmul fast float %5583, %5576
  %5585 = fadd fast float %5584, %5493
  br label %5586

; <label>:5586                                    ; preds = %5551, %5492, %5417
  %5587 = phi float [ %5585, %5551 ], [ %5493, %5492 ], [ %5429, %5417 ]
  %5588 = phi float [ %5582, %5551 ], [ %5494, %5492 ], [ %5428, %5417 ]
  %5589 = phi float [ %5579, %5551 ], [ %5495, %5492 ], [ %5427, %5417 ]
  %5590 = fcmp fast ogt float %5074, %5111
  %5591 = and i1 %5433, %5590
  %5592 = and i1 %5435, %5591
  %5593 = and i1 %5437, %5592
  %5594 = and i1 %5439, %5593
  br i1 %5594, label %5595, label %5652, !dx.controlflow.hints !76

; <label>:5595                                    ; preds = %5586
  %5596 = fmul fast float %5113, 0x3FC24924A0000000
  %5597 = fsub fast float %5074, %5111
  %5598 = fdiv fast float %5597, %5596
  %5599 = call float @dx.op.unary.f32(i32 7, float %5598)  ; Saturate(value)
  %5600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %5601 = extractvalue %dx.types.CBufRet.f32 %5600, 0
  %5602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %5603 = extractvalue %dx.types.CBufRet.f32 %5602, 0
  %5604 = extractvalue %dx.types.CBufRet.f32 %5602, 1
  %5605 = extractvalue %dx.types.CBufRet.f32 %5602, 2
  %5606 = fsub fast float %5601, %5589
  %5607 = fsub fast float %5603, %5424
  %5608 = fsub fast float %5604, %5425
  %5609 = fsub fast float %5605, %5426
  %5610 = fmul fast float %5606, %5599
  %5611 = fmul fast float %5607, %5599
  %5612 = fmul fast float %5608, %5599
  %5613 = fmul fast float %5609, %5599
  %5614 = fadd fast float %5610, %5589
  %5615 = fadd fast float %5611, %5424
  %5616 = fadd fast float %5612, %5425
  %5617 = fadd fast float %5613, %5426
  %5618 = extractvalue %dx.types.CBufRet.f32 %5600, 1
  %5619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %5620 = extractvalue %dx.types.CBufRet.f32 %5619, 0
  %5621 = extractvalue %dx.types.CBufRet.f32 %5619, 1
  %5622 = extractvalue %dx.types.CBufRet.f32 %5619, 2
  %5623 = fsub fast float %5618, %5588
  %5624 = fsub fast float %5620, %5421
  %5625 = fsub fast float %5621, %5422
  %5626 = fsub fast float %5622, %5423
  %5627 = fmul fast float %5623, %5599
  %5628 = fmul fast float %5624, %5599
  %5629 = fmul fast float %5625, %5599
  %5630 = fmul fast float %5626, %5599
  %5631 = fadd fast float %5627, %5588
  %5632 = fadd fast float %5628, %5421
  %5633 = fadd fast float %5629, %5422
  %5634 = fadd fast float %5630, %5423
  %5635 = extractvalue %dx.types.CBufRet.f32 %5600, 2
  %5636 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %5637 = extractvalue %dx.types.CBufRet.f32 %5636, 0
  %5638 = extractvalue %dx.types.CBufRet.f32 %5636, 1
  %5639 = extractvalue %dx.types.CBufRet.f32 %5636, 2
  %5640 = fsub fast float %5635, %5587
  %5641 = fsub fast float %5637, %5418
  %5642 = fsub fast float %5638, %5419
  %5643 = fsub fast float %5639, %5420
  %5644 = fmul fast float %5640, %5599
  %5645 = fmul fast float %5641, %5599
  %5646 = fmul fast float %5642, %5599
  %5647 = fmul fast float %5643, %5599
  %5648 = fadd fast float %5644, %5587
  %5649 = fadd fast float %5645, %5418
  %5650 = fadd fast float %5646, %5419
  %5651 = fadd fast float %5647, %5420
  br label %5652

; <label>:5652                                    ; preds = %5595, %5586
  %5653 = phi float [ %5648, %5595 ], [ %5587, %5586 ]
  %5654 = phi float [ %5649, %5595 ], [ %5418, %5586 ]
  %5655 = phi float [ %5650, %5595 ], [ %5419, %5586 ]
  %5656 = phi float [ %5651, %5595 ], [ %5420, %5586 ]
  %5657 = phi float [ %5631, %5595 ], [ %5588, %5586 ]
  %5658 = phi float [ %5632, %5595 ], [ %5421, %5586 ]
  %5659 = phi float [ %5633, %5595 ], [ %5422, %5586 ]
  %5660 = phi float [ %5634, %5595 ], [ %5423, %5586 ]
  %5661 = phi float [ %5614, %5595 ], [ %5589, %5586 ]
  %5662 = phi float [ %5615, %5595 ], [ %5424, %5586 ]
  %5663 = phi float [ %5616, %5595 ], [ %5425, %5586 ]
  %5664 = phi float [ %5617, %5595 ], [ %5426, %5586 ]
  %5665 = extractvalue %dx.types.CBufRet.f32 %5236, 3
  %5666 = fmul fast float %5665, %5661
  %5667 = fmul fast float %5665, %5657
  %5668 = fmul fast float %5665, %5653
  %5669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.f32 %5669, 3
  %5671 = fmul fast float %5666, %5670
  %5672 = fmul fast float %5667, %5670
  %5673 = fmul fast float %5668, %5670
  %5674 = fmul fast float %5662, 1.500000e+00
  %5675 = fmul fast float %5674, %5665
  %5676 = fmul fast float %5675, %5670
  %5677 = fmul fast float %5663, 1.500000e+00
  %5678 = fmul fast float %5677, %5665
  %5679 = fmul fast float %5678, %5670
  %5680 = fmul fast float %5664, 1.500000e+00
  %5681 = fmul fast float %5680, %5665
  %5682 = fmul fast float %5681, %5670
  %5683 = fmul fast float %5658, 1.500000e+00
  %5684 = fmul fast float %5683, %5665
  %5685 = fmul fast float %5684, %5670
  %5686 = fmul fast float %5659, 1.500000e+00
  %5687 = fmul fast float %5686, %5665
  %5688 = fmul fast float %5687, %5670
  %5689 = fmul fast float %5660, 1.500000e+00
  %5690 = fmul fast float %5689, %5665
  %5691 = fmul fast float %5690, %5670
  %5692 = fmul fast float %5654, 1.500000e+00
  %5693 = fmul fast float %5692, %5665
  %5694 = fmul fast float %5693, %5670
  %5695 = fmul fast float %5655, 1.500000e+00
  %5696 = fmul fast float %5695, %5665
  %5697 = fmul fast float %5696, %5670
  %5698 = fmul fast float %5656, 1.500000e+00
  %5699 = fmul fast float %5698, %5665
  %5700 = fmul fast float %5699, %5670
  %5701 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5671)  ; FMax(a,b)
  %5702 = call float @dx.op.dot3.f32(i32 55, float %5676, float %5679, float %5682, float %5676, float %5679, float %5682)  ; Dot3(ax,ay,az,bx,by,bz)
  %5703 = fcmp fast oeq float %5702, 0.000000e+00
  %5704 = fcmp fast oeq float %5701, 0.000000e+00
  %5705 = or i1 %5704, %5703
  br i1 %5705, label %5735, label %5706

; <label>:5706                                    ; preds = %5652
  %5707 = fsub fast float -0.000000e+00, %5682
  %5708 = fsub fast float -0.000000e+00, %5676
  %5709 = call float @dx.op.unary.f32(i32 24, float %5702)  ; Sqrt(value)
  %5710 = fdiv fast float %5709, %5701
  %5711 = fcmp fast ogt float %5710, 0x3FFB6F8900000000
  %5712 = select i1 %5711, float 0x3FFB6F8900000000, float %5710
  %5713 = fmul fast float %5712, 0x3FE8A23460000000
  %5714 = call float @dx.op.unary.f32(i32 7, float %5713)  ; Saturate(value)
  %5715 = call float @dx.op.binary.f32(i32 35, float %5712, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5716 = fmul fast float %5714, %5701
  %5717 = fmul fast float %5715, 0x3FF279A740000000
  %5718 = fadd fast float %5717, -1.000000e+00
  %5719 = call float @dx.op.dot3.f32(i32 55, float %5707, float %5708, float %5679, float %5707, float %5708, float %5679)  ; Dot3(ax,ay,az,bx,by,bz)
  %5720 = call float @dx.op.unary.f32(i32 25, float %5719)  ; Rsqrt(value)
  %5721 = fmul fast float %5720, %5707
  %5722 = fmul fast float %5720, %5708
  %5723 = fmul fast float %5720, %5679
  %5724 = fmul fast float %5718, %5718
  %5725 = fsub fast float 1.000000e+00, %5724
  %5726 = fmul fast float %5715, 0x40005F8BE0000000
  %5727 = fsub fast float 0x400C5BF8A0000000, %5726
  %5728 = fdiv fast float %5716, %5727
  %5729 = fmul fast float %5728, 0x3FEE31C3C0000000
  %5730 = fmul fast float %5729, %5725
  %5731 = fmul fast float %5715, 0x3FDACB7480000000
  %5732 = fadd fast float %5731, 0xBFD7347680000000
  %5733 = fmul fast float %5732, %5728
  %5734 = fmul fast float %5733, %5725
  br label %5735

; <label>:5735                                    ; preds = %5706, %5652
  %5736 = phi float [ %5721, %5706 ], [ 0.000000e+00, %5652 ]
  %5737 = phi float [ %5722, %5706 ], [ 0.000000e+00, %5652 ]
  %5738 = phi float [ %5723, %5706 ], [ 0.000000e+00, %5652 ]
  %5739 = phi float [ %5730, %5706 ], [ 0.000000e+00, %5652 ]
  %5740 = phi float [ %5734, %5706 ], [ 0.000000e+00, %5652 ]
  %5741 = call float @dx.op.dot3.f32(i32 55, float %5736, float %5737, float %5738, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5742 = fmul fast float %5741, 0x3FDF454380000000
  %5743 = fmul fast float %5741, %5741
  %5744 = fmul fast float %5743, 0x3FEE471020000000
  %5745 = fadd fast float %5744, 0xBFD42F6020000000
  %5746 = fmul fast float %5701, 0x3FD20DD760000000
  %5747 = fmul fast float %5745, %5740
  %5748 = fadd fast float %5747, %5746
  %5749 = fmul fast float %5742, %5739
  %5750 = fadd fast float %5748, %5749
  %5751 = fsub fast float %5748, %5749
  %5752 = call float @dx.op.dot3.f32(i32 55, float %5736, float %5737, float %5738, float %5061, float %5062, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5753 = fmul fast float %5752, 0x3FDF454380000000
  %5754 = fmul fast float %5752, %5752
  %5755 = fmul fast float %5754, 0x3FEE471020000000
  %5756 = fadd fast float %5755, 0xBFD42F6020000000
  %5757 = call float @dx.op.dot3.f32(i32 55, float %5701, float %5739, float %5740, float 0x3FD20DD760000000, float %5753, float %5756)  ; Dot3(ax,ay,az,bx,by,bz)
  %5758 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5672)  ; FMax(a,b)
  %5759 = call float @dx.op.dot3.f32(i32 55, float %5685, float %5688, float %5691, float %5685, float %5688, float %5691)  ; Dot3(ax,ay,az,bx,by,bz)
  %5760 = fcmp fast oeq float %5759, 0.000000e+00
  %5761 = fcmp fast oeq float %5758, 0.000000e+00
  %5762 = or i1 %5761, %5760
  br i1 %5762, label %5792, label %5763

; <label>:5763                                    ; preds = %5735
  %5764 = fsub fast float -0.000000e+00, %5691
  %5765 = fsub fast float -0.000000e+00, %5685
  %5766 = call float @dx.op.unary.f32(i32 24, float %5759)  ; Sqrt(value)
  %5767 = fdiv fast float %5766, %5758
  %5768 = fcmp fast ogt float %5767, 0x3FFB6F8900000000
  %5769 = select i1 %5768, float 0x3FFB6F8900000000, float %5767
  %5770 = fmul fast float %5769, 0x3FE8A23460000000
  %5771 = call float @dx.op.unary.f32(i32 7, float %5770)  ; Saturate(value)
  %5772 = call float @dx.op.binary.f32(i32 35, float %5769, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5773 = fmul fast float %5771, %5758
  %5774 = fmul fast float %5772, 0x3FF279A740000000
  %5775 = fadd fast float %5774, -1.000000e+00
  %5776 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5765, float %5688, float %5764, float %5765, float %5688)  ; Dot3(ax,ay,az,bx,by,bz)
  %5777 = call float @dx.op.unary.f32(i32 25, float %5776)  ; Rsqrt(value)
  %5778 = fmul fast float %5777, %5764
  %5779 = fmul fast float %5777, %5765
  %5780 = fmul fast float %5777, %5688
  %5781 = fmul fast float %5775, %5775
  %5782 = fsub fast float 1.000000e+00, %5781
  %5783 = fmul fast float %5772, 0x40005F8BE0000000
  %5784 = fsub fast float 0x400C5BF8A0000000, %5783
  %5785 = fdiv fast float %5773, %5784
  %5786 = fmul fast float %5785, 0x3FEE31C3C0000000
  %5787 = fmul fast float %5786, %5782
  %5788 = fmul fast float %5772, 0x3FDACB7480000000
  %5789 = fadd fast float %5788, 0xBFD7347680000000
  %5790 = fmul fast float %5789, %5785
  %5791 = fmul fast float %5790, %5782
  br label %5792

; <label>:5792                                    ; preds = %5763, %5735
  %5793 = phi float [ %5778, %5763 ], [ 0.000000e+00, %5735 ]
  %5794 = phi float [ %5779, %5763 ], [ 0.000000e+00, %5735 ]
  %5795 = phi float [ %5780, %5763 ], [ 0.000000e+00, %5735 ]
  %5796 = phi float [ %5787, %5763 ], [ 0.000000e+00, %5735 ]
  %5797 = phi float [ %5791, %5763 ], [ 0.000000e+00, %5735 ]
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5793, float %5794, float %5795, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = fmul fast float %5798, 0x3FDF454380000000
  %5800 = fmul fast float %5798, %5798
  %5801 = fmul fast float %5800, 0x3FEE471020000000
  %5802 = fadd fast float %5801, 0xBFD42F6020000000
  %5803 = fmul fast float %5758, 0x3FD20DD760000000
  %5804 = fmul fast float %5802, %5797
  %5805 = fadd fast float %5804, %5803
  %5806 = fmul fast float %5799, %5796
  %5807 = fadd fast float %5805, %5806
  %5808 = fsub fast float %5805, %5806
  %5809 = call float @dx.op.dot3.f32(i32 55, float %5793, float %5794, float %5795, float %5061, float %5062, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5810 = fmul fast float %5809, 0x3FDF454380000000
  %5811 = fmul fast float %5809, %5809
  %5812 = fmul fast float %5811, 0x3FEE471020000000
  %5813 = fadd fast float %5812, 0xBFD42F6020000000
  %5814 = call float @dx.op.dot3.f32(i32 55, float %5758, float %5796, float %5797, float 0x3FD20DD760000000, float %5810, float %5813)  ; Dot3(ax,ay,az,bx,by,bz)
  %5815 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5673)  ; FMax(a,b)
  %5816 = call float @dx.op.dot3.f32(i32 55, float %5694, float %5697, float %5700, float %5694, float %5697, float %5700)  ; Dot3(ax,ay,az,bx,by,bz)
  %5817 = fcmp fast oeq float %5816, 0.000000e+00
  %5818 = fcmp fast oeq float %5815, 0.000000e+00
  %5819 = or i1 %5818, %5817
  br i1 %5819, label %5849, label %5820

; <label>:5820                                    ; preds = %5792
  %5821 = fsub fast float -0.000000e+00, %5700
  %5822 = fsub fast float -0.000000e+00, %5694
  %5823 = call float @dx.op.unary.f32(i32 24, float %5816)  ; Sqrt(value)
  %5824 = fdiv fast float %5823, %5815
  %5825 = fcmp fast ogt float %5824, 0x3FFB6F8900000000
  %5826 = select i1 %5825, float 0x3FFB6F8900000000, float %5824
  %5827 = fmul fast float %5826, 0x3FE8A23460000000
  %5828 = call float @dx.op.unary.f32(i32 7, float %5827)  ; Saturate(value)
  %5829 = call float @dx.op.binary.f32(i32 35, float %5826, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5830 = fmul fast float %5828, %5815
  %5831 = fmul fast float %5829, 0x3FF279A740000000
  %5832 = fadd fast float %5831, -1.000000e+00
  %5833 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5822, float %5697, float %5821, float %5822, float %5697)  ; Dot3(ax,ay,az,bx,by,bz)
  %5834 = call float @dx.op.unary.f32(i32 25, float %5833)  ; Rsqrt(value)
  %5835 = fmul fast float %5834, %5821
  %5836 = fmul fast float %5834, %5822
  %5837 = fmul fast float %5834, %5697
  %5838 = fmul fast float %5832, %5832
  %5839 = fsub fast float 1.000000e+00, %5838
  %5840 = fmul fast float %5829, 0x40005F8BE0000000
  %5841 = fsub fast float 0x400C5BF8A0000000, %5840
  %5842 = fdiv fast float %5830, %5841
  %5843 = fmul fast float %5842, 0x3FEE31C3C0000000
  %5844 = fmul fast float %5843, %5839
  %5845 = fmul fast float %5829, 0x3FDACB7480000000
  %5846 = fadd fast float %5845, 0xBFD7347680000000
  %5847 = fmul fast float %5846, %5842
  %5848 = fmul fast float %5847, %5839
  br label %5849

; <label>:5849                                    ; preds = %5820, %5792
  %5850 = phi float [ %5835, %5820 ], [ 0.000000e+00, %5792 ]
  %5851 = phi float [ %5836, %5820 ], [ 0.000000e+00, %5792 ]
  %5852 = phi float [ %5837, %5820 ], [ 0.000000e+00, %5792 ]
  %5853 = phi float [ %5844, %5820 ], [ 0.000000e+00, %5792 ]
  %5854 = phi float [ %5848, %5820 ], [ 0.000000e+00, %5792 ]
  %5855 = call float @dx.op.dot3.f32(i32 55, float %5850, float %5851, float %5852, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5856 = fmul fast float %5855, 0x3FDF454380000000
  %5857 = fmul fast float %5855, %5855
  %5858 = fmul fast float %5857, 0x3FEE471020000000
  %5859 = fadd fast float %5858, 0xBFD42F6020000000
  %5860 = fmul fast float %5815, 0x3FD20DD760000000
  %5861 = fmul fast float %5859, %5854
  %5862 = fadd fast float %5861, %5860
  %5863 = fmul fast float %5856, %5853
  %5864 = fadd fast float %5862, %5863
  %5865 = fsub fast float %5862, %5863
  %5866 = call float @dx.op.dot3.f32(i32 55, float %5850, float %5851, float %5852, float %5061, float %5062, float %5063)  ; Dot3(ax,ay,az,bx,by,bz)
  %5867 = fmul fast float %5866, 0x3FDF454380000000
  %5868 = fmul fast float %5866, %5866
  %5869 = fmul fast float %5868, 0x3FEE471020000000
  %5870 = fadd fast float %5869, 0xBFD42F6020000000
  %5871 = call float @dx.op.dot3.f32(i32 55, float %5815, float %5853, float %5854, float 0x3FD20DD760000000, float %5867, float %5870)  ; Dot3(ax,ay,az,bx,by,bz)
  %5872 = call float @dx.op.binary.f32(i32 35, float %5750, float 0.000000e+00)  ; FMax(a,b)
  %5873 = call float @dx.op.binary.f32(i32 35, float %5807, float 0.000000e+00)  ; FMax(a,b)
  %5874 = call float @dx.op.binary.f32(i32 35, float %5864, float 0.000000e+00)  ; FMax(a,b)
  %5875 = call float @dx.op.binary.f32(i32 35, float %5751, float 0.000000e+00)  ; FMax(a,b)
  %5876 = call float @dx.op.binary.f32(i32 35, float %5808, float 0.000000e+00)  ; FMax(a,b)
  %5877 = call float @dx.op.binary.f32(i32 35, float %5865, float 0.000000e+00)  ; FMax(a,b)
  %5878 = call float @dx.op.binary.f32(i32 35, float %5757, float 0.000000e+00)  ; FMax(a,b)
  %5879 = call float @dx.op.binary.f32(i32 35, float %5814, float 0.000000e+00)  ; FMax(a,b)
  %5880 = call float @dx.op.binary.f32(i32 35, float %5871, float 0.000000e+00)  ; FMax(a,b)
  %5881 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5882 = extractvalue %dx.types.CBufRet.f32 %5881, 0
  %5883 = call float @dx.op.binary.f32(i32 36, float %5042, float %5882)  ; FMin(a,b)
  %5884 = fsub fast float 1.000000e+00, %5064
  %5885 = fmul fast float %5883, %5884
  %5886 = fsub fast float 1.000000e+00, %5885
  %5887 = bitcast float %5886 to i32
  %5888 = sub nsw i32 2129859010, %5887
  %5889 = bitcast i32 %5888 to float
  %5890 = call float @dx.op.binary.f32(i32 36, float %5043, float %5882)  ; FMin(a,b)
  %5891 = fmul fast float %5890, %5884
  %5892 = fsub fast float 1.000000e+00, %5891
  %5893 = bitcast float %5892 to i32
  %5894 = sub nsw i32 2129859010, %5893
  %5895 = bitcast i32 %5894 to float
  %5896 = call float @dx.op.binary.f32(i32 36, float %5044, float %5882)  ; FMin(a,b)
  %5897 = fmul fast float %5896, %5884
  %5898 = fsub fast float 1.000000e+00, %5897
  %5899 = bitcast float %5898 to i32
  %5900 = sub nsw i32 2129859010, %5899
  %5901 = bitcast i32 %5900 to float
  %5902 = fmul fast float %5872, %5064
  %5903 = fmul fast float %5902, %5889
  %5904 = fmul fast float %5873, %5064
  %5905 = fmul fast float %5904, %5895
  %5906 = fmul fast float %5874, %5064
  %5907 = fmul fast float %5906, %5901
  %5908 = call float @dx.op.binary.f32(i32 36, float %5045, float %5882)  ; FMin(a,b)
  %5909 = fmul fast float %5908, %5884
  %5910 = fsub fast float 1.000000e+00, %5909
  %5911 = bitcast float %5910 to i32
  %5912 = sub nsw i32 2129859010, %5911
  %5913 = bitcast i32 %5912 to float
  %5914 = call float @dx.op.binary.f32(i32 36, float %5046, float %5882)  ; FMin(a,b)
  %5915 = fmul fast float %5914, %5884
  %5916 = fsub fast float 1.000000e+00, %5915
  %5917 = bitcast float %5916 to i32
  %5918 = sub nsw i32 2129859010, %5917
  %5919 = bitcast i32 %5918 to float
  %5920 = call float @dx.op.binary.f32(i32 36, float %5053, float %5882)  ; FMin(a,b)
  %5921 = fmul fast float %5920, %5884
  %5922 = fsub fast float 1.000000e+00, %5921
  %5923 = bitcast float %5922 to i32
  %5924 = sub nsw i32 2129859010, %5923
  %5925 = bitcast i32 %5924 to float
  %5926 = fmul fast float %5878, %5064
  %5927 = fmul fast float %5926, %5913
  %5928 = fmul fast float %5879, %5064
  %5929 = fmul fast float %5928, %5919
  %5930 = fmul fast float %5880, %5064
  %5931 = fmul fast float %5930, %5925
  %5932 = call float @dx.op.dot3.f32(i32 55, float %5903, float %5905, float %5907, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5933 = select i1 %163, float 0.000000e+00, float %5903
  %5934 = select i1 %163, float %5932, float %5905
  %5935 = select i1 %163, float 0.000000e+00, float %5907
  %5936 = call float @dx.op.dot3.f32(i32 55, float %5875, float %5876, float %5877, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5937 = select i1 %163, float 0.000000e+00, float %5875
  %5938 = select i1 %163, float %5936, float %5876
  %5939 = select i1 %163, float 0.000000e+00, float %5877
  %5940 = call float @dx.op.dot3.f32(i32 55, float %5927, float %5929, float %5931, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5941 = select i1 %163, float 0.000000e+00, float %5927
  %5942 = select i1 %163, float %5940, float %5929
  %5943 = select i1 %163, float 0.000000e+00, float %5931
  %5944 = fmul fast float %5055, 9.843750e-01
  %5945 = fmul fast float %5051, 9.843750e-01
  %5946 = fadd fast float %5944, 7.812500e-03
  %5947 = fadd fast float %5945, 7.812500e-03
  %5948 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %5946, float %5947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5949 = extractvalue %dx.types.ResRet.f32 %5948, 2
  %5950 = extractvalue %dx.types.ResRet.f32 %5948, 3
  %5951 = fmul fast float %5949, %5045
  %5952 = fmul fast float %5949, %5046
  %5953 = fmul fast float %5949, %5053
  %5954 = fadd fast float %5951, %5950
  %5955 = fadd fast float %5952, %5950
  %5956 = fadd fast float %5953, %5950
  %5957 = fcmp fast ogt float %4374, 0.000000e+00
  br i1 %5957, label %5958, label %5984

; <label>:5958                                    ; preds = %5849
  %5959 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4374, float %5055, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5960 = extractvalue %dx.types.ResRet.f32 %5959, 0
  %5961 = extractvalue %dx.types.ResRet.f32 %5959, 1
  %5962 = extractvalue %dx.types.ResRet.f32 %5959, 2
  %5963 = fadd fast float %5960, -5.000000e-01
  %5964 = fadd fast float %5961, -5.000000e-01
  %5965 = fadd fast float %5962, -5.000000e-01
  %5966 = fsub fast float 1.000000e+00, %5045
  %5967 = fsub fast float 1.000000e+00, %5046
  %5968 = fsub fast float 1.000000e+00, %5053
  %5969 = fmul fast float %5045, 4.000000e+00
  %5970 = fmul fast float %5969, %5966
  %5971 = fmul fast float %5970, %5963
  %5972 = fmul fast float %5046, 4.000000e+00
  %5973 = fmul fast float %5972, %5967
  %5974 = fmul fast float %5973, %5964
  %5975 = fmul fast float %5053, 4.000000e+00
  %5976 = fmul fast float %5975, %5968
  %5977 = fmul fast float %5976, %5965
  %5978 = fadd fast float %5971, %5954
  %5979 = fadd fast float %5974, %5955
  %5980 = fadd fast float %5977, %5956
  %5981 = call float @dx.op.unary.f32(i32 7, float %5978)  ; Saturate(value)
  %5982 = call float @dx.op.unary.f32(i32 7, float %5979)  ; Saturate(value)
  %5983 = call float @dx.op.unary.f32(i32 7, float %5980)  ; Saturate(value)
  br label %5984

; <label>:5984                                    ; preds = %5958, %5849
  %5985 = phi float [ %5981, %5958 ], [ %5954, %5849 ]
  %5986 = phi float [ %5982, %5958 ], [ %5955, %5849 ]
  %5987 = phi float [ %5983, %5958 ], [ %5956, %5849 ]
  %5988 = call float @dx.op.binary.f32(i32 35, float %5986, float %5987)  ; FMax(a,b)
  %5989 = call float @dx.op.binary.f32(i32 35, float %5985, float %5988)  ; FMax(a,b)
  %5990 = fsub fast float 1.000000e+00, %5989
  %5991 = call float @dx.op.dot3.f32(i32 55, float %5042, float %5043, float %5044, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5992 = fcmp fast ogt float %5991, 0x3E7FF19E20000000
  %5993 = fdiv fast float 1.000000e+00, %5991
  %5994 = select i1 %5992, float %5993, float 0.000000e+00
  %5995 = fmul fast float %5994, %5042
  %5996 = fmul fast float %5994, %5043
  %5997 = fmul fast float %5994, %5044
  %5998 = fadd fast float %5995, -1.000000e+00
  %5999 = fadd fast float %5996, -1.000000e+00
  %6000 = fadd fast float %5997, -1.000000e+00
  %6001 = fmul fast float %5998, 5.000000e-01
  %6002 = fmul fast float %5999, 5.000000e-01
  %6003 = fmul fast float %6000, 5.000000e-01
  %6004 = fadd fast float %6001, 1.000000e+00
  %6005 = fadd fast float %6002, 1.000000e+00
  %6006 = fadd fast float %6003, 1.000000e+00
  %6007 = fmul fast float %5985, %5941
  %6008 = fmul fast float %5986, %5942
  %6009 = fmul fast float %5987, %5943
  %6010 = fsub fast float 1.000000e+00, %5055
  %6011 = bitcast float %6010 to i32
  %6012 = sitofp i32 %6011 to float
  %6013 = fmul fast float %6012, 5.000000e+00
  %6014 = fadd fast float %6013, 0xC1EFBF8940000000
  %6015 = fptosi float %6014 to i32
  %6016 = bitcast i32 %6015 to float
  %6017 = fmul fast float %6016, %4375
  %6018 = fmul fast float %5933, %6017
  %6019 = fmul fast float %6018, %5990
  %6020 = fmul fast float %6019, %6004
  %6021 = fmul fast float %5934, %6017
  %6022 = fmul fast float %6021, %5990
  %6023 = fmul fast float %6022, %6005
  %6024 = fmul fast float %5935, %6017
  %6025 = fmul fast float %6024, %5990
  %6026 = fmul fast float %6025, %6006
  %6027 = fadd fast float %6007, %4361
  %6028 = fadd fast float %6027, %6020
  %6029 = fmul fast float %6028, %4371
  %6030 = fadd fast float %6008, %4362
  %6031 = fadd fast float %6030, %6023
  %6032 = fmul fast float %6031, %4371
  %6033 = fadd fast float %6009, %4363
  %6034 = fadd fast float %6033, %6026
  %6035 = fmul fast float %6034, %4371
  %6036 = fmul fast float %5990, %5935
  %6037 = fmul fast float %5990, %5934
  %6038 = fmul fast float %5990, %5933
  %6039 = fmul fast float %5990, %4466
  %6040 = fadd fast float %6039, -1.000000e+00
  %6041 = fmul fast float %6040, %4371
  %6042 = fadd fast float %6041, 1.000000e+00
  %6043 = fmul fast float %5990, %4465
  %6044 = fadd fast float %6043, -1.000000e+00
  %6045 = fmul fast float %6044, %4371
  %6046 = fadd fast float %6045, 1.000000e+00
  %6047 = fmul fast float %5990, %4464
  %6048 = fadd fast float %6047, -1.000000e+00
  %6049 = fmul fast float %6048, %4371
  %6050 = fadd fast float %6049, 1.000000e+00
  %6051 = fmul fast float %6050, %5937
  %6052 = fmul fast float %6046, %5938
  %6053 = fmul fast float %6042, %5939
  %6054 = fadd fast float %6051, %6038
  %6055 = fmul fast float %6054, %4371
  %6056 = fadd fast float %6052, %6037
  %6057 = fmul fast float %6056, %4371
  %6058 = fadd fast float %6053, %6036
  %6059 = fmul fast float %6058, %4371
  %6060 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6061 = extractvalue %dx.types.CBufRet.f32 %6060, 3
  %6062 = fcmp fast oeq float %6061, 0.000000e+00
  br i1 %6062, label %6345, label %6063

; <label>:6063                                    ; preds = %5984
  %6064 = extractvalue %dx.types.CBufRet.f32 %6060, 0
  %6065 = extractvalue %dx.types.CBufRet.f32 %6060, 1
  %6066 = extractvalue %dx.types.CBufRet.f32 %6060, 2
  %6067 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6068 = extractvalue %dx.types.CBufRet.f32 %6067, 0
  %6069 = extractvalue %dx.types.CBufRet.f32 %6067, 1
  %6070 = extractvalue %dx.types.CBufRet.f32 %6067, 2
  %6071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6072 = extractvalue %dx.types.CBufRet.f32 %6071, 0
  %6073 = extractvalue %dx.types.CBufRet.f32 %6071, 1
  %6074 = call float @dx.op.dot3.f32(i32 55, float %6068, float %6069, float %6070, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6075 = select i1 %163, float %6072, float %6068
  %6076 = select i1 %163, float %6074, float %6069
  %6077 = select i1 %163, float %6073, float %6070
  %6078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6079 = extractvalue %dx.types.CBufRet.f32 %6078, 1
  %6080 = fcmp fast une float %6079, 0.000000e+00
  br i1 %6080, label %6081, label %6098

; <label>:6081                                    ; preds = %6063
  %6082 = fptoui float %66 to i32
  %6083 = fptoui float %67 to i32
  %6084 = lshr i32 %6082, 4
  %6085 = lshr i32 %6083, 4
  %6086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6087 = extractvalue %dx.types.CBufRet.f32 %6086, 0
  %6088 = fptoui float %6087 to i32
  %6089 = add i32 %6088, 15
  %6090 = lshr i32 %6089, 4
  %6091 = mul i32 %6090, %6085
  %6092 = add i32 %6091, %6084
  %6093 = shl i32 %6092, 3
  %6094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %6093, i32 undef)  ; BufferLoad(srv,index,wot)
  %6095 = extractvalue %dx.types.ResRet.i32 %6094, 0
  %6096 = and i32 %6095, -268435456
  %6097 = icmp eq i32 %6096, -1342177280
  br i1 %6097, label %6108, label %6098

; <label>:6098                                    ; preds = %6081, %6063
  %6099 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %6100 = extractvalue %dx.types.CBufRet.f32 %6099, 2
  %6101 = extractvalue %dx.types.CBufRet.f32 %6099, 3
  %6102 = fmul fast float %6100, %66
  %6103 = fmul fast float %6101, %67
  %6104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %6102, float %6103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6105 = extractvalue %dx.types.ResRet.f32 %6104, 0
  %6106 = extractvalue %dx.types.ResRet.f32 %6104, 1
  %6107 = extractvalue %dx.types.ResRet.f32 %6104, 2
  br label %6108

; <label>:6108                                    ; preds = %6098, %6081
  %6109 = phi float [ %6105, %6098 ], [ 0.000000e+00, %6081 ]
  %6110 = phi float [ %6106, %6098 ], [ 0.000000e+00, %6081 ]
  %6111 = phi float [ %6107, %6098 ], [ 0.000000e+00, %6081 ]
  %6112 = call float @dx.op.binary.f32(i32 36, float %6110, float %6111)  ; FMin(a,b)
  %6113 = call float @dx.op.binary.f32(i32 36, float %6109, float %6112)  ; FMin(a,b)
  %6114 = fcmp fast ogt float %6113, 0.000000e+00
  br i1 %6114, label %6115, label %6345, !dx.controlflow.hints !77

; <label>:6115                                    ; preds = %6108
  %6116 = bitcast i32 %5067 to float
  %6117 = fmul fast float %6109, %6075
  %6118 = fmul fast float %6110, %6076
  %6119 = fmul fast float %6111, %6077
  %6120 = fsub fast float %6064, %5041
  %6121 = fsub fast float %6065, %5040
  %6122 = fsub fast float %6066, %5039
  %6123 = call float @dx.op.dot3.f32(i32 55, float %6120, float %6121, float %6122, float %6120, float %6121, float %6122)  ; Dot3(ax,ay,az,bx,by,bz)
  %6124 = call float @dx.op.unary.f32(i32 25, float %6123)  ; Rsqrt(value)
  %6125 = fmul fast float %6124, %6120
  %6126 = fmul fast float %6124, %6121
  %6127 = fmul fast float %6124, %6122
  %6128 = call float @dx.op.dot3.f32(i32 55, float %6064, float %6065, float %6066, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %6129 = call float @dx.op.dot3.f32(i32 55, float %5038, float %5037, float %5036, float %6125, float %6126, float %6127)  ; Dot3(ax,ay,az,bx,by,bz)
  %6130 = call float @dx.op.unary.f32(i32 7, float %6128)  ; Saturate(value)
  %6131 = fmul fast float %6130, %6130
  %6132 = fmul fast float %6131, %6116
  %6133 = call float @dx.op.unary.f32(i32 7, float %6132)  ; Saturate(value)
  %6134 = fmul fast float %6133, %6130
  %6135 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float %6125, float %6126, float %6127)  ; Dot3(ax,ay,az,bx,by,bz)
  %6136 = fmul fast float %6135, %6135
  %6137 = call float @dx.op.unary.f32(i32 6, float %6128)  ; FAbs(value)
  %6138 = fsub fast float 1.000000e+00, %5051
  %6139 = call float @dx.op.binary.f32(i32 35, float %6138, float 0x3F847AE140000000)  ; FMax(a,b)
  %6140 = fmul fast float %6139, %6139
  %6141 = fmul fast float %6140, %6140
  %6142 = fsub fast float 1.000000e+00, %6141
  %6143 = fmul fast float %5055, %5055
  %6144 = fmul fast float %6143, %6142
  %6145 = fadd fast float %6144, %6141
  %6146 = bitcast float %6145 to i32
  %6147 = ashr i32 %6146, 1
  %6148 = add nsw i32 %6147, 532487669
  %6149 = bitcast i32 %6148 to float
  %6150 = fadd fast float %6149, %5055
  %6151 = fmul fast float %6141, %6136
  %6152 = fsub fast float 1.000000e+00, %6136
  %6153 = fadd fast float %6152, %6151
  %6154 = fmul fast float %6137, %6137
  %6155 = fmul fast float %6154, %6142
  %6156 = fadd fast float %6155, %6141
  %6157 = bitcast float %6156 to i32
  %6158 = ashr i32 %6157, 1
  %6159 = add nsw i32 %6158, 532487669
  %6160 = bitcast i32 %6159 to float
  %6161 = fadd fast float %6160, %6137
  %6162 = fmul fast float %6153, %6153
  %6163 = fmul fast float %6162, %6150
  %6164 = fmul fast float %6163, %6161
  %6165 = fdiv fast float 0x3FF0A00000000000, %6164
  %6166 = fmul fast float %6165, %6141
  %6167 = call float @dx.op.unary.f32(i32 6, float %6129)  ; FAbs(value)
  %6168 = fsub fast float 1.000000e+00, %6167
  %6169 = bitcast float %6168 to i32
  %6170 = sitofp i32 %6169 to float
  %6171 = fmul fast float %6170, 5.000000e+00
  %6172 = fadd fast float %6171, 0xC1EFBF8940000000
  %6173 = fptosi float %6172 to i32
  %6174 = bitcast i32 %6173 to float
  %6175 = fsub fast float 1.000000e+00, %5045
  %6176 = fsub fast float 1.000000e+00, %5046
  %6177 = fsub fast float 1.000000e+00, %5053
  %6178 = fmul fast float %6174, %6175
  %6179 = fmul fast float %6174, %6176
  %6180 = fmul fast float %6174, %6177
  %6181 = fadd fast float %6178, %5045
  %6182 = fadd fast float %6179, %5046
  %6183 = fadd fast float %6180, %5053
  br i1 %5957, label %6184, label %6207

; <label>:6184                                    ; preds = %6115
  %6185 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4374, float %6167, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6186 = extractvalue %dx.types.ResRet.f32 %6185, 0
  %6187 = extractvalue %dx.types.ResRet.f32 %6185, 1
  %6188 = extractvalue %dx.types.ResRet.f32 %6185, 2
  %6189 = fadd fast float %6186, -5.000000e-01
  %6190 = fadd fast float %6187, -5.000000e-01
  %6191 = fadd fast float %6188, -5.000000e-01
  %6192 = fmul fast float %5045, 4.000000e+00
  %6193 = fmul fast float %6192, %6175
  %6194 = fmul fast float %6193, %6189
  %6195 = fmul fast float %5046, 4.000000e+00
  %6196 = fmul fast float %6195, %6176
  %6197 = fmul fast float %6196, %6190
  %6198 = fmul fast float %5053, 4.000000e+00
  %6199 = fmul fast float %6198, %6177
  %6200 = fmul fast float %6199, %6191
  %6201 = fadd fast float %6194, %6181
  %6202 = fadd fast float %6197, %6182
  %6203 = fadd fast float %6200, %6183
  %6204 = call float @dx.op.unary.f32(i32 7, float %6201)  ; Saturate(value)
  %6205 = call float @dx.op.unary.f32(i32 7, float %6202)  ; Saturate(value)
  %6206 = call float @dx.op.unary.f32(i32 7, float %6203)  ; Saturate(value)
  br label %6207

; <label>:6207                                    ; preds = %6184, %6115
  %6208 = phi float [ %6204, %6184 ], [ %6181, %6115 ]
  %6209 = phi float [ %6205, %6184 ], [ %6182, %6115 ]
  %6210 = phi float [ %6206, %6184 ], [ %6183, %6115 ]
  %6211 = fmul fast float %6128, 9.843750e-01
  %6212 = fadd fast float %6211, 7.812500e-03
  %6213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %6212, float %5947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6214 = extractvalue %dx.types.ResRet.f32 %6213, 2
  %6215 = extractvalue %dx.types.ResRet.f32 %6213, 3
  %6216 = fmul fast float %6214, %5045
  %6217 = fmul fast float %6214, %5046
  %6218 = fmul fast float %6214, %5053
  %6219 = fadd fast float %6216, %6215
  %6220 = fadd fast float %6217, %6215
  %6221 = fadd fast float %6218, %6215
  br i1 %5957, label %6222, label %6245

; <label>:6222                                    ; preds = %6207
  %6223 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4374, float %6128, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6224 = extractvalue %dx.types.ResRet.f32 %6223, 0
  %6225 = extractvalue %dx.types.ResRet.f32 %6223, 1
  %6226 = extractvalue %dx.types.ResRet.f32 %6223, 2
  %6227 = fadd fast float %6224, -5.000000e-01
  %6228 = fadd fast float %6225, -5.000000e-01
  %6229 = fadd fast float %6226, -5.000000e-01
  %6230 = fmul fast float %5045, 4.000000e+00
  %6231 = fmul fast float %6230, %6175
  %6232 = fmul fast float %6231, %6227
  %6233 = fmul fast float %5046, 4.000000e+00
  %6234 = fmul fast float %6233, %6176
  %6235 = fmul fast float %6234, %6228
  %6236 = fmul fast float %5053, 4.000000e+00
  %6237 = fmul fast float %6236, %6177
  %6238 = fmul fast float %6237, %6229
  %6239 = fadd fast float %6232, %6219
  %6240 = fadd fast float %6235, %6220
  %6241 = fadd fast float %6238, %6221
  %6242 = call float @dx.op.unary.f32(i32 7, float %6239)  ; Saturate(value)
  %6243 = call float @dx.op.unary.f32(i32 7, float %6240)  ; Saturate(value)
  %6244 = call float @dx.op.unary.f32(i32 7, float %6241)  ; Saturate(value)
  br label %6245

; <label>:6245                                    ; preds = %6222, %6207
  %6246 = phi float [ %6242, %6222 ], [ %6219, %6207 ]
  %6247 = phi float [ %6243, %6222 ], [ %6220, %6207 ]
  %6248 = phi float [ %6244, %6222 ], [ %6221, %6207 ]
  %6249 = call float @dx.op.binary.f32(i32 35, float %6247, float %6248)  ; FMax(a,b)
  %6250 = call float @dx.op.binary.f32(i32 35, float %6246, float %6249)  ; FMax(a,b)
  %6251 = fsub fast float 1.000000e+00, %6250
  %6252 = fsub fast float -0.000000e+00, %5048
  %6253 = fsub fast float -0.000000e+00, %5049
  %6254 = fsub fast float -0.000000e+00, %5050
  %6255 = call float @dx.op.dot3.f32(i32 55, float %6064, float %6065, float %6066, float %6252, float %6253, float %6254)  ; Dot3(ax,ay,az,bx,by,bz)
  %6256 = call float @dx.op.unary.f32(i32 7, float %6255)  ; Saturate(value)
  %6257 = fmul fast float %6256, 9.843750e-01
  %6258 = fadd fast float %6257, 7.812500e-03
  %6259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %6258, float %5947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6260 = extractvalue %dx.types.ResRet.f32 %6259, 2
  %6261 = extractvalue %dx.types.ResRet.f32 %6259, 3
  %6262 = fmul fast float %6260, %5045
  %6263 = fmul fast float %6260, %5046
  %6264 = fmul fast float %6260, %5053
  %6265 = fadd fast float %6262, %6261
  %6266 = fadd fast float %6263, %6261
  %6267 = fadd fast float %6264, %6261
  br i1 %5957, label %6268, label %6291

; <label>:6268                                    ; preds = %6245
  %6269 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4374, float %6256, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6270 = extractvalue %dx.types.ResRet.f32 %6269, 0
  %6271 = extractvalue %dx.types.ResRet.f32 %6269, 1
  %6272 = extractvalue %dx.types.ResRet.f32 %6269, 2
  %6273 = fadd fast float %6270, -5.000000e-01
  %6274 = fadd fast float %6271, -5.000000e-01
  %6275 = fadd fast float %6272, -5.000000e-01
  %6276 = fmul fast float %5045, 4.000000e+00
  %6277 = fmul fast float %6276, %6175
  %6278 = fmul fast float %6277, %6273
  %6279 = fmul fast float %5046, 4.000000e+00
  %6280 = fmul fast float %6279, %6176
  %6281 = fmul fast float %6280, %6274
  %6282 = fmul fast float %5053, 4.000000e+00
  %6283 = fmul fast float %6282, %6177
  %6284 = fmul fast float %6283, %6275
  %6285 = fadd fast float %6278, %6265
  %6286 = fadd fast float %6281, %6266
  %6287 = fadd fast float %6284, %6267
  %6288 = call float @dx.op.unary.f32(i32 7, float %6285)  ; Saturate(value)
  %6289 = call float @dx.op.unary.f32(i32 7, float %6286)  ; Saturate(value)
  %6290 = call float @dx.op.unary.f32(i32 7, float %6287)  ; Saturate(value)
  br label %6291

; <label>:6291                                    ; preds = %6268, %6245
  %6292 = phi float [ %6288, %6268 ], [ %6265, %6245 ]
  %6293 = phi float [ %6289, %6268 ], [ %6266, %6245 ]
  %6294 = phi float [ %6290, %6268 ], [ %6267, %6245 ]
  %6295 = call float @dx.op.binary.f32(i32 35, float %6293, float %6294)  ; FMax(a,b)
  %6296 = call float @dx.op.binary.f32(i32 35, float %6292, float %6295)  ; FMax(a,b)
  %6297 = fsub fast float 1.000000e+00, %6296
  %6298 = fmul fast float %6297, %6256
  %6299 = fmul fast float %6298, %4464
  %6300 = fmul fast float %6298, %4465
  %6301 = fmul fast float %6298, %4466
  %6302 = fmul fast float %6208, %6166
  %6303 = fmul fast float %6209, %6166
  %6304 = fmul fast float %6210, %6166
  %6305 = fsub fast float 1.000000e+00, %6129
  %6306 = bitcast float %6305 to i32
  %6307 = sitofp i32 %6306 to float
  %6308 = fmul fast float %6307, 5.000000e+00
  %6309 = fadd fast float %6308, 0xC1EFBF8940000000
  %6310 = fptosi float %6309 to i32
  %6311 = bitcast i32 %6310 to float
  %6312 = fmul fast float %6311, %4375
  %6313 = fmul fast float %6251, %6312
  %6314 = fmul fast float %6313, %6004
  %6315 = fmul fast float %6313, %6005
  %6316 = fmul fast float %6313, %6006
  %6317 = fmul fast float %6251, %6134
  %6318 = fadd fast float %6314, %6302
  %6319 = fadd fast float %6315, %6303
  %6320 = fadd fast float %6316, %6304
  %6321 = fadd fast float %6299, %6317
  %6322 = fadd fast float %6300, %6317
  %6323 = fadd fast float %6301, %6317
  %6324 = fmul fast float %6321, %6117
  %6325 = fmul fast float %6322, %6118
  %6326 = fmul fast float %6323, %6119
  %6327 = fmul fast float %6134, %6117
  %6328 = fmul fast float %6327, %6318
  %6329 = fmul fast float %6134, %6118
  %6330 = fmul fast float %6329, %6319
  %6331 = fmul fast float %6134, %6119
  %6332 = fmul fast float %6331, %6320
  %6333 = fadd fast float %6324, %6054
  %6334 = fmul fast float %6333, %4371
  %6335 = fadd fast float %6325, %6056
  %6336 = fmul fast float %6335, %4371
  %6337 = fadd fast float %6326, %6058
  %6338 = fmul fast float %6337, %4371
  %6339 = fadd fast float %6328, %6028
  %6340 = fmul fast float %6339, %4371
  %6341 = fadd fast float %6330, %6031
  %6342 = fmul fast float %6341, %4371
  %6343 = fadd fast float %6332, %6034
  %6344 = fmul fast float %6343, %4371
  br label %6345

; <label>:6345                                    ; preds = %6291, %6108, %5984
  %6346 = phi float [ %6029, %5984 ], [ %6029, %6108 ], [ %6340, %6291 ]
  %6347 = phi float [ %6032, %5984 ], [ %6032, %6108 ], [ %6342, %6291 ]
  %6348 = phi float [ %6035, %5984 ], [ %6035, %6108 ], [ %6344, %6291 ]
  %6349 = phi float [ %6055, %5984 ], [ %6055, %6108 ], [ %6334, %6291 ]
  %6350 = phi float [ %6057, %5984 ], [ %6057, %6108 ], [ %6336, %6291 ]
  %6351 = phi float [ %6059, %5984 ], [ %6059, %6108 ], [ %6338, %6291 ]
  %6352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.i32 %6352, 0
  %6354 = icmp eq i32 %6353, 0
  br i1 %6354, label %6845, label %6355

; <label>:6355                                    ; preds = %6345
  %6356 = fptoui float %66 to i32
  %6357 = fptoui float %67 to i32
  %6358 = lshr i32 %6356, 4
  %6359 = lshr i32 %6357, 4
  %6360 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6361 = extractvalue %dx.types.CBufRet.i32 %6360, 0
  %6362 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6359, i32 %6361, i32 %6358)  ; UMad(a,b,c)
  %6363 = add nsw i32 %6353, -1
  %6364 = call i32 @dx.op.binary.i32(i32 37, i32 %6363, i32 0)  ; IMax(a,b)
  %6365 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %6366 = fptoui float %6365 to i32
  %6367 = lshr i32 %6366, 5
  %6368 = call i32 @dx.op.binary.i32(i32 40, i32 %6367, i32 8191)  ; UMin(a,b)
  %6369 = shl i32 %6368, 2
  %6370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6369, i32 undef)  ; BufferLoad(srv,index,wot)
  %6371 = extractvalue %dx.types.ResRet.i32 %6370, 0
  %6372 = lshr i32 %6371, 16
  %6373 = and i32 %6371, 65535
  %6374 = lshr i32 %6371, 21
  %6375 = lshr i32 %6373, 5
  %6376 = call i32 @dx.op.binary.i32(i32 40, i32 %6375, i32 %6364)  ; UMin(a,b)
  %6377 = icmp ugt i32 %6374, %6376
  br i1 %6377, label %6845, label %6378

; <label>:6378                                    ; preds = %6355
  br label %6379

; <label>:6379                                    ; preds = %6835, %6378
  %6380 = phi i32 [ %6842, %6835 ], [ %6374, %6378 ]
  %6381 = phi float [ %6836, %6835 ], [ %6346, %6378 ]
  %6382 = phi float [ %6837, %6835 ], [ %6347, %6378 ]
  %6383 = phi float [ %6838, %6835 ], [ %6348, %6378 ]
  %6384 = phi float [ %6839, %6835 ], [ %6349, %6378 ]
  %6385 = phi float [ %6840, %6835 ], [ %6350, %6378 ]
  %6386 = phi float [ %6841, %6835 ], [ %6351, %6378 ]
  %6387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6388 = extractvalue %dx.types.CBufRet.i32 %6387, 0
  %6389 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6362, i32 %6388, i32 %6380)  ; UMad(a,b,c)
  %6390 = shl i32 %6389, 2
  %6391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6390, i32 undef)  ; BufferLoad(srv,index,wot)
  %6392 = extractvalue %dx.types.ResRet.i32 %6391, 0
  %6393 = shl i32 %6380, 5
  %6394 = sub nsw i32 %6372, %6393
  %6395 = call i32 @dx.op.binary.i32(i32 37, i32 %6394, i32 0)  ; IMax(a,b)
  %6396 = call i32 @dx.op.binary.i32(i32 38, i32 %6395, i32 31)  ; IMin(a,b)
  %6397 = sub nsw i32 1, %6372
  %6398 = add nsw i32 %6397, %6373
  %6399 = call i32 @dx.op.binary.i32(i32 37, i32 %6398, i32 0)  ; IMax(a,b)
  %6400 = call i32 @dx.op.binary.i32(i32 38, i32 %6399, i32 32)  ; IMin(a,b)
  %6401 = and i32 %6400, 31
  %6402 = shl i32 -1, %6401
  %6403 = xor i32 %6402, -1
  %6404 = and i32 %6396, 31
  %6405 = shl i32 %6403, %6404
  %6406 = icmp eq i32 %6400, 32
  %6407 = select i1 %6406, i32 -1, i32 %6405
  %6408 = and i32 %6407, %6392
  %6409 = icmp eq i32 %6408, 0
  br i1 %6409, label %6835, label %6410

; <label>:6410                                    ; preds = %6379
  br label %6411

; <label>:6411                                    ; preds = %6491, %6410
  %6412 = phi i32 [ %6423, %6491 ], [ %6408, %6410 ]
  %6413 = phi float [ %6492, %6491 ], [ %6381, %6410 ]
  %6414 = phi float [ %6493, %6491 ], [ %6382, %6410 ]
  %6415 = phi float [ %6494, %6491 ], [ %6383, %6410 ]
  %6416 = phi float [ %6495, %6491 ], [ %6384, %6410 ]
  %6417 = phi float [ %6496, %6491 ], [ %6385, %6410 ]
  %6418 = phi float [ %6497, %6491 ], [ %6386, %6410 ]
  %6419 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6412)  ; FirstbitLo(value)
  %6420 = add i32 %6419, %6393
  %6421 = and i32 %6419, 31
  %6422 = shl i32 1, %6421
  %6423 = xor i32 %6422, %6412
  %6424 = mul i32 %6420, 112
  %6425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6424, i32 undef)  ; BufferLoad(srv,index,wot)
  %6426 = extractvalue %dx.types.ResRet.f32 %6425, 0
  %6427 = extractvalue %dx.types.ResRet.f32 %6425, 1
  %6428 = extractvalue %dx.types.ResRet.f32 %6425, 2
  %6429 = or i32 %6424, 12
  %6430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6429, i32 undef)  ; BufferLoad(srv,index,wot)
  %6431 = extractvalue %dx.types.ResRet.f32 %6430, 0
  %6432 = add i32 %6424, 44
  %6433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6432, i32 undef)  ; BufferLoad(srv,index,wot)
  %6434 = extractvalue %dx.types.ResRet.f32 %6433, 0
  %6435 = add i32 %6424, 48
  %6436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6435, i32 undef)  ; BufferLoad(srv,index,wot)
  %6437 = extractvalue %dx.types.ResRet.f32 %6436, 0
  %6438 = extractvalue %dx.types.ResRet.f32 %6436, 1
  %6439 = extractvalue %dx.types.ResRet.f32 %6436, 2
  %6440 = add i32 %6424, 80
  %6441 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6440, i32 undef)  ; BufferLoad(srv,index,wot)
  %6442 = extractvalue %dx.types.ResRet.f32 %6441, 1
  %6443 = extractvalue %dx.types.ResRet.f32 %6441, 2
  %6444 = call float @dx.op.dot3.f32(i32 55, float %6426, float %6427, float %6428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6445 = select i1 %163, float %6442, float %6426
  %6446 = select i1 %163, float %6444, float %6427
  %6447 = select i1 %163, float %6443, float %6428
  %6448 = fsub fast float %6437, %121
  %6449 = fsub fast float %6438, %122
  %6450 = fsub fast float %6439, %123
  %6451 = call float @dx.op.dot3.f32(i32 55, float %6448, float %6449, float %6450, float %6448, float %6449, float %6450)  ; Dot3(ax,ay,az,bx,by,bz)
  %6452 = call float @dx.op.unary.f32(i32 24, float %6451)  ; Sqrt(value)
  %6453 = fdiv fast float 1.000000e+00, %6452
  %6454 = fmul fast float %6453, %6448
  %6455 = fmul fast float %6453, %6449
  %6456 = fmul fast float %6453, %6450
  %6457 = fadd fast float %6452, %6431
  %6458 = fdiv fast float 1.000000e+00, %6457
  %6459 = fmul float %6434, %6458
  %6460 = fmul float %6459, %6459
  %6461 = call float @dx.op.unary.f32(i32 7, float %6460)  ; Saturate(value)
  %6462 = and i32 %6422, %6408
  %6463 = icmp eq i32 %6462, 0
  br i1 %6463, label %6486, label %6464, !dx.controlflow.hints !78

; <label>:6464                                    ; preds = %6411
  %6465 = lshr i32 %6356, 5
  %6466 = lshr i32 %6357, 5
  %6467 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %6465, i32 %6466, i32 %6420, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6468 = extractvalue %dx.types.ResRet.i32 %6467, 0
  %6469 = and i32 %6468, 3
  %6470 = icmp eq i32 %6469, 0
  %6471 = select i1 %6470, float 1.000000e+00, float 0.000000e+00
  %6472 = icmp eq i32 %6469, 3
  br i1 %6472, label %6473, label %6486

; <label>:6473                                    ; preds = %6464
  %6474 = lshr i32 %6468, 10
  %6475 = and i32 %6474, 8160
  %6476 = and i32 %6357, 31
  %6477 = or i32 %6475, %6476
  %6478 = lshr i32 %6468, 1
  %6479 = and i32 %6478, 16352
  %6480 = and i32 %6356, 31
  %6481 = or i32 %6479, %6480
  %6482 = lshr i32 %6468, 23
  %6483 = and i32 %6482, 255
  %6484 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %6481, i32 %6477, i32 %6483, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6485 = extractvalue %dx.types.ResRet.f32 %6484, 0
  br label %6486

; <label>:6486                                    ; preds = %6473, %6464, %6411
  %6487 = phi float [ %6485, %6473 ], [ %6471, %6464 ], [ 0.000000e+00, %6411 ]
  %6488 = call float @dx.op.binary.f32(i32 36, float %6487, float %6487)  ; FMin(a,b)
  %6489 = call float @dx.op.binary.f32(i32 36, float %6487, float %6488)  ; FMin(a,b)
  %6490 = fcmp fast ogt float %6489, 0.000000e+00
  br i1 %6490, label %6499, label %6491, !dx.controlflow.hints !79

; <label>:6491                                    ; preds = %6783, %6486
  %6492 = phi float [ %6413, %6486 ], [ %6831, %6783 ]
  %6493 = phi float [ %6414, %6486 ], [ %6832, %6783 ]
  %6494 = phi float [ %6415, %6486 ], [ %6833, %6783 ]
  %6495 = phi float [ %6416, %6486 ], [ %6822, %6783 ]
  %6496 = phi float [ %6417, %6486 ], [ %6823, %6783 ]
  %6497 = phi float [ %6418, %6486 ], [ %6824, %6783 ]
  %6498 = icmp eq i32 %6412, %6422
  br i1 %6498, label %6834, label %6411

; <label>:6499                                    ; preds = %6486
  %6500 = bitcast i32 %5067 to float
  %6501 = fmul fast float %6487, %6445
  %6502 = fmul fast float %6487, %6446
  %6503 = fmul fast float %6487, %6447
  %6504 = fsub fast float %6439, %4841
  %6505 = fcmp fast ogt float %6504, 0.000000e+00
  %6506 = fsub fast float %123, %4841
  %6507 = fcmp fast ogt float %6506, 0.000000e+00
  %6508 = xor i1 %6507, %6505
  %6509 = fsub fast float %4841, %6439
  %6510 = fmul fast float %6509, 2.000000e+00
  %6511 = fadd fast float %6510, %6439
  %6512 = select i1 %6508, float %6439, float %6511
  %6513 = fsub fast float %6512, %123
  %6514 = call float @dx.op.dot3.f32(i32 55, float %6448, float %6449, float %6513, float %6448, float %6449, float %6513)  ; Dot3(ax,ay,az,bx,by,bz)
  %6515 = call float @dx.op.unary.f32(i32 25, float %6514)  ; Rsqrt(value)
  %6516 = fmul fast float %6515, %6448
  %6517 = fmul fast float %6515, %6449
  %6518 = fmul fast float %6515, %6513
  %6519 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4849)  ; Dot3(ax,ay,az,bx,by,bz)
  %6520 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6516, float %6517, float %6518)  ; Dot3(ax,ay,az,bx,by,bz)
  %6521 = fdiv fast float 1.000000e+00, %6520
  %6522 = fmul fast float %6521, %6519
  %6523 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6506, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6524 = fcmp fast ogt float %6523, 0.000000e+00
  %6525 = fcmp fast olt float %6523, 0.000000e+00
  %6526 = zext i1 %6524 to i32
  %6527 = zext i1 %6525 to i32
  %6528 = sub nsw i32 %6526, %6527
  %6529 = sitofp i32 %6528 to float
  %6530 = fsub fast float %6512, %4841
  %6531 = call float @dx.op.dot3.f32(i32 55, float %6448, float %6449, float %6530, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6532 = fcmp fast ogt float %6531, 0.000000e+00
  %6533 = fcmp fast olt float %6531, 0.000000e+00
  %6534 = zext i1 %6532 to i32
  %6535 = zext i1 %6533 to i32
  %6536 = sub nsw i32 %6534, %6535
  %6537 = sitofp i32 %6536 to float
  %6538 = fcmp fast une float %6529, %6537
  br i1 %6538, label %6539, label %6549

; <label>:6539                                    ; preds = %6499
  %6540 = fmul fast float %6522, %6518
  %6541 = fmul fast float %6522, %6517
  %6542 = fmul fast float %6522, %6516
  %6543 = fmul fast float %6542, %6542
  %6544 = fmul fast float %6541, %6541
  %6545 = fadd fast float %6543, %6544
  %6546 = fmul fast float %6540, %6540
  %6547 = fadd fast float %6545, %6546
  %6548 = call float @dx.op.unary.f32(i32 24, float %6547)  ; Sqrt(value)
  br label %6561

; <label>:6549                                    ; preds = %6499
  %6550 = icmp slt i32 %6528, 0
  br i1 %6550, label %6551, label %6561

; <label>:6551                                    ; preds = %6549
  %6552 = fsub fast float %121, %6437
  %6553 = fsub fast float %122, %6438
  %6554 = fsub fast float %123, %6512
  %6555 = fmul fast float %6552, %6552
  %6556 = fmul fast float %6553, %6553
  %6557 = fadd fast float %6555, %6556
  %6558 = fmul fast float %6554, %6554
  %6559 = fadd fast float %6557, %6558
  %6560 = call float @dx.op.unary.f32(i32 24, float %6559)  ; Sqrt(value)
  br label %6561

; <label>:6561                                    ; preds = %6551, %6549, %6539
  %6562 = phi float [ %6548, %6539 ], [ %6560, %6551 ], [ 0.000000e+00, %6549 ]
  %6563 = and i1 %6507, %6505
  %6564 = fsub fast float -0.000000e+00, %6562
  %6565 = select i1 %6563, float -0.000000e+00, float %6564
  %6566 = fmul fast float %4842, 0x3FF7154760000000
  %6567 = fmul fast float %6566, %6565
  %6568 = fmul fast float %4843, 0x3FF7154760000000
  %6569 = fmul fast float %6568, %6565
  %6570 = fmul fast float %4844, 0x3FF7154760000000
  %6571 = fmul fast float %6570, %6565
  %6572 = call float @dx.op.unary.f32(i32 21, float %6567)  ; Exp(value)
  %6573 = call float @dx.op.unary.f32(i32 21, float %6569)  ; Exp(value)
  %6574 = call float @dx.op.unary.f32(i32 21, float %6571)  ; Exp(value)
  %6575 = call float @dx.op.unary.f32(i32 7, float %6572)  ; Saturate(value)
  %6576 = call float @dx.op.unary.f32(i32 7, float %6573)  ; Saturate(value)
  %6577 = call float @dx.op.unary.f32(i32 7, float %6574)  ; Saturate(value)
  %6578 = fmul fast float %6501, %6575
  %6579 = fmul fast float %6502, %6576
  %6580 = fmul fast float %6503, %6577
  %6581 = fsub fast float %6454, %5041
  %6582 = fsub fast float %6455, %5040
  %6583 = fsub fast float %6456, %5039
  %6584 = call float @dx.op.dot3.f32(i32 55, float %6581, float %6582, float %6583, float %6581, float %6582, float %6583)  ; Dot3(ax,ay,az,bx,by,bz)
  %6585 = call float @dx.op.unary.f32(i32 25, float %6584)  ; Rsqrt(value)
  %6586 = fmul fast float %6585, %6581
  %6587 = fmul fast float %6585, %6582
  %6588 = fmul fast float %6585, %6583
  %6589 = call float @dx.op.dot3.f32(i32 55, float %6454, float %6455, float %6456, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %6590 = call float @dx.op.dot3.f32(i32 55, float %5038, float %5037, float %5036, float %6586, float %6587, float %6588)  ; Dot3(ax,ay,az,bx,by,bz)
  %6591 = call float @dx.op.unary.f32(i32 7, float %6589)  ; Saturate(value)
  %6592 = fmul fast float %6591, %6461
  %6593 = fmul fast float %6591, %6591
  %6594 = fmul fast float %6593, %6500
  %6595 = call float @dx.op.unary.f32(i32 7, float %6594)  ; Saturate(value)
  %6596 = fmul fast float %6592, %6595
  %6597 = bitcast float %6451 to i32
  %6598 = ashr i32 %6597, 1
  %6599 = sub nsw i32 1597463007, %6598
  %6600 = bitcast i32 %6599 to float
  %6601 = fmul fast float %6600, %6448
  %6602 = fmul fast float %6600, %6449
  %6603 = fmul fast float %6600, %6450
  %6604 = fsub fast float %6601, %5041
  %6605 = fsub fast float %6602, %5040
  %6606 = fsub fast float %6603, %5039
  %6607 = call float @dx.op.dot3.f32(i32 55, float %6604, float %6605, float %6606, float %6604, float %6605, float %6606)  ; Dot3(ax,ay,az,bx,by,bz)
  %6608 = call float @dx.op.unary.f32(i32 25, float %6607)  ; Rsqrt(value)
  %6609 = fmul fast float %6604, %6608
  %6610 = fmul fast float %6605, %6608
  %6611 = fmul fast float %6606, %6608
  %6612 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float %6609, float %6610, float %6611)  ; Dot3(ax,ay,az,bx,by,bz)
  %6613 = fmul fast float %6612, %6612
  %6614 = call float @dx.op.unary.f32(i32 6, float %6589)  ; FAbs(value)
  %6615 = fsub fast float 1.000000e+00, %5051
  %6616 = call float @dx.op.binary.f32(i32 35, float %6615, float 0x3F847AE140000000)  ; FMax(a,b)
  %6617 = fmul fast float %6616, %6616
  %6618 = fmul fast float %6617, %6617
  %6619 = fsub fast float 1.000000e+00, %6618
  %6620 = fmul fast float %5055, %5055
  %6621 = fmul fast float %6620, %6619
  %6622 = fadd fast float %6621, %6618
  %6623 = bitcast float %6622 to i32
  %6624 = ashr i32 %6623, 1
  %6625 = add nsw i32 %6624, 532487669
  %6626 = bitcast i32 %6625 to float
  %6627 = fadd fast float %6626, %5055
  %6628 = fmul fast float %6618, %6613
  %6629 = fsub fast float 1.000000e+00, %6613
  %6630 = fadd fast float %6629, %6628
  %6631 = fmul fast float %6614, %6614
  %6632 = fmul fast float %6631, %6619
  %6633 = fadd fast float %6632, %6618
  %6634 = bitcast float %6633 to i32
  %6635 = ashr i32 %6634, 1
  %6636 = add nsw i32 %6635, 532487669
  %6637 = bitcast i32 %6636 to float
  %6638 = fadd fast float %6637, %6614
  %6639 = fmul fast float %6630, %6630
  %6640 = fmul fast float %6639, %6627
  %6641 = fmul fast float %6640, %6638
  %6642 = fdiv fast float 1.000000e+00, %6641
  %6643 = bitcast float %6618 to i32
  %6644 = sitofp i32 %6643 to float
  %6645 = fmul fast float %6644, 0x3FE7F73180000000
  %6646 = fadd fast float %6645, 0x41AFE27C40000000
  %6647 = fptosi float %6646 to i32
  %6648 = bitcast i32 %6647 to float
  %6649 = fmul fast float %6434, 0x3FD80E9D60000000
  %6650 = fmul fast float %6649, %6600
  %6651 = fadd fast float %6648, %6650
  %6652 = bitcast float %6651 to i32
  %6653 = sub nsw i32 2129859010, %6652
  %6654 = bitcast i32 %6653 to float
  %6655 = fmul fast float %6618, %6642
  %6656 = fmul fast float %6655, %6648
  %6657 = fmul fast float %6656, %6654
  %6658 = call float @dx.op.unary.f32(i32 6, float %6590)  ; FAbs(value)
  %6659 = fsub fast float 1.000000e+00, %6658
  %6660 = bitcast float %6659 to i32
  %6661 = sitofp i32 %6660 to float
  %6662 = fmul fast float %6661, 5.000000e+00
  %6663 = fadd fast float %6662, 0xC1EFBF8940000000
  %6664 = fptosi float %6663 to i32
  %6665 = bitcast i32 %6664 to float
  %6666 = fsub fast float 1.000000e+00, %5045
  %6667 = fsub fast float 1.000000e+00, %5046
  %6668 = fsub fast float 1.000000e+00, %5053
  %6669 = fmul fast float %6665, %6666
  %6670 = fmul fast float %6665, %6667
  %6671 = fmul fast float %6665, %6668
  %6672 = fadd fast float %6669, %5045
  %6673 = fadd fast float %6670, %5046
  %6674 = fadd fast float %6671, %5053
  br i1 %5957, label %6675, label %6698

; <label>:6675                                    ; preds = %6561
  %6676 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4374, float %6658, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6677 = extractvalue %dx.types.ResRet.f32 %6676, 0
  %6678 = extractvalue %dx.types.ResRet.f32 %6676, 1
  %6679 = extractvalue %dx.types.ResRet.f32 %6676, 2
  %6680 = fadd fast float %6677, -5.000000e-01
  %6681 = fadd fast float %6678, -5.000000e-01
  %6682 = fadd fast float %6679, -5.000000e-01
  %6683 = fmul fast float %5045, 4.000000e+00
  %6684 = fmul fast float %6683, %6666
  %6685 = fmul fast float %6684, %6680
  %6686 = fmul fast float %5046, 4.000000e+00
  %6687 = fmul fast float %6686, %6667
  %6688 = fmul fast float %6687, %6681
  %6689 = fmul fast float %5053, 4.000000e+00
  %6690 = fmul fast float %6689, %6668
  %6691 = fmul fast float %6690, %6682
  %6692 = fadd fast float %6685, %6672
  %6693 = fadd fast float %6688, %6673
  %6694 = fadd fast float %6691, %6674
  %6695 = call float @dx.op.unary.f32(i32 7, float %6692)  ; Saturate(value)
  %6696 = call float @dx.op.unary.f32(i32 7, float %6693)  ; Saturate(value)
  %6697 = call float @dx.op.unary.f32(i32 7, float %6694)  ; Saturate(value)
  br label %6698

; <label>:6698                                    ; preds = %6675, %6561
  %6699 = phi float [ %6695, %6675 ], [ %6672, %6561 ]
  %6700 = phi float [ %6696, %6675 ], [ %6673, %6561 ]
  %6701 = phi float [ %6697, %6675 ], [ %6674, %6561 ]
  %6702 = fmul fast float %6589, 9.843750e-01
  %6703 = fadd fast float %6702, 7.812500e-03
  %6704 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %6703, float %5947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6705 = extractvalue %dx.types.ResRet.f32 %6704, 2
  %6706 = extractvalue %dx.types.ResRet.f32 %6704, 3
  %6707 = fmul fast float %6705, %5045
  %6708 = fmul fast float %6705, %5046
  %6709 = fmul fast float %6705, %5053
  %6710 = fadd fast float %6707, %6706
  %6711 = fadd fast float %6708, %6706
  %6712 = fadd fast float %6709, %6706
  br i1 %5957, label %6713, label %6736

; <label>:6713                                    ; preds = %6698
  %6714 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4374, float %6589, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6715 = extractvalue %dx.types.ResRet.f32 %6714, 0
  %6716 = extractvalue %dx.types.ResRet.f32 %6714, 1
  %6717 = extractvalue %dx.types.ResRet.f32 %6714, 2
  %6718 = fadd fast float %6715, -5.000000e-01
  %6719 = fadd fast float %6716, -5.000000e-01
  %6720 = fadd fast float %6717, -5.000000e-01
  %6721 = fmul fast float %5045, 4.000000e+00
  %6722 = fmul fast float %6721, %6666
  %6723 = fmul fast float %6722, %6718
  %6724 = fmul fast float %5046, 4.000000e+00
  %6725 = fmul fast float %6724, %6667
  %6726 = fmul fast float %6725, %6719
  %6727 = fmul fast float %5053, 4.000000e+00
  %6728 = fmul fast float %6727, %6668
  %6729 = fmul fast float %6728, %6720
  %6730 = fadd fast float %6723, %6710
  %6731 = fadd fast float %6726, %6711
  %6732 = fadd fast float %6729, %6712
  %6733 = call float @dx.op.unary.f32(i32 7, float %6730)  ; Saturate(value)
  %6734 = call float @dx.op.unary.f32(i32 7, float %6731)  ; Saturate(value)
  %6735 = call float @dx.op.unary.f32(i32 7, float %6732)  ; Saturate(value)
  br label %6736

; <label>:6736                                    ; preds = %6713, %6698
  %6737 = phi float [ %6733, %6713 ], [ %6710, %6698 ]
  %6738 = phi float [ %6734, %6713 ], [ %6711, %6698 ]
  %6739 = phi float [ %6735, %6713 ], [ %6712, %6698 ]
  %6740 = call float @dx.op.binary.f32(i32 35, float %6738, float %6739)  ; FMax(a,b)
  %6741 = call float @dx.op.binary.f32(i32 35, float %6737, float %6740)  ; FMax(a,b)
  %6742 = fsub fast float 1.000000e+00, %6741
  %6743 = fsub fast float -0.000000e+00, %5048
  %6744 = fsub fast float -0.000000e+00, %5049
  %6745 = fsub fast float -0.000000e+00, %5050
  %6746 = call float @dx.op.dot3.f32(i32 55, float %6454, float %6455, float %6456, float %6743, float %6744, float %6745)  ; Dot3(ax,ay,az,bx,by,bz)
  %6747 = call float @dx.op.unary.f32(i32 7, float %6746)  ; Saturate(value)
  %6748 = fmul fast float %6747, %6461
  %6749 = fmul fast float %6747, 9.843750e-01
  %6750 = fadd fast float %6749, 7.812500e-03
  %6751 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %6750, float %5947, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6752 = extractvalue %dx.types.ResRet.f32 %6751, 2
  %6753 = extractvalue %dx.types.ResRet.f32 %6751, 3
  %6754 = fmul fast float %6752, %5045
  %6755 = fmul fast float %6752, %5046
  %6756 = fmul fast float %6752, %5053
  %6757 = fadd fast float %6754, %6753
  %6758 = fadd fast float %6755, %6753
  %6759 = fadd fast float %6756, %6753
  br i1 %5957, label %6760, label %6783

; <label>:6760                                    ; preds = %6736
  %6761 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4374, float %6747, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6762 = extractvalue %dx.types.ResRet.f32 %6761, 0
  %6763 = extractvalue %dx.types.ResRet.f32 %6761, 1
  %6764 = extractvalue %dx.types.ResRet.f32 %6761, 2
  %6765 = fadd fast float %6762, -5.000000e-01
  %6766 = fadd fast float %6763, -5.000000e-01
  %6767 = fadd fast float %6764, -5.000000e-01
  %6768 = fmul fast float %5045, 4.000000e+00
  %6769 = fmul fast float %6768, %6666
  %6770 = fmul fast float %6769, %6765
  %6771 = fmul fast float %5046, 4.000000e+00
  %6772 = fmul fast float %6771, %6667
  %6773 = fmul fast float %6772, %6766
  %6774 = fmul fast float %5053, 4.000000e+00
  %6775 = fmul fast float %6774, %6668
  %6776 = fmul fast float %6775, %6767
  %6777 = fadd fast float %6770, %6757
  %6778 = fadd fast float %6773, %6758
  %6779 = fadd fast float %6776, %6759
  %6780 = call float @dx.op.unary.f32(i32 7, float %6777)  ; Saturate(value)
  %6781 = call float @dx.op.unary.f32(i32 7, float %6778)  ; Saturate(value)
  %6782 = call float @dx.op.unary.f32(i32 7, float %6779)  ; Saturate(value)
  br label %6783

; <label>:6783                                    ; preds = %6760, %6736
  %6784 = phi float [ %6780, %6760 ], [ %6757, %6736 ]
  %6785 = phi float [ %6781, %6760 ], [ %6758, %6736 ]
  %6786 = phi float [ %6782, %6760 ], [ %6759, %6736 ]
  %6787 = call float @dx.op.binary.f32(i32 35, float %6785, float %6786)  ; FMax(a,b)
  %6788 = call float @dx.op.binary.f32(i32 35, float %6784, float %6787)  ; FMax(a,b)
  %6789 = fsub fast float 1.000000e+00, %6788
  %6790 = fmul fast float %6748, %6789
  %6791 = fmul fast float %6790, %4464
  %6792 = fmul fast float %6790, %4465
  %6793 = fmul fast float %6790, %4466
  %6794 = fmul fast float %6699, %6657
  %6795 = fmul fast float %6700, %6657
  %6796 = fmul fast float %6701, %6657
  %6797 = fsub fast float 1.000000e+00, %6590
  %6798 = bitcast float %6797 to i32
  %6799 = sitofp i32 %6798 to float
  %6800 = fmul fast float %6799, 5.000000e+00
  %6801 = fadd fast float %6800, 0xC1EFBF8940000000
  %6802 = fptosi float %6801 to i32
  %6803 = bitcast i32 %6802 to float
  %6804 = fmul fast float %6803, %4375
  %6805 = fmul fast float %6742, %6804
  %6806 = fmul fast float %6805, %6004
  %6807 = fmul fast float %6805, %6005
  %6808 = fmul fast float %6805, %6006
  %6809 = fmul fast float %6742, %6596
  %6810 = fadd fast float %6806, %6794
  %6811 = fadd fast float %6807, %6795
  %6812 = fadd fast float %6808, %6796
  %6813 = fadd fast float %6791, %6809
  %6814 = fadd fast float %6792, %6809
  %6815 = fadd fast float %6793, %6809
  %6816 = fmul fast float %6578, %4371
  %6817 = fmul fast float %6816, %6813
  %6818 = fmul fast float %6579, %4371
  %6819 = fmul fast float %6818, %6814
  %6820 = fmul fast float %6580, %4371
  %6821 = fmul fast float %6820, %6815
  %6822 = fadd fast float %6817, %6416
  %6823 = fadd fast float %6819, %6417
  %6824 = fadd fast float %6821, %6418
  %6825 = fmul fast float %6816, %6596
  %6826 = fmul fast float %6825, %6810
  %6827 = fmul fast float %6818, %6596
  %6828 = fmul fast float %6827, %6811
  %6829 = fmul fast float %6820, %6596
  %6830 = fmul fast float %6829, %6812
  %6831 = fadd fast float %6826, %6413
  %6832 = fadd fast float %6828, %6414
  %6833 = fadd fast float %6830, %6415
  br label %6491

; <label>:6834                                    ; preds = %6491
  br label %6835

; <label>:6835                                    ; preds = %6834, %6379
  %6836 = phi float [ %6381, %6379 ], [ %6492, %6834 ]
  %6837 = phi float [ %6382, %6379 ], [ %6493, %6834 ]
  %6838 = phi float [ %6383, %6379 ], [ %6494, %6834 ]
  %6839 = phi float [ %6384, %6379 ], [ %6495, %6834 ]
  %6840 = phi float [ %6385, %6379 ], [ %6496, %6834 ]
  %6841 = phi float [ %6386, %6379 ], [ %6497, %6834 ]
  %6842 = add i32 %6380, 1
  %6843 = icmp ugt i32 %6842, %6376
  br i1 %6843, label %6844, label %6379

; <label>:6844                                    ; preds = %6835
  br label %6845

; <label>:6845                                    ; preds = %6844, %6355, %6345
  %6846 = phi float [ %6346, %6345 ], [ %6346, %6355 ], [ %6836, %6844 ]
  %6847 = phi float [ %6347, %6345 ], [ %6347, %6355 ], [ %6837, %6844 ]
  %6848 = phi float [ %6348, %6345 ], [ %6348, %6355 ], [ %6838, %6844 ]
  %6849 = phi float [ %6349, %6345 ], [ %6349, %6355 ], [ %6839, %6844 ]
  %6850 = phi float [ %6350, %6345 ], [ %6350, %6355 ], [ %6840, %6844 ]
  %6851 = phi float [ %6351, %6345 ], [ %6351, %6355 ], [ %6841, %6844 ]
  %6852 = call float @dx.op.unary.f32(i32 24, float %5042)  ; Sqrt(value)
  %6853 = call float @dx.op.unary.f32(i32 24, float %5043)  ; Sqrt(value)
  %6854 = call float @dx.op.unary.f32(i32 24, float %5044)  ; Sqrt(value)
  %6855 = fmul fast float %6852, %6849
  %6856 = fmul fast float %6853, %6850
  %6857 = extractvalue %dx.types.CBufRet.f32 %5669, 0
  br i1 %163, label %6858, label %6878

; <label>:6858                                    ; preds = %6845
  %6859 = fadd fast float %6851, %4377
  %6860 = fmul fast float %6859, %4378
  %6861 = fsub fast float 1.000000e+00, %4378
  %6862 = call float @dx.op.unary.f32(i32 7, float %6861)  ; Saturate(value)
  %6863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6864 = extractvalue %dx.types.CBufRet.f32 %6863, 3
  %6865 = fmul fast float %6864, %6862
  %6866 = fadd fast float %6865, %6860
  %6867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6868 = extractvalue %dx.types.CBufRet.f32 %6867, 0
  %6869 = fmul fast float %6868, %6010
  %6870 = fsub fast float %6866, %6869
  %6871 = fadd fast float %6856, %6855
  %6872 = fmul fast float %6857, %6871
  %6873 = extractvalue %dx.types.CBufRet.f32 %6863, 1
  %6874 = fsub fast float %6870, %6873
  %6875 = extractvalue %dx.types.CBufRet.f32 %6863, 2
  %6876 = fmul fast float %6874, %6875
  %6877 = call float @dx.op.unary.f32(i32 7, float %6876)  ; Saturate(value)
  br label %6894

; <label>:6878                                    ; preds = %6845
  %6879 = fmul fast float %6854, %6851
  %6880 = fmul fast float %6857, %6855
  %6881 = fmul fast float %6857, %6856
  %6882 = fmul fast float %6879, %6857
  %6883 = add i32 %38, 356
  %6884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %6883, i32 undef)  ; BufferLoad(srv,index,wot)
  %6885 = extractvalue %dx.types.ResRet.i32 %6884, 0
  %6886 = and i32 %6885, 32
  %6887 = icmp eq i32 %6886, 0
  br i1 %6887, label %6894, label %6888

; <label>:6888                                    ; preds = %6878
  %6889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6890 = extractvalue %dx.types.CBufRet.f32 %6889, 0
  %6891 = fmul fast float %6890, 0x3FE99999A0000000
  %6892 = fadd fast float %6890, %6880
  %6893 = fadd fast float %6891, %6882
  br label %6894

; <label>:6894                                    ; preds = %6888, %6878, %6858
  %6895 = phi float [ %6872, %6858 ], [ %6892, %6888 ], [ %6880, %6878 ]
  %6896 = phi float [ %6877, %6858 ], [ %6881, %6888 ], [ %6881, %6878 ]
  %6897 = phi float [ 1.000000e+00, %6858 ], [ %6893, %6888 ], [ %6882, %6878 ]
  %6898 = fmul fast float %6857, %6847
  %6899 = fmul fast float %6857, %6848
  %6900 = fadd fast float %6847, %6846
  %6901 = select i1 %163, float %6900, float %6846
  %6902 = fmul float %6901, %6857
  %6903 = select i1 %163, float 0.000000e+00, float %6898
  %6904 = select i1 %163, float 0.000000e+00, float %6899
  %6905 = fmul fast float %6895, %6852
  %6906 = fmul fast float %6896, %6853
  %6907 = fmul fast float %6897, %6854
  %6908 = fadd fast float %6902, %6905
  %6909 = fadd fast float %6903, %6906
  %6910 = fadd fast float %6904, %6907
  %6911 = select i1 %163, float %6896, float %6909
  %6912 = select i1 %163, float %6897, float %6910
  %6913 = call float @dx.op.binary.f32(i32 36, float %6908, float 3.225500e+04)  ; FMin(a,b)
  %6914 = call float @dx.op.binary.f32(i32 36, float %6911, float 3.225500e+04)  ; FMin(a,b)
  %6915 = call float @dx.op.binary.f32(i32 36, float %6912, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6913)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6914)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6915)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

