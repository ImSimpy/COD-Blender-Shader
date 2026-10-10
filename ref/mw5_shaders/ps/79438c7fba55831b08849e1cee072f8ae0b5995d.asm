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
; shader hash: f99d370e6347591e2919f2ca634632d2
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
  %350 = add i32 %37, 472
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
  br i1 %403, label %915, label %404

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
  %508 = add i32 %37, 360
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
  %531 = add i32 %37, 440
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
  %729 = add i32 %37, 376
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
  %813 = add i32 %37, 392
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
  %849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %850 = extractvalue %dx.types.ResRet.i32 %849, 0
  %851 = and i32 %850, 10240
  %852 = icmp eq i32 %851, 0
  br i1 %852, label %897, label %853

; <label>:853                                     ; preds = %845
  %854 = add i32 %37, 456
  %855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.i32 %855, 0
  %857 = add i32 %856, 0
  %858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %857, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %859 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %858, %dx.types.Handle %61, float %503, float %504, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %860 = extractvalue %dx.types.ResRet.f32 %859, 1
  %861 = extractvalue %dx.types.ResRet.f32 %859, 3
  %862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %396, i32 undef)  ; BufferLoad(srv,index,wot)
  %863 = extractvalue %dx.types.ResRet.i32 %862, 0
  %864 = and i32 %863, 1048576
  %865 = icmp ne i32 %864, 0
  %866 = and i32 %863, 8192
  %867 = icmp eq i32 %866, 0
  br i1 %867, label %883, label %868

; <label>:868                                     ; preds = %853
  %869 = extractvalue %dx.types.ResRet.f32 %859, 2
  %870 = select i1 %865, float %869, float %860
  %871 = extractvalue %dx.types.ResRet.f32 %859, 0
  %872 = select i1 %865, float %871, float %860
  %873 = add i32 %37, 96
  %874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %873, i32 undef)  ; BufferLoad(srv,index,wot)
  %875 = extractvalue %dx.types.ResRet.i32 %874, 0
  %876 = lshr i32 %875, 16
  %877 = and i32 %876, 255
  %878 = uitofp i32 %877 to float
  %879 = fmul fast float %878, 0x3F80101020000000
  %880 = fmul fast float %879, %872
  %881 = fmul fast float %879, %860
  %882 = fmul fast float %879, %870
  br label %883

; <label>:883                                     ; preds = %868, %853
  %884 = phi float [ %880, %868 ], [ 0.000000e+00, %853 ]
  %885 = phi float [ %881, %868 ], [ 0.000000e+00, %853 ]
  %886 = phi float [ %882, %868 ], [ 0.000000e+00, %853 ]
  %887 = and i32 %863, 2048
  %888 = icmp eq i32 %887, 0
  br i1 %888, label %897, label %889

; <label>:889                                     ; preds = %883
  %890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %802, i32 undef)  ; BufferLoad(srv,index,wot)
  %891 = extractvalue %dx.types.ResRet.i32 %890, 0
  %892 = shl i32 %891, 4
  %893 = and i32 %892, 32752
  %894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %893)  ; LegacyF16ToF32(value)
  %895 = fmul fast float %894, %861
  %896 = call float @dx.op.binary.f32(i32 35, float %895, float 0x3F70101020000000)  ; FMax(a,b)
  br label %897

; <label>:897                                     ; preds = %889, %883, %845
  %898 = phi float [ %884, %889 ], [ %884, %883 ], [ 0.000000e+00, %845 ]
  %899 = phi float [ %885, %889 ], [ %885, %883 ], [ 0.000000e+00, %845 ]
  %900 = phi float [ %886, %889 ], [ %886, %883 ], [ 0.000000e+00, %845 ]
  %901 = phi float [ %896, %889 ], [ 0x3F70101020000000, %883 ], [ 0x3F70101020000000, %845 ]
  %902 = add i32 %37, 96
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = and i32 %904, 255
  %906 = uitofp i32 %905 to float
  %907 = lshr i32 %904, 8
  %908 = and i32 %907, 255
  %909 = uitofp i32 %908 to float
  %910 = call float @dx.op.dot3.f32(i32 55, float %718, float %719, float %720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %911 = fmul fast float %909, %910
  %912 = fadd fast float %911, %906
  %913 = fmul fast float %912, 0x3F70101020000000
  %914 = call float @dx.op.unary.f32(i32 7, float %913)  ; Saturate(value)
  br label %915

; <label>:915                                     ; preds = %897, %389
  %916 = phi float [ 0.000000e+00, %389 ], [ %799, %897 ]
  %917 = phi float [ 0.000000e+00, %389 ], [ %800, %897 ]
  %918 = phi float [ 0.000000e+00, %389 ], [ %718, %897 ]
  %919 = phi float [ 0.000000e+00, %389 ], [ %719, %897 ]
  %920 = phi float [ 0.000000e+00, %389 ], [ %720, %897 ]
  %921 = phi float [ 0.000000e+00, %389 ], [ %898, %897 ]
  %922 = phi float [ 0.000000e+00, %389 ], [ %899, %897 ]
  %923 = phi float [ 0.000000e+00, %389 ], [ %900, %897 ]
  %924 = phi float [ 0.000000e+00, %389 ], [ %846, %897 ]
  %925 = phi float [ 0.000000e+00, %389 ], [ %847, %897 ]
  %926 = phi float [ 0.000000e+00, %389 ], [ %848, %897 ]
  %927 = phi float [ 0.000000e+00, %389 ], [ %704, %897 ]
  %928 = phi float [ 0.000000e+00, %389 ], [ 1.000000e+00, %897 ]
  %929 = phi float [ 0.000000e+00, %389 ], [ %798, %897 ]
  %930 = phi float [ 0.000000e+00, %389 ], [ %801, %897 ]
  %931 = phi float [ 0.000000e+00, %389 ], [ %901, %897 ]
  %932 = phi float [ 0.000000e+00, %389 ], [ %914, %897 ]
  br i1 %340, label %1861, label %933

; <label>:933                                     ; preds = %915
  %934 = icmp ult i32 %395, 2
  %935 = add i32 %37, 40
  %936 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %937 = extractvalue %dx.types.ResRet.i32 %936, 0
  %938 = add i32 %37, 44
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = or i32 %940, %937
  %942 = icmp eq i32 %941, 0
  br i1 %942, label %1861, label %943

; <label>:943                                     ; preds = %933
  %944 = and i32 %937, 262144
  %945 = icmp ne i32 %944, 0
  %946 = select i1 %945, float %39, float 1.000000e+00
  %947 = select i1 %945, float %40, float 0.000000e+00
  %948 = select i1 %945, float %41, float 0.000000e+00
  %949 = select i1 %945, float %42, float 1.000000e+00
  %950 = select i1 %945, float %43, float %52
  %951 = select i1 %945, float %44, float %53
  %952 = add i32 %37, 300
  %953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %954 = extractvalue %dx.types.ResRet.i32 %953, 0
  %955 = lshr i32 %954, 16
  %956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %955)  ; LegacyF16ToF32(value)
  %957 = fmul fast float %956, 0x3F50624DE0000000
  %958 = add i32 %37, 104
  %959 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %960 = extractvalue %dx.types.ResRet.i32 %959, 0
  %961 = lshr i32 %960, 16
  %962 = and i32 %961, 255
  %963 = lshr i32 %960, 24
  %964 = add i32 %37, 308
  %965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %964, i32 undef)  ; BufferLoad(srv,index,wot)
  %966 = extractvalue %dx.types.ResRet.i32 %965, 0
  %967 = and i32 %966, 65535
  %968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %967)  ; LegacyF16ToF32(value)
  %969 = lshr i32 %966, 16
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = add i32 %37, 48
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = lshr i32 %973, 22
  %975 = shl nuw nsw i32 %974, 5
  %976 = call float @dx.op.legacyF16ToF32(i32 131, i32 %975)  ; LegacyF16ToF32(value)
  %977 = shl i32 %973, 4
  %978 = and i32 %977, 32752
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = lshr i32 %973, 7
  %981 = and i32 %980, 32752
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %984 = extractvalue %dx.types.CBufRet.f32 %983, 3
  %985 = fmul fast float %984, 1.000000e+03
  %986 = fmul fast float %250, %985
  %987 = call float @dx.op.unary.f32(i32 22, float %986)  ; Frc(value)
  %988 = fadd fast float %987, %240
  %989 = fmul fast float %251, %985
  %990 = call float @dx.op.unary.f32(i32 22, float %989)  ; Frc(value)
  %991 = fadd fast float %990, %242
  %992 = fmul fast float %957, %985
  %993 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %994 = fmul fast float %993, 0x401921FB60000000
  %995 = fadd fast float %994, %976
  %996 = call float @dx.op.unary.f32(i32 13, float %995)  ; Sin(value)
  %997 = call float @dx.op.unary.f32(i32 12, float %995)  ; Cos(value)
  %998 = fsub fast float -0.000000e+00, %996
  %999 = fadd fast float %950, -5.000000e-01
  %1000 = fadd fast float %951, -5.000000e-01
  %1001 = fmul fast float %968, %999
  %1002 = fmul fast float %970, %1000
  %1003 = fadd fast float %1001, 5.000000e-01
  %1004 = fadd fast float %1002, 5.000000e-01
  %1005 = fmul fast float %979, %1003
  %1006 = fmul fast float %982, %1004
  %1007 = fmul fast float %997, %1005
  %1008 = call float @dx.op.tertiary.f32(i32 46, float %998, float %1006, float %1007)  ; FMad(a,b,c)
  %1009 = fmul fast float %996, %1005
  %1010 = call float @dx.op.tertiary.f32(i32 46, float %997, float %1006, float %1009)  ; FMad(a,b,c)
  %1011 = fadd fast float %988, %1008
  %1012 = fadd fast float %991, %1010
  %1013 = icmp ugt i32 %962, 1
  %1014 = icmp ugt i32 %960, 33554431
  %1015 = or i1 %1014, %1013
  br i1 %1015, label %1016, label %1041

; <label>:1016                                    ; preds = %943
  %1017 = add i32 %37, 244
  %1018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1017, i32 undef)  ; BufferLoad(srv,index,wot)
  %1019 = extractvalue %dx.types.ResRet.i32 %1018, 0
  %1020 = lshr i32 %1019, 16
  %1021 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1020)  ; LegacyF16ToF32(value)
  %1022 = fmul fast float %984, %1021
  %1023 = call float @dx.op.unary.f32(i32 22, float %1022)  ; Frc(value)
  %1024 = mul nuw nsw i32 %962, %963
  %1025 = uitofp i32 %1024 to float
  %1026 = fmul fast float %1023, %1025
  %1027 = call float @dx.op.unary.f32(i32 27, float %1026)  ; Round_ni(value)
  %1028 = fptoui float %1027 to i32
  %1029 = urem i32 %1028, %962
  %1030 = udiv i32 %1028, %963
  %1031 = call float @dx.op.unary.f32(i32 22, float %1011)  ; Frc(value)
  %1032 = call float @dx.op.unary.f32(i32 22, float %1012)  ; Frc(value)
  %1033 = uitofp i32 %1029 to float
  %1034 = uitofp i32 %1030 to float
  %1035 = fadd fast float %1031, %1033
  %1036 = fadd fast float %1032, %1034
  %1037 = uitofp i32 %962 to float
  %1038 = uitofp i32 %963 to float
  %1039 = fdiv fast float %1035, %1037
  %1040 = fdiv fast float %1036, %1038
  br label %1041

; <label>:1041                                    ; preds = %1016, %943
  %1042 = phi float [ %1039, %1016 ], [ %1011, %943 ]
  %1043 = phi float [ %1040, %1016 ], [ %1012, %943 ]
  %1044 = and i32 %937, 16777216
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1155, label %1046

; <label>:1046                                    ; preds = %1041
  %1047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1048 = extractvalue %dx.types.CBufRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.CBufRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.CBufRet.f32 %1047, 2
  %1051 = fadd fast float %1048, %123
  %1052 = fadd fast float %1049, %124
  %1053 = fadd fast float %1050, %125
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = call float @dx.op.unary.f32(i32 7, float %1055)  ; Saturate(value)
  %1057 = icmp eq i32 %38, 65535
  br i1 %1057, label %1152, label %1058

; <label>:1058                                    ; preds = %1046
  %1059 = lshr i32 %38, 1
  %1060 = shl i32 %1059, 2
  %1061 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %1060, i32 undef)  ; BufferLoad(srv,index,wot)
  %1062 = extractvalue %dx.types.ResRet.i32 %1061, 0
  %1063 = and i32 %38, 1
  %1064 = icmp ne i32 %1063, 0
  %1065 = lshr i32 %1062, 16
  %1066 = and i32 %1062, 65535
  %1067 = select i1 %1064, i32 %1065, i32 %1066
  %1068 = icmp eq i32 %1067, 65535
  br i1 %1068, label %1148, label %1069

; <label>:1069                                    ; preds = %1058
  %1070 = mul nuw nsw i32 %1067, 40
  %1071 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1070, i32 undef)  ; BufferLoad(srv,index,wot)
  %1072 = extractvalue %dx.types.ResRet.f32 %1071, 0
  %1073 = extractvalue %dx.types.ResRet.f32 %1071, 1
  %1074 = extractvalue %dx.types.ResRet.f32 %1071, 2
  %1075 = add nuw nsw i32 %1070, 12
  %1076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.f32 %1076, 0
  %1078 = extractvalue %dx.types.ResRet.f32 %1076, 1
  %1079 = extractvalue %dx.types.ResRet.f32 %1076, 2
  %1080 = add nuw nsw i32 %1070, 24
  %1081 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1080, i32 undef)  ; BufferLoad(srv,index,wot)
  %1082 = extractvalue %dx.types.ResRet.f32 %1081, 0
  %1083 = extractvalue %dx.types.ResRet.f32 %1081, 1
  %1084 = extractvalue %dx.types.ResRet.f32 %1081, 2
  %1085 = add nuw nsw i32 %1070, 36
  %1086 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %1085, i32 undef)  ; BufferLoad(srv,index,wot)
  %1087 = extractvalue %dx.types.ResRet.f32 %1086, 0
  %1088 = fsub fast float %1051, %1072
  %1089 = fsub fast float %1052, %1073
  %1090 = fsub fast float %1053, %1074
  %1091 = fmul fast float %1087, %1088
  %1092 = fmul fast float %1087, %1089
  %1093 = fmul fast float %1087, %1090
  %1094 = call float @dx.op.unary.f32(i32 27, float %1091)  ; Round_ni(value)
  %1095 = call float @dx.op.unary.f32(i32 27, float %1092)  ; Round_ni(value)
  %1096 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1097 = fadd fast float %1094, 5.000000e-01
  %1098 = fadd fast float %1095, 5.000000e-01
  %1099 = fadd fast float %1096, 5.000000e-01
  %1100 = fmul fast float %1097, %1077
  %1101 = fmul fast float %1098, %1078
  %1102 = fmul fast float %1099, %1079
  %1103 = shl i32 %38, 2
  %1104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1105 = extractvalue %dx.types.ResRet.i32 %1104, 0
  %1106 = add i32 %1105, 0
  %1107 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1106, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1108 = call float @dx.op.unary.f32(i32 22, float %1100)  ; Frc(value)
  %1109 = call float @dx.op.unary.f32(i32 22, float %1101)  ; Frc(value)
  %1110 = call float @dx.op.unary.f32(i32 22, float %1102)  ; Frc(value)
  %1111 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1107, %dx.types.Handle %32, float %1108, float %1109, float %1110, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1112 = extractvalue %dx.types.ResRet.f32 %1111, 0
  %1113 = extractvalue %dx.types.ResRet.f32 %1111, 1
  %1114 = extractvalue %dx.types.ResRet.f32 %1111, 2
  %1115 = fmul fast float %1112, 1.023000e+03
  %1116 = fmul fast float %1113, 1.023000e+03
  %1117 = fmul fast float %1114, 1.023000e+03
  %1118 = fadd fast float %1115, 5.000000e-01
  %1119 = fadd fast float %1116, 5.000000e-01
  %1120 = fadd fast float %1117, 5.000000e-01
  %1121 = call float @dx.op.unary.f32(i32 27, float %1118)  ; Round_ni(value)
  %1122 = call float @dx.op.unary.f32(i32 27, float %1119)  ; Round_ni(value)
  %1123 = call float @dx.op.unary.f32(i32 27, float %1120)  ; Round_ni(value)
  %1124 = fsub fast float %1091, %1094
  %1125 = fsub fast float %1092, %1095
  %1126 = fsub fast float %1093, %1096
  %1127 = fmul fast float %1124, 7.500000e-01
  %1128 = fmul fast float %1125, 7.500000e-01
  %1129 = fmul fast float %1126, 7.500000e-01
  %1130 = fadd fast float %1094, 1.250000e-01
  %1131 = fadd fast float %1130, %1127
  %1132 = fadd fast float %1131, %1121
  %1133 = fadd fast float %1095, 1.250000e-01
  %1134 = fadd fast float %1133, %1128
  %1135 = fadd fast float %1134, %1122
  %1136 = fadd fast float %1096, 1.250000e-01
  %1137 = fadd fast float %1136, %1129
  %1138 = fadd fast float %1137, %1123
  %1139 = fmul fast float %1132, %1082
  %1140 = fmul fast float %1135, %1083
  %1141 = fmul fast float %1138, %1084
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %1103, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = add i32 %1143, 0
  %1145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1146 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1145, %dx.types.Handle %30, float %1139, float %1140, float %1141, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1147 = extractvalue %dx.types.ResRet.f32 %1146, 0
  br label %1148

; <label>:1148                                    ; preds = %1069, %1058
  %1149 = phi float [ %1147, %1069 ], [ -1.000000e+00, %1058 ]
  %1150 = fadd fast float %1149, %1056
  %1151 = call float @dx.op.unary.f32(i32 7, float %1150)  ; Saturate(value)
  br label %1152

; <label>:1152                                    ; preds = %1148, %1046
  %1153 = phi float [ %1151, %1148 ], [ %1056, %1046 ]
  %1154 = fmul fast float %1153, %392
  br label %1155

; <label>:1155                                    ; preds = %1152, %1041
  %1156 = phi float [ %1154, %1152 ], [ %392, %1041 ]
  %1157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1158 = extractvalue %dx.types.ResRet.i32 %1157, 0
  %1159 = and i32 %1158, 256
  %1160 = icmp eq i32 %1159, 0
  br i1 %1160, label %1207, label %1161

; <label>:1161                                    ; preds = %1155
  %1162 = add i32 %37, 428
  %1163 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1162, i32 undef)  ; BufferLoad(srv,index,wot)
  %1164 = extractvalue %dx.types.ResRet.i32 %1163, 0
  %1165 = add i32 %1164, 0
  %1166 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1165, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1167 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1166, %dx.types.Handle %61, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1168 = extractvalue %dx.types.ResRet.f32 %1167, 0
  %1169 = add i32 %37, 116
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = shl i32 %1171, 4
  %1173 = and i32 %1172, 32752
  %1174 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1173)  ; LegacyF16ToF32(value)
  %1175 = lshr i32 %1171, 7
  %1176 = and i32 %1175, 32752
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = fsub fast float 1.000000e+00, %1156
  %1179 = call float @dx.op.binary.f32(i32 35, float %1178, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1180 = bitcast float %1156 to i32
  %1181 = sitofp i32 %1180 to float
  %1182 = fadd fast float %1181, 0xC1CFBF8940000000
  %1183 = fmul fast float %1177, %1182
  %1184 = fadd fast float %1183, 0x41CFBF8940000000
  %1185 = fptosi float %1184 to i32
  %1186 = bitcast i32 %1185 to float
  %1187 = bitcast float %1179 to i32
  %1188 = sitofp i32 %1187 to float
  %1189 = fadd fast float %1188, 0xC1CFBF8940000000
  %1190 = fmul fast float %1189, %1177
  %1191 = fadd fast float %1190, 0x41CFBF8940000000
  %1192 = fptosi float %1191 to i32
  %1193 = bitcast i32 %1192 to float
  %1194 = fmul fast float %1186, %1174
  %1195 = fmul fast float %1193, %1174
  %1196 = fsub fast float %1179, %1194
  %1197 = fadd fast float %1195, %1179
  %1198 = call float @dx.op.unary.f32(i32 7, float %1196)  ; Saturate(value)
  %1199 = call float @dx.op.unary.f32(i32 7, float %1197)  ; Saturate(value)
  %1200 = fsub fast float %1168, %1198
  %1201 = fsub fast float %1199, %1198
  %1202 = bitcast float %1201 to i32
  %1203 = sub nsw i32 2129859010, %1202
  %1204 = bitcast i32 %1203 to float
  %1205 = fmul fast float %1204, %1200
  %1206 = call float @dx.op.unary.f32(i32 7, float %1205)  ; Saturate(value)
  br label %1207

; <label>:1207                                    ; preds = %1161, %1155
  %1208 = phi float [ %1206, %1161 ], [ %1156, %1155 ]
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = and i32 %1210, 128
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1229, label %1213

; <label>:1213                                    ; preds = %1207
  %1214 = add i32 %37, 412
  %1215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1214, i32 undef)  ; BufferLoad(srv,index,wot)
  %1216 = extractvalue %dx.types.ResRet.i32 %1215, 0
  %1217 = add i32 %1216, 0
  %1218 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1217, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1219 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1218, %dx.types.Handle %61, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1220 = extractvalue %dx.types.ResRet.f32 %1219, 0
  %1221 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1222 = extractvalue %dx.types.ResRet.i32 %1221, 0
  %1223 = and i32 %1222, 524288
  %1224 = icmp ne i32 %1223, 0
  %1225 = fcmp fast ogt float %1220, 0x3FE0101020000000
  %1226 = select i1 %1225, float 1.000000e+00, float 0.000000e+00
  %1227 = select i1 %1224, float %1226, float %1220
  %1228 = fmul fast float %1227, %1208
  br label %1229

; <label>:1229                                    ; preds = %1213, %1207
  %1230 = phi float [ %1228, %1213 ], [ %1208, %1207 ]
  %1231 = fcmp fast ult float %1230, 0x3F70101020000000
  br i1 %1231, label %1861, label %1232

; <label>:1232                                    ; preds = %1229
  %1233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1234 = extractvalue %dx.types.ResRet.i32 %1233, 0
  %1235 = and i32 %1234, 16
  %1236 = icmp eq i32 %1235, 0
  br i1 %1236, label %1435, label %1237

; <label>:1237                                    ; preds = %1232
  %1238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %958, i32 undef)  ; BufferLoad(srv,index,wot)
  %1239 = extractvalue %dx.types.ResRet.i32 %1238, 0
  %1240 = add i32 %37, 364
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1240, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = add i32 %1242, 0
  %1244 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1243, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1245 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1244, %dx.types.Handle %60, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1246 = extractvalue %dx.types.ResRet.f32 %1245, 0
  %1247 = extractvalue %dx.types.ResRet.f32 %1245, 1
  %1248 = extractvalue %dx.types.ResRet.f32 %1245, 2
  %1249 = extractvalue %dx.types.ResRet.f32 %1245, 3
  %1250 = and i32 %1239, 255
  %1251 = uitofp i32 %1250 to float
  %1252 = lshr i32 %1239, 8
  %1253 = and i32 %1252, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = fmul fast float %1249, %1251
  %1256 = fadd fast float %1255, %1254
  %1257 = fmul fast float %1256, 0x3F70101000000000
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = and i32 %1259, 512
  %1261 = icmp eq i32 %1260, 0
  br i1 %1261, label %1270, label %1262

; <label>:1262                                    ; preds = %1237
  %1263 = add i32 %37, 444
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = add i32 %1265, 0
  %1267 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1266, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1268 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1267, %dx.types.Handle %61, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1269 = extractvalue %dx.types.ResRet.f32 %1268, 0
  br label %1270

; <label>:1270                                    ; preds = %1262, %1237
  %1271 = phi float [ %1269, %1262 ], [ 1.000000e+00, %1237 ]
  %1272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1273 = extractvalue %dx.types.ResRet.i32 %1272, 0
  %1274 = and i32 %1273, 33554432
  %1275 = icmp eq i32 %1274, 0
  br i1 %1275, label %1382, label %1276

; <label>:1276                                    ; preds = %1270
  %1277 = add i32 %37, 240
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = and i32 %1279, 65535
  %1281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1280)  ; LegacyF16ToF32(value)
  %1282 = lshr i32 %1279, 16
  %1283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1282)  ; LegacyF16ToF32(value)
  %1284 = add i32 %37, 244
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = and i32 %1286, 65535
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = lshr i32 %1290, 24
  %1292 = uitofp i32 %1291 to float
  %1293 = fmul fast float %1292, 0x3F70101020000000
  %1294 = and i32 %1290, 255
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1295, 0x3F70101020000000
  %1297 = lshr i32 %1290, 8
  %1298 = and i32 %1297, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1299, 0x3F70101020000000
  %1301 = lshr i32 %1290, 16
  %1302 = and i32 %1301, 255
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1303, 0x3F70101020000000
  %1305 = add i32 %37, 236
  %1306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1305, i32 undef)  ; BufferLoad(srv,index,wot)
  %1307 = extractvalue %dx.types.ResRet.i32 %1306, 0
  %1308 = lshr i32 %1307, 24
  %1309 = uitofp i32 %1308 to float
  %1310 = fmul fast float %1309, 0x3F70101020000000
  %1311 = and i32 %1307, 255
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1312, 0x3F70101020000000
  %1314 = lshr i32 %1307, 8
  %1315 = and i32 %1314, 255
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3F70101020000000
  %1318 = lshr i32 %1307, 16
  %1319 = and i32 %1318, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101020000000
  %1322 = bitcast float %1246 to i32
  %1323 = ashr i32 %1322, 1
  %1324 = sub nsw i32 1597463174, %1323
  %1325 = bitcast i32 %1324 to float
  %1326 = fmul fast float %1246, 5.000000e-01
  %1327 = fmul fast float %1325, %1325
  %1328 = fmul fast float %1327, %1326
  %1329 = fsub fast float 1.500000e+00, %1328
  %1330 = fmul fast float %1325, %1246
  %1331 = fmul fast float %1330, %1329
  %1332 = bitcast float %1247 to i32
  %1333 = ashr i32 %1332, 1
  %1334 = sub nsw i32 1597463174, %1333
  %1335 = bitcast i32 %1334 to float
  %1336 = fmul fast float %1247, 5.000000e-01
  %1337 = fmul fast float %1335, %1335
  %1338 = fmul fast float %1337, %1336
  %1339 = fsub fast float 1.500000e+00, %1338
  %1340 = fmul fast float %1335, %1247
  %1341 = fmul fast float %1340, %1339
  %1342 = bitcast float %1248 to i32
  %1343 = ashr i32 %1342, 1
  %1344 = sub nsw i32 1597463174, %1343
  %1345 = bitcast i32 %1344 to float
  %1346 = fmul fast float %1248, 5.000000e-01
  %1347 = fmul fast float %1345, %1345
  %1348 = fmul fast float %1347, %1346
  %1349 = fsub fast float 1.500000e+00, %1348
  %1350 = fmul fast float %1345, %1248
  %1351 = fmul fast float %1350, %1349
  %1352 = fsub fast float %1331, %1313
  %1353 = fsub fast float %1341, %1317
  %1354 = fsub fast float %1351, %1321
  %1355 = fmul fast float %1352, %1281
  %1356 = fmul fast float %1353, %1283
  %1357 = fmul fast float %1354, %1288
  %1358 = fadd fast float %1355, %1296
  %1359 = fadd fast float %1356, %1300
  %1360 = fadd fast float %1357, %1304
  %1361 = call float @dx.op.unary.f32(i32 7, float %1358)  ; Saturate(value)
  %1362 = call float @dx.op.unary.f32(i32 7, float %1359)  ; Saturate(value)
  %1363 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1364 = fmul fast float %1361, %1361
  %1365 = fmul fast float %1362, %1362
  %1366 = fmul fast float %1363, %1363
  %1367 = fsub fast float %1364, %1246
  %1368 = fsub fast float %1365, %1247
  %1369 = fsub fast float %1366, %1248
  %1370 = fmul fast float %1367, %1271
  %1371 = fmul fast float %1368, %1271
  %1372 = fmul fast float %1369, %1271
  %1373 = fadd fast float %1370, %1246
  %1374 = fadd fast float %1371, %1247
  %1375 = fadd fast float %1372, %1248
  %1376 = fadd fast float %1293, %1257
  %1377 = fsub fast float %1376, %1310
  %1378 = call float @dx.op.unary.f32(i32 7, float %1377)  ; Saturate(value)
  %1379 = fsub fast float %1378, %1257
  %1380 = fmul fast float %1379, %1271
  %1381 = fadd fast float %1380, %1257
  br label %1435

; <label>:1382                                    ; preds = %1270
  %1383 = and i32 %1273, 134217728
  %1384 = icmp eq i32 %1383, 0
  br i1 %1384, label %1419, label %1385

; <label>:1385                                    ; preds = %1382
  %1386 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %1387 = call float @dx.op.unary.f32(i32 24, float %231)  ; Sqrt(value)
  %1388 = call float @dx.op.unary.f32(i32 24, float %235)  ; Sqrt(value)
  %1389 = fadd fast float %1386, -5.000000e-01
  %1390 = fadd fast float %1387, -5.000000e-01
  %1391 = fadd fast float %1388, -5.000000e-01
  %1392 = fmul fast float %1389, %1271
  %1393 = fmul fast float %1390, %1271
  %1394 = fmul fast float %1391, %1271
  %1395 = fadd fast float %1392, 5.000000e-01
  %1396 = fadd fast float %1393, 5.000000e-01
  %1397 = fadd fast float %1394, 5.000000e-01
  %1398 = call float @dx.op.unary.f32(i32 24, float %1246)  ; Sqrt(value)
  %1399 = call float @dx.op.unary.f32(i32 24, float %1247)  ; Sqrt(value)
  %1400 = call float @dx.op.unary.f32(i32 24, float %1248)  ; Sqrt(value)
  %1401 = fmul fast float %1395, 2.000000e+00
  %1402 = fsub fast float 1.000000e+00, %1401
  %1403 = fmul fast float %1402, %1398
  %1404 = fadd fast float %1403, %1401
  %1405 = fmul fast float %1404, %1398
  %1406 = fmul fast float %1396, 2.000000e+00
  %1407 = fsub fast float 1.000000e+00, %1406
  %1408 = fmul fast float %1407, %1399
  %1409 = fadd fast float %1408, %1406
  %1410 = fmul fast float %1409, %1399
  %1411 = fmul fast float %1397, 2.000000e+00
  %1412 = fsub fast float 1.000000e+00, %1411
  %1413 = fmul fast float %1412, %1400
  %1414 = fadd fast float %1413, %1411
  %1415 = fmul fast float %1414, %1400
  %1416 = fmul fast float %1405, %1405
  %1417 = fmul fast float %1410, %1410
  %1418 = fmul fast float %1415, %1415
  br label %1435

; <label>:1419                                    ; preds = %1382
  %1420 = fmul fast float %227, %227
  %1421 = fmul fast float %231, %231
  %1422 = fmul fast float %235, %235
  %1423 = fadd fast float %1420, -1.000000e+00
  %1424 = fadd fast float %1421, -1.000000e+00
  %1425 = fadd fast float %1422, -1.000000e+00
  %1426 = fmul fast float %1271, %1423
  %1427 = fmul fast float %1271, %1424
  %1428 = fmul fast float %1271, %1425
  %1429 = fadd fast float %1426, 1.000000e+00
  %1430 = fadd fast float %1427, 1.000000e+00
  %1431 = fadd fast float %1428, 1.000000e+00
  %1432 = fmul fast float %1429, %1246
  %1433 = fmul fast float %1430, %1247
  %1434 = fmul fast float %1431, %1248
  br label %1435

; <label>:1435                                    ; preds = %1419, %1385, %1276, %1232
  %1436 = phi float [ %1381, %1276 ], [ %1257, %1385 ], [ %1257, %1419 ], [ 0x3FA23C0BE0000000, %1232 ]
  %1437 = phi float [ %1373, %1276 ], [ %1416, %1385 ], [ %1432, %1419 ], [ 1.000000e+00, %1232 ]
  %1438 = phi float [ %1374, %1276 ], [ %1417, %1385 ], [ %1433, %1419 ], [ 1.000000e+00, %1232 ]
  %1439 = phi float [ %1375, %1276 ], [ %1418, %1385 ], [ %1434, %1419 ], [ 1.000000e+00, %1232 ]
  %1440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1441 = extractvalue %dx.types.CBufRet.i32 %1440, 1
  %1442 = and i32 %1441, 1
  %1443 = icmp ne i32 %1442, 0
  %1444 = add i32 %37, 356
  %1445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1444, i32 undef)  ; BufferLoad(srv,index,wot)
  %1446 = extractvalue %dx.types.ResRet.i32 %1445, 0
  %1447 = and i32 %1446, 32
  %1448 = icmp ne i32 %1447, 0
  %1449 = and i1 %1443, %1448
  %1450 = select i1 %1449, float 1.000000e+00, float %1437
  %1451 = select i1 %1449, float 0x3FD3333340000000, float %1438
  %1452 = select i1 %1449, float 0x3FD3333340000000, float %1439
  %1453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1454 = extractvalue %dx.types.ResRet.i32 %1453, 0
  %1455 = and i32 %1454, 32
  %1456 = icmp eq i32 %1455, 0
  br i1 %1456, label %1529, label %1457

; <label>:1457                                    ; preds = %1435
  %1458 = add i32 %37, 108
  %1459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1458, i32 undef)  ; BufferLoad(srv,index,wot)
  %1460 = extractvalue %dx.types.ResRet.i32 %1459, 0
  %1461 = add i32 %37, 380
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = add i32 %1463, 0
  %1465 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1464, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1466 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1465, %dx.types.Handle %60, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1467 = extractvalue %dx.types.ResRet.f32 %1466, 0
  %1468 = extractvalue %dx.types.ResRet.f32 %1466, 1
  %1469 = extractvalue %dx.types.ResRet.f32 %1466, 2
  %1470 = extractvalue %dx.types.ResRet.f32 %1466, 3
  %1471 = and i32 %1460, 255
  %1472 = uitofp i32 %1471 to float
  %1473 = lshr i32 %1460, 8
  %1474 = and i32 %1473, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = lshr i32 %1460, 16
  %1477 = and i32 %1476, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = fmul fast float %1478, 0x3F70101000000000
  %1480 = fmul fast float %1467, %1472
  %1481 = fadd fast float %1480, %1475
  %1482 = fmul fast float %1481, 0x3F70101000000000
  %1483 = fadd fast float %1468, -5.000000e-01
  %1484 = fadd fast float %1470, -5.000000e-01
  %1485 = fmul fast float %1483, %1479
  %1486 = fmul fast float %1484, %1479
  %1487 = fadd fast float %1485, 5.000000e-01
  %1488 = fadd fast float %1486, 5.000000e-01
  %1489 = fmul fast float %1487, 2.000000e+00
  %1490 = fadd fast float %1489, -1.000000e+00
  %1491 = fmul fast float %1488, 2.000000e+00
  %1492 = fadd fast float %1491, -1.000000e+00
  %1493 = fadd fast float %1490, %1492
  %1494 = fmul fast float %1493, 5.000000e-01
  %1495 = fsub fast float %1490, %1492
  %1496 = fmul fast float %1495, 5.000000e-01
  %1497 = call float @dx.op.unary.f32(i32 6, float %1494)  ; FAbs(value)
  %1498 = fsub fast float 1.000000e+00, %1497
  %1499 = call float @dx.op.unary.f32(i32 6, float %1496)  ; FAbs(value)
  %1500 = fsub fast float %1498, %1499
  %1501 = call float @dx.op.dot3.f32(i32 55, float %1494, float %1496, float %1500, float %1494, float %1496, float %1500)  ; Dot3(ax,ay,az,bx,by,bz)
  %1502 = call float @dx.op.unary.f32(i32 25, float %1501)  ; Rsqrt(value)
  %1503 = fmul fast float %1494, %1502
  %1504 = fmul fast float %1496, %1502
  %1505 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1506 = extractvalue %dx.types.ResRet.i32 %1505, 0
  %1507 = and i32 %1506, 67108864
  %1508 = icmp eq i32 %1507, 0
  br i1 %1508, label %1525, label %1509

; <label>:1509                                    ; preds = %1457
  %1510 = add i32 %37, 296
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = and i32 %1512, 65535
  %1514 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1513)  ; LegacyF16ToF32(value)
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %952, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 65535
  %1518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1517)  ; LegacyF16ToF32(value)
  %1519 = lshr i32 %1512, 16
  %1520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1519)  ; LegacyF16ToF32(value)
  %1521 = fsub fast float %1482, %1520
  %1522 = fmul fast float %1521, %1514
  %1523 = fadd fast float %1522, %1518
  %1524 = call float @dx.op.unary.f32(i32 7, float %1523)  ; Saturate(value)
  br label %1525

; <label>:1525                                    ; preds = %1509, %1457
  %1526 = phi float [ %1524, %1509 ], [ %1482, %1457 ]
  %1527 = call float @dx.op.dot2.f32(i32 54, float %1503, float %1504, float %946, float %947)  ; Dot2(ax,ay,bx,by)
  %1528 = call float @dx.op.dot2.f32(i32 54, float %1503, float %1504, float %948, float %949)  ; Dot2(ax,ay,bx,by)
  br label %1529

; <label>:1529                                    ; preds = %1525, %1435
  %1530 = phi float [ %1526, %1525 ], [ 0x3FD6666660000000, %1435 ]
  %1531 = phi float [ %1527, %1525 ], [ 0.000000e+00, %1435 ]
  %1532 = phi float [ %1528, %1525 ], [ 0.000000e+00, %1435 ]
  %1533 = phi float [ %1469, %1525 ], [ 1.000000e+00, %1435 ]
  %1534 = add i32 %37, 176
  %1535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1534, i32 undef)  ; BufferLoad(srv,index,wot)
  %1536 = extractvalue %dx.types.ResRet.i32 %1535, 0
  %1537 = lshr i32 %1536, 22
  %1538 = shl nuw nsw i32 %1537, 5
  %1539 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1538)  ; LegacyF16ToF32(value)
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 64
  %1543 = icmp eq i32 %1542, 0
  br i1 %1543, label %1577, label %1544

; <label>:1544                                    ; preds = %1529
  %1545 = add i32 %37, 396
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1545, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = add i32 %1547, 0
  %1549 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1548, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = and i32 %1551, 131072
  %1553 = icmp eq i32 %1552, 0
  %1554 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1549, %dx.types.Handle %60, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1555 = extractvalue %dx.types.ResRet.f32 %1554, 0
  %1556 = extractvalue %dx.types.ResRet.f32 %1554, 1
  %1557 = extractvalue %dx.types.ResRet.f32 %1554, 2
  %1558 = fmul fast float %1555, %215
  %1559 = fmul fast float %1556, %218
  %1560 = fmul fast float %1557, %221
  br i1 %1553, label %1567, label %1561

; <label>:1561                                    ; preds = %1544
  %1562 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1563 = extractvalue %dx.types.CBufRet.f32 %1562, 0
  %1564 = fmul fast float %1563, %1558
  %1565 = fmul fast float %1563, %1559
  %1566 = fmul fast float %1563, %1560
  br label %1567

; <label>:1567                                    ; preds = %1561, %1544
  %1568 = phi float [ %1564, %1561 ], [ %1558, %1544 ]
  %1569 = phi float [ %1565, %1561 ], [ %1559, %1544 ]
  %1570 = phi float [ %1566, %1561 ], [ %1560, %1544 ]
  %1571 = fmul fast float %1568, %1539
  %1572 = select i1 %167, float %1571, float %1568
  %1573 = call float @dx.op.dot3.f32(i32 55, float %1572, float %1569, float %1570, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1574 = select i1 %167, float 0.000000e+00, float %1568
  %1575 = select i1 %167, float %1573, float %1569
  %1576 = select i1 %167, float 0.000000e+00, float %1570
  br label %1577

; <label>:1577                                    ; preds = %1567, %1529
  %1578 = phi float [ %1574, %1567 ], [ 0.000000e+00, %1529 ]
  %1579 = phi float [ %1575, %1567 ], [ 0.000000e+00, %1529 ]
  %1580 = phi float [ %1576, %1567 ], [ 0.000000e+00, %1529 ]
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = and i32 %1582, 10240
  %1584 = icmp eq i32 %1583, 0
  br i1 %1584, label %1629, label %1585

; <label>:1585                                    ; preds = %1577
  %1586 = add i32 %37, 460
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = add i32 %1588, 0
  %1590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1591 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1590, %dx.types.Handle %61, float %1042, float %1043, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1592 = extractvalue %dx.types.ResRet.f32 %1591, 1
  %1593 = extractvalue %dx.types.ResRet.f32 %1591, 3
  %1594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1595 = extractvalue %dx.types.ResRet.i32 %1594, 0
  %1596 = and i32 %1595, 1048576
  %1597 = icmp ne i32 %1596, 0
  %1598 = and i32 %1595, 8192
  %1599 = icmp eq i32 %1598, 0
  br i1 %1599, label %1615, label %1600

; <label>:1600                                    ; preds = %1585
  %1601 = extractvalue %dx.types.ResRet.f32 %1591, 2
  %1602 = select i1 %1597, float %1601, float %1592
  %1603 = extractvalue %dx.types.ResRet.f32 %1591, 0
  %1604 = select i1 %1597, float %1603, float %1592
  %1605 = add i32 %37, 112
  %1606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1605, i32 undef)  ; BufferLoad(srv,index,wot)
  %1607 = extractvalue %dx.types.ResRet.i32 %1606, 0
  %1608 = lshr i32 %1607, 16
  %1609 = and i32 %1608, 255
  %1610 = uitofp i32 %1609 to float
  %1611 = fmul fast float %1610, 0x3F80101020000000
  %1612 = fmul fast float %1611, %1604
  %1613 = fmul fast float %1611, %1592
  %1614 = fmul fast float %1611, %1602
  br label %1615

; <label>:1615                                    ; preds = %1600, %1585
  %1616 = phi float [ %1612, %1600 ], [ 0.000000e+00, %1585 ]
  %1617 = phi float [ %1613, %1600 ], [ 0.000000e+00, %1585 ]
  %1618 = phi float [ %1614, %1600 ], [ 0.000000e+00, %1585 ]
  %1619 = and i32 %1595, 2048
  %1620 = icmp eq i32 %1619, 0
  br i1 %1620, label %1629, label %1621

; <label>:1621                                    ; preds = %1615
  %1622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1534, i32 undef)  ; BufferLoad(srv,index,wot)
  %1623 = extractvalue %dx.types.ResRet.i32 %1622, 0
  %1624 = shl i32 %1623, 4
  %1625 = and i32 %1624, 32752
  %1626 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1625)  ; LegacyF16ToF32(value)
  %1627 = fmul fast float %1626, %1593
  %1628 = call float @dx.op.binary.f32(i32 35, float %1627, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1629

; <label>:1629                                    ; preds = %1621, %1615, %1577
  %1630 = phi float [ %1616, %1621 ], [ %1616, %1615 ], [ 0.000000e+00, %1577 ]
  %1631 = phi float [ %1617, %1621 ], [ %1617, %1615 ], [ 0.000000e+00, %1577 ]
  %1632 = phi float [ %1618, %1621 ], [ %1618, %1615 ], [ 0.000000e+00, %1577 ]
  %1633 = phi float [ %1628, %1621 ], [ 0x3F70101020000000, %1615 ], [ 0x3F70101020000000, %1577 ]
  %1634 = add i32 %37, 112
  %1635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1634, i32 undef)  ; BufferLoad(srv,index,wot)
  %1636 = extractvalue %dx.types.ResRet.i32 %1635, 0
  %1637 = and i32 %1636, 255
  %1638 = uitofp i32 %1637 to float
  %1639 = lshr i32 %1636, 8
  %1640 = and i32 %1639, 255
  %1641 = uitofp i32 %1640 to float
  %1642 = call float @dx.op.dot3.f32(i32 55, float %1450, float %1451, float %1452, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1643 = fmul fast float %1641, %1642
  %1644 = fadd fast float %1643, %1638
  %1645 = fmul fast float %1644, 0x3F70101020000000
  %1646 = call float @dx.op.unary.f32(i32 7, float %1645)  ; Saturate(value)
  br i1 %934, label %1647, label %1655

; <label>:1647                                    ; preds = %1629
  %1648 = fsub fast float 1.000000e+00, %1230
  %1649 = fmul fast float %1648, %918
  %1650 = fmul fast float %1648, %919
  %1651 = fmul fast float %1648, %920
  %1652 = fmul fast float %1648, %924
  %1653 = fmul fast float %1648, %925
  %1654 = fmul fast float %1648, %926
  br label %1655

; <label>:1655                                    ; preds = %1647, %1629
  %1656 = phi float [ %1649, %1647 ], [ %918, %1629 ]
  %1657 = phi float [ %1650, %1647 ], [ %919, %1629 ]
  %1658 = phi float [ %1651, %1647 ], [ %920, %1629 ]
  %1659 = phi float [ %1652, %1647 ], [ %924, %1629 ]
  %1660 = phi float [ %1653, %1647 ], [ %925, %1629 ]
  %1661 = phi float [ %1654, %1647 ], [ %926, %1629 ]
  %1662 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %935, i32 undef)  ; BufferLoad(srv,index,wot)
  %1663 = extractvalue %dx.types.ResRet.i32 %1662, 0
  %1664 = and i32 %1663, 3
  %1665 = icmp eq i32 %1664, 3
  br i1 %1665, label %1744, label %1666

; <label>:1666                                    ; preds = %1655
  %1667 = and i32 %1663, 16
  %1668 = icmp ne i32 %1667, 0
  %1669 = select i1 %1668, float %1230, float 0.000000e+00
  %1670 = icmp eq i32 %1664, 0
  br i1 %1670, label %1671, label %1699

; <label>:1671                                    ; preds = %1666
  %1672 = and i32 %1663, 64
  %1673 = icmp ne i32 %1672, 0
  %1674 = select i1 %1673, float %1230, float 0.000000e+00
  %1675 = fsub fast float %1450, %1656
  %1676 = fsub fast float %1451, %1657
  %1677 = fsub fast float %1452, %1658
  %1678 = fmul fast float %1669, %1675
  %1679 = fmul fast float %1669, %1676
  %1680 = fmul fast float %1669, %1677
  %1681 = fadd fast float %1678, %1656
  %1682 = fadd fast float %1679, %1657
  %1683 = fadd fast float %1680, %1658
  %1684 = fsub fast float %1436, %927
  %1685 = fmul fast float %1669, %1684
  %1686 = fadd fast float %1685, %927
  %1687 = fsub fast float %1578, %1659
  %1688 = fsub fast float %1579, %1660
  %1689 = fsub fast float %1580, %1661
  %1690 = fmul fast float %1674, %1687
  %1691 = fmul fast float %1674, %1688
  %1692 = fmul fast float %1674, %1689
  %1693 = fadd fast float %1690, %1659
  %1694 = fadd fast float %1691, %1660
  %1695 = fadd fast float %1692, %1661
  %1696 = fsub fast float %1646, %932
  %1697 = fmul fast float %1669, %1696
  %1698 = fadd fast float %1697, %932
  br label %1744

; <label>:1699                                    ; preds = %1666
  %1700 = icmp eq i32 %1664, 1
  br i1 %1700, label %1701, label %1714

; <label>:1701                                    ; preds = %1699
  %1702 = fadd fast float %1450, -1.000000e+00
  %1703 = fadd fast float %1451, -1.000000e+00
  %1704 = fadd fast float %1452, -1.000000e+00
  %1705 = fmul fast float %1669, %1702
  %1706 = fmul fast float %1669, %1703
  %1707 = fmul fast float %1669, %1704
  %1708 = fadd fast float %1705, 1.000000e+00
  %1709 = fadd fast float %1706, 1.000000e+00
  %1710 = fadd fast float %1707, 1.000000e+00
  %1711 = fmul fast float %1708, %1656
  %1712 = fmul fast float %1709, %1657
  %1713 = fmul fast float %1710, %1658
  br label %1744

; <label>:1714                                    ; preds = %1699
  %1715 = icmp eq i32 %1664, 2
  br i1 %1715, label %1716, label %1744

; <label>:1716                                    ; preds = %1714
  %1717 = call float @dx.op.unary.f32(i32 24, float %1450)  ; Sqrt(value)
  %1718 = call float @dx.op.unary.f32(i32 24, float %1451)  ; Sqrt(value)
  %1719 = call float @dx.op.unary.f32(i32 24, float %1452)  ; Sqrt(value)
  %1720 = fadd fast float %1717, -5.000000e-01
  %1721 = fadd fast float %1718, -5.000000e-01
  %1722 = fadd fast float %1719, -5.000000e-01
  %1723 = fmul fast float %1720, %1669
  %1724 = fmul fast float %1721, %1669
  %1725 = fmul fast float %1722, %1669
  %1726 = fadd fast float %1723, 5.000000e-01
  %1727 = fadd fast float %1724, 5.000000e-01
  %1728 = fadd fast float %1725, 5.000000e-01
  %1729 = fmul fast float %1726, 2.000000e+00
  %1730 = fsub fast float 1.000000e+00, %1729
  %1731 = fmul fast float %1730, %1656
  %1732 = fadd fast float %1731, %1729
  %1733 = fmul fast float %1732, %1656
  %1734 = fmul fast float %1727, 2.000000e+00
  %1735 = fsub fast float 1.000000e+00, %1734
  %1736 = fmul fast float %1735, %1657
  %1737 = fadd fast float %1736, %1734
  %1738 = fmul fast float %1737, %1657
  %1739 = fmul fast float %1728, 2.000000e+00
  %1740 = fsub fast float 1.000000e+00, %1739
  %1741 = fmul fast float %1740, %1658
  %1742 = fadd fast float %1741, %1739
  %1743 = fmul fast float %1742, %1658
  br label %1744

; <label>:1744                                    ; preds = %1716, %1714, %1701, %1671, %1655
  %1745 = phi float [ %1656, %1655 ], [ %1733, %1716 ], [ %1656, %1714 ], [ %1711, %1701 ], [ %1681, %1671 ]
  %1746 = phi float [ %1657, %1655 ], [ %1738, %1716 ], [ %1657, %1714 ], [ %1712, %1701 ], [ %1682, %1671 ]
  %1747 = phi float [ %1658, %1655 ], [ %1743, %1716 ], [ %1658, %1714 ], [ %1713, %1701 ], [ %1683, %1671 ]
  %1748 = phi float [ %1659, %1655 ], [ %1659, %1716 ], [ %1659, %1714 ], [ %1659, %1701 ], [ %1693, %1671 ]
  %1749 = phi float [ %1660, %1655 ], [ %1660, %1716 ], [ %1660, %1714 ], [ %1660, %1701 ], [ %1694, %1671 ]
  %1750 = phi float [ %1661, %1655 ], [ %1661, %1716 ], [ %1661, %1714 ], [ %1661, %1701 ], [ %1695, %1671 ]
  %1751 = phi float [ %927, %1655 ], [ %927, %1716 ], [ %927, %1714 ], [ %927, %1701 ], [ %1686, %1671 ]
  %1752 = phi float [ %932, %1655 ], [ %932, %1716 ], [ %932, %1714 ], [ %932, %1701 ], [ %1698, %1671 ]
  %1753 = and i32 %1663, 12
  %1754 = icmp eq i32 %1753, 12
  br i1 %1754, label %1861, label %1755

; <label>:1755                                    ; preds = %1744
  %1756 = and i32 %1663, 2097184
  %1757 = icmp eq i32 %1756, 2097184
  %1758 = select i1 %1757, float %1230, float 0.000000e+00
  %1759 = and i32 %1663, 4194336
  %1760 = icmp eq i32 %1759, 4194336
  %1761 = select i1 %1760, float %1230, float 0.000000e+00
  %1762 = and i32 %1663, 8388640
  %1763 = icmp eq i32 %1762, 8388640
  %1764 = select i1 %1763, float %1230, float 0.000000e+00
  %1765 = and i32 %1663, 2048
  %1766 = icmp ne i32 %1765, 0
  %1767 = select i1 %1766, float %1230, float 0.000000e+00
  %1768 = and i32 %1663, 8192
  %1769 = icmp ne i32 %1768, 0
  %1770 = select i1 %1769, float %1230, float 0.000000e+00
  %1771 = icmp eq i32 %1753, 0
  br i1 %1771, label %1772, label %1797

; <label>:1772                                    ; preds = %1755
  %1773 = fsub fast float %1531, %916
  %1774 = fsub fast float %1532, %917
  %1775 = fmul fast float %1758, %1773
  %1776 = fmul fast float %1758, %1774
  %1777 = fadd fast float %1775, %916
  %1778 = fadd fast float %1776, %917
  %1779 = fsub fast float %1533, %930
  %1780 = fmul fast float %1761, %1779
  %1781 = fadd fast float %1780, %930
  %1782 = fsub fast float %1530, %929
  %1783 = fmul fast float %1764, %1782
  %1784 = fadd fast float %1783, %929
  %1785 = fsub fast float %1633, %931
  %1786 = fmul fast float %1767, %1785
  %1787 = fadd fast float %1786, %931
  %1788 = fsub fast float %1630, %921
  %1789 = fsub fast float %1631, %922
  %1790 = fsub fast float %1632, %923
  %1791 = fmul fast float %1770, %1788
  %1792 = fmul fast float %1770, %1789
  %1793 = fmul fast float %1770, %1790
  %1794 = fadd fast float %1791, %921
  %1795 = fadd fast float %1792, %922
  %1796 = fadd fast float %1793, %923
  br label %1861

; <label>:1797                                    ; preds = %1755
  %1798 = icmp eq i32 %1753, 4
  br i1 %1798, label %1799, label %1839

; <label>:1799                                    ; preds = %1797
  %1800 = fmul fast float %1758, %1531
  %1801 = fmul fast float %1758, %1532
  %1802 = fadd fast float %1800, %916
  %1803 = fadd fast float %1801, %917
  %1804 = call float @dx.op.binary.f32(i32 36, float %930, float %1533)  ; FMin(a,b)
  %1805 = fsub fast float %1804, %930
  %1806 = fmul fast float %1805, %1761
  %1807 = fadd fast float %1806, %930
  %1808 = fadd fast float %1530, %929
  %1809 = fmul fast float %1808, 0x3FF337FAE0000000
  %1810 = fmul fast float %929, %929
  %1811 = fmul fast float %1530, %1530
  %1812 = fadd fast float %1811, %1810
  %1813 = fmul fast float %1812, 0x3FE5152B00000000
  %1814 = fmul fast float %929, 0xBFCC1F85E0000000
  %1815 = fmul fast float %1814, %1530
  %1816 = fadd fast float %1815, 0xBFE1363700000000
  %1817 = fadd fast float %1816, %1809
  %1818 = fsub fast float %1817, %1813
  %1819 = fmul fast float %1808, 0x3FBA6F0D00000000
  %1820 = fmul fast float %1812, 0x3FD0432880000000
  %1821 = fmul fast float %929, 0xBFEF110800000000
  %1822 = fmul fast float %1821, %1530
  %1823 = fadd fast float %1822, 1.000000e+00
  %1824 = fsub fast float %1823, %1819
  %1825 = fadd fast float %1824, %1820
  %1826 = fdiv fast float %1818, %1825
  %1827 = call float @dx.op.unary.f32(i32 7, float %1826)  ; Saturate(value)
  %1828 = fsub fast float %1827, %929
  %1829 = fmul fast float %1828, %1764
  %1830 = fadd fast float %1829, %929
  %1831 = fmul fast float %1767, %1633
  %1832 = fadd fast float %1831, %931
  %1833 = fmul fast float %1770, %1630
  %1834 = fmul fast float %1770, %1631
  %1835 = fmul fast float %1770, %1632
  %1836 = fadd fast float %1833, %921
  %1837 = fadd fast float %1834, %922
  %1838 = fadd fast float %1835, %923
  br label %1861

; <label>:1839                                    ; preds = %1797
  %1840 = icmp eq i32 %1753, 8
  br i1 %1840, label %1841, label %1861

; <label>:1841                                    ; preds = %1839
  %1842 = fmul fast float %1758, %1531
  %1843 = fmul fast float %1758, %1532
  %1844 = fadd fast float %1842, %916
  %1845 = fadd fast float %1843, %917
  %1846 = call float @dx.op.binary.f32(i32 36, float %930, float %1533)  ; FMin(a,b)
  %1847 = fsub fast float %1846, %930
  %1848 = fmul fast float %1847, %1761
  %1849 = fadd fast float %1848, %930
  %1850 = fsub fast float %1530, %929
  %1851 = fmul fast float %1764, %1850
  %1852 = fadd fast float %1851, %929
  %1853 = fmul fast float %1767, %1633
  %1854 = fadd fast float %1853, %931
  %1855 = fmul fast float %1770, %1630
  %1856 = fmul fast float %1770, %1631
  %1857 = fmul fast float %1770, %1632
  %1858 = fadd fast float %1855, %921
  %1859 = fadd fast float %1856, %922
  %1860 = fadd fast float %1857, %923
  br label %1861

; <label>:1861                                    ; preds = %1841, %1839, %1799, %1772, %1744, %1229, %933, %915
  %1862 = phi float [ %916, %1744 ], [ %916, %1229 ], [ %916, %915 ], [ %1844, %1841 ], [ %916, %1839 ], [ %1802, %1799 ], [ %1777, %1772 ], [ %916, %933 ]
  %1863 = phi float [ %917, %1744 ], [ %917, %1229 ], [ %917, %915 ], [ %1845, %1841 ], [ %917, %1839 ], [ %1803, %1799 ], [ %1778, %1772 ], [ %917, %933 ]
  %1864 = phi float [ %1745, %1744 ], [ %918, %1229 ], [ %918, %915 ], [ %1745, %1841 ], [ %1745, %1839 ], [ %1745, %1799 ], [ %1745, %1772 ], [ %918, %933 ]
  %1865 = phi float [ %1746, %1744 ], [ %919, %1229 ], [ %919, %915 ], [ %1746, %1841 ], [ %1746, %1839 ], [ %1746, %1799 ], [ %1746, %1772 ], [ %919, %933 ]
  %1866 = phi float [ %1747, %1744 ], [ %920, %1229 ], [ %920, %915 ], [ %1747, %1841 ], [ %1747, %1839 ], [ %1747, %1799 ], [ %1747, %1772 ], [ %920, %933 ]
  %1867 = phi float [ %921, %1744 ], [ %921, %1229 ], [ %921, %915 ], [ %1858, %1841 ], [ %921, %1839 ], [ %1836, %1799 ], [ %1794, %1772 ], [ %921, %933 ]
  %1868 = phi float [ %922, %1744 ], [ %922, %1229 ], [ %922, %915 ], [ %1859, %1841 ], [ %922, %1839 ], [ %1837, %1799 ], [ %1795, %1772 ], [ %922, %933 ]
  %1869 = phi float [ %923, %1744 ], [ %923, %1229 ], [ %923, %915 ], [ %1860, %1841 ], [ %923, %1839 ], [ %1838, %1799 ], [ %1796, %1772 ], [ %923, %933 ]
  %1870 = phi float [ %1748, %1744 ], [ %924, %1229 ], [ %924, %915 ], [ %1748, %1841 ], [ %1748, %1839 ], [ %1748, %1799 ], [ %1748, %1772 ], [ %924, %933 ]
  %1871 = phi float [ %1749, %1744 ], [ %925, %1229 ], [ %925, %915 ], [ %1749, %1841 ], [ %1749, %1839 ], [ %1749, %1799 ], [ %1749, %1772 ], [ %925, %933 ]
  %1872 = phi float [ %1750, %1744 ], [ %926, %1229 ], [ %926, %915 ], [ %1750, %1841 ], [ %1750, %1839 ], [ %1750, %1799 ], [ %1750, %1772 ], [ %926, %933 ]
  %1873 = phi float [ %1751, %1744 ], [ %927, %1229 ], [ %927, %915 ], [ %1751, %1841 ], [ %1751, %1839 ], [ %1751, %1799 ], [ %1751, %1772 ], [ %927, %933 ]
  %1874 = phi float [ %929, %1744 ], [ %929, %1229 ], [ %929, %915 ], [ %1852, %1841 ], [ %929, %1839 ], [ %1830, %1799 ], [ %1784, %1772 ], [ %929, %933 ]
  %1875 = phi float [ %930, %1744 ], [ %930, %1229 ], [ %930, %915 ], [ %1849, %1841 ], [ %930, %1839 ], [ %1807, %1799 ], [ %1781, %1772 ], [ %930, %933 ]
  %1876 = phi float [ %931, %1744 ], [ %931, %1229 ], [ %931, %915 ], [ %1854, %1841 ], [ %931, %1839 ], [ %1832, %1799 ], [ %1787, %1772 ], [ %931, %933 ]
  %1877 = phi float [ %1752, %1744 ], [ %932, %1229 ], [ %932, %915 ], [ %1752, %1841 ], [ %1752, %1839 ], [ %1752, %1799 ], [ %1752, %1772 ], [ %932, %933 ]
  br i1 %342, label %2806, label %1878

; <label>:1878                                    ; preds = %1861
  %1879 = icmp ult i32 %395, 3
  %1880 = add i32 %37, 56
  %1881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %1882 = extractvalue %dx.types.ResRet.i32 %1881, 0
  %1883 = add i32 %37, 60
  %1884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1883, i32 undef)  ; BufferLoad(srv,index,wot)
  %1885 = extractvalue %dx.types.ResRet.i32 %1884, 0
  %1886 = or i32 %1885, %1882
  %1887 = icmp eq i32 %1886, 0
  br i1 %1887, label %2806, label %1888

; <label>:1888                                    ; preds = %1878
  %1889 = and i32 %1882, 262144
  %1890 = icmp ne i32 %1889, 0
  %1891 = select i1 %1890, float %39, float 1.000000e+00
  %1892 = select i1 %1890, float %40, float 0.000000e+00
  %1893 = select i1 %1890, float %41, float 0.000000e+00
  %1894 = select i1 %1890, float %42, float 1.000000e+00
  %1895 = select i1 %1890, float %43, float %52
  %1896 = select i1 %1890, float %44, float %53
  %1897 = add i32 %37, 316
  %1898 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.i32 %1898, 0
  %1900 = lshr i32 %1899, 16
  %1901 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1900)  ; LegacyF16ToF32(value)
  %1902 = fmul fast float %1901, 0x3F50624DE0000000
  %1903 = add i32 %37, 120
  %1904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %1905 = extractvalue %dx.types.ResRet.i32 %1904, 0
  %1906 = lshr i32 %1905, 16
  %1907 = and i32 %1906, 255
  %1908 = lshr i32 %1905, 24
  %1909 = add i32 %37, 324
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = and i32 %1911, 65535
  %1913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1912)  ; LegacyF16ToF32(value)
  %1914 = lshr i32 %1911, 16
  %1915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1914)  ; LegacyF16ToF32(value)
  %1916 = add i32 %37, 64
  %1917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1918 = extractvalue %dx.types.ResRet.i32 %1917, 0
  %1919 = lshr i32 %1918, 22
  %1920 = shl nuw nsw i32 %1919, 5
  %1921 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1920)  ; LegacyF16ToF32(value)
  %1922 = shl i32 %1918, 4
  %1923 = and i32 %1922, 32752
  %1924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1923)  ; LegacyF16ToF32(value)
  %1925 = lshr i32 %1918, 7
  %1926 = and i32 %1925, 32752
  %1927 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1926)  ; LegacyF16ToF32(value)
  %1928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1929 = extractvalue %dx.types.CBufRet.f32 %1928, 3
  %1930 = fmul fast float %1929, 1.000000e+03
  %1931 = fmul fast float %292, %1930
  %1932 = call float @dx.op.unary.f32(i32 22, float %1931)  ; Frc(value)
  %1933 = fadd fast float %1932, %282
  %1934 = fmul fast float %293, %1930
  %1935 = call float @dx.op.unary.f32(i32 22, float %1934)  ; Frc(value)
  %1936 = fadd fast float %1935, %284
  %1937 = fmul fast float %1902, %1930
  %1938 = call float @dx.op.unary.f32(i32 22, float %1937)  ; Frc(value)
  %1939 = fmul fast float %1938, 0x401921FB60000000
  %1940 = fadd fast float %1939, %1921
  %1941 = call float @dx.op.unary.f32(i32 13, float %1940)  ; Sin(value)
  %1942 = call float @dx.op.unary.f32(i32 12, float %1940)  ; Cos(value)
  %1943 = fsub fast float -0.000000e+00, %1941
  %1944 = fadd fast float %1895, -5.000000e-01
  %1945 = fadd fast float %1896, -5.000000e-01
  %1946 = fmul fast float %1913, %1944
  %1947 = fmul fast float %1915, %1945
  %1948 = fadd fast float %1946, 5.000000e-01
  %1949 = fadd fast float %1947, 5.000000e-01
  %1950 = fmul fast float %1924, %1948
  %1951 = fmul fast float %1927, %1949
  %1952 = fmul fast float %1942, %1950
  %1953 = call float @dx.op.tertiary.f32(i32 46, float %1943, float %1951, float %1952)  ; FMad(a,b,c)
  %1954 = fmul fast float %1941, %1950
  %1955 = call float @dx.op.tertiary.f32(i32 46, float %1942, float %1951, float %1954)  ; FMad(a,b,c)
  %1956 = fadd fast float %1933, %1953
  %1957 = fadd fast float %1936, %1955
  %1958 = icmp ugt i32 %1907, 1
  %1959 = icmp ugt i32 %1905, 33554431
  %1960 = or i1 %1959, %1958
  br i1 %1960, label %1961, label %1986

; <label>:1961                                    ; preds = %1888
  %1962 = add i32 %37, 260
  %1963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1964 = extractvalue %dx.types.ResRet.i32 %1963, 0
  %1965 = lshr i32 %1964, 16
  %1966 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1965)  ; LegacyF16ToF32(value)
  %1967 = fmul fast float %1929, %1966
  %1968 = call float @dx.op.unary.f32(i32 22, float %1967)  ; Frc(value)
  %1969 = mul nuw nsw i32 %1907, %1908
  %1970 = uitofp i32 %1969 to float
  %1971 = fmul fast float %1968, %1970
  %1972 = call float @dx.op.unary.f32(i32 27, float %1971)  ; Round_ni(value)
  %1973 = fptoui float %1972 to i32
  %1974 = urem i32 %1973, %1907
  %1975 = udiv i32 %1973, %1908
  %1976 = call float @dx.op.unary.f32(i32 22, float %1956)  ; Frc(value)
  %1977 = call float @dx.op.unary.f32(i32 22, float %1957)  ; Frc(value)
  %1978 = uitofp i32 %1974 to float
  %1979 = uitofp i32 %1975 to float
  %1980 = fadd fast float %1976, %1978
  %1981 = fadd fast float %1977, %1979
  %1982 = uitofp i32 %1907 to float
  %1983 = uitofp i32 %1908 to float
  %1984 = fdiv fast float %1980, %1982
  %1985 = fdiv fast float %1981, %1983
  br label %1986

; <label>:1986                                    ; preds = %1961, %1888
  %1987 = phi float [ %1984, %1961 ], [ %1956, %1888 ]
  %1988 = phi float [ %1985, %1961 ], [ %1957, %1888 ]
  %1989 = and i32 %1882, 16777216
  %1990 = icmp eq i32 %1989, 0
  br i1 %1990, label %2100, label %1991

; <label>:1991                                    ; preds = %1986
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 0
  %1994 = extractvalue %dx.types.CBufRet.f32 %1992, 1
  %1995 = extractvalue %dx.types.CBufRet.f32 %1992, 2
  %1996 = fadd fast float %1993, %123
  %1997 = fadd fast float %1994, %124
  %1998 = fadd fast float %1995, %125
  %1999 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2000 = extractvalue %dx.types.CBufRet.f32 %1999, 0
  %2001 = call float @dx.op.unary.f32(i32 7, float %2000)  ; Saturate(value)
  %2002 = icmp eq i32 %38, 65535
  br i1 %2002, label %2097, label %2003

; <label>:2003                                    ; preds = %1991
  %2004 = lshr i32 %38, 1
  %2005 = shl i32 %2004, 2
  %2006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2005, i32 undef)  ; BufferLoad(srv,index,wot)
  %2007 = extractvalue %dx.types.ResRet.i32 %2006, 0
  %2008 = and i32 %38, 1
  %2009 = icmp ne i32 %2008, 0
  %2010 = lshr i32 %2007, 16
  %2011 = and i32 %2007, 65535
  %2012 = select i1 %2009, i32 %2010, i32 %2011
  %2013 = icmp eq i32 %2012, 65535
  br i1 %2013, label %2093, label %2014

; <label>:2014                                    ; preds = %2003
  %2015 = mul nuw nsw i32 %2012, 40
  %2016 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2015, i32 undef)  ; BufferLoad(srv,index,wot)
  %2017 = extractvalue %dx.types.ResRet.f32 %2016, 0
  %2018 = extractvalue %dx.types.ResRet.f32 %2016, 1
  %2019 = extractvalue %dx.types.ResRet.f32 %2016, 2
  %2020 = add nuw nsw i32 %2015, 12
  %2021 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.f32 %2021, 0
  %2023 = extractvalue %dx.types.ResRet.f32 %2021, 1
  %2024 = extractvalue %dx.types.ResRet.f32 %2021, 2
  %2025 = add nuw nsw i32 %2015, 24
  %2026 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2025, i32 undef)  ; BufferLoad(srv,index,wot)
  %2027 = extractvalue %dx.types.ResRet.f32 %2026, 0
  %2028 = extractvalue %dx.types.ResRet.f32 %2026, 1
  %2029 = extractvalue %dx.types.ResRet.f32 %2026, 2
  %2030 = add nuw nsw i32 %2015, 36
  %2031 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2030, i32 undef)  ; BufferLoad(srv,index,wot)
  %2032 = extractvalue %dx.types.ResRet.f32 %2031, 0
  %2033 = fsub fast float %1996, %2017
  %2034 = fsub fast float %1997, %2018
  %2035 = fsub fast float %1998, %2019
  %2036 = fmul fast float %2032, %2033
  %2037 = fmul fast float %2032, %2034
  %2038 = fmul fast float %2032, %2035
  %2039 = call float @dx.op.unary.f32(i32 27, float %2036)  ; Round_ni(value)
  %2040 = call float @dx.op.unary.f32(i32 27, float %2037)  ; Round_ni(value)
  %2041 = call float @dx.op.unary.f32(i32 27, float %2038)  ; Round_ni(value)
  %2042 = fadd fast float %2039, 5.000000e-01
  %2043 = fadd fast float %2040, 5.000000e-01
  %2044 = fadd fast float %2041, 5.000000e-01
  %2045 = fmul fast float %2042, %2022
  %2046 = fmul fast float %2043, %2023
  %2047 = fmul fast float %2044, %2024
  %2048 = shl i32 %38, 2
  %2049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2050 = extractvalue %dx.types.ResRet.i32 %2049, 0
  %2051 = add i32 %2050, 0
  %2052 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2051, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2053 = call float @dx.op.unary.f32(i32 22, float %2045)  ; Frc(value)
  %2054 = call float @dx.op.unary.f32(i32 22, float %2046)  ; Frc(value)
  %2055 = call float @dx.op.unary.f32(i32 22, float %2047)  ; Frc(value)
  %2056 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2052, %dx.types.Handle %32, float %2053, float %2054, float %2055, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2057 = extractvalue %dx.types.ResRet.f32 %2056, 0
  %2058 = extractvalue %dx.types.ResRet.f32 %2056, 1
  %2059 = extractvalue %dx.types.ResRet.f32 %2056, 2
  %2060 = fmul fast float %2057, 1.023000e+03
  %2061 = fmul fast float %2058, 1.023000e+03
  %2062 = fmul fast float %2059, 1.023000e+03
  %2063 = fadd fast float %2060, 5.000000e-01
  %2064 = fadd fast float %2061, 5.000000e-01
  %2065 = fadd fast float %2062, 5.000000e-01
  %2066 = call float @dx.op.unary.f32(i32 27, float %2063)  ; Round_ni(value)
  %2067 = call float @dx.op.unary.f32(i32 27, float %2064)  ; Round_ni(value)
  %2068 = call float @dx.op.unary.f32(i32 27, float %2065)  ; Round_ni(value)
  %2069 = fsub fast float %2036, %2039
  %2070 = fsub fast float %2037, %2040
  %2071 = fsub fast float %2038, %2041
  %2072 = fmul fast float %2069, 7.500000e-01
  %2073 = fmul fast float %2070, 7.500000e-01
  %2074 = fmul fast float %2071, 7.500000e-01
  %2075 = fadd fast float %2039, 1.250000e-01
  %2076 = fadd fast float %2075, %2072
  %2077 = fadd fast float %2076, %2066
  %2078 = fadd fast float %2040, 1.250000e-01
  %2079 = fadd fast float %2078, %2073
  %2080 = fadd fast float %2079, %2067
  %2081 = fadd fast float %2041, 1.250000e-01
  %2082 = fadd fast float %2081, %2074
  %2083 = fadd fast float %2082, %2068
  %2084 = fmul fast float %2077, %2027
  %2085 = fmul fast float %2080, %2028
  %2086 = fmul fast float %2083, %2029
  %2087 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2048, i32 undef)  ; BufferLoad(srv,index,wot)
  %2088 = extractvalue %dx.types.ResRet.i32 %2087, 0
  %2089 = add i32 %2088, 0
  %2090 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2089, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2091 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2090, %dx.types.Handle %30, float %2084, float %2085, float %2086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2092 = extractvalue %dx.types.ResRet.f32 %2091, 0
  br label %2093

; <label>:2093                                    ; preds = %2014, %2003
  %2094 = phi float [ %2092, %2014 ], [ -1.000000e+00, %2003 ]
  %2095 = fadd fast float %2094, %2001
  %2096 = call float @dx.op.unary.f32(i32 7, float %2095)  ; Saturate(value)
  br label %2097

; <label>:2097                                    ; preds = %2093, %1991
  %2098 = phi float [ %2096, %2093 ], [ %2001, %1991 ]
  %2099 = fmul fast float %2098, %391
  br label %2100

; <label>:2100                                    ; preds = %2097, %1986
  %2101 = phi float [ %2099, %2097 ], [ %391, %1986 ]
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = and i32 %2103, 256
  %2105 = icmp eq i32 %2104, 0
  br i1 %2105, label %2152, label %2106

; <label>:2106                                    ; preds = %2100
  %2107 = add i32 %37, 432
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = add i32 %2109, 0
  %2111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2110, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2112 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2111, %dx.types.Handle %61, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2113 = extractvalue %dx.types.ResRet.f32 %2112, 0
  %2114 = add i32 %37, 132
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = shl i32 %2116, 4
  %2118 = and i32 %2117, 32752
  %2119 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2118)  ; LegacyF16ToF32(value)
  %2120 = lshr i32 %2116, 7
  %2121 = and i32 %2120, 32752
  %2122 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2121)  ; LegacyF16ToF32(value)
  %2123 = fsub fast float 1.000000e+00, %2101
  %2124 = call float @dx.op.binary.f32(i32 35, float %2123, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2125 = bitcast float %2101 to i32
  %2126 = sitofp i32 %2125 to float
  %2127 = fadd fast float %2126, 0xC1CFBF8940000000
  %2128 = fmul fast float %2122, %2127
  %2129 = fadd fast float %2128, 0x41CFBF8940000000
  %2130 = fptosi float %2129 to i32
  %2131 = bitcast i32 %2130 to float
  %2132 = bitcast float %2124 to i32
  %2133 = sitofp i32 %2132 to float
  %2134 = fadd fast float %2133, 0xC1CFBF8940000000
  %2135 = fmul fast float %2134, %2122
  %2136 = fadd fast float %2135, 0x41CFBF8940000000
  %2137 = fptosi float %2136 to i32
  %2138 = bitcast i32 %2137 to float
  %2139 = fmul fast float %2131, %2119
  %2140 = fmul fast float %2138, %2119
  %2141 = fsub fast float %2124, %2139
  %2142 = fadd fast float %2140, %2124
  %2143 = call float @dx.op.unary.f32(i32 7, float %2141)  ; Saturate(value)
  %2144 = call float @dx.op.unary.f32(i32 7, float %2142)  ; Saturate(value)
  %2145 = fsub fast float %2113, %2143
  %2146 = fsub fast float %2144, %2143
  %2147 = bitcast float %2146 to i32
  %2148 = sub nsw i32 2129859010, %2147
  %2149 = bitcast i32 %2148 to float
  %2150 = fmul fast float %2149, %2145
  %2151 = call float @dx.op.unary.f32(i32 7, float %2150)  ; Saturate(value)
  br label %2152

; <label>:2152                                    ; preds = %2106, %2100
  %2153 = phi float [ %2151, %2106 ], [ %2101, %2100 ]
  %2154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2155 = extractvalue %dx.types.ResRet.i32 %2154, 0
  %2156 = and i32 %2155, 128
  %2157 = icmp eq i32 %2156, 0
  br i1 %2157, label %2174, label %2158

; <label>:2158                                    ; preds = %2152
  %2159 = add i32 %37, 416
  %2160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2159, i32 undef)  ; BufferLoad(srv,index,wot)
  %2161 = extractvalue %dx.types.ResRet.i32 %2160, 0
  %2162 = add i32 %2161, 0
  %2163 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2162, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2164 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2163, %dx.types.Handle %61, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2165 = extractvalue %dx.types.ResRet.f32 %2164, 0
  %2166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2167 = extractvalue %dx.types.ResRet.i32 %2166, 0
  %2168 = and i32 %2167, 524288
  %2169 = icmp ne i32 %2168, 0
  %2170 = fcmp fast ogt float %2165, 0x3FE0101020000000
  %2171 = select i1 %2170, float 1.000000e+00, float 0.000000e+00
  %2172 = select i1 %2169, float %2171, float %2165
  %2173 = fmul fast float %2172, %2153
  br label %2174

; <label>:2174                                    ; preds = %2158, %2152
  %2175 = phi float [ %2173, %2158 ], [ %2153, %2152 ]
  %2176 = fcmp fast ult float %2175, 0x3F70101020000000
  br i1 %2176, label %2806, label %2177

; <label>:2177                                    ; preds = %2174
  %2178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2179 = extractvalue %dx.types.ResRet.i32 %2178, 0
  %2180 = and i32 %2179, 16
  %2181 = icmp eq i32 %2180, 0
  br i1 %2181, label %2380, label %2182

; <label>:2182                                    ; preds = %2177
  %2183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1903, i32 undef)  ; BufferLoad(srv,index,wot)
  %2184 = extractvalue %dx.types.ResRet.i32 %2183, 0
  %2185 = add i32 %37, 368
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = add i32 %2187, 0
  %2189 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2188, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2190 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2189, %dx.types.Handle %60, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2191 = extractvalue %dx.types.ResRet.f32 %2190, 0
  %2192 = extractvalue %dx.types.ResRet.f32 %2190, 1
  %2193 = extractvalue %dx.types.ResRet.f32 %2190, 2
  %2194 = extractvalue %dx.types.ResRet.f32 %2190, 3
  %2195 = and i32 %2184, 255
  %2196 = uitofp i32 %2195 to float
  %2197 = lshr i32 %2184, 8
  %2198 = and i32 %2197, 255
  %2199 = uitofp i32 %2198 to float
  %2200 = fmul fast float %2194, %2196
  %2201 = fadd fast float %2200, %2199
  %2202 = fmul fast float %2201, 0x3F70101000000000
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = and i32 %2204, 512
  %2206 = icmp eq i32 %2205, 0
  br i1 %2206, label %2215, label %2207

; <label>:2207                                    ; preds = %2182
  %2208 = add i32 %37, 448
  %2209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2208, i32 undef)  ; BufferLoad(srv,index,wot)
  %2210 = extractvalue %dx.types.ResRet.i32 %2209, 0
  %2211 = add i32 %2210, 0
  %2212 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2211, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2213 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2212, %dx.types.Handle %61, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2214 = extractvalue %dx.types.ResRet.f32 %2213, 0
  br label %2215

; <label>:2215                                    ; preds = %2207, %2182
  %2216 = phi float [ %2214, %2207 ], [ 1.000000e+00, %2182 ]
  %2217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2218 = extractvalue %dx.types.ResRet.i32 %2217, 0
  %2219 = and i32 %2218, 33554432
  %2220 = icmp eq i32 %2219, 0
  br i1 %2220, label %2327, label %2221

; <label>:2221                                    ; preds = %2215
  %2222 = add i32 %37, 256
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2222, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 65535
  %2226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2225)  ; LegacyF16ToF32(value)
  %2227 = lshr i32 %2224, 16
  %2228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2227)  ; LegacyF16ToF32(value)
  %2229 = add i32 %37, 260
  %2230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2229, i32 undef)  ; BufferLoad(srv,index,wot)
  %2231 = extractvalue %dx.types.ResRet.i32 %2230, 0
  %2232 = and i32 %2231, 65535
  %2233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2232)  ; LegacyF16ToF32(value)
  %2234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %2235 = extractvalue %dx.types.ResRet.i32 %2234, 0
  %2236 = lshr i32 %2235, 24
  %2237 = uitofp i32 %2236 to float
  %2238 = fmul fast float %2237, 0x3F70101020000000
  %2239 = and i32 %2235, 255
  %2240 = uitofp i32 %2239 to float
  %2241 = fmul fast float %2240, 0x3F70101020000000
  %2242 = lshr i32 %2235, 8
  %2243 = and i32 %2242, 255
  %2244 = uitofp i32 %2243 to float
  %2245 = fmul fast float %2244, 0x3F70101020000000
  %2246 = lshr i32 %2235, 16
  %2247 = and i32 %2246, 255
  %2248 = uitofp i32 %2247 to float
  %2249 = fmul fast float %2248, 0x3F70101020000000
  %2250 = add i32 %37, 252
  %2251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2250, i32 undef)  ; BufferLoad(srv,index,wot)
  %2252 = extractvalue %dx.types.ResRet.i32 %2251, 0
  %2253 = lshr i32 %2252, 24
  %2254 = uitofp i32 %2253 to float
  %2255 = fmul fast float %2254, 0x3F70101020000000
  %2256 = and i32 %2252, 255
  %2257 = uitofp i32 %2256 to float
  %2258 = fmul fast float %2257, 0x3F70101020000000
  %2259 = lshr i32 %2252, 8
  %2260 = and i32 %2259, 255
  %2261 = uitofp i32 %2260 to float
  %2262 = fmul fast float %2261, 0x3F70101020000000
  %2263 = lshr i32 %2252, 16
  %2264 = and i32 %2263, 255
  %2265 = uitofp i32 %2264 to float
  %2266 = fmul fast float %2265, 0x3F70101020000000
  %2267 = bitcast float %2191 to i32
  %2268 = ashr i32 %2267, 1
  %2269 = sub nsw i32 1597463174, %2268
  %2270 = bitcast i32 %2269 to float
  %2271 = fmul fast float %2191, 5.000000e-01
  %2272 = fmul fast float %2270, %2270
  %2273 = fmul fast float %2272, %2271
  %2274 = fsub fast float 1.500000e+00, %2273
  %2275 = fmul fast float %2270, %2191
  %2276 = fmul fast float %2275, %2274
  %2277 = bitcast float %2192 to i32
  %2278 = ashr i32 %2277, 1
  %2279 = sub nsw i32 1597463174, %2278
  %2280 = bitcast i32 %2279 to float
  %2281 = fmul fast float %2192, 5.000000e-01
  %2282 = fmul fast float %2280, %2280
  %2283 = fmul fast float %2282, %2281
  %2284 = fsub fast float 1.500000e+00, %2283
  %2285 = fmul fast float %2280, %2192
  %2286 = fmul fast float %2285, %2284
  %2287 = bitcast float %2193 to i32
  %2288 = ashr i32 %2287, 1
  %2289 = sub nsw i32 1597463174, %2288
  %2290 = bitcast i32 %2289 to float
  %2291 = fmul fast float %2193, 5.000000e-01
  %2292 = fmul fast float %2290, %2290
  %2293 = fmul fast float %2292, %2291
  %2294 = fsub fast float 1.500000e+00, %2293
  %2295 = fmul fast float %2290, %2193
  %2296 = fmul fast float %2295, %2294
  %2297 = fsub fast float %2276, %2258
  %2298 = fsub fast float %2286, %2262
  %2299 = fsub fast float %2296, %2266
  %2300 = fmul fast float %2297, %2226
  %2301 = fmul fast float %2298, %2228
  %2302 = fmul fast float %2299, %2233
  %2303 = fadd fast float %2300, %2241
  %2304 = fadd fast float %2301, %2245
  %2305 = fadd fast float %2302, %2249
  %2306 = call float @dx.op.unary.f32(i32 7, float %2303)  ; Saturate(value)
  %2307 = call float @dx.op.unary.f32(i32 7, float %2304)  ; Saturate(value)
  %2308 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2309 = fmul fast float %2306, %2306
  %2310 = fmul fast float %2307, %2307
  %2311 = fmul fast float %2308, %2308
  %2312 = fsub fast float %2309, %2191
  %2313 = fsub fast float %2310, %2192
  %2314 = fsub fast float %2311, %2193
  %2315 = fmul fast float %2312, %2216
  %2316 = fmul fast float %2313, %2216
  %2317 = fmul fast float %2314, %2216
  %2318 = fadd fast float %2315, %2191
  %2319 = fadd fast float %2316, %2192
  %2320 = fadd fast float %2317, %2193
  %2321 = fadd fast float %2238, %2202
  %2322 = fsub fast float %2321, %2255
  %2323 = call float @dx.op.unary.f32(i32 7, float %2322)  ; Saturate(value)
  %2324 = fsub fast float %2323, %2202
  %2325 = fmul fast float %2324, %2216
  %2326 = fadd fast float %2325, %2202
  br label %2380

; <label>:2327                                    ; preds = %2215
  %2328 = and i32 %2218, 134217728
  %2329 = icmp eq i32 %2328, 0
  br i1 %2329, label %2364, label %2330

; <label>:2330                                    ; preds = %2327
  %2331 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %2332 = call float @dx.op.unary.f32(i32 24, float %273)  ; Sqrt(value)
  %2333 = call float @dx.op.unary.f32(i32 24, float %277)  ; Sqrt(value)
  %2334 = fadd fast float %2331, -5.000000e-01
  %2335 = fadd fast float %2332, -5.000000e-01
  %2336 = fadd fast float %2333, -5.000000e-01
  %2337 = fmul fast float %2334, %2216
  %2338 = fmul fast float %2335, %2216
  %2339 = fmul fast float %2336, %2216
  %2340 = fadd fast float %2337, 5.000000e-01
  %2341 = fadd fast float %2338, 5.000000e-01
  %2342 = fadd fast float %2339, 5.000000e-01
  %2343 = call float @dx.op.unary.f32(i32 24, float %2191)  ; Sqrt(value)
  %2344 = call float @dx.op.unary.f32(i32 24, float %2192)  ; Sqrt(value)
  %2345 = call float @dx.op.unary.f32(i32 24, float %2193)  ; Sqrt(value)
  %2346 = fmul fast float %2340, 2.000000e+00
  %2347 = fsub fast float 1.000000e+00, %2346
  %2348 = fmul fast float %2347, %2343
  %2349 = fadd fast float %2348, %2346
  %2350 = fmul fast float %2349, %2343
  %2351 = fmul fast float %2341, 2.000000e+00
  %2352 = fsub fast float 1.000000e+00, %2351
  %2353 = fmul fast float %2352, %2344
  %2354 = fadd fast float %2353, %2351
  %2355 = fmul fast float %2354, %2344
  %2356 = fmul fast float %2342, 2.000000e+00
  %2357 = fsub fast float 1.000000e+00, %2356
  %2358 = fmul fast float %2357, %2345
  %2359 = fadd fast float %2358, %2356
  %2360 = fmul fast float %2359, %2345
  %2361 = fmul fast float %2350, %2350
  %2362 = fmul fast float %2355, %2355
  %2363 = fmul fast float %2360, %2360
  br label %2380

; <label>:2364                                    ; preds = %2327
  %2365 = fmul fast float %269, %269
  %2366 = fmul fast float %273, %273
  %2367 = fmul fast float %277, %277
  %2368 = fadd fast float %2365, -1.000000e+00
  %2369 = fadd fast float %2366, -1.000000e+00
  %2370 = fadd fast float %2367, -1.000000e+00
  %2371 = fmul fast float %2216, %2368
  %2372 = fmul fast float %2216, %2369
  %2373 = fmul fast float %2216, %2370
  %2374 = fadd fast float %2371, 1.000000e+00
  %2375 = fadd fast float %2372, 1.000000e+00
  %2376 = fadd fast float %2373, 1.000000e+00
  %2377 = fmul fast float %2374, %2191
  %2378 = fmul fast float %2375, %2192
  %2379 = fmul fast float %2376, %2193
  br label %2380

; <label>:2380                                    ; preds = %2364, %2330, %2221, %2177
  %2381 = phi float [ %2326, %2221 ], [ %2202, %2330 ], [ %2202, %2364 ], [ 0x3FA23C0BE0000000, %2177 ]
  %2382 = phi float [ %2318, %2221 ], [ %2361, %2330 ], [ %2377, %2364 ], [ 1.000000e+00, %2177 ]
  %2383 = phi float [ %2319, %2221 ], [ %2362, %2330 ], [ %2378, %2364 ], [ 1.000000e+00, %2177 ]
  %2384 = phi float [ %2320, %2221 ], [ %2363, %2330 ], [ %2379, %2364 ], [ 1.000000e+00, %2177 ]
  %2385 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2386 = extractvalue %dx.types.CBufRet.i32 %2385, 1
  %2387 = and i32 %2386, 1
  %2388 = icmp ne i32 %2387, 0
  %2389 = add i32 %37, 356
  %2390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.i32 %2390, 0
  %2392 = and i32 %2391, 32
  %2393 = icmp ne i32 %2392, 0
  %2394 = and i1 %2388, %2393
  %2395 = select i1 %2394, float 1.000000e+00, float %2382
  %2396 = select i1 %2394, float 0x3FD3333340000000, float %2383
  %2397 = select i1 %2394, float 0x3FD3333340000000, float %2384
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = and i32 %2399, 32
  %2401 = icmp eq i32 %2400, 0
  br i1 %2401, label %2474, label %2402

; <label>:2402                                    ; preds = %2380
  %2403 = add i32 %37, 124
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = add i32 %37, 384
  %2407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2406, i32 undef)  ; BufferLoad(srv,index,wot)
  %2408 = extractvalue %dx.types.ResRet.i32 %2407, 0
  %2409 = add i32 %2408, 0
  %2410 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2409, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2411 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2410, %dx.types.Handle %60, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2412 = extractvalue %dx.types.ResRet.f32 %2411, 0
  %2413 = extractvalue %dx.types.ResRet.f32 %2411, 1
  %2414 = extractvalue %dx.types.ResRet.f32 %2411, 2
  %2415 = extractvalue %dx.types.ResRet.f32 %2411, 3
  %2416 = and i32 %2405, 255
  %2417 = uitofp i32 %2416 to float
  %2418 = lshr i32 %2405, 8
  %2419 = and i32 %2418, 255
  %2420 = uitofp i32 %2419 to float
  %2421 = lshr i32 %2405, 16
  %2422 = and i32 %2421, 255
  %2423 = uitofp i32 %2422 to float
  %2424 = fmul fast float %2423, 0x3F70101000000000
  %2425 = fmul fast float %2412, %2417
  %2426 = fadd fast float %2425, %2420
  %2427 = fmul fast float %2426, 0x3F70101000000000
  %2428 = fadd fast float %2413, -5.000000e-01
  %2429 = fadd fast float %2415, -5.000000e-01
  %2430 = fmul fast float %2428, %2424
  %2431 = fmul fast float %2429, %2424
  %2432 = fadd fast float %2430, 5.000000e-01
  %2433 = fadd fast float %2431, 5.000000e-01
  %2434 = fmul fast float %2432, 2.000000e+00
  %2435 = fadd fast float %2434, -1.000000e+00
  %2436 = fmul fast float %2433, 2.000000e+00
  %2437 = fadd fast float %2436, -1.000000e+00
  %2438 = fadd fast float %2435, %2437
  %2439 = fmul fast float %2438, 5.000000e-01
  %2440 = fsub fast float %2435, %2437
  %2441 = fmul fast float %2440, 5.000000e-01
  %2442 = call float @dx.op.unary.f32(i32 6, float %2439)  ; FAbs(value)
  %2443 = fsub fast float 1.000000e+00, %2442
  %2444 = call float @dx.op.unary.f32(i32 6, float %2441)  ; FAbs(value)
  %2445 = fsub fast float %2443, %2444
  %2446 = call float @dx.op.dot3.f32(i32 55, float %2439, float %2441, float %2445, float %2439, float %2441, float %2445)  ; Dot3(ax,ay,az,bx,by,bz)
  %2447 = call float @dx.op.unary.f32(i32 25, float %2446)  ; Rsqrt(value)
  %2448 = fmul fast float %2439, %2447
  %2449 = fmul fast float %2441, %2447
  %2450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2451 = extractvalue %dx.types.ResRet.i32 %2450, 0
  %2452 = and i32 %2451, 67108864
  %2453 = icmp eq i32 %2452, 0
  br i1 %2453, label %2470, label %2454

; <label>:2454                                    ; preds = %2402
  %2455 = add i32 %37, 312
  %2456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2455, i32 undef)  ; BufferLoad(srv,index,wot)
  %2457 = extractvalue %dx.types.ResRet.i32 %2456, 0
  %2458 = and i32 %2457, 65535
  %2459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2458)  ; LegacyF16ToF32(value)
  %2460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %2461 = extractvalue %dx.types.ResRet.i32 %2460, 0
  %2462 = and i32 %2461, 65535
  %2463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2462)  ; LegacyF16ToF32(value)
  %2464 = lshr i32 %2457, 16
  %2465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2464)  ; LegacyF16ToF32(value)
  %2466 = fsub fast float %2427, %2465
  %2467 = fmul fast float %2466, %2459
  %2468 = fadd fast float %2467, %2463
  %2469 = call float @dx.op.unary.f32(i32 7, float %2468)  ; Saturate(value)
  br label %2470

; <label>:2470                                    ; preds = %2454, %2402
  %2471 = phi float [ %2469, %2454 ], [ %2427, %2402 ]
  %2472 = call float @dx.op.dot2.f32(i32 54, float %2448, float %2449, float %1891, float %1892)  ; Dot2(ax,ay,bx,by)
  %2473 = call float @dx.op.dot2.f32(i32 54, float %2448, float %2449, float %1893, float %1894)  ; Dot2(ax,ay,bx,by)
  br label %2474

; <label>:2474                                    ; preds = %2470, %2380
  %2475 = phi float [ %2471, %2470 ], [ 0x3FD6666660000000, %2380 ]
  %2476 = phi float [ %2472, %2470 ], [ 0.000000e+00, %2380 ]
  %2477 = phi float [ %2473, %2470 ], [ 0.000000e+00, %2380 ]
  %2478 = phi float [ %2414, %2470 ], [ 1.000000e+00, %2380 ]
  %2479 = add i32 %37, 192
  %2480 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2481 = extractvalue %dx.types.ResRet.i32 %2480, 0
  %2482 = lshr i32 %2481, 22
  %2483 = shl nuw nsw i32 %2482, 5
  %2484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2483)  ; LegacyF16ToF32(value)
  %2485 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2486 = extractvalue %dx.types.ResRet.i32 %2485, 0
  %2487 = and i32 %2486, 64
  %2488 = icmp eq i32 %2487, 0
  br i1 %2488, label %2522, label %2489

; <label>:2489                                    ; preds = %2474
  %2490 = add i32 %37, 400
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = add i32 %2492, 0
  %2494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2493, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.i32 %2495, 0
  %2497 = and i32 %2496, 131072
  %2498 = icmp eq i32 %2497, 0
  %2499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2494, %dx.types.Handle %60, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2500 = extractvalue %dx.types.ResRet.f32 %2499, 0
  %2501 = extractvalue %dx.types.ResRet.f32 %2499, 1
  %2502 = extractvalue %dx.types.ResRet.f32 %2499, 2
  %2503 = fmul fast float %2500, %257
  %2504 = fmul fast float %2501, %260
  %2505 = fmul fast float %2502, %263
  br i1 %2498, label %2512, label %2506

; <label>:2506                                    ; preds = %2489
  %2507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2508 = extractvalue %dx.types.CBufRet.f32 %2507, 0
  %2509 = fmul fast float %2508, %2503
  %2510 = fmul fast float %2508, %2504
  %2511 = fmul fast float %2508, %2505
  br label %2512

; <label>:2512                                    ; preds = %2506, %2489
  %2513 = phi float [ %2509, %2506 ], [ %2503, %2489 ]
  %2514 = phi float [ %2510, %2506 ], [ %2504, %2489 ]
  %2515 = phi float [ %2511, %2506 ], [ %2505, %2489 ]
  %2516 = fmul fast float %2513, %2484
  %2517 = select i1 %167, float %2516, float %2513
  %2518 = call float @dx.op.dot3.f32(i32 55, float %2517, float %2514, float %2515, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2519 = select i1 %167, float 0.000000e+00, float %2513
  %2520 = select i1 %167, float %2518, float %2514
  %2521 = select i1 %167, float 0.000000e+00, float %2515
  br label %2522

; <label>:2522                                    ; preds = %2512, %2474
  %2523 = phi float [ %2519, %2512 ], [ 0.000000e+00, %2474 ]
  %2524 = phi float [ %2520, %2512 ], [ 0.000000e+00, %2474 ]
  %2525 = phi float [ %2521, %2512 ], [ 0.000000e+00, %2474 ]
  %2526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2527 = extractvalue %dx.types.ResRet.i32 %2526, 0
  %2528 = and i32 %2527, 10240
  %2529 = icmp eq i32 %2528, 0
  br i1 %2529, label %2574, label %2530

; <label>:2530                                    ; preds = %2522
  %2531 = add i32 %37, 464
  %2532 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2531, i32 undef)  ; BufferLoad(srv,index,wot)
  %2533 = extractvalue %dx.types.ResRet.i32 %2532, 0
  %2534 = add i32 %2533, 0
  %2535 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2534, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2536 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2535, %dx.types.Handle %61, float %1987, float %1988, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2537 = extractvalue %dx.types.ResRet.f32 %2536, 1
  %2538 = extractvalue %dx.types.ResRet.f32 %2536, 3
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = and i32 %2540, 1048576
  %2542 = icmp ne i32 %2541, 0
  %2543 = and i32 %2540, 8192
  %2544 = icmp eq i32 %2543, 0
  br i1 %2544, label %2560, label %2545

; <label>:2545                                    ; preds = %2530
  %2546 = extractvalue %dx.types.ResRet.f32 %2536, 2
  %2547 = select i1 %2542, float %2546, float %2537
  %2548 = extractvalue %dx.types.ResRet.f32 %2536, 0
  %2549 = select i1 %2542, float %2548, float %2537
  %2550 = add i32 %37, 128
  %2551 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2550, i32 undef)  ; BufferLoad(srv,index,wot)
  %2552 = extractvalue %dx.types.ResRet.i32 %2551, 0
  %2553 = lshr i32 %2552, 16
  %2554 = and i32 %2553, 255
  %2555 = uitofp i32 %2554 to float
  %2556 = fmul fast float %2555, 0x3F80101020000000
  %2557 = fmul fast float %2556, %2549
  %2558 = fmul fast float %2556, %2537
  %2559 = fmul fast float %2556, %2547
  br label %2560

; <label>:2560                                    ; preds = %2545, %2530
  %2561 = phi float [ %2557, %2545 ], [ 0.000000e+00, %2530 ]
  %2562 = phi float [ %2558, %2545 ], [ 0.000000e+00, %2530 ]
  %2563 = phi float [ %2559, %2545 ], [ 0.000000e+00, %2530 ]
  %2564 = and i32 %2540, 2048
  %2565 = icmp eq i32 %2564, 0
  br i1 %2565, label %2574, label %2566

; <label>:2566                                    ; preds = %2560
  %2567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2479, i32 undef)  ; BufferLoad(srv,index,wot)
  %2568 = extractvalue %dx.types.ResRet.i32 %2567, 0
  %2569 = shl i32 %2568, 4
  %2570 = and i32 %2569, 32752
  %2571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2570)  ; LegacyF16ToF32(value)
  %2572 = fmul fast float %2571, %2538
  %2573 = call float @dx.op.binary.f32(i32 35, float %2572, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2574

; <label>:2574                                    ; preds = %2566, %2560, %2522
  %2575 = phi float [ %2561, %2566 ], [ %2561, %2560 ], [ 0.000000e+00, %2522 ]
  %2576 = phi float [ %2562, %2566 ], [ %2562, %2560 ], [ 0.000000e+00, %2522 ]
  %2577 = phi float [ %2563, %2566 ], [ %2563, %2560 ], [ 0.000000e+00, %2522 ]
  %2578 = phi float [ %2573, %2566 ], [ 0x3F70101020000000, %2560 ], [ 0x3F70101020000000, %2522 ]
  %2579 = add i32 %37, 128
  %2580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2579, i32 undef)  ; BufferLoad(srv,index,wot)
  %2581 = extractvalue %dx.types.ResRet.i32 %2580, 0
  %2582 = and i32 %2581, 255
  %2583 = uitofp i32 %2582 to float
  %2584 = lshr i32 %2581, 8
  %2585 = and i32 %2584, 255
  %2586 = uitofp i32 %2585 to float
  %2587 = call float @dx.op.dot3.f32(i32 55, float %2395, float %2396, float %2397, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2588 = fmul fast float %2586, %2587
  %2589 = fadd fast float %2588, %2583
  %2590 = fmul fast float %2589, 0x3F70101020000000
  %2591 = call float @dx.op.unary.f32(i32 7, float %2590)  ; Saturate(value)
  br i1 %1879, label %2592, label %2600

; <label>:2592                                    ; preds = %2574
  %2593 = fsub fast float 1.000000e+00, %2175
  %2594 = fmul fast float %2593, %1864
  %2595 = fmul fast float %2593, %1865
  %2596 = fmul fast float %2593, %1866
  %2597 = fmul fast float %2593, %1870
  %2598 = fmul fast float %2593, %1871
  %2599 = fmul fast float %2593, %1872
  br label %2600

; <label>:2600                                    ; preds = %2592, %2574
  %2601 = phi float [ %2594, %2592 ], [ %1864, %2574 ]
  %2602 = phi float [ %2595, %2592 ], [ %1865, %2574 ]
  %2603 = phi float [ %2596, %2592 ], [ %1866, %2574 ]
  %2604 = phi float [ %2597, %2592 ], [ %1870, %2574 ]
  %2605 = phi float [ %2598, %2592 ], [ %1871, %2574 ]
  %2606 = phi float [ %2599, %2592 ], [ %1872, %2574 ]
  %2607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %1880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2608 = extractvalue %dx.types.ResRet.i32 %2607, 0
  %2609 = and i32 %2608, 3
  %2610 = icmp eq i32 %2609, 3
  br i1 %2610, label %2689, label %2611

; <label>:2611                                    ; preds = %2600
  %2612 = and i32 %2608, 16
  %2613 = icmp ne i32 %2612, 0
  %2614 = select i1 %2613, float %2175, float 0.000000e+00
  %2615 = icmp eq i32 %2609, 0
  br i1 %2615, label %2616, label %2644

; <label>:2616                                    ; preds = %2611
  %2617 = and i32 %2608, 64
  %2618 = icmp ne i32 %2617, 0
  %2619 = select i1 %2618, float %2175, float 0.000000e+00
  %2620 = fsub fast float %2395, %2601
  %2621 = fsub fast float %2396, %2602
  %2622 = fsub fast float %2397, %2603
  %2623 = fmul fast float %2614, %2620
  %2624 = fmul fast float %2614, %2621
  %2625 = fmul fast float %2614, %2622
  %2626 = fadd fast float %2623, %2601
  %2627 = fadd fast float %2624, %2602
  %2628 = fadd fast float %2625, %2603
  %2629 = fsub fast float %2381, %1873
  %2630 = fmul fast float %2614, %2629
  %2631 = fadd fast float %2630, %1873
  %2632 = fsub fast float %2523, %2604
  %2633 = fsub fast float %2524, %2605
  %2634 = fsub fast float %2525, %2606
  %2635 = fmul fast float %2619, %2632
  %2636 = fmul fast float %2619, %2633
  %2637 = fmul fast float %2619, %2634
  %2638 = fadd fast float %2635, %2604
  %2639 = fadd fast float %2636, %2605
  %2640 = fadd fast float %2637, %2606
  %2641 = fsub fast float %2591, %1877
  %2642 = fmul fast float %2614, %2641
  %2643 = fadd fast float %2642, %1877
  br label %2689

; <label>:2644                                    ; preds = %2611
  %2645 = icmp eq i32 %2609, 1
  br i1 %2645, label %2646, label %2659

; <label>:2646                                    ; preds = %2644
  %2647 = fadd fast float %2395, -1.000000e+00
  %2648 = fadd fast float %2396, -1.000000e+00
  %2649 = fadd fast float %2397, -1.000000e+00
  %2650 = fmul fast float %2614, %2647
  %2651 = fmul fast float %2614, %2648
  %2652 = fmul fast float %2614, %2649
  %2653 = fadd fast float %2650, 1.000000e+00
  %2654 = fadd fast float %2651, 1.000000e+00
  %2655 = fadd fast float %2652, 1.000000e+00
  %2656 = fmul fast float %2653, %2601
  %2657 = fmul fast float %2654, %2602
  %2658 = fmul fast float %2655, %2603
  br label %2689

; <label>:2659                                    ; preds = %2644
  %2660 = icmp eq i32 %2609, 2
  br i1 %2660, label %2661, label %2689

; <label>:2661                                    ; preds = %2659
  %2662 = call float @dx.op.unary.f32(i32 24, float %2395)  ; Sqrt(value)
  %2663 = call float @dx.op.unary.f32(i32 24, float %2396)  ; Sqrt(value)
  %2664 = call float @dx.op.unary.f32(i32 24, float %2397)  ; Sqrt(value)
  %2665 = fadd fast float %2662, -5.000000e-01
  %2666 = fadd fast float %2663, -5.000000e-01
  %2667 = fadd fast float %2664, -5.000000e-01
  %2668 = fmul fast float %2665, %2614
  %2669 = fmul fast float %2666, %2614
  %2670 = fmul fast float %2667, %2614
  %2671 = fadd fast float %2668, 5.000000e-01
  %2672 = fadd fast float %2669, 5.000000e-01
  %2673 = fadd fast float %2670, 5.000000e-01
  %2674 = fmul fast float %2671, 2.000000e+00
  %2675 = fsub fast float 1.000000e+00, %2674
  %2676 = fmul fast float %2675, %2601
  %2677 = fadd fast float %2676, %2674
  %2678 = fmul fast float %2677, %2601
  %2679 = fmul fast float %2672, 2.000000e+00
  %2680 = fsub fast float 1.000000e+00, %2679
  %2681 = fmul fast float %2680, %2602
  %2682 = fadd fast float %2681, %2679
  %2683 = fmul fast float %2682, %2602
  %2684 = fmul fast float %2673, 2.000000e+00
  %2685 = fsub fast float 1.000000e+00, %2684
  %2686 = fmul fast float %2685, %2603
  %2687 = fadd fast float %2686, %2684
  %2688 = fmul fast float %2687, %2603
  br label %2689

; <label>:2689                                    ; preds = %2661, %2659, %2646, %2616, %2600
  %2690 = phi float [ %2601, %2600 ], [ %2678, %2661 ], [ %2601, %2659 ], [ %2656, %2646 ], [ %2626, %2616 ]
  %2691 = phi float [ %2602, %2600 ], [ %2683, %2661 ], [ %2602, %2659 ], [ %2657, %2646 ], [ %2627, %2616 ]
  %2692 = phi float [ %2603, %2600 ], [ %2688, %2661 ], [ %2603, %2659 ], [ %2658, %2646 ], [ %2628, %2616 ]
  %2693 = phi float [ %2604, %2600 ], [ %2604, %2661 ], [ %2604, %2659 ], [ %2604, %2646 ], [ %2638, %2616 ]
  %2694 = phi float [ %2605, %2600 ], [ %2605, %2661 ], [ %2605, %2659 ], [ %2605, %2646 ], [ %2639, %2616 ]
  %2695 = phi float [ %2606, %2600 ], [ %2606, %2661 ], [ %2606, %2659 ], [ %2606, %2646 ], [ %2640, %2616 ]
  %2696 = phi float [ %1873, %2600 ], [ %1873, %2661 ], [ %1873, %2659 ], [ %1873, %2646 ], [ %2631, %2616 ]
  %2697 = phi float [ %1877, %2600 ], [ %1877, %2661 ], [ %1877, %2659 ], [ %1877, %2646 ], [ %2643, %2616 ]
  %2698 = and i32 %2608, 12
  %2699 = icmp eq i32 %2698, 12
  br i1 %2699, label %2806, label %2700

; <label>:2700                                    ; preds = %2689
  %2701 = and i32 %2608, 2097184
  %2702 = icmp eq i32 %2701, 2097184
  %2703 = select i1 %2702, float %2175, float 0.000000e+00
  %2704 = and i32 %2608, 4194336
  %2705 = icmp eq i32 %2704, 4194336
  %2706 = select i1 %2705, float %2175, float 0.000000e+00
  %2707 = and i32 %2608, 8388640
  %2708 = icmp eq i32 %2707, 8388640
  %2709 = select i1 %2708, float %2175, float 0.000000e+00
  %2710 = and i32 %2608, 2048
  %2711 = icmp ne i32 %2710, 0
  %2712 = select i1 %2711, float %2175, float 0.000000e+00
  %2713 = and i32 %2608, 8192
  %2714 = icmp ne i32 %2713, 0
  %2715 = select i1 %2714, float %2175, float 0.000000e+00
  %2716 = icmp eq i32 %2698, 0
  br i1 %2716, label %2717, label %2742

; <label>:2717                                    ; preds = %2700
  %2718 = fsub fast float %2476, %1862
  %2719 = fsub fast float %2477, %1863
  %2720 = fmul fast float %2703, %2718
  %2721 = fmul fast float %2703, %2719
  %2722 = fadd fast float %2720, %1862
  %2723 = fadd fast float %2721, %1863
  %2724 = fsub fast float %2478, %1875
  %2725 = fmul fast float %2706, %2724
  %2726 = fadd fast float %2725, %1875
  %2727 = fsub fast float %2475, %1874
  %2728 = fmul fast float %2709, %2727
  %2729 = fadd fast float %2728, %1874
  %2730 = fsub fast float %2578, %1876
  %2731 = fmul fast float %2712, %2730
  %2732 = fadd fast float %2731, %1876
  %2733 = fsub fast float %2575, %1867
  %2734 = fsub fast float %2576, %1868
  %2735 = fsub fast float %2577, %1869
  %2736 = fmul fast float %2715, %2733
  %2737 = fmul fast float %2715, %2734
  %2738 = fmul fast float %2715, %2735
  %2739 = fadd fast float %2736, %1867
  %2740 = fadd fast float %2737, %1868
  %2741 = fadd fast float %2738, %1869
  br label %2806

; <label>:2742                                    ; preds = %2700
  %2743 = icmp eq i32 %2698, 4
  br i1 %2743, label %2744, label %2784

; <label>:2744                                    ; preds = %2742
  %2745 = fmul fast float %2703, %2476
  %2746 = fmul fast float %2703, %2477
  %2747 = fadd fast float %2745, %1862
  %2748 = fadd fast float %2746, %1863
  %2749 = call float @dx.op.binary.f32(i32 36, float %1875, float %2478)  ; FMin(a,b)
  %2750 = fsub fast float %2749, %1875
  %2751 = fmul fast float %2750, %2706
  %2752 = fadd fast float %2751, %1875
  %2753 = fadd fast float %2475, %1874
  %2754 = fmul fast float %2753, 0x3FF337FAE0000000
  %2755 = fmul fast float %1874, %1874
  %2756 = fmul fast float %2475, %2475
  %2757 = fadd fast float %2756, %2755
  %2758 = fmul fast float %2757, 0x3FE5152B00000000
  %2759 = fmul fast float %1874, 0xBFCC1F85E0000000
  %2760 = fmul fast float %2759, %2475
  %2761 = fadd fast float %2760, 0xBFE1363700000000
  %2762 = fadd fast float %2761, %2754
  %2763 = fsub fast float %2762, %2758
  %2764 = fmul fast float %2753, 0x3FBA6F0D00000000
  %2765 = fmul fast float %2757, 0x3FD0432880000000
  %2766 = fmul fast float %1874, 0xBFEF110800000000
  %2767 = fmul fast float %2766, %2475
  %2768 = fadd fast float %2767, 1.000000e+00
  %2769 = fsub fast float %2768, %2764
  %2770 = fadd fast float %2769, %2765
  %2771 = fdiv fast float %2763, %2770
  %2772 = call float @dx.op.unary.f32(i32 7, float %2771)  ; Saturate(value)
  %2773 = fsub fast float %2772, %1874
  %2774 = fmul fast float %2773, %2709
  %2775 = fadd fast float %2774, %1874
  %2776 = fmul fast float %2712, %2578
  %2777 = fadd fast float %2776, %1876
  %2778 = fmul fast float %2715, %2575
  %2779 = fmul fast float %2715, %2576
  %2780 = fmul fast float %2715, %2577
  %2781 = fadd fast float %2778, %1867
  %2782 = fadd fast float %2779, %1868
  %2783 = fadd fast float %2780, %1869
  br label %2806

; <label>:2784                                    ; preds = %2742
  %2785 = icmp eq i32 %2698, 8
  br i1 %2785, label %2786, label %2806

; <label>:2786                                    ; preds = %2784
  %2787 = fmul fast float %2703, %2476
  %2788 = fmul fast float %2703, %2477
  %2789 = fadd fast float %2787, %1862
  %2790 = fadd fast float %2788, %1863
  %2791 = call float @dx.op.binary.f32(i32 36, float %1875, float %2478)  ; FMin(a,b)
  %2792 = fsub fast float %2791, %1875
  %2793 = fmul fast float %2792, %2706
  %2794 = fadd fast float %2793, %1875
  %2795 = fsub fast float %2475, %1874
  %2796 = fmul fast float %2709, %2795
  %2797 = fadd fast float %2796, %1874
  %2798 = fmul fast float %2712, %2578
  %2799 = fadd fast float %2798, %1876
  %2800 = fmul fast float %2715, %2575
  %2801 = fmul fast float %2715, %2576
  %2802 = fmul fast float %2715, %2577
  %2803 = fadd fast float %2800, %1867
  %2804 = fadd fast float %2801, %1868
  %2805 = fadd fast float %2802, %1869
  br label %2806

; <label>:2806                                    ; preds = %2786, %2784, %2744, %2717, %2689, %2174, %1878, %1861
  %2807 = phi float [ %1862, %2689 ], [ %1862, %2174 ], [ %1862, %1861 ], [ %2789, %2786 ], [ %1862, %2784 ], [ %2747, %2744 ], [ %2722, %2717 ], [ %1862, %1878 ]
  %2808 = phi float [ %1863, %2689 ], [ %1863, %2174 ], [ %1863, %1861 ], [ %2790, %2786 ], [ %1863, %2784 ], [ %2748, %2744 ], [ %2723, %2717 ], [ %1863, %1878 ]
  %2809 = phi float [ %2690, %2689 ], [ %1864, %2174 ], [ %1864, %1861 ], [ %2690, %2786 ], [ %2690, %2784 ], [ %2690, %2744 ], [ %2690, %2717 ], [ %1864, %1878 ]
  %2810 = phi float [ %2691, %2689 ], [ %1865, %2174 ], [ %1865, %1861 ], [ %2691, %2786 ], [ %2691, %2784 ], [ %2691, %2744 ], [ %2691, %2717 ], [ %1865, %1878 ]
  %2811 = phi float [ %2692, %2689 ], [ %1866, %2174 ], [ %1866, %1861 ], [ %2692, %2786 ], [ %2692, %2784 ], [ %2692, %2744 ], [ %2692, %2717 ], [ %1866, %1878 ]
  %2812 = phi float [ %1867, %2689 ], [ %1867, %2174 ], [ %1867, %1861 ], [ %2803, %2786 ], [ %1867, %2784 ], [ %2781, %2744 ], [ %2739, %2717 ], [ %1867, %1878 ]
  %2813 = phi float [ %1868, %2689 ], [ %1868, %2174 ], [ %1868, %1861 ], [ %2804, %2786 ], [ %1868, %2784 ], [ %2782, %2744 ], [ %2740, %2717 ], [ %1868, %1878 ]
  %2814 = phi float [ %1869, %2689 ], [ %1869, %2174 ], [ %1869, %1861 ], [ %2805, %2786 ], [ %1869, %2784 ], [ %2783, %2744 ], [ %2741, %2717 ], [ %1869, %1878 ]
  %2815 = phi float [ %2693, %2689 ], [ %1870, %2174 ], [ %1870, %1861 ], [ %2693, %2786 ], [ %2693, %2784 ], [ %2693, %2744 ], [ %2693, %2717 ], [ %1870, %1878 ]
  %2816 = phi float [ %2694, %2689 ], [ %1871, %2174 ], [ %1871, %1861 ], [ %2694, %2786 ], [ %2694, %2784 ], [ %2694, %2744 ], [ %2694, %2717 ], [ %1871, %1878 ]
  %2817 = phi float [ %2695, %2689 ], [ %1872, %2174 ], [ %1872, %1861 ], [ %2695, %2786 ], [ %2695, %2784 ], [ %2695, %2744 ], [ %2695, %2717 ], [ %1872, %1878 ]
  %2818 = phi float [ %2696, %2689 ], [ %1873, %2174 ], [ %1873, %1861 ], [ %2696, %2786 ], [ %2696, %2784 ], [ %2696, %2744 ], [ %2696, %2717 ], [ %1873, %1878 ]
  %2819 = phi float [ %1874, %2689 ], [ %1874, %2174 ], [ %1874, %1861 ], [ %2797, %2786 ], [ %1874, %2784 ], [ %2775, %2744 ], [ %2729, %2717 ], [ %1874, %1878 ]
  %2820 = phi float [ %1875, %2689 ], [ %1875, %2174 ], [ %1875, %1861 ], [ %2794, %2786 ], [ %1875, %2784 ], [ %2752, %2744 ], [ %2726, %2717 ], [ %1875, %1878 ]
  %2821 = phi float [ %1876, %2689 ], [ %1876, %2174 ], [ %1876, %1861 ], [ %2799, %2786 ], [ %1876, %2784 ], [ %2777, %2744 ], [ %2732, %2717 ], [ %1876, %1878 ]
  %2822 = phi float [ %2697, %2689 ], [ %1877, %2174 ], [ %1877, %1861 ], [ %2697, %2786 ], [ %2697, %2784 ], [ %2697, %2744 ], [ %2697, %2717 ], [ %1877, %1878 ]
  br i1 %344, label %3751, label %2823

; <label>:2823                                    ; preds = %2806
  %2824 = icmp ult i32 %395, 4
  %2825 = add i32 %37, 72
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = add i32 %37, 76
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = or i32 %2830, %2827
  %2832 = icmp eq i32 %2831, 0
  br i1 %2832, label %3751, label %2833

; <label>:2833                                    ; preds = %2823
  %2834 = and i32 %2827, 262144
  %2835 = icmp ne i32 %2834, 0
  %2836 = select i1 %2835, float %39, float 1.000000e+00
  %2837 = select i1 %2835, float %40, float 0.000000e+00
  %2838 = select i1 %2835, float %41, float 0.000000e+00
  %2839 = select i1 %2835, float %42, float 1.000000e+00
  %2840 = select i1 %2835, float %43, float %52
  %2841 = select i1 %2835, float %44, float %53
  %2842 = add i32 %37, 332
  %2843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.i32 %2843, 0
  %2845 = lshr i32 %2844, 16
  %2846 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2845)  ; LegacyF16ToF32(value)
  %2847 = fmul fast float %2846, 0x3F50624DE0000000
  %2848 = add i32 %37, 136
  %2849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %2850 = extractvalue %dx.types.ResRet.i32 %2849, 0
  %2851 = lshr i32 %2850, 16
  %2852 = and i32 %2851, 255
  %2853 = lshr i32 %2850, 24
  %2854 = add i32 %37, 340
  %2855 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2854, i32 undef)  ; BufferLoad(srv,index,wot)
  %2856 = extractvalue %dx.types.ResRet.i32 %2855, 0
  %2857 = and i32 %2856, 65535
  %2858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2857)  ; LegacyF16ToF32(value)
  %2859 = lshr i32 %2856, 16
  %2860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2859)  ; LegacyF16ToF32(value)
  %2861 = add i32 %37, 80
  %2862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 0
  %2864 = lshr i32 %2863, 22
  %2865 = shl nuw nsw i32 %2864, 5
  %2866 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2865)  ; LegacyF16ToF32(value)
  %2867 = shl i32 %2863, 4
  %2868 = and i32 %2867, 32752
  %2869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2868)  ; LegacyF16ToF32(value)
  %2870 = lshr i32 %2863, 7
  %2871 = and i32 %2870, 32752
  %2872 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2871)  ; LegacyF16ToF32(value)
  %2873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2874 = extractvalue %dx.types.CBufRet.f32 %2873, 3
  %2875 = fmul fast float %2874, 1.000000e+03
  %2876 = fmul fast float %334, %2875
  %2877 = call float @dx.op.unary.f32(i32 22, float %2876)  ; Frc(value)
  %2878 = fadd fast float %2877, %324
  %2879 = fmul fast float %335, %2875
  %2880 = call float @dx.op.unary.f32(i32 22, float %2879)  ; Frc(value)
  %2881 = fadd fast float %2880, %326
  %2882 = fmul fast float %2847, %2875
  %2883 = call float @dx.op.unary.f32(i32 22, float %2882)  ; Frc(value)
  %2884 = fmul fast float %2883, 0x401921FB60000000
  %2885 = fadd fast float %2884, %2866
  %2886 = call float @dx.op.unary.f32(i32 13, float %2885)  ; Sin(value)
  %2887 = call float @dx.op.unary.f32(i32 12, float %2885)  ; Cos(value)
  %2888 = fsub fast float -0.000000e+00, %2886
  %2889 = fadd fast float %2840, -5.000000e-01
  %2890 = fadd fast float %2841, -5.000000e-01
  %2891 = fmul fast float %2858, %2889
  %2892 = fmul fast float %2860, %2890
  %2893 = fadd fast float %2891, 5.000000e-01
  %2894 = fadd fast float %2892, 5.000000e-01
  %2895 = fmul fast float %2869, %2893
  %2896 = fmul fast float %2872, %2894
  %2897 = fmul fast float %2887, %2895
  %2898 = call float @dx.op.tertiary.f32(i32 46, float %2888, float %2896, float %2897)  ; FMad(a,b,c)
  %2899 = fmul fast float %2886, %2895
  %2900 = call float @dx.op.tertiary.f32(i32 46, float %2887, float %2896, float %2899)  ; FMad(a,b,c)
  %2901 = fadd fast float %2878, %2898
  %2902 = fadd fast float %2881, %2900
  %2903 = icmp ugt i32 %2852, 1
  %2904 = icmp ugt i32 %2850, 33554431
  %2905 = or i1 %2904, %2903
  br i1 %2905, label %2906, label %2931

; <label>:2906                                    ; preds = %2833
  %2907 = add i32 %37, 276
  %2908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2907, i32 undef)  ; BufferLoad(srv,index,wot)
  %2909 = extractvalue %dx.types.ResRet.i32 %2908, 0
  %2910 = lshr i32 %2909, 16
  %2911 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2910)  ; LegacyF16ToF32(value)
  %2912 = fmul fast float %2874, %2911
  %2913 = call float @dx.op.unary.f32(i32 22, float %2912)  ; Frc(value)
  %2914 = mul nuw nsw i32 %2852, %2853
  %2915 = uitofp i32 %2914 to float
  %2916 = fmul fast float %2913, %2915
  %2917 = call float @dx.op.unary.f32(i32 27, float %2916)  ; Round_ni(value)
  %2918 = fptoui float %2917 to i32
  %2919 = urem i32 %2918, %2852
  %2920 = udiv i32 %2918, %2853
  %2921 = call float @dx.op.unary.f32(i32 22, float %2901)  ; Frc(value)
  %2922 = call float @dx.op.unary.f32(i32 22, float %2902)  ; Frc(value)
  %2923 = uitofp i32 %2919 to float
  %2924 = uitofp i32 %2920 to float
  %2925 = fadd fast float %2921, %2923
  %2926 = fadd fast float %2922, %2924
  %2927 = uitofp i32 %2852 to float
  %2928 = uitofp i32 %2853 to float
  %2929 = fdiv fast float %2925, %2927
  %2930 = fdiv fast float %2926, %2928
  br label %2931

; <label>:2931                                    ; preds = %2906, %2833
  %2932 = phi float [ %2929, %2906 ], [ %2901, %2833 ]
  %2933 = phi float [ %2930, %2906 ], [ %2902, %2833 ]
  %2934 = and i32 %2827, 16777216
  %2935 = icmp eq i32 %2934, 0
  br i1 %2935, label %3045, label %2936

; <label>:2936                                    ; preds = %2931
  %2937 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2938 = extractvalue %dx.types.CBufRet.f32 %2937, 0
  %2939 = extractvalue %dx.types.CBufRet.f32 %2937, 1
  %2940 = extractvalue %dx.types.CBufRet.f32 %2937, 2
  %2941 = fadd fast float %2938, %123
  %2942 = fadd fast float %2939, %124
  %2943 = fadd fast float %2940, %125
  %2944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2945 = extractvalue %dx.types.CBufRet.f32 %2944, 0
  %2946 = call float @dx.op.unary.f32(i32 7, float %2945)  ; Saturate(value)
  %2947 = icmp eq i32 %38, 65535
  br i1 %2947, label %3042, label %2948

; <label>:2948                                    ; preds = %2936
  %2949 = lshr i32 %38, 1
  %2950 = shl i32 %2949, 2
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = and i32 %38, 1
  %2954 = icmp ne i32 %2953, 0
  %2955 = lshr i32 %2952, 16
  %2956 = and i32 %2952, 65535
  %2957 = select i1 %2954, i32 %2955, i32 %2956
  %2958 = icmp eq i32 %2957, 65535
  br i1 %2958, label %3038, label %2959

; <label>:2959                                    ; preds = %2948
  %2960 = mul nuw nsw i32 %2957, 40
  %2961 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.f32 %2961, 0
  %2963 = extractvalue %dx.types.ResRet.f32 %2961, 1
  %2964 = extractvalue %dx.types.ResRet.f32 %2961, 2
  %2965 = add nuw nsw i32 %2960, 12
  %2966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2965, i32 undef)  ; BufferLoad(srv,index,wot)
  %2967 = extractvalue %dx.types.ResRet.f32 %2966, 0
  %2968 = extractvalue %dx.types.ResRet.f32 %2966, 1
  %2969 = extractvalue %dx.types.ResRet.f32 %2966, 2
  %2970 = add nuw nsw i32 %2960, 24
  %2971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2970, i32 undef)  ; BufferLoad(srv,index,wot)
  %2972 = extractvalue %dx.types.ResRet.f32 %2971, 0
  %2973 = extractvalue %dx.types.ResRet.f32 %2971, 1
  %2974 = extractvalue %dx.types.ResRet.f32 %2971, 2
  %2975 = add nuw nsw i32 %2960, 36
  %2976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %18, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.f32 %2976, 0
  %2978 = fsub fast float %2941, %2962
  %2979 = fsub fast float %2942, %2963
  %2980 = fsub fast float %2943, %2964
  %2981 = fmul fast float %2977, %2978
  %2982 = fmul fast float %2977, %2979
  %2983 = fmul fast float %2977, %2980
  %2984 = call float @dx.op.unary.f32(i32 27, float %2981)  ; Round_ni(value)
  %2985 = call float @dx.op.unary.f32(i32 27, float %2982)  ; Round_ni(value)
  %2986 = call float @dx.op.unary.f32(i32 27, float %2983)  ; Round_ni(value)
  %2987 = fadd fast float %2984, 5.000000e-01
  %2988 = fadd fast float %2985, 5.000000e-01
  %2989 = fadd fast float %2986, 5.000000e-01
  %2990 = fmul fast float %2987, %2967
  %2991 = fmul fast float %2988, %2968
  %2992 = fmul fast float %2989, %2969
  %2993 = shl i32 %38, 2
  %2994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %2995 = extractvalue %dx.types.ResRet.i32 %2994, 0
  %2996 = add i32 %2995, 0
  %2997 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2996, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2998 = call float @dx.op.unary.f32(i32 22, float %2990)  ; Frc(value)
  %2999 = call float @dx.op.unary.f32(i32 22, float %2991)  ; Frc(value)
  %3000 = call float @dx.op.unary.f32(i32 22, float %2992)  ; Frc(value)
  %3001 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2997, %dx.types.Handle %32, float %2998, float %2999, float %3000, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3002 = extractvalue %dx.types.ResRet.f32 %3001, 0
  %3003 = extractvalue %dx.types.ResRet.f32 %3001, 1
  %3004 = extractvalue %dx.types.ResRet.f32 %3001, 2
  %3005 = fmul fast float %3002, 1.023000e+03
  %3006 = fmul fast float %3003, 1.023000e+03
  %3007 = fmul fast float %3004, 1.023000e+03
  %3008 = fadd fast float %3005, 5.000000e-01
  %3009 = fadd fast float %3006, 5.000000e-01
  %3010 = fadd fast float %3007, 5.000000e-01
  %3011 = call float @dx.op.unary.f32(i32 27, float %3008)  ; Round_ni(value)
  %3012 = call float @dx.op.unary.f32(i32 27, float %3009)  ; Round_ni(value)
  %3013 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3014 = fsub fast float %2981, %2984
  %3015 = fsub fast float %2982, %2985
  %3016 = fsub fast float %2983, %2986
  %3017 = fmul fast float %3014, 7.500000e-01
  %3018 = fmul fast float %3015, 7.500000e-01
  %3019 = fmul fast float %3016, 7.500000e-01
  %3020 = fadd fast float %2984, 1.250000e-01
  %3021 = fadd fast float %3020, %3017
  %3022 = fadd fast float %3021, %3011
  %3023 = fadd fast float %2985, 1.250000e-01
  %3024 = fadd fast float %3023, %3018
  %3025 = fadd fast float %3024, %3012
  %3026 = fadd fast float %2986, 1.250000e-01
  %3027 = fadd fast float %3026, %3019
  %3028 = fadd fast float %3027, %3013
  %3029 = fmul fast float %3022, %2972
  %3030 = fmul fast float %3025, %2973
  %3031 = fmul fast float %3028, %2974
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %15, i32 %2993, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = add i32 %3033, 0
  %3035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %3034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3036 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3035, %dx.types.Handle %30, float %3029, float %3030, float %3031, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  br label %3038

; <label>:3038                                    ; preds = %2959, %2948
  %3039 = phi float [ %3037, %2959 ], [ -1.000000e+00, %2948 ]
  %3040 = fadd fast float %3039, %2946
  %3041 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  br label %3042

; <label>:3042                                    ; preds = %3038, %2936
  %3043 = phi float [ %3041, %3038 ], [ %2946, %2936 ]
  %3044 = fmul fast float %3043, %390
  br label %3045

; <label>:3045                                    ; preds = %3042, %2931
  %3046 = phi float [ %3044, %3042 ], [ %390, %2931 ]
  %3047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3048 = extractvalue %dx.types.ResRet.i32 %3047, 0
  %3049 = and i32 %3048, 256
  %3050 = icmp eq i32 %3049, 0
  br i1 %3050, label %3097, label %3051

; <label>:3051                                    ; preds = %3045
  %3052 = add i32 %37, 436
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3052, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = add i32 %3054, 0
  %3056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3057 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3056, %dx.types.Handle %61, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3058 = extractvalue %dx.types.ResRet.f32 %3057, 0
  %3059 = add i32 %37, 148
  %3060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3059, i32 undef)  ; BufferLoad(srv,index,wot)
  %3061 = extractvalue %dx.types.ResRet.i32 %3060, 0
  %3062 = shl i32 %3061, 4
  %3063 = and i32 %3062, 32752
  %3064 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3063)  ; LegacyF16ToF32(value)
  %3065 = lshr i32 %3061, 7
  %3066 = and i32 %3065, 32752
  %3067 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3066)  ; LegacyF16ToF32(value)
  %3068 = fsub fast float 1.000000e+00, %3046
  %3069 = call float @dx.op.binary.f32(i32 35, float %3068, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3070 = bitcast float %3046 to i32
  %3071 = sitofp i32 %3070 to float
  %3072 = fadd fast float %3071, 0xC1CFBF8940000000
  %3073 = fmul fast float %3067, %3072
  %3074 = fadd fast float %3073, 0x41CFBF8940000000
  %3075 = fptosi float %3074 to i32
  %3076 = bitcast i32 %3075 to float
  %3077 = bitcast float %3069 to i32
  %3078 = sitofp i32 %3077 to float
  %3079 = fadd fast float %3078, 0xC1CFBF8940000000
  %3080 = fmul fast float %3079, %3067
  %3081 = fadd fast float %3080, 0x41CFBF8940000000
  %3082 = fptosi float %3081 to i32
  %3083 = bitcast i32 %3082 to float
  %3084 = fmul fast float %3076, %3064
  %3085 = fmul fast float %3083, %3064
  %3086 = fsub fast float %3069, %3084
  %3087 = fadd fast float %3085, %3069
  %3088 = call float @dx.op.unary.f32(i32 7, float %3086)  ; Saturate(value)
  %3089 = call float @dx.op.unary.f32(i32 7, float %3087)  ; Saturate(value)
  %3090 = fsub fast float %3058, %3088
  %3091 = fsub fast float %3089, %3088
  %3092 = bitcast float %3091 to i32
  %3093 = sub nsw i32 2129859010, %3092
  %3094 = bitcast i32 %3093 to float
  %3095 = fmul fast float %3094, %3090
  %3096 = call float @dx.op.unary.f32(i32 7, float %3095)  ; Saturate(value)
  br label %3097

; <label>:3097                                    ; preds = %3051, %3045
  %3098 = phi float [ %3096, %3051 ], [ %3046, %3045 ]
  %3099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3100 = extractvalue %dx.types.ResRet.i32 %3099, 0
  %3101 = and i32 %3100, 128
  %3102 = icmp eq i32 %3101, 0
  br i1 %3102, label %3119, label %3103

; <label>:3103                                    ; preds = %3097
  %3104 = add i32 %37, 420
  %3105 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3104, i32 undef)  ; BufferLoad(srv,index,wot)
  %3106 = extractvalue %dx.types.ResRet.i32 %3105, 0
  %3107 = add i32 %3106, 0
  %3108 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3107, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3109 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3108, %dx.types.Handle %61, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3110 = extractvalue %dx.types.ResRet.f32 %3109, 0
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = and i32 %3112, 524288
  %3114 = icmp ne i32 %3113, 0
  %3115 = fcmp fast ogt float %3110, 0x3FE0101020000000
  %3116 = select i1 %3115, float 1.000000e+00, float 0.000000e+00
  %3117 = select i1 %3114, float %3116, float %3110
  %3118 = fmul fast float %3117, %3098
  br label %3119

; <label>:3119                                    ; preds = %3103, %3097
  %3120 = phi float [ %3118, %3103 ], [ %3098, %3097 ]
  %3121 = fcmp fast ult float %3120, 0x3F70101020000000
  br i1 %3121, label %3751, label %3122

; <label>:3122                                    ; preds = %3119
  %3123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3124 = extractvalue %dx.types.ResRet.i32 %3123, 0
  %3125 = and i32 %3124, 16
  %3126 = icmp eq i32 %3125, 0
  br i1 %3126, label %3325, label %3127

; <label>:3127                                    ; preds = %3122
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = add i32 %37, 372
  %3131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3130, i32 undef)  ; BufferLoad(srv,index,wot)
  %3132 = extractvalue %dx.types.ResRet.i32 %3131, 0
  %3133 = add i32 %3132, 0
  %3134 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3133, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3135 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3134, %dx.types.Handle %60, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3136 = extractvalue %dx.types.ResRet.f32 %3135, 0
  %3137 = extractvalue %dx.types.ResRet.f32 %3135, 1
  %3138 = extractvalue %dx.types.ResRet.f32 %3135, 2
  %3139 = extractvalue %dx.types.ResRet.f32 %3135, 3
  %3140 = and i32 %3129, 255
  %3141 = uitofp i32 %3140 to float
  %3142 = lshr i32 %3129, 8
  %3143 = and i32 %3142, 255
  %3144 = uitofp i32 %3143 to float
  %3145 = fmul fast float %3139, %3141
  %3146 = fadd fast float %3145, %3144
  %3147 = fmul fast float %3146, 0x3F70101000000000
  %3148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3149 = extractvalue %dx.types.ResRet.i32 %3148, 0
  %3150 = and i32 %3149, 512
  %3151 = icmp eq i32 %3150, 0
  br i1 %3151, label %3160, label %3152

; <label>:3152                                    ; preds = %3127
  %3153 = add i32 %37, 452
  %3154 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3153, i32 undef)  ; BufferLoad(srv,index,wot)
  %3155 = extractvalue %dx.types.ResRet.i32 %3154, 0
  %3156 = add i32 %3155, 0
  %3157 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3156, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3158 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3157, %dx.types.Handle %61, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3159 = extractvalue %dx.types.ResRet.f32 %3158, 0
  br label %3160

; <label>:3160                                    ; preds = %3152, %3127
  %3161 = phi float [ %3159, %3152 ], [ 1.000000e+00, %3127 ]
  %3162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3163 = extractvalue %dx.types.ResRet.i32 %3162, 0
  %3164 = and i32 %3163, 33554432
  %3165 = icmp eq i32 %3164, 0
  br i1 %3165, label %3272, label %3166

; <label>:3166                                    ; preds = %3160
  %3167 = add i32 %37, 272
  %3168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3167, i32 undef)  ; BufferLoad(srv,index,wot)
  %3169 = extractvalue %dx.types.ResRet.i32 %3168, 0
  %3170 = and i32 %3169, 65535
  %3171 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3170)  ; LegacyF16ToF32(value)
  %3172 = lshr i32 %3169, 16
  %3173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3172)  ; LegacyF16ToF32(value)
  %3174 = add i32 %37, 276
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3174, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = and i32 %3176, 65535
  %3178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3177)  ; LegacyF16ToF32(value)
  %3179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %306, i32 undef)  ; BufferLoad(srv,index,wot)
  %3180 = extractvalue %dx.types.ResRet.i32 %3179, 0
  %3181 = lshr i32 %3180, 24
  %3182 = uitofp i32 %3181 to float
  %3183 = fmul fast float %3182, 0x3F70101020000000
  %3184 = and i32 %3180, 255
  %3185 = uitofp i32 %3184 to float
  %3186 = fmul fast float %3185, 0x3F70101020000000
  %3187 = lshr i32 %3180, 8
  %3188 = and i32 %3187, 255
  %3189 = uitofp i32 %3188 to float
  %3190 = fmul fast float %3189, 0x3F70101020000000
  %3191 = lshr i32 %3180, 16
  %3192 = and i32 %3191, 255
  %3193 = uitofp i32 %3192 to float
  %3194 = fmul fast float %3193, 0x3F70101020000000
  %3195 = add i32 %37, 268
  %3196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3195, i32 undef)  ; BufferLoad(srv,index,wot)
  %3197 = extractvalue %dx.types.ResRet.i32 %3196, 0
  %3198 = lshr i32 %3197, 24
  %3199 = uitofp i32 %3198 to float
  %3200 = fmul fast float %3199, 0x3F70101020000000
  %3201 = and i32 %3197, 255
  %3202 = uitofp i32 %3201 to float
  %3203 = fmul fast float %3202, 0x3F70101020000000
  %3204 = lshr i32 %3197, 8
  %3205 = and i32 %3204, 255
  %3206 = uitofp i32 %3205 to float
  %3207 = fmul fast float %3206, 0x3F70101020000000
  %3208 = lshr i32 %3197, 16
  %3209 = and i32 %3208, 255
  %3210 = uitofp i32 %3209 to float
  %3211 = fmul fast float %3210, 0x3F70101020000000
  %3212 = bitcast float %3136 to i32
  %3213 = ashr i32 %3212, 1
  %3214 = sub nsw i32 1597463174, %3213
  %3215 = bitcast i32 %3214 to float
  %3216 = fmul fast float %3136, 5.000000e-01
  %3217 = fmul fast float %3215, %3215
  %3218 = fmul fast float %3217, %3216
  %3219 = fsub fast float 1.500000e+00, %3218
  %3220 = fmul fast float %3215, %3136
  %3221 = fmul fast float %3220, %3219
  %3222 = bitcast float %3137 to i32
  %3223 = ashr i32 %3222, 1
  %3224 = sub nsw i32 1597463174, %3223
  %3225 = bitcast i32 %3224 to float
  %3226 = fmul fast float %3137, 5.000000e-01
  %3227 = fmul fast float %3225, %3225
  %3228 = fmul fast float %3227, %3226
  %3229 = fsub fast float 1.500000e+00, %3228
  %3230 = fmul fast float %3225, %3137
  %3231 = fmul fast float %3230, %3229
  %3232 = bitcast float %3138 to i32
  %3233 = ashr i32 %3232, 1
  %3234 = sub nsw i32 1597463174, %3233
  %3235 = bitcast i32 %3234 to float
  %3236 = fmul fast float %3138, 5.000000e-01
  %3237 = fmul fast float %3235, %3235
  %3238 = fmul fast float %3237, %3236
  %3239 = fsub fast float 1.500000e+00, %3238
  %3240 = fmul fast float %3235, %3138
  %3241 = fmul fast float %3240, %3239
  %3242 = fsub fast float %3221, %3203
  %3243 = fsub fast float %3231, %3207
  %3244 = fsub fast float %3241, %3211
  %3245 = fmul fast float %3242, %3171
  %3246 = fmul fast float %3243, %3173
  %3247 = fmul fast float %3244, %3178
  %3248 = fadd fast float %3245, %3186
  %3249 = fadd fast float %3246, %3190
  %3250 = fadd fast float %3247, %3194
  %3251 = call float @dx.op.unary.f32(i32 7, float %3248)  ; Saturate(value)
  %3252 = call float @dx.op.unary.f32(i32 7, float %3249)  ; Saturate(value)
  %3253 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3254 = fmul fast float %3251, %3251
  %3255 = fmul fast float %3252, %3252
  %3256 = fmul fast float %3253, %3253
  %3257 = fsub fast float %3254, %3136
  %3258 = fsub fast float %3255, %3137
  %3259 = fsub fast float %3256, %3138
  %3260 = fmul fast float %3257, %3161
  %3261 = fmul fast float %3258, %3161
  %3262 = fmul fast float %3259, %3161
  %3263 = fadd fast float %3260, %3136
  %3264 = fadd fast float %3261, %3137
  %3265 = fadd fast float %3262, %3138
  %3266 = fadd fast float %3183, %3147
  %3267 = fsub fast float %3266, %3200
  %3268 = call float @dx.op.unary.f32(i32 7, float %3267)  ; Saturate(value)
  %3269 = fsub fast float %3268, %3147
  %3270 = fmul fast float %3269, %3161
  %3271 = fadd fast float %3270, %3147
  br label %3325

; <label>:3272                                    ; preds = %3160
  %3273 = and i32 %3163, 134217728
  %3274 = icmp eq i32 %3273, 0
  br i1 %3274, label %3309, label %3275

; <label>:3275                                    ; preds = %3272
  %3276 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %3277 = call float @dx.op.unary.f32(i32 24, float %315)  ; Sqrt(value)
  %3278 = call float @dx.op.unary.f32(i32 24, float %319)  ; Sqrt(value)
  %3279 = fadd fast float %3276, -5.000000e-01
  %3280 = fadd fast float %3277, -5.000000e-01
  %3281 = fadd fast float %3278, -5.000000e-01
  %3282 = fmul fast float %3279, %3161
  %3283 = fmul fast float %3280, %3161
  %3284 = fmul fast float %3281, %3161
  %3285 = fadd fast float %3282, 5.000000e-01
  %3286 = fadd fast float %3283, 5.000000e-01
  %3287 = fadd fast float %3284, 5.000000e-01
  %3288 = call float @dx.op.unary.f32(i32 24, float %3136)  ; Sqrt(value)
  %3289 = call float @dx.op.unary.f32(i32 24, float %3137)  ; Sqrt(value)
  %3290 = call float @dx.op.unary.f32(i32 24, float %3138)  ; Sqrt(value)
  %3291 = fmul fast float %3285, 2.000000e+00
  %3292 = fsub fast float 1.000000e+00, %3291
  %3293 = fmul fast float %3292, %3288
  %3294 = fadd fast float %3293, %3291
  %3295 = fmul fast float %3294, %3288
  %3296 = fmul fast float %3286, 2.000000e+00
  %3297 = fsub fast float 1.000000e+00, %3296
  %3298 = fmul fast float %3297, %3289
  %3299 = fadd fast float %3298, %3296
  %3300 = fmul fast float %3299, %3289
  %3301 = fmul fast float %3287, 2.000000e+00
  %3302 = fsub fast float 1.000000e+00, %3301
  %3303 = fmul fast float %3302, %3290
  %3304 = fadd fast float %3303, %3301
  %3305 = fmul fast float %3304, %3290
  %3306 = fmul fast float %3295, %3295
  %3307 = fmul fast float %3300, %3300
  %3308 = fmul fast float %3305, %3305
  br label %3325

; <label>:3309                                    ; preds = %3272
  %3310 = fmul fast float %311, %311
  %3311 = fmul fast float %315, %315
  %3312 = fmul fast float %319, %319
  %3313 = fadd fast float %3310, -1.000000e+00
  %3314 = fadd fast float %3311, -1.000000e+00
  %3315 = fadd fast float %3312, -1.000000e+00
  %3316 = fmul fast float %3161, %3313
  %3317 = fmul fast float %3161, %3314
  %3318 = fmul fast float %3161, %3315
  %3319 = fadd fast float %3316, 1.000000e+00
  %3320 = fadd fast float %3317, 1.000000e+00
  %3321 = fadd fast float %3318, 1.000000e+00
  %3322 = fmul fast float %3319, %3136
  %3323 = fmul fast float %3320, %3137
  %3324 = fmul fast float %3321, %3138
  br label %3325

; <label>:3325                                    ; preds = %3309, %3275, %3166, %3122
  %3326 = phi float [ %3271, %3166 ], [ %3147, %3275 ], [ %3147, %3309 ], [ 0x3FA23C0BE0000000, %3122 ]
  %3327 = phi float [ %3263, %3166 ], [ %3306, %3275 ], [ %3322, %3309 ], [ 1.000000e+00, %3122 ]
  %3328 = phi float [ %3264, %3166 ], [ %3307, %3275 ], [ %3323, %3309 ], [ 1.000000e+00, %3122 ]
  %3329 = phi float [ %3265, %3166 ], [ %3308, %3275 ], [ %3324, %3309 ], [ 1.000000e+00, %3122 ]
  %3330 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3331 = extractvalue %dx.types.CBufRet.i32 %3330, 1
  %3332 = and i32 %3331, 1
  %3333 = icmp ne i32 %3332, 0
  %3334 = add i32 %37, 356
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3334, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = and i32 %3336, 32
  %3338 = icmp ne i32 %3337, 0
  %3339 = and i1 %3333, %3338
  %3340 = select i1 %3339, float 1.000000e+00, float %3327
  %3341 = select i1 %3339, float 0x3FD3333340000000, float %3328
  %3342 = select i1 %3339, float 0x3FD3333340000000, float %3329
  %3343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3344 = extractvalue %dx.types.ResRet.i32 %3343, 0
  %3345 = and i32 %3344, 32
  %3346 = icmp eq i32 %3345, 0
  br i1 %3346, label %3419, label %3347

; <label>:3347                                    ; preds = %3325
  %3348 = add i32 %37, 140
  %3349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3348, i32 undef)  ; BufferLoad(srv,index,wot)
  %3350 = extractvalue %dx.types.ResRet.i32 %3349, 0
  %3351 = add i32 %37, 388
  %3352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3351, i32 undef)  ; BufferLoad(srv,index,wot)
  %3353 = extractvalue %dx.types.ResRet.i32 %3352, 0
  %3354 = add i32 %3353, 0
  %3355 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3354, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3356 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3355, %dx.types.Handle %60, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3357 = extractvalue %dx.types.ResRet.f32 %3356, 0
  %3358 = extractvalue %dx.types.ResRet.f32 %3356, 1
  %3359 = extractvalue %dx.types.ResRet.f32 %3356, 2
  %3360 = extractvalue %dx.types.ResRet.f32 %3356, 3
  %3361 = and i32 %3350, 255
  %3362 = uitofp i32 %3361 to float
  %3363 = lshr i32 %3350, 8
  %3364 = and i32 %3363, 255
  %3365 = uitofp i32 %3364 to float
  %3366 = lshr i32 %3350, 16
  %3367 = and i32 %3366, 255
  %3368 = uitofp i32 %3367 to float
  %3369 = fmul fast float %3368, 0x3F70101000000000
  %3370 = fmul fast float %3357, %3362
  %3371 = fadd fast float %3370, %3365
  %3372 = fmul fast float %3371, 0x3F70101000000000
  %3373 = fadd fast float %3358, -5.000000e-01
  %3374 = fadd fast float %3360, -5.000000e-01
  %3375 = fmul fast float %3373, %3369
  %3376 = fmul fast float %3374, %3369
  %3377 = fadd fast float %3375, 5.000000e-01
  %3378 = fadd fast float %3376, 5.000000e-01
  %3379 = fmul fast float %3377, 2.000000e+00
  %3380 = fadd fast float %3379, -1.000000e+00
  %3381 = fmul fast float %3378, 2.000000e+00
  %3382 = fadd fast float %3381, -1.000000e+00
  %3383 = fadd fast float %3380, %3382
  %3384 = fmul fast float %3383, 5.000000e-01
  %3385 = fsub fast float %3380, %3382
  %3386 = fmul fast float %3385, 5.000000e-01
  %3387 = call float @dx.op.unary.f32(i32 6, float %3384)  ; FAbs(value)
  %3388 = fsub fast float 1.000000e+00, %3387
  %3389 = call float @dx.op.unary.f32(i32 6, float %3386)  ; FAbs(value)
  %3390 = fsub fast float %3388, %3389
  %3391 = call float @dx.op.dot3.f32(i32 55, float %3384, float %3386, float %3390, float %3384, float %3386, float %3390)  ; Dot3(ax,ay,az,bx,by,bz)
  %3392 = call float @dx.op.unary.f32(i32 25, float %3391)  ; Rsqrt(value)
  %3393 = fmul fast float %3384, %3392
  %3394 = fmul fast float %3386, %3392
  %3395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3396 = extractvalue %dx.types.ResRet.i32 %3395, 0
  %3397 = and i32 %3396, 67108864
  %3398 = icmp eq i32 %3397, 0
  br i1 %3398, label %3415, label %3399

; <label>:3399                                    ; preds = %3347
  %3400 = add i32 %37, 328
  %3401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3400, i32 undef)  ; BufferLoad(srv,index,wot)
  %3402 = extractvalue %dx.types.ResRet.i32 %3401, 0
  %3403 = and i32 %3402, 65535
  %3404 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3403)  ; LegacyF16ToF32(value)
  %3405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %3406 = extractvalue %dx.types.ResRet.i32 %3405, 0
  %3407 = and i32 %3406, 65535
  %3408 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3407)  ; LegacyF16ToF32(value)
  %3409 = lshr i32 %3402, 16
  %3410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3409)  ; LegacyF16ToF32(value)
  %3411 = fsub fast float %3372, %3410
  %3412 = fmul fast float %3411, %3404
  %3413 = fadd fast float %3412, %3408
  %3414 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  br label %3415

; <label>:3415                                    ; preds = %3399, %3347
  %3416 = phi float [ %3414, %3399 ], [ %3372, %3347 ]
  %3417 = call float @dx.op.dot2.f32(i32 54, float %3393, float %3394, float %2836, float %2837)  ; Dot2(ax,ay,bx,by)
  %3418 = call float @dx.op.dot2.f32(i32 54, float %3393, float %3394, float %2838, float %2839)  ; Dot2(ax,ay,bx,by)
  br label %3419

; <label>:3419                                    ; preds = %3415, %3325
  %3420 = phi float [ %3416, %3415 ], [ 0x3FD6666660000000, %3325 ]
  %3421 = phi float [ %3417, %3415 ], [ 0.000000e+00, %3325 ]
  %3422 = phi float [ %3418, %3415 ], [ 0.000000e+00, %3325 ]
  %3423 = phi float [ %3359, %3415 ], [ 1.000000e+00, %3325 ]
  %3424 = add i32 %37, 208
  %3425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3426 = extractvalue %dx.types.ResRet.i32 %3425, 0
  %3427 = lshr i32 %3426, 22
  %3428 = shl nuw nsw i32 %3427, 5
  %3429 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3428)  ; LegacyF16ToF32(value)
  %3430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3431 = extractvalue %dx.types.ResRet.i32 %3430, 0
  %3432 = and i32 %3431, 64
  %3433 = icmp eq i32 %3432, 0
  br i1 %3433, label %3467, label %3434

; <label>:3434                                    ; preds = %3419
  %3435 = add i32 %37, 404
  %3436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3435, i32 undef)  ; BufferLoad(srv,index,wot)
  %3437 = extractvalue %dx.types.ResRet.i32 %3436, 0
  %3438 = add i32 %3437, 0
  %3439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3441 = extractvalue %dx.types.ResRet.i32 %3440, 0
  %3442 = and i32 %3441, 131072
  %3443 = icmp eq i32 %3442, 0
  %3444 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3439, %dx.types.Handle %60, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3445 = extractvalue %dx.types.ResRet.f32 %3444, 0
  %3446 = extractvalue %dx.types.ResRet.f32 %3444, 1
  %3447 = extractvalue %dx.types.ResRet.f32 %3444, 2
  %3448 = fmul fast float %3445, %299
  %3449 = fmul fast float %3446, %302
  %3450 = fmul fast float %3447, %305
  br i1 %3443, label %3457, label %3451

; <label>:3451                                    ; preds = %3434
  %3452 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3453 = extractvalue %dx.types.CBufRet.f32 %3452, 0
  %3454 = fmul fast float %3453, %3448
  %3455 = fmul fast float %3453, %3449
  %3456 = fmul fast float %3453, %3450
  br label %3457

; <label>:3457                                    ; preds = %3451, %3434
  %3458 = phi float [ %3454, %3451 ], [ %3448, %3434 ]
  %3459 = phi float [ %3455, %3451 ], [ %3449, %3434 ]
  %3460 = phi float [ %3456, %3451 ], [ %3450, %3434 ]
  %3461 = fmul fast float %3458, %3429
  %3462 = select i1 %167, float %3461, float %3458
  %3463 = call float @dx.op.dot3.f32(i32 55, float %3462, float %3459, float %3460, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3464 = select i1 %167, float 0.000000e+00, float %3458
  %3465 = select i1 %167, float %3463, float %3459
  %3466 = select i1 %167, float 0.000000e+00, float %3460
  br label %3467

; <label>:3467                                    ; preds = %3457, %3419
  %3468 = phi float [ %3464, %3457 ], [ 0.000000e+00, %3419 ]
  %3469 = phi float [ %3465, %3457 ], [ 0.000000e+00, %3419 ]
  %3470 = phi float [ %3466, %3457 ], [ 0.000000e+00, %3419 ]
  %3471 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3472 = extractvalue %dx.types.ResRet.i32 %3471, 0
  %3473 = and i32 %3472, 10240
  %3474 = icmp eq i32 %3473, 0
  br i1 %3474, label %3519, label %3475

; <label>:3475                                    ; preds = %3467
  %3476 = add i32 %37, 468
  %3477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3476, i32 undef)  ; BufferLoad(srv,index,wot)
  %3478 = extractvalue %dx.types.ResRet.i32 %3477, 0
  %3479 = add i32 %3478, 0
  %3480 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3479, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3481 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3480, %dx.types.Handle %61, float %2932, float %2933, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3482 = extractvalue %dx.types.ResRet.f32 %3481, 1
  %3483 = extractvalue %dx.types.ResRet.f32 %3481, 3
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = and i32 %3485, 1048576
  %3487 = icmp ne i32 %3486, 0
  %3488 = and i32 %3485, 8192
  %3489 = icmp eq i32 %3488, 0
  br i1 %3489, label %3505, label %3490

; <label>:3490                                    ; preds = %3475
  %3491 = extractvalue %dx.types.ResRet.f32 %3481, 2
  %3492 = select i1 %3487, float %3491, float %3482
  %3493 = extractvalue %dx.types.ResRet.f32 %3481, 0
  %3494 = select i1 %3487, float %3493, float %3482
  %3495 = add i32 %37, 144
  %3496 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3495, i32 undef)  ; BufferLoad(srv,index,wot)
  %3497 = extractvalue %dx.types.ResRet.i32 %3496, 0
  %3498 = lshr i32 %3497, 16
  %3499 = and i32 %3498, 255
  %3500 = uitofp i32 %3499 to float
  %3501 = fmul fast float %3500, 0x3F80101020000000
  %3502 = fmul fast float %3501, %3494
  %3503 = fmul fast float %3501, %3482
  %3504 = fmul fast float %3501, %3492
  br label %3505

; <label>:3505                                    ; preds = %3490, %3475
  %3506 = phi float [ %3502, %3490 ], [ 0.000000e+00, %3475 ]
  %3507 = phi float [ %3503, %3490 ], [ 0.000000e+00, %3475 ]
  %3508 = phi float [ %3504, %3490 ], [ 0.000000e+00, %3475 ]
  %3509 = and i32 %3485, 2048
  %3510 = icmp eq i32 %3509, 0
  br i1 %3510, label %3519, label %3511

; <label>:3511                                    ; preds = %3505
  %3512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3424, i32 undef)  ; BufferLoad(srv,index,wot)
  %3513 = extractvalue %dx.types.ResRet.i32 %3512, 0
  %3514 = shl i32 %3513, 4
  %3515 = and i32 %3514, 32752
  %3516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3515)  ; LegacyF16ToF32(value)
  %3517 = fmul fast float %3516, %3483
  %3518 = call float @dx.op.binary.f32(i32 35, float %3517, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3519

; <label>:3519                                    ; preds = %3511, %3505, %3467
  %3520 = phi float [ %3506, %3511 ], [ %3506, %3505 ], [ 0.000000e+00, %3467 ]
  %3521 = phi float [ %3507, %3511 ], [ %3507, %3505 ], [ 0.000000e+00, %3467 ]
  %3522 = phi float [ %3508, %3511 ], [ %3508, %3505 ], [ 0.000000e+00, %3467 ]
  %3523 = phi float [ %3518, %3511 ], [ 0x3F70101020000000, %3505 ], [ 0x3F70101020000000, %3467 ]
  %3524 = add i32 %37, 144
  %3525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.i32 %3525, 0
  %3527 = and i32 %3526, 255
  %3528 = uitofp i32 %3527 to float
  %3529 = lshr i32 %3526, 8
  %3530 = and i32 %3529, 255
  %3531 = uitofp i32 %3530 to float
  %3532 = call float @dx.op.dot3.f32(i32 55, float %3340, float %3341, float %3342, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3533 = fmul fast float %3531, %3532
  %3534 = fadd fast float %3533, %3528
  %3535 = fmul fast float %3534, 0x3F70101020000000
  %3536 = call float @dx.op.unary.f32(i32 7, float %3535)  ; Saturate(value)
  br i1 %2824, label %3537, label %3545

; <label>:3537                                    ; preds = %3519
  %3538 = fsub fast float 1.000000e+00, %3120
  %3539 = fmul fast float %3538, %2809
  %3540 = fmul fast float %3538, %2810
  %3541 = fmul fast float %3538, %2811
  %3542 = fmul fast float %3538, %2815
  %3543 = fmul fast float %3538, %2816
  %3544 = fmul fast float %3538, %2817
  br label %3545

; <label>:3545                                    ; preds = %3537, %3519
  %3546 = phi float [ %3539, %3537 ], [ %2809, %3519 ]
  %3547 = phi float [ %3540, %3537 ], [ %2810, %3519 ]
  %3548 = phi float [ %3541, %3537 ], [ %2811, %3519 ]
  %3549 = phi float [ %3542, %3537 ], [ %2815, %3519 ]
  %3550 = phi float [ %3543, %3537 ], [ %2816, %3519 ]
  %3551 = phi float [ %3544, %3537 ], [ %2817, %3519 ]
  %3552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %2825, i32 undef)  ; BufferLoad(srv,index,wot)
  %3553 = extractvalue %dx.types.ResRet.i32 %3552, 0
  %3554 = and i32 %3553, 3
  %3555 = icmp eq i32 %3554, 3
  br i1 %3555, label %3634, label %3556

; <label>:3556                                    ; preds = %3545
  %3557 = and i32 %3553, 16
  %3558 = icmp ne i32 %3557, 0
  %3559 = select i1 %3558, float %3120, float 0.000000e+00
  %3560 = icmp eq i32 %3554, 0
  br i1 %3560, label %3561, label %3589

; <label>:3561                                    ; preds = %3556
  %3562 = and i32 %3553, 64
  %3563 = icmp ne i32 %3562, 0
  %3564 = select i1 %3563, float %3120, float 0.000000e+00
  %3565 = fsub fast float %3340, %3546
  %3566 = fsub fast float %3341, %3547
  %3567 = fsub fast float %3342, %3548
  %3568 = fmul fast float %3559, %3565
  %3569 = fmul fast float %3559, %3566
  %3570 = fmul fast float %3559, %3567
  %3571 = fadd fast float %3568, %3546
  %3572 = fadd fast float %3569, %3547
  %3573 = fadd fast float %3570, %3548
  %3574 = fsub fast float %3326, %2818
  %3575 = fmul fast float %3559, %3574
  %3576 = fadd fast float %3575, %2818
  %3577 = fsub fast float %3468, %3549
  %3578 = fsub fast float %3469, %3550
  %3579 = fsub fast float %3470, %3551
  %3580 = fmul fast float %3564, %3577
  %3581 = fmul fast float %3564, %3578
  %3582 = fmul fast float %3564, %3579
  %3583 = fadd fast float %3580, %3549
  %3584 = fadd fast float %3581, %3550
  %3585 = fadd fast float %3582, %3551
  %3586 = fsub fast float %3536, %2822
  %3587 = fmul fast float %3559, %3586
  %3588 = fadd fast float %3587, %2822
  br label %3634

; <label>:3589                                    ; preds = %3556
  %3590 = icmp eq i32 %3554, 1
  br i1 %3590, label %3591, label %3604

; <label>:3591                                    ; preds = %3589
  %3592 = fadd fast float %3340, -1.000000e+00
  %3593 = fadd fast float %3341, -1.000000e+00
  %3594 = fadd fast float %3342, -1.000000e+00
  %3595 = fmul fast float %3559, %3592
  %3596 = fmul fast float %3559, %3593
  %3597 = fmul fast float %3559, %3594
  %3598 = fadd fast float %3595, 1.000000e+00
  %3599 = fadd fast float %3596, 1.000000e+00
  %3600 = fadd fast float %3597, 1.000000e+00
  %3601 = fmul fast float %3598, %3546
  %3602 = fmul fast float %3599, %3547
  %3603 = fmul fast float %3600, %3548
  br label %3634

; <label>:3604                                    ; preds = %3589
  %3605 = icmp eq i32 %3554, 2
  br i1 %3605, label %3606, label %3634

; <label>:3606                                    ; preds = %3604
  %3607 = call float @dx.op.unary.f32(i32 24, float %3340)  ; Sqrt(value)
  %3608 = call float @dx.op.unary.f32(i32 24, float %3341)  ; Sqrt(value)
  %3609 = call float @dx.op.unary.f32(i32 24, float %3342)  ; Sqrt(value)
  %3610 = fadd fast float %3607, -5.000000e-01
  %3611 = fadd fast float %3608, -5.000000e-01
  %3612 = fadd fast float %3609, -5.000000e-01
  %3613 = fmul fast float %3610, %3559
  %3614 = fmul fast float %3611, %3559
  %3615 = fmul fast float %3612, %3559
  %3616 = fadd fast float %3613, 5.000000e-01
  %3617 = fadd fast float %3614, 5.000000e-01
  %3618 = fadd fast float %3615, 5.000000e-01
  %3619 = fmul fast float %3616, 2.000000e+00
  %3620 = fsub fast float 1.000000e+00, %3619
  %3621 = fmul fast float %3620, %3546
  %3622 = fadd fast float %3621, %3619
  %3623 = fmul fast float %3622, %3546
  %3624 = fmul fast float %3617, 2.000000e+00
  %3625 = fsub fast float 1.000000e+00, %3624
  %3626 = fmul fast float %3625, %3547
  %3627 = fadd fast float %3626, %3624
  %3628 = fmul fast float %3627, %3547
  %3629 = fmul fast float %3618, 2.000000e+00
  %3630 = fsub fast float 1.000000e+00, %3629
  %3631 = fmul fast float %3630, %3548
  %3632 = fadd fast float %3631, %3629
  %3633 = fmul fast float %3632, %3548
  br label %3634

; <label>:3634                                    ; preds = %3606, %3604, %3591, %3561, %3545
  %3635 = phi float [ %3546, %3545 ], [ %3623, %3606 ], [ %3546, %3604 ], [ %3601, %3591 ], [ %3571, %3561 ]
  %3636 = phi float [ %3547, %3545 ], [ %3628, %3606 ], [ %3547, %3604 ], [ %3602, %3591 ], [ %3572, %3561 ]
  %3637 = phi float [ %3548, %3545 ], [ %3633, %3606 ], [ %3548, %3604 ], [ %3603, %3591 ], [ %3573, %3561 ]
  %3638 = phi float [ %3549, %3545 ], [ %3549, %3606 ], [ %3549, %3604 ], [ %3549, %3591 ], [ %3583, %3561 ]
  %3639 = phi float [ %3550, %3545 ], [ %3550, %3606 ], [ %3550, %3604 ], [ %3550, %3591 ], [ %3584, %3561 ]
  %3640 = phi float [ %3551, %3545 ], [ %3551, %3606 ], [ %3551, %3604 ], [ %3551, %3591 ], [ %3585, %3561 ]
  %3641 = phi float [ %2818, %3545 ], [ %2818, %3606 ], [ %2818, %3604 ], [ %2818, %3591 ], [ %3576, %3561 ]
  %3642 = phi float [ %2822, %3545 ], [ %2822, %3606 ], [ %2822, %3604 ], [ %2822, %3591 ], [ %3588, %3561 ]
  %3643 = and i32 %3553, 12
  %3644 = icmp eq i32 %3643, 12
  br i1 %3644, label %3751, label %3645

; <label>:3645                                    ; preds = %3634
  %3646 = and i32 %3553, 2097184
  %3647 = icmp eq i32 %3646, 2097184
  %3648 = select i1 %3647, float %3120, float 0.000000e+00
  %3649 = and i32 %3553, 4194336
  %3650 = icmp eq i32 %3649, 4194336
  %3651 = select i1 %3650, float %3120, float 0.000000e+00
  %3652 = and i32 %3553, 8388640
  %3653 = icmp eq i32 %3652, 8388640
  %3654 = select i1 %3653, float %3120, float 0.000000e+00
  %3655 = and i32 %3553, 2048
  %3656 = icmp ne i32 %3655, 0
  %3657 = select i1 %3656, float %3120, float 0.000000e+00
  %3658 = and i32 %3553, 8192
  %3659 = icmp ne i32 %3658, 0
  %3660 = select i1 %3659, float %3120, float 0.000000e+00
  %3661 = icmp eq i32 %3643, 0
  br i1 %3661, label %3662, label %3687

; <label>:3662                                    ; preds = %3645
  %3663 = fsub fast float %3421, %2807
  %3664 = fsub fast float %3422, %2808
  %3665 = fmul fast float %3648, %3663
  %3666 = fmul fast float %3648, %3664
  %3667 = fadd fast float %3665, %2807
  %3668 = fadd fast float %3666, %2808
  %3669 = fsub fast float %3423, %2820
  %3670 = fmul fast float %3651, %3669
  %3671 = fadd fast float %3670, %2820
  %3672 = fsub fast float %3420, %2819
  %3673 = fmul fast float %3654, %3672
  %3674 = fadd fast float %3673, %2819
  %3675 = fsub fast float %3523, %2821
  %3676 = fmul fast float %3657, %3675
  %3677 = fadd fast float %3676, %2821
  %3678 = fsub fast float %3520, %2812
  %3679 = fsub fast float %3521, %2813
  %3680 = fsub fast float %3522, %2814
  %3681 = fmul fast float %3660, %3678
  %3682 = fmul fast float %3660, %3679
  %3683 = fmul fast float %3660, %3680
  %3684 = fadd fast float %3681, %2812
  %3685 = fadd fast float %3682, %2813
  %3686 = fadd fast float %3683, %2814
  br label %3751

; <label>:3687                                    ; preds = %3645
  %3688 = icmp eq i32 %3643, 4
  br i1 %3688, label %3689, label %3729

; <label>:3689                                    ; preds = %3687
  %3690 = fmul fast float %3648, %3421
  %3691 = fmul fast float %3648, %3422
  %3692 = fadd fast float %3690, %2807
  %3693 = fadd fast float %3691, %2808
  %3694 = call float @dx.op.binary.f32(i32 36, float %2820, float %3423)  ; FMin(a,b)
  %3695 = fsub fast float %3694, %2820
  %3696 = fmul fast float %3695, %3651
  %3697 = fadd fast float %3696, %2820
  %3698 = fadd fast float %3420, %2819
  %3699 = fmul fast float %3698, 0x3FF337FAE0000000
  %3700 = fmul fast float %2819, %2819
  %3701 = fmul fast float %3420, %3420
  %3702 = fadd fast float %3701, %3700
  %3703 = fmul fast float %3702, 0x3FE5152B00000000
  %3704 = fmul fast float %2819, 0xBFCC1F85E0000000
  %3705 = fmul fast float %3704, %3420
  %3706 = fadd fast float %3705, 0xBFE1363700000000
  %3707 = fadd fast float %3706, %3699
  %3708 = fsub fast float %3707, %3703
  %3709 = fmul fast float %3698, 0x3FBA6F0D00000000
  %3710 = fmul fast float %3702, 0x3FD0432880000000
  %3711 = fmul fast float %2819, 0xBFEF110800000000
  %3712 = fmul fast float %3711, %3420
  %3713 = fadd fast float %3712, 1.000000e+00
  %3714 = fsub fast float %3713, %3709
  %3715 = fadd fast float %3714, %3710
  %3716 = fdiv fast float %3708, %3715
  %3717 = call float @dx.op.unary.f32(i32 7, float %3716)  ; Saturate(value)
  %3718 = fsub fast float %3717, %2819
  %3719 = fmul fast float %3718, %3654
  %3720 = fadd fast float %3719, %2819
  %3721 = fmul fast float %3657, %3523
  %3722 = fadd fast float %3721, %2821
  %3723 = fmul fast float %3660, %3520
  %3724 = fmul fast float %3660, %3521
  %3725 = fmul fast float %3660, %3522
  %3726 = fadd fast float %3723, %2812
  %3727 = fadd fast float %3724, %2813
  %3728 = fadd fast float %3725, %2814
  br label %3751

; <label>:3729                                    ; preds = %3687
  %3730 = icmp eq i32 %3643, 8
  br i1 %3730, label %3731, label %3751

; <label>:3731                                    ; preds = %3729
  %3732 = fmul fast float %3648, %3421
  %3733 = fmul fast float %3648, %3422
  %3734 = fadd fast float %3732, %2807
  %3735 = fadd fast float %3733, %2808
  %3736 = call float @dx.op.binary.f32(i32 36, float %2820, float %3423)  ; FMin(a,b)
  %3737 = fsub fast float %3736, %2820
  %3738 = fmul fast float %3737, %3651
  %3739 = fadd fast float %3738, %2820
  %3740 = fsub fast float %3420, %2819
  %3741 = fmul fast float %3654, %3740
  %3742 = fadd fast float %3741, %2819
  %3743 = fmul fast float %3657, %3523
  %3744 = fadd fast float %3743, %2821
  %3745 = fmul fast float %3660, %3520
  %3746 = fmul fast float %3660, %3521
  %3747 = fmul fast float %3660, %3522
  %3748 = fadd fast float %3745, %2812
  %3749 = fadd fast float %3746, %2813
  %3750 = fadd fast float %3747, %2814
  br label %3751

; <label>:3751                                    ; preds = %3731, %3729, %3689, %3662, %3634, %3119, %2823, %2806
  %3752 = phi float [ %2807, %3634 ], [ %2807, %3119 ], [ %2807, %2806 ], [ %2807, %2823 ], [ %3667, %3662 ], [ %3692, %3689 ], [ %2807, %3729 ], [ %3734, %3731 ]
  %3753 = phi float [ %2808, %3634 ], [ %2808, %3119 ], [ %2808, %2806 ], [ %2808, %2823 ], [ %3668, %3662 ], [ %3693, %3689 ], [ %2808, %3729 ], [ %3735, %3731 ]
  %3754 = phi float [ %3635, %3634 ], [ %2809, %3119 ], [ %2809, %2806 ], [ %2809, %2823 ], [ %3635, %3662 ], [ %3635, %3689 ], [ %3635, %3729 ], [ %3635, %3731 ]
  %3755 = phi float [ %3636, %3634 ], [ %2810, %3119 ], [ %2810, %2806 ], [ %2810, %2823 ], [ %3636, %3662 ], [ %3636, %3689 ], [ %3636, %3729 ], [ %3636, %3731 ]
  %3756 = phi float [ %3637, %3634 ], [ %2811, %3119 ], [ %2811, %2806 ], [ %2811, %2823 ], [ %3637, %3662 ], [ %3637, %3689 ], [ %3637, %3729 ], [ %3637, %3731 ]
  %3757 = phi float [ %2812, %3634 ], [ %2812, %3119 ], [ %2812, %2806 ], [ %2812, %2823 ], [ %3684, %3662 ], [ %3726, %3689 ], [ %2812, %3729 ], [ %3748, %3731 ]
  %3758 = phi float [ %2813, %3634 ], [ %2813, %3119 ], [ %2813, %2806 ], [ %2813, %2823 ], [ %3685, %3662 ], [ %3727, %3689 ], [ %2813, %3729 ], [ %3749, %3731 ]
  %3759 = phi float [ %2814, %3634 ], [ %2814, %3119 ], [ %2814, %2806 ], [ %2814, %2823 ], [ %3686, %3662 ], [ %3728, %3689 ], [ %2814, %3729 ], [ %3750, %3731 ]
  %3760 = phi float [ %3638, %3634 ], [ %2815, %3119 ], [ %2815, %2806 ], [ %2815, %2823 ], [ %3638, %3662 ], [ %3638, %3689 ], [ %3638, %3729 ], [ %3638, %3731 ]
  %3761 = phi float [ %3639, %3634 ], [ %2816, %3119 ], [ %2816, %2806 ], [ %2816, %2823 ], [ %3639, %3662 ], [ %3639, %3689 ], [ %3639, %3729 ], [ %3639, %3731 ]
  %3762 = phi float [ %3640, %3634 ], [ %2817, %3119 ], [ %2817, %2806 ], [ %2817, %2823 ], [ %3640, %3662 ], [ %3640, %3689 ], [ %3640, %3729 ], [ %3640, %3731 ]
  %3763 = phi float [ %3641, %3634 ], [ %2818, %3119 ], [ %2818, %2806 ], [ %2818, %2823 ], [ %3641, %3662 ], [ %3641, %3689 ], [ %3641, %3729 ], [ %3641, %3731 ]
  %3764 = phi float [ %2819, %3634 ], [ %2819, %3119 ], [ %2819, %2806 ], [ %2819, %2823 ], [ %3674, %3662 ], [ %3720, %3689 ], [ %2819, %3729 ], [ %3742, %3731 ]
  %3765 = phi float [ %2820, %3634 ], [ %2820, %3119 ], [ %2820, %2806 ], [ %2820, %2823 ], [ %3671, %3662 ], [ %3697, %3689 ], [ %2820, %3729 ], [ %3739, %3731 ]
  %3766 = phi float [ %2821, %3634 ], [ %2821, %3119 ], [ %2821, %2806 ], [ %2821, %2823 ], [ %3677, %3662 ], [ %3722, %3689 ], [ %2821, %3729 ], [ %3744, %3731 ]
  %3767 = phi float [ %3642, %3634 ], [ %2822, %3119 ], [ %2822, %2806 ], [ %2822, %2823 ], [ %3642, %3662 ], [ %3642, %3689 ], [ %3642, %3729 ], [ %3642, %3731 ]
  %3768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3769 = extractvalue %dx.types.CBufRet.f32 %3768, 0
  %3770 = call float @dx.op.dot2.f32(i32 54, float %3752, float %3753, float %3752, float %3753)  ; Dot2(ax,ay,bx,by)
  %3771 = fmul fast float %3770, 0x3FE3333340000000
  %3772 = fsub fast float 1.000000e+00, %3771
  %3773 = call float @dx.op.dot3.f32(i32 55, float %3752, float %3753, float %3772, float %3752, float %3753, float %3772)  ; Dot3(ax,ay,az,bx,by,bz)
  %3774 = call float @dx.op.unary.f32(i32 25, float %3773)  ; Rsqrt(value)
  %3775 = fmul fast float %3774, %3752
  %3776 = fmul fast float %3774, %3753
  %3777 = fmul fast float %3772, %3774
  %3778 = fmul fast float %3777, %73
  %3779 = fmul fast float %3777, %75
  %3780 = fmul fast float %3777, %77
  %3781 = fmul fast float %3775, %45
  %3782 = fmul fast float %3775, %46
  %3783 = fmul fast float %3775, %47
  %3784 = fadd fast float %3778, %3781
  %3785 = fadd fast float %3779, %3782
  %3786 = fadd fast float %3780, %3783
  %3787 = fmul fast float %87, %3776
  %3788 = fmul fast float %88, %3776
  %3789 = fmul fast float %89, %3776
  %3790 = fadd fast float %3784, %3787
  %3791 = fadd fast float %3785, %3788
  %3792 = fadd fast float %3786, %3789
  %3793 = call float @dx.op.dot3.f32(i32 55, float %3790, float %3791, float %3792, float %3790, float %3791, float %3792)  ; Dot3(ax,ay,az,bx,by,bz)
  %3794 = call float @dx.op.unary.f32(i32 25, float %3793)  ; Rsqrt(value)
  %3795 = fmul fast float %3790, %3794
  %3796 = fmul fast float %3791, %3794
  %3797 = fmul fast float %3792, %3794
  %3798 = fadd fast float %3763, 0xBFB99999A0000000
  %3799 = call float @dx.op.unary.f32(i32 7, float %3798)  ; Saturate(value)
  %3800 = fmul fast float %3799, 0x3FF1C71C80000000
  %3801 = call float @dx.op.binary.f32(i32 36, float %3763, float 0x3FB99999A0000000)  ; FMin(a,b)
  %3802 = fsub fast float 1.000000e+00, %3800
  %3803 = call float @dx.op.unary.f32(i32 7, float %3802)  ; Saturate(value)
  %3804 = fmul fast float %3803, %3754
  %3805 = fmul fast float %3803, %3755
  %3806 = fmul fast float %3803, %3756
  %3807 = call float @dx.op.unary.f32(i32 7, float %3804)  ; Saturate(value)
  %3808 = call float @dx.op.unary.f32(i32 7, float %3805)  ; Saturate(value)
  %3809 = call float @dx.op.unary.f32(i32 7, float %3806)  ; Saturate(value)
  %3810 = fmul fast float %3800, %3754
  %3811 = fmul fast float %3800, %3755
  %3812 = fmul fast float %3800, %3756
  %3813 = fadd fast float %3810, %3801
  %3814 = fadd fast float %3811, %3801
  %3815 = fadd fast float %3812, %3801
  %3816 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  %3817 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3818 = call float @dx.op.unary.f32(i32 7, float %3815)  ; Saturate(value)
  %3819 = call float @dx.op.unary.f32(i32 7, float %3764)  ; Saturate(value)
  %3820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3821 = extractvalue %dx.types.ResRet.i32 %3820, 0
  %3822 = and i32 %3821, 1
  %3823 = icmp eq i32 %3822, 0
  br i1 %3823, label %3838, label %3824

; <label>:3824                                    ; preds = %3751
  %3825 = call float @dx.op.binary.f32(i32 35, float %3808, float %3809)  ; FMax(a,b)
  %3826 = call float @dx.op.binary.f32(i32 35, float %3807, float %3825)  ; FMax(a,b)
  %3827 = fcmp fast ogt float %3826, 0.000000e+00
  %3828 = bitcast float %3826 to i32
  %3829 = sub nsw i32 2129859010, %3828
  %3830 = bitcast i32 %3829 to float
  %3831 = select i1 %3827, float %3830, float 0.000000e+00
  %3832 = fmul fast float %3807, %3757
  %3833 = fmul fast float %3808, %3758
  %3834 = fmul fast float %3809, %3759
  %3835 = fmul fast float %3832, %3831
  %3836 = fmul fast float %3833, %3831
  %3837 = fmul fast float %3834, %3831
  br label %3838

; <label>:3838                                    ; preds = %3824, %3751
  %3839 = phi float [ %3835, %3824 ], [ %3757, %3751 ]
  %3840 = phi float [ %3836, %3824 ], [ %3758, %3751 ]
  %3841 = phi float [ %3837, %3824 ], [ %3759, %3751 ]
  %3842 = fadd fast float %3807, 0xBFD51EB860000000
  %3843 = fadd fast float %3808, 0xBFD51EB860000000
  %3844 = fadd fast float %3809, 0xBFD51EB860000000
  %3845 = fmul fast float %3842, %3842
  %3846 = fmul fast float %3843, %3843
  %3847 = fmul fast float %3844, %3844
  %3848 = fmul fast float %3845, %3845
  %3849 = fmul fast float %3848, 1.000000e+02
  %3850 = fmul fast float %3846, %3846
  %3851 = fmul fast float %3850, 1.000000e+02
  %3852 = fmul fast float %3847, %3847
  %3853 = fmul fast float %3852, 1.000000e+02
  %3854 = fadd fast float %3849, 3.500000e+00
  %3855 = fadd fast float %3851, 3.500000e+00
  %3856 = fadd fast float %3853, 3.500000e+00
  %3857 = call float @dx.op.binary.f32(i32 35, float %3839, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3858 = call float @dx.op.binary.f32(i32 35, float %3840, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3859 = call float @dx.op.binary.f32(i32 35, float %3841, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %3860 = fdiv fast float %3854, %3857
  %3861 = fdiv fast float %3855, %3858
  %3862 = fdiv fast float %3856, %3859
  %3863 = fmul fast float %3766, 0xBFF7154760000000
  %3864 = fmul fast float %3863, %3860
  %3865 = call float @dx.op.unary.f32(i32 21, float %3864)  ; Exp(value)
  %3866 = fmul fast float %3865, 2.500000e-01
  %3867 = fmul fast float %3766, 0xBFDEC709E0000000
  %3868 = fmul fast float %3867, %3860
  %3869 = call float @dx.op.unary.f32(i32 21, float %3868)  ; Exp(value)
  %3870 = fmul fast float %3869, 7.500000e-01
  %3871 = fmul fast float %3863, %3861
  %3872 = call float @dx.op.unary.f32(i32 21, float %3871)  ; Exp(value)
  %3873 = fmul fast float %3872, 2.500000e-01
  %3874 = fmul fast float %3867, %3861
  %3875 = call float @dx.op.unary.f32(i32 21, float %3874)  ; Exp(value)
  %3876 = fmul fast float %3875, 7.500000e-01
  %3877 = fmul fast float %3863, %3862
  %3878 = call float @dx.op.unary.f32(i32 21, float %3877)  ; Exp(value)
  %3879 = fmul fast float %3878, 2.500000e-01
  %3880 = fmul fast float %3867, %3862
  %3881 = call float @dx.op.unary.f32(i32 21, float %3880)  ; Exp(value)
  %3882 = fmul fast float %3881, 7.500000e-01
  %3883 = fadd fast float %3866, %3870
  %3884 = fadd fast float %3873, %3876
  %3885 = fadd fast float %3879, %3882
  %3886 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3887 = extractvalue %dx.types.CBufRet.i32 %3886, 3
  %3888 = and i32 %3887, 8
  %3889 = icmp ne i32 %3888, 0
  %3890 = call float @dx.op.binary.f32(i32 35, float %3807, float %3754)  ; FMax(a,b)
  %3891 = call float @dx.op.binary.f32(i32 35, float %3808, float %3754)  ; FMax(a,b)
  %3892 = call float @dx.op.binary.f32(i32 35, float %3809, float %3754)  ; FMax(a,b)
  %3893 = call float @dx.op.dot3.f32(i32 55, float %3807, float %3808, float %3809, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3894 = select i1 %167, float %3754, float %3807
  %3895 = select i1 %167, float %3893, float %3808
  %3896 = select i1 %167, float 1.000000e+00, float %3809
  %3897 = select i1 %3889, float %3890, float %3894
  %3898 = select i1 %3889, float %3891, float %3895
  %3899 = select i1 %3889, float %3892, float %3896
  %3900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3901 = extractvalue %dx.types.CBufRet.f32 %3900, 0
  %3902 = extractvalue %dx.types.CBufRet.f32 %3900, 1
  %3903 = extractvalue %dx.types.CBufRet.f32 %3900, 2
  %3904 = fadd fast float %3901, %123
  %3905 = fadd fast float %3902, %124
  %3906 = fadd fast float %3903, %125
  %3907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %3908 = extractvalue %dx.types.CBufRet.f32 %3907, 0
  %3909 = extractvalue %dx.types.CBufRet.f32 %3907, 1
  %3910 = fsub fast float %3904, %3908
  %3911 = fsub fast float %3905, %3909
  %3912 = fmul fast float %3910, %3910
  %3913 = fmul fast float %3911, %3911
  %3914 = fadd fast float %3912, %3913
  %3915 = call float @dx.op.unary.f32(i32 24, float %3914)  ; Sqrt(value)
  %3916 = extractvalue %dx.types.CBufRet.f32 %3907, 2
  %3917 = fcmp fast olt float %3915, %3916
  br i1 %3917, label %3918, label %3985

; <label>:3918                                    ; preds = %3838
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 0
  %3925 = extractvalue %dx.types.CBufRet.f32 %3919, 1
  %3926 = extractvalue %dx.types.CBufRet.f32 %3921, 1
  %3927 = extractvalue %dx.types.CBufRet.f32 %3923, 1
  %3928 = extractvalue %dx.types.CBufRet.f32 %3919, 3
  %3929 = extractvalue %dx.types.CBufRet.f32 %3921, 3
  %3930 = extractvalue %dx.types.CBufRet.f32 %3923, 3
  %3931 = fadd fast float %3928, %3904
  %3932 = fadd fast float %3929, %3905
  %3933 = fadd fast float %3930, %3906
  %3934 = fmul fast float %3931, %3920
  %3935 = call float @dx.op.tertiary.f32(i32 46, float %3932, float %3922, float %3934)  ; FMad(a,b,c)
  %3936 = call float @dx.op.tertiary.f32(i32 46, float %3933, float %3924, float %3935)  ; FMad(a,b,c)
  %3937 = fmul fast float %3931, %3925
  %3938 = call float @dx.op.tertiary.f32(i32 46, float %3932, float %3926, float %3937)  ; FMad(a,b,c)
  %3939 = call float @dx.op.tertiary.f32(i32 46, float %3933, float %3927, float %3938)  ; FMad(a,b,c)
  %3940 = fsub fast float %3936, %3928
  %3941 = fsub fast float %3939, %3929
  %3942 = fsub fast float %3940, %3908
  %3943 = fadd fast float %3942, %3916
  %3944 = fsub fast float %3941, %3909
  %3945 = fadd fast float %3944, %3916
  %3946 = extractvalue %dx.types.CBufRet.f32 %3907, 3
  %3947 = fmul fast float %3943, %3946
  %3948 = fmul fast float %3945, %3946
  %3949 = call float @dx.op.unary.f32(i32 7, float %3947)  ; Saturate(value)
  %3950 = call float @dx.op.unary.f32(i32 7, float %3948)  ; Saturate(value)
  %3951 = fsub fast float 1.000000e+00, %3949
  %3952 = fsub fast float 1.000000e+00, %3950
  %3953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %31, float %3951, float %3952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = fcmp fast ugt float %3954, 0.000000e+00
  br i1 %3955, label %3956, label %4259

; <label>:3956                                    ; preds = %3918
  %3957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %3958 = extractvalue %dx.types.CBufRet.f32 %3957, 2
  %3959 = fmul fast float %3958, %3954
  %3960 = extractvalue %dx.types.CBufRet.f32 %3957, 3
  %3961 = fadd fast float %3960, %3959
  %3962 = extractvalue %dx.types.CBufRet.f32 %3923, 2
  %3963 = fadd fast float %3961, %3930
  %3964 = fmul fast float %3936, %3924
  %3965 = call float @dx.op.tertiary.f32(i32 46, float %3939, float %3927, float %3964)  ; FMad(a,b,c)
  %3966 = call float @dx.op.tertiary.f32(i32 46, float %3963, float %3962, float %3965)  ; FMad(a,b,c)
  %3967 = fsub fast float %3966, %3930
  %3968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3969 = extractvalue %dx.types.CBufRet.f32 %3968, 2
  %3970 = fsub fast float %3967, %3969
  %3971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %31, float %3951, float %3952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3972 = extractvalue %dx.types.ResRet.f32 %3971, 0
  %3973 = extractvalue %dx.types.ResRet.f32 %3971, 1
  %3974 = extractvalue %dx.types.ResRet.f32 %3971, 2
  %3975 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %12, %dx.types.Handle %31, float %3951, float %3952, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3976 = extractvalue %dx.types.ResRet.f32 %3975, 0
  %3977 = extractvalue %dx.types.ResRet.f32 %3975, 1
  %3978 = extractvalue %dx.types.ResRet.f32 %3975, 2
  %3979 = fadd fast float %3976, %3972
  %3980 = fmul fast float %3979, 0x3F847AE140000000
  %3981 = fadd fast float %3977, %3973
  %3982 = fmul fast float %3981, 0x3F847AE140000000
  %3983 = fadd fast float %3978, %3974
  %3984 = fmul fast float %3983, 0x3F847AE140000000
  br label %4259

; <label>:3985                                    ; preds = %3838
  %3986 = and i32 %141, 1
  %3987 = icmp eq i32 %3986, 0
  br i1 %3987, label %4259, label %3988

; <label>:3988                                    ; preds = %3985
  %3989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %3990 = extractvalue %dx.types.CBufRet.f32 %3989, 0
  %3991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %3992 = extractvalue %dx.types.CBufRet.f32 %3991, 0
  %3993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %3994 = extractvalue %dx.types.CBufRet.f32 %3993, 0
  %3995 = extractvalue %dx.types.CBufRet.f32 %3989, 1
  %3996 = extractvalue %dx.types.CBufRet.f32 %3991, 1
  %3997 = extractvalue %dx.types.CBufRet.f32 %3993, 1
  %3998 = extractvalue %dx.types.CBufRet.f32 %3989, 3
  %3999 = extractvalue %dx.types.CBufRet.f32 %3991, 3
  %4000 = extractvalue %dx.types.CBufRet.f32 %3993, 3
  %4001 = fadd fast float %3998, %3904
  %4002 = fadd fast float %3999, %3905
  %4003 = fadd fast float %4000, %3906
  %4004 = fmul fast float %4001, %3990
  %4005 = call float @dx.op.tertiary.f32(i32 46, float %4002, float %3992, float %4004)  ; FMad(a,b,c)
  %4006 = call float @dx.op.tertiary.f32(i32 46, float %4003, float %3994, float %4005)  ; FMad(a,b,c)
  %4007 = fmul fast float %4001, %3995
  %4008 = call float @dx.op.tertiary.f32(i32 46, float %4002, float %3996, float %4007)  ; FMad(a,b,c)
  %4009 = call float @dx.op.tertiary.f32(i32 46, float %4003, float %3997, float %4008)  ; FMad(a,b,c)
  %4010 = fsub fast float %4006, %3998
  %4011 = fsub fast float %4009, %3999
  %4012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4013 = extractvalue %dx.types.CBufRet.f32 %4012, 0
  %4014 = extractvalue %dx.types.CBufRet.f32 %4012, 1
  %4015 = extractvalue %dx.types.CBufRet.f32 %4012, 2
  %4016 = extractvalue %dx.types.CBufRet.f32 %4012, 3
  %4017 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4018 = extractvalue %dx.types.CBufRet.f32 %4017, 3
  %4019 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4020 = extractvalue %dx.types.CBufRet.i32 %4019, 0
  %4021 = extractvalue %dx.types.CBufRet.i32 %4019, 1
  %4022 = udiv i32 %4021, %4020
  %4023 = fsub fast float %4010, %4013
  %4024 = fsub fast float %4011, %4014
  %4025 = call float @dx.op.binary.f32(i32 35, float %4023, float 0.000000e+00)  ; FMax(a,b)
  %4026 = call float @dx.op.binary.f32(i32 35, float %4024, float 0.000000e+00)  ; FMax(a,b)
  %4027 = call float @dx.op.binary.f32(i32 36, float %4025, float %4015)  ; FMin(a,b)
  %4028 = call float @dx.op.binary.f32(i32 36, float %4026, float %4016)  ; FMin(a,b)
  %4029 = add i32 %4020, -1
  %4030 = add i32 %4022, -1
  %4031 = fmul fast float %4027, %4018
  %4032 = fmul fast float %4028, %4018
  %4033 = fptoui float %4031 to i32
  %4034 = fptoui float %4032 to i32
  %4035 = call i32 @dx.op.binary.i32(i32 40, i32 %4033, i32 %4029)  ; UMin(a,b)
  %4036 = call i32 @dx.op.binary.i32(i32 40, i32 %4034, i32 %4030)  ; UMin(a,b)
  %4037 = mul i32 %4036, %4020
  %4038 = add i32 %4037, %4035
  %4039 = shl i32 %4038, 2
  %4040 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %8, i32 %4039, i32 undef)  ; BufferLoad(srv,index,wot)
  %4041 = extractvalue %dx.types.ResRet.i32 %4040, 0
  %4042 = icmp eq i32 %4041, -1
  br i1 %4042, label %4259, label %4043

; <label>:4043                                    ; preds = %3988
  %4044 = mul i32 %4041, 148
  %4045 = add i32 %4044, 4
  %4046 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4045, i32 undef)  ; BufferLoad(srv,index,wot)
  %4047 = extractvalue %dx.types.ResRet.f32 %4046, 0
  %4048 = add i32 %4044, 8
  %4049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4048, i32 undef)  ; BufferLoad(srv,index,wot)
  %4050 = extractvalue %dx.types.ResRet.f32 %4049, 0
  %4051 = add i32 %4044, 36
  %4052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4051, i32 undef)  ; BufferLoad(srv,index,wot)
  %4053 = extractvalue %dx.types.ResRet.f32 %4052, 0
  %4054 = add i32 %4044, 60
  %4055 = add i32 %4044, 92
  %4056 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4055, i32 undef)  ; BufferLoad(srv,index,wot)
  %4057 = extractvalue %dx.types.ResRet.i32 %4056, 0
  %4058 = add i32 %4044, 116
  %4059 = fsub fast float %4010, %4047
  %4060 = fsub fast float %4011, %4050
  %4061 = fmul fast float %4018, %4059
  %4062 = fmul fast float %4018, %4060
  %4063 = call float @dx.op.unary.f32(i32 7, float %4061)  ; Saturate(value)
  %4064 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4065 = fsub fast float 1.000000e+00, %4064
  %4066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4067 = extractvalue %dx.types.CBufRet.f32 %4066, 2
  %4068 = call float @dx.op.unary.f32(i32 83, float %4063)  ; DerivCoarseX(value)
  %4069 = call float @dx.op.unary.f32(i32 83, float %4065)  ; DerivCoarseX(value)
  %4070 = call float @dx.op.unary.f32(i32 84, float %4063)  ; DerivCoarseY(value)
  %4071 = call float @dx.op.unary.f32(i32 84, float %4065)  ; DerivCoarseY(value)
  %4072 = fmul fast float %4068, %4067
  %4073 = fmul fast float %4069, %4067
  %4074 = fmul fast float %4070, %4067
  %4075 = fmul fast float %4071, %4067
  %4076 = call float @dx.op.dot2.f32(i32 54, float %4074, float %4075, float %4074, float %4075)  ; Dot2(ax,ay,bx,by)
  %4077 = call float @dx.op.dot2.f32(i32 54, float %4072, float %4073, float %4072, float %4073)  ; Dot2(ax,ay,bx,by)
  %4078 = call float @dx.op.binary.f32(i32 35, float %4077, float %4076)  ; FMax(a,b)
  %4079 = call float @dx.op.unary.f32(i32 23, float %4078)  ; Log(value)
  %4080 = fmul fast float %4079, 5.000000e-01
  %4081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4082 = extractvalue %dx.types.CBufRet.f32 %4081, 1
  %4083 = fadd fast float %4082, %4080
  %4084 = call float @dx.op.binary.f32(i32 35, float %4083, float 0.000000e+00)  ; FMax(a,b)
  %4085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4086 = extractvalue %dx.types.CBufRet.f32 %4085, 3
  %4087 = fadd fast float %4086, %4084
  %4088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4089 = extractvalue %dx.types.CBufRet.f32 %4088, 3
  %4090 = fadd fast float %4087, %4089
  %4091 = add i32 %4057, 0
  %4092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4091, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4093 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4092, i32 0)  ; GetDimensions(handle,mipLevel)
  %4094 = extractvalue %dx.types.Dimensions %4093, 0
  %4095 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4094)  ; FirstbitLo(value)
  %4096 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.i32 %4096, 1
  %4098 = sub nsw i32 %4097, %4095
  %4099 = sitofp i32 %4098 to float
  %4100 = fsub fast float %4090, %4099
  %4101 = call float @dx.op.binary.f32(i32 35, float %4100, float 0.000000e+00)  ; FMax(a,b)
  %4102 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4092, %dx.types.Handle %29, float %4063, float %4065, float %4053, float undef, i32 0, i32 0, i32 undef, float %4101)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4103 = extractvalue %dx.types.ResRet.f32 %4102, 0
  %4104 = fcmp ule float %4103, 0x3FE0101020000000
  %4105 = extractvalue %dx.types.CBufRet.i32 %4096, 0
  %4106 = and i32 %4105, 128
  %4107 = icmp ne i32 %4106, 0
  %4108 = and i1 %4104, %4107
  br i1 %4108, label %4259, label %4109

; <label>:4109                                    ; preds = %4043
  %4110 = add i32 %4044, 20
  %4111 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4110, i32 undef)  ; BufferLoad(srv,index,wot)
  %4112 = extractvalue %dx.types.ResRet.f32 %4111, 0
  %4113 = add i32 %4044, 24
  %4114 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4113, i32 undef)  ; BufferLoad(srv,index,wot)
  %4115 = extractvalue %dx.types.ResRet.f32 %4114, 0
  %4116 = add i32 %4044, 40
  %4117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4116, i32 undef)  ; BufferLoad(srv,index,wot)
  %4118 = extractvalue %dx.types.ResRet.f32 %4117, 0
  %4119 = add i32 %4044, 96
  %4120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4119, i32 undef)  ; BufferLoad(srv,index,wot)
  %4121 = extractvalue %dx.types.ResRet.i32 %4120, 0
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 2
  %4124 = fmul fast float %4123, %4063
  %4125 = fmul fast float %4123, %4065
  %4126 = extractvalue %dx.types.CBufRet.f32 %4122, 3
  %4127 = fadd fast float %4124, %4126
  %4128 = fadd fast float %4125, %4126
  %4129 = add i32 %4121, 0
  %4130 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4129, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4131 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4130, i32 0)  ; GetDimensions(handle,mipLevel)
  %4132 = extractvalue %dx.types.Dimensions %4131, 0
  %4133 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4132)  ; FirstbitLo(value)
  %4134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.i32 %4134, 1
  %4136 = sub nsw i32 %4135, %4133
  %4137 = sitofp i32 %4136 to float
  %4138 = fsub fast float %4087, %4137
  %4139 = call float @dx.op.binary.f32(i32 35, float %4138, float 0.000000e+00)  ; FMax(a,b)
  %4140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4130, %dx.types.Handle %29, float %4127, float %4128, float %4118, float undef, i32 0, i32 0, i32 undef, float %4139)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4141 = extractvalue %dx.types.ResRet.f32 %4140, 0
  %4142 = fmul fast float %4141, %4112
  %4143 = fadd fast float %4142, %4115
  %4144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4145 = extractvalue %dx.types.CBufRet.f32 %4144, 0
  %4146 = extractvalue %dx.types.CBufRet.f32 %4144, 1
  %4147 = extractvalue %dx.types.CBufRet.f32 %4144, 2
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 3
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 3
  %4152 = extractvalue %dx.types.CBufRet.f32 %4144, 3
  %4153 = fadd fast float %4149, %4010
  %4154 = fadd fast float %4151, %4011
  %4155 = fadd fast float %4143, %4152
  %4156 = fmul fast float %4153, %4145
  %4157 = call float @dx.op.tertiary.f32(i32 46, float %4154, float %4146, float %4156)  ; FMad(a,b,c)
  %4158 = call float @dx.op.tertiary.f32(i32 46, float %4155, float %4147, float %4157)  ; FMad(a,b,c)
  %4159 = fsub fast float %4158, %4152
  %4160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4161 = extractvalue %dx.types.CBufRet.f32 %4160, 2
  %4162 = fsub fast float %4159, %4161
  %4163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4164 = extractvalue %dx.types.CBufRet.i32 %4163, 0
  %4165 = call i32 @dx.op.binary.i32(i32 40, i32 %4041, i32 %4164)  ; UMin(a,b)
  %4166 = mul i32 %4165, 36
  %4167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4166, i32 undef)  ; BufferLoad(srv,index,wot)
  %4168 = extractvalue %dx.types.ResRet.i32 %4167, 0
  %4169 = add i32 %4166, 4
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 0
  %4172 = fmul fast float %4171, %4063
  %4173 = fmul fast float %4171, %4065
  %4174 = extractvalue %dx.types.CBufRet.f32 %4170, 1
  %4175 = fadd fast float %4172, %4174
  %4176 = fadd fast float %4173, %4174
  %4177 = icmp eq i32 %4168, 0
  br i1 %4177, label %4246, label %4178

; <label>:4178                                    ; preds = %4109
  br label %4179

; <label>:4179                                    ; preds = %4236, %4178
  %4180 = phi float [ %4237, %4236 ], [ 0.000000e+00, %4178 ]
  %4181 = phi float [ %4238, %4236 ], [ 0.000000e+00, %4178 ]
  %4182 = phi float [ %4239, %4236 ], [ 0.000000e+00, %4178 ]
  %4183 = phi float [ %4240, %4236 ], [ 0.000000e+00, %4178 ]
  %4184 = phi float [ %4241, %4236 ], [ 0.000000e+00, %4178 ]
  %4185 = phi float [ %4242, %4236 ], [ 0.000000e+00, %4178 ]
  %4186 = phi i32 [ %4243, %4236 ], [ 0, %4178 ]
  %4187 = shl i32 %4186, 2
  %4188 = add i32 %4054, %4187
  %4189 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %10, i32 %4188, i32 undef)  ; BufferLoad(srv,index,wot)
  %4190 = extractvalue %dx.types.ResRet.f32 %4189, 0
  %4191 = add i32 %4058, %4187
  %4192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4191, i32 undef)  ; BufferLoad(srv,index,wot)
  %4193 = extractvalue %dx.types.ResRet.i32 %4192, 0
  %4194 = add i32 %4193, 0
  %4195 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4194, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4196 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4195, i32 0)  ; GetDimensions(handle,mipLevel)
  %4197 = extractvalue %dx.types.Dimensions %4196, 0
  %4198 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4197)  ; FirstbitLo(value)
  %4199 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.i32 %4199, 1
  %4201 = sub nsw i32 %4200, %4198
  %4202 = sitofp i32 %4201 to float
  %4203 = fsub fast float %4087, %4202
  %4204 = call float @dx.op.binary.f32(i32 35, float %4203, float 0.000000e+00)  ; FMax(a,b)
  %4205 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4195, %dx.types.Handle %29, float %4175, float %4176, float %4190, float undef, i32 0, i32 0, i32 undef, float %4204)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4206 = extractvalue %dx.types.ResRet.f32 %4205, 0
  %4207 = fcmp fast ogt float %4206, 0.000000e+00
  br i1 %4207, label %4208, label %4236

; <label>:4208                                    ; preds = %4179
  %4209 = add i32 %4169, %4187
  %4210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4209, i32 undef)  ; BufferLoad(srv,index,wot)
  %4211 = extractvalue %dx.types.ResRet.i32 %4210, 0
  %4212 = and i32 %4211, 32767
  %4213 = mul nuw nsw i32 %4212, 928
  %4214 = add nuw nsw i32 %4213, 48
  %4215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.f32 %4215, 0
  %4217 = extractvalue %dx.types.ResRet.f32 %4215, 1
  %4218 = extractvalue %dx.types.ResRet.f32 %4215, 2
  %4219 = add nuw nsw i32 %4213, 60
  %4220 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4219, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.f32 %4220, 0
  %4222 = extractvalue %dx.types.ResRet.f32 %4220, 1
  %4223 = extractvalue %dx.types.ResRet.f32 %4220, 2
  %4224 = fmul fast float %4216, %4206
  %4225 = fmul fast float %4217, %4206
  %4226 = fmul fast float %4218, %4206
  %4227 = fadd fast float %4224, %4180
  %4228 = fadd fast float %4225, %4181
  %4229 = fadd fast float %4226, %4182
  %4230 = fmul fast float %4221, %4206
  %4231 = fmul fast float %4222, %4206
  %4232 = fmul fast float %4223, %4206
  %4233 = fadd fast float %4230, %4183
  %4234 = fadd fast float %4231, %4184
  %4235 = fadd fast float %4232, %4185
  br label %4236

; <label>:4236                                    ; preds = %4208, %4179
  %4237 = phi float [ %4227, %4208 ], [ %4180, %4179 ]
  %4238 = phi float [ %4228, %4208 ], [ %4181, %4179 ]
  %4239 = phi float [ %4229, %4208 ], [ %4182, %4179 ]
  %4240 = phi float [ %4233, %4208 ], [ %4183, %4179 ]
  %4241 = phi float [ %4234, %4208 ], [ %4184, %4179 ]
  %4242 = phi float [ %4235, %4208 ], [ %4185, %4179 ]
  %4243 = add nuw i32 %4186, 1
  %4244 = icmp eq i32 %4243, %4168
  br i1 %4244, label %4245, label %4179

; <label>:4245                                    ; preds = %4236
  br label %4246

; <label>:4246                                    ; preds = %4245, %4109
  %4247 = phi float [ 0.000000e+00, %4109 ], [ %4237, %4245 ]
  %4248 = phi float [ 0.000000e+00, %4109 ], [ %4238, %4245 ]
  %4249 = phi float [ 0.000000e+00, %4109 ], [ %4239, %4245 ]
  %4250 = phi float [ 0.000000e+00, %4109 ], [ %4240, %4245 ]
  %4251 = phi float [ 0.000000e+00, %4109 ], [ %4241, %4245 ]
  %4252 = phi float [ 0.000000e+00, %4109 ], [ %4242, %4245 ]
  %4253 = fadd fast float %4250, %4247
  %4254 = fmul fast float %4253, 0x3F847AE140000000
  %4255 = fadd fast float %4251, %4248
  %4256 = fmul fast float %4255, 0x3F847AE140000000
  %4257 = fadd fast float %4252, %4249
  %4258 = fmul fast float %4257, 0x3F847AE140000000
  br label %4259

; <label>:4259                                    ; preds = %4246, %4043, %3988, %3985, %3956, %3918
  %4260 = phi float [ %3970, %3956 ], [ -1.310720e+05, %3918 ], [ %4162, %4246 ], [ -1.310720e+05, %3988 ], [ -1.310720e+05, %4043 ], [ -1.310720e+05, %3985 ]
  %4261 = phi float [ %3980, %3956 ], [ 0.000000e+00, %3918 ], [ %4254, %4246 ], [ 0.000000e+00, %3988 ], [ 0.000000e+00, %4043 ], [ 0.000000e+00, %3985 ]
  %4262 = phi float [ %3982, %3956 ], [ 0.000000e+00, %3918 ], [ %4256, %4246 ], [ 0.000000e+00, %3988 ], [ 0.000000e+00, %4043 ], [ 0.000000e+00, %3985 ]
  %4263 = phi float [ %3984, %3956 ], [ 0.000000e+00, %3918 ], [ %4258, %4246 ], [ 0.000000e+00, %3988 ], [ 0.000000e+00, %4043 ], [ 0.000000e+00, %3985 ]
  %4264 = phi i1 [ true, %3956 ], [ false, %3918 ], [ true, %4246 ], [ false, %3988 ], [ false, %4043 ], [ false, %3985 ]
  %4265 = and i32 %141, 3
  %4266 = icmp eq i32 %4265, 1
  %4267 = select i1 %4266, float 1.000000e+00, float 0.000000e+00
  %4268 = fsub fast float %4260, %125
  %4269 = call float @dx.op.unary.f32(i32 7, float %4268)  ; Saturate(value)
  %4270 = select i1 %4264, float %4269, float 1.000000e+00
  %4271 = fmul fast float %4270, %4267
  %4272 = icmp eq i32 %4265, 3
  %4273 = select i1 %4272, float 1.000000e+00, float %4271
  %4274 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4273)  ; FMax(a,b)
  %4275 = call float @dx.op.unary.f32(i32 7, float %4274)  ; Saturate(value)
  %4276 = fcmp fast une float %4275, 0.000000e+00
  %4277 = call float @dx.op.dot3.f32(i32 55, float %123, float %124, float %125, float %123, float %124, float %125)  ; Dot3(ax,ay,az,bx,by,bz)
  %4278 = call float @dx.op.unary.f32(i32 25, float %4277)  ; Rsqrt(value)
  br i1 %4276, label %4286, label %4279

; <label>:4279                                    ; preds = %4259
  %4280 = fmul fast float %4278, %123
  %4281 = fmul fast float %4278, %124
  %4282 = fmul fast float %4278, %125
  %4283 = fsub fast float -0.000000e+00, %4280
  %4284 = fsub fast float -0.000000e+00, %4281
  %4285 = fsub fast float -0.000000e+00, %4282
  br label %4454

; <label>:4286                                    ; preds = %4259
  %4287 = fmul fast float %123, %4278
  %4288 = fsub fast float -0.000000e+00, %4287
  %4289 = fmul fast float %124, %4278
  %4290 = fsub fast float -0.000000e+00, %4289
  %4291 = fmul fast float %125, %4278
  %4292 = fsub fast float -0.000000e+00, %4291
  %4293 = call float @dx.op.dot3.f32(i32 55, float %4288, float %4290, float %4292, float %73, float %75, float %77)  ; Dot3(ax,ay,az,bx,by,bz)
  %4294 = fmul fast float %4275, 2.500000e+00
  %4295 = call float @dx.op.unary.f32(i32 7, float %4294)  ; Saturate(value)
  %4296 = fmul fast float %4275, 0x4013FFFFE0000000
  %4297 = fadd fast float %4296, 0xBFFFFFFFE0000000
  %4298 = call float @dx.op.unary.f32(i32 7, float %4297)  ; Saturate(value)
  %4299 = fmul fast float %4275, 0x4004000020000000
  %4300 = fadd fast float %4299, 0xBFF8000040000000
  %4301 = call float @dx.op.unary.f32(i32 7, float %4300)  ; Saturate(value)
  %4302 = call float @dx.op.unary.f32(i32 7, float %4295)  ; Saturate(value)
  %4303 = fmul fast float %3798, 1.000000e+01
  %4304 = call float @dx.op.unary.f32(i32 7, float %4303)  ; Saturate(value)
  %4305 = fmul fast float %4304, 2.000000e+00
  %4306 = fsub fast float 3.000000e+00, %4305
  %4307 = fmul fast float %4304, %4304
  %4308 = fmul fast float %4307, %4306
  %4309 = fsub fast float 1.000000e+00, %4308
  %4310 = fsub fast float 0x3FE3333340000000, %3819
  %4311 = fmul fast float %4310, 0x400AAAAAA0000000
  %4312 = call float @dx.op.unary.f32(i32 7, float %4311)  ; Saturate(value)
  %4313 = fmul fast float %4309, %4312
  %4314 = fmul fast float %3897, 0x3FEA2B8620000000
  %4315 = fmul fast float %3898, 0x3FEA2B8620000000
  %4316 = fmul fast float %3899, 0x3FEA2B8620000000
  %4317 = fadd fast float %4314, 0x3FC81DFBA0000000
  %4318 = fmul fast float %4317, %3897
  %4319 = fadd fast float %4318, 0x3F910E6020000000
  %4320 = fadd fast float %4315, 0x3FC81DFBA0000000
  %4321 = fmul fast float %4320, %3898
  %4322 = fadd fast float %4321, 0x3F910E6020000000
  %4323 = fadd fast float %4316, 0x3FC81DFBA0000000
  %4324 = fmul fast float %4323, %3899
  %4325 = fadd fast float %4324, 0x3F910E6020000000
  %4326 = call float @dx.op.unary.f32(i32 7, float %4319)  ; Saturate(value)
  %4327 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4328 = call float @dx.op.unary.f32(i32 7, float %4325)  ; Saturate(value)
  %4329 = fsub fast float %4326, %3897
  %4330 = fsub fast float %4327, %3898
  %4331 = fsub fast float %4328, %3899
  %4332 = fmul fast float %4329, %4302
  %4333 = fmul fast float %4332, %4313
  %4334 = fmul fast float %4330, %4302
  %4335 = fmul fast float %4334, %4313
  %4336 = fmul fast float %4331, %4302
  %4337 = fmul fast float %4336, %4313
  %4338 = fadd fast float %4333, %3897
  %4339 = fadd fast float %4335, %3898
  %4340 = fadd fast float %4337, %3899
  %4341 = fmul fast float %3765, %3765
  %4342 = fmul fast float %4341, %4341
  %4343 = fadd fast float %4298, 1.000000e+00
  %4344 = fsub fast float %4343, %4313
  %4345 = call float @dx.op.unary.f32(i32 7, float %4344)  ; Saturate(value)
  %4346 = call float @dx.op.dot3.f32(i32 55, float %73, float %75, float %77, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4347 = call float @dx.op.unary.f32(i32 7, float %4346)  ; Saturate(value)
  %4348 = fsub fast float 1.000000e+00, %4342
  %4349 = call float @dx.op.binary.f32(i32 36, float %4345, float %4348)  ; FMin(a,b)
  %4350 = call float @dx.op.unary.f32(i32 7, float %4301)  ; Saturate(value)
  %4351 = call float @dx.op.binary.f32(i32 35, float %4349, float %4350)  ; FMax(a,b)
  %4352 = fadd fast float %4347, 0xBFE4CCCCC0000000
  %4353 = fmul fast float %4352, 0x4006DB6DA0000000
  %4354 = call float @dx.op.unary.f32(i32 7, float %4353)  ; Saturate(value)
  %4355 = fmul fast float %4354, 2.000000e+00
  %4356 = fsub fast float 3.000000e+00, %4355
  %4357 = bitcast float %3816 to i32
  %4358 = ashr i32 %4357, 1
  %4359 = add nsw i32 %4358, 532487669
  %4360 = bitcast i32 %4359 to float
  %4361 = fsub fast float 1.000000e+00, %4360
  %4362 = bitcast float %4361 to i32
  %4363 = sub nsw i32 2129859010, %4362
  %4364 = bitcast i32 %4363 to float
  %4365 = fmul fast float %4364, 2.000000e+00
  %4366 = bitcast float %3817 to i32
  %4367 = ashr i32 %4366, 1
  %4368 = add nsw i32 %4367, 532487669
  %4369 = bitcast i32 %4368 to float
  %4370 = fsub fast float 1.000000e+00, %4369
  %4371 = bitcast float %4370 to i32
  %4372 = sub nsw i32 2129859010, %4371
  %4373 = bitcast i32 %4372 to float
  %4374 = fmul fast float %4373, 2.000000e+00
  %4375 = bitcast float %3818 to i32
  %4376 = ashr i32 %4375, 1
  %4377 = add nsw i32 %4376, 532487669
  %4378 = bitcast i32 %4377 to float
  %4379 = fsub fast float 1.000000e+00, %4378
  %4380 = bitcast float %4379 to i32
  %4381 = sub nsw i32 2129859010, %4380
  %4382 = bitcast i32 %4381 to float
  %4383 = fmul fast float %4382, 2.000000e+00
  %4384 = fsub fast float 0x4002A9FBE0000000, %4365
  %4385 = fadd fast float %4365, 0x3FD54FDF00000000
  %4386 = bitcast float %4385 to i32
  %4387 = sub nsw i32 2129859010, %4386
  %4388 = bitcast i32 %4387 to float
  %4389 = fmul fast float %4388, %4384
  %4390 = fmul fast float %4389, %4389
  %4391 = fsub fast float 0x4002A9FBE0000000, %4374
  %4392 = fadd fast float %4374, 0x3FD54FDF00000000
  %4393 = bitcast float %4392 to i32
  %4394 = sub nsw i32 2129859010, %4393
  %4395 = bitcast i32 %4394 to float
  %4396 = fmul fast float %4395, %4391
  %4397 = fmul fast float %4396, %4396
  %4398 = fsub fast float 0x4002A9FBE0000000, %4383
  %4399 = fadd fast float %4383, 0x3FD54FDF00000000
  %4400 = bitcast float %4399 to i32
  %4401 = sub nsw i32 2129859010, %4400
  %4402 = bitcast i32 %4401 to float
  %4403 = fmul fast float %4402, %4398
  %4404 = fmul fast float %4403, %4403
  %4405 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4390)  ; FMax(a,b)
  %4406 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4397)  ; FMax(a,b)
  %4407 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4404)  ; FMax(a,b)
  %4408 = fsub fast float 1.000000e+00, %4293
  %4409 = fadd fast float %4408, %4309
  %4410 = call float @dx.op.unary.f32(i32 7, float %4409)  ; Saturate(value)
  %4411 = fsub fast float 1.000000e+00, %4273
  %4412 = fmul fast float %4351, %4411
  %4413 = fmul fast float %4354, %4354
  %4414 = fmul fast float %4413, %4412
  %4415 = fmul fast float %4414, %4356
  %4416 = fmul fast float %4411, 0xBFE99999A0000000
  %4417 = fmul fast float %4416, %4302
  %4418 = fmul fast float %4417, %4313
  %4419 = fadd fast float %4418, 1.000000e+00
  %4420 = fadd fast float %3819, -1.000000e+00
  %4421 = fmul fast float %4419, %4420
  %4422 = fadd fast float %4421, 1.000000e+00
  %4423 = fsub fast float %4405, %3816
  %4424 = fsub fast float %4406, %3817
  %4425 = fsub fast float %4407, %3818
  %4426 = fmul fast float %4415, %4423
  %4427 = fmul fast float %4415, %4424
  %4428 = fmul fast float %4415, %4425
  %4429 = fadd fast float %4426, %3816
  %4430 = fadd fast float %4427, %3817
  %4431 = fadd fast float %4428, %3818
  %4432 = fsub fast float %73, %3795
  %4433 = fsub fast float %75, %3796
  %4434 = fsub fast float %77, %3797
  %4435 = fmul fast float %4415, %4432
  %4436 = fmul fast float %4415, %4433
  %4437 = fmul fast float %4415, %4434
  %4438 = fadd fast float %4435, %3795
  %4439 = fadd fast float %4436, %3796
  %4440 = fadd fast float %4437, %3797
  %4441 = fmul fast float %4415, %4410
  %4442 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  %4443 = fsub fast float 1.000000e+00, %4442
  %4444 = fmul fast float %4441, %4443
  %4445 = fadd fast float %4444, %4442
  %4446 = fsub fast float 1.000000e+00, %3765
  %4447 = fmul fast float %4415, %4446
  %4448 = fadd fast float %4447, %3765
  %4449 = call float @dx.op.dot3.f32(i32 55, float %4438, float %4439, float %4440, float %4438, float %4439, float %4440)  ; Dot3(ax,ay,az,bx,by,bz)
  %4450 = call float @dx.op.unary.f32(i32 25, float %4449)  ; Rsqrt(value)
  %4451 = fmul fast float %4438, %4450
  %4452 = fmul fast float %4439, %4450
  %4453 = fmul fast float %4440, %4450
  br label %4454

; <label>:4454                                    ; preds = %4286, %4279
  %4455 = phi float [ %4285, %4279 ], [ %4292, %4286 ]
  %4456 = phi float [ %4284, %4279 ], [ %4290, %4286 ]
  %4457 = phi float [ %4283, %4279 ], [ %4288, %4286 ]
  %4458 = phi float [ %4282, %4279 ], [ %4291, %4286 ]
  %4459 = phi float [ %4281, %4279 ], [ %4289, %4286 ]
  %4460 = phi float [ %4280, %4279 ], [ %4287, %4286 ]
  %4461 = phi float [ %3816, %4279 ], [ %4429, %4286 ]
  %4462 = phi float [ %3817, %4279 ], [ %4430, %4286 ]
  %4463 = phi float [ %3818, %4279 ], [ %4431, %4286 ]
  %4464 = phi float [ %3897, %4279 ], [ %4338, %4286 ]
  %4465 = phi float [ %3898, %4279 ], [ %4339, %4286 ]
  %4466 = phi float [ %3899, %4279 ], [ %4340, %4286 ]
  %4467 = phi float [ %3795, %4279 ], [ %4451, %4286 ]
  %4468 = phi float [ %3796, %4279 ], [ %4452, %4286 ]
  %4469 = phi float [ %3797, %4279 ], [ %4453, %4286 ]
  %4470 = phi float [ %3819, %4279 ], [ %4445, %4286 ]
  %4471 = phi float [ %3765, %4279 ], [ %4448, %4286 ]
  %4472 = select i1 %167, float 0.000000e+00, float %4463
  %4473 = call float @dx.op.dot3.f32(i32 55, float %4467, float %4468, float %4469, float %4457, float %4456, float %4455)  ; Dot3(ax,ay,az,bx,by,bz)
  %4474 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4475 = call float @dx.op.dot3.f32(i32 55, float %4460, float %4459, float %4458, float %4467, float %4468, float %4469)  ; Dot3(ax,ay,az,bx,by,bz)
  %4476 = fmul fast float %4475, 2.000000e+00
  %4477 = fmul fast float %4476, %4467
  %4478 = fmul fast float %4476, %4468
  %4479 = fmul fast float %4476, %4469
  %4480 = fsub fast float %4460, %4477
  %4481 = fsub fast float %4459, %4478
  %4482 = fsub fast float %4458, %4479
  %4483 = call float @dx.op.binary.f32(i32 36, float %4471, float 1.000000e+00)  ; FMin(a,b)
  %4484 = fsub fast float 1.000000e+00, %4471
  %4485 = bitcast float %4484 to i32
  %4486 = sub nsw i32 2129859010, %4485
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 0
  %4489 = extractvalue %dx.types.CBufRet.f32 %4487, 1
  %4490 = extractvalue %dx.types.CBufRet.f32 %4487, 2
  %4491 = fadd fast float %4488, %123
  %4492 = fadd fast float %4489, %124
  %4493 = fadd fast float %4490, %125
  %4494 = fmul fast float %4467, 3.200000e+01
  %4495 = fmul fast float %4468, 3.200000e+01
  %4496 = fadd fast float %4491, %4494
  %4497 = fadd fast float %4492, %4495
  %4498 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %4499 = extractvalue %dx.types.CBufRet.f32 %4498, 0
  %4500 = extractvalue %dx.types.CBufRet.f32 %4498, 1
  %4501 = fsub fast float %4496, %4499
  %4502 = fsub fast float %4497, %4500
  %4503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %4504 = extractvalue %dx.types.CBufRet.f32 %4503, 0
  %4505 = extractvalue %dx.types.CBufRet.f32 %4503, 1
  %4506 = fmul fast float %4501, %4504
  %4507 = fmul fast float %4502, %4505
  %4508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.f32 %4508, 0
  %4510 = fmul fast float %4506, %4509
  %4511 = extractvalue %dx.types.CBufRet.f32 %4508, 1
  %4512 = fadd fast float %4510, %4511
  %4513 = extractvalue %dx.types.CBufRet.f32 %4508, 2
  %4514 = fmul fast float %4513, %4507
  %4515 = extractvalue %dx.types.CBufRet.f32 %4508, 3
  %4516 = fadd fast float %4514, %4515
  %4517 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %31, float %4512, float %4516, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4518 = extractvalue %dx.types.ResRet.f32 %4517, 0
  %4519 = extractvalue %dx.types.ResRet.f32 %4517, 1
  %4520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %4521 = extractvalue %dx.types.CBufRet.f32 %4520, 1
  %4522 = extractvalue %dx.types.CBufRet.f32 %4520, 0
  %4523 = fsub fast float %4521, %4522
  %4524 = fmul fast float %4523, %4518
  %4525 = fadd fast float %4524, %4522
  %4526 = extractvalue %dx.types.CBufRet.f32 %4520, 3
  %4527 = extractvalue %dx.types.CBufRet.f32 %4520, 2
  %4528 = fsub fast float %4526, %4527
  %4529 = fmul fast float %4528, %4519
  %4530 = fadd fast float %4529, %4527
  %4531 = fsub fast float %4493, %4525
  %4532 = fsub fast float %4530, %4525
  %4533 = fdiv fast float %4531, %4532
  %4534 = call float @dx.op.unary.f32(i32 7, float %4533)  ; Saturate(value)
  %4535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %4536 = extractvalue %dx.types.CBufRet.f32 %4535, 0
  %4537 = fmul fast float %4536, %4534
  %4538 = extractvalue %dx.types.CBufRet.f32 %4535, 1
  %4539 = fadd fast float %4537, %4538
  %4540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %31, float %4512, float %4516, float %4539, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = extractvalue %dx.types.ResRet.f32 %4540, 1
  %4543 = extractvalue %dx.types.ResRet.f32 %4540, 2
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 0
  %4546 = extractvalue %dx.types.CBufRet.f32 %4544, 1
  %4547 = extractvalue %dx.types.CBufRet.f32 %4544, 2
  %4548 = fmul fast float %4545, %4541
  %4549 = fmul fast float %4546, %4542
  %4550 = fmul fast float %4547, %4543
  %4551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %4552 = extractvalue %dx.types.CBufRet.f32 %4551, 0
  %4553 = extractvalue %dx.types.CBufRet.f32 %4551, 1
  %4554 = extractvalue %dx.types.CBufRet.f32 %4551, 2
  %4555 = fadd fast float %4548, %4552
  %4556 = fadd fast float %4549, %4553
  %4557 = fadd fast float %4550, %4554
  %4558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %4559 = extractvalue %dx.types.CBufRet.f32 %4558, 0
  %4560 = fmul fast float %4559, %4506
  %4561 = extractvalue %dx.types.CBufRet.f32 %4558, 1
  %4562 = fadd fast float %4560, %4561
  %4563 = extractvalue %dx.types.CBufRet.f32 %4558, 2
  %4564 = fmul fast float %4563, %4507
  %4565 = extractvalue %dx.types.CBufRet.f32 %4558, 3
  %4566 = fadd fast float %4564, %4565
  %4567 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %4568 = extractvalue %dx.types.CBufRet.f32 %4567, 0
  %4569 = extractvalue %dx.types.CBufRet.f32 %4567, 1
  %4570 = extractvalue %dx.types.CBufRet.f32 %4567, 2
  %4571 = extractvalue %dx.types.CBufRet.f32 %4567, 3
  %4572 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %4573 = extractvalue %dx.types.CBufRet.f32 %4572, 0
  %4574 = extractvalue %dx.types.CBufRet.f32 %4572, 1
  %4575 = extractvalue %dx.types.CBufRet.f32 %4572, 2
  %4576 = extractvalue %dx.types.CBufRet.f32 %4572, 3
  %4577 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4562, float %4566, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4578 = extractvalue %dx.types.ResRet.f32 %4577, 0
  %4579 = extractvalue %dx.types.ResRet.f32 %4577, 1
  %4580 = extractvalue %dx.types.ResRet.f32 %4577, 2
  %4581 = extractvalue %dx.types.ResRet.f32 %4577, 3
  %4582 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4562, float %4566, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4583 = extractvalue %dx.types.ResRet.f32 %4582, 0
  %4584 = extractvalue %dx.types.ResRet.f32 %4582, 1
  %4585 = extractvalue %dx.types.ResRet.f32 %4582, 2
  %4586 = extractvalue %dx.types.ResRet.f32 %4582, 3
  %4587 = fmul fast float %4578, %4555
  %4588 = fmul fast float %4583, %4555
  %4589 = fmul fast float %4585, %4555
  %4590 = fmul fast float %4581, %4555
  %4591 = fadd fast float %4587, %4568
  %4592 = fadd fast float %4588, %4569
  %4593 = fadd fast float %4589, %4570
  %4594 = fadd fast float %4590, %4571
  %4595 = fmul fast float %4579, %4555
  %4596 = fmul fast float %4584, %4555
  %4597 = fadd fast float %4595, %4573
  %4598 = fadd fast float %4596, %4574
  %4599 = fmul fast float %4580, %4555
  %4600 = fmul fast float %4586, %4555
  %4601 = fadd fast float %4599, %4575
  %4602 = fadd fast float %4600, %4576
  %4603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4562, float %4566, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4604 = extractvalue %dx.types.ResRet.f32 %4603, 0
  %4605 = extractvalue %dx.types.ResRet.f32 %4603, 1
  %4606 = extractvalue %dx.types.ResRet.f32 %4603, 2
  %4607 = extractvalue %dx.types.ResRet.f32 %4603, 3
  %4608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4562, float %4566, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4609 = extractvalue %dx.types.ResRet.f32 %4608, 0
  %4610 = extractvalue %dx.types.ResRet.f32 %4608, 1
  %4611 = extractvalue %dx.types.ResRet.f32 %4608, 2
  %4612 = extractvalue %dx.types.ResRet.f32 %4608, 3
  %4613 = fmul fast float %4604, %4556
  %4614 = fmul fast float %4609, %4556
  %4615 = fmul fast float %4611, %4556
  %4616 = fmul fast float %4607, %4556
  %4617 = fadd fast float %4591, %4613
  %4618 = fadd fast float %4592, %4614
  %4619 = fadd fast float %4593, %4615
  %4620 = fadd fast float %4594, %4616
  %4621 = fmul fast float %4605, %4556
  %4622 = fmul fast float %4610, %4556
  %4623 = fadd fast float %4597, %4621
  %4624 = fadd fast float %4598, %4622
  %4625 = fmul fast float %4606, %4556
  %4626 = fmul fast float %4612, %4556
  %4627 = fadd fast float %4601, %4625
  %4628 = fadd fast float %4602, %4626
  %4629 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4562, float %4566, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4630 = extractvalue %dx.types.ResRet.f32 %4629, 0
  %4631 = extractvalue %dx.types.ResRet.f32 %4629, 1
  %4632 = extractvalue %dx.types.ResRet.f32 %4629, 2
  %4633 = extractvalue %dx.types.ResRet.f32 %4629, 3
  %4634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %31, float %4562, float %4566, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = extractvalue %dx.types.ResRet.f32 %4634, 1
  %4637 = extractvalue %dx.types.ResRet.f32 %4634, 2
  %4638 = extractvalue %dx.types.ResRet.f32 %4634, 3
  %4639 = fmul fast float %4630, %4557
  %4640 = fmul fast float %4635, %4557
  %4641 = fmul fast float %4637, %4557
  %4642 = fmul fast float %4633, %4557
  %4643 = fadd fast float %4617, %4639
  %4644 = fadd fast float %4618, %4640
  %4645 = fadd fast float %4619, %4641
  %4646 = fadd fast float %4620, %4642
  %4647 = fmul fast float %4631, %4557
  %4648 = fmul fast float %4636, %4557
  %4649 = fadd fast float %4623, %4647
  %4650 = fadd fast float %4624, %4648
  %4651 = fmul fast float %4632, %4557
  %4652 = fmul fast float %4638, %4557
  %4653 = fadd fast float %4627, %4651
  %4654 = fadd fast float %4628, %4652
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 0
  %4657 = fsub fast float %4491, %4656
  %4658 = fsub fast float %4499, %4491
  %4659 = call float @dx.op.binary.f32(i32 35, float %4658, float %4657)  ; FMax(a,b)
  %4660 = extractvalue %dx.types.CBufRet.f32 %4655, 1
  %4661 = fsub fast float %4492, %4660
  %4662 = fsub fast float %4500, %4492
  %4663 = call float @dx.op.binary.f32(i32 35, float %4662, float %4661)  ; FMax(a,b)
  %4664 = call float @dx.op.binary.f32(i32 35, float %4659, float %4663)  ; FMax(a,b)
  %4665 = extractvalue %dx.types.CBufRet.f32 %4503, 3
  %4666 = fmul fast float %4665, %4664
  %4667 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.f32 %4668, 0
  %4670 = extractvalue %dx.types.CBufRet.f32 %4668, 1
  %4671 = extractvalue %dx.types.CBufRet.f32 %4668, 2
  %4672 = extractvalue %dx.types.CBufRet.f32 %4668, 3
  %4673 = fsub fast float %4669, %4643
  %4674 = fsub fast float %4670, %4644
  %4675 = fsub fast float %4671, %4645
  %4676 = fsub fast float %4672, %4646
  %4677 = fmul fast float %4673, %4667
  %4678 = fmul fast float %4674, %4667
  %4679 = fmul fast float %4675, %4667
  %4680 = fmul fast float %4676, %4667
  %4681 = fadd fast float %4677, %4643
  %4682 = fadd fast float %4678, %4644
  %4683 = fadd fast float %4679, %4645
  %4684 = fadd fast float %4680, %4646
  %4685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %4686 = extractvalue %dx.types.CBufRet.f32 %4685, 0
  %4687 = extractvalue %dx.types.CBufRet.f32 %4685, 1
  %4688 = fsub fast float %4686, %4649
  %4689 = fsub fast float %4687, %4650
  %4690 = fmul fast float %4688, %4667
  %4691 = fmul fast float %4689, %4667
  %4692 = fadd fast float %4690, %4649
  %4693 = fadd fast float %4691, %4650
  %4694 = extractvalue %dx.types.CBufRet.f32 %4685, 2
  %4695 = extractvalue %dx.types.CBufRet.f32 %4685, 3
  %4696 = fsub fast float %4694, %4653
  %4697 = fsub fast float %4695, %4654
  %4698 = fmul fast float %4696, %4667
  %4699 = fmul fast float %4697, %4667
  %4700 = fadd fast float %4698, %4653
  %4701 = fadd fast float %4699, %4654
  %4702 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %4703 = extractvalue %dx.types.CBufRet.f32 %4702, 0
  %4704 = fmul fast float %4703, %4681
  %4705 = fmul fast float %4703, %4682
  %4706 = fmul fast float %4703, %4683
  %4707 = fmul fast float %4703, %4684
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 0
  %4710 = fmul fast float %4709, %4692
  %4711 = fmul fast float %4709, %4693
  %4712 = fadd fast float %4710, %4704
  %4713 = fadd fast float %4711, %4706
  %4714 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %4715 = extractvalue %dx.types.CBufRet.f32 %4714, 0
  %4716 = fmul fast float %4715, %4700
  %4717 = fmul fast float %4715, %4701
  %4718 = fadd fast float %4712, %4716
  %4719 = fadd fast float %4713, %4717
  %4720 = extractvalue %dx.types.CBufRet.f32 %4702, 1
  %4721 = fmul fast float %4720, %4681
  %4722 = fmul fast float %4720, %4682
  %4723 = fmul fast float %4720, %4683
  %4724 = fmul fast float %4720, %4684
  %4725 = extractvalue %dx.types.CBufRet.f32 %4708, 1
  %4726 = fmul fast float %4725, %4692
  %4727 = fmul fast float %4725, %4693
  %4728 = fadd fast float %4726, %4721
  %4729 = fadd fast float %4727, %4723
  %4730 = extractvalue %dx.types.CBufRet.f32 %4714, 1
  %4731 = fmul fast float %4730, %4700
  %4732 = fmul fast float %4730, %4701
  %4733 = fadd fast float %4728, %4731
  %4734 = fadd fast float %4729, %4732
  %4735 = extractvalue %dx.types.CBufRet.f32 %4702, 2
  %4736 = fmul fast float %4735, %4681
  %4737 = fmul fast float %4735, %4682
  %4738 = fmul fast float %4735, %4683
  %4739 = fmul fast float %4735, %4684
  %4740 = extractvalue %dx.types.CBufRet.f32 %4708, 2
  %4741 = fmul fast float %4740, %4692
  %4742 = fmul fast float %4740, %4693
  %4743 = fadd fast float %4741, %4736
  %4744 = fadd fast float %4742, %4738
  %4745 = extractvalue %dx.types.CBufRet.f32 %4714, 2
  %4746 = fmul fast float %4745, %4700
  %4747 = fmul fast float %4745, %4701
  %4748 = fadd fast float %4743, %4746
  %4749 = fadd fast float %4744, %4747
  %4750 = fmul fast float %4737, %4737
  %4751 = fmul fast float %4749, %4749
  %4752 = fmul fast float %4739, %4739
  %4753 = fadd fast float %4752, %4750
  %4754 = fadd fast float %4753, %4751
  %4755 = call float @dx.op.unary.f32(i32 24, float %4754)  ; Sqrt(value)
  %4756 = fcmp fast ugt float %4755, 0.000000e+00
  br i1 %4756, label %4757, label %4772

; <label>:4757                                    ; preds = %4454
  %4758 = fsub fast float -0.000000e+00, %4739
  %4759 = fdiv fast float %4758, %4755
  %4760 = fsub fast float -0.000000e+00, %4737
  %4761 = fdiv fast float %4760, %4755
  %4762 = fdiv fast float %4749, %4755
  %4763 = fmul fast float %4748, 0x3FE279A760000000
  %4764 = fmul fast float %4761, %4737
  %4765 = fmul fast float %4762, %4749
  %4766 = fmul fast float %4759, %4739
  %4767 = fadd fast float %4764, %4766
  %4768 = fsub fast float %4767, %4765
  %4769 = call float @dx.op.unary.f32(i32 6, float %4768)  ; FAbs(value)
  %4770 = fadd fast float %4769, 0x3DDB7CDFE0000000
  %4771 = fdiv fast float %4763, %4770
  br label %4772

; <label>:4772                                    ; preds = %4757, %4454
  %4773 = phi float [ %4771, %4757 ], [ 1.000000e+00, %4454 ]
  %4774 = fmul fast float %4722, %4722
  %4775 = fmul fast float %4734, %4734
  %4776 = fmul fast float %4724, %4724
  %4777 = fadd fast float %4776, %4774
  %4778 = fadd fast float %4777, %4775
  %4779 = call float @dx.op.unary.f32(i32 24, float %4778)  ; Sqrt(value)
  %4780 = fcmp fast ugt float %4779, 0.000000e+00
  br i1 %4780, label %4781, label %4796

; <label>:4781                                    ; preds = %4772
  %4782 = fsub fast float -0.000000e+00, %4724
  %4783 = fdiv fast float %4782, %4779
  %4784 = fsub fast float -0.000000e+00, %4722
  %4785 = fdiv fast float %4784, %4779
  %4786 = fdiv fast float %4734, %4779
  %4787 = fmul fast float %4733, 0x3FE279A760000000
  %4788 = fmul fast float %4785, %4722
  %4789 = fmul fast float %4786, %4734
  %4790 = fmul fast float %4783, %4724
  %4791 = fadd fast float %4788, %4790
  %4792 = fsub fast float %4791, %4789
  %4793 = call float @dx.op.unary.f32(i32 6, float %4792)  ; FAbs(value)
  %4794 = fadd fast float %4793, 0x3DDB7CDFE0000000
  %4795 = fdiv fast float %4787, %4794
  br label %4796

; <label>:4796                                    ; preds = %4781, %4772
  %4797 = phi float [ %4795, %4781 ], [ 1.000000e+00, %4772 ]
  %4798 = call float @dx.op.binary.f32(i32 36, float %4797, float %4773)  ; FMin(a,b)
  %4799 = fmul fast float %4705, %4705
  %4800 = fmul fast float %4719, %4719
  %4801 = fmul fast float %4707, %4707
  %4802 = fadd fast float %4801, %4799
  %4803 = fadd fast float %4802, %4800
  %4804 = call float @dx.op.unary.f32(i32 24, float %4803)  ; Sqrt(value)
  %4805 = fcmp fast ugt float %4804, 0.000000e+00
  br i1 %4805, label %4806, label %4821

; <label>:4806                                    ; preds = %4796
  %4807 = fsub fast float -0.000000e+00, %4707
  %4808 = fdiv fast float %4807, %4804
  %4809 = fsub fast float -0.000000e+00, %4705
  %4810 = fdiv fast float %4809, %4804
  %4811 = fdiv fast float %4719, %4804
  %4812 = fmul fast float %4718, 0x3FE279A760000000
  %4813 = fmul fast float %4810, %4705
  %4814 = fmul fast float %4811, %4719
  %4815 = fmul fast float %4808, %4707
  %4816 = fadd fast float %4813, %4815
  %4817 = fsub fast float %4816, %4814
  %4818 = call float @dx.op.unary.f32(i32 6, float %4817)  ; FAbs(value)
  %4819 = fadd fast float %4818, 0x3DDB7CDFE0000000
  %4820 = fdiv fast float %4812, %4819
  br label %4821

; <label>:4821                                    ; preds = %4806, %4796
  %4822 = phi float [ %4820, %4806 ], [ 1.000000e+00, %4796 ]
  %4823 = call float @dx.op.binary.f32(i32 36, float %4822, float %4798)  ; FMin(a,b)
  %4824 = call float @dx.op.unary.f32(i32 7, float %4823)  ; Saturate(value)
  %4825 = fcmp fast olt float %4824, 1.000000e+00
  br i1 %4825, label %4826, label %4836

; <label>:4826                                    ; preds = %4821
  %4827 = fmul fast float %4824, %4705
  %4828 = fmul fast float %4824, %4719
  %4829 = fmul fast float %4824, %4707
  %4830 = fmul fast float %4824, %4722
  %4831 = fmul fast float %4824, %4734
  %4832 = fmul fast float %4824, %4724
  %4833 = fmul fast float %4824, %4737
  %4834 = fmul fast float %4824, %4749
  %4835 = fmul fast float %4824, %4739
  br label %4836

; <label>:4836                                    ; preds = %4826, %4821
  %4837 = phi float [ %4833, %4826 ], [ %4737, %4821 ]
  %4838 = phi float [ %4834, %4826 ], [ %4749, %4821 ]
  %4839 = phi float [ %4835, %4826 ], [ %4739, %4821 ]
  %4840 = phi float [ %4830, %4826 ], [ %4722, %4821 ]
  %4841 = phi float [ %4831, %4826 ], [ %4734, %4821 ]
  %4842 = phi float [ %4832, %4826 ], [ %4724, %4821 ]
  %4843 = phi float [ %4827, %4826 ], [ %4705, %4821 ]
  %4844 = phi float [ %4828, %4826 ], [ %4719, %4821 ]
  %4845 = phi float [ %4829, %4826 ], [ %4707, %4821 ]
  %4846 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4718)  ; FMax(a,b)
  %4847 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4733)  ; FMax(a,b)
  %4848 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4748)  ; FMax(a,b)
  %4849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.f32 %4849, 0
  %4851 = fcmp fast ogt float %4850, 0.000000e+00
  %4852 = fcmp fast oge float %4506, 0.000000e+00
  %4853 = and i1 %4852, %4851
  %4854 = fcmp fast ole float %4506, 1.000000e+00
  %4855 = and i1 %4854, %4853
  %4856 = fcmp fast oge float %4507, 0.000000e+00
  %4857 = and i1 %4856, %4855
  %4858 = fcmp fast ole float %4507, 1.000000e+00
  %4859 = and i1 %4858, %4857
  br i1 %4859, label %4860, label %5005, !dx.controlflow.hints !73

; <label>:4860                                    ; preds = %4836
  %4861 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %4862 = extractvalue %dx.types.CBufRet.f32 %4861, 2
  %4863 = extractvalue %dx.types.CBufRet.f32 %4861, 3
  %4864 = fmul fast float %4862, %4506
  %4865 = fmul fast float %4863, %4507
  %4866 = call float @dx.op.unary.f32(i32 27, float %4864)  ; Round_ni(value)
  %4867 = call float @dx.op.unary.f32(i32 27, float %4865)  ; Round_ni(value)
  %4868 = fptosi float %4866 to i32
  %4869 = fptosi float %4867 to i32
  %4870 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %23, i32 0, i32 %4868, i32 %4869, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4871 = extractvalue %dx.types.ResRet.i32 %4870, 0
  %4872 = and i32 %4871, 65535
  %4873 = lshr i32 %4871, 16
  %4874 = icmp eq i32 %4872, 65535
  br i1 %4874, label %4911, label %4875

; <label>:4875                                    ; preds = %4860
  %4876 = extractvalue %dx.types.CBufRet.f32 %4849, 1
  %4877 = extractvalue %dx.types.CBufRet.f32 %4861, 0
  %4878 = extractvalue %dx.types.CBufRet.f32 %4861, 1
  %4879 = fmul fast float %4877, %4506
  %4880 = fmul fast float %4878, %4507
  %4881 = fmul fast float %4879, 1.250000e-01
  %4882 = fmul fast float %4880, 1.250000e-01
  %4883 = call float @dx.op.unary.f32(i32 27, float %4881)  ; Round_ni(value)
  %4884 = call float @dx.op.unary.f32(i32 27, float %4882)  ; Round_ni(value)
  %4885 = fmul fast float %4883, 8.000000e+00
  %4886 = fmul fast float %4884, 8.000000e+00
  %4887 = and i32 %4871, 255
  %4888 = lshr i32 %4871, 8
  %4889 = and i32 %4888, 255
  %4890 = mul nuw nsw i32 %4887, 9
  %4891 = uitofp i32 %4890 to float
  %4892 = mul nuw nsw i32 %4889, 9
  %4893 = uitofp i32 %4892 to float
  %4894 = fadd fast float %4891, 5.000000e-01
  %4895 = fadd fast float %4894, %4879
  %4896 = fsub fast float %4895, %4885
  %4897 = fadd fast float %4893, 5.000000e-01
  %4898 = fadd fast float %4897, %4880
  %4899 = fsub fast float %4898, %4886
  %4900 = fdiv fast float %4896, %4850
  %4901 = fdiv fast float %4899, %4876
  %4902 = fmul fast float %4534, 4.375000e-01
  %4903 = fadd fast float %4902, 3.125000e-02
  %4904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %4900, float %4901, float %4903, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4905 = extractvalue %dx.types.ResRet.f32 %4904, 0
  %4906 = extractvalue %dx.types.ResRet.f32 %4904, 1
  %4907 = extractvalue %dx.types.ResRet.f32 %4904, 2
  %4908 = fadd fast float %4905, %4846
  %4909 = fadd fast float %4906, %4847
  %4910 = fadd fast float %4907, %4848
  br label %4911

; <label>:4911                                    ; preds = %4875, %4860
  %4912 = phi float [ %4910, %4875 ], [ %4848, %4860 ]
  %4913 = phi float [ %4909, %4875 ], [ %4847, %4860 ]
  %4914 = phi float [ %4908, %4875 ], [ %4846, %4860 ]
  %4915 = icmp eq i32 %4873, 65535
  br i1 %4915, label %5005, label %4916

; <label>:4916                                    ; preds = %4911
  %4917 = extractvalue %dx.types.CBufRet.f32 %4849, 1
  %4918 = extractvalue %dx.types.CBufRet.f32 %4861, 0
  %4919 = extractvalue %dx.types.CBufRet.f32 %4861, 1
  %4920 = fmul fast float %4918, %4506
  %4921 = fmul fast float %4919, %4507
  %4922 = fmul fast float %4920, 1.250000e-01
  %4923 = fmul fast float %4921, 1.250000e-01
  %4924 = call float @dx.op.unary.f32(i32 27, float %4922)  ; Round_ni(value)
  %4925 = call float @dx.op.unary.f32(i32 27, float %4923)  ; Round_ni(value)
  %4926 = fmul fast float %4924, 8.000000e+00
  %4927 = fmul fast float %4925, 8.000000e+00
  %4928 = fsub fast float %4920, %4926
  %4929 = fsub fast float %4921, %4927
  %4930 = fadd fast float %4928, 5.000000e-01
  %4931 = fadd fast float %4929, 5.000000e-01
  %4932 = and i32 %4873, 255
  %4933 = lshr i32 %4871, 24
  %4934 = mul nuw nsw i32 %4932, 9
  %4935 = uitofp i32 %4934 to float
  %4936 = mul nuw nsw i32 %4933, 9
  %4937 = uitofp i32 %4936 to float
  %4938 = fadd fast float %4930, %4935
  %4939 = fadd fast float %4931, %4937
  %4940 = fdiv fast float %4938, %4850
  %4941 = fdiv fast float %4939, %4917
  %4942 = fmul fast float %4534, 4.375000e-01
  %4943 = fadd fast float %4942, 3.125000e-02
  %4944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %4940, float %4941, float %4943, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4945 = extractvalue %dx.types.ResRet.f32 %4944, 0
  %4946 = extractvalue %dx.types.ResRet.f32 %4944, 1
  %4947 = extractvalue %dx.types.ResRet.f32 %4944, 2
  %4948 = fadd fast float %4942, 5.312500e-01
  %4949 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %31, float %4940, float %4941, float %4948, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4950 = extractvalue %dx.types.ResRet.f32 %4949, 0
  %4951 = extractvalue %dx.types.ResRet.f32 %4949, 1
  %4952 = extractvalue %dx.types.ResRet.f32 %4949, 2
  %4953 = fmul fast float %4950, 2.000000e+00
  %4954 = fmul fast float %4951, 2.000000e+00
  %4955 = fmul fast float %4952, 2.000000e+00
  %4956 = fadd fast float %4953, -1.000000e+00
  %4957 = fadd fast float %4954, -1.000000e+00
  %4958 = fadd fast float %4955, -1.000000e+00
  %4959 = fmul fast float %4956, %4956
  %4960 = fmul fast float %4957, %4957
  %4961 = fadd fast float %4959, %4960
  %4962 = fmul fast float %4958, %4958
  %4963 = fadd fast float %4961, %4962
  %4964 = call float @dx.op.unary.f32(i32 24, float %4963)  ; Sqrt(value)
  %4965 = fcmp fast ogt float %4964, 0.000000e+00
  br i1 %4965, label %4966, label %4970

; <label>:4966                                    ; preds = %4916
  %4967 = fdiv fast float %4956, %4964
  %4968 = fdiv fast float %4957, %4964
  %4969 = fdiv fast float %4958, %4964
  br label %4970

; <label>:4970                                    ; preds = %4966, %4916
  %4971 = phi float [ %4967, %4966 ], [ 0.000000e+00, %4916 ]
  %4972 = phi float [ %4968, %4966 ], [ 0.000000e+00, %4916 ]
  %4973 = phi float [ %4969, %4966 ], [ 0.000000e+00, %4916 ]
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 0
  %4976 = extractvalue %dx.types.CBufRet.f32 %4974, 1
  %4977 = fsub fast float %4491, %4975
  %4978 = fsub fast float %4492, %4976
  %4979 = fmul fast float %4977, %4977
  %4980 = fmul fast float %4978, %4978
  %4981 = fadd fast float %4979, %4980
  %4982 = call float @dx.op.unary.f32(i32 24, float %4981)  ; Sqrt(value)
  %4983 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %4984 = extractvalue %dx.types.CBufRet.f32 %4983, 0
  %4985 = extractvalue %dx.types.CBufRet.f32 %4983, 1
  %4986 = fsub fast float %4982, %4984
  %4987 = fdiv fast float %4986, %4985
  %4988 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4989 = fmul fast float %4988, 2.000000e+00
  %4990 = fsub fast float 3.000000e+00, %4989
  %4991 = fmul fast float %4988, %4988
  %4992 = fmul fast float %4991, %4990
  %4993 = call float @dx.op.dot3.f32(i32 55, float %4971, float %4972, float %4973, float %4467, float %4468, float %4469)  ; Dot3(ax,ay,az,bx,by,bz)
  %4994 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %4993)  ; FMax(a,b)
  %4995 = fmul fast float %4994, 0x400C5BF8A0000000
  %4996 = fmul fast float %4992, %4945
  %4997 = fmul fast float %4996, %4995
  %4998 = fadd fast float %4997, %4914
  %4999 = fmul fast float %4992, %4946
  %5000 = fmul fast float %4999, %4995
  %5001 = fadd fast float %5000, %4913
  %5002 = fmul fast float %4992, %4947
  %5003 = fmul fast float %5002, %4995
  %5004 = fadd fast float %5003, %4912
  br label %5005

; <label>:5005                                    ; preds = %4970, %4911, %4836
  %5006 = phi float [ %5004, %4970 ], [ %4912, %4911 ], [ %4848, %4836 ]
  %5007 = phi float [ %5001, %4970 ], [ %4913, %4911 ], [ %4847, %4836 ]
  %5008 = phi float [ %4998, %4970 ], [ %4914, %4911 ], [ %4846, %4836 ]
  %5009 = fcmp fast ogt float %4493, %4530
  %5010 = and i1 %4852, %5009
  %5011 = and i1 %4854, %5010
  %5012 = and i1 %4856, %5011
  %5013 = and i1 %4858, %5012
  br i1 %5013, label %5014, label %5071, !dx.controlflow.hints !74

; <label>:5014                                    ; preds = %5005
  %5015 = fmul fast float %4532, 0x3FC24924A0000000
  %5016 = fsub fast float %4493, %4530
  %5017 = fdiv fast float %5016, %5015
  %5018 = call float @dx.op.unary.f32(i32 7, float %5017)  ; Saturate(value)
  %5019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %5020 = extractvalue %dx.types.CBufRet.f32 %5019, 0
  %5021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %5022 = extractvalue %dx.types.CBufRet.f32 %5021, 0
  %5023 = extractvalue %dx.types.CBufRet.f32 %5021, 1
  %5024 = extractvalue %dx.types.CBufRet.f32 %5021, 2
  %5025 = fsub fast float %5020, %5008
  %5026 = fsub fast float %5022, %4843
  %5027 = fsub fast float %5023, %4844
  %5028 = fsub fast float %5024, %4845
  %5029 = fmul fast float %5025, %5018
  %5030 = fmul fast float %5026, %5018
  %5031 = fmul fast float %5027, %5018
  %5032 = fmul fast float %5028, %5018
  %5033 = fadd fast float %5029, %5008
  %5034 = fadd fast float %5030, %4843
  %5035 = fadd fast float %5031, %4844
  %5036 = fadd fast float %5032, %4845
  %5037 = extractvalue %dx.types.CBufRet.f32 %5019, 1
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 0
  %5040 = extractvalue %dx.types.CBufRet.f32 %5038, 1
  %5041 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5042 = fsub fast float %5037, %5007
  %5043 = fsub fast float %5039, %4840
  %5044 = fsub fast float %5040, %4841
  %5045 = fsub fast float %5041, %4842
  %5046 = fmul fast float %5042, %5018
  %5047 = fmul fast float %5043, %5018
  %5048 = fmul fast float %5044, %5018
  %5049 = fmul fast float %5045, %5018
  %5050 = fadd fast float %5046, %5007
  %5051 = fadd fast float %5047, %4840
  %5052 = fadd fast float %5048, %4841
  %5053 = fadd fast float %5049, %4842
  %5054 = extractvalue %dx.types.CBufRet.f32 %5019, 2
  %5055 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %5056 = extractvalue %dx.types.CBufRet.f32 %5055, 0
  %5057 = extractvalue %dx.types.CBufRet.f32 %5055, 1
  %5058 = extractvalue %dx.types.CBufRet.f32 %5055, 2
  %5059 = fsub fast float %5054, %5006
  %5060 = fsub fast float %5056, %4837
  %5061 = fsub fast float %5057, %4838
  %5062 = fsub fast float %5058, %4839
  %5063 = fmul fast float %5059, %5018
  %5064 = fmul fast float %5060, %5018
  %5065 = fmul fast float %5061, %5018
  %5066 = fmul fast float %5062, %5018
  %5067 = fadd fast float %5063, %5006
  %5068 = fadd fast float %5064, %4837
  %5069 = fadd fast float %5065, %4838
  %5070 = fadd fast float %5066, %4839
  br label %5071

; <label>:5071                                    ; preds = %5014, %5005
  %5072 = phi float [ %5067, %5014 ], [ %5006, %5005 ]
  %5073 = phi float [ %5068, %5014 ], [ %4837, %5005 ]
  %5074 = phi float [ %5069, %5014 ], [ %4838, %5005 ]
  %5075 = phi float [ %5070, %5014 ], [ %4839, %5005 ]
  %5076 = phi float [ %5050, %5014 ], [ %5007, %5005 ]
  %5077 = phi float [ %5051, %5014 ], [ %4840, %5005 ]
  %5078 = phi float [ %5052, %5014 ], [ %4841, %5005 ]
  %5079 = phi float [ %5053, %5014 ], [ %4842, %5005 ]
  %5080 = phi float [ %5033, %5014 ], [ %5008, %5005 ]
  %5081 = phi float [ %5034, %5014 ], [ %4843, %5005 ]
  %5082 = phi float [ %5035, %5014 ], [ %4844, %5005 ]
  %5083 = phi float [ %5036, %5014 ], [ %4845, %5005 ]
  %5084 = extractvalue %dx.types.CBufRet.f32 %4655, 3
  %5085 = fmul fast float %5084, %5080
  %5086 = fmul fast float %5084, %5076
  %5087 = fmul fast float %5084, %5072
  %5088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5089 = extractvalue %dx.types.CBufRet.f32 %5088, 3
  %5090 = fmul fast float %5085, %5089
  %5091 = fmul fast float %5086, %5089
  %5092 = fmul fast float %5087, %5089
  %5093 = fmul fast float %5081, 1.500000e+00
  %5094 = fmul fast float %5093, %5084
  %5095 = fmul fast float %5094, %5089
  %5096 = fmul fast float %5082, 1.500000e+00
  %5097 = fmul fast float %5096, %5084
  %5098 = fmul fast float %5097, %5089
  %5099 = fmul fast float %5083, 1.500000e+00
  %5100 = fmul fast float %5099, %5084
  %5101 = fmul fast float %5100, %5089
  %5102 = fmul fast float %5077, 1.500000e+00
  %5103 = fmul fast float %5102, %5084
  %5104 = fmul fast float %5103, %5089
  %5105 = fmul fast float %5078, 1.500000e+00
  %5106 = fmul fast float %5105, %5084
  %5107 = fmul fast float %5106, %5089
  %5108 = fmul fast float %5079, 1.500000e+00
  %5109 = fmul fast float %5108, %5084
  %5110 = fmul fast float %5109, %5089
  %5111 = fmul fast float %5073, 1.500000e+00
  %5112 = fmul fast float %5111, %5084
  %5113 = fmul fast float %5112, %5089
  %5114 = fmul fast float %5074, 1.500000e+00
  %5115 = fmul fast float %5114, %5084
  %5116 = fmul fast float %5115, %5089
  %5117 = fmul fast float %5075, 1.500000e+00
  %5118 = fmul fast float %5117, %5084
  %5119 = fmul fast float %5118, %5089
  %5120 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5090)  ; FMax(a,b)
  %5121 = call float @dx.op.dot3.f32(i32 55, float %5095, float %5098, float %5101, float %5095, float %5098, float %5101)  ; Dot3(ax,ay,az,bx,by,bz)
  %5122 = fcmp fast oeq float %5121, 0.000000e+00
  %5123 = fcmp fast oeq float %5120, 0.000000e+00
  %5124 = or i1 %5123, %5122
  br i1 %5124, label %5154, label %5125

; <label>:5125                                    ; preds = %5071
  %5126 = fsub fast float -0.000000e+00, %5101
  %5127 = fsub fast float -0.000000e+00, %5095
  %5128 = call float @dx.op.unary.f32(i32 24, float %5121)  ; Sqrt(value)
  %5129 = fdiv fast float %5128, %5120
  %5130 = fcmp fast ogt float %5129, 0x3FFB6F8900000000
  %5131 = select i1 %5130, float 0x3FFB6F8900000000, float %5129
  %5132 = fmul fast float %5131, 0x3FE8A23460000000
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = call float @dx.op.binary.f32(i32 35, float %5131, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5135 = fmul fast float %5133, %5120
  %5136 = fmul fast float %5134, 0x3FF279A740000000
  %5137 = fadd fast float %5136, -1.000000e+00
  %5138 = call float @dx.op.dot3.f32(i32 55, float %5126, float %5127, float %5098, float %5126, float %5127, float %5098)  ; Dot3(ax,ay,az,bx,by,bz)
  %5139 = call float @dx.op.unary.f32(i32 25, float %5138)  ; Rsqrt(value)
  %5140 = fmul fast float %5139, %5126
  %5141 = fmul fast float %5139, %5127
  %5142 = fmul fast float %5139, %5098
  %5143 = fmul fast float %5137, %5137
  %5144 = fsub fast float 1.000000e+00, %5143
  %5145 = fmul fast float %5134, 0x40005F8BE0000000
  %5146 = fsub fast float 0x400C5BF8A0000000, %5145
  %5147 = fdiv fast float %5135, %5146
  %5148 = fmul fast float %5147, 0x3FEE31C3C0000000
  %5149 = fmul fast float %5148, %5144
  %5150 = fmul fast float %5134, 0x3FDACB7480000000
  %5151 = fadd fast float %5150, 0xBFD7347680000000
  %5152 = fmul fast float %5151, %5147
  %5153 = fmul fast float %5152, %5144
  br label %5154

; <label>:5154                                    ; preds = %5125, %5071
  %5155 = phi float [ %5140, %5125 ], [ 0.000000e+00, %5071 ]
  %5156 = phi float [ %5141, %5125 ], [ 0.000000e+00, %5071 ]
  %5157 = phi float [ %5142, %5125 ], [ 0.000000e+00, %5071 ]
  %5158 = phi float [ %5149, %5125 ], [ 0.000000e+00, %5071 ]
  %5159 = phi float [ %5153, %5125 ], [ 0.000000e+00, %5071 ]
  %5160 = call float @dx.op.dot3.f32(i32 55, float %5155, float %5156, float %5157, float %4467, float %4468, float %4469)  ; Dot3(ax,ay,az,bx,by,bz)
  %5161 = fmul fast float %5160, 0x3FDF454380000000
  %5162 = fmul fast float %5160, %5160
  %5163 = fmul fast float %5162, 0x3FEE471020000000
  %5164 = fadd fast float %5163, 0xBFD42F6020000000
  %5165 = fmul fast float %5120, 0x3FD20DD760000000
  %5166 = fmul fast float %5164, %5159
  %5167 = fadd fast float %5166, %5165
  %5168 = fmul fast float %5161, %5158
  %5169 = fadd fast float %5167, %5168
  %5170 = fsub fast float %5167, %5168
  %5171 = call float @dx.op.dot3.f32(i32 55, float %5155, float %5156, float %5157, float %4480, float %4481, float %4482)  ; Dot3(ax,ay,az,bx,by,bz)
  %5172 = fmul fast float %5171, 0x3FDF454380000000
  %5173 = fmul fast float %5171, %5171
  %5174 = fmul fast float %5173, 0x3FEE471020000000
  %5175 = fadd fast float %5174, 0xBFD42F6020000000
  %5176 = call float @dx.op.dot3.f32(i32 55, float %5120, float %5158, float %5159, float 0x3FD20DD760000000, float %5172, float %5175)  ; Dot3(ax,ay,az,bx,by,bz)
  %5177 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5091)  ; FMax(a,b)
  %5178 = call float @dx.op.dot3.f32(i32 55, float %5104, float %5107, float %5110, float %5104, float %5107, float %5110)  ; Dot3(ax,ay,az,bx,by,bz)
  %5179 = fcmp fast oeq float %5178, 0.000000e+00
  %5180 = fcmp fast oeq float %5177, 0.000000e+00
  %5181 = or i1 %5180, %5179
  br i1 %5181, label %5211, label %5182

; <label>:5182                                    ; preds = %5154
  %5183 = fsub fast float -0.000000e+00, %5110
  %5184 = fsub fast float -0.000000e+00, %5104
  %5185 = call float @dx.op.unary.f32(i32 24, float %5178)  ; Sqrt(value)
  %5186 = fdiv fast float %5185, %5177
  %5187 = fcmp fast ogt float %5186, 0x3FFB6F8900000000
  %5188 = select i1 %5187, float 0x3FFB6F8900000000, float %5186
  %5189 = fmul fast float %5188, 0x3FE8A23460000000
  %5190 = call float @dx.op.unary.f32(i32 7, float %5189)  ; Saturate(value)
  %5191 = call float @dx.op.binary.f32(i32 35, float %5188, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5192 = fmul fast float %5190, %5177
  %5193 = fmul fast float %5191, 0x3FF279A740000000
  %5194 = fadd fast float %5193, -1.000000e+00
  %5195 = call float @dx.op.dot3.f32(i32 55, float %5183, float %5184, float %5107, float %5183, float %5184, float %5107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5196 = call float @dx.op.unary.f32(i32 25, float %5195)  ; Rsqrt(value)
  %5197 = fmul fast float %5196, %5183
  %5198 = fmul fast float %5196, %5184
  %5199 = fmul fast float %5196, %5107
  %5200 = fmul fast float %5194, %5194
  %5201 = fsub fast float 1.000000e+00, %5200
  %5202 = fmul fast float %5191, 0x40005F8BE0000000
  %5203 = fsub fast float 0x400C5BF8A0000000, %5202
  %5204 = fdiv fast float %5192, %5203
  %5205 = fmul fast float %5204, 0x3FEE31C3C0000000
  %5206 = fmul fast float %5205, %5201
  %5207 = fmul fast float %5191, 0x3FDACB7480000000
  %5208 = fadd fast float %5207, 0xBFD7347680000000
  %5209 = fmul fast float %5208, %5204
  %5210 = fmul fast float %5209, %5201
  br label %5211

; <label>:5211                                    ; preds = %5182, %5154
  %5212 = phi float [ %5197, %5182 ], [ 0.000000e+00, %5154 ]
  %5213 = phi float [ %5198, %5182 ], [ 0.000000e+00, %5154 ]
  %5214 = phi float [ %5199, %5182 ], [ 0.000000e+00, %5154 ]
  %5215 = phi float [ %5206, %5182 ], [ 0.000000e+00, %5154 ]
  %5216 = phi float [ %5210, %5182 ], [ 0.000000e+00, %5154 ]
  %5217 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5213, float %5214, float %4467, float %4468, float %4469)  ; Dot3(ax,ay,az,bx,by,bz)
  %5218 = fmul fast float %5217, 0x3FDF454380000000
  %5219 = fmul fast float %5217, %5217
  %5220 = fmul fast float %5219, 0x3FEE471020000000
  %5221 = fadd fast float %5220, 0xBFD42F6020000000
  %5222 = fmul fast float %5177, 0x3FD20DD760000000
  %5223 = fmul fast float %5221, %5216
  %5224 = fadd fast float %5223, %5222
  %5225 = fmul fast float %5218, %5215
  %5226 = fadd fast float %5224, %5225
  %5227 = fsub fast float %5224, %5225
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5212, float %5213, float %5214, float %4480, float %4481, float %4482)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = fmul fast float %5228, 0x3FDF454380000000
  %5230 = fmul fast float %5228, %5228
  %5231 = fmul fast float %5230, 0x3FEE471020000000
  %5232 = fadd fast float %5231, 0xBFD42F6020000000
  %5233 = call float @dx.op.dot3.f32(i32 55, float %5177, float %5215, float %5216, float 0x3FD20DD760000000, float %5229, float %5232)  ; Dot3(ax,ay,az,bx,by,bz)
  %5234 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5092)  ; FMax(a,b)
  %5235 = call float @dx.op.dot3.f32(i32 55, float %5113, float %5116, float %5119, float %5113, float %5116, float %5119)  ; Dot3(ax,ay,az,bx,by,bz)
  %5236 = fcmp fast oeq float %5235, 0.000000e+00
  %5237 = fcmp fast oeq float %5234, 0.000000e+00
  %5238 = or i1 %5237, %5236
  br i1 %5238, label %5268, label %5239

; <label>:5239                                    ; preds = %5211
  %5240 = fsub fast float -0.000000e+00, %5119
  %5241 = fsub fast float -0.000000e+00, %5113
  %5242 = call float @dx.op.unary.f32(i32 24, float %5235)  ; Sqrt(value)
  %5243 = fdiv fast float %5242, %5234
  %5244 = fcmp fast ogt float %5243, 0x3FFB6F8900000000
  %5245 = select i1 %5244, float 0x3FFB6F8900000000, float %5243
  %5246 = fmul fast float %5245, 0x3FE8A23460000000
  %5247 = call float @dx.op.unary.f32(i32 7, float %5246)  ; Saturate(value)
  %5248 = call float @dx.op.binary.f32(i32 35, float %5245, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5249 = fmul fast float %5247, %5234
  %5250 = fmul fast float %5248, 0x3FF279A740000000
  %5251 = fadd fast float %5250, -1.000000e+00
  %5252 = call float @dx.op.dot3.f32(i32 55, float %5240, float %5241, float %5116, float %5240, float %5241, float %5116)  ; Dot3(ax,ay,az,bx,by,bz)
  %5253 = call float @dx.op.unary.f32(i32 25, float %5252)  ; Rsqrt(value)
  %5254 = fmul fast float %5253, %5240
  %5255 = fmul fast float %5253, %5241
  %5256 = fmul fast float %5253, %5116
  %5257 = fmul fast float %5251, %5251
  %5258 = fsub fast float 1.000000e+00, %5257
  %5259 = fmul fast float %5248, 0x40005F8BE0000000
  %5260 = fsub fast float 0x400C5BF8A0000000, %5259
  %5261 = fdiv fast float %5249, %5260
  %5262 = fmul fast float %5261, 0x3FEE31C3C0000000
  %5263 = fmul fast float %5262, %5258
  %5264 = fmul fast float %5248, 0x3FDACB7480000000
  %5265 = fadd fast float %5264, 0xBFD7347680000000
  %5266 = fmul fast float %5265, %5261
  %5267 = fmul fast float %5266, %5258
  br label %5268

; <label>:5268                                    ; preds = %5239, %5211
  %5269 = phi float [ %5254, %5239 ], [ 0.000000e+00, %5211 ]
  %5270 = phi float [ %5255, %5239 ], [ 0.000000e+00, %5211 ]
  %5271 = phi float [ %5256, %5239 ], [ 0.000000e+00, %5211 ]
  %5272 = phi float [ %5263, %5239 ], [ 0.000000e+00, %5211 ]
  %5273 = phi float [ %5267, %5239 ], [ 0.000000e+00, %5211 ]
  %5274 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float %4467, float %4468, float %4469)  ; Dot3(ax,ay,az,bx,by,bz)
  %5275 = fmul fast float %5274, 0x3FDF454380000000
  %5276 = fmul fast float %5274, %5274
  %5277 = fmul fast float %5276, 0x3FEE471020000000
  %5278 = fadd fast float %5277, 0xBFD42F6020000000
  %5279 = fmul fast float %5234, 0x3FD20DD760000000
  %5280 = fmul fast float %5278, %5273
  %5281 = fadd fast float %5280, %5279
  %5282 = fmul fast float %5275, %5272
  %5283 = fadd fast float %5281, %5282
  %5284 = fsub fast float %5281, %5282
  %5285 = call float @dx.op.dot3.f32(i32 55, float %5269, float %5270, float %5271, float %4480, float %4481, float %4482)  ; Dot3(ax,ay,az,bx,by,bz)
  %5286 = fmul fast float %5285, 0x3FDF454380000000
  %5287 = fmul fast float %5285, %5285
  %5288 = fmul fast float %5287, 0x3FEE471020000000
  %5289 = fadd fast float %5288, 0xBFD42F6020000000
  %5290 = call float @dx.op.dot3.f32(i32 55, float %5234, float %5272, float %5273, float 0x3FD20DD760000000, float %5286, float %5289)  ; Dot3(ax,ay,az,bx,by,bz)
  %5291 = call float @dx.op.binary.f32(i32 35, float %5169, float 0.000000e+00)  ; FMax(a,b)
  %5292 = call float @dx.op.binary.f32(i32 35, float %5226, float 0.000000e+00)  ; FMax(a,b)
  %5293 = call float @dx.op.binary.f32(i32 35, float %5283, float 0.000000e+00)  ; FMax(a,b)
  %5294 = call float @dx.op.binary.f32(i32 35, float %5170, float 0.000000e+00)  ; FMax(a,b)
  %5295 = call float @dx.op.binary.f32(i32 35, float %5227, float 0.000000e+00)  ; FMax(a,b)
  %5296 = call float @dx.op.binary.f32(i32 35, float %5284, float 0.000000e+00)  ; FMax(a,b)
  %5297 = call float @dx.op.binary.f32(i32 35, float %5176, float 0.000000e+00)  ; FMax(a,b)
  %5298 = call float @dx.op.binary.f32(i32 35, float %5233, float 0.000000e+00)  ; FMax(a,b)
  %5299 = call float @dx.op.binary.f32(i32 35, float %5290, float 0.000000e+00)  ; FMax(a,b)
  %5300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.f32 %5300, 0
  %5302 = call float @dx.op.binary.f32(i32 36, float %4464, float %5301)  ; FMin(a,b)
  %5303 = fsub fast float 1.000000e+00, %4483
  %5304 = fmul fast float %5302, %5303
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = bitcast float %5305 to i32
  %5307 = sub nsw i32 2129859010, %5306
  %5308 = bitcast i32 %5307 to float
  %5309 = call float @dx.op.binary.f32(i32 36, float %4465, float %5301)  ; FMin(a,b)
  %5310 = fmul fast float %5309, %5303
  %5311 = fsub fast float 1.000000e+00, %5310
  %5312 = bitcast float %5311 to i32
  %5313 = sub nsw i32 2129859010, %5312
  %5314 = bitcast i32 %5313 to float
  %5315 = call float @dx.op.binary.f32(i32 36, float %4466, float %5301)  ; FMin(a,b)
  %5316 = fmul fast float %5315, %5303
  %5317 = fsub fast float 1.000000e+00, %5316
  %5318 = bitcast float %5317 to i32
  %5319 = sub nsw i32 2129859010, %5318
  %5320 = bitcast i32 %5319 to float
  %5321 = fmul fast float %5291, %4483
  %5322 = fmul fast float %5321, %5308
  %5323 = fmul fast float %5292, %4483
  %5324 = fmul fast float %5323, %5314
  %5325 = fmul fast float %5293, %4483
  %5326 = fmul fast float %5325, %5320
  %5327 = call float @dx.op.binary.f32(i32 36, float %4461, float %5301)  ; FMin(a,b)
  %5328 = fmul fast float %5327, %5303
  %5329 = fsub fast float 1.000000e+00, %5328
  %5330 = bitcast float %5329 to i32
  %5331 = sub nsw i32 2129859010, %5330
  %5332 = bitcast i32 %5331 to float
  %5333 = call float @dx.op.binary.f32(i32 36, float %4462, float %5301)  ; FMin(a,b)
  %5334 = fmul fast float %5333, %5303
  %5335 = fsub fast float 1.000000e+00, %5334
  %5336 = bitcast float %5335 to i32
  %5337 = sub nsw i32 2129859010, %5336
  %5338 = bitcast i32 %5337 to float
  %5339 = call float @dx.op.binary.f32(i32 36, float %4472, float %5301)  ; FMin(a,b)
  %5340 = fmul fast float %5339, %5303
  %5341 = fsub fast float 1.000000e+00, %5340
  %5342 = bitcast float %5341 to i32
  %5343 = sub nsw i32 2129859010, %5342
  %5344 = bitcast i32 %5343 to float
  %5345 = fmul fast float %5297, %4483
  %5346 = fmul fast float %5345, %5332
  %5347 = fmul fast float %5298, %4483
  %5348 = fmul fast float %5347, %5338
  %5349 = fmul fast float %5299, %4483
  %5350 = fmul fast float %5349, %5344
  %5351 = call float @dx.op.dot3.f32(i32 55, float %5322, float %5324, float %5326, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5352 = select i1 %167, float 0.000000e+00, float %5322
  %5353 = select i1 %167, float %5351, float %5324
  %5354 = select i1 %167, float 0.000000e+00, float %5326
  %5355 = call float @dx.op.dot3.f32(i32 55, float %5294, float %5295, float %5296, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5356 = select i1 %167, float 0.000000e+00, float %5294
  %5357 = select i1 %167, float %5355, float %5295
  %5358 = select i1 %167, float 0.000000e+00, float %5296
  %5359 = call float @dx.op.dot3.f32(i32 55, float %5346, float %5348, float %5350, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5360 = select i1 %167, float 0.000000e+00, float %5346
  %5361 = select i1 %167, float %5359, float %5348
  %5362 = select i1 %167, float 0.000000e+00, float %5350
  %5363 = fmul fast float %4474, 9.843750e-01
  %5364 = fmul fast float %4470, 9.843750e-01
  %5365 = fadd fast float %5363, 7.812500e-03
  %5366 = fadd fast float %5364, 7.812500e-03
  %5367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5365, float %5366, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5368 = extractvalue %dx.types.ResRet.f32 %5367, 2
  %5369 = extractvalue %dx.types.ResRet.f32 %5367, 3
  %5370 = fmul fast float %5368, %4461
  %5371 = fmul fast float %5368, %4462
  %5372 = fmul fast float %5368, %4472
  %5373 = fadd fast float %5370, %5369
  %5374 = fadd fast float %5371, %5369
  %5375 = fadd fast float %5372, %5369
  %5376 = call float @dx.op.binary.f32(i32 35, float %5374, float %5375)  ; FMax(a,b)
  %5377 = call float @dx.op.binary.f32(i32 35, float %5373, float %5376)  ; FMax(a,b)
  %5378 = fsub fast float 1.000000e+00, %5377
  %5379 = fmul fast float %5373, %5360
  %5380 = fmul fast float %5374, %5361
  %5381 = fmul fast float %5375, %5362
  %5382 = fadd fast float %5379, %3760
  %5383 = fmul fast float %5382, %928
  %5384 = fadd fast float %5380, %3761
  %5385 = fmul fast float %5384, %928
  %5386 = fadd fast float %5381, %3762
  %5387 = fmul fast float %5386, %928
  %5388 = fmul fast float %5378, %5354
  %5389 = fmul fast float %5378, %5353
  %5390 = fmul fast float %5378, %5352
  %5391 = fmul fast float %5378, %3885
  %5392 = fadd fast float %5391, -1.000000e+00
  %5393 = fmul fast float %5392, %928
  %5394 = fadd fast float %5393, 1.000000e+00
  %5395 = fmul fast float %5378, %3884
  %5396 = fadd fast float %5395, -1.000000e+00
  %5397 = fmul fast float %5396, %928
  %5398 = fadd fast float %5397, 1.000000e+00
  %5399 = fmul fast float %5378, %3883
  %5400 = fadd fast float %5399, -1.000000e+00
  %5401 = fmul fast float %5400, %928
  %5402 = fadd fast float %5401, 1.000000e+00
  %5403 = fmul fast float %5402, %5356
  %5404 = fmul fast float %5398, %5357
  %5405 = fmul fast float %5394, %5358
  %5406 = fadd fast float %5403, %5390
  %5407 = fmul fast float %5406, %928
  %5408 = fadd fast float %5404, %5389
  %5409 = fmul fast float %5408, %928
  %5410 = fadd fast float %5405, %5388
  %5411 = fmul fast float %5410, %928
  %5412 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5413 = extractvalue %dx.types.CBufRet.f32 %5412, 3
  %5414 = fcmp fast oeq float %5413, 0.000000e+00
  br i1 %5414, label %5601, label %5415

; <label>:5415                                    ; preds = %5268
  %5416 = extractvalue %dx.types.CBufRet.f32 %5412, 0
  %5417 = extractvalue %dx.types.CBufRet.f32 %5412, 1
  %5418 = extractvalue %dx.types.CBufRet.f32 %5412, 2
  %5419 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5420 = extractvalue %dx.types.CBufRet.f32 %5419, 0
  %5421 = extractvalue %dx.types.CBufRet.f32 %5419, 1
  %5422 = extractvalue %dx.types.CBufRet.f32 %5419, 2
  %5423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5424 = extractvalue %dx.types.CBufRet.f32 %5423, 0
  %5425 = extractvalue %dx.types.CBufRet.f32 %5423, 1
  %5426 = call float @dx.op.dot3.f32(i32 55, float %5420, float %5421, float %5422, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5427 = select i1 %167, float %5424, float %5420
  %5428 = select i1 %167, float %5426, float %5421
  %5429 = select i1 %167, float %5425, float %5422
  %5430 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5431 = extractvalue %dx.types.CBufRet.f32 %5430, 1
  %5432 = fcmp fast une float %5431, 0.000000e+00
  br i1 %5432, label %5433, label %5450

; <label>:5433                                    ; preds = %5415
  %5434 = fptoui float %64 to i32
  %5435 = fptoui float %65 to i32
  %5436 = lshr i32 %5434, 4
  %5437 = lshr i32 %5435, 4
  %5438 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5439 = extractvalue %dx.types.CBufRet.f32 %5438, 0
  %5440 = fptoui float %5439 to i32
  %5441 = add i32 %5440, 15
  %5442 = lshr i32 %5441, 4
  %5443 = mul i32 %5442, %5437
  %5444 = add i32 %5443, %5436
  %5445 = shl i32 %5444, 3
  %5446 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %5445, i32 undef)  ; BufferLoad(srv,index,wot)
  %5447 = extractvalue %dx.types.ResRet.i32 %5446, 0
  %5448 = and i32 %5447, -268435456
  %5449 = icmp eq i32 %5448, -1342177280
  br i1 %5449, label %5460, label %5450

; <label>:5450                                    ; preds = %5433, %5415
  %5451 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %33, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %5452 = extractvalue %dx.types.CBufRet.f32 %5451, 2
  %5453 = extractvalue %dx.types.CBufRet.f32 %5451, 3
  %5454 = fmul fast float %5452, %64
  %5455 = fmul fast float %5453, %65
  %5456 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %32, float %5454, float %5455, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5457 = extractvalue %dx.types.ResRet.f32 %5456, 0
  %5458 = extractvalue %dx.types.ResRet.f32 %5456, 1
  %5459 = extractvalue %dx.types.ResRet.f32 %5456, 2
  br label %5460

; <label>:5460                                    ; preds = %5450, %5433
  %5461 = phi float [ %5457, %5450 ], [ 0.000000e+00, %5433 ]
  %5462 = phi float [ %5458, %5450 ], [ 0.000000e+00, %5433 ]
  %5463 = phi float [ %5459, %5450 ], [ 0.000000e+00, %5433 ]
  %5464 = call float @dx.op.binary.f32(i32 36, float %5462, float %5463)  ; FMin(a,b)
  %5465 = call float @dx.op.binary.f32(i32 36, float %5461, float %5464)  ; FMin(a,b)
  %5466 = fcmp fast ogt float %5465, 0.000000e+00
  br i1 %5466, label %5467, label %5601, !dx.controlflow.hints !75

; <label>:5467                                    ; preds = %5460
  %5468 = bitcast i32 %4486 to float
  %5469 = fmul fast float %5461, %5427
  %5470 = fmul fast float %5462, %5428
  %5471 = fmul fast float %5463, %5429
  %5472 = fsub fast float %5416, %4460
  %5473 = fsub fast float %5417, %4459
  %5474 = fsub fast float %5418, %4458
  %5475 = call float @dx.op.dot3.f32(i32 55, float %5472, float %5473, float %5474, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5476 = call float @dx.op.unary.f32(i32 25, float %5475)  ; Rsqrt(value)
  %5477 = fmul fast float %5476, %5472
  %5478 = fmul fast float %5476, %5473
  %5479 = fmul fast float %5476, %5474
  %5480 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5417, float %5418, float %4467, float %4468, float %4469)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = call float @dx.op.dot3.f32(i32 55, float %4457, float %4456, float %4455, float %5477, float %5478, float %5479)  ; Dot3(ax,ay,az,bx,by,bz)
  %5482 = call float @dx.op.unary.f32(i32 7, float %5480)  ; Saturate(value)
  %5483 = fmul fast float %5482, %5482
  %5484 = fmul fast float %5483, %5468
  %5485 = call float @dx.op.unary.f32(i32 7, float %5484)  ; Saturate(value)
  %5486 = fmul fast float %5485, %5482
  %5487 = call float @dx.op.dot3.f32(i32 55, float %4467, float %4468, float %4469, float %5477, float %5478, float %5479)  ; Dot3(ax,ay,az,bx,by,bz)
  %5488 = fmul fast float %5487, %5487
  %5489 = call float @dx.op.unary.f32(i32 6, float %5480)  ; FAbs(value)
  %5490 = fsub fast float 1.000000e+00, %4470
  %5491 = call float @dx.op.binary.f32(i32 35, float %5490, float 0x3F847AE140000000)  ; FMax(a,b)
  %5492 = fmul fast float %5491, %5491
  %5493 = fmul fast float %5492, %5492
  %5494 = fsub fast float 1.000000e+00, %5493
  %5495 = fmul fast float %4474, %4474
  %5496 = fmul fast float %5495, %5494
  %5497 = fadd fast float %5496, %5493
  %5498 = bitcast float %5497 to i32
  %5499 = ashr i32 %5498, 1
  %5500 = add nsw i32 %5499, 532487669
  %5501 = bitcast i32 %5500 to float
  %5502 = fadd fast float %5501, %4474
  %5503 = fmul fast float %5493, %5488
  %5504 = fsub fast float 1.000000e+00, %5488
  %5505 = fadd fast float %5504, %5503
  %5506 = fmul fast float %5489, %5489
  %5507 = fmul fast float %5506, %5494
  %5508 = fadd fast float %5507, %5493
  %5509 = bitcast float %5508 to i32
  %5510 = ashr i32 %5509, 1
  %5511 = add nsw i32 %5510, 532487669
  %5512 = bitcast i32 %5511 to float
  %5513 = fadd fast float %5512, %5489
  %5514 = fmul fast float %5505, %5505
  %5515 = fmul fast float %5514, %5502
  %5516 = fmul fast float %5515, %5513
  %5517 = fdiv fast float 0x3FF0A00000000000, %5516
  %5518 = fmul fast float %5517, %5493
  %5519 = call float @dx.op.unary.f32(i32 6, float %5481)  ; FAbs(value)
  %5520 = fsub fast float 1.000000e+00, %5519
  %5521 = bitcast float %5520 to i32
  %5522 = sitofp i32 %5521 to float
  %5523 = fmul fast float %5522, 5.000000e+00
  %5524 = fadd fast float %5523, 0xC1EFBF8940000000
  %5525 = fptosi float %5524 to i32
  %5526 = bitcast i32 %5525 to float
  %5527 = fsub fast float 1.000000e+00, %4461
  %5528 = fsub fast float 1.000000e+00, %4462
  %5529 = fsub fast float 1.000000e+00, %4472
  %5530 = fmul fast float %5526, %5527
  %5531 = fmul fast float %5526, %5528
  %5532 = fmul fast float %5526, %5529
  %5533 = fadd fast float %5530, %4461
  %5534 = fadd fast float %5531, %4462
  %5535 = fadd fast float %5532, %4472
  %5536 = fmul fast float %5480, 9.843750e-01
  %5537 = fadd fast float %5536, 7.812500e-03
  %5538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5537, float %5366, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5539 = extractvalue %dx.types.ResRet.f32 %5538, 2
  %5540 = extractvalue %dx.types.ResRet.f32 %5538, 3
  %5541 = fmul fast float %5539, %4461
  %5542 = fmul fast float %5539, %4462
  %5543 = fmul fast float %5539, %4472
  %5544 = fadd fast float %5541, %5540
  %5545 = fadd fast float %5542, %5540
  %5546 = fadd fast float %5543, %5540
  %5547 = call float @dx.op.binary.f32(i32 35, float %5545, float %5546)  ; FMax(a,b)
  %5548 = call float @dx.op.binary.f32(i32 35, float %5544, float %5547)  ; FMax(a,b)
  %5549 = fsub fast float 1.000000e+00, %5548
  %5550 = fsub fast float -0.000000e+00, %4467
  %5551 = fsub fast float -0.000000e+00, %4468
  %5552 = fsub fast float -0.000000e+00, %4469
  %5553 = call float @dx.op.dot3.f32(i32 55, float %5416, float %5417, float %5418, float %5550, float %5551, float %5552)  ; Dot3(ax,ay,az,bx,by,bz)
  %5554 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5555 = fmul fast float %5554, 9.843750e-01
  %5556 = fadd fast float %5555, 7.812500e-03
  %5557 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5556, float %5366, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5558 = extractvalue %dx.types.ResRet.f32 %5557, 2
  %5559 = extractvalue %dx.types.ResRet.f32 %5557, 3
  %5560 = fmul fast float %5558, %4461
  %5561 = fmul fast float %5558, %4462
  %5562 = fmul fast float %5558, %4472
  %5563 = fadd fast float %5560, %5559
  %5564 = fadd fast float %5561, %5559
  %5565 = fadd fast float %5562, %5559
  %5566 = call float @dx.op.binary.f32(i32 35, float %5564, float %5565)  ; FMax(a,b)
  %5567 = call float @dx.op.binary.f32(i32 35, float %5563, float %5566)  ; FMax(a,b)
  %5568 = fsub fast float 1.000000e+00, %5567
  %5569 = fmul fast float %5568, %5554
  %5570 = fmul fast float %5569, %3883
  %5571 = fmul fast float %5569, %3884
  %5572 = fmul fast float %5569, %3885
  %5573 = fmul fast float %5549, %5486
  %5574 = fadd fast float %5570, %5573
  %5575 = fadd fast float %5571, %5573
  %5576 = fadd fast float %5572, %5573
  %5577 = fmul fast float %5574, %5469
  %5578 = fmul fast float %5575, %5470
  %5579 = fmul fast float %5576, %5471
  %5580 = fmul fast float %5486, %5469
  %5581 = fmul fast float %5580, %5518
  %5582 = fmul fast float %5581, %5533
  %5583 = fmul fast float %5486, %5470
  %5584 = fmul fast float %5583, %5518
  %5585 = fmul fast float %5584, %5534
  %5586 = fmul fast float %5486, %5471
  %5587 = fmul fast float %5586, %5518
  %5588 = fmul fast float %5587, %5535
  %5589 = fadd fast float %5577, %5406
  %5590 = fmul fast float %5589, %928
  %5591 = fadd fast float %5578, %5408
  %5592 = fmul fast float %5591, %928
  %5593 = fadd fast float %5579, %5410
  %5594 = fmul fast float %5593, %928
  %5595 = fadd fast float %5582, %5382
  %5596 = fmul fast float %5595, %928
  %5597 = fadd fast float %5585, %5384
  %5598 = fmul fast float %5597, %928
  %5599 = fadd fast float %5588, %5386
  %5600 = fmul fast float %5599, %928
  br label %5601

; <label>:5601                                    ; preds = %5467, %5460, %5268
  %5602 = phi float [ %5383, %5268 ], [ %5383, %5460 ], [ %5596, %5467 ]
  %5603 = phi float [ %5385, %5268 ], [ %5385, %5460 ], [ %5598, %5467 ]
  %5604 = phi float [ %5387, %5268 ], [ %5387, %5460 ], [ %5600, %5467 ]
  %5605 = phi float [ %5407, %5268 ], [ %5407, %5460 ], [ %5590, %5467 ]
  %5606 = phi float [ %5409, %5268 ], [ %5409, %5460 ], [ %5592, %5467 ]
  %5607 = phi float [ %5411, %5268 ], [ %5411, %5460 ], [ %5594, %5467 ]
  %5608 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5609 = extractvalue %dx.types.CBufRet.i32 %5608, 0
  %5610 = icmp eq i32 %5609, 0
  br i1 %5610, label %6005, label %5611

; <label>:5611                                    ; preds = %5601
  %5612 = fptoui float %64 to i32
  %5613 = fptoui float %65 to i32
  %5614 = lshr i32 %5612, 4
  %5615 = lshr i32 %5613, 4
  %5616 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5617 = extractvalue %dx.types.CBufRet.i32 %5616, 0
  %5618 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5615, i32 %5617, i32 %5614)  ; UMad(a,b,c)
  %5619 = add nsw i32 %5609, -1
  %5620 = call i32 @dx.op.binary.i32(i32 37, i32 %5619, i32 0)  ; IMax(a,b)
  %5621 = call float @dx.op.binary.f32(i32 35, float %59, float 0.000000e+00)  ; FMax(a,b)
  %5622 = fptoui float %5621 to i32
  %5623 = lshr i32 %5622, 5
  %5624 = call i32 @dx.op.binary.i32(i32 40, i32 %5623, i32 8191)  ; UMin(a,b)
  %5625 = shl i32 %5624, 2
  %5626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %5625, i32 undef)  ; BufferLoad(srv,index,wot)
  %5627 = extractvalue %dx.types.ResRet.i32 %5626, 0
  %5628 = lshr i32 %5627, 16
  %5629 = and i32 %5627, 65535
  %5630 = lshr i32 %5627, 21
  %5631 = lshr i32 %5629, 5
  %5632 = call i32 @dx.op.binary.i32(i32 40, i32 %5631, i32 %5620)  ; UMin(a,b)
  %5633 = icmp ugt i32 %5630, %5632
  br i1 %5633, label %6005, label %5634

; <label>:5634                                    ; preds = %5611
  br label %5635

; <label>:5635                                    ; preds = %5995, %5634
  %5636 = phi i32 [ %6002, %5995 ], [ %5630, %5634 ]
  %5637 = phi float [ %5996, %5995 ], [ %5602, %5634 ]
  %5638 = phi float [ %5997, %5995 ], [ %5603, %5634 ]
  %5639 = phi float [ %5998, %5995 ], [ %5604, %5634 ]
  %5640 = phi float [ %5999, %5995 ], [ %5605, %5634 ]
  %5641 = phi float [ %6000, %5995 ], [ %5606, %5634 ]
  %5642 = phi float [ %6001, %5995 ], [ %5607, %5634 ]
  %5643 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %34, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5644 = extractvalue %dx.types.CBufRet.i32 %5643, 0
  %5645 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5618, i32 %5644, i32 %5636)  ; UMad(a,b,c)
  %5646 = shl i32 %5645, 2
  %5647 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5646, i32 undef)  ; BufferLoad(srv,index,wot)
  %5648 = extractvalue %dx.types.ResRet.i32 %5647, 0
  %5649 = shl i32 %5636, 5
  %5650 = sub nsw i32 %5628, %5649
  %5651 = call i32 @dx.op.binary.i32(i32 37, i32 %5650, i32 0)  ; IMax(a,b)
  %5652 = call i32 @dx.op.binary.i32(i32 38, i32 %5651, i32 31)  ; IMin(a,b)
  %5653 = sub nsw i32 1, %5628
  %5654 = add nsw i32 %5653, %5629
  %5655 = call i32 @dx.op.binary.i32(i32 37, i32 %5654, i32 0)  ; IMax(a,b)
  %5656 = call i32 @dx.op.binary.i32(i32 38, i32 %5655, i32 32)  ; IMin(a,b)
  %5657 = and i32 %5656, 31
  %5658 = shl i32 -1, %5657
  %5659 = xor i32 %5658, -1
  %5660 = and i32 %5652, 31
  %5661 = shl i32 %5659, %5660
  %5662 = icmp eq i32 %5656, 32
  %5663 = select i1 %5662, i32 -1, i32 %5661
  %5664 = and i32 %5663, %5648
  %5665 = icmp eq i32 %5664, 0
  br i1 %5665, label %5995, label %5666

; <label>:5666                                    ; preds = %5635
  br label %5667

; <label>:5667                                    ; preds = %5747, %5666
  %5668 = phi i32 [ %5679, %5747 ], [ %5664, %5666 ]
  %5669 = phi float [ %5748, %5747 ], [ %5637, %5666 ]
  %5670 = phi float [ %5749, %5747 ], [ %5638, %5666 ]
  %5671 = phi float [ %5750, %5747 ], [ %5639, %5666 ]
  %5672 = phi float [ %5751, %5747 ], [ %5640, %5666 ]
  %5673 = phi float [ %5752, %5747 ], [ %5641, %5666 ]
  %5674 = phi float [ %5753, %5747 ], [ %5642, %5666 ]
  %5675 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5668)  ; FirstbitLo(value)
  %5676 = add i32 %5675, %5649
  %5677 = and i32 %5675, 31
  %5678 = shl i32 1, %5677
  %5679 = xor i32 %5678, %5668
  %5680 = mul i32 %5676, 112
  %5681 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5680, i32 undef)  ; BufferLoad(srv,index,wot)
  %5682 = extractvalue %dx.types.ResRet.f32 %5681, 0
  %5683 = extractvalue %dx.types.ResRet.f32 %5681, 1
  %5684 = extractvalue %dx.types.ResRet.f32 %5681, 2
  %5685 = or i32 %5680, 12
  %5686 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5685, i32 undef)  ; BufferLoad(srv,index,wot)
  %5687 = extractvalue %dx.types.ResRet.f32 %5686, 0
  %5688 = add i32 %5680, 44
  %5689 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5688, i32 undef)  ; BufferLoad(srv,index,wot)
  %5690 = extractvalue %dx.types.ResRet.f32 %5689, 0
  %5691 = add i32 %5680, 48
  %5692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5691, i32 undef)  ; BufferLoad(srv,index,wot)
  %5693 = extractvalue %dx.types.ResRet.f32 %5692, 0
  %5694 = extractvalue %dx.types.ResRet.f32 %5692, 1
  %5695 = extractvalue %dx.types.ResRet.f32 %5692, 2
  %5696 = add i32 %5680, 80
  %5697 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %5696, i32 undef)  ; BufferLoad(srv,index,wot)
  %5698 = extractvalue %dx.types.ResRet.f32 %5697, 1
  %5699 = extractvalue %dx.types.ResRet.f32 %5697, 2
  %5700 = call float @dx.op.dot3.f32(i32 55, float %5682, float %5683, float %5684, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5701 = select i1 %167, float %5698, float %5682
  %5702 = select i1 %167, float %5700, float %5683
  %5703 = select i1 %167, float %5699, float %5684
  %5704 = fsub fast float %5693, %123
  %5705 = fsub fast float %5694, %124
  %5706 = fsub fast float %5695, %125
  %5707 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5705, float %5706, float %5704, float %5705, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5708 = call float @dx.op.unary.f32(i32 24, float %5707)  ; Sqrt(value)
  %5709 = fdiv fast float 1.000000e+00, %5708
  %5710 = fmul fast float %5709, %5704
  %5711 = fmul fast float %5709, %5705
  %5712 = fmul fast float %5709, %5706
  %5713 = fadd fast float %5708, %5687
  %5714 = fdiv fast float 1.000000e+00, %5713
  %5715 = fmul float %5690, %5714
  %5716 = fmul float %5715, %5715
  %5717 = call float @dx.op.unary.f32(i32 7, float %5716)  ; Saturate(value)
  %5718 = and i32 %5678, %5664
  %5719 = icmp eq i32 %5718, 0
  br i1 %5719, label %5742, label %5720, !dx.controlflow.hints !76

; <label>:5720                                    ; preds = %5667
  %5721 = lshr i32 %5612, 5
  %5722 = lshr i32 %5613, 5
  %5723 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %21, i32 0, i32 %5721, i32 %5722, i32 %5676, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5724 = extractvalue %dx.types.ResRet.i32 %5723, 0
  %5725 = and i32 %5724, 3
  %5726 = icmp eq i32 %5725, 0
  %5727 = select i1 %5726, float 1.000000e+00, float 0.000000e+00
  %5728 = icmp eq i32 %5725, 3
  br i1 %5728, label %5729, label %5742

; <label>:5729                                    ; preds = %5720
  %5730 = lshr i32 %5724, 10
  %5731 = and i32 %5730, 8160
  %5732 = and i32 %5613, 31
  %5733 = or i32 %5731, %5732
  %5734 = lshr i32 %5724, 1
  %5735 = and i32 %5734, 16352
  %5736 = and i32 %5612, 31
  %5737 = or i32 %5735, %5736
  %5738 = lshr i32 %5724, 23
  %5739 = and i32 %5738, 255
  %5740 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %20, i32 0, i32 %5737, i32 %5733, i32 %5739, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5741 = extractvalue %dx.types.ResRet.f32 %5740, 0
  br label %5742

; <label>:5742                                    ; preds = %5729, %5720, %5667
  %5743 = phi float [ %5741, %5729 ], [ %5727, %5720 ], [ 0.000000e+00, %5667 ]
  %5744 = call float @dx.op.binary.f32(i32 36, float %5743, float %5743)  ; FMin(a,b)
  %5745 = call float @dx.op.binary.f32(i32 36, float %5743, float %5744)  ; FMin(a,b)
  %5746 = fcmp fast ogt float %5745, 0.000000e+00
  br i1 %5746, label %5755, label %5747, !dx.controlflow.hints !77

; <label>:5747                                    ; preds = %5817, %5742
  %5748 = phi float [ %5669, %5742 ], [ %5991, %5817 ]
  %5749 = phi float [ %5670, %5742 ], [ %5992, %5817 ]
  %5750 = phi float [ %5671, %5742 ], [ %5993, %5817 ]
  %5751 = phi float [ %5672, %5742 ], [ %5979, %5817 ]
  %5752 = phi float [ %5673, %5742 ], [ %5980, %5817 ]
  %5753 = phi float [ %5674, %5742 ], [ %5981, %5817 ]
  %5754 = icmp eq i32 %5668, %5678
  br i1 %5754, label %5994, label %5667

; <label>:5755                                    ; preds = %5742
  %5756 = bitcast i32 %4486 to float
  %5757 = fmul fast float %5743, %5701
  %5758 = fmul fast float %5743, %5702
  %5759 = fmul fast float %5743, %5703
  %5760 = fsub fast float %5695, %4260
  %5761 = fcmp fast ogt float %5760, 0.000000e+00
  %5762 = fsub fast float %125, %4260
  %5763 = fcmp fast ogt float %5762, 0.000000e+00
  %5764 = xor i1 %5763, %5761
  %5765 = fsub fast float %4260, %5695
  %5766 = fmul fast float %5765, 2.000000e+00
  %5767 = fadd fast float %5766, %5695
  %5768 = select i1 %5764, float %5695, float %5767
  %5769 = fsub fast float %5768, %125
  %5770 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5705, float %5769, float %5704, float %5705, float %5769)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = call float @dx.op.unary.f32(i32 25, float %5770)  ; Rsqrt(value)
  %5772 = fmul fast float %5771, %5704
  %5773 = fmul fast float %5771, %5705
  %5774 = fmul fast float %5771, %5769
  %5775 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4268)  ; Dot3(ax,ay,az,bx,by,bz)
  %5776 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5772, float %5773, float %5774)  ; Dot3(ax,ay,az,bx,by,bz)
  %5777 = fdiv fast float 1.000000e+00, %5776
  %5778 = fmul fast float %5777, %5775
  %5779 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5762, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5780 = fcmp fast ogt float %5779, 0.000000e+00
  %5781 = fcmp fast olt float %5779, 0.000000e+00
  %5782 = zext i1 %5780 to i32
  %5783 = zext i1 %5781 to i32
  %5784 = sub nsw i32 %5782, %5783
  %5785 = sitofp i32 %5784 to float
  %5786 = fsub fast float %5768, %4260
  %5787 = call float @dx.op.dot3.f32(i32 55, float %5704, float %5705, float %5786, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5788 = fcmp fast ogt float %5787, 0.000000e+00
  %5789 = fcmp fast olt float %5787, 0.000000e+00
  %5790 = zext i1 %5788 to i32
  %5791 = zext i1 %5789 to i32
  %5792 = sub nsw i32 %5790, %5791
  %5793 = sitofp i32 %5792 to float
  %5794 = fcmp fast une float %5785, %5793
  br i1 %5794, label %5795, label %5805

; <label>:5795                                    ; preds = %5755
  %5796 = fmul fast float %5778, %5774
  %5797 = fmul fast float %5778, %5773
  %5798 = fmul fast float %5778, %5772
  %5799 = fmul fast float %5798, %5798
  %5800 = fmul fast float %5797, %5797
  %5801 = fadd fast float %5799, %5800
  %5802 = fmul fast float %5796, %5796
  %5803 = fadd fast float %5801, %5802
  %5804 = call float @dx.op.unary.f32(i32 24, float %5803)  ; Sqrt(value)
  br label %5817

; <label>:5805                                    ; preds = %5755
  %5806 = icmp slt i32 %5784, 0
  br i1 %5806, label %5807, label %5817

; <label>:5807                                    ; preds = %5805
  %5808 = fsub fast float %123, %5693
  %5809 = fsub fast float %124, %5694
  %5810 = fsub fast float %125, %5768
  %5811 = fmul fast float %5808, %5808
  %5812 = fmul fast float %5809, %5809
  %5813 = fadd fast float %5811, %5812
  %5814 = fmul fast float %5810, %5810
  %5815 = fadd fast float %5813, %5814
  %5816 = call float @dx.op.unary.f32(i32 24, float %5815)  ; Sqrt(value)
  br label %5817

; <label>:5817                                    ; preds = %5807, %5805, %5795
  %5818 = phi float [ %5804, %5795 ], [ %5816, %5807 ], [ 0.000000e+00, %5805 ]
  %5819 = and i1 %5763, %5761
  %5820 = fsub fast float -0.000000e+00, %5818
  %5821 = select i1 %5819, float -0.000000e+00, float %5820
  %5822 = fmul fast float %4261, 0x3FF7154760000000
  %5823 = fmul fast float %5822, %5821
  %5824 = fmul fast float %4262, 0x3FF7154760000000
  %5825 = fmul fast float %5824, %5821
  %5826 = fmul fast float %4263, 0x3FF7154760000000
  %5827 = fmul fast float %5826, %5821
  %5828 = call float @dx.op.unary.f32(i32 21, float %5823)  ; Exp(value)
  %5829 = call float @dx.op.unary.f32(i32 21, float %5825)  ; Exp(value)
  %5830 = call float @dx.op.unary.f32(i32 21, float %5827)  ; Exp(value)
  %5831 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5832 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  %5833 = call float @dx.op.unary.f32(i32 7, float %5830)  ; Saturate(value)
  %5834 = fmul fast float %5757, %5831
  %5835 = fmul fast float %5758, %5832
  %5836 = fmul fast float %5759, %5833
  %5837 = fsub fast float %5710, %4460
  %5838 = fsub fast float %5711, %4459
  %5839 = fsub fast float %5712, %4458
  %5840 = call float @dx.op.dot3.f32(i32 55, float %5837, float %5838, float %5839, float %5837, float %5838, float %5839)  ; Dot3(ax,ay,az,bx,by,bz)
  %5841 = call float @dx.op.unary.f32(i32 25, float %5840)  ; Rsqrt(value)
  %5842 = fmul fast float %5841, %5837
  %5843 = fmul fast float %5841, %5838
  %5844 = fmul fast float %5841, %5839
  %5845 = call float @dx.op.dot3.f32(i32 55, float %5710, float %5711, float %5712, float %4467, float %4468, float %4469)  ; Dot3(ax,ay,az,bx,by,bz)
  %5846 = call float @dx.op.dot3.f32(i32 55, float %4457, float %4456, float %4455, float %5842, float %5843, float %5844)  ; Dot3(ax,ay,az,bx,by,bz)
  %5847 = call float @dx.op.unary.f32(i32 7, float %5845)  ; Saturate(value)
  %5848 = fmul fast float %5847, %5717
  %5849 = fmul fast float %5847, %5847
  %5850 = fmul fast float %5849, %5756
  %5851 = call float @dx.op.unary.f32(i32 7, float %5850)  ; Saturate(value)
  %5852 = fmul fast float %5848, %5851
  %5853 = bitcast float %5707 to i32
  %5854 = ashr i32 %5853, 1
  %5855 = sub nsw i32 1597463007, %5854
  %5856 = bitcast i32 %5855 to float
  %5857 = fmul fast float %5856, %5704
  %5858 = fmul fast float %5856, %5705
  %5859 = fmul fast float %5856, %5706
  %5860 = fsub fast float %5857, %4460
  %5861 = fsub fast float %5858, %4459
  %5862 = fsub fast float %5859, %4458
  %5863 = call float @dx.op.dot3.f32(i32 55, float %5860, float %5861, float %5862, float %5860, float %5861, float %5862)  ; Dot3(ax,ay,az,bx,by,bz)
  %5864 = call float @dx.op.unary.f32(i32 25, float %5863)  ; Rsqrt(value)
  %5865 = fmul fast float %5860, %5864
  %5866 = fmul fast float %5861, %5864
  %5867 = fmul fast float %5862, %5864
  %5868 = call float @dx.op.dot3.f32(i32 55, float %4467, float %4468, float %4469, float %5865, float %5866, float %5867)  ; Dot3(ax,ay,az,bx,by,bz)
  %5869 = fmul fast float %5868, %5868
  %5870 = call float @dx.op.unary.f32(i32 6, float %5845)  ; FAbs(value)
  %5871 = fsub fast float 1.000000e+00, %4470
  %5872 = call float @dx.op.binary.f32(i32 35, float %5871, float 0x3F847AE140000000)  ; FMax(a,b)
  %5873 = fmul fast float %5872, %5872
  %5874 = fmul fast float %5873, %5873
  %5875 = fsub fast float 1.000000e+00, %5874
  %5876 = fmul fast float %4474, %4474
  %5877 = fmul fast float %5876, %5875
  %5878 = fadd fast float %5877, %5874
  %5879 = bitcast float %5878 to i32
  %5880 = ashr i32 %5879, 1
  %5881 = add nsw i32 %5880, 532487669
  %5882 = bitcast i32 %5881 to float
  %5883 = fadd fast float %5882, %4474
  %5884 = fmul fast float %5874, %5869
  %5885 = fsub fast float 1.000000e+00, %5869
  %5886 = fadd fast float %5885, %5884
  %5887 = fmul fast float %5870, %5870
  %5888 = fmul fast float %5887, %5875
  %5889 = fadd fast float %5888, %5874
  %5890 = bitcast float %5889 to i32
  %5891 = ashr i32 %5890, 1
  %5892 = add nsw i32 %5891, 532487669
  %5893 = bitcast i32 %5892 to float
  %5894 = fadd fast float %5893, %5870
  %5895 = fmul fast float %5886, %5886
  %5896 = fmul fast float %5895, %5883
  %5897 = fmul fast float %5896, %5894
  %5898 = fdiv fast float 1.000000e+00, %5897
  %5899 = bitcast float %5874 to i32
  %5900 = sitofp i32 %5899 to float
  %5901 = fmul fast float %5900, 0x3FE7F73180000000
  %5902 = fadd fast float %5901, 0x41AFE27C40000000
  %5903 = fptosi float %5902 to i32
  %5904 = bitcast i32 %5903 to float
  %5905 = fmul fast float %5690, 0x3FD80E9D60000000
  %5906 = fmul fast float %5905, %5856
  %5907 = fadd fast float %5904, %5906
  %5908 = bitcast float %5907 to i32
  %5909 = sub nsw i32 2129859010, %5908
  %5910 = bitcast i32 %5909 to float
  %5911 = fmul fast float %5874, %5898
  %5912 = fmul fast float %5911, %5904
  %5913 = fmul fast float %5912, %5910
  %5914 = call float @dx.op.unary.f32(i32 6, float %5846)  ; FAbs(value)
  %5915 = fsub fast float 1.000000e+00, %5914
  %5916 = bitcast float %5915 to i32
  %5917 = sitofp i32 %5916 to float
  %5918 = fmul fast float %5917, 5.000000e+00
  %5919 = fadd fast float %5918, 0xC1EFBF8940000000
  %5920 = fptosi float %5919 to i32
  %5921 = bitcast i32 %5920 to float
  %5922 = fsub fast float 1.000000e+00, %4461
  %5923 = fsub fast float 1.000000e+00, %4462
  %5924 = fsub fast float 1.000000e+00, %4472
  %5925 = fmul fast float %5921, %5922
  %5926 = fmul fast float %5921, %5923
  %5927 = fmul fast float %5921, %5924
  %5928 = fadd fast float %5925, %4461
  %5929 = fadd fast float %5926, %4462
  %5930 = fadd fast float %5927, %4472
  %5931 = fmul fast float %5845, 9.843750e-01
  %5932 = fadd fast float %5931, 7.812500e-03
  %5933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5932, float %5366, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5934 = extractvalue %dx.types.ResRet.f32 %5933, 2
  %5935 = extractvalue %dx.types.ResRet.f32 %5933, 3
  %5936 = fmul fast float %5934, %4461
  %5937 = fmul fast float %5934, %4462
  %5938 = fmul fast float %5934, %4472
  %5939 = fadd fast float %5936, %5935
  %5940 = fadd fast float %5937, %5935
  %5941 = fadd fast float %5938, %5935
  %5942 = call float @dx.op.binary.f32(i32 35, float %5940, float %5941)  ; FMax(a,b)
  %5943 = call float @dx.op.binary.f32(i32 35, float %5939, float %5942)  ; FMax(a,b)
  %5944 = fsub fast float 1.000000e+00, %5943
  %5945 = fsub fast float -0.000000e+00, %4467
  %5946 = fsub fast float -0.000000e+00, %4468
  %5947 = fsub fast float -0.000000e+00, %4469
  %5948 = call float @dx.op.dot3.f32(i32 55, float %5710, float %5711, float %5712, float %5945, float %5946, float %5947)  ; Dot3(ax,ay,az,bx,by,bz)
  %5949 = call float @dx.op.unary.f32(i32 7, float %5948)  ; Saturate(value)
  %5950 = fmul fast float %5949, %5717
  %5951 = fmul fast float %5949, 9.843750e-01
  %5952 = fadd fast float %5951, 7.812500e-03
  %5953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %31, float %5952, float %5366, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5954 = extractvalue %dx.types.ResRet.f32 %5953, 2
  %5955 = extractvalue %dx.types.ResRet.f32 %5953, 3
  %5956 = fmul fast float %5954, %4461
  %5957 = fmul fast float %5954, %4462
  %5958 = fmul fast float %5954, %4472
  %5959 = fadd fast float %5956, %5955
  %5960 = fadd fast float %5957, %5955
  %5961 = fadd fast float %5958, %5955
  %5962 = call float @dx.op.binary.f32(i32 35, float %5960, float %5961)  ; FMax(a,b)
  %5963 = call float @dx.op.binary.f32(i32 35, float %5959, float %5962)  ; FMax(a,b)
  %5964 = fsub fast float 1.000000e+00, %5963
  %5965 = fmul fast float %5950, %5964
  %5966 = fmul fast float %5965, %3883
  %5967 = fmul fast float %5965, %3884
  %5968 = fmul fast float %5965, %3885
  %5969 = fmul fast float %5944, %5852
  %5970 = fadd fast float %5966, %5969
  %5971 = fadd fast float %5967, %5969
  %5972 = fadd fast float %5968, %5969
  %5973 = fmul fast float %5834, %928
  %5974 = fmul fast float %5973, %5970
  %5975 = fmul fast float %5835, %928
  %5976 = fmul fast float %5975, %5971
  %5977 = fmul fast float %5836, %928
  %5978 = fmul fast float %5977, %5972
  %5979 = fadd fast float %5974, %5672
  %5980 = fadd fast float %5976, %5673
  %5981 = fadd fast float %5978, %5674
  %5982 = fmul fast float %5973, %5852
  %5983 = fmul fast float %5982, %5928
  %5984 = fmul fast float %5983, %5913
  %5985 = fmul fast float %5975, %5852
  %5986 = fmul fast float %5985, %5929
  %5987 = fmul fast float %5986, %5913
  %5988 = fmul fast float %5977, %5852
  %5989 = fmul fast float %5988, %5930
  %5990 = fmul fast float %5989, %5913
  %5991 = fadd fast float %5984, %5669
  %5992 = fadd fast float %5987, %5670
  %5993 = fadd fast float %5990, %5671
  br label %5747

; <label>:5994                                    ; preds = %5747
  br label %5995

; <label>:5995                                    ; preds = %5994, %5635
  %5996 = phi float [ %5637, %5635 ], [ %5748, %5994 ]
  %5997 = phi float [ %5638, %5635 ], [ %5749, %5994 ]
  %5998 = phi float [ %5639, %5635 ], [ %5750, %5994 ]
  %5999 = phi float [ %5640, %5635 ], [ %5751, %5994 ]
  %6000 = phi float [ %5641, %5635 ], [ %5752, %5994 ]
  %6001 = phi float [ %5642, %5635 ], [ %5753, %5994 ]
  %6002 = add i32 %5636, 1
  %6003 = icmp ugt i32 %6002, %5632
  br i1 %6003, label %6004, label %5635

; <label>:6004                                    ; preds = %5995
  br label %6005

; <label>:6005                                    ; preds = %6004, %5611, %5601
  %6006 = phi float [ %5602, %5601 ], [ %5602, %5611 ], [ %5996, %6004 ]
  %6007 = phi float [ %5603, %5601 ], [ %5603, %5611 ], [ %5997, %6004 ]
  %6008 = phi float [ %5604, %5601 ], [ %5604, %5611 ], [ %5998, %6004 ]
  %6009 = phi float [ %5605, %5601 ], [ %5605, %5611 ], [ %5999, %6004 ]
  %6010 = phi float [ %5606, %5601 ], [ %5606, %5611 ], [ %6000, %6004 ]
  %6011 = phi float [ %5607, %5601 ], [ %5607, %5611 ], [ %6001, %6004 ]
  %6012 = call float @dx.op.unary.f32(i32 24, float %4464)  ; Sqrt(value)
  %6013 = call float @dx.op.unary.f32(i32 24, float %4465)  ; Sqrt(value)
  %6014 = call float @dx.op.unary.f32(i32 24, float %4466)  ; Sqrt(value)
  %6015 = fmul fast float %6012, %6009
  %6016 = fmul fast float %6013, %6010
  %6017 = extractvalue %dx.types.CBufRet.f32 %5088, 0
  br i1 %167, label %6018, label %6039

; <label>:6018                                    ; preds = %6005
  %6019 = fadd fast float %6011, %3769
  %6020 = fmul fast float %6019, %3767
  %6021 = fsub fast float 1.000000e+00, %3767
  %6022 = call float @dx.op.unary.f32(i32 7, float %6021)  ; Saturate(value)
  %6023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6024 = extractvalue %dx.types.CBufRet.f32 %6023, 3
  %6025 = fmul fast float %6024, %6022
  %6026 = fadd fast float %6025, %6020
  %6027 = fsub fast float 1.000000e+00, %4474
  %6028 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6029 = extractvalue %dx.types.CBufRet.f32 %6028, 0
  %6030 = fmul fast float %6029, %6027
  %6031 = fsub fast float %6026, %6030
  %6032 = fadd fast float %6016, %6015
  %6033 = fmul fast float %6017, %6032
  %6034 = extractvalue %dx.types.CBufRet.f32 %6023, 1
  %6035 = fsub fast float %6031, %6034
  %6036 = extractvalue %dx.types.CBufRet.f32 %6023, 2
  %6037 = fmul fast float %6035, %6036
  %6038 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  br label %6055

; <label>:6039                                    ; preds = %6005
  %6040 = fmul fast float %6014, %6011
  %6041 = fmul fast float %6017, %6015
  %6042 = fmul fast float %6017, %6016
  %6043 = fmul fast float %6040, %6017
  %6044 = add i32 %37, 356
  %6045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %28, i32 %6044, i32 undef)  ; BufferLoad(srv,index,wot)
  %6046 = extractvalue %dx.types.ResRet.i32 %6045, 0
  %6047 = and i32 %6046, 32
  %6048 = icmp eq i32 %6047, 0
  br i1 %6048, label %6055, label %6049

; <label>:6049                                    ; preds = %6039
  %6050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %34, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6051 = extractvalue %dx.types.CBufRet.f32 %6050, 0
  %6052 = fmul fast float %6051, 0x3FE99999A0000000
  %6053 = fadd fast float %6051, %6041
  %6054 = fadd fast float %6052, %6043
  br label %6055

; <label>:6055                                    ; preds = %6049, %6039, %6018
  %6056 = phi float [ %6033, %6018 ], [ %6053, %6049 ], [ %6041, %6039 ]
  %6057 = phi float [ %6038, %6018 ], [ %6042, %6049 ], [ %6042, %6039 ]
  %6058 = phi float [ 1.000000e+00, %6018 ], [ %6054, %6049 ], [ %6043, %6039 ]
  %6059 = fmul fast float %6017, %6007
  %6060 = fmul fast float %6017, %6008
  %6061 = fadd fast float %6007, %6006
  %6062 = select i1 %167, float %6061, float %6006
  %6063 = fmul float %6062, %6017
  %6064 = select i1 %167, float 0.000000e+00, float %6059
  %6065 = select i1 %167, float 0.000000e+00, float %6060
  %6066 = fmul fast float %6056, %6012
  %6067 = fmul fast float %6057, %6013
  %6068 = fmul fast float %6058, %6014
  %6069 = fadd fast float %6063, %6066
  %6070 = fadd fast float %6064, %6067
  %6071 = fadd fast float %6065, %6068
  %6072 = select i1 %167, float %6057, float %6070
  %6073 = select i1 %167, float %6058, float %6071
  %6074 = call float @dx.op.binary.f32(i32 36, float %6069, float 3.225500e+04)  ; FMin(a,b)
  %6075 = call float @dx.op.binary.f32(i32 36, float %6072, float 3.225500e+04)  ; FMin(a,b)
  %6076 = call float @dx.op.binary.f32(i32 36, float %6073, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6074)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6075)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6076)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

