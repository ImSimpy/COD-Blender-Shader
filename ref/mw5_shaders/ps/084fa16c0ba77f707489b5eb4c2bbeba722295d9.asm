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
; shader hash: 954409d9e4605cbeb6d37175683740d0
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
; Number of inputs: 33, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 31, 32 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 31, 32 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 24, 25, 26, 27, 28, 30, 31, 32 }
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
  %38 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = icmp ne i32 %38, 0
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %65 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %66 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %67 = extractvalue %dx.types.CBufRet.f32 %66, 0
  %68 = fmul fast float %67, %61
  %69 = fmul fast float %67, %62
  %70 = select i1 %39, float 1.000000e+00, float -1.000000e+00
  %71 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %72 = bitcast float %71 to i32
  %73 = ashr i32 %72, 1
  %74 = sub nsw i32 1597250115, %73
  %75 = bitcast i32 %74 to float
  %76 = fmul fast float %53, %70
  %77 = fmul fast float %76, %75
  %78 = fmul fast float %54, %70
  %79 = fmul fast float %78, %75
  %80 = fmul fast float %55, %70
  %81 = fmul fast float %80, %75
  %82 = fmul fast float %54, %51
  %83 = fmul fast float %55, %50
  %84 = fsub fast float %82, %83
  %85 = fmul fast float %55, %49
  %86 = fmul fast float %53, %51
  %87 = fsub fast float %85, %86
  %88 = fmul fast float %53, %50
  %89 = fmul fast float %54, %49
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %84, %52
  %92 = fmul fast float %87, %52
  %93 = fmul fast float %90, %52
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 3
  %97 = fmul fast float %68, 2.000000e+00
  %98 = fmul fast float %97, %95
  %99 = fmul fast float %69, 2.000000e+00
  %100 = fmul fast float %99, %96
  %101 = fsub fast float 1.000000e+00, %98
  %102 = fsub fast float 1.000000e+00, %100
  %103 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %104 = extractvalue %dx.types.CBufRet.f32 %103, 0
  %105 = extractvalue %dx.types.CBufRet.f32 %103, 1
  %106 = extractvalue %dx.types.CBufRet.f32 %103, 2
  %107 = fmul fast float %101, %104
  %108 = fmul fast float %101, %105
  %109 = fmul fast float %101, %106
  %110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %111 = extractvalue %dx.types.CBufRet.f32 %110, 0
  %112 = extractvalue %dx.types.CBufRet.f32 %110, 1
  %113 = extractvalue %dx.types.CBufRet.f32 %110, 2
  %114 = fmul fast float %102, %111
  %115 = fmul fast float %102, %112
  %116 = fmul fast float %102, %113
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fadd fast float %114, %118
  %122 = fadd fast float %121, %107
  %123 = fadd fast float %115, %119
  %124 = fadd fast float %123, %108
  %125 = fadd fast float %116, %120
  %126 = fadd fast float %125, %109
  %127 = fmul fast float %122, %63
  %128 = fmul fast float %124, %63
  %129 = fmul fast float %126, %63
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 3
  %133 = fmul fast float %131, %68
  %134 = fmul fast float %132, %69
  %135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %136 = extractvalue %dx.types.ResRet.i32 %135, 0
  %137 = and i32 %136, 114688
  %138 = icmp ne i32 %137, 0
  %139 = select i1 %138, float %133, float 0.000000e+00
  %140 = select i1 %138, float %134, float 0.000000e+00
  %141 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %139, float %140, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %142 = extractvalue %dx.types.ResRet.f32 %141, 0
  %143 = fmul fast float %142, 2.550000e+02
  %144 = fptoui float %143 to i32
  %145 = select i1 %138, i32 %144, i32 0
  %146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.i32 %147, 3
  %149 = and i32 %148, 3
  %150 = icmp ne i32 %149, 0
  %151 = and i32 %148, 4
  %152 = icmp ne i32 %151, 0
  %153 = and i1 %150, %152
  br i1 %153, label %154, label %165

; <label>:154                                     ; preds = %0
  %155 = extractvalue %dx.types.CBufRet.f32 %146, 3
  %156 = fmul fast float %155, %69
  %157 = extractvalue %dx.types.CBufRet.f32 %146, 2
  %158 = fmul fast float %157, %68
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %158, float %156, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = fsub fast float 1.000000e+00, %160
  %162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %163 = extractvalue %dx.types.CBufRet.f32 %162, 0
  %164 = fcmp fast olt float %161, %163
  br label %168

; <label>:165                                     ; preds = %0
  %166 = icmp eq i32 %151, 0
  %167 = and i1 %150, %166
  br label %168

; <label>:168                                     ; preds = %165, %154
  %169 = phi i1 [ %164, %154 ], [ %167, %165 ]
  %170 = add i32 %40, 156
  %171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %170, i32 undef)  ; BufferLoad(srv,index,wot)
  %172 = extractvalue %dx.types.ResRet.i32 %171, 0
  %173 = shl i32 %172, 4
  %174 = and i32 %173, 32752
  %175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %174)  ; LegacyF16ToF32(value)
  %176 = lshr i32 %172, 7
  %177 = and i32 %176, 32752
  %178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %177)  ; LegacyF16ToF32(value)
  %179 = lshr i32 %172, 22
  %180 = shl nuw nsw i32 %179, 5
  %181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %180)  ; LegacyF16ToF32(value)
  %182 = add i32 %40, 216
  %183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %184 = extractvalue %dx.types.ResRet.i32 %183, 0
  %185 = and i32 %184, 255
  %186 = uitofp i32 %185 to float
  %187 = fmul fast float %186, 0x3F70101020000000
  %188 = lshr i32 %184, 8
  %189 = and i32 %188, 255
  %190 = uitofp i32 %189 to float
  %191 = fmul fast float %190, 0x3F70101020000000
  %192 = lshr i32 %184, 16
  %193 = and i32 %192, 255
  %194 = uitofp i32 %193 to float
  %195 = fmul fast float %194, 0x3F70101020000000
  %196 = add i32 %40, 36
  %197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %196, i32 undef)  ; BufferLoad(srv,index,wot)
  %198 = extractvalue %dx.types.ResRet.i32 %197, 0
  %199 = and i32 %198, 65535
  %200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %199)  ; LegacyF16ToF32(value)
  %201 = lshr i32 %198, 16
  %202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %201)  ; LegacyF16ToF32(value)
  %203 = add i32 %40, 288
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = and i32 %205, 65535
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = lshr i32 %205, 16
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = fmul fast float %207, 0x3F50624DE0000000
  %211 = fmul fast float %209, 0x3F50624DE0000000
  %212 = add i32 %40, 172
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = shl i32 %214, 4
  %216 = and i32 %215, 32752
  %217 = call float @dx.op.legacyF16ToF32(i32 131, i32 %216)  ; LegacyF16ToF32(value)
  %218 = lshr i32 %214, 7
  %219 = and i32 %218, 32752
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %214, 22
  %222 = shl nuw nsw i32 %221, 5
  %223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %222)  ; LegacyF16ToF32(value)
  %224 = add i32 %40, 232
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = and i32 %226, 255
  %228 = uitofp i32 %227 to float
  %229 = fmul fast float %228, 0x3F70101020000000
  %230 = lshr i32 %226, 8
  %231 = and i32 %230, 255
  %232 = uitofp i32 %231 to float
  %233 = fmul fast float %232, 0x3F70101020000000
  %234 = lshr i32 %226, 16
  %235 = and i32 %234, 255
  %236 = uitofp i32 %235 to float
  %237 = fmul fast float %236, 0x3F70101020000000
  %238 = add i32 %40, 52
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = and i32 %240, 65535
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = lshr i32 %240, 16
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = add i32 %40, 304
  %246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %245, i32 undef)  ; BufferLoad(srv,index,wot)
  %247 = extractvalue %dx.types.ResRet.i32 %246, 0
  %248 = and i32 %247, 65535
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %247, 16
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = fmul fast float %249, 0x3F50624DE0000000
  %253 = fmul fast float %251, 0x3F50624DE0000000
  %254 = add i32 %40, 188
  %255 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %254, i32 undef)  ; BufferLoad(srv,index,wot)
  %256 = extractvalue %dx.types.ResRet.i32 %255, 0
  %257 = shl i32 %256, 4
  %258 = and i32 %257, 32752
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %256, 7
  %261 = and i32 %260, 32752
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %256, 22
  %264 = shl nuw nsw i32 %263, 5
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = add i32 %40, 248
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = and i32 %268, 255
  %270 = uitofp i32 %269 to float
  %271 = fmul fast float %270, 0x3F70101020000000
  %272 = lshr i32 %268, 8
  %273 = and i32 %272, 255
  %274 = uitofp i32 %273 to float
  %275 = fmul fast float %274, 0x3F70101020000000
  %276 = lshr i32 %268, 16
  %277 = and i32 %276, 255
  %278 = uitofp i32 %277 to float
  %279 = fmul fast float %278, 0x3F70101020000000
  %280 = add i32 %40, 68
  %281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %280, i32 undef)  ; BufferLoad(srv,index,wot)
  %282 = extractvalue %dx.types.ResRet.i32 %281, 0
  %283 = and i32 %282, 65535
  %284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %283)  ; LegacyF16ToF32(value)
  %285 = lshr i32 %282, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = add i32 %40, 320
  %288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %287, i32 undef)  ; BufferLoad(srv,index,wot)
  %289 = extractvalue %dx.types.ResRet.i32 %288, 0
  %290 = and i32 %289, 65535
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %289, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = fmul fast float %291, 0x3F50624DE0000000
  %295 = fmul fast float %293, 0x3F50624DE0000000
  %296 = add i32 %40, 204
  %297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %296, i32 undef)  ; BufferLoad(srv,index,wot)
  %298 = extractvalue %dx.types.ResRet.i32 %297, 0
  %299 = shl i32 %298, 4
  %300 = and i32 %299, 32752
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %298, 7
  %303 = and i32 %302, 32752
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %298, 22
  %306 = shl nuw nsw i32 %305, 5
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = add i32 %40, 264
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 255
  %312 = uitofp i32 %311 to float
  %313 = fmul fast float %312, 0x3F70101020000000
  %314 = lshr i32 %310, 8
  %315 = and i32 %314, 255
  %316 = uitofp i32 %315 to float
  %317 = fmul fast float %316, 0x3F70101020000000
  %318 = lshr i32 %310, 16
  %319 = and i32 %318, 255
  %320 = uitofp i32 %319 to float
  %321 = fmul fast float %320, 0x3F70101020000000
  %322 = add i32 %40, 84
  %323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %322, i32 undef)  ; BufferLoad(srv,index,wot)
  %324 = extractvalue %dx.types.ResRet.i32 %323, 0
  %325 = and i32 %324, 65535
  %326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %325)  ; LegacyF16ToF32(value)
  %327 = lshr i32 %324, 16
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = add i32 %40, 336
  %330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %329, i32 undef)  ; BufferLoad(srv,index,wot)
  %331 = extractvalue %dx.types.ResRet.i32 %330, 0
  %332 = and i32 %331, 65535
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %331, 16
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = fmul fast float %333, 0x3F50624DE0000000
  %337 = fmul fast float %335, 0x3F50624DE0000000
  %338 = add i32 %40, 348
  %339 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %340 = extractvalue %dx.types.ResRet.i32 %339, 0
  %341 = and i32 %340, 32
  %342 = icmp eq i32 %341, 0
  %343 = and i32 %340, 64
  %344 = icmp eq i32 %343, 0
  %345 = and i32 %340, 128
  %346 = icmp eq i32 %345, 0
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 2
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %364, label %351

; <label>:351                                     ; preds = %168
  %352 = add i32 %40, 488
  %353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %352, i32 undef)  ; BufferLoad(srv,index,wot)
  %354 = extractvalue %dx.types.ResRet.i32 %353, 0
  %355 = add i32 %354, 0
  %356 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %355, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %357 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %356, %dx.types.Handle %65, float %56, float %57, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %358 = extractvalue %dx.types.ResRet.f32 %357, 0
  %359 = extractvalue %dx.types.ResRet.f32 %357, 1
  %360 = extractvalue %dx.types.ResRet.f32 %357, 2
  %361 = fmul fast float %358, %58
  %362 = fmul fast float %359, %59
  %363 = fmul fast float %360, %60
  br label %364

; <label>:364                                     ; preds = %351, %168
  %365 = phi float [ %60, %168 ], [ %363, %351 ]
  %366 = phi float [ %59, %168 ], [ %362, %351 ]
  %367 = phi float [ %58, %168 ], [ %361, %351 ]
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 2
  %371 = icmp eq i32 %370, 0
  br i1 %371, label %391, label %372

; <label>:372                                     ; preds = %364
  %373 = add i32 %40, 44
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %373, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 1
  %377 = icmp ne i32 %376, 0
  %378 = select i1 %377, float %367, float 1.000000e+00
  %379 = add i32 %40, 60
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = and i32 %381, 1
  %383 = icmp ne i32 %382, 0
  %384 = select i1 %383, float %366, float 1.000000e+00
  %385 = add i32 %40, 76
  %386 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %385, i32 undef)  ; BufferLoad(srv,index,wot)
  %387 = extractvalue %dx.types.ResRet.i32 %386, 0
  %388 = and i32 %387, 1
  %389 = icmp ne i32 %388, 0
  %390 = select i1 %389, float %365, float 1.000000e+00
  br label %391

; <label>:391                                     ; preds = %372, %364
  %392 = phi float [ %365, %364 ], [ %390, %372 ]
  %393 = phi float [ %366, %364 ], [ %384, %372 ]
  %394 = phi float [ %367, %364 ], [ %378, %372 ]
  %395 = lshr i32 %369, 20
  %396 = and i32 %395, 3
  %397 = add nuw nsw i32 %396, 1
  %398 = add i32 %40, 24
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = add i32 %40, 28
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = or i32 %403, %400
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %917, label %406

; <label>:406                                     ; preds = %391
  %407 = and i32 %400, 262144
  %408 = icmp ne i32 %407, 0
  %409 = select i1 %408, float %43, float 1.000000e+00
  %410 = select i1 %408, float %44, float 0.000000e+00
  %411 = select i1 %408, float %45, float 0.000000e+00
  %412 = select i1 %408, float %46, float 1.000000e+00
  %413 = select i1 %408, float %47, float %56
  %414 = select i1 %408, float %48, float %57
  %415 = add i32 %40, 284
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = lshr i32 %417, 16
  %419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %418)  ; LegacyF16ToF32(value)
  %420 = fmul fast float %419, 0x3F50624DE0000000
  %421 = add i32 %40, 88
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = lshr i32 %423, 16
  %425 = and i32 %424, 255
  %426 = lshr i32 %423, 24
  %427 = add i32 %40, 292
  %428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %427, i32 undef)  ; BufferLoad(srv,index,wot)
  %429 = extractvalue %dx.types.ResRet.i32 %428, 0
  %430 = and i32 %429, 65535
  %431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %430)  ; LegacyF16ToF32(value)
  %432 = lshr i32 %429, 16
  %433 = call float @dx.op.legacyF16ToF32(i32 131, i32 %432)  ; LegacyF16ToF32(value)
  %434 = add i32 %40, 32
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = lshr i32 %436, 22
  %438 = shl nuw nsw i32 %437, 5
  %439 = call float @dx.op.legacyF16ToF32(i32 131, i32 %438)  ; LegacyF16ToF32(value)
  %440 = shl i32 %436, 4
  %441 = and i32 %440, 32752
  %442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %441)  ; LegacyF16ToF32(value)
  %443 = lshr i32 %436, 7
  %444 = and i32 %443, 32752
  %445 = call float @dx.op.legacyF16ToF32(i32 131, i32 %444)  ; LegacyF16ToF32(value)
  %446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %447 = extractvalue %dx.types.CBufRet.f32 %446, 3
  %448 = fmul fast float %447, 1.000000e+03
  %449 = fmul fast float %210, %448
  %450 = call float @dx.op.unary.f32(i32 22, float %449)  ; Frc(value)
  %451 = fadd fast float %450, %200
  %452 = fmul fast float %211, %448
  %453 = call float @dx.op.unary.f32(i32 22, float %452)  ; Frc(value)
  %454 = fadd fast float %453, %202
  %455 = fmul fast float %420, %448
  %456 = call float @dx.op.unary.f32(i32 22, float %455)  ; Frc(value)
  %457 = fmul fast float %456, 0x401921FB60000000
  %458 = fadd fast float %457, %439
  %459 = call float @dx.op.unary.f32(i32 13, float %458)  ; Sin(value)
  %460 = call float @dx.op.unary.f32(i32 12, float %458)  ; Cos(value)
  %461 = fsub fast float -0.000000e+00, %459
  %462 = fadd fast float %413, -5.000000e-01
  %463 = fadd fast float %414, -5.000000e-01
  %464 = fmul fast float %431, %462
  %465 = fmul fast float %433, %463
  %466 = fadd fast float %464, 5.000000e-01
  %467 = fadd fast float %465, 5.000000e-01
  %468 = fmul fast float %442, %466
  %469 = fmul fast float %445, %467
  %470 = fmul fast float %460, %468
  %471 = call float @dx.op.tertiary.f32(i32 46, float %461, float %469, float %470)  ; FMad(a,b,c)
  %472 = fmul fast float %459, %468
  %473 = call float @dx.op.tertiary.f32(i32 46, float %460, float %469, float %472)  ; FMad(a,b,c)
  %474 = fadd fast float %451, %471
  %475 = fadd fast float %454, %473
  %476 = icmp ugt i32 %425, 1
  %477 = icmp ugt i32 %423, 33554431
  %478 = or i1 %477, %476
  br i1 %478, label %479, label %504

; <label>:479                                     ; preds = %406
  %480 = add i32 %40, 228
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = lshr i32 %482, 16
  %484 = call float @dx.op.legacyF16ToF32(i32 131, i32 %483)  ; LegacyF16ToF32(value)
  %485 = fmul fast float %447, %484
  %486 = call float @dx.op.unary.f32(i32 22, float %485)  ; Frc(value)
  %487 = mul nuw nsw i32 %425, %426
  %488 = uitofp i32 %487 to float
  %489 = fmul fast float %486, %488
  %490 = call float @dx.op.unary.f32(i32 27, float %489)  ; Round_ni(value)
  %491 = fptoui float %490 to i32
  %492 = urem i32 %491, %425
  %493 = udiv i32 %491, %426
  %494 = call float @dx.op.unary.f32(i32 22, float %474)  ; Frc(value)
  %495 = call float @dx.op.unary.f32(i32 22, float %475)  ; Frc(value)
  %496 = uitofp i32 %492 to float
  %497 = uitofp i32 %493 to float
  %498 = fadd fast float %494, %496
  %499 = fadd fast float %495, %497
  %500 = uitofp i32 %425 to float
  %501 = uitofp i32 %426 to float
  %502 = fdiv fast float %498, %500
  %503 = fdiv fast float %499, %501
  br label %504

; <label>:504                                     ; preds = %479, %406
  %505 = phi float [ %502, %479 ], [ %474, %406 ]
  %506 = phi float [ %503, %479 ], [ %475, %406 ]
  %507 = and i32 %400, 16
  %508 = icmp eq i32 %507, 0
  br i1 %508, label %705, label %509

; <label>:509                                     ; preds = %504
  %510 = add i32 %40, 376
  %511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %510, i32 undef)  ; BufferLoad(srv,index,wot)
  %512 = extractvalue %dx.types.ResRet.i32 %511, 0
  %513 = add i32 %512, 0
  %514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %513, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %515 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %514, %dx.types.Handle %64, float %505, float %506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %516 = extractvalue %dx.types.ResRet.f32 %515, 0
  %517 = extractvalue %dx.types.ResRet.f32 %515, 1
  %518 = extractvalue %dx.types.ResRet.f32 %515, 2
  %519 = extractvalue %dx.types.ResRet.f32 %515, 3
  %520 = and i32 %423, 255
  %521 = uitofp i32 %520 to float
  %522 = lshr i32 %423, 8
  %523 = and i32 %522, 255
  %524 = uitofp i32 %523 to float
  %525 = fmul fast float %519, %521
  %526 = fadd fast float %525, %524
  %527 = fmul fast float %526, 0x3F70101000000000
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %529, 512
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %540, label %532

; <label>:532                                     ; preds = %509
  %533 = add i32 %40, 456
  %534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %533, i32 undef)  ; BufferLoad(srv,index,wot)
  %535 = extractvalue %dx.types.ResRet.i32 %534, 0
  %536 = add i32 %535, 0
  %537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %537, %dx.types.Handle %65, float %505, float %506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %539 = extractvalue %dx.types.ResRet.f32 %538, 0
  br label %540

; <label>:540                                     ; preds = %532, %509
  %541 = phi float [ %539, %532 ], [ 1.000000e+00, %509 ]
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = and i32 %543, 33554432
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %652, label %546

; <label>:546                                     ; preds = %540
  %547 = add i32 %40, 224
  %548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %547, i32 undef)  ; BufferLoad(srv,index,wot)
  %549 = extractvalue %dx.types.ResRet.i32 %548, 0
  %550 = and i32 %549, 65535
  %551 = call float @dx.op.legacyF16ToF32(i32 131, i32 %550)  ; LegacyF16ToF32(value)
  %552 = lshr i32 %549, 16
  %553 = call float @dx.op.legacyF16ToF32(i32 131, i32 %552)  ; LegacyF16ToF32(value)
  %554 = add i32 %40, 228
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 65535
  %558 = call float @dx.op.legacyF16ToF32(i32 131, i32 %557)  ; LegacyF16ToF32(value)
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %182, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = lshr i32 %560, 24
  %562 = uitofp i32 %561 to float
  %563 = fmul fast float %562, 0x3F70101020000000
  %564 = and i32 %560, 255
  %565 = uitofp i32 %564 to float
  %566 = fmul fast float %565, 0x3F70101020000000
  %567 = lshr i32 %560, 8
  %568 = and i32 %567, 255
  %569 = uitofp i32 %568 to float
  %570 = fmul fast float %569, 0x3F70101020000000
  %571 = lshr i32 %560, 16
  %572 = and i32 %571, 255
  %573 = uitofp i32 %572 to float
  %574 = fmul fast float %573, 0x3F70101020000000
  %575 = add i32 %40, 220
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = lshr i32 %577, 24
  %579 = uitofp i32 %578 to float
  %580 = fmul fast float %579, 0x3F70101020000000
  %581 = and i32 %577, 255
  %582 = uitofp i32 %581 to float
  %583 = fmul fast float %582, 0x3F70101020000000
  %584 = lshr i32 %577, 8
  %585 = and i32 %584, 255
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %586, 0x3F70101020000000
  %588 = lshr i32 %577, 16
  %589 = and i32 %588, 255
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %590, 0x3F70101020000000
  %592 = bitcast float %516 to i32
  %593 = ashr i32 %592, 1
  %594 = sub nsw i32 1597463174, %593
  %595 = bitcast i32 %594 to float
  %596 = fmul fast float %516, 5.000000e-01
  %597 = fmul fast float %595, %595
  %598 = fmul fast float %597, %596
  %599 = fsub fast float 1.500000e+00, %598
  %600 = fmul fast float %595, %516
  %601 = fmul fast float %600, %599
  %602 = bitcast float %517 to i32
  %603 = ashr i32 %602, 1
  %604 = sub nsw i32 1597463174, %603
  %605 = bitcast i32 %604 to float
  %606 = fmul fast float %517, 5.000000e-01
  %607 = fmul fast float %605, %605
  %608 = fmul fast float %607, %606
  %609 = fsub fast float 1.500000e+00, %608
  %610 = fmul fast float %605, %517
  %611 = fmul fast float %610, %609
  %612 = bitcast float %518 to i32
  %613 = ashr i32 %612, 1
  %614 = sub nsw i32 1597463174, %613
  %615 = bitcast i32 %614 to float
  %616 = fmul fast float %518, 5.000000e-01
  %617 = fmul fast float %615, %615
  %618 = fmul fast float %617, %616
  %619 = fsub fast float 1.500000e+00, %618
  %620 = fmul fast float %615, %518
  %621 = fmul fast float %620, %619
  %622 = fsub fast float %601, %583
  %623 = fsub fast float %611, %587
  %624 = fsub fast float %621, %591
  %625 = fmul fast float %622, %551
  %626 = fmul fast float %623, %553
  %627 = fmul fast float %624, %558
  %628 = fadd fast float %625, %566
  %629 = fadd fast float %626, %570
  %630 = fadd fast float %627, %574
  %631 = call float @dx.op.unary.f32(i32 7, float %628)  ; Saturate(value)
  %632 = call float @dx.op.unary.f32(i32 7, float %629)  ; Saturate(value)
  %633 = call float @dx.op.unary.f32(i32 7, float %630)  ; Saturate(value)
  %634 = fmul fast float %631, %631
  %635 = fmul fast float %632, %632
  %636 = fmul fast float %633, %633
  %637 = fsub fast float %634, %516
  %638 = fsub fast float %635, %517
  %639 = fsub fast float %636, %518
  %640 = fmul fast float %637, %541
  %641 = fmul fast float %638, %541
  %642 = fmul fast float %639, %541
  %643 = fadd fast float %640, %516
  %644 = fadd fast float %641, %517
  %645 = fadd fast float %642, %518
  %646 = fadd fast float %563, %527
  %647 = fsub fast float %646, %580
  %648 = call float @dx.op.unary.f32(i32 7, float %647)  ; Saturate(value)
  %649 = fsub fast float %648, %527
  %650 = fmul fast float %649, %541
  %651 = fadd fast float %650, %527
  br label %705

; <label>:652                                     ; preds = %540
  %653 = and i32 %543, 134217728
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %689, label %655

; <label>:655                                     ; preds = %652
  %656 = call float @dx.op.unary.f32(i32 24, float %187)  ; Sqrt(value)
  %657 = call float @dx.op.unary.f32(i32 24, float %191)  ; Sqrt(value)
  %658 = call float @dx.op.unary.f32(i32 24, float %195)  ; Sqrt(value)
  %659 = fadd fast float %656, -5.000000e-01
  %660 = fadd fast float %657, -5.000000e-01
  %661 = fadd fast float %658, -5.000000e-01
  %662 = fmul fast float %659, %541
  %663 = fmul fast float %660, %541
  %664 = fmul fast float %661, %541
  %665 = fadd fast float %662, 5.000000e-01
  %666 = fadd fast float %663, 5.000000e-01
  %667 = fadd fast float %664, 5.000000e-01
  %668 = call float @dx.op.unary.f32(i32 24, float %516)  ; Sqrt(value)
  %669 = call float @dx.op.unary.f32(i32 24, float %517)  ; Sqrt(value)
  %670 = call float @dx.op.unary.f32(i32 24, float %518)  ; Sqrt(value)
  %671 = fmul fast float %665, 2.000000e+00
  %672 = fsub fast float 1.000000e+00, %671
  %673 = fmul fast float %672, %668
  %674 = fadd fast float %673, %671
  %675 = fmul fast float %674, %668
  %676 = fmul fast float %666, 2.000000e+00
  %677 = fsub fast float 1.000000e+00, %676
  %678 = fmul fast float %677, %669
  %679 = fadd fast float %678, %676
  %680 = fmul fast float %679, %669
  %681 = fmul fast float %667, 2.000000e+00
  %682 = fsub fast float 1.000000e+00, %681
  %683 = fmul fast float %682, %670
  %684 = fadd fast float %683, %681
  %685 = fmul fast float %684, %670
  %686 = fmul fast float %675, %675
  %687 = fmul fast float %680, %680
  %688 = fmul fast float %685, %685
  br label %705

; <label>:689                                     ; preds = %652
  %690 = fmul fast float %187, %187
  %691 = fmul fast float %191, %191
  %692 = fmul fast float %195, %195
  %693 = fadd fast float %690, -1.000000e+00
  %694 = fadd fast float %691, -1.000000e+00
  %695 = fadd fast float %692, -1.000000e+00
  %696 = fmul fast float %541, %693
  %697 = fmul fast float %541, %694
  %698 = fmul fast float %541, %695
  %699 = fadd fast float %696, 1.000000e+00
  %700 = fadd fast float %697, 1.000000e+00
  %701 = fadd fast float %698, 1.000000e+00
  %702 = fmul fast float %699, %516
  %703 = fmul fast float %700, %517
  %704 = fmul fast float %701, %518
  br label %705

; <label>:705                                     ; preds = %689, %655, %546, %504
  %706 = phi float [ %651, %546 ], [ %527, %655 ], [ %527, %689 ], [ 0x3FA23C0BE0000000, %504 ]
  %707 = phi float [ %643, %546 ], [ %686, %655 ], [ %702, %689 ], [ 1.000000e+00, %504 ]
  %708 = phi float [ %644, %546 ], [ %687, %655 ], [ %703, %689 ], [ 1.000000e+00, %504 ]
  %709 = phi float [ %645, %546 ], [ %688, %655 ], [ %704, %689 ], [ 1.000000e+00, %504 ]
  %710 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %711 = extractvalue %dx.types.CBufRet.i32 %710, 1
  %712 = and i32 %711, 1
  %713 = icmp ne i32 %712, 0
  %714 = add i32 %40, 356
  %715 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %714, i32 undef)  ; BufferLoad(srv,index,wot)
  %716 = extractvalue %dx.types.ResRet.i32 %715, 0
  %717 = and i32 %716, 32
  %718 = icmp ne i32 %717, 0
  %719 = and i1 %713, %718
  %720 = select i1 %719, float 1.000000e+00, float %707
  %721 = select i1 %719, float 0x3FD3333340000000, float %708
  %722 = select i1 %719, float 0x3FD3333340000000, float %709
  %723 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %724 = extractvalue %dx.types.ResRet.i32 %723, 0
  %725 = and i32 %724, 32
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %799, label %727

; <label>:727                                     ; preds = %705
  %728 = add i32 %40, 92
  %729 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %728, i32 undef)  ; BufferLoad(srv,index,wot)
  %730 = extractvalue %dx.types.ResRet.i32 %729, 0
  %731 = add i32 %40, 392
  %732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %731, i32 undef)  ; BufferLoad(srv,index,wot)
  %733 = extractvalue %dx.types.ResRet.i32 %732, 0
  %734 = add i32 %733, 0
  %735 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %734, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %736 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %735, %dx.types.Handle %64, float %505, float %506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %737 = extractvalue %dx.types.ResRet.f32 %736, 0
  %738 = extractvalue %dx.types.ResRet.f32 %736, 1
  %739 = extractvalue %dx.types.ResRet.f32 %736, 2
  %740 = extractvalue %dx.types.ResRet.f32 %736, 3
  %741 = and i32 %730, 255
  %742 = uitofp i32 %741 to float
  %743 = lshr i32 %730, 8
  %744 = and i32 %743, 255
  %745 = uitofp i32 %744 to float
  %746 = lshr i32 %730, 16
  %747 = and i32 %746, 255
  %748 = uitofp i32 %747 to float
  %749 = fmul fast float %748, 0x3F70101000000000
  %750 = fmul fast float %737, %742
  %751 = fadd fast float %750, %745
  %752 = fmul fast float %751, 0x3F70101000000000
  %753 = fadd fast float %738, -5.000000e-01
  %754 = fadd fast float %740, -5.000000e-01
  %755 = fmul fast float %753, %749
  %756 = fmul fast float %754, %749
  %757 = fadd fast float %755, 5.000000e-01
  %758 = fadd fast float %756, 5.000000e-01
  %759 = fmul fast float %757, 2.000000e+00
  %760 = fadd fast float %759, -1.000000e+00
  %761 = fmul fast float %758, 2.000000e+00
  %762 = fadd fast float %761, -1.000000e+00
  %763 = fadd fast float %760, %762
  %764 = fmul fast float %763, 5.000000e-01
  %765 = fsub fast float %760, %762
  %766 = fmul fast float %765, 5.000000e-01
  %767 = call float @dx.op.unary.f32(i32 6, float %764)  ; FAbs(value)
  %768 = fsub fast float 1.000000e+00, %767
  %769 = call float @dx.op.unary.f32(i32 6, float %766)  ; FAbs(value)
  %770 = fsub fast float %768, %769
  %771 = call float @dx.op.dot3.f32(i32 55, float %764, float %766, float %770, float %764, float %766, float %770)  ; Dot3(ax,ay,az,bx,by,bz)
  %772 = call float @dx.op.unary.f32(i32 25, float %771)  ; Rsqrt(value)
  %773 = fmul fast float %764, %772
  %774 = fmul fast float %766, %772
  %775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %776 = extractvalue %dx.types.ResRet.i32 %775, 0
  %777 = and i32 %776, 67108864
  %778 = icmp eq i32 %777, 0
  br i1 %778, label %795, label %779

; <label>:779                                     ; preds = %727
  %780 = add i32 %40, 280
  %781 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %780, i32 undef)  ; BufferLoad(srv,index,wot)
  %782 = extractvalue %dx.types.ResRet.i32 %781, 0
  %783 = and i32 %782, 65535
  %784 = call float @dx.op.legacyF16ToF32(i32 131, i32 %783)  ; LegacyF16ToF32(value)
  %785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %415, i32 undef)  ; BufferLoad(srv,index,wot)
  %786 = extractvalue %dx.types.ResRet.i32 %785, 0
  %787 = and i32 %786, 65535
  %788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %787)  ; LegacyF16ToF32(value)
  %789 = lshr i32 %782, 16
  %790 = call float @dx.op.legacyF16ToF32(i32 131, i32 %789)  ; LegacyF16ToF32(value)
  %791 = fsub fast float %752, %790
  %792 = fmul fast float %791, %784
  %793 = fadd fast float %792, %788
  %794 = call float @dx.op.unary.f32(i32 7, float %793)  ; Saturate(value)
  br label %795

; <label>:795                                     ; preds = %779, %727
  %796 = phi float [ %794, %779 ], [ %752, %727 ]
  %797 = call float @dx.op.dot2.f32(i32 54, float %773, float %774, float %409, float %410)  ; Dot2(ax,ay,bx,by)
  %798 = call float @dx.op.dot2.f32(i32 54, float %773, float %774, float %411, float %412)  ; Dot2(ax,ay,bx,by)
  br label %799

; <label>:799                                     ; preds = %795, %705
  %800 = phi float [ %796, %795 ], [ 0x3FD6666660000000, %705 ]
  %801 = phi float [ %797, %795 ], [ 0.000000e+00, %705 ]
  %802 = phi float [ %798, %795 ], [ 0.000000e+00, %705 ]
  %803 = phi float [ %739, %795 ], [ 1.000000e+00, %705 ]
  %804 = add i32 %40, 160
  %805 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %806 = extractvalue %dx.types.ResRet.i32 %805, 0
  %807 = lshr i32 %806, 22
  %808 = shl nuw nsw i32 %807, 5
  %809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %808)  ; LegacyF16ToF32(value)
  %810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %811 = extractvalue %dx.types.ResRet.i32 %810, 0
  %812 = and i32 %811, 64
  %813 = icmp eq i32 %812, 0
  br i1 %813, label %847, label %814

; <label>:814                                     ; preds = %799
  %815 = add i32 %40, 408
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %815, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = add i32 %817, 0
  %819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %820 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %821 = extractvalue %dx.types.ResRet.i32 %820, 0
  %822 = and i32 %821, 131072
  %823 = icmp eq i32 %822, 0
  %824 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %819, %dx.types.Handle %64, float %505, float %506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %825 = extractvalue %dx.types.ResRet.f32 %824, 0
  %826 = extractvalue %dx.types.ResRet.f32 %824, 1
  %827 = extractvalue %dx.types.ResRet.f32 %824, 2
  %828 = fmul fast float %825, %175
  %829 = fmul fast float %826, %178
  %830 = fmul fast float %827, %181
  br i1 %823, label %837, label %831

; <label>:831                                     ; preds = %814
  %832 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %833 = extractvalue %dx.types.CBufRet.f32 %832, 0
  %834 = fmul fast float %833, %828
  %835 = fmul fast float %833, %829
  %836 = fmul fast float %833, %830
  br label %837

; <label>:837                                     ; preds = %831, %814
  %838 = phi float [ %834, %831 ], [ %828, %814 ]
  %839 = phi float [ %835, %831 ], [ %829, %814 ]
  %840 = phi float [ %836, %831 ], [ %830, %814 ]
  %841 = fmul fast float %838, %809
  %842 = select i1 %169, float %841, float %838
  %843 = call float @dx.op.dot3.f32(i32 55, float %842, float %839, float %840, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %844 = select i1 %169, float 0.000000e+00, float %838
  %845 = select i1 %169, float %843, float %839
  %846 = select i1 %169, float 0.000000e+00, float %840
  br label %847

; <label>:847                                     ; preds = %837, %799
  %848 = phi float [ %844, %837 ], [ 0.000000e+00, %799 ]
  %849 = phi float [ %845, %837 ], [ 0.000000e+00, %799 ]
  %850 = phi float [ %846, %837 ], [ 0.000000e+00, %799 ]
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = and i32 %852, 10240
  %854 = icmp eq i32 %853, 0
  br i1 %854, label %899, label %855

; <label>:855                                     ; preds = %847
  %856 = add i32 %40, 472
  %857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %856, i32 undef)  ; BufferLoad(srv,index,wot)
  %858 = extractvalue %dx.types.ResRet.i32 %857, 0
  %859 = add i32 %858, 0
  %860 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %859, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %861 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %860, %dx.types.Handle %65, float %505, float %506, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %862 = extractvalue %dx.types.ResRet.f32 %861, 1
  %863 = extractvalue %dx.types.ResRet.f32 %861, 3
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = and i32 %865, 1048576
  %867 = icmp ne i32 %866, 0
  %868 = and i32 %865, 8192
  %869 = icmp eq i32 %868, 0
  br i1 %869, label %885, label %870

; <label>:870                                     ; preds = %855
  %871 = extractvalue %dx.types.ResRet.f32 %861, 2
  %872 = select i1 %867, float %871, float %862
  %873 = extractvalue %dx.types.ResRet.f32 %861, 0
  %874 = select i1 %867, float %873, float %862
  %875 = add i32 %40, 96
  %876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %875, i32 undef)  ; BufferLoad(srv,index,wot)
  %877 = extractvalue %dx.types.ResRet.i32 %876, 0
  %878 = lshr i32 %877, 16
  %879 = and i32 %878, 255
  %880 = uitofp i32 %879 to float
  %881 = fmul fast float %880, 0x3F80101020000000
  %882 = fmul fast float %881, %874
  %883 = fmul fast float %881, %862
  %884 = fmul fast float %881, %872
  br label %885

; <label>:885                                     ; preds = %870, %855
  %886 = phi float [ %882, %870 ], [ 0.000000e+00, %855 ]
  %887 = phi float [ %883, %870 ], [ 0.000000e+00, %855 ]
  %888 = phi float [ %884, %870 ], [ 0.000000e+00, %855 ]
  %889 = and i32 %865, 2048
  %890 = icmp eq i32 %889, 0
  br i1 %890, label %899, label %891

; <label>:891                                     ; preds = %885
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %804, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = shl i32 %893, 4
  %895 = and i32 %894, 32752
  %896 = call float @dx.op.legacyF16ToF32(i32 131, i32 %895)  ; LegacyF16ToF32(value)
  %897 = fmul fast float %896, %863
  %898 = call float @dx.op.binary.f32(i32 35, float %897, float 0x3F70101020000000)  ; FMax(a,b)
  br label %899

; <label>:899                                     ; preds = %891, %885, %847
  %900 = phi float [ %886, %891 ], [ %886, %885 ], [ 0.000000e+00, %847 ]
  %901 = phi float [ %887, %891 ], [ %887, %885 ], [ 0.000000e+00, %847 ]
  %902 = phi float [ %888, %891 ], [ %888, %885 ], [ 0.000000e+00, %847 ]
  %903 = phi float [ %898, %891 ], [ 0x3F70101020000000, %885 ], [ 0x3F70101020000000, %847 ]
  %904 = add i32 %40, 96
  %905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %904, i32 undef)  ; BufferLoad(srv,index,wot)
  %906 = extractvalue %dx.types.ResRet.i32 %905, 0
  %907 = and i32 %906, 255
  %908 = uitofp i32 %907 to float
  %909 = lshr i32 %906, 8
  %910 = and i32 %909, 255
  %911 = uitofp i32 %910 to float
  %912 = call float @dx.op.dot3.f32(i32 55, float %720, float %721, float %722, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %913 = fmul fast float %911, %912
  %914 = fadd fast float %913, %908
  %915 = fmul fast float %914, 0x3F70101020000000
  %916 = call float @dx.op.unary.f32(i32 7, float %915)  ; Saturate(value)
  br label %917

; <label>:917                                     ; preds = %899, %391
  %918 = phi float [ 0.000000e+00, %391 ], [ %801, %899 ]
  %919 = phi float [ 0.000000e+00, %391 ], [ %802, %899 ]
  %920 = phi float [ 0.000000e+00, %391 ], [ %720, %899 ]
  %921 = phi float [ 0.000000e+00, %391 ], [ %721, %899 ]
  %922 = phi float [ 0.000000e+00, %391 ], [ %722, %899 ]
  %923 = phi float [ 0.000000e+00, %391 ], [ %848, %899 ]
  %924 = phi float [ 0.000000e+00, %391 ], [ %849, %899 ]
  %925 = phi float [ 0.000000e+00, %391 ], [ %850, %899 ]
  %926 = phi float [ 0.000000e+00, %391 ], [ %900, %899 ]
  %927 = phi float [ 0.000000e+00, %391 ], [ %901, %899 ]
  %928 = phi float [ 0.000000e+00, %391 ], [ %902, %899 ]
  %929 = phi float [ 0.000000e+00, %391 ], [ %706, %899 ]
  %930 = phi float [ 0.000000e+00, %391 ], [ 1.000000e+00, %899 ]
  %931 = phi float [ 0.000000e+00, %391 ], [ %800, %899 ]
  %932 = phi float [ 0.000000e+00, %391 ], [ %803, %899 ]
  %933 = phi float [ 0.000000e+00, %391 ], [ %903, %899 ]
  %934 = phi float [ 0.000000e+00, %391 ], [ %916, %899 ]
  br i1 %342, label %1863, label %935

; <label>:935                                     ; preds = %917
  %936 = icmp ult i32 %397, 2
  %937 = add i32 %40, 40
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = add i32 %40, 44
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = or i32 %942, %939
  %944 = icmp eq i32 %943, 0
  br i1 %944, label %1863, label %945

; <label>:945                                     ; preds = %935
  %946 = and i32 %939, 262144
  %947 = icmp ne i32 %946, 0
  %948 = select i1 %947, float %43, float 1.000000e+00
  %949 = select i1 %947, float %44, float 0.000000e+00
  %950 = select i1 %947, float %45, float 0.000000e+00
  %951 = select i1 %947, float %46, float 1.000000e+00
  %952 = select i1 %947, float %47, float %56
  %953 = select i1 %947, float %48, float %57
  %954 = add i32 %40, 300
  %955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %956 = extractvalue %dx.types.ResRet.i32 %955, 0
  %957 = lshr i32 %956, 16
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = fmul fast float %958, 0x3F50624DE0000000
  %960 = add i32 %40, 104
  %961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %962 = extractvalue %dx.types.ResRet.i32 %961, 0
  %963 = lshr i32 %962, 16
  %964 = and i32 %963, 255
  %965 = lshr i32 %962, 24
  %966 = add i32 %40, 308
  %967 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %966, i32 undef)  ; BufferLoad(srv,index,wot)
  %968 = extractvalue %dx.types.ResRet.i32 %967, 0
  %969 = and i32 %968, 65535
  %970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %969)  ; LegacyF16ToF32(value)
  %971 = lshr i32 %968, 16
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = add i32 %40, 48
  %974 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %973, i32 undef)  ; BufferLoad(srv,index,wot)
  %975 = extractvalue %dx.types.ResRet.i32 %974, 0
  %976 = lshr i32 %975, 22
  %977 = shl nuw nsw i32 %976, 5
  %978 = call float @dx.op.legacyF16ToF32(i32 131, i32 %977)  ; LegacyF16ToF32(value)
  %979 = shl i32 %975, 4
  %980 = and i32 %979, 32752
  %981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %980)  ; LegacyF16ToF32(value)
  %982 = lshr i32 %975, 7
  %983 = and i32 %982, 32752
  %984 = call float @dx.op.legacyF16ToF32(i32 131, i32 %983)  ; LegacyF16ToF32(value)
  %985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %986 = extractvalue %dx.types.CBufRet.f32 %985, 3
  %987 = fmul fast float %986, 1.000000e+03
  %988 = fmul fast float %252, %987
  %989 = call float @dx.op.unary.f32(i32 22, float %988)  ; Frc(value)
  %990 = fadd fast float %989, %242
  %991 = fmul fast float %253, %987
  %992 = call float @dx.op.unary.f32(i32 22, float %991)  ; Frc(value)
  %993 = fadd fast float %992, %244
  %994 = fmul fast float %959, %987
  %995 = call float @dx.op.unary.f32(i32 22, float %994)  ; Frc(value)
  %996 = fmul fast float %995, 0x401921FB60000000
  %997 = fadd fast float %996, %978
  %998 = call float @dx.op.unary.f32(i32 13, float %997)  ; Sin(value)
  %999 = call float @dx.op.unary.f32(i32 12, float %997)  ; Cos(value)
  %1000 = fsub fast float -0.000000e+00, %998
  %1001 = fadd fast float %952, -5.000000e-01
  %1002 = fadd fast float %953, -5.000000e-01
  %1003 = fmul fast float %970, %1001
  %1004 = fmul fast float %972, %1002
  %1005 = fadd fast float %1003, 5.000000e-01
  %1006 = fadd fast float %1004, 5.000000e-01
  %1007 = fmul fast float %981, %1005
  %1008 = fmul fast float %984, %1006
  %1009 = fmul fast float %999, %1007
  %1010 = call float @dx.op.tertiary.f32(i32 46, float %1000, float %1008, float %1009)  ; FMad(a,b,c)
  %1011 = fmul fast float %998, %1007
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %999, float %1008, float %1011)  ; FMad(a,b,c)
  %1013 = fadd fast float %990, %1010
  %1014 = fadd fast float %993, %1012
  %1015 = icmp ugt i32 %964, 1
  %1016 = icmp ugt i32 %962, 33554431
  %1017 = or i1 %1016, %1015
  br i1 %1017, label %1018, label %1043

; <label>:1018                                    ; preds = %945
  %1019 = add i32 %40, 244
  %1020 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1019, i32 undef)  ; BufferLoad(srv,index,wot)
  %1021 = extractvalue %dx.types.ResRet.i32 %1020, 0
  %1022 = lshr i32 %1021, 16
  %1023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1022)  ; LegacyF16ToF32(value)
  %1024 = fmul fast float %986, %1023
  %1025 = call float @dx.op.unary.f32(i32 22, float %1024)  ; Frc(value)
  %1026 = mul nuw nsw i32 %964, %965
  %1027 = uitofp i32 %1026 to float
  %1028 = fmul fast float %1025, %1027
  %1029 = call float @dx.op.unary.f32(i32 27, float %1028)  ; Round_ni(value)
  %1030 = fptoui float %1029 to i32
  %1031 = urem i32 %1030, %964
  %1032 = udiv i32 %1030, %965
  %1033 = call float @dx.op.unary.f32(i32 22, float %1013)  ; Frc(value)
  %1034 = call float @dx.op.unary.f32(i32 22, float %1014)  ; Frc(value)
  %1035 = uitofp i32 %1031 to float
  %1036 = uitofp i32 %1032 to float
  %1037 = fadd fast float %1033, %1035
  %1038 = fadd fast float %1034, %1036
  %1039 = uitofp i32 %964 to float
  %1040 = uitofp i32 %965 to float
  %1041 = fdiv fast float %1037, %1039
  %1042 = fdiv fast float %1038, %1040
  br label %1043

; <label>:1043                                    ; preds = %1018, %945
  %1044 = phi float [ %1041, %1018 ], [ %1013, %945 ]
  %1045 = phi float [ %1042, %1018 ], [ %1014, %945 ]
  %1046 = and i32 %939, 16777216
  %1047 = icmp eq i32 %1046, 0
  br i1 %1047, label %1157, label %1048

; <label>:1048                                    ; preds = %1043
  %1049 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1050 = extractvalue %dx.types.CBufRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.CBufRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.CBufRet.f32 %1049, 2
  %1053 = fadd fast float %1050, %127
  %1054 = fadd fast float %1051, %128
  %1055 = fadd fast float %1052, %129
  %1056 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1057 = extractvalue %dx.types.CBufRet.f32 %1056, 0
  %1058 = call float @dx.op.unary.f32(i32 7, float %1057)  ; Saturate(value)
  %1059 = icmp eq i32 %41, 65535
  br i1 %1059, label %1154, label %1060

; <label>:1060                                    ; preds = %1048
  %1061 = lshr i32 %41, 1
  %1062 = shl i32 %1061, 2
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %1062, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = and i32 %41, 1
  %1066 = icmp ne i32 %1065, 0
  %1067 = lshr i32 %1064, 16
  %1068 = and i32 %1064, 65535
  %1069 = select i1 %1066, i32 %1067, i32 %1068
  %1070 = icmp eq i32 %1069, 65535
  br i1 %1070, label %1150, label %1071

; <label>:1071                                    ; preds = %1060
  %1072 = mul nuw nsw i32 %1069, 40
  %1073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1072, i32 undef)  ; BufferLoad(srv,index,wot)
  %1074 = extractvalue %dx.types.ResRet.f32 %1073, 0
  %1075 = extractvalue %dx.types.ResRet.f32 %1073, 1
  %1076 = extractvalue %dx.types.ResRet.f32 %1073, 2
  %1077 = add nuw nsw i32 %1072, 12
  %1078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1082 = add nuw nsw i32 %1072, 24
  %1083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = add nuw nsw i32 %1072, 36
  %1088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = fsub fast float %1053, %1074
  %1091 = fsub fast float %1054, %1075
  %1092 = fsub fast float %1055, %1076
  %1093 = fmul fast float %1089, %1090
  %1094 = fmul fast float %1089, %1091
  %1095 = fmul fast float %1089, %1092
  %1096 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1097 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1099 = fadd fast float %1096, 5.000000e-01
  %1100 = fadd fast float %1097, 5.000000e-01
  %1101 = fadd fast float %1098, 5.000000e-01
  %1102 = fmul fast float %1099, %1079
  %1103 = fmul fast float %1100, %1080
  %1104 = fmul fast float %1101, %1081
  %1105 = shl i32 %41, 2
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call float @dx.op.unary.f32(i32 22, float %1102)  ; Frc(value)
  %1111 = call float @dx.op.unary.f32(i32 22, float %1103)  ; Frc(value)
  %1112 = call float @dx.op.unary.f32(i32 22, float %1104)  ; Frc(value)
  %1113 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1109, %dx.types.Handle %35, float %1110, float %1111, float %1112, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1114 = extractvalue %dx.types.ResRet.f32 %1113, 0
  %1115 = extractvalue %dx.types.ResRet.f32 %1113, 1
  %1116 = extractvalue %dx.types.ResRet.f32 %1113, 2
  %1117 = fmul fast float %1114, 1.023000e+03
  %1118 = fmul fast float %1115, 1.023000e+03
  %1119 = fmul fast float %1116, 1.023000e+03
  %1120 = fadd fast float %1117, 5.000000e-01
  %1121 = fadd fast float %1118, 5.000000e-01
  %1122 = fadd fast float %1119, 5.000000e-01
  %1123 = call float @dx.op.unary.f32(i32 27, float %1120)  ; Round_ni(value)
  %1124 = call float @dx.op.unary.f32(i32 27, float %1121)  ; Round_ni(value)
  %1125 = call float @dx.op.unary.f32(i32 27, float %1122)  ; Round_ni(value)
  %1126 = fsub fast float %1093, %1096
  %1127 = fsub fast float %1094, %1097
  %1128 = fsub fast float %1095, %1098
  %1129 = fmul fast float %1126, 7.500000e-01
  %1130 = fmul fast float %1127, 7.500000e-01
  %1131 = fmul fast float %1128, 7.500000e-01
  %1132 = fadd fast float %1096, 1.250000e-01
  %1133 = fadd fast float %1132, %1129
  %1134 = fadd fast float %1133, %1123
  %1135 = fadd fast float %1097, 1.250000e-01
  %1136 = fadd fast float %1135, %1130
  %1137 = fadd fast float %1136, %1124
  %1138 = fadd fast float %1098, 1.250000e-01
  %1139 = fadd fast float %1138, %1131
  %1140 = fadd fast float %1139, %1125
  %1141 = fmul fast float %1134, %1084
  %1142 = fmul fast float %1137, %1085
  %1143 = fmul fast float %1140, %1086
  %1144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1145 = extractvalue %dx.types.ResRet.i32 %1144, 0
  %1146 = add i32 %1145, 0
  %1147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1147, %dx.types.Handle %33, float %1141, float %1142, float %1143, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1149 = extractvalue %dx.types.ResRet.f32 %1148, 0
  br label %1150

; <label>:1150                                    ; preds = %1071, %1060
  %1151 = phi float [ %1149, %1071 ], [ -1.000000e+00, %1060 ]
  %1152 = fadd fast float %1151, %1058
  %1153 = call float @dx.op.unary.f32(i32 7, float %1152)  ; Saturate(value)
  br label %1154

; <label>:1154                                    ; preds = %1150, %1048
  %1155 = phi float [ %1153, %1150 ], [ %1058, %1048 ]
  %1156 = fmul fast float %1155, %394
  br label %1157

; <label>:1157                                    ; preds = %1154, %1043
  %1158 = phi float [ %1156, %1154 ], [ %394, %1043 ]
  %1159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1160 = extractvalue %dx.types.ResRet.i32 %1159, 0
  %1161 = and i32 %1160, 256
  %1162 = icmp eq i32 %1161, 0
  br i1 %1162, label %1209, label %1163

; <label>:1163                                    ; preds = %1157
  %1164 = add i32 %40, 444
  %1165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1164, i32 undef)  ; BufferLoad(srv,index,wot)
  %1166 = extractvalue %dx.types.ResRet.i32 %1165, 0
  %1167 = add i32 %1166, 0
  %1168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1168, %dx.types.Handle %65, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1170 = extractvalue %dx.types.ResRet.f32 %1169, 0
  %1171 = add i32 %40, 116
  %1172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1171, i32 undef)  ; BufferLoad(srv,index,wot)
  %1173 = extractvalue %dx.types.ResRet.i32 %1172, 0
  %1174 = shl i32 %1173, 4
  %1175 = and i32 %1174, 32752
  %1176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1175)  ; LegacyF16ToF32(value)
  %1177 = lshr i32 %1173, 7
  %1178 = and i32 %1177, 32752
  %1179 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1178)  ; LegacyF16ToF32(value)
  %1180 = fsub fast float 1.000000e+00, %1158
  %1181 = call float @dx.op.binary.f32(i32 35, float %1180, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1182 = bitcast float %1158 to i32
  %1183 = sitofp i32 %1182 to float
  %1184 = fadd fast float %1183, 0xC1CFBF8940000000
  %1185 = fmul fast float %1179, %1184
  %1186 = fadd fast float %1185, 0x41CFBF8940000000
  %1187 = fptosi float %1186 to i32
  %1188 = bitcast i32 %1187 to float
  %1189 = bitcast float %1181 to i32
  %1190 = sitofp i32 %1189 to float
  %1191 = fadd fast float %1190, 0xC1CFBF8940000000
  %1192 = fmul fast float %1191, %1179
  %1193 = fadd fast float %1192, 0x41CFBF8940000000
  %1194 = fptosi float %1193 to i32
  %1195 = bitcast i32 %1194 to float
  %1196 = fmul fast float %1188, %1176
  %1197 = fmul fast float %1195, %1176
  %1198 = fsub fast float %1181, %1196
  %1199 = fadd fast float %1197, %1181
  %1200 = call float @dx.op.unary.f32(i32 7, float %1198)  ; Saturate(value)
  %1201 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1202 = fsub fast float %1170, %1200
  %1203 = fsub fast float %1201, %1200
  %1204 = bitcast float %1203 to i32
  %1205 = sub nsw i32 2129859010, %1204
  %1206 = bitcast i32 %1205 to float
  %1207 = fmul fast float %1206, %1202
  %1208 = call float @dx.op.unary.f32(i32 7, float %1207)  ; Saturate(value)
  br label %1209

; <label>:1209                                    ; preds = %1163, %1157
  %1210 = phi float [ %1208, %1163 ], [ %1158, %1157 ]
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = and i32 %1212, 128
  %1214 = icmp eq i32 %1213, 0
  br i1 %1214, label %1231, label %1215

; <label>:1215                                    ; preds = %1209
  %1216 = add i32 %40, 428
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = add i32 %1218, 0
  %1220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1220, %dx.types.Handle %65, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1224 = extractvalue %dx.types.ResRet.i32 %1223, 0
  %1225 = and i32 %1224, 524288
  %1226 = icmp ne i32 %1225, 0
  %1227 = fcmp fast ogt float %1222, 0x3FE0101020000000
  %1228 = select i1 %1227, float 1.000000e+00, float 0.000000e+00
  %1229 = select i1 %1226, float %1228, float %1222
  %1230 = fmul fast float %1229, %1210
  br label %1231

; <label>:1231                                    ; preds = %1215, %1209
  %1232 = phi float [ %1230, %1215 ], [ %1210, %1209 ]
  %1233 = fcmp fast ult float %1232, 0x3F70101020000000
  br i1 %1233, label %1863, label %1234

; <label>:1234                                    ; preds = %1231
  %1235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1236 = extractvalue %dx.types.ResRet.i32 %1235, 0
  %1237 = and i32 %1236, 16
  %1238 = icmp eq i32 %1237, 0
  br i1 %1238, label %1437, label %1239

; <label>:1239                                    ; preds = %1234
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %960, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = add i32 %40, 380
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = add i32 %1244, 0
  %1246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1245, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1247 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1246, %dx.types.Handle %64, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1248 = extractvalue %dx.types.ResRet.f32 %1247, 0
  %1249 = extractvalue %dx.types.ResRet.f32 %1247, 1
  %1250 = extractvalue %dx.types.ResRet.f32 %1247, 2
  %1251 = extractvalue %dx.types.ResRet.f32 %1247, 3
  %1252 = and i32 %1241, 255
  %1253 = uitofp i32 %1252 to float
  %1254 = lshr i32 %1241, 8
  %1255 = and i32 %1254, 255
  %1256 = uitofp i32 %1255 to float
  %1257 = fmul fast float %1251, %1253
  %1258 = fadd fast float %1257, %1256
  %1259 = fmul fast float %1258, 0x3F70101000000000
  %1260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1261 = extractvalue %dx.types.ResRet.i32 %1260, 0
  %1262 = and i32 %1261, 512
  %1263 = icmp eq i32 %1262, 0
  br i1 %1263, label %1272, label %1264

; <label>:1264                                    ; preds = %1239
  %1265 = add i32 %40, 460
  %1266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1265, i32 undef)  ; BufferLoad(srv,index,wot)
  %1267 = extractvalue %dx.types.ResRet.i32 %1266, 0
  %1268 = add i32 %1267, 0
  %1269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1268, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1270 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1269, %dx.types.Handle %65, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1271 = extractvalue %dx.types.ResRet.f32 %1270, 0
  br label %1272

; <label>:1272                                    ; preds = %1264, %1239
  %1273 = phi float [ %1271, %1264 ], [ 1.000000e+00, %1239 ]
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = and i32 %1275, 33554432
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1384, label %1278

; <label>:1278                                    ; preds = %1272
  %1279 = add i32 %40, 240
  %1280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1279, i32 undef)  ; BufferLoad(srv,index,wot)
  %1281 = extractvalue %dx.types.ResRet.i32 %1280, 0
  %1282 = and i32 %1281, 65535
  %1283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1282)  ; LegacyF16ToF32(value)
  %1284 = lshr i32 %1281, 16
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = add i32 %40, 244
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = and i32 %1288, 65535
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %1292 = extractvalue %dx.types.ResRet.i32 %1291, 0
  %1293 = lshr i32 %1292, 24
  %1294 = uitofp i32 %1293 to float
  %1295 = fmul fast float %1294, 0x3F70101020000000
  %1296 = and i32 %1292, 255
  %1297 = uitofp i32 %1296 to float
  %1298 = fmul fast float %1297, 0x3F70101020000000
  %1299 = lshr i32 %1292, 8
  %1300 = and i32 %1299, 255
  %1301 = uitofp i32 %1300 to float
  %1302 = fmul fast float %1301, 0x3F70101020000000
  %1303 = lshr i32 %1292, 16
  %1304 = and i32 %1303, 255
  %1305 = uitofp i32 %1304 to float
  %1306 = fmul fast float %1305, 0x3F70101020000000
  %1307 = add i32 %40, 236
  %1308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1307, i32 undef)  ; BufferLoad(srv,index,wot)
  %1309 = extractvalue %dx.types.ResRet.i32 %1308, 0
  %1310 = lshr i32 %1309, 24
  %1311 = uitofp i32 %1310 to float
  %1312 = fmul fast float %1311, 0x3F70101020000000
  %1313 = and i32 %1309, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = fmul fast float %1314, 0x3F70101020000000
  %1316 = lshr i32 %1309, 8
  %1317 = and i32 %1316, 255
  %1318 = uitofp i32 %1317 to float
  %1319 = fmul fast float %1318, 0x3F70101020000000
  %1320 = lshr i32 %1309, 16
  %1321 = and i32 %1320, 255
  %1322 = uitofp i32 %1321 to float
  %1323 = fmul fast float %1322, 0x3F70101020000000
  %1324 = bitcast float %1248 to i32
  %1325 = ashr i32 %1324, 1
  %1326 = sub nsw i32 1597463174, %1325
  %1327 = bitcast i32 %1326 to float
  %1328 = fmul fast float %1248, 5.000000e-01
  %1329 = fmul fast float %1327, %1327
  %1330 = fmul fast float %1329, %1328
  %1331 = fsub fast float 1.500000e+00, %1330
  %1332 = fmul fast float %1327, %1248
  %1333 = fmul fast float %1332, %1331
  %1334 = bitcast float %1249 to i32
  %1335 = ashr i32 %1334, 1
  %1336 = sub nsw i32 1597463174, %1335
  %1337 = bitcast i32 %1336 to float
  %1338 = fmul fast float %1249, 5.000000e-01
  %1339 = fmul fast float %1337, %1337
  %1340 = fmul fast float %1339, %1338
  %1341 = fsub fast float 1.500000e+00, %1340
  %1342 = fmul fast float %1337, %1249
  %1343 = fmul fast float %1342, %1341
  %1344 = bitcast float %1250 to i32
  %1345 = ashr i32 %1344, 1
  %1346 = sub nsw i32 1597463174, %1345
  %1347 = bitcast i32 %1346 to float
  %1348 = fmul fast float %1250, 5.000000e-01
  %1349 = fmul fast float %1347, %1347
  %1350 = fmul fast float %1349, %1348
  %1351 = fsub fast float 1.500000e+00, %1350
  %1352 = fmul fast float %1347, %1250
  %1353 = fmul fast float %1352, %1351
  %1354 = fsub fast float %1333, %1315
  %1355 = fsub fast float %1343, %1319
  %1356 = fsub fast float %1353, %1323
  %1357 = fmul fast float %1354, %1283
  %1358 = fmul fast float %1355, %1285
  %1359 = fmul fast float %1356, %1290
  %1360 = fadd fast float %1357, %1298
  %1361 = fadd fast float %1358, %1302
  %1362 = fadd fast float %1359, %1306
  %1363 = call float @dx.op.unary.f32(i32 7, float %1360)  ; Saturate(value)
  %1364 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1365 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1366 = fmul fast float %1363, %1363
  %1367 = fmul fast float %1364, %1364
  %1368 = fmul fast float %1365, %1365
  %1369 = fsub fast float %1366, %1248
  %1370 = fsub fast float %1367, %1249
  %1371 = fsub fast float %1368, %1250
  %1372 = fmul fast float %1369, %1273
  %1373 = fmul fast float %1370, %1273
  %1374 = fmul fast float %1371, %1273
  %1375 = fadd fast float %1372, %1248
  %1376 = fadd fast float %1373, %1249
  %1377 = fadd fast float %1374, %1250
  %1378 = fadd fast float %1295, %1259
  %1379 = fsub fast float %1378, %1312
  %1380 = call float @dx.op.unary.f32(i32 7, float %1379)  ; Saturate(value)
  %1381 = fsub fast float %1380, %1259
  %1382 = fmul fast float %1381, %1273
  %1383 = fadd fast float %1382, %1259
  br label %1437

; <label>:1384                                    ; preds = %1272
  %1385 = and i32 %1275, 134217728
  %1386 = icmp eq i32 %1385, 0
  br i1 %1386, label %1421, label %1387

; <label>:1387                                    ; preds = %1384
  %1388 = call float @dx.op.unary.f32(i32 24, float %229)  ; Sqrt(value)
  %1389 = call float @dx.op.unary.f32(i32 24, float %233)  ; Sqrt(value)
  %1390 = call float @dx.op.unary.f32(i32 24, float %237)  ; Sqrt(value)
  %1391 = fadd fast float %1388, -5.000000e-01
  %1392 = fadd fast float %1389, -5.000000e-01
  %1393 = fadd fast float %1390, -5.000000e-01
  %1394 = fmul fast float %1391, %1273
  %1395 = fmul fast float %1392, %1273
  %1396 = fmul fast float %1393, %1273
  %1397 = fadd fast float %1394, 5.000000e-01
  %1398 = fadd fast float %1395, 5.000000e-01
  %1399 = fadd fast float %1396, 5.000000e-01
  %1400 = call float @dx.op.unary.f32(i32 24, float %1248)  ; Sqrt(value)
  %1401 = call float @dx.op.unary.f32(i32 24, float %1249)  ; Sqrt(value)
  %1402 = call float @dx.op.unary.f32(i32 24, float %1250)  ; Sqrt(value)
  %1403 = fmul fast float %1397, 2.000000e+00
  %1404 = fsub fast float 1.000000e+00, %1403
  %1405 = fmul fast float %1404, %1400
  %1406 = fadd fast float %1405, %1403
  %1407 = fmul fast float %1406, %1400
  %1408 = fmul fast float %1398, 2.000000e+00
  %1409 = fsub fast float 1.000000e+00, %1408
  %1410 = fmul fast float %1409, %1401
  %1411 = fadd fast float %1410, %1408
  %1412 = fmul fast float %1411, %1401
  %1413 = fmul fast float %1399, 2.000000e+00
  %1414 = fsub fast float 1.000000e+00, %1413
  %1415 = fmul fast float %1414, %1402
  %1416 = fadd fast float %1415, %1413
  %1417 = fmul fast float %1416, %1402
  %1418 = fmul fast float %1407, %1407
  %1419 = fmul fast float %1412, %1412
  %1420 = fmul fast float %1417, %1417
  br label %1437

; <label>:1421                                    ; preds = %1384
  %1422 = fmul fast float %229, %229
  %1423 = fmul fast float %233, %233
  %1424 = fmul fast float %237, %237
  %1425 = fadd fast float %1422, -1.000000e+00
  %1426 = fadd fast float %1423, -1.000000e+00
  %1427 = fadd fast float %1424, -1.000000e+00
  %1428 = fmul fast float %1273, %1425
  %1429 = fmul fast float %1273, %1426
  %1430 = fmul fast float %1273, %1427
  %1431 = fadd fast float %1428, 1.000000e+00
  %1432 = fadd fast float %1429, 1.000000e+00
  %1433 = fadd fast float %1430, 1.000000e+00
  %1434 = fmul fast float %1431, %1248
  %1435 = fmul fast float %1432, %1249
  %1436 = fmul fast float %1433, %1250
  br label %1437

; <label>:1437                                    ; preds = %1421, %1387, %1278, %1234
  %1438 = phi float [ %1383, %1278 ], [ %1259, %1387 ], [ %1259, %1421 ], [ 0x3FA23C0BE0000000, %1234 ]
  %1439 = phi float [ %1375, %1278 ], [ %1418, %1387 ], [ %1434, %1421 ], [ 1.000000e+00, %1234 ]
  %1440 = phi float [ %1376, %1278 ], [ %1419, %1387 ], [ %1435, %1421 ], [ 1.000000e+00, %1234 ]
  %1441 = phi float [ %1377, %1278 ], [ %1420, %1387 ], [ %1436, %1421 ], [ 1.000000e+00, %1234 ]
  %1442 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1443 = extractvalue %dx.types.CBufRet.i32 %1442, 1
  %1444 = and i32 %1443, 1
  %1445 = icmp ne i32 %1444, 0
  %1446 = add i32 %40, 356
  %1447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.i32 %1447, 0
  %1449 = and i32 %1448, 32
  %1450 = icmp ne i32 %1449, 0
  %1451 = and i1 %1445, %1450
  %1452 = select i1 %1451, float 1.000000e+00, float %1439
  %1453 = select i1 %1451, float 0x3FD3333340000000, float %1440
  %1454 = select i1 %1451, float 0x3FD3333340000000, float %1441
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 32
  %1458 = icmp eq i32 %1457, 0
  br i1 %1458, label %1531, label %1459

; <label>:1459                                    ; preds = %1437
  %1460 = add i32 %40, 108
  %1461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1460, i32 undef)  ; BufferLoad(srv,index,wot)
  %1462 = extractvalue %dx.types.ResRet.i32 %1461, 0
  %1463 = add i32 %40, 396
  %1464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1463, i32 undef)  ; BufferLoad(srv,index,wot)
  %1465 = extractvalue %dx.types.ResRet.i32 %1464, 0
  %1466 = add i32 %1465, 0
  %1467 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1466, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1468 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1467, %dx.types.Handle %64, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1469 = extractvalue %dx.types.ResRet.f32 %1468, 0
  %1470 = extractvalue %dx.types.ResRet.f32 %1468, 1
  %1471 = extractvalue %dx.types.ResRet.f32 %1468, 2
  %1472 = extractvalue %dx.types.ResRet.f32 %1468, 3
  %1473 = and i32 %1462, 255
  %1474 = uitofp i32 %1473 to float
  %1475 = lshr i32 %1462, 8
  %1476 = and i32 %1475, 255
  %1477 = uitofp i32 %1476 to float
  %1478 = lshr i32 %1462, 16
  %1479 = and i32 %1478, 255
  %1480 = uitofp i32 %1479 to float
  %1481 = fmul fast float %1480, 0x3F70101000000000
  %1482 = fmul fast float %1469, %1474
  %1483 = fadd fast float %1482, %1477
  %1484 = fmul fast float %1483, 0x3F70101000000000
  %1485 = fadd fast float %1470, -5.000000e-01
  %1486 = fadd fast float %1472, -5.000000e-01
  %1487 = fmul fast float %1485, %1481
  %1488 = fmul fast float %1486, %1481
  %1489 = fadd fast float %1487, 5.000000e-01
  %1490 = fadd fast float %1488, 5.000000e-01
  %1491 = fmul fast float %1489, 2.000000e+00
  %1492 = fadd fast float %1491, -1.000000e+00
  %1493 = fmul fast float %1490, 2.000000e+00
  %1494 = fadd fast float %1493, -1.000000e+00
  %1495 = fadd fast float %1492, %1494
  %1496 = fmul fast float %1495, 5.000000e-01
  %1497 = fsub fast float %1492, %1494
  %1498 = fmul fast float %1497, 5.000000e-01
  %1499 = call float @dx.op.unary.f32(i32 6, float %1496)  ; FAbs(value)
  %1500 = fsub fast float 1.000000e+00, %1499
  %1501 = call float @dx.op.unary.f32(i32 6, float %1498)  ; FAbs(value)
  %1502 = fsub fast float %1500, %1501
  %1503 = call float @dx.op.dot3.f32(i32 55, float %1496, float %1498, float %1502, float %1496, float %1498, float %1502)  ; Dot3(ax,ay,az,bx,by,bz)
  %1504 = call float @dx.op.unary.f32(i32 25, float %1503)  ; Rsqrt(value)
  %1505 = fmul fast float %1496, %1504
  %1506 = fmul fast float %1498, %1504
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = and i32 %1508, 67108864
  %1510 = icmp eq i32 %1509, 0
  br i1 %1510, label %1527, label %1511

; <label>:1511                                    ; preds = %1459
  %1512 = add i32 %40, 296
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1512, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 65535
  %1516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1515)  ; LegacyF16ToF32(value)
  %1517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %954, i32 undef)  ; BufferLoad(srv,index,wot)
  %1518 = extractvalue %dx.types.ResRet.i32 %1517, 0
  %1519 = and i32 %1518, 65535
  %1520 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1519)  ; LegacyF16ToF32(value)
  %1521 = lshr i32 %1514, 16
  %1522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1521)  ; LegacyF16ToF32(value)
  %1523 = fsub fast float %1484, %1522
  %1524 = fmul fast float %1523, %1516
  %1525 = fadd fast float %1524, %1520
  %1526 = call float @dx.op.unary.f32(i32 7, float %1525)  ; Saturate(value)
  br label %1527

; <label>:1527                                    ; preds = %1511, %1459
  %1528 = phi float [ %1526, %1511 ], [ %1484, %1459 ]
  %1529 = call float @dx.op.dot2.f32(i32 54, float %1505, float %1506, float %948, float %949)  ; Dot2(ax,ay,bx,by)
  %1530 = call float @dx.op.dot2.f32(i32 54, float %1505, float %1506, float %950, float %951)  ; Dot2(ax,ay,bx,by)
  br label %1531

; <label>:1531                                    ; preds = %1527, %1437
  %1532 = phi float [ %1528, %1527 ], [ 0x3FD6666660000000, %1437 ]
  %1533 = phi float [ %1529, %1527 ], [ 0.000000e+00, %1437 ]
  %1534 = phi float [ %1530, %1527 ], [ 0.000000e+00, %1437 ]
  %1535 = phi float [ %1471, %1527 ], [ 1.000000e+00, %1437 ]
  %1536 = add i32 %40, 176
  %1537 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1538 = extractvalue %dx.types.ResRet.i32 %1537, 0
  %1539 = lshr i32 %1538, 22
  %1540 = shl nuw nsw i32 %1539, 5
  %1541 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1540)  ; LegacyF16ToF32(value)
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = and i32 %1543, 64
  %1545 = icmp eq i32 %1544, 0
  br i1 %1545, label %1579, label %1546

; <label>:1546                                    ; preds = %1531
  %1547 = add i32 %40, 412
  %1548 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1547, i32 undef)  ; BufferLoad(srv,index,wot)
  %1549 = extractvalue %dx.types.ResRet.i32 %1548, 0
  %1550 = add i32 %1549, 0
  %1551 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1550, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, 131072
  %1555 = icmp eq i32 %1554, 0
  %1556 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1551, %dx.types.Handle %64, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1557 = extractvalue %dx.types.ResRet.f32 %1556, 0
  %1558 = extractvalue %dx.types.ResRet.f32 %1556, 1
  %1559 = extractvalue %dx.types.ResRet.f32 %1556, 2
  %1560 = fmul fast float %1557, %217
  %1561 = fmul fast float %1558, %220
  %1562 = fmul fast float %1559, %223
  br i1 %1555, label %1569, label %1563

; <label>:1563                                    ; preds = %1546
  %1564 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1565 = extractvalue %dx.types.CBufRet.f32 %1564, 0
  %1566 = fmul fast float %1565, %1560
  %1567 = fmul fast float %1565, %1561
  %1568 = fmul fast float %1565, %1562
  br label %1569

; <label>:1569                                    ; preds = %1563, %1546
  %1570 = phi float [ %1566, %1563 ], [ %1560, %1546 ]
  %1571 = phi float [ %1567, %1563 ], [ %1561, %1546 ]
  %1572 = phi float [ %1568, %1563 ], [ %1562, %1546 ]
  %1573 = fmul fast float %1570, %1541
  %1574 = select i1 %169, float %1573, float %1570
  %1575 = call float @dx.op.dot3.f32(i32 55, float %1574, float %1571, float %1572, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1576 = select i1 %169, float 0.000000e+00, float %1570
  %1577 = select i1 %169, float %1575, float %1571
  %1578 = select i1 %169, float 0.000000e+00, float %1572
  br label %1579

; <label>:1579                                    ; preds = %1569, %1531
  %1580 = phi float [ %1576, %1569 ], [ 0.000000e+00, %1531 ]
  %1581 = phi float [ %1577, %1569 ], [ 0.000000e+00, %1531 ]
  %1582 = phi float [ %1578, %1569 ], [ 0.000000e+00, %1531 ]
  %1583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1584 = extractvalue %dx.types.ResRet.i32 %1583, 0
  %1585 = and i32 %1584, 10240
  %1586 = icmp eq i32 %1585, 0
  br i1 %1586, label %1631, label %1587

; <label>:1587                                    ; preds = %1579
  %1588 = add i32 %40, 476
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1588, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = add i32 %1590, 0
  %1592 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1591, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1593 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1592, %dx.types.Handle %65, float %1044, float %1045, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1594 = extractvalue %dx.types.ResRet.f32 %1593, 1
  %1595 = extractvalue %dx.types.ResRet.f32 %1593, 3
  %1596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1597 = extractvalue %dx.types.ResRet.i32 %1596, 0
  %1598 = and i32 %1597, 1048576
  %1599 = icmp ne i32 %1598, 0
  %1600 = and i32 %1597, 8192
  %1601 = icmp eq i32 %1600, 0
  br i1 %1601, label %1617, label %1602

; <label>:1602                                    ; preds = %1587
  %1603 = extractvalue %dx.types.ResRet.f32 %1593, 2
  %1604 = select i1 %1599, float %1603, float %1594
  %1605 = extractvalue %dx.types.ResRet.f32 %1593, 0
  %1606 = select i1 %1599, float %1605, float %1594
  %1607 = add i32 %40, 112
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = lshr i32 %1609, 16
  %1611 = and i32 %1610, 255
  %1612 = uitofp i32 %1611 to float
  %1613 = fmul fast float %1612, 0x3F80101020000000
  %1614 = fmul fast float %1613, %1606
  %1615 = fmul fast float %1613, %1594
  %1616 = fmul fast float %1613, %1604
  br label %1617

; <label>:1617                                    ; preds = %1602, %1587
  %1618 = phi float [ %1614, %1602 ], [ 0.000000e+00, %1587 ]
  %1619 = phi float [ %1615, %1602 ], [ 0.000000e+00, %1587 ]
  %1620 = phi float [ %1616, %1602 ], [ 0.000000e+00, %1587 ]
  %1621 = and i32 %1597, 2048
  %1622 = icmp eq i32 %1621, 0
  br i1 %1622, label %1631, label %1623

; <label>:1623                                    ; preds = %1617
  %1624 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1536, i32 undef)  ; BufferLoad(srv,index,wot)
  %1625 = extractvalue %dx.types.ResRet.i32 %1624, 0
  %1626 = shl i32 %1625, 4
  %1627 = and i32 %1626, 32752
  %1628 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1627)  ; LegacyF16ToF32(value)
  %1629 = fmul fast float %1628, %1595
  %1630 = call float @dx.op.binary.f32(i32 35, float %1629, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1631

; <label>:1631                                    ; preds = %1623, %1617, %1579
  %1632 = phi float [ %1618, %1623 ], [ %1618, %1617 ], [ 0.000000e+00, %1579 ]
  %1633 = phi float [ %1619, %1623 ], [ %1619, %1617 ], [ 0.000000e+00, %1579 ]
  %1634 = phi float [ %1620, %1623 ], [ %1620, %1617 ], [ 0.000000e+00, %1579 ]
  %1635 = phi float [ %1630, %1623 ], [ 0x3F70101020000000, %1617 ], [ 0x3F70101020000000, %1579 ]
  %1636 = add i32 %40, 112
  %1637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1636, i32 undef)  ; BufferLoad(srv,index,wot)
  %1638 = extractvalue %dx.types.ResRet.i32 %1637, 0
  %1639 = and i32 %1638, 255
  %1640 = uitofp i32 %1639 to float
  %1641 = lshr i32 %1638, 8
  %1642 = and i32 %1641, 255
  %1643 = uitofp i32 %1642 to float
  %1644 = call float @dx.op.dot3.f32(i32 55, float %1452, float %1453, float %1454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1645 = fmul fast float %1643, %1644
  %1646 = fadd fast float %1645, %1640
  %1647 = fmul fast float %1646, 0x3F70101020000000
  %1648 = call float @dx.op.unary.f32(i32 7, float %1647)  ; Saturate(value)
  br i1 %936, label %1649, label %1657

; <label>:1649                                    ; preds = %1631
  %1650 = fsub fast float 1.000000e+00, %1232
  %1651 = fmul fast float %1650, %920
  %1652 = fmul fast float %1650, %921
  %1653 = fmul fast float %1650, %922
  %1654 = fmul fast float %1650, %923
  %1655 = fmul fast float %1650, %924
  %1656 = fmul fast float %1650, %925
  br label %1657

; <label>:1657                                    ; preds = %1649, %1631
  %1658 = phi float [ %1651, %1649 ], [ %920, %1631 ]
  %1659 = phi float [ %1652, %1649 ], [ %921, %1631 ]
  %1660 = phi float [ %1653, %1649 ], [ %922, %1631 ]
  %1661 = phi float [ %1654, %1649 ], [ %923, %1631 ]
  %1662 = phi float [ %1655, %1649 ], [ %924, %1631 ]
  %1663 = phi float [ %1656, %1649 ], [ %925, %1631 ]
  %1664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %1665 = extractvalue %dx.types.ResRet.i32 %1664, 0
  %1666 = and i32 %1665, 3
  %1667 = icmp eq i32 %1666, 3
  br i1 %1667, label %1746, label %1668

; <label>:1668                                    ; preds = %1657
  %1669 = and i32 %1665, 16
  %1670 = icmp ne i32 %1669, 0
  %1671 = select i1 %1670, float %1232, float 0.000000e+00
  %1672 = icmp eq i32 %1666, 0
  br i1 %1672, label %1673, label %1701

; <label>:1673                                    ; preds = %1668
  %1674 = and i32 %1665, 64
  %1675 = icmp ne i32 %1674, 0
  %1676 = select i1 %1675, float %1232, float 0.000000e+00
  %1677 = fsub fast float %1452, %1658
  %1678 = fsub fast float %1453, %1659
  %1679 = fsub fast float %1454, %1660
  %1680 = fmul fast float %1671, %1677
  %1681 = fmul fast float %1671, %1678
  %1682 = fmul fast float %1671, %1679
  %1683 = fadd fast float %1680, %1658
  %1684 = fadd fast float %1681, %1659
  %1685 = fadd fast float %1682, %1660
  %1686 = fsub fast float %1438, %929
  %1687 = fmul fast float %1671, %1686
  %1688 = fadd fast float %1687, %929
  %1689 = fsub fast float %1580, %1661
  %1690 = fsub fast float %1581, %1662
  %1691 = fsub fast float %1582, %1663
  %1692 = fmul fast float %1676, %1689
  %1693 = fmul fast float %1676, %1690
  %1694 = fmul fast float %1676, %1691
  %1695 = fadd fast float %1692, %1661
  %1696 = fadd fast float %1693, %1662
  %1697 = fadd fast float %1694, %1663
  %1698 = fsub fast float %1648, %934
  %1699 = fmul fast float %1671, %1698
  %1700 = fadd fast float %1699, %934
  br label %1746

; <label>:1701                                    ; preds = %1668
  %1702 = icmp eq i32 %1666, 1
  br i1 %1702, label %1703, label %1716

; <label>:1703                                    ; preds = %1701
  %1704 = fadd fast float %1452, -1.000000e+00
  %1705 = fadd fast float %1453, -1.000000e+00
  %1706 = fadd fast float %1454, -1.000000e+00
  %1707 = fmul fast float %1671, %1704
  %1708 = fmul fast float %1671, %1705
  %1709 = fmul fast float %1671, %1706
  %1710 = fadd fast float %1707, 1.000000e+00
  %1711 = fadd fast float %1708, 1.000000e+00
  %1712 = fadd fast float %1709, 1.000000e+00
  %1713 = fmul fast float %1710, %1658
  %1714 = fmul fast float %1711, %1659
  %1715 = fmul fast float %1712, %1660
  br label %1746

; <label>:1716                                    ; preds = %1701
  %1717 = icmp eq i32 %1666, 2
  br i1 %1717, label %1718, label %1746

; <label>:1718                                    ; preds = %1716
  %1719 = call float @dx.op.unary.f32(i32 24, float %1452)  ; Sqrt(value)
  %1720 = call float @dx.op.unary.f32(i32 24, float %1453)  ; Sqrt(value)
  %1721 = call float @dx.op.unary.f32(i32 24, float %1454)  ; Sqrt(value)
  %1722 = fadd fast float %1719, -5.000000e-01
  %1723 = fadd fast float %1720, -5.000000e-01
  %1724 = fadd fast float %1721, -5.000000e-01
  %1725 = fmul fast float %1722, %1671
  %1726 = fmul fast float %1723, %1671
  %1727 = fmul fast float %1724, %1671
  %1728 = fadd fast float %1725, 5.000000e-01
  %1729 = fadd fast float %1726, 5.000000e-01
  %1730 = fadd fast float %1727, 5.000000e-01
  %1731 = fmul fast float %1728, 2.000000e+00
  %1732 = fsub fast float 1.000000e+00, %1731
  %1733 = fmul fast float %1732, %1658
  %1734 = fadd fast float %1733, %1731
  %1735 = fmul fast float %1734, %1658
  %1736 = fmul fast float %1729, 2.000000e+00
  %1737 = fsub fast float 1.000000e+00, %1736
  %1738 = fmul fast float %1737, %1659
  %1739 = fadd fast float %1738, %1736
  %1740 = fmul fast float %1739, %1659
  %1741 = fmul fast float %1730, 2.000000e+00
  %1742 = fsub fast float 1.000000e+00, %1741
  %1743 = fmul fast float %1742, %1660
  %1744 = fadd fast float %1743, %1741
  %1745 = fmul fast float %1744, %1660
  br label %1746

; <label>:1746                                    ; preds = %1718, %1716, %1703, %1673, %1657
  %1747 = phi float [ %1658, %1657 ], [ %1735, %1718 ], [ %1658, %1716 ], [ %1713, %1703 ], [ %1683, %1673 ]
  %1748 = phi float [ %1659, %1657 ], [ %1740, %1718 ], [ %1659, %1716 ], [ %1714, %1703 ], [ %1684, %1673 ]
  %1749 = phi float [ %1660, %1657 ], [ %1745, %1718 ], [ %1660, %1716 ], [ %1715, %1703 ], [ %1685, %1673 ]
  %1750 = phi float [ %1661, %1657 ], [ %1661, %1718 ], [ %1661, %1716 ], [ %1661, %1703 ], [ %1695, %1673 ]
  %1751 = phi float [ %1662, %1657 ], [ %1662, %1718 ], [ %1662, %1716 ], [ %1662, %1703 ], [ %1696, %1673 ]
  %1752 = phi float [ %1663, %1657 ], [ %1663, %1718 ], [ %1663, %1716 ], [ %1663, %1703 ], [ %1697, %1673 ]
  %1753 = phi float [ %929, %1657 ], [ %929, %1718 ], [ %929, %1716 ], [ %929, %1703 ], [ %1688, %1673 ]
  %1754 = phi float [ %934, %1657 ], [ %934, %1718 ], [ %934, %1716 ], [ %934, %1703 ], [ %1700, %1673 ]
  %1755 = and i32 %1665, 12
  %1756 = icmp eq i32 %1755, 12
  br i1 %1756, label %1863, label %1757

; <label>:1757                                    ; preds = %1746
  %1758 = and i32 %1665, 2097184
  %1759 = icmp eq i32 %1758, 2097184
  %1760 = select i1 %1759, float %1232, float 0.000000e+00
  %1761 = and i32 %1665, 4194336
  %1762 = icmp eq i32 %1761, 4194336
  %1763 = select i1 %1762, float %1232, float 0.000000e+00
  %1764 = and i32 %1665, 8388640
  %1765 = icmp eq i32 %1764, 8388640
  %1766 = select i1 %1765, float %1232, float 0.000000e+00
  %1767 = and i32 %1665, 2048
  %1768 = icmp ne i32 %1767, 0
  %1769 = select i1 %1768, float %1232, float 0.000000e+00
  %1770 = and i32 %1665, 8192
  %1771 = icmp ne i32 %1770, 0
  %1772 = select i1 %1771, float %1232, float 0.000000e+00
  %1773 = icmp eq i32 %1755, 0
  br i1 %1773, label %1774, label %1799

; <label>:1774                                    ; preds = %1757
  %1775 = fsub fast float %1533, %918
  %1776 = fsub fast float %1534, %919
  %1777 = fmul fast float %1760, %1775
  %1778 = fmul fast float %1760, %1776
  %1779 = fadd fast float %1777, %918
  %1780 = fadd fast float %1778, %919
  %1781 = fsub fast float %1535, %932
  %1782 = fmul fast float %1763, %1781
  %1783 = fadd fast float %1782, %932
  %1784 = fsub fast float %1532, %931
  %1785 = fmul fast float %1766, %1784
  %1786 = fadd fast float %1785, %931
  %1787 = fsub fast float %1635, %933
  %1788 = fmul fast float %1769, %1787
  %1789 = fadd fast float %1788, %933
  %1790 = fsub fast float %1632, %926
  %1791 = fsub fast float %1633, %927
  %1792 = fsub fast float %1634, %928
  %1793 = fmul fast float %1772, %1790
  %1794 = fmul fast float %1772, %1791
  %1795 = fmul fast float %1772, %1792
  %1796 = fadd fast float %1793, %926
  %1797 = fadd fast float %1794, %927
  %1798 = fadd fast float %1795, %928
  br label %1863

; <label>:1799                                    ; preds = %1757
  %1800 = icmp eq i32 %1755, 4
  br i1 %1800, label %1801, label %1841

; <label>:1801                                    ; preds = %1799
  %1802 = fmul fast float %1760, %1533
  %1803 = fmul fast float %1760, %1534
  %1804 = fadd fast float %1802, %918
  %1805 = fadd fast float %1803, %919
  %1806 = call float @dx.op.binary.f32(i32 36, float %932, float %1535)  ; FMin(a,b)
  %1807 = fsub fast float %1806, %932
  %1808 = fmul fast float %1807, %1763
  %1809 = fadd fast float %1808, %932
  %1810 = fadd fast float %1532, %931
  %1811 = fmul fast float %1810, 0x3FF337FAE0000000
  %1812 = fmul fast float %931, %931
  %1813 = fmul fast float %1532, %1532
  %1814 = fadd fast float %1813, %1812
  %1815 = fmul fast float %1814, 0x3FE5152B00000000
  %1816 = fmul fast float %931, 0xBFCC1F85E0000000
  %1817 = fmul fast float %1816, %1532
  %1818 = fadd fast float %1817, 0xBFE1363700000000
  %1819 = fadd fast float %1818, %1811
  %1820 = fsub fast float %1819, %1815
  %1821 = fmul fast float %1810, 0x3FBA6F0D00000000
  %1822 = fmul fast float %1814, 0x3FD0432880000000
  %1823 = fmul fast float %931, 0xBFEF110800000000
  %1824 = fmul fast float %1823, %1532
  %1825 = fadd fast float %1824, 1.000000e+00
  %1826 = fsub fast float %1825, %1821
  %1827 = fadd fast float %1826, %1822
  %1828 = fdiv fast float %1820, %1827
  %1829 = call float @dx.op.unary.f32(i32 7, float %1828)  ; Saturate(value)
  %1830 = fsub fast float %1829, %931
  %1831 = fmul fast float %1830, %1766
  %1832 = fadd fast float %1831, %931
  %1833 = fmul fast float %1769, %1635
  %1834 = fadd fast float %1833, %933
  %1835 = fmul fast float %1772, %1632
  %1836 = fmul fast float %1772, %1633
  %1837 = fmul fast float %1772, %1634
  %1838 = fadd fast float %1835, %926
  %1839 = fadd fast float %1836, %927
  %1840 = fadd fast float %1837, %928
  br label %1863

; <label>:1841                                    ; preds = %1799
  %1842 = icmp eq i32 %1755, 8
  br i1 %1842, label %1843, label %1863

; <label>:1843                                    ; preds = %1841
  %1844 = fmul fast float %1760, %1533
  %1845 = fmul fast float %1760, %1534
  %1846 = fadd fast float %1844, %918
  %1847 = fadd fast float %1845, %919
  %1848 = call float @dx.op.binary.f32(i32 36, float %932, float %1535)  ; FMin(a,b)
  %1849 = fsub fast float %1848, %932
  %1850 = fmul fast float %1849, %1763
  %1851 = fadd fast float %1850, %932
  %1852 = fsub fast float %1532, %931
  %1853 = fmul fast float %1766, %1852
  %1854 = fadd fast float %1853, %931
  %1855 = fmul fast float %1769, %1635
  %1856 = fadd fast float %1855, %933
  %1857 = fmul fast float %1772, %1632
  %1858 = fmul fast float %1772, %1633
  %1859 = fmul fast float %1772, %1634
  %1860 = fadd fast float %1857, %926
  %1861 = fadd fast float %1858, %927
  %1862 = fadd fast float %1859, %928
  br label %1863

; <label>:1863                                    ; preds = %1843, %1841, %1801, %1774, %1746, %1231, %935, %917
  %1864 = phi float [ %918, %1746 ], [ %918, %1231 ], [ %918, %917 ], [ %1846, %1843 ], [ %918, %1841 ], [ %1804, %1801 ], [ %1779, %1774 ], [ %918, %935 ]
  %1865 = phi float [ %919, %1746 ], [ %919, %1231 ], [ %919, %917 ], [ %1847, %1843 ], [ %919, %1841 ], [ %1805, %1801 ], [ %1780, %1774 ], [ %919, %935 ]
  %1866 = phi float [ %1747, %1746 ], [ %920, %1231 ], [ %920, %917 ], [ %1747, %1843 ], [ %1747, %1841 ], [ %1747, %1801 ], [ %1747, %1774 ], [ %920, %935 ]
  %1867 = phi float [ %1748, %1746 ], [ %921, %1231 ], [ %921, %917 ], [ %1748, %1843 ], [ %1748, %1841 ], [ %1748, %1801 ], [ %1748, %1774 ], [ %921, %935 ]
  %1868 = phi float [ %1749, %1746 ], [ %922, %1231 ], [ %922, %917 ], [ %1749, %1843 ], [ %1749, %1841 ], [ %1749, %1801 ], [ %1749, %1774 ], [ %922, %935 ]
  %1869 = phi float [ %1750, %1746 ], [ %923, %1231 ], [ %923, %917 ], [ %1750, %1843 ], [ %1750, %1841 ], [ %1750, %1801 ], [ %1750, %1774 ], [ %923, %935 ]
  %1870 = phi float [ %1751, %1746 ], [ %924, %1231 ], [ %924, %917 ], [ %1751, %1843 ], [ %1751, %1841 ], [ %1751, %1801 ], [ %1751, %1774 ], [ %924, %935 ]
  %1871 = phi float [ %1752, %1746 ], [ %925, %1231 ], [ %925, %917 ], [ %1752, %1843 ], [ %1752, %1841 ], [ %1752, %1801 ], [ %1752, %1774 ], [ %925, %935 ]
  %1872 = phi float [ %926, %1746 ], [ %926, %1231 ], [ %926, %917 ], [ %1860, %1843 ], [ %926, %1841 ], [ %1838, %1801 ], [ %1796, %1774 ], [ %926, %935 ]
  %1873 = phi float [ %927, %1746 ], [ %927, %1231 ], [ %927, %917 ], [ %1861, %1843 ], [ %927, %1841 ], [ %1839, %1801 ], [ %1797, %1774 ], [ %927, %935 ]
  %1874 = phi float [ %928, %1746 ], [ %928, %1231 ], [ %928, %917 ], [ %1862, %1843 ], [ %928, %1841 ], [ %1840, %1801 ], [ %1798, %1774 ], [ %928, %935 ]
  %1875 = phi float [ %1753, %1746 ], [ %929, %1231 ], [ %929, %917 ], [ %1753, %1843 ], [ %1753, %1841 ], [ %1753, %1801 ], [ %1753, %1774 ], [ %929, %935 ]
  %1876 = phi float [ %931, %1746 ], [ %931, %1231 ], [ %931, %917 ], [ %1854, %1843 ], [ %931, %1841 ], [ %1832, %1801 ], [ %1786, %1774 ], [ %931, %935 ]
  %1877 = phi float [ %932, %1746 ], [ %932, %1231 ], [ %932, %917 ], [ %1851, %1843 ], [ %932, %1841 ], [ %1809, %1801 ], [ %1783, %1774 ], [ %932, %935 ]
  %1878 = phi float [ %933, %1746 ], [ %933, %1231 ], [ %933, %917 ], [ %1856, %1843 ], [ %933, %1841 ], [ %1834, %1801 ], [ %1789, %1774 ], [ %933, %935 ]
  %1879 = phi float [ %1754, %1746 ], [ %934, %1231 ], [ %934, %917 ], [ %1754, %1843 ], [ %1754, %1841 ], [ %1754, %1801 ], [ %1754, %1774 ], [ %934, %935 ]
  br i1 %344, label %2808, label %1880

; <label>:1880                                    ; preds = %1863
  %1881 = icmp ult i32 %397, 3
  %1882 = add i32 %40, 56
  %1883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.i32 %1883, 0
  %1885 = add i32 %40, 60
  %1886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1885, i32 undef)  ; BufferLoad(srv,index,wot)
  %1887 = extractvalue %dx.types.ResRet.i32 %1886, 0
  %1888 = or i32 %1887, %1884
  %1889 = icmp eq i32 %1888, 0
  br i1 %1889, label %2808, label %1890

; <label>:1890                                    ; preds = %1880
  %1891 = and i32 %1884, 262144
  %1892 = icmp ne i32 %1891, 0
  %1893 = select i1 %1892, float %43, float 1.000000e+00
  %1894 = select i1 %1892, float %44, float 0.000000e+00
  %1895 = select i1 %1892, float %45, float 0.000000e+00
  %1896 = select i1 %1892, float %46, float 1.000000e+00
  %1897 = select i1 %1892, float %47, float %56
  %1898 = select i1 %1892, float %48, float %57
  %1899 = add i32 %40, 316
  %1900 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %1901 = extractvalue %dx.types.ResRet.i32 %1900, 0
  %1902 = lshr i32 %1901, 16
  %1903 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1902)  ; LegacyF16ToF32(value)
  %1904 = fmul fast float %1903, 0x3F50624DE0000000
  %1905 = add i32 %40, 120
  %1906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.i32 %1906, 0
  %1908 = lshr i32 %1907, 16
  %1909 = and i32 %1908, 255
  %1910 = lshr i32 %1907, 24
  %1911 = add i32 %40, 324
  %1912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.i32 %1912, 0
  %1914 = and i32 %1913, 65535
  %1915 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1914)  ; LegacyF16ToF32(value)
  %1916 = lshr i32 %1913, 16
  %1917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1916)  ; LegacyF16ToF32(value)
  %1918 = add i32 %40, 64
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = lshr i32 %1920, 22
  %1922 = shl nuw nsw i32 %1921, 5
  %1923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1922)  ; LegacyF16ToF32(value)
  %1924 = shl i32 %1920, 4
  %1925 = and i32 %1924, 32752
  %1926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1925)  ; LegacyF16ToF32(value)
  %1927 = lshr i32 %1920, 7
  %1928 = and i32 %1927, 32752
  %1929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1928)  ; LegacyF16ToF32(value)
  %1930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1931 = extractvalue %dx.types.CBufRet.f32 %1930, 3
  %1932 = fmul fast float %1931, 1.000000e+03
  %1933 = fmul fast float %294, %1932
  %1934 = call float @dx.op.unary.f32(i32 22, float %1933)  ; Frc(value)
  %1935 = fadd fast float %1934, %284
  %1936 = fmul fast float %295, %1932
  %1937 = call float @dx.op.unary.f32(i32 22, float %1936)  ; Frc(value)
  %1938 = fadd fast float %1937, %286
  %1939 = fmul fast float %1904, %1932
  %1940 = call float @dx.op.unary.f32(i32 22, float %1939)  ; Frc(value)
  %1941 = fmul fast float %1940, 0x401921FB60000000
  %1942 = fadd fast float %1941, %1923
  %1943 = call float @dx.op.unary.f32(i32 13, float %1942)  ; Sin(value)
  %1944 = call float @dx.op.unary.f32(i32 12, float %1942)  ; Cos(value)
  %1945 = fsub fast float -0.000000e+00, %1943
  %1946 = fadd fast float %1897, -5.000000e-01
  %1947 = fadd fast float %1898, -5.000000e-01
  %1948 = fmul fast float %1915, %1946
  %1949 = fmul fast float %1917, %1947
  %1950 = fadd fast float %1948, 5.000000e-01
  %1951 = fadd fast float %1949, 5.000000e-01
  %1952 = fmul fast float %1926, %1950
  %1953 = fmul fast float %1929, %1951
  %1954 = fmul fast float %1944, %1952
  %1955 = call float @dx.op.tertiary.f32(i32 46, float %1945, float %1953, float %1954)  ; FMad(a,b,c)
  %1956 = fmul fast float %1943, %1952
  %1957 = call float @dx.op.tertiary.f32(i32 46, float %1944, float %1953, float %1956)  ; FMad(a,b,c)
  %1958 = fadd fast float %1935, %1955
  %1959 = fadd fast float %1938, %1957
  %1960 = icmp ugt i32 %1909, 1
  %1961 = icmp ugt i32 %1907, 33554431
  %1962 = or i1 %1961, %1960
  br i1 %1962, label %1963, label %1988

; <label>:1963                                    ; preds = %1890
  %1964 = add i32 %40, 260
  %1965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1964, i32 undef)  ; BufferLoad(srv,index,wot)
  %1966 = extractvalue %dx.types.ResRet.i32 %1965, 0
  %1967 = lshr i32 %1966, 16
  %1968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1967)  ; LegacyF16ToF32(value)
  %1969 = fmul fast float %1931, %1968
  %1970 = call float @dx.op.unary.f32(i32 22, float %1969)  ; Frc(value)
  %1971 = mul nuw nsw i32 %1909, %1910
  %1972 = uitofp i32 %1971 to float
  %1973 = fmul fast float %1970, %1972
  %1974 = call float @dx.op.unary.f32(i32 27, float %1973)  ; Round_ni(value)
  %1975 = fptoui float %1974 to i32
  %1976 = urem i32 %1975, %1909
  %1977 = udiv i32 %1975, %1910
  %1978 = call float @dx.op.unary.f32(i32 22, float %1958)  ; Frc(value)
  %1979 = call float @dx.op.unary.f32(i32 22, float %1959)  ; Frc(value)
  %1980 = uitofp i32 %1976 to float
  %1981 = uitofp i32 %1977 to float
  %1982 = fadd fast float %1978, %1980
  %1983 = fadd fast float %1979, %1981
  %1984 = uitofp i32 %1909 to float
  %1985 = uitofp i32 %1910 to float
  %1986 = fdiv fast float %1982, %1984
  %1987 = fdiv fast float %1983, %1985
  br label %1988

; <label>:1988                                    ; preds = %1963, %1890
  %1989 = phi float [ %1986, %1963 ], [ %1958, %1890 ]
  %1990 = phi float [ %1987, %1963 ], [ %1959, %1890 ]
  %1991 = and i32 %1884, 16777216
  %1992 = icmp eq i32 %1991, 0
  br i1 %1992, label %2102, label %1993

; <label>:1993                                    ; preds = %1988
  %1994 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %1995 = extractvalue %dx.types.CBufRet.f32 %1994, 0
  %1996 = extractvalue %dx.types.CBufRet.f32 %1994, 1
  %1997 = extractvalue %dx.types.CBufRet.f32 %1994, 2
  %1998 = fadd fast float %1995, %127
  %1999 = fadd fast float %1996, %128
  %2000 = fadd fast float %1997, %129
  %2001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2002 = extractvalue %dx.types.CBufRet.f32 %2001, 0
  %2003 = call float @dx.op.unary.f32(i32 7, float %2002)  ; Saturate(value)
  %2004 = icmp eq i32 %41, 65535
  br i1 %2004, label %2099, label %2005

; <label>:2005                                    ; preds = %1993
  %2006 = lshr i32 %41, 1
  %2007 = shl i32 %2006, 2
  %2008 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2007, i32 undef)  ; BufferLoad(srv,index,wot)
  %2009 = extractvalue %dx.types.ResRet.i32 %2008, 0
  %2010 = and i32 %41, 1
  %2011 = icmp ne i32 %2010, 0
  %2012 = lshr i32 %2009, 16
  %2013 = and i32 %2009, 65535
  %2014 = select i1 %2011, i32 %2012, i32 %2013
  %2015 = icmp eq i32 %2014, 65535
  br i1 %2015, label %2095, label %2016

; <label>:2016                                    ; preds = %2005
  %2017 = mul nuw nsw i32 %2014, 40
  %2018 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2017, i32 undef)  ; BufferLoad(srv,index,wot)
  %2019 = extractvalue %dx.types.ResRet.f32 %2018, 0
  %2020 = extractvalue %dx.types.ResRet.f32 %2018, 1
  %2021 = extractvalue %dx.types.ResRet.f32 %2018, 2
  %2022 = add nuw nsw i32 %2017, 12
  %2023 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2022, i32 undef)  ; BufferLoad(srv,index,wot)
  %2024 = extractvalue %dx.types.ResRet.f32 %2023, 0
  %2025 = extractvalue %dx.types.ResRet.f32 %2023, 1
  %2026 = extractvalue %dx.types.ResRet.f32 %2023, 2
  %2027 = add nuw nsw i32 %2017, 24
  %2028 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.f32 %2028, 0
  %2030 = extractvalue %dx.types.ResRet.f32 %2028, 1
  %2031 = extractvalue %dx.types.ResRet.f32 %2028, 2
  %2032 = add nuw nsw i32 %2017, 36
  %2033 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2032, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.f32 %2033, 0
  %2035 = fsub fast float %1998, %2019
  %2036 = fsub fast float %1999, %2020
  %2037 = fsub fast float %2000, %2021
  %2038 = fmul fast float %2034, %2035
  %2039 = fmul fast float %2034, %2036
  %2040 = fmul fast float %2034, %2037
  %2041 = call float @dx.op.unary.f32(i32 27, float %2038)  ; Round_ni(value)
  %2042 = call float @dx.op.unary.f32(i32 27, float %2039)  ; Round_ni(value)
  %2043 = call float @dx.op.unary.f32(i32 27, float %2040)  ; Round_ni(value)
  %2044 = fadd fast float %2041, 5.000000e-01
  %2045 = fadd fast float %2042, 5.000000e-01
  %2046 = fadd fast float %2043, 5.000000e-01
  %2047 = fmul fast float %2044, %2024
  %2048 = fmul fast float %2045, %2025
  %2049 = fmul fast float %2046, %2026
  %2050 = shl i32 %41, 2
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = add i32 %2052, 0
  %2054 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2053, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2055 = call float @dx.op.unary.f32(i32 22, float %2047)  ; Frc(value)
  %2056 = call float @dx.op.unary.f32(i32 22, float %2048)  ; Frc(value)
  %2057 = call float @dx.op.unary.f32(i32 22, float %2049)  ; Frc(value)
  %2058 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2054, %dx.types.Handle %35, float %2055, float %2056, float %2057, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2059 = extractvalue %dx.types.ResRet.f32 %2058, 0
  %2060 = extractvalue %dx.types.ResRet.f32 %2058, 1
  %2061 = extractvalue %dx.types.ResRet.f32 %2058, 2
  %2062 = fmul fast float %2059, 1.023000e+03
  %2063 = fmul fast float %2060, 1.023000e+03
  %2064 = fmul fast float %2061, 1.023000e+03
  %2065 = fadd fast float %2062, 5.000000e-01
  %2066 = fadd fast float %2063, 5.000000e-01
  %2067 = fadd fast float %2064, 5.000000e-01
  %2068 = call float @dx.op.unary.f32(i32 27, float %2065)  ; Round_ni(value)
  %2069 = call float @dx.op.unary.f32(i32 27, float %2066)  ; Round_ni(value)
  %2070 = call float @dx.op.unary.f32(i32 27, float %2067)  ; Round_ni(value)
  %2071 = fsub fast float %2038, %2041
  %2072 = fsub fast float %2039, %2042
  %2073 = fsub fast float %2040, %2043
  %2074 = fmul fast float %2071, 7.500000e-01
  %2075 = fmul fast float %2072, 7.500000e-01
  %2076 = fmul fast float %2073, 7.500000e-01
  %2077 = fadd fast float %2041, 1.250000e-01
  %2078 = fadd fast float %2077, %2074
  %2079 = fadd fast float %2078, %2068
  %2080 = fadd fast float %2042, 1.250000e-01
  %2081 = fadd fast float %2080, %2075
  %2082 = fadd fast float %2081, %2069
  %2083 = fadd fast float %2043, 1.250000e-01
  %2084 = fadd fast float %2083, %2076
  %2085 = fadd fast float %2084, %2070
  %2086 = fmul fast float %2079, %2029
  %2087 = fmul fast float %2082, %2030
  %2088 = fmul fast float %2085, %2031
  %2089 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2050, i32 undef)  ; BufferLoad(srv,index,wot)
  %2090 = extractvalue %dx.types.ResRet.i32 %2089, 0
  %2091 = add i32 %2090, 0
  %2092 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2091, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2093 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2092, %dx.types.Handle %33, float %2086, float %2087, float %2088, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2094 = extractvalue %dx.types.ResRet.f32 %2093, 0
  br label %2095

; <label>:2095                                    ; preds = %2016, %2005
  %2096 = phi float [ %2094, %2016 ], [ -1.000000e+00, %2005 ]
  %2097 = fadd fast float %2096, %2003
  %2098 = call float @dx.op.unary.f32(i32 7, float %2097)  ; Saturate(value)
  br label %2099

; <label>:2099                                    ; preds = %2095, %1993
  %2100 = phi float [ %2098, %2095 ], [ %2003, %1993 ]
  %2101 = fmul fast float %2100, %393
  br label %2102

; <label>:2102                                    ; preds = %2099, %1988
  %2103 = phi float [ %2101, %2099 ], [ %393, %1988 ]
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = and i32 %2105, 256
  %2107 = icmp eq i32 %2106, 0
  br i1 %2107, label %2154, label %2108

; <label>:2108                                    ; preds = %2102
  %2109 = add i32 %40, 448
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = add i32 %2111, 0
  %2113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2113, %dx.types.Handle %65, float %1989, float %1990, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2115 = extractvalue %dx.types.ResRet.f32 %2114, 0
  %2116 = add i32 %40, 132
  %2117 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2116, i32 undef)  ; BufferLoad(srv,index,wot)
  %2118 = extractvalue %dx.types.ResRet.i32 %2117, 0
  %2119 = shl i32 %2118, 4
  %2120 = and i32 %2119, 32752
  %2121 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2120)  ; LegacyF16ToF32(value)
  %2122 = lshr i32 %2118, 7
  %2123 = and i32 %2122, 32752
  %2124 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2123)  ; LegacyF16ToF32(value)
  %2125 = fsub fast float 1.000000e+00, %2103
  %2126 = call float @dx.op.binary.f32(i32 35, float %2125, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2127 = bitcast float %2103 to i32
  %2128 = sitofp i32 %2127 to float
  %2129 = fadd fast float %2128, 0xC1CFBF8940000000
  %2130 = fmul fast float %2124, %2129
  %2131 = fadd fast float %2130, 0x41CFBF8940000000
  %2132 = fptosi float %2131 to i32
  %2133 = bitcast i32 %2132 to float
  %2134 = bitcast float %2126 to i32
  %2135 = sitofp i32 %2134 to float
  %2136 = fadd fast float %2135, 0xC1CFBF8940000000
  %2137 = fmul fast float %2136, %2124
  %2138 = fadd fast float %2137, 0x41CFBF8940000000
  %2139 = fptosi float %2138 to i32
  %2140 = bitcast i32 %2139 to float
  %2141 = fmul fast float %2133, %2121
  %2142 = fmul fast float %2140, %2121
  %2143 = fsub fast float %2126, %2141
  %2144 = fadd fast float %2142, %2126
  %2145 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  %2146 = call float @dx.op.unary.f32(i32 7, float %2144)  ; Saturate(value)
  %2147 = fsub fast float %2115, %2145
  %2148 = fsub fast float %2146, %2145
  %2149 = bitcast float %2148 to i32
  %2150 = sub nsw i32 2129859010, %2149
  %2151 = bitcast i32 %2150 to float
  %2152 = fmul fast float %2151, %2147
  %2153 = call float @dx.op.unary.f32(i32 7, float %2152)  ; Saturate(value)
  br label %2154

; <label>:2154                                    ; preds = %2108, %2102
  %2155 = phi float [ %2153, %2108 ], [ %2103, %2102 ]
  %2156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2157 = extractvalue %dx.types.ResRet.i32 %2156, 0
  %2158 = and i32 %2157, 128
  %2159 = icmp eq i32 %2158, 0
  br i1 %2159, label %2176, label %2160

; <label>:2160                                    ; preds = %2154
  %2161 = add i32 %40, 432
  %2162 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2161, i32 undef)  ; BufferLoad(srv,index,wot)
  %2163 = extractvalue %dx.types.ResRet.i32 %2162, 0
  %2164 = add i32 %2163, 0
  %2165 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2164, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2166 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2165, %dx.types.Handle %65, float %1989, float %1990, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2167 = extractvalue %dx.types.ResRet.f32 %2166, 0
  %2168 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2169 = extractvalue %dx.types.ResRet.i32 %2168, 0
  %2170 = and i32 %2169, 524288
  %2171 = icmp ne i32 %2170, 0
  %2172 = fcmp fast ogt float %2167, 0x3FE0101020000000
  %2173 = select i1 %2172, float 1.000000e+00, float 0.000000e+00
  %2174 = select i1 %2171, float %2173, float %2167
  %2175 = fmul fast float %2174, %2155
  br label %2176

; <label>:2176                                    ; preds = %2160, %2154
  %2177 = phi float [ %2175, %2160 ], [ %2155, %2154 ]
  %2178 = fcmp fast ult float %2177, 0x3F70101020000000
  br i1 %2178, label %2808, label %2179

; <label>:2179                                    ; preds = %2176
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = and i32 %2181, 16
  %2183 = icmp eq i32 %2182, 0
  br i1 %2183, label %2382, label %2184

; <label>:2184                                    ; preds = %2179
  %2185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %2186 = extractvalue %dx.types.ResRet.i32 %2185, 0
  %2187 = add i32 %40, 384
  %2188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2187, i32 undef)  ; BufferLoad(srv,index,wot)
  %2189 = extractvalue %dx.types.ResRet.i32 %2188, 0
  %2190 = add i32 %2189, 0
  %2191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2191, %dx.types.Handle %64, float %1989, float %1990, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2193 = extractvalue %dx.types.ResRet.f32 %2192, 0
  %2194 = extractvalue %dx.types.ResRet.f32 %2192, 1
  %2195 = extractvalue %dx.types.ResRet.f32 %2192, 2
  %2196 = extractvalue %dx.types.ResRet.f32 %2192, 3
  %2197 = and i32 %2186, 255
  %2198 = uitofp i32 %2197 to float
  %2199 = lshr i32 %2186, 8
  %2200 = and i32 %2199, 255
  %2201 = uitofp i32 %2200 to float
  %2202 = fmul fast float %2196, %2198
  %2203 = fadd fast float %2202, %2201
  %2204 = fmul fast float %2203, 0x3F70101000000000
  %2205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2206 = extractvalue %dx.types.ResRet.i32 %2205, 0
  %2207 = and i32 %2206, 512
  %2208 = icmp eq i32 %2207, 0
  br i1 %2208, label %2217, label %2209

; <label>:2209                                    ; preds = %2184
  %2210 = add i32 %40, 464
  %2211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2210, i32 undef)  ; BufferLoad(srv,index,wot)
  %2212 = extractvalue %dx.types.ResRet.i32 %2211, 0
  %2213 = add i32 %2212, 0
  %2214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2214, %dx.types.Handle %65, float %1989, float %1990, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2216 = extractvalue %dx.types.ResRet.f32 %2215, 0
  br label %2217

; <label>:2217                                    ; preds = %2209, %2184
  %2218 = phi float [ %2216, %2209 ], [ 1.000000e+00, %2184 ]
  %2219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2220 = extractvalue %dx.types.ResRet.i32 %2219, 0
  %2221 = and i32 %2220, 33554432
  %2222 = icmp eq i32 %2221, 0
  br i1 %2222, label %2329, label %2223

; <label>:2223                                    ; preds = %2217
  %2224 = add i32 %40, 256
  %2225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2224, i32 undef)  ; BufferLoad(srv,index,wot)
  %2226 = extractvalue %dx.types.ResRet.i32 %2225, 0
  %2227 = and i32 %2226, 65535
  %2228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2227)  ; LegacyF16ToF32(value)
  %2229 = lshr i32 %2226, 16
  %2230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2229)  ; LegacyF16ToF32(value)
  %2231 = add i32 %40, 260
  %2232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2231, i32 undef)  ; BufferLoad(srv,index,wot)
  %2233 = extractvalue %dx.types.ResRet.i32 %2232, 0
  %2234 = and i32 %2233, 65535
  %2235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2234)  ; LegacyF16ToF32(value)
  %2236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %2237 = extractvalue %dx.types.ResRet.i32 %2236, 0
  %2238 = lshr i32 %2237, 24
  %2239 = uitofp i32 %2238 to float
  %2240 = fmul fast float %2239, 0x3F70101020000000
  %2241 = and i32 %2237, 255
  %2242 = uitofp i32 %2241 to float
  %2243 = fmul fast float %2242, 0x3F70101020000000
  %2244 = lshr i32 %2237, 8
  %2245 = and i32 %2244, 255
  %2246 = uitofp i32 %2245 to float
  %2247 = fmul fast float %2246, 0x3F70101020000000
  %2248 = lshr i32 %2237, 16
  %2249 = and i32 %2248, 255
  %2250 = uitofp i32 %2249 to float
  %2251 = fmul fast float %2250, 0x3F70101020000000
  %2252 = add i32 %40, 252
  %2253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2252, i32 undef)  ; BufferLoad(srv,index,wot)
  %2254 = extractvalue %dx.types.ResRet.i32 %2253, 0
  %2255 = lshr i32 %2254, 24
  %2256 = uitofp i32 %2255 to float
  %2257 = fmul fast float %2256, 0x3F70101020000000
  %2258 = and i32 %2254, 255
  %2259 = uitofp i32 %2258 to float
  %2260 = fmul fast float %2259, 0x3F70101020000000
  %2261 = lshr i32 %2254, 8
  %2262 = and i32 %2261, 255
  %2263 = uitofp i32 %2262 to float
  %2264 = fmul fast float %2263, 0x3F70101020000000
  %2265 = lshr i32 %2254, 16
  %2266 = and i32 %2265, 255
  %2267 = uitofp i32 %2266 to float
  %2268 = fmul fast float %2267, 0x3F70101020000000
  %2269 = bitcast float %2193 to i32
  %2270 = ashr i32 %2269, 1
  %2271 = sub nsw i32 1597463174, %2270
  %2272 = bitcast i32 %2271 to float
  %2273 = fmul fast float %2193, 5.000000e-01
  %2274 = fmul fast float %2272, %2272
  %2275 = fmul fast float %2274, %2273
  %2276 = fsub fast float 1.500000e+00, %2275
  %2277 = fmul fast float %2272, %2193
  %2278 = fmul fast float %2277, %2276
  %2279 = bitcast float %2194 to i32
  %2280 = ashr i32 %2279, 1
  %2281 = sub nsw i32 1597463174, %2280
  %2282 = bitcast i32 %2281 to float
  %2283 = fmul fast float %2194, 5.000000e-01
  %2284 = fmul fast float %2282, %2282
  %2285 = fmul fast float %2284, %2283
  %2286 = fsub fast float 1.500000e+00, %2285
  %2287 = fmul fast float %2282, %2194
  %2288 = fmul fast float %2287, %2286
  %2289 = bitcast float %2195 to i32
  %2290 = ashr i32 %2289, 1
  %2291 = sub nsw i32 1597463174, %2290
  %2292 = bitcast i32 %2291 to float
  %2293 = fmul fast float %2195, 5.000000e-01
  %2294 = fmul fast float %2292, %2292
  %2295 = fmul fast float %2294, %2293
  %2296 = fsub fast float 1.500000e+00, %2295
  %2297 = fmul fast float %2292, %2195
  %2298 = fmul fast float %2297, %2296
  %2299 = fsub fast float %2278, %2260
  %2300 = fsub fast float %2288, %2264
  %2301 = fsub fast float %2298, %2268
  %2302 = fmul fast float %2299, %2228
  %2303 = fmul fast float %2300, %2230
  %2304 = fmul fast float %2301, %2235
  %2305 = fadd fast float %2302, %2243
  %2306 = fadd fast float %2303, %2247
  %2307 = fadd fast float %2304, %2251
  %2308 = call float @dx.op.unary.f32(i32 7, float %2305)  ; Saturate(value)
  %2309 = call float @dx.op.unary.f32(i32 7, float %2306)  ; Saturate(value)
  %2310 = call float @dx.op.unary.f32(i32 7, float %2307)  ; Saturate(value)
  %2311 = fmul fast float %2308, %2308
  %2312 = fmul fast float %2309, %2309
  %2313 = fmul fast float %2310, %2310
  %2314 = fsub fast float %2311, %2193
  %2315 = fsub fast float %2312, %2194
  %2316 = fsub fast float %2313, %2195
  %2317 = fmul fast float %2314, %2218
  %2318 = fmul fast float %2315, %2218
  %2319 = fmul fast float %2316, %2218
  %2320 = fadd fast float %2317, %2193
  %2321 = fadd fast float %2318, %2194
  %2322 = fadd fast float %2319, %2195
  %2323 = fadd fast float %2240, %2204
  %2324 = fsub fast float %2323, %2257
  %2325 = call float @dx.op.unary.f32(i32 7, float %2324)  ; Saturate(value)
  %2326 = fsub fast float %2325, %2204
  %2327 = fmul fast float %2326, %2218
  %2328 = fadd fast float %2327, %2204
  br label %2382

; <label>:2329                                    ; preds = %2217
  %2330 = and i32 %2220, 134217728
  %2331 = icmp eq i32 %2330, 0
  br i1 %2331, label %2366, label %2332

; <label>:2332                                    ; preds = %2329
  %2333 = call float @dx.op.unary.f32(i32 24, float %271)  ; Sqrt(value)
  %2334 = call float @dx.op.unary.f32(i32 24, float %275)  ; Sqrt(value)
  %2335 = call float @dx.op.unary.f32(i32 24, float %279)  ; Sqrt(value)
  %2336 = fadd fast float %2333, -5.000000e-01
  %2337 = fadd fast float %2334, -5.000000e-01
  %2338 = fadd fast float %2335, -5.000000e-01
  %2339 = fmul fast float %2336, %2218
  %2340 = fmul fast float %2337, %2218
  %2341 = fmul fast float %2338, %2218
  %2342 = fadd fast float %2339, 5.000000e-01
  %2343 = fadd fast float %2340, 5.000000e-01
  %2344 = fadd fast float %2341, 5.000000e-01
  %2345 = call float @dx.op.unary.f32(i32 24, float %2193)  ; Sqrt(value)
  %2346 = call float @dx.op.unary.f32(i32 24, float %2194)  ; Sqrt(value)
  %2347 = call float @dx.op.unary.f32(i32 24, float %2195)  ; Sqrt(value)
  %2348 = fmul fast float %2342, 2.000000e+00
  %2349 = fsub fast float 1.000000e+00, %2348
  %2350 = fmul fast float %2349, %2345
  %2351 = fadd fast float %2350, %2348
  %2352 = fmul fast float %2351, %2345
  %2353 = fmul fast float %2343, 2.000000e+00
  %2354 = fsub fast float 1.000000e+00, %2353
  %2355 = fmul fast float %2354, %2346
  %2356 = fadd fast float %2355, %2353
  %2357 = fmul fast float %2356, %2346
  %2358 = fmul fast float %2344, 2.000000e+00
  %2359 = fsub fast float 1.000000e+00, %2358
  %2360 = fmul fast float %2359, %2347
  %2361 = fadd fast float %2360, %2358
  %2362 = fmul fast float %2361, %2347
  %2363 = fmul fast float %2352, %2352
  %2364 = fmul fast float %2357, %2357
  %2365 = fmul fast float %2362, %2362
  br label %2382

; <label>:2366                                    ; preds = %2329
  %2367 = fmul fast float %271, %271
  %2368 = fmul fast float %275, %275
  %2369 = fmul fast float %279, %279
  %2370 = fadd fast float %2367, -1.000000e+00
  %2371 = fadd fast float %2368, -1.000000e+00
  %2372 = fadd fast float %2369, -1.000000e+00
  %2373 = fmul fast float %2218, %2370
  %2374 = fmul fast float %2218, %2371
  %2375 = fmul fast float %2218, %2372
  %2376 = fadd fast float %2373, 1.000000e+00
  %2377 = fadd fast float %2374, 1.000000e+00
  %2378 = fadd fast float %2375, 1.000000e+00
  %2379 = fmul fast float %2376, %2193
  %2380 = fmul fast float %2377, %2194
  %2381 = fmul fast float %2378, %2195
  br label %2382

; <label>:2382                                    ; preds = %2366, %2332, %2223, %2179
  %2383 = phi float [ %2328, %2223 ], [ %2204, %2332 ], [ %2204, %2366 ], [ 0x3FA23C0BE0000000, %2179 ]
  %2384 = phi float [ %2320, %2223 ], [ %2363, %2332 ], [ %2379, %2366 ], [ 1.000000e+00, %2179 ]
  %2385 = phi float [ %2321, %2223 ], [ %2364, %2332 ], [ %2380, %2366 ], [ 1.000000e+00, %2179 ]
  %2386 = phi float [ %2322, %2223 ], [ %2365, %2332 ], [ %2381, %2366 ], [ 1.000000e+00, %2179 ]
  %2387 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2388 = extractvalue %dx.types.CBufRet.i32 %2387, 1
  %2389 = and i32 %2388, 1
  %2390 = icmp ne i32 %2389, 0
  %2391 = add i32 %40, 356
  %2392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2391, i32 undef)  ; BufferLoad(srv,index,wot)
  %2393 = extractvalue %dx.types.ResRet.i32 %2392, 0
  %2394 = and i32 %2393, 32
  %2395 = icmp ne i32 %2394, 0
  %2396 = and i1 %2390, %2395
  %2397 = select i1 %2396, float 1.000000e+00, float %2384
  %2398 = select i1 %2396, float 0x3FD3333340000000, float %2385
  %2399 = select i1 %2396, float 0x3FD3333340000000, float %2386
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 32
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %2476, label %2404

; <label>:2404                                    ; preds = %2382
  %2405 = add i32 %40, 124
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = add i32 %40, 400
  %2409 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2408, i32 undef)  ; BufferLoad(srv,index,wot)
  %2410 = extractvalue %dx.types.ResRet.i32 %2409, 0
  %2411 = add i32 %2410, 0
  %2412 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2411, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2413 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2412, %dx.types.Handle %64, float %1989, float %1990, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2414 = extractvalue %dx.types.ResRet.f32 %2413, 0
  %2415 = extractvalue %dx.types.ResRet.f32 %2413, 1
  %2416 = extractvalue %dx.types.ResRet.f32 %2413, 2
  %2417 = extractvalue %dx.types.ResRet.f32 %2413, 3
  %2418 = and i32 %2407, 255
  %2419 = uitofp i32 %2418 to float
  %2420 = lshr i32 %2407, 8
  %2421 = and i32 %2420, 255
  %2422 = uitofp i32 %2421 to float
  %2423 = lshr i32 %2407, 16
  %2424 = and i32 %2423, 255
  %2425 = uitofp i32 %2424 to float
  %2426 = fmul fast float %2425, 0x3F70101000000000
  %2427 = fmul fast float %2414, %2419
  %2428 = fadd fast float %2427, %2422
  %2429 = fmul fast float %2428, 0x3F70101000000000
  %2430 = fadd fast float %2415, -5.000000e-01
  %2431 = fadd fast float %2417, -5.000000e-01
  %2432 = fmul fast float %2430, %2426
  %2433 = fmul fast float %2431, %2426
  %2434 = fadd fast float %2432, 5.000000e-01
  %2435 = fadd fast float %2433, 5.000000e-01
  %2436 = fmul fast float %2434, 2.000000e+00
  %2437 = fadd fast float %2436, -1.000000e+00
  %2438 = fmul fast float %2435, 2.000000e+00
  %2439 = fadd fast float %2438, -1.000000e+00
  %2440 = fadd fast float %2437, %2439
  %2441 = fmul fast float %2440, 5.000000e-01
  %2442 = fsub fast float %2437, %2439
  %2443 = fmul fast float %2442, 5.000000e-01
  %2444 = call float @dx.op.unary.f32(i32 6, float %2441)  ; FAbs(value)
  %2445 = fsub fast float 1.000000e+00, %2444
  %2446 = call float @dx.op.unary.f32(i32 6, float %2443)  ; FAbs(value)
  %2447 = fsub fast float %2445, %2446
  %2448 = call float @dx.op.dot3.f32(i32 55, float %2441, float %2443, float %2447, float %2441, float %2443, float %2447)  ; Dot3(ax,ay,az,bx,by,bz)
  %2449 = call float @dx.op.unary.f32(i32 25, float %2448)  ; Rsqrt(value)
  %2450 = fmul fast float %2441, %2449
  %2451 = fmul fast float %2443, %2449
  %2452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2453 = extractvalue %dx.types.ResRet.i32 %2452, 0
  %2454 = and i32 %2453, 67108864
  %2455 = icmp eq i32 %2454, 0
  br i1 %2455, label %2472, label %2456

; <label>:2456                                    ; preds = %2404
  %2457 = add i32 %40, 312
  %2458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.i32 %2458, 0
  %2460 = and i32 %2459, 65535
  %2461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2460)  ; LegacyF16ToF32(value)
  %2462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1899, i32 undef)  ; BufferLoad(srv,index,wot)
  %2463 = extractvalue %dx.types.ResRet.i32 %2462, 0
  %2464 = and i32 %2463, 65535
  %2465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2464)  ; LegacyF16ToF32(value)
  %2466 = lshr i32 %2459, 16
  %2467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2466)  ; LegacyF16ToF32(value)
  %2468 = fsub fast float %2429, %2467
  %2469 = fmul fast float %2468, %2461
  %2470 = fadd fast float %2469, %2465
  %2471 = call float @dx.op.unary.f32(i32 7, float %2470)  ; Saturate(value)
  br label %2472

; <label>:2472                                    ; preds = %2456, %2404
  %2473 = phi float [ %2471, %2456 ], [ %2429, %2404 ]
  %2474 = call float @dx.op.dot2.f32(i32 54, float %2450, float %2451, float %1893, float %1894)  ; Dot2(ax,ay,bx,by)
  %2475 = call float @dx.op.dot2.f32(i32 54, float %2450, float %2451, float %1895, float %1896)  ; Dot2(ax,ay,bx,by)
  br label %2476

; <label>:2476                                    ; preds = %2472, %2382
  %2477 = phi float [ %2473, %2472 ], [ 0x3FD6666660000000, %2382 ]
  %2478 = phi float [ %2474, %2472 ], [ 0.000000e+00, %2382 ]
  %2479 = phi float [ %2475, %2472 ], [ 0.000000e+00, %2382 ]
  %2480 = phi float [ %2416, %2472 ], [ 1.000000e+00, %2382 ]
  %2481 = add i32 %40, 192
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = lshr i32 %2483, 22
  %2485 = shl nuw nsw i32 %2484, 5
  %2486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2485)  ; LegacyF16ToF32(value)
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = and i32 %2488, 64
  %2490 = icmp eq i32 %2489, 0
  br i1 %2490, label %2524, label %2491

; <label>:2491                                    ; preds = %2476
  %2492 = add i32 %40, 416
  %2493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2492, i32 undef)  ; BufferLoad(srv,index,wot)
  %2494 = extractvalue %dx.types.ResRet.i32 %2493, 0
  %2495 = add i32 %2494, 0
  %2496 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2495, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2497 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2498 = extractvalue %dx.types.ResRet.i32 %2497, 0
  %2499 = and i32 %2498, 131072
  %2500 = icmp eq i32 %2499, 0
  %2501 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2496, %dx.types.Handle %64, float %1989, float %1990, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2502 = extractvalue %dx.types.ResRet.f32 %2501, 0
  %2503 = extractvalue %dx.types.ResRet.f32 %2501, 1
  %2504 = extractvalue %dx.types.ResRet.f32 %2501, 2
  %2505 = fmul fast float %2502, %259
  %2506 = fmul fast float %2503, %262
  %2507 = fmul fast float %2504, %265
  br i1 %2500, label %2514, label %2508

; <label>:2508                                    ; preds = %2491
  %2509 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2510 = extractvalue %dx.types.CBufRet.f32 %2509, 0
  %2511 = fmul fast float %2510, %2505
  %2512 = fmul fast float %2510, %2506
  %2513 = fmul fast float %2510, %2507
  br label %2514

; <label>:2514                                    ; preds = %2508, %2491
  %2515 = phi float [ %2511, %2508 ], [ %2505, %2491 ]
  %2516 = phi float [ %2512, %2508 ], [ %2506, %2491 ]
  %2517 = phi float [ %2513, %2508 ], [ %2507, %2491 ]
  %2518 = fmul fast float %2515, %2486
  %2519 = select i1 %169, float %2518, float %2515
  %2520 = call float @dx.op.dot3.f32(i32 55, float %2519, float %2516, float %2517, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2521 = select i1 %169, float 0.000000e+00, float %2515
  %2522 = select i1 %169, float %2520, float %2516
  %2523 = select i1 %169, float 0.000000e+00, float %2517
  br label %2524

; <label>:2524                                    ; preds = %2514, %2476
  %2525 = phi float [ %2521, %2514 ], [ 0.000000e+00, %2476 ]
  %2526 = phi float [ %2522, %2514 ], [ 0.000000e+00, %2476 ]
  %2527 = phi float [ %2523, %2514 ], [ 0.000000e+00, %2476 ]
  %2528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2529 = extractvalue %dx.types.ResRet.i32 %2528, 0
  %2530 = and i32 %2529, 10240
  %2531 = icmp eq i32 %2530, 0
  br i1 %2531, label %2576, label %2532

; <label>:2532                                    ; preds = %2524
  %2533 = add i32 %40, 480
  %2534 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2533, i32 undef)  ; BufferLoad(srv,index,wot)
  %2535 = extractvalue %dx.types.ResRet.i32 %2534, 0
  %2536 = add i32 %2535, 0
  %2537 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2536, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2538 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2537, %dx.types.Handle %65, float %1989, float %1990, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2539 = extractvalue %dx.types.ResRet.f32 %2538, 1
  %2540 = extractvalue %dx.types.ResRet.f32 %2538, 3
  %2541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2542 = extractvalue %dx.types.ResRet.i32 %2541, 0
  %2543 = and i32 %2542, 1048576
  %2544 = icmp ne i32 %2543, 0
  %2545 = and i32 %2542, 8192
  %2546 = icmp eq i32 %2545, 0
  br i1 %2546, label %2562, label %2547

; <label>:2547                                    ; preds = %2532
  %2548 = extractvalue %dx.types.ResRet.f32 %2538, 2
  %2549 = select i1 %2544, float %2548, float %2539
  %2550 = extractvalue %dx.types.ResRet.f32 %2538, 0
  %2551 = select i1 %2544, float %2550, float %2539
  %2552 = add i32 %40, 128
  %2553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2552, i32 undef)  ; BufferLoad(srv,index,wot)
  %2554 = extractvalue %dx.types.ResRet.i32 %2553, 0
  %2555 = lshr i32 %2554, 16
  %2556 = and i32 %2555, 255
  %2557 = uitofp i32 %2556 to float
  %2558 = fmul fast float %2557, 0x3F80101020000000
  %2559 = fmul fast float %2558, %2551
  %2560 = fmul fast float %2558, %2539
  %2561 = fmul fast float %2558, %2549
  br label %2562

; <label>:2562                                    ; preds = %2547, %2532
  %2563 = phi float [ %2559, %2547 ], [ 0.000000e+00, %2532 ]
  %2564 = phi float [ %2560, %2547 ], [ 0.000000e+00, %2532 ]
  %2565 = phi float [ %2561, %2547 ], [ 0.000000e+00, %2532 ]
  %2566 = and i32 %2542, 2048
  %2567 = icmp eq i32 %2566, 0
  br i1 %2567, label %2576, label %2568

; <label>:2568                                    ; preds = %2562
  %2569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2481, i32 undef)  ; BufferLoad(srv,index,wot)
  %2570 = extractvalue %dx.types.ResRet.i32 %2569, 0
  %2571 = shl i32 %2570, 4
  %2572 = and i32 %2571, 32752
  %2573 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2572)  ; LegacyF16ToF32(value)
  %2574 = fmul fast float %2573, %2540
  %2575 = call float @dx.op.binary.f32(i32 35, float %2574, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2576

; <label>:2576                                    ; preds = %2568, %2562, %2524
  %2577 = phi float [ %2563, %2568 ], [ %2563, %2562 ], [ 0.000000e+00, %2524 ]
  %2578 = phi float [ %2564, %2568 ], [ %2564, %2562 ], [ 0.000000e+00, %2524 ]
  %2579 = phi float [ %2565, %2568 ], [ %2565, %2562 ], [ 0.000000e+00, %2524 ]
  %2580 = phi float [ %2575, %2568 ], [ 0x3F70101020000000, %2562 ], [ 0x3F70101020000000, %2524 ]
  %2581 = add i32 %40, 128
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2581, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = and i32 %2583, 255
  %2585 = uitofp i32 %2584 to float
  %2586 = lshr i32 %2583, 8
  %2587 = and i32 %2586, 255
  %2588 = uitofp i32 %2587 to float
  %2589 = call float @dx.op.dot3.f32(i32 55, float %2397, float %2398, float %2399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2590 = fmul fast float %2588, %2589
  %2591 = fadd fast float %2590, %2585
  %2592 = fmul fast float %2591, 0x3F70101020000000
  %2593 = call float @dx.op.unary.f32(i32 7, float %2592)  ; Saturate(value)
  br i1 %1881, label %2594, label %2602

; <label>:2594                                    ; preds = %2576
  %2595 = fsub fast float 1.000000e+00, %2177
  %2596 = fmul fast float %2595, %1866
  %2597 = fmul fast float %2595, %1867
  %2598 = fmul fast float %2595, %1868
  %2599 = fmul fast float %2595, %1869
  %2600 = fmul fast float %2595, %1870
  %2601 = fmul fast float %2595, %1871
  br label %2602

; <label>:2602                                    ; preds = %2594, %2576
  %2603 = phi float [ %2596, %2594 ], [ %1866, %2576 ]
  %2604 = phi float [ %2597, %2594 ], [ %1867, %2576 ]
  %2605 = phi float [ %2598, %2594 ], [ %1868, %2576 ]
  %2606 = phi float [ %2599, %2594 ], [ %1869, %2576 ]
  %2607 = phi float [ %2600, %2594 ], [ %1870, %2576 ]
  %2608 = phi float [ %2601, %2594 ], [ %1871, %2576 ]
  %2609 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %2610 = extractvalue %dx.types.ResRet.i32 %2609, 0
  %2611 = and i32 %2610, 3
  %2612 = icmp eq i32 %2611, 3
  br i1 %2612, label %2691, label %2613

; <label>:2613                                    ; preds = %2602
  %2614 = and i32 %2610, 16
  %2615 = icmp ne i32 %2614, 0
  %2616 = select i1 %2615, float %2177, float 0.000000e+00
  %2617 = icmp eq i32 %2611, 0
  br i1 %2617, label %2618, label %2646

; <label>:2618                                    ; preds = %2613
  %2619 = and i32 %2610, 64
  %2620 = icmp ne i32 %2619, 0
  %2621 = select i1 %2620, float %2177, float 0.000000e+00
  %2622 = fsub fast float %2397, %2603
  %2623 = fsub fast float %2398, %2604
  %2624 = fsub fast float %2399, %2605
  %2625 = fmul fast float %2616, %2622
  %2626 = fmul fast float %2616, %2623
  %2627 = fmul fast float %2616, %2624
  %2628 = fadd fast float %2625, %2603
  %2629 = fadd fast float %2626, %2604
  %2630 = fadd fast float %2627, %2605
  %2631 = fsub fast float %2383, %1875
  %2632 = fmul fast float %2616, %2631
  %2633 = fadd fast float %2632, %1875
  %2634 = fsub fast float %2525, %2606
  %2635 = fsub fast float %2526, %2607
  %2636 = fsub fast float %2527, %2608
  %2637 = fmul fast float %2621, %2634
  %2638 = fmul fast float %2621, %2635
  %2639 = fmul fast float %2621, %2636
  %2640 = fadd fast float %2637, %2606
  %2641 = fadd fast float %2638, %2607
  %2642 = fadd fast float %2639, %2608
  %2643 = fsub fast float %2593, %1879
  %2644 = fmul fast float %2616, %2643
  %2645 = fadd fast float %2644, %1879
  br label %2691

; <label>:2646                                    ; preds = %2613
  %2647 = icmp eq i32 %2611, 1
  br i1 %2647, label %2648, label %2661

; <label>:2648                                    ; preds = %2646
  %2649 = fadd fast float %2397, -1.000000e+00
  %2650 = fadd fast float %2398, -1.000000e+00
  %2651 = fadd fast float %2399, -1.000000e+00
  %2652 = fmul fast float %2616, %2649
  %2653 = fmul fast float %2616, %2650
  %2654 = fmul fast float %2616, %2651
  %2655 = fadd fast float %2652, 1.000000e+00
  %2656 = fadd fast float %2653, 1.000000e+00
  %2657 = fadd fast float %2654, 1.000000e+00
  %2658 = fmul fast float %2655, %2603
  %2659 = fmul fast float %2656, %2604
  %2660 = fmul fast float %2657, %2605
  br label %2691

; <label>:2661                                    ; preds = %2646
  %2662 = icmp eq i32 %2611, 2
  br i1 %2662, label %2663, label %2691

; <label>:2663                                    ; preds = %2661
  %2664 = call float @dx.op.unary.f32(i32 24, float %2397)  ; Sqrt(value)
  %2665 = call float @dx.op.unary.f32(i32 24, float %2398)  ; Sqrt(value)
  %2666 = call float @dx.op.unary.f32(i32 24, float %2399)  ; Sqrt(value)
  %2667 = fadd fast float %2664, -5.000000e-01
  %2668 = fadd fast float %2665, -5.000000e-01
  %2669 = fadd fast float %2666, -5.000000e-01
  %2670 = fmul fast float %2667, %2616
  %2671 = fmul fast float %2668, %2616
  %2672 = fmul fast float %2669, %2616
  %2673 = fadd fast float %2670, 5.000000e-01
  %2674 = fadd fast float %2671, 5.000000e-01
  %2675 = fadd fast float %2672, 5.000000e-01
  %2676 = fmul fast float %2673, 2.000000e+00
  %2677 = fsub fast float 1.000000e+00, %2676
  %2678 = fmul fast float %2677, %2603
  %2679 = fadd fast float %2678, %2676
  %2680 = fmul fast float %2679, %2603
  %2681 = fmul fast float %2674, 2.000000e+00
  %2682 = fsub fast float 1.000000e+00, %2681
  %2683 = fmul fast float %2682, %2604
  %2684 = fadd fast float %2683, %2681
  %2685 = fmul fast float %2684, %2604
  %2686 = fmul fast float %2675, 2.000000e+00
  %2687 = fsub fast float 1.000000e+00, %2686
  %2688 = fmul fast float %2687, %2605
  %2689 = fadd fast float %2688, %2686
  %2690 = fmul fast float %2689, %2605
  br label %2691

; <label>:2691                                    ; preds = %2663, %2661, %2648, %2618, %2602
  %2692 = phi float [ %2603, %2602 ], [ %2680, %2663 ], [ %2603, %2661 ], [ %2658, %2648 ], [ %2628, %2618 ]
  %2693 = phi float [ %2604, %2602 ], [ %2685, %2663 ], [ %2604, %2661 ], [ %2659, %2648 ], [ %2629, %2618 ]
  %2694 = phi float [ %2605, %2602 ], [ %2690, %2663 ], [ %2605, %2661 ], [ %2660, %2648 ], [ %2630, %2618 ]
  %2695 = phi float [ %2606, %2602 ], [ %2606, %2663 ], [ %2606, %2661 ], [ %2606, %2648 ], [ %2640, %2618 ]
  %2696 = phi float [ %2607, %2602 ], [ %2607, %2663 ], [ %2607, %2661 ], [ %2607, %2648 ], [ %2641, %2618 ]
  %2697 = phi float [ %2608, %2602 ], [ %2608, %2663 ], [ %2608, %2661 ], [ %2608, %2648 ], [ %2642, %2618 ]
  %2698 = phi float [ %1875, %2602 ], [ %1875, %2663 ], [ %1875, %2661 ], [ %1875, %2648 ], [ %2633, %2618 ]
  %2699 = phi float [ %1879, %2602 ], [ %1879, %2663 ], [ %1879, %2661 ], [ %1879, %2648 ], [ %2645, %2618 ]
  %2700 = and i32 %2610, 12
  %2701 = icmp eq i32 %2700, 12
  br i1 %2701, label %2808, label %2702

; <label>:2702                                    ; preds = %2691
  %2703 = and i32 %2610, 2097184
  %2704 = icmp eq i32 %2703, 2097184
  %2705 = select i1 %2704, float %2177, float 0.000000e+00
  %2706 = and i32 %2610, 4194336
  %2707 = icmp eq i32 %2706, 4194336
  %2708 = select i1 %2707, float %2177, float 0.000000e+00
  %2709 = and i32 %2610, 8388640
  %2710 = icmp eq i32 %2709, 8388640
  %2711 = select i1 %2710, float %2177, float 0.000000e+00
  %2712 = and i32 %2610, 2048
  %2713 = icmp ne i32 %2712, 0
  %2714 = select i1 %2713, float %2177, float 0.000000e+00
  %2715 = and i32 %2610, 8192
  %2716 = icmp ne i32 %2715, 0
  %2717 = select i1 %2716, float %2177, float 0.000000e+00
  %2718 = icmp eq i32 %2700, 0
  br i1 %2718, label %2719, label %2744

; <label>:2719                                    ; preds = %2702
  %2720 = fsub fast float %2478, %1864
  %2721 = fsub fast float %2479, %1865
  %2722 = fmul fast float %2705, %2720
  %2723 = fmul fast float %2705, %2721
  %2724 = fadd fast float %2722, %1864
  %2725 = fadd fast float %2723, %1865
  %2726 = fsub fast float %2480, %1877
  %2727 = fmul fast float %2708, %2726
  %2728 = fadd fast float %2727, %1877
  %2729 = fsub fast float %2477, %1876
  %2730 = fmul fast float %2711, %2729
  %2731 = fadd fast float %2730, %1876
  %2732 = fsub fast float %2580, %1878
  %2733 = fmul fast float %2714, %2732
  %2734 = fadd fast float %2733, %1878
  %2735 = fsub fast float %2577, %1872
  %2736 = fsub fast float %2578, %1873
  %2737 = fsub fast float %2579, %1874
  %2738 = fmul fast float %2717, %2735
  %2739 = fmul fast float %2717, %2736
  %2740 = fmul fast float %2717, %2737
  %2741 = fadd fast float %2738, %1872
  %2742 = fadd fast float %2739, %1873
  %2743 = fadd fast float %2740, %1874
  br label %2808

; <label>:2744                                    ; preds = %2702
  %2745 = icmp eq i32 %2700, 4
  br i1 %2745, label %2746, label %2786

; <label>:2746                                    ; preds = %2744
  %2747 = fmul fast float %2705, %2478
  %2748 = fmul fast float %2705, %2479
  %2749 = fadd fast float %2747, %1864
  %2750 = fadd fast float %2748, %1865
  %2751 = call float @dx.op.binary.f32(i32 36, float %1877, float %2480)  ; FMin(a,b)
  %2752 = fsub fast float %2751, %1877
  %2753 = fmul fast float %2752, %2708
  %2754 = fadd fast float %2753, %1877
  %2755 = fadd fast float %2477, %1876
  %2756 = fmul fast float %2755, 0x3FF337FAE0000000
  %2757 = fmul fast float %1876, %1876
  %2758 = fmul fast float %2477, %2477
  %2759 = fadd fast float %2758, %2757
  %2760 = fmul fast float %2759, 0x3FE5152B00000000
  %2761 = fmul fast float %1876, 0xBFCC1F85E0000000
  %2762 = fmul fast float %2761, %2477
  %2763 = fadd fast float %2762, 0xBFE1363700000000
  %2764 = fadd fast float %2763, %2756
  %2765 = fsub fast float %2764, %2760
  %2766 = fmul fast float %2755, 0x3FBA6F0D00000000
  %2767 = fmul fast float %2759, 0x3FD0432880000000
  %2768 = fmul fast float %1876, 0xBFEF110800000000
  %2769 = fmul fast float %2768, %2477
  %2770 = fadd fast float %2769, 1.000000e+00
  %2771 = fsub fast float %2770, %2766
  %2772 = fadd fast float %2771, %2767
  %2773 = fdiv fast float %2765, %2772
  %2774 = call float @dx.op.unary.f32(i32 7, float %2773)  ; Saturate(value)
  %2775 = fsub fast float %2774, %1876
  %2776 = fmul fast float %2775, %2711
  %2777 = fadd fast float %2776, %1876
  %2778 = fmul fast float %2714, %2580
  %2779 = fadd fast float %2778, %1878
  %2780 = fmul fast float %2717, %2577
  %2781 = fmul fast float %2717, %2578
  %2782 = fmul fast float %2717, %2579
  %2783 = fadd fast float %2780, %1872
  %2784 = fadd fast float %2781, %1873
  %2785 = fadd fast float %2782, %1874
  br label %2808

; <label>:2786                                    ; preds = %2744
  %2787 = icmp eq i32 %2700, 8
  br i1 %2787, label %2788, label %2808

; <label>:2788                                    ; preds = %2786
  %2789 = fmul fast float %2705, %2478
  %2790 = fmul fast float %2705, %2479
  %2791 = fadd fast float %2789, %1864
  %2792 = fadd fast float %2790, %1865
  %2793 = call float @dx.op.binary.f32(i32 36, float %1877, float %2480)  ; FMin(a,b)
  %2794 = fsub fast float %2793, %1877
  %2795 = fmul fast float %2794, %2708
  %2796 = fadd fast float %2795, %1877
  %2797 = fsub fast float %2477, %1876
  %2798 = fmul fast float %2711, %2797
  %2799 = fadd fast float %2798, %1876
  %2800 = fmul fast float %2714, %2580
  %2801 = fadd fast float %2800, %1878
  %2802 = fmul fast float %2717, %2577
  %2803 = fmul fast float %2717, %2578
  %2804 = fmul fast float %2717, %2579
  %2805 = fadd fast float %2802, %1872
  %2806 = fadd fast float %2803, %1873
  %2807 = fadd fast float %2804, %1874
  br label %2808

; <label>:2808                                    ; preds = %2788, %2786, %2746, %2719, %2691, %2176, %1880, %1863
  %2809 = phi float [ %1864, %2691 ], [ %1864, %2176 ], [ %1864, %1863 ], [ %2791, %2788 ], [ %1864, %2786 ], [ %2749, %2746 ], [ %2724, %2719 ], [ %1864, %1880 ]
  %2810 = phi float [ %1865, %2691 ], [ %1865, %2176 ], [ %1865, %1863 ], [ %2792, %2788 ], [ %1865, %2786 ], [ %2750, %2746 ], [ %2725, %2719 ], [ %1865, %1880 ]
  %2811 = phi float [ %2692, %2691 ], [ %1866, %2176 ], [ %1866, %1863 ], [ %2692, %2788 ], [ %2692, %2786 ], [ %2692, %2746 ], [ %2692, %2719 ], [ %1866, %1880 ]
  %2812 = phi float [ %2693, %2691 ], [ %1867, %2176 ], [ %1867, %1863 ], [ %2693, %2788 ], [ %2693, %2786 ], [ %2693, %2746 ], [ %2693, %2719 ], [ %1867, %1880 ]
  %2813 = phi float [ %2694, %2691 ], [ %1868, %2176 ], [ %1868, %1863 ], [ %2694, %2788 ], [ %2694, %2786 ], [ %2694, %2746 ], [ %2694, %2719 ], [ %1868, %1880 ]
  %2814 = phi float [ %2695, %2691 ], [ %1869, %2176 ], [ %1869, %1863 ], [ %2695, %2788 ], [ %2695, %2786 ], [ %2695, %2746 ], [ %2695, %2719 ], [ %1869, %1880 ]
  %2815 = phi float [ %2696, %2691 ], [ %1870, %2176 ], [ %1870, %1863 ], [ %2696, %2788 ], [ %2696, %2786 ], [ %2696, %2746 ], [ %2696, %2719 ], [ %1870, %1880 ]
  %2816 = phi float [ %2697, %2691 ], [ %1871, %2176 ], [ %1871, %1863 ], [ %2697, %2788 ], [ %2697, %2786 ], [ %2697, %2746 ], [ %2697, %2719 ], [ %1871, %1880 ]
  %2817 = phi float [ %1872, %2691 ], [ %1872, %2176 ], [ %1872, %1863 ], [ %2805, %2788 ], [ %1872, %2786 ], [ %2783, %2746 ], [ %2741, %2719 ], [ %1872, %1880 ]
  %2818 = phi float [ %1873, %2691 ], [ %1873, %2176 ], [ %1873, %1863 ], [ %2806, %2788 ], [ %1873, %2786 ], [ %2784, %2746 ], [ %2742, %2719 ], [ %1873, %1880 ]
  %2819 = phi float [ %1874, %2691 ], [ %1874, %2176 ], [ %1874, %1863 ], [ %2807, %2788 ], [ %1874, %2786 ], [ %2785, %2746 ], [ %2743, %2719 ], [ %1874, %1880 ]
  %2820 = phi float [ %2698, %2691 ], [ %1875, %2176 ], [ %1875, %1863 ], [ %2698, %2788 ], [ %2698, %2786 ], [ %2698, %2746 ], [ %2698, %2719 ], [ %1875, %1880 ]
  %2821 = phi float [ %1876, %2691 ], [ %1876, %2176 ], [ %1876, %1863 ], [ %2799, %2788 ], [ %1876, %2786 ], [ %2777, %2746 ], [ %2731, %2719 ], [ %1876, %1880 ]
  %2822 = phi float [ %1877, %2691 ], [ %1877, %2176 ], [ %1877, %1863 ], [ %2796, %2788 ], [ %1877, %2786 ], [ %2754, %2746 ], [ %2728, %2719 ], [ %1877, %1880 ]
  %2823 = phi float [ %1878, %2691 ], [ %1878, %2176 ], [ %1878, %1863 ], [ %2801, %2788 ], [ %1878, %2786 ], [ %2779, %2746 ], [ %2734, %2719 ], [ %1878, %1880 ]
  %2824 = phi float [ %2699, %2691 ], [ %1879, %2176 ], [ %1879, %1863 ], [ %2699, %2788 ], [ %2699, %2786 ], [ %2699, %2746 ], [ %2699, %2719 ], [ %1879, %1880 ]
  br i1 %346, label %3753, label %2825

; <label>:2825                                    ; preds = %2808
  %2826 = icmp ult i32 %397, 4
  %2827 = add i32 %40, 72
  %2828 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %2829 = extractvalue %dx.types.ResRet.i32 %2828, 0
  %2830 = add i32 %40, 76
  %2831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2832 = extractvalue %dx.types.ResRet.i32 %2831, 0
  %2833 = or i32 %2832, %2829
  %2834 = icmp eq i32 %2833, 0
  br i1 %2834, label %3753, label %2835

; <label>:2835                                    ; preds = %2825
  %2836 = and i32 %2829, 262144
  %2837 = icmp ne i32 %2836, 0
  %2838 = select i1 %2837, float %43, float 1.000000e+00
  %2839 = select i1 %2837, float %44, float 0.000000e+00
  %2840 = select i1 %2837, float %45, float 0.000000e+00
  %2841 = select i1 %2837, float %46, float 1.000000e+00
  %2842 = select i1 %2837, float %47, float %56
  %2843 = select i1 %2837, float %48, float %57
  %2844 = add i32 %40, 332
  %2845 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %2846 = extractvalue %dx.types.ResRet.i32 %2845, 0
  %2847 = lshr i32 %2846, 16
  %2848 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2847)  ; LegacyF16ToF32(value)
  %2849 = fmul fast float %2848, 0x3F50624DE0000000
  %2850 = add i32 %40, 136
  %2851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %2852 = extractvalue %dx.types.ResRet.i32 %2851, 0
  %2853 = lshr i32 %2852, 16
  %2854 = and i32 %2853, 255
  %2855 = lshr i32 %2852, 24
  %2856 = add i32 %40, 340
  %2857 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2856, i32 undef)  ; BufferLoad(srv,index,wot)
  %2858 = extractvalue %dx.types.ResRet.i32 %2857, 0
  %2859 = and i32 %2858, 65535
  %2860 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2859)  ; LegacyF16ToF32(value)
  %2861 = lshr i32 %2858, 16
  %2862 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2861)  ; LegacyF16ToF32(value)
  %2863 = add i32 %40, 80
  %2864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2863, i32 undef)  ; BufferLoad(srv,index,wot)
  %2865 = extractvalue %dx.types.ResRet.i32 %2864, 0
  %2866 = lshr i32 %2865, 22
  %2867 = shl nuw nsw i32 %2866, 5
  %2868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2867)  ; LegacyF16ToF32(value)
  %2869 = shl i32 %2865, 4
  %2870 = and i32 %2869, 32752
  %2871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2870)  ; LegacyF16ToF32(value)
  %2872 = lshr i32 %2865, 7
  %2873 = and i32 %2872, 32752
  %2874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2873)  ; LegacyF16ToF32(value)
  %2875 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2876 = extractvalue %dx.types.CBufRet.f32 %2875, 3
  %2877 = fmul fast float %2876, 1.000000e+03
  %2878 = fmul fast float %336, %2877
  %2879 = call float @dx.op.unary.f32(i32 22, float %2878)  ; Frc(value)
  %2880 = fadd fast float %2879, %326
  %2881 = fmul fast float %337, %2877
  %2882 = call float @dx.op.unary.f32(i32 22, float %2881)  ; Frc(value)
  %2883 = fadd fast float %2882, %328
  %2884 = fmul fast float %2849, %2877
  %2885 = call float @dx.op.unary.f32(i32 22, float %2884)  ; Frc(value)
  %2886 = fmul fast float %2885, 0x401921FB60000000
  %2887 = fadd fast float %2886, %2868
  %2888 = call float @dx.op.unary.f32(i32 13, float %2887)  ; Sin(value)
  %2889 = call float @dx.op.unary.f32(i32 12, float %2887)  ; Cos(value)
  %2890 = fsub fast float -0.000000e+00, %2888
  %2891 = fadd fast float %2842, -5.000000e-01
  %2892 = fadd fast float %2843, -5.000000e-01
  %2893 = fmul fast float %2860, %2891
  %2894 = fmul fast float %2862, %2892
  %2895 = fadd fast float %2893, 5.000000e-01
  %2896 = fadd fast float %2894, 5.000000e-01
  %2897 = fmul fast float %2871, %2895
  %2898 = fmul fast float %2874, %2896
  %2899 = fmul fast float %2889, %2897
  %2900 = call float @dx.op.tertiary.f32(i32 46, float %2890, float %2898, float %2899)  ; FMad(a,b,c)
  %2901 = fmul fast float %2888, %2897
  %2902 = call float @dx.op.tertiary.f32(i32 46, float %2889, float %2898, float %2901)  ; FMad(a,b,c)
  %2903 = fadd fast float %2880, %2900
  %2904 = fadd fast float %2883, %2902
  %2905 = icmp ugt i32 %2854, 1
  %2906 = icmp ugt i32 %2852, 33554431
  %2907 = or i1 %2906, %2905
  br i1 %2907, label %2908, label %2933

; <label>:2908                                    ; preds = %2835
  %2909 = add i32 %40, 276
  %2910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2909, i32 undef)  ; BufferLoad(srv,index,wot)
  %2911 = extractvalue %dx.types.ResRet.i32 %2910, 0
  %2912 = lshr i32 %2911, 16
  %2913 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2912)  ; LegacyF16ToF32(value)
  %2914 = fmul fast float %2876, %2913
  %2915 = call float @dx.op.unary.f32(i32 22, float %2914)  ; Frc(value)
  %2916 = mul nuw nsw i32 %2854, %2855
  %2917 = uitofp i32 %2916 to float
  %2918 = fmul fast float %2915, %2917
  %2919 = call float @dx.op.unary.f32(i32 27, float %2918)  ; Round_ni(value)
  %2920 = fptoui float %2919 to i32
  %2921 = urem i32 %2920, %2854
  %2922 = udiv i32 %2920, %2855
  %2923 = call float @dx.op.unary.f32(i32 22, float %2903)  ; Frc(value)
  %2924 = call float @dx.op.unary.f32(i32 22, float %2904)  ; Frc(value)
  %2925 = uitofp i32 %2921 to float
  %2926 = uitofp i32 %2922 to float
  %2927 = fadd fast float %2923, %2925
  %2928 = fadd fast float %2924, %2926
  %2929 = uitofp i32 %2854 to float
  %2930 = uitofp i32 %2855 to float
  %2931 = fdiv fast float %2927, %2929
  %2932 = fdiv fast float %2928, %2930
  br label %2933

; <label>:2933                                    ; preds = %2908, %2835
  %2934 = phi float [ %2931, %2908 ], [ %2903, %2835 ]
  %2935 = phi float [ %2932, %2908 ], [ %2904, %2835 ]
  %2936 = and i32 %2829, 16777216
  %2937 = icmp eq i32 %2936, 0
  br i1 %2937, label %3047, label %2938

; <label>:2938                                    ; preds = %2933
  %2939 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %2940 = extractvalue %dx.types.CBufRet.f32 %2939, 0
  %2941 = extractvalue %dx.types.CBufRet.f32 %2939, 1
  %2942 = extractvalue %dx.types.CBufRet.f32 %2939, 2
  %2943 = fadd fast float %2940, %127
  %2944 = fadd fast float %2941, %128
  %2945 = fadd fast float %2942, %129
  %2946 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2947 = extractvalue %dx.types.CBufRet.f32 %2946, 0
  %2948 = call float @dx.op.unary.f32(i32 7, float %2947)  ; Saturate(value)
  %2949 = icmp eq i32 %41, 65535
  br i1 %2949, label %3044, label %2950

; <label>:2950                                    ; preds = %2938
  %2951 = lshr i32 %41, 1
  %2952 = shl i32 %2951, 2
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %2952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = and i32 %41, 1
  %2956 = icmp ne i32 %2955, 0
  %2957 = lshr i32 %2954, 16
  %2958 = and i32 %2954, 65535
  %2959 = select i1 %2956, i32 %2957, i32 %2958
  %2960 = icmp eq i32 %2959, 65535
  br i1 %2960, label %3040, label %2961

; <label>:2961                                    ; preds = %2950
  %2962 = mul nuw nsw i32 %2959, 40
  %2963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2962, i32 undef)  ; BufferLoad(srv,index,wot)
  %2964 = extractvalue %dx.types.ResRet.f32 %2963, 0
  %2965 = extractvalue %dx.types.ResRet.f32 %2963, 1
  %2966 = extractvalue %dx.types.ResRet.f32 %2963, 2
  %2967 = add nuw nsw i32 %2962, 12
  %2968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2967, i32 undef)  ; BufferLoad(srv,index,wot)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = extractvalue %dx.types.ResRet.f32 %2968, 1
  %2971 = extractvalue %dx.types.ResRet.f32 %2968, 2
  %2972 = add nuw nsw i32 %2962, 24
  %2973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2972, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.f32 %2973, 0
  %2975 = extractvalue %dx.types.ResRet.f32 %2973, 1
  %2976 = extractvalue %dx.types.ResRet.f32 %2973, 2
  %2977 = add nuw nsw i32 %2962, 36
  %2978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %21, i32 %2977, i32 undef)  ; BufferLoad(srv,index,wot)
  %2979 = extractvalue %dx.types.ResRet.f32 %2978, 0
  %2980 = fsub fast float %2943, %2964
  %2981 = fsub fast float %2944, %2965
  %2982 = fsub fast float %2945, %2966
  %2983 = fmul fast float %2979, %2980
  %2984 = fmul fast float %2979, %2981
  %2985 = fmul fast float %2979, %2982
  %2986 = call float @dx.op.unary.f32(i32 27, float %2983)  ; Round_ni(value)
  %2987 = call float @dx.op.unary.f32(i32 27, float %2984)  ; Round_ni(value)
  %2988 = call float @dx.op.unary.f32(i32 27, float %2985)  ; Round_ni(value)
  %2989 = fadd fast float %2986, 5.000000e-01
  %2990 = fadd fast float %2987, 5.000000e-01
  %2991 = fadd fast float %2988, 5.000000e-01
  %2992 = fmul fast float %2989, %2969
  %2993 = fmul fast float %2990, %2970
  %2994 = fmul fast float %2991, %2971
  %2995 = shl i32 %41, 2
  %2996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %2995, i32 undef)  ; BufferLoad(srv,index,wot)
  %2997 = extractvalue %dx.types.ResRet.i32 %2996, 0
  %2998 = add i32 %2997, 0
  %2999 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2998, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3000 = call float @dx.op.unary.f32(i32 22, float %2992)  ; Frc(value)
  %3001 = call float @dx.op.unary.f32(i32 22, float %2993)  ; Frc(value)
  %3002 = call float @dx.op.unary.f32(i32 22, float %2994)  ; Frc(value)
  %3003 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2999, %dx.types.Handle %35, float %3000, float %3001, float %3002, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3004 = extractvalue %dx.types.ResRet.f32 %3003, 0
  %3005 = extractvalue %dx.types.ResRet.f32 %3003, 1
  %3006 = extractvalue %dx.types.ResRet.f32 %3003, 2
  %3007 = fmul fast float %3004, 1.023000e+03
  %3008 = fmul fast float %3005, 1.023000e+03
  %3009 = fmul fast float %3006, 1.023000e+03
  %3010 = fadd fast float %3007, 5.000000e-01
  %3011 = fadd fast float %3008, 5.000000e-01
  %3012 = fadd fast float %3009, 5.000000e-01
  %3013 = call float @dx.op.unary.f32(i32 27, float %3010)  ; Round_ni(value)
  %3014 = call float @dx.op.unary.f32(i32 27, float %3011)  ; Round_ni(value)
  %3015 = call float @dx.op.unary.f32(i32 27, float %3012)  ; Round_ni(value)
  %3016 = fsub fast float %2983, %2986
  %3017 = fsub fast float %2984, %2987
  %3018 = fsub fast float %2985, %2988
  %3019 = fmul fast float %3016, 7.500000e-01
  %3020 = fmul fast float %3017, 7.500000e-01
  %3021 = fmul fast float %3018, 7.500000e-01
  %3022 = fadd fast float %2986, 1.250000e-01
  %3023 = fadd fast float %3022, %3019
  %3024 = fadd fast float %3023, %3013
  %3025 = fadd fast float %2987, 1.250000e-01
  %3026 = fadd fast float %3025, %3020
  %3027 = fadd fast float %3026, %3014
  %3028 = fadd fast float %2988, 1.250000e-01
  %3029 = fadd fast float %3028, %3021
  %3030 = fadd fast float %3029, %3015
  %3031 = fmul fast float %3024, %2974
  %3032 = fmul fast float %3027, %2975
  %3033 = fmul fast float %3030, %2976
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %2995, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = add i32 %3035, 0
  %3037 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3036, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3038 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3037, %dx.types.Handle %33, float %3031, float %3032, float %3033, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3039 = extractvalue %dx.types.ResRet.f32 %3038, 0
  br label %3040

; <label>:3040                                    ; preds = %2961, %2950
  %3041 = phi float [ %3039, %2961 ], [ -1.000000e+00, %2950 ]
  %3042 = fadd fast float %3041, %2948
  %3043 = call float @dx.op.unary.f32(i32 7, float %3042)  ; Saturate(value)
  br label %3044

; <label>:3044                                    ; preds = %3040, %2938
  %3045 = phi float [ %3043, %3040 ], [ %2948, %2938 ]
  %3046 = fmul fast float %3045, %392
  br label %3047

; <label>:3047                                    ; preds = %3044, %2933
  %3048 = phi float [ %3046, %3044 ], [ %392, %2933 ]
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = and i32 %3050, 256
  %3052 = icmp eq i32 %3051, 0
  br i1 %3052, label %3099, label %3053

; <label>:3053                                    ; preds = %3047
  %3054 = add i32 %40, 452
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3054, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = add i32 %3056, 0
  %3058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3058, %dx.types.Handle %65, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 0
  %3061 = add i32 %40, 148
  %3062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3061, i32 undef)  ; BufferLoad(srv,index,wot)
  %3063 = extractvalue %dx.types.ResRet.i32 %3062, 0
  %3064 = shl i32 %3063, 4
  %3065 = and i32 %3064, 32752
  %3066 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3065)  ; LegacyF16ToF32(value)
  %3067 = lshr i32 %3063, 7
  %3068 = and i32 %3067, 32752
  %3069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3068)  ; LegacyF16ToF32(value)
  %3070 = fsub fast float 1.000000e+00, %3048
  %3071 = call float @dx.op.binary.f32(i32 35, float %3070, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3072 = bitcast float %3048 to i32
  %3073 = sitofp i32 %3072 to float
  %3074 = fadd fast float %3073, 0xC1CFBF8940000000
  %3075 = fmul fast float %3069, %3074
  %3076 = fadd fast float %3075, 0x41CFBF8940000000
  %3077 = fptosi float %3076 to i32
  %3078 = bitcast i32 %3077 to float
  %3079 = bitcast float %3071 to i32
  %3080 = sitofp i32 %3079 to float
  %3081 = fadd fast float %3080, 0xC1CFBF8940000000
  %3082 = fmul fast float %3081, %3069
  %3083 = fadd fast float %3082, 0x41CFBF8940000000
  %3084 = fptosi float %3083 to i32
  %3085 = bitcast i32 %3084 to float
  %3086 = fmul fast float %3078, %3066
  %3087 = fmul fast float %3085, %3066
  %3088 = fsub fast float %3071, %3086
  %3089 = fadd fast float %3087, %3071
  %3090 = call float @dx.op.unary.f32(i32 7, float %3088)  ; Saturate(value)
  %3091 = call float @dx.op.unary.f32(i32 7, float %3089)  ; Saturate(value)
  %3092 = fsub fast float %3060, %3090
  %3093 = fsub fast float %3091, %3090
  %3094 = bitcast float %3093 to i32
  %3095 = sub nsw i32 2129859010, %3094
  %3096 = bitcast i32 %3095 to float
  %3097 = fmul fast float %3096, %3092
  %3098 = call float @dx.op.unary.f32(i32 7, float %3097)  ; Saturate(value)
  br label %3099

; <label>:3099                                    ; preds = %3053, %3047
  %3100 = phi float [ %3098, %3053 ], [ %3048, %3047 ]
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = and i32 %3102, 128
  %3104 = icmp eq i32 %3103, 0
  br i1 %3104, label %3121, label %3105

; <label>:3105                                    ; preds = %3099
  %3106 = add i32 %40, 436
  %3107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3106, i32 undef)  ; BufferLoad(srv,index,wot)
  %3108 = extractvalue %dx.types.ResRet.i32 %3107, 0
  %3109 = add i32 %3108, 0
  %3110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3109, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3111 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3110, %dx.types.Handle %65, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3112 = extractvalue %dx.types.ResRet.f32 %3111, 0
  %3113 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3114 = extractvalue %dx.types.ResRet.i32 %3113, 0
  %3115 = and i32 %3114, 524288
  %3116 = icmp ne i32 %3115, 0
  %3117 = fcmp fast ogt float %3112, 0x3FE0101020000000
  %3118 = select i1 %3117, float 1.000000e+00, float 0.000000e+00
  %3119 = select i1 %3116, float %3118, float %3112
  %3120 = fmul fast float %3119, %3100
  br label %3121

; <label>:3121                                    ; preds = %3105, %3099
  %3122 = phi float [ %3120, %3105 ], [ %3100, %3099 ]
  %3123 = fcmp fast ult float %3122, 0x3F70101020000000
  br i1 %3123, label %3753, label %3124

; <label>:3124                                    ; preds = %3121
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 16
  %3128 = icmp eq i32 %3127, 0
  br i1 %3128, label %3327, label %3129

; <label>:3129                                    ; preds = %3124
  %3130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2850, i32 undef)  ; BufferLoad(srv,index,wot)
  %3131 = extractvalue %dx.types.ResRet.i32 %3130, 0
  %3132 = add i32 %40, 388
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3132, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = add i32 %3134, 0
  %3136 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3135, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3137 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3136, %dx.types.Handle %64, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3138 = extractvalue %dx.types.ResRet.f32 %3137, 0
  %3139 = extractvalue %dx.types.ResRet.f32 %3137, 1
  %3140 = extractvalue %dx.types.ResRet.f32 %3137, 2
  %3141 = extractvalue %dx.types.ResRet.f32 %3137, 3
  %3142 = and i32 %3131, 255
  %3143 = uitofp i32 %3142 to float
  %3144 = lshr i32 %3131, 8
  %3145 = and i32 %3144, 255
  %3146 = uitofp i32 %3145 to float
  %3147 = fmul fast float %3141, %3143
  %3148 = fadd fast float %3147, %3146
  %3149 = fmul fast float %3148, 0x3F70101000000000
  %3150 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3151 = extractvalue %dx.types.ResRet.i32 %3150, 0
  %3152 = and i32 %3151, 512
  %3153 = icmp eq i32 %3152, 0
  br i1 %3153, label %3162, label %3154

; <label>:3154                                    ; preds = %3129
  %3155 = add i32 %40, 468
  %3156 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3155, i32 undef)  ; BufferLoad(srv,index,wot)
  %3157 = extractvalue %dx.types.ResRet.i32 %3156, 0
  %3158 = add i32 %3157, 0
  %3159 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3158, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3160 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3159, %dx.types.Handle %65, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3161 = extractvalue %dx.types.ResRet.f32 %3160, 0
  br label %3162

; <label>:3162                                    ; preds = %3154, %3129
  %3163 = phi float [ %3161, %3154 ], [ 1.000000e+00, %3129 ]
  %3164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3165 = extractvalue %dx.types.ResRet.i32 %3164, 0
  %3166 = and i32 %3165, 33554432
  %3167 = icmp eq i32 %3166, 0
  br i1 %3167, label %3274, label %3168

; <label>:3168                                    ; preds = %3162
  %3169 = add i32 %40, 272
  %3170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3169, i32 undef)  ; BufferLoad(srv,index,wot)
  %3171 = extractvalue %dx.types.ResRet.i32 %3170, 0
  %3172 = and i32 %3171, 65535
  %3173 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3172)  ; LegacyF16ToF32(value)
  %3174 = lshr i32 %3171, 16
  %3175 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3174)  ; LegacyF16ToF32(value)
  %3176 = add i32 %40, 276
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3176, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = and i32 %3178, 65535
  %3180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3179)  ; LegacyF16ToF32(value)
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = lshr i32 %3182, 24
  %3184 = uitofp i32 %3183 to float
  %3185 = fmul fast float %3184, 0x3F70101020000000
  %3186 = and i32 %3182, 255
  %3187 = uitofp i32 %3186 to float
  %3188 = fmul fast float %3187, 0x3F70101020000000
  %3189 = lshr i32 %3182, 8
  %3190 = and i32 %3189, 255
  %3191 = uitofp i32 %3190 to float
  %3192 = fmul fast float %3191, 0x3F70101020000000
  %3193 = lshr i32 %3182, 16
  %3194 = and i32 %3193, 255
  %3195 = uitofp i32 %3194 to float
  %3196 = fmul fast float %3195, 0x3F70101020000000
  %3197 = add i32 %40, 268
  %3198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3197, i32 undef)  ; BufferLoad(srv,index,wot)
  %3199 = extractvalue %dx.types.ResRet.i32 %3198, 0
  %3200 = lshr i32 %3199, 24
  %3201 = uitofp i32 %3200 to float
  %3202 = fmul fast float %3201, 0x3F70101020000000
  %3203 = and i32 %3199, 255
  %3204 = uitofp i32 %3203 to float
  %3205 = fmul fast float %3204, 0x3F70101020000000
  %3206 = lshr i32 %3199, 8
  %3207 = and i32 %3206, 255
  %3208 = uitofp i32 %3207 to float
  %3209 = fmul fast float %3208, 0x3F70101020000000
  %3210 = lshr i32 %3199, 16
  %3211 = and i32 %3210, 255
  %3212 = uitofp i32 %3211 to float
  %3213 = fmul fast float %3212, 0x3F70101020000000
  %3214 = bitcast float %3138 to i32
  %3215 = ashr i32 %3214, 1
  %3216 = sub nsw i32 1597463174, %3215
  %3217 = bitcast i32 %3216 to float
  %3218 = fmul fast float %3138, 5.000000e-01
  %3219 = fmul fast float %3217, %3217
  %3220 = fmul fast float %3219, %3218
  %3221 = fsub fast float 1.500000e+00, %3220
  %3222 = fmul fast float %3217, %3138
  %3223 = fmul fast float %3222, %3221
  %3224 = bitcast float %3139 to i32
  %3225 = ashr i32 %3224, 1
  %3226 = sub nsw i32 1597463174, %3225
  %3227 = bitcast i32 %3226 to float
  %3228 = fmul fast float %3139, 5.000000e-01
  %3229 = fmul fast float %3227, %3227
  %3230 = fmul fast float %3229, %3228
  %3231 = fsub fast float 1.500000e+00, %3230
  %3232 = fmul fast float %3227, %3139
  %3233 = fmul fast float %3232, %3231
  %3234 = bitcast float %3140 to i32
  %3235 = ashr i32 %3234, 1
  %3236 = sub nsw i32 1597463174, %3235
  %3237 = bitcast i32 %3236 to float
  %3238 = fmul fast float %3140, 5.000000e-01
  %3239 = fmul fast float %3237, %3237
  %3240 = fmul fast float %3239, %3238
  %3241 = fsub fast float 1.500000e+00, %3240
  %3242 = fmul fast float %3237, %3140
  %3243 = fmul fast float %3242, %3241
  %3244 = fsub fast float %3223, %3205
  %3245 = fsub fast float %3233, %3209
  %3246 = fsub fast float %3243, %3213
  %3247 = fmul fast float %3244, %3173
  %3248 = fmul fast float %3245, %3175
  %3249 = fmul fast float %3246, %3180
  %3250 = fadd fast float %3247, %3188
  %3251 = fadd fast float %3248, %3192
  %3252 = fadd fast float %3249, %3196
  %3253 = call float @dx.op.unary.f32(i32 7, float %3250)  ; Saturate(value)
  %3254 = call float @dx.op.unary.f32(i32 7, float %3251)  ; Saturate(value)
  %3255 = call float @dx.op.unary.f32(i32 7, float %3252)  ; Saturate(value)
  %3256 = fmul fast float %3253, %3253
  %3257 = fmul fast float %3254, %3254
  %3258 = fmul fast float %3255, %3255
  %3259 = fsub fast float %3256, %3138
  %3260 = fsub fast float %3257, %3139
  %3261 = fsub fast float %3258, %3140
  %3262 = fmul fast float %3259, %3163
  %3263 = fmul fast float %3260, %3163
  %3264 = fmul fast float %3261, %3163
  %3265 = fadd fast float %3262, %3138
  %3266 = fadd fast float %3263, %3139
  %3267 = fadd fast float %3264, %3140
  %3268 = fadd fast float %3185, %3149
  %3269 = fsub fast float %3268, %3202
  %3270 = call float @dx.op.unary.f32(i32 7, float %3269)  ; Saturate(value)
  %3271 = fsub fast float %3270, %3149
  %3272 = fmul fast float %3271, %3163
  %3273 = fadd fast float %3272, %3149
  br label %3327

; <label>:3274                                    ; preds = %3162
  %3275 = and i32 %3165, 134217728
  %3276 = icmp eq i32 %3275, 0
  br i1 %3276, label %3311, label %3277

; <label>:3277                                    ; preds = %3274
  %3278 = call float @dx.op.unary.f32(i32 24, float %313)  ; Sqrt(value)
  %3279 = call float @dx.op.unary.f32(i32 24, float %317)  ; Sqrt(value)
  %3280 = call float @dx.op.unary.f32(i32 24, float %321)  ; Sqrt(value)
  %3281 = fadd fast float %3278, -5.000000e-01
  %3282 = fadd fast float %3279, -5.000000e-01
  %3283 = fadd fast float %3280, -5.000000e-01
  %3284 = fmul fast float %3281, %3163
  %3285 = fmul fast float %3282, %3163
  %3286 = fmul fast float %3283, %3163
  %3287 = fadd fast float %3284, 5.000000e-01
  %3288 = fadd fast float %3285, 5.000000e-01
  %3289 = fadd fast float %3286, 5.000000e-01
  %3290 = call float @dx.op.unary.f32(i32 24, float %3138)  ; Sqrt(value)
  %3291 = call float @dx.op.unary.f32(i32 24, float %3139)  ; Sqrt(value)
  %3292 = call float @dx.op.unary.f32(i32 24, float %3140)  ; Sqrt(value)
  %3293 = fmul fast float %3287, 2.000000e+00
  %3294 = fsub fast float 1.000000e+00, %3293
  %3295 = fmul fast float %3294, %3290
  %3296 = fadd fast float %3295, %3293
  %3297 = fmul fast float %3296, %3290
  %3298 = fmul fast float %3288, 2.000000e+00
  %3299 = fsub fast float 1.000000e+00, %3298
  %3300 = fmul fast float %3299, %3291
  %3301 = fadd fast float %3300, %3298
  %3302 = fmul fast float %3301, %3291
  %3303 = fmul fast float %3289, 2.000000e+00
  %3304 = fsub fast float 1.000000e+00, %3303
  %3305 = fmul fast float %3304, %3292
  %3306 = fadd fast float %3305, %3303
  %3307 = fmul fast float %3306, %3292
  %3308 = fmul fast float %3297, %3297
  %3309 = fmul fast float %3302, %3302
  %3310 = fmul fast float %3307, %3307
  br label %3327

; <label>:3311                                    ; preds = %3274
  %3312 = fmul fast float %313, %313
  %3313 = fmul fast float %317, %317
  %3314 = fmul fast float %321, %321
  %3315 = fadd fast float %3312, -1.000000e+00
  %3316 = fadd fast float %3313, -1.000000e+00
  %3317 = fadd fast float %3314, -1.000000e+00
  %3318 = fmul fast float %3163, %3315
  %3319 = fmul fast float %3163, %3316
  %3320 = fmul fast float %3163, %3317
  %3321 = fadd fast float %3318, 1.000000e+00
  %3322 = fadd fast float %3319, 1.000000e+00
  %3323 = fadd fast float %3320, 1.000000e+00
  %3324 = fmul fast float %3321, %3138
  %3325 = fmul fast float %3322, %3139
  %3326 = fmul fast float %3323, %3140
  br label %3327

; <label>:3327                                    ; preds = %3311, %3277, %3168, %3124
  %3328 = phi float [ %3273, %3168 ], [ %3149, %3277 ], [ %3149, %3311 ], [ 0x3FA23C0BE0000000, %3124 ]
  %3329 = phi float [ %3265, %3168 ], [ %3308, %3277 ], [ %3324, %3311 ], [ 1.000000e+00, %3124 ]
  %3330 = phi float [ %3266, %3168 ], [ %3309, %3277 ], [ %3325, %3311 ], [ 1.000000e+00, %3124 ]
  %3331 = phi float [ %3267, %3168 ], [ %3310, %3277 ], [ %3326, %3311 ], [ 1.000000e+00, %3124 ]
  %3332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3333 = extractvalue %dx.types.CBufRet.i32 %3332, 1
  %3334 = and i32 %3333, 1
  %3335 = icmp ne i32 %3334, 0
  %3336 = add i32 %40, 356
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = and i32 %3338, 32
  %3340 = icmp ne i32 %3339, 0
  %3341 = and i1 %3335, %3340
  %3342 = select i1 %3341, float 1.000000e+00, float %3329
  %3343 = select i1 %3341, float 0x3FD3333340000000, float %3330
  %3344 = select i1 %3341, float 0x3FD3333340000000, float %3331
  %3345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.i32 %3345, 0
  %3347 = and i32 %3346, 32
  %3348 = icmp eq i32 %3347, 0
  br i1 %3348, label %3421, label %3349

; <label>:3349                                    ; preds = %3327
  %3350 = add i32 %40, 140
  %3351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3350, i32 undef)  ; BufferLoad(srv,index,wot)
  %3352 = extractvalue %dx.types.ResRet.i32 %3351, 0
  %3353 = add i32 %40, 404
  %3354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3353, i32 undef)  ; BufferLoad(srv,index,wot)
  %3355 = extractvalue %dx.types.ResRet.i32 %3354, 0
  %3356 = add i32 %3355, 0
  %3357 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3356, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3358 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3357, %dx.types.Handle %64, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3359 = extractvalue %dx.types.ResRet.f32 %3358, 0
  %3360 = extractvalue %dx.types.ResRet.f32 %3358, 1
  %3361 = extractvalue %dx.types.ResRet.f32 %3358, 2
  %3362 = extractvalue %dx.types.ResRet.f32 %3358, 3
  %3363 = and i32 %3352, 255
  %3364 = uitofp i32 %3363 to float
  %3365 = lshr i32 %3352, 8
  %3366 = and i32 %3365, 255
  %3367 = uitofp i32 %3366 to float
  %3368 = lshr i32 %3352, 16
  %3369 = and i32 %3368, 255
  %3370 = uitofp i32 %3369 to float
  %3371 = fmul fast float %3370, 0x3F70101000000000
  %3372 = fmul fast float %3359, %3364
  %3373 = fadd fast float %3372, %3367
  %3374 = fmul fast float %3373, 0x3F70101000000000
  %3375 = fadd fast float %3360, -5.000000e-01
  %3376 = fadd fast float %3362, -5.000000e-01
  %3377 = fmul fast float %3375, %3371
  %3378 = fmul fast float %3376, %3371
  %3379 = fadd fast float %3377, 5.000000e-01
  %3380 = fadd fast float %3378, 5.000000e-01
  %3381 = fmul fast float %3379, 2.000000e+00
  %3382 = fadd fast float %3381, -1.000000e+00
  %3383 = fmul fast float %3380, 2.000000e+00
  %3384 = fadd fast float %3383, -1.000000e+00
  %3385 = fadd fast float %3382, %3384
  %3386 = fmul fast float %3385, 5.000000e-01
  %3387 = fsub fast float %3382, %3384
  %3388 = fmul fast float %3387, 5.000000e-01
  %3389 = call float @dx.op.unary.f32(i32 6, float %3386)  ; FAbs(value)
  %3390 = fsub fast float 1.000000e+00, %3389
  %3391 = call float @dx.op.unary.f32(i32 6, float %3388)  ; FAbs(value)
  %3392 = fsub fast float %3390, %3391
  %3393 = call float @dx.op.dot3.f32(i32 55, float %3386, float %3388, float %3392, float %3386, float %3388, float %3392)  ; Dot3(ax,ay,az,bx,by,bz)
  %3394 = call float @dx.op.unary.f32(i32 25, float %3393)  ; Rsqrt(value)
  %3395 = fmul fast float %3386, %3394
  %3396 = fmul fast float %3388, %3394
  %3397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3398 = extractvalue %dx.types.ResRet.i32 %3397, 0
  %3399 = and i32 %3398, 67108864
  %3400 = icmp eq i32 %3399, 0
  br i1 %3400, label %3417, label %3401

; <label>:3401                                    ; preds = %3349
  %3402 = add i32 %40, 328
  %3403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3402, i32 undef)  ; BufferLoad(srv,index,wot)
  %3404 = extractvalue %dx.types.ResRet.i32 %3403, 0
  %3405 = and i32 %3404, 65535
  %3406 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3405)  ; LegacyF16ToF32(value)
  %3407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2844, i32 undef)  ; BufferLoad(srv,index,wot)
  %3408 = extractvalue %dx.types.ResRet.i32 %3407, 0
  %3409 = and i32 %3408, 65535
  %3410 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3409)  ; LegacyF16ToF32(value)
  %3411 = lshr i32 %3404, 16
  %3412 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3411)  ; LegacyF16ToF32(value)
  %3413 = fsub fast float %3374, %3412
  %3414 = fmul fast float %3413, %3406
  %3415 = fadd fast float %3414, %3410
  %3416 = call float @dx.op.unary.f32(i32 7, float %3415)  ; Saturate(value)
  br label %3417

; <label>:3417                                    ; preds = %3401, %3349
  %3418 = phi float [ %3416, %3401 ], [ %3374, %3349 ]
  %3419 = call float @dx.op.dot2.f32(i32 54, float %3395, float %3396, float %2838, float %2839)  ; Dot2(ax,ay,bx,by)
  %3420 = call float @dx.op.dot2.f32(i32 54, float %3395, float %3396, float %2840, float %2841)  ; Dot2(ax,ay,bx,by)
  br label %3421

; <label>:3421                                    ; preds = %3417, %3327
  %3422 = phi float [ %3418, %3417 ], [ 0x3FD6666660000000, %3327 ]
  %3423 = phi float [ %3419, %3417 ], [ 0.000000e+00, %3327 ]
  %3424 = phi float [ %3420, %3417 ], [ 0.000000e+00, %3327 ]
  %3425 = phi float [ %3361, %3417 ], [ 1.000000e+00, %3327 ]
  %3426 = add i32 %40, 208
  %3427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3426, i32 undef)  ; BufferLoad(srv,index,wot)
  %3428 = extractvalue %dx.types.ResRet.i32 %3427, 0
  %3429 = lshr i32 %3428, 22
  %3430 = shl nuw nsw i32 %3429, 5
  %3431 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3430)  ; LegacyF16ToF32(value)
  %3432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3433 = extractvalue %dx.types.ResRet.i32 %3432, 0
  %3434 = and i32 %3433, 64
  %3435 = icmp eq i32 %3434, 0
  br i1 %3435, label %3469, label %3436

; <label>:3436                                    ; preds = %3421
  %3437 = add i32 %40, 420
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = add i32 %3439, 0
  %3441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3440, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3442 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3443 = extractvalue %dx.types.ResRet.i32 %3442, 0
  %3444 = and i32 %3443, 131072
  %3445 = icmp eq i32 %3444, 0
  %3446 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3441, %dx.types.Handle %64, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3447 = extractvalue %dx.types.ResRet.f32 %3446, 0
  %3448 = extractvalue %dx.types.ResRet.f32 %3446, 1
  %3449 = extractvalue %dx.types.ResRet.f32 %3446, 2
  %3450 = fmul fast float %3447, %301
  %3451 = fmul fast float %3448, %304
  %3452 = fmul fast float %3449, %307
  br i1 %3445, label %3459, label %3453

; <label>:3453                                    ; preds = %3436
  %3454 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3455 = extractvalue %dx.types.CBufRet.f32 %3454, 0
  %3456 = fmul fast float %3455, %3450
  %3457 = fmul fast float %3455, %3451
  %3458 = fmul fast float %3455, %3452
  br label %3459

; <label>:3459                                    ; preds = %3453, %3436
  %3460 = phi float [ %3456, %3453 ], [ %3450, %3436 ]
  %3461 = phi float [ %3457, %3453 ], [ %3451, %3436 ]
  %3462 = phi float [ %3458, %3453 ], [ %3452, %3436 ]
  %3463 = fmul fast float %3460, %3431
  %3464 = select i1 %169, float %3463, float %3460
  %3465 = call float @dx.op.dot3.f32(i32 55, float %3464, float %3461, float %3462, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3466 = select i1 %169, float 0.000000e+00, float %3460
  %3467 = select i1 %169, float %3465, float %3461
  %3468 = select i1 %169, float 0.000000e+00, float %3462
  br label %3469

; <label>:3469                                    ; preds = %3459, %3421
  %3470 = phi float [ %3466, %3459 ], [ 0.000000e+00, %3421 ]
  %3471 = phi float [ %3467, %3459 ], [ 0.000000e+00, %3421 ]
  %3472 = phi float [ %3468, %3459 ], [ 0.000000e+00, %3421 ]
  %3473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3474 = extractvalue %dx.types.ResRet.i32 %3473, 0
  %3475 = and i32 %3474, 10240
  %3476 = icmp eq i32 %3475, 0
  br i1 %3476, label %3521, label %3477

; <label>:3477                                    ; preds = %3469
  %3478 = add i32 %40, 484
  %3479 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3478, i32 undef)  ; BufferLoad(srv,index,wot)
  %3480 = extractvalue %dx.types.ResRet.i32 %3479, 0
  %3481 = add i32 %3480, 0
  %3482 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3481, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3483 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3482, %dx.types.Handle %65, float %2934, float %2935, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3484 = extractvalue %dx.types.ResRet.f32 %3483, 1
  %3485 = extractvalue %dx.types.ResRet.f32 %3483, 3
  %3486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3487 = extractvalue %dx.types.ResRet.i32 %3486, 0
  %3488 = and i32 %3487, 1048576
  %3489 = icmp ne i32 %3488, 0
  %3490 = and i32 %3487, 8192
  %3491 = icmp eq i32 %3490, 0
  br i1 %3491, label %3507, label %3492

; <label>:3492                                    ; preds = %3477
  %3493 = extractvalue %dx.types.ResRet.f32 %3483, 2
  %3494 = select i1 %3489, float %3493, float %3484
  %3495 = extractvalue %dx.types.ResRet.f32 %3483, 0
  %3496 = select i1 %3489, float %3495, float %3484
  %3497 = add i32 %40, 144
  %3498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3497, i32 undef)  ; BufferLoad(srv,index,wot)
  %3499 = extractvalue %dx.types.ResRet.i32 %3498, 0
  %3500 = lshr i32 %3499, 16
  %3501 = and i32 %3500, 255
  %3502 = uitofp i32 %3501 to float
  %3503 = fmul fast float %3502, 0x3F80101020000000
  %3504 = fmul fast float %3503, %3496
  %3505 = fmul fast float %3503, %3484
  %3506 = fmul fast float %3503, %3494
  br label %3507

; <label>:3507                                    ; preds = %3492, %3477
  %3508 = phi float [ %3504, %3492 ], [ 0.000000e+00, %3477 ]
  %3509 = phi float [ %3505, %3492 ], [ 0.000000e+00, %3477 ]
  %3510 = phi float [ %3506, %3492 ], [ 0.000000e+00, %3477 ]
  %3511 = and i32 %3487, 2048
  %3512 = icmp eq i32 %3511, 0
  br i1 %3512, label %3521, label %3513

; <label>:3513                                    ; preds = %3507
  %3514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3426, i32 undef)  ; BufferLoad(srv,index,wot)
  %3515 = extractvalue %dx.types.ResRet.i32 %3514, 0
  %3516 = shl i32 %3515, 4
  %3517 = and i32 %3516, 32752
  %3518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3517)  ; LegacyF16ToF32(value)
  %3519 = fmul fast float %3518, %3485
  %3520 = call float @dx.op.binary.f32(i32 35, float %3519, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3521

; <label>:3521                                    ; preds = %3513, %3507, %3469
  %3522 = phi float [ %3508, %3513 ], [ %3508, %3507 ], [ 0.000000e+00, %3469 ]
  %3523 = phi float [ %3509, %3513 ], [ %3509, %3507 ], [ 0.000000e+00, %3469 ]
  %3524 = phi float [ %3510, %3513 ], [ %3510, %3507 ], [ 0.000000e+00, %3469 ]
  %3525 = phi float [ %3520, %3513 ], [ 0x3F70101020000000, %3507 ], [ 0x3F70101020000000, %3469 ]
  %3526 = add i32 %40, 144
  %3527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %3526, i32 undef)  ; BufferLoad(srv,index,wot)
  %3528 = extractvalue %dx.types.ResRet.i32 %3527, 0
  %3529 = and i32 %3528, 255
  %3530 = uitofp i32 %3529 to float
  %3531 = lshr i32 %3528, 8
  %3532 = and i32 %3531, 255
  %3533 = uitofp i32 %3532 to float
  %3534 = call float @dx.op.dot3.f32(i32 55, float %3342, float %3343, float %3344, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3535 = fmul fast float %3533, %3534
  %3536 = fadd fast float %3535, %3530
  %3537 = fmul fast float %3536, 0x3F70101020000000
  %3538 = call float @dx.op.unary.f32(i32 7, float %3537)  ; Saturate(value)
  br i1 %2826, label %3539, label %3547

; <label>:3539                                    ; preds = %3521
  %3540 = fsub fast float 1.000000e+00, %3122
  %3541 = fmul fast float %3540, %2811
  %3542 = fmul fast float %3540, %2812
  %3543 = fmul fast float %3540, %2813
  %3544 = fmul fast float %3540, %2814
  %3545 = fmul fast float %3540, %2815
  %3546 = fmul fast float %3540, %2816
  br label %3547

; <label>:3547                                    ; preds = %3539, %3521
  %3548 = phi float [ %3541, %3539 ], [ %2811, %3521 ]
  %3549 = phi float [ %3542, %3539 ], [ %2812, %3521 ]
  %3550 = phi float [ %3543, %3539 ], [ %2813, %3521 ]
  %3551 = phi float [ %3544, %3539 ], [ %2814, %3521 ]
  %3552 = phi float [ %3545, %3539 ], [ %2815, %3521 ]
  %3553 = phi float [ %3546, %3539 ], [ %2816, %3521 ]
  %3554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %2827, i32 undef)  ; BufferLoad(srv,index,wot)
  %3555 = extractvalue %dx.types.ResRet.i32 %3554, 0
  %3556 = and i32 %3555, 3
  %3557 = icmp eq i32 %3556, 3
  br i1 %3557, label %3636, label %3558

; <label>:3558                                    ; preds = %3547
  %3559 = and i32 %3555, 16
  %3560 = icmp ne i32 %3559, 0
  %3561 = select i1 %3560, float %3122, float 0.000000e+00
  %3562 = icmp eq i32 %3556, 0
  br i1 %3562, label %3563, label %3591

; <label>:3563                                    ; preds = %3558
  %3564 = and i32 %3555, 64
  %3565 = icmp ne i32 %3564, 0
  %3566 = select i1 %3565, float %3122, float 0.000000e+00
  %3567 = fsub fast float %3342, %3548
  %3568 = fsub fast float %3343, %3549
  %3569 = fsub fast float %3344, %3550
  %3570 = fmul fast float %3561, %3567
  %3571 = fmul fast float %3561, %3568
  %3572 = fmul fast float %3561, %3569
  %3573 = fadd fast float %3570, %3548
  %3574 = fadd fast float %3571, %3549
  %3575 = fadd fast float %3572, %3550
  %3576 = fsub fast float %3328, %2820
  %3577 = fmul fast float %3561, %3576
  %3578 = fadd fast float %3577, %2820
  %3579 = fsub fast float %3470, %3551
  %3580 = fsub fast float %3471, %3552
  %3581 = fsub fast float %3472, %3553
  %3582 = fmul fast float %3566, %3579
  %3583 = fmul fast float %3566, %3580
  %3584 = fmul fast float %3566, %3581
  %3585 = fadd fast float %3582, %3551
  %3586 = fadd fast float %3583, %3552
  %3587 = fadd fast float %3584, %3553
  %3588 = fsub fast float %3538, %2824
  %3589 = fmul fast float %3561, %3588
  %3590 = fadd fast float %3589, %2824
  br label %3636

; <label>:3591                                    ; preds = %3558
  %3592 = icmp eq i32 %3556, 1
  br i1 %3592, label %3593, label %3606

; <label>:3593                                    ; preds = %3591
  %3594 = fadd fast float %3342, -1.000000e+00
  %3595 = fadd fast float %3343, -1.000000e+00
  %3596 = fadd fast float %3344, -1.000000e+00
  %3597 = fmul fast float %3561, %3594
  %3598 = fmul fast float %3561, %3595
  %3599 = fmul fast float %3561, %3596
  %3600 = fadd fast float %3597, 1.000000e+00
  %3601 = fadd fast float %3598, 1.000000e+00
  %3602 = fadd fast float %3599, 1.000000e+00
  %3603 = fmul fast float %3600, %3548
  %3604 = fmul fast float %3601, %3549
  %3605 = fmul fast float %3602, %3550
  br label %3636

; <label>:3606                                    ; preds = %3591
  %3607 = icmp eq i32 %3556, 2
  br i1 %3607, label %3608, label %3636

; <label>:3608                                    ; preds = %3606
  %3609 = call float @dx.op.unary.f32(i32 24, float %3342)  ; Sqrt(value)
  %3610 = call float @dx.op.unary.f32(i32 24, float %3343)  ; Sqrt(value)
  %3611 = call float @dx.op.unary.f32(i32 24, float %3344)  ; Sqrt(value)
  %3612 = fadd fast float %3609, -5.000000e-01
  %3613 = fadd fast float %3610, -5.000000e-01
  %3614 = fadd fast float %3611, -5.000000e-01
  %3615 = fmul fast float %3612, %3561
  %3616 = fmul fast float %3613, %3561
  %3617 = fmul fast float %3614, %3561
  %3618 = fadd fast float %3615, 5.000000e-01
  %3619 = fadd fast float %3616, 5.000000e-01
  %3620 = fadd fast float %3617, 5.000000e-01
  %3621 = fmul fast float %3618, 2.000000e+00
  %3622 = fsub fast float 1.000000e+00, %3621
  %3623 = fmul fast float %3622, %3548
  %3624 = fadd fast float %3623, %3621
  %3625 = fmul fast float %3624, %3548
  %3626 = fmul fast float %3619, 2.000000e+00
  %3627 = fsub fast float 1.000000e+00, %3626
  %3628 = fmul fast float %3627, %3549
  %3629 = fadd fast float %3628, %3626
  %3630 = fmul fast float %3629, %3549
  %3631 = fmul fast float %3620, 2.000000e+00
  %3632 = fsub fast float 1.000000e+00, %3631
  %3633 = fmul fast float %3632, %3550
  %3634 = fadd fast float %3633, %3631
  %3635 = fmul fast float %3634, %3550
  br label %3636

; <label>:3636                                    ; preds = %3608, %3606, %3593, %3563, %3547
  %3637 = phi float [ %3548, %3547 ], [ %3625, %3608 ], [ %3548, %3606 ], [ %3603, %3593 ], [ %3573, %3563 ]
  %3638 = phi float [ %3549, %3547 ], [ %3630, %3608 ], [ %3549, %3606 ], [ %3604, %3593 ], [ %3574, %3563 ]
  %3639 = phi float [ %3550, %3547 ], [ %3635, %3608 ], [ %3550, %3606 ], [ %3605, %3593 ], [ %3575, %3563 ]
  %3640 = phi float [ %3551, %3547 ], [ %3551, %3608 ], [ %3551, %3606 ], [ %3551, %3593 ], [ %3585, %3563 ]
  %3641 = phi float [ %3552, %3547 ], [ %3552, %3608 ], [ %3552, %3606 ], [ %3552, %3593 ], [ %3586, %3563 ]
  %3642 = phi float [ %3553, %3547 ], [ %3553, %3608 ], [ %3553, %3606 ], [ %3553, %3593 ], [ %3587, %3563 ]
  %3643 = phi float [ %2820, %3547 ], [ %2820, %3608 ], [ %2820, %3606 ], [ %2820, %3593 ], [ %3578, %3563 ]
  %3644 = phi float [ %2824, %3547 ], [ %2824, %3608 ], [ %2824, %3606 ], [ %2824, %3593 ], [ %3590, %3563 ]
  %3645 = and i32 %3555, 12
  %3646 = icmp eq i32 %3645, 12
  br i1 %3646, label %3753, label %3647

; <label>:3647                                    ; preds = %3636
  %3648 = and i32 %3555, 2097184
  %3649 = icmp eq i32 %3648, 2097184
  %3650 = select i1 %3649, float %3122, float 0.000000e+00
  %3651 = and i32 %3555, 4194336
  %3652 = icmp eq i32 %3651, 4194336
  %3653 = select i1 %3652, float %3122, float 0.000000e+00
  %3654 = and i32 %3555, 8388640
  %3655 = icmp eq i32 %3654, 8388640
  %3656 = select i1 %3655, float %3122, float 0.000000e+00
  %3657 = and i32 %3555, 2048
  %3658 = icmp ne i32 %3657, 0
  %3659 = select i1 %3658, float %3122, float 0.000000e+00
  %3660 = and i32 %3555, 8192
  %3661 = icmp ne i32 %3660, 0
  %3662 = select i1 %3661, float %3122, float 0.000000e+00
  %3663 = icmp eq i32 %3645, 0
  br i1 %3663, label %3664, label %3689

; <label>:3664                                    ; preds = %3647
  %3665 = fsub fast float %3423, %2809
  %3666 = fsub fast float %3424, %2810
  %3667 = fmul fast float %3650, %3665
  %3668 = fmul fast float %3650, %3666
  %3669 = fadd fast float %3667, %2809
  %3670 = fadd fast float %3668, %2810
  %3671 = fsub fast float %3425, %2822
  %3672 = fmul fast float %3653, %3671
  %3673 = fadd fast float %3672, %2822
  %3674 = fsub fast float %3422, %2821
  %3675 = fmul fast float %3656, %3674
  %3676 = fadd fast float %3675, %2821
  %3677 = fsub fast float %3525, %2823
  %3678 = fmul fast float %3659, %3677
  %3679 = fadd fast float %3678, %2823
  %3680 = fsub fast float %3522, %2817
  %3681 = fsub fast float %3523, %2818
  %3682 = fsub fast float %3524, %2819
  %3683 = fmul fast float %3662, %3680
  %3684 = fmul fast float %3662, %3681
  %3685 = fmul fast float %3662, %3682
  %3686 = fadd fast float %3683, %2817
  %3687 = fadd fast float %3684, %2818
  %3688 = fadd fast float %3685, %2819
  br label %3753

; <label>:3689                                    ; preds = %3647
  %3690 = icmp eq i32 %3645, 4
  br i1 %3690, label %3691, label %3731

; <label>:3691                                    ; preds = %3689
  %3692 = fmul fast float %3650, %3423
  %3693 = fmul fast float %3650, %3424
  %3694 = fadd fast float %3692, %2809
  %3695 = fadd fast float %3693, %2810
  %3696 = call float @dx.op.binary.f32(i32 36, float %2822, float %3425)  ; FMin(a,b)
  %3697 = fsub fast float %3696, %2822
  %3698 = fmul fast float %3697, %3653
  %3699 = fadd fast float %3698, %2822
  %3700 = fadd fast float %3422, %2821
  %3701 = fmul fast float %3700, 0x3FF337FAE0000000
  %3702 = fmul fast float %2821, %2821
  %3703 = fmul fast float %3422, %3422
  %3704 = fadd fast float %3703, %3702
  %3705 = fmul fast float %3704, 0x3FE5152B00000000
  %3706 = fmul fast float %2821, 0xBFCC1F85E0000000
  %3707 = fmul fast float %3706, %3422
  %3708 = fadd fast float %3707, 0xBFE1363700000000
  %3709 = fadd fast float %3708, %3701
  %3710 = fsub fast float %3709, %3705
  %3711 = fmul fast float %3700, 0x3FBA6F0D00000000
  %3712 = fmul fast float %3704, 0x3FD0432880000000
  %3713 = fmul fast float %2821, 0xBFEF110800000000
  %3714 = fmul fast float %3713, %3422
  %3715 = fadd fast float %3714, 1.000000e+00
  %3716 = fsub fast float %3715, %3711
  %3717 = fadd fast float %3716, %3712
  %3718 = fdiv fast float %3710, %3717
  %3719 = call float @dx.op.unary.f32(i32 7, float %3718)  ; Saturate(value)
  %3720 = fsub fast float %3719, %2821
  %3721 = fmul fast float %3720, %3656
  %3722 = fadd fast float %3721, %2821
  %3723 = fmul fast float %3659, %3525
  %3724 = fadd fast float %3723, %2823
  %3725 = fmul fast float %3662, %3522
  %3726 = fmul fast float %3662, %3523
  %3727 = fmul fast float %3662, %3524
  %3728 = fadd fast float %3725, %2817
  %3729 = fadd fast float %3726, %2818
  %3730 = fadd fast float %3727, %2819
  br label %3753

; <label>:3731                                    ; preds = %3689
  %3732 = icmp eq i32 %3645, 8
  br i1 %3732, label %3733, label %3753

; <label>:3733                                    ; preds = %3731
  %3734 = fmul fast float %3650, %3423
  %3735 = fmul fast float %3650, %3424
  %3736 = fadd fast float %3734, %2809
  %3737 = fadd fast float %3735, %2810
  %3738 = call float @dx.op.binary.f32(i32 36, float %2822, float %3425)  ; FMin(a,b)
  %3739 = fsub fast float %3738, %2822
  %3740 = fmul fast float %3739, %3653
  %3741 = fadd fast float %3740, %2822
  %3742 = fsub fast float %3422, %2821
  %3743 = fmul fast float %3656, %3742
  %3744 = fadd fast float %3743, %2821
  %3745 = fmul fast float %3659, %3525
  %3746 = fadd fast float %3745, %2823
  %3747 = fmul fast float %3662, %3522
  %3748 = fmul fast float %3662, %3523
  %3749 = fmul fast float %3662, %3524
  %3750 = fadd fast float %3747, %2817
  %3751 = fadd fast float %3748, %2818
  %3752 = fadd fast float %3749, %2819
  br label %3753

; <label>:3753                                    ; preds = %3733, %3731, %3691, %3664, %3636, %3121, %2825, %2808
  %3754 = phi float [ %2809, %3636 ], [ %2809, %3121 ], [ %2809, %2808 ], [ %2809, %2825 ], [ %3669, %3664 ], [ %3694, %3691 ], [ %2809, %3731 ], [ %3736, %3733 ]
  %3755 = phi float [ %2810, %3636 ], [ %2810, %3121 ], [ %2810, %2808 ], [ %2810, %2825 ], [ %3670, %3664 ], [ %3695, %3691 ], [ %2810, %3731 ], [ %3737, %3733 ]
  %3756 = phi float [ %3637, %3636 ], [ %2811, %3121 ], [ %2811, %2808 ], [ %2811, %2825 ], [ %3637, %3664 ], [ %3637, %3691 ], [ %3637, %3731 ], [ %3637, %3733 ]
  %3757 = phi float [ %3638, %3636 ], [ %2812, %3121 ], [ %2812, %2808 ], [ %2812, %2825 ], [ %3638, %3664 ], [ %3638, %3691 ], [ %3638, %3731 ], [ %3638, %3733 ]
  %3758 = phi float [ %3639, %3636 ], [ %2813, %3121 ], [ %2813, %2808 ], [ %2813, %2825 ], [ %3639, %3664 ], [ %3639, %3691 ], [ %3639, %3731 ], [ %3639, %3733 ]
  %3759 = phi float [ %3640, %3636 ], [ %2814, %3121 ], [ %2814, %2808 ], [ %2814, %2825 ], [ %3640, %3664 ], [ %3640, %3691 ], [ %3640, %3731 ], [ %3640, %3733 ]
  %3760 = phi float [ %3641, %3636 ], [ %2815, %3121 ], [ %2815, %2808 ], [ %2815, %2825 ], [ %3641, %3664 ], [ %3641, %3691 ], [ %3641, %3731 ], [ %3641, %3733 ]
  %3761 = phi float [ %3642, %3636 ], [ %2816, %3121 ], [ %2816, %2808 ], [ %2816, %2825 ], [ %3642, %3664 ], [ %3642, %3691 ], [ %3642, %3731 ], [ %3642, %3733 ]
  %3762 = phi float [ %2817, %3636 ], [ %2817, %3121 ], [ %2817, %2808 ], [ %2817, %2825 ], [ %3686, %3664 ], [ %3728, %3691 ], [ %2817, %3731 ], [ %3750, %3733 ]
  %3763 = phi float [ %2818, %3636 ], [ %2818, %3121 ], [ %2818, %2808 ], [ %2818, %2825 ], [ %3687, %3664 ], [ %3729, %3691 ], [ %2818, %3731 ], [ %3751, %3733 ]
  %3764 = phi float [ %2819, %3636 ], [ %2819, %3121 ], [ %2819, %2808 ], [ %2819, %2825 ], [ %3688, %3664 ], [ %3730, %3691 ], [ %2819, %3731 ], [ %3752, %3733 ]
  %3765 = phi float [ %3643, %3636 ], [ %2820, %3121 ], [ %2820, %2808 ], [ %2820, %2825 ], [ %3643, %3664 ], [ %3643, %3691 ], [ %3643, %3731 ], [ %3643, %3733 ]
  %3766 = phi float [ %2821, %3636 ], [ %2821, %3121 ], [ %2821, %2808 ], [ %2821, %2825 ], [ %3676, %3664 ], [ %3722, %3691 ], [ %2821, %3731 ], [ %3744, %3733 ]
  %3767 = phi float [ %2822, %3636 ], [ %2822, %3121 ], [ %2822, %2808 ], [ %2822, %2825 ], [ %3673, %3664 ], [ %3699, %3691 ], [ %2822, %3731 ], [ %3741, %3733 ]
  %3768 = phi float [ %2823, %3636 ], [ %2823, %3121 ], [ %2823, %2808 ], [ %2823, %2825 ], [ %3679, %3664 ], [ %3724, %3691 ], [ %2823, %3731 ], [ %3746, %3733 ]
  %3769 = phi float [ %3644, %3636 ], [ %2824, %3121 ], [ %2824, %2808 ], [ %2824, %2825 ], [ %3644, %3664 ], [ %3644, %3691 ], [ %3644, %3731 ], [ %3644, %3733 ]
  %3770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3771 = extractvalue %dx.types.CBufRet.f32 %3770, 0
  %3772 = call float @dx.op.dot2.f32(i32 54, float %3754, float %3755, float %3754, float %3755)  ; Dot2(ax,ay,bx,by)
  %3773 = fmul fast float %3772, 0x3FE3333340000000
  %3774 = fsub fast float 1.000000e+00, %3773
  %3775 = call float @dx.op.dot3.f32(i32 55, float %3754, float %3755, float %3774, float %3754, float %3755, float %3774)  ; Dot3(ax,ay,az,bx,by,bz)
  %3776 = call float @dx.op.unary.f32(i32 25, float %3775)  ; Rsqrt(value)
  %3777 = fmul fast float %3776, %3754
  %3778 = fmul fast float %3776, %3755
  %3779 = fmul fast float %3774, %3776
  %3780 = fmul fast float %3779, %77
  %3781 = fmul fast float %3779, %79
  %3782 = fmul fast float %3779, %81
  %3783 = fmul fast float %3777, %49
  %3784 = fmul fast float %3777, %50
  %3785 = fmul fast float %3777, %51
  %3786 = fadd fast float %3780, %3783
  %3787 = fadd fast float %3781, %3784
  %3788 = fadd fast float %3782, %3785
  %3789 = fmul fast float %91, %3778
  %3790 = fmul fast float %92, %3778
  %3791 = fmul fast float %93, %3778
  %3792 = fadd fast float %3786, %3789
  %3793 = fadd fast float %3787, %3790
  %3794 = fadd fast float %3788, %3791
  %3795 = call float @dx.op.dot3.f32(i32 55, float %3792, float %3793, float %3794, float %3792, float %3793, float %3794)  ; Dot3(ax,ay,az,bx,by,bz)
  %3796 = call float @dx.op.unary.f32(i32 25, float %3795)  ; Rsqrt(value)
  %3797 = fmul fast float %3792, %3796
  %3798 = fmul fast float %3793, %3796
  %3799 = fmul fast float %3794, %3796
  %3800 = and i32 %42, 1
  %3801 = icmp eq i32 %3800, 0
  br i1 %3801, label %3802, label %4363

; <label>:3802                                    ; preds = %3753
  %3803 = call float @dx.op.unary.f32(i32 83, float %127)  ; DerivCoarseX(value)
  %3804 = call float @dx.op.unary.f32(i32 83, float %128)  ; DerivCoarseX(value)
  %3805 = call float @dx.op.unary.f32(i32 83, float %129)  ; DerivCoarseX(value)
  %3806 = call float @dx.op.unary.f32(i32 84, float %127)  ; DerivCoarseY(value)
  %3807 = call float @dx.op.unary.f32(i32 84, float %128)  ; DerivCoarseY(value)
  %3808 = call float @dx.op.unary.f32(i32 84, float %129)  ; DerivCoarseY(value)
  %3809 = fadd fast float %3803, %127
  %3810 = fadd fast float %3804, %128
  %3811 = fadd fast float %3805, %129
  %3812 = fadd fast float %3806, %127
  %3813 = fadd fast float %3807, %128
  %3814 = fadd fast float %3808, %129
  %3815 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3816 = extractvalue %dx.types.CBufRet.f32 %3815, 0
  %3817 = extractvalue %dx.types.CBufRet.f32 %3815, 1
  %3818 = extractvalue %dx.types.CBufRet.f32 %3815, 2
  %3819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3820 = extractvalue %dx.types.CBufRet.f32 %3819, 2
  %3821 = extractvalue %dx.types.CBufRet.f32 %3819, 3
  %3822 = fmul fast float %3816, %68
  %3823 = fmul fast float %3822, %3820
  %3824 = fmul fast float %3817, %69
  %3825 = fmul fast float %3824, %3821
  %3826 = fptoui float %3823 to i32
  %3827 = fptoui float %3825 to i32
  %3828 = fadd fast float %3816, -1.000000e+00
  %3829 = fadd fast float %3817, -1.000000e+00
  %3830 = fptoui float %3828 to i32
  %3831 = fptoui float %3829 to i32
  %3832 = call i32 @dx.op.binary.i32(i32 40, i32 %3826, i32 %3830)  ; UMin(a,b)
  %3833 = call i32 @dx.op.binary.i32(i32 40, i32 %3827, i32 %3831)  ; UMin(a,b)
  %3834 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3835 = extractvalue %dx.types.CBufRet.f32 %3834, 2
  %3836 = extractvalue %dx.types.CBufRet.f32 %3834, 3
  %3837 = fmul fast float %3835, %63
  %3838 = fsub fast float %3837, %3836
  %3839 = fadd fast float %3818, -1.000000e+00
  %3840 = call float @dx.op.binary.f32(i32 36, float %3838, float %3839)  ; FMin(a,b)
  %3841 = fptoui float %3840 to i32
  %3842 = fptoui float %3816 to i32
  %3843 = fptoui float %3817 to i32
  %3844 = mul i32 %3841, %3843
  %3845 = add i32 %3844, %3833
  %3846 = mul i32 %3845, %3842
  %3847 = add i32 %3846, %3832
  %3848 = shl i32 %3847, 2
  %3849 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3848, i32 undef)  ; BufferLoad(srv,index,wot)
  %3850 = extractvalue %dx.types.ResRet.i32 %3849, 0
  %3851 = and i32 %3850, 1023
  %3852 = lshr i32 %3850, 10
  %3853 = icmp eq i32 %3851, 0
  br i1 %3853, label %4329, label %3854

; <label>:3854                                    ; preds = %3802
  %3855 = and i32 %3850, 1023
  br label %3856

; <label>:3856                                    ; preds = %3985, %3854
  %3857 = phi i32 [ %3935, %3985 ], [ 0, %3854 ]
  %3858 = phi float [ %3986, %3985 ], [ 0.000000e+00, %3854 ]
  %3859 = phi float [ %3987, %3985 ], [ %3771, %3854 ]
  %3860 = phi float [ %3988, %3985 ], [ %3769, %3854 ]
  %3861 = phi float [ %3989, %3985 ], [ 0.000000e+00, %3854 ]
  %3862 = phi float [ %3990, %3985 ], [ 0.000000e+00, %3854 ]
  %3863 = phi float [ %3991, %3985 ], [ %3762, %3854 ]
  %3864 = phi float [ %3992, %3985 ], [ %3763, %3854 ]
  %3865 = phi float [ %3993, %3985 ], [ %3764, %3854 ]
  %3866 = phi float [ %3994, %3985 ], [ %3759, %3854 ]
  %3867 = phi float [ %3995, %3985 ], [ %3760, %3854 ]
  %3868 = phi float [ %3996, %3985 ], [ %3761, %3854 ]
  %3869 = phi float [ %3997, %3985 ], [ %3797, %3854 ]
  %3870 = phi float [ %3998, %3985 ], [ %3798, %3854 ]
  %3871 = phi float [ %3999, %3985 ], [ %3799, %3854 ]
  %3872 = phi float [ %4000, %3985 ], [ %3767, %3854 ]
  %3873 = phi float [ %4001, %3985 ], [ %3766, %3854 ]
  %3874 = phi float [ %4002, %3985 ], [ 0.000000e+00, %3854 ]
  %3875 = phi float [ %4003, %3985 ], [ %3765, %3854 ]
  %3876 = phi float [ %4004, %3985 ], [ %3756, %3854 ]
  %3877 = phi float [ %4005, %3985 ], [ %3757, %3854 ]
  %3878 = phi float [ %4006, %3985 ], [ %3758, %3854 ]
  %3879 = add nuw nsw i32 %3857, %3852
  %3880 = shl i32 %3879, 2
  %3881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %3880, i32 undef)  ; BufferLoad(srv,index,wot)
  %3882 = extractvalue %dx.types.ResRet.i32 %3881, 0
  %3883 = shl i32 %3882, 8
  %3884 = or i32 %3883, 48
  %3885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3884, i32 undef)  ; BufferLoad(srv,index,wot)
  %3886 = extractvalue %dx.types.ResRet.f32 %3885, 0
  %3887 = extractvalue %dx.types.ResRet.f32 %3885, 1
  %3888 = extractvalue %dx.types.ResRet.f32 %3885, 2
  %3889 = extractvalue %dx.types.ResRet.f32 %3885, 3
  %3890 = or i32 %3883, 64
  %3891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3890, i32 undef)  ; BufferLoad(srv,index,wot)
  %3892 = extractvalue %dx.types.ResRet.i32 %3891, 0
  %3893 = extractvalue %dx.types.ResRet.i32 %3891, 1
  %3894 = or i32 %3883, 80
  %3895 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3894, i32 undef)  ; BufferLoad(srv,index,wot)
  %3896 = extractvalue %dx.types.ResRet.f32 %3895, 2
  %3897 = extractvalue %dx.types.ResRet.f32 %3895, 3
  %3898 = or i32 %3883, 96
  %3899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3898, i32 undef)  ; BufferLoad(srv,index,wot)
  %3900 = extractvalue %dx.types.ResRet.f32 %3899, 0
  %3901 = extractvalue %dx.types.ResRet.f32 %3899, 1
  %3902 = extractvalue %dx.types.ResRet.f32 %3899, 2
  %3903 = extractvalue %dx.types.ResRet.f32 %3899, 3
  %3904 = or i32 %3883, 112
  %3905 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3904, i32 undef)  ; BufferLoad(srv,index,wot)
  %3906 = extractvalue %dx.types.ResRet.f32 %3905, 2
  %3907 = or i32 %3883, 128
  %3908 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3907, i32 undef)  ; BufferLoad(srv,index,wot)
  %3909 = extractvalue %dx.types.ResRet.f32 %3908, 0
  %3910 = extractvalue %dx.types.ResRet.f32 %3908, 1
  %3911 = extractvalue %dx.types.ResRet.f32 %3908, 2
  %3912 = extractvalue %dx.types.ResRet.f32 %3908, 3
  %3913 = or i32 %3883, 144
  %3914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3913, i32 undef)  ; BufferLoad(srv,index,wot)
  %3915 = extractvalue %dx.types.ResRet.f32 %3914, 0
  %3916 = extractvalue %dx.types.ResRet.f32 %3914, 1
  %3917 = extractvalue %dx.types.ResRet.f32 %3914, 2
  %3918 = extractvalue %dx.types.ResRet.f32 %3914, 3
  %3919 = or i32 %3883, 160
  %3920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3919, i32 undef)  ; BufferLoad(srv,index,wot)
  %3921 = extractvalue %dx.types.ResRet.f32 %3920, 0
  %3922 = extractvalue %dx.types.ResRet.f32 %3920, 1
  %3923 = extractvalue %dx.types.ResRet.f32 %3920, 2
  %3924 = extractvalue %dx.types.ResRet.f32 %3920, 3
  %3925 = or i32 %3883, 192
  %3926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %3925, i32 undef)  ; BufferLoad(srv,index,wot)
  %3927 = extractvalue %dx.types.ResRet.i32 %3926, 0
  %3928 = or i32 %3883, 208
  %3929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3928, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %3931 = or i32 %3883, 248
  %3932 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3931, i32 undef)  ; BufferLoad(srv,index,wot)
  %3933 = extractvalue %dx.types.ResRet.f32 %3932, 0
  %3934 = extractvalue %dx.types.ResRet.f32 %3932, 1
  %3935 = add nuw nsw i32 %3857, 1
  %3936 = bitcast float %3889 to i32
  %3937 = and i32 %3936, 512
  %3938 = icmp eq i32 %3937, 0
  %3939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3883, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.f32 %3939, 0
  %3941 = extractvalue %dx.types.ResRet.f32 %3939, 1
  %3942 = extractvalue %dx.types.ResRet.f32 %3939, 2
  %3943 = extractvalue %dx.types.ResRet.f32 %3939, 3
  %3944 = call float @dx.op.dot4.f32(i32 56, float %3940, float %3941, float %3942, float %3943, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3945 = or i32 %3883, 16
  %3946 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3945, i32 undef)  ; BufferLoad(srv,index,wot)
  %3947 = extractvalue %dx.types.ResRet.f32 %3946, 0
  %3948 = extractvalue %dx.types.ResRet.f32 %3946, 1
  %3949 = extractvalue %dx.types.ResRet.f32 %3946, 2
  %3950 = extractvalue %dx.types.ResRet.f32 %3946, 3
  %3951 = call float @dx.op.dot4.f32(i32 56, float %3947, float %3948, float %3949, float %3950, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3952 = or i32 %3883, 32
  %3953 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %17, i32 %3952, i32 undef)  ; BufferLoad(srv,index,wot)
  %3954 = extractvalue %dx.types.ResRet.f32 %3953, 0
  %3955 = extractvalue %dx.types.ResRet.f32 %3953, 1
  %3956 = extractvalue %dx.types.ResRet.f32 %3953, 2
  %3957 = extractvalue %dx.types.ResRet.f32 %3953, 3
  %3958 = call float @dx.op.dot4.f32(i32 56, float %3954, float %3955, float %3956, float %3957, float %127, float %128, float %129, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3959 = call float @dx.op.unary.f32(i32 27, float %3944)  ; Round_ni(value)
  %3960 = call float @dx.op.unary.f32(i32 6, float %3959)  ; FAbs(value)
  %3961 = call float @dx.op.unary.f32(i32 27, float %3951)  ; Round_ni(value)
  %3962 = call float @dx.op.unary.f32(i32 6, float %3961)  ; FAbs(value)
  %3963 = call float @dx.op.unary.f32(i32 6, float %3958)  ; FAbs(value)
  %3964 = call float @dx.op.unary.f32(i32 27, float %3963)  ; Round_ni(value)
  %3965 = fadd fast float %3962, %3960
  %3966 = fadd fast float %3965, %3964
  %3967 = fcmp fast oeq float %3966, 0.000000e+00
  %3968 = call float @dx.op.dot4.f32(i32 56, float %3940, float %3941, float %3942, float %3943, float %3809, float %3810, float %3811, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3969 = call float @dx.op.dot4.f32(i32 56, float %3947, float %3948, float %3949, float %3950, float %3809, float %3810, float %3811, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3970 = call float @dx.op.dot4.f32(i32 56, float %3940, float %3941, float %3942, float %3943, float %3812, float %3813, float %3814, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3971 = call float @dx.op.dot4.f32(i32 56, float %3947, float %3948, float %3949, float %3950, float %3812, float %3813, float %3814, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3972 = fsub fast float %3968, %3944
  %3973 = fsub fast float %3970, %3944
  %3974 = fsub fast float %3969, %3951
  %3975 = fsub fast float %3971, %3951
  %3976 = call float @dx.op.dot3.f32(i32 55, float %3886, float %3887, float %3888, float %77, float %79, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %3977 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3978 = extractvalue %dx.types.CBufRet.f32 %3977, 2
  %3979 = fadd fast float %3978, %3976
  %3980 = call float @dx.op.unary.f32(i32 7, float %3979)  ; Saturate(value)
  %3981 = extractvalue %dx.types.CBufRet.f32 %3977, 0
  %3982 = fcmp fast ogt float %3980, %3981
  %3983 = and i1 %3967, %3982
  %3984 = and i1 %3938, %3983
  br i1 %3984, label %4008, label %3985

; <label>:3985                                    ; preds = %4315, %4089, %4008, %3856
  %3986 = phi float [ %3858, %4008 ], [ %4092, %4089 ], [ %4092, %4315 ], [ %3858, %3856 ]
  %3987 = phi float [ %3859, %4008 ], [ %3859, %4089 ], [ %4291, %4315 ], [ %3859, %3856 ]
  %3988 = phi float [ %3860, %4008 ], [ %3860, %4089 ], [ %4289, %4315 ], [ %3860, %3856 ]
  %3989 = phi float [ %3861, %4008 ], [ %3861, %4089 ], [ %4216, %4315 ], [ %3861, %3856 ]
  %3990 = phi float [ %3862, %4008 ], [ %3862, %4089 ], [ %4214, %4315 ], [ %3862, %3856 ]
  %3991 = phi float [ %3863, %4008 ], [ %3863, %4089 ], [ %4259, %4315 ], [ %3863, %3856 ]
  %3992 = phi float [ %3864, %4008 ], [ %3864, %4089 ], [ %4260, %4315 ], [ %3864, %3856 ]
  %3993 = phi float [ %3865, %4008 ], [ %3865, %4089 ], [ %4261, %4315 ], [ %3865, %3856 ]
  %3994 = phi float [ %3866, %4008 ], [ %3866, %4089 ], [ %4325, %4315 ], [ %3866, %3856 ]
  %3995 = phi float [ %3867, %4008 ], [ %3867, %4089 ], [ %4326, %4315 ], [ %3867, %3856 ]
  %3996 = phi float [ %3868, %4008 ], [ %3868, %4089 ], [ %4327, %4315 ], [ %3868, %3856 ]
  %3997 = phi float [ %3869, %4008 ], [ %3869, %4089 ], [ %4195, %4315 ], [ %3869, %3856 ]
  %3998 = phi float [ %3870, %4008 ], [ %3870, %4089 ], [ %4196, %4315 ], [ %3870, %3856 ]
  %3999 = phi float [ %3871, %4008 ], [ %3871, %4089 ], [ %4197, %4315 ], [ %3871, %3856 ]
  %4000 = phi float [ %3872, %4008 ], [ %3872, %4089 ], [ %4269, %4315 ], [ %3872, %3856 ]
  %4001 = phi float [ %3873, %4008 ], [ %3873, %4089 ], [ %4266, %4315 ], [ %3873, %3856 ]
  %4002 = phi float [ %3874, %4008 ], [ %3874, %4089 ], [ %4263, %4315 ], [ %3874, %3856 ]
  %4003 = phi float [ %3875, %4008 ], [ %3875, %4089 ], [ %4212, %4315 ], [ %3875, %3856 ]
  %4004 = phi float [ %3876, %4008 ], [ %3876, %4089 ], [ %4207, %4315 ], [ %3876, %3856 ]
  %4005 = phi float [ %3877, %4008 ], [ %3877, %4089 ], [ %4208, %4315 ], [ %3877, %3856 ]
  %4006 = phi float [ %3878, %4008 ], [ %3878, %4089 ], [ %4209, %4315 ], [ %3878, %3856 ]
  %4007 = icmp eq i32 %3935, %3855
  br i1 %4007, label %4328, label %3856

; <label>:4008                                    ; preds = %3856
  %4009 = extractvalue %dx.types.ResRet.f32 %3905, 3
  %4010 = extractvalue %dx.types.ResRet.f32 %3905, 1
  %4011 = extractvalue %dx.types.ResRet.f32 %3905, 0
  %4012 = extractvalue %dx.types.ResRet.f32 %3895, 1
  %4013 = extractvalue %dx.types.ResRet.f32 %3895, 0
  %4014 = extractvalue %dx.types.ResRet.i32 %3891, 3
  %4015 = extractvalue %dx.types.ResRet.i32 %3891, 2
  %4016 = add i32 %4014, 0
  %4017 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4016, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4018 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4019 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4017, %dx.types.Handle %4018, float %3944, float %3951, float undef, float undef, i32 0, i32 0, i32 undef, float %3972, float %3974, float undef, float %3973, float %3975, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4020 = extractvalue %dx.types.ResRet.f32 %4019, 0
  %4021 = fmul fast float %4020, %4013
  %4022 = fadd fast float %4021, %4012
  %4023 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4024 = fmul fast float %3944, %3900
  %4025 = call float @dx.op.tertiary.f32(i32 46, float %3901, float %3951, float %4024)  ; FMad(a,b,c)
  %4026 = fadd fast float %4025, %4011
  %4027 = fmul fast float %3944, %3902
  %4028 = call float @dx.op.tertiary.f32(i32 46, float %3903, float %3951, float %4027)  ; FMad(a,b,c)
  %4029 = fadd fast float %4028, %4010
  %4030 = fmul fast float %3972, %3900
  %4031 = call float @dx.op.tertiary.f32(i32 46, float %3901, float %3974, float %4030)  ; FMad(a,b,c)
  %4032 = fmul fast float %3972, %3902
  %4033 = call float @dx.op.tertiary.f32(i32 46, float %3903, float %3974, float %4032)  ; FMad(a,b,c)
  %4034 = fmul fast float %3973, %3900
  %4035 = call float @dx.op.tertiary.f32(i32 46, float %3901, float %3975, float %4034)  ; FMad(a,b,c)
  %4036 = fmul fast float %3973, %3902
  %4037 = call float @dx.op.tertiary.f32(i32 46, float %3903, float %3975, float %4036)  ; FMad(a,b,c)
  %4038 = add i32 %4015, 0
  %4039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4038, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4040 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4039, %dx.types.Handle %4018, float %4026, float %4029, float undef, float undef, i32 0, i32 0, i32 undef, float %4031, float %4033, float undef, float %4035, float %4037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4041 = extractvalue %dx.types.ResRet.f32 %4040, 0
  %4042 = and i32 %3936, 1024
  %4043 = icmp ne i32 %4042, 0
  %4044 = fcmp fast ogt float %4041, 0x3FE0101020000000
  %4045 = uitofp i1 %4044 to float
  %4046 = select i1 %4043, float %4045, float %4041
  %4047 = and i32 %3936, 8192
  %4048 = icmp ne i32 %4047, 0
  %4049 = select i1 %4048, float %4009, float 1.000000e+00
  %4050 = fmul fast float %3944, 2.000000e+00
  %4051 = fadd fast float %4050, -1.000000e+00
  %4052 = call float @dx.op.unary.f32(i32 6, float %4051)  ; FAbs(value)
  %4053 = fmul fast float %4052, %3933
  %4054 = fsub fast float %4053, %3933
  %4055 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4056 = fmul fast float %3951, 2.000000e+00
  %4057 = fadd fast float %4056, -1.000000e+00
  %4058 = call float @dx.op.unary.f32(i32 6, float %4057)  ; FAbs(value)
  %4059 = fmul fast float %4058, %3934
  %4060 = fsub fast float %4059, %3934
  %4061 = call float @dx.op.unary.f32(i32 7, float %4060)  ; Saturate(value)
  %4062 = fmul fast float %3963, %3896
  %4063 = fsub fast float %4062, %3896
  %4064 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4065 = fmul fast float %4023, %4049
  %4066 = fmul fast float %4065, %4020
  %4067 = fmul fast float %4066, %4055
  %4068 = fmul fast float %4067, %4046
  %4069 = fmul fast float %4068, %4061
  %4070 = fmul fast float %4069, %4064
  %4071 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4072 = extractvalue %dx.types.CBufRet.f32 %4071, 1
  %4073 = extractvalue %dx.types.CBufRet.f32 %4071, 0
  %4074 = fsub fast float %3980, %4073
  %4075 = fmul fast float %4074, %4072
  %4076 = call float @dx.op.unary.f32(i32 7, float %4075)  ; Saturate(value)
  %4077 = fmul fast float %4070, %3897
  %4078 = fadd fast float %4070, %3897
  %4079 = fmul fast float %4078, %3906
  %4080 = fsub fast float %4079, %3906
  %4081 = call float @dx.op.unary.f32(i32 7, float %4080)  ; Saturate(value)
  %4082 = and i32 %3936, 128
  %4083 = icmp ne i32 %4082, 0
  %4084 = select i1 %4083, float %4081, float %4077
  %4085 = fmul fast float %4084, %4076
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = fcmp fast ugt float %4085, %4087
  br i1 %4088, label %4089, label %3985

; <label>:4089                                    ; preds = %4008
  %4090 = select i1 %4048, float %4085, float 0.000000e+00
  %4091 = fadd fast float %4090, %3858
  %4092 = call float @dx.op.unary.f32(i32 7, float %4091)  ; Saturate(value)
  br i1 %4048, label %3985, label %4093

; <label>:4093                                    ; preds = %4089
  %4094 = and i32 %3936, 4
  %4095 = and i32 %3936, 8
  %4096 = add i32 %3892, 0
  %4097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4096, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4099 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4097, %dx.types.Handle %4098, float %4026, float %4029, float undef, float undef, i32 0, i32 0, i32 undef, float %4031, float %4033, float undef, float %4035, float %4037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4100 = extractvalue %dx.types.ResRet.f32 %4099, 0
  %4101 = extractvalue %dx.types.ResRet.f32 %4099, 1
  %4102 = extractvalue %dx.types.ResRet.f32 %4099, 2
  %4103 = extractvalue %dx.types.ResRet.f32 %4099, 3
  %4104 = bitcast float %3918 to i32
  %4105 = and i32 %4104, 255
  %4106 = uitofp i32 %4105 to float
  %4107 = lshr i32 %4104, 8
  %4108 = and i32 %4107, 255
  %4109 = uitofp i32 %4108 to float
  %4110 = fmul fast float %4103, %4106
  %4111 = fadd fast float %4110, %4109
  %4112 = fmul fast float %4111, 0x3F70101000000000
  %4113 = add i32 %3893, 0
  %4114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4113, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4115 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4114, %dx.types.Handle %4098, float %4026, float %4029, float undef, float undef, i32 0, i32 0, i32 undef, float %4031, float %4033, float undef, float %4035, float %4037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4116 = extractvalue %dx.types.ResRet.f32 %4115, 0
  %4117 = extractvalue %dx.types.ResRet.f32 %4115, 1
  %4118 = extractvalue %dx.types.ResRet.f32 %4115, 2
  %4119 = extractvalue %dx.types.ResRet.f32 %4115, 3
  %4120 = bitcast float %3912 to i32
  %4121 = and i32 %4120, 255
  %4122 = uitofp i32 %4121 to float
  %4123 = lshr i32 %4120, 8
  %4124 = and i32 %4123, 255
  %4125 = uitofp i32 %4124 to float
  %4126 = lshr i32 %4120, 16
  %4127 = and i32 %4126, 255
  %4128 = uitofp i32 %4127 to float
  %4129 = fmul fast float %4128, 0x3F70101000000000
  %4130 = fmul fast float %4116, %4122
  %4131 = fadd fast float %4130, %4125
  %4132 = fmul fast float %4131, 0x3F70101000000000
  %4133 = fadd fast float %4117, -5.000000e-01
  %4134 = fadd fast float %4119, -5.000000e-01
  %4135 = fmul fast float %4133, %4129
  %4136 = fmul fast float %4134, %4129
  %4137 = fadd fast float %4135, 5.000000e-01
  %4138 = fadd fast float %4136, 5.000000e-01
  %4139 = fmul fast float %4100, %3921
  %4140 = fmul fast float %4101, %3922
  %4141 = fmul fast float %4102, %3923
  %4142 = fmul fast float %4137, 2.000000e+00
  %4143 = fadd fast float %4142, -1.000000e+00
  %4144 = fmul fast float %4138, 2.000000e+00
  %4145 = fadd fast float %4144, -1.000000e+00
  %4146 = fadd fast float %4143, %4145
  %4147 = fmul fast float %4146, 5.000000e-01
  %4148 = fsub fast float %4143, %4145
  %4149 = fmul fast float %4148, 5.000000e-01
  %4150 = call float @dx.op.unary.f32(i32 6, float %4147)  ; FAbs(value)
  %4151 = fsub fast float 1.000000e+00, %4150
  %4152 = call float @dx.op.unary.f32(i32 6, float %4149)  ; FAbs(value)
  %4153 = fsub fast float %4151, %4152
  %4154 = call float @dx.op.dot3.f32(i32 55, float %4147, float %4149, float %4153, float %4147, float %4149, float %4153)  ; Dot3(ax,ay,az,bx,by,bz)
  %4155 = call float @dx.op.unary.f32(i32 25, float %4154)  ; Rsqrt(value)
  %4156 = fmul fast float %4147, %4155
  %4157 = fmul fast float %4149, %4155
  %4158 = fmul fast float %4155, %4153
  %4159 = fmul fast float %4158, %3886
  %4160 = fmul fast float %4158, %3887
  %4161 = fmul fast float %4158, %3888
  %4162 = fmul fast float %4156, %3909
  %4163 = fmul fast float %4156, %3910
  %4164 = fmul fast float %4156, %3911
  %4165 = fadd fast float %4162, %4159
  %4166 = fadd fast float %4163, %4160
  %4167 = fadd fast float %4164, %4161
  %4168 = fmul fast float %4157, %3915
  %4169 = fmul fast float %4157, %3916
  %4170 = fmul fast float %4157, %3917
  %4171 = fadd fast float %4165, %4168
  %4172 = fadd fast float %4166, %4169
  %4173 = fadd fast float %4167, %4170
  %4174 = call float @dx.op.dot3.f32(i32 55, float %4171, float %4172, float %4173, float %4171, float %4172, float %4173)  ; Dot3(ax,ay,az,bx,by,bz)
  %4175 = call float @dx.op.unary.f32(i32 25, float %4174)  ; Rsqrt(value)
  %4176 = fmul fast float %4171, %4175
  %4177 = fmul fast float %4172, %4175
  %4178 = fmul fast float %4173, %4175
  %4179 = icmp ne i32 %4095, 0
  %4180 = select i1 %4179, float 1.000000e+00, float 0.000000e+00
  %4181 = fmul fast float %4085, %4180
  %4182 = and i32 %3936, 1
  %4183 = icmp eq i32 %4182, 0
  br i1 %4183, label %4184, label %4188

; <label>:4184                                    ; preds = %4093
  %4185 = fsub fast float %4176, %3869
  %4186 = fsub fast float %4177, %3870
  %4187 = fsub fast float %4178, %3871
  br label %4188

; <label>:4188                                    ; preds = %4184, %4093
  %4189 = phi float [ %4185, %4184 ], [ %4176, %4093 ]
  %4190 = phi float [ %4186, %4184 ], [ %4177, %4093 ]
  %4191 = phi float [ %4187, %4184 ], [ %4178, %4093 ]
  %4192 = fmul float %4191, %4181
  %4193 = fmul float %4190, %4181
  %4194 = fmul float %4189, %4181
  %4195 = fadd fast float %4194, %3869
  %4196 = fadd fast float %4193, %3870
  %4197 = fadd fast float %4192, %3871
  %4198 = icmp ne i32 %4094, 0
  %4199 = select i1 %4198, float 1.000000e+00, float 0.000000e+00
  %4200 = fmul fast float %4085, %4199
  %4201 = fsub fast float %4139, %3876
  %4202 = fsub fast float %4140, %3877
  %4203 = fsub fast float %4141, %3878
  %4204 = fmul fast float %4201, %4200
  %4205 = fmul fast float %4202, %4200
  %4206 = fmul fast float %4203, %4200
  %4207 = fadd fast float %4204, %3876
  %4208 = fadd fast float %4205, %3877
  %4209 = fadd fast float %4206, %3878
  %4210 = fsub fast float %4112, %3875
  %4211 = fmul fast float %4210, %4200
  %4212 = fadd fast float %4211, %3875
  %4213 = fmul fast float %4200, %3862
  %4214 = fsub fast float %3862, %4213
  %4215 = fmul fast float %4200, %3861
  %4216 = fsub fast float %3861, %4215
  %4217 = bitcast float %3930 to i32
  %4218 = lshr i32 %4217, 16
  %4219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4218)  ; LegacyF16ToF32(value)
  %4220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %4221 = extractvalue %dx.types.ResRet.i32 %4220, 0
  %4222 = and i32 %4221, 1
  %4223 = icmp eq i32 %4222, 0
  br i1 %4223, label %4224, label %4249

; <label>:4224                                    ; preds = %4188
  %4225 = fadd fast float %4112, 0xBFB99999A0000000
  %4226 = call float @dx.op.unary.f32(i32 7, float %4225)  ; Saturate(value)
  %4227 = fmul fast float %4226, 0x3FF1C71C80000000
  %4228 = fsub fast float 1.000000e+00, %4227
  %4229 = call float @dx.op.unary.f32(i32 7, float %4228)  ; Saturate(value)
  %4230 = fmul fast float %4229, %4139
  %4231 = fmul fast float %4229, %4140
  %4232 = fmul fast float %4229, %4141
  %4233 = call float @dx.op.unary.f32(i32 7, float %4230)  ; Saturate(value)
  %4234 = call float @dx.op.unary.f32(i32 7, float %4231)  ; Saturate(value)
  %4235 = call float @dx.op.unary.f32(i32 7, float %4232)  ; Saturate(value)
  %4236 = call float @dx.op.binary.f32(i32 35, float %4234, float %4235)  ; FMax(a,b)
  %4237 = call float @dx.op.binary.f32(i32 35, float %4233, float %4236)  ; FMax(a,b)
  %4238 = fcmp fast ogt float %4237, 0.000000e+00
  %4239 = bitcast float %4237 to i32
  %4240 = sub nsw i32 2129859010, %4239
  %4241 = bitcast i32 %4240 to float
  %4242 = select i1 %4238, float %4241, float 0.000000e+00
  %4243 = fmul fast float %4233, %4219
  %4244 = fmul fast float %4234, %4219
  %4245 = fmul fast float %4235, %4219
  %4246 = fmul fast float %4243, %4242
  %4247 = fmul fast float %4244, %4242
  %4248 = fmul fast float %4245, %4242
  br label %4249

; <label>:4249                                    ; preds = %4224, %4188
  %4250 = phi float [ %4219, %4188 ], [ %4246, %4224 ]
  %4251 = phi float [ %4219, %4188 ], [ %4247, %4224 ]
  %4252 = phi float [ %4219, %4188 ], [ %4248, %4224 ]
  %4253 = fsub fast float %4250, %3863
  %4254 = fsub fast float %4251, %3864
  %4255 = fsub fast float %4252, %3865
  %4256 = fmul fast float %4253, %4200
  %4257 = fmul fast float %4254, %4200
  %4258 = fmul fast float %4255, %4200
  %4259 = fadd fast float %4256, %3863
  %4260 = fadd fast float %4257, %3864
  %4261 = fadd fast float %4258, %3865
  %4262 = fadd fast float %4085, %3874
  %4263 = call float @dx.op.unary.f32(i32 7, float %4262)  ; Saturate(value)
  %4264 = fsub fast float %4132, %3873
  %4265 = fmul fast float %4264, %4181
  %4266 = fadd fast float %4265, %3873
  %4267 = fsub fast float %4118, %3872
  %4268 = fmul fast float %4267, %4181
  %4269 = fadd fast float %4268, %3872
  %4270 = call float @dx.op.dot3.f32(i32 55, float %4139, float %4140, float %4141, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 0
  %4273 = extractvalue %dx.types.CBufRet.f32 %4271, 1
  %4274 = fmul fast float %4273, %4270
  %4275 = fadd fast float %4274, %4272
  %4276 = call float @dx.op.unary.f32(i32 7, float %4275)  ; Saturate(value)
  %4277 = bitcast float %3924 to i32
  %4278 = and i32 %4277, 65535
  %4279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4278)  ; LegacyF16ToF32(value)
  %4280 = lshr i32 %4277, 16
  %4281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4280)  ; LegacyF16ToF32(value)
  %4282 = fcmp fast oge float %4279, 0.000000e+00
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 0
  %4285 = select i1 %4282, float %4279, float %4284
  %4286 = fadd fast float %4285, %4281
  %4287 = fsub fast float %4276, %3860
  %4288 = fmul fast float %4287, %4085
  %4289 = fadd fast float %4288, %3860
  %4290 = fmul fast float %4286, %4085
  %4291 = call float @dx.op.binary.f32(i32 35, float %3859, float %4290)  ; FMax(a,b)
  %4292 = and i32 %3936, 16
  %4293 = icmp eq i32 %4292, 0
  br i1 %4293, label %4315, label %4294

; <label>:4294                                    ; preds = %4249
  %4295 = add i32 %3927, 0
  %4296 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4295, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4297 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4296, %dx.types.Handle %4098, float %4026, float %4029, float undef, float undef, i32 0, i32 0, i32 undef, float %4031, float %4033, float undef, float %4035, float %4037, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = extractvalue %dx.types.ResRet.f32 %4297, 1
  %4300 = extractvalue %dx.types.ResRet.f32 %4297, 2
  %4301 = and i32 %4217, 65535
  %4302 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4301)  ; LegacyF16ToF32(value)
  %4303 = fmul fast float %4298, %3921
  %4304 = fmul fast float %4299, %3922
  %4305 = fmul fast float %4300, %3923
  %4306 = and i32 %3936, 16384
  %4307 = icmp ne i32 %4306, 0
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 0
  %4310 = select i1 %4307, float %4309, float 1.000000e+00
  %4311 = fmul fast float %4310, %4302
  %4312 = fmul fast float %4303, %4311
  %4313 = fmul fast float %4304, %4311
  %4314 = fmul fast float %4305, %4311
  br label %4315

; <label>:4315                                    ; preds = %4294, %4249
  %4316 = phi float [ %4312, %4294 ], [ 0.000000e+00, %4249 ]
  %4317 = phi float [ %4313, %4294 ], [ 0.000000e+00, %4249 ]
  %4318 = phi float [ %4314, %4294 ], [ 0.000000e+00, %4249 ]
  %4319 = fsub fast float %4316, %3866
  %4320 = fsub fast float %4317, %3867
  %4321 = fsub fast float %4318, %3868
  %4322 = fmul fast float %4319, %4085
  %4323 = fmul fast float %4320, %4085
  %4324 = fmul fast float %4321, %4085
  %4325 = fadd fast float %4322, %3866
  %4326 = fadd fast float %4323, %3867
  %4327 = fadd fast float %4324, %3868
  br label %3985

; <label>:4328                                    ; preds = %3985
  br label %4329

; <label>:4329                                    ; preds = %4328, %3802
  %4330 = phi float [ 0.000000e+00, %3802 ], [ %3986, %4328 ]
  %4331 = phi float [ %3771, %3802 ], [ %3987, %4328 ]
  %4332 = phi float [ %3769, %3802 ], [ %3988, %4328 ]
  %4333 = phi float [ 0.000000e+00, %3802 ], [ %3989, %4328 ]
  %4334 = phi float [ 0.000000e+00, %3802 ], [ %3990, %4328 ]
  %4335 = phi float [ %3762, %3802 ], [ %3991, %4328 ]
  %4336 = phi float [ %3763, %3802 ], [ %3992, %4328 ]
  %4337 = phi float [ %3764, %3802 ], [ %3993, %4328 ]
  %4338 = phi float [ %3759, %3802 ], [ %3994, %4328 ]
  %4339 = phi float [ %3760, %3802 ], [ %3995, %4328 ]
  %4340 = phi float [ %3761, %3802 ], [ %3996, %4328 ]
  %4341 = phi float [ %3797, %3802 ], [ %3997, %4328 ]
  %4342 = phi float [ %3798, %3802 ], [ %3998, %4328 ]
  %4343 = phi float [ %3799, %3802 ], [ %3999, %4328 ]
  %4344 = phi float [ %3767, %3802 ], [ %4000, %4328 ]
  %4345 = phi float [ %3766, %3802 ], [ %4001, %4328 ]
  %4346 = phi float [ 0.000000e+00, %3802 ], [ %4002, %4328 ]
  %4347 = phi float [ %3765, %3802 ], [ %4003, %4328 ]
  %4348 = phi float [ %3756, %3802 ], [ %4004, %4328 ]
  %4349 = phi float [ %3757, %3802 ], [ %4005, %4328 ]
  %4350 = phi float [ %3758, %3802 ], [ %4006, %4328 ]
  %4351 = call float @dx.op.dot3.f32(i32 55, float %4341, float %4342, float %4343, float %4341, float %4342, float %4343)  ; Dot3(ax,ay,az,bx,by,bz)
  %4352 = call float @dx.op.unary.f32(i32 25, float %4351)  ; Rsqrt(value)
  %4353 = fmul fast float %4352, %4341
  %4354 = fmul fast float %4352, %4342
  %4355 = fmul fast float %4352, %4343
  %4356 = fadd fast float %4346, %930
  %4357 = call float @dx.op.unary.f32(i32 7, float %4356)  ; Saturate(value)
  %4358 = call float @dx.op.dot3.f32(i32 55, float %4353, float %4354, float %4355, float %4353, float %4354, float %4355)  ; Dot3(ax,ay,az,bx,by,bz)
  %4359 = call float @dx.op.unary.f32(i32 25, float %4358)  ; Rsqrt(value)
  %4360 = fmul fast float %4359, %4353
  %4361 = fmul fast float %4359, %4354
  %4362 = fmul fast float %4359, %4355
  br label %4363

; <label>:4363                                    ; preds = %4329, %3753
  %4364 = phi float [ %4360, %4329 ], [ %3797, %3753 ]
  %4365 = phi float [ %4361, %4329 ], [ %3798, %3753 ]
  %4366 = phi float [ %4362, %4329 ], [ %3799, %3753 ]
  %4367 = phi float [ %4338, %4329 ], [ %3759, %3753 ]
  %4368 = phi float [ %4339, %4329 ], [ %3760, %3753 ]
  %4369 = phi float [ %4340, %4329 ], [ %3761, %3753 ]
  %4370 = phi float [ %4335, %4329 ], [ %3762, %3753 ]
  %4371 = phi float [ %4336, %4329 ], [ %3763, %3753 ]
  %4372 = phi float [ %4337, %4329 ], [ %3764, %3753 ]
  %4373 = phi float [ %4348, %4329 ], [ %3756, %3753 ]
  %4374 = phi float [ %4349, %4329 ], [ %3757, %3753 ]
  %4375 = phi float [ %4350, %4329 ], [ %3758, %3753 ]
  %4376 = phi float [ %4347, %4329 ], [ %3765, %3753 ]
  %4377 = phi float [ %4357, %4329 ], [ %930, %3753 ]
  %4378 = phi float [ %4345, %4329 ], [ %3766, %3753 ]
  %4379 = phi float [ %4344, %4329 ], [ %3767, %3753 ]
  %4380 = phi float [ %4334, %4329 ], [ 0.000000e+00, %3753 ]
  %4381 = phi float [ %4333, %4329 ], [ 0.000000e+00, %3753 ]
  %4382 = phi float [ %4330, %4329 ], [ 0.000000e+00, %3753 ]
  %4383 = phi float [ %4331, %4329 ], [ %3771, %3753 ]
  %4384 = phi float [ %4332, %4329 ], [ %3769, %3753 ]
  %4385 = fadd fast float %4376, 0xBFB99999A0000000
  %4386 = call float @dx.op.unary.f32(i32 7, float %4385)  ; Saturate(value)
  %4387 = fmul fast float %4386, 0x3FF1C71C80000000
  %4388 = call float @dx.op.binary.f32(i32 36, float %4376, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4389 = fsub fast float 1.000000e+00, %4387
  %4390 = call float @dx.op.unary.f32(i32 7, float %4389)  ; Saturate(value)
  %4391 = fmul fast float %4390, %4373
  %4392 = fmul fast float %4390, %4374
  %4393 = fmul fast float %4390, %4375
  %4394 = call float @dx.op.unary.f32(i32 7, float %4391)  ; Saturate(value)
  %4395 = call float @dx.op.unary.f32(i32 7, float %4392)  ; Saturate(value)
  %4396 = call float @dx.op.unary.f32(i32 7, float %4393)  ; Saturate(value)
  %4397 = fmul fast float %4387, %4373
  %4398 = fmul fast float %4387, %4374
  %4399 = fmul fast float %4387, %4375
  %4400 = fadd fast float %4397, %4388
  %4401 = fadd fast float %4398, %4388
  %4402 = fadd fast float %4399, %4388
  %4403 = call float @dx.op.unary.f32(i32 7, float %4400)  ; Saturate(value)
  %4404 = call float @dx.op.unary.f32(i32 7, float %4401)  ; Saturate(value)
  %4405 = call float @dx.op.unary.f32(i32 7, float %4402)  ; Saturate(value)
  %4406 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %338, i32 undef)  ; BufferLoad(srv,index,wot)
  %4408 = extractvalue %dx.types.ResRet.i32 %4407, 0
  %4409 = and i32 %4408, 1
  %4410 = icmp eq i32 %4409, 0
  br i1 %4410, label %4425, label %4411

; <label>:4411                                    ; preds = %4363
  %4412 = call float @dx.op.binary.f32(i32 35, float %4395, float %4396)  ; FMax(a,b)
  %4413 = call float @dx.op.binary.f32(i32 35, float %4394, float %4412)  ; FMax(a,b)
  %4414 = fcmp fast ogt float %4413, 0.000000e+00
  %4415 = bitcast float %4413 to i32
  %4416 = sub nsw i32 2129859010, %4415
  %4417 = bitcast i32 %4416 to float
  %4418 = select i1 %4414, float %4417, float 0.000000e+00
  %4419 = fmul fast float %4394, %4370
  %4420 = fmul fast float %4395, %4371
  %4421 = fmul fast float %4396, %4372
  %4422 = fmul fast float %4419, %4418
  %4423 = fmul fast float %4420, %4418
  %4424 = fmul fast float %4421, %4418
  br label %4425

; <label>:4425                                    ; preds = %4411, %4363
  %4426 = phi float [ %4422, %4411 ], [ %4370, %4363 ]
  %4427 = phi float [ %4423, %4411 ], [ %4371, %4363 ]
  %4428 = phi float [ %4424, %4411 ], [ %4372, %4363 ]
  %4429 = fadd fast float %4394, 0xBFD51EB860000000
  %4430 = fadd fast float %4395, 0xBFD51EB860000000
  %4431 = fadd fast float %4396, 0xBFD51EB860000000
  %4432 = fmul fast float %4429, %4429
  %4433 = fmul fast float %4430, %4430
  %4434 = fmul fast float %4431, %4431
  %4435 = fmul fast float %4432, %4432
  %4436 = fmul fast float %4435, 1.000000e+02
  %4437 = fmul fast float %4433, %4433
  %4438 = fmul fast float %4437, 1.000000e+02
  %4439 = fmul fast float %4434, %4434
  %4440 = fmul fast float %4439, 1.000000e+02
  %4441 = fadd fast float %4436, 3.500000e+00
  %4442 = fadd fast float %4438, 3.500000e+00
  %4443 = fadd fast float %4440, 3.500000e+00
  %4444 = call float @dx.op.binary.f32(i32 35, float %4426, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4445 = call float @dx.op.binary.f32(i32 35, float %4427, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4446 = call float @dx.op.binary.f32(i32 35, float %4428, float 0x3F0FFB4800000000)  ; FMax(a,b)
  %4447 = fdiv fast float %4441, %4444
  %4448 = fdiv fast float %4442, %4445
  %4449 = fdiv fast float %4443, %4446
  %4450 = fmul fast float %3768, 0xBFF7154760000000
  %4451 = fmul fast float %4450, %4447
  %4452 = call float @dx.op.unary.f32(i32 21, float %4451)  ; Exp(value)
  %4453 = fmul fast float %4452, 2.500000e-01
  %4454 = fmul fast float %3768, 0xBFDEC709E0000000
  %4455 = fmul fast float %4454, %4447
  %4456 = call float @dx.op.unary.f32(i32 21, float %4455)  ; Exp(value)
  %4457 = fmul fast float %4456, 7.500000e-01
  %4458 = fmul fast float %4450, %4448
  %4459 = call float @dx.op.unary.f32(i32 21, float %4458)  ; Exp(value)
  %4460 = fmul fast float %4459, 2.500000e-01
  %4461 = fmul fast float %4454, %4448
  %4462 = call float @dx.op.unary.f32(i32 21, float %4461)  ; Exp(value)
  %4463 = fmul fast float %4462, 7.500000e-01
  %4464 = fmul fast float %4450, %4449
  %4465 = call float @dx.op.unary.f32(i32 21, float %4464)  ; Exp(value)
  %4466 = fmul fast float %4465, 2.500000e-01
  %4467 = fmul fast float %4454, %4449
  %4468 = call float @dx.op.unary.f32(i32 21, float %4467)  ; Exp(value)
  %4469 = fmul fast float %4468, 7.500000e-01
  %4470 = fadd fast float %4453, %4457
  %4471 = fadd fast float %4460, %4463
  %4472 = fadd fast float %4466, %4469
  %4473 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4474 = extractvalue %dx.types.CBufRet.i32 %4473, 3
  %4475 = and i32 %4474, 8
  %4476 = icmp ne i32 %4475, 0
  %4477 = call float @dx.op.binary.f32(i32 35, float %4394, float %4373)  ; FMax(a,b)
  %4478 = call float @dx.op.binary.f32(i32 35, float %4395, float %4373)  ; FMax(a,b)
  %4479 = call float @dx.op.binary.f32(i32 35, float %4396, float %4373)  ; FMax(a,b)
  %4480 = call float @dx.op.dot3.f32(i32 55, float %4394, float %4395, float %4396, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4481 = select i1 %169, float %4373, float %4394
  %4482 = select i1 %169, float %4480, float %4395
  %4483 = select i1 %169, float 1.000000e+00, float %4396
  %4484 = select i1 %4476, float %4477, float %4481
  %4485 = select i1 %4476, float %4478, float %4482
  %4486 = select i1 %4476, float %4479, float %4483
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 0
  %4489 = extractvalue %dx.types.CBufRet.f32 %4487, 1
  %4490 = extractvalue %dx.types.CBufRet.f32 %4487, 2
  %4491 = fadd fast float %4488, %127
  %4492 = fadd fast float %4489, %128
  %4493 = fadd fast float %4490, %129
  %4494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4495 = extractvalue %dx.types.CBufRet.f32 %4494, 0
  %4496 = extractvalue %dx.types.CBufRet.f32 %4494, 1
  %4497 = fsub fast float %4491, %4495
  %4498 = fsub fast float %4492, %4496
  %4499 = fmul fast float %4497, %4497
  %4500 = fmul fast float %4498, %4498
  %4501 = fadd fast float %4499, %4500
  %4502 = call float @dx.op.unary.f32(i32 24, float %4501)  ; Sqrt(value)
  %4503 = extractvalue %dx.types.CBufRet.f32 %4494, 2
  %4504 = fcmp fast olt float %4502, %4503
  br i1 %4504, label %4505, label %4572

; <label>:4505                                    ; preds = %4425
  %4506 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4507 = extractvalue %dx.types.CBufRet.f32 %4506, 0
  %4508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4509 = extractvalue %dx.types.CBufRet.f32 %4508, 0
  %4510 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4511 = extractvalue %dx.types.CBufRet.f32 %4510, 0
  %4512 = extractvalue %dx.types.CBufRet.f32 %4506, 1
  %4513 = extractvalue %dx.types.CBufRet.f32 %4508, 1
  %4514 = extractvalue %dx.types.CBufRet.f32 %4510, 1
  %4515 = extractvalue %dx.types.CBufRet.f32 %4506, 3
  %4516 = extractvalue %dx.types.CBufRet.f32 %4508, 3
  %4517 = extractvalue %dx.types.CBufRet.f32 %4510, 3
  %4518 = fadd fast float %4515, %4491
  %4519 = fadd fast float %4516, %4492
  %4520 = fadd fast float %4517, %4493
  %4521 = fmul fast float %4518, %4507
  %4522 = call float @dx.op.tertiary.f32(i32 46, float %4519, float %4509, float %4521)  ; FMad(a,b,c)
  %4523 = call float @dx.op.tertiary.f32(i32 46, float %4520, float %4511, float %4522)  ; FMad(a,b,c)
  %4524 = fmul fast float %4518, %4512
  %4525 = call float @dx.op.tertiary.f32(i32 46, float %4519, float %4513, float %4524)  ; FMad(a,b,c)
  %4526 = call float @dx.op.tertiary.f32(i32 46, float %4520, float %4514, float %4525)  ; FMad(a,b,c)
  %4527 = fsub fast float %4523, %4515
  %4528 = fsub fast float %4526, %4516
  %4529 = fsub fast float %4527, %4495
  %4530 = fadd fast float %4529, %4503
  %4531 = fsub fast float %4528, %4496
  %4532 = fadd fast float %4531, %4503
  %4533 = extractvalue %dx.types.CBufRet.f32 %4494, 3
  %4534 = fmul fast float %4530, %4533
  %4535 = fmul fast float %4532, %4533
  %4536 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4537 = call float @dx.op.unary.f32(i32 7, float %4535)  ; Saturate(value)
  %4538 = fsub fast float 1.000000e+00, %4536
  %4539 = fsub fast float 1.000000e+00, %4537
  %4540 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %4538, float %4539, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4541 = extractvalue %dx.types.ResRet.f32 %4540, 0
  %4542 = fcmp fast ugt float %4541, 0.000000e+00
  br i1 %4542, label %4543, label %4846

; <label>:4543                                    ; preds = %4505
  %4544 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4545 = extractvalue %dx.types.CBufRet.f32 %4544, 2
  %4546 = fmul fast float %4545, %4541
  %4547 = extractvalue %dx.types.CBufRet.f32 %4544, 3
  %4548 = fadd fast float %4547, %4546
  %4549 = extractvalue %dx.types.CBufRet.f32 %4510, 2
  %4550 = fadd fast float %4548, %4517
  %4551 = fmul fast float %4523, %4511
  %4552 = call float @dx.op.tertiary.f32(i32 46, float %4526, float %4514, float %4551)  ; FMad(a,b,c)
  %4553 = call float @dx.op.tertiary.f32(i32 46, float %4550, float %4549, float %4552)  ; FMad(a,b,c)
  %4554 = fsub fast float %4553, %4517
  %4555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4556 = extractvalue %dx.types.CBufRet.f32 %4555, 2
  %4557 = fsub fast float %4554, %4556
  %4558 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %4538, float %4539, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4559 = extractvalue %dx.types.ResRet.f32 %4558, 0
  %4560 = extractvalue %dx.types.ResRet.f32 %4558, 1
  %4561 = extractvalue %dx.types.ResRet.f32 %4558, 2
  %4562 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %4538, float %4539, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4563 = extractvalue %dx.types.ResRet.f32 %4562, 0
  %4564 = extractvalue %dx.types.ResRet.f32 %4562, 1
  %4565 = extractvalue %dx.types.ResRet.f32 %4562, 2
  %4566 = fadd fast float %4563, %4559
  %4567 = fmul fast float %4566, 0x3F847AE140000000
  %4568 = fadd fast float %4564, %4560
  %4569 = fmul fast float %4568, 0x3F847AE140000000
  %4570 = fadd fast float %4565, %4561
  %4571 = fmul fast float %4570, 0x3F847AE140000000
  br label %4846

; <label>:4572                                    ; preds = %4425
  %4573 = and i32 %145, 1
  %4574 = icmp eq i32 %4573, 0
  br i1 %4574, label %4846, label %4575

; <label>:4575                                    ; preds = %4572
  %4576 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4577 = extractvalue %dx.types.CBufRet.f32 %4576, 0
  %4578 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4579 = extractvalue %dx.types.CBufRet.f32 %4578, 0
  %4580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4581 = extractvalue %dx.types.CBufRet.f32 %4580, 0
  %4582 = extractvalue %dx.types.CBufRet.f32 %4576, 1
  %4583 = extractvalue %dx.types.CBufRet.f32 %4578, 1
  %4584 = extractvalue %dx.types.CBufRet.f32 %4580, 1
  %4585 = extractvalue %dx.types.CBufRet.f32 %4576, 3
  %4586 = extractvalue %dx.types.CBufRet.f32 %4578, 3
  %4587 = extractvalue %dx.types.CBufRet.f32 %4580, 3
  %4588 = fadd fast float %4585, %4491
  %4589 = fadd fast float %4586, %4492
  %4590 = fadd fast float %4587, %4493
  %4591 = fmul fast float %4588, %4577
  %4592 = call float @dx.op.tertiary.f32(i32 46, float %4589, float %4579, float %4591)  ; FMad(a,b,c)
  %4593 = call float @dx.op.tertiary.f32(i32 46, float %4590, float %4581, float %4592)  ; FMad(a,b,c)
  %4594 = fmul fast float %4588, %4582
  %4595 = call float @dx.op.tertiary.f32(i32 46, float %4589, float %4583, float %4594)  ; FMad(a,b,c)
  %4596 = call float @dx.op.tertiary.f32(i32 46, float %4590, float %4584, float %4595)  ; FMad(a,b,c)
  %4597 = fsub fast float %4593, %4585
  %4598 = fsub fast float %4596, %4586
  %4599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4600 = extractvalue %dx.types.CBufRet.f32 %4599, 0
  %4601 = extractvalue %dx.types.CBufRet.f32 %4599, 1
  %4602 = extractvalue %dx.types.CBufRet.f32 %4599, 2
  %4603 = extractvalue %dx.types.CBufRet.f32 %4599, 3
  %4604 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4605 = extractvalue %dx.types.CBufRet.f32 %4604, 3
  %4606 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4607 = extractvalue %dx.types.CBufRet.i32 %4606, 0
  %4608 = extractvalue %dx.types.CBufRet.i32 %4606, 1
  %4609 = udiv i32 %4608, %4607
  %4610 = fsub fast float %4597, %4600
  %4611 = fsub fast float %4598, %4601
  %4612 = call float @dx.op.binary.f32(i32 35, float %4610, float 0.000000e+00)  ; FMax(a,b)
  %4613 = call float @dx.op.binary.f32(i32 35, float %4611, float 0.000000e+00)  ; FMax(a,b)
  %4614 = call float @dx.op.binary.f32(i32 36, float %4612, float %4602)  ; FMin(a,b)
  %4615 = call float @dx.op.binary.f32(i32 36, float %4613, float %4603)  ; FMin(a,b)
  %4616 = add i32 %4607, -1
  %4617 = add i32 %4609, -1
  %4618 = fmul fast float %4614, %4605
  %4619 = fmul fast float %4615, %4605
  %4620 = fptoui float %4618 to i32
  %4621 = fptoui float %4619 to i32
  %4622 = call i32 @dx.op.binary.i32(i32 40, i32 %4620, i32 %4616)  ; UMin(a,b)
  %4623 = call i32 @dx.op.binary.i32(i32 40, i32 %4621, i32 %4617)  ; UMin(a,b)
  %4624 = mul i32 %4623, %4607
  %4625 = add i32 %4624, %4622
  %4626 = shl i32 %4625, 2
  %4627 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %4626, i32 undef)  ; BufferLoad(srv,index,wot)
  %4628 = extractvalue %dx.types.ResRet.i32 %4627, 0
  %4629 = icmp eq i32 %4628, -1
  br i1 %4629, label %4846, label %4630

; <label>:4630                                    ; preds = %4575
  %4631 = mul i32 %4628, 148
  %4632 = add i32 %4631, 4
  %4633 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4632, i32 undef)  ; BufferLoad(srv,index,wot)
  %4634 = extractvalue %dx.types.ResRet.f32 %4633, 0
  %4635 = add i32 %4631, 8
  %4636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4635, i32 undef)  ; BufferLoad(srv,index,wot)
  %4637 = extractvalue %dx.types.ResRet.f32 %4636, 0
  %4638 = add i32 %4631, 36
  %4639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4638, i32 undef)  ; BufferLoad(srv,index,wot)
  %4640 = extractvalue %dx.types.ResRet.f32 %4639, 0
  %4641 = add i32 %4631, 60
  %4642 = add i32 %4631, 92
  %4643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4642, i32 undef)  ; BufferLoad(srv,index,wot)
  %4644 = extractvalue %dx.types.ResRet.i32 %4643, 0
  %4645 = add i32 %4631, 116
  %4646 = fsub fast float %4597, %4634
  %4647 = fsub fast float %4598, %4637
  %4648 = fmul fast float %4605, %4646
  %4649 = fmul fast float %4605, %4647
  %4650 = call float @dx.op.unary.f32(i32 7, float %4648)  ; Saturate(value)
  %4651 = call float @dx.op.unary.f32(i32 7, float %4649)  ; Saturate(value)
  %4652 = fsub fast float 1.000000e+00, %4651
  %4653 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4654 = extractvalue %dx.types.CBufRet.f32 %4653, 2
  %4655 = call float @dx.op.unary.f32(i32 83, float %4650)  ; DerivCoarseX(value)
  %4656 = call float @dx.op.unary.f32(i32 83, float %4652)  ; DerivCoarseX(value)
  %4657 = call float @dx.op.unary.f32(i32 84, float %4650)  ; DerivCoarseY(value)
  %4658 = call float @dx.op.unary.f32(i32 84, float %4652)  ; DerivCoarseY(value)
  %4659 = fmul fast float %4655, %4654
  %4660 = fmul fast float %4656, %4654
  %4661 = fmul fast float %4657, %4654
  %4662 = fmul fast float %4658, %4654
  %4663 = call float @dx.op.dot2.f32(i32 54, float %4661, float %4662, float %4661, float %4662)  ; Dot2(ax,ay,bx,by)
  %4664 = call float @dx.op.dot2.f32(i32 54, float %4659, float %4660, float %4659, float %4660)  ; Dot2(ax,ay,bx,by)
  %4665 = call float @dx.op.binary.f32(i32 35, float %4664, float %4663)  ; FMax(a,b)
  %4666 = call float @dx.op.unary.f32(i32 23, float %4665)  ; Log(value)
  %4667 = fmul fast float %4666, 5.000000e-01
  %4668 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4669 = extractvalue %dx.types.CBufRet.f32 %4668, 1
  %4670 = fadd fast float %4669, %4667
  %4671 = call float @dx.op.binary.f32(i32 35, float %4670, float 0.000000e+00)  ; FMax(a,b)
  %4672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4673 = extractvalue %dx.types.CBufRet.f32 %4672, 3
  %4674 = fadd fast float %4673, %4671
  %4675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4676 = extractvalue %dx.types.CBufRet.f32 %4675, 3
  %4677 = fadd fast float %4674, %4676
  %4678 = add i32 %4644, 0
  %4679 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4678, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4680 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4679, i32 0)  ; GetDimensions(handle,mipLevel)
  %4681 = extractvalue %dx.types.Dimensions %4680, 0
  %4682 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4681)  ; FirstbitLo(value)
  %4683 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4684 = extractvalue %dx.types.CBufRet.i32 %4683, 1
  %4685 = sub nsw i32 %4684, %4682
  %4686 = sitofp i32 %4685 to float
  %4687 = fsub fast float %4677, %4686
  %4688 = call float @dx.op.binary.f32(i32 35, float %4687, float 0.000000e+00)  ; FMax(a,b)
  %4689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4679, %dx.types.Handle %32, float %4650, float %4652, float %4640, float undef, i32 0, i32 0, i32 undef, float %4688)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4690 = extractvalue %dx.types.ResRet.f32 %4689, 0
  %4691 = fcmp ule float %4690, 0x3FE0101020000000
  %4692 = extractvalue %dx.types.CBufRet.i32 %4683, 0
  %4693 = and i32 %4692, 128
  %4694 = icmp ne i32 %4693, 0
  %4695 = and i1 %4691, %4694
  br i1 %4695, label %4846, label %4696

; <label>:4696                                    ; preds = %4630
  %4697 = add i32 %4631, 20
  %4698 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4697, i32 undef)  ; BufferLoad(srv,index,wot)
  %4699 = extractvalue %dx.types.ResRet.f32 %4698, 0
  %4700 = add i32 %4631, 24
  %4701 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4700, i32 undef)  ; BufferLoad(srv,index,wot)
  %4702 = extractvalue %dx.types.ResRet.f32 %4701, 0
  %4703 = add i32 %4631, 40
  %4704 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4703, i32 undef)  ; BufferLoad(srv,index,wot)
  %4705 = extractvalue %dx.types.ResRet.f32 %4704, 0
  %4706 = add i32 %4631, 96
  %4707 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4706, i32 undef)  ; BufferLoad(srv,index,wot)
  %4708 = extractvalue %dx.types.ResRet.i32 %4707, 0
  %4709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.f32 %4709, 2
  %4711 = fmul fast float %4710, %4650
  %4712 = fmul fast float %4710, %4652
  %4713 = extractvalue %dx.types.CBufRet.f32 %4709, 3
  %4714 = fadd fast float %4711, %4713
  %4715 = fadd fast float %4712, %4713
  %4716 = add i32 %4708, 0
  %4717 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4716, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4718 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4717, i32 0)  ; GetDimensions(handle,mipLevel)
  %4719 = extractvalue %dx.types.Dimensions %4718, 0
  %4720 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4719)  ; FirstbitLo(value)
  %4721 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4722 = extractvalue %dx.types.CBufRet.i32 %4721, 1
  %4723 = sub nsw i32 %4722, %4720
  %4724 = sitofp i32 %4723 to float
  %4725 = fsub fast float %4674, %4724
  %4726 = call float @dx.op.binary.f32(i32 35, float %4725, float 0.000000e+00)  ; FMax(a,b)
  %4727 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4717, %dx.types.Handle %32, float %4714, float %4715, float %4705, float undef, i32 0, i32 0, i32 undef, float %4726)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4728 = extractvalue %dx.types.ResRet.f32 %4727, 0
  %4729 = fmul fast float %4728, %4699
  %4730 = fadd fast float %4729, %4702
  %4731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4732 = extractvalue %dx.types.CBufRet.f32 %4731, 0
  %4733 = extractvalue %dx.types.CBufRet.f32 %4731, 1
  %4734 = extractvalue %dx.types.CBufRet.f32 %4731, 2
  %4735 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4736 = extractvalue %dx.types.CBufRet.f32 %4735, 3
  %4737 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4738 = extractvalue %dx.types.CBufRet.f32 %4737, 3
  %4739 = extractvalue %dx.types.CBufRet.f32 %4731, 3
  %4740 = fadd fast float %4736, %4597
  %4741 = fadd fast float %4738, %4598
  %4742 = fadd fast float %4730, %4739
  %4743 = fmul fast float %4740, %4732
  %4744 = call float @dx.op.tertiary.f32(i32 46, float %4741, float %4733, float %4743)  ; FMad(a,b,c)
  %4745 = call float @dx.op.tertiary.f32(i32 46, float %4742, float %4734, float %4744)  ; FMad(a,b,c)
  %4746 = fsub fast float %4745, %4739
  %4747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.f32 %4747, 2
  %4749 = fsub fast float %4746, %4748
  %4750 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4751 = extractvalue %dx.types.CBufRet.i32 %4750, 0
  %4752 = call i32 @dx.op.binary.i32(i32 40, i32 %4628, i32 %4751)  ; UMin(a,b)
  %4753 = mul i32 %4752, 36
  %4754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4753, i32 undef)  ; BufferLoad(srv,index,wot)
  %4755 = extractvalue %dx.types.ResRet.i32 %4754, 0
  %4756 = add i32 %4753, 4
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4759 = fmul fast float %4758, %4650
  %4760 = fmul fast float %4758, %4652
  %4761 = extractvalue %dx.types.CBufRet.f32 %4757, 1
  %4762 = fadd fast float %4759, %4761
  %4763 = fadd fast float %4760, %4761
  %4764 = icmp eq i32 %4755, 0
  br i1 %4764, label %4833, label %4765

; <label>:4765                                    ; preds = %4696
  br label %4766

; <label>:4766                                    ; preds = %4823, %4765
  %4767 = phi float [ %4824, %4823 ], [ 0.000000e+00, %4765 ]
  %4768 = phi float [ %4825, %4823 ], [ 0.000000e+00, %4765 ]
  %4769 = phi float [ %4826, %4823 ], [ 0.000000e+00, %4765 ]
  %4770 = phi float [ %4827, %4823 ], [ 0.000000e+00, %4765 ]
  %4771 = phi float [ %4828, %4823 ], [ 0.000000e+00, %4765 ]
  %4772 = phi float [ %4829, %4823 ], [ 0.000000e+00, %4765 ]
  %4773 = phi i32 [ %4830, %4823 ], [ 0, %4765 ]
  %4774 = shl i32 %4773, 2
  %4775 = add i32 %4641, %4774
  %4776 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %4775, i32 undef)  ; BufferLoad(srv,index,wot)
  %4777 = extractvalue %dx.types.ResRet.f32 %4776, 0
  %4778 = add i32 %4645, %4774
  %4779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %4778, i32 undef)  ; BufferLoad(srv,index,wot)
  %4780 = extractvalue %dx.types.ResRet.i32 %4779, 0
  %4781 = add i32 %4780, 0
  %4782 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4781, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4783 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4782, i32 0)  ; GetDimensions(handle,mipLevel)
  %4784 = extractvalue %dx.types.Dimensions %4783, 0
  %4785 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4784)  ; FirstbitLo(value)
  %4786 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4787 = extractvalue %dx.types.CBufRet.i32 %4786, 1
  %4788 = sub nsw i32 %4787, %4785
  %4789 = sitofp i32 %4788 to float
  %4790 = fsub fast float %4674, %4789
  %4791 = call float @dx.op.binary.f32(i32 35, float %4790, float 0.000000e+00)  ; FMax(a,b)
  %4792 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4782, %dx.types.Handle %32, float %4762, float %4763, float %4777, float undef, i32 0, i32 0, i32 undef, float %4791)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4793 = extractvalue %dx.types.ResRet.f32 %4792, 0
  %4794 = fcmp fast ogt float %4793, 0.000000e+00
  br i1 %4794, label %4795, label %4823

; <label>:4795                                    ; preds = %4766
  %4796 = add i32 %4756, %4774
  %4797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %4796, i32 undef)  ; BufferLoad(srv,index,wot)
  %4798 = extractvalue %dx.types.ResRet.i32 %4797, 0
  %4799 = and i32 %4798, 32767
  %4800 = mul nuw nsw i32 %4799, 928
  %4801 = add nuw nsw i32 %4800, 48
  %4802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4801, i32 undef)  ; BufferLoad(srv,index,wot)
  %4803 = extractvalue %dx.types.ResRet.f32 %4802, 0
  %4804 = extractvalue %dx.types.ResRet.f32 %4802, 1
  %4805 = extractvalue %dx.types.ResRet.f32 %4802, 2
  %4806 = add nuw nsw i32 %4800, 60
  %4807 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %4806, i32 undef)  ; BufferLoad(srv,index,wot)
  %4808 = extractvalue %dx.types.ResRet.f32 %4807, 0
  %4809 = extractvalue %dx.types.ResRet.f32 %4807, 1
  %4810 = extractvalue %dx.types.ResRet.f32 %4807, 2
  %4811 = fmul fast float %4803, %4793
  %4812 = fmul fast float %4804, %4793
  %4813 = fmul fast float %4805, %4793
  %4814 = fadd fast float %4811, %4767
  %4815 = fadd fast float %4812, %4768
  %4816 = fadd fast float %4813, %4769
  %4817 = fmul fast float %4808, %4793
  %4818 = fmul fast float %4809, %4793
  %4819 = fmul fast float %4810, %4793
  %4820 = fadd fast float %4817, %4770
  %4821 = fadd fast float %4818, %4771
  %4822 = fadd fast float %4819, %4772
  br label %4823

; <label>:4823                                    ; preds = %4795, %4766
  %4824 = phi float [ %4814, %4795 ], [ %4767, %4766 ]
  %4825 = phi float [ %4815, %4795 ], [ %4768, %4766 ]
  %4826 = phi float [ %4816, %4795 ], [ %4769, %4766 ]
  %4827 = phi float [ %4820, %4795 ], [ %4770, %4766 ]
  %4828 = phi float [ %4821, %4795 ], [ %4771, %4766 ]
  %4829 = phi float [ %4822, %4795 ], [ %4772, %4766 ]
  %4830 = add nuw i32 %4773, 1
  %4831 = icmp eq i32 %4830, %4755
  br i1 %4831, label %4832, label %4766

; <label>:4832                                    ; preds = %4823
  br label %4833

; <label>:4833                                    ; preds = %4832, %4696
  %4834 = phi float [ 0.000000e+00, %4696 ], [ %4824, %4832 ]
  %4835 = phi float [ 0.000000e+00, %4696 ], [ %4825, %4832 ]
  %4836 = phi float [ 0.000000e+00, %4696 ], [ %4826, %4832 ]
  %4837 = phi float [ 0.000000e+00, %4696 ], [ %4827, %4832 ]
  %4838 = phi float [ 0.000000e+00, %4696 ], [ %4828, %4832 ]
  %4839 = phi float [ 0.000000e+00, %4696 ], [ %4829, %4832 ]
  %4840 = fadd fast float %4837, %4834
  %4841 = fmul fast float %4840, 0x3F847AE140000000
  %4842 = fadd fast float %4838, %4835
  %4843 = fmul fast float %4842, 0x3F847AE140000000
  %4844 = fadd fast float %4839, %4836
  %4845 = fmul fast float %4844, 0x3F847AE140000000
  br label %4846

; <label>:4846                                    ; preds = %4833, %4630, %4575, %4572, %4543, %4505
  %4847 = phi float [ %4557, %4543 ], [ -1.310720e+05, %4505 ], [ %4749, %4833 ], [ -1.310720e+05, %4575 ], [ -1.310720e+05, %4630 ], [ -1.310720e+05, %4572 ]
  %4848 = phi float [ %4567, %4543 ], [ 0.000000e+00, %4505 ], [ %4841, %4833 ], [ 0.000000e+00, %4575 ], [ 0.000000e+00, %4630 ], [ 0.000000e+00, %4572 ]
  %4849 = phi float [ %4569, %4543 ], [ 0.000000e+00, %4505 ], [ %4843, %4833 ], [ 0.000000e+00, %4575 ], [ 0.000000e+00, %4630 ], [ 0.000000e+00, %4572 ]
  %4850 = phi float [ %4571, %4543 ], [ 0.000000e+00, %4505 ], [ %4845, %4833 ], [ 0.000000e+00, %4575 ], [ 0.000000e+00, %4630 ], [ 0.000000e+00, %4572 ]
  %4851 = phi i1 [ true, %4543 ], [ false, %4505 ], [ true, %4833 ], [ false, %4575 ], [ false, %4630 ], [ false, %4572 ]
  %4852 = and i32 %145, 3
  %4853 = icmp eq i32 %4852, 1
  %4854 = select i1 %4853, float 1.000000e+00, float 0.000000e+00
  %4855 = fsub fast float %4847, %129
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4857 = select i1 %4851, float %4856, float 1.000000e+00
  %4858 = fmul fast float %4857, %4854
  %4859 = icmp eq i32 %4852, 3
  %4860 = select i1 %4859, float 1.000000e+00, float %4858
  %4861 = call float @dx.op.binary.f32(i32 35, float %4382, float %4860)  ; FMax(a,b)
  %4862 = call float @dx.op.unary.f32(i32 7, float %4861)  ; Saturate(value)
  %4863 = fcmp fast une float %4862, 0.000000e+00
  %4864 = call float @dx.op.dot3.f32(i32 55, float %127, float %128, float %129, float %127, float %128, float %129)  ; Dot3(ax,ay,az,bx,by,bz)
  %4865 = call float @dx.op.unary.f32(i32 25, float %4864)  ; Rsqrt(value)
  br i1 %4863, label %4873, label %4866

; <label>:4866                                    ; preds = %4846
  %4867 = fmul fast float %4865, %127
  %4868 = fmul fast float %4865, %128
  %4869 = fmul fast float %4865, %129
  %4870 = fsub fast float -0.000000e+00, %4867
  %4871 = fsub fast float -0.000000e+00, %4868
  %4872 = fsub fast float -0.000000e+00, %4869
  br label %5041

; <label>:4873                                    ; preds = %4846
  %4874 = fmul fast float %127, %4865
  %4875 = fsub fast float -0.000000e+00, %4874
  %4876 = fmul fast float %128, %4865
  %4877 = fsub fast float -0.000000e+00, %4876
  %4878 = fmul fast float %129, %4865
  %4879 = fsub fast float -0.000000e+00, %4878
  %4880 = call float @dx.op.dot3.f32(i32 55, float %4875, float %4877, float %4879, float %77, float %79, float %81)  ; Dot3(ax,ay,az,bx,by,bz)
  %4881 = fmul fast float %4862, 2.500000e+00
  %4882 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4883 = fmul fast float %4862, 0x4013FFFFE0000000
  %4884 = fadd fast float %4883, 0xBFFFFFFFE0000000
  %4885 = call float @dx.op.unary.f32(i32 7, float %4884)  ; Saturate(value)
  %4886 = fmul fast float %4862, 0x4004000020000000
  %4887 = fadd fast float %4886, 0xBFF8000040000000
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  %4889 = call float @dx.op.unary.f32(i32 7, float %4882)  ; Saturate(value)
  %4890 = fmul fast float %4385, 1.000000e+01
  %4891 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4892 = fmul fast float %4891, 2.000000e+00
  %4893 = fsub fast float 3.000000e+00, %4892
  %4894 = fmul fast float %4891, %4891
  %4895 = fmul fast float %4894, %4893
  %4896 = fsub fast float 1.000000e+00, %4895
  %4897 = fsub fast float 0x3FE3333340000000, %4406
  %4898 = fmul fast float %4897, 0x400AAAAAA0000000
  %4899 = call float @dx.op.unary.f32(i32 7, float %4898)  ; Saturate(value)
  %4900 = fmul fast float %4896, %4899
  %4901 = fmul fast float %4484, 0x3FEA2B8620000000
  %4902 = fmul fast float %4485, 0x3FEA2B8620000000
  %4903 = fmul fast float %4486, 0x3FEA2B8620000000
  %4904 = fadd fast float %4901, 0x3FC81DFBA0000000
  %4905 = fmul fast float %4904, %4484
  %4906 = fadd fast float %4905, 0x3F910E6020000000
  %4907 = fadd fast float %4902, 0x3FC81DFBA0000000
  %4908 = fmul fast float %4907, %4485
  %4909 = fadd fast float %4908, 0x3F910E6020000000
  %4910 = fadd fast float %4903, 0x3FC81DFBA0000000
  %4911 = fmul fast float %4910, %4486
  %4912 = fadd fast float %4911, 0x3F910E6020000000
  %4913 = call float @dx.op.unary.f32(i32 7, float %4906)  ; Saturate(value)
  %4914 = call float @dx.op.unary.f32(i32 7, float %4909)  ; Saturate(value)
  %4915 = call float @dx.op.unary.f32(i32 7, float %4912)  ; Saturate(value)
  %4916 = fsub fast float %4913, %4484
  %4917 = fsub fast float %4914, %4485
  %4918 = fsub fast float %4915, %4486
  %4919 = fmul fast float %4916, %4889
  %4920 = fmul fast float %4919, %4900
  %4921 = fmul fast float %4917, %4889
  %4922 = fmul fast float %4921, %4900
  %4923 = fmul fast float %4918, %4889
  %4924 = fmul fast float %4923, %4900
  %4925 = fadd fast float %4920, %4484
  %4926 = fadd fast float %4922, %4485
  %4927 = fadd fast float %4924, %4486
  %4928 = fmul fast float %4379, %4379
  %4929 = fmul fast float %4928, %4928
  %4930 = fadd fast float %4885, 1.000000e+00
  %4931 = fsub fast float %4930, %4900
  %4932 = call float @dx.op.unary.f32(i32 7, float %4931)  ; Saturate(value)
  %4933 = call float @dx.op.dot3.f32(i32 55, float %77, float %79, float %81, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4934 = call float @dx.op.unary.f32(i32 7, float %4933)  ; Saturate(value)
  %4935 = fsub fast float 1.000000e+00, %4929
  %4936 = call float @dx.op.binary.f32(i32 36, float %4932, float %4935)  ; FMin(a,b)
  %4937 = call float @dx.op.unary.f32(i32 7, float %4888)  ; Saturate(value)
  %4938 = call float @dx.op.binary.f32(i32 35, float %4936, float %4937)  ; FMax(a,b)
  %4939 = fadd fast float %4934, 0xBFE4CCCCC0000000
  %4940 = fmul fast float %4939, 0x4006DB6DA0000000
  %4941 = call float @dx.op.unary.f32(i32 7, float %4940)  ; Saturate(value)
  %4942 = fmul fast float %4941, 2.000000e+00
  %4943 = fsub fast float 3.000000e+00, %4942
  %4944 = bitcast float %4403 to i32
  %4945 = ashr i32 %4944, 1
  %4946 = add nsw i32 %4945, 532487669
  %4947 = bitcast i32 %4946 to float
  %4948 = fsub fast float 1.000000e+00, %4947
  %4949 = bitcast float %4948 to i32
  %4950 = sub nsw i32 2129859010, %4949
  %4951 = bitcast i32 %4950 to float
  %4952 = fmul fast float %4951, 2.000000e+00
  %4953 = bitcast float %4404 to i32
  %4954 = ashr i32 %4953, 1
  %4955 = add nsw i32 %4954, 532487669
  %4956 = bitcast i32 %4955 to float
  %4957 = fsub fast float 1.000000e+00, %4956
  %4958 = bitcast float %4957 to i32
  %4959 = sub nsw i32 2129859010, %4958
  %4960 = bitcast i32 %4959 to float
  %4961 = fmul fast float %4960, 2.000000e+00
  %4962 = bitcast float %4405 to i32
  %4963 = ashr i32 %4962, 1
  %4964 = add nsw i32 %4963, 532487669
  %4965 = bitcast i32 %4964 to float
  %4966 = fsub fast float 1.000000e+00, %4965
  %4967 = bitcast float %4966 to i32
  %4968 = sub nsw i32 2129859010, %4967
  %4969 = bitcast i32 %4968 to float
  %4970 = fmul fast float %4969, 2.000000e+00
  %4971 = fsub fast float 0x4002A9FBE0000000, %4952
  %4972 = fadd fast float %4952, 0x3FD54FDF00000000
  %4973 = bitcast float %4972 to i32
  %4974 = sub nsw i32 2129859010, %4973
  %4975 = bitcast i32 %4974 to float
  %4976 = fmul fast float %4975, %4971
  %4977 = fmul fast float %4976, %4976
  %4978 = fsub fast float 0x4002A9FBE0000000, %4961
  %4979 = fadd fast float %4961, 0x3FD54FDF00000000
  %4980 = bitcast float %4979 to i32
  %4981 = sub nsw i32 2129859010, %4980
  %4982 = bitcast i32 %4981 to float
  %4983 = fmul fast float %4982, %4978
  %4984 = fmul fast float %4983, %4983
  %4985 = fsub fast float 0x4002A9FBE0000000, %4970
  %4986 = fadd fast float %4970, 0x3FD54FDF00000000
  %4987 = bitcast float %4986 to i32
  %4988 = sub nsw i32 2129859010, %4987
  %4989 = bitcast i32 %4988 to float
  %4990 = fmul fast float %4989, %4985
  %4991 = fmul fast float %4990, %4990
  %4992 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4977)  ; FMax(a,b)
  %4993 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4984)  ; FMax(a,b)
  %4994 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4991)  ; FMax(a,b)
  %4995 = fsub fast float 1.000000e+00, %4880
  %4996 = fadd fast float %4995, %4896
  %4997 = call float @dx.op.unary.f32(i32 7, float %4996)  ; Saturate(value)
  %4998 = fsub fast float 1.000000e+00, %4860
  %4999 = fmul fast float %4938, %4998
  %5000 = fmul fast float %4941, %4941
  %5001 = fmul fast float %5000, %4999
  %5002 = fmul fast float %5001, %4943
  %5003 = fmul fast float %4998, 0xBFE99999A0000000
  %5004 = fmul fast float %5003, %4889
  %5005 = fmul fast float %5004, %4900
  %5006 = fadd fast float %5005, 1.000000e+00
  %5007 = fadd fast float %4406, -1.000000e+00
  %5008 = fmul fast float %5006, %5007
  %5009 = fadd fast float %5008, 1.000000e+00
  %5010 = fsub fast float %4992, %4403
  %5011 = fsub fast float %4993, %4404
  %5012 = fsub fast float %4994, %4405
  %5013 = fmul fast float %5002, %5010
  %5014 = fmul fast float %5002, %5011
  %5015 = fmul fast float %5002, %5012
  %5016 = fadd fast float %5013, %4403
  %5017 = fadd fast float %5014, %4404
  %5018 = fadd fast float %5015, %4405
  %5019 = fsub fast float %77, %4364
  %5020 = fsub fast float %79, %4365
  %5021 = fsub fast float %81, %4366
  %5022 = fmul fast float %5002, %5019
  %5023 = fmul fast float %5002, %5020
  %5024 = fmul fast float %5002, %5021
  %5025 = fadd fast float %5022, %4364
  %5026 = fadd fast float %5023, %4365
  %5027 = fadd fast float %5024, %4366
  %5028 = fmul fast float %5002, %4997
  %5029 = call float @dx.op.unary.f32(i32 7, float %5009)  ; Saturate(value)
  %5030 = fsub fast float 1.000000e+00, %5029
  %5031 = fmul fast float %5028, %5030
  %5032 = fadd fast float %5031, %5029
  %5033 = fsub fast float 1.000000e+00, %4379
  %5034 = fmul fast float %5002, %5033
  %5035 = fadd fast float %5034, %4379
  %5036 = call float @dx.op.dot3.f32(i32 55, float %5025, float %5026, float %5027, float %5025, float %5026, float %5027)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = call float @dx.op.unary.f32(i32 25, float %5036)  ; Rsqrt(value)
  %5038 = fmul fast float %5025, %5037
  %5039 = fmul fast float %5026, %5037
  %5040 = fmul fast float %5027, %5037
  br label %5041

; <label>:5041                                    ; preds = %4873, %4866
  %5042 = phi float [ %4872, %4866 ], [ %4879, %4873 ]
  %5043 = phi float [ %4871, %4866 ], [ %4877, %4873 ]
  %5044 = phi float [ %4870, %4866 ], [ %4875, %4873 ]
  %5045 = phi float [ %4869, %4866 ], [ %4878, %4873 ]
  %5046 = phi float [ %4868, %4866 ], [ %4876, %4873 ]
  %5047 = phi float [ %4867, %4866 ], [ %4874, %4873 ]
  %5048 = phi float [ %4484, %4866 ], [ %4925, %4873 ]
  %5049 = phi float [ %4485, %4866 ], [ %4926, %4873 ]
  %5050 = phi float [ %4486, %4866 ], [ %4927, %4873 ]
  %5051 = phi float [ %4364, %4866 ], [ %5038, %4873 ]
  %5052 = phi float [ %4365, %4866 ], [ %5039, %4873 ]
  %5053 = phi float [ %4366, %4866 ], [ %5040, %4873 ]
  %5054 = phi float [ %4403, %4866 ], [ %5016, %4873 ]
  %5055 = phi float [ %4404, %4866 ], [ %5017, %4873 ]
  %5056 = phi float [ %4405, %4866 ], [ %5018, %4873 ]
  %5057 = phi float [ %4406, %4866 ], [ %5032, %4873 ]
  %5058 = phi float [ %4379, %4866 ], [ %5035, %4873 ]
  %5059 = select i1 %169, float 0.000000e+00, float %5056
  %5060 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5052, float %5053, float %5044, float %5043, float %5042)  ; Dot3(ax,ay,az,bx,by,bz)
  %5061 = call float @dx.op.unary.f32(i32 7, float %5060)  ; Saturate(value)
  %5062 = call float @dx.op.dot3.f32(i32 55, float %5047, float %5046, float %5045, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5063 = fmul fast float %5062, 2.000000e+00
  %5064 = fmul fast float %5063, %5051
  %5065 = fmul fast float %5063, %5052
  %5066 = fmul fast float %5063, %5053
  %5067 = fsub fast float %5047, %5064
  %5068 = fsub fast float %5046, %5065
  %5069 = fsub fast float %5045, %5066
  %5070 = call float @dx.op.binary.f32(i32 36, float %5058, float 1.000000e+00)  ; FMin(a,b)
  %5071 = fsub fast float 1.000000e+00, %5058
  %5072 = bitcast float %5071 to i32
  %5073 = sub nsw i32 2129859010, %5072
  %5074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 9)  ; CBufferLoadLegacy(handle,regIndex)
  %5075 = extractvalue %dx.types.CBufRet.f32 %5074, 0
  %5076 = extractvalue %dx.types.CBufRet.f32 %5074, 1
  %5077 = extractvalue %dx.types.CBufRet.f32 %5074, 2
  %5078 = fadd fast float %5075, %127
  %5079 = fadd fast float %5076, %128
  %5080 = fadd fast float %5077, %129
  %5081 = fmul fast float %5051, 3.200000e+01
  %5082 = fmul fast float %5052, 3.200000e+01
  %5083 = fadd fast float %5078, %5081
  %5084 = fadd fast float %5079, %5082
  %5085 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %5086 = extractvalue %dx.types.CBufRet.f32 %5085, 0
  %5087 = extractvalue %dx.types.CBufRet.f32 %5085, 1
  %5088 = fsub fast float %5083, %5086
  %5089 = fsub fast float %5084, %5087
  %5090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %5091 = extractvalue %dx.types.CBufRet.f32 %5090, 0
  %5092 = extractvalue %dx.types.CBufRet.f32 %5090, 1
  %5093 = fmul fast float %5088, %5091
  %5094 = fmul fast float %5089, %5092
  %5095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %5096 = extractvalue %dx.types.CBufRet.f32 %5095, 0
  %5097 = fmul fast float %5093, %5096
  %5098 = extractvalue %dx.types.CBufRet.f32 %5095, 1
  %5099 = fadd fast float %5097, %5098
  %5100 = extractvalue %dx.types.CBufRet.f32 %5095, 2
  %5101 = fmul fast float %5100, %5094
  %5102 = extractvalue %dx.types.CBufRet.f32 %5095, 3
  %5103 = fadd fast float %5101, %5102
  %5104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %5099, float %5103, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5105 = extractvalue %dx.types.ResRet.f32 %5104, 0
  %5106 = extractvalue %dx.types.ResRet.f32 %5104, 1
  %5107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %5108 = extractvalue %dx.types.CBufRet.f32 %5107, 1
  %5109 = extractvalue %dx.types.CBufRet.f32 %5107, 0
  %5110 = fsub fast float %5108, %5109
  %5111 = fmul fast float %5110, %5105
  %5112 = fadd fast float %5111, %5109
  %5113 = extractvalue %dx.types.CBufRet.f32 %5107, 3
  %5114 = extractvalue %dx.types.CBufRet.f32 %5107, 2
  %5115 = fsub fast float %5113, %5114
  %5116 = fmul fast float %5115, %5106
  %5117 = fadd fast float %5116, %5114
  %5118 = fsub fast float %5080, %5112
  %5119 = fsub fast float %5117, %5112
  %5120 = fdiv fast float %5118, %5119
  %5121 = call float @dx.op.unary.f32(i32 7, float %5120)  ; Saturate(value)
  %5122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.f32 %5122, 0
  %5124 = fmul fast float %5123, %5121
  %5125 = extractvalue %dx.types.CBufRet.f32 %5122, 1
  %5126 = fadd fast float %5124, %5125
  %5127 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %5099, float %5103, float %5126, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5128 = extractvalue %dx.types.ResRet.f32 %5127, 0
  %5129 = extractvalue %dx.types.ResRet.f32 %5127, 1
  %5130 = extractvalue %dx.types.ResRet.f32 %5127, 2
  %5131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %5132 = extractvalue %dx.types.CBufRet.f32 %5131, 0
  %5133 = extractvalue %dx.types.CBufRet.f32 %5131, 1
  %5134 = extractvalue %dx.types.CBufRet.f32 %5131, 2
  %5135 = fmul fast float %5132, %5128
  %5136 = fmul fast float %5133, %5129
  %5137 = fmul fast float %5134, %5130
  %5138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.f32 %5138, 0
  %5140 = extractvalue %dx.types.CBufRet.f32 %5138, 1
  %5141 = extractvalue %dx.types.CBufRet.f32 %5138, 2
  %5142 = fadd fast float %5135, %5139
  %5143 = fadd fast float %5136, %5140
  %5144 = fadd fast float %5137, %5141
  %5145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.f32 %5145, 0
  %5147 = fmul fast float %5146, %5093
  %5148 = extractvalue %dx.types.CBufRet.f32 %5145, 1
  %5149 = fadd fast float %5147, %5148
  %5150 = extractvalue %dx.types.CBufRet.f32 %5145, 2
  %5151 = fmul fast float %5150, %5094
  %5152 = extractvalue %dx.types.CBufRet.f32 %5145, 3
  %5153 = fadd fast float %5151, %5152
  %5154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %5155 = extractvalue %dx.types.CBufRet.f32 %5154, 0
  %5156 = extractvalue %dx.types.CBufRet.f32 %5154, 1
  %5157 = extractvalue %dx.types.CBufRet.f32 %5154, 2
  %5158 = extractvalue %dx.types.CBufRet.f32 %5154, 3
  %5159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %5160 = extractvalue %dx.types.CBufRet.f32 %5159, 0
  %5161 = extractvalue %dx.types.CBufRet.f32 %5159, 1
  %5162 = extractvalue %dx.types.CBufRet.f32 %5159, 2
  %5163 = extractvalue %dx.types.CBufRet.f32 %5159, 3
  %5164 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %5149, float %5153, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5165 = extractvalue %dx.types.ResRet.f32 %5164, 0
  %5166 = extractvalue %dx.types.ResRet.f32 %5164, 1
  %5167 = extractvalue %dx.types.ResRet.f32 %5164, 2
  %5168 = extractvalue %dx.types.ResRet.f32 %5164, 3
  %5169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %5149, float %5153, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5170 = extractvalue %dx.types.ResRet.f32 %5169, 0
  %5171 = extractvalue %dx.types.ResRet.f32 %5169, 1
  %5172 = extractvalue %dx.types.ResRet.f32 %5169, 2
  %5173 = extractvalue %dx.types.ResRet.f32 %5169, 3
  %5174 = fmul fast float %5165, %5142
  %5175 = fmul fast float %5170, %5142
  %5176 = fmul fast float %5172, %5142
  %5177 = fmul fast float %5168, %5142
  %5178 = fadd fast float %5174, %5155
  %5179 = fadd fast float %5175, %5156
  %5180 = fadd fast float %5176, %5157
  %5181 = fadd fast float %5177, %5158
  %5182 = fmul fast float %5166, %5142
  %5183 = fmul fast float %5171, %5142
  %5184 = fadd fast float %5182, %5160
  %5185 = fadd fast float %5183, %5161
  %5186 = fmul fast float %5167, %5142
  %5187 = fmul fast float %5173, %5142
  %5188 = fadd fast float %5186, %5162
  %5189 = fadd fast float %5187, %5163
  %5190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %5149, float %5153, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 0
  %5192 = extractvalue %dx.types.ResRet.f32 %5190, 1
  %5193 = extractvalue %dx.types.ResRet.f32 %5190, 2
  %5194 = extractvalue %dx.types.ResRet.f32 %5190, 3
  %5195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %5149, float %5153, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5196 = extractvalue %dx.types.ResRet.f32 %5195, 0
  %5197 = extractvalue %dx.types.ResRet.f32 %5195, 1
  %5198 = extractvalue %dx.types.ResRet.f32 %5195, 2
  %5199 = extractvalue %dx.types.ResRet.f32 %5195, 3
  %5200 = fmul fast float %5191, %5143
  %5201 = fmul fast float %5196, %5143
  %5202 = fmul fast float %5198, %5143
  %5203 = fmul fast float %5194, %5143
  %5204 = fadd fast float %5178, %5200
  %5205 = fadd fast float %5179, %5201
  %5206 = fadd fast float %5180, %5202
  %5207 = fadd fast float %5181, %5203
  %5208 = fmul fast float %5192, %5143
  %5209 = fmul fast float %5197, %5143
  %5210 = fadd fast float %5184, %5208
  %5211 = fadd fast float %5185, %5209
  %5212 = fmul fast float %5193, %5143
  %5213 = fmul fast float %5199, %5143
  %5214 = fadd fast float %5188, %5212
  %5215 = fadd fast float %5189, %5213
  %5216 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %5149, float %5153, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5217 = extractvalue %dx.types.ResRet.f32 %5216, 0
  %5218 = extractvalue %dx.types.ResRet.f32 %5216, 1
  %5219 = extractvalue %dx.types.ResRet.f32 %5216, 2
  %5220 = extractvalue %dx.types.ResRet.f32 %5216, 3
  %5221 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %5149, float %5153, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5222 = extractvalue %dx.types.ResRet.f32 %5221, 0
  %5223 = extractvalue %dx.types.ResRet.f32 %5221, 1
  %5224 = extractvalue %dx.types.ResRet.f32 %5221, 2
  %5225 = extractvalue %dx.types.ResRet.f32 %5221, 3
  %5226 = fmul fast float %5217, %5144
  %5227 = fmul fast float %5222, %5144
  %5228 = fmul fast float %5224, %5144
  %5229 = fmul fast float %5220, %5144
  %5230 = fadd fast float %5204, %5226
  %5231 = fadd fast float %5205, %5227
  %5232 = fadd fast float %5206, %5228
  %5233 = fadd fast float %5207, %5229
  %5234 = fmul fast float %5218, %5144
  %5235 = fmul fast float %5223, %5144
  %5236 = fadd fast float %5210, %5234
  %5237 = fadd fast float %5211, %5235
  %5238 = fmul fast float %5219, %5144
  %5239 = fmul fast float %5225, %5144
  %5240 = fadd fast float %5214, %5238
  %5241 = fadd fast float %5215, %5239
  %5242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %5243 = extractvalue %dx.types.CBufRet.f32 %5242, 0
  %5244 = fsub fast float %5078, %5243
  %5245 = fsub fast float %5086, %5078
  %5246 = call float @dx.op.binary.f32(i32 35, float %5245, float %5244)  ; FMax(a,b)
  %5247 = extractvalue %dx.types.CBufRet.f32 %5242, 1
  %5248 = fsub fast float %5079, %5247
  %5249 = fsub fast float %5087, %5079
  %5250 = call float @dx.op.binary.f32(i32 35, float %5249, float %5248)  ; FMax(a,b)
  %5251 = call float @dx.op.binary.f32(i32 35, float %5246, float %5250)  ; FMax(a,b)
  %5252 = extractvalue %dx.types.CBufRet.f32 %5090, 3
  %5253 = fmul fast float %5252, %5251
  %5254 = call float @dx.op.unary.f32(i32 7, float %5253)  ; Saturate(value)
  %5255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %5256 = extractvalue %dx.types.CBufRet.f32 %5255, 0
  %5257 = extractvalue %dx.types.CBufRet.f32 %5255, 1
  %5258 = extractvalue %dx.types.CBufRet.f32 %5255, 2
  %5259 = extractvalue %dx.types.CBufRet.f32 %5255, 3
  %5260 = fsub fast float %5256, %5230
  %5261 = fsub fast float %5257, %5231
  %5262 = fsub fast float %5258, %5232
  %5263 = fsub fast float %5259, %5233
  %5264 = fmul fast float %5260, %5254
  %5265 = fmul fast float %5261, %5254
  %5266 = fmul fast float %5262, %5254
  %5267 = fmul fast float %5263, %5254
  %5268 = fadd fast float %5264, %5230
  %5269 = fadd fast float %5265, %5231
  %5270 = fadd fast float %5266, %5232
  %5271 = fadd fast float %5267, %5233
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 0
  %5274 = extractvalue %dx.types.CBufRet.f32 %5272, 1
  %5275 = fsub fast float %5273, %5236
  %5276 = fsub fast float %5274, %5237
  %5277 = fmul fast float %5275, %5254
  %5278 = fmul fast float %5276, %5254
  %5279 = fadd fast float %5277, %5236
  %5280 = fadd fast float %5278, %5237
  %5281 = extractvalue %dx.types.CBufRet.f32 %5272, 2
  %5282 = extractvalue %dx.types.CBufRet.f32 %5272, 3
  %5283 = fsub fast float %5281, %5240
  %5284 = fsub fast float %5282, %5241
  %5285 = fmul fast float %5283, %5254
  %5286 = fmul fast float %5284, %5254
  %5287 = fadd fast float %5285, %5240
  %5288 = fadd fast float %5286, %5241
  %5289 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %5290 = extractvalue %dx.types.CBufRet.f32 %5289, 0
  %5291 = fmul fast float %5290, %5268
  %5292 = fmul fast float %5290, %5269
  %5293 = fmul fast float %5290, %5270
  %5294 = fmul fast float %5290, %5271
  %5295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %5296 = extractvalue %dx.types.CBufRet.f32 %5295, 0
  %5297 = fmul fast float %5296, %5279
  %5298 = fmul fast float %5296, %5280
  %5299 = fadd fast float %5297, %5291
  %5300 = fadd fast float %5298, %5293
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5303 = fmul fast float %5302, %5287
  %5304 = fmul fast float %5302, %5288
  %5305 = fadd fast float %5299, %5303
  %5306 = fadd fast float %5300, %5304
  %5307 = extractvalue %dx.types.CBufRet.f32 %5289, 1
  %5308 = fmul fast float %5307, %5268
  %5309 = fmul fast float %5307, %5269
  %5310 = fmul fast float %5307, %5270
  %5311 = fmul fast float %5307, %5271
  %5312 = extractvalue %dx.types.CBufRet.f32 %5295, 1
  %5313 = fmul fast float %5312, %5279
  %5314 = fmul fast float %5312, %5280
  %5315 = fadd fast float %5313, %5308
  %5316 = fadd fast float %5314, %5310
  %5317 = extractvalue %dx.types.CBufRet.f32 %5301, 1
  %5318 = fmul fast float %5317, %5287
  %5319 = fmul fast float %5317, %5288
  %5320 = fadd fast float %5315, %5318
  %5321 = fadd fast float %5316, %5319
  %5322 = extractvalue %dx.types.CBufRet.f32 %5289, 2
  %5323 = fmul fast float %5322, %5268
  %5324 = fmul fast float %5322, %5269
  %5325 = fmul fast float %5322, %5270
  %5326 = fmul fast float %5322, %5271
  %5327 = extractvalue %dx.types.CBufRet.f32 %5295, 2
  %5328 = fmul fast float %5327, %5279
  %5329 = fmul fast float %5327, %5280
  %5330 = fadd fast float %5328, %5323
  %5331 = fadd fast float %5329, %5325
  %5332 = extractvalue %dx.types.CBufRet.f32 %5301, 2
  %5333 = fmul fast float %5332, %5287
  %5334 = fmul fast float %5332, %5288
  %5335 = fadd fast float %5330, %5333
  %5336 = fadd fast float %5331, %5334
  %5337 = fmul fast float %5324, %5324
  %5338 = fmul fast float %5336, %5336
  %5339 = fmul fast float %5326, %5326
  %5340 = fadd fast float %5339, %5337
  %5341 = fadd fast float %5340, %5338
  %5342 = call float @dx.op.unary.f32(i32 24, float %5341)  ; Sqrt(value)
  %5343 = fcmp fast ugt float %5342, 0.000000e+00
  br i1 %5343, label %5344, label %5359

; <label>:5344                                    ; preds = %5041
  %5345 = fsub fast float -0.000000e+00, %5326
  %5346 = fdiv fast float %5345, %5342
  %5347 = fsub fast float -0.000000e+00, %5324
  %5348 = fdiv fast float %5347, %5342
  %5349 = fdiv fast float %5336, %5342
  %5350 = fmul fast float %5335, 0x3FE279A760000000
  %5351 = fmul fast float %5348, %5324
  %5352 = fmul fast float %5349, %5336
  %5353 = fmul fast float %5346, %5326
  %5354 = fadd fast float %5351, %5353
  %5355 = fsub fast float %5354, %5352
  %5356 = call float @dx.op.unary.f32(i32 6, float %5355)  ; FAbs(value)
  %5357 = fadd fast float %5356, 0x3DDB7CDFE0000000
  %5358 = fdiv fast float %5350, %5357
  br label %5359

; <label>:5359                                    ; preds = %5344, %5041
  %5360 = phi float [ %5358, %5344 ], [ 1.000000e+00, %5041 ]
  %5361 = fmul fast float %5309, %5309
  %5362 = fmul fast float %5321, %5321
  %5363 = fmul fast float %5311, %5311
  %5364 = fadd fast float %5363, %5361
  %5365 = fadd fast float %5364, %5362
  %5366 = call float @dx.op.unary.f32(i32 24, float %5365)  ; Sqrt(value)
  %5367 = fcmp fast ugt float %5366, 0.000000e+00
  br i1 %5367, label %5368, label %5383

; <label>:5368                                    ; preds = %5359
  %5369 = fsub fast float -0.000000e+00, %5311
  %5370 = fdiv fast float %5369, %5366
  %5371 = fsub fast float -0.000000e+00, %5309
  %5372 = fdiv fast float %5371, %5366
  %5373 = fdiv fast float %5321, %5366
  %5374 = fmul fast float %5320, 0x3FE279A760000000
  %5375 = fmul fast float %5372, %5309
  %5376 = fmul fast float %5373, %5321
  %5377 = fmul fast float %5370, %5311
  %5378 = fadd fast float %5375, %5377
  %5379 = fsub fast float %5378, %5376
  %5380 = call float @dx.op.unary.f32(i32 6, float %5379)  ; FAbs(value)
  %5381 = fadd fast float %5380, 0x3DDB7CDFE0000000
  %5382 = fdiv fast float %5374, %5381
  br label %5383

; <label>:5383                                    ; preds = %5368, %5359
  %5384 = phi float [ %5382, %5368 ], [ 1.000000e+00, %5359 ]
  %5385 = call float @dx.op.binary.f32(i32 36, float %5384, float %5360)  ; FMin(a,b)
  %5386 = fmul fast float %5292, %5292
  %5387 = fmul fast float %5306, %5306
  %5388 = fmul fast float %5294, %5294
  %5389 = fadd fast float %5388, %5386
  %5390 = fadd fast float %5389, %5387
  %5391 = call float @dx.op.unary.f32(i32 24, float %5390)  ; Sqrt(value)
  %5392 = fcmp fast ugt float %5391, 0.000000e+00
  br i1 %5392, label %5393, label %5408

; <label>:5393                                    ; preds = %5383
  %5394 = fsub fast float -0.000000e+00, %5294
  %5395 = fdiv fast float %5394, %5391
  %5396 = fsub fast float -0.000000e+00, %5292
  %5397 = fdiv fast float %5396, %5391
  %5398 = fdiv fast float %5306, %5391
  %5399 = fmul fast float %5305, 0x3FE279A760000000
  %5400 = fmul fast float %5397, %5292
  %5401 = fmul fast float %5398, %5306
  %5402 = fmul fast float %5395, %5294
  %5403 = fadd fast float %5400, %5402
  %5404 = fsub fast float %5403, %5401
  %5405 = call float @dx.op.unary.f32(i32 6, float %5404)  ; FAbs(value)
  %5406 = fadd fast float %5405, 0x3DDB7CDFE0000000
  %5407 = fdiv fast float %5399, %5406
  br label %5408

; <label>:5408                                    ; preds = %5393, %5383
  %5409 = phi float [ %5407, %5393 ], [ 1.000000e+00, %5383 ]
  %5410 = call float @dx.op.binary.f32(i32 36, float %5409, float %5385)  ; FMin(a,b)
  %5411 = call float @dx.op.unary.f32(i32 7, float %5410)  ; Saturate(value)
  %5412 = fcmp fast olt float %5411, 1.000000e+00
  br i1 %5412, label %5413, label %5423

; <label>:5413                                    ; preds = %5408
  %5414 = fmul fast float %5411, %5292
  %5415 = fmul fast float %5411, %5306
  %5416 = fmul fast float %5411, %5294
  %5417 = fmul fast float %5411, %5309
  %5418 = fmul fast float %5411, %5321
  %5419 = fmul fast float %5411, %5311
  %5420 = fmul fast float %5411, %5324
  %5421 = fmul fast float %5411, %5336
  %5422 = fmul fast float %5411, %5326
  br label %5423

; <label>:5423                                    ; preds = %5413, %5408
  %5424 = phi float [ %5420, %5413 ], [ %5324, %5408 ]
  %5425 = phi float [ %5421, %5413 ], [ %5336, %5408 ]
  %5426 = phi float [ %5422, %5413 ], [ %5326, %5408 ]
  %5427 = phi float [ %5417, %5413 ], [ %5309, %5408 ]
  %5428 = phi float [ %5418, %5413 ], [ %5321, %5408 ]
  %5429 = phi float [ %5419, %5413 ], [ %5311, %5408 ]
  %5430 = phi float [ %5414, %5413 ], [ %5292, %5408 ]
  %5431 = phi float [ %5415, %5413 ], [ %5306, %5408 ]
  %5432 = phi float [ %5416, %5413 ], [ %5294, %5408 ]
  %5433 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5305)  ; FMax(a,b)
  %5434 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5320)  ; FMax(a,b)
  %5435 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5335)  ; FMax(a,b)
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 0
  %5438 = fcmp fast ogt float %5437, 0.000000e+00
  %5439 = fcmp fast oge float %5093, 0.000000e+00
  %5440 = and i1 %5439, %5438
  %5441 = fcmp fast ole float %5093, 1.000000e+00
  %5442 = and i1 %5441, %5440
  %5443 = fcmp fast oge float %5094, 0.000000e+00
  %5444 = and i1 %5443, %5442
  %5445 = fcmp fast ole float %5094, 1.000000e+00
  %5446 = and i1 %5445, %5444
  br i1 %5446, label %5447, label %5592, !dx.controlflow.hints !77

; <label>:5447                                    ; preds = %5423
  %5448 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %5449 = extractvalue %dx.types.CBufRet.f32 %5448, 2
  %5450 = extractvalue %dx.types.CBufRet.f32 %5448, 3
  %5451 = fmul fast float %5449, %5093
  %5452 = fmul fast float %5450, %5094
  %5453 = call float @dx.op.unary.f32(i32 27, float %5451)  ; Round_ni(value)
  %5454 = call float @dx.op.unary.f32(i32 27, float %5452)  ; Round_ni(value)
  %5455 = fptosi float %5453 to i32
  %5456 = fptosi float %5454 to i32
  %5457 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %5455, i32 %5456, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5458 = extractvalue %dx.types.ResRet.i32 %5457, 0
  %5459 = and i32 %5458, 65535
  %5460 = lshr i32 %5458, 16
  %5461 = icmp eq i32 %5459, 65535
  br i1 %5461, label %5498, label %5462

; <label>:5462                                    ; preds = %5447
  %5463 = extractvalue %dx.types.CBufRet.f32 %5436, 1
  %5464 = extractvalue %dx.types.CBufRet.f32 %5448, 0
  %5465 = extractvalue %dx.types.CBufRet.f32 %5448, 1
  %5466 = fmul fast float %5464, %5093
  %5467 = fmul fast float %5465, %5094
  %5468 = fmul fast float %5466, 1.250000e-01
  %5469 = fmul fast float %5467, 1.250000e-01
  %5470 = call float @dx.op.unary.f32(i32 27, float %5468)  ; Round_ni(value)
  %5471 = call float @dx.op.unary.f32(i32 27, float %5469)  ; Round_ni(value)
  %5472 = fmul fast float %5470, 8.000000e+00
  %5473 = fmul fast float %5471, 8.000000e+00
  %5474 = and i32 %5458, 255
  %5475 = lshr i32 %5458, 8
  %5476 = and i32 %5475, 255
  %5477 = mul nuw nsw i32 %5474, 9
  %5478 = uitofp i32 %5477 to float
  %5479 = mul nuw nsw i32 %5476, 9
  %5480 = uitofp i32 %5479 to float
  %5481 = fadd fast float %5478, 5.000000e-01
  %5482 = fadd fast float %5481, %5466
  %5483 = fsub fast float %5482, %5472
  %5484 = fadd fast float %5480, 5.000000e-01
  %5485 = fadd fast float %5484, %5467
  %5486 = fsub fast float %5485, %5473
  %5487 = fdiv fast float %5483, %5437
  %5488 = fdiv fast float %5486, %5463
  %5489 = fmul fast float %5121, 4.375000e-01
  %5490 = fadd fast float %5489, 3.125000e-02
  %5491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5487, float %5488, float %5490, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5492 = extractvalue %dx.types.ResRet.f32 %5491, 0
  %5493 = extractvalue %dx.types.ResRet.f32 %5491, 1
  %5494 = extractvalue %dx.types.ResRet.f32 %5491, 2
  %5495 = fadd fast float %5492, %5433
  %5496 = fadd fast float %5493, %5434
  %5497 = fadd fast float %5494, %5435
  br label %5498

; <label>:5498                                    ; preds = %5462, %5447
  %5499 = phi float [ %5497, %5462 ], [ %5435, %5447 ]
  %5500 = phi float [ %5496, %5462 ], [ %5434, %5447 ]
  %5501 = phi float [ %5495, %5462 ], [ %5433, %5447 ]
  %5502 = icmp eq i32 %5460, 65535
  br i1 %5502, label %5592, label %5503

; <label>:5503                                    ; preds = %5498
  %5504 = extractvalue %dx.types.CBufRet.f32 %5436, 1
  %5505 = extractvalue %dx.types.CBufRet.f32 %5448, 0
  %5506 = extractvalue %dx.types.CBufRet.f32 %5448, 1
  %5507 = fmul fast float %5505, %5093
  %5508 = fmul fast float %5506, %5094
  %5509 = fmul fast float %5507, 1.250000e-01
  %5510 = fmul fast float %5508, 1.250000e-01
  %5511 = call float @dx.op.unary.f32(i32 27, float %5509)  ; Round_ni(value)
  %5512 = call float @dx.op.unary.f32(i32 27, float %5510)  ; Round_ni(value)
  %5513 = fmul fast float %5511, 8.000000e+00
  %5514 = fmul fast float %5512, 8.000000e+00
  %5515 = fsub fast float %5507, %5513
  %5516 = fsub fast float %5508, %5514
  %5517 = fadd fast float %5515, 5.000000e-01
  %5518 = fadd fast float %5516, 5.000000e-01
  %5519 = and i32 %5460, 255
  %5520 = lshr i32 %5458, 24
  %5521 = mul nuw nsw i32 %5519, 9
  %5522 = uitofp i32 %5521 to float
  %5523 = mul nuw nsw i32 %5520, 9
  %5524 = uitofp i32 %5523 to float
  %5525 = fadd fast float %5517, %5522
  %5526 = fadd fast float %5518, %5524
  %5527 = fdiv fast float %5525, %5437
  %5528 = fdiv fast float %5526, %5504
  %5529 = fmul fast float %5121, 4.375000e-01
  %5530 = fadd fast float %5529, 3.125000e-02
  %5531 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5527, float %5528, float %5530, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5532 = extractvalue %dx.types.ResRet.f32 %5531, 0
  %5533 = extractvalue %dx.types.ResRet.f32 %5531, 1
  %5534 = extractvalue %dx.types.ResRet.f32 %5531, 2
  %5535 = fadd fast float %5529, 5.312500e-01
  %5536 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %5527, float %5528, float %5535, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5537 = extractvalue %dx.types.ResRet.f32 %5536, 0
  %5538 = extractvalue %dx.types.ResRet.f32 %5536, 1
  %5539 = extractvalue %dx.types.ResRet.f32 %5536, 2
  %5540 = fmul fast float %5537, 2.000000e+00
  %5541 = fmul fast float %5538, 2.000000e+00
  %5542 = fmul fast float %5539, 2.000000e+00
  %5543 = fadd fast float %5540, -1.000000e+00
  %5544 = fadd fast float %5541, -1.000000e+00
  %5545 = fadd fast float %5542, -1.000000e+00
  %5546 = fmul fast float %5543, %5543
  %5547 = fmul fast float %5544, %5544
  %5548 = fadd fast float %5546, %5547
  %5549 = fmul fast float %5545, %5545
  %5550 = fadd fast float %5548, %5549
  %5551 = call float @dx.op.unary.f32(i32 24, float %5550)  ; Sqrt(value)
  %5552 = fcmp fast ogt float %5551, 0.000000e+00
  br i1 %5552, label %5553, label %5557

; <label>:5553                                    ; preds = %5503
  %5554 = fdiv fast float %5543, %5551
  %5555 = fdiv fast float %5544, %5551
  %5556 = fdiv fast float %5545, %5551
  br label %5557

; <label>:5557                                    ; preds = %5553, %5503
  %5558 = phi float [ %5554, %5553 ], [ 0.000000e+00, %5503 ]
  %5559 = phi float [ %5555, %5553 ], [ 0.000000e+00, %5503 ]
  %5560 = phi float [ %5556, %5553 ], [ 0.000000e+00, %5503 ]
  %5561 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %5562 = extractvalue %dx.types.CBufRet.f32 %5561, 0
  %5563 = extractvalue %dx.types.CBufRet.f32 %5561, 1
  %5564 = fsub fast float %5078, %5562
  %5565 = fsub fast float %5079, %5563
  %5566 = fmul fast float %5564, %5564
  %5567 = fmul fast float %5565, %5565
  %5568 = fadd fast float %5566, %5567
  %5569 = call float @dx.op.unary.f32(i32 24, float %5568)  ; Sqrt(value)
  %5570 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %5571 = extractvalue %dx.types.CBufRet.f32 %5570, 0
  %5572 = extractvalue %dx.types.CBufRet.f32 %5570, 1
  %5573 = fsub fast float %5569, %5571
  %5574 = fdiv fast float %5573, %5572
  %5575 = call float @dx.op.unary.f32(i32 7, float %5574)  ; Saturate(value)
  %5576 = fmul fast float %5575, 2.000000e+00
  %5577 = fsub fast float 3.000000e+00, %5576
  %5578 = fmul fast float %5575, %5575
  %5579 = fmul fast float %5578, %5577
  %5580 = call float @dx.op.dot3.f32(i32 55, float %5558, float %5559, float %5560, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5581 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5580)  ; FMax(a,b)
  %5582 = fmul fast float %5581, 0x400C5BF8A0000000
  %5583 = fmul fast float %5579, %5532
  %5584 = fmul fast float %5583, %5582
  %5585 = fadd fast float %5584, %5501
  %5586 = fmul fast float %5579, %5533
  %5587 = fmul fast float %5586, %5582
  %5588 = fadd fast float %5587, %5500
  %5589 = fmul fast float %5579, %5534
  %5590 = fmul fast float %5589, %5582
  %5591 = fadd fast float %5590, %5499
  br label %5592

; <label>:5592                                    ; preds = %5557, %5498, %5423
  %5593 = phi float [ %5591, %5557 ], [ %5499, %5498 ], [ %5435, %5423 ]
  %5594 = phi float [ %5588, %5557 ], [ %5500, %5498 ], [ %5434, %5423 ]
  %5595 = phi float [ %5585, %5557 ], [ %5501, %5498 ], [ %5433, %5423 ]
  %5596 = fcmp fast ogt float %5080, %5117
  %5597 = and i1 %5439, %5596
  %5598 = and i1 %5441, %5597
  %5599 = and i1 %5443, %5598
  %5600 = and i1 %5445, %5599
  br i1 %5600, label %5601, label %5658, !dx.controlflow.hints !78

; <label>:5601                                    ; preds = %5592
  %5602 = fmul fast float %5119, 0x3FC24924A0000000
  %5603 = fsub fast float %5080, %5117
  %5604 = fdiv fast float %5603, %5602
  %5605 = call float @dx.op.unary.f32(i32 7, float %5604)  ; Saturate(value)
  %5606 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %5607 = extractvalue %dx.types.CBufRet.f32 %5606, 0
  %5608 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %5609 = extractvalue %dx.types.CBufRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.CBufRet.f32 %5608, 1
  %5611 = extractvalue %dx.types.CBufRet.f32 %5608, 2
  %5612 = fsub fast float %5607, %5595
  %5613 = fsub fast float %5609, %5430
  %5614 = fsub fast float %5610, %5431
  %5615 = fsub fast float %5611, %5432
  %5616 = fmul fast float %5612, %5605
  %5617 = fmul fast float %5613, %5605
  %5618 = fmul fast float %5614, %5605
  %5619 = fmul fast float %5615, %5605
  %5620 = fadd fast float %5616, %5595
  %5621 = fadd fast float %5617, %5430
  %5622 = fadd fast float %5618, %5431
  %5623 = fadd fast float %5619, %5432
  %5624 = extractvalue %dx.types.CBufRet.f32 %5606, 1
  %5625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %5626 = extractvalue %dx.types.CBufRet.f32 %5625, 0
  %5627 = extractvalue %dx.types.CBufRet.f32 %5625, 1
  %5628 = extractvalue %dx.types.CBufRet.f32 %5625, 2
  %5629 = fsub fast float %5624, %5594
  %5630 = fsub fast float %5626, %5427
  %5631 = fsub fast float %5627, %5428
  %5632 = fsub fast float %5628, %5429
  %5633 = fmul fast float %5629, %5605
  %5634 = fmul fast float %5630, %5605
  %5635 = fmul fast float %5631, %5605
  %5636 = fmul fast float %5632, %5605
  %5637 = fadd fast float %5633, %5594
  %5638 = fadd fast float %5634, %5427
  %5639 = fadd fast float %5635, %5428
  %5640 = fadd fast float %5636, %5429
  %5641 = extractvalue %dx.types.CBufRet.f32 %5606, 2
  %5642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %5643 = extractvalue %dx.types.CBufRet.f32 %5642, 0
  %5644 = extractvalue %dx.types.CBufRet.f32 %5642, 1
  %5645 = extractvalue %dx.types.CBufRet.f32 %5642, 2
  %5646 = fsub fast float %5641, %5593
  %5647 = fsub fast float %5643, %5424
  %5648 = fsub fast float %5644, %5425
  %5649 = fsub fast float %5645, %5426
  %5650 = fmul fast float %5646, %5605
  %5651 = fmul fast float %5647, %5605
  %5652 = fmul fast float %5648, %5605
  %5653 = fmul fast float %5649, %5605
  %5654 = fadd fast float %5650, %5593
  %5655 = fadd fast float %5651, %5424
  %5656 = fadd fast float %5652, %5425
  %5657 = fadd fast float %5653, %5426
  br label %5658

; <label>:5658                                    ; preds = %5601, %5592
  %5659 = phi float [ %5654, %5601 ], [ %5593, %5592 ]
  %5660 = phi float [ %5655, %5601 ], [ %5424, %5592 ]
  %5661 = phi float [ %5656, %5601 ], [ %5425, %5592 ]
  %5662 = phi float [ %5657, %5601 ], [ %5426, %5592 ]
  %5663 = phi float [ %5637, %5601 ], [ %5594, %5592 ]
  %5664 = phi float [ %5638, %5601 ], [ %5427, %5592 ]
  %5665 = phi float [ %5639, %5601 ], [ %5428, %5592 ]
  %5666 = phi float [ %5640, %5601 ], [ %5429, %5592 ]
  %5667 = phi float [ %5620, %5601 ], [ %5595, %5592 ]
  %5668 = phi float [ %5621, %5601 ], [ %5430, %5592 ]
  %5669 = phi float [ %5622, %5601 ], [ %5431, %5592 ]
  %5670 = phi float [ %5623, %5601 ], [ %5432, %5592 ]
  %5671 = extractvalue %dx.types.CBufRet.f32 %5242, 3
  %5672 = fmul fast float %5671, %5667
  %5673 = fmul fast float %5671, %5663
  %5674 = fmul fast float %5671, %5659
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 3
  %5677 = fmul fast float %5672, %5676
  %5678 = fmul fast float %5673, %5676
  %5679 = fmul fast float %5674, %5676
  %5680 = fmul fast float %5668, 1.500000e+00
  %5681 = fmul fast float %5680, %5671
  %5682 = fmul fast float %5681, %5676
  %5683 = fmul fast float %5669, 1.500000e+00
  %5684 = fmul fast float %5683, %5671
  %5685 = fmul fast float %5684, %5676
  %5686 = fmul fast float %5670, 1.500000e+00
  %5687 = fmul fast float %5686, %5671
  %5688 = fmul fast float %5687, %5676
  %5689 = fmul fast float %5664, 1.500000e+00
  %5690 = fmul fast float %5689, %5671
  %5691 = fmul fast float %5690, %5676
  %5692 = fmul fast float %5665, 1.500000e+00
  %5693 = fmul fast float %5692, %5671
  %5694 = fmul fast float %5693, %5676
  %5695 = fmul fast float %5666, 1.500000e+00
  %5696 = fmul fast float %5695, %5671
  %5697 = fmul fast float %5696, %5676
  %5698 = fmul fast float %5660, 1.500000e+00
  %5699 = fmul fast float %5698, %5671
  %5700 = fmul fast float %5699, %5676
  %5701 = fmul fast float %5661, 1.500000e+00
  %5702 = fmul fast float %5701, %5671
  %5703 = fmul fast float %5702, %5676
  %5704 = fmul fast float %5662, 1.500000e+00
  %5705 = fmul fast float %5704, %5671
  %5706 = fmul fast float %5705, %5676
  %5707 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5677)  ; FMax(a,b)
  %5708 = call float @dx.op.dot3.f32(i32 55, float %5682, float %5685, float %5688, float %5682, float %5685, float %5688)  ; Dot3(ax,ay,az,bx,by,bz)
  %5709 = fcmp fast oeq float %5708, 0.000000e+00
  %5710 = fcmp fast oeq float %5707, 0.000000e+00
  %5711 = or i1 %5710, %5709
  br i1 %5711, label %5741, label %5712

; <label>:5712                                    ; preds = %5658
  %5713 = fsub fast float -0.000000e+00, %5688
  %5714 = fsub fast float -0.000000e+00, %5682
  %5715 = call float @dx.op.unary.f32(i32 24, float %5708)  ; Sqrt(value)
  %5716 = fdiv fast float %5715, %5707
  %5717 = fcmp fast ogt float %5716, 0x3FFB6F8900000000
  %5718 = select i1 %5717, float 0x3FFB6F8900000000, float %5716
  %5719 = fmul fast float %5718, 0x3FE8A23460000000
  %5720 = call float @dx.op.unary.f32(i32 7, float %5719)  ; Saturate(value)
  %5721 = call float @dx.op.binary.f32(i32 35, float %5718, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5722 = fmul fast float %5720, %5707
  %5723 = fmul fast float %5721, 0x3FF279A740000000
  %5724 = fadd fast float %5723, -1.000000e+00
  %5725 = call float @dx.op.dot3.f32(i32 55, float %5713, float %5714, float %5685, float %5713, float %5714, float %5685)  ; Dot3(ax,ay,az,bx,by,bz)
  %5726 = call float @dx.op.unary.f32(i32 25, float %5725)  ; Rsqrt(value)
  %5727 = fmul fast float %5726, %5713
  %5728 = fmul fast float %5726, %5714
  %5729 = fmul fast float %5726, %5685
  %5730 = fmul fast float %5724, %5724
  %5731 = fsub fast float 1.000000e+00, %5730
  %5732 = fmul fast float %5721, 0x40005F8BE0000000
  %5733 = fsub fast float 0x400C5BF8A0000000, %5732
  %5734 = fdiv fast float %5722, %5733
  %5735 = fmul fast float %5734, 0x3FEE31C3C0000000
  %5736 = fmul fast float %5735, %5731
  %5737 = fmul fast float %5721, 0x3FDACB7480000000
  %5738 = fadd fast float %5737, 0xBFD7347680000000
  %5739 = fmul fast float %5738, %5734
  %5740 = fmul fast float %5739, %5731
  br label %5741

; <label>:5741                                    ; preds = %5712, %5658
  %5742 = phi float [ %5727, %5712 ], [ 0.000000e+00, %5658 ]
  %5743 = phi float [ %5728, %5712 ], [ 0.000000e+00, %5658 ]
  %5744 = phi float [ %5729, %5712 ], [ 0.000000e+00, %5658 ]
  %5745 = phi float [ %5736, %5712 ], [ 0.000000e+00, %5658 ]
  %5746 = phi float [ %5740, %5712 ], [ 0.000000e+00, %5658 ]
  %5747 = call float @dx.op.dot3.f32(i32 55, float %5742, float %5743, float %5744, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5748 = fmul fast float %5747, 0x3FDF454380000000
  %5749 = fmul fast float %5747, %5747
  %5750 = fmul fast float %5749, 0x3FEE471020000000
  %5751 = fadd fast float %5750, 0xBFD42F6020000000
  %5752 = fmul fast float %5707, 0x3FD20DD760000000
  %5753 = fmul fast float %5751, %5746
  %5754 = fadd fast float %5753, %5752
  %5755 = fmul fast float %5748, %5745
  %5756 = fadd fast float %5754, %5755
  %5757 = fsub fast float %5754, %5755
  %5758 = call float @dx.op.dot3.f32(i32 55, float %5742, float %5743, float %5744, float %5067, float %5068, float %5069)  ; Dot3(ax,ay,az,bx,by,bz)
  %5759 = fmul fast float %5758, 0x3FDF454380000000
  %5760 = fmul fast float %5758, %5758
  %5761 = fmul fast float %5760, 0x3FEE471020000000
  %5762 = fadd fast float %5761, 0xBFD42F6020000000
  %5763 = call float @dx.op.dot3.f32(i32 55, float %5707, float %5745, float %5746, float 0x3FD20DD760000000, float %5759, float %5762)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5678)  ; FMax(a,b)
  %5765 = call float @dx.op.dot3.f32(i32 55, float %5691, float %5694, float %5697, float %5691, float %5694, float %5697)  ; Dot3(ax,ay,az,bx,by,bz)
  %5766 = fcmp fast oeq float %5765, 0.000000e+00
  %5767 = fcmp fast oeq float %5764, 0.000000e+00
  %5768 = or i1 %5767, %5766
  br i1 %5768, label %5798, label %5769

; <label>:5769                                    ; preds = %5741
  %5770 = fsub fast float -0.000000e+00, %5697
  %5771 = fsub fast float -0.000000e+00, %5691
  %5772 = call float @dx.op.unary.f32(i32 24, float %5765)  ; Sqrt(value)
  %5773 = fdiv fast float %5772, %5764
  %5774 = fcmp fast ogt float %5773, 0x3FFB6F8900000000
  %5775 = select i1 %5774, float 0x3FFB6F8900000000, float %5773
  %5776 = fmul fast float %5775, 0x3FE8A23460000000
  %5777 = call float @dx.op.unary.f32(i32 7, float %5776)  ; Saturate(value)
  %5778 = call float @dx.op.binary.f32(i32 35, float %5775, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5779 = fmul fast float %5777, %5764
  %5780 = fmul fast float %5778, 0x3FF279A740000000
  %5781 = fadd fast float %5780, -1.000000e+00
  %5782 = call float @dx.op.dot3.f32(i32 55, float %5770, float %5771, float %5694, float %5770, float %5771, float %5694)  ; Dot3(ax,ay,az,bx,by,bz)
  %5783 = call float @dx.op.unary.f32(i32 25, float %5782)  ; Rsqrt(value)
  %5784 = fmul fast float %5783, %5770
  %5785 = fmul fast float %5783, %5771
  %5786 = fmul fast float %5783, %5694
  %5787 = fmul fast float %5781, %5781
  %5788 = fsub fast float 1.000000e+00, %5787
  %5789 = fmul fast float %5778, 0x40005F8BE0000000
  %5790 = fsub fast float 0x400C5BF8A0000000, %5789
  %5791 = fdiv fast float %5779, %5790
  %5792 = fmul fast float %5791, 0x3FEE31C3C0000000
  %5793 = fmul fast float %5792, %5788
  %5794 = fmul fast float %5778, 0x3FDACB7480000000
  %5795 = fadd fast float %5794, 0xBFD7347680000000
  %5796 = fmul fast float %5795, %5791
  %5797 = fmul fast float %5796, %5788
  br label %5798

; <label>:5798                                    ; preds = %5769, %5741
  %5799 = phi float [ %5784, %5769 ], [ 0.000000e+00, %5741 ]
  %5800 = phi float [ %5785, %5769 ], [ 0.000000e+00, %5741 ]
  %5801 = phi float [ %5786, %5769 ], [ 0.000000e+00, %5741 ]
  %5802 = phi float [ %5793, %5769 ], [ 0.000000e+00, %5741 ]
  %5803 = phi float [ %5797, %5769 ], [ 0.000000e+00, %5741 ]
  %5804 = call float @dx.op.dot3.f32(i32 55, float %5799, float %5800, float %5801, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5805 = fmul fast float %5804, 0x3FDF454380000000
  %5806 = fmul fast float %5804, %5804
  %5807 = fmul fast float %5806, 0x3FEE471020000000
  %5808 = fadd fast float %5807, 0xBFD42F6020000000
  %5809 = fmul fast float %5764, 0x3FD20DD760000000
  %5810 = fmul fast float %5808, %5803
  %5811 = fadd fast float %5810, %5809
  %5812 = fmul fast float %5805, %5802
  %5813 = fadd fast float %5811, %5812
  %5814 = fsub fast float %5811, %5812
  %5815 = call float @dx.op.dot3.f32(i32 55, float %5799, float %5800, float %5801, float %5067, float %5068, float %5069)  ; Dot3(ax,ay,az,bx,by,bz)
  %5816 = fmul fast float %5815, 0x3FDF454380000000
  %5817 = fmul fast float %5815, %5815
  %5818 = fmul fast float %5817, 0x3FEE471020000000
  %5819 = fadd fast float %5818, 0xBFD42F6020000000
  %5820 = call float @dx.op.dot3.f32(i32 55, float %5764, float %5802, float %5803, float 0x3FD20DD760000000, float %5816, float %5819)  ; Dot3(ax,ay,az,bx,by,bz)
  %5821 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5679)  ; FMax(a,b)
  %5822 = call float @dx.op.dot3.f32(i32 55, float %5700, float %5703, float %5706, float %5700, float %5703, float %5706)  ; Dot3(ax,ay,az,bx,by,bz)
  %5823 = fcmp fast oeq float %5822, 0.000000e+00
  %5824 = fcmp fast oeq float %5821, 0.000000e+00
  %5825 = or i1 %5824, %5823
  br i1 %5825, label %5855, label %5826

; <label>:5826                                    ; preds = %5798
  %5827 = fsub fast float -0.000000e+00, %5706
  %5828 = fsub fast float -0.000000e+00, %5700
  %5829 = call float @dx.op.unary.f32(i32 24, float %5822)  ; Sqrt(value)
  %5830 = fdiv fast float %5829, %5821
  %5831 = fcmp fast ogt float %5830, 0x3FFB6F8900000000
  %5832 = select i1 %5831, float 0x3FFB6F8900000000, float %5830
  %5833 = fmul fast float %5832, 0x3FE8A23460000000
  %5834 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  %5835 = call float @dx.op.binary.f32(i32 35, float %5832, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %5836 = fmul fast float %5834, %5821
  %5837 = fmul fast float %5835, 0x3FF279A740000000
  %5838 = fadd fast float %5837, -1.000000e+00
  %5839 = call float @dx.op.dot3.f32(i32 55, float %5827, float %5828, float %5703, float %5827, float %5828, float %5703)  ; Dot3(ax,ay,az,bx,by,bz)
  %5840 = call float @dx.op.unary.f32(i32 25, float %5839)  ; Rsqrt(value)
  %5841 = fmul fast float %5840, %5827
  %5842 = fmul fast float %5840, %5828
  %5843 = fmul fast float %5840, %5703
  %5844 = fmul fast float %5838, %5838
  %5845 = fsub fast float 1.000000e+00, %5844
  %5846 = fmul fast float %5835, 0x40005F8BE0000000
  %5847 = fsub fast float 0x400C5BF8A0000000, %5846
  %5848 = fdiv fast float %5836, %5847
  %5849 = fmul fast float %5848, 0x3FEE31C3C0000000
  %5850 = fmul fast float %5849, %5845
  %5851 = fmul fast float %5835, 0x3FDACB7480000000
  %5852 = fadd fast float %5851, 0xBFD7347680000000
  %5853 = fmul fast float %5852, %5848
  %5854 = fmul fast float %5853, %5845
  br label %5855

; <label>:5855                                    ; preds = %5826, %5798
  %5856 = phi float [ %5841, %5826 ], [ 0.000000e+00, %5798 ]
  %5857 = phi float [ %5842, %5826 ], [ 0.000000e+00, %5798 ]
  %5858 = phi float [ %5843, %5826 ], [ 0.000000e+00, %5798 ]
  %5859 = phi float [ %5850, %5826 ], [ 0.000000e+00, %5798 ]
  %5860 = phi float [ %5854, %5826 ], [ 0.000000e+00, %5798 ]
  %5861 = call float @dx.op.dot3.f32(i32 55, float %5856, float %5857, float %5858, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %5862 = fmul fast float %5861, 0x3FDF454380000000
  %5863 = fmul fast float %5861, %5861
  %5864 = fmul fast float %5863, 0x3FEE471020000000
  %5865 = fadd fast float %5864, 0xBFD42F6020000000
  %5866 = fmul fast float %5821, 0x3FD20DD760000000
  %5867 = fmul fast float %5865, %5860
  %5868 = fadd fast float %5867, %5866
  %5869 = fmul fast float %5862, %5859
  %5870 = fadd fast float %5868, %5869
  %5871 = fsub fast float %5868, %5869
  %5872 = call float @dx.op.dot3.f32(i32 55, float %5856, float %5857, float %5858, float %5067, float %5068, float %5069)  ; Dot3(ax,ay,az,bx,by,bz)
  %5873 = fmul fast float %5872, 0x3FDF454380000000
  %5874 = fmul fast float %5872, %5872
  %5875 = fmul fast float %5874, 0x3FEE471020000000
  %5876 = fadd fast float %5875, 0xBFD42F6020000000
  %5877 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5859, float %5860, float 0x3FD20DD760000000, float %5873, float %5876)  ; Dot3(ax,ay,az,bx,by,bz)
  %5878 = call float @dx.op.binary.f32(i32 35, float %5756, float 0.000000e+00)  ; FMax(a,b)
  %5879 = call float @dx.op.binary.f32(i32 35, float %5813, float 0.000000e+00)  ; FMax(a,b)
  %5880 = call float @dx.op.binary.f32(i32 35, float %5870, float 0.000000e+00)  ; FMax(a,b)
  %5881 = call float @dx.op.binary.f32(i32 35, float %5757, float 0.000000e+00)  ; FMax(a,b)
  %5882 = call float @dx.op.binary.f32(i32 35, float %5814, float 0.000000e+00)  ; FMax(a,b)
  %5883 = call float @dx.op.binary.f32(i32 35, float %5871, float 0.000000e+00)  ; FMax(a,b)
  %5884 = call float @dx.op.binary.f32(i32 35, float %5763, float 0.000000e+00)  ; FMax(a,b)
  %5885 = call float @dx.op.binary.f32(i32 35, float %5820, float 0.000000e+00)  ; FMax(a,b)
  %5886 = call float @dx.op.binary.f32(i32 35, float %5877, float 0.000000e+00)  ; FMax(a,b)
  %5887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5888 = extractvalue %dx.types.CBufRet.f32 %5887, 0
  %5889 = call float @dx.op.binary.f32(i32 36, float %5048, float %5888)  ; FMin(a,b)
  %5890 = fsub fast float 1.000000e+00, %5070
  %5891 = fmul fast float %5889, %5890
  %5892 = fsub fast float 1.000000e+00, %5891
  %5893 = bitcast float %5892 to i32
  %5894 = sub nsw i32 2129859010, %5893
  %5895 = bitcast i32 %5894 to float
  %5896 = call float @dx.op.binary.f32(i32 36, float %5049, float %5888)  ; FMin(a,b)
  %5897 = fmul fast float %5896, %5890
  %5898 = fsub fast float 1.000000e+00, %5897
  %5899 = bitcast float %5898 to i32
  %5900 = sub nsw i32 2129859010, %5899
  %5901 = bitcast i32 %5900 to float
  %5902 = call float @dx.op.binary.f32(i32 36, float %5050, float %5888)  ; FMin(a,b)
  %5903 = fmul fast float %5902, %5890
  %5904 = fsub fast float 1.000000e+00, %5903
  %5905 = bitcast float %5904 to i32
  %5906 = sub nsw i32 2129859010, %5905
  %5907 = bitcast i32 %5906 to float
  %5908 = fmul fast float %5878, %5070
  %5909 = fmul fast float %5908, %5895
  %5910 = fmul fast float %5879, %5070
  %5911 = fmul fast float %5910, %5901
  %5912 = fmul fast float %5880, %5070
  %5913 = fmul fast float %5912, %5907
  %5914 = call float @dx.op.binary.f32(i32 36, float %5054, float %5888)  ; FMin(a,b)
  %5915 = fmul fast float %5914, %5890
  %5916 = fsub fast float 1.000000e+00, %5915
  %5917 = bitcast float %5916 to i32
  %5918 = sub nsw i32 2129859010, %5917
  %5919 = bitcast i32 %5918 to float
  %5920 = call float @dx.op.binary.f32(i32 36, float %5055, float %5888)  ; FMin(a,b)
  %5921 = fmul fast float %5920, %5890
  %5922 = fsub fast float 1.000000e+00, %5921
  %5923 = bitcast float %5922 to i32
  %5924 = sub nsw i32 2129859010, %5923
  %5925 = bitcast i32 %5924 to float
  %5926 = call float @dx.op.binary.f32(i32 36, float %5059, float %5888)  ; FMin(a,b)
  %5927 = fmul fast float %5926, %5890
  %5928 = fsub fast float 1.000000e+00, %5927
  %5929 = bitcast float %5928 to i32
  %5930 = sub nsw i32 2129859010, %5929
  %5931 = bitcast i32 %5930 to float
  %5932 = fmul fast float %5884, %5070
  %5933 = fmul fast float %5932, %5919
  %5934 = fmul fast float %5885, %5070
  %5935 = fmul fast float %5934, %5925
  %5936 = fmul fast float %5886, %5070
  %5937 = fmul fast float %5936, %5931
  %5938 = call float @dx.op.dot3.f32(i32 55, float %5909, float %5911, float %5913, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5939 = select i1 %169, float 0.000000e+00, float %5909
  %5940 = select i1 %169, float %5938, float %5911
  %5941 = select i1 %169, float 0.000000e+00, float %5913
  %5942 = call float @dx.op.dot3.f32(i32 55, float %5881, float %5882, float %5883, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5943 = select i1 %169, float 0.000000e+00, float %5881
  %5944 = select i1 %169, float %5942, float %5882
  %5945 = select i1 %169, float 0.000000e+00, float %5883
  %5946 = call float @dx.op.dot3.f32(i32 55, float %5933, float %5935, float %5937, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5947 = select i1 %169, float 0.000000e+00, float %5933
  %5948 = select i1 %169, float %5946, float %5935
  %5949 = select i1 %169, float 0.000000e+00, float %5937
  %5950 = fmul fast float %5061, 9.843750e-01
  %5951 = fmul fast float %5057, 9.843750e-01
  %5952 = fadd fast float %5950, 7.812500e-03
  %5953 = fadd fast float %5951, 7.812500e-03
  %5954 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %5952, float %5953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5955 = extractvalue %dx.types.ResRet.f32 %5954, 2
  %5956 = extractvalue %dx.types.ResRet.f32 %5954, 3
  %5957 = fmul fast float %5955, %5054
  %5958 = fmul fast float %5955, %5055
  %5959 = fmul fast float %5955, %5059
  %5960 = fadd fast float %5957, %5956
  %5961 = fadd fast float %5958, %5956
  %5962 = fadd fast float %5959, %5956
  %5963 = fcmp fast ogt float %4380, 0.000000e+00
  br i1 %5963, label %5964, label %5990

; <label>:5964                                    ; preds = %5855
  %5965 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4380, float %5061, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5966 = extractvalue %dx.types.ResRet.f32 %5965, 0
  %5967 = extractvalue %dx.types.ResRet.f32 %5965, 1
  %5968 = extractvalue %dx.types.ResRet.f32 %5965, 2
  %5969 = fadd fast float %5966, -5.000000e-01
  %5970 = fadd fast float %5967, -5.000000e-01
  %5971 = fadd fast float %5968, -5.000000e-01
  %5972 = fsub fast float 1.000000e+00, %5054
  %5973 = fsub fast float 1.000000e+00, %5055
  %5974 = fsub fast float 1.000000e+00, %5059
  %5975 = fmul fast float %5054, 4.000000e+00
  %5976 = fmul fast float %5975, %5972
  %5977 = fmul fast float %5976, %5969
  %5978 = fmul fast float %5055, 4.000000e+00
  %5979 = fmul fast float %5978, %5973
  %5980 = fmul fast float %5979, %5970
  %5981 = fmul fast float %5059, 4.000000e+00
  %5982 = fmul fast float %5981, %5974
  %5983 = fmul fast float %5982, %5971
  %5984 = fadd fast float %5977, %5960
  %5985 = fadd fast float %5980, %5961
  %5986 = fadd fast float %5983, %5962
  %5987 = call float @dx.op.unary.f32(i32 7, float %5984)  ; Saturate(value)
  %5988 = call float @dx.op.unary.f32(i32 7, float %5985)  ; Saturate(value)
  %5989 = call float @dx.op.unary.f32(i32 7, float %5986)  ; Saturate(value)
  br label %5990

; <label>:5990                                    ; preds = %5964, %5855
  %5991 = phi float [ %5987, %5964 ], [ %5960, %5855 ]
  %5992 = phi float [ %5988, %5964 ], [ %5961, %5855 ]
  %5993 = phi float [ %5989, %5964 ], [ %5962, %5855 ]
  %5994 = call float @dx.op.binary.f32(i32 35, float %5992, float %5993)  ; FMax(a,b)
  %5995 = call float @dx.op.binary.f32(i32 35, float %5991, float %5994)  ; FMax(a,b)
  %5996 = fsub fast float 1.000000e+00, %5995
  %5997 = call float @dx.op.dot3.f32(i32 55, float %5048, float %5049, float %5050, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5998 = fcmp fast ogt float %5997, 0x3E7FF19E20000000
  %5999 = fdiv fast float 1.000000e+00, %5997
  %6000 = select i1 %5998, float %5999, float 0.000000e+00
  %6001 = fmul fast float %6000, %5048
  %6002 = fmul fast float %6000, %5049
  %6003 = fmul fast float %6000, %5050
  %6004 = fadd fast float %6001, -1.000000e+00
  %6005 = fadd fast float %6002, -1.000000e+00
  %6006 = fadd fast float %6003, -1.000000e+00
  %6007 = fmul fast float %6004, 5.000000e-01
  %6008 = fmul fast float %6005, 5.000000e-01
  %6009 = fmul fast float %6006, 5.000000e-01
  %6010 = fadd fast float %6007, 1.000000e+00
  %6011 = fadd fast float %6008, 1.000000e+00
  %6012 = fadd fast float %6009, 1.000000e+00
  %6013 = fmul fast float %5991, %5947
  %6014 = fmul fast float %5992, %5948
  %6015 = fmul fast float %5993, %5949
  %6016 = fsub fast float 1.000000e+00, %5061
  %6017 = bitcast float %6016 to i32
  %6018 = sitofp i32 %6017 to float
  %6019 = fmul fast float %6018, 5.000000e+00
  %6020 = fadd fast float %6019, 0xC1EFBF8940000000
  %6021 = fptosi float %6020 to i32
  %6022 = bitcast i32 %6021 to float
  %6023 = fmul fast float %6022, %4381
  %6024 = fmul fast float %5939, %6023
  %6025 = fmul fast float %6024, %5996
  %6026 = fmul fast float %6025, %6010
  %6027 = fmul fast float %5940, %6023
  %6028 = fmul fast float %6027, %5996
  %6029 = fmul fast float %6028, %6011
  %6030 = fmul fast float %5941, %6023
  %6031 = fmul fast float %6030, %5996
  %6032 = fmul fast float %6031, %6012
  %6033 = fadd fast float %6013, %4367
  %6034 = fadd fast float %6033, %6026
  %6035 = fmul fast float %6034, %4377
  %6036 = fadd fast float %6014, %4368
  %6037 = fadd fast float %6036, %6029
  %6038 = fmul fast float %6037, %4377
  %6039 = fadd fast float %6015, %4369
  %6040 = fadd fast float %6039, %6032
  %6041 = fmul fast float %6040, %4377
  %6042 = fmul fast float %5996, %5941
  %6043 = fmul fast float %5996, %5940
  %6044 = fmul fast float %5996, %5939
  %6045 = fmul fast float %5996, %4472
  %6046 = fadd fast float %6045, -1.000000e+00
  %6047 = fmul fast float %6046, %4377
  %6048 = fadd fast float %6047, 1.000000e+00
  %6049 = fmul fast float %5996, %4471
  %6050 = fadd fast float %6049, -1.000000e+00
  %6051 = fmul fast float %6050, %4377
  %6052 = fadd fast float %6051, 1.000000e+00
  %6053 = fmul fast float %5996, %4470
  %6054 = fadd fast float %6053, -1.000000e+00
  %6055 = fmul fast float %6054, %4377
  %6056 = fadd fast float %6055, 1.000000e+00
  %6057 = fmul fast float %6056, %5943
  %6058 = fmul fast float %6052, %5944
  %6059 = fmul fast float %6048, %5945
  %6060 = fadd fast float %6057, %6044
  %6061 = fmul fast float %6060, %4377
  %6062 = fadd fast float %6058, %6043
  %6063 = fmul fast float %6062, %4377
  %6064 = fadd fast float %6059, %6042
  %6065 = fmul fast float %6064, %4377
  %6066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6067 = extractvalue %dx.types.CBufRet.f32 %6066, 3
  %6068 = fcmp fast oeq float %6067, 0.000000e+00
  br i1 %6068, label %6351, label %6069

; <label>:6069                                    ; preds = %5990
  %6070 = extractvalue %dx.types.CBufRet.f32 %6066, 0
  %6071 = extractvalue %dx.types.CBufRet.f32 %6066, 1
  %6072 = extractvalue %dx.types.CBufRet.f32 %6066, 2
  %6073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6074 = extractvalue %dx.types.CBufRet.f32 %6073, 0
  %6075 = extractvalue %dx.types.CBufRet.f32 %6073, 1
  %6076 = extractvalue %dx.types.CBufRet.f32 %6073, 2
  %6077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6078 = extractvalue %dx.types.CBufRet.f32 %6077, 0
  %6079 = extractvalue %dx.types.CBufRet.f32 %6077, 1
  %6080 = call float @dx.op.dot3.f32(i32 55, float %6074, float %6075, float %6076, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6081 = select i1 %169, float %6078, float %6074
  %6082 = select i1 %169, float %6080, float %6075
  %6083 = select i1 %169, float %6079, float %6076
  %6084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6085 = extractvalue %dx.types.CBufRet.f32 %6084, 1
  %6086 = fcmp fast une float %6085, 0.000000e+00
  br i1 %6086, label %6087, label %6104

; <label>:6087                                    ; preds = %6069
  %6088 = fptoui float %68 to i32
  %6089 = fptoui float %69 to i32
  %6090 = lshr i32 %6088, 4
  %6091 = lshr i32 %6089, 4
  %6092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6093 = extractvalue %dx.types.CBufRet.f32 %6092, 0
  %6094 = fptoui float %6093 to i32
  %6095 = add i32 %6094, 15
  %6096 = lshr i32 %6095, 4
  %6097 = mul i32 %6096, %6091
  %6098 = add i32 %6097, %6090
  %6099 = shl i32 %6098, 3
  %6100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %6099, i32 undef)  ; BufferLoad(srv,index,wot)
  %6101 = extractvalue %dx.types.ResRet.i32 %6100, 0
  %6102 = and i32 %6101, -268435456
  %6103 = icmp eq i32 %6102, -1342177280
  br i1 %6103, label %6114, label %6104

; <label>:6104                                    ; preds = %6087, %6069
  %6105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6106 = extractvalue %dx.types.CBufRet.f32 %6105, 2
  %6107 = extractvalue %dx.types.CBufRet.f32 %6105, 3
  %6108 = fmul fast float %6106, %68
  %6109 = fmul fast float %6107, %69
  %6110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %6108, float %6109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6111 = extractvalue %dx.types.ResRet.f32 %6110, 0
  %6112 = extractvalue %dx.types.ResRet.f32 %6110, 1
  %6113 = extractvalue %dx.types.ResRet.f32 %6110, 2
  br label %6114

; <label>:6114                                    ; preds = %6104, %6087
  %6115 = phi float [ %6111, %6104 ], [ 0.000000e+00, %6087 ]
  %6116 = phi float [ %6112, %6104 ], [ 0.000000e+00, %6087 ]
  %6117 = phi float [ %6113, %6104 ], [ 0.000000e+00, %6087 ]
  %6118 = call float @dx.op.binary.f32(i32 36, float %6116, float %6117)  ; FMin(a,b)
  %6119 = call float @dx.op.binary.f32(i32 36, float %6115, float %6118)  ; FMin(a,b)
  %6120 = fcmp fast ogt float %6119, 0.000000e+00
  br i1 %6120, label %6121, label %6351, !dx.controlflow.hints !79

; <label>:6121                                    ; preds = %6114
  %6122 = bitcast i32 %5073 to float
  %6123 = fmul fast float %6115, %6081
  %6124 = fmul fast float %6116, %6082
  %6125 = fmul fast float %6117, %6083
  %6126 = fsub fast float %6070, %5047
  %6127 = fsub fast float %6071, %5046
  %6128 = fsub fast float %6072, %5045
  %6129 = call float @dx.op.dot3.f32(i32 55, float %6126, float %6127, float %6128, float %6126, float %6127, float %6128)  ; Dot3(ax,ay,az,bx,by,bz)
  %6130 = call float @dx.op.unary.f32(i32 25, float %6129)  ; Rsqrt(value)
  %6131 = fmul fast float %6130, %6126
  %6132 = fmul fast float %6130, %6127
  %6133 = fmul fast float %6130, %6128
  %6134 = call float @dx.op.dot3.f32(i32 55, float %6070, float %6071, float %6072, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %6135 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5043, float %5042, float %6131, float %6132, float %6133)  ; Dot3(ax,ay,az,bx,by,bz)
  %6136 = call float @dx.op.unary.f32(i32 7, float %6134)  ; Saturate(value)
  %6137 = fmul fast float %6136, %6136
  %6138 = fmul fast float %6137, %6122
  %6139 = call float @dx.op.unary.f32(i32 7, float %6138)  ; Saturate(value)
  %6140 = fmul fast float %6139, %6136
  %6141 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5052, float %5053, float %6131, float %6132, float %6133)  ; Dot3(ax,ay,az,bx,by,bz)
  %6142 = fmul fast float %6141, %6141
  %6143 = call float @dx.op.unary.f32(i32 6, float %6134)  ; FAbs(value)
  %6144 = fsub fast float 1.000000e+00, %5057
  %6145 = call float @dx.op.binary.f32(i32 35, float %6144, float 0x3F847AE140000000)  ; FMax(a,b)
  %6146 = fmul fast float %6145, %6145
  %6147 = fmul fast float %6146, %6146
  %6148 = fsub fast float 1.000000e+00, %6147
  %6149 = fmul fast float %5061, %5061
  %6150 = fmul fast float %6149, %6148
  %6151 = fadd fast float %6150, %6147
  %6152 = bitcast float %6151 to i32
  %6153 = ashr i32 %6152, 1
  %6154 = add nsw i32 %6153, 532487669
  %6155 = bitcast i32 %6154 to float
  %6156 = fadd fast float %6155, %5061
  %6157 = fmul fast float %6147, %6142
  %6158 = fsub fast float 1.000000e+00, %6142
  %6159 = fadd fast float %6158, %6157
  %6160 = fmul fast float %6143, %6143
  %6161 = fmul fast float %6160, %6148
  %6162 = fadd fast float %6161, %6147
  %6163 = bitcast float %6162 to i32
  %6164 = ashr i32 %6163, 1
  %6165 = add nsw i32 %6164, 532487669
  %6166 = bitcast i32 %6165 to float
  %6167 = fadd fast float %6166, %6143
  %6168 = fmul fast float %6159, %6159
  %6169 = fmul fast float %6168, %6156
  %6170 = fmul fast float %6169, %6167
  %6171 = fdiv fast float 0x3FF0A00000000000, %6170
  %6172 = fmul fast float %6171, %6147
  %6173 = call float @dx.op.unary.f32(i32 6, float %6135)  ; FAbs(value)
  %6174 = fsub fast float 1.000000e+00, %6173
  %6175 = bitcast float %6174 to i32
  %6176 = sitofp i32 %6175 to float
  %6177 = fmul fast float %6176, 5.000000e+00
  %6178 = fadd fast float %6177, 0xC1EFBF8940000000
  %6179 = fptosi float %6178 to i32
  %6180 = bitcast i32 %6179 to float
  %6181 = fsub fast float 1.000000e+00, %5054
  %6182 = fsub fast float 1.000000e+00, %5055
  %6183 = fsub fast float 1.000000e+00, %5059
  %6184 = fmul fast float %6180, %6181
  %6185 = fmul fast float %6180, %6182
  %6186 = fmul fast float %6180, %6183
  %6187 = fadd fast float %6184, %5054
  %6188 = fadd fast float %6185, %5055
  %6189 = fadd fast float %6186, %5059
  br i1 %5963, label %6190, label %6213

; <label>:6190                                    ; preds = %6121
  %6191 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4380, float %6173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6192 = extractvalue %dx.types.ResRet.f32 %6191, 0
  %6193 = extractvalue %dx.types.ResRet.f32 %6191, 1
  %6194 = extractvalue %dx.types.ResRet.f32 %6191, 2
  %6195 = fadd fast float %6192, -5.000000e-01
  %6196 = fadd fast float %6193, -5.000000e-01
  %6197 = fadd fast float %6194, -5.000000e-01
  %6198 = fmul fast float %5054, 4.000000e+00
  %6199 = fmul fast float %6198, %6181
  %6200 = fmul fast float %6199, %6195
  %6201 = fmul fast float %5055, 4.000000e+00
  %6202 = fmul fast float %6201, %6182
  %6203 = fmul fast float %6202, %6196
  %6204 = fmul fast float %5059, 4.000000e+00
  %6205 = fmul fast float %6204, %6183
  %6206 = fmul fast float %6205, %6197
  %6207 = fadd fast float %6200, %6187
  %6208 = fadd fast float %6203, %6188
  %6209 = fadd fast float %6206, %6189
  %6210 = call float @dx.op.unary.f32(i32 7, float %6207)  ; Saturate(value)
  %6211 = call float @dx.op.unary.f32(i32 7, float %6208)  ; Saturate(value)
  %6212 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  br label %6213

; <label>:6213                                    ; preds = %6190, %6121
  %6214 = phi float [ %6210, %6190 ], [ %6187, %6121 ]
  %6215 = phi float [ %6211, %6190 ], [ %6188, %6121 ]
  %6216 = phi float [ %6212, %6190 ], [ %6189, %6121 ]
  %6217 = fmul fast float %6134, 9.843750e-01
  %6218 = fadd fast float %6217, 7.812500e-03
  %6219 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %6218, float %5953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6220 = extractvalue %dx.types.ResRet.f32 %6219, 2
  %6221 = extractvalue %dx.types.ResRet.f32 %6219, 3
  %6222 = fmul fast float %6220, %5054
  %6223 = fmul fast float %6220, %5055
  %6224 = fmul fast float %6220, %5059
  %6225 = fadd fast float %6222, %6221
  %6226 = fadd fast float %6223, %6221
  %6227 = fadd fast float %6224, %6221
  br i1 %5963, label %6228, label %6251

; <label>:6228                                    ; preds = %6213
  %6229 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4380, float %6134, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6230 = extractvalue %dx.types.ResRet.f32 %6229, 0
  %6231 = extractvalue %dx.types.ResRet.f32 %6229, 1
  %6232 = extractvalue %dx.types.ResRet.f32 %6229, 2
  %6233 = fadd fast float %6230, -5.000000e-01
  %6234 = fadd fast float %6231, -5.000000e-01
  %6235 = fadd fast float %6232, -5.000000e-01
  %6236 = fmul fast float %5054, 4.000000e+00
  %6237 = fmul fast float %6236, %6181
  %6238 = fmul fast float %6237, %6233
  %6239 = fmul fast float %5055, 4.000000e+00
  %6240 = fmul fast float %6239, %6182
  %6241 = fmul fast float %6240, %6234
  %6242 = fmul fast float %5059, 4.000000e+00
  %6243 = fmul fast float %6242, %6183
  %6244 = fmul fast float %6243, %6235
  %6245 = fadd fast float %6238, %6225
  %6246 = fadd fast float %6241, %6226
  %6247 = fadd fast float %6244, %6227
  %6248 = call float @dx.op.unary.f32(i32 7, float %6245)  ; Saturate(value)
  %6249 = call float @dx.op.unary.f32(i32 7, float %6246)  ; Saturate(value)
  %6250 = call float @dx.op.unary.f32(i32 7, float %6247)  ; Saturate(value)
  br label %6251

; <label>:6251                                    ; preds = %6228, %6213
  %6252 = phi float [ %6248, %6228 ], [ %6225, %6213 ]
  %6253 = phi float [ %6249, %6228 ], [ %6226, %6213 ]
  %6254 = phi float [ %6250, %6228 ], [ %6227, %6213 ]
  %6255 = call float @dx.op.binary.f32(i32 35, float %6253, float %6254)  ; FMax(a,b)
  %6256 = call float @dx.op.binary.f32(i32 35, float %6252, float %6255)  ; FMax(a,b)
  %6257 = fsub fast float 1.000000e+00, %6256
  %6258 = fsub fast float -0.000000e+00, %5051
  %6259 = fsub fast float -0.000000e+00, %5052
  %6260 = fsub fast float -0.000000e+00, %5053
  %6261 = call float @dx.op.dot3.f32(i32 55, float %6070, float %6071, float %6072, float %6258, float %6259, float %6260)  ; Dot3(ax,ay,az,bx,by,bz)
  %6262 = call float @dx.op.unary.f32(i32 7, float %6261)  ; Saturate(value)
  %6263 = fmul fast float %6262, 9.843750e-01
  %6264 = fadd fast float %6263, 7.812500e-03
  %6265 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %6264, float %5953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6266 = extractvalue %dx.types.ResRet.f32 %6265, 2
  %6267 = extractvalue %dx.types.ResRet.f32 %6265, 3
  %6268 = fmul fast float %6266, %5054
  %6269 = fmul fast float %6266, %5055
  %6270 = fmul fast float %6266, %5059
  %6271 = fadd fast float %6268, %6267
  %6272 = fadd fast float %6269, %6267
  %6273 = fadd fast float %6270, %6267
  br i1 %5963, label %6274, label %6297

; <label>:6274                                    ; preds = %6251
  %6275 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4380, float %6262, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6276 = extractvalue %dx.types.ResRet.f32 %6275, 0
  %6277 = extractvalue %dx.types.ResRet.f32 %6275, 1
  %6278 = extractvalue %dx.types.ResRet.f32 %6275, 2
  %6279 = fadd fast float %6276, -5.000000e-01
  %6280 = fadd fast float %6277, -5.000000e-01
  %6281 = fadd fast float %6278, -5.000000e-01
  %6282 = fmul fast float %5054, 4.000000e+00
  %6283 = fmul fast float %6282, %6181
  %6284 = fmul fast float %6283, %6279
  %6285 = fmul fast float %5055, 4.000000e+00
  %6286 = fmul fast float %6285, %6182
  %6287 = fmul fast float %6286, %6280
  %6288 = fmul fast float %5059, 4.000000e+00
  %6289 = fmul fast float %6288, %6183
  %6290 = fmul fast float %6289, %6281
  %6291 = fadd fast float %6284, %6271
  %6292 = fadd fast float %6287, %6272
  %6293 = fadd fast float %6290, %6273
  %6294 = call float @dx.op.unary.f32(i32 7, float %6291)  ; Saturate(value)
  %6295 = call float @dx.op.unary.f32(i32 7, float %6292)  ; Saturate(value)
  %6296 = call float @dx.op.unary.f32(i32 7, float %6293)  ; Saturate(value)
  br label %6297

; <label>:6297                                    ; preds = %6274, %6251
  %6298 = phi float [ %6294, %6274 ], [ %6271, %6251 ]
  %6299 = phi float [ %6295, %6274 ], [ %6272, %6251 ]
  %6300 = phi float [ %6296, %6274 ], [ %6273, %6251 ]
  %6301 = call float @dx.op.binary.f32(i32 35, float %6299, float %6300)  ; FMax(a,b)
  %6302 = call float @dx.op.binary.f32(i32 35, float %6298, float %6301)  ; FMax(a,b)
  %6303 = fsub fast float 1.000000e+00, %6302
  %6304 = fmul fast float %6303, %6262
  %6305 = fmul fast float %6304, %4470
  %6306 = fmul fast float %6304, %4471
  %6307 = fmul fast float %6304, %4472
  %6308 = fmul fast float %6214, %6172
  %6309 = fmul fast float %6215, %6172
  %6310 = fmul fast float %6216, %6172
  %6311 = fsub fast float 1.000000e+00, %6135
  %6312 = bitcast float %6311 to i32
  %6313 = sitofp i32 %6312 to float
  %6314 = fmul fast float %6313, 5.000000e+00
  %6315 = fadd fast float %6314, 0xC1EFBF8940000000
  %6316 = fptosi float %6315 to i32
  %6317 = bitcast i32 %6316 to float
  %6318 = fmul fast float %6317, %4381
  %6319 = fmul fast float %6257, %6318
  %6320 = fmul fast float %6319, %6010
  %6321 = fmul fast float %6319, %6011
  %6322 = fmul fast float %6319, %6012
  %6323 = fmul fast float %6257, %6140
  %6324 = fadd fast float %6320, %6308
  %6325 = fadd fast float %6321, %6309
  %6326 = fadd fast float %6322, %6310
  %6327 = fadd fast float %6305, %6323
  %6328 = fadd fast float %6306, %6323
  %6329 = fadd fast float %6307, %6323
  %6330 = fmul fast float %6327, %6123
  %6331 = fmul fast float %6328, %6124
  %6332 = fmul fast float %6329, %6125
  %6333 = fmul fast float %6140, %6123
  %6334 = fmul fast float %6333, %6324
  %6335 = fmul fast float %6140, %6124
  %6336 = fmul fast float %6335, %6325
  %6337 = fmul fast float %6140, %6125
  %6338 = fmul fast float %6337, %6326
  %6339 = fadd fast float %6330, %6060
  %6340 = fmul fast float %6339, %4377
  %6341 = fadd fast float %6331, %6062
  %6342 = fmul fast float %6341, %4377
  %6343 = fadd fast float %6332, %6064
  %6344 = fmul fast float %6343, %4377
  %6345 = fadd fast float %6334, %6034
  %6346 = fmul fast float %6345, %4377
  %6347 = fadd fast float %6336, %6037
  %6348 = fmul fast float %6347, %4377
  %6349 = fadd fast float %6338, %6040
  %6350 = fmul fast float %6349, %4377
  br label %6351

; <label>:6351                                    ; preds = %6297, %6114, %5990
  %6352 = phi float [ %6035, %5990 ], [ %6035, %6114 ], [ %6346, %6297 ]
  %6353 = phi float [ %6038, %5990 ], [ %6038, %6114 ], [ %6348, %6297 ]
  %6354 = phi float [ %6041, %5990 ], [ %6041, %6114 ], [ %6350, %6297 ]
  %6355 = phi float [ %6061, %5990 ], [ %6061, %6114 ], [ %6340, %6297 ]
  %6356 = phi float [ %6063, %5990 ], [ %6063, %6114 ], [ %6342, %6297 ]
  %6357 = phi float [ %6065, %5990 ], [ %6065, %6114 ], [ %6344, %6297 ]
  %6358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.i32 %6358, 0
  %6360 = icmp eq i32 %6359, 0
  br i1 %6360, label %6851, label %6361

; <label>:6361                                    ; preds = %6351
  %6362 = fptoui float %68 to i32
  %6363 = fptoui float %69 to i32
  %6364 = lshr i32 %6362, 4
  %6365 = lshr i32 %6363, 4
  %6366 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6367 = extractvalue %dx.types.CBufRet.i32 %6366, 0
  %6368 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6365, i32 %6367, i32 %6364)  ; UMad(a,b,c)
  %6369 = add nsw i32 %6359, -1
  %6370 = call i32 @dx.op.binary.i32(i32 37, i32 %6369, i32 0)  ; IMax(a,b)
  %6371 = call float @dx.op.binary.f32(i32 35, float %63, float 0.000000e+00)  ; FMax(a,b)
  %6372 = fptoui float %6371 to i32
  %6373 = lshr i32 %6372, 5
  %6374 = call i32 @dx.op.binary.i32(i32 40, i32 %6373, i32 8191)  ; UMin(a,b)
  %6375 = shl i32 %6374, 2
  %6376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %6375, i32 undef)  ; BufferLoad(srv,index,wot)
  %6377 = extractvalue %dx.types.ResRet.i32 %6376, 0
  %6378 = lshr i32 %6377, 16
  %6379 = and i32 %6377, 65535
  %6380 = lshr i32 %6377, 21
  %6381 = lshr i32 %6379, 5
  %6382 = call i32 @dx.op.binary.i32(i32 40, i32 %6381, i32 %6370)  ; UMin(a,b)
  %6383 = icmp ugt i32 %6380, %6382
  br i1 %6383, label %6851, label %6384

; <label>:6384                                    ; preds = %6361
  br label %6385

; <label>:6385                                    ; preds = %6841, %6384
  %6386 = phi i32 [ %6848, %6841 ], [ %6380, %6384 ]
  %6387 = phi float [ %6842, %6841 ], [ %6352, %6384 ]
  %6388 = phi float [ %6843, %6841 ], [ %6353, %6384 ]
  %6389 = phi float [ %6844, %6841 ], [ %6354, %6384 ]
  %6390 = phi float [ %6845, %6841 ], [ %6355, %6384 ]
  %6391 = phi float [ %6846, %6841 ], [ %6356, %6384 ]
  %6392 = phi float [ %6847, %6841 ], [ %6357, %6384 ]
  %6393 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6394 = extractvalue %dx.types.CBufRet.i32 %6393, 0
  %6395 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6368, i32 %6394, i32 %6386)  ; UMad(a,b,c)
  %6396 = shl i32 %6395, 2
  %6397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6396, i32 undef)  ; BufferLoad(srv,index,wot)
  %6398 = extractvalue %dx.types.ResRet.i32 %6397, 0
  %6399 = shl i32 %6386, 5
  %6400 = sub nsw i32 %6378, %6399
  %6401 = call i32 @dx.op.binary.i32(i32 37, i32 %6400, i32 0)  ; IMax(a,b)
  %6402 = call i32 @dx.op.binary.i32(i32 38, i32 %6401, i32 31)  ; IMin(a,b)
  %6403 = sub nsw i32 1, %6378
  %6404 = add nsw i32 %6403, %6379
  %6405 = call i32 @dx.op.binary.i32(i32 37, i32 %6404, i32 0)  ; IMax(a,b)
  %6406 = call i32 @dx.op.binary.i32(i32 38, i32 %6405, i32 32)  ; IMin(a,b)
  %6407 = and i32 %6406, 31
  %6408 = shl i32 -1, %6407
  %6409 = xor i32 %6408, -1
  %6410 = and i32 %6402, 31
  %6411 = shl i32 %6409, %6410
  %6412 = icmp eq i32 %6406, 32
  %6413 = select i1 %6412, i32 -1, i32 %6411
  %6414 = and i32 %6413, %6398
  %6415 = icmp eq i32 %6414, 0
  br i1 %6415, label %6841, label %6416

; <label>:6416                                    ; preds = %6385
  br label %6417

; <label>:6417                                    ; preds = %6497, %6416
  %6418 = phi i32 [ %6429, %6497 ], [ %6414, %6416 ]
  %6419 = phi float [ %6498, %6497 ], [ %6387, %6416 ]
  %6420 = phi float [ %6499, %6497 ], [ %6388, %6416 ]
  %6421 = phi float [ %6500, %6497 ], [ %6389, %6416 ]
  %6422 = phi float [ %6501, %6497 ], [ %6390, %6416 ]
  %6423 = phi float [ %6502, %6497 ], [ %6391, %6416 ]
  %6424 = phi float [ %6503, %6497 ], [ %6392, %6416 ]
  %6425 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6418)  ; FirstbitLo(value)
  %6426 = add i32 %6425, %6399
  %6427 = and i32 %6425, 31
  %6428 = shl i32 1, %6427
  %6429 = xor i32 %6428, %6418
  %6430 = mul i32 %6426, 112
  %6431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6430, i32 undef)  ; BufferLoad(srv,index,wot)
  %6432 = extractvalue %dx.types.ResRet.f32 %6431, 0
  %6433 = extractvalue %dx.types.ResRet.f32 %6431, 1
  %6434 = extractvalue %dx.types.ResRet.f32 %6431, 2
  %6435 = or i32 %6430, 12
  %6436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6435, i32 undef)  ; BufferLoad(srv,index,wot)
  %6437 = extractvalue %dx.types.ResRet.f32 %6436, 0
  %6438 = add i32 %6430, 44
  %6439 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6438, i32 undef)  ; BufferLoad(srv,index,wot)
  %6440 = extractvalue %dx.types.ResRet.f32 %6439, 0
  %6441 = add i32 %6430, 48
  %6442 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6441, i32 undef)  ; BufferLoad(srv,index,wot)
  %6443 = extractvalue %dx.types.ResRet.f32 %6442, 0
  %6444 = extractvalue %dx.types.ResRet.f32 %6442, 1
  %6445 = extractvalue %dx.types.ResRet.f32 %6442, 2
  %6446 = add i32 %6430, 80
  %6447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %6446, i32 undef)  ; BufferLoad(srv,index,wot)
  %6448 = extractvalue %dx.types.ResRet.f32 %6447, 1
  %6449 = extractvalue %dx.types.ResRet.f32 %6447, 2
  %6450 = call float @dx.op.dot3.f32(i32 55, float %6432, float %6433, float %6434, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6451 = select i1 %169, float %6448, float %6432
  %6452 = select i1 %169, float %6450, float %6433
  %6453 = select i1 %169, float %6449, float %6434
  %6454 = fsub fast float %6443, %127
  %6455 = fsub fast float %6444, %128
  %6456 = fsub fast float %6445, %129
  %6457 = call float @dx.op.dot3.f32(i32 55, float %6454, float %6455, float %6456, float %6454, float %6455, float %6456)  ; Dot3(ax,ay,az,bx,by,bz)
  %6458 = call float @dx.op.unary.f32(i32 24, float %6457)  ; Sqrt(value)
  %6459 = fdiv fast float 1.000000e+00, %6458
  %6460 = fmul fast float %6459, %6454
  %6461 = fmul fast float %6459, %6455
  %6462 = fmul fast float %6459, %6456
  %6463 = fadd fast float %6458, %6437
  %6464 = fdiv fast float 1.000000e+00, %6463
  %6465 = fmul float %6440, %6464
  %6466 = fmul float %6465, %6465
  %6467 = call float @dx.op.unary.f32(i32 7, float %6466)  ; Saturate(value)
  %6468 = and i32 %6428, %6414
  %6469 = icmp eq i32 %6468, 0
  br i1 %6469, label %6492, label %6470, !dx.controlflow.hints !80

; <label>:6470                                    ; preds = %6417
  %6471 = lshr i32 %6362, 5
  %6472 = lshr i32 %6363, 5
  %6473 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %24, i32 0, i32 %6471, i32 %6472, i32 %6426, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6474 = extractvalue %dx.types.ResRet.i32 %6473, 0
  %6475 = and i32 %6474, 3
  %6476 = icmp eq i32 %6475, 0
  %6477 = select i1 %6476, float 1.000000e+00, float 0.000000e+00
  %6478 = icmp eq i32 %6475, 3
  br i1 %6478, label %6479, label %6492

; <label>:6479                                    ; preds = %6470
  %6480 = lshr i32 %6474, 10
  %6481 = and i32 %6480, 8160
  %6482 = and i32 %6363, 31
  %6483 = or i32 %6481, %6482
  %6484 = lshr i32 %6474, 1
  %6485 = and i32 %6484, 16352
  %6486 = and i32 %6362, 31
  %6487 = or i32 %6485, %6486
  %6488 = lshr i32 %6474, 23
  %6489 = and i32 %6488, 255
  %6490 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %23, i32 0, i32 %6487, i32 %6483, i32 %6489, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6491 = extractvalue %dx.types.ResRet.f32 %6490, 0
  br label %6492

; <label>:6492                                    ; preds = %6479, %6470, %6417
  %6493 = phi float [ %6491, %6479 ], [ %6477, %6470 ], [ 0.000000e+00, %6417 ]
  %6494 = call float @dx.op.binary.f32(i32 36, float %6493, float %6493)  ; FMin(a,b)
  %6495 = call float @dx.op.binary.f32(i32 36, float %6493, float %6494)  ; FMin(a,b)
  %6496 = fcmp fast ogt float %6495, 0.000000e+00
  br i1 %6496, label %6505, label %6497, !dx.controlflow.hints !81

; <label>:6497                                    ; preds = %6789, %6492
  %6498 = phi float [ %6419, %6492 ], [ %6837, %6789 ]
  %6499 = phi float [ %6420, %6492 ], [ %6838, %6789 ]
  %6500 = phi float [ %6421, %6492 ], [ %6839, %6789 ]
  %6501 = phi float [ %6422, %6492 ], [ %6828, %6789 ]
  %6502 = phi float [ %6423, %6492 ], [ %6829, %6789 ]
  %6503 = phi float [ %6424, %6492 ], [ %6830, %6789 ]
  %6504 = icmp eq i32 %6418, %6428
  br i1 %6504, label %6840, label %6417

; <label>:6505                                    ; preds = %6492
  %6506 = bitcast i32 %5073 to float
  %6507 = fmul fast float %6493, %6451
  %6508 = fmul fast float %6493, %6452
  %6509 = fmul fast float %6493, %6453
  %6510 = fsub fast float %6445, %4847
  %6511 = fcmp fast ogt float %6510, 0.000000e+00
  %6512 = fsub fast float %129, %4847
  %6513 = fcmp fast ogt float %6512, 0.000000e+00
  %6514 = xor i1 %6513, %6511
  %6515 = fsub fast float %4847, %6445
  %6516 = fmul fast float %6515, 2.000000e+00
  %6517 = fadd fast float %6516, %6445
  %6518 = select i1 %6514, float %6445, float %6517
  %6519 = fsub fast float %6518, %129
  %6520 = call float @dx.op.dot3.f32(i32 55, float %6454, float %6455, float %6519, float %6454, float %6455, float %6519)  ; Dot3(ax,ay,az,bx,by,bz)
  %6521 = call float @dx.op.unary.f32(i32 25, float %6520)  ; Rsqrt(value)
  %6522 = fmul fast float %6521, %6454
  %6523 = fmul fast float %6521, %6455
  %6524 = fmul fast float %6521, %6519
  %6525 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4855)  ; Dot3(ax,ay,az,bx,by,bz)
  %6526 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6522, float %6523, float %6524)  ; Dot3(ax,ay,az,bx,by,bz)
  %6527 = fdiv fast float 1.000000e+00, %6526
  %6528 = fmul fast float %6527, %6525
  %6529 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6512, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6530 = fcmp fast ogt float %6529, 0.000000e+00
  %6531 = fcmp fast olt float %6529, 0.000000e+00
  %6532 = zext i1 %6530 to i32
  %6533 = zext i1 %6531 to i32
  %6534 = sub nsw i32 %6532, %6533
  %6535 = sitofp i32 %6534 to float
  %6536 = fsub fast float %6518, %4847
  %6537 = call float @dx.op.dot3.f32(i32 55, float %6454, float %6455, float %6536, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6538 = fcmp fast ogt float %6537, 0.000000e+00
  %6539 = fcmp fast olt float %6537, 0.000000e+00
  %6540 = zext i1 %6538 to i32
  %6541 = zext i1 %6539 to i32
  %6542 = sub nsw i32 %6540, %6541
  %6543 = sitofp i32 %6542 to float
  %6544 = fcmp fast une float %6535, %6543
  br i1 %6544, label %6545, label %6555

; <label>:6545                                    ; preds = %6505
  %6546 = fmul fast float %6528, %6524
  %6547 = fmul fast float %6528, %6523
  %6548 = fmul fast float %6528, %6522
  %6549 = fmul fast float %6548, %6548
  %6550 = fmul fast float %6547, %6547
  %6551 = fadd fast float %6549, %6550
  %6552 = fmul fast float %6546, %6546
  %6553 = fadd fast float %6551, %6552
  %6554 = call float @dx.op.unary.f32(i32 24, float %6553)  ; Sqrt(value)
  br label %6567

; <label>:6555                                    ; preds = %6505
  %6556 = icmp slt i32 %6534, 0
  br i1 %6556, label %6557, label %6567

; <label>:6557                                    ; preds = %6555
  %6558 = fsub fast float %127, %6443
  %6559 = fsub fast float %128, %6444
  %6560 = fsub fast float %129, %6518
  %6561 = fmul fast float %6558, %6558
  %6562 = fmul fast float %6559, %6559
  %6563 = fadd fast float %6561, %6562
  %6564 = fmul fast float %6560, %6560
  %6565 = fadd fast float %6563, %6564
  %6566 = call float @dx.op.unary.f32(i32 24, float %6565)  ; Sqrt(value)
  br label %6567

; <label>:6567                                    ; preds = %6557, %6555, %6545
  %6568 = phi float [ %6554, %6545 ], [ %6566, %6557 ], [ 0.000000e+00, %6555 ]
  %6569 = and i1 %6513, %6511
  %6570 = fsub fast float -0.000000e+00, %6568
  %6571 = select i1 %6569, float -0.000000e+00, float %6570
  %6572 = fmul fast float %4848, 0x3FF7154760000000
  %6573 = fmul fast float %6572, %6571
  %6574 = fmul fast float %4849, 0x3FF7154760000000
  %6575 = fmul fast float %6574, %6571
  %6576 = fmul fast float %4850, 0x3FF7154760000000
  %6577 = fmul fast float %6576, %6571
  %6578 = call float @dx.op.unary.f32(i32 21, float %6573)  ; Exp(value)
  %6579 = call float @dx.op.unary.f32(i32 21, float %6575)  ; Exp(value)
  %6580 = call float @dx.op.unary.f32(i32 21, float %6577)  ; Exp(value)
  %6581 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6582 = call float @dx.op.unary.f32(i32 7, float %6579)  ; Saturate(value)
  %6583 = call float @dx.op.unary.f32(i32 7, float %6580)  ; Saturate(value)
  %6584 = fmul fast float %6507, %6581
  %6585 = fmul fast float %6508, %6582
  %6586 = fmul fast float %6509, %6583
  %6587 = fsub fast float %6460, %5047
  %6588 = fsub fast float %6461, %5046
  %6589 = fsub fast float %6462, %5045
  %6590 = call float @dx.op.dot3.f32(i32 55, float %6587, float %6588, float %6589, float %6587, float %6588, float %6589)  ; Dot3(ax,ay,az,bx,by,bz)
  %6591 = call float @dx.op.unary.f32(i32 25, float %6590)  ; Rsqrt(value)
  %6592 = fmul fast float %6591, %6587
  %6593 = fmul fast float %6591, %6588
  %6594 = fmul fast float %6591, %6589
  %6595 = call float @dx.op.dot3.f32(i32 55, float %6460, float %6461, float %6462, float %5051, float %5052, float %5053)  ; Dot3(ax,ay,az,bx,by,bz)
  %6596 = call float @dx.op.dot3.f32(i32 55, float %5044, float %5043, float %5042, float %6592, float %6593, float %6594)  ; Dot3(ax,ay,az,bx,by,bz)
  %6597 = call float @dx.op.unary.f32(i32 7, float %6595)  ; Saturate(value)
  %6598 = fmul fast float %6597, %6467
  %6599 = fmul fast float %6597, %6597
  %6600 = fmul fast float %6599, %6506
  %6601 = call float @dx.op.unary.f32(i32 7, float %6600)  ; Saturate(value)
  %6602 = fmul fast float %6598, %6601
  %6603 = bitcast float %6457 to i32
  %6604 = ashr i32 %6603, 1
  %6605 = sub nsw i32 1597463007, %6604
  %6606 = bitcast i32 %6605 to float
  %6607 = fmul fast float %6606, %6454
  %6608 = fmul fast float %6606, %6455
  %6609 = fmul fast float %6606, %6456
  %6610 = fsub fast float %6607, %5047
  %6611 = fsub fast float %6608, %5046
  %6612 = fsub fast float %6609, %5045
  %6613 = call float @dx.op.dot3.f32(i32 55, float %6610, float %6611, float %6612, float %6610, float %6611, float %6612)  ; Dot3(ax,ay,az,bx,by,bz)
  %6614 = call float @dx.op.unary.f32(i32 25, float %6613)  ; Rsqrt(value)
  %6615 = fmul fast float %6610, %6614
  %6616 = fmul fast float %6611, %6614
  %6617 = fmul fast float %6612, %6614
  %6618 = call float @dx.op.dot3.f32(i32 55, float %5051, float %5052, float %5053, float %6615, float %6616, float %6617)  ; Dot3(ax,ay,az,bx,by,bz)
  %6619 = fmul fast float %6618, %6618
  %6620 = call float @dx.op.unary.f32(i32 6, float %6595)  ; FAbs(value)
  %6621 = fsub fast float 1.000000e+00, %5057
  %6622 = call float @dx.op.binary.f32(i32 35, float %6621, float 0x3F847AE140000000)  ; FMax(a,b)
  %6623 = fmul fast float %6622, %6622
  %6624 = fmul fast float %6623, %6623
  %6625 = fsub fast float 1.000000e+00, %6624
  %6626 = fmul fast float %5061, %5061
  %6627 = fmul fast float %6626, %6625
  %6628 = fadd fast float %6627, %6624
  %6629 = bitcast float %6628 to i32
  %6630 = ashr i32 %6629, 1
  %6631 = add nsw i32 %6630, 532487669
  %6632 = bitcast i32 %6631 to float
  %6633 = fadd fast float %6632, %5061
  %6634 = fmul fast float %6624, %6619
  %6635 = fsub fast float 1.000000e+00, %6619
  %6636 = fadd fast float %6635, %6634
  %6637 = fmul fast float %6620, %6620
  %6638 = fmul fast float %6637, %6625
  %6639 = fadd fast float %6638, %6624
  %6640 = bitcast float %6639 to i32
  %6641 = ashr i32 %6640, 1
  %6642 = add nsw i32 %6641, 532487669
  %6643 = bitcast i32 %6642 to float
  %6644 = fadd fast float %6643, %6620
  %6645 = fmul fast float %6636, %6636
  %6646 = fmul fast float %6645, %6633
  %6647 = fmul fast float %6646, %6644
  %6648 = fdiv fast float 1.000000e+00, %6647
  %6649 = bitcast float %6624 to i32
  %6650 = sitofp i32 %6649 to float
  %6651 = fmul fast float %6650, 0x3FE7F73180000000
  %6652 = fadd fast float %6651, 0x41AFE27C40000000
  %6653 = fptosi float %6652 to i32
  %6654 = bitcast i32 %6653 to float
  %6655 = fmul fast float %6440, 0x3FD80E9D60000000
  %6656 = fmul fast float %6655, %6606
  %6657 = fadd fast float %6654, %6656
  %6658 = bitcast float %6657 to i32
  %6659 = sub nsw i32 2129859010, %6658
  %6660 = bitcast i32 %6659 to float
  %6661 = fmul fast float %6624, %6648
  %6662 = fmul fast float %6661, %6654
  %6663 = fmul fast float %6662, %6660
  %6664 = call float @dx.op.unary.f32(i32 6, float %6596)  ; FAbs(value)
  %6665 = fsub fast float 1.000000e+00, %6664
  %6666 = bitcast float %6665 to i32
  %6667 = sitofp i32 %6666 to float
  %6668 = fmul fast float %6667, 5.000000e+00
  %6669 = fadd fast float %6668, 0xC1EFBF8940000000
  %6670 = fptosi float %6669 to i32
  %6671 = bitcast i32 %6670 to float
  %6672 = fsub fast float 1.000000e+00, %5054
  %6673 = fsub fast float 1.000000e+00, %5055
  %6674 = fsub fast float 1.000000e+00, %5059
  %6675 = fmul fast float %6671, %6672
  %6676 = fmul fast float %6671, %6673
  %6677 = fmul fast float %6671, %6674
  %6678 = fadd fast float %6675, %5054
  %6679 = fadd fast float %6676, %5055
  %6680 = fadd fast float %6677, %5059
  br i1 %5963, label %6681, label %6704

; <label>:6681                                    ; preds = %6567
  %6682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4380, float %6664, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6683 = extractvalue %dx.types.ResRet.f32 %6682, 0
  %6684 = extractvalue %dx.types.ResRet.f32 %6682, 1
  %6685 = extractvalue %dx.types.ResRet.f32 %6682, 2
  %6686 = fadd fast float %6683, -5.000000e-01
  %6687 = fadd fast float %6684, -5.000000e-01
  %6688 = fadd fast float %6685, -5.000000e-01
  %6689 = fmul fast float %5054, 4.000000e+00
  %6690 = fmul fast float %6689, %6672
  %6691 = fmul fast float %6690, %6686
  %6692 = fmul fast float %5055, 4.000000e+00
  %6693 = fmul fast float %6692, %6673
  %6694 = fmul fast float %6693, %6687
  %6695 = fmul fast float %5059, 4.000000e+00
  %6696 = fmul fast float %6695, %6674
  %6697 = fmul fast float %6696, %6688
  %6698 = fadd fast float %6691, %6678
  %6699 = fadd fast float %6694, %6679
  %6700 = fadd fast float %6697, %6680
  %6701 = call float @dx.op.unary.f32(i32 7, float %6698)  ; Saturate(value)
  %6702 = call float @dx.op.unary.f32(i32 7, float %6699)  ; Saturate(value)
  %6703 = call float @dx.op.unary.f32(i32 7, float %6700)  ; Saturate(value)
  br label %6704

; <label>:6704                                    ; preds = %6681, %6567
  %6705 = phi float [ %6701, %6681 ], [ %6678, %6567 ]
  %6706 = phi float [ %6702, %6681 ], [ %6679, %6567 ]
  %6707 = phi float [ %6703, %6681 ], [ %6680, %6567 ]
  %6708 = fmul fast float %6595, 9.843750e-01
  %6709 = fadd fast float %6708, 7.812500e-03
  %6710 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %6709, float %5953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6711 = extractvalue %dx.types.ResRet.f32 %6710, 2
  %6712 = extractvalue %dx.types.ResRet.f32 %6710, 3
  %6713 = fmul fast float %6711, %5054
  %6714 = fmul fast float %6711, %5055
  %6715 = fmul fast float %6711, %5059
  %6716 = fadd fast float %6713, %6712
  %6717 = fadd fast float %6714, %6712
  %6718 = fadd fast float %6715, %6712
  br i1 %5963, label %6719, label %6742

; <label>:6719                                    ; preds = %6704
  %6720 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4380, float %6595, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6721 = extractvalue %dx.types.ResRet.f32 %6720, 0
  %6722 = extractvalue %dx.types.ResRet.f32 %6720, 1
  %6723 = extractvalue %dx.types.ResRet.f32 %6720, 2
  %6724 = fadd fast float %6721, -5.000000e-01
  %6725 = fadd fast float %6722, -5.000000e-01
  %6726 = fadd fast float %6723, -5.000000e-01
  %6727 = fmul fast float %5054, 4.000000e+00
  %6728 = fmul fast float %6727, %6672
  %6729 = fmul fast float %6728, %6724
  %6730 = fmul fast float %5055, 4.000000e+00
  %6731 = fmul fast float %6730, %6673
  %6732 = fmul fast float %6731, %6725
  %6733 = fmul fast float %5059, 4.000000e+00
  %6734 = fmul fast float %6733, %6674
  %6735 = fmul fast float %6734, %6726
  %6736 = fadd fast float %6729, %6716
  %6737 = fadd fast float %6732, %6717
  %6738 = fadd fast float %6735, %6718
  %6739 = call float @dx.op.unary.f32(i32 7, float %6736)  ; Saturate(value)
  %6740 = call float @dx.op.unary.f32(i32 7, float %6737)  ; Saturate(value)
  %6741 = call float @dx.op.unary.f32(i32 7, float %6738)  ; Saturate(value)
  br label %6742

; <label>:6742                                    ; preds = %6719, %6704
  %6743 = phi float [ %6739, %6719 ], [ %6716, %6704 ]
  %6744 = phi float [ %6740, %6719 ], [ %6717, %6704 ]
  %6745 = phi float [ %6741, %6719 ], [ %6718, %6704 ]
  %6746 = call float @dx.op.binary.f32(i32 35, float %6744, float %6745)  ; FMax(a,b)
  %6747 = call float @dx.op.binary.f32(i32 35, float %6743, float %6746)  ; FMax(a,b)
  %6748 = fsub fast float 1.000000e+00, %6747
  %6749 = fsub fast float -0.000000e+00, %5051
  %6750 = fsub fast float -0.000000e+00, %5052
  %6751 = fsub fast float -0.000000e+00, %5053
  %6752 = call float @dx.op.dot3.f32(i32 55, float %6460, float %6461, float %6462, float %6749, float %6750, float %6751)  ; Dot3(ax,ay,az,bx,by,bz)
  %6753 = call float @dx.op.unary.f32(i32 7, float %6752)  ; Saturate(value)
  %6754 = fmul fast float %6753, %6467
  %6755 = fmul fast float %6753, 9.843750e-01
  %6756 = fadd fast float %6755, 7.812500e-03
  %6757 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %6756, float %5953, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6758 = extractvalue %dx.types.ResRet.f32 %6757, 2
  %6759 = extractvalue %dx.types.ResRet.f32 %6757, 3
  %6760 = fmul fast float %6758, %5054
  %6761 = fmul fast float %6758, %5055
  %6762 = fmul fast float %6758, %5059
  %6763 = fadd fast float %6760, %6759
  %6764 = fadd fast float %6761, %6759
  %6765 = fadd fast float %6762, %6759
  br i1 %5963, label %6766, label %6789

; <label>:6766                                    ; preds = %6742
  %6767 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %4380, float %6753, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6768 = extractvalue %dx.types.ResRet.f32 %6767, 0
  %6769 = extractvalue %dx.types.ResRet.f32 %6767, 1
  %6770 = extractvalue %dx.types.ResRet.f32 %6767, 2
  %6771 = fadd fast float %6768, -5.000000e-01
  %6772 = fadd fast float %6769, -5.000000e-01
  %6773 = fadd fast float %6770, -5.000000e-01
  %6774 = fmul fast float %5054, 4.000000e+00
  %6775 = fmul fast float %6774, %6672
  %6776 = fmul fast float %6775, %6771
  %6777 = fmul fast float %5055, 4.000000e+00
  %6778 = fmul fast float %6777, %6673
  %6779 = fmul fast float %6778, %6772
  %6780 = fmul fast float %5059, 4.000000e+00
  %6781 = fmul fast float %6780, %6674
  %6782 = fmul fast float %6781, %6773
  %6783 = fadd fast float %6776, %6763
  %6784 = fadd fast float %6779, %6764
  %6785 = fadd fast float %6782, %6765
  %6786 = call float @dx.op.unary.f32(i32 7, float %6783)  ; Saturate(value)
  %6787 = call float @dx.op.unary.f32(i32 7, float %6784)  ; Saturate(value)
  %6788 = call float @dx.op.unary.f32(i32 7, float %6785)  ; Saturate(value)
  br label %6789

; <label>:6789                                    ; preds = %6766, %6742
  %6790 = phi float [ %6786, %6766 ], [ %6763, %6742 ]
  %6791 = phi float [ %6787, %6766 ], [ %6764, %6742 ]
  %6792 = phi float [ %6788, %6766 ], [ %6765, %6742 ]
  %6793 = call float @dx.op.binary.f32(i32 35, float %6791, float %6792)  ; FMax(a,b)
  %6794 = call float @dx.op.binary.f32(i32 35, float %6790, float %6793)  ; FMax(a,b)
  %6795 = fsub fast float 1.000000e+00, %6794
  %6796 = fmul fast float %6754, %6795
  %6797 = fmul fast float %6796, %4470
  %6798 = fmul fast float %6796, %4471
  %6799 = fmul fast float %6796, %4472
  %6800 = fmul fast float %6705, %6663
  %6801 = fmul fast float %6706, %6663
  %6802 = fmul fast float %6707, %6663
  %6803 = fsub fast float 1.000000e+00, %6596
  %6804 = bitcast float %6803 to i32
  %6805 = sitofp i32 %6804 to float
  %6806 = fmul fast float %6805, 5.000000e+00
  %6807 = fadd fast float %6806, 0xC1EFBF8940000000
  %6808 = fptosi float %6807 to i32
  %6809 = bitcast i32 %6808 to float
  %6810 = fmul fast float %6809, %4381
  %6811 = fmul fast float %6748, %6810
  %6812 = fmul fast float %6811, %6010
  %6813 = fmul fast float %6811, %6011
  %6814 = fmul fast float %6811, %6012
  %6815 = fmul fast float %6748, %6602
  %6816 = fadd fast float %6812, %6800
  %6817 = fadd fast float %6813, %6801
  %6818 = fadd fast float %6814, %6802
  %6819 = fadd fast float %6797, %6815
  %6820 = fadd fast float %6798, %6815
  %6821 = fadd fast float %6799, %6815
  %6822 = fmul fast float %6584, %4377
  %6823 = fmul fast float %6822, %6819
  %6824 = fmul fast float %6585, %4377
  %6825 = fmul fast float %6824, %6820
  %6826 = fmul fast float %6586, %4377
  %6827 = fmul fast float %6826, %6821
  %6828 = fadd fast float %6823, %6422
  %6829 = fadd fast float %6825, %6423
  %6830 = fadd fast float %6827, %6424
  %6831 = fmul fast float %6822, %6602
  %6832 = fmul fast float %6831, %6816
  %6833 = fmul fast float %6824, %6602
  %6834 = fmul fast float %6833, %6817
  %6835 = fmul fast float %6826, %6602
  %6836 = fmul fast float %6835, %6818
  %6837 = fadd fast float %6832, %6419
  %6838 = fadd fast float %6834, %6420
  %6839 = fadd fast float %6836, %6421
  br label %6497

; <label>:6840                                    ; preds = %6497
  br label %6841

; <label>:6841                                    ; preds = %6840, %6385
  %6842 = phi float [ %6387, %6385 ], [ %6498, %6840 ]
  %6843 = phi float [ %6388, %6385 ], [ %6499, %6840 ]
  %6844 = phi float [ %6389, %6385 ], [ %6500, %6840 ]
  %6845 = phi float [ %6390, %6385 ], [ %6501, %6840 ]
  %6846 = phi float [ %6391, %6385 ], [ %6502, %6840 ]
  %6847 = phi float [ %6392, %6385 ], [ %6503, %6840 ]
  %6848 = add i32 %6386, 1
  %6849 = icmp ugt i32 %6848, %6382
  br i1 %6849, label %6850, label %6385

; <label>:6850                                    ; preds = %6841
  br label %6851

; <label>:6851                                    ; preds = %6850, %6361, %6351
  %6852 = phi float [ %6352, %6351 ], [ %6352, %6361 ], [ %6842, %6850 ]
  %6853 = phi float [ %6353, %6351 ], [ %6353, %6361 ], [ %6843, %6850 ]
  %6854 = phi float [ %6354, %6351 ], [ %6354, %6361 ], [ %6844, %6850 ]
  %6855 = phi float [ %6355, %6351 ], [ %6355, %6361 ], [ %6845, %6850 ]
  %6856 = phi float [ %6356, %6351 ], [ %6356, %6361 ], [ %6846, %6850 ]
  %6857 = phi float [ %6357, %6351 ], [ %6357, %6361 ], [ %6847, %6850 ]
  %6858 = call float @dx.op.unary.f32(i32 24, float %5048)  ; Sqrt(value)
  %6859 = call float @dx.op.unary.f32(i32 24, float %5049)  ; Sqrt(value)
  %6860 = call float @dx.op.unary.f32(i32 24, float %5050)  ; Sqrt(value)
  %6861 = fmul fast float %6858, %6855
  %6862 = fmul fast float %6859, %6856
  %6863 = extractvalue %dx.types.CBufRet.f32 %5675, 0
  br i1 %169, label %6864, label %6884

; <label>:6864                                    ; preds = %6851
  %6865 = fadd fast float %6857, %4383
  %6866 = fmul fast float %6865, %4384
  %6867 = fsub fast float 1.000000e+00, %4384
  %6868 = call float @dx.op.unary.f32(i32 7, float %6867)  ; Saturate(value)
  %6869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6870 = extractvalue %dx.types.CBufRet.f32 %6869, 3
  %6871 = fmul fast float %6870, %6868
  %6872 = fadd fast float %6871, %6866
  %6873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6874 = extractvalue %dx.types.CBufRet.f32 %6873, 0
  %6875 = fmul fast float %6874, %6016
  %6876 = fsub fast float %6872, %6875
  %6877 = fadd fast float %6862, %6861
  %6878 = fmul fast float %6863, %6877
  %6879 = extractvalue %dx.types.CBufRet.f32 %6869, 1
  %6880 = fsub fast float %6876, %6879
  %6881 = extractvalue %dx.types.CBufRet.f32 %6869, 2
  %6882 = fmul fast float %6880, %6881
  %6883 = call float @dx.op.unary.f32(i32 7, float %6882)  ; Saturate(value)
  br label %6900

; <label>:6884                                    ; preds = %6851
  %6885 = fmul fast float %6860, %6857
  %6886 = fmul fast float %6863, %6861
  %6887 = fmul fast float %6863, %6862
  %6888 = fmul fast float %6885, %6863
  %6889 = add i32 %40, 356
  %6890 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %6889, i32 undef)  ; BufferLoad(srv,index,wot)
  %6891 = extractvalue %dx.types.ResRet.i32 %6890, 0
  %6892 = and i32 %6891, 32
  %6893 = icmp eq i32 %6892, 0
  br i1 %6893, label %6900, label %6894

; <label>:6894                                    ; preds = %6884
  %6895 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6896 = extractvalue %dx.types.CBufRet.f32 %6895, 0
  %6897 = fmul fast float %6896, 0x3FE99999A0000000
  %6898 = fadd fast float %6896, %6886
  %6899 = fadd fast float %6897, %6888
  br label %6900

; <label>:6900                                    ; preds = %6894, %6884, %6864
  %6901 = phi float [ %6878, %6864 ], [ %6898, %6894 ], [ %6886, %6884 ]
  %6902 = phi float [ %6883, %6864 ], [ %6887, %6894 ], [ %6887, %6884 ]
  %6903 = phi float [ 1.000000e+00, %6864 ], [ %6899, %6894 ], [ %6888, %6884 ]
  %6904 = fmul fast float %6863, %6853
  %6905 = fmul fast float %6863, %6854
  %6906 = fadd fast float %6853, %6852
  %6907 = select i1 %169, float %6906, float %6852
  %6908 = fmul float %6907, %6863
  %6909 = select i1 %169, float 0.000000e+00, float %6904
  %6910 = select i1 %169, float 0.000000e+00, float %6905
  %6911 = fmul fast float %6901, %6858
  %6912 = fmul fast float %6902, %6859
  %6913 = fmul fast float %6903, %6860
  %6914 = fadd fast float %6908, %6911
  %6915 = fadd fast float %6909, %6912
  %6916 = fadd fast float %6910, %6913
  %6917 = select i1 %169, float %6902, float %6915
  %6918 = select i1 %169, float %6903, float %6916
  %6919 = call float @dx.op.binary.f32(i32 36, float %6914, float 3.225500e+04)  ; FMin(a,b)
  %6920 = call float @dx.op.binary.f32(i32 36, float %6917, float 3.225500e+04)  ; FMin(a,b)
  %6921 = call float @dx.op.binary.f32(i32 36, float %6918, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6919)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6920)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6921)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!45 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 208, null}
!46 = !{!47, !48, !49, !50, !51}
!47 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!48 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!49 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!51 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!52 = !{[35 x i32] [i32 33, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
!53 = !{void ()* @ps_main, !"ps_main", !54, !4, !76}
!54 = !{!55, !74, null}
!55 = !{!56, !59, !61, !63, !65, !67, !68, !69, !71, !73}
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
!71 = !{i32 8, !"SV_IsFrontFace", i8 5, i8 13, !57, i8 1, i32 1, i8 1, i32 8, i8 0, !72}
!72 = !{i32 3, i32 1}
!73 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !57, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!74 = !{!75}
!75 = !{i32 0, !"SV_Target", i8 9, i8 16, !57, i8 0, i32 1, i8 4, i32 0, i8 0, !66}
!76 = !{i32 0, i64 24}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}

