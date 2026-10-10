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
; SV_IsFrontFace           0   x           8    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: edea6d5e6bbae07ed01026698a3f4843
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
;   [208 x i8] (type annotation not present)
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
; Number of inputs: 33, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 32 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 32 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 32 }
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
%hostlayout.stable = type { [4 x <4 x float>], [4 x <4 x float>], <4 x float>, <4 x float>, <4 x float>, <4 x float>, <4 x float> }
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
  %35 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %36 = icmp ne i32 %35, 0
  %37 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %38 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %61 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %63 = extractvalue %dx.types.CBufRet.f32 %62, 0
  %64 = fmul fast float %63, %57
  %65 = fmul fast float %63, %58
  %66 = select i1 %36, float 1.000000e+00, float -1.000000e+00
  %67 = call float @dx.op.dot3.f32(i32 55, float %49, float %50, float %51, float %49, float %50, float %51)  ; Dot3(ax,ay,az,bx,by,bz)
  %68 = bitcast float %67 to i32
  %69 = ashr i32 %68, 1
  %70 = sub nsw i32 1597250115, %69
  %71 = bitcast i32 %70 to float
  %72 = fmul fast float %49, %66
  %73 = fmul fast float %72, %71
  %74 = fmul fast float %50, %66
  %75 = fmul fast float %74, %71
  %76 = fmul fast float %51, %66
  %77 = fmul fast float %76, %71
  %78 = fmul fast float %50, %47
  %79 = fmul fast float %51, %46
  %80 = fsub fast float %78, %79
  %81 = fmul fast float %51, %45
  %82 = fmul fast float %49, %47
  %83 = fsub fast float %81, %82
  %84 = fmul fast float %49, %46
  %85 = fmul fast float %50, %45
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %80, %48
  %88 = fmul fast float %83, %48
  %89 = fmul fast float %86, %48
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %91 = extractvalue %dx.types.CBufRet.f32 %90, 2
  %92 = extractvalue %dx.types.CBufRet.f32 %90, 3
  %93 = fmul fast float %64, 2.000000e+00
  %94 = fmul fast float %93, %91
  %95 = fmul fast float %65, 2.000000e+00
  %96 = fmul fast float %95, %92
  %97 = fsub fast float 1.000000e+00, %94
  %98 = fsub fast float 1.000000e+00, %96
  %99 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %100 = extractvalue %dx.types.CBufRet.f32 %99, 0
  %101 = extractvalue %dx.types.CBufRet.f32 %99, 1
  %102 = extractvalue %dx.types.CBufRet.f32 %99, 2
  %103 = fmul fast float %97, %100
  %104 = fmul fast float %97, %101
  %105 = fmul fast float %97, %102
  %106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %107 = extractvalue %dx.types.CBufRet.f32 %106, 0
  %108 = extractvalue %dx.types.CBufRet.f32 %106, 1
  %109 = extractvalue %dx.types.CBufRet.f32 %106, 2
  %110 = fmul fast float %98, %107
  %111 = fmul fast float %98, %108
  %112 = fmul fast float %98, %109
  %113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %114 = extractvalue %dx.types.CBufRet.f32 %113, 0
  %115 = extractvalue %dx.types.CBufRet.f32 %113, 1
  %116 = extractvalue %dx.types.CBufRet.f32 %113, 2
  %117 = fadd fast float %110, %114
  %118 = fadd fast float %117, %103
  %119 = fadd fast float %111, %115
  %120 = fadd fast float %119, %104
  %121 = fadd fast float %112, %116
  %122 = fadd fast float %121, %105
  %123 = fmul fast float %118, %59
  %124 = fmul fast float %120, %59
  %125 = fmul fast float %122, %59
  %126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %127 = extractvalue %dx.types.CBufRet.f32 %126, 2
  %128 = extractvalue %dx.types.CBufRet.f32 %126, 3
  %129 = fmul fast float %127, %64
  %130 = fmul fast float %128, %65
  %131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %132 = extractvalue %dx.types.ResRet.i32 %131, 0
  %133 = and i32 %132, 114688
  %134 = icmp ne i32 %133, 0
  %135 = select i1 %134, float %129, float 0.000000e+00
  %136 = select i1 %134, float %130, float 0.000000e+00
  %137 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %32, float %135, float %136, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %138 = extractvalue %dx.types.ResRet.f32 %137, 0
  %139 = fmul fast float %138, 2.550000e+02
  %140 = fptoui float %139 to i32
  %141 = select i1 %134, i32 %140, i32 0
  %142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %143 = extractvalue %dx.types.CBufRet.i32 %142, 3
  %144 = and i32 %143, 3
  %145 = icmp ne i32 %144, 0
  %146 = and i32 %143, 4
  %147 = icmp ne i32 %146, 0
  %148 = and i1 %145, %147
  br i1 %148, label %149, label %158

; <label>:149                                     ; preds = %0
  %150 = fmul fast float %92, %65
  %151 = fmul fast float %91, %64
  %152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %31, float %151, float %150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %153 = extractvalue %dx.types.ResRet.f32 %152, 0
  %154 = fsub fast float 1.000000e+00, %153
  %155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %156 = extractvalue %dx.types.CBufRet.f32 %155, 0
  %157 = fcmp fast olt float %154, %156
  br label %166

; <label>:158                                     ; preds = %0
  %159 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = extractvalue %dx.types.CBufRet.i32 %159, 3
  %161 = and i32 %160, 3
  %162 = icmp ne i32 %161, 0
  %163 = and i32 %160, 4
  %164 = icmp eq i32 %163, 0
  %165 = and i1 %162, %164
  br label %166

; <label>:166                                     ; preds = %158, %149
  %167 = phi i1 [ %157, %149 ], [ %165, %158 ]
  %168 = add i32 %37, 156
  %169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %168, i32 undef)  ; BufferLoad(srv,index,wot)
  %170 = extractvalue %dx.types.ResRet.i32 %169, 0
  %171 = shl i32 %170, 4
  %172 = and i32 %171, 32752
  %173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %172)  ; LegacyF16ToF32(value)
  %174 = lshr i32 %170, 7
  %175 = and i32 %174, 32752
  %176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %175)  ; LegacyF16ToF32(value)
  %177 = lshr i32 %170, 22
  %178 = shl nuw nsw i32 %177, 5
  %179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %178)  ; LegacyF16ToF32(value)
  %180 = add i32 %37, 216
  %181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %182 = extractvalue %dx.types.ResRet.i32 %181, 0
  %183 = and i32 %182, 255
  %184 = uitofp i32 %183 to float
  %185 = fmul fast float %184, 0x3F70101020000000
  %186 = lshr i32 %182, 8
  %187 = and i32 %186, 255
  %188 = uitofp i32 %187 to float
  %189 = fmul fast float %188, 0x3F70101020000000
  %190 = lshr i32 %182, 16
  %191 = and i32 %190, 255
  %192 = uitofp i32 %191 to float
  %193 = fmul fast float %192, 0x3F70101020000000
  %194 = add i32 %37, 36
  %195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %194, i32 undef)  ; BufferLoad(srv,index,wot)
  %196 = extractvalue %dx.types.ResRet.i32 %195, 0
  %197 = and i32 %196, 65535
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %196, 16
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = add i32 %37, 288
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = and i32 %203, 65535
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %203, 16
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = fmul fast float %205, 0x3F50624DE0000000
  %209 = fmul fast float %207, 0x3F50624DE0000000
  %210 = add i32 %37, 172
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = shl i32 %212, 4
  %214 = and i32 %213, 32752
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = lshr i32 %212, 7
  %217 = and i32 %216, 32752
  %218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %217)  ; LegacyF16ToF32(value)
  %219 = lshr i32 %212, 22
  %220 = shl nuw nsw i32 %219, 5
  %221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %220)  ; LegacyF16ToF32(value)
  %222 = add i32 %37, 232
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = and i32 %224, 255
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F70101020000000
  %228 = lshr i32 %224, 8
  %229 = and i32 %228, 255
  %230 = uitofp i32 %229 to float
  %231 = fmul fast float %230, 0x3F70101020000000
  %232 = lshr i32 %224, 16
  %233 = and i32 %232, 255
  %234 = uitofp i32 %233 to float
  %235 = fmul fast float %234, 0x3F70101020000000
  %236 = add i32 %37, 52
  %237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %236, i32 undef)  ; BufferLoad(srv,index,wot)
  %238 = extractvalue %dx.types.ResRet.i32 %237, 0
  %239 = and i32 %238, 65535
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = lshr i32 %238, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = add i32 %37, 304
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = and i32 %245, 65535
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %245, 16
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = fmul fast float %247, 0x3F50624DE0000000
  %251 = fmul fast float %249, 0x3F50624DE0000000
  %252 = add i32 %37, 188
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = shl i32 %254, 4
  %256 = and i32 %255, 32752
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = lshr i32 %254, 7
  %259 = and i32 %258, 32752
  %260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %259)  ; LegacyF16ToF32(value)
  %261 = lshr i32 %254, 22
  %262 = shl nuw nsw i32 %261, 5
  %263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %262)  ; LegacyF16ToF32(value)
  %264 = add i32 %37, 248
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = lshr i32 %266, 8
  %271 = and i32 %270, 255
  %272 = uitofp i32 %271 to float
  %273 = fmul fast float %272, 0x3F70101020000000
  %274 = lshr i32 %266, 16
  %275 = and i32 %274, 255
  %276 = uitofp i32 %275 to float
  %277 = fmul fast float %276, 0x3F70101020000000
  %278 = add i32 %37, 68
  %279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %278, i32 undef)  ; BufferLoad(srv,index,wot)
  %280 = extractvalue %dx.types.ResRet.i32 %279, 0
  %281 = and i32 %280, 65535
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = lshr i32 %280, 16
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = add i32 %37, 320
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = and i32 %287, 65535
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %287, 16
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = fmul fast float %289, 0x3F50624DE0000000
  %293 = fmul fast float %291, 0x3F50624DE0000000
  %294 = add i32 %37, 204
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = shl i32 %296, 4
  %298 = and i32 %297, 32752
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = lshr i32 %296, 7
  %301 = and i32 %300, 32752
  %302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %301)  ; LegacyF16ToF32(value)
  %303 = lshr i32 %296, 22
  %304 = shl nuw nsw i32 %303, 5
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = add i32 %37, 264
  %307 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %308 = extractvalue %dx.types.ResRet.i32 %307, 0
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = lshr i32 %308, 8
  %313 = and i32 %312, 255
  %314 = uitofp i32 %313 to float
  %315 = fmul fast float %314, 0x3F70101020000000
  %316 = lshr i32 %308, 16
  %317 = and i32 %316, 255
  %318 = uitofp i32 %317 to float
  %319 = fmul fast float %318, 0x3F70101020000000
  %320 = add i32 %37, 84
  %321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %320, i32 undef)  ; BufferLoad(srv,index,wot)
  %322 = extractvalue %dx.types.ResRet.i32 %321, 0
  %323 = and i32 %322, 65535
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = lshr i32 %322, 16
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = add i32 %37, 336
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = and i32 %329, 65535
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %329, 16
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = fmul fast float %331, 0x3F50624DE0000000
  %335 = fmul fast float %333, 0x3F50624DE0000000
  %336 = add i32 %37, 348
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 32
  %340 = icmp eq i32 %339, 0
  %341 = and i32 %338, 64
  %342 = icmp eq i32 %341, 0
  %343 = and i32 %338, 128
  %344 = icmp eq i32 %343, 0
  %345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %346 = extractvalue %dx.types.ResRet.i32 %345, 0
  %347 = and i32 %346, 2
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %362, label %349

; <label>:349                                     ; preds = %166
  %350 = add i32 %37, 488
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = add i32 %352, 0
  %354 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %353, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %355 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %354, %dx.types.Handle %61, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %356 = extractvalue %dx.types.ResRet.f32 %355, 0
  %357 = extractvalue %dx.types.ResRet.f32 %355, 1
  %358 = extractvalue %dx.types.ResRet.f32 %355, 2
  %359 = fmul fast float %356, %54
  %360 = fmul fast float %357, %55
  %361 = fmul fast float %358, %56
  br label %362

; <label>:362                                     ; preds = %349, %166
  %363 = phi float [ %56, %166 ], [ %361, %349 ]
  %364 = phi float [ %55, %166 ], [ %360, %349 ]
  %365 = phi float [ %54, %166 ], [ %359, %349 ]
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 2
  %369 = icmp eq i32 %368, 0
  br i1 %369, label %389, label %370

; <label>:370                                     ; preds = %362
  %371 = add i32 %37, 44
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %371, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = and i32 %373, 1
  %375 = icmp ne i32 %374, 0
  %376 = select i1 %375, float %365, float 1.000000e+00
  %377 = add i32 %37, 60
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 1
  %381 = icmp ne i32 %380, 0
  %382 = select i1 %381, float %364, float 1.000000e+00
  %383 = add i32 %37, 76
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = and i32 %385, 1
  %387 = icmp ne i32 %386, 0
  %388 = select i1 %387, float %363, float 1.000000e+00
  br label %389

; <label>:389                                     ; preds = %370, %362
  %390 = phi float [ %363, %362 ], [ %388, %370 ]
  %391 = phi float [ %364, %362 ], [ %382, %370 ]
  %392 = phi float [ %365, %362 ], [ %376, %370 ]
  %393 = lshr i32 %367, 20
  %394 = and i32 %393, 3
  %395 = add nuw nsw i32 %394, 1
  %396 = add i32 %37, 24
  %397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %398 = extractvalue %dx.types.ResRet.i32 %397, 0
  %399 = add i32 %37, 28
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %399, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = or i32 %401, %398
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %862, label %404

; <label>:404                                     ; preds = %389
  %405 = and i32 %398, 262144
  %406 = icmp ne i32 %405, 0
  %407 = select i1 %406, float %39, float 1.000000e+00
  %408 = select i1 %406, float %40, float 0.000000e+00
  %409 = select i1 %406, float %41, float 0.000000e+00
  %410 = select i1 %406, float %42, float 1.000000e+00
  %411 = select i1 %406, float %43, float %52
  %412 = select i1 %406, float %44, float %53
  %413 = add i32 %37, 284
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = lshr i32 %415, 16
  %417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %416)  ; LegacyF16ToF32(value)
  %418 = fmul fast float %417, 0x3F50624DE0000000
  %419 = add i32 %37, 88
  %420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %419, i32 undef)  ; BufferLoad(srv,index,wot)
  %421 = extractvalue %dx.types.ResRet.i32 %420, 0
  %422 = lshr i32 %421, 16
  %423 = and i32 %422, 255
  %424 = lshr i32 %421, 24
  %425 = add i32 %37, 292
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = and i32 %427, 65535
  %429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %428)  ; LegacyF16ToF32(value)
  %430 = lshr i32 %427, 16
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = add i32 %37, 32
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = lshr i32 %434, 22
  %436 = shl nuw nsw i32 %435, 5
  %437 = call float @dx.op.legacyF16ToF32(i32 131, i32 %436)  ; LegacyF16ToF32(value)
  %438 = shl i32 %434, 4
  %439 = and i32 %438, 32752
  %440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %439)  ; LegacyF16ToF32(value)
  %441 = lshr i32 %434, 7
  %442 = and i32 %441, 32752
  %443 = call float @dx.op.legacyF16ToF32(i32 131, i32 %442)  ; LegacyF16ToF32(value)
  %444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %445 = extractvalue %dx.types.CBufRet.f32 %444, 3
  %446 = fmul fast float %445, 1.000000e+03
  %447 = fmul fast float %208, %446
  %448 = call float @dx.op.unary.f32(i32 22, float %447)  ; Frc(value)
  %449 = fadd fast float %448, %198
  %450 = fmul fast float %209, %446
  %451 = call float @dx.op.unary.f32(i32 22, float %450)  ; Frc(value)
  %452 = fadd fast float %451, %200
  %453 = fmul fast float %418, %446
  %454 = call float @dx.op.unary.f32(i32 22, float %453)  ; Frc(value)
  %455 = fmul fast float %454, 0x401921FB60000000
  %456 = fadd fast float %455, %437
  %457 = call float @dx.op.unary.f32(i32 13, float %456)  ; Sin(value)
  %458 = call float @dx.op.unary.f32(i32 12, float %456)  ; Cos(value)
  %459 = fsub fast float -0.000000e+00, %457
  %460 = fadd fast float %411, -5.000000e-01
  %461 = fadd fast float %412, -5.000000e-01
  %462 = fmul fast float %429, %460
  %463 = fmul fast float %431, %461
  %464 = fadd fast float %462, 5.000000e-01
  %465 = fadd fast float %463, 5.000000e-01
  %466 = fmul fast float %440, %464
  %467 = fmul fast float %443, %465
  %468 = fmul fast float %458, %466
  %469 = call float @dx.op.tertiary.f32(i32 46, float %459, float %467, float %468)  ; FMad(a,b,c)
  %470 = fmul fast float %457, %466
  %471 = call float @dx.op.tertiary.f32(i32 46, float %458, float %467, float %470)  ; FMad(a,b,c)
  %472 = fadd fast float %449, %469
  %473 = fadd fast float %452, %471
  %474 = icmp ugt i32 %423, 1
  %475 = icmp ugt i32 %421, 33554431
  %476 = or i1 %475, %474
  br i1 %476, label %477, label %502

; <label>:477                                     ; preds = %404
  %478 = add i32 %37, 228
  %479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %478, i32 undef)  ; BufferLoad(srv,index,wot)
  %480 = extractvalue %dx.types.ResRet.i32 %479, 0
  %481 = lshr i32 %480, 16
  %482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %481)  ; LegacyF16ToF32(value)
  %483 = fmul fast float %445, %482
  %484 = call float @dx.op.unary.f32(i32 22, float %483)  ; Frc(value)
  %485 = mul nuw nsw i32 %423, %424
  %486 = uitofp i32 %485 to float
  %487 = fmul fast float %484, %486
  %488 = call float @dx.op.unary.f32(i32 27, float %487)  ; Round_ni(value)
  %489 = fptoui float %488 to i32
  %490 = urem i32 %489, %423
  %491 = udiv i32 %489, %424
  %492 = call float @dx.op.unary.f32(i32 22, float %472)  ; Frc(value)
  %493 = call float @dx.op.unary.f32(i32 22, float %473)  ; Frc(value)
  %494 = uitofp i32 %490 to float
  %495 = uitofp i32 %491 to float
  %496 = fadd fast float %492, %494
  %497 = fadd fast float %493, %495
  %498 = uitofp i32 %423 to float
  %499 = uitofp i32 %424 to float
  %500 = fdiv fast float %496, %498
  %501 = fdiv fast float %497, %499
  br label %502

; <label>:502                                     ; preds = %477, %404
  %503 = phi float [ %500, %477 ], [ %472, %404 ]
  %504 = phi float [ %501, %477 ], [ %473, %404 ]
  %505 = and i32 %398, 16
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %703, label %507

; <label>:507                                     ; preds = %502
  %508 = add i32 %37, 376
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = add i32 %510, 0
  %512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %512, %dx.types.Handle %60, float %503, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %514 = extractvalue %dx.types.ResRet.f32 %513, 0
  %515 = extractvalue %dx.types.ResRet.f32 %513, 1
  %516 = extractvalue %dx.types.ResRet.f32 %513, 2
  %517 = extractvalue %dx.types.ResRet.f32 %513, 3
  %518 = and i32 %421, 255
  %519 = uitofp i32 %518 to float
  %520 = lshr i32 %421, 8
  %521 = and i32 %520, 255
  %522 = uitofp i32 %521 to float
  %523 = fmul fast float %517, %519
  %524 = fadd fast float %523, %522
  %525 = fmul fast float %524, 0x3F70101000000000
  %526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %527 = extractvalue %dx.types.ResRet.i32 %526, 0
  %528 = and i32 %527, 512
  %529 = icmp eq i32 %528, 0
  br i1 %529, label %538, label %530

; <label>:530                                     ; preds = %507
  %531 = add i32 %37, 456
  %532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %531, i32 undef)  ; BufferLoad(srv,index,wot)
  %533 = extractvalue %dx.types.ResRet.i32 %532, 0
  %534 = add i32 %533, 0
  %535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %535, %dx.types.Handle %61, float %503, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %537 = extractvalue %dx.types.ResRet.f32 %536, 0
  br label %538

; <label>:538                                     ; preds = %530, %507
  %539 = phi float [ %537, %530 ], [ 1.000000e+00, %507 ]
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = and i32 %541, 33554432
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %650, label %544

; <label>:544                                     ; preds = %538
  %545 = add i32 %37, 224
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %545, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 65535
  %549 = call float @dx.op.legacyF16ToF32(i32 131, i32 %548)  ; LegacyF16ToF32(value)
  %550 = lshr i32 %547, 16
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = add i32 %37, 228
  %553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %552, i32 undef)  ; BufferLoad(srv,index,wot)
  %554 = extractvalue %dx.types.ResRet.i32 %553, 0
  %555 = and i32 %554, 65535
  %556 = call float @dx.op.legacyF16ToF32(i32 131, i32 %555)  ; LegacyF16ToF32(value)
  %557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %180, i32 undef)  ; BufferLoad(srv,index,wot)
  %558 = extractvalue %dx.types.ResRet.i32 %557, 0
  %559 = lshr i32 %558, 24
  %560 = uitofp i32 %559 to float
  %561 = fmul fast float %560, 0x3F70101020000000
  %562 = and i32 %558, 255
  %563 = uitofp i32 %562 to float
  %564 = fmul fast float %563, 0x3F70101020000000
  %565 = lshr i32 %558, 8
  %566 = and i32 %565, 255
  %567 = uitofp i32 %566 to float
  %568 = fmul fast float %567, 0x3F70101020000000
  %569 = lshr i32 %558, 16
  %570 = and i32 %569, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101020000000
  %573 = add i32 %37, 220
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %573, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = lshr i32 %575, 24
  %577 = uitofp i32 %576 to float
  %578 = fmul fast float %577, 0x3F70101020000000
  %579 = and i32 %575, 255
  %580 = uitofp i32 %579 to float
  %581 = fmul fast float %580, 0x3F70101020000000
  %582 = lshr i32 %575, 8
  %583 = and i32 %582, 255
  %584 = uitofp i32 %583 to float
  %585 = fmul fast float %584, 0x3F70101020000000
  %586 = lshr i32 %575, 16
  %587 = and i32 %586, 255
  %588 = uitofp i32 %587 to float
  %589 = fmul fast float %588, 0x3F70101020000000
  %590 = bitcast float %514 to i32
  %591 = ashr i32 %590, 1
  %592 = sub nsw i32 1597463174, %591
  %593 = bitcast i32 %592 to float
  %594 = fmul fast float %514, 5.000000e-01
  %595 = fmul fast float %593, %593
  %596 = fmul fast float %595, %594
  %597 = fsub fast float 1.500000e+00, %596
  %598 = fmul fast float %593, %514
  %599 = fmul fast float %598, %597
  %600 = bitcast float %515 to i32
  %601 = ashr i32 %600, 1
  %602 = sub nsw i32 1597463174, %601
  %603 = bitcast i32 %602 to float
  %604 = fmul fast float %515, 5.000000e-01
  %605 = fmul fast float %603, %603
  %606 = fmul fast float %605, %604
  %607 = fsub fast float 1.500000e+00, %606
  %608 = fmul fast float %603, %515
  %609 = fmul fast float %608, %607
  %610 = bitcast float %516 to i32
  %611 = ashr i32 %610, 1
  %612 = sub nsw i32 1597463174, %611
  %613 = bitcast i32 %612 to float
  %614 = fmul fast float %516, 5.000000e-01
  %615 = fmul fast float %613, %613
  %616 = fmul fast float %615, %614
  %617 = fsub fast float 1.500000e+00, %616
  %618 = fmul fast float %613, %516
  %619 = fmul fast float %618, %617
  %620 = fsub fast float %599, %581
  %621 = fsub fast float %609, %585
  %622 = fsub fast float %619, %589
  %623 = fmul fast float %620, %549
  %624 = fmul fast float %621, %551
  %625 = fmul fast float %622, %556
  %626 = fadd fast float %623, %564
  %627 = fadd fast float %624, %568
  %628 = fadd fast float %625, %572
  %629 = call float @dx.op.unary.f32(i32 7, float %626)  ; Saturate(value)
  %630 = call float @dx.op.unary.f32(i32 7, float %627)  ; Saturate(value)
  %631 = call float @dx.op.unary.f32(i32 7, float %628)  ; Saturate(value)
  %632 = fmul fast float %629, %629
  %633 = fmul fast float %630, %630
  %634 = fmul fast float %631, %631
  %635 = fsub fast float %632, %514
  %636 = fsub fast float %633, %515
  %637 = fsub fast float %634, %516
  %638 = fmul fast float %635, %539
  %639 = fmul fast float %636, %539
  %640 = fmul fast float %637, %539
  %641 = fadd fast float %638, %514
  %642 = fadd fast float %639, %515
  %643 = fadd fast float %640, %516
  %644 = fadd fast float %561, %525
  %645 = fsub fast float %644, %578
  %646 = call float @dx.op.unary.f32(i32 7, float %645)  ; Saturate(value)
  %647 = fsub fast float %646, %525
  %648 = fmul fast float %647, %539
  %649 = fadd fast float %648, %525
  br label %703

; <label>:650                                     ; preds = %538
  %651 = and i32 %541, 134217728
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %687, label %653

; <label>:653                                     ; preds = %650
  %654 = call float @dx.op.unary.f32(i32 24, float %185)  ; Sqrt(value)
  %655 = call float @dx.op.unary.f32(i32 24, float %189)  ; Sqrt(value)
  %656 = call float @dx.op.unary.f32(i32 24, float %193)  ; Sqrt(value)
  %657 = fadd fast float %654, -5.000000e-01
  %658 = fadd fast float %655, -5.000000e-01
  %659 = fadd fast float %656, -5.000000e-01
  %660 = fmul fast float %657, %539
  %661 = fmul fast float %658, %539
  %662 = fmul fast float %659, %539
  %663 = fadd fast float %660, 5.000000e-01
  %664 = fadd fast float %661, 5.000000e-01
  %665 = fadd fast float %662, 5.000000e-01
  %666 = call float @dx.op.unary.f32(i32 24, float %514)  ; Sqrt(value)
  %667 = call float @dx.op.unary.f32(i32 24, float %515)  ; Sqrt(value)
  %668 = call float @dx.op.unary.f32(i32 24, float %516)  ; Sqrt(value)
  %669 = fmul fast float %663, 2.000000e+00
  %670 = fsub fast float 1.000000e+00, %669
  %671 = fmul fast float %670, %666
  %672 = fadd fast float %671, %669
  %673 = fmul fast float %672, %666
  %674 = fmul fast float %664, 2.000000e+00
  %675 = fsub fast float 1.000000e+00, %674
  %676 = fmul fast float %675, %667
  %677 = fadd fast float %676, %674
  %678 = fmul fast float %677, %667
  %679 = fmul fast float %665, 2.000000e+00
  %680 = fsub fast float 1.000000e+00, %679
  %681 = fmul fast float %680, %668
  %682 = fadd fast float %681, %679
  %683 = fmul fast float %682, %668
  %684 = fmul fast float %673, %673
  %685 = fmul fast float %678, %678
  %686 = fmul fast float %683, %683
  br label %703

; <label>:687                                     ; preds = %650
  %688 = fmul fast float %185, %185
  %689 = fmul fast float %189, %189
  %690 = fmul fast float %193, %193
  %691 = fadd fast float %688, -1.000000e+00
  %692 = fadd fast float %689, -1.000000e+00
  %693 = fadd fast float %690, -1.000000e+00
  %694 = fmul fast float %539, %691
  %695 = fmul fast float %539, %692
  %696 = fmul fast float %539, %693
  %697 = fadd fast float %694, 1.000000e+00
  %698 = fadd fast float %695, 1.000000e+00
  %699 = fadd fast float %696, 1.000000e+00
  %700 = fmul fast float %697, %514
  %701 = fmul fast float %698, %515
  %702 = fmul fast float %699, %516
  br label %703

; <label>:703                                     ; preds = %687, %653, %544, %502
  %704 = phi float [ %649, %544 ], [ %525, %653 ], [ %525, %687 ], [ 0x3FA23C0BE0000000, %502 ]
  %705 = phi float [ %641, %544 ], [ %684, %653 ], [ %700, %687 ], [ 1.000000e+00, %502 ]
  %706 = phi float [ %642, %544 ], [ %685, %653 ], [ %701, %687 ], [ 1.000000e+00, %502 ]
  %707 = phi float [ %643, %544 ], [ %686, %653 ], [ %702, %687 ], [ 1.000000e+00, %502 ]
  %708 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %709 = extractvalue %dx.types.CBufRet.i32 %708, 1
  %710 = and i32 %709, 1
  %711 = icmp ne i32 %710, 0
  %712 = add i32 %37, 356
  %713 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %712, i32 undef)  ; BufferLoad(srv,index,wot)
  %714 = extractvalue %dx.types.ResRet.i32 %713, 0
  %715 = and i32 %714, 32
  %716 = icmp ne i32 %715, 0
  %717 = and i1 %711, %716
  %718 = select i1 %717, float 1.000000e+00, float %705
  %719 = select i1 %717, float 0x3FD3333340000000, float %706
  %720 = select i1 %717, float 0x3FD3333340000000, float %707
  %721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %722 = extractvalue %dx.types.ResRet.i32 %721, 0
  %723 = and i32 %722, 32
  %724 = icmp eq i32 %723, 0
  br i1 %724, label %797, label %725

; <label>:725                                     ; preds = %703
  %726 = add i32 %37, 92
  %727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %726, i32 undef)  ; BufferLoad(srv,index,wot)
  %728 = extractvalue %dx.types.ResRet.i32 %727, 0
  %729 = add i32 %37, 392
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %729, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = add i32 %731, 0
  %733 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %732, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %734 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %733, %dx.types.Handle %60, float %503, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %735 = extractvalue %dx.types.ResRet.f32 %734, 0
  %736 = extractvalue %dx.types.ResRet.f32 %734, 1
  %737 = extractvalue %dx.types.ResRet.f32 %734, 2
  %738 = extractvalue %dx.types.ResRet.f32 %734, 3
  %739 = and i32 %728, 255
  %740 = uitofp i32 %739 to float
  %741 = lshr i32 %728, 8
  %742 = and i32 %741, 255
  %743 = uitofp i32 %742 to float
  %744 = lshr i32 %728, 16
  %745 = and i32 %744, 255
  %746 = uitofp i32 %745 to float
  %747 = fmul fast float %746, 0x3F70101000000000
  %748 = fmul fast float %735, %740
  %749 = fadd fast float %748, %743
  %750 = fmul fast float %749, 0x3F70101000000000
  %751 = fadd fast float %736, -5.000000e-01
  %752 = fadd fast float %738, -5.000000e-01
  %753 = fmul fast float %751, %747
  %754 = fmul fast float %752, %747
  %755 = fadd fast float %753, 5.000000e-01
  %756 = fadd fast float %754, 5.000000e-01
  %757 = fmul fast float %755, 2.000000e+00
  %758 = fadd fast float %757, -1.000000e+00
  %759 = fmul fast float %756, 2.000000e+00
  %760 = fadd fast float %759, -1.000000e+00
  %761 = fadd fast float %758, %760
  %762 = fmul fast float %761, 5.000000e-01
  %763 = fsub fast float %758, %760
  %764 = fmul fast float %763, 5.000000e-01
  %765 = call float @dx.op.unary.f32(i32 6, float %762)  ; FAbs(value)
  %766 = fsub fast float 1.000000e+00, %765
  %767 = call float @dx.op.unary.f32(i32 6, float %764)  ; FAbs(value)
  %768 = fsub fast float %766, %767
  %769 = call float @dx.op.dot3.f32(i32 55, float %762, float %764, float %768, float %762, float %764, float %768)  ; Dot3(ax,ay,az,bx,by,bz)
  %770 = call float @dx.op.unary.f32(i32 25, float %769)  ; Rsqrt(value)
  %771 = fmul fast float %762, %770
  %772 = fmul fast float %764, %770
  %773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %774 = extractvalue %dx.types.ResRet.i32 %773, 0
  %775 = and i32 %774, 67108864
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %793, label %777

; <label>:777                                     ; preds = %725
  %778 = add i32 %37, 280
  %779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %778, i32 undef)  ; BufferLoad(srv,index,wot)
  %780 = extractvalue %dx.types.ResRet.i32 %779, 0
  %781 = and i32 %780, 65535
  %782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %781)  ; LegacyF16ToF32(value)
  %783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %784 = extractvalue %dx.types.ResRet.i32 %783, 0
  %785 = and i32 %784, 65535
  %786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %785)  ; LegacyF16ToF32(value)
  %787 = lshr i32 %780, 16
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = fsub fast float %750, %788
  %790 = fmul fast float %789, %782
  %791 = fadd fast float %790, %786
  %792 = call float @dx.op.unary.f32(i32 7, float %791)  ; Saturate(value)
  br label %793

; <label>:793                                     ; preds = %777, %725
  %794 = phi float [ %792, %777 ], [ %750, %725 ]
  %795 = call float @dx.op.dot2.f32(i32 54, float %771, float %772, float %407, float %408)  ; Dot2(ax,ay,bx,by)
  %796 = call float @dx.op.dot2.f32(i32 54, float %771, float %772, float %409, float %410)  ; Dot2(ax,ay,bx,by)
  br label %797

; <label>:797                                     ; preds = %793, %703
  %798 = phi float [ %794, %793 ], [ 0x3FD6666660000000, %703 ]
  %799 = phi float [ %795, %793 ], [ 0.000000e+00, %703 ]
  %800 = phi float [ %796, %793 ], [ 0.000000e+00, %703 ]
  %801 = phi float [ %737, %793 ], [ 1.000000e+00, %703 ]
  %802 = add i32 %37, 160
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = lshr i32 %804, 22
  %806 = shl nuw nsw i32 %805, 5
  %807 = call float @dx.op.legacyF16ToF32(i32 131, i32 %806)  ; LegacyF16ToF32(value)
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 64
  %811 = icmp eq i32 %810, 0
  br i1 %811, label %845, label %812

; <label>:812                                     ; preds = %797
  %813 = add i32 %37, 408
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = add i32 %815, 0
  %817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = and i32 %819, 131072
  %821 = icmp eq i32 %820, 0
  %822 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %817, %dx.types.Handle %60, float %503, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %823 = extractvalue %dx.types.ResRet.f32 %822, 0
  %824 = extractvalue %dx.types.ResRet.f32 %822, 1
  %825 = extractvalue %dx.types.ResRet.f32 %822, 2
  %826 = fmul fast float %823, %173
  %827 = fmul fast float %824, %176
  %828 = fmul fast float %825, %179
  br i1 %821, label %835, label %829

; <label>:829                                     ; preds = %812
  %830 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %831 = extractvalue %dx.types.CBufRet.f32 %830, 0
  %832 = fmul fast float %831, %826
  %833 = fmul fast float %831, %827
  %834 = fmul fast float %831, %828
  br label %835

; <label>:835                                     ; preds = %829, %812
  %836 = phi float [ %832, %829 ], [ %826, %812 ]
  %837 = phi float [ %833, %829 ], [ %827, %812 ]
  %838 = phi float [ %834, %829 ], [ %828, %812 ]
  %839 = fmul fast float %836, %807
  %840 = select i1 %167, float %839, float %836
  %841 = call float @dx.op.dot3.f32(i32 55, float %840, float %837, float %838, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %842 = select i1 %167, float 0.000000e+00, float %836
  %843 = select i1 %167, float %841, float %837
  %844 = select i1 %167, float 0.000000e+00, float %838
  br label %845

; <label>:845                                     ; preds = %835, %797
  %846 = phi float [ %842, %835 ], [ 0.000000e+00, %797 ]
  %847 = phi float [ %843, %835 ], [ 0.000000e+00, %797 ]
  %848 = phi float [ %844, %835 ], [ 0.000000e+00, %797 ]
  %849 = add i32 %37, 96
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %849, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 255
  %853 = uitofp i32 %852 to float
  %854 = lshr i32 %851, 8
  %855 = and i32 %854, 255
  %856 = uitofp i32 %855 to float
  %857 = call float @dx.op.dot3.f32(i32 55, float %718, float %719, float %720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %858 = fmul fast float %856, %857
  %859 = fadd fast float %858, %853
  %860 = fmul fast float %859, 0x3F70101020000000
  %861 = call float @dx.op.unary.f32(i32 7, float %860)  ; Saturate(value)
  br label %862

; <label>:862                                     ; preds = %845, %389
  %863 = phi float [ 0.000000e+00, %389 ], [ %799, %845 ]
  %864 = phi float [ 0.000000e+00, %389 ], [ %800, %845 ]
  %865 = phi float [ 0.000000e+00, %389 ], [ %846, %845 ]
  %866 = phi float [ 0.000000e+00, %389 ], [ %847, %845 ]
  %867 = phi float [ 0.000000e+00, %389 ], [ %848, %845 ]
  %868 = phi float [ 0.000000e+00, %389 ], [ %718, %845 ]
  %869 = phi float [ 0.000000e+00, %389 ], [ %719, %845 ]
  %870 = phi float [ 0.000000e+00, %389 ], [ %720, %845 ]
  %871 = phi float [ 0.000000e+00, %389 ], [ %704, %845 ]
  %872 = phi float [ 0.000000e+00, %389 ], [ 1.000000e+00, %845 ]
  %873 = phi float [ 0.000000e+00, %389 ], [ %798, %845 ]
  %874 = phi float [ 0.000000e+00, %389 ], [ %801, %845 ]
  %875 = phi float [ 0.000000e+00, %389 ], [ %861, %845 ]
  br i1 %340, label %1717, label %876

; <label>:876                                     ; preds = %862
  %877 = icmp ult i32 %395, 2
  %878 = add i32 %37, 40
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = add i32 %37, 44
  %882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %881, i32 undef)  ; BufferLoad(srv,index,wot)
  %883 = extractvalue %dx.types.ResRet.i32 %882, 0
  %884 = or i32 %883, %880
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %1717, label %886

; <label>:886                                     ; preds = %876
  %887 = and i32 %880, 262144
  %888 = icmp ne i32 %887, 0
  %889 = select i1 %888, float %39, float 1.000000e+00
  %890 = select i1 %888, float %40, float 0.000000e+00
  %891 = select i1 %888, float %41, float 0.000000e+00
  %892 = select i1 %888, float %42, float 1.000000e+00
  %893 = select i1 %888, float %43, float %52
  %894 = select i1 %888, float %44, float %53
  %895 = add i32 %37, 300
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = lshr i32 %897, 16
  %899 = call float @dx.op.legacyF16ToF32(i32 131, i32 %898)  ; LegacyF16ToF32(value)
  %900 = fmul fast float %899, 0x3F50624DE0000000
  %901 = add i32 %37, 104
  %902 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %903 = extractvalue %dx.types.ResRet.i32 %902, 0
  %904 = lshr i32 %903, 16
  %905 = and i32 %904, 255
  %906 = lshr i32 %903, 24
  %907 = add i32 %37, 308
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = and i32 %909, 65535
  %911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %910)  ; LegacyF16ToF32(value)
  %912 = lshr i32 %909, 16
  %913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %912)  ; LegacyF16ToF32(value)
  %914 = add i32 %37, 48
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = lshr i32 %916, 22
  %918 = shl nuw nsw i32 %917, 5
  %919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %918)  ; LegacyF16ToF32(value)
  %920 = shl i32 %916, 4
  %921 = and i32 %920, 32752
  %922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %921)  ; LegacyF16ToF32(value)
  %923 = lshr i32 %916, 7
  %924 = and i32 %923, 32752
  %925 = call float @dx.op.legacyF16ToF32(i32 131, i32 %924)  ; LegacyF16ToF32(value)
  %926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %927 = extractvalue %dx.types.CBufRet.f32 %926, 3
  %928 = fmul fast float %927, 1.000000e+03
  %929 = fmul fast float %250, %928
  %930 = call float @dx.op.unary.f32(i32 22, float %929)  ; Frc(value)
  %931 = fadd fast float %930, %240
  %932 = fmul fast float %251, %928
  %933 = call float @dx.op.unary.f32(i32 22, float %932)  ; Frc(value)
  %934 = fadd fast float %933, %242
  %935 = fmul fast float %900, %928
  %936 = call float @dx.op.unary.f32(i32 22, float %935)  ; Frc(value)
  %937 = fmul fast float %936, 0x401921FB60000000
  %938 = fadd fast float %937, %919
  %939 = call float @dx.op.unary.f32(i32 13, float %938)  ; Sin(value)
  %940 = call float @dx.op.unary.f32(i32 12, float %938)  ; Cos(value)
  %941 = fsub fast float -0.000000e+00, %939
  %942 = fadd fast float %893, -5.000000e-01
  %943 = fadd fast float %894, -5.000000e-01
  %944 = fmul fast float %911, %942
  %945 = fmul fast float %913, %943
  %946 = fadd fast float %944, 5.000000e-01
  %947 = fadd fast float %945, 5.000000e-01
  %948 = fmul fast float %922, %946
  %949 = fmul fast float %925, %947
  %950 = fmul fast float %940, %948
  %951 = call float @dx.op.tertiary.f32(i32 46, float %941, float %949, float %950)  ; FMad(a,b,c)
  %952 = fmul fast float %939, %948
  %953 = call float @dx.op.tertiary.f32(i32 46, float %940, float %949, float %952)  ; FMad(a,b,c)
  %954 = fadd fast float %931, %951
  %955 = fadd fast float %934, %953
  %956 = icmp ugt i32 %905, 1
  %957 = icmp ugt i32 %903, 33554431
  %958 = or i1 %957, %956
  br i1 %958, label %959, label %984

; <label>:959                                     ; preds = %886
  %960 = add i32 %37, 244
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = lshr i32 %962, 16
  %964 = call float @dx.op.legacyF16ToF32(i32 131, i32 %963)  ; LegacyF16ToF32(value)
  %965 = fmul fast float %927, %964
  %966 = call float @dx.op.unary.f32(i32 22, float %965)  ; Frc(value)
  %967 = mul nuw nsw i32 %905, %906
  %968 = uitofp i32 %967 to float
  %969 = fmul fast float %966, %968
  %970 = call float @dx.op.unary.f32(i32 27, float %969)  ; Round_ni(value)
  %971 = fptoui float %970 to i32
  %972 = urem i32 %971, %905
  %973 = udiv i32 %971, %906
  %974 = call float @dx.op.unary.f32(i32 22, float %954)  ; Frc(value)
  %975 = call float @dx.op.unary.f32(i32 22, float %955)  ; Frc(value)
  %976 = uitofp i32 %972 to float
  %977 = uitofp i32 %973 to float
  %978 = fadd fast float %974, %976
  %979 = fadd fast float %975, %977
  %980 = uitofp i32 %905 to float
  %981 = uitofp i32 %906 to float
  %982 = fdiv fast float %978, %980
  %983 = fdiv fast float %979, %981
  br label %984

; <label>:984                                     ; preds = %959, %886
  %985 = phi float [ %982, %959 ], [ %954, %886 ]
  %986 = phi float [ %983, %959 ], [ %955, %886 ]
  %987 = and i32 %880, 16777216
  %988 = icmp eq i32 %987, 0
  br i1 %988, label %1098, label %989

; <label>:989                                     ; preds = %984
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 0
  %992 = extractvalue %dx.types.CBufRet.f32 %990, 1
  %993 = extractvalue %dx.types.CBufRet.f32 %990, 2
  %994 = fadd fast float %991, %123
  %995 = fadd fast float %992, %124
  %996 = fadd fast float %993, %125
  %997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %998 = extractvalue %dx.types.CBufRet.f32 %997, 0
  %999 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1000 = icmp eq i32 %38, 65535
  br i1 %1000, label %1095, label %1001

; <label>:1001                                    ; preds = %989
  %1002 = lshr i32 %38, 1
  %1003 = shl i32 %1002, 2
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = and i32 %38, 1
  %1007 = icmp ne i32 %1006, 0
  %1008 = lshr i32 %1005, 16
  %1009 = and i32 %1005, 65535
  %1010 = select i1 %1007, i32 %1008, i32 %1009
  %1011 = icmp eq i32 %1010, 65535
  br i1 %1011, label %1091, label %1012

; <label>:1012                                    ; preds = %1001
  %1013 = mul nuw nsw i32 %1010, 40
  %1014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1013, i32 undef)  ; BufferLoad(srv,index,wot)
  %1015 = extractvalue %dx.types.ResRet.f32 %1014, 0
  %1016 = extractvalue %dx.types.ResRet.f32 %1014, 1
  %1017 = extractvalue %dx.types.ResRet.f32 %1014, 2
  %1018 = add nuw nsw i32 %1013, 12
  %1019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.ResRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.ResRet.f32 %1019, 2
  %1023 = add nuw nsw i32 %1013, 24
  %1024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1023, i32 undef)  ; BufferLoad(srv,index,wot)
  %1025 = extractvalue %dx.types.ResRet.f32 %1024, 0
  %1026 = extractvalue %dx.types.ResRet.f32 %1024, 1
  %1027 = extractvalue %dx.types.ResRet.f32 %1024, 2
  %1028 = add nuw nsw i32 %1013, 36
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = fsub fast float %994, %1015
  %1032 = fsub fast float %995, %1016
  %1033 = fsub fast float %996, %1017
  %1034 = fmul fast float %1030, %1031
  %1035 = fmul fast float %1030, %1032
  %1036 = fmul fast float %1030, %1033
  %1037 = call float @dx.op.unary.f32(i32 27, float %1034)  ; Round_ni(value)
  %1038 = call float @dx.op.unary.f32(i32 27, float %1035)  ; Round_ni(value)
  %1039 = call float @dx.op.unary.f32(i32 27, float %1036)  ; Round_ni(value)
  %1040 = fadd fast float %1037, 5.000000e-01
  %1041 = fadd fast float %1038, 5.000000e-01
  %1042 = fadd fast float %1039, 5.000000e-01
  %1043 = fmul fast float %1040, %1020
  %1044 = fmul fast float %1041, %1021
  %1045 = fmul fast float %1042, %1022
  %1046 = shl i32 %38, 2
  %1047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.i32 %1047, 0
  %1049 = add i32 %1048, 0
  %1050 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1049, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1051 = call float @dx.op.unary.f32(i32 22, float %1043)  ; Frc(value)
  %1052 = call float @dx.op.unary.f32(i32 22, float %1044)  ; Frc(value)
  %1053 = call float @dx.op.unary.f32(i32 22, float %1045)  ; Frc(value)
  %1054 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1050, %dx.types.Handle %32, float %1051, float %1052, float %1053, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.ResRet.f32 %1054, 2
  %1058 = fmul fast float %1055, 1.023000e+03
  %1059 = fmul fast float %1056, 1.023000e+03
  %1060 = fmul fast float %1057, 1.023000e+03
  %1061 = fadd fast float %1058, 5.000000e-01
  %1062 = fadd fast float %1059, 5.000000e-01
  %1063 = fadd fast float %1060, 5.000000e-01
  %1064 = call float @dx.op.unary.f32(i32 27, float %1061)  ; Round_ni(value)
  %1065 = call float @dx.op.unary.f32(i32 27, float %1062)  ; Round_ni(value)
  %1066 = call float @dx.op.unary.f32(i32 27, float %1063)  ; Round_ni(value)
  %1067 = fsub fast float %1034, %1037
  %1068 = fsub fast float %1035, %1038
  %1069 = fsub fast float %1036, %1039
  %1070 = fmul fast float %1067, 7.500000e-01
  %1071 = fmul fast float %1068, 7.500000e-01
  %1072 = fmul fast float %1069, 7.500000e-01
  %1073 = fadd fast float %1037, 1.250000e-01
  %1074 = fadd fast float %1073, %1070
  %1075 = fadd fast float %1074, %1064
  %1076 = fadd fast float %1038, 1.250000e-01
  %1077 = fadd fast float %1076, %1071
  %1078 = fadd fast float %1077, %1065
  %1079 = fadd fast float %1039, 1.250000e-01
  %1080 = fadd fast float %1079, %1072
  %1081 = fadd fast float %1080, %1066
  %1082 = fmul fast float %1075, %1025
  %1083 = fmul fast float %1078, %1026
  %1084 = fmul fast float %1081, %1027
  %1085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.i32 %1085, 0
  %1087 = add i32 %1086, 0
  %1088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1088, %dx.types.Handle %30, float %1082, float %1083, float %1084, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  br label %1091

; <label>:1091                                    ; preds = %1012, %1001
  %1092 = phi float [ %1090, %1012 ], [ -1.000000e+00, %1001 ]
  %1093 = fadd fast float %1092, %999
  %1094 = call float @dx.op.unary.f32(i32 7, float %1093)  ; Saturate(value)
  br label %1095

; <label>:1095                                    ; preds = %1091, %989
  %1096 = phi float [ %1094, %1091 ], [ %999, %989 ]
  %1097 = fmul fast float %1096, %392
  br label %1098

; <label>:1098                                    ; preds = %1095, %984
  %1099 = phi float [ %1097, %1095 ], [ %392, %984 ]
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = and i32 %1101, 256
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1150, label %1104

; <label>:1104                                    ; preds = %1098
  %1105 = add i32 %37, 444
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1109, %dx.types.Handle %61, float %985, float %986, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  %1112 = add i32 %37, 116
  %1113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.i32 %1113, 0
  %1115 = shl i32 %1114, 4
  %1116 = and i32 %1115, 32752
  %1117 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1116)  ; LegacyF16ToF32(value)
  %1118 = lshr i32 %1114, 7
  %1119 = and i32 %1118, 32752
  %1120 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1119)  ; LegacyF16ToF32(value)
  %1121 = fsub fast float 1.000000e+00, %1099
  %1122 = call float @dx.op.binary.f32(i32 35, float %1121, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1123 = bitcast float %1099 to i32
  %1124 = sitofp i32 %1123 to float
  %1125 = fadd fast float %1124, 0xC1CFBF8940000000
  %1126 = fmul fast float %1120, %1125
  %1127 = fadd fast float %1126, 0x41CFBF8940000000
  %1128 = fptosi float %1127 to i32
  %1129 = bitcast i32 %1128 to float
  %1130 = bitcast float %1122 to i32
  %1131 = sitofp i32 %1130 to float
  %1132 = fadd fast float %1131, 0xC1CFBF8940000000
  %1133 = fmul fast float %1132, %1120
  %1134 = fadd fast float %1133, 0x41CFBF8940000000
  %1135 = fptosi float %1134 to i32
  %1136 = bitcast i32 %1135 to float
  %1137 = fmul fast float %1129, %1117
  %1138 = fmul fast float %1136, %1117
  %1139 = fsub fast float %1122, %1137
  %1140 = fadd fast float %1138, %1122
  %1141 = call float @dx.op.unary.f32(i32 7, float %1139)  ; Saturate(value)
  %1142 = call float @dx.op.unary.f32(i32 7, float %1140)  ; Saturate(value)
  %1143 = fsub fast float %1111, %1141
  %1144 = fsub fast float %1142, %1141
  %1145 = bitcast float %1144 to i32
  %1146 = sub nsw i32 2129859010, %1145
  %1147 = bitcast i32 %1146 to float
  %1148 = fmul fast float %1147, %1143
  %1149 = call float @dx.op.unary.f32(i32 7, float %1148)  ; Saturate(value)
  br label %1150

; <label>:1150                                    ; preds = %1104, %1098
  %1151 = phi float [ %1149, %1104 ], [ %1099, %1098 ]
  %1152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1153 = extractvalue %dx.types.ResRet.i32 %1152, 0
  %1154 = and i32 %1153, 128
  %1155 = icmp eq i32 %1154, 0
  br i1 %1155, label %1172, label %1156

; <label>:1156                                    ; preds = %1150
  %1157 = add i32 %37, 428
  %1158 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1157, i32 undef)  ; BufferLoad(srv,index,wot)
  %1159 = extractvalue %dx.types.ResRet.i32 %1158, 0
  %1160 = add i32 %1159, 0
  %1161 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1160, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1162 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1161, %dx.types.Handle %61, float %985, float %986, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1163 = extractvalue %dx.types.ResRet.f32 %1162, 0
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = and i32 %1165, 524288
  %1167 = icmp ne i32 %1166, 0
  %1168 = fcmp fast ogt float %1163, 0x3FE0101020000000
  %1169 = select i1 %1168, float 1.000000e+00, float 0.000000e+00
  %1170 = select i1 %1167, float %1169, float %1163
  %1171 = fmul fast float %1170, %1151
  br label %1172

; <label>:1172                                    ; preds = %1156, %1150
  %1173 = phi float [ %1171, %1156 ], [ %1151, %1150 ]
  %1174 = fcmp fast ult float %1173, 0x3F70101020000000
  br i1 %1174, label %1717, label %1175

; <label>:1175                                    ; preds = %1172
  %1176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1177 = extractvalue %dx.types.ResRet.i32 %1176, 0
  %1178 = and i32 %1177, 16
  %1179 = icmp eq i32 %1178, 0
  br i1 %1179, label %1378, label %1180

; <label>:1180                                    ; preds = %1175
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = add i32 %37, 380
  %1184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1183, i32 undef)  ; BufferLoad(srv,index,wot)
  %1185 = extractvalue %dx.types.ResRet.i32 %1184, 0
  %1186 = add i32 %1185, 0
  %1187 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1186, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1188 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1187, %dx.types.Handle %60, float %985, float %986, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1189 = extractvalue %dx.types.ResRet.f32 %1188, 0
  %1190 = extractvalue %dx.types.ResRet.f32 %1188, 1
  %1191 = extractvalue %dx.types.ResRet.f32 %1188, 2
  %1192 = extractvalue %dx.types.ResRet.f32 %1188, 3
  %1193 = and i32 %1182, 255
  %1194 = uitofp i32 %1193 to float
  %1195 = lshr i32 %1182, 8
  %1196 = and i32 %1195, 255
  %1197 = uitofp i32 %1196 to float
  %1198 = fmul fast float %1192, %1194
  %1199 = fadd fast float %1198, %1197
  %1200 = fmul fast float %1199, 0x3F70101000000000
  %1201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1202 = extractvalue %dx.types.ResRet.i32 %1201, 0
  %1203 = and i32 %1202, 512
  %1204 = icmp eq i32 %1203, 0
  br i1 %1204, label %1213, label %1205

; <label>:1205                                    ; preds = %1180
  %1206 = add i32 %37, 460
  %1207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1206, i32 undef)  ; BufferLoad(srv,index,wot)
  %1208 = extractvalue %dx.types.ResRet.i32 %1207, 0
  %1209 = add i32 %1208, 0
  %1210 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1209, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1211 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1210, %dx.types.Handle %61, float %985, float %986, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1212 = extractvalue %dx.types.ResRet.f32 %1211, 0
  br label %1213

; <label>:1213                                    ; preds = %1205, %1180
  %1214 = phi float [ %1212, %1205 ], [ 1.000000e+00, %1180 ]
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = and i32 %1216, 33554432
  %1218 = icmp eq i32 %1217, 0
  br i1 %1218, label %1325, label %1219

; <label>:1219                                    ; preds = %1213
  %1220 = add i32 %37, 240
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1220, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 65535
  %1224 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1223)  ; LegacyF16ToF32(value)
  %1225 = lshr i32 %1222, 16
  %1226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1225)  ; LegacyF16ToF32(value)
  %1227 = add i32 %37, 244
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1227, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = and i32 %1229, 65535
  %1231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1230)  ; LegacyF16ToF32(value)
  %1232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1233 = extractvalue %dx.types.ResRet.i32 %1232, 0
  %1234 = lshr i32 %1233, 24
  %1235 = uitofp i32 %1234 to float
  %1236 = fmul fast float %1235, 0x3F70101020000000
  %1237 = and i32 %1233, 255
  %1238 = uitofp i32 %1237 to float
  %1239 = fmul fast float %1238, 0x3F70101020000000
  %1240 = lshr i32 %1233, 8
  %1241 = and i32 %1240, 255
  %1242 = uitofp i32 %1241 to float
  %1243 = fmul fast float %1242, 0x3F70101020000000
  %1244 = lshr i32 %1233, 16
  %1245 = and i32 %1244, 255
  %1246 = uitofp i32 %1245 to float
  %1247 = fmul fast float %1246, 0x3F70101020000000
  %1248 = add i32 %37, 236
  %1249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1248, i32 undef)  ; BufferLoad(srv,index,wot)
  %1250 = extractvalue %dx.types.ResRet.i32 %1249, 0
  %1251 = lshr i32 %1250, 24
  %1252 = uitofp i32 %1251 to float
  %1253 = fmul fast float %1252, 0x3F70101020000000
  %1254 = and i32 %1250, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = fmul fast float %1255, 0x3F70101020000000
  %1257 = lshr i32 %1250, 8
  %1258 = and i32 %1257, 255
  %1259 = uitofp i32 %1258 to float
  %1260 = fmul fast float %1259, 0x3F70101020000000
  %1261 = lshr i32 %1250, 16
  %1262 = and i32 %1261, 255
  %1263 = uitofp i32 %1262 to float
  %1264 = fmul fast float %1263, 0x3F70101020000000
  %1265 = bitcast float %1189 to i32
  %1266 = ashr i32 %1265, 1
  %1267 = sub nsw i32 1597463174, %1266
  %1268 = bitcast i32 %1267 to float
  %1269 = fmul fast float %1189, 5.000000e-01
  %1270 = fmul fast float %1268, %1268
  %1271 = fmul fast float %1270, %1269
  %1272 = fsub fast float 1.500000e+00, %1271
  %1273 = fmul fast float %1268, %1189
  %1274 = fmul fast float %1273, %1272
  %1275 = bitcast float %1190 to i32
  %1276 = ashr i32 %1275, 1
  %1277 = sub nsw i32 1597463174, %1276
  %1278 = bitcast i32 %1277 to float
  %1279 = fmul fast float %1190, 5.000000e-01
  %1280 = fmul fast float %1278, %1278
  %1281 = fmul fast float %1280, %1279
  %1282 = fsub fast float 1.500000e+00, %1281
  %1283 = fmul fast float %1278, %1190
  %1284 = fmul fast float %1283, %1282
  %1285 = bitcast float %1191 to i32
  %1286 = ashr i32 %1285, 1
  %1287 = sub nsw i32 1597463174, %1286
  %1288 = bitcast i32 %1287 to float
  %1289 = fmul fast float %1191, 5.000000e-01
  %1290 = fmul fast float %1288, %1288
  %1291 = fmul fast float %1290, %1289
  %1292 = fsub fast float 1.500000e+00, %1291
  %1293 = fmul fast float %1288, %1191
  %1294 = fmul fast float %1293, %1292
  %1295 = fsub fast float %1274, %1256
  %1296 = fsub fast float %1284, %1260
  %1297 = fsub fast float %1294, %1264
  %1298 = fmul fast float %1295, %1224
  %1299 = fmul fast float %1296, %1226
  %1300 = fmul fast float %1297, %1231
  %1301 = fadd fast float %1298, %1239
  %1302 = fadd fast float %1299, %1243
  %1303 = fadd fast float %1300, %1247
  %1304 = call float @dx.op.unary.f32(i32 7, float %1301)  ; Saturate(value)
  %1305 = call float @dx.op.unary.f32(i32 7, float %1302)  ; Saturate(value)
  %1306 = call float @dx.op.unary.f32(i32 7, float %1303)  ; Saturate(value)
  %1307 = fmul fast float %1304, %1304
  %1308 = fmul fast float %1305, %1305
  %1309 = fmul fast float %1306, %1306
  %1310 = fsub fast float %1307, %1189
  %1311 = fsub fast float %1308, %1190
  %1312 = fsub fast float %1309, %1191
  %1313 = fmul fast float %1310, %1214
  %1314 = fmul fast float %1311, %1214
  %1315 = fmul fast float %1312, %1214
  %1316 = fadd fast float %1313, %1189
  %1317 = fadd fast float %1314, %1190
  %1318 = fadd fast float %1315, %1191
  %1319 = fadd fast float %1236, %1200
  %1320 = fsub fast float %1319, %1253
  %1321 = call float @dx.op.unary.f32(i32 7, float %1320)  ; Saturate(value)
  %1322 = fsub fast float %1321, %1200
  %1323 = fmul fast float %1322, %1214
  %1324 = fadd fast float %1323, %1200
  br label %1378

; <label>:1325                                    ; preds = %1213
  %1326 = and i32 %1216, 134217728
  %1327 = icmp eq i32 %1326, 0
  br i1 %1327, label %1362, label %1328

; <label>:1328                                    ; preds = %1325
  %1329 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %1330 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %1331 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %1332 = fadd fast float %1329, -5.000000e-01
  %1333 = fadd fast float %1330, -5.000000e-01
  %1334 = fadd fast float %1331, -5.000000e-01
  %1335 = fmul fast float %1332, %1214
  %1336 = fmul fast float %1333, %1214
  %1337 = fmul fast float %1334, %1214
  %1338 = fadd fast float %1335, 5.000000e-01
  %1339 = fadd fast float %1336, 5.000000e-01
  %1340 = fadd fast float %1337, 5.000000e-01
  %1341 = call float @dx.op.unary.f32(i32 24, float %1189)  ; Sqrt(value)
  %1342 = call float @dx.op.unary.f32(i32 24, float %1190)  ; Sqrt(value)
  %1343 = call float @dx.op.unary.f32(i32 24, float %1191)  ; Sqrt(value)
  %1344 = fmul fast float %1338, 2.000000e+00
  %1345 = fsub fast float 1.000000e+00, %1344
  %1346 = fmul fast float %1345, %1341
  %1347 = fadd fast float %1346, %1344
  %1348 = fmul fast float %1347, %1341
  %1349 = fmul fast float %1339, 2.000000e+00
  %1350 = fsub fast float 1.000000e+00, %1349
  %1351 = fmul fast float %1350, %1342
  %1352 = fadd fast float %1351, %1349
  %1353 = fmul fast float %1352, %1342
  %1354 = fmul fast float %1340, 2.000000e+00
  %1355 = fsub fast float 1.000000e+00, %1354
  %1356 = fmul fast float %1355, %1343
  %1357 = fadd fast float %1356, %1354
  %1358 = fmul fast float %1357, %1343
  %1359 = fmul fast float %1348, %1348
  %1360 = fmul fast float %1353, %1353
  %1361 = fmul fast float %1358, %1358
  br label %1378

; <label>:1362                                    ; preds = %1325
  %1363 = fmul fast float %227, %227
  %1364 = fmul fast float %231, %231
  %1365 = fmul fast float %235, %235
  %1366 = fadd fast float %1363, -1.000000e+00
  %1367 = fadd fast float %1364, -1.000000e+00
  %1368 = fadd fast float %1365, -1.000000e+00
  %1369 = fmul fast float %1214, %1366
  %1370 = fmul fast float %1214, %1367
  %1371 = fmul fast float %1214, %1368
  %1372 = fadd fast float %1369, 1.000000e+00
  %1373 = fadd fast float %1370, 1.000000e+00
  %1374 = fadd fast float %1371, 1.000000e+00
  %1375 = fmul fast float %1372, %1189
  %1376 = fmul fast float %1373, %1190
  %1377 = fmul fast float %1374, %1191
  br label %1378

; <label>:1378                                    ; preds = %1362, %1328, %1219, %1175
  %1379 = phi float [ %1324, %1219 ], [ %1200, %1328 ], [ %1200, %1362 ], [ 0x3FA23C0BE0000000, %1175 ]
  %1380 = phi float [ %1316, %1219 ], [ %1359, %1328 ], [ %1375, %1362 ], [ 1.000000e+00, %1175 ]
  %1381 = phi float [ %1317, %1219 ], [ %1360, %1328 ], [ %1376, %1362 ], [ 1.000000e+00, %1175 ]
  %1382 = phi float [ %1318, %1219 ], [ %1361, %1328 ], [ %1377, %1362 ], [ 1.000000e+00, %1175 ]
  %1383 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1384 = extractvalue %dx.types.CBufRet.i32 %1383, 1
  %1385 = and i32 %1384, 1
  %1386 = icmp ne i32 %1385, 0
  %1387 = add i32 %37, 356
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = and i32 %1389, 32
  %1391 = icmp ne i32 %1390, 0
  %1392 = and i1 %1386, %1391
  %1393 = select i1 %1392, float 1.000000e+00, float %1380
  %1394 = select i1 %1392, float 0x3FD3333340000000, float %1381
  %1395 = select i1 %1392, float 0x3FD3333340000000, float %1382
  %1396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1397 = extractvalue %dx.types.ResRet.i32 %1396, 0
  %1398 = and i32 %1397, 32
  %1399 = icmp eq i32 %1398, 0
  br i1 %1399, label %1472, label %1400

; <label>:1400                                    ; preds = %1378
  %1401 = add i32 %37, 108
  %1402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1401, i32 undef)  ; BufferLoad(srv,index,wot)
  %1403 = extractvalue %dx.types.ResRet.i32 %1402, 0
  %1404 = add i32 %37, 396
  %1405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1404, i32 undef)  ; BufferLoad(srv,index,wot)
  %1406 = extractvalue %dx.types.ResRet.i32 %1405, 0
  %1407 = add i32 %1406, 0
  %1408 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1407, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1409 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1408, %dx.types.Handle %60, float %985, float %986, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1410 = extractvalue %dx.types.ResRet.f32 %1409, 0
  %1411 = extractvalue %dx.types.ResRet.f32 %1409, 1
  %1412 = extractvalue %dx.types.ResRet.f32 %1409, 2
  %1413 = extractvalue %dx.types.ResRet.f32 %1409, 3
  %1414 = and i32 %1403, 255
  %1415 = uitofp i32 %1414 to float
  %1416 = lshr i32 %1403, 8
  %1417 = and i32 %1416, 255
  %1418 = uitofp i32 %1417 to float
  %1419 = lshr i32 %1403, 16
  %1420 = and i32 %1419, 255
  %1421 = uitofp i32 %1420 to float
  %1422 = fmul fast float %1421, 0x3F70101000000000
  %1423 = fmul fast float %1410, %1415
  %1424 = fadd fast float %1423, %1418
  %1425 = fmul fast float %1424, 0x3F70101000000000
  %1426 = fadd fast float %1411, -5.000000e-01
  %1427 = fadd fast float %1413, -5.000000e-01
  %1428 = fmul fast float %1426, %1422
  %1429 = fmul fast float %1427, %1422
  %1430 = fadd fast float %1428, 5.000000e-01
  %1431 = fadd fast float %1429, 5.000000e-01
  %1432 = fmul fast float %1430, 2.000000e+00
  %1433 = fadd fast float %1432, -1.000000e+00
  %1434 = fmul fast float %1431, 2.000000e+00
  %1435 = fadd fast float %1434, -1.000000e+00
  %1436 = fadd fast float %1433, %1435
  %1437 = fmul fast float %1436, 5.000000e-01
  %1438 = fsub fast float %1433, %1435
  %1439 = fmul fast float %1438, 5.000000e-01
  %1440 = call float @dx.op.unary.f32(i32 6, float %1437)  ; FAbs(value)
  %1441 = fsub fast float 1.000000e+00, %1440
  %1442 = call float @dx.op.unary.f32(i32 6, float %1439)  ; FAbs(value)
  %1443 = fsub fast float %1441, %1442
  %1444 = call float @dx.op.dot3.f32(i32 55, float %1437, float %1439, float %1443, float %1437, float %1439, float %1443)  ; Dot3(ax,ay,az,bx,by,bz)
  %1445 = call float @dx.op.unary.f32(i32 25, float %1444)  ; Rsqrt(value)
  %1446 = fmul fast float %1437, %1445
  %1447 = fmul fast float %1439, %1445
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 67108864
  %1451 = icmp eq i32 %1450, 0
  br i1 %1451, label %1468, label %1452

; <label>:1452                                    ; preds = %1400
  %1453 = add i32 %37, 296
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = and i32 %1455, 65535
  %1457 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1456)  ; LegacyF16ToF32(value)
  %1458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %1459 = extractvalue %dx.types.ResRet.i32 %1458, 0
  %1460 = and i32 %1459, 65535
  %1461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1460)  ; LegacyF16ToF32(value)
  %1462 = lshr i32 %1455, 16
  %1463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1462)  ; LegacyF16ToF32(value)
  %1464 = fsub fast float %1425, %1463
  %1465 = fmul fast float %1464, %1457
  %1466 = fadd fast float %1465, %1461
  %1467 = call float @dx.op.unary.f32(i32 7, float %1466)  ; Saturate(value)
  br label %1468

; <label>:1468                                    ; preds = %1452, %1400
  %1469 = phi float [ %1467, %1452 ], [ %1425, %1400 ]
  %1470 = call float @dx.op.dot2.f32(i32 54, float %1446, float %1447, float %889, float %890)  ; Dot2(ax,ay,bx,by)
  %1471 = call float @dx.op.dot2.f32(i32 54, float %1446, float %1447, float %891, float %892)  ; Dot2(ax,ay,bx,by)
  br label %1472

; <label>:1472                                    ; preds = %1468, %1378
  %1473 = phi float [ %1469, %1468 ], [ 0x3FD6666660000000, %1378 ]
  %1474 = phi float [ %1470, %1468 ], [ 0.000000e+00, %1378 ]
  %1475 = phi float [ %1471, %1468 ], [ 0.000000e+00, %1378 ]
  %1476 = phi float [ %1412, %1468 ], [ 1.000000e+00, %1378 ]
  %1477 = add i32 %37, 176
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1477, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = lshr i32 %1479, 22
  %1481 = shl nuw nsw i32 %1480, 5
  %1482 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1481)  ; LegacyF16ToF32(value)
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = and i32 %1484, 64
  %1486 = icmp eq i32 %1485, 0
  br i1 %1486, label %1520, label %1487

; <label>:1487                                    ; preds = %1472
  %1488 = add i32 %37, 412
  %1489 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.i32 %1489, 0
  %1491 = add i32 %1490, 0
  %1492 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1491, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = and i32 %1494, 131072
  %1496 = icmp eq i32 %1495, 0
  %1497 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1492, %dx.types.Handle %60, float %985, float %986, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1498 = extractvalue %dx.types.ResRet.f32 %1497, 0
  %1499 = extractvalue %dx.types.ResRet.f32 %1497, 1
  %1500 = extractvalue %dx.types.ResRet.f32 %1497, 2
  %1501 = fmul fast float %1498, %215
  %1502 = fmul fast float %1499, %218
  %1503 = fmul fast float %1500, %221
  br i1 %1496, label %1510, label %1504

; <label>:1504                                    ; preds = %1487
  %1505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1506 = extractvalue %dx.types.CBufRet.f32 %1505, 0
  %1507 = fmul fast float %1506, %1501
  %1508 = fmul fast float %1506, %1502
  %1509 = fmul fast float %1506, %1503
  br label %1510

; <label>:1510                                    ; preds = %1504, %1487
  %1511 = phi float [ %1507, %1504 ], [ %1501, %1487 ]
  %1512 = phi float [ %1508, %1504 ], [ %1502, %1487 ]
  %1513 = phi float [ %1509, %1504 ], [ %1503, %1487 ]
  %1514 = fmul fast float %1511, %1482
  %1515 = select i1 %167, float %1514, float %1511
  %1516 = call float @dx.op.dot3.f32(i32 55, float %1515, float %1512, float %1513, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1517 = select i1 %167, float 0.000000e+00, float %1511
  %1518 = select i1 %167, float %1516, float %1512
  %1519 = select i1 %167, float 0.000000e+00, float %1513
  br label %1520

; <label>:1520                                    ; preds = %1510, %1472
  %1521 = phi float [ %1517, %1510 ], [ 0.000000e+00, %1472 ]
  %1522 = phi float [ %1518, %1510 ], [ 0.000000e+00, %1472 ]
  %1523 = phi float [ %1519, %1510 ], [ 0.000000e+00, %1472 ]
  %1524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %1525 = extractvalue %dx.types.ResRet.i32 %1524, 0
  %1526 = add i32 %37, 112
  %1527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1526, i32 undef)  ; BufferLoad(srv,index,wot)
  %1528 = extractvalue %dx.types.ResRet.i32 %1527, 0
  %1529 = and i32 %1528, 255
  %1530 = uitofp i32 %1529 to float
  %1531 = lshr i32 %1528, 8
  %1532 = and i32 %1531, 255
  %1533 = uitofp i32 %1532 to float
  %1534 = call float @dx.op.dot3.f32(i32 55, float %1393, float %1394, float %1395, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1535 = fmul fast float %1533, %1534
  %1536 = fadd fast float %1535, %1530
  %1537 = fmul fast float %1536, 0x3F70101020000000
  %1538 = call float @dx.op.unary.f32(i32 7, float %1537)  ; Saturate(value)
  br i1 %877, label %1539, label %1547

; <label>:1539                                    ; preds = %1520
  %1540 = fsub fast float 1.000000e+00, %1173
  %1541 = fmul fast float %1540, %868
  %1542 = fmul fast float %1540, %869
  %1543 = fmul fast float %1540, %870
  %1544 = fmul fast float %1540, %865
  %1545 = fmul fast float %1540, %866
  %1546 = fmul fast float %1540, %867
  br label %1547

; <label>:1547                                    ; preds = %1539, %1520
  %1548 = phi float [ %1544, %1539 ], [ %865, %1520 ]
  %1549 = phi float [ %1545, %1539 ], [ %866, %1520 ]
  %1550 = phi float [ %1546, %1539 ], [ %867, %1520 ]
  %1551 = phi float [ %1541, %1539 ], [ %868, %1520 ]
  %1552 = phi float [ %1542, %1539 ], [ %869, %1520 ]
  %1553 = phi float [ %1543, %1539 ], [ %870, %1520 ]
  %1554 = and i32 %1525, 3
  %1555 = icmp eq i32 %1554, 3
  br i1 %1555, label %1634, label %1556

; <label>:1556                                    ; preds = %1547
  %1557 = and i32 %1525, 16
  %1558 = icmp ne i32 %1557, 0
  %1559 = select i1 %1558, float %1173, float 0.000000e+00
  %1560 = icmp eq i32 %1554, 0
  br i1 %1560, label %1561, label %1589

; <label>:1561                                    ; preds = %1556
  %1562 = and i32 %1525, 64
  %1563 = icmp ne i32 %1562, 0
  %1564 = select i1 %1563, float %1173, float 0.000000e+00
  %1565 = fsub fast float %1393, %1551
  %1566 = fsub fast float %1394, %1552
  %1567 = fsub fast float %1395, %1553
  %1568 = fmul fast float %1559, %1565
  %1569 = fmul fast float %1559, %1566
  %1570 = fmul fast float %1559, %1567
  %1571 = fadd fast float %1568, %1551
  %1572 = fadd fast float %1569, %1552
  %1573 = fadd fast float %1570, %1553
  %1574 = fsub fast float %1379, %871
  %1575 = fmul fast float %1559, %1574
  %1576 = fadd fast float %1575, %871
  %1577 = fsub fast float %1521, %1548
  %1578 = fsub fast float %1522, %1549
  %1579 = fsub fast float %1523, %1550
  %1580 = fmul fast float %1564, %1577
  %1581 = fmul fast float %1564, %1578
  %1582 = fmul fast float %1564, %1579
  %1583 = fadd fast float %1580, %1548
  %1584 = fadd fast float %1581, %1549
  %1585 = fadd fast float %1582, %1550
  %1586 = fsub fast float %1538, %875
  %1587 = fmul fast float %1559, %1586
  %1588 = fadd fast float %1587, %875
  br label %1634

; <label>:1589                                    ; preds = %1556
  %1590 = icmp eq i32 %1554, 1
  br i1 %1590, label %1591, label %1604

; <label>:1591                                    ; preds = %1589
  %1592 = fadd fast float %1393, -1.000000e+00
  %1593 = fadd fast float %1394, -1.000000e+00
  %1594 = fadd fast float %1395, -1.000000e+00
  %1595 = fmul fast float %1559, %1592
  %1596 = fmul fast float %1559, %1593
  %1597 = fmul fast float %1559, %1594
  %1598 = fadd fast float %1595, 1.000000e+00
  %1599 = fadd fast float %1596, 1.000000e+00
  %1600 = fadd fast float %1597, 1.000000e+00
  %1601 = fmul fast float %1598, %1551
  %1602 = fmul fast float %1599, %1552
  %1603 = fmul fast float %1600, %1553
  br label %1634

; <label>:1604                                    ; preds = %1589
  %1605 = icmp eq i32 %1554, 2
  br i1 %1605, label %1606, label %1634

; <label>:1606                                    ; preds = %1604
  %1607 = call float @dx.op.unary.f32(i32 24, float %1393)  ; Sqrt(value)
  %1608 = call float @dx.op.unary.f32(i32 24, float %1394)  ; Sqrt(value)
  %1609 = call float @dx.op.unary.f32(i32 24, float %1395)  ; Sqrt(value)
  %1610 = fadd fast float %1607, -5.000000e-01
  %1611 = fadd fast float %1608, -5.000000e-01
  %1612 = fadd fast float %1609, -5.000000e-01
  %1613 = fmul fast float %1610, %1559
  %1614 = fmul fast float %1611, %1559
  %1615 = fmul fast float %1612, %1559
  %1616 = fadd fast float %1613, 5.000000e-01
  %1617 = fadd fast float %1614, 5.000000e-01
  %1618 = fadd fast float %1615, 5.000000e-01
  %1619 = fmul fast float %1616, 2.000000e+00
  %1620 = fsub fast float 1.000000e+00, %1619
  %1621 = fmul fast float %1620, %1551
  %1622 = fadd fast float %1621, %1619
  %1623 = fmul fast float %1622, %1551
  %1624 = fmul fast float %1617, 2.000000e+00
  %1625 = fsub fast float 1.000000e+00, %1624
  %1626 = fmul fast float %1625, %1552
  %1627 = fadd fast float %1626, %1624
  %1628 = fmul fast float %1627, %1552
  %1629 = fmul fast float %1618, 2.000000e+00
  %1630 = fsub fast float 1.000000e+00, %1629
  %1631 = fmul fast float %1630, %1553
  %1632 = fadd fast float %1631, %1629
  %1633 = fmul fast float %1632, %1553
  br label %1634

; <label>:1634                                    ; preds = %1606, %1604, %1591, %1561, %1547
  %1635 = phi float [ %1548, %1547 ], [ %1548, %1606 ], [ %1548, %1604 ], [ %1548, %1591 ], [ %1583, %1561 ]
  %1636 = phi float [ %1549, %1547 ], [ %1549, %1606 ], [ %1549, %1604 ], [ %1549, %1591 ], [ %1584, %1561 ]
  %1637 = phi float [ %1550, %1547 ], [ %1550, %1606 ], [ %1550, %1604 ], [ %1550, %1591 ], [ %1585, %1561 ]
  %1638 = phi float [ %1551, %1547 ], [ %1623, %1606 ], [ %1551, %1604 ], [ %1601, %1591 ], [ %1571, %1561 ]
  %1639 = phi float [ %1552, %1547 ], [ %1628, %1606 ], [ %1552, %1604 ], [ %1602, %1591 ], [ %1572, %1561 ]
  %1640 = phi float [ %1553, %1547 ], [ %1633, %1606 ], [ %1553, %1604 ], [ %1603, %1591 ], [ %1573, %1561 ]
  %1641 = phi float [ %871, %1547 ], [ %871, %1606 ], [ %871, %1604 ], [ %871, %1591 ], [ %1576, %1561 ]
  %1642 = phi float [ %875, %1547 ], [ %875, %1606 ], [ %875, %1604 ], [ %875, %1591 ], [ %1588, %1561 ]
  %1643 = and i32 %1525, 12
  %1644 = icmp eq i32 %1643, 12
  br i1 %1644, label %1717, label %1645

; <label>:1645                                    ; preds = %1634
  %1646 = and i32 %1525, 2097184
  %1647 = icmp eq i32 %1646, 2097184
  %1648 = select i1 %1647, float %1173, float 0.000000e+00
  %1649 = and i32 %1525, 4194336
  %1650 = icmp eq i32 %1649, 4194336
  %1651 = select i1 %1650, float %1173, float 0.000000e+00
  %1652 = and i32 %1525, 8388640
  %1653 = icmp eq i32 %1652, 8388640
  %1654 = select i1 %1653, float %1173, float 0.000000e+00
  %1655 = icmp eq i32 %1643, 0
  br i1 %1655, label %1656, label %1669

; <label>:1656                                    ; preds = %1645
  %1657 = fsub fast float %1474, %863
  %1658 = fsub fast float %1475, %864
  %1659 = fmul fast float %1648, %1657
  %1660 = fmul fast float %1648, %1658
  %1661 = fadd fast float %1659, %863
  %1662 = fadd fast float %1660, %864
  %1663 = fsub fast float %1476, %874
  %1664 = fmul fast float %1651, %1663
  %1665 = fadd fast float %1664, %874
  %1666 = fsub fast float %1473, %873
  %1667 = fmul fast float %1654, %1666
  %1668 = fadd fast float %1667, %873
  br label %1717

; <label>:1669                                    ; preds = %1645
  %1670 = icmp eq i32 %1643, 4
  br i1 %1670, label %1671, label %1703

; <label>:1671                                    ; preds = %1669
  %1672 = fmul fast float %1648, %1474
  %1673 = fmul fast float %1648, %1475
  %1674 = fadd fast float %1672, %863
  %1675 = fadd fast float %1673, %864
  %1676 = call float @dx.op.binary.f32(i32 36, float %874, float %1476)  ; FMin(a,b)
  %1677 = fsub fast float %1676, %874
  %1678 = fmul fast float %1677, %1651
  %1679 = fadd fast float %1678, %874
  %1680 = fadd fast float %1473, %873
  %1681 = fmul fast float %1680, 0x3FF337FAE0000000
  %1682 = fmul fast float %873, %873
  %1683 = fmul fast float %1473, %1473
  %1684 = fadd fast float %1683, %1682
  %1685 = fmul fast float %1684, 0x3FE5152B00000000
  %1686 = fmul fast float %873, 0xBFCC1F85E0000000
  %1687 = fmul fast float %1686, %1473
  %1688 = fadd fast float %1687, 0xBFE1363700000000
  %1689 = fadd fast float %1688, %1681
  %1690 = fsub fast float %1689, %1685
  %1691 = fmul fast float %1680, 0x3FBA6F0D00000000
  %1692 = fmul fast float %1684, 0x3FD0432880000000
  %1693 = fmul fast float %873, 0xBFEF110800000000
  %1694 = fmul fast float %1693, %1473
  %1695 = fadd fast float %1694, 1.000000e+00
  %1696 = fsub fast float %1695, %1691
  %1697 = fadd fast float %1696, %1692
  %1698 = fdiv fast float %1690, %1697
  %1699 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1700 = fsub fast float %1699, %873
  %1701 = fmul fast float %1700, %1654
  %1702 = fadd fast float %1701, %873
  br label %1717

; <label>:1703                                    ; preds = %1669
  %1704 = icmp eq i32 %1643, 8
  br i1 %1704, label %1705, label %1717

; <label>:1705                                    ; preds = %1703
  %1706 = fmul fast float %1648, %1474
  %1707 = fmul fast float %1648, %1475
  %1708 = fadd fast float %1706, %863
  %1709 = fadd fast float %1707, %864
  %1710 = call float @dx.op.binary.f32(i32 36, float %874, float %1476)  ; FMin(a,b)
  %1711 = fsub fast float %1710, %874
  %1712 = fmul fast float %1711, %1651
  %1713 = fadd fast float %1712, %874
  %1714 = fsub fast float %1473, %873
  %1715 = fmul fast float %1654, %1714
  %1716 = fadd fast float %1715, %873
  br label %1717

; <label>:1717                                    ; preds = %1705, %1703, %1671, %1656, %1634, %1172, %876, %862
  %1718 = phi float [ %863, %1634 ], [ %863, %1172 ], [ %863, %862 ], [ %1708, %1705 ], [ %863, %1703 ], [ %1674, %1671 ], [ %1661, %1656 ], [ %863, %876 ]
  %1719 = phi float [ %864, %1634 ], [ %864, %1172 ], [ %864, %862 ], [ %1709, %1705 ], [ %864, %1703 ], [ %1675, %1671 ], [ %1662, %1656 ], [ %864, %876 ]
  %1720 = phi float [ %1635, %1634 ], [ %865, %1172 ], [ %865, %862 ], [ %1635, %1705 ], [ %1635, %1703 ], [ %1635, %1671 ], [ %1635, %1656 ], [ %865, %876 ]
  %1721 = phi float [ %1636, %1634 ], [ %866, %1172 ], [ %866, %862 ], [ %1636, %1705 ], [ %1636, %1703 ], [ %1636, %1671 ], [ %1636, %1656 ], [ %866, %876 ]
  %1722 = phi float [ %1637, %1634 ], [ %867, %1172 ], [ %867, %862 ], [ %1637, %1705 ], [ %1637, %1703 ], [ %1637, %1671 ], [ %1637, %1656 ], [ %867, %876 ]
  %1723 = phi float [ %1638, %1634 ], [ %868, %1172 ], [ %868, %862 ], [ %1638, %1705 ], [ %1638, %1703 ], [ %1638, %1671 ], [ %1638, %1656 ], [ %868, %876 ]
  %1724 = phi float [ %1639, %1634 ], [ %869, %1172 ], [ %869, %862 ], [ %1639, %1705 ], [ %1639, %1703 ], [ %1639, %1671 ], [ %1639, %1656 ], [ %869, %876 ]
  %1725 = phi float [ %1640, %1634 ], [ %870, %1172 ], [ %870, %862 ], [ %1640, %1705 ], [ %1640, %1703 ], [ %1640, %1671 ], [ %1640, %1656 ], [ %870, %876 ]
  %1726 = phi float [ %1641, %1634 ], [ %871, %1172 ], [ %871, %862 ], [ %1641, %1705 ], [ %1641, %1703 ], [ %1641, %1671 ], [ %1641, %1656 ], [ %871, %876 ]
  %1727 = phi float [ %873, %1634 ], [ %873, %1172 ], [ %873, %862 ], [ %1716, %1705 ], [ %873, %1703 ], [ %1702, %1671 ], [ %1668, %1656 ], [ %873, %876 ]
  %1728 = phi float [ %874, %1634 ], [ %874, %1172 ], [ %874, %862 ], [ %1713, %1705 ], [ %874, %1703 ], [ %1679, %1671 ], [ %1665, %1656 ], [ %874, %876 ]
  %1729 = phi float [ %1642, %1634 ], [ %875, %1172 ], [ %875, %862 ], [ %1642, %1705 ], [ %1642, %1703 ], [ %1642, %1671 ], [ %1642, %1656 ], [ %875, %876 ]
  br i1 %342, label %2571, label %1730

; <label>:1730                                    ; preds = %1717
  %1731 = icmp ult i32 %395, 3
  %1732 = add i32 %37, 56
  %1733 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1734 = extractvalue %dx.types.ResRet.i32 %1733, 0
  %1735 = add i32 %37, 60
  %1736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1735, i32 undef)  ; BufferLoad(srv,index,wot)
  %1737 = extractvalue %dx.types.ResRet.i32 %1736, 0
  %1738 = or i32 %1737, %1734
  %1739 = icmp eq i32 %1738, 0
  br i1 %1739, label %2571, label %1740

; <label>:1740                                    ; preds = %1730
  %1741 = and i32 %1734, 262144
  %1742 = icmp ne i32 %1741, 0
  %1743 = select i1 %1742, float %39, float 1.000000e+00
  %1744 = select i1 %1742, float %40, float 0.000000e+00
  %1745 = select i1 %1742, float %41, float 0.000000e+00
  %1746 = select i1 %1742, float %42, float 1.000000e+00
  %1747 = select i1 %1742, float %43, float %52
  %1748 = select i1 %1742, float %44, float %53
  %1749 = add i32 %37, 316
  %1750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %1751 = extractvalue %dx.types.ResRet.i32 %1750, 0
  %1752 = lshr i32 %1751, 16
  %1753 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1752)  ; LegacyF16ToF32(value)
  %1754 = fmul fast float %1753, 0x3F50624DE0000000
  %1755 = add i32 %37, 120
  %1756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %1757 = extractvalue %dx.types.ResRet.i32 %1756, 0
  %1758 = lshr i32 %1757, 16
  %1759 = and i32 %1758, 255
  %1760 = lshr i32 %1757, 24
  %1761 = add i32 %37, 324
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = and i32 %1763, 65535
  %1765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1764)  ; LegacyF16ToF32(value)
  %1766 = lshr i32 %1763, 16
  %1767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1766)  ; LegacyF16ToF32(value)
  %1768 = add i32 %37, 64
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = lshr i32 %1770, 22
  %1772 = shl nuw nsw i32 %1771, 5
  %1773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1772)  ; LegacyF16ToF32(value)
  %1774 = shl i32 %1770, 4
  %1775 = and i32 %1774, 32752
  %1776 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1775)  ; LegacyF16ToF32(value)
  %1777 = lshr i32 %1770, 7
  %1778 = and i32 %1777, 32752
  %1779 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1778)  ; LegacyF16ToF32(value)
  %1780 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1781 = extractvalue %dx.types.CBufRet.f32 %1780, 3
  %1782 = fmul fast float %1781, 1.000000e+03
  %1783 = fmul fast float %292, %1782
  %1784 = call float @dx.op.unary.f32(i32 22, float %1783)  ; Frc(value)
  %1785 = fadd fast float %1784, %282
  %1786 = fmul fast float %293, %1782
  %1787 = call float @dx.op.unary.f32(i32 22, float %1786)  ; Frc(value)
  %1788 = fadd fast float %1787, %284
  %1789 = fmul fast float %1754, %1782
  %1790 = call float @dx.op.unary.f32(i32 22, float %1789)  ; Frc(value)
  %1791 = fmul fast float %1790, 0x401921FB60000000
  %1792 = fadd fast float %1791, %1773
  %1793 = call float @dx.op.unary.f32(i32 13, float %1792)  ; Sin(value)
  %1794 = call float @dx.op.unary.f32(i32 12, float %1792)  ; Cos(value)
  %1795 = fsub fast float -0.000000e+00, %1793
  %1796 = fadd fast float %1747, -5.000000e-01
  %1797 = fadd fast float %1748, -5.000000e-01
  %1798 = fmul fast float %1765, %1796
  %1799 = fmul fast float %1767, %1797
  %1800 = fadd fast float %1798, 5.000000e-01
  %1801 = fadd fast float %1799, 5.000000e-01
  %1802 = fmul fast float %1776, %1800
  %1803 = fmul fast float %1779, %1801
  %1804 = fmul fast float %1794, %1802
  %1805 = call float @dx.op.tertiary.f32(i32 46, float %1795, float %1803, float %1804)  ; FMad(a,b,c)
  %1806 = fmul fast float %1793, %1802
  %1807 = call float @dx.op.tertiary.f32(i32 46, float %1794, float %1803, float %1806)  ; FMad(a,b,c)
  %1808 = fadd fast float %1785, %1805
  %1809 = fadd fast float %1788, %1807
  %1810 = icmp ugt i32 %1759, 1
  %1811 = icmp ugt i32 %1757, 33554431
  %1812 = or i1 %1811, %1810
  br i1 %1812, label %1813, label %1838

; <label>:1813                                    ; preds = %1740
  %1814 = add i32 %37, 260
  %1815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.i32 %1815, 0
  %1817 = lshr i32 %1816, 16
  %1818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1817)  ; LegacyF16ToF32(value)
  %1819 = fmul fast float %1781, %1818
  %1820 = call float @dx.op.unary.f32(i32 22, float %1819)  ; Frc(value)
  %1821 = mul nuw nsw i32 %1759, %1760
  %1822 = uitofp i32 %1821 to float
  %1823 = fmul fast float %1820, %1822
  %1824 = call float @dx.op.unary.f32(i32 27, float %1823)  ; Round_ni(value)
  %1825 = fptoui float %1824 to i32
  %1826 = urem i32 %1825, %1759
  %1827 = udiv i32 %1825, %1760
  %1828 = call float @dx.op.unary.f32(i32 22, float %1808)  ; Frc(value)
  %1829 = call float @dx.op.unary.f32(i32 22, float %1809)  ; Frc(value)
  %1830 = uitofp i32 %1826 to float
  %1831 = uitofp i32 %1827 to float
  %1832 = fadd fast float %1828, %1830
  %1833 = fadd fast float %1829, %1831
  %1834 = uitofp i32 %1759 to float
  %1835 = uitofp i32 %1760 to float
  %1836 = fdiv fast float %1832, %1834
  %1837 = fdiv fast float %1833, %1835
  br label %1838

; <label>:1838                                    ; preds = %1813, %1740
  %1839 = phi float [ %1836, %1813 ], [ %1808, %1740 ]
  %1840 = phi float [ %1837, %1813 ], [ %1809, %1740 ]
  %1841 = and i32 %1734, 16777216
  %1842 = icmp eq i32 %1841, 0
  br i1 %1842, label %1952, label %1843

; <label>:1843                                    ; preds = %1838
  %1844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1845 = extractvalue %dx.types.CBufRet.f32 %1844, 0
  %1846 = extractvalue %dx.types.CBufRet.f32 %1844, 1
  %1847 = extractvalue %dx.types.CBufRet.f32 %1844, 2
  %1848 = fadd fast float %1845, %123
  %1849 = fadd fast float %1846, %124
  %1850 = fadd fast float %1847, %125
  %1851 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1852 = extractvalue %dx.types.CBufRet.f32 %1851, 0
  %1853 = call float @dx.op.unary.f32(i32 7, float %1852)  ; Saturate(value)
  %1854 = icmp eq i32 %38, 65535
  br i1 %1854, label %1949, label %1855

; <label>:1855                                    ; preds = %1843
  %1856 = lshr i32 %38, 1
  %1857 = shl i32 %1856, 2
  %1858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1857, i32 undef)  ; BufferLoad(srv,index,wot)
  %1859 = extractvalue %dx.types.ResRet.i32 %1858, 0
  %1860 = and i32 %38, 1
  %1861 = icmp ne i32 %1860, 0
  %1862 = lshr i32 %1859, 16
  %1863 = and i32 %1859, 65535
  %1864 = select i1 %1861, i32 %1862, i32 %1863
  %1865 = icmp eq i32 %1864, 65535
  br i1 %1865, label %1945, label %1866

; <label>:1866                                    ; preds = %1855
  %1867 = mul nuw nsw i32 %1864, 40
  %1868 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1867, i32 undef)  ; BufferLoad(srv,index,wot)
  %1869 = extractvalue %dx.types.ResRet.f32 %1868, 0
  %1870 = extractvalue %dx.types.ResRet.f32 %1868, 1
  %1871 = extractvalue %dx.types.ResRet.f32 %1868, 2
  %1872 = add nuw nsw i32 %1867, 12
  %1873 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.ResRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.ResRet.f32 %1873, 2
  %1877 = add nuw nsw i32 %1867, 24
  %1878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1877, i32 undef)  ; BufferLoad(srv,index,wot)
  %1879 = extractvalue %dx.types.ResRet.f32 %1878, 0
  %1880 = extractvalue %dx.types.ResRet.f32 %1878, 1
  %1881 = extractvalue %dx.types.ResRet.f32 %1878, 2
  %1882 = add nuw nsw i32 %1867, 36
  %1883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.f32 %1883, 0
  %1885 = fsub fast float %1848, %1869
  %1886 = fsub fast float %1849, %1870
  %1887 = fsub fast float %1850, %1871
  %1888 = fmul fast float %1884, %1885
  %1889 = fmul fast float %1884, %1886
  %1890 = fmul fast float %1884, %1887
  %1891 = call float @dx.op.unary.f32(i32 27, float %1888)  ; Round_ni(value)
  %1892 = call float @dx.op.unary.f32(i32 27, float %1889)  ; Round_ni(value)
  %1893 = call float @dx.op.unary.f32(i32 27, float %1890)  ; Round_ni(value)
  %1894 = fadd fast float %1891, 5.000000e-01
  %1895 = fadd fast float %1892, 5.000000e-01
  %1896 = fadd fast float %1893, 5.000000e-01
  %1897 = fmul fast float %1894, %1874
  %1898 = fmul fast float %1895, %1875
  %1899 = fmul fast float %1896, %1876
  %1900 = shl i32 %38, 2
  %1901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.i32 %1901, 0
  %1903 = add i32 %1902, 0
  %1904 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1903, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1905 = call float @dx.op.unary.f32(i32 22, float %1897)  ; Frc(value)
  %1906 = call float @dx.op.unary.f32(i32 22, float %1898)  ; Frc(value)
  %1907 = call float @dx.op.unary.f32(i32 22, float %1899)  ; Frc(value)
  %1908 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1904, %dx.types.Handle %32, float %1905, float %1906, float %1907, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1909 = extractvalue %dx.types.ResRet.f32 %1908, 0
  %1910 = extractvalue %dx.types.ResRet.f32 %1908, 1
  %1911 = extractvalue %dx.types.ResRet.f32 %1908, 2
  %1912 = fmul fast float %1909, 1.023000e+03
  %1913 = fmul fast float %1910, 1.023000e+03
  %1914 = fmul fast float %1911, 1.023000e+03
  %1915 = fadd fast float %1912, 5.000000e-01
  %1916 = fadd fast float %1913, 5.000000e-01
  %1917 = fadd fast float %1914, 5.000000e-01
  %1918 = call float @dx.op.unary.f32(i32 27, float %1915)  ; Round_ni(value)
  %1919 = call float @dx.op.unary.f32(i32 27, float %1916)  ; Round_ni(value)
  %1920 = call float @dx.op.unary.f32(i32 27, float %1917)  ; Round_ni(value)
  %1921 = fsub fast float %1888, %1891
  %1922 = fsub fast float %1889, %1892
  %1923 = fsub fast float %1890, %1893
  %1924 = fmul fast float %1921, 7.500000e-01
  %1925 = fmul fast float %1922, 7.500000e-01
  %1926 = fmul fast float %1923, 7.500000e-01
  %1927 = fadd fast float %1891, 1.250000e-01
  %1928 = fadd fast float %1927, %1924
  %1929 = fadd fast float %1928, %1918
  %1930 = fadd fast float %1892, 1.250000e-01
  %1931 = fadd fast float %1930, %1925
  %1932 = fadd fast float %1931, %1919
  %1933 = fadd fast float %1893, 1.250000e-01
  %1934 = fadd fast float %1933, %1926
  %1935 = fadd fast float %1934, %1920
  %1936 = fmul fast float %1929, %1879
  %1937 = fmul fast float %1932, %1880
  %1938 = fmul fast float %1935, %1881
  %1939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.i32 %1939, 0
  %1941 = add i32 %1940, 0
  %1942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1941, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1942, %dx.types.Handle %30, float %1936, float %1937, float %1938, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 0
  br label %1945

; <label>:1945                                    ; preds = %1866, %1855
  %1946 = phi float [ %1944, %1866 ], [ -1.000000e+00, %1855 ]
  %1947 = fadd fast float %1946, %1853
  %1948 = call float @dx.op.unary.f32(i32 7, float %1947)  ; Saturate(value)
  br label %1949

; <label>:1949                                    ; preds = %1945, %1843
  %1950 = phi float [ %1948, %1945 ], [ %1853, %1843 ]
  %1951 = fmul fast float %1950, %391
  br label %1952

; <label>:1952                                    ; preds = %1949, %1838
  %1953 = phi float [ %1951, %1949 ], [ %391, %1838 ]
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = and i32 %1955, 256
  %1957 = icmp eq i32 %1956, 0
  br i1 %1957, label %2004, label %1958

; <label>:1958                                    ; preds = %1952
  %1959 = add i32 %37, 448
  %1960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1961 = extractvalue %dx.types.ResRet.i32 %1960, 0
  %1962 = add i32 %1961, 0
  %1963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1962, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1964 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1963, %dx.types.Handle %61, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1965 = extractvalue %dx.types.ResRet.f32 %1964, 0
  %1966 = add i32 %37, 132
  %1967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1966, i32 undef)  ; BufferLoad(srv,index,wot)
  %1968 = extractvalue %dx.types.ResRet.i32 %1967, 0
  %1969 = shl i32 %1968, 4
  %1970 = and i32 %1969, 32752
  %1971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1970)  ; LegacyF16ToF32(value)
  %1972 = lshr i32 %1968, 7
  %1973 = and i32 %1972, 32752
  %1974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1973)  ; LegacyF16ToF32(value)
  %1975 = fsub fast float 1.000000e+00, %1953
  %1976 = call float @dx.op.binary.f32(i32 35, float %1975, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1977 = bitcast float %1953 to i32
  %1978 = sitofp i32 %1977 to float
  %1979 = fadd fast float %1978, 0xC1CFBF8940000000
  %1980 = fmul fast float %1974, %1979
  %1981 = fadd fast float %1980, 0x41CFBF8940000000
  %1982 = fptosi float %1981 to i32
  %1983 = bitcast i32 %1982 to float
  %1984 = bitcast float %1976 to i32
  %1985 = sitofp i32 %1984 to float
  %1986 = fadd fast float %1985, 0xC1CFBF8940000000
  %1987 = fmul fast float %1986, %1974
  %1988 = fadd fast float %1987, 0x41CFBF8940000000
  %1989 = fptosi float %1988 to i32
  %1990 = bitcast i32 %1989 to float
  %1991 = fmul fast float %1983, %1971
  %1992 = fmul fast float %1990, %1971
  %1993 = fsub fast float %1976, %1991
  %1994 = fadd fast float %1992, %1976
  %1995 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1996 = call float @dx.op.unary.f32(i32 7, float %1994)  ; Saturate(value)
  %1997 = fsub fast float %1965, %1995
  %1998 = fsub fast float %1996, %1995
  %1999 = bitcast float %1998 to i32
  %2000 = sub nsw i32 2129859010, %1999
  %2001 = bitcast i32 %2000 to float
  %2002 = fmul fast float %2001, %1997
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  br label %2004

; <label>:2004                                    ; preds = %1958, %1952
  %2005 = phi float [ %2003, %1958 ], [ %1953, %1952 ]
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = and i32 %2007, 128
  %2009 = icmp eq i32 %2008, 0
  br i1 %2009, label %2026, label %2010

; <label>:2010                                    ; preds = %2004
  %2011 = add i32 %37, 432
  %2012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2011, i32 undef)  ; BufferLoad(srv,index,wot)
  %2013 = extractvalue %dx.types.ResRet.i32 %2012, 0
  %2014 = add i32 %2013, 0
  %2015 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2014, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2016 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2015, %dx.types.Handle %61, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.i32 %2018, 0
  %2020 = and i32 %2019, 524288
  %2021 = icmp ne i32 %2020, 0
  %2022 = fcmp fast ogt float %2017, 0x3FE0101020000000
  %2023 = select i1 %2022, float 1.000000e+00, float 0.000000e+00
  %2024 = select i1 %2021, float %2023, float %2017
  %2025 = fmul fast float %2024, %2005
  br label %2026

; <label>:2026                                    ; preds = %2010, %2004
  %2027 = phi float [ %2025, %2010 ], [ %2005, %2004 ]
  %2028 = fcmp fast ult float %2027, 0x3F70101020000000
  br i1 %2028, label %2571, label %2029

; <label>:2029                                    ; preds = %2026
  %2030 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2031 = extractvalue %dx.types.ResRet.i32 %2030, 0
  %2032 = and i32 %2031, 16
  %2033 = icmp eq i32 %2032, 0
  br i1 %2033, label %2232, label %2034

; <label>:2034                                    ; preds = %2029
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = add i32 %37, 384
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = add i32 %2039, 0
  %2041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2040, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2042 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2041, %dx.types.Handle %60, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2043 = extractvalue %dx.types.ResRet.f32 %2042, 0
  %2044 = extractvalue %dx.types.ResRet.f32 %2042, 1
  %2045 = extractvalue %dx.types.ResRet.f32 %2042, 2
  %2046 = extractvalue %dx.types.ResRet.f32 %2042, 3
  %2047 = and i32 %2036, 255
  %2048 = uitofp i32 %2047 to float
  %2049 = lshr i32 %2036, 8
  %2050 = and i32 %2049, 255
  %2051 = uitofp i32 %2050 to float
  %2052 = fmul fast float %2046, %2048
  %2053 = fadd fast float %2052, %2051
  %2054 = fmul fast float %2053, 0x3F70101000000000
  %2055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2056 = extractvalue %dx.types.ResRet.i32 %2055, 0
  %2057 = and i32 %2056, 512
  %2058 = icmp eq i32 %2057, 0
  br i1 %2058, label %2067, label %2059

; <label>:2059                                    ; preds = %2034
  %2060 = add i32 %37, 464
  %2061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2060, i32 undef)  ; BufferLoad(srv,index,wot)
  %2062 = extractvalue %dx.types.ResRet.i32 %2061, 0
  %2063 = add i32 %2062, 0
  %2064 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2063, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2065 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2064, %dx.types.Handle %61, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2066 = extractvalue %dx.types.ResRet.f32 %2065, 0
  br label %2067

; <label>:2067                                    ; preds = %2059, %2034
  %2068 = phi float [ %2066, %2059 ], [ 1.000000e+00, %2034 ]
  %2069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2070 = extractvalue %dx.types.ResRet.i32 %2069, 0
  %2071 = and i32 %2070, 33554432
  %2072 = icmp eq i32 %2071, 0
  br i1 %2072, label %2179, label %2073

; <label>:2073                                    ; preds = %2067
  %2074 = add i32 %37, 256
  %2075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2074, i32 undef)  ; BufferLoad(srv,index,wot)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = and i32 %2076, 65535
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = lshr i32 %2076, 16
  %2080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2079)  ; LegacyF16ToF32(value)
  %2081 = add i32 %37, 260
  %2082 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2081, i32 undef)  ; BufferLoad(srv,index,wot)
  %2083 = extractvalue %dx.types.ResRet.i32 %2082, 0
  %2084 = and i32 %2083, 65535
  %2085 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2084)  ; LegacyF16ToF32(value)
  %2086 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2087 = extractvalue %dx.types.ResRet.i32 %2086, 0
  %2088 = lshr i32 %2087, 24
  %2089 = uitofp i32 %2088 to float
  %2090 = fmul fast float %2089, 0x3F70101020000000
  %2091 = and i32 %2087, 255
  %2092 = uitofp i32 %2091 to float
  %2093 = fmul fast float %2092, 0x3F70101020000000
  %2094 = lshr i32 %2087, 8
  %2095 = and i32 %2094, 255
  %2096 = uitofp i32 %2095 to float
  %2097 = fmul fast float %2096, 0x3F70101020000000
  %2098 = lshr i32 %2087, 16
  %2099 = and i32 %2098, 255
  %2100 = uitofp i32 %2099 to float
  %2101 = fmul fast float %2100, 0x3F70101020000000
  %2102 = add i32 %37, 252
  %2103 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2102, i32 undef)  ; BufferLoad(srv,index,wot)
  %2104 = extractvalue %dx.types.ResRet.i32 %2103, 0
  %2105 = lshr i32 %2104, 24
  %2106 = uitofp i32 %2105 to float
  %2107 = fmul fast float %2106, 0x3F70101020000000
  %2108 = and i32 %2104, 255
  %2109 = uitofp i32 %2108 to float
  %2110 = fmul fast float %2109, 0x3F70101020000000
  %2111 = lshr i32 %2104, 8
  %2112 = and i32 %2111, 255
  %2113 = uitofp i32 %2112 to float
  %2114 = fmul fast float %2113, 0x3F70101020000000
  %2115 = lshr i32 %2104, 16
  %2116 = and i32 %2115, 255
  %2117 = uitofp i32 %2116 to float
  %2118 = fmul fast float %2117, 0x3F70101020000000
  %2119 = bitcast float %2043 to i32
  %2120 = ashr i32 %2119, 1
  %2121 = sub nsw i32 1597463174, %2120
  %2122 = bitcast i32 %2121 to float
  %2123 = fmul fast float %2043, 5.000000e-01
  %2124 = fmul fast float %2122, %2122
  %2125 = fmul fast float %2124, %2123
  %2126 = fsub fast float 1.500000e+00, %2125
  %2127 = fmul fast float %2122, %2043
  %2128 = fmul fast float %2127, %2126
  %2129 = bitcast float %2044 to i32
  %2130 = ashr i32 %2129, 1
  %2131 = sub nsw i32 1597463174, %2130
  %2132 = bitcast i32 %2131 to float
  %2133 = fmul fast float %2044, 5.000000e-01
  %2134 = fmul fast float %2132, %2132
  %2135 = fmul fast float %2134, %2133
  %2136 = fsub fast float 1.500000e+00, %2135
  %2137 = fmul fast float %2132, %2044
  %2138 = fmul fast float %2137, %2136
  %2139 = bitcast float %2045 to i32
  %2140 = ashr i32 %2139, 1
  %2141 = sub nsw i32 1597463174, %2140
  %2142 = bitcast i32 %2141 to float
  %2143 = fmul fast float %2045, 5.000000e-01
  %2144 = fmul fast float %2142, %2142
  %2145 = fmul fast float %2144, %2143
  %2146 = fsub fast float 1.500000e+00, %2145
  %2147 = fmul fast float %2142, %2045
  %2148 = fmul fast float %2147, %2146
  %2149 = fsub fast float %2128, %2110
  %2150 = fsub fast float %2138, %2114
  %2151 = fsub fast float %2148, %2118
  %2152 = fmul fast float %2149, %2078
  %2153 = fmul fast float %2150, %2080
  %2154 = fmul fast float %2151, %2085
  %2155 = fadd fast float %2152, %2093
  %2156 = fadd fast float %2153, %2097
  %2157 = fadd fast float %2154, %2101
  %2158 = call float @dx.op.unary.f32(i32 7, float %2155)  ; Saturate(value)
  %2159 = call float @dx.op.unary.f32(i32 7, float %2156)  ; Saturate(value)
  %2160 = call float @dx.op.unary.f32(i32 7, float %2157)  ; Saturate(value)
  %2161 = fmul fast float %2158, %2158
  %2162 = fmul fast float %2159, %2159
  %2163 = fmul fast float %2160, %2160
  %2164 = fsub fast float %2161, %2043
  %2165 = fsub fast float %2162, %2044
  %2166 = fsub fast float %2163, %2045
  %2167 = fmul fast float %2164, %2068
  %2168 = fmul fast float %2165, %2068
  %2169 = fmul fast float %2166, %2068
  %2170 = fadd fast float %2167, %2043
  %2171 = fadd fast float %2168, %2044
  %2172 = fadd fast float %2169, %2045
  %2173 = fadd fast float %2090, %2054
  %2174 = fsub fast float %2173, %2107
  %2175 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2176 = fsub fast float %2175, %2054
  %2177 = fmul fast float %2176, %2068
  %2178 = fadd fast float %2177, %2054
  br label %2232

; <label>:2179                                    ; preds = %2067
  %2180 = and i32 %2070, 134217728
  %2181 = icmp eq i32 %2180, 0
  br i1 %2181, label %2216, label %2182

; <label>:2182                                    ; preds = %2179
  %2183 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %2184 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %2185 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %2186 = fadd fast float %2183, -5.000000e-01
  %2187 = fadd fast float %2184, -5.000000e-01
  %2188 = fadd fast float %2185, -5.000000e-01
  %2189 = fmul fast float %2186, %2068
  %2190 = fmul fast float %2187, %2068
  %2191 = fmul fast float %2188, %2068
  %2192 = fadd fast float %2189, 5.000000e-01
  %2193 = fadd fast float %2190, 5.000000e-01
  %2194 = fadd fast float %2191, 5.000000e-01
  %2195 = call float @dx.op.unary.f32(i32 24, float %2043)  ; Sqrt(value)
  %2196 = call float @dx.op.unary.f32(i32 24, float %2044)  ; Sqrt(value)
  %2197 = call float @dx.op.unary.f32(i32 24, float %2045)  ; Sqrt(value)
  %2198 = fmul fast float %2192, 2.000000e+00
  %2199 = fsub fast float 1.000000e+00, %2198
  %2200 = fmul fast float %2199, %2195
  %2201 = fadd fast float %2200, %2198
  %2202 = fmul fast float %2201, %2195
  %2203 = fmul fast float %2193, 2.000000e+00
  %2204 = fsub fast float 1.000000e+00, %2203
  %2205 = fmul fast float %2204, %2196
  %2206 = fadd fast float %2205, %2203
  %2207 = fmul fast float %2206, %2196
  %2208 = fmul fast float %2194, 2.000000e+00
  %2209 = fsub fast float 1.000000e+00, %2208
  %2210 = fmul fast float %2209, %2197
  %2211 = fadd fast float %2210, %2208
  %2212 = fmul fast float %2211, %2197
  %2213 = fmul fast float %2202, %2202
  %2214 = fmul fast float %2207, %2207
  %2215 = fmul fast float %2212, %2212
  br label %2232

; <label>:2216                                    ; preds = %2179
  %2217 = fmul fast float %269, %269
  %2218 = fmul fast float %273, %273
  %2219 = fmul fast float %277, %277
  %2220 = fadd fast float %2217, -1.000000e+00
  %2221 = fadd fast float %2218, -1.000000e+00
  %2222 = fadd fast float %2219, -1.000000e+00
  %2223 = fmul fast float %2068, %2220
  %2224 = fmul fast float %2068, %2221
  %2225 = fmul fast float %2068, %2222
  %2226 = fadd fast float %2223, 1.000000e+00
  %2227 = fadd fast float %2224, 1.000000e+00
  %2228 = fadd fast float %2225, 1.000000e+00
  %2229 = fmul fast float %2226, %2043
  %2230 = fmul fast float %2227, %2044
  %2231 = fmul fast float %2228, %2045
  br label %2232

; <label>:2232                                    ; preds = %2216, %2182, %2073, %2029
  %2233 = phi float [ %2178, %2073 ], [ %2054, %2182 ], [ %2054, %2216 ], [ 0x3FA23C0BE0000000, %2029 ]
  %2234 = phi float [ %2170, %2073 ], [ %2213, %2182 ], [ %2229, %2216 ], [ 1.000000e+00, %2029 ]
  %2235 = phi float [ %2171, %2073 ], [ %2214, %2182 ], [ %2230, %2216 ], [ 1.000000e+00, %2029 ]
  %2236 = phi float [ %2172, %2073 ], [ %2215, %2182 ], [ %2231, %2216 ], [ 1.000000e+00, %2029 ]
  %2237 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2238 = extractvalue %dx.types.CBufRet.i32 %2237, 1
  %2239 = and i32 %2238, 1
  %2240 = icmp ne i32 %2239, 0
  %2241 = add i32 %37, 356
  %2242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2241, i32 undef)  ; BufferLoad(srv,index,wot)
  %2243 = extractvalue %dx.types.ResRet.i32 %2242, 0
  %2244 = and i32 %2243, 32
  %2245 = icmp ne i32 %2244, 0
  %2246 = and i1 %2240, %2245
  %2247 = select i1 %2246, float 1.000000e+00, float %2234
  %2248 = select i1 %2246, float 0x3FD3333340000000, float %2235
  %2249 = select i1 %2246, float 0x3FD3333340000000, float %2236
  %2250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2251 = extractvalue %dx.types.ResRet.i32 %2250, 0
  %2252 = and i32 %2251, 32
  %2253 = icmp eq i32 %2252, 0
  br i1 %2253, label %2326, label %2254

; <label>:2254                                    ; preds = %2232
  %2255 = add i32 %37, 124
  %2256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2255, i32 undef)  ; BufferLoad(srv,index,wot)
  %2257 = extractvalue %dx.types.ResRet.i32 %2256, 0
  %2258 = add i32 %37, 400
  %2259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2258, i32 undef)  ; BufferLoad(srv,index,wot)
  %2260 = extractvalue %dx.types.ResRet.i32 %2259, 0
  %2261 = add i32 %2260, 0
  %2262 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2261, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2263 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2262, %dx.types.Handle %60, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2264 = extractvalue %dx.types.ResRet.f32 %2263, 0
  %2265 = extractvalue %dx.types.ResRet.f32 %2263, 1
  %2266 = extractvalue %dx.types.ResRet.f32 %2263, 2
  %2267 = extractvalue %dx.types.ResRet.f32 %2263, 3
  %2268 = and i32 %2257, 255
  %2269 = uitofp i32 %2268 to float
  %2270 = lshr i32 %2257, 8
  %2271 = and i32 %2270, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = lshr i32 %2257, 16
  %2274 = and i32 %2273, 255
  %2275 = uitofp i32 %2274 to float
  %2276 = fmul fast float %2275, 0x3F70101000000000
  %2277 = fmul fast float %2264, %2269
  %2278 = fadd fast float %2277, %2272
  %2279 = fmul fast float %2278, 0x3F70101000000000
  %2280 = fadd fast float %2265, -5.000000e-01
  %2281 = fadd fast float %2267, -5.000000e-01
  %2282 = fmul fast float %2280, %2276
  %2283 = fmul fast float %2281, %2276
  %2284 = fadd fast float %2282, 5.000000e-01
  %2285 = fadd fast float %2283, 5.000000e-01
  %2286 = fmul fast float %2284, 2.000000e+00
  %2287 = fadd fast float %2286, -1.000000e+00
  %2288 = fmul fast float %2285, 2.000000e+00
  %2289 = fadd fast float %2288, -1.000000e+00
  %2290 = fadd fast float %2287, %2289
  %2291 = fmul fast float %2290, 5.000000e-01
  %2292 = fsub fast float %2287, %2289
  %2293 = fmul fast float %2292, 5.000000e-01
  %2294 = call float @dx.op.unary.f32(i32 6, float %2291)  ; FAbs(value)
  %2295 = fsub fast float 1.000000e+00, %2294
  %2296 = call float @dx.op.unary.f32(i32 6, float %2293)  ; FAbs(value)
  %2297 = fsub fast float %2295, %2296
  %2298 = call float @dx.op.dot3.f32(i32 55, float %2291, float %2293, float %2297, float %2291, float %2293, float %2297)  ; Dot3(ax,ay,az,bx,by,bz)
  %2299 = call float @dx.op.unary.f32(i32 25, float %2298)  ; Rsqrt(value)
  %2300 = fmul fast float %2291, %2299
  %2301 = fmul fast float %2293, %2299
  %2302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2303 = extractvalue %dx.types.ResRet.i32 %2302, 0
  %2304 = and i32 %2303, 67108864
  %2305 = icmp eq i32 %2304, 0
  br i1 %2305, label %2322, label %2306

; <label>:2306                                    ; preds = %2254
  %2307 = add i32 %37, 312
  %2308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2307, i32 undef)  ; BufferLoad(srv,index,wot)
  %2309 = extractvalue %dx.types.ResRet.i32 %2308, 0
  %2310 = and i32 %2309, 65535
  %2311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2310)  ; LegacyF16ToF32(value)
  %2312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2313 = extractvalue %dx.types.ResRet.i32 %2312, 0
  %2314 = and i32 %2313, 65535
  %2315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2314)  ; LegacyF16ToF32(value)
  %2316 = lshr i32 %2309, 16
  %2317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2316)  ; LegacyF16ToF32(value)
  %2318 = fsub fast float %2279, %2317
  %2319 = fmul fast float %2318, %2311
  %2320 = fadd fast float %2319, %2315
  %2321 = call float @dx.op.unary.f32(i32 7, float %2320)  ; Saturate(value)
  br label %2322

; <label>:2322                                    ; preds = %2306, %2254
  %2323 = phi float [ %2321, %2306 ], [ %2279, %2254 ]
  %2324 = call float @dx.op.dot2.f32(i32 54, float %2300, float %2301, float %1743, float %1744)  ; Dot2(ax,ay,bx,by)
  %2325 = call float @dx.op.dot2.f32(i32 54, float %2300, float %2301, float %1745, float %1746)  ; Dot2(ax,ay,bx,by)
  br label %2326

; <label>:2326                                    ; preds = %2322, %2232
  %2327 = phi float [ %2323, %2322 ], [ 0x3FD6666660000000, %2232 ]
  %2328 = phi float [ %2324, %2322 ], [ 0.000000e+00, %2232 ]
  %2329 = phi float [ %2325, %2322 ], [ 0.000000e+00, %2232 ]
  %2330 = phi float [ %2266, %2322 ], [ 1.000000e+00, %2232 ]
  %2331 = add i32 %37, 192
  %2332 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2331, i32 undef)  ; BufferLoad(srv,index,wot)
  %2333 = extractvalue %dx.types.ResRet.i32 %2332, 0
  %2334 = lshr i32 %2333, 22
  %2335 = shl nuw nsw i32 %2334, 5
  %2336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2335)  ; LegacyF16ToF32(value)
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 64
  %2340 = icmp eq i32 %2339, 0
  br i1 %2340, label %2374, label %2341

; <label>:2341                                    ; preds = %2326
  %2342 = add i32 %37, 416
  %2343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2342, i32 undef)  ; BufferLoad(srv,index,wot)
  %2344 = extractvalue %dx.types.ResRet.i32 %2343, 0
  %2345 = add i32 %2344, 0
  %2346 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2345, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = and i32 %2348, 131072
  %2350 = icmp eq i32 %2349, 0
  %2351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2346, %dx.types.Handle %60, float %1839, float %1840, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2352 = extractvalue %dx.types.ResRet.f32 %2351, 0
  %2353 = extractvalue %dx.types.ResRet.f32 %2351, 1
  %2354 = extractvalue %dx.types.ResRet.f32 %2351, 2
  %2355 = fmul fast float %2352, %257
  %2356 = fmul fast float %2353, %260
  %2357 = fmul fast float %2354, %263
  br i1 %2350, label %2364, label %2358

; <label>:2358                                    ; preds = %2341
  %2359 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2360 = extractvalue %dx.types.CBufRet.f32 %2359, 0
  %2361 = fmul fast float %2360, %2355
  %2362 = fmul fast float %2360, %2356
  %2363 = fmul fast float %2360, %2357
  br label %2364

; <label>:2364                                    ; preds = %2358, %2341
  %2365 = phi float [ %2361, %2358 ], [ %2355, %2341 ]
  %2366 = phi float [ %2362, %2358 ], [ %2356, %2341 ]
  %2367 = phi float [ %2363, %2358 ], [ %2357, %2341 ]
  %2368 = fmul fast float %2365, %2336
  %2369 = select i1 %167, float %2368, float %2365
  %2370 = call float @dx.op.dot3.f32(i32 55, float %2369, float %2366, float %2367, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2371 = select i1 %167, float 0.000000e+00, float %2365
  %2372 = select i1 %167, float %2370, float %2366
  %2373 = select i1 %167, float 0.000000e+00, float %2367
  br label %2374

; <label>:2374                                    ; preds = %2364, %2326
  %2375 = phi float [ %2371, %2364 ], [ 0.000000e+00, %2326 ]
  %2376 = phi float [ %2372, %2364 ], [ 0.000000e+00, %2326 ]
  %2377 = phi float [ %2373, %2364 ], [ 0.000000e+00, %2326 ]
  %2378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1732, i32 undef)  ; BufferLoad(srv,index,wot)
  %2379 = extractvalue %dx.types.ResRet.i32 %2378, 0
  %2380 = add i32 %37, 128
  %2381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2380, i32 undef)  ; BufferLoad(srv,index,wot)
  %2382 = extractvalue %dx.types.ResRet.i32 %2381, 0
  %2383 = and i32 %2382, 255
  %2384 = uitofp i32 %2383 to float
  %2385 = lshr i32 %2382, 8
  %2386 = and i32 %2385, 255
  %2387 = uitofp i32 %2386 to float
  %2388 = call float @dx.op.dot3.f32(i32 55, float %2247, float %2248, float %2249, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2389 = fmul fast float %2387, %2388
  %2390 = fadd fast float %2389, %2384
  %2391 = fmul fast float %2390, 0x3F70101020000000
  %2392 = call float @dx.op.unary.f32(i32 7, float %2391)  ; Saturate(value)
  br i1 %1731, label %2393, label %2401

; <label>:2393                                    ; preds = %2374
  %2394 = fsub fast float 1.000000e+00, %2027
  %2395 = fmul fast float %2394, %1723
  %2396 = fmul fast float %2394, %1724
  %2397 = fmul fast float %2394, %1725
  %2398 = fmul fast float %2394, %1720
  %2399 = fmul fast float %2394, %1721
  %2400 = fmul fast float %2394, %1722
  br label %2401

; <label>:2401                                    ; preds = %2393, %2374
  %2402 = phi float [ %2398, %2393 ], [ %1720, %2374 ]
  %2403 = phi float [ %2399, %2393 ], [ %1721, %2374 ]
  %2404 = phi float [ %2400, %2393 ], [ %1722, %2374 ]
  %2405 = phi float [ %2395, %2393 ], [ %1723, %2374 ]
  %2406 = phi float [ %2396, %2393 ], [ %1724, %2374 ]
  %2407 = phi float [ %2397, %2393 ], [ %1725, %2374 ]
  %2408 = and i32 %2379, 3
  %2409 = icmp eq i32 %2408, 3
  br i1 %2409, label %2488, label %2410

; <label>:2410                                    ; preds = %2401
  %2411 = and i32 %2379, 16
  %2412 = icmp ne i32 %2411, 0
  %2413 = select i1 %2412, float %2027, float 0.000000e+00
  %2414 = icmp eq i32 %2408, 0
  br i1 %2414, label %2415, label %2443

; <label>:2415                                    ; preds = %2410
  %2416 = and i32 %2379, 64
  %2417 = icmp ne i32 %2416, 0
  %2418 = select i1 %2417, float %2027, float 0.000000e+00
  %2419 = fsub fast float %2247, %2405
  %2420 = fsub fast float %2248, %2406
  %2421 = fsub fast float %2249, %2407
  %2422 = fmul fast float %2413, %2419
  %2423 = fmul fast float %2413, %2420
  %2424 = fmul fast float %2413, %2421
  %2425 = fadd fast float %2422, %2405
  %2426 = fadd fast float %2423, %2406
  %2427 = fadd fast float %2424, %2407
  %2428 = fsub fast float %2233, %1726
  %2429 = fmul fast float %2413, %2428
  %2430 = fadd fast float %2429, %1726
  %2431 = fsub fast float %2375, %2402
  %2432 = fsub fast float %2376, %2403
  %2433 = fsub fast float %2377, %2404
  %2434 = fmul fast float %2418, %2431
  %2435 = fmul fast float %2418, %2432
  %2436 = fmul fast float %2418, %2433
  %2437 = fadd fast float %2434, %2402
  %2438 = fadd fast float %2435, %2403
  %2439 = fadd fast float %2436, %2404
  %2440 = fsub fast float %2392, %1729
  %2441 = fmul fast float %2413, %2440
  %2442 = fadd fast float %2441, %1729
  br label %2488

; <label>:2443                                    ; preds = %2410
  %2444 = icmp eq i32 %2408, 1
  br i1 %2444, label %2445, label %2458

; <label>:2445                                    ; preds = %2443
  %2446 = fadd fast float %2247, -1.000000e+00
  %2447 = fadd fast float %2248, -1.000000e+00
  %2448 = fadd fast float %2249, -1.000000e+00
  %2449 = fmul fast float %2413, %2446
  %2450 = fmul fast float %2413, %2447
  %2451 = fmul fast float %2413, %2448
  %2452 = fadd fast float %2449, 1.000000e+00
  %2453 = fadd fast float %2450, 1.000000e+00
  %2454 = fadd fast float %2451, 1.000000e+00
  %2455 = fmul fast float %2452, %2405
  %2456 = fmul fast float %2453, %2406
  %2457 = fmul fast float %2454, %2407
  br label %2488

; <label>:2458                                    ; preds = %2443
  %2459 = icmp eq i32 %2408, 2
  br i1 %2459, label %2460, label %2488

; <label>:2460                                    ; preds = %2458
  %2461 = call float @dx.op.unary.f32(i32 24, float %2247)  ; Sqrt(value)
  %2462 = call float @dx.op.unary.f32(i32 24, float %2248)  ; Sqrt(value)
  %2463 = call float @dx.op.unary.f32(i32 24, float %2249)  ; Sqrt(value)
  %2464 = fadd fast float %2461, -5.000000e-01
  %2465 = fadd fast float %2462, -5.000000e-01
  %2466 = fadd fast float %2463, -5.000000e-01
  %2467 = fmul fast float %2464, %2413
  %2468 = fmul fast float %2465, %2413
  %2469 = fmul fast float %2466, %2413
  %2470 = fadd fast float %2467, 5.000000e-01
  %2471 = fadd fast float %2468, 5.000000e-01
  %2472 = fadd fast float %2469, 5.000000e-01
  %2473 = fmul fast float %2470, 2.000000e+00
  %2474 = fsub fast float 1.000000e+00, %2473
  %2475 = fmul fast float %2474, %2405
  %2476 = fadd fast float %2475, %2473
  %2477 = fmul fast float %2476, %2405
  %2478 = fmul fast float %2471, 2.000000e+00
  %2479 = fsub fast float 1.000000e+00, %2478
  %2480 = fmul fast float %2479, %2406
  %2481 = fadd fast float %2480, %2478
  %2482 = fmul fast float %2481, %2406
  %2483 = fmul fast float %2472, 2.000000e+00
  %2484 = fsub fast float 1.000000e+00, %2483
  %2485 = fmul fast float %2484, %2407
  %2486 = fadd fast float %2485, %2483
  %2487 = fmul fast float %2486, %2407
  br label %2488

; <label>:2488                                    ; preds = %2460, %2458, %2445, %2415, %2401
  %2489 = phi float [ %2402, %2401 ], [ %2402, %2460 ], [ %2402, %2458 ], [ %2402, %2445 ], [ %2437, %2415 ]
  %2490 = phi float [ %2403, %2401 ], [ %2403, %2460 ], [ %2403, %2458 ], [ %2403, %2445 ], [ %2438, %2415 ]
  %2491 = phi float [ %2404, %2401 ], [ %2404, %2460 ], [ %2404, %2458 ], [ %2404, %2445 ], [ %2439, %2415 ]
  %2492 = phi float [ %2405, %2401 ], [ %2477, %2460 ], [ %2405, %2458 ], [ %2455, %2445 ], [ %2425, %2415 ]
  %2493 = phi float [ %2406, %2401 ], [ %2482, %2460 ], [ %2406, %2458 ], [ %2456, %2445 ], [ %2426, %2415 ]
  %2494 = phi float [ %2407, %2401 ], [ %2487, %2460 ], [ %2407, %2458 ], [ %2457, %2445 ], [ %2427, %2415 ]
  %2495 = phi float [ %1726, %2401 ], [ %1726, %2460 ], [ %1726, %2458 ], [ %1726, %2445 ], [ %2430, %2415 ]
  %2496 = phi float [ %1729, %2401 ], [ %1729, %2460 ], [ %1729, %2458 ], [ %1729, %2445 ], [ %2442, %2415 ]
  %2497 = and i32 %2379, 12
  %2498 = icmp eq i32 %2497, 12
  br i1 %2498, label %2571, label %2499

; <label>:2499                                    ; preds = %2488
  %2500 = and i32 %2379, 2097184
  %2501 = icmp eq i32 %2500, 2097184
  %2502 = select i1 %2501, float %2027, float 0.000000e+00
  %2503 = and i32 %2379, 4194336
  %2504 = icmp eq i32 %2503, 4194336
  %2505 = select i1 %2504, float %2027, float 0.000000e+00
  %2506 = and i32 %2379, 8388640
  %2507 = icmp eq i32 %2506, 8388640
  %2508 = select i1 %2507, float %2027, float 0.000000e+00
  %2509 = icmp eq i32 %2497, 0
  br i1 %2509, label %2510, label %2523

; <label>:2510                                    ; preds = %2499
  %2511 = fsub fast float %2328, %1718
  %2512 = fsub fast float %2329, %1719
  %2513 = fmul fast float %2502, %2511
  %2514 = fmul fast float %2502, %2512
  %2515 = fadd fast float %2513, %1718
  %2516 = fadd fast float %2514, %1719
  %2517 = fsub fast float %2330, %1728
  %2518 = fmul fast float %2505, %2517
  %2519 = fadd fast float %2518, %1728
  %2520 = fsub fast float %2327, %1727
  %2521 = fmul fast float %2508, %2520
  %2522 = fadd fast float %2521, %1727
  br label %2571

; <label>:2523                                    ; preds = %2499
  %2524 = icmp eq i32 %2497, 4
  br i1 %2524, label %2525, label %2557

; <label>:2525                                    ; preds = %2523
  %2526 = fmul fast float %2502, %2328
  %2527 = fmul fast float %2502, %2329
  %2528 = fadd fast float %2526, %1718
  %2529 = fadd fast float %2527, %1719
  %2530 = call float @dx.op.binary.f32(i32 36, float %1728, float %2330)  ; FMin(a,b)
  %2531 = fsub fast float %2530, %1728
  %2532 = fmul fast float %2531, %2505
  %2533 = fadd fast float %2532, %1728
  %2534 = fadd fast float %2327, %1727
  %2535 = fmul fast float %2534, 0x3FF337FAE0000000
  %2536 = fmul fast float %1727, %1727
  %2537 = fmul fast float %2327, %2327
  %2538 = fadd fast float %2537, %2536
  %2539 = fmul fast float %2538, 0x3FE5152B00000000
  %2540 = fmul fast float %1727, 0xBFCC1F85E0000000
  %2541 = fmul fast float %2540, %2327
  %2542 = fadd fast float %2541, 0xBFE1363700000000
  %2543 = fadd fast float %2542, %2535
  %2544 = fsub fast float %2543, %2539
  %2545 = fmul fast float %2534, 0x3FBA6F0D00000000
  %2546 = fmul fast float %2538, 0x3FD0432880000000
  %2547 = fmul fast float %1727, 0xBFEF110800000000
  %2548 = fmul fast float %2547, %2327
  %2549 = fadd fast float %2548, 1.000000e+00
  %2550 = fsub fast float %2549, %2545
  %2551 = fadd fast float %2550, %2546
  %2552 = fdiv fast float %2544, %2551
  %2553 = call float @dx.op.unary.f32(i32 7, float %2552)  ; Saturate(value)
  %2554 = fsub fast float %2553, %1727
  %2555 = fmul fast float %2554, %2508
  %2556 = fadd fast float %2555, %1727
  br label %2571

; <label>:2557                                    ; preds = %2523
  %2558 = icmp eq i32 %2497, 8
  br i1 %2558, label %2559, label %2571

; <label>:2559                                    ; preds = %2557
  %2560 = fmul fast float %2502, %2328
  %2561 = fmul fast float %2502, %2329
  %2562 = fadd fast float %2560, %1718
  %2563 = fadd fast float %2561, %1719
  %2564 = call float @dx.op.binary.f32(i32 36, float %1728, float %2330)  ; FMin(a,b)
  %2565 = fsub fast float %2564, %1728
  %2566 = fmul fast float %2565, %2505
  %2567 = fadd fast float %2566, %1728
  %2568 = fsub fast float %2327, %1727
  %2569 = fmul fast float %2508, %2568
  %2570 = fadd fast float %2569, %1727
  br label %2571

; <label>:2571                                    ; preds = %2559, %2557, %2525, %2510, %2488, %2026, %1730, %1717
  %2572 = phi float [ %1718, %2488 ], [ %1718, %2026 ], [ %1718, %1717 ], [ %2562, %2559 ], [ %1718, %2557 ], [ %2528, %2525 ], [ %2515, %2510 ], [ %1718, %1730 ]
  %2573 = phi float [ %1719, %2488 ], [ %1719, %2026 ], [ %1719, %1717 ], [ %2563, %2559 ], [ %1719, %2557 ], [ %2529, %2525 ], [ %2516, %2510 ], [ %1719, %1730 ]
  %2574 = phi float [ %2489, %2488 ], [ %1720, %2026 ], [ %1720, %1717 ], [ %2489, %2559 ], [ %2489, %2557 ], [ %2489, %2525 ], [ %2489, %2510 ], [ %1720, %1730 ]
  %2575 = phi float [ %2490, %2488 ], [ %1721, %2026 ], [ %1721, %1717 ], [ %2490, %2559 ], [ %2490, %2557 ], [ %2490, %2525 ], [ %2490, %2510 ], [ %1721, %1730 ]
  %2576 = phi float [ %2491, %2488 ], [ %1722, %2026 ], [ %1722, %1717 ], [ %2491, %2559 ], [ %2491, %2557 ], [ %2491, %2525 ], [ %2491, %2510 ], [ %1722, %1730 ]
  %2577 = phi float [ %2492, %2488 ], [ %1723, %2026 ], [ %1723, %1717 ], [ %2492, %2559 ], [ %2492, %2557 ], [ %2492, %2525 ], [ %2492, %2510 ], [ %1723, %1730 ]
  %2578 = phi float [ %2493, %2488 ], [ %1724, %2026 ], [ %1724, %1717 ], [ %2493, %2559 ], [ %2493, %2557 ], [ %2493, %2525 ], [ %2493, %2510 ], [ %1724, %1730 ]
  %2579 = phi float [ %2494, %2488 ], [ %1725, %2026 ], [ %1725, %1717 ], [ %2494, %2559 ], [ %2494, %2557 ], [ %2494, %2525 ], [ %2494, %2510 ], [ %1725, %1730 ]
  %2580 = phi float [ %2495, %2488 ], [ %1726, %2026 ], [ %1726, %1717 ], [ %2495, %2559 ], [ %2495, %2557 ], [ %2495, %2525 ], [ %2495, %2510 ], [ %1726, %1730 ]
  %2581 = phi float [ %1727, %2488 ], [ %1727, %2026 ], [ %1727, %1717 ], [ %2570, %2559 ], [ %1727, %2557 ], [ %2556, %2525 ], [ %2522, %2510 ], [ %1727, %1730 ]
  %2582 = phi float [ %1728, %2488 ], [ %1728, %2026 ], [ %1728, %1717 ], [ %2567, %2559 ], [ %1728, %2557 ], [ %2533, %2525 ], [ %2519, %2510 ], [ %1728, %1730 ]
  %2583 = phi float [ %2496, %2488 ], [ %1729, %2026 ], [ %1729, %1717 ], [ %2496, %2559 ], [ %2496, %2557 ], [ %2496, %2525 ], [ %2496, %2510 ], [ %1729, %1730 ]
  br i1 %344, label %3425, label %2584

; <label>:2584                                    ; preds = %2571
  %2585 = icmp ult i32 %395, 4
  %2586 = add i32 %37, 72
  %2587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2588 = extractvalue %dx.types.ResRet.i32 %2587, 0
  %2589 = add i32 %37, 76
  %2590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2589, i32 undef)  ; BufferLoad(srv,index,wot)
  %2591 = extractvalue %dx.types.ResRet.i32 %2590, 0
  %2592 = or i32 %2591, %2588
  %2593 = icmp eq i32 %2592, 0
  br i1 %2593, label %3425, label %2594

; <label>:2594                                    ; preds = %2584
  %2595 = and i32 %2588, 262144
  %2596 = icmp ne i32 %2595, 0
  %2597 = select i1 %2596, float %39, float 1.000000e+00
  %2598 = select i1 %2596, float %40, float 0.000000e+00
  %2599 = select i1 %2596, float %41, float 0.000000e+00
  %2600 = select i1 %2596, float %42, float 1.000000e+00
  %2601 = select i1 %2596, float %43, float %52
  %2602 = select i1 %2596, float %44, float %53
  %2603 = add i32 %37, 332
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = lshr i32 %2605, 16
  %2607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2606)  ; LegacyF16ToF32(value)
  %2608 = fmul fast float %2607, 0x3F50624DE0000000
  %2609 = add i32 %37, 136
  %2610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2611 = extractvalue %dx.types.ResRet.i32 %2610, 0
  %2612 = lshr i32 %2611, 16
  %2613 = and i32 %2612, 255
  %2614 = lshr i32 %2611, 24
  %2615 = add i32 %37, 340
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = and i32 %2617, 65535
  %2619 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2618)  ; LegacyF16ToF32(value)
  %2620 = lshr i32 %2617, 16
  %2621 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2620)  ; LegacyF16ToF32(value)
  %2622 = add i32 %37, 80
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2622, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = lshr i32 %2624, 22
  %2626 = shl nuw nsw i32 %2625, 5
  %2627 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2626)  ; LegacyF16ToF32(value)
  %2628 = shl i32 %2624, 4
  %2629 = and i32 %2628, 32752
  %2630 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2629)  ; LegacyF16ToF32(value)
  %2631 = lshr i32 %2624, 7
  %2632 = and i32 %2631, 32752
  %2633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2632)  ; LegacyF16ToF32(value)
  %2634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2635 = extractvalue %dx.types.CBufRet.f32 %2634, 3
  %2636 = fmul fast float %2635, 1.000000e+03
  %2637 = fmul fast float %334, %2636
  %2638 = call float @dx.op.unary.f32(i32 22, float %2637)  ; Frc(value)
  %2639 = fadd fast float %2638, %324
  %2640 = fmul fast float %335, %2636
  %2641 = call float @dx.op.unary.f32(i32 22, float %2640)  ; Frc(value)
  %2642 = fadd fast float %2641, %326
  %2643 = fmul fast float %2608, %2636
  %2644 = call float @dx.op.unary.f32(i32 22, float %2643)  ; Frc(value)
  %2645 = fmul fast float %2644, 0x401921FB60000000
  %2646 = fadd fast float %2645, %2627
  %2647 = call float @dx.op.unary.f32(i32 13, float %2646)  ; Sin(value)
  %2648 = call float @dx.op.unary.f32(i32 12, float %2646)  ; Cos(value)
  %2649 = fsub fast float -0.000000e+00, %2647
  %2650 = fadd fast float %2601, -5.000000e-01
  %2651 = fadd fast float %2602, -5.000000e-01
  %2652 = fmul fast float %2619, %2650
  %2653 = fmul fast float %2621, %2651
  %2654 = fadd fast float %2652, 5.000000e-01
  %2655 = fadd fast float %2653, 5.000000e-01
  %2656 = fmul fast float %2630, %2654
  %2657 = fmul fast float %2633, %2655
  %2658 = fmul fast float %2648, %2656
  %2659 = call float @dx.op.tertiary.f32(i32 46, float %2649, float %2657, float %2658)  ; FMad(a,b,c)
  %2660 = fmul fast float %2647, %2656
  %2661 = call float @dx.op.tertiary.f32(i32 46, float %2648, float %2657, float %2660)  ; FMad(a,b,c)
  %2662 = fadd fast float %2639, %2659
  %2663 = fadd fast float %2642, %2661
  %2664 = icmp ugt i32 %2613, 1
  %2665 = icmp ugt i32 %2611, 33554431
  %2666 = or i1 %2665, %2664
  br i1 %2666, label %2667, label %2692

; <label>:2667                                    ; preds = %2594
  %2668 = add i32 %37, 276
  %2669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2668, i32 undef)  ; BufferLoad(srv,index,wot)
  %2670 = extractvalue %dx.types.ResRet.i32 %2669, 0
  %2671 = lshr i32 %2670, 16
  %2672 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2671)  ; LegacyF16ToF32(value)
  %2673 = fmul fast float %2635, %2672
  %2674 = call float @dx.op.unary.f32(i32 22, float %2673)  ; Frc(value)
  %2675 = mul nuw nsw i32 %2613, %2614
  %2676 = uitofp i32 %2675 to float
  %2677 = fmul fast float %2674, %2676
  %2678 = call float @dx.op.unary.f32(i32 27, float %2677)  ; Round_ni(value)
  %2679 = fptoui float %2678 to i32
  %2680 = urem i32 %2679, %2613
  %2681 = udiv i32 %2679, %2614
  %2682 = call float @dx.op.unary.f32(i32 22, float %2662)  ; Frc(value)
  %2683 = call float @dx.op.unary.f32(i32 22, float %2663)  ; Frc(value)
  %2684 = uitofp i32 %2680 to float
  %2685 = uitofp i32 %2681 to float
  %2686 = fadd fast float %2682, %2684
  %2687 = fadd fast float %2683, %2685
  %2688 = uitofp i32 %2613 to float
  %2689 = uitofp i32 %2614 to float
  %2690 = fdiv fast float %2686, %2688
  %2691 = fdiv fast float %2687, %2689
  br label %2692

; <label>:2692                                    ; preds = %2667, %2594
  %2693 = phi float [ %2690, %2667 ], [ %2662, %2594 ]
  %2694 = phi float [ %2691, %2667 ], [ %2663, %2594 ]
  %2695 = and i32 %2588, 16777216
  %2696 = icmp eq i32 %2695, 0
  br i1 %2696, label %2806, label %2697

; <label>:2697                                    ; preds = %2692
  %2698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2699 = extractvalue %dx.types.CBufRet.f32 %2698, 0
  %2700 = extractvalue %dx.types.CBufRet.f32 %2698, 1
  %2701 = extractvalue %dx.types.CBufRet.f32 %2698, 2
  %2702 = fadd fast float %2699, %123
  %2703 = fadd fast float %2700, %124
  %2704 = fadd fast float %2701, %125
  %2705 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2706 = extractvalue %dx.types.CBufRet.f32 %2705, 0
  %2707 = call float @dx.op.unary.f32(i32 7, float %2706)  ; Saturate(value)
  %2708 = icmp eq i32 %38, 65535
  br i1 %2708, label %2803, label %2709

; <label>:2709                                    ; preds = %2697
  %2710 = lshr i32 %38, 1
  %2711 = shl i32 %2710, 2
  %2712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2711, i32 undef)  ; BufferLoad(srv,index,wot)
  %2713 = extractvalue %dx.types.ResRet.i32 %2712, 0
  %2714 = and i32 %38, 1
  %2715 = icmp ne i32 %2714, 0
  %2716 = lshr i32 %2713, 16
  %2717 = and i32 %2713, 65535
  %2718 = select i1 %2715, i32 %2716, i32 %2717
  %2719 = icmp eq i32 %2718, 65535
  br i1 %2719, label %2799, label %2720

; <label>:2720                                    ; preds = %2709
  %2721 = mul nuw nsw i32 %2718, 40
  %2722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2721, i32 undef)  ; BufferLoad(srv,index,wot)
  %2723 = extractvalue %dx.types.ResRet.f32 %2722, 0
  %2724 = extractvalue %dx.types.ResRet.f32 %2722, 1
  %2725 = extractvalue %dx.types.ResRet.f32 %2722, 2
  %2726 = add nuw nsw i32 %2721, 12
  %2727 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.f32 %2727, 0
  %2729 = extractvalue %dx.types.ResRet.f32 %2727, 1
  %2730 = extractvalue %dx.types.ResRet.f32 %2727, 2
  %2731 = add nuw nsw i32 %2721, 24
  %2732 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2731, i32 undef)  ; BufferLoad(srv,index,wot)
  %2733 = extractvalue %dx.types.ResRet.f32 %2732, 0
  %2734 = extractvalue %dx.types.ResRet.f32 %2732, 1
  %2735 = extractvalue %dx.types.ResRet.f32 %2732, 2
  %2736 = add nuw nsw i32 %2721, 36
  %2737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.f32 %2737, 0
  %2739 = fsub fast float %2702, %2723
  %2740 = fsub fast float %2703, %2724
  %2741 = fsub fast float %2704, %2725
  %2742 = fmul fast float %2738, %2739
  %2743 = fmul fast float %2738, %2740
  %2744 = fmul fast float %2738, %2741
  %2745 = call float @dx.op.unary.f32(i32 27, float %2742)  ; Round_ni(value)
  %2746 = call float @dx.op.unary.f32(i32 27, float %2743)  ; Round_ni(value)
  %2747 = call float @dx.op.unary.f32(i32 27, float %2744)  ; Round_ni(value)
  %2748 = fadd fast float %2745, 5.000000e-01
  %2749 = fadd fast float %2746, 5.000000e-01
  %2750 = fadd fast float %2747, 5.000000e-01
  %2751 = fmul fast float %2748, %2728
  %2752 = fmul fast float %2749, %2729
  %2753 = fmul fast float %2750, %2730
  %2754 = shl i32 %38, 2
  %2755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.i32 %2755, 0
  %2757 = add i32 %2756, 0
  %2758 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2757, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2759 = call float @dx.op.unary.f32(i32 22, float %2751)  ; Frc(value)
  %2760 = call float @dx.op.unary.f32(i32 22, float %2752)  ; Frc(value)
  %2761 = call float @dx.op.unary.f32(i32 22, float %2753)  ; Frc(value)
  %2762 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2758, %dx.types.Handle %32, float %2759, float %2760, float %2761, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2763 = extractvalue %dx.types.ResRet.f32 %2762, 0
  %2764 = extractvalue %dx.types.ResRet.f32 %2762, 1
  %2765 = extractvalue %dx.types.ResRet.f32 %2762, 2
  %2766 = fmul fast float %2763, 1.023000e+03
  %2767 = fmul fast float %2764, 1.023000e+03
  %2768 = fmul fast float %2765, 1.023000e+03
  %2769 = fadd fast float %2766, 5.000000e-01
  %2770 = fadd fast float %2767, 5.000000e-01
  %2771 = fadd fast float %2768, 5.000000e-01
  %2772 = call float @dx.op.unary.f32(i32 27, float %2769)  ; Round_ni(value)
  %2773 = call float @dx.op.unary.f32(i32 27, float %2770)  ; Round_ni(value)
  %2774 = call float @dx.op.unary.f32(i32 27, float %2771)  ; Round_ni(value)
  %2775 = fsub fast float %2742, %2745
  %2776 = fsub fast float %2743, %2746
  %2777 = fsub fast float %2744, %2747
  %2778 = fmul fast float %2775, 7.500000e-01
  %2779 = fmul fast float %2776, 7.500000e-01
  %2780 = fmul fast float %2777, 7.500000e-01
  %2781 = fadd fast float %2745, 1.250000e-01
  %2782 = fadd fast float %2781, %2778
  %2783 = fadd fast float %2782, %2772
  %2784 = fadd fast float %2746, 1.250000e-01
  %2785 = fadd fast float %2784, %2779
  %2786 = fadd fast float %2785, %2773
  %2787 = fadd fast float %2747, 1.250000e-01
  %2788 = fadd fast float %2787, %2780
  %2789 = fadd fast float %2788, %2774
  %2790 = fmul fast float %2783, %2733
  %2791 = fmul fast float %2786, %2734
  %2792 = fmul fast float %2789, %2735
  %2793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2794 = extractvalue %dx.types.ResRet.i32 %2793, 0
  %2795 = add i32 %2794, 0
  %2796 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2795, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2796, %dx.types.Handle %30, float %2790, float %2791, float %2792, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2798 = extractvalue %dx.types.ResRet.f32 %2797, 0
  br label %2799

; <label>:2799                                    ; preds = %2720, %2709
  %2800 = phi float [ %2798, %2720 ], [ -1.000000e+00, %2709 ]
  %2801 = fadd fast float %2800, %2707
  %2802 = call float @dx.op.unary.f32(i32 7, float %2801)  ; Saturate(value)
  br label %2803

; <label>:2803                                    ; preds = %2799, %2697
  %2804 = phi float [ %2802, %2799 ], [ %2707, %2697 ]
  %2805 = fmul fast float %2804, %390
  br label %2806

; <label>:2806                                    ; preds = %2803, %2692
  %2807 = phi float [ %2805, %2803 ], [ %390, %2692 ]
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = and i32 %2809, 256
  %2811 = icmp eq i32 %2810, 0
  br i1 %2811, label %2858, label %2812

; <label>:2812                                    ; preds = %2806
  %2813 = add i32 %37, 452
  %2814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2813, i32 undef)  ; BufferLoad(srv,index,wot)
  %2815 = extractvalue %dx.types.ResRet.i32 %2814, 0
  %2816 = add i32 %2815, 0
  %2817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2816, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2818 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2817, %dx.types.Handle %61, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2819 = extractvalue %dx.types.ResRet.f32 %2818, 0
  %2820 = add i32 %37, 148
  %2821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2820, i32 undef)  ; BufferLoad(srv,index,wot)
  %2822 = extractvalue %dx.types.ResRet.i32 %2821, 0
  %2823 = shl i32 %2822, 4
  %2824 = and i32 %2823, 32752
  %2825 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2824)  ; LegacyF16ToF32(value)
  %2826 = lshr i32 %2822, 7
  %2827 = and i32 %2826, 32752
  %2828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2827)  ; LegacyF16ToF32(value)
  %2829 = fsub fast float 1.000000e+00, %2807
  %2830 = call float @dx.op.binary.f32(i32 35, float %2829, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2831 = bitcast float %2807 to i32
  %2832 = sitofp i32 %2831 to float
  %2833 = fadd fast float %2832, 0xC1CFBF8940000000
  %2834 = fmul fast float %2828, %2833
  %2835 = fadd fast float %2834, 0x41CFBF8940000000
  %2836 = fptosi float %2835 to i32
  %2837 = bitcast i32 %2836 to float
  %2838 = bitcast float %2830 to i32
  %2839 = sitofp i32 %2838 to float
  %2840 = fadd fast float %2839, 0xC1CFBF8940000000
  %2841 = fmul fast float %2840, %2828
  %2842 = fadd fast float %2841, 0x41CFBF8940000000
  %2843 = fptosi float %2842 to i32
  %2844 = bitcast i32 %2843 to float
  %2845 = fmul fast float %2837, %2825
  %2846 = fmul fast float %2844, %2825
  %2847 = fsub fast float %2830, %2845
  %2848 = fadd fast float %2846, %2830
  %2849 = call float @dx.op.unary.f32(i32 7, float %2847)  ; Saturate(value)
  %2850 = call float @dx.op.unary.f32(i32 7, float %2848)  ; Saturate(value)
  %2851 = fsub fast float %2819, %2849
  %2852 = fsub fast float %2850, %2849
  %2853 = bitcast float %2852 to i32
  %2854 = sub nsw i32 2129859010, %2853
  %2855 = bitcast i32 %2854 to float
  %2856 = fmul fast float %2855, %2851
  %2857 = call float @dx.op.unary.f32(i32 7, float %2856)  ; Saturate(value)
  br label %2858

; <label>:2858                                    ; preds = %2812, %2806
  %2859 = phi float [ %2857, %2812 ], [ %2807, %2806 ]
  %2860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2861 = extractvalue %dx.types.ResRet.i32 %2860, 0
  %2862 = and i32 %2861, 128
  %2863 = icmp eq i32 %2862, 0
  br i1 %2863, label %2880, label %2864

; <label>:2864                                    ; preds = %2858
  %2865 = add i32 %37, 436
  %2866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.i32 %2866, 0
  %2868 = add i32 %2867, 0
  %2869 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2868, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2870 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2869, %dx.types.Handle %61, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2871 = extractvalue %dx.types.ResRet.f32 %2870, 0
  %2872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.i32 %2872, 0
  %2874 = and i32 %2873, 524288
  %2875 = icmp ne i32 %2874, 0
  %2876 = fcmp fast ogt float %2871, 0x3FE0101020000000
  %2877 = select i1 %2876, float 1.000000e+00, float 0.000000e+00
  %2878 = select i1 %2875, float %2877, float %2871
  %2879 = fmul fast float %2878, %2859
  br label %2880

; <label>:2880                                    ; preds = %2864, %2858
  %2881 = phi float [ %2879, %2864 ], [ %2859, %2858 ]
  %2882 = fcmp fast ult float %2881, 0x3F70101020000000
  br i1 %2882, label %3425, label %2883

; <label>:2883                                    ; preds = %2880
  %2884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2885 = extractvalue %dx.types.ResRet.i32 %2884, 0
  %2886 = and i32 %2885, 16
  %2887 = icmp eq i32 %2886, 0
  br i1 %2887, label %3086, label %2888

; <label>:2888                                    ; preds = %2883
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2609, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = add i32 %37, 388
  %2892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2891, i32 undef)  ; BufferLoad(srv,index,wot)
  %2893 = extractvalue %dx.types.ResRet.i32 %2892, 0
  %2894 = add i32 %2893, 0
  %2895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2895, %dx.types.Handle %60, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2897 = extractvalue %dx.types.ResRet.f32 %2896, 0
  %2898 = extractvalue %dx.types.ResRet.f32 %2896, 1
  %2899 = extractvalue %dx.types.ResRet.f32 %2896, 2
  %2900 = extractvalue %dx.types.ResRet.f32 %2896, 3
  %2901 = and i32 %2890, 255
  %2902 = uitofp i32 %2901 to float
  %2903 = lshr i32 %2890, 8
  %2904 = and i32 %2903, 255
  %2905 = uitofp i32 %2904 to float
  %2906 = fmul fast float %2900, %2902
  %2907 = fadd fast float %2906, %2905
  %2908 = fmul fast float %2907, 0x3F70101000000000
  %2909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2910 = extractvalue %dx.types.ResRet.i32 %2909, 0
  %2911 = and i32 %2910, 512
  %2912 = icmp eq i32 %2911, 0
  br i1 %2912, label %2921, label %2913

; <label>:2913                                    ; preds = %2888
  %2914 = add i32 %37, 468
  %2915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2914, i32 undef)  ; BufferLoad(srv,index,wot)
  %2916 = extractvalue %dx.types.ResRet.i32 %2915, 0
  %2917 = add i32 %2916, 0
  %2918 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2917, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2919 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2918, %dx.types.Handle %61, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2920 = extractvalue %dx.types.ResRet.f32 %2919, 0
  br label %2921

; <label>:2921                                    ; preds = %2913, %2888
  %2922 = phi float [ %2920, %2913 ], [ 1.000000e+00, %2888 ]
  %2923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %2924 = extractvalue %dx.types.ResRet.i32 %2923, 0
  %2925 = and i32 %2924, 33554432
  %2926 = icmp eq i32 %2925, 0
  br i1 %2926, label %3033, label %2927

; <label>:2927                                    ; preds = %2921
  %2928 = add i32 %37, 272
  %2929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2928, i32 undef)  ; BufferLoad(srv,index,wot)
  %2930 = extractvalue %dx.types.ResRet.i32 %2929, 0
  %2931 = and i32 %2930, 65535
  %2932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2931)  ; LegacyF16ToF32(value)
  %2933 = lshr i32 %2930, 16
  %2934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2933)  ; LegacyF16ToF32(value)
  %2935 = add i32 %37, 276
  %2936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2937 = extractvalue %dx.types.ResRet.i32 %2936, 0
  %2938 = and i32 %2937, 65535
  %2939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2938)  ; LegacyF16ToF32(value)
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = lshr i32 %2941, 24
  %2943 = uitofp i32 %2942 to float
  %2944 = fmul fast float %2943, 0x3F70101020000000
  %2945 = and i32 %2941, 255
  %2946 = uitofp i32 %2945 to float
  %2947 = fmul fast float %2946, 0x3F70101020000000
  %2948 = lshr i32 %2941, 8
  %2949 = and i32 %2948, 255
  %2950 = uitofp i32 %2949 to float
  %2951 = fmul fast float %2950, 0x3F70101020000000
  %2952 = lshr i32 %2941, 16
  %2953 = and i32 %2952, 255
  %2954 = uitofp i32 %2953 to float
  %2955 = fmul fast float %2954, 0x3F70101020000000
  %2956 = add i32 %37, 268
  %2957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2956, i32 undef)  ; BufferLoad(srv,index,wot)
  %2958 = extractvalue %dx.types.ResRet.i32 %2957, 0
  %2959 = lshr i32 %2958, 24
  %2960 = uitofp i32 %2959 to float
  %2961 = fmul fast float %2960, 0x3F70101020000000
  %2962 = and i32 %2958, 255
  %2963 = uitofp i32 %2962 to float
  %2964 = fmul fast float %2963, 0x3F70101020000000
  %2965 = lshr i32 %2958, 8
  %2966 = and i32 %2965, 255
  %2967 = uitofp i32 %2966 to float
  %2968 = fmul fast float %2967, 0x3F70101020000000
  %2969 = lshr i32 %2958, 16
  %2970 = and i32 %2969, 255
  %2971 = uitofp i32 %2970 to float
  %2972 = fmul fast float %2971, 0x3F70101020000000
  %2973 = bitcast float %2897 to i32
  %2974 = ashr i32 %2973, 1
  %2975 = sub nsw i32 1597463174, %2974
  %2976 = bitcast i32 %2975 to float
  %2977 = fmul fast float %2897, 5.000000e-01
  %2978 = fmul fast float %2976, %2976
  %2979 = fmul fast float %2978, %2977
  %2980 = fsub fast float 1.500000e+00, %2979
  %2981 = fmul fast float %2976, %2897
  %2982 = fmul fast float %2981, %2980
  %2983 = bitcast float %2898 to i32
  %2984 = ashr i32 %2983, 1
  %2985 = sub nsw i32 1597463174, %2984
  %2986 = bitcast i32 %2985 to float
  %2987 = fmul fast float %2898, 5.000000e-01
  %2988 = fmul fast float %2986, %2986
  %2989 = fmul fast float %2988, %2987
  %2990 = fsub fast float 1.500000e+00, %2989
  %2991 = fmul fast float %2986, %2898
  %2992 = fmul fast float %2991, %2990
  %2993 = bitcast float %2899 to i32
  %2994 = ashr i32 %2993, 1
  %2995 = sub nsw i32 1597463174, %2994
  %2996 = bitcast i32 %2995 to float
  %2997 = fmul fast float %2899, 5.000000e-01
  %2998 = fmul fast float %2996, %2996
  %2999 = fmul fast float %2998, %2997
  %3000 = fsub fast float 1.500000e+00, %2999
  %3001 = fmul fast float %2996, %2899
  %3002 = fmul fast float %3001, %3000
  %3003 = fsub fast float %2982, %2964
  %3004 = fsub fast float %2992, %2968
  %3005 = fsub fast float %3002, %2972
  %3006 = fmul fast float %3003, %2932
  %3007 = fmul fast float %3004, %2934
  %3008 = fmul fast float %3005, %2939
  %3009 = fadd fast float %3006, %2947
  %3010 = fadd fast float %3007, %2951
  %3011 = fadd fast float %3008, %2955
  %3012 = call float @dx.op.unary.f32(i32 7, float %3009)  ; Saturate(value)
  %3013 = call float @dx.op.unary.f32(i32 7, float %3010)  ; Saturate(value)
  %3014 = call float @dx.op.unary.f32(i32 7, float %3011)  ; Saturate(value)
  %3015 = fmul fast float %3012, %3012
  %3016 = fmul fast float %3013, %3013
  %3017 = fmul fast float %3014, %3014
  %3018 = fsub fast float %3015, %2897
  %3019 = fsub fast float %3016, %2898
  %3020 = fsub fast float %3017, %2899
  %3021 = fmul fast float %3018, %2922
  %3022 = fmul fast float %3019, %2922
  %3023 = fmul fast float %3020, %2922
  %3024 = fadd fast float %3021, %2897
  %3025 = fadd fast float %3022, %2898
  %3026 = fadd fast float %3023, %2899
  %3027 = fadd fast float %2944, %2908
  %3028 = fsub fast float %3027, %2961
  %3029 = call float @dx.op.unary.f32(i32 7, float %3028)  ; Saturate(value)
  %3030 = fsub fast float %3029, %2908
  %3031 = fmul fast float %3030, %2922
  %3032 = fadd fast float %3031, %2908
  br label %3086

; <label>:3033                                    ; preds = %2921
  %3034 = and i32 %2924, 134217728
  %3035 = icmp eq i32 %3034, 0
  br i1 %3035, label %3070, label %3036

; <label>:3036                                    ; preds = %3033
  %3037 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %3038 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %3039 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %3040 = fadd fast float %3037, -5.000000e-01
  %3041 = fadd fast float %3038, -5.000000e-01
  %3042 = fadd fast float %3039, -5.000000e-01
  %3043 = fmul fast float %3040, %2922
  %3044 = fmul fast float %3041, %2922
  %3045 = fmul fast float %3042, %2922
  %3046 = fadd fast float %3043, 5.000000e-01
  %3047 = fadd fast float %3044, 5.000000e-01
  %3048 = fadd fast float %3045, 5.000000e-01
  %3049 = call float @dx.op.unary.f32(i32 24, float %2897)  ; Sqrt(value)
  %3050 = call float @dx.op.unary.f32(i32 24, float %2898)  ; Sqrt(value)
  %3051 = call float @dx.op.unary.f32(i32 24, float %2899)  ; Sqrt(value)
  %3052 = fmul fast float %3046, 2.000000e+00
  %3053 = fsub fast float 1.000000e+00, %3052
  %3054 = fmul fast float %3053, %3049
  %3055 = fadd fast float %3054, %3052
  %3056 = fmul fast float %3055, %3049
  %3057 = fmul fast float %3047, 2.000000e+00
  %3058 = fsub fast float 1.000000e+00, %3057
  %3059 = fmul fast float %3058, %3050
  %3060 = fadd fast float %3059, %3057
  %3061 = fmul fast float %3060, %3050
  %3062 = fmul fast float %3048, 2.000000e+00
  %3063 = fsub fast float 1.000000e+00, %3062
  %3064 = fmul fast float %3063, %3051
  %3065 = fadd fast float %3064, %3062
  %3066 = fmul fast float %3065, %3051
  %3067 = fmul fast float %3056, %3056
  %3068 = fmul fast float %3061, %3061
  %3069 = fmul fast float %3066, %3066
  br label %3086

; <label>:3070                                    ; preds = %3033
  %3071 = fmul fast float %311, %311
  %3072 = fmul fast float %315, %315
  %3073 = fmul fast float %319, %319
  %3074 = fadd fast float %3071, -1.000000e+00
  %3075 = fadd fast float %3072, -1.000000e+00
  %3076 = fadd fast float %3073, -1.000000e+00
  %3077 = fmul fast float %2922, %3074
  %3078 = fmul fast float %2922, %3075
  %3079 = fmul fast float %2922, %3076
  %3080 = fadd fast float %3077, 1.000000e+00
  %3081 = fadd fast float %3078, 1.000000e+00
  %3082 = fadd fast float %3079, 1.000000e+00
  %3083 = fmul fast float %3080, %2897
  %3084 = fmul fast float %3081, %2898
  %3085 = fmul fast float %3082, %2899
  br label %3086

; <label>:3086                                    ; preds = %3070, %3036, %2927, %2883
  %3087 = phi float [ %3032, %2927 ], [ %2908, %3036 ], [ %2908, %3070 ], [ 0x3FA23C0BE0000000, %2883 ]
  %3088 = phi float [ %3024, %2927 ], [ %3067, %3036 ], [ %3083, %3070 ], [ 1.000000e+00, %2883 ]
  %3089 = phi float [ %3025, %2927 ], [ %3068, %3036 ], [ %3084, %3070 ], [ 1.000000e+00, %2883 ]
  %3090 = phi float [ %3026, %2927 ], [ %3069, %3036 ], [ %3085, %3070 ], [ 1.000000e+00, %2883 ]
  %3091 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3092 = extractvalue %dx.types.CBufRet.i32 %3091, 1
  %3093 = and i32 %3092, 1
  %3094 = icmp ne i32 %3093, 0
  %3095 = add i32 %37, 356
  %3096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3095, i32 undef)  ; BufferLoad(srv,index,wot)
  %3097 = extractvalue %dx.types.ResRet.i32 %3096, 0
  %3098 = and i32 %3097, 32
  %3099 = icmp ne i32 %3098, 0
  %3100 = and i1 %3094, %3099
  %3101 = select i1 %3100, float 1.000000e+00, float %3088
  %3102 = select i1 %3100, float 0x3FD3333340000000, float %3089
  %3103 = select i1 %3100, float 0x3FD3333340000000, float %3090
  %3104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3105 = extractvalue %dx.types.ResRet.i32 %3104, 0
  %3106 = and i32 %3105, 32
  %3107 = icmp eq i32 %3106, 0
  br i1 %3107, label %3180, label %3108

; <label>:3108                                    ; preds = %3086
  %3109 = add i32 %37, 140
  %3110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3109, i32 undef)  ; BufferLoad(srv,index,wot)
  %3111 = extractvalue %dx.types.ResRet.i32 %3110, 0
  %3112 = add i32 %37, 404
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3112, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = add i32 %3114, 0
  %3116 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3115, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3117 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3116, %dx.types.Handle %60, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3118 = extractvalue %dx.types.ResRet.f32 %3117, 0
  %3119 = extractvalue %dx.types.ResRet.f32 %3117, 1
  %3120 = extractvalue %dx.types.ResRet.f32 %3117, 2
  %3121 = extractvalue %dx.types.ResRet.f32 %3117, 3
  %3122 = and i32 %3111, 255
  %3123 = uitofp i32 %3122 to float
  %3124 = lshr i32 %3111, 8
  %3125 = and i32 %3124, 255
  %3126 = uitofp i32 %3125 to float
  %3127 = lshr i32 %3111, 16
  %3128 = and i32 %3127, 255
  %3129 = uitofp i32 %3128 to float
  %3130 = fmul fast float %3129, 0x3F70101000000000
  %3131 = fmul fast float %3118, %3123
  %3132 = fadd fast float %3131, %3126
  %3133 = fmul fast float %3132, 0x3F70101000000000
  %3134 = fadd fast float %3119, -5.000000e-01
  %3135 = fadd fast float %3121, -5.000000e-01
  %3136 = fmul fast float %3134, %3130
  %3137 = fmul fast float %3135, %3130
  %3138 = fadd fast float %3136, 5.000000e-01
  %3139 = fadd fast float %3137, 5.000000e-01
  %3140 = fmul fast float %3138, 2.000000e+00
  %3141 = fadd fast float %3140, -1.000000e+00
  %3142 = fmul fast float %3139, 2.000000e+00
  %3143 = fadd fast float %3142, -1.000000e+00
  %3144 = fadd fast float %3141, %3143
  %3145 = fmul fast float %3144, 5.000000e-01
  %3146 = fsub fast float %3141, %3143
  %3147 = fmul fast float %3146, 5.000000e-01
  %3148 = call float @dx.op.unary.f32(i32 6, float %3145)  ; FAbs(value)
  %3149 = fsub fast float 1.000000e+00, %3148
  %3150 = call float @dx.op.unary.f32(i32 6, float %3147)  ; FAbs(value)
  %3151 = fsub fast float %3149, %3150
  %3152 = call float @dx.op.dot3.f32(i32 55, float %3145, float %3147, float %3151, float %3145, float %3147, float %3151)  ; Dot3(ax,ay,az,bx,by,bz)
  %3153 = call float @dx.op.unary.f32(i32 25, float %3152)  ; Rsqrt(value)
  %3154 = fmul fast float %3145, %3153
  %3155 = fmul fast float %3147, %3153
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = and i32 %3157, 67108864
  %3159 = icmp eq i32 %3158, 0
  br i1 %3159, label %3176, label %3160

; <label>:3160                                    ; preds = %3108
  %3161 = add i32 %37, 328
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3161, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 65535
  %3165 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3164)  ; LegacyF16ToF32(value)
  %3166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3167 = extractvalue %dx.types.ResRet.i32 %3166, 0
  %3168 = and i32 %3167, 65535
  %3169 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3168)  ; LegacyF16ToF32(value)
  %3170 = lshr i32 %3163, 16
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = fsub fast float %3133, %3171
  %3173 = fmul fast float %3172, %3165
  %3174 = fadd fast float %3173, %3169
  %3175 = call float @dx.op.unary.f32(i32 7, float %3174)  ; Saturate(value)
  br label %3176

; <label>:3176                                    ; preds = %3160, %3108
  %3177 = phi float [ %3175, %3160 ], [ %3133, %3108 ]
  %3178 = call float @dx.op.dot2.f32(i32 54, float %3154, float %3155, float %2597, float %2598)  ; Dot2(ax,ay,bx,by)
  %3179 = call float @dx.op.dot2.f32(i32 54, float %3154, float %3155, float %2599, float %2600)  ; Dot2(ax,ay,bx,by)
  br label %3180

; <label>:3180                                    ; preds = %3176, %3086
  %3181 = phi float [ %3177, %3176 ], [ 0x3FD6666660000000, %3086 ]
  %3182 = phi float [ %3178, %3176 ], [ 0.000000e+00, %3086 ]
  %3183 = phi float [ %3179, %3176 ], [ 0.000000e+00, %3086 ]
  %3184 = phi float [ %3120, %3176 ], [ 1.000000e+00, %3086 ]
  %3185 = add i32 %37, 208
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = lshr i32 %3187, 22
  %3189 = shl nuw nsw i32 %3188, 5
  %3190 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3189)  ; LegacyF16ToF32(value)
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = and i32 %3192, 64
  %3194 = icmp eq i32 %3193, 0
  br i1 %3194, label %3228, label %3195

; <label>:3195                                    ; preds = %3180
  %3196 = add i32 %37, 420
  %3197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3196, i32 undef)  ; BufferLoad(srv,index,wot)
  %3198 = extractvalue %dx.types.ResRet.i32 %3197, 0
  %3199 = add i32 %3198, 0
  %3200 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3199, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = and i32 %3202, 131072
  %3204 = icmp eq i32 %3203, 0
  %3205 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3200, %dx.types.Handle %60, float %2693, float %2694, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3206 = extractvalue %dx.types.ResRet.f32 %3205, 0
  %3207 = extractvalue %dx.types.ResRet.f32 %3205, 1
  %3208 = extractvalue %dx.types.ResRet.f32 %3205, 2
  %3209 = fmul fast float %3206, %299
  %3210 = fmul fast float %3207, %302
  %3211 = fmul fast float %3208, %305
  br i1 %3204, label %3218, label %3212

; <label>:3212                                    ; preds = %3195
  %3213 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3214 = extractvalue %dx.types.CBufRet.f32 %3213, 0
  %3215 = fmul fast float %3214, %3209
  %3216 = fmul fast float %3214, %3210
  %3217 = fmul fast float %3214, %3211
  br label %3218

; <label>:3218                                    ; preds = %3212, %3195
  %3219 = phi float [ %3215, %3212 ], [ %3209, %3195 ]
  %3220 = phi float [ %3216, %3212 ], [ %3210, %3195 ]
  %3221 = phi float [ %3217, %3212 ], [ %3211, %3195 ]
  %3222 = fmul fast float %3219, %3190
  %3223 = select i1 %167, float %3222, float %3219
  %3224 = call float @dx.op.dot3.f32(i32 55, float %3223, float %3220, float %3221, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3225 = select i1 %167, float 0.000000e+00, float %3219
  %3226 = select i1 %167, float %3224, float %3220
  %3227 = select i1 %167, float 0.000000e+00, float %3221
  br label %3228

; <label>:3228                                    ; preds = %3218, %3180
  %3229 = phi float [ %3225, %3218 ], [ 0.000000e+00, %3180 ]
  %3230 = phi float [ %3226, %3218 ], [ 0.000000e+00, %3180 ]
  %3231 = phi float [ %3227, %3218 ], [ 0.000000e+00, %3180 ]
  %3232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2586, i32 undef)  ; BufferLoad(srv,index,wot)
  %3233 = extractvalue %dx.types.ResRet.i32 %3232, 0
  %3234 = add i32 %37, 144
  %3235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3234, i32 undef)  ; BufferLoad(srv,index,wot)
  %3236 = extractvalue %dx.types.ResRet.i32 %3235, 0
  %3237 = and i32 %3236, 255
  %3238 = uitofp i32 %3237 to float
  %3239 = lshr i32 %3236, 8
  %3240 = and i32 %3239, 255
  %3241 = uitofp i32 %3240 to float
  %3242 = call float @dx.op.dot3.f32(i32 55, float %3101, float %3102, float %3103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3243 = fmul fast float %3241, %3242
  %3244 = fadd fast float %3243, %3238
  %3245 = fmul fast float %3244, 0x3F70101020000000
  %3246 = call float @dx.op.unary.f32(i32 7, float %3245)  ; Saturate(value)
  br i1 %2585, label %3247, label %3255

; <label>:3247                                    ; preds = %3228
  %3248 = fsub fast float 1.000000e+00, %2881
  %3249 = fmul fast float %3248, %2577
  %3250 = fmul fast float %3248, %2578
  %3251 = fmul fast float %3248, %2579
  %3252 = fmul fast float %3248, %2574
  %3253 = fmul fast float %3248, %2575
  %3254 = fmul fast float %3248, %2576
  br label %3255

; <label>:3255                                    ; preds = %3247, %3228
  %3256 = phi float [ %3252, %3247 ], [ %2574, %3228 ]
  %3257 = phi float [ %3253, %3247 ], [ %2575, %3228 ]
  %3258 = phi float [ %3254, %3247 ], [ %2576, %3228 ]
  %3259 = phi float [ %3249, %3247 ], [ %2577, %3228 ]
  %3260 = phi float [ %3250, %3247 ], [ %2578, %3228 ]
  %3261 = phi float [ %3251, %3247 ], [ %2579, %3228 ]
  %3262 = and i32 %3233, 3
  %3263 = icmp eq i32 %3262, 3
  br i1 %3263, label %3342, label %3264

; <label>:3264                                    ; preds = %3255
  %3265 = and i32 %3233, 16
  %3266 = icmp ne i32 %3265, 0
  %3267 = select i1 %3266, float %2881, float 0.000000e+00
  %3268 = icmp eq i32 %3262, 0
  br i1 %3268, label %3269, label %3297

; <label>:3269                                    ; preds = %3264
  %3270 = and i32 %3233, 64
  %3271 = icmp ne i32 %3270, 0
  %3272 = select i1 %3271, float %2881, float 0.000000e+00
  %3273 = fsub fast float %3101, %3259
  %3274 = fsub fast float %3102, %3260
  %3275 = fsub fast float %3103, %3261
  %3276 = fmul fast float %3267, %3273
  %3277 = fmul fast float %3267, %3274
  %3278 = fmul fast float %3267, %3275
  %3279 = fadd fast float %3276, %3259
  %3280 = fadd fast float %3277, %3260
  %3281 = fadd fast float %3278, %3261
  %3282 = fsub fast float %3087, %2580
  %3283 = fmul fast float %3267, %3282
  %3284 = fadd fast float %3283, %2580
  %3285 = fsub fast float %3229, %3256
  %3286 = fsub fast float %3230, %3257
  %3287 = fsub fast float %3231, %3258
  %3288 = fmul fast float %3272, %3285
  %3289 = fmul fast float %3272, %3286
  %3290 = fmul fast float %3272, %3287
  %3291 = fadd fast float %3288, %3256
  %3292 = fadd fast float %3289, %3257
  %3293 = fadd fast float %3290, %3258
  %3294 = fsub fast float %3246, %2583
  %3295 = fmul fast float %3267, %3294
  %3296 = fadd fast float %3295, %2583
  br label %3342

; <label>:3297                                    ; preds = %3264
  %3298 = icmp eq i32 %3262, 1
  br i1 %3298, label %3299, label %3312

; <label>:3299                                    ; preds = %3297
  %3300 = fadd fast float %3101, -1.000000e+00
  %3301 = fadd fast float %3102, -1.000000e+00
  %3302 = fadd fast float %3103, -1.000000e+00
  %3303 = fmul fast float %3267, %3300
  %3304 = fmul fast float %3267, %3301
  %3305 = fmul fast float %3267, %3302
  %3306 = fadd fast float %3303, 1.000000e+00
  %3307 = fadd fast float %3304, 1.000000e+00
  %3308 = fadd fast float %3305, 1.000000e+00
  %3309 = fmul fast float %3306, %3259
  %3310 = fmul fast float %3307, %3260
  %3311 = fmul fast float %3308, %3261
  br label %3342

; <label>:3312                                    ; preds = %3297
  %3313 = icmp eq i32 %3262, 2
  br i1 %3313, label %3314, label %3342

; <label>:3314                                    ; preds = %3312
  %3315 = call float @dx.op.unary.f32(i32 24, float %3101)  ; Sqrt(value)
  %3316 = call float @dx.op.unary.f32(i32 24, float %3102)  ; Sqrt(value)
  %3317 = call float @dx.op.unary.f32(i32 24, float %3103)  ; Sqrt(value)
  %3318 = fadd fast float %3315, -5.000000e-01
  %3319 = fadd fast float %3316, -5.000000e-01
  %3320 = fadd fast float %3317, -5.000000e-01
  %3321 = fmul fast float %3318, %3267
  %3322 = fmul fast float %3319, %3267
  %3323 = fmul fast float %3320, %3267
  %3324 = fadd fast float %3321, 5.000000e-01
  %3325 = fadd fast float %3322, 5.000000e-01
  %3326 = fadd fast float %3323, 5.000000e-01
  %3327 = fmul fast float %3324, 2.000000e+00
  %3328 = fsub fast float 1.000000e+00, %3327
  %3329 = fmul fast float %3328, %3259
  %3330 = fadd fast float %3329, %3327
  %3331 = fmul fast float %3330, %3259
  %3332 = fmul fast float %3325, 2.000000e+00
  %3333 = fsub fast float 1.000000e+00, %3332
  %3334 = fmul fast float %3333, %3260
  %3335 = fadd fast float %3334, %3332
  %3336 = fmul fast float %3335, %3260
  %3337 = fmul fast float %3326, 2.000000e+00
  %3338 = fsub fast float 1.000000e+00, %3337
  %3339 = fmul fast float %3338, %3261
  %3340 = fadd fast float %3339, %3337
  %3341 = fmul fast float %3340, %3261
  br label %3342

; <label>:3342                                    ; preds = %3314, %3312, %3299, %3269, %3255
  %3343 = phi float [ %3256, %3255 ], [ %3256, %3314 ], [ %3256, %3312 ], [ %3256, %3299 ], [ %3291, %3269 ]
  %3344 = phi float [ %3257, %3255 ], [ %3257, %3314 ], [ %3257, %3312 ], [ %3257, %3299 ], [ %3292, %3269 ]
  %3345 = phi float [ %3258, %3255 ], [ %3258, %3314 ], [ %3258, %3312 ], [ %3258, %3299 ], [ %3293, %3269 ]
  %3346 = phi float [ %3259, %3255 ], [ %3331, %3314 ], [ %3259, %3312 ], [ %3309, %3299 ], [ %3279, %3269 ]
  %3347 = phi float [ %3260, %3255 ], [ %3336, %3314 ], [ %3260, %3312 ], [ %3310, %3299 ], [ %3280, %3269 ]
  %3348 = phi float [ %3261, %3255 ], [ %3341, %3314 ], [ %3261, %3312 ], [ %3311, %3299 ], [ %3281, %3269 ]
  %3349 = phi float [ %2580, %3255 ], [ %2580, %3314 ], [ %2580, %3312 ], [ %2580, %3299 ], [ %3284, %3269 ]
  %3350 = phi float [ %2583, %3255 ], [ %2583, %3314 ], [ %2583, %3312 ], [ %2583, %3299 ], [ %3296, %3269 ]
  %3351 = and i32 %3233, 12
  %3352 = icmp eq i32 %3351, 12
  br i1 %3352, label %3425, label %3353

; <label>:3353                                    ; preds = %3342
  %3354 = and i32 %3233, 2097184
  %3355 = icmp eq i32 %3354, 2097184
  %3356 = select i1 %3355, float %2881, float 0.000000e+00
  %3357 = and i32 %3233, 4194336
  %3358 = icmp eq i32 %3357, 4194336
  %3359 = select i1 %3358, float %2881, float 0.000000e+00
  %3360 = and i32 %3233, 8388640
  %3361 = icmp eq i32 %3360, 8388640
  %3362 = select i1 %3361, float %2881, float 0.000000e+00
  %3363 = icmp eq i32 %3351, 0
  br i1 %3363, label %3364, label %3377

; <label>:3364                                    ; preds = %3353
  %3365 = fsub fast float %3182, %2572
  %3366 = fsub fast float %3183, %2573
  %3367 = fmul fast float %3356, %3365
  %3368 = fmul fast float %3356, %3366
  %3369 = fadd fast float %3367, %2572
  %3370 = fadd fast float %3368, %2573
  %3371 = fsub fast float %3184, %2582
  %3372 = fmul fast float %3359, %3371
  %3373 = fadd fast float %3372, %2582
  %3374 = fsub fast float %3181, %2581
  %3375 = fmul fast float %3362, %3374
  %3376 = fadd fast float %3375, %2581
  br label %3425

; <label>:3377                                    ; preds = %3353
  %3378 = icmp eq i32 %3351, 4
  br i1 %3378, label %3379, label %3411

; <label>:3379                                    ; preds = %3377
  %3380 = fmul fast float %3356, %3182
  %3381 = fmul fast float %3356, %3183
  %3382 = fadd fast float %3380, %2572
  %3383 = fadd fast float %3381, %2573
  %3384 = call float @dx.op.binary.f32(i32 36, float %2582, float %3184)  ; FMin(a,b)
  %3385 = fsub fast float %3384, %2582
  %3386 = fmul fast float %3385, %3359
  %3387 = fadd fast float %3386, %2582
  %3388 = fadd fast float %3181, %2581
  %3389 = fmul fast float %3388, 0x3FF337FAE0000000
  %3390 = fmul fast float %2581, %2581
  %3391 = fmul fast float %3181, %3181
  %3392 = fadd fast float %3391, %3390
  %3393 = fmul fast float %3392, 0x3FE5152B00000000
  %3394 = fmul fast float %2581, 0xBFCC1F85E0000000
  %3395 = fmul fast float %3394, %3181
  %3396 = fadd fast float %3395, 0xBFE1363700000000
  %3397 = fadd fast float %3396, %3389
  %3398 = fsub fast float %3397, %3393
  %3399 = fmul fast float %3388, 0x3FBA6F0D00000000
  %3400 = fmul fast float %3392, 0x3FD0432880000000
  %3401 = fmul fast float %2581, 0xBFEF110800000000
  %3402 = fmul fast float %3401, %3181
  %3403 = fadd fast float %3402, 1.000000e+00
  %3404 = fsub fast float %3403, %3399
  %3405 = fadd fast float %3404, %3400
  %3406 = fdiv fast float %3398, %3405
  %3407 = call float @dx.op.unary.f32(i32 7, float %3406)  ; Saturate(value)
  %3408 = fsub fast float %3407, %2581
  %3409 = fmul fast float %3408, %3362
  %3410 = fadd fast float %3409, %2581
  br label %3425

; <label>:3411                                    ; preds = %3377
  %3412 = icmp eq i32 %3351, 8
  br i1 %3412, label %3413, label %3425

; <label>:3413                                    ; preds = %3411
  %3414 = fmul fast float %3356, %3182
  %3415 = fmul fast float %3356, %3183
  %3416 = fadd fast float %3414, %2572
  %3417 = fadd fast float %3415, %2573
  %3418 = call float @dx.op.binary.f32(i32 36, float %2582, float %3184)  ; FMin(a,b)
  %3419 = fsub fast float %3418, %2582
  %3420 = fmul fast float %3419, %3359
  %3421 = fadd fast float %3420, %2582
  %3422 = fsub fast float %3181, %2581
  %3423 = fmul fast float %3362, %3422
  %3424 = fadd fast float %3423, %2581
  br label %3425

; <label>:3425                                    ; preds = %3413, %3411, %3379, %3364, %3342, %2880, %2584, %2571
  %3426 = phi float [ %2572, %3342 ], [ %2572, %2880 ], [ %2572, %2571 ], [ %2572, %2584 ], [ %3369, %3364 ], [ %3382, %3379 ], [ %2572, %3411 ], [ %3416, %3413 ]
  %3427 = phi float [ %2573, %3342 ], [ %2573, %2880 ], [ %2573, %2571 ], [ %2573, %2584 ], [ %3370, %3364 ], [ %3383, %3379 ], [ %2573, %3411 ], [ %3417, %3413 ]
  %3428 = phi float [ %3343, %3342 ], [ %2574, %2880 ], [ %2574, %2571 ], [ %2574, %2584 ], [ %3343, %3364 ], [ %3343, %3379 ], [ %3343, %3411 ], [ %3343, %3413 ]
  %3429 = phi float [ %3344, %3342 ], [ %2575, %2880 ], [ %2575, %2571 ], [ %2575, %2584 ], [ %3344, %3364 ], [ %3344, %3379 ], [ %3344, %3411 ], [ %3344, %3413 ]
  %3430 = phi float [ %3345, %3342 ], [ %2576, %2880 ], [ %2576, %2571 ], [ %2576, %2584 ], [ %3345, %3364 ], [ %3345, %3379 ], [ %3345, %3411 ], [ %3345, %3413 ]
  %3431 = phi float [ %3346, %3342 ], [ %2577, %2880 ], [ %2577, %2571 ], [ %2577, %2584 ], [ %3346, %3364 ], [ %3346, %3379 ], [ %3346, %3411 ], [ %3346, %3413 ]
  %3432 = phi float [ %3347, %3342 ], [ %2578, %2880 ], [ %2578, %2571 ], [ %2578, %2584 ], [ %3347, %3364 ], [ %3347, %3379 ], [ %3347, %3411 ], [ %3347, %3413 ]
  %3433 = phi float [ %3348, %3342 ], [ %2579, %2880 ], [ %2579, %2571 ], [ %2579, %2584 ], [ %3348, %3364 ], [ %3348, %3379 ], [ %3348, %3411 ], [ %3348, %3413 ]
  %3434 = phi float [ %3349, %3342 ], [ %2580, %2880 ], [ %2580, %2571 ], [ %2580, %2584 ], [ %3349, %3364 ], [ %3349, %3379 ], [ %3349, %3411 ], [ %3349, %3413 ]
  %3435 = phi float [ %2581, %3342 ], [ %2581, %2880 ], [ %2581, %2571 ], [ %2581, %2584 ], [ %3376, %3364 ], [ %3410, %3379 ], [ %2581, %3411 ], [ %3424, %3413 ]
  %3436 = phi float [ %2582, %3342 ], [ %2582, %2880 ], [ %2582, %2571 ], [ %2582, %2584 ], [ %3373, %3364 ], [ %3387, %3379 ], [ %2582, %3411 ], [ %3421, %3413 ]
  %3437 = phi float [ %3350, %3342 ], [ %2583, %2880 ], [ %2583, %2571 ], [ %2583, %2584 ], [ %3350, %3364 ], [ %3350, %3379 ], [ %3350, %3411 ], [ %3350, %3413 ]
  %3438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3439 = extractvalue %dx.types.CBufRet.f32 %3438, 0
  %3440 = call float @dx.op.dot2.f32(i32 54, float %3426, float %3427, float %3426, float %3427)  ; Dot2(ax,ay,bx,by)
  %3441 = fmul fast float %3440, 0x3FE3333340000000
  %3442 = fsub fast float 1.000000e+00, %3441
  %3443 = call float @dx.op.dot3.f32(i32 55, float %3426, float %3427, float %3442, float %3426, float %3427, float %3442)  ; Dot3(ax,ay,az,bx,by,bz)
  %3444 = call float @dx.op.unary.f32(i32 25, float %3443)  ; Rsqrt(value)
  %3445 = fmul fast float %3444, %3426
  %3446 = fmul fast float %3444, %3427
  %3447 = fmul fast float %3442, %3444
  %3448 = fmul fast float %3447, %73
  %3449 = fmul fast float %3447, %75
  %3450 = fmul fast float %3447, %77
  %3451 = fmul fast float %3445, %45
  %3452 = fmul fast float %3445, %46
  %3453 = fmul fast float %3445, %47
  %3454 = fadd fast float %3448, %3451
  %3455 = fadd fast float %3449, %3452
  %3456 = fadd fast float %3450, %3453
  %3457 = fmul fast float %87, %3446
  %3458 = fmul fast float %88, %3446
  %3459 = fmul fast float %89, %3446
  %3460 = fadd fast float %3454, %3457
  %3461 = fadd fast float %3455, %3458
  %3462 = fadd fast float %3456, %3459
  %3463 = call float @dx.op.dot3.f32(i32 55, float %3460, float %3461, float %3462, float %3460, float %3461, float %3462)  ; Dot3(ax,ay,az,bx,by,bz)
  %3464 = call float @dx.op.unary.f32(i32 25, float %3463)  ; Rsqrt(value)
  %3465 = fmul fast float %3460, %3464
  %3466 = fmul fast float %3461, %3464
  %3467 = fmul fast float %3462, %3464
  %3468 = fadd fast float %3434, 0xBFB99999A0000000
  %3469 = call float @dx.op.unary.f32(i32 7, float %3468)  ; Saturate(value)
  %3470 = fmul fast float %3469, 0x3FF1C71C80000000
  %3471 = call float @dx.op.binary.f32(i32 36, float %3434, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3472 = fsub fast float 1.000000e+00, %3470
  %3473 = call float @dx.op.unary.f32(i32 7, float %3472)  ; Saturate(value)
  %3474 = fmul fast float %3473, %3431
  %3475 = fmul fast float %3473, %3432
  %3476 = fmul fast float %3473, %3433
  %3477 = call float @dx.op.unary.f32(i32 7, float %3474)  ; Saturate(value)
  %3478 = call float @dx.op.unary.f32(i32 7, float %3475)  ; Saturate(value)
  %3479 = call float @dx.op.unary.f32(i32 7, float %3476)  ; Saturate(value)
  %3480 = fmul fast float %3470, %3431
  %3481 = fmul fast float %3470, %3432
  %3482 = fmul fast float %3470, %3433
  %3483 = fadd fast float %3480, %3471
  %3484 = fadd fast float %3481, %3471
  %3485 = fadd fast float %3482, %3471
  %3486 = call float @dx.op.unary.f32(i32 7, float %3483)  ; Saturate(value)
  %3487 = call float @dx.op.unary.f32(i32 7, float %3484)  ; Saturate(value)
  %3488 = call float @dx.op.unary.f32(i32 7, float %3485)  ; Saturate(value)
  %3489 = call float @dx.op.unary.f32(i32 7, float %3435)  ; Saturate(value)
  %3490 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3491 = extractvalue %dx.types.CBufRet.i32 %3490, 3
  %3492 = and i32 %3491, 8
  %3493 = icmp ne i32 %3492, 0
  %3494 = call float @dx.op.binary.f32(i32 35, float %3477, float %3431)  ; FMax(a,b)
  %3495 = call float @dx.op.binary.f32(i32 35, float %3478, float %3431)  ; FMax(a,b)
  %3496 = call float @dx.op.binary.f32(i32 35, float %3479, float %3431)  ; FMax(a,b)
  %3497 = call float @dx.op.dot3.f32(i32 55, float %3477, float %3478, float %3479, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3498 = select i1 %167, float %3431, float %3477
  %3499 = select i1 %167, float %3497, float %3478
  %3500 = select i1 %167, float 1.000000e+00, float %3479
  %3501 = select i1 %3493, float %3494, float %3498
  %3502 = select i1 %3493, float %3495, float %3499
  %3503 = select i1 %3493, float %3496, float %3500
  %3504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3505 = extractvalue %dx.types.CBufRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.CBufRet.f32 %3504, 1
  %3507 = extractvalue %dx.types.CBufRet.f32 %3504, 2
  %3508 = fadd fast float %3505, %123
  %3509 = fadd fast float %3506, %124
  %3510 = fadd fast float %3507, %125
  %3511 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3512 = extractvalue %dx.types.CBufRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.CBufRet.f32 %3511, 1
  %3514 = fsub fast float %3508, %3512
  %3515 = fsub fast float %3509, %3513
  %3516 = fmul fast float %3514, %3514
  %3517 = fmul fast float %3515, %3515
  %3518 = fadd fast float %3516, %3517
  %3519 = call float @dx.op.unary.f32(i32 24, float %3518)  ; Sqrt(value)
  %3520 = extractvalue %dx.types.CBufRet.f32 %3511, 2
  %3521 = fcmp fast olt float %3519, %3520
  br i1 %3521, label %3522, label %3589

; <label>:3522                                    ; preds = %3425
  %3523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3523, 0
  %3525 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3526 = extractvalue %dx.types.CBufRet.f32 %3525, 0
  %3527 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3528 = extractvalue %dx.types.CBufRet.f32 %3527, 0
  %3529 = extractvalue %dx.types.CBufRet.f32 %3523, 1
  %3530 = extractvalue %dx.types.CBufRet.f32 %3525, 1
  %3531 = extractvalue %dx.types.CBufRet.f32 %3527, 1
  %3532 = extractvalue %dx.types.CBufRet.f32 %3523, 3
  %3533 = extractvalue %dx.types.CBufRet.f32 %3525, 3
  %3534 = extractvalue %dx.types.CBufRet.f32 %3527, 3
  %3535 = fadd fast float %3532, %3508
  %3536 = fadd fast float %3533, %3509
  %3537 = fadd fast float %3534, %3510
  %3538 = fmul fast float %3535, %3524
  %3539 = call float @dx.op.tertiary.f32(i32 46, float %3536, float %3526, float %3538)  ; FMad(a,b,c)
  %3540 = call float @dx.op.tertiary.f32(i32 46, float %3537, float %3528, float %3539)  ; FMad(a,b,c)
  %3541 = fmul fast float %3535, %3529
  %3542 = call float @dx.op.tertiary.f32(i32 46, float %3536, float %3530, float %3541)  ; FMad(a,b,c)
  %3543 = call float @dx.op.tertiary.f32(i32 46, float %3537, float %3531, float %3542)  ; FMad(a,b,c)
  %3544 = fsub fast float %3540, %3532
  %3545 = fsub fast float %3543, %3533
  %3546 = fsub fast float %3544, %3512
  %3547 = fadd fast float %3546, %3520
  %3548 = fsub fast float %3545, %3513
  %3549 = fadd fast float %3548, %3520
  %3550 = extractvalue %dx.types.CBufRet.f32 %3511, 3
  %3551 = fmul fast float %3547, %3550
  %3552 = fmul fast float %3549, %3550
  %3553 = call float @dx.op.unary.f32(i32 7, float %3551)  ; Saturate(value)
  %3554 = call float @dx.op.unary.f32(i32 7, float %3552)  ; Saturate(value)
  %3555 = fsub fast float 1.000000e+00, %3553
  %3556 = fsub fast float 1.000000e+00, %3554
  %3557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %31, float %3555, float %3556, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3558 = extractvalue %dx.types.ResRet.f32 %3557, 0
  %3559 = fcmp fast ugt float %3558, 0.000000e+00
  br i1 %3559, label %3560, label %3863

; <label>:3560                                    ; preds = %3522
  %3561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3562 = extractvalue %dx.types.CBufRet.f32 %3561, 2
  %3563 = fmul fast float %3562, %3558
  %3564 = extractvalue %dx.types.CBufRet.f32 %3561, 3
  %3565 = fadd fast float %3564, %3563
  %3566 = extractvalue %dx.types.CBufRet.f32 %3527, 2
  %3567 = fadd fast float %3565, %3534
  %3568 = fmul fast float %3540, %3528
  %3569 = call float @dx.op.tertiary.f32(i32 46, float %3543, float %3531, float %3568)  ; FMad(a,b,c)
  %3570 = call float @dx.op.tertiary.f32(i32 46, float %3567, float %3566, float %3569)  ; FMad(a,b,c)
  %3571 = fsub fast float %3570, %3534
  %3572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3573 = extractvalue %dx.types.CBufRet.f32 %3572, 2
  %3574 = fsub fast float %3571, %3573
  %3575 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %31, float %3555, float %3556, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3576 = extractvalue %dx.types.ResRet.f32 %3575, 0
  %3577 = extractvalue %dx.types.ResRet.f32 %3575, 1
  %3578 = extractvalue %dx.types.ResRet.f32 %3575, 2
  %3579 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %31, float %3555, float %3556, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3580 = extractvalue %dx.types.ResRet.f32 %3579, 0
  %3581 = extractvalue %dx.types.ResRet.f32 %3579, 1
  %3582 = extractvalue %dx.types.ResRet.f32 %3579, 2
  %3583 = fadd fast float %3580, %3576
  %3584 = fmul fast float %3583, 0x3F847AE140000000
  %3585 = fadd fast float %3581, %3577
  %3586 = fmul fast float %3585, 0x3F847AE140000000
  %3587 = fadd fast float %3582, %3578
  %3588 = fmul fast float %3587, 0x3F847AE140000000
  br label %3863

; <label>:3589                                    ; preds = %3425
  %3590 = and i32 %141, 1
  %3591 = icmp eq i32 %3590, 0
  br i1 %3591, label %3863, label %3592

; <label>:3592                                    ; preds = %3589
  %3593 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3594 = extractvalue %dx.types.CBufRet.f32 %3593, 0
  %3595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3596 = extractvalue %dx.types.CBufRet.f32 %3595, 0
  %3597 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3598 = extractvalue %dx.types.CBufRet.f32 %3597, 0
  %3599 = extractvalue %dx.types.CBufRet.f32 %3593, 1
  %3600 = extractvalue %dx.types.CBufRet.f32 %3595, 1
  %3601 = extractvalue %dx.types.CBufRet.f32 %3597, 1
  %3602 = extractvalue %dx.types.CBufRet.f32 %3593, 3
  %3603 = extractvalue %dx.types.CBufRet.f32 %3595, 3
  %3604 = extractvalue %dx.types.CBufRet.f32 %3597, 3
  %3605 = fadd fast float %3602, %3508
  %3606 = fadd fast float %3603, %3509
  %3607 = fadd fast float %3604, %3510
  %3608 = fmul fast float %3605, %3594
  %3609 = call float @dx.op.tertiary.f32(i32 46, float %3606, float %3596, float %3608)  ; FMad(a,b,c)
  %3610 = call float @dx.op.tertiary.f32(i32 46, float %3607, float %3598, float %3609)  ; FMad(a,b,c)
  %3611 = fmul fast float %3605, %3599
  %3612 = call float @dx.op.tertiary.f32(i32 46, float %3606, float %3600, float %3611)  ; FMad(a,b,c)
  %3613 = call float @dx.op.tertiary.f32(i32 46, float %3607, float %3601, float %3612)  ; FMad(a,b,c)
  %3614 = fsub fast float %3610, %3602
  %3615 = fsub fast float %3613, %3603
  %3616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %3617 = extractvalue %dx.types.CBufRet.f32 %3616, 0
  %3618 = extractvalue %dx.types.CBufRet.f32 %3616, 1
  %3619 = extractvalue %dx.types.CBufRet.f32 %3616, 2
  %3620 = extractvalue %dx.types.CBufRet.f32 %3616, 3
  %3621 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3622 = extractvalue %dx.types.CBufRet.f32 %3621, 3
  %3623 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %3624 = extractvalue %dx.types.CBufRet.i32 %3623, 0
  %3625 = extractvalue %dx.types.CBufRet.i32 %3623, 1
  %3626 = udiv i32 %3625, %3624
  %3627 = fsub fast float %3614, %3617
  %3628 = fsub fast float %3615, %3618
  %3629 = call float @dx.op.binary.f32(i32 35, float %3627, float 0.000000e+00)  ; FMax(a,b)
  %3630 = call float @dx.op.binary.f32(i32 35, float %3628, float 0.000000e+00)  ; FMax(a,b)
  %3631 = call float @dx.op.binary.f32(i32 36, float %3629, float %3619)  ; FMin(a,b)
  %3632 = call float @dx.op.binary.f32(i32 36, float %3630, float %3620)  ; FMin(a,b)
  %3633 = add i32 %3624, -1
  %3634 = add i32 %3626, -1
  %3635 = fmul fast float %3631, %3622
  %3636 = fmul fast float %3632, %3622
  %3637 = fptoui float %3635 to i32
  %3638 = fptoui float %3636 to i32
  %3639 = call i32 @dx.op.binary.i32(i32 40, i32 %3637, i32 %3633)  ; UMin(a,b)
  %3640 = call i32 @dx.op.binary.i32(i32 40, i32 %3638, i32 %3634)  ; UMin(a,b)
  %3641 = mul i32 %3640, %3624
  %3642 = add i32 %3641, %3639
  %3643 = shl i32 %3642, 2
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = icmp eq i32 %3645, -1
  br i1 %3646, label %3863, label %3647

; <label>:3647                                    ; preds = %3592
  %3648 = mul i32 %3645, 148
  %3649 = add i32 %3648, 4
  %3650 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.f32 %3650, 0
  %3652 = add i32 %3648, 8
  %3653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3652, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.f32 %3653, 0
  %3655 = add i32 %3648, 36
  %3656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.f32 %3656, 0
  %3658 = add i32 %3648, 60
  %3659 = add i32 %3648, 92
  %3660 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3659, i32 undef)  ; BufferLoad(srv,index,wot)
  %3661 = extractvalue %dx.types.ResRet.i32 %3660, 0
  %3662 = add i32 %3648, 116
  %3663 = fsub fast float %3614, %3651
  %3664 = fsub fast float %3615, %3654
  %3665 = fmul fast float %3622, %3663
  %3666 = fmul fast float %3622, %3664
  %3667 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3668 = call float @dx.op.unary.f32(i32 7, float %3666)  ; Saturate(value)
  %3669 = fsub fast float 1.000000e+00, %3668
  %3670 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3671 = extractvalue %dx.types.CBufRet.f32 %3670, 2
  %3672 = call float @dx.op.unary.f32(i32 83, float %3667)  ; DerivCoarseX(value)
  %3673 = call float @dx.op.unary.f32(i32 83, float %3669)  ; DerivCoarseX(value)
  %3674 = call float @dx.op.unary.f32(i32 84, float %3667)  ; DerivCoarseY(value)
  %3675 = call float @dx.op.unary.f32(i32 84, float %3669)  ; DerivCoarseY(value)
  %3676 = fmul fast float %3672, %3671
  %3677 = fmul fast float %3673, %3671
  %3678 = fmul fast float %3674, %3671
  %3679 = fmul fast float %3675, %3671
  %3680 = call float @dx.op.dot2.f32(i32 54, float %3678, float %3679, float %3678, float %3679)  ; Dot2(ax,ay,bx,by)
  %3681 = call float @dx.op.dot2.f32(i32 54, float %3676, float %3677, float %3676, float %3677)  ; Dot2(ax,ay,bx,by)
  %3682 = call float @dx.op.binary.f32(i32 35, float %3681, float %3680)  ; FMax(a,b)
  %3683 = call float @dx.op.unary.f32(i32 23, float %3682)  ; Log(value)
  %3684 = fmul fast float %3683, 5.000000e-01
  %3685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3685, 1
  %3687 = fadd fast float %3686, %3684
  %3688 = call float @dx.op.binary.f32(i32 35, float %3687, float 0.000000e+00)  ; FMax(a,b)
  %3689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %3690 = extractvalue %dx.types.CBufRet.f32 %3689, 3
  %3691 = fadd fast float %3690, %3688
  %3692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %3693 = extractvalue %dx.types.CBufRet.f32 %3692, 3
  %3694 = fadd fast float %3691, %3693
  %3695 = add i32 %3661, 0
  %3696 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3695, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3697 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3696, i32 0)  ; GetDimensions(handle,mipLevel)
  %3698 = extractvalue %dx.types.Dimensions %3697, 0
  %3699 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3698)  ; FirstbitLo(value)
  %3700 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3701 = extractvalue %dx.types.CBufRet.i32 %3700, 1
  %3702 = sub nsw i32 %3701, %3699
  %3703 = sitofp i32 %3702 to float
  %3704 = fsub fast float %3694, %3703
  %3705 = call float @dx.op.binary.f32(i32 35, float %3704, float 0.000000e+00)  ; FMax(a,b)
  %3706 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3696, %dx.types.Handle %29, float %3667, float %3669, float %3657, float undef, i32 0, i32 0, i32 undef, float %3705)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3707 = extractvalue %dx.types.ResRet.f32 %3706, 0
  %3708 = fcmp ule float %3707, 0x3FE0101020000000
  %3709 = extractvalue %dx.types.CBufRet.i32 %3700, 0
  %3710 = and i32 %3709, 128
  %3711 = icmp ne i32 %3710, 0
  %3712 = and i1 %3708, %3711
  br i1 %3712, label %3863, label %3713

; <label>:3713                                    ; preds = %3647
  %3714 = add i32 %3648, 20
  %3715 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3714, i32 undef)  ; BufferLoad(srv,index,wot)
  %3716 = extractvalue %dx.types.ResRet.f32 %3715, 0
  %3717 = add i32 %3648, 24
  %3718 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3717, i32 undef)  ; BufferLoad(srv,index,wot)
  %3719 = extractvalue %dx.types.ResRet.f32 %3718, 0
  %3720 = add i32 %3648, 40
  %3721 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3720, i32 undef)  ; BufferLoad(srv,index,wot)
  %3722 = extractvalue %dx.types.ResRet.f32 %3721, 0
  %3723 = add i32 %3648, 96
  %3724 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3723, i32 undef)  ; BufferLoad(srv,index,wot)
  %3725 = extractvalue %dx.types.ResRet.i32 %3724, 0
  %3726 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3727 = extractvalue %dx.types.CBufRet.f32 %3726, 2
  %3728 = fmul fast float %3727, %3667
  %3729 = fmul fast float %3727, %3669
  %3730 = extractvalue %dx.types.CBufRet.f32 %3726, 3
  %3731 = fadd fast float %3728, %3730
  %3732 = fadd fast float %3729, %3730
  %3733 = add i32 %3725, 0
  %3734 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3733, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3735 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3734, i32 0)  ; GetDimensions(handle,mipLevel)
  %3736 = extractvalue %dx.types.Dimensions %3735, 0
  %3737 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3736)  ; FirstbitLo(value)
  %3738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3739 = extractvalue %dx.types.CBufRet.i32 %3738, 1
  %3740 = sub nsw i32 %3739, %3737
  %3741 = sitofp i32 %3740 to float
  %3742 = fsub fast float %3691, %3741
  %3743 = call float @dx.op.binary.f32(i32 35, float %3742, float 0.000000e+00)  ; FMax(a,b)
  %3744 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3734, %dx.types.Handle %29, float %3731, float %3732, float %3722, float undef, i32 0, i32 0, i32 undef, float %3743)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 0
  %3746 = fmul fast float %3745, %3716
  %3747 = fadd fast float %3746, %3719
  %3748 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3749 = extractvalue %dx.types.CBufRet.f32 %3748, 0
  %3750 = extractvalue %dx.types.CBufRet.f32 %3748, 1
  %3751 = extractvalue %dx.types.CBufRet.f32 %3748, 2
  %3752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3753 = extractvalue %dx.types.CBufRet.f32 %3752, 3
  %3754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3754, 3
  %3756 = extractvalue %dx.types.CBufRet.f32 %3748, 3
  %3757 = fadd fast float %3753, %3614
  %3758 = fadd fast float %3755, %3615
  %3759 = fadd fast float %3747, %3756
  %3760 = fmul fast float %3757, %3749
  %3761 = call float @dx.op.tertiary.f32(i32 46, float %3758, float %3750, float %3760)  ; FMad(a,b,c)
  %3762 = call float @dx.op.tertiary.f32(i32 46, float %3759, float %3751, float %3761)  ; FMad(a,b,c)
  %3763 = fsub fast float %3762, %3756
  %3764 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3765 = extractvalue %dx.types.CBufRet.f32 %3764, 2
  %3766 = fsub fast float %3763, %3765
  %3767 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3768 = extractvalue %dx.types.CBufRet.i32 %3767, 0
  %3769 = call i32 @dx.op.binary.i32(i32 40, i32 %3645, i32 %3768)  ; UMin(a,b)
  %3770 = mul i32 %3769, 36
  %3771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3772 = extractvalue %dx.types.ResRet.i32 %3771, 0
  %3773 = add i32 %3770, 4
  %3774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %3775 = extractvalue %dx.types.CBufRet.f32 %3774, 0
  %3776 = fmul fast float %3775, %3667
  %3777 = fmul fast float %3775, %3669
  %3778 = extractvalue %dx.types.CBufRet.f32 %3774, 1
  %3779 = fadd fast float %3776, %3778
  %3780 = fadd fast float %3777, %3778
  %3781 = icmp eq i32 %3772, 0
  br i1 %3781, label %3850, label %3782

; <label>:3782                                    ; preds = %3713
  br label %3783

; <label>:3783                                    ; preds = %3840, %3782
  %3784 = phi float [ %3841, %3840 ], [ 0.000000e+00, %3782 ]
  %3785 = phi float [ %3842, %3840 ], [ 0.000000e+00, %3782 ]
  %3786 = phi float [ %3843, %3840 ], [ 0.000000e+00, %3782 ]
  %3787 = phi float [ %3844, %3840 ], [ 0.000000e+00, %3782 ]
  %3788 = phi float [ %3845, %3840 ], [ 0.000000e+00, %3782 ]
  %3789 = phi float [ %3846, %3840 ], [ 0.000000e+00, %3782 ]
  %3790 = phi i32 [ %3847, %3840 ], [ 0, %3782 ]
  %3791 = shl i32 %3790, 2
  %3792 = add i32 %3658, %3791
  %3793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %3792, i32 undef)  ; BufferLoad(srv,index,wot)
  %3794 = extractvalue %dx.types.ResRet.f32 %3793, 0
  %3795 = add i32 %3662, %3791
  %3796 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %3795, i32 undef)  ; BufferLoad(srv,index,wot)
  %3797 = extractvalue %dx.types.ResRet.i32 %3796, 0
  %3798 = add i32 %3797, 0
  %3799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3798, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3800 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %3799, i32 0)  ; GetDimensions(handle,mipLevel)
  %3801 = extractvalue %dx.types.Dimensions %3800, 0
  %3802 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3801)  ; FirstbitLo(value)
  %3803 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %3804 = extractvalue %dx.types.CBufRet.i32 %3803, 1
  %3805 = sub nsw i32 %3804, %3802
  %3806 = sitofp i32 %3805 to float
  %3807 = fsub fast float %3691, %3806
  %3808 = call float @dx.op.binary.f32(i32 35, float %3807, float 0.000000e+00)  ; FMax(a,b)
  %3809 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3799, %dx.types.Handle %29, float %3779, float %3780, float %3794, float undef, i32 0, i32 0, i32 undef, float %3808)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3810 = extractvalue %dx.types.ResRet.f32 %3809, 0
  %3811 = fcmp fast ogt float %3810, 0.000000e+00
  br i1 %3811, label %3812, label %3840

; <label>:3812                                    ; preds = %3783
  %3813 = add i32 %3773, %3791
  %3814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %3813, i32 undef)  ; BufferLoad(srv,index,wot)
  %3815 = extractvalue %dx.types.ResRet.i32 %3814, 0
  %3816 = and i32 %3815, 32767
  %3817 = mul nuw nsw i32 %3816, 928
  %3818 = add nuw nsw i32 %3817, 48
  %3819 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3818, i32 undef)  ; BufferLoad(srv,index,wot)
  %3820 = extractvalue %dx.types.ResRet.f32 %3819, 0
  %3821 = extractvalue %dx.types.ResRet.f32 %3819, 1
  %3822 = extractvalue %dx.types.ResRet.f32 %3819, 2
  %3823 = add nuw nsw i32 %3817, 60
  %3824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %3823, i32 undef)  ; BufferLoad(srv,index,wot)
  %3825 = extractvalue %dx.types.ResRet.f32 %3824, 0
  %3826 = extractvalue %dx.types.ResRet.f32 %3824, 1
  %3827 = extractvalue %dx.types.ResRet.f32 %3824, 2
  %3828 = fmul fast float %3820, %3810
  %3829 = fmul fast float %3821, %3810
  %3830 = fmul fast float %3822, %3810
  %3831 = fadd fast float %3828, %3784
  %3832 = fadd fast float %3829, %3785
  %3833 = fadd fast float %3830, %3786
  %3834 = fmul fast float %3825, %3810
  %3835 = fmul fast float %3826, %3810
  %3836 = fmul fast float %3827, %3810
  %3837 = fadd fast float %3834, %3787
  %3838 = fadd fast float %3835, %3788
  %3839 = fadd fast float %3836, %3789
  br label %3840

; <label>:3840                                    ; preds = %3812, %3783
  %3841 = phi float [ %3831, %3812 ], [ %3784, %3783 ]
  %3842 = phi float [ %3832, %3812 ], [ %3785, %3783 ]
  %3843 = phi float [ %3833, %3812 ], [ %3786, %3783 ]
  %3844 = phi float [ %3837, %3812 ], [ %3787, %3783 ]
  %3845 = phi float [ %3838, %3812 ], [ %3788, %3783 ]
  %3846 = phi float [ %3839, %3812 ], [ %3789, %3783 ]
  %3847 = add nuw i32 %3790, 1
  %3848 = icmp eq i32 %3847, %3772
  br i1 %3848, label %3849, label %3783

; <label>:3849                                    ; preds = %3840
  br label %3850

; <label>:3850                                    ; preds = %3849, %3713
  %3851 = phi float [ 0.000000e+00, %3713 ], [ %3841, %3849 ]
  %3852 = phi float [ 0.000000e+00, %3713 ], [ %3842, %3849 ]
  %3853 = phi float [ 0.000000e+00, %3713 ], [ %3843, %3849 ]
  %3854 = phi float [ 0.000000e+00, %3713 ], [ %3844, %3849 ]
  %3855 = phi float [ 0.000000e+00, %3713 ], [ %3845, %3849 ]
  %3856 = phi float [ 0.000000e+00, %3713 ], [ %3846, %3849 ]
  %3857 = fadd fast float %3854, %3851
  %3858 = fmul fast float %3857, 0x3F847AE140000000
  %3859 = fadd fast float %3855, %3852
  %3860 = fmul fast float %3859, 0x3F847AE140000000
  %3861 = fadd fast float %3856, %3853
  %3862 = fmul fast float %3861, 0x3F847AE140000000
  br label %3863

; <label>:3863                                    ; preds = %3850, %3647, %3592, %3589, %3560, %3522
  %3864 = phi float [ %3574, %3560 ], [ -1.310720e+05, %3522 ], [ %3766, %3850 ], [ -1.310720e+05, %3592 ], [ -1.310720e+05, %3647 ], [ -1.310720e+05, %3589 ]
  %3865 = phi float [ %3584, %3560 ], [ 0.000000e+00, %3522 ], [ %3858, %3850 ], [ 0.000000e+00, %3592 ], [ 0.000000e+00, %3647 ], [ 0.000000e+00, %3589 ]
  %3866 = phi float [ %3586, %3560 ], [ 0.000000e+00, %3522 ], [ %3860, %3850 ], [ 0.000000e+00, %3592 ], [ 0.000000e+00, %3647 ], [ 0.000000e+00, %3589 ]
  %3867 = phi float [ %3588, %3560 ], [ 0.000000e+00, %3522 ], [ %3862, %3850 ], [ 0.000000e+00, %3592 ], [ 0.000000e+00, %3647 ], [ 0.000000e+00, %3589 ]
  %3868 = phi i1 [ true, %3560 ], [ false, %3522 ], [ true, %3850 ], [ false, %3592 ], [ false, %3647 ], [ false, %3589 ]
  %3869 = and i32 %141, 3
  %3870 = icmp eq i32 %3869, 1
  %3871 = select i1 %3870, float 1.000000e+00, float 0.000000e+00
  %3872 = fsub fast float %3864, %125
  %3873 = call float @dx.op.unary.f32(i32 7, float %3872)  ; Saturate(value)
  %3874 = select i1 %3868, float %3873, float 1.000000e+00
  %3875 = fmul fast float %3874, %3871
  %3876 = icmp eq i32 %3869, 3
  %3877 = select i1 %3876, float 1.000000e+00, float %3875
  %3878 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3877)  ; FMax(a,b)
  %3879 = call float @dx.op.unary.f32(i32 7, float %3878)  ; Saturate(value)
  %3880 = fcmp fast une float %3879, 0.000000e+00
  %3881 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %3882 = call float @dx.op.unary.f32(i32 25, float %3881)  ; Rsqrt(value)
  br i1 %3880, label %3890, label %3883

; <label>:3883                                    ; preds = %3863
  %3884 = fmul fast float %3882, %123
  %3885 = fmul fast float %3882, %124
  %3886 = fmul fast float %3882, %125
  %3887 = fsub fast float -0.000000e+00, %3884
  %3888 = fsub fast float -0.000000e+00, %3885
  %3889 = fsub fast float -0.000000e+00, %3886
  br label %4058

; <label>:3890                                    ; preds = %3863
  %3891 = fmul fast float %123, %3882
  %3892 = fsub fast float -0.000000e+00, %3891
  %3893 = fmul fast float %124, %3882
  %3894 = fsub fast float -0.000000e+00, %3893
  %3895 = fmul fast float %125, %3882
  %3896 = fsub fast float -0.000000e+00, %3895
  %3897 = call float @dx.op.dot3.f32(i32 55, float %3892, float %3894, float %3896, float %73, float %75, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %3898 = fmul fast float %3879, 2.500000e+00
  %3899 = call float @dx.op.unary.f32(i32 7, float %3898)  ; Saturate(value)
  %3900 = fmul fast float %3879, 0x4013FFFFE0000000
  %3901 = fadd fast float %3900, 0xBFFFFFFFE0000000
  %3902 = call float @dx.op.unary.f32(i32 7, float %3901)  ; Saturate(value)
  %3903 = fmul fast float %3879, 0x4004000020000000
  %3904 = fadd fast float %3903, 0xBFF8000040000000
  %3905 = call float @dx.op.unary.f32(i32 7, float %3904)  ; Saturate(value)
  %3906 = call float @dx.op.unary.f32(i32 7, float %3899)  ; Saturate(value)
  %3907 = fmul fast float %3468, 1.000000e+01
  %3908 = call float @dx.op.unary.f32(i32 7, float %3907)  ; Saturate(value)
  %3909 = fmul fast float %3908, 2.000000e+00
  %3910 = fsub fast float 3.000000e+00, %3909
  %3911 = fmul fast float %3908, %3908
  %3912 = fmul fast float %3911, %3910
  %3913 = fsub fast float 1.000000e+00, %3912
  %3914 = fsub fast float 0x3FE3333340000000, %3489
  %3915 = fmul fast float %3914, 0x400AAAAAA0000000
  %3916 = call float @dx.op.unary.f32(i32 7, float %3915)  ; Saturate(value)
  %3917 = fmul fast float %3913, %3916
  %3918 = fmul fast float %3501, 0x3FEA2B8620000000
  %3919 = fmul fast float %3502, 0x3FEA2B8620000000
  %3920 = fmul fast float %3503, 0x3FEA2B8620000000
  %3921 = fadd fast float %3918, 0x3FC81DFBA0000000
  %3922 = fmul fast float %3921, %3501
  %3923 = fadd fast float %3922, 0x3F910E6020000000
  %3924 = fadd fast float %3919, 0x3FC81DFBA0000000
  %3925 = fmul fast float %3924, %3502
  %3926 = fadd fast float %3925, 0x3F910E6020000000
  %3927 = fadd fast float %3920, 0x3FC81DFBA0000000
  %3928 = fmul fast float %3927, %3503
  %3929 = fadd fast float %3928, 0x3F910E6020000000
  %3930 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3931 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3932 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3933 = fsub fast float %3930, %3501
  %3934 = fsub fast float %3931, %3502
  %3935 = fsub fast float %3932, %3503
  %3936 = fmul fast float %3933, %3906
  %3937 = fmul fast float %3936, %3917
  %3938 = fmul fast float %3934, %3906
  %3939 = fmul fast float %3938, %3917
  %3940 = fmul fast float %3935, %3906
  %3941 = fmul fast float %3940, %3917
  %3942 = fadd fast float %3937, %3501
  %3943 = fadd fast float %3939, %3502
  %3944 = fadd fast float %3941, %3503
  %3945 = fmul fast float %3436, %3436
  %3946 = fmul fast float %3945, %3945
  %3947 = fadd fast float %3902, 1.000000e+00
  %3948 = fsub fast float %3947, %3917
  %3949 = call float @dx.op.unary.f32(i32 7, float %3948)  ; Saturate(value)
  %3950 = call float @dx.op.dot3.f32(i32 55, float %73, float %75, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3951 = call float @dx.op.unary.f32(i32 7, float %3950)  ; Saturate(value)
  %3952 = fsub fast float 1.000000e+00, %3946
  %3953 = call float @dx.op.binary.f32(i32 36, float %3949, float %3952)  ; FMin(a,b)
  %3954 = call float @dx.op.unary.f32(i32 7, float %3905)  ; Saturate(value)
  %3955 = call float @dx.op.binary.f32(i32 35, float %3953, float %3954)  ; FMax(a,b)
  %3956 = fadd fast float %3951, 0xBFE4CCCCC0000000
  %3957 = fmul fast float %3956, 0x4006DB6DA0000000
  %3958 = call float @dx.op.unary.f32(i32 7, float %3957)  ; Saturate(value)
  %3959 = fmul fast float %3958, 2.000000e+00
  %3960 = fsub fast float 3.000000e+00, %3959
  %3961 = bitcast float %3486 to i32
  %3962 = ashr i32 %3961, 1
  %3963 = add nsw i32 %3962, 532487669
  %3964 = bitcast i32 %3963 to float
  %3965 = fsub fast float 1.000000e+00, %3964
  %3966 = bitcast float %3965 to i32
  %3967 = sub nsw i32 2129859010, %3966
  %3968 = bitcast i32 %3967 to float
  %3969 = fmul fast float %3968, 2.000000e+00
  %3970 = bitcast float %3487 to i32
  %3971 = ashr i32 %3970, 1
  %3972 = add nsw i32 %3971, 532487669
  %3973 = bitcast i32 %3972 to float
  %3974 = fsub fast float 1.000000e+00, %3973
  %3975 = bitcast float %3974 to i32
  %3976 = sub nsw i32 2129859010, %3975
  %3977 = bitcast i32 %3976 to float
  %3978 = fmul fast float %3977, 2.000000e+00
  %3979 = bitcast float %3488 to i32
  %3980 = ashr i32 %3979, 1
  %3981 = add nsw i32 %3980, 532487669
  %3982 = bitcast i32 %3981 to float
  %3983 = fsub fast float 1.000000e+00, %3982
  %3984 = bitcast float %3983 to i32
  %3985 = sub nsw i32 2129859010, %3984
  %3986 = bitcast i32 %3985 to float
  %3987 = fmul fast float %3986, 2.000000e+00
  %3988 = fsub fast float 0x4002A9FBE0000000, %3969
  %3989 = fadd fast float %3969, 0x3FD54FDF00000000
  %3990 = bitcast float %3989 to i32
  %3991 = sub nsw i32 2129859010, %3990
  %3992 = bitcast i32 %3991 to float
  %3993 = fmul fast float %3992, %3988
  %3994 = fmul fast float %3993, %3993
  %3995 = fsub fast float 0x4002A9FBE0000000, %3978
  %3996 = fadd fast float %3978, 0x3FD54FDF00000000
  %3997 = bitcast float %3996 to i32
  %3998 = sub nsw i32 2129859010, %3997
  %3999 = bitcast i32 %3998 to float
  %4000 = fmul fast float %3999, %3995
  %4001 = fmul fast float %4000, %4000
  %4002 = fsub fast float 0x4002A9FBE0000000, %3987
  %4003 = fadd fast float %3987, 0x3FD54FDF00000000
  %4004 = bitcast float %4003 to i32
  %4005 = sub nsw i32 2129859010, %4004
  %4006 = bitcast i32 %4005 to float
  %4007 = fmul fast float %4006, %4002
  %4008 = fmul fast float %4007, %4007
  %4009 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %3994)  ; FMax(a,b)
  %4010 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4001)  ; FMax(a,b)
  %4011 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4008)  ; FMax(a,b)
  %4012 = fsub fast float 1.000000e+00, %3897
  %4013 = fadd fast float %4012, %3913
  %4014 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4015 = fsub fast float 1.000000e+00, %3877
  %4016 = fmul fast float %3955, %4015
  %4017 = fmul fast float %3958, %3958
  %4018 = fmul fast float %4017, %4016
  %4019 = fmul fast float %4018, %3960
  %4020 = fmul fast float %4015, 0xBFE99999A0000000
  %4021 = fmul fast float %4020, %3906
  %4022 = fmul fast float %4021, %3917
  %4023 = fadd fast float %4022, 1.000000e+00
  %4024 = fadd fast float %3489, -1.000000e+00
  %4025 = fmul fast float %4023, %4024
  %4026 = fadd fast float %4025, 1.000000e+00
  %4027 = fsub fast float %4009, %3486
  %4028 = fsub fast float %4010, %3487
  %4029 = fsub fast float %4011, %3488
  %4030 = fmul fast float %4019, %4027
  %4031 = fmul fast float %4019, %4028
  %4032 = fmul fast float %4019, %4029
  %4033 = fadd fast float %4030, %3486
  %4034 = fadd fast float %4031, %3487
  %4035 = fadd fast float %4032, %3488
  %4036 = fsub fast float %73, %3465
  %4037 = fsub fast float %75, %3466
  %4038 = fsub fast float %77, %3467
  %4039 = fmul fast float %4019, %4036
  %4040 = fmul fast float %4019, %4037
  %4041 = fmul fast float %4019, %4038
  %4042 = fadd fast float %4039, %3465
  %4043 = fadd fast float %4040, %3466
  %4044 = fadd fast float %4041, %3467
  %4045 = fmul fast float %4019, %4014
  %4046 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4047 = fsub fast float 1.000000e+00, %4046
  %4048 = fmul fast float %4045, %4047
  %4049 = fadd fast float %4048, %4046
  %4050 = fsub fast float 1.000000e+00, %3436
  %4051 = fmul fast float %4019, %4050
  %4052 = fadd fast float %4051, %3436
  %4053 = call float @dx.op.dot3.f32(i32 55, float %4042, float %4043, float %4044, float %4042, float %4043, float %4044)  ; Dot3(ax,ay,az,bx,by,bz)
  %4054 = call float @dx.op.unary.f32(i32 25, float %4053)  ; Rsqrt(value)
  %4055 = fmul fast float %4042, %4054
  %4056 = fmul fast float %4043, %4054
  %4057 = fmul fast float %4044, %4054
  br label %4058

; <label>:4058                                    ; preds = %3890, %3883
  %4059 = phi float [ %3889, %3883 ], [ %3896, %3890 ]
  %4060 = phi float [ %3888, %3883 ], [ %3894, %3890 ]
  %4061 = phi float [ %3887, %3883 ], [ %3892, %3890 ]
  %4062 = phi float [ %3886, %3883 ], [ %3895, %3890 ]
  %4063 = phi float [ %3885, %3883 ], [ %3893, %3890 ]
  %4064 = phi float [ %3884, %3883 ], [ %3891, %3890 ]
  %4065 = phi float [ %3486, %3883 ], [ %4033, %3890 ]
  %4066 = phi float [ %3487, %3883 ], [ %4034, %3890 ]
  %4067 = phi float [ %3488, %3883 ], [ %4035, %3890 ]
  %4068 = phi float [ %3465, %3883 ], [ %4055, %3890 ]
  %4069 = phi float [ %3466, %3883 ], [ %4056, %3890 ]
  %4070 = phi float [ %3467, %3883 ], [ %4057, %3890 ]
  %4071 = phi float [ %3501, %3883 ], [ %3942, %3890 ]
  %4072 = phi float [ %3502, %3883 ], [ %3943, %3890 ]
  %4073 = phi float [ %3503, %3883 ], [ %3944, %3890 ]
  %4074 = phi float [ %3489, %3883 ], [ %4049, %3890 ]
  %4075 = phi float [ %3436, %3883 ], [ %4052, %3890 ]
  %4076 = select i1 %167, float 0.000000e+00, float %4067
  %4077 = call float @dx.op.dot3.f32(i32 55, float %4068, float %4069, float %4070, float %4061, float %4060, float %4059)  ; Dot3(ax,ay,az,bx,by,bz)
  %4078 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4079 = call float @dx.op.dot3.f32(i32 55, float %4064, float %4063, float %4062, float %4068, float %4069, float %4070)  ; Dot3(ax,ay,az,bx,by,bz)
  %4080 = fmul fast float %4079, 2.000000e+00
  %4081 = fmul fast float %4080, %4068
  %4082 = fmul fast float %4080, %4069
  %4083 = fmul fast float %4080, %4070
  %4084 = fsub fast float %4064, %4081
  %4085 = fsub fast float %4063, %4082
  %4086 = fsub fast float %4062, %4083
  %4087 = call float @dx.op.binary.f32(i32 36, float %4075, float 1.000000e+00)  ; FMin(a,b)
  %4088 = fsub fast float 1.000000e+00, %4075
  %4089 = bitcast float %4088 to i32
  %4090 = sub nsw i32 2129859010, %4089
  %4091 = bitcast i32 %4090 to float
  %4092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4092, 0
  %4094 = extractvalue %dx.types.CBufRet.f32 %4092, 1
  %4095 = extractvalue %dx.types.CBufRet.f32 %4092, 2
  %4096 = fadd fast float %4093, %123
  %4097 = fadd fast float %4094, %124
  %4098 = fadd fast float %4095, %125
  %4099 = fmul fast float %4068, 3.200000e+01
  %4100 = fmul fast float %4069, 3.200000e+01
  %4101 = fadd fast float %4096, %4099
  %4102 = fadd fast float %4097, %4100
  %4103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4104 = extractvalue %dx.types.CBufRet.f32 %4103, 0
  %4105 = extractvalue %dx.types.CBufRet.f32 %4103, 1
  %4106 = fsub fast float %4101, %4104
  %4107 = fsub fast float %4102, %4105
  %4108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4109 = extractvalue %dx.types.CBufRet.f32 %4108, 0
  %4110 = extractvalue %dx.types.CBufRet.f32 %4108, 1
  %4111 = fmul fast float %4106, %4109
  %4112 = fmul fast float %4107, %4110
  %4113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4113, 0
  %4115 = fmul fast float %4111, %4114
  %4116 = extractvalue %dx.types.CBufRet.f32 %4113, 1
  %4117 = fadd fast float %4115, %4116
  %4118 = extractvalue %dx.types.CBufRet.f32 %4113, 2
  %4119 = fmul fast float %4118, %4112
  %4120 = extractvalue %dx.types.CBufRet.f32 %4113, 3
  %4121 = fadd fast float %4119, %4120
  %4122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %4117, float %4121, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4123 = extractvalue %dx.types.ResRet.f32 %4122, 0
  %4124 = extractvalue %dx.types.ResRet.f32 %4122, 1
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 1
  %4127 = extractvalue %dx.types.CBufRet.f32 %4125, 0
  %4128 = fsub fast float %4126, %4127
  %4129 = fmul fast float %4128, %4123
  %4130 = fadd fast float %4129, %4127
  %4131 = extractvalue %dx.types.CBufRet.f32 %4125, 3
  %4132 = extractvalue %dx.types.CBufRet.f32 %4125, 2
  %4133 = fsub fast float %4131, %4132
  %4134 = fmul fast float %4133, %4124
  %4135 = fadd fast float %4134, %4132
  %4136 = fsub fast float %4098, %4130
  %4137 = fsub fast float %4135, %4130
  %4138 = fdiv fast float %4136, %4137
  %4139 = call float @dx.op.unary.f32(i32 7, float %4138)  ; Saturate(value)
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 0
  %4142 = fmul fast float %4141, %4139
  %4143 = extractvalue %dx.types.CBufRet.f32 %4140, 1
  %4144 = fadd fast float %4142, %4143
  %4145 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %4117, float %4121, float %4144, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4146 = extractvalue %dx.types.ResRet.f32 %4145, 0
  %4147 = extractvalue %dx.types.ResRet.f32 %4145, 1
  %4148 = extractvalue %dx.types.ResRet.f32 %4145, 2
  %4149 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4150 = extractvalue %dx.types.CBufRet.f32 %4149, 0
  %4151 = extractvalue %dx.types.CBufRet.f32 %4149, 1
  %4152 = extractvalue %dx.types.CBufRet.f32 %4149, 2
  %4153 = fmul fast float %4150, %4146
  %4154 = fmul fast float %4151, %4147
  %4155 = fmul fast float %4152, %4148
  %4156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4157 = extractvalue %dx.types.CBufRet.f32 %4156, 0
  %4158 = extractvalue %dx.types.CBufRet.f32 %4156, 1
  %4159 = extractvalue %dx.types.CBufRet.f32 %4156, 2
  %4160 = fadd fast float %4153, %4157
  %4161 = fadd fast float %4154, %4158
  %4162 = fadd fast float %4155, %4159
  %4163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.f32 %4163, 0
  %4165 = fmul fast float %4164, %4111
  %4166 = extractvalue %dx.types.CBufRet.f32 %4163, 1
  %4167 = fadd fast float %4165, %4166
  %4168 = extractvalue %dx.types.CBufRet.f32 %4163, 2
  %4169 = fmul fast float %4168, %4112
  %4170 = extractvalue %dx.types.CBufRet.f32 %4163, 3
  %4171 = fadd fast float %4169, %4170
  %4172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4173 = extractvalue %dx.types.CBufRet.f32 %4172, 0
  %4174 = extractvalue %dx.types.CBufRet.f32 %4172, 1
  %4175 = extractvalue %dx.types.CBufRet.f32 %4172, 2
  %4176 = extractvalue %dx.types.CBufRet.f32 %4172, 3
  %4177 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4178 = extractvalue %dx.types.CBufRet.f32 %4177, 0
  %4179 = extractvalue %dx.types.CBufRet.f32 %4177, 1
  %4180 = extractvalue %dx.types.CBufRet.f32 %4177, 2
  %4181 = extractvalue %dx.types.CBufRet.f32 %4177, 3
  %4182 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4167, float %4171, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4183 = extractvalue %dx.types.ResRet.f32 %4182, 0
  %4184 = extractvalue %dx.types.ResRet.f32 %4182, 1
  %4185 = extractvalue %dx.types.ResRet.f32 %4182, 2
  %4186 = extractvalue %dx.types.ResRet.f32 %4182, 3
  %4187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4167, float %4171, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4188 = extractvalue %dx.types.ResRet.f32 %4187, 0
  %4189 = extractvalue %dx.types.ResRet.f32 %4187, 1
  %4190 = extractvalue %dx.types.ResRet.f32 %4187, 2
  %4191 = extractvalue %dx.types.ResRet.f32 %4187, 3
  %4192 = fmul fast float %4183, %4160
  %4193 = fmul fast float %4188, %4160
  %4194 = fmul fast float %4190, %4160
  %4195 = fmul fast float %4186, %4160
  %4196 = fadd fast float %4192, %4173
  %4197 = fadd fast float %4193, %4174
  %4198 = fadd fast float %4194, %4175
  %4199 = fadd fast float %4195, %4176
  %4200 = fmul fast float %4184, %4160
  %4201 = fmul fast float %4189, %4160
  %4202 = fadd fast float %4200, %4178
  %4203 = fadd fast float %4201, %4179
  %4204 = fmul fast float %4185, %4160
  %4205 = fmul fast float %4191, %4160
  %4206 = fadd fast float %4204, %4180
  %4207 = fadd fast float %4205, %4181
  %4208 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4167, float %4171, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4209 = extractvalue %dx.types.ResRet.f32 %4208, 0
  %4210 = extractvalue %dx.types.ResRet.f32 %4208, 1
  %4211 = extractvalue %dx.types.ResRet.f32 %4208, 2
  %4212 = extractvalue %dx.types.ResRet.f32 %4208, 3
  %4213 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4167, float %4171, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4214 = extractvalue %dx.types.ResRet.f32 %4213, 0
  %4215 = extractvalue %dx.types.ResRet.f32 %4213, 1
  %4216 = extractvalue %dx.types.ResRet.f32 %4213, 2
  %4217 = extractvalue %dx.types.ResRet.f32 %4213, 3
  %4218 = fmul fast float %4209, %4161
  %4219 = fmul fast float %4214, %4161
  %4220 = fmul fast float %4216, %4161
  %4221 = fmul fast float %4212, %4161
  %4222 = fadd fast float %4196, %4218
  %4223 = fadd fast float %4197, %4219
  %4224 = fadd fast float %4198, %4220
  %4225 = fadd fast float %4199, %4221
  %4226 = fmul fast float %4210, %4161
  %4227 = fmul fast float %4215, %4161
  %4228 = fadd fast float %4202, %4226
  %4229 = fadd fast float %4203, %4227
  %4230 = fmul fast float %4211, %4161
  %4231 = fmul fast float %4217, %4161
  %4232 = fadd fast float %4206, %4230
  %4233 = fadd fast float %4207, %4231
  %4234 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4167, float %4171, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4235 = extractvalue %dx.types.ResRet.f32 %4234, 0
  %4236 = extractvalue %dx.types.ResRet.f32 %4234, 1
  %4237 = extractvalue %dx.types.ResRet.f32 %4234, 2
  %4238 = extractvalue %dx.types.ResRet.f32 %4234, 3
  %4239 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4167, float %4171, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4240 = extractvalue %dx.types.ResRet.f32 %4239, 0
  %4241 = extractvalue %dx.types.ResRet.f32 %4239, 1
  %4242 = extractvalue %dx.types.ResRet.f32 %4239, 2
  %4243 = extractvalue %dx.types.ResRet.f32 %4239, 3
  %4244 = fmul fast float %4235, %4162
  %4245 = fmul fast float %4240, %4162
  %4246 = fmul fast float %4242, %4162
  %4247 = fmul fast float %4238, %4162
  %4248 = fadd fast float %4222, %4244
  %4249 = fadd fast float %4223, %4245
  %4250 = fadd fast float %4224, %4246
  %4251 = fadd fast float %4225, %4247
  %4252 = fmul fast float %4236, %4162
  %4253 = fmul fast float %4241, %4162
  %4254 = fadd fast float %4228, %4252
  %4255 = fadd fast float %4229, %4253
  %4256 = fmul fast float %4237, %4162
  %4257 = fmul fast float %4243, %4162
  %4258 = fadd fast float %4232, %4256
  %4259 = fadd fast float %4233, %4257
  %4260 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4261 = extractvalue %dx.types.CBufRet.f32 %4260, 0
  %4262 = fsub fast float %4096, %4261
  %4263 = fsub fast float %4104, %4096
  %4264 = call float @dx.op.binary.f32(i32 35, float %4263, float %4262)  ; FMax(a,b)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4260, 1
  %4266 = fsub fast float %4097, %4265
  %4267 = fsub fast float %4105, %4097
  %4268 = call float @dx.op.binary.f32(i32 35, float %4267, float %4266)  ; FMax(a,b)
  %4269 = call float @dx.op.binary.f32(i32 35, float %4264, float %4268)  ; FMax(a,b)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4108, 3
  %4271 = fmul fast float %4270, %4269
  %4272 = call float @dx.op.unary.f32(i32 7, float %4271)  ; Saturate(value)
  %4273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.f32 %4273, 0
  %4275 = extractvalue %dx.types.CBufRet.f32 %4273, 1
  %4276 = extractvalue %dx.types.CBufRet.f32 %4273, 2
  %4277 = extractvalue %dx.types.CBufRet.f32 %4273, 3
  %4278 = fsub fast float %4274, %4248
  %4279 = fsub fast float %4275, %4249
  %4280 = fsub fast float %4276, %4250
  %4281 = fsub fast float %4277, %4251
  %4282 = fmul fast float %4278, %4272
  %4283 = fmul fast float %4279, %4272
  %4284 = fmul fast float %4280, %4272
  %4285 = fmul fast float %4281, %4272
  %4286 = fadd fast float %4282, %4248
  %4287 = fadd fast float %4283, %4249
  %4288 = fadd fast float %4284, %4250
  %4289 = fadd fast float %4285, %4251
  %4290 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4291 = extractvalue %dx.types.CBufRet.f32 %4290, 0
  %4292 = extractvalue %dx.types.CBufRet.f32 %4290, 1
  %4293 = fsub fast float %4291, %4254
  %4294 = fsub fast float %4292, %4255
  %4295 = fmul fast float %4293, %4272
  %4296 = fmul fast float %4294, %4272
  %4297 = fadd fast float %4295, %4254
  %4298 = fadd fast float %4296, %4255
  %4299 = extractvalue %dx.types.CBufRet.f32 %4290, 2
  %4300 = extractvalue %dx.types.CBufRet.f32 %4290, 3
  %4301 = fsub fast float %4299, %4258
  %4302 = fsub fast float %4300, %4259
  %4303 = fmul fast float %4301, %4272
  %4304 = fmul fast float %4302, %4272
  %4305 = fadd fast float %4303, %4258
  %4306 = fadd fast float %4304, %4259
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 0
  %4309 = fmul fast float %4308, %4286
  %4310 = fmul fast float %4308, %4287
  %4311 = fmul fast float %4308, %4288
  %4312 = fmul fast float %4308, %4289
  %4313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4314 = extractvalue %dx.types.CBufRet.f32 %4313, 0
  %4315 = fmul fast float %4314, %4297
  %4316 = fmul fast float %4314, %4298
  %4317 = fadd fast float %4315, %4309
  %4318 = fadd fast float %4316, %4311
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 0
  %4321 = fmul fast float %4320, %4305
  %4322 = fmul fast float %4320, %4306
  %4323 = fadd fast float %4317, %4321
  %4324 = fadd fast float %4318, %4322
  %4325 = extractvalue %dx.types.CBufRet.f32 %4307, 1
  %4326 = fmul fast float %4325, %4286
  %4327 = fmul fast float %4325, %4287
  %4328 = fmul fast float %4325, %4288
  %4329 = fmul fast float %4325, %4289
  %4330 = extractvalue %dx.types.CBufRet.f32 %4313, 1
  %4331 = fmul fast float %4330, %4297
  %4332 = fmul fast float %4330, %4298
  %4333 = fadd fast float %4331, %4326
  %4334 = fadd fast float %4332, %4328
  %4335 = extractvalue %dx.types.CBufRet.f32 %4319, 1
  %4336 = fmul fast float %4335, %4305
  %4337 = fmul fast float %4335, %4306
  %4338 = fadd fast float %4333, %4336
  %4339 = fadd fast float %4334, %4337
  %4340 = extractvalue %dx.types.CBufRet.f32 %4307, 2
  %4341 = fmul fast float %4340, %4286
  %4342 = fmul fast float %4340, %4287
  %4343 = fmul fast float %4340, %4288
  %4344 = fmul fast float %4340, %4289
  %4345 = extractvalue %dx.types.CBufRet.f32 %4313, 2
  %4346 = fmul fast float %4345, %4297
  %4347 = fmul fast float %4345, %4298
  %4348 = fadd fast float %4346, %4341
  %4349 = fadd fast float %4347, %4343
  %4350 = extractvalue %dx.types.CBufRet.f32 %4319, 2
  %4351 = fmul fast float %4350, %4305
  %4352 = fmul fast float %4350, %4306
  %4353 = fadd fast float %4348, %4351
  %4354 = fadd fast float %4349, %4352
  %4355 = fmul fast float %4342, %4342
  %4356 = fmul fast float %4354, %4354
  %4357 = fmul fast float %4344, %4344
  %4358 = fadd fast float %4357, %4355
  %4359 = fadd fast float %4358, %4356
  %4360 = call float @dx.op.unary.f32(i32 24, float %4359)  ; Sqrt(value)
  %4361 = fcmp fast ugt float %4360, 0.000000e+00
  br i1 %4361, label %4362, label %4377

; <label>:4362                                    ; preds = %4058
  %4363 = fsub fast float -0.000000e+00, %4344
  %4364 = fdiv fast float %4363, %4360
  %4365 = fsub fast float -0.000000e+00, %4342
  %4366 = fdiv fast float %4365, %4360
  %4367 = fdiv fast float %4354, %4360
  %4368 = fmul fast float %4353, 0x3FE279A760000000
  %4369 = fmul fast float %4366, %4342
  %4370 = fmul fast float %4367, %4354
  %4371 = fmul fast float %4364, %4344
  %4372 = fadd fast float %4369, %4371
  %4373 = fsub fast float %4372, %4370
  %4374 = call float @dx.op.unary.f32(i32 6, float %4373)  ; FAbs(value)
  %4375 = fadd fast float %4374, 0x3DDB7CDFE0000000
  %4376 = fdiv fast float %4368, %4375
  br label %4377

; <label>:4377                                    ; preds = %4362, %4058
  %4378 = phi float [ %4376, %4362 ], [ 1.000000e+00, %4058 ]
  %4379 = fmul fast float %4327, %4327
  %4380 = fmul fast float %4339, %4339
  %4381 = fmul fast float %4329, %4329
  %4382 = fadd fast float %4381, %4379
  %4383 = fadd fast float %4382, %4380
  %4384 = call float @dx.op.unary.f32(i32 24, float %4383)  ; Sqrt(value)
  %4385 = fcmp fast ugt float %4384, 0.000000e+00
  br i1 %4385, label %4386, label %4401

; <label>:4386                                    ; preds = %4377
  %4387 = fsub fast float -0.000000e+00, %4329
  %4388 = fdiv fast float %4387, %4384
  %4389 = fsub fast float -0.000000e+00, %4327
  %4390 = fdiv fast float %4389, %4384
  %4391 = fdiv fast float %4339, %4384
  %4392 = fmul fast float %4338, 0x3FE279A760000000
  %4393 = fmul fast float %4390, %4327
  %4394 = fmul fast float %4391, %4339
  %4395 = fmul fast float %4388, %4329
  %4396 = fadd fast float %4393, %4395
  %4397 = fsub fast float %4396, %4394
  %4398 = call float @dx.op.unary.f32(i32 6, float %4397)  ; FAbs(value)
  %4399 = fadd fast float %4398, 0x3DDB7CDFE0000000
  %4400 = fdiv fast float %4392, %4399
  br label %4401

; <label>:4401                                    ; preds = %4386, %4377
  %4402 = phi float [ %4400, %4386 ], [ 1.000000e+00, %4377 ]
  %4403 = call float @dx.op.binary.f32(i32 36, float %4402, float %4378)  ; FMin(a,b)
  %4404 = fmul fast float %4310, %4310
  %4405 = fmul fast float %4324, %4324
  %4406 = fmul fast float %4312, %4312
  %4407 = fadd fast float %4406, %4404
  %4408 = fadd fast float %4407, %4405
  %4409 = call float @dx.op.unary.f32(i32 24, float %4408)  ; Sqrt(value)
  %4410 = fcmp fast ugt float %4409, 0.000000e+00
  br i1 %4410, label %4411, label %4426

; <label>:4411                                    ; preds = %4401
  %4412 = fsub fast float -0.000000e+00, %4312
  %4413 = fdiv fast float %4412, %4409
  %4414 = fsub fast float -0.000000e+00, %4310
  %4415 = fdiv fast float %4414, %4409
  %4416 = fdiv fast float %4324, %4409
  %4417 = fmul fast float %4323, 0x3FE279A760000000
  %4418 = fmul fast float %4415, %4310
  %4419 = fmul fast float %4416, %4324
  %4420 = fmul fast float %4413, %4312
  %4421 = fadd fast float %4418, %4420
  %4422 = fsub fast float %4421, %4419
  %4423 = call float @dx.op.unary.f32(i32 6, float %4422)  ; FAbs(value)
  %4424 = fadd fast float %4423, 0x3DDB7CDFE0000000
  %4425 = fdiv fast float %4417, %4424
  br label %4426

; <label>:4426                                    ; preds = %4411, %4401
  %4427 = phi float [ %4425, %4411 ], [ 1.000000e+00, %4401 ]
  %4428 = call float @dx.op.binary.f32(i32 36, float %4427, float %4403)  ; FMin(a,b)
  %4429 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4430 = fcmp fast olt float %4429, 1.000000e+00
  br i1 %4430, label %4431, label %4441

; <label>:4431                                    ; preds = %4426
  %4432 = fmul fast float %4429, %4310
  %4433 = fmul fast float %4429, %4324
  %4434 = fmul fast float %4429, %4312
  %4435 = fmul fast float %4429, %4327
  %4436 = fmul fast float %4429, %4339
  %4437 = fmul fast float %4429, %4329
  %4438 = fmul fast float %4429, %4342
  %4439 = fmul fast float %4429, %4354
  %4440 = fmul fast float %4429, %4344
  br label %4441

; <label>:4441                                    ; preds = %4431, %4426
  %4442 = phi float [ %4438, %4431 ], [ %4342, %4426 ]
  %4443 = phi float [ %4439, %4431 ], [ %4354, %4426 ]
  %4444 = phi float [ %4440, %4431 ], [ %4344, %4426 ]
  %4445 = phi float [ %4435, %4431 ], [ %4327, %4426 ]
  %4446 = phi float [ %4436, %4431 ], [ %4339, %4426 ]
  %4447 = phi float [ %4437, %4431 ], [ %4329, %4426 ]
  %4448 = phi float [ %4432, %4431 ], [ %4310, %4426 ]
  %4449 = phi float [ %4433, %4431 ], [ %4324, %4426 ]
  %4450 = phi float [ %4434, %4431 ], [ %4312, %4426 ]
  %4451 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4323)  ; FMax(a,b)
  %4452 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4338)  ; FMax(a,b)
  %4453 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4353)  ; FMax(a,b)
  %4454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4455 = extractvalue %dx.types.CBufRet.f32 %4454, 0
  %4456 = fcmp fast ogt float %4455, 0.000000e+00
  %4457 = fcmp fast oge float %4111, 0.000000e+00
  %4458 = and i1 %4457, %4456
  %4459 = fcmp fast ole float %4111, 1.000000e+00
  %4460 = and i1 %4459, %4458
  %4461 = fcmp fast oge float %4112, 0.000000e+00
  %4462 = and i1 %4461, %4460
  %4463 = fcmp fast ole float %4112, 1.000000e+00
  %4464 = and i1 %4463, %4462
  br i1 %4464, label %4465, label %4610, !dx.controlflow.hints !73

; <label>:4465                                    ; preds = %4441
  %4466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4467 = extractvalue %dx.types.CBufRet.f32 %4466, 2
  %4468 = extractvalue %dx.types.CBufRet.f32 %4466, 3
  %4469 = fmul fast float %4467, %4111
  %4470 = fmul fast float %4468, %4112
  %4471 = call float @dx.op.unary.f32(i32 27, float %4469)  ; Round_ni(value)
  %4472 = call float @dx.op.unary.f32(i32 27, float %4470)  ; Round_ni(value)
  %4473 = fptosi float %4471 to i32
  %4474 = fptosi float %4472 to i32
  %4475 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %4473, i32 %4474, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4476 = extractvalue %dx.types.ResRet.i32 %4475, 0
  %4477 = and i32 %4476, 65535
  %4478 = lshr i32 %4476, 16
  %4479 = icmp eq i32 %4477, 65535
  br i1 %4479, label %4516, label %4480

; <label>:4480                                    ; preds = %4465
  %4481 = extractvalue %dx.types.CBufRet.f32 %4454, 1
  %4482 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4483 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4484 = fmul fast float %4482, %4111
  %4485 = fmul fast float %4483, %4112
  %4486 = fmul fast float %4484, 1.250000e-01
  %4487 = fmul fast float %4485, 1.250000e-01
  %4488 = call float @dx.op.unary.f32(i32 27, float %4486)  ; Round_ni(value)
  %4489 = call float @dx.op.unary.f32(i32 27, float %4487)  ; Round_ni(value)
  %4490 = fmul fast float %4488, 8.000000e+00
  %4491 = fmul fast float %4489, 8.000000e+00
  %4492 = and i32 %4476, 255
  %4493 = lshr i32 %4476, 8
  %4494 = and i32 %4493, 255
  %4495 = mul nuw nsw i32 %4492, 9
  %4496 = uitofp i32 %4495 to float
  %4497 = mul nuw nsw i32 %4494, 9
  %4498 = uitofp i32 %4497 to float
  %4499 = fadd fast float %4496, 5.000000e-01
  %4500 = fadd fast float %4499, %4484
  %4501 = fsub fast float %4500, %4490
  %4502 = fadd fast float %4498, 5.000000e-01
  %4503 = fadd fast float %4502, %4485
  %4504 = fsub fast float %4503, %4491
  %4505 = fdiv fast float %4501, %4455
  %4506 = fdiv fast float %4504, %4481
  %4507 = fmul fast float %4139, 4.375000e-01
  %4508 = fadd fast float %4507, 3.125000e-02
  %4509 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %4505, float %4506, float %4508, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4510 = extractvalue %dx.types.ResRet.f32 %4509, 0
  %4511 = extractvalue %dx.types.ResRet.f32 %4509, 1
  %4512 = extractvalue %dx.types.ResRet.f32 %4509, 2
  %4513 = fadd fast float %4510, %4451
  %4514 = fadd fast float %4511, %4452
  %4515 = fadd fast float %4512, %4453
  br label %4516

; <label>:4516                                    ; preds = %4480, %4465
  %4517 = phi float [ %4515, %4480 ], [ %4453, %4465 ]
  %4518 = phi float [ %4514, %4480 ], [ %4452, %4465 ]
  %4519 = phi float [ %4513, %4480 ], [ %4451, %4465 ]
  %4520 = icmp eq i32 %4478, 65535
  br i1 %4520, label %4610, label %4521

; <label>:4521                                    ; preds = %4516
  %4522 = extractvalue %dx.types.CBufRet.f32 %4454, 1
  %4523 = extractvalue %dx.types.CBufRet.f32 %4466, 0
  %4524 = extractvalue %dx.types.CBufRet.f32 %4466, 1
  %4525 = fmul fast float %4523, %4111
  %4526 = fmul fast float %4524, %4112
  %4527 = fmul fast float %4525, 1.250000e-01
  %4528 = fmul fast float %4526, 1.250000e-01
  %4529 = call float @dx.op.unary.f32(i32 27, float %4527)  ; Round_ni(value)
  %4530 = call float @dx.op.unary.f32(i32 27, float %4528)  ; Round_ni(value)
  %4531 = fmul fast float %4529, 8.000000e+00
  %4532 = fmul fast float %4530, 8.000000e+00
  %4533 = fsub fast float %4525, %4531
  %4534 = fsub fast float %4526, %4532
  %4535 = fadd fast float %4533, 5.000000e-01
  %4536 = fadd fast float %4534, 5.000000e-01
  %4537 = and i32 %4478, 255
  %4538 = lshr i32 %4476, 24
  %4539 = mul nuw nsw i32 %4537, 9
  %4540 = uitofp i32 %4539 to float
  %4541 = mul nuw nsw i32 %4538, 9
  %4542 = uitofp i32 %4541 to float
  %4543 = fadd fast float %4535, %4540
  %4544 = fadd fast float %4536, %4542
  %4545 = fdiv fast float %4543, %4455
  %4546 = fdiv fast float %4544, %4522
  %4547 = fmul fast float %4139, 4.375000e-01
  %4548 = fadd fast float %4547, 3.125000e-02
  %4549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %4545, float %4546, float %4548, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4550 = extractvalue %dx.types.ResRet.f32 %4549, 0
  %4551 = extractvalue %dx.types.ResRet.f32 %4549, 1
  %4552 = extractvalue %dx.types.ResRet.f32 %4549, 2
  %4553 = fadd fast float %4547, 5.312500e-01
  %4554 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %4545, float %4546, float %4553, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4556 = extractvalue %dx.types.ResRet.f32 %4554, 1
  %4557 = extractvalue %dx.types.ResRet.f32 %4554, 2
  %4558 = fmul fast float %4555, 2.000000e+00
  %4559 = fmul fast float %4556, 2.000000e+00
  %4560 = fmul fast float %4557, 2.000000e+00
  %4561 = fadd fast float %4558, -1.000000e+00
  %4562 = fadd fast float %4559, -1.000000e+00
  %4563 = fadd fast float %4560, -1.000000e+00
  %4564 = fmul fast float %4561, %4561
  %4565 = fmul fast float %4562, %4562
  %4566 = fadd fast float %4564, %4565
  %4567 = fmul fast float %4563, %4563
  %4568 = fadd fast float %4566, %4567
  %4569 = call float @dx.op.unary.f32(i32 24, float %4568)  ; Sqrt(value)
  %4570 = fcmp fast ogt float %4569, 0.000000e+00
  br i1 %4570, label %4571, label %4575

; <label>:4571                                    ; preds = %4521
  %4572 = fdiv fast float %4561, %4569
  %4573 = fdiv fast float %4562, %4569
  %4574 = fdiv fast float %4563, %4569
  br label %4575

; <label>:4575                                    ; preds = %4571, %4521
  %4576 = phi float [ %4572, %4571 ], [ 0.000000e+00, %4521 ]
  %4577 = phi float [ %4573, %4571 ], [ 0.000000e+00, %4521 ]
  %4578 = phi float [ %4574, %4571 ], [ 0.000000e+00, %4521 ]
  %4579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4580 = extractvalue %dx.types.CBufRet.f32 %4579, 0
  %4581 = extractvalue %dx.types.CBufRet.f32 %4579, 1
  %4582 = fsub fast float %4096, %4580
  %4583 = fsub fast float %4097, %4581
  %4584 = fmul fast float %4582, %4582
  %4585 = fmul fast float %4583, %4583
  %4586 = fadd fast float %4584, %4585
  %4587 = call float @dx.op.unary.f32(i32 24, float %4586)  ; Sqrt(value)
  %4588 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4589 = extractvalue %dx.types.CBufRet.f32 %4588, 0
  %4590 = extractvalue %dx.types.CBufRet.f32 %4588, 1
  %4591 = fsub fast float %4587, %4589
  %4592 = fdiv fast float %4591, %4590
  %4593 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4594 = fmul fast float %4593, 2.000000e+00
  %4595 = fsub fast float 3.000000e+00, %4594
  %4596 = fmul fast float %4593, %4593
  %4597 = fmul fast float %4596, %4595
  %4598 = call float @dx.op.dot3.f32(i32 55, float %4576, float %4577, float %4578, float %4068, float %4069, float %4070)  ; Dot3(ax,ay,az,bx,by,bz)
  %4599 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4598)  ; FMax(a,b)
  %4600 = fmul fast float %4599, 0x400C5BF8A0000000
  %4601 = fmul fast float %4597, %4550
  %4602 = fmul fast float %4601, %4600
  %4603 = fadd fast float %4602, %4519
  %4604 = fmul fast float %4597, %4551
  %4605 = fmul fast float %4604, %4600
  %4606 = fadd fast float %4605, %4518
  %4607 = fmul fast float %4597, %4552
  %4608 = fmul fast float %4607, %4600
  %4609 = fadd fast float %4608, %4517
  br label %4610

; <label>:4610                                    ; preds = %4575, %4516, %4441
  %4611 = phi float [ %4609, %4575 ], [ %4517, %4516 ], [ %4453, %4441 ]
  %4612 = phi float [ %4606, %4575 ], [ %4518, %4516 ], [ %4452, %4441 ]
  %4613 = phi float [ %4603, %4575 ], [ %4519, %4516 ], [ %4451, %4441 ]
  %4614 = fcmp fast ogt float %4098, %4135
  %4615 = and i1 %4457, %4614
  %4616 = and i1 %4459, %4615
  %4617 = and i1 %4461, %4616
  %4618 = and i1 %4463, %4617
  br i1 %4618, label %4619, label %4676, !dx.controlflow.hints !74

; <label>:4619                                    ; preds = %4610
  %4620 = fmul fast float %4137, 0x3FC24924A0000000
  %4621 = fsub fast float %4098, %4135
  %4622 = fdiv fast float %4621, %4620
  %4623 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 0
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 0
  %4628 = extractvalue %dx.types.CBufRet.f32 %4626, 1
  %4629 = extractvalue %dx.types.CBufRet.f32 %4626, 2
  %4630 = fsub fast float %4625, %4613
  %4631 = fsub fast float %4627, %4448
  %4632 = fsub fast float %4628, %4449
  %4633 = fsub fast float %4629, %4450
  %4634 = fmul fast float %4630, %4623
  %4635 = fmul fast float %4631, %4623
  %4636 = fmul fast float %4632, %4623
  %4637 = fmul fast float %4633, %4623
  %4638 = fadd fast float %4634, %4613
  %4639 = fadd fast float %4635, %4448
  %4640 = fadd fast float %4636, %4449
  %4641 = fadd fast float %4637, %4450
  %4642 = extractvalue %dx.types.CBufRet.f32 %4624, 1
  %4643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %4644 = extractvalue %dx.types.CBufRet.f32 %4643, 0
  %4645 = extractvalue %dx.types.CBufRet.f32 %4643, 1
  %4646 = extractvalue %dx.types.CBufRet.f32 %4643, 2
  %4647 = fsub fast float %4642, %4612
  %4648 = fsub fast float %4644, %4445
  %4649 = fsub fast float %4645, %4446
  %4650 = fsub fast float %4646, %4447
  %4651 = fmul fast float %4647, %4623
  %4652 = fmul fast float %4648, %4623
  %4653 = fmul fast float %4649, %4623
  %4654 = fmul fast float %4650, %4623
  %4655 = fadd fast float %4651, %4612
  %4656 = fadd fast float %4652, %4445
  %4657 = fadd fast float %4653, %4446
  %4658 = fadd fast float %4654, %4447
  %4659 = extractvalue %dx.types.CBufRet.f32 %4624, 2
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 0
  %4662 = extractvalue %dx.types.CBufRet.f32 %4660, 1
  %4663 = extractvalue %dx.types.CBufRet.f32 %4660, 2
  %4664 = fsub fast float %4659, %4611
  %4665 = fsub fast float %4661, %4442
  %4666 = fsub fast float %4662, %4443
  %4667 = fsub fast float %4663, %4444
  %4668 = fmul fast float %4664, %4623
  %4669 = fmul fast float %4665, %4623
  %4670 = fmul fast float %4666, %4623
  %4671 = fmul fast float %4667, %4623
  %4672 = fadd fast float %4668, %4611
  %4673 = fadd fast float %4669, %4442
  %4674 = fadd fast float %4670, %4443
  %4675 = fadd fast float %4671, %4444
  br label %4676

; <label>:4676                                    ; preds = %4619, %4610
  %4677 = phi float [ %4672, %4619 ], [ %4611, %4610 ]
  %4678 = phi float [ %4673, %4619 ], [ %4442, %4610 ]
  %4679 = phi float [ %4674, %4619 ], [ %4443, %4610 ]
  %4680 = phi float [ %4675, %4619 ], [ %4444, %4610 ]
  %4681 = phi float [ %4655, %4619 ], [ %4612, %4610 ]
  %4682 = phi float [ %4656, %4619 ], [ %4445, %4610 ]
  %4683 = phi float [ %4657, %4619 ], [ %4446, %4610 ]
  %4684 = phi float [ %4658, %4619 ], [ %4447, %4610 ]
  %4685 = phi float [ %4638, %4619 ], [ %4613, %4610 ]
  %4686 = phi float [ %4639, %4619 ], [ %4448, %4610 ]
  %4687 = phi float [ %4640, %4619 ], [ %4449, %4610 ]
  %4688 = phi float [ %4641, %4619 ], [ %4450, %4610 ]
  %4689 = extractvalue %dx.types.CBufRet.f32 %4260, 3
  %4690 = fmul fast float %4689, %4685
  %4691 = fmul fast float %4689, %4681
  %4692 = fmul fast float %4689, %4677
  %4693 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4694 = extractvalue %dx.types.CBufRet.f32 %4693, 3
  %4695 = fmul fast float %4690, %4694
  %4696 = fmul fast float %4691, %4694
  %4697 = fmul fast float %4692, %4694
  %4698 = fmul fast float %4686, 1.500000e+00
  %4699 = fmul fast float %4698, %4689
  %4700 = fmul fast float %4699, %4694
  %4701 = fmul fast float %4687, 1.500000e+00
  %4702 = fmul fast float %4701, %4689
  %4703 = fmul fast float %4702, %4694
  %4704 = fmul fast float %4688, 1.500000e+00
  %4705 = fmul fast float %4704, %4689
  %4706 = fmul fast float %4705, %4694
  %4707 = fmul fast float %4682, 1.500000e+00
  %4708 = fmul fast float %4707, %4689
  %4709 = fmul fast float %4708, %4694
  %4710 = fmul fast float %4683, 1.500000e+00
  %4711 = fmul fast float %4710, %4689
  %4712 = fmul fast float %4711, %4694
  %4713 = fmul fast float %4684, 1.500000e+00
  %4714 = fmul fast float %4713, %4689
  %4715 = fmul fast float %4714, %4694
  %4716 = fmul fast float %4678, 1.500000e+00
  %4717 = fmul fast float %4716, %4689
  %4718 = fmul fast float %4717, %4694
  %4719 = fmul fast float %4679, 1.500000e+00
  %4720 = fmul fast float %4719, %4689
  %4721 = fmul fast float %4720, %4694
  %4722 = fmul fast float %4680, 1.500000e+00
  %4723 = fmul fast float %4722, %4689
  %4724 = fmul fast float %4723, %4694
  %4725 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4695)  ; FMax(a,b)
  %4726 = call float @dx.op.dot3.f32(i32 55, float %4700, float %4703, float %4706, float %4700, float %4703, float %4706)  ; Dot3(ax,ay,az,bx,by,bz)
  %4727 = fcmp fast oeq float %4726, 0.000000e+00
  %4728 = fcmp fast oeq float %4725, 0.000000e+00
  %4729 = or i1 %4728, %4727
  br i1 %4729, label %4759, label %4730

; <label>:4730                                    ; preds = %4676
  %4731 = fsub fast float -0.000000e+00, %4706
  %4732 = fsub fast float -0.000000e+00, %4700
  %4733 = call float @dx.op.unary.f32(i32 24, float %4726)  ; Sqrt(value)
  %4734 = fdiv fast float %4733, %4725
  %4735 = fcmp fast ogt float %4734, 0x3FFB6F8900000000
  %4736 = select i1 %4735, float 0x3FFB6F8900000000, float %4734
  %4737 = fmul fast float %4736, 0x3FE8A23460000000
  %4738 = call float @dx.op.unary.f32(i32 7, float %4737)  ; Saturate(value)
  %4739 = call float @dx.op.binary.f32(i32 35, float %4736, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4740 = fmul fast float %4738, %4725
  %4741 = fmul fast float %4739, 0x3FF279A740000000
  %4742 = fadd fast float %4741, -1.000000e+00
  %4743 = call float @dx.op.dot3.f32(i32 55, float %4731, float %4732, float %4703, float %4731, float %4732, float %4703)  ; Dot3(ax,ay,az,bx,by,bz)
  %4744 = call float @dx.op.unary.f32(i32 25, float %4743)  ; Rsqrt(value)
  %4745 = fmul fast float %4744, %4731
  %4746 = fmul fast float %4744, %4732
  %4747 = fmul fast float %4744, %4703
  %4748 = fmul fast float %4742, %4742
  %4749 = fsub fast float 1.000000e+00, %4748
  %4750 = fmul fast float %4739, 0x40005F8BE0000000
  %4751 = fsub fast float 0x400C5BF8A0000000, %4750
  %4752 = fdiv fast float %4740, %4751
  %4753 = fmul fast float %4752, 0x3FEE31C3C0000000
  %4754 = fmul fast float %4753, %4749
  %4755 = fmul fast float %4739, 0x3FDACB7480000000
  %4756 = fadd fast float %4755, 0xBFD7347680000000
  %4757 = fmul fast float %4756, %4752
  %4758 = fmul fast float %4757, %4749
  br label %4759

; <label>:4759                                    ; preds = %4730, %4676
  %4760 = phi float [ %4745, %4730 ], [ 0.000000e+00, %4676 ]
  %4761 = phi float [ %4746, %4730 ], [ 0.000000e+00, %4676 ]
  %4762 = phi float [ %4747, %4730 ], [ 0.000000e+00, %4676 ]
  %4763 = phi float [ %4754, %4730 ], [ 0.000000e+00, %4676 ]
  %4764 = phi float [ %4758, %4730 ], [ 0.000000e+00, %4676 ]
  %4765 = call float @dx.op.dot3.f32(i32 55, float %4760, float %4761, float %4762, float %4068, float %4069, float %4070)  ; Dot3(ax,ay,az,bx,by,bz)
  %4766 = fmul fast float %4765, %4765
  %4767 = fmul fast float %4766, 0x3FEE471020000000
  %4768 = fadd fast float %4767, 0xBFD42F6020000000
  %4769 = fmul fast float %4725, 0x3FD20DD760000000
  %4770 = fmul fast float %4768, %4764
  %4771 = fmul fast float %4763, 0x3FDF454380000000
  %4772 = fmul fast float %4771, %4765
  %4773 = fadd fast float %4772, %4769
  %4774 = fadd fast float %4773, %4770
  %4775 = call float @dx.op.dot3.f32(i32 55, float %4760, float %4761, float %4762, float %4084, float %4085, float %4086)  ; Dot3(ax,ay,az,bx,by,bz)
  %4776 = fmul fast float %4775, 0x3FDF454380000000
  %4777 = fmul fast float %4775, %4775
  %4778 = fmul fast float %4777, 0x3FEE471020000000
  %4779 = fadd fast float %4778, 0xBFD42F6020000000
  %4780 = call float @dx.op.dot3.f32(i32 55, float %4725, float %4763, float %4764, float 0x3FD20DD760000000, float %4776, float %4779)  ; Dot3(ax,ay,az,bx,by,bz)
  %4781 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4696)  ; FMax(a,b)
  %4782 = call float @dx.op.dot3.f32(i32 55, float %4709, float %4712, float %4715, float %4709, float %4712, float %4715)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = fcmp fast oeq float %4782, 0.000000e+00
  %4784 = fcmp fast oeq float %4781, 0.000000e+00
  %4785 = or i1 %4784, %4783
  br i1 %4785, label %4815, label %4786

; <label>:4786                                    ; preds = %4759
  %4787 = fsub fast float -0.000000e+00, %4715
  %4788 = fsub fast float -0.000000e+00, %4709
  %4789 = call float @dx.op.unary.f32(i32 24, float %4782)  ; Sqrt(value)
  %4790 = fdiv fast float %4789, %4781
  %4791 = fcmp fast ogt float %4790, 0x3FFB6F8900000000
  %4792 = select i1 %4791, float 0x3FFB6F8900000000, float %4790
  %4793 = fmul fast float %4792, 0x3FE8A23460000000
  %4794 = call float @dx.op.unary.f32(i32 7, float %4793)  ; Saturate(value)
  %4795 = call float @dx.op.binary.f32(i32 35, float %4792, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4796 = fmul fast float %4794, %4781
  %4797 = fmul fast float %4795, 0x3FF279A740000000
  %4798 = fadd fast float %4797, -1.000000e+00
  %4799 = call float @dx.op.dot3.f32(i32 55, float %4787, float %4788, float %4712, float %4787, float %4788, float %4712)  ; Dot3(ax,ay,az,bx,by,bz)
  %4800 = call float @dx.op.unary.f32(i32 25, float %4799)  ; Rsqrt(value)
  %4801 = fmul fast float %4800, %4787
  %4802 = fmul fast float %4800, %4788
  %4803 = fmul fast float %4800, %4712
  %4804 = fmul fast float %4798, %4798
  %4805 = fsub fast float 1.000000e+00, %4804
  %4806 = fmul fast float %4795, 0x40005F8BE0000000
  %4807 = fsub fast float 0x400C5BF8A0000000, %4806
  %4808 = fdiv fast float %4796, %4807
  %4809 = fmul fast float %4808, 0x3FEE31C3C0000000
  %4810 = fmul fast float %4809, %4805
  %4811 = fmul fast float %4795, 0x3FDACB7480000000
  %4812 = fadd fast float %4811, 0xBFD7347680000000
  %4813 = fmul fast float %4812, %4808
  %4814 = fmul fast float %4813, %4805
  br label %4815

; <label>:4815                                    ; preds = %4786, %4759
  %4816 = phi float [ %4801, %4786 ], [ 0.000000e+00, %4759 ]
  %4817 = phi float [ %4802, %4786 ], [ 0.000000e+00, %4759 ]
  %4818 = phi float [ %4803, %4786 ], [ 0.000000e+00, %4759 ]
  %4819 = phi float [ %4810, %4786 ], [ 0.000000e+00, %4759 ]
  %4820 = phi float [ %4814, %4786 ], [ 0.000000e+00, %4759 ]
  %4821 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4817, float %4818, float %4068, float %4069, float %4070)  ; Dot3(ax,ay,az,bx,by,bz)
  %4822 = fmul fast float %4821, %4821
  %4823 = fmul fast float %4822, 0x3FEE471020000000
  %4824 = fadd fast float %4823, 0xBFD42F6020000000
  %4825 = fmul fast float %4781, 0x3FD20DD760000000
  %4826 = fmul fast float %4824, %4820
  %4827 = fmul fast float %4819, 0x3FDF454380000000
  %4828 = fmul fast float %4827, %4821
  %4829 = fadd fast float %4828, %4825
  %4830 = fadd fast float %4829, %4826
  %4831 = call float @dx.op.dot3.f32(i32 55, float %4816, float %4817, float %4818, float %4084, float %4085, float %4086)  ; Dot3(ax,ay,az,bx,by,bz)
  %4832 = fmul fast float %4831, 0x3FDF454380000000
  %4833 = fmul fast float %4831, %4831
  %4834 = fmul fast float %4833, 0x3FEE471020000000
  %4835 = fadd fast float %4834, 0xBFD42F6020000000
  %4836 = call float @dx.op.dot3.f32(i32 55, float %4781, float %4819, float %4820, float 0x3FD20DD760000000, float %4832, float %4835)  ; Dot3(ax,ay,az,bx,by,bz)
  %4837 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4697)  ; FMax(a,b)
  %4838 = call float @dx.op.dot3.f32(i32 55, float %4718, float %4721, float %4724, float %4718, float %4721, float %4724)  ; Dot3(ax,ay,az,bx,by,bz)
  %4839 = fcmp fast oeq float %4838, 0.000000e+00
  %4840 = fcmp fast oeq float %4837, 0.000000e+00
  %4841 = or i1 %4840, %4839
  br i1 %4841, label %4871, label %4842

; <label>:4842                                    ; preds = %4815
  %4843 = fsub fast float -0.000000e+00, %4724
  %4844 = fsub fast float -0.000000e+00, %4718
  %4845 = call float @dx.op.unary.f32(i32 24, float %4838)  ; Sqrt(value)
  %4846 = fdiv fast float %4845, %4837
  %4847 = fcmp fast ogt float %4846, 0x3FFB6F8900000000
  %4848 = select i1 %4847, float 0x3FFB6F8900000000, float %4846
  %4849 = fmul fast float %4848, 0x3FE8A23460000000
  %4850 = call float @dx.op.unary.f32(i32 7, float %4849)  ; Saturate(value)
  %4851 = call float @dx.op.binary.f32(i32 35, float %4848, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4852 = fmul fast float %4850, %4837
  %4853 = fmul fast float %4851, 0x3FF279A740000000
  %4854 = fadd fast float %4853, -1.000000e+00
  %4855 = call float @dx.op.dot3.f32(i32 55, float %4843, float %4844, float %4721, float %4843, float %4844, float %4721)  ; Dot3(ax,ay,az,bx,by,bz)
  %4856 = call float @dx.op.unary.f32(i32 25, float %4855)  ; Rsqrt(value)
  %4857 = fmul fast float %4856, %4843
  %4858 = fmul fast float %4856, %4844
  %4859 = fmul fast float %4856, %4721
  %4860 = fmul fast float %4854, %4854
  %4861 = fsub fast float 1.000000e+00, %4860
  %4862 = fmul fast float %4851, 0x40005F8BE0000000
  %4863 = fsub fast float 0x400C5BF8A0000000, %4862
  %4864 = fdiv fast float %4852, %4863
  %4865 = fmul fast float %4864, 0x3FEE31C3C0000000
  %4866 = fmul fast float %4865, %4861
  %4867 = fmul fast float %4851, 0x3FDACB7480000000
  %4868 = fadd fast float %4867, 0xBFD7347680000000
  %4869 = fmul fast float %4868, %4864
  %4870 = fmul fast float %4869, %4861
  br label %4871

; <label>:4871                                    ; preds = %4842, %4815
  %4872 = phi float [ %4857, %4842 ], [ 0.000000e+00, %4815 ]
  %4873 = phi float [ %4858, %4842 ], [ 0.000000e+00, %4815 ]
  %4874 = phi float [ %4859, %4842 ], [ 0.000000e+00, %4815 ]
  %4875 = phi float [ %4866, %4842 ], [ 0.000000e+00, %4815 ]
  %4876 = phi float [ %4870, %4842 ], [ 0.000000e+00, %4815 ]
  %4877 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4068, float %4069, float %4070)  ; Dot3(ax,ay,az,bx,by,bz)
  %4878 = fmul fast float %4877, %4877
  %4879 = fmul fast float %4878, 0x3FEE471020000000
  %4880 = fadd fast float %4879, 0xBFD42F6020000000
  %4881 = fmul fast float %4837, 0x3FD20DD760000000
  %4882 = fmul fast float %4880, %4876
  %4883 = fmul fast float %4875, 0x3FDF454380000000
  %4884 = fmul fast float %4883, %4877
  %4885 = fadd fast float %4884, %4881
  %4886 = fadd fast float %4885, %4882
  %4887 = call float @dx.op.dot3.f32(i32 55, float %4872, float %4873, float %4874, float %4084, float %4085, float %4086)  ; Dot3(ax,ay,az,bx,by,bz)
  %4888 = fmul fast float %4887, 0x3FDF454380000000
  %4889 = fmul fast float %4887, %4887
  %4890 = fmul fast float %4889, 0x3FEE471020000000
  %4891 = fadd fast float %4890, 0xBFD42F6020000000
  %4892 = call float @dx.op.dot3.f32(i32 55, float %4837, float %4875, float %4876, float 0x3FD20DD760000000, float %4888, float %4891)  ; Dot3(ax,ay,az,bx,by,bz)
  %4893 = call float @dx.op.binary.f32(i32 35, float %4774, float 0.000000e+00)  ; FMax(a,b)
  %4894 = call float @dx.op.binary.f32(i32 35, float %4830, float 0.000000e+00)  ; FMax(a,b)
  %4895 = call float @dx.op.binary.f32(i32 35, float %4886, float 0.000000e+00)  ; FMax(a,b)
  %4896 = call float @dx.op.binary.f32(i32 35, float %4780, float 0.000000e+00)  ; FMax(a,b)
  %4897 = call float @dx.op.binary.f32(i32 35, float %4836, float 0.000000e+00)  ; FMax(a,b)
  %4898 = call float @dx.op.binary.f32(i32 35, float %4892, float 0.000000e+00)  ; FMax(a,b)
  %4899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4900 = extractvalue %dx.types.CBufRet.f32 %4899, 0
  %4901 = call float @dx.op.binary.f32(i32 36, float %4071, float %4900)  ; FMin(a,b)
  %4902 = fsub fast float 1.000000e+00, %4087
  %4903 = fmul fast float %4901, %4902
  %4904 = fsub fast float 1.000000e+00, %4903
  %4905 = bitcast float %4904 to i32
  %4906 = sub nsw i32 2129859010, %4905
  %4907 = bitcast i32 %4906 to float
  %4908 = call float @dx.op.binary.f32(i32 36, float %4072, float %4900)  ; FMin(a,b)
  %4909 = fmul fast float %4908, %4902
  %4910 = fsub fast float 1.000000e+00, %4909
  %4911 = bitcast float %4910 to i32
  %4912 = sub nsw i32 2129859010, %4911
  %4913 = bitcast i32 %4912 to float
  %4914 = call float @dx.op.binary.f32(i32 36, float %4073, float %4900)  ; FMin(a,b)
  %4915 = fmul fast float %4914, %4902
  %4916 = fsub fast float 1.000000e+00, %4915
  %4917 = bitcast float %4916 to i32
  %4918 = sub nsw i32 2129859010, %4917
  %4919 = bitcast i32 %4918 to float
  %4920 = fmul fast float %4893, %4087
  %4921 = fmul fast float %4920, %4907
  %4922 = fmul fast float %4894, %4087
  %4923 = fmul fast float %4922, %4913
  %4924 = fmul fast float %4895, %4087
  %4925 = fmul fast float %4924, %4919
  %4926 = call float @dx.op.binary.f32(i32 36, float %4065, float %4900)  ; FMin(a,b)
  %4927 = fmul fast float %4926, %4902
  %4928 = fsub fast float 1.000000e+00, %4927
  %4929 = bitcast float %4928 to i32
  %4930 = sub nsw i32 2129859010, %4929
  %4931 = bitcast i32 %4930 to float
  %4932 = call float @dx.op.binary.f32(i32 36, float %4066, float %4900)  ; FMin(a,b)
  %4933 = fmul fast float %4932, %4902
  %4934 = fsub fast float 1.000000e+00, %4933
  %4935 = bitcast float %4934 to i32
  %4936 = sub nsw i32 2129859010, %4935
  %4937 = bitcast i32 %4936 to float
  %4938 = call float @dx.op.binary.f32(i32 36, float %4076, float %4900)  ; FMin(a,b)
  %4939 = fmul fast float %4938, %4902
  %4940 = fsub fast float 1.000000e+00, %4939
  %4941 = bitcast float %4940 to i32
  %4942 = sub nsw i32 2129859010, %4941
  %4943 = bitcast i32 %4942 to float
  %4944 = fmul fast float %4896, %4087
  %4945 = fmul fast float %4944, %4931
  %4946 = fmul fast float %4897, %4087
  %4947 = fmul fast float %4946, %4937
  %4948 = fmul fast float %4898, %4087
  %4949 = fmul fast float %4948, %4943
  %4950 = call float @dx.op.dot3.f32(i32 55, float %4921, float %4923, float %4925, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4951 = select i1 %167, float 0.000000e+00, float %4921
  %4952 = select i1 %167, float %4950, float %4923
  %4953 = select i1 %167, float 0.000000e+00, float %4925
  %4954 = call float @dx.op.dot3.f32(i32 55, float %4945, float %4947, float %4949, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4955 = select i1 %167, float 0.000000e+00, float %4945
  %4956 = select i1 %167, float %4954, float %4947
  %4957 = select i1 %167, float 0.000000e+00, float %4949
  %4958 = fmul fast float %4078, 9.843750e-01
  %4959 = fmul fast float %4074, 9.843750e-01
  %4960 = fadd fast float %4958, 7.812500e-03
  %4961 = fadd fast float %4959, 7.812500e-03
  %4962 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %4960, float %4961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4963 = extractvalue %dx.types.ResRet.f32 %4962, 2
  %4964 = extractvalue %dx.types.ResRet.f32 %4962, 3
  %4965 = fmul fast float %4963, %4065
  %4966 = fmul fast float %4963, %4066
  %4967 = fmul fast float %4963, %4076
  %4968 = fadd fast float %4965, %4964
  %4969 = fadd fast float %4966, %4964
  %4970 = fadd fast float %4967, %4964
  %4971 = call float @dx.op.binary.f32(i32 35, float %4969, float %4970)  ; FMax(a,b)
  %4972 = call float @dx.op.binary.f32(i32 35, float %4968, float %4971)  ; FMax(a,b)
  %4973 = fsub fast float 1.000000e+00, %4972
  %4974 = fmul fast float %4973, %4951
  %4975 = fmul fast float %4973, %4952
  %4976 = fmul fast float %4973, %4953
  %4977 = fmul fast float %4968, %4955
  %4978 = fmul fast float %4969, %4956
  %4979 = fmul fast float %4970, %4957
  %4980 = fmul fast float %4974, %872
  %4981 = fmul fast float %4975, %872
  %4982 = fmul fast float %4976, %872
  %4983 = fadd fast float %4977, %3428
  %4984 = fmul fast float %4983, %872
  %4985 = fadd fast float %4978, %3429
  %4986 = fmul fast float %4985, %872
  %4987 = fadd fast float %4979, %3430
  %4988 = fmul fast float %4987, %872
  %4989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4990 = extractvalue %dx.types.CBufRet.f32 %4989, 3
  %4991 = fcmp fast oeq float %4990, 0.000000e+00
  br i1 %4991, label %5150, label %4992

; <label>:4992                                    ; preds = %4871
  %4993 = extractvalue %dx.types.CBufRet.f32 %4989, 0
  %4994 = extractvalue %dx.types.CBufRet.f32 %4989, 1
  %4995 = extractvalue %dx.types.CBufRet.f32 %4989, 2
  %4996 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4997 = extractvalue %dx.types.CBufRet.f32 %4996, 0
  %4998 = extractvalue %dx.types.CBufRet.f32 %4996, 1
  %4999 = extractvalue %dx.types.CBufRet.f32 %4996, 2
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 0
  %5002 = extractvalue %dx.types.CBufRet.f32 %5000, 1
  %5003 = call float @dx.op.dot3.f32(i32 55, float %4997, float %4998, float %4999, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5004 = select i1 %167, float %5001, float %4997
  %5005 = select i1 %167, float %5003, float %4998
  %5006 = select i1 %167, float %5002, float %4999
  %5007 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5008 = extractvalue %dx.types.CBufRet.f32 %5007, 1
  %5009 = fcmp fast une float %5008, 0.000000e+00
  br i1 %5009, label %5010, label %5027

; <label>:5010                                    ; preds = %4992
  %5011 = fptoui float %64 to i32
  %5012 = fptoui float %65 to i32
  %5013 = lshr i32 %5011, 4
  %5014 = lshr i32 %5012, 4
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 0
  %5017 = fptoui float %5016 to i32
  %5018 = add i32 %5017, 15
  %5019 = lshr i32 %5018, 4
  %5020 = mul i32 %5019, %5014
  %5021 = add i32 %5020, %5013
  %5022 = shl i32 %5021, 3
  %5023 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5022, i32 undef)  ; BufferLoad(srv,index,wot)
  %5024 = extractvalue %dx.types.ResRet.i32 %5023, 0
  %5025 = and i32 %5024, -268435456
  %5026 = icmp eq i32 %5025, -1342177280
  br i1 %5026, label %5037, label %5027

; <label>:5027                                    ; preds = %5010, %4992
  %5028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5029 = extractvalue %dx.types.CBufRet.f32 %5028, 2
  %5030 = extractvalue %dx.types.CBufRet.f32 %5028, 3
  %5031 = fmul fast float %5029, %64
  %5032 = fmul fast float %5030, %65
  %5033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %32, float %5031, float %5032, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5034 = extractvalue %dx.types.ResRet.f32 %5033, 0
  %5035 = extractvalue %dx.types.ResRet.f32 %5033, 1
  %5036 = extractvalue %dx.types.ResRet.f32 %5033, 2
  br label %5037

; <label>:5037                                    ; preds = %5027, %5010
  %5038 = phi float [ %5034, %5027 ], [ 0.000000e+00, %5010 ]
  %5039 = phi float [ %5035, %5027 ], [ 0.000000e+00, %5010 ]
  %5040 = phi float [ %5036, %5027 ], [ 0.000000e+00, %5010 ]
  %5041 = call float @dx.op.binary.f32(i32 36, float %5039, float %5040)  ; FMin(a,b)
  %5042 = call float @dx.op.binary.f32(i32 36, float %5038, float %5041)  ; FMin(a,b)
  %5043 = fcmp fast ogt float %5042, 0.000000e+00
  br i1 %5043, label %5044, label %5150, !dx.controlflow.hints !75

; <label>:5044                                    ; preds = %5037
  %5045 = fmul fast float %5038, %5004
  %5046 = fmul fast float %5039, %5005
  %5047 = fmul fast float %5040, %5006
  %5048 = fsub fast float %4993, %4064
  %5049 = fsub fast float %4994, %4063
  %5050 = fsub fast float %4995, %4062
  %5051 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float %5048, float %5049, float %5050)  ; Dot3(ax,ay,az,bx,by,bz)
  %5052 = call float @dx.op.unary.f32(i32 25, float %5051)  ; Rsqrt(value)
  %5053 = fmul fast float %5052, %5048
  %5054 = fmul fast float %5052, %5049
  %5055 = fmul fast float %5052, %5050
  %5056 = call float @dx.op.dot3.f32(i32 55, float %4993, float %4994, float %4995, float %4068, float %4069, float %4070)  ; Dot3(ax,ay,az,bx,by,bz)
  %5057 = call float @dx.op.dot3.f32(i32 55, float %4061, float %4060, float %4059, float %5053, float %5054, float %5055)  ; Dot3(ax,ay,az,bx,by,bz)
  %5058 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5059 = fmul fast float %5058, %5058
  %5060 = fmul fast float %5059, %4091
  %5061 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5062 = fmul fast float %5061, %5058
  %5063 = call float @dx.op.dot3.f32(i32 55, float %4068, float %4069, float %4070, float %5053, float %5054, float %5055)  ; Dot3(ax,ay,az,bx,by,bz)
  %5064 = fmul fast float %5063, %5063
  %5065 = call float @dx.op.unary.f32(i32 6, float %5056)  ; FAbs(value)
  %5066 = fsub fast float 1.000000e+00, %4074
  %5067 = call float @dx.op.binary.f32(i32 35, float %5066, float 0x3F847AE140000000)  ; FMax(a,b)
  %5068 = fmul fast float %5067, %5067
  %5069 = fmul fast float %5068, %5068
  %5070 = fsub fast float 1.000000e+00, %5069
  %5071 = fmul fast float %4078, %4078
  %5072 = fmul fast float %5071, %5070
  %5073 = fadd fast float %5072, %5069
  %5074 = bitcast float %5073 to i32
  %5075 = ashr i32 %5074, 1
  %5076 = add nsw i32 %5075, 532487669
  %5077 = bitcast i32 %5076 to float
  %5078 = fadd fast float %5077, %4078
  %5079 = fmul fast float %5069, %5064
  %5080 = fsub fast float 1.000000e+00, %5064
  %5081 = fadd fast float %5080, %5079
  %5082 = fmul fast float %5065, %5065
  %5083 = fmul fast float %5082, %5070
  %5084 = fadd fast float %5083, %5069
  %5085 = bitcast float %5084 to i32
  %5086 = ashr i32 %5085, 1
  %5087 = add nsw i32 %5086, 532487669
  %5088 = bitcast i32 %5087 to float
  %5089 = fadd fast float %5088, %5065
  %5090 = fmul fast float %5081, %5081
  %5091 = fmul fast float %5090, %5078
  %5092 = fmul fast float %5091, %5089
  %5093 = fdiv fast float 0x3FF0A00000000000, %5092
  %5094 = fmul fast float %5093, %5069
  %5095 = call float @dx.op.unary.f32(i32 6, float %5057)  ; FAbs(value)
  %5096 = fsub fast float 1.000000e+00, %5095
  %5097 = bitcast float %5096 to i32
  %5098 = sitofp i32 %5097 to float
  %5099 = fmul fast float %5098, 5.000000e+00
  %5100 = fadd fast float %5099, 0xC1EFBF8940000000
  %5101 = fptosi float %5100 to i32
  %5102 = bitcast i32 %5101 to float
  %5103 = fsub fast float 1.000000e+00, %4065
  %5104 = fsub fast float 1.000000e+00, %4066
  %5105 = fsub fast float 1.000000e+00, %4076
  %5106 = fmul fast float %5102, %5103
  %5107 = fmul fast float %5102, %5104
  %5108 = fmul fast float %5102, %5105
  %5109 = fadd fast float %5106, %4065
  %5110 = fadd fast float %5107, %4066
  %5111 = fadd fast float %5108, %4076
  %5112 = fmul fast float %5056, 9.843750e-01
  %5113 = fadd fast float %5112, 7.812500e-03
  %5114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5113, float %4961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5115 = extractvalue %dx.types.ResRet.f32 %5114, 2
  %5116 = extractvalue %dx.types.ResRet.f32 %5114, 3
  %5117 = fmul fast float %5115, %4065
  %5118 = fmul fast float %5115, %4066
  %5119 = fmul fast float %5115, %4076
  %5120 = fadd fast float %5117, %5116
  %5121 = fadd fast float %5118, %5116
  %5122 = fadd fast float %5119, %5116
  %5123 = call float @dx.op.binary.f32(i32 35, float %5121, float %5122)  ; FMax(a,b)
  %5124 = call float @dx.op.binary.f32(i32 35, float %5120, float %5123)  ; FMax(a,b)
  %5125 = fsub fast float 1.000000e+00, %5124
  %5126 = fmul fast float %5062, %5045
  %5127 = fmul fast float %5126, %5125
  %5128 = fmul fast float %5062, %5046
  %5129 = fmul fast float %5128, %5125
  %5130 = fmul fast float %5062, %5047
  %5131 = fmul fast float %5130, %5125
  %5132 = fmul fast float %5126, %5094
  %5133 = fmul fast float %5132, %5109
  %5134 = fmul fast float %5128, %5094
  %5135 = fmul fast float %5134, %5110
  %5136 = fmul fast float %5130, %5094
  %5137 = fmul fast float %5136, %5111
  %5138 = fadd fast float %5127, %4974
  %5139 = fmul fast float %5138, %872
  %5140 = fadd fast float %5129, %4975
  %5141 = fmul fast float %5140, %872
  %5142 = fadd fast float %5131, %4976
  %5143 = fmul fast float %5142, %872
  %5144 = fadd fast float %5133, %4983
  %5145 = fmul fast float %5144, %872
  %5146 = fadd fast float %5135, %4985
  %5147 = fmul fast float %5146, %872
  %5148 = fadd fast float %5137, %4987
  %5149 = fmul fast float %5148, %872
  br label %5150

; <label>:5150                                    ; preds = %5044, %5037, %4871
  %5151 = phi float [ %4984, %4871 ], [ %4984, %5037 ], [ %5145, %5044 ]
  %5152 = phi float [ %4986, %4871 ], [ %4986, %5037 ], [ %5147, %5044 ]
  %5153 = phi float [ %4988, %4871 ], [ %4988, %5037 ], [ %5149, %5044 ]
  %5154 = phi float [ %4980, %4871 ], [ %4980, %5037 ], [ %5139, %5044 ]
  %5155 = phi float [ %4981, %4871 ], [ %4981, %5037 ], [ %5141, %5044 ]
  %5156 = phi float [ %4982, %4871 ], [ %4982, %5037 ], [ %5143, %5044 ]
  %5157 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5158 = extractvalue %dx.types.CBufRet.i32 %5157, 0
  %5159 = icmp eq i32 %5158, 0
  br i1 %5159, label %5525, label %5160

; <label>:5160                                    ; preds = %5150
  %5161 = fptoui float %64 to i32
  %5162 = fptoui float %65 to i32
  %5163 = lshr i32 %5161, 4
  %5164 = lshr i32 %5162, 4
  %5165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5166 = extractvalue %dx.types.CBufRet.i32 %5165, 0
  %5167 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5164, i32 %5166, i32 %5163)  ; UMad(a,b,c)
  %5168 = add nsw i32 %5158, -1
  %5169 = call i32 @dx.op.binary.i32(i32 37, i32 %5168, i32 0)  ; IMax(a,b)
  %5170 = call float @dx.op.binary.f32(i32 35, float %59, float 0.000000e+00)  ; FMax(a,b)
  %5171 = fptoui float %5170 to i32
  %5172 = lshr i32 %5171, 5
  %5173 = call i32 @dx.op.binary.i32(i32 40, i32 %5172, i32 8191)  ; UMin(a,b)
  %5174 = shl i32 %5173, 2
  %5175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5174, i32 undef)  ; BufferLoad(srv,index,wot)
  %5176 = extractvalue %dx.types.ResRet.i32 %5175, 0
  %5177 = lshr i32 %5176, 16
  %5178 = and i32 %5176, 65535
  %5179 = lshr i32 %5176, 21
  %5180 = lshr i32 %5178, 5
  %5181 = call i32 @dx.op.binary.i32(i32 40, i32 %5180, i32 %5169)  ; UMin(a,b)
  %5182 = icmp ugt i32 %5179, %5181
  br i1 %5182, label %5525, label %5183

; <label>:5183                                    ; preds = %5160
  br label %5184

; <label>:5184                                    ; preds = %5515, %5183
  %5185 = phi i32 [ %5522, %5515 ], [ %5179, %5183 ]
  %5186 = phi float [ %5516, %5515 ], [ %5151, %5183 ]
  %5187 = phi float [ %5517, %5515 ], [ %5152, %5183 ]
  %5188 = phi float [ %5518, %5515 ], [ %5153, %5183 ]
  %5189 = phi float [ %5519, %5515 ], [ %5154, %5183 ]
  %5190 = phi float [ %5520, %5515 ], [ %5155, %5183 ]
  %5191 = phi float [ %5521, %5515 ], [ %5156, %5183 ]
  %5192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5193 = extractvalue %dx.types.CBufRet.i32 %5192, 0
  %5194 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5167, i32 %5193, i32 %5185)  ; UMad(a,b,c)
  %5195 = shl i32 %5194, 2
  %5196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5195, i32 undef)  ; BufferLoad(srv,index,wot)
  %5197 = extractvalue %dx.types.ResRet.i32 %5196, 0
  %5198 = shl i32 %5185, 5
  %5199 = sub nsw i32 %5177, %5198
  %5200 = call i32 @dx.op.binary.i32(i32 37, i32 %5199, i32 0)  ; IMax(a,b)
  %5201 = call i32 @dx.op.binary.i32(i32 38, i32 %5200, i32 31)  ; IMin(a,b)
  %5202 = sub nsw i32 1, %5177
  %5203 = add nsw i32 %5202, %5178
  %5204 = call i32 @dx.op.binary.i32(i32 37, i32 %5203, i32 0)  ; IMax(a,b)
  %5205 = call i32 @dx.op.binary.i32(i32 38, i32 %5204, i32 32)  ; IMin(a,b)
  %5206 = and i32 %5205, 31
  %5207 = shl i32 -1, %5206
  %5208 = xor i32 %5207, -1
  %5209 = and i32 %5201, 31
  %5210 = shl i32 %5208, %5209
  %5211 = icmp eq i32 %5205, 32
  %5212 = select i1 %5211, i32 -1, i32 %5210
  %5213 = and i32 %5212, %5197
  %5214 = icmp eq i32 %5213, 0
  br i1 %5214, label %5515, label %5215

; <label>:5215                                    ; preds = %5184
  br label %5216

; <label>:5216                                    ; preds = %5296, %5215
  %5217 = phi i32 [ %5228, %5296 ], [ %5213, %5215 ]
  %5218 = phi float [ %5297, %5296 ], [ %5186, %5215 ]
  %5219 = phi float [ %5298, %5296 ], [ %5187, %5215 ]
  %5220 = phi float [ %5299, %5296 ], [ %5188, %5215 ]
  %5221 = phi float [ %5300, %5296 ], [ %5189, %5215 ]
  %5222 = phi float [ %5301, %5296 ], [ %5190, %5215 ]
  %5223 = phi float [ %5302, %5296 ], [ %5191, %5215 ]
  %5224 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5217)  ; FirstbitLo(value)
  %5225 = add i32 %5224, %5198
  %5226 = and i32 %5224, 31
  %5227 = shl i32 1, %5226
  %5228 = xor i32 %5227, %5217
  %5229 = mul i32 %5225, 112
  %5230 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5229, i32 undef)  ; BufferLoad(srv,index,wot)
  %5231 = extractvalue %dx.types.ResRet.f32 %5230, 0
  %5232 = extractvalue %dx.types.ResRet.f32 %5230, 1
  %5233 = extractvalue %dx.types.ResRet.f32 %5230, 2
  %5234 = or i32 %5229, 12
  %5235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5234, i32 undef)  ; BufferLoad(srv,index,wot)
  %5236 = extractvalue %dx.types.ResRet.f32 %5235, 0
  %5237 = add i32 %5229, 44
  %5238 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5237, i32 undef)  ; BufferLoad(srv,index,wot)
  %5239 = extractvalue %dx.types.ResRet.f32 %5238, 0
  %5240 = add i32 %5229, 48
  %5241 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5240, i32 undef)  ; BufferLoad(srv,index,wot)
  %5242 = extractvalue %dx.types.ResRet.f32 %5241, 0
  %5243 = extractvalue %dx.types.ResRet.f32 %5241, 1
  %5244 = extractvalue %dx.types.ResRet.f32 %5241, 2
  %5245 = add i32 %5229, 80
  %5246 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5245, i32 undef)  ; BufferLoad(srv,index,wot)
  %5247 = extractvalue %dx.types.ResRet.f32 %5246, 1
  %5248 = extractvalue %dx.types.ResRet.f32 %5246, 2
  %5249 = call float @dx.op.dot3.f32(i32 55, float %5231, float %5232, float %5233, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5250 = select i1 %167, float %5247, float %5231
  %5251 = select i1 %167, float %5249, float %5232
  %5252 = select i1 %167, float %5248, float %5233
  %5253 = fsub fast float %5242, %123
  %5254 = fsub fast float %5243, %124
  %5255 = fsub fast float %5244, %125
  %5256 = call float @dx.op.dot3.f32(i32 55, float %5253, float %5254, float %5255, float %5253, float %5254, float %5255)  ; Dot3(ax,ay,az,bx,by,bz)
  %5257 = call float @dx.op.unary.f32(i32 24, float %5256)  ; Sqrt(value)
  %5258 = fdiv fast float 1.000000e+00, %5257
  %5259 = fmul fast float %5258, %5253
  %5260 = fmul fast float %5258, %5254
  %5261 = fmul fast float %5258, %5255
  %5262 = fadd fast float %5257, %5236
  %5263 = fdiv fast float 1.000000e+00, %5262
  %5264 = fmul float %5239, %5263
  %5265 = fmul float %5264, %5264
  %5266 = call float @dx.op.unary.f32(i32 7, float %5265)  ; Saturate(value)
  %5267 = and i32 %5227, %5213
  %5268 = icmp eq i32 %5267, 0
  br i1 %5268, label %5291, label %5269, !dx.controlflow.hints !76

; <label>:5269                                    ; preds = %5216
  %5270 = lshr i32 %5161, 5
  %5271 = lshr i32 %5162, 5
  %5272 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %5270, i32 %5271, i32 %5225, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5273 = extractvalue %dx.types.ResRet.i32 %5272, 0
  %5274 = and i32 %5273, 3
  %5275 = icmp eq i32 %5274, 0
  %5276 = select i1 %5275, float 1.000000e+00, float 0.000000e+00
  %5277 = icmp eq i32 %5274, 3
  br i1 %5277, label %5278, label %5291

; <label>:5278                                    ; preds = %5269
  %5279 = lshr i32 %5273, 10
  %5280 = and i32 %5279, 8160
  %5281 = and i32 %5162, 31
  %5282 = or i32 %5280, %5281
  %5283 = lshr i32 %5273, 1
  %5284 = and i32 %5283, 16352
  %5285 = and i32 %5161, 31
  %5286 = or i32 %5284, %5285
  %5287 = lshr i32 %5273, 23
  %5288 = and i32 %5287, 255
  %5289 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %5286, i32 %5282, i32 %5288, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 0
  br label %5291

; <label>:5291                                    ; preds = %5278, %5269, %5216
  %5292 = phi float [ %5290, %5278 ], [ %5276, %5269 ], [ 0.000000e+00, %5216 ]
  %5293 = call float @dx.op.binary.f32(i32 36, float %5292, float %5292)  ; FMin(a,b)
  %5294 = call float @dx.op.binary.f32(i32 36, float %5292, float %5293)  ; FMin(a,b)
  %5295 = fcmp fast ogt float %5294, 0.000000e+00
  br i1 %5295, label %5304, label %5296, !dx.controlflow.hints !77

; <label>:5296                                    ; preds = %5365, %5291
  %5297 = phi float [ %5218, %5291 ], [ %5511, %5365 ]
  %5298 = phi float [ %5219, %5291 ], [ %5512, %5365 ]
  %5299 = phi float [ %5220, %5291 ], [ %5513, %5365 ]
  %5300 = phi float [ %5221, %5291 ], [ %5502, %5365 ]
  %5301 = phi float [ %5222, %5291 ], [ %5503, %5365 ]
  %5302 = phi float [ %5223, %5291 ], [ %5504, %5365 ]
  %5303 = icmp eq i32 %5217, %5227
  br i1 %5303, label %5514, label %5216

; <label>:5304                                    ; preds = %5291
  %5305 = fmul fast float %5292, %5250
  %5306 = fmul fast float %5292, %5251
  %5307 = fmul fast float %5292, %5252
  %5308 = fsub fast float %5244, %3864
  %5309 = fcmp fast ogt float %5308, 0.000000e+00
  %5310 = fsub fast float %125, %3864
  %5311 = fcmp fast ogt float %5310, 0.000000e+00
  %5312 = xor i1 %5311, %5309
  %5313 = fsub fast float %3864, %5244
  %5314 = fmul fast float %5313, 2.000000e+00
  %5315 = fadd fast float %5314, %5244
  %5316 = select i1 %5312, float %5244, float %5315
  %5317 = fsub fast float %5316, %125
  %5318 = call float @dx.op.dot3.f32(i32 55, float %5253, float %5254, float %5317, float %5253, float %5254, float %5317)  ; Dot3(ax,ay,az,bx,by,bz)
  %5319 = call float @dx.op.unary.f32(i32 25, float %5318)  ; Rsqrt(value)
  %5320 = fmul fast float %5319, %5253
  %5321 = fmul fast float %5319, %5254
  %5322 = fmul fast float %5319, %5317
  %5323 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %3872)  ; Dot3(ax,ay,az,bx,by,bz)
  %5324 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5320, float %5321, float %5322)  ; Dot3(ax,ay,az,bx,by,bz)
  %5325 = fdiv fast float 1.000000e+00, %5324
  %5326 = fmul fast float %5325, %5323
  %5327 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5310, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5328 = fcmp fast ogt float %5327, 0.000000e+00
  %5329 = fcmp fast olt float %5327, 0.000000e+00
  %5330 = zext i1 %5328 to i32
  %5331 = zext i1 %5329 to i32
  %5332 = sub nsw i32 %5330, %5331
  %5333 = sitofp i32 %5332 to float
  %5334 = fsub fast float %5316, %3864
  %5335 = call float @dx.op.dot3.f32(i32 55, float %5253, float %5254, float %5334, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5336 = fcmp fast ogt float %5335, 0.000000e+00
  %5337 = fcmp fast olt float %5335, 0.000000e+00
  %5338 = zext i1 %5336 to i32
  %5339 = zext i1 %5337 to i32
  %5340 = sub nsw i32 %5338, %5339
  %5341 = sitofp i32 %5340 to float
  %5342 = fcmp fast une float %5333, %5341
  br i1 %5342, label %5343, label %5353

; <label>:5343                                    ; preds = %5304
  %5344 = fmul fast float %5326, %5322
  %5345 = fmul fast float %5326, %5321
  %5346 = fmul fast float %5326, %5320
  %5347 = fmul fast float %5346, %5346
  %5348 = fmul fast float %5345, %5345
  %5349 = fadd fast float %5347, %5348
  %5350 = fmul fast float %5344, %5344
  %5351 = fadd fast float %5349, %5350
  %5352 = call float @dx.op.unary.f32(i32 24, float %5351)  ; Sqrt(value)
  br label %5365

; <label>:5353                                    ; preds = %5304
  %5354 = icmp slt i32 %5332, 0
  br i1 %5354, label %5355, label %5365

; <label>:5355                                    ; preds = %5353
  %5356 = fsub fast float %123, %5242
  %5357 = fsub fast float %124, %5243
  %5358 = fsub fast float %125, %5316
  %5359 = fmul fast float %5356, %5356
  %5360 = fmul fast float %5357, %5357
  %5361 = fadd fast float %5359, %5360
  %5362 = fmul fast float %5358, %5358
  %5363 = fadd fast float %5361, %5362
  %5364 = call float @dx.op.unary.f32(i32 24, float %5363)  ; Sqrt(value)
  br label %5365

; <label>:5365                                    ; preds = %5355, %5353, %5343
  %5366 = phi float [ %5352, %5343 ], [ %5364, %5355 ], [ 0.000000e+00, %5353 ]
  %5367 = and i1 %5311, %5309
  %5368 = fsub fast float -0.000000e+00, %5366
  %5369 = select i1 %5367, float -0.000000e+00, float %5368
  %5370 = fmul fast float %3865, 0x3FF7154760000000
  %5371 = fmul fast float %5370, %5369
  %5372 = fmul fast float %3866, 0x3FF7154760000000
  %5373 = fmul fast float %5372, %5369
  %5374 = fmul fast float %3867, 0x3FF7154760000000
  %5375 = fmul fast float %5374, %5369
  %5376 = call float @dx.op.unary.f32(i32 21, float %5371)  ; Exp(value)
  %5377 = call float @dx.op.unary.f32(i32 21, float %5373)  ; Exp(value)
  %5378 = call float @dx.op.unary.f32(i32 21, float %5375)  ; Exp(value)
  %5379 = call float @dx.op.unary.f32(i32 7, float %5376)  ; Saturate(value)
  %5380 = call float @dx.op.unary.f32(i32 7, float %5377)  ; Saturate(value)
  %5381 = call float @dx.op.unary.f32(i32 7, float %5378)  ; Saturate(value)
  %5382 = fmul fast float %5305, %5379
  %5383 = fmul fast float %5306, %5380
  %5384 = fmul fast float %5307, %5381
  %5385 = fsub fast float %5259, %4064
  %5386 = fsub fast float %5260, %4063
  %5387 = fsub fast float %5261, %4062
  %5388 = call float @dx.op.dot3.f32(i32 55, float %5385, float %5386, float %5387, float %5385, float %5386, float %5387)  ; Dot3(ax,ay,az,bx,by,bz)
  %5389 = call float @dx.op.unary.f32(i32 25, float %5388)  ; Rsqrt(value)
  %5390 = fmul fast float %5389, %5385
  %5391 = fmul fast float %5389, %5386
  %5392 = fmul fast float %5389, %5387
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5259, float %5260, float %5261, float %4068, float %4069, float %4070)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = call float @dx.op.dot3.f32(i32 55, float %4061, float %4060, float %4059, float %5390, float %5391, float %5392)  ; Dot3(ax,ay,az,bx,by,bz)
  %5395 = call float @dx.op.unary.f32(i32 7, float %5393)  ; Saturate(value)
  %5396 = fmul fast float %5395, %5266
  %5397 = fmul fast float %5395, %5395
  %5398 = fmul fast float %5397, %4091
  %5399 = call float @dx.op.unary.f32(i32 7, float %5398)  ; Saturate(value)
  %5400 = fmul fast float %5396, %5399
  %5401 = bitcast float %5256 to i32
  %5402 = ashr i32 %5401, 1
  %5403 = sub nsw i32 1597463007, %5402
  %5404 = bitcast i32 %5403 to float
  %5405 = fmul fast float %5404, %5253
  %5406 = fmul fast float %5404, %5254
  %5407 = fmul fast float %5404, %5255
  %5408 = fsub fast float %5405, %4064
  %5409 = fsub fast float %5406, %4063
  %5410 = fsub fast float %5407, %4062
  %5411 = call float @dx.op.dot3.f32(i32 55, float %5408, float %5409, float %5410, float %5408, float %5409, float %5410)  ; Dot3(ax,ay,az,bx,by,bz)
  %5412 = call float @dx.op.unary.f32(i32 25, float %5411)  ; Rsqrt(value)
  %5413 = fmul fast float %5408, %5412
  %5414 = fmul fast float %5409, %5412
  %5415 = fmul fast float %5410, %5412
  %5416 = call float @dx.op.dot3.f32(i32 55, float %4068, float %4069, float %4070, float %5413, float %5414, float %5415)  ; Dot3(ax,ay,az,bx,by,bz)
  %5417 = fmul fast float %5416, %5416
  %5418 = call float @dx.op.unary.f32(i32 6, float %5393)  ; FAbs(value)
  %5419 = fsub fast float 1.000000e+00, %4074
  %5420 = call float @dx.op.binary.f32(i32 35, float %5419, float 0x3F847AE140000000)  ; FMax(a,b)
  %5421 = fmul fast float %5420, %5420
  %5422 = fmul fast float %5421, %5421
  %5423 = fsub fast float 1.000000e+00, %5422
  %5424 = fmul fast float %4078, %4078
  %5425 = fmul fast float %5424, %5423
  %5426 = fadd fast float %5425, %5422
  %5427 = bitcast float %5426 to i32
  %5428 = ashr i32 %5427, 1
  %5429 = add nsw i32 %5428, 532487669
  %5430 = bitcast i32 %5429 to float
  %5431 = fadd fast float %5430, %4078
  %5432 = fmul fast float %5422, %5417
  %5433 = fsub fast float 1.000000e+00, %5417
  %5434 = fadd fast float %5433, %5432
  %5435 = fmul fast float %5418, %5418
  %5436 = fmul fast float %5435, %5423
  %5437 = fadd fast float %5436, %5422
  %5438 = bitcast float %5437 to i32
  %5439 = ashr i32 %5438, 1
  %5440 = add nsw i32 %5439, 532487669
  %5441 = bitcast i32 %5440 to float
  %5442 = fadd fast float %5441, %5418
  %5443 = fmul fast float %5434, %5434
  %5444 = fmul fast float %5443, %5431
  %5445 = fmul fast float %5444, %5442
  %5446 = fdiv fast float 1.000000e+00, %5445
  %5447 = bitcast float %5422 to i32
  %5448 = sitofp i32 %5447 to float
  %5449 = fmul fast float %5448, 0x3FE7F73180000000
  %5450 = fadd fast float %5449, 0x41AFE27C40000000
  %5451 = fptosi float %5450 to i32
  %5452 = bitcast i32 %5451 to float
  %5453 = fmul fast float %5239, 0x3FD80E9D60000000
  %5454 = fmul fast float %5453, %5404
  %5455 = fadd fast float %5452, %5454
  %5456 = bitcast float %5455 to i32
  %5457 = sub nsw i32 2129859010, %5456
  %5458 = bitcast i32 %5457 to float
  %5459 = fmul fast float %5422, %5446
  %5460 = fmul fast float %5459, %5452
  %5461 = fmul fast float %5460, %5458
  %5462 = call float @dx.op.unary.f32(i32 6, float %5394)  ; FAbs(value)
  %5463 = fsub fast float 1.000000e+00, %5462
  %5464 = bitcast float %5463 to i32
  %5465 = sitofp i32 %5464 to float
  %5466 = fmul fast float %5465, 5.000000e+00
  %5467 = fadd fast float %5466, 0xC1EFBF8940000000
  %5468 = fptosi float %5467 to i32
  %5469 = bitcast i32 %5468 to float
  %5470 = fsub fast float 1.000000e+00, %4065
  %5471 = fsub fast float 1.000000e+00, %4066
  %5472 = fsub fast float 1.000000e+00, %4076
  %5473 = fmul fast float %5469, %5470
  %5474 = fmul fast float %5469, %5471
  %5475 = fmul fast float %5469, %5472
  %5476 = fadd fast float %5473, %4065
  %5477 = fadd fast float %5474, %4066
  %5478 = fadd fast float %5475, %4076
  %5479 = fmul fast float %5393, 9.843750e-01
  %5480 = fadd fast float %5479, 7.812500e-03
  %5481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5480, float %4961, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5482 = extractvalue %dx.types.ResRet.f32 %5481, 2
  %5483 = extractvalue %dx.types.ResRet.f32 %5481, 3
  %5484 = fmul fast float %5482, %4065
  %5485 = fmul fast float %5482, %4066
  %5486 = fmul fast float %5482, %4076
  %5487 = fadd fast float %5484, %5483
  %5488 = fadd fast float %5485, %5483
  %5489 = fadd fast float %5486, %5483
  %5490 = call float @dx.op.binary.f32(i32 35, float %5488, float %5489)  ; FMax(a,b)
  %5491 = call float @dx.op.binary.f32(i32 35, float %5487, float %5490)  ; FMax(a,b)
  %5492 = fsub fast float 1.000000e+00, %5491
  %5493 = fmul fast float %5382, %872
  %5494 = fmul fast float %5493, %5400
  %5495 = fmul fast float %5494, %5492
  %5496 = fmul fast float %5383, %872
  %5497 = fmul fast float %5496, %5400
  %5498 = fmul fast float %5497, %5492
  %5499 = fmul fast float %5384, %872
  %5500 = fmul fast float %5499, %5400
  %5501 = fmul fast float %5500, %5492
  %5502 = fadd fast float %5495, %5221
  %5503 = fadd fast float %5498, %5222
  %5504 = fadd fast float %5501, %5223
  %5505 = fmul fast float %5494, %5476
  %5506 = fmul fast float %5505, %5461
  %5507 = fmul fast float %5497, %5477
  %5508 = fmul fast float %5507, %5461
  %5509 = fmul fast float %5500, %5478
  %5510 = fmul fast float %5509, %5461
  %5511 = fadd fast float %5506, %5218
  %5512 = fadd fast float %5508, %5219
  %5513 = fadd fast float %5510, %5220
  br label %5296

; <label>:5514                                    ; preds = %5296
  br label %5515

; <label>:5515                                    ; preds = %5514, %5184
  %5516 = phi float [ %5186, %5184 ], [ %5297, %5514 ]
  %5517 = phi float [ %5187, %5184 ], [ %5298, %5514 ]
  %5518 = phi float [ %5188, %5184 ], [ %5299, %5514 ]
  %5519 = phi float [ %5189, %5184 ], [ %5300, %5514 ]
  %5520 = phi float [ %5190, %5184 ], [ %5301, %5514 ]
  %5521 = phi float [ %5191, %5184 ], [ %5302, %5514 ]
  %5522 = add i32 %5185, 1
  %5523 = icmp ugt i32 %5522, %5181
  br i1 %5523, label %5524, label %5184

; <label>:5524                                    ; preds = %5515
  br label %5525

; <label>:5525                                    ; preds = %5524, %5160, %5150
  %5526 = phi float [ %5151, %5150 ], [ %5151, %5160 ], [ %5516, %5524 ]
  %5527 = phi float [ %5152, %5150 ], [ %5152, %5160 ], [ %5517, %5524 ]
  %5528 = phi float [ %5153, %5150 ], [ %5153, %5160 ], [ %5518, %5524 ]
  %5529 = phi float [ %5154, %5150 ], [ %5154, %5160 ], [ %5519, %5524 ]
  %5530 = phi float [ %5155, %5150 ], [ %5155, %5160 ], [ %5520, %5524 ]
  %5531 = phi float [ %5156, %5150 ], [ %5156, %5160 ], [ %5521, %5524 ]
  %5532 = call float @dx.op.unary.f32(i32 24, float %4071)  ; Sqrt(value)
  %5533 = call float @dx.op.unary.f32(i32 24, float %4072)  ; Sqrt(value)
  %5534 = call float @dx.op.unary.f32(i32 24, float %4073)  ; Sqrt(value)
  %5535 = fmul fast float %5532, %5529
  %5536 = fmul fast float %5533, %5530
  %5537 = extractvalue %dx.types.CBufRet.f32 %4693, 0
  br i1 %167, label %5538, label %5559

; <label>:5538                                    ; preds = %5525
  %5539 = fadd fast float %5531, %3439
  %5540 = fmul fast float %5539, %3437
  %5541 = fsub fast float 1.000000e+00, %3437
  %5542 = call float @dx.op.unary.f32(i32 7, float %5541)  ; Saturate(value)
  %5543 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %5544 = extractvalue %dx.types.CBufRet.f32 %5543, 3
  %5545 = fmul fast float %5544, %5542
  %5546 = fadd fast float %5545, %5540
  %5547 = fsub fast float 1.000000e+00, %4078
  %5548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %5549 = extractvalue %dx.types.CBufRet.f32 %5548, 0
  %5550 = fmul fast float %5549, %5547
  %5551 = fsub fast float %5546, %5550
  %5552 = fadd fast float %5536, %5535
  %5553 = fmul fast float %5537, %5552
  %5554 = extractvalue %dx.types.CBufRet.f32 %5543, 1
  %5555 = fsub fast float %5551, %5554
  %5556 = extractvalue %dx.types.CBufRet.f32 %5543, 2
  %5557 = fmul fast float %5555, %5556
  %5558 = call float @dx.op.unary.f32(i32 7, float %5557)  ; Saturate(value)
  br label %5575

; <label>:5559                                    ; preds = %5525
  %5560 = fmul fast float %5534, %5531
  %5561 = fmul fast float %5537, %5535
  %5562 = fmul fast float %5537, %5536
  %5563 = fmul fast float %5560, %5537
  %5564 = add i32 %37, 356
  %5565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %5564, i32 undef)  ; BufferLoad(srv,index,wot)
  %5566 = extractvalue %dx.types.ResRet.i32 %5565, 0
  %5567 = and i32 %5566, 32
  %5568 = icmp eq i32 %5567, 0
  br i1 %5568, label %5575, label %5569

; <label>:5569                                    ; preds = %5559
  %5570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %5571 = extractvalue %dx.types.CBufRet.f32 %5570, 0
  %5572 = fmul fast float %5571, 0x3FE99999A0000000
  %5573 = fadd fast float %5571, %5561
  %5574 = fadd fast float %5572, %5563
  br label %5575

; <label>:5575                                    ; preds = %5569, %5559, %5538
  %5576 = phi float [ %5553, %5538 ], [ %5573, %5569 ], [ %5561, %5559 ]
  %5577 = phi float [ %5558, %5538 ], [ %5562, %5569 ], [ %5562, %5559 ]
  %5578 = phi float [ 1.000000e+00, %5538 ], [ %5574, %5569 ], [ %5563, %5559 ]
  %5579 = fmul fast float %5537, %5527
  %5580 = fmul fast float %5537, %5528
  %5581 = fadd fast float %5527, %5526
  %5582 = select i1 %167, float %5581, float %5526
  %5583 = fmul float %5582, %5537
  %5584 = select i1 %167, float 0.000000e+00, float %5579
  %5585 = select i1 %167, float 0.000000e+00, float %5580
  %5586 = fmul fast float %5576, %5532
  %5587 = fmul fast float %5577, %5533
  %5588 = fmul fast float %5578, %5534
  %5589 = fadd fast float %5583, %5586
  %5590 = fadd fast float %5584, %5587
  %5591 = fadd fast float %5585, %5588
  %5592 = select i1 %167, float %5577, float %5590
  %5593 = select i1 %167, float %5578, float %5591
  %5594 = call float @dx.op.binary.f32(i32 36, float %5589, float 3.225500e+04)  ; FMin(a,b)
  %5595 = call float @dx.op.binary.f32(i32 36, float %5592, float 3.225500e+04)  ; FMin(a,b)
  %5596 = call float @dx.op.binary.f32(i32 36, float %5593, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %5594)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %5595)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %5596)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!41 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!42 = !{!43, !44, !45, !46, !47}
!43 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!44 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!45 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!46 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!47 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!48 = !{[35 x i32] [i32 33, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7]}
!49 = !{void ()* @ps_main, !"ps_main", !50, !4, !72}
!50 = !{!51, !70, null}
!51 = !{!52, !55, !57, !59, !61, !63, !64, !65, !67, !69}
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
!67 = !{i32 8, !"SV_IsFrontFace", i8 5, i8 13, !53, i8 1, i32 1, i8 1, i32 8, i8 0, !68}
!68 = !{i32 3, i32 1}
!69 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !53, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!70 = !{!71}
!71 = !{i32 0, !"SV_Target", i8 9, i8 16, !53, i8 0, i32 1, i8 4, i32 0, i8 0, !62}
!72 = !{i32 0, i64 24}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}

