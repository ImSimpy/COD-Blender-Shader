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
; PACKED_TRI_DATA          0   xyzw        7     NONE    uint   x z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 84752a4484ec06f738860a70d148c843
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
;                                   texture     f32     2darray      T1      t0,space6unbounded
;                                   texture     f32          3d      T2      t0,space7unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32     2darray      T5     t16,space2     1
;                                   texture     f32          3d      T6     t15,space2     1
;                                   texture     f32          2d      T7     t13,space2     1
;                                   texture     u32          2d      T8     t17,space2     1
;                                   texture     f32          3d      T9     t18,space2     1
;                                   texture     u32     2darray     T10     t11,space2     1
;                                   texture     f32     2darray     T11     t10,space2     1
;                                   texture     f32          2d     T12     t69,space2     1
;                                   texture    byte         r/o     T13     t49,space1     1
;                                   texture    byte         r/o     T14     t50,space1     1
;                                   texture    byte         r/o     T15     t51,space1     1
;                                   texture    byte         r/o     T16     t52,space1     1
;                                   texture     f32          2d     T17     t58,space2     1
;                                   texture     f32          2d     T18     t59,space2     1
;                                   texture     f32          2d     T19     t60,space2     1
;                                   texture    byte         r/o     T20     t45,space1     1
;                                   texture    byte         r/o     T21     t46,space1     1
;                                   texture    byte         r/o     T22     t47,space1     1
;                                   texture    byte         r/o     T23     t48,space1     1
;                                   texture     f32          2d     T24     t57,space2     1
;                                   texture    byte         r/o     T25     t69,space1     1
;                                   texture    byte         r/o     T26     t10,space1     1
;                                   texture    byte         r/o     T27     t68,space1     1
;                                   texture     f32          2d     T28      t0,space2     1
;                                   texture    byte         r/o     T29     t11,space1     1
;                                   texture    byte         r/o     T30     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 32, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %37 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %59 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %60 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %61 = extractvalue %dx.types.CBufRet.f32 %60, 0
  %62 = fmul fast float %61, %55
  %63 = fmul fast float %61, %56
  %64 = call float @dx.op.dot3.f32(i32 55, float %47, float %48, float %49, float %47, float %48, float %49)  ; Dot3(ax,ay,az,bx,by,bz)
  %65 = bitcast float %64 to i32
  %66 = ashr i32 %65, 1
  %67 = sub nsw i32 1597250115, %66
  %68 = bitcast i32 %67 to float
  %69 = fmul fast float %68, %47
  %70 = fmul fast float %68, %48
  %71 = fmul fast float %68, %49
  %72 = fmul fast float %48, %45
  %73 = fmul fast float %49, %44
  %74 = fsub fast float %72, %73
  %75 = fmul fast float %49, %43
  %76 = fmul fast float %47, %45
  %77 = fsub fast float %75, %76
  %78 = fmul fast float %47, %44
  %79 = fmul fast float %48, %43
  %80 = fsub fast float %78, %79
  %81 = fmul fast float %74, %46
  %82 = fmul fast float %77, %46
  %83 = fmul fast float %80, %46
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 2
  %86 = extractvalue %dx.types.CBufRet.f32 %84, 3
  %87 = fmul fast float %62, 2.000000e+00
  %88 = fmul fast float %87, %85
  %89 = fmul fast float %63, 2.000000e+00
  %90 = fmul fast float %89, %86
  %91 = fsub fast float 1.000000e+00, %88
  %92 = fsub fast float 1.000000e+00, %90
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 0
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 1
  %96 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %97 = fmul fast float %91, %94
  %98 = fmul fast float %91, %95
  %99 = fmul fast float %91, %96
  %100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %101 = extractvalue %dx.types.CBufRet.f32 %100, 0
  %102 = extractvalue %dx.types.CBufRet.f32 %100, 1
  %103 = extractvalue %dx.types.CBufRet.f32 %100, 2
  %104 = fmul fast float %92, %101
  %105 = fmul fast float %92, %102
  %106 = fmul fast float %92, %103
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 0
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 1
  %110 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %111 = fadd fast float %104, %108
  %112 = fadd fast float %111, %97
  %113 = fadd fast float %105, %109
  %114 = fadd fast float %113, %98
  %115 = fadd fast float %106, %110
  %116 = fadd fast float %115, %99
  %117 = fmul fast float %112, %57
  %118 = fmul fast float %114, %57
  %119 = fmul fast float %116, %57
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 3
  %123 = fmul fast float %121, %62
  %124 = fmul fast float %122, %63
  %125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %126 = extractvalue %dx.types.ResRet.i32 %125, 0
  %127 = and i32 %126, 114688
  %128 = icmp ne i32 %127, 0
  %129 = select i1 %128, float %123, float 0.000000e+00
  %130 = select i1 %128, float %124, float 0.000000e+00
  %131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %32, float %129, float %130, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %132 = extractvalue %dx.types.ResRet.f32 %131, 0
  %133 = fmul fast float %132, 2.550000e+02
  %134 = fptoui float %133 to i32
  %135 = select i1 %128, i32 %134, i32 0
  %136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.i32 %136, 3
  %138 = and i32 %137, 3
  %139 = icmp ne i32 %138, 0
  %140 = and i32 %137, 4
  %141 = icmp ne i32 %140, 0
  %142 = and i1 %139, %141
  br i1 %142, label %143, label %152

; <label>:143                                     ; preds = %0
  %144 = fmul fast float %86, %63
  %145 = fmul fast float %85, %62
  %146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %31, float %145, float %144, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %147 = extractvalue %dx.types.ResRet.f32 %146, 0
  %148 = fsub fast float 1.000000e+00, %147
  %149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %150 = extractvalue %dx.types.CBufRet.f32 %149, 0
  %151 = fcmp fast olt float %148, %150
  br label %160

; <label>:152                                     ; preds = %0
  %153 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = extractvalue %dx.types.CBufRet.i32 %153, 3
  %155 = and i32 %154, 3
  %156 = icmp ne i32 %155, 0
  %157 = and i32 %154, 4
  %158 = icmp eq i32 %157, 0
  %159 = and i1 %156, %158
  br label %160

; <label>:160                                     ; preds = %152, %143
  %161 = phi i1 [ %151, %143 ], [ %159, %152 ]
  %162 = add i32 %35, 156
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %162, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = shl i32 %164, 4
  %166 = and i32 %165, 32752
  %167 = call float @dx.op.legacyF16ToF32(i32 131, i32 %166)  ; LegacyF16ToF32(value)
  %168 = lshr i32 %164, 7
  %169 = and i32 %168, 32752
  %170 = call float @dx.op.legacyF16ToF32(i32 131, i32 %169)  ; LegacyF16ToF32(value)
  %171 = lshr i32 %164, 22
  %172 = shl nuw nsw i32 %171, 5
  %173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %172)  ; LegacyF16ToF32(value)
  %174 = add i32 %35, 216
  %175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %176 = extractvalue %dx.types.ResRet.i32 %175, 0
  %177 = and i32 %176, 255
  %178 = uitofp i32 %177 to float
  %179 = fmul fast float %178, 0x3F70101020000000
  %180 = lshr i32 %176, 8
  %181 = and i32 %180, 255
  %182 = uitofp i32 %181 to float
  %183 = fmul fast float %182, 0x3F70101020000000
  %184 = lshr i32 %176, 16
  %185 = and i32 %184, 255
  %186 = uitofp i32 %185 to float
  %187 = fmul fast float %186, 0x3F70101020000000
  %188 = add i32 %35, 36
  %189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %188, i32 undef)  ; BufferLoad(srv,index,wot)
  %190 = extractvalue %dx.types.ResRet.i32 %189, 0
  %191 = and i32 %190, 65535
  %192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %191)  ; LegacyF16ToF32(value)
  %193 = lshr i32 %190, 16
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = add i32 %35, 288
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = and i32 %197, 65535
  %199 = call float @dx.op.legacyF16ToF32(i32 131, i32 %198)  ; LegacyF16ToF32(value)
  %200 = lshr i32 %197, 16
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = fmul fast float %199, 0x3F50624DE0000000
  %203 = fmul fast float %201, 0x3F50624DE0000000
  %204 = add i32 %35, 172
  %205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %204, i32 undef)  ; BufferLoad(srv,index,wot)
  %206 = extractvalue %dx.types.ResRet.i32 %205, 0
  %207 = shl i32 %206, 4
  %208 = and i32 %207, 32752
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %206, 7
  %211 = and i32 %210, 32752
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = lshr i32 %206, 22
  %214 = shl nuw nsw i32 %213, 5
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = add i32 %35, 232
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F70101020000000
  %222 = lshr i32 %218, 8
  %223 = and i32 %222, 255
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F70101020000000
  %226 = lshr i32 %218, 16
  %227 = and i32 %226, 255
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F70101020000000
  %230 = add i32 %35, 52
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 65535
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %232, 16
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = add i32 %35, 304
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 65535
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = lshr i32 %239, 16
  %243 = call float @dx.op.legacyF16ToF32(i32 131, i32 %242)  ; LegacyF16ToF32(value)
  %244 = fmul fast float %241, 0x3F50624DE0000000
  %245 = fmul fast float %243, 0x3F50624DE0000000
  %246 = add i32 %35, 188
  %247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %246, i32 undef)  ; BufferLoad(srv,index,wot)
  %248 = extractvalue %dx.types.ResRet.i32 %247, 0
  %249 = shl i32 %248, 4
  %250 = and i32 %249, 32752
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %248, 7
  %253 = and i32 %252, 32752
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %248, 22
  %256 = shl nuw nsw i32 %255, 5
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = add i32 %35, 248
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = lshr i32 %260, 8
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F70101020000000
  %268 = lshr i32 %260, 16
  %269 = and i32 %268, 255
  %270 = uitofp i32 %269 to float
  %271 = fmul fast float %270, 0x3F70101020000000
  %272 = add i32 %35, 68
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 65535
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %274, 16
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = add i32 %35, 320
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 65535
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = lshr i32 %281, 16
  %285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %284)  ; LegacyF16ToF32(value)
  %286 = fmul fast float %283, 0x3F50624DE0000000
  %287 = fmul fast float %285, 0x3F50624DE0000000
  %288 = add i32 %35, 204
  %289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %288, i32 undef)  ; BufferLoad(srv,index,wot)
  %290 = extractvalue %dx.types.ResRet.i32 %289, 0
  %291 = shl i32 %290, 4
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %290, 7
  %295 = and i32 %294, 32752
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = lshr i32 %290, 22
  %298 = shl nuw nsw i32 %297, 5
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = add i32 %35, 264
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = lshr i32 %302, 8
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = lshr i32 %302, 16
  %311 = and i32 %310, 255
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %312, 0x3F70101020000000
  %314 = add i32 %35, 84
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = add i32 %35, 336
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 65535
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = lshr i32 %323, 16
  %327 = call float @dx.op.legacyF16ToF32(i32 131, i32 %326)  ; LegacyF16ToF32(value)
  %328 = fmul fast float %325, 0x3F50624DE0000000
  %329 = fmul fast float %327, 0x3F50624DE0000000
  %330 = add i32 %35, 348
  %331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %332 = extractvalue %dx.types.ResRet.i32 %331, 0
  %333 = and i32 %332, 32
  %334 = icmp eq i32 %333, 0
  %335 = and i32 %332, 64
  %336 = icmp eq i32 %335, 0
  %337 = and i32 %332, 128
  %338 = icmp eq i32 %337, 0
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 2
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %356, label %343

; <label>:343                                     ; preds = %160
  %344 = add i32 %35, 472
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %344, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = add i32 %346, 0
  %348 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %347, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %349 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %348, %dx.types.Handle %59, float %50, float %51, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %350 = extractvalue %dx.types.ResRet.f32 %349, 0
  %351 = extractvalue %dx.types.ResRet.f32 %349, 1
  %352 = extractvalue %dx.types.ResRet.f32 %349, 2
  %353 = fmul fast float %350, %52
  %354 = fmul fast float %351, %53
  %355 = fmul fast float %352, %54
  br label %356

; <label>:356                                     ; preds = %343, %160
  %357 = phi float [ %54, %160 ], [ %355, %343 ]
  %358 = phi float [ %53, %160 ], [ %354, %343 ]
  %359 = phi float [ %52, %160 ], [ %353, %343 ]
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %330, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 2
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %383, label %364

; <label>:364                                     ; preds = %356
  %365 = add i32 %35, 44
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 1
  %369 = icmp ne i32 %368, 0
  %370 = select i1 %369, float %359, float 1.000000e+00
  %371 = add i32 %35, 60
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 1
  %375 = icmp ne i32 %374, 0
  %376 = select i1 %375, float %358, float 1.000000e+00
  %377 = add i32 %35, 76
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 1
  %381 = icmp ne i32 %380, 0
  %382 = select i1 %381, float %357, float 1.000000e+00
  br label %383

; <label>:383                                     ; preds = %364, %356
  %384 = phi float [ %357, %356 ], [ %382, %364 ]
  %385 = phi float [ %358, %356 ], [ %376, %364 ]
  %386 = phi float [ %359, %356 ], [ %370, %364 ]
  %387 = lshr i32 %361, 20
  %388 = and i32 %387, 3
  %389 = add nuw nsw i32 %388, 1
  %390 = add i32 %35, 24
  %391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %392 = extractvalue %dx.types.ResRet.i32 %391, 0
  %393 = add i32 %35, 28
  %394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %393, i32 undef)  ; BufferLoad(srv,index,wot)
  %395 = extractvalue %dx.types.ResRet.i32 %394, 0
  %396 = or i32 %395, %392
  %397 = icmp eq i32 %396, 0
  br i1 %397, label %856, label %398

; <label>:398                                     ; preds = %383
  %399 = and i32 %392, 262144
  %400 = icmp ne i32 %399, 0
  %401 = select i1 %400, float %37, float 1.000000e+00
  %402 = select i1 %400, float %38, float 0.000000e+00
  %403 = select i1 %400, float %39, float 0.000000e+00
  %404 = select i1 %400, float %40, float 1.000000e+00
  %405 = select i1 %400, float %41, float %50
  %406 = select i1 %400, float %42, float %51
  %407 = add i32 %35, 284
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = lshr i32 %409, 16
  %411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %410)  ; LegacyF16ToF32(value)
  %412 = fmul fast float %411, 0x3F50624DE0000000
  %413 = add i32 %35, 88
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = lshr i32 %415, 16
  %417 = and i32 %416, 255
  %418 = lshr i32 %415, 24
  %419 = add i32 %35, 292
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = and i32 %421, 65535
  %423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %422)  ; LegacyF16ToF32(value)
  %424 = lshr i32 %421, 16
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = add i32 %35, 32
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = lshr i32 %428, 22
  %430 = shl nuw nsw i32 %429, 5
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = shl i32 %428, 4
  %433 = and i32 %432, 32752
  %434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %433)  ; LegacyF16ToF32(value)
  %435 = lshr i32 %428, 7
  %436 = and i32 %435, 32752
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %439 = extractvalue %dx.types.CBufRet.f32 %438, 3
  %440 = fmul fast float %439, 1.000000e+03
  %441 = fmul fast float %202, %440
  %442 = call float @dx.op.unary.f32(i32 22, float %441)  ; Frc(value)
  %443 = fadd fast float %442, %192
  %444 = fmul fast float %203, %440
  %445 = call float @dx.op.unary.f32(i32 22, float %444)  ; Frc(value)
  %446 = fadd fast float %445, %194
  %447 = fmul fast float %412, %440
  %448 = call float @dx.op.unary.f32(i32 22, float %447)  ; Frc(value)
  %449 = fmul fast float %448, 0x401921FB60000000
  %450 = fadd fast float %449, %431
  %451 = call float @dx.op.unary.f32(i32 13, float %450)  ; Sin(value)
  %452 = call float @dx.op.unary.f32(i32 12, float %450)  ; Cos(value)
  %453 = fsub fast float -0.000000e+00, %451
  %454 = fadd fast float %405, -5.000000e-01
  %455 = fadd fast float %406, -5.000000e-01
  %456 = fmul fast float %423, %454
  %457 = fmul fast float %425, %455
  %458 = fadd fast float %456, 5.000000e-01
  %459 = fadd fast float %457, 5.000000e-01
  %460 = fmul fast float %434, %458
  %461 = fmul fast float %437, %459
  %462 = fmul fast float %452, %460
  %463 = call float @dx.op.tertiary.f32(i32 46, float %453, float %461, float %462)  ; FMad(a,b,c)
  %464 = fmul fast float %451, %460
  %465 = call float @dx.op.tertiary.f32(i32 46, float %452, float %461, float %464)  ; FMad(a,b,c)
  %466 = fadd fast float %443, %463
  %467 = fadd fast float %446, %465
  %468 = icmp ugt i32 %417, 1
  %469 = icmp ugt i32 %415, 33554431
  %470 = or i1 %469, %468
  br i1 %470, label %471, label %496

; <label>:471                                     ; preds = %398
  %472 = add i32 %35, 228
  %473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %472, i32 undef)  ; BufferLoad(srv,index,wot)
  %474 = extractvalue %dx.types.ResRet.i32 %473, 0
  %475 = lshr i32 %474, 16
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = fmul fast float %439, %476
  %478 = call float @dx.op.unary.f32(i32 22, float %477)  ; Frc(value)
  %479 = mul nuw nsw i32 %417, %418
  %480 = uitofp i32 %479 to float
  %481 = fmul fast float %478, %480
  %482 = call float @dx.op.unary.f32(i32 27, float %481)  ; Round_ni(value)
  %483 = fptoui float %482 to i32
  %484 = urem i32 %483, %417
  %485 = udiv i32 %483, %418
  %486 = call float @dx.op.unary.f32(i32 22, float %466)  ; Frc(value)
  %487 = call float @dx.op.unary.f32(i32 22, float %467)  ; Frc(value)
  %488 = uitofp i32 %484 to float
  %489 = uitofp i32 %485 to float
  %490 = fadd fast float %486, %488
  %491 = fadd fast float %487, %489
  %492 = uitofp i32 %417 to float
  %493 = uitofp i32 %418 to float
  %494 = fdiv fast float %490, %492
  %495 = fdiv fast float %491, %493
  br label %496

; <label>:496                                     ; preds = %471, %398
  %497 = phi float [ %494, %471 ], [ %466, %398 ]
  %498 = phi float [ %495, %471 ], [ %467, %398 ]
  %499 = and i32 %392, 16
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %697, label %501

; <label>:501                                     ; preds = %496
  %502 = add i32 %35, 360
  %503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %502, i32 undef)  ; BufferLoad(srv,index,wot)
  %504 = extractvalue %dx.types.ResRet.i32 %503, 0
  %505 = add i32 %504, 0
  %506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %505, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %506, %dx.types.Handle %58, float %497, float %498, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %508 = extractvalue %dx.types.ResRet.f32 %507, 0
  %509 = extractvalue %dx.types.ResRet.f32 %507, 1
  %510 = extractvalue %dx.types.ResRet.f32 %507, 2
  %511 = extractvalue %dx.types.ResRet.f32 %507, 3
  %512 = and i32 %415, 255
  %513 = uitofp i32 %512 to float
  %514 = lshr i32 %415, 8
  %515 = and i32 %514, 255
  %516 = uitofp i32 %515 to float
  %517 = fmul fast float %511, %513
  %518 = fadd fast float %517, %516
  %519 = fmul fast float %518, 0x3F70101000000000
  %520 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %521 = extractvalue %dx.types.ResRet.i32 %520, 0
  %522 = and i32 %521, 512
  %523 = icmp eq i32 %522, 0
  br i1 %523, label %532, label %524

; <label>:524                                     ; preds = %501
  %525 = add i32 %35, 440
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %525, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = add i32 %527, 0
  %529 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %528, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %530 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %529, %dx.types.Handle %59, float %497, float %498, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %531 = extractvalue %dx.types.ResRet.f32 %530, 0
  br label %532

; <label>:532                                     ; preds = %524, %501
  %533 = phi float [ %531, %524 ], [ 1.000000e+00, %501 ]
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = and i32 %535, 33554432
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %644, label %538

; <label>:538                                     ; preds = %532
  %539 = add i32 %35, 224
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = and i32 %541, 65535
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = lshr i32 %541, 16
  %545 = call float @dx.op.legacyF16ToF32(i32 131, i32 %544)  ; LegacyF16ToF32(value)
  %546 = add i32 %35, 228
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = and i32 %548, 65535
  %550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %549)  ; LegacyF16ToF32(value)
  %551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %174, i32 undef)  ; BufferLoad(srv,index,wot)
  %552 = extractvalue %dx.types.ResRet.i32 %551, 0
  %553 = lshr i32 %552, 24
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %554, 0x3F70101020000000
  %556 = and i32 %552, 255
  %557 = uitofp i32 %556 to float
  %558 = fmul fast float %557, 0x3F70101020000000
  %559 = lshr i32 %552, 8
  %560 = and i32 %559, 255
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %561, 0x3F70101020000000
  %563 = lshr i32 %552, 16
  %564 = and i32 %563, 255
  %565 = uitofp i32 %564 to float
  %566 = fmul fast float %565, 0x3F70101020000000
  %567 = add i32 %35, 220
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = lshr i32 %569, 24
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101020000000
  %573 = and i32 %569, 255
  %574 = uitofp i32 %573 to float
  %575 = fmul fast float %574, 0x3F70101020000000
  %576 = lshr i32 %569, 8
  %577 = and i32 %576, 255
  %578 = uitofp i32 %577 to float
  %579 = fmul fast float %578, 0x3F70101020000000
  %580 = lshr i32 %569, 16
  %581 = and i32 %580, 255
  %582 = uitofp i32 %581 to float
  %583 = fmul fast float %582, 0x3F70101020000000
  %584 = bitcast float %508 to i32
  %585 = ashr i32 %584, 1
  %586 = sub nsw i32 1597463174, %585
  %587 = bitcast i32 %586 to float
  %588 = fmul fast float %508, 5.000000e-01
  %589 = fmul fast float %587, %587
  %590 = fmul fast float %589, %588
  %591 = fsub fast float 1.500000e+00, %590
  %592 = fmul fast float %587, %508
  %593 = fmul fast float %592, %591
  %594 = bitcast float %509 to i32
  %595 = ashr i32 %594, 1
  %596 = sub nsw i32 1597463174, %595
  %597 = bitcast i32 %596 to float
  %598 = fmul fast float %509, 5.000000e-01
  %599 = fmul fast float %597, %597
  %600 = fmul fast float %599, %598
  %601 = fsub fast float 1.500000e+00, %600
  %602 = fmul fast float %597, %509
  %603 = fmul fast float %602, %601
  %604 = bitcast float %510 to i32
  %605 = ashr i32 %604, 1
  %606 = sub nsw i32 1597463174, %605
  %607 = bitcast i32 %606 to float
  %608 = fmul fast float %510, 5.000000e-01
  %609 = fmul fast float %607, %607
  %610 = fmul fast float %609, %608
  %611 = fsub fast float 1.500000e+00, %610
  %612 = fmul fast float %607, %510
  %613 = fmul fast float %612, %611
  %614 = fsub fast float %593, %575
  %615 = fsub fast float %603, %579
  %616 = fsub fast float %613, %583
  %617 = fmul fast float %614, %543
  %618 = fmul fast float %615, %545
  %619 = fmul fast float %616, %550
  %620 = fadd fast float %617, %558
  %621 = fadd fast float %618, %562
  %622 = fadd fast float %619, %566
  %623 = call float @dx.op.unary.f32(i32 7, float %620)  ; Saturate(value)
  %624 = call float @dx.op.unary.f32(i32 7, float %621)  ; Saturate(value)
  %625 = call float @dx.op.unary.f32(i32 7, float %622)  ; Saturate(value)
  %626 = fmul fast float %623, %623
  %627 = fmul fast float %624, %624
  %628 = fmul fast float %625, %625
  %629 = fsub fast float %626, %508
  %630 = fsub fast float %627, %509
  %631 = fsub fast float %628, %510
  %632 = fmul fast float %629, %533
  %633 = fmul fast float %630, %533
  %634 = fmul fast float %631, %533
  %635 = fadd fast float %632, %508
  %636 = fadd fast float %633, %509
  %637 = fadd fast float %634, %510
  %638 = fadd fast float %555, %519
  %639 = fsub fast float %638, %572
  %640 = call float @dx.op.unary.f32(i32 7, float %639)  ; Saturate(value)
  %641 = fsub fast float %640, %519
  %642 = fmul fast float %641, %533
  %643 = fadd fast float %642, %519
  br label %697

; <label>:644                                     ; preds = %532
  %645 = and i32 %535, 134217728
  %646 = icmp eq i32 %645, 0
  br i1 %646, label %681, label %647

; <label>:647                                     ; preds = %644
  %648 = call float @dx.op.unary.f32(i32 24, float %179)  ; Sqrt(value)
  %649 = call float @dx.op.unary.f32(i32 24, float %183)  ; Sqrt(value)
  %650 = call float @dx.op.unary.f32(i32 24, float %187)  ; Sqrt(value)
  %651 = fadd fast float %648, -5.000000e-01
  %652 = fadd fast float %649, -5.000000e-01
  %653 = fadd fast float %650, -5.000000e-01
  %654 = fmul fast float %651, %533
  %655 = fmul fast float %652, %533
  %656 = fmul fast float %653, %533
  %657 = fadd fast float %654, 5.000000e-01
  %658 = fadd fast float %655, 5.000000e-01
  %659 = fadd fast float %656, 5.000000e-01
  %660 = call float @dx.op.unary.f32(i32 24, float %508)  ; Sqrt(value)
  %661 = call float @dx.op.unary.f32(i32 24, float %509)  ; Sqrt(value)
  %662 = call float @dx.op.unary.f32(i32 24, float %510)  ; Sqrt(value)
  %663 = fmul fast float %657, 2.000000e+00
  %664 = fsub fast float 1.000000e+00, %663
  %665 = fmul fast float %664, %660
  %666 = fadd fast float %665, %663
  %667 = fmul fast float %666, %660
  %668 = fmul fast float %658, 2.000000e+00
  %669 = fsub fast float 1.000000e+00, %668
  %670 = fmul fast float %669, %661
  %671 = fadd fast float %670, %668
  %672 = fmul fast float %671, %661
  %673 = fmul fast float %659, 2.000000e+00
  %674 = fsub fast float 1.000000e+00, %673
  %675 = fmul fast float %674, %662
  %676 = fadd fast float %675, %673
  %677 = fmul fast float %676, %662
  %678 = fmul fast float %667, %667
  %679 = fmul fast float %672, %672
  %680 = fmul fast float %677, %677
  br label %697

; <label>:681                                     ; preds = %644
  %682 = fmul fast float %179, %179
  %683 = fmul fast float %183, %183
  %684 = fmul fast float %187, %187
  %685 = fadd fast float %682, -1.000000e+00
  %686 = fadd fast float %683, -1.000000e+00
  %687 = fadd fast float %684, -1.000000e+00
  %688 = fmul fast float %533, %685
  %689 = fmul fast float %533, %686
  %690 = fmul fast float %533, %687
  %691 = fadd fast float %688, 1.000000e+00
  %692 = fadd fast float %689, 1.000000e+00
  %693 = fadd fast float %690, 1.000000e+00
  %694 = fmul fast float %691, %508
  %695 = fmul fast float %692, %509
  %696 = fmul fast float %693, %510
  br label %697

; <label>:697                                     ; preds = %681, %647, %538, %496
  %698 = phi float [ %643, %538 ], [ %519, %647 ], [ %519, %681 ], [ 0x3FA23C0BE0000000, %496 ]
  %699 = phi float [ %635, %538 ], [ %678, %647 ], [ %694, %681 ], [ 1.000000e+00, %496 ]
  %700 = phi float [ %636, %538 ], [ %679, %647 ], [ %695, %681 ], [ 1.000000e+00, %496 ]
  %701 = phi float [ %637, %538 ], [ %680, %647 ], [ %696, %681 ], [ 1.000000e+00, %496 ]
  %702 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %703 = extractvalue %dx.types.CBufRet.i32 %702, 1
  %704 = and i32 %703, 1
  %705 = icmp ne i32 %704, 0
  %706 = add i32 %35, 356
  %707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %706, i32 undef)  ; BufferLoad(srv,index,wot)
  %708 = extractvalue %dx.types.ResRet.i32 %707, 0
  %709 = and i32 %708, 32
  %710 = icmp ne i32 %709, 0
  %711 = and i1 %705, %710
  %712 = select i1 %711, float 1.000000e+00, float %699
  %713 = select i1 %711, float 0x3FD3333340000000, float %700
  %714 = select i1 %711, float 0x3FD3333340000000, float %701
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = and i32 %716, 32
  %718 = icmp eq i32 %717, 0
  br i1 %718, label %791, label %719

; <label>:719                                     ; preds = %697
  %720 = add i32 %35, 92
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %720, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = add i32 %35, 376
  %724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %723, i32 undef)  ; BufferLoad(srv,index,wot)
  %725 = extractvalue %dx.types.ResRet.i32 %724, 0
  %726 = add i32 %725, 0
  %727 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %726, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %728 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %727, %dx.types.Handle %58, float %497, float %498, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %729 = extractvalue %dx.types.ResRet.f32 %728, 0
  %730 = extractvalue %dx.types.ResRet.f32 %728, 1
  %731 = extractvalue %dx.types.ResRet.f32 %728, 2
  %732 = extractvalue %dx.types.ResRet.f32 %728, 3
  %733 = and i32 %722, 255
  %734 = uitofp i32 %733 to float
  %735 = lshr i32 %722, 8
  %736 = and i32 %735, 255
  %737 = uitofp i32 %736 to float
  %738 = lshr i32 %722, 16
  %739 = and i32 %738, 255
  %740 = uitofp i32 %739 to float
  %741 = fmul fast float %740, 0x3F70101000000000
  %742 = fmul fast float %729, %734
  %743 = fadd fast float %742, %737
  %744 = fmul fast float %743, 0x3F70101000000000
  %745 = fadd fast float %730, -5.000000e-01
  %746 = fadd fast float %732, -5.000000e-01
  %747 = fmul fast float %745, %741
  %748 = fmul fast float %746, %741
  %749 = fadd fast float %747, 5.000000e-01
  %750 = fadd fast float %748, 5.000000e-01
  %751 = fmul fast float %749, 2.000000e+00
  %752 = fadd fast float %751, -1.000000e+00
  %753 = fmul fast float %750, 2.000000e+00
  %754 = fadd fast float %753, -1.000000e+00
  %755 = fadd fast float %752, %754
  %756 = fmul fast float %755, 5.000000e-01
  %757 = fsub fast float %752, %754
  %758 = fmul fast float %757, 5.000000e-01
  %759 = call float @dx.op.unary.f32(i32 6, float %756)  ; FAbs(value)
  %760 = fsub fast float 1.000000e+00, %759
  %761 = call float @dx.op.unary.f32(i32 6, float %758)  ; FAbs(value)
  %762 = fsub fast float %760, %761
  %763 = call float @dx.op.dot3.f32(i32 55, float %756, float %758, float %762, float %756, float %758, float %762)  ; Dot3(ax,ay,az,bx,by,bz)
  %764 = call float @dx.op.unary.f32(i32 25, float %763)  ; Rsqrt(value)
  %765 = fmul fast float %756, %764
  %766 = fmul fast float %758, %764
  %767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %768 = extractvalue %dx.types.ResRet.i32 %767, 0
  %769 = and i32 %768, 67108864
  %770 = icmp eq i32 %769, 0
  br i1 %770, label %787, label %771

; <label>:771                                     ; preds = %719
  %772 = add i32 %35, 280
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %772, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 65535
  %776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %775)  ; LegacyF16ToF32(value)
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = and i32 %778, 65535
  %780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %779)  ; LegacyF16ToF32(value)
  %781 = lshr i32 %774, 16
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = fsub fast float %744, %782
  %784 = fmul fast float %783, %776
  %785 = fadd fast float %784, %780
  %786 = call float @dx.op.unary.f32(i32 7, float %785)  ; Saturate(value)
  br label %787

; <label>:787                                     ; preds = %771, %719
  %788 = phi float [ %786, %771 ], [ %744, %719 ]
  %789 = call float @dx.op.dot2.f32(i32 54, float %765, float %766, float %401, float %402)  ; Dot2(ax,ay,bx,by)
  %790 = call float @dx.op.dot2.f32(i32 54, float %765, float %766, float %403, float %404)  ; Dot2(ax,ay,bx,by)
  br label %791

; <label>:791                                     ; preds = %787, %697
  %792 = phi float [ %788, %787 ], [ 0x3FD6666660000000, %697 ]
  %793 = phi float [ %789, %787 ], [ 0.000000e+00, %697 ]
  %794 = phi float [ %790, %787 ], [ 0.000000e+00, %697 ]
  %795 = phi float [ %731, %787 ], [ 1.000000e+00, %697 ]
  %796 = add i32 %35, 160
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = lshr i32 %798, 22
  %800 = shl nuw nsw i32 %799, 5
  %801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %800)  ; LegacyF16ToF32(value)
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = and i32 %803, 64
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %839, label %806

; <label>:806                                     ; preds = %791
  %807 = add i32 %35, 392
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = add i32 %809, 0
  %811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %390, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 131072
  %815 = icmp eq i32 %814, 0
  %816 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %811, %dx.types.Handle %58, float %497, float %498, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %817 = extractvalue %dx.types.ResRet.f32 %816, 0
  %818 = extractvalue %dx.types.ResRet.f32 %816, 1
  %819 = extractvalue %dx.types.ResRet.f32 %816, 2
  %820 = fmul fast float %817, %167
  %821 = fmul fast float %818, %170
  %822 = fmul fast float %819, %173
  br i1 %815, label %829, label %823

; <label>:823                                     ; preds = %806
  %824 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %825 = extractvalue %dx.types.CBufRet.f32 %824, 0
  %826 = fmul fast float %825, %820
  %827 = fmul fast float %825, %821
  %828 = fmul fast float %825, %822
  br label %829

; <label>:829                                     ; preds = %823, %806
  %830 = phi float [ %826, %823 ], [ %820, %806 ]
  %831 = phi float [ %827, %823 ], [ %821, %806 ]
  %832 = phi float [ %828, %823 ], [ %822, %806 ]
  %833 = fmul fast float %830, %801
  %834 = select i1 %161, float %833, float %830
  %835 = call float @dx.op.dot3.f32(i32 55, float %834, float %831, float %832, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %836 = select i1 %161, float 0.000000e+00, float %830
  %837 = select i1 %161, float %835, float %831
  %838 = select i1 %161, float 0.000000e+00, float %832
  br label %839

; <label>:839                                     ; preds = %829, %791
  %840 = phi float [ %836, %829 ], [ 0.000000e+00, %791 ]
  %841 = phi float [ %837, %829 ], [ 0.000000e+00, %791 ]
  %842 = phi float [ %838, %829 ], [ 0.000000e+00, %791 ]
  %843 = add i32 %35, 96
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = and i32 %845, 255
  %847 = uitofp i32 %846 to float
  %848 = lshr i32 %845, 8
  %849 = and i32 %848, 255
  %850 = uitofp i32 %849 to float
  %851 = call float @dx.op.dot3.f32(i32 55, float %712, float %713, float %714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %852 = fmul fast float %850, %851
  %853 = fadd fast float %852, %847
  %854 = fmul fast float %853, 0x3F70101020000000
  %855 = call float @dx.op.unary.f32(i32 7, float %854)  ; Saturate(value)
  br label %856

; <label>:856                                     ; preds = %839, %383
  %857 = phi float [ 0.000000e+00, %383 ], [ %793, %839 ]
  %858 = phi float [ 0.000000e+00, %383 ], [ %794, %839 ]
  %859 = phi float [ 0.000000e+00, %383 ], [ %840, %839 ]
  %860 = phi float [ 0.000000e+00, %383 ], [ %841, %839 ]
  %861 = phi float [ 0.000000e+00, %383 ], [ %842, %839 ]
  %862 = phi float [ 0.000000e+00, %383 ], [ %712, %839 ]
  %863 = phi float [ 0.000000e+00, %383 ], [ %713, %839 ]
  %864 = phi float [ 0.000000e+00, %383 ], [ %714, %839 ]
  %865 = phi float [ 0.000000e+00, %383 ], [ %698, %839 ]
  %866 = phi float [ 0.000000e+00, %383 ], [ 1.000000e+00, %839 ]
  %867 = phi float [ 0.000000e+00, %383 ], [ %792, %839 ]
  %868 = phi float [ 0.000000e+00, %383 ], [ %795, %839 ]
  %869 = phi float [ 0.000000e+00, %383 ], [ %855, %839 ]
  br i1 %334, label %1711, label %870

; <label>:870                                     ; preds = %856
  %871 = icmp ult i32 %389, 2
  %872 = add i32 %35, 40
  %873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %874 = extractvalue %dx.types.ResRet.i32 %873, 0
  %875 = add i32 %35, 44
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = or i32 %877, %874
  %879 = icmp eq i32 %878, 0
  br i1 %879, label %1711, label %880

; <label>:880                                     ; preds = %870
  %881 = and i32 %874, 262144
  %882 = icmp ne i32 %881, 0
  %883 = select i1 %882, float %37, float 1.000000e+00
  %884 = select i1 %882, float %38, float 0.000000e+00
  %885 = select i1 %882, float %39, float 0.000000e+00
  %886 = select i1 %882, float %40, float 1.000000e+00
  %887 = select i1 %882, float %41, float %50
  %888 = select i1 %882, float %42, float %51
  %889 = add i32 %35, 300
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = lshr i32 %891, 16
  %893 = call float @dx.op.legacyF16ToF32(i32 131, i32 %892)  ; LegacyF16ToF32(value)
  %894 = fmul fast float %893, 0x3F50624DE0000000
  %895 = add i32 %35, 104
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = lshr i32 %897, 16
  %899 = and i32 %898, 255
  %900 = lshr i32 %897, 24
  %901 = add i32 %35, 308
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = and i32 %903, 65535
  %905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %904)  ; LegacyF16ToF32(value)
  %906 = lshr i32 %903, 16
  %907 = call float @dx.op.legacyF16ToF32(i32 131, i32 %906)  ; LegacyF16ToF32(value)
  %908 = add i32 %35, 48
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = lshr i32 %910, 22
  %912 = shl nuw nsw i32 %911, 5
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = shl i32 %910, 4
  %915 = and i32 %914, 32752
  %916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %915)  ; LegacyF16ToF32(value)
  %917 = lshr i32 %910, 7
  %918 = and i32 %917, 32752
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %921 = extractvalue %dx.types.CBufRet.f32 %920, 3
  %922 = fmul fast float %921, 1.000000e+03
  %923 = fmul fast float %244, %922
  %924 = call float @dx.op.unary.f32(i32 22, float %923)  ; Frc(value)
  %925 = fadd fast float %924, %234
  %926 = fmul fast float %245, %922
  %927 = call float @dx.op.unary.f32(i32 22, float %926)  ; Frc(value)
  %928 = fadd fast float %927, %236
  %929 = fmul fast float %894, %922
  %930 = call float @dx.op.unary.f32(i32 22, float %929)  ; Frc(value)
  %931 = fmul fast float %930, 0x401921FB60000000
  %932 = fadd fast float %931, %913
  %933 = call float @dx.op.unary.f32(i32 13, float %932)  ; Sin(value)
  %934 = call float @dx.op.unary.f32(i32 12, float %932)  ; Cos(value)
  %935 = fsub fast float -0.000000e+00, %933
  %936 = fadd fast float %887, -5.000000e-01
  %937 = fadd fast float %888, -5.000000e-01
  %938 = fmul fast float %905, %936
  %939 = fmul fast float %907, %937
  %940 = fadd fast float %938, 5.000000e-01
  %941 = fadd fast float %939, 5.000000e-01
  %942 = fmul fast float %916, %940
  %943 = fmul fast float %919, %941
  %944 = fmul fast float %934, %942
  %945 = call float @dx.op.tertiary.f32(i32 46, float %935, float %943, float %944)  ; FMad(a,b,c)
  %946 = fmul fast float %933, %942
  %947 = call float @dx.op.tertiary.f32(i32 46, float %934, float %943, float %946)  ; FMad(a,b,c)
  %948 = fadd fast float %925, %945
  %949 = fadd fast float %928, %947
  %950 = icmp ugt i32 %899, 1
  %951 = icmp ugt i32 %897, 33554431
  %952 = or i1 %951, %950
  br i1 %952, label %953, label %978

; <label>:953                                     ; preds = %880
  %954 = add i32 %35, 244
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = lshr i32 %956, 16
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = fmul fast float %921, %958
  %960 = call float @dx.op.unary.f32(i32 22, float %959)  ; Frc(value)
  %961 = mul nuw nsw i32 %899, %900
  %962 = uitofp i32 %961 to float
  %963 = fmul fast float %960, %962
  %964 = call float @dx.op.unary.f32(i32 27, float %963)  ; Round_ni(value)
  %965 = fptoui float %964 to i32
  %966 = urem i32 %965, %899
  %967 = udiv i32 %965, %900
  %968 = call float @dx.op.unary.f32(i32 22, float %948)  ; Frc(value)
  %969 = call float @dx.op.unary.f32(i32 22, float %949)  ; Frc(value)
  %970 = uitofp i32 %966 to float
  %971 = uitofp i32 %967 to float
  %972 = fadd fast float %968, %970
  %973 = fadd fast float %969, %971
  %974 = uitofp i32 %899 to float
  %975 = uitofp i32 %900 to float
  %976 = fdiv fast float %972, %974
  %977 = fdiv fast float %973, %975
  br label %978

; <label>:978                                     ; preds = %953, %880
  %979 = phi float [ %976, %953 ], [ %948, %880 ]
  %980 = phi float [ %977, %953 ], [ %949, %880 ]
  %981 = and i32 %874, 16777216
  %982 = icmp eq i32 %981, 0
  br i1 %982, label %1092, label %983

; <label>:983                                     ; preds = %978
  %984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %985 = extractvalue %dx.types.CBufRet.f32 %984, 0
  %986 = extractvalue %dx.types.CBufRet.f32 %984, 1
  %987 = extractvalue %dx.types.CBufRet.f32 %984, 2
  %988 = fadd fast float %985, %117
  %989 = fadd fast float %986, %118
  %990 = fadd fast float %987, %119
  %991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %992 = extractvalue %dx.types.CBufRet.f32 %991, 0
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  %994 = icmp eq i32 %36, 65535
  br i1 %994, label %1089, label %995

; <label>:995                                     ; preds = %983
  %996 = lshr i32 %36, 1
  %997 = shl i32 %996, 2
  %998 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %997, i32 undef)  ; BufferLoad(srv,index,wot)
  %999 = extractvalue %dx.types.ResRet.i32 %998, 0
  %1000 = and i32 %36, 1
  %1001 = icmp ne i32 %1000, 0
  %1002 = lshr i32 %999, 16
  %1003 = and i32 %999, 65535
  %1004 = select i1 %1001, i32 %1002, i32 %1003
  %1005 = icmp eq i32 %1004, 65535
  br i1 %1005, label %1085, label %1006

; <label>:1006                                    ; preds = %995
  %1007 = mul nuw nsw i32 %1004, 40
  %1008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1007, i32 undef)  ; BufferLoad(srv,index,wot)
  %1009 = extractvalue %dx.types.ResRet.f32 %1008, 0
  %1010 = extractvalue %dx.types.ResRet.f32 %1008, 1
  %1011 = extractvalue %dx.types.ResRet.f32 %1008, 2
  %1012 = add nuw nsw i32 %1007, 12
  %1013 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.f32 %1013, 0
  %1015 = extractvalue %dx.types.ResRet.f32 %1013, 1
  %1016 = extractvalue %dx.types.ResRet.f32 %1013, 2
  %1017 = add nuw nsw i32 %1007, 24
  %1018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.f32 %1018, 0
  %1020 = extractvalue %dx.types.ResRet.f32 %1018, 1
  %1021 = extractvalue %dx.types.ResRet.f32 %1018, 2
  %1022 = add nuw nsw i32 %1007, 36
  %1023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1022, i32 undef)  ; BufferLoad(srv,index,wot)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = fsub fast float %988, %1009
  %1026 = fsub fast float %989, %1010
  %1027 = fsub fast float %990, %1011
  %1028 = fmul fast float %1024, %1025
  %1029 = fmul fast float %1024, %1026
  %1030 = fmul fast float %1024, %1027
  %1031 = call float @dx.op.unary.f32(i32 27, float %1028)  ; Round_ni(value)
  %1032 = call float @dx.op.unary.f32(i32 27, float %1029)  ; Round_ni(value)
  %1033 = call float @dx.op.unary.f32(i32 27, float %1030)  ; Round_ni(value)
  %1034 = fadd fast float %1031, 5.000000e-01
  %1035 = fadd fast float %1032, 5.000000e-01
  %1036 = fadd fast float %1033, 5.000000e-01
  %1037 = fmul fast float %1034, %1014
  %1038 = fmul fast float %1035, %1015
  %1039 = fmul fast float %1036, %1016
  %1040 = shl i32 %36, 2
  %1041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1042 = extractvalue %dx.types.ResRet.i32 %1041, 0
  %1043 = add i32 %1042, 0
  %1044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1043, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1045 = call float @dx.op.unary.f32(i32 22, float %1037)  ; Frc(value)
  %1046 = call float @dx.op.unary.f32(i32 22, float %1038)  ; Frc(value)
  %1047 = call float @dx.op.unary.f32(i32 22, float %1039)  ; Frc(value)
  %1048 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1044, %dx.types.Handle %32, float %1045, float %1046, float %1047, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = fmul fast float %1049, 1.023000e+03
  %1053 = fmul fast float %1050, 1.023000e+03
  %1054 = fmul fast float %1051, 1.023000e+03
  %1055 = fadd fast float %1052, 5.000000e-01
  %1056 = fadd fast float %1053, 5.000000e-01
  %1057 = fadd fast float %1054, 5.000000e-01
  %1058 = call float @dx.op.unary.f32(i32 27, float %1055)  ; Round_ni(value)
  %1059 = call float @dx.op.unary.f32(i32 27, float %1056)  ; Round_ni(value)
  %1060 = call float @dx.op.unary.f32(i32 27, float %1057)  ; Round_ni(value)
  %1061 = fsub fast float %1028, %1031
  %1062 = fsub fast float %1029, %1032
  %1063 = fsub fast float %1030, %1033
  %1064 = fmul fast float %1061, 7.500000e-01
  %1065 = fmul fast float %1062, 7.500000e-01
  %1066 = fmul fast float %1063, 7.500000e-01
  %1067 = fadd fast float %1031, 1.250000e-01
  %1068 = fadd fast float %1067, %1064
  %1069 = fadd fast float %1068, %1058
  %1070 = fadd fast float %1032, 1.250000e-01
  %1071 = fadd fast float %1070, %1065
  %1072 = fadd fast float %1071, %1059
  %1073 = fadd fast float %1033, 1.250000e-01
  %1074 = fadd fast float %1073, %1066
  %1075 = fadd fast float %1074, %1060
  %1076 = fmul fast float %1069, %1019
  %1077 = fmul fast float %1072, %1020
  %1078 = fmul fast float %1075, %1021
  %1079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1040, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.i32 %1079, 0
  %1081 = add i32 %1080, 0
  %1082 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1081, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1082, %dx.types.Handle %30, float %1076, float %1077, float %1078, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  br label %1085

; <label>:1085                                    ; preds = %1006, %995
  %1086 = phi float [ %1084, %1006 ], [ -1.000000e+00, %995 ]
  %1087 = fadd fast float %1086, %993
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  br label %1089

; <label>:1089                                    ; preds = %1085, %983
  %1090 = phi float [ %1088, %1085 ], [ %993, %983 ]
  %1091 = fmul fast float %1090, %386
  br label %1092

; <label>:1092                                    ; preds = %1089, %978
  %1093 = phi float [ %1091, %1089 ], [ %386, %978 ]
  %1094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1095 = extractvalue %dx.types.ResRet.i32 %1094, 0
  %1096 = and i32 %1095, 256
  %1097 = icmp eq i32 %1096, 0
  br i1 %1097, label %1144, label %1098

; <label>:1098                                    ; preds = %1092
  %1099 = add i32 %35, 428
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1099, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = add i32 %1101, 0
  %1103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1104 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1103, %dx.types.Handle %59, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  %1106 = add i32 %35, 116
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = shl i32 %1108, 4
  %1110 = and i32 %1109, 32752
  %1111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1110)  ; LegacyF16ToF32(value)
  %1112 = lshr i32 %1108, 7
  %1113 = and i32 %1112, 32752
  %1114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1113)  ; LegacyF16ToF32(value)
  %1115 = fsub fast float 1.000000e+00, %1093
  %1116 = call float @dx.op.binary.f32(i32 35, float %1115, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1117 = bitcast float %1093 to i32
  %1118 = sitofp i32 %1117 to float
  %1119 = fadd fast float %1118, 0xC1CFBF8940000000
  %1120 = fmul fast float %1114, %1119
  %1121 = fadd fast float %1120, 0x41CFBF8940000000
  %1122 = fptosi float %1121 to i32
  %1123 = bitcast i32 %1122 to float
  %1124 = bitcast float %1116 to i32
  %1125 = sitofp i32 %1124 to float
  %1126 = fadd fast float %1125, 0xC1CFBF8940000000
  %1127 = fmul fast float %1126, %1114
  %1128 = fadd fast float %1127, 0x41CFBF8940000000
  %1129 = fptosi float %1128 to i32
  %1130 = bitcast i32 %1129 to float
  %1131 = fmul fast float %1123, %1111
  %1132 = fmul fast float %1130, %1111
  %1133 = fsub fast float %1116, %1131
  %1134 = fadd fast float %1132, %1116
  %1135 = call float @dx.op.unary.f32(i32 7, float %1133)  ; Saturate(value)
  %1136 = call float @dx.op.unary.f32(i32 7, float %1134)  ; Saturate(value)
  %1137 = fsub fast float %1105, %1135
  %1138 = fsub fast float %1136, %1135
  %1139 = bitcast float %1138 to i32
  %1140 = sub nsw i32 2129859010, %1139
  %1141 = bitcast i32 %1140 to float
  %1142 = fmul fast float %1141, %1137
  %1143 = call float @dx.op.unary.f32(i32 7, float %1142)  ; Saturate(value)
  br label %1144

; <label>:1144                                    ; preds = %1098, %1092
  %1145 = phi float [ %1143, %1098 ], [ %1093, %1092 ]
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = and i32 %1147, 128
  %1149 = icmp eq i32 %1148, 0
  br i1 %1149, label %1166, label %1150

; <label>:1150                                    ; preds = %1144
  %1151 = add i32 %35, 412
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1151, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = add i32 %1153, 0
  %1155 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1154, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1156 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1155, %dx.types.Handle %59, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1157 = extractvalue %dx.types.ResRet.f32 %1156, 0
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = and i32 %1159, 524288
  %1161 = icmp ne i32 %1160, 0
  %1162 = fcmp fast ogt float %1157, 0x3FE0101020000000
  %1163 = select i1 %1162, float 1.000000e+00, float 0.000000e+00
  %1164 = select i1 %1161, float %1163, float %1157
  %1165 = fmul fast float %1164, %1145
  br label %1166

; <label>:1166                                    ; preds = %1150, %1144
  %1167 = phi float [ %1165, %1150 ], [ %1145, %1144 ]
  %1168 = fcmp fast ult float %1167, 0x3F70101020000000
  br i1 %1168, label %1711, label %1169

; <label>:1169                                    ; preds = %1166
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = and i32 %1171, 16
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1372, label %1174

; <label>:1174                                    ; preds = %1169
  %1175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1176 = extractvalue %dx.types.ResRet.i32 %1175, 0
  %1177 = add i32 %35, 364
  %1178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1177, i32 undef)  ; BufferLoad(srv,index,wot)
  %1179 = extractvalue %dx.types.ResRet.i32 %1178, 0
  %1180 = add i32 %1179, 0
  %1181 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1180, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1182 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1181, %dx.types.Handle %58, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1183 = extractvalue %dx.types.ResRet.f32 %1182, 0
  %1184 = extractvalue %dx.types.ResRet.f32 %1182, 1
  %1185 = extractvalue %dx.types.ResRet.f32 %1182, 2
  %1186 = extractvalue %dx.types.ResRet.f32 %1182, 3
  %1187 = and i32 %1176, 255
  %1188 = uitofp i32 %1187 to float
  %1189 = lshr i32 %1176, 8
  %1190 = and i32 %1189, 255
  %1191 = uitofp i32 %1190 to float
  %1192 = fmul fast float %1186, %1188
  %1193 = fadd fast float %1192, %1191
  %1194 = fmul fast float %1193, 0x3F70101000000000
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = and i32 %1196, 512
  %1198 = icmp eq i32 %1197, 0
  br i1 %1198, label %1207, label %1199

; <label>:1199                                    ; preds = %1174
  %1200 = add i32 %35, 444
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1200, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = add i32 %1202, 0
  %1204 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1203, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1204, %dx.types.Handle %59, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1206 = extractvalue %dx.types.ResRet.f32 %1205, 0
  br label %1207

; <label>:1207                                    ; preds = %1199, %1174
  %1208 = phi float [ %1206, %1199 ], [ 1.000000e+00, %1174 ]
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = and i32 %1210, 33554432
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1319, label %1213

; <label>:1213                                    ; preds = %1207
  %1214 = add i32 %35, 240
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 65535
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = lshr i32 %1216, 16
  %1220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1219)  ; LegacyF16ToF32(value)
  %1221 = add i32 %35, 244
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = and i32 %1223, 65535
  %1225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1224)  ; LegacyF16ToF32(value)
  %1226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1227 = extractvalue %dx.types.ResRet.i32 %1226, 0
  %1228 = lshr i32 %1227, 24
  %1229 = uitofp i32 %1228 to float
  %1230 = fmul fast float %1229, 0x3F70101020000000
  %1231 = and i32 %1227, 255
  %1232 = uitofp i32 %1231 to float
  %1233 = fmul fast float %1232, 0x3F70101020000000
  %1234 = lshr i32 %1227, 8
  %1235 = and i32 %1234, 255
  %1236 = uitofp i32 %1235 to float
  %1237 = fmul fast float %1236, 0x3F70101020000000
  %1238 = lshr i32 %1227, 16
  %1239 = and i32 %1238, 255
  %1240 = uitofp i32 %1239 to float
  %1241 = fmul fast float %1240, 0x3F70101020000000
  %1242 = add i32 %35, 236
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = lshr i32 %1244, 24
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = and i32 %1244, 255
  %1249 = uitofp i32 %1248 to float
  %1250 = fmul fast float %1249, 0x3F70101020000000
  %1251 = lshr i32 %1244, 8
  %1252 = and i32 %1251, 255
  %1253 = uitofp i32 %1252 to float
  %1254 = fmul fast float %1253, 0x3F70101020000000
  %1255 = lshr i32 %1244, 16
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1257, 0x3F70101020000000
  %1259 = bitcast float %1183 to i32
  %1260 = ashr i32 %1259, 1
  %1261 = sub nsw i32 1597463174, %1260
  %1262 = bitcast i32 %1261 to float
  %1263 = fmul fast float %1183, 5.000000e-01
  %1264 = fmul fast float %1262, %1262
  %1265 = fmul fast float %1264, %1263
  %1266 = fsub fast float 1.500000e+00, %1265
  %1267 = fmul fast float %1262, %1183
  %1268 = fmul fast float %1267, %1266
  %1269 = bitcast float %1184 to i32
  %1270 = ashr i32 %1269, 1
  %1271 = sub nsw i32 1597463174, %1270
  %1272 = bitcast i32 %1271 to float
  %1273 = fmul fast float %1184, 5.000000e-01
  %1274 = fmul fast float %1272, %1272
  %1275 = fmul fast float %1274, %1273
  %1276 = fsub fast float 1.500000e+00, %1275
  %1277 = fmul fast float %1272, %1184
  %1278 = fmul fast float %1277, %1276
  %1279 = bitcast float %1185 to i32
  %1280 = ashr i32 %1279, 1
  %1281 = sub nsw i32 1597463174, %1280
  %1282 = bitcast i32 %1281 to float
  %1283 = fmul fast float %1185, 5.000000e-01
  %1284 = fmul fast float %1282, %1282
  %1285 = fmul fast float %1284, %1283
  %1286 = fsub fast float 1.500000e+00, %1285
  %1287 = fmul fast float %1282, %1185
  %1288 = fmul fast float %1287, %1286
  %1289 = fsub fast float %1268, %1250
  %1290 = fsub fast float %1278, %1254
  %1291 = fsub fast float %1288, %1258
  %1292 = fmul fast float %1289, %1218
  %1293 = fmul fast float %1290, %1220
  %1294 = fmul fast float %1291, %1225
  %1295 = fadd fast float %1292, %1233
  %1296 = fadd fast float %1293, %1237
  %1297 = fadd fast float %1294, %1241
  %1298 = call float @dx.op.unary.f32(i32 7, float %1295)  ; Saturate(value)
  %1299 = call float @dx.op.unary.f32(i32 7, float %1296)  ; Saturate(value)
  %1300 = call float @dx.op.unary.f32(i32 7, float %1297)  ; Saturate(value)
  %1301 = fmul fast float %1298, %1298
  %1302 = fmul fast float %1299, %1299
  %1303 = fmul fast float %1300, %1300
  %1304 = fsub fast float %1301, %1183
  %1305 = fsub fast float %1302, %1184
  %1306 = fsub fast float %1303, %1185
  %1307 = fmul fast float %1304, %1208
  %1308 = fmul fast float %1305, %1208
  %1309 = fmul fast float %1306, %1208
  %1310 = fadd fast float %1307, %1183
  %1311 = fadd fast float %1308, %1184
  %1312 = fadd fast float %1309, %1185
  %1313 = fadd fast float %1230, %1194
  %1314 = fsub fast float %1313, %1247
  %1315 = call float @dx.op.unary.f32(i32 7, float %1314)  ; Saturate(value)
  %1316 = fsub fast float %1315, %1194
  %1317 = fmul fast float %1316, %1208
  %1318 = fadd fast float %1317, %1194
  br label %1372

; <label>:1319                                    ; preds = %1207
  %1320 = and i32 %1210, 134217728
  %1321 = icmp eq i32 %1320, 0
  br i1 %1321, label %1356, label %1322

; <label>:1322                                    ; preds = %1319
  %1323 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %1324 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %1325 = call float @dx.op.unary.f32(i32 24, float %229)  ; Sqrt(value)
  %1326 = fadd fast float %1323, -5.000000e-01
  %1327 = fadd fast float %1324, -5.000000e-01
  %1328 = fadd fast float %1325, -5.000000e-01
  %1329 = fmul fast float %1326, %1208
  %1330 = fmul fast float %1327, %1208
  %1331 = fmul fast float %1328, %1208
  %1332 = fadd fast float %1329, 5.000000e-01
  %1333 = fadd fast float %1330, 5.000000e-01
  %1334 = fadd fast float %1331, 5.000000e-01
  %1335 = call float @dx.op.unary.f32(i32 24, float %1183)  ; Sqrt(value)
  %1336 = call float @dx.op.unary.f32(i32 24, float %1184)  ; Sqrt(value)
  %1337 = call float @dx.op.unary.f32(i32 24, float %1185)  ; Sqrt(value)
  %1338 = fmul fast float %1332, 2.000000e+00
  %1339 = fsub fast float 1.000000e+00, %1338
  %1340 = fmul fast float %1339, %1335
  %1341 = fadd fast float %1340, %1338
  %1342 = fmul fast float %1341, %1335
  %1343 = fmul fast float %1333, 2.000000e+00
  %1344 = fsub fast float 1.000000e+00, %1343
  %1345 = fmul fast float %1344, %1336
  %1346 = fadd fast float %1345, %1343
  %1347 = fmul fast float %1346, %1336
  %1348 = fmul fast float %1334, 2.000000e+00
  %1349 = fsub fast float 1.000000e+00, %1348
  %1350 = fmul fast float %1349, %1337
  %1351 = fadd fast float %1350, %1348
  %1352 = fmul fast float %1351, %1337
  %1353 = fmul fast float %1342, %1342
  %1354 = fmul fast float %1347, %1347
  %1355 = fmul fast float %1352, %1352
  br label %1372

; <label>:1356                                    ; preds = %1319
  %1357 = fmul fast float %221, %221
  %1358 = fmul fast float %225, %225
  %1359 = fmul fast float %229, %229
  %1360 = fadd fast float %1357, -1.000000e+00
  %1361 = fadd fast float %1358, -1.000000e+00
  %1362 = fadd fast float %1359, -1.000000e+00
  %1363 = fmul fast float %1208, %1360
  %1364 = fmul fast float %1208, %1361
  %1365 = fmul fast float %1208, %1362
  %1366 = fadd fast float %1363, 1.000000e+00
  %1367 = fadd fast float %1364, 1.000000e+00
  %1368 = fadd fast float %1365, 1.000000e+00
  %1369 = fmul fast float %1366, %1183
  %1370 = fmul fast float %1367, %1184
  %1371 = fmul fast float %1368, %1185
  br label %1372

; <label>:1372                                    ; preds = %1356, %1322, %1213, %1169
  %1373 = phi float [ %1318, %1213 ], [ %1194, %1322 ], [ %1194, %1356 ], [ 0x3FA23C0BE0000000, %1169 ]
  %1374 = phi float [ %1310, %1213 ], [ %1353, %1322 ], [ %1369, %1356 ], [ 1.000000e+00, %1169 ]
  %1375 = phi float [ %1311, %1213 ], [ %1354, %1322 ], [ %1370, %1356 ], [ 1.000000e+00, %1169 ]
  %1376 = phi float [ %1312, %1213 ], [ %1355, %1322 ], [ %1371, %1356 ], [ 1.000000e+00, %1169 ]
  %1377 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1378 = extractvalue %dx.types.CBufRet.i32 %1377, 1
  %1379 = and i32 %1378, 1
  %1380 = icmp ne i32 %1379, 0
  %1381 = add i32 %35, 356
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1381, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %1383, 32
  %1385 = icmp ne i32 %1384, 0
  %1386 = and i1 %1380, %1385
  %1387 = select i1 %1386, float 1.000000e+00, float %1374
  %1388 = select i1 %1386, float 0x3FD3333340000000, float %1375
  %1389 = select i1 %1386, float 0x3FD3333340000000, float %1376
  %1390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1391 = extractvalue %dx.types.ResRet.i32 %1390, 0
  %1392 = and i32 %1391, 32
  %1393 = icmp eq i32 %1392, 0
  br i1 %1393, label %1466, label %1394

; <label>:1394                                    ; preds = %1372
  %1395 = add i32 %35, 108
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1395, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = add i32 %35, 380
  %1399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1398, i32 undef)  ; BufferLoad(srv,index,wot)
  %1400 = extractvalue %dx.types.ResRet.i32 %1399, 0
  %1401 = add i32 %1400, 0
  %1402 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1401, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1403 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1402, %dx.types.Handle %58, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1404 = extractvalue %dx.types.ResRet.f32 %1403, 0
  %1405 = extractvalue %dx.types.ResRet.f32 %1403, 1
  %1406 = extractvalue %dx.types.ResRet.f32 %1403, 2
  %1407 = extractvalue %dx.types.ResRet.f32 %1403, 3
  %1408 = and i32 %1397, 255
  %1409 = uitofp i32 %1408 to float
  %1410 = lshr i32 %1397, 8
  %1411 = and i32 %1410, 255
  %1412 = uitofp i32 %1411 to float
  %1413 = lshr i32 %1397, 16
  %1414 = and i32 %1413, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = fmul fast float %1415, 0x3F70101000000000
  %1417 = fmul fast float %1404, %1409
  %1418 = fadd fast float %1417, %1412
  %1419 = fmul fast float %1418, 0x3F70101000000000
  %1420 = fadd fast float %1405, -5.000000e-01
  %1421 = fadd fast float %1407, -5.000000e-01
  %1422 = fmul fast float %1420, %1416
  %1423 = fmul fast float %1421, %1416
  %1424 = fadd fast float %1422, 5.000000e-01
  %1425 = fadd fast float %1423, 5.000000e-01
  %1426 = fmul fast float %1424, 2.000000e+00
  %1427 = fadd fast float %1426, -1.000000e+00
  %1428 = fmul fast float %1425, 2.000000e+00
  %1429 = fadd fast float %1428, -1.000000e+00
  %1430 = fadd fast float %1427, %1429
  %1431 = fmul fast float %1430, 5.000000e-01
  %1432 = fsub fast float %1427, %1429
  %1433 = fmul fast float %1432, 5.000000e-01
  %1434 = call float @dx.op.unary.f32(i32 6, float %1431)  ; FAbs(value)
  %1435 = fsub fast float 1.000000e+00, %1434
  %1436 = call float @dx.op.unary.f32(i32 6, float %1433)  ; FAbs(value)
  %1437 = fsub fast float %1435, %1436
  %1438 = call float @dx.op.dot3.f32(i32 55, float %1431, float %1433, float %1437, float %1431, float %1433, float %1437)  ; Dot3(ax,ay,az,bx,by,bz)
  %1439 = call float @dx.op.unary.f32(i32 25, float %1438)  ; Rsqrt(value)
  %1440 = fmul fast float %1431, %1439
  %1441 = fmul fast float %1433, %1439
  %1442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1443 = extractvalue %dx.types.ResRet.i32 %1442, 0
  %1444 = and i32 %1443, 67108864
  %1445 = icmp eq i32 %1444, 0
  br i1 %1445, label %1462, label %1446

; <label>:1446                                    ; preds = %1394
  %1447 = add i32 %35, 296
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 65535
  %1451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1450)  ; LegacyF16ToF32(value)
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %889, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = and i32 %1453, 65535
  %1455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1454)  ; LegacyF16ToF32(value)
  %1456 = lshr i32 %1449, 16
  %1457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1456)  ; LegacyF16ToF32(value)
  %1458 = fsub fast float %1419, %1457
  %1459 = fmul fast float %1458, %1451
  %1460 = fadd fast float %1459, %1455
  %1461 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  br label %1462

; <label>:1462                                    ; preds = %1446, %1394
  %1463 = phi float [ %1461, %1446 ], [ %1419, %1394 ]
  %1464 = call float @dx.op.dot2.f32(i32 54, float %1440, float %1441, float %883, float %884)  ; Dot2(ax,ay,bx,by)
  %1465 = call float @dx.op.dot2.f32(i32 54, float %1440, float %1441, float %885, float %886)  ; Dot2(ax,ay,bx,by)
  br label %1466

; <label>:1466                                    ; preds = %1462, %1372
  %1467 = phi float [ %1463, %1462 ], [ 0x3FD6666660000000, %1372 ]
  %1468 = phi float [ %1464, %1462 ], [ 0.000000e+00, %1372 ]
  %1469 = phi float [ %1465, %1462 ], [ 0.000000e+00, %1372 ]
  %1470 = phi float [ %1406, %1462 ], [ 1.000000e+00, %1372 ]
  %1471 = add i32 %35, 176
  %1472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1471, i32 undef)  ; BufferLoad(srv,index,wot)
  %1473 = extractvalue %dx.types.ResRet.i32 %1472, 0
  %1474 = lshr i32 %1473, 22
  %1475 = shl nuw nsw i32 %1474, 5
  %1476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1475)  ; LegacyF16ToF32(value)
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 64
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1514, label %1481

; <label>:1481                                    ; preds = %1466
  %1482 = add i32 %35, 396
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = add i32 %1484, 0
  %1486 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1485, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 131072
  %1490 = icmp eq i32 %1489, 0
  %1491 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1486, %dx.types.Handle %58, float %979, float %980, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1492 = extractvalue %dx.types.ResRet.f32 %1491, 0
  %1493 = extractvalue %dx.types.ResRet.f32 %1491, 1
  %1494 = extractvalue %dx.types.ResRet.f32 %1491, 2
  %1495 = fmul fast float %1492, %209
  %1496 = fmul fast float %1493, %212
  %1497 = fmul fast float %1494, %215
  br i1 %1490, label %1504, label %1498

; <label>:1498                                    ; preds = %1481
  %1499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1500 = extractvalue %dx.types.CBufRet.f32 %1499, 0
  %1501 = fmul fast float %1500, %1495
  %1502 = fmul fast float %1500, %1496
  %1503 = fmul fast float %1500, %1497
  br label %1504

; <label>:1504                                    ; preds = %1498, %1481
  %1505 = phi float [ %1501, %1498 ], [ %1495, %1481 ]
  %1506 = phi float [ %1502, %1498 ], [ %1496, %1481 ]
  %1507 = phi float [ %1503, %1498 ], [ %1497, %1481 ]
  %1508 = fmul fast float %1505, %1476
  %1509 = select i1 %161, float %1508, float %1505
  %1510 = call float @dx.op.dot3.f32(i32 55, float %1509, float %1506, float %1507, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1511 = select i1 %161, float 0.000000e+00, float %1505
  %1512 = select i1 %161, float %1510, float %1506
  %1513 = select i1 %161, float 0.000000e+00, float %1507
  br label %1514

; <label>:1514                                    ; preds = %1504, %1466
  %1515 = phi float [ %1511, %1504 ], [ 0.000000e+00, %1466 ]
  %1516 = phi float [ %1512, %1504 ], [ 0.000000e+00, %1466 ]
  %1517 = phi float [ %1513, %1504 ], [ 0.000000e+00, %1466 ]
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = add i32 %35, 112
  %1521 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1520, i32 undef)  ; BufferLoad(srv,index,wot)
  %1522 = extractvalue %dx.types.ResRet.i32 %1521, 0
  %1523 = and i32 %1522, 255
  %1524 = uitofp i32 %1523 to float
  %1525 = lshr i32 %1522, 8
  %1526 = and i32 %1525, 255
  %1527 = uitofp i32 %1526 to float
  %1528 = call float @dx.op.dot3.f32(i32 55, float %1387, float %1388, float %1389, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1529 = fmul fast float %1527, %1528
  %1530 = fadd fast float %1529, %1524
  %1531 = fmul fast float %1530, 0x3F70101020000000
  %1532 = call float @dx.op.unary.f32(i32 7, float %1531)  ; Saturate(value)
  br i1 %871, label %1533, label %1541

; <label>:1533                                    ; preds = %1514
  %1534 = fsub fast float 1.000000e+00, %1167
  %1535 = fmul fast float %1534, %862
  %1536 = fmul fast float %1534, %863
  %1537 = fmul fast float %1534, %864
  %1538 = fmul fast float %1534, %859
  %1539 = fmul fast float %1534, %860
  %1540 = fmul fast float %1534, %861
  br label %1541

; <label>:1541                                    ; preds = %1533, %1514
  %1542 = phi float [ %1538, %1533 ], [ %859, %1514 ]
  %1543 = phi float [ %1539, %1533 ], [ %860, %1514 ]
  %1544 = phi float [ %1540, %1533 ], [ %861, %1514 ]
  %1545 = phi float [ %1535, %1533 ], [ %862, %1514 ]
  %1546 = phi float [ %1536, %1533 ], [ %863, %1514 ]
  %1547 = phi float [ %1537, %1533 ], [ %864, %1514 ]
  %1548 = and i32 %1519, 3
  %1549 = icmp eq i32 %1548, 3
  br i1 %1549, label %1628, label %1550

; <label>:1550                                    ; preds = %1541
  %1551 = and i32 %1519, 16
  %1552 = icmp ne i32 %1551, 0
  %1553 = select i1 %1552, float %1167, float 0.000000e+00
  %1554 = icmp eq i32 %1548, 0
  br i1 %1554, label %1555, label %1583

; <label>:1555                                    ; preds = %1550
  %1556 = and i32 %1519, 64
  %1557 = icmp ne i32 %1556, 0
  %1558 = select i1 %1557, float %1167, float 0.000000e+00
  %1559 = fsub fast float %1387, %1545
  %1560 = fsub fast float %1388, %1546
  %1561 = fsub fast float %1389, %1547
  %1562 = fmul fast float %1553, %1559
  %1563 = fmul fast float %1553, %1560
  %1564 = fmul fast float %1553, %1561
  %1565 = fadd fast float %1562, %1545
  %1566 = fadd fast float %1563, %1546
  %1567 = fadd fast float %1564, %1547
  %1568 = fsub fast float %1373, %865
  %1569 = fmul fast float %1553, %1568
  %1570 = fadd fast float %1569, %865
  %1571 = fsub fast float %1515, %1542
  %1572 = fsub fast float %1516, %1543
  %1573 = fsub fast float %1517, %1544
  %1574 = fmul fast float %1558, %1571
  %1575 = fmul fast float %1558, %1572
  %1576 = fmul fast float %1558, %1573
  %1577 = fadd fast float %1574, %1542
  %1578 = fadd fast float %1575, %1543
  %1579 = fadd fast float %1576, %1544
  %1580 = fsub fast float %1532, %869
  %1581 = fmul fast float %1553, %1580
  %1582 = fadd fast float %1581, %869
  br label %1628

; <label>:1583                                    ; preds = %1550
  %1584 = icmp eq i32 %1548, 1
  br i1 %1584, label %1585, label %1598

; <label>:1585                                    ; preds = %1583
  %1586 = fadd fast float %1387, -1.000000e+00
  %1587 = fadd fast float %1388, -1.000000e+00
  %1588 = fadd fast float %1389, -1.000000e+00
  %1589 = fmul fast float %1553, %1586
  %1590 = fmul fast float %1553, %1587
  %1591 = fmul fast float %1553, %1588
  %1592 = fadd fast float %1589, 1.000000e+00
  %1593 = fadd fast float %1590, 1.000000e+00
  %1594 = fadd fast float %1591, 1.000000e+00
  %1595 = fmul fast float %1592, %1545
  %1596 = fmul fast float %1593, %1546
  %1597 = fmul fast float %1594, %1547
  br label %1628

; <label>:1598                                    ; preds = %1583
  %1599 = icmp eq i32 %1548, 2
  br i1 %1599, label %1600, label %1628

; <label>:1600                                    ; preds = %1598
  %1601 = call float @dx.op.unary.f32(i32 24, float %1387)  ; Sqrt(value)
  %1602 = call float @dx.op.unary.f32(i32 24, float %1388)  ; Sqrt(value)
  %1603 = call float @dx.op.unary.f32(i32 24, float %1389)  ; Sqrt(value)
  %1604 = fadd fast float %1601, -5.000000e-01
  %1605 = fadd fast float %1602, -5.000000e-01
  %1606 = fadd fast float %1603, -5.000000e-01
  %1607 = fmul fast float %1604, %1553
  %1608 = fmul fast float %1605, %1553
  %1609 = fmul fast float %1606, %1553
  %1610 = fadd fast float %1607, 5.000000e-01
  %1611 = fadd fast float %1608, 5.000000e-01
  %1612 = fadd fast float %1609, 5.000000e-01
  %1613 = fmul fast float %1610, 2.000000e+00
  %1614 = fsub fast float 1.000000e+00, %1613
  %1615 = fmul fast float %1614, %1545
  %1616 = fadd fast float %1615, %1613
  %1617 = fmul fast float %1616, %1545
  %1618 = fmul fast float %1611, 2.000000e+00
  %1619 = fsub fast float 1.000000e+00, %1618
  %1620 = fmul fast float %1619, %1546
  %1621 = fadd fast float %1620, %1618
  %1622 = fmul fast float %1621, %1546
  %1623 = fmul fast float %1612, 2.000000e+00
  %1624 = fsub fast float 1.000000e+00, %1623
  %1625 = fmul fast float %1624, %1547
  %1626 = fadd fast float %1625, %1623
  %1627 = fmul fast float %1626, %1547
  br label %1628

; <label>:1628                                    ; preds = %1600, %1598, %1585, %1555, %1541
  %1629 = phi float [ %1542, %1541 ], [ %1542, %1600 ], [ %1542, %1598 ], [ %1542, %1585 ], [ %1577, %1555 ]
  %1630 = phi float [ %1543, %1541 ], [ %1543, %1600 ], [ %1543, %1598 ], [ %1543, %1585 ], [ %1578, %1555 ]
  %1631 = phi float [ %1544, %1541 ], [ %1544, %1600 ], [ %1544, %1598 ], [ %1544, %1585 ], [ %1579, %1555 ]
  %1632 = phi float [ %1545, %1541 ], [ %1617, %1600 ], [ %1545, %1598 ], [ %1595, %1585 ], [ %1565, %1555 ]
  %1633 = phi float [ %1546, %1541 ], [ %1622, %1600 ], [ %1546, %1598 ], [ %1596, %1585 ], [ %1566, %1555 ]
  %1634 = phi float [ %1547, %1541 ], [ %1627, %1600 ], [ %1547, %1598 ], [ %1597, %1585 ], [ %1567, %1555 ]
  %1635 = phi float [ %865, %1541 ], [ %865, %1600 ], [ %865, %1598 ], [ %865, %1585 ], [ %1570, %1555 ]
  %1636 = phi float [ %869, %1541 ], [ %869, %1600 ], [ %869, %1598 ], [ %869, %1585 ], [ %1582, %1555 ]
  %1637 = and i32 %1519, 12
  %1638 = icmp eq i32 %1637, 12
  br i1 %1638, label %1711, label %1639

; <label>:1639                                    ; preds = %1628
  %1640 = and i32 %1519, 2097184
  %1641 = icmp eq i32 %1640, 2097184
  %1642 = select i1 %1641, float %1167, float 0.000000e+00
  %1643 = and i32 %1519, 4194336
  %1644 = icmp eq i32 %1643, 4194336
  %1645 = select i1 %1644, float %1167, float 0.000000e+00
  %1646 = and i32 %1519, 8388640
  %1647 = icmp eq i32 %1646, 8388640
  %1648 = select i1 %1647, float %1167, float 0.000000e+00
  %1649 = icmp eq i32 %1637, 0
  br i1 %1649, label %1650, label %1663

; <label>:1650                                    ; preds = %1639
  %1651 = fsub fast float %1468, %857
  %1652 = fsub fast float %1469, %858
  %1653 = fmul fast float %1642, %1651
  %1654 = fmul fast float %1642, %1652
  %1655 = fadd fast float %1653, %857
  %1656 = fadd fast float %1654, %858
  %1657 = fsub fast float %1470, %868
  %1658 = fmul fast float %1645, %1657
  %1659 = fadd fast float %1658, %868
  %1660 = fsub fast float %1467, %867
  %1661 = fmul fast float %1648, %1660
  %1662 = fadd fast float %1661, %867
  br label %1711

; <label>:1663                                    ; preds = %1639
  %1664 = icmp eq i32 %1637, 4
  br i1 %1664, label %1665, label %1697

; <label>:1665                                    ; preds = %1663
  %1666 = fmul fast float %1642, %1468
  %1667 = fmul fast float %1642, %1469
  %1668 = fadd fast float %1666, %857
  %1669 = fadd fast float %1667, %858
  %1670 = call float @dx.op.binary.f32(i32 36, float %868, float %1470)  ; FMin(a,b)
  %1671 = fsub fast float %1670, %868
  %1672 = fmul fast float %1671, %1645
  %1673 = fadd fast float %1672, %868
  %1674 = fadd fast float %1467, %867
  %1675 = fmul fast float %1674, 0x3FF337FAE0000000
  %1676 = fmul fast float %867, %867
  %1677 = fmul fast float %1467, %1467
  %1678 = fadd fast float %1677, %1676
  %1679 = fmul fast float %1678, 0x3FE5152B00000000
  %1680 = fmul fast float %867, 0xBFCC1F85E0000000
  %1681 = fmul fast float %1680, %1467
  %1682 = fadd fast float %1681, 0xBFE1363700000000
  %1683 = fadd fast float %1682, %1675
  %1684 = fsub fast float %1683, %1679
  %1685 = fmul fast float %1674, 0x3FBA6F0D00000000
  %1686 = fmul fast float %1678, 0x3FD0432880000000
  %1687 = fmul fast float %867, 0xBFEF110800000000
  %1688 = fmul fast float %1687, %1467
  %1689 = fadd fast float %1688, 1.000000e+00
  %1690 = fsub fast float %1689, %1685
  %1691 = fadd fast float %1690, %1686
  %1692 = fdiv fast float %1684, %1691
  %1693 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1694 = fsub fast float %1693, %867
  %1695 = fmul fast float %1694, %1648
  %1696 = fadd fast float %1695, %867
  br label %1711

; <label>:1697                                    ; preds = %1663
  %1698 = icmp eq i32 %1637, 8
  br i1 %1698, label %1699, label %1711

; <label>:1699                                    ; preds = %1697
  %1700 = fmul fast float %1642, %1468
  %1701 = fmul fast float %1642, %1469
  %1702 = fadd fast float %1700, %857
  %1703 = fadd fast float %1701, %858
  %1704 = call float @dx.op.binary.f32(i32 36, float %868, float %1470)  ; FMin(a,b)
  %1705 = fsub fast float %1704, %868
  %1706 = fmul fast float %1705, %1645
  %1707 = fadd fast float %1706, %868
  %1708 = fsub fast float %1467, %867
  %1709 = fmul fast float %1648, %1708
  %1710 = fadd fast float %1709, %867
  br label %1711

; <label>:1711                                    ; preds = %1699, %1697, %1665, %1650, %1628, %1166, %870, %856
  %1712 = phi float [ %857, %1628 ], [ %857, %1166 ], [ %857, %856 ], [ %1702, %1699 ], [ %857, %1697 ], [ %1668, %1665 ], [ %1655, %1650 ], [ %857, %870 ]
  %1713 = phi float [ %858, %1628 ], [ %858, %1166 ], [ %858, %856 ], [ %1703, %1699 ], [ %858, %1697 ], [ %1669, %1665 ], [ %1656, %1650 ], [ %858, %870 ]
  %1714 = phi float [ %1629, %1628 ], [ %859, %1166 ], [ %859, %856 ], [ %1629, %1699 ], [ %1629, %1697 ], [ %1629, %1665 ], [ %1629, %1650 ], [ %859, %870 ]
  %1715 = phi float [ %1630, %1628 ], [ %860, %1166 ], [ %860, %856 ], [ %1630, %1699 ], [ %1630, %1697 ], [ %1630, %1665 ], [ %1630, %1650 ], [ %860, %870 ]
  %1716 = phi float [ %1631, %1628 ], [ %861, %1166 ], [ %861, %856 ], [ %1631, %1699 ], [ %1631, %1697 ], [ %1631, %1665 ], [ %1631, %1650 ], [ %861, %870 ]
  %1717 = phi float [ %1632, %1628 ], [ %862, %1166 ], [ %862, %856 ], [ %1632, %1699 ], [ %1632, %1697 ], [ %1632, %1665 ], [ %1632, %1650 ], [ %862, %870 ]
  %1718 = phi float [ %1633, %1628 ], [ %863, %1166 ], [ %863, %856 ], [ %1633, %1699 ], [ %1633, %1697 ], [ %1633, %1665 ], [ %1633, %1650 ], [ %863, %870 ]
  %1719 = phi float [ %1634, %1628 ], [ %864, %1166 ], [ %864, %856 ], [ %1634, %1699 ], [ %1634, %1697 ], [ %1634, %1665 ], [ %1634, %1650 ], [ %864, %870 ]
  %1720 = phi float [ %1635, %1628 ], [ %865, %1166 ], [ %865, %856 ], [ %1635, %1699 ], [ %1635, %1697 ], [ %1635, %1665 ], [ %1635, %1650 ], [ %865, %870 ]
  %1721 = phi float [ %867, %1628 ], [ %867, %1166 ], [ %867, %856 ], [ %1710, %1699 ], [ %867, %1697 ], [ %1696, %1665 ], [ %1662, %1650 ], [ %867, %870 ]
  %1722 = phi float [ %868, %1628 ], [ %868, %1166 ], [ %868, %856 ], [ %1707, %1699 ], [ %868, %1697 ], [ %1673, %1665 ], [ %1659, %1650 ], [ %868, %870 ]
  %1723 = phi float [ %1636, %1628 ], [ %869, %1166 ], [ %869, %856 ], [ %1636, %1699 ], [ %1636, %1697 ], [ %1636, %1665 ], [ %1636, %1650 ], [ %869, %870 ]
  br i1 %336, label %2565, label %1724

; <label>:1724                                    ; preds = %1711
  %1725 = icmp ult i32 %389, 3
  %1726 = add i32 %35, 56
  %1727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %1728 = extractvalue %dx.types.ResRet.i32 %1727, 0
  %1729 = add i32 %35, 60
  %1730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1729, i32 undef)  ; BufferLoad(srv,index,wot)
  %1731 = extractvalue %dx.types.ResRet.i32 %1730, 0
  %1732 = or i32 %1731, %1728
  %1733 = icmp eq i32 %1732, 0
  br i1 %1733, label %2565, label %1734

; <label>:1734                                    ; preds = %1724
  %1735 = and i32 %1728, 262144
  %1736 = icmp ne i32 %1735, 0
  %1737 = select i1 %1736, float %37, float 1.000000e+00
  %1738 = select i1 %1736, float %38, float 0.000000e+00
  %1739 = select i1 %1736, float %39, float 0.000000e+00
  %1740 = select i1 %1736, float %40, float 1.000000e+00
  %1741 = select i1 %1736, float %41, float %50
  %1742 = select i1 %1736, float %42, float %51
  %1743 = add i32 %35, 316
  %1744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %1745 = extractvalue %dx.types.ResRet.i32 %1744, 0
  %1746 = lshr i32 %1745, 16
  %1747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1746)  ; LegacyF16ToF32(value)
  %1748 = fmul fast float %1747, 0x3F50624DE0000000
  %1749 = add i32 %35, 120
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = lshr i32 %1751, 16
  %1753 = and i32 %1752, 255
  %1754 = lshr i32 %1751, 24
  %1755 = add i32 %35, 324
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = and i32 %1757, 65535
  %1759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1758)  ; LegacyF16ToF32(value)
  %1760 = lshr i32 %1757, 16
  %1761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1760)  ; LegacyF16ToF32(value)
  %1762 = add i32 %35, 64
  %1763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1762, i32 undef)  ; BufferLoad(srv,index,wot)
  %1764 = extractvalue %dx.types.ResRet.i32 %1763, 0
  %1765 = lshr i32 %1764, 22
  %1766 = shl nuw nsw i32 %1765, 5
  %1767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1766)  ; LegacyF16ToF32(value)
  %1768 = shl i32 %1764, 4
  %1769 = and i32 %1768, 32752
  %1770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1769)  ; LegacyF16ToF32(value)
  %1771 = lshr i32 %1764, 7
  %1772 = and i32 %1771, 32752
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1775 = extractvalue %dx.types.CBufRet.f32 %1774, 3
  %1776 = fmul fast float %1775, 1.000000e+03
  %1777 = fmul fast float %286, %1776
  %1778 = call float @dx.op.unary.f32(i32 22, float %1777)  ; Frc(value)
  %1779 = fadd fast float %1778, %276
  %1780 = fmul fast float %287, %1776
  %1781 = call float @dx.op.unary.f32(i32 22, float %1780)  ; Frc(value)
  %1782 = fadd fast float %1781, %278
  %1783 = fmul fast float %1748, %1776
  %1784 = call float @dx.op.unary.f32(i32 22, float %1783)  ; Frc(value)
  %1785 = fmul fast float %1784, 0x401921FB60000000
  %1786 = fadd fast float %1785, %1767
  %1787 = call float @dx.op.unary.f32(i32 13, float %1786)  ; Sin(value)
  %1788 = call float @dx.op.unary.f32(i32 12, float %1786)  ; Cos(value)
  %1789 = fsub fast float -0.000000e+00, %1787
  %1790 = fadd fast float %1741, -5.000000e-01
  %1791 = fadd fast float %1742, -5.000000e-01
  %1792 = fmul fast float %1759, %1790
  %1793 = fmul fast float %1761, %1791
  %1794 = fadd fast float %1792, 5.000000e-01
  %1795 = fadd fast float %1793, 5.000000e-01
  %1796 = fmul fast float %1770, %1794
  %1797 = fmul fast float %1773, %1795
  %1798 = fmul fast float %1788, %1796
  %1799 = call float @dx.op.tertiary.f32(i32 46, float %1789, float %1797, float %1798)  ; FMad(a,b,c)
  %1800 = fmul fast float %1787, %1796
  %1801 = call float @dx.op.tertiary.f32(i32 46, float %1788, float %1797, float %1800)  ; FMad(a,b,c)
  %1802 = fadd fast float %1779, %1799
  %1803 = fadd fast float %1782, %1801
  %1804 = icmp ugt i32 %1753, 1
  %1805 = icmp ugt i32 %1751, 33554431
  %1806 = or i1 %1805, %1804
  br i1 %1806, label %1807, label %1832

; <label>:1807                                    ; preds = %1734
  %1808 = add i32 %35, 260
  %1809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.i32 %1809, 0
  %1811 = lshr i32 %1810, 16
  %1812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1811)  ; LegacyF16ToF32(value)
  %1813 = fmul fast float %1775, %1812
  %1814 = call float @dx.op.unary.f32(i32 22, float %1813)  ; Frc(value)
  %1815 = mul nuw nsw i32 %1753, %1754
  %1816 = uitofp i32 %1815 to float
  %1817 = fmul fast float %1814, %1816
  %1818 = call float @dx.op.unary.f32(i32 27, float %1817)  ; Round_ni(value)
  %1819 = fptoui float %1818 to i32
  %1820 = urem i32 %1819, %1753
  %1821 = udiv i32 %1819, %1754
  %1822 = call float @dx.op.unary.f32(i32 22, float %1802)  ; Frc(value)
  %1823 = call float @dx.op.unary.f32(i32 22, float %1803)  ; Frc(value)
  %1824 = uitofp i32 %1820 to float
  %1825 = uitofp i32 %1821 to float
  %1826 = fadd fast float %1822, %1824
  %1827 = fadd fast float %1823, %1825
  %1828 = uitofp i32 %1753 to float
  %1829 = uitofp i32 %1754 to float
  %1830 = fdiv fast float %1826, %1828
  %1831 = fdiv fast float %1827, %1829
  br label %1832

; <label>:1832                                    ; preds = %1807, %1734
  %1833 = phi float [ %1830, %1807 ], [ %1802, %1734 ]
  %1834 = phi float [ %1831, %1807 ], [ %1803, %1734 ]
  %1835 = and i32 %1728, 16777216
  %1836 = icmp eq i32 %1835, 0
  br i1 %1836, label %1946, label %1837

; <label>:1837                                    ; preds = %1832
  %1838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1839 = extractvalue %dx.types.CBufRet.f32 %1838, 0
  %1840 = extractvalue %dx.types.CBufRet.f32 %1838, 1
  %1841 = extractvalue %dx.types.CBufRet.f32 %1838, 2
  %1842 = fadd fast float %1839, %117
  %1843 = fadd fast float %1840, %118
  %1844 = fadd fast float %1841, %119
  %1845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1846 = extractvalue %dx.types.CBufRet.f32 %1845, 0
  %1847 = call float @dx.op.unary.f32(i32 7, float %1846)  ; Saturate(value)
  %1848 = icmp eq i32 %36, 65535
  br i1 %1848, label %1943, label %1849

; <label>:1849                                    ; preds = %1837
  %1850 = lshr i32 %36, 1
  %1851 = shl i32 %1850, 2
  %1852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1851, i32 undef)  ; BufferLoad(srv,index,wot)
  %1853 = extractvalue %dx.types.ResRet.i32 %1852, 0
  %1854 = and i32 %36, 1
  %1855 = icmp ne i32 %1854, 0
  %1856 = lshr i32 %1853, 16
  %1857 = and i32 %1853, 65535
  %1858 = select i1 %1855, i32 %1856, i32 %1857
  %1859 = icmp eq i32 %1858, 65535
  br i1 %1859, label %1939, label %1860

; <label>:1860                                    ; preds = %1849
  %1861 = mul nuw nsw i32 %1858, 40
  %1862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.f32 %1862, 0
  %1864 = extractvalue %dx.types.ResRet.f32 %1862, 1
  %1865 = extractvalue %dx.types.ResRet.f32 %1862, 2
  %1866 = add nuw nsw i32 %1861, 12
  %1867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.f32 %1867, 0
  %1869 = extractvalue %dx.types.ResRet.f32 %1867, 1
  %1870 = extractvalue %dx.types.ResRet.f32 %1867, 2
  %1871 = add nuw nsw i32 %1861, 24
  %1872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1871, i32 undef)  ; BufferLoad(srv,index,wot)
  %1873 = extractvalue %dx.types.ResRet.f32 %1872, 0
  %1874 = extractvalue %dx.types.ResRet.f32 %1872, 1
  %1875 = extractvalue %dx.types.ResRet.f32 %1872, 2
  %1876 = add nuw nsw i32 %1861, 36
  %1877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.f32 %1877, 0
  %1879 = fsub fast float %1842, %1863
  %1880 = fsub fast float %1843, %1864
  %1881 = fsub fast float %1844, %1865
  %1882 = fmul fast float %1878, %1879
  %1883 = fmul fast float %1878, %1880
  %1884 = fmul fast float %1878, %1881
  %1885 = call float @dx.op.unary.f32(i32 27, float %1882)  ; Round_ni(value)
  %1886 = call float @dx.op.unary.f32(i32 27, float %1883)  ; Round_ni(value)
  %1887 = call float @dx.op.unary.f32(i32 27, float %1884)  ; Round_ni(value)
  %1888 = fadd fast float %1885, 5.000000e-01
  %1889 = fadd fast float %1886, 5.000000e-01
  %1890 = fadd fast float %1887, 5.000000e-01
  %1891 = fmul fast float %1888, %1868
  %1892 = fmul fast float %1889, %1869
  %1893 = fmul fast float %1890, %1870
  %1894 = shl i32 %36, 2
  %1895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1896 = extractvalue %dx.types.ResRet.i32 %1895, 0
  %1897 = add i32 %1896, 0
  %1898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1899 = call float @dx.op.unary.f32(i32 22, float %1891)  ; Frc(value)
  %1900 = call float @dx.op.unary.f32(i32 22, float %1892)  ; Frc(value)
  %1901 = call float @dx.op.unary.f32(i32 22, float %1893)  ; Frc(value)
  %1902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1898, %dx.types.Handle %32, float %1899, float %1900, float %1901, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1903 = extractvalue %dx.types.ResRet.f32 %1902, 0
  %1904 = extractvalue %dx.types.ResRet.f32 %1902, 1
  %1905 = extractvalue %dx.types.ResRet.f32 %1902, 2
  %1906 = fmul fast float %1903, 1.023000e+03
  %1907 = fmul fast float %1904, 1.023000e+03
  %1908 = fmul fast float %1905, 1.023000e+03
  %1909 = fadd fast float %1906, 5.000000e-01
  %1910 = fadd fast float %1907, 5.000000e-01
  %1911 = fadd fast float %1908, 5.000000e-01
  %1912 = call float @dx.op.unary.f32(i32 27, float %1909)  ; Round_ni(value)
  %1913 = call float @dx.op.unary.f32(i32 27, float %1910)  ; Round_ni(value)
  %1914 = call float @dx.op.unary.f32(i32 27, float %1911)  ; Round_ni(value)
  %1915 = fsub fast float %1882, %1885
  %1916 = fsub fast float %1883, %1886
  %1917 = fsub fast float %1884, %1887
  %1918 = fmul fast float %1915, 7.500000e-01
  %1919 = fmul fast float %1916, 7.500000e-01
  %1920 = fmul fast float %1917, 7.500000e-01
  %1921 = fadd fast float %1885, 1.250000e-01
  %1922 = fadd fast float %1921, %1918
  %1923 = fadd fast float %1922, %1912
  %1924 = fadd fast float %1886, 1.250000e-01
  %1925 = fadd fast float %1924, %1919
  %1926 = fadd fast float %1925, %1913
  %1927 = fadd fast float %1887, 1.250000e-01
  %1928 = fadd fast float %1927, %1920
  %1929 = fadd fast float %1928, %1914
  %1930 = fmul fast float %1923, %1873
  %1931 = fmul fast float %1926, %1874
  %1932 = fmul fast float %1929, %1875
  %1933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1894, i32 undef)  ; BufferLoad(srv,index,wot)
  %1934 = extractvalue %dx.types.ResRet.i32 %1933, 0
  %1935 = add i32 %1934, 0
  %1936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1936, %dx.types.Handle %30, float %1930, float %1931, float %1932, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  br label %1939

; <label>:1939                                    ; preds = %1860, %1849
  %1940 = phi float [ %1938, %1860 ], [ -1.000000e+00, %1849 ]
  %1941 = fadd fast float %1940, %1847
  %1942 = call float @dx.op.unary.f32(i32 7, float %1941)  ; Saturate(value)
  br label %1943

; <label>:1943                                    ; preds = %1939, %1837
  %1944 = phi float [ %1942, %1939 ], [ %1847, %1837 ]
  %1945 = fmul fast float %1944, %385
  br label %1946

; <label>:1946                                    ; preds = %1943, %1832
  %1947 = phi float [ %1945, %1943 ], [ %385, %1832 ]
  %1948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %1949 = extractvalue %dx.types.ResRet.i32 %1948, 0
  %1950 = and i32 %1949, 256
  %1951 = icmp eq i32 %1950, 0
  br i1 %1951, label %1998, label %1952

; <label>:1952                                    ; preds = %1946
  %1953 = add i32 %35, 432
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1953, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = add i32 %1955, 0
  %1957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1958 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1957, %dx.types.Handle %59, float %1833, float %1834, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1959 = extractvalue %dx.types.ResRet.f32 %1958, 0
  %1960 = add i32 %35, 132
  %1961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1962 = extractvalue %dx.types.ResRet.i32 %1961, 0
  %1963 = shl i32 %1962, 4
  %1964 = and i32 %1963, 32752
  %1965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1964)  ; LegacyF16ToF32(value)
  %1966 = lshr i32 %1962, 7
  %1967 = and i32 %1966, 32752
  %1968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1967)  ; LegacyF16ToF32(value)
  %1969 = fsub fast float 1.000000e+00, %1947
  %1970 = call float @dx.op.binary.f32(i32 35, float %1969, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1971 = bitcast float %1947 to i32
  %1972 = sitofp i32 %1971 to float
  %1973 = fadd fast float %1972, 0xC1CFBF8940000000
  %1974 = fmul fast float %1968, %1973
  %1975 = fadd fast float %1974, 0x41CFBF8940000000
  %1976 = fptosi float %1975 to i32
  %1977 = bitcast i32 %1976 to float
  %1978 = bitcast float %1970 to i32
  %1979 = sitofp i32 %1978 to float
  %1980 = fadd fast float %1979, 0xC1CFBF8940000000
  %1981 = fmul fast float %1980, %1968
  %1982 = fadd fast float %1981, 0x41CFBF8940000000
  %1983 = fptosi float %1982 to i32
  %1984 = bitcast i32 %1983 to float
  %1985 = fmul fast float %1977, %1965
  %1986 = fmul fast float %1984, %1965
  %1987 = fsub fast float %1970, %1985
  %1988 = fadd fast float %1986, %1970
  %1989 = call float @dx.op.unary.f32(i32 7, float %1987)  ; Saturate(value)
  %1990 = call float @dx.op.unary.f32(i32 7, float %1988)  ; Saturate(value)
  %1991 = fsub fast float %1959, %1989
  %1992 = fsub fast float %1990, %1989
  %1993 = bitcast float %1992 to i32
  %1994 = sub nsw i32 2129859010, %1993
  %1995 = bitcast i32 %1994 to float
  %1996 = fmul fast float %1995, %1991
  %1997 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  br label %1998

; <label>:1998                                    ; preds = %1952, %1946
  %1999 = phi float [ %1997, %1952 ], [ %1947, %1946 ]
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = and i32 %2001, 128
  %2003 = icmp eq i32 %2002, 0
  br i1 %2003, label %2020, label %2004

; <label>:2004                                    ; preds = %1998
  %2005 = add i32 %35, 416
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = add i32 %2007, 0
  %2009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2008, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2010 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2009, %dx.types.Handle %59, float %1833, float %1834, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2011 = extractvalue %dx.types.ResRet.f32 %2010, 0
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = and i32 %2013, 524288
  %2015 = icmp ne i32 %2014, 0
  %2016 = fcmp fast ogt float %2011, 0x3FE0101020000000
  %2017 = select i1 %2016, float 1.000000e+00, float 0.000000e+00
  %2018 = select i1 %2015, float %2017, float %2011
  %2019 = fmul fast float %2018, %1999
  br label %2020

; <label>:2020                                    ; preds = %2004, %1998
  %2021 = phi float [ %2019, %2004 ], [ %1999, %1998 ]
  %2022 = fcmp fast ult float %2021, 0x3F70101020000000
  br i1 %2022, label %2565, label %2023

; <label>:2023                                    ; preds = %2020
  %2024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.i32 %2024, 0
  %2026 = and i32 %2025, 16
  %2027 = icmp eq i32 %2026, 0
  br i1 %2027, label %2226, label %2028

; <label>:2028                                    ; preds = %2023
  %2029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2030 = extractvalue %dx.types.ResRet.i32 %2029, 0
  %2031 = add i32 %35, 368
  %2032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2031, i32 undef)  ; BufferLoad(srv,index,wot)
  %2033 = extractvalue %dx.types.ResRet.i32 %2032, 0
  %2034 = add i32 %2033, 0
  %2035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2035, %dx.types.Handle %58, float %1833, float %1834, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2037 = extractvalue %dx.types.ResRet.f32 %2036, 0
  %2038 = extractvalue %dx.types.ResRet.f32 %2036, 1
  %2039 = extractvalue %dx.types.ResRet.f32 %2036, 2
  %2040 = extractvalue %dx.types.ResRet.f32 %2036, 3
  %2041 = and i32 %2030, 255
  %2042 = uitofp i32 %2041 to float
  %2043 = lshr i32 %2030, 8
  %2044 = and i32 %2043, 255
  %2045 = uitofp i32 %2044 to float
  %2046 = fmul fast float %2040, %2042
  %2047 = fadd fast float %2046, %2045
  %2048 = fmul fast float %2047, 0x3F70101000000000
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = and i32 %2050, 512
  %2052 = icmp eq i32 %2051, 0
  br i1 %2052, label %2061, label %2053

; <label>:2053                                    ; preds = %2028
  %2054 = add i32 %35, 448
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2054, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = add i32 %2056, 0
  %2058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2058, %dx.types.Handle %59, float %1833, float %1834, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2060 = extractvalue %dx.types.ResRet.f32 %2059, 0
  br label %2061

; <label>:2061                                    ; preds = %2053, %2028
  %2062 = phi float [ %2060, %2053 ], [ 1.000000e+00, %2028 ]
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = and i32 %2064, 33554432
  %2066 = icmp eq i32 %2065, 0
  br i1 %2066, label %2173, label %2067

; <label>:2067                                    ; preds = %2061
  %2068 = add i32 %35, 256
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2068, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = and i32 %2070, 65535
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = lshr i32 %2070, 16
  %2074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2073)  ; LegacyF16ToF32(value)
  %2075 = add i32 %35, 260
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = and i32 %2077, 65535
  %2079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2078)  ; LegacyF16ToF32(value)
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = lshr i32 %2081, 24
  %2083 = uitofp i32 %2082 to float
  %2084 = fmul fast float %2083, 0x3F70101020000000
  %2085 = and i32 %2081, 255
  %2086 = uitofp i32 %2085 to float
  %2087 = fmul fast float %2086, 0x3F70101020000000
  %2088 = lshr i32 %2081, 8
  %2089 = and i32 %2088, 255
  %2090 = uitofp i32 %2089 to float
  %2091 = fmul fast float %2090, 0x3F70101020000000
  %2092 = lshr i32 %2081, 16
  %2093 = and i32 %2092, 255
  %2094 = uitofp i32 %2093 to float
  %2095 = fmul fast float %2094, 0x3F70101020000000
  %2096 = add i32 %35, 252
  %2097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.i32 %2097, 0
  %2099 = lshr i32 %2098, 24
  %2100 = uitofp i32 %2099 to float
  %2101 = fmul fast float %2100, 0x3F70101020000000
  %2102 = and i32 %2098, 255
  %2103 = uitofp i32 %2102 to float
  %2104 = fmul fast float %2103, 0x3F70101020000000
  %2105 = lshr i32 %2098, 8
  %2106 = and i32 %2105, 255
  %2107 = uitofp i32 %2106 to float
  %2108 = fmul fast float %2107, 0x3F70101020000000
  %2109 = lshr i32 %2098, 16
  %2110 = and i32 %2109, 255
  %2111 = uitofp i32 %2110 to float
  %2112 = fmul fast float %2111, 0x3F70101020000000
  %2113 = bitcast float %2037 to i32
  %2114 = ashr i32 %2113, 1
  %2115 = sub nsw i32 1597463174, %2114
  %2116 = bitcast i32 %2115 to float
  %2117 = fmul fast float %2037, 5.000000e-01
  %2118 = fmul fast float %2116, %2116
  %2119 = fmul fast float %2118, %2117
  %2120 = fsub fast float 1.500000e+00, %2119
  %2121 = fmul fast float %2116, %2037
  %2122 = fmul fast float %2121, %2120
  %2123 = bitcast float %2038 to i32
  %2124 = ashr i32 %2123, 1
  %2125 = sub nsw i32 1597463174, %2124
  %2126 = bitcast i32 %2125 to float
  %2127 = fmul fast float %2038, 5.000000e-01
  %2128 = fmul fast float %2126, %2126
  %2129 = fmul fast float %2128, %2127
  %2130 = fsub fast float 1.500000e+00, %2129
  %2131 = fmul fast float %2126, %2038
  %2132 = fmul fast float %2131, %2130
  %2133 = bitcast float %2039 to i32
  %2134 = ashr i32 %2133, 1
  %2135 = sub nsw i32 1597463174, %2134
  %2136 = bitcast i32 %2135 to float
  %2137 = fmul fast float %2039, 5.000000e-01
  %2138 = fmul fast float %2136, %2136
  %2139 = fmul fast float %2138, %2137
  %2140 = fsub fast float 1.500000e+00, %2139
  %2141 = fmul fast float %2136, %2039
  %2142 = fmul fast float %2141, %2140
  %2143 = fsub fast float %2122, %2104
  %2144 = fsub fast float %2132, %2108
  %2145 = fsub fast float %2142, %2112
  %2146 = fmul fast float %2143, %2072
  %2147 = fmul fast float %2144, %2074
  %2148 = fmul fast float %2145, %2079
  %2149 = fadd fast float %2146, %2087
  %2150 = fadd fast float %2147, %2091
  %2151 = fadd fast float %2148, %2095
  %2152 = call float @dx.op.unary.f32(i32 7, float %2149)  ; Saturate(value)
  %2153 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  %2154 = call float @dx.op.unary.f32(i32 7, float %2151)  ; Saturate(value)
  %2155 = fmul fast float %2152, %2152
  %2156 = fmul fast float %2153, %2153
  %2157 = fmul fast float %2154, %2154
  %2158 = fsub fast float %2155, %2037
  %2159 = fsub fast float %2156, %2038
  %2160 = fsub fast float %2157, %2039
  %2161 = fmul fast float %2158, %2062
  %2162 = fmul fast float %2159, %2062
  %2163 = fmul fast float %2160, %2062
  %2164 = fadd fast float %2161, %2037
  %2165 = fadd fast float %2162, %2038
  %2166 = fadd fast float %2163, %2039
  %2167 = fadd fast float %2084, %2048
  %2168 = fsub fast float %2167, %2101
  %2169 = call float @dx.op.unary.f32(i32 7, float %2168)  ; Saturate(value)
  %2170 = fsub fast float %2169, %2048
  %2171 = fmul fast float %2170, %2062
  %2172 = fadd fast float %2171, %2048
  br label %2226

; <label>:2173                                    ; preds = %2061
  %2174 = and i32 %2064, 134217728
  %2175 = icmp eq i32 %2174, 0
  br i1 %2175, label %2210, label %2176

; <label>:2176                                    ; preds = %2173
  %2177 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %2178 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %2179 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %2180 = fadd fast float %2177, -5.000000e-01
  %2181 = fadd fast float %2178, -5.000000e-01
  %2182 = fadd fast float %2179, -5.000000e-01
  %2183 = fmul fast float %2180, %2062
  %2184 = fmul fast float %2181, %2062
  %2185 = fmul fast float %2182, %2062
  %2186 = fadd fast float %2183, 5.000000e-01
  %2187 = fadd fast float %2184, 5.000000e-01
  %2188 = fadd fast float %2185, 5.000000e-01
  %2189 = call float @dx.op.unary.f32(i32 24, float %2037)  ; Sqrt(value)
  %2190 = call float @dx.op.unary.f32(i32 24, float %2038)  ; Sqrt(value)
  %2191 = call float @dx.op.unary.f32(i32 24, float %2039)  ; Sqrt(value)
  %2192 = fmul fast float %2186, 2.000000e+00
  %2193 = fsub fast float 1.000000e+00, %2192
  %2194 = fmul fast float %2193, %2189
  %2195 = fadd fast float %2194, %2192
  %2196 = fmul fast float %2195, %2189
  %2197 = fmul fast float %2187, 2.000000e+00
  %2198 = fsub fast float 1.000000e+00, %2197
  %2199 = fmul fast float %2198, %2190
  %2200 = fadd fast float %2199, %2197
  %2201 = fmul fast float %2200, %2190
  %2202 = fmul fast float %2188, 2.000000e+00
  %2203 = fsub fast float 1.000000e+00, %2202
  %2204 = fmul fast float %2203, %2191
  %2205 = fadd fast float %2204, %2202
  %2206 = fmul fast float %2205, %2191
  %2207 = fmul fast float %2196, %2196
  %2208 = fmul fast float %2201, %2201
  %2209 = fmul fast float %2206, %2206
  br label %2226

; <label>:2210                                    ; preds = %2173
  %2211 = fmul fast float %263, %263
  %2212 = fmul fast float %267, %267
  %2213 = fmul fast float %271, %271
  %2214 = fadd fast float %2211, -1.000000e+00
  %2215 = fadd fast float %2212, -1.000000e+00
  %2216 = fadd fast float %2213, -1.000000e+00
  %2217 = fmul fast float %2062, %2214
  %2218 = fmul fast float %2062, %2215
  %2219 = fmul fast float %2062, %2216
  %2220 = fadd fast float %2217, 1.000000e+00
  %2221 = fadd fast float %2218, 1.000000e+00
  %2222 = fadd fast float %2219, 1.000000e+00
  %2223 = fmul fast float %2220, %2037
  %2224 = fmul fast float %2221, %2038
  %2225 = fmul fast float %2222, %2039
  br label %2226

; <label>:2226                                    ; preds = %2210, %2176, %2067, %2023
  %2227 = phi float [ %2172, %2067 ], [ %2048, %2176 ], [ %2048, %2210 ], [ 0x3FA23C0BE0000000, %2023 ]
  %2228 = phi float [ %2164, %2067 ], [ %2207, %2176 ], [ %2223, %2210 ], [ 1.000000e+00, %2023 ]
  %2229 = phi float [ %2165, %2067 ], [ %2208, %2176 ], [ %2224, %2210 ], [ 1.000000e+00, %2023 ]
  %2230 = phi float [ %2166, %2067 ], [ %2209, %2176 ], [ %2225, %2210 ], [ 1.000000e+00, %2023 ]
  %2231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2232 = extractvalue %dx.types.CBufRet.i32 %2231, 1
  %2233 = and i32 %2232, 1
  %2234 = icmp ne i32 %2233, 0
  %2235 = add i32 %35, 356
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2235, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = and i32 %2237, 32
  %2239 = icmp ne i32 %2238, 0
  %2240 = and i1 %2234, %2239
  %2241 = select i1 %2240, float 1.000000e+00, float %2228
  %2242 = select i1 %2240, float 0x3FD3333340000000, float %2229
  %2243 = select i1 %2240, float 0x3FD3333340000000, float %2230
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = and i32 %2245, 32
  %2247 = icmp eq i32 %2246, 0
  br i1 %2247, label %2320, label %2248

; <label>:2248                                    ; preds = %2226
  %2249 = add i32 %35, 124
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2249, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = add i32 %35, 384
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = add i32 %2254, 0
  %2256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2257 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2256, %dx.types.Handle %58, float %1833, float %1834, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2258 = extractvalue %dx.types.ResRet.f32 %2257, 0
  %2259 = extractvalue %dx.types.ResRet.f32 %2257, 1
  %2260 = extractvalue %dx.types.ResRet.f32 %2257, 2
  %2261 = extractvalue %dx.types.ResRet.f32 %2257, 3
  %2262 = and i32 %2251, 255
  %2263 = uitofp i32 %2262 to float
  %2264 = lshr i32 %2251, 8
  %2265 = and i32 %2264, 255
  %2266 = uitofp i32 %2265 to float
  %2267 = lshr i32 %2251, 16
  %2268 = and i32 %2267, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101000000000
  %2271 = fmul fast float %2258, %2263
  %2272 = fadd fast float %2271, %2266
  %2273 = fmul fast float %2272, 0x3F70101000000000
  %2274 = fadd fast float %2259, -5.000000e-01
  %2275 = fadd fast float %2261, -5.000000e-01
  %2276 = fmul fast float %2274, %2270
  %2277 = fmul fast float %2275, %2270
  %2278 = fadd fast float %2276, 5.000000e-01
  %2279 = fadd fast float %2277, 5.000000e-01
  %2280 = fmul fast float %2278, 2.000000e+00
  %2281 = fadd fast float %2280, -1.000000e+00
  %2282 = fmul fast float %2279, 2.000000e+00
  %2283 = fadd fast float %2282, -1.000000e+00
  %2284 = fadd fast float %2281, %2283
  %2285 = fmul fast float %2284, 5.000000e-01
  %2286 = fsub fast float %2281, %2283
  %2287 = fmul fast float %2286, 5.000000e-01
  %2288 = call float @dx.op.unary.f32(i32 6, float %2285)  ; FAbs(value)
  %2289 = fsub fast float 1.000000e+00, %2288
  %2290 = call float @dx.op.unary.f32(i32 6, float %2287)  ; FAbs(value)
  %2291 = fsub fast float %2289, %2290
  %2292 = call float @dx.op.dot3.f32(i32 55, float %2285, float %2287, float %2291, float %2285, float %2287, float %2291)  ; Dot3(ax,ay,az,bx,by,bz)
  %2293 = call float @dx.op.unary.f32(i32 25, float %2292)  ; Rsqrt(value)
  %2294 = fmul fast float %2285, %2293
  %2295 = fmul fast float %2287, %2293
  %2296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2297 = extractvalue %dx.types.ResRet.i32 %2296, 0
  %2298 = and i32 %2297, 67108864
  %2299 = icmp eq i32 %2298, 0
  br i1 %2299, label %2316, label %2300

; <label>:2300                                    ; preds = %2248
  %2301 = add i32 %35, 312
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2301, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = and i32 %2303, 65535
  %2305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2304)  ; LegacyF16ToF32(value)
  %2306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2307 = extractvalue %dx.types.ResRet.i32 %2306, 0
  %2308 = and i32 %2307, 65535
  %2309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2308)  ; LegacyF16ToF32(value)
  %2310 = lshr i32 %2303, 16
  %2311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2310)  ; LegacyF16ToF32(value)
  %2312 = fsub fast float %2273, %2311
  %2313 = fmul fast float %2312, %2305
  %2314 = fadd fast float %2313, %2309
  %2315 = call float @dx.op.unary.f32(i32 7, float %2314)  ; Saturate(value)
  br label %2316

; <label>:2316                                    ; preds = %2300, %2248
  %2317 = phi float [ %2315, %2300 ], [ %2273, %2248 ]
  %2318 = call float @dx.op.dot2.f32(i32 54, float %2294, float %2295, float %1737, float %1738)  ; Dot2(ax,ay,bx,by)
  %2319 = call float @dx.op.dot2.f32(i32 54, float %2294, float %2295, float %1739, float %1740)  ; Dot2(ax,ay,bx,by)
  br label %2320

; <label>:2320                                    ; preds = %2316, %2226
  %2321 = phi float [ %2317, %2316 ], [ 0x3FD6666660000000, %2226 ]
  %2322 = phi float [ %2318, %2316 ], [ 0.000000e+00, %2226 ]
  %2323 = phi float [ %2319, %2316 ], [ 0.000000e+00, %2226 ]
  %2324 = phi float [ %2260, %2316 ], [ 1.000000e+00, %2226 ]
  %2325 = add i32 %35, 192
  %2326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2327 = extractvalue %dx.types.ResRet.i32 %2326, 0
  %2328 = lshr i32 %2327, 22
  %2329 = shl nuw nsw i32 %2328, 5
  %2330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2329)  ; LegacyF16ToF32(value)
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = and i32 %2332, 64
  %2334 = icmp eq i32 %2333, 0
  br i1 %2334, label %2368, label %2335

; <label>:2335                                    ; preds = %2320
  %2336 = add i32 %35, 400
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = add i32 %2338, 0
  %2340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = and i32 %2342, 131072
  %2344 = icmp eq i32 %2343, 0
  %2345 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2340, %dx.types.Handle %58, float %1833, float %1834, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2346 = extractvalue %dx.types.ResRet.f32 %2345, 0
  %2347 = extractvalue %dx.types.ResRet.f32 %2345, 1
  %2348 = extractvalue %dx.types.ResRet.f32 %2345, 2
  %2349 = fmul fast float %2346, %251
  %2350 = fmul fast float %2347, %254
  %2351 = fmul fast float %2348, %257
  br i1 %2344, label %2358, label %2352

; <label>:2352                                    ; preds = %2335
  %2353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2354 = extractvalue %dx.types.CBufRet.f32 %2353, 0
  %2355 = fmul fast float %2354, %2349
  %2356 = fmul fast float %2354, %2350
  %2357 = fmul fast float %2354, %2351
  br label %2358

; <label>:2358                                    ; preds = %2352, %2335
  %2359 = phi float [ %2355, %2352 ], [ %2349, %2335 ]
  %2360 = phi float [ %2356, %2352 ], [ %2350, %2335 ]
  %2361 = phi float [ %2357, %2352 ], [ %2351, %2335 ]
  %2362 = fmul fast float %2359, %2330
  %2363 = select i1 %161, float %2362, float %2359
  %2364 = call float @dx.op.dot3.f32(i32 55, float %2363, float %2360, float %2361, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2365 = select i1 %161, float 0.000000e+00, float %2359
  %2366 = select i1 %161, float %2364, float %2360
  %2367 = select i1 %161, float 0.000000e+00, float %2361
  br label %2368

; <label>:2368                                    ; preds = %2358, %2320
  %2369 = phi float [ %2365, %2358 ], [ 0.000000e+00, %2320 ]
  %2370 = phi float [ %2366, %2358 ], [ 0.000000e+00, %2320 ]
  %2371 = phi float [ %2367, %2358 ], [ 0.000000e+00, %2320 ]
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = add i32 %35, 128
  %2375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2374, i32 undef)  ; BufferLoad(srv,index,wot)
  %2376 = extractvalue %dx.types.ResRet.i32 %2375, 0
  %2377 = and i32 %2376, 255
  %2378 = uitofp i32 %2377 to float
  %2379 = lshr i32 %2376, 8
  %2380 = and i32 %2379, 255
  %2381 = uitofp i32 %2380 to float
  %2382 = call float @dx.op.dot3.f32(i32 55, float %2241, float %2242, float %2243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2383 = fmul fast float %2381, %2382
  %2384 = fadd fast float %2383, %2378
  %2385 = fmul fast float %2384, 0x3F70101020000000
  %2386 = call float @dx.op.unary.f32(i32 7, float %2385)  ; Saturate(value)
  br i1 %1725, label %2387, label %2395

; <label>:2387                                    ; preds = %2368
  %2388 = fsub fast float 1.000000e+00, %2021
  %2389 = fmul fast float %2388, %1717
  %2390 = fmul fast float %2388, %1718
  %2391 = fmul fast float %2388, %1719
  %2392 = fmul fast float %2388, %1714
  %2393 = fmul fast float %2388, %1715
  %2394 = fmul fast float %2388, %1716
  br label %2395

; <label>:2395                                    ; preds = %2387, %2368
  %2396 = phi float [ %2392, %2387 ], [ %1714, %2368 ]
  %2397 = phi float [ %2393, %2387 ], [ %1715, %2368 ]
  %2398 = phi float [ %2394, %2387 ], [ %1716, %2368 ]
  %2399 = phi float [ %2389, %2387 ], [ %1717, %2368 ]
  %2400 = phi float [ %2390, %2387 ], [ %1718, %2368 ]
  %2401 = phi float [ %2391, %2387 ], [ %1719, %2368 ]
  %2402 = and i32 %2373, 3
  %2403 = icmp eq i32 %2402, 3
  br i1 %2403, label %2482, label %2404

; <label>:2404                                    ; preds = %2395
  %2405 = and i32 %2373, 16
  %2406 = icmp ne i32 %2405, 0
  %2407 = select i1 %2406, float %2021, float 0.000000e+00
  %2408 = icmp eq i32 %2402, 0
  br i1 %2408, label %2409, label %2437

; <label>:2409                                    ; preds = %2404
  %2410 = and i32 %2373, 64
  %2411 = icmp ne i32 %2410, 0
  %2412 = select i1 %2411, float %2021, float 0.000000e+00
  %2413 = fsub fast float %2241, %2399
  %2414 = fsub fast float %2242, %2400
  %2415 = fsub fast float %2243, %2401
  %2416 = fmul fast float %2407, %2413
  %2417 = fmul fast float %2407, %2414
  %2418 = fmul fast float %2407, %2415
  %2419 = fadd fast float %2416, %2399
  %2420 = fadd fast float %2417, %2400
  %2421 = fadd fast float %2418, %2401
  %2422 = fsub fast float %2227, %1720
  %2423 = fmul fast float %2407, %2422
  %2424 = fadd fast float %2423, %1720
  %2425 = fsub fast float %2369, %2396
  %2426 = fsub fast float %2370, %2397
  %2427 = fsub fast float %2371, %2398
  %2428 = fmul fast float %2412, %2425
  %2429 = fmul fast float %2412, %2426
  %2430 = fmul fast float %2412, %2427
  %2431 = fadd fast float %2428, %2396
  %2432 = fadd fast float %2429, %2397
  %2433 = fadd fast float %2430, %2398
  %2434 = fsub fast float %2386, %1723
  %2435 = fmul fast float %2407, %2434
  %2436 = fadd fast float %2435, %1723
  br label %2482

; <label>:2437                                    ; preds = %2404
  %2438 = icmp eq i32 %2402, 1
  br i1 %2438, label %2439, label %2452

; <label>:2439                                    ; preds = %2437
  %2440 = fadd fast float %2241, -1.000000e+00
  %2441 = fadd fast float %2242, -1.000000e+00
  %2442 = fadd fast float %2243, -1.000000e+00
  %2443 = fmul fast float %2407, %2440
  %2444 = fmul fast float %2407, %2441
  %2445 = fmul fast float %2407, %2442
  %2446 = fadd fast float %2443, 1.000000e+00
  %2447 = fadd fast float %2444, 1.000000e+00
  %2448 = fadd fast float %2445, 1.000000e+00
  %2449 = fmul fast float %2446, %2399
  %2450 = fmul fast float %2447, %2400
  %2451 = fmul fast float %2448, %2401
  br label %2482

; <label>:2452                                    ; preds = %2437
  %2453 = icmp eq i32 %2402, 2
  br i1 %2453, label %2454, label %2482

; <label>:2454                                    ; preds = %2452
  %2455 = call float @dx.op.unary.f32(i32 24, float %2241)  ; Sqrt(value)
  %2456 = call float @dx.op.unary.f32(i32 24, float %2242)  ; Sqrt(value)
  %2457 = call float @dx.op.unary.f32(i32 24, float %2243)  ; Sqrt(value)
  %2458 = fadd fast float %2455, -5.000000e-01
  %2459 = fadd fast float %2456, -5.000000e-01
  %2460 = fadd fast float %2457, -5.000000e-01
  %2461 = fmul fast float %2458, %2407
  %2462 = fmul fast float %2459, %2407
  %2463 = fmul fast float %2460, %2407
  %2464 = fadd fast float %2461, 5.000000e-01
  %2465 = fadd fast float %2462, 5.000000e-01
  %2466 = fadd fast float %2463, 5.000000e-01
  %2467 = fmul fast float %2464, 2.000000e+00
  %2468 = fsub fast float 1.000000e+00, %2467
  %2469 = fmul fast float %2468, %2399
  %2470 = fadd fast float %2469, %2467
  %2471 = fmul fast float %2470, %2399
  %2472 = fmul fast float %2465, 2.000000e+00
  %2473 = fsub fast float 1.000000e+00, %2472
  %2474 = fmul fast float %2473, %2400
  %2475 = fadd fast float %2474, %2472
  %2476 = fmul fast float %2475, %2400
  %2477 = fmul fast float %2466, 2.000000e+00
  %2478 = fsub fast float 1.000000e+00, %2477
  %2479 = fmul fast float %2478, %2401
  %2480 = fadd fast float %2479, %2477
  %2481 = fmul fast float %2480, %2401
  br label %2482

; <label>:2482                                    ; preds = %2454, %2452, %2439, %2409, %2395
  %2483 = phi float [ %2396, %2395 ], [ %2396, %2454 ], [ %2396, %2452 ], [ %2396, %2439 ], [ %2431, %2409 ]
  %2484 = phi float [ %2397, %2395 ], [ %2397, %2454 ], [ %2397, %2452 ], [ %2397, %2439 ], [ %2432, %2409 ]
  %2485 = phi float [ %2398, %2395 ], [ %2398, %2454 ], [ %2398, %2452 ], [ %2398, %2439 ], [ %2433, %2409 ]
  %2486 = phi float [ %2399, %2395 ], [ %2471, %2454 ], [ %2399, %2452 ], [ %2449, %2439 ], [ %2419, %2409 ]
  %2487 = phi float [ %2400, %2395 ], [ %2476, %2454 ], [ %2400, %2452 ], [ %2450, %2439 ], [ %2420, %2409 ]
  %2488 = phi float [ %2401, %2395 ], [ %2481, %2454 ], [ %2401, %2452 ], [ %2451, %2439 ], [ %2421, %2409 ]
  %2489 = phi float [ %1720, %2395 ], [ %1720, %2454 ], [ %1720, %2452 ], [ %1720, %2439 ], [ %2424, %2409 ]
  %2490 = phi float [ %1723, %2395 ], [ %1723, %2454 ], [ %1723, %2452 ], [ %1723, %2439 ], [ %2436, %2409 ]
  %2491 = and i32 %2373, 12
  %2492 = icmp eq i32 %2491, 12
  br i1 %2492, label %2565, label %2493

; <label>:2493                                    ; preds = %2482
  %2494 = and i32 %2373, 2097184
  %2495 = icmp eq i32 %2494, 2097184
  %2496 = select i1 %2495, float %2021, float 0.000000e+00
  %2497 = and i32 %2373, 4194336
  %2498 = icmp eq i32 %2497, 4194336
  %2499 = select i1 %2498, float %2021, float 0.000000e+00
  %2500 = and i32 %2373, 8388640
  %2501 = icmp eq i32 %2500, 8388640
  %2502 = select i1 %2501, float %2021, float 0.000000e+00
  %2503 = icmp eq i32 %2491, 0
  br i1 %2503, label %2504, label %2517

; <label>:2504                                    ; preds = %2493
  %2505 = fsub fast float %2322, %1712
  %2506 = fsub fast float %2323, %1713
  %2507 = fmul fast float %2496, %2505
  %2508 = fmul fast float %2496, %2506
  %2509 = fadd fast float %2507, %1712
  %2510 = fadd fast float %2508, %1713
  %2511 = fsub fast float %2324, %1722
  %2512 = fmul fast float %2499, %2511
  %2513 = fadd fast float %2512, %1722
  %2514 = fsub fast float %2321, %1721
  %2515 = fmul fast float %2502, %2514
  %2516 = fadd fast float %2515, %1721
  br label %2565

; <label>:2517                                    ; preds = %2493
  %2518 = icmp eq i32 %2491, 4
  br i1 %2518, label %2519, label %2551

; <label>:2519                                    ; preds = %2517
  %2520 = fmul fast float %2496, %2322
  %2521 = fmul fast float %2496, %2323
  %2522 = fadd fast float %2520, %1712
  %2523 = fadd fast float %2521, %1713
  %2524 = call float @dx.op.binary.f32(i32 36, float %1722, float %2324)  ; FMin(a,b)
  %2525 = fsub fast float %2524, %1722
  %2526 = fmul fast float %2525, %2499
  %2527 = fadd fast float %2526, %1722
  %2528 = fadd fast float %2321, %1721
  %2529 = fmul fast float %2528, 0x3FF337FAE0000000
  %2530 = fmul fast float %1721, %1721
  %2531 = fmul fast float %2321, %2321
  %2532 = fadd fast float %2531, %2530
  %2533 = fmul fast float %2532, 0x3FE5152B00000000
  %2534 = fmul fast float %1721, 0xBFCC1F85E0000000
  %2535 = fmul fast float %2534, %2321
  %2536 = fadd fast float %2535, 0xBFE1363700000000
  %2537 = fadd fast float %2536, %2529
  %2538 = fsub fast float %2537, %2533
  %2539 = fmul fast float %2528, 0x3FBA6F0D00000000
  %2540 = fmul fast float %2532, 0x3FD0432880000000
  %2541 = fmul fast float %1721, 0xBFEF110800000000
  %2542 = fmul fast float %2541, %2321
  %2543 = fadd fast float %2542, 1.000000e+00
  %2544 = fsub fast float %2543, %2539
  %2545 = fadd fast float %2544, %2540
  %2546 = fdiv fast float %2538, %2545
  %2547 = call float @dx.op.unary.f32(i32 7, float %2546)  ; Saturate(value)
  %2548 = fsub fast float %2547, %1721
  %2549 = fmul fast float %2548, %2502
  %2550 = fadd fast float %2549, %1721
  br label %2565

; <label>:2551                                    ; preds = %2517
  %2552 = icmp eq i32 %2491, 8
  br i1 %2552, label %2553, label %2565

; <label>:2553                                    ; preds = %2551
  %2554 = fmul fast float %2496, %2322
  %2555 = fmul fast float %2496, %2323
  %2556 = fadd fast float %2554, %1712
  %2557 = fadd fast float %2555, %1713
  %2558 = call float @dx.op.binary.f32(i32 36, float %1722, float %2324)  ; FMin(a,b)
  %2559 = fsub fast float %2558, %1722
  %2560 = fmul fast float %2559, %2499
  %2561 = fadd fast float %2560, %1722
  %2562 = fsub fast float %2321, %1721
  %2563 = fmul fast float %2502, %2562
  %2564 = fadd fast float %2563, %1721
  br label %2565

; <label>:2565                                    ; preds = %2553, %2551, %2519, %2504, %2482, %2020, %1724, %1711
  %2566 = phi float [ %1712, %2482 ], [ %1712, %2020 ], [ %1712, %1711 ], [ %2556, %2553 ], [ %1712, %2551 ], [ %2522, %2519 ], [ %2509, %2504 ], [ %1712, %1724 ]
  %2567 = phi float [ %1713, %2482 ], [ %1713, %2020 ], [ %1713, %1711 ], [ %2557, %2553 ], [ %1713, %2551 ], [ %2523, %2519 ], [ %2510, %2504 ], [ %1713, %1724 ]
  %2568 = phi float [ %2483, %2482 ], [ %1714, %2020 ], [ %1714, %1711 ], [ %2483, %2553 ], [ %2483, %2551 ], [ %2483, %2519 ], [ %2483, %2504 ], [ %1714, %1724 ]
  %2569 = phi float [ %2484, %2482 ], [ %1715, %2020 ], [ %1715, %1711 ], [ %2484, %2553 ], [ %2484, %2551 ], [ %2484, %2519 ], [ %2484, %2504 ], [ %1715, %1724 ]
  %2570 = phi float [ %2485, %2482 ], [ %1716, %2020 ], [ %1716, %1711 ], [ %2485, %2553 ], [ %2485, %2551 ], [ %2485, %2519 ], [ %2485, %2504 ], [ %1716, %1724 ]
  %2571 = phi float [ %2486, %2482 ], [ %1717, %2020 ], [ %1717, %1711 ], [ %2486, %2553 ], [ %2486, %2551 ], [ %2486, %2519 ], [ %2486, %2504 ], [ %1717, %1724 ]
  %2572 = phi float [ %2487, %2482 ], [ %1718, %2020 ], [ %1718, %1711 ], [ %2487, %2553 ], [ %2487, %2551 ], [ %2487, %2519 ], [ %2487, %2504 ], [ %1718, %1724 ]
  %2573 = phi float [ %2488, %2482 ], [ %1719, %2020 ], [ %1719, %1711 ], [ %2488, %2553 ], [ %2488, %2551 ], [ %2488, %2519 ], [ %2488, %2504 ], [ %1719, %1724 ]
  %2574 = phi float [ %2489, %2482 ], [ %1720, %2020 ], [ %1720, %1711 ], [ %2489, %2553 ], [ %2489, %2551 ], [ %2489, %2519 ], [ %2489, %2504 ], [ %1720, %1724 ]
  %2575 = phi float [ %1721, %2482 ], [ %1721, %2020 ], [ %1721, %1711 ], [ %2564, %2553 ], [ %1721, %2551 ], [ %2550, %2519 ], [ %2516, %2504 ], [ %1721, %1724 ]
  %2576 = phi float [ %1722, %2482 ], [ %1722, %2020 ], [ %1722, %1711 ], [ %2561, %2553 ], [ %1722, %2551 ], [ %2527, %2519 ], [ %2513, %2504 ], [ %1722, %1724 ]
  %2577 = phi float [ %2490, %2482 ], [ %1723, %2020 ], [ %1723, %1711 ], [ %2490, %2553 ], [ %2490, %2551 ], [ %2490, %2519 ], [ %2490, %2504 ], [ %1723, %1724 ]
  br i1 %338, label %3419, label %2578

; <label>:2578                                    ; preds = %2565
  %2579 = icmp ult i32 %389, 4
  %2580 = add i32 %35, 72
  %2581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2582 = extractvalue %dx.types.ResRet.i32 %2581, 0
  %2583 = add i32 %35, 76
  %2584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2583, i32 undef)  ; BufferLoad(srv,index,wot)
  %2585 = extractvalue %dx.types.ResRet.i32 %2584, 0
  %2586 = or i32 %2585, %2582
  %2587 = icmp eq i32 %2586, 0
  br i1 %2587, label %3419, label %2588

; <label>:2588                                    ; preds = %2578
  %2589 = and i32 %2582, 262144
  %2590 = icmp ne i32 %2589, 0
  %2591 = select i1 %2590, float %37, float 1.000000e+00
  %2592 = select i1 %2590, float %38, float 0.000000e+00
  %2593 = select i1 %2590, float %39, float 0.000000e+00
  %2594 = select i1 %2590, float %40, float 1.000000e+00
  %2595 = select i1 %2590, float %41, float %50
  %2596 = select i1 %2590, float %42, float %51
  %2597 = add i32 %35, 332
  %2598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %2599 = extractvalue %dx.types.ResRet.i32 %2598, 0
  %2600 = lshr i32 %2599, 16
  %2601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2600)  ; LegacyF16ToF32(value)
  %2602 = fmul fast float %2601, 0x3F50624DE0000000
  %2603 = add i32 %35, 136
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = lshr i32 %2605, 16
  %2607 = and i32 %2606, 255
  %2608 = lshr i32 %2605, 24
  %2609 = add i32 %35, 340
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = and i32 %2611, 65535
  %2613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2612)  ; LegacyF16ToF32(value)
  %2614 = lshr i32 %2611, 16
  %2615 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2614)  ; LegacyF16ToF32(value)
  %2616 = add i32 %35, 80
  %2617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2616, i32 undef)  ; BufferLoad(srv,index,wot)
  %2618 = extractvalue %dx.types.ResRet.i32 %2617, 0
  %2619 = lshr i32 %2618, 22
  %2620 = shl nuw nsw i32 %2619, 5
  %2621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2620)  ; LegacyF16ToF32(value)
  %2622 = shl i32 %2618, 4
  %2623 = and i32 %2622, 32752
  %2624 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2623)  ; LegacyF16ToF32(value)
  %2625 = lshr i32 %2618, 7
  %2626 = and i32 %2625, 32752
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2629 = extractvalue %dx.types.CBufRet.f32 %2628, 3
  %2630 = fmul fast float %2629, 1.000000e+03
  %2631 = fmul fast float %328, %2630
  %2632 = call float @dx.op.unary.f32(i32 22, float %2631)  ; Frc(value)
  %2633 = fadd fast float %2632, %318
  %2634 = fmul fast float %329, %2630
  %2635 = call float @dx.op.unary.f32(i32 22, float %2634)  ; Frc(value)
  %2636 = fadd fast float %2635, %320
  %2637 = fmul fast float %2602, %2630
  %2638 = call float @dx.op.unary.f32(i32 22, float %2637)  ; Frc(value)
  %2639 = fmul fast float %2638, 0x401921FB60000000
  %2640 = fadd fast float %2639, %2621
  %2641 = call float @dx.op.unary.f32(i32 13, float %2640)  ; Sin(value)
  %2642 = call float @dx.op.unary.f32(i32 12, float %2640)  ; Cos(value)
  %2643 = fsub fast float -0.000000e+00, %2641
  %2644 = fadd fast float %2595, -5.000000e-01
  %2645 = fadd fast float %2596, -5.000000e-01
  %2646 = fmul fast float %2613, %2644
  %2647 = fmul fast float %2615, %2645
  %2648 = fadd fast float %2646, 5.000000e-01
  %2649 = fadd fast float %2647, 5.000000e-01
  %2650 = fmul fast float %2624, %2648
  %2651 = fmul fast float %2627, %2649
  %2652 = fmul fast float %2642, %2650
  %2653 = call float @dx.op.tertiary.f32(i32 46, float %2643, float %2651, float %2652)  ; FMad(a,b,c)
  %2654 = fmul fast float %2641, %2650
  %2655 = call float @dx.op.tertiary.f32(i32 46, float %2642, float %2651, float %2654)  ; FMad(a,b,c)
  %2656 = fadd fast float %2633, %2653
  %2657 = fadd fast float %2636, %2655
  %2658 = icmp ugt i32 %2607, 1
  %2659 = icmp ugt i32 %2605, 33554431
  %2660 = or i1 %2659, %2658
  br i1 %2660, label %2661, label %2686

; <label>:2661                                    ; preds = %2588
  %2662 = add i32 %35, 276
  %2663 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2662, i32 undef)  ; BufferLoad(srv,index,wot)
  %2664 = extractvalue %dx.types.ResRet.i32 %2663, 0
  %2665 = lshr i32 %2664, 16
  %2666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2665)  ; LegacyF16ToF32(value)
  %2667 = fmul fast float %2629, %2666
  %2668 = call float @dx.op.unary.f32(i32 22, float %2667)  ; Frc(value)
  %2669 = mul nuw nsw i32 %2607, %2608
  %2670 = uitofp i32 %2669 to float
  %2671 = fmul fast float %2668, %2670
  %2672 = call float @dx.op.unary.f32(i32 27, float %2671)  ; Round_ni(value)
  %2673 = fptoui float %2672 to i32
  %2674 = urem i32 %2673, %2607
  %2675 = udiv i32 %2673, %2608
  %2676 = call float @dx.op.unary.f32(i32 22, float %2656)  ; Frc(value)
  %2677 = call float @dx.op.unary.f32(i32 22, float %2657)  ; Frc(value)
  %2678 = uitofp i32 %2674 to float
  %2679 = uitofp i32 %2675 to float
  %2680 = fadd fast float %2676, %2678
  %2681 = fadd fast float %2677, %2679
  %2682 = uitofp i32 %2607 to float
  %2683 = uitofp i32 %2608 to float
  %2684 = fdiv fast float %2680, %2682
  %2685 = fdiv fast float %2681, %2683
  br label %2686

; <label>:2686                                    ; preds = %2661, %2588
  %2687 = phi float [ %2684, %2661 ], [ %2656, %2588 ]
  %2688 = phi float [ %2685, %2661 ], [ %2657, %2588 ]
  %2689 = and i32 %2582, 16777216
  %2690 = icmp eq i32 %2689, 0
  br i1 %2690, label %2800, label %2691

; <label>:2691                                    ; preds = %2686
  %2692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2693 = extractvalue %dx.types.CBufRet.f32 %2692, 0
  %2694 = extractvalue %dx.types.CBufRet.f32 %2692, 1
  %2695 = extractvalue %dx.types.CBufRet.f32 %2692, 2
  %2696 = fadd fast float %2693, %117
  %2697 = fadd fast float %2694, %118
  %2698 = fadd fast float %2695, %119
  %2699 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2700 = extractvalue %dx.types.CBufRet.f32 %2699, 0
  %2701 = call float @dx.op.unary.f32(i32 7, float %2700)  ; Saturate(value)
  %2702 = icmp eq i32 %36, 65535
  br i1 %2702, label %2797, label %2703

; <label>:2703                                    ; preds = %2691
  %2704 = lshr i32 %36, 1
  %2705 = shl i32 %2704, 2
  %2706 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2705, i32 undef)  ; BufferLoad(srv,index,wot)
  %2707 = extractvalue %dx.types.ResRet.i32 %2706, 0
  %2708 = and i32 %36, 1
  %2709 = icmp ne i32 %2708, 0
  %2710 = lshr i32 %2707, 16
  %2711 = and i32 %2707, 65535
  %2712 = select i1 %2709, i32 %2710, i32 %2711
  %2713 = icmp eq i32 %2712, 65535
  br i1 %2713, label %2793, label %2714

; <label>:2714                                    ; preds = %2703
  %2715 = mul nuw nsw i32 %2712, 40
  %2716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2715, i32 undef)  ; BufferLoad(srv,index,wot)
  %2717 = extractvalue %dx.types.ResRet.f32 %2716, 0
  %2718 = extractvalue %dx.types.ResRet.f32 %2716, 1
  %2719 = extractvalue %dx.types.ResRet.f32 %2716, 2
  %2720 = add nuw nsw i32 %2715, 12
  %2721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.f32 %2721, 0
  %2723 = extractvalue %dx.types.ResRet.f32 %2721, 1
  %2724 = extractvalue %dx.types.ResRet.f32 %2721, 2
  %2725 = add nuw nsw i32 %2715, 24
  %2726 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2725, i32 undef)  ; BufferLoad(srv,index,wot)
  %2727 = extractvalue %dx.types.ResRet.f32 %2726, 0
  %2728 = extractvalue %dx.types.ResRet.f32 %2726, 1
  %2729 = extractvalue %dx.types.ResRet.f32 %2726, 2
  %2730 = add nuw nsw i32 %2715, 36
  %2731 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.f32 %2731, 0
  %2733 = fsub fast float %2696, %2717
  %2734 = fsub fast float %2697, %2718
  %2735 = fsub fast float %2698, %2719
  %2736 = fmul fast float %2732, %2733
  %2737 = fmul fast float %2732, %2734
  %2738 = fmul fast float %2732, %2735
  %2739 = call float @dx.op.unary.f32(i32 27, float %2736)  ; Round_ni(value)
  %2740 = call float @dx.op.unary.f32(i32 27, float %2737)  ; Round_ni(value)
  %2741 = call float @dx.op.unary.f32(i32 27, float %2738)  ; Round_ni(value)
  %2742 = fadd fast float %2739, 5.000000e-01
  %2743 = fadd fast float %2740, 5.000000e-01
  %2744 = fadd fast float %2741, 5.000000e-01
  %2745 = fmul fast float %2742, %2722
  %2746 = fmul fast float %2743, %2723
  %2747 = fmul fast float %2744, %2724
  %2748 = shl i32 %36, 2
  %2749 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2750 = extractvalue %dx.types.ResRet.i32 %2749, 0
  %2751 = add i32 %2750, 0
  %2752 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2751, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2753 = call float @dx.op.unary.f32(i32 22, float %2745)  ; Frc(value)
  %2754 = call float @dx.op.unary.f32(i32 22, float %2746)  ; Frc(value)
  %2755 = call float @dx.op.unary.f32(i32 22, float %2747)  ; Frc(value)
  %2756 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2752, %dx.types.Handle %32, float %2753, float %2754, float %2755, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2760 = fmul fast float %2757, 1.023000e+03
  %2761 = fmul fast float %2758, 1.023000e+03
  %2762 = fmul fast float %2759, 1.023000e+03
  %2763 = fadd fast float %2760, 5.000000e-01
  %2764 = fadd fast float %2761, 5.000000e-01
  %2765 = fadd fast float %2762, 5.000000e-01
  %2766 = call float @dx.op.unary.f32(i32 27, float %2763)  ; Round_ni(value)
  %2767 = call float @dx.op.unary.f32(i32 27, float %2764)  ; Round_ni(value)
  %2768 = call float @dx.op.unary.f32(i32 27, float %2765)  ; Round_ni(value)
  %2769 = fsub fast float %2736, %2739
  %2770 = fsub fast float %2737, %2740
  %2771 = fsub fast float %2738, %2741
  %2772 = fmul fast float %2769, 7.500000e-01
  %2773 = fmul fast float %2770, 7.500000e-01
  %2774 = fmul fast float %2771, 7.500000e-01
  %2775 = fadd fast float %2739, 1.250000e-01
  %2776 = fadd fast float %2775, %2772
  %2777 = fadd fast float %2776, %2766
  %2778 = fadd fast float %2740, 1.250000e-01
  %2779 = fadd fast float %2778, %2773
  %2780 = fadd fast float %2779, %2767
  %2781 = fadd fast float %2741, 1.250000e-01
  %2782 = fadd fast float %2781, %2774
  %2783 = fadd fast float %2782, %2768
  %2784 = fmul fast float %2777, %2727
  %2785 = fmul fast float %2780, %2728
  %2786 = fmul fast float %2783, %2729
  %2787 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2748, i32 undef)  ; BufferLoad(srv,index,wot)
  %2788 = extractvalue %dx.types.ResRet.i32 %2787, 0
  %2789 = add i32 %2788, 0
  %2790 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2789, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2790, %dx.types.Handle %30, float %2784, float %2785, float %2786, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2792 = extractvalue %dx.types.ResRet.f32 %2791, 0
  br label %2793

; <label>:2793                                    ; preds = %2714, %2703
  %2794 = phi float [ %2792, %2714 ], [ -1.000000e+00, %2703 ]
  %2795 = fadd fast float %2794, %2701
  %2796 = call float @dx.op.unary.f32(i32 7, float %2795)  ; Saturate(value)
  br label %2797

; <label>:2797                                    ; preds = %2793, %2691
  %2798 = phi float [ %2796, %2793 ], [ %2701, %2691 ]
  %2799 = fmul fast float %2798, %384
  br label %2800

; <label>:2800                                    ; preds = %2797, %2686
  %2801 = phi float [ %2799, %2797 ], [ %384, %2686 ]
  %2802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2803 = extractvalue %dx.types.ResRet.i32 %2802, 0
  %2804 = and i32 %2803, 256
  %2805 = icmp eq i32 %2804, 0
  br i1 %2805, label %2852, label %2806

; <label>:2806                                    ; preds = %2800
  %2807 = add i32 %35, 436
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2807, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = add i32 %2809, 0
  %2811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2812 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2811, %dx.types.Handle %59, float %2687, float %2688, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2813 = extractvalue %dx.types.ResRet.f32 %2812, 0
  %2814 = add i32 %35, 148
  %2815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2814, i32 undef)  ; BufferLoad(srv,index,wot)
  %2816 = extractvalue %dx.types.ResRet.i32 %2815, 0
  %2817 = shl i32 %2816, 4
  %2818 = and i32 %2817, 32752
  %2819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2818)  ; LegacyF16ToF32(value)
  %2820 = lshr i32 %2816, 7
  %2821 = and i32 %2820, 32752
  %2822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2821)  ; LegacyF16ToF32(value)
  %2823 = fsub fast float 1.000000e+00, %2801
  %2824 = call float @dx.op.binary.f32(i32 35, float %2823, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2825 = bitcast float %2801 to i32
  %2826 = sitofp i32 %2825 to float
  %2827 = fadd fast float %2826, 0xC1CFBF8940000000
  %2828 = fmul fast float %2822, %2827
  %2829 = fadd fast float %2828, 0x41CFBF8940000000
  %2830 = fptosi float %2829 to i32
  %2831 = bitcast i32 %2830 to float
  %2832 = bitcast float %2824 to i32
  %2833 = sitofp i32 %2832 to float
  %2834 = fadd fast float %2833, 0xC1CFBF8940000000
  %2835 = fmul fast float %2834, %2822
  %2836 = fadd fast float %2835, 0x41CFBF8940000000
  %2837 = fptosi float %2836 to i32
  %2838 = bitcast i32 %2837 to float
  %2839 = fmul fast float %2831, %2819
  %2840 = fmul fast float %2838, %2819
  %2841 = fsub fast float %2824, %2839
  %2842 = fadd fast float %2840, %2824
  %2843 = call float @dx.op.unary.f32(i32 7, float %2841)  ; Saturate(value)
  %2844 = call float @dx.op.unary.f32(i32 7, float %2842)  ; Saturate(value)
  %2845 = fsub fast float %2813, %2843
  %2846 = fsub fast float %2844, %2843
  %2847 = bitcast float %2846 to i32
  %2848 = sub nsw i32 2129859010, %2847
  %2849 = bitcast i32 %2848 to float
  %2850 = fmul fast float %2849, %2845
  %2851 = call float @dx.op.unary.f32(i32 7, float %2850)  ; Saturate(value)
  br label %2852

; <label>:2852                                    ; preds = %2806, %2800
  %2853 = phi float [ %2851, %2806 ], [ %2801, %2800 ]
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = and i32 %2855, 128
  %2857 = icmp eq i32 %2856, 0
  br i1 %2857, label %2874, label %2858

; <label>:2858                                    ; preds = %2852
  %2859 = add i32 %35, 420
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2859, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = add i32 %2861, 0
  %2863 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2862, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2864 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2863, %dx.types.Handle %59, float %2687, float %2688, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2865 = extractvalue %dx.types.ResRet.f32 %2864, 0
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = and i32 %2867, 524288
  %2869 = icmp ne i32 %2868, 0
  %2870 = fcmp fast ogt float %2865, 0x3FE0101020000000
  %2871 = select i1 %2870, float 1.000000e+00, float 0.000000e+00
  %2872 = select i1 %2869, float %2871, float %2865
  %2873 = fmul fast float %2872, %2853
  br label %2874

; <label>:2874                                    ; preds = %2858, %2852
  %2875 = phi float [ %2873, %2858 ], [ %2853, %2852 ]
  %2876 = fcmp fast ult float %2875, 0x3F70101020000000
  br i1 %2876, label %3419, label %2877

; <label>:2877                                    ; preds = %2874
  %2878 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2879 = extractvalue %dx.types.ResRet.i32 %2878, 0
  %2880 = and i32 %2879, 16
  %2881 = icmp eq i32 %2880, 0
  br i1 %2881, label %3080, label %2882

; <label>:2882                                    ; preds = %2877
  %2883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2884 = extractvalue %dx.types.ResRet.i32 %2883, 0
  %2885 = add i32 %35, 372
  %2886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2885, i32 undef)  ; BufferLoad(srv,index,wot)
  %2887 = extractvalue %dx.types.ResRet.i32 %2886, 0
  %2888 = add i32 %2887, 0
  %2889 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2888, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2890 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2889, %dx.types.Handle %58, float %2687, float %2688, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2891 = extractvalue %dx.types.ResRet.f32 %2890, 0
  %2892 = extractvalue %dx.types.ResRet.f32 %2890, 1
  %2893 = extractvalue %dx.types.ResRet.f32 %2890, 2
  %2894 = extractvalue %dx.types.ResRet.f32 %2890, 3
  %2895 = and i32 %2884, 255
  %2896 = uitofp i32 %2895 to float
  %2897 = lshr i32 %2884, 8
  %2898 = and i32 %2897, 255
  %2899 = uitofp i32 %2898 to float
  %2900 = fmul fast float %2894, %2896
  %2901 = fadd fast float %2900, %2899
  %2902 = fmul fast float %2901, 0x3F70101000000000
  %2903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2904 = extractvalue %dx.types.ResRet.i32 %2903, 0
  %2905 = and i32 %2904, 512
  %2906 = icmp eq i32 %2905, 0
  br i1 %2906, label %2915, label %2907

; <label>:2907                                    ; preds = %2882
  %2908 = add i32 %35, 452
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2908, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = add i32 %2910, 0
  %2912 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2911, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2913 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2912, %dx.types.Handle %59, float %2687, float %2688, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2914 = extractvalue %dx.types.ResRet.f32 %2913, 0
  br label %2915

; <label>:2915                                    ; preds = %2907, %2882
  %2916 = phi float [ %2914, %2907 ], [ 1.000000e+00, %2882 ]
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = and i32 %2918, 33554432
  %2920 = icmp eq i32 %2919, 0
  br i1 %2920, label %3027, label %2921

; <label>:2921                                    ; preds = %2915
  %2922 = add i32 %35, 272
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2922, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 65535
  %2926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2925)  ; LegacyF16ToF32(value)
  %2927 = lshr i32 %2924, 16
  %2928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2927)  ; LegacyF16ToF32(value)
  %2929 = add i32 %35, 276
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = and i32 %2931, 65535
  %2933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2932)  ; LegacyF16ToF32(value)
  %2934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %2935 = extractvalue %dx.types.ResRet.i32 %2934, 0
  %2936 = lshr i32 %2935, 24
  %2937 = uitofp i32 %2936 to float
  %2938 = fmul fast float %2937, 0x3F70101020000000
  %2939 = and i32 %2935, 255
  %2940 = uitofp i32 %2939 to float
  %2941 = fmul fast float %2940, 0x3F70101020000000
  %2942 = lshr i32 %2935, 8
  %2943 = and i32 %2942, 255
  %2944 = uitofp i32 %2943 to float
  %2945 = fmul fast float %2944, 0x3F70101020000000
  %2946 = lshr i32 %2935, 16
  %2947 = and i32 %2946, 255
  %2948 = uitofp i32 %2947 to float
  %2949 = fmul fast float %2948, 0x3F70101020000000
  %2950 = add i32 %35, 268
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = lshr i32 %2952, 24
  %2954 = uitofp i32 %2953 to float
  %2955 = fmul fast float %2954, 0x3F70101020000000
  %2956 = and i32 %2952, 255
  %2957 = uitofp i32 %2956 to float
  %2958 = fmul fast float %2957, 0x3F70101020000000
  %2959 = lshr i32 %2952, 8
  %2960 = and i32 %2959, 255
  %2961 = uitofp i32 %2960 to float
  %2962 = fmul fast float %2961, 0x3F70101020000000
  %2963 = lshr i32 %2952, 16
  %2964 = and i32 %2963, 255
  %2965 = uitofp i32 %2964 to float
  %2966 = fmul fast float %2965, 0x3F70101020000000
  %2967 = bitcast float %2891 to i32
  %2968 = ashr i32 %2967, 1
  %2969 = sub nsw i32 1597463174, %2968
  %2970 = bitcast i32 %2969 to float
  %2971 = fmul fast float %2891, 5.000000e-01
  %2972 = fmul fast float %2970, %2970
  %2973 = fmul fast float %2972, %2971
  %2974 = fsub fast float 1.500000e+00, %2973
  %2975 = fmul fast float %2970, %2891
  %2976 = fmul fast float %2975, %2974
  %2977 = bitcast float %2892 to i32
  %2978 = ashr i32 %2977, 1
  %2979 = sub nsw i32 1597463174, %2978
  %2980 = bitcast i32 %2979 to float
  %2981 = fmul fast float %2892, 5.000000e-01
  %2982 = fmul fast float %2980, %2980
  %2983 = fmul fast float %2982, %2981
  %2984 = fsub fast float 1.500000e+00, %2983
  %2985 = fmul fast float %2980, %2892
  %2986 = fmul fast float %2985, %2984
  %2987 = bitcast float %2893 to i32
  %2988 = ashr i32 %2987, 1
  %2989 = sub nsw i32 1597463174, %2988
  %2990 = bitcast i32 %2989 to float
  %2991 = fmul fast float %2893, 5.000000e-01
  %2992 = fmul fast float %2990, %2990
  %2993 = fmul fast float %2992, %2991
  %2994 = fsub fast float 1.500000e+00, %2993
  %2995 = fmul fast float %2990, %2893
  %2996 = fmul fast float %2995, %2994
  %2997 = fsub fast float %2976, %2958
  %2998 = fsub fast float %2986, %2962
  %2999 = fsub fast float %2996, %2966
  %3000 = fmul fast float %2997, %2926
  %3001 = fmul fast float %2998, %2928
  %3002 = fmul fast float %2999, %2933
  %3003 = fadd fast float %3000, %2941
  %3004 = fadd fast float %3001, %2945
  %3005 = fadd fast float %3002, %2949
  %3006 = call float @dx.op.unary.f32(i32 7, float %3003)  ; Saturate(value)
  %3007 = call float @dx.op.unary.f32(i32 7, float %3004)  ; Saturate(value)
  %3008 = call float @dx.op.unary.f32(i32 7, float %3005)  ; Saturate(value)
  %3009 = fmul fast float %3006, %3006
  %3010 = fmul fast float %3007, %3007
  %3011 = fmul fast float %3008, %3008
  %3012 = fsub fast float %3009, %2891
  %3013 = fsub fast float %3010, %2892
  %3014 = fsub fast float %3011, %2893
  %3015 = fmul fast float %3012, %2916
  %3016 = fmul fast float %3013, %2916
  %3017 = fmul fast float %3014, %2916
  %3018 = fadd fast float %3015, %2891
  %3019 = fadd fast float %3016, %2892
  %3020 = fadd fast float %3017, %2893
  %3021 = fadd fast float %2938, %2902
  %3022 = fsub fast float %3021, %2955
  %3023 = call float @dx.op.unary.f32(i32 7, float %3022)  ; Saturate(value)
  %3024 = fsub fast float %3023, %2902
  %3025 = fmul fast float %3024, %2916
  %3026 = fadd fast float %3025, %2902
  br label %3080

; <label>:3027                                    ; preds = %2915
  %3028 = and i32 %2918, 134217728
  %3029 = icmp eq i32 %3028, 0
  br i1 %3029, label %3064, label %3030

; <label>:3030                                    ; preds = %3027
  %3031 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %3032 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %3033 = call float @dx.op.unary.f32(i32 24, float %313)  ; Sqrt(value)
  %3034 = fadd fast float %3031, -5.000000e-01
  %3035 = fadd fast float %3032, -5.000000e-01
  %3036 = fadd fast float %3033, -5.000000e-01
  %3037 = fmul fast float %3034, %2916
  %3038 = fmul fast float %3035, %2916
  %3039 = fmul fast float %3036, %2916
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = fadd fast float %3038, 5.000000e-01
  %3042 = fadd fast float %3039, 5.000000e-01
  %3043 = call float @dx.op.unary.f32(i32 24, float %2891)  ; Sqrt(value)
  %3044 = call float @dx.op.unary.f32(i32 24, float %2892)  ; Sqrt(value)
  %3045 = call float @dx.op.unary.f32(i32 24, float %2893)  ; Sqrt(value)
  %3046 = fmul fast float %3040, 2.000000e+00
  %3047 = fsub fast float 1.000000e+00, %3046
  %3048 = fmul fast float %3047, %3043
  %3049 = fadd fast float %3048, %3046
  %3050 = fmul fast float %3049, %3043
  %3051 = fmul fast float %3041, 2.000000e+00
  %3052 = fsub fast float 1.000000e+00, %3051
  %3053 = fmul fast float %3052, %3044
  %3054 = fadd fast float %3053, %3051
  %3055 = fmul fast float %3054, %3044
  %3056 = fmul fast float %3042, 2.000000e+00
  %3057 = fsub fast float 1.000000e+00, %3056
  %3058 = fmul fast float %3057, %3045
  %3059 = fadd fast float %3058, %3056
  %3060 = fmul fast float %3059, %3045
  %3061 = fmul fast float %3050, %3050
  %3062 = fmul fast float %3055, %3055
  %3063 = fmul fast float %3060, %3060
  br label %3080

; <label>:3064                                    ; preds = %3027
  %3065 = fmul fast float %305, %305
  %3066 = fmul fast float %309, %309
  %3067 = fmul fast float %313, %313
  %3068 = fadd fast float %3065, -1.000000e+00
  %3069 = fadd fast float %3066, -1.000000e+00
  %3070 = fadd fast float %3067, -1.000000e+00
  %3071 = fmul fast float %2916, %3068
  %3072 = fmul fast float %2916, %3069
  %3073 = fmul fast float %2916, %3070
  %3074 = fadd fast float %3071, 1.000000e+00
  %3075 = fadd fast float %3072, 1.000000e+00
  %3076 = fadd fast float %3073, 1.000000e+00
  %3077 = fmul fast float %3074, %2891
  %3078 = fmul fast float %3075, %2892
  %3079 = fmul fast float %3076, %2893
  br label %3080

; <label>:3080                                    ; preds = %3064, %3030, %2921, %2877
  %3081 = phi float [ %3026, %2921 ], [ %2902, %3030 ], [ %2902, %3064 ], [ 0x3FA23C0BE0000000, %2877 ]
  %3082 = phi float [ %3018, %2921 ], [ %3061, %3030 ], [ %3077, %3064 ], [ 1.000000e+00, %2877 ]
  %3083 = phi float [ %3019, %2921 ], [ %3062, %3030 ], [ %3078, %3064 ], [ 1.000000e+00, %2877 ]
  %3084 = phi float [ %3020, %2921 ], [ %3063, %3030 ], [ %3079, %3064 ], [ 1.000000e+00, %2877 ]
  %3085 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3086 = extractvalue %dx.types.CBufRet.i32 %3085, 1
  %3087 = and i32 %3086, 1
  %3088 = icmp ne i32 %3087, 0
  %3089 = add i32 %35, 356
  %3090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3089, i32 undef)  ; BufferLoad(srv,index,wot)
  %3091 = extractvalue %dx.types.ResRet.i32 %3090, 0
  %3092 = and i32 %3091, 32
  %3093 = icmp ne i32 %3092, 0
  %3094 = and i1 %3088, %3093
  %3095 = select i1 %3094, float 1.000000e+00, float %3082
  %3096 = select i1 %3094, float 0x3FD3333340000000, float %3083
  %3097 = select i1 %3094, float 0x3FD3333340000000, float %3084
  %3098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3099 = extractvalue %dx.types.ResRet.i32 %3098, 0
  %3100 = and i32 %3099, 32
  %3101 = icmp eq i32 %3100, 0
  br i1 %3101, label %3174, label %3102

; <label>:3102                                    ; preds = %3080
  %3103 = add i32 %35, 140
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3103, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = add i32 %35, 388
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3106, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = add i32 %3108, 0
  %3110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3109, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3111 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3110, %dx.types.Handle %58, float %2687, float %2688, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3112 = extractvalue %dx.types.ResRet.f32 %3111, 0
  %3113 = extractvalue %dx.types.ResRet.f32 %3111, 1
  %3114 = extractvalue %dx.types.ResRet.f32 %3111, 2
  %3115 = extractvalue %dx.types.ResRet.f32 %3111, 3
  %3116 = and i32 %3105, 255
  %3117 = uitofp i32 %3116 to float
  %3118 = lshr i32 %3105, 8
  %3119 = and i32 %3118, 255
  %3120 = uitofp i32 %3119 to float
  %3121 = lshr i32 %3105, 16
  %3122 = and i32 %3121, 255
  %3123 = uitofp i32 %3122 to float
  %3124 = fmul fast float %3123, 0x3F70101000000000
  %3125 = fmul fast float %3112, %3117
  %3126 = fadd fast float %3125, %3120
  %3127 = fmul fast float %3126, 0x3F70101000000000
  %3128 = fadd fast float %3113, -5.000000e-01
  %3129 = fadd fast float %3115, -5.000000e-01
  %3130 = fmul fast float %3128, %3124
  %3131 = fmul fast float %3129, %3124
  %3132 = fadd fast float %3130, 5.000000e-01
  %3133 = fadd fast float %3131, 5.000000e-01
  %3134 = fmul fast float %3132, 2.000000e+00
  %3135 = fadd fast float %3134, -1.000000e+00
  %3136 = fmul fast float %3133, 2.000000e+00
  %3137 = fadd fast float %3136, -1.000000e+00
  %3138 = fadd fast float %3135, %3137
  %3139 = fmul fast float %3138, 5.000000e-01
  %3140 = fsub fast float %3135, %3137
  %3141 = fmul fast float %3140, 5.000000e-01
  %3142 = call float @dx.op.unary.f32(i32 6, float %3139)  ; FAbs(value)
  %3143 = fsub fast float 1.000000e+00, %3142
  %3144 = call float @dx.op.unary.f32(i32 6, float %3141)  ; FAbs(value)
  %3145 = fsub fast float %3143, %3144
  %3146 = call float @dx.op.dot3.f32(i32 55, float %3139, float %3141, float %3145, float %3139, float %3141, float %3145)  ; Dot3(ax,ay,az,bx,by,bz)
  %3147 = call float @dx.op.unary.f32(i32 25, float %3146)  ; Rsqrt(value)
  %3148 = fmul fast float %3139, %3147
  %3149 = fmul fast float %3141, %3147
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = and i32 %3151, 67108864
  %3153 = icmp eq i32 %3152, 0
  br i1 %3153, label %3170, label %3154

; <label>:3154                                    ; preds = %3102
  %3155 = add i32 %35, 328
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = and i32 %3157, 65535
  %3159 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3158)  ; LegacyF16ToF32(value)
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2597, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = and i32 %3161, 65535
  %3163 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3162)  ; LegacyF16ToF32(value)
  %3164 = lshr i32 %3157, 16
  %3165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3164)  ; LegacyF16ToF32(value)
  %3166 = fsub fast float %3127, %3165
  %3167 = fmul fast float %3166, %3159
  %3168 = fadd fast float %3167, %3163
  %3169 = call float @dx.op.unary.f32(i32 7, float %3168)  ; Saturate(value)
  br label %3170

; <label>:3170                                    ; preds = %3154, %3102
  %3171 = phi float [ %3169, %3154 ], [ %3127, %3102 ]
  %3172 = call float @dx.op.dot2.f32(i32 54, float %3148, float %3149, float %2591, float %2592)  ; Dot2(ax,ay,bx,by)
  %3173 = call float @dx.op.dot2.f32(i32 54, float %3148, float %3149, float %2593, float %2594)  ; Dot2(ax,ay,bx,by)
  br label %3174

; <label>:3174                                    ; preds = %3170, %3080
  %3175 = phi float [ %3171, %3170 ], [ 0x3FD6666660000000, %3080 ]
  %3176 = phi float [ %3172, %3170 ], [ 0.000000e+00, %3080 ]
  %3177 = phi float [ %3173, %3170 ], [ 0.000000e+00, %3080 ]
  %3178 = phi float [ %3114, %3170 ], [ 1.000000e+00, %3080 ]
  %3179 = add i32 %35, 208
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3179, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = lshr i32 %3181, 22
  %3183 = shl nuw nsw i32 %3182, 5
  %3184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3183)  ; LegacyF16ToF32(value)
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = and i32 %3186, 64
  %3188 = icmp eq i32 %3187, 0
  br i1 %3188, label %3222, label %3189

; <label>:3189                                    ; preds = %3174
  %3190 = add i32 %35, 404
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3190, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = add i32 %3192, 0
  %3194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = and i32 %3196, 131072
  %3198 = icmp eq i32 %3197, 0
  %3199 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3194, %dx.types.Handle %58, float %2687, float %2688, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3200 = extractvalue %dx.types.ResRet.f32 %3199, 0
  %3201 = extractvalue %dx.types.ResRet.f32 %3199, 1
  %3202 = extractvalue %dx.types.ResRet.f32 %3199, 2
  %3203 = fmul fast float %3200, %293
  %3204 = fmul fast float %3201, %296
  %3205 = fmul fast float %3202, %299
  br i1 %3198, label %3212, label %3206

; <label>:3206                                    ; preds = %3189
  %3207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3208 = extractvalue %dx.types.CBufRet.f32 %3207, 0
  %3209 = fmul fast float %3208, %3203
  %3210 = fmul fast float %3208, %3204
  %3211 = fmul fast float %3208, %3205
  br label %3212

; <label>:3212                                    ; preds = %3206, %3189
  %3213 = phi float [ %3209, %3206 ], [ %3203, %3189 ]
  %3214 = phi float [ %3210, %3206 ], [ %3204, %3189 ]
  %3215 = phi float [ %3211, %3206 ], [ %3205, %3189 ]
  %3216 = fmul fast float %3213, %3184
  %3217 = select i1 %161, float %3216, float %3213
  %3218 = call float @dx.op.dot3.f32(i32 55, float %3217, float %3214, float %3215, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3219 = select i1 %161, float 0.000000e+00, float %3213
  %3220 = select i1 %161, float %3218, float %3214
  %3221 = select i1 %161, float 0.000000e+00, float %3215
  br label %3222

; <label>:3222                                    ; preds = %3212, %3174
  %3223 = phi float [ %3219, %3212 ], [ 0.000000e+00, %3174 ]
  %3224 = phi float [ %3220, %3212 ], [ 0.000000e+00, %3174 ]
  %3225 = phi float [ %3221, %3212 ], [ 0.000000e+00, %3174 ]
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = add i32 %35, 144
  %3229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3228, i32 undef)  ; BufferLoad(srv,index,wot)
  %3230 = extractvalue %dx.types.ResRet.i32 %3229, 0
  %3231 = and i32 %3230, 255
  %3232 = uitofp i32 %3231 to float
  %3233 = lshr i32 %3230, 8
  %3234 = and i32 %3233, 255
  %3235 = uitofp i32 %3234 to float
  %3236 = call float @dx.op.dot3.f32(i32 55, float %3095, float %3096, float %3097, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3237 = fmul fast float %3235, %3236
  %3238 = fadd fast float %3237, %3232
  %3239 = fmul fast float %3238, 0x3F70101020000000
  %3240 = call float @dx.op.unary.f32(i32 7, float %3239)  ; Saturate(value)
  br i1 %2579, label %3241, label %3249

; <label>:3241                                    ; preds = %3222
  %3242 = fsub fast float 1.000000e+00, %2875
  %3243 = fmul fast float %3242, %2571
  %3244 = fmul fast float %3242, %2572
  %3245 = fmul fast float %3242, %2573
  %3246 = fmul fast float %3242, %2568
  %3247 = fmul fast float %3242, %2569
  %3248 = fmul fast float %3242, %2570
  br label %3249

; <label>:3249                                    ; preds = %3241, %3222
  %3250 = phi float [ %3246, %3241 ], [ %2568, %3222 ]
  %3251 = phi float [ %3247, %3241 ], [ %2569, %3222 ]
  %3252 = phi float [ %3248, %3241 ], [ %2570, %3222 ]
  %3253 = phi float [ %3243, %3241 ], [ %2571, %3222 ]
  %3254 = phi float [ %3244, %3241 ], [ %2572, %3222 ]
  %3255 = phi float [ %3245, %3241 ], [ %2573, %3222 ]
  %3256 = and i32 %3227, 3
  %3257 = icmp eq i32 %3256, 3
  br i1 %3257, label %3336, label %3258

; <label>:3258                                    ; preds = %3249
  %3259 = and i32 %3227, 16
  %3260 = icmp ne i32 %3259, 0
  %3261 = select i1 %3260, float %2875, float 0.000000e+00
  %3262 = icmp eq i32 %3256, 0
  br i1 %3262, label %3263, label %3291

; <label>:3263                                    ; preds = %3258
  %3264 = and i32 %3227, 64
  %3265 = icmp ne i32 %3264, 0
  %3266 = select i1 %3265, float %2875, float 0.000000e+00
  %3267 = fsub fast float %3095, %3253
  %3268 = fsub fast float %3096, %3254
  %3269 = fsub fast float %3097, %3255
  %3270 = fmul fast float %3261, %3267
  %3271 = fmul fast float %3261, %3268
  %3272 = fmul fast float %3261, %3269
  %3273 = fadd fast float %3270, %3253
  %3274 = fadd fast float %3271, %3254
  %3275 = fadd fast float %3272, %3255
  %3276 = fsub fast float %3081, %2574
  %3277 = fmul fast float %3261, %3276
  %3278 = fadd fast float %3277, %2574
  %3279 = fsub fast float %3223, %3250
  %3280 = fsub fast float %3224, %3251
  %3281 = fsub fast float %3225, %3252
  %3282 = fmul fast float %3266, %3279
  %3283 = fmul fast float %3266, %3280
  %3284 = fmul fast float %3266, %3281
  %3285 = fadd fast float %3282, %3250
  %3286 = fadd fast float %3283, %3251
  %3287 = fadd fast float %3284, %3252
  %3288 = fsub fast float %3240, %2577
  %3289 = fmul fast float %3261, %3288
  %3290 = fadd fast float %3289, %2577
  br label %3336

; <label>:3291                                    ; preds = %3258
  %3292 = icmp eq i32 %3256, 1
  br i1 %3292, label %3293, label %3306

; <label>:3293                                    ; preds = %3291
  %3294 = fadd fast float %3095, -1.000000e+00
  %3295 = fadd fast float %3096, -1.000000e+00
  %3296 = fadd fast float %3097, -1.000000e+00
  %3297 = fmul fast float %3261, %3294
  %3298 = fmul fast float %3261, %3295
  %3299 = fmul fast float %3261, %3296
  %3300 = fadd fast float %3297, 1.000000e+00
  %3301 = fadd fast float %3298, 1.000000e+00
  %3302 = fadd fast float %3299, 1.000000e+00
  %3303 = fmul fast float %3300, %3253
  %3304 = fmul fast float %3301, %3254
  %3305 = fmul fast float %3302, %3255
  br label %3336

; <label>:3306                                    ; preds = %3291
  %3307 = icmp eq i32 %3256, 2
  br i1 %3307, label %3308, label %3336

; <label>:3308                                    ; preds = %3306
  %3309 = call float @dx.op.unary.f32(i32 24, float %3095)  ; Sqrt(value)
  %3310 = call float @dx.op.unary.f32(i32 24, float %3096)  ; Sqrt(value)
  %3311 = call float @dx.op.unary.f32(i32 24, float %3097)  ; Sqrt(value)
  %3312 = fadd fast float %3309, -5.000000e-01
  %3313 = fadd fast float %3310, -5.000000e-01
  %3314 = fadd fast float %3311, -5.000000e-01
  %3315 = fmul fast float %3312, %3261
  %3316 = fmul fast float %3313, %3261
  %3317 = fmul fast float %3314, %3261
  %3318 = fadd fast float %3315, 5.000000e-01
  %3319 = fadd fast float %3316, 5.000000e-01
  %3320 = fadd fast float %3317, 5.000000e-01
  %3321 = fmul fast float %3318, 2.000000e+00
  %3322 = fsub fast float 1.000000e+00, %3321
  %3323 = fmul fast float %3322, %3253
  %3324 = fadd fast float %3323, %3321
  %3325 = fmul fast float %3324, %3253
  %3326 = fmul fast float %3319, 2.000000e+00
  %3327 = fsub fast float 1.000000e+00, %3326
  %3328 = fmul fast float %3327, %3254
  %3329 = fadd fast float %3328, %3326
  %3330 = fmul fast float %3329, %3254
  %3331 = fmul fast float %3320, 2.000000e+00
  %3332 = fsub fast float 1.000000e+00, %3331
  %3333 = fmul fast float %3332, %3255
  %3334 = fadd fast float %3333, %3331
  %3335 = fmul fast float %3334, %3255
  br label %3336

; <label>:3336                                    ; preds = %3308, %3306, %3293, %3263, %3249
  %3337 = phi float [ %3250, %3249 ], [ %3250, %3308 ], [ %3250, %3306 ], [ %3250, %3293 ], [ %3285, %3263 ]
  %3338 = phi float [ %3251, %3249 ], [ %3251, %3308 ], [ %3251, %3306 ], [ %3251, %3293 ], [ %3286, %3263 ]
  %3339 = phi float [ %3252, %3249 ], [ %3252, %3308 ], [ %3252, %3306 ], [ %3252, %3293 ], [ %3287, %3263 ]
  %3340 = phi float [ %3253, %3249 ], [ %3325, %3308 ], [ %3253, %3306 ], [ %3303, %3293 ], [ %3273, %3263 ]
  %3341 = phi float [ %3254, %3249 ], [ %3330, %3308 ], [ %3254, %3306 ], [ %3304, %3293 ], [ %3274, %3263 ]
  %3342 = phi float [ %3255, %3249 ], [ %3335, %3308 ], [ %3255, %3306 ], [ %3305, %3293 ], [ %3275, %3263 ]
  %3343 = phi float [ %2574, %3249 ], [ %2574, %3308 ], [ %2574, %3306 ], [ %2574, %3293 ], [ %3278, %3263 ]
  %3344 = phi float [ %2577, %3249 ], [ %2577, %3308 ], [ %2577, %3306 ], [ %2577, %3293 ], [ %3290, %3263 ]
  %3345 = and i32 %3227, 12
  %3346 = icmp eq i32 %3345, 12
  br i1 %3346, label %3419, label %3347

; <label>:3347                                    ; preds = %3336
  %3348 = and i32 %3227, 2097184
  %3349 = icmp eq i32 %3348, 2097184
  %3350 = select i1 %3349, float %2875, float 0.000000e+00
  %3351 = and i32 %3227, 4194336
  %3352 = icmp eq i32 %3351, 4194336
  %3353 = select i1 %3352, float %2875, float 0.000000e+00
  %3354 = and i32 %3227, 8388640
  %3355 = icmp eq i32 %3354, 8388640
  %3356 = select i1 %3355, float %2875, float 0.000000e+00
  %3357 = icmp eq i32 %3345, 0
  br i1 %3357, label %3358, label %3371

; <label>:3358                                    ; preds = %3347
  %3359 = fsub fast float %3176, %2566
  %3360 = fsub fast float %3177, %2567
  %3361 = fmul fast float %3350, %3359
  %3362 = fmul fast float %3350, %3360
  %3363 = fadd fast float %3361, %2566
  %3364 = fadd fast float %3362, %2567
  %3365 = fsub fast float %3178, %2576
  %3366 = fmul fast float %3353, %3365
  %3367 = fadd fast float %3366, %2576
  %3368 = fsub fast float %3175, %2575
  %3369 = fmul fast float %3356, %3368
  %3370 = fadd fast float %3369, %2575
  br label %3419

; <label>:3371                                    ; preds = %3347
  %3372 = icmp eq i32 %3345, 4
  br i1 %3372, label %3373, label %3405

; <label>:3373                                    ; preds = %3371
  %3374 = fmul fast float %3350, %3176
  %3375 = fmul fast float %3350, %3177
  %3376 = fadd fast float %3374, %2566
  %3377 = fadd fast float %3375, %2567
  %3378 = call float @dx.op.binary.f32(i32 36, float %2576, float %3178)  ; FMin(a,b)
  %3379 = fsub fast float %3378, %2576
  %3380 = fmul fast float %3379, %3353
  %3381 = fadd fast float %3380, %2576
  %3382 = fadd fast float %3175, %2575
  %3383 = fmul fast float %3382, 0x3FF337FAE0000000
  %3384 = fmul fast float %2575, %2575
  %3385 = fmul fast float %3175, %3175
  %3386 = fadd fast float %3385, %3384
  %3387 = fmul fast float %3386, 0x3FE5152B00000000
  %3388 = fmul fast float %2575, 0xBFCC1F85E0000000
  %3389 = fmul fast float %3388, %3175
  %3390 = fadd fast float %3389, 0xBFE1363700000000
  %3391 = fadd fast float %3390, %3383
  %3392 = fsub fast float %3391, %3387
  %3393 = fmul fast float %3382, 0x3FBA6F0D00000000
  %3394 = fmul fast float %3386, 0x3FD0432880000000
  %3395 = fmul fast float %2575, 0xBFEF110800000000
  %3396 = fmul fast float %3395, %3175
  %3397 = fadd fast float %3396, 1.000000e+00
  %3398 = fsub fast float %3397, %3393
  %3399 = fadd fast float %3398, %3394
  %3400 = fdiv fast float %3392, %3399
  %3401 = call float @dx.op.unary.f32(i32 7, float %3400)  ; Saturate(value)
  %3402 = fsub fast float %3401, %2575
  %3403 = fmul fast float %3402, %3356
  %3404 = fadd fast float %3403, %2575
  br label %3419

; <label>:3405                                    ; preds = %3371
  %3406 = icmp eq i32 %3345, 8
  br i1 %3406, label %3407, label %3419

; <label>:3407                                    ; preds = %3405
  %3408 = fmul fast float %3350, %3176
  %3409 = fmul fast float %3350, %3177
  %3410 = fadd fast float %3408, %2566
  %3411 = fadd fast float %3409, %2567
  %3412 = call float @dx.op.binary.f32(i32 36, float %2576, float %3178)  ; FMin(a,b)
  %3413 = fsub fast float %3412, %2576
  %3414 = fmul fast float %3413, %3353
  %3415 = fadd fast float %3414, %2576
  %3416 = fsub fast float %3175, %2575
  %3417 = fmul fast float %3356, %3416
  %3418 = fadd fast float %3417, %2575
  br label %3419

; <label>:3419                                    ; preds = %3407, %3405, %3373, %3358, %3336, %2874, %2578, %2565
  %3420 = phi float [ %2566, %3336 ], [ %2566, %2874 ], [ %2566, %2565 ], [ %2566, %2578 ], [ %3363, %3358 ], [ %3376, %3373 ], [ %2566, %3405 ], [ %3410, %3407 ]
  %3421 = phi float [ %2567, %3336 ], [ %2567, %2874 ], [ %2567, %2565 ], [ %2567, %2578 ], [ %3364, %3358 ], [ %3377, %3373 ], [ %2567, %3405 ], [ %3411, %3407 ]
  %3422 = phi float [ %3337, %3336 ], [ %2568, %2874 ], [ %2568, %2565 ], [ %2568, %2578 ], [ %3337, %3358 ], [ %3337, %3373 ], [ %3337, %3405 ], [ %3337, %3407 ]
  %3423 = phi float [ %3338, %3336 ], [ %2569, %2874 ], [ %2569, %2565 ], [ %2569, %2578 ], [ %3338, %3358 ], [ %3338, %3373 ], [ %3338, %3405 ], [ %3338, %3407 ]
  %3424 = phi float [ %3339, %3336 ], [ %2570, %2874 ], [ %2570, %2565 ], [ %2570, %2578 ], [ %3339, %3358 ], [ %3339, %3373 ], [ %3339, %3405 ], [ %3339, %3407 ]
  %3425 = phi float [ %3340, %3336 ], [ %2571, %2874 ], [ %2571, %2565 ], [ %2571, %2578 ], [ %3340, %3358 ], [ %3340, %3373 ], [ %3340, %3405 ], [ %3340, %3407 ]
  %3426 = phi float [ %3341, %3336 ], [ %2572, %2874 ], [ %2572, %2565 ], [ %2572, %2578 ], [ %3341, %3358 ], [ %3341, %3373 ], [ %3341, %3405 ], [ %3341, %3407 ]
  %3427 = phi float [ %3342, %3336 ], [ %2573, %2874 ], [ %2573, %2565 ], [ %2573, %2578 ], [ %3342, %3358 ], [ %3342, %3373 ], [ %3342, %3405 ], [ %3342, %3407 ]
  %3428 = phi float [ %3343, %3336 ], [ %2574, %2874 ], [ %2574, %2565 ], [ %2574, %2578 ], [ %3343, %3358 ], [ %3343, %3373 ], [ %3343, %3405 ], [ %3343, %3407 ]
  %3429 = phi float [ %2575, %3336 ], [ %2575, %2874 ], [ %2575, %2565 ], [ %2575, %2578 ], [ %3370, %3358 ], [ %3404, %3373 ], [ %2575, %3405 ], [ %3418, %3407 ]
  %3430 = phi float [ %2576, %3336 ], [ %2576, %2874 ], [ %2576, %2565 ], [ %2576, %2578 ], [ %3367, %3358 ], [ %3381, %3373 ], [ %2576, %3405 ], [ %3415, %3407 ]
  %3431 = phi float [ %3344, %3336 ], [ %2577, %2874 ], [ %2577, %2565 ], [ %2577, %2578 ], [ %3344, %3358 ], [ %3344, %3373 ], [ %3344, %3405 ], [ %3344, %3407 ]
  %3432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3433 = extractvalue %dx.types.CBufRet.f32 %3432, 0
  %3434 = call float @dx.op.dot2.f32(i32 54, float %3420, float %3421, float %3420, float %3421)  ; Dot2(ax,ay,bx,by)
  %3435 = fmul fast float %3434, 0x3FE3333340000000
  %3436 = fsub fast float 1.000000e+00, %3435
  %3437 = call float @dx.op.dot3.f32(i32 55, float %3420, float %3421, float %3436, float %3420, float %3421, float %3436)  ; Dot3(ax,ay,az,bx,by,bz)
  %3438 = call float @dx.op.unary.f32(i32 25, float %3437)  ; Rsqrt(value)
  %3439 = fmul fast float %3438, %3420
  %3440 = fmul fast float %3438, %3421
  %3441 = fmul fast float %3436, %3438
  %3442 = fmul fast float %3441, %69
  %3443 = fmul fast float %3441, %70
  %3444 = fmul fast float %3441, %71
  %3445 = fmul fast float %3439, %43
  %3446 = fmul fast float %3439, %44
  %3447 = fmul fast float %3439, %45
  %3448 = fadd fast float %3442, %3445
  %3449 = fadd fast float %3443, %3446
  %3450 = fadd fast float %3444, %3447
  %3451 = fmul fast float %81, %3440
  %3452 = fmul fast float %82, %3440
  %3453 = fmul fast float %83, %3440
  %3454 = fadd fast float %3448, %3451
  %3455 = fadd fast float %3449, %3452
  %3456 = fadd fast float %3450, %3453
  %3457 = call float @dx.op.dot3.f32(i32 55, float %3454, float %3455, float %3456, float %3454, float %3455, float %3456)  ; Dot3(ax,ay,az,bx,by,bz)
  %3458 = call float @dx.op.unary.f32(i32 25, float %3457)  ; Rsqrt(value)
  %3459 = fmul fast float %3454, %3458
  %3460 = fmul fast float %3455, %3458
  %3461 = fmul fast float %3456, %3458
  %3462 = fadd fast float %3428, 0xBFB99999A0000000
  %3463 = call float @dx.op.unary.f32(i32 7, float %3462)  ; Saturate(value)
  %3464 = fmul fast float %3463, 0x3FF1C71C80000000
  %3465 = call float @dx.op.binary.f32(i32 36, float %3428, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3466 = fsub fast float 1.000000e+00, %3464
  %3467 = call float @dx.op.unary.f32(i32 7, float %3466)  ; Saturate(value)
  %3468 = fmul fast float %3467, %3425
  %3469 = fmul fast float %3467, %3426
  %3470 = fmul fast float %3467, %3427
  %3471 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  %3472 = call float @dx.op.unary.f32(i32 7, float %3469)  ; Saturate(value)
  %3473 = call float @dx.op.unary.f32(i32 7, float %3470)  ; Saturate(value)
  %3474 = fmul fast float %3464, %3425
  %3475 = fmul fast float %3464, %3426
  %3476 = fmul fast float %3464, %3427
  %3477 = fadd fast float %3474, %3465
  %3478 = fadd fast float %3475, %3465
  %3479 = fadd fast float %3476, %3465
  %3480 = call float @dx.op.unary.f32(i32 7, float %3477)  ; Saturate(value)
  %3481 = call float @dx.op.unary.f32(i32 7, float %3478)  ; Saturate(value)
  %3482 = call float @dx.op.unary.f32(i32 7, float %3479)  ; Saturate(value)
  %3483 = call float @dx.op.unary.f32(i32 7, float %3429)  ; Saturate(value)
  %3484 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.i32 %3484, 3
  %3486 = and i32 %3485, 8
  %3487 = icmp ne i32 %3486, 0
  %3488 = call float @dx.op.binary.f32(i32 35, float %3471, float %3425)  ; FMax(a,b)
  %3489 = call float @dx.op.binary.f32(i32 35, float %3472, float %3425)  ; FMax(a,b)
  %3490 = call float @dx.op.binary.f32(i32 35, float %3473, float %3425)  ; FMax(a,b)
  %3491 = call float @dx.op.dot3.f32(i32 55, float %3471, float %3472, float %3473, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3492 = select i1 %161, float %3425, float %3471
  %3493 = select i1 %161, float %3491, float %3472
  %3494 = select i1 %161, float 1.000000e+00, float %3473
  %3495 = select i1 %3487, float %3488, float %3492
  %3496 = select i1 %3487, float %3489, float %3493
  %3497 = select i1 %3487, float %3490, float %3494
  %3498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3499 = extractvalue %dx.types.CBufRet.f32 %3498, 0
  %3500 = extractvalue %dx.types.CBufRet.f32 %3498, 1
  %3501 = extractvalue %dx.types.CBufRet.f32 %3498, 2
  %3502 = fadd fast float %3499, %117
  %3503 = fadd fast float %3500, %118
  %3504 = fadd fast float %3501, %119
  %3505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3506 = extractvalue %dx.types.CBufRet.f32 %3505, 0
  %3507 = extractvalue %dx.types.CBufRet.f32 %3505, 1
  %3508 = fsub fast float %3502, %3506
  %3509 = fsub fast float %3503, %3507
  %3510 = fmul fast float %3508, %3508
  %3511 = fmul fast float %3509, %3509
  %3512 = fadd fast float %3510, %3511
  %3513 = call float @dx.op.unary.f32(i32 24, float %3512)  ; Sqrt(value)
  %3514 = extractvalue %dx.types.CBufRet.f32 %3505, 2
  %3515 = fcmp fast olt float %3513, %3514
  br i1 %3515, label %3516, label %3583

; <label>:3516                                    ; preds = %3419
  %3517 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3518 = extractvalue %dx.types.CBufRet.f32 %3517, 0
  %3519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3519, 0
  %3521 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3522 = extractvalue %dx.types.CBufRet.f32 %3521, 0
  %3523 = extractvalue %dx.types.CBufRet.f32 %3517, 1
  %3524 = extractvalue %dx.types.CBufRet.f32 %3519, 1
  %3525 = extractvalue %dx.types.CBufRet.f32 %3521, 1
  %3526 = extractvalue %dx.types.CBufRet.f32 %3517, 3
  %3527 = extractvalue %dx.types.CBufRet.f32 %3519, 3
  %3528 = extractvalue %dx.types.CBufRet.f32 %3521, 3
  %3529 = fadd fast float %3526, %3502
  %3530 = fadd fast float %3527, %3503
  %3531 = fadd fast float %3528, %3504
  %3532 = fmul fast float %3529, %3518
  %3533 = call float @dx.op.tertiary.f32(i32 46, float %3530, float %3520, float %3532)  ; FMad(a,b,c)
  %3534 = call float @dx.op.tertiary.f32(i32 46, float %3531, float %3522, float %3533)  ; FMad(a,b,c)
  %3535 = fmul fast float %3529, %3523
  %3536 = call float @dx.op.tertiary.f32(i32 46, float %3530, float %3524, float %3535)  ; FMad(a,b,c)
  %3537 = call float @dx.op.tertiary.f32(i32 46, float %3531, float %3525, float %3536)  ; FMad(a,b,c)
  %3538 = fsub fast float %3534, %3526
  %3539 = fsub fast float %3537, %3527
  %3540 = fsub fast float %3538, %3506
  %3541 = fadd fast float %3540, %3514
  %3542 = fsub fast float %3539, %3507
  %3543 = fadd fast float %3542, %3514
  %3544 = extractvalue %dx.types.CBufRet.f32 %3505, 3
  %3545 = fmul fast float %3541, %3544
  %3546 = fmul fast float %3543, %3544
  %3547 = call float @dx.op.unary.f32(i32 7, float %3545)  ; Saturate(value)
  %3548 = call float @dx.op.unary.f32(i32 7, float %3546)  ; Saturate(value)
  %3549 = fsub fast float 1.000000e+00, %3547
  %3550 = fsub fast float 1.000000e+00, %3548
  %3551 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %31, float %3549, float %3550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3552 = extractvalue %dx.types.ResRet.f32 %3551, 0
  %3553 = fcmp fast ugt float %3552, 0.000000e+00
  br i1 %3553, label %3554, label %3857

; <label>:3554                                    ; preds = %3516
  %3555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3556 = extractvalue %dx.types.CBufRet.f32 %3555, 2
  %3557 = fmul fast float %3556, %3552
  %3558 = extractvalue %dx.types.CBufRet.f32 %3555, 3
  %3559 = fadd fast float %3558, %3557
  %3560 = extractvalue %dx.types.CBufRet.f32 %3521, 2
  %3561 = fadd fast float %3559, %3528
  %3562 = fmul fast float %3534, %3522
  %3563 = call float @dx.op.tertiary.f32(i32 46, float %3537, float %3525, float %3562)  ; FMad(a,b,c)
  %3564 = call float @dx.op.tertiary.f32(i32 46, float %3561, float %3560, float %3563)  ; FMad(a,b,c)
  %3565 = fsub fast float %3564, %3528
  %3566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3567 = extractvalue %dx.types.CBufRet.f32 %3566, 2
  %3568 = fsub fast float %3565, %3567
  %3569 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %31, float %3549, float %3550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3570 = extractvalue %dx.types.ResRet.f32 %3569, 0
  %3571 = extractvalue %dx.types.ResRet.f32 %3569, 1
  %3572 = extractvalue %dx.types.ResRet.f32 %3569, 2
  %3573 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %31, float %3549, float %3550, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3574 = extractvalue %dx.types.ResRet.f32 %3573, 0
  %3575 = extractvalue %dx.types.ResRet.f32 %3573, 1
  %3576 = extractvalue %dx.types.ResRet.f32 %3573, 2
  %3577 = fadd fast float %3574, %3570
  %3578 = fmul fast float %3577, 0x3F847AE140000000
  %3579 = fadd fast float %3575, %3571
  %3580 = fmul fast float %3579, 0x3F847AE140000000
  %3581 = fadd fast float %3576, %3572
  %3582 = fmul fast float %3581, 0x3F847AE140000000
  br label %3857

; <label>:3583                                    ; preds = %3419
  %3584 = and i32 %135, 1
  %3585 = icmp eq i32 %3584, 0
  br i1 %3585, label %3857, label %3586

; <label>:3586                                    ; preds = %3583
  %3587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3588 = extractvalue %dx.types.CBufRet.f32 %3587, 0
  %3589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3590 = extractvalue %dx.types.CBufRet.f32 %3589, 0
  %3591 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3592 = extractvalue %dx.types.CBufRet.f32 %3591, 0
  %3593 = extractvalue %dx.types.CBufRet.f32 %3587, 1
  %3594 = extractvalue %dx.types.CBufRet.f32 %3589, 1
  %3595 = extractvalue %dx.types.CBufRet.f32 %3591, 1
  %3596 = extractvalue %dx.types.CBufRet.f32 %3587, 3
  %3597 = extractvalue %dx.types.CBufRet.f32 %3589, 3
  %3598 = extractvalue %dx.types.CBufRet.f32 %3591, 3
  %3599 = fadd fast float %3596, %3502
  %3600 = fadd fast float %3597, %3503
  %3601 = fadd fast float %3598, %3504
  %3602 = fmul fast float %3599, %3588
  %3603 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3590, float %3602)  ; FMad(a,b,c)
  %3604 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3592, float %3603)  ; FMad(a,b,c)
  %3605 = fmul fast float %3599, %3593
  %3606 = call float @dx.op.tertiary.f32(i32 46, float %3600, float %3594, float %3605)  ; FMad(a,b,c)
  %3607 = call float @dx.op.tertiary.f32(i32 46, float %3601, float %3595, float %3606)  ; FMad(a,b,c)
  %3608 = fsub fast float %3604, %3596
  %3609 = fsub fast float %3607, %3597
  %3610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3611 = extractvalue %dx.types.CBufRet.f32 %3610, 0
  %3612 = extractvalue %dx.types.CBufRet.f32 %3610, 1
  %3613 = extractvalue %dx.types.CBufRet.f32 %3610, 2
  %3614 = extractvalue %dx.types.CBufRet.f32 %3610, 3
  %3615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3616 = extractvalue %dx.types.CBufRet.f32 %3615, 3
  %3617 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3618 = extractvalue %dx.types.CBufRet.i32 %3617, 0
  %3619 = extractvalue %dx.types.CBufRet.i32 %3617, 1
  %3620 = udiv i32 %3619, %3618
  %3621 = fsub fast float %3608, %3611
  %3622 = fsub fast float %3609, %3612
  %3623 = call float @dx.op.binary.f32(i32 35, float %3621, float 0.000000e+00)  ; FMax(a,b)
  %3624 = call float @dx.op.binary.f32(i32 35, float %3622, float 0.000000e+00)  ; FMax(a,b)
  %3625 = call float @dx.op.binary.f32(i32 36, float %3623, float %3613)  ; FMin(a,b)
  %3626 = call float @dx.op.binary.f32(i32 36, float %3624, float %3614)  ; FMin(a,b)
  %3627 = add i32 %3618, -1
  %3628 = add i32 %3620, -1
  %3629 = fmul fast float %3625, %3616
  %3630 = fmul fast float %3626, %3616
  %3631 = fptoui float %3629 to i32
  %3632 = fptoui float %3630 to i32
  %3633 = call i32 @dx.op.binary.i32(i32 40, i32 %3631, i32 %3627)  ; UMin(a,b)
  %3634 = call i32 @dx.op.binary.i32(i32 40, i32 %3632, i32 %3628)  ; UMin(a,b)
  %3635 = mul i32 %3634, %3618
  %3636 = add i32 %3635, %3633
  %3637 = shl i32 %3636, 2
  %3638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3637, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.i32 %3638, 0
  %3640 = icmp eq i32 %3639, -1
  br i1 %3640, label %3857, label %3641

; <label>:3641                                    ; preds = %3586
  %3642 = mul i32 %3639, 148
  %3643 = add i32 %3642, 4
  %3644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = add i32 %3642, 8
  %3647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3646, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = add i32 %3642, 36
  %3650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = add i32 %3642, 60
  %3653 = add i32 %3642, 92
  %3654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.i32 %3654, 0
  %3656 = add i32 %3642, 116
  %3657 = fsub fast float %3608, %3645
  %3658 = fsub fast float %3609, %3648
  %3659 = fmul fast float %3616, %3657
  %3660 = fmul fast float %3616, %3658
  %3661 = call float @dx.op.unary.f32(i32 7, float %3659)  ; Saturate(value)
  %3662 = call float @dx.op.unary.f32(i32 7, float %3660)  ; Saturate(value)
  %3663 = fsub fast float 1.000000e+00, %3662
  %3664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3665 = extractvalue %dx.types.CBufRet.f32 %3664, 2
  %3666 = call float @dx.op.unary.f32(i32 83, float %3661)  ; DerivCoarseX(value)
  %3667 = call float @dx.op.unary.f32(i32 83, float %3663)  ; DerivCoarseX(value)
  %3668 = call float @dx.op.unary.f32(i32 84, float %3661)  ; DerivCoarseY(value)
  %3669 = call float @dx.op.unary.f32(i32 84, float %3663)  ; DerivCoarseY(value)
  %3670 = fmul fast float %3666, %3665
  %3671 = fmul fast float %3667, %3665
  %3672 = fmul fast float %3668, %3665
  %3673 = fmul fast float %3669, %3665
  %3674 = call float @dx.op.dot2.f32(i32 54, float %3672, float %3673, float %3672, float %3673)  ; Dot2(ax,ay,bx,by)
  %3675 = call float @dx.op.dot2.f32(i32 54, float %3670, float %3671, float %3670, float %3671)  ; Dot2(ax,ay,bx,by)
  %3676 = call float @dx.op.binary.f32(i32 35, float %3675, float %3674)  ; FMax(a,b)
  %3677 = call float @dx.op.unary.f32(i32 23, float %3676)  ; Log(value)
  %3678 = fmul fast float %3677, 5.000000e-01
  %3679 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %3680 = extractvalue %dx.types.CBufRet.f32 %3679, 1
  %3681 = fadd fast float %3680, %3678
  %3682 = call float @dx.op.binary.f32(i32 35, float %3681, float 0.000000e+00)  ; FMax(a,b)
  %3683 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3684 = extractvalue %dx.types.CBufRet.f32 %3683, 3
  %3685 = fadd fast float %3684, %3682
  %3686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3687 = extractvalue %dx.types.CBufRet.f32 %3686, 3
  %3688 = fadd fast float %3685, %3687
  %3689 = add i32 %3655, 0
  %3690 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3689, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3691 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3690, i32 0)  ; GetDimensions(handle,mipLevel)
  %3692 = extractvalue %dx.types.Dimensions %3691, 0
  %3693 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3692)  ; FirstbitLo(value)
  %3694 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3695 = extractvalue %dx.types.CBufRet.i32 %3694, 1
  %3696 = sub nsw i32 %3695, %3693
  %3697 = sitofp i32 %3696 to float
  %3698 = fsub fast float %3688, %3697
  %3699 = call float @dx.op.binary.f32(i32 35, float %3698, float 0.000000e+00)  ; FMax(a,b)
  %3700 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3690, %dx.types.Handle %29, float %3661, float %3663, float %3651, float undef, i32 0, i32 0, i32 undef, float %3699)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3701 = extractvalue %dx.types.ResRet.f32 %3700, 0
  %3702 = fcmp ule float %3701, 0x3FE0101020000000
  %3703 = extractvalue %dx.types.CBufRet.i32 %3694, 0
  %3704 = and i32 %3703, 128
  %3705 = icmp ne i32 %3704, 0
  %3706 = and i1 %3702, %3705
  br i1 %3706, label %3857, label %3707

; <label>:3707                                    ; preds = %3641
  %3708 = add i32 %3642, 20
  %3709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.f32 %3709, 0
  %3711 = add i32 %3642, 24
  %3712 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3711, i32 undef)  ; BufferLoad(srv,index,wot)
  %3713 = extractvalue %dx.types.ResRet.f32 %3712, 0
  %3714 = add i32 %3642, 40
  %3715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.f32 %3715, 0
  %3717 = add i32 %3642, 96
  %3718 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3717, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.i32 %3718, 0
  %3720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3721 = extractvalue %dx.types.CBufRet.f32 %3720, 2
  %3722 = fmul fast float %3721, %3661
  %3723 = fmul fast float %3721, %3663
  %3724 = extractvalue %dx.types.CBufRet.f32 %3720, 3
  %3725 = fadd fast float %3722, %3724
  %3726 = fadd fast float %3723, %3724
  %3727 = add i32 %3719, 0
  %3728 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3727, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3729 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3728, i32 0)  ; GetDimensions(handle,mipLevel)
  %3730 = extractvalue %dx.types.Dimensions %3729, 0
  %3731 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3730)  ; FirstbitLo(value)
  %3732 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3733 = extractvalue %dx.types.CBufRet.i32 %3732, 1
  %3734 = sub nsw i32 %3733, %3731
  %3735 = sitofp i32 %3734 to float
  %3736 = fsub fast float %3685, %3735
  %3737 = call float @dx.op.binary.f32(i32 35, float %3736, float 0.000000e+00)  ; FMax(a,b)
  %3738 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3728, %dx.types.Handle %29, float %3725, float %3726, float %3716, float undef, i32 0, i32 0, i32 undef, float %3737)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3739 = extractvalue %dx.types.ResRet.f32 %3738, 0
  %3740 = fmul fast float %3739, %3710
  %3741 = fadd fast float %3740, %3713
  %3742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3743 = extractvalue %dx.types.CBufRet.f32 %3742, 0
  %3744 = extractvalue %dx.types.CBufRet.f32 %3742, 1
  %3745 = extractvalue %dx.types.CBufRet.f32 %3742, 2
  %3746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3747 = extractvalue %dx.types.CBufRet.f32 %3746, 3
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 3
  %3750 = extractvalue %dx.types.CBufRet.f32 %3742, 3
  %3751 = fadd fast float %3747, %3608
  %3752 = fadd fast float %3749, %3609
  %3753 = fadd fast float %3741, %3750
  %3754 = fmul fast float %3751, %3743
  %3755 = call float @dx.op.tertiary.f32(i32 46, float %3752, float %3744, float %3754)  ; FMad(a,b,c)
  %3756 = call float @dx.op.tertiary.f32(i32 46, float %3753, float %3745, float %3755)  ; FMad(a,b,c)
  %3757 = fsub fast float %3756, %3750
  %3758 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3759 = extractvalue %dx.types.CBufRet.f32 %3758, 2
  %3760 = fsub fast float %3757, %3759
  %3761 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3762 = extractvalue %dx.types.CBufRet.i32 %3761, 0
  %3763 = call i32 @dx.op.binary.i32(i32 40, i32 %3639, i32 %3762)  ; UMin(a,b)
  %3764 = mul i32 %3763, 36
  %3765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3764, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.i32 %3765, 0
  %3767 = add i32 %3764, 4
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3770 = fmul fast float %3769, %3661
  %3771 = fmul fast float %3769, %3663
  %3772 = extractvalue %dx.types.CBufRet.f32 %3768, 1
  %3773 = fadd fast float %3770, %3772
  %3774 = fadd fast float %3771, %3772
  %3775 = icmp eq i32 %3766, 0
  br i1 %3775, label %3844, label %3776

; <label>:3776                                    ; preds = %3707
  br label %3777

; <label>:3777                                    ; preds = %3834, %3776
  %3778 = phi float [ %3835, %3834 ], [ 0.000000e+00, %3776 ]
  %3779 = phi float [ %3836, %3834 ], [ 0.000000e+00, %3776 ]
  %3780 = phi float [ %3837, %3834 ], [ 0.000000e+00, %3776 ]
  %3781 = phi float [ %3838, %3834 ], [ 0.000000e+00, %3776 ]
  %3782 = phi float [ %3839, %3834 ], [ 0.000000e+00, %3776 ]
  %3783 = phi float [ %3840, %3834 ], [ 0.000000e+00, %3776 ]
  %3784 = phi i32 [ %3841, %3834 ], [ 0, %3776 ]
  %3785 = shl i32 %3784, 2
  %3786 = add i32 %3652, %3785
  %3787 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3786, i32 undef)  ; BufferLoad(srv,index,wot)
  %3788 = extractvalue %dx.types.ResRet.f32 %3787, 0
  %3789 = add i32 %3656, %3785
  %3790 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3789, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.i32 %3790, 0
  %3792 = add i32 %3791, 0
  %3793 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3792, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3794 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3793, i32 0)  ; GetDimensions(handle,mipLevel)
  %3795 = extractvalue %dx.types.Dimensions %3794, 0
  %3796 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3795)  ; FirstbitLo(value)
  %3797 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3798 = extractvalue %dx.types.CBufRet.i32 %3797, 1
  %3799 = sub nsw i32 %3798, %3796
  %3800 = sitofp i32 %3799 to float
  %3801 = fsub fast float %3685, %3800
  %3802 = call float @dx.op.binary.f32(i32 35, float %3801, float 0.000000e+00)  ; FMax(a,b)
  %3803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3793, %dx.types.Handle %29, float %3773, float %3774, float %3788, float undef, i32 0, i32 0, i32 undef, float %3802)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 0
  %3805 = fcmp fast ogt float %3804, 0.000000e+00
  br i1 %3805, label %3806, label %3834

; <label>:3806                                    ; preds = %3777
  %3807 = add i32 %3767, %3785
  %3808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3807, i32 undef)  ; BufferLoad(srv,index,wot)
  %3809 = extractvalue %dx.types.ResRet.i32 %3808, 0
  %3810 = and i32 %3809, 32767
  %3811 = mul nuw nsw i32 %3810, 928
  %3812 = add nuw nsw i32 %3811, 48
  %3813 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3812, i32 undef)  ; BufferLoad(srv,index,wot)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.f32 %3813, 1
  %3816 = extractvalue %dx.types.ResRet.f32 %3813, 2
  %3817 = add nuw nsw i32 %3811, 60
  %3818 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3817, i32 undef)  ; BufferLoad(srv,index,wot)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3821 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3822 = fmul fast float %3814, %3804
  %3823 = fmul fast float %3815, %3804
  %3824 = fmul fast float %3816, %3804
  %3825 = fadd fast float %3822, %3778
  %3826 = fadd fast float %3823, %3779
  %3827 = fadd fast float %3824, %3780
  %3828 = fmul fast float %3819, %3804
  %3829 = fmul fast float %3820, %3804
  %3830 = fmul fast float %3821, %3804
  %3831 = fadd fast float %3828, %3781
  %3832 = fadd fast float %3829, %3782
  %3833 = fadd fast float %3830, %3783
  br label %3834

; <label>:3834                                    ; preds = %3806, %3777
  %3835 = phi float [ %3825, %3806 ], [ %3778, %3777 ]
  %3836 = phi float [ %3826, %3806 ], [ %3779, %3777 ]
  %3837 = phi float [ %3827, %3806 ], [ %3780, %3777 ]
  %3838 = phi float [ %3831, %3806 ], [ %3781, %3777 ]
  %3839 = phi float [ %3832, %3806 ], [ %3782, %3777 ]
  %3840 = phi float [ %3833, %3806 ], [ %3783, %3777 ]
  %3841 = add nuw i32 %3784, 1
  %3842 = icmp eq i32 %3841, %3766
  br i1 %3842, label %3843, label %3777

; <label>:3843                                    ; preds = %3834
  br label %3844

; <label>:3844                                    ; preds = %3843, %3707
  %3845 = phi float [ 0.000000e+00, %3707 ], [ %3835, %3843 ]
  %3846 = phi float [ 0.000000e+00, %3707 ], [ %3836, %3843 ]
  %3847 = phi float [ 0.000000e+00, %3707 ], [ %3837, %3843 ]
  %3848 = phi float [ 0.000000e+00, %3707 ], [ %3838, %3843 ]
  %3849 = phi float [ 0.000000e+00, %3707 ], [ %3839, %3843 ]
  %3850 = phi float [ 0.000000e+00, %3707 ], [ %3840, %3843 ]
  %3851 = fadd fast float %3848, %3845
  %3852 = fmul fast float %3851, 0x3F847AE140000000
  %3853 = fadd fast float %3849, %3846
  %3854 = fmul fast float %3853, 0x3F847AE140000000
  %3855 = fadd fast float %3850, %3847
  %3856 = fmul fast float %3855, 0x3F847AE140000000
  br label %3857

; <label>:3857                                    ; preds = %3844, %3641, %3586, %3583, %3554, %3516
  %3858 = phi float [ %3568, %3554 ], [ -1.310720e+05, %3516 ], [ %3760, %3844 ], [ -1.310720e+05, %3586 ], [ -1.310720e+05, %3641 ], [ -1.310720e+05, %3583 ]
  %3859 = phi float [ %3578, %3554 ], [ 0.000000e+00, %3516 ], [ %3852, %3844 ], [ 0.000000e+00, %3586 ], [ 0.000000e+00, %3641 ], [ 0.000000e+00, %3583 ]
  %3860 = phi float [ %3580, %3554 ], [ 0.000000e+00, %3516 ], [ %3854, %3844 ], [ 0.000000e+00, %3586 ], [ 0.000000e+00, %3641 ], [ 0.000000e+00, %3583 ]
  %3861 = phi float [ %3582, %3554 ], [ 0.000000e+00, %3516 ], [ %3856, %3844 ], [ 0.000000e+00, %3586 ], [ 0.000000e+00, %3641 ], [ 0.000000e+00, %3583 ]
  %3862 = phi i1 [ true, %3554 ], [ false, %3516 ], [ true, %3844 ], [ false, %3586 ], [ false, %3641 ], [ false, %3583 ]
  %3863 = and i32 %135, 3
  %3864 = icmp eq i32 %3863, 1
  %3865 = select i1 %3864, float 1.000000e+00, float 0.000000e+00
  %3866 = fsub fast float %3858, %119
  %3867 = call float @dx.op.unary.f32(i32 7, float %3866)  ; Saturate(value)
  %3868 = select i1 %3862, float %3867, float 1.000000e+00
  %3869 = fmul fast float %3868, %3865
  %3870 = icmp eq i32 %3863, 3
  %3871 = select i1 %3870, float 1.000000e+00, float %3869
  %3872 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3871)  ; FMax(a,b)
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = fcmp fast une float %3873, 0.000000e+00
  %3875 = call float @dx.op.dot3.f32(i32 55, float %117, float %118, float %119, float %117, float %118, float %119)  ; Dot3(ax,ay,az,bx,by,bz)
  %3876 = call float @dx.op.unary.f32(i32 25, float %3875)  ; Rsqrt(value)
  br i1 %3874, label %3884, label %3877

; <label>:3877                                    ; preds = %3857
  %3878 = fmul fast float %3876, %117
  %3879 = fmul fast float %3876, %118
  %3880 = fmul fast float %3876, %119
  %3881 = fsub fast float -0.000000e+00, %3878
  %3882 = fsub fast float -0.000000e+00, %3879
  %3883 = fsub fast float -0.000000e+00, %3880
  br label %4052

; <label>:3884                                    ; preds = %3857
  %3885 = fmul fast float %117, %3876
  %3886 = fsub fast float -0.000000e+00, %3885
  %3887 = fmul fast float %118, %3876
  %3888 = fsub fast float -0.000000e+00, %3887
  %3889 = fmul fast float %119, %3876
  %3890 = fsub fast float -0.000000e+00, %3889
  %3891 = call float @dx.op.dot3.f32(i32 55, float %3886, float %3888, float %3890, float %69, float %70, float %71)  ; Dot3(ax,ay,az,bx,by,bz)
  %3892 = fmul fast float %3873, 2.500000e+00
  %3893 = call float @dx.op.unary.f32(i32 7, float %3892)  ; Saturate(value)
  %3894 = fmul fast float %3873, 0x4013FFFFE0000000
  %3895 = fadd fast float %3894, 0xBFFFFFFFE0000000
  %3896 = call float @dx.op.unary.f32(i32 7, float %3895)  ; Saturate(value)
  %3897 = fmul fast float %3873, 0x4004000020000000
  %3898 = fadd fast float %3897, 0xBFF8000040000000
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = call float @dx.op.unary.f32(i32 7, float %3893)  ; Saturate(value)
  %3901 = fmul fast float %3462, 1.000000e+01
  %3902 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3903 = fmul fast float %3902, 2.000000e+00
  %3904 = fsub fast float 3.000000e+00, %3903
  %3905 = fmul fast float %3902, %3902
  %3906 = fmul fast float %3905, %3904
  %3907 = fsub fast float 1.000000e+00, %3906
  %3908 = fsub fast float 0x3FE3333340000000, %3483
  %3909 = fmul fast float %3908, 0x400AAAAAA0000000
  %3910 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3911 = fmul fast float %3907, %3910
  %3912 = fmul fast float %3495, 0x3FEA2B8620000000
  %3913 = fmul fast float %3496, 0x3FEA2B8620000000
  %3914 = fmul fast float %3497, 0x3FEA2B8620000000
  %3915 = fadd fast float %3912, 0x3FC81DFBA0000000
  %3916 = fmul fast float %3915, %3495
  %3917 = fadd fast float %3916, 0x3F910E6020000000
  %3918 = fadd fast float %3913, 0x3FC81DFBA0000000
  %3919 = fmul fast float %3918, %3496
  %3920 = fadd fast float %3919, 0x3F910E6020000000
  %3921 = fadd fast float %3914, 0x3FC81DFBA0000000
  %3922 = fmul fast float %3921, %3497
  %3923 = fadd fast float %3922, 0x3F910E6020000000
  %3924 = call float @dx.op.unary.f32(i32 7, float %3917)  ; Saturate(value)
  %3925 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3926 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3927 = fsub fast float %3924, %3495
  %3928 = fsub fast float %3925, %3496
  %3929 = fsub fast float %3926, %3497
  %3930 = fmul fast float %3927, %3900
  %3931 = fmul fast float %3930, %3911
  %3932 = fmul fast float %3928, %3900
  %3933 = fmul fast float %3932, %3911
  %3934 = fmul fast float %3929, %3900
  %3935 = fmul fast float %3934, %3911
  %3936 = fadd fast float %3931, %3495
  %3937 = fadd fast float %3933, %3496
  %3938 = fadd fast float %3935, %3497
  %3939 = fmul fast float %3430, %3430
  %3940 = fmul fast float %3939, %3939
  %3941 = fadd fast float %3896, 1.000000e+00
  %3942 = fsub fast float %3941, %3911
  %3943 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  %3944 = call float @dx.op.dot3.f32(i32 55, float %69, float %70, float %71, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3945 = call float @dx.op.unary.f32(i32 7, float %3944)  ; Saturate(value)
  %3946 = fsub fast float 1.000000e+00, %3940
  %3947 = call float @dx.op.binary.f32(i32 36, float %3943, float %3946)  ; FMin(a,b)
  %3948 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3949 = call float @dx.op.binary.f32(i32 35, float %3947, float %3948)  ; FMax(a,b)
  %3950 = fadd fast float %3945, 0xBFE4CCCCC0000000
  %3951 = fmul fast float %3950, 0x4006DB6DA0000000
  %3952 = call float @dx.op.unary.f32(i32 7, float %3951)  ; Saturate(value)
  %3953 = fmul fast float %3952, 2.000000e+00
  %3954 = fsub fast float 3.000000e+00, %3953
  %3955 = bitcast float %3480 to i32
  %3956 = ashr i32 %3955, 1
  %3957 = add nsw i32 %3956, 532487669
  %3958 = bitcast i32 %3957 to float
  %3959 = fsub fast float 1.000000e+00, %3958
  %3960 = bitcast float %3959 to i32
  %3961 = sub nsw i32 2129859010, %3960
  %3962 = bitcast i32 %3961 to float
  %3963 = fmul fast float %3962, 2.000000e+00
  %3964 = bitcast float %3481 to i32
  %3965 = ashr i32 %3964, 1
  %3966 = add nsw i32 %3965, 532487669
  %3967 = bitcast i32 %3966 to float
  %3968 = fsub fast float 1.000000e+00, %3967
  %3969 = bitcast float %3968 to i32
  %3970 = sub nsw i32 2129859010, %3969
  %3971 = bitcast i32 %3970 to float
  %3972 = fmul fast float %3971, 2.000000e+00
  %3973 = bitcast float %3482 to i32
  %3974 = ashr i32 %3973, 1
  %3975 = add nsw i32 %3974, 532487669
  %3976 = bitcast i32 %3975 to float
  %3977 = fsub fast float 1.000000e+00, %3976
  %3978 = bitcast float %3977 to i32
  %3979 = sub nsw i32 2129859010, %3978
  %3980 = bitcast i32 %3979 to float
  %3981 = fmul fast float %3980, 2.000000e+00
  %3982 = fsub fast float 0x4002A9FBE0000000, %3963
  %3983 = fadd fast float %3963, 0x3FD54FDF00000000
  %3984 = bitcast float %3983 to i32
  %3985 = sub nsw i32 2129859010, %3984
  %3986 = bitcast i32 %3985 to float
  %3987 = fmul fast float %3986, %3982
  %3988 = fmul fast float %3987, %3987
  %3989 = fsub fast float 0x4002A9FBE0000000, %3972
  %3990 = fadd fast float %3972, 0x3FD54FDF00000000
  %3991 = bitcast float %3990 to i32
  %3992 = sub nsw i32 2129859010, %3991
  %3993 = bitcast i32 %3992 to float
  %3994 = fmul fast float %3993, %3989
  %3995 = fmul fast float %3994, %3994
  %3996 = fsub fast float 0x4002A9FBE0000000, %3981
  %3997 = fadd fast float %3981, 0x3FD54FDF00000000
  %3998 = bitcast float %3997 to i32
  %3999 = sub nsw i32 2129859010, %3998
  %4000 = bitcast i32 %3999 to float
  %4001 = fmul fast float %4000, %3996
  %4002 = fmul fast float %4001, %4001
  %4003 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3988)  ; FMax(a,b)
  %4004 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3995)  ; FMax(a,b)
  %4005 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4002)  ; FMax(a,b)
  %4006 = fsub fast float 1.000000e+00, %3891
  %4007 = fadd fast float %4006, %3907
  %4008 = call float @dx.op.unary.f32(i32 7, float %4007)  ; Saturate(value)
  %4009 = fsub fast float 1.000000e+00, %3871
  %4010 = fmul fast float %3949, %4009
  %4011 = fmul fast float %3952, %3952
  %4012 = fmul fast float %4011, %4010
  %4013 = fmul fast float %4012, %3954
  %4014 = fmul fast float %4009, 0xBFE99999A0000000
  %4015 = fmul fast float %4014, %3900
  %4016 = fmul fast float %4015, %3911
  %4017 = fadd fast float %4016, 1.000000e+00
  %4018 = fadd fast float %3483, -1.000000e+00
  %4019 = fmul fast float %4017, %4018
  %4020 = fadd fast float %4019, 1.000000e+00
  %4021 = fsub fast float %4003, %3480
  %4022 = fsub fast float %4004, %3481
  %4023 = fsub fast float %4005, %3482
  %4024 = fmul fast float %4013, %4021
  %4025 = fmul fast float %4013, %4022
  %4026 = fmul fast float %4013, %4023
  %4027 = fadd fast float %4024, %3480
  %4028 = fadd fast float %4025, %3481
  %4029 = fadd fast float %4026, %3482
  %4030 = fsub fast float %69, %3459
  %4031 = fsub fast float %70, %3460
  %4032 = fsub fast float %71, %3461
  %4033 = fmul fast float %4013, %4030
  %4034 = fmul fast float %4013, %4031
  %4035 = fmul fast float %4013, %4032
  %4036 = fadd fast float %4033, %3459
  %4037 = fadd fast float %4034, %3460
  %4038 = fadd fast float %4035, %3461
  %4039 = fmul fast float %4013, %4008
  %4040 = call float @dx.op.unary.f32(i32 7, float %4020)  ; Saturate(value)
  %4041 = fsub fast float 1.000000e+00, %4040
  %4042 = fmul fast float %4039, %4041
  %4043 = fadd fast float %4042, %4040
  %4044 = fsub fast float 1.000000e+00, %3430
  %4045 = fmul fast float %4013, %4044
  %4046 = fadd fast float %4045, %3430
  %4047 = call float @dx.op.dot3.f32(i32 55, float %4036, float %4037, float %4038, float %4036, float %4037, float %4038)  ; Dot3(ax,ay,az,bx,by,bz)
  %4048 = call float @dx.op.unary.f32(i32 25, float %4047)  ; Rsqrt(value)
  %4049 = fmul fast float %4036, %4048
  %4050 = fmul fast float %4037, %4048
  %4051 = fmul fast float %4038, %4048
  br label %4052

; <label>:4052                                    ; preds = %3884, %3877
  %4053 = phi float [ %3883, %3877 ], [ %3890, %3884 ]
  %4054 = phi float [ %3882, %3877 ], [ %3888, %3884 ]
  %4055 = phi float [ %3881, %3877 ], [ %3886, %3884 ]
  %4056 = phi float [ %3880, %3877 ], [ %3889, %3884 ]
  %4057 = phi float [ %3879, %3877 ], [ %3887, %3884 ]
  %4058 = phi float [ %3878, %3877 ], [ %3885, %3884 ]
  %4059 = phi float [ %3495, %3877 ], [ %3936, %3884 ]
  %4060 = phi float [ %3496, %3877 ], [ %3937, %3884 ]
  %4061 = phi float [ %3497, %3877 ], [ %3938, %3884 ]
  %4062 = phi float [ %3459, %3877 ], [ %4049, %3884 ]
  %4063 = phi float [ %3460, %3877 ], [ %4050, %3884 ]
  %4064 = phi float [ %3461, %3877 ], [ %4051, %3884 ]
  %4065 = phi float [ %3480, %3877 ], [ %4027, %3884 ]
  %4066 = phi float [ %3481, %3877 ], [ %4028, %3884 ]
  %4067 = phi float [ %3482, %3877 ], [ %4029, %3884 ]
  %4068 = phi float [ %3483, %3877 ], [ %4043, %3884 ]
  %4069 = phi float [ %3430, %3877 ], [ %4046, %3884 ]
  %4070 = select i1 %161, float 0.000000e+00, float %4067
  %4071 = call float @dx.op.dot3.f32(i32 55, float %4062, float %4063, float %4064, float %4055, float %4054, float %4053)  ; Dot3(ax,ay,az,bx,by,bz)
  %4072 = call float @dx.op.unary.f32(i32 7, float %4071)  ; Saturate(value)
  %4073 = call float @dx.op.dot3.f32(i32 55, float %4058, float %4057, float %4056, float %4062, float %4063, float %4064)  ; Dot3(ax,ay,az,bx,by,bz)
  %4074 = fmul fast float %4073, 2.000000e+00
  %4075 = fmul fast float %4074, %4062
  %4076 = fmul fast float %4074, %4063
  %4077 = fmul fast float %4074, %4064
  %4078 = fsub fast float %4058, %4075
  %4079 = fsub fast float %4057, %4076
  %4080 = fsub fast float %4056, %4077
  %4081 = call float @dx.op.binary.f32(i32 36, float %4069, float 1.000000e+00)  ; FMin(a,b)
  %4082 = fsub fast float 1.000000e+00, %4069
  %4083 = bitcast float %4082 to i32
  %4084 = sub nsw i32 2129859010, %4083
  %4085 = bitcast i32 %4084 to float
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = extractvalue %dx.types.CBufRet.f32 %4086, 1
  %4089 = extractvalue %dx.types.CBufRet.f32 %4086, 2
  %4090 = fadd fast float %4087, %117
  %4091 = fadd fast float %4088, %118
  %4092 = fadd fast float %4089, %119
  %4093 = fmul fast float %4062, 3.200000e+01
  %4094 = fmul fast float %4063, 3.200000e+01
  %4095 = fadd fast float %4090, %4093
  %4096 = fadd fast float %4091, %4094
  %4097 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4098 = extractvalue %dx.types.CBufRet.f32 %4097, 0
  %4099 = extractvalue %dx.types.CBufRet.f32 %4097, 1
  %4100 = fsub fast float %4095, %4098
  %4101 = fsub fast float %4096, %4099
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 0
  %4104 = extractvalue %dx.types.CBufRet.f32 %4102, 1
  %4105 = fmul fast float %4100, %4103
  %4106 = fmul fast float %4101, %4104
  %4107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4108 = extractvalue %dx.types.CBufRet.f32 %4107, 0
  %4109 = fmul fast float %4105, %4108
  %4110 = extractvalue %dx.types.CBufRet.f32 %4107, 1
  %4111 = fadd fast float %4109, %4110
  %4112 = extractvalue %dx.types.CBufRet.f32 %4107, 2
  %4113 = fmul fast float %4112, %4106
  %4114 = extractvalue %dx.types.CBufRet.f32 %4107, 3
  %4115 = fadd fast float %4113, %4114
  %4116 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %4111, float %4115, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4117 = extractvalue %dx.types.ResRet.f32 %4116, 0
  %4118 = extractvalue %dx.types.ResRet.f32 %4116, 1
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 1
  %4121 = extractvalue %dx.types.CBufRet.f32 %4119, 0
  %4122 = fsub fast float %4120, %4121
  %4123 = fmul fast float %4122, %4117
  %4124 = fadd fast float %4123, %4121
  %4125 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4126 = extractvalue %dx.types.CBufRet.f32 %4119, 2
  %4127 = fsub fast float %4125, %4126
  %4128 = fmul fast float %4127, %4118
  %4129 = fadd fast float %4128, %4126
  %4130 = fsub fast float %4092, %4124
  %4131 = fsub fast float %4129, %4124
  %4132 = fdiv fast float %4130, %4131
  %4133 = call float @dx.op.unary.f32(i32 7, float %4132)  ; Saturate(value)
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 0
  %4136 = fmul fast float %4135, %4133
  %4137 = extractvalue %dx.types.CBufRet.f32 %4134, 1
  %4138 = fadd fast float %4136, %4137
  %4139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %4111, float %4115, float %4138, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4140 = extractvalue %dx.types.ResRet.f32 %4139, 0
  %4141 = extractvalue %dx.types.ResRet.f32 %4139, 1
  %4142 = extractvalue %dx.types.ResRet.f32 %4139, 2
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 0
  %4145 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4146 = extractvalue %dx.types.CBufRet.f32 %4143, 2
  %4147 = fmul fast float %4144, %4140
  %4148 = fmul fast float %4145, %4141
  %4149 = fmul fast float %4146, %4142
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 0
  %4152 = extractvalue %dx.types.CBufRet.f32 %4150, 1
  %4153 = extractvalue %dx.types.CBufRet.f32 %4150, 2
  %4154 = fadd fast float %4147, %4151
  %4155 = fadd fast float %4148, %4152
  %4156 = fadd fast float %4149, %4153
  %4157 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4158 = extractvalue %dx.types.CBufRet.f32 %4157, 0
  %4159 = fmul fast float %4158, %4105
  %4160 = extractvalue %dx.types.CBufRet.f32 %4157, 1
  %4161 = fadd fast float %4159, %4160
  %4162 = extractvalue %dx.types.CBufRet.f32 %4157, 2
  %4163 = fmul fast float %4162, %4106
  %4164 = extractvalue %dx.types.CBufRet.f32 %4157, 3
  %4165 = fadd fast float %4163, %4164
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 0
  %4168 = extractvalue %dx.types.CBufRet.f32 %4166, 1
  %4169 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4170 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 0
  %4173 = extractvalue %dx.types.CBufRet.f32 %4171, 1
  %4174 = extractvalue %dx.types.CBufRet.f32 %4171, 2
  %4175 = extractvalue %dx.types.CBufRet.f32 %4171, 3
  %4176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4161, float %4165, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4177 = extractvalue %dx.types.ResRet.f32 %4176, 0
  %4178 = extractvalue %dx.types.ResRet.f32 %4176, 1
  %4179 = extractvalue %dx.types.ResRet.f32 %4176, 2
  %4180 = extractvalue %dx.types.ResRet.f32 %4176, 3
  %4181 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4161, float %4165, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4182 = extractvalue %dx.types.ResRet.f32 %4181, 0
  %4183 = extractvalue %dx.types.ResRet.f32 %4181, 1
  %4184 = extractvalue %dx.types.ResRet.f32 %4181, 2
  %4185 = extractvalue %dx.types.ResRet.f32 %4181, 3
  %4186 = fmul fast float %4177, %4154
  %4187 = fmul fast float %4182, %4154
  %4188 = fmul fast float %4184, %4154
  %4189 = fmul fast float %4180, %4154
  %4190 = fadd fast float %4186, %4167
  %4191 = fadd fast float %4187, %4168
  %4192 = fadd fast float %4188, %4169
  %4193 = fadd fast float %4189, %4170
  %4194 = fmul fast float %4178, %4154
  %4195 = fmul fast float %4183, %4154
  %4196 = fadd fast float %4194, %4172
  %4197 = fadd fast float %4195, %4173
  %4198 = fmul fast float %4179, %4154
  %4199 = fmul fast float %4185, %4154
  %4200 = fadd fast float %4198, %4174
  %4201 = fadd fast float %4199, %4175
  %4202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4161, float %4165, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.ResRet.f32 %4202, 1
  %4205 = extractvalue %dx.types.ResRet.f32 %4202, 2
  %4206 = extractvalue %dx.types.ResRet.f32 %4202, 3
  %4207 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4161, float %4165, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4208 = extractvalue %dx.types.ResRet.f32 %4207, 0
  %4209 = extractvalue %dx.types.ResRet.f32 %4207, 1
  %4210 = extractvalue %dx.types.ResRet.f32 %4207, 2
  %4211 = extractvalue %dx.types.ResRet.f32 %4207, 3
  %4212 = fmul fast float %4203, %4155
  %4213 = fmul fast float %4208, %4155
  %4214 = fmul fast float %4210, %4155
  %4215 = fmul fast float %4206, %4155
  %4216 = fadd fast float %4190, %4212
  %4217 = fadd fast float %4191, %4213
  %4218 = fadd fast float %4192, %4214
  %4219 = fadd fast float %4193, %4215
  %4220 = fmul fast float %4204, %4155
  %4221 = fmul fast float %4209, %4155
  %4222 = fadd fast float %4196, %4220
  %4223 = fadd fast float %4197, %4221
  %4224 = fmul fast float %4205, %4155
  %4225 = fmul fast float %4211, %4155
  %4226 = fadd fast float %4200, %4224
  %4227 = fadd fast float %4201, %4225
  %4228 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4161, float %4165, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4229 = extractvalue %dx.types.ResRet.f32 %4228, 0
  %4230 = extractvalue %dx.types.ResRet.f32 %4228, 1
  %4231 = extractvalue %dx.types.ResRet.f32 %4228, 2
  %4232 = extractvalue %dx.types.ResRet.f32 %4228, 3
  %4233 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4161, float %4165, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4234 = extractvalue %dx.types.ResRet.f32 %4233, 0
  %4235 = extractvalue %dx.types.ResRet.f32 %4233, 1
  %4236 = extractvalue %dx.types.ResRet.f32 %4233, 2
  %4237 = extractvalue %dx.types.ResRet.f32 %4233, 3
  %4238 = fmul fast float %4229, %4156
  %4239 = fmul fast float %4234, %4156
  %4240 = fmul fast float %4236, %4156
  %4241 = fmul fast float %4232, %4156
  %4242 = fadd fast float %4216, %4238
  %4243 = fadd fast float %4217, %4239
  %4244 = fadd fast float %4218, %4240
  %4245 = fadd fast float %4219, %4241
  %4246 = fmul fast float %4230, %4156
  %4247 = fmul fast float %4235, %4156
  %4248 = fadd fast float %4222, %4246
  %4249 = fadd fast float %4223, %4247
  %4250 = fmul fast float %4231, %4156
  %4251 = fmul fast float %4237, %4156
  %4252 = fadd fast float %4226, %4250
  %4253 = fadd fast float %4227, %4251
  %4254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4255 = extractvalue %dx.types.CBufRet.f32 %4254, 0
  %4256 = fsub fast float %4090, %4255
  %4257 = fsub fast float %4098, %4090
  %4258 = call float @dx.op.binary.f32(i32 35, float %4257, float %4256)  ; FMax(a,b)
  %4259 = extractvalue %dx.types.CBufRet.f32 %4254, 1
  %4260 = fsub fast float %4091, %4259
  %4261 = fsub fast float %4099, %4091
  %4262 = call float @dx.op.binary.f32(i32 35, float %4261, float %4260)  ; FMax(a,b)
  %4263 = call float @dx.op.binary.f32(i32 35, float %4258, float %4262)  ; FMax(a,b)
  %4264 = extractvalue %dx.types.CBufRet.f32 %4102, 3
  %4265 = fmul fast float %4264, %4263
  %4266 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4268 = extractvalue %dx.types.CBufRet.f32 %4267, 0
  %4269 = extractvalue %dx.types.CBufRet.f32 %4267, 1
  %4270 = extractvalue %dx.types.CBufRet.f32 %4267, 2
  %4271 = extractvalue %dx.types.CBufRet.f32 %4267, 3
  %4272 = fsub fast float %4268, %4242
  %4273 = fsub fast float %4269, %4243
  %4274 = fsub fast float %4270, %4244
  %4275 = fsub fast float %4271, %4245
  %4276 = fmul fast float %4272, %4266
  %4277 = fmul fast float %4273, %4266
  %4278 = fmul fast float %4274, %4266
  %4279 = fmul fast float %4275, %4266
  %4280 = fadd fast float %4276, %4242
  %4281 = fadd fast float %4277, %4243
  %4282 = fadd fast float %4278, %4244
  %4283 = fadd fast float %4279, %4245
  %4284 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4285 = extractvalue %dx.types.CBufRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.CBufRet.f32 %4284, 1
  %4287 = fsub fast float %4285, %4248
  %4288 = fsub fast float %4286, %4249
  %4289 = fmul fast float %4287, %4266
  %4290 = fmul fast float %4288, %4266
  %4291 = fadd fast float %4289, %4248
  %4292 = fadd fast float %4290, %4249
  %4293 = extractvalue %dx.types.CBufRet.f32 %4284, 2
  %4294 = extractvalue %dx.types.CBufRet.f32 %4284, 3
  %4295 = fsub fast float %4293, %4252
  %4296 = fsub fast float %4294, %4253
  %4297 = fmul fast float %4295, %4266
  %4298 = fmul fast float %4296, %4266
  %4299 = fadd fast float %4297, %4252
  %4300 = fadd fast float %4298, %4253
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4303 = fmul fast float %4302, %4280
  %4304 = fmul fast float %4302, %4281
  %4305 = fmul fast float %4302, %4282
  %4306 = fmul fast float %4302, %4283
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = fmul fast float %4308, %4291
  %4310 = fmul fast float %4308, %4292
  %4311 = fadd fast float %4309, %4303
  %4312 = fadd fast float %4310, %4305
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 0
  %4315 = fmul fast float %4314, %4299
  %4316 = fmul fast float %4314, %4300
  %4317 = fadd fast float %4311, %4315
  %4318 = fadd fast float %4312, %4316
  %4319 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4320 = fmul fast float %4319, %4280
  %4321 = fmul fast float %4319, %4281
  %4322 = fmul fast float %4319, %4282
  %4323 = fmul fast float %4319, %4283
  %4324 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4325 = fmul fast float %4324, %4291
  %4326 = fmul fast float %4324, %4292
  %4327 = fadd fast float %4325, %4320
  %4328 = fadd fast float %4326, %4322
  %4329 = extractvalue %dx.types.CBufRet.f32 %4313, 1
  %4330 = fmul fast float %4329, %4299
  %4331 = fmul fast float %4329, %4300
  %4332 = fadd fast float %4327, %4330
  %4333 = fadd fast float %4328, %4331
  %4334 = extractvalue %dx.types.CBufRet.f32 %4301, 2
  %4335 = fmul fast float %4334, %4280
  %4336 = fmul fast float %4334, %4281
  %4337 = fmul fast float %4334, %4282
  %4338 = fmul fast float %4334, %4283
  %4339 = extractvalue %dx.types.CBufRet.f32 %4307, 2
  %4340 = fmul fast float %4339, %4291
  %4341 = fmul fast float %4339, %4292
  %4342 = fadd fast float %4340, %4335
  %4343 = fadd fast float %4341, %4337
  %4344 = extractvalue %dx.types.CBufRet.f32 %4313, 2
  %4345 = fmul fast float %4344, %4299
  %4346 = fmul fast float %4344, %4300
  %4347 = fadd fast float %4342, %4345
  %4348 = fadd fast float %4343, %4346
  %4349 = fmul fast float %4336, %4336
  %4350 = fmul fast float %4348, %4348
  %4351 = fmul fast float %4338, %4338
  %4352 = fadd fast float %4351, %4349
  %4353 = fadd fast float %4352, %4350
  %4354 = call float @dx.op.unary.f32(i32 24, float %4353)  ; Sqrt(value)
  %4355 = fcmp fast ugt float %4354, 0.000000e+00
  br i1 %4355, label %4356, label %4371

; <label>:4356                                    ; preds = %4052
  %4357 = fsub fast float -0.000000e+00, %4338
  %4358 = fdiv fast float %4357, %4354
  %4359 = fsub fast float -0.000000e+00, %4336
  %4360 = fdiv fast float %4359, %4354
  %4361 = fdiv fast float %4348, %4354
  %4362 = fmul fast float %4347, 0x3FE279A760000000
  %4363 = fmul fast float %4360, %4336
  %4364 = fmul fast float %4361, %4348
  %4365 = fmul fast float %4358, %4338
  %4366 = fadd fast float %4363, %4365
  %4367 = fsub fast float %4366, %4364
  %4368 = call float @dx.op.unary.f32(i32 6, float %4367)  ; FAbs(value)
  %4369 = fadd fast float %4368, 0x3DDB7CDFE0000000
  %4370 = fdiv fast float %4362, %4369
  br label %4371

; <label>:4371                                    ; preds = %4356, %4052
  %4372 = phi float [ %4370, %4356 ], [ 1.000000e+00, %4052 ]
  %4373 = fmul fast float %4321, %4321
  %4374 = fmul fast float %4333, %4333
  %4375 = fmul fast float %4323, %4323
  %4376 = fadd fast float %4375, %4373
  %4377 = fadd fast float %4376, %4374
  %4378 = call float @dx.op.unary.f32(i32 24, float %4377)  ; Sqrt(value)
  %4379 = fcmp fast ugt float %4378, 0.000000e+00
  br i1 %4379, label %4380, label %4395

; <label>:4380                                    ; preds = %4371
  %4381 = fsub fast float -0.000000e+00, %4323
  %4382 = fdiv fast float %4381, %4378
  %4383 = fsub fast float -0.000000e+00, %4321
  %4384 = fdiv fast float %4383, %4378
  %4385 = fdiv fast float %4333, %4378
  %4386 = fmul fast float %4332, 0x3FE279A760000000
  %4387 = fmul fast float %4384, %4321
  %4388 = fmul fast float %4385, %4333
  %4389 = fmul fast float %4382, %4323
  %4390 = fadd fast float %4387, %4389
  %4391 = fsub fast float %4390, %4388
  %4392 = call float @dx.op.unary.f32(i32 6, float %4391)  ; FAbs(value)
  %4393 = fadd fast float %4392, 0x3DDB7CDFE0000000
  %4394 = fdiv fast float %4386, %4393
  br label %4395

; <label>:4395                                    ; preds = %4380, %4371
  %4396 = phi float [ %4394, %4380 ], [ 1.000000e+00, %4371 ]
  %4397 = call float @dx.op.binary.f32(i32 36, float %4396, float %4372)  ; FMin(a,b)
  %4398 = fmul fast float %4304, %4304
  %4399 = fmul fast float %4318, %4318
  %4400 = fmul fast float %4306, %4306
  %4401 = fadd fast float %4400, %4398
  %4402 = fadd fast float %4401, %4399
  %4403 = call float @dx.op.unary.f32(i32 24, float %4402)  ; Sqrt(value)
  %4404 = fcmp fast ugt float %4403, 0.000000e+00
  br i1 %4404, label %4405, label %4420

; <label>:4405                                    ; preds = %4395
  %4406 = fsub fast float -0.000000e+00, %4306
  %4407 = fdiv fast float %4406, %4403
  %4408 = fsub fast float -0.000000e+00, %4304
  %4409 = fdiv fast float %4408, %4403
  %4410 = fdiv fast float %4318, %4403
  %4411 = fmul fast float %4317, 0x3FE279A760000000
  %4412 = fmul fast float %4409, %4304
  %4413 = fmul fast float %4410, %4318
  %4414 = fmul fast float %4407, %4306
  %4415 = fadd fast float %4412, %4414
  %4416 = fsub fast float %4415, %4413
  %4417 = call float @dx.op.unary.f32(i32 6, float %4416)  ; FAbs(value)
  %4418 = fadd fast float %4417, 0x3DDB7CDFE0000000
  %4419 = fdiv fast float %4411, %4418
  br label %4420

; <label>:4420                                    ; preds = %4405, %4395
  %4421 = phi float [ %4419, %4405 ], [ 1.000000e+00, %4395 ]
  %4422 = call float @dx.op.binary.f32(i32 36, float %4421, float %4397)  ; FMin(a,b)
  %4423 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  %4424 = fcmp fast olt float %4423, 1.000000e+00
  br i1 %4424, label %4425, label %4435

; <label>:4425                                    ; preds = %4420
  %4426 = fmul fast float %4423, %4304
  %4427 = fmul fast float %4423, %4318
  %4428 = fmul fast float %4423, %4306
  %4429 = fmul fast float %4423, %4321
  %4430 = fmul fast float %4423, %4333
  %4431 = fmul fast float %4423, %4323
  %4432 = fmul fast float %4423, %4336
  %4433 = fmul fast float %4423, %4348
  %4434 = fmul fast float %4423, %4338
  br label %4435

; <label>:4435                                    ; preds = %4425, %4420
  %4436 = phi float [ %4432, %4425 ], [ %4336, %4420 ]
  %4437 = phi float [ %4433, %4425 ], [ %4348, %4420 ]
  %4438 = phi float [ %4434, %4425 ], [ %4338, %4420 ]
  %4439 = phi float [ %4429, %4425 ], [ %4321, %4420 ]
  %4440 = phi float [ %4430, %4425 ], [ %4333, %4420 ]
  %4441 = phi float [ %4431, %4425 ], [ %4323, %4420 ]
  %4442 = phi float [ %4426, %4425 ], [ %4304, %4420 ]
  %4443 = phi float [ %4427, %4425 ], [ %4318, %4420 ]
  %4444 = phi float [ %4428, %4425 ], [ %4306, %4420 ]
  %4445 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4317)  ; FMax(a,b)
  %4446 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4332)  ; FMax(a,b)
  %4447 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4347)  ; FMax(a,b)
  %4448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4449 = extractvalue %dx.types.CBufRet.f32 %4448, 0
  %4450 = fcmp fast ogt float %4449, 0.000000e+00
  %4451 = fcmp fast oge float %4105, 0.000000e+00
  %4452 = and i1 %4451, %4450
  %4453 = fcmp fast ole float %4105, 1.000000e+00
  %4454 = and i1 %4453, %4452
  %4455 = fcmp fast oge float %4106, 0.000000e+00
  %4456 = and i1 %4455, %4454
  %4457 = fcmp fast ole float %4106, 1.000000e+00
  %4458 = and i1 %4457, %4456
  br i1 %4458, label %4459, label %4604, !dx.controlflow.hints !71

; <label>:4459                                    ; preds = %4435
  %4460 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4461 = extractvalue %dx.types.CBufRet.f32 %4460, 2
  %4462 = extractvalue %dx.types.CBufRet.f32 %4460, 3
  %4463 = fmul fast float %4461, %4105
  %4464 = fmul fast float %4462, %4106
  %4465 = call float @dx.op.unary.f32(i32 27, float %4463)  ; Round_ni(value)
  %4466 = call float @dx.op.unary.f32(i32 27, float %4464)  ; Round_ni(value)
  %4467 = fptosi float %4465 to i32
  %4468 = fptosi float %4466 to i32
  %4469 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %4467, i32 %4468, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4470 = extractvalue %dx.types.ResRet.i32 %4469, 0
  %4471 = and i32 %4470, 65535
  %4472 = lshr i32 %4470, 16
  %4473 = icmp eq i32 %4471, 65535
  br i1 %4473, label %4510, label %4474

; <label>:4474                                    ; preds = %4459
  %4475 = extractvalue %dx.types.CBufRet.f32 %4448, 1
  %4476 = extractvalue %dx.types.CBufRet.f32 %4460, 0
  %4477 = extractvalue %dx.types.CBufRet.f32 %4460, 1
  %4478 = fmul fast float %4476, %4105
  %4479 = fmul fast float %4477, %4106
  %4480 = fmul fast float %4478, 1.250000e-01
  %4481 = fmul fast float %4479, 1.250000e-01
  %4482 = call float @dx.op.unary.f32(i32 27, float %4480)  ; Round_ni(value)
  %4483 = call float @dx.op.unary.f32(i32 27, float %4481)  ; Round_ni(value)
  %4484 = fmul fast float %4482, 8.000000e+00
  %4485 = fmul fast float %4483, 8.000000e+00
  %4486 = and i32 %4470, 255
  %4487 = lshr i32 %4470, 8
  %4488 = and i32 %4487, 255
  %4489 = mul nuw nsw i32 %4486, 9
  %4490 = uitofp i32 %4489 to float
  %4491 = mul nuw nsw i32 %4488, 9
  %4492 = uitofp i32 %4491 to float
  %4493 = fadd fast float %4490, 5.000000e-01
  %4494 = fadd fast float %4493, %4478
  %4495 = fsub fast float %4494, %4484
  %4496 = fadd fast float %4492, 5.000000e-01
  %4497 = fadd fast float %4496, %4479
  %4498 = fsub fast float %4497, %4485
  %4499 = fdiv fast float %4495, %4449
  %4500 = fdiv fast float %4498, %4475
  %4501 = fmul fast float %4133, 4.375000e-01
  %4502 = fadd fast float %4501, 3.125000e-02
  %4503 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %4499, float %4500, float %4502, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4504 = extractvalue %dx.types.ResRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.ResRet.f32 %4503, 1
  %4506 = extractvalue %dx.types.ResRet.f32 %4503, 2
  %4507 = fadd fast float %4504, %4445
  %4508 = fadd fast float %4505, %4446
  %4509 = fadd fast float %4506, %4447
  br label %4510

; <label>:4510                                    ; preds = %4474, %4459
  %4511 = phi float [ %4509, %4474 ], [ %4447, %4459 ]
  %4512 = phi float [ %4508, %4474 ], [ %4446, %4459 ]
  %4513 = phi float [ %4507, %4474 ], [ %4445, %4459 ]
  %4514 = icmp eq i32 %4472, 65535
  br i1 %4514, label %4604, label %4515

; <label>:4515                                    ; preds = %4510
  %4516 = extractvalue %dx.types.CBufRet.f32 %4448, 1
  %4517 = extractvalue %dx.types.CBufRet.f32 %4460, 0
  %4518 = extractvalue %dx.types.CBufRet.f32 %4460, 1
  %4519 = fmul fast float %4517, %4105
  %4520 = fmul fast float %4518, %4106
  %4521 = fmul fast float %4519, 1.250000e-01
  %4522 = fmul fast float %4520, 1.250000e-01
  %4523 = call float @dx.op.unary.f32(i32 27, float %4521)  ; Round_ni(value)
  %4524 = call float @dx.op.unary.f32(i32 27, float %4522)  ; Round_ni(value)
  %4525 = fmul fast float %4523, 8.000000e+00
  %4526 = fmul fast float %4524, 8.000000e+00
  %4527 = fsub fast float %4519, %4525
  %4528 = fsub fast float %4520, %4526
  %4529 = fadd fast float %4527, 5.000000e-01
  %4530 = fadd fast float %4528, 5.000000e-01
  %4531 = and i32 %4472, 255
  %4532 = lshr i32 %4470, 24
  %4533 = mul nuw nsw i32 %4531, 9
  %4534 = uitofp i32 %4533 to float
  %4535 = mul nuw nsw i32 %4532, 9
  %4536 = uitofp i32 %4535 to float
  %4537 = fadd fast float %4529, %4534
  %4538 = fadd fast float %4530, %4536
  %4539 = fdiv fast float %4537, %4449
  %4540 = fdiv fast float %4538, %4516
  %4541 = fmul fast float %4133, 4.375000e-01
  %4542 = fadd fast float %4541, 3.125000e-02
  %4543 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %4539, float %4540, float %4542, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4544 = extractvalue %dx.types.ResRet.f32 %4543, 0
  %4545 = extractvalue %dx.types.ResRet.f32 %4543, 1
  %4546 = extractvalue %dx.types.ResRet.f32 %4543, 2
  %4547 = fadd fast float %4541, 5.312500e-01
  %4548 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %4539, float %4540, float %4547, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 0
  %4550 = extractvalue %dx.types.ResRet.f32 %4548, 1
  %4551 = extractvalue %dx.types.ResRet.f32 %4548, 2
  %4552 = fmul fast float %4549, 2.000000e+00
  %4553 = fmul fast float %4550, 2.000000e+00
  %4554 = fmul fast float %4551, 2.000000e+00
  %4555 = fadd fast float %4552, -1.000000e+00
  %4556 = fadd fast float %4553, -1.000000e+00
  %4557 = fadd fast float %4554, -1.000000e+00
  %4558 = fmul fast float %4555, %4555
  %4559 = fmul fast float %4556, %4556
  %4560 = fadd fast float %4558, %4559
  %4561 = fmul fast float %4557, %4557
  %4562 = fadd fast float %4560, %4561
  %4563 = call float @dx.op.unary.f32(i32 24, float %4562)  ; Sqrt(value)
  %4564 = fcmp fast ogt float %4563, 0.000000e+00
  br i1 %4564, label %4565, label %4569

; <label>:4565                                    ; preds = %4515
  %4566 = fdiv fast float %4555, %4563
  %4567 = fdiv fast float %4556, %4563
  %4568 = fdiv fast float %4557, %4563
  br label %4569

; <label>:4569                                    ; preds = %4565, %4515
  %4570 = phi float [ %4566, %4565 ], [ 0.000000e+00, %4515 ]
  %4571 = phi float [ %4567, %4565 ], [ 0.000000e+00, %4515 ]
  %4572 = phi float [ %4568, %4565 ], [ 0.000000e+00, %4515 ]
  %4573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4574 = extractvalue %dx.types.CBufRet.f32 %4573, 0
  %4575 = extractvalue %dx.types.CBufRet.f32 %4573, 1
  %4576 = fsub fast float %4090, %4574
  %4577 = fsub fast float %4091, %4575
  %4578 = fmul fast float %4576, %4576
  %4579 = fmul fast float %4577, %4577
  %4580 = fadd fast float %4578, %4579
  %4581 = call float @dx.op.unary.f32(i32 24, float %4580)  ; Sqrt(value)
  %4582 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4583 = extractvalue %dx.types.CBufRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.CBufRet.f32 %4582, 1
  %4585 = fsub fast float %4581, %4583
  %4586 = fdiv fast float %4585, %4584
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = fmul fast float %4587, 2.000000e+00
  %4589 = fsub fast float 3.000000e+00, %4588
  %4590 = fmul fast float %4587, %4587
  %4591 = fmul fast float %4590, %4589
  %4592 = call float @dx.op.dot3.f32(i32 55, float %4570, float %4571, float %4572, float %4062, float %4063, float %4064)  ; Dot3(ax,ay,az,bx,by,bz)
  %4593 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4592)  ; FMax(a,b)
  %4594 = fmul fast float %4593, 0x400C5BF8A0000000
  %4595 = fmul fast float %4591, %4544
  %4596 = fmul fast float %4595, %4594
  %4597 = fadd fast float %4596, %4513
  %4598 = fmul fast float %4591, %4545
  %4599 = fmul fast float %4598, %4594
  %4600 = fadd fast float %4599, %4512
  %4601 = fmul fast float %4591, %4546
  %4602 = fmul fast float %4601, %4594
  %4603 = fadd fast float %4602, %4511
  br label %4604

; <label>:4604                                    ; preds = %4569, %4510, %4435
  %4605 = phi float [ %4603, %4569 ], [ %4511, %4510 ], [ %4447, %4435 ]
  %4606 = phi float [ %4600, %4569 ], [ %4512, %4510 ], [ %4446, %4435 ]
  %4607 = phi float [ %4597, %4569 ], [ %4513, %4510 ], [ %4445, %4435 ]
  %4608 = fcmp fast ogt float %4092, %4129
  %4609 = and i1 %4451, %4608
  %4610 = and i1 %4453, %4609
  %4611 = and i1 %4455, %4610
  %4612 = and i1 %4457, %4611
  br i1 %4612, label %4613, label %4670, !dx.controlflow.hints !72

; <label>:4613                                    ; preds = %4604
  %4614 = fmul fast float %4131, 0x3FC24924A0000000
  %4615 = fsub fast float %4092, %4129
  %4616 = fdiv fast float %4615, %4614
  %4617 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4619 = extractvalue %dx.types.CBufRet.f32 %4618, 0
  %4620 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4621 = extractvalue %dx.types.CBufRet.f32 %4620, 0
  %4622 = extractvalue %dx.types.CBufRet.f32 %4620, 1
  %4623 = extractvalue %dx.types.CBufRet.f32 %4620, 2
  %4624 = fsub fast float %4619, %4607
  %4625 = fsub fast float %4621, %4442
  %4626 = fsub fast float %4622, %4443
  %4627 = fsub fast float %4623, %4444
  %4628 = fmul fast float %4624, %4617
  %4629 = fmul fast float %4625, %4617
  %4630 = fmul fast float %4626, %4617
  %4631 = fmul fast float %4627, %4617
  %4632 = fadd fast float %4628, %4607
  %4633 = fadd fast float %4629, %4442
  %4634 = fadd fast float %4630, %4443
  %4635 = fadd fast float %4631, %4444
  %4636 = extractvalue %dx.types.CBufRet.f32 %4618, 1
  %4637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4638 = extractvalue %dx.types.CBufRet.f32 %4637, 0
  %4639 = extractvalue %dx.types.CBufRet.f32 %4637, 1
  %4640 = extractvalue %dx.types.CBufRet.f32 %4637, 2
  %4641 = fsub fast float %4636, %4606
  %4642 = fsub fast float %4638, %4439
  %4643 = fsub fast float %4639, %4440
  %4644 = fsub fast float %4640, %4441
  %4645 = fmul fast float %4641, %4617
  %4646 = fmul fast float %4642, %4617
  %4647 = fmul fast float %4643, %4617
  %4648 = fmul fast float %4644, %4617
  %4649 = fadd fast float %4645, %4606
  %4650 = fadd fast float %4646, %4439
  %4651 = fadd fast float %4647, %4440
  %4652 = fadd fast float %4648, %4441
  %4653 = extractvalue %dx.types.CBufRet.f32 %4618, 2
  %4654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4655 = extractvalue %dx.types.CBufRet.f32 %4654, 0
  %4656 = extractvalue %dx.types.CBufRet.f32 %4654, 1
  %4657 = extractvalue %dx.types.CBufRet.f32 %4654, 2
  %4658 = fsub fast float %4653, %4605
  %4659 = fsub fast float %4655, %4436
  %4660 = fsub fast float %4656, %4437
  %4661 = fsub fast float %4657, %4438
  %4662 = fmul fast float %4658, %4617
  %4663 = fmul fast float %4659, %4617
  %4664 = fmul fast float %4660, %4617
  %4665 = fmul fast float %4661, %4617
  %4666 = fadd fast float %4662, %4605
  %4667 = fadd fast float %4663, %4436
  %4668 = fadd fast float %4664, %4437
  %4669 = fadd fast float %4665, %4438
  br label %4670

; <label>:4670                                    ; preds = %4613, %4604
  %4671 = phi float [ %4666, %4613 ], [ %4605, %4604 ]
  %4672 = phi float [ %4667, %4613 ], [ %4436, %4604 ]
  %4673 = phi float [ %4668, %4613 ], [ %4437, %4604 ]
  %4674 = phi float [ %4669, %4613 ], [ %4438, %4604 ]
  %4675 = phi float [ %4649, %4613 ], [ %4606, %4604 ]
  %4676 = phi float [ %4650, %4613 ], [ %4439, %4604 ]
  %4677 = phi float [ %4651, %4613 ], [ %4440, %4604 ]
  %4678 = phi float [ %4652, %4613 ], [ %4441, %4604 ]
  %4679 = phi float [ %4632, %4613 ], [ %4607, %4604 ]
  %4680 = phi float [ %4633, %4613 ], [ %4442, %4604 ]
  %4681 = phi float [ %4634, %4613 ], [ %4443, %4604 ]
  %4682 = phi float [ %4635, %4613 ], [ %4444, %4604 ]
  %4683 = extractvalue %dx.types.CBufRet.f32 %4254, 3
  %4684 = fmul fast float %4683, %4679
  %4685 = fmul fast float %4683, %4675
  %4686 = fmul fast float %4683, %4671
  %4687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4688 = extractvalue %dx.types.CBufRet.f32 %4687, 3
  %4689 = fmul fast float %4684, %4688
  %4690 = fmul fast float %4685, %4688
  %4691 = fmul fast float %4686, %4688
  %4692 = fmul fast float %4680, 1.500000e+00
  %4693 = fmul fast float %4692, %4683
  %4694 = fmul fast float %4693, %4688
  %4695 = fmul fast float %4681, 1.500000e+00
  %4696 = fmul fast float %4695, %4683
  %4697 = fmul fast float %4696, %4688
  %4698 = fmul fast float %4682, 1.500000e+00
  %4699 = fmul fast float %4698, %4683
  %4700 = fmul fast float %4699, %4688
  %4701 = fmul fast float %4676, 1.500000e+00
  %4702 = fmul fast float %4701, %4683
  %4703 = fmul fast float %4702, %4688
  %4704 = fmul fast float %4677, 1.500000e+00
  %4705 = fmul fast float %4704, %4683
  %4706 = fmul fast float %4705, %4688
  %4707 = fmul fast float %4678, 1.500000e+00
  %4708 = fmul fast float %4707, %4683
  %4709 = fmul fast float %4708, %4688
  %4710 = fmul fast float %4672, 1.500000e+00
  %4711 = fmul fast float %4710, %4683
  %4712 = fmul fast float %4711, %4688
  %4713 = fmul fast float %4673, 1.500000e+00
  %4714 = fmul fast float %4713, %4683
  %4715 = fmul fast float %4714, %4688
  %4716 = fmul fast float %4674, 1.500000e+00
  %4717 = fmul fast float %4716, %4683
  %4718 = fmul fast float %4717, %4688
  %4719 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4689)  ; FMax(a,b)
  %4720 = call float @dx.op.dot3.f32(i32 55, float %4694, float %4697, float %4700, float %4694, float %4697, float %4700)  ; Dot3(ax,ay,az,bx,by,bz)
  %4721 = fcmp fast oeq float %4720, 0.000000e+00
  %4722 = fcmp fast oeq float %4719, 0.000000e+00
  %4723 = or i1 %4722, %4721
  br i1 %4723, label %4753, label %4724

; <label>:4724                                    ; preds = %4670
  %4725 = fsub fast float -0.000000e+00, %4700
  %4726 = fsub fast float -0.000000e+00, %4694
  %4727 = call float @dx.op.unary.f32(i32 24, float %4720)  ; Sqrt(value)
  %4728 = fdiv fast float %4727, %4719
  %4729 = fcmp fast ogt float %4728, 0x3FFB6F8900000000
  %4730 = select i1 %4729, float 0x3FFB6F8900000000, float %4728
  %4731 = fmul fast float %4730, 0x3FE8A23460000000
  %4732 = call float @dx.op.unary.f32(i32 7, float %4731)  ; Saturate(value)
  %4733 = call float @dx.op.binary.f32(i32 35, float %4730, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4734 = fmul fast float %4732, %4719
  %4735 = fmul fast float %4733, 0x3FF279A740000000
  %4736 = fadd fast float %4735, -1.000000e+00
  %4737 = call float @dx.op.dot3.f32(i32 55, float %4725, float %4726, float %4697, float %4725, float %4726, float %4697)  ; Dot3(ax,ay,az,bx,by,bz)
  %4738 = call float @dx.op.unary.f32(i32 25, float %4737)  ; Rsqrt(value)
  %4739 = fmul fast float %4738, %4725
  %4740 = fmul fast float %4738, %4726
  %4741 = fmul fast float %4738, %4697
  %4742 = fmul fast float %4736, %4736
  %4743 = fsub fast float 1.000000e+00, %4742
  %4744 = fmul fast float %4733, 0x40005F8BE0000000
  %4745 = fsub fast float 0x400C5BF8A0000000, %4744
  %4746 = fdiv fast float %4734, %4745
  %4747 = fmul fast float %4746, 0x3FEE31C3C0000000
  %4748 = fmul fast float %4747, %4743
  %4749 = fmul fast float %4733, 0x3FDACB7480000000
  %4750 = fadd fast float %4749, 0xBFD7347680000000
  %4751 = fmul fast float %4750, %4746
  %4752 = fmul fast float %4751, %4743
  br label %4753

; <label>:4753                                    ; preds = %4724, %4670
  %4754 = phi float [ %4739, %4724 ], [ 0.000000e+00, %4670 ]
  %4755 = phi float [ %4740, %4724 ], [ 0.000000e+00, %4670 ]
  %4756 = phi float [ %4741, %4724 ], [ 0.000000e+00, %4670 ]
  %4757 = phi float [ %4748, %4724 ], [ 0.000000e+00, %4670 ]
  %4758 = phi float [ %4752, %4724 ], [ 0.000000e+00, %4670 ]
  %4759 = call float @dx.op.dot3.f32(i32 55, float %4754, float %4755, float %4756, float %4062, float %4063, float %4064)  ; Dot3(ax,ay,az,bx,by,bz)
  %4760 = fmul fast float %4759, %4759
  %4761 = fmul fast float %4760, 0x3FEE471020000000
  %4762 = fadd fast float %4761, 0xBFD42F6020000000
  %4763 = fmul fast float %4719, 0x3FD20DD760000000
  %4764 = fmul fast float %4762, %4758
  %4765 = fmul fast float %4757, 0x3FDF454380000000
  %4766 = fmul fast float %4765, %4759
  %4767 = fadd fast float %4766, %4763
  %4768 = fadd fast float %4767, %4764
  %4769 = call float @dx.op.dot3.f32(i32 55, float %4754, float %4755, float %4756, float %4078, float %4079, float %4080)  ; Dot3(ax,ay,az,bx,by,bz)
  %4770 = fmul fast float %4769, 0x3FDF454380000000
  %4771 = fmul fast float %4769, %4769
  %4772 = fmul fast float %4771, 0x3FEE471020000000
  %4773 = fadd fast float %4772, 0xBFD42F6020000000
  %4774 = call float @dx.op.dot3.f32(i32 55, float %4719, float %4757, float %4758, float 0x3FD20DD760000000, float %4770, float %4773)  ; Dot3(ax,ay,az,bx,by,bz)
  %4775 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4690)  ; FMax(a,b)
  %4776 = call float @dx.op.dot3.f32(i32 55, float %4703, float %4706, float %4709, float %4703, float %4706, float %4709)  ; Dot3(ax,ay,az,bx,by,bz)
  %4777 = fcmp fast oeq float %4776, 0.000000e+00
  %4778 = fcmp fast oeq float %4775, 0.000000e+00
  %4779 = or i1 %4778, %4777
  br i1 %4779, label %4809, label %4780

; <label>:4780                                    ; preds = %4753
  %4781 = fsub fast float -0.000000e+00, %4709
  %4782 = fsub fast float -0.000000e+00, %4703
  %4783 = call float @dx.op.unary.f32(i32 24, float %4776)  ; Sqrt(value)
  %4784 = fdiv fast float %4783, %4775
  %4785 = fcmp fast ogt float %4784, 0x3FFB6F8900000000
  %4786 = select i1 %4785, float 0x3FFB6F8900000000, float %4784
  %4787 = fmul fast float %4786, 0x3FE8A23460000000
  %4788 = call float @dx.op.unary.f32(i32 7, float %4787)  ; Saturate(value)
  %4789 = call float @dx.op.binary.f32(i32 35, float %4786, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4790 = fmul fast float %4788, %4775
  %4791 = fmul fast float %4789, 0x3FF279A740000000
  %4792 = fadd fast float %4791, -1.000000e+00
  %4793 = call float @dx.op.dot3.f32(i32 55, float %4781, float %4782, float %4706, float %4781, float %4782, float %4706)  ; Dot3(ax,ay,az,bx,by,bz)
  %4794 = call float @dx.op.unary.f32(i32 25, float %4793)  ; Rsqrt(value)
  %4795 = fmul fast float %4794, %4781
  %4796 = fmul fast float %4794, %4782
  %4797 = fmul fast float %4794, %4706
  %4798 = fmul fast float %4792, %4792
  %4799 = fsub fast float 1.000000e+00, %4798
  %4800 = fmul fast float %4789, 0x40005F8BE0000000
  %4801 = fsub fast float 0x400C5BF8A0000000, %4800
  %4802 = fdiv fast float %4790, %4801
  %4803 = fmul fast float %4802, 0x3FEE31C3C0000000
  %4804 = fmul fast float %4803, %4799
  %4805 = fmul fast float %4789, 0x3FDACB7480000000
  %4806 = fadd fast float %4805, 0xBFD7347680000000
  %4807 = fmul fast float %4806, %4802
  %4808 = fmul fast float %4807, %4799
  br label %4809

; <label>:4809                                    ; preds = %4780, %4753
  %4810 = phi float [ %4795, %4780 ], [ 0.000000e+00, %4753 ]
  %4811 = phi float [ %4796, %4780 ], [ 0.000000e+00, %4753 ]
  %4812 = phi float [ %4797, %4780 ], [ 0.000000e+00, %4753 ]
  %4813 = phi float [ %4804, %4780 ], [ 0.000000e+00, %4753 ]
  %4814 = phi float [ %4808, %4780 ], [ 0.000000e+00, %4753 ]
  %4815 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4811, float %4812, float %4062, float %4063, float %4064)  ; Dot3(ax,ay,az,bx,by,bz)
  %4816 = fmul fast float %4815, %4815
  %4817 = fmul fast float %4816, 0x3FEE471020000000
  %4818 = fadd fast float %4817, 0xBFD42F6020000000
  %4819 = fmul fast float %4775, 0x3FD20DD760000000
  %4820 = fmul fast float %4818, %4814
  %4821 = fmul fast float %4813, 0x3FDF454380000000
  %4822 = fmul fast float %4821, %4815
  %4823 = fadd fast float %4822, %4819
  %4824 = fadd fast float %4823, %4820
  %4825 = call float @dx.op.dot3.f32(i32 55, float %4810, float %4811, float %4812, float %4078, float %4079, float %4080)  ; Dot3(ax,ay,az,bx,by,bz)
  %4826 = fmul fast float %4825, 0x3FDF454380000000
  %4827 = fmul fast float %4825, %4825
  %4828 = fmul fast float %4827, 0x3FEE471020000000
  %4829 = fadd fast float %4828, 0xBFD42F6020000000
  %4830 = call float @dx.op.dot3.f32(i32 55, float %4775, float %4813, float %4814, float 0x3FD20DD760000000, float %4826, float %4829)  ; Dot3(ax,ay,az,bx,by,bz)
  %4831 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4691)  ; FMax(a,b)
  %4832 = call float @dx.op.dot3.f32(i32 55, float %4712, float %4715, float %4718, float %4712, float %4715, float %4718)  ; Dot3(ax,ay,az,bx,by,bz)
  %4833 = fcmp fast oeq float %4832, 0.000000e+00
  %4834 = fcmp fast oeq float %4831, 0.000000e+00
  %4835 = or i1 %4834, %4833
  br i1 %4835, label %4865, label %4836

; <label>:4836                                    ; preds = %4809
  %4837 = fsub fast float -0.000000e+00, %4718
  %4838 = fsub fast float -0.000000e+00, %4712
  %4839 = call float @dx.op.unary.f32(i32 24, float %4832)  ; Sqrt(value)
  %4840 = fdiv fast float %4839, %4831
  %4841 = fcmp fast ogt float %4840, 0x3FFB6F8900000000
  %4842 = select i1 %4841, float 0x3FFB6F8900000000, float %4840
  %4843 = fmul fast float %4842, 0x3FE8A23460000000
  %4844 = call float @dx.op.unary.f32(i32 7, float %4843)  ; Saturate(value)
  %4845 = call float @dx.op.binary.f32(i32 35, float %4842, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4846 = fmul fast float %4844, %4831
  %4847 = fmul fast float %4845, 0x3FF279A740000000
  %4848 = fadd fast float %4847, -1.000000e+00
  %4849 = call float @dx.op.dot3.f32(i32 55, float %4837, float %4838, float %4715, float %4837, float %4838, float %4715)  ; Dot3(ax,ay,az,bx,by,bz)
  %4850 = call float @dx.op.unary.f32(i32 25, float %4849)  ; Rsqrt(value)
  %4851 = fmul fast float %4850, %4837
  %4852 = fmul fast float %4850, %4838
  %4853 = fmul fast float %4850, %4715
  %4854 = fmul fast float %4848, %4848
  %4855 = fsub fast float 1.000000e+00, %4854
  %4856 = fmul fast float %4845, 0x40005F8BE0000000
  %4857 = fsub fast float 0x400C5BF8A0000000, %4856
  %4858 = fdiv fast float %4846, %4857
  %4859 = fmul fast float %4858, 0x3FEE31C3C0000000
  %4860 = fmul fast float %4859, %4855
  %4861 = fmul fast float %4845, 0x3FDACB7480000000
  %4862 = fadd fast float %4861, 0xBFD7347680000000
  %4863 = fmul fast float %4862, %4858
  %4864 = fmul fast float %4863, %4855
  br label %4865

; <label>:4865                                    ; preds = %4836, %4809
  %4866 = phi float [ %4851, %4836 ], [ 0.000000e+00, %4809 ]
  %4867 = phi float [ %4852, %4836 ], [ 0.000000e+00, %4809 ]
  %4868 = phi float [ %4853, %4836 ], [ 0.000000e+00, %4809 ]
  %4869 = phi float [ %4860, %4836 ], [ 0.000000e+00, %4809 ]
  %4870 = phi float [ %4864, %4836 ], [ 0.000000e+00, %4809 ]
  %4871 = call float @dx.op.dot3.f32(i32 55, float %4866, float %4867, float %4868, float %4062, float %4063, float %4064)  ; Dot3(ax,ay,az,bx,by,bz)
  %4872 = fmul fast float %4871, %4871
  %4873 = fmul fast float %4872, 0x3FEE471020000000
  %4874 = fadd fast float %4873, 0xBFD42F6020000000
  %4875 = fmul fast float %4831, 0x3FD20DD760000000
  %4876 = fmul fast float %4874, %4870
  %4877 = fmul fast float %4869, 0x3FDF454380000000
  %4878 = fmul fast float %4877, %4871
  %4879 = fadd fast float %4878, %4875
  %4880 = fadd fast float %4879, %4876
  %4881 = call float @dx.op.dot3.f32(i32 55, float %4866, float %4867, float %4868, float %4078, float %4079, float %4080)  ; Dot3(ax,ay,az,bx,by,bz)
  %4882 = fmul fast float %4881, 0x3FDF454380000000
  %4883 = fmul fast float %4881, %4881
  %4884 = fmul fast float %4883, 0x3FEE471020000000
  %4885 = fadd fast float %4884, 0xBFD42F6020000000
  %4886 = call float @dx.op.dot3.f32(i32 55, float %4831, float %4869, float %4870, float 0x3FD20DD760000000, float %4882, float %4885)  ; Dot3(ax,ay,az,bx,by,bz)
  %4887 = call float @dx.op.binary.f32(i32 35, float %4768, float 0.000000e+00)  ; FMax(a,b)
  %4888 = call float @dx.op.binary.f32(i32 35, float %4824, float 0.000000e+00)  ; FMax(a,b)
  %4889 = call float @dx.op.binary.f32(i32 35, float %4880, float 0.000000e+00)  ; FMax(a,b)
  %4890 = call float @dx.op.binary.f32(i32 35, float %4774, float 0.000000e+00)  ; FMax(a,b)
  %4891 = call float @dx.op.binary.f32(i32 35, float %4830, float 0.000000e+00)  ; FMax(a,b)
  %4892 = call float @dx.op.binary.f32(i32 35, float %4886, float 0.000000e+00)  ; FMax(a,b)
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 0
  %4895 = call float @dx.op.binary.f32(i32 36, float %4059, float %4894)  ; FMin(a,b)
  %4896 = fsub fast float 1.000000e+00, %4081
  %4897 = fmul fast float %4895, %4896
  %4898 = fsub fast float 1.000000e+00, %4897
  %4899 = bitcast float %4898 to i32
  %4900 = sub nsw i32 2129859010, %4899
  %4901 = bitcast i32 %4900 to float
  %4902 = call float @dx.op.binary.f32(i32 36, float %4060, float %4894)  ; FMin(a,b)
  %4903 = fmul fast float %4902, %4896
  %4904 = fsub fast float 1.000000e+00, %4903
  %4905 = bitcast float %4904 to i32
  %4906 = sub nsw i32 2129859010, %4905
  %4907 = bitcast i32 %4906 to float
  %4908 = call float @dx.op.binary.f32(i32 36, float %4061, float %4894)  ; FMin(a,b)
  %4909 = fmul fast float %4908, %4896
  %4910 = fsub fast float 1.000000e+00, %4909
  %4911 = bitcast float %4910 to i32
  %4912 = sub nsw i32 2129859010, %4911
  %4913 = bitcast i32 %4912 to float
  %4914 = fmul fast float %4887, %4081
  %4915 = fmul fast float %4914, %4901
  %4916 = fmul fast float %4888, %4081
  %4917 = fmul fast float %4916, %4907
  %4918 = fmul fast float %4889, %4081
  %4919 = fmul fast float %4918, %4913
  %4920 = call float @dx.op.binary.f32(i32 36, float %4065, float %4894)  ; FMin(a,b)
  %4921 = fmul fast float %4920, %4896
  %4922 = fsub fast float 1.000000e+00, %4921
  %4923 = bitcast float %4922 to i32
  %4924 = sub nsw i32 2129859010, %4923
  %4925 = bitcast i32 %4924 to float
  %4926 = call float @dx.op.binary.f32(i32 36, float %4066, float %4894)  ; FMin(a,b)
  %4927 = fmul fast float %4926, %4896
  %4928 = fsub fast float 1.000000e+00, %4927
  %4929 = bitcast float %4928 to i32
  %4930 = sub nsw i32 2129859010, %4929
  %4931 = bitcast i32 %4930 to float
  %4932 = call float @dx.op.binary.f32(i32 36, float %4070, float %4894)  ; FMin(a,b)
  %4933 = fmul fast float %4932, %4896
  %4934 = fsub fast float 1.000000e+00, %4933
  %4935 = bitcast float %4934 to i32
  %4936 = sub nsw i32 2129859010, %4935
  %4937 = bitcast i32 %4936 to float
  %4938 = fmul fast float %4890, %4081
  %4939 = fmul fast float %4938, %4925
  %4940 = fmul fast float %4891, %4081
  %4941 = fmul fast float %4940, %4931
  %4942 = fmul fast float %4892, %4081
  %4943 = fmul fast float %4942, %4937
  %4944 = call float @dx.op.dot3.f32(i32 55, float %4915, float %4917, float %4919, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4945 = select i1 %161, float 0.000000e+00, float %4915
  %4946 = select i1 %161, float %4944, float %4917
  %4947 = select i1 %161, float 0.000000e+00, float %4919
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4939, float %4941, float %4943, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = select i1 %161, float 0.000000e+00, float %4939
  %4950 = select i1 %161, float %4948, float %4941
  %4951 = select i1 %161, float 0.000000e+00, float %4943
  %4952 = fmul fast float %4072, 9.843750e-01
  %4953 = fmul fast float %4068, 9.843750e-01
  %4954 = fadd fast float %4952, 7.812500e-03
  %4955 = fadd fast float %4953, 7.812500e-03
  %4956 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %4954, float %4955, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4957 = extractvalue %dx.types.ResRet.f32 %4956, 2
  %4958 = extractvalue %dx.types.ResRet.f32 %4956, 3
  %4959 = fmul fast float %4957, %4065
  %4960 = fmul fast float %4957, %4066
  %4961 = fmul fast float %4957, %4070
  %4962 = fadd fast float %4959, %4958
  %4963 = fadd fast float %4960, %4958
  %4964 = fadd fast float %4961, %4958
  %4965 = call float @dx.op.binary.f32(i32 35, float %4963, float %4964)  ; FMax(a,b)
  %4966 = call float @dx.op.binary.f32(i32 35, float %4962, float %4965)  ; FMax(a,b)
  %4967 = fsub fast float 1.000000e+00, %4966
  %4968 = fmul fast float %4967, %4945
  %4969 = fmul fast float %4967, %4946
  %4970 = fmul fast float %4967, %4947
  %4971 = fmul fast float %4962, %4949
  %4972 = fmul fast float %4963, %4950
  %4973 = fmul fast float %4964, %4951
  %4974 = fmul fast float %4968, %866
  %4975 = fmul fast float %4969, %866
  %4976 = fmul fast float %4970, %866
  %4977 = fadd fast float %4971, %3422
  %4978 = fmul fast float %4977, %866
  %4979 = fadd fast float %4972, %3423
  %4980 = fmul fast float %4979, %866
  %4981 = fadd fast float %4973, %3424
  %4982 = fmul fast float %4981, %866
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 3
  %4985 = fcmp fast oeq float %4984, 0.000000e+00
  br i1 %4985, label %5144, label %4986

; <label>:4986                                    ; preds = %4865
  %4987 = extractvalue %dx.types.CBufRet.f32 %4983, 0
  %4988 = extractvalue %dx.types.CBufRet.f32 %4983, 1
  %4989 = extractvalue %dx.types.CBufRet.f32 %4983, 2
  %4990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4991 = extractvalue %dx.types.CBufRet.f32 %4990, 0
  %4992 = extractvalue %dx.types.CBufRet.f32 %4990, 1
  %4993 = extractvalue %dx.types.CBufRet.f32 %4990, 2
  %4994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4995 = extractvalue %dx.types.CBufRet.f32 %4994, 0
  %4996 = extractvalue %dx.types.CBufRet.f32 %4994, 1
  %4997 = call float @dx.op.dot3.f32(i32 55, float %4991, float %4992, float %4993, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4998 = select i1 %161, float %4995, float %4991
  %4999 = select i1 %161, float %4997, float %4992
  %5000 = select i1 %161, float %4996, float %4993
  %5001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.f32 %5001, 1
  %5003 = fcmp fast une float %5002, 0.000000e+00
  br i1 %5003, label %5004, label %5021

; <label>:5004                                    ; preds = %4986
  %5005 = fptoui float %62 to i32
  %5006 = fptoui float %63 to i32
  %5007 = lshr i32 %5005, 4
  %5008 = lshr i32 %5006, 4
  %5009 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5010 = extractvalue %dx.types.CBufRet.f32 %5009, 0
  %5011 = fptoui float %5010 to i32
  %5012 = add i32 %5011, 15
  %5013 = lshr i32 %5012, 4
  %5014 = mul i32 %5013, %5008
  %5015 = add i32 %5014, %5007
  %5016 = shl i32 %5015, 3
  %5017 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5016, i32 undef)  ; BufferLoad(srv,index,wot)
  %5018 = extractvalue %dx.types.ResRet.i32 %5017, 0
  %5019 = and i32 %5018, -268435456
  %5020 = icmp eq i32 %5019, -1342177280
  br i1 %5020, label %5031, label %5021

; <label>:5021                                    ; preds = %5004, %4986
  %5022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5023 = extractvalue %dx.types.CBufRet.f32 %5022, 2
  %5024 = extractvalue %dx.types.CBufRet.f32 %5022, 3
  %5025 = fmul fast float %5023, %62
  %5026 = fmul fast float %5024, %63
  %5027 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %32, float %5025, float %5026, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5028 = extractvalue %dx.types.ResRet.f32 %5027, 0
  %5029 = extractvalue %dx.types.ResRet.f32 %5027, 1
  %5030 = extractvalue %dx.types.ResRet.f32 %5027, 2
  br label %5031

; <label>:5031                                    ; preds = %5021, %5004
  %5032 = phi float [ %5028, %5021 ], [ 0.000000e+00, %5004 ]
  %5033 = phi float [ %5029, %5021 ], [ 0.000000e+00, %5004 ]
  %5034 = phi float [ %5030, %5021 ], [ 0.000000e+00, %5004 ]
  %5035 = call float @dx.op.binary.f32(i32 36, float %5033, float %5034)  ; FMin(a,b)
  %5036 = call float @dx.op.binary.f32(i32 36, float %5032, float %5035)  ; FMin(a,b)
  %5037 = fcmp fast ogt float %5036, 0.000000e+00
  br i1 %5037, label %5038, label %5144, !dx.controlflow.hints !73

; <label>:5038                                    ; preds = %5031
  %5039 = fmul fast float %5032, %4998
  %5040 = fmul fast float %5033, %4999
  %5041 = fmul fast float %5034, %5000
  %5042 = fsub fast float %4987, %4058
  %5043 = fsub fast float %4988, %4057
  %5044 = fsub fast float %4989, %4056
  %5045 = call float @dx.op.dot3.f32(i32 55, float %5042, float %5043, float %5044, float %5042, float %5043, float %5044)  ; Dot3(ax,ay,az,bx,by,bz)
  %5046 = call float @dx.op.unary.f32(i32 25, float %5045)  ; Rsqrt(value)
  %5047 = fmul fast float %5046, %5042
  %5048 = fmul fast float %5046, %5043
  %5049 = fmul fast float %5046, %5044
  %5050 = call float @dx.op.dot3.f32(i32 55, float %4987, float %4988, float %4989, float %4062, float %4063, float %4064)  ; Dot3(ax,ay,az,bx,by,bz)
  %5051 = call float @dx.op.dot3.f32(i32 55, float %4055, float %4054, float %4053, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5052 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5053 = fmul fast float %5052, %5052
  %5054 = fmul fast float %5053, %4085
  %5055 = call float @dx.op.unary.f32(i32 7, float %5054)  ; Saturate(value)
  %5056 = fmul fast float %5055, %5052
  %5057 = call float @dx.op.dot3.f32(i32 55, float %4062, float %4063, float %4064, float %5047, float %5048, float %5049)  ; Dot3(ax,ay,az,bx,by,bz)
  %5058 = fmul fast float %5057, %5057
  %5059 = call float @dx.op.unary.f32(i32 6, float %5050)  ; FAbs(value)
  %5060 = fsub fast float 1.000000e+00, %4068
  %5061 = call float @dx.op.binary.f32(i32 35, float %5060, float 0x3F847AE140000000)  ; FMax(a,b)
  %5062 = fmul fast float %5061, %5061
  %5063 = fmul fast float %5062, %5062
  %5064 = fsub fast float 1.000000e+00, %5063
  %5065 = fmul fast float %4072, %4072
  %5066 = fmul fast float %5065, %5064
  %5067 = fadd fast float %5066, %5063
  %5068 = bitcast float %5067 to i32
  %5069 = ashr i32 %5068, 1
  %5070 = add nsw i32 %5069, 532487669
  %5071 = bitcast i32 %5070 to float
  %5072 = fadd fast float %5071, %4072
  %5073 = fmul fast float %5063, %5058
  %5074 = fsub fast float 1.000000e+00, %5058
  %5075 = fadd fast float %5074, %5073
  %5076 = fmul fast float %5059, %5059
  %5077 = fmul fast float %5076, %5064
  %5078 = fadd fast float %5077, %5063
  %5079 = bitcast float %5078 to i32
  %5080 = ashr i32 %5079, 1
  %5081 = add nsw i32 %5080, 532487669
  %5082 = bitcast i32 %5081 to float
  %5083 = fadd fast float %5082, %5059
  %5084 = fmul fast float %5075, %5075
  %5085 = fmul fast float %5084, %5072
  %5086 = fmul fast float %5085, %5083
  %5087 = fdiv fast float 0x3FF0A00000000000, %5086
  %5088 = fmul fast float %5087, %5063
  %5089 = call float @dx.op.unary.f32(i32 6, float %5051)  ; FAbs(value)
  %5090 = fsub fast float 1.000000e+00, %5089
  %5091 = bitcast float %5090 to i32
  %5092 = sitofp i32 %5091 to float
  %5093 = fmul fast float %5092, 5.000000e+00
  %5094 = fadd fast float %5093, 0xC1EFBF8940000000
  %5095 = fptosi float %5094 to i32
  %5096 = bitcast i32 %5095 to float
  %5097 = fsub fast float 1.000000e+00, %4065
  %5098 = fsub fast float 1.000000e+00, %4066
  %5099 = fsub fast float 1.000000e+00, %4070
  %5100 = fmul fast float %5096, %5097
  %5101 = fmul fast float %5096, %5098
  %5102 = fmul fast float %5096, %5099
  %5103 = fadd fast float %5100, %4065
  %5104 = fadd fast float %5101, %4066
  %5105 = fadd fast float %5102, %4070
  %5106 = fmul fast float %5050, 9.843750e-01
  %5107 = fadd fast float %5106, 7.812500e-03
  %5108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5107, float %4955, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5109 = extractvalue %dx.types.ResRet.f32 %5108, 2
  %5110 = extractvalue %dx.types.ResRet.f32 %5108, 3
  %5111 = fmul fast float %5109, %4065
  %5112 = fmul fast float %5109, %4066
  %5113 = fmul fast float %5109, %4070
  %5114 = fadd fast float %5111, %5110
  %5115 = fadd fast float %5112, %5110
  %5116 = fadd fast float %5113, %5110
  %5117 = call float @dx.op.binary.f32(i32 35, float %5115, float %5116)  ; FMax(a,b)
  %5118 = call float @dx.op.binary.f32(i32 35, float %5114, float %5117)  ; FMax(a,b)
  %5119 = fsub fast float 1.000000e+00, %5118
  %5120 = fmul fast float %5056, %5039
  %5121 = fmul fast float %5120, %5119
  %5122 = fmul fast float %5056, %5040
  %5123 = fmul fast float %5122, %5119
  %5124 = fmul fast float %5056, %5041
  %5125 = fmul fast float %5124, %5119
  %5126 = fmul fast float %5120, %5088
  %5127 = fmul fast float %5126, %5103
  %5128 = fmul fast float %5122, %5088
  %5129 = fmul fast float %5128, %5104
  %5130 = fmul fast float %5124, %5088
  %5131 = fmul fast float %5130, %5105
  %5132 = fadd fast float %5121, %4968
  %5133 = fmul fast float %5132, %866
  %5134 = fadd fast float %5123, %4969
  %5135 = fmul fast float %5134, %866
  %5136 = fadd fast float %5125, %4970
  %5137 = fmul fast float %5136, %866
  %5138 = fadd fast float %5127, %4977
  %5139 = fmul fast float %5138, %866
  %5140 = fadd fast float %5129, %4979
  %5141 = fmul fast float %5140, %866
  %5142 = fadd fast float %5131, %4981
  %5143 = fmul fast float %5142, %866
  br label %5144

; <label>:5144                                    ; preds = %5038, %5031, %4865
  %5145 = phi float [ %4978, %4865 ], [ %4978, %5031 ], [ %5139, %5038 ]
  %5146 = phi float [ %4980, %4865 ], [ %4980, %5031 ], [ %5141, %5038 ]
  %5147 = phi float [ %4982, %4865 ], [ %4982, %5031 ], [ %5143, %5038 ]
  %5148 = phi float [ %4974, %4865 ], [ %4974, %5031 ], [ %5133, %5038 ]
  %5149 = phi float [ %4975, %4865 ], [ %4975, %5031 ], [ %5135, %5038 ]
  %5150 = phi float [ %4976, %4865 ], [ %4976, %5031 ], [ %5137, %5038 ]
  %5151 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5152 = extractvalue %dx.types.CBufRet.i32 %5151, 0
  %5153 = icmp eq i32 %5152, 0
  br i1 %5153, label %5519, label %5154

; <label>:5154                                    ; preds = %5144
  %5155 = fptoui float %62 to i32
  %5156 = fptoui float %63 to i32
  %5157 = lshr i32 %5155, 4
  %5158 = lshr i32 %5156, 4
  %5159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.i32 %5159, 0
  %5161 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5158, i32 %5160, i32 %5157)  ; UMad(a,b,c)
  %5162 = add nsw i32 %5152, -1
  %5163 = call i32 @dx.op.binary.i32(i32 37, i32 %5162, i32 0)  ; IMax(a,b)
  %5164 = call float @dx.op.binary.f32(i32 35, float %57, float 0.000000e+00)  ; FMax(a,b)
  %5165 = fptoui float %5164 to i32
  %5166 = lshr i32 %5165, 5
  %5167 = call i32 @dx.op.binary.i32(i32 40, i32 %5166, i32 8191)  ; UMin(a,b)
  %5168 = shl i32 %5167, 2
  %5169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5168, i32 undef)  ; BufferLoad(srv,index,wot)
  %5170 = extractvalue %dx.types.ResRet.i32 %5169, 0
  %5171 = lshr i32 %5170, 16
  %5172 = and i32 %5170, 65535
  %5173 = lshr i32 %5170, 21
  %5174 = lshr i32 %5172, 5
  %5175 = call i32 @dx.op.binary.i32(i32 40, i32 %5174, i32 %5163)  ; UMin(a,b)
  %5176 = icmp ugt i32 %5173, %5175
  br i1 %5176, label %5519, label %5177

; <label>:5177                                    ; preds = %5154
  br label %5178

; <label>:5178                                    ; preds = %5509, %5177
  %5179 = phi i32 [ %5516, %5509 ], [ %5173, %5177 ]
  %5180 = phi float [ %5510, %5509 ], [ %5145, %5177 ]
  %5181 = phi float [ %5511, %5509 ], [ %5146, %5177 ]
  %5182 = phi float [ %5512, %5509 ], [ %5147, %5177 ]
  %5183 = phi float [ %5513, %5509 ], [ %5148, %5177 ]
  %5184 = phi float [ %5514, %5509 ], [ %5149, %5177 ]
  %5185 = phi float [ %5515, %5509 ], [ %5150, %5177 ]
  %5186 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5187 = extractvalue %dx.types.CBufRet.i32 %5186, 0
  %5188 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5161, i32 %5187, i32 %5179)  ; UMad(a,b,c)
  %5189 = shl i32 %5188, 2
  %5190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5189, i32 undef)  ; BufferLoad(srv,index,wot)
  %5191 = extractvalue %dx.types.ResRet.i32 %5190, 0
  %5192 = shl i32 %5179, 5
  %5193 = sub nsw i32 %5171, %5192
  %5194 = call i32 @dx.op.binary.i32(i32 37, i32 %5193, i32 0)  ; IMax(a,b)
  %5195 = call i32 @dx.op.binary.i32(i32 38, i32 %5194, i32 31)  ; IMin(a,b)
  %5196 = sub nsw i32 1, %5171
  %5197 = add nsw i32 %5196, %5172
  %5198 = call i32 @dx.op.binary.i32(i32 37, i32 %5197, i32 0)  ; IMax(a,b)
  %5199 = call i32 @dx.op.binary.i32(i32 38, i32 %5198, i32 32)  ; IMin(a,b)
  %5200 = and i32 %5199, 31
  %5201 = shl i32 -1, %5200
  %5202 = xor i32 %5201, -1
  %5203 = and i32 %5195, 31
  %5204 = shl i32 %5202, %5203
  %5205 = icmp eq i32 %5199, 32
  %5206 = select i1 %5205, i32 -1, i32 %5204
  %5207 = and i32 %5206, %5191
  %5208 = icmp eq i32 %5207, 0
  br i1 %5208, label %5509, label %5209

; <label>:5209                                    ; preds = %5178
  br label %5210

; <label>:5210                                    ; preds = %5290, %5209
  %5211 = phi i32 [ %5222, %5290 ], [ %5207, %5209 ]
  %5212 = phi float [ %5291, %5290 ], [ %5180, %5209 ]
  %5213 = phi float [ %5292, %5290 ], [ %5181, %5209 ]
  %5214 = phi float [ %5293, %5290 ], [ %5182, %5209 ]
  %5215 = phi float [ %5294, %5290 ], [ %5183, %5209 ]
  %5216 = phi float [ %5295, %5290 ], [ %5184, %5209 ]
  %5217 = phi float [ %5296, %5290 ], [ %5185, %5209 ]
  %5218 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5211)  ; FirstbitLo(value)
  %5219 = add i32 %5218, %5192
  %5220 = and i32 %5218, 31
  %5221 = shl i32 1, %5220
  %5222 = xor i32 %5221, %5211
  %5223 = mul i32 %5219, 112
  %5224 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5223, i32 undef)  ; BufferLoad(srv,index,wot)
  %5225 = extractvalue %dx.types.ResRet.f32 %5224, 0
  %5226 = extractvalue %dx.types.ResRet.f32 %5224, 1
  %5227 = extractvalue %dx.types.ResRet.f32 %5224, 2
  %5228 = or i32 %5223, 12
  %5229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5228, i32 undef)  ; BufferLoad(srv,index,wot)
  %5230 = extractvalue %dx.types.ResRet.f32 %5229, 0
  %5231 = add i32 %5223, 44
  %5232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5231, i32 undef)  ; BufferLoad(srv,index,wot)
  %5233 = extractvalue %dx.types.ResRet.f32 %5232, 0
  %5234 = add i32 %5223, 48
  %5235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5234, i32 undef)  ; BufferLoad(srv,index,wot)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = extractvalue %dx.types.ResRet.f32 %5235, 1
  %5238 = extractvalue %dx.types.ResRet.f32 %5235, 2
  %5239 = add i32 %5223, 80
  %5240 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5239, i32 undef)  ; BufferLoad(srv,index,wot)
  %5241 = extractvalue %dx.types.ResRet.f32 %5240, 1
  %5242 = extractvalue %dx.types.ResRet.f32 %5240, 2
  %5243 = call float @dx.op.dot3.f32(i32 55, float %5225, float %5226, float %5227, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = select i1 %161, float %5241, float %5225
  %5245 = select i1 %161, float %5243, float %5226
  %5246 = select i1 %161, float %5242, float %5227
  %5247 = fsub fast float %5236, %117
  %5248 = fsub fast float %5237, %118
  %5249 = fsub fast float %5238, %119
  %5250 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5248, float %5249, float %5247, float %5248, float %5249)  ; Dot3(ax,ay,az,bx,by,bz)
  %5251 = call float @dx.op.unary.f32(i32 24, float %5250)  ; Sqrt(value)
  %5252 = fdiv fast float 1.000000e+00, %5251
  %5253 = fmul fast float %5252, %5247
  %5254 = fmul fast float %5252, %5248
  %5255 = fmul fast float %5252, %5249
  %5256 = fadd fast float %5251, %5230
  %5257 = fdiv fast float 1.000000e+00, %5256
  %5258 = fmul float %5233, %5257
  %5259 = fmul float %5258, %5258
  %5260 = call float @dx.op.unary.f32(i32 7, float %5259)  ; Saturate(value)
  %5261 = and i32 %5221, %5207
  %5262 = icmp eq i32 %5261, 0
  br i1 %5262, label %5285, label %5263, !dx.controlflow.hints !74

; <label>:5263                                    ; preds = %5210
  %5264 = lshr i32 %5155, 5
  %5265 = lshr i32 %5156, 5
  %5266 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %5264, i32 %5265, i32 %5219, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5267 = extractvalue %dx.types.ResRet.i32 %5266, 0
  %5268 = and i32 %5267, 3
  %5269 = icmp eq i32 %5268, 0
  %5270 = select i1 %5269, float 1.000000e+00, float 0.000000e+00
  %5271 = icmp eq i32 %5268, 3
  br i1 %5271, label %5272, label %5285

; <label>:5272                                    ; preds = %5263
  %5273 = lshr i32 %5267, 10
  %5274 = and i32 %5273, 8160
  %5275 = and i32 %5156, 31
  %5276 = or i32 %5274, %5275
  %5277 = lshr i32 %5267, 1
  %5278 = and i32 %5277, 16352
  %5279 = and i32 %5155, 31
  %5280 = or i32 %5278, %5279
  %5281 = lshr i32 %5267, 23
  %5282 = and i32 %5281, 255
  %5283 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %5280, i32 %5276, i32 %5282, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5284 = extractvalue %dx.types.ResRet.f32 %5283, 0
  br label %5285

; <label>:5285                                    ; preds = %5272, %5263, %5210
  %5286 = phi float [ %5284, %5272 ], [ %5270, %5263 ], [ 0.000000e+00, %5210 ]
  %5287 = call float @dx.op.binary.f32(i32 36, float %5286, float %5286)  ; FMin(a,b)
  %5288 = call float @dx.op.binary.f32(i32 36, float %5286, float %5287)  ; FMin(a,b)
  %5289 = fcmp fast ogt float %5288, 0.000000e+00
  br i1 %5289, label %5298, label %5290, !dx.controlflow.hints !75

; <label>:5290                                    ; preds = %5359, %5285
  %5291 = phi float [ %5212, %5285 ], [ %5505, %5359 ]
  %5292 = phi float [ %5213, %5285 ], [ %5506, %5359 ]
  %5293 = phi float [ %5214, %5285 ], [ %5507, %5359 ]
  %5294 = phi float [ %5215, %5285 ], [ %5496, %5359 ]
  %5295 = phi float [ %5216, %5285 ], [ %5497, %5359 ]
  %5296 = phi float [ %5217, %5285 ], [ %5498, %5359 ]
  %5297 = icmp eq i32 %5211, %5221
  br i1 %5297, label %5508, label %5210

; <label>:5298                                    ; preds = %5285
  %5299 = fmul fast float %5286, %5244
  %5300 = fmul fast float %5286, %5245
  %5301 = fmul fast float %5286, %5246
  %5302 = fsub fast float %5238, %3858
  %5303 = fcmp fast ogt float %5302, 0.000000e+00
  %5304 = fsub fast float %119, %3858
  %5305 = fcmp fast ogt float %5304, 0.000000e+00
  %5306 = xor i1 %5305, %5303
  %5307 = fsub fast float %3858, %5238
  %5308 = fmul fast float %5307, 2.000000e+00
  %5309 = fadd fast float %5308, %5238
  %5310 = select i1 %5306, float %5238, float %5309
  %5311 = fsub fast float %5310, %119
  %5312 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5248, float %5311, float %5247, float %5248, float %5311)  ; Dot3(ax,ay,az,bx,by,bz)
  %5313 = call float @dx.op.unary.f32(i32 25, float %5312)  ; Rsqrt(value)
  %5314 = fmul fast float %5313, %5247
  %5315 = fmul fast float %5313, %5248
  %5316 = fmul fast float %5313, %5311
  %5317 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3866)  ; Dot3(ax,ay,az,bx,by,bz)
  %5318 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5314, float %5315, float %5316)  ; Dot3(ax,ay,az,bx,by,bz)
  %5319 = fdiv fast float 1.000000e+00, %5318
  %5320 = fmul fast float %5319, %5317
  %5321 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5304, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = fcmp fast ogt float %5321, 0.000000e+00
  %5323 = fcmp fast olt float %5321, 0.000000e+00
  %5324 = zext i1 %5322 to i32
  %5325 = zext i1 %5323 to i32
  %5326 = sub nsw i32 %5324, %5325
  %5327 = sitofp i32 %5326 to float
  %5328 = fsub fast float %5310, %3858
  %5329 = call float @dx.op.dot3.f32(i32 55, float %5247, float %5248, float %5328, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5330 = fcmp fast ogt float %5329, 0.000000e+00
  %5331 = fcmp fast olt float %5329, 0.000000e+00
  %5332 = zext i1 %5330 to i32
  %5333 = zext i1 %5331 to i32
  %5334 = sub nsw i32 %5332, %5333
  %5335 = sitofp i32 %5334 to float
  %5336 = fcmp fast une float %5327, %5335
  br i1 %5336, label %5337, label %5347

; <label>:5337                                    ; preds = %5298
  %5338 = fmul fast float %5320, %5316
  %5339 = fmul fast float %5320, %5315
  %5340 = fmul fast float %5320, %5314
  %5341 = fmul fast float %5340, %5340
  %5342 = fmul fast float %5339, %5339
  %5343 = fadd fast float %5341, %5342
  %5344 = fmul fast float %5338, %5338
  %5345 = fadd fast float %5343, %5344
  %5346 = call float @dx.op.unary.f32(i32 24, float %5345)  ; Sqrt(value)
  br label %5359

; <label>:5347                                    ; preds = %5298
  %5348 = icmp slt i32 %5326, 0
  br i1 %5348, label %5349, label %5359

; <label>:5349                                    ; preds = %5347
  %5350 = fsub fast float %117, %5236
  %5351 = fsub fast float %118, %5237
  %5352 = fsub fast float %119, %5310
  %5353 = fmul fast float %5350, %5350
  %5354 = fmul fast float %5351, %5351
  %5355 = fadd fast float %5353, %5354
  %5356 = fmul fast float %5352, %5352
  %5357 = fadd fast float %5355, %5356
  %5358 = call float @dx.op.unary.f32(i32 24, float %5357)  ; Sqrt(value)
  br label %5359

; <label>:5359                                    ; preds = %5349, %5347, %5337
  %5360 = phi float [ %5346, %5337 ], [ %5358, %5349 ], [ 0.000000e+00, %5347 ]
  %5361 = and i1 %5305, %5303
  %5362 = fsub fast float -0.000000e+00, %5360
  %5363 = select i1 %5361, float -0.000000e+00, float %5362
  %5364 = fmul fast float %3859, 0x3FF7154760000000
  %5365 = fmul fast float %5364, %5363
  %5366 = fmul fast float %3860, 0x3FF7154760000000
  %5367 = fmul fast float %5366, %5363
  %5368 = fmul fast float %3861, 0x3FF7154760000000
  %5369 = fmul fast float %5368, %5363
  %5370 = call float @dx.op.unary.f32(i32 21, float %5365)  ; Exp(value)
  %5371 = call float @dx.op.unary.f32(i32 21, float %5367)  ; Exp(value)
  %5372 = call float @dx.op.unary.f32(i32 21, float %5369)  ; Exp(value)
  %5373 = call float @dx.op.unary.f32(i32 7, float %5370)  ; Saturate(value)
  %5374 = call float @dx.op.unary.f32(i32 7, float %5371)  ; Saturate(value)
  %5375 = call float @dx.op.unary.f32(i32 7, float %5372)  ; Saturate(value)
  %5376 = fmul fast float %5299, %5373
  %5377 = fmul fast float %5300, %5374
  %5378 = fmul fast float %5301, %5375
  %5379 = fsub fast float %5253, %4058
  %5380 = fsub fast float %5254, %4057
  %5381 = fsub fast float %5255, %4056
  %5382 = call float @dx.op.dot3.f32(i32 55, float %5379, float %5380, float %5381, float %5379, float %5380, float %5381)  ; Dot3(ax,ay,az,bx,by,bz)
  %5383 = call float @dx.op.unary.f32(i32 25, float %5382)  ; Rsqrt(value)
  %5384 = fmul fast float %5383, %5379
  %5385 = fmul fast float %5383, %5380
  %5386 = fmul fast float %5383, %5381
  %5387 = call float @dx.op.dot3.f32(i32 55, float %5253, float %5254, float %5255, float %4062, float %4063, float %4064)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = call float @dx.op.dot3.f32(i32 55, float %4055, float %4054, float %4053, float %5384, float %5385, float %5386)  ; Dot3(ax,ay,az,bx,by,bz)
  %5389 = call float @dx.op.unary.f32(i32 7, float %5387)  ; Saturate(value)
  %5390 = fmul fast float %5389, %5260
  %5391 = fmul fast float %5389, %5389
  %5392 = fmul fast float %5391, %4085
  %5393 = call float @dx.op.unary.f32(i32 7, float %5392)  ; Saturate(value)
  %5394 = fmul fast float %5390, %5393
  %5395 = bitcast float %5250 to i32
  %5396 = ashr i32 %5395, 1
  %5397 = sub nsw i32 1597463007, %5396
  %5398 = bitcast i32 %5397 to float
  %5399 = fmul fast float %5398, %5247
  %5400 = fmul fast float %5398, %5248
  %5401 = fmul fast float %5398, %5249
  %5402 = fsub fast float %5399, %4058
  %5403 = fsub fast float %5400, %4057
  %5404 = fsub fast float %5401, %4056
  %5405 = call float @dx.op.dot3.f32(i32 55, float %5402, float %5403, float %5404, float %5402, float %5403, float %5404)  ; Dot3(ax,ay,az,bx,by,bz)
  %5406 = call float @dx.op.unary.f32(i32 25, float %5405)  ; Rsqrt(value)
  %5407 = fmul fast float %5402, %5406
  %5408 = fmul fast float %5403, %5406
  %5409 = fmul fast float %5404, %5406
  %5410 = call float @dx.op.dot3.f32(i32 55, float %4062, float %4063, float %4064, float %5407, float %5408, float %5409)  ; Dot3(ax,ay,az,bx,by,bz)
  %5411 = fmul fast float %5410, %5410
  %5412 = call float @dx.op.unary.f32(i32 6, float %5387)  ; FAbs(value)
  %5413 = fsub fast float 1.000000e+00, %4068
  %5414 = call float @dx.op.binary.f32(i32 35, float %5413, float 0x3F847AE140000000)  ; FMax(a,b)
  %5415 = fmul fast float %5414, %5414
  %5416 = fmul fast float %5415, %5415
  %5417 = fsub fast float 1.000000e+00, %5416
  %5418 = fmul fast float %4072, %4072
  %5419 = fmul fast float %5418, %5417
  %5420 = fadd fast float %5419, %5416
  %5421 = bitcast float %5420 to i32
  %5422 = ashr i32 %5421, 1
  %5423 = add nsw i32 %5422, 532487669
  %5424 = bitcast i32 %5423 to float
  %5425 = fadd fast float %5424, %4072
  %5426 = fmul fast float %5416, %5411
  %5427 = fsub fast float 1.000000e+00, %5411
  %5428 = fadd fast float %5427, %5426
  %5429 = fmul fast float %5412, %5412
  %5430 = fmul fast float %5429, %5417
  %5431 = fadd fast float %5430, %5416
  %5432 = bitcast float %5431 to i32
  %5433 = ashr i32 %5432, 1
  %5434 = add nsw i32 %5433, 532487669
  %5435 = bitcast i32 %5434 to float
  %5436 = fadd fast float %5435, %5412
  %5437 = fmul fast float %5428, %5428
  %5438 = fmul fast float %5437, %5425
  %5439 = fmul fast float %5438, %5436
  %5440 = fdiv fast float 1.000000e+00, %5439
  %5441 = bitcast float %5416 to i32
  %5442 = sitofp i32 %5441 to float
  %5443 = fmul fast float %5442, 0x3FE7F73180000000
  %5444 = fadd fast float %5443, 0x41AFE27C40000000
  %5445 = fptosi float %5444 to i32
  %5446 = bitcast i32 %5445 to float
  %5447 = fmul fast float %5233, 0x3FD80E9D60000000
  %5448 = fmul fast float %5447, %5398
  %5449 = fadd fast float %5446, %5448
  %5450 = bitcast float %5449 to i32
  %5451 = sub nsw i32 2129859010, %5450
  %5452 = bitcast i32 %5451 to float
  %5453 = fmul fast float %5416, %5440
  %5454 = fmul fast float %5453, %5446
  %5455 = fmul fast float %5454, %5452
  %5456 = call float @dx.op.unary.f32(i32 6, float %5388)  ; FAbs(value)
  %5457 = fsub fast float 1.000000e+00, %5456
  %5458 = bitcast float %5457 to i32
  %5459 = sitofp i32 %5458 to float
  %5460 = fmul fast float %5459, 5.000000e+00
  %5461 = fadd fast float %5460, 0xC1EFBF8940000000
  %5462 = fptosi float %5461 to i32
  %5463 = bitcast i32 %5462 to float
  %5464 = fsub fast float 1.000000e+00, %4065
  %5465 = fsub fast float 1.000000e+00, %4066
  %5466 = fsub fast float 1.000000e+00, %4070
  %5467 = fmul fast float %5463, %5464
  %5468 = fmul fast float %5463, %5465
  %5469 = fmul fast float %5463, %5466
  %5470 = fadd fast float %5467, %4065
  %5471 = fadd fast float %5468, %4066
  %5472 = fadd fast float %5469, %4070
  %5473 = fmul fast float %5387, 9.843750e-01
  %5474 = fadd fast float %5473, 7.812500e-03
  %5475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5474, float %4955, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5476 = extractvalue %dx.types.ResRet.f32 %5475, 2
  %5477 = extractvalue %dx.types.ResRet.f32 %5475, 3
  %5478 = fmul fast float %5476, %4065
  %5479 = fmul fast float %5476, %4066
  %5480 = fmul fast float %5476, %4070
  %5481 = fadd fast float %5478, %5477
  %5482 = fadd fast float %5479, %5477
  %5483 = fadd fast float %5480, %5477
  %5484 = call float @dx.op.binary.f32(i32 35, float %5482, float %5483)  ; FMax(a,b)
  %5485 = call float @dx.op.binary.f32(i32 35, float %5481, float %5484)  ; FMax(a,b)
  %5486 = fsub fast float 1.000000e+00, %5485
  %5487 = fmul fast float %5376, %866
  %5488 = fmul fast float %5487, %5394
  %5489 = fmul fast float %5488, %5486
  %5490 = fmul fast float %5377, %866
  %5491 = fmul fast float %5490, %5394
  %5492 = fmul fast float %5491, %5486
  %5493 = fmul fast float %5378, %866
  %5494 = fmul fast float %5493, %5394
  %5495 = fmul fast float %5494, %5486
  %5496 = fadd fast float %5489, %5215
  %5497 = fadd fast float %5492, %5216
  %5498 = fadd fast float %5495, %5217
  %5499 = fmul fast float %5488, %5470
  %5500 = fmul fast float %5499, %5455
  %5501 = fmul fast float %5491, %5471
  %5502 = fmul fast float %5501, %5455
  %5503 = fmul fast float %5494, %5472
  %5504 = fmul fast float %5503, %5455
  %5505 = fadd fast float %5500, %5212
  %5506 = fadd fast float %5502, %5213
  %5507 = fadd fast float %5504, %5214
  br label %5290

; <label>:5508                                    ; preds = %5290
  br label %5509

; <label>:5509                                    ; preds = %5508, %5178
  %5510 = phi float [ %5180, %5178 ], [ %5291, %5508 ]
  %5511 = phi float [ %5181, %5178 ], [ %5292, %5508 ]
  %5512 = phi float [ %5182, %5178 ], [ %5293, %5508 ]
  %5513 = phi float [ %5183, %5178 ], [ %5294, %5508 ]
  %5514 = phi float [ %5184, %5178 ], [ %5295, %5508 ]
  %5515 = phi float [ %5185, %5178 ], [ %5296, %5508 ]
  %5516 = add i32 %5179, 1
  %5517 = icmp ugt i32 %5516, %5175
  br i1 %5517, label %5518, label %5178

; <label>:5518                                    ; preds = %5509
  br label %5519

; <label>:5519                                    ; preds = %5518, %5154, %5144
  %5520 = phi float [ %5145, %5144 ], [ %5145, %5154 ], [ %5510, %5518 ]
  %5521 = phi float [ %5146, %5144 ], [ %5146, %5154 ], [ %5511, %5518 ]
  %5522 = phi float [ %5147, %5144 ], [ %5147, %5154 ], [ %5512, %5518 ]
  %5523 = phi float [ %5148, %5144 ], [ %5148, %5154 ], [ %5513, %5518 ]
  %5524 = phi float [ %5149, %5144 ], [ %5149, %5154 ], [ %5514, %5518 ]
  %5525 = phi float [ %5150, %5144 ], [ %5150, %5154 ], [ %5515, %5518 ]
  %5526 = call float @dx.op.unary.f32(i32 24, float %4059)  ; Sqrt(value)
  %5527 = call float @dx.op.unary.f32(i32 24, float %4060)  ; Sqrt(value)
  %5528 = call float @dx.op.unary.f32(i32 24, float %4061)  ; Sqrt(value)
  %5529 = fmul fast float %5526, %5523
  %5530 = fmul fast float %5527, %5524
  %5531 = extractvalue %dx.types.CBufRet.f32 %4687, 0
  br i1 %161, label %5532, label %5553

; <label>:5532                                    ; preds = %5519
  %5533 = fadd fast float %5525, %3433
  %5534 = fmul fast float %5533, %3431
  %5535 = fsub fast float 1.000000e+00, %3431
  %5536 = call float @dx.op.unary.f32(i32 7, float %5535)  ; Saturate(value)
  %5537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5538 = extractvalue %dx.types.CBufRet.f32 %5537, 3
  %5539 = fmul fast float %5538, %5536
  %5540 = fadd fast float %5539, %5534
  %5541 = fsub fast float 1.000000e+00, %4072
  %5542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5543 = extractvalue %dx.types.CBufRet.f32 %5542, 0
  %5544 = fmul fast float %5543, %5541
  %5545 = fsub fast float %5540, %5544
  %5546 = fadd fast float %5530, %5529
  %5547 = fmul fast float %5531, %5546
  %5548 = extractvalue %dx.types.CBufRet.f32 %5537, 1
  %5549 = fsub fast float %5545, %5548
  %5550 = extractvalue %dx.types.CBufRet.f32 %5537, 2
  %5551 = fmul fast float %5549, %5550
  %5552 = call float @dx.op.unary.f32(i32 7, float %5551)  ; Saturate(value)
  br label %5569

; <label>:5553                                    ; preds = %5519
  %5554 = fmul fast float %5528, %5525
  %5555 = fmul fast float %5531, %5529
  %5556 = fmul fast float %5531, %5530
  %5557 = fmul fast float %5554, %5531
  %5558 = add i32 %35, 356
  %5559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5558, i32 undef)  ; BufferLoad(srv,index,wot)
  %5560 = extractvalue %dx.types.ResRet.i32 %5559, 0
  %5561 = and i32 %5560, 32
  %5562 = icmp eq i32 %5561, 0
  br i1 %5562, label %5569, label %5563

; <label>:5563                                    ; preds = %5553
  %5564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5565 = extractvalue %dx.types.CBufRet.f32 %5564, 0
  %5566 = fmul fast float %5565, 0x3FE99999A0000000
  %5567 = fadd fast float %5565, %5555
  %5568 = fadd fast float %5566, %5557
  br label %5569

; <label>:5569                                    ; preds = %5563, %5553, %5532
  %5570 = phi float [ %5547, %5532 ], [ %5567, %5563 ], [ %5555, %5553 ]
  %5571 = phi float [ %5552, %5532 ], [ %5556, %5563 ], [ %5556, %5553 ]
  %5572 = phi float [ 1.000000e+00, %5532 ], [ %5568, %5563 ], [ %5557, %5553 ]
  %5573 = fmul fast float %5531, %5521
  %5574 = fmul fast float %5531, %5522
  %5575 = fadd fast float %5521, %5520
  %5576 = select i1 %161, float %5575, float %5520
  %5577 = fmul float %5576, %5531
  %5578 = select i1 %161, float 0.000000e+00, float %5573
  %5579 = select i1 %161, float 0.000000e+00, float %5574
  %5580 = fmul fast float %5570, %5526
  %5581 = fmul fast float %5571, %5527
  %5582 = fmul fast float %5572, %5528
  %5583 = fadd fast float %5577, %5580
  %5584 = fadd fast float %5578, %5581
  %5585 = fadd fast float %5579, %5582
  %5586 = select i1 %161, float %5571, float %5584
  %5587 = select i1 %161, float %5572, float %5585
  %5588 = call float @dx.op.binary.f32(i32 36, float %5583, float 3.225500e+04)  ; FMin(a,b)
  %5589 = call float @dx.op.binary.f32(i32 36, float %5586, float 3.225500e+04)  ; FMin(a,b)
  %5590 = call float @dx.op.binary.f32(i32 36, float %5587, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5588)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5589)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5590)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!dx.viewIdState = !{!48}
!dx.entryPoints = !{!49}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !39, !42}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !16}
!16 = !{i32 0, i32 5}
!17 = !{i32 9, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!18 = !{i32 10, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !16}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!26 = !{i32 18, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!39 = !{!40, !41}
!40 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!41 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!42 = !{!43, !44, !45, !46, !47}
!43 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!44 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!47 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!48 = !{[34 x i32] [i32 32, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0]}
!49 = !{void ()* @ps_main, !"ps_main", !50, !4, !70}
!50 = !{!51, !68, null}
!51 = !{!52, !55, !57, !59, !61, !63, !64, !65, !67}
!52 = !{i32 0, !"SV_Position", i8 9, i8 3, !53, i8 4, i32 1, i8 4, i32 0, i8 0, !54}
!53 = !{i32 0}
!54 = !{i32 3, i32 11}
!55 = !{i32 1, !"COLOR", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 1, i8 0, !56}
!56 = !{i32 3, i32 14}
!57 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 2, i8 0, !58}
!58 = !{i32 3, i32 3}
!59 = !{i32 3, !"NORMAL", i8 9, i8 0, !53, i8 2, i32 1, i8 3, i32 3, i8 0, !60}
!60 = !{i32 3, i32 7}
!61 = !{i32 4, !"TANGENT", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 4, i8 0, !62}
!62 = !{i32 3, i32 15}
!63 = !{i32 5, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !53, i8 2, i32 1, i8 2, i32 5, i8 0, !58}
!64 = !{i32 6, !"SCEONDARY_NORMAL", i8 9, i8 0, !53, i8 2, i32 1, i8 4, i32 6, i8 0, !62}
!65 = !{i32 7, !"PACKED_TRI_DATA", i8 5, i8 0, !53, i8 1, i32 1, i8 4, i32 7, i8 0, !66}
!66 = !{i32 3, i32 5}
!67 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !53, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!68 = !{!69}
!69 = !{i32 0, !"SV_Target", i8 9, i8 16, !53, i8 0, i32 1, i8 4, i32 0, i8 0, !62}
!70 = !{i32 0, i64 24}
!71 = distinct !{!71, !"dx.controlflow.hints", i32 1}
!72 = distinct !{!72, !"dx.controlflow.hints", i32 1}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}

