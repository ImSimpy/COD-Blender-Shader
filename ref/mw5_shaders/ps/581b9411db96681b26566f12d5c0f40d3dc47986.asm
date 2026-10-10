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
; shader hash: 34a555632d27c43126524ceaf5d0ed2a
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
  br i1 %399, label %887, label %400

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
  %847 = and i32 %846, 26624
  %848 = icmp eq i32 %847, 0
  br i1 %848, label %872, label %849

; <label>:849                                     ; preds = %841
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 16384
  %853 = icmp eq i32 %852, 0
  br i1 %853, label %872, label %854

; <label>:854                                     ; preds = %849
  %855 = and i32 %851, 1048576
  %856 = icmp ne i32 %855, 0
  %857 = add i32 %38, 456
  %858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.i32 %858, 0
  %860 = add i32 %859, 0
  %861 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %860, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %862 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %861, %dx.types.Handle %63, float %499, float %500, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %863 = extractvalue %dx.types.ResRet.f32 %862, 0
  %864 = add i32 %38, 96
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = lshr i32 %866, 24
  %868 = uitofp i32 %867 to float
  %869 = fmul fast float %863, 0x3F70101020000000
  %870 = select i1 %856, float 0x3F70101020000000, float %869
  %871 = fmul fast float %870, %868
  br label %872

; <label>:872                                     ; preds = %854, %849, %841
  %873 = phi float [ %871, %854 ], [ 0.000000e+00, %849 ], [ 0.000000e+00, %841 ]
  %874 = add i32 %38, 96
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = and i32 %876, 255
  %878 = uitofp i32 %877 to float
  %879 = lshr i32 %876, 8
  %880 = and i32 %879, 255
  %881 = uitofp i32 %880 to float
  %882 = call float @dx.op.dot3.f32(i32 55, float %714, float %715, float %716, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %883 = fmul fast float %881, %882
  %884 = fadd fast float %883, %878
  %885 = fmul fast float %884, 0x3F70101020000000
  %886 = call float @dx.op.unary.f32(i32 7, float %885)  ; Saturate(value)
  br label %887

; <label>:887                                     ; preds = %872, %385
  %888 = phi float [ 0.000000e+00, %385 ], [ %795, %872 ]
  %889 = phi float [ 0.000000e+00, %385 ], [ %796, %872 ]
  %890 = phi float [ 0.000000e+00, %385 ], [ %714, %872 ]
  %891 = phi float [ 0.000000e+00, %385 ], [ %715, %872 ]
  %892 = phi float [ 0.000000e+00, %385 ], [ %716, %872 ]
  %893 = phi float [ 0.000000e+00, %385 ], [ %842, %872 ]
  %894 = phi float [ 0.000000e+00, %385 ], [ %843, %872 ]
  %895 = phi float [ 0.000000e+00, %385 ], [ %844, %872 ]
  %896 = phi float [ 0.000000e+00, %385 ], [ %700, %872 ]
  %897 = phi float [ 0.000000e+00, %385 ], [ 1.000000e+00, %872 ]
  %898 = phi float [ 0.000000e+00, %385 ], [ %794, %872 ]
  %899 = phi float [ 0.000000e+00, %385 ], [ %797, %872 ]
  %900 = phi float [ 0.000000e+00, %385 ], [ %873, %872 ]
  %901 = phi float [ 0.000000e+00, %385 ], [ %886, %872 ]
  br i1 %336, label %1782, label %902

; <label>:902                                     ; preds = %887
  %903 = icmp ult i32 %391, 2
  %904 = add i32 %38, 40
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = add i32 %38, 44
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = or i32 %909, %906
  %911 = icmp eq i32 %910, 0
  br i1 %911, label %1782, label %912

; <label>:912                                     ; preds = %902
  %913 = and i32 %906, 262144
  %914 = icmp ne i32 %913, 0
  %915 = select i1 %914, float %41, float 1.000000e+00
  %916 = select i1 %914, float %42, float 0.000000e+00
  %917 = select i1 %914, float %43, float 0.000000e+00
  %918 = select i1 %914, float %44, float 1.000000e+00
  %919 = select i1 %914, float %45, float %54
  %920 = select i1 %914, float %46, float %55
  %921 = add i32 %38, 300
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = lshr i32 %923, 16
  %925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %924)  ; LegacyF16ToF32(value)
  %926 = fmul fast float %925, 0x3F50624DE0000000
  %927 = add i32 %38, 104
  %928 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.i32 %928, 0
  %930 = lshr i32 %929, 16
  %931 = and i32 %930, 255
  %932 = lshr i32 %929, 24
  %933 = add i32 %38, 308
  %934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %933, i32 undef)  ; BufferLoad(srv,index,wot)
  %935 = extractvalue %dx.types.ResRet.i32 %934, 0
  %936 = and i32 %935, 65535
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = lshr i32 %935, 16
  %939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %938)  ; LegacyF16ToF32(value)
  %940 = add i32 %38, 48
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = lshr i32 %942, 22
  %944 = shl nuw nsw i32 %943, 5
  %945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %944)  ; LegacyF16ToF32(value)
  %946 = shl i32 %942, 4
  %947 = and i32 %946, 32752
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = lshr i32 %942, 7
  %950 = and i32 %949, 32752
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %953 = extractvalue %dx.types.CBufRet.f32 %952, 3
  %954 = fmul fast float %953, 1.000000e+03
  %955 = fmul fast float %246, %954
  %956 = call float @dx.op.unary.f32(i32 22, float %955)  ; Frc(value)
  %957 = fadd fast float %956, %236
  %958 = fmul fast float %247, %954
  %959 = call float @dx.op.unary.f32(i32 22, float %958)  ; Frc(value)
  %960 = fadd fast float %959, %238
  %961 = fmul fast float %926, %954
  %962 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %963 = fmul fast float %962, 0x401921FB60000000
  %964 = fadd fast float %963, %945
  %965 = call float @dx.op.unary.f32(i32 13, float %964)  ; Sin(value)
  %966 = call float @dx.op.unary.f32(i32 12, float %964)  ; Cos(value)
  %967 = fsub fast float -0.000000e+00, %965
  %968 = fadd fast float %919, -5.000000e-01
  %969 = fadd fast float %920, -5.000000e-01
  %970 = fmul fast float %937, %968
  %971 = fmul fast float %939, %969
  %972 = fadd fast float %970, 5.000000e-01
  %973 = fadd fast float %971, 5.000000e-01
  %974 = fmul fast float %948, %972
  %975 = fmul fast float %951, %973
  %976 = fmul fast float %966, %974
  %977 = call float @dx.op.tertiary.f32(i32 46, float %967, float %975, float %976)  ; FMad(a,b,c)
  %978 = fmul fast float %965, %974
  %979 = call float @dx.op.tertiary.f32(i32 46, float %966, float %975, float %978)  ; FMad(a,b,c)
  %980 = fadd fast float %957, %977
  %981 = fadd fast float %960, %979
  %982 = icmp ugt i32 %931, 1
  %983 = icmp ugt i32 %929, 33554431
  %984 = or i1 %983, %982
  br i1 %984, label %985, label %1010

; <label>:985                                     ; preds = %912
  %986 = add i32 %38, 244
  %987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %986, i32 undef)  ; BufferLoad(srv,index,wot)
  %988 = extractvalue %dx.types.ResRet.i32 %987, 0
  %989 = lshr i32 %988, 16
  %990 = call float @dx.op.legacyF16ToF32(i32 131, i32 %989)  ; LegacyF16ToF32(value)
  %991 = fmul fast float %953, %990
  %992 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %993 = mul nuw nsw i32 %931, %932
  %994 = uitofp i32 %993 to float
  %995 = fmul fast float %992, %994
  %996 = call float @dx.op.unary.f32(i32 27, float %995)  ; Round_ni(value)
  %997 = fptoui float %996 to i32
  %998 = urem i32 %997, %931
  %999 = udiv i32 %997, %932
  %1000 = call float @dx.op.unary.f32(i32 22, float %980)  ; Frc(value)
  %1001 = call float @dx.op.unary.f32(i32 22, float %981)  ; Frc(value)
  %1002 = uitofp i32 %998 to float
  %1003 = uitofp i32 %999 to float
  %1004 = fadd fast float %1000, %1002
  %1005 = fadd fast float %1001, %1003
  %1006 = uitofp i32 %931 to float
  %1007 = uitofp i32 %932 to float
  %1008 = fdiv fast float %1004, %1006
  %1009 = fdiv fast float %1005, %1007
  br label %1010

; <label>:1010                                    ; preds = %985, %912
  %1011 = phi float [ %1008, %985 ], [ %980, %912 ]
  %1012 = phi float [ %1009, %985 ], [ %981, %912 ]
  %1013 = and i32 %906, 16777216
  %1014 = icmp eq i32 %1013, 0
  br i1 %1014, label %1124, label %1015

; <label>:1015                                    ; preds = %1010
  %1016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1017 = extractvalue %dx.types.CBufRet.f32 %1016, 0
  %1018 = extractvalue %dx.types.CBufRet.f32 %1016, 1
  %1019 = extractvalue %dx.types.CBufRet.f32 %1016, 2
  %1020 = fadd fast float %1017, %121
  %1021 = fadd fast float %1018, %122
  %1022 = fadd fast float %1019, %123
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 0
  %1025 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1026 = icmp eq i32 %39, 65535
  br i1 %1026, label %1121, label %1027

; <label>:1027                                    ; preds = %1015
  %1028 = lshr i32 %39, 1
  %1029 = shl i32 %1028, 2
  %1030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1029, i32 undef)  ; BufferLoad(srv,index,wot)
  %1031 = extractvalue %dx.types.ResRet.i32 %1030, 0
  %1032 = and i32 %39, 1
  %1033 = icmp ne i32 %1032, 0
  %1034 = lshr i32 %1031, 16
  %1035 = and i32 %1031, 65535
  %1036 = select i1 %1033, i32 %1034, i32 %1035
  %1037 = icmp eq i32 %1036, 65535
  br i1 %1037, label %1117, label %1038

; <label>:1038                                    ; preds = %1027
  %1039 = mul nuw nsw i32 %1036, 40
  %1040 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1039, i32 undef)  ; BufferLoad(srv,index,wot)
  %1041 = extractvalue %dx.types.ResRet.f32 %1040, 0
  %1042 = extractvalue %dx.types.ResRet.f32 %1040, 1
  %1043 = extractvalue %dx.types.ResRet.f32 %1040, 2
  %1044 = add nuw nsw i32 %1039, 12
  %1045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1044, i32 undef)  ; BufferLoad(srv,index,wot)
  %1046 = extractvalue %dx.types.ResRet.f32 %1045, 0
  %1047 = extractvalue %dx.types.ResRet.f32 %1045, 1
  %1048 = extractvalue %dx.types.ResRet.f32 %1045, 2
  %1049 = add nuw nsw i32 %1039, 24
  %1050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.ResRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.ResRet.f32 %1050, 2
  %1054 = add nuw nsw i32 %1039, 36
  %1055 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1054, i32 undef)  ; BufferLoad(srv,index,wot)
  %1056 = extractvalue %dx.types.ResRet.f32 %1055, 0
  %1057 = fsub fast float %1020, %1041
  %1058 = fsub fast float %1021, %1042
  %1059 = fsub fast float %1022, %1043
  %1060 = fmul fast float %1056, %1057
  %1061 = fmul fast float %1056, %1058
  %1062 = fmul fast float %1056, %1059
  %1063 = call float @dx.op.unary.f32(i32 27, float %1060)  ; Round_ni(value)
  %1064 = call float @dx.op.unary.f32(i32 27, float %1061)  ; Round_ni(value)
  %1065 = call float @dx.op.unary.f32(i32 27, float %1062)  ; Round_ni(value)
  %1066 = fadd fast float %1063, 5.000000e-01
  %1067 = fadd fast float %1064, 5.000000e-01
  %1068 = fadd fast float %1065, 5.000000e-01
  %1069 = fmul fast float %1066, %1046
  %1070 = fmul fast float %1067, %1047
  %1071 = fmul fast float %1068, %1048
  %1072 = shl i32 %39, 2
  %1073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.i32 %1073, 0
  %1075 = add i32 %1074, 0
  %1076 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1075, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1077 = call float @dx.op.unary.f32(i32 22, float %1069)  ; Frc(value)
  %1078 = call float @dx.op.unary.f32(i32 22, float %1070)  ; Frc(value)
  %1079 = call float @dx.op.unary.f32(i32 22, float %1071)  ; Frc(value)
  %1080 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1076, %dx.types.Handle %35, float %1077, float %1078, float %1079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.ResRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.ResRet.f32 %1080, 2
  %1084 = fmul fast float %1081, 1.023000e+03
  %1085 = fmul fast float %1082, 1.023000e+03
  %1086 = fmul fast float %1083, 1.023000e+03
  %1087 = fadd fast float %1084, 5.000000e-01
  %1088 = fadd fast float %1085, 5.000000e-01
  %1089 = fadd fast float %1086, 5.000000e-01
  %1090 = call float @dx.op.unary.f32(i32 27, float %1087)  ; Round_ni(value)
  %1091 = call float @dx.op.unary.f32(i32 27, float %1088)  ; Round_ni(value)
  %1092 = call float @dx.op.unary.f32(i32 27, float %1089)  ; Round_ni(value)
  %1093 = fsub fast float %1060, %1063
  %1094 = fsub fast float %1061, %1064
  %1095 = fsub fast float %1062, %1065
  %1096 = fmul fast float %1093, 7.500000e-01
  %1097 = fmul fast float %1094, 7.500000e-01
  %1098 = fmul fast float %1095, 7.500000e-01
  %1099 = fadd fast float %1063, 1.250000e-01
  %1100 = fadd fast float %1099, %1096
  %1101 = fadd fast float %1100, %1090
  %1102 = fadd fast float %1064, 1.250000e-01
  %1103 = fadd fast float %1102, %1097
  %1104 = fadd fast float %1103, %1091
  %1105 = fadd fast float %1065, 1.250000e-01
  %1106 = fadd fast float %1105, %1098
  %1107 = fadd fast float %1106, %1092
  %1108 = fmul fast float %1101, %1051
  %1109 = fmul fast float %1104, %1052
  %1110 = fmul fast float %1107, %1053
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = add i32 %1112, 0
  %1114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1114, %dx.types.Handle %33, float %1108, float %1109, float %1110, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  br label %1117

; <label>:1117                                    ; preds = %1038, %1027
  %1118 = phi float [ %1116, %1038 ], [ -1.000000e+00, %1027 ]
  %1119 = fadd fast float %1118, %1025
  %1120 = call float @dx.op.unary.f32(i32 7, float %1119)  ; Saturate(value)
  br label %1121

; <label>:1121                                    ; preds = %1117, %1015
  %1122 = phi float [ %1120, %1117 ], [ %1025, %1015 ]
  %1123 = fmul fast float %1122, %388
  br label %1124

; <label>:1124                                    ; preds = %1121, %1010
  %1125 = phi float [ %1123, %1121 ], [ %388, %1010 ]
  %1126 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1127 = extractvalue %dx.types.ResRet.i32 %1126, 0
  %1128 = and i32 %1127, 256
  %1129 = icmp eq i32 %1128, 0
  br i1 %1129, label %1176, label %1130

; <label>:1130                                    ; preds = %1124
  %1131 = add i32 %38, 428
  %1132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1131, i32 undef)  ; BufferLoad(srv,index,wot)
  %1133 = extractvalue %dx.types.ResRet.i32 %1132, 0
  %1134 = add i32 %1133, 0
  %1135 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1134, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1136 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1135, %dx.types.Handle %63, float %1011, float %1012, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1137 = extractvalue %dx.types.ResRet.f32 %1136, 0
  %1138 = add i32 %38, 116
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = shl i32 %1140, 4
  %1142 = and i32 %1141, 32752
  %1143 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1142)  ; LegacyF16ToF32(value)
  %1144 = lshr i32 %1140, 7
  %1145 = and i32 %1144, 32752
  %1146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1145)  ; LegacyF16ToF32(value)
  %1147 = fsub fast float 1.000000e+00, %1125
  %1148 = call float @dx.op.binary.f32(i32 35, float %1147, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1149 = bitcast float %1125 to i32
  %1150 = sitofp i32 %1149 to float
  %1151 = fadd fast float %1150, 0xC1CFBF8940000000
  %1152 = fmul fast float %1146, %1151
  %1153 = fadd fast float %1152, 0x41CFBF8940000000
  %1154 = fptosi float %1153 to i32
  %1155 = bitcast i32 %1154 to float
  %1156 = bitcast float %1148 to i32
  %1157 = sitofp i32 %1156 to float
  %1158 = fadd fast float %1157, 0xC1CFBF8940000000
  %1159 = fmul fast float %1158, %1146
  %1160 = fadd fast float %1159, 0x41CFBF8940000000
  %1161 = fptosi float %1160 to i32
  %1162 = bitcast i32 %1161 to float
  %1163 = fmul fast float %1155, %1143
  %1164 = fmul fast float %1162, %1143
  %1165 = fsub fast float %1148, %1163
  %1166 = fadd fast float %1164, %1148
  %1167 = call float @dx.op.unary.f32(i32 7, float %1165)  ; Saturate(value)
  %1168 = call float @dx.op.unary.f32(i32 7, float %1166)  ; Saturate(value)
  %1169 = fsub fast float %1137, %1167
  %1170 = fsub fast float %1168, %1167
  %1171 = bitcast float %1170 to i32
  %1172 = sub nsw i32 2129859010, %1171
  %1173 = bitcast i32 %1172 to float
  %1174 = fmul fast float %1173, %1169
  %1175 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  br label %1176

; <label>:1176                                    ; preds = %1130, %1124
  %1177 = phi float [ %1175, %1130 ], [ %1125, %1124 ]
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = and i32 %1179, 128
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1198, label %1182

; <label>:1182                                    ; preds = %1176
  %1183 = add i32 %38, 412
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = add i32 %1185, 0
  %1187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1186, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1188 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1187, %dx.types.Handle %63, float %1011, float %1012, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1189 = extractvalue %dx.types.ResRet.f32 %1188, 0
  %1190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1191 = extractvalue %dx.types.ResRet.i32 %1190, 0
  %1192 = and i32 %1191, 524288
  %1193 = icmp ne i32 %1192, 0
  %1194 = fcmp fast ogt float %1189, 0x3FE0101020000000
  %1195 = select i1 %1194, float 1.000000e+00, float 0.000000e+00
  %1196 = select i1 %1193, float %1195, float %1189
  %1197 = fmul fast float %1196, %1177
  br label %1198

; <label>:1198                                    ; preds = %1182, %1176
  %1199 = phi float [ %1197, %1182 ], [ %1177, %1176 ]
  %1200 = fcmp fast ult float %1199, 0x3F70101020000000
  br i1 %1200, label %1782, label %1201

; <label>:1201                                    ; preds = %1198
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = and i32 %1203, 16
  %1205 = icmp eq i32 %1204, 0
  br i1 %1205, label %1404, label %1206

; <label>:1206                                    ; preds = %1201
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = add i32 %38, 364
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1209, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = add i32 %1211, 0
  %1213 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1212, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1214 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1213, %dx.types.Handle %62, float %1011, float %1012, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1215 = extractvalue %dx.types.ResRet.f32 %1214, 0
  %1216 = extractvalue %dx.types.ResRet.f32 %1214, 1
  %1217 = extractvalue %dx.types.ResRet.f32 %1214, 2
  %1218 = extractvalue %dx.types.ResRet.f32 %1214, 3
  %1219 = and i32 %1208, 255
  %1220 = uitofp i32 %1219 to float
  %1221 = lshr i32 %1208, 8
  %1222 = and i32 %1221, 255
  %1223 = uitofp i32 %1222 to float
  %1224 = fmul fast float %1218, %1220
  %1225 = fadd fast float %1224, %1223
  %1226 = fmul fast float %1225, 0x3F70101000000000
  %1227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1228 = extractvalue %dx.types.ResRet.i32 %1227, 0
  %1229 = and i32 %1228, 512
  %1230 = icmp eq i32 %1229, 0
  br i1 %1230, label %1239, label %1231

; <label>:1231                                    ; preds = %1206
  %1232 = add i32 %38, 444
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1232, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = add i32 %1234, 0
  %1236 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1235, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1237 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1236, %dx.types.Handle %63, float %1011, float %1012, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1238 = extractvalue %dx.types.ResRet.f32 %1237, 0
  br label %1239

; <label>:1239                                    ; preds = %1231, %1206
  %1240 = phi float [ %1238, %1231 ], [ 1.000000e+00, %1206 ]
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = and i32 %1242, 33554432
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1351, label %1245

; <label>:1245                                    ; preds = %1239
  %1246 = add i32 %38, 240
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = and i32 %1248, 65535
  %1250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1249)  ; LegacyF16ToF32(value)
  %1251 = lshr i32 %1248, 16
  %1252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1251)  ; LegacyF16ToF32(value)
  %1253 = add i32 %38, 244
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = and i32 %1255, 65535
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = lshr i32 %1259, 24
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1261, 0x3F70101020000000
  %1263 = and i32 %1259, 255
  %1264 = uitofp i32 %1263 to float
  %1265 = fmul fast float %1264, 0x3F70101020000000
  %1266 = lshr i32 %1259, 8
  %1267 = and i32 %1266, 255
  %1268 = uitofp i32 %1267 to float
  %1269 = fmul fast float %1268, 0x3F70101020000000
  %1270 = lshr i32 %1259, 16
  %1271 = and i32 %1270, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = fmul fast float %1272, 0x3F70101020000000
  %1274 = add i32 %38, 236
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1274, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = lshr i32 %1276, 24
  %1278 = uitofp i32 %1277 to float
  %1279 = fmul fast float %1278, 0x3F70101020000000
  %1280 = and i32 %1276, 255
  %1281 = uitofp i32 %1280 to float
  %1282 = fmul fast float %1281, 0x3F70101020000000
  %1283 = lshr i32 %1276, 8
  %1284 = and i32 %1283, 255
  %1285 = uitofp i32 %1284 to float
  %1286 = fmul fast float %1285, 0x3F70101020000000
  %1287 = lshr i32 %1276, 16
  %1288 = and i32 %1287, 255
  %1289 = uitofp i32 %1288 to float
  %1290 = fmul fast float %1289, 0x3F70101020000000
  %1291 = bitcast float %1215 to i32
  %1292 = ashr i32 %1291, 1
  %1293 = sub nsw i32 1597463174, %1292
  %1294 = bitcast i32 %1293 to float
  %1295 = fmul fast float %1215, 5.000000e-01
  %1296 = fmul fast float %1294, %1294
  %1297 = fmul fast float %1296, %1295
  %1298 = fsub fast float 1.500000e+00, %1297
  %1299 = fmul fast float %1294, %1215
  %1300 = fmul fast float %1299, %1298
  %1301 = bitcast float %1216 to i32
  %1302 = ashr i32 %1301, 1
  %1303 = sub nsw i32 1597463174, %1302
  %1304 = bitcast i32 %1303 to float
  %1305 = fmul fast float %1216, 5.000000e-01
  %1306 = fmul fast float %1304, %1304
  %1307 = fmul fast float %1306, %1305
  %1308 = fsub fast float 1.500000e+00, %1307
  %1309 = fmul fast float %1304, %1216
  %1310 = fmul fast float %1309, %1308
  %1311 = bitcast float %1217 to i32
  %1312 = ashr i32 %1311, 1
  %1313 = sub nsw i32 1597463174, %1312
  %1314 = bitcast i32 %1313 to float
  %1315 = fmul fast float %1217, 5.000000e-01
  %1316 = fmul fast float %1314, %1314
  %1317 = fmul fast float %1316, %1315
  %1318 = fsub fast float 1.500000e+00, %1317
  %1319 = fmul fast float %1314, %1217
  %1320 = fmul fast float %1319, %1318
  %1321 = fsub fast float %1300, %1282
  %1322 = fsub fast float %1310, %1286
  %1323 = fsub fast float %1320, %1290
  %1324 = fmul fast float %1321, %1250
  %1325 = fmul fast float %1322, %1252
  %1326 = fmul fast float %1323, %1257
  %1327 = fadd fast float %1324, %1265
  %1328 = fadd fast float %1325, %1269
  %1329 = fadd fast float %1326, %1273
  %1330 = call float @dx.op.unary.f32(i32 7, float %1327)  ; Saturate(value)
  %1331 = call float @dx.op.unary.f32(i32 7, float %1328)  ; Saturate(value)
  %1332 = call float @dx.op.unary.f32(i32 7, float %1329)  ; Saturate(value)
  %1333 = fmul fast float %1330, %1330
  %1334 = fmul fast float %1331, %1331
  %1335 = fmul fast float %1332, %1332
  %1336 = fsub fast float %1333, %1215
  %1337 = fsub fast float %1334, %1216
  %1338 = fsub fast float %1335, %1217
  %1339 = fmul fast float %1336, %1240
  %1340 = fmul fast float %1337, %1240
  %1341 = fmul fast float %1338, %1240
  %1342 = fadd fast float %1339, %1215
  %1343 = fadd fast float %1340, %1216
  %1344 = fadd fast float %1341, %1217
  %1345 = fadd fast float %1262, %1226
  %1346 = fsub fast float %1345, %1279
  %1347 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1348 = fsub fast float %1347, %1226
  %1349 = fmul fast float %1348, %1240
  %1350 = fadd fast float %1349, %1226
  br label %1404

; <label>:1351                                    ; preds = %1239
  %1352 = and i32 %1242, 134217728
  %1353 = icmp eq i32 %1352, 0
  br i1 %1353, label %1388, label %1354

; <label>:1354                                    ; preds = %1351
  %1355 = call float @dx.op.unary.f32(i32 24, float %223)  ; Sqrt(value)
  %1356 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %1357 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %1358 = fadd fast float %1355, -5.000000e-01
  %1359 = fadd fast float %1356, -5.000000e-01
  %1360 = fadd fast float %1357, -5.000000e-01
  %1361 = fmul fast float %1358, %1240
  %1362 = fmul fast float %1359, %1240
  %1363 = fmul fast float %1360, %1240
  %1364 = fadd fast float %1361, 5.000000e-01
  %1365 = fadd fast float %1362, 5.000000e-01
  %1366 = fadd fast float %1363, 5.000000e-01
  %1367 = call float @dx.op.unary.f32(i32 24, float %1215)  ; Sqrt(value)
  %1368 = call float @dx.op.unary.f32(i32 24, float %1216)  ; Sqrt(value)
  %1369 = call float @dx.op.unary.f32(i32 24, float %1217)  ; Sqrt(value)
  %1370 = fmul fast float %1364, 2.000000e+00
  %1371 = fsub fast float 1.000000e+00, %1370
  %1372 = fmul fast float %1371, %1367
  %1373 = fadd fast float %1372, %1370
  %1374 = fmul fast float %1373, %1367
  %1375 = fmul fast float %1365, 2.000000e+00
  %1376 = fsub fast float 1.000000e+00, %1375
  %1377 = fmul fast float %1376, %1368
  %1378 = fadd fast float %1377, %1375
  %1379 = fmul fast float %1378, %1368
  %1380 = fmul fast float %1366, 2.000000e+00
  %1381 = fsub fast float 1.000000e+00, %1380
  %1382 = fmul fast float %1381, %1369
  %1383 = fadd fast float %1382, %1380
  %1384 = fmul fast float %1383, %1369
  %1385 = fmul fast float %1374, %1374
  %1386 = fmul fast float %1379, %1379
  %1387 = fmul fast float %1384, %1384
  br label %1404

; <label>:1388                                    ; preds = %1351
  %1389 = fmul fast float %223, %223
  %1390 = fmul fast float %227, %227
  %1391 = fmul fast float %231, %231
  %1392 = fadd fast float %1389, -1.000000e+00
  %1393 = fadd fast float %1390, -1.000000e+00
  %1394 = fadd fast float %1391, -1.000000e+00
  %1395 = fmul fast float %1240, %1392
  %1396 = fmul fast float %1240, %1393
  %1397 = fmul fast float %1240, %1394
  %1398 = fadd fast float %1395, 1.000000e+00
  %1399 = fadd fast float %1396, 1.000000e+00
  %1400 = fadd fast float %1397, 1.000000e+00
  %1401 = fmul fast float %1398, %1215
  %1402 = fmul fast float %1399, %1216
  %1403 = fmul fast float %1400, %1217
  br label %1404

; <label>:1404                                    ; preds = %1388, %1354, %1245, %1201
  %1405 = phi float [ %1350, %1245 ], [ %1226, %1354 ], [ %1226, %1388 ], [ 0x3FA23C0BE0000000, %1201 ]
  %1406 = phi float [ %1342, %1245 ], [ %1385, %1354 ], [ %1401, %1388 ], [ 1.000000e+00, %1201 ]
  %1407 = phi float [ %1343, %1245 ], [ %1386, %1354 ], [ %1402, %1388 ], [ 1.000000e+00, %1201 ]
  %1408 = phi float [ %1344, %1245 ], [ %1387, %1354 ], [ %1403, %1388 ], [ 1.000000e+00, %1201 ]
  %1409 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1410 = extractvalue %dx.types.CBufRet.i32 %1409, 1
  %1411 = and i32 %1410, 1
  %1412 = icmp ne i32 %1411, 0
  %1413 = add i32 %38, 356
  %1414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1413, i32 undef)  ; BufferLoad(srv,index,wot)
  %1415 = extractvalue %dx.types.ResRet.i32 %1414, 0
  %1416 = and i32 %1415, 32
  %1417 = icmp ne i32 %1416, 0
  %1418 = and i1 %1412, %1417
  %1419 = select i1 %1418, float 1.000000e+00, float %1406
  %1420 = select i1 %1418, float 0x3FD3333340000000, float %1407
  %1421 = select i1 %1418, float 0x3FD3333340000000, float %1408
  %1422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1423 = extractvalue %dx.types.ResRet.i32 %1422, 0
  %1424 = and i32 %1423, 32
  %1425 = icmp eq i32 %1424, 0
  br i1 %1425, label %1498, label %1426

; <label>:1426                                    ; preds = %1404
  %1427 = add i32 %38, 108
  %1428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1427, i32 undef)  ; BufferLoad(srv,index,wot)
  %1429 = extractvalue %dx.types.ResRet.i32 %1428, 0
  %1430 = add i32 %38, 380
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1430, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = add i32 %1432, 0
  %1434 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1433, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1435 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1434, %dx.types.Handle %62, float %1011, float %1012, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1436 = extractvalue %dx.types.ResRet.f32 %1435, 0
  %1437 = extractvalue %dx.types.ResRet.f32 %1435, 1
  %1438 = extractvalue %dx.types.ResRet.f32 %1435, 2
  %1439 = extractvalue %dx.types.ResRet.f32 %1435, 3
  %1440 = and i32 %1429, 255
  %1441 = uitofp i32 %1440 to float
  %1442 = lshr i32 %1429, 8
  %1443 = and i32 %1442, 255
  %1444 = uitofp i32 %1443 to float
  %1445 = lshr i32 %1429, 16
  %1446 = and i32 %1445, 255
  %1447 = uitofp i32 %1446 to float
  %1448 = fmul fast float %1447, 0x3F70101000000000
  %1449 = fmul fast float %1436, %1441
  %1450 = fadd fast float %1449, %1444
  %1451 = fmul fast float %1450, 0x3F70101000000000
  %1452 = fadd fast float %1437, -5.000000e-01
  %1453 = fadd fast float %1439, -5.000000e-01
  %1454 = fmul fast float %1452, %1448
  %1455 = fmul fast float %1453, %1448
  %1456 = fadd fast float %1454, 5.000000e-01
  %1457 = fadd fast float %1455, 5.000000e-01
  %1458 = fmul fast float %1456, 2.000000e+00
  %1459 = fadd fast float %1458, -1.000000e+00
  %1460 = fmul fast float %1457, 2.000000e+00
  %1461 = fadd fast float %1460, -1.000000e+00
  %1462 = fadd fast float %1459, %1461
  %1463 = fmul fast float %1462, 5.000000e-01
  %1464 = fsub fast float %1459, %1461
  %1465 = fmul fast float %1464, 5.000000e-01
  %1466 = call float @dx.op.unary.f32(i32 6, float %1463)  ; FAbs(value)
  %1467 = fsub fast float 1.000000e+00, %1466
  %1468 = call float @dx.op.unary.f32(i32 6, float %1465)  ; FAbs(value)
  %1469 = fsub fast float %1467, %1468
  %1470 = call float @dx.op.dot3.f32(i32 55, float %1463, float %1465, float %1469, float %1463, float %1465, float %1469)  ; Dot3(ax,ay,az,bx,by,bz)
  %1471 = call float @dx.op.unary.f32(i32 25, float %1470)  ; Rsqrt(value)
  %1472 = fmul fast float %1463, %1471
  %1473 = fmul fast float %1465, %1471
  %1474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1475 = extractvalue %dx.types.ResRet.i32 %1474, 0
  %1476 = and i32 %1475, 67108864
  %1477 = icmp eq i32 %1476, 0
  br i1 %1477, label %1494, label %1478

; <label>:1478                                    ; preds = %1426
  %1479 = add i32 %38, 296
  %1480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1479, i32 undef)  ; BufferLoad(srv,index,wot)
  %1481 = extractvalue %dx.types.ResRet.i32 %1480, 0
  %1482 = and i32 %1481, 65535
  %1483 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1482)  ; LegacyF16ToF32(value)
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %921, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 65535
  %1487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1486)  ; LegacyF16ToF32(value)
  %1488 = lshr i32 %1481, 16
  %1489 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1488)  ; LegacyF16ToF32(value)
  %1490 = fsub fast float %1451, %1489
  %1491 = fmul fast float %1490, %1483
  %1492 = fadd fast float %1491, %1487
  %1493 = call float @dx.op.unary.f32(i32 7, float %1492)  ; Saturate(value)
  br label %1494

; <label>:1494                                    ; preds = %1478, %1426
  %1495 = phi float [ %1493, %1478 ], [ %1451, %1426 ]
  %1496 = call float @dx.op.dot2.f32(i32 54, float %1472, float %1473, float %915, float %916)  ; Dot2(ax,ay,bx,by)
  %1497 = call float @dx.op.dot2.f32(i32 54, float %1472, float %1473, float %917, float %918)  ; Dot2(ax,ay,bx,by)
  br label %1498

; <label>:1498                                    ; preds = %1494, %1404
  %1499 = phi float [ %1495, %1494 ], [ 0x3FD6666660000000, %1404 ]
  %1500 = phi float [ %1496, %1494 ], [ 0.000000e+00, %1404 ]
  %1501 = phi float [ %1497, %1494 ], [ 0.000000e+00, %1404 ]
  %1502 = phi float [ %1438, %1494 ], [ 1.000000e+00, %1404 ]
  %1503 = add i32 %38, 176
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = lshr i32 %1505, 22
  %1507 = shl nuw nsw i32 %1506, 5
  %1508 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1507)  ; LegacyF16ToF32(value)
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = and i32 %1510, 64
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1546, label %1513

; <label>:1513                                    ; preds = %1498
  %1514 = add i32 %38, 396
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = add i32 %1516, 0
  %1518 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1517, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 131072
  %1522 = icmp eq i32 %1521, 0
  %1523 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1518, %dx.types.Handle %62, float %1011, float %1012, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1524 = extractvalue %dx.types.ResRet.f32 %1523, 0
  %1525 = extractvalue %dx.types.ResRet.f32 %1523, 1
  %1526 = extractvalue %dx.types.ResRet.f32 %1523, 2
  %1527 = fmul fast float %1524, %211
  %1528 = fmul fast float %1525, %214
  %1529 = fmul fast float %1526, %217
  br i1 %1522, label %1536, label %1530

; <label>:1530                                    ; preds = %1513
  %1531 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1532 = extractvalue %dx.types.CBufRet.f32 %1531, 0
  %1533 = fmul fast float %1532, %1527
  %1534 = fmul fast float %1532, %1528
  %1535 = fmul fast float %1532, %1529
  br label %1536

; <label>:1536                                    ; preds = %1530, %1513
  %1537 = phi float [ %1533, %1530 ], [ %1527, %1513 ]
  %1538 = phi float [ %1534, %1530 ], [ %1528, %1513 ]
  %1539 = phi float [ %1535, %1530 ], [ %1529, %1513 ]
  %1540 = fmul fast float %1537, %1508
  %1541 = select i1 %163, float %1540, float %1537
  %1542 = call float @dx.op.dot3.f32(i32 55, float %1541, float %1538, float %1539, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1543 = select i1 %163, float 0.000000e+00, float %1537
  %1544 = select i1 %163, float %1542, float %1538
  %1545 = select i1 %163, float 0.000000e+00, float %1539
  br label %1546

; <label>:1546                                    ; preds = %1536, %1498
  %1547 = phi float [ %1543, %1536 ], [ 0.000000e+00, %1498 ]
  %1548 = phi float [ %1544, %1536 ], [ 0.000000e+00, %1498 ]
  %1549 = phi float [ %1545, %1536 ], [ 0.000000e+00, %1498 ]
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = and i32 %1551, 26624
  %1553 = icmp eq i32 %1552, 0
  br i1 %1553, label %1577, label %1554

; <label>:1554                                    ; preds = %1546
  %1555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1556 = extractvalue %dx.types.ResRet.i32 %1555, 0
  %1557 = and i32 %1556, 16384
  %1558 = icmp eq i32 %1557, 0
  br i1 %1558, label %1577, label %1559

; <label>:1559                                    ; preds = %1554
  %1560 = and i32 %1556, 1048576
  %1561 = icmp ne i32 %1560, 0
  %1562 = add i32 %38, 460
  %1563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1562, i32 undef)  ; BufferLoad(srv,index,wot)
  %1564 = extractvalue %dx.types.ResRet.i32 %1563, 0
  %1565 = add i32 %1564, 0
  %1566 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1565, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1567 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1566, %dx.types.Handle %63, float %1011, float %1012, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1568 = extractvalue %dx.types.ResRet.f32 %1567, 0
  %1569 = add i32 %38, 112
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = lshr i32 %1571, 24
  %1573 = uitofp i32 %1572 to float
  %1574 = fmul fast float %1568, 0x3F70101020000000
  %1575 = select i1 %1561, float 0x3F70101020000000, float %1574
  %1576 = fmul fast float %1575, %1573
  br label %1577

; <label>:1577                                    ; preds = %1559, %1554, %1546
  %1578 = phi float [ %1576, %1559 ], [ 0.000000e+00, %1554 ], [ 0.000000e+00, %1546 ]
  %1579 = add i32 %38, 112
  %1580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1579, i32 undef)  ; BufferLoad(srv,index,wot)
  %1581 = extractvalue %dx.types.ResRet.i32 %1580, 0
  %1582 = and i32 %1581, 255
  %1583 = uitofp i32 %1582 to float
  %1584 = lshr i32 %1581, 8
  %1585 = and i32 %1584, 255
  %1586 = uitofp i32 %1585 to float
  %1587 = call float @dx.op.dot3.f32(i32 55, float %1419, float %1420, float %1421, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1588 = fmul fast float %1586, %1587
  %1589 = fadd fast float %1588, %1583
  %1590 = fmul fast float %1589, 0x3F70101020000000
  %1591 = call float @dx.op.unary.f32(i32 7, float %1590)  ; Saturate(value)
  br i1 %903, label %1592, label %1600

; <label>:1592                                    ; preds = %1577
  %1593 = fsub fast float 1.000000e+00, %1199
  %1594 = fmul fast float %1593, %890
  %1595 = fmul fast float %1593, %891
  %1596 = fmul fast float %1593, %892
  %1597 = fmul fast float %1593, %893
  %1598 = fmul fast float %1593, %894
  %1599 = fmul fast float %1593, %895
  br label %1600

; <label>:1600                                    ; preds = %1592, %1577
  %1601 = phi float [ %1594, %1592 ], [ %890, %1577 ]
  %1602 = phi float [ %1595, %1592 ], [ %891, %1577 ]
  %1603 = phi float [ %1596, %1592 ], [ %892, %1577 ]
  %1604 = phi float [ %1597, %1592 ], [ %893, %1577 ]
  %1605 = phi float [ %1598, %1592 ], [ %894, %1577 ]
  %1606 = phi float [ %1599, %1592 ], [ %895, %1577 ]
  %1607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %1608 = extractvalue %dx.types.ResRet.i32 %1607, 0
  %1609 = and i32 %1608, 3
  %1610 = icmp eq i32 %1609, 3
  br i1 %1610, label %1689, label %1611

; <label>:1611                                    ; preds = %1600
  %1612 = and i32 %1608, 16
  %1613 = icmp ne i32 %1612, 0
  %1614 = select i1 %1613, float %1199, float 0.000000e+00
  %1615 = icmp eq i32 %1609, 0
  br i1 %1615, label %1616, label %1644

; <label>:1616                                    ; preds = %1611
  %1617 = and i32 %1608, 64
  %1618 = icmp ne i32 %1617, 0
  %1619 = select i1 %1618, float %1199, float 0.000000e+00
  %1620 = fsub fast float %1419, %1601
  %1621 = fsub fast float %1420, %1602
  %1622 = fsub fast float %1421, %1603
  %1623 = fmul fast float %1614, %1620
  %1624 = fmul fast float %1614, %1621
  %1625 = fmul fast float %1614, %1622
  %1626 = fadd fast float %1623, %1601
  %1627 = fadd fast float %1624, %1602
  %1628 = fadd fast float %1625, %1603
  %1629 = fsub fast float %1405, %896
  %1630 = fmul fast float %1614, %1629
  %1631 = fadd fast float %1630, %896
  %1632 = fsub fast float %1547, %1604
  %1633 = fsub fast float %1548, %1605
  %1634 = fsub fast float %1549, %1606
  %1635 = fmul fast float %1619, %1632
  %1636 = fmul fast float %1619, %1633
  %1637 = fmul fast float %1619, %1634
  %1638 = fadd fast float %1635, %1604
  %1639 = fadd fast float %1636, %1605
  %1640 = fadd fast float %1637, %1606
  %1641 = fsub fast float %1591, %901
  %1642 = fmul fast float %1614, %1641
  %1643 = fadd fast float %1642, %901
  br label %1689

; <label>:1644                                    ; preds = %1611
  %1645 = icmp eq i32 %1609, 1
  br i1 %1645, label %1646, label %1659

; <label>:1646                                    ; preds = %1644
  %1647 = fadd fast float %1419, -1.000000e+00
  %1648 = fadd fast float %1420, -1.000000e+00
  %1649 = fadd fast float %1421, -1.000000e+00
  %1650 = fmul fast float %1614, %1647
  %1651 = fmul fast float %1614, %1648
  %1652 = fmul fast float %1614, %1649
  %1653 = fadd fast float %1650, 1.000000e+00
  %1654 = fadd fast float %1651, 1.000000e+00
  %1655 = fadd fast float %1652, 1.000000e+00
  %1656 = fmul fast float %1653, %1601
  %1657 = fmul fast float %1654, %1602
  %1658 = fmul fast float %1655, %1603
  br label %1689

; <label>:1659                                    ; preds = %1644
  %1660 = icmp eq i32 %1609, 2
  br i1 %1660, label %1661, label %1689

; <label>:1661                                    ; preds = %1659
  %1662 = call float @dx.op.unary.f32(i32 24, float %1419)  ; Sqrt(value)
  %1663 = call float @dx.op.unary.f32(i32 24, float %1420)  ; Sqrt(value)
  %1664 = call float @dx.op.unary.f32(i32 24, float %1421)  ; Sqrt(value)
  %1665 = fadd fast float %1662, -5.000000e-01
  %1666 = fadd fast float %1663, -5.000000e-01
  %1667 = fadd fast float %1664, -5.000000e-01
  %1668 = fmul fast float %1665, %1614
  %1669 = fmul fast float %1666, %1614
  %1670 = fmul fast float %1667, %1614
  %1671 = fadd fast float %1668, 5.000000e-01
  %1672 = fadd fast float %1669, 5.000000e-01
  %1673 = fadd fast float %1670, 5.000000e-01
  %1674 = fmul fast float %1671, 2.000000e+00
  %1675 = fsub fast float 1.000000e+00, %1674
  %1676 = fmul fast float %1675, %1601
  %1677 = fadd fast float %1676, %1674
  %1678 = fmul fast float %1677, %1601
  %1679 = fmul fast float %1672, 2.000000e+00
  %1680 = fsub fast float 1.000000e+00, %1679
  %1681 = fmul fast float %1680, %1602
  %1682 = fadd fast float %1681, %1679
  %1683 = fmul fast float %1682, %1602
  %1684 = fmul fast float %1673, 2.000000e+00
  %1685 = fsub fast float 1.000000e+00, %1684
  %1686 = fmul fast float %1685, %1603
  %1687 = fadd fast float %1686, %1684
  %1688 = fmul fast float %1687, %1603
  br label %1689

; <label>:1689                                    ; preds = %1661, %1659, %1646, %1616, %1600
  %1690 = phi float [ %1601, %1600 ], [ %1678, %1661 ], [ %1601, %1659 ], [ %1656, %1646 ], [ %1626, %1616 ]
  %1691 = phi float [ %1602, %1600 ], [ %1683, %1661 ], [ %1602, %1659 ], [ %1657, %1646 ], [ %1627, %1616 ]
  %1692 = phi float [ %1603, %1600 ], [ %1688, %1661 ], [ %1603, %1659 ], [ %1658, %1646 ], [ %1628, %1616 ]
  %1693 = phi float [ %1604, %1600 ], [ %1604, %1661 ], [ %1604, %1659 ], [ %1604, %1646 ], [ %1638, %1616 ]
  %1694 = phi float [ %1605, %1600 ], [ %1605, %1661 ], [ %1605, %1659 ], [ %1605, %1646 ], [ %1639, %1616 ]
  %1695 = phi float [ %1606, %1600 ], [ %1606, %1661 ], [ %1606, %1659 ], [ %1606, %1646 ], [ %1640, %1616 ]
  %1696 = phi float [ %896, %1600 ], [ %896, %1661 ], [ %896, %1659 ], [ %896, %1646 ], [ %1631, %1616 ]
  %1697 = phi float [ %901, %1600 ], [ %901, %1661 ], [ %901, %1659 ], [ %901, %1646 ], [ %1643, %1616 ]
  %1698 = and i32 %1608, 12
  %1699 = icmp eq i32 %1698, 12
  br i1 %1699, label %1782, label %1700

; <label>:1700                                    ; preds = %1689
  %1701 = and i32 %1608, 2097184
  %1702 = icmp eq i32 %1701, 2097184
  %1703 = select i1 %1702, float %1199, float 0.000000e+00
  %1704 = and i32 %1608, 4194336
  %1705 = icmp eq i32 %1704, 4194336
  %1706 = select i1 %1705, float %1199, float 0.000000e+00
  %1707 = and i32 %1608, 8388640
  %1708 = icmp eq i32 %1707, 8388640
  %1709 = select i1 %1708, float %1199, float 0.000000e+00
  %1710 = and i32 %1608, 16384
  %1711 = icmp ne i32 %1710, 0
  %1712 = select i1 %1711, float %1199, float 0.000000e+00
  %1713 = icmp eq i32 %1698, 0
  br i1 %1713, label %1714, label %1730

; <label>:1714                                    ; preds = %1700
  %1715 = fsub fast float %1500, %888
  %1716 = fsub fast float %1501, %889
  %1717 = fmul fast float %1703, %1715
  %1718 = fmul fast float %1703, %1716
  %1719 = fadd fast float %1717, %888
  %1720 = fadd fast float %1718, %889
  %1721 = fsub fast float %1502, %899
  %1722 = fmul fast float %1706, %1721
  %1723 = fadd fast float %1722, %899
  %1724 = fsub fast float %1499, %898
  %1725 = fmul fast float %1709, %1724
  %1726 = fadd fast float %1725, %898
  %1727 = fsub fast float %1578, %900
  %1728 = fmul fast float %1712, %1727
  %1729 = fadd fast float %1728, %900
  br label %1782

; <label>:1730                                    ; preds = %1700
  %1731 = icmp eq i32 %1698, 4
  br i1 %1731, label %1732, label %1766

; <label>:1732                                    ; preds = %1730
  %1733 = fmul fast float %1703, %1500
  %1734 = fmul fast float %1703, %1501
  %1735 = fadd fast float %1733, %888
  %1736 = fadd fast float %1734, %889
  %1737 = call float @dx.op.binary.f32(i32 36, float %899, float %1502)  ; FMin(a,b)
  %1738 = fsub fast float %1737, %899
  %1739 = fmul fast float %1738, %1706
  %1740 = fadd fast float %1739, %899
  %1741 = fadd fast float %1499, %898
  %1742 = fmul fast float %1741, 0x3FF337FAE0000000
  %1743 = fmul fast float %898, %898
  %1744 = fmul fast float %1499, %1499
  %1745 = fadd fast float %1744, %1743
  %1746 = fmul fast float %1745, 0x3FE5152B00000000
  %1747 = fmul fast float %898, 0xBFCC1F85E0000000
  %1748 = fmul fast float %1747, %1499
  %1749 = fadd fast float %1748, 0xBFE1363700000000
  %1750 = fadd fast float %1749, %1742
  %1751 = fsub fast float %1750, %1746
  %1752 = fmul fast float %1741, 0x3FBA6F0D00000000
  %1753 = fmul fast float %1745, 0x3FD0432880000000
  %1754 = fmul fast float %898, 0xBFEF110800000000
  %1755 = fmul fast float %1754, %1499
  %1756 = fadd fast float %1755, 1.000000e+00
  %1757 = fsub fast float %1756, %1752
  %1758 = fadd fast float %1757, %1753
  %1759 = fdiv fast float %1751, %1758
  %1760 = call float @dx.op.unary.f32(i32 7, float %1759)  ; Saturate(value)
  %1761 = fsub fast float %1760, %898
  %1762 = fmul fast float %1761, %1709
  %1763 = fadd fast float %1762, %898
  %1764 = fmul fast float %1712, %1578
  %1765 = fadd fast float %1764, %900
  br label %1782

; <label>:1766                                    ; preds = %1730
  %1767 = icmp eq i32 %1698, 8
  br i1 %1767, label %1768, label %1782

; <label>:1768                                    ; preds = %1766
  %1769 = fmul fast float %1703, %1500
  %1770 = fmul fast float %1703, %1501
  %1771 = fadd fast float %1769, %888
  %1772 = fadd fast float %1770, %889
  %1773 = call float @dx.op.binary.f32(i32 36, float %899, float %1502)  ; FMin(a,b)
  %1774 = fsub fast float %1773, %899
  %1775 = fmul fast float %1774, %1706
  %1776 = fadd fast float %1775, %899
  %1777 = fsub fast float %1499, %898
  %1778 = fmul fast float %1709, %1777
  %1779 = fadd fast float %1778, %898
  %1780 = fmul fast float %1712, %1578
  %1781 = fadd fast float %1780, %900
  br label %1782

; <label>:1782                                    ; preds = %1768, %1766, %1732, %1714, %1689, %1198, %902, %887
  %1783 = phi float [ %888, %1689 ], [ %888, %1198 ], [ %888, %887 ], [ %1771, %1768 ], [ %888, %1766 ], [ %1735, %1732 ], [ %1719, %1714 ], [ %888, %902 ]
  %1784 = phi float [ %889, %1689 ], [ %889, %1198 ], [ %889, %887 ], [ %1772, %1768 ], [ %889, %1766 ], [ %1736, %1732 ], [ %1720, %1714 ], [ %889, %902 ]
  %1785 = phi float [ %1690, %1689 ], [ %890, %1198 ], [ %890, %887 ], [ %1690, %1768 ], [ %1690, %1766 ], [ %1690, %1732 ], [ %1690, %1714 ], [ %890, %902 ]
  %1786 = phi float [ %1691, %1689 ], [ %891, %1198 ], [ %891, %887 ], [ %1691, %1768 ], [ %1691, %1766 ], [ %1691, %1732 ], [ %1691, %1714 ], [ %891, %902 ]
  %1787 = phi float [ %1692, %1689 ], [ %892, %1198 ], [ %892, %887 ], [ %1692, %1768 ], [ %1692, %1766 ], [ %1692, %1732 ], [ %1692, %1714 ], [ %892, %902 ]
  %1788 = phi float [ %1693, %1689 ], [ %893, %1198 ], [ %893, %887 ], [ %1693, %1768 ], [ %1693, %1766 ], [ %1693, %1732 ], [ %1693, %1714 ], [ %893, %902 ]
  %1789 = phi float [ %1694, %1689 ], [ %894, %1198 ], [ %894, %887 ], [ %1694, %1768 ], [ %1694, %1766 ], [ %1694, %1732 ], [ %1694, %1714 ], [ %894, %902 ]
  %1790 = phi float [ %1695, %1689 ], [ %895, %1198 ], [ %895, %887 ], [ %1695, %1768 ], [ %1695, %1766 ], [ %1695, %1732 ], [ %1695, %1714 ], [ %895, %902 ]
  %1791 = phi float [ %1696, %1689 ], [ %896, %1198 ], [ %896, %887 ], [ %1696, %1768 ], [ %1696, %1766 ], [ %1696, %1732 ], [ %1696, %1714 ], [ %896, %902 ]
  %1792 = phi float [ %898, %1689 ], [ %898, %1198 ], [ %898, %887 ], [ %1779, %1768 ], [ %898, %1766 ], [ %1763, %1732 ], [ %1726, %1714 ], [ %898, %902 ]
  %1793 = phi float [ %899, %1689 ], [ %899, %1198 ], [ %899, %887 ], [ %1776, %1768 ], [ %899, %1766 ], [ %1740, %1732 ], [ %1723, %1714 ], [ %899, %902 ]
  %1794 = phi float [ %900, %1689 ], [ %900, %1198 ], [ %900, %887 ], [ %1781, %1768 ], [ %900, %1766 ], [ %1765, %1732 ], [ %1729, %1714 ], [ %900, %902 ]
  %1795 = phi float [ %1697, %1689 ], [ %901, %1198 ], [ %901, %887 ], [ %1697, %1768 ], [ %1697, %1766 ], [ %1697, %1732 ], [ %1697, %1714 ], [ %901, %902 ]
  br i1 %338, label %2676, label %1796

; <label>:1796                                    ; preds = %1782
  %1797 = icmp ult i32 %391, 3
  %1798 = add i32 %38, 56
  %1799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %1800 = extractvalue %dx.types.ResRet.i32 %1799, 0
  %1801 = add i32 %38, 60
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = or i32 %1803, %1800
  %1805 = icmp eq i32 %1804, 0
  br i1 %1805, label %2676, label %1806

; <label>:1806                                    ; preds = %1796
  %1807 = and i32 %1800, 262144
  %1808 = icmp ne i32 %1807, 0
  %1809 = select i1 %1808, float %41, float 1.000000e+00
  %1810 = select i1 %1808, float %42, float 0.000000e+00
  %1811 = select i1 %1808, float %43, float 0.000000e+00
  %1812 = select i1 %1808, float %44, float 1.000000e+00
  %1813 = select i1 %1808, float %45, float %54
  %1814 = select i1 %1808, float %46, float %55
  %1815 = add i32 %38, 316
  %1816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %1817 = extractvalue %dx.types.ResRet.i32 %1816, 0
  %1818 = lshr i32 %1817, 16
  %1819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1818)  ; LegacyF16ToF32(value)
  %1820 = fmul fast float %1819, 0x3F50624DE0000000
  %1821 = add i32 %38, 120
  %1822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %1823 = extractvalue %dx.types.ResRet.i32 %1822, 0
  %1824 = lshr i32 %1823, 16
  %1825 = and i32 %1824, 255
  %1826 = lshr i32 %1823, 24
  %1827 = add i32 %38, 324
  %1828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1827, i32 undef)  ; BufferLoad(srv,index,wot)
  %1829 = extractvalue %dx.types.ResRet.i32 %1828, 0
  %1830 = and i32 %1829, 65535
  %1831 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1830)  ; LegacyF16ToF32(value)
  %1832 = lshr i32 %1829, 16
  %1833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1832)  ; LegacyF16ToF32(value)
  %1834 = add i32 %38, 64
  %1835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1834, i32 undef)  ; BufferLoad(srv,index,wot)
  %1836 = extractvalue %dx.types.ResRet.i32 %1835, 0
  %1837 = lshr i32 %1836, 22
  %1838 = shl nuw nsw i32 %1837, 5
  %1839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1838)  ; LegacyF16ToF32(value)
  %1840 = shl i32 %1836, 4
  %1841 = and i32 %1840, 32752
  %1842 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1841)  ; LegacyF16ToF32(value)
  %1843 = lshr i32 %1836, 7
  %1844 = and i32 %1843, 32752
  %1845 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1844)  ; LegacyF16ToF32(value)
  %1846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1847 = extractvalue %dx.types.CBufRet.f32 %1846, 3
  %1848 = fmul fast float %1847, 1.000000e+03
  %1849 = fmul fast float %288, %1848
  %1850 = call float @dx.op.unary.f32(i32 22, float %1849)  ; Frc(value)
  %1851 = fadd fast float %1850, %278
  %1852 = fmul fast float %289, %1848
  %1853 = call float @dx.op.unary.f32(i32 22, float %1852)  ; Frc(value)
  %1854 = fadd fast float %1853, %280
  %1855 = fmul fast float %1820, %1848
  %1856 = call float @dx.op.unary.f32(i32 22, float %1855)  ; Frc(value)
  %1857 = fmul fast float %1856, 0x401921FB60000000
  %1858 = fadd fast float %1857, %1839
  %1859 = call float @dx.op.unary.f32(i32 13, float %1858)  ; Sin(value)
  %1860 = call float @dx.op.unary.f32(i32 12, float %1858)  ; Cos(value)
  %1861 = fsub fast float -0.000000e+00, %1859
  %1862 = fadd fast float %1813, -5.000000e-01
  %1863 = fadd fast float %1814, -5.000000e-01
  %1864 = fmul fast float %1831, %1862
  %1865 = fmul fast float %1833, %1863
  %1866 = fadd fast float %1864, 5.000000e-01
  %1867 = fadd fast float %1865, 5.000000e-01
  %1868 = fmul fast float %1842, %1866
  %1869 = fmul fast float %1845, %1867
  %1870 = fmul fast float %1860, %1868
  %1871 = call float @dx.op.tertiary.f32(i32 46, float %1861, float %1869, float %1870)  ; FMad(a,b,c)
  %1872 = fmul fast float %1859, %1868
  %1873 = call float @dx.op.tertiary.f32(i32 46, float %1860, float %1869, float %1872)  ; FMad(a,b,c)
  %1874 = fadd fast float %1851, %1871
  %1875 = fadd fast float %1854, %1873
  %1876 = icmp ugt i32 %1825, 1
  %1877 = icmp ugt i32 %1823, 33554431
  %1878 = or i1 %1877, %1876
  br i1 %1878, label %1879, label %1904

; <label>:1879                                    ; preds = %1806
  %1880 = add i32 %38, 260
  %1881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.i32 %1881, 0
  %1883 = lshr i32 %1882, 16
  %1884 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1883)  ; LegacyF16ToF32(value)
  %1885 = fmul fast float %1847, %1884
  %1886 = call float @dx.op.unary.f32(i32 22, float %1885)  ; Frc(value)
  %1887 = mul nuw nsw i32 %1825, %1826
  %1888 = uitofp i32 %1887 to float
  %1889 = fmul fast float %1886, %1888
  %1890 = call float @dx.op.unary.f32(i32 27, float %1889)  ; Round_ni(value)
  %1891 = fptoui float %1890 to i32
  %1892 = urem i32 %1891, %1825
  %1893 = udiv i32 %1891, %1826
  %1894 = call float @dx.op.unary.f32(i32 22, float %1874)  ; Frc(value)
  %1895 = call float @dx.op.unary.f32(i32 22, float %1875)  ; Frc(value)
  %1896 = uitofp i32 %1892 to float
  %1897 = uitofp i32 %1893 to float
  %1898 = fadd fast float %1894, %1896
  %1899 = fadd fast float %1895, %1897
  %1900 = uitofp i32 %1825 to float
  %1901 = uitofp i32 %1826 to float
  %1902 = fdiv fast float %1898, %1900
  %1903 = fdiv fast float %1899, %1901
  br label %1904

; <label>:1904                                    ; preds = %1879, %1806
  %1905 = phi float [ %1902, %1879 ], [ %1874, %1806 ]
  %1906 = phi float [ %1903, %1879 ], [ %1875, %1806 ]
  %1907 = and i32 %1800, 16777216
  %1908 = icmp eq i32 %1907, 0
  br i1 %1908, label %2018, label %1909

; <label>:1909                                    ; preds = %1904
  %1910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1911 = extractvalue %dx.types.CBufRet.f32 %1910, 0
  %1912 = extractvalue %dx.types.CBufRet.f32 %1910, 1
  %1913 = extractvalue %dx.types.CBufRet.f32 %1910, 2
  %1914 = fadd fast float %1911, %121
  %1915 = fadd fast float %1912, %122
  %1916 = fadd fast float %1913, %123
  %1917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1918 = extractvalue %dx.types.CBufRet.f32 %1917, 0
  %1919 = call float @dx.op.unary.f32(i32 7, float %1918)  ; Saturate(value)
  %1920 = icmp eq i32 %39, 65535
  br i1 %1920, label %2015, label %1921

; <label>:1921                                    ; preds = %1909
  %1922 = lshr i32 %39, 1
  %1923 = shl i32 %1922, 2
  %1924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1923, i32 undef)  ; BufferLoad(srv,index,wot)
  %1925 = extractvalue %dx.types.ResRet.i32 %1924, 0
  %1926 = and i32 %39, 1
  %1927 = icmp ne i32 %1926, 0
  %1928 = lshr i32 %1925, 16
  %1929 = and i32 %1925, 65535
  %1930 = select i1 %1927, i32 %1928, i32 %1929
  %1931 = icmp eq i32 %1930, 65535
  br i1 %1931, label %2011, label %1932

; <label>:1932                                    ; preds = %1921
  %1933 = mul nuw nsw i32 %1930, 40
  %1934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = extractvalue %dx.types.ResRet.f32 %1934, 1
  %1937 = extractvalue %dx.types.ResRet.f32 %1934, 2
  %1938 = add nuw nsw i32 %1933, 12
  %1939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.f32 %1939, 0
  %1941 = extractvalue %dx.types.ResRet.f32 %1939, 1
  %1942 = extractvalue %dx.types.ResRet.f32 %1939, 2
  %1943 = add nuw nsw i32 %1933, 24
  %1944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.ResRet.f32 %1944, 1
  %1947 = extractvalue %dx.types.ResRet.f32 %1944, 2
  %1948 = add nuw nsw i32 %1933, 36
  %1949 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.f32 %1949, 0
  %1951 = fsub fast float %1914, %1935
  %1952 = fsub fast float %1915, %1936
  %1953 = fsub fast float %1916, %1937
  %1954 = fmul fast float %1950, %1951
  %1955 = fmul fast float %1950, %1952
  %1956 = fmul fast float %1950, %1953
  %1957 = call float @dx.op.unary.f32(i32 27, float %1954)  ; Round_ni(value)
  %1958 = call float @dx.op.unary.f32(i32 27, float %1955)  ; Round_ni(value)
  %1959 = call float @dx.op.unary.f32(i32 27, float %1956)  ; Round_ni(value)
  %1960 = fadd fast float %1957, 5.000000e-01
  %1961 = fadd fast float %1958, 5.000000e-01
  %1962 = fadd fast float %1959, 5.000000e-01
  %1963 = fmul fast float %1960, %1940
  %1964 = fmul fast float %1961, %1941
  %1965 = fmul fast float %1962, %1942
  %1966 = shl i32 %39, 2
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = add i32 %1968, 0
  %1970 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1969, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1971 = call float @dx.op.unary.f32(i32 22, float %1963)  ; Frc(value)
  %1972 = call float @dx.op.unary.f32(i32 22, float %1964)  ; Frc(value)
  %1973 = call float @dx.op.unary.f32(i32 22, float %1965)  ; Frc(value)
  %1974 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1970, %dx.types.Handle %35, float %1971, float %1972, float %1973, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1975 = extractvalue %dx.types.ResRet.f32 %1974, 0
  %1976 = extractvalue %dx.types.ResRet.f32 %1974, 1
  %1977 = extractvalue %dx.types.ResRet.f32 %1974, 2
  %1978 = fmul fast float %1975, 1.023000e+03
  %1979 = fmul fast float %1976, 1.023000e+03
  %1980 = fmul fast float %1977, 1.023000e+03
  %1981 = fadd fast float %1978, 5.000000e-01
  %1982 = fadd fast float %1979, 5.000000e-01
  %1983 = fadd fast float %1980, 5.000000e-01
  %1984 = call float @dx.op.unary.f32(i32 27, float %1981)  ; Round_ni(value)
  %1985 = call float @dx.op.unary.f32(i32 27, float %1982)  ; Round_ni(value)
  %1986 = call float @dx.op.unary.f32(i32 27, float %1983)  ; Round_ni(value)
  %1987 = fsub fast float %1954, %1957
  %1988 = fsub fast float %1955, %1958
  %1989 = fsub fast float %1956, %1959
  %1990 = fmul fast float %1987, 7.500000e-01
  %1991 = fmul fast float %1988, 7.500000e-01
  %1992 = fmul fast float %1989, 7.500000e-01
  %1993 = fadd fast float %1957, 1.250000e-01
  %1994 = fadd fast float %1993, %1990
  %1995 = fadd fast float %1994, %1984
  %1996 = fadd fast float %1958, 1.250000e-01
  %1997 = fadd fast float %1996, %1991
  %1998 = fadd fast float %1997, %1985
  %1999 = fadd fast float %1959, 1.250000e-01
  %2000 = fadd fast float %1999, %1992
  %2001 = fadd fast float %2000, %1986
  %2002 = fmul fast float %1995, %1945
  %2003 = fmul fast float %1998, %1946
  %2004 = fmul fast float %2001, %1947
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = add i32 %2006, 0
  %2008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2009 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2008, %dx.types.Handle %33, float %2002, float %2003, float %2004, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2010 = extractvalue %dx.types.ResRet.f32 %2009, 0
  br label %2011

; <label>:2011                                    ; preds = %1932, %1921
  %2012 = phi float [ %2010, %1932 ], [ -1.000000e+00, %1921 ]
  %2013 = fadd fast float %2012, %1919
  %2014 = call float @dx.op.unary.f32(i32 7, float %2013)  ; Saturate(value)
  br label %2015

; <label>:2015                                    ; preds = %2011, %1909
  %2016 = phi float [ %2014, %2011 ], [ %1919, %1909 ]
  %2017 = fmul fast float %2016, %387
  br label %2018

; <label>:2018                                    ; preds = %2015, %1904
  %2019 = phi float [ %2017, %2015 ], [ %387, %1904 ]
  %2020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2021 = extractvalue %dx.types.ResRet.i32 %2020, 0
  %2022 = and i32 %2021, 256
  %2023 = icmp eq i32 %2022, 0
  br i1 %2023, label %2070, label %2024

; <label>:2024                                    ; preds = %2018
  %2025 = add i32 %38, 432
  %2026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.i32 %2026, 0
  %2028 = add i32 %2027, 0
  %2029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2030 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2029, %dx.types.Handle %63, float %1905, float %1906, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2031 = extractvalue %dx.types.ResRet.f32 %2030, 0
  %2032 = add i32 %38, 132
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = shl i32 %2034, 4
  %2036 = and i32 %2035, 32752
  %2037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2036)  ; LegacyF16ToF32(value)
  %2038 = lshr i32 %2034, 7
  %2039 = and i32 %2038, 32752
  %2040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2039)  ; LegacyF16ToF32(value)
  %2041 = fsub fast float 1.000000e+00, %2019
  %2042 = call float @dx.op.binary.f32(i32 35, float %2041, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2043 = bitcast float %2019 to i32
  %2044 = sitofp i32 %2043 to float
  %2045 = fadd fast float %2044, 0xC1CFBF8940000000
  %2046 = fmul fast float %2040, %2045
  %2047 = fadd fast float %2046, 0x41CFBF8940000000
  %2048 = fptosi float %2047 to i32
  %2049 = bitcast i32 %2048 to float
  %2050 = bitcast float %2042 to i32
  %2051 = sitofp i32 %2050 to float
  %2052 = fadd fast float %2051, 0xC1CFBF8940000000
  %2053 = fmul fast float %2052, %2040
  %2054 = fadd fast float %2053, 0x41CFBF8940000000
  %2055 = fptosi float %2054 to i32
  %2056 = bitcast i32 %2055 to float
  %2057 = fmul fast float %2049, %2037
  %2058 = fmul fast float %2056, %2037
  %2059 = fsub fast float %2042, %2057
  %2060 = fadd fast float %2058, %2042
  %2061 = call float @dx.op.unary.f32(i32 7, float %2059)  ; Saturate(value)
  %2062 = call float @dx.op.unary.f32(i32 7, float %2060)  ; Saturate(value)
  %2063 = fsub fast float %2031, %2061
  %2064 = fsub fast float %2062, %2061
  %2065 = bitcast float %2064 to i32
  %2066 = sub nsw i32 2129859010, %2065
  %2067 = bitcast i32 %2066 to float
  %2068 = fmul fast float %2067, %2063
  %2069 = call float @dx.op.unary.f32(i32 7, float %2068)  ; Saturate(value)
  br label %2070

; <label>:2070                                    ; preds = %2024, %2018
  %2071 = phi float [ %2069, %2024 ], [ %2019, %2018 ]
  %2072 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2073 = extractvalue %dx.types.ResRet.i32 %2072, 0
  %2074 = and i32 %2073, 128
  %2075 = icmp eq i32 %2074, 0
  br i1 %2075, label %2092, label %2076

; <label>:2076                                    ; preds = %2070
  %2077 = add i32 %38, 416
  %2078 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2077, i32 undef)  ; BufferLoad(srv,index,wot)
  %2079 = extractvalue %dx.types.ResRet.i32 %2078, 0
  %2080 = add i32 %2079, 0
  %2081 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2080, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2082 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2081, %dx.types.Handle %63, float %1905, float %1906, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2083 = extractvalue %dx.types.ResRet.f32 %2082, 0
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = and i32 %2085, 524288
  %2087 = icmp ne i32 %2086, 0
  %2088 = fcmp fast ogt float %2083, 0x3FE0101020000000
  %2089 = select i1 %2088, float 1.000000e+00, float 0.000000e+00
  %2090 = select i1 %2087, float %2089, float %2083
  %2091 = fmul fast float %2090, %2071
  br label %2092

; <label>:2092                                    ; preds = %2076, %2070
  %2093 = phi float [ %2091, %2076 ], [ %2071, %2070 ]
  %2094 = fcmp fast ult float %2093, 0x3F70101020000000
  br i1 %2094, label %2676, label %2095

; <label>:2095                                    ; preds = %2092
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = and i32 %2097, 16
  %2099 = icmp eq i32 %2098, 0
  br i1 %2099, label %2298, label %2100

; <label>:2100                                    ; preds = %2095
  %2101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1821, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.i32 %2101, 0
  %2103 = add i32 %38, 368
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2103, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = add i32 %2105, 0
  %2107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2108 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2107, %dx.types.Handle %62, float %1905, float %1906, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2109 = extractvalue %dx.types.ResRet.f32 %2108, 0
  %2110 = extractvalue %dx.types.ResRet.f32 %2108, 1
  %2111 = extractvalue %dx.types.ResRet.f32 %2108, 2
  %2112 = extractvalue %dx.types.ResRet.f32 %2108, 3
  %2113 = and i32 %2102, 255
  %2114 = uitofp i32 %2113 to float
  %2115 = lshr i32 %2102, 8
  %2116 = and i32 %2115, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2112, %2114
  %2119 = fadd fast float %2118, %2117
  %2120 = fmul fast float %2119, 0x3F70101000000000
  %2121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2122 = extractvalue %dx.types.ResRet.i32 %2121, 0
  %2123 = and i32 %2122, 512
  %2124 = icmp eq i32 %2123, 0
  br i1 %2124, label %2133, label %2125

; <label>:2125                                    ; preds = %2100
  %2126 = add i32 %38, 448
  %2127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2126, i32 undef)  ; BufferLoad(srv,index,wot)
  %2128 = extractvalue %dx.types.ResRet.i32 %2127, 0
  %2129 = add i32 %2128, 0
  %2130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2129, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2131 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2130, %dx.types.Handle %63, float %1905, float %1906, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2132 = extractvalue %dx.types.ResRet.f32 %2131, 0
  br label %2133

; <label>:2133                                    ; preds = %2125, %2100
  %2134 = phi float [ %2132, %2125 ], [ 1.000000e+00, %2100 ]
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = and i32 %2136, 33554432
  %2138 = icmp eq i32 %2137, 0
  br i1 %2138, label %2245, label %2139

; <label>:2139                                    ; preds = %2133
  %2140 = add i32 %38, 256
  %2141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2140, i32 undef)  ; BufferLoad(srv,index,wot)
  %2142 = extractvalue %dx.types.ResRet.i32 %2141, 0
  %2143 = and i32 %2142, 65535
  %2144 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2143)  ; LegacyF16ToF32(value)
  %2145 = lshr i32 %2142, 16
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = add i32 %38, 260
  %2148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2147, i32 undef)  ; BufferLoad(srv,index,wot)
  %2149 = extractvalue %dx.types.ResRet.i32 %2148, 0
  %2150 = and i32 %2149, 65535
  %2151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2150)  ; LegacyF16ToF32(value)
  %2152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %260, i32 undef)  ; BufferLoad(srv,index,wot)
  %2153 = extractvalue %dx.types.ResRet.i32 %2152, 0
  %2154 = lshr i32 %2153, 24
  %2155 = uitofp i32 %2154 to float
  %2156 = fmul fast float %2155, 0x3F70101020000000
  %2157 = and i32 %2153, 255
  %2158 = uitofp i32 %2157 to float
  %2159 = fmul fast float %2158, 0x3F70101020000000
  %2160 = lshr i32 %2153, 8
  %2161 = and i32 %2160, 255
  %2162 = uitofp i32 %2161 to float
  %2163 = fmul fast float %2162, 0x3F70101020000000
  %2164 = lshr i32 %2153, 16
  %2165 = and i32 %2164, 255
  %2166 = uitofp i32 %2165 to float
  %2167 = fmul fast float %2166, 0x3F70101020000000
  %2168 = add i32 %38, 252
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2168, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = lshr i32 %2170, 24
  %2172 = uitofp i32 %2171 to float
  %2173 = fmul fast float %2172, 0x3F70101020000000
  %2174 = and i32 %2170, 255
  %2175 = uitofp i32 %2174 to float
  %2176 = fmul fast float %2175, 0x3F70101020000000
  %2177 = lshr i32 %2170, 8
  %2178 = and i32 %2177, 255
  %2179 = uitofp i32 %2178 to float
  %2180 = fmul fast float %2179, 0x3F70101020000000
  %2181 = lshr i32 %2170, 16
  %2182 = and i32 %2181, 255
  %2183 = uitofp i32 %2182 to float
  %2184 = fmul fast float %2183, 0x3F70101020000000
  %2185 = bitcast float %2109 to i32
  %2186 = ashr i32 %2185, 1
  %2187 = sub nsw i32 1597463174, %2186
  %2188 = bitcast i32 %2187 to float
  %2189 = fmul fast float %2109, 5.000000e-01
  %2190 = fmul fast float %2188, %2188
  %2191 = fmul fast float %2190, %2189
  %2192 = fsub fast float 1.500000e+00, %2191
  %2193 = fmul fast float %2188, %2109
  %2194 = fmul fast float %2193, %2192
  %2195 = bitcast float %2110 to i32
  %2196 = ashr i32 %2195, 1
  %2197 = sub nsw i32 1597463174, %2196
  %2198 = bitcast i32 %2197 to float
  %2199 = fmul fast float %2110, 5.000000e-01
  %2200 = fmul fast float %2198, %2198
  %2201 = fmul fast float %2200, %2199
  %2202 = fsub fast float 1.500000e+00, %2201
  %2203 = fmul fast float %2198, %2110
  %2204 = fmul fast float %2203, %2202
  %2205 = bitcast float %2111 to i32
  %2206 = ashr i32 %2205, 1
  %2207 = sub nsw i32 1597463174, %2206
  %2208 = bitcast i32 %2207 to float
  %2209 = fmul fast float %2111, 5.000000e-01
  %2210 = fmul fast float %2208, %2208
  %2211 = fmul fast float %2210, %2209
  %2212 = fsub fast float 1.500000e+00, %2211
  %2213 = fmul fast float %2208, %2111
  %2214 = fmul fast float %2213, %2212
  %2215 = fsub fast float %2194, %2176
  %2216 = fsub fast float %2204, %2180
  %2217 = fsub fast float %2214, %2184
  %2218 = fmul fast float %2215, %2144
  %2219 = fmul fast float %2216, %2146
  %2220 = fmul fast float %2217, %2151
  %2221 = fadd fast float %2218, %2159
  %2222 = fadd fast float %2219, %2163
  %2223 = fadd fast float %2220, %2167
  %2224 = call float @dx.op.unary.f32(i32 7, float %2221)  ; Saturate(value)
  %2225 = call float @dx.op.unary.f32(i32 7, float %2222)  ; Saturate(value)
  %2226 = call float @dx.op.unary.f32(i32 7, float %2223)  ; Saturate(value)
  %2227 = fmul fast float %2224, %2224
  %2228 = fmul fast float %2225, %2225
  %2229 = fmul fast float %2226, %2226
  %2230 = fsub fast float %2227, %2109
  %2231 = fsub fast float %2228, %2110
  %2232 = fsub fast float %2229, %2111
  %2233 = fmul fast float %2230, %2134
  %2234 = fmul fast float %2231, %2134
  %2235 = fmul fast float %2232, %2134
  %2236 = fadd fast float %2233, %2109
  %2237 = fadd fast float %2234, %2110
  %2238 = fadd fast float %2235, %2111
  %2239 = fadd fast float %2156, %2120
  %2240 = fsub fast float %2239, %2173
  %2241 = call float @dx.op.unary.f32(i32 7, float %2240)  ; Saturate(value)
  %2242 = fsub fast float %2241, %2120
  %2243 = fmul fast float %2242, %2134
  %2244 = fadd fast float %2243, %2120
  br label %2298

; <label>:2245                                    ; preds = %2133
  %2246 = and i32 %2136, 134217728
  %2247 = icmp eq i32 %2246, 0
  br i1 %2247, label %2282, label %2248

; <label>:2248                                    ; preds = %2245
  %2249 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %2250 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %2251 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %2252 = fadd fast float %2249, -5.000000e-01
  %2253 = fadd fast float %2250, -5.000000e-01
  %2254 = fadd fast float %2251, -5.000000e-01
  %2255 = fmul fast float %2252, %2134
  %2256 = fmul fast float %2253, %2134
  %2257 = fmul fast float %2254, %2134
  %2258 = fadd fast float %2255, 5.000000e-01
  %2259 = fadd fast float %2256, 5.000000e-01
  %2260 = fadd fast float %2257, 5.000000e-01
  %2261 = call float @dx.op.unary.f32(i32 24, float %2109)  ; Sqrt(value)
  %2262 = call float @dx.op.unary.f32(i32 24, float %2110)  ; Sqrt(value)
  %2263 = call float @dx.op.unary.f32(i32 24, float %2111)  ; Sqrt(value)
  %2264 = fmul fast float %2258, 2.000000e+00
  %2265 = fsub fast float 1.000000e+00, %2264
  %2266 = fmul fast float %2265, %2261
  %2267 = fadd fast float %2266, %2264
  %2268 = fmul fast float %2267, %2261
  %2269 = fmul fast float %2259, 2.000000e+00
  %2270 = fsub fast float 1.000000e+00, %2269
  %2271 = fmul fast float %2270, %2262
  %2272 = fadd fast float %2271, %2269
  %2273 = fmul fast float %2272, %2262
  %2274 = fmul fast float %2260, 2.000000e+00
  %2275 = fsub fast float 1.000000e+00, %2274
  %2276 = fmul fast float %2275, %2263
  %2277 = fadd fast float %2276, %2274
  %2278 = fmul fast float %2277, %2263
  %2279 = fmul fast float %2268, %2268
  %2280 = fmul fast float %2273, %2273
  %2281 = fmul fast float %2278, %2278
  br label %2298

; <label>:2282                                    ; preds = %2245
  %2283 = fmul fast float %265, %265
  %2284 = fmul fast float %269, %269
  %2285 = fmul fast float %273, %273
  %2286 = fadd fast float %2283, -1.000000e+00
  %2287 = fadd fast float %2284, -1.000000e+00
  %2288 = fadd fast float %2285, -1.000000e+00
  %2289 = fmul fast float %2134, %2286
  %2290 = fmul fast float %2134, %2287
  %2291 = fmul fast float %2134, %2288
  %2292 = fadd fast float %2289, 1.000000e+00
  %2293 = fadd fast float %2290, 1.000000e+00
  %2294 = fadd fast float %2291, 1.000000e+00
  %2295 = fmul fast float %2292, %2109
  %2296 = fmul fast float %2293, %2110
  %2297 = fmul fast float %2294, %2111
  br label %2298

; <label>:2298                                    ; preds = %2282, %2248, %2139, %2095
  %2299 = phi float [ %2244, %2139 ], [ %2120, %2248 ], [ %2120, %2282 ], [ 0x3FA23C0BE0000000, %2095 ]
  %2300 = phi float [ %2236, %2139 ], [ %2279, %2248 ], [ %2295, %2282 ], [ 1.000000e+00, %2095 ]
  %2301 = phi float [ %2237, %2139 ], [ %2280, %2248 ], [ %2296, %2282 ], [ 1.000000e+00, %2095 ]
  %2302 = phi float [ %2238, %2139 ], [ %2281, %2248 ], [ %2297, %2282 ], [ 1.000000e+00, %2095 ]
  %2303 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2304 = extractvalue %dx.types.CBufRet.i32 %2303, 1
  %2305 = and i32 %2304, 1
  %2306 = icmp ne i32 %2305, 0
  %2307 = add i32 %38, 356
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 32
  %2311 = icmp ne i32 %2310, 0
  %2312 = and i1 %2306, %2311
  %2313 = select i1 %2312, float 1.000000e+00, float %2300
  %2314 = select i1 %2312, float 0x3FD3333340000000, float %2301
  %2315 = select i1 %2312, float 0x3FD3333340000000, float %2302
  %2316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2317 = extractvalue %dx.types.ResRet.i32 %2316, 0
  %2318 = and i32 %2317, 32
  %2319 = icmp eq i32 %2318, 0
  br i1 %2319, label %2392, label %2320

; <label>:2320                                    ; preds = %2298
  %2321 = add i32 %38, 124
  %2322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2323 = extractvalue %dx.types.ResRet.i32 %2322, 0
  %2324 = add i32 %38, 384
  %2325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2324, i32 undef)  ; BufferLoad(srv,index,wot)
  %2326 = extractvalue %dx.types.ResRet.i32 %2325, 0
  %2327 = add i32 %2326, 0
  %2328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2327, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2329 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2328, %dx.types.Handle %62, float %1905, float %1906, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2330 = extractvalue %dx.types.ResRet.f32 %2329, 0
  %2331 = extractvalue %dx.types.ResRet.f32 %2329, 1
  %2332 = extractvalue %dx.types.ResRet.f32 %2329, 2
  %2333 = extractvalue %dx.types.ResRet.f32 %2329, 3
  %2334 = and i32 %2323, 255
  %2335 = uitofp i32 %2334 to float
  %2336 = lshr i32 %2323, 8
  %2337 = and i32 %2336, 255
  %2338 = uitofp i32 %2337 to float
  %2339 = lshr i32 %2323, 16
  %2340 = and i32 %2339, 255
  %2341 = uitofp i32 %2340 to float
  %2342 = fmul fast float %2341, 0x3F70101000000000
  %2343 = fmul fast float %2330, %2335
  %2344 = fadd fast float %2343, %2338
  %2345 = fmul fast float %2344, 0x3F70101000000000
  %2346 = fadd fast float %2331, -5.000000e-01
  %2347 = fadd fast float %2333, -5.000000e-01
  %2348 = fmul fast float %2346, %2342
  %2349 = fmul fast float %2347, %2342
  %2350 = fadd fast float %2348, 5.000000e-01
  %2351 = fadd fast float %2349, 5.000000e-01
  %2352 = fmul fast float %2350, 2.000000e+00
  %2353 = fadd fast float %2352, -1.000000e+00
  %2354 = fmul fast float %2351, 2.000000e+00
  %2355 = fadd fast float %2354, -1.000000e+00
  %2356 = fadd fast float %2353, %2355
  %2357 = fmul fast float %2356, 5.000000e-01
  %2358 = fsub fast float %2353, %2355
  %2359 = fmul fast float %2358, 5.000000e-01
  %2360 = call float @dx.op.unary.f32(i32 6, float %2357)  ; FAbs(value)
  %2361 = fsub fast float 1.000000e+00, %2360
  %2362 = call float @dx.op.unary.f32(i32 6, float %2359)  ; FAbs(value)
  %2363 = fsub fast float %2361, %2362
  %2364 = call float @dx.op.dot3.f32(i32 55, float %2357, float %2359, float %2363, float %2357, float %2359, float %2363)  ; Dot3(ax,ay,az,bx,by,bz)
  %2365 = call float @dx.op.unary.f32(i32 25, float %2364)  ; Rsqrt(value)
  %2366 = fmul fast float %2357, %2365
  %2367 = fmul fast float %2359, %2365
  %2368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2369 = extractvalue %dx.types.ResRet.i32 %2368, 0
  %2370 = and i32 %2369, 67108864
  %2371 = icmp eq i32 %2370, 0
  br i1 %2371, label %2388, label %2372

; <label>:2372                                    ; preds = %2320
  %2373 = add i32 %38, 312
  %2374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2373, i32 undef)  ; BufferLoad(srv,index,wot)
  %2375 = extractvalue %dx.types.ResRet.i32 %2374, 0
  %2376 = and i32 %2375, 65535
  %2377 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2376)  ; LegacyF16ToF32(value)
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = and i32 %2379, 65535
  %2381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2380)  ; LegacyF16ToF32(value)
  %2382 = lshr i32 %2375, 16
  %2383 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2382)  ; LegacyF16ToF32(value)
  %2384 = fsub fast float %2345, %2383
  %2385 = fmul fast float %2384, %2377
  %2386 = fadd fast float %2385, %2381
  %2387 = call float @dx.op.unary.f32(i32 7, float %2386)  ; Saturate(value)
  br label %2388

; <label>:2388                                    ; preds = %2372, %2320
  %2389 = phi float [ %2387, %2372 ], [ %2345, %2320 ]
  %2390 = call float @dx.op.dot2.f32(i32 54, float %2366, float %2367, float %1809, float %1810)  ; Dot2(ax,ay,bx,by)
  %2391 = call float @dx.op.dot2.f32(i32 54, float %2366, float %2367, float %1811, float %1812)  ; Dot2(ax,ay,bx,by)
  br label %2392

; <label>:2392                                    ; preds = %2388, %2298
  %2393 = phi float [ %2389, %2388 ], [ 0x3FD6666660000000, %2298 ]
  %2394 = phi float [ %2390, %2388 ], [ 0.000000e+00, %2298 ]
  %2395 = phi float [ %2391, %2388 ], [ 0.000000e+00, %2298 ]
  %2396 = phi float [ %2332, %2388 ], [ 1.000000e+00, %2298 ]
  %2397 = add i32 %38, 192
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2397, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = lshr i32 %2399, 22
  %2401 = shl nuw nsw i32 %2400, 5
  %2402 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2401)  ; LegacyF16ToF32(value)
  %2403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2404 = extractvalue %dx.types.ResRet.i32 %2403, 0
  %2405 = and i32 %2404, 64
  %2406 = icmp eq i32 %2405, 0
  br i1 %2406, label %2440, label %2407

; <label>:2407                                    ; preds = %2392
  %2408 = add i32 %38, 400
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = add i32 %2410, 0
  %2412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2414 = extractvalue %dx.types.ResRet.i32 %2413, 0
  %2415 = and i32 %2414, 131072
  %2416 = icmp eq i32 %2415, 0
  %2417 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2412, %dx.types.Handle %62, float %1905, float %1906, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2418 = extractvalue %dx.types.ResRet.f32 %2417, 0
  %2419 = extractvalue %dx.types.ResRet.f32 %2417, 1
  %2420 = extractvalue %dx.types.ResRet.f32 %2417, 2
  %2421 = fmul fast float %2418, %253
  %2422 = fmul fast float %2419, %256
  %2423 = fmul fast float %2420, %259
  br i1 %2416, label %2430, label %2424

; <label>:2424                                    ; preds = %2407
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 0
  %2427 = fmul fast float %2426, %2421
  %2428 = fmul fast float %2426, %2422
  %2429 = fmul fast float %2426, %2423
  br label %2430

; <label>:2430                                    ; preds = %2424, %2407
  %2431 = phi float [ %2427, %2424 ], [ %2421, %2407 ]
  %2432 = phi float [ %2428, %2424 ], [ %2422, %2407 ]
  %2433 = phi float [ %2429, %2424 ], [ %2423, %2407 ]
  %2434 = fmul fast float %2431, %2402
  %2435 = select i1 %163, float %2434, float %2431
  %2436 = call float @dx.op.dot3.f32(i32 55, float %2435, float %2432, float %2433, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2437 = select i1 %163, float 0.000000e+00, float %2431
  %2438 = select i1 %163, float %2436, float %2432
  %2439 = select i1 %163, float 0.000000e+00, float %2433
  br label %2440

; <label>:2440                                    ; preds = %2430, %2392
  %2441 = phi float [ %2437, %2430 ], [ 0.000000e+00, %2392 ]
  %2442 = phi float [ %2438, %2430 ], [ 0.000000e+00, %2392 ]
  %2443 = phi float [ %2439, %2430 ], [ 0.000000e+00, %2392 ]
  %2444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2445 = extractvalue %dx.types.ResRet.i32 %2444, 0
  %2446 = and i32 %2445, 26624
  %2447 = icmp eq i32 %2446, 0
  br i1 %2447, label %2471, label %2448

; <label>:2448                                    ; preds = %2440
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 16384
  %2452 = icmp eq i32 %2451, 0
  br i1 %2452, label %2471, label %2453

; <label>:2453                                    ; preds = %2448
  %2454 = and i32 %2450, 1048576
  %2455 = icmp ne i32 %2454, 0
  %2456 = add i32 %38, 464
  %2457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2456, i32 undef)  ; BufferLoad(srv,index,wot)
  %2458 = extractvalue %dx.types.ResRet.i32 %2457, 0
  %2459 = add i32 %2458, 0
  %2460 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2459, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2461 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2460, %dx.types.Handle %63, float %1905, float %1906, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2462 = extractvalue %dx.types.ResRet.f32 %2461, 0
  %2463 = add i32 %38, 128
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = lshr i32 %2465, 24
  %2467 = uitofp i32 %2466 to float
  %2468 = fmul fast float %2462, 0x3F70101020000000
  %2469 = select i1 %2455, float 0x3F70101020000000, float %2468
  %2470 = fmul fast float %2469, %2467
  br label %2471

; <label>:2471                                    ; preds = %2453, %2448, %2440
  %2472 = phi float [ %2470, %2453 ], [ 0.000000e+00, %2448 ], [ 0.000000e+00, %2440 ]
  %2473 = add i32 %38, 128
  %2474 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2473, i32 undef)  ; BufferLoad(srv,index,wot)
  %2475 = extractvalue %dx.types.ResRet.i32 %2474, 0
  %2476 = and i32 %2475, 255
  %2477 = uitofp i32 %2476 to float
  %2478 = lshr i32 %2475, 8
  %2479 = and i32 %2478, 255
  %2480 = uitofp i32 %2479 to float
  %2481 = call float @dx.op.dot3.f32(i32 55, float %2313, float %2314, float %2315, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2482 = fmul fast float %2480, %2481
  %2483 = fadd fast float %2482, %2477
  %2484 = fmul fast float %2483, 0x3F70101020000000
  %2485 = call float @dx.op.unary.f32(i32 7, float %2484)  ; Saturate(value)
  br i1 %1797, label %2486, label %2494

; <label>:2486                                    ; preds = %2471
  %2487 = fsub fast float 1.000000e+00, %2093
  %2488 = fmul fast float %2487, %1785
  %2489 = fmul fast float %2487, %1786
  %2490 = fmul fast float %2487, %1787
  %2491 = fmul fast float %2487, %1788
  %2492 = fmul fast float %2487, %1789
  %2493 = fmul fast float %2487, %1790
  br label %2494

; <label>:2494                                    ; preds = %2486, %2471
  %2495 = phi float [ %2488, %2486 ], [ %1785, %2471 ]
  %2496 = phi float [ %2489, %2486 ], [ %1786, %2471 ]
  %2497 = phi float [ %2490, %2486 ], [ %1787, %2471 ]
  %2498 = phi float [ %2491, %2486 ], [ %1788, %2471 ]
  %2499 = phi float [ %2492, %2486 ], [ %1789, %2471 ]
  %2500 = phi float [ %2493, %2486 ], [ %1790, %2471 ]
  %2501 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1798, i32 undef)  ; BufferLoad(srv,index,wot)
  %2502 = extractvalue %dx.types.ResRet.i32 %2501, 0
  %2503 = and i32 %2502, 3
  %2504 = icmp eq i32 %2503, 3
  br i1 %2504, label %2583, label %2505

; <label>:2505                                    ; preds = %2494
  %2506 = and i32 %2502, 16
  %2507 = icmp ne i32 %2506, 0
  %2508 = select i1 %2507, float %2093, float 0.000000e+00
  %2509 = icmp eq i32 %2503, 0
  br i1 %2509, label %2510, label %2538

; <label>:2510                                    ; preds = %2505
  %2511 = and i32 %2502, 64
  %2512 = icmp ne i32 %2511, 0
  %2513 = select i1 %2512, float %2093, float 0.000000e+00
  %2514 = fsub fast float %2313, %2495
  %2515 = fsub fast float %2314, %2496
  %2516 = fsub fast float %2315, %2497
  %2517 = fmul fast float %2508, %2514
  %2518 = fmul fast float %2508, %2515
  %2519 = fmul fast float %2508, %2516
  %2520 = fadd fast float %2517, %2495
  %2521 = fadd fast float %2518, %2496
  %2522 = fadd fast float %2519, %2497
  %2523 = fsub fast float %2299, %1791
  %2524 = fmul fast float %2508, %2523
  %2525 = fadd fast float %2524, %1791
  %2526 = fsub fast float %2441, %2498
  %2527 = fsub fast float %2442, %2499
  %2528 = fsub fast float %2443, %2500
  %2529 = fmul fast float %2513, %2526
  %2530 = fmul fast float %2513, %2527
  %2531 = fmul fast float %2513, %2528
  %2532 = fadd fast float %2529, %2498
  %2533 = fadd fast float %2530, %2499
  %2534 = fadd fast float %2531, %2500
  %2535 = fsub fast float %2485, %1795
  %2536 = fmul fast float %2508, %2535
  %2537 = fadd fast float %2536, %1795
  br label %2583

; <label>:2538                                    ; preds = %2505
  %2539 = icmp eq i32 %2503, 1
  br i1 %2539, label %2540, label %2553

; <label>:2540                                    ; preds = %2538
  %2541 = fadd fast float %2313, -1.000000e+00
  %2542 = fadd fast float %2314, -1.000000e+00
  %2543 = fadd fast float %2315, -1.000000e+00
  %2544 = fmul fast float %2508, %2541
  %2545 = fmul fast float %2508, %2542
  %2546 = fmul fast float %2508, %2543
  %2547 = fadd fast float %2544, 1.000000e+00
  %2548 = fadd fast float %2545, 1.000000e+00
  %2549 = fadd fast float %2546, 1.000000e+00
  %2550 = fmul fast float %2547, %2495
  %2551 = fmul fast float %2548, %2496
  %2552 = fmul fast float %2549, %2497
  br label %2583

; <label>:2553                                    ; preds = %2538
  %2554 = icmp eq i32 %2503, 2
  br i1 %2554, label %2555, label %2583

; <label>:2555                                    ; preds = %2553
  %2556 = call float @dx.op.unary.f32(i32 24, float %2313)  ; Sqrt(value)
  %2557 = call float @dx.op.unary.f32(i32 24, float %2314)  ; Sqrt(value)
  %2558 = call float @dx.op.unary.f32(i32 24, float %2315)  ; Sqrt(value)
  %2559 = fadd fast float %2556, -5.000000e-01
  %2560 = fadd fast float %2557, -5.000000e-01
  %2561 = fadd fast float %2558, -5.000000e-01
  %2562 = fmul fast float %2559, %2508
  %2563 = fmul fast float %2560, %2508
  %2564 = fmul fast float %2561, %2508
  %2565 = fadd fast float %2562, 5.000000e-01
  %2566 = fadd fast float %2563, 5.000000e-01
  %2567 = fadd fast float %2564, 5.000000e-01
  %2568 = fmul fast float %2565, 2.000000e+00
  %2569 = fsub fast float 1.000000e+00, %2568
  %2570 = fmul fast float %2569, %2495
  %2571 = fadd fast float %2570, %2568
  %2572 = fmul fast float %2571, %2495
  %2573 = fmul fast float %2566, 2.000000e+00
  %2574 = fsub fast float 1.000000e+00, %2573
  %2575 = fmul fast float %2574, %2496
  %2576 = fadd fast float %2575, %2573
  %2577 = fmul fast float %2576, %2496
  %2578 = fmul fast float %2567, 2.000000e+00
  %2579 = fsub fast float 1.000000e+00, %2578
  %2580 = fmul fast float %2579, %2497
  %2581 = fadd fast float %2580, %2578
  %2582 = fmul fast float %2581, %2497
  br label %2583

; <label>:2583                                    ; preds = %2555, %2553, %2540, %2510, %2494
  %2584 = phi float [ %2495, %2494 ], [ %2572, %2555 ], [ %2495, %2553 ], [ %2550, %2540 ], [ %2520, %2510 ]
  %2585 = phi float [ %2496, %2494 ], [ %2577, %2555 ], [ %2496, %2553 ], [ %2551, %2540 ], [ %2521, %2510 ]
  %2586 = phi float [ %2497, %2494 ], [ %2582, %2555 ], [ %2497, %2553 ], [ %2552, %2540 ], [ %2522, %2510 ]
  %2587 = phi float [ %2498, %2494 ], [ %2498, %2555 ], [ %2498, %2553 ], [ %2498, %2540 ], [ %2532, %2510 ]
  %2588 = phi float [ %2499, %2494 ], [ %2499, %2555 ], [ %2499, %2553 ], [ %2499, %2540 ], [ %2533, %2510 ]
  %2589 = phi float [ %2500, %2494 ], [ %2500, %2555 ], [ %2500, %2553 ], [ %2500, %2540 ], [ %2534, %2510 ]
  %2590 = phi float [ %1791, %2494 ], [ %1791, %2555 ], [ %1791, %2553 ], [ %1791, %2540 ], [ %2525, %2510 ]
  %2591 = phi float [ %1795, %2494 ], [ %1795, %2555 ], [ %1795, %2553 ], [ %1795, %2540 ], [ %2537, %2510 ]
  %2592 = and i32 %2502, 12
  %2593 = icmp eq i32 %2592, 12
  br i1 %2593, label %2676, label %2594

; <label>:2594                                    ; preds = %2583
  %2595 = and i32 %2502, 2097184
  %2596 = icmp eq i32 %2595, 2097184
  %2597 = select i1 %2596, float %2093, float 0.000000e+00
  %2598 = and i32 %2502, 4194336
  %2599 = icmp eq i32 %2598, 4194336
  %2600 = select i1 %2599, float %2093, float 0.000000e+00
  %2601 = and i32 %2502, 8388640
  %2602 = icmp eq i32 %2601, 8388640
  %2603 = select i1 %2602, float %2093, float 0.000000e+00
  %2604 = and i32 %2502, 16384
  %2605 = icmp ne i32 %2604, 0
  %2606 = select i1 %2605, float %2093, float 0.000000e+00
  %2607 = icmp eq i32 %2592, 0
  br i1 %2607, label %2608, label %2624

; <label>:2608                                    ; preds = %2594
  %2609 = fsub fast float %2394, %1783
  %2610 = fsub fast float %2395, %1784
  %2611 = fmul fast float %2597, %2609
  %2612 = fmul fast float %2597, %2610
  %2613 = fadd fast float %2611, %1783
  %2614 = fadd fast float %2612, %1784
  %2615 = fsub fast float %2396, %1793
  %2616 = fmul fast float %2600, %2615
  %2617 = fadd fast float %2616, %1793
  %2618 = fsub fast float %2393, %1792
  %2619 = fmul fast float %2603, %2618
  %2620 = fadd fast float %2619, %1792
  %2621 = fsub fast float %2472, %1794
  %2622 = fmul fast float %2606, %2621
  %2623 = fadd fast float %2622, %1794
  br label %2676

; <label>:2624                                    ; preds = %2594
  %2625 = icmp eq i32 %2592, 4
  br i1 %2625, label %2626, label %2660

; <label>:2626                                    ; preds = %2624
  %2627 = fmul fast float %2597, %2394
  %2628 = fmul fast float %2597, %2395
  %2629 = fadd fast float %2627, %1783
  %2630 = fadd fast float %2628, %1784
  %2631 = call float @dx.op.binary.f32(i32 36, float %1793, float %2396)  ; FMin(a,b)
  %2632 = fsub fast float %2631, %1793
  %2633 = fmul fast float %2632, %2600
  %2634 = fadd fast float %2633, %1793
  %2635 = fadd fast float %2393, %1792
  %2636 = fmul fast float %2635, 0x3FF337FAE0000000
  %2637 = fmul fast float %1792, %1792
  %2638 = fmul fast float %2393, %2393
  %2639 = fadd fast float %2638, %2637
  %2640 = fmul fast float %2639, 0x3FE5152B00000000
  %2641 = fmul fast float %1792, 0xBFCC1F85E0000000
  %2642 = fmul fast float %2641, %2393
  %2643 = fadd fast float %2642, 0xBFE1363700000000
  %2644 = fadd fast float %2643, %2636
  %2645 = fsub fast float %2644, %2640
  %2646 = fmul fast float %2635, 0x3FBA6F0D00000000
  %2647 = fmul fast float %2639, 0x3FD0432880000000
  %2648 = fmul fast float %1792, 0xBFEF110800000000
  %2649 = fmul fast float %2648, %2393
  %2650 = fadd fast float %2649, 1.000000e+00
  %2651 = fsub fast float %2650, %2646
  %2652 = fadd fast float %2651, %2647
  %2653 = fdiv fast float %2645, %2652
  %2654 = call float @dx.op.unary.f32(i32 7, float %2653)  ; Saturate(value)
  %2655 = fsub fast float %2654, %1792
  %2656 = fmul fast float %2655, %2603
  %2657 = fadd fast float %2656, %1792
  %2658 = fmul fast float %2606, %2472
  %2659 = fadd fast float %2658, %1794
  br label %2676

; <label>:2660                                    ; preds = %2624
  %2661 = icmp eq i32 %2592, 8
  br i1 %2661, label %2662, label %2676

; <label>:2662                                    ; preds = %2660
  %2663 = fmul fast float %2597, %2394
  %2664 = fmul fast float %2597, %2395
  %2665 = fadd fast float %2663, %1783
  %2666 = fadd fast float %2664, %1784
  %2667 = call float @dx.op.binary.f32(i32 36, float %1793, float %2396)  ; FMin(a,b)
  %2668 = fsub fast float %2667, %1793
  %2669 = fmul fast float %2668, %2600
  %2670 = fadd fast float %2669, %1793
  %2671 = fsub fast float %2393, %1792
  %2672 = fmul fast float %2603, %2671
  %2673 = fadd fast float %2672, %1792
  %2674 = fmul fast float %2606, %2472
  %2675 = fadd fast float %2674, %1794
  br label %2676

; <label>:2676                                    ; preds = %2662, %2660, %2626, %2608, %2583, %2092, %1796, %1782
  %2677 = phi float [ %1783, %2583 ], [ %1783, %2092 ], [ %1783, %1782 ], [ %2665, %2662 ], [ %1783, %2660 ], [ %2629, %2626 ], [ %2613, %2608 ], [ %1783, %1796 ]
  %2678 = phi float [ %1784, %2583 ], [ %1784, %2092 ], [ %1784, %1782 ], [ %2666, %2662 ], [ %1784, %2660 ], [ %2630, %2626 ], [ %2614, %2608 ], [ %1784, %1796 ]
  %2679 = phi float [ %2584, %2583 ], [ %1785, %2092 ], [ %1785, %1782 ], [ %2584, %2662 ], [ %2584, %2660 ], [ %2584, %2626 ], [ %2584, %2608 ], [ %1785, %1796 ]
  %2680 = phi float [ %2585, %2583 ], [ %1786, %2092 ], [ %1786, %1782 ], [ %2585, %2662 ], [ %2585, %2660 ], [ %2585, %2626 ], [ %2585, %2608 ], [ %1786, %1796 ]
  %2681 = phi float [ %2586, %2583 ], [ %1787, %2092 ], [ %1787, %1782 ], [ %2586, %2662 ], [ %2586, %2660 ], [ %2586, %2626 ], [ %2586, %2608 ], [ %1787, %1796 ]
  %2682 = phi float [ %2587, %2583 ], [ %1788, %2092 ], [ %1788, %1782 ], [ %2587, %2662 ], [ %2587, %2660 ], [ %2587, %2626 ], [ %2587, %2608 ], [ %1788, %1796 ]
  %2683 = phi float [ %2588, %2583 ], [ %1789, %2092 ], [ %1789, %1782 ], [ %2588, %2662 ], [ %2588, %2660 ], [ %2588, %2626 ], [ %2588, %2608 ], [ %1789, %1796 ]
  %2684 = phi float [ %2589, %2583 ], [ %1790, %2092 ], [ %1790, %1782 ], [ %2589, %2662 ], [ %2589, %2660 ], [ %2589, %2626 ], [ %2589, %2608 ], [ %1790, %1796 ]
  %2685 = phi float [ %2590, %2583 ], [ %1791, %2092 ], [ %1791, %1782 ], [ %2590, %2662 ], [ %2590, %2660 ], [ %2590, %2626 ], [ %2590, %2608 ], [ %1791, %1796 ]
  %2686 = phi float [ %1792, %2583 ], [ %1792, %2092 ], [ %1792, %1782 ], [ %2673, %2662 ], [ %1792, %2660 ], [ %2657, %2626 ], [ %2620, %2608 ], [ %1792, %1796 ]
  %2687 = phi float [ %1793, %2583 ], [ %1793, %2092 ], [ %1793, %1782 ], [ %2670, %2662 ], [ %1793, %2660 ], [ %2634, %2626 ], [ %2617, %2608 ], [ %1793, %1796 ]
  %2688 = phi float [ %1794, %2583 ], [ %1794, %2092 ], [ %1794, %1782 ], [ %2675, %2662 ], [ %1794, %2660 ], [ %2659, %2626 ], [ %2623, %2608 ], [ %1794, %1796 ]
  %2689 = phi float [ %2591, %2583 ], [ %1795, %2092 ], [ %1795, %1782 ], [ %2591, %2662 ], [ %2591, %2660 ], [ %2591, %2626 ], [ %2591, %2608 ], [ %1795, %1796 ]
  br i1 %340, label %3570, label %2690

; <label>:2690                                    ; preds = %2676
  %2691 = icmp ult i32 %391, 4
  %2692 = add i32 %38, 72
  %2693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2694 = extractvalue %dx.types.ResRet.i32 %2693, 0
  %2695 = add i32 %38, 76
  %2696 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2695, i32 undef)  ; BufferLoad(srv,index,wot)
  %2697 = extractvalue %dx.types.ResRet.i32 %2696, 0
  %2698 = or i32 %2697, %2694
  %2699 = icmp eq i32 %2698, 0
  br i1 %2699, label %3570, label %2700

; <label>:2700                                    ; preds = %2690
  %2701 = and i32 %2694, 262144
  %2702 = icmp ne i32 %2701, 0
  %2703 = select i1 %2702, float %41, float 1.000000e+00
  %2704 = select i1 %2702, float %42, float 0.000000e+00
  %2705 = select i1 %2702, float %43, float 0.000000e+00
  %2706 = select i1 %2702, float %44, float 1.000000e+00
  %2707 = select i1 %2702, float %45, float %54
  %2708 = select i1 %2702, float %46, float %55
  %2709 = add i32 %38, 332
  %2710 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %2711 = extractvalue %dx.types.ResRet.i32 %2710, 0
  %2712 = lshr i32 %2711, 16
  %2713 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2712)  ; LegacyF16ToF32(value)
  %2714 = fmul fast float %2713, 0x3F50624DE0000000
  %2715 = add i32 %38, 136
  %2716 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2715, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.i32 %2716, 0
  %2718 = lshr i32 %2717, 16
  %2719 = and i32 %2718, 255
  %2720 = lshr i32 %2717, 24
  %2721 = add i32 %38, 340
  %2722 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.i32 %2722, 0
  %2724 = and i32 %2723, 65535
  %2725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2724)  ; LegacyF16ToF32(value)
  %2726 = lshr i32 %2723, 16
  %2727 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2726)  ; LegacyF16ToF32(value)
  %2728 = add i32 %38, 80
  %2729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2728, i32 undef)  ; BufferLoad(srv,index,wot)
  %2730 = extractvalue %dx.types.ResRet.i32 %2729, 0
  %2731 = lshr i32 %2730, 22
  %2732 = shl nuw nsw i32 %2731, 5
  %2733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2732)  ; LegacyF16ToF32(value)
  %2734 = shl i32 %2730, 4
  %2735 = and i32 %2734, 32752
  %2736 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2735)  ; LegacyF16ToF32(value)
  %2737 = lshr i32 %2730, 7
  %2738 = and i32 %2737, 32752
  %2739 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2738)  ; LegacyF16ToF32(value)
  %2740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2741 = extractvalue %dx.types.CBufRet.f32 %2740, 3
  %2742 = fmul fast float %2741, 1.000000e+03
  %2743 = fmul fast float %330, %2742
  %2744 = call float @dx.op.unary.f32(i32 22, float %2743)  ; Frc(value)
  %2745 = fadd fast float %2744, %320
  %2746 = fmul fast float %331, %2742
  %2747 = call float @dx.op.unary.f32(i32 22, float %2746)  ; Frc(value)
  %2748 = fadd fast float %2747, %322
  %2749 = fmul fast float %2714, %2742
  %2750 = call float @dx.op.unary.f32(i32 22, float %2749)  ; Frc(value)
  %2751 = fmul fast float %2750, 0x401921FB60000000
  %2752 = fadd fast float %2751, %2733
  %2753 = call float @dx.op.unary.f32(i32 13, float %2752)  ; Sin(value)
  %2754 = call float @dx.op.unary.f32(i32 12, float %2752)  ; Cos(value)
  %2755 = fsub fast float -0.000000e+00, %2753
  %2756 = fadd fast float %2707, -5.000000e-01
  %2757 = fadd fast float %2708, -5.000000e-01
  %2758 = fmul fast float %2725, %2756
  %2759 = fmul fast float %2727, %2757
  %2760 = fadd fast float %2758, 5.000000e-01
  %2761 = fadd fast float %2759, 5.000000e-01
  %2762 = fmul fast float %2736, %2760
  %2763 = fmul fast float %2739, %2761
  %2764 = fmul fast float %2754, %2762
  %2765 = call float @dx.op.tertiary.f32(i32 46, float %2755, float %2763, float %2764)  ; FMad(a,b,c)
  %2766 = fmul fast float %2753, %2762
  %2767 = call float @dx.op.tertiary.f32(i32 46, float %2754, float %2763, float %2766)  ; FMad(a,b,c)
  %2768 = fadd fast float %2745, %2765
  %2769 = fadd fast float %2748, %2767
  %2770 = icmp ugt i32 %2719, 1
  %2771 = icmp ugt i32 %2717, 33554431
  %2772 = or i1 %2771, %2770
  br i1 %2772, label %2773, label %2798

; <label>:2773                                    ; preds = %2700
  %2774 = add i32 %38, 276
  %2775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2774, i32 undef)  ; BufferLoad(srv,index,wot)
  %2776 = extractvalue %dx.types.ResRet.i32 %2775, 0
  %2777 = lshr i32 %2776, 16
  %2778 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2777)  ; LegacyF16ToF32(value)
  %2779 = fmul fast float %2741, %2778
  %2780 = call float @dx.op.unary.f32(i32 22, float %2779)  ; Frc(value)
  %2781 = mul nuw nsw i32 %2719, %2720
  %2782 = uitofp i32 %2781 to float
  %2783 = fmul fast float %2780, %2782
  %2784 = call float @dx.op.unary.f32(i32 27, float %2783)  ; Round_ni(value)
  %2785 = fptoui float %2784 to i32
  %2786 = urem i32 %2785, %2719
  %2787 = udiv i32 %2785, %2720
  %2788 = call float @dx.op.unary.f32(i32 22, float %2768)  ; Frc(value)
  %2789 = call float @dx.op.unary.f32(i32 22, float %2769)  ; Frc(value)
  %2790 = uitofp i32 %2786 to float
  %2791 = uitofp i32 %2787 to float
  %2792 = fadd fast float %2788, %2790
  %2793 = fadd fast float %2789, %2791
  %2794 = uitofp i32 %2719 to float
  %2795 = uitofp i32 %2720 to float
  %2796 = fdiv fast float %2792, %2794
  %2797 = fdiv fast float %2793, %2795
  br label %2798

; <label>:2798                                    ; preds = %2773, %2700
  %2799 = phi float [ %2796, %2773 ], [ %2768, %2700 ]
  %2800 = phi float [ %2797, %2773 ], [ %2769, %2700 ]
  %2801 = and i32 %2694, 16777216
  %2802 = icmp eq i32 %2801, 0
  br i1 %2802, label %2912, label %2803

; <label>:2803                                    ; preds = %2798
  %2804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2805 = extractvalue %dx.types.CBufRet.f32 %2804, 0
  %2806 = extractvalue %dx.types.CBufRet.f32 %2804, 1
  %2807 = extractvalue %dx.types.CBufRet.f32 %2804, 2
  %2808 = fadd fast float %2805, %121
  %2809 = fadd fast float %2806, %122
  %2810 = fadd fast float %2807, %123
  %2811 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2812 = extractvalue %dx.types.CBufRet.f32 %2811, 0
  %2813 = call float @dx.op.unary.f32(i32 7, float %2812)  ; Saturate(value)
  %2814 = icmp eq i32 %39, 65535
  br i1 %2814, label %2909, label %2815

; <label>:2815                                    ; preds = %2803
  %2816 = lshr i32 %39, 1
  %2817 = shl i32 %2816, 2
  %2818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2817, i32 undef)  ; BufferLoad(srv,index,wot)
  %2819 = extractvalue %dx.types.ResRet.i32 %2818, 0
  %2820 = and i32 %39, 1
  %2821 = icmp ne i32 %2820, 0
  %2822 = lshr i32 %2819, 16
  %2823 = and i32 %2819, 65535
  %2824 = select i1 %2821, i32 %2822, i32 %2823
  %2825 = icmp eq i32 %2824, 65535
  br i1 %2825, label %2905, label %2826

; <label>:2826                                    ; preds = %2815
  %2827 = mul nuw nsw i32 %2824, 40
  %2828 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.f32 %2828, 0
  %2830 = extractvalue %dx.types.ResRet.f32 %2828, 1
  %2831 = extractvalue %dx.types.ResRet.f32 %2828, 2
  %2832 = add nuw nsw i32 %2827, 12
  %2833 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 0
  %2835 = extractvalue %dx.types.ResRet.f32 %2833, 1
  %2836 = extractvalue %dx.types.ResRet.f32 %2833, 2
  %2837 = add nuw nsw i32 %2827, 24
  %2838 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2837, i32 undef)  ; BufferLoad(srv,index,wot)
  %2839 = extractvalue %dx.types.ResRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.ResRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.ResRet.f32 %2838, 2
  %2842 = add nuw nsw i32 %2827, 36
  %2843 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.f32 %2843, 0
  %2845 = fsub fast float %2808, %2829
  %2846 = fsub fast float %2809, %2830
  %2847 = fsub fast float %2810, %2831
  %2848 = fmul fast float %2844, %2845
  %2849 = fmul fast float %2844, %2846
  %2850 = fmul fast float %2844, %2847
  %2851 = call float @dx.op.unary.f32(i32 27, float %2848)  ; Round_ni(value)
  %2852 = call float @dx.op.unary.f32(i32 27, float %2849)  ; Round_ni(value)
  %2853 = call float @dx.op.unary.f32(i32 27, float %2850)  ; Round_ni(value)
  %2854 = fadd fast float %2851, 5.000000e-01
  %2855 = fadd fast float %2852, 5.000000e-01
  %2856 = fadd fast float %2853, 5.000000e-01
  %2857 = fmul fast float %2854, %2834
  %2858 = fmul fast float %2855, %2835
  %2859 = fmul fast float %2856, %2836
  %2860 = shl i32 %39, 2
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2860, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = add i32 %2862, 0
  %2864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2863, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2865 = call float @dx.op.unary.f32(i32 22, float %2857)  ; Frc(value)
  %2866 = call float @dx.op.unary.f32(i32 22, float %2858)  ; Frc(value)
  %2867 = call float @dx.op.unary.f32(i32 22, float %2859)  ; Frc(value)
  %2868 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2864, %dx.types.Handle %35, float %2865, float %2866, float %2867, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2869 = extractvalue %dx.types.ResRet.f32 %2868, 0
  %2870 = extractvalue %dx.types.ResRet.f32 %2868, 1
  %2871 = extractvalue %dx.types.ResRet.f32 %2868, 2
  %2872 = fmul fast float %2869, 1.023000e+03
  %2873 = fmul fast float %2870, 1.023000e+03
  %2874 = fmul fast float %2871, 1.023000e+03
  %2875 = fadd fast float %2872, 5.000000e-01
  %2876 = fadd fast float %2873, 5.000000e-01
  %2877 = fadd fast float %2874, 5.000000e-01
  %2878 = call float @dx.op.unary.f32(i32 27, float %2875)  ; Round_ni(value)
  %2879 = call float @dx.op.unary.f32(i32 27, float %2876)  ; Round_ni(value)
  %2880 = call float @dx.op.unary.f32(i32 27, float %2877)  ; Round_ni(value)
  %2881 = fsub fast float %2848, %2851
  %2882 = fsub fast float %2849, %2852
  %2883 = fsub fast float %2850, %2853
  %2884 = fmul fast float %2881, 7.500000e-01
  %2885 = fmul fast float %2882, 7.500000e-01
  %2886 = fmul fast float %2883, 7.500000e-01
  %2887 = fadd fast float %2851, 1.250000e-01
  %2888 = fadd fast float %2887, %2884
  %2889 = fadd fast float %2888, %2878
  %2890 = fadd fast float %2852, 1.250000e-01
  %2891 = fadd fast float %2890, %2885
  %2892 = fadd fast float %2891, %2879
  %2893 = fadd fast float %2853, 1.250000e-01
  %2894 = fadd fast float %2893, %2886
  %2895 = fadd fast float %2894, %2880
  %2896 = fmul fast float %2889, %2839
  %2897 = fmul fast float %2892, %2840
  %2898 = fmul fast float %2895, %2841
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2860, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = add i32 %2900, 0
  %2902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2903 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2902, %dx.types.Handle %33, float %2896, float %2897, float %2898, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2904 = extractvalue %dx.types.ResRet.f32 %2903, 0
  br label %2905

; <label>:2905                                    ; preds = %2826, %2815
  %2906 = phi float [ %2904, %2826 ], [ -1.000000e+00, %2815 ]
  %2907 = fadd fast float %2906, %2813
  %2908 = call float @dx.op.unary.f32(i32 7, float %2907)  ; Saturate(value)
  br label %2909

; <label>:2909                                    ; preds = %2905, %2803
  %2910 = phi float [ %2908, %2905 ], [ %2813, %2803 ]
  %2911 = fmul fast float %2910, %386
  br label %2912

; <label>:2912                                    ; preds = %2909, %2798
  %2913 = phi float [ %2911, %2909 ], [ %386, %2798 ]
  %2914 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2915 = extractvalue %dx.types.ResRet.i32 %2914, 0
  %2916 = and i32 %2915, 256
  %2917 = icmp eq i32 %2916, 0
  br i1 %2917, label %2964, label %2918

; <label>:2918                                    ; preds = %2912
  %2919 = add i32 %38, 436
  %2920 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2919, i32 undef)  ; BufferLoad(srv,index,wot)
  %2921 = extractvalue %dx.types.ResRet.i32 %2920, 0
  %2922 = add i32 %2921, 0
  %2923 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2922, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2924 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2923, %dx.types.Handle %63, float %2799, float %2800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2925 = extractvalue %dx.types.ResRet.f32 %2924, 0
  %2926 = add i32 %38, 148
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = shl i32 %2928, 4
  %2930 = and i32 %2929, 32752
  %2931 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2930)  ; LegacyF16ToF32(value)
  %2932 = lshr i32 %2928, 7
  %2933 = and i32 %2932, 32752
  %2934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2933)  ; LegacyF16ToF32(value)
  %2935 = fsub fast float 1.000000e+00, %2913
  %2936 = call float @dx.op.binary.f32(i32 35, float %2935, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2937 = bitcast float %2913 to i32
  %2938 = sitofp i32 %2937 to float
  %2939 = fadd fast float %2938, 0xC1CFBF8940000000
  %2940 = fmul fast float %2934, %2939
  %2941 = fadd fast float %2940, 0x41CFBF8940000000
  %2942 = fptosi float %2941 to i32
  %2943 = bitcast i32 %2942 to float
  %2944 = bitcast float %2936 to i32
  %2945 = sitofp i32 %2944 to float
  %2946 = fadd fast float %2945, 0xC1CFBF8940000000
  %2947 = fmul fast float %2946, %2934
  %2948 = fadd fast float %2947, 0x41CFBF8940000000
  %2949 = fptosi float %2948 to i32
  %2950 = bitcast i32 %2949 to float
  %2951 = fmul fast float %2943, %2931
  %2952 = fmul fast float %2950, %2931
  %2953 = fsub fast float %2936, %2951
  %2954 = fadd fast float %2952, %2936
  %2955 = call float @dx.op.unary.f32(i32 7, float %2953)  ; Saturate(value)
  %2956 = call float @dx.op.unary.f32(i32 7, float %2954)  ; Saturate(value)
  %2957 = fsub fast float %2925, %2955
  %2958 = fsub fast float %2956, %2955
  %2959 = bitcast float %2958 to i32
  %2960 = sub nsw i32 2129859010, %2959
  %2961 = bitcast i32 %2960 to float
  %2962 = fmul fast float %2961, %2957
  %2963 = call float @dx.op.unary.f32(i32 7, float %2962)  ; Saturate(value)
  br label %2964

; <label>:2964                                    ; preds = %2918, %2912
  %2965 = phi float [ %2963, %2918 ], [ %2913, %2912 ]
  %2966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.i32 %2966, 0
  %2968 = and i32 %2967, 128
  %2969 = icmp eq i32 %2968, 0
  br i1 %2969, label %2986, label %2970

; <label>:2970                                    ; preds = %2964
  %2971 = add i32 %38, 420
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = add i32 %2973, 0
  %2975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2976 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2975, %dx.types.Handle %63, float %2799, float %2800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2977 = extractvalue %dx.types.ResRet.f32 %2976, 0
  %2978 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.i32 %2978, 0
  %2980 = and i32 %2979, 524288
  %2981 = icmp ne i32 %2980, 0
  %2982 = fcmp fast ogt float %2977, 0x3FE0101020000000
  %2983 = select i1 %2982, float 1.000000e+00, float 0.000000e+00
  %2984 = select i1 %2981, float %2983, float %2977
  %2985 = fmul fast float %2984, %2965
  br label %2986

; <label>:2986                                    ; preds = %2970, %2964
  %2987 = phi float [ %2985, %2970 ], [ %2965, %2964 ]
  %2988 = fcmp fast ult float %2987, 0x3F70101020000000
  br i1 %2988, label %3570, label %2989

; <label>:2989                                    ; preds = %2986
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = and i32 %2991, 16
  %2993 = icmp eq i32 %2992, 0
  br i1 %2993, label %3192, label %2994

; <label>:2994                                    ; preds = %2989
  %2995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2715, i32 undef)  ; BufferLoad(srv,index,wot)
  %2996 = extractvalue %dx.types.ResRet.i32 %2995, 0
  %2997 = add i32 %38, 372
  %2998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.i32 %2998, 0
  %3000 = add i32 %2999, 0
  %3001 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3000, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3002 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3001, %dx.types.Handle %62, float %2799, float %2800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3003 = extractvalue %dx.types.ResRet.f32 %3002, 0
  %3004 = extractvalue %dx.types.ResRet.f32 %3002, 1
  %3005 = extractvalue %dx.types.ResRet.f32 %3002, 2
  %3006 = extractvalue %dx.types.ResRet.f32 %3002, 3
  %3007 = and i32 %2996, 255
  %3008 = uitofp i32 %3007 to float
  %3009 = lshr i32 %2996, 8
  %3010 = and i32 %3009, 255
  %3011 = uitofp i32 %3010 to float
  %3012 = fmul fast float %3006, %3008
  %3013 = fadd fast float %3012, %3011
  %3014 = fmul fast float %3013, 0x3F70101000000000
  %3015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3016 = extractvalue %dx.types.ResRet.i32 %3015, 0
  %3017 = and i32 %3016, 512
  %3018 = icmp eq i32 %3017, 0
  br i1 %3018, label %3027, label %3019

; <label>:3019                                    ; preds = %2994
  %3020 = add i32 %38, 452
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3020, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = add i32 %3022, 0
  %3024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3024, %dx.types.Handle %63, float %2799, float %2800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3026 = extractvalue %dx.types.ResRet.f32 %3025, 0
  br label %3027

; <label>:3027                                    ; preds = %3019, %2994
  %3028 = phi float [ %3026, %3019 ], [ 1.000000e+00, %2994 ]
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = and i32 %3030, 33554432
  %3032 = icmp eq i32 %3031, 0
  br i1 %3032, label %3139, label %3033

; <label>:3033                                    ; preds = %3027
  %3034 = add i32 %38, 272
  %3035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3034, i32 undef)  ; BufferLoad(srv,index,wot)
  %3036 = extractvalue %dx.types.ResRet.i32 %3035, 0
  %3037 = and i32 %3036, 65535
  %3038 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3037)  ; LegacyF16ToF32(value)
  %3039 = lshr i32 %3036, 16
  %3040 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3039)  ; LegacyF16ToF32(value)
  %3041 = add i32 %38, 276
  %3042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3041, i32 undef)  ; BufferLoad(srv,index,wot)
  %3043 = extractvalue %dx.types.ResRet.i32 %3042, 0
  %3044 = and i32 %3043, 65535
  %3045 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3044)  ; LegacyF16ToF32(value)
  %3046 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3047 = extractvalue %dx.types.ResRet.i32 %3046, 0
  %3048 = lshr i32 %3047, 24
  %3049 = uitofp i32 %3048 to float
  %3050 = fmul fast float %3049, 0x3F70101020000000
  %3051 = and i32 %3047, 255
  %3052 = uitofp i32 %3051 to float
  %3053 = fmul fast float %3052, 0x3F70101020000000
  %3054 = lshr i32 %3047, 8
  %3055 = and i32 %3054, 255
  %3056 = uitofp i32 %3055 to float
  %3057 = fmul fast float %3056, 0x3F70101020000000
  %3058 = lshr i32 %3047, 16
  %3059 = and i32 %3058, 255
  %3060 = uitofp i32 %3059 to float
  %3061 = fmul fast float %3060, 0x3F70101020000000
  %3062 = add i32 %38, 268
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3062, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = lshr i32 %3064, 24
  %3066 = uitofp i32 %3065 to float
  %3067 = fmul fast float %3066, 0x3F70101020000000
  %3068 = and i32 %3064, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = fmul fast float %3069, 0x3F70101020000000
  %3071 = lshr i32 %3064, 8
  %3072 = and i32 %3071, 255
  %3073 = uitofp i32 %3072 to float
  %3074 = fmul fast float %3073, 0x3F70101020000000
  %3075 = lshr i32 %3064, 16
  %3076 = and i32 %3075, 255
  %3077 = uitofp i32 %3076 to float
  %3078 = fmul fast float %3077, 0x3F70101020000000
  %3079 = bitcast float %3003 to i32
  %3080 = ashr i32 %3079, 1
  %3081 = sub nsw i32 1597463174, %3080
  %3082 = bitcast i32 %3081 to float
  %3083 = fmul fast float %3003, 5.000000e-01
  %3084 = fmul fast float %3082, %3082
  %3085 = fmul fast float %3084, %3083
  %3086 = fsub fast float 1.500000e+00, %3085
  %3087 = fmul fast float %3082, %3003
  %3088 = fmul fast float %3087, %3086
  %3089 = bitcast float %3004 to i32
  %3090 = ashr i32 %3089, 1
  %3091 = sub nsw i32 1597463174, %3090
  %3092 = bitcast i32 %3091 to float
  %3093 = fmul fast float %3004, 5.000000e-01
  %3094 = fmul fast float %3092, %3092
  %3095 = fmul fast float %3094, %3093
  %3096 = fsub fast float 1.500000e+00, %3095
  %3097 = fmul fast float %3092, %3004
  %3098 = fmul fast float %3097, %3096
  %3099 = bitcast float %3005 to i32
  %3100 = ashr i32 %3099, 1
  %3101 = sub nsw i32 1597463174, %3100
  %3102 = bitcast i32 %3101 to float
  %3103 = fmul fast float %3005, 5.000000e-01
  %3104 = fmul fast float %3102, %3102
  %3105 = fmul fast float %3104, %3103
  %3106 = fsub fast float 1.500000e+00, %3105
  %3107 = fmul fast float %3102, %3005
  %3108 = fmul fast float %3107, %3106
  %3109 = fsub fast float %3088, %3070
  %3110 = fsub fast float %3098, %3074
  %3111 = fsub fast float %3108, %3078
  %3112 = fmul fast float %3109, %3038
  %3113 = fmul fast float %3110, %3040
  %3114 = fmul fast float %3111, %3045
  %3115 = fadd fast float %3112, %3053
  %3116 = fadd fast float %3113, %3057
  %3117 = fadd fast float %3114, %3061
  %3118 = call float @dx.op.unary.f32(i32 7, float %3115)  ; Saturate(value)
  %3119 = call float @dx.op.unary.f32(i32 7, float %3116)  ; Saturate(value)
  %3120 = call float @dx.op.unary.f32(i32 7, float %3117)  ; Saturate(value)
  %3121 = fmul fast float %3118, %3118
  %3122 = fmul fast float %3119, %3119
  %3123 = fmul fast float %3120, %3120
  %3124 = fsub fast float %3121, %3003
  %3125 = fsub fast float %3122, %3004
  %3126 = fsub fast float %3123, %3005
  %3127 = fmul fast float %3124, %3028
  %3128 = fmul fast float %3125, %3028
  %3129 = fmul fast float %3126, %3028
  %3130 = fadd fast float %3127, %3003
  %3131 = fadd fast float %3128, %3004
  %3132 = fadd fast float %3129, %3005
  %3133 = fadd fast float %3050, %3014
  %3134 = fsub fast float %3133, %3067
  %3135 = call float @dx.op.unary.f32(i32 7, float %3134)  ; Saturate(value)
  %3136 = fsub fast float %3135, %3014
  %3137 = fmul fast float %3136, %3028
  %3138 = fadd fast float %3137, %3014
  br label %3192

; <label>:3139                                    ; preds = %3027
  %3140 = and i32 %3030, 134217728
  %3141 = icmp eq i32 %3140, 0
  br i1 %3141, label %3176, label %3142

; <label>:3142                                    ; preds = %3139
  %3143 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %3144 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %3145 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %3146 = fadd fast float %3143, -5.000000e-01
  %3147 = fadd fast float %3144, -5.000000e-01
  %3148 = fadd fast float %3145, -5.000000e-01
  %3149 = fmul fast float %3146, %3028
  %3150 = fmul fast float %3147, %3028
  %3151 = fmul fast float %3148, %3028
  %3152 = fadd fast float %3149, 5.000000e-01
  %3153 = fadd fast float %3150, 5.000000e-01
  %3154 = fadd fast float %3151, 5.000000e-01
  %3155 = call float @dx.op.unary.f32(i32 24, float %3003)  ; Sqrt(value)
  %3156 = call float @dx.op.unary.f32(i32 24, float %3004)  ; Sqrt(value)
  %3157 = call float @dx.op.unary.f32(i32 24, float %3005)  ; Sqrt(value)
  %3158 = fmul fast float %3152, 2.000000e+00
  %3159 = fsub fast float 1.000000e+00, %3158
  %3160 = fmul fast float %3159, %3155
  %3161 = fadd fast float %3160, %3158
  %3162 = fmul fast float %3161, %3155
  %3163 = fmul fast float %3153, 2.000000e+00
  %3164 = fsub fast float 1.000000e+00, %3163
  %3165 = fmul fast float %3164, %3156
  %3166 = fadd fast float %3165, %3163
  %3167 = fmul fast float %3166, %3156
  %3168 = fmul fast float %3154, 2.000000e+00
  %3169 = fsub fast float 1.000000e+00, %3168
  %3170 = fmul fast float %3169, %3157
  %3171 = fadd fast float %3170, %3168
  %3172 = fmul fast float %3171, %3157
  %3173 = fmul fast float %3162, %3162
  %3174 = fmul fast float %3167, %3167
  %3175 = fmul fast float %3172, %3172
  br label %3192

; <label>:3176                                    ; preds = %3139
  %3177 = fmul fast float %307, %307
  %3178 = fmul fast float %311, %311
  %3179 = fmul fast float %315, %315
  %3180 = fadd fast float %3177, -1.000000e+00
  %3181 = fadd fast float %3178, -1.000000e+00
  %3182 = fadd fast float %3179, -1.000000e+00
  %3183 = fmul fast float %3028, %3180
  %3184 = fmul fast float %3028, %3181
  %3185 = fmul fast float %3028, %3182
  %3186 = fadd fast float %3183, 1.000000e+00
  %3187 = fadd fast float %3184, 1.000000e+00
  %3188 = fadd fast float %3185, 1.000000e+00
  %3189 = fmul fast float %3186, %3003
  %3190 = fmul fast float %3187, %3004
  %3191 = fmul fast float %3188, %3005
  br label %3192

; <label>:3192                                    ; preds = %3176, %3142, %3033, %2989
  %3193 = phi float [ %3138, %3033 ], [ %3014, %3142 ], [ %3014, %3176 ], [ 0x3FA23C0BE0000000, %2989 ]
  %3194 = phi float [ %3130, %3033 ], [ %3173, %3142 ], [ %3189, %3176 ], [ 1.000000e+00, %2989 ]
  %3195 = phi float [ %3131, %3033 ], [ %3174, %3142 ], [ %3190, %3176 ], [ 1.000000e+00, %2989 ]
  %3196 = phi float [ %3132, %3033 ], [ %3175, %3142 ], [ %3191, %3176 ], [ 1.000000e+00, %2989 ]
  %3197 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3198 = extractvalue %dx.types.CBufRet.i32 %3197, 1
  %3199 = and i32 %3198, 1
  %3200 = icmp ne i32 %3199, 0
  %3201 = add i32 %38, 356
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3201, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = and i32 %3203, 32
  %3205 = icmp ne i32 %3204, 0
  %3206 = and i1 %3200, %3205
  %3207 = select i1 %3206, float 1.000000e+00, float %3194
  %3208 = select i1 %3206, float 0x3FD3333340000000, float %3195
  %3209 = select i1 %3206, float 0x3FD3333340000000, float %3196
  %3210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3211 = extractvalue %dx.types.ResRet.i32 %3210, 0
  %3212 = and i32 %3211, 32
  %3213 = icmp eq i32 %3212, 0
  br i1 %3213, label %3286, label %3214

; <label>:3214                                    ; preds = %3192
  %3215 = add i32 %38, 140
  %3216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3215, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.i32 %3216, 0
  %3218 = add i32 %38, 388
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = add i32 %3220, 0
  %3222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3221, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3223 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3222, %dx.types.Handle %62, float %2799, float %2800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3224 = extractvalue %dx.types.ResRet.f32 %3223, 0
  %3225 = extractvalue %dx.types.ResRet.f32 %3223, 1
  %3226 = extractvalue %dx.types.ResRet.f32 %3223, 2
  %3227 = extractvalue %dx.types.ResRet.f32 %3223, 3
  %3228 = and i32 %3217, 255
  %3229 = uitofp i32 %3228 to float
  %3230 = lshr i32 %3217, 8
  %3231 = and i32 %3230, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = lshr i32 %3217, 16
  %3234 = and i32 %3233, 255
  %3235 = uitofp i32 %3234 to float
  %3236 = fmul fast float %3235, 0x3F70101000000000
  %3237 = fmul fast float %3224, %3229
  %3238 = fadd fast float %3237, %3232
  %3239 = fmul fast float %3238, 0x3F70101000000000
  %3240 = fadd fast float %3225, -5.000000e-01
  %3241 = fadd fast float %3227, -5.000000e-01
  %3242 = fmul fast float %3240, %3236
  %3243 = fmul fast float %3241, %3236
  %3244 = fadd fast float %3242, 5.000000e-01
  %3245 = fadd fast float %3243, 5.000000e-01
  %3246 = fmul fast float %3244, 2.000000e+00
  %3247 = fadd fast float %3246, -1.000000e+00
  %3248 = fmul fast float %3245, 2.000000e+00
  %3249 = fadd fast float %3248, -1.000000e+00
  %3250 = fadd fast float %3247, %3249
  %3251 = fmul fast float %3250, 5.000000e-01
  %3252 = fsub fast float %3247, %3249
  %3253 = fmul fast float %3252, 5.000000e-01
  %3254 = call float @dx.op.unary.f32(i32 6, float %3251)  ; FAbs(value)
  %3255 = fsub fast float 1.000000e+00, %3254
  %3256 = call float @dx.op.unary.f32(i32 6, float %3253)  ; FAbs(value)
  %3257 = fsub fast float %3255, %3256
  %3258 = call float @dx.op.dot3.f32(i32 55, float %3251, float %3253, float %3257, float %3251, float %3253, float %3257)  ; Dot3(ax,ay,az,bx,by,bz)
  %3259 = call float @dx.op.unary.f32(i32 25, float %3258)  ; Rsqrt(value)
  %3260 = fmul fast float %3251, %3259
  %3261 = fmul fast float %3253, %3259
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = and i32 %3263, 67108864
  %3265 = icmp eq i32 %3264, 0
  br i1 %3265, label %3282, label %3266

; <label>:3266                                    ; preds = %3214
  %3267 = add i32 %38, 328
  %3268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3267, i32 undef)  ; BufferLoad(srv,index,wot)
  %3269 = extractvalue %dx.types.ResRet.i32 %3268, 0
  %3270 = and i32 %3269, 65535
  %3271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3270)  ; LegacyF16ToF32(value)
  %3272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2709, i32 undef)  ; BufferLoad(srv,index,wot)
  %3273 = extractvalue %dx.types.ResRet.i32 %3272, 0
  %3274 = and i32 %3273, 65535
  %3275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3274)  ; LegacyF16ToF32(value)
  %3276 = lshr i32 %3269, 16
  %3277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3276)  ; LegacyF16ToF32(value)
  %3278 = fsub fast float %3239, %3277
  %3279 = fmul fast float %3278, %3271
  %3280 = fadd fast float %3279, %3275
  %3281 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  br label %3282

; <label>:3282                                    ; preds = %3266, %3214
  %3283 = phi float [ %3281, %3266 ], [ %3239, %3214 ]
  %3284 = call float @dx.op.dot2.f32(i32 54, float %3260, float %3261, float %2703, float %2704)  ; Dot2(ax,ay,bx,by)
  %3285 = call float @dx.op.dot2.f32(i32 54, float %3260, float %3261, float %2705, float %2706)  ; Dot2(ax,ay,bx,by)
  br label %3286

; <label>:3286                                    ; preds = %3282, %3192
  %3287 = phi float [ %3283, %3282 ], [ 0x3FD6666660000000, %3192 ]
  %3288 = phi float [ %3284, %3282 ], [ 0.000000e+00, %3192 ]
  %3289 = phi float [ %3285, %3282 ], [ 0.000000e+00, %3192 ]
  %3290 = phi float [ %3226, %3282 ], [ 1.000000e+00, %3192 ]
  %3291 = add i32 %38, 208
  %3292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3291, i32 undef)  ; BufferLoad(srv,index,wot)
  %3293 = extractvalue %dx.types.ResRet.i32 %3292, 0
  %3294 = lshr i32 %3293, 22
  %3295 = shl nuw nsw i32 %3294, 5
  %3296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3295)  ; LegacyF16ToF32(value)
  %3297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3298 = extractvalue %dx.types.ResRet.i32 %3297, 0
  %3299 = and i32 %3298, 64
  %3300 = icmp eq i32 %3299, 0
  br i1 %3300, label %3334, label %3301

; <label>:3301                                    ; preds = %3286
  %3302 = add i32 %38, 404
  %3303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3302, i32 undef)  ; BufferLoad(srv,index,wot)
  %3304 = extractvalue %dx.types.ResRet.i32 %3303, 0
  %3305 = add i32 %3304, 0
  %3306 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3305, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3308 = extractvalue %dx.types.ResRet.i32 %3307, 0
  %3309 = and i32 %3308, 131072
  %3310 = icmp eq i32 %3309, 0
  %3311 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3306, %dx.types.Handle %62, float %2799, float %2800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3312 = extractvalue %dx.types.ResRet.f32 %3311, 0
  %3313 = extractvalue %dx.types.ResRet.f32 %3311, 1
  %3314 = extractvalue %dx.types.ResRet.f32 %3311, 2
  %3315 = fmul fast float %3312, %295
  %3316 = fmul fast float %3313, %298
  %3317 = fmul fast float %3314, %301
  br i1 %3310, label %3324, label %3318

; <label>:3318                                    ; preds = %3301
  %3319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3320 = extractvalue %dx.types.CBufRet.f32 %3319, 0
  %3321 = fmul fast float %3320, %3315
  %3322 = fmul fast float %3320, %3316
  %3323 = fmul fast float %3320, %3317
  br label %3324

; <label>:3324                                    ; preds = %3318, %3301
  %3325 = phi float [ %3321, %3318 ], [ %3315, %3301 ]
  %3326 = phi float [ %3322, %3318 ], [ %3316, %3301 ]
  %3327 = phi float [ %3323, %3318 ], [ %3317, %3301 ]
  %3328 = fmul fast float %3325, %3296
  %3329 = select i1 %163, float %3328, float %3325
  %3330 = call float @dx.op.dot3.f32(i32 55, float %3329, float %3326, float %3327, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3331 = select i1 %163, float 0.000000e+00, float %3325
  %3332 = select i1 %163, float %3330, float %3326
  %3333 = select i1 %163, float 0.000000e+00, float %3327
  br label %3334

; <label>:3334                                    ; preds = %3324, %3286
  %3335 = phi float [ %3331, %3324 ], [ 0.000000e+00, %3286 ]
  %3336 = phi float [ %3332, %3324 ], [ 0.000000e+00, %3286 ]
  %3337 = phi float [ %3333, %3324 ], [ 0.000000e+00, %3286 ]
  %3338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3339 = extractvalue %dx.types.ResRet.i32 %3338, 0
  %3340 = and i32 %3339, 26624
  %3341 = icmp eq i32 %3340, 0
  br i1 %3341, label %3365, label %3342

; <label>:3342                                    ; preds = %3334
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, 16384
  %3346 = icmp eq i32 %3345, 0
  br i1 %3346, label %3365, label %3347

; <label>:3347                                    ; preds = %3342
  %3348 = and i32 %3344, 1048576
  %3349 = icmp ne i32 %3348, 0
  %3350 = add i32 %38, 468
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = add i32 %3352, 0
  %3354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3354, %dx.types.Handle %63, float %2799, float %2800, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3356 = extractvalue %dx.types.ResRet.f32 %3355, 0
  %3357 = add i32 %38, 144
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3357, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = lshr i32 %3359, 24
  %3361 = uitofp i32 %3360 to float
  %3362 = fmul fast float %3356, 0x3F70101020000000
  %3363 = select i1 %3349, float 0x3F70101020000000, float %3362
  %3364 = fmul fast float %3363, %3361
  br label %3365

; <label>:3365                                    ; preds = %3347, %3342, %3334
  %3366 = phi float [ %3364, %3347 ], [ 0.000000e+00, %3342 ], [ 0.000000e+00, %3334 ]
  %3367 = add i32 %38, 144
  %3368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3369 = extractvalue %dx.types.ResRet.i32 %3368, 0
  %3370 = and i32 %3369, 255
  %3371 = uitofp i32 %3370 to float
  %3372 = lshr i32 %3369, 8
  %3373 = and i32 %3372, 255
  %3374 = uitofp i32 %3373 to float
  %3375 = call float @dx.op.dot3.f32(i32 55, float %3207, float %3208, float %3209, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3376 = fmul fast float %3374, %3375
  %3377 = fadd fast float %3376, %3371
  %3378 = fmul fast float %3377, 0x3F70101020000000
  %3379 = call float @dx.op.unary.f32(i32 7, float %3378)  ; Saturate(value)
  br i1 %2691, label %3380, label %3388

; <label>:3380                                    ; preds = %3365
  %3381 = fsub fast float 1.000000e+00, %2987
  %3382 = fmul fast float %3381, %2679
  %3383 = fmul fast float %3381, %2680
  %3384 = fmul fast float %3381, %2681
  %3385 = fmul fast float %3381, %2682
  %3386 = fmul fast float %3381, %2683
  %3387 = fmul fast float %3381, %2684
  br label %3388

; <label>:3388                                    ; preds = %3380, %3365
  %3389 = phi float [ %3382, %3380 ], [ %2679, %3365 ]
  %3390 = phi float [ %3383, %3380 ], [ %2680, %3365 ]
  %3391 = phi float [ %3384, %3380 ], [ %2681, %3365 ]
  %3392 = phi float [ %3385, %3380 ], [ %2682, %3365 ]
  %3393 = phi float [ %3386, %3380 ], [ %2683, %3365 ]
  %3394 = phi float [ %3387, %3380 ], [ %2684, %3365 ]
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2692, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 3
  %3398 = icmp eq i32 %3397, 3
  br i1 %3398, label %3477, label %3399

; <label>:3399                                    ; preds = %3388
  %3400 = and i32 %3396, 16
  %3401 = icmp ne i32 %3400, 0
  %3402 = select i1 %3401, float %2987, float 0.000000e+00
  %3403 = icmp eq i32 %3397, 0
  br i1 %3403, label %3404, label %3432

; <label>:3404                                    ; preds = %3399
  %3405 = and i32 %3396, 64
  %3406 = icmp ne i32 %3405, 0
  %3407 = select i1 %3406, float %2987, float 0.000000e+00
  %3408 = fsub fast float %3207, %3389
  %3409 = fsub fast float %3208, %3390
  %3410 = fsub fast float %3209, %3391
  %3411 = fmul fast float %3402, %3408
  %3412 = fmul fast float %3402, %3409
  %3413 = fmul fast float %3402, %3410
  %3414 = fadd fast float %3411, %3389
  %3415 = fadd fast float %3412, %3390
  %3416 = fadd fast float %3413, %3391
  %3417 = fsub fast float %3193, %2685
  %3418 = fmul fast float %3402, %3417
  %3419 = fadd fast float %3418, %2685
  %3420 = fsub fast float %3335, %3392
  %3421 = fsub fast float %3336, %3393
  %3422 = fsub fast float %3337, %3394
  %3423 = fmul fast float %3407, %3420
  %3424 = fmul fast float %3407, %3421
  %3425 = fmul fast float %3407, %3422
  %3426 = fadd fast float %3423, %3392
  %3427 = fadd fast float %3424, %3393
  %3428 = fadd fast float %3425, %3394
  %3429 = fsub fast float %3379, %2689
  %3430 = fmul fast float %3402, %3429
  %3431 = fadd fast float %3430, %2689
  br label %3477

; <label>:3432                                    ; preds = %3399
  %3433 = icmp eq i32 %3397, 1
  br i1 %3433, label %3434, label %3447

; <label>:3434                                    ; preds = %3432
  %3435 = fadd fast float %3207, -1.000000e+00
  %3436 = fadd fast float %3208, -1.000000e+00
  %3437 = fadd fast float %3209, -1.000000e+00
  %3438 = fmul fast float %3402, %3435
  %3439 = fmul fast float %3402, %3436
  %3440 = fmul fast float %3402, %3437
  %3441 = fadd fast float %3438, 1.000000e+00
  %3442 = fadd fast float %3439, 1.000000e+00
  %3443 = fadd fast float %3440, 1.000000e+00
  %3444 = fmul fast float %3441, %3389
  %3445 = fmul fast float %3442, %3390
  %3446 = fmul fast float %3443, %3391
  br label %3477

; <label>:3447                                    ; preds = %3432
  %3448 = icmp eq i32 %3397, 2
  br i1 %3448, label %3449, label %3477

; <label>:3449                                    ; preds = %3447
  %3450 = call float @dx.op.unary.f32(i32 24, float %3207)  ; Sqrt(value)
  %3451 = call float @dx.op.unary.f32(i32 24, float %3208)  ; Sqrt(value)
  %3452 = call float @dx.op.unary.f32(i32 24, float %3209)  ; Sqrt(value)
  %3453 = fadd fast float %3450, -5.000000e-01
  %3454 = fadd fast float %3451, -5.000000e-01
  %3455 = fadd fast float %3452, -5.000000e-01
  %3456 = fmul fast float %3453, %3402
  %3457 = fmul fast float %3454, %3402
  %3458 = fmul fast float %3455, %3402
  %3459 = fadd fast float %3456, 5.000000e-01
  %3460 = fadd fast float %3457, 5.000000e-01
  %3461 = fadd fast float %3458, 5.000000e-01
  %3462 = fmul fast float %3459, 2.000000e+00
  %3463 = fsub fast float 1.000000e+00, %3462
  %3464 = fmul fast float %3463, %3389
  %3465 = fadd fast float %3464, %3462
  %3466 = fmul fast float %3465, %3389
  %3467 = fmul fast float %3460, 2.000000e+00
  %3468 = fsub fast float 1.000000e+00, %3467
  %3469 = fmul fast float %3468, %3390
  %3470 = fadd fast float %3469, %3467
  %3471 = fmul fast float %3470, %3390
  %3472 = fmul fast float %3461, 2.000000e+00
  %3473 = fsub fast float 1.000000e+00, %3472
  %3474 = fmul fast float %3473, %3391
  %3475 = fadd fast float %3474, %3472
  %3476 = fmul fast float %3475, %3391
  br label %3477

; <label>:3477                                    ; preds = %3449, %3447, %3434, %3404, %3388
  %3478 = phi float [ %3389, %3388 ], [ %3466, %3449 ], [ %3389, %3447 ], [ %3444, %3434 ], [ %3414, %3404 ]
  %3479 = phi float [ %3390, %3388 ], [ %3471, %3449 ], [ %3390, %3447 ], [ %3445, %3434 ], [ %3415, %3404 ]
  %3480 = phi float [ %3391, %3388 ], [ %3476, %3449 ], [ %3391, %3447 ], [ %3446, %3434 ], [ %3416, %3404 ]
  %3481 = phi float [ %3392, %3388 ], [ %3392, %3449 ], [ %3392, %3447 ], [ %3392, %3434 ], [ %3426, %3404 ]
  %3482 = phi float [ %3393, %3388 ], [ %3393, %3449 ], [ %3393, %3447 ], [ %3393, %3434 ], [ %3427, %3404 ]
  %3483 = phi float [ %3394, %3388 ], [ %3394, %3449 ], [ %3394, %3447 ], [ %3394, %3434 ], [ %3428, %3404 ]
  %3484 = phi float [ %2685, %3388 ], [ %2685, %3449 ], [ %2685, %3447 ], [ %2685, %3434 ], [ %3419, %3404 ]
  %3485 = phi float [ %2689, %3388 ], [ %2689, %3449 ], [ %2689, %3447 ], [ %2689, %3434 ], [ %3431, %3404 ]
  %3486 = and i32 %3396, 12
  %3487 = icmp eq i32 %3486, 12
  br i1 %3487, label %3570, label %3488

; <label>:3488                                    ; preds = %3477
  %3489 = and i32 %3396, 2097184
  %3490 = icmp eq i32 %3489, 2097184
  %3491 = select i1 %3490, float %2987, float 0.000000e+00
  %3492 = and i32 %3396, 4194336
  %3493 = icmp eq i32 %3492, 4194336
  %3494 = select i1 %3493, float %2987, float 0.000000e+00
  %3495 = and i32 %3396, 8388640
  %3496 = icmp eq i32 %3495, 8388640
  %3497 = select i1 %3496, float %2987, float 0.000000e+00
  %3498 = and i32 %3396, 16384
  %3499 = icmp ne i32 %3498, 0
  %3500 = select i1 %3499, float %2987, float 0.000000e+00
  %3501 = icmp eq i32 %3486, 0
  br i1 %3501, label %3502, label %3518

; <label>:3502                                    ; preds = %3488
  %3503 = fsub fast float %3288, %2677
  %3504 = fsub fast float %3289, %2678
  %3505 = fmul fast float %3491, %3503
  %3506 = fmul fast float %3491, %3504
  %3507 = fadd fast float %3505, %2677
  %3508 = fadd fast float %3506, %2678
  %3509 = fsub fast float %3290, %2687
  %3510 = fmul fast float %3494, %3509
  %3511 = fadd fast float %3510, %2687
  %3512 = fsub fast float %3287, %2686
  %3513 = fmul fast float %3497, %3512
  %3514 = fadd fast float %3513, %2686
  %3515 = fsub fast float %3366, %2688
  %3516 = fmul fast float %3500, %3515
  %3517 = fadd fast float %3516, %2688
  br label %3570

; <label>:3518                                    ; preds = %3488
  %3519 = icmp eq i32 %3486, 4
  br i1 %3519, label %3520, label %3554

; <label>:3520                                    ; preds = %3518
  %3521 = fmul fast float %3491, %3288
  %3522 = fmul fast float %3491, %3289
  %3523 = fadd fast float %3521, %2677
  %3524 = fadd fast float %3522, %2678
  %3525 = call float @dx.op.binary.f32(i32 36, float %2687, float %3290)  ; FMin(a,b)
  %3526 = fsub fast float %3525, %2687
  %3527 = fmul fast float %3526, %3494
  %3528 = fadd fast float %3527, %2687
  %3529 = fadd fast float %3287, %2686
  %3530 = fmul fast float %3529, 0x3FF337FAE0000000
  %3531 = fmul fast float %2686, %2686
  %3532 = fmul fast float %3287, %3287
  %3533 = fadd fast float %3532, %3531
  %3534 = fmul fast float %3533, 0x3FE5152B00000000
  %3535 = fmul fast float %2686, 0xBFCC1F85E0000000
  %3536 = fmul fast float %3535, %3287
  %3537 = fadd fast float %3536, 0xBFE1363700000000
  %3538 = fadd fast float %3537, %3530
  %3539 = fsub fast float %3538, %3534
  %3540 = fmul fast float %3529, 0x3FBA6F0D00000000
  %3541 = fmul fast float %3533, 0x3FD0432880000000
  %3542 = fmul fast float %2686, 0xBFEF110800000000
  %3543 = fmul fast float %3542, %3287
  %3544 = fadd fast float %3543, 1.000000e+00
  %3545 = fsub fast float %3544, %3540
  %3546 = fadd fast float %3545, %3541
  %3547 = fdiv fast float %3539, %3546
  %3548 = call float @dx.op.unary.f32(i32 7, float %3547)  ; Saturate(value)
  %3549 = fsub fast float %3548, %2686
  %3550 = fmul fast float %3549, %3497
  %3551 = fadd fast float %3550, %2686
  %3552 = fmul fast float %3500, %3366
  %3553 = fadd fast float %3552, %2688
  br label %3570

; <label>:3554                                    ; preds = %3518
  %3555 = icmp eq i32 %3486, 8
  br i1 %3555, label %3556, label %3570

; <label>:3556                                    ; preds = %3554
  %3557 = fmul fast float %3491, %3288
  %3558 = fmul fast float %3491, %3289
  %3559 = fadd fast float %3557, %2677
  %3560 = fadd fast float %3558, %2678
  %3561 = call float @dx.op.binary.f32(i32 36, float %2687, float %3290)  ; FMin(a,b)
  %3562 = fsub fast float %3561, %2687
  %3563 = fmul fast float %3562, %3494
  %3564 = fadd fast float %3563, %2687
  %3565 = fsub fast float %3287, %2686
  %3566 = fmul fast float %3497, %3565
  %3567 = fadd fast float %3566, %2686
  %3568 = fmul fast float %3500, %3366
  %3569 = fadd fast float %3568, %2688
  br label %3570

; <label>:3570                                    ; preds = %3556, %3554, %3520, %3502, %3477, %2986, %2690, %2676
  %3571 = phi float [ %2677, %3477 ], [ %2677, %2986 ], [ %2677, %2676 ], [ %2677, %2690 ], [ %3507, %3502 ], [ %3523, %3520 ], [ %2677, %3554 ], [ %3559, %3556 ]
  %3572 = phi float [ %2678, %3477 ], [ %2678, %2986 ], [ %2678, %2676 ], [ %2678, %2690 ], [ %3508, %3502 ], [ %3524, %3520 ], [ %2678, %3554 ], [ %3560, %3556 ]
  %3573 = phi float [ %3478, %3477 ], [ %2679, %2986 ], [ %2679, %2676 ], [ %2679, %2690 ], [ %3478, %3502 ], [ %3478, %3520 ], [ %3478, %3554 ], [ %3478, %3556 ]
  %3574 = phi float [ %3479, %3477 ], [ %2680, %2986 ], [ %2680, %2676 ], [ %2680, %2690 ], [ %3479, %3502 ], [ %3479, %3520 ], [ %3479, %3554 ], [ %3479, %3556 ]
  %3575 = phi float [ %3480, %3477 ], [ %2681, %2986 ], [ %2681, %2676 ], [ %2681, %2690 ], [ %3480, %3502 ], [ %3480, %3520 ], [ %3480, %3554 ], [ %3480, %3556 ]
  %3576 = phi float [ %3481, %3477 ], [ %2682, %2986 ], [ %2682, %2676 ], [ %2682, %2690 ], [ %3481, %3502 ], [ %3481, %3520 ], [ %3481, %3554 ], [ %3481, %3556 ]
  %3577 = phi float [ %3482, %3477 ], [ %2683, %2986 ], [ %2683, %2676 ], [ %2683, %2690 ], [ %3482, %3502 ], [ %3482, %3520 ], [ %3482, %3554 ], [ %3482, %3556 ]
  %3578 = phi float [ %3483, %3477 ], [ %2684, %2986 ], [ %2684, %2676 ], [ %2684, %2690 ], [ %3483, %3502 ], [ %3483, %3520 ], [ %3483, %3554 ], [ %3483, %3556 ]
  %3579 = phi float [ %3484, %3477 ], [ %2685, %2986 ], [ %2685, %2676 ], [ %2685, %2690 ], [ %3484, %3502 ], [ %3484, %3520 ], [ %3484, %3554 ], [ %3484, %3556 ]
  %3580 = phi float [ %2686, %3477 ], [ %2686, %2986 ], [ %2686, %2676 ], [ %2686, %2690 ], [ %3514, %3502 ], [ %3551, %3520 ], [ %2686, %3554 ], [ %3567, %3556 ]
  %3581 = phi float [ %2687, %3477 ], [ %2687, %2986 ], [ %2687, %2676 ], [ %2687, %2690 ], [ %3511, %3502 ], [ %3528, %3520 ], [ %2687, %3554 ], [ %3564, %3556 ]
  %3582 = phi float [ %2688, %3477 ], [ %2688, %2986 ], [ %2688, %2676 ], [ %2688, %2690 ], [ %3517, %3502 ], [ %3553, %3520 ], [ %2688, %3554 ], [ %3569, %3556 ]
  %3583 = phi float [ %3485, %3477 ], [ %2689, %2986 ], [ %2689, %2676 ], [ %2689, %2690 ], [ %3485, %3502 ], [ %3485, %3520 ], [ %3485, %3554 ], [ %3485, %3556 ]
  %3584 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3585 = extractvalue %dx.types.CBufRet.f32 %3584, 0
  %3586 = call float @dx.op.dot2.f32(i32 54, float %3571, float %3572, float %3571, float %3572)  ; Dot2(ax,ay,bx,by)
  %3587 = fmul fast float %3586, 0x3FE3333340000000
  %3588 = fsub fast float 1.000000e+00, %3587
  %3589 = call float @dx.op.dot3.f32(i32 55, float %3571, float %3572, float %3588, float %3571, float %3572, float %3588)  ; Dot3(ax,ay,az,bx,by,bz)
  %3590 = call float @dx.op.unary.f32(i32 25, float %3589)  ; Rsqrt(value)
  %3591 = fmul fast float %3590, %3571
  %3592 = fmul fast float %3590, %3572
  %3593 = fmul fast float %3588, %3590
  %3594 = fmul fast float %3593, %73
  %3595 = fmul fast float %3593, %74
  %3596 = fmul fast float %3593, %75
  %3597 = fmul fast float %3591, %47
  %3598 = fmul fast float %3591, %48
  %3599 = fmul fast float %3591, %49
  %3600 = fadd fast float %3594, %3597
  %3601 = fadd fast float %3595, %3598
  %3602 = fadd fast float %3596, %3599
  %3603 = fmul fast float %85, %3592
  %3604 = fmul fast float %86, %3592
  %3605 = fmul fast float %87, %3592
  %3606 = fadd fast float %3600, %3603
  %3607 = fadd fast float %3601, %3604
  %3608 = fadd fast float %3602, %3605
  %3609 = call float @dx.op.dot3.f32(i32 55, float %3606, float %3607, float %3608, float %3606, float %3607, float %3608)  ; Dot3(ax,ay,az,bx,by,bz)
  %3610 = call float @dx.op.unary.f32(i32 25, float %3609)  ; Rsqrt(value)
  %3611 = fmul fast float %3606, %3610
  %3612 = fmul fast float %3607, %3610
  %3613 = fmul fast float %3608, %3610
  %3614 = and i32 %40, 1
  %3615 = icmp eq i32 %3614, 0
  br i1 %3615, label %3616, label %4124

; <label>:3616                                    ; preds = %3570
  %3617 = call float @dx.op.unary.f32(i32 83, float %121)  ; DerivCoarseX(value)
  %3618 = call float @dx.op.unary.f32(i32 83, float %122)  ; DerivCoarseX(value)
  %3619 = call float @dx.op.unary.f32(i32 83, float %123)  ; DerivCoarseX(value)
  %3620 = call float @dx.op.unary.f32(i32 84, float %121)  ; DerivCoarseY(value)
  %3621 = call float @dx.op.unary.f32(i32 84, float %122)  ; DerivCoarseY(value)
  %3622 = call float @dx.op.unary.f32(i32 84, float %123)  ; DerivCoarseY(value)
  %3623 = fadd fast float %3617, %121
  %3624 = fadd fast float %3618, %122
  %3625 = fadd fast float %3619, %123
  %3626 = fadd fast float %3620, %121
  %3627 = fadd fast float %3621, %122
  %3628 = fadd fast float %3622, %123
  %3629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3630 = extractvalue %dx.types.CBufRet.f32 %3629, 0
  %3631 = extractvalue %dx.types.CBufRet.f32 %3629, 1
  %3632 = extractvalue %dx.types.CBufRet.f32 %3629, 2
  %3633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3634 = extractvalue %dx.types.CBufRet.f32 %3633, 2
  %3635 = extractvalue %dx.types.CBufRet.f32 %3633, 3
  %3636 = fmul fast float %3630, %66
  %3637 = fmul fast float %3636, %3634
  %3638 = fmul fast float %3631, %67
  %3639 = fmul fast float %3638, %3635
  %3640 = fptoui float %3637 to i32
  %3641 = fptoui float %3639 to i32
  %3642 = fadd fast float %3630, -1.000000e+00
  %3643 = fadd fast float %3631, -1.000000e+00
  %3644 = fptoui float %3642 to i32
  %3645 = fptoui float %3643 to i32
  %3646 = call i32 @dx.op.binary.i32(i32 40, i32 %3640, i32 %3644)  ; UMin(a,b)
  %3647 = call i32 @dx.op.binary.i32(i32 40, i32 %3641, i32 %3645)  ; UMin(a,b)
  %3648 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3649 = extractvalue %dx.types.CBufRet.f32 %3648, 2
  %3650 = extractvalue %dx.types.CBufRet.f32 %3648, 3
  %3651 = fmul fast float %3649, %61
  %3652 = fsub fast float %3651, %3650
  %3653 = fadd fast float %3632, -1.000000e+00
  %3654 = call float @dx.op.binary.f32(i32 36, float %3652, float %3653)  ; FMin(a,b)
  %3655 = fptoui float %3654 to i32
  %3656 = fptoui float %3630 to i32
  %3657 = fptoui float %3631 to i32
  %3658 = mul i32 %3655, %3657
  %3659 = add i32 %3658, %3647
  %3660 = mul i32 %3659, %3656
  %3661 = add i32 %3660, %3646
  %3662 = shl i32 %3661, 2
  %3663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3662, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.i32 %3663, 0
  %3665 = and i32 %3664, 1023
  %3666 = lshr i32 %3664, 10
  %3667 = icmp eq i32 %3665, 0
  br i1 %3667, label %4093, label %3668

; <label>:3668                                    ; preds = %3616
  %3669 = and i32 %3664, 1023
  br label %3670

; <label>:3670                                    ; preds = %3796, %3668
  %3671 = phi i32 [ %3746, %3796 ], [ 0, %3668 ]
  %3672 = phi float [ %3797, %3796 ], [ 0.000000e+00, %3668 ]
  %3673 = phi float [ %3798, %3796 ], [ %3585, %3668 ]
  %3674 = phi float [ %3799, %3796 ], [ %3583, %3668 ]
  %3675 = phi float [ %3800, %3796 ], [ %3582, %3668 ]
  %3676 = phi float [ %3801, %3796 ], [ 0.000000e+00, %3668 ]
  %3677 = phi float [ %3802, %3796 ], [ %3576, %3668 ]
  %3678 = phi float [ %3803, %3796 ], [ %3577, %3668 ]
  %3679 = phi float [ %3804, %3796 ], [ %3578, %3668 ]
  %3680 = phi float [ %3805, %3796 ], [ %3611, %3668 ]
  %3681 = phi float [ %3806, %3796 ], [ %3612, %3668 ]
  %3682 = phi float [ %3807, %3796 ], [ %3613, %3668 ]
  %3683 = phi float [ %3808, %3796 ], [ %3581, %3668 ]
  %3684 = phi float [ %3809, %3796 ], [ %3580, %3668 ]
  %3685 = phi float [ %3810, %3796 ], [ 0.000000e+00, %3668 ]
  %3686 = phi float [ %3811, %3796 ], [ %3579, %3668 ]
  %3687 = phi float [ %3812, %3796 ], [ %3573, %3668 ]
  %3688 = phi float [ %3813, %3796 ], [ %3574, %3668 ]
  %3689 = phi float [ %3814, %3796 ], [ %3575, %3668 ]
  %3690 = add nuw nsw i32 %3671, %3666
  %3691 = shl i32 %3690, 2
  %3692 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3691, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.i32 %3692, 0
  %3694 = shl i32 %3693, 8
  %3695 = or i32 %3694, 48
  %3696 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3695, i32 undef)  ; BufferLoad(srv,index,wot)
  %3697 = extractvalue %dx.types.ResRet.f32 %3696, 0
  %3698 = extractvalue %dx.types.ResRet.f32 %3696, 1
  %3699 = extractvalue %dx.types.ResRet.f32 %3696, 2
  %3700 = extractvalue %dx.types.ResRet.f32 %3696, 3
  %3701 = or i32 %3694, 64
  %3702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.i32 %3702, 0
  %3704 = extractvalue %dx.types.ResRet.i32 %3702, 1
  %3705 = or i32 %3694, 80
  %3706 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3705, i32 undef)  ; BufferLoad(srv,index,wot)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 2
  %3708 = extractvalue %dx.types.ResRet.f32 %3706, 3
  %3709 = or i32 %3694, 96
  %3710 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3709, i32 undef)  ; BufferLoad(srv,index,wot)
  %3711 = extractvalue %dx.types.ResRet.f32 %3710, 0
  %3712 = extractvalue %dx.types.ResRet.f32 %3710, 1
  %3713 = extractvalue %dx.types.ResRet.f32 %3710, 2
  %3714 = extractvalue %dx.types.ResRet.f32 %3710, 3
  %3715 = or i32 %3694, 112
  %3716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.f32 %3716, 2
  %3718 = or i32 %3694, 128
  %3719 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3718, i32 undef)  ; BufferLoad(srv,index,wot)
  %3720 = extractvalue %dx.types.ResRet.f32 %3719, 0
  %3721 = extractvalue %dx.types.ResRet.f32 %3719, 1
  %3722 = extractvalue %dx.types.ResRet.f32 %3719, 2
  %3723 = extractvalue %dx.types.ResRet.f32 %3719, 3
  %3724 = or i32 %3694, 144
  %3725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3724, i32 undef)  ; BufferLoad(srv,index,wot)
  %3726 = extractvalue %dx.types.ResRet.f32 %3725, 0
  %3727 = extractvalue %dx.types.ResRet.f32 %3725, 1
  %3728 = extractvalue %dx.types.ResRet.f32 %3725, 2
  %3729 = extractvalue %dx.types.ResRet.f32 %3725, 3
  %3730 = or i32 %3694, 160
  %3731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3732 = extractvalue %dx.types.ResRet.f32 %3731, 0
  %3733 = extractvalue %dx.types.ResRet.f32 %3731, 1
  %3734 = extractvalue %dx.types.ResRet.f32 %3731, 2
  %3735 = extractvalue %dx.types.ResRet.f32 %3731, 3
  %3736 = or i32 %3694, 192
  %3737 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3736, i32 undef)  ; BufferLoad(srv,index,wot)
  %3738 = extractvalue %dx.types.ResRet.i32 %3737, 0
  %3739 = or i32 %3694, 208
  %3740 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.f32 %3740, 0
  %3742 = or i32 %3694, 248
  %3743 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3742, i32 undef)  ; BufferLoad(srv,index,wot)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = extractvalue %dx.types.ResRet.f32 %3743, 1
  %3746 = add nuw nsw i32 %3671, 1
  %3747 = bitcast float %3700 to i32
  %3748 = and i32 %3747, 512
  %3749 = icmp eq i32 %3748, 0
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.ResRet.f32 %3750, 1
  %3753 = extractvalue %dx.types.ResRet.f32 %3750, 2
  %3754 = extractvalue %dx.types.ResRet.f32 %3750, 3
  %3755 = call float @dx.op.dot4.f32(i32 56, float %3751, float %3752, float %3753, float %3754, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3756 = or i32 %3694, 16
  %3757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3756, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.f32 %3757, 0
  %3759 = extractvalue %dx.types.ResRet.f32 %3757, 1
  %3760 = extractvalue %dx.types.ResRet.f32 %3757, 2
  %3761 = extractvalue %dx.types.ResRet.f32 %3757, 3
  %3762 = call float @dx.op.dot4.f32(i32 56, float %3758, float %3759, float %3760, float %3761, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3763 = or i32 %3694, 32
  %3764 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3763, i32 undef)  ; BufferLoad(srv,index,wot)
  %3765 = extractvalue %dx.types.ResRet.f32 %3764, 0
  %3766 = extractvalue %dx.types.ResRet.f32 %3764, 1
  %3767 = extractvalue %dx.types.ResRet.f32 %3764, 2
  %3768 = extractvalue %dx.types.ResRet.f32 %3764, 3
  %3769 = call float @dx.op.dot4.f32(i32 56, float %3765, float %3766, float %3767, float %3768, float %121, float %122, float %123, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3770 = call float @dx.op.unary.f32(i32 27, float %3755)  ; Round_ni(value)
  %3771 = call float @dx.op.unary.f32(i32 6, float %3770)  ; FAbs(value)
  %3772 = call float @dx.op.unary.f32(i32 27, float %3762)  ; Round_ni(value)
  %3773 = call float @dx.op.unary.f32(i32 6, float %3772)  ; FAbs(value)
  %3774 = call float @dx.op.unary.f32(i32 6, float %3769)  ; FAbs(value)
  %3775 = call float @dx.op.unary.f32(i32 27, float %3774)  ; Round_ni(value)
  %3776 = fadd fast float %3773, %3771
  %3777 = fadd fast float %3776, %3775
  %3778 = fcmp fast oeq float %3777, 0.000000e+00
  %3779 = call float @dx.op.dot4.f32(i32 56, float %3751, float %3752, float %3753, float %3754, float %3623, float %3624, float %3625, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3780 = call float @dx.op.dot4.f32(i32 56, float %3758, float %3759, float %3760, float %3761, float %3623, float %3624, float %3625, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3781 = call float @dx.op.dot4.f32(i32 56, float %3751, float %3752, float %3753, float %3754, float %3626, float %3627, float %3628, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3782 = call float @dx.op.dot4.f32(i32 56, float %3758, float %3759, float %3760, float %3761, float %3626, float %3627, float %3628, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3783 = fsub fast float %3779, %3755
  %3784 = fsub fast float %3781, %3755
  %3785 = fsub fast float %3780, %3762
  %3786 = fsub fast float %3782, %3762
  %3787 = call float @dx.op.dot3.f32(i32 55, float %3697, float %3698, float %3699, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %3788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3789 = extractvalue %dx.types.CBufRet.f32 %3788, 2
  %3790 = fadd fast float %3789, %3787
  %3791 = call float @dx.op.unary.f32(i32 7, float %3790)  ; Saturate(value)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3788, 0
  %3793 = fcmp fast ogt float %3791, %3792
  %3794 = and i1 %3778, %3793
  %3795 = and i1 %3749, %3794
  br i1 %3795, label %3816, label %3796

; <label>:3796                                    ; preds = %4079, %3897, %3816, %3670
  %3797 = phi float [ %3672, %3816 ], [ %3900, %3897 ], [ %3900, %4079 ], [ %3672, %3670 ]
  %3798 = phi float [ %3673, %3816 ], [ %3673, %3897 ], [ %4054, %4079 ], [ %3673, %3670 ]
  %3799 = phi float [ %3674, %3816 ], [ %3674, %3897 ], [ %4052, %4079 ], [ %3674, %3670 ]
  %3800 = phi float [ %3675, %3816 ], [ %3675, %3897 ], [ %4024, %4079 ], [ %3675, %3670 ]
  %3801 = phi float [ %3676, %3816 ], [ %3676, %3897 ], [ %4022, %4079 ], [ %3676, %3670 ]
  %3802 = phi float [ %3677, %3816 ], [ %3677, %3897 ], [ %4089, %4079 ], [ %3677, %3670 ]
  %3803 = phi float [ %3678, %3816 ], [ %3678, %3897 ], [ %4090, %4079 ], [ %3678, %3670 ]
  %3804 = phi float [ %3679, %3816 ], [ %3679, %3897 ], [ %4091, %4079 ], [ %3679, %3670 ]
  %3805 = phi float [ %3680, %3816 ], [ %3680, %3897 ], [ %4003, %4079 ], [ %3680, %3670 ]
  %3806 = phi float [ %3681, %3816 ], [ %3681, %3897 ], [ %4004, %4079 ], [ %3681, %3670 ]
  %3807 = phi float [ %3682, %3816 ], [ %3682, %3897 ], [ %4005, %4079 ], [ %3682, %3670 ]
  %3808 = phi float [ %3683, %3816 ], [ %3683, %3897 ], [ %4032, %4079 ], [ %3683, %3670 ]
  %3809 = phi float [ %3684, %3816 ], [ %3684, %3897 ], [ %4029, %4079 ], [ %3684, %3670 ]
  %3810 = phi float [ %3685, %3816 ], [ %3685, %3897 ], [ %4026, %4079 ], [ %3685, %3670 ]
  %3811 = phi float [ %3686, %3816 ], [ %3686, %3897 ], [ %4020, %4079 ], [ %3686, %3670 ]
  %3812 = phi float [ %3687, %3816 ], [ %3687, %3897 ], [ %4015, %4079 ], [ %3687, %3670 ]
  %3813 = phi float [ %3688, %3816 ], [ %3688, %3897 ], [ %4016, %4079 ], [ %3688, %3670 ]
  %3814 = phi float [ %3689, %3816 ], [ %3689, %3897 ], [ %4017, %4079 ], [ %3689, %3670 ]
  %3815 = icmp eq i32 %3746, %3669
  br i1 %3815, label %4092, label %3670

; <label>:3816                                    ; preds = %3670
  %3817 = extractvalue %dx.types.ResRet.f32 %3716, 3
  %3818 = extractvalue %dx.types.ResRet.f32 %3716, 1
  %3819 = extractvalue %dx.types.ResRet.f32 %3716, 0
  %3820 = extractvalue %dx.types.ResRet.f32 %3706, 1
  %3821 = extractvalue %dx.types.ResRet.f32 %3706, 0
  %3822 = extractvalue %dx.types.ResRet.i32 %3702, 3
  %3823 = extractvalue %dx.types.ResRet.i32 %3702, 2
  %3824 = add i32 %3822, 0
  %3825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3824, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3827 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3825, %dx.types.Handle %3826, float %3755, float %3762, float undef, float undef, i32 0, i32 0, i32 undef, float %3783, float %3785, float undef, float %3784, float %3786, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3829 = fmul fast float %3828, %3821
  %3830 = fadd fast float %3829, %3820
  %3831 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3832 = fmul fast float %3755, %3711
  %3833 = call float @dx.op.tertiary.f32(i32 46, float %3712, float %3762, float %3832)  ; FMad(a,b,c)
  %3834 = fadd fast float %3833, %3819
  %3835 = fmul fast float %3755, %3713
  %3836 = call float @dx.op.tertiary.f32(i32 46, float %3714, float %3762, float %3835)  ; FMad(a,b,c)
  %3837 = fadd fast float %3836, %3818
  %3838 = fmul fast float %3783, %3711
  %3839 = call float @dx.op.tertiary.f32(i32 46, float %3712, float %3785, float %3838)  ; FMad(a,b,c)
  %3840 = fmul fast float %3783, %3713
  %3841 = call float @dx.op.tertiary.f32(i32 46, float %3714, float %3785, float %3840)  ; FMad(a,b,c)
  %3842 = fmul fast float %3784, %3711
  %3843 = call float @dx.op.tertiary.f32(i32 46, float %3712, float %3786, float %3842)  ; FMad(a,b,c)
  %3844 = fmul fast float %3784, %3713
  %3845 = call float @dx.op.tertiary.f32(i32 46, float %3714, float %3786, float %3844)  ; FMad(a,b,c)
  %3846 = add i32 %3823, 0
  %3847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3846, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3848 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3847, %dx.types.Handle %3826, float %3834, float %3837, float undef, float undef, i32 0, i32 0, i32 undef, float %3839, float %3841, float undef, float %3843, float %3845, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3849 = extractvalue %dx.types.ResRet.f32 %3848, 0
  %3850 = and i32 %3747, 1024
  %3851 = icmp ne i32 %3850, 0
  %3852 = fcmp fast ogt float %3849, 0x3FE0101020000000
  %3853 = uitofp i1 %3852 to float
  %3854 = select i1 %3851, float %3853, float %3849
  %3855 = and i32 %3747, 8192
  %3856 = icmp ne i32 %3855, 0
  %3857 = select i1 %3856, float %3817, float 1.000000e+00
  %3858 = fmul fast float %3755, 2.000000e+00
  %3859 = fadd fast float %3858, -1.000000e+00
  %3860 = call float @dx.op.unary.f32(i32 6, float %3859)  ; FAbs(value)
  %3861 = fmul fast float %3860, %3744
  %3862 = fsub fast float %3861, %3744
  %3863 = call float @dx.op.unary.f32(i32 7, float %3862)  ; Saturate(value)
  %3864 = fmul fast float %3762, 2.000000e+00
  %3865 = fadd fast float %3864, -1.000000e+00
  %3866 = call float @dx.op.unary.f32(i32 6, float %3865)  ; FAbs(value)
  %3867 = fmul fast float %3866, %3745
  %3868 = fsub fast float %3867, %3745
  %3869 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3870 = fmul fast float %3774, %3707
  %3871 = fsub fast float %3870, %3707
  %3872 = call float @dx.op.unary.f32(i32 7, float %3871)  ; Saturate(value)
  %3873 = fmul fast float %3831, %3857
  %3874 = fmul fast float %3873, %3828
  %3875 = fmul fast float %3874, %3863
  %3876 = fmul fast float %3875, %3854
  %3877 = fmul fast float %3876, %3869
  %3878 = fmul fast float %3877, %3872
  %3879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3880 = extractvalue %dx.types.CBufRet.f32 %3879, 1
  %3881 = extractvalue %dx.types.CBufRet.f32 %3879, 0
  %3882 = fsub fast float %3791, %3881
  %3883 = fmul fast float %3882, %3880
  %3884 = call float @dx.op.unary.f32(i32 7, float %3883)  ; Saturate(value)
  %3885 = fmul fast float %3878, %3708
  %3886 = fadd fast float %3878, %3708
  %3887 = fmul fast float %3886, %3717
  %3888 = fsub fast float %3887, %3717
  %3889 = call float @dx.op.unary.f32(i32 7, float %3888)  ; Saturate(value)
  %3890 = and i32 %3747, 128
  %3891 = icmp ne i32 %3890, 0
  %3892 = select i1 %3891, float %3889, float %3885
  %3893 = fmul fast float %3892, %3884
  %3894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3895 = extractvalue %dx.types.CBufRet.f32 %3894, 0
  %3896 = fcmp fast ugt float %3893, %3895
  br i1 %3896, label %3897, label %3796

; <label>:3897                                    ; preds = %3816
  %3898 = select i1 %3856, float %3893, float 0.000000e+00
  %3899 = fadd fast float %3898, %3672
  %3900 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  br i1 %3856, label %3796, label %3901

; <label>:3901                                    ; preds = %3897
  %3902 = and i32 %3747, 4
  %3903 = and i32 %3747, 8
  %3904 = add i32 %3703, 0
  %3905 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3904, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3906 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3907 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3905, %dx.types.Handle %3906, float %3834, float %3837, float undef, float undef, i32 0, i32 0, i32 undef, float %3839, float %3841, float undef, float %3843, float %3845, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3908 = extractvalue %dx.types.ResRet.f32 %3907, 0
  %3909 = extractvalue %dx.types.ResRet.f32 %3907, 1
  %3910 = extractvalue %dx.types.ResRet.f32 %3907, 2
  %3911 = extractvalue %dx.types.ResRet.f32 %3907, 3
  %3912 = bitcast float %3729 to i32
  %3913 = and i32 %3912, 255
  %3914 = uitofp i32 %3913 to float
  %3915 = lshr i32 %3912, 8
  %3916 = and i32 %3915, 255
  %3917 = uitofp i32 %3916 to float
  %3918 = fmul fast float %3911, %3914
  %3919 = fadd fast float %3918, %3917
  %3920 = fmul fast float %3919, 0x3F70101000000000
  %3921 = add i32 %3704, 0
  %3922 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3921, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3923 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3922, %dx.types.Handle %3906, float %3834, float %3837, float undef, float undef, i32 0, i32 0, i32 undef, float %3839, float %3841, float undef, float %3843, float %3845, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3924 = extractvalue %dx.types.ResRet.f32 %3923, 0
  %3925 = extractvalue %dx.types.ResRet.f32 %3923, 1
  %3926 = extractvalue %dx.types.ResRet.f32 %3923, 2
  %3927 = extractvalue %dx.types.ResRet.f32 %3923, 3
  %3928 = bitcast float %3723 to i32
  %3929 = and i32 %3928, 255
  %3930 = uitofp i32 %3929 to float
  %3931 = lshr i32 %3928, 8
  %3932 = and i32 %3931, 255
  %3933 = uitofp i32 %3932 to float
  %3934 = lshr i32 %3928, 16
  %3935 = and i32 %3934, 255
  %3936 = uitofp i32 %3935 to float
  %3937 = fmul fast float %3936, 0x3F70101000000000
  %3938 = fmul fast float %3924, %3930
  %3939 = fadd fast float %3938, %3933
  %3940 = fmul fast float %3939, 0x3F70101000000000
  %3941 = fadd fast float %3925, -5.000000e-01
  %3942 = fadd fast float %3927, -5.000000e-01
  %3943 = fmul fast float %3941, %3937
  %3944 = fmul fast float %3942, %3937
  %3945 = fadd fast float %3943, 5.000000e-01
  %3946 = fadd fast float %3944, 5.000000e-01
  %3947 = fmul fast float %3908, %3732
  %3948 = fmul fast float %3909, %3733
  %3949 = fmul fast float %3910, %3734
  %3950 = fmul fast float %3945, 2.000000e+00
  %3951 = fadd fast float %3950, -1.000000e+00
  %3952 = fmul fast float %3946, 2.000000e+00
  %3953 = fadd fast float %3952, -1.000000e+00
  %3954 = fadd fast float %3951, %3953
  %3955 = fmul fast float %3954, 5.000000e-01
  %3956 = fsub fast float %3951, %3953
  %3957 = fmul fast float %3956, 5.000000e-01
  %3958 = call float @dx.op.unary.f32(i32 6, float %3955)  ; FAbs(value)
  %3959 = fsub fast float 1.000000e+00, %3958
  %3960 = call float @dx.op.unary.f32(i32 6, float %3957)  ; FAbs(value)
  %3961 = fsub fast float %3959, %3960
  %3962 = call float @dx.op.dot3.f32(i32 55, float %3955, float %3957, float %3961, float %3955, float %3957, float %3961)  ; Dot3(ax,ay,az,bx,by,bz)
  %3963 = call float @dx.op.unary.f32(i32 25, float %3962)  ; Rsqrt(value)
  %3964 = fmul fast float %3955, %3963
  %3965 = fmul fast float %3957, %3963
  %3966 = fmul fast float %3963, %3961
  %3967 = fmul fast float %3966, %3697
  %3968 = fmul fast float %3966, %3698
  %3969 = fmul fast float %3966, %3699
  %3970 = fmul fast float %3964, %3720
  %3971 = fmul fast float %3964, %3721
  %3972 = fmul fast float %3964, %3722
  %3973 = fadd fast float %3970, %3967
  %3974 = fadd fast float %3971, %3968
  %3975 = fadd fast float %3972, %3969
  %3976 = fmul fast float %3965, %3726
  %3977 = fmul fast float %3965, %3727
  %3978 = fmul fast float %3965, %3728
  %3979 = fadd fast float %3973, %3976
  %3980 = fadd fast float %3974, %3977
  %3981 = fadd fast float %3975, %3978
  %3982 = call float @dx.op.dot3.f32(i32 55, float %3979, float %3980, float %3981, float %3979, float %3980, float %3981)  ; Dot3(ax,ay,az,bx,by,bz)
  %3983 = call float @dx.op.unary.f32(i32 25, float %3982)  ; Rsqrt(value)
  %3984 = fmul fast float %3979, %3983
  %3985 = fmul fast float %3980, %3983
  %3986 = fmul fast float %3981, %3983
  %3987 = icmp ne i32 %3903, 0
  %3988 = select i1 %3987, float 1.000000e+00, float 0.000000e+00
  %3989 = fmul fast float %3893, %3988
  %3990 = and i32 %3747, 1
  %3991 = icmp eq i32 %3990, 0
  br i1 %3991, label %3992, label %3996

; <label>:3992                                    ; preds = %3901
  %3993 = fsub fast float %3984, %3680
  %3994 = fsub fast float %3985, %3681
  %3995 = fsub fast float %3986, %3682
  br label %3996

; <label>:3996                                    ; preds = %3992, %3901
  %3997 = phi float [ %3993, %3992 ], [ %3984, %3901 ]
  %3998 = phi float [ %3994, %3992 ], [ %3985, %3901 ]
  %3999 = phi float [ %3995, %3992 ], [ %3986, %3901 ]
  %4000 = fmul float %3999, %3989
  %4001 = fmul float %3998, %3989
  %4002 = fmul float %3997, %3989
  %4003 = fadd fast float %4002, %3680
  %4004 = fadd fast float %4001, %3681
  %4005 = fadd fast float %4000, %3682
  %4006 = icmp ne i32 %3902, 0
  %4007 = select i1 %4006, float 1.000000e+00, float 0.000000e+00
  %4008 = fmul fast float %3893, %4007
  %4009 = fsub fast float %3947, %3687
  %4010 = fsub fast float %3948, %3688
  %4011 = fsub fast float %3949, %3689
  %4012 = fmul fast float %4009, %4008
  %4013 = fmul fast float %4010, %4008
  %4014 = fmul fast float %4011, %4008
  %4015 = fadd fast float %4012, %3687
  %4016 = fadd fast float %4013, %3688
  %4017 = fadd fast float %4014, %3689
  %4018 = fsub fast float %3920, %3686
  %4019 = fmul fast float %4018, %4008
  %4020 = fadd fast float %4019, %3686
  %4021 = fmul fast float %4008, %3676
  %4022 = fsub fast float %3676, %4021
  %4023 = fmul fast float %4008, %3675
  %4024 = fsub fast float %3675, %4023
  %4025 = fadd fast float %3893, %3685
  %4026 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4027 = fsub fast float %3940, %3684
  %4028 = fmul fast float %4027, %3989
  %4029 = fadd fast float %4028, %3684
  %4030 = fsub fast float %3926, %3683
  %4031 = fmul fast float %4030, %3989
  %4032 = fadd fast float %4031, %3683
  %4033 = call float @dx.op.dot3.f32(i32 55, float %3947, float %3948, float %3949, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4034 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4035 = extractvalue %dx.types.CBufRet.f32 %4034, 0
  %4036 = extractvalue %dx.types.CBufRet.f32 %4034, 1
  %4037 = fmul fast float %4036, %4033
  %4038 = fadd fast float %4037, %4035
  %4039 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4040 = bitcast float %3735 to i32
  %4041 = and i32 %4040, 65535
  %4042 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4041)  ; LegacyF16ToF32(value)
  %4043 = lshr i32 %4040, 16
  %4044 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4043)  ; LegacyF16ToF32(value)
  %4045 = fcmp fast oge float %4042, 0.000000e+00
  %4046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4047 = extractvalue %dx.types.CBufRet.f32 %4046, 0
  %4048 = select i1 %4045, float %4042, float %4047
  %4049 = fadd fast float %4048, %4044
  %4050 = fsub fast float %4039, %3674
  %4051 = fmul fast float %4050, %3893
  %4052 = fadd fast float %4051, %3674
  %4053 = fmul fast float %4049, %3893
  %4054 = call float @dx.op.binary.f32(i32 35, float %3673, float %4053)  ; FMax(a,b)
  %4055 = and i32 %3747, 16
  %4056 = icmp eq i32 %4055, 0
  br i1 %4056, label %4079, label %4057

; <label>:4057                                    ; preds = %3996
  %4058 = bitcast float %3741 to i32
  %4059 = add i32 %3738, 0
  %4060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4059, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4061 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4060, %dx.types.Handle %3906, float %3834, float %3837, float undef, float undef, i32 0, i32 0, i32 undef, float %3839, float %3841, float undef, float %3843, float %3845, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4062 = extractvalue %dx.types.ResRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.ResRet.f32 %4061, 1
  %4064 = extractvalue %dx.types.ResRet.f32 %4061, 2
  %4065 = and i32 %4058, 65535
  %4066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4065)  ; LegacyF16ToF32(value)
  %4067 = fmul fast float %4062, %3732
  %4068 = fmul fast float %4063, %3733
  %4069 = fmul fast float %4064, %3734
  %4070 = and i32 %3747, 16384
  %4071 = icmp ne i32 %4070, 0
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = select i1 %4071, float %4073, float 1.000000e+00
  %4075 = fmul fast float %4074, %4066
  %4076 = fmul fast float %4067, %4075
  %4077 = fmul fast float %4068, %4075
  %4078 = fmul fast float %4069, %4075
  br label %4079

; <label>:4079                                    ; preds = %4057, %3996
  %4080 = phi float [ %4076, %4057 ], [ 0.000000e+00, %3996 ]
  %4081 = phi float [ %4077, %4057 ], [ 0.000000e+00, %3996 ]
  %4082 = phi float [ %4078, %4057 ], [ 0.000000e+00, %3996 ]
  %4083 = fsub fast float %4080, %3677
  %4084 = fsub fast float %4081, %3678
  %4085 = fsub fast float %4082, %3679
  %4086 = fmul fast float %4083, %3893
  %4087 = fmul fast float %4084, %3893
  %4088 = fmul fast float %4085, %3893
  %4089 = fadd fast float %4086, %3677
  %4090 = fadd fast float %4087, %3678
  %4091 = fadd fast float %4088, %3679
  br label %3796

; <label>:4092                                    ; preds = %3796
  br label %4093

; <label>:4093                                    ; preds = %4092, %3616
  %4094 = phi float [ 0.000000e+00, %3616 ], [ %3797, %4092 ]
  %4095 = phi float [ %3585, %3616 ], [ %3798, %4092 ]
  %4096 = phi float [ %3583, %3616 ], [ %3799, %4092 ]
  %4097 = phi float [ %3582, %3616 ], [ %3800, %4092 ]
  %4098 = phi float [ 0.000000e+00, %3616 ], [ %3801, %4092 ]
  %4099 = phi float [ %3576, %3616 ], [ %3802, %4092 ]
  %4100 = phi float [ %3577, %3616 ], [ %3803, %4092 ]
  %4101 = phi float [ %3578, %3616 ], [ %3804, %4092 ]
  %4102 = phi float [ %3611, %3616 ], [ %3805, %4092 ]
  %4103 = phi float [ %3612, %3616 ], [ %3806, %4092 ]
  %4104 = phi float [ %3613, %3616 ], [ %3807, %4092 ]
  %4105 = phi float [ %3581, %3616 ], [ %3808, %4092 ]
  %4106 = phi float [ %3580, %3616 ], [ %3809, %4092 ]
  %4107 = phi float [ 0.000000e+00, %3616 ], [ %3810, %4092 ]
  %4108 = phi float [ %3579, %3616 ], [ %3811, %4092 ]
  %4109 = phi float [ %3573, %3616 ], [ %3812, %4092 ]
  %4110 = phi float [ %3574, %3616 ], [ %3813, %4092 ]
  %4111 = phi float [ %3575, %3616 ], [ %3814, %4092 ]
  %4112 = call float @dx.op.dot3.f32(i32 55, float %4102, float %4103, float %4104, float %4102, float %4103, float %4104)  ; Dot3(ax,ay,az,bx,by,bz)
  %4113 = call float @dx.op.unary.f32(i32 25, float %4112)  ; Rsqrt(value)
  %4114 = fmul fast float %4113, %4102
  %4115 = fmul fast float %4113, %4103
  %4116 = fmul fast float %4113, %4104
  %4117 = fadd fast float %4107, %897
  %4118 = call float @dx.op.unary.f32(i32 7, float %4117)  ; Saturate(value)
  %4119 = call float @dx.op.dot3.f32(i32 55, float %4114, float %4115, float %4116, float %4114, float %4115, float %4116)  ; Dot3(ax,ay,az,bx,by,bz)
  %4120 = call float @dx.op.unary.f32(i32 25, float %4119)  ; Rsqrt(value)
  %4121 = fmul fast float %4120, %4114
  %4122 = fmul fast float %4120, %4115
  %4123 = fmul fast float %4120, %4116
  br label %4124

; <label>:4124                                    ; preds = %4093, %3570
  %4125 = phi float [ %4121, %4093 ], [ %3611, %3570 ]
  %4126 = phi float [ %4122, %4093 ], [ %3612, %3570 ]
  %4127 = phi float [ %4123, %4093 ], [ %3613, %3570 ]
  %4128 = phi float [ %4109, %4093 ], [ %3573, %3570 ]
  %4129 = phi float [ %4110, %4093 ], [ %3574, %3570 ]
  %4130 = phi float [ %4111, %4093 ], [ %3575, %3570 ]
  %4131 = phi float [ %4099, %4093 ], [ %3576, %3570 ]
  %4132 = phi float [ %4100, %4093 ], [ %3577, %3570 ]
  %4133 = phi float [ %4101, %4093 ], [ %3578, %3570 ]
  %4134 = phi float [ %4108, %4093 ], [ %3579, %3570 ]
  %4135 = phi float [ %4118, %4093 ], [ %897, %3570 ]
  %4136 = phi float [ %4106, %4093 ], [ %3580, %3570 ]
  %4137 = phi float [ %4105, %4093 ], [ %3581, %3570 ]
  %4138 = phi float [ %4098, %4093 ], [ 0.000000e+00, %3570 ]
  %4139 = phi float [ %4097, %4093 ], [ %3582, %3570 ]
  %4140 = phi float [ %4094, %4093 ], [ 0.000000e+00, %3570 ]
  %4141 = phi float [ %4095, %4093 ], [ %3585, %3570 ]
  %4142 = phi float [ %4096, %4093 ], [ %3583, %3570 ]
  %4143 = fadd fast float %4134, 0xBFB99999A0000000
  %4144 = call float @dx.op.unary.f32(i32 7, float %4143)  ; Saturate(value)
  %4145 = fmul fast float %4144, 0x3FF1C71C80000000
  %4146 = call float @dx.op.binary.f32(i32 36, float %4134, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4147 = fsub fast float 1.000000e+00, %4145
  %4148 = call float @dx.op.unary.f32(i32 7, float %4147)  ; Saturate(value)
  %4149 = fmul fast float %4148, %4128
  %4150 = fmul fast float %4148, %4129
  %4151 = fmul fast float %4148, %4130
  %4152 = call float @dx.op.unary.f32(i32 7, float %4149)  ; Saturate(value)
  %4153 = call float @dx.op.unary.f32(i32 7, float %4150)  ; Saturate(value)
  %4154 = call float @dx.op.unary.f32(i32 7, float %4151)  ; Saturate(value)
  %4155 = fmul fast float %4145, %4128
  %4156 = fmul fast float %4145, %4129
  %4157 = fmul fast float %4145, %4130
  %4158 = fadd fast float %4155, %4146
  %4159 = fadd fast float %4156, %4146
  %4160 = fadd fast float %4157, %4146
  %4161 = call float @dx.op.unary.f32(i32 7, float %4158)  ; Saturate(value)
  %4162 = call float @dx.op.unary.f32(i32 7, float %4159)  ; Saturate(value)
  %4163 = call float @dx.op.unary.f32(i32 7, float %4160)  ; Saturate(value)
  %4164 = call float @dx.op.unary.f32(i32 7, float %4136)  ; Saturate(value)
  %4165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4166 = extractvalue %dx.types.CBufRet.i32 %4165, 3
  %4167 = and i32 %4166, 8
  %4168 = icmp ne i32 %4167, 0
  %4169 = call float @dx.op.binary.f32(i32 35, float %4152, float %4128)  ; FMax(a,b)
  %4170 = call float @dx.op.binary.f32(i32 35, float %4153, float %4128)  ; FMax(a,b)
  %4171 = call float @dx.op.binary.f32(i32 35, float %4154, float %4128)  ; FMax(a,b)
  %4172 = call float @dx.op.dot3.f32(i32 55, float %4152, float %4153, float %4154, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4173 = select i1 %163, float %4128, float %4152
  %4174 = select i1 %163, float %4172, float %4153
  %4175 = select i1 %163, float 1.000000e+00, float %4154
  %4176 = select i1 %4168, float %4169, float %4173
  %4177 = select i1 %4168, float %4170, float %4174
  %4178 = select i1 %4168, float %4171, float %4175
  %4179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4180 = extractvalue %dx.types.CBufRet.f32 %4179, 0
  %4181 = extractvalue %dx.types.CBufRet.f32 %4179, 1
  %4182 = extractvalue %dx.types.CBufRet.f32 %4179, 2
  %4183 = fadd fast float %4180, %121
  %4184 = fadd fast float %4181, %122
  %4185 = fadd fast float %4182, %123
  %4186 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4187 = extractvalue %dx.types.CBufRet.f32 %4186, 0
  %4188 = extractvalue %dx.types.CBufRet.f32 %4186, 1
  %4189 = fsub fast float %4183, %4187
  %4190 = fsub fast float %4184, %4188
  %4191 = fmul fast float %4189, %4189
  %4192 = fmul fast float %4190, %4190
  %4193 = fadd fast float %4191, %4192
  %4194 = call float @dx.op.unary.f32(i32 24, float %4193)  ; Sqrt(value)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4186, 2
  %4196 = fcmp fast olt float %4194, %4195
  br i1 %4196, label %4197, label %4264

; <label>:4197                                    ; preds = %4124
  %4198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4199 = extractvalue %dx.types.CBufRet.f32 %4198, 0
  %4200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4201 = extractvalue %dx.types.CBufRet.f32 %4200, 0
  %4202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4203 = extractvalue %dx.types.CBufRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.CBufRet.f32 %4198, 1
  %4205 = extractvalue %dx.types.CBufRet.f32 %4200, 1
  %4206 = extractvalue %dx.types.CBufRet.f32 %4202, 1
  %4207 = extractvalue %dx.types.CBufRet.f32 %4198, 3
  %4208 = extractvalue %dx.types.CBufRet.f32 %4200, 3
  %4209 = extractvalue %dx.types.CBufRet.f32 %4202, 3
  %4210 = fadd fast float %4207, %4183
  %4211 = fadd fast float %4208, %4184
  %4212 = fadd fast float %4209, %4185
  %4213 = fmul fast float %4210, %4199
  %4214 = call float @dx.op.tertiary.f32(i32 46, float %4211, float %4201, float %4213)  ; FMad(a,b,c)
  %4215 = call float @dx.op.tertiary.f32(i32 46, float %4212, float %4203, float %4214)  ; FMad(a,b,c)
  %4216 = fmul fast float %4210, %4204
  %4217 = call float @dx.op.tertiary.f32(i32 46, float %4211, float %4205, float %4216)  ; FMad(a,b,c)
  %4218 = call float @dx.op.tertiary.f32(i32 46, float %4212, float %4206, float %4217)  ; FMad(a,b,c)
  %4219 = fsub fast float %4215, %4207
  %4220 = fsub fast float %4218, %4208
  %4221 = fsub fast float %4219, %4187
  %4222 = fadd fast float %4221, %4195
  %4223 = fsub fast float %4220, %4188
  %4224 = fadd fast float %4223, %4195
  %4225 = extractvalue %dx.types.CBufRet.f32 %4186, 3
  %4226 = fmul fast float %4222, %4225
  %4227 = fmul fast float %4224, %4225
  %4228 = call float @dx.op.unary.f32(i32 7, float %4226)  ; Saturate(value)
  %4229 = call float @dx.op.unary.f32(i32 7, float %4227)  ; Saturate(value)
  %4230 = fsub fast float 1.000000e+00, %4228
  %4231 = fsub fast float 1.000000e+00, %4229
  %4232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %4230, float %4231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4233 = extractvalue %dx.types.ResRet.f32 %4232, 0
  %4234 = fcmp fast ugt float %4233, 0.000000e+00
  br i1 %4234, label %4235, label %4538

; <label>:4235                                    ; preds = %4197
  %4236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4237 = extractvalue %dx.types.CBufRet.f32 %4236, 2
  %4238 = fmul fast float %4237, %4233
  %4239 = extractvalue %dx.types.CBufRet.f32 %4236, 3
  %4240 = fadd fast float %4239, %4238
  %4241 = extractvalue %dx.types.CBufRet.f32 %4202, 2
  %4242 = fadd fast float %4240, %4209
  %4243 = fmul fast float %4215, %4203
  %4244 = call float @dx.op.tertiary.f32(i32 46, float %4218, float %4206, float %4243)  ; FMad(a,b,c)
  %4245 = call float @dx.op.tertiary.f32(i32 46, float %4242, float %4241, float %4244)  ; FMad(a,b,c)
  %4246 = fsub fast float %4245, %4209
  %4247 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4248 = extractvalue %dx.types.CBufRet.f32 %4247, 2
  %4249 = fsub fast float %4246, %4248
  %4250 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %4230, float %4231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = extractvalue %dx.types.ResRet.f32 %4250, 1
  %4253 = extractvalue %dx.types.ResRet.f32 %4250, 2
  %4254 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %4230, float %4231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4255 = extractvalue %dx.types.ResRet.f32 %4254, 0
  %4256 = extractvalue %dx.types.ResRet.f32 %4254, 1
  %4257 = extractvalue %dx.types.ResRet.f32 %4254, 2
  %4258 = fadd fast float %4255, %4251
  %4259 = fmul fast float %4258, 0x3F847AE140000000
  %4260 = fadd fast float %4256, %4252
  %4261 = fmul fast float %4260, 0x3F847AE140000000
  %4262 = fadd fast float %4257, %4253
  %4263 = fmul fast float %4262, 0x3F847AE140000000
  br label %4538

; <label>:4264                                    ; preds = %4124
  %4265 = and i32 %139, 1
  %4266 = icmp eq i32 %4265, 0
  br i1 %4266, label %4538, label %4267

; <label>:4267                                    ; preds = %4264
  %4268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4269 = extractvalue %dx.types.CBufRet.f32 %4268, 0
  %4270 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4271 = extractvalue %dx.types.CBufRet.f32 %4270, 0
  %4272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4273 = extractvalue %dx.types.CBufRet.f32 %4272, 0
  %4274 = extractvalue %dx.types.CBufRet.f32 %4268, 1
  %4275 = extractvalue %dx.types.CBufRet.f32 %4270, 1
  %4276 = extractvalue %dx.types.CBufRet.f32 %4272, 1
  %4277 = extractvalue %dx.types.CBufRet.f32 %4268, 3
  %4278 = extractvalue %dx.types.CBufRet.f32 %4270, 3
  %4279 = extractvalue %dx.types.CBufRet.f32 %4272, 3
  %4280 = fadd fast float %4277, %4183
  %4281 = fadd fast float %4278, %4184
  %4282 = fadd fast float %4279, %4185
  %4283 = fmul fast float %4280, %4269
  %4284 = call float @dx.op.tertiary.f32(i32 46, float %4281, float %4271, float %4283)  ; FMad(a,b,c)
  %4285 = call float @dx.op.tertiary.f32(i32 46, float %4282, float %4273, float %4284)  ; FMad(a,b,c)
  %4286 = fmul fast float %4280, %4274
  %4287 = call float @dx.op.tertiary.f32(i32 46, float %4281, float %4275, float %4286)  ; FMad(a,b,c)
  %4288 = call float @dx.op.tertiary.f32(i32 46, float %4282, float %4276, float %4287)  ; FMad(a,b,c)
  %4289 = fsub fast float %4285, %4277
  %4290 = fsub fast float %4288, %4278
  %4291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.f32 %4291, 0
  %4293 = extractvalue %dx.types.CBufRet.f32 %4291, 1
  %4294 = extractvalue %dx.types.CBufRet.f32 %4291, 2
  %4295 = extractvalue %dx.types.CBufRet.f32 %4291, 3
  %4296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4297 = extractvalue %dx.types.CBufRet.f32 %4296, 3
  %4298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.i32 %4298, 0
  %4300 = extractvalue %dx.types.CBufRet.i32 %4298, 1
  %4301 = udiv i32 %4300, %4299
  %4302 = fsub fast float %4289, %4292
  %4303 = fsub fast float %4290, %4293
  %4304 = call float @dx.op.binary.f32(i32 35, float %4302, float 0.000000e+00)  ; FMax(a,b)
  %4305 = call float @dx.op.binary.f32(i32 35, float %4303, float 0.000000e+00)  ; FMax(a,b)
  %4306 = call float @dx.op.binary.f32(i32 36, float %4304, float %4294)  ; FMin(a,b)
  %4307 = call float @dx.op.binary.f32(i32 36, float %4305, float %4295)  ; FMin(a,b)
  %4308 = add i32 %4299, -1
  %4309 = add i32 %4301, -1
  %4310 = fmul fast float %4306, %4297
  %4311 = fmul fast float %4307, %4297
  %4312 = fptoui float %4310 to i32
  %4313 = fptoui float %4311 to i32
  %4314 = call i32 @dx.op.binary.i32(i32 40, i32 %4312, i32 %4308)  ; UMin(a,b)
  %4315 = call i32 @dx.op.binary.i32(i32 40, i32 %4313, i32 %4309)  ; UMin(a,b)
  %4316 = mul i32 %4315, %4299
  %4317 = add i32 %4316, %4314
  %4318 = shl i32 %4317, 2
  %4319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4318, i32 undef)  ; BufferLoad(srv,index,wot)
  %4320 = extractvalue %dx.types.ResRet.i32 %4319, 0
  %4321 = icmp eq i32 %4320, -1
  br i1 %4321, label %4538, label %4322

; <label>:4322                                    ; preds = %4267
  %4323 = mul i32 %4320, 148
  %4324 = add i32 %4323, 4
  %4325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4324, i32 undef)  ; BufferLoad(srv,index,wot)
  %4326 = extractvalue %dx.types.ResRet.f32 %4325, 0
  %4327 = add i32 %4323, 8
  %4328 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4327, i32 undef)  ; BufferLoad(srv,index,wot)
  %4329 = extractvalue %dx.types.ResRet.f32 %4328, 0
  %4330 = add i32 %4323, 36
  %4331 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4330, i32 undef)  ; BufferLoad(srv,index,wot)
  %4332 = extractvalue %dx.types.ResRet.f32 %4331, 0
  %4333 = add i32 %4323, 60
  %4334 = add i32 %4323, 92
  %4335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4334, i32 undef)  ; BufferLoad(srv,index,wot)
  %4336 = extractvalue %dx.types.ResRet.i32 %4335, 0
  %4337 = add i32 %4323, 116
  %4338 = fsub fast float %4289, %4326
  %4339 = fsub fast float %4290, %4329
  %4340 = fmul fast float %4297, %4338
  %4341 = fmul fast float %4297, %4339
  %4342 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4343 = call float @dx.op.unary.f32(i32 7, float %4341)  ; Saturate(value)
  %4344 = fsub fast float 1.000000e+00, %4343
  %4345 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4346 = extractvalue %dx.types.CBufRet.f32 %4345, 2
  %4347 = call float @dx.op.unary.f32(i32 83, float %4342)  ; DerivCoarseX(value)
  %4348 = call float @dx.op.unary.f32(i32 83, float %4344)  ; DerivCoarseX(value)
  %4349 = call float @dx.op.unary.f32(i32 84, float %4342)  ; DerivCoarseY(value)
  %4350 = call float @dx.op.unary.f32(i32 84, float %4344)  ; DerivCoarseY(value)
  %4351 = fmul fast float %4347, %4346
  %4352 = fmul fast float %4348, %4346
  %4353 = fmul fast float %4349, %4346
  %4354 = fmul fast float %4350, %4346
  %4355 = call float @dx.op.dot2.f32(i32 54, float %4353, float %4354, float %4353, float %4354)  ; Dot2(ax,ay,bx,by)
  %4356 = call float @dx.op.dot2.f32(i32 54, float %4351, float %4352, float %4351, float %4352)  ; Dot2(ax,ay,bx,by)
  %4357 = call float @dx.op.binary.f32(i32 35, float %4356, float %4355)  ; FMax(a,b)
  %4358 = call float @dx.op.unary.f32(i32 23, float %4357)  ; Log(value)
  %4359 = fmul fast float %4358, 5.000000e-01
  %4360 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4361 = extractvalue %dx.types.CBufRet.f32 %4360, 1
  %4362 = fadd fast float %4361, %4359
  %4363 = call float @dx.op.binary.f32(i32 35, float %4362, float 0.000000e+00)  ; FMax(a,b)
  %4364 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4365 = extractvalue %dx.types.CBufRet.f32 %4364, 3
  %4366 = fadd fast float %4365, %4363
  %4367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4368 = extractvalue %dx.types.CBufRet.f32 %4367, 3
  %4369 = fadd fast float %4366, %4368
  %4370 = add i32 %4336, 0
  %4371 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4370, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4372 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4371, i32 0)  ; GetDimensions(handle,mipLevel)
  %4373 = extractvalue %dx.types.Dimensions %4372, 0
  %4374 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4373)  ; FirstbitLo(value)
  %4375 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.i32 %4375, 1
  %4377 = sub nsw i32 %4376, %4374
  %4378 = sitofp i32 %4377 to float
  %4379 = fsub fast float %4369, %4378
  %4380 = call float @dx.op.binary.f32(i32 35, float %4379, float 0.000000e+00)  ; FMax(a,b)
  %4381 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4371, %dx.types.Handle %32, float %4342, float %4344, float %4332, float undef, i32 0, i32 0, i32 undef, float %4380)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4382 = extractvalue %dx.types.ResRet.f32 %4381, 0
  %4383 = fcmp ule float %4382, 0x3FE0101020000000
  %4384 = extractvalue %dx.types.CBufRet.i32 %4375, 0
  %4385 = and i32 %4384, 128
  %4386 = icmp ne i32 %4385, 0
  %4387 = and i1 %4383, %4386
  br i1 %4387, label %4538, label %4388

; <label>:4388                                    ; preds = %4322
  %4389 = add i32 %4323, 20
  %4390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.f32 %4390, 0
  %4392 = add i32 %4323, 24
  %4393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4392, i32 undef)  ; BufferLoad(srv,index,wot)
  %4394 = extractvalue %dx.types.ResRet.f32 %4393, 0
  %4395 = add i32 %4323, 40
  %4396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4395, i32 undef)  ; BufferLoad(srv,index,wot)
  %4397 = extractvalue %dx.types.ResRet.f32 %4396, 0
  %4398 = add i32 %4323, 96
  %4399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4398, i32 undef)  ; BufferLoad(srv,index,wot)
  %4400 = extractvalue %dx.types.ResRet.i32 %4399, 0
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 2
  %4403 = fmul fast float %4402, %4342
  %4404 = fmul fast float %4402, %4344
  %4405 = extractvalue %dx.types.CBufRet.f32 %4401, 3
  %4406 = fadd fast float %4403, %4405
  %4407 = fadd fast float %4404, %4405
  %4408 = add i32 %4400, 0
  %4409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4408, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4410 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4409, i32 0)  ; GetDimensions(handle,mipLevel)
  %4411 = extractvalue %dx.types.Dimensions %4410, 0
  %4412 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4411)  ; FirstbitLo(value)
  %4413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.i32 %4413, 1
  %4415 = sub nsw i32 %4414, %4412
  %4416 = sitofp i32 %4415 to float
  %4417 = fsub fast float %4366, %4416
  %4418 = call float @dx.op.binary.f32(i32 35, float %4417, float 0.000000e+00)  ; FMax(a,b)
  %4419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4409, %dx.types.Handle %32, float %4406, float %4407, float %4397, float undef, i32 0, i32 0, i32 undef, float %4418)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4420 = extractvalue %dx.types.ResRet.f32 %4419, 0
  %4421 = fmul fast float %4420, %4391
  %4422 = fadd fast float %4421, %4394
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 0
  %4425 = extractvalue %dx.types.CBufRet.f32 %4423, 1
  %4426 = extractvalue %dx.types.CBufRet.f32 %4423, 2
  %4427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4428 = extractvalue %dx.types.CBufRet.f32 %4427, 3
  %4429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4430 = extractvalue %dx.types.CBufRet.f32 %4429, 3
  %4431 = extractvalue %dx.types.CBufRet.f32 %4423, 3
  %4432 = fadd fast float %4428, %4289
  %4433 = fadd fast float %4430, %4290
  %4434 = fadd fast float %4422, %4431
  %4435 = fmul fast float %4432, %4424
  %4436 = call float @dx.op.tertiary.f32(i32 46, float %4433, float %4425, float %4435)  ; FMad(a,b,c)
  %4437 = call float @dx.op.tertiary.f32(i32 46, float %4434, float %4426, float %4436)  ; FMad(a,b,c)
  %4438 = fsub fast float %4437, %4431
  %4439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4439, 2
  %4441 = fsub fast float %4438, %4440
  %4442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4443 = extractvalue %dx.types.CBufRet.i32 %4442, 0
  %4444 = call i32 @dx.op.binary.i32(i32 40, i32 %4320, i32 %4443)  ; UMin(a,b)
  %4445 = mul i32 %4444, 36
  %4446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4447 = extractvalue %dx.types.ResRet.i32 %4446, 0
  %4448 = add i32 %4445, 4
  %4449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4450 = extractvalue %dx.types.CBufRet.f32 %4449, 0
  %4451 = fmul fast float %4450, %4342
  %4452 = fmul fast float %4450, %4344
  %4453 = extractvalue %dx.types.CBufRet.f32 %4449, 1
  %4454 = fadd fast float %4451, %4453
  %4455 = fadd fast float %4452, %4453
  %4456 = icmp eq i32 %4447, 0
  br i1 %4456, label %4525, label %4457

; <label>:4457                                    ; preds = %4388
  br label %4458

; <label>:4458                                    ; preds = %4515, %4457
  %4459 = phi float [ %4516, %4515 ], [ 0.000000e+00, %4457 ]
  %4460 = phi float [ %4517, %4515 ], [ 0.000000e+00, %4457 ]
  %4461 = phi float [ %4518, %4515 ], [ 0.000000e+00, %4457 ]
  %4462 = phi float [ %4519, %4515 ], [ 0.000000e+00, %4457 ]
  %4463 = phi float [ %4520, %4515 ], [ 0.000000e+00, %4457 ]
  %4464 = phi float [ %4521, %4515 ], [ 0.000000e+00, %4457 ]
  %4465 = phi i32 [ %4522, %4515 ], [ 0, %4457 ]
  %4466 = shl i32 %4465, 2
  %4467 = add i32 %4333, %4466
  %4468 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4467, i32 undef)  ; BufferLoad(srv,index,wot)
  %4469 = extractvalue %dx.types.ResRet.f32 %4468, 0
  %4470 = add i32 %4337, %4466
  %4471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4470, i32 undef)  ; BufferLoad(srv,index,wot)
  %4472 = extractvalue %dx.types.ResRet.i32 %4471, 0
  %4473 = add i32 %4472, 0
  %4474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4473, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4475 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4474, i32 0)  ; GetDimensions(handle,mipLevel)
  %4476 = extractvalue %dx.types.Dimensions %4475, 0
  %4477 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4476)  ; FirstbitLo(value)
  %4478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4479 = extractvalue %dx.types.CBufRet.i32 %4478, 1
  %4480 = sub nsw i32 %4479, %4477
  %4481 = sitofp i32 %4480 to float
  %4482 = fsub fast float %4366, %4481
  %4483 = call float @dx.op.binary.f32(i32 35, float %4482, float 0.000000e+00)  ; FMax(a,b)
  %4484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4474, %dx.types.Handle %32, float %4454, float %4455, float %4469, float undef, i32 0, i32 0, i32 undef, float %4483)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4485 = extractvalue %dx.types.ResRet.f32 %4484, 0
  %4486 = fcmp fast ogt float %4485, 0.000000e+00
  br i1 %4486, label %4487, label %4515

; <label>:4487                                    ; preds = %4458
  %4488 = add i32 %4448, %4466
  %4489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4488, i32 undef)  ; BufferLoad(srv,index,wot)
  %4490 = extractvalue %dx.types.ResRet.i32 %4489, 0
  %4491 = and i32 %4490, 32767
  %4492 = mul nuw nsw i32 %4491, 928
  %4493 = add nuw nsw i32 %4492, 48
  %4494 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4493, i32 undef)  ; BufferLoad(srv,index,wot)
  %4495 = extractvalue %dx.types.ResRet.f32 %4494, 0
  %4496 = extractvalue %dx.types.ResRet.f32 %4494, 1
  %4497 = extractvalue %dx.types.ResRet.f32 %4494, 2
  %4498 = add nuw nsw i32 %4492, 60
  %4499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 0
  %4501 = extractvalue %dx.types.ResRet.f32 %4499, 1
  %4502 = extractvalue %dx.types.ResRet.f32 %4499, 2
  %4503 = fmul fast float %4495, %4485
  %4504 = fmul fast float %4496, %4485
  %4505 = fmul fast float %4497, %4485
  %4506 = fadd fast float %4503, %4459
  %4507 = fadd fast float %4504, %4460
  %4508 = fadd fast float %4505, %4461
  %4509 = fmul fast float %4500, %4485
  %4510 = fmul fast float %4501, %4485
  %4511 = fmul fast float %4502, %4485
  %4512 = fadd fast float %4509, %4462
  %4513 = fadd fast float %4510, %4463
  %4514 = fadd fast float %4511, %4464
  br label %4515

; <label>:4515                                    ; preds = %4487, %4458
  %4516 = phi float [ %4506, %4487 ], [ %4459, %4458 ]
  %4517 = phi float [ %4507, %4487 ], [ %4460, %4458 ]
  %4518 = phi float [ %4508, %4487 ], [ %4461, %4458 ]
  %4519 = phi float [ %4512, %4487 ], [ %4462, %4458 ]
  %4520 = phi float [ %4513, %4487 ], [ %4463, %4458 ]
  %4521 = phi float [ %4514, %4487 ], [ %4464, %4458 ]
  %4522 = add nuw i32 %4465, 1
  %4523 = icmp eq i32 %4522, %4447
  br i1 %4523, label %4524, label %4458

; <label>:4524                                    ; preds = %4515
  br label %4525

; <label>:4525                                    ; preds = %4524, %4388
  %4526 = phi float [ 0.000000e+00, %4388 ], [ %4516, %4524 ]
  %4527 = phi float [ 0.000000e+00, %4388 ], [ %4517, %4524 ]
  %4528 = phi float [ 0.000000e+00, %4388 ], [ %4518, %4524 ]
  %4529 = phi float [ 0.000000e+00, %4388 ], [ %4519, %4524 ]
  %4530 = phi float [ 0.000000e+00, %4388 ], [ %4520, %4524 ]
  %4531 = phi float [ 0.000000e+00, %4388 ], [ %4521, %4524 ]
  %4532 = fadd fast float %4529, %4526
  %4533 = fmul fast float %4532, 0x3F847AE140000000
  %4534 = fadd fast float %4530, %4527
  %4535 = fmul fast float %4534, 0x3F847AE140000000
  %4536 = fadd fast float %4531, %4528
  %4537 = fmul fast float %4536, 0x3F847AE140000000
  br label %4538

; <label>:4538                                    ; preds = %4525, %4322, %4267, %4264, %4235, %4197
  %4539 = phi float [ %4249, %4235 ], [ -1.310720e+05, %4197 ], [ %4441, %4525 ], [ -1.310720e+05, %4267 ], [ -1.310720e+05, %4322 ], [ -1.310720e+05, %4264 ]
  %4540 = phi float [ %4259, %4235 ], [ 0.000000e+00, %4197 ], [ %4533, %4525 ], [ 0.000000e+00, %4267 ], [ 0.000000e+00, %4322 ], [ 0.000000e+00, %4264 ]
  %4541 = phi float [ %4261, %4235 ], [ 0.000000e+00, %4197 ], [ %4535, %4525 ], [ 0.000000e+00, %4267 ], [ 0.000000e+00, %4322 ], [ 0.000000e+00, %4264 ]
  %4542 = phi float [ %4263, %4235 ], [ 0.000000e+00, %4197 ], [ %4537, %4525 ], [ 0.000000e+00, %4267 ], [ 0.000000e+00, %4322 ], [ 0.000000e+00, %4264 ]
  %4543 = phi i1 [ true, %4235 ], [ false, %4197 ], [ true, %4525 ], [ false, %4267 ], [ false, %4322 ], [ false, %4264 ]
  %4544 = and i32 %139, 3
  %4545 = icmp eq i32 %4544, 1
  %4546 = select i1 %4545, float 1.000000e+00, float 0.000000e+00
  %4547 = fsub fast float %4539, %123
  %4548 = call float @dx.op.unary.f32(i32 7, float %4547)  ; Saturate(value)
  %4549 = select i1 %4543, float %4548, float 1.000000e+00
  %4550 = fmul fast float %4549, %4546
  %4551 = icmp eq i32 %4544, 3
  %4552 = select i1 %4551, float 1.000000e+00, float %4550
  %4553 = call float @dx.op.binary.f32(i32 35, float %4140, float %4552)  ; FMax(a,b)
  %4554 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4555 = fcmp fast une float %4554, 0.000000e+00
  %4556 = call float @dx.op.dot3.f32(i32 55, float %121, float %122, float %123, float %121, float %122, float %123)  ; Dot3(ax,ay,az,bx,by,bz)
  %4557 = call float @dx.op.unary.f32(i32 25, float %4556)  ; Rsqrt(value)
  br i1 %4555, label %4565, label %4558

; <label>:4558                                    ; preds = %4538
  %4559 = fmul fast float %4557, %121
  %4560 = fmul fast float %4557, %122
  %4561 = fmul fast float %4557, %123
  %4562 = fsub fast float -0.000000e+00, %4559
  %4563 = fsub fast float -0.000000e+00, %4560
  %4564 = fsub fast float -0.000000e+00, %4561
  br label %4733

; <label>:4565                                    ; preds = %4538
  %4566 = fmul fast float %121, %4557
  %4567 = fsub fast float -0.000000e+00, %4566
  %4568 = fmul fast float %122, %4557
  %4569 = fsub fast float -0.000000e+00, %4568
  %4570 = fmul fast float %123, %4557
  %4571 = fsub fast float -0.000000e+00, %4570
  %4572 = call float @dx.op.dot3.f32(i32 55, float %4567, float %4569, float %4571, float %73, float %74, float %75)  ; Dot3(ax,ay,az,bx,by,bz)
  %4573 = fmul fast float %4554, 2.500000e+00
  %4574 = call float @dx.op.unary.f32(i32 7, float %4573)  ; Saturate(value)
  %4575 = fmul fast float %4554, 0x4013FFFFE0000000
  %4576 = fadd fast float %4575, 0xBFFFFFFFE0000000
  %4577 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4578 = fmul fast float %4554, 0x4004000020000000
  %4579 = fadd fast float %4578, 0xBFF8000040000000
  %4580 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4581 = call float @dx.op.unary.f32(i32 7, float %4574)  ; Saturate(value)
  %4582 = fmul fast float %4143, 1.000000e+01
  %4583 = call float @dx.op.unary.f32(i32 7, float %4582)  ; Saturate(value)
  %4584 = fmul fast float %4583, 2.000000e+00
  %4585 = fsub fast float 3.000000e+00, %4584
  %4586 = fmul fast float %4583, %4583
  %4587 = fmul fast float %4586, %4585
  %4588 = fsub fast float 1.000000e+00, %4587
  %4589 = fsub fast float 0x3FE3333340000000, %4164
  %4590 = fmul fast float %4589, 0x400AAAAAA0000000
  %4591 = call float @dx.op.unary.f32(i32 7, float %4590)  ; Saturate(value)
  %4592 = fmul fast float %4588, %4591
  %4593 = fmul fast float %4176, 0x3FEA2B8620000000
  %4594 = fmul fast float %4177, 0x3FEA2B8620000000
  %4595 = fmul fast float %4178, 0x3FEA2B8620000000
  %4596 = fadd fast float %4593, 0x3FC81DFBA0000000
  %4597 = fmul fast float %4596, %4176
  %4598 = fadd fast float %4597, 0x3F910E6020000000
  %4599 = fadd fast float %4594, 0x3FC81DFBA0000000
  %4600 = fmul fast float %4599, %4177
  %4601 = fadd fast float %4600, 0x3F910E6020000000
  %4602 = fadd fast float %4595, 0x3FC81DFBA0000000
  %4603 = fmul fast float %4602, %4178
  %4604 = fadd fast float %4603, 0x3F910E6020000000
  %4605 = call float @dx.op.unary.f32(i32 7, float %4598)  ; Saturate(value)
  %4606 = call float @dx.op.unary.f32(i32 7, float %4601)  ; Saturate(value)
  %4607 = call float @dx.op.unary.f32(i32 7, float %4604)  ; Saturate(value)
  %4608 = fsub fast float %4605, %4176
  %4609 = fsub fast float %4606, %4177
  %4610 = fsub fast float %4607, %4178
  %4611 = fmul fast float %4608, %4581
  %4612 = fmul fast float %4611, %4592
  %4613 = fmul fast float %4609, %4581
  %4614 = fmul fast float %4613, %4592
  %4615 = fmul fast float %4610, %4581
  %4616 = fmul fast float %4615, %4592
  %4617 = fadd fast float %4612, %4176
  %4618 = fadd fast float %4614, %4177
  %4619 = fadd fast float %4616, %4178
  %4620 = fmul fast float %4137, %4137
  %4621 = fmul fast float %4620, %4620
  %4622 = fadd fast float %4577, 1.000000e+00
  %4623 = fsub fast float %4622, %4592
  %4624 = call float @dx.op.unary.f32(i32 7, float %4623)  ; Saturate(value)
  %4625 = call float @dx.op.dot3.f32(i32 55, float %73, float %74, float %75, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4626 = call float @dx.op.unary.f32(i32 7, float %4625)  ; Saturate(value)
  %4627 = fsub fast float 1.000000e+00, %4621
  %4628 = call float @dx.op.binary.f32(i32 36, float %4624, float %4627)  ; FMin(a,b)
  %4629 = call float @dx.op.unary.f32(i32 7, float %4580)  ; Saturate(value)
  %4630 = call float @dx.op.binary.f32(i32 35, float %4628, float %4629)  ; FMax(a,b)
  %4631 = fadd fast float %4626, 0xBFE4CCCCC0000000
  %4632 = fmul fast float %4631, 0x4006DB6DA0000000
  %4633 = call float @dx.op.unary.f32(i32 7, float %4632)  ; Saturate(value)
  %4634 = fmul fast float %4633, 2.000000e+00
  %4635 = fsub fast float 3.000000e+00, %4634
  %4636 = bitcast float %4161 to i32
  %4637 = ashr i32 %4636, 1
  %4638 = add nsw i32 %4637, 532487669
  %4639 = bitcast i32 %4638 to float
  %4640 = fsub fast float 1.000000e+00, %4639
  %4641 = bitcast float %4640 to i32
  %4642 = sub nsw i32 2129859010, %4641
  %4643 = bitcast i32 %4642 to float
  %4644 = fmul fast float %4643, 2.000000e+00
  %4645 = bitcast float %4162 to i32
  %4646 = ashr i32 %4645, 1
  %4647 = add nsw i32 %4646, 532487669
  %4648 = bitcast i32 %4647 to float
  %4649 = fsub fast float 1.000000e+00, %4648
  %4650 = bitcast float %4649 to i32
  %4651 = sub nsw i32 2129859010, %4650
  %4652 = bitcast i32 %4651 to float
  %4653 = fmul fast float %4652, 2.000000e+00
  %4654 = bitcast float %4163 to i32
  %4655 = ashr i32 %4654, 1
  %4656 = add nsw i32 %4655, 532487669
  %4657 = bitcast i32 %4656 to float
  %4658 = fsub fast float 1.000000e+00, %4657
  %4659 = bitcast float %4658 to i32
  %4660 = sub nsw i32 2129859010, %4659
  %4661 = bitcast i32 %4660 to float
  %4662 = fmul fast float %4661, 2.000000e+00
  %4663 = fsub fast float 0x4002A9FBE0000000, %4644
  %4664 = fadd fast float %4644, 0x3FD54FDF00000000
  %4665 = bitcast float %4664 to i32
  %4666 = sub nsw i32 2129859010, %4665
  %4667 = bitcast i32 %4666 to float
  %4668 = fmul fast float %4667, %4663
  %4669 = fmul fast float %4668, %4668
  %4670 = fsub fast float 0x4002A9FBE0000000, %4653
  %4671 = fadd fast float %4653, 0x3FD54FDF00000000
  %4672 = bitcast float %4671 to i32
  %4673 = sub nsw i32 2129859010, %4672
  %4674 = bitcast i32 %4673 to float
  %4675 = fmul fast float %4674, %4670
  %4676 = fmul fast float %4675, %4675
  %4677 = fsub fast float 0x4002A9FBE0000000, %4662
  %4678 = fadd fast float %4662, 0x3FD54FDF00000000
  %4679 = bitcast float %4678 to i32
  %4680 = sub nsw i32 2129859010, %4679
  %4681 = bitcast i32 %4680 to float
  %4682 = fmul fast float %4681, %4677
  %4683 = fmul fast float %4682, %4682
  %4684 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4669)  ; FMax(a,b)
  %4685 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4676)  ; FMax(a,b)
  %4686 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4683)  ; FMax(a,b)
  %4687 = fsub fast float 1.000000e+00, %4572
  %4688 = fadd fast float %4687, %4588
  %4689 = call float @dx.op.unary.f32(i32 7, float %4688)  ; Saturate(value)
  %4690 = fsub fast float 1.000000e+00, %4552
  %4691 = fmul fast float %4630, %4690
  %4692 = fmul fast float %4633, %4633
  %4693 = fmul fast float %4692, %4691
  %4694 = fmul fast float %4693, %4635
  %4695 = fmul fast float %4690, 0xBFE99999A0000000
  %4696 = fmul fast float %4695, %4581
  %4697 = fmul fast float %4696, %4592
  %4698 = fadd fast float %4697, 1.000000e+00
  %4699 = fadd fast float %4164, -1.000000e+00
  %4700 = fmul fast float %4698, %4699
  %4701 = fadd fast float %4700, 1.000000e+00
  %4702 = fsub fast float %4684, %4161
  %4703 = fsub fast float %4685, %4162
  %4704 = fsub fast float %4686, %4163
  %4705 = fmul fast float %4694, %4702
  %4706 = fmul fast float %4694, %4703
  %4707 = fmul fast float %4694, %4704
  %4708 = fadd fast float %4705, %4161
  %4709 = fadd fast float %4706, %4162
  %4710 = fadd fast float %4707, %4163
  %4711 = fsub fast float %73, %4125
  %4712 = fsub fast float %74, %4126
  %4713 = fsub fast float %75, %4127
  %4714 = fmul fast float %4694, %4711
  %4715 = fmul fast float %4694, %4712
  %4716 = fmul fast float %4694, %4713
  %4717 = fadd fast float %4714, %4125
  %4718 = fadd fast float %4715, %4126
  %4719 = fadd fast float %4716, %4127
  %4720 = fmul fast float %4694, %4689
  %4721 = call float @dx.op.unary.f32(i32 7, float %4701)  ; Saturate(value)
  %4722 = fsub fast float 1.000000e+00, %4721
  %4723 = fmul fast float %4720, %4722
  %4724 = fadd fast float %4723, %4721
  %4725 = fsub fast float 1.000000e+00, %4137
  %4726 = fmul fast float %4694, %4725
  %4727 = fadd fast float %4726, %4137
  %4728 = call float @dx.op.dot3.f32(i32 55, float %4717, float %4718, float %4719, float %4717, float %4718, float %4719)  ; Dot3(ax,ay,az,bx,by,bz)
  %4729 = call float @dx.op.unary.f32(i32 25, float %4728)  ; Rsqrt(value)
  %4730 = fmul fast float %4717, %4729
  %4731 = fmul fast float %4718, %4729
  %4732 = fmul fast float %4719, %4729
  br label %4733

; <label>:4733                                    ; preds = %4565, %4558
  %4734 = phi float [ %4564, %4558 ], [ %4571, %4565 ]
  %4735 = phi float [ %4563, %4558 ], [ %4569, %4565 ]
  %4736 = phi float [ %4562, %4558 ], [ %4567, %4565 ]
  %4737 = phi float [ %4561, %4558 ], [ %4570, %4565 ]
  %4738 = phi float [ %4560, %4558 ], [ %4568, %4565 ]
  %4739 = phi float [ %4559, %4558 ], [ %4566, %4565 ]
  %4740 = phi float [ %4176, %4558 ], [ %4617, %4565 ]
  %4741 = phi float [ %4177, %4558 ], [ %4618, %4565 ]
  %4742 = phi float [ %4178, %4558 ], [ %4619, %4565 ]
  %4743 = phi float [ %4125, %4558 ], [ %4730, %4565 ]
  %4744 = phi float [ %4126, %4558 ], [ %4731, %4565 ]
  %4745 = phi float [ %4127, %4558 ], [ %4732, %4565 ]
  %4746 = phi float [ %4161, %4558 ], [ %4708, %4565 ]
  %4747 = phi float [ %4162, %4558 ], [ %4709, %4565 ]
  %4748 = phi float [ %4163, %4558 ], [ %4710, %4565 ]
  %4749 = phi float [ %4164, %4558 ], [ %4724, %4565 ]
  %4750 = phi float [ %4137, %4558 ], [ %4727, %4565 ]
  %4751 = select i1 %163, float 0.000000e+00, float %4748
  %4752 = call float @dx.op.dot3.f32(i32 55, float %4743, float %4744, float %4745, float %4736, float %4735, float %4734)  ; Dot3(ax,ay,az,bx,by,bz)
  %4753 = call float @dx.op.unary.f32(i32 7, float %4752)  ; Saturate(value)
  %4754 = call float @dx.op.dot3.f32(i32 55, float %4739, float %4738, float %4737, float %4743, float %4744, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %4755 = fmul fast float %4754, 2.000000e+00
  %4756 = fmul fast float %4755, %4743
  %4757 = fmul fast float %4755, %4744
  %4758 = fmul fast float %4755, %4745
  %4759 = fsub fast float %4739, %4756
  %4760 = fsub fast float %4738, %4757
  %4761 = fsub fast float %4737, %4758
  %4762 = call float @dx.op.binary.f32(i32 36, float %4750, float 1.000000e+00)  ; FMin(a,b)
  %4763 = fsub fast float 1.000000e+00, %4750
  %4764 = bitcast float %4763 to i32
  %4765 = sub nsw i32 2129859010, %4764
  %4766 = bitcast i32 %4765 to float
  %4767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4768 = extractvalue %dx.types.CBufRet.f32 %4767, 0
  %4769 = extractvalue %dx.types.CBufRet.f32 %4767, 1
  %4770 = extractvalue %dx.types.CBufRet.f32 %4767, 2
  %4771 = fadd fast float %4768, %121
  %4772 = fadd fast float %4769, %122
  %4773 = fadd fast float %4770, %123
  %4774 = fmul fast float %4743, 3.200000e+01
  %4775 = fmul fast float %4744, 3.200000e+01
  %4776 = fadd fast float %4771, %4774
  %4777 = fadd fast float %4772, %4775
  %4778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4779 = extractvalue %dx.types.CBufRet.f32 %4778, 0
  %4780 = extractvalue %dx.types.CBufRet.f32 %4778, 1
  %4781 = fsub fast float %4776, %4779
  %4782 = fsub fast float %4777, %4780
  %4783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  %4785 = extractvalue %dx.types.CBufRet.f32 %4783, 1
  %4786 = fmul fast float %4781, %4784
  %4787 = fmul fast float %4782, %4785
  %4788 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4789 = extractvalue %dx.types.CBufRet.f32 %4788, 0
  %4790 = fmul fast float %4786, %4789
  %4791 = extractvalue %dx.types.CBufRet.f32 %4788, 1
  %4792 = fadd fast float %4790, %4791
  %4793 = extractvalue %dx.types.CBufRet.f32 %4788, 2
  %4794 = fmul fast float %4793, %4787
  %4795 = extractvalue %dx.types.CBufRet.f32 %4788, 3
  %4796 = fadd fast float %4794, %4795
  %4797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %4792, float %4796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = extractvalue %dx.types.ResRet.f32 %4797, 1
  %4800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4801 = extractvalue %dx.types.CBufRet.f32 %4800, 1
  %4802 = extractvalue %dx.types.CBufRet.f32 %4800, 0
  %4803 = fsub fast float %4801, %4802
  %4804 = fmul fast float %4803, %4798
  %4805 = fadd fast float %4804, %4802
  %4806 = extractvalue %dx.types.CBufRet.f32 %4800, 3
  %4807 = extractvalue %dx.types.CBufRet.f32 %4800, 2
  %4808 = fsub fast float %4806, %4807
  %4809 = fmul fast float %4808, %4799
  %4810 = fadd fast float %4809, %4807
  %4811 = fsub fast float %4773, %4805
  %4812 = fsub fast float %4810, %4805
  %4813 = fdiv fast float %4811, %4812
  %4814 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  %4815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4816 = extractvalue %dx.types.CBufRet.f32 %4815, 0
  %4817 = fmul fast float %4816, %4814
  %4818 = extractvalue %dx.types.CBufRet.f32 %4815, 1
  %4819 = fadd fast float %4817, %4818
  %4820 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %4792, float %4796, float %4819, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4821 = extractvalue %dx.types.ResRet.f32 %4820, 0
  %4822 = extractvalue %dx.types.ResRet.f32 %4820, 1
  %4823 = extractvalue %dx.types.ResRet.f32 %4820, 2
  %4824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4825 = extractvalue %dx.types.CBufRet.f32 %4824, 0
  %4826 = extractvalue %dx.types.CBufRet.f32 %4824, 1
  %4827 = extractvalue %dx.types.CBufRet.f32 %4824, 2
  %4828 = fmul fast float %4825, %4821
  %4829 = fmul fast float %4826, %4822
  %4830 = fmul fast float %4827, %4823
  %4831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4832 = extractvalue %dx.types.CBufRet.f32 %4831, 0
  %4833 = extractvalue %dx.types.CBufRet.f32 %4831, 1
  %4834 = extractvalue %dx.types.CBufRet.f32 %4831, 2
  %4835 = fadd fast float %4828, %4832
  %4836 = fadd fast float %4829, %4833
  %4837 = fadd fast float %4830, %4834
  %4838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4839 = extractvalue %dx.types.CBufRet.f32 %4838, 0
  %4840 = fmul fast float %4839, %4786
  %4841 = extractvalue %dx.types.CBufRet.f32 %4838, 1
  %4842 = fadd fast float %4840, %4841
  %4843 = extractvalue %dx.types.CBufRet.f32 %4838, 2
  %4844 = fmul fast float %4843, %4787
  %4845 = extractvalue %dx.types.CBufRet.f32 %4838, 3
  %4846 = fadd fast float %4844, %4845
  %4847 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4848 = extractvalue %dx.types.CBufRet.f32 %4847, 0
  %4849 = extractvalue %dx.types.CBufRet.f32 %4847, 1
  %4850 = extractvalue %dx.types.CBufRet.f32 %4847, 2
  %4851 = extractvalue %dx.types.CBufRet.f32 %4847, 3
  %4852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4853 = extractvalue %dx.types.CBufRet.f32 %4852, 0
  %4854 = extractvalue %dx.types.CBufRet.f32 %4852, 1
  %4855 = extractvalue %dx.types.CBufRet.f32 %4852, 2
  %4856 = extractvalue %dx.types.CBufRet.f32 %4852, 3
  %4857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4842, float %4846, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4858 = extractvalue %dx.types.ResRet.f32 %4857, 0
  %4859 = extractvalue %dx.types.ResRet.f32 %4857, 1
  %4860 = extractvalue %dx.types.ResRet.f32 %4857, 2
  %4861 = extractvalue %dx.types.ResRet.f32 %4857, 3
  %4862 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4842, float %4846, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4863 = extractvalue %dx.types.ResRet.f32 %4862, 0
  %4864 = extractvalue %dx.types.ResRet.f32 %4862, 1
  %4865 = extractvalue %dx.types.ResRet.f32 %4862, 2
  %4866 = extractvalue %dx.types.ResRet.f32 %4862, 3
  %4867 = fmul fast float %4858, %4835
  %4868 = fmul fast float %4863, %4835
  %4869 = fmul fast float %4865, %4835
  %4870 = fmul fast float %4861, %4835
  %4871 = fadd fast float %4867, %4848
  %4872 = fadd fast float %4868, %4849
  %4873 = fadd fast float %4869, %4850
  %4874 = fadd fast float %4870, %4851
  %4875 = fmul fast float %4859, %4835
  %4876 = fmul fast float %4864, %4835
  %4877 = fadd fast float %4875, %4853
  %4878 = fadd fast float %4876, %4854
  %4879 = fmul fast float %4860, %4835
  %4880 = fmul fast float %4866, %4835
  %4881 = fadd fast float %4879, %4855
  %4882 = fadd fast float %4880, %4856
  %4883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4842, float %4846, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4884 = extractvalue %dx.types.ResRet.f32 %4883, 0
  %4885 = extractvalue %dx.types.ResRet.f32 %4883, 1
  %4886 = extractvalue %dx.types.ResRet.f32 %4883, 2
  %4887 = extractvalue %dx.types.ResRet.f32 %4883, 3
  %4888 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4842, float %4846, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4889 = extractvalue %dx.types.ResRet.f32 %4888, 0
  %4890 = extractvalue %dx.types.ResRet.f32 %4888, 1
  %4891 = extractvalue %dx.types.ResRet.f32 %4888, 2
  %4892 = extractvalue %dx.types.ResRet.f32 %4888, 3
  %4893 = fmul fast float %4884, %4836
  %4894 = fmul fast float %4889, %4836
  %4895 = fmul fast float %4891, %4836
  %4896 = fmul fast float %4887, %4836
  %4897 = fadd fast float %4871, %4893
  %4898 = fadd fast float %4872, %4894
  %4899 = fadd fast float %4873, %4895
  %4900 = fadd fast float %4874, %4896
  %4901 = fmul fast float %4885, %4836
  %4902 = fmul fast float %4890, %4836
  %4903 = fadd fast float %4877, %4901
  %4904 = fadd fast float %4878, %4902
  %4905 = fmul fast float %4886, %4836
  %4906 = fmul fast float %4892, %4836
  %4907 = fadd fast float %4881, %4905
  %4908 = fadd fast float %4882, %4906
  %4909 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4842, float %4846, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4910 = extractvalue %dx.types.ResRet.f32 %4909, 0
  %4911 = extractvalue %dx.types.ResRet.f32 %4909, 1
  %4912 = extractvalue %dx.types.ResRet.f32 %4909, 2
  %4913 = extractvalue %dx.types.ResRet.f32 %4909, 3
  %4914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %4842, float %4846, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4915 = extractvalue %dx.types.ResRet.f32 %4914, 0
  %4916 = extractvalue %dx.types.ResRet.f32 %4914, 1
  %4917 = extractvalue %dx.types.ResRet.f32 %4914, 2
  %4918 = extractvalue %dx.types.ResRet.f32 %4914, 3
  %4919 = fmul fast float %4910, %4837
  %4920 = fmul fast float %4915, %4837
  %4921 = fmul fast float %4917, %4837
  %4922 = fmul fast float %4913, %4837
  %4923 = fadd fast float %4897, %4919
  %4924 = fadd fast float %4898, %4920
  %4925 = fadd fast float %4899, %4921
  %4926 = fadd fast float %4900, %4922
  %4927 = fmul fast float %4911, %4837
  %4928 = fmul fast float %4916, %4837
  %4929 = fadd fast float %4903, %4927
  %4930 = fadd fast float %4904, %4928
  %4931 = fmul fast float %4912, %4837
  %4932 = fmul fast float %4918, %4837
  %4933 = fadd fast float %4907, %4931
  %4934 = fadd fast float %4908, %4932
  %4935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4936 = extractvalue %dx.types.CBufRet.f32 %4935, 0
  %4937 = fsub fast float %4771, %4936
  %4938 = fsub fast float %4779, %4771
  %4939 = call float @dx.op.binary.f32(i32 35, float %4938, float %4937)  ; FMax(a,b)
  %4940 = extractvalue %dx.types.CBufRet.f32 %4935, 1
  %4941 = fsub fast float %4772, %4940
  %4942 = fsub fast float %4780, %4772
  %4943 = call float @dx.op.binary.f32(i32 35, float %4942, float %4941)  ; FMax(a,b)
  %4944 = call float @dx.op.binary.f32(i32 35, float %4939, float %4943)  ; FMax(a,b)
  %4945 = extractvalue %dx.types.CBufRet.f32 %4783, 3
  %4946 = fmul fast float %4945, %4944
  %4947 = call float @dx.op.unary.f32(i32 7, float %4946)  ; Saturate(value)
  %4948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4949 = extractvalue %dx.types.CBufRet.f32 %4948, 0
  %4950 = extractvalue %dx.types.CBufRet.f32 %4948, 1
  %4951 = extractvalue %dx.types.CBufRet.f32 %4948, 2
  %4952 = extractvalue %dx.types.CBufRet.f32 %4948, 3
  %4953 = fsub fast float %4949, %4923
  %4954 = fsub fast float %4950, %4924
  %4955 = fsub fast float %4951, %4925
  %4956 = fsub fast float %4952, %4926
  %4957 = fmul fast float %4953, %4947
  %4958 = fmul fast float %4954, %4947
  %4959 = fmul fast float %4955, %4947
  %4960 = fmul fast float %4956, %4947
  %4961 = fadd fast float %4957, %4923
  %4962 = fadd fast float %4958, %4924
  %4963 = fadd fast float %4959, %4925
  %4964 = fadd fast float %4960, %4926
  %4965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4966 = extractvalue %dx.types.CBufRet.f32 %4965, 0
  %4967 = extractvalue %dx.types.CBufRet.f32 %4965, 1
  %4968 = fsub fast float %4966, %4929
  %4969 = fsub fast float %4967, %4930
  %4970 = fmul fast float %4968, %4947
  %4971 = fmul fast float %4969, %4947
  %4972 = fadd fast float %4970, %4929
  %4973 = fadd fast float %4971, %4930
  %4974 = extractvalue %dx.types.CBufRet.f32 %4965, 2
  %4975 = extractvalue %dx.types.CBufRet.f32 %4965, 3
  %4976 = fsub fast float %4974, %4933
  %4977 = fsub fast float %4975, %4934
  %4978 = fmul fast float %4976, %4947
  %4979 = fmul fast float %4977, %4947
  %4980 = fadd fast float %4978, %4933
  %4981 = fadd fast float %4979, %4934
  %4982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4983 = extractvalue %dx.types.CBufRet.f32 %4982, 0
  %4984 = fmul fast float %4983, %4961
  %4985 = fmul fast float %4983, %4962
  %4986 = fmul fast float %4983, %4963
  %4987 = fmul fast float %4983, %4964
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 0
  %4990 = fmul fast float %4989, %4972
  %4991 = fmul fast float %4989, %4973
  %4992 = fadd fast float %4990, %4984
  %4993 = fadd fast float %4991, %4986
  %4994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4994, 0
  %4996 = fmul fast float %4995, %4980
  %4997 = fmul fast float %4995, %4981
  %4998 = fadd fast float %4992, %4996
  %4999 = fadd fast float %4993, %4997
  %5000 = extractvalue %dx.types.CBufRet.f32 %4982, 1
  %5001 = fmul fast float %5000, %4961
  %5002 = fmul fast float %5000, %4962
  %5003 = fmul fast float %5000, %4963
  %5004 = fmul fast float %5000, %4964
  %5005 = extractvalue %dx.types.CBufRet.f32 %4988, 1
  %5006 = fmul fast float %5005, %4972
  %5007 = fmul fast float %5005, %4973
  %5008 = fadd fast float %5006, %5001
  %5009 = fadd fast float %5007, %5003
  %5010 = extractvalue %dx.types.CBufRet.f32 %4994, 1
  %5011 = fmul fast float %5010, %4980
  %5012 = fmul fast float %5010, %4981
  %5013 = fadd fast float %5008, %5011
  %5014 = fadd fast float %5009, %5012
  %5015 = extractvalue %dx.types.CBufRet.f32 %4982, 2
  %5016 = fmul fast float %5015, %4961
  %5017 = fmul fast float %5015, %4962
  %5018 = fmul fast float %5015, %4963
  %5019 = fmul fast float %5015, %4964
  %5020 = extractvalue %dx.types.CBufRet.f32 %4988, 2
  %5021 = fmul fast float %5020, %4972
  %5022 = fmul fast float %5020, %4973
  %5023 = fadd fast float %5021, %5016
  %5024 = fadd fast float %5022, %5018
  %5025 = extractvalue %dx.types.CBufRet.f32 %4994, 2
  %5026 = fmul fast float %5025, %4980
  %5027 = fmul fast float %5025, %4981
  %5028 = fadd fast float %5023, %5026
  %5029 = fadd fast float %5024, %5027
  %5030 = fmul fast float %5017, %5017
  %5031 = fmul fast float %5029, %5029
  %5032 = fmul fast float %5019, %5019
  %5033 = fadd fast float %5032, %5030
  %5034 = fadd fast float %5033, %5031
  %5035 = call float @dx.op.unary.f32(i32 24, float %5034)  ; Sqrt(value)
  %5036 = fcmp fast ugt float %5035, 0.000000e+00
  br i1 %5036, label %5037, label %5052

; <label>:5037                                    ; preds = %4733
  %5038 = fsub fast float -0.000000e+00, %5019
  %5039 = fdiv fast float %5038, %5035
  %5040 = fsub fast float -0.000000e+00, %5017
  %5041 = fdiv fast float %5040, %5035
  %5042 = fdiv fast float %5029, %5035
  %5043 = fmul fast float %5028, 0x3FE279A760000000
  %5044 = fmul fast float %5041, %5017
  %5045 = fmul fast float %5042, %5029
  %5046 = fmul fast float %5039, %5019
  %5047 = fadd fast float %5044, %5046
  %5048 = fsub fast float %5047, %5045
  %5049 = call float @dx.op.unary.f32(i32 6, float %5048)  ; FAbs(value)
  %5050 = fadd fast float %5049, 0x3DDB7CDFE0000000
  %5051 = fdiv fast float %5043, %5050
  br label %5052

; <label>:5052                                    ; preds = %5037, %4733
  %5053 = phi float [ %5051, %5037 ], [ 1.000000e+00, %4733 ]
  %5054 = fmul fast float %5002, %5002
  %5055 = fmul fast float %5014, %5014
  %5056 = fmul fast float %5004, %5004
  %5057 = fadd fast float %5056, %5054
  %5058 = fadd fast float %5057, %5055
  %5059 = call float @dx.op.unary.f32(i32 24, float %5058)  ; Sqrt(value)
  %5060 = fcmp fast ugt float %5059, 0.000000e+00
  br i1 %5060, label %5061, label %5076

; <label>:5061                                    ; preds = %5052
  %5062 = fsub fast float -0.000000e+00, %5004
  %5063 = fdiv fast float %5062, %5059
  %5064 = fsub fast float -0.000000e+00, %5002
  %5065 = fdiv fast float %5064, %5059
  %5066 = fdiv fast float %5014, %5059
  %5067 = fmul fast float %5013, 0x3FE279A760000000
  %5068 = fmul fast float %5065, %5002
  %5069 = fmul fast float %5066, %5014
  %5070 = fmul fast float %5063, %5004
  %5071 = fadd fast float %5068, %5070
  %5072 = fsub fast float %5071, %5069
  %5073 = call float @dx.op.unary.f32(i32 6, float %5072)  ; FAbs(value)
  %5074 = fadd fast float %5073, 0x3DDB7CDFE0000000
  %5075 = fdiv fast float %5067, %5074
  br label %5076

; <label>:5076                                    ; preds = %5061, %5052
  %5077 = phi float [ %5075, %5061 ], [ 1.000000e+00, %5052 ]
  %5078 = call float @dx.op.binary.f32(i32 36, float %5077, float %5053)  ; FMin(a,b)
  %5079 = fmul fast float %4985, %4985
  %5080 = fmul fast float %4999, %4999
  %5081 = fmul fast float %4987, %4987
  %5082 = fadd fast float %5081, %5079
  %5083 = fadd fast float %5082, %5080
  %5084 = call float @dx.op.unary.f32(i32 24, float %5083)  ; Sqrt(value)
  %5085 = fcmp fast ugt float %5084, 0.000000e+00
  br i1 %5085, label %5086, label %5101

; <label>:5086                                    ; preds = %5076
  %5087 = fsub fast float -0.000000e+00, %4987
  %5088 = fdiv fast float %5087, %5084
  %5089 = fsub fast float -0.000000e+00, %4985
  %5090 = fdiv fast float %5089, %5084
  %5091 = fdiv fast float %4999, %5084
  %5092 = fmul fast float %4998, 0x3FE279A760000000
  %5093 = fmul fast float %5090, %4985
  %5094 = fmul fast float %5091, %4999
  %5095 = fmul fast float %5088, %4987
  %5096 = fadd fast float %5093, %5095
  %5097 = fsub fast float %5096, %5094
  %5098 = call float @dx.op.unary.f32(i32 6, float %5097)  ; FAbs(value)
  %5099 = fadd fast float %5098, 0x3DDB7CDFE0000000
  %5100 = fdiv fast float %5092, %5099
  br label %5101

; <label>:5101                                    ; preds = %5086, %5076
  %5102 = phi float [ %5100, %5086 ], [ 1.000000e+00, %5076 ]
  %5103 = call float @dx.op.binary.f32(i32 36, float %5102, float %5078)  ; FMin(a,b)
  %5104 = call float @dx.op.unary.f32(i32 7, float %5103)  ; Saturate(value)
  %5105 = fcmp fast olt float %5104, 1.000000e+00
  br i1 %5105, label %5106, label %5116

; <label>:5106                                    ; preds = %5101
  %5107 = fmul fast float %5104, %4985
  %5108 = fmul fast float %5104, %4999
  %5109 = fmul fast float %5104, %4987
  %5110 = fmul fast float %5104, %5002
  %5111 = fmul fast float %5104, %5014
  %5112 = fmul fast float %5104, %5004
  %5113 = fmul fast float %5104, %5017
  %5114 = fmul fast float %5104, %5029
  %5115 = fmul fast float %5104, %5019
  br label %5116

; <label>:5116                                    ; preds = %5106, %5101
  %5117 = phi float [ %5113, %5106 ], [ %5017, %5101 ]
  %5118 = phi float [ %5114, %5106 ], [ %5029, %5101 ]
  %5119 = phi float [ %5115, %5106 ], [ %5019, %5101 ]
  %5120 = phi float [ %5110, %5106 ], [ %5002, %5101 ]
  %5121 = phi float [ %5111, %5106 ], [ %5014, %5101 ]
  %5122 = phi float [ %5112, %5106 ], [ %5004, %5101 ]
  %5123 = phi float [ %5107, %5106 ], [ %4985, %5101 ]
  %5124 = phi float [ %5108, %5106 ], [ %4999, %5101 ]
  %5125 = phi float [ %5109, %5106 ], [ %4987, %5101 ]
  %5126 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4998)  ; FMax(a,b)
  %5127 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5013)  ; FMax(a,b)
  %5128 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5028)  ; FMax(a,b)
  %5129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %5130 = extractvalue %dx.types.CBufRet.f32 %5129, 0
  %5131 = fcmp fast ogt float %5130, 0.000000e+00
  %5132 = fcmp fast oge float %4786, 0.000000e+00
  %5133 = and i1 %5132, %5131
  %5134 = fcmp fast ole float %4786, 1.000000e+00
  %5135 = and i1 %5134, %5133
  %5136 = fcmp fast oge float %4787, 0.000000e+00
  %5137 = and i1 %5136, %5135
  %5138 = fcmp fast ole float %4787, 1.000000e+00
  %5139 = and i1 %5138, %5137
  br i1 %5139, label %5140, label %5285, !dx.controlflow.hints !75

; <label>:5140                                    ; preds = %5116
  %5141 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %5142 = extractvalue %dx.types.CBufRet.f32 %5141, 2
  %5143 = extractvalue %dx.types.CBufRet.f32 %5141, 3
  %5144 = fmul fast float %5142, %4786
  %5145 = fmul fast float %5143, %4787
  %5146 = call float @dx.op.unary.f32(i32 27, float %5144)  ; Round_ni(value)
  %5147 = call float @dx.op.unary.f32(i32 27, float %5145)  ; Round_ni(value)
  %5148 = fptosi float %5146 to i32
  %5149 = fptosi float %5147 to i32
  %5150 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5148, i32 %5149, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5151 = extractvalue %dx.types.ResRet.i32 %5150, 0
  %5152 = and i32 %5151, 65535
  %5153 = lshr i32 %5151, 16
  %5154 = icmp eq i32 %5152, 65535
  br i1 %5154, label %5191, label %5155

; <label>:5155                                    ; preds = %5140
  %5156 = extractvalue %dx.types.CBufRet.f32 %5129, 1
  %5157 = extractvalue %dx.types.CBufRet.f32 %5141, 0
  %5158 = extractvalue %dx.types.CBufRet.f32 %5141, 1
  %5159 = fmul fast float %5157, %4786
  %5160 = fmul fast float %5158, %4787
  %5161 = fmul fast float %5159, 1.250000e-01
  %5162 = fmul fast float %5160, 1.250000e-01
  %5163 = call float @dx.op.unary.f32(i32 27, float %5161)  ; Round_ni(value)
  %5164 = call float @dx.op.unary.f32(i32 27, float %5162)  ; Round_ni(value)
  %5165 = fmul fast float %5163, 8.000000e+00
  %5166 = fmul fast float %5164, 8.000000e+00
  %5167 = and i32 %5151, 255
  %5168 = lshr i32 %5151, 8
  %5169 = and i32 %5168, 255
  %5170 = mul nuw nsw i32 %5167, 9
  %5171 = uitofp i32 %5170 to float
  %5172 = mul nuw nsw i32 %5169, 9
  %5173 = uitofp i32 %5172 to float
  %5174 = fadd fast float %5171, 5.000000e-01
  %5175 = fadd fast float %5174, %5159
  %5176 = fsub fast float %5175, %5165
  %5177 = fadd fast float %5173, 5.000000e-01
  %5178 = fadd fast float %5177, %5160
  %5179 = fsub fast float %5178, %5166
  %5180 = fdiv fast float %5176, %5130
  %5181 = fdiv fast float %5179, %5156
  %5182 = fmul fast float %4814, 4.375000e-01
  %5183 = fadd fast float %5182, 3.125000e-02
  %5184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5180, float %5181, float %5183, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5185 = extractvalue %dx.types.ResRet.f32 %5184, 0
  %5186 = extractvalue %dx.types.ResRet.f32 %5184, 1
  %5187 = extractvalue %dx.types.ResRet.f32 %5184, 2
  %5188 = fadd fast float %5185, %5126
  %5189 = fadd fast float %5186, %5127
  %5190 = fadd fast float %5187, %5128
  br label %5191

; <label>:5191                                    ; preds = %5155, %5140
  %5192 = phi float [ %5190, %5155 ], [ %5128, %5140 ]
  %5193 = phi float [ %5189, %5155 ], [ %5127, %5140 ]
  %5194 = phi float [ %5188, %5155 ], [ %5126, %5140 ]
  %5195 = icmp eq i32 %5153, 65535
  br i1 %5195, label %5285, label %5196

; <label>:5196                                    ; preds = %5191
  %5197 = extractvalue %dx.types.CBufRet.f32 %5129, 1
  %5198 = extractvalue %dx.types.CBufRet.f32 %5141, 0
  %5199 = extractvalue %dx.types.CBufRet.f32 %5141, 1
  %5200 = fmul fast float %5198, %4786
  %5201 = fmul fast float %5199, %4787
  %5202 = fmul fast float %5200, 1.250000e-01
  %5203 = fmul fast float %5201, 1.250000e-01
  %5204 = call float @dx.op.unary.f32(i32 27, float %5202)  ; Round_ni(value)
  %5205 = call float @dx.op.unary.f32(i32 27, float %5203)  ; Round_ni(value)
  %5206 = fmul fast float %5204, 8.000000e+00
  %5207 = fmul fast float %5205, 8.000000e+00
  %5208 = fsub fast float %5200, %5206
  %5209 = fsub fast float %5201, %5207
  %5210 = fadd fast float %5208, 5.000000e-01
  %5211 = fadd fast float %5209, 5.000000e-01
  %5212 = and i32 %5153, 255
  %5213 = lshr i32 %5151, 24
  %5214 = mul nuw nsw i32 %5212, 9
  %5215 = uitofp i32 %5214 to float
  %5216 = mul nuw nsw i32 %5213, 9
  %5217 = uitofp i32 %5216 to float
  %5218 = fadd fast float %5210, %5215
  %5219 = fadd fast float %5211, %5217
  %5220 = fdiv fast float %5218, %5130
  %5221 = fdiv fast float %5219, %5197
  %5222 = fmul fast float %4814, 4.375000e-01
  %5223 = fadd fast float %5222, 3.125000e-02
  %5224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5220, float %5221, float %5223, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5225 = extractvalue %dx.types.ResRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.ResRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.ResRet.f32 %5224, 2
  %5228 = fadd fast float %5222, 5.312500e-01
  %5229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5220, float %5221, float %5228, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5230 = extractvalue %dx.types.ResRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.ResRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.ResRet.f32 %5229, 2
  %5233 = fmul fast float %5230, 2.000000e+00
  %5234 = fmul fast float %5231, 2.000000e+00
  %5235 = fmul fast float %5232, 2.000000e+00
  %5236 = fadd fast float %5233, -1.000000e+00
  %5237 = fadd fast float %5234, -1.000000e+00
  %5238 = fadd fast float %5235, -1.000000e+00
  %5239 = fmul fast float %5236, %5236
  %5240 = fmul fast float %5237, %5237
  %5241 = fadd fast float %5239, %5240
  %5242 = fmul fast float %5238, %5238
  %5243 = fadd fast float %5241, %5242
  %5244 = call float @dx.op.unary.f32(i32 24, float %5243)  ; Sqrt(value)
  %5245 = fcmp fast ogt float %5244, 0.000000e+00
  br i1 %5245, label %5246, label %5250

; <label>:5246                                    ; preds = %5196
  %5247 = fdiv fast float %5236, %5244
  %5248 = fdiv fast float %5237, %5244
  %5249 = fdiv fast float %5238, %5244
  br label %5250

; <label>:5250                                    ; preds = %5246, %5196
  %5251 = phi float [ %5247, %5246 ], [ 0.000000e+00, %5196 ]
  %5252 = phi float [ %5248, %5246 ], [ 0.000000e+00, %5196 ]
  %5253 = phi float [ %5249, %5246 ], [ 0.000000e+00, %5196 ]
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.CBufRet.f32 %5254, 1
  %5257 = fsub fast float %4771, %5255
  %5258 = fsub fast float %4772, %5256
  %5259 = fmul fast float %5257, %5257
  %5260 = fmul fast float %5258, %5258
  %5261 = fadd fast float %5259, %5260
  %5262 = call float @dx.op.unary.f32(i32 24, float %5261)  ; Sqrt(value)
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.CBufRet.f32 %5263, 1
  %5266 = fsub fast float %5262, %5264
  %5267 = fdiv fast float %5266, %5265
  %5268 = call float @dx.op.unary.f32(i32 7, float %5267)  ; Saturate(value)
  %5269 = fmul fast float %5268, 2.000000e+00
  %5270 = fsub fast float 3.000000e+00, %5269
  %5271 = fmul fast float %5268, %5268
  %5272 = fmul fast float %5271, %5270
  %5273 = call float @dx.op.dot3.f32(i32 55, float %5251, float %5252, float %5253, float %4743, float %4744, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %5274 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5273)  ; FMax(a,b)
  %5275 = fmul fast float %5274, 0x400C5BF8A0000000
  %5276 = fmul fast float %5272, %5225
  %5277 = fmul fast float %5276, %5275
  %5278 = fadd fast float %5277, %5194
  %5279 = fmul fast float %5272, %5226
  %5280 = fmul fast float %5279, %5275
  %5281 = fadd fast float %5280, %5193
  %5282 = fmul fast float %5272, %5227
  %5283 = fmul fast float %5282, %5275
  %5284 = fadd fast float %5283, %5192
  br label %5285

; <label>:5285                                    ; preds = %5250, %5191, %5116
  %5286 = phi float [ %5284, %5250 ], [ %5192, %5191 ], [ %5128, %5116 ]
  %5287 = phi float [ %5281, %5250 ], [ %5193, %5191 ], [ %5127, %5116 ]
  %5288 = phi float [ %5278, %5250 ], [ %5194, %5191 ], [ %5126, %5116 ]
  %5289 = fcmp fast ogt float %4773, %4810
  %5290 = and i1 %5132, %5289
  %5291 = and i1 %5134, %5290
  %5292 = and i1 %5136, %5291
  %5293 = and i1 %5138, %5292
  br i1 %5293, label %5294, label %5351, !dx.controlflow.hints !76

; <label>:5294                                    ; preds = %5285
  %5295 = fmul fast float %4812, 0x3FC24924A0000000
  %5296 = fsub fast float %4773, %4810
  %5297 = fdiv fast float %5296, %5295
  %5298 = call float @dx.op.unary.f32(i32 7, float %5297)  ; Saturate(value)
  %5299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %5300 = extractvalue %dx.types.CBufRet.f32 %5299, 0
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.CBufRet.f32 %5301, 1
  %5304 = extractvalue %dx.types.CBufRet.f32 %5301, 2
  %5305 = fsub fast float %5300, %5288
  %5306 = fsub fast float %5302, %5123
  %5307 = fsub fast float %5303, %5124
  %5308 = fsub fast float %5304, %5125
  %5309 = fmul fast float %5305, %5298
  %5310 = fmul fast float %5306, %5298
  %5311 = fmul fast float %5307, %5298
  %5312 = fmul fast float %5308, %5298
  %5313 = fadd fast float %5309, %5288
  %5314 = fadd fast float %5310, %5123
  %5315 = fadd fast float %5311, %5124
  %5316 = fadd fast float %5312, %5125
  %5317 = extractvalue %dx.types.CBufRet.f32 %5299, 1
  %5318 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %5319 = extractvalue %dx.types.CBufRet.f32 %5318, 0
  %5320 = extractvalue %dx.types.CBufRet.f32 %5318, 1
  %5321 = extractvalue %dx.types.CBufRet.f32 %5318, 2
  %5322 = fsub fast float %5317, %5287
  %5323 = fsub fast float %5319, %5120
  %5324 = fsub fast float %5320, %5121
  %5325 = fsub fast float %5321, %5122
  %5326 = fmul fast float %5322, %5298
  %5327 = fmul fast float %5323, %5298
  %5328 = fmul fast float %5324, %5298
  %5329 = fmul fast float %5325, %5298
  %5330 = fadd fast float %5326, %5287
  %5331 = fadd fast float %5327, %5120
  %5332 = fadd fast float %5328, %5121
  %5333 = fadd fast float %5329, %5122
  %5334 = extractvalue %dx.types.CBufRet.f32 %5299, 2
  %5335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %5336 = extractvalue %dx.types.CBufRet.f32 %5335, 0
  %5337 = extractvalue %dx.types.CBufRet.f32 %5335, 1
  %5338 = extractvalue %dx.types.CBufRet.f32 %5335, 2
  %5339 = fsub fast float %5334, %5286
  %5340 = fsub fast float %5336, %5117
  %5341 = fsub fast float %5337, %5118
  %5342 = fsub fast float %5338, %5119
  %5343 = fmul fast float %5339, %5298
  %5344 = fmul fast float %5340, %5298
  %5345 = fmul fast float %5341, %5298
  %5346 = fmul fast float %5342, %5298
  %5347 = fadd fast float %5343, %5286
  %5348 = fadd fast float %5344, %5117
  %5349 = fadd fast float %5345, %5118
  %5350 = fadd fast float %5346, %5119
  br label %5351

; <label>:5351                                    ; preds = %5294, %5285
  %5352 = phi float [ %5347, %5294 ], [ %5286, %5285 ]
  %5353 = phi float [ %5348, %5294 ], [ %5117, %5285 ]
  %5354 = phi float [ %5349, %5294 ], [ %5118, %5285 ]
  %5355 = phi float [ %5350, %5294 ], [ %5119, %5285 ]
  %5356 = phi float [ %5330, %5294 ], [ %5287, %5285 ]
  %5357 = phi float [ %5331, %5294 ], [ %5120, %5285 ]
  %5358 = phi float [ %5332, %5294 ], [ %5121, %5285 ]
  %5359 = phi float [ %5333, %5294 ], [ %5122, %5285 ]
  %5360 = phi float [ %5313, %5294 ], [ %5288, %5285 ]
  %5361 = phi float [ %5314, %5294 ], [ %5123, %5285 ]
  %5362 = phi float [ %5315, %5294 ], [ %5124, %5285 ]
  %5363 = phi float [ %5316, %5294 ], [ %5125, %5285 ]
  %5364 = extractvalue %dx.types.CBufRet.f32 %4935, 3
  %5365 = fmul fast float %5364, %5360
  %5366 = fmul fast float %5364, %5356
  %5367 = fmul fast float %5364, %5352
  %5368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5369 = extractvalue %dx.types.CBufRet.f32 %5368, 3
  %5370 = fmul fast float %5365, %5369
  %5371 = fmul fast float %5366, %5369
  %5372 = fmul fast float %5367, %5369
  %5373 = fmul fast float %5361, 1.500000e+00
  %5374 = fmul fast float %5373, %5364
  %5375 = fmul fast float %5374, %5369
  %5376 = fmul fast float %5362, 1.500000e+00
  %5377 = fmul fast float %5376, %5364
  %5378 = fmul fast float %5377, %5369
  %5379 = fmul fast float %5363, 1.500000e+00
  %5380 = fmul fast float %5379, %5364
  %5381 = fmul fast float %5380, %5369
  %5382 = fmul fast float %5357, 1.500000e+00
  %5383 = fmul fast float %5382, %5364
  %5384 = fmul fast float %5383, %5369
  %5385 = fmul fast float %5358, 1.500000e+00
  %5386 = fmul fast float %5385, %5364
  %5387 = fmul fast float %5386, %5369
  %5388 = fmul fast float %5359, 1.500000e+00
  %5389 = fmul fast float %5388, %5364
  %5390 = fmul fast float %5389, %5369
  %5391 = fmul fast float %5353, 1.500000e+00
  %5392 = fmul fast float %5391, %5364
  %5393 = fmul fast float %5392, %5369
  %5394 = fmul fast float %5354, 1.500000e+00
  %5395 = fmul fast float %5394, %5364
  %5396 = fmul fast float %5395, %5369
  %5397 = fmul fast float %5355, 1.500000e+00
  %5398 = fmul fast float %5397, %5364
  %5399 = fmul fast float %5398, %5369
  %5400 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5370)  ; FMax(a,b)
  %5401 = call float @dx.op.dot3.f32(i32 55, float %5375, float %5378, float %5381, float %5375, float %5378, float %5381)  ; Dot3(ax,ay,az,bx,by,bz)
  %5402 = fcmp fast oeq float %5401, 0.000000e+00
  %5403 = fcmp fast oeq float %5400, 0.000000e+00
  %5404 = or i1 %5403, %5402
  br i1 %5404, label %5434, label %5405

; <label>:5405                                    ; preds = %5351
  %5406 = fsub fast float -0.000000e+00, %5381
  %5407 = fsub fast float -0.000000e+00, %5375
  %5408 = call float @dx.op.unary.f32(i32 24, float %5401)  ; Sqrt(value)
  %5409 = fdiv fast float %5408, %5400
  %5410 = fcmp fast ogt float %5409, 0x3FFB6F8900000000
  %5411 = select i1 %5410, float 0x3FFB6F8900000000, float %5409
  %5412 = fmul fast float %5411, 0x3FE8A23460000000
  %5413 = call float @dx.op.unary.f32(i32 7, float %5412)  ; Saturate(value)
  %5414 = call float @dx.op.binary.f32(i32 35, float %5411, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5415 = fmul fast float %5413, %5400
  %5416 = fmul fast float %5414, 0x3FF279A740000000
  %5417 = fadd fast float %5416, -1.000000e+00
  %5418 = call float @dx.op.dot3.f32(i32 55, float %5406, float %5407, float %5378, float %5406, float %5407, float %5378)  ; Dot3(ax,ay,az,bx,by,bz)
  %5419 = call float @dx.op.unary.f32(i32 25, float %5418)  ; Rsqrt(value)
  %5420 = fmul fast float %5419, %5406
  %5421 = fmul fast float %5419, %5407
  %5422 = fmul fast float %5419, %5378
  %5423 = fmul fast float %5417, %5417
  %5424 = fsub fast float 1.000000e+00, %5423
  %5425 = fmul fast float %5414, 0x40005F8BE0000000
  %5426 = fsub fast float 0x400C5BF8A0000000, %5425
  %5427 = fdiv fast float %5415, %5426
  %5428 = fmul fast float %5427, 0x3FEE31C3C0000000
  %5429 = fmul fast float %5428, %5424
  %5430 = fmul fast float %5414, 0x3FDACB7480000000
  %5431 = fadd fast float %5430, 0xBFD7347680000000
  %5432 = fmul fast float %5431, %5427
  %5433 = fmul fast float %5432, %5424
  br label %5434

; <label>:5434                                    ; preds = %5405, %5351
  %5435 = phi float [ %5420, %5405 ], [ 0.000000e+00, %5351 ]
  %5436 = phi float [ %5421, %5405 ], [ 0.000000e+00, %5351 ]
  %5437 = phi float [ %5422, %5405 ], [ 0.000000e+00, %5351 ]
  %5438 = phi float [ %5429, %5405 ], [ 0.000000e+00, %5351 ]
  %5439 = phi float [ %5433, %5405 ], [ 0.000000e+00, %5351 ]
  %5440 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5436, float %5437, float %4743, float %4744, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %5441 = fmul fast float %5440, %5440
  %5442 = fmul fast float %5441, 0x3FEE471020000000
  %5443 = fadd fast float %5442, 0xBFD42F6020000000
  %5444 = fmul fast float %5400, 0x3FD20DD760000000
  %5445 = fmul fast float %5443, %5439
  %5446 = fmul fast float %5438, 0x3FDF454380000000
  %5447 = fmul fast float %5446, %5440
  %5448 = fadd fast float %5447, %5444
  %5449 = fadd fast float %5448, %5445
  %5450 = call float @dx.op.dot3.f32(i32 55, float %5435, float %5436, float %5437, float %4759, float %4760, float %4761)  ; Dot3(ax,ay,az,bx,by,bz)
  %5451 = fmul fast float %5450, 0x3FDF454380000000
  %5452 = fmul fast float %5450, %5450
  %5453 = fmul fast float %5452, 0x3FEE471020000000
  %5454 = fadd fast float %5453, 0xBFD42F6020000000
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5400, float %5438, float %5439, float 0x3FD20DD760000000, float %5451, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5371)  ; FMax(a,b)
  %5457 = call float @dx.op.dot3.f32(i32 55, float %5384, float %5387, float %5390, float %5384, float %5387, float %5390)  ; Dot3(ax,ay,az,bx,by,bz)
  %5458 = fcmp fast oeq float %5457, 0.000000e+00
  %5459 = fcmp fast oeq float %5456, 0.000000e+00
  %5460 = or i1 %5459, %5458
  br i1 %5460, label %5490, label %5461

; <label>:5461                                    ; preds = %5434
  %5462 = fsub fast float -0.000000e+00, %5390
  %5463 = fsub fast float -0.000000e+00, %5384
  %5464 = call float @dx.op.unary.f32(i32 24, float %5457)  ; Sqrt(value)
  %5465 = fdiv fast float %5464, %5456
  %5466 = fcmp fast ogt float %5465, 0x3FFB6F8900000000
  %5467 = select i1 %5466, float 0x3FFB6F8900000000, float %5465
  %5468 = fmul fast float %5467, 0x3FE8A23460000000
  %5469 = call float @dx.op.unary.f32(i32 7, float %5468)  ; Saturate(value)
  %5470 = call float @dx.op.binary.f32(i32 35, float %5467, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5471 = fmul fast float %5469, %5456
  %5472 = fmul fast float %5470, 0x3FF279A740000000
  %5473 = fadd fast float %5472, -1.000000e+00
  %5474 = call float @dx.op.dot3.f32(i32 55, float %5462, float %5463, float %5387, float %5462, float %5463, float %5387)  ; Dot3(ax,ay,az,bx,by,bz)
  %5475 = call float @dx.op.unary.f32(i32 25, float %5474)  ; Rsqrt(value)
  %5476 = fmul fast float %5475, %5462
  %5477 = fmul fast float %5475, %5463
  %5478 = fmul fast float %5475, %5387
  %5479 = fmul fast float %5473, %5473
  %5480 = fsub fast float 1.000000e+00, %5479
  %5481 = fmul fast float %5470, 0x40005F8BE0000000
  %5482 = fsub fast float 0x400C5BF8A0000000, %5481
  %5483 = fdiv fast float %5471, %5482
  %5484 = fmul fast float %5483, 0x3FEE31C3C0000000
  %5485 = fmul fast float %5484, %5480
  %5486 = fmul fast float %5470, 0x3FDACB7480000000
  %5487 = fadd fast float %5486, 0xBFD7347680000000
  %5488 = fmul fast float %5487, %5483
  %5489 = fmul fast float %5488, %5480
  br label %5490

; <label>:5490                                    ; preds = %5461, %5434
  %5491 = phi float [ %5476, %5461 ], [ 0.000000e+00, %5434 ]
  %5492 = phi float [ %5477, %5461 ], [ 0.000000e+00, %5434 ]
  %5493 = phi float [ %5478, %5461 ], [ 0.000000e+00, %5434 ]
  %5494 = phi float [ %5485, %5461 ], [ 0.000000e+00, %5434 ]
  %5495 = phi float [ %5489, %5461 ], [ 0.000000e+00, %5434 ]
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5491, float %5492, float %5493, float %4743, float %4744, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = fmul fast float %5496, %5496
  %5498 = fmul fast float %5497, 0x3FEE471020000000
  %5499 = fadd fast float %5498, 0xBFD42F6020000000
  %5500 = fmul fast float %5456, 0x3FD20DD760000000
  %5501 = fmul fast float %5499, %5495
  %5502 = fmul fast float %5494, 0x3FDF454380000000
  %5503 = fmul fast float %5502, %5496
  %5504 = fadd fast float %5503, %5500
  %5505 = fadd fast float %5504, %5501
  %5506 = call float @dx.op.dot3.f32(i32 55, float %5491, float %5492, float %5493, float %4759, float %4760, float %4761)  ; Dot3(ax,ay,az,bx,by,bz)
  %5507 = fmul fast float %5506, 0x3FDF454380000000
  %5508 = fmul fast float %5506, %5506
  %5509 = fmul fast float %5508, 0x3FEE471020000000
  %5510 = fadd fast float %5509, 0xBFD42F6020000000
  %5511 = call float @dx.op.dot3.f32(i32 55, float %5456, float %5494, float %5495, float 0x3FD20DD760000000, float %5507, float %5510)  ; Dot3(ax,ay,az,bx,by,bz)
  %5512 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5372)  ; FMax(a,b)
  %5513 = call float @dx.op.dot3.f32(i32 55, float %5393, float %5396, float %5399, float %5393, float %5396, float %5399)  ; Dot3(ax,ay,az,bx,by,bz)
  %5514 = fcmp fast oeq float %5513, 0.000000e+00
  %5515 = fcmp fast oeq float %5512, 0.000000e+00
  %5516 = or i1 %5515, %5514
  br i1 %5516, label %5546, label %5517

; <label>:5517                                    ; preds = %5490
  %5518 = fsub fast float -0.000000e+00, %5399
  %5519 = fsub fast float -0.000000e+00, %5393
  %5520 = call float @dx.op.unary.f32(i32 24, float %5513)  ; Sqrt(value)
  %5521 = fdiv fast float %5520, %5512
  %5522 = fcmp fast ogt float %5521, 0x3FFB6F8900000000
  %5523 = select i1 %5522, float 0x3FFB6F8900000000, float %5521
  %5524 = fmul fast float %5523, 0x3FE8A23460000000
  %5525 = call float @dx.op.unary.f32(i32 7, float %5524)  ; Saturate(value)
  %5526 = call float @dx.op.binary.f32(i32 35, float %5523, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5527 = fmul fast float %5525, %5512
  %5528 = fmul fast float %5526, 0x3FF279A740000000
  %5529 = fadd fast float %5528, -1.000000e+00
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5518, float %5519, float %5396, float %5518, float %5519, float %5396)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = call float @dx.op.unary.f32(i32 25, float %5530)  ; Rsqrt(value)
  %5532 = fmul fast float %5531, %5518
  %5533 = fmul fast float %5531, %5519
  %5534 = fmul fast float %5531, %5396
  %5535 = fmul fast float %5529, %5529
  %5536 = fsub fast float 1.000000e+00, %5535
  %5537 = fmul fast float %5526, 0x40005F8BE0000000
  %5538 = fsub fast float 0x400C5BF8A0000000, %5537
  %5539 = fdiv fast float %5527, %5538
  %5540 = fmul fast float %5539, 0x3FEE31C3C0000000
  %5541 = fmul fast float %5540, %5536
  %5542 = fmul fast float %5526, 0x3FDACB7480000000
  %5543 = fadd fast float %5542, 0xBFD7347680000000
  %5544 = fmul fast float %5543, %5539
  %5545 = fmul fast float %5544, %5536
  br label %5546

; <label>:5546                                    ; preds = %5517, %5490
  %5547 = phi float [ %5532, %5517 ], [ 0.000000e+00, %5490 ]
  %5548 = phi float [ %5533, %5517 ], [ 0.000000e+00, %5490 ]
  %5549 = phi float [ %5534, %5517 ], [ 0.000000e+00, %5490 ]
  %5550 = phi float [ %5541, %5517 ], [ 0.000000e+00, %5490 ]
  %5551 = phi float [ %5545, %5517 ], [ 0.000000e+00, %5490 ]
  %5552 = call float @dx.op.dot3.f32(i32 55, float %5547, float %5548, float %5549, float %4743, float %4744, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %5553 = fmul fast float %5552, %5552
  %5554 = fmul fast float %5553, 0x3FEE471020000000
  %5555 = fadd fast float %5554, 0xBFD42F6020000000
  %5556 = fmul fast float %5512, 0x3FD20DD760000000
  %5557 = fmul fast float %5555, %5551
  %5558 = fmul fast float %5550, 0x3FDF454380000000
  %5559 = fmul fast float %5558, %5552
  %5560 = fadd fast float %5559, %5556
  %5561 = fadd fast float %5560, %5557
  %5562 = call float @dx.op.dot3.f32(i32 55, float %5547, float %5548, float %5549, float %4759, float %4760, float %4761)  ; Dot3(ax,ay,az,bx,by,bz)
  %5563 = fmul fast float %5562, 0x3FDF454380000000
  %5564 = fmul fast float %5562, %5562
  %5565 = fmul fast float %5564, 0x3FEE471020000000
  %5566 = fadd fast float %5565, 0xBFD42F6020000000
  %5567 = call float @dx.op.dot3.f32(i32 55, float %5512, float %5550, float %5551, float 0x3FD20DD760000000, float %5563, float %5566)  ; Dot3(ax,ay,az,bx,by,bz)
  %5568 = call float @dx.op.binary.f32(i32 35, float %5449, float 0.000000e+00)  ; FMax(a,b)
  %5569 = call float @dx.op.binary.f32(i32 35, float %5505, float 0.000000e+00)  ; FMax(a,b)
  %5570 = call float @dx.op.binary.f32(i32 35, float %5561, float 0.000000e+00)  ; FMax(a,b)
  %5571 = call float @dx.op.binary.f32(i32 35, float %5455, float 0.000000e+00)  ; FMax(a,b)
  %5572 = call float @dx.op.binary.f32(i32 35, float %5511, float 0.000000e+00)  ; FMax(a,b)
  %5573 = call float @dx.op.binary.f32(i32 35, float %5567, float 0.000000e+00)  ; FMax(a,b)
  %5574 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5575 = extractvalue %dx.types.CBufRet.f32 %5574, 0
  %5576 = call float @dx.op.binary.f32(i32 36, float %4740, float %5575)  ; FMin(a,b)
  %5577 = fsub fast float 1.000000e+00, %4762
  %5578 = fmul fast float %5576, %5577
  %5579 = fsub fast float 1.000000e+00, %5578
  %5580 = bitcast float %5579 to i32
  %5581 = sub nsw i32 2129859010, %5580
  %5582 = bitcast i32 %5581 to float
  %5583 = call float @dx.op.binary.f32(i32 36, float %4741, float %5575)  ; FMin(a,b)
  %5584 = fmul fast float %5583, %5577
  %5585 = fsub fast float 1.000000e+00, %5584
  %5586 = bitcast float %5585 to i32
  %5587 = sub nsw i32 2129859010, %5586
  %5588 = bitcast i32 %5587 to float
  %5589 = call float @dx.op.binary.f32(i32 36, float %4742, float %5575)  ; FMin(a,b)
  %5590 = fmul fast float %5589, %5577
  %5591 = fsub fast float 1.000000e+00, %5590
  %5592 = bitcast float %5591 to i32
  %5593 = sub nsw i32 2129859010, %5592
  %5594 = bitcast i32 %5593 to float
  %5595 = fmul fast float %5568, %4762
  %5596 = fmul fast float %5595, %5582
  %5597 = fmul fast float %5569, %4762
  %5598 = fmul fast float %5597, %5588
  %5599 = fmul fast float %5570, %4762
  %5600 = fmul fast float %5599, %5594
  %5601 = call float @dx.op.binary.f32(i32 36, float %4746, float %5575)  ; FMin(a,b)
  %5602 = fmul fast float %5601, %5577
  %5603 = fsub fast float 1.000000e+00, %5602
  %5604 = bitcast float %5603 to i32
  %5605 = sub nsw i32 2129859010, %5604
  %5606 = bitcast i32 %5605 to float
  %5607 = call float @dx.op.binary.f32(i32 36, float %4747, float %5575)  ; FMin(a,b)
  %5608 = fmul fast float %5607, %5577
  %5609 = fsub fast float 1.000000e+00, %5608
  %5610 = bitcast float %5609 to i32
  %5611 = sub nsw i32 2129859010, %5610
  %5612 = bitcast i32 %5611 to float
  %5613 = call float @dx.op.binary.f32(i32 36, float %4751, float %5575)  ; FMin(a,b)
  %5614 = fmul fast float %5613, %5577
  %5615 = fsub fast float 1.000000e+00, %5614
  %5616 = bitcast float %5615 to i32
  %5617 = sub nsw i32 2129859010, %5616
  %5618 = bitcast i32 %5617 to float
  %5619 = fmul fast float %5571, %4762
  %5620 = fmul fast float %5619, %5606
  %5621 = fmul fast float %5572, %4762
  %5622 = fmul fast float %5621, %5612
  %5623 = fmul fast float %5573, %4762
  %5624 = fmul fast float %5623, %5618
  %5625 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5598, float %5600, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5626 = select i1 %163, float 0.000000e+00, float %5596
  %5627 = select i1 %163, float %5625, float %5598
  %5628 = select i1 %163, float 0.000000e+00, float %5600
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5620, float %5622, float %5624, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = select i1 %163, float 0.000000e+00, float %5620
  %5631 = select i1 %163, float %5629, float %5622
  %5632 = select i1 %163, float 0.000000e+00, float %5624
  %5633 = fmul fast float %4753, 9.843750e-01
  %5634 = fmul fast float %4749, 9.843750e-01
  %5635 = fadd fast float %5633, 7.812500e-03
  %5636 = fadd fast float %5634, 7.812500e-03
  %5637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %5635, float %5636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5638 = extractvalue %dx.types.ResRet.f32 %5637, 2
  %5639 = extractvalue %dx.types.ResRet.f32 %5637, 3
  %5640 = fmul fast float %5638, %4746
  %5641 = fmul fast float %5638, %4747
  %5642 = fmul fast float %5638, %4751
  %5643 = fadd fast float %5640, %5639
  %5644 = fadd fast float %5641, %5639
  %5645 = fadd fast float %5642, %5639
  %5646 = fcmp fast ogt float %4138, 0.000000e+00
  br i1 %5646, label %5647, label %5673

; <label>:5647                                    ; preds = %5546
  %5648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4138, float %4753, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5649 = extractvalue %dx.types.ResRet.f32 %5648, 0
  %5650 = extractvalue %dx.types.ResRet.f32 %5648, 1
  %5651 = extractvalue %dx.types.ResRet.f32 %5648, 2
  %5652 = fadd fast float %5649, -5.000000e-01
  %5653 = fadd fast float %5650, -5.000000e-01
  %5654 = fadd fast float %5651, -5.000000e-01
  %5655 = fsub fast float 1.000000e+00, %4746
  %5656 = fsub fast float 1.000000e+00, %4747
  %5657 = fsub fast float 1.000000e+00, %4751
  %5658 = fmul fast float %4746, 4.000000e+00
  %5659 = fmul fast float %5658, %5655
  %5660 = fmul fast float %5659, %5652
  %5661 = fmul fast float %4747, 4.000000e+00
  %5662 = fmul fast float %5661, %5656
  %5663 = fmul fast float %5662, %5653
  %5664 = fmul fast float %4751, 4.000000e+00
  %5665 = fmul fast float %5664, %5657
  %5666 = fmul fast float %5665, %5654
  %5667 = fadd fast float %5660, %5643
  %5668 = fadd fast float %5663, %5644
  %5669 = fadd fast float %5666, %5645
  %5670 = call float @dx.op.unary.f32(i32 7, float %5667)  ; Saturate(value)
  %5671 = call float @dx.op.unary.f32(i32 7, float %5668)  ; Saturate(value)
  %5672 = call float @dx.op.unary.f32(i32 7, float %5669)  ; Saturate(value)
  br label %5673

; <label>:5673                                    ; preds = %5647, %5546
  %5674 = phi float [ %5670, %5647 ], [ %5643, %5546 ]
  %5675 = phi float [ %5671, %5647 ], [ %5644, %5546 ]
  %5676 = phi float [ %5672, %5647 ], [ %5645, %5546 ]
  %5677 = call float @dx.op.binary.f32(i32 35, float %5675, float %5676)  ; FMax(a,b)
  %5678 = call float @dx.op.binary.f32(i32 35, float %5674, float %5677)  ; FMax(a,b)
  %5679 = fsub fast float 1.000000e+00, %5678
  %5680 = fmul fast float %5679, %5626
  %5681 = fmul fast float %5679, %5627
  %5682 = fmul fast float %5679, %5628
  %5683 = call float @dx.op.dot3.f32(i32 55, float %4740, float %4741, float %4742, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5684 = fcmp fast ogt float %5683, 0x3E7FF19E20000000
  %5685 = fdiv fast float 1.000000e+00, %5683
  %5686 = select i1 %5684, float %5685, float 0.000000e+00
  %5687 = fmul fast float %5686, %4740
  %5688 = fmul fast float %5686, %4741
  %5689 = fmul fast float %5686, %4742
  %5690 = fadd fast float %5687, -1.000000e+00
  %5691 = fadd fast float %5688, -1.000000e+00
  %5692 = fadd fast float %5689, -1.000000e+00
  %5693 = fmul fast float %5690, 5.000000e-01
  %5694 = fmul fast float %5691, 5.000000e-01
  %5695 = fmul fast float %5692, 5.000000e-01
  %5696 = fadd fast float %5693, 1.000000e+00
  %5697 = fadd fast float %5694, 1.000000e+00
  %5698 = fadd fast float %5695, 1.000000e+00
  %5699 = fmul fast float %5674, %5630
  %5700 = fmul fast float %5675, %5631
  %5701 = fmul fast float %5676, %5632
  %5702 = fsub fast float 1.000000e+00, %4753
  %5703 = bitcast float %5702 to i32
  %5704 = sitofp i32 %5703 to float
  %5705 = fmul fast float %5704, 5.000000e+00
  %5706 = fadd fast float %5705, 0xC1EFBF8940000000
  %5707 = fptosi float %5706 to i32
  %5708 = bitcast i32 %5707 to float
  %5709 = fmul fast float %5708, %4139
  %5710 = fmul fast float %5626, %5709
  %5711 = fmul fast float %5710, %5679
  %5712 = fmul fast float %5711, %5696
  %5713 = fmul fast float %5627, %5709
  %5714 = fmul fast float %5713, %5679
  %5715 = fmul fast float %5714, %5697
  %5716 = fmul fast float %5628, %5709
  %5717 = fmul fast float %5716, %5679
  %5718 = fmul fast float %5717, %5698
  %5719 = fmul fast float %5680, %4135
  %5720 = fmul fast float %5681, %4135
  %5721 = fmul fast float %5682, %4135
  %5722 = fadd fast float %5699, %4131
  %5723 = fadd fast float %5722, %5712
  %5724 = fmul fast float %5723, %4135
  %5725 = fadd fast float %5700, %4132
  %5726 = fadd fast float %5725, %5715
  %5727 = fmul fast float %5726, %4135
  %5728 = fadd fast float %5701, %4133
  %5729 = fadd fast float %5728, %5718
  %5730 = fmul fast float %5729, %4135
  %5731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5732 = extractvalue %dx.types.CBufRet.f32 %5731, 3
  %5733 = fcmp fast oeq float %5732, 0.000000e+00
  br i1 %5733, label %5961, label %5734

; <label>:5734                                    ; preds = %5673
  %5735 = extractvalue %dx.types.CBufRet.f32 %5731, 0
  %5736 = extractvalue %dx.types.CBufRet.f32 %5731, 1
  %5737 = extractvalue %dx.types.CBufRet.f32 %5731, 2
  %5738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5739 = extractvalue %dx.types.CBufRet.f32 %5738, 0
  %5740 = extractvalue %dx.types.CBufRet.f32 %5738, 1
  %5741 = extractvalue %dx.types.CBufRet.f32 %5738, 2
  %5742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5743 = extractvalue %dx.types.CBufRet.f32 %5742, 0
  %5744 = extractvalue %dx.types.CBufRet.f32 %5742, 1
  %5745 = call float @dx.op.dot3.f32(i32 55, float %5739, float %5740, float %5741, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5746 = select i1 %163, float %5743, float %5739
  %5747 = select i1 %163, float %5745, float %5740
  %5748 = select i1 %163, float %5744, float %5741
  %5749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.f32 %5749, 1
  %5751 = fcmp fast une float %5750, 0.000000e+00
  br i1 %5751, label %5752, label %5769

; <label>:5752                                    ; preds = %5734
  %5753 = fptoui float %66 to i32
  %5754 = fptoui float %67 to i32
  %5755 = lshr i32 %5753, 4
  %5756 = lshr i32 %5754, 4
  %5757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5758 = extractvalue %dx.types.CBufRet.f32 %5757, 0
  %5759 = fptoui float %5758 to i32
  %5760 = add i32 %5759, 15
  %5761 = lshr i32 %5760, 4
  %5762 = mul i32 %5761, %5756
  %5763 = add i32 %5762, %5755
  %5764 = shl i32 %5763, 3
  %5765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5764, i32 undef)  ; BufferLoad(srv,index,wot)
  %5766 = extractvalue %dx.types.ResRet.i32 %5765, 0
  %5767 = and i32 %5766, -268435456
  %5768 = icmp eq i32 %5767, -1342177280
  br i1 %5768, label %5779, label %5769

; <label>:5769                                    ; preds = %5752, %5734
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 2
  %5772 = extractvalue %dx.types.CBufRet.f32 %5770, 3
  %5773 = fmul fast float %5771, %66
  %5774 = fmul fast float %5772, %67
  %5775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %5773, float %5774, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5776 = extractvalue %dx.types.ResRet.f32 %5775, 0
  %5777 = extractvalue %dx.types.ResRet.f32 %5775, 1
  %5778 = extractvalue %dx.types.ResRet.f32 %5775, 2
  br label %5779

; <label>:5779                                    ; preds = %5769, %5752
  %5780 = phi float [ %5776, %5769 ], [ 0.000000e+00, %5752 ]
  %5781 = phi float [ %5777, %5769 ], [ 0.000000e+00, %5752 ]
  %5782 = phi float [ %5778, %5769 ], [ 0.000000e+00, %5752 ]
  %5783 = call float @dx.op.binary.f32(i32 36, float %5781, float %5782)  ; FMin(a,b)
  %5784 = call float @dx.op.binary.f32(i32 36, float %5780, float %5783)  ; FMin(a,b)
  %5785 = fcmp fast ogt float %5784, 0.000000e+00
  br i1 %5785, label %5786, label %5961, !dx.controlflow.hints !77

; <label>:5786                                    ; preds = %5779
  %5787 = fmul fast float %5780, %5746
  %5788 = fmul fast float %5781, %5747
  %5789 = fmul fast float %5782, %5748
  %5790 = fsub fast float %5735, %4739
  %5791 = fsub fast float %5736, %4738
  %5792 = fsub fast float %5737, %4737
  %5793 = call float @dx.op.dot3.f32(i32 55, float %5790, float %5791, float %5792, float %5790, float %5791, float %5792)  ; Dot3(ax,ay,az,bx,by,bz)
  %5794 = call float @dx.op.unary.f32(i32 25, float %5793)  ; Rsqrt(value)
  %5795 = fmul fast float %5794, %5790
  %5796 = fmul fast float %5794, %5791
  %5797 = fmul fast float %5794, %5792
  %5798 = call float @dx.op.dot3.f32(i32 55, float %5735, float %5736, float %5737, float %4743, float %4744, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %5799 = call float @dx.op.dot3.f32(i32 55, float %4736, float %4735, float %4734, float %5795, float %5796, float %5797)  ; Dot3(ax,ay,az,bx,by,bz)
  %5800 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5801 = fmul fast float %5800, %5800
  %5802 = fmul fast float %5801, %4766
  %5803 = call float @dx.op.unary.f32(i32 7, float %5802)  ; Saturate(value)
  %5804 = fmul fast float %5803, %5800
  %5805 = call float @dx.op.dot3.f32(i32 55, float %4743, float %4744, float %4745, float %5795, float %5796, float %5797)  ; Dot3(ax,ay,az,bx,by,bz)
  %5806 = fmul fast float %5805, %5805
  %5807 = call float @dx.op.unary.f32(i32 6, float %5798)  ; FAbs(value)
  %5808 = fsub fast float 1.000000e+00, %4749
  %5809 = call float @dx.op.binary.f32(i32 35, float %5808, float 0x3F847AE140000000)  ; FMax(a,b)
  %5810 = fmul fast float %5809, %5809
  %5811 = fmul fast float %5810, %5810
  %5812 = fsub fast float 1.000000e+00, %5811
  %5813 = fmul fast float %4753, %4753
  %5814 = fmul fast float %5813, %5812
  %5815 = fadd fast float %5814, %5811
  %5816 = bitcast float %5815 to i32
  %5817 = ashr i32 %5816, 1
  %5818 = add nsw i32 %5817, 532487669
  %5819 = bitcast i32 %5818 to float
  %5820 = fadd fast float %5819, %4753
  %5821 = fmul fast float %5811, %5806
  %5822 = fsub fast float 1.000000e+00, %5806
  %5823 = fadd fast float %5822, %5821
  %5824 = fmul fast float %5807, %5807
  %5825 = fmul fast float %5824, %5812
  %5826 = fadd fast float %5825, %5811
  %5827 = bitcast float %5826 to i32
  %5828 = ashr i32 %5827, 1
  %5829 = add nsw i32 %5828, 532487669
  %5830 = bitcast i32 %5829 to float
  %5831 = fadd fast float %5830, %5807
  %5832 = fmul fast float %5823, %5823
  %5833 = fmul fast float %5832, %5820
  %5834 = fmul fast float %5833, %5831
  %5835 = fdiv fast float 0x3FF0A00000000000, %5834
  %5836 = fmul fast float %5835, %5811
  %5837 = call float @dx.op.unary.f32(i32 6, float %5799)  ; FAbs(value)
  %5838 = fsub fast float 1.000000e+00, %5837
  %5839 = bitcast float %5838 to i32
  %5840 = sitofp i32 %5839 to float
  %5841 = fmul fast float %5840, 5.000000e+00
  %5842 = fadd fast float %5841, 0xC1EFBF8940000000
  %5843 = fptosi float %5842 to i32
  %5844 = bitcast i32 %5843 to float
  %5845 = fsub fast float 1.000000e+00, %4746
  %5846 = fsub fast float 1.000000e+00, %4747
  %5847 = fsub fast float 1.000000e+00, %4751
  %5848 = fmul fast float %5844, %5845
  %5849 = fmul fast float %5844, %5846
  %5850 = fmul fast float %5844, %5847
  %5851 = fadd fast float %5848, %4746
  %5852 = fadd fast float %5849, %4747
  %5853 = fadd fast float %5850, %4751
  br i1 %5646, label %5854, label %5877

; <label>:5854                                    ; preds = %5786
  %5855 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4138, float %5837, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5856 = extractvalue %dx.types.ResRet.f32 %5855, 0
  %5857 = extractvalue %dx.types.ResRet.f32 %5855, 1
  %5858 = extractvalue %dx.types.ResRet.f32 %5855, 2
  %5859 = fadd fast float %5856, -5.000000e-01
  %5860 = fadd fast float %5857, -5.000000e-01
  %5861 = fadd fast float %5858, -5.000000e-01
  %5862 = fmul fast float %4746, 4.000000e+00
  %5863 = fmul fast float %5862, %5845
  %5864 = fmul fast float %5863, %5859
  %5865 = fmul fast float %4747, 4.000000e+00
  %5866 = fmul fast float %5865, %5846
  %5867 = fmul fast float %5866, %5860
  %5868 = fmul fast float %4751, 4.000000e+00
  %5869 = fmul fast float %5868, %5847
  %5870 = fmul fast float %5869, %5861
  %5871 = fadd fast float %5864, %5851
  %5872 = fadd fast float %5867, %5852
  %5873 = fadd fast float %5870, %5853
  %5874 = call float @dx.op.unary.f32(i32 7, float %5871)  ; Saturate(value)
  %5875 = call float @dx.op.unary.f32(i32 7, float %5872)  ; Saturate(value)
  %5876 = call float @dx.op.unary.f32(i32 7, float %5873)  ; Saturate(value)
  br label %5877

; <label>:5877                                    ; preds = %5854, %5786
  %5878 = phi float [ %5874, %5854 ], [ %5851, %5786 ]
  %5879 = phi float [ %5875, %5854 ], [ %5852, %5786 ]
  %5880 = phi float [ %5876, %5854 ], [ %5853, %5786 ]
  %5881 = fmul fast float %5798, 9.843750e-01
  %5882 = fadd fast float %5881, 7.812500e-03
  %5883 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %5882, float %5636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5884 = extractvalue %dx.types.ResRet.f32 %5883, 2
  %5885 = extractvalue %dx.types.ResRet.f32 %5883, 3
  %5886 = fmul fast float %5884, %4746
  %5887 = fmul fast float %5884, %4747
  %5888 = fmul fast float %5884, %4751
  %5889 = fadd fast float %5886, %5885
  %5890 = fadd fast float %5887, %5885
  %5891 = fadd fast float %5888, %5885
  br i1 %5646, label %5892, label %5915

; <label>:5892                                    ; preds = %5877
  %5893 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4138, float %5798, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5894 = extractvalue %dx.types.ResRet.f32 %5893, 0
  %5895 = extractvalue %dx.types.ResRet.f32 %5893, 1
  %5896 = extractvalue %dx.types.ResRet.f32 %5893, 2
  %5897 = fadd fast float %5894, -5.000000e-01
  %5898 = fadd fast float %5895, -5.000000e-01
  %5899 = fadd fast float %5896, -5.000000e-01
  %5900 = fmul fast float %4746, 4.000000e+00
  %5901 = fmul fast float %5900, %5845
  %5902 = fmul fast float %5901, %5897
  %5903 = fmul fast float %4747, 4.000000e+00
  %5904 = fmul fast float %5903, %5846
  %5905 = fmul fast float %5904, %5898
  %5906 = fmul fast float %4751, 4.000000e+00
  %5907 = fmul fast float %5906, %5847
  %5908 = fmul fast float %5907, %5899
  %5909 = fadd fast float %5902, %5889
  %5910 = fadd fast float %5905, %5890
  %5911 = fadd fast float %5908, %5891
  %5912 = call float @dx.op.unary.f32(i32 7, float %5909)  ; Saturate(value)
  %5913 = call float @dx.op.unary.f32(i32 7, float %5910)  ; Saturate(value)
  %5914 = call float @dx.op.unary.f32(i32 7, float %5911)  ; Saturate(value)
  br label %5915

; <label>:5915                                    ; preds = %5892, %5877
  %5916 = phi float [ %5912, %5892 ], [ %5889, %5877 ]
  %5917 = phi float [ %5913, %5892 ], [ %5890, %5877 ]
  %5918 = phi float [ %5914, %5892 ], [ %5891, %5877 ]
  %5919 = call float @dx.op.binary.f32(i32 35, float %5917, float %5918)  ; FMax(a,b)
  %5920 = call float @dx.op.binary.f32(i32 35, float %5916, float %5919)  ; FMax(a,b)
  %5921 = fsub fast float 1.000000e+00, %5920
  %5922 = fmul fast float %5878, %5836
  %5923 = fmul fast float %5879, %5836
  %5924 = fmul fast float %5880, %5836
  %5925 = fsub fast float 1.000000e+00, %5799
  %5926 = bitcast float %5925 to i32
  %5927 = sitofp i32 %5926 to float
  %5928 = fmul fast float %5927, 5.000000e+00
  %5929 = fadd fast float %5928, 0xC1EFBF8940000000
  %5930 = fptosi float %5929 to i32
  %5931 = bitcast i32 %5930 to float
  %5932 = fmul fast float %5931, %4139
  %5933 = fmul fast float %5921, %5932
  %5934 = fmul fast float %5933, %5696
  %5935 = fmul fast float %5933, %5697
  %5936 = fmul fast float %5933, %5698
  %5937 = fadd fast float %5934, %5922
  %5938 = fadd fast float %5935, %5923
  %5939 = fadd fast float %5936, %5924
  %5940 = fmul fast float %5804, %5787
  %5941 = fmul fast float %5940, %5921
  %5942 = fmul fast float %5804, %5788
  %5943 = fmul fast float %5942, %5921
  %5944 = fmul fast float %5804, %5789
  %5945 = fmul fast float %5944, %5921
  %5946 = fmul fast float %5940, %5937
  %5947 = fmul fast float %5942, %5938
  %5948 = fmul fast float %5944, %5939
  %5949 = fadd fast float %5941, %5680
  %5950 = fmul fast float %5949, %4135
  %5951 = fadd fast float %5943, %5681
  %5952 = fmul fast float %5951, %4135
  %5953 = fadd fast float %5945, %5682
  %5954 = fmul fast float %5953, %4135
  %5955 = fadd fast float %5946, %5723
  %5956 = fmul fast float %5955, %4135
  %5957 = fadd fast float %5947, %5726
  %5958 = fmul fast float %5957, %4135
  %5959 = fadd fast float %5948, %5729
  %5960 = fmul fast float %5959, %4135
  br label %5961

; <label>:5961                                    ; preds = %5915, %5779, %5673
  %5962 = phi float [ %5724, %5673 ], [ %5724, %5779 ], [ %5956, %5915 ]
  %5963 = phi float [ %5727, %5673 ], [ %5727, %5779 ], [ %5958, %5915 ]
  %5964 = phi float [ %5730, %5673 ], [ %5730, %5779 ], [ %5960, %5915 ]
  %5965 = phi float [ %5719, %5673 ], [ %5719, %5779 ], [ %5950, %5915 ]
  %5966 = phi float [ %5720, %5673 ], [ %5720, %5779 ], [ %5952, %5915 ]
  %5967 = phi float [ %5721, %5673 ], [ %5721, %5779 ], [ %5954, %5915 ]
  %5968 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5969 = extractvalue %dx.types.CBufRet.i32 %5968, 0
  %5970 = icmp eq i32 %5969, 0
  br i1 %5970, label %6405, label %5971

; <label>:5971                                    ; preds = %5961
  %5972 = fptoui float %66 to i32
  %5973 = fptoui float %67 to i32
  %5974 = lshr i32 %5972, 4
  %5975 = lshr i32 %5973, 4
  %5976 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5977 = extractvalue %dx.types.CBufRet.i32 %5976, 0
  %5978 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5975, i32 %5977, i32 %5974)  ; UMad(a,b,c)
  %5979 = add nsw i32 %5969, -1
  %5980 = call i32 @dx.op.binary.i32(i32 37, i32 %5979, i32 0)  ; IMax(a,b)
  %5981 = call float @dx.op.binary.f32(i32 35, float %61, float 0.000000e+00)  ; FMax(a,b)
  %5982 = fptoui float %5981 to i32
  %5983 = lshr i32 %5982, 5
  %5984 = call i32 @dx.op.binary.i32(i32 40, i32 %5983, i32 8191)  ; UMin(a,b)
  %5985 = shl i32 %5984, 2
  %5986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5985, i32 undef)  ; BufferLoad(srv,index,wot)
  %5987 = extractvalue %dx.types.ResRet.i32 %5986, 0
  %5988 = lshr i32 %5987, 16
  %5989 = and i32 %5987, 65535
  %5990 = lshr i32 %5987, 21
  %5991 = lshr i32 %5989, 5
  %5992 = call i32 @dx.op.binary.i32(i32 40, i32 %5991, i32 %5980)  ; UMin(a,b)
  %5993 = icmp ugt i32 %5990, %5992
  br i1 %5993, label %6405, label %5994

; <label>:5994                                    ; preds = %5971
  br label %5995

; <label>:5995                                    ; preds = %6395, %5994
  %5996 = phi i32 [ %6402, %6395 ], [ %5990, %5994 ]
  %5997 = phi float [ %6396, %6395 ], [ %5962, %5994 ]
  %5998 = phi float [ %6397, %6395 ], [ %5963, %5994 ]
  %5999 = phi float [ %6398, %6395 ], [ %5964, %5994 ]
  %6000 = phi float [ %6399, %6395 ], [ %5965, %5994 ]
  %6001 = phi float [ %6400, %6395 ], [ %5966, %5994 ]
  %6002 = phi float [ %6401, %6395 ], [ %5967, %5994 ]
  %6003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6004 = extractvalue %dx.types.CBufRet.i32 %6003, 0
  %6005 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5978, i32 %6004, i32 %5996)  ; UMad(a,b,c)
  %6006 = shl i32 %6005, 2
  %6007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6006, i32 undef)  ; BufferLoad(srv,index,wot)
  %6008 = extractvalue %dx.types.ResRet.i32 %6007, 0
  %6009 = shl i32 %5996, 5
  %6010 = sub nsw i32 %5988, %6009
  %6011 = call i32 @dx.op.binary.i32(i32 37, i32 %6010, i32 0)  ; IMax(a,b)
  %6012 = call i32 @dx.op.binary.i32(i32 38, i32 %6011, i32 31)  ; IMin(a,b)
  %6013 = sub nsw i32 1, %5988
  %6014 = add nsw i32 %6013, %5989
  %6015 = call i32 @dx.op.binary.i32(i32 37, i32 %6014, i32 0)  ; IMax(a,b)
  %6016 = call i32 @dx.op.binary.i32(i32 38, i32 %6015, i32 32)  ; IMin(a,b)
  %6017 = and i32 %6016, 31
  %6018 = shl i32 -1, %6017
  %6019 = xor i32 %6018, -1
  %6020 = and i32 %6012, 31
  %6021 = shl i32 %6019, %6020
  %6022 = icmp eq i32 %6016, 32
  %6023 = select i1 %6022, i32 -1, i32 %6021
  %6024 = and i32 %6023, %6008
  %6025 = icmp eq i32 %6024, 0
  br i1 %6025, label %6395, label %6026

; <label>:6026                                    ; preds = %5995
  br label %6027

; <label>:6027                                    ; preds = %6107, %6026
  %6028 = phi i32 [ %6039, %6107 ], [ %6024, %6026 ]
  %6029 = phi float [ %6108, %6107 ], [ %5997, %6026 ]
  %6030 = phi float [ %6109, %6107 ], [ %5998, %6026 ]
  %6031 = phi float [ %6110, %6107 ], [ %5999, %6026 ]
  %6032 = phi float [ %6111, %6107 ], [ %6000, %6026 ]
  %6033 = phi float [ %6112, %6107 ], [ %6001, %6026 ]
  %6034 = phi float [ %6113, %6107 ], [ %6002, %6026 ]
  %6035 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6028)  ; FirstbitLo(value)
  %6036 = add i32 %6035, %6009
  %6037 = and i32 %6035, 31
  %6038 = shl i32 1, %6037
  %6039 = xor i32 %6038, %6028
  %6040 = mul i32 %6036, 112
  %6041 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6040, i32 undef)  ; BufferLoad(srv,index,wot)
  %6042 = extractvalue %dx.types.ResRet.f32 %6041, 0
  %6043 = extractvalue %dx.types.ResRet.f32 %6041, 1
  %6044 = extractvalue %dx.types.ResRet.f32 %6041, 2
  %6045 = or i32 %6040, 12
  %6046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6045, i32 undef)  ; BufferLoad(srv,index,wot)
  %6047 = extractvalue %dx.types.ResRet.f32 %6046, 0
  %6048 = add i32 %6040, 44
  %6049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6048, i32 undef)  ; BufferLoad(srv,index,wot)
  %6050 = extractvalue %dx.types.ResRet.f32 %6049, 0
  %6051 = add i32 %6040, 48
  %6052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6051, i32 undef)  ; BufferLoad(srv,index,wot)
  %6053 = extractvalue %dx.types.ResRet.f32 %6052, 0
  %6054 = extractvalue %dx.types.ResRet.f32 %6052, 1
  %6055 = extractvalue %dx.types.ResRet.f32 %6052, 2
  %6056 = add i32 %6040, 80
  %6057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6056, i32 undef)  ; BufferLoad(srv,index,wot)
  %6058 = extractvalue %dx.types.ResRet.f32 %6057, 1
  %6059 = extractvalue %dx.types.ResRet.f32 %6057, 2
  %6060 = call float @dx.op.dot3.f32(i32 55, float %6042, float %6043, float %6044, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6061 = select i1 %163, float %6058, float %6042
  %6062 = select i1 %163, float %6060, float %6043
  %6063 = select i1 %163, float %6059, float %6044
  %6064 = fsub fast float %6053, %121
  %6065 = fsub fast float %6054, %122
  %6066 = fsub fast float %6055, %123
  %6067 = call float @dx.op.dot3.f32(i32 55, float %6064, float %6065, float %6066, float %6064, float %6065, float %6066)  ; Dot3(ax,ay,az,bx,by,bz)
  %6068 = call float @dx.op.unary.f32(i32 24, float %6067)  ; Sqrt(value)
  %6069 = fdiv fast float 1.000000e+00, %6068
  %6070 = fmul fast float %6069, %6064
  %6071 = fmul fast float %6069, %6065
  %6072 = fmul fast float %6069, %6066
  %6073 = fadd fast float %6068, %6047
  %6074 = fdiv fast float 1.000000e+00, %6073
  %6075 = fmul float %6050, %6074
  %6076 = fmul float %6075, %6075
  %6077 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6078 = and i32 %6038, %6024
  %6079 = icmp eq i32 %6078, 0
  br i1 %6079, label %6102, label %6080, !dx.controlflow.hints !78

; <label>:6080                                    ; preds = %6027
  %6081 = lshr i32 %5972, 5
  %6082 = lshr i32 %5973, 5
  %6083 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %6081, i32 %6082, i32 %6036, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6084 = extractvalue %dx.types.ResRet.i32 %6083, 0
  %6085 = and i32 %6084, 3
  %6086 = icmp eq i32 %6085, 0
  %6087 = select i1 %6086, float 1.000000e+00, float 0.000000e+00
  %6088 = icmp eq i32 %6085, 3
  br i1 %6088, label %6089, label %6102

; <label>:6089                                    ; preds = %6080
  %6090 = lshr i32 %6084, 10
  %6091 = and i32 %6090, 8160
  %6092 = and i32 %5973, 31
  %6093 = or i32 %6091, %6092
  %6094 = lshr i32 %6084, 1
  %6095 = and i32 %6094, 16352
  %6096 = and i32 %5972, 31
  %6097 = or i32 %6095, %6096
  %6098 = lshr i32 %6084, 23
  %6099 = and i32 %6098, 255
  %6100 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %6097, i32 %6093, i32 %6099, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6101 = extractvalue %dx.types.ResRet.f32 %6100, 0
  br label %6102

; <label>:6102                                    ; preds = %6089, %6080, %6027
  %6103 = phi float [ %6101, %6089 ], [ %6087, %6080 ], [ 0.000000e+00, %6027 ]
  %6104 = call float @dx.op.binary.f32(i32 36, float %6103, float %6103)  ; FMin(a,b)
  %6105 = call float @dx.op.binary.f32(i32 36, float %6103, float %6104)  ; FMin(a,b)
  %6106 = fcmp fast ogt float %6105, 0.000000e+00
  br i1 %6106, label %6115, label %6107, !dx.controlflow.hints !79

; <label>:6107                                    ; preds = %6351, %6102
  %6108 = phi float [ %6029, %6102 ], [ %6391, %6351 ]
  %6109 = phi float [ %6030, %6102 ], [ %6392, %6351 ]
  %6110 = phi float [ %6031, %6102 ], [ %6393, %6351 ]
  %6111 = phi float [ %6032, %6102 ], [ %6385, %6351 ]
  %6112 = phi float [ %6033, %6102 ], [ %6386, %6351 ]
  %6113 = phi float [ %6034, %6102 ], [ %6387, %6351 ]
  %6114 = icmp eq i32 %6028, %6038
  br i1 %6114, label %6394, label %6027

; <label>:6115                                    ; preds = %6102
  %6116 = fmul fast float %6103, %6061
  %6117 = fmul fast float %6103, %6062
  %6118 = fmul fast float %6103, %6063
  %6119 = fsub fast float %6055, %4539
  %6120 = fcmp fast ogt float %6119, 0.000000e+00
  %6121 = fsub fast float %123, %4539
  %6122 = fcmp fast ogt float %6121, 0.000000e+00
  %6123 = xor i1 %6122, %6120
  %6124 = fsub fast float %4539, %6055
  %6125 = fmul fast float %6124, 2.000000e+00
  %6126 = fadd fast float %6125, %6055
  %6127 = select i1 %6123, float %6055, float %6126
  %6128 = fsub fast float %6127, %123
  %6129 = call float @dx.op.dot3.f32(i32 55, float %6064, float %6065, float %6128, float %6064, float %6065, float %6128)  ; Dot3(ax,ay,az,bx,by,bz)
  %6130 = call float @dx.op.unary.f32(i32 25, float %6129)  ; Rsqrt(value)
  %6131 = fmul fast float %6130, %6064
  %6132 = fmul fast float %6130, %6065
  %6133 = fmul fast float %6130, %6128
  %6134 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4547)  ; Dot3(ax,ay,az,bx,by,bz)
  %6135 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6131, float %6132, float %6133)  ; Dot3(ax,ay,az,bx,by,bz)
  %6136 = fdiv fast float 1.000000e+00, %6135
  %6137 = fmul fast float %6136, %6134
  %6138 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6121, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6139 = fcmp fast ogt float %6138, 0.000000e+00
  %6140 = fcmp fast olt float %6138, 0.000000e+00
  %6141 = zext i1 %6139 to i32
  %6142 = zext i1 %6140 to i32
  %6143 = sub nsw i32 %6141, %6142
  %6144 = sitofp i32 %6143 to float
  %6145 = fsub fast float %6127, %4539
  %6146 = call float @dx.op.dot3.f32(i32 55, float %6064, float %6065, float %6145, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6147 = fcmp fast ogt float %6146, 0.000000e+00
  %6148 = fcmp fast olt float %6146, 0.000000e+00
  %6149 = zext i1 %6147 to i32
  %6150 = zext i1 %6148 to i32
  %6151 = sub nsw i32 %6149, %6150
  %6152 = sitofp i32 %6151 to float
  %6153 = fcmp fast une float %6144, %6152
  br i1 %6153, label %6154, label %6164

; <label>:6154                                    ; preds = %6115
  %6155 = fmul fast float %6137, %6133
  %6156 = fmul fast float %6137, %6132
  %6157 = fmul fast float %6137, %6131
  %6158 = fmul fast float %6157, %6157
  %6159 = fmul fast float %6156, %6156
  %6160 = fadd fast float %6158, %6159
  %6161 = fmul fast float %6155, %6155
  %6162 = fadd fast float %6160, %6161
  %6163 = call float @dx.op.unary.f32(i32 24, float %6162)  ; Sqrt(value)
  br label %6176

; <label>:6164                                    ; preds = %6115
  %6165 = icmp slt i32 %6143, 0
  br i1 %6165, label %6166, label %6176

; <label>:6166                                    ; preds = %6164
  %6167 = fsub fast float %121, %6053
  %6168 = fsub fast float %122, %6054
  %6169 = fsub fast float %123, %6127
  %6170 = fmul fast float %6167, %6167
  %6171 = fmul fast float %6168, %6168
  %6172 = fadd fast float %6170, %6171
  %6173 = fmul fast float %6169, %6169
  %6174 = fadd fast float %6172, %6173
  %6175 = call float @dx.op.unary.f32(i32 24, float %6174)  ; Sqrt(value)
  br label %6176

; <label>:6176                                    ; preds = %6166, %6164, %6154
  %6177 = phi float [ %6163, %6154 ], [ %6175, %6166 ], [ 0.000000e+00, %6164 ]
  %6178 = and i1 %6122, %6120
  %6179 = fsub fast float -0.000000e+00, %6177
  %6180 = select i1 %6178, float -0.000000e+00, float %6179
  %6181 = fmul fast float %4540, 0x3FF7154760000000
  %6182 = fmul fast float %6181, %6180
  %6183 = fmul fast float %4541, 0x3FF7154760000000
  %6184 = fmul fast float %6183, %6180
  %6185 = fmul fast float %4542, 0x3FF7154760000000
  %6186 = fmul fast float %6185, %6180
  %6187 = call float @dx.op.unary.f32(i32 21, float %6182)  ; Exp(value)
  %6188 = call float @dx.op.unary.f32(i32 21, float %6184)  ; Exp(value)
  %6189 = call float @dx.op.unary.f32(i32 21, float %6186)  ; Exp(value)
  %6190 = call float @dx.op.unary.f32(i32 7, float %6187)  ; Saturate(value)
  %6191 = call float @dx.op.unary.f32(i32 7, float %6188)  ; Saturate(value)
  %6192 = call float @dx.op.unary.f32(i32 7, float %6189)  ; Saturate(value)
  %6193 = fmul fast float %6116, %6190
  %6194 = fmul fast float %6117, %6191
  %6195 = fmul fast float %6118, %6192
  %6196 = fsub fast float %6070, %4739
  %6197 = fsub fast float %6071, %4738
  %6198 = fsub fast float %6072, %4737
  %6199 = call float @dx.op.dot3.f32(i32 55, float %6196, float %6197, float %6198, float %6196, float %6197, float %6198)  ; Dot3(ax,ay,az,bx,by,bz)
  %6200 = call float @dx.op.unary.f32(i32 25, float %6199)  ; Rsqrt(value)
  %6201 = fmul fast float %6200, %6196
  %6202 = fmul fast float %6200, %6197
  %6203 = fmul fast float %6200, %6198
  %6204 = call float @dx.op.dot3.f32(i32 55, float %6070, float %6071, float %6072, float %4743, float %4744, float %4745)  ; Dot3(ax,ay,az,bx,by,bz)
  %6205 = call float @dx.op.dot3.f32(i32 55, float %4736, float %4735, float %4734, float %6201, float %6202, float %6203)  ; Dot3(ax,ay,az,bx,by,bz)
  %6206 = call float @dx.op.unary.f32(i32 7, float %6204)  ; Saturate(value)
  %6207 = fmul fast float %6206, %6077
  %6208 = fmul fast float %6206, %6206
  %6209 = fmul fast float %6208, %4766
  %6210 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  %6211 = fmul fast float %6207, %6210
  %6212 = bitcast float %6067 to i32
  %6213 = ashr i32 %6212, 1
  %6214 = sub nsw i32 1597463007, %6213
  %6215 = bitcast i32 %6214 to float
  %6216 = fmul fast float %6215, %6064
  %6217 = fmul fast float %6215, %6065
  %6218 = fmul fast float %6215, %6066
  %6219 = fsub fast float %6216, %4739
  %6220 = fsub fast float %6217, %4738
  %6221 = fsub fast float %6218, %4737
  %6222 = call float @dx.op.dot3.f32(i32 55, float %6219, float %6220, float %6221, float %6219, float %6220, float %6221)  ; Dot3(ax,ay,az,bx,by,bz)
  %6223 = call float @dx.op.unary.f32(i32 25, float %6222)  ; Rsqrt(value)
  %6224 = fmul fast float %6219, %6223
  %6225 = fmul fast float %6220, %6223
  %6226 = fmul fast float %6221, %6223
  %6227 = call float @dx.op.dot3.f32(i32 55, float %4743, float %4744, float %4745, float %6224, float %6225, float %6226)  ; Dot3(ax,ay,az,bx,by,bz)
  %6228 = fmul fast float %6227, %6227
  %6229 = call float @dx.op.unary.f32(i32 6, float %6204)  ; FAbs(value)
  %6230 = fsub fast float 1.000000e+00, %4749
  %6231 = call float @dx.op.binary.f32(i32 35, float %6230, float 0x3F847AE140000000)  ; FMax(a,b)
  %6232 = fmul fast float %6231, %6231
  %6233 = fmul fast float %6232, %6232
  %6234 = fsub fast float 1.000000e+00, %6233
  %6235 = fmul fast float %4753, %4753
  %6236 = fmul fast float %6235, %6234
  %6237 = fadd fast float %6236, %6233
  %6238 = bitcast float %6237 to i32
  %6239 = ashr i32 %6238, 1
  %6240 = add nsw i32 %6239, 532487669
  %6241 = bitcast i32 %6240 to float
  %6242 = fadd fast float %6241, %4753
  %6243 = fmul fast float %6233, %6228
  %6244 = fsub fast float 1.000000e+00, %6228
  %6245 = fadd fast float %6244, %6243
  %6246 = fmul fast float %6229, %6229
  %6247 = fmul fast float %6246, %6234
  %6248 = fadd fast float %6247, %6233
  %6249 = bitcast float %6248 to i32
  %6250 = ashr i32 %6249, 1
  %6251 = add nsw i32 %6250, 532487669
  %6252 = bitcast i32 %6251 to float
  %6253 = fadd fast float %6252, %6229
  %6254 = fmul fast float %6245, %6245
  %6255 = fmul fast float %6254, %6242
  %6256 = fmul fast float %6255, %6253
  %6257 = fdiv fast float 1.000000e+00, %6256
  %6258 = bitcast float %6233 to i32
  %6259 = sitofp i32 %6258 to float
  %6260 = fmul fast float %6259, 0x3FE7F73180000000
  %6261 = fadd fast float %6260, 0x41AFE27C40000000
  %6262 = fptosi float %6261 to i32
  %6263 = bitcast i32 %6262 to float
  %6264 = fmul fast float %6050, 0x3FD80E9D60000000
  %6265 = fmul fast float %6264, %6215
  %6266 = fadd fast float %6263, %6265
  %6267 = bitcast float %6266 to i32
  %6268 = sub nsw i32 2129859010, %6267
  %6269 = bitcast i32 %6268 to float
  %6270 = fmul fast float %6233, %6257
  %6271 = fmul fast float %6270, %6263
  %6272 = fmul fast float %6271, %6269
  %6273 = call float @dx.op.unary.f32(i32 6, float %6205)  ; FAbs(value)
  %6274 = fsub fast float 1.000000e+00, %6273
  %6275 = bitcast float %6274 to i32
  %6276 = sitofp i32 %6275 to float
  %6277 = fmul fast float %6276, 5.000000e+00
  %6278 = fadd fast float %6277, 0xC1EFBF8940000000
  %6279 = fptosi float %6278 to i32
  %6280 = bitcast i32 %6279 to float
  %6281 = fsub fast float 1.000000e+00, %4746
  %6282 = fsub fast float 1.000000e+00, %4747
  %6283 = fsub fast float 1.000000e+00, %4751
  %6284 = fmul fast float %6280, %6281
  %6285 = fmul fast float %6280, %6282
  %6286 = fmul fast float %6280, %6283
  %6287 = fadd fast float %6284, %4746
  %6288 = fadd fast float %6285, %4747
  %6289 = fadd fast float %6286, %4751
  br i1 %5646, label %6290, label %6313

; <label>:6290                                    ; preds = %6176
  %6291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4138, float %6273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6292 = extractvalue %dx.types.ResRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.ResRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.ResRet.f32 %6291, 2
  %6295 = fadd fast float %6292, -5.000000e-01
  %6296 = fadd fast float %6293, -5.000000e-01
  %6297 = fadd fast float %6294, -5.000000e-01
  %6298 = fmul fast float %4746, 4.000000e+00
  %6299 = fmul fast float %6298, %6281
  %6300 = fmul fast float %6299, %6295
  %6301 = fmul fast float %4747, 4.000000e+00
  %6302 = fmul fast float %6301, %6282
  %6303 = fmul fast float %6302, %6296
  %6304 = fmul fast float %4751, 4.000000e+00
  %6305 = fmul fast float %6304, %6283
  %6306 = fmul fast float %6305, %6297
  %6307 = fadd fast float %6300, %6287
  %6308 = fadd fast float %6303, %6288
  %6309 = fadd fast float %6306, %6289
  %6310 = call float @dx.op.unary.f32(i32 7, float %6307)  ; Saturate(value)
  %6311 = call float @dx.op.unary.f32(i32 7, float %6308)  ; Saturate(value)
  %6312 = call float @dx.op.unary.f32(i32 7, float %6309)  ; Saturate(value)
  br label %6313

; <label>:6313                                    ; preds = %6290, %6176
  %6314 = phi float [ %6310, %6290 ], [ %6287, %6176 ]
  %6315 = phi float [ %6311, %6290 ], [ %6288, %6176 ]
  %6316 = phi float [ %6312, %6290 ], [ %6289, %6176 ]
  %6317 = fmul fast float %6204, 9.843750e-01
  %6318 = fadd fast float %6317, 7.812500e-03
  %6319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %6318, float %5636, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6320 = extractvalue %dx.types.ResRet.f32 %6319, 2
  %6321 = extractvalue %dx.types.ResRet.f32 %6319, 3
  %6322 = fmul fast float %6320, %4746
  %6323 = fmul fast float %6320, %4747
  %6324 = fmul fast float %6320, %4751
  %6325 = fadd fast float %6322, %6321
  %6326 = fadd fast float %6323, %6321
  %6327 = fadd fast float %6324, %6321
  br i1 %5646, label %6328, label %6351

; <label>:6328                                    ; preds = %6313
  %6329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4138, float %6204, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6330 = extractvalue %dx.types.ResRet.f32 %6329, 0
  %6331 = extractvalue %dx.types.ResRet.f32 %6329, 1
  %6332 = extractvalue %dx.types.ResRet.f32 %6329, 2
  %6333 = fadd fast float %6330, -5.000000e-01
  %6334 = fadd fast float %6331, -5.000000e-01
  %6335 = fadd fast float %6332, -5.000000e-01
  %6336 = fmul fast float %4746, 4.000000e+00
  %6337 = fmul fast float %6336, %6281
  %6338 = fmul fast float %6337, %6333
  %6339 = fmul fast float %4747, 4.000000e+00
  %6340 = fmul fast float %6339, %6282
  %6341 = fmul fast float %6340, %6334
  %6342 = fmul fast float %4751, 4.000000e+00
  %6343 = fmul fast float %6342, %6283
  %6344 = fmul fast float %6343, %6335
  %6345 = fadd fast float %6338, %6325
  %6346 = fadd fast float %6341, %6326
  %6347 = fadd fast float %6344, %6327
  %6348 = call float @dx.op.unary.f32(i32 7, float %6345)  ; Saturate(value)
  %6349 = call float @dx.op.unary.f32(i32 7, float %6346)  ; Saturate(value)
  %6350 = call float @dx.op.unary.f32(i32 7, float %6347)  ; Saturate(value)
  br label %6351

; <label>:6351                                    ; preds = %6328, %6313
  %6352 = phi float [ %6348, %6328 ], [ %6325, %6313 ]
  %6353 = phi float [ %6349, %6328 ], [ %6326, %6313 ]
  %6354 = phi float [ %6350, %6328 ], [ %6327, %6313 ]
  %6355 = call float @dx.op.binary.f32(i32 35, float %6353, float %6354)  ; FMax(a,b)
  %6356 = call float @dx.op.binary.f32(i32 35, float %6352, float %6355)  ; FMax(a,b)
  %6357 = fsub fast float 1.000000e+00, %6356
  %6358 = fmul fast float %6314, %6272
  %6359 = fmul fast float %6315, %6272
  %6360 = fmul fast float %6316, %6272
  %6361 = fsub fast float 1.000000e+00, %6205
  %6362 = bitcast float %6361 to i32
  %6363 = sitofp i32 %6362 to float
  %6364 = fmul fast float %6363, 5.000000e+00
  %6365 = fadd fast float %6364, 0xC1EFBF8940000000
  %6366 = fptosi float %6365 to i32
  %6367 = bitcast i32 %6366 to float
  %6368 = fmul fast float %6367, %4139
  %6369 = fmul fast float %6357, %6368
  %6370 = fmul fast float %6369, %5696
  %6371 = fmul fast float %6369, %5697
  %6372 = fmul fast float %6369, %5698
  %6373 = fadd fast float %6370, %6358
  %6374 = fadd fast float %6371, %6359
  %6375 = fadd fast float %6372, %6360
  %6376 = fmul fast float %6193, %4135
  %6377 = fmul fast float %6376, %6211
  %6378 = fmul fast float %6377, %6357
  %6379 = fmul fast float %6194, %4135
  %6380 = fmul fast float %6379, %6211
  %6381 = fmul fast float %6380, %6357
  %6382 = fmul fast float %6195, %4135
  %6383 = fmul fast float %6382, %6211
  %6384 = fmul fast float %6383, %6357
  %6385 = fadd fast float %6378, %6032
  %6386 = fadd fast float %6381, %6033
  %6387 = fadd fast float %6384, %6034
  %6388 = fmul fast float %6377, %6373
  %6389 = fmul fast float %6380, %6374
  %6390 = fmul fast float %6383, %6375
  %6391 = fadd fast float %6388, %6029
  %6392 = fadd fast float %6389, %6030
  %6393 = fadd fast float %6390, %6031
  br label %6107

; <label>:6394                                    ; preds = %6107
  br label %6395

; <label>:6395                                    ; preds = %6394, %5995
  %6396 = phi float [ %5997, %5995 ], [ %6108, %6394 ]
  %6397 = phi float [ %5998, %5995 ], [ %6109, %6394 ]
  %6398 = phi float [ %5999, %5995 ], [ %6110, %6394 ]
  %6399 = phi float [ %6000, %5995 ], [ %6111, %6394 ]
  %6400 = phi float [ %6001, %5995 ], [ %6112, %6394 ]
  %6401 = phi float [ %6002, %5995 ], [ %6113, %6394 ]
  %6402 = add i32 %5996, 1
  %6403 = icmp ugt i32 %6402, %5992
  br i1 %6403, label %6404, label %5995

; <label>:6404                                    ; preds = %6395
  br label %6405

; <label>:6405                                    ; preds = %6404, %5971, %5961
  %6406 = phi float [ %5962, %5961 ], [ %5962, %5971 ], [ %6396, %6404 ]
  %6407 = phi float [ %5963, %5961 ], [ %5963, %5971 ], [ %6397, %6404 ]
  %6408 = phi float [ %5964, %5961 ], [ %5964, %5971 ], [ %6398, %6404 ]
  %6409 = phi float [ %5965, %5961 ], [ %5965, %5971 ], [ %6399, %6404 ]
  %6410 = phi float [ %5966, %5961 ], [ %5966, %5971 ], [ %6400, %6404 ]
  %6411 = phi float [ %5967, %5961 ], [ %5967, %5971 ], [ %6401, %6404 ]
  %6412 = call float @dx.op.unary.f32(i32 24, float %4740)  ; Sqrt(value)
  %6413 = call float @dx.op.unary.f32(i32 24, float %4741)  ; Sqrt(value)
  %6414 = call float @dx.op.unary.f32(i32 24, float %4742)  ; Sqrt(value)
  %6415 = fmul fast float %6412, %6409
  %6416 = fmul fast float %6413, %6410
  %6417 = extractvalue %dx.types.CBufRet.f32 %5368, 0
  br i1 %163, label %6418, label %6438

; <label>:6418                                    ; preds = %6405
  %6419 = fadd fast float %6411, %4141
  %6420 = fmul fast float %6419, %4142
  %6421 = fsub fast float 1.000000e+00, %4142
  %6422 = call float @dx.op.unary.f32(i32 7, float %6421)  ; Saturate(value)
  %6423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6424 = extractvalue %dx.types.CBufRet.f32 %6423, 3
  %6425 = fmul fast float %6424, %6422
  %6426 = fadd fast float %6425, %6420
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 0
  %6429 = fmul fast float %6428, %5702
  %6430 = fsub fast float %6426, %6429
  %6431 = fadd fast float %6416, %6415
  %6432 = fmul fast float %6417, %6431
  %6433 = extractvalue %dx.types.CBufRet.f32 %6423, 1
  %6434 = fsub fast float %6430, %6433
  %6435 = extractvalue %dx.types.CBufRet.f32 %6423, 2
  %6436 = fmul fast float %6434, %6435
  %6437 = call float @dx.op.unary.f32(i32 7, float %6436)  ; Saturate(value)
  br label %6454

; <label>:6438                                    ; preds = %6405
  %6439 = fmul fast float %6414, %6411
  %6440 = fmul fast float %6417, %6415
  %6441 = fmul fast float %6417, %6416
  %6442 = fmul fast float %6439, %6417
  %6443 = add i32 %38, 356
  %6444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %6443, i32 undef)  ; BufferLoad(srv,index,wot)
  %6445 = extractvalue %dx.types.ResRet.i32 %6444, 0
  %6446 = and i32 %6445, 32
  %6447 = icmp eq i32 %6446, 0
  br i1 %6447, label %6454, label %6448

; <label>:6448                                    ; preds = %6438
  %6449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6450 = extractvalue %dx.types.CBufRet.f32 %6449, 0
  %6451 = fmul fast float %6450, 0x3FE99999A0000000
  %6452 = fadd fast float %6450, %6440
  %6453 = fadd fast float %6451, %6442
  br label %6454

; <label>:6454                                    ; preds = %6448, %6438, %6418
  %6455 = phi float [ %6432, %6418 ], [ %6452, %6448 ], [ %6440, %6438 ]
  %6456 = phi float [ %6437, %6418 ], [ %6441, %6448 ], [ %6441, %6438 ]
  %6457 = phi float [ 1.000000e+00, %6418 ], [ %6453, %6448 ], [ %6442, %6438 ]
  %6458 = fmul fast float %6417, %6407
  %6459 = fmul fast float %6417, %6408
  %6460 = fadd fast float %6407, %6406
  %6461 = select i1 %163, float %6460, float %6406
  %6462 = fmul float %6461, %6417
  %6463 = select i1 %163, float 0.000000e+00, float %6458
  %6464 = select i1 %163, float 0.000000e+00, float %6459
  %6465 = fmul fast float %6455, %6412
  %6466 = fmul fast float %6456, %6413
  %6467 = fmul fast float %6457, %6414
  %6468 = fadd fast float %6462, %6465
  %6469 = fadd fast float %6463, %6466
  %6470 = fadd fast float %6464, %6467
  %6471 = select i1 %163, float %6456, float %6469
  %6472 = select i1 %163, float %6457, float %6470
  %6473 = call float @dx.op.binary.f32(i32 36, float %6468, float 3.225500e+04)  ; FMin(a,b)
  %6474 = call float @dx.op.binary.f32(i32 36, float %6471, float 3.225500e+04)  ; FMin(a,b)
  %6475 = call float @dx.op.binary.f32(i32 36, float %6472, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6473)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6474)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6475)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

