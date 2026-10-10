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
; shader hash: e5efcc1c5ad4fa8843767b7070987aba
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
  %62 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
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
  %90 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
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
  %126 = add i32 %37, 360
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = extractvalue %dx.types.ResRet.i32 %127, 1
  %130 = extractvalue %dx.types.ResRet.i32 %127, 2
  %131 = extractvalue %dx.types.ResRet.i32 %127, 3
  %132 = bitcast i32 %128 to float
  %133 = bitcast i32 %129 to float
  %134 = bitcast i32 %130 to float
  %135 = bitcast i32 %131 to float
  %136 = call float @dx.op.dot3.f32(i32 55, float %73, float %75, float %77, float %73, float %75, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %137 = call float @dx.op.unary.f32(i32 25, float %136)  ; Rsqrt(value)
  %138 = fmul fast float %137, %73
  %139 = fmul fast float %137, %75
  %140 = fmul fast float %137, %77
  %141 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %142 = call float @dx.op.unary.f32(i32 25, float %141)  ; Rsqrt(value)
  %143 = fmul fast float %142, %123
  %144 = fmul fast float %142, %124
  %145 = fmul fast float %142, %125
  %146 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %138, float %139, float %140)  ; Dot3(ax,ay,az,bx,by,bz)
  %147 = fmul fast float %146, %146
  %148 = fmul fast float %147, %134
  %149 = fadd fast float %148, %135
  %150 = call float @dx.op.unary.f32(i32 7, float %149)  ; Saturate(value)
  %151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %152 = extractvalue %dx.types.CBufRet.f32 %151, 3
  %153 = fmul fast float %152, %141
  %154 = fsub fast float %132, %153
  %155 = fmul fast float %154, %133
  %156 = call float @dx.op.unary.f32(i32 7, float %155)  ; Saturate(value)
  %157 = fmul fast float %156, %150
  %158 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %159 = extractvalue %dx.types.CBufRet.f32 %158, 2
  %160 = extractvalue %dx.types.CBufRet.f32 %158, 3
  %161 = fmul fast float %159, %64
  %162 = fmul fast float %160, %65
  %163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %6, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %164 = extractvalue %dx.types.ResRet.i32 %163, 0
  %165 = and i32 %164, 114688
  %166 = icmp ne i32 %165, 0
  %167 = select i1 %166, float %161, float 0.000000e+00
  %168 = select i1 %166, float %162, float 0.000000e+00
  %169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %32, float %167, float %168, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %170 = extractvalue %dx.types.ResRet.f32 %169, 0
  %171 = fmul fast float %170, 2.550000e+02
  %172 = fptoui float %171 to i32
  %173 = select i1 %166, i32 %172, i32 0
  %174 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %175 = extractvalue %dx.types.CBufRet.i32 %174, 3
  %176 = and i32 %175, 3
  %177 = icmp ne i32 %176, 0
  %178 = and i32 %175, 4
  %179 = icmp ne i32 %178, 0
  %180 = and i1 %177, %179
  br i1 %180, label %181, label %190

; <label>:181                                     ; preds = %0
  %182 = fmul fast float %92, %65
  %183 = fmul fast float %91, %64
  %184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %31, float %183, float %182, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %185 = extractvalue %dx.types.ResRet.f32 %184, 0
  %186 = fsub fast float 1.000000e+00, %185
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 0
  %189 = fcmp fast olt float %186, %188
  br label %198

; <label>:190                                     ; preds = %0
  %191 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = extractvalue %dx.types.CBufRet.i32 %191, 3
  %193 = and i32 %192, 3
  %194 = icmp ne i32 %193, 0
  %195 = and i32 %192, 4
  %196 = icmp eq i32 %195, 0
  %197 = and i1 %194, %196
  br label %198

; <label>:198                                     ; preds = %190, %181
  %199 = phi i1 [ %189, %181 ], [ %197, %190 ]
  %200 = add i32 %37, 156
  %201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %200, i32 undef)  ; BufferLoad(srv,index,wot)
  %202 = extractvalue %dx.types.ResRet.i32 %201, 0
  %203 = shl i32 %202, 4
  %204 = and i32 %203, 32752
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %202, 7
  %207 = and i32 %206, 32752
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = lshr i32 %202, 22
  %210 = shl nuw nsw i32 %209, 5
  %211 = call float @dx.op.legacyF16ToF32(i32 131, i32 %210)  ; LegacyF16ToF32(value)
  %212 = add i32 %37, 216
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = and i32 %214, 255
  %216 = uitofp i32 %215 to float
  %217 = fmul fast float %216, 0x3F70101020000000
  %218 = lshr i32 %214, 8
  %219 = and i32 %218, 255
  %220 = uitofp i32 %219 to float
  %221 = fmul fast float %220, 0x3F70101020000000
  %222 = lshr i32 %214, 16
  %223 = and i32 %222, 255
  %224 = uitofp i32 %223 to float
  %225 = fmul fast float %224, 0x3F70101020000000
  %226 = add i32 %37, 36
  %227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %226, i32 undef)  ; BufferLoad(srv,index,wot)
  %228 = extractvalue %dx.types.ResRet.i32 %227, 0
  %229 = and i32 %228, 65535
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %228, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = add i32 %37, 288
  %234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %233, i32 undef)  ; BufferLoad(srv,index,wot)
  %235 = extractvalue %dx.types.ResRet.i32 %234, 0
  %236 = and i32 %235, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %235, 16
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = fmul fast float %237, 0x3F50624DE0000000
  %241 = fmul fast float %239, 0x3F50624DE0000000
  %242 = add i32 %37, 172
  %243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %242, i32 undef)  ; BufferLoad(srv,index,wot)
  %244 = extractvalue %dx.types.ResRet.i32 %243, 0
  %245 = shl i32 %244, 4
  %246 = and i32 %245, 32752
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %244, 7
  %249 = and i32 %248, 32752
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = lshr i32 %244, 22
  %252 = shl nuw nsw i32 %251, 5
  %253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %252)  ; LegacyF16ToF32(value)
  %254 = add i32 %37, 232
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = and i32 %256, 255
  %258 = uitofp i32 %257 to float
  %259 = fmul fast float %258, 0x3F70101020000000
  %260 = lshr i32 %256, 8
  %261 = and i32 %260, 255
  %262 = uitofp i32 %261 to float
  %263 = fmul fast float %262, 0x3F70101020000000
  %264 = lshr i32 %256, 16
  %265 = and i32 %264, 255
  %266 = uitofp i32 %265 to float
  %267 = fmul fast float %266, 0x3F70101020000000
  %268 = add i32 %37, 52
  %269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %268, i32 undef)  ; BufferLoad(srv,index,wot)
  %270 = extractvalue %dx.types.ResRet.i32 %269, 0
  %271 = and i32 %270, 65535
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %270, 16
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = add i32 %37, 304
  %276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %275, i32 undef)  ; BufferLoad(srv,index,wot)
  %277 = extractvalue %dx.types.ResRet.i32 %276, 0
  %278 = and i32 %277, 65535
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %277, 16
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = fmul fast float %279, 0x3F50624DE0000000
  %283 = fmul fast float %281, 0x3F50624DE0000000
  %284 = add i32 %37, 188
  %285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %284, i32 undef)  ; BufferLoad(srv,index,wot)
  %286 = extractvalue %dx.types.ResRet.i32 %285, 0
  %287 = shl i32 %286, 4
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %286, 7
  %291 = and i32 %290, 32752
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = lshr i32 %286, 22
  %294 = shl nuw nsw i32 %293, 5
  %295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %294)  ; LegacyF16ToF32(value)
  %296 = add i32 %37, 248
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = and i32 %298, 255
  %300 = uitofp i32 %299 to float
  %301 = fmul fast float %300, 0x3F70101020000000
  %302 = lshr i32 %298, 8
  %303 = and i32 %302, 255
  %304 = uitofp i32 %303 to float
  %305 = fmul fast float %304, 0x3F70101020000000
  %306 = lshr i32 %298, 16
  %307 = and i32 %306, 255
  %308 = uitofp i32 %307 to float
  %309 = fmul fast float %308, 0x3F70101020000000
  %310 = add i32 %37, 68
  %311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %310, i32 undef)  ; BufferLoad(srv,index,wot)
  %312 = extractvalue %dx.types.ResRet.i32 %311, 0
  %313 = and i32 %312, 65535
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %312, 16
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = add i32 %37, 320
  %318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %317, i32 undef)  ; BufferLoad(srv,index,wot)
  %319 = extractvalue %dx.types.ResRet.i32 %318, 0
  %320 = and i32 %319, 65535
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %319, 16
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = fmul fast float %321, 0x3F50624DE0000000
  %325 = fmul fast float %323, 0x3F50624DE0000000
  %326 = add i32 %37, 204
  %327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %326, i32 undef)  ; BufferLoad(srv,index,wot)
  %328 = extractvalue %dx.types.ResRet.i32 %327, 0
  %329 = shl i32 %328, 4
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %328, 7
  %333 = and i32 %332, 32752
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = lshr i32 %328, 22
  %336 = shl nuw nsw i32 %335, 5
  %337 = call float @dx.op.legacyF16ToF32(i32 131, i32 %336)  ; LegacyF16ToF32(value)
  %338 = add i32 %37, 264
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 255
  %342 = uitofp i32 %341 to float
  %343 = fmul fast float %342, 0x3F70101020000000
  %344 = lshr i32 %340, 8
  %345 = and i32 %344, 255
  %346 = uitofp i32 %345 to float
  %347 = fmul fast float %346, 0x3F70101020000000
  %348 = lshr i32 %340, 16
  %349 = and i32 %348, 255
  %350 = uitofp i32 %349 to float
  %351 = fmul fast float %350, 0x3F70101020000000
  %352 = add i32 %37, 84
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = and i32 %354, 65535
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = lshr i32 %354, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = add i32 %37, 336
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %359, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 65535
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %361, 16
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = fmul fast float %363, 0x3F50624DE0000000
  %367 = fmul fast float %365, 0x3F50624DE0000000
  %368 = add i32 %37, 348
  %369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %370 = extractvalue %dx.types.ResRet.i32 %369, 0
  %371 = and i32 %370, 32
  %372 = icmp eq i32 %371, 0
  %373 = and i32 %370, 64
  %374 = icmp eq i32 %373, 0
  %375 = and i32 %370, 128
  %376 = icmp eq i32 %375, 0
  %377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %378 = extractvalue %dx.types.ResRet.i32 %377, 0
  %379 = and i32 %378, 2
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %394, label %381

; <label>:381                                     ; preds = %198
  %382 = add i32 %37, 520
  %383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %382, i32 undef)  ; BufferLoad(srv,index,wot)
  %384 = extractvalue %dx.types.ResRet.i32 %383, 0
  %385 = add i32 %384, 0
  %386 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %385, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %387 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %386, %dx.types.Handle %61, float %52, float %53, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %388 = extractvalue %dx.types.ResRet.f32 %387, 0
  %389 = extractvalue %dx.types.ResRet.f32 %387, 1
  %390 = extractvalue %dx.types.ResRet.f32 %387, 2
  %391 = fmul fast float %388, %54
  %392 = fmul fast float %389, %55
  %393 = fmul fast float %390, %56
  br label %394

; <label>:394                                     ; preds = %381, %198
  %395 = phi float [ %56, %198 ], [ %393, %381 ]
  %396 = phi float [ %55, %198 ], [ %392, %381 ]
  %397 = phi float [ %54, %198 ], [ %391, %381 ]
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 2
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %421, label %402

; <label>:402                                     ; preds = %394
  %403 = add i32 %37, 44
  %404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %403, i32 undef)  ; BufferLoad(srv,index,wot)
  %405 = extractvalue %dx.types.ResRet.i32 %404, 0
  %406 = and i32 %405, 1
  %407 = icmp ne i32 %406, 0
  %408 = select i1 %407, float %397, float 1.000000e+00
  %409 = add i32 %37, 60
  %410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %409, i32 undef)  ; BufferLoad(srv,index,wot)
  %411 = extractvalue %dx.types.ResRet.i32 %410, 0
  %412 = and i32 %411, 1
  %413 = icmp ne i32 %412, 0
  %414 = select i1 %413, float %396, float 1.000000e+00
  %415 = add i32 %37, 76
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 1
  %419 = icmp ne i32 %418, 0
  %420 = select i1 %419, float %395, float 1.000000e+00
  br label %421

; <label>:421                                     ; preds = %402, %394
  %422 = phi float [ %395, %394 ], [ %420, %402 ]
  %423 = phi float [ %396, %394 ], [ %414, %402 ]
  %424 = phi float [ %397, %394 ], [ %408, %402 ]
  %425 = lshr i32 %399, 20
  %426 = and i32 %425, 3
  %427 = add nuw nsw i32 %426, 1
  %428 = add i32 %37, 24
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = add i32 %37, 28
  %432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %431, i32 undef)  ; BufferLoad(srv,index,wot)
  %433 = extractvalue %dx.types.ResRet.i32 %432, 0
  %434 = or i32 %433, %430
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %947, label %436

; <label>:436                                     ; preds = %421
  %437 = and i32 %430, 262144
  %438 = icmp ne i32 %437, 0
  %439 = select i1 %438, float %39, float 1.000000e+00
  %440 = select i1 %438, float %40, float 0.000000e+00
  %441 = select i1 %438, float %41, float 0.000000e+00
  %442 = select i1 %438, float %42, float 1.000000e+00
  %443 = select i1 %438, float %43, float %52
  %444 = select i1 %438, float %44, float %53
  %445 = add i32 %37, 284
  %446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %447 = extractvalue %dx.types.ResRet.i32 %446, 0
  %448 = lshr i32 %447, 16
  %449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %448)  ; LegacyF16ToF32(value)
  %450 = fmul fast float %449, 0x3F50624DE0000000
  %451 = add i32 %37, 88
  %452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %451, i32 undef)  ; BufferLoad(srv,index,wot)
  %453 = extractvalue %dx.types.ResRet.i32 %452, 0
  %454 = lshr i32 %453, 16
  %455 = and i32 %454, 255
  %456 = lshr i32 %453, 24
  %457 = add i32 %37, 292
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = and i32 %459, 65535
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = lshr i32 %459, 16
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = add i32 %37, 32
  %465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %464, i32 undef)  ; BufferLoad(srv,index,wot)
  %466 = extractvalue %dx.types.ResRet.i32 %465, 0
  %467 = lshr i32 %466, 22
  %468 = shl nuw nsw i32 %467, 5
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = shl i32 %466, 4
  %471 = and i32 %470, 32752
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = lshr i32 %466, 7
  %474 = and i32 %473, 32752
  %475 = call float @dx.op.legacyF16ToF32(i32 131, i32 %474)  ; LegacyF16ToF32(value)
  %476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %477 = extractvalue %dx.types.CBufRet.f32 %476, 3
  %478 = fmul fast float %477, 1.000000e+03
  %479 = fmul fast float %240, %478
  %480 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %481 = fadd fast float %480, %230
  %482 = fmul fast float %241, %478
  %483 = call float @dx.op.unary.f32(i32 22, float %482)  ; Frc(value)
  %484 = fadd fast float %483, %232
  %485 = fmul fast float %450, %478
  %486 = call float @dx.op.unary.f32(i32 22, float %485)  ; Frc(value)
  %487 = fmul fast float %486, 0x401921FB60000000
  %488 = fadd fast float %487, %469
  %489 = call float @dx.op.unary.f32(i32 13, float %488)  ; Sin(value)
  %490 = call float @dx.op.unary.f32(i32 12, float %488)  ; Cos(value)
  %491 = fsub fast float -0.000000e+00, %489
  %492 = fadd fast float %443, -5.000000e-01
  %493 = fadd fast float %444, -5.000000e-01
  %494 = fmul fast float %461, %492
  %495 = fmul fast float %463, %493
  %496 = fadd fast float %494, 5.000000e-01
  %497 = fadd fast float %495, 5.000000e-01
  %498 = fmul fast float %472, %496
  %499 = fmul fast float %475, %497
  %500 = fmul fast float %490, %498
  %501 = call float @dx.op.tertiary.f32(i32 46, float %491, float %499, float %500)  ; FMad(a,b,c)
  %502 = fmul fast float %489, %498
  %503 = call float @dx.op.tertiary.f32(i32 46, float %490, float %499, float %502)  ; FMad(a,b,c)
  %504 = fadd fast float %481, %501
  %505 = fadd fast float %484, %503
  %506 = icmp ugt i32 %455, 1
  %507 = icmp ugt i32 %453, 33554431
  %508 = or i1 %507, %506
  br i1 %508, label %509, label %534

; <label>:509                                     ; preds = %436
  %510 = add i32 %37, 228
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = lshr i32 %512, 16
  %514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %513)  ; LegacyF16ToF32(value)
  %515 = fmul fast float %477, %514
  %516 = call float @dx.op.unary.f32(i32 22, float %515)  ; Frc(value)
  %517 = mul nuw nsw i32 %455, %456
  %518 = uitofp i32 %517 to float
  %519 = fmul fast float %516, %518
  %520 = call float @dx.op.unary.f32(i32 27, float %519)  ; Round_ni(value)
  %521 = fptoui float %520 to i32
  %522 = urem i32 %521, %455
  %523 = udiv i32 %521, %456
  %524 = call float @dx.op.unary.f32(i32 22, float %504)  ; Frc(value)
  %525 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %526 = uitofp i32 %522 to float
  %527 = uitofp i32 %523 to float
  %528 = fadd fast float %524, %526
  %529 = fadd fast float %525, %527
  %530 = uitofp i32 %455 to float
  %531 = uitofp i32 %456 to float
  %532 = fdiv fast float %528, %530
  %533 = fdiv fast float %529, %531
  br label %534

; <label>:534                                     ; preds = %509, %436
  %535 = phi float [ %532, %509 ], [ %504, %436 ]
  %536 = phi float [ %533, %509 ], [ %505, %436 ]
  %537 = and i32 %430, 16
  %538 = icmp eq i32 %537, 0
  br i1 %538, label %735, label %539

; <label>:539                                     ; preds = %534
  %540 = add i32 %37, 408
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %540, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = add i32 %542, 0
  %544 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %543, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %545 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %544, %dx.types.Handle %60, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %546 = extractvalue %dx.types.ResRet.f32 %545, 0
  %547 = extractvalue %dx.types.ResRet.f32 %545, 1
  %548 = extractvalue %dx.types.ResRet.f32 %545, 2
  %549 = extractvalue %dx.types.ResRet.f32 %545, 3
  %550 = and i32 %453, 255
  %551 = uitofp i32 %550 to float
  %552 = lshr i32 %453, 8
  %553 = and i32 %552, 255
  %554 = uitofp i32 %553 to float
  %555 = fmul fast float %549, %551
  %556 = fadd fast float %555, %554
  %557 = fmul fast float %556, 0x3F70101000000000
  %558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %559 = extractvalue %dx.types.ResRet.i32 %558, 0
  %560 = and i32 %559, 512
  %561 = icmp eq i32 %560, 0
  br i1 %561, label %570, label %562

; <label>:562                                     ; preds = %539
  %563 = add i32 %37, 488
  %564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %563, i32 undef)  ; BufferLoad(srv,index,wot)
  %565 = extractvalue %dx.types.ResRet.i32 %564, 0
  %566 = add i32 %565, 0
  %567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %567, %dx.types.Handle %61, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %569 = extractvalue %dx.types.ResRet.f32 %568, 0
  br label %570

; <label>:570                                     ; preds = %562, %539
  %571 = phi float [ %569, %562 ], [ 1.000000e+00, %539 ]
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = and i32 %573, 33554432
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %682, label %576

; <label>:576                                     ; preds = %570
  %577 = add i32 %37, 224
  %578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %577, i32 undef)  ; BufferLoad(srv,index,wot)
  %579 = extractvalue %dx.types.ResRet.i32 %578, 0
  %580 = and i32 %579, 65535
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = lshr i32 %579, 16
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = add i32 %37, 228
  %585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %584, i32 undef)  ; BufferLoad(srv,index,wot)
  %586 = extractvalue %dx.types.ResRet.i32 %585, 0
  %587 = and i32 %586, 65535
  %588 = call float @dx.op.legacyF16ToF32(i32 131, i32 %587)  ; LegacyF16ToF32(value)
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = lshr i32 %590, 24
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = and i32 %590, 255
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %595, 0x3F70101020000000
  %597 = lshr i32 %590, 8
  %598 = and i32 %597, 255
  %599 = uitofp i32 %598 to float
  %600 = fmul fast float %599, 0x3F70101020000000
  %601 = lshr i32 %590, 16
  %602 = and i32 %601, 255
  %603 = uitofp i32 %602 to float
  %604 = fmul fast float %603, 0x3F70101020000000
  %605 = add i32 %37, 220
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = lshr i32 %607, 24
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = and i32 %607, 255
  %612 = uitofp i32 %611 to float
  %613 = fmul fast float %612, 0x3F70101020000000
  %614 = lshr i32 %607, 8
  %615 = and i32 %614, 255
  %616 = uitofp i32 %615 to float
  %617 = fmul fast float %616, 0x3F70101020000000
  %618 = lshr i32 %607, 16
  %619 = and i32 %618, 255
  %620 = uitofp i32 %619 to float
  %621 = fmul fast float %620, 0x3F70101020000000
  %622 = bitcast float %546 to i32
  %623 = ashr i32 %622, 1
  %624 = sub nsw i32 1597463174, %623
  %625 = bitcast i32 %624 to float
  %626 = fmul fast float %546, 5.000000e-01
  %627 = fmul fast float %625, %625
  %628 = fmul fast float %627, %626
  %629 = fsub fast float 1.500000e+00, %628
  %630 = fmul fast float %625, %546
  %631 = fmul fast float %630, %629
  %632 = bitcast float %547 to i32
  %633 = ashr i32 %632, 1
  %634 = sub nsw i32 1597463174, %633
  %635 = bitcast i32 %634 to float
  %636 = fmul fast float %547, 5.000000e-01
  %637 = fmul fast float %635, %635
  %638 = fmul fast float %637, %636
  %639 = fsub fast float 1.500000e+00, %638
  %640 = fmul fast float %635, %547
  %641 = fmul fast float %640, %639
  %642 = bitcast float %548 to i32
  %643 = ashr i32 %642, 1
  %644 = sub nsw i32 1597463174, %643
  %645 = bitcast i32 %644 to float
  %646 = fmul fast float %548, 5.000000e-01
  %647 = fmul fast float %645, %645
  %648 = fmul fast float %647, %646
  %649 = fsub fast float 1.500000e+00, %648
  %650 = fmul fast float %645, %548
  %651 = fmul fast float %650, %649
  %652 = fsub fast float %631, %613
  %653 = fsub fast float %641, %617
  %654 = fsub fast float %651, %621
  %655 = fmul fast float %652, %581
  %656 = fmul fast float %653, %583
  %657 = fmul fast float %654, %588
  %658 = fadd fast float %655, %596
  %659 = fadd fast float %656, %600
  %660 = fadd fast float %657, %604
  %661 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %662 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %663 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %664 = fmul fast float %661, %661
  %665 = fmul fast float %662, %662
  %666 = fmul fast float %663, %663
  %667 = fsub fast float %664, %546
  %668 = fsub fast float %665, %547
  %669 = fsub fast float %666, %548
  %670 = fmul fast float %667, %571
  %671 = fmul fast float %668, %571
  %672 = fmul fast float %669, %571
  %673 = fadd fast float %670, %546
  %674 = fadd fast float %671, %547
  %675 = fadd fast float %672, %548
  %676 = fadd fast float %593, %557
  %677 = fsub fast float %676, %610
  %678 = call float @dx.op.unary.f32(i32 7, float %677)  ; Saturate(value)
  %679 = fsub fast float %678, %557
  %680 = fmul fast float %679, %571
  %681 = fadd fast float %680, %557
  br label %735

; <label>:682                                     ; preds = %570
  %683 = and i32 %573, 134217728
  %684 = icmp eq i32 %683, 0
  br i1 %684, label %719, label %685

; <label>:685                                     ; preds = %682
  %686 = call float @dx.op.unary.f32(i32 24, float %217)  ; Sqrt(value)
  %687 = call float @dx.op.unary.f32(i32 24, float %221)  ; Sqrt(value)
  %688 = call float @dx.op.unary.f32(i32 24, float %225)  ; Sqrt(value)
  %689 = fadd fast float %686, -5.000000e-01
  %690 = fadd fast float %687, -5.000000e-01
  %691 = fadd fast float %688, -5.000000e-01
  %692 = fmul fast float %689, %571
  %693 = fmul fast float %690, %571
  %694 = fmul fast float %691, %571
  %695 = fadd fast float %692, 5.000000e-01
  %696 = fadd fast float %693, 5.000000e-01
  %697 = fadd fast float %694, 5.000000e-01
  %698 = call float @dx.op.unary.f32(i32 24, float %546)  ; Sqrt(value)
  %699 = call float @dx.op.unary.f32(i32 24, float %547)  ; Sqrt(value)
  %700 = call float @dx.op.unary.f32(i32 24, float %548)  ; Sqrt(value)
  %701 = fmul fast float %695, 2.000000e+00
  %702 = fsub fast float 1.000000e+00, %701
  %703 = fmul fast float %702, %698
  %704 = fadd fast float %703, %701
  %705 = fmul fast float %704, %698
  %706 = fmul fast float %696, 2.000000e+00
  %707 = fsub fast float 1.000000e+00, %706
  %708 = fmul fast float %707, %699
  %709 = fadd fast float %708, %706
  %710 = fmul fast float %709, %699
  %711 = fmul fast float %697, 2.000000e+00
  %712 = fsub fast float 1.000000e+00, %711
  %713 = fmul fast float %712, %700
  %714 = fadd fast float %713, %711
  %715 = fmul fast float %714, %700
  %716 = fmul fast float %705, %705
  %717 = fmul fast float %710, %710
  %718 = fmul fast float %715, %715
  br label %735

; <label>:719                                     ; preds = %682
  %720 = fmul fast float %217, %217
  %721 = fmul fast float %221, %221
  %722 = fmul fast float %225, %225
  %723 = fadd fast float %720, -1.000000e+00
  %724 = fadd fast float %721, -1.000000e+00
  %725 = fadd fast float %722, -1.000000e+00
  %726 = fmul fast float %571, %723
  %727 = fmul fast float %571, %724
  %728 = fmul fast float %571, %725
  %729 = fadd fast float %726, 1.000000e+00
  %730 = fadd fast float %727, 1.000000e+00
  %731 = fadd fast float %728, 1.000000e+00
  %732 = fmul fast float %729, %546
  %733 = fmul fast float %730, %547
  %734 = fmul fast float %731, %548
  br label %735

; <label>:735                                     ; preds = %719, %685, %576, %534
  %736 = phi float [ %681, %576 ], [ %557, %685 ], [ %557, %719 ], [ 0x3FA23C0BE0000000, %534 ]
  %737 = phi float [ %673, %576 ], [ %716, %685 ], [ %732, %719 ], [ 1.000000e+00, %534 ]
  %738 = phi float [ %674, %576 ], [ %717, %685 ], [ %733, %719 ], [ 1.000000e+00, %534 ]
  %739 = phi float [ %675, %576 ], [ %718, %685 ], [ %734, %719 ], [ 1.000000e+00, %534 ]
  %740 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %741 = extractvalue %dx.types.CBufRet.i32 %740, 1
  %742 = and i32 %741, 1
  %743 = icmp ne i32 %742, 0
  %744 = add i32 %37, 356
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = and i32 %746, 32
  %748 = icmp ne i32 %747, 0
  %749 = and i1 %743, %748
  %750 = select i1 %749, float 1.000000e+00, float %737
  %751 = select i1 %749, float 0x3FD3333340000000, float %738
  %752 = select i1 %749, float 0x3FD3333340000000, float %739
  %753 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %754 = extractvalue %dx.types.ResRet.i32 %753, 0
  %755 = and i32 %754, 32
  %756 = icmp eq i32 %755, 0
  br i1 %756, label %829, label %757

; <label>:757                                     ; preds = %735
  %758 = add i32 %37, 92
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = add i32 %37, 424
  %762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %761, i32 undef)  ; BufferLoad(srv,index,wot)
  %763 = extractvalue %dx.types.ResRet.i32 %762, 0
  %764 = add i32 %763, 0
  %765 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %764, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %766 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %765, %dx.types.Handle %60, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %767 = extractvalue %dx.types.ResRet.f32 %766, 0
  %768 = extractvalue %dx.types.ResRet.f32 %766, 1
  %769 = extractvalue %dx.types.ResRet.f32 %766, 2
  %770 = extractvalue %dx.types.ResRet.f32 %766, 3
  %771 = and i32 %760, 255
  %772 = uitofp i32 %771 to float
  %773 = lshr i32 %760, 8
  %774 = and i32 %773, 255
  %775 = uitofp i32 %774 to float
  %776 = lshr i32 %760, 16
  %777 = and i32 %776, 255
  %778 = uitofp i32 %777 to float
  %779 = fmul fast float %778, 0x3F70101000000000
  %780 = fmul fast float %767, %772
  %781 = fadd fast float %780, %775
  %782 = fmul fast float %781, 0x3F70101000000000
  %783 = fadd fast float %768, -5.000000e-01
  %784 = fadd fast float %770, -5.000000e-01
  %785 = fmul fast float %783, %779
  %786 = fmul fast float %784, %779
  %787 = fadd fast float %785, 5.000000e-01
  %788 = fadd fast float %786, 5.000000e-01
  %789 = fmul fast float %787, 2.000000e+00
  %790 = fadd fast float %789, -1.000000e+00
  %791 = fmul fast float %788, 2.000000e+00
  %792 = fadd fast float %791, -1.000000e+00
  %793 = fadd fast float %790, %792
  %794 = fmul fast float %793, 5.000000e-01
  %795 = fsub fast float %790, %792
  %796 = fmul fast float %795, 5.000000e-01
  %797 = call float @dx.op.unary.f32(i32 6, float %794)  ; FAbs(value)
  %798 = fsub fast float 1.000000e+00, %797
  %799 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %800 = fsub fast float %798, %799
  %801 = call float @dx.op.dot3.f32(i32 55, float %794, float %796, float %800, float %794, float %796, float %800)  ; Dot3(ax,ay,az,bx,by,bz)
  %802 = call float @dx.op.unary.f32(i32 25, float %801)  ; Rsqrt(value)
  %803 = fmul fast float %794, %802
  %804 = fmul fast float %796, %802
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = and i32 %806, 67108864
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %825, label %809

; <label>:809                                     ; preds = %757
  %810 = add i32 %37, 280
  %811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.i32 %811, 0
  %813 = and i32 %812, 65535
  %814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %813)  ; LegacyF16ToF32(value)
  %815 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %445, i32 undef)  ; BufferLoad(srv,index,wot)
  %816 = extractvalue %dx.types.ResRet.i32 %815, 0
  %817 = and i32 %816, 65535
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = lshr i32 %812, 16
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = fsub fast float %782, %820
  %822 = fmul fast float %821, %814
  %823 = fadd fast float %822, %818
  %824 = call float @dx.op.unary.f32(i32 7, float %823)  ; Saturate(value)
  br label %825

; <label>:825                                     ; preds = %809, %757
  %826 = phi float [ %824, %809 ], [ %782, %757 ]
  %827 = call float @dx.op.dot2.f32(i32 54, float %803, float %804, float %439, float %440)  ; Dot2(ax,ay,bx,by)
  %828 = call float @dx.op.dot2.f32(i32 54, float %803, float %804, float %441, float %442)  ; Dot2(ax,ay,bx,by)
  br label %829

; <label>:829                                     ; preds = %825, %735
  %830 = phi float [ %826, %825 ], [ 0x3FD6666660000000, %735 ]
  %831 = phi float [ %827, %825 ], [ 0.000000e+00, %735 ]
  %832 = phi float [ %828, %825 ], [ 0.000000e+00, %735 ]
  %833 = phi float [ %769, %825 ], [ 1.000000e+00, %735 ]
  %834 = add i32 %37, 160
  %835 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %836 = extractvalue %dx.types.ResRet.i32 %835, 0
  %837 = lshr i32 %836, 22
  %838 = shl nuw nsw i32 %837, 5
  %839 = call float @dx.op.legacyF16ToF32(i32 131, i32 %838)  ; LegacyF16ToF32(value)
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 64
  %843 = icmp eq i32 %842, 0
  br i1 %843, label %877, label %844

; <label>:844                                     ; preds = %829
  %845 = add i32 %37, 440
  %846 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.i32 %846, 0
  %848 = add i32 %847, 0
  %849 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %848, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %851 = extractvalue %dx.types.ResRet.i32 %850, 0
  %852 = and i32 %851, 131072
  %853 = icmp eq i32 %852, 0
  %854 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %849, %dx.types.Handle %60, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = fmul fast float %855, %205
  %859 = fmul fast float %856, %208
  %860 = fmul fast float %857, %211
  br i1 %853, label %867, label %861

; <label>:861                                     ; preds = %844
  %862 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %863 = extractvalue %dx.types.CBufRet.f32 %862, 0
  %864 = fmul fast float %863, %858
  %865 = fmul fast float %863, %859
  %866 = fmul fast float %863, %860
  br label %867

; <label>:867                                     ; preds = %861, %844
  %868 = phi float [ %864, %861 ], [ %858, %844 ]
  %869 = phi float [ %865, %861 ], [ %859, %844 ]
  %870 = phi float [ %866, %861 ], [ %860, %844 ]
  %871 = fmul fast float %868, %839
  %872 = select i1 %199, float %871, float %868
  %873 = call float @dx.op.dot3.f32(i32 55, float %872, float %869, float %870, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %874 = select i1 %199, float 0.000000e+00, float %868
  %875 = select i1 %199, float %873, float %869
  %876 = select i1 %199, float 0.000000e+00, float %870
  br label %877

; <label>:877                                     ; preds = %867, %829
  %878 = phi float [ %874, %867 ], [ 0.000000e+00, %829 ]
  %879 = phi float [ %875, %867 ], [ 0.000000e+00, %829 ]
  %880 = phi float [ %876, %867 ], [ 0.000000e+00, %829 ]
  %881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %882 = extractvalue %dx.types.ResRet.i32 %881, 0
  %883 = and i32 %882, 10240
  %884 = icmp eq i32 %883, 0
  br i1 %884, label %929, label %885

; <label>:885                                     ; preds = %877
  %886 = add i32 %37, 504
  %887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %886, i32 undef)  ; BufferLoad(srv,index,wot)
  %888 = extractvalue %dx.types.ResRet.i32 %887, 0
  %889 = add i32 %888, 0
  %890 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %889, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %891 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %890, %dx.types.Handle %61, float %535, float %536, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %892 = extractvalue %dx.types.ResRet.f32 %891, 1
  %893 = extractvalue %dx.types.ResRet.f32 %891, 3
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = and i32 %895, 1048576
  %897 = icmp ne i32 %896, 0
  %898 = and i32 %895, 8192
  %899 = icmp eq i32 %898, 0
  br i1 %899, label %915, label %900

; <label>:900                                     ; preds = %885
  %901 = extractvalue %dx.types.ResRet.f32 %891, 2
  %902 = select i1 %897, float %901, float %892
  %903 = extractvalue %dx.types.ResRet.f32 %891, 0
  %904 = select i1 %897, float %903, float %892
  %905 = add i32 %37, 96
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %905, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = lshr i32 %907, 16
  %909 = and i32 %908, 255
  %910 = uitofp i32 %909 to float
  %911 = fmul fast float %910, 0x3F80101020000000
  %912 = fmul fast float %911, %904
  %913 = fmul fast float %911, %892
  %914 = fmul fast float %911, %902
  br label %915

; <label>:915                                     ; preds = %900, %885
  %916 = phi float [ %912, %900 ], [ 0.000000e+00, %885 ]
  %917 = phi float [ %913, %900 ], [ 0.000000e+00, %885 ]
  %918 = phi float [ %914, %900 ], [ 0.000000e+00, %885 ]
  %919 = and i32 %895, 2048
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %929, label %921

; <label>:921                                     ; preds = %915
  %922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %834, i32 undef)  ; BufferLoad(srv,index,wot)
  %923 = extractvalue %dx.types.ResRet.i32 %922, 0
  %924 = shl i32 %923, 4
  %925 = and i32 %924, 32752
  %926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %925)  ; LegacyF16ToF32(value)
  %927 = fmul fast float %926, %893
  %928 = call float @dx.op.binary.f32(i32 35, float %927, float 0x3F70101020000000)  ; FMax(a,b)
  br label %929

; <label>:929                                     ; preds = %921, %915, %877
  %930 = phi float [ %916, %921 ], [ %916, %915 ], [ 0.000000e+00, %877 ]
  %931 = phi float [ %917, %921 ], [ %917, %915 ], [ 0.000000e+00, %877 ]
  %932 = phi float [ %918, %921 ], [ %918, %915 ], [ 0.000000e+00, %877 ]
  %933 = phi float [ %928, %921 ], [ 0x3F70101020000000, %915 ], [ 0x3F70101020000000, %877 ]
  %934 = add i32 %37, 96
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = and i32 %936, 255
  %938 = uitofp i32 %937 to float
  %939 = lshr i32 %936, 8
  %940 = and i32 %939, 255
  %941 = uitofp i32 %940 to float
  %942 = call float @dx.op.dot3.f32(i32 55, float %750, float %751, float %752, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %943 = fmul fast float %941, %942
  %944 = fadd fast float %943, %938
  %945 = fmul fast float %944, 0x3F70101020000000
  %946 = call float @dx.op.unary.f32(i32 7, float %945)  ; Saturate(value)
  br label %947

; <label>:947                                     ; preds = %929, %421
  %948 = phi float [ 0.000000e+00, %421 ], [ %831, %929 ]
  %949 = phi float [ 0.000000e+00, %421 ], [ %832, %929 ]
  %950 = phi float [ 0.000000e+00, %421 ], [ %750, %929 ]
  %951 = phi float [ 0.000000e+00, %421 ], [ %751, %929 ]
  %952 = phi float [ 0.000000e+00, %421 ], [ %752, %929 ]
  %953 = phi float [ 0.000000e+00, %421 ], [ %930, %929 ]
  %954 = phi float [ 0.000000e+00, %421 ], [ %931, %929 ]
  %955 = phi float [ 0.000000e+00, %421 ], [ %932, %929 ]
  %956 = phi float [ 0.000000e+00, %421 ], [ %878, %929 ]
  %957 = phi float [ 0.000000e+00, %421 ], [ %879, %929 ]
  %958 = phi float [ 0.000000e+00, %421 ], [ %880, %929 ]
  %959 = phi float [ 0.000000e+00, %421 ], [ %736, %929 ]
  %960 = phi float [ 0.000000e+00, %421 ], [ 1.000000e+00, %929 ]
  %961 = phi float [ 0.000000e+00, %421 ], [ %830, %929 ]
  %962 = phi float [ 0.000000e+00, %421 ], [ %833, %929 ]
  %963 = phi float [ 0.000000e+00, %421 ], [ %933, %929 ]
  %964 = phi float [ 0.000000e+00, %421 ], [ %946, %929 ]
  br i1 %372, label %1893, label %965

; <label>:965                                     ; preds = %947
  %966 = icmp ult i32 %427, 2
  %967 = add i32 %37, 40
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = add i32 %37, 44
  %971 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %970, i32 undef)  ; BufferLoad(srv,index,wot)
  %972 = extractvalue %dx.types.ResRet.i32 %971, 0
  %973 = or i32 %972, %969
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %1893, label %975

; <label>:975                                     ; preds = %965
  %976 = and i32 %969, 262144
  %977 = icmp ne i32 %976, 0
  %978 = select i1 %977, float %39, float 1.000000e+00
  %979 = select i1 %977, float %40, float 0.000000e+00
  %980 = select i1 %977, float %41, float 0.000000e+00
  %981 = select i1 %977, float %42, float 1.000000e+00
  %982 = select i1 %977, float %43, float %52
  %983 = select i1 %977, float %44, float %53
  %984 = add i32 %37, 300
  %985 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %986 = extractvalue %dx.types.ResRet.i32 %985, 0
  %987 = lshr i32 %986, 16
  %988 = call float @dx.op.legacyF16ToF32(i32 131, i32 %987)  ; LegacyF16ToF32(value)
  %989 = fmul fast float %988, 0x3F50624DE0000000
  %990 = add i32 %37, 104
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = lshr i32 %992, 16
  %994 = and i32 %993, 255
  %995 = lshr i32 %992, 24
  %996 = add i32 %37, 308
  %997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %996, i32 undef)  ; BufferLoad(srv,index,wot)
  %998 = extractvalue %dx.types.ResRet.i32 %997, 0
  %999 = and i32 %998, 65535
  %1000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %999)  ; LegacyF16ToF32(value)
  %1001 = lshr i32 %998, 16
  %1002 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1001)  ; LegacyF16ToF32(value)
  %1003 = add i32 %37, 48
  %1004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1003, i32 undef)  ; BufferLoad(srv,index,wot)
  %1005 = extractvalue %dx.types.ResRet.i32 %1004, 0
  %1006 = lshr i32 %1005, 22
  %1007 = shl nuw nsw i32 %1006, 5
  %1008 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1007)  ; LegacyF16ToF32(value)
  %1009 = shl i32 %1005, 4
  %1010 = and i32 %1009, 32752
  %1011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1010)  ; LegacyF16ToF32(value)
  %1012 = lshr i32 %1005, 7
  %1013 = and i32 %1012, 32752
  %1014 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1013)  ; LegacyF16ToF32(value)
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 3
  %1017 = fmul fast float %1016, 1.000000e+03
  %1018 = fmul fast float %282, %1017
  %1019 = call float @dx.op.unary.f32(i32 22, float %1018)  ; Frc(value)
  %1020 = fadd fast float %1019, %272
  %1021 = fmul fast float %283, %1017
  %1022 = call float @dx.op.unary.f32(i32 22, float %1021)  ; Frc(value)
  %1023 = fadd fast float %1022, %274
  %1024 = fmul fast float %989, %1017
  %1025 = call float @dx.op.unary.f32(i32 22, float %1024)  ; Frc(value)
  %1026 = fmul fast float %1025, 0x401921FB60000000
  %1027 = fadd fast float %1026, %1008
  %1028 = call float @dx.op.unary.f32(i32 13, float %1027)  ; Sin(value)
  %1029 = call float @dx.op.unary.f32(i32 12, float %1027)  ; Cos(value)
  %1030 = fsub fast float -0.000000e+00, %1028
  %1031 = fadd fast float %982, -5.000000e-01
  %1032 = fadd fast float %983, -5.000000e-01
  %1033 = fmul fast float %1000, %1031
  %1034 = fmul fast float %1002, %1032
  %1035 = fadd fast float %1033, 5.000000e-01
  %1036 = fadd fast float %1034, 5.000000e-01
  %1037 = fmul fast float %1011, %1035
  %1038 = fmul fast float %1014, %1036
  %1039 = fmul fast float %1029, %1037
  %1040 = call float @dx.op.tertiary.f32(i32 46, float %1030, float %1038, float %1039)  ; FMad(a,b,c)
  %1041 = fmul fast float %1028, %1037
  %1042 = call float @dx.op.tertiary.f32(i32 46, float %1029, float %1038, float %1041)  ; FMad(a,b,c)
  %1043 = fadd fast float %1020, %1040
  %1044 = fadd fast float %1023, %1042
  %1045 = icmp ugt i32 %994, 1
  %1046 = icmp ugt i32 %992, 33554431
  %1047 = or i1 %1046, %1045
  br i1 %1047, label %1048, label %1073

; <label>:1048                                    ; preds = %975
  %1049 = add i32 %37, 244
  %1050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1049, i32 undef)  ; BufferLoad(srv,index,wot)
  %1051 = extractvalue %dx.types.ResRet.i32 %1050, 0
  %1052 = lshr i32 %1051, 16
  %1053 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1052)  ; LegacyF16ToF32(value)
  %1054 = fmul fast float %1016, %1053
  %1055 = call float @dx.op.unary.f32(i32 22, float %1054)  ; Frc(value)
  %1056 = mul nuw nsw i32 %994, %995
  %1057 = uitofp i32 %1056 to float
  %1058 = fmul fast float %1055, %1057
  %1059 = call float @dx.op.unary.f32(i32 27, float %1058)  ; Round_ni(value)
  %1060 = fptoui float %1059 to i32
  %1061 = urem i32 %1060, %994
  %1062 = udiv i32 %1060, %995
  %1063 = call float @dx.op.unary.f32(i32 22, float %1043)  ; Frc(value)
  %1064 = call float @dx.op.unary.f32(i32 22, float %1044)  ; Frc(value)
  %1065 = uitofp i32 %1061 to float
  %1066 = uitofp i32 %1062 to float
  %1067 = fadd fast float %1063, %1065
  %1068 = fadd fast float %1064, %1066
  %1069 = uitofp i32 %994 to float
  %1070 = uitofp i32 %995 to float
  %1071 = fdiv fast float %1067, %1069
  %1072 = fdiv fast float %1068, %1070
  br label %1073

; <label>:1073                                    ; preds = %1048, %975
  %1074 = phi float [ %1071, %1048 ], [ %1043, %975 ]
  %1075 = phi float [ %1072, %1048 ], [ %1044, %975 ]
  %1076 = and i32 %969, 16777216
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1187, label %1078

; <label>:1078                                    ; preds = %1073
  %1079 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1080 = extractvalue %dx.types.CBufRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.CBufRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.CBufRet.f32 %1079, 2
  %1083 = fadd fast float %1080, %123
  %1084 = fadd fast float %1081, %124
  %1085 = fadd fast float %1082, %125
  %1086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1087 = extractvalue %dx.types.CBufRet.f32 %1086, 0
  %1088 = call float @dx.op.unary.f32(i32 7, float %1087)  ; Saturate(value)
  %1089 = icmp eq i32 %38, 65535
  br i1 %1089, label %1184, label %1090

; <label>:1090                                    ; preds = %1078
  %1091 = lshr i32 %38, 1
  %1092 = shl i32 %1091, 2
  %1093 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.i32 %1093, 0
  %1095 = and i32 %38, 1
  %1096 = icmp ne i32 %1095, 0
  %1097 = lshr i32 %1094, 16
  %1098 = and i32 %1094, 65535
  %1099 = select i1 %1096, i32 %1097, i32 %1098
  %1100 = icmp eq i32 %1099, 65535
  br i1 %1100, label %1180, label %1101

; <label>:1101                                    ; preds = %1090
  %1102 = mul nuw nsw i32 %1099, 40
  %1103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1102, i32 undef)  ; BufferLoad(srv,index,wot)
  %1104 = extractvalue %dx.types.ResRet.f32 %1103, 0
  %1105 = extractvalue %dx.types.ResRet.f32 %1103, 1
  %1106 = extractvalue %dx.types.ResRet.f32 %1103, 2
  %1107 = add nuw nsw i32 %1102, 12
  %1108 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.f32 %1108, 0
  %1110 = extractvalue %dx.types.ResRet.f32 %1108, 1
  %1111 = extractvalue %dx.types.ResRet.f32 %1108, 2
  %1112 = add nuw nsw i32 %1102, 24
  %1113 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1112, i32 undef)  ; BufferLoad(srv,index,wot)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.ResRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %1113, 2
  %1117 = add nuw nsw i32 %1102, 36
  %1118 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1117, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = fsub fast float %1083, %1104
  %1121 = fsub fast float %1084, %1105
  %1122 = fsub fast float %1085, %1106
  %1123 = fmul fast float %1119, %1120
  %1124 = fmul fast float %1119, %1121
  %1125 = fmul fast float %1119, %1122
  %1126 = call float @dx.op.unary.f32(i32 27, float %1123)  ; Round_ni(value)
  %1127 = call float @dx.op.unary.f32(i32 27, float %1124)  ; Round_ni(value)
  %1128 = call float @dx.op.unary.f32(i32 27, float %1125)  ; Round_ni(value)
  %1129 = fadd fast float %1126, 5.000000e-01
  %1130 = fadd fast float %1127, 5.000000e-01
  %1131 = fadd fast float %1128, 5.000000e-01
  %1132 = fmul fast float %1129, %1109
  %1133 = fmul fast float %1130, %1110
  %1134 = fmul fast float %1131, %1111
  %1135 = shl i32 %38, 2
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = add i32 %1137, 0
  %1139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1140 = call float @dx.op.unary.f32(i32 22, float %1132)  ; Frc(value)
  %1141 = call float @dx.op.unary.f32(i32 22, float %1133)  ; Frc(value)
  %1142 = call float @dx.op.unary.f32(i32 22, float %1134)  ; Frc(value)
  %1143 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1139, %dx.types.Handle %32, float %1140, float %1141, float %1142, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = extractvalue %dx.types.ResRet.f32 %1143, 1
  %1146 = extractvalue %dx.types.ResRet.f32 %1143, 2
  %1147 = fmul fast float %1144, 1.023000e+03
  %1148 = fmul fast float %1145, 1.023000e+03
  %1149 = fmul fast float %1146, 1.023000e+03
  %1150 = fadd fast float %1147, 5.000000e-01
  %1151 = fadd fast float %1148, 5.000000e-01
  %1152 = fadd fast float %1149, 5.000000e-01
  %1153 = call float @dx.op.unary.f32(i32 27, float %1150)  ; Round_ni(value)
  %1154 = call float @dx.op.unary.f32(i32 27, float %1151)  ; Round_ni(value)
  %1155 = call float @dx.op.unary.f32(i32 27, float %1152)  ; Round_ni(value)
  %1156 = fsub fast float %1123, %1126
  %1157 = fsub fast float %1124, %1127
  %1158 = fsub fast float %1125, %1128
  %1159 = fmul fast float %1156, 7.500000e-01
  %1160 = fmul fast float %1157, 7.500000e-01
  %1161 = fmul fast float %1158, 7.500000e-01
  %1162 = fadd fast float %1126, 1.250000e-01
  %1163 = fadd fast float %1162, %1159
  %1164 = fadd fast float %1163, %1153
  %1165 = fadd fast float %1127, 1.250000e-01
  %1166 = fadd fast float %1165, %1160
  %1167 = fadd fast float %1166, %1154
  %1168 = fadd fast float %1128, 1.250000e-01
  %1169 = fadd fast float %1168, %1161
  %1170 = fadd fast float %1169, %1155
  %1171 = fmul fast float %1164, %1114
  %1172 = fmul fast float %1167, %1115
  %1173 = fmul fast float %1170, %1116
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = add i32 %1175, 0
  %1177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1178 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1177, %dx.types.Handle %30, float %1171, float %1172, float %1173, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  br label %1180

; <label>:1180                                    ; preds = %1101, %1090
  %1181 = phi float [ %1179, %1101 ], [ -1.000000e+00, %1090 ]
  %1182 = fadd fast float %1181, %1088
  %1183 = call float @dx.op.unary.f32(i32 7, float %1182)  ; Saturate(value)
  br label %1184

; <label>:1184                                    ; preds = %1180, %1078
  %1185 = phi float [ %1183, %1180 ], [ %1088, %1078 ]
  %1186 = fmul fast float %1185, %424
  br label %1187

; <label>:1187                                    ; preds = %1184, %1073
  %1188 = phi float [ %1186, %1184 ], [ %424, %1073 ]
  %1189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1190 = extractvalue %dx.types.ResRet.i32 %1189, 0
  %1191 = and i32 %1190, 256
  %1192 = icmp eq i32 %1191, 0
  br i1 %1192, label %1239, label %1193

; <label>:1193                                    ; preds = %1187
  %1194 = add i32 %37, 476
  %1195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1194, i32 undef)  ; BufferLoad(srv,index,wot)
  %1196 = extractvalue %dx.types.ResRet.i32 %1195, 0
  %1197 = add i32 %1196, 0
  %1198 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1197, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1199 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1198, %dx.types.Handle %61, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1200 = extractvalue %dx.types.ResRet.f32 %1199, 0
  %1201 = add i32 %37, 116
  %1202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1201, i32 undef)  ; BufferLoad(srv,index,wot)
  %1203 = extractvalue %dx.types.ResRet.i32 %1202, 0
  %1204 = shl i32 %1203, 4
  %1205 = and i32 %1204, 32752
  %1206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1205)  ; LegacyF16ToF32(value)
  %1207 = lshr i32 %1203, 7
  %1208 = and i32 %1207, 32752
  %1209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1208)  ; LegacyF16ToF32(value)
  %1210 = fsub fast float 1.000000e+00, %1188
  %1211 = call float @dx.op.binary.f32(i32 35, float %1210, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1212 = bitcast float %1188 to i32
  %1213 = sitofp i32 %1212 to float
  %1214 = fadd fast float %1213, 0xC1CFBF8940000000
  %1215 = fmul fast float %1209, %1214
  %1216 = fadd fast float %1215, 0x41CFBF8940000000
  %1217 = fptosi float %1216 to i32
  %1218 = bitcast i32 %1217 to float
  %1219 = bitcast float %1211 to i32
  %1220 = sitofp i32 %1219 to float
  %1221 = fadd fast float %1220, 0xC1CFBF8940000000
  %1222 = fmul fast float %1221, %1209
  %1223 = fadd fast float %1222, 0x41CFBF8940000000
  %1224 = fptosi float %1223 to i32
  %1225 = bitcast i32 %1224 to float
  %1226 = fmul fast float %1218, %1206
  %1227 = fmul fast float %1225, %1206
  %1228 = fsub fast float %1211, %1226
  %1229 = fadd fast float %1227, %1211
  %1230 = call float @dx.op.unary.f32(i32 7, float %1228)  ; Saturate(value)
  %1231 = call float @dx.op.unary.f32(i32 7, float %1229)  ; Saturate(value)
  %1232 = fsub fast float %1200, %1230
  %1233 = fsub fast float %1231, %1230
  %1234 = bitcast float %1233 to i32
  %1235 = sub nsw i32 2129859010, %1234
  %1236 = bitcast i32 %1235 to float
  %1237 = fmul fast float %1236, %1232
  %1238 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  br label %1239

; <label>:1239                                    ; preds = %1193, %1187
  %1240 = phi float [ %1238, %1193 ], [ %1188, %1187 ]
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = and i32 %1242, 128
  %1244 = icmp eq i32 %1243, 0
  br i1 %1244, label %1261, label %1245

; <label>:1245                                    ; preds = %1239
  %1246 = add i32 %37, 460
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1246, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = add i32 %1248, 0
  %1250 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1249, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1251 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1250, %dx.types.Handle %61, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1252 = extractvalue %dx.types.ResRet.f32 %1251, 0
  %1253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1254 = extractvalue %dx.types.ResRet.i32 %1253, 0
  %1255 = and i32 %1254, 524288
  %1256 = icmp ne i32 %1255, 0
  %1257 = fcmp fast ogt float %1252, 0x3FE0101020000000
  %1258 = select i1 %1257, float 1.000000e+00, float 0.000000e+00
  %1259 = select i1 %1256, float %1258, float %1252
  %1260 = fmul fast float %1259, %1240
  br label %1261

; <label>:1261                                    ; preds = %1245, %1239
  %1262 = phi float [ %1260, %1245 ], [ %1240, %1239 ]
  %1263 = fcmp fast ult float %1262, 0x3F70101020000000
  br i1 %1263, label %1893, label %1264

; <label>:1264                                    ; preds = %1261
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = and i32 %1266, 16
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1467, label %1269

; <label>:1269                                    ; preds = %1264
  %1270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %1271 = extractvalue %dx.types.ResRet.i32 %1270, 0
  %1272 = add i32 %37, 412
  %1273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1272, i32 undef)  ; BufferLoad(srv,index,wot)
  %1274 = extractvalue %dx.types.ResRet.i32 %1273, 0
  %1275 = add i32 %1274, 0
  %1276 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1275, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1277 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1276, %dx.types.Handle %60, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1278 = extractvalue %dx.types.ResRet.f32 %1277, 0
  %1279 = extractvalue %dx.types.ResRet.f32 %1277, 1
  %1280 = extractvalue %dx.types.ResRet.f32 %1277, 2
  %1281 = extractvalue %dx.types.ResRet.f32 %1277, 3
  %1282 = and i32 %1271, 255
  %1283 = uitofp i32 %1282 to float
  %1284 = lshr i32 %1271, 8
  %1285 = and i32 %1284, 255
  %1286 = uitofp i32 %1285 to float
  %1287 = fmul fast float %1281, %1283
  %1288 = fadd fast float %1287, %1286
  %1289 = fmul fast float %1288, 0x3F70101000000000
  %1290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1291 = extractvalue %dx.types.ResRet.i32 %1290, 0
  %1292 = and i32 %1291, 512
  %1293 = icmp eq i32 %1292, 0
  br i1 %1293, label %1302, label %1294

; <label>:1294                                    ; preds = %1269
  %1295 = add i32 %37, 492
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1295, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = add i32 %1297, 0
  %1299 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1298, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1300 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1299, %dx.types.Handle %61, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1301 = extractvalue %dx.types.ResRet.f32 %1300, 0
  br label %1302

; <label>:1302                                    ; preds = %1294, %1269
  %1303 = phi float [ %1301, %1294 ], [ 1.000000e+00, %1269 ]
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = and i32 %1305, 33554432
  %1307 = icmp eq i32 %1306, 0
  br i1 %1307, label %1414, label %1308

; <label>:1308                                    ; preds = %1302
  %1309 = add i32 %37, 240
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = and i32 %1311, 65535
  %1313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1312)  ; LegacyF16ToF32(value)
  %1314 = lshr i32 %1311, 16
  %1315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1314)  ; LegacyF16ToF32(value)
  %1316 = add i32 %37, 244
  %1317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1316, i32 undef)  ; BufferLoad(srv,index,wot)
  %1318 = extractvalue %dx.types.ResRet.i32 %1317, 0
  %1319 = and i32 %1318, 65535
  %1320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1319)  ; LegacyF16ToF32(value)
  %1321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %1322 = extractvalue %dx.types.ResRet.i32 %1321, 0
  %1323 = lshr i32 %1322, 24
  %1324 = uitofp i32 %1323 to float
  %1325 = fmul fast float %1324, 0x3F70101020000000
  %1326 = and i32 %1322, 255
  %1327 = uitofp i32 %1326 to float
  %1328 = fmul fast float %1327, 0x3F70101020000000
  %1329 = lshr i32 %1322, 8
  %1330 = and i32 %1329, 255
  %1331 = uitofp i32 %1330 to float
  %1332 = fmul fast float %1331, 0x3F70101020000000
  %1333 = lshr i32 %1322, 16
  %1334 = and i32 %1333, 255
  %1335 = uitofp i32 %1334 to float
  %1336 = fmul fast float %1335, 0x3F70101020000000
  %1337 = add i32 %37, 236
  %1338 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1337, i32 undef)  ; BufferLoad(srv,index,wot)
  %1339 = extractvalue %dx.types.ResRet.i32 %1338, 0
  %1340 = lshr i32 %1339, 24
  %1341 = uitofp i32 %1340 to float
  %1342 = fmul fast float %1341, 0x3F70101020000000
  %1343 = and i32 %1339, 255
  %1344 = uitofp i32 %1343 to float
  %1345 = fmul fast float %1344, 0x3F70101020000000
  %1346 = lshr i32 %1339, 8
  %1347 = and i32 %1346, 255
  %1348 = uitofp i32 %1347 to float
  %1349 = fmul fast float %1348, 0x3F70101020000000
  %1350 = lshr i32 %1339, 16
  %1351 = and i32 %1350, 255
  %1352 = uitofp i32 %1351 to float
  %1353 = fmul fast float %1352, 0x3F70101020000000
  %1354 = bitcast float %1278 to i32
  %1355 = ashr i32 %1354, 1
  %1356 = sub nsw i32 1597463174, %1355
  %1357 = bitcast i32 %1356 to float
  %1358 = fmul fast float %1278, 5.000000e-01
  %1359 = fmul fast float %1357, %1357
  %1360 = fmul fast float %1359, %1358
  %1361 = fsub fast float 1.500000e+00, %1360
  %1362 = fmul fast float %1357, %1278
  %1363 = fmul fast float %1362, %1361
  %1364 = bitcast float %1279 to i32
  %1365 = ashr i32 %1364, 1
  %1366 = sub nsw i32 1597463174, %1365
  %1367 = bitcast i32 %1366 to float
  %1368 = fmul fast float %1279, 5.000000e-01
  %1369 = fmul fast float %1367, %1367
  %1370 = fmul fast float %1369, %1368
  %1371 = fsub fast float 1.500000e+00, %1370
  %1372 = fmul fast float %1367, %1279
  %1373 = fmul fast float %1372, %1371
  %1374 = bitcast float %1280 to i32
  %1375 = ashr i32 %1374, 1
  %1376 = sub nsw i32 1597463174, %1375
  %1377 = bitcast i32 %1376 to float
  %1378 = fmul fast float %1280, 5.000000e-01
  %1379 = fmul fast float %1377, %1377
  %1380 = fmul fast float %1379, %1378
  %1381 = fsub fast float 1.500000e+00, %1380
  %1382 = fmul fast float %1377, %1280
  %1383 = fmul fast float %1382, %1381
  %1384 = fsub fast float %1363, %1345
  %1385 = fsub fast float %1373, %1349
  %1386 = fsub fast float %1383, %1353
  %1387 = fmul fast float %1384, %1313
  %1388 = fmul fast float %1385, %1315
  %1389 = fmul fast float %1386, %1320
  %1390 = fadd fast float %1387, %1328
  %1391 = fadd fast float %1388, %1332
  %1392 = fadd fast float %1389, %1336
  %1393 = call float @dx.op.unary.f32(i32 7, float %1390)  ; Saturate(value)
  %1394 = call float @dx.op.unary.f32(i32 7, float %1391)  ; Saturate(value)
  %1395 = call float @dx.op.unary.f32(i32 7, float %1392)  ; Saturate(value)
  %1396 = fmul fast float %1393, %1393
  %1397 = fmul fast float %1394, %1394
  %1398 = fmul fast float %1395, %1395
  %1399 = fsub fast float %1396, %1278
  %1400 = fsub fast float %1397, %1279
  %1401 = fsub fast float %1398, %1280
  %1402 = fmul fast float %1399, %1303
  %1403 = fmul fast float %1400, %1303
  %1404 = fmul fast float %1401, %1303
  %1405 = fadd fast float %1402, %1278
  %1406 = fadd fast float %1403, %1279
  %1407 = fadd fast float %1404, %1280
  %1408 = fadd fast float %1325, %1289
  %1409 = fsub fast float %1408, %1342
  %1410 = call float @dx.op.unary.f32(i32 7, float %1409)  ; Saturate(value)
  %1411 = fsub fast float %1410, %1289
  %1412 = fmul fast float %1411, %1303
  %1413 = fadd fast float %1412, %1289
  br label %1467

; <label>:1414                                    ; preds = %1302
  %1415 = and i32 %1305, 134217728
  %1416 = icmp eq i32 %1415, 0
  br i1 %1416, label %1451, label %1417

; <label>:1417                                    ; preds = %1414
  %1418 = call float @dx.op.unary.f32(i32 24, float %259)  ; Sqrt(value)
  %1419 = call float @dx.op.unary.f32(i32 24, float %263)  ; Sqrt(value)
  %1420 = call float @dx.op.unary.f32(i32 24, float %267)  ; Sqrt(value)
  %1421 = fadd fast float %1418, -5.000000e-01
  %1422 = fadd fast float %1419, -5.000000e-01
  %1423 = fadd fast float %1420, -5.000000e-01
  %1424 = fmul fast float %1421, %1303
  %1425 = fmul fast float %1422, %1303
  %1426 = fmul fast float %1423, %1303
  %1427 = fadd fast float %1424, 5.000000e-01
  %1428 = fadd fast float %1425, 5.000000e-01
  %1429 = fadd fast float %1426, 5.000000e-01
  %1430 = call float @dx.op.unary.f32(i32 24, float %1278)  ; Sqrt(value)
  %1431 = call float @dx.op.unary.f32(i32 24, float %1279)  ; Sqrt(value)
  %1432 = call float @dx.op.unary.f32(i32 24, float %1280)  ; Sqrt(value)
  %1433 = fmul fast float %1427, 2.000000e+00
  %1434 = fsub fast float 1.000000e+00, %1433
  %1435 = fmul fast float %1434, %1430
  %1436 = fadd fast float %1435, %1433
  %1437 = fmul fast float %1436, %1430
  %1438 = fmul fast float %1428, 2.000000e+00
  %1439 = fsub fast float 1.000000e+00, %1438
  %1440 = fmul fast float %1439, %1431
  %1441 = fadd fast float %1440, %1438
  %1442 = fmul fast float %1441, %1431
  %1443 = fmul fast float %1429, 2.000000e+00
  %1444 = fsub fast float 1.000000e+00, %1443
  %1445 = fmul fast float %1444, %1432
  %1446 = fadd fast float %1445, %1443
  %1447 = fmul fast float %1446, %1432
  %1448 = fmul fast float %1437, %1437
  %1449 = fmul fast float %1442, %1442
  %1450 = fmul fast float %1447, %1447
  br label %1467

; <label>:1451                                    ; preds = %1414
  %1452 = fmul fast float %259, %259
  %1453 = fmul fast float %263, %263
  %1454 = fmul fast float %267, %267
  %1455 = fadd fast float %1452, -1.000000e+00
  %1456 = fadd fast float %1453, -1.000000e+00
  %1457 = fadd fast float %1454, -1.000000e+00
  %1458 = fmul fast float %1303, %1455
  %1459 = fmul fast float %1303, %1456
  %1460 = fmul fast float %1303, %1457
  %1461 = fadd fast float %1458, 1.000000e+00
  %1462 = fadd fast float %1459, 1.000000e+00
  %1463 = fadd fast float %1460, 1.000000e+00
  %1464 = fmul fast float %1461, %1278
  %1465 = fmul fast float %1462, %1279
  %1466 = fmul fast float %1463, %1280
  br label %1467

; <label>:1467                                    ; preds = %1451, %1417, %1308, %1264
  %1468 = phi float [ %1413, %1308 ], [ %1289, %1417 ], [ %1289, %1451 ], [ 0x3FA23C0BE0000000, %1264 ]
  %1469 = phi float [ %1405, %1308 ], [ %1448, %1417 ], [ %1464, %1451 ], [ 1.000000e+00, %1264 ]
  %1470 = phi float [ %1406, %1308 ], [ %1449, %1417 ], [ %1465, %1451 ], [ 1.000000e+00, %1264 ]
  %1471 = phi float [ %1407, %1308 ], [ %1450, %1417 ], [ %1466, %1451 ], [ 1.000000e+00, %1264 ]
  %1472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1473 = extractvalue %dx.types.CBufRet.i32 %1472, 1
  %1474 = and i32 %1473, 1
  %1475 = icmp ne i32 %1474, 0
  %1476 = add i32 %37, 356
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1476, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 32
  %1480 = icmp ne i32 %1479, 0
  %1481 = and i1 %1475, %1480
  %1482 = select i1 %1481, float 1.000000e+00, float %1469
  %1483 = select i1 %1481, float 0x3FD3333340000000, float %1470
  %1484 = select i1 %1481, float 0x3FD3333340000000, float %1471
  %1485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1486 = extractvalue %dx.types.ResRet.i32 %1485, 0
  %1487 = and i32 %1486, 32
  %1488 = icmp eq i32 %1487, 0
  br i1 %1488, label %1561, label %1489

; <label>:1489                                    ; preds = %1467
  %1490 = add i32 %37, 108
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1490, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = add i32 %37, 428
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1493, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = add i32 %1495, 0
  %1497 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1496, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1498 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1497, %dx.types.Handle %60, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1499 = extractvalue %dx.types.ResRet.f32 %1498, 0
  %1500 = extractvalue %dx.types.ResRet.f32 %1498, 1
  %1501 = extractvalue %dx.types.ResRet.f32 %1498, 2
  %1502 = extractvalue %dx.types.ResRet.f32 %1498, 3
  %1503 = and i32 %1492, 255
  %1504 = uitofp i32 %1503 to float
  %1505 = lshr i32 %1492, 8
  %1506 = and i32 %1505, 255
  %1507 = uitofp i32 %1506 to float
  %1508 = lshr i32 %1492, 16
  %1509 = and i32 %1508, 255
  %1510 = uitofp i32 %1509 to float
  %1511 = fmul fast float %1510, 0x3F70101000000000
  %1512 = fmul fast float %1499, %1504
  %1513 = fadd fast float %1512, %1507
  %1514 = fmul fast float %1513, 0x3F70101000000000
  %1515 = fadd fast float %1500, -5.000000e-01
  %1516 = fadd fast float %1502, -5.000000e-01
  %1517 = fmul fast float %1515, %1511
  %1518 = fmul fast float %1516, %1511
  %1519 = fadd fast float %1517, 5.000000e-01
  %1520 = fadd fast float %1518, 5.000000e-01
  %1521 = fmul fast float %1519, 2.000000e+00
  %1522 = fadd fast float %1521, -1.000000e+00
  %1523 = fmul fast float %1520, 2.000000e+00
  %1524 = fadd fast float %1523, -1.000000e+00
  %1525 = fadd fast float %1522, %1524
  %1526 = fmul fast float %1525, 5.000000e-01
  %1527 = fsub fast float %1522, %1524
  %1528 = fmul fast float %1527, 5.000000e-01
  %1529 = call float @dx.op.unary.f32(i32 6, float %1526)  ; FAbs(value)
  %1530 = fsub fast float 1.000000e+00, %1529
  %1531 = call float @dx.op.unary.f32(i32 6, float %1528)  ; FAbs(value)
  %1532 = fsub fast float %1530, %1531
  %1533 = call float @dx.op.dot3.f32(i32 55, float %1526, float %1528, float %1532, float %1526, float %1528, float %1532)  ; Dot3(ax,ay,az,bx,by,bz)
  %1534 = call float @dx.op.unary.f32(i32 25, float %1533)  ; Rsqrt(value)
  %1535 = fmul fast float %1526, %1534
  %1536 = fmul fast float %1528, %1534
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = and i32 %1538, 67108864
  %1540 = icmp eq i32 %1539, 0
  br i1 %1540, label %1557, label %1541

; <label>:1541                                    ; preds = %1489
  %1542 = add i32 %37, 296
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1542, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 65535
  %1546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1545)  ; LegacyF16ToF32(value)
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %984, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = and i32 %1548, 65535
  %1550 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1549)  ; LegacyF16ToF32(value)
  %1551 = lshr i32 %1544, 16
  %1552 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1551)  ; LegacyF16ToF32(value)
  %1553 = fsub fast float %1514, %1552
  %1554 = fmul fast float %1553, %1546
  %1555 = fadd fast float %1554, %1550
  %1556 = call float @dx.op.unary.f32(i32 7, float %1555)  ; Saturate(value)
  br label %1557

; <label>:1557                                    ; preds = %1541, %1489
  %1558 = phi float [ %1556, %1541 ], [ %1514, %1489 ]
  %1559 = call float @dx.op.dot2.f32(i32 54, float %1535, float %1536, float %978, float %979)  ; Dot2(ax,ay,bx,by)
  %1560 = call float @dx.op.dot2.f32(i32 54, float %1535, float %1536, float %980, float %981)  ; Dot2(ax,ay,bx,by)
  br label %1561

; <label>:1561                                    ; preds = %1557, %1467
  %1562 = phi float [ %1558, %1557 ], [ 0x3FD6666660000000, %1467 ]
  %1563 = phi float [ %1559, %1557 ], [ 0.000000e+00, %1467 ]
  %1564 = phi float [ %1560, %1557 ], [ 0.000000e+00, %1467 ]
  %1565 = phi float [ %1501, %1557 ], [ 1.000000e+00, %1467 ]
  %1566 = add i32 %37, 176
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = lshr i32 %1568, 22
  %1570 = shl nuw nsw i32 %1569, 5
  %1571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1570)  ; LegacyF16ToF32(value)
  %1572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1573 = extractvalue %dx.types.ResRet.i32 %1572, 0
  %1574 = and i32 %1573, 64
  %1575 = icmp eq i32 %1574, 0
  br i1 %1575, label %1609, label %1576

; <label>:1576                                    ; preds = %1561
  %1577 = add i32 %37, 444
  %1578 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1577, i32 undef)  ; BufferLoad(srv,index,wot)
  %1579 = extractvalue %dx.types.ResRet.i32 %1578, 0
  %1580 = add i32 %1579, 0
  %1581 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1580, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1583 = extractvalue %dx.types.ResRet.i32 %1582, 0
  %1584 = and i32 %1583, 131072
  %1585 = icmp eq i32 %1584, 0
  %1586 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1581, %dx.types.Handle %60, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1587 = extractvalue %dx.types.ResRet.f32 %1586, 0
  %1588 = extractvalue %dx.types.ResRet.f32 %1586, 1
  %1589 = extractvalue %dx.types.ResRet.f32 %1586, 2
  %1590 = fmul fast float %1587, %247
  %1591 = fmul fast float %1588, %250
  %1592 = fmul fast float %1589, %253
  br i1 %1585, label %1599, label %1593

; <label>:1593                                    ; preds = %1576
  %1594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1595 = extractvalue %dx.types.CBufRet.f32 %1594, 0
  %1596 = fmul fast float %1595, %1590
  %1597 = fmul fast float %1595, %1591
  %1598 = fmul fast float %1595, %1592
  br label %1599

; <label>:1599                                    ; preds = %1593, %1576
  %1600 = phi float [ %1596, %1593 ], [ %1590, %1576 ]
  %1601 = phi float [ %1597, %1593 ], [ %1591, %1576 ]
  %1602 = phi float [ %1598, %1593 ], [ %1592, %1576 ]
  %1603 = fmul fast float %1600, %1571
  %1604 = select i1 %199, float %1603, float %1600
  %1605 = call float @dx.op.dot3.f32(i32 55, float %1604, float %1601, float %1602, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1606 = select i1 %199, float 0.000000e+00, float %1600
  %1607 = select i1 %199, float %1605, float %1601
  %1608 = select i1 %199, float 0.000000e+00, float %1602
  br label %1609

; <label>:1609                                    ; preds = %1599, %1561
  %1610 = phi float [ %1606, %1599 ], [ 0.000000e+00, %1561 ]
  %1611 = phi float [ %1607, %1599 ], [ 0.000000e+00, %1561 ]
  %1612 = phi float [ %1608, %1599 ], [ 0.000000e+00, %1561 ]
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = and i32 %1614, 10240
  %1616 = icmp eq i32 %1615, 0
  br i1 %1616, label %1661, label %1617

; <label>:1617                                    ; preds = %1609
  %1618 = add i32 %37, 508
  %1619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1618, i32 undef)  ; BufferLoad(srv,index,wot)
  %1620 = extractvalue %dx.types.ResRet.i32 %1619, 0
  %1621 = add i32 %1620, 0
  %1622 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1621, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1623 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1622, %dx.types.Handle %61, float %1074, float %1075, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1624 = extractvalue %dx.types.ResRet.f32 %1623, 1
  %1625 = extractvalue %dx.types.ResRet.f32 %1623, 3
  %1626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1627 = extractvalue %dx.types.ResRet.i32 %1626, 0
  %1628 = and i32 %1627, 1048576
  %1629 = icmp ne i32 %1628, 0
  %1630 = and i32 %1627, 8192
  %1631 = icmp eq i32 %1630, 0
  br i1 %1631, label %1647, label %1632

; <label>:1632                                    ; preds = %1617
  %1633 = extractvalue %dx.types.ResRet.f32 %1623, 2
  %1634 = select i1 %1629, float %1633, float %1624
  %1635 = extractvalue %dx.types.ResRet.f32 %1623, 0
  %1636 = select i1 %1629, float %1635, float %1624
  %1637 = add i32 %37, 112
  %1638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1637, i32 undef)  ; BufferLoad(srv,index,wot)
  %1639 = extractvalue %dx.types.ResRet.i32 %1638, 0
  %1640 = lshr i32 %1639, 16
  %1641 = and i32 %1640, 255
  %1642 = uitofp i32 %1641 to float
  %1643 = fmul fast float %1642, 0x3F80101020000000
  %1644 = fmul fast float %1643, %1636
  %1645 = fmul fast float %1643, %1624
  %1646 = fmul fast float %1643, %1634
  br label %1647

; <label>:1647                                    ; preds = %1632, %1617
  %1648 = phi float [ %1644, %1632 ], [ 0.000000e+00, %1617 ]
  %1649 = phi float [ %1645, %1632 ], [ 0.000000e+00, %1617 ]
  %1650 = phi float [ %1646, %1632 ], [ 0.000000e+00, %1617 ]
  %1651 = and i32 %1627, 2048
  %1652 = icmp eq i32 %1651, 0
  br i1 %1652, label %1661, label %1653

; <label>:1653                                    ; preds = %1647
  %1654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1655 = extractvalue %dx.types.ResRet.i32 %1654, 0
  %1656 = shl i32 %1655, 4
  %1657 = and i32 %1656, 32752
  %1658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1657)  ; LegacyF16ToF32(value)
  %1659 = fmul fast float %1658, %1625
  %1660 = call float @dx.op.binary.f32(i32 35, float %1659, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1661

; <label>:1661                                    ; preds = %1653, %1647, %1609
  %1662 = phi float [ %1648, %1653 ], [ %1648, %1647 ], [ 0.000000e+00, %1609 ]
  %1663 = phi float [ %1649, %1653 ], [ %1649, %1647 ], [ 0.000000e+00, %1609 ]
  %1664 = phi float [ %1650, %1653 ], [ %1650, %1647 ], [ 0.000000e+00, %1609 ]
  %1665 = phi float [ %1660, %1653 ], [ 0x3F70101020000000, %1647 ], [ 0x3F70101020000000, %1609 ]
  %1666 = add i32 %37, 112
  %1667 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1666, i32 undef)  ; BufferLoad(srv,index,wot)
  %1668 = extractvalue %dx.types.ResRet.i32 %1667, 0
  %1669 = and i32 %1668, 255
  %1670 = uitofp i32 %1669 to float
  %1671 = lshr i32 %1668, 8
  %1672 = and i32 %1671, 255
  %1673 = uitofp i32 %1672 to float
  %1674 = call float @dx.op.dot3.f32(i32 55, float %1482, float %1483, float %1484, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1675 = fmul fast float %1673, %1674
  %1676 = fadd fast float %1675, %1670
  %1677 = fmul fast float %1676, 0x3F70101020000000
  %1678 = call float @dx.op.unary.f32(i32 7, float %1677)  ; Saturate(value)
  br i1 %966, label %1679, label %1687

; <label>:1679                                    ; preds = %1661
  %1680 = fsub fast float 1.000000e+00, %1262
  %1681 = fmul fast float %1680, %950
  %1682 = fmul fast float %1680, %951
  %1683 = fmul fast float %1680, %952
  %1684 = fmul fast float %1680, %956
  %1685 = fmul fast float %1680, %957
  %1686 = fmul fast float %1680, %958
  br label %1687

; <label>:1687                                    ; preds = %1679, %1661
  %1688 = phi float [ %1681, %1679 ], [ %950, %1661 ]
  %1689 = phi float [ %1682, %1679 ], [ %951, %1661 ]
  %1690 = phi float [ %1683, %1679 ], [ %952, %1661 ]
  %1691 = phi float [ %1684, %1679 ], [ %956, %1661 ]
  %1692 = phi float [ %1685, %1679 ], [ %957, %1661 ]
  %1693 = phi float [ %1686, %1679 ], [ %958, %1661 ]
  %1694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1695 = extractvalue %dx.types.ResRet.i32 %1694, 0
  %1696 = and i32 %1695, 3
  %1697 = icmp eq i32 %1696, 3
  br i1 %1697, label %1776, label %1698

; <label>:1698                                    ; preds = %1687
  %1699 = and i32 %1695, 16
  %1700 = icmp ne i32 %1699, 0
  %1701 = select i1 %1700, float %1262, float 0.000000e+00
  %1702 = icmp eq i32 %1696, 0
  br i1 %1702, label %1703, label %1731

; <label>:1703                                    ; preds = %1698
  %1704 = and i32 %1695, 64
  %1705 = icmp ne i32 %1704, 0
  %1706 = select i1 %1705, float %1262, float 0.000000e+00
  %1707 = fsub fast float %1482, %1688
  %1708 = fsub fast float %1483, %1689
  %1709 = fsub fast float %1484, %1690
  %1710 = fmul fast float %1701, %1707
  %1711 = fmul fast float %1701, %1708
  %1712 = fmul fast float %1701, %1709
  %1713 = fadd fast float %1710, %1688
  %1714 = fadd fast float %1711, %1689
  %1715 = fadd fast float %1712, %1690
  %1716 = fsub fast float %1468, %959
  %1717 = fmul fast float %1701, %1716
  %1718 = fadd fast float %1717, %959
  %1719 = fsub fast float %1610, %1691
  %1720 = fsub fast float %1611, %1692
  %1721 = fsub fast float %1612, %1693
  %1722 = fmul fast float %1706, %1719
  %1723 = fmul fast float %1706, %1720
  %1724 = fmul fast float %1706, %1721
  %1725 = fadd fast float %1722, %1691
  %1726 = fadd fast float %1723, %1692
  %1727 = fadd fast float %1724, %1693
  %1728 = fsub fast float %1678, %964
  %1729 = fmul fast float %1701, %1728
  %1730 = fadd fast float %1729, %964
  br label %1776

; <label>:1731                                    ; preds = %1698
  %1732 = icmp eq i32 %1696, 1
  br i1 %1732, label %1733, label %1746

; <label>:1733                                    ; preds = %1731
  %1734 = fadd fast float %1482, -1.000000e+00
  %1735 = fadd fast float %1483, -1.000000e+00
  %1736 = fadd fast float %1484, -1.000000e+00
  %1737 = fmul fast float %1701, %1734
  %1738 = fmul fast float %1701, %1735
  %1739 = fmul fast float %1701, %1736
  %1740 = fadd fast float %1737, 1.000000e+00
  %1741 = fadd fast float %1738, 1.000000e+00
  %1742 = fadd fast float %1739, 1.000000e+00
  %1743 = fmul fast float %1740, %1688
  %1744 = fmul fast float %1741, %1689
  %1745 = fmul fast float %1742, %1690
  br label %1776

; <label>:1746                                    ; preds = %1731
  %1747 = icmp eq i32 %1696, 2
  br i1 %1747, label %1748, label %1776

; <label>:1748                                    ; preds = %1746
  %1749 = call float @dx.op.unary.f32(i32 24, float %1482)  ; Sqrt(value)
  %1750 = call float @dx.op.unary.f32(i32 24, float %1483)  ; Sqrt(value)
  %1751 = call float @dx.op.unary.f32(i32 24, float %1484)  ; Sqrt(value)
  %1752 = fadd fast float %1749, -5.000000e-01
  %1753 = fadd fast float %1750, -5.000000e-01
  %1754 = fadd fast float %1751, -5.000000e-01
  %1755 = fmul fast float %1752, %1701
  %1756 = fmul fast float %1753, %1701
  %1757 = fmul fast float %1754, %1701
  %1758 = fadd fast float %1755, 5.000000e-01
  %1759 = fadd fast float %1756, 5.000000e-01
  %1760 = fadd fast float %1757, 5.000000e-01
  %1761 = fmul fast float %1758, 2.000000e+00
  %1762 = fsub fast float 1.000000e+00, %1761
  %1763 = fmul fast float %1762, %1688
  %1764 = fadd fast float %1763, %1761
  %1765 = fmul fast float %1764, %1688
  %1766 = fmul fast float %1759, 2.000000e+00
  %1767 = fsub fast float 1.000000e+00, %1766
  %1768 = fmul fast float %1767, %1689
  %1769 = fadd fast float %1768, %1766
  %1770 = fmul fast float %1769, %1689
  %1771 = fmul fast float %1760, 2.000000e+00
  %1772 = fsub fast float 1.000000e+00, %1771
  %1773 = fmul fast float %1772, %1690
  %1774 = fadd fast float %1773, %1771
  %1775 = fmul fast float %1774, %1690
  br label %1776

; <label>:1776                                    ; preds = %1748, %1746, %1733, %1703, %1687
  %1777 = phi float [ %1688, %1687 ], [ %1765, %1748 ], [ %1688, %1746 ], [ %1743, %1733 ], [ %1713, %1703 ]
  %1778 = phi float [ %1689, %1687 ], [ %1770, %1748 ], [ %1689, %1746 ], [ %1744, %1733 ], [ %1714, %1703 ]
  %1779 = phi float [ %1690, %1687 ], [ %1775, %1748 ], [ %1690, %1746 ], [ %1745, %1733 ], [ %1715, %1703 ]
  %1780 = phi float [ %1691, %1687 ], [ %1691, %1748 ], [ %1691, %1746 ], [ %1691, %1733 ], [ %1725, %1703 ]
  %1781 = phi float [ %1692, %1687 ], [ %1692, %1748 ], [ %1692, %1746 ], [ %1692, %1733 ], [ %1726, %1703 ]
  %1782 = phi float [ %1693, %1687 ], [ %1693, %1748 ], [ %1693, %1746 ], [ %1693, %1733 ], [ %1727, %1703 ]
  %1783 = phi float [ %959, %1687 ], [ %959, %1748 ], [ %959, %1746 ], [ %959, %1733 ], [ %1718, %1703 ]
  %1784 = phi float [ %964, %1687 ], [ %964, %1748 ], [ %964, %1746 ], [ %964, %1733 ], [ %1730, %1703 ]
  %1785 = and i32 %1695, 12
  %1786 = icmp eq i32 %1785, 12
  br i1 %1786, label %1893, label %1787

; <label>:1787                                    ; preds = %1776
  %1788 = and i32 %1695, 2097184
  %1789 = icmp eq i32 %1788, 2097184
  %1790 = select i1 %1789, float %1262, float 0.000000e+00
  %1791 = and i32 %1695, 4194336
  %1792 = icmp eq i32 %1791, 4194336
  %1793 = select i1 %1792, float %1262, float 0.000000e+00
  %1794 = and i32 %1695, 8388640
  %1795 = icmp eq i32 %1794, 8388640
  %1796 = select i1 %1795, float %1262, float 0.000000e+00
  %1797 = and i32 %1695, 2048
  %1798 = icmp ne i32 %1797, 0
  %1799 = select i1 %1798, float %1262, float 0.000000e+00
  %1800 = and i32 %1695, 8192
  %1801 = icmp ne i32 %1800, 0
  %1802 = select i1 %1801, float %1262, float 0.000000e+00
  %1803 = icmp eq i32 %1785, 0
  br i1 %1803, label %1804, label %1829

; <label>:1804                                    ; preds = %1787
  %1805 = fsub fast float %1563, %948
  %1806 = fsub fast float %1564, %949
  %1807 = fmul fast float %1790, %1805
  %1808 = fmul fast float %1790, %1806
  %1809 = fadd fast float %1807, %948
  %1810 = fadd fast float %1808, %949
  %1811 = fsub fast float %1565, %962
  %1812 = fmul fast float %1793, %1811
  %1813 = fadd fast float %1812, %962
  %1814 = fsub fast float %1562, %961
  %1815 = fmul fast float %1796, %1814
  %1816 = fadd fast float %1815, %961
  %1817 = fsub fast float %1665, %963
  %1818 = fmul fast float %1799, %1817
  %1819 = fadd fast float %1818, %963
  %1820 = fsub fast float %1662, %953
  %1821 = fsub fast float %1663, %954
  %1822 = fsub fast float %1664, %955
  %1823 = fmul fast float %1802, %1820
  %1824 = fmul fast float %1802, %1821
  %1825 = fmul fast float %1802, %1822
  %1826 = fadd fast float %1823, %953
  %1827 = fadd fast float %1824, %954
  %1828 = fadd fast float %1825, %955
  br label %1893

; <label>:1829                                    ; preds = %1787
  %1830 = icmp eq i32 %1785, 4
  br i1 %1830, label %1831, label %1871

; <label>:1831                                    ; preds = %1829
  %1832 = fmul fast float %1790, %1563
  %1833 = fmul fast float %1790, %1564
  %1834 = fadd fast float %1832, %948
  %1835 = fadd fast float %1833, %949
  %1836 = call float @dx.op.binary.f32(i32 36, float %962, float %1565)  ; FMin(a,b)
  %1837 = fsub fast float %1836, %962
  %1838 = fmul fast float %1837, %1793
  %1839 = fadd fast float %1838, %962
  %1840 = fadd fast float %1562, %961
  %1841 = fmul fast float %1840, 0x3FF337FAE0000000
  %1842 = fmul fast float %961, %961
  %1843 = fmul fast float %1562, %1562
  %1844 = fadd fast float %1843, %1842
  %1845 = fmul fast float %1844, 0x3FE5152B00000000
  %1846 = fmul fast float %961, 0xBFCC1F85E0000000
  %1847 = fmul fast float %1846, %1562
  %1848 = fadd fast float %1847, 0xBFE1363700000000
  %1849 = fadd fast float %1848, %1841
  %1850 = fsub fast float %1849, %1845
  %1851 = fmul fast float %1840, 0x3FBA6F0D00000000
  %1852 = fmul fast float %1844, 0x3FD0432880000000
  %1853 = fmul fast float %961, 0xBFEF110800000000
  %1854 = fmul fast float %1853, %1562
  %1855 = fadd fast float %1854, 1.000000e+00
  %1856 = fsub fast float %1855, %1851
  %1857 = fadd fast float %1856, %1852
  %1858 = fdiv fast float %1850, %1857
  %1859 = call float @dx.op.unary.f32(i32 7, float %1858)  ; Saturate(value)
  %1860 = fsub fast float %1859, %961
  %1861 = fmul fast float %1860, %1796
  %1862 = fadd fast float %1861, %961
  %1863 = fmul fast float %1799, %1665
  %1864 = fadd fast float %1863, %963
  %1865 = fmul fast float %1802, %1662
  %1866 = fmul fast float %1802, %1663
  %1867 = fmul fast float %1802, %1664
  %1868 = fadd fast float %1865, %953
  %1869 = fadd fast float %1866, %954
  %1870 = fadd fast float %1867, %955
  br label %1893

; <label>:1871                                    ; preds = %1829
  %1872 = icmp eq i32 %1785, 8
  br i1 %1872, label %1873, label %1893

; <label>:1873                                    ; preds = %1871
  %1874 = fmul fast float %1790, %1563
  %1875 = fmul fast float %1790, %1564
  %1876 = fadd fast float %1874, %948
  %1877 = fadd fast float %1875, %949
  %1878 = call float @dx.op.binary.f32(i32 36, float %962, float %1565)  ; FMin(a,b)
  %1879 = fsub fast float %1878, %962
  %1880 = fmul fast float %1879, %1793
  %1881 = fadd fast float %1880, %962
  %1882 = fsub fast float %1562, %961
  %1883 = fmul fast float %1796, %1882
  %1884 = fadd fast float %1883, %961
  %1885 = fmul fast float %1799, %1665
  %1886 = fadd fast float %1885, %963
  %1887 = fmul fast float %1802, %1662
  %1888 = fmul fast float %1802, %1663
  %1889 = fmul fast float %1802, %1664
  %1890 = fadd fast float %1887, %953
  %1891 = fadd fast float %1888, %954
  %1892 = fadd fast float %1889, %955
  br label %1893

; <label>:1893                                    ; preds = %1873, %1871, %1831, %1804, %1776, %1261, %965, %947
  %1894 = phi float [ %948, %1776 ], [ %948, %1261 ], [ %948, %947 ], [ %1876, %1873 ], [ %948, %1871 ], [ %1834, %1831 ], [ %1809, %1804 ], [ %948, %965 ]
  %1895 = phi float [ %949, %1776 ], [ %949, %1261 ], [ %949, %947 ], [ %1877, %1873 ], [ %949, %1871 ], [ %1835, %1831 ], [ %1810, %1804 ], [ %949, %965 ]
  %1896 = phi float [ %1777, %1776 ], [ %950, %1261 ], [ %950, %947 ], [ %1777, %1873 ], [ %1777, %1871 ], [ %1777, %1831 ], [ %1777, %1804 ], [ %950, %965 ]
  %1897 = phi float [ %1778, %1776 ], [ %951, %1261 ], [ %951, %947 ], [ %1778, %1873 ], [ %1778, %1871 ], [ %1778, %1831 ], [ %1778, %1804 ], [ %951, %965 ]
  %1898 = phi float [ %1779, %1776 ], [ %952, %1261 ], [ %952, %947 ], [ %1779, %1873 ], [ %1779, %1871 ], [ %1779, %1831 ], [ %1779, %1804 ], [ %952, %965 ]
  %1899 = phi float [ %953, %1776 ], [ %953, %1261 ], [ %953, %947 ], [ %1890, %1873 ], [ %953, %1871 ], [ %1868, %1831 ], [ %1826, %1804 ], [ %953, %965 ]
  %1900 = phi float [ %954, %1776 ], [ %954, %1261 ], [ %954, %947 ], [ %1891, %1873 ], [ %954, %1871 ], [ %1869, %1831 ], [ %1827, %1804 ], [ %954, %965 ]
  %1901 = phi float [ %955, %1776 ], [ %955, %1261 ], [ %955, %947 ], [ %1892, %1873 ], [ %955, %1871 ], [ %1870, %1831 ], [ %1828, %1804 ], [ %955, %965 ]
  %1902 = phi float [ %1780, %1776 ], [ %956, %1261 ], [ %956, %947 ], [ %1780, %1873 ], [ %1780, %1871 ], [ %1780, %1831 ], [ %1780, %1804 ], [ %956, %965 ]
  %1903 = phi float [ %1781, %1776 ], [ %957, %1261 ], [ %957, %947 ], [ %1781, %1873 ], [ %1781, %1871 ], [ %1781, %1831 ], [ %1781, %1804 ], [ %957, %965 ]
  %1904 = phi float [ %1782, %1776 ], [ %958, %1261 ], [ %958, %947 ], [ %1782, %1873 ], [ %1782, %1871 ], [ %1782, %1831 ], [ %1782, %1804 ], [ %958, %965 ]
  %1905 = phi float [ %1783, %1776 ], [ %959, %1261 ], [ %959, %947 ], [ %1783, %1873 ], [ %1783, %1871 ], [ %1783, %1831 ], [ %1783, %1804 ], [ %959, %965 ]
  %1906 = phi float [ %961, %1776 ], [ %961, %1261 ], [ %961, %947 ], [ %1884, %1873 ], [ %961, %1871 ], [ %1862, %1831 ], [ %1816, %1804 ], [ %961, %965 ]
  %1907 = phi float [ %962, %1776 ], [ %962, %1261 ], [ %962, %947 ], [ %1881, %1873 ], [ %962, %1871 ], [ %1839, %1831 ], [ %1813, %1804 ], [ %962, %965 ]
  %1908 = phi float [ %963, %1776 ], [ %963, %1261 ], [ %963, %947 ], [ %1886, %1873 ], [ %963, %1871 ], [ %1864, %1831 ], [ %1819, %1804 ], [ %963, %965 ]
  %1909 = phi float [ %1784, %1776 ], [ %964, %1261 ], [ %964, %947 ], [ %1784, %1873 ], [ %1784, %1871 ], [ %1784, %1831 ], [ %1784, %1804 ], [ %964, %965 ]
  br i1 %374, label %2838, label %1910

; <label>:1910                                    ; preds = %1893
  %1911 = icmp ult i32 %427, 3
  %1912 = add i32 %37, 56
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = add i32 %37, 60
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = or i32 %1917, %1914
  %1919 = icmp eq i32 %1918, 0
  br i1 %1919, label %2838, label %1920

; <label>:1920                                    ; preds = %1910
  %1921 = and i32 %1914, 262144
  %1922 = icmp ne i32 %1921, 0
  %1923 = select i1 %1922, float %39, float 1.000000e+00
  %1924 = select i1 %1922, float %40, float 0.000000e+00
  %1925 = select i1 %1922, float %41, float 0.000000e+00
  %1926 = select i1 %1922, float %42, float 1.000000e+00
  %1927 = select i1 %1922, float %43, float %52
  %1928 = select i1 %1922, float %44, float %53
  %1929 = add i32 %37, 316
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = lshr i32 %1931, 16
  %1933 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1932)  ; LegacyF16ToF32(value)
  %1934 = fmul fast float %1933, 0x3F50624DE0000000
  %1935 = add i32 %37, 120
  %1936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1937 = extractvalue %dx.types.ResRet.i32 %1936, 0
  %1938 = lshr i32 %1937, 16
  %1939 = and i32 %1938, 255
  %1940 = lshr i32 %1937, 24
  %1941 = add i32 %37, 324
  %1942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1941, i32 undef)  ; BufferLoad(srv,index,wot)
  %1943 = extractvalue %dx.types.ResRet.i32 %1942, 0
  %1944 = and i32 %1943, 65535
  %1945 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1944)  ; LegacyF16ToF32(value)
  %1946 = lshr i32 %1943, 16
  %1947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1946)  ; LegacyF16ToF32(value)
  %1948 = add i32 %37, 64
  %1949 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1948, i32 undef)  ; BufferLoad(srv,index,wot)
  %1950 = extractvalue %dx.types.ResRet.i32 %1949, 0
  %1951 = lshr i32 %1950, 22
  %1952 = shl nuw nsw i32 %1951, 5
  %1953 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1952)  ; LegacyF16ToF32(value)
  %1954 = shl i32 %1950, 4
  %1955 = and i32 %1954, 32752
  %1956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1955)  ; LegacyF16ToF32(value)
  %1957 = lshr i32 %1950, 7
  %1958 = and i32 %1957, 32752
  %1959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1958)  ; LegacyF16ToF32(value)
  %1960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1961 = extractvalue %dx.types.CBufRet.f32 %1960, 3
  %1962 = fmul fast float %1961, 1.000000e+03
  %1963 = fmul fast float %324, %1962
  %1964 = call float @dx.op.unary.f32(i32 22, float %1963)  ; Frc(value)
  %1965 = fadd fast float %1964, %314
  %1966 = fmul fast float %325, %1962
  %1967 = call float @dx.op.unary.f32(i32 22, float %1966)  ; Frc(value)
  %1968 = fadd fast float %1967, %316
  %1969 = fmul fast float %1934, %1962
  %1970 = call float @dx.op.unary.f32(i32 22, float %1969)  ; Frc(value)
  %1971 = fmul fast float %1970, 0x401921FB60000000
  %1972 = fadd fast float %1971, %1953
  %1973 = call float @dx.op.unary.f32(i32 13, float %1972)  ; Sin(value)
  %1974 = call float @dx.op.unary.f32(i32 12, float %1972)  ; Cos(value)
  %1975 = fsub fast float -0.000000e+00, %1973
  %1976 = fadd fast float %1927, -5.000000e-01
  %1977 = fadd fast float %1928, -5.000000e-01
  %1978 = fmul fast float %1945, %1976
  %1979 = fmul fast float %1947, %1977
  %1980 = fadd fast float %1978, 5.000000e-01
  %1981 = fadd fast float %1979, 5.000000e-01
  %1982 = fmul fast float %1956, %1980
  %1983 = fmul fast float %1959, %1981
  %1984 = fmul fast float %1974, %1982
  %1985 = call float @dx.op.tertiary.f32(i32 46, float %1975, float %1983, float %1984)  ; FMad(a,b,c)
  %1986 = fmul fast float %1973, %1982
  %1987 = call float @dx.op.tertiary.f32(i32 46, float %1974, float %1983, float %1986)  ; FMad(a,b,c)
  %1988 = fadd fast float %1965, %1985
  %1989 = fadd fast float %1968, %1987
  %1990 = icmp ugt i32 %1939, 1
  %1991 = icmp ugt i32 %1937, 33554431
  %1992 = or i1 %1991, %1990
  br i1 %1992, label %1993, label %2018

; <label>:1993                                    ; preds = %1920
  %1994 = add i32 %37, 260
  %1995 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1994, i32 undef)  ; BufferLoad(srv,index,wot)
  %1996 = extractvalue %dx.types.ResRet.i32 %1995, 0
  %1997 = lshr i32 %1996, 16
  %1998 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1997)  ; LegacyF16ToF32(value)
  %1999 = fmul fast float %1961, %1998
  %2000 = call float @dx.op.unary.f32(i32 22, float %1999)  ; Frc(value)
  %2001 = mul nuw nsw i32 %1939, %1940
  %2002 = uitofp i32 %2001 to float
  %2003 = fmul fast float %2000, %2002
  %2004 = call float @dx.op.unary.f32(i32 27, float %2003)  ; Round_ni(value)
  %2005 = fptoui float %2004 to i32
  %2006 = urem i32 %2005, %1939
  %2007 = udiv i32 %2005, %1940
  %2008 = call float @dx.op.unary.f32(i32 22, float %1988)  ; Frc(value)
  %2009 = call float @dx.op.unary.f32(i32 22, float %1989)  ; Frc(value)
  %2010 = uitofp i32 %2006 to float
  %2011 = uitofp i32 %2007 to float
  %2012 = fadd fast float %2008, %2010
  %2013 = fadd fast float %2009, %2011
  %2014 = uitofp i32 %1939 to float
  %2015 = uitofp i32 %1940 to float
  %2016 = fdiv fast float %2012, %2014
  %2017 = fdiv fast float %2013, %2015
  br label %2018

; <label>:2018                                    ; preds = %1993, %1920
  %2019 = phi float [ %2016, %1993 ], [ %1988, %1920 ]
  %2020 = phi float [ %2017, %1993 ], [ %1989, %1920 ]
  %2021 = and i32 %1914, 16777216
  %2022 = icmp eq i32 %2021, 0
  br i1 %2022, label %2132, label %2023

; <label>:2023                                    ; preds = %2018
  %2024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2025 = extractvalue %dx.types.CBufRet.f32 %2024, 0
  %2026 = extractvalue %dx.types.CBufRet.f32 %2024, 1
  %2027 = extractvalue %dx.types.CBufRet.f32 %2024, 2
  %2028 = fadd fast float %2025, %123
  %2029 = fadd fast float %2026, %124
  %2030 = fadd fast float %2027, %125
  %2031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2032 = extractvalue %dx.types.CBufRet.f32 %2031, 0
  %2033 = call float @dx.op.unary.f32(i32 7, float %2032)  ; Saturate(value)
  %2034 = icmp eq i32 %38, 65535
  br i1 %2034, label %2129, label %2035

; <label>:2035                                    ; preds = %2023
  %2036 = lshr i32 %38, 1
  %2037 = shl i32 %2036, 2
  %2038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2037, i32 undef)  ; BufferLoad(srv,index,wot)
  %2039 = extractvalue %dx.types.ResRet.i32 %2038, 0
  %2040 = and i32 %38, 1
  %2041 = icmp ne i32 %2040, 0
  %2042 = lshr i32 %2039, 16
  %2043 = and i32 %2039, 65535
  %2044 = select i1 %2041, i32 %2042, i32 %2043
  %2045 = icmp eq i32 %2044, 65535
  br i1 %2045, label %2125, label %2046

; <label>:2046                                    ; preds = %2035
  %2047 = mul nuw nsw i32 %2044, 40
  %2048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2047, i32 undef)  ; BufferLoad(srv,index,wot)
  %2049 = extractvalue %dx.types.ResRet.f32 %2048, 0
  %2050 = extractvalue %dx.types.ResRet.f32 %2048, 1
  %2051 = extractvalue %dx.types.ResRet.f32 %2048, 2
  %2052 = add nuw nsw i32 %2047, 12
  %2053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.f32 %2053, 0
  %2055 = extractvalue %dx.types.ResRet.f32 %2053, 1
  %2056 = extractvalue %dx.types.ResRet.f32 %2053, 2
  %2057 = add nuw nsw i32 %2047, 24
  %2058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.f32 %2058, 0
  %2060 = extractvalue %dx.types.ResRet.f32 %2058, 1
  %2061 = extractvalue %dx.types.ResRet.f32 %2058, 2
  %2062 = add nuw nsw i32 %2047, 36
  %2063 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2062, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.f32 %2063, 0
  %2065 = fsub fast float %2028, %2049
  %2066 = fsub fast float %2029, %2050
  %2067 = fsub fast float %2030, %2051
  %2068 = fmul fast float %2064, %2065
  %2069 = fmul fast float %2064, %2066
  %2070 = fmul fast float %2064, %2067
  %2071 = call float @dx.op.unary.f32(i32 27, float %2068)  ; Round_ni(value)
  %2072 = call float @dx.op.unary.f32(i32 27, float %2069)  ; Round_ni(value)
  %2073 = call float @dx.op.unary.f32(i32 27, float %2070)  ; Round_ni(value)
  %2074 = fadd fast float %2071, 5.000000e-01
  %2075 = fadd fast float %2072, 5.000000e-01
  %2076 = fadd fast float %2073, 5.000000e-01
  %2077 = fmul fast float %2074, %2054
  %2078 = fmul fast float %2075, %2055
  %2079 = fmul fast float %2076, %2056
  %2080 = shl i32 %38, 2
  %2081 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2082 = extractvalue %dx.types.ResRet.i32 %2081, 0
  %2083 = add i32 %2082, 0
  %2084 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2083, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2085 = call float @dx.op.unary.f32(i32 22, float %2077)  ; Frc(value)
  %2086 = call float @dx.op.unary.f32(i32 22, float %2078)  ; Frc(value)
  %2087 = call float @dx.op.unary.f32(i32 22, float %2079)  ; Frc(value)
  %2088 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2084, %dx.types.Handle %32, float %2085, float %2086, float %2087, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2089 = extractvalue %dx.types.ResRet.f32 %2088, 0
  %2090 = extractvalue %dx.types.ResRet.f32 %2088, 1
  %2091 = extractvalue %dx.types.ResRet.f32 %2088, 2
  %2092 = fmul fast float %2089, 1.023000e+03
  %2093 = fmul fast float %2090, 1.023000e+03
  %2094 = fmul fast float %2091, 1.023000e+03
  %2095 = fadd fast float %2092, 5.000000e-01
  %2096 = fadd fast float %2093, 5.000000e-01
  %2097 = fadd fast float %2094, 5.000000e-01
  %2098 = call float @dx.op.unary.f32(i32 27, float %2095)  ; Round_ni(value)
  %2099 = call float @dx.op.unary.f32(i32 27, float %2096)  ; Round_ni(value)
  %2100 = call float @dx.op.unary.f32(i32 27, float %2097)  ; Round_ni(value)
  %2101 = fsub fast float %2068, %2071
  %2102 = fsub fast float %2069, %2072
  %2103 = fsub fast float %2070, %2073
  %2104 = fmul fast float %2101, 7.500000e-01
  %2105 = fmul fast float %2102, 7.500000e-01
  %2106 = fmul fast float %2103, 7.500000e-01
  %2107 = fadd fast float %2071, 1.250000e-01
  %2108 = fadd fast float %2107, %2104
  %2109 = fadd fast float %2108, %2098
  %2110 = fadd fast float %2072, 1.250000e-01
  %2111 = fadd fast float %2110, %2105
  %2112 = fadd fast float %2111, %2099
  %2113 = fadd fast float %2073, 1.250000e-01
  %2114 = fadd fast float %2113, %2106
  %2115 = fadd fast float %2114, %2100
  %2116 = fmul fast float %2109, %2059
  %2117 = fmul fast float %2112, %2060
  %2118 = fmul fast float %2115, %2061
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2080, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = add i32 %2120, 0
  %2122 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2121, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2123 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2122, %dx.types.Handle %30, float %2116, float %2117, float %2118, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2124 = extractvalue %dx.types.ResRet.f32 %2123, 0
  br label %2125

; <label>:2125                                    ; preds = %2046, %2035
  %2126 = phi float [ %2124, %2046 ], [ -1.000000e+00, %2035 ]
  %2127 = fadd fast float %2126, %2033
  %2128 = call float @dx.op.unary.f32(i32 7, float %2127)  ; Saturate(value)
  br label %2129

; <label>:2129                                    ; preds = %2125, %2023
  %2130 = phi float [ %2128, %2125 ], [ %2033, %2023 ]
  %2131 = fmul fast float %2130, %423
  br label %2132

; <label>:2132                                    ; preds = %2129, %2018
  %2133 = phi float [ %2131, %2129 ], [ %423, %2018 ]
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = and i32 %2135, 256
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2184, label %2138

; <label>:2138                                    ; preds = %2132
  %2139 = add i32 %37, 480
  %2140 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2139, i32 undef)  ; BufferLoad(srv,index,wot)
  %2141 = extractvalue %dx.types.ResRet.i32 %2140, 0
  %2142 = add i32 %2141, 0
  %2143 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2142, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2144 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2143, %dx.types.Handle %61, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2145 = extractvalue %dx.types.ResRet.f32 %2144, 0
  %2146 = add i32 %37, 132
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2146, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = shl i32 %2148, 4
  %2150 = and i32 %2149, 32752
  %2151 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2150)  ; LegacyF16ToF32(value)
  %2152 = lshr i32 %2148, 7
  %2153 = and i32 %2152, 32752
  %2154 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2153)  ; LegacyF16ToF32(value)
  %2155 = fsub fast float 1.000000e+00, %2133
  %2156 = call float @dx.op.binary.f32(i32 35, float %2155, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2157 = bitcast float %2133 to i32
  %2158 = sitofp i32 %2157 to float
  %2159 = fadd fast float %2158, 0xC1CFBF8940000000
  %2160 = fmul fast float %2154, %2159
  %2161 = fadd fast float %2160, 0x41CFBF8940000000
  %2162 = fptosi float %2161 to i32
  %2163 = bitcast i32 %2162 to float
  %2164 = bitcast float %2156 to i32
  %2165 = sitofp i32 %2164 to float
  %2166 = fadd fast float %2165, 0xC1CFBF8940000000
  %2167 = fmul fast float %2166, %2154
  %2168 = fadd fast float %2167, 0x41CFBF8940000000
  %2169 = fptosi float %2168 to i32
  %2170 = bitcast i32 %2169 to float
  %2171 = fmul fast float %2163, %2151
  %2172 = fmul fast float %2170, %2151
  %2173 = fsub fast float %2156, %2171
  %2174 = fadd fast float %2172, %2156
  %2175 = call float @dx.op.unary.f32(i32 7, float %2173)  ; Saturate(value)
  %2176 = call float @dx.op.unary.f32(i32 7, float %2174)  ; Saturate(value)
  %2177 = fsub fast float %2145, %2175
  %2178 = fsub fast float %2176, %2175
  %2179 = bitcast float %2178 to i32
  %2180 = sub nsw i32 2129859010, %2179
  %2181 = bitcast i32 %2180 to float
  %2182 = fmul fast float %2181, %2177
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  br label %2184

; <label>:2184                                    ; preds = %2138, %2132
  %2185 = phi float [ %2183, %2138 ], [ %2133, %2132 ]
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 128
  %2189 = icmp eq i32 %2188, 0
  br i1 %2189, label %2206, label %2190

; <label>:2190                                    ; preds = %2184
  %2191 = add i32 %37, 464
  %2192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2191, i32 undef)  ; BufferLoad(srv,index,wot)
  %2193 = extractvalue %dx.types.ResRet.i32 %2192, 0
  %2194 = add i32 %2193, 0
  %2195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2194, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2196 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2195, %dx.types.Handle %61, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2197 = extractvalue %dx.types.ResRet.f32 %2196, 0
  %2198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2199 = extractvalue %dx.types.ResRet.i32 %2198, 0
  %2200 = and i32 %2199, 524288
  %2201 = icmp ne i32 %2200, 0
  %2202 = fcmp fast ogt float %2197, 0x3FE0101020000000
  %2203 = select i1 %2202, float 1.000000e+00, float 0.000000e+00
  %2204 = select i1 %2201, float %2203, float %2197
  %2205 = fmul fast float %2204, %2185
  br label %2206

; <label>:2206                                    ; preds = %2190, %2184
  %2207 = phi float [ %2205, %2190 ], [ %2185, %2184 ]
  %2208 = fcmp fast ult float %2207, 0x3F70101020000000
  br i1 %2208, label %2838, label %2209

; <label>:2209                                    ; preds = %2206
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 16
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2412, label %2214

; <label>:2214                                    ; preds = %2209
  %2215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1935, i32 undef)  ; BufferLoad(srv,index,wot)
  %2216 = extractvalue %dx.types.ResRet.i32 %2215, 0
  %2217 = add i32 %37, 416
  %2218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2217, i32 undef)  ; BufferLoad(srv,index,wot)
  %2219 = extractvalue %dx.types.ResRet.i32 %2218, 0
  %2220 = add i32 %2219, 0
  %2221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2221, %dx.types.Handle %60, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2223 = extractvalue %dx.types.ResRet.f32 %2222, 0
  %2224 = extractvalue %dx.types.ResRet.f32 %2222, 1
  %2225 = extractvalue %dx.types.ResRet.f32 %2222, 2
  %2226 = extractvalue %dx.types.ResRet.f32 %2222, 3
  %2227 = and i32 %2216, 255
  %2228 = uitofp i32 %2227 to float
  %2229 = lshr i32 %2216, 8
  %2230 = and i32 %2229, 255
  %2231 = uitofp i32 %2230 to float
  %2232 = fmul fast float %2226, %2228
  %2233 = fadd fast float %2232, %2231
  %2234 = fmul fast float %2233, 0x3F70101000000000
  %2235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2236 = extractvalue %dx.types.ResRet.i32 %2235, 0
  %2237 = and i32 %2236, 512
  %2238 = icmp eq i32 %2237, 0
  br i1 %2238, label %2247, label %2239

; <label>:2239                                    ; preds = %2214
  %2240 = add i32 %37, 496
  %2241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2240, i32 undef)  ; BufferLoad(srv,index,wot)
  %2242 = extractvalue %dx.types.ResRet.i32 %2241, 0
  %2243 = add i32 %2242, 0
  %2244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2244, %dx.types.Handle %61, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2246 = extractvalue %dx.types.ResRet.f32 %2245, 0
  br label %2247

; <label>:2247                                    ; preds = %2239, %2214
  %2248 = phi float [ %2246, %2239 ], [ 1.000000e+00, %2214 ]
  %2249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2250 = extractvalue %dx.types.ResRet.i32 %2249, 0
  %2251 = and i32 %2250, 33554432
  %2252 = icmp eq i32 %2251, 0
  br i1 %2252, label %2359, label %2253

; <label>:2253                                    ; preds = %2247
  %2254 = add i32 %37, 256
  %2255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2254, i32 undef)  ; BufferLoad(srv,index,wot)
  %2256 = extractvalue %dx.types.ResRet.i32 %2255, 0
  %2257 = and i32 %2256, 65535
  %2258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2257)  ; LegacyF16ToF32(value)
  %2259 = lshr i32 %2256, 16
  %2260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2259)  ; LegacyF16ToF32(value)
  %2261 = add i32 %37, 260
  %2262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2261, i32 undef)  ; BufferLoad(srv,index,wot)
  %2263 = extractvalue %dx.types.ResRet.i32 %2262, 0
  %2264 = and i32 %2263, 65535
  %2265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2264)  ; LegacyF16ToF32(value)
  %2266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %2267 = extractvalue %dx.types.ResRet.i32 %2266, 0
  %2268 = lshr i32 %2267, 24
  %2269 = uitofp i32 %2268 to float
  %2270 = fmul fast float %2269, 0x3F70101020000000
  %2271 = and i32 %2267, 255
  %2272 = uitofp i32 %2271 to float
  %2273 = fmul fast float %2272, 0x3F70101020000000
  %2274 = lshr i32 %2267, 8
  %2275 = and i32 %2274, 255
  %2276 = uitofp i32 %2275 to float
  %2277 = fmul fast float %2276, 0x3F70101020000000
  %2278 = lshr i32 %2267, 16
  %2279 = and i32 %2278, 255
  %2280 = uitofp i32 %2279 to float
  %2281 = fmul fast float %2280, 0x3F70101020000000
  %2282 = add i32 %37, 252
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2282, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = lshr i32 %2284, 24
  %2286 = uitofp i32 %2285 to float
  %2287 = fmul fast float %2286, 0x3F70101020000000
  %2288 = and i32 %2284, 255
  %2289 = uitofp i32 %2288 to float
  %2290 = fmul fast float %2289, 0x3F70101020000000
  %2291 = lshr i32 %2284, 8
  %2292 = and i32 %2291, 255
  %2293 = uitofp i32 %2292 to float
  %2294 = fmul fast float %2293, 0x3F70101020000000
  %2295 = lshr i32 %2284, 16
  %2296 = and i32 %2295, 255
  %2297 = uitofp i32 %2296 to float
  %2298 = fmul fast float %2297, 0x3F70101020000000
  %2299 = bitcast float %2223 to i32
  %2300 = ashr i32 %2299, 1
  %2301 = sub nsw i32 1597463174, %2300
  %2302 = bitcast i32 %2301 to float
  %2303 = fmul fast float %2223, 5.000000e-01
  %2304 = fmul fast float %2302, %2302
  %2305 = fmul fast float %2304, %2303
  %2306 = fsub fast float 1.500000e+00, %2305
  %2307 = fmul fast float %2302, %2223
  %2308 = fmul fast float %2307, %2306
  %2309 = bitcast float %2224 to i32
  %2310 = ashr i32 %2309, 1
  %2311 = sub nsw i32 1597463174, %2310
  %2312 = bitcast i32 %2311 to float
  %2313 = fmul fast float %2224, 5.000000e-01
  %2314 = fmul fast float %2312, %2312
  %2315 = fmul fast float %2314, %2313
  %2316 = fsub fast float 1.500000e+00, %2315
  %2317 = fmul fast float %2312, %2224
  %2318 = fmul fast float %2317, %2316
  %2319 = bitcast float %2225 to i32
  %2320 = ashr i32 %2319, 1
  %2321 = sub nsw i32 1597463174, %2320
  %2322 = bitcast i32 %2321 to float
  %2323 = fmul fast float %2225, 5.000000e-01
  %2324 = fmul fast float %2322, %2322
  %2325 = fmul fast float %2324, %2323
  %2326 = fsub fast float 1.500000e+00, %2325
  %2327 = fmul fast float %2322, %2225
  %2328 = fmul fast float %2327, %2326
  %2329 = fsub fast float %2308, %2290
  %2330 = fsub fast float %2318, %2294
  %2331 = fsub fast float %2328, %2298
  %2332 = fmul fast float %2329, %2258
  %2333 = fmul fast float %2330, %2260
  %2334 = fmul fast float %2331, %2265
  %2335 = fadd fast float %2332, %2273
  %2336 = fadd fast float %2333, %2277
  %2337 = fadd fast float %2334, %2281
  %2338 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  %2339 = call float @dx.op.unary.f32(i32 7, float %2336)  ; Saturate(value)
  %2340 = call float @dx.op.unary.f32(i32 7, float %2337)  ; Saturate(value)
  %2341 = fmul fast float %2338, %2338
  %2342 = fmul fast float %2339, %2339
  %2343 = fmul fast float %2340, %2340
  %2344 = fsub fast float %2341, %2223
  %2345 = fsub fast float %2342, %2224
  %2346 = fsub fast float %2343, %2225
  %2347 = fmul fast float %2344, %2248
  %2348 = fmul fast float %2345, %2248
  %2349 = fmul fast float %2346, %2248
  %2350 = fadd fast float %2347, %2223
  %2351 = fadd fast float %2348, %2224
  %2352 = fadd fast float %2349, %2225
  %2353 = fadd fast float %2270, %2234
  %2354 = fsub fast float %2353, %2287
  %2355 = call float @dx.op.unary.f32(i32 7, float %2354)  ; Saturate(value)
  %2356 = fsub fast float %2355, %2234
  %2357 = fmul fast float %2356, %2248
  %2358 = fadd fast float %2357, %2234
  br label %2412

; <label>:2359                                    ; preds = %2247
  %2360 = and i32 %2250, 134217728
  %2361 = icmp eq i32 %2360, 0
  br i1 %2361, label %2396, label %2362

; <label>:2362                                    ; preds = %2359
  %2363 = call float @dx.op.unary.f32(i32 24, float %301)  ; Sqrt(value)
  %2364 = call float @dx.op.unary.f32(i32 24, float %305)  ; Sqrt(value)
  %2365 = call float @dx.op.unary.f32(i32 24, float %309)  ; Sqrt(value)
  %2366 = fadd fast float %2363, -5.000000e-01
  %2367 = fadd fast float %2364, -5.000000e-01
  %2368 = fadd fast float %2365, -5.000000e-01
  %2369 = fmul fast float %2366, %2248
  %2370 = fmul fast float %2367, %2248
  %2371 = fmul fast float %2368, %2248
  %2372 = fadd fast float %2369, 5.000000e-01
  %2373 = fadd fast float %2370, 5.000000e-01
  %2374 = fadd fast float %2371, 5.000000e-01
  %2375 = call float @dx.op.unary.f32(i32 24, float %2223)  ; Sqrt(value)
  %2376 = call float @dx.op.unary.f32(i32 24, float %2224)  ; Sqrt(value)
  %2377 = call float @dx.op.unary.f32(i32 24, float %2225)  ; Sqrt(value)
  %2378 = fmul fast float %2372, 2.000000e+00
  %2379 = fsub fast float 1.000000e+00, %2378
  %2380 = fmul fast float %2379, %2375
  %2381 = fadd fast float %2380, %2378
  %2382 = fmul fast float %2381, %2375
  %2383 = fmul fast float %2373, 2.000000e+00
  %2384 = fsub fast float 1.000000e+00, %2383
  %2385 = fmul fast float %2384, %2376
  %2386 = fadd fast float %2385, %2383
  %2387 = fmul fast float %2386, %2376
  %2388 = fmul fast float %2374, 2.000000e+00
  %2389 = fsub fast float 1.000000e+00, %2388
  %2390 = fmul fast float %2389, %2377
  %2391 = fadd fast float %2390, %2388
  %2392 = fmul fast float %2391, %2377
  %2393 = fmul fast float %2382, %2382
  %2394 = fmul fast float %2387, %2387
  %2395 = fmul fast float %2392, %2392
  br label %2412

; <label>:2396                                    ; preds = %2359
  %2397 = fmul fast float %301, %301
  %2398 = fmul fast float %305, %305
  %2399 = fmul fast float %309, %309
  %2400 = fadd fast float %2397, -1.000000e+00
  %2401 = fadd fast float %2398, -1.000000e+00
  %2402 = fadd fast float %2399, -1.000000e+00
  %2403 = fmul fast float %2248, %2400
  %2404 = fmul fast float %2248, %2401
  %2405 = fmul fast float %2248, %2402
  %2406 = fadd fast float %2403, 1.000000e+00
  %2407 = fadd fast float %2404, 1.000000e+00
  %2408 = fadd fast float %2405, 1.000000e+00
  %2409 = fmul fast float %2406, %2223
  %2410 = fmul fast float %2407, %2224
  %2411 = fmul fast float %2408, %2225
  br label %2412

; <label>:2412                                    ; preds = %2396, %2362, %2253, %2209
  %2413 = phi float [ %2358, %2253 ], [ %2234, %2362 ], [ %2234, %2396 ], [ 0x3FA23C0BE0000000, %2209 ]
  %2414 = phi float [ %2350, %2253 ], [ %2393, %2362 ], [ %2409, %2396 ], [ 1.000000e+00, %2209 ]
  %2415 = phi float [ %2351, %2253 ], [ %2394, %2362 ], [ %2410, %2396 ], [ 1.000000e+00, %2209 ]
  %2416 = phi float [ %2352, %2253 ], [ %2395, %2362 ], [ %2411, %2396 ], [ 1.000000e+00, %2209 ]
  %2417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2418 = extractvalue %dx.types.CBufRet.i32 %2417, 1
  %2419 = and i32 %2418, 1
  %2420 = icmp ne i32 %2419, 0
  %2421 = add i32 %37, 356
  %2422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2421, i32 undef)  ; BufferLoad(srv,index,wot)
  %2423 = extractvalue %dx.types.ResRet.i32 %2422, 0
  %2424 = and i32 %2423, 32
  %2425 = icmp ne i32 %2424, 0
  %2426 = and i1 %2420, %2425
  %2427 = select i1 %2426, float 1.000000e+00, float %2414
  %2428 = select i1 %2426, float 0x3FD3333340000000, float %2415
  %2429 = select i1 %2426, float 0x3FD3333340000000, float %2416
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = and i32 %2431, 32
  %2433 = icmp eq i32 %2432, 0
  br i1 %2433, label %2506, label %2434

; <label>:2434                                    ; preds = %2412
  %2435 = add i32 %37, 124
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = add i32 %37, 432
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2438, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = add i32 %2440, 0
  %2442 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2441, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2443 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2442, %dx.types.Handle %60, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2444 = extractvalue %dx.types.ResRet.f32 %2443, 0
  %2445 = extractvalue %dx.types.ResRet.f32 %2443, 1
  %2446 = extractvalue %dx.types.ResRet.f32 %2443, 2
  %2447 = extractvalue %dx.types.ResRet.f32 %2443, 3
  %2448 = and i32 %2437, 255
  %2449 = uitofp i32 %2448 to float
  %2450 = lshr i32 %2437, 8
  %2451 = and i32 %2450, 255
  %2452 = uitofp i32 %2451 to float
  %2453 = lshr i32 %2437, 16
  %2454 = and i32 %2453, 255
  %2455 = uitofp i32 %2454 to float
  %2456 = fmul fast float %2455, 0x3F70101000000000
  %2457 = fmul fast float %2444, %2449
  %2458 = fadd fast float %2457, %2452
  %2459 = fmul fast float %2458, 0x3F70101000000000
  %2460 = fadd fast float %2445, -5.000000e-01
  %2461 = fadd fast float %2447, -5.000000e-01
  %2462 = fmul fast float %2460, %2456
  %2463 = fmul fast float %2461, %2456
  %2464 = fadd fast float %2462, 5.000000e-01
  %2465 = fadd fast float %2463, 5.000000e-01
  %2466 = fmul fast float %2464, 2.000000e+00
  %2467 = fadd fast float %2466, -1.000000e+00
  %2468 = fmul fast float %2465, 2.000000e+00
  %2469 = fadd fast float %2468, -1.000000e+00
  %2470 = fadd fast float %2467, %2469
  %2471 = fmul fast float %2470, 5.000000e-01
  %2472 = fsub fast float %2467, %2469
  %2473 = fmul fast float %2472, 5.000000e-01
  %2474 = call float @dx.op.unary.f32(i32 6, float %2471)  ; FAbs(value)
  %2475 = fsub fast float 1.000000e+00, %2474
  %2476 = call float @dx.op.unary.f32(i32 6, float %2473)  ; FAbs(value)
  %2477 = fsub fast float %2475, %2476
  %2478 = call float @dx.op.dot3.f32(i32 55, float %2471, float %2473, float %2477, float %2471, float %2473, float %2477)  ; Dot3(ax,ay,az,bx,by,bz)
  %2479 = call float @dx.op.unary.f32(i32 25, float %2478)  ; Rsqrt(value)
  %2480 = fmul fast float %2471, %2479
  %2481 = fmul fast float %2473, %2479
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = and i32 %2483, 67108864
  %2485 = icmp eq i32 %2484, 0
  br i1 %2485, label %2502, label %2486

; <label>:2486                                    ; preds = %2434
  %2487 = add i32 %37, 312
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2487, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 65535
  %2491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2490)  ; LegacyF16ToF32(value)
  %2492 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2493 = extractvalue %dx.types.ResRet.i32 %2492, 0
  %2494 = and i32 %2493, 65535
  %2495 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2494)  ; LegacyF16ToF32(value)
  %2496 = lshr i32 %2489, 16
  %2497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2496)  ; LegacyF16ToF32(value)
  %2498 = fsub fast float %2459, %2497
  %2499 = fmul fast float %2498, %2491
  %2500 = fadd fast float %2499, %2495
  %2501 = call float @dx.op.unary.f32(i32 7, float %2500)  ; Saturate(value)
  br label %2502

; <label>:2502                                    ; preds = %2486, %2434
  %2503 = phi float [ %2501, %2486 ], [ %2459, %2434 ]
  %2504 = call float @dx.op.dot2.f32(i32 54, float %2480, float %2481, float %1923, float %1924)  ; Dot2(ax,ay,bx,by)
  %2505 = call float @dx.op.dot2.f32(i32 54, float %2480, float %2481, float %1925, float %1926)  ; Dot2(ax,ay,bx,by)
  br label %2506

; <label>:2506                                    ; preds = %2502, %2412
  %2507 = phi float [ %2503, %2502 ], [ 0x3FD6666660000000, %2412 ]
  %2508 = phi float [ %2504, %2502 ], [ 0.000000e+00, %2412 ]
  %2509 = phi float [ %2505, %2502 ], [ 0.000000e+00, %2412 ]
  %2510 = phi float [ %2446, %2502 ], [ 1.000000e+00, %2412 ]
  %2511 = add i32 %37, 192
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2511, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = lshr i32 %2513, 22
  %2515 = shl nuw nsw i32 %2514, 5
  %2516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2515)  ; LegacyF16ToF32(value)
  %2517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2518 = extractvalue %dx.types.ResRet.i32 %2517, 0
  %2519 = and i32 %2518, 64
  %2520 = icmp eq i32 %2519, 0
  br i1 %2520, label %2554, label %2521

; <label>:2521                                    ; preds = %2506
  %2522 = add i32 %37, 448
  %2523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2522, i32 undef)  ; BufferLoad(srv,index,wot)
  %2524 = extractvalue %dx.types.ResRet.i32 %2523, 0
  %2525 = add i32 %2524, 0
  %2526 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2525, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2528 = extractvalue %dx.types.ResRet.i32 %2527, 0
  %2529 = and i32 %2528, 131072
  %2530 = icmp eq i32 %2529, 0
  %2531 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2526, %dx.types.Handle %60, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2532 = extractvalue %dx.types.ResRet.f32 %2531, 0
  %2533 = extractvalue %dx.types.ResRet.f32 %2531, 1
  %2534 = extractvalue %dx.types.ResRet.f32 %2531, 2
  %2535 = fmul fast float %2532, %289
  %2536 = fmul fast float %2533, %292
  %2537 = fmul fast float %2534, %295
  br i1 %2530, label %2544, label %2538

; <label>:2538                                    ; preds = %2521
  %2539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2540 = extractvalue %dx.types.CBufRet.f32 %2539, 0
  %2541 = fmul fast float %2540, %2535
  %2542 = fmul fast float %2540, %2536
  %2543 = fmul fast float %2540, %2537
  br label %2544

; <label>:2544                                    ; preds = %2538, %2521
  %2545 = phi float [ %2541, %2538 ], [ %2535, %2521 ]
  %2546 = phi float [ %2542, %2538 ], [ %2536, %2521 ]
  %2547 = phi float [ %2543, %2538 ], [ %2537, %2521 ]
  %2548 = fmul fast float %2545, %2516
  %2549 = select i1 %199, float %2548, float %2545
  %2550 = call float @dx.op.dot3.f32(i32 55, float %2549, float %2546, float %2547, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2551 = select i1 %199, float 0.000000e+00, float %2545
  %2552 = select i1 %199, float %2550, float %2546
  %2553 = select i1 %199, float 0.000000e+00, float %2547
  br label %2554

; <label>:2554                                    ; preds = %2544, %2506
  %2555 = phi float [ %2551, %2544 ], [ 0.000000e+00, %2506 ]
  %2556 = phi float [ %2552, %2544 ], [ 0.000000e+00, %2506 ]
  %2557 = phi float [ %2553, %2544 ], [ 0.000000e+00, %2506 ]
  %2558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2559 = extractvalue %dx.types.ResRet.i32 %2558, 0
  %2560 = and i32 %2559, 10240
  %2561 = icmp eq i32 %2560, 0
  br i1 %2561, label %2606, label %2562

; <label>:2562                                    ; preds = %2554
  %2563 = add i32 %37, 512
  %2564 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.i32 %2564, 0
  %2566 = add i32 %2565, 0
  %2567 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2566, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2568 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2567, %dx.types.Handle %61, float %2019, float %2020, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2569 = extractvalue %dx.types.ResRet.f32 %2568, 1
  %2570 = extractvalue %dx.types.ResRet.f32 %2568, 3
  %2571 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2572 = extractvalue %dx.types.ResRet.i32 %2571, 0
  %2573 = and i32 %2572, 1048576
  %2574 = icmp ne i32 %2573, 0
  %2575 = and i32 %2572, 8192
  %2576 = icmp eq i32 %2575, 0
  br i1 %2576, label %2592, label %2577

; <label>:2577                                    ; preds = %2562
  %2578 = extractvalue %dx.types.ResRet.f32 %2568, 2
  %2579 = select i1 %2574, float %2578, float %2569
  %2580 = extractvalue %dx.types.ResRet.f32 %2568, 0
  %2581 = select i1 %2574, float %2580, float %2569
  %2582 = add i32 %37, 128
  %2583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2582, i32 undef)  ; BufferLoad(srv,index,wot)
  %2584 = extractvalue %dx.types.ResRet.i32 %2583, 0
  %2585 = lshr i32 %2584, 16
  %2586 = and i32 %2585, 255
  %2587 = uitofp i32 %2586 to float
  %2588 = fmul fast float %2587, 0x3F80101020000000
  %2589 = fmul fast float %2588, %2581
  %2590 = fmul fast float %2588, %2569
  %2591 = fmul fast float %2588, %2579
  br label %2592

; <label>:2592                                    ; preds = %2577, %2562
  %2593 = phi float [ %2589, %2577 ], [ 0.000000e+00, %2562 ]
  %2594 = phi float [ %2590, %2577 ], [ 0.000000e+00, %2562 ]
  %2595 = phi float [ %2591, %2577 ], [ 0.000000e+00, %2562 ]
  %2596 = and i32 %2572, 2048
  %2597 = icmp eq i32 %2596, 0
  br i1 %2597, label %2606, label %2598

; <label>:2598                                    ; preds = %2592
  %2599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2511, i32 undef)  ; BufferLoad(srv,index,wot)
  %2600 = extractvalue %dx.types.ResRet.i32 %2599, 0
  %2601 = shl i32 %2600, 4
  %2602 = and i32 %2601, 32752
  %2603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2602)  ; LegacyF16ToF32(value)
  %2604 = fmul fast float %2603, %2570
  %2605 = call float @dx.op.binary.f32(i32 35, float %2604, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2606

; <label>:2606                                    ; preds = %2598, %2592, %2554
  %2607 = phi float [ %2593, %2598 ], [ %2593, %2592 ], [ 0.000000e+00, %2554 ]
  %2608 = phi float [ %2594, %2598 ], [ %2594, %2592 ], [ 0.000000e+00, %2554 ]
  %2609 = phi float [ %2595, %2598 ], [ %2595, %2592 ], [ 0.000000e+00, %2554 ]
  %2610 = phi float [ %2605, %2598 ], [ 0x3F70101020000000, %2592 ], [ 0x3F70101020000000, %2554 ]
  %2611 = add i32 %37, 128
  %2612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2611, i32 undef)  ; BufferLoad(srv,index,wot)
  %2613 = extractvalue %dx.types.ResRet.i32 %2612, 0
  %2614 = and i32 %2613, 255
  %2615 = uitofp i32 %2614 to float
  %2616 = lshr i32 %2613, 8
  %2617 = and i32 %2616, 255
  %2618 = uitofp i32 %2617 to float
  %2619 = call float @dx.op.dot3.f32(i32 55, float %2427, float %2428, float %2429, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2620 = fmul fast float %2618, %2619
  %2621 = fadd fast float %2620, %2615
  %2622 = fmul fast float %2621, 0x3F70101020000000
  %2623 = call float @dx.op.unary.f32(i32 7, float %2622)  ; Saturate(value)
  br i1 %1911, label %2624, label %2632

; <label>:2624                                    ; preds = %2606
  %2625 = fsub fast float 1.000000e+00, %2207
  %2626 = fmul fast float %2625, %1896
  %2627 = fmul fast float %2625, %1897
  %2628 = fmul fast float %2625, %1898
  %2629 = fmul fast float %2625, %1902
  %2630 = fmul fast float %2625, %1903
  %2631 = fmul fast float %2625, %1904
  br label %2632

; <label>:2632                                    ; preds = %2624, %2606
  %2633 = phi float [ %2626, %2624 ], [ %1896, %2606 ]
  %2634 = phi float [ %2627, %2624 ], [ %1897, %2606 ]
  %2635 = phi float [ %2628, %2624 ], [ %1898, %2606 ]
  %2636 = phi float [ %2629, %2624 ], [ %1902, %2606 ]
  %2637 = phi float [ %2630, %2624 ], [ %1903, %2606 ]
  %2638 = phi float [ %2631, %2624 ], [ %1904, %2606 ]
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = and i32 %2640, 3
  %2642 = icmp eq i32 %2641, 3
  br i1 %2642, label %2721, label %2643

; <label>:2643                                    ; preds = %2632
  %2644 = and i32 %2640, 16
  %2645 = icmp ne i32 %2644, 0
  %2646 = select i1 %2645, float %2207, float 0.000000e+00
  %2647 = icmp eq i32 %2641, 0
  br i1 %2647, label %2648, label %2676

; <label>:2648                                    ; preds = %2643
  %2649 = and i32 %2640, 64
  %2650 = icmp ne i32 %2649, 0
  %2651 = select i1 %2650, float %2207, float 0.000000e+00
  %2652 = fsub fast float %2427, %2633
  %2653 = fsub fast float %2428, %2634
  %2654 = fsub fast float %2429, %2635
  %2655 = fmul fast float %2646, %2652
  %2656 = fmul fast float %2646, %2653
  %2657 = fmul fast float %2646, %2654
  %2658 = fadd fast float %2655, %2633
  %2659 = fadd fast float %2656, %2634
  %2660 = fadd fast float %2657, %2635
  %2661 = fsub fast float %2413, %1905
  %2662 = fmul fast float %2646, %2661
  %2663 = fadd fast float %2662, %1905
  %2664 = fsub fast float %2555, %2636
  %2665 = fsub fast float %2556, %2637
  %2666 = fsub fast float %2557, %2638
  %2667 = fmul fast float %2651, %2664
  %2668 = fmul fast float %2651, %2665
  %2669 = fmul fast float %2651, %2666
  %2670 = fadd fast float %2667, %2636
  %2671 = fadd fast float %2668, %2637
  %2672 = fadd fast float %2669, %2638
  %2673 = fsub fast float %2623, %1909
  %2674 = fmul fast float %2646, %2673
  %2675 = fadd fast float %2674, %1909
  br label %2721

; <label>:2676                                    ; preds = %2643
  %2677 = icmp eq i32 %2641, 1
  br i1 %2677, label %2678, label %2691

; <label>:2678                                    ; preds = %2676
  %2679 = fadd fast float %2427, -1.000000e+00
  %2680 = fadd fast float %2428, -1.000000e+00
  %2681 = fadd fast float %2429, -1.000000e+00
  %2682 = fmul fast float %2646, %2679
  %2683 = fmul fast float %2646, %2680
  %2684 = fmul fast float %2646, %2681
  %2685 = fadd fast float %2682, 1.000000e+00
  %2686 = fadd fast float %2683, 1.000000e+00
  %2687 = fadd fast float %2684, 1.000000e+00
  %2688 = fmul fast float %2685, %2633
  %2689 = fmul fast float %2686, %2634
  %2690 = fmul fast float %2687, %2635
  br label %2721

; <label>:2691                                    ; preds = %2676
  %2692 = icmp eq i32 %2641, 2
  br i1 %2692, label %2693, label %2721

; <label>:2693                                    ; preds = %2691
  %2694 = call float @dx.op.unary.f32(i32 24, float %2427)  ; Sqrt(value)
  %2695 = call float @dx.op.unary.f32(i32 24, float %2428)  ; Sqrt(value)
  %2696 = call float @dx.op.unary.f32(i32 24, float %2429)  ; Sqrt(value)
  %2697 = fadd fast float %2694, -5.000000e-01
  %2698 = fadd fast float %2695, -5.000000e-01
  %2699 = fadd fast float %2696, -5.000000e-01
  %2700 = fmul fast float %2697, %2646
  %2701 = fmul fast float %2698, %2646
  %2702 = fmul fast float %2699, %2646
  %2703 = fadd fast float %2700, 5.000000e-01
  %2704 = fadd fast float %2701, 5.000000e-01
  %2705 = fadd fast float %2702, 5.000000e-01
  %2706 = fmul fast float %2703, 2.000000e+00
  %2707 = fsub fast float 1.000000e+00, %2706
  %2708 = fmul fast float %2707, %2633
  %2709 = fadd fast float %2708, %2706
  %2710 = fmul fast float %2709, %2633
  %2711 = fmul fast float %2704, 2.000000e+00
  %2712 = fsub fast float 1.000000e+00, %2711
  %2713 = fmul fast float %2712, %2634
  %2714 = fadd fast float %2713, %2711
  %2715 = fmul fast float %2714, %2634
  %2716 = fmul fast float %2705, 2.000000e+00
  %2717 = fsub fast float 1.000000e+00, %2716
  %2718 = fmul fast float %2717, %2635
  %2719 = fadd fast float %2718, %2716
  %2720 = fmul fast float %2719, %2635
  br label %2721

; <label>:2721                                    ; preds = %2693, %2691, %2678, %2648, %2632
  %2722 = phi float [ %2633, %2632 ], [ %2710, %2693 ], [ %2633, %2691 ], [ %2688, %2678 ], [ %2658, %2648 ]
  %2723 = phi float [ %2634, %2632 ], [ %2715, %2693 ], [ %2634, %2691 ], [ %2689, %2678 ], [ %2659, %2648 ]
  %2724 = phi float [ %2635, %2632 ], [ %2720, %2693 ], [ %2635, %2691 ], [ %2690, %2678 ], [ %2660, %2648 ]
  %2725 = phi float [ %2636, %2632 ], [ %2636, %2693 ], [ %2636, %2691 ], [ %2636, %2678 ], [ %2670, %2648 ]
  %2726 = phi float [ %2637, %2632 ], [ %2637, %2693 ], [ %2637, %2691 ], [ %2637, %2678 ], [ %2671, %2648 ]
  %2727 = phi float [ %2638, %2632 ], [ %2638, %2693 ], [ %2638, %2691 ], [ %2638, %2678 ], [ %2672, %2648 ]
  %2728 = phi float [ %1905, %2632 ], [ %1905, %2693 ], [ %1905, %2691 ], [ %1905, %2678 ], [ %2663, %2648 ]
  %2729 = phi float [ %1909, %2632 ], [ %1909, %2693 ], [ %1909, %2691 ], [ %1909, %2678 ], [ %2675, %2648 ]
  %2730 = and i32 %2640, 12
  %2731 = icmp eq i32 %2730, 12
  br i1 %2731, label %2838, label %2732

; <label>:2732                                    ; preds = %2721
  %2733 = and i32 %2640, 2097184
  %2734 = icmp eq i32 %2733, 2097184
  %2735 = select i1 %2734, float %2207, float 0.000000e+00
  %2736 = and i32 %2640, 4194336
  %2737 = icmp eq i32 %2736, 4194336
  %2738 = select i1 %2737, float %2207, float 0.000000e+00
  %2739 = and i32 %2640, 8388640
  %2740 = icmp eq i32 %2739, 8388640
  %2741 = select i1 %2740, float %2207, float 0.000000e+00
  %2742 = and i32 %2640, 2048
  %2743 = icmp ne i32 %2742, 0
  %2744 = select i1 %2743, float %2207, float 0.000000e+00
  %2745 = and i32 %2640, 8192
  %2746 = icmp ne i32 %2745, 0
  %2747 = select i1 %2746, float %2207, float 0.000000e+00
  %2748 = icmp eq i32 %2730, 0
  br i1 %2748, label %2749, label %2774

; <label>:2749                                    ; preds = %2732
  %2750 = fsub fast float %2508, %1894
  %2751 = fsub fast float %2509, %1895
  %2752 = fmul fast float %2735, %2750
  %2753 = fmul fast float %2735, %2751
  %2754 = fadd fast float %2752, %1894
  %2755 = fadd fast float %2753, %1895
  %2756 = fsub fast float %2510, %1907
  %2757 = fmul fast float %2738, %2756
  %2758 = fadd fast float %2757, %1907
  %2759 = fsub fast float %2507, %1906
  %2760 = fmul fast float %2741, %2759
  %2761 = fadd fast float %2760, %1906
  %2762 = fsub fast float %2610, %1908
  %2763 = fmul fast float %2744, %2762
  %2764 = fadd fast float %2763, %1908
  %2765 = fsub fast float %2607, %1899
  %2766 = fsub fast float %2608, %1900
  %2767 = fsub fast float %2609, %1901
  %2768 = fmul fast float %2747, %2765
  %2769 = fmul fast float %2747, %2766
  %2770 = fmul fast float %2747, %2767
  %2771 = fadd fast float %2768, %1899
  %2772 = fadd fast float %2769, %1900
  %2773 = fadd fast float %2770, %1901
  br label %2838

; <label>:2774                                    ; preds = %2732
  %2775 = icmp eq i32 %2730, 4
  br i1 %2775, label %2776, label %2816

; <label>:2776                                    ; preds = %2774
  %2777 = fmul fast float %2735, %2508
  %2778 = fmul fast float %2735, %2509
  %2779 = fadd fast float %2777, %1894
  %2780 = fadd fast float %2778, %1895
  %2781 = call float @dx.op.binary.f32(i32 36, float %1907, float %2510)  ; FMin(a,b)
  %2782 = fsub fast float %2781, %1907
  %2783 = fmul fast float %2782, %2738
  %2784 = fadd fast float %2783, %1907
  %2785 = fadd fast float %2507, %1906
  %2786 = fmul fast float %2785, 0x3FF337FAE0000000
  %2787 = fmul fast float %1906, %1906
  %2788 = fmul fast float %2507, %2507
  %2789 = fadd fast float %2788, %2787
  %2790 = fmul fast float %2789, 0x3FE5152B00000000
  %2791 = fmul fast float %1906, 0xBFCC1F85E0000000
  %2792 = fmul fast float %2791, %2507
  %2793 = fadd fast float %2792, 0xBFE1363700000000
  %2794 = fadd fast float %2793, %2786
  %2795 = fsub fast float %2794, %2790
  %2796 = fmul fast float %2785, 0x3FBA6F0D00000000
  %2797 = fmul fast float %2789, 0x3FD0432880000000
  %2798 = fmul fast float %1906, 0xBFEF110800000000
  %2799 = fmul fast float %2798, %2507
  %2800 = fadd fast float %2799, 1.000000e+00
  %2801 = fsub fast float %2800, %2796
  %2802 = fadd fast float %2801, %2797
  %2803 = fdiv fast float %2795, %2802
  %2804 = call float @dx.op.unary.f32(i32 7, float %2803)  ; Saturate(value)
  %2805 = fsub fast float %2804, %1906
  %2806 = fmul fast float %2805, %2741
  %2807 = fadd fast float %2806, %1906
  %2808 = fmul fast float %2744, %2610
  %2809 = fadd fast float %2808, %1908
  %2810 = fmul fast float %2747, %2607
  %2811 = fmul fast float %2747, %2608
  %2812 = fmul fast float %2747, %2609
  %2813 = fadd fast float %2810, %1899
  %2814 = fadd fast float %2811, %1900
  %2815 = fadd fast float %2812, %1901
  br label %2838

; <label>:2816                                    ; preds = %2774
  %2817 = icmp eq i32 %2730, 8
  br i1 %2817, label %2818, label %2838

; <label>:2818                                    ; preds = %2816
  %2819 = fmul fast float %2735, %2508
  %2820 = fmul fast float %2735, %2509
  %2821 = fadd fast float %2819, %1894
  %2822 = fadd fast float %2820, %1895
  %2823 = call float @dx.op.binary.f32(i32 36, float %1907, float %2510)  ; FMin(a,b)
  %2824 = fsub fast float %2823, %1907
  %2825 = fmul fast float %2824, %2738
  %2826 = fadd fast float %2825, %1907
  %2827 = fsub fast float %2507, %1906
  %2828 = fmul fast float %2741, %2827
  %2829 = fadd fast float %2828, %1906
  %2830 = fmul fast float %2744, %2610
  %2831 = fadd fast float %2830, %1908
  %2832 = fmul fast float %2747, %2607
  %2833 = fmul fast float %2747, %2608
  %2834 = fmul fast float %2747, %2609
  %2835 = fadd fast float %2832, %1899
  %2836 = fadd fast float %2833, %1900
  %2837 = fadd fast float %2834, %1901
  br label %2838

; <label>:2838                                    ; preds = %2818, %2816, %2776, %2749, %2721, %2206, %1910, %1893
  %2839 = phi float [ %1894, %2721 ], [ %1894, %2206 ], [ %1894, %1893 ], [ %2821, %2818 ], [ %1894, %2816 ], [ %2779, %2776 ], [ %2754, %2749 ], [ %1894, %1910 ]
  %2840 = phi float [ %1895, %2721 ], [ %1895, %2206 ], [ %1895, %1893 ], [ %2822, %2818 ], [ %1895, %2816 ], [ %2780, %2776 ], [ %2755, %2749 ], [ %1895, %1910 ]
  %2841 = phi float [ %2722, %2721 ], [ %1896, %2206 ], [ %1896, %1893 ], [ %2722, %2818 ], [ %2722, %2816 ], [ %2722, %2776 ], [ %2722, %2749 ], [ %1896, %1910 ]
  %2842 = phi float [ %2723, %2721 ], [ %1897, %2206 ], [ %1897, %1893 ], [ %2723, %2818 ], [ %2723, %2816 ], [ %2723, %2776 ], [ %2723, %2749 ], [ %1897, %1910 ]
  %2843 = phi float [ %2724, %2721 ], [ %1898, %2206 ], [ %1898, %1893 ], [ %2724, %2818 ], [ %2724, %2816 ], [ %2724, %2776 ], [ %2724, %2749 ], [ %1898, %1910 ]
  %2844 = phi float [ %1899, %2721 ], [ %1899, %2206 ], [ %1899, %1893 ], [ %2835, %2818 ], [ %1899, %2816 ], [ %2813, %2776 ], [ %2771, %2749 ], [ %1899, %1910 ]
  %2845 = phi float [ %1900, %2721 ], [ %1900, %2206 ], [ %1900, %1893 ], [ %2836, %2818 ], [ %1900, %2816 ], [ %2814, %2776 ], [ %2772, %2749 ], [ %1900, %1910 ]
  %2846 = phi float [ %1901, %2721 ], [ %1901, %2206 ], [ %1901, %1893 ], [ %2837, %2818 ], [ %1901, %2816 ], [ %2815, %2776 ], [ %2773, %2749 ], [ %1901, %1910 ]
  %2847 = phi float [ %2725, %2721 ], [ %1902, %2206 ], [ %1902, %1893 ], [ %2725, %2818 ], [ %2725, %2816 ], [ %2725, %2776 ], [ %2725, %2749 ], [ %1902, %1910 ]
  %2848 = phi float [ %2726, %2721 ], [ %1903, %2206 ], [ %1903, %1893 ], [ %2726, %2818 ], [ %2726, %2816 ], [ %2726, %2776 ], [ %2726, %2749 ], [ %1903, %1910 ]
  %2849 = phi float [ %2727, %2721 ], [ %1904, %2206 ], [ %1904, %1893 ], [ %2727, %2818 ], [ %2727, %2816 ], [ %2727, %2776 ], [ %2727, %2749 ], [ %1904, %1910 ]
  %2850 = phi float [ %2728, %2721 ], [ %1905, %2206 ], [ %1905, %1893 ], [ %2728, %2818 ], [ %2728, %2816 ], [ %2728, %2776 ], [ %2728, %2749 ], [ %1905, %1910 ]
  %2851 = phi float [ %1906, %2721 ], [ %1906, %2206 ], [ %1906, %1893 ], [ %2829, %2818 ], [ %1906, %2816 ], [ %2807, %2776 ], [ %2761, %2749 ], [ %1906, %1910 ]
  %2852 = phi float [ %1907, %2721 ], [ %1907, %2206 ], [ %1907, %1893 ], [ %2826, %2818 ], [ %1907, %2816 ], [ %2784, %2776 ], [ %2758, %2749 ], [ %1907, %1910 ]
  %2853 = phi float [ %1908, %2721 ], [ %1908, %2206 ], [ %1908, %1893 ], [ %2831, %2818 ], [ %1908, %2816 ], [ %2809, %2776 ], [ %2764, %2749 ], [ %1908, %1910 ]
  %2854 = phi float [ %2729, %2721 ], [ %1909, %2206 ], [ %1909, %1893 ], [ %2729, %2818 ], [ %2729, %2816 ], [ %2729, %2776 ], [ %2729, %2749 ], [ %1909, %1910 ]
  br i1 %376, label %3783, label %2855

; <label>:2855                                    ; preds = %2838
  %2856 = icmp ult i32 %427, 4
  %2857 = add i32 %37, 72
  %2858 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %2859 = extractvalue %dx.types.ResRet.i32 %2858, 0
  %2860 = add i32 %37, 76
  %2861 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2860, i32 undef)  ; BufferLoad(srv,index,wot)
  %2862 = extractvalue %dx.types.ResRet.i32 %2861, 0
  %2863 = or i32 %2862, %2859
  %2864 = icmp eq i32 %2863, 0
  br i1 %2864, label %3783, label %2865

; <label>:2865                                    ; preds = %2855
  %2866 = and i32 %2859, 262144
  %2867 = icmp ne i32 %2866, 0
  %2868 = select i1 %2867, float %39, float 1.000000e+00
  %2869 = select i1 %2867, float %40, float 0.000000e+00
  %2870 = select i1 %2867, float %41, float 0.000000e+00
  %2871 = select i1 %2867, float %42, float 1.000000e+00
  %2872 = select i1 %2867, float %43, float %52
  %2873 = select i1 %2867, float %44, float %53
  %2874 = add i32 %37, 332
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = lshr i32 %2876, 16
  %2878 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2877)  ; LegacyF16ToF32(value)
  %2879 = fmul fast float %2878, 0x3F50624DE0000000
  %2880 = add i32 %37, 136
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = lshr i32 %2882, 16
  %2884 = and i32 %2883, 255
  %2885 = lshr i32 %2882, 24
  %2886 = add i32 %37, 340
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2886, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = and i32 %2888, 65535
  %2890 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2889)  ; LegacyF16ToF32(value)
  %2891 = lshr i32 %2888, 16
  %2892 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2891)  ; LegacyF16ToF32(value)
  %2893 = add i32 %37, 80
  %2894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2893, i32 undef)  ; BufferLoad(srv,index,wot)
  %2895 = extractvalue %dx.types.ResRet.i32 %2894, 0
  %2896 = lshr i32 %2895, 22
  %2897 = shl nuw nsw i32 %2896, 5
  %2898 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2897)  ; LegacyF16ToF32(value)
  %2899 = shl i32 %2895, 4
  %2900 = and i32 %2899, 32752
  %2901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2900)  ; LegacyF16ToF32(value)
  %2902 = lshr i32 %2895, 7
  %2903 = and i32 %2902, 32752
  %2904 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2903)  ; LegacyF16ToF32(value)
  %2905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2906 = extractvalue %dx.types.CBufRet.f32 %2905, 3
  %2907 = fmul fast float %2906, 1.000000e+03
  %2908 = fmul fast float %366, %2907
  %2909 = call float @dx.op.unary.f32(i32 22, float %2908)  ; Frc(value)
  %2910 = fadd fast float %2909, %356
  %2911 = fmul fast float %367, %2907
  %2912 = call float @dx.op.unary.f32(i32 22, float %2911)  ; Frc(value)
  %2913 = fadd fast float %2912, %358
  %2914 = fmul fast float %2879, %2907
  %2915 = call float @dx.op.unary.f32(i32 22, float %2914)  ; Frc(value)
  %2916 = fmul fast float %2915, 0x401921FB60000000
  %2917 = fadd fast float %2916, %2898
  %2918 = call float @dx.op.unary.f32(i32 13, float %2917)  ; Sin(value)
  %2919 = call float @dx.op.unary.f32(i32 12, float %2917)  ; Cos(value)
  %2920 = fsub fast float -0.000000e+00, %2918
  %2921 = fadd fast float %2872, -5.000000e-01
  %2922 = fadd fast float %2873, -5.000000e-01
  %2923 = fmul fast float %2890, %2921
  %2924 = fmul fast float %2892, %2922
  %2925 = fadd fast float %2923, 5.000000e-01
  %2926 = fadd fast float %2924, 5.000000e-01
  %2927 = fmul fast float %2901, %2925
  %2928 = fmul fast float %2904, %2926
  %2929 = fmul fast float %2919, %2927
  %2930 = call float @dx.op.tertiary.f32(i32 46, float %2920, float %2928, float %2929)  ; FMad(a,b,c)
  %2931 = fmul fast float %2918, %2927
  %2932 = call float @dx.op.tertiary.f32(i32 46, float %2919, float %2928, float %2931)  ; FMad(a,b,c)
  %2933 = fadd fast float %2910, %2930
  %2934 = fadd fast float %2913, %2932
  %2935 = icmp ugt i32 %2884, 1
  %2936 = icmp ugt i32 %2882, 33554431
  %2937 = or i1 %2936, %2935
  br i1 %2937, label %2938, label %2963

; <label>:2938                                    ; preds = %2865
  %2939 = add i32 %37, 276
  %2940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2939, i32 undef)  ; BufferLoad(srv,index,wot)
  %2941 = extractvalue %dx.types.ResRet.i32 %2940, 0
  %2942 = lshr i32 %2941, 16
  %2943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2942)  ; LegacyF16ToF32(value)
  %2944 = fmul fast float %2906, %2943
  %2945 = call float @dx.op.unary.f32(i32 22, float %2944)  ; Frc(value)
  %2946 = mul nuw nsw i32 %2884, %2885
  %2947 = uitofp i32 %2946 to float
  %2948 = fmul fast float %2945, %2947
  %2949 = call float @dx.op.unary.f32(i32 27, float %2948)  ; Round_ni(value)
  %2950 = fptoui float %2949 to i32
  %2951 = urem i32 %2950, %2884
  %2952 = udiv i32 %2950, %2885
  %2953 = call float @dx.op.unary.f32(i32 22, float %2933)  ; Frc(value)
  %2954 = call float @dx.op.unary.f32(i32 22, float %2934)  ; Frc(value)
  %2955 = uitofp i32 %2951 to float
  %2956 = uitofp i32 %2952 to float
  %2957 = fadd fast float %2953, %2955
  %2958 = fadd fast float %2954, %2956
  %2959 = uitofp i32 %2884 to float
  %2960 = uitofp i32 %2885 to float
  %2961 = fdiv fast float %2957, %2959
  %2962 = fdiv fast float %2958, %2960
  br label %2963

; <label>:2963                                    ; preds = %2938, %2865
  %2964 = phi float [ %2961, %2938 ], [ %2933, %2865 ]
  %2965 = phi float [ %2962, %2938 ], [ %2934, %2865 ]
  %2966 = and i32 %2859, 16777216
  %2967 = icmp eq i32 %2966, 0
  br i1 %2967, label %3077, label %2968

; <label>:2968                                    ; preds = %2963
  %2969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2970 = extractvalue %dx.types.CBufRet.f32 %2969, 0
  %2971 = extractvalue %dx.types.CBufRet.f32 %2969, 1
  %2972 = extractvalue %dx.types.CBufRet.f32 %2969, 2
  %2973 = fadd fast float %2970, %123
  %2974 = fadd fast float %2971, %124
  %2975 = fadd fast float %2972, %125
  %2976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2977 = extractvalue %dx.types.CBufRet.f32 %2976, 0
  %2978 = call float @dx.op.unary.f32(i32 7, float %2977)  ; Saturate(value)
  %2979 = icmp eq i32 %38, 65535
  br i1 %2979, label %3074, label %2980

; <label>:2980                                    ; preds = %2968
  %2981 = lshr i32 %38, 1
  %2982 = shl i32 %2981, 2
  %2983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2982, i32 undef)  ; BufferLoad(srv,index,wot)
  %2984 = extractvalue %dx.types.ResRet.i32 %2983, 0
  %2985 = and i32 %38, 1
  %2986 = icmp ne i32 %2985, 0
  %2987 = lshr i32 %2984, 16
  %2988 = and i32 %2984, 65535
  %2989 = select i1 %2986, i32 %2987, i32 %2988
  %2990 = icmp eq i32 %2989, 65535
  br i1 %2990, label %3070, label %2991

; <label>:2991                                    ; preds = %2980
  %2992 = mul nuw nsw i32 %2989, 40
  %2993 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2992, i32 undef)  ; BufferLoad(srv,index,wot)
  %2994 = extractvalue %dx.types.ResRet.f32 %2993, 0
  %2995 = extractvalue %dx.types.ResRet.f32 %2993, 1
  %2996 = extractvalue %dx.types.ResRet.f32 %2993, 2
  %2997 = add nuw nsw i32 %2992, 12
  %2998 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2997, i32 undef)  ; BufferLoad(srv,index,wot)
  %2999 = extractvalue %dx.types.ResRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.ResRet.f32 %2998, 1
  %3001 = extractvalue %dx.types.ResRet.f32 %2998, 2
  %3002 = add nuw nsw i32 %2992, 24
  %3003 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3002, i32 undef)  ; BufferLoad(srv,index,wot)
  %3004 = extractvalue %dx.types.ResRet.f32 %3003, 0
  %3005 = extractvalue %dx.types.ResRet.f32 %3003, 1
  %3006 = extractvalue %dx.types.ResRet.f32 %3003, 2
  %3007 = add nuw nsw i32 %2992, 36
  %3008 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %3007, i32 undef)  ; BufferLoad(srv,index,wot)
  %3009 = extractvalue %dx.types.ResRet.f32 %3008, 0
  %3010 = fsub fast float %2973, %2994
  %3011 = fsub fast float %2974, %2995
  %3012 = fsub fast float %2975, %2996
  %3013 = fmul fast float %3009, %3010
  %3014 = fmul fast float %3009, %3011
  %3015 = fmul fast float %3009, %3012
  %3016 = call float @dx.op.unary.f32(i32 27, float %3013)  ; Round_ni(value)
  %3017 = call float @dx.op.unary.f32(i32 27, float %3014)  ; Round_ni(value)
  %3018 = call float @dx.op.unary.f32(i32 27, float %3015)  ; Round_ni(value)
  %3019 = fadd fast float %3016, 5.000000e-01
  %3020 = fadd fast float %3017, 5.000000e-01
  %3021 = fadd fast float %3018, 5.000000e-01
  %3022 = fmul fast float %3019, %2999
  %3023 = fmul fast float %3020, %3000
  %3024 = fmul fast float %3021, %3001
  %3025 = shl i32 %38, 2
  %3026 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3027 = extractvalue %dx.types.ResRet.i32 %3026, 0
  %3028 = add i32 %3027, 0
  %3029 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3028, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3030 = call float @dx.op.unary.f32(i32 22, float %3022)  ; Frc(value)
  %3031 = call float @dx.op.unary.f32(i32 22, float %3023)  ; Frc(value)
  %3032 = call float @dx.op.unary.f32(i32 22, float %3024)  ; Frc(value)
  %3033 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3029, %dx.types.Handle %32, float %3030, float %3031, float %3032, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3034 = extractvalue %dx.types.ResRet.f32 %3033, 0
  %3035 = extractvalue %dx.types.ResRet.f32 %3033, 1
  %3036 = extractvalue %dx.types.ResRet.f32 %3033, 2
  %3037 = fmul fast float %3034, 1.023000e+03
  %3038 = fmul fast float %3035, 1.023000e+03
  %3039 = fmul fast float %3036, 1.023000e+03
  %3040 = fadd fast float %3037, 5.000000e-01
  %3041 = fadd fast float %3038, 5.000000e-01
  %3042 = fadd fast float %3039, 5.000000e-01
  %3043 = call float @dx.op.unary.f32(i32 27, float %3040)  ; Round_ni(value)
  %3044 = call float @dx.op.unary.f32(i32 27, float %3041)  ; Round_ni(value)
  %3045 = call float @dx.op.unary.f32(i32 27, float %3042)  ; Round_ni(value)
  %3046 = fsub fast float %3013, %3016
  %3047 = fsub fast float %3014, %3017
  %3048 = fsub fast float %3015, %3018
  %3049 = fmul fast float %3046, 7.500000e-01
  %3050 = fmul fast float %3047, 7.500000e-01
  %3051 = fmul fast float %3048, 7.500000e-01
  %3052 = fadd fast float %3016, 1.250000e-01
  %3053 = fadd fast float %3052, %3049
  %3054 = fadd fast float %3053, %3043
  %3055 = fadd fast float %3017, 1.250000e-01
  %3056 = fadd fast float %3055, %3050
  %3057 = fadd fast float %3056, %3044
  %3058 = fadd fast float %3018, 1.250000e-01
  %3059 = fadd fast float %3058, %3051
  %3060 = fadd fast float %3059, %3045
  %3061 = fmul fast float %3054, %3004
  %3062 = fmul fast float %3057, %3005
  %3063 = fmul fast float %3060, %3006
  %3064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %3025, i32 undef)  ; BufferLoad(srv,index,wot)
  %3065 = extractvalue %dx.types.ResRet.i32 %3064, 0
  %3066 = add i32 %3065, 0
  %3067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3067, %dx.types.Handle %30, float %3061, float %3062, float %3063, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3069 = extractvalue %dx.types.ResRet.f32 %3068, 0
  br label %3070

; <label>:3070                                    ; preds = %2991, %2980
  %3071 = phi float [ %3069, %2991 ], [ -1.000000e+00, %2980 ]
  %3072 = fadd fast float %3071, %2978
  %3073 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  br label %3074

; <label>:3074                                    ; preds = %3070, %2968
  %3075 = phi float [ %3073, %3070 ], [ %2978, %2968 ]
  %3076 = fmul fast float %3075, %422
  br label %3077

; <label>:3077                                    ; preds = %3074, %2963
  %3078 = phi float [ %3076, %3074 ], [ %422, %2963 ]
  %3079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3080 = extractvalue %dx.types.ResRet.i32 %3079, 0
  %3081 = and i32 %3080, 256
  %3082 = icmp eq i32 %3081, 0
  br i1 %3082, label %3129, label %3083

; <label>:3083                                    ; preds = %3077
  %3084 = add i32 %37, 484
  %3085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3084, i32 undef)  ; BufferLoad(srv,index,wot)
  %3086 = extractvalue %dx.types.ResRet.i32 %3085, 0
  %3087 = add i32 %3086, 0
  %3088 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3087, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3089 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3088, %dx.types.Handle %61, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3090 = extractvalue %dx.types.ResRet.f32 %3089, 0
  %3091 = add i32 %37, 148
  %3092 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3091, i32 undef)  ; BufferLoad(srv,index,wot)
  %3093 = extractvalue %dx.types.ResRet.i32 %3092, 0
  %3094 = shl i32 %3093, 4
  %3095 = and i32 %3094, 32752
  %3096 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3095)  ; LegacyF16ToF32(value)
  %3097 = lshr i32 %3093, 7
  %3098 = and i32 %3097, 32752
  %3099 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3098)  ; LegacyF16ToF32(value)
  %3100 = fsub fast float 1.000000e+00, %3078
  %3101 = call float @dx.op.binary.f32(i32 35, float %3100, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3102 = bitcast float %3078 to i32
  %3103 = sitofp i32 %3102 to float
  %3104 = fadd fast float %3103, 0xC1CFBF8940000000
  %3105 = fmul fast float %3099, %3104
  %3106 = fadd fast float %3105, 0x41CFBF8940000000
  %3107 = fptosi float %3106 to i32
  %3108 = bitcast i32 %3107 to float
  %3109 = bitcast float %3101 to i32
  %3110 = sitofp i32 %3109 to float
  %3111 = fadd fast float %3110, 0xC1CFBF8940000000
  %3112 = fmul fast float %3111, %3099
  %3113 = fadd fast float %3112, 0x41CFBF8940000000
  %3114 = fptosi float %3113 to i32
  %3115 = bitcast i32 %3114 to float
  %3116 = fmul fast float %3108, %3096
  %3117 = fmul fast float %3115, %3096
  %3118 = fsub fast float %3101, %3116
  %3119 = fadd fast float %3117, %3101
  %3120 = call float @dx.op.unary.f32(i32 7, float %3118)  ; Saturate(value)
  %3121 = call float @dx.op.unary.f32(i32 7, float %3119)  ; Saturate(value)
  %3122 = fsub fast float %3090, %3120
  %3123 = fsub fast float %3121, %3120
  %3124 = bitcast float %3123 to i32
  %3125 = sub nsw i32 2129859010, %3124
  %3126 = bitcast i32 %3125 to float
  %3127 = fmul fast float %3126, %3122
  %3128 = call float @dx.op.unary.f32(i32 7, float %3127)  ; Saturate(value)
  br label %3129

; <label>:3129                                    ; preds = %3083, %3077
  %3130 = phi float [ %3128, %3083 ], [ %3078, %3077 ]
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = and i32 %3132, 128
  %3134 = icmp eq i32 %3133, 0
  br i1 %3134, label %3151, label %3135

; <label>:3135                                    ; preds = %3129
  %3136 = add i32 %37, 468
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3136, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = add i32 %3138, 0
  %3140 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3139, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3141 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3140, %dx.types.Handle %61, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3142 = extractvalue %dx.types.ResRet.f32 %3141, 0
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = and i32 %3144, 524288
  %3146 = icmp ne i32 %3145, 0
  %3147 = fcmp fast ogt float %3142, 0x3FE0101020000000
  %3148 = select i1 %3147, float 1.000000e+00, float 0.000000e+00
  %3149 = select i1 %3146, float %3148, float %3142
  %3150 = fmul fast float %3149, %3130
  br label %3151

; <label>:3151                                    ; preds = %3135, %3129
  %3152 = phi float [ %3150, %3135 ], [ %3130, %3129 ]
  %3153 = fcmp fast ult float %3152, 0x3F70101020000000
  br i1 %3153, label %3783, label %3154

; <label>:3154                                    ; preds = %3151
  %3155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3156 = extractvalue %dx.types.ResRet.i32 %3155, 0
  %3157 = and i32 %3156, 16
  %3158 = icmp eq i32 %3157, 0
  br i1 %3158, label %3357, label %3159

; <label>:3159                                    ; preds = %3154
  %3160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %3161 = extractvalue %dx.types.ResRet.i32 %3160, 0
  %3162 = add i32 %37, 420
  %3163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3162, i32 undef)  ; BufferLoad(srv,index,wot)
  %3164 = extractvalue %dx.types.ResRet.i32 %3163, 0
  %3165 = add i32 %3164, 0
  %3166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3166, %dx.types.Handle %60, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3168 = extractvalue %dx.types.ResRet.f32 %3167, 0
  %3169 = extractvalue %dx.types.ResRet.f32 %3167, 1
  %3170 = extractvalue %dx.types.ResRet.f32 %3167, 2
  %3171 = extractvalue %dx.types.ResRet.f32 %3167, 3
  %3172 = and i32 %3161, 255
  %3173 = uitofp i32 %3172 to float
  %3174 = lshr i32 %3161, 8
  %3175 = and i32 %3174, 255
  %3176 = uitofp i32 %3175 to float
  %3177 = fmul fast float %3171, %3173
  %3178 = fadd fast float %3177, %3176
  %3179 = fmul fast float %3178, 0x3F70101000000000
  %3180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3181 = extractvalue %dx.types.ResRet.i32 %3180, 0
  %3182 = and i32 %3181, 512
  %3183 = icmp eq i32 %3182, 0
  br i1 %3183, label %3192, label %3184

; <label>:3184                                    ; preds = %3159
  %3185 = add i32 %37, 500
  %3186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3185, i32 undef)  ; BufferLoad(srv,index,wot)
  %3187 = extractvalue %dx.types.ResRet.i32 %3186, 0
  %3188 = add i32 %3187, 0
  %3189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3188, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3189, %dx.types.Handle %61, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3191 = extractvalue %dx.types.ResRet.f32 %3190, 0
  br label %3192

; <label>:3192                                    ; preds = %3184, %3159
  %3193 = phi float [ %3191, %3184 ], [ 1.000000e+00, %3159 ]
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 33554432
  %3197 = icmp eq i32 %3196, 0
  br i1 %3197, label %3304, label %3198

; <label>:3198                                    ; preds = %3192
  %3199 = add i32 %37, 272
  %3200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3199, i32 undef)  ; BufferLoad(srv,index,wot)
  %3201 = extractvalue %dx.types.ResRet.i32 %3200, 0
  %3202 = and i32 %3201, 65535
  %3203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3202)  ; LegacyF16ToF32(value)
  %3204 = lshr i32 %3201, 16
  %3205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3204)  ; LegacyF16ToF32(value)
  %3206 = add i32 %37, 276
  %3207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3206, i32 undef)  ; BufferLoad(srv,index,wot)
  %3208 = extractvalue %dx.types.ResRet.i32 %3207, 0
  %3209 = and i32 %3208, 65535
  %3210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3209)  ; LegacyF16ToF32(value)
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = lshr i32 %3212, 24
  %3214 = uitofp i32 %3213 to float
  %3215 = fmul fast float %3214, 0x3F70101020000000
  %3216 = and i32 %3212, 255
  %3217 = uitofp i32 %3216 to float
  %3218 = fmul fast float %3217, 0x3F70101020000000
  %3219 = lshr i32 %3212, 8
  %3220 = and i32 %3219, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = fmul fast float %3221, 0x3F70101020000000
  %3223 = lshr i32 %3212, 16
  %3224 = and i32 %3223, 255
  %3225 = uitofp i32 %3224 to float
  %3226 = fmul fast float %3225, 0x3F70101020000000
  %3227 = add i32 %37, 268
  %3228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3227, i32 undef)  ; BufferLoad(srv,index,wot)
  %3229 = extractvalue %dx.types.ResRet.i32 %3228, 0
  %3230 = lshr i32 %3229, 24
  %3231 = uitofp i32 %3230 to float
  %3232 = fmul fast float %3231, 0x3F70101020000000
  %3233 = and i32 %3229, 255
  %3234 = uitofp i32 %3233 to float
  %3235 = fmul fast float %3234, 0x3F70101020000000
  %3236 = lshr i32 %3229, 8
  %3237 = and i32 %3236, 255
  %3238 = uitofp i32 %3237 to float
  %3239 = fmul fast float %3238, 0x3F70101020000000
  %3240 = lshr i32 %3229, 16
  %3241 = and i32 %3240, 255
  %3242 = uitofp i32 %3241 to float
  %3243 = fmul fast float %3242, 0x3F70101020000000
  %3244 = bitcast float %3168 to i32
  %3245 = ashr i32 %3244, 1
  %3246 = sub nsw i32 1597463174, %3245
  %3247 = bitcast i32 %3246 to float
  %3248 = fmul fast float %3168, 5.000000e-01
  %3249 = fmul fast float %3247, %3247
  %3250 = fmul fast float %3249, %3248
  %3251 = fsub fast float 1.500000e+00, %3250
  %3252 = fmul fast float %3247, %3168
  %3253 = fmul fast float %3252, %3251
  %3254 = bitcast float %3169 to i32
  %3255 = ashr i32 %3254, 1
  %3256 = sub nsw i32 1597463174, %3255
  %3257 = bitcast i32 %3256 to float
  %3258 = fmul fast float %3169, 5.000000e-01
  %3259 = fmul fast float %3257, %3257
  %3260 = fmul fast float %3259, %3258
  %3261 = fsub fast float 1.500000e+00, %3260
  %3262 = fmul fast float %3257, %3169
  %3263 = fmul fast float %3262, %3261
  %3264 = bitcast float %3170 to i32
  %3265 = ashr i32 %3264, 1
  %3266 = sub nsw i32 1597463174, %3265
  %3267 = bitcast i32 %3266 to float
  %3268 = fmul fast float %3170, 5.000000e-01
  %3269 = fmul fast float %3267, %3267
  %3270 = fmul fast float %3269, %3268
  %3271 = fsub fast float 1.500000e+00, %3270
  %3272 = fmul fast float %3267, %3170
  %3273 = fmul fast float %3272, %3271
  %3274 = fsub fast float %3253, %3235
  %3275 = fsub fast float %3263, %3239
  %3276 = fsub fast float %3273, %3243
  %3277 = fmul fast float %3274, %3203
  %3278 = fmul fast float %3275, %3205
  %3279 = fmul fast float %3276, %3210
  %3280 = fadd fast float %3277, %3218
  %3281 = fadd fast float %3278, %3222
  %3282 = fadd fast float %3279, %3226
  %3283 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  %3284 = call float @dx.op.unary.f32(i32 7, float %3281)  ; Saturate(value)
  %3285 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3286 = fmul fast float %3283, %3283
  %3287 = fmul fast float %3284, %3284
  %3288 = fmul fast float %3285, %3285
  %3289 = fsub fast float %3286, %3168
  %3290 = fsub fast float %3287, %3169
  %3291 = fsub fast float %3288, %3170
  %3292 = fmul fast float %3289, %3193
  %3293 = fmul fast float %3290, %3193
  %3294 = fmul fast float %3291, %3193
  %3295 = fadd fast float %3292, %3168
  %3296 = fadd fast float %3293, %3169
  %3297 = fadd fast float %3294, %3170
  %3298 = fadd fast float %3215, %3179
  %3299 = fsub fast float %3298, %3232
  %3300 = call float @dx.op.unary.f32(i32 7, float %3299)  ; Saturate(value)
  %3301 = fsub fast float %3300, %3179
  %3302 = fmul fast float %3301, %3193
  %3303 = fadd fast float %3302, %3179
  br label %3357

; <label>:3304                                    ; preds = %3192
  %3305 = and i32 %3195, 134217728
  %3306 = icmp eq i32 %3305, 0
  br i1 %3306, label %3341, label %3307

; <label>:3307                                    ; preds = %3304
  %3308 = call float @dx.op.unary.f32(i32 24, float %343)  ; Sqrt(value)
  %3309 = call float @dx.op.unary.f32(i32 24, float %347)  ; Sqrt(value)
  %3310 = call float @dx.op.unary.f32(i32 24, float %351)  ; Sqrt(value)
  %3311 = fadd fast float %3308, -5.000000e-01
  %3312 = fadd fast float %3309, -5.000000e-01
  %3313 = fadd fast float %3310, -5.000000e-01
  %3314 = fmul fast float %3311, %3193
  %3315 = fmul fast float %3312, %3193
  %3316 = fmul fast float %3313, %3193
  %3317 = fadd fast float %3314, 5.000000e-01
  %3318 = fadd fast float %3315, 5.000000e-01
  %3319 = fadd fast float %3316, 5.000000e-01
  %3320 = call float @dx.op.unary.f32(i32 24, float %3168)  ; Sqrt(value)
  %3321 = call float @dx.op.unary.f32(i32 24, float %3169)  ; Sqrt(value)
  %3322 = call float @dx.op.unary.f32(i32 24, float %3170)  ; Sqrt(value)
  %3323 = fmul fast float %3317, 2.000000e+00
  %3324 = fsub fast float 1.000000e+00, %3323
  %3325 = fmul fast float %3324, %3320
  %3326 = fadd fast float %3325, %3323
  %3327 = fmul fast float %3326, %3320
  %3328 = fmul fast float %3318, 2.000000e+00
  %3329 = fsub fast float 1.000000e+00, %3328
  %3330 = fmul fast float %3329, %3321
  %3331 = fadd fast float %3330, %3328
  %3332 = fmul fast float %3331, %3321
  %3333 = fmul fast float %3319, 2.000000e+00
  %3334 = fsub fast float 1.000000e+00, %3333
  %3335 = fmul fast float %3334, %3322
  %3336 = fadd fast float %3335, %3333
  %3337 = fmul fast float %3336, %3322
  %3338 = fmul fast float %3327, %3327
  %3339 = fmul fast float %3332, %3332
  %3340 = fmul fast float %3337, %3337
  br label %3357

; <label>:3341                                    ; preds = %3304
  %3342 = fmul fast float %343, %343
  %3343 = fmul fast float %347, %347
  %3344 = fmul fast float %351, %351
  %3345 = fadd fast float %3342, -1.000000e+00
  %3346 = fadd fast float %3343, -1.000000e+00
  %3347 = fadd fast float %3344, -1.000000e+00
  %3348 = fmul fast float %3193, %3345
  %3349 = fmul fast float %3193, %3346
  %3350 = fmul fast float %3193, %3347
  %3351 = fadd fast float %3348, 1.000000e+00
  %3352 = fadd fast float %3349, 1.000000e+00
  %3353 = fadd fast float %3350, 1.000000e+00
  %3354 = fmul fast float %3351, %3168
  %3355 = fmul fast float %3352, %3169
  %3356 = fmul fast float %3353, %3170
  br label %3357

; <label>:3357                                    ; preds = %3341, %3307, %3198, %3154
  %3358 = phi float [ %3303, %3198 ], [ %3179, %3307 ], [ %3179, %3341 ], [ 0x3FA23C0BE0000000, %3154 ]
  %3359 = phi float [ %3295, %3198 ], [ %3338, %3307 ], [ %3354, %3341 ], [ 1.000000e+00, %3154 ]
  %3360 = phi float [ %3296, %3198 ], [ %3339, %3307 ], [ %3355, %3341 ], [ 1.000000e+00, %3154 ]
  %3361 = phi float [ %3297, %3198 ], [ %3340, %3307 ], [ %3356, %3341 ], [ 1.000000e+00, %3154 ]
  %3362 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3363 = extractvalue %dx.types.CBufRet.i32 %3362, 1
  %3364 = and i32 %3363, 1
  %3365 = icmp ne i32 %3364, 0
  %3366 = add i32 %37, 356
  %3367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3366, i32 undef)  ; BufferLoad(srv,index,wot)
  %3368 = extractvalue %dx.types.ResRet.i32 %3367, 0
  %3369 = and i32 %3368, 32
  %3370 = icmp ne i32 %3369, 0
  %3371 = and i1 %3365, %3370
  %3372 = select i1 %3371, float 1.000000e+00, float %3359
  %3373 = select i1 %3371, float 0x3FD3333340000000, float %3360
  %3374 = select i1 %3371, float 0x3FD3333340000000, float %3361
  %3375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3376 = extractvalue %dx.types.ResRet.i32 %3375, 0
  %3377 = and i32 %3376, 32
  %3378 = icmp eq i32 %3377, 0
  br i1 %3378, label %3451, label %3379

; <label>:3379                                    ; preds = %3357
  %3380 = add i32 %37, 140
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3380, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = add i32 %37, 436
  %3384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3383, i32 undef)  ; BufferLoad(srv,index,wot)
  %3385 = extractvalue %dx.types.ResRet.i32 %3384, 0
  %3386 = add i32 %3385, 0
  %3387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3388 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3387, %dx.types.Handle %60, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3389 = extractvalue %dx.types.ResRet.f32 %3388, 0
  %3390 = extractvalue %dx.types.ResRet.f32 %3388, 1
  %3391 = extractvalue %dx.types.ResRet.f32 %3388, 2
  %3392 = extractvalue %dx.types.ResRet.f32 %3388, 3
  %3393 = and i32 %3382, 255
  %3394 = uitofp i32 %3393 to float
  %3395 = lshr i32 %3382, 8
  %3396 = and i32 %3395, 255
  %3397 = uitofp i32 %3396 to float
  %3398 = lshr i32 %3382, 16
  %3399 = and i32 %3398, 255
  %3400 = uitofp i32 %3399 to float
  %3401 = fmul fast float %3400, 0x3F70101000000000
  %3402 = fmul fast float %3389, %3394
  %3403 = fadd fast float %3402, %3397
  %3404 = fmul fast float %3403, 0x3F70101000000000
  %3405 = fadd fast float %3390, -5.000000e-01
  %3406 = fadd fast float %3392, -5.000000e-01
  %3407 = fmul fast float %3405, %3401
  %3408 = fmul fast float %3406, %3401
  %3409 = fadd fast float %3407, 5.000000e-01
  %3410 = fadd fast float %3408, 5.000000e-01
  %3411 = fmul fast float %3409, 2.000000e+00
  %3412 = fadd fast float %3411, -1.000000e+00
  %3413 = fmul fast float %3410, 2.000000e+00
  %3414 = fadd fast float %3413, -1.000000e+00
  %3415 = fadd fast float %3412, %3414
  %3416 = fmul fast float %3415, 5.000000e-01
  %3417 = fsub fast float %3412, %3414
  %3418 = fmul fast float %3417, 5.000000e-01
  %3419 = call float @dx.op.unary.f32(i32 6, float %3416)  ; FAbs(value)
  %3420 = fsub fast float 1.000000e+00, %3419
  %3421 = call float @dx.op.unary.f32(i32 6, float %3418)  ; FAbs(value)
  %3422 = fsub fast float %3420, %3421
  %3423 = call float @dx.op.dot3.f32(i32 55, float %3416, float %3418, float %3422, float %3416, float %3418, float %3422)  ; Dot3(ax,ay,az,bx,by,bz)
  %3424 = call float @dx.op.unary.f32(i32 25, float %3423)  ; Rsqrt(value)
  %3425 = fmul fast float %3416, %3424
  %3426 = fmul fast float %3418, %3424
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = and i32 %3428, 67108864
  %3430 = icmp eq i32 %3429, 0
  br i1 %3430, label %3447, label %3431

; <label>:3431                                    ; preds = %3379
  %3432 = add i32 %37, 328
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3432, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = and i32 %3434, 65535
  %3436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3435)  ; LegacyF16ToF32(value)
  %3437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %3438 = extractvalue %dx.types.ResRet.i32 %3437, 0
  %3439 = and i32 %3438, 65535
  %3440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3439)  ; LegacyF16ToF32(value)
  %3441 = lshr i32 %3434, 16
  %3442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3441)  ; LegacyF16ToF32(value)
  %3443 = fsub fast float %3404, %3442
  %3444 = fmul fast float %3443, %3436
  %3445 = fadd fast float %3444, %3440
  %3446 = call float @dx.op.unary.f32(i32 7, float %3445)  ; Saturate(value)
  br label %3447

; <label>:3447                                    ; preds = %3431, %3379
  %3448 = phi float [ %3446, %3431 ], [ %3404, %3379 ]
  %3449 = call float @dx.op.dot2.f32(i32 54, float %3425, float %3426, float %2868, float %2869)  ; Dot2(ax,ay,bx,by)
  %3450 = call float @dx.op.dot2.f32(i32 54, float %3425, float %3426, float %2870, float %2871)  ; Dot2(ax,ay,bx,by)
  br label %3451

; <label>:3451                                    ; preds = %3447, %3357
  %3452 = phi float [ %3448, %3447 ], [ 0x3FD6666660000000, %3357 ]
  %3453 = phi float [ %3449, %3447 ], [ 0.000000e+00, %3357 ]
  %3454 = phi float [ %3450, %3447 ], [ 0.000000e+00, %3357 ]
  %3455 = phi float [ %3391, %3447 ], [ 1.000000e+00, %3357 ]
  %3456 = add i32 %37, 208
  %3457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3458 = extractvalue %dx.types.ResRet.i32 %3457, 0
  %3459 = lshr i32 %3458, 22
  %3460 = shl nuw nsw i32 %3459, 5
  %3461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3460)  ; LegacyF16ToF32(value)
  %3462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3463 = extractvalue %dx.types.ResRet.i32 %3462, 0
  %3464 = and i32 %3463, 64
  %3465 = icmp eq i32 %3464, 0
  br i1 %3465, label %3499, label %3466

; <label>:3466                                    ; preds = %3451
  %3467 = add i32 %37, 452
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = add i32 %3469, 0
  %3471 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3470, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.i32 %3472, 0
  %3474 = and i32 %3473, 131072
  %3475 = icmp eq i32 %3474, 0
  %3476 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3471, %dx.types.Handle %60, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3477 = extractvalue %dx.types.ResRet.f32 %3476, 0
  %3478 = extractvalue %dx.types.ResRet.f32 %3476, 1
  %3479 = extractvalue %dx.types.ResRet.f32 %3476, 2
  %3480 = fmul fast float %3477, %331
  %3481 = fmul fast float %3478, %334
  %3482 = fmul fast float %3479, %337
  br i1 %3475, label %3489, label %3483

; <label>:3483                                    ; preds = %3466
  %3484 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3485 = extractvalue %dx.types.CBufRet.f32 %3484, 0
  %3486 = fmul fast float %3485, %3480
  %3487 = fmul fast float %3485, %3481
  %3488 = fmul fast float %3485, %3482
  br label %3489

; <label>:3489                                    ; preds = %3483, %3466
  %3490 = phi float [ %3486, %3483 ], [ %3480, %3466 ]
  %3491 = phi float [ %3487, %3483 ], [ %3481, %3466 ]
  %3492 = phi float [ %3488, %3483 ], [ %3482, %3466 ]
  %3493 = fmul fast float %3490, %3461
  %3494 = select i1 %199, float %3493, float %3490
  %3495 = call float @dx.op.dot3.f32(i32 55, float %3494, float %3491, float %3492, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3496 = select i1 %199, float 0.000000e+00, float %3490
  %3497 = select i1 %199, float %3495, float %3491
  %3498 = select i1 %199, float 0.000000e+00, float %3492
  br label %3499

; <label>:3499                                    ; preds = %3489, %3451
  %3500 = phi float [ %3496, %3489 ], [ 0.000000e+00, %3451 ]
  %3501 = phi float [ %3497, %3489 ], [ 0.000000e+00, %3451 ]
  %3502 = phi float [ %3498, %3489 ], [ 0.000000e+00, %3451 ]
  %3503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3504 = extractvalue %dx.types.ResRet.i32 %3503, 0
  %3505 = and i32 %3504, 10240
  %3506 = icmp eq i32 %3505, 0
  br i1 %3506, label %3551, label %3507

; <label>:3507                                    ; preds = %3499
  %3508 = add i32 %37, 516
  %3509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3508, i32 undef)  ; BufferLoad(srv,index,wot)
  %3510 = extractvalue %dx.types.ResRet.i32 %3509, 0
  %3511 = add i32 %3510, 0
  %3512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3511, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3513 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3512, %dx.types.Handle %61, float %2964, float %2965, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3514 = extractvalue %dx.types.ResRet.f32 %3513, 1
  %3515 = extractvalue %dx.types.ResRet.f32 %3513, 3
  %3516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3517 = extractvalue %dx.types.ResRet.i32 %3516, 0
  %3518 = and i32 %3517, 1048576
  %3519 = icmp ne i32 %3518, 0
  %3520 = and i32 %3517, 8192
  %3521 = icmp eq i32 %3520, 0
  br i1 %3521, label %3537, label %3522

; <label>:3522                                    ; preds = %3507
  %3523 = extractvalue %dx.types.ResRet.f32 %3513, 2
  %3524 = select i1 %3519, float %3523, float %3514
  %3525 = extractvalue %dx.types.ResRet.f32 %3513, 0
  %3526 = select i1 %3519, float %3525, float %3514
  %3527 = add i32 %37, 144
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3527, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = lshr i32 %3529, 16
  %3531 = and i32 %3530, 255
  %3532 = uitofp i32 %3531 to float
  %3533 = fmul fast float %3532, 0x3F80101020000000
  %3534 = fmul fast float %3533, %3526
  %3535 = fmul fast float %3533, %3514
  %3536 = fmul fast float %3533, %3524
  br label %3537

; <label>:3537                                    ; preds = %3522, %3507
  %3538 = phi float [ %3534, %3522 ], [ 0.000000e+00, %3507 ]
  %3539 = phi float [ %3535, %3522 ], [ 0.000000e+00, %3507 ]
  %3540 = phi float [ %3536, %3522 ], [ 0.000000e+00, %3507 ]
  %3541 = and i32 %3517, 2048
  %3542 = icmp eq i32 %3541, 0
  br i1 %3542, label %3551, label %3543

; <label>:3543                                    ; preds = %3537
  %3544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3456, i32 undef)  ; BufferLoad(srv,index,wot)
  %3545 = extractvalue %dx.types.ResRet.i32 %3544, 0
  %3546 = shl i32 %3545, 4
  %3547 = and i32 %3546, 32752
  %3548 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3547)  ; LegacyF16ToF32(value)
  %3549 = fmul fast float %3548, %3515
  %3550 = call float @dx.op.binary.f32(i32 35, float %3549, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3551

; <label>:3551                                    ; preds = %3543, %3537, %3499
  %3552 = phi float [ %3538, %3543 ], [ %3538, %3537 ], [ 0.000000e+00, %3499 ]
  %3553 = phi float [ %3539, %3543 ], [ %3539, %3537 ], [ 0.000000e+00, %3499 ]
  %3554 = phi float [ %3540, %3543 ], [ %3540, %3537 ], [ 0.000000e+00, %3499 ]
  %3555 = phi float [ %3550, %3543 ], [ 0x3F70101020000000, %3537 ], [ 0x3F70101020000000, %3499 ]
  %3556 = add i32 %37, 144
  %3557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3556, i32 undef)  ; BufferLoad(srv,index,wot)
  %3558 = extractvalue %dx.types.ResRet.i32 %3557, 0
  %3559 = and i32 %3558, 255
  %3560 = uitofp i32 %3559 to float
  %3561 = lshr i32 %3558, 8
  %3562 = and i32 %3561, 255
  %3563 = uitofp i32 %3562 to float
  %3564 = call float @dx.op.dot3.f32(i32 55, float %3372, float %3373, float %3374, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3565 = fmul fast float %3563, %3564
  %3566 = fadd fast float %3565, %3560
  %3567 = fmul fast float %3566, 0x3F70101020000000
  %3568 = call float @dx.op.unary.f32(i32 7, float %3567)  ; Saturate(value)
  br i1 %2856, label %3569, label %3577

; <label>:3569                                    ; preds = %3551
  %3570 = fsub fast float 1.000000e+00, %3152
  %3571 = fmul fast float %3570, %2841
  %3572 = fmul fast float %3570, %2842
  %3573 = fmul fast float %3570, %2843
  %3574 = fmul fast float %3570, %2847
  %3575 = fmul fast float %3570, %2848
  %3576 = fmul fast float %3570, %2849
  br label %3577

; <label>:3577                                    ; preds = %3569, %3551
  %3578 = phi float [ %3571, %3569 ], [ %2841, %3551 ]
  %3579 = phi float [ %3572, %3569 ], [ %2842, %3551 ]
  %3580 = phi float [ %3573, %3569 ], [ %2843, %3551 ]
  %3581 = phi float [ %3574, %3569 ], [ %2847, %3551 ]
  %3582 = phi float [ %3575, %3569 ], [ %2848, %3551 ]
  %3583 = phi float [ %3576, %3569 ], [ %2849, %3551 ]
  %3584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2857, i32 undef)  ; BufferLoad(srv,index,wot)
  %3585 = extractvalue %dx.types.ResRet.i32 %3584, 0
  %3586 = and i32 %3585, 3
  %3587 = icmp eq i32 %3586, 3
  br i1 %3587, label %3666, label %3588

; <label>:3588                                    ; preds = %3577
  %3589 = and i32 %3585, 16
  %3590 = icmp ne i32 %3589, 0
  %3591 = select i1 %3590, float %3152, float 0.000000e+00
  %3592 = icmp eq i32 %3586, 0
  br i1 %3592, label %3593, label %3621

; <label>:3593                                    ; preds = %3588
  %3594 = and i32 %3585, 64
  %3595 = icmp ne i32 %3594, 0
  %3596 = select i1 %3595, float %3152, float 0.000000e+00
  %3597 = fsub fast float %3372, %3578
  %3598 = fsub fast float %3373, %3579
  %3599 = fsub fast float %3374, %3580
  %3600 = fmul fast float %3591, %3597
  %3601 = fmul fast float %3591, %3598
  %3602 = fmul fast float %3591, %3599
  %3603 = fadd fast float %3600, %3578
  %3604 = fadd fast float %3601, %3579
  %3605 = fadd fast float %3602, %3580
  %3606 = fsub fast float %3358, %2850
  %3607 = fmul fast float %3591, %3606
  %3608 = fadd fast float %3607, %2850
  %3609 = fsub fast float %3500, %3581
  %3610 = fsub fast float %3501, %3582
  %3611 = fsub fast float %3502, %3583
  %3612 = fmul fast float %3596, %3609
  %3613 = fmul fast float %3596, %3610
  %3614 = fmul fast float %3596, %3611
  %3615 = fadd fast float %3612, %3581
  %3616 = fadd fast float %3613, %3582
  %3617 = fadd fast float %3614, %3583
  %3618 = fsub fast float %3568, %2854
  %3619 = fmul fast float %3591, %3618
  %3620 = fadd fast float %3619, %2854
  br label %3666

; <label>:3621                                    ; preds = %3588
  %3622 = icmp eq i32 %3586, 1
  br i1 %3622, label %3623, label %3636

; <label>:3623                                    ; preds = %3621
  %3624 = fadd fast float %3372, -1.000000e+00
  %3625 = fadd fast float %3373, -1.000000e+00
  %3626 = fadd fast float %3374, -1.000000e+00
  %3627 = fmul fast float %3591, %3624
  %3628 = fmul fast float %3591, %3625
  %3629 = fmul fast float %3591, %3626
  %3630 = fadd fast float %3627, 1.000000e+00
  %3631 = fadd fast float %3628, 1.000000e+00
  %3632 = fadd fast float %3629, 1.000000e+00
  %3633 = fmul fast float %3630, %3578
  %3634 = fmul fast float %3631, %3579
  %3635 = fmul fast float %3632, %3580
  br label %3666

; <label>:3636                                    ; preds = %3621
  %3637 = icmp eq i32 %3586, 2
  br i1 %3637, label %3638, label %3666

; <label>:3638                                    ; preds = %3636
  %3639 = call float @dx.op.unary.f32(i32 24, float %3372)  ; Sqrt(value)
  %3640 = call float @dx.op.unary.f32(i32 24, float %3373)  ; Sqrt(value)
  %3641 = call float @dx.op.unary.f32(i32 24, float %3374)  ; Sqrt(value)
  %3642 = fadd fast float %3639, -5.000000e-01
  %3643 = fadd fast float %3640, -5.000000e-01
  %3644 = fadd fast float %3641, -5.000000e-01
  %3645 = fmul fast float %3642, %3591
  %3646 = fmul fast float %3643, %3591
  %3647 = fmul fast float %3644, %3591
  %3648 = fadd fast float %3645, 5.000000e-01
  %3649 = fadd fast float %3646, 5.000000e-01
  %3650 = fadd fast float %3647, 5.000000e-01
  %3651 = fmul fast float %3648, 2.000000e+00
  %3652 = fsub fast float 1.000000e+00, %3651
  %3653 = fmul fast float %3652, %3578
  %3654 = fadd fast float %3653, %3651
  %3655 = fmul fast float %3654, %3578
  %3656 = fmul fast float %3649, 2.000000e+00
  %3657 = fsub fast float 1.000000e+00, %3656
  %3658 = fmul fast float %3657, %3579
  %3659 = fadd fast float %3658, %3656
  %3660 = fmul fast float %3659, %3579
  %3661 = fmul fast float %3650, 2.000000e+00
  %3662 = fsub fast float 1.000000e+00, %3661
  %3663 = fmul fast float %3662, %3580
  %3664 = fadd fast float %3663, %3661
  %3665 = fmul fast float %3664, %3580
  br label %3666

; <label>:3666                                    ; preds = %3638, %3636, %3623, %3593, %3577
  %3667 = phi float [ %3578, %3577 ], [ %3655, %3638 ], [ %3578, %3636 ], [ %3633, %3623 ], [ %3603, %3593 ]
  %3668 = phi float [ %3579, %3577 ], [ %3660, %3638 ], [ %3579, %3636 ], [ %3634, %3623 ], [ %3604, %3593 ]
  %3669 = phi float [ %3580, %3577 ], [ %3665, %3638 ], [ %3580, %3636 ], [ %3635, %3623 ], [ %3605, %3593 ]
  %3670 = phi float [ %3581, %3577 ], [ %3581, %3638 ], [ %3581, %3636 ], [ %3581, %3623 ], [ %3615, %3593 ]
  %3671 = phi float [ %3582, %3577 ], [ %3582, %3638 ], [ %3582, %3636 ], [ %3582, %3623 ], [ %3616, %3593 ]
  %3672 = phi float [ %3583, %3577 ], [ %3583, %3638 ], [ %3583, %3636 ], [ %3583, %3623 ], [ %3617, %3593 ]
  %3673 = phi float [ %2850, %3577 ], [ %2850, %3638 ], [ %2850, %3636 ], [ %2850, %3623 ], [ %3608, %3593 ]
  %3674 = phi float [ %2854, %3577 ], [ %2854, %3638 ], [ %2854, %3636 ], [ %2854, %3623 ], [ %3620, %3593 ]
  %3675 = and i32 %3585, 12
  %3676 = icmp eq i32 %3675, 12
  br i1 %3676, label %3783, label %3677

; <label>:3677                                    ; preds = %3666
  %3678 = and i32 %3585, 2097184
  %3679 = icmp eq i32 %3678, 2097184
  %3680 = select i1 %3679, float %3152, float 0.000000e+00
  %3681 = and i32 %3585, 4194336
  %3682 = icmp eq i32 %3681, 4194336
  %3683 = select i1 %3682, float %3152, float 0.000000e+00
  %3684 = and i32 %3585, 8388640
  %3685 = icmp eq i32 %3684, 8388640
  %3686 = select i1 %3685, float %3152, float 0.000000e+00
  %3687 = and i32 %3585, 2048
  %3688 = icmp ne i32 %3687, 0
  %3689 = select i1 %3688, float %3152, float 0.000000e+00
  %3690 = and i32 %3585, 8192
  %3691 = icmp ne i32 %3690, 0
  %3692 = select i1 %3691, float %3152, float 0.000000e+00
  %3693 = icmp eq i32 %3675, 0
  br i1 %3693, label %3694, label %3719

; <label>:3694                                    ; preds = %3677
  %3695 = fsub fast float %3453, %2839
  %3696 = fsub fast float %3454, %2840
  %3697 = fmul fast float %3680, %3695
  %3698 = fmul fast float %3680, %3696
  %3699 = fadd fast float %3697, %2839
  %3700 = fadd fast float %3698, %2840
  %3701 = fsub fast float %3455, %2852
  %3702 = fmul fast float %3683, %3701
  %3703 = fadd fast float %3702, %2852
  %3704 = fsub fast float %3452, %2851
  %3705 = fmul fast float %3686, %3704
  %3706 = fadd fast float %3705, %2851
  %3707 = fsub fast float %3555, %2853
  %3708 = fmul fast float %3689, %3707
  %3709 = fadd fast float %3708, %2853
  %3710 = fsub fast float %3552, %2844
  %3711 = fsub fast float %3553, %2845
  %3712 = fsub fast float %3554, %2846
  %3713 = fmul fast float %3692, %3710
  %3714 = fmul fast float %3692, %3711
  %3715 = fmul fast float %3692, %3712
  %3716 = fadd fast float %3713, %2844
  %3717 = fadd fast float %3714, %2845
  %3718 = fadd fast float %3715, %2846
  br label %3783

; <label>:3719                                    ; preds = %3677
  %3720 = icmp eq i32 %3675, 4
  br i1 %3720, label %3721, label %3761

; <label>:3721                                    ; preds = %3719
  %3722 = fmul fast float %3680, %3453
  %3723 = fmul fast float %3680, %3454
  %3724 = fadd fast float %3722, %2839
  %3725 = fadd fast float %3723, %2840
  %3726 = call float @dx.op.binary.f32(i32 36, float %2852, float %3455)  ; FMin(a,b)
  %3727 = fsub fast float %3726, %2852
  %3728 = fmul fast float %3727, %3683
  %3729 = fadd fast float %3728, %2852
  %3730 = fadd fast float %3452, %2851
  %3731 = fmul fast float %3730, 0x3FF337FAE0000000
  %3732 = fmul fast float %2851, %2851
  %3733 = fmul fast float %3452, %3452
  %3734 = fadd fast float %3733, %3732
  %3735 = fmul fast float %3734, 0x3FE5152B00000000
  %3736 = fmul fast float %2851, 0xBFCC1F85E0000000
  %3737 = fmul fast float %3736, %3452
  %3738 = fadd fast float %3737, 0xBFE1363700000000
  %3739 = fadd fast float %3738, %3731
  %3740 = fsub fast float %3739, %3735
  %3741 = fmul fast float %3730, 0x3FBA6F0D00000000
  %3742 = fmul fast float %3734, 0x3FD0432880000000
  %3743 = fmul fast float %2851, 0xBFEF110800000000
  %3744 = fmul fast float %3743, %3452
  %3745 = fadd fast float %3744, 1.000000e+00
  %3746 = fsub fast float %3745, %3741
  %3747 = fadd fast float %3746, %3742
  %3748 = fdiv fast float %3740, %3747
  %3749 = call float @dx.op.unary.f32(i32 7, float %3748)  ; Saturate(value)
  %3750 = fsub fast float %3749, %2851
  %3751 = fmul fast float %3750, %3686
  %3752 = fadd fast float %3751, %2851
  %3753 = fmul fast float %3689, %3555
  %3754 = fadd fast float %3753, %2853
  %3755 = fmul fast float %3692, %3552
  %3756 = fmul fast float %3692, %3553
  %3757 = fmul fast float %3692, %3554
  %3758 = fadd fast float %3755, %2844
  %3759 = fadd fast float %3756, %2845
  %3760 = fadd fast float %3757, %2846
  br label %3783

; <label>:3761                                    ; preds = %3719
  %3762 = icmp eq i32 %3675, 8
  br i1 %3762, label %3763, label %3783

; <label>:3763                                    ; preds = %3761
  %3764 = fmul fast float %3680, %3453
  %3765 = fmul fast float %3680, %3454
  %3766 = fadd fast float %3764, %2839
  %3767 = fadd fast float %3765, %2840
  %3768 = call float @dx.op.binary.f32(i32 36, float %2852, float %3455)  ; FMin(a,b)
  %3769 = fsub fast float %3768, %2852
  %3770 = fmul fast float %3769, %3683
  %3771 = fadd fast float %3770, %2852
  %3772 = fsub fast float %3452, %2851
  %3773 = fmul fast float %3686, %3772
  %3774 = fadd fast float %3773, %2851
  %3775 = fmul fast float %3689, %3555
  %3776 = fadd fast float %3775, %2853
  %3777 = fmul fast float %3692, %3552
  %3778 = fmul fast float %3692, %3553
  %3779 = fmul fast float %3692, %3554
  %3780 = fadd fast float %3777, %2844
  %3781 = fadd fast float %3778, %2845
  %3782 = fadd fast float %3779, %2846
  br label %3783

; <label>:3783                                    ; preds = %3763, %3761, %3721, %3694, %3666, %3151, %2855, %2838
  %3784 = phi float [ %2839, %3666 ], [ %2839, %3151 ], [ %2839, %2838 ], [ %2839, %2855 ], [ %3699, %3694 ], [ %3724, %3721 ], [ %2839, %3761 ], [ %3766, %3763 ]
  %3785 = phi float [ %2840, %3666 ], [ %2840, %3151 ], [ %2840, %2838 ], [ %2840, %2855 ], [ %3700, %3694 ], [ %3725, %3721 ], [ %2840, %3761 ], [ %3767, %3763 ]
  %3786 = phi float [ %3667, %3666 ], [ %2841, %3151 ], [ %2841, %2838 ], [ %2841, %2855 ], [ %3667, %3694 ], [ %3667, %3721 ], [ %3667, %3761 ], [ %3667, %3763 ]
  %3787 = phi float [ %3668, %3666 ], [ %2842, %3151 ], [ %2842, %2838 ], [ %2842, %2855 ], [ %3668, %3694 ], [ %3668, %3721 ], [ %3668, %3761 ], [ %3668, %3763 ]
  %3788 = phi float [ %3669, %3666 ], [ %2843, %3151 ], [ %2843, %2838 ], [ %2843, %2855 ], [ %3669, %3694 ], [ %3669, %3721 ], [ %3669, %3761 ], [ %3669, %3763 ]
  %3789 = phi float [ %2844, %3666 ], [ %2844, %3151 ], [ %2844, %2838 ], [ %2844, %2855 ], [ %3716, %3694 ], [ %3758, %3721 ], [ %2844, %3761 ], [ %3780, %3763 ]
  %3790 = phi float [ %2845, %3666 ], [ %2845, %3151 ], [ %2845, %2838 ], [ %2845, %2855 ], [ %3717, %3694 ], [ %3759, %3721 ], [ %2845, %3761 ], [ %3781, %3763 ]
  %3791 = phi float [ %2846, %3666 ], [ %2846, %3151 ], [ %2846, %2838 ], [ %2846, %2855 ], [ %3718, %3694 ], [ %3760, %3721 ], [ %2846, %3761 ], [ %3782, %3763 ]
  %3792 = phi float [ %3670, %3666 ], [ %2847, %3151 ], [ %2847, %2838 ], [ %2847, %2855 ], [ %3670, %3694 ], [ %3670, %3721 ], [ %3670, %3761 ], [ %3670, %3763 ]
  %3793 = phi float [ %3671, %3666 ], [ %2848, %3151 ], [ %2848, %2838 ], [ %2848, %2855 ], [ %3671, %3694 ], [ %3671, %3721 ], [ %3671, %3761 ], [ %3671, %3763 ]
  %3794 = phi float [ %3672, %3666 ], [ %2849, %3151 ], [ %2849, %2838 ], [ %2849, %2855 ], [ %3672, %3694 ], [ %3672, %3721 ], [ %3672, %3761 ], [ %3672, %3763 ]
  %3795 = phi float [ %3673, %3666 ], [ %2850, %3151 ], [ %2850, %2838 ], [ %2850, %2855 ], [ %3673, %3694 ], [ %3673, %3721 ], [ %3673, %3761 ], [ %3673, %3763 ]
  %3796 = phi float [ %2851, %3666 ], [ %2851, %3151 ], [ %2851, %2838 ], [ %2851, %2855 ], [ %3706, %3694 ], [ %3752, %3721 ], [ %2851, %3761 ], [ %3774, %3763 ]
  %3797 = phi float [ %2852, %3666 ], [ %2852, %3151 ], [ %2852, %2838 ], [ %2852, %2855 ], [ %3703, %3694 ], [ %3729, %3721 ], [ %2852, %3761 ], [ %3771, %3763 ]
  %3798 = phi float [ %2853, %3666 ], [ %2853, %3151 ], [ %2853, %2838 ], [ %2853, %2855 ], [ %3709, %3694 ], [ %3754, %3721 ], [ %2853, %3761 ], [ %3776, %3763 ]
  %3799 = phi float [ %3674, %3666 ], [ %2854, %3151 ], [ %2854, %2838 ], [ %2854, %2855 ], [ %3674, %3694 ], [ %3674, %3721 ], [ %3674, %3761 ], [ %3674, %3763 ]
  %3800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3801 = extractvalue %dx.types.CBufRet.f32 %3800, 0
  %3802 = call float @dx.op.dot2.f32(i32 54, float %3784, float %3785, float %3784, float %3785)  ; Dot2(ax,ay,bx,by)
  %3803 = fmul fast float %3802, 0x3FE3333340000000
  %3804 = fsub fast float 1.000000e+00, %3803
  %3805 = call float @dx.op.dot3.f32(i32 55, float %3784, float %3785, float %3804, float %3784, float %3785, float %3804)  ; Dot3(ax,ay,az,bx,by,bz)
  %3806 = call float @dx.op.unary.f32(i32 25, float %3805)  ; Rsqrt(value)
  %3807 = fmul fast float %3806, %3784
  %3808 = fmul fast float %3806, %3785
  %3809 = fmul fast float %3804, %3806
  %3810 = fmul fast float %3809, %73
  %3811 = fmul fast float %3809, %75
  %3812 = fmul fast float %3809, %77
  %3813 = fmul fast float %3807, %45
  %3814 = fmul fast float %3807, %46
  %3815 = fmul fast float %3807, %47
  %3816 = fadd fast float %3810, %3813
  %3817 = fadd fast float %3811, %3814
  %3818 = fadd fast float %3812, %3815
  %3819 = fmul fast float %87, %3808
  %3820 = fmul fast float %88, %3808
  %3821 = fmul fast float %89, %3808
  %3822 = fadd fast float %3816, %3819
  %3823 = fadd fast float %3817, %3820
  %3824 = fadd fast float %3818, %3821
  %3825 = call float @dx.op.dot3.f32(i32 55, float %3822, float %3823, float %3824, float %3822, float %3823, float %3824)  ; Dot3(ax,ay,az,bx,by,bz)
  %3826 = call float @dx.op.unary.f32(i32 25, float %3825)  ; Rsqrt(value)
  %3827 = fmul fast float %3822, %3826
  %3828 = fmul fast float %3823, %3826
  %3829 = fmul fast float %3824, %3826
  %3830 = add i32 %37, 392
  %3831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %3832 = extractvalue %dx.types.ResRet.i32 %3831, 0
  %3833 = extractvalue %dx.types.ResRet.i32 %3831, 1
  %3834 = extractvalue %dx.types.ResRet.i32 %3831, 2
  %3835 = extractvalue %dx.types.ResRet.i32 %3831, 3
  %3836 = bitcast i32 %3832 to float
  %3837 = bitcast i32 %3833 to float
  %3838 = bitcast i32 %3834 to float
  %3839 = bitcast i32 %3835 to float
  %3840 = fsub fast float %3786, %3836
  %3841 = fsub fast float %3787, %3837
  %3842 = fsub fast float %3788, %3838
  %3843 = fmul fast float %3840, %157
  %3844 = fmul fast float %3841, %157
  %3845 = fmul fast float %3842, %157
  %3846 = fadd fast float %3843, %3836
  %3847 = fadd fast float %3844, %3837
  %3848 = fadd fast float %3845, %3838
  %3849 = fsub fast float %960, %3839
  %3850 = fmul fast float %3849, %157
  %3851 = fadd fast float %3850, %3839
  %3852 = fadd fast float %3795, 0xBFB99999A0000000
  %3853 = call float @dx.op.unary.f32(i32 7, float %3852)  ; Saturate(value)
  %3854 = fmul fast float %3853, 0x3FF1C71C80000000
  %3855 = call float @dx.op.binary.f32(i32 36, float %3795, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3856 = fsub fast float 1.000000e+00, %3854
  %3857 = call float @dx.op.unary.f32(i32 7, float %3856)  ; Saturate(value)
  %3858 = fmul fast float %3846, %3857
  %3859 = fmul fast float %3847, %3857
  %3860 = fmul fast float %3848, %3857
  %3861 = call float @dx.op.unary.f32(i32 7, float %3858)  ; Saturate(value)
  %3862 = call float @dx.op.unary.f32(i32 7, float %3859)  ; Saturate(value)
  %3863 = call float @dx.op.unary.f32(i32 7, float %3860)  ; Saturate(value)
  %3864 = fmul fast float %3846, %3854
  %3865 = fmul fast float %3847, %3854
  %3866 = fmul fast float %3848, %3854
  %3867 = fadd fast float %3864, %3855
  %3868 = fadd fast float %3865, %3855
  %3869 = fadd fast float %3866, %3855
  %3870 = call float @dx.op.unary.f32(i32 7, float %3867)  ; Saturate(value)
  %3871 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3872 = call float @dx.op.unary.f32(i32 7, float %3869)  ; Saturate(value)
  %3873 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  %3874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %368, i32 undef)  ; BufferLoad(srv,index,wot)
  %3875 = extractvalue %dx.types.ResRet.i32 %3874, 0
  %3876 = and i32 %3875, 1
  %3877 = icmp eq i32 %3876, 0
  br i1 %3877, label %3892, label %3878

; <label>:3878                                    ; preds = %3783
  %3879 = call float @dx.op.binary.f32(i32 35, float %3862, float %3863)  ; FMax(a,b)
  %3880 = call float @dx.op.binary.f32(i32 35, float %3861, float %3879)  ; FMax(a,b)
  %3881 = fcmp fast ogt float %3880, 0.000000e+00
  %3882 = bitcast float %3880 to i32
  %3883 = sub nsw i32 2129859010, %3882
  %3884 = bitcast i32 %3883 to float
  %3885 = select i1 %3881, float %3884, float 0.000000e+00
  %3886 = fmul fast float %3861, %3789
  %3887 = fmul fast float %3862, %3790
  %3888 = fmul fast float %3863, %3791
  %3889 = fmul fast float %3886, %3885
  %3890 = fmul fast float %3887, %3885
  %3891 = fmul fast float %3888, %3885
  br label %3892

; <label>:3892                                    ; preds = %3878, %3783
  %3893 = phi float [ %3889, %3878 ], [ %3789, %3783 ]
  %3894 = phi float [ %3890, %3878 ], [ %3790, %3783 ]
  %3895 = phi float [ %3891, %3878 ], [ %3791, %3783 ]
  %3896 = fadd fast float %3861, 0xBFD51EB860000000
  %3897 = fadd fast float %3862, 0xBFD51EB860000000
  %3898 = fadd fast float %3863, 0xBFD51EB860000000
  %3899 = fmul fast float %3896, %3896
  %3900 = fmul fast float %3897, %3897
  %3901 = fmul fast float %3898, %3898
  %3902 = fmul fast float %3899, %3899
  %3903 = fmul fast float %3902, 1.000000e+02
  %3904 = fmul fast float %3900, %3900
  %3905 = fmul fast float %3904, 1.000000e+02
  %3906 = fmul fast float %3901, %3901
  %3907 = fmul fast float %3906, 1.000000e+02
  %3908 = fadd fast float %3903, 3.500000e+00
  %3909 = fadd fast float %3905, 3.500000e+00
  %3910 = fadd fast float %3907, 3.500000e+00
  %3911 = call float @dx.op.binary.f32(i32 35, float %3893, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3912 = call float @dx.op.binary.f32(i32 35, float %3894, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3913 = call float @dx.op.binary.f32(i32 35, float %3895, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3914 = fdiv fast float %3908, %3911
  %3915 = fdiv fast float %3909, %3912
  %3916 = fdiv fast float %3910, %3913
  %3917 = fmul fast float %3798, 0xBFF7154760000000
  %3918 = fmul fast float %3917, %3914
  %3919 = call float @dx.op.unary.f32(i32 21, float %3918)  ; Exp(value)
  %3920 = fmul fast float %3919, 2.500000e-01
  %3921 = fmul fast float %3798, 0xBFDEC709E0000000
  %3922 = fmul fast float %3921, %3914
  %3923 = call float @dx.op.unary.f32(i32 21, float %3922)  ; Exp(value)
  %3924 = fmul fast float %3923, 7.500000e-01
  %3925 = fmul fast float %3917, %3915
  %3926 = call float @dx.op.unary.f32(i32 21, float %3925)  ; Exp(value)
  %3927 = fmul fast float %3926, 2.500000e-01
  %3928 = fmul fast float %3921, %3915
  %3929 = call float @dx.op.unary.f32(i32 21, float %3928)  ; Exp(value)
  %3930 = fmul fast float %3929, 7.500000e-01
  %3931 = fmul fast float %3917, %3916
  %3932 = call float @dx.op.unary.f32(i32 21, float %3931)  ; Exp(value)
  %3933 = fmul fast float %3932, 2.500000e-01
  %3934 = fmul fast float %3921, %3916
  %3935 = call float @dx.op.unary.f32(i32 21, float %3934)  ; Exp(value)
  %3936 = fmul fast float %3935, 7.500000e-01
  %3937 = fadd fast float %3920, %3924
  %3938 = fadd fast float %3927, %3930
  %3939 = fadd fast float %3933, %3936
  %3940 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3941 = extractvalue %dx.types.CBufRet.i32 %3940, 3
  %3942 = and i32 %3941, 8
  %3943 = icmp ne i32 %3942, 0
  %3944 = call float @dx.op.binary.f32(i32 35, float %3861, float %3846)  ; FMax(a,b)
  %3945 = call float @dx.op.binary.f32(i32 35, float %3862, float %3846)  ; FMax(a,b)
  %3946 = call float @dx.op.binary.f32(i32 35, float %3863, float %3846)  ; FMax(a,b)
  %3947 = call float @dx.op.dot3.f32(i32 55, float %3861, float %3862, float %3863, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3948 = select i1 %199, float %3846, float %3861
  %3949 = select i1 %199, float %3947, float %3862
  %3950 = select i1 %199, float 1.000000e+00, float %3863
  %3951 = select i1 %3943, float %3944, float %3948
  %3952 = select i1 %3943, float %3945, float %3949
  %3953 = select i1 %3943, float %3946, float %3950
  %3954 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3955 = extractvalue %dx.types.CBufRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.CBufRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.CBufRet.f32 %3954, 2
  %3958 = fadd fast float %3955, %123
  %3959 = fadd fast float %3956, %124
  %3960 = fadd fast float %3957, %125
  %3961 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3962 = extractvalue %dx.types.CBufRet.f32 %3961, 0
  %3963 = extractvalue %dx.types.CBufRet.f32 %3961, 1
  %3964 = fsub fast float %3958, %3962
  %3965 = fsub fast float %3959, %3963
  %3966 = fmul fast float %3964, %3964
  %3967 = fmul fast float %3965, %3965
  %3968 = fadd fast float %3966, %3967
  %3969 = call float @dx.op.unary.f32(i32 24, float %3968)  ; Sqrt(value)
  %3970 = extractvalue %dx.types.CBufRet.f32 %3961, 2
  %3971 = fcmp fast olt float %3969, %3970
  br i1 %3971, label %3972, label %4039

; <label>:3972                                    ; preds = %3892
  %3973 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3974 = extractvalue %dx.types.CBufRet.f32 %3973, 0
  %3975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3976 = extractvalue %dx.types.CBufRet.f32 %3975, 0
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 0
  %3979 = extractvalue %dx.types.CBufRet.f32 %3973, 1
  %3980 = extractvalue %dx.types.CBufRet.f32 %3975, 1
  %3981 = extractvalue %dx.types.CBufRet.f32 %3977, 1
  %3982 = extractvalue %dx.types.CBufRet.f32 %3973, 3
  %3983 = extractvalue %dx.types.CBufRet.f32 %3975, 3
  %3984 = extractvalue %dx.types.CBufRet.f32 %3977, 3
  %3985 = fadd fast float %3982, %3958
  %3986 = fadd fast float %3983, %3959
  %3987 = fadd fast float %3984, %3960
  %3988 = fmul fast float %3985, %3974
  %3989 = call float @dx.op.tertiary.f32(i32 46, float %3986, float %3976, float %3988)  ; FMad(a,b,c)
  %3990 = call float @dx.op.tertiary.f32(i32 46, float %3987, float %3978, float %3989)  ; FMad(a,b,c)
  %3991 = fmul fast float %3985, %3979
  %3992 = call float @dx.op.tertiary.f32(i32 46, float %3986, float %3980, float %3991)  ; FMad(a,b,c)
  %3993 = call float @dx.op.tertiary.f32(i32 46, float %3987, float %3981, float %3992)  ; FMad(a,b,c)
  %3994 = fsub fast float %3990, %3982
  %3995 = fsub fast float %3993, %3983
  %3996 = fsub fast float %3994, %3962
  %3997 = fadd fast float %3996, %3970
  %3998 = fsub fast float %3995, %3963
  %3999 = fadd fast float %3998, %3970
  %4000 = extractvalue %dx.types.CBufRet.f32 %3961, 3
  %4001 = fmul fast float %3997, %4000
  %4002 = fmul fast float %3999, %4000
  %4003 = call float @dx.op.unary.f32(i32 7, float %4001)  ; Saturate(value)
  %4004 = call float @dx.op.unary.f32(i32 7, float %4002)  ; Saturate(value)
  %4005 = fsub fast float 1.000000e+00, %4003
  %4006 = fsub fast float 1.000000e+00, %4004
  %4007 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %31, float %4005, float %4006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4008 = extractvalue %dx.types.ResRet.f32 %4007, 0
  %4009 = fcmp fast ugt float %4008, 0.000000e+00
  br i1 %4009, label %4010, label %4313

; <label>:4010                                    ; preds = %3972
  %4011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.f32 %4011, 2
  %4013 = fmul fast float %4012, %4008
  %4014 = extractvalue %dx.types.CBufRet.f32 %4011, 3
  %4015 = fadd fast float %4014, %4013
  %4016 = extractvalue %dx.types.CBufRet.f32 %3977, 2
  %4017 = fadd fast float %4015, %3984
  %4018 = fmul fast float %3990, %3978
  %4019 = call float @dx.op.tertiary.f32(i32 46, float %3993, float %3981, float %4018)  ; FMad(a,b,c)
  %4020 = call float @dx.op.tertiary.f32(i32 46, float %4017, float %4016, float %4019)  ; FMad(a,b,c)
  %4021 = fsub fast float %4020, %3984
  %4022 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4023 = extractvalue %dx.types.CBufRet.f32 %4022, 2
  %4024 = fsub fast float %4021, %4023
  %4025 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %31, float %4005, float %4006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4026 = extractvalue %dx.types.ResRet.f32 %4025, 0
  %4027 = extractvalue %dx.types.ResRet.f32 %4025, 1
  %4028 = extractvalue %dx.types.ResRet.f32 %4025, 2
  %4029 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %31, float %4005, float %4006, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4030 = extractvalue %dx.types.ResRet.f32 %4029, 0
  %4031 = extractvalue %dx.types.ResRet.f32 %4029, 1
  %4032 = extractvalue %dx.types.ResRet.f32 %4029, 2
  %4033 = fadd fast float %4030, %4026
  %4034 = fmul fast float %4033, 0x3F847AE140000000
  %4035 = fadd fast float %4031, %4027
  %4036 = fmul fast float %4035, 0x3F847AE140000000
  %4037 = fadd fast float %4032, %4028
  %4038 = fmul fast float %4037, 0x3F847AE140000000
  br label %4313

; <label>:4039                                    ; preds = %3892
  %4040 = and i32 %173, 1
  %4041 = icmp eq i32 %4040, 0
  br i1 %4041, label %4313, label %4042

; <label>:4042                                    ; preds = %4039
  %4043 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.f32 %4043, 0
  %4045 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4046 = extractvalue %dx.types.CBufRet.f32 %4045, 0
  %4047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4048 = extractvalue %dx.types.CBufRet.f32 %4047, 0
  %4049 = extractvalue %dx.types.CBufRet.f32 %4043, 1
  %4050 = extractvalue %dx.types.CBufRet.f32 %4045, 1
  %4051 = extractvalue %dx.types.CBufRet.f32 %4047, 1
  %4052 = extractvalue %dx.types.CBufRet.f32 %4043, 3
  %4053 = extractvalue %dx.types.CBufRet.f32 %4045, 3
  %4054 = extractvalue %dx.types.CBufRet.f32 %4047, 3
  %4055 = fadd fast float %4052, %3958
  %4056 = fadd fast float %4053, %3959
  %4057 = fadd fast float %4054, %3960
  %4058 = fmul fast float %4055, %4044
  %4059 = call float @dx.op.tertiary.f32(i32 46, float %4056, float %4046, float %4058)  ; FMad(a,b,c)
  %4060 = call float @dx.op.tertiary.f32(i32 46, float %4057, float %4048, float %4059)  ; FMad(a,b,c)
  %4061 = fmul fast float %4055, %4049
  %4062 = call float @dx.op.tertiary.f32(i32 46, float %4056, float %4050, float %4061)  ; FMad(a,b,c)
  %4063 = call float @dx.op.tertiary.f32(i32 46, float %4057, float %4051, float %4062)  ; FMad(a,b,c)
  %4064 = fsub fast float %4060, %4052
  %4065 = fsub fast float %4063, %4053
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 0
  %4068 = extractvalue %dx.types.CBufRet.f32 %4066, 1
  %4069 = extractvalue %dx.types.CBufRet.f32 %4066, 2
  %4070 = extractvalue %dx.types.CBufRet.f32 %4066, 3
  %4071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4071, 3
  %4073 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.i32 %4073, 0
  %4075 = extractvalue %dx.types.CBufRet.i32 %4073, 1
  %4076 = udiv i32 %4075, %4074
  %4077 = fsub fast float %4064, %4067
  %4078 = fsub fast float %4065, %4068
  %4079 = call float @dx.op.binary.f32(i32 35, float %4077, float 0.000000e+00)  ; FMax(a,b)
  %4080 = call float @dx.op.binary.f32(i32 35, float %4078, float 0.000000e+00)  ; FMax(a,b)
  %4081 = call float @dx.op.binary.f32(i32 36, float %4079, float %4069)  ; FMin(a,b)
  %4082 = call float @dx.op.binary.f32(i32 36, float %4080, float %4070)  ; FMin(a,b)
  %4083 = add i32 %4074, -1
  %4084 = add i32 %4076, -1
  %4085 = fmul fast float %4081, %4072
  %4086 = fmul fast float %4082, %4072
  %4087 = fptoui float %4085 to i32
  %4088 = fptoui float %4086 to i32
  %4089 = call i32 @dx.op.binary.i32(i32 40, i32 %4087, i32 %4083)  ; UMin(a,b)
  %4090 = call i32 @dx.op.binary.i32(i32 40, i32 %4088, i32 %4084)  ; UMin(a,b)
  %4091 = mul i32 %4090, %4074
  %4092 = add i32 %4091, %4089
  %4093 = shl i32 %4092, 2
  %4094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4093, i32 undef)  ; BufferLoad(srv,index,wot)
  %4095 = extractvalue %dx.types.ResRet.i32 %4094, 0
  %4096 = icmp eq i32 %4095, -1
  br i1 %4096, label %4313, label %4097

; <label>:4097                                    ; preds = %4042
  %4098 = mul i32 %4095, 148
  %4099 = add i32 %4098, 4
  %4100 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4099, i32 undef)  ; BufferLoad(srv,index,wot)
  %4101 = extractvalue %dx.types.ResRet.f32 %4100, 0
  %4102 = add i32 %4098, 8
  %4103 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4102, i32 undef)  ; BufferLoad(srv,index,wot)
  %4104 = extractvalue %dx.types.ResRet.f32 %4103, 0
  %4105 = add i32 %4098, 36
  %4106 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4105, i32 undef)  ; BufferLoad(srv,index,wot)
  %4107 = extractvalue %dx.types.ResRet.f32 %4106, 0
  %4108 = add i32 %4098, 60
  %4109 = add i32 %4098, 92
  %4110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4109, i32 undef)  ; BufferLoad(srv,index,wot)
  %4111 = extractvalue %dx.types.ResRet.i32 %4110, 0
  %4112 = add i32 %4098, 116
  %4113 = fsub fast float %4064, %4101
  %4114 = fsub fast float %4065, %4104
  %4115 = fmul fast float %4072, %4113
  %4116 = fmul fast float %4072, %4114
  %4117 = call float @dx.op.unary.f32(i32 7, float %4115)  ; Saturate(value)
  %4118 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4119 = fsub fast float 1.000000e+00, %4118
  %4120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4121 = extractvalue %dx.types.CBufRet.f32 %4120, 2
  %4122 = call float @dx.op.unary.f32(i32 83, float %4117)  ; DerivCoarseX(value)
  %4123 = call float @dx.op.unary.f32(i32 83, float %4119)  ; DerivCoarseX(value)
  %4124 = call float @dx.op.unary.f32(i32 84, float %4117)  ; DerivCoarseY(value)
  %4125 = call float @dx.op.unary.f32(i32 84, float %4119)  ; DerivCoarseY(value)
  %4126 = fmul fast float %4122, %4121
  %4127 = fmul fast float %4123, %4121
  %4128 = fmul fast float %4124, %4121
  %4129 = fmul fast float %4125, %4121
  %4130 = call float @dx.op.dot2.f32(i32 54, float %4128, float %4129, float %4128, float %4129)  ; Dot2(ax,ay,bx,by)
  %4131 = call float @dx.op.dot2.f32(i32 54, float %4126, float %4127, float %4126, float %4127)  ; Dot2(ax,ay,bx,by)
  %4132 = call float @dx.op.binary.f32(i32 35, float %4131, float %4130)  ; FMax(a,b)
  %4133 = call float @dx.op.unary.f32(i32 23, float %4132)  ; Log(value)
  %4134 = fmul fast float %4133, 5.000000e-01
  %4135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4136 = extractvalue %dx.types.CBufRet.f32 %4135, 1
  %4137 = fadd fast float %4136, %4134
  %4138 = call float @dx.op.binary.f32(i32 35, float %4137, float 0.000000e+00)  ; FMax(a,b)
  %4139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4140 = extractvalue %dx.types.CBufRet.f32 %4139, 3
  %4141 = fadd fast float %4140, %4138
  %4142 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4143 = extractvalue %dx.types.CBufRet.f32 %4142, 3
  %4144 = fadd fast float %4141, %4143
  %4145 = add i32 %4111, 0
  %4146 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4145, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4147 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4146, i32 0)  ; GetDimensions(handle,mipLevel)
  %4148 = extractvalue %dx.types.Dimensions %4147, 0
  %4149 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4148)  ; FirstbitLo(value)
  %4150 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.i32 %4150, 1
  %4152 = sub nsw i32 %4151, %4149
  %4153 = sitofp i32 %4152 to float
  %4154 = fsub fast float %4144, %4153
  %4155 = call float @dx.op.binary.f32(i32 35, float %4154, float 0.000000e+00)  ; FMax(a,b)
  %4156 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4146, %dx.types.Handle %29, float %4117, float %4119, float %4107, float undef, i32 0, i32 0, i32 undef, float %4155)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4157 = extractvalue %dx.types.ResRet.f32 %4156, 0
  %4158 = fcmp ule float %4157, 0x3FE0101020000000
  %4159 = extractvalue %dx.types.CBufRet.i32 %4150, 0
  %4160 = and i32 %4159, 128
  %4161 = icmp ne i32 %4160, 0
  %4162 = and i1 %4158, %4161
  br i1 %4162, label %4313, label %4163

; <label>:4163                                    ; preds = %4097
  %4164 = add i32 %4098, 20
  %4165 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4164, i32 undef)  ; BufferLoad(srv,index,wot)
  %4166 = extractvalue %dx.types.ResRet.f32 %4165, 0
  %4167 = add i32 %4098, 24
  %4168 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4167, i32 undef)  ; BufferLoad(srv,index,wot)
  %4169 = extractvalue %dx.types.ResRet.f32 %4168, 0
  %4170 = add i32 %4098, 40
  %4171 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4170, i32 undef)  ; BufferLoad(srv,index,wot)
  %4172 = extractvalue %dx.types.ResRet.f32 %4171, 0
  %4173 = add i32 %4098, 96
  %4174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4173, i32 undef)  ; BufferLoad(srv,index,wot)
  %4175 = extractvalue %dx.types.ResRet.i32 %4174, 0
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 2
  %4178 = fmul fast float %4177, %4117
  %4179 = fmul fast float %4177, %4119
  %4180 = extractvalue %dx.types.CBufRet.f32 %4176, 3
  %4181 = fadd fast float %4178, %4180
  %4182 = fadd fast float %4179, %4180
  %4183 = add i32 %4175, 0
  %4184 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4183, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4185 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4184, i32 0)  ; GetDimensions(handle,mipLevel)
  %4186 = extractvalue %dx.types.Dimensions %4185, 0
  %4187 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4186)  ; FirstbitLo(value)
  %4188 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.i32 %4188, 1
  %4190 = sub nsw i32 %4189, %4187
  %4191 = sitofp i32 %4190 to float
  %4192 = fsub fast float %4141, %4191
  %4193 = call float @dx.op.binary.f32(i32 35, float %4192, float 0.000000e+00)  ; FMax(a,b)
  %4194 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4184, %dx.types.Handle %29, float %4181, float %4182, float %4172, float undef, i32 0, i32 0, i32 undef, float %4193)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4195 = extractvalue %dx.types.ResRet.f32 %4194, 0
  %4196 = fmul fast float %4195, %4166
  %4197 = fadd fast float %4196, %4169
  %4198 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4199 = extractvalue %dx.types.CBufRet.f32 %4198, 0
  %4200 = extractvalue %dx.types.CBufRet.f32 %4198, 1
  %4201 = extractvalue %dx.types.CBufRet.f32 %4198, 2
  %4202 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4203 = extractvalue %dx.types.CBufRet.f32 %4202, 3
  %4204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4205 = extractvalue %dx.types.CBufRet.f32 %4204, 3
  %4206 = extractvalue %dx.types.CBufRet.f32 %4198, 3
  %4207 = fadd fast float %4203, %4064
  %4208 = fadd fast float %4205, %4065
  %4209 = fadd fast float %4197, %4206
  %4210 = fmul fast float %4207, %4199
  %4211 = call float @dx.op.tertiary.f32(i32 46, float %4208, float %4200, float %4210)  ; FMad(a,b,c)
  %4212 = call float @dx.op.tertiary.f32(i32 46, float %4209, float %4201, float %4211)  ; FMad(a,b,c)
  %4213 = fsub fast float %4212, %4206
  %4214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4215 = extractvalue %dx.types.CBufRet.f32 %4214, 2
  %4216 = fsub fast float %4213, %4215
  %4217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.i32 %4217, 0
  %4219 = call i32 @dx.op.binary.i32(i32 40, i32 %4095, i32 %4218)  ; UMin(a,b)
  %4220 = mul i32 %4219, 36
  %4221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4220, i32 undef)  ; BufferLoad(srv,index,wot)
  %4222 = extractvalue %dx.types.ResRet.i32 %4221, 0
  %4223 = add i32 %4220, 4
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = fmul fast float %4225, %4117
  %4227 = fmul fast float %4225, %4119
  %4228 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4229 = fadd fast float %4226, %4228
  %4230 = fadd fast float %4227, %4228
  %4231 = icmp eq i32 %4222, 0
  br i1 %4231, label %4300, label %4232

; <label>:4232                                    ; preds = %4163
  br label %4233

; <label>:4233                                    ; preds = %4290, %4232
  %4234 = phi float [ %4291, %4290 ], [ 0.000000e+00, %4232 ]
  %4235 = phi float [ %4292, %4290 ], [ 0.000000e+00, %4232 ]
  %4236 = phi float [ %4293, %4290 ], [ 0.000000e+00, %4232 ]
  %4237 = phi float [ %4294, %4290 ], [ 0.000000e+00, %4232 ]
  %4238 = phi float [ %4295, %4290 ], [ 0.000000e+00, %4232 ]
  %4239 = phi float [ %4296, %4290 ], [ 0.000000e+00, %4232 ]
  %4240 = phi i32 [ %4297, %4290 ], [ 0, %4232 ]
  %4241 = shl i32 %4240, 2
  %4242 = add i32 %4108, %4241
  %4243 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4242, i32 undef)  ; BufferLoad(srv,index,wot)
  %4244 = extractvalue %dx.types.ResRet.f32 %4243, 0
  %4245 = add i32 %4112, %4241
  %4246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4245, i32 undef)  ; BufferLoad(srv,index,wot)
  %4247 = extractvalue %dx.types.ResRet.i32 %4246, 0
  %4248 = add i32 %4247, 0
  %4249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4248, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4250 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4249, i32 0)  ; GetDimensions(handle,mipLevel)
  %4251 = extractvalue %dx.types.Dimensions %4250, 0
  %4252 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4251)  ; FirstbitLo(value)
  %4253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.i32 %4253, 1
  %4255 = sub nsw i32 %4254, %4252
  %4256 = sitofp i32 %4255 to float
  %4257 = fsub fast float %4141, %4256
  %4258 = call float @dx.op.binary.f32(i32 35, float %4257, float 0.000000e+00)  ; FMax(a,b)
  %4259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4249, %dx.types.Handle %29, float %4229, float %4230, float %4244, float undef, i32 0, i32 0, i32 undef, float %4258)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = fcmp fast ogt float %4260, 0.000000e+00
  br i1 %4261, label %4262, label %4290

; <label>:4262                                    ; preds = %4233
  %4263 = add i32 %4223, %4241
  %4264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4263, i32 undef)  ; BufferLoad(srv,index,wot)
  %4265 = extractvalue %dx.types.ResRet.i32 %4264, 0
  %4266 = and i32 %4265, 32767
  %4267 = mul nuw nsw i32 %4266, 928
  %4268 = add nuw nsw i32 %4267, 48
  %4269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4268, i32 undef)  ; BufferLoad(srv,index,wot)
  %4270 = extractvalue %dx.types.ResRet.f32 %4269, 0
  %4271 = extractvalue %dx.types.ResRet.f32 %4269, 1
  %4272 = extractvalue %dx.types.ResRet.f32 %4269, 2
  %4273 = add nuw nsw i32 %4267, 60
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = extractvalue %dx.types.ResRet.f32 %4274, 1
  %4277 = extractvalue %dx.types.ResRet.f32 %4274, 2
  %4278 = fmul fast float %4270, %4260
  %4279 = fmul fast float %4271, %4260
  %4280 = fmul fast float %4272, %4260
  %4281 = fadd fast float %4278, %4234
  %4282 = fadd fast float %4279, %4235
  %4283 = fadd fast float %4280, %4236
  %4284 = fmul fast float %4275, %4260
  %4285 = fmul fast float %4276, %4260
  %4286 = fmul fast float %4277, %4260
  %4287 = fadd fast float %4284, %4237
  %4288 = fadd fast float %4285, %4238
  %4289 = fadd fast float %4286, %4239
  br label %4290

; <label>:4290                                    ; preds = %4262, %4233
  %4291 = phi float [ %4281, %4262 ], [ %4234, %4233 ]
  %4292 = phi float [ %4282, %4262 ], [ %4235, %4233 ]
  %4293 = phi float [ %4283, %4262 ], [ %4236, %4233 ]
  %4294 = phi float [ %4287, %4262 ], [ %4237, %4233 ]
  %4295 = phi float [ %4288, %4262 ], [ %4238, %4233 ]
  %4296 = phi float [ %4289, %4262 ], [ %4239, %4233 ]
  %4297 = add nuw i32 %4240, 1
  %4298 = icmp eq i32 %4297, %4222
  br i1 %4298, label %4299, label %4233

; <label>:4299                                    ; preds = %4290
  br label %4300

; <label>:4300                                    ; preds = %4299, %4163
  %4301 = phi float [ 0.000000e+00, %4163 ], [ %4291, %4299 ]
  %4302 = phi float [ 0.000000e+00, %4163 ], [ %4292, %4299 ]
  %4303 = phi float [ 0.000000e+00, %4163 ], [ %4293, %4299 ]
  %4304 = phi float [ 0.000000e+00, %4163 ], [ %4294, %4299 ]
  %4305 = phi float [ 0.000000e+00, %4163 ], [ %4295, %4299 ]
  %4306 = phi float [ 0.000000e+00, %4163 ], [ %4296, %4299 ]
  %4307 = fadd fast float %4304, %4301
  %4308 = fmul fast float %4307, 0x3F847AE140000000
  %4309 = fadd fast float %4305, %4302
  %4310 = fmul fast float %4309, 0x3F847AE140000000
  %4311 = fadd fast float %4306, %4303
  %4312 = fmul fast float %4311, 0x3F847AE140000000
  br label %4313

; <label>:4313                                    ; preds = %4300, %4097, %4042, %4039, %4010, %3972
  %4314 = phi float [ %4024, %4010 ], [ -1.310720e+05, %3972 ], [ %4216, %4300 ], [ -1.310720e+05, %4042 ], [ -1.310720e+05, %4097 ], [ -1.310720e+05, %4039 ]
  %4315 = phi float [ %4034, %4010 ], [ 0.000000e+00, %3972 ], [ %4308, %4300 ], [ 0.000000e+00, %4042 ], [ 0.000000e+00, %4097 ], [ 0.000000e+00, %4039 ]
  %4316 = phi float [ %4036, %4010 ], [ 0.000000e+00, %3972 ], [ %4310, %4300 ], [ 0.000000e+00, %4042 ], [ 0.000000e+00, %4097 ], [ 0.000000e+00, %4039 ]
  %4317 = phi float [ %4038, %4010 ], [ 0.000000e+00, %3972 ], [ %4312, %4300 ], [ 0.000000e+00, %4042 ], [ 0.000000e+00, %4097 ], [ 0.000000e+00, %4039 ]
  %4318 = phi i1 [ true, %4010 ], [ false, %3972 ], [ true, %4300 ], [ false, %4042 ], [ false, %4097 ], [ false, %4039 ]
  %4319 = and i32 %173, 3
  %4320 = icmp eq i32 %4319, 1
  %4321 = select i1 %4320, float 1.000000e+00, float 0.000000e+00
  %4322 = fsub fast float %4314, %125
  %4323 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4324 = select i1 %4318, float %4323, float 1.000000e+00
  %4325 = fmul fast float %4324, %4321
  %4326 = icmp eq i32 %4319, 3
  %4327 = select i1 %4326, float 1.000000e+00, float %4325
  %4328 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4327)  ; FMax(a,b)
  %4329 = call float @dx.op.unary.f32(i32 7, float %4328)  ; Saturate(value)
  %4330 = fcmp fast une float %4329, 0.000000e+00
  %4331 = fsub fast float -0.000000e+00, %143
  %4332 = fsub fast float -0.000000e+00, %144
  %4333 = fsub fast float -0.000000e+00, %145
  br i1 %4330, label %4334, label %4496

; <label>:4334                                    ; preds = %4313
  %4335 = call float @dx.op.dot3.f32(i32 55, float %4331, float %4332, float %4333, float %73, float %75, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4336 = fmul fast float %4329, 2.500000e+00
  %4337 = call float @dx.op.unary.f32(i32 7, float %4336)  ; Saturate(value)
  %4338 = fmul fast float %4329, 0x4013FFFFE0000000
  %4339 = fadd fast float %4338, 0xBFFFFFFFE0000000
  %4340 = call float @dx.op.unary.f32(i32 7, float %4339)  ; Saturate(value)
  %4341 = fmul fast float %4329, 0x4004000020000000
  %4342 = fadd fast float %4341, 0xBFF8000040000000
  %4343 = call float @dx.op.unary.f32(i32 7, float %4342)  ; Saturate(value)
  %4344 = call float @dx.op.unary.f32(i32 7, float %4337)  ; Saturate(value)
  %4345 = fmul fast float %3852, 1.000000e+01
  %4346 = call float @dx.op.unary.f32(i32 7, float %4345)  ; Saturate(value)
  %4347 = fmul fast float %4346, 2.000000e+00
  %4348 = fsub fast float 3.000000e+00, %4347
  %4349 = fmul fast float %4346, %4346
  %4350 = fmul fast float %4349, %4348
  %4351 = fsub fast float 1.000000e+00, %4350
  %4352 = fsub fast float 0x3FE3333340000000, %3873
  %4353 = fmul fast float %4352, 0x400AAAAAA0000000
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = fmul fast float %4351, %4354
  %4356 = fmul fast float %3951, 0x3FEA2B8620000000
  %4357 = fmul fast float %3952, 0x3FEA2B8620000000
  %4358 = fmul fast float %3953, 0x3FEA2B8620000000
  %4359 = fadd fast float %4356, 0x3FC81DFBA0000000
  %4360 = fmul fast float %4359, %3951
  %4361 = fadd fast float %4360, 0x3F910E6020000000
  %4362 = fadd fast float %4357, 0x3FC81DFBA0000000
  %4363 = fmul fast float %4362, %3952
  %4364 = fadd fast float %4363, 0x3F910E6020000000
  %4365 = fadd fast float %4358, 0x3FC81DFBA0000000
  %4366 = fmul fast float %4365, %3953
  %4367 = fadd fast float %4366, 0x3F910E6020000000
  %4368 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  %4369 = call float @dx.op.unary.f32(i32 7, float %4364)  ; Saturate(value)
  %4370 = call float @dx.op.unary.f32(i32 7, float %4367)  ; Saturate(value)
  %4371 = fsub fast float %4368, %3951
  %4372 = fsub fast float %4369, %3952
  %4373 = fsub fast float %4370, %3953
  %4374 = fmul fast float %4371, %4344
  %4375 = fmul fast float %4374, %4355
  %4376 = fmul fast float %4372, %4344
  %4377 = fmul fast float %4376, %4355
  %4378 = fmul fast float %4373, %4344
  %4379 = fmul fast float %4378, %4355
  %4380 = fadd fast float %4375, %3951
  %4381 = fadd fast float %4377, %3952
  %4382 = fadd fast float %4379, %3953
  %4383 = fmul fast float %3797, %3797
  %4384 = fmul fast float %4383, %4383
  %4385 = fadd fast float %4340, 1.000000e+00
  %4386 = fsub fast float %4385, %4355
  %4387 = call float @dx.op.unary.f32(i32 7, float %4386)  ; Saturate(value)
  %4388 = call float @dx.op.dot3.f32(i32 55, float %73, float %75, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4389 = call float @dx.op.unary.f32(i32 7, float %4388)  ; Saturate(value)
  %4390 = fsub fast float 1.000000e+00, %4384
  %4391 = call float @dx.op.binary.f32(i32 36, float %4387, float %4390)  ; FMin(a,b)
  %4392 = call float @dx.op.unary.f32(i32 7, float %4343)  ; Saturate(value)
  %4393 = call float @dx.op.binary.f32(i32 35, float %4391, float %4392)  ; FMax(a,b)
  %4394 = fadd fast float %4389, 0xBFE4CCCCC0000000
  %4395 = fmul fast float %4394, 0x4006DB6DA0000000
  %4396 = call float @dx.op.unary.f32(i32 7, float %4395)  ; Saturate(value)
  %4397 = fmul fast float %4396, 2.000000e+00
  %4398 = fsub fast float 3.000000e+00, %4397
  %4399 = bitcast float %3870 to i32
  %4400 = ashr i32 %4399, 1
  %4401 = add nsw i32 %4400, 532487669
  %4402 = bitcast i32 %4401 to float
  %4403 = fsub fast float 1.000000e+00, %4402
  %4404 = bitcast float %4403 to i32
  %4405 = sub nsw i32 2129859010, %4404
  %4406 = bitcast i32 %4405 to float
  %4407 = fmul fast float %4406, 2.000000e+00
  %4408 = bitcast float %3871 to i32
  %4409 = ashr i32 %4408, 1
  %4410 = add nsw i32 %4409, 532487669
  %4411 = bitcast i32 %4410 to float
  %4412 = fsub fast float 1.000000e+00, %4411
  %4413 = bitcast float %4412 to i32
  %4414 = sub nsw i32 2129859010, %4413
  %4415 = bitcast i32 %4414 to float
  %4416 = fmul fast float %4415, 2.000000e+00
  %4417 = bitcast float %3872 to i32
  %4418 = ashr i32 %4417, 1
  %4419 = add nsw i32 %4418, 532487669
  %4420 = bitcast i32 %4419 to float
  %4421 = fsub fast float 1.000000e+00, %4420
  %4422 = bitcast float %4421 to i32
  %4423 = sub nsw i32 2129859010, %4422
  %4424 = bitcast i32 %4423 to float
  %4425 = fmul fast float %4424, 2.000000e+00
  %4426 = fsub fast float 0x4002A9FBE0000000, %4407
  %4427 = fadd fast float %4407, 0x3FD54FDF00000000
  %4428 = bitcast float %4427 to i32
  %4429 = sub nsw i32 2129859010, %4428
  %4430 = bitcast i32 %4429 to float
  %4431 = fmul fast float %4430, %4426
  %4432 = fmul fast float %4431, %4431
  %4433 = fsub fast float 0x4002A9FBE0000000, %4416
  %4434 = fadd fast float %4416, 0x3FD54FDF00000000
  %4435 = bitcast float %4434 to i32
  %4436 = sub nsw i32 2129859010, %4435
  %4437 = bitcast i32 %4436 to float
  %4438 = fmul fast float %4437, %4433
  %4439 = fmul fast float %4438, %4438
  %4440 = fsub fast float 0x4002A9FBE0000000, %4425
  %4441 = fadd fast float %4425, 0x3FD54FDF00000000
  %4442 = bitcast float %4441 to i32
  %4443 = sub nsw i32 2129859010, %4442
  %4444 = bitcast i32 %4443 to float
  %4445 = fmul fast float %4444, %4440
  %4446 = fmul fast float %4445, %4445
  %4447 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4432)  ; FMax(a,b)
  %4448 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4439)  ; FMax(a,b)
  %4449 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4446)  ; FMax(a,b)
  %4450 = fsub fast float 1.000000e+00, %4335
  %4451 = fadd fast float %4450, %4351
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = fsub fast float 1.000000e+00, %4327
  %4454 = fmul fast float %4393, %4453
  %4455 = fmul fast float %4396, %4396
  %4456 = fmul fast float %4455, %4454
  %4457 = fmul fast float %4456, %4398
  %4458 = fmul fast float %4453, 0xBFE99999A0000000
  %4459 = fmul fast float %4458, %4344
  %4460 = fmul fast float %4459, %4355
  %4461 = fadd fast float %4460, 1.000000e+00
  %4462 = fadd fast float %3873, -1.000000e+00
  %4463 = fmul fast float %4461, %4462
  %4464 = fadd fast float %4463, 1.000000e+00
  %4465 = fsub fast float %4447, %3870
  %4466 = fsub fast float %4448, %3871
  %4467 = fsub fast float %4449, %3872
  %4468 = fmul fast float %4457, %4465
  %4469 = fmul fast float %4457, %4466
  %4470 = fmul fast float %4457, %4467
  %4471 = fadd fast float %4468, %3870
  %4472 = fadd fast float %4469, %3871
  %4473 = fadd fast float %4470, %3872
  %4474 = fsub fast float %73, %3827
  %4475 = fsub fast float %75, %3828
  %4476 = fsub fast float %77, %3829
  %4477 = fmul fast float %4457, %4474
  %4478 = fmul fast float %4457, %4475
  %4479 = fmul fast float %4457, %4476
  %4480 = fadd fast float %4477, %3827
  %4481 = fadd fast float %4478, %3828
  %4482 = fadd fast float %4479, %3829
  %4483 = fmul fast float %4457, %4452
  %4484 = call float @dx.op.unary.f32(i32 7, float %4464)  ; Saturate(value)
  %4485 = fsub fast float 1.000000e+00, %4484
  %4486 = fmul fast float %4483, %4485
  %4487 = fadd fast float %4486, %4484
  %4488 = fsub fast float 1.000000e+00, %3797
  %4489 = fmul fast float %4457, %4488
  %4490 = fadd fast float %4489, %3797
  %4491 = call float @dx.op.dot3.f32(i32 55, float %4480, float %4481, float %4482, float %4480, float %4481, float %4482)  ; Dot3(ax,ay,az,bx,by,bz)
  %4492 = call float @dx.op.unary.f32(i32 25, float %4491)  ; Rsqrt(value)
  %4493 = fmul fast float %4480, %4492
  %4494 = fmul fast float %4481, %4492
  %4495 = fmul fast float %4482, %4492
  br label %4496

; <label>:4496                                    ; preds = %4334, %4313
  %4497 = phi float [ %4471, %4334 ], [ %3870, %4313 ]
  %4498 = phi float [ %4472, %4334 ], [ %3871, %4313 ]
  %4499 = phi float [ %4473, %4334 ], [ %3872, %4313 ]
  %4500 = phi float [ %4493, %4334 ], [ %3827, %4313 ]
  %4501 = phi float [ %4494, %4334 ], [ %3828, %4313 ]
  %4502 = phi float [ %4495, %4334 ], [ %3829, %4313 ]
  %4503 = phi float [ %4380, %4334 ], [ %3951, %4313 ]
  %4504 = phi float [ %4381, %4334 ], [ %3952, %4313 ]
  %4505 = phi float [ %4382, %4334 ], [ %3953, %4313 ]
  %4506 = phi float [ %4487, %4334 ], [ %3873, %4313 ]
  %4507 = phi float [ %4490, %4334 ], [ %3797, %4313 ]
  %4508 = select i1 %199, float 0.000000e+00, float %4499
  %4509 = call float @dx.op.dot3.f32(i32 55, float %4500, float %4501, float %4502, float %4331, float %4332, float %4333)  ; Dot3(ax,ay,az,bx,by,bz)
  %4510 = call float @dx.op.unary.f32(i32 7, float %4509)  ; Saturate(value)
  %4511 = call float @dx.op.dot3.f32(i32 55, float %143, float %144, float %145, float %4500, float %4501, float %4502)  ; Dot3(ax,ay,az,bx,by,bz)
  %4512 = fmul fast float %4511, 2.000000e+00
  %4513 = fmul fast float %4512, %4500
  %4514 = fmul fast float %4512, %4501
  %4515 = fmul fast float %4512, %4502
  %4516 = fsub fast float %143, %4513
  %4517 = fsub fast float %144, %4514
  %4518 = fsub fast float %145, %4515
  %4519 = call float @dx.op.binary.f32(i32 36, float %4507, float 1.000000e+00)  ; FMin(a,b)
  %4520 = fsub fast float 1.000000e+00, %4507
  %4521 = bitcast float %4520 to i32
  %4522 = sub nsw i32 2129859010, %4521
  %4523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4524 = extractvalue %dx.types.CBufRet.f32 %4523, 0
  %4525 = extractvalue %dx.types.CBufRet.f32 %4523, 1
  %4526 = extractvalue %dx.types.CBufRet.f32 %4523, 2
  %4527 = fadd fast float %4524, %123
  %4528 = fadd fast float %4525, %124
  %4529 = fadd fast float %4526, %125
  %4530 = fmul fast float %4500, 3.200000e+01
  %4531 = fmul fast float %4501, 3.200000e+01
  %4532 = fadd fast float %4527, %4530
  %4533 = fadd fast float %4528, %4531
  %4534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4535 = extractvalue %dx.types.CBufRet.f32 %4534, 0
  %4536 = extractvalue %dx.types.CBufRet.f32 %4534, 1
  %4537 = fsub fast float %4532, %4535
  %4538 = fsub fast float %4533, %4536
  %4539 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4540 = extractvalue %dx.types.CBufRet.f32 %4539, 0
  %4541 = extractvalue %dx.types.CBufRet.f32 %4539, 1
  %4542 = fmul fast float %4537, %4540
  %4543 = fmul fast float %4538, %4541
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 0
  %4546 = fmul fast float %4542, %4545
  %4547 = extractvalue %dx.types.CBufRet.f32 %4544, 1
  %4548 = fadd fast float %4546, %4547
  %4549 = extractvalue %dx.types.CBufRet.f32 %4544, 2
  %4550 = fmul fast float %4549, %4543
  %4551 = extractvalue %dx.types.CBufRet.f32 %4544, 3
  %4552 = fadd fast float %4550, %4551
  %4553 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %4548, float %4552, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4554 = extractvalue %dx.types.ResRet.f32 %4553, 0
  %4555 = extractvalue %dx.types.ResRet.f32 %4553, 1
  %4556 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4557 = extractvalue %dx.types.CBufRet.f32 %4556, 1
  %4558 = extractvalue %dx.types.CBufRet.f32 %4556, 0
  %4559 = fsub fast float %4557, %4558
  %4560 = fmul fast float %4559, %4554
  %4561 = fadd fast float %4560, %4558
  %4562 = extractvalue %dx.types.CBufRet.f32 %4556, 3
  %4563 = extractvalue %dx.types.CBufRet.f32 %4556, 2
  %4564 = fsub fast float %4562, %4563
  %4565 = fmul fast float %4564, %4555
  %4566 = fadd fast float %4565, %4563
  %4567 = fsub fast float %4529, %4561
  %4568 = fsub fast float %4566, %4561
  %4569 = fdiv fast float %4567, %4568
  %4570 = call float @dx.op.unary.f32(i32 7, float %4569)  ; Saturate(value)
  %4571 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4572 = extractvalue %dx.types.CBufRet.f32 %4571, 0
  %4573 = fmul fast float %4572, %4570
  %4574 = extractvalue %dx.types.CBufRet.f32 %4571, 1
  %4575 = fadd fast float %4573, %4574
  %4576 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %4548, float %4552, float %4575, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4577 = extractvalue %dx.types.ResRet.f32 %4576, 0
  %4578 = extractvalue %dx.types.ResRet.f32 %4576, 1
  %4579 = extractvalue %dx.types.ResRet.f32 %4576, 2
  %4580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.f32 %4580, 0
  %4582 = extractvalue %dx.types.CBufRet.f32 %4580, 1
  %4583 = extractvalue %dx.types.CBufRet.f32 %4580, 2
  %4584 = fmul fast float %4581, %4577
  %4585 = fmul fast float %4582, %4578
  %4586 = fmul fast float %4583, %4579
  %4587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4588 = extractvalue %dx.types.CBufRet.f32 %4587, 0
  %4589 = extractvalue %dx.types.CBufRet.f32 %4587, 1
  %4590 = extractvalue %dx.types.CBufRet.f32 %4587, 2
  %4591 = fadd fast float %4584, %4588
  %4592 = fadd fast float %4585, %4589
  %4593 = fadd fast float %4586, %4590
  %4594 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4595 = extractvalue %dx.types.CBufRet.f32 %4594, 0
  %4596 = fmul fast float %4595, %4542
  %4597 = extractvalue %dx.types.CBufRet.f32 %4594, 1
  %4598 = fadd fast float %4596, %4597
  %4599 = extractvalue %dx.types.CBufRet.f32 %4594, 2
  %4600 = fmul fast float %4599, %4543
  %4601 = extractvalue %dx.types.CBufRet.f32 %4594, 3
  %4602 = fadd fast float %4600, %4601
  %4603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4604 = extractvalue %dx.types.CBufRet.f32 %4603, 0
  %4605 = extractvalue %dx.types.CBufRet.f32 %4603, 1
  %4606 = extractvalue %dx.types.CBufRet.f32 %4603, 2
  %4607 = extractvalue %dx.types.CBufRet.f32 %4603, 3
  %4608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4609 = extractvalue %dx.types.CBufRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.CBufRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.CBufRet.f32 %4608, 2
  %4612 = extractvalue %dx.types.CBufRet.f32 %4608, 3
  %4613 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4598, float %4602, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4614 = extractvalue %dx.types.ResRet.f32 %4613, 0
  %4615 = extractvalue %dx.types.ResRet.f32 %4613, 1
  %4616 = extractvalue %dx.types.ResRet.f32 %4613, 2
  %4617 = extractvalue %dx.types.ResRet.f32 %4613, 3
  %4618 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4598, float %4602, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4619 = extractvalue %dx.types.ResRet.f32 %4618, 0
  %4620 = extractvalue %dx.types.ResRet.f32 %4618, 1
  %4621 = extractvalue %dx.types.ResRet.f32 %4618, 2
  %4622 = extractvalue %dx.types.ResRet.f32 %4618, 3
  %4623 = fmul fast float %4614, %4591
  %4624 = fmul fast float %4619, %4591
  %4625 = fmul fast float %4621, %4591
  %4626 = fmul fast float %4617, %4591
  %4627 = fadd fast float %4623, %4604
  %4628 = fadd fast float %4624, %4605
  %4629 = fadd fast float %4625, %4606
  %4630 = fadd fast float %4626, %4607
  %4631 = fmul fast float %4615, %4591
  %4632 = fmul fast float %4620, %4591
  %4633 = fadd fast float %4631, %4609
  %4634 = fadd fast float %4632, %4610
  %4635 = fmul fast float %4616, %4591
  %4636 = fmul fast float %4622, %4591
  %4637 = fadd fast float %4635, %4611
  %4638 = fadd fast float %4636, %4612
  %4639 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4598, float %4602, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4640 = extractvalue %dx.types.ResRet.f32 %4639, 0
  %4641 = extractvalue %dx.types.ResRet.f32 %4639, 1
  %4642 = extractvalue %dx.types.ResRet.f32 %4639, 2
  %4643 = extractvalue %dx.types.ResRet.f32 %4639, 3
  %4644 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4598, float %4602, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4645 = extractvalue %dx.types.ResRet.f32 %4644, 0
  %4646 = extractvalue %dx.types.ResRet.f32 %4644, 1
  %4647 = extractvalue %dx.types.ResRet.f32 %4644, 2
  %4648 = extractvalue %dx.types.ResRet.f32 %4644, 3
  %4649 = fmul fast float %4640, %4592
  %4650 = fmul fast float %4645, %4592
  %4651 = fmul fast float %4647, %4592
  %4652 = fmul fast float %4643, %4592
  %4653 = fadd fast float %4627, %4649
  %4654 = fadd fast float %4628, %4650
  %4655 = fadd fast float %4629, %4651
  %4656 = fadd fast float %4630, %4652
  %4657 = fmul fast float %4641, %4592
  %4658 = fmul fast float %4646, %4592
  %4659 = fadd fast float %4633, %4657
  %4660 = fadd fast float %4634, %4658
  %4661 = fmul fast float %4642, %4592
  %4662 = fmul fast float %4648, %4592
  %4663 = fadd fast float %4637, %4661
  %4664 = fadd fast float %4638, %4662
  %4665 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4598, float %4602, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4666 = extractvalue %dx.types.ResRet.f32 %4665, 0
  %4667 = extractvalue %dx.types.ResRet.f32 %4665, 1
  %4668 = extractvalue %dx.types.ResRet.f32 %4665, 2
  %4669 = extractvalue %dx.types.ResRet.f32 %4665, 3
  %4670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4598, float %4602, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4671 = extractvalue %dx.types.ResRet.f32 %4670, 0
  %4672 = extractvalue %dx.types.ResRet.f32 %4670, 1
  %4673 = extractvalue %dx.types.ResRet.f32 %4670, 2
  %4674 = extractvalue %dx.types.ResRet.f32 %4670, 3
  %4675 = fmul fast float %4666, %4593
  %4676 = fmul fast float %4671, %4593
  %4677 = fmul fast float %4673, %4593
  %4678 = fmul fast float %4669, %4593
  %4679 = fadd fast float %4653, %4675
  %4680 = fadd fast float %4654, %4676
  %4681 = fadd fast float %4655, %4677
  %4682 = fadd fast float %4656, %4678
  %4683 = fmul fast float %4667, %4593
  %4684 = fmul fast float %4672, %4593
  %4685 = fadd fast float %4659, %4683
  %4686 = fadd fast float %4660, %4684
  %4687 = fmul fast float %4668, %4593
  %4688 = fmul fast float %4674, %4593
  %4689 = fadd fast float %4663, %4687
  %4690 = fadd fast float %4664, %4688
  %4691 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4692 = extractvalue %dx.types.CBufRet.f32 %4691, 0
  %4693 = fsub fast float %4527, %4692
  %4694 = fsub fast float %4535, %4527
  %4695 = call float @dx.op.binary.f32(i32 35, float %4694, float %4693)  ; FMax(a,b)
  %4696 = extractvalue %dx.types.CBufRet.f32 %4691, 1
  %4697 = fsub fast float %4528, %4696
  %4698 = fsub fast float %4536, %4528
  %4699 = call float @dx.op.binary.f32(i32 35, float %4698, float %4697)  ; FMax(a,b)
  %4700 = call float @dx.op.binary.f32(i32 35, float %4695, float %4699)  ; FMax(a,b)
  %4701 = extractvalue %dx.types.CBufRet.f32 %4539, 3
  %4702 = fmul fast float %4701, %4700
  %4703 = call float @dx.op.unary.f32(i32 7, float %4702)  ; Saturate(value)
  %4704 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4705 = extractvalue %dx.types.CBufRet.f32 %4704, 0
  %4706 = extractvalue %dx.types.CBufRet.f32 %4704, 1
  %4707 = extractvalue %dx.types.CBufRet.f32 %4704, 2
  %4708 = extractvalue %dx.types.CBufRet.f32 %4704, 3
  %4709 = fsub fast float %4705, %4679
  %4710 = fsub fast float %4706, %4680
  %4711 = fsub fast float %4707, %4681
  %4712 = fsub fast float %4708, %4682
  %4713 = fmul fast float %4709, %4703
  %4714 = fmul fast float %4710, %4703
  %4715 = fmul fast float %4711, %4703
  %4716 = fmul fast float %4712, %4703
  %4717 = fadd fast float %4713, %4679
  %4718 = fadd fast float %4714, %4680
  %4719 = fadd fast float %4715, %4681
  %4720 = fadd fast float %4716, %4682
  %4721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4722 = extractvalue %dx.types.CBufRet.f32 %4721, 0
  %4723 = extractvalue %dx.types.CBufRet.f32 %4721, 1
  %4724 = fsub fast float %4722, %4685
  %4725 = fsub fast float %4723, %4686
  %4726 = fmul fast float %4724, %4703
  %4727 = fmul fast float %4725, %4703
  %4728 = fadd fast float %4726, %4685
  %4729 = fadd fast float %4727, %4686
  %4730 = extractvalue %dx.types.CBufRet.f32 %4721, 2
  %4731 = extractvalue %dx.types.CBufRet.f32 %4721, 3
  %4732 = fsub fast float %4730, %4689
  %4733 = fsub fast float %4731, %4690
  %4734 = fmul fast float %4732, %4703
  %4735 = fmul fast float %4733, %4703
  %4736 = fadd fast float %4734, %4689
  %4737 = fadd fast float %4735, %4690
  %4738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4739 = extractvalue %dx.types.CBufRet.f32 %4738, 0
  %4740 = fmul fast float %4739, %4717
  %4741 = fmul fast float %4739, %4718
  %4742 = fmul fast float %4739, %4719
  %4743 = fmul fast float %4739, %4720
  %4744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4745 = extractvalue %dx.types.CBufRet.f32 %4744, 0
  %4746 = fmul fast float %4745, %4728
  %4747 = fmul fast float %4745, %4729
  %4748 = fadd fast float %4746, %4740
  %4749 = fadd fast float %4747, %4742
  %4750 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4751 = extractvalue %dx.types.CBufRet.f32 %4750, 0
  %4752 = fmul fast float %4751, %4736
  %4753 = fmul fast float %4751, %4737
  %4754 = fadd fast float %4748, %4752
  %4755 = fadd fast float %4749, %4753
  %4756 = extractvalue %dx.types.CBufRet.f32 %4738, 1
  %4757 = fmul fast float %4756, %4717
  %4758 = fmul fast float %4756, %4718
  %4759 = fmul fast float %4756, %4719
  %4760 = fmul fast float %4756, %4720
  %4761 = extractvalue %dx.types.CBufRet.f32 %4744, 1
  %4762 = fmul fast float %4761, %4728
  %4763 = fmul fast float %4761, %4729
  %4764 = fadd fast float %4762, %4757
  %4765 = fadd fast float %4763, %4759
  %4766 = extractvalue %dx.types.CBufRet.f32 %4750, 1
  %4767 = fmul fast float %4766, %4736
  %4768 = fmul fast float %4766, %4737
  %4769 = fadd fast float %4764, %4767
  %4770 = fadd fast float %4765, %4768
  %4771 = extractvalue %dx.types.CBufRet.f32 %4738, 2
  %4772 = fmul fast float %4771, %4717
  %4773 = fmul fast float %4771, %4718
  %4774 = fmul fast float %4771, %4719
  %4775 = fmul fast float %4771, %4720
  %4776 = extractvalue %dx.types.CBufRet.f32 %4744, 2
  %4777 = fmul fast float %4776, %4728
  %4778 = fmul fast float %4776, %4729
  %4779 = fadd fast float %4777, %4772
  %4780 = fadd fast float %4778, %4774
  %4781 = extractvalue %dx.types.CBufRet.f32 %4750, 2
  %4782 = fmul fast float %4781, %4736
  %4783 = fmul fast float %4781, %4737
  %4784 = fadd fast float %4779, %4782
  %4785 = fadd fast float %4780, %4783
  %4786 = fmul fast float %4773, %4773
  %4787 = fmul fast float %4785, %4785
  %4788 = fmul fast float %4775, %4775
  %4789 = fadd fast float %4788, %4786
  %4790 = fadd fast float %4789, %4787
  %4791 = call float @dx.op.unary.f32(i32 24, float %4790)  ; Sqrt(value)
  %4792 = fcmp fast ugt float %4791, 0.000000e+00
  br i1 %4792, label %4793, label %4808

; <label>:4793                                    ; preds = %4496
  %4794 = fsub fast float -0.000000e+00, %4775
  %4795 = fdiv fast float %4794, %4791
  %4796 = fsub fast float -0.000000e+00, %4773
  %4797 = fdiv fast float %4796, %4791
  %4798 = fdiv fast float %4785, %4791
  %4799 = fmul fast float %4784, 0x3FE279A760000000
  %4800 = fmul fast float %4797, %4773
  %4801 = fmul fast float %4798, %4785
  %4802 = fmul fast float %4795, %4775
  %4803 = fadd fast float %4800, %4802
  %4804 = fsub fast float %4803, %4801
  %4805 = call float @dx.op.unary.f32(i32 6, float %4804)  ; FAbs(value)
  %4806 = fadd fast float %4805, 0x3DDB7CDFE0000000
  %4807 = fdiv fast float %4799, %4806
  br label %4808

; <label>:4808                                    ; preds = %4793, %4496
  %4809 = phi float [ %4807, %4793 ], [ 1.000000e+00, %4496 ]
  %4810 = fmul fast float %4758, %4758
  %4811 = fmul fast float %4770, %4770
  %4812 = fmul fast float %4760, %4760
  %4813 = fadd fast float %4812, %4810
  %4814 = fadd fast float %4813, %4811
  %4815 = call float @dx.op.unary.f32(i32 24, float %4814)  ; Sqrt(value)
  %4816 = fcmp fast ugt float %4815, 0.000000e+00
  br i1 %4816, label %4817, label %4832

; <label>:4817                                    ; preds = %4808
  %4818 = fsub fast float -0.000000e+00, %4760
  %4819 = fdiv fast float %4818, %4815
  %4820 = fsub fast float -0.000000e+00, %4758
  %4821 = fdiv fast float %4820, %4815
  %4822 = fdiv fast float %4770, %4815
  %4823 = fmul fast float %4769, 0x3FE279A760000000
  %4824 = fmul fast float %4821, %4758
  %4825 = fmul fast float %4822, %4770
  %4826 = fmul fast float %4819, %4760
  %4827 = fadd fast float %4824, %4826
  %4828 = fsub fast float %4827, %4825
  %4829 = call float @dx.op.unary.f32(i32 6, float %4828)  ; FAbs(value)
  %4830 = fadd fast float %4829, 0x3DDB7CDFE0000000
  %4831 = fdiv fast float %4823, %4830
  br label %4832

; <label>:4832                                    ; preds = %4817, %4808
  %4833 = phi float [ %4831, %4817 ], [ 1.000000e+00, %4808 ]
  %4834 = call float @dx.op.binary.f32(i32 36, float %4833, float %4809)  ; FMin(a,b)
  %4835 = fmul fast float %4741, %4741
  %4836 = fmul fast float %4755, %4755
  %4837 = fmul fast float %4743, %4743
  %4838 = fadd fast float %4837, %4835
  %4839 = fadd fast float %4838, %4836
  %4840 = call float @dx.op.unary.f32(i32 24, float %4839)  ; Sqrt(value)
  %4841 = fcmp fast ugt float %4840, 0.000000e+00
  br i1 %4841, label %4842, label %4857

; <label>:4842                                    ; preds = %4832
  %4843 = fsub fast float -0.000000e+00, %4743
  %4844 = fdiv fast float %4843, %4840
  %4845 = fsub fast float -0.000000e+00, %4741
  %4846 = fdiv fast float %4845, %4840
  %4847 = fdiv fast float %4755, %4840
  %4848 = fmul fast float %4754, 0x3FE279A760000000
  %4849 = fmul fast float %4846, %4741
  %4850 = fmul fast float %4847, %4755
  %4851 = fmul fast float %4844, %4743
  %4852 = fadd fast float %4849, %4851
  %4853 = fsub fast float %4852, %4850
  %4854 = call float @dx.op.unary.f32(i32 6, float %4853)  ; FAbs(value)
  %4855 = fadd fast float %4854, 0x3DDB7CDFE0000000
  %4856 = fdiv fast float %4848, %4855
  br label %4857

; <label>:4857                                    ; preds = %4842, %4832
  %4858 = phi float [ %4856, %4842 ], [ 1.000000e+00, %4832 ]
  %4859 = call float @dx.op.binary.f32(i32 36, float %4858, float %4834)  ; FMin(a,b)
  %4860 = call float @dx.op.unary.f32(i32 7, float %4859)  ; Saturate(value)
  %4861 = fcmp fast olt float %4860, 1.000000e+00
  br i1 %4861, label %4862, label %4872

; <label>:4862                                    ; preds = %4857
  %4863 = fmul fast float %4860, %4741
  %4864 = fmul fast float %4860, %4755
  %4865 = fmul fast float %4860, %4743
  %4866 = fmul fast float %4860, %4758
  %4867 = fmul fast float %4860, %4770
  %4868 = fmul fast float %4860, %4760
  %4869 = fmul fast float %4860, %4773
  %4870 = fmul fast float %4860, %4785
  %4871 = fmul fast float %4860, %4775
  br label %4872

; <label>:4872                                    ; preds = %4862, %4857
  %4873 = phi float [ %4869, %4862 ], [ %4773, %4857 ]
  %4874 = phi float [ %4870, %4862 ], [ %4785, %4857 ]
  %4875 = phi float [ %4871, %4862 ], [ %4775, %4857 ]
  %4876 = phi float [ %4866, %4862 ], [ %4758, %4857 ]
  %4877 = phi float [ %4867, %4862 ], [ %4770, %4857 ]
  %4878 = phi float [ %4868, %4862 ], [ %4760, %4857 ]
  %4879 = phi float [ %4863, %4862 ], [ %4741, %4857 ]
  %4880 = phi float [ %4864, %4862 ], [ %4755, %4857 ]
  %4881 = phi float [ %4865, %4862 ], [ %4743, %4857 ]
  %4882 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4754)  ; FMax(a,b)
  %4883 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4769)  ; FMax(a,b)
  %4884 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4784)  ; FMax(a,b)
  %4885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4886 = extractvalue %dx.types.CBufRet.f32 %4885, 0
  %4887 = fcmp fast ogt float %4886, 0.000000e+00
  %4888 = fcmp fast oge float %4542, 0.000000e+00
  %4889 = and i1 %4888, %4887
  %4890 = fcmp fast ole float %4542, 1.000000e+00
  %4891 = and i1 %4890, %4889
  %4892 = fcmp fast oge float %4543, 0.000000e+00
  %4893 = and i1 %4892, %4891
  %4894 = fcmp fast ole float %4543, 1.000000e+00
  %4895 = and i1 %4894, %4893
  br i1 %4895, label %4896, label %5041, !dx.controlflow.hints !73

; <label>:4896                                    ; preds = %4872
  %4897 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4898 = extractvalue %dx.types.CBufRet.f32 %4897, 2
  %4899 = extractvalue %dx.types.CBufRet.f32 %4897, 3
  %4900 = fmul fast float %4898, %4542
  %4901 = fmul fast float %4899, %4543
  %4902 = call float @dx.op.unary.f32(i32 27, float %4900)  ; Round_ni(value)
  %4903 = call float @dx.op.unary.f32(i32 27, float %4901)  ; Round_ni(value)
  %4904 = fptosi float %4902 to i32
  %4905 = fptosi float %4903 to i32
  %4906 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %4904, i32 %4905, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4907 = extractvalue %dx.types.ResRet.i32 %4906, 0
  %4908 = and i32 %4907, 65535
  %4909 = lshr i32 %4907, 16
  %4910 = icmp eq i32 %4908, 65535
  br i1 %4910, label %4947, label %4911

; <label>:4911                                    ; preds = %4896
  %4912 = extractvalue %dx.types.CBufRet.f32 %4885, 1
  %4913 = extractvalue %dx.types.CBufRet.f32 %4897, 0
  %4914 = extractvalue %dx.types.CBufRet.f32 %4897, 1
  %4915 = fmul fast float %4913, %4542
  %4916 = fmul fast float %4914, %4543
  %4917 = fmul fast float %4915, 1.250000e-01
  %4918 = fmul fast float %4916, 1.250000e-01
  %4919 = call float @dx.op.unary.f32(i32 27, float %4917)  ; Round_ni(value)
  %4920 = call float @dx.op.unary.f32(i32 27, float %4918)  ; Round_ni(value)
  %4921 = fmul fast float %4919, 8.000000e+00
  %4922 = fmul fast float %4920, 8.000000e+00
  %4923 = and i32 %4907, 255
  %4924 = lshr i32 %4907, 8
  %4925 = and i32 %4924, 255
  %4926 = mul nuw nsw i32 %4923, 9
  %4927 = uitofp i32 %4926 to float
  %4928 = mul nuw nsw i32 %4925, 9
  %4929 = uitofp i32 %4928 to float
  %4930 = fadd fast float %4927, 5.000000e-01
  %4931 = fadd fast float %4930, %4915
  %4932 = fsub fast float %4931, %4921
  %4933 = fadd fast float %4929, 5.000000e-01
  %4934 = fadd fast float %4933, %4916
  %4935 = fsub fast float %4934, %4922
  %4936 = fdiv fast float %4932, %4886
  %4937 = fdiv fast float %4935, %4912
  %4938 = fmul fast float %4570, 4.375000e-01
  %4939 = fadd fast float %4938, 3.125000e-02
  %4940 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %4936, float %4937, float %4939, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4941 = extractvalue %dx.types.ResRet.f32 %4940, 0
  %4942 = extractvalue %dx.types.ResRet.f32 %4940, 1
  %4943 = extractvalue %dx.types.ResRet.f32 %4940, 2
  %4944 = fadd fast float %4941, %4882
  %4945 = fadd fast float %4942, %4883
  %4946 = fadd fast float %4943, %4884
  br label %4947

; <label>:4947                                    ; preds = %4911, %4896
  %4948 = phi float [ %4946, %4911 ], [ %4884, %4896 ]
  %4949 = phi float [ %4945, %4911 ], [ %4883, %4896 ]
  %4950 = phi float [ %4944, %4911 ], [ %4882, %4896 ]
  %4951 = icmp eq i32 %4909, 65535
  br i1 %4951, label %5041, label %4952

; <label>:4952                                    ; preds = %4947
  %4953 = extractvalue %dx.types.CBufRet.f32 %4885, 1
  %4954 = extractvalue %dx.types.CBufRet.f32 %4897, 0
  %4955 = extractvalue %dx.types.CBufRet.f32 %4897, 1
  %4956 = fmul fast float %4954, %4542
  %4957 = fmul fast float %4955, %4543
  %4958 = fmul fast float %4956, 1.250000e-01
  %4959 = fmul fast float %4957, 1.250000e-01
  %4960 = call float @dx.op.unary.f32(i32 27, float %4958)  ; Round_ni(value)
  %4961 = call float @dx.op.unary.f32(i32 27, float %4959)  ; Round_ni(value)
  %4962 = fmul fast float %4960, 8.000000e+00
  %4963 = fmul fast float %4961, 8.000000e+00
  %4964 = fsub fast float %4956, %4962
  %4965 = fsub fast float %4957, %4963
  %4966 = fadd fast float %4964, 5.000000e-01
  %4967 = fadd fast float %4965, 5.000000e-01
  %4968 = and i32 %4909, 255
  %4969 = lshr i32 %4907, 24
  %4970 = mul nuw nsw i32 %4968, 9
  %4971 = uitofp i32 %4970 to float
  %4972 = mul nuw nsw i32 %4969, 9
  %4973 = uitofp i32 %4972 to float
  %4974 = fadd fast float %4966, %4971
  %4975 = fadd fast float %4967, %4973
  %4976 = fdiv fast float %4974, %4886
  %4977 = fdiv fast float %4975, %4953
  %4978 = fmul fast float %4570, 4.375000e-01
  %4979 = fadd fast float %4978, 3.125000e-02
  %4980 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %4976, float %4977, float %4979, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4981 = extractvalue %dx.types.ResRet.f32 %4980, 0
  %4982 = extractvalue %dx.types.ResRet.f32 %4980, 1
  %4983 = extractvalue %dx.types.ResRet.f32 %4980, 2
  %4984 = fadd fast float %4978, 5.312500e-01
  %4985 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %4976, float %4977, float %4984, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4986 = extractvalue %dx.types.ResRet.f32 %4985, 0
  %4987 = extractvalue %dx.types.ResRet.f32 %4985, 1
  %4988 = extractvalue %dx.types.ResRet.f32 %4985, 2
  %4989 = fmul fast float %4986, 2.000000e+00
  %4990 = fmul fast float %4987, 2.000000e+00
  %4991 = fmul fast float %4988, 2.000000e+00
  %4992 = fadd fast float %4989, -1.000000e+00
  %4993 = fadd fast float %4990, -1.000000e+00
  %4994 = fadd fast float %4991, -1.000000e+00
  %4995 = fmul fast float %4992, %4992
  %4996 = fmul fast float %4993, %4993
  %4997 = fadd fast float %4995, %4996
  %4998 = fmul fast float %4994, %4994
  %4999 = fadd fast float %4997, %4998
  %5000 = call float @dx.op.unary.f32(i32 24, float %4999)  ; Sqrt(value)
  %5001 = fcmp fast ogt float %5000, 0.000000e+00
  br i1 %5001, label %5002, label %5006

; <label>:5002                                    ; preds = %4952
  %5003 = fdiv fast float %4992, %5000
  %5004 = fdiv fast float %4993, %5000
  %5005 = fdiv fast float %4994, %5000
  br label %5006

; <label>:5006                                    ; preds = %5002, %4952
  %5007 = phi float [ %5003, %5002 ], [ 0.000000e+00, %4952 ]
  %5008 = phi float [ %5004, %5002 ], [ 0.000000e+00, %4952 ]
  %5009 = phi float [ %5005, %5002 ], [ 0.000000e+00, %4952 ]
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.CBufRet.f32 %5010, 1
  %5013 = fsub fast float %4527, %5011
  %5014 = fsub fast float %4528, %5012
  %5015 = fmul fast float %5013, %5013
  %5016 = fmul fast float %5014, %5014
  %5017 = fadd fast float %5015, %5016
  %5018 = call float @dx.op.unary.f32(i32 24, float %5017)  ; Sqrt(value)
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5022 = fsub fast float %5018, %5020
  %5023 = fdiv fast float %5022, %5021
  %5024 = call float @dx.op.unary.f32(i32 7, float %5023)  ; Saturate(value)
  %5025 = fmul fast float %5024, 2.000000e+00
  %5026 = fsub fast float 3.000000e+00, %5025
  %5027 = fmul fast float %5024, %5024
  %5028 = fmul fast float %5027, %5026
  %5029 = call float @dx.op.dot3.f32(i32 55, float %5007, float %5008, float %5009, float %4500, float %4501, float %4502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5030 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5029)  ; FMax(a,b)
  %5031 = fmul fast float %5030, 0x400C5BF8A0000000
  %5032 = fmul fast float %5028, %4981
  %5033 = fmul fast float %5032, %5031
  %5034 = fadd fast float %5033, %4950
  %5035 = fmul fast float %5028, %4982
  %5036 = fmul fast float %5035, %5031
  %5037 = fadd fast float %5036, %4949
  %5038 = fmul fast float %5028, %4983
  %5039 = fmul fast float %5038, %5031
  %5040 = fadd fast float %5039, %4948
  br label %5041

; <label>:5041                                    ; preds = %5006, %4947, %4872
  %5042 = phi float [ %5040, %5006 ], [ %4948, %4947 ], [ %4884, %4872 ]
  %5043 = phi float [ %5037, %5006 ], [ %4949, %4947 ], [ %4883, %4872 ]
  %5044 = phi float [ %5034, %5006 ], [ %4950, %4947 ], [ %4882, %4872 ]
  %5045 = fcmp fast ogt float %4529, %4566
  %5046 = and i1 %4888, %5045
  %5047 = and i1 %4890, %5046
  %5048 = and i1 %4892, %5047
  %5049 = and i1 %4894, %5048
  br i1 %5049, label %5050, label %5107, !dx.controlflow.hints !74

; <label>:5050                                    ; preds = %5041
  %5051 = fmul fast float %4568, 0x3FC24924A0000000
  %5052 = fsub fast float %4529, %4566
  %5053 = fdiv fast float %5052, %5051
  %5054 = call float @dx.op.unary.f32(i32 7, float %5053)  ; Saturate(value)
  %5055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %5056 = extractvalue %dx.types.CBufRet.f32 %5055, 0
  %5057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.CBufRet.f32 %5057, 1
  %5060 = extractvalue %dx.types.CBufRet.f32 %5057, 2
  %5061 = fsub fast float %5056, %5044
  %5062 = fsub fast float %5058, %4879
  %5063 = fsub fast float %5059, %4880
  %5064 = fsub fast float %5060, %4881
  %5065 = fmul fast float %5061, %5054
  %5066 = fmul fast float %5062, %5054
  %5067 = fmul fast float %5063, %5054
  %5068 = fmul fast float %5064, %5054
  %5069 = fadd fast float %5065, %5044
  %5070 = fadd fast float %5066, %4879
  %5071 = fadd fast float %5067, %4880
  %5072 = fadd fast float %5068, %4881
  %5073 = extractvalue %dx.types.CBufRet.f32 %5055, 1
  %5074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %5075 = extractvalue %dx.types.CBufRet.f32 %5074, 0
  %5076 = extractvalue %dx.types.CBufRet.f32 %5074, 1
  %5077 = extractvalue %dx.types.CBufRet.f32 %5074, 2
  %5078 = fsub fast float %5073, %5043
  %5079 = fsub fast float %5075, %4876
  %5080 = fsub fast float %5076, %4877
  %5081 = fsub fast float %5077, %4878
  %5082 = fmul fast float %5078, %5054
  %5083 = fmul fast float %5079, %5054
  %5084 = fmul fast float %5080, %5054
  %5085 = fmul fast float %5081, %5054
  %5086 = fadd fast float %5082, %5043
  %5087 = fadd fast float %5083, %4876
  %5088 = fadd fast float %5084, %4877
  %5089 = fadd fast float %5085, %4878
  %5090 = extractvalue %dx.types.CBufRet.f32 %5055, 2
  %5091 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %5092 = extractvalue %dx.types.CBufRet.f32 %5091, 0
  %5093 = extractvalue %dx.types.CBufRet.f32 %5091, 1
  %5094 = extractvalue %dx.types.CBufRet.f32 %5091, 2
  %5095 = fsub fast float %5090, %5042
  %5096 = fsub fast float %5092, %4873
  %5097 = fsub fast float %5093, %4874
  %5098 = fsub fast float %5094, %4875
  %5099 = fmul fast float %5095, %5054
  %5100 = fmul fast float %5096, %5054
  %5101 = fmul fast float %5097, %5054
  %5102 = fmul fast float %5098, %5054
  %5103 = fadd fast float %5099, %5042
  %5104 = fadd fast float %5100, %4873
  %5105 = fadd fast float %5101, %4874
  %5106 = fadd fast float %5102, %4875
  br label %5107

; <label>:5107                                    ; preds = %5050, %5041
  %5108 = phi float [ %5103, %5050 ], [ %5042, %5041 ]
  %5109 = phi float [ %5104, %5050 ], [ %4873, %5041 ]
  %5110 = phi float [ %5105, %5050 ], [ %4874, %5041 ]
  %5111 = phi float [ %5106, %5050 ], [ %4875, %5041 ]
  %5112 = phi float [ %5086, %5050 ], [ %5043, %5041 ]
  %5113 = phi float [ %5087, %5050 ], [ %4876, %5041 ]
  %5114 = phi float [ %5088, %5050 ], [ %4877, %5041 ]
  %5115 = phi float [ %5089, %5050 ], [ %4878, %5041 ]
  %5116 = phi float [ %5069, %5050 ], [ %5044, %5041 ]
  %5117 = phi float [ %5070, %5050 ], [ %4879, %5041 ]
  %5118 = phi float [ %5071, %5050 ], [ %4880, %5041 ]
  %5119 = phi float [ %5072, %5050 ], [ %4881, %5041 ]
  %5120 = extractvalue %dx.types.CBufRet.f32 %4691, 3
  %5121 = fmul fast float %5120, %5116
  %5122 = fmul fast float %5120, %5112
  %5123 = fmul fast float %5120, %5108
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 3
  %5126 = fmul fast float %5121, %5125
  %5127 = fmul fast float %5122, %5125
  %5128 = fmul fast float %5123, %5125
  %5129 = fmul fast float %5117, 1.500000e+00
  %5130 = fmul fast float %5129, %5120
  %5131 = fmul fast float %5130, %5125
  %5132 = fmul fast float %5118, 1.500000e+00
  %5133 = fmul fast float %5132, %5120
  %5134 = fmul fast float %5133, %5125
  %5135 = fmul fast float %5119, 1.500000e+00
  %5136 = fmul fast float %5135, %5120
  %5137 = fmul fast float %5136, %5125
  %5138 = fmul fast float %5113, 1.500000e+00
  %5139 = fmul fast float %5138, %5120
  %5140 = fmul fast float %5139, %5125
  %5141 = fmul fast float %5114, 1.500000e+00
  %5142 = fmul fast float %5141, %5120
  %5143 = fmul fast float %5142, %5125
  %5144 = fmul fast float %5115, 1.500000e+00
  %5145 = fmul fast float %5144, %5120
  %5146 = fmul fast float %5145, %5125
  %5147 = fmul fast float %5109, 1.500000e+00
  %5148 = fmul fast float %5147, %5120
  %5149 = fmul fast float %5148, %5125
  %5150 = fmul fast float %5110, 1.500000e+00
  %5151 = fmul fast float %5150, %5120
  %5152 = fmul fast float %5151, %5125
  %5153 = fmul fast float %5111, 1.500000e+00
  %5154 = fmul fast float %5153, %5120
  %5155 = fmul fast float %5154, %5125
  %5156 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5126)  ; FMax(a,b)
  %5157 = call float @dx.op.dot3.f32(i32 55, float %5131, float %5134, float %5137, float %5131, float %5134, float %5137)  ; Dot3(ax,ay,az,bx,by,bz)
  %5158 = fcmp fast oeq float %5157, 0.000000e+00
  %5159 = fcmp fast oeq float %5156, 0.000000e+00
  %5160 = or i1 %5159, %5158
  br i1 %5160, label %5190, label %5161

; <label>:5161                                    ; preds = %5107
  %5162 = fsub fast float -0.000000e+00, %5137
  %5163 = fsub fast float -0.000000e+00, %5131
  %5164 = call float @dx.op.unary.f32(i32 24, float %5157)  ; Sqrt(value)
  %5165 = fdiv fast float %5164, %5156
  %5166 = fcmp fast ogt float %5165, 0x3FFB6F8900000000
  %5167 = select i1 %5166, float 0x3FFB6F8900000000, float %5165
  %5168 = fmul fast float %5167, 0x3FE8A23460000000
  %5169 = call float @dx.op.unary.f32(i32 7, float %5168)  ; Saturate(value)
  %5170 = call float @dx.op.binary.f32(i32 35, float %5167, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5171 = fmul fast float %5169, %5156
  %5172 = fmul fast float %5170, 0x3FF279A740000000
  %5173 = fadd fast float %5172, -1.000000e+00
  %5174 = call float @dx.op.dot3.f32(i32 55, float %5162, float %5163, float %5134, float %5162, float %5163, float %5134)  ; Dot3(ax,ay,az,bx,by,bz)
  %5175 = call float @dx.op.unary.f32(i32 25, float %5174)  ; Rsqrt(value)
  %5176 = fmul fast float %5175, %5162
  %5177 = fmul fast float %5175, %5163
  %5178 = fmul fast float %5175, %5134
  %5179 = fmul fast float %5173, %5173
  %5180 = fsub fast float 1.000000e+00, %5179
  %5181 = fmul fast float %5170, 0x40005F8BE0000000
  %5182 = fsub fast float 0x400C5BF8A0000000, %5181
  %5183 = fdiv fast float %5171, %5182
  %5184 = fmul fast float %5183, 0x3FEE31C3C0000000
  %5185 = fmul fast float %5184, %5180
  %5186 = fmul fast float %5170, 0x3FDACB7480000000
  %5187 = fadd fast float %5186, 0xBFD7347680000000
  %5188 = fmul fast float %5187, %5183
  %5189 = fmul fast float %5188, %5180
  br label %5190

; <label>:5190                                    ; preds = %5161, %5107
  %5191 = phi float [ %5176, %5161 ], [ 0.000000e+00, %5107 ]
  %5192 = phi float [ %5177, %5161 ], [ 0.000000e+00, %5107 ]
  %5193 = phi float [ %5178, %5161 ], [ 0.000000e+00, %5107 ]
  %5194 = phi float [ %5185, %5161 ], [ 0.000000e+00, %5107 ]
  %5195 = phi float [ %5189, %5161 ], [ 0.000000e+00, %5107 ]
  %5196 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %5193, float %4500, float %4501, float %4502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5197 = fmul fast float %5196, 0x3FDF454380000000
  %5198 = fmul fast float %5196, %5196
  %5199 = fmul fast float %5198, 0x3FEE471020000000
  %5200 = fadd fast float %5199, 0xBFD42F6020000000
  %5201 = fmul fast float %5156, 0x3FD20DD760000000
  %5202 = fmul fast float %5200, %5195
  %5203 = fadd fast float %5202, %5201
  %5204 = fmul fast float %5197, %5194
  %5205 = fadd fast float %5203, %5204
  %5206 = fsub fast float %5203, %5204
  %5207 = call float @dx.op.dot3.f32(i32 55, float %5191, float %5192, float %5193, float %4516, float %4517, float %4518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5208 = fmul fast float %5207, 0x3FDF454380000000
  %5209 = fmul fast float %5207, %5207
  %5210 = fmul fast float %5209, 0x3FEE471020000000
  %5211 = fadd fast float %5210, 0xBFD42F6020000000
  %5212 = call float @dx.op.dot3.f32(i32 55, float %5156, float %5194, float %5195, float 0x3FD20DD760000000, float %5208, float %5211)  ; Dot3(ax,ay,az,bx,by,bz)
  %5213 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5127)  ; FMax(a,b)
  %5214 = call float @dx.op.dot3.f32(i32 55, float %5140, float %5143, float %5146, float %5140, float %5143, float %5146)  ; Dot3(ax,ay,az,bx,by,bz)
  %5215 = fcmp fast oeq float %5214, 0.000000e+00
  %5216 = fcmp fast oeq float %5213, 0.000000e+00
  %5217 = or i1 %5216, %5215
  br i1 %5217, label %5247, label %5218

; <label>:5218                                    ; preds = %5190
  %5219 = fsub fast float -0.000000e+00, %5146
  %5220 = fsub fast float -0.000000e+00, %5140
  %5221 = call float @dx.op.unary.f32(i32 24, float %5214)  ; Sqrt(value)
  %5222 = fdiv fast float %5221, %5213
  %5223 = fcmp fast ogt float %5222, 0x3FFB6F8900000000
  %5224 = select i1 %5223, float 0x3FFB6F8900000000, float %5222
  %5225 = fmul fast float %5224, 0x3FE8A23460000000
  %5226 = call float @dx.op.unary.f32(i32 7, float %5225)  ; Saturate(value)
  %5227 = call float @dx.op.binary.f32(i32 35, float %5224, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5228 = fmul fast float %5226, %5213
  %5229 = fmul fast float %5227, 0x3FF279A740000000
  %5230 = fadd fast float %5229, -1.000000e+00
  %5231 = call float @dx.op.dot3.f32(i32 55, float %5219, float %5220, float %5143, float %5219, float %5220, float %5143)  ; Dot3(ax,ay,az,bx,by,bz)
  %5232 = call float @dx.op.unary.f32(i32 25, float %5231)  ; Rsqrt(value)
  %5233 = fmul fast float %5232, %5219
  %5234 = fmul fast float %5232, %5220
  %5235 = fmul fast float %5232, %5143
  %5236 = fmul fast float %5230, %5230
  %5237 = fsub fast float 1.000000e+00, %5236
  %5238 = fmul fast float %5227, 0x40005F8BE0000000
  %5239 = fsub fast float 0x400C5BF8A0000000, %5238
  %5240 = fdiv fast float %5228, %5239
  %5241 = fmul fast float %5240, 0x3FEE31C3C0000000
  %5242 = fmul fast float %5241, %5237
  %5243 = fmul fast float %5227, 0x3FDACB7480000000
  %5244 = fadd fast float %5243, 0xBFD7347680000000
  %5245 = fmul fast float %5244, %5240
  %5246 = fmul fast float %5245, %5237
  br label %5247

; <label>:5247                                    ; preds = %5218, %5190
  %5248 = phi float [ %5233, %5218 ], [ 0.000000e+00, %5190 ]
  %5249 = phi float [ %5234, %5218 ], [ 0.000000e+00, %5190 ]
  %5250 = phi float [ %5235, %5218 ], [ 0.000000e+00, %5190 ]
  %5251 = phi float [ %5242, %5218 ], [ 0.000000e+00, %5190 ]
  %5252 = phi float [ %5246, %5218 ], [ 0.000000e+00, %5190 ]
  %5253 = call float @dx.op.dot3.f32(i32 55, float %5248, float %5249, float %5250, float %4500, float %4501, float %4502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5254 = fmul fast float %5253, 0x3FDF454380000000
  %5255 = fmul fast float %5253, %5253
  %5256 = fmul fast float %5255, 0x3FEE471020000000
  %5257 = fadd fast float %5256, 0xBFD42F6020000000
  %5258 = fmul fast float %5213, 0x3FD20DD760000000
  %5259 = fmul fast float %5257, %5252
  %5260 = fadd fast float %5259, %5258
  %5261 = fmul fast float %5254, %5251
  %5262 = fadd fast float %5260, %5261
  %5263 = fsub fast float %5260, %5261
  %5264 = call float @dx.op.dot3.f32(i32 55, float %5248, float %5249, float %5250, float %4516, float %4517, float %4518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5265 = fmul fast float %5264, 0x3FDF454380000000
  %5266 = fmul fast float %5264, %5264
  %5267 = fmul fast float %5266, 0x3FEE471020000000
  %5268 = fadd fast float %5267, 0xBFD42F6020000000
  %5269 = call float @dx.op.dot3.f32(i32 55, float %5213, float %5251, float %5252, float 0x3FD20DD760000000, float %5265, float %5268)  ; Dot3(ax,ay,az,bx,by,bz)
  %5270 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5128)  ; FMax(a,b)
  %5271 = call float @dx.op.dot3.f32(i32 55, float %5149, float %5152, float %5155, float %5149, float %5152, float %5155)  ; Dot3(ax,ay,az,bx,by,bz)
  %5272 = fcmp fast oeq float %5271, 0.000000e+00
  %5273 = fcmp fast oeq float %5270, 0.000000e+00
  %5274 = or i1 %5273, %5272
  br i1 %5274, label %5304, label %5275

; <label>:5275                                    ; preds = %5247
  %5276 = fsub fast float -0.000000e+00, %5155
  %5277 = fsub fast float -0.000000e+00, %5149
  %5278 = call float @dx.op.unary.f32(i32 24, float %5271)  ; Sqrt(value)
  %5279 = fdiv fast float %5278, %5270
  %5280 = fcmp fast ogt float %5279, 0x3FFB6F8900000000
  %5281 = select i1 %5280, float 0x3FFB6F8900000000, float %5279
  %5282 = fmul fast float %5281, 0x3FE8A23460000000
  %5283 = call float @dx.op.unary.f32(i32 7, float %5282)  ; Saturate(value)
  %5284 = call float @dx.op.binary.f32(i32 35, float %5281, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5285 = fmul fast float %5283, %5270
  %5286 = fmul fast float %5284, 0x3FF279A740000000
  %5287 = fadd fast float %5286, -1.000000e+00
  %5288 = call float @dx.op.dot3.f32(i32 55, float %5276, float %5277, float %5152, float %5276, float %5277, float %5152)  ; Dot3(ax,ay,az,bx,by,bz)
  %5289 = call float @dx.op.unary.f32(i32 25, float %5288)  ; Rsqrt(value)
  %5290 = fmul fast float %5289, %5276
  %5291 = fmul fast float %5289, %5277
  %5292 = fmul fast float %5289, %5152
  %5293 = fmul fast float %5287, %5287
  %5294 = fsub fast float 1.000000e+00, %5293
  %5295 = fmul fast float %5284, 0x40005F8BE0000000
  %5296 = fsub fast float 0x400C5BF8A0000000, %5295
  %5297 = fdiv fast float %5285, %5296
  %5298 = fmul fast float %5297, 0x3FEE31C3C0000000
  %5299 = fmul fast float %5298, %5294
  %5300 = fmul fast float %5284, 0x3FDACB7480000000
  %5301 = fadd fast float %5300, 0xBFD7347680000000
  %5302 = fmul fast float %5301, %5297
  %5303 = fmul fast float %5302, %5294
  br label %5304

; <label>:5304                                    ; preds = %5275, %5247
  %5305 = phi float [ %5290, %5275 ], [ 0.000000e+00, %5247 ]
  %5306 = phi float [ %5291, %5275 ], [ 0.000000e+00, %5247 ]
  %5307 = phi float [ %5292, %5275 ], [ 0.000000e+00, %5247 ]
  %5308 = phi float [ %5299, %5275 ], [ 0.000000e+00, %5247 ]
  %5309 = phi float [ %5303, %5275 ], [ 0.000000e+00, %5247 ]
  %5310 = call float @dx.op.dot3.f32(i32 55, float %5305, float %5306, float %5307, float %4500, float %4501, float %4502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5311 = fmul fast float %5310, 0x3FDF454380000000
  %5312 = fmul fast float %5310, %5310
  %5313 = fmul fast float %5312, 0x3FEE471020000000
  %5314 = fadd fast float %5313, 0xBFD42F6020000000
  %5315 = fmul fast float %5270, 0x3FD20DD760000000
  %5316 = fmul fast float %5314, %5309
  %5317 = fadd fast float %5316, %5315
  %5318 = fmul fast float %5311, %5308
  %5319 = fadd fast float %5317, %5318
  %5320 = fsub fast float %5317, %5318
  %5321 = call float @dx.op.dot3.f32(i32 55, float %5305, float %5306, float %5307, float %4516, float %4517, float %4518)  ; Dot3(ax,ay,az,bx,by,bz)
  %5322 = fmul fast float %5321, 0x3FDF454380000000
  %5323 = fmul fast float %5321, %5321
  %5324 = fmul fast float %5323, 0x3FEE471020000000
  %5325 = fadd fast float %5324, 0xBFD42F6020000000
  %5326 = call float @dx.op.dot3.f32(i32 55, float %5270, float %5308, float %5309, float 0x3FD20DD760000000, float %5322, float %5325)  ; Dot3(ax,ay,az,bx,by,bz)
  %5327 = call float @dx.op.binary.f32(i32 35, float %5205, float 0.000000e+00)  ; FMax(a,b)
  %5328 = call float @dx.op.binary.f32(i32 35, float %5262, float 0.000000e+00)  ; FMax(a,b)
  %5329 = call float @dx.op.binary.f32(i32 35, float %5319, float 0.000000e+00)  ; FMax(a,b)
  %5330 = call float @dx.op.binary.f32(i32 35, float %5206, float 0.000000e+00)  ; FMax(a,b)
  %5331 = call float @dx.op.binary.f32(i32 35, float %5263, float 0.000000e+00)  ; FMax(a,b)
  %5332 = call float @dx.op.binary.f32(i32 35, float %5320, float 0.000000e+00)  ; FMax(a,b)
  %5333 = call float @dx.op.binary.f32(i32 35, float %5212, float 0.000000e+00)  ; FMax(a,b)
  %5334 = call float @dx.op.binary.f32(i32 35, float %5269, float 0.000000e+00)  ; FMax(a,b)
  %5335 = call float @dx.op.binary.f32(i32 35, float %5326, float 0.000000e+00)  ; FMax(a,b)
  %5336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5337 = extractvalue %dx.types.CBufRet.f32 %5336, 0
  %5338 = call float @dx.op.binary.f32(i32 36, float %4503, float %5337)  ; FMin(a,b)
  %5339 = fsub fast float 1.000000e+00, %4519
  %5340 = fmul fast float %5338, %5339
  %5341 = fsub fast float 1.000000e+00, %5340
  %5342 = bitcast float %5341 to i32
  %5343 = sub nsw i32 2129859010, %5342
  %5344 = bitcast i32 %5343 to float
  %5345 = call float @dx.op.binary.f32(i32 36, float %4504, float %5337)  ; FMin(a,b)
  %5346 = fmul fast float %5345, %5339
  %5347 = fsub fast float 1.000000e+00, %5346
  %5348 = bitcast float %5347 to i32
  %5349 = sub nsw i32 2129859010, %5348
  %5350 = bitcast i32 %5349 to float
  %5351 = call float @dx.op.binary.f32(i32 36, float %4505, float %5337)  ; FMin(a,b)
  %5352 = fmul fast float %5351, %5339
  %5353 = fsub fast float 1.000000e+00, %5352
  %5354 = bitcast float %5353 to i32
  %5355 = sub nsw i32 2129859010, %5354
  %5356 = bitcast i32 %5355 to float
  %5357 = fmul fast float %5327, %4519
  %5358 = fmul fast float %5357, %5344
  %5359 = fmul fast float %5328, %4519
  %5360 = fmul fast float %5359, %5350
  %5361 = fmul fast float %5329, %4519
  %5362 = fmul fast float %5361, %5356
  %5363 = call float @dx.op.binary.f32(i32 36, float %4497, float %5337)  ; FMin(a,b)
  %5364 = fmul fast float %5363, %5339
  %5365 = fsub fast float 1.000000e+00, %5364
  %5366 = bitcast float %5365 to i32
  %5367 = sub nsw i32 2129859010, %5366
  %5368 = bitcast i32 %5367 to float
  %5369 = call float @dx.op.binary.f32(i32 36, float %4498, float %5337)  ; FMin(a,b)
  %5370 = fmul fast float %5369, %5339
  %5371 = fsub fast float 1.000000e+00, %5370
  %5372 = bitcast float %5371 to i32
  %5373 = sub nsw i32 2129859010, %5372
  %5374 = bitcast i32 %5373 to float
  %5375 = call float @dx.op.binary.f32(i32 36, float %4508, float %5337)  ; FMin(a,b)
  %5376 = fmul fast float %5375, %5339
  %5377 = fsub fast float 1.000000e+00, %5376
  %5378 = bitcast float %5377 to i32
  %5379 = sub nsw i32 2129859010, %5378
  %5380 = bitcast i32 %5379 to float
  %5381 = fmul fast float %5333, %4519
  %5382 = fmul fast float %5381, %5368
  %5383 = fmul fast float %5334, %4519
  %5384 = fmul fast float %5383, %5374
  %5385 = fmul fast float %5335, %4519
  %5386 = fmul fast float %5385, %5380
  %5387 = call float @dx.op.dot3.f32(i32 55, float %5358, float %5360, float %5362, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5388 = select i1 %199, float 0.000000e+00, float %5358
  %5389 = select i1 %199, float %5387, float %5360
  %5390 = select i1 %199, float 0.000000e+00, float %5362
  %5391 = call float @dx.op.dot3.f32(i32 55, float %5330, float %5331, float %5332, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5392 = select i1 %199, float 0.000000e+00, float %5330
  %5393 = select i1 %199, float %5391, float %5331
  %5394 = select i1 %199, float 0.000000e+00, float %5332
  %5395 = call float @dx.op.dot3.f32(i32 55, float %5382, float %5384, float %5386, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5396 = select i1 %199, float 0.000000e+00, float %5382
  %5397 = select i1 %199, float %5395, float %5384
  %5398 = select i1 %199, float 0.000000e+00, float %5386
  %5399 = fmul fast float %4510, 9.843750e-01
  %5400 = fmul fast float %4506, 9.843750e-01
  %5401 = fadd fast float %5399, 7.812500e-03
  %5402 = fadd fast float %5400, 7.812500e-03
  %5403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5401, float %5402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5404 = extractvalue %dx.types.ResRet.f32 %5403, 2
  %5405 = extractvalue %dx.types.ResRet.f32 %5403, 3
  %5406 = fmul fast float %5404, %4497
  %5407 = fmul fast float %5404, %4498
  %5408 = fmul fast float %5404, %4508
  %5409 = fadd fast float %5406, %5405
  %5410 = fadd fast float %5407, %5405
  %5411 = fadd fast float %5408, %5405
  %5412 = call float @dx.op.binary.f32(i32 35, float %5410, float %5411)  ; FMax(a,b)
  %5413 = call float @dx.op.binary.f32(i32 35, float %5409, float %5412)  ; FMax(a,b)
  %5414 = fsub fast float 1.000000e+00, %5413
  %5415 = fmul fast float %5409, %5396
  %5416 = fmul fast float %5410, %5397
  %5417 = fmul fast float %5411, %5398
  %5418 = fadd fast float %5415, %3792
  %5419 = fmul fast float %5418, %3851
  %5420 = fadd fast float %5416, %3793
  %5421 = fmul fast float %5420, %3851
  %5422 = fadd fast float %5417, %3794
  %5423 = fmul fast float %5422, %3851
  %5424 = fmul fast float %5414, %5390
  %5425 = fmul fast float %5414, %5389
  %5426 = fmul fast float %5414, %5388
  %5427 = fmul fast float %5414, %3939
  %5428 = fadd fast float %5427, -1.000000e+00
  %5429 = fmul fast float %5428, %3851
  %5430 = fadd fast float %5429, 1.000000e+00
  %5431 = fmul fast float %5414, %3938
  %5432 = fadd fast float %5431, -1.000000e+00
  %5433 = fmul fast float %5432, %3851
  %5434 = fadd fast float %5433, 1.000000e+00
  %5435 = fmul fast float %5414, %3937
  %5436 = fadd fast float %5435, -1.000000e+00
  %5437 = fmul fast float %5436, %3851
  %5438 = fadd fast float %5437, 1.000000e+00
  %5439 = fmul fast float %5438, %5392
  %5440 = fmul fast float %5434, %5393
  %5441 = fmul fast float %5430, %5394
  %5442 = fadd fast float %5439, %5426
  %5443 = fmul fast float %5442, %3851
  %5444 = fadd fast float %5440, %5425
  %5445 = fmul fast float %5444, %3851
  %5446 = fadd fast float %5441, %5424
  %5447 = fmul fast float %5446, %3851
  %5448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5448, 3
  %5450 = fcmp fast oeq float %5449, 0.000000e+00
  br i1 %5450, label %5637, label %5451

; <label>:5451                                    ; preds = %5304
  %5452 = extractvalue %dx.types.CBufRet.f32 %5448, 0
  %5453 = extractvalue %dx.types.CBufRet.f32 %5448, 1
  %5454 = extractvalue %dx.types.CBufRet.f32 %5448, 2
  %5455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5456 = extractvalue %dx.types.CBufRet.f32 %5455, 0
  %5457 = extractvalue %dx.types.CBufRet.f32 %5455, 1
  %5458 = extractvalue %dx.types.CBufRet.f32 %5455, 2
  %5459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5460 = extractvalue %dx.types.CBufRet.f32 %5459, 0
  %5461 = extractvalue %dx.types.CBufRet.f32 %5459, 1
  %5462 = call float @dx.op.dot3.f32(i32 55, float %5456, float %5457, float %5458, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5463 = select i1 %199, float %5460, float %5456
  %5464 = select i1 %199, float %5462, float %5457
  %5465 = select i1 %199, float %5461, float %5458
  %5466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5467 = extractvalue %dx.types.CBufRet.f32 %5466, 1
  %5468 = fcmp fast une float %5467, 0.000000e+00
  br i1 %5468, label %5469, label %5486

; <label>:5469                                    ; preds = %5451
  %5470 = fptoui float %64 to i32
  %5471 = fptoui float %65 to i32
  %5472 = lshr i32 %5470, 4
  %5473 = lshr i32 %5471, 4
  %5474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5475 = extractvalue %dx.types.CBufRet.f32 %5474, 0
  %5476 = fptoui float %5475 to i32
  %5477 = add i32 %5476, 15
  %5478 = lshr i32 %5477, 4
  %5479 = mul i32 %5478, %5473
  %5480 = add i32 %5479, %5472
  %5481 = shl i32 %5480, 3
  %5482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5481, i32 undef)  ; BufferLoad(srv,index,wot)
  %5483 = extractvalue %dx.types.ResRet.i32 %5482, 0
  %5484 = and i32 %5483, -268435456
  %5485 = icmp eq i32 %5484, -1342177280
  br i1 %5485, label %5496, label %5486

; <label>:5486                                    ; preds = %5469, %5451
  %5487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5488 = extractvalue %dx.types.CBufRet.f32 %5487, 2
  %5489 = extractvalue %dx.types.CBufRet.f32 %5487, 3
  %5490 = fmul fast float %5488, %64
  %5491 = fmul fast float %5489, %65
  %5492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %32, float %5490, float %5491, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5493 = extractvalue %dx.types.ResRet.f32 %5492, 0
  %5494 = extractvalue %dx.types.ResRet.f32 %5492, 1
  %5495 = extractvalue %dx.types.ResRet.f32 %5492, 2
  br label %5496

; <label>:5496                                    ; preds = %5486, %5469
  %5497 = phi float [ %5493, %5486 ], [ 0.000000e+00, %5469 ]
  %5498 = phi float [ %5494, %5486 ], [ 0.000000e+00, %5469 ]
  %5499 = phi float [ %5495, %5486 ], [ 0.000000e+00, %5469 ]
  %5500 = call float @dx.op.binary.f32(i32 36, float %5498, float %5499)  ; FMin(a,b)
  %5501 = call float @dx.op.binary.f32(i32 36, float %5497, float %5500)  ; FMin(a,b)
  %5502 = fcmp fast ogt float %5501, 0.000000e+00
  br i1 %5502, label %5503, label %5637, !dx.controlflow.hints !75

; <label>:5503                                    ; preds = %5496
  %5504 = bitcast i32 %4522 to float
  %5505 = fmul fast float %5497, %5463
  %5506 = fmul fast float %5498, %5464
  %5507 = fmul fast float %5499, %5465
  %5508 = fsub fast float %5452, %143
  %5509 = fsub fast float %5453, %144
  %5510 = fsub fast float %5454, %145
  %5511 = call float @dx.op.dot3.f32(i32 55, float %5508, float %5509, float %5510, float %5508, float %5509, float %5510)  ; Dot3(ax,ay,az,bx,by,bz)
  %5512 = call float @dx.op.unary.f32(i32 25, float %5511)  ; Rsqrt(value)
  %5513 = fmul fast float %5512, %5508
  %5514 = fmul fast float %5512, %5509
  %5515 = fmul fast float %5512, %5510
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float %4500, float %4501, float %4502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = call float @dx.op.dot3.f32(i32 55, float %4331, float %4332, float %4333, float %5513, float %5514, float %5515)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = call float @dx.op.unary.f32(i32 7, float %5516)  ; Saturate(value)
  %5519 = fmul fast float %5518, %5518
  %5520 = fmul fast float %5519, %5504
  %5521 = call float @dx.op.unary.f32(i32 7, float %5520)  ; Saturate(value)
  %5522 = fmul fast float %5521, %5518
  %5523 = call float @dx.op.dot3.f32(i32 55, float %4500, float %4501, float %4502, float %5513, float %5514, float %5515)  ; Dot3(ax,ay,az,bx,by,bz)
  %5524 = fmul fast float %5523, %5523
  %5525 = call float @dx.op.unary.f32(i32 6, float %5516)  ; FAbs(value)
  %5526 = fsub fast float 1.000000e+00, %4506
  %5527 = call float @dx.op.binary.f32(i32 35, float %5526, float 0x3F847AE140000000)  ; FMax(a,b)
  %5528 = fmul fast float %5527, %5527
  %5529 = fmul fast float %5528, %5528
  %5530 = fsub fast float 1.000000e+00, %5529
  %5531 = fmul fast float %4510, %4510
  %5532 = fmul fast float %5531, %5530
  %5533 = fadd fast float %5532, %5529
  %5534 = bitcast float %5533 to i32
  %5535 = ashr i32 %5534, 1
  %5536 = add nsw i32 %5535, 532487669
  %5537 = bitcast i32 %5536 to float
  %5538 = fadd fast float %5537, %4510
  %5539 = fmul fast float %5529, %5524
  %5540 = fsub fast float 1.000000e+00, %5524
  %5541 = fadd fast float %5540, %5539
  %5542 = fmul fast float %5525, %5525
  %5543 = fmul fast float %5542, %5530
  %5544 = fadd fast float %5543, %5529
  %5545 = bitcast float %5544 to i32
  %5546 = ashr i32 %5545, 1
  %5547 = add nsw i32 %5546, 532487669
  %5548 = bitcast i32 %5547 to float
  %5549 = fadd fast float %5548, %5525
  %5550 = fmul fast float %5541, %5541
  %5551 = fmul fast float %5550, %5538
  %5552 = fmul fast float %5551, %5549
  %5553 = fdiv fast float 0x3FF0A00000000000, %5552
  %5554 = fmul fast float %5553, %5529
  %5555 = call float @dx.op.unary.f32(i32 6, float %5517)  ; FAbs(value)
  %5556 = fsub fast float 1.000000e+00, %5555
  %5557 = bitcast float %5556 to i32
  %5558 = sitofp i32 %5557 to float
  %5559 = fmul fast float %5558, 5.000000e+00
  %5560 = fadd fast float %5559, 0xC1EFBF8940000000
  %5561 = fptosi float %5560 to i32
  %5562 = bitcast i32 %5561 to float
  %5563 = fsub fast float 1.000000e+00, %4497
  %5564 = fsub fast float 1.000000e+00, %4498
  %5565 = fsub fast float 1.000000e+00, %4508
  %5566 = fmul fast float %5562, %5563
  %5567 = fmul fast float %5562, %5564
  %5568 = fmul fast float %5562, %5565
  %5569 = fadd fast float %5566, %4497
  %5570 = fadd fast float %5567, %4498
  %5571 = fadd fast float %5568, %4508
  %5572 = fmul fast float %5516, 9.843750e-01
  %5573 = fadd fast float %5572, 7.812500e-03
  %5574 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5573, float %5402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5575 = extractvalue %dx.types.ResRet.f32 %5574, 2
  %5576 = extractvalue %dx.types.ResRet.f32 %5574, 3
  %5577 = fmul fast float %5575, %4497
  %5578 = fmul fast float %5575, %4498
  %5579 = fmul fast float %5575, %4508
  %5580 = fadd fast float %5577, %5576
  %5581 = fadd fast float %5578, %5576
  %5582 = fadd fast float %5579, %5576
  %5583 = call float @dx.op.binary.f32(i32 35, float %5581, float %5582)  ; FMax(a,b)
  %5584 = call float @dx.op.binary.f32(i32 35, float %5580, float %5583)  ; FMax(a,b)
  %5585 = fsub fast float 1.000000e+00, %5584
  %5586 = fsub fast float -0.000000e+00, %4500
  %5587 = fsub fast float -0.000000e+00, %4501
  %5588 = fsub fast float -0.000000e+00, %4502
  %5589 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float %5586, float %5587, float %5588)  ; Dot3(ax,ay,az,bx,by,bz)
  %5590 = call float @dx.op.unary.f32(i32 7, float %5589)  ; Saturate(value)
  %5591 = fmul fast float %5590, 9.843750e-01
  %5592 = fadd fast float %5591, 7.812500e-03
  %5593 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5592, float %5402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5594 = extractvalue %dx.types.ResRet.f32 %5593, 2
  %5595 = extractvalue %dx.types.ResRet.f32 %5593, 3
  %5596 = fmul fast float %5594, %4497
  %5597 = fmul fast float %5594, %4498
  %5598 = fmul fast float %5594, %4508
  %5599 = fadd fast float %5596, %5595
  %5600 = fadd fast float %5597, %5595
  %5601 = fadd fast float %5598, %5595
  %5602 = call float @dx.op.binary.f32(i32 35, float %5600, float %5601)  ; FMax(a,b)
  %5603 = call float @dx.op.binary.f32(i32 35, float %5599, float %5602)  ; FMax(a,b)
  %5604 = fsub fast float 1.000000e+00, %5603
  %5605 = fmul fast float %5604, %5590
  %5606 = fmul fast float %5605, %3937
  %5607 = fmul fast float %5605, %3938
  %5608 = fmul fast float %5605, %3939
  %5609 = fmul fast float %5585, %5522
  %5610 = fadd fast float %5606, %5609
  %5611 = fadd fast float %5607, %5609
  %5612 = fadd fast float %5608, %5609
  %5613 = fmul fast float %5610, %5505
  %5614 = fmul fast float %5611, %5506
  %5615 = fmul fast float %5612, %5507
  %5616 = fmul fast float %5522, %5505
  %5617 = fmul fast float %5616, %5554
  %5618 = fmul fast float %5617, %5569
  %5619 = fmul fast float %5522, %5506
  %5620 = fmul fast float %5619, %5554
  %5621 = fmul fast float %5620, %5570
  %5622 = fmul fast float %5522, %5507
  %5623 = fmul fast float %5622, %5554
  %5624 = fmul fast float %5623, %5571
  %5625 = fadd fast float %5613, %5442
  %5626 = fmul fast float %5625, %3851
  %5627 = fadd fast float %5614, %5444
  %5628 = fmul fast float %5627, %3851
  %5629 = fadd fast float %5615, %5446
  %5630 = fmul fast float %5629, %3851
  %5631 = fadd fast float %5618, %5418
  %5632 = fmul fast float %5631, %3851
  %5633 = fadd fast float %5621, %5420
  %5634 = fmul fast float %5633, %3851
  %5635 = fadd fast float %5624, %5422
  %5636 = fmul fast float %5635, %3851
  br label %5637

; <label>:5637                                    ; preds = %5503, %5496, %5304
  %5638 = phi float [ %5419, %5304 ], [ %5419, %5496 ], [ %5632, %5503 ]
  %5639 = phi float [ %5421, %5304 ], [ %5421, %5496 ], [ %5634, %5503 ]
  %5640 = phi float [ %5423, %5304 ], [ %5423, %5496 ], [ %5636, %5503 ]
  %5641 = phi float [ %5443, %5304 ], [ %5443, %5496 ], [ %5626, %5503 ]
  %5642 = phi float [ %5445, %5304 ], [ %5445, %5496 ], [ %5628, %5503 ]
  %5643 = phi float [ %5447, %5304 ], [ %5447, %5496 ], [ %5630, %5503 ]
  %5644 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.i32 %5644, 0
  %5646 = icmp eq i32 %5645, 0
  br i1 %5646, label %6041, label %5647

; <label>:5647                                    ; preds = %5637
  %5648 = fptoui float %64 to i32
  %5649 = fptoui float %65 to i32
  %5650 = lshr i32 %5648, 4
  %5651 = lshr i32 %5649, 4
  %5652 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5653 = extractvalue %dx.types.CBufRet.i32 %5652, 0
  %5654 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5651, i32 %5653, i32 %5650)  ; UMad(a,b,c)
  %5655 = add nsw i32 %5645, -1
  %5656 = call i32 @dx.op.binary.i32(i32 37, i32 %5655, i32 0)  ; IMax(a,b)
  %5657 = call float @dx.op.binary.f32(i32 35, float %59, float 0.000000e+00)  ; FMax(a,b)
  %5658 = fptoui float %5657 to i32
  %5659 = lshr i32 %5658, 5
  %5660 = call i32 @dx.op.binary.i32(i32 40, i32 %5659, i32 8191)  ; UMin(a,b)
  %5661 = shl i32 %5660, 2
  %5662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5661, i32 undef)  ; BufferLoad(srv,index,wot)
  %5663 = extractvalue %dx.types.ResRet.i32 %5662, 0
  %5664 = lshr i32 %5663, 16
  %5665 = and i32 %5663, 65535
  %5666 = lshr i32 %5663, 21
  %5667 = lshr i32 %5665, 5
  %5668 = call i32 @dx.op.binary.i32(i32 40, i32 %5667, i32 %5656)  ; UMin(a,b)
  %5669 = icmp ugt i32 %5666, %5668
  br i1 %5669, label %6041, label %5670

; <label>:5670                                    ; preds = %5647
  br label %5671

; <label>:5671                                    ; preds = %6031, %5670
  %5672 = phi i32 [ %6038, %6031 ], [ %5666, %5670 ]
  %5673 = phi float [ %6032, %6031 ], [ %5638, %5670 ]
  %5674 = phi float [ %6033, %6031 ], [ %5639, %5670 ]
  %5675 = phi float [ %6034, %6031 ], [ %5640, %5670 ]
  %5676 = phi float [ %6035, %6031 ], [ %5641, %5670 ]
  %5677 = phi float [ %6036, %6031 ], [ %5642, %5670 ]
  %5678 = phi float [ %6037, %6031 ], [ %5643, %5670 ]
  %5679 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5680 = extractvalue %dx.types.CBufRet.i32 %5679, 0
  %5681 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5654, i32 %5680, i32 %5672)  ; UMad(a,b,c)
  %5682 = shl i32 %5681, 2
  %5683 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5682, i32 undef)  ; BufferLoad(srv,index,wot)
  %5684 = extractvalue %dx.types.ResRet.i32 %5683, 0
  %5685 = shl i32 %5672, 5
  %5686 = sub nsw i32 %5664, %5685
  %5687 = call i32 @dx.op.binary.i32(i32 37, i32 %5686, i32 0)  ; IMax(a,b)
  %5688 = call i32 @dx.op.binary.i32(i32 38, i32 %5687, i32 31)  ; IMin(a,b)
  %5689 = sub nsw i32 1, %5664
  %5690 = add nsw i32 %5689, %5665
  %5691 = call i32 @dx.op.binary.i32(i32 37, i32 %5690, i32 0)  ; IMax(a,b)
  %5692 = call i32 @dx.op.binary.i32(i32 38, i32 %5691, i32 32)  ; IMin(a,b)
  %5693 = and i32 %5692, 31
  %5694 = shl i32 -1, %5693
  %5695 = xor i32 %5694, -1
  %5696 = and i32 %5688, 31
  %5697 = shl i32 %5695, %5696
  %5698 = icmp eq i32 %5692, 32
  %5699 = select i1 %5698, i32 -1, i32 %5697
  %5700 = and i32 %5699, %5684
  %5701 = icmp eq i32 %5700, 0
  br i1 %5701, label %6031, label %5702

; <label>:5702                                    ; preds = %5671
  br label %5703

; <label>:5703                                    ; preds = %5783, %5702
  %5704 = phi i32 [ %5715, %5783 ], [ %5700, %5702 ]
  %5705 = phi float [ %5784, %5783 ], [ %5673, %5702 ]
  %5706 = phi float [ %5785, %5783 ], [ %5674, %5702 ]
  %5707 = phi float [ %5786, %5783 ], [ %5675, %5702 ]
  %5708 = phi float [ %5787, %5783 ], [ %5676, %5702 ]
  %5709 = phi float [ %5788, %5783 ], [ %5677, %5702 ]
  %5710 = phi float [ %5789, %5783 ], [ %5678, %5702 ]
  %5711 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5704)  ; FirstbitLo(value)
  %5712 = add i32 %5711, %5685
  %5713 = and i32 %5711, 31
  %5714 = shl i32 1, %5713
  %5715 = xor i32 %5714, %5704
  %5716 = mul i32 %5712, 112
  %5717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5716, i32 undef)  ; BufferLoad(srv,index,wot)
  %5718 = extractvalue %dx.types.ResRet.f32 %5717, 0
  %5719 = extractvalue %dx.types.ResRet.f32 %5717, 1
  %5720 = extractvalue %dx.types.ResRet.f32 %5717, 2
  %5721 = or i32 %5716, 12
  %5722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5721, i32 undef)  ; BufferLoad(srv,index,wot)
  %5723 = extractvalue %dx.types.ResRet.f32 %5722, 0
  %5724 = add i32 %5716, 44
  %5725 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5724, i32 undef)  ; BufferLoad(srv,index,wot)
  %5726 = extractvalue %dx.types.ResRet.f32 %5725, 0
  %5727 = add i32 %5716, 48
  %5728 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5727, i32 undef)  ; BufferLoad(srv,index,wot)
  %5729 = extractvalue %dx.types.ResRet.f32 %5728, 0
  %5730 = extractvalue %dx.types.ResRet.f32 %5728, 1
  %5731 = extractvalue %dx.types.ResRet.f32 %5728, 2
  %5732 = add i32 %5716, 80
  %5733 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5732, i32 undef)  ; BufferLoad(srv,index,wot)
  %5734 = extractvalue %dx.types.ResRet.f32 %5733, 1
  %5735 = extractvalue %dx.types.ResRet.f32 %5733, 2
  %5736 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5719, float %5720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5737 = select i1 %199, float %5734, float %5718
  %5738 = select i1 %199, float %5736, float %5719
  %5739 = select i1 %199, float %5735, float %5720
  %5740 = fsub fast float %5729, %123
  %5741 = fsub fast float %5730, %124
  %5742 = fsub fast float %5731, %125
  %5743 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5742, float %5740, float %5741, float %5742)  ; Dot3(ax,ay,az,bx,by,bz)
  %5744 = call float @dx.op.unary.f32(i32 24, float %5743)  ; Sqrt(value)
  %5745 = fdiv fast float 1.000000e+00, %5744
  %5746 = fmul fast float %5745, %5740
  %5747 = fmul fast float %5745, %5741
  %5748 = fmul fast float %5745, %5742
  %5749 = fadd fast float %5744, %5723
  %5750 = fdiv fast float 1.000000e+00, %5749
  %5751 = fmul float %5726, %5750
  %5752 = fmul float %5751, %5751
  %5753 = call float @dx.op.unary.f32(i32 7, float %5752)  ; Saturate(value)
  %5754 = and i32 %5714, %5700
  %5755 = icmp eq i32 %5754, 0
  br i1 %5755, label %5778, label %5756, !dx.controlflow.hints !76

; <label>:5756                                    ; preds = %5703
  %5757 = lshr i32 %5648, 5
  %5758 = lshr i32 %5649, 5
  %5759 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %5757, i32 %5758, i32 %5712, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5760 = extractvalue %dx.types.ResRet.i32 %5759, 0
  %5761 = and i32 %5760, 3
  %5762 = icmp eq i32 %5761, 0
  %5763 = select i1 %5762, float 1.000000e+00, float 0.000000e+00
  %5764 = icmp eq i32 %5761, 3
  br i1 %5764, label %5765, label %5778

; <label>:5765                                    ; preds = %5756
  %5766 = lshr i32 %5760, 10
  %5767 = and i32 %5766, 8160
  %5768 = and i32 %5649, 31
  %5769 = or i32 %5767, %5768
  %5770 = lshr i32 %5760, 1
  %5771 = and i32 %5770, 16352
  %5772 = and i32 %5648, 31
  %5773 = or i32 %5771, %5772
  %5774 = lshr i32 %5760, 23
  %5775 = and i32 %5774, 255
  %5776 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %5773, i32 %5769, i32 %5775, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5777 = extractvalue %dx.types.ResRet.f32 %5776, 0
  br label %5778

; <label>:5778                                    ; preds = %5765, %5756, %5703
  %5779 = phi float [ %5777, %5765 ], [ %5763, %5756 ], [ 0.000000e+00, %5703 ]
  %5780 = call float @dx.op.binary.f32(i32 36, float %5779, float %5779)  ; FMin(a,b)
  %5781 = call float @dx.op.binary.f32(i32 36, float %5779, float %5780)  ; FMin(a,b)
  %5782 = fcmp fast ogt float %5781, 0.000000e+00
  br i1 %5782, label %5791, label %5783, !dx.controlflow.hints !77

; <label>:5783                                    ; preds = %5853, %5778
  %5784 = phi float [ %5705, %5778 ], [ %6027, %5853 ]
  %5785 = phi float [ %5706, %5778 ], [ %6028, %5853 ]
  %5786 = phi float [ %5707, %5778 ], [ %6029, %5853 ]
  %5787 = phi float [ %5708, %5778 ], [ %6015, %5853 ]
  %5788 = phi float [ %5709, %5778 ], [ %6016, %5853 ]
  %5789 = phi float [ %5710, %5778 ], [ %6017, %5853 ]
  %5790 = icmp eq i32 %5704, %5714
  br i1 %5790, label %6030, label %5703

; <label>:5791                                    ; preds = %5778
  %5792 = bitcast i32 %4522 to float
  %5793 = fmul fast float %5779, %5737
  %5794 = fmul fast float %5779, %5738
  %5795 = fmul fast float %5779, %5739
  %5796 = fsub fast float %5731, %4314
  %5797 = fcmp fast ogt float %5796, 0.000000e+00
  %5798 = fsub fast float %125, %4314
  %5799 = fcmp fast ogt float %5798, 0.000000e+00
  %5800 = xor i1 %5799, %5797
  %5801 = fsub fast float %4314, %5731
  %5802 = fmul fast float %5801, 2.000000e+00
  %5803 = fadd fast float %5802, %5731
  %5804 = select i1 %5800, float %5731, float %5803
  %5805 = fsub fast float %5804, %125
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5805, float %5740, float %5741, float %5805)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = call float @dx.op.unary.f32(i32 25, float %5806)  ; Rsqrt(value)
  %5808 = fmul fast float %5807, %5740
  %5809 = fmul fast float %5807, %5741
  %5810 = fmul fast float %5807, %5805
  %5811 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4322)  ; Dot3(ax,ay,az,bx,by,bz)
  %5812 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5808, float %5809, float %5810)  ; Dot3(ax,ay,az,bx,by,bz)
  %5813 = fdiv fast float 1.000000e+00, %5812
  %5814 = fmul fast float %5813, %5811
  %5815 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5798, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5816 = fcmp fast ogt float %5815, 0.000000e+00
  %5817 = fcmp fast olt float %5815, 0.000000e+00
  %5818 = zext i1 %5816 to i32
  %5819 = zext i1 %5817 to i32
  %5820 = sub nsw i32 %5818, %5819
  %5821 = sitofp i32 %5820 to float
  %5822 = fsub fast float %5804, %4314
  %5823 = call float @dx.op.dot3.f32(i32 55, float %5740, float %5741, float %5822, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5824 = fcmp fast ogt float %5823, 0.000000e+00
  %5825 = fcmp fast olt float %5823, 0.000000e+00
  %5826 = zext i1 %5824 to i32
  %5827 = zext i1 %5825 to i32
  %5828 = sub nsw i32 %5826, %5827
  %5829 = sitofp i32 %5828 to float
  %5830 = fcmp fast une float %5821, %5829
  br i1 %5830, label %5831, label %5841

; <label>:5831                                    ; preds = %5791
  %5832 = fmul fast float %5814, %5810
  %5833 = fmul fast float %5814, %5809
  %5834 = fmul fast float %5814, %5808
  %5835 = fmul fast float %5834, %5834
  %5836 = fmul fast float %5833, %5833
  %5837 = fadd fast float %5835, %5836
  %5838 = fmul fast float %5832, %5832
  %5839 = fadd fast float %5837, %5838
  %5840 = call float @dx.op.unary.f32(i32 24, float %5839)  ; Sqrt(value)
  br label %5853

; <label>:5841                                    ; preds = %5791
  %5842 = icmp slt i32 %5820, 0
  br i1 %5842, label %5843, label %5853

; <label>:5843                                    ; preds = %5841
  %5844 = fsub fast float %123, %5729
  %5845 = fsub fast float %124, %5730
  %5846 = fsub fast float %125, %5804
  %5847 = fmul fast float %5844, %5844
  %5848 = fmul fast float %5845, %5845
  %5849 = fadd fast float %5847, %5848
  %5850 = fmul fast float %5846, %5846
  %5851 = fadd fast float %5849, %5850
  %5852 = call float @dx.op.unary.f32(i32 24, float %5851)  ; Sqrt(value)
  br label %5853

; <label>:5853                                    ; preds = %5843, %5841, %5831
  %5854 = phi float [ %5840, %5831 ], [ %5852, %5843 ], [ 0.000000e+00, %5841 ]
  %5855 = and i1 %5799, %5797
  %5856 = fsub fast float -0.000000e+00, %5854
  %5857 = select i1 %5855, float -0.000000e+00, float %5856
  %5858 = fmul fast float %4315, 0x3FF7154760000000
  %5859 = fmul fast float %5858, %5857
  %5860 = fmul fast float %4316, 0x3FF7154760000000
  %5861 = fmul fast float %5860, %5857
  %5862 = fmul fast float %4317, 0x3FF7154760000000
  %5863 = fmul fast float %5862, %5857
  %5864 = call float @dx.op.unary.f32(i32 21, float %5859)  ; Exp(value)
  %5865 = call float @dx.op.unary.f32(i32 21, float %5861)  ; Exp(value)
  %5866 = call float @dx.op.unary.f32(i32 21, float %5863)  ; Exp(value)
  %5867 = call float @dx.op.unary.f32(i32 7, float %5864)  ; Saturate(value)
  %5868 = call float @dx.op.unary.f32(i32 7, float %5865)  ; Saturate(value)
  %5869 = call float @dx.op.unary.f32(i32 7, float %5866)  ; Saturate(value)
  %5870 = fmul fast float %5793, %5867
  %5871 = fmul fast float %5794, %5868
  %5872 = fmul fast float %5795, %5869
  %5873 = fsub fast float %5746, %143
  %5874 = fsub fast float %5747, %144
  %5875 = fsub fast float %5748, %145
  %5876 = call float @dx.op.dot3.f32(i32 55, float %5873, float %5874, float %5875, float %5873, float %5874, float %5875)  ; Dot3(ax,ay,az,bx,by,bz)
  %5877 = call float @dx.op.unary.f32(i32 25, float %5876)  ; Rsqrt(value)
  %5878 = fmul fast float %5877, %5873
  %5879 = fmul fast float %5877, %5874
  %5880 = fmul fast float %5877, %5875
  %5881 = call float @dx.op.dot3.f32(i32 55, float %5746, float %5747, float %5748, float %4500, float %4501, float %4502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5882 = call float @dx.op.dot3.f32(i32 55, float %4331, float %4332, float %4333, float %5878, float %5879, float %5880)  ; Dot3(ax,ay,az,bx,by,bz)
  %5883 = call float @dx.op.unary.f32(i32 7, float %5881)  ; Saturate(value)
  %5884 = fmul fast float %5883, %5753
  %5885 = fmul fast float %5883, %5883
  %5886 = fmul fast float %5885, %5792
  %5887 = call float @dx.op.unary.f32(i32 7, float %5886)  ; Saturate(value)
  %5888 = fmul fast float %5884, %5887
  %5889 = bitcast float %5743 to i32
  %5890 = ashr i32 %5889, 1
  %5891 = sub nsw i32 1597463007, %5890
  %5892 = bitcast i32 %5891 to float
  %5893 = fmul fast float %5892, %5740
  %5894 = fmul fast float %5892, %5741
  %5895 = fmul fast float %5892, %5742
  %5896 = fsub fast float %5893, %143
  %5897 = fsub fast float %5894, %144
  %5898 = fsub fast float %5895, %145
  %5899 = call float @dx.op.dot3.f32(i32 55, float %5896, float %5897, float %5898, float %5896, float %5897, float %5898)  ; Dot3(ax,ay,az,bx,by,bz)
  %5900 = call float @dx.op.unary.f32(i32 25, float %5899)  ; Rsqrt(value)
  %5901 = fmul fast float %5896, %5900
  %5902 = fmul fast float %5897, %5900
  %5903 = fmul fast float %5898, %5900
  %5904 = call float @dx.op.dot3.f32(i32 55, float %4500, float %4501, float %4502, float %5901, float %5902, float %5903)  ; Dot3(ax,ay,az,bx,by,bz)
  %5905 = fmul fast float %5904, %5904
  %5906 = call float @dx.op.unary.f32(i32 6, float %5881)  ; FAbs(value)
  %5907 = fsub fast float 1.000000e+00, %4506
  %5908 = call float @dx.op.binary.f32(i32 35, float %5907, float 0x3F847AE140000000)  ; FMax(a,b)
  %5909 = fmul fast float %5908, %5908
  %5910 = fmul fast float %5909, %5909
  %5911 = fsub fast float 1.000000e+00, %5910
  %5912 = fmul fast float %4510, %4510
  %5913 = fmul fast float %5912, %5911
  %5914 = fadd fast float %5913, %5910
  %5915 = bitcast float %5914 to i32
  %5916 = ashr i32 %5915, 1
  %5917 = add nsw i32 %5916, 532487669
  %5918 = bitcast i32 %5917 to float
  %5919 = fadd fast float %5918, %4510
  %5920 = fmul fast float %5910, %5905
  %5921 = fsub fast float 1.000000e+00, %5905
  %5922 = fadd fast float %5921, %5920
  %5923 = fmul fast float %5906, %5906
  %5924 = fmul fast float %5923, %5911
  %5925 = fadd fast float %5924, %5910
  %5926 = bitcast float %5925 to i32
  %5927 = ashr i32 %5926, 1
  %5928 = add nsw i32 %5927, 532487669
  %5929 = bitcast i32 %5928 to float
  %5930 = fadd fast float %5929, %5906
  %5931 = fmul fast float %5922, %5922
  %5932 = fmul fast float %5931, %5919
  %5933 = fmul fast float %5932, %5930
  %5934 = fdiv fast float 1.000000e+00, %5933
  %5935 = bitcast float %5910 to i32
  %5936 = sitofp i32 %5935 to float
  %5937 = fmul fast float %5936, 0x3FE7F73180000000
  %5938 = fadd fast float %5937, 0x41AFE27C40000000
  %5939 = fptosi float %5938 to i32
  %5940 = bitcast i32 %5939 to float
  %5941 = fmul fast float %5726, 0x3FD80E9D60000000
  %5942 = fmul fast float %5941, %5892
  %5943 = fadd fast float %5940, %5942
  %5944 = bitcast float %5943 to i32
  %5945 = sub nsw i32 2129859010, %5944
  %5946 = bitcast i32 %5945 to float
  %5947 = fmul fast float %5910, %5934
  %5948 = fmul fast float %5947, %5940
  %5949 = fmul fast float %5948, %5946
  %5950 = call float @dx.op.unary.f32(i32 6, float %5882)  ; FAbs(value)
  %5951 = fsub fast float 1.000000e+00, %5950
  %5952 = bitcast float %5951 to i32
  %5953 = sitofp i32 %5952 to float
  %5954 = fmul fast float %5953, 5.000000e+00
  %5955 = fadd fast float %5954, 0xC1EFBF8940000000
  %5956 = fptosi float %5955 to i32
  %5957 = bitcast i32 %5956 to float
  %5958 = fsub fast float 1.000000e+00, %4497
  %5959 = fsub fast float 1.000000e+00, %4498
  %5960 = fsub fast float 1.000000e+00, %4508
  %5961 = fmul fast float %5957, %5958
  %5962 = fmul fast float %5957, %5959
  %5963 = fmul fast float %5957, %5960
  %5964 = fadd fast float %5961, %4497
  %5965 = fadd fast float %5962, %4498
  %5966 = fadd fast float %5963, %4508
  %5967 = fmul fast float %5881, 9.843750e-01
  %5968 = fadd fast float %5967, 7.812500e-03
  %5969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5968, float %5402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5970 = extractvalue %dx.types.ResRet.f32 %5969, 2
  %5971 = extractvalue %dx.types.ResRet.f32 %5969, 3
  %5972 = fmul fast float %5970, %4497
  %5973 = fmul fast float %5970, %4498
  %5974 = fmul fast float %5970, %4508
  %5975 = fadd fast float %5972, %5971
  %5976 = fadd fast float %5973, %5971
  %5977 = fadd fast float %5974, %5971
  %5978 = call float @dx.op.binary.f32(i32 35, float %5976, float %5977)  ; FMax(a,b)
  %5979 = call float @dx.op.binary.f32(i32 35, float %5975, float %5978)  ; FMax(a,b)
  %5980 = fsub fast float 1.000000e+00, %5979
  %5981 = fsub fast float -0.000000e+00, %4500
  %5982 = fsub fast float -0.000000e+00, %4501
  %5983 = fsub fast float -0.000000e+00, %4502
  %5984 = call float @dx.op.dot3.f32(i32 55, float %5746, float %5747, float %5748, float %5981, float %5982, float %5983)  ; Dot3(ax,ay,az,bx,by,bz)
  %5985 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5986 = fmul fast float %5985, %5753
  %5987 = fmul fast float %5985, 9.843750e-01
  %5988 = fadd fast float %5987, 7.812500e-03
  %5989 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5988, float %5402, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5990 = extractvalue %dx.types.ResRet.f32 %5989, 2
  %5991 = extractvalue %dx.types.ResRet.f32 %5989, 3
  %5992 = fmul fast float %5990, %4497
  %5993 = fmul fast float %5990, %4498
  %5994 = fmul fast float %5990, %4508
  %5995 = fadd fast float %5992, %5991
  %5996 = fadd fast float %5993, %5991
  %5997 = fadd fast float %5994, %5991
  %5998 = call float @dx.op.binary.f32(i32 35, float %5996, float %5997)  ; FMax(a,b)
  %5999 = call float @dx.op.binary.f32(i32 35, float %5995, float %5998)  ; FMax(a,b)
  %6000 = fsub fast float 1.000000e+00, %5999
  %6001 = fmul fast float %5986, %6000
  %6002 = fmul fast float %6001, %3937
  %6003 = fmul fast float %6001, %3938
  %6004 = fmul fast float %6001, %3939
  %6005 = fmul fast float %5980, %5888
  %6006 = fadd fast float %6002, %6005
  %6007 = fadd fast float %6003, %6005
  %6008 = fadd fast float %6004, %6005
  %6009 = fmul fast float %5870, %3851
  %6010 = fmul fast float %6009, %6006
  %6011 = fmul fast float %5871, %3851
  %6012 = fmul fast float %6011, %6007
  %6013 = fmul fast float %5872, %3851
  %6014 = fmul fast float %6013, %6008
  %6015 = fadd fast float %6010, %5708
  %6016 = fadd fast float %6012, %5709
  %6017 = fadd fast float %6014, %5710
  %6018 = fmul fast float %6009, %5888
  %6019 = fmul fast float %6018, %5964
  %6020 = fmul fast float %6019, %5949
  %6021 = fmul fast float %6011, %5888
  %6022 = fmul fast float %6021, %5965
  %6023 = fmul fast float %6022, %5949
  %6024 = fmul fast float %6013, %5888
  %6025 = fmul fast float %6024, %5966
  %6026 = fmul fast float %6025, %5949
  %6027 = fadd fast float %6020, %5705
  %6028 = fadd fast float %6023, %5706
  %6029 = fadd fast float %6026, %5707
  br label %5783

; <label>:6030                                    ; preds = %5783
  br label %6031

; <label>:6031                                    ; preds = %6030, %5671
  %6032 = phi float [ %5673, %5671 ], [ %5784, %6030 ]
  %6033 = phi float [ %5674, %5671 ], [ %5785, %6030 ]
  %6034 = phi float [ %5675, %5671 ], [ %5786, %6030 ]
  %6035 = phi float [ %5676, %5671 ], [ %5787, %6030 ]
  %6036 = phi float [ %5677, %5671 ], [ %5788, %6030 ]
  %6037 = phi float [ %5678, %5671 ], [ %5789, %6030 ]
  %6038 = add i32 %5672, 1
  %6039 = icmp ugt i32 %6038, %5668
  br i1 %6039, label %6040, label %5671

; <label>:6040                                    ; preds = %6031
  br label %6041

; <label>:6041                                    ; preds = %6040, %5647, %5637
  %6042 = phi float [ %5638, %5637 ], [ %5638, %5647 ], [ %6032, %6040 ]
  %6043 = phi float [ %5639, %5637 ], [ %5639, %5647 ], [ %6033, %6040 ]
  %6044 = phi float [ %5640, %5637 ], [ %5640, %5647 ], [ %6034, %6040 ]
  %6045 = phi float [ %5641, %5637 ], [ %5641, %5647 ], [ %6035, %6040 ]
  %6046 = phi float [ %5642, %5637 ], [ %5642, %5647 ], [ %6036, %6040 ]
  %6047 = phi float [ %5643, %5637 ], [ %5643, %5647 ], [ %6037, %6040 ]
  %6048 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3830, i32 undef)  ; BufferLoad(srv,index,wot)
  %6049 = extractvalue %dx.types.ResRet.i32 %6048, 3
  %6050 = bitcast i32 %6049 to float
  %6051 = fsub fast float 1.000000e+00, %6050
  %6052 = fmul fast float %6051, %157
  %6053 = fadd fast float %6052, %6050
  %6054 = call float @dx.op.unary.f32(i32 24, float %4503)  ; Sqrt(value)
  %6055 = call float @dx.op.unary.f32(i32 24, float %4504)  ; Sqrt(value)
  %6056 = call float @dx.op.unary.f32(i32 24, float %4505)  ; Sqrt(value)
  %6057 = fmul fast float %6054, %6045
  %6058 = fmul fast float %6055, %6046
  %6059 = extractvalue %dx.types.CBufRet.f32 %5124, 0
  br i1 %199, label %6060, label %6090

; <label>:6060                                    ; preds = %6041
  %6061 = fadd fast float %6047, %3801
  %6062 = fmul fast float %6061, %3799
  %6063 = fsub fast float 1.000000e+00, %3799
  %6064 = call float @dx.op.unary.f32(i32 7, float %6063)  ; Saturate(value)
  %6065 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6066 = extractvalue %dx.types.CBufRet.f32 %6065, 3
  %6067 = fmul fast float %6066, %6064
  %6068 = fadd fast float %6067, %6062
  %6069 = fsub fast float 1.000000e+00, %4510
  %6070 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6071 = extractvalue %dx.types.CBufRet.f32 %6070, 0
  %6072 = fmul fast float %6071, %6069
  %6073 = fsub fast float %6068, %6072
  %6074 = fadd fast float %6058, %6057
  %6075 = fmul fast float %6059, %6074
  %6076 = extractvalue %dx.types.CBufRet.f32 %6065, 1
  %6077 = fsub fast float %6073, %6076
  %6078 = extractvalue %dx.types.CBufRet.f32 %6065, 2
  %6079 = fmul fast float %6077, %6078
  %6080 = call float @dx.op.unary.f32(i32 7, float %6079)  ; Saturate(value)
  %6081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.f32 %6081, 0
  %6083 = fsub fast float %6080, %6082
  %6084 = fmul fast float %6083, 1.000000e+01
  %6085 = call float @dx.op.unary.f32(i32 7, float %6084)  ; Saturate(value)
  %6086 = fsub fast float 1.000000e+00, %6053
  %6087 = fmul fast float %6085, %6086
  %6088 = fadd fast float %6087, %6053
  %6089 = fmul fast float %6088, %6080
  br label %6106

; <label>:6090                                    ; preds = %6041
  %6091 = fmul fast float %6056, %6047
  %6092 = fmul fast float %6059, %6057
  %6093 = fmul fast float %6059, %6058
  %6094 = fmul fast float %6091, %6059
  %6095 = add i32 %37, 356
  %6096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %6095, i32 undef)  ; BufferLoad(srv,index,wot)
  %6097 = extractvalue %dx.types.ResRet.i32 %6096, 0
  %6098 = and i32 %6097, 32
  %6099 = icmp eq i32 %6098, 0
  br i1 %6099, label %6106, label %6100

; <label>:6100                                    ; preds = %6090
  %6101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6102 = extractvalue %dx.types.CBufRet.f32 %6101, 0
  %6103 = fmul fast float %6102, 0x3FE99999A0000000
  %6104 = fadd fast float %6102, %6092
  %6105 = fadd fast float %6103, %6094
  br label %6106

; <label>:6106                                    ; preds = %6100, %6090, %6060
  %6107 = phi float [ %6075, %6060 ], [ %6104, %6100 ], [ %6092, %6090 ]
  %6108 = phi float [ %6089, %6060 ], [ %6093, %6100 ], [ %6093, %6090 ]
  %6109 = phi float [ %6088, %6060 ], [ %6105, %6100 ], [ %6094, %6090 ]
  %6110 = fmul fast float %6059, %6043
  %6111 = fmul fast float %6059, %6044
  %6112 = fadd fast float %6043, %6042
  %6113 = select i1 %199, float %6112, float %6042
  %6114 = fmul float %6113, %6059
  %6115 = select i1 %199, float 0.000000e+00, float %6110
  %6116 = select i1 %199, float 0.000000e+00, float %6111
  %6117 = fmul fast float %6107, %6054
  %6118 = fmul fast float %6108, %6055
  %6119 = fmul fast float %6109, %6056
  %6120 = fadd fast float %6114, %6117
  %6121 = fadd fast float %6115, %6118
  %6122 = fadd fast float %6116, %6119
  %6123 = select i1 %199, float %6108, float %6121
  %6124 = select i1 %199, float %6109, float %6122
  %6125 = call float @dx.op.binary.f32(i32 36, float %6120, float 3.225500e+04)  ; FMin(a,b)
  %6126 = call float @dx.op.binary.f32(i32 36, float %6123, float 3.225500e+04)  ; FMin(a,b)
  %6127 = call float @dx.op.binary.f32(i32 36, float %6124, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6125)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6126)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6127)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare float @dx.op.dot3.f32(i32, float, float, float, float, float, float) #0

; Function Attrs: nounwind readnone
declare float @dx.op.unary.f32(i32, float) #0

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

