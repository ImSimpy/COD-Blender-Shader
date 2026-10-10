;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float       
; TEXCOORDS                0   xy          2     NONE   float   xy  
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           6     NONE    uint   x   
; TRANSIENT_INDEX          0    y          6     NONE    uint       
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 01eadc6890492a71535c4d0a24a34a4d
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
; LMAPCOORDS               0                 linear       
; NORMAL                   0                 linear       
; TANGENT                  0                 linear       
; MATERIAL_DATA_OFFSET     0        nointerpolation       
; TRANSIENT_INDEX          0        nointerpolation       
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
;                                   sampler      NA          NA      S3             s4     1
;                                   texture     f32          2d      T0      t0,space3unbounded
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture    byte         r/o      T3     t37,space1     1
;                                   texture     f32          2d      T4     t33,space2     1
;                                   texture     f32     2darray      T5     t16,space2     1
;                                   texture     f32          3d      T6     t15,space2     1
;                                   texture     f32          2d      T7     t14,space2     1
;                                   texture     f32          2d      T8     t13,space2     1
;                                   texture     u32          2d      T9     t17,space2     1
;                                   texture     f32          3d     T10     t18,space2     1
;                                   texture     f32     2darray     T11     t23,space2     1
;                                   texture     f32     2darray     T12     t24,space2     1
;                                   texture     f32     2darray     T13     t25,space2     1
;                                   texture    byte         r/o     T14     t66,space1     1
;                                   texture    byte         r/o     T15     t16,space1     1
;                                   texture    byte         r/o     T16     t17,space1     1
;                                   texture     u32     2darray     T17     t11,space2     1
;                                   texture     f32     2darray     T18     t10,space2     1
;                                   texture     f32          2d     T19     t69,space2     1
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
; Number of inputs: 26, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24 }
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
%struct.ByteAddressBuffer = type { i32 }
%"class.Texture3D<vector<float, 4> >" = type { <4 x float>, %"class.Texture3D<vector<float, 4> >::mips_type" }
%"class.Texture3D<vector<float, 4> >::mips_type" = type { i32 }
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
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %40 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %55 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %56 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %57 = extractvalue %dx.types.CBufRet.f32 %56, 0
  %58 = fmul fast float %57, %51
  %59 = fmul fast float %57, %52
  %60 = fmul fast float %44, %41
  %61 = fmul fast float %45, %40
  %62 = fsub fast float %60, %61
  %63 = fmul fast float %45, %39
  %64 = fmul fast float %43, %41
  %65 = fsub fast float %63, %64
  %66 = fmul fast float %43, %40
  %67 = fmul fast float %44, %39
  %68 = fsub fast float %66, %67
  %69 = fmul fast float %62, %42
  %70 = fmul fast float %65, %42
  %71 = fmul fast float %68, %42
  %72 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %73 = extractvalue %dx.types.CBufRet.f32 %72, 2
  %74 = extractvalue %dx.types.CBufRet.f32 %72, 3
  %75 = fmul fast float %73, 2.000000e+00
  %76 = fmul fast float %75, %58
  %77 = fmul fast float %74, 2.000000e+00
  %78 = fmul fast float %77, %59
  %79 = fsub fast float 1.000000e+00, %76
  %80 = fsub fast float 1.000000e+00, %78
  %81 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %82 = extractvalue %dx.types.CBufRet.f32 %81, 0
  %83 = extractvalue %dx.types.CBufRet.f32 %81, 1
  %84 = extractvalue %dx.types.CBufRet.f32 %81, 2
  %85 = fmul fast float %79, %82
  %86 = fmul fast float %79, %83
  %87 = fmul fast float %79, %84
  %88 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %89 = extractvalue %dx.types.CBufRet.f32 %88, 0
  %90 = extractvalue %dx.types.CBufRet.f32 %88, 1
  %91 = extractvalue %dx.types.CBufRet.f32 %88, 2
  %92 = fmul fast float %80, %89
  %93 = fmul fast float %80, %90
  %94 = fmul fast float %80, %91
  %95 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %96 = extractvalue %dx.types.CBufRet.f32 %95, 0
  %97 = extractvalue %dx.types.CBufRet.f32 %95, 1
  %98 = extractvalue %dx.types.CBufRet.f32 %95, 2
  %99 = fadd fast float %92, %96
  %100 = fadd fast float %99, %85
  %101 = fadd fast float %93, %97
  %102 = fadd fast float %101, %86
  %103 = fadd fast float %94, %98
  %104 = fadd fast float %103, %87
  %105 = fmul fast float %100, %53
  %106 = fmul fast float %102, %53
  %107 = fmul fast float %104, %53
  %108 = fadd fast float %48, 5.000000e-01
  %109 = fptoui float %108 to i32
  %110 = shl i32 %109, 3
  %111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %110, i32 undef)  ; BufferLoad(srv,index,wot)
  %112 = extractvalue %dx.types.ResRet.i32 %111, 0
  %113 = or i32 %110, 4
  %114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %113, i32 undef)  ; BufferLoad(srv,index,wot)
  %115 = extractvalue %dx.types.ResRet.i32 %114, 0
  %116 = and i32 %112, 8191
  %117 = lshr i32 %112, 13
  %118 = and i32 %117, 8191
  %119 = lshr i32 %112, 26
  %120 = and i32 %115, 65535
  %121 = lshr i32 %115, 16
  %122 = uitofp i32 %120 to float
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %125 = uitofp i32 %121 to float
  %126 = uitofp i32 %116 to float
  %127 = fmul fast float %124, %126
  %128 = uitofp i32 %118 to float
  %129 = fmul fast float %124, %128
  %130 = fmul fast float %124, %46
  %131 = fmul fast float %130, %122
  %132 = fmul fast float %124, %47
  %133 = fmul fast float %132, %125
  %134 = fadd fast float %131, %127
  %135 = fadd fast float %129, %133
  %136 = uitofp i32 %119 to float
  %137 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %138 = extractvalue %dx.types.CBufRet.f32 %137, 2
  %139 = extractvalue %dx.types.CBufRet.f32 %137, 3
  %140 = fmul fast float %138, %58
  %141 = fmul fast float %139, %59
  %142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %143 = extractvalue %dx.types.ResRet.i32 %142, 0
  %144 = and i32 %143, 114688
  %145 = icmp ne i32 %144, 0
  %146 = select i1 %145, float %140, float 0.000000e+00
  %147 = select i1 %145, float %141, float 0.000000e+00
  %148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %146, float %147, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %149 = extractvalue %dx.types.ResRet.f32 %148, 0
  %150 = fmul fast float %149, 2.550000e+02
  %151 = fptoui float %150 to i32
  %152 = select i1 %145, i32 %151, i32 0
  %153 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %154 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %155 = extractvalue %dx.types.CBufRet.i32 %154, 3
  %156 = and i32 %155, 3
  %157 = icmp ne i32 %156, 0
  %158 = and i32 %155, 4
  %159 = icmp ne i32 %158, 0
  %160 = and i1 %157, %159
  br i1 %160, label %161, label %172

; <label>:161                                     ; preds = %0
  %162 = extractvalue %dx.types.CBufRet.f32 %153, 3
  %163 = fmul fast float %162, %59
  %164 = extractvalue %dx.types.CBufRet.f32 %153, 2
  %165 = fmul fast float %164, %58
  %166 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %34, float %165, float %163, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %167 = extractvalue %dx.types.ResRet.f32 %166, 0
  %168 = fsub fast float 1.000000e+00, %167
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 0
  %171 = fcmp fast olt float %168, %170
  br label %175

; <label>:172                                     ; preds = %0
  %173 = icmp eq i32 %158, 0
  %174 = and i1 %157, %173
  br label %175

; <label>:175                                     ; preds = %172, %161
  %176 = phi i1 [ %171, %161 ], [ %174, %172 ]
  %177 = add i32 %38, 60
  %178 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %177, i32 undef)  ; BufferLoad(srv,index,wot)
  %179 = extractvalue %dx.types.ResRet.i32 %178, 0
  %180 = shl i32 %179, 4
  %181 = and i32 %180, 32752
  %182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %181)  ; LegacyF16ToF32(value)
  %183 = lshr i32 %179, 7
  %184 = and i32 %183, 32752
  %185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %184)  ; LegacyF16ToF32(value)
  %186 = lshr i32 %179, 22
  %187 = shl nuw nsw i32 %186, 5
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = add i32 %38, 72
  %190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %191 = extractvalue %dx.types.ResRet.i32 %190, 0
  %192 = and i32 %191, 255
  %193 = uitofp i32 %192 to float
  %194 = fmul fast float %193, 0x3F70101020000000
  %195 = lshr i32 %191, 8
  %196 = and i32 %195, 255
  %197 = uitofp i32 %196 to float
  %198 = fmul fast float %197, 0x3F70101020000000
  %199 = lshr i32 %191, 16
  %200 = and i32 %199, 255
  %201 = uitofp i32 %200 to float
  %202 = fmul fast float %201, 0x3F70101020000000
  %203 = add i32 %38, 36
  %204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %203, i32 undef)  ; BufferLoad(srv,index,wot)
  %205 = extractvalue %dx.types.ResRet.i32 %204, 0
  %206 = add i32 %38, 96
  %207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %206, i32 undef)  ; BufferLoad(srv,index,wot)
  %208 = extractvalue %dx.types.ResRet.i32 %207, 0
  %209 = add i32 %38, 24
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = add i32 %38, 28
  %213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %212, i32 undef)  ; BufferLoad(srv,index,wot)
  %214 = extractvalue %dx.types.ResRet.i32 %213, 0
  %215 = or i32 %214, %211
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %706, label %217

; <label>:217                                     ; preds = %175
  %218 = lshr i32 %208, 16
  %219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %218)  ; LegacyF16ToF32(value)
  %220 = fmul fast float %219, 0x3F50624DE0000000
  %221 = and i32 %208, 65535
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = fmul fast float %222, 0x3F50624DE0000000
  %224 = lshr i32 %205, 16
  %225 = call float @dx.op.legacyF16ToF32(i32 131, i32 %224)  ; LegacyF16ToF32(value)
  %226 = and i32 %205, 65535
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = add i32 %38, 92
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = lshr i32 %230, 16
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = fmul fast float %232, 0x3F50624DE0000000
  %234 = add i32 %38, 40
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = lshr i32 %236, 16
  %238 = and i32 %237, 255
  %239 = lshr i32 %236, 24
  %240 = add i32 %38, 100
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = and i32 %242, 65535
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %242, 16
  %246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %245)  ; LegacyF16ToF32(value)
  %247 = add i32 %38, 32
  %248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %247, i32 undef)  ; BufferLoad(srv,index,wot)
  %249 = extractvalue %dx.types.ResRet.i32 %248, 0
  %250 = lshr i32 %249, 22
  %251 = shl nuw nsw i32 %250, 5
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = shl i32 %249, 4
  %254 = and i32 %253, 32752
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %249, 7
  %257 = and i32 %256, 32752
  %258 = call float @dx.op.legacyF16ToF32(i32 131, i32 %257)  ; LegacyF16ToF32(value)
  %259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %260 = extractvalue %dx.types.CBufRet.f32 %259, 3
  %261 = fmul fast float %260, 1.000000e+03
  %262 = fmul fast float %223, %261
  %263 = call float @dx.op.unary.f32(i32 22, float %262)  ; Frc(value)
  %264 = fadd fast float %263, %227
  %265 = fmul fast float %220, %261
  %266 = call float @dx.op.unary.f32(i32 22, float %265)  ; Frc(value)
  %267 = fadd fast float %266, %225
  %268 = fmul fast float %233, %261
  %269 = call float @dx.op.unary.f32(i32 22, float %268)  ; Frc(value)
  %270 = fmul fast float %269, 0x401921FB60000000
  %271 = fadd fast float %270, %252
  %272 = call float @dx.op.unary.f32(i32 13, float %271)  ; Sin(value)
  %273 = call float @dx.op.unary.f32(i32 12, float %271)  ; Cos(value)
  %274 = fsub fast float -0.000000e+00, %272
  %275 = fadd fast float %49, -5.000000e-01
  %276 = fadd fast float %50, -5.000000e-01
  %277 = fmul fast float %244, %275
  %278 = fmul fast float %246, %276
  %279 = fadd fast float %277, 5.000000e-01
  %280 = fadd fast float %278, 5.000000e-01
  %281 = fmul fast float %255, %279
  %282 = fmul fast float %258, %280
  %283 = fmul fast float %273, %281
  %284 = call float @dx.op.tertiary.f32(i32 46, float %274, float %282, float %283)  ; FMad(a,b,c)
  %285 = fmul fast float %272, %281
  %286 = call float @dx.op.tertiary.f32(i32 46, float %273, float %282, float %285)  ; FMad(a,b,c)
  %287 = fadd fast float %264, %284
  %288 = fadd fast float %267, %286
  %289 = icmp ugt i32 %238, 1
  %290 = icmp ugt i32 %236, 33554431
  %291 = or i1 %290, %289
  br i1 %291, label %292, label %317

; <label>:292                                     ; preds = %217
  %293 = add i32 %38, 84
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = lshr i32 %295, 16
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = fmul fast float %260, %297
  %299 = call float @dx.op.unary.f32(i32 22, float %298)  ; Frc(value)
  %300 = mul nuw nsw i32 %238, %239
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %299, %301
  %303 = call float @dx.op.unary.f32(i32 27, float %302)  ; Round_ni(value)
  %304 = fptoui float %303 to i32
  %305 = urem i32 %304, %238
  %306 = udiv i32 %304, %239
  %307 = call float @dx.op.unary.f32(i32 22, float %287)  ; Frc(value)
  %308 = call float @dx.op.unary.f32(i32 22, float %288)  ; Frc(value)
  %309 = uitofp i32 %305 to float
  %310 = uitofp i32 %306 to float
  %311 = fadd fast float %307, %309
  %312 = fadd fast float %308, %310
  %313 = uitofp i32 %238 to float
  %314 = uitofp i32 %239 to float
  %315 = fdiv fast float %311, %313
  %316 = fdiv fast float %312, %314
  br label %317

; <label>:317                                     ; preds = %292, %217
  %318 = phi float [ %315, %292 ], [ %287, %217 ]
  %319 = phi float [ %316, %292 ], [ %288, %217 ]
  %320 = and i32 %211, 16
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %518, label %322

; <label>:322                                     ; preds = %317
  %323 = add i32 %38, 120
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = add i32 %325, 0
  %327 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %326, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %328 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %327, %dx.types.Handle %54, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %329 = extractvalue %dx.types.ResRet.f32 %328, 0
  %330 = extractvalue %dx.types.ResRet.f32 %328, 1
  %331 = extractvalue %dx.types.ResRet.f32 %328, 2
  %332 = extractvalue %dx.types.ResRet.f32 %328, 3
  %333 = and i32 %236, 255
  %334 = uitofp i32 %333 to float
  %335 = lshr i32 %236, 8
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %332, %334
  %339 = fadd fast float %338, %337
  %340 = fmul fast float %339, 0x3F70101000000000
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 512
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %353, label %345

; <label>:345                                     ; preds = %322
  %346 = add i32 %38, 140
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = add i32 %348, 0
  %350 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %349, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %351 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %350, %dx.types.Handle %55, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %352 = extractvalue %dx.types.ResRet.f32 %351, 0
  br label %353

; <label>:353                                     ; preds = %345, %322
  %354 = phi float [ %352, %345 ], [ 1.000000e+00, %322 ]
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 33554432
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %465, label %359

; <label>:359                                     ; preds = %353
  %360 = add i32 %38, 80
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %38, 84
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 65535
  %371 = call float @dx.op.legacyF16ToF32(i32 131, i32 %370)  ; LegacyF16ToF32(value)
  %372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %189, i32 undef)  ; BufferLoad(srv,index,wot)
  %373 = extractvalue %dx.types.ResRet.i32 %372, 0
  %374 = lshr i32 %373, 24
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = and i32 %373, 255
  %378 = uitofp i32 %377 to float
  %379 = fmul fast float %378, 0x3F70101020000000
  %380 = lshr i32 %373, 8
  %381 = and i32 %380, 255
  %382 = uitofp i32 %381 to float
  %383 = fmul fast float %382, 0x3F70101020000000
  %384 = lshr i32 %373, 16
  %385 = and i32 %384, 255
  %386 = uitofp i32 %385 to float
  %387 = fmul fast float %386, 0x3F70101020000000
  %388 = add i32 %38, 76
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = lshr i32 %390, 24
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F70101020000000
  %394 = and i32 %390, 255
  %395 = uitofp i32 %394 to float
  %396 = fmul fast float %395, 0x3F70101020000000
  %397 = lshr i32 %390, 8
  %398 = and i32 %397, 255
  %399 = uitofp i32 %398 to float
  %400 = fmul fast float %399, 0x3F70101020000000
  %401 = lshr i32 %390, 16
  %402 = and i32 %401, 255
  %403 = uitofp i32 %402 to float
  %404 = fmul fast float %403, 0x3F70101020000000
  %405 = bitcast float %329 to i32
  %406 = ashr i32 %405, 1
  %407 = sub nsw i32 1597463174, %406
  %408 = bitcast i32 %407 to float
  %409 = fmul fast float %329, 5.000000e-01
  %410 = fmul fast float %408, %408
  %411 = fmul fast float %410, %409
  %412 = fsub fast float 1.500000e+00, %411
  %413 = fmul fast float %408, %329
  %414 = fmul fast float %413, %412
  %415 = bitcast float %330 to i32
  %416 = ashr i32 %415, 1
  %417 = sub nsw i32 1597463174, %416
  %418 = bitcast i32 %417 to float
  %419 = fmul fast float %330, 5.000000e-01
  %420 = fmul fast float %418, %418
  %421 = fmul fast float %420, %419
  %422 = fsub fast float 1.500000e+00, %421
  %423 = fmul fast float %418, %330
  %424 = fmul fast float %423, %422
  %425 = bitcast float %331 to i32
  %426 = ashr i32 %425, 1
  %427 = sub nsw i32 1597463174, %426
  %428 = bitcast i32 %427 to float
  %429 = fmul fast float %331, 5.000000e-01
  %430 = fmul fast float %428, %428
  %431 = fmul fast float %430, %429
  %432 = fsub fast float 1.500000e+00, %431
  %433 = fmul fast float %428, %331
  %434 = fmul fast float %433, %432
  %435 = fsub fast float %414, %396
  %436 = fsub fast float %424, %400
  %437 = fsub fast float %434, %404
  %438 = fmul fast float %435, %364
  %439 = fmul fast float %436, %366
  %440 = fmul fast float %437, %371
  %441 = fadd fast float %438, %379
  %442 = fadd fast float %439, %383
  %443 = fadd fast float %440, %387
  %444 = call float @dx.op.unary.f32(i32 7, float %441)  ; Saturate(value)
  %445 = call float @dx.op.unary.f32(i32 7, float %442)  ; Saturate(value)
  %446 = call float @dx.op.unary.f32(i32 7, float %443)  ; Saturate(value)
  %447 = fmul fast float %444, %444
  %448 = fmul fast float %445, %445
  %449 = fmul fast float %446, %446
  %450 = fsub fast float %447, %329
  %451 = fsub fast float %448, %330
  %452 = fsub fast float %449, %331
  %453 = fmul fast float %450, %354
  %454 = fmul fast float %451, %354
  %455 = fmul fast float %452, %354
  %456 = fadd fast float %453, %329
  %457 = fadd fast float %454, %330
  %458 = fadd fast float %455, %331
  %459 = fadd fast float %376, %340
  %460 = fsub fast float %459, %393
  %461 = call float @dx.op.unary.f32(i32 7, float %460)  ; Saturate(value)
  %462 = fsub fast float %461, %340
  %463 = fmul fast float %462, %354
  %464 = fadd fast float %463, %340
  br label %518

; <label>:465                                     ; preds = %353
  %466 = and i32 %356, 134217728
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %502, label %468

; <label>:468                                     ; preds = %465
  %469 = call float @dx.op.unary.f32(i32 24, float %194)  ; Sqrt(value)
  %470 = call float @dx.op.unary.f32(i32 24, float %198)  ; Sqrt(value)
  %471 = call float @dx.op.unary.f32(i32 24, float %202)  ; Sqrt(value)
  %472 = fadd fast float %469, -5.000000e-01
  %473 = fadd fast float %470, -5.000000e-01
  %474 = fadd fast float %471, -5.000000e-01
  %475 = fmul fast float %472, %354
  %476 = fmul fast float %473, %354
  %477 = fmul fast float %474, %354
  %478 = fadd fast float %475, 5.000000e-01
  %479 = fadd fast float %476, 5.000000e-01
  %480 = fadd fast float %477, 5.000000e-01
  %481 = call float @dx.op.unary.f32(i32 24, float %329)  ; Sqrt(value)
  %482 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %483 = call float @dx.op.unary.f32(i32 24, float %331)  ; Sqrt(value)
  %484 = fmul fast float %478, 2.000000e+00
  %485 = fsub fast float 1.000000e+00, %484
  %486 = fmul fast float %485, %481
  %487 = fadd fast float %486, %484
  %488 = fmul fast float %487, %481
  %489 = fmul fast float %479, 2.000000e+00
  %490 = fsub fast float 1.000000e+00, %489
  %491 = fmul fast float %490, %482
  %492 = fadd fast float %491, %489
  %493 = fmul fast float %492, %482
  %494 = fmul fast float %480, 2.000000e+00
  %495 = fsub fast float 1.000000e+00, %494
  %496 = fmul fast float %495, %483
  %497 = fadd fast float %496, %494
  %498 = fmul fast float %497, %483
  %499 = fmul fast float %488, %488
  %500 = fmul fast float %493, %493
  %501 = fmul fast float %498, %498
  br label %518

; <label>:502                                     ; preds = %465
  %503 = fmul fast float %194, %194
  %504 = fmul fast float %198, %198
  %505 = fmul fast float %202, %202
  %506 = fadd fast float %503, -1.000000e+00
  %507 = fadd fast float %504, -1.000000e+00
  %508 = fadd fast float %505, -1.000000e+00
  %509 = fmul fast float %354, %506
  %510 = fmul fast float %354, %507
  %511 = fmul fast float %354, %508
  %512 = fadd fast float %509, 1.000000e+00
  %513 = fadd fast float %510, 1.000000e+00
  %514 = fadd fast float %511, 1.000000e+00
  %515 = fmul fast float %512, %329
  %516 = fmul fast float %513, %330
  %517 = fmul fast float %514, %331
  br label %518

; <label>:518                                     ; preds = %502, %468, %359, %317
  %519 = phi float [ %464, %359 ], [ %340, %468 ], [ %340, %502 ], [ 0x3FA23C0BE0000000, %317 ]
  %520 = phi float [ %456, %359 ], [ %499, %468 ], [ %515, %502 ], [ 1.000000e+00, %317 ]
  %521 = phi float [ %457, %359 ], [ %500, %468 ], [ %516, %502 ], [ 1.000000e+00, %317 ]
  %522 = phi float [ %458, %359 ], [ %501, %468 ], [ %517, %502 ], [ 1.000000e+00, %317 ]
  %523 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %524 = extractvalue %dx.types.CBufRet.i32 %523, 1
  %525 = and i32 %524, 1
  %526 = icmp ne i32 %525, 0
  %527 = add i32 %38, 116
  %528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %527, i32 undef)  ; BufferLoad(srv,index,wot)
  %529 = extractvalue %dx.types.ResRet.i32 %528, 0
  %530 = and i32 %529, 32
  %531 = icmp ne i32 %530, 0
  %532 = and i1 %526, %531
  %533 = select i1 %532, float 1.000000e+00, float %520
  %534 = select i1 %532, float 0x3FD3333340000000, float %521
  %535 = select i1 %532, float 0x3FD3333340000000, float %522
  %536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %537 = extractvalue %dx.types.ResRet.i32 %536, 0
  %538 = and i32 %537, 32
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %612, label %540

; <label>:540                                     ; preds = %518
  %541 = add i32 %38, 44
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = add i32 %38, 124
  %545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %544, i32 undef)  ; BufferLoad(srv,index,wot)
  %546 = extractvalue %dx.types.ResRet.i32 %545, 0
  %547 = add i32 %546, 0
  %548 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %547, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %549 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %548, %dx.types.Handle %54, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %550 = extractvalue %dx.types.ResRet.f32 %549, 0
  %551 = extractvalue %dx.types.ResRet.f32 %549, 1
  %552 = extractvalue %dx.types.ResRet.f32 %549, 2
  %553 = extractvalue %dx.types.ResRet.f32 %549, 3
  %554 = and i32 %543, 255
  %555 = uitofp i32 %554 to float
  %556 = lshr i32 %543, 8
  %557 = and i32 %556, 255
  %558 = uitofp i32 %557 to float
  %559 = lshr i32 %543, 16
  %560 = and i32 %559, 255
  %561 = uitofp i32 %560 to float
  %562 = fmul fast float %561, 0x3F70101000000000
  %563 = fmul fast float %550, %555
  %564 = fadd fast float %563, %558
  %565 = fmul fast float %564, 0x3F70101000000000
  %566 = fadd fast float %551, -5.000000e-01
  %567 = fadd fast float %553, -5.000000e-01
  %568 = fmul fast float %566, %562
  %569 = fmul fast float %567, %562
  %570 = fadd fast float %568, 5.000000e-01
  %571 = fadd fast float %569, 5.000000e-01
  %572 = fmul fast float %570, 2.000000e+00
  %573 = fadd fast float %572, -1.000000e+00
  %574 = fmul fast float %571, 2.000000e+00
  %575 = fadd fast float %574, -1.000000e+00
  %576 = fadd fast float %573, %575
  %577 = fmul fast float %576, 5.000000e-01
  %578 = fsub fast float %573, %575
  %579 = fmul fast float %578, 5.000000e-01
  %580 = call float @dx.op.unary.f32(i32 6, float %577)  ; FAbs(value)
  %581 = fsub fast float 1.000000e+00, %580
  %582 = call float @dx.op.unary.f32(i32 6, float %579)  ; FAbs(value)
  %583 = fsub fast float %581, %582
  %584 = call float @dx.op.dot3.f32(i32 55, float %577, float %579, float %583, float %577, float %579, float %583)  ; Dot3(ax,ay,az,bx,by,bz)
  %585 = call float @dx.op.unary.f32(i32 25, float %584)  ; Rsqrt(value)
  %586 = fmul fast float %577, %585
  %587 = fmul fast float %579, %585
  %588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %589 = extractvalue %dx.types.ResRet.i32 %588, 0
  %590 = and i32 %589, 67108864
  %591 = icmp eq i32 %590, 0
  br i1 %591, label %608, label %592

; <label>:592                                     ; preds = %540
  %593 = add i32 %38, 88
  %594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %593, i32 undef)  ; BufferLoad(srv,index,wot)
  %595 = extractvalue %dx.types.ResRet.i32 %594, 0
  %596 = and i32 %595, 65535
  %597 = call float @dx.op.legacyF16ToF32(i32 131, i32 %596)  ; LegacyF16ToF32(value)
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = and i32 %599, 65535
  %601 = call float @dx.op.legacyF16ToF32(i32 131, i32 %600)  ; LegacyF16ToF32(value)
  %602 = lshr i32 %595, 16
  %603 = call float @dx.op.legacyF16ToF32(i32 131, i32 %602)  ; LegacyF16ToF32(value)
  %604 = fsub fast float %565, %603
  %605 = fmul fast float %604, %597
  %606 = fadd fast float %605, %601
  %607 = call float @dx.op.unary.f32(i32 7, float %606)  ; Saturate(value)
  br label %608

; <label>:608                                     ; preds = %592, %540
  %609 = phi float [ %607, %592 ], [ %565, %540 ]
  %610 = call float @dx.op.dot2.f32(i32 54, float %586, float %587, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %611 = call float @dx.op.dot2.f32(i32 54, float %586, float %587, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %612

; <label>:612                                     ; preds = %608, %518
  %613 = phi float [ %609, %608 ], [ 0x3FD6666660000000, %518 ]
  %614 = phi float [ %610, %608 ], [ 0.000000e+00, %518 ]
  %615 = phi float [ %611, %608 ], [ 0.000000e+00, %518 ]
  %616 = phi float [ %552, %608 ], [ 1.000000e+00, %518 ]
  %617 = add i32 %38, 64
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %617, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = lshr i32 %619, 22
  %621 = shl nuw nsw i32 %620, 5
  %622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %621)  ; LegacyF16ToF32(value)
  %623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %624 = extractvalue %dx.types.ResRet.i32 %623, 0
  %625 = and i32 %624, 64
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %660, label %627

; <label>:627                                     ; preds = %612
  %628 = add i32 %38, 128
  %629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %628, i32 undef)  ; BufferLoad(srv,index,wot)
  %630 = extractvalue %dx.types.ResRet.i32 %629, 0
  %631 = add i32 %630, 0
  %632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %631, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 131072
  %636 = icmp eq i32 %635, 0
  %637 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %632, %dx.types.Handle %54, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %638 = extractvalue %dx.types.ResRet.f32 %637, 0
  %639 = extractvalue %dx.types.ResRet.f32 %637, 1
  %640 = extractvalue %dx.types.ResRet.f32 %637, 2
  %641 = fmul fast float %638, %182
  %642 = fmul fast float %639, %185
  %643 = fmul fast float %640, %188
  br i1 %636, label %650, label %644

; <label>:644                                     ; preds = %627
  %645 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %646 = extractvalue %dx.types.CBufRet.f32 %645, 0
  %647 = fmul fast float %646, %641
  %648 = fmul fast float %646, %642
  %649 = fmul fast float %646, %643
  br label %650

; <label>:650                                     ; preds = %644, %627
  %651 = phi float [ %647, %644 ], [ %641, %627 ]
  %652 = phi float [ %648, %644 ], [ %642, %627 ]
  %653 = phi float [ %649, %644 ], [ %643, %627 ]
  %654 = fmul fast float %651, %622
  %655 = select i1 %176, float %654, float %651
  %656 = call float @dx.op.dot3.f32(i32 55, float %655, float %652, float %653, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %657 = select i1 %176, float 0.000000e+00, float %651
  %658 = select i1 %176, float %656, float %652
  %659 = select i1 %176, float 0.000000e+00, float %653
  br label %660

; <label>:660                                     ; preds = %650, %612
  %661 = phi float [ %657, %650 ], [ 0.000000e+00, %612 ]
  %662 = phi float [ %658, %650 ], [ 0.000000e+00, %612 ]
  %663 = phi float [ %659, %650 ], [ 0.000000e+00, %612 ]
  %664 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %665 = extractvalue %dx.types.ResRet.i32 %664, 0
  %666 = and i32 %665, 26624
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %691, label %668

; <label>:668                                     ; preds = %660
  %669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %670 = extractvalue %dx.types.ResRet.i32 %669, 0
  %671 = and i32 %670, 16384
  %672 = icmp eq i32 %671, 0
  br i1 %672, label %691, label %673

; <label>:673                                     ; preds = %668
  %674 = and i32 %670, 1048576
  %675 = icmp ne i32 %674, 0
  %676 = add i32 %38, 144
  %677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %676, i32 undef)  ; BufferLoad(srv,index,wot)
  %678 = extractvalue %dx.types.ResRet.i32 %677, 0
  %679 = add i32 %678, 0
  %680 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %679, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %681 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %680, %dx.types.Handle %55, float %318, float %319, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %682 = extractvalue %dx.types.ResRet.f32 %681, 0
  %683 = add i32 %38, 48
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %683, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = lshr i32 %685, 24
  %687 = uitofp i32 %686 to float
  %688 = fmul fast float %682, 0x3F70101020000000
  %689 = select i1 %675, float 0x3F70101020000000, float %688
  %690 = fmul fast float %689, %687
  br label %691

; <label>:691                                     ; preds = %673, %668, %660
  %692 = phi float [ %690, %673 ], [ 0.000000e+00, %668 ], [ 0.000000e+00, %660 ]
  %693 = add i32 %38, 48
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %693, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 255
  %697 = uitofp i32 %696 to float
  %698 = lshr i32 %695, 8
  %699 = and i32 %698, 255
  %700 = uitofp i32 %699 to float
  %701 = call float @dx.op.dot3.f32(i32 55, float %533, float %534, float %535, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %702 = fmul fast float %700, %701
  %703 = fadd fast float %702, %697
  %704 = fmul fast float %703, 0x3F70101020000000
  %705 = call float @dx.op.unary.f32(i32 7, float %704)  ; Saturate(value)
  br label %706

; <label>:706                                     ; preds = %691, %175
  %707 = phi float [ 0.000000e+00, %175 ], [ %614, %691 ]
  %708 = phi float [ 0.000000e+00, %175 ], [ %615, %691 ]
  %709 = phi float [ 0.000000e+00, %175 ], [ %533, %691 ]
  %710 = phi float [ 0.000000e+00, %175 ], [ %534, %691 ]
  %711 = phi float [ 0.000000e+00, %175 ], [ %535, %691 ]
  %712 = phi float [ 0.000000e+00, %175 ], [ %661, %691 ]
  %713 = phi float [ 0.000000e+00, %175 ], [ %662, %691 ]
  %714 = phi float [ 0.000000e+00, %175 ], [ %663, %691 ]
  %715 = phi float [ 0.000000e+00, %175 ], [ %519, %691 ]
  %716 = phi float [ 0.000000e+00, %175 ], [ 1.000000e+00, %691 ]
  %717 = phi float [ 0.000000e+00, %175 ], [ %613, %691 ]
  %718 = phi float [ 0.000000e+00, %175 ], [ %616, %691 ]
  %719 = phi float [ 0.000000e+00, %175 ], [ %692, %691 ]
  %720 = phi float [ 0.000000e+00, %175 ], [ %705, %691 ]
  %721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %722 = extractvalue %dx.types.CBufRet.f32 %721, 0
  %723 = call float @dx.op.dot2.f32(i32 54, float %707, float %708, float %707, float %708)  ; Dot2(ax,ay,bx,by)
  %724 = fmul fast float %723, 0x3FE3333340000000
  %725 = fsub fast float 1.000000e+00, %724
  %726 = call float @dx.op.dot3.f32(i32 55, float %707, float %708, float %725, float %707, float %708, float %725)  ; Dot3(ax,ay,az,bx,by,bz)
  %727 = call float @dx.op.unary.f32(i32 25, float %726)  ; Rsqrt(value)
  %728 = fmul fast float %727, %707
  %729 = fmul fast float %727, %708
  %730 = fmul fast float %725, %727
  %731 = fmul fast float %730, %43
  %732 = fmul fast float %730, %44
  %733 = fmul fast float %730, %45
  %734 = fmul fast float %728, %39
  %735 = fmul fast float %728, %40
  %736 = fmul fast float %728, %41
  %737 = fadd fast float %731, %734
  %738 = fadd fast float %732, %735
  %739 = fadd fast float %733, %736
  %740 = fmul fast float %729, %69
  %741 = fmul fast float %729, %70
  %742 = fmul fast float %729, %71
  %743 = fadd fast float %737, %740
  %744 = fadd fast float %738, %741
  %745 = fadd fast float %739, %742
  %746 = call float @dx.op.dot3.f32(i32 55, float %743, float %744, float %745, float %743, float %744, float %745)  ; Dot3(ax,ay,az,bx,by,bz)
  %747 = call float @dx.op.unary.f32(i32 25, float %746)  ; Rsqrt(value)
  %748 = fmul fast float %743, %747
  %749 = fmul fast float %744, %747
  %750 = fmul fast float %745, %747
  %751 = call float @dx.op.unary.f32(i32 83, float %105)  ; DerivCoarseX(value)
  %752 = call float @dx.op.unary.f32(i32 83, float %106)  ; DerivCoarseX(value)
  %753 = call float @dx.op.unary.f32(i32 83, float %107)  ; DerivCoarseX(value)
  %754 = call float @dx.op.unary.f32(i32 84, float %105)  ; DerivCoarseY(value)
  %755 = call float @dx.op.unary.f32(i32 84, float %106)  ; DerivCoarseY(value)
  %756 = call float @dx.op.unary.f32(i32 84, float %107)  ; DerivCoarseY(value)
  %757 = fadd fast float %751, %105
  %758 = fadd fast float %752, %106
  %759 = fadd fast float %753, %107
  %760 = fadd fast float %754, %105
  %761 = fadd fast float %755, %106
  %762 = fadd fast float %756, %107
  %763 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %764 = extractvalue %dx.types.CBufRet.f32 %763, 0
  %765 = extractvalue %dx.types.CBufRet.f32 %763, 1
  %766 = extractvalue %dx.types.CBufRet.f32 %763, 2
  %767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %768 = extractvalue %dx.types.CBufRet.f32 %767, 2
  %769 = extractvalue %dx.types.CBufRet.f32 %767, 3
  %770 = fmul fast float %764, %58
  %771 = fmul fast float %770, %768
  %772 = fmul fast float %765, %59
  %773 = fmul fast float %772, %769
  %774 = fptoui float %771 to i32
  %775 = fptoui float %773 to i32
  %776 = fadd fast float %764, -1.000000e+00
  %777 = fadd fast float %765, -1.000000e+00
  %778 = fptoui float %776 to i32
  %779 = fptoui float %777 to i32
  %780 = call i32 @dx.op.binary.i32(i32 40, i32 %774, i32 %778)  ; UMin(a,b)
  %781 = call i32 @dx.op.binary.i32(i32 40, i32 %775, i32 %779)  ; UMin(a,b)
  %782 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %783 = extractvalue %dx.types.CBufRet.f32 %782, 2
  %784 = extractvalue %dx.types.CBufRet.f32 %782, 3
  %785 = fmul fast float %783, %53
  %786 = fsub fast float %785, %784
  %787 = fadd fast float %766, -1.000000e+00
  %788 = call float @dx.op.binary.f32(i32 36, float %786, float %787)  ; FMin(a,b)
  %789 = fptoui float %788 to i32
  %790 = fptoui float %764 to i32
  %791 = fptoui float %765 to i32
  %792 = mul i32 %789, %791
  %793 = add i32 %792, %781
  %794 = mul i32 %793, %790
  %795 = add i32 %794, %780
  %796 = shl i32 %795, 2
  %797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %796, i32 undef)  ; BufferLoad(srv,index,wot)
  %798 = extractvalue %dx.types.ResRet.i32 %797, 0
  %799 = and i32 %798, 1023
  %800 = lshr i32 %798, 10
  %801 = icmp eq i32 %799, 0
  br i1 %801, label %1230, label %802

; <label>:802                                     ; preds = %706
  %803 = and i32 %798, 1023
  br label %804

; <label>:804                                     ; preds = %931, %802
  %805 = phi float [ %932, %931 ], [ 0.000000e+00, %802 ]
  %806 = phi float [ %933, %931 ], [ %716, %802 ]
  %807 = phi float [ %934, %931 ], [ %722, %802 ]
  %808 = phi float [ %935, %931 ], [ %720, %802 ]
  %809 = phi float [ %936, %931 ], [ %719, %802 ]
  %810 = phi float [ %937, %931 ], [ 0.000000e+00, %802 ]
  %811 = phi float [ %938, %931 ], [ %712, %802 ]
  %812 = phi float [ %939, %931 ], [ %713, %802 ]
  %813 = phi float [ %940, %931 ], [ %714, %802 ]
  %814 = phi float [ %941, %931 ], [ %748, %802 ]
  %815 = phi float [ %942, %931 ], [ %749, %802 ]
  %816 = phi float [ %943, %931 ], [ %750, %802 ]
  %817 = phi float [ %944, %931 ], [ %718, %802 ]
  %818 = phi float [ %945, %931 ], [ %717, %802 ]
  %819 = phi float [ %946, %931 ], [ 0.000000e+00, %802 ]
  %820 = phi float [ %947, %931 ], [ %715, %802 ]
  %821 = phi float [ %948, %931 ], [ %709, %802 ]
  %822 = phi float [ %949, %931 ], [ %710, %802 ]
  %823 = phi float [ %950, %931 ], [ %711, %802 ]
  %824 = phi i32 [ %881, %931 ], [ 0, %802 ]
  %825 = add nuw nsw i32 %824, %800
  %826 = shl i32 %825, 2
  %827 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %826, i32 undef)  ; BufferLoad(srv,index,wot)
  %828 = extractvalue %dx.types.ResRet.i32 %827, 0
  %829 = shl i32 %828, 8
  %830 = or i32 %829, 48
  %831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 0
  %833 = extractvalue %dx.types.ResRet.f32 %831, 1
  %834 = extractvalue %dx.types.ResRet.f32 %831, 2
  %835 = extractvalue %dx.types.ResRet.f32 %831, 3
  %836 = or i32 %829, 64
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = extractvalue %dx.types.ResRet.i32 %837, 1
  %840 = or i32 %829, 80
  %841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %840, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.f32 %841, 2
  %843 = extractvalue %dx.types.ResRet.f32 %841, 3
  %844 = or i32 %829, 96
  %845 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %844, i32 undef)  ; BufferLoad(srv,index,wot)
  %846 = extractvalue %dx.types.ResRet.f32 %845, 0
  %847 = extractvalue %dx.types.ResRet.f32 %845, 1
  %848 = extractvalue %dx.types.ResRet.f32 %845, 2
  %849 = extractvalue %dx.types.ResRet.f32 %845, 3
  %850 = or i32 %829, 112
  %851 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %850, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.f32 %851, 2
  %853 = or i32 %829, 128
  %854 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %853, i32 undef)  ; BufferLoad(srv,index,wot)
  %855 = extractvalue %dx.types.ResRet.f32 %854, 0
  %856 = extractvalue %dx.types.ResRet.f32 %854, 1
  %857 = extractvalue %dx.types.ResRet.f32 %854, 2
  %858 = extractvalue %dx.types.ResRet.f32 %854, 3
  %859 = or i32 %829, 144
  %860 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.f32 %860, 0
  %862 = extractvalue %dx.types.ResRet.f32 %860, 1
  %863 = extractvalue %dx.types.ResRet.f32 %860, 2
  %864 = extractvalue %dx.types.ResRet.f32 %860, 3
  %865 = or i32 %829, 160
  %866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %865, i32 undef)  ; BufferLoad(srv,index,wot)
  %867 = extractvalue %dx.types.ResRet.f32 %866, 0
  %868 = extractvalue %dx.types.ResRet.f32 %866, 1
  %869 = extractvalue %dx.types.ResRet.f32 %866, 2
  %870 = extractvalue %dx.types.ResRet.f32 %866, 3
  %871 = or i32 %829, 192
  %872 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.i32 %872, 0
  %874 = or i32 %829, 208
  %875 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.f32 %875, 0
  %877 = or i32 %829, 248
  %878 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %877, i32 undef)  ; BufferLoad(srv,index,wot)
  %879 = extractvalue %dx.types.ResRet.f32 %878, 0
  %880 = extractvalue %dx.types.ResRet.f32 %878, 1
  %881 = add nuw nsw i32 %824, 1
  %882 = bitcast float %835 to i32
  %883 = and i32 %882, 2560
  %884 = icmp eq i32 %883, 0
  %885 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %829, i32 undef)  ; BufferLoad(srv,index,wot)
  %886 = extractvalue %dx.types.ResRet.f32 %885, 0
  %887 = extractvalue %dx.types.ResRet.f32 %885, 1
  %888 = extractvalue %dx.types.ResRet.f32 %885, 2
  %889 = extractvalue %dx.types.ResRet.f32 %885, 3
  %890 = call float @dx.op.dot4.f32(i32 56, float %886, float %887, float %888, float %889, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %891 = or i32 %829, 16
  %892 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.f32 %892, 0
  %894 = extractvalue %dx.types.ResRet.f32 %892, 1
  %895 = extractvalue %dx.types.ResRet.f32 %892, 2
  %896 = extractvalue %dx.types.ResRet.f32 %892, 3
  %897 = call float @dx.op.dot4.f32(i32 56, float %893, float %894, float %895, float %896, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %898 = or i32 %829, 32
  %899 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.f32 %899, 0
  %901 = extractvalue %dx.types.ResRet.f32 %899, 1
  %902 = extractvalue %dx.types.ResRet.f32 %899, 2
  %903 = extractvalue %dx.types.ResRet.f32 %899, 3
  %904 = call float @dx.op.dot4.f32(i32 56, float %900, float %901, float %902, float %903, float %105, float %106, float %107, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %905 = call float @dx.op.unary.f32(i32 27, float %890)  ; Round_ni(value)
  %906 = call float @dx.op.unary.f32(i32 6, float %905)  ; FAbs(value)
  %907 = call float @dx.op.unary.f32(i32 27, float %897)  ; Round_ni(value)
  %908 = call float @dx.op.unary.f32(i32 6, float %907)  ; FAbs(value)
  %909 = call float @dx.op.unary.f32(i32 6, float %904)  ; FAbs(value)
  %910 = call float @dx.op.unary.f32(i32 27, float %909)  ; Round_ni(value)
  %911 = fadd fast float %908, %906
  %912 = fadd fast float %911, %910
  %913 = fcmp fast oeq float %912, 0.000000e+00
  %914 = call float @dx.op.dot4.f32(i32 56, float %886, float %887, float %888, float %889, float %757, float %758, float %759, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %915 = call float @dx.op.dot4.f32(i32 56, float %893, float %894, float %895, float %896, float %757, float %758, float %759, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %916 = call float @dx.op.dot4.f32(i32 56, float %886, float %887, float %888, float %889, float %760, float %761, float %762, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %917 = call float @dx.op.dot4.f32(i32 56, float %893, float %894, float %895, float %896, float %760, float %761, float %762, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %918 = fsub fast float %914, %890
  %919 = fsub fast float %916, %890
  %920 = fsub fast float %915, %897
  %921 = fsub fast float %917, %897
  %922 = call float @dx.op.dot3.f32(i32 55, float %832, float %833, float %834, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %924 = extractvalue %dx.types.CBufRet.f32 %923, 2
  %925 = fadd fast float %924, %922
  %926 = call float @dx.op.unary.f32(i32 7, float %925)  ; Saturate(value)
  %927 = extractvalue %dx.types.CBufRet.f32 %923, 0
  %928 = fcmp fast ogt float %926, %927
  %929 = and i1 %913, %928
  %930 = and i1 %884, %929
  br i1 %930, label %952, label %931

; <label>:931                                     ; preds = %1216, %1033, %952, %804
  %932 = phi float [ %805, %952 ], [ %1036, %1033 ], [ %1036, %1216 ], [ %805, %804 ]
  %933 = phi float [ %806, %952 ], [ %806, %1033 ], [ %1191, %1216 ], [ %806, %804 ]
  %934 = phi float [ %807, %952 ], [ %807, %1033 ], [ %1190, %1216 ], [ %807, %804 ]
  %935 = phi float [ %808, %952 ], [ %808, %1033 ], [ %1188, %1216 ], [ %808, %804 ]
  %936 = phi float [ %809, %952 ], [ %809, %1033 ], [ %1160, %1216 ], [ %809, %804 ]
  %937 = phi float [ %810, %952 ], [ %810, %1033 ], [ %1158, %1216 ], [ %810, %804 ]
  %938 = phi float [ %811, %952 ], [ %811, %1033 ], [ %1226, %1216 ], [ %811, %804 ]
  %939 = phi float [ %812, %952 ], [ %812, %1033 ], [ %1227, %1216 ], [ %812, %804 ]
  %940 = phi float [ %813, %952 ], [ %813, %1033 ], [ %1228, %1216 ], [ %813, %804 ]
  %941 = phi float [ %814, %952 ], [ %814, %1033 ], [ %1139, %1216 ], [ %814, %804 ]
  %942 = phi float [ %815, %952 ], [ %815, %1033 ], [ %1140, %1216 ], [ %815, %804 ]
  %943 = phi float [ %816, %952 ], [ %816, %1033 ], [ %1141, %1216 ], [ %816, %804 ]
  %944 = phi float [ %817, %952 ], [ %817, %1033 ], [ %1168, %1216 ], [ %817, %804 ]
  %945 = phi float [ %818, %952 ], [ %818, %1033 ], [ %1165, %1216 ], [ %818, %804 ]
  %946 = phi float [ %819, %952 ], [ %819, %1033 ], [ %1162, %1216 ], [ %819, %804 ]
  %947 = phi float [ %820, %952 ], [ %820, %1033 ], [ %1156, %1216 ], [ %820, %804 ]
  %948 = phi float [ %821, %952 ], [ %821, %1033 ], [ %1151, %1216 ], [ %821, %804 ]
  %949 = phi float [ %822, %952 ], [ %822, %1033 ], [ %1152, %1216 ], [ %822, %804 ]
  %950 = phi float [ %823, %952 ], [ %823, %1033 ], [ %1153, %1216 ], [ %823, %804 ]
  %951 = icmp eq i32 %881, %803
  br i1 %951, label %1229, label %804

; <label>:952                                     ; preds = %804
  %953 = extractvalue %dx.types.ResRet.f32 %851, 3
  %954 = extractvalue %dx.types.ResRet.f32 %851, 1
  %955 = extractvalue %dx.types.ResRet.f32 %851, 0
  %956 = extractvalue %dx.types.ResRet.f32 %841, 1
  %957 = extractvalue %dx.types.ResRet.f32 %841, 0
  %958 = extractvalue %dx.types.ResRet.i32 %837, 3
  %959 = extractvalue %dx.types.ResRet.i32 %837, 2
  %960 = add i32 %958, 0
  %961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %960, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %962 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %963 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %961, %dx.types.Handle %962, float %890, float %897, float undef, float undef, i32 0, i32 0, i32 undef, float %918, float %920, float undef, float %919, float %921, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %964 = extractvalue %dx.types.ResRet.f32 %963, 0
  %965 = fmul fast float %964, %957
  %966 = fadd fast float %965, %956
  %967 = call float @dx.op.unary.f32(i32 7, float %966)  ; Saturate(value)
  %968 = fmul fast float %890, %846
  %969 = call float @dx.op.tertiary.f32(i32 46, float %847, float %897, float %968)  ; FMad(a,b,c)
  %970 = fadd fast float %969, %955
  %971 = fmul fast float %890, %848
  %972 = call float @dx.op.tertiary.f32(i32 46, float %849, float %897, float %971)  ; FMad(a,b,c)
  %973 = fadd fast float %972, %954
  %974 = fmul fast float %918, %846
  %975 = call float @dx.op.tertiary.f32(i32 46, float %847, float %920, float %974)  ; FMad(a,b,c)
  %976 = fmul fast float %918, %848
  %977 = call float @dx.op.tertiary.f32(i32 46, float %849, float %920, float %976)  ; FMad(a,b,c)
  %978 = fmul fast float %919, %846
  %979 = call float @dx.op.tertiary.f32(i32 46, float %847, float %921, float %978)  ; FMad(a,b,c)
  %980 = fmul fast float %919, %848
  %981 = call float @dx.op.tertiary.f32(i32 46, float %849, float %921, float %980)  ; FMad(a,b,c)
  %982 = add i32 %959, 0
  %983 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %982, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %984 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %983, %dx.types.Handle %962, float %970, float %973, float undef, float undef, i32 0, i32 0, i32 undef, float %975, float %977, float undef, float %979, float %981, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %985 = extractvalue %dx.types.ResRet.f32 %984, 0
  %986 = and i32 %882, 1024
  %987 = icmp ne i32 %986, 0
  %988 = fcmp fast ogt float %985, 0x3FE0101020000000
  %989 = uitofp i1 %988 to float
  %990 = select i1 %987, float %989, float %985
  %991 = and i32 %882, 8192
  %992 = icmp ne i32 %991, 0
  %993 = select i1 %992, float %953, float 1.000000e+00
  %994 = fmul fast float %890, 2.000000e+00
  %995 = fadd fast float %994, -1.000000e+00
  %996 = call float @dx.op.unary.f32(i32 6, float %995)  ; FAbs(value)
  %997 = fmul fast float %996, %879
  %998 = fsub fast float %997, %879
  %999 = call float @dx.op.unary.f32(i32 7, float %998)  ; Saturate(value)
  %1000 = fmul fast float %897, 2.000000e+00
  %1001 = fadd fast float %1000, -1.000000e+00
  %1002 = call float @dx.op.unary.f32(i32 6, float %1001)  ; FAbs(value)
  %1003 = fmul fast float %1002, %880
  %1004 = fsub fast float %1003, %880
  %1005 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1006 = fmul fast float %909, %842
  %1007 = fsub fast float %1006, %842
  %1008 = call float @dx.op.unary.f32(i32 7, float %1007)  ; Saturate(value)
  %1009 = fmul fast float %967, %993
  %1010 = fmul fast float %1009, %964
  %1011 = fmul fast float %1010, %999
  %1012 = fmul fast float %1011, %990
  %1013 = fmul fast float %1012, %1005
  %1014 = fmul fast float %1013, %1008
  %1015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1016 = extractvalue %dx.types.CBufRet.f32 %1015, 1
  %1017 = extractvalue %dx.types.CBufRet.f32 %1015, 0
  %1018 = fsub fast float %926, %1017
  %1019 = fmul fast float %1018, %1016
  %1020 = call float @dx.op.unary.f32(i32 7, float %1019)  ; Saturate(value)
  %1021 = fmul fast float %1014, %843
  %1022 = fadd fast float %1014, %843
  %1023 = fmul fast float %1022, %852
  %1024 = fsub fast float %1023, %852
  %1025 = call float @dx.op.unary.f32(i32 7, float %1024)  ; Saturate(value)
  %1026 = and i32 %882, 128
  %1027 = icmp ne i32 %1026, 0
  %1028 = select i1 %1027, float %1025, float %1021
  %1029 = fmul fast float %1028, %1020
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1032 = fcmp fast ugt float %1029, %1031
  br i1 %1032, label %1033, label %931

; <label>:1033                                    ; preds = %952
  %1034 = select i1 %992, float %1029, float 0.000000e+00
  %1035 = fadd fast float %1034, %805
  %1036 = call float @dx.op.unary.f32(i32 7, float %1035)  ; Saturate(value)
  br i1 %992, label %931, label %1037

; <label>:1037                                    ; preds = %1033
  %1038 = and i32 %882, 4
  %1039 = and i32 %882, 8
  %1040 = add i32 %838, 0
  %1041 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1040, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1043 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1041, %dx.types.Handle %1042, float %970, float %973, float undef, float undef, i32 0, i32 0, i32 undef, float %975, float %977, float undef, float %979, float %981, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1044 = extractvalue %dx.types.ResRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.ResRet.f32 %1043, 1
  %1046 = extractvalue %dx.types.ResRet.f32 %1043, 2
  %1047 = extractvalue %dx.types.ResRet.f32 %1043, 3
  %1048 = bitcast float %864 to i32
  %1049 = and i32 %1048, 255
  %1050 = uitofp i32 %1049 to float
  %1051 = lshr i32 %1048, 8
  %1052 = and i32 %1051, 255
  %1053 = uitofp i32 %1052 to float
  %1054 = fmul fast float %1047, %1050
  %1055 = fadd fast float %1054, %1053
  %1056 = fmul fast float %1055, 0x3F70101000000000
  %1057 = add i32 %839, 0
  %1058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1057, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1059 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1058, %dx.types.Handle %1042, float %970, float %973, float undef, float undef, i32 0, i32 0, i32 undef, float %975, float %977, float undef, float %979, float %981, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = extractvalue %dx.types.ResRet.f32 %1059, 1
  %1062 = extractvalue %dx.types.ResRet.f32 %1059, 2
  %1063 = extractvalue %dx.types.ResRet.f32 %1059, 3
  %1064 = bitcast float %858 to i32
  %1065 = and i32 %1064, 255
  %1066 = uitofp i32 %1065 to float
  %1067 = lshr i32 %1064, 8
  %1068 = and i32 %1067, 255
  %1069 = uitofp i32 %1068 to float
  %1070 = lshr i32 %1064, 16
  %1071 = and i32 %1070, 255
  %1072 = uitofp i32 %1071 to float
  %1073 = fmul fast float %1072, 0x3F70101000000000
  %1074 = fmul fast float %1060, %1066
  %1075 = fadd fast float %1074, %1069
  %1076 = fmul fast float %1075, 0x3F70101000000000
  %1077 = fadd fast float %1061, -5.000000e-01
  %1078 = fadd fast float %1063, -5.000000e-01
  %1079 = fmul fast float %1077, %1073
  %1080 = fmul fast float %1078, %1073
  %1081 = fadd fast float %1079, 5.000000e-01
  %1082 = fadd fast float %1080, 5.000000e-01
  %1083 = fmul fast float %1044, %867
  %1084 = fmul fast float %1045, %868
  %1085 = fmul fast float %1046, %869
  %1086 = fmul fast float %1081, 2.000000e+00
  %1087 = fadd fast float %1086, -1.000000e+00
  %1088 = fmul fast float %1082, 2.000000e+00
  %1089 = fadd fast float %1088, -1.000000e+00
  %1090 = fadd fast float %1087, %1089
  %1091 = fmul fast float %1090, 5.000000e-01
  %1092 = fsub fast float %1087, %1089
  %1093 = fmul fast float %1092, 5.000000e-01
  %1094 = call float @dx.op.unary.f32(i32 6, float %1091)  ; FAbs(value)
  %1095 = fsub fast float 1.000000e+00, %1094
  %1096 = call float @dx.op.unary.f32(i32 6, float %1093)  ; FAbs(value)
  %1097 = fsub fast float %1095, %1096
  %1098 = call float @dx.op.dot3.f32(i32 55, float %1091, float %1093, float %1097, float %1091, float %1093, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = call float @dx.op.unary.f32(i32 25, float %1098)  ; Rsqrt(value)
  %1100 = fmul fast float %1091, %1099
  %1101 = fmul fast float %1093, %1099
  %1102 = fmul fast float %1099, %1097
  %1103 = fmul fast float %1102, %832
  %1104 = fmul fast float %1102, %833
  %1105 = fmul fast float %1102, %834
  %1106 = fmul fast float %1100, %855
  %1107 = fmul fast float %1100, %856
  %1108 = fmul fast float %1100, %857
  %1109 = fadd fast float %1106, %1103
  %1110 = fadd fast float %1107, %1104
  %1111 = fadd fast float %1108, %1105
  %1112 = fmul fast float %1101, %861
  %1113 = fmul fast float %1101, %862
  %1114 = fmul fast float %1101, %863
  %1115 = fadd fast float %1109, %1112
  %1116 = fadd fast float %1110, %1113
  %1117 = fadd fast float %1111, %1114
  %1118 = call float @dx.op.dot3.f32(i32 55, float %1115, float %1116, float %1117, float %1115, float %1116, float %1117)  ; Dot3(ax,ay,az,bx,by,bz)
  %1119 = call float @dx.op.unary.f32(i32 25, float %1118)  ; Rsqrt(value)
  %1120 = fmul fast float %1115, %1119
  %1121 = fmul fast float %1116, %1119
  %1122 = fmul fast float %1117, %1119
  %1123 = icmp ne i32 %1039, 0
  %1124 = select i1 %1123, float 1.000000e+00, float 0.000000e+00
  %1125 = fmul fast float %1029, %1124
  %1126 = and i32 %882, 1
  %1127 = icmp eq i32 %1126, 0
  br i1 %1127, label %1128, label %1132

; <label>:1128                                    ; preds = %1037
  %1129 = fsub fast float %1120, %814
  %1130 = fsub fast float %1121, %815
  %1131 = fsub fast float %1122, %816
  br label %1132

; <label>:1132                                    ; preds = %1128, %1037
  %1133 = phi float [ %1129, %1128 ], [ %1120, %1037 ]
  %1134 = phi float [ %1130, %1128 ], [ %1121, %1037 ]
  %1135 = phi float [ %1131, %1128 ], [ %1122, %1037 ]
  %1136 = fmul float %1135, %1125
  %1137 = fmul float %1134, %1125
  %1138 = fmul float %1133, %1125
  %1139 = fadd fast float %1138, %814
  %1140 = fadd fast float %1137, %815
  %1141 = fadd fast float %1136, %816
  %1142 = icmp ne i32 %1038, 0
  %1143 = select i1 %1142, float 1.000000e+00, float 0.000000e+00
  %1144 = fmul fast float %1029, %1143
  %1145 = fsub fast float %1083, %821
  %1146 = fsub fast float %1084, %822
  %1147 = fsub fast float %1085, %823
  %1148 = fmul fast float %1145, %1144
  %1149 = fmul fast float %1146, %1144
  %1150 = fmul fast float %1147, %1144
  %1151 = fadd fast float %1148, %821
  %1152 = fadd fast float %1149, %822
  %1153 = fadd fast float %1150, %823
  %1154 = fsub fast float %1056, %820
  %1155 = fmul fast float %1154, %1144
  %1156 = fadd fast float %1155, %820
  %1157 = fmul fast float %1144, %810
  %1158 = fsub fast float %810, %1157
  %1159 = fmul fast float %1144, %809
  %1160 = fsub fast float %809, %1159
  %1161 = fadd fast float %1029, %819
  %1162 = call float @dx.op.unary.f32(i32 7, float %1161)  ; Saturate(value)
  %1163 = fsub fast float %1076, %818
  %1164 = fmul fast float %1163, %1125
  %1165 = fadd fast float %1164, %818
  %1166 = fsub fast float %1062, %817
  %1167 = fmul fast float %1166, %1125
  %1168 = fadd fast float %1167, %817
  %1169 = call float @dx.op.dot3.f32(i32 55, float %1083, float %1084, float %1085, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1171 = extractvalue %dx.types.CBufRet.f32 %1170, 0
  %1172 = extractvalue %dx.types.CBufRet.f32 %1170, 1
  %1173 = fmul fast float %1172, %1169
  %1174 = fadd fast float %1173, %1171
  %1175 = call float @dx.op.unary.f32(i32 7, float %1174)  ; Saturate(value)
  %1176 = bitcast float %870 to i32
  %1177 = and i32 %1176, 65535
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = lshr i32 %1176, 16
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = fcmp fast oge float %1178, 0.000000e+00
  %1182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1183 = extractvalue %dx.types.CBufRet.f32 %1182, 0
  %1184 = select i1 %1181, float %1178, float %1183
  %1185 = fadd fast float %1184, %1180
  %1186 = fsub fast float %1175, %808
  %1187 = fmul fast float %1186, %1029
  %1188 = fadd fast float %1187, %808
  %1189 = fmul fast float %1185, %1029
  %1190 = call float @dx.op.binary.f32(i32 35, float %807, float %1189)  ; FMax(a,b)
  %1191 = call float @dx.op.binary.f32(i32 35, float %806, float %1029)  ; FMax(a,b)
  %1192 = and i32 %882, 16
  %1193 = icmp eq i32 %1192, 0
  br i1 %1193, label %1216, label %1194

; <label>:1194                                    ; preds = %1132
  %1195 = bitcast float %876 to i32
  %1196 = add i32 %873, 0
  %1197 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1196, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1198 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1197, %dx.types.Handle %1042, float %970, float %973, float undef, float undef, i32 0, i32 0, i32 undef, float %975, float %977, float undef, float %979, float %981, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1199 = extractvalue %dx.types.ResRet.f32 %1198, 0
  %1200 = extractvalue %dx.types.ResRet.f32 %1198, 1
  %1201 = extractvalue %dx.types.ResRet.f32 %1198, 2
  %1202 = and i32 %1195, 65535
  %1203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1202)  ; LegacyF16ToF32(value)
  %1204 = fmul fast float %1199, %867
  %1205 = fmul fast float %1200, %868
  %1206 = fmul fast float %1201, %869
  %1207 = and i32 %882, 16384
  %1208 = icmp ne i32 %1207, 0
  %1209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1210 = extractvalue %dx.types.CBufRet.f32 %1209, 0
  %1211 = select i1 %1208, float %1210, float 1.000000e+00
  %1212 = fmul fast float %1211, %1203
  %1213 = fmul fast float %1204, %1212
  %1214 = fmul fast float %1205, %1212
  %1215 = fmul fast float %1206, %1212
  br label %1216

; <label>:1216                                    ; preds = %1194, %1132
  %1217 = phi float [ %1213, %1194 ], [ 0.000000e+00, %1132 ]
  %1218 = phi float [ %1214, %1194 ], [ 0.000000e+00, %1132 ]
  %1219 = phi float [ %1215, %1194 ], [ 0.000000e+00, %1132 ]
  %1220 = fsub fast float %1217, %811
  %1221 = fsub fast float %1218, %812
  %1222 = fsub fast float %1219, %813
  %1223 = fmul fast float %1220, %1029
  %1224 = fmul fast float %1221, %1029
  %1225 = fmul fast float %1222, %1029
  %1226 = fadd fast float %1223, %811
  %1227 = fadd fast float %1224, %812
  %1228 = fadd fast float %1225, %813
  br label %931

; <label>:1229                                    ; preds = %931
  br label %1230

; <label>:1230                                    ; preds = %1229, %706
  %1231 = phi float [ 0.000000e+00, %706 ], [ %932, %1229 ]
  %1232 = phi float [ %716, %706 ], [ %933, %1229 ]
  %1233 = phi float [ %722, %706 ], [ %934, %1229 ]
  %1234 = phi float [ %720, %706 ], [ %935, %1229 ]
  %1235 = phi float [ %719, %706 ], [ %936, %1229 ]
  %1236 = phi float [ 0.000000e+00, %706 ], [ %937, %1229 ]
  %1237 = phi float [ %712, %706 ], [ %938, %1229 ]
  %1238 = phi float [ %713, %706 ], [ %939, %1229 ]
  %1239 = phi float [ %714, %706 ], [ %940, %1229 ]
  %1240 = phi float [ %748, %706 ], [ %941, %1229 ]
  %1241 = phi float [ %749, %706 ], [ %942, %1229 ]
  %1242 = phi float [ %750, %706 ], [ %943, %1229 ]
  %1243 = phi float [ %718, %706 ], [ %944, %1229 ]
  %1244 = phi float [ %717, %706 ], [ %945, %1229 ]
  %1245 = phi float [ 0.000000e+00, %706 ], [ %946, %1229 ]
  %1246 = phi float [ %715, %706 ], [ %947, %1229 ]
  %1247 = phi float [ %709, %706 ], [ %948, %1229 ]
  %1248 = phi float [ %710, %706 ], [ %949, %1229 ]
  %1249 = phi float [ %711, %706 ], [ %950, %1229 ]
  %1250 = call float @dx.op.dot3.f32(i32 55, float %1240, float %1241, float %1242, float %1240, float %1241, float %1242)  ; Dot3(ax,ay,az,bx,by,bz)
  %1251 = call float @dx.op.unary.f32(i32 25, float %1250)  ; Rsqrt(value)
  %1252 = fmul fast float %1251, %1240
  %1253 = fmul fast float %1251, %1241
  %1254 = fmul fast float %1251, %1242
  %1255 = fadd fast float %1245, %716
  %1256 = call float @dx.op.unary.f32(i32 7, float %1255)  ; Saturate(value)
  %1257 = call float @dx.op.dot3.f32(i32 55, float %1252, float %1253, float %1254, float %1252, float %1253, float %1254)  ; Dot3(ax,ay,az,bx,by,bz)
  %1258 = call float @dx.op.unary.f32(i32 25, float %1257)  ; Rsqrt(value)
  %1259 = fmul fast float %1258, %1252
  %1260 = fmul fast float %1258, %1253
  %1261 = fmul fast float %1258, %1254
  %1262 = fadd fast float %1246, 0xBFB99999A0000000
  %1263 = call float @dx.op.unary.f32(i32 7, float %1262)  ; Saturate(value)
  %1264 = fmul fast float %1263, 0x3FF1C71C80000000
  %1265 = call float @dx.op.binary.f32(i32 36, float %1246, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1266 = fsub fast float 1.000000e+00, %1264
  %1267 = call float @dx.op.unary.f32(i32 7, float %1266)  ; Saturate(value)
  %1268 = fmul fast float %1267, %1247
  %1269 = fmul fast float %1267, %1248
  %1270 = fmul fast float %1267, %1249
  %1271 = call float @dx.op.unary.f32(i32 7, float %1268)  ; Saturate(value)
  %1272 = call float @dx.op.unary.f32(i32 7, float %1269)  ; Saturate(value)
  %1273 = call float @dx.op.unary.f32(i32 7, float %1270)  ; Saturate(value)
  %1274 = fmul fast float %1264, %1247
  %1275 = fmul fast float %1264, %1248
  %1276 = fmul fast float %1264, %1249
  %1277 = fadd fast float %1274, %1265
  %1278 = fadd fast float %1275, %1265
  %1279 = fadd fast float %1276, %1265
  %1280 = call float @dx.op.unary.f32(i32 7, float %1277)  ; Saturate(value)
  %1281 = call float @dx.op.unary.f32(i32 7, float %1278)  ; Saturate(value)
  %1282 = call float @dx.op.unary.f32(i32 7, float %1279)  ; Saturate(value)
  %1283 = call float @dx.op.unary.f32(i32 7, float %1244)  ; Saturate(value)
  %1284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1285 = extractvalue %dx.types.CBufRet.i32 %1284, 3
  %1286 = and i32 %1285, 8
  %1287 = icmp ne i32 %1286, 0
  %1288 = call float @dx.op.binary.f32(i32 35, float %1271, float %1247)  ; FMax(a,b)
  %1289 = call float @dx.op.binary.f32(i32 35, float %1272, float %1247)  ; FMax(a,b)
  %1290 = call float @dx.op.binary.f32(i32 35, float %1273, float %1247)  ; FMax(a,b)
  %1291 = call float @dx.op.dot3.f32(i32 55, float %1271, float %1272, float %1273, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1292 = select i1 %176, float %1247, float %1271
  %1293 = select i1 %176, float %1291, float %1272
  %1294 = select i1 %176, float 1.000000e+00, float %1273
  %1295 = select i1 %1287, float %1288, float %1292
  %1296 = select i1 %1287, float %1289, float %1293
  %1297 = select i1 %1287, float %1290, float %1294
  %1298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1299 = extractvalue %dx.types.CBufRet.f32 %1298, 0
  %1300 = extractvalue %dx.types.CBufRet.f32 %1298, 1
  %1301 = extractvalue %dx.types.CBufRet.f32 %1298, 2
  %1302 = fadd fast float %1299, %105
  %1303 = fadd fast float %1300, %106
  %1304 = fadd fast float %1301, %107
  %1305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1306 = extractvalue %dx.types.CBufRet.f32 %1305, 0
  %1307 = extractvalue %dx.types.CBufRet.f32 %1305, 1
  %1308 = fsub fast float %1302, %1306
  %1309 = fsub fast float %1303, %1307
  %1310 = fmul fast float %1308, %1308
  %1311 = fmul fast float %1309, %1309
  %1312 = fadd fast float %1310, %1311
  %1313 = call float @dx.op.unary.f32(i32 24, float %1312)  ; Sqrt(value)
  %1314 = extractvalue %dx.types.CBufRet.f32 %1305, 2
  %1315 = fcmp fast olt float %1313, %1314
  br i1 %1315, label %1316, label %1383

; <label>:1316                                    ; preds = %1230
  %1317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1318 = extractvalue %dx.types.CBufRet.f32 %1317, 0
  %1319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1320 = extractvalue %dx.types.CBufRet.f32 %1319, 0
  %1321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1322 = extractvalue %dx.types.CBufRet.f32 %1321, 0
  %1323 = extractvalue %dx.types.CBufRet.f32 %1317, 1
  %1324 = extractvalue %dx.types.CBufRet.f32 %1319, 1
  %1325 = extractvalue %dx.types.CBufRet.f32 %1321, 1
  %1326 = extractvalue %dx.types.CBufRet.f32 %1317, 3
  %1327 = extractvalue %dx.types.CBufRet.f32 %1319, 3
  %1328 = extractvalue %dx.types.CBufRet.f32 %1321, 3
  %1329 = fadd fast float %1326, %1302
  %1330 = fadd fast float %1327, %1303
  %1331 = fadd fast float %1328, %1304
  %1332 = fmul fast float %1329, %1318
  %1333 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1320, float %1332)  ; FMad(a,b,c)
  %1334 = call float @dx.op.tertiary.f32(i32 46, float %1331, float %1322, float %1333)  ; FMad(a,b,c)
  %1335 = fmul fast float %1329, %1323
  %1336 = call float @dx.op.tertiary.f32(i32 46, float %1330, float %1324, float %1335)  ; FMad(a,b,c)
  %1337 = call float @dx.op.tertiary.f32(i32 46, float %1331, float %1325, float %1336)  ; FMad(a,b,c)
  %1338 = fsub fast float %1334, %1326
  %1339 = fsub fast float %1337, %1327
  %1340 = fsub fast float %1338, %1306
  %1341 = fadd fast float %1340, %1314
  %1342 = fsub fast float %1339, %1307
  %1343 = fadd fast float %1342, %1314
  %1344 = extractvalue %dx.types.CBufRet.f32 %1305, 3
  %1345 = fmul fast float %1341, %1344
  %1346 = fmul fast float %1343, %1344
  %1347 = call float @dx.op.unary.f32(i32 7, float %1345)  ; Saturate(value)
  %1348 = call float @dx.op.unary.f32(i32 7, float %1346)  ; Saturate(value)
  %1349 = fsub fast float 1.000000e+00, %1347
  %1350 = fsub fast float 1.000000e+00, %1348
  %1351 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %1349, float %1350, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1352 = extractvalue %dx.types.ResRet.f32 %1351, 0
  %1353 = fcmp fast ugt float %1352, 0.000000e+00
  br i1 %1353, label %1354, label %1657

; <label>:1354                                    ; preds = %1316
  %1355 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1356 = extractvalue %dx.types.CBufRet.f32 %1355, 2
  %1357 = fmul fast float %1356, %1352
  %1358 = extractvalue %dx.types.CBufRet.f32 %1355, 3
  %1359 = fadd fast float %1358, %1357
  %1360 = extractvalue %dx.types.CBufRet.f32 %1321, 2
  %1361 = fadd fast float %1359, %1328
  %1362 = fmul fast float %1334, %1322
  %1363 = call float @dx.op.tertiary.f32(i32 46, float %1337, float %1325, float %1362)  ; FMad(a,b,c)
  %1364 = call float @dx.op.tertiary.f32(i32 46, float %1361, float %1360, float %1363)  ; FMad(a,b,c)
  %1365 = fsub fast float %1364, %1328
  %1366 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1367 = extractvalue %dx.types.CBufRet.f32 %1366, 2
  %1368 = fsub fast float %1365, %1367
  %1369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %1349, float %1350, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1370 = extractvalue %dx.types.ResRet.f32 %1369, 0
  %1371 = extractvalue %dx.types.ResRet.f32 %1369, 1
  %1372 = extractvalue %dx.types.ResRet.f32 %1369, 2
  %1373 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %1349, float %1350, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1374 = extractvalue %dx.types.ResRet.f32 %1373, 0
  %1375 = extractvalue %dx.types.ResRet.f32 %1373, 1
  %1376 = extractvalue %dx.types.ResRet.f32 %1373, 2
  %1377 = fadd fast float %1374, %1370
  %1378 = fmul fast float %1377, 0x3F847AE140000000
  %1379 = fadd fast float %1375, %1371
  %1380 = fmul fast float %1379, 0x3F847AE140000000
  %1381 = fadd fast float %1376, %1372
  %1382 = fmul fast float %1381, 0x3F847AE140000000
  br label %1657

; <label>:1383                                    ; preds = %1230
  %1384 = and i32 %152, 1
  %1385 = icmp eq i32 %1384, 0
  br i1 %1385, label %1657, label %1386

; <label>:1386                                    ; preds = %1383
  %1387 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1388 = extractvalue %dx.types.CBufRet.f32 %1387, 0
  %1389 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1390 = extractvalue %dx.types.CBufRet.f32 %1389, 0
  %1391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1392 = extractvalue %dx.types.CBufRet.f32 %1391, 0
  %1393 = extractvalue %dx.types.CBufRet.f32 %1387, 1
  %1394 = extractvalue %dx.types.CBufRet.f32 %1389, 1
  %1395 = extractvalue %dx.types.CBufRet.f32 %1391, 1
  %1396 = extractvalue %dx.types.CBufRet.f32 %1387, 3
  %1397 = extractvalue %dx.types.CBufRet.f32 %1389, 3
  %1398 = extractvalue %dx.types.CBufRet.f32 %1391, 3
  %1399 = fadd fast float %1396, %1302
  %1400 = fadd fast float %1397, %1303
  %1401 = fadd fast float %1398, %1304
  %1402 = fmul fast float %1399, %1388
  %1403 = call float @dx.op.tertiary.f32(i32 46, float %1400, float %1390, float %1402)  ; FMad(a,b,c)
  %1404 = call float @dx.op.tertiary.f32(i32 46, float %1401, float %1392, float %1403)  ; FMad(a,b,c)
  %1405 = fmul fast float %1399, %1393
  %1406 = call float @dx.op.tertiary.f32(i32 46, float %1400, float %1394, float %1405)  ; FMad(a,b,c)
  %1407 = call float @dx.op.tertiary.f32(i32 46, float %1401, float %1395, float %1406)  ; FMad(a,b,c)
  %1408 = fsub fast float %1404, %1396
  %1409 = fsub fast float %1407, %1397
  %1410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1411 = extractvalue %dx.types.CBufRet.f32 %1410, 0
  %1412 = extractvalue %dx.types.CBufRet.f32 %1410, 1
  %1413 = extractvalue %dx.types.CBufRet.f32 %1410, 2
  %1414 = extractvalue %dx.types.CBufRet.f32 %1410, 3
  %1415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1416 = extractvalue %dx.types.CBufRet.f32 %1415, 3
  %1417 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1418 = extractvalue %dx.types.CBufRet.i32 %1417, 0
  %1419 = extractvalue %dx.types.CBufRet.i32 %1417, 1
  %1420 = udiv i32 %1419, %1418
  %1421 = fsub fast float %1408, %1411
  %1422 = fsub fast float %1409, %1412
  %1423 = call float @dx.op.binary.f32(i32 35, float %1421, float 0.000000e+00)  ; FMax(a,b)
  %1424 = call float @dx.op.binary.f32(i32 35, float %1422, float 0.000000e+00)  ; FMax(a,b)
  %1425 = call float @dx.op.binary.f32(i32 36, float %1423, float %1413)  ; FMin(a,b)
  %1426 = call float @dx.op.binary.f32(i32 36, float %1424, float %1414)  ; FMin(a,b)
  %1427 = add i32 %1418, -1
  %1428 = add i32 %1420, -1
  %1429 = fmul fast float %1425, %1416
  %1430 = fmul fast float %1426, %1416
  %1431 = fptoui float %1429 to i32
  %1432 = fptoui float %1430 to i32
  %1433 = call i32 @dx.op.binary.i32(i32 40, i32 %1431, i32 %1427)  ; UMin(a,b)
  %1434 = call i32 @dx.op.binary.i32(i32 40, i32 %1432, i32 %1428)  ; UMin(a,b)
  %1435 = mul i32 %1434, %1418
  %1436 = add i32 %1435, %1433
  %1437 = shl i32 %1436, 2
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = icmp eq i32 %1439, -1
  br i1 %1440, label %1657, label %1441

; <label>:1441                                    ; preds = %1386
  %1442 = mul i32 %1439, 148
  %1443 = add i32 %1442, 4
  %1444 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.f32 %1444, 0
  %1446 = add i32 %1442, 8
  %1447 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1446, i32 undef)  ; BufferLoad(srv,index,wot)
  %1448 = extractvalue %dx.types.ResRet.f32 %1447, 0
  %1449 = add i32 %1442, 36
  %1450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1449, i32 undef)  ; BufferLoad(srv,index,wot)
  %1451 = extractvalue %dx.types.ResRet.f32 %1450, 0
  %1452 = add i32 %1442, 60
  %1453 = add i32 %1442, 92
  %1454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1453, i32 undef)  ; BufferLoad(srv,index,wot)
  %1455 = extractvalue %dx.types.ResRet.i32 %1454, 0
  %1456 = add i32 %1442, 116
  %1457 = fsub fast float %1408, %1445
  %1458 = fsub fast float %1409, %1448
  %1459 = fmul fast float %1416, %1457
  %1460 = fmul fast float %1416, %1458
  %1461 = call float @dx.op.unary.f32(i32 7, float %1459)  ; Saturate(value)
  %1462 = call float @dx.op.unary.f32(i32 7, float %1460)  ; Saturate(value)
  %1463 = fsub fast float 1.000000e+00, %1462
  %1464 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1465 = extractvalue %dx.types.CBufRet.f32 %1464, 2
  %1466 = call float @dx.op.unary.f32(i32 83, float %1461)  ; DerivCoarseX(value)
  %1467 = call float @dx.op.unary.f32(i32 83, float %1463)  ; DerivCoarseX(value)
  %1468 = call float @dx.op.unary.f32(i32 84, float %1461)  ; DerivCoarseY(value)
  %1469 = call float @dx.op.unary.f32(i32 84, float %1463)  ; DerivCoarseY(value)
  %1470 = fmul fast float %1466, %1465
  %1471 = fmul fast float %1467, %1465
  %1472 = fmul fast float %1468, %1465
  %1473 = fmul fast float %1469, %1465
  %1474 = call float @dx.op.dot2.f32(i32 54, float %1472, float %1473, float %1472, float %1473)  ; Dot2(ax,ay,bx,by)
  %1475 = call float @dx.op.dot2.f32(i32 54, float %1470, float %1471, float %1470, float %1471)  ; Dot2(ax,ay,bx,by)
  %1476 = call float @dx.op.binary.f32(i32 35, float %1475, float %1474)  ; FMax(a,b)
  %1477 = call float @dx.op.unary.f32(i32 23, float %1476)  ; Log(value)
  %1478 = fmul fast float %1477, 5.000000e-01
  %1479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1480 = extractvalue %dx.types.CBufRet.f32 %1479, 1
  %1481 = fadd fast float %1480, %1478
  %1482 = call float @dx.op.binary.f32(i32 35, float %1481, float 0.000000e+00)  ; FMax(a,b)
  %1483 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1484 = extractvalue %dx.types.CBufRet.f32 %1483, 3
  %1485 = fadd fast float %1484, %1482
  %1486 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1487 = extractvalue %dx.types.CBufRet.f32 %1486, 3
  %1488 = fadd fast float %1485, %1487
  %1489 = add i32 %1455, 0
  %1490 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1489, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1491 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1490, i32 0)  ; GetDimensions(handle,mipLevel)
  %1492 = extractvalue %dx.types.Dimensions %1491, 0
  %1493 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1492)  ; FirstbitLo(value)
  %1494 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1495 = extractvalue %dx.types.CBufRet.i32 %1494, 1
  %1496 = sub nsw i32 %1495, %1493
  %1497 = sitofp i32 %1496 to float
  %1498 = fsub fast float %1488, %1497
  %1499 = call float @dx.op.binary.f32(i32 35, float %1498, float 0.000000e+00)  ; FMax(a,b)
  %1500 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1490, %dx.types.Handle %33, float %1461, float %1463, float %1451, float undef, i32 0, i32 0, i32 undef, float %1499)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1501 = extractvalue %dx.types.ResRet.f32 %1500, 0
  %1502 = fcmp ule float %1501, 0x3FE0101020000000
  %1503 = extractvalue %dx.types.CBufRet.i32 %1494, 0
  %1504 = and i32 %1503, 128
  %1505 = icmp ne i32 %1504, 0
  %1506 = and i1 %1502, %1505
  br i1 %1506, label %1657, label %1507

; <label>:1507                                    ; preds = %1441
  %1508 = add i32 %1442, 20
  %1509 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1508, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.f32 %1509, 0
  %1511 = add i32 %1442, 24
  %1512 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1511, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.f32 %1512, 0
  %1514 = add i32 %1442, 40
  %1515 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.f32 %1515, 0
  %1517 = add i32 %1442, 96
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 2
  %1522 = fmul fast float %1521, %1461
  %1523 = fmul fast float %1521, %1463
  %1524 = extractvalue %dx.types.CBufRet.f32 %1520, 3
  %1525 = fadd fast float %1522, %1524
  %1526 = fadd fast float %1523, %1524
  %1527 = add i32 %1519, 0
  %1528 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1527, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1529 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1528, i32 0)  ; GetDimensions(handle,mipLevel)
  %1530 = extractvalue %dx.types.Dimensions %1529, 0
  %1531 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1530)  ; FirstbitLo(value)
  %1532 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1533 = extractvalue %dx.types.CBufRet.i32 %1532, 1
  %1534 = sub nsw i32 %1533, %1531
  %1535 = sitofp i32 %1534 to float
  %1536 = fsub fast float %1485, %1535
  %1537 = call float @dx.op.binary.f32(i32 35, float %1536, float 0.000000e+00)  ; FMax(a,b)
  %1538 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1528, %dx.types.Handle %33, float %1525, float %1526, float %1516, float undef, i32 0, i32 0, i32 undef, float %1537)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1539 = extractvalue %dx.types.ResRet.f32 %1538, 0
  %1540 = fmul fast float %1539, %1510
  %1541 = fadd fast float %1540, %1513
  %1542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1543 = extractvalue %dx.types.CBufRet.f32 %1542, 0
  %1544 = extractvalue %dx.types.CBufRet.f32 %1542, 1
  %1545 = extractvalue %dx.types.CBufRet.f32 %1542, 2
  %1546 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1547 = extractvalue %dx.types.CBufRet.f32 %1546, 3
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 3
  %1550 = extractvalue %dx.types.CBufRet.f32 %1542, 3
  %1551 = fadd fast float %1547, %1408
  %1552 = fadd fast float %1549, %1409
  %1553 = fadd fast float %1541, %1550
  %1554 = fmul fast float %1551, %1543
  %1555 = call float @dx.op.tertiary.f32(i32 46, float %1552, float %1544, float %1554)  ; FMad(a,b,c)
  %1556 = call float @dx.op.tertiary.f32(i32 46, float %1553, float %1545, float %1555)  ; FMad(a,b,c)
  %1557 = fsub fast float %1556, %1550
  %1558 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1559 = extractvalue %dx.types.CBufRet.f32 %1558, 2
  %1560 = fsub fast float %1557, %1559
  %1561 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1562 = extractvalue %dx.types.CBufRet.i32 %1561, 0
  %1563 = call i32 @dx.op.binary.i32(i32 40, i32 %1439, i32 %1562)  ; UMin(a,b)
  %1564 = mul i32 %1563, 36
  %1565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1564, i32 undef)  ; BufferLoad(srv,index,wot)
  %1566 = extractvalue %dx.types.ResRet.i32 %1565, 0
  %1567 = add i32 %1564, 4
  %1568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1569 = extractvalue %dx.types.CBufRet.f32 %1568, 0
  %1570 = fmul fast float %1569, %1461
  %1571 = fmul fast float %1569, %1463
  %1572 = extractvalue %dx.types.CBufRet.f32 %1568, 1
  %1573 = fadd fast float %1570, %1572
  %1574 = fadd fast float %1571, %1572
  %1575 = icmp eq i32 %1566, 0
  br i1 %1575, label %1644, label %1576

; <label>:1576                                    ; preds = %1507
  br label %1577

; <label>:1577                                    ; preds = %1634, %1576
  %1578 = phi float [ %1635, %1634 ], [ 0.000000e+00, %1576 ]
  %1579 = phi float [ %1636, %1634 ], [ 0.000000e+00, %1576 ]
  %1580 = phi float [ %1637, %1634 ], [ 0.000000e+00, %1576 ]
  %1581 = phi float [ %1638, %1634 ], [ 0.000000e+00, %1576 ]
  %1582 = phi float [ %1639, %1634 ], [ 0.000000e+00, %1576 ]
  %1583 = phi float [ %1640, %1634 ], [ 0.000000e+00, %1576 ]
  %1584 = phi i32 [ %1641, %1634 ], [ 0, %1576 ]
  %1585 = shl i32 %1584, 2
  %1586 = add i32 %1452, %1585
  %1587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.f32 %1587, 0
  %1589 = add i32 %1456, %1585
  %1590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1589, i32 undef)  ; BufferLoad(srv,index,wot)
  %1591 = extractvalue %dx.types.ResRet.i32 %1590, 0
  %1592 = add i32 %1591, 0
  %1593 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1592, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1594 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1593, i32 0)  ; GetDimensions(handle,mipLevel)
  %1595 = extractvalue %dx.types.Dimensions %1594, 0
  %1596 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1595)  ; FirstbitLo(value)
  %1597 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1598 = extractvalue %dx.types.CBufRet.i32 %1597, 1
  %1599 = sub nsw i32 %1598, %1596
  %1600 = sitofp i32 %1599 to float
  %1601 = fsub fast float %1485, %1600
  %1602 = call float @dx.op.binary.f32(i32 35, float %1601, float 0.000000e+00)  ; FMax(a,b)
  %1603 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1593, %dx.types.Handle %33, float %1573, float %1574, float %1588, float undef, i32 0, i32 0, i32 undef, float %1602)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1604 = extractvalue %dx.types.ResRet.f32 %1603, 0
  %1605 = fcmp fast ogt float %1604, 0.000000e+00
  br i1 %1605, label %1606, label %1634

; <label>:1606                                    ; preds = %1577
  %1607 = add i32 %1567, %1585
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = and i32 %1609, 32767
  %1611 = mul nuw nsw i32 %1610, 928
  %1612 = add nuw nsw i32 %1611, 48
  %1613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1612, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.f32 %1613, 0
  %1615 = extractvalue %dx.types.ResRet.f32 %1613, 1
  %1616 = extractvalue %dx.types.ResRet.f32 %1613, 2
  %1617 = add nuw nsw i32 %1611, 60
  %1618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.f32 %1618, 0
  %1620 = extractvalue %dx.types.ResRet.f32 %1618, 1
  %1621 = extractvalue %dx.types.ResRet.f32 %1618, 2
  %1622 = fmul fast float %1614, %1604
  %1623 = fmul fast float %1615, %1604
  %1624 = fmul fast float %1616, %1604
  %1625 = fadd fast float %1622, %1578
  %1626 = fadd fast float %1623, %1579
  %1627 = fadd fast float %1624, %1580
  %1628 = fmul fast float %1619, %1604
  %1629 = fmul fast float %1620, %1604
  %1630 = fmul fast float %1621, %1604
  %1631 = fadd fast float %1628, %1581
  %1632 = fadd fast float %1629, %1582
  %1633 = fadd fast float %1630, %1583
  br label %1634

; <label>:1634                                    ; preds = %1606, %1577
  %1635 = phi float [ %1625, %1606 ], [ %1578, %1577 ]
  %1636 = phi float [ %1626, %1606 ], [ %1579, %1577 ]
  %1637 = phi float [ %1627, %1606 ], [ %1580, %1577 ]
  %1638 = phi float [ %1631, %1606 ], [ %1581, %1577 ]
  %1639 = phi float [ %1632, %1606 ], [ %1582, %1577 ]
  %1640 = phi float [ %1633, %1606 ], [ %1583, %1577 ]
  %1641 = add nuw i32 %1584, 1
  %1642 = icmp eq i32 %1641, %1566
  br i1 %1642, label %1643, label %1577

; <label>:1643                                    ; preds = %1634
  br label %1644

; <label>:1644                                    ; preds = %1643, %1507
  %1645 = phi float [ 0.000000e+00, %1507 ], [ %1635, %1643 ]
  %1646 = phi float [ 0.000000e+00, %1507 ], [ %1636, %1643 ]
  %1647 = phi float [ 0.000000e+00, %1507 ], [ %1637, %1643 ]
  %1648 = phi float [ 0.000000e+00, %1507 ], [ %1638, %1643 ]
  %1649 = phi float [ 0.000000e+00, %1507 ], [ %1639, %1643 ]
  %1650 = phi float [ 0.000000e+00, %1507 ], [ %1640, %1643 ]
  %1651 = fadd fast float %1648, %1645
  %1652 = fmul fast float %1651, 0x3F847AE140000000
  %1653 = fadd fast float %1649, %1646
  %1654 = fmul fast float %1653, 0x3F847AE140000000
  %1655 = fadd fast float %1650, %1647
  %1656 = fmul fast float %1655, 0x3F847AE140000000
  br label %1657

; <label>:1657                                    ; preds = %1644, %1441, %1386, %1383, %1354, %1316
  %1658 = phi float [ %1368, %1354 ], [ -1.310720e+05, %1316 ], [ %1560, %1644 ], [ -1.310720e+05, %1386 ], [ -1.310720e+05, %1441 ], [ -1.310720e+05, %1383 ]
  %1659 = phi float [ %1378, %1354 ], [ 0.000000e+00, %1316 ], [ %1652, %1644 ], [ 0.000000e+00, %1386 ], [ 0.000000e+00, %1441 ], [ 0.000000e+00, %1383 ]
  %1660 = phi float [ %1380, %1354 ], [ 0.000000e+00, %1316 ], [ %1654, %1644 ], [ 0.000000e+00, %1386 ], [ 0.000000e+00, %1441 ], [ 0.000000e+00, %1383 ]
  %1661 = phi float [ %1382, %1354 ], [ 0.000000e+00, %1316 ], [ %1656, %1644 ], [ 0.000000e+00, %1386 ], [ 0.000000e+00, %1441 ], [ 0.000000e+00, %1383 ]
  %1662 = phi i1 [ true, %1354 ], [ false, %1316 ], [ true, %1644 ], [ false, %1386 ], [ false, %1441 ], [ false, %1383 ]
  %1663 = and i32 %152, 3
  %1664 = icmp eq i32 %1663, 1
  %1665 = select i1 %1664, float 1.000000e+00, float 0.000000e+00
  %1666 = fsub fast float %1658, %107
  %1667 = call float @dx.op.unary.f32(i32 7, float %1666)  ; Saturate(value)
  %1668 = select i1 %1662, float %1667, float 1.000000e+00
  %1669 = fmul fast float %1668, %1665
  %1670 = icmp eq i32 %1663, 3
  %1671 = select i1 %1670, float 1.000000e+00, float %1669
  %1672 = call float @dx.op.binary.f32(i32 35, float %1231, float %1671)  ; FMax(a,b)
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1674 = fcmp fast une float %1673, 0.000000e+00
  %1675 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %1676 = call float @dx.op.unary.f32(i32 25, float %1675)  ; Rsqrt(value)
  br i1 %1674, label %1684, label %1677

; <label>:1677                                    ; preds = %1657
  %1678 = fmul fast float %1676, %105
  %1679 = fmul fast float %1676, %106
  %1680 = fmul fast float %1676, %107
  %1681 = fsub fast float -0.000000e+00, %1678
  %1682 = fsub fast float -0.000000e+00, %1679
  %1683 = fsub fast float -0.000000e+00, %1680
  br label %1852

; <label>:1684                                    ; preds = %1657
  %1685 = fmul fast float %105, %1676
  %1686 = fsub fast float -0.000000e+00, %1685
  %1687 = fmul fast float %106, %1676
  %1688 = fsub fast float -0.000000e+00, %1687
  %1689 = fmul fast float %107, %1676
  %1690 = fsub fast float -0.000000e+00, %1689
  %1691 = call float @dx.op.dot3.f32(i32 55, float %1686, float %1688, float %1690, float %43, float %44, float %45)  ; Dot3(ax,ay,az,bx,by,bz)
  %1692 = fmul fast float %1673, 2.500000e+00
  %1693 = call float @dx.op.unary.f32(i32 7, float %1692)  ; Saturate(value)
  %1694 = fmul fast float %1673, 0x4013FFFFE0000000
  %1695 = fadd fast float %1694, 0xBFFFFFFFE0000000
  %1696 = call float @dx.op.unary.f32(i32 7, float %1695)  ; Saturate(value)
  %1697 = fmul fast float %1673, 0x4004000020000000
  %1698 = fadd fast float %1697, 0xBFF8000040000000
  %1699 = call float @dx.op.unary.f32(i32 7, float %1698)  ; Saturate(value)
  %1700 = call float @dx.op.unary.f32(i32 7, float %1693)  ; Saturate(value)
  %1701 = fmul fast float %1262, 1.000000e+01
  %1702 = call float @dx.op.unary.f32(i32 7, float %1701)  ; Saturate(value)
  %1703 = fmul fast float %1702, 2.000000e+00
  %1704 = fsub fast float 3.000000e+00, %1703
  %1705 = fmul fast float %1702, %1702
  %1706 = fmul fast float %1705, %1704
  %1707 = fsub fast float 1.000000e+00, %1706
  %1708 = fsub fast float 0x3FE3333340000000, %1283
  %1709 = fmul fast float %1708, 0x400AAAAAA0000000
  %1710 = call float @dx.op.unary.f32(i32 7, float %1709)  ; Saturate(value)
  %1711 = fmul fast float %1707, %1710
  %1712 = fmul fast float %1295, 0x3FEA2B8620000000
  %1713 = fmul fast float %1296, 0x3FEA2B8620000000
  %1714 = fmul fast float %1297, 0x3FEA2B8620000000
  %1715 = fadd fast float %1712, 0x3FC81DFBA0000000
  %1716 = fmul fast float %1715, %1295
  %1717 = fadd fast float %1716, 0x3F910E6020000000
  %1718 = fadd fast float %1713, 0x3FC81DFBA0000000
  %1719 = fmul fast float %1718, %1296
  %1720 = fadd fast float %1719, 0x3F910E6020000000
  %1721 = fadd fast float %1714, 0x3FC81DFBA0000000
  %1722 = fmul fast float %1721, %1297
  %1723 = fadd fast float %1722, 0x3F910E6020000000
  %1724 = call float @dx.op.unary.f32(i32 7, float %1717)  ; Saturate(value)
  %1725 = call float @dx.op.unary.f32(i32 7, float %1720)  ; Saturate(value)
  %1726 = call float @dx.op.unary.f32(i32 7, float %1723)  ; Saturate(value)
  %1727 = fsub fast float %1724, %1295
  %1728 = fsub fast float %1725, %1296
  %1729 = fsub fast float %1726, %1297
  %1730 = fmul fast float %1727, %1700
  %1731 = fmul fast float %1730, %1711
  %1732 = fmul fast float %1728, %1700
  %1733 = fmul fast float %1732, %1711
  %1734 = fmul fast float %1729, %1700
  %1735 = fmul fast float %1734, %1711
  %1736 = fadd fast float %1731, %1295
  %1737 = fadd fast float %1733, %1296
  %1738 = fadd fast float %1735, %1297
  %1739 = fmul fast float %1243, %1243
  %1740 = fmul fast float %1739, %1739
  %1741 = fadd fast float %1696, 1.000000e+00
  %1742 = fsub fast float %1741, %1711
  %1743 = call float @dx.op.unary.f32(i32 7, float %1742)  ; Saturate(value)
  %1744 = call float @dx.op.dot3.f32(i32 55, float %43, float %44, float %45, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1745 = call float @dx.op.unary.f32(i32 7, float %1744)  ; Saturate(value)
  %1746 = fsub fast float 1.000000e+00, %1740
  %1747 = call float @dx.op.binary.f32(i32 36, float %1743, float %1746)  ; FMin(a,b)
  %1748 = call float @dx.op.unary.f32(i32 7, float %1699)  ; Saturate(value)
  %1749 = call float @dx.op.binary.f32(i32 35, float %1747, float %1748)  ; FMax(a,b)
  %1750 = fadd fast float %1745, 0xBFE4CCCCC0000000
  %1751 = fmul fast float %1750, 0x4006DB6DA0000000
  %1752 = call float @dx.op.unary.f32(i32 7, float %1751)  ; Saturate(value)
  %1753 = fmul fast float %1752, 2.000000e+00
  %1754 = fsub fast float 3.000000e+00, %1753
  %1755 = bitcast float %1280 to i32
  %1756 = ashr i32 %1755, 1
  %1757 = add nsw i32 %1756, 532487669
  %1758 = bitcast i32 %1757 to float
  %1759 = fsub fast float 1.000000e+00, %1758
  %1760 = bitcast float %1759 to i32
  %1761 = sub nsw i32 2129859010, %1760
  %1762 = bitcast i32 %1761 to float
  %1763 = fmul fast float %1762, 2.000000e+00
  %1764 = bitcast float %1281 to i32
  %1765 = ashr i32 %1764, 1
  %1766 = add nsw i32 %1765, 532487669
  %1767 = bitcast i32 %1766 to float
  %1768 = fsub fast float 1.000000e+00, %1767
  %1769 = bitcast float %1768 to i32
  %1770 = sub nsw i32 2129859010, %1769
  %1771 = bitcast i32 %1770 to float
  %1772 = fmul fast float %1771, 2.000000e+00
  %1773 = bitcast float %1282 to i32
  %1774 = ashr i32 %1773, 1
  %1775 = add nsw i32 %1774, 532487669
  %1776 = bitcast i32 %1775 to float
  %1777 = fsub fast float 1.000000e+00, %1776
  %1778 = bitcast float %1777 to i32
  %1779 = sub nsw i32 2129859010, %1778
  %1780 = bitcast i32 %1779 to float
  %1781 = fmul fast float %1780, 2.000000e+00
  %1782 = fsub fast float 0x4002A9FBE0000000, %1763
  %1783 = fadd fast float %1763, 0x3FD54FDF00000000
  %1784 = bitcast float %1783 to i32
  %1785 = sub nsw i32 2129859010, %1784
  %1786 = bitcast i32 %1785 to float
  %1787 = fmul fast float %1786, %1782
  %1788 = fmul fast float %1787, %1787
  %1789 = fsub fast float 0x4002A9FBE0000000, %1772
  %1790 = fadd fast float %1772, 0x3FD54FDF00000000
  %1791 = bitcast float %1790 to i32
  %1792 = sub nsw i32 2129859010, %1791
  %1793 = bitcast i32 %1792 to float
  %1794 = fmul fast float %1793, %1789
  %1795 = fmul fast float %1794, %1794
  %1796 = fsub fast float 0x4002A9FBE0000000, %1781
  %1797 = fadd fast float %1781, 0x3FD54FDF00000000
  %1798 = bitcast float %1797 to i32
  %1799 = sub nsw i32 2129859010, %1798
  %1800 = bitcast i32 %1799 to float
  %1801 = fmul fast float %1800, %1796
  %1802 = fmul fast float %1801, %1801
  %1803 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1788)  ; FMax(a,b)
  %1804 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1795)  ; FMax(a,b)
  %1805 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1802)  ; FMax(a,b)
  %1806 = fsub fast float 1.000000e+00, %1691
  %1807 = fadd fast float %1806, %1707
  %1808 = call float @dx.op.unary.f32(i32 7, float %1807)  ; Saturate(value)
  %1809 = fsub fast float 1.000000e+00, %1671
  %1810 = fmul fast float %1749, %1809
  %1811 = fmul fast float %1752, %1752
  %1812 = fmul fast float %1811, %1810
  %1813 = fmul fast float %1812, %1754
  %1814 = fmul fast float %1809, 0xBFE99999A0000000
  %1815 = fmul fast float %1814, %1700
  %1816 = fmul fast float %1815, %1711
  %1817 = fadd fast float %1816, 1.000000e+00
  %1818 = fadd fast float %1283, -1.000000e+00
  %1819 = fmul fast float %1817, %1818
  %1820 = fadd fast float %1819, 1.000000e+00
  %1821 = fsub fast float %1803, %1280
  %1822 = fsub fast float %1804, %1281
  %1823 = fsub fast float %1805, %1282
  %1824 = fmul fast float %1813, %1821
  %1825 = fmul fast float %1813, %1822
  %1826 = fmul fast float %1813, %1823
  %1827 = fadd fast float %1824, %1280
  %1828 = fadd fast float %1825, %1281
  %1829 = fadd fast float %1826, %1282
  %1830 = fsub fast float %43, %1259
  %1831 = fsub fast float %44, %1260
  %1832 = fsub fast float %45, %1261
  %1833 = fmul fast float %1813, %1830
  %1834 = fmul fast float %1813, %1831
  %1835 = fmul fast float %1813, %1832
  %1836 = fadd fast float %1833, %1259
  %1837 = fadd fast float %1834, %1260
  %1838 = fadd fast float %1835, %1261
  %1839 = fmul fast float %1813, %1808
  %1840 = call float @dx.op.unary.f32(i32 7, float %1820)  ; Saturate(value)
  %1841 = fsub fast float 1.000000e+00, %1840
  %1842 = fmul fast float %1839, %1841
  %1843 = fadd fast float %1842, %1840
  %1844 = fsub fast float 1.000000e+00, %1243
  %1845 = fmul fast float %1813, %1844
  %1846 = fadd fast float %1845, %1243
  %1847 = call float @dx.op.dot3.f32(i32 55, float %1836, float %1837, float %1838, float %1836, float %1837, float %1838)  ; Dot3(ax,ay,az,bx,by,bz)
  %1848 = call float @dx.op.unary.f32(i32 25, float %1847)  ; Rsqrt(value)
  %1849 = fmul fast float %1836, %1848
  %1850 = fmul fast float %1837, %1848
  %1851 = fmul fast float %1838, %1848
  br label %1852

; <label>:1852                                    ; preds = %1684, %1677
  %1853 = phi float [ %1683, %1677 ], [ %1690, %1684 ]
  %1854 = phi float [ %1682, %1677 ], [ %1688, %1684 ]
  %1855 = phi float [ %1681, %1677 ], [ %1686, %1684 ]
  %1856 = phi float [ %1680, %1677 ], [ %1689, %1684 ]
  %1857 = phi float [ %1679, %1677 ], [ %1687, %1684 ]
  %1858 = phi float [ %1678, %1677 ], [ %1685, %1684 ]
  %1859 = phi float [ %1280, %1677 ], [ %1827, %1684 ]
  %1860 = phi float [ %1281, %1677 ], [ %1828, %1684 ]
  %1861 = phi float [ %1282, %1677 ], [ %1829, %1684 ]
  %1862 = phi float [ %1295, %1677 ], [ %1736, %1684 ]
  %1863 = phi float [ %1296, %1677 ], [ %1737, %1684 ]
  %1864 = phi float [ %1297, %1677 ], [ %1738, %1684 ]
  %1865 = phi float [ %1259, %1677 ], [ %1849, %1684 ]
  %1866 = phi float [ %1260, %1677 ], [ %1850, %1684 ]
  %1867 = phi float [ %1261, %1677 ], [ %1851, %1684 ]
  %1868 = phi float [ %1283, %1677 ], [ %1843, %1684 ]
  %1869 = phi float [ %1243, %1677 ], [ %1846, %1684 ]
  %1870 = select i1 %176, float 0.000000e+00, float %1861
  %1871 = call float @dx.op.dot3.f32(i32 55, float %1865, float %1866, float %1867, float %1855, float %1854, float %1853)  ; Dot3(ax,ay,az,bx,by,bz)
  %1872 = call float @dx.op.unary.f32(i32 7, float %1871)  ; Saturate(value)
  %1873 = call float @dx.op.dot3.f32(i32 55, float %1858, float %1857, float %1856, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %1874 = fmul fast float %1873, 2.000000e+00
  %1875 = fmul fast float %1874, %1865
  %1876 = fmul fast float %1874, %1866
  %1877 = fmul fast float %1874, %1867
  %1878 = fsub fast float %1858, %1875
  %1879 = fsub fast float %1857, %1876
  %1880 = fsub fast float %1856, %1877
  %1881 = call float @dx.op.binary.f32(i32 36, float %1869, float 1.000000e+00)  ; FMin(a,b)
  %1882 = fsub fast float 1.000000e+00, %1869
  %1883 = bitcast float %1882 to i32
  %1884 = sub nsw i32 2129859010, %1883
  %1885 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1886 = extractvalue %dx.types.CBufRet.f32 %1885, 0
  %1887 = extractvalue %dx.types.CBufRet.f32 %1885, 1
  %1888 = fadd fast float %1886, %105
  %1889 = fadd fast float %1887, %106
  %1890 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1891 = extractvalue %dx.types.CBufRet.i32 %1890, 0
  %1892 = icmp eq i32 %1891, 1
  br i1 %1892, label %1893, label %1928

; <label>:1893                                    ; preds = %1852
  %1894 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1895 = extractvalue %dx.types.CBufRet.f32 %1894, 0
  %1896 = extractvalue %dx.types.CBufRet.f32 %1894, 1
  %1897 = fsub fast float %1888, %1895
  %1898 = fsub fast float %1889, %1896
  %1899 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1900 = extractvalue %dx.types.CBufRet.f32 %1899, 0
  %1901 = extractvalue %dx.types.CBufRet.f32 %1899, 1
  %1902 = fmul fast float %1897, %1900
  %1903 = fmul fast float %1898, %1901
  %1904 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1902, float %1903, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1905 = extractvalue %dx.types.ResRet.f32 %1904, 0
  %1906 = fcmp fast ogt float %1905, 0.000000e+00
  %1907 = extractvalue %dx.types.CBufRet.i32 %1890, 3
  %1908 = icmp ne i32 %1907, 0
  %1909 = and i1 %1906, %1908
  br i1 %1909, label %1910, label %1928, !dx.controlflow.hints !73

; <label>:1910                                    ; preds = %1893
  %1911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1912 = extractvalue %dx.types.CBufRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.CBufRet.f32 %1911, 1
  %1914 = fsub fast float %1888, %1912
  %1915 = fsub fast float %1889, %1913
  %1916 = fmul fast float %1914, %1914
  %1917 = fmul fast float %1915, %1915
  %1918 = fadd fast float %1916, %1917
  %1919 = uitofp i32 %1907 to float
  %1920 = fmul fast float %1919, %1919
  %1921 = fcmp fast ogt float %1918, %1920
  br i1 %1921, label %1928, label %1922

; <label>:1922                                    ; preds = %1910
  %1923 = call float @dx.op.unary.f32(i32 24, float %1918)  ; Sqrt(value)
  %1924 = fsub fast float %1919, %1923
  %1925 = fmul fast float %1924, 0x3F75555560000000
  %1926 = call float @dx.op.unary.f32(i32 7, float %1925)  ; Saturate(value)
  %1927 = call float @dx.op.binary.f32(i32 36, float %1926, float %1905)  ; FMin(a,b)
  br label %1928

; <label>:1928                                    ; preds = %1922, %1910, %1893, %1852
  %1929 = phi float [ 1.000000e+00, %1852 ], [ %1927, %1922 ], [ %1905, %1893 ], [ 0.000000e+00, %1910 ]
  %1930 = fcmp fast ogt float %1929, 0.000000e+00
  br i1 %1930, label %1931, label %2029, !dx.controlflow.hints !74

; <label>:1931                                    ; preds = %1928
  %1932 = fadd fast float %136, 5.000000e-01
  %1933 = call float @dx.op.unary.f32(i32 27, float %1932)  ; Round_ni(value)
  %1934 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %134, float %135, float %1933, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = extractvalue %dx.types.ResRet.f32 %1934, 1
  %1937 = extractvalue %dx.types.ResRet.f32 %1934, 2
  %1938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1939 = extractvalue %dx.types.CBufRet.f32 %1938, 3
  %1940 = fmul fast float %1939, %1935
  %1941 = fmul fast float %1939, %1936
  %1942 = fmul fast float %1939, %1937
  %1943 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %134, float %135, float %1933, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1944 = extractvalue %dx.types.ResRet.f32 %1943, 0
  %1945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %134, float %135, float %1933, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1946 = extractvalue %dx.types.ResRet.f32 %1945, 0
  %1947 = extractvalue %dx.types.ResRet.f32 %1945, 1
  %1948 = fmul fast float %1946, 2.000000e+00
  %1949 = fmul fast float %1947, 2.000000e+00
  %1950 = fadd fast float %1948, -1.000000e+00
  %1951 = fadd fast float %1949, -1.000000e+00
  %1952 = fadd fast float %1950, %1951
  %1953 = fmul fast float %1952, 5.000000e-01
  %1954 = fsub fast float %1950, %1951
  %1955 = fmul fast float %1954, 5.000000e-01
  %1956 = call float @dx.op.unary.f32(i32 6, float %1953)  ; FAbs(value)
  %1957 = fsub fast float 1.000000e+00, %1956
  %1958 = call float @dx.op.unary.f32(i32 6, float %1955)  ; FAbs(value)
  %1959 = fsub fast float %1957, %1958
  %1960 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1959)  ; FMax(a,b)
  %1961 = call float @dx.op.dot3.f32(i32 55, float %1953, float %1955, float %1960, float %1953, float %1955, float %1960)  ; Dot3(ax,ay,az,bx,by,bz)
  %1962 = bitcast float %1961 to i32
  %1963 = ashr i32 %1962, 1
  %1964 = sub nsw i32 1597250115, %1963
  %1965 = bitcast i32 %1964 to float
  %1966 = fmul fast float %1965, %1953
  %1967 = fmul fast float %1965, %1955
  %1968 = fmul fast float %1965, %1960
  %1969 = fsub fast float 1.000000e+00, %1944
  %1970 = fdiv fast float %1969, %1968
  %1971 = fmul fast float %1968, %43
  %1972 = fmul fast float %1968, %44
  %1973 = fmul fast float %1968, %45
  %1974 = fmul fast float %1966, %39
  %1975 = fmul fast float %1966, %40
  %1976 = fmul fast float %1966, %41
  %1977 = fadd fast float %1971, %1974
  %1978 = fadd fast float %1972, %1975
  %1979 = fadd fast float %1973, %1976
  %1980 = fmul fast float %1967, %69
  %1981 = fmul fast float %1967, %70
  %1982 = fmul fast float %1967, %71
  %1983 = fadd fast float %1977, %1980
  %1984 = fadd fast float %1978, %1981
  %1985 = fadd fast float %1979, %1982
  %1986 = call float @dx.op.dot3.f32(i32 55, float %1983, float %1984, float %1985, float %1983, float %1984, float %1985)  ; Dot3(ax,ay,az,bx,by,bz)
  %1987 = call float @dx.op.unary.f32(i32 25, float %1986)  ; Rsqrt(value)
  %1988 = fmul fast float %1983, %1987
  %1989 = fmul fast float %1984, %1987
  %1990 = fmul fast float %1985, %1987
  %1991 = call float @dx.op.dot3.f32(i32 55, float %1865, float %1866, float %1867, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %1992 = call float @dx.op.unary.f32(i32 7, float %1991)  ; Saturate(value)
  %1993 = fmul fast float %1992, 5.000000e-01
  %1994 = fadd fast float %1993, 5.000000e-01
  %1995 = fmul fast float %1994, %1944
  %1996 = call float @dx.op.dot3.f32(i32 55, float %1865, float %1866, float %1867, float %1988, float %1989, float %1990)  ; Dot3(ax,ay,az,bx,by,bz)
  %1997 = call float @dx.op.unary.f32(i32 7, float %1996)  ; Saturate(value)
  %1998 = fmul fast float %1997, %1970
  %1999 = fadd fast float %1995, %1998
  %2000 = fsub fast float 5.000000e-01, %1993
  %2001 = fmul fast float %2000, %1862
  %2002 = fmul fast float %2000, %1863
  %2003 = fmul fast float %2000, %1864
  %2004 = fadd fast float %1999, %2001
  %2005 = fmul fast float %2004, %1940
  %2006 = fadd fast float %1999, %2002
  %2007 = fmul fast float %2006, %1941
  %2008 = fadd fast float %1999, %2003
  %2009 = fmul fast float %2008, %1942
  %2010 = call float @dx.op.dot3.f32(i32 55, float %1878, float %1879, float %1880, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2011 = call float @dx.op.unary.f32(i32 7, float %2010)  ; Saturate(value)
  %2012 = fmul fast float %2011, 5.000000e-01
  %2013 = fadd fast float %2012, 5.000000e-01
  %2014 = fmul fast float %2013, %1944
  %2015 = call float @dx.op.dot3.f32(i32 55, float %1878, float %1879, float %1880, float %1988, float %1989, float %1990)  ; Dot3(ax,ay,az,bx,by,bz)
  %2016 = call float @dx.op.unary.f32(i32 7, float %2015)  ; Saturate(value)
  %2017 = fmul fast float %2016, %1970
  %2018 = fadd fast float %2014, %2017
  %2019 = fsub fast float 5.000000e-01, %2012
  %2020 = fmul fast float %2019, %1862
  %2021 = fmul fast float %2019, %1863
  %2022 = fmul fast float %2019, %1864
  %2023 = fadd fast float %2018, %2020
  %2024 = fmul fast float %2023, %1940
  %2025 = fadd fast float %2018, %2021
  %2026 = fmul fast float %2025, %1941
  %2027 = fadd fast float %2018, %2022
  %2028 = fmul fast float %2027, %1942
  br label %2029

; <label>:2029                                    ; preds = %1931, %1928
  %2030 = phi float [ %2024, %1931 ], [ 0.000000e+00, %1928 ]
  %2031 = phi float [ %2026, %1931 ], [ 0.000000e+00, %1928 ]
  %2032 = phi float [ %2028, %1931 ], [ 0.000000e+00, %1928 ]
  %2033 = phi float [ %2005, %1931 ], [ 0.000000e+00, %1928 ]
  %2034 = phi float [ %2007, %1931 ], [ 0.000000e+00, %1928 ]
  %2035 = phi float [ %2009, %1931 ], [ 0.000000e+00, %1928 ]
  %2036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2037 = extractvalue %dx.types.CBufRet.f32 %2036, 0
  %2038 = fcmp fast ogt float %2037, 0.000000e+00
  %2039 = and i1 %1930, %2038
  br i1 %2039, label %2040, label %2244, !dx.controlflow.hints !75

; <label>:2040                                    ; preds = %2029
  %2041 = extractvalue %dx.types.CBufRet.f32 %1885, 2
  %2042 = fadd fast float %2041, %107
  %2043 = fmul fast float %1865, 3.200000e+01
  %2044 = fmul fast float %1866, 3.200000e+01
  %2045 = fadd fast float %1888, %2043
  %2046 = fadd fast float %1889, %2044
  %2047 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2048 = extractvalue %dx.types.CBufRet.f32 %2047, 0
  %2049 = extractvalue %dx.types.CBufRet.f32 %2047, 1
  %2050 = fsub fast float %2045, %2048
  %2051 = fsub fast float %2046, %2049
  %2052 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2053 = extractvalue %dx.types.CBufRet.f32 %2052, 0
  %2054 = extractvalue %dx.types.CBufRet.f32 %2052, 1
  %2055 = fmul fast float %2050, %2053
  %2056 = fmul fast float %2051, %2054
  %2057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2058 = extractvalue %dx.types.CBufRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.CBufRet.f32 %2057, 1
  %2060 = fsub fast float %1888, %2058
  %2061 = fsub fast float %1889, %2059
  %2062 = fmul fast float %2060, %2060
  %2063 = fmul fast float %2061, %2061
  %2064 = fadd fast float %2062, %2063
  %2065 = call float @dx.op.unary.f32(i32 24, float %2064)  ; Sqrt(value)
  %2066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2067 = extractvalue %dx.types.CBufRet.f32 %2066, 0
  %2068 = extractvalue %dx.types.CBufRet.f32 %2066, 1
  %2069 = fsub fast float %2065, %2067
  %2070 = fdiv fast float %2069, %2068
  %2071 = call float @dx.op.unary.f32(i32 7, float %2070)  ; Saturate(value)
  %2072 = fmul fast float %2071, 2.000000e+00
  %2073 = fsub fast float 3.000000e+00, %2072
  %2074 = fmul fast float %2071, %2071
  %2075 = fmul fast float %2074, %2073
  %2076 = fcmp fast oge float %2055, 0.000000e+00
  %2077 = fcmp fast ole float %2055, 1.000000e+00
  %2078 = and i1 %2077, %2076
  %2079 = fcmp fast oge float %2056, 0.000000e+00
  %2080 = and i1 %2079, %2078
  %2081 = fcmp fast ole float %2056, 1.000000e+00
  %2082 = and i1 %2081, %2080
  %2083 = fcmp fast ogt float %2075, 0.000000e+00
  %2084 = and i1 %2083, %2082
  br i1 %2084, label %2085, label %2208, !dx.controlflow.hints !76

; <label>:2085                                    ; preds = %2040
  %2086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2087 = extractvalue %dx.types.CBufRet.f32 %2086, 2
  %2088 = extractvalue %dx.types.CBufRet.f32 %2086, 3
  %2089 = fmul fast float %2087, %2055
  %2090 = fmul fast float %2088, %2056
  %2091 = call float @dx.op.unary.f32(i32 27, float %2089)  ; Round_ni(value)
  %2092 = call float @dx.op.unary.f32(i32 27, float %2090)  ; Round_ni(value)
  %2093 = fptosi float %2091 to i32
  %2094 = fptosi float %2092 to i32
  %2095 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2093, i32 %2094, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = lshr i32 %2096, 16
  %2098 = icmp eq i32 %2097, 65535
  br i1 %2098, label %2208, label %2099

; <label>:2099                                    ; preds = %2085
  %2100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2101 = extractvalue %dx.types.CBufRet.f32 %2100, 0
  %2102 = fmul fast float %2101, %2055
  %2103 = extractvalue %dx.types.CBufRet.f32 %2100, 1
  %2104 = fadd fast float %2102, %2103
  %2105 = extractvalue %dx.types.CBufRet.f32 %2100, 2
  %2106 = fmul fast float %2105, %2056
  %2107 = extractvalue %dx.types.CBufRet.f32 %2100, 3
  %2108 = fadd fast float %2106, %2107
  %2109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2104, float %2108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2110 = extractvalue %dx.types.ResRet.f32 %2109, 0
  %2111 = extractvalue %dx.types.ResRet.f32 %2109, 1
  %2112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2113 = extractvalue %dx.types.CBufRet.f32 %2112, 1
  %2114 = extractvalue %dx.types.CBufRet.f32 %2112, 0
  %2115 = fsub fast float %2113, %2114
  %2116 = fmul fast float %2115, %2110
  %2117 = fadd fast float %2116, %2114
  %2118 = extractvalue %dx.types.CBufRet.f32 %2112, 3
  %2119 = extractvalue %dx.types.CBufRet.f32 %2112, 2
  %2120 = fsub fast float %2118, %2119
  %2121 = fmul fast float %2120, %2111
  %2122 = fadd fast float %2121, %2119
  %2123 = fsub fast float %2042, %2117
  %2124 = fsub fast float %2122, %2117
  %2125 = fdiv fast float %2123, %2124
  %2126 = call float @dx.op.unary.f32(i32 7, float %2125)  ; Saturate(value)
  %2127 = extractvalue %dx.types.CBufRet.f32 %2036, 1
  %2128 = extractvalue %dx.types.CBufRet.f32 %2086, 0
  %2129 = extractvalue %dx.types.CBufRet.f32 %2086, 1
  %2130 = fmul fast float %2128, %2055
  %2131 = fmul fast float %2129, %2056
  %2132 = fmul fast float %2130, 1.250000e-01
  %2133 = fmul fast float %2131, 1.250000e-01
  %2134 = call float @dx.op.unary.f32(i32 27, float %2132)  ; Round_ni(value)
  %2135 = call float @dx.op.unary.f32(i32 27, float %2133)  ; Round_ni(value)
  %2136 = fmul fast float %2134, 8.000000e+00
  %2137 = fmul fast float %2135, 8.000000e+00
  %2138 = fsub fast float %2130, %2136
  %2139 = fsub fast float %2131, %2137
  %2140 = fadd fast float %2138, 5.000000e-01
  %2141 = fadd fast float %2139, 5.000000e-01
  %2142 = and i32 %2097, 255
  %2143 = lshr i32 %2096, 24
  %2144 = mul nuw nsw i32 %2142, 9
  %2145 = uitofp i32 %2144 to float
  %2146 = mul nuw nsw i32 %2143, 9
  %2147 = uitofp i32 %2146 to float
  %2148 = fadd fast float %2140, %2145
  %2149 = fadd fast float %2141, %2147
  %2150 = fdiv fast float %2148, %2037
  %2151 = fdiv fast float %2149, %2127
  %2152 = fmul fast float %2126, 4.375000e-01
  %2153 = fadd fast float %2152, 3.125000e-02
  %2154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2150, float %2151, float %2153, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2155 = extractvalue %dx.types.ResRet.f32 %2154, 0
  %2156 = extractvalue %dx.types.ResRet.f32 %2154, 1
  %2157 = extractvalue %dx.types.ResRet.f32 %2154, 2
  %2158 = fadd fast float %2152, 5.312500e-01
  %2159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2150, float %2151, float %2158, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2160 = extractvalue %dx.types.ResRet.f32 %2159, 0
  %2161 = extractvalue %dx.types.ResRet.f32 %2159, 1
  %2162 = extractvalue %dx.types.ResRet.f32 %2159, 2
  %2163 = fmul fast float %2160, 2.000000e+00
  %2164 = fmul fast float %2161, 2.000000e+00
  %2165 = fmul fast float %2162, 2.000000e+00
  %2166 = fadd fast float %2163, -1.000000e+00
  %2167 = fadd fast float %2164, -1.000000e+00
  %2168 = fadd fast float %2165, -1.000000e+00
  %2169 = fmul fast float %2166, %2166
  %2170 = fmul fast float %2167, %2167
  %2171 = fadd fast float %2169, %2170
  %2172 = fmul fast float %2168, %2168
  %2173 = fadd fast float %2171, %2172
  %2174 = call float @dx.op.unary.f32(i32 24, float %2173)  ; Sqrt(value)
  %2175 = fcmp fast ogt float %2174, 0.000000e+00
  br i1 %2175, label %2176, label %2180

; <label>:2176                                    ; preds = %2099
  %2177 = fdiv fast float %2166, %2174
  %2178 = fdiv fast float %2167, %2174
  %2179 = fdiv fast float %2168, %2174
  br label %2180

; <label>:2180                                    ; preds = %2176, %2099
  %2181 = phi float [ %2177, %2176 ], [ 0.000000e+00, %2099 ]
  %2182 = phi float [ %2178, %2176 ], [ 0.000000e+00, %2099 ]
  %2183 = phi float [ %2179, %2176 ], [ 0.000000e+00, %2099 ]
  %2184 = call float @dx.op.dot3.f32(i32 55, float %2181, float %2182, float %2183, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2185 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2184)  ; FMax(a,b)
  %2186 = fmul fast float %2185, 0x400C5BF8A0000000
  %2187 = fmul fast float %2155, %2075
  %2188 = fmul fast float %2187, %2186
  %2189 = fmul fast float %2156, %2075
  %2190 = fmul fast float %2189, %2186
  %2191 = fmul fast float %2157, %2075
  %2192 = fmul fast float %2191, %2186
  %2193 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2194 = extractvalue %dx.types.CBufRet.f32 %2193, 3
  %2195 = fmul fast float %2188, %2194
  %2196 = fmul fast float %2190, %2194
  %2197 = fmul fast float %2192, %2194
  %2198 = fcmp fast ogt float %2042, %2122
  br i1 %2198, label %2199, label %2208

; <label>:2199                                    ; preds = %2180
  %2200 = fmul fast float %2124, 0x3FC24924A0000000
  %2201 = fsub fast float %2042, %2122
  %2202 = fdiv fast float %2201, %2200
  %2203 = call float @dx.op.unary.f32(i32 7, float %2202)  ; Saturate(value)
  %2204 = fsub fast float 1.000000e+00, %2203
  %2205 = fmul fast float %2204, %2195
  %2206 = fmul fast float %2204, %2196
  %2207 = fmul fast float %2204, %2197
  br label %2208

; <label>:2208                                    ; preds = %2199, %2180, %2085, %2040
  %2209 = phi float [ %2207, %2199 ], [ %2197, %2180 ], [ 0.000000e+00, %2085 ], [ 0.000000e+00, %2040 ]
  %2210 = phi float [ %2206, %2199 ], [ %2196, %2180 ], [ 0.000000e+00, %2085 ], [ 0.000000e+00, %2040 ]
  %2211 = phi float [ %2205, %2199 ], [ %2195, %2180 ], [ 0.000000e+00, %2085 ], [ 0.000000e+00, %2040 ]
  %2212 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2211)  ; FMax(a,b)
  %2213 = fmul fast float %2212, 0x3FD20DD760000000
  %2214 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %2215 = fmul fast float %2214, 0x3FDF454380000000
  %2216 = fmul fast float %2214, %2214
  %2217 = fmul fast float %2216, 0x3FEE471020000000
  %2218 = fadd fast float %2217, 0xBFD42F6020000000
  %2219 = call float @dx.op.dot3.f32(i32 55, float %2212, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2215, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %2220 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2210)  ; FMax(a,b)
  %2221 = fmul fast float %2220, 0x3FD20DD760000000
  %2222 = call float @dx.op.dot3.f32(i32 55, float %2220, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2215, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %2223 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2209)  ; FMax(a,b)
  %2224 = fmul fast float %2223, 0x3FD20DD760000000
  %2225 = call float @dx.op.dot3.f32(i32 55, float %2223, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2215, float %2218)  ; Dot3(ax,ay,az,bx,by,bz)
  %2226 = call float @dx.op.binary.f32(i32 35, float %2213, float 0.000000e+00)  ; FMax(a,b)
  %2227 = call float @dx.op.binary.f32(i32 35, float %2221, float 0.000000e+00)  ; FMax(a,b)
  %2228 = call float @dx.op.binary.f32(i32 35, float %2224, float 0.000000e+00)  ; FMax(a,b)
  %2229 = call float @dx.op.binary.f32(i32 35, float %2219, float 0.000000e+00)  ; FMax(a,b)
  %2230 = call float @dx.op.binary.f32(i32 35, float %2222, float 0.000000e+00)  ; FMax(a,b)
  %2231 = call float @dx.op.binary.f32(i32 35, float %2225, float 0.000000e+00)  ; FMax(a,b)
  %2232 = fmul fast float %2226, %1929
  %2233 = fmul fast float %2227, %1929
  %2234 = fmul fast float %2228, %1929
  %2235 = fadd fast float %2232, %2033
  %2236 = fadd fast float %2233, %2034
  %2237 = fadd fast float %2234, %2035
  %2238 = fmul fast float %2229, %1929
  %2239 = fmul fast float %2230, %1929
  %2240 = fmul fast float %2231, %1929
  %2241 = fadd fast float %2238, %2030
  %2242 = fadd fast float %2239, %2031
  %2243 = fadd fast float %2240, %2032
  br label %2244

; <label>:2244                                    ; preds = %2208, %2029
  %2245 = phi float [ %2241, %2208 ], [ %2030, %2029 ]
  %2246 = phi float [ %2242, %2208 ], [ %2031, %2029 ]
  %2247 = phi float [ %2243, %2208 ], [ %2032, %2029 ]
  %2248 = phi float [ %2235, %2208 ], [ %2033, %2029 ]
  %2249 = phi float [ %2236, %2208 ], [ %2034, %2029 ]
  %2250 = phi float [ %2237, %2208 ], [ %2035, %2029 ]
  %2251 = fcmp fast olt float %1929, 1.000000e+00
  br i1 %2251, label %2252, label %3070, !dx.controlflow.hints !77

; <label>:2252                                    ; preds = %2244
  %2253 = extractvalue %dx.types.CBufRet.f32 %1885, 2
  %2254 = fadd fast float %2253, %107
  %2255 = fmul fast float %1865, 3.200000e+01
  %2256 = fmul fast float %1866, 3.200000e+01
  %2257 = fadd fast float %1888, %2255
  %2258 = fadd fast float %1889, %2256
  %2259 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2259, 0
  %2261 = extractvalue %dx.types.CBufRet.f32 %2259, 1
  %2262 = fsub fast float %2257, %2260
  %2263 = fsub fast float %2258, %2261
  %2264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2265 = extractvalue %dx.types.CBufRet.f32 %2264, 0
  %2266 = extractvalue %dx.types.CBufRet.f32 %2264, 1
  %2267 = fmul fast float %2262, %2265
  %2268 = fmul fast float %2263, %2266
  %2269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2270 = extractvalue %dx.types.CBufRet.f32 %2269, 0
  %2271 = fmul fast float %2267, %2270
  %2272 = extractvalue %dx.types.CBufRet.f32 %2269, 1
  %2273 = fadd fast float %2271, %2272
  %2274 = extractvalue %dx.types.CBufRet.f32 %2269, 2
  %2275 = fmul fast float %2274, %2268
  %2276 = extractvalue %dx.types.CBufRet.f32 %2269, 3
  %2277 = fadd fast float %2275, %2276
  %2278 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2273, float %2277, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2279 = extractvalue %dx.types.ResRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.ResRet.f32 %2278, 1
  %2281 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2282 = extractvalue %dx.types.CBufRet.f32 %2281, 1
  %2283 = extractvalue %dx.types.CBufRet.f32 %2281, 0
  %2284 = fsub fast float %2282, %2283
  %2285 = fmul fast float %2284, %2279
  %2286 = fadd fast float %2285, %2283
  %2287 = extractvalue %dx.types.CBufRet.f32 %2281, 3
  %2288 = extractvalue %dx.types.CBufRet.f32 %2281, 2
  %2289 = fsub fast float %2287, %2288
  %2290 = fmul fast float %2289, %2280
  %2291 = fadd fast float %2290, %2288
  %2292 = fsub fast float %2254, %2286
  %2293 = fsub fast float %2291, %2286
  %2294 = fdiv fast float %2292, %2293
  %2295 = call float @dx.op.unary.f32(i32 7, float %2294)  ; Saturate(value)
  %2296 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2297 = extractvalue %dx.types.CBufRet.f32 %2296, 0
  %2298 = fmul fast float %2297, %2295
  %2299 = extractvalue %dx.types.CBufRet.f32 %2296, 1
  %2300 = fadd fast float %2298, %2299
  %2301 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %2273, float %2277, float %2300, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2302 = extractvalue %dx.types.ResRet.f32 %2301, 0
  %2303 = extractvalue %dx.types.ResRet.f32 %2301, 1
  %2304 = extractvalue %dx.types.ResRet.f32 %2301, 2
  %2305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2306 = extractvalue %dx.types.CBufRet.f32 %2305, 0
  %2307 = extractvalue %dx.types.CBufRet.f32 %2305, 1
  %2308 = extractvalue %dx.types.CBufRet.f32 %2305, 2
  %2309 = fmul fast float %2306, %2302
  %2310 = fmul fast float %2307, %2303
  %2311 = fmul fast float %2308, %2304
  %2312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.f32 %2312, 0
  %2314 = extractvalue %dx.types.CBufRet.f32 %2312, 1
  %2315 = extractvalue %dx.types.CBufRet.f32 %2312, 2
  %2316 = fadd fast float %2309, %2313
  %2317 = fadd fast float %2310, %2314
  %2318 = fadd fast float %2311, %2315
  %2319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2320 = extractvalue %dx.types.CBufRet.f32 %2319, 0
  %2321 = fmul fast float %2320, %2267
  %2322 = extractvalue %dx.types.CBufRet.f32 %2319, 1
  %2323 = fadd fast float %2321, %2322
  %2324 = extractvalue %dx.types.CBufRet.f32 %2319, 2
  %2325 = fmul fast float %2324, %2268
  %2326 = extractvalue %dx.types.CBufRet.f32 %2319, 3
  %2327 = fadd fast float %2325, %2326
  %2328 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2329 = extractvalue %dx.types.CBufRet.f32 %2328, 0
  %2330 = extractvalue %dx.types.CBufRet.f32 %2328, 1
  %2331 = extractvalue %dx.types.CBufRet.f32 %2328, 2
  %2332 = extractvalue %dx.types.CBufRet.f32 %2328, 3
  %2333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2334 = extractvalue %dx.types.CBufRet.f32 %2333, 0
  %2335 = extractvalue %dx.types.CBufRet.f32 %2333, 1
  %2336 = extractvalue %dx.types.CBufRet.f32 %2333, 2
  %2337 = extractvalue %dx.types.CBufRet.f32 %2333, 3
  %2338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2323, float %2327, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2339 = extractvalue %dx.types.ResRet.f32 %2338, 0
  %2340 = extractvalue %dx.types.ResRet.f32 %2338, 1
  %2341 = extractvalue %dx.types.ResRet.f32 %2338, 2
  %2342 = extractvalue %dx.types.ResRet.f32 %2338, 3
  %2343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2323, float %2327, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2344 = extractvalue %dx.types.ResRet.f32 %2343, 0
  %2345 = extractvalue %dx.types.ResRet.f32 %2343, 1
  %2346 = extractvalue %dx.types.ResRet.f32 %2343, 2
  %2347 = extractvalue %dx.types.ResRet.f32 %2343, 3
  %2348 = fmul fast float %2339, %2316
  %2349 = fmul fast float %2344, %2316
  %2350 = fmul fast float %2346, %2316
  %2351 = fmul fast float %2342, %2316
  %2352 = fadd fast float %2348, %2329
  %2353 = fadd fast float %2349, %2330
  %2354 = fadd fast float %2350, %2331
  %2355 = fadd fast float %2351, %2332
  %2356 = fmul fast float %2340, %2316
  %2357 = fmul fast float %2345, %2316
  %2358 = fadd fast float %2356, %2334
  %2359 = fadd fast float %2357, %2335
  %2360 = fmul fast float %2341, %2316
  %2361 = fmul fast float %2347, %2316
  %2362 = fadd fast float %2360, %2336
  %2363 = fadd fast float %2361, %2337
  %2364 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2323, float %2327, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2365 = extractvalue %dx.types.ResRet.f32 %2364, 0
  %2366 = extractvalue %dx.types.ResRet.f32 %2364, 1
  %2367 = extractvalue %dx.types.ResRet.f32 %2364, 2
  %2368 = extractvalue %dx.types.ResRet.f32 %2364, 3
  %2369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2323, float %2327, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2370 = extractvalue %dx.types.ResRet.f32 %2369, 0
  %2371 = extractvalue %dx.types.ResRet.f32 %2369, 1
  %2372 = extractvalue %dx.types.ResRet.f32 %2369, 2
  %2373 = extractvalue %dx.types.ResRet.f32 %2369, 3
  %2374 = fmul fast float %2365, %2317
  %2375 = fmul fast float %2370, %2317
  %2376 = fmul fast float %2372, %2317
  %2377 = fmul fast float %2368, %2317
  %2378 = fadd fast float %2352, %2374
  %2379 = fadd fast float %2353, %2375
  %2380 = fadd fast float %2354, %2376
  %2381 = fadd fast float %2355, %2377
  %2382 = fmul fast float %2366, %2317
  %2383 = fmul fast float %2371, %2317
  %2384 = fadd fast float %2358, %2382
  %2385 = fadd fast float %2359, %2383
  %2386 = fmul fast float %2367, %2317
  %2387 = fmul fast float %2373, %2317
  %2388 = fadd fast float %2362, %2386
  %2389 = fadd fast float %2363, %2387
  %2390 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2323, float %2327, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2391 = extractvalue %dx.types.ResRet.f32 %2390, 0
  %2392 = extractvalue %dx.types.ResRet.f32 %2390, 1
  %2393 = extractvalue %dx.types.ResRet.f32 %2390, 2
  %2394 = extractvalue %dx.types.ResRet.f32 %2390, 3
  %2395 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2323, float %2327, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2396 = extractvalue %dx.types.ResRet.f32 %2395, 0
  %2397 = extractvalue %dx.types.ResRet.f32 %2395, 1
  %2398 = extractvalue %dx.types.ResRet.f32 %2395, 2
  %2399 = extractvalue %dx.types.ResRet.f32 %2395, 3
  %2400 = fmul fast float %2391, %2318
  %2401 = fmul fast float %2396, %2318
  %2402 = fmul fast float %2398, %2318
  %2403 = fmul fast float %2394, %2318
  %2404 = fadd fast float %2378, %2400
  %2405 = fadd fast float %2379, %2401
  %2406 = fadd fast float %2380, %2402
  %2407 = fadd fast float %2381, %2403
  %2408 = fmul fast float %2392, %2318
  %2409 = fmul fast float %2397, %2318
  %2410 = fadd fast float %2384, %2408
  %2411 = fadd fast float %2385, %2409
  %2412 = fmul fast float %2393, %2318
  %2413 = fmul fast float %2399, %2318
  %2414 = fadd fast float %2388, %2412
  %2415 = fadd fast float %2389, %2413
  %2416 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2417 = extractvalue %dx.types.CBufRet.f32 %2416, 0
  %2418 = fsub fast float %1888, %2417
  %2419 = fsub fast float %2260, %1888
  %2420 = call float @dx.op.binary.f32(i32 35, float %2419, float %2418)  ; FMax(a,b)
  %2421 = extractvalue %dx.types.CBufRet.f32 %2416, 1
  %2422 = fsub fast float %1889, %2421
  %2423 = fsub fast float %2261, %1889
  %2424 = call float @dx.op.binary.f32(i32 35, float %2423, float %2422)  ; FMax(a,b)
  %2425 = call float @dx.op.binary.f32(i32 35, float %2420, float %2424)  ; FMax(a,b)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2264, 3
  %2427 = fmul fast float %2426, %2425
  %2428 = call float @dx.op.unary.f32(i32 7, float %2427)  ; Saturate(value)
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2429, 0
  %2431 = extractvalue %dx.types.CBufRet.f32 %2429, 1
  %2432 = extractvalue %dx.types.CBufRet.f32 %2429, 2
  %2433 = extractvalue %dx.types.CBufRet.f32 %2429, 3
  %2434 = fsub fast float %2430, %2404
  %2435 = fsub fast float %2431, %2405
  %2436 = fsub fast float %2432, %2406
  %2437 = fsub fast float %2433, %2407
  %2438 = fmul fast float %2434, %2428
  %2439 = fmul fast float %2435, %2428
  %2440 = fmul fast float %2436, %2428
  %2441 = fmul fast float %2437, %2428
  %2442 = fadd fast float %2438, %2404
  %2443 = fadd fast float %2439, %2405
  %2444 = fadd fast float %2440, %2406
  %2445 = fadd fast float %2441, %2407
  %2446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2447 = extractvalue %dx.types.CBufRet.f32 %2446, 0
  %2448 = extractvalue %dx.types.CBufRet.f32 %2446, 1
  %2449 = fsub fast float %2447, %2410
  %2450 = fsub fast float %2448, %2411
  %2451 = fmul fast float %2449, %2428
  %2452 = fmul fast float %2450, %2428
  %2453 = fadd fast float %2451, %2410
  %2454 = fadd fast float %2452, %2411
  %2455 = extractvalue %dx.types.CBufRet.f32 %2446, 2
  %2456 = extractvalue %dx.types.CBufRet.f32 %2446, 3
  %2457 = fsub fast float %2455, %2414
  %2458 = fsub fast float %2456, %2415
  %2459 = fmul fast float %2457, %2428
  %2460 = fmul fast float %2458, %2428
  %2461 = fadd fast float %2459, %2414
  %2462 = fadd fast float %2460, %2415
  %2463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2464 = extractvalue %dx.types.CBufRet.f32 %2463, 0
  %2465 = fmul fast float %2464, %2442
  %2466 = fmul fast float %2464, %2443
  %2467 = fmul fast float %2464, %2444
  %2468 = fmul fast float %2464, %2445
  %2469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2470 = extractvalue %dx.types.CBufRet.f32 %2469, 0
  %2471 = fmul fast float %2470, %2453
  %2472 = fmul fast float %2470, %2454
  %2473 = fadd fast float %2471, %2465
  %2474 = fadd fast float %2472, %2467
  %2475 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2476 = extractvalue %dx.types.CBufRet.f32 %2475, 0
  %2477 = fmul fast float %2476, %2461
  %2478 = fmul fast float %2476, %2462
  %2479 = fadd fast float %2473, %2477
  %2480 = fadd fast float %2474, %2478
  %2481 = extractvalue %dx.types.CBufRet.f32 %2463, 1
  %2482 = fmul fast float %2481, %2442
  %2483 = fmul fast float %2481, %2443
  %2484 = fmul fast float %2481, %2444
  %2485 = fmul fast float %2481, %2445
  %2486 = extractvalue %dx.types.CBufRet.f32 %2469, 1
  %2487 = fmul fast float %2486, %2453
  %2488 = fmul fast float %2486, %2454
  %2489 = fadd fast float %2487, %2482
  %2490 = fadd fast float %2488, %2484
  %2491 = extractvalue %dx.types.CBufRet.f32 %2475, 1
  %2492 = fmul fast float %2491, %2461
  %2493 = fmul fast float %2491, %2462
  %2494 = fadd fast float %2489, %2492
  %2495 = fadd fast float %2490, %2493
  %2496 = extractvalue %dx.types.CBufRet.f32 %2463, 2
  %2497 = fmul fast float %2496, %2442
  %2498 = fmul fast float %2496, %2443
  %2499 = fmul fast float %2496, %2444
  %2500 = fmul fast float %2496, %2445
  %2501 = extractvalue %dx.types.CBufRet.f32 %2469, 2
  %2502 = fmul fast float %2501, %2453
  %2503 = fmul fast float %2501, %2454
  %2504 = fadd fast float %2502, %2497
  %2505 = fadd fast float %2503, %2499
  %2506 = extractvalue %dx.types.CBufRet.f32 %2475, 2
  %2507 = fmul fast float %2506, %2461
  %2508 = fmul fast float %2506, %2462
  %2509 = fadd fast float %2504, %2507
  %2510 = fadd fast float %2505, %2508
  %2511 = fmul fast float %2498, %2498
  %2512 = fmul fast float %2510, %2510
  %2513 = fmul fast float %2500, %2500
  %2514 = fadd fast float %2513, %2511
  %2515 = fadd fast float %2514, %2512
  %2516 = call float @dx.op.unary.f32(i32 24, float %2515)  ; Sqrt(value)
  %2517 = fcmp fast ugt float %2516, 0.000000e+00
  br i1 %2517, label %2518, label %2533

; <label>:2518                                    ; preds = %2252
  %2519 = fsub fast float -0.000000e+00, %2500
  %2520 = fdiv fast float %2519, %2516
  %2521 = fsub fast float -0.000000e+00, %2498
  %2522 = fdiv fast float %2521, %2516
  %2523 = fdiv fast float %2510, %2516
  %2524 = fmul fast float %2509, 0x3FE279A760000000
  %2525 = fmul fast float %2522, %2498
  %2526 = fmul fast float %2523, %2510
  %2527 = fmul fast float %2520, %2500
  %2528 = fadd fast float %2525, %2527
  %2529 = fsub fast float %2528, %2526
  %2530 = call float @dx.op.unary.f32(i32 6, float %2529)  ; FAbs(value)
  %2531 = fadd fast float %2530, 0x3DDB7CDFE0000000
  %2532 = fdiv fast float %2524, %2531
  br label %2533

; <label>:2533                                    ; preds = %2518, %2252
  %2534 = phi float [ %2532, %2518 ], [ 1.000000e+00, %2252 ]
  %2535 = fmul fast float %2483, %2483
  %2536 = fmul fast float %2495, %2495
  %2537 = fmul fast float %2485, %2485
  %2538 = fadd fast float %2537, %2535
  %2539 = fadd fast float %2538, %2536
  %2540 = call float @dx.op.unary.f32(i32 24, float %2539)  ; Sqrt(value)
  %2541 = fcmp fast ugt float %2540, 0.000000e+00
  br i1 %2541, label %2542, label %2557

; <label>:2542                                    ; preds = %2533
  %2543 = fsub fast float -0.000000e+00, %2485
  %2544 = fdiv fast float %2543, %2540
  %2545 = fsub fast float -0.000000e+00, %2483
  %2546 = fdiv fast float %2545, %2540
  %2547 = fdiv fast float %2495, %2540
  %2548 = fmul fast float %2494, 0x3FE279A760000000
  %2549 = fmul fast float %2546, %2483
  %2550 = fmul fast float %2547, %2495
  %2551 = fmul fast float %2544, %2485
  %2552 = fadd fast float %2549, %2551
  %2553 = fsub fast float %2552, %2550
  %2554 = call float @dx.op.unary.f32(i32 6, float %2553)  ; FAbs(value)
  %2555 = fadd fast float %2554, 0x3DDB7CDFE0000000
  %2556 = fdiv fast float %2548, %2555
  br label %2557

; <label>:2557                                    ; preds = %2542, %2533
  %2558 = phi float [ %2556, %2542 ], [ 1.000000e+00, %2533 ]
  %2559 = call float @dx.op.binary.f32(i32 36, float %2558, float %2534)  ; FMin(a,b)
  %2560 = fmul fast float %2466, %2466
  %2561 = fmul fast float %2480, %2480
  %2562 = fmul fast float %2468, %2468
  %2563 = fadd fast float %2562, %2560
  %2564 = fadd fast float %2563, %2561
  %2565 = call float @dx.op.unary.f32(i32 24, float %2564)  ; Sqrt(value)
  %2566 = fcmp fast ugt float %2565, 0.000000e+00
  br i1 %2566, label %2567, label %2582

; <label>:2567                                    ; preds = %2557
  %2568 = fsub fast float -0.000000e+00, %2468
  %2569 = fdiv fast float %2568, %2565
  %2570 = fsub fast float -0.000000e+00, %2466
  %2571 = fdiv fast float %2570, %2565
  %2572 = fdiv fast float %2480, %2565
  %2573 = fmul fast float %2479, 0x3FE279A760000000
  %2574 = fmul fast float %2571, %2466
  %2575 = fmul fast float %2572, %2480
  %2576 = fmul fast float %2569, %2468
  %2577 = fadd fast float %2574, %2576
  %2578 = fsub fast float %2577, %2575
  %2579 = call float @dx.op.unary.f32(i32 6, float %2578)  ; FAbs(value)
  %2580 = fadd fast float %2579, 0x3DDB7CDFE0000000
  %2581 = fdiv fast float %2573, %2580
  br label %2582

; <label>:2582                                    ; preds = %2567, %2557
  %2583 = phi float [ %2581, %2567 ], [ 1.000000e+00, %2557 ]
  %2584 = call float @dx.op.binary.f32(i32 36, float %2583, float %2559)  ; FMin(a,b)
  %2585 = call float @dx.op.unary.f32(i32 7, float %2584)  ; Saturate(value)
  %2586 = fcmp fast olt float %2585, 1.000000e+00
  br i1 %2586, label %2587, label %2597

; <label>:2587                                    ; preds = %2582
  %2588 = fmul fast float %2585, %2466
  %2589 = fmul fast float %2585, %2480
  %2590 = fmul fast float %2585, %2468
  %2591 = fmul fast float %2585, %2483
  %2592 = fmul fast float %2585, %2495
  %2593 = fmul fast float %2585, %2485
  %2594 = fmul fast float %2585, %2498
  %2595 = fmul fast float %2585, %2510
  %2596 = fmul fast float %2585, %2500
  br label %2597

; <label>:2597                                    ; preds = %2587, %2582
  %2598 = phi float [ %2594, %2587 ], [ %2498, %2582 ]
  %2599 = phi float [ %2595, %2587 ], [ %2510, %2582 ]
  %2600 = phi float [ %2596, %2587 ], [ %2500, %2582 ]
  %2601 = phi float [ %2591, %2587 ], [ %2483, %2582 ]
  %2602 = phi float [ %2592, %2587 ], [ %2495, %2582 ]
  %2603 = phi float [ %2593, %2587 ], [ %2485, %2582 ]
  %2604 = phi float [ %2588, %2587 ], [ %2466, %2582 ]
  %2605 = phi float [ %2589, %2587 ], [ %2480, %2582 ]
  %2606 = phi float [ %2590, %2587 ], [ %2468, %2582 ]
  %2607 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2479)  ; FMax(a,b)
  %2608 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2494)  ; FMax(a,b)
  %2609 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2509)  ; FMax(a,b)
  %2610 = fcmp fast oge float %2267, 0.000000e+00
  %2611 = and i1 %2610, %2038
  %2612 = fcmp fast ole float %2267, 1.000000e+00
  %2613 = and i1 %2612, %2611
  %2614 = fcmp fast oge float %2268, 0.000000e+00
  %2615 = and i1 %2614, %2613
  %2616 = fcmp fast ole float %2268, 1.000000e+00
  %2617 = and i1 %2616, %2615
  br i1 %2617, label %2618, label %2763, !dx.controlflow.hints !78

; <label>:2618                                    ; preds = %2597
  %2619 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2620 = extractvalue %dx.types.CBufRet.f32 %2619, 2
  %2621 = extractvalue %dx.types.CBufRet.f32 %2619, 3
  %2622 = fmul fast float %2620, %2267
  %2623 = fmul fast float %2621, %2268
  %2624 = call float @dx.op.unary.f32(i32 27, float %2622)  ; Round_ni(value)
  %2625 = call float @dx.op.unary.f32(i32 27, float %2623)  ; Round_ni(value)
  %2626 = fptosi float %2624 to i32
  %2627 = fptosi float %2625 to i32
  %2628 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2626, i32 %2627, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2629 = extractvalue %dx.types.ResRet.i32 %2628, 0
  %2630 = and i32 %2629, 65535
  %2631 = lshr i32 %2629, 16
  %2632 = icmp eq i32 %2630, 65535
  br i1 %2632, label %2669, label %2633

; <label>:2633                                    ; preds = %2618
  %2634 = extractvalue %dx.types.CBufRet.f32 %2036, 1
  %2635 = extractvalue %dx.types.CBufRet.f32 %2619, 0
  %2636 = extractvalue %dx.types.CBufRet.f32 %2619, 1
  %2637 = fmul fast float %2635, %2267
  %2638 = fmul fast float %2636, %2268
  %2639 = fmul fast float %2637, 1.250000e-01
  %2640 = fmul fast float %2638, 1.250000e-01
  %2641 = call float @dx.op.unary.f32(i32 27, float %2639)  ; Round_ni(value)
  %2642 = call float @dx.op.unary.f32(i32 27, float %2640)  ; Round_ni(value)
  %2643 = fmul fast float %2641, 8.000000e+00
  %2644 = fmul fast float %2642, 8.000000e+00
  %2645 = and i32 %2629, 255
  %2646 = lshr i32 %2629, 8
  %2647 = and i32 %2646, 255
  %2648 = mul nuw nsw i32 %2645, 9
  %2649 = uitofp i32 %2648 to float
  %2650 = mul nuw nsw i32 %2647, 9
  %2651 = uitofp i32 %2650 to float
  %2652 = fadd fast float %2649, 5.000000e-01
  %2653 = fadd fast float %2652, %2637
  %2654 = fsub fast float %2653, %2643
  %2655 = fadd fast float %2651, 5.000000e-01
  %2656 = fadd fast float %2655, %2638
  %2657 = fsub fast float %2656, %2644
  %2658 = fdiv fast float %2654, %2037
  %2659 = fdiv fast float %2657, %2634
  %2660 = fmul fast float %2295, 4.375000e-01
  %2661 = fadd fast float %2660, 3.125000e-02
  %2662 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2658, float %2659, float %2661, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2663 = extractvalue %dx.types.ResRet.f32 %2662, 0
  %2664 = extractvalue %dx.types.ResRet.f32 %2662, 1
  %2665 = extractvalue %dx.types.ResRet.f32 %2662, 2
  %2666 = fadd fast float %2663, %2607
  %2667 = fadd fast float %2664, %2608
  %2668 = fadd fast float %2665, %2609
  br label %2669

; <label>:2669                                    ; preds = %2633, %2618
  %2670 = phi float [ %2668, %2633 ], [ %2609, %2618 ]
  %2671 = phi float [ %2667, %2633 ], [ %2608, %2618 ]
  %2672 = phi float [ %2666, %2633 ], [ %2607, %2618 ]
  %2673 = icmp eq i32 %2631, 65535
  br i1 %2673, label %2763, label %2674

; <label>:2674                                    ; preds = %2669
  %2675 = extractvalue %dx.types.CBufRet.f32 %2036, 1
  %2676 = extractvalue %dx.types.CBufRet.f32 %2619, 0
  %2677 = extractvalue %dx.types.CBufRet.f32 %2619, 1
  %2678 = fmul fast float %2676, %2267
  %2679 = fmul fast float %2677, %2268
  %2680 = fmul fast float %2678, 1.250000e-01
  %2681 = fmul fast float %2679, 1.250000e-01
  %2682 = call float @dx.op.unary.f32(i32 27, float %2680)  ; Round_ni(value)
  %2683 = call float @dx.op.unary.f32(i32 27, float %2681)  ; Round_ni(value)
  %2684 = fmul fast float %2682, 8.000000e+00
  %2685 = fmul fast float %2683, 8.000000e+00
  %2686 = fsub fast float %2678, %2684
  %2687 = fsub fast float %2679, %2685
  %2688 = fadd fast float %2686, 5.000000e-01
  %2689 = fadd fast float %2687, 5.000000e-01
  %2690 = and i32 %2631, 255
  %2691 = lshr i32 %2629, 24
  %2692 = mul nuw nsw i32 %2690, 9
  %2693 = uitofp i32 %2692 to float
  %2694 = mul nuw nsw i32 %2691, 9
  %2695 = uitofp i32 %2694 to float
  %2696 = fadd fast float %2688, %2693
  %2697 = fadd fast float %2689, %2695
  %2698 = fdiv fast float %2696, %2037
  %2699 = fdiv fast float %2697, %2675
  %2700 = fmul fast float %2295, 4.375000e-01
  %2701 = fadd fast float %2700, 3.125000e-02
  %2702 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2698, float %2699, float %2701, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2703 = extractvalue %dx.types.ResRet.f32 %2702, 0
  %2704 = extractvalue %dx.types.ResRet.f32 %2702, 1
  %2705 = extractvalue %dx.types.ResRet.f32 %2702, 2
  %2706 = fadd fast float %2700, 5.312500e-01
  %2707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2698, float %2699, float %2706, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2708 = extractvalue %dx.types.ResRet.f32 %2707, 0
  %2709 = extractvalue %dx.types.ResRet.f32 %2707, 1
  %2710 = extractvalue %dx.types.ResRet.f32 %2707, 2
  %2711 = fmul fast float %2708, 2.000000e+00
  %2712 = fmul fast float %2709, 2.000000e+00
  %2713 = fmul fast float %2710, 2.000000e+00
  %2714 = fadd fast float %2711, -1.000000e+00
  %2715 = fadd fast float %2712, -1.000000e+00
  %2716 = fadd fast float %2713, -1.000000e+00
  %2717 = fmul fast float %2714, %2714
  %2718 = fmul fast float %2715, %2715
  %2719 = fadd fast float %2717, %2718
  %2720 = fmul fast float %2716, %2716
  %2721 = fadd fast float %2719, %2720
  %2722 = call float @dx.op.unary.f32(i32 24, float %2721)  ; Sqrt(value)
  %2723 = fcmp fast ogt float %2722, 0.000000e+00
  br i1 %2723, label %2724, label %2728

; <label>:2724                                    ; preds = %2674
  %2725 = fdiv fast float %2714, %2722
  %2726 = fdiv fast float %2715, %2722
  %2727 = fdiv fast float %2716, %2722
  br label %2728

; <label>:2728                                    ; preds = %2724, %2674
  %2729 = phi float [ %2725, %2724 ], [ 0.000000e+00, %2674 ]
  %2730 = phi float [ %2726, %2724 ], [ 0.000000e+00, %2674 ]
  %2731 = phi float [ %2727, %2724 ], [ 0.000000e+00, %2674 ]
  %2732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.f32 %2732, 0
  %2734 = extractvalue %dx.types.CBufRet.f32 %2732, 1
  %2735 = fsub fast float %1888, %2733
  %2736 = fsub fast float %1889, %2734
  %2737 = fmul fast float %2735, %2735
  %2738 = fmul fast float %2736, %2736
  %2739 = fadd fast float %2737, %2738
  %2740 = call float @dx.op.unary.f32(i32 24, float %2739)  ; Sqrt(value)
  %2741 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2742 = extractvalue %dx.types.CBufRet.f32 %2741, 0
  %2743 = extractvalue %dx.types.CBufRet.f32 %2741, 1
  %2744 = fsub fast float %2740, %2742
  %2745 = fdiv fast float %2744, %2743
  %2746 = call float @dx.op.unary.f32(i32 7, float %2745)  ; Saturate(value)
  %2747 = fmul fast float %2746, 2.000000e+00
  %2748 = fsub fast float 3.000000e+00, %2747
  %2749 = fmul fast float %2746, %2746
  %2750 = fmul fast float %2749, %2748
  %2751 = call float @dx.op.dot3.f32(i32 55, float %2729, float %2730, float %2731, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2752 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2751)  ; FMax(a,b)
  %2753 = fmul fast float %2752, 0x400C5BF8A0000000
  %2754 = fmul fast float %2750, %2703
  %2755 = fmul fast float %2754, %2753
  %2756 = fadd fast float %2755, %2672
  %2757 = fmul fast float %2750, %2704
  %2758 = fmul fast float %2757, %2753
  %2759 = fadd fast float %2758, %2671
  %2760 = fmul fast float %2750, %2705
  %2761 = fmul fast float %2760, %2753
  %2762 = fadd fast float %2761, %2670
  br label %2763

; <label>:2763                                    ; preds = %2728, %2669, %2597
  %2764 = phi float [ %2762, %2728 ], [ %2670, %2669 ], [ %2609, %2597 ]
  %2765 = phi float [ %2759, %2728 ], [ %2671, %2669 ], [ %2608, %2597 ]
  %2766 = phi float [ %2756, %2728 ], [ %2672, %2669 ], [ %2607, %2597 ]
  %2767 = fcmp fast ogt float %2254, %2291
  %2768 = and i1 %2610, %2767
  %2769 = and i1 %2612, %2768
  %2770 = and i1 %2614, %2769
  %2771 = and i1 %2616, %2770
  br i1 %2771, label %2772, label %2829, !dx.controlflow.hints !79

; <label>:2772                                    ; preds = %2763
  %2773 = fmul fast float %2293, 0x3FC24924A0000000
  %2774 = fsub fast float %2254, %2291
  %2775 = fdiv fast float %2774, %2773
  %2776 = call float @dx.op.unary.f32(i32 7, float %2775)  ; Saturate(value)
  %2777 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2778 = extractvalue %dx.types.CBufRet.f32 %2777, 0
  %2779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2780 = extractvalue %dx.types.CBufRet.f32 %2779, 0
  %2781 = extractvalue %dx.types.CBufRet.f32 %2779, 1
  %2782 = extractvalue %dx.types.CBufRet.f32 %2779, 2
  %2783 = fsub fast float %2778, %2766
  %2784 = fsub fast float %2780, %2604
  %2785 = fsub fast float %2781, %2605
  %2786 = fsub fast float %2782, %2606
  %2787 = fmul fast float %2783, %2776
  %2788 = fmul fast float %2784, %2776
  %2789 = fmul fast float %2785, %2776
  %2790 = fmul fast float %2786, %2776
  %2791 = fadd fast float %2787, %2766
  %2792 = fadd fast float %2788, %2604
  %2793 = fadd fast float %2789, %2605
  %2794 = fadd fast float %2790, %2606
  %2795 = extractvalue %dx.types.CBufRet.f32 %2777, 1
  %2796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2797 = extractvalue %dx.types.CBufRet.f32 %2796, 0
  %2798 = extractvalue %dx.types.CBufRet.f32 %2796, 1
  %2799 = extractvalue %dx.types.CBufRet.f32 %2796, 2
  %2800 = fsub fast float %2795, %2765
  %2801 = fsub fast float %2797, %2601
  %2802 = fsub fast float %2798, %2602
  %2803 = fsub fast float %2799, %2603
  %2804 = fmul fast float %2800, %2776
  %2805 = fmul fast float %2801, %2776
  %2806 = fmul fast float %2802, %2776
  %2807 = fmul fast float %2803, %2776
  %2808 = fadd fast float %2804, %2765
  %2809 = fadd fast float %2805, %2601
  %2810 = fadd fast float %2806, %2602
  %2811 = fadd fast float %2807, %2603
  %2812 = extractvalue %dx.types.CBufRet.f32 %2777, 2
  %2813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2814 = extractvalue %dx.types.CBufRet.f32 %2813, 0
  %2815 = extractvalue %dx.types.CBufRet.f32 %2813, 1
  %2816 = extractvalue %dx.types.CBufRet.f32 %2813, 2
  %2817 = fsub fast float %2812, %2764
  %2818 = fsub fast float %2814, %2598
  %2819 = fsub fast float %2815, %2599
  %2820 = fsub fast float %2816, %2600
  %2821 = fmul fast float %2817, %2776
  %2822 = fmul fast float %2818, %2776
  %2823 = fmul fast float %2819, %2776
  %2824 = fmul fast float %2820, %2776
  %2825 = fadd fast float %2821, %2764
  %2826 = fadd fast float %2822, %2598
  %2827 = fadd fast float %2823, %2599
  %2828 = fadd fast float %2824, %2600
  br label %2829

; <label>:2829                                    ; preds = %2772, %2763
  %2830 = phi float [ %2825, %2772 ], [ %2764, %2763 ]
  %2831 = phi float [ %2826, %2772 ], [ %2598, %2763 ]
  %2832 = phi float [ %2827, %2772 ], [ %2599, %2763 ]
  %2833 = phi float [ %2828, %2772 ], [ %2600, %2763 ]
  %2834 = phi float [ %2808, %2772 ], [ %2765, %2763 ]
  %2835 = phi float [ %2809, %2772 ], [ %2601, %2763 ]
  %2836 = phi float [ %2810, %2772 ], [ %2602, %2763 ]
  %2837 = phi float [ %2811, %2772 ], [ %2603, %2763 ]
  %2838 = phi float [ %2791, %2772 ], [ %2766, %2763 ]
  %2839 = phi float [ %2792, %2772 ], [ %2604, %2763 ]
  %2840 = phi float [ %2793, %2772 ], [ %2605, %2763 ]
  %2841 = phi float [ %2794, %2772 ], [ %2606, %2763 ]
  %2842 = extractvalue %dx.types.CBufRet.f32 %2416, 3
  %2843 = fmul fast float %2842, %2838
  %2844 = fmul fast float %2842, %2834
  %2845 = fmul fast float %2842, %2830
  %2846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2847 = extractvalue %dx.types.CBufRet.f32 %2846, 3
  %2848 = fmul fast float %2843, %2847
  %2849 = fmul fast float %2844, %2847
  %2850 = fmul fast float %2845, %2847
  %2851 = fmul fast float %2839, 1.500000e+00
  %2852 = fmul fast float %2851, %2842
  %2853 = fmul fast float %2852, %2847
  %2854 = fmul fast float %2840, 1.500000e+00
  %2855 = fmul fast float %2854, %2842
  %2856 = fmul fast float %2855, %2847
  %2857 = fmul fast float %2841, 1.500000e+00
  %2858 = fmul fast float %2857, %2842
  %2859 = fmul fast float %2858, %2847
  %2860 = fmul fast float %2835, 1.500000e+00
  %2861 = fmul fast float %2860, %2842
  %2862 = fmul fast float %2861, %2847
  %2863 = fmul fast float %2836, 1.500000e+00
  %2864 = fmul fast float %2863, %2842
  %2865 = fmul fast float %2864, %2847
  %2866 = fmul fast float %2837, 1.500000e+00
  %2867 = fmul fast float %2866, %2842
  %2868 = fmul fast float %2867, %2847
  %2869 = fmul fast float %2831, 1.500000e+00
  %2870 = fmul fast float %2869, %2842
  %2871 = fmul fast float %2870, %2847
  %2872 = fmul fast float %2832, 1.500000e+00
  %2873 = fmul fast float %2872, %2842
  %2874 = fmul fast float %2873, %2847
  %2875 = fmul fast float %2833, 1.500000e+00
  %2876 = fmul fast float %2875, %2842
  %2877 = fmul fast float %2876, %2847
  %2878 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2848)  ; FMax(a,b)
  %2879 = call float @dx.op.dot3.f32(i32 55, float %2853, float %2856, float %2859, float %2853, float %2856, float %2859)  ; Dot3(ax,ay,az,bx,by,bz)
  %2880 = fcmp fast oeq float %2879, 0.000000e+00
  %2881 = fcmp fast oeq float %2878, 0.000000e+00
  %2882 = or i1 %2881, %2880
  br i1 %2882, label %2912, label %2883

; <label>:2883                                    ; preds = %2829
  %2884 = fsub fast float -0.000000e+00, %2859
  %2885 = fsub fast float -0.000000e+00, %2853
  %2886 = call float @dx.op.unary.f32(i32 24, float %2879)  ; Sqrt(value)
  %2887 = fdiv fast float %2886, %2878
  %2888 = fcmp fast ogt float %2887, 0x3FFB6F8900000000
  %2889 = select i1 %2888, float 0x3FFB6F8900000000, float %2887
  %2890 = fmul fast float %2889, 0x3FE8A23460000000
  %2891 = call float @dx.op.unary.f32(i32 7, float %2890)  ; Saturate(value)
  %2892 = call float @dx.op.binary.f32(i32 35, float %2889, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2893 = fmul fast float %2891, %2878
  %2894 = fmul fast float %2892, 0x3FF279A740000000
  %2895 = fadd fast float %2894, -1.000000e+00
  %2896 = call float @dx.op.dot3.f32(i32 55, float %2884, float %2885, float %2856, float %2884, float %2885, float %2856)  ; Dot3(ax,ay,az,bx,by,bz)
  %2897 = call float @dx.op.unary.f32(i32 25, float %2896)  ; Rsqrt(value)
  %2898 = fmul fast float %2897, %2884
  %2899 = fmul fast float %2897, %2885
  %2900 = fmul fast float %2897, %2856
  %2901 = fmul fast float %2895, %2895
  %2902 = fsub fast float 1.000000e+00, %2901
  %2903 = fmul fast float %2892, 0x40005F8BE0000000
  %2904 = fsub fast float 0x400C5BF8A0000000, %2903
  %2905 = fdiv fast float %2893, %2904
  %2906 = fmul fast float %2905, 0x3FEE31C3C0000000
  %2907 = fmul fast float %2906, %2902
  %2908 = fmul fast float %2892, 0x3FDACB7480000000
  %2909 = fadd fast float %2908, 0xBFD7347680000000
  %2910 = fmul fast float %2909, %2905
  %2911 = fmul fast float %2910, %2902
  br label %2912

; <label>:2912                                    ; preds = %2883, %2829
  %2913 = phi float [ %2898, %2883 ], [ 0.000000e+00, %2829 ]
  %2914 = phi float [ %2899, %2883 ], [ 0.000000e+00, %2829 ]
  %2915 = phi float [ %2900, %2883 ], [ 0.000000e+00, %2829 ]
  %2916 = phi float [ %2907, %2883 ], [ 0.000000e+00, %2829 ]
  %2917 = phi float [ %2911, %2883 ], [ 0.000000e+00, %2829 ]
  %2918 = call float @dx.op.dot3.f32(i32 55, float %2913, float %2914, float %2915, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2919 = fmul fast float %2918, %2918
  %2920 = fmul fast float %2919, 0x3FEE471020000000
  %2921 = fadd fast float %2920, 0xBFD42F6020000000
  %2922 = fmul fast float %2878, 0x3FD20DD760000000
  %2923 = fmul fast float %2921, %2917
  %2924 = fmul fast float %2916, 0x3FDF454380000000
  %2925 = fmul fast float %2924, %2918
  %2926 = fadd fast float %2925, %2922
  %2927 = fadd fast float %2926, %2923
  %2928 = call float @dx.op.dot3.f32(i32 55, float %2913, float %2914, float %2915, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %2929 = fmul fast float %2928, 0x3FDF454380000000
  %2930 = fmul fast float %2928, %2928
  %2931 = fmul fast float %2930, 0x3FEE471020000000
  %2932 = fadd fast float %2931, 0xBFD42F6020000000
  %2933 = call float @dx.op.dot3.f32(i32 55, float %2878, float %2916, float %2917, float 0x3FD20DD760000000, float %2929, float %2932)  ; Dot3(ax,ay,az,bx,by,bz)
  %2934 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2849)  ; FMax(a,b)
  %2935 = call float @dx.op.dot3.f32(i32 55, float %2862, float %2865, float %2868, float %2862, float %2865, float %2868)  ; Dot3(ax,ay,az,bx,by,bz)
  %2936 = fcmp fast oeq float %2935, 0.000000e+00
  %2937 = fcmp fast oeq float %2934, 0.000000e+00
  %2938 = or i1 %2937, %2936
  br i1 %2938, label %2968, label %2939

; <label>:2939                                    ; preds = %2912
  %2940 = fsub fast float -0.000000e+00, %2868
  %2941 = fsub fast float -0.000000e+00, %2862
  %2942 = call float @dx.op.unary.f32(i32 24, float %2935)  ; Sqrt(value)
  %2943 = fdiv fast float %2942, %2934
  %2944 = fcmp fast ogt float %2943, 0x3FFB6F8900000000
  %2945 = select i1 %2944, float 0x3FFB6F8900000000, float %2943
  %2946 = fmul fast float %2945, 0x3FE8A23460000000
  %2947 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  %2948 = call float @dx.op.binary.f32(i32 35, float %2945, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2949 = fmul fast float %2947, %2934
  %2950 = fmul fast float %2948, 0x3FF279A740000000
  %2951 = fadd fast float %2950, -1.000000e+00
  %2952 = call float @dx.op.dot3.f32(i32 55, float %2940, float %2941, float %2865, float %2940, float %2941, float %2865)  ; Dot3(ax,ay,az,bx,by,bz)
  %2953 = call float @dx.op.unary.f32(i32 25, float %2952)  ; Rsqrt(value)
  %2954 = fmul fast float %2953, %2940
  %2955 = fmul fast float %2953, %2941
  %2956 = fmul fast float %2953, %2865
  %2957 = fmul fast float %2951, %2951
  %2958 = fsub fast float 1.000000e+00, %2957
  %2959 = fmul fast float %2948, 0x40005F8BE0000000
  %2960 = fsub fast float 0x400C5BF8A0000000, %2959
  %2961 = fdiv fast float %2949, %2960
  %2962 = fmul fast float %2961, 0x3FEE31C3C0000000
  %2963 = fmul fast float %2962, %2958
  %2964 = fmul fast float %2948, 0x3FDACB7480000000
  %2965 = fadd fast float %2964, 0xBFD7347680000000
  %2966 = fmul fast float %2965, %2961
  %2967 = fmul fast float %2966, %2958
  br label %2968

; <label>:2968                                    ; preds = %2939, %2912
  %2969 = phi float [ %2954, %2939 ], [ 0.000000e+00, %2912 ]
  %2970 = phi float [ %2955, %2939 ], [ 0.000000e+00, %2912 ]
  %2971 = phi float [ %2956, %2939 ], [ 0.000000e+00, %2912 ]
  %2972 = phi float [ %2963, %2939 ], [ 0.000000e+00, %2912 ]
  %2973 = phi float [ %2967, %2939 ], [ 0.000000e+00, %2912 ]
  %2974 = call float @dx.op.dot3.f32(i32 55, float %2969, float %2970, float %2971, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %2975 = fmul fast float %2974, %2974
  %2976 = fmul fast float %2975, 0x3FEE471020000000
  %2977 = fadd fast float %2976, 0xBFD42F6020000000
  %2978 = fmul fast float %2934, 0x3FD20DD760000000
  %2979 = fmul fast float %2977, %2973
  %2980 = fmul fast float %2972, 0x3FDF454380000000
  %2981 = fmul fast float %2980, %2974
  %2982 = fadd fast float %2981, %2978
  %2983 = fadd fast float %2982, %2979
  %2984 = call float @dx.op.dot3.f32(i32 55, float %2969, float %2970, float %2971, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %2985 = fmul fast float %2984, 0x3FDF454380000000
  %2986 = fmul fast float %2984, %2984
  %2987 = fmul fast float %2986, 0x3FEE471020000000
  %2988 = fadd fast float %2987, 0xBFD42F6020000000
  %2989 = call float @dx.op.dot3.f32(i32 55, float %2934, float %2972, float %2973, float 0x3FD20DD760000000, float %2985, float %2988)  ; Dot3(ax,ay,az,bx,by,bz)
  %2990 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2850)  ; FMax(a,b)
  %2991 = call float @dx.op.dot3.f32(i32 55, float %2871, float %2874, float %2877, float %2871, float %2874, float %2877)  ; Dot3(ax,ay,az,bx,by,bz)
  %2992 = fcmp fast oeq float %2991, 0.000000e+00
  %2993 = fcmp fast oeq float %2990, 0.000000e+00
  %2994 = or i1 %2993, %2992
  br i1 %2994, label %3024, label %2995

; <label>:2995                                    ; preds = %2968
  %2996 = fsub fast float -0.000000e+00, %2877
  %2997 = fsub fast float -0.000000e+00, %2871
  %2998 = call float @dx.op.unary.f32(i32 24, float %2991)  ; Sqrt(value)
  %2999 = fdiv fast float %2998, %2990
  %3000 = fcmp fast ogt float %2999, 0x3FFB6F8900000000
  %3001 = select i1 %3000, float 0x3FFB6F8900000000, float %2999
  %3002 = fmul fast float %3001, 0x3FE8A23460000000
  %3003 = call float @dx.op.unary.f32(i32 7, float %3002)  ; Saturate(value)
  %3004 = call float @dx.op.binary.f32(i32 35, float %3001, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3005 = fmul fast float %3003, %2990
  %3006 = fmul fast float %3004, 0x3FF279A740000000
  %3007 = fadd fast float %3006, -1.000000e+00
  %3008 = call float @dx.op.dot3.f32(i32 55, float %2996, float %2997, float %2874, float %2996, float %2997, float %2874)  ; Dot3(ax,ay,az,bx,by,bz)
  %3009 = call float @dx.op.unary.f32(i32 25, float %3008)  ; Rsqrt(value)
  %3010 = fmul fast float %3009, %2996
  %3011 = fmul fast float %3009, %2997
  %3012 = fmul fast float %3009, %2874
  %3013 = fmul fast float %3007, %3007
  %3014 = fsub fast float 1.000000e+00, %3013
  %3015 = fmul fast float %3004, 0x40005F8BE0000000
  %3016 = fsub fast float 0x400C5BF8A0000000, %3015
  %3017 = fdiv fast float %3005, %3016
  %3018 = fmul fast float %3017, 0x3FEE31C3C0000000
  %3019 = fmul fast float %3018, %3014
  %3020 = fmul fast float %3004, 0x3FDACB7480000000
  %3021 = fadd fast float %3020, 0xBFD7347680000000
  %3022 = fmul fast float %3021, %3017
  %3023 = fmul fast float %3022, %3014
  br label %3024

; <label>:3024                                    ; preds = %2995, %2968
  %3025 = phi float [ %3010, %2995 ], [ 0.000000e+00, %2968 ]
  %3026 = phi float [ %3011, %2995 ], [ 0.000000e+00, %2968 ]
  %3027 = phi float [ %3012, %2995 ], [ 0.000000e+00, %2968 ]
  %3028 = phi float [ %3019, %2995 ], [ 0.000000e+00, %2968 ]
  %3029 = phi float [ %3023, %2995 ], [ 0.000000e+00, %2968 ]
  %3030 = call float @dx.op.dot3.f32(i32 55, float %3025, float %3026, float %3027, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %3031 = fmul fast float %3030, %3030
  %3032 = fmul fast float %3031, 0x3FEE471020000000
  %3033 = fadd fast float %3032, 0xBFD42F6020000000
  %3034 = fmul fast float %2990, 0x3FD20DD760000000
  %3035 = fmul fast float %3033, %3029
  %3036 = fmul fast float %3028, 0x3FDF454380000000
  %3037 = fmul fast float %3036, %3030
  %3038 = fadd fast float %3037, %3034
  %3039 = fadd fast float %3038, %3035
  %3040 = call float @dx.op.dot3.f32(i32 55, float %3025, float %3026, float %3027, float %1878, float %1879, float %1880)  ; Dot3(ax,ay,az,bx,by,bz)
  %3041 = fmul fast float %3040, 0x3FDF454380000000
  %3042 = fmul fast float %3040, %3040
  %3043 = fmul fast float %3042, 0x3FEE471020000000
  %3044 = fadd fast float %3043, 0xBFD42F6020000000
  %3045 = call float @dx.op.dot3.f32(i32 55, float %2990, float %3028, float %3029, float 0x3FD20DD760000000, float %3041, float %3044)  ; Dot3(ax,ay,az,bx,by,bz)
  %3046 = call float @dx.op.binary.f32(i32 35, float %2927, float 0.000000e+00)  ; FMax(a,b)
  %3047 = call float @dx.op.binary.f32(i32 35, float %2983, float 0.000000e+00)  ; FMax(a,b)
  %3048 = call float @dx.op.binary.f32(i32 35, float %3039, float 0.000000e+00)  ; FMax(a,b)
  %3049 = call float @dx.op.binary.f32(i32 35, float %2933, float 0.000000e+00)  ; FMax(a,b)
  %3050 = call float @dx.op.binary.f32(i32 35, float %2989, float 0.000000e+00)  ; FMax(a,b)
  %3051 = call float @dx.op.binary.f32(i32 35, float %3045, float 0.000000e+00)  ; FMax(a,b)
  %3052 = fsub fast float %2248, %3046
  %3053 = fsub fast float %2249, %3047
  %3054 = fsub fast float %2250, %3048
  %3055 = fmul fast float %3052, %1929
  %3056 = fmul fast float %3053, %1929
  %3057 = fmul fast float %3054, %1929
  %3058 = fadd fast float %3055, %3046
  %3059 = fadd fast float %3056, %3047
  %3060 = fadd fast float %3057, %3048
  %3061 = fsub fast float %2245, %3049
  %3062 = fsub fast float %2246, %3050
  %3063 = fsub fast float %2247, %3051
  %3064 = fmul fast float %3061, %1929
  %3065 = fmul fast float %3062, %1929
  %3066 = fmul fast float %3063, %1929
  %3067 = fadd fast float %3064, %3049
  %3068 = fadd fast float %3065, %3050
  %3069 = fadd fast float %3066, %3051
  br label %3070

; <label>:3070                                    ; preds = %3024, %2244
  %3071 = phi float [ %3067, %3024 ], [ %2245, %2244 ]
  %3072 = phi float [ %3068, %3024 ], [ %2246, %2244 ]
  %3073 = phi float [ %3069, %3024 ], [ %2247, %2244 ]
  %3074 = phi float [ %3058, %3024 ], [ %2248, %2244 ]
  %3075 = phi float [ %3059, %3024 ], [ %2249, %2244 ]
  %3076 = phi float [ %3060, %3024 ], [ %2250, %2244 ]
  %3077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3078 = extractvalue %dx.types.CBufRet.f32 %3077, 0
  %3079 = call float @dx.op.binary.f32(i32 36, float %1862, float %3078)  ; FMin(a,b)
  %3080 = fsub fast float 1.000000e+00, %1881
  %3081 = fmul fast float %3079, %3080
  %3082 = fsub fast float 1.000000e+00, %3081
  %3083 = bitcast float %3082 to i32
  %3084 = sub nsw i32 2129859010, %3083
  %3085 = bitcast i32 %3084 to float
  %3086 = call float @dx.op.binary.f32(i32 36, float %1863, float %3078)  ; FMin(a,b)
  %3087 = fmul fast float %3086, %3080
  %3088 = fsub fast float 1.000000e+00, %3087
  %3089 = bitcast float %3088 to i32
  %3090 = sub nsw i32 2129859010, %3089
  %3091 = bitcast i32 %3090 to float
  %3092 = call float @dx.op.binary.f32(i32 36, float %1864, float %3078)  ; FMin(a,b)
  %3093 = fmul fast float %3092, %3080
  %3094 = fsub fast float 1.000000e+00, %3093
  %3095 = bitcast float %3094 to i32
  %3096 = sub nsw i32 2129859010, %3095
  %3097 = bitcast i32 %3096 to float
  %3098 = fmul fast float %3074, %1881
  %3099 = fmul fast float %3098, %3085
  %3100 = fmul fast float %3075, %1881
  %3101 = fmul fast float %3100, %3091
  %3102 = fmul fast float %3076, %1881
  %3103 = fmul fast float %3102, %3097
  %3104 = call float @dx.op.binary.f32(i32 36, float %1859, float %3078)  ; FMin(a,b)
  %3105 = fmul fast float %3104, %3080
  %3106 = fsub fast float 1.000000e+00, %3105
  %3107 = bitcast float %3106 to i32
  %3108 = sub nsw i32 2129859010, %3107
  %3109 = bitcast i32 %3108 to float
  %3110 = call float @dx.op.binary.f32(i32 36, float %1860, float %3078)  ; FMin(a,b)
  %3111 = fmul fast float %3110, %3080
  %3112 = fsub fast float 1.000000e+00, %3111
  %3113 = bitcast float %3112 to i32
  %3114 = sub nsw i32 2129859010, %3113
  %3115 = bitcast i32 %3114 to float
  %3116 = call float @dx.op.binary.f32(i32 36, float %1870, float %3078)  ; FMin(a,b)
  %3117 = fmul fast float %3116, %3080
  %3118 = fsub fast float 1.000000e+00, %3117
  %3119 = bitcast float %3118 to i32
  %3120 = sub nsw i32 2129859010, %3119
  %3121 = bitcast i32 %3120 to float
  %3122 = fmul fast float %3071, %1881
  %3123 = fmul fast float %3122, %3109
  %3124 = fmul fast float %3072, %1881
  %3125 = fmul fast float %3124, %3115
  %3126 = fmul fast float %3073, %1881
  %3127 = fmul fast float %3126, %3121
  %3128 = call float @dx.op.dot3.f32(i32 55, float %3099, float %3101, float %3103, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3129 = select i1 %176, float 0.000000e+00, float %3099
  %3130 = select i1 %176, float %3128, float %3101
  %3131 = select i1 %176, float 0.000000e+00, float %3103
  %3132 = call float @dx.op.dot3.f32(i32 55, float %3123, float %3125, float %3127, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3133 = select i1 %176, float 0.000000e+00, float %3123
  %3134 = select i1 %176, float %3132, float %3125
  %3135 = select i1 %176, float 0.000000e+00, float %3127
  %3136 = fmul fast float %1872, 9.843750e-01
  %3137 = fmul fast float %1868, 9.843750e-01
  %3138 = fadd fast float %3136, 7.812500e-03
  %3139 = fadd fast float %3137, 7.812500e-03
  %3140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3138, float %3139, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3141 = extractvalue %dx.types.ResRet.f32 %3140, 2
  %3142 = extractvalue %dx.types.ResRet.f32 %3140, 3
  %3143 = fmul fast float %3141, %1859
  %3144 = fmul fast float %3141, %1860
  %3145 = fmul fast float %3141, %1870
  %3146 = fadd fast float %3143, %3142
  %3147 = fadd fast float %3144, %3142
  %3148 = fadd fast float %3145, %3142
  %3149 = fcmp fast ogt float %1236, 0.000000e+00
  br i1 %3149, label %3150, label %3176

; <label>:3150                                    ; preds = %3070
  %3151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1236, float %1872, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3152 = extractvalue %dx.types.ResRet.f32 %3151, 0
  %3153 = extractvalue %dx.types.ResRet.f32 %3151, 1
  %3154 = extractvalue %dx.types.ResRet.f32 %3151, 2
  %3155 = fadd fast float %3152, -5.000000e-01
  %3156 = fadd fast float %3153, -5.000000e-01
  %3157 = fadd fast float %3154, -5.000000e-01
  %3158 = fsub fast float 1.000000e+00, %1859
  %3159 = fsub fast float 1.000000e+00, %1860
  %3160 = fsub fast float 1.000000e+00, %1870
  %3161 = fmul fast float %1859, 4.000000e+00
  %3162 = fmul fast float %3161, %3158
  %3163 = fmul fast float %3162, %3155
  %3164 = fmul fast float %1860, 4.000000e+00
  %3165 = fmul fast float %3164, %3159
  %3166 = fmul fast float %3165, %3156
  %3167 = fmul fast float %1870, 4.000000e+00
  %3168 = fmul fast float %3167, %3160
  %3169 = fmul fast float %3168, %3157
  %3170 = fadd fast float %3163, %3146
  %3171 = fadd fast float %3166, %3147
  %3172 = fadd fast float %3169, %3148
  %3173 = call float @dx.op.unary.f32(i32 7, float %3170)  ; Saturate(value)
  %3174 = call float @dx.op.unary.f32(i32 7, float %3171)  ; Saturate(value)
  %3175 = call float @dx.op.unary.f32(i32 7, float %3172)  ; Saturate(value)
  br label %3176

; <label>:3176                                    ; preds = %3150, %3070
  %3177 = phi float [ %3173, %3150 ], [ %3146, %3070 ]
  %3178 = phi float [ %3174, %3150 ], [ %3147, %3070 ]
  %3179 = phi float [ %3175, %3150 ], [ %3148, %3070 ]
  %3180 = call float @dx.op.binary.f32(i32 35, float %3178, float %3179)  ; FMax(a,b)
  %3181 = call float @dx.op.binary.f32(i32 35, float %3177, float %3180)  ; FMax(a,b)
  %3182 = fsub fast float 1.000000e+00, %3181
  %3183 = fmul fast float %3182, %3129
  %3184 = fmul fast float %3182, %3130
  %3185 = fmul fast float %3182, %3131
  %3186 = call float @dx.op.dot3.f32(i32 55, float %1862, float %1863, float %1864, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3187 = fcmp fast ogt float %3186, 0x3E7FF19E20000000
  %3188 = fdiv fast float 1.000000e+00, %3186
  %3189 = select i1 %3187, float %3188, float 0.000000e+00
  %3190 = fmul fast float %3189, %1862
  %3191 = fmul fast float %3189, %1863
  %3192 = fmul fast float %3189, %1864
  %3193 = fadd fast float %3190, -1.000000e+00
  %3194 = fadd fast float %3191, -1.000000e+00
  %3195 = fadd fast float %3192, -1.000000e+00
  %3196 = fmul fast float %3193, 5.000000e-01
  %3197 = fmul fast float %3194, 5.000000e-01
  %3198 = fmul fast float %3195, 5.000000e-01
  %3199 = fadd fast float %3196, 1.000000e+00
  %3200 = fadd fast float %3197, 1.000000e+00
  %3201 = fadd fast float %3198, 1.000000e+00
  %3202 = fmul fast float %3177, %3133
  %3203 = fmul fast float %3178, %3134
  %3204 = fmul fast float %3179, %3135
  %3205 = fsub fast float 1.000000e+00, %1872
  %3206 = bitcast float %3205 to i32
  %3207 = sitofp i32 %3206 to float
  %3208 = fmul fast float %3207, 5.000000e+00
  %3209 = fadd fast float %3208, 0xC1EFBF8940000000
  %3210 = fptosi float %3209 to i32
  %3211 = bitcast i32 %3210 to float
  %3212 = fmul fast float %3211, %1235
  %3213 = fmul fast float %3129, %3212
  %3214 = fmul fast float %3213, %3182
  %3215 = fmul fast float %3214, %3199
  %3216 = fmul fast float %3130, %3212
  %3217 = fmul fast float %3216, %3182
  %3218 = fmul fast float %3217, %3200
  %3219 = fmul fast float %3131, %3212
  %3220 = fmul fast float %3219, %3182
  %3221 = fmul fast float %3220, %3201
  %3222 = fmul fast float %3183, %1256
  %3223 = fmul fast float %3184, %1256
  %3224 = fmul fast float %3185, %1256
  %3225 = fadd fast float %3202, %1237
  %3226 = fadd fast float %3225, %3215
  %3227 = fmul fast float %3226, %1256
  %3228 = fadd fast float %3203, %1238
  %3229 = fadd fast float %3228, %3218
  %3230 = fmul fast float %3229, %1256
  %3231 = fadd fast float %3204, %1239
  %3232 = fadd fast float %3231, %3221
  %3233 = fmul fast float %3232, %1256
  %3234 = bitcast i32 %1884 to float
  %3235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3236 = extractvalue %dx.types.CBufRet.f32 %3235, 3
  %3237 = fcmp fast oeq float %3236, 0.000000e+00
  br i1 %3237, label %3465, label %3238

; <label>:3238                                    ; preds = %3176
  %3239 = extractvalue %dx.types.CBufRet.f32 %3235, 0
  %3240 = extractvalue %dx.types.CBufRet.f32 %3235, 1
  %3241 = extractvalue %dx.types.CBufRet.f32 %3235, 2
  %3242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3243 = extractvalue %dx.types.CBufRet.f32 %3242, 0
  %3244 = extractvalue %dx.types.CBufRet.f32 %3242, 1
  %3245 = extractvalue %dx.types.CBufRet.f32 %3242, 2
  %3246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3247 = extractvalue %dx.types.CBufRet.f32 %3246, 0
  %3248 = extractvalue %dx.types.CBufRet.f32 %3246, 1
  %3249 = call float @dx.op.dot3.f32(i32 55, float %3243, float %3244, float %3245, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3250 = select i1 %176, float %3247, float %3243
  %3251 = select i1 %176, float %3249, float %3244
  %3252 = select i1 %176, float %3248, float %3245
  %3253 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3254 = extractvalue %dx.types.CBufRet.f32 %3253, 1
  %3255 = fcmp fast une float %3254, 0.000000e+00
  br i1 %3255, label %3256, label %3273

; <label>:3256                                    ; preds = %3238
  %3257 = fptoui float %58 to i32
  %3258 = fptoui float %59 to i32
  %3259 = lshr i32 %3257, 4
  %3260 = lshr i32 %3258, 4
  %3261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3262 = extractvalue %dx.types.CBufRet.f32 %3261, 0
  %3263 = fptoui float %3262 to i32
  %3264 = add i32 %3263, 15
  %3265 = lshr i32 %3264, 4
  %3266 = mul i32 %3265, %3260
  %3267 = add i32 %3266, %3259
  %3268 = shl i32 %3267, 3
  %3269 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3268, i32 undef)  ; BufferLoad(srv,index,wot)
  %3270 = extractvalue %dx.types.ResRet.i32 %3269, 0
  %3271 = and i32 %3270, -268435456
  %3272 = icmp eq i32 %3271, -1342177280
  br i1 %3272, label %3283, label %3273

; <label>:3273                                    ; preds = %3256, %3238
  %3274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3275 = extractvalue %dx.types.CBufRet.f32 %3274, 2
  %3276 = extractvalue %dx.types.CBufRet.f32 %3274, 3
  %3277 = fmul fast float %3275, %58
  %3278 = fmul fast float %3276, %59
  %3279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3277, float %3278, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3280 = extractvalue %dx.types.ResRet.f32 %3279, 0
  %3281 = extractvalue %dx.types.ResRet.f32 %3279, 1
  %3282 = extractvalue %dx.types.ResRet.f32 %3279, 2
  br label %3283

; <label>:3283                                    ; preds = %3273, %3256
  %3284 = phi float [ %3280, %3273 ], [ 0.000000e+00, %3256 ]
  %3285 = phi float [ %3281, %3273 ], [ 0.000000e+00, %3256 ]
  %3286 = phi float [ %3282, %3273 ], [ 0.000000e+00, %3256 ]
  %3287 = call float @dx.op.binary.f32(i32 36, float %3285, float %3286)  ; FMin(a,b)
  %3288 = call float @dx.op.binary.f32(i32 36, float %3284, float %3287)  ; FMin(a,b)
  %3289 = fcmp fast ogt float %3288, 0.000000e+00
  br i1 %3289, label %3290, label %3465, !dx.controlflow.hints !80

; <label>:3290                                    ; preds = %3283
  %3291 = fmul fast float %3284, %3250
  %3292 = fmul fast float %3285, %3251
  %3293 = fmul fast float %3286, %3252
  %3294 = fsub fast float %3239, %1858
  %3295 = fsub fast float %3240, %1857
  %3296 = fsub fast float %3241, %1856
  %3297 = call float @dx.op.dot3.f32(i32 55, float %3294, float %3295, float %3296, float %3294, float %3295, float %3296)  ; Dot3(ax,ay,az,bx,by,bz)
  %3298 = call float @dx.op.unary.f32(i32 25, float %3297)  ; Rsqrt(value)
  %3299 = fmul fast float %3298, %3294
  %3300 = fmul fast float %3298, %3295
  %3301 = fmul fast float %3298, %3296
  %3302 = call float @dx.op.dot3.f32(i32 55, float %3239, float %3240, float %3241, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %3303 = call float @dx.op.dot3.f32(i32 55, float %1855, float %1854, float %1853, float %3299, float %3300, float %3301)  ; Dot3(ax,ay,az,bx,by,bz)
  %3304 = call float @dx.op.unary.f32(i32 7, float %3302)  ; Saturate(value)
  %3305 = fmul fast float %3304, %3304
  %3306 = fmul fast float %3305, %3234
  %3307 = call float @dx.op.unary.f32(i32 7, float %3306)  ; Saturate(value)
  %3308 = fmul fast float %3307, %3304
  %3309 = call float @dx.op.dot3.f32(i32 55, float %1865, float %1866, float %1867, float %3299, float %3300, float %3301)  ; Dot3(ax,ay,az,bx,by,bz)
  %3310 = fmul fast float %3309, %3309
  %3311 = call float @dx.op.unary.f32(i32 6, float %3302)  ; FAbs(value)
  %3312 = fsub fast float 1.000000e+00, %1868
  %3313 = call float @dx.op.binary.f32(i32 35, float %3312, float 0x3F847AE140000000)  ; FMax(a,b)
  %3314 = fmul fast float %3313, %3313
  %3315 = fmul fast float %3314, %3314
  %3316 = fsub fast float 1.000000e+00, %3315
  %3317 = fmul fast float %1872, %1872
  %3318 = fmul fast float %3317, %3316
  %3319 = fadd fast float %3318, %3315
  %3320 = bitcast float %3319 to i32
  %3321 = ashr i32 %3320, 1
  %3322 = add nsw i32 %3321, 532487669
  %3323 = bitcast i32 %3322 to float
  %3324 = fadd fast float %3323, %1872
  %3325 = fmul fast float %3315, %3310
  %3326 = fsub fast float 1.000000e+00, %3310
  %3327 = fadd fast float %3326, %3325
  %3328 = fmul fast float %3311, %3311
  %3329 = fmul fast float %3328, %3316
  %3330 = fadd fast float %3329, %3315
  %3331 = bitcast float %3330 to i32
  %3332 = ashr i32 %3331, 1
  %3333 = add nsw i32 %3332, 532487669
  %3334 = bitcast i32 %3333 to float
  %3335 = fadd fast float %3334, %3311
  %3336 = fmul fast float %3327, %3327
  %3337 = fmul fast float %3336, %3324
  %3338 = fmul fast float %3337, %3335
  %3339 = fdiv fast float 0x3FF0A00000000000, %3338
  %3340 = fmul fast float %3339, %3315
  %3341 = call float @dx.op.unary.f32(i32 6, float %3303)  ; FAbs(value)
  %3342 = fsub fast float 1.000000e+00, %3341
  %3343 = bitcast float %3342 to i32
  %3344 = sitofp i32 %3343 to float
  %3345 = fmul fast float %3344, 5.000000e+00
  %3346 = fadd fast float %3345, 0xC1EFBF8940000000
  %3347 = fptosi float %3346 to i32
  %3348 = bitcast i32 %3347 to float
  %3349 = fsub fast float 1.000000e+00, %1859
  %3350 = fsub fast float 1.000000e+00, %1860
  %3351 = fsub fast float 1.000000e+00, %1870
  %3352 = fmul fast float %3348, %3349
  %3353 = fmul fast float %3348, %3350
  %3354 = fmul fast float %3348, %3351
  %3355 = fadd fast float %3352, %1859
  %3356 = fadd fast float %3353, %1860
  %3357 = fadd fast float %3354, %1870
  br i1 %3149, label %3358, label %3381

; <label>:3358                                    ; preds = %3290
  %3359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1236, float %3341, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3360 = extractvalue %dx.types.ResRet.f32 %3359, 0
  %3361 = extractvalue %dx.types.ResRet.f32 %3359, 1
  %3362 = extractvalue %dx.types.ResRet.f32 %3359, 2
  %3363 = fadd fast float %3360, -5.000000e-01
  %3364 = fadd fast float %3361, -5.000000e-01
  %3365 = fadd fast float %3362, -5.000000e-01
  %3366 = fmul fast float %1859, 4.000000e+00
  %3367 = fmul fast float %3366, %3349
  %3368 = fmul fast float %3367, %3363
  %3369 = fmul fast float %1860, 4.000000e+00
  %3370 = fmul fast float %3369, %3350
  %3371 = fmul fast float %3370, %3364
  %3372 = fmul fast float %1870, 4.000000e+00
  %3373 = fmul fast float %3372, %3351
  %3374 = fmul fast float %3373, %3365
  %3375 = fadd fast float %3368, %3355
  %3376 = fadd fast float %3371, %3356
  %3377 = fadd fast float %3374, %3357
  %3378 = call float @dx.op.unary.f32(i32 7, float %3375)  ; Saturate(value)
  %3379 = call float @dx.op.unary.f32(i32 7, float %3376)  ; Saturate(value)
  %3380 = call float @dx.op.unary.f32(i32 7, float %3377)  ; Saturate(value)
  br label %3381

; <label>:3381                                    ; preds = %3358, %3290
  %3382 = phi float [ %3378, %3358 ], [ %3355, %3290 ]
  %3383 = phi float [ %3379, %3358 ], [ %3356, %3290 ]
  %3384 = phi float [ %3380, %3358 ], [ %3357, %3290 ]
  %3385 = fmul fast float %3302, 9.843750e-01
  %3386 = fadd fast float %3385, 7.812500e-03
  %3387 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3386, float %3139, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3388 = extractvalue %dx.types.ResRet.f32 %3387, 2
  %3389 = extractvalue %dx.types.ResRet.f32 %3387, 3
  %3390 = fmul fast float %3388, %1859
  %3391 = fmul fast float %3388, %1860
  %3392 = fmul fast float %3388, %1870
  %3393 = fadd fast float %3390, %3389
  %3394 = fadd fast float %3391, %3389
  %3395 = fadd fast float %3392, %3389
  br i1 %3149, label %3396, label %3419

; <label>:3396                                    ; preds = %3381
  %3397 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1236, float %3302, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3398 = extractvalue %dx.types.ResRet.f32 %3397, 0
  %3399 = extractvalue %dx.types.ResRet.f32 %3397, 1
  %3400 = extractvalue %dx.types.ResRet.f32 %3397, 2
  %3401 = fadd fast float %3398, -5.000000e-01
  %3402 = fadd fast float %3399, -5.000000e-01
  %3403 = fadd fast float %3400, -5.000000e-01
  %3404 = fmul fast float %1859, 4.000000e+00
  %3405 = fmul fast float %3404, %3349
  %3406 = fmul fast float %3405, %3401
  %3407 = fmul fast float %1860, 4.000000e+00
  %3408 = fmul fast float %3407, %3350
  %3409 = fmul fast float %3408, %3402
  %3410 = fmul fast float %1870, 4.000000e+00
  %3411 = fmul fast float %3410, %3351
  %3412 = fmul fast float %3411, %3403
  %3413 = fadd fast float %3406, %3393
  %3414 = fadd fast float %3409, %3394
  %3415 = fadd fast float %3412, %3395
  %3416 = call float @dx.op.unary.f32(i32 7, float %3413)  ; Saturate(value)
  %3417 = call float @dx.op.unary.f32(i32 7, float %3414)  ; Saturate(value)
  %3418 = call float @dx.op.unary.f32(i32 7, float %3415)  ; Saturate(value)
  br label %3419

; <label>:3419                                    ; preds = %3396, %3381
  %3420 = phi float [ %3416, %3396 ], [ %3393, %3381 ]
  %3421 = phi float [ %3417, %3396 ], [ %3394, %3381 ]
  %3422 = phi float [ %3418, %3396 ], [ %3395, %3381 ]
  %3423 = call float @dx.op.binary.f32(i32 35, float %3421, float %3422)  ; FMax(a,b)
  %3424 = call float @dx.op.binary.f32(i32 35, float %3420, float %3423)  ; FMax(a,b)
  %3425 = fsub fast float 1.000000e+00, %3424
  %3426 = fmul fast float %3382, %3340
  %3427 = fmul fast float %3383, %3340
  %3428 = fmul fast float %3384, %3340
  %3429 = fsub fast float 1.000000e+00, %3303
  %3430 = bitcast float %3429 to i32
  %3431 = sitofp i32 %3430 to float
  %3432 = fmul fast float %3431, 5.000000e+00
  %3433 = fadd fast float %3432, 0xC1EFBF8940000000
  %3434 = fptosi float %3433 to i32
  %3435 = bitcast i32 %3434 to float
  %3436 = fmul fast float %3435, %1235
  %3437 = fmul fast float %3425, %3436
  %3438 = fmul fast float %3437, %3199
  %3439 = fmul fast float %3437, %3200
  %3440 = fmul fast float %3437, %3201
  %3441 = fadd fast float %3438, %3426
  %3442 = fadd fast float %3439, %3427
  %3443 = fadd fast float %3440, %3428
  %3444 = fmul fast float %3308, %3291
  %3445 = fmul fast float %3444, %3425
  %3446 = fmul fast float %3308, %3292
  %3447 = fmul fast float %3446, %3425
  %3448 = fmul fast float %3308, %3293
  %3449 = fmul fast float %3448, %3425
  %3450 = fmul fast float %3444, %3441
  %3451 = fmul fast float %3446, %3442
  %3452 = fmul fast float %3448, %3443
  %3453 = fadd fast float %3445, %3183
  %3454 = fmul fast float %3453, %1256
  %3455 = fadd fast float %3447, %3184
  %3456 = fmul fast float %3455, %1256
  %3457 = fadd fast float %3449, %3185
  %3458 = fmul fast float %3457, %1256
  %3459 = fadd fast float %3450, %3226
  %3460 = fmul fast float %3459, %1256
  %3461 = fadd fast float %3451, %3229
  %3462 = fmul fast float %3461, %1256
  %3463 = fadd fast float %3452, %3232
  %3464 = fmul fast float %3463, %1256
  br label %3465

; <label>:3465                                    ; preds = %3419, %3283, %3176
  %3466 = phi float [ %3227, %3176 ], [ %3227, %3283 ], [ %3460, %3419 ]
  %3467 = phi float [ %3230, %3176 ], [ %3230, %3283 ], [ %3462, %3419 ]
  %3468 = phi float [ %3233, %3176 ], [ %3233, %3283 ], [ %3464, %3419 ]
  %3469 = phi float [ %3222, %3176 ], [ %3222, %3283 ], [ %3454, %3419 ]
  %3470 = phi float [ %3223, %3176 ], [ %3223, %3283 ], [ %3456, %3419 ]
  %3471 = phi float [ %3224, %3176 ], [ %3224, %3283 ], [ %3458, %3419 ]
  %3472 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3473 = extractvalue %dx.types.CBufRet.i32 %3472, 0
  %3474 = icmp eq i32 %3473, 0
  br i1 %3474, label %3909, label %3475

; <label>:3475                                    ; preds = %3465
  %3476 = fptoui float %58 to i32
  %3477 = fptoui float %59 to i32
  %3478 = lshr i32 %3476, 4
  %3479 = lshr i32 %3477, 4
  %3480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3481 = extractvalue %dx.types.CBufRet.i32 %3480, 0
  %3482 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3479, i32 %3481, i32 %3478)  ; UMad(a,b,c)
  %3483 = add nsw i32 %3473, -1
  %3484 = call i32 @dx.op.binary.i32(i32 37, i32 %3483, i32 0)  ; IMax(a,b)
  %3485 = call float @dx.op.binary.f32(i32 35, float %53, float 0.000000e+00)  ; FMax(a,b)
  %3486 = fptoui float %3485 to i32
  %3487 = lshr i32 %3486, 5
  %3488 = call i32 @dx.op.binary.i32(i32 40, i32 %3487, i32 8191)  ; UMin(a,b)
  %3489 = shl i32 %3488, 2
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = lshr i32 %3491, 16
  %3493 = and i32 %3491, 65535
  %3494 = lshr i32 %3491, 21
  %3495 = lshr i32 %3493, 5
  %3496 = call i32 @dx.op.binary.i32(i32 40, i32 %3495, i32 %3484)  ; UMin(a,b)
  %3497 = icmp ugt i32 %3494, %3496
  br i1 %3497, label %3909, label %3498

; <label>:3498                                    ; preds = %3475
  br label %3499

; <label>:3499                                    ; preds = %3899, %3498
  %3500 = phi i32 [ %3906, %3899 ], [ %3494, %3498 ]
  %3501 = phi float [ %3900, %3899 ], [ %3466, %3498 ]
  %3502 = phi float [ %3901, %3899 ], [ %3467, %3498 ]
  %3503 = phi float [ %3902, %3899 ], [ %3468, %3498 ]
  %3504 = phi float [ %3903, %3899 ], [ %3469, %3498 ]
  %3505 = phi float [ %3904, %3899 ], [ %3470, %3498 ]
  %3506 = phi float [ %3905, %3899 ], [ %3471, %3498 ]
  %3507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3508 = extractvalue %dx.types.CBufRet.i32 %3507, 0
  %3509 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3482, i32 %3508, i32 %3500)  ; UMad(a,b,c)
  %3510 = shl i32 %3509, 2
  %3511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3510, i32 undef)  ; BufferLoad(srv,index,wot)
  %3512 = extractvalue %dx.types.ResRet.i32 %3511, 0
  %3513 = shl i32 %3500, 5
  %3514 = sub nsw i32 %3492, %3513
  %3515 = call i32 @dx.op.binary.i32(i32 37, i32 %3514, i32 0)  ; IMax(a,b)
  %3516 = call i32 @dx.op.binary.i32(i32 38, i32 %3515, i32 31)  ; IMin(a,b)
  %3517 = sub nsw i32 1, %3492
  %3518 = add nsw i32 %3517, %3493
  %3519 = call i32 @dx.op.binary.i32(i32 37, i32 %3518, i32 0)  ; IMax(a,b)
  %3520 = call i32 @dx.op.binary.i32(i32 38, i32 %3519, i32 32)  ; IMin(a,b)
  %3521 = and i32 %3520, 31
  %3522 = shl i32 -1, %3521
  %3523 = xor i32 %3522, -1
  %3524 = and i32 %3516, 31
  %3525 = shl i32 %3523, %3524
  %3526 = icmp eq i32 %3520, 32
  %3527 = select i1 %3526, i32 -1, i32 %3525
  %3528 = and i32 %3527, %3512
  %3529 = icmp eq i32 %3528, 0
  br i1 %3529, label %3899, label %3530

; <label>:3530                                    ; preds = %3499
  br label %3531

; <label>:3531                                    ; preds = %3611, %3530
  %3532 = phi i32 [ %3543, %3611 ], [ %3528, %3530 ]
  %3533 = phi float [ %3612, %3611 ], [ %3501, %3530 ]
  %3534 = phi float [ %3613, %3611 ], [ %3502, %3530 ]
  %3535 = phi float [ %3614, %3611 ], [ %3503, %3530 ]
  %3536 = phi float [ %3615, %3611 ], [ %3504, %3530 ]
  %3537 = phi float [ %3616, %3611 ], [ %3505, %3530 ]
  %3538 = phi float [ %3617, %3611 ], [ %3506, %3530 ]
  %3539 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3532)  ; FirstbitLo(value)
  %3540 = add i32 %3539, %3513
  %3541 = and i32 %3539, 31
  %3542 = shl i32 1, %3541
  %3543 = xor i32 %3542, %3532
  %3544 = mul i32 %3540, 112
  %3545 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3544, i32 undef)  ; BufferLoad(srv,index,wot)
  %3546 = extractvalue %dx.types.ResRet.f32 %3545, 0
  %3547 = extractvalue %dx.types.ResRet.f32 %3545, 1
  %3548 = extractvalue %dx.types.ResRet.f32 %3545, 2
  %3549 = or i32 %3544, 12
  %3550 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3549, i32 undef)  ; BufferLoad(srv,index,wot)
  %3551 = extractvalue %dx.types.ResRet.f32 %3550, 0
  %3552 = add i32 %3544, 44
  %3553 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.f32 %3553, 0
  %3555 = add i32 %3544, 48
  %3556 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.f32 %3556, 0
  %3558 = extractvalue %dx.types.ResRet.f32 %3556, 1
  %3559 = extractvalue %dx.types.ResRet.f32 %3556, 2
  %3560 = add i32 %3544, 80
  %3561 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3560, i32 undef)  ; BufferLoad(srv,index,wot)
  %3562 = extractvalue %dx.types.ResRet.f32 %3561, 1
  %3563 = extractvalue %dx.types.ResRet.f32 %3561, 2
  %3564 = call float @dx.op.dot3.f32(i32 55, float %3546, float %3547, float %3548, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3565 = select i1 %176, float %3562, float %3546
  %3566 = select i1 %176, float %3564, float %3547
  %3567 = select i1 %176, float %3563, float %3548
  %3568 = fsub fast float %3557, %105
  %3569 = fsub fast float %3558, %106
  %3570 = fsub fast float %3559, %107
  %3571 = call float @dx.op.dot3.f32(i32 55, float %3568, float %3569, float %3570, float %3568, float %3569, float %3570)  ; Dot3(ax,ay,az,bx,by,bz)
  %3572 = call float @dx.op.unary.f32(i32 24, float %3571)  ; Sqrt(value)
  %3573 = fdiv fast float 1.000000e+00, %3572
  %3574 = fmul fast float %3573, %3568
  %3575 = fmul fast float %3573, %3569
  %3576 = fmul fast float %3573, %3570
  %3577 = fadd fast float %3572, %3551
  %3578 = fdiv fast float 1.000000e+00, %3577
  %3579 = fmul float %3554, %3578
  %3580 = fmul float %3579, %3579
  %3581 = call float @dx.op.unary.f32(i32 7, float %3580)  ; Saturate(value)
  %3582 = and i32 %3542, %3528
  %3583 = icmp eq i32 %3582, 0
  br i1 %3583, label %3606, label %3584, !dx.controlflow.hints !81

; <label>:3584                                    ; preds = %3531
  %3585 = lshr i32 %3476, 5
  %3586 = lshr i32 %3477, 5
  %3587 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %3585, i32 %3586, i32 %3540, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3588 = extractvalue %dx.types.ResRet.i32 %3587, 0
  %3589 = and i32 %3588, 3
  %3590 = icmp eq i32 %3589, 0
  %3591 = select i1 %3590, float 1.000000e+00, float 0.000000e+00
  %3592 = icmp eq i32 %3589, 3
  br i1 %3592, label %3593, label %3606

; <label>:3593                                    ; preds = %3584
  %3594 = lshr i32 %3588, 10
  %3595 = and i32 %3594, 8160
  %3596 = and i32 %3477, 31
  %3597 = or i32 %3595, %3596
  %3598 = lshr i32 %3588, 1
  %3599 = and i32 %3598, 16352
  %3600 = and i32 %3476, 31
  %3601 = or i32 %3599, %3600
  %3602 = lshr i32 %3588, 23
  %3603 = and i32 %3602, 255
  %3604 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3601, i32 %3597, i32 %3603, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  br label %3606

; <label>:3606                                    ; preds = %3593, %3584, %3531
  %3607 = phi float [ %3605, %3593 ], [ %3591, %3584 ], [ 0.000000e+00, %3531 ]
  %3608 = call float @dx.op.binary.f32(i32 36, float %3607, float %3607)  ; FMin(a,b)
  %3609 = call float @dx.op.binary.f32(i32 36, float %3607, float %3608)  ; FMin(a,b)
  %3610 = fcmp fast ogt float %3609, 0.000000e+00
  br i1 %3610, label %3619, label %3611, !dx.controlflow.hints !82

; <label>:3611                                    ; preds = %3855, %3606
  %3612 = phi float [ %3533, %3606 ], [ %3895, %3855 ]
  %3613 = phi float [ %3534, %3606 ], [ %3896, %3855 ]
  %3614 = phi float [ %3535, %3606 ], [ %3897, %3855 ]
  %3615 = phi float [ %3536, %3606 ], [ %3889, %3855 ]
  %3616 = phi float [ %3537, %3606 ], [ %3890, %3855 ]
  %3617 = phi float [ %3538, %3606 ], [ %3891, %3855 ]
  %3618 = icmp eq i32 %3532, %3542
  br i1 %3618, label %3898, label %3531

; <label>:3619                                    ; preds = %3606
  %3620 = fmul fast float %3607, %3565
  %3621 = fmul fast float %3607, %3566
  %3622 = fmul fast float %3607, %3567
  %3623 = fsub fast float %3559, %1658
  %3624 = fcmp fast ogt float %3623, 0.000000e+00
  %3625 = fsub fast float %107, %1658
  %3626 = fcmp fast ogt float %3625, 0.000000e+00
  %3627 = xor i1 %3626, %3624
  %3628 = fsub fast float %1658, %3559
  %3629 = fmul fast float %3628, 2.000000e+00
  %3630 = fadd fast float %3629, %3559
  %3631 = select i1 %3627, float %3559, float %3630
  %3632 = fsub fast float %3631, %107
  %3633 = call float @dx.op.dot3.f32(i32 55, float %3568, float %3569, float %3632, float %3568, float %3569, float %3632)  ; Dot3(ax,ay,az,bx,by,bz)
  %3634 = call float @dx.op.unary.f32(i32 25, float %3633)  ; Rsqrt(value)
  %3635 = fmul fast float %3634, %3568
  %3636 = fmul fast float %3634, %3569
  %3637 = fmul fast float %3634, %3632
  %3638 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1666)  ; Dot3(ax,ay,az,bx,by,bz)
  %3639 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3635, float %3636, float %3637)  ; Dot3(ax,ay,az,bx,by,bz)
  %3640 = fdiv fast float 1.000000e+00, %3639
  %3641 = fmul fast float %3640, %3638
  %3642 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3625, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3643 = fcmp fast ogt float %3642, 0.000000e+00
  %3644 = fcmp fast olt float %3642, 0.000000e+00
  %3645 = zext i1 %3643 to i32
  %3646 = zext i1 %3644 to i32
  %3647 = sub nsw i32 %3645, %3646
  %3648 = sitofp i32 %3647 to float
  %3649 = fsub fast float %3631, %1658
  %3650 = call float @dx.op.dot3.f32(i32 55, float %3568, float %3569, float %3649, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3651 = fcmp fast ogt float %3650, 0.000000e+00
  %3652 = fcmp fast olt float %3650, 0.000000e+00
  %3653 = zext i1 %3651 to i32
  %3654 = zext i1 %3652 to i32
  %3655 = sub nsw i32 %3653, %3654
  %3656 = sitofp i32 %3655 to float
  %3657 = fcmp fast une float %3648, %3656
  br i1 %3657, label %3658, label %3668

; <label>:3658                                    ; preds = %3619
  %3659 = fmul fast float %3641, %3637
  %3660 = fmul fast float %3641, %3636
  %3661 = fmul fast float %3641, %3635
  %3662 = fmul fast float %3661, %3661
  %3663 = fmul fast float %3660, %3660
  %3664 = fadd fast float %3662, %3663
  %3665 = fmul fast float %3659, %3659
  %3666 = fadd fast float %3664, %3665
  %3667 = call float @dx.op.unary.f32(i32 24, float %3666)  ; Sqrt(value)
  br label %3680

; <label>:3668                                    ; preds = %3619
  %3669 = icmp slt i32 %3647, 0
  br i1 %3669, label %3670, label %3680

; <label>:3670                                    ; preds = %3668
  %3671 = fsub fast float %105, %3557
  %3672 = fsub fast float %106, %3558
  %3673 = fsub fast float %107, %3631
  %3674 = fmul fast float %3671, %3671
  %3675 = fmul fast float %3672, %3672
  %3676 = fadd fast float %3674, %3675
  %3677 = fmul fast float %3673, %3673
  %3678 = fadd fast float %3676, %3677
  %3679 = call float @dx.op.unary.f32(i32 24, float %3678)  ; Sqrt(value)
  br label %3680

; <label>:3680                                    ; preds = %3670, %3668, %3658
  %3681 = phi float [ %3667, %3658 ], [ %3679, %3670 ], [ 0.000000e+00, %3668 ]
  %3682 = and i1 %3626, %3624
  %3683 = fsub fast float -0.000000e+00, %3681
  %3684 = select i1 %3682, float -0.000000e+00, float %3683
  %3685 = fmul fast float %1659, 0x3FF7154760000000
  %3686 = fmul fast float %3685, %3684
  %3687 = fmul fast float %1660, 0x3FF7154760000000
  %3688 = fmul fast float %3687, %3684
  %3689 = fmul fast float %1661, 0x3FF7154760000000
  %3690 = fmul fast float %3689, %3684
  %3691 = call float @dx.op.unary.f32(i32 21, float %3686)  ; Exp(value)
  %3692 = call float @dx.op.unary.f32(i32 21, float %3688)  ; Exp(value)
  %3693 = call float @dx.op.unary.f32(i32 21, float %3690)  ; Exp(value)
  %3694 = call float @dx.op.unary.f32(i32 7, float %3691)  ; Saturate(value)
  %3695 = call float @dx.op.unary.f32(i32 7, float %3692)  ; Saturate(value)
  %3696 = call float @dx.op.unary.f32(i32 7, float %3693)  ; Saturate(value)
  %3697 = fmul fast float %3620, %3694
  %3698 = fmul fast float %3621, %3695
  %3699 = fmul fast float %3622, %3696
  %3700 = fsub fast float %3574, %1858
  %3701 = fsub fast float %3575, %1857
  %3702 = fsub fast float %3576, %1856
  %3703 = call float @dx.op.dot3.f32(i32 55, float %3700, float %3701, float %3702, float %3700, float %3701, float %3702)  ; Dot3(ax,ay,az,bx,by,bz)
  %3704 = call float @dx.op.unary.f32(i32 25, float %3703)  ; Rsqrt(value)
  %3705 = fmul fast float %3704, %3700
  %3706 = fmul fast float %3704, %3701
  %3707 = fmul fast float %3704, %3702
  %3708 = call float @dx.op.dot3.f32(i32 55, float %3574, float %3575, float %3576, float %1865, float %1866, float %1867)  ; Dot3(ax,ay,az,bx,by,bz)
  %3709 = call float @dx.op.dot3.f32(i32 55, float %1855, float %1854, float %1853, float %3705, float %3706, float %3707)  ; Dot3(ax,ay,az,bx,by,bz)
  %3710 = call float @dx.op.unary.f32(i32 7, float %3708)  ; Saturate(value)
  %3711 = fmul fast float %3710, %3581
  %3712 = fmul fast float %3710, %3710
  %3713 = fmul fast float %3712, %3234
  %3714 = call float @dx.op.unary.f32(i32 7, float %3713)  ; Saturate(value)
  %3715 = fmul fast float %3711, %3714
  %3716 = bitcast float %3571 to i32
  %3717 = ashr i32 %3716, 1
  %3718 = sub nsw i32 1597463007, %3717
  %3719 = bitcast i32 %3718 to float
  %3720 = fmul fast float %3719, %3568
  %3721 = fmul fast float %3719, %3569
  %3722 = fmul fast float %3719, %3570
  %3723 = fsub fast float %3720, %1858
  %3724 = fsub fast float %3721, %1857
  %3725 = fsub fast float %3722, %1856
  %3726 = call float @dx.op.dot3.f32(i32 55, float %3723, float %3724, float %3725, float %3723, float %3724, float %3725)  ; Dot3(ax,ay,az,bx,by,bz)
  %3727 = call float @dx.op.unary.f32(i32 25, float %3726)  ; Rsqrt(value)
  %3728 = fmul fast float %3723, %3727
  %3729 = fmul fast float %3724, %3727
  %3730 = fmul fast float %3725, %3727
  %3731 = call float @dx.op.dot3.f32(i32 55, float %1865, float %1866, float %1867, float %3728, float %3729, float %3730)  ; Dot3(ax,ay,az,bx,by,bz)
  %3732 = fmul fast float %3731, %3731
  %3733 = call float @dx.op.unary.f32(i32 6, float %3708)  ; FAbs(value)
  %3734 = fsub fast float 1.000000e+00, %1868
  %3735 = call float @dx.op.binary.f32(i32 35, float %3734, float 0x3F847AE140000000)  ; FMax(a,b)
  %3736 = fmul fast float %3735, %3735
  %3737 = fmul fast float %3736, %3736
  %3738 = fsub fast float 1.000000e+00, %3737
  %3739 = fmul fast float %1872, %1872
  %3740 = fmul fast float %3739, %3738
  %3741 = fadd fast float %3740, %3737
  %3742 = bitcast float %3741 to i32
  %3743 = ashr i32 %3742, 1
  %3744 = add nsw i32 %3743, 532487669
  %3745 = bitcast i32 %3744 to float
  %3746 = fadd fast float %3745, %1872
  %3747 = fmul fast float %3737, %3732
  %3748 = fsub fast float 1.000000e+00, %3732
  %3749 = fadd fast float %3748, %3747
  %3750 = fmul fast float %3733, %3733
  %3751 = fmul fast float %3750, %3738
  %3752 = fadd fast float %3751, %3737
  %3753 = bitcast float %3752 to i32
  %3754 = ashr i32 %3753, 1
  %3755 = add nsw i32 %3754, 532487669
  %3756 = bitcast i32 %3755 to float
  %3757 = fadd fast float %3756, %3733
  %3758 = fmul fast float %3749, %3749
  %3759 = fmul fast float %3758, %3746
  %3760 = fmul fast float %3759, %3757
  %3761 = fdiv fast float 1.000000e+00, %3760
  %3762 = bitcast float %3737 to i32
  %3763 = sitofp i32 %3762 to float
  %3764 = fmul fast float %3763, 0x3FE7F73180000000
  %3765 = fadd fast float %3764, 0x41AFE27C40000000
  %3766 = fptosi float %3765 to i32
  %3767 = bitcast i32 %3766 to float
  %3768 = fmul fast float %3554, 0x3FD80E9D60000000
  %3769 = fmul fast float %3768, %3719
  %3770 = fadd fast float %3767, %3769
  %3771 = bitcast float %3770 to i32
  %3772 = sub nsw i32 2129859010, %3771
  %3773 = bitcast i32 %3772 to float
  %3774 = fmul fast float %3737, %3761
  %3775 = fmul fast float %3774, %3767
  %3776 = fmul fast float %3775, %3773
  %3777 = call float @dx.op.unary.f32(i32 6, float %3709)  ; FAbs(value)
  %3778 = fsub fast float 1.000000e+00, %3777
  %3779 = bitcast float %3778 to i32
  %3780 = sitofp i32 %3779 to float
  %3781 = fmul fast float %3780, 5.000000e+00
  %3782 = fadd fast float %3781, 0xC1EFBF8940000000
  %3783 = fptosi float %3782 to i32
  %3784 = bitcast i32 %3783 to float
  %3785 = fsub fast float 1.000000e+00, %1859
  %3786 = fsub fast float 1.000000e+00, %1860
  %3787 = fsub fast float 1.000000e+00, %1870
  %3788 = fmul fast float %3784, %3785
  %3789 = fmul fast float %3784, %3786
  %3790 = fmul fast float %3784, %3787
  %3791 = fadd fast float %3788, %1859
  %3792 = fadd fast float %3789, %1860
  %3793 = fadd fast float %3790, %1870
  br i1 %3149, label %3794, label %3817

; <label>:3794                                    ; preds = %3680
  %3795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1236, float %3777, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3797 = extractvalue %dx.types.ResRet.f32 %3795, 1
  %3798 = extractvalue %dx.types.ResRet.f32 %3795, 2
  %3799 = fadd fast float %3796, -5.000000e-01
  %3800 = fadd fast float %3797, -5.000000e-01
  %3801 = fadd fast float %3798, -5.000000e-01
  %3802 = fmul fast float %1859, 4.000000e+00
  %3803 = fmul fast float %3802, %3785
  %3804 = fmul fast float %3803, %3799
  %3805 = fmul fast float %1860, 4.000000e+00
  %3806 = fmul fast float %3805, %3786
  %3807 = fmul fast float %3806, %3800
  %3808 = fmul fast float %1870, 4.000000e+00
  %3809 = fmul fast float %3808, %3787
  %3810 = fmul fast float %3809, %3801
  %3811 = fadd fast float %3804, %3791
  %3812 = fadd fast float %3807, %3792
  %3813 = fadd fast float %3810, %3793
  %3814 = call float @dx.op.unary.f32(i32 7, float %3811)  ; Saturate(value)
  %3815 = call float @dx.op.unary.f32(i32 7, float %3812)  ; Saturate(value)
  %3816 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  br label %3817

; <label>:3817                                    ; preds = %3794, %3680
  %3818 = phi float [ %3814, %3794 ], [ %3791, %3680 ]
  %3819 = phi float [ %3815, %3794 ], [ %3792, %3680 ]
  %3820 = phi float [ %3816, %3794 ], [ %3793, %3680 ]
  %3821 = fmul fast float %3708, 9.843750e-01
  %3822 = fadd fast float %3821, 7.812500e-03
  %3823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3822, float %3139, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3824 = extractvalue %dx.types.ResRet.f32 %3823, 2
  %3825 = extractvalue %dx.types.ResRet.f32 %3823, 3
  %3826 = fmul fast float %3824, %1859
  %3827 = fmul fast float %3824, %1860
  %3828 = fmul fast float %3824, %1870
  %3829 = fadd fast float %3826, %3825
  %3830 = fadd fast float %3827, %3825
  %3831 = fadd fast float %3828, %3825
  br i1 %3149, label %3832, label %3855

; <label>:3832                                    ; preds = %3817
  %3833 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1236, float %3708, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3834 = extractvalue %dx.types.ResRet.f32 %3833, 0
  %3835 = extractvalue %dx.types.ResRet.f32 %3833, 1
  %3836 = extractvalue %dx.types.ResRet.f32 %3833, 2
  %3837 = fadd fast float %3834, -5.000000e-01
  %3838 = fadd fast float %3835, -5.000000e-01
  %3839 = fadd fast float %3836, -5.000000e-01
  %3840 = fmul fast float %1859, 4.000000e+00
  %3841 = fmul fast float %3840, %3785
  %3842 = fmul fast float %3841, %3837
  %3843 = fmul fast float %1860, 4.000000e+00
  %3844 = fmul fast float %3843, %3786
  %3845 = fmul fast float %3844, %3838
  %3846 = fmul fast float %1870, 4.000000e+00
  %3847 = fmul fast float %3846, %3787
  %3848 = fmul fast float %3847, %3839
  %3849 = fadd fast float %3842, %3829
  %3850 = fadd fast float %3845, %3830
  %3851 = fadd fast float %3848, %3831
  %3852 = call float @dx.op.unary.f32(i32 7, float %3849)  ; Saturate(value)
  %3853 = call float @dx.op.unary.f32(i32 7, float %3850)  ; Saturate(value)
  %3854 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  br label %3855

; <label>:3855                                    ; preds = %3832, %3817
  %3856 = phi float [ %3852, %3832 ], [ %3829, %3817 ]
  %3857 = phi float [ %3853, %3832 ], [ %3830, %3817 ]
  %3858 = phi float [ %3854, %3832 ], [ %3831, %3817 ]
  %3859 = call float @dx.op.binary.f32(i32 35, float %3857, float %3858)  ; FMax(a,b)
  %3860 = call float @dx.op.binary.f32(i32 35, float %3856, float %3859)  ; FMax(a,b)
  %3861 = fsub fast float 1.000000e+00, %3860
  %3862 = fmul fast float %3818, %3776
  %3863 = fmul fast float %3819, %3776
  %3864 = fmul fast float %3820, %3776
  %3865 = fsub fast float 1.000000e+00, %3709
  %3866 = bitcast float %3865 to i32
  %3867 = sitofp i32 %3866 to float
  %3868 = fmul fast float %3867, 5.000000e+00
  %3869 = fadd fast float %3868, 0xC1EFBF8940000000
  %3870 = fptosi float %3869 to i32
  %3871 = bitcast i32 %3870 to float
  %3872 = fmul fast float %3871, %1235
  %3873 = fmul fast float %3861, %3872
  %3874 = fmul fast float %3873, %3199
  %3875 = fmul fast float %3873, %3200
  %3876 = fmul fast float %3873, %3201
  %3877 = fadd fast float %3874, %3862
  %3878 = fadd fast float %3875, %3863
  %3879 = fadd fast float %3876, %3864
  %3880 = fmul fast float %3697, %1256
  %3881 = fmul fast float %3880, %3715
  %3882 = fmul fast float %3881, %3861
  %3883 = fmul fast float %3698, %1256
  %3884 = fmul fast float %3883, %3715
  %3885 = fmul fast float %3884, %3861
  %3886 = fmul fast float %3699, %1256
  %3887 = fmul fast float %3886, %3715
  %3888 = fmul fast float %3887, %3861
  %3889 = fadd fast float %3882, %3536
  %3890 = fadd fast float %3885, %3537
  %3891 = fadd fast float %3888, %3538
  %3892 = fmul fast float %3881, %3877
  %3893 = fmul fast float %3884, %3878
  %3894 = fmul fast float %3887, %3879
  %3895 = fadd fast float %3892, %3533
  %3896 = fadd fast float %3893, %3534
  %3897 = fadd fast float %3894, %3535
  br label %3611

; <label>:3898                                    ; preds = %3611
  br label %3899

; <label>:3899                                    ; preds = %3898, %3499
  %3900 = phi float [ %3501, %3499 ], [ %3612, %3898 ]
  %3901 = phi float [ %3502, %3499 ], [ %3613, %3898 ]
  %3902 = phi float [ %3503, %3499 ], [ %3614, %3898 ]
  %3903 = phi float [ %3504, %3499 ], [ %3615, %3898 ]
  %3904 = phi float [ %3505, %3499 ], [ %3616, %3898 ]
  %3905 = phi float [ %3506, %3499 ], [ %3617, %3898 ]
  %3906 = add i32 %3500, 1
  %3907 = icmp ugt i32 %3906, %3496
  br i1 %3907, label %3908, label %3499

; <label>:3908                                    ; preds = %3899
  br label %3909

; <label>:3909                                    ; preds = %3908, %3475, %3465
  %3910 = phi float [ %3466, %3465 ], [ %3466, %3475 ], [ %3900, %3908 ]
  %3911 = phi float [ %3467, %3465 ], [ %3467, %3475 ], [ %3901, %3908 ]
  %3912 = phi float [ %3468, %3465 ], [ %3468, %3475 ], [ %3902, %3908 ]
  %3913 = phi float [ %3469, %3465 ], [ %3469, %3475 ], [ %3903, %3908 ]
  %3914 = phi float [ %3470, %3465 ], [ %3470, %3475 ], [ %3904, %3908 ]
  %3915 = phi float [ %3471, %3465 ], [ %3471, %3475 ], [ %3905, %3908 ]
  %3916 = call float @dx.op.unary.f32(i32 24, float %1862)  ; Sqrt(value)
  %3917 = call float @dx.op.unary.f32(i32 24, float %1863)  ; Sqrt(value)
  %3918 = call float @dx.op.unary.f32(i32 24, float %1864)  ; Sqrt(value)
  %3919 = fmul fast float %3916, %3913
  %3920 = fmul fast float %3917, %3914
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  br i1 %176, label %3923, label %3952

; <label>:3923                                    ; preds = %3909
  %3924 = fadd fast float %3915, %1233
  %3925 = fmul fast float %3924, %1234
  %3926 = fsub fast float 1.000000e+00, %1234
  %3927 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3929 = extractvalue %dx.types.CBufRet.f32 %3928, 3
  %3930 = fmul fast float %3929, %3927
  %3931 = fadd fast float %3930, %3925
  %3932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.f32 %3932, 0
  %3934 = fmul fast float %3933, %3205
  %3935 = fsub fast float %3931, %3934
  %3936 = fadd fast float %3920, %3919
  %3937 = fmul fast float %3922, %3936
  %3938 = extractvalue %dx.types.CBufRet.f32 %3928, 1
  %3939 = fsub fast float %3935, %3938
  %3940 = extractvalue %dx.types.CBufRet.f32 %3928, 2
  %3941 = fmul fast float %3939, %3940
  %3942 = call float @dx.op.unary.f32(i32 7, float %3941)  ; Saturate(value)
  %3943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3944 = extractvalue %dx.types.CBufRet.f32 %3943, 0
  %3945 = fsub fast float %3942, %3944
  %3946 = fmul fast float %3945, 1.000000e+01
  %3947 = call float @dx.op.unary.f32(i32 7, float %3946)  ; Saturate(value)
  %3948 = fadd fast float %1232, -1.000000e+00
  %3949 = fmul fast float %3947, %3948
  %3950 = fadd fast float %3949, 1.000000e+00
  %3951 = fmul fast float %3950, %3942
  br label %3968

; <label>:3952                                    ; preds = %3909
  %3953 = fmul fast float %3918, %3915
  %3954 = fmul fast float %3922, %3919
  %3955 = fmul fast float %3922, %3920
  %3956 = fmul fast float %3953, %3922
  %3957 = add i32 %38, 116
  %3958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3957, i32 undef)  ; BufferLoad(srv,index,wot)
  %3959 = extractvalue %dx.types.ResRet.i32 %3958, 0
  %3960 = and i32 %3959, 32
  %3961 = icmp eq i32 %3960, 0
  br i1 %3961, label %3968, label %3962

; <label>:3962                                    ; preds = %3952
  %3963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3964 = extractvalue %dx.types.CBufRet.f32 %3963, 0
  %3965 = fmul fast float %3964, 0x3FE99999A0000000
  %3966 = fadd fast float %3964, %3954
  %3967 = fadd fast float %3965, %3956
  br label %3968

; <label>:3968                                    ; preds = %3962, %3952, %3923
  %3969 = phi float [ %3937, %3923 ], [ %3966, %3962 ], [ %3954, %3952 ]
  %3970 = phi float [ %3951, %3923 ], [ %3955, %3962 ], [ %3955, %3952 ]
  %3971 = phi float [ %3950, %3923 ], [ %3967, %3962 ], [ %3956, %3952 ]
  %3972 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3973 = extractvalue %dx.types.CBufRet.f32 %3972, 0
  %3974 = fmul fast float %3973, %3911
  %3975 = fmul fast float %3973, %3912
  %3976 = fadd fast float %3911, %3910
  %3977 = select i1 %176, float %3976, float %3910
  %3978 = fmul float %3977, %3973
  %3979 = select i1 %176, float 0.000000e+00, float %3974
  %3980 = select i1 %176, float 0.000000e+00, float %3975
  %3981 = fmul fast float %3969, %3916
  %3982 = fmul fast float %3970, %3917
  %3983 = fmul fast float %3971, %3918
  %3984 = fadd fast float %3978, %3981
  %3985 = fadd fast float %3979, %3982
  %3986 = fadd fast float %3980, %3983
  %3987 = select i1 %176, float %3970, float %3985
  %3988 = select i1 %176, float %3971, float %3986
  %3989 = call float @dx.op.binary.f32(i32 36, float %3984, float 3.225500e+04)  ; FMin(a,b)
  %3990 = call float @dx.op.binary.f32(i32 36, float %3987, float 3.225500e+04)  ; FMin(a,b)
  %3991 = call float @dx.op.binary.f32(i32 36, float %3988, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3989)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3990)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3991)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

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
!dx.viewIdState = !{!51}
!dx.entryPoints = !{!52}

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
!10 = !{i32 3, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!11 = !{i32 4, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!12 = !{i32 5, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!13 = !{i32 6, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!14 = !{i32 7, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !17}
!17 = !{i32 0, i32 5}
!18 = !{i32 10, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!19 = !{i32 11, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !17}
!26 = !{i32 18, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
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
!46 = !{!47, !48, !49, !50}
!47 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!48 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!49 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!50 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!51 = !{[28 x i32] [i32 26, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0]}
!52 = !{void ()* @ps_main, !"ps_main", !53, !4, !72}
!53 = !{!54, !70, null}
!54 = !{!55, !58, !59, !61, !63, !64, !66, !68, !69}
!55 = !{i32 0, !"SV_Position", i8 9, i8 3, !56, i8 4, i32 1, i8 4, i32 0, i8 0, !57}
!56 = !{i32 0}
!57 = !{i32 3, i32 11}
!58 = !{i32 1, !"COLOR", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 1, i8 0, null}
!59 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !56, i8 2, i32 1, i8 2, i32 2, i8 0, !60}
!60 = !{i32 3, i32 3}
!61 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 3, i8 0, !62}
!62 = !{i32 3, i32 7}
!63 = !{i32 4, !"NORMAL", i8 9, i8 0, !56, i8 2, i32 1, i8 3, i32 4, i8 0, !62}
!64 = !{i32 5, !"TANGENT", i8 9, i8 0, !56, i8 2, i32 1, i8 4, i32 5, i8 0, !65}
!65 = !{i32 3, i32 15}
!66 = !{i32 6, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !56, i8 1, i32 1, i8 1, i32 6, i8 0, !67}
!67 = !{i32 3, i32 1}
!68 = !{i32 7, !"TRANSIENT_INDEX", i8 5, i8 0, !56, i8 1, i32 1, i8 1, i32 6, i8 1, null}
!69 = !{i32 8, !"SV_SampleIndex", i8 5, i8 12, !56, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!70 = !{!71}
!71 = !{i32 0, !"SV_Target", i8 9, i8 16, !56, i8 0, i32 1, i8 4, i32 0, i8 0, !65}
!72 = !{i32 0, i64 24}
!73 = distinct !{!73, !"dx.controlflow.hints", i32 1}
!74 = distinct !{!74, !"dx.controlflow.hints", i32 1}
!75 = distinct !{!75, !"dx.controlflow.hints", i32 1}
!76 = distinct !{!76, !"dx.controlflow.hints", i32 1}
!77 = distinct !{!77, !"dx.controlflow.hints", i32 1}
!78 = distinct !{!78, !"dx.controlflow.hints", i32 1}
!79 = distinct !{!79, !"dx.controlflow.hints", i32 1}
!80 = distinct !{!80, !"dx.controlflow.hints", i32 1}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}

