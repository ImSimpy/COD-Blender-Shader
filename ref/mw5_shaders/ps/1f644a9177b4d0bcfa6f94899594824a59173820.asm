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
; SV_IsFrontFace           0     z         6    FFACE    uint     z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 49fd40f0d3119040d347d55f69c350de
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
; Number of inputs: 27, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 26 }
;   output 1 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 26 }
;   output 2 depends on inputs: { 0, 1, 3, 8, 9, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 26 }
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
  %38 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %39 = icmp ne i32 %38, 0
  %40 = call i32 @dx.op.loadInput.i32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %41 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %42 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %43 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %57 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %58 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %59 = extractvalue %dx.types.CBufRet.f32 %58, 0
  %60 = fmul fast float %59, %53
  %61 = fmul fast float %59, %54
  %62 = select i1 %39, float 1.000000e+00, float -1.000000e+00
  %63 = fmul fast float %45, %62
  %64 = fmul fast float %46, %62
  %65 = fmul fast float %47, %62
  %66 = fmul fast float %62, %41
  %67 = fmul fast float %42, %62
  %68 = fmul fast float %43, %62
  %69 = fmul fast float %46, %43
  %70 = fmul fast float %47, %42
  %71 = fsub fast float %69, %70
  %72 = fmul fast float %47, %41
  %73 = fmul fast float %45, %43
  %74 = fsub fast float %72, %73
  %75 = fmul fast float %45, %42
  %76 = fmul fast float %46, %41
  %77 = fsub fast float %75, %76
  %78 = fmul fast float %44, %62
  %79 = fmul fast float %78, %71
  %80 = fmul fast float %78, %74
  %81 = fmul fast float %78, %77
  %82 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %83 = extractvalue %dx.types.CBufRet.f32 %82, 2
  %84 = extractvalue %dx.types.CBufRet.f32 %82, 3
  %85 = fmul fast float %83, 2.000000e+00
  %86 = fmul fast float %85, %60
  %87 = fmul fast float %84, 2.000000e+00
  %88 = fmul fast float %87, %61
  %89 = fsub fast float 1.000000e+00, %86
  %90 = fsub fast float 1.000000e+00, %88
  %91 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %92 = extractvalue %dx.types.CBufRet.f32 %91, 0
  %93 = extractvalue %dx.types.CBufRet.f32 %91, 1
  %94 = extractvalue %dx.types.CBufRet.f32 %91, 2
  %95 = fmul fast float %89, %92
  %96 = fmul fast float %89, %93
  %97 = fmul fast float %89, %94
  %98 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %99 = extractvalue %dx.types.CBufRet.f32 %98, 0
  %100 = extractvalue %dx.types.CBufRet.f32 %98, 1
  %101 = extractvalue %dx.types.CBufRet.f32 %98, 2
  %102 = fmul fast float %90, %99
  %103 = fmul fast float %90, %100
  %104 = fmul fast float %90, %101
  %105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %106 = extractvalue %dx.types.CBufRet.f32 %105, 0
  %107 = extractvalue %dx.types.CBufRet.f32 %105, 1
  %108 = extractvalue %dx.types.CBufRet.f32 %105, 2
  %109 = fadd fast float %102, %106
  %110 = fadd fast float %109, %95
  %111 = fadd fast float %103, %107
  %112 = fadd fast float %111, %96
  %113 = fadd fast float %104, %108
  %114 = fadd fast float %113, %97
  %115 = fmul fast float %110, %55
  %116 = fmul fast float %112, %55
  %117 = fmul fast float %114, %55
  %118 = fadd fast float %50, 5.000000e-01
  %119 = fptoui float %118 to i32
  %120 = shl i32 %119, 3
  %121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %120, i32 undef)  ; BufferLoad(srv,index,wot)
  %122 = extractvalue %dx.types.ResRet.i32 %121, 0
  %123 = or i32 %120, 4
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %21, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = and i32 %122, 8191
  %127 = lshr i32 %122, 13
  %128 = and i32 %127, 8191
  %129 = lshr i32 %122, 26
  %130 = and i32 %125, 65535
  %131 = lshr i32 %125, 16
  %132 = uitofp i32 %130 to float
  %133 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %134 = extractvalue %dx.types.CBufRet.f32 %133, 1
  %135 = uitofp i32 %131 to float
  %136 = uitofp i32 %126 to float
  %137 = fmul fast float %134, %136
  %138 = uitofp i32 %128 to float
  %139 = fmul fast float %134, %138
  %140 = fmul fast float %134, %48
  %141 = fmul fast float %140, %132
  %142 = fmul fast float %134, %49
  %143 = fmul fast float %142, %135
  %144 = fadd fast float %141, %137
  %145 = fadd fast float %139, %143
  %146 = uitofp i32 %129 to float
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %148, %60
  %151 = fmul fast float %149, %61
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = and i32 %153, 114688
  %155 = icmp ne i32 %154, 0
  %156 = select i1 %155, float %150, float 0.000000e+00
  %157 = select i1 %155, float %151, float 0.000000e+00
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %35, float %156, float %157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = fmul fast float %159, 2.550000e+02
  %161 = fptoui float %160 to i32
  %162 = select i1 %155, i32 %161, i32 0
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 3
  %166 = and i32 %165, 3
  %167 = icmp ne i32 %166, 0
  %168 = and i32 %165, 4
  %169 = icmp ne i32 %168, 0
  %170 = and i1 %167, %169
  br i1 %170, label %171, label %182

; <label>:171                                     ; preds = %0
  %172 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %173 = fmul fast float %172, %61
  %174 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %175 = fmul fast float %174, %60
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %34, float %175, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fsub fast float 1.000000e+00, %177
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = fcmp fast olt float %178, %180
  br label %185

; <label>:182                                     ; preds = %0
  %183 = icmp eq i32 %168, 0
  %184 = and i1 %167, %183
  br label %185

; <label>:185                                     ; preds = %182, %171
  %186 = phi i1 [ %181, %171 ], [ %184, %182 ]
  %187 = add i32 %40, 60
  %188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %187, i32 undef)  ; BufferLoad(srv,index,wot)
  %189 = extractvalue %dx.types.ResRet.i32 %188, 0
  %190 = shl i32 %189, 4
  %191 = and i32 %190, 32752
  %192 = call float @dx.op.legacyF16ToF32(i32 131, i32 %191)  ; LegacyF16ToF32(value)
  %193 = lshr i32 %189, 7
  %194 = and i32 %193, 32752
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = lshr i32 %189, 22
  %197 = shl nuw nsw i32 %196, 5
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = add i32 %40, 72
  %200 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %201 = extractvalue %dx.types.ResRet.i32 %200, 0
  %202 = and i32 %201, 255
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %203, 0x3F70101020000000
  %205 = lshr i32 %201, 8
  %206 = and i32 %205, 255
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %207, 0x3F70101020000000
  %209 = lshr i32 %201, 16
  %210 = and i32 %209, 255
  %211 = uitofp i32 %210 to float
  %212 = fmul fast float %211, 0x3F70101020000000
  %213 = add i32 %40, 36
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = add i32 %40, 96
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = add i32 %40, 24
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = add i32 %40, 28
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = or i32 %224, %221
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %687, label %227

; <label>:227                                     ; preds = %185
  %228 = lshr i32 %218, 16
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = fmul fast float %229, 0x3F50624DE0000000
  %231 = and i32 %218, 65535
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = fmul fast float %232, 0x3F50624DE0000000
  %234 = lshr i32 %215, 16
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = and i32 %215, 65535
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = add i32 %40, 92
  %239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %240 = extractvalue %dx.types.ResRet.i32 %239, 0
  %241 = lshr i32 %240, 16
  %242 = call float @dx.op.legacyF16ToF32(i32 131, i32 %241)  ; LegacyF16ToF32(value)
  %243 = fmul fast float %242, 0x3F50624DE0000000
  %244 = add i32 %40, 40
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = lshr i32 %246, 16
  %248 = and i32 %247, 255
  %249 = lshr i32 %246, 24
  %250 = add i32 %40, 100
  %251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %250, i32 undef)  ; BufferLoad(srv,index,wot)
  %252 = extractvalue %dx.types.ResRet.i32 %251, 0
  %253 = and i32 %252, 65535
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = lshr i32 %252, 16
  %256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %255)  ; LegacyF16ToF32(value)
  %257 = add i32 %40, 32
  %258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %257, i32 undef)  ; BufferLoad(srv,index,wot)
  %259 = extractvalue %dx.types.ResRet.i32 %258, 0
  %260 = lshr i32 %259, 22
  %261 = shl nuw nsw i32 %260, 5
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = shl i32 %259, 4
  %264 = and i32 %263, 32752
  %265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %264)  ; LegacyF16ToF32(value)
  %266 = lshr i32 %259, 7
  %267 = and i32 %266, 32752
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %270 = extractvalue %dx.types.CBufRet.f32 %269, 3
  %271 = fmul fast float %270, 1.000000e+03
  %272 = fmul fast float %233, %271
  %273 = call float @dx.op.unary.f32(i32 22, float %272)  ; Frc(value)
  %274 = fadd fast float %273, %237
  %275 = fmul fast float %230, %271
  %276 = call float @dx.op.unary.f32(i32 22, float %275)  ; Frc(value)
  %277 = fadd fast float %276, %235
  %278 = fmul fast float %243, %271
  %279 = call float @dx.op.unary.f32(i32 22, float %278)  ; Frc(value)
  %280 = fmul fast float %279, 0x401921FB60000000
  %281 = fadd fast float %280, %262
  %282 = call float @dx.op.unary.f32(i32 13, float %281)  ; Sin(value)
  %283 = call float @dx.op.unary.f32(i32 12, float %281)  ; Cos(value)
  %284 = fsub fast float -0.000000e+00, %282
  %285 = fadd fast float %51, -5.000000e-01
  %286 = fadd fast float %52, -5.000000e-01
  %287 = fmul fast float %254, %285
  %288 = fmul fast float %256, %286
  %289 = fadd fast float %287, 5.000000e-01
  %290 = fadd fast float %288, 5.000000e-01
  %291 = fmul fast float %265, %289
  %292 = fmul fast float %268, %290
  %293 = fmul fast float %283, %291
  %294 = call float @dx.op.tertiary.f32(i32 46, float %284, float %292, float %293)  ; FMad(a,b,c)
  %295 = fmul fast float %282, %291
  %296 = call float @dx.op.tertiary.f32(i32 46, float %283, float %292, float %295)  ; FMad(a,b,c)
  %297 = fadd fast float %274, %294
  %298 = fadd fast float %277, %296
  %299 = icmp ugt i32 %248, 1
  %300 = icmp ugt i32 %246, 33554431
  %301 = or i1 %300, %299
  br i1 %301, label %302, label %327

; <label>:302                                     ; preds = %227
  %303 = add i32 %40, 84
  %304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %303, i32 undef)  ; BufferLoad(srv,index,wot)
  %305 = extractvalue %dx.types.ResRet.i32 %304, 0
  %306 = lshr i32 %305, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = fmul fast float %270, %307
  %309 = call float @dx.op.unary.f32(i32 22, float %308)  ; Frc(value)
  %310 = mul nuw nsw i32 %248, %249
  %311 = uitofp i32 %310 to float
  %312 = fmul fast float %309, %311
  %313 = call float @dx.op.unary.f32(i32 27, float %312)  ; Round_ni(value)
  %314 = fptoui float %313 to i32
  %315 = urem i32 %314, %248
  %316 = udiv i32 %314, %249
  %317 = call float @dx.op.unary.f32(i32 22, float %297)  ; Frc(value)
  %318 = call float @dx.op.unary.f32(i32 22, float %298)  ; Frc(value)
  %319 = uitofp i32 %315 to float
  %320 = uitofp i32 %316 to float
  %321 = fadd fast float %317, %319
  %322 = fadd fast float %318, %320
  %323 = uitofp i32 %248 to float
  %324 = uitofp i32 %249 to float
  %325 = fdiv fast float %321, %323
  %326 = fdiv fast float %322, %324
  br label %327

; <label>:327                                     ; preds = %302, %227
  %328 = phi float [ %325, %302 ], [ %297, %227 ]
  %329 = phi float [ %326, %302 ], [ %298, %227 ]
  %330 = and i32 %221, 16
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %528, label %332

; <label>:332                                     ; preds = %327
  %333 = add i32 %40, 120
  %334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %333, i32 undef)  ; BufferLoad(srv,index,wot)
  %335 = extractvalue %dx.types.ResRet.i32 %334, 0
  %336 = add i32 %335, 0
  %337 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %336, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %338 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %337, %dx.types.Handle %56, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %339 = extractvalue %dx.types.ResRet.f32 %338, 0
  %340 = extractvalue %dx.types.ResRet.f32 %338, 1
  %341 = extractvalue %dx.types.ResRet.f32 %338, 2
  %342 = extractvalue %dx.types.ResRet.f32 %338, 3
  %343 = and i32 %246, 255
  %344 = uitofp i32 %343 to float
  %345 = lshr i32 %246, 8
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %342, %344
  %349 = fadd fast float %348, %347
  %350 = fmul fast float %349, 0x3F70101000000000
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 512
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %363, label %355

; <label>:355                                     ; preds = %332
  %356 = add i32 %40, 140
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = add i32 %358, 0
  %360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %360, %dx.types.Handle %57, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %362 = extractvalue %dx.types.ResRet.f32 %361, 0
  br label %363

; <label>:363                                     ; preds = %355, %332
  %364 = phi float [ %362, %355 ], [ 1.000000e+00, %332 ]
  %365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %366 = extractvalue %dx.types.ResRet.i32 %365, 0
  %367 = and i32 %366, 33554432
  %368 = icmp eq i32 %367, 0
  br i1 %368, label %475, label %369

; <label>:369                                     ; preds = %363
  %370 = add i32 %40, 80
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 65535
  %374 = call float @dx.op.legacyF16ToF32(i32 131, i32 %373)  ; LegacyF16ToF32(value)
  %375 = lshr i32 %372, 16
  %376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %375)  ; LegacyF16ToF32(value)
  %377 = add i32 %40, 84
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %377, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 65535
  %381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %380)  ; LegacyF16ToF32(value)
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %199, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = lshr i32 %383, 24
  %385 = uitofp i32 %384 to float
  %386 = fmul fast float %385, 0x3F70101020000000
  %387 = and i32 %383, 255
  %388 = uitofp i32 %387 to float
  %389 = fmul fast float %388, 0x3F70101020000000
  %390 = lshr i32 %383, 8
  %391 = and i32 %390, 255
  %392 = uitofp i32 %391 to float
  %393 = fmul fast float %392, 0x3F70101020000000
  %394 = lshr i32 %383, 16
  %395 = and i32 %394, 255
  %396 = uitofp i32 %395 to float
  %397 = fmul fast float %396, 0x3F70101020000000
  %398 = add i32 %40, 76
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = lshr i32 %400, 24
  %402 = uitofp i32 %401 to float
  %403 = fmul fast float %402, 0x3F70101020000000
  %404 = and i32 %400, 255
  %405 = uitofp i32 %404 to float
  %406 = fmul fast float %405, 0x3F70101020000000
  %407 = lshr i32 %400, 8
  %408 = and i32 %407, 255
  %409 = uitofp i32 %408 to float
  %410 = fmul fast float %409, 0x3F70101020000000
  %411 = lshr i32 %400, 16
  %412 = and i32 %411, 255
  %413 = uitofp i32 %412 to float
  %414 = fmul fast float %413, 0x3F70101020000000
  %415 = bitcast float %339 to i32
  %416 = ashr i32 %415, 1
  %417 = sub nsw i32 1597463174, %416
  %418 = bitcast i32 %417 to float
  %419 = fmul fast float %339, 5.000000e-01
  %420 = fmul fast float %418, %418
  %421 = fmul fast float %420, %419
  %422 = fsub fast float 1.500000e+00, %421
  %423 = fmul fast float %418, %339
  %424 = fmul fast float %423, %422
  %425 = bitcast float %340 to i32
  %426 = ashr i32 %425, 1
  %427 = sub nsw i32 1597463174, %426
  %428 = bitcast i32 %427 to float
  %429 = fmul fast float %340, 5.000000e-01
  %430 = fmul fast float %428, %428
  %431 = fmul fast float %430, %429
  %432 = fsub fast float 1.500000e+00, %431
  %433 = fmul fast float %428, %340
  %434 = fmul fast float %433, %432
  %435 = bitcast float %341 to i32
  %436 = ashr i32 %435, 1
  %437 = sub nsw i32 1597463174, %436
  %438 = bitcast i32 %437 to float
  %439 = fmul fast float %341, 5.000000e-01
  %440 = fmul fast float %438, %438
  %441 = fmul fast float %440, %439
  %442 = fsub fast float 1.500000e+00, %441
  %443 = fmul fast float %438, %341
  %444 = fmul fast float %443, %442
  %445 = fsub fast float %424, %406
  %446 = fsub fast float %434, %410
  %447 = fsub fast float %444, %414
  %448 = fmul fast float %445, %374
  %449 = fmul fast float %446, %376
  %450 = fmul fast float %447, %381
  %451 = fadd fast float %448, %389
  %452 = fadd fast float %449, %393
  %453 = fadd fast float %450, %397
  %454 = call float @dx.op.unary.f32(i32 7, float %451)  ; Saturate(value)
  %455 = call float @dx.op.unary.f32(i32 7, float %452)  ; Saturate(value)
  %456 = call float @dx.op.unary.f32(i32 7, float %453)  ; Saturate(value)
  %457 = fmul fast float %454, %454
  %458 = fmul fast float %455, %455
  %459 = fmul fast float %456, %456
  %460 = fsub fast float %457, %339
  %461 = fsub fast float %458, %340
  %462 = fsub fast float %459, %341
  %463 = fmul fast float %460, %364
  %464 = fmul fast float %461, %364
  %465 = fmul fast float %462, %364
  %466 = fadd fast float %463, %339
  %467 = fadd fast float %464, %340
  %468 = fadd fast float %465, %341
  %469 = fadd fast float %386, %350
  %470 = fsub fast float %469, %403
  %471 = call float @dx.op.unary.f32(i32 7, float %470)  ; Saturate(value)
  %472 = fsub fast float %471, %350
  %473 = fmul fast float %472, %364
  %474 = fadd fast float %473, %350
  br label %528

; <label>:475                                     ; preds = %363
  %476 = and i32 %366, 134217728
  %477 = icmp eq i32 %476, 0
  br i1 %477, label %512, label %478

; <label>:478                                     ; preds = %475
  %479 = call float @dx.op.unary.f32(i32 24, float %204)  ; Sqrt(value)
  %480 = call float @dx.op.unary.f32(i32 24, float %208)  ; Sqrt(value)
  %481 = call float @dx.op.unary.f32(i32 24, float %212)  ; Sqrt(value)
  %482 = fadd fast float %479, -5.000000e-01
  %483 = fadd fast float %480, -5.000000e-01
  %484 = fadd fast float %481, -5.000000e-01
  %485 = fmul fast float %482, %364
  %486 = fmul fast float %483, %364
  %487 = fmul fast float %484, %364
  %488 = fadd fast float %485, 5.000000e-01
  %489 = fadd fast float %486, 5.000000e-01
  %490 = fadd fast float %487, 5.000000e-01
  %491 = call float @dx.op.unary.f32(i32 24, float %339)  ; Sqrt(value)
  %492 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %493 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %494 = fmul fast float %488, 2.000000e+00
  %495 = fsub fast float 1.000000e+00, %494
  %496 = fmul fast float %495, %491
  %497 = fadd fast float %496, %494
  %498 = fmul fast float %497, %491
  %499 = fmul fast float %489, 2.000000e+00
  %500 = fsub fast float 1.000000e+00, %499
  %501 = fmul fast float %500, %492
  %502 = fadd fast float %501, %499
  %503 = fmul fast float %502, %492
  %504 = fmul fast float %490, 2.000000e+00
  %505 = fsub fast float 1.000000e+00, %504
  %506 = fmul fast float %505, %493
  %507 = fadd fast float %506, %504
  %508 = fmul fast float %507, %493
  %509 = fmul fast float %498, %498
  %510 = fmul fast float %503, %503
  %511 = fmul fast float %508, %508
  br label %528

; <label>:512                                     ; preds = %475
  %513 = fmul fast float %204, %204
  %514 = fmul fast float %208, %208
  %515 = fmul fast float %212, %212
  %516 = fadd fast float %513, -1.000000e+00
  %517 = fadd fast float %514, -1.000000e+00
  %518 = fadd fast float %515, -1.000000e+00
  %519 = fmul fast float %364, %516
  %520 = fmul fast float %364, %517
  %521 = fmul fast float %364, %518
  %522 = fadd fast float %519, 1.000000e+00
  %523 = fadd fast float %520, 1.000000e+00
  %524 = fadd fast float %521, 1.000000e+00
  %525 = fmul fast float %522, %339
  %526 = fmul fast float %523, %340
  %527 = fmul fast float %524, %341
  br label %528

; <label>:528                                     ; preds = %512, %478, %369, %327
  %529 = phi float [ %474, %369 ], [ %350, %478 ], [ %350, %512 ], [ 0x3FA23C0BE0000000, %327 ]
  %530 = phi float [ %466, %369 ], [ %509, %478 ], [ %525, %512 ], [ 1.000000e+00, %327 ]
  %531 = phi float [ %467, %369 ], [ %510, %478 ], [ %526, %512 ], [ 1.000000e+00, %327 ]
  %532 = phi float [ %468, %369 ], [ %511, %478 ], [ %527, %512 ], [ 1.000000e+00, %327 ]
  %533 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %534 = extractvalue %dx.types.CBufRet.i32 %533, 1
  %535 = and i32 %534, 1
  %536 = icmp ne i32 %535, 0
  %537 = add i32 %40, 116
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = and i32 %539, 32
  %541 = icmp ne i32 %540, 0
  %542 = and i1 %536, %541
  %543 = select i1 %542, float 1.000000e+00, float %530
  %544 = select i1 %542, float 0x3FD3333340000000, float %531
  %545 = select i1 %542, float 0x3FD3333340000000, float %532
  %546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %547 = extractvalue %dx.types.ResRet.i32 %546, 0
  %548 = and i32 %547, 32
  %549 = icmp eq i32 %548, 0
  br i1 %549, label %622, label %550

; <label>:550                                     ; preds = %528
  %551 = add i32 %40, 44
  %552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %551, i32 undef)  ; BufferLoad(srv,index,wot)
  %553 = extractvalue %dx.types.ResRet.i32 %552, 0
  %554 = add i32 %40, 124
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %554, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = add i32 %556, 0
  %558 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %557, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %559 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %558, %dx.types.Handle %56, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %560 = extractvalue %dx.types.ResRet.f32 %559, 0
  %561 = extractvalue %dx.types.ResRet.f32 %559, 1
  %562 = extractvalue %dx.types.ResRet.f32 %559, 2
  %563 = extractvalue %dx.types.ResRet.f32 %559, 3
  %564 = and i32 %553, 255
  %565 = uitofp i32 %564 to float
  %566 = lshr i32 %553, 8
  %567 = and i32 %566, 255
  %568 = uitofp i32 %567 to float
  %569 = lshr i32 %553, 16
  %570 = and i32 %569, 255
  %571 = uitofp i32 %570 to float
  %572 = fmul fast float %571, 0x3F70101000000000
  %573 = fmul fast float %560, %565
  %574 = fadd fast float %573, %568
  %575 = fmul fast float %574, 0x3F70101000000000
  %576 = fadd fast float %561, -5.000000e-01
  %577 = fadd fast float %563, -5.000000e-01
  %578 = fmul fast float %576, %572
  %579 = fmul fast float %577, %572
  %580 = fadd fast float %578, 5.000000e-01
  %581 = fadd fast float %579, 5.000000e-01
  %582 = fmul fast float %580, 2.000000e+00
  %583 = fadd fast float %582, -1.000000e+00
  %584 = fmul fast float %581, 2.000000e+00
  %585 = fadd fast float %584, -1.000000e+00
  %586 = fadd fast float %583, %585
  %587 = fmul fast float %586, 5.000000e-01
  %588 = fsub fast float %583, %585
  %589 = fmul fast float %588, 5.000000e-01
  %590 = call float @dx.op.unary.f32(i32 6, float %587)  ; FAbs(value)
  %591 = fsub fast float 1.000000e+00, %590
  %592 = call float @dx.op.unary.f32(i32 6, float %589)  ; FAbs(value)
  %593 = fsub fast float %591, %592
  %594 = call float @dx.op.dot3.f32(i32 55, float %587, float %589, float %593, float %587, float %589, float %593)  ; Dot3(ax,ay,az,bx,by,bz)
  %595 = call float @dx.op.unary.f32(i32 25, float %594)  ; Rsqrt(value)
  %596 = fmul fast float %587, %595
  %597 = fmul fast float %589, %595
  %598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %599 = extractvalue %dx.types.ResRet.i32 %598, 0
  %600 = and i32 %599, 67108864
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %618, label %602

; <label>:602                                     ; preds = %550
  %603 = add i32 %40, 88
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = and i32 %605, 65535
  %607 = call float @dx.op.legacyF16ToF32(i32 131, i32 %606)  ; LegacyF16ToF32(value)
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %238, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = and i32 %609, 65535
  %611 = call float @dx.op.legacyF16ToF32(i32 131, i32 %610)  ; LegacyF16ToF32(value)
  %612 = lshr i32 %605, 16
  %613 = call float @dx.op.legacyF16ToF32(i32 131, i32 %612)  ; LegacyF16ToF32(value)
  %614 = fsub fast float %575, %613
  %615 = fmul fast float %614, %607
  %616 = fadd fast float %615, %611
  %617 = call float @dx.op.unary.f32(i32 7, float %616)  ; Saturate(value)
  br label %618

; <label>:618                                     ; preds = %602, %550
  %619 = phi float [ %617, %602 ], [ %575, %550 ]
  %620 = call float @dx.op.dot2.f32(i32 54, float %596, float %597, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %621 = call float @dx.op.dot2.f32(i32 54, float %596, float %597, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %622

; <label>:622                                     ; preds = %618, %528
  %623 = phi float [ %619, %618 ], [ 0x3FD6666660000000, %528 ]
  %624 = phi float [ %620, %618 ], [ 0.000000e+00, %528 ]
  %625 = phi float [ %621, %618 ], [ 0.000000e+00, %528 ]
  %626 = phi float [ %562, %618 ], [ 1.000000e+00, %528 ]
  %627 = add i32 %40, 64
  %628 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %627, i32 undef)  ; BufferLoad(srv,index,wot)
  %629 = extractvalue %dx.types.ResRet.i32 %628, 0
  %630 = lshr i32 %629, 22
  %631 = shl nuw nsw i32 %630, 5
  %632 = call float @dx.op.legacyF16ToF32(i32 131, i32 %631)  ; LegacyF16ToF32(value)
  %633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %634 = extractvalue %dx.types.ResRet.i32 %633, 0
  %635 = and i32 %634, 64
  %636 = icmp eq i32 %635, 0
  br i1 %636, label %670, label %637

; <label>:637                                     ; preds = %622
  %638 = add i32 %40, 128
  %639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %638, i32 undef)  ; BufferLoad(srv,index,wot)
  %640 = extractvalue %dx.types.ResRet.i32 %639, 0
  %641 = add i32 %640, 0
  %642 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %641, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %644 = extractvalue %dx.types.ResRet.i32 %643, 0
  %645 = and i32 %644, 131072
  %646 = icmp eq i32 %645, 0
  %647 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %642, %dx.types.Handle %56, float %328, float %329, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %648 = extractvalue %dx.types.ResRet.f32 %647, 0
  %649 = extractvalue %dx.types.ResRet.f32 %647, 1
  %650 = extractvalue %dx.types.ResRet.f32 %647, 2
  %651 = fmul fast float %648, %192
  %652 = fmul fast float %649, %195
  %653 = fmul fast float %650, %198
  br i1 %646, label %660, label %654

; <label>:654                                     ; preds = %637
  %655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %656 = extractvalue %dx.types.CBufRet.f32 %655, 0
  %657 = fmul fast float %656, %651
  %658 = fmul fast float %656, %652
  %659 = fmul fast float %656, %653
  br label %660

; <label>:660                                     ; preds = %654, %637
  %661 = phi float [ %657, %654 ], [ %651, %637 ]
  %662 = phi float [ %658, %654 ], [ %652, %637 ]
  %663 = phi float [ %659, %654 ], [ %653, %637 ]
  %664 = fmul fast float %661, %632
  %665 = select i1 %186, float %664, float %661
  %666 = call float @dx.op.dot3.f32(i32 55, float %665, float %662, float %663, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %667 = select i1 %186, float 0.000000e+00, float %661
  %668 = select i1 %186, float %666, float %662
  %669 = select i1 %186, float 0.000000e+00, float %663
  br label %670

; <label>:670                                     ; preds = %660, %622
  %671 = phi float [ %667, %660 ], [ 0.000000e+00, %622 ]
  %672 = phi float [ %668, %660 ], [ 0.000000e+00, %622 ]
  %673 = phi float [ %669, %660 ], [ 0.000000e+00, %622 ]
  %674 = add i32 %40, 48
  %675 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %674, i32 undef)  ; BufferLoad(srv,index,wot)
  %676 = extractvalue %dx.types.ResRet.i32 %675, 0
  %677 = and i32 %676, 255
  %678 = uitofp i32 %677 to float
  %679 = lshr i32 %676, 8
  %680 = and i32 %679, 255
  %681 = uitofp i32 %680 to float
  %682 = call float @dx.op.dot3.f32(i32 55, float %543, float %544, float %545, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %683 = fmul fast float %681, %682
  %684 = fadd fast float %683, %678
  %685 = fmul fast float %684, 0x3F70101020000000
  %686 = call float @dx.op.unary.f32(i32 7, float %685)  ; Saturate(value)
  br label %687

; <label>:687                                     ; preds = %670, %185
  %688 = phi float [ 0.000000e+00, %185 ], [ %624, %670 ]
  %689 = phi float [ 0.000000e+00, %185 ], [ %625, %670 ]
  %690 = phi float [ 0.000000e+00, %185 ], [ %543, %670 ]
  %691 = phi float [ 0.000000e+00, %185 ], [ %544, %670 ]
  %692 = phi float [ 0.000000e+00, %185 ], [ %545, %670 ]
  %693 = phi float [ 0.000000e+00, %185 ], [ %671, %670 ]
  %694 = phi float [ 0.000000e+00, %185 ], [ %672, %670 ]
  %695 = phi float [ 0.000000e+00, %185 ], [ %673, %670 ]
  %696 = phi float [ 0.000000e+00, %185 ], [ %529, %670 ]
  %697 = phi float [ 0.000000e+00, %185 ], [ 1.000000e+00, %670 ]
  %698 = phi float [ 0.000000e+00, %185 ], [ %623, %670 ]
  %699 = phi float [ 0.000000e+00, %185 ], [ %626, %670 ]
  %700 = phi float [ 0.000000e+00, %185 ], [ %686, %670 ]
  %701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %702 = extractvalue %dx.types.CBufRet.f32 %701, 0
  %703 = call float @dx.op.dot2.f32(i32 54, float %688, float %689, float %688, float %689)  ; Dot2(ax,ay,bx,by)
  %704 = fmul fast float %703, 0x3FE3333340000000
  %705 = fsub fast float 1.000000e+00, %704
  %706 = call float @dx.op.dot3.f32(i32 55, float %688, float %689, float %705, float %688, float %689, float %705)  ; Dot3(ax,ay,az,bx,by,bz)
  %707 = call float @dx.op.unary.f32(i32 25, float %706)  ; Rsqrt(value)
  %708 = fmul fast float %707, %688
  %709 = fmul fast float %707, %689
  %710 = fmul fast float %705, %707
  %711 = fmul fast float %710, %63
  %712 = fmul fast float %710, %64
  %713 = fmul fast float %710, %65
  %714 = fmul fast float %708, %66
  %715 = fmul fast float %708, %67
  %716 = fmul fast float %708, %68
  %717 = fadd fast float %711, %714
  %718 = fadd fast float %712, %715
  %719 = fadd fast float %713, %716
  %720 = fmul fast float %709, %79
  %721 = fmul fast float %709, %80
  %722 = fmul fast float %709, %81
  %723 = fadd fast float %717, %720
  %724 = fadd fast float %718, %721
  %725 = fadd fast float %719, %722
  %726 = call float @dx.op.dot3.f32(i32 55, float %723, float %724, float %725, float %723, float %724, float %725)  ; Dot3(ax,ay,az,bx,by,bz)
  %727 = call float @dx.op.unary.f32(i32 25, float %726)  ; Rsqrt(value)
  %728 = fmul fast float %723, %727
  %729 = fmul fast float %724, %727
  %730 = fmul fast float %725, %727
  %731 = call float @dx.op.unary.f32(i32 83, float %115)  ; DerivCoarseX(value)
  %732 = call float @dx.op.unary.f32(i32 83, float %116)  ; DerivCoarseX(value)
  %733 = call float @dx.op.unary.f32(i32 83, float %117)  ; DerivCoarseX(value)
  %734 = call float @dx.op.unary.f32(i32 84, float %115)  ; DerivCoarseY(value)
  %735 = call float @dx.op.unary.f32(i32 84, float %116)  ; DerivCoarseY(value)
  %736 = call float @dx.op.unary.f32(i32 84, float %117)  ; DerivCoarseY(value)
  %737 = fadd fast float %731, %115
  %738 = fadd fast float %732, %116
  %739 = fadd fast float %733, %117
  %740 = fadd fast float %734, %115
  %741 = fadd fast float %735, %116
  %742 = fadd fast float %736, %117
  %743 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %744 = extractvalue %dx.types.CBufRet.f32 %743, 0
  %745 = extractvalue %dx.types.CBufRet.f32 %743, 1
  %746 = extractvalue %dx.types.CBufRet.f32 %743, 2
  %747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %748 = extractvalue %dx.types.CBufRet.f32 %747, 2
  %749 = extractvalue %dx.types.CBufRet.f32 %747, 3
  %750 = fmul fast float %744, %60
  %751 = fmul fast float %750, %748
  %752 = fmul fast float %745, %61
  %753 = fmul fast float %752, %749
  %754 = fptoui float %751 to i32
  %755 = fptoui float %753 to i32
  %756 = fadd fast float %744, -1.000000e+00
  %757 = fadd fast float %745, -1.000000e+00
  %758 = fptoui float %756 to i32
  %759 = fptoui float %757 to i32
  %760 = call i32 @dx.op.binary.i32(i32 40, i32 %754, i32 %758)  ; UMin(a,b)
  %761 = call i32 @dx.op.binary.i32(i32 40, i32 %755, i32 %759)  ; UMin(a,b)
  %762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %763 = extractvalue %dx.types.CBufRet.f32 %762, 2
  %764 = extractvalue %dx.types.CBufRet.f32 %762, 3
  %765 = fmul fast float %763, %55
  %766 = fsub fast float %765, %764
  %767 = fadd fast float %746, -1.000000e+00
  %768 = call float @dx.op.binary.f32(i32 36, float %766, float %767)  ; FMin(a,b)
  %769 = fptoui float %768 to i32
  %770 = fptoui float %744 to i32
  %771 = fptoui float %745 to i32
  %772 = mul i32 %769, %771
  %773 = add i32 %772, %761
  %774 = mul i32 %773, %770
  %775 = add i32 %774, %760
  %776 = shl i32 %775, 2
  %777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %776, i32 undef)  ; BufferLoad(srv,index,wot)
  %778 = extractvalue %dx.types.ResRet.i32 %777, 0
  %779 = and i32 %778, 1023
  %780 = lshr i32 %778, 10
  %781 = icmp eq i32 %779, 0
  br i1 %781, label %1210, label %782

; <label>:782                                     ; preds = %687
  %783 = and i32 %778, 1023
  br label %784

; <label>:784                                     ; preds = %911, %782
  %785 = phi float [ %912, %911 ], [ 0.000000e+00, %782 ]
  %786 = phi float [ %913, %911 ], [ %697, %782 ]
  %787 = phi float [ %914, %911 ], [ %702, %782 ]
  %788 = phi float [ %915, %911 ], [ %700, %782 ]
  %789 = phi float [ %916, %911 ], [ 0.000000e+00, %782 ]
  %790 = phi float [ %917, %911 ], [ 0.000000e+00, %782 ]
  %791 = phi float [ %918, %911 ], [ %693, %782 ]
  %792 = phi float [ %919, %911 ], [ %694, %782 ]
  %793 = phi float [ %920, %911 ], [ %695, %782 ]
  %794 = phi float [ %921, %911 ], [ %728, %782 ]
  %795 = phi float [ %922, %911 ], [ %729, %782 ]
  %796 = phi float [ %923, %911 ], [ %730, %782 ]
  %797 = phi float [ %924, %911 ], [ %699, %782 ]
  %798 = phi float [ %925, %911 ], [ %698, %782 ]
  %799 = phi float [ %926, %911 ], [ 0.000000e+00, %782 ]
  %800 = phi float [ %927, %911 ], [ %696, %782 ]
  %801 = phi float [ %928, %911 ], [ %690, %782 ]
  %802 = phi float [ %929, %911 ], [ %691, %782 ]
  %803 = phi float [ %930, %911 ], [ %692, %782 ]
  %804 = phi i32 [ %861, %911 ], [ 0, %782 ]
  %805 = add nuw nsw i32 %804, %780
  %806 = shl i32 %805, 2
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %19, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = shl i32 %808, 8
  %810 = or i32 %809, 48
  %811 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %810, i32 undef)  ; BufferLoad(srv,index,wot)
  %812 = extractvalue %dx.types.ResRet.f32 %811, 0
  %813 = extractvalue %dx.types.ResRet.f32 %811, 1
  %814 = extractvalue %dx.types.ResRet.f32 %811, 2
  %815 = extractvalue %dx.types.ResRet.f32 %811, 3
  %816 = or i32 %809, 64
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %816, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = extractvalue %dx.types.ResRet.i32 %817, 1
  %820 = or i32 %809, 80
  %821 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %820, i32 undef)  ; BufferLoad(srv,index,wot)
  %822 = extractvalue %dx.types.ResRet.f32 %821, 2
  %823 = extractvalue %dx.types.ResRet.f32 %821, 3
  %824 = or i32 %809, 96
  %825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %824, i32 undef)  ; BufferLoad(srv,index,wot)
  %826 = extractvalue %dx.types.ResRet.f32 %825, 0
  %827 = extractvalue %dx.types.ResRet.f32 %825, 1
  %828 = extractvalue %dx.types.ResRet.f32 %825, 2
  %829 = extractvalue %dx.types.ResRet.f32 %825, 3
  %830 = or i32 %809, 112
  %831 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %830, i32 undef)  ; BufferLoad(srv,index,wot)
  %832 = extractvalue %dx.types.ResRet.f32 %831, 2
  %833 = or i32 %809, 128
  %834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %833, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.f32 %834, 0
  %836 = extractvalue %dx.types.ResRet.f32 %834, 1
  %837 = extractvalue %dx.types.ResRet.f32 %834, 2
  %838 = extractvalue %dx.types.ResRet.f32 %834, 3
  %839 = or i32 %809, 144
  %840 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.f32 %840, 0
  %842 = extractvalue %dx.types.ResRet.f32 %840, 1
  %843 = extractvalue %dx.types.ResRet.f32 %840, 2
  %844 = extractvalue %dx.types.ResRet.f32 %840, 3
  %845 = or i32 %809, 160
  %846 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %845, i32 undef)  ; BufferLoad(srv,index,wot)
  %847 = extractvalue %dx.types.ResRet.f32 %846, 0
  %848 = extractvalue %dx.types.ResRet.f32 %846, 1
  %849 = extractvalue %dx.types.ResRet.f32 %846, 2
  %850 = extractvalue %dx.types.ResRet.f32 %846, 3
  %851 = or i32 %809, 192
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %20, i32 %851, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = or i32 %809, 208
  %855 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %854, i32 undef)  ; BufferLoad(srv,index,wot)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = or i32 %809, 248
  %858 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %857, i32 undef)  ; BufferLoad(srv,index,wot)
  %859 = extractvalue %dx.types.ResRet.f32 %858, 0
  %860 = extractvalue %dx.types.ResRet.f32 %858, 1
  %861 = add nuw nsw i32 %804, 1
  %862 = bitcast float %815 to i32
  %863 = and i32 %862, 2560
  %864 = icmp eq i32 %863, 0
  %865 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %809, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.f32 %865, 0
  %867 = extractvalue %dx.types.ResRet.f32 %865, 1
  %868 = extractvalue %dx.types.ResRet.f32 %865, 2
  %869 = extractvalue %dx.types.ResRet.f32 %865, 3
  %870 = call float @dx.op.dot4.f32(i32 56, float %866, float %867, float %868, float %869, float %115, float %116, float %117, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %871 = or i32 %809, 16
  %872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %871, i32 undef)  ; BufferLoad(srv,index,wot)
  %873 = extractvalue %dx.types.ResRet.f32 %872, 0
  %874 = extractvalue %dx.types.ResRet.f32 %872, 1
  %875 = extractvalue %dx.types.ResRet.f32 %872, 2
  %876 = extractvalue %dx.types.ResRet.f32 %872, 3
  %877 = call float @dx.op.dot4.f32(i32 56, float %873, float %874, float %875, float %876, float %115, float %116, float %117, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %878 = or i32 %809, 32
  %879 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %20, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.f32 %879, 0
  %881 = extractvalue %dx.types.ResRet.f32 %879, 1
  %882 = extractvalue %dx.types.ResRet.f32 %879, 2
  %883 = extractvalue %dx.types.ResRet.f32 %879, 3
  %884 = call float @dx.op.dot4.f32(i32 56, float %880, float %881, float %882, float %883, float %115, float %116, float %117, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %885 = call float @dx.op.unary.f32(i32 27, float %870)  ; Round_ni(value)
  %886 = call float @dx.op.unary.f32(i32 6, float %885)  ; FAbs(value)
  %887 = call float @dx.op.unary.f32(i32 27, float %877)  ; Round_ni(value)
  %888 = call float @dx.op.unary.f32(i32 6, float %887)  ; FAbs(value)
  %889 = call float @dx.op.unary.f32(i32 6, float %884)  ; FAbs(value)
  %890 = call float @dx.op.unary.f32(i32 27, float %889)  ; Round_ni(value)
  %891 = fadd fast float %888, %886
  %892 = fadd fast float %891, %890
  %893 = fcmp fast oeq float %892, 0.000000e+00
  %894 = call float @dx.op.dot4.f32(i32 56, float %866, float %867, float %868, float %869, float %737, float %738, float %739, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %895 = call float @dx.op.dot4.f32(i32 56, float %873, float %874, float %875, float %876, float %737, float %738, float %739, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %896 = call float @dx.op.dot4.f32(i32 56, float %866, float %867, float %868, float %869, float %740, float %741, float %742, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %897 = call float @dx.op.dot4.f32(i32 56, float %873, float %874, float %875, float %876, float %740, float %741, float %742, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %898 = fsub fast float %894, %870
  %899 = fsub fast float %896, %870
  %900 = fsub fast float %895, %877
  %901 = fsub fast float %897, %877
  %902 = call float @dx.op.dot3.f32(i32 55, float %812, float %813, float %814, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %903 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %904 = extractvalue %dx.types.CBufRet.f32 %903, 2
  %905 = fadd fast float %904, %902
  %906 = call float @dx.op.unary.f32(i32 7, float %905)  ; Saturate(value)
  %907 = extractvalue %dx.types.CBufRet.f32 %903, 0
  %908 = fcmp fast ogt float %906, %907
  %909 = and i1 %893, %908
  %910 = and i1 %864, %909
  br i1 %910, label %932, label %911

; <label>:911                                     ; preds = %1196, %1013, %932, %784
  %912 = phi float [ %785, %932 ], [ %1016, %1013 ], [ %1016, %1196 ], [ %785, %784 ]
  %913 = phi float [ %786, %932 ], [ %786, %1013 ], [ %1171, %1196 ], [ %786, %784 ]
  %914 = phi float [ %787, %932 ], [ %787, %1013 ], [ %1170, %1196 ], [ %787, %784 ]
  %915 = phi float [ %788, %932 ], [ %788, %1013 ], [ %1168, %1196 ], [ %788, %784 ]
  %916 = phi float [ %789, %932 ], [ %789, %1013 ], [ %1140, %1196 ], [ %789, %784 ]
  %917 = phi float [ %790, %932 ], [ %790, %1013 ], [ %1138, %1196 ], [ %790, %784 ]
  %918 = phi float [ %791, %932 ], [ %791, %1013 ], [ %1206, %1196 ], [ %791, %784 ]
  %919 = phi float [ %792, %932 ], [ %792, %1013 ], [ %1207, %1196 ], [ %792, %784 ]
  %920 = phi float [ %793, %932 ], [ %793, %1013 ], [ %1208, %1196 ], [ %793, %784 ]
  %921 = phi float [ %794, %932 ], [ %794, %1013 ], [ %1119, %1196 ], [ %794, %784 ]
  %922 = phi float [ %795, %932 ], [ %795, %1013 ], [ %1120, %1196 ], [ %795, %784 ]
  %923 = phi float [ %796, %932 ], [ %796, %1013 ], [ %1121, %1196 ], [ %796, %784 ]
  %924 = phi float [ %797, %932 ], [ %797, %1013 ], [ %1148, %1196 ], [ %797, %784 ]
  %925 = phi float [ %798, %932 ], [ %798, %1013 ], [ %1145, %1196 ], [ %798, %784 ]
  %926 = phi float [ %799, %932 ], [ %799, %1013 ], [ %1142, %1196 ], [ %799, %784 ]
  %927 = phi float [ %800, %932 ], [ %800, %1013 ], [ %1136, %1196 ], [ %800, %784 ]
  %928 = phi float [ %801, %932 ], [ %801, %1013 ], [ %1131, %1196 ], [ %801, %784 ]
  %929 = phi float [ %802, %932 ], [ %802, %1013 ], [ %1132, %1196 ], [ %802, %784 ]
  %930 = phi float [ %803, %932 ], [ %803, %1013 ], [ %1133, %1196 ], [ %803, %784 ]
  %931 = icmp eq i32 %861, %783
  br i1 %931, label %1209, label %784

; <label>:932                                     ; preds = %784
  %933 = extractvalue %dx.types.ResRet.f32 %831, 3
  %934 = extractvalue %dx.types.ResRet.f32 %831, 1
  %935 = extractvalue %dx.types.ResRet.f32 %831, 0
  %936 = extractvalue %dx.types.ResRet.f32 %821, 1
  %937 = extractvalue %dx.types.ResRet.f32 %821, 0
  %938 = extractvalue %dx.types.ResRet.i32 %817, 3
  %939 = extractvalue %dx.types.ResRet.i32 %817, 2
  %940 = add i32 %938, 0
  %941 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %940, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %942 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %943 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %941, %dx.types.Handle %942, float %870, float %877, float undef, float undef, i32 0, i32 0, i32 undef, float %898, float %900, float undef, float %899, float %901, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %944 = extractvalue %dx.types.ResRet.f32 %943, 0
  %945 = fmul fast float %944, %937
  %946 = fadd fast float %945, %936
  %947 = call float @dx.op.unary.f32(i32 7, float %946)  ; Saturate(value)
  %948 = fmul fast float %870, %826
  %949 = call float @dx.op.tertiary.f32(i32 46, float %827, float %877, float %948)  ; FMad(a,b,c)
  %950 = fadd fast float %949, %935
  %951 = fmul fast float %870, %828
  %952 = call float @dx.op.tertiary.f32(i32 46, float %829, float %877, float %951)  ; FMad(a,b,c)
  %953 = fadd fast float %952, %934
  %954 = fmul fast float %898, %826
  %955 = call float @dx.op.tertiary.f32(i32 46, float %827, float %900, float %954)  ; FMad(a,b,c)
  %956 = fmul fast float %898, %828
  %957 = call float @dx.op.tertiary.f32(i32 46, float %829, float %900, float %956)  ; FMad(a,b,c)
  %958 = fmul fast float %899, %826
  %959 = call float @dx.op.tertiary.f32(i32 46, float %827, float %901, float %958)  ; FMad(a,b,c)
  %960 = fmul fast float %899, %828
  %961 = call float @dx.op.tertiary.f32(i32 46, float %829, float %901, float %960)  ; FMad(a,b,c)
  %962 = add i32 %939, 0
  %963 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %962, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %964 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %963, %dx.types.Handle %942, float %950, float %953, float undef, float undef, i32 0, i32 0, i32 undef, float %955, float %957, float undef, float %959, float %961, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %965 = extractvalue %dx.types.ResRet.f32 %964, 0
  %966 = and i32 %862, 1024
  %967 = icmp ne i32 %966, 0
  %968 = fcmp fast ogt float %965, 0x3FE0101020000000
  %969 = uitofp i1 %968 to float
  %970 = select i1 %967, float %969, float %965
  %971 = and i32 %862, 8192
  %972 = icmp ne i32 %971, 0
  %973 = select i1 %972, float %933, float 1.000000e+00
  %974 = fmul fast float %870, 2.000000e+00
  %975 = fadd fast float %974, -1.000000e+00
  %976 = call float @dx.op.unary.f32(i32 6, float %975)  ; FAbs(value)
  %977 = fmul fast float %976, %859
  %978 = fsub fast float %977, %859
  %979 = call float @dx.op.unary.f32(i32 7, float %978)  ; Saturate(value)
  %980 = fmul fast float %877, 2.000000e+00
  %981 = fadd fast float %980, -1.000000e+00
  %982 = call float @dx.op.unary.f32(i32 6, float %981)  ; FAbs(value)
  %983 = fmul fast float %982, %860
  %984 = fsub fast float %983, %860
  %985 = call float @dx.op.unary.f32(i32 7, float %984)  ; Saturate(value)
  %986 = fmul fast float %889, %822
  %987 = fsub fast float %986, %822
  %988 = call float @dx.op.unary.f32(i32 7, float %987)  ; Saturate(value)
  %989 = fmul fast float %947, %973
  %990 = fmul fast float %989, %944
  %991 = fmul fast float %990, %979
  %992 = fmul fast float %991, %970
  %993 = fmul fast float %992, %985
  %994 = fmul fast float %993, %988
  %995 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %996 = extractvalue %dx.types.CBufRet.f32 %995, 1
  %997 = extractvalue %dx.types.CBufRet.f32 %995, 0
  %998 = fsub fast float %906, %997
  %999 = fmul fast float %998, %996
  %1000 = call float @dx.op.unary.f32(i32 7, float %999)  ; Saturate(value)
  %1001 = fmul fast float %994, %823
  %1002 = fadd fast float %994, %823
  %1003 = fmul fast float %1002, %832
  %1004 = fsub fast float %1003, %832
  %1005 = call float @dx.op.unary.f32(i32 7, float %1004)  ; Saturate(value)
  %1006 = and i32 %862, 128
  %1007 = icmp ne i32 %1006, 0
  %1008 = select i1 %1007, float %1005, float %1001
  %1009 = fmul fast float %1008, %1000
  %1010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1011 = extractvalue %dx.types.CBufRet.f32 %1010, 0
  %1012 = fcmp fast ugt float %1009, %1011
  br i1 %1012, label %1013, label %911

; <label>:1013                                    ; preds = %932
  %1014 = select i1 %972, float %1009, float 0.000000e+00
  %1015 = fadd fast float %1014, %785
  %1016 = call float @dx.op.unary.f32(i32 7, float %1015)  ; Saturate(value)
  br i1 %972, label %911, label %1017

; <label>:1017                                    ; preds = %1013
  %1018 = and i32 %862, 4
  %1019 = and i32 %862, 8
  %1020 = add i32 %818, 0
  %1021 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1020, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1022 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1023 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1021, %dx.types.Handle %1022, float %950, float %953, float undef, float undef, i32 0, i32 0, i32 undef, float %955, float %957, float undef, float %959, float %961, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1024 = extractvalue %dx.types.ResRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.ResRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.ResRet.f32 %1023, 2
  %1027 = extractvalue %dx.types.ResRet.f32 %1023, 3
  %1028 = bitcast float %844 to i32
  %1029 = and i32 %1028, 255
  %1030 = uitofp i32 %1029 to float
  %1031 = lshr i32 %1028, 8
  %1032 = and i32 %1031, 255
  %1033 = uitofp i32 %1032 to float
  %1034 = fmul fast float %1027, %1030
  %1035 = fadd fast float %1034, %1033
  %1036 = fmul fast float %1035, 0x3F70101000000000
  %1037 = add i32 %819, 0
  %1038 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1037, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1039 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1038, %dx.types.Handle %1022, float %950, float %953, float undef, float undef, i32 0, i32 0, i32 undef, float %955, float %957, float undef, float %959, float %961, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1043 = extractvalue %dx.types.ResRet.f32 %1039, 3
  %1044 = bitcast float %838 to i32
  %1045 = and i32 %1044, 255
  %1046 = uitofp i32 %1045 to float
  %1047 = lshr i32 %1044, 8
  %1048 = and i32 %1047, 255
  %1049 = uitofp i32 %1048 to float
  %1050 = lshr i32 %1044, 16
  %1051 = and i32 %1050, 255
  %1052 = uitofp i32 %1051 to float
  %1053 = fmul fast float %1052, 0x3F70101000000000
  %1054 = fmul fast float %1040, %1046
  %1055 = fadd fast float %1054, %1049
  %1056 = fmul fast float %1055, 0x3F70101000000000
  %1057 = fadd fast float %1041, -5.000000e-01
  %1058 = fadd fast float %1043, -5.000000e-01
  %1059 = fmul fast float %1057, %1053
  %1060 = fmul fast float %1058, %1053
  %1061 = fadd fast float %1059, 5.000000e-01
  %1062 = fadd fast float %1060, 5.000000e-01
  %1063 = fmul fast float %1024, %847
  %1064 = fmul fast float %1025, %848
  %1065 = fmul fast float %1026, %849
  %1066 = fmul fast float %1061, 2.000000e+00
  %1067 = fadd fast float %1066, -1.000000e+00
  %1068 = fmul fast float %1062, 2.000000e+00
  %1069 = fadd fast float %1068, -1.000000e+00
  %1070 = fadd fast float %1067, %1069
  %1071 = fmul fast float %1070, 5.000000e-01
  %1072 = fsub fast float %1067, %1069
  %1073 = fmul fast float %1072, 5.000000e-01
  %1074 = call float @dx.op.unary.f32(i32 6, float %1071)  ; FAbs(value)
  %1075 = fsub fast float 1.000000e+00, %1074
  %1076 = call float @dx.op.unary.f32(i32 6, float %1073)  ; FAbs(value)
  %1077 = fsub fast float %1075, %1076
  %1078 = call float @dx.op.dot3.f32(i32 55, float %1071, float %1073, float %1077, float %1071, float %1073, float %1077)  ; Dot3(ax,ay,az,bx,by,bz)
  %1079 = call float @dx.op.unary.f32(i32 25, float %1078)  ; Rsqrt(value)
  %1080 = fmul fast float %1071, %1079
  %1081 = fmul fast float %1073, %1079
  %1082 = fmul fast float %1079, %1077
  %1083 = fmul fast float %1082, %812
  %1084 = fmul fast float %1082, %813
  %1085 = fmul fast float %1082, %814
  %1086 = fmul fast float %1080, %835
  %1087 = fmul fast float %1080, %836
  %1088 = fmul fast float %1080, %837
  %1089 = fadd fast float %1086, %1083
  %1090 = fadd fast float %1087, %1084
  %1091 = fadd fast float %1088, %1085
  %1092 = fmul fast float %1081, %841
  %1093 = fmul fast float %1081, %842
  %1094 = fmul fast float %1081, %843
  %1095 = fadd fast float %1089, %1092
  %1096 = fadd fast float %1090, %1093
  %1097 = fadd fast float %1091, %1094
  %1098 = call float @dx.op.dot3.f32(i32 55, float %1095, float %1096, float %1097, float %1095, float %1096, float %1097)  ; Dot3(ax,ay,az,bx,by,bz)
  %1099 = call float @dx.op.unary.f32(i32 25, float %1098)  ; Rsqrt(value)
  %1100 = fmul fast float %1095, %1099
  %1101 = fmul fast float %1096, %1099
  %1102 = fmul fast float %1097, %1099
  %1103 = icmp ne i32 %1019, 0
  %1104 = select i1 %1103, float 1.000000e+00, float 0.000000e+00
  %1105 = fmul fast float %1009, %1104
  %1106 = and i32 %862, 1
  %1107 = icmp eq i32 %1106, 0
  br i1 %1107, label %1108, label %1112

; <label>:1108                                    ; preds = %1017
  %1109 = fsub fast float %1100, %794
  %1110 = fsub fast float %1101, %795
  %1111 = fsub fast float %1102, %796
  br label %1112

; <label>:1112                                    ; preds = %1108, %1017
  %1113 = phi float [ %1109, %1108 ], [ %1100, %1017 ]
  %1114 = phi float [ %1110, %1108 ], [ %1101, %1017 ]
  %1115 = phi float [ %1111, %1108 ], [ %1102, %1017 ]
  %1116 = fmul float %1115, %1105
  %1117 = fmul float %1114, %1105
  %1118 = fmul float %1113, %1105
  %1119 = fadd fast float %1118, %794
  %1120 = fadd fast float %1117, %795
  %1121 = fadd fast float %1116, %796
  %1122 = icmp ne i32 %1018, 0
  %1123 = select i1 %1122, float 1.000000e+00, float 0.000000e+00
  %1124 = fmul fast float %1009, %1123
  %1125 = fsub fast float %1063, %801
  %1126 = fsub fast float %1064, %802
  %1127 = fsub fast float %1065, %803
  %1128 = fmul fast float %1125, %1124
  %1129 = fmul fast float %1126, %1124
  %1130 = fmul fast float %1127, %1124
  %1131 = fadd fast float %1128, %801
  %1132 = fadd fast float %1129, %802
  %1133 = fadd fast float %1130, %803
  %1134 = fsub fast float %1036, %800
  %1135 = fmul fast float %1134, %1124
  %1136 = fadd fast float %1135, %800
  %1137 = fmul fast float %1124, %790
  %1138 = fsub fast float %790, %1137
  %1139 = fmul fast float %1124, %789
  %1140 = fsub fast float %789, %1139
  %1141 = fadd fast float %1009, %799
  %1142 = call float @dx.op.unary.f32(i32 7, float %1141)  ; Saturate(value)
  %1143 = fsub fast float %1056, %798
  %1144 = fmul fast float %1143, %1105
  %1145 = fadd fast float %1144, %798
  %1146 = fsub fast float %1042, %797
  %1147 = fmul fast float %1146, %1105
  %1148 = fadd fast float %1147, %797
  %1149 = call float @dx.op.dot3.f32(i32 55, float %1063, float %1064, float %1065, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %1151 = extractvalue %dx.types.CBufRet.f32 %1150, 0
  %1152 = extractvalue %dx.types.CBufRet.f32 %1150, 1
  %1153 = fmul fast float %1152, %1149
  %1154 = fadd fast float %1153, %1151
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  %1156 = bitcast float %850 to i32
  %1157 = and i32 %1156, 65535
  %1158 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1157)  ; LegacyF16ToF32(value)
  %1159 = lshr i32 %1156, 16
  %1160 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1159)  ; LegacyF16ToF32(value)
  %1161 = fcmp fast oge float %1158, 0.000000e+00
  %1162 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1163 = extractvalue %dx.types.CBufRet.f32 %1162, 0
  %1164 = select i1 %1161, float %1158, float %1163
  %1165 = fadd fast float %1164, %1160
  %1166 = fsub fast float %1155, %788
  %1167 = fmul fast float %1166, %1009
  %1168 = fadd fast float %1167, %788
  %1169 = fmul fast float %1165, %1009
  %1170 = call float @dx.op.binary.f32(i32 35, float %787, float %1169)  ; FMax(a,b)
  %1171 = call float @dx.op.binary.f32(i32 35, float %786, float %1009)  ; FMax(a,b)
  %1172 = and i32 %862, 16
  %1173 = icmp eq i32 %1172, 0
  br i1 %1173, label %1196, label %1174

; <label>:1174                                    ; preds = %1112
  %1175 = bitcast float %856 to i32
  %1176 = add i32 %853, 0
  %1177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1176, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1178 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1177, %dx.types.Handle %1022, float %950, float %953, float undef, float undef, i32 0, i32 0, i32 undef, float %955, float %957, float undef, float %959, float %961, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1179 = extractvalue %dx.types.ResRet.f32 %1178, 0
  %1180 = extractvalue %dx.types.ResRet.f32 %1178, 1
  %1181 = extractvalue %dx.types.ResRet.f32 %1178, 2
  %1182 = and i32 %1175, 65535
  %1183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1182)  ; LegacyF16ToF32(value)
  %1184 = fmul fast float %1179, %847
  %1185 = fmul fast float %1180, %848
  %1186 = fmul fast float %1181, %849
  %1187 = and i32 %862, 16384
  %1188 = icmp ne i32 %1187, 0
  %1189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1190 = extractvalue %dx.types.CBufRet.f32 %1189, 0
  %1191 = select i1 %1188, float %1190, float 1.000000e+00
  %1192 = fmul fast float %1191, %1183
  %1193 = fmul fast float %1184, %1192
  %1194 = fmul fast float %1185, %1192
  %1195 = fmul fast float %1186, %1192
  br label %1196

; <label>:1196                                    ; preds = %1174, %1112
  %1197 = phi float [ %1193, %1174 ], [ 0.000000e+00, %1112 ]
  %1198 = phi float [ %1194, %1174 ], [ 0.000000e+00, %1112 ]
  %1199 = phi float [ %1195, %1174 ], [ 0.000000e+00, %1112 ]
  %1200 = fsub fast float %1197, %791
  %1201 = fsub fast float %1198, %792
  %1202 = fsub fast float %1199, %793
  %1203 = fmul fast float %1200, %1009
  %1204 = fmul fast float %1201, %1009
  %1205 = fmul fast float %1202, %1009
  %1206 = fadd fast float %1203, %791
  %1207 = fadd fast float %1204, %792
  %1208 = fadd fast float %1205, %793
  br label %911

; <label>:1209                                    ; preds = %911
  br label %1210

; <label>:1210                                    ; preds = %1209, %687
  %1211 = phi float [ 0.000000e+00, %687 ], [ %912, %1209 ]
  %1212 = phi float [ %697, %687 ], [ %913, %1209 ]
  %1213 = phi float [ %702, %687 ], [ %914, %1209 ]
  %1214 = phi float [ %700, %687 ], [ %915, %1209 ]
  %1215 = phi float [ 0.000000e+00, %687 ], [ %916, %1209 ]
  %1216 = phi float [ 0.000000e+00, %687 ], [ %917, %1209 ]
  %1217 = phi float [ %693, %687 ], [ %918, %1209 ]
  %1218 = phi float [ %694, %687 ], [ %919, %1209 ]
  %1219 = phi float [ %695, %687 ], [ %920, %1209 ]
  %1220 = phi float [ %728, %687 ], [ %921, %1209 ]
  %1221 = phi float [ %729, %687 ], [ %922, %1209 ]
  %1222 = phi float [ %730, %687 ], [ %923, %1209 ]
  %1223 = phi float [ %699, %687 ], [ %924, %1209 ]
  %1224 = phi float [ %698, %687 ], [ %925, %1209 ]
  %1225 = phi float [ 0.000000e+00, %687 ], [ %926, %1209 ]
  %1226 = phi float [ %696, %687 ], [ %927, %1209 ]
  %1227 = phi float [ %690, %687 ], [ %928, %1209 ]
  %1228 = phi float [ %691, %687 ], [ %929, %1209 ]
  %1229 = phi float [ %692, %687 ], [ %930, %1209 ]
  %1230 = call float @dx.op.dot3.f32(i32 55, float %1220, float %1221, float %1222, float %1220, float %1221, float %1222)  ; Dot3(ax,ay,az,bx,by,bz)
  %1231 = call float @dx.op.unary.f32(i32 25, float %1230)  ; Rsqrt(value)
  %1232 = fmul fast float %1231, %1220
  %1233 = fmul fast float %1231, %1221
  %1234 = fmul fast float %1231, %1222
  %1235 = fadd fast float %1225, %697
  %1236 = call float @dx.op.unary.f32(i32 7, float %1235)  ; Saturate(value)
  %1237 = call float @dx.op.dot3.f32(i32 55, float %1232, float %1233, float %1234, float %1232, float %1233, float %1234)  ; Dot3(ax,ay,az,bx,by,bz)
  %1238 = call float @dx.op.unary.f32(i32 25, float %1237)  ; Rsqrt(value)
  %1239 = fmul fast float %1238, %1232
  %1240 = fmul fast float %1238, %1233
  %1241 = fmul fast float %1238, %1234
  %1242 = fadd fast float %1226, 0xBFB99999A0000000
  %1243 = call float @dx.op.unary.f32(i32 7, float %1242)  ; Saturate(value)
  %1244 = fmul fast float %1243, 0x3FF1C71C80000000
  %1245 = call float @dx.op.binary.f32(i32 36, float %1226, float 0x3FB99999A0000000)  ; FMin(a,b)
  %1246 = fsub fast float 1.000000e+00, %1244
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  %1248 = fmul fast float %1247, %1227
  %1249 = fmul fast float %1247, %1228
  %1250 = fmul fast float %1247, %1229
  %1251 = call float @dx.op.unary.f32(i32 7, float %1248)  ; Saturate(value)
  %1252 = call float @dx.op.unary.f32(i32 7, float %1249)  ; Saturate(value)
  %1253 = call float @dx.op.unary.f32(i32 7, float %1250)  ; Saturate(value)
  %1254 = fmul fast float %1244, %1227
  %1255 = fmul fast float %1244, %1228
  %1256 = fmul fast float %1244, %1229
  %1257 = fadd fast float %1254, %1245
  %1258 = fadd fast float %1255, %1245
  %1259 = fadd fast float %1256, %1245
  %1260 = call float @dx.op.unary.f32(i32 7, float %1257)  ; Saturate(value)
  %1261 = call float @dx.op.unary.f32(i32 7, float %1258)  ; Saturate(value)
  %1262 = call float @dx.op.unary.f32(i32 7, float %1259)  ; Saturate(value)
  %1263 = call float @dx.op.unary.f32(i32 7, float %1224)  ; Saturate(value)
  %1264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %1265 = extractvalue %dx.types.CBufRet.i32 %1264, 3
  %1266 = and i32 %1265, 8
  %1267 = icmp ne i32 %1266, 0
  %1268 = call float @dx.op.binary.f32(i32 35, float %1251, float %1227)  ; FMax(a,b)
  %1269 = call float @dx.op.binary.f32(i32 35, float %1252, float %1227)  ; FMax(a,b)
  %1270 = call float @dx.op.binary.f32(i32 35, float %1253, float %1227)  ; FMax(a,b)
  %1271 = call float @dx.op.dot3.f32(i32 55, float %1251, float %1252, float %1253, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1272 = select i1 %186, float %1227, float %1251
  %1273 = select i1 %186, float %1271, float %1252
  %1274 = select i1 %186, float 1.000000e+00, float %1253
  %1275 = select i1 %1267, float %1268, float %1272
  %1276 = select i1 %1267, float %1269, float %1273
  %1277 = select i1 %1267, float %1270, float %1274
  %1278 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1279 = extractvalue %dx.types.CBufRet.f32 %1278, 0
  %1280 = extractvalue %dx.types.CBufRet.f32 %1278, 1
  %1281 = extractvalue %dx.types.CBufRet.f32 %1278, 2
  %1282 = fadd fast float %1279, %115
  %1283 = fadd fast float %1280, %116
  %1284 = fadd fast float %1281, %117
  %1285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %1286 = extractvalue %dx.types.CBufRet.f32 %1285, 0
  %1287 = extractvalue %dx.types.CBufRet.f32 %1285, 1
  %1288 = fsub fast float %1282, %1286
  %1289 = fsub fast float %1283, %1287
  %1290 = fmul fast float %1288, %1288
  %1291 = fmul fast float %1289, %1289
  %1292 = fadd fast float %1290, %1291
  %1293 = call float @dx.op.unary.f32(i32 24, float %1292)  ; Sqrt(value)
  %1294 = extractvalue %dx.types.CBufRet.f32 %1285, 2
  %1295 = fcmp fast olt float %1293, %1294
  br i1 %1295, label %1296, label %1363

; <label>:1296                                    ; preds = %1210
  %1297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1298 = extractvalue %dx.types.CBufRet.f32 %1297, 0
  %1299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1300 = extractvalue %dx.types.CBufRet.f32 %1299, 0
  %1301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1302 = extractvalue %dx.types.CBufRet.f32 %1301, 0
  %1303 = extractvalue %dx.types.CBufRet.f32 %1297, 1
  %1304 = extractvalue %dx.types.CBufRet.f32 %1299, 1
  %1305 = extractvalue %dx.types.CBufRet.f32 %1301, 1
  %1306 = extractvalue %dx.types.CBufRet.f32 %1297, 3
  %1307 = extractvalue %dx.types.CBufRet.f32 %1299, 3
  %1308 = extractvalue %dx.types.CBufRet.f32 %1301, 3
  %1309 = fadd fast float %1306, %1282
  %1310 = fadd fast float %1307, %1283
  %1311 = fadd fast float %1308, %1284
  %1312 = fmul fast float %1309, %1298
  %1313 = call float @dx.op.tertiary.f32(i32 46, float %1310, float %1300, float %1312)  ; FMad(a,b,c)
  %1314 = call float @dx.op.tertiary.f32(i32 46, float %1311, float %1302, float %1313)  ; FMad(a,b,c)
  %1315 = fmul fast float %1309, %1303
  %1316 = call float @dx.op.tertiary.f32(i32 46, float %1310, float %1304, float %1315)  ; FMad(a,b,c)
  %1317 = call float @dx.op.tertiary.f32(i32 46, float %1311, float %1305, float %1316)  ; FMad(a,b,c)
  %1318 = fsub fast float %1314, %1306
  %1319 = fsub fast float %1317, %1307
  %1320 = fsub fast float %1318, %1286
  %1321 = fadd fast float %1320, %1294
  %1322 = fsub fast float %1319, %1287
  %1323 = fadd fast float %1322, %1294
  %1324 = extractvalue %dx.types.CBufRet.f32 %1285, 3
  %1325 = fmul fast float %1321, %1324
  %1326 = fmul fast float %1323, %1324
  %1327 = call float @dx.op.unary.f32(i32 7, float %1325)  ; Saturate(value)
  %1328 = call float @dx.op.unary.f32(i32 7, float %1326)  ; Saturate(value)
  %1329 = fsub fast float 1.000000e+00, %1327
  %1330 = fsub fast float 1.000000e+00, %1328
  %1331 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %34, float %1329, float %1330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1332 = extractvalue %dx.types.ResRet.f32 %1331, 0
  %1333 = fcmp fast ugt float %1332, 0.000000e+00
  br i1 %1333, label %1334, label %1637

; <label>:1334                                    ; preds = %1296
  %1335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1336 = extractvalue %dx.types.CBufRet.f32 %1335, 2
  %1337 = fmul fast float %1336, %1332
  %1338 = extractvalue %dx.types.CBufRet.f32 %1335, 3
  %1339 = fadd fast float %1338, %1337
  %1340 = extractvalue %dx.types.CBufRet.f32 %1301, 2
  %1341 = fadd fast float %1339, %1308
  %1342 = fmul fast float %1314, %1302
  %1343 = call float @dx.op.tertiary.f32(i32 46, float %1317, float %1305, float %1342)  ; FMad(a,b,c)
  %1344 = call float @dx.op.tertiary.f32(i32 46, float %1341, float %1340, float %1343)  ; FMad(a,b,c)
  %1345 = fsub fast float %1344, %1308
  %1346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1347 = extractvalue %dx.types.CBufRet.f32 %1346, 2
  %1348 = fsub fast float %1345, %1347
  %1349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %34, float %1329, float %1330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1350 = extractvalue %dx.types.ResRet.f32 %1349, 0
  %1351 = extractvalue %dx.types.ResRet.f32 %1349, 1
  %1352 = extractvalue %dx.types.ResRet.f32 %1349, 2
  %1353 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %34, float %1329, float %1330, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1354 = extractvalue %dx.types.ResRet.f32 %1353, 0
  %1355 = extractvalue %dx.types.ResRet.f32 %1353, 1
  %1356 = extractvalue %dx.types.ResRet.f32 %1353, 2
  %1357 = fadd fast float %1354, %1350
  %1358 = fmul fast float %1357, 0x3F847AE140000000
  %1359 = fadd fast float %1355, %1351
  %1360 = fmul fast float %1359, 0x3F847AE140000000
  %1361 = fadd fast float %1356, %1352
  %1362 = fmul fast float %1361, 0x3F847AE140000000
  br label %1637

; <label>:1363                                    ; preds = %1210
  %1364 = and i32 %162, 1
  %1365 = icmp eq i32 %1364, 0
  br i1 %1365, label %1637, label %1366

; <label>:1366                                    ; preds = %1363
  %1367 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1368 = extractvalue %dx.types.CBufRet.f32 %1367, 0
  %1369 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1370 = extractvalue %dx.types.CBufRet.f32 %1369, 0
  %1371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1372 = extractvalue %dx.types.CBufRet.f32 %1371, 0
  %1373 = extractvalue %dx.types.CBufRet.f32 %1367, 1
  %1374 = extractvalue %dx.types.CBufRet.f32 %1369, 1
  %1375 = extractvalue %dx.types.CBufRet.f32 %1371, 1
  %1376 = extractvalue %dx.types.CBufRet.f32 %1367, 3
  %1377 = extractvalue %dx.types.CBufRet.f32 %1369, 3
  %1378 = extractvalue %dx.types.CBufRet.f32 %1371, 3
  %1379 = fadd fast float %1376, %1282
  %1380 = fadd fast float %1377, %1283
  %1381 = fadd fast float %1378, %1284
  %1382 = fmul fast float %1379, %1368
  %1383 = call float @dx.op.tertiary.f32(i32 46, float %1380, float %1370, float %1382)  ; FMad(a,b,c)
  %1384 = call float @dx.op.tertiary.f32(i32 46, float %1381, float %1372, float %1383)  ; FMad(a,b,c)
  %1385 = fmul fast float %1379, %1373
  %1386 = call float @dx.op.tertiary.f32(i32 46, float %1380, float %1374, float %1385)  ; FMad(a,b,c)
  %1387 = call float @dx.op.tertiary.f32(i32 46, float %1381, float %1375, float %1386)  ; FMad(a,b,c)
  %1388 = fsub fast float %1384, %1376
  %1389 = fsub fast float %1387, %1377
  %1390 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %1391 = extractvalue %dx.types.CBufRet.f32 %1390, 0
  %1392 = extractvalue %dx.types.CBufRet.f32 %1390, 1
  %1393 = extractvalue %dx.types.CBufRet.f32 %1390, 2
  %1394 = extractvalue %dx.types.CBufRet.f32 %1390, 3
  %1395 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1396 = extractvalue %dx.types.CBufRet.f32 %1395, 3
  %1397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %1398 = extractvalue %dx.types.CBufRet.i32 %1397, 0
  %1399 = extractvalue %dx.types.CBufRet.i32 %1397, 1
  %1400 = udiv i32 %1399, %1398
  %1401 = fsub fast float %1388, %1391
  %1402 = fsub fast float %1389, %1392
  %1403 = call float @dx.op.binary.f32(i32 35, float %1401, float 0.000000e+00)  ; FMax(a,b)
  %1404 = call float @dx.op.binary.f32(i32 35, float %1402, float 0.000000e+00)  ; FMax(a,b)
  %1405 = call float @dx.op.binary.f32(i32 36, float %1403, float %1393)  ; FMin(a,b)
  %1406 = call float @dx.op.binary.f32(i32 36, float %1404, float %1394)  ; FMin(a,b)
  %1407 = add i32 %1398, -1
  %1408 = add i32 %1400, -1
  %1409 = fmul fast float %1405, %1396
  %1410 = fmul fast float %1406, %1396
  %1411 = fptoui float %1409 to i32
  %1412 = fptoui float %1410 to i32
  %1413 = call i32 @dx.op.binary.i32(i32 40, i32 %1411, i32 %1407)  ; UMin(a,b)
  %1414 = call i32 @dx.op.binary.i32(i32 40, i32 %1412, i32 %1408)  ; UMin(a,b)
  %1415 = mul i32 %1414, %1398
  %1416 = add i32 %1415, %1413
  %1417 = shl i32 %1416, 2
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = icmp eq i32 %1419, -1
  br i1 %1420, label %1637, label %1421

; <label>:1421                                    ; preds = %1366
  %1422 = mul i32 %1419, 148
  %1423 = add i32 %1422, 4
  %1424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1423, i32 undef)  ; BufferLoad(srv,index,wot)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = add i32 %1422, 8
  %1427 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1426, i32 undef)  ; BufferLoad(srv,index,wot)
  %1428 = extractvalue %dx.types.ResRet.f32 %1427, 0
  %1429 = add i32 %1422, 36
  %1430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1429, i32 undef)  ; BufferLoad(srv,index,wot)
  %1431 = extractvalue %dx.types.ResRet.f32 %1430, 0
  %1432 = add i32 %1422, 60
  %1433 = add i32 %1422, 92
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = add i32 %1422, 116
  %1437 = fsub fast float %1388, %1425
  %1438 = fsub fast float %1389, %1428
  %1439 = fmul fast float %1396, %1437
  %1440 = fmul fast float %1396, %1438
  %1441 = call float @dx.op.unary.f32(i32 7, float %1439)  ; Saturate(value)
  %1442 = call float @dx.op.unary.f32(i32 7, float %1440)  ; Saturate(value)
  %1443 = fsub fast float 1.000000e+00, %1442
  %1444 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.f32 %1444, 2
  %1446 = call float @dx.op.unary.f32(i32 83, float %1441)  ; DerivCoarseX(value)
  %1447 = call float @dx.op.unary.f32(i32 83, float %1443)  ; DerivCoarseX(value)
  %1448 = call float @dx.op.unary.f32(i32 84, float %1441)  ; DerivCoarseY(value)
  %1449 = call float @dx.op.unary.f32(i32 84, float %1443)  ; DerivCoarseY(value)
  %1450 = fmul fast float %1446, %1445
  %1451 = fmul fast float %1447, %1445
  %1452 = fmul fast float %1448, %1445
  %1453 = fmul fast float %1449, %1445
  %1454 = call float @dx.op.dot2.f32(i32 54, float %1452, float %1453, float %1452, float %1453)  ; Dot2(ax,ay,bx,by)
  %1455 = call float @dx.op.dot2.f32(i32 54, float %1450, float %1451, float %1450, float %1451)  ; Dot2(ax,ay,bx,by)
  %1456 = call float @dx.op.binary.f32(i32 35, float %1455, float %1454)  ; FMax(a,b)
  %1457 = call float @dx.op.unary.f32(i32 23, float %1456)  ; Log(value)
  %1458 = fmul fast float %1457, 5.000000e-01
  %1459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %1460 = extractvalue %dx.types.CBufRet.f32 %1459, 1
  %1461 = fadd fast float %1460, %1458
  %1462 = call float @dx.op.binary.f32(i32 35, float %1461, float 0.000000e+00)  ; FMax(a,b)
  %1463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %1464 = extractvalue %dx.types.CBufRet.f32 %1463, 3
  %1465 = fadd fast float %1464, %1462
  %1466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %1467 = extractvalue %dx.types.CBufRet.f32 %1466, 3
  %1468 = fadd fast float %1465, %1467
  %1469 = add i32 %1435, 0
  %1470 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1469, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1471 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1470, i32 0)  ; GetDimensions(handle,mipLevel)
  %1472 = extractvalue %dx.types.Dimensions %1471, 0
  %1473 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1472)  ; FirstbitLo(value)
  %1474 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1475 = extractvalue %dx.types.CBufRet.i32 %1474, 1
  %1476 = sub nsw i32 %1475, %1473
  %1477 = sitofp i32 %1476 to float
  %1478 = fsub fast float %1468, %1477
  %1479 = call float @dx.op.binary.f32(i32 35, float %1478, float 0.000000e+00)  ; FMax(a,b)
  %1480 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1470, %dx.types.Handle %33, float %1441, float %1443, float %1431, float undef, i32 0, i32 0, i32 undef, float %1479)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1481 = extractvalue %dx.types.ResRet.f32 %1480, 0
  %1482 = fcmp ule float %1481, 0x3FE0101020000000
  %1483 = extractvalue %dx.types.CBufRet.i32 %1474, 0
  %1484 = and i32 %1483, 128
  %1485 = icmp ne i32 %1484, 0
  %1486 = and i1 %1482, %1485
  br i1 %1486, label %1637, label %1487

; <label>:1487                                    ; preds = %1421
  %1488 = add i32 %1422, 20
  %1489 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1488, i32 undef)  ; BufferLoad(srv,index,wot)
  %1490 = extractvalue %dx.types.ResRet.f32 %1489, 0
  %1491 = add i32 %1422, 24
  %1492 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1491, i32 undef)  ; BufferLoad(srv,index,wot)
  %1493 = extractvalue %dx.types.ResRet.f32 %1492, 0
  %1494 = add i32 %1422, 40
  %1495 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1494, i32 undef)  ; BufferLoad(srv,index,wot)
  %1496 = extractvalue %dx.types.ResRet.f32 %1495, 0
  %1497 = add i32 %1422, 96
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1497, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1501 = extractvalue %dx.types.CBufRet.f32 %1500, 2
  %1502 = fmul fast float %1501, %1441
  %1503 = fmul fast float %1501, %1443
  %1504 = extractvalue %dx.types.CBufRet.f32 %1500, 3
  %1505 = fadd fast float %1502, %1504
  %1506 = fadd fast float %1503, %1504
  %1507 = add i32 %1499, 0
  %1508 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1507, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1509 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1508, i32 0)  ; GetDimensions(handle,mipLevel)
  %1510 = extractvalue %dx.types.Dimensions %1509, 0
  %1511 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1510)  ; FirstbitLo(value)
  %1512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1513 = extractvalue %dx.types.CBufRet.i32 %1512, 1
  %1514 = sub nsw i32 %1513, %1511
  %1515 = sitofp i32 %1514 to float
  %1516 = fsub fast float %1465, %1515
  %1517 = call float @dx.op.binary.f32(i32 35, float %1516, float 0.000000e+00)  ; FMax(a,b)
  %1518 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1508, %dx.types.Handle %33, float %1505, float %1506, float %1496, float undef, i32 0, i32 0, i32 undef, float %1517)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1519 = extractvalue %dx.types.ResRet.f32 %1518, 0
  %1520 = fmul fast float %1519, %1490
  %1521 = fadd fast float %1520, %1493
  %1522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %1523 = extractvalue %dx.types.CBufRet.f32 %1522, 0
  %1524 = extractvalue %dx.types.CBufRet.f32 %1522, 1
  %1525 = extractvalue %dx.types.CBufRet.f32 %1522, 2
  %1526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %1527 = extractvalue %dx.types.CBufRet.f32 %1526, 3
  %1528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %1529 = extractvalue %dx.types.CBufRet.f32 %1528, 3
  %1530 = extractvalue %dx.types.CBufRet.f32 %1522, 3
  %1531 = fadd fast float %1527, %1388
  %1532 = fadd fast float %1529, %1389
  %1533 = fadd fast float %1521, %1530
  %1534 = fmul fast float %1531, %1523
  %1535 = call float @dx.op.tertiary.f32(i32 46, float %1532, float %1524, float %1534)  ; FMad(a,b,c)
  %1536 = call float @dx.op.tertiary.f32(i32 46, float %1533, float %1525, float %1535)  ; FMad(a,b,c)
  %1537 = fsub fast float %1536, %1530
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 2
  %1540 = fsub fast float %1537, %1539
  %1541 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %1542 = extractvalue %dx.types.CBufRet.i32 %1541, 0
  %1543 = call i32 @dx.op.binary.i32(i32 40, i32 %1419, i32 %1542)  ; UMin(a,b)
  %1544 = mul i32 %1543, 36
  %1545 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1544, i32 undef)  ; BufferLoad(srv,index,wot)
  %1546 = extractvalue %dx.types.ResRet.i32 %1545, 0
  %1547 = add i32 %1544, 4
  %1548 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %1549 = extractvalue %dx.types.CBufRet.f32 %1548, 0
  %1550 = fmul fast float %1549, %1441
  %1551 = fmul fast float %1549, %1443
  %1552 = extractvalue %dx.types.CBufRet.f32 %1548, 1
  %1553 = fadd fast float %1550, %1552
  %1554 = fadd fast float %1551, %1552
  %1555 = icmp eq i32 %1546, 0
  br i1 %1555, label %1624, label %1556

; <label>:1556                                    ; preds = %1487
  br label %1557

; <label>:1557                                    ; preds = %1614, %1556
  %1558 = phi float [ %1615, %1614 ], [ 0.000000e+00, %1556 ]
  %1559 = phi float [ %1616, %1614 ], [ 0.000000e+00, %1556 ]
  %1560 = phi float [ %1617, %1614 ], [ 0.000000e+00, %1556 ]
  %1561 = phi float [ %1618, %1614 ], [ 0.000000e+00, %1556 ]
  %1562 = phi float [ %1619, %1614 ], [ 0.000000e+00, %1556 ]
  %1563 = phi float [ %1620, %1614 ], [ 0.000000e+00, %1556 ]
  %1564 = phi i32 [ %1621, %1614 ], [ 0, %1556 ]
  %1565 = shl i32 %1564, 2
  %1566 = add i32 %1432, %1565
  %1567 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %1566, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.f32 %1567, 0
  %1569 = add i32 %1436, %1565
  %1570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %1569, i32 undef)  ; BufferLoad(srv,index,wot)
  %1571 = extractvalue %dx.types.ResRet.i32 %1570, 0
  %1572 = add i32 %1571, 0
  %1573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %1572, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1574 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %1573, i32 0)  ; GetDimensions(handle,mipLevel)
  %1575 = extractvalue %dx.types.Dimensions %1574, 0
  %1576 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %1575)  ; FirstbitLo(value)
  %1577 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %1578 = extractvalue %dx.types.CBufRet.i32 %1577, 1
  %1579 = sub nsw i32 %1578, %1576
  %1580 = sitofp i32 %1579 to float
  %1581 = fsub fast float %1465, %1580
  %1582 = call float @dx.op.binary.f32(i32 35, float %1581, float 0.000000e+00)  ; FMax(a,b)
  %1583 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1573, %dx.types.Handle %33, float %1553, float %1554, float %1568, float undef, i32 0, i32 0, i32 undef, float %1582)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1584 = extractvalue %dx.types.ResRet.f32 %1583, 0
  %1585 = fcmp fast ogt float %1584, 0.000000e+00
  br i1 %1585, label %1586, label %1614

; <label>:1586                                    ; preds = %1557
  %1587 = add i32 %1547, %1565
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %1587, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 32767
  %1591 = mul nuw nsw i32 %1590, 928
  %1592 = add nuw nsw i32 %1591, 48
  %1593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1592, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.f32 %1593, 0
  %1595 = extractvalue %dx.types.ResRet.f32 %1593, 1
  %1596 = extractvalue %dx.types.ResRet.f32 %1593, 2
  %1597 = add nuw nsw i32 %1591, 60
  %1598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %1597, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.f32 %1598, 0
  %1600 = extractvalue %dx.types.ResRet.f32 %1598, 1
  %1601 = extractvalue %dx.types.ResRet.f32 %1598, 2
  %1602 = fmul fast float %1594, %1584
  %1603 = fmul fast float %1595, %1584
  %1604 = fmul fast float %1596, %1584
  %1605 = fadd fast float %1602, %1558
  %1606 = fadd fast float %1603, %1559
  %1607 = fadd fast float %1604, %1560
  %1608 = fmul fast float %1599, %1584
  %1609 = fmul fast float %1600, %1584
  %1610 = fmul fast float %1601, %1584
  %1611 = fadd fast float %1608, %1561
  %1612 = fadd fast float %1609, %1562
  %1613 = fadd fast float %1610, %1563
  br label %1614

; <label>:1614                                    ; preds = %1586, %1557
  %1615 = phi float [ %1605, %1586 ], [ %1558, %1557 ]
  %1616 = phi float [ %1606, %1586 ], [ %1559, %1557 ]
  %1617 = phi float [ %1607, %1586 ], [ %1560, %1557 ]
  %1618 = phi float [ %1611, %1586 ], [ %1561, %1557 ]
  %1619 = phi float [ %1612, %1586 ], [ %1562, %1557 ]
  %1620 = phi float [ %1613, %1586 ], [ %1563, %1557 ]
  %1621 = add nuw i32 %1564, 1
  %1622 = icmp eq i32 %1621, %1546
  br i1 %1622, label %1623, label %1557

; <label>:1623                                    ; preds = %1614
  br label %1624

; <label>:1624                                    ; preds = %1623, %1487
  %1625 = phi float [ 0.000000e+00, %1487 ], [ %1615, %1623 ]
  %1626 = phi float [ 0.000000e+00, %1487 ], [ %1616, %1623 ]
  %1627 = phi float [ 0.000000e+00, %1487 ], [ %1617, %1623 ]
  %1628 = phi float [ 0.000000e+00, %1487 ], [ %1618, %1623 ]
  %1629 = phi float [ 0.000000e+00, %1487 ], [ %1619, %1623 ]
  %1630 = phi float [ 0.000000e+00, %1487 ], [ %1620, %1623 ]
  %1631 = fadd fast float %1628, %1625
  %1632 = fmul fast float %1631, 0x3F847AE140000000
  %1633 = fadd fast float %1629, %1626
  %1634 = fmul fast float %1633, 0x3F847AE140000000
  %1635 = fadd fast float %1630, %1627
  %1636 = fmul fast float %1635, 0x3F847AE140000000
  br label %1637

; <label>:1637                                    ; preds = %1624, %1421, %1366, %1363, %1334, %1296
  %1638 = phi float [ %1348, %1334 ], [ -1.310720e+05, %1296 ], [ %1540, %1624 ], [ -1.310720e+05, %1366 ], [ -1.310720e+05, %1421 ], [ -1.310720e+05, %1363 ]
  %1639 = phi float [ %1358, %1334 ], [ 0.000000e+00, %1296 ], [ %1632, %1624 ], [ 0.000000e+00, %1366 ], [ 0.000000e+00, %1421 ], [ 0.000000e+00, %1363 ]
  %1640 = phi float [ %1360, %1334 ], [ 0.000000e+00, %1296 ], [ %1634, %1624 ], [ 0.000000e+00, %1366 ], [ 0.000000e+00, %1421 ], [ 0.000000e+00, %1363 ]
  %1641 = phi float [ %1362, %1334 ], [ 0.000000e+00, %1296 ], [ %1636, %1624 ], [ 0.000000e+00, %1366 ], [ 0.000000e+00, %1421 ], [ 0.000000e+00, %1363 ]
  %1642 = phi i1 [ true, %1334 ], [ false, %1296 ], [ true, %1624 ], [ false, %1366 ], [ false, %1421 ], [ false, %1363 ]
  %1643 = and i32 %162, 3
  %1644 = icmp eq i32 %1643, 1
  %1645 = select i1 %1644, float 1.000000e+00, float 0.000000e+00
  %1646 = fsub fast float %1638, %117
  %1647 = call float @dx.op.unary.f32(i32 7, float %1646)  ; Saturate(value)
  %1648 = select i1 %1642, float %1647, float 1.000000e+00
  %1649 = fmul fast float %1648, %1645
  %1650 = icmp eq i32 %1643, 3
  %1651 = select i1 %1650, float 1.000000e+00, float %1649
  %1652 = call float @dx.op.binary.f32(i32 35, float %1211, float %1651)  ; FMax(a,b)
  %1653 = call float @dx.op.unary.f32(i32 7, float %1652)  ; Saturate(value)
  %1654 = fcmp fast une float %1653, 0.000000e+00
  %1655 = call float @dx.op.dot3.f32(i32 55, float %115, float %116, float %117, float %115, float %116, float %117)  ; Dot3(ax,ay,az,bx,by,bz)
  %1656 = call float @dx.op.unary.f32(i32 25, float %1655)  ; Rsqrt(value)
  br i1 %1654, label %1664, label %1657

; <label>:1657                                    ; preds = %1637
  %1658 = fmul fast float %1656, %115
  %1659 = fmul fast float %1656, %116
  %1660 = fmul fast float %1656, %117
  %1661 = fsub fast float -0.000000e+00, %1658
  %1662 = fsub fast float -0.000000e+00, %1659
  %1663 = fsub fast float -0.000000e+00, %1660
  br label %1832

; <label>:1664                                    ; preds = %1637
  %1665 = fmul fast float %115, %1656
  %1666 = fsub fast float -0.000000e+00, %1665
  %1667 = fmul fast float %116, %1656
  %1668 = fsub fast float -0.000000e+00, %1667
  %1669 = fmul fast float %117, %1656
  %1670 = fsub fast float -0.000000e+00, %1669
  %1671 = call float @dx.op.dot3.f32(i32 55, float %1666, float %1668, float %1670, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %1672 = fmul fast float %1653, 2.500000e+00
  %1673 = call float @dx.op.unary.f32(i32 7, float %1672)  ; Saturate(value)
  %1674 = fmul fast float %1653, 0x4013FFFFE0000000
  %1675 = fadd fast float %1674, 0xBFFFFFFFE0000000
  %1676 = call float @dx.op.unary.f32(i32 7, float %1675)  ; Saturate(value)
  %1677 = fmul fast float %1653, 0x4004000020000000
  %1678 = fadd fast float %1677, 0xBFF8000040000000
  %1679 = call float @dx.op.unary.f32(i32 7, float %1678)  ; Saturate(value)
  %1680 = call float @dx.op.unary.f32(i32 7, float %1673)  ; Saturate(value)
  %1681 = fmul fast float %1242, 1.000000e+01
  %1682 = call float @dx.op.unary.f32(i32 7, float %1681)  ; Saturate(value)
  %1683 = fmul fast float %1682, 2.000000e+00
  %1684 = fsub fast float 3.000000e+00, %1683
  %1685 = fmul fast float %1682, %1682
  %1686 = fmul fast float %1685, %1684
  %1687 = fsub fast float 1.000000e+00, %1686
  %1688 = fsub fast float 0x3FE3333340000000, %1263
  %1689 = fmul fast float %1688, 0x400AAAAAA0000000
  %1690 = call float @dx.op.unary.f32(i32 7, float %1689)  ; Saturate(value)
  %1691 = fmul fast float %1687, %1690
  %1692 = fmul fast float %1275, 0x3FEA2B8620000000
  %1693 = fmul fast float %1276, 0x3FEA2B8620000000
  %1694 = fmul fast float %1277, 0x3FEA2B8620000000
  %1695 = fadd fast float %1692, 0x3FC81DFBA0000000
  %1696 = fmul fast float %1695, %1275
  %1697 = fadd fast float %1696, 0x3F910E6020000000
  %1698 = fadd fast float %1693, 0x3FC81DFBA0000000
  %1699 = fmul fast float %1698, %1276
  %1700 = fadd fast float %1699, 0x3F910E6020000000
  %1701 = fadd fast float %1694, 0x3FC81DFBA0000000
  %1702 = fmul fast float %1701, %1277
  %1703 = fadd fast float %1702, 0x3F910E6020000000
  %1704 = call float @dx.op.unary.f32(i32 7, float %1697)  ; Saturate(value)
  %1705 = call float @dx.op.unary.f32(i32 7, float %1700)  ; Saturate(value)
  %1706 = call float @dx.op.unary.f32(i32 7, float %1703)  ; Saturate(value)
  %1707 = fsub fast float %1704, %1275
  %1708 = fsub fast float %1705, %1276
  %1709 = fsub fast float %1706, %1277
  %1710 = fmul fast float %1707, %1680
  %1711 = fmul fast float %1710, %1691
  %1712 = fmul fast float %1708, %1680
  %1713 = fmul fast float %1712, %1691
  %1714 = fmul fast float %1709, %1680
  %1715 = fmul fast float %1714, %1691
  %1716 = fadd fast float %1711, %1275
  %1717 = fadd fast float %1713, %1276
  %1718 = fadd fast float %1715, %1277
  %1719 = fmul fast float %1223, %1223
  %1720 = fmul fast float %1719, %1719
  %1721 = fadd fast float %1676, 1.000000e+00
  %1722 = fsub fast float %1721, %1691
  %1723 = call float @dx.op.unary.f32(i32 7, float %1722)  ; Saturate(value)
  %1724 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %1725 = call float @dx.op.unary.f32(i32 7, float %1724)  ; Saturate(value)
  %1726 = fsub fast float 1.000000e+00, %1720
  %1727 = call float @dx.op.binary.f32(i32 36, float %1723, float %1726)  ; FMin(a,b)
  %1728 = call float @dx.op.unary.f32(i32 7, float %1679)  ; Saturate(value)
  %1729 = call float @dx.op.binary.f32(i32 35, float %1727, float %1728)  ; FMax(a,b)
  %1730 = fadd fast float %1725, 0xBFE4CCCCC0000000
  %1731 = fmul fast float %1730, 0x4006DB6DA0000000
  %1732 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1733 = fmul fast float %1732, 2.000000e+00
  %1734 = fsub fast float 3.000000e+00, %1733
  %1735 = bitcast float %1260 to i32
  %1736 = ashr i32 %1735, 1
  %1737 = add nsw i32 %1736, 532487669
  %1738 = bitcast i32 %1737 to float
  %1739 = fsub fast float 1.000000e+00, %1738
  %1740 = bitcast float %1739 to i32
  %1741 = sub nsw i32 2129859010, %1740
  %1742 = bitcast i32 %1741 to float
  %1743 = fmul fast float %1742, 2.000000e+00
  %1744 = bitcast float %1261 to i32
  %1745 = ashr i32 %1744, 1
  %1746 = add nsw i32 %1745, 532487669
  %1747 = bitcast i32 %1746 to float
  %1748 = fsub fast float 1.000000e+00, %1747
  %1749 = bitcast float %1748 to i32
  %1750 = sub nsw i32 2129859010, %1749
  %1751 = bitcast i32 %1750 to float
  %1752 = fmul fast float %1751, 2.000000e+00
  %1753 = bitcast float %1262 to i32
  %1754 = ashr i32 %1753, 1
  %1755 = add nsw i32 %1754, 532487669
  %1756 = bitcast i32 %1755 to float
  %1757 = fsub fast float 1.000000e+00, %1756
  %1758 = bitcast float %1757 to i32
  %1759 = sub nsw i32 2129859010, %1758
  %1760 = bitcast i32 %1759 to float
  %1761 = fmul fast float %1760, 2.000000e+00
  %1762 = fsub fast float 0x4002A9FBE0000000, %1743
  %1763 = fadd fast float %1743, 0x3FD54FDF00000000
  %1764 = bitcast float %1763 to i32
  %1765 = sub nsw i32 2129859010, %1764
  %1766 = bitcast i32 %1765 to float
  %1767 = fmul fast float %1766, %1762
  %1768 = fmul fast float %1767, %1767
  %1769 = fsub fast float 0x4002A9FBE0000000, %1752
  %1770 = fadd fast float %1752, 0x3FD54FDF00000000
  %1771 = bitcast float %1770 to i32
  %1772 = sub nsw i32 2129859010, %1771
  %1773 = bitcast i32 %1772 to float
  %1774 = fmul fast float %1773, %1769
  %1775 = fmul fast float %1774, %1774
  %1776 = fsub fast float 0x4002A9FBE0000000, %1761
  %1777 = fadd fast float %1761, 0x3FD54FDF00000000
  %1778 = bitcast float %1777 to i32
  %1779 = sub nsw i32 2129859010, %1778
  %1780 = bitcast i32 %1779 to float
  %1781 = fmul fast float %1780, %1776
  %1782 = fmul fast float %1781, %1781
  %1783 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1768)  ; FMax(a,b)
  %1784 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1775)  ; FMax(a,b)
  %1785 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %1782)  ; FMax(a,b)
  %1786 = fsub fast float 1.000000e+00, %1671
  %1787 = fadd fast float %1786, %1687
  %1788 = call float @dx.op.unary.f32(i32 7, float %1787)  ; Saturate(value)
  %1789 = fsub fast float 1.000000e+00, %1651
  %1790 = fmul fast float %1729, %1789
  %1791 = fmul fast float %1732, %1732
  %1792 = fmul fast float %1791, %1790
  %1793 = fmul fast float %1792, %1734
  %1794 = fmul fast float %1789, 0xBFE99999A0000000
  %1795 = fmul fast float %1794, %1680
  %1796 = fmul fast float %1795, %1691
  %1797 = fadd fast float %1796, 1.000000e+00
  %1798 = fadd fast float %1263, -1.000000e+00
  %1799 = fmul fast float %1797, %1798
  %1800 = fadd fast float %1799, 1.000000e+00
  %1801 = fsub fast float %1783, %1260
  %1802 = fsub fast float %1784, %1261
  %1803 = fsub fast float %1785, %1262
  %1804 = fmul fast float %1793, %1801
  %1805 = fmul fast float %1793, %1802
  %1806 = fmul fast float %1793, %1803
  %1807 = fadd fast float %1804, %1260
  %1808 = fadd fast float %1805, %1261
  %1809 = fadd fast float %1806, %1262
  %1810 = fsub fast float %63, %1239
  %1811 = fsub fast float %64, %1240
  %1812 = fsub fast float %65, %1241
  %1813 = fmul fast float %1793, %1810
  %1814 = fmul fast float %1793, %1811
  %1815 = fmul fast float %1793, %1812
  %1816 = fadd fast float %1813, %1239
  %1817 = fadd fast float %1814, %1240
  %1818 = fadd fast float %1815, %1241
  %1819 = fmul fast float %1793, %1788
  %1820 = call float @dx.op.unary.f32(i32 7, float %1800)  ; Saturate(value)
  %1821 = fsub fast float 1.000000e+00, %1820
  %1822 = fmul fast float %1819, %1821
  %1823 = fadd fast float %1822, %1820
  %1824 = fsub fast float 1.000000e+00, %1223
  %1825 = fmul fast float %1793, %1824
  %1826 = fadd fast float %1825, %1223
  %1827 = call float @dx.op.dot3.f32(i32 55, float %1816, float %1817, float %1818, float %1816, float %1817, float %1818)  ; Dot3(ax,ay,az,bx,by,bz)
  %1828 = call float @dx.op.unary.f32(i32 25, float %1827)  ; Rsqrt(value)
  %1829 = fmul fast float %1816, %1828
  %1830 = fmul fast float %1817, %1828
  %1831 = fmul fast float %1818, %1828
  br label %1832

; <label>:1832                                    ; preds = %1664, %1657
  %1833 = phi float [ %1663, %1657 ], [ %1670, %1664 ]
  %1834 = phi float [ %1662, %1657 ], [ %1668, %1664 ]
  %1835 = phi float [ %1661, %1657 ], [ %1666, %1664 ]
  %1836 = phi float [ %1660, %1657 ], [ %1669, %1664 ]
  %1837 = phi float [ %1659, %1657 ], [ %1667, %1664 ]
  %1838 = phi float [ %1658, %1657 ], [ %1665, %1664 ]
  %1839 = phi float [ %1275, %1657 ], [ %1716, %1664 ]
  %1840 = phi float [ %1276, %1657 ], [ %1717, %1664 ]
  %1841 = phi float [ %1277, %1657 ], [ %1718, %1664 ]
  %1842 = phi float [ %1260, %1657 ], [ %1807, %1664 ]
  %1843 = phi float [ %1261, %1657 ], [ %1808, %1664 ]
  %1844 = phi float [ %1262, %1657 ], [ %1809, %1664 ]
  %1845 = phi float [ %1239, %1657 ], [ %1829, %1664 ]
  %1846 = phi float [ %1240, %1657 ], [ %1830, %1664 ]
  %1847 = phi float [ %1241, %1657 ], [ %1831, %1664 ]
  %1848 = phi float [ %1263, %1657 ], [ %1823, %1664 ]
  %1849 = phi float [ %1223, %1657 ], [ %1826, %1664 ]
  %1850 = select i1 %186, float 0.000000e+00, float %1844
  %1851 = call float @dx.op.dot3.f32(i32 55, float %1845, float %1846, float %1847, float %1835, float %1834, float %1833)  ; Dot3(ax,ay,az,bx,by,bz)
  %1852 = call float @dx.op.unary.f32(i32 7, float %1851)  ; Saturate(value)
  %1853 = call float @dx.op.dot3.f32(i32 55, float %1838, float %1837, float %1836, float %1845, float %1846, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %1854 = fmul fast float %1853, 2.000000e+00
  %1855 = fmul fast float %1854, %1845
  %1856 = fmul fast float %1854, %1846
  %1857 = fmul fast float %1854, %1847
  %1858 = fsub fast float %1838, %1855
  %1859 = fsub fast float %1837, %1856
  %1860 = fsub fast float %1836, %1857
  %1861 = call float @dx.op.binary.f32(i32 36, float %1849, float 1.000000e+00)  ; FMin(a,b)
  %1862 = fsub fast float 1.000000e+00, %1849
  %1863 = bitcast float %1862 to i32
  %1864 = sub nsw i32 2129859010, %1863
  %1865 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1866 = extractvalue %dx.types.CBufRet.f32 %1865, 0
  %1867 = extractvalue %dx.types.CBufRet.f32 %1865, 1
  %1868 = fadd fast float %1866, %115
  %1869 = fadd fast float %1867, %116
  %1870 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %1871 = extractvalue %dx.types.CBufRet.i32 %1870, 0
  %1872 = icmp eq i32 %1871, 1
  br i1 %1872, label %1873, label %1908

; <label>:1873                                    ; preds = %1832
  %1874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %1875 = extractvalue %dx.types.CBufRet.f32 %1874, 0
  %1876 = extractvalue %dx.types.CBufRet.f32 %1874, 1
  %1877 = fsub fast float %1868, %1875
  %1878 = fsub fast float %1869, %1876
  %1879 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %1880 = extractvalue %dx.types.CBufRet.f32 %1879, 0
  %1881 = extractvalue %dx.types.CBufRet.f32 %1879, 1
  %1882 = fmul fast float %1877, %1880
  %1883 = fmul fast float %1878, %1881
  %1884 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %34, float %1882, float %1883, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1885 = extractvalue %dx.types.ResRet.f32 %1884, 0
  %1886 = fcmp fast ogt float %1885, 0.000000e+00
  %1887 = extractvalue %dx.types.CBufRet.i32 %1870, 3
  %1888 = icmp ne i32 %1887, 0
  %1889 = and i1 %1886, %1888
  br i1 %1889, label %1890, label %1908, !dx.controlflow.hints !74

; <label>:1890                                    ; preds = %1873
  %1891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %1892 = extractvalue %dx.types.CBufRet.f32 %1891, 0
  %1893 = extractvalue %dx.types.CBufRet.f32 %1891, 1
  %1894 = fsub fast float %1868, %1892
  %1895 = fsub fast float %1869, %1893
  %1896 = fmul fast float %1894, %1894
  %1897 = fmul fast float %1895, %1895
  %1898 = fadd fast float %1896, %1897
  %1899 = uitofp i32 %1887 to float
  %1900 = fmul fast float %1899, %1899
  %1901 = fcmp fast ogt float %1898, %1900
  br i1 %1901, label %1908, label %1902

; <label>:1902                                    ; preds = %1890
  %1903 = call float @dx.op.unary.f32(i32 24, float %1898)  ; Sqrt(value)
  %1904 = fsub fast float %1899, %1903
  %1905 = fmul fast float %1904, 0x3F75555560000000
  %1906 = call float @dx.op.unary.f32(i32 7, float %1905)  ; Saturate(value)
  %1907 = call float @dx.op.binary.f32(i32 36, float %1906, float %1885)  ; FMin(a,b)
  br label %1908

; <label>:1908                                    ; preds = %1902, %1890, %1873, %1832
  %1909 = phi float [ 1.000000e+00, %1832 ], [ %1907, %1902 ], [ %1885, %1873 ], [ 0.000000e+00, %1890 ]
  %1910 = fcmp fast ogt float %1909, 0.000000e+00
  br i1 %1910, label %1911, label %2009, !dx.controlflow.hints !75

; <label>:1911                                    ; preds = %1908
  %1912 = fadd fast float %146, 5.000000e-01
  %1913 = call float @dx.op.unary.f32(i32 27, float %1912)  ; Round_ni(value)
  %1914 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %23, %dx.types.Handle %34, float %144, float %145, float %1913, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1915 = extractvalue %dx.types.ResRet.f32 %1914, 0
  %1916 = extractvalue %dx.types.ResRet.f32 %1914, 1
  %1917 = extractvalue %dx.types.ResRet.f32 %1914, 2
  %1918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %1919 = extractvalue %dx.types.CBufRet.f32 %1918, 3
  %1920 = fmul fast float %1919, %1915
  %1921 = fmul fast float %1919, %1916
  %1922 = fmul fast float %1919, %1917
  %1923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %24, %dx.types.Handle %34, float %144, float %145, float %1913, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1924 = extractvalue %dx.types.ResRet.f32 %1923, 0
  %1925 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %22, %dx.types.Handle %34, float %144, float %145, float %1913, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1926 = extractvalue %dx.types.ResRet.f32 %1925, 0
  %1927 = extractvalue %dx.types.ResRet.f32 %1925, 1
  %1928 = fmul fast float %1926, 2.000000e+00
  %1929 = fmul fast float %1927, 2.000000e+00
  %1930 = fadd fast float %1928, -1.000000e+00
  %1931 = fadd fast float %1929, -1.000000e+00
  %1932 = fadd fast float %1930, %1931
  %1933 = fmul fast float %1932, 5.000000e-01
  %1934 = fsub fast float %1930, %1931
  %1935 = fmul fast float %1934, 5.000000e-01
  %1936 = call float @dx.op.unary.f32(i32 6, float %1933)  ; FAbs(value)
  %1937 = fsub fast float 1.000000e+00, %1936
  %1938 = call float @dx.op.unary.f32(i32 6, float %1935)  ; FAbs(value)
  %1939 = fsub fast float %1937, %1938
  %1940 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %1939)  ; FMax(a,b)
  %1941 = call float @dx.op.dot3.f32(i32 55, float %1933, float %1935, float %1940, float %1933, float %1935, float %1940)  ; Dot3(ax,ay,az,bx,by,bz)
  %1942 = bitcast float %1941 to i32
  %1943 = ashr i32 %1942, 1
  %1944 = sub nsw i32 1597250115, %1943
  %1945 = bitcast i32 %1944 to float
  %1946 = fmul fast float %1945, %1933
  %1947 = fmul fast float %1945, %1935
  %1948 = fmul fast float %1945, %1940
  %1949 = fsub fast float 1.000000e+00, %1924
  %1950 = fdiv fast float %1949, %1948
  %1951 = fmul fast float %1948, %63
  %1952 = fmul fast float %1948, %64
  %1953 = fmul fast float %1948, %65
  %1954 = fmul fast float %1946, %66
  %1955 = fmul fast float %1946, %67
  %1956 = fmul fast float %1946, %68
  %1957 = fadd fast float %1951, %1954
  %1958 = fadd fast float %1952, %1955
  %1959 = fadd fast float %1953, %1956
  %1960 = fmul fast float %1947, %79
  %1961 = fmul fast float %1947, %80
  %1962 = fmul fast float %1947, %81
  %1963 = fadd fast float %1957, %1960
  %1964 = fadd fast float %1958, %1961
  %1965 = fadd fast float %1959, %1962
  %1966 = call float @dx.op.dot3.f32(i32 55, float %1963, float %1964, float %1965, float %1963, float %1964, float %1965)  ; Dot3(ax,ay,az,bx,by,bz)
  %1967 = call float @dx.op.unary.f32(i32 25, float %1966)  ; Rsqrt(value)
  %1968 = fmul fast float %1963, %1967
  %1969 = fmul fast float %1964, %1967
  %1970 = fmul fast float %1965, %1967
  %1971 = call float @dx.op.dot3.f32(i32 55, float %1845, float %1846, float %1847, float %1845, float %1846, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %1972 = call float @dx.op.unary.f32(i32 7, float %1971)  ; Saturate(value)
  %1973 = fmul fast float %1972, 5.000000e-01
  %1974 = fadd fast float %1973, 5.000000e-01
  %1975 = fmul fast float %1974, %1924
  %1976 = call float @dx.op.dot3.f32(i32 55, float %1845, float %1846, float %1847, float %1968, float %1969, float %1970)  ; Dot3(ax,ay,az,bx,by,bz)
  %1977 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  %1978 = fmul fast float %1977, %1950
  %1979 = fadd fast float %1975, %1978
  %1980 = fsub fast float 5.000000e-01, %1973
  %1981 = fmul fast float %1980, %1839
  %1982 = fmul fast float %1980, %1840
  %1983 = fmul fast float %1980, %1841
  %1984 = fadd fast float %1979, %1981
  %1985 = fmul fast float %1984, %1920
  %1986 = fadd fast float %1979, %1982
  %1987 = fmul fast float %1986, %1921
  %1988 = fadd fast float %1979, %1983
  %1989 = fmul fast float %1988, %1922
  %1990 = call float @dx.op.dot3.f32(i32 55, float %1858, float %1859, float %1860, float %1845, float %1846, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %1991 = call float @dx.op.unary.f32(i32 7, float %1990)  ; Saturate(value)
  %1992 = fmul fast float %1991, 5.000000e-01
  %1993 = fadd fast float %1992, 5.000000e-01
  %1994 = fmul fast float %1993, %1924
  %1995 = call float @dx.op.dot3.f32(i32 55, float %1858, float %1859, float %1860, float %1968, float %1969, float %1970)  ; Dot3(ax,ay,az,bx,by,bz)
  %1996 = call float @dx.op.unary.f32(i32 7, float %1995)  ; Saturate(value)
  %1997 = fmul fast float %1996, %1950
  %1998 = fadd fast float %1994, %1997
  %1999 = fsub fast float 5.000000e-01, %1992
  %2000 = fmul fast float %1999, %1839
  %2001 = fmul fast float %1999, %1840
  %2002 = fmul fast float %1999, %1841
  %2003 = fadd fast float %1998, %2000
  %2004 = fmul fast float %2003, %1920
  %2005 = fadd fast float %1998, %2001
  %2006 = fmul fast float %2005, %1921
  %2007 = fadd fast float %1998, %2002
  %2008 = fmul fast float %2007, %1922
  br label %2009

; <label>:2009                                    ; preds = %1911, %1908
  %2010 = phi float [ %2004, %1911 ], [ 0.000000e+00, %1908 ]
  %2011 = phi float [ %2006, %1911 ], [ 0.000000e+00, %1908 ]
  %2012 = phi float [ %2008, %1911 ], [ 0.000000e+00, %1908 ]
  %2013 = phi float [ %1985, %1911 ], [ 0.000000e+00, %1908 ]
  %2014 = phi float [ %1987, %1911 ], [ 0.000000e+00, %1908 ]
  %2015 = phi float [ %1989, %1911 ], [ 0.000000e+00, %1908 ]
  %2016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2017 = extractvalue %dx.types.CBufRet.f32 %2016, 0
  %2018 = fcmp fast ogt float %2017, 0.000000e+00
  %2019 = and i1 %1910, %2018
  br i1 %2019, label %2020, label %2224, !dx.controlflow.hints !76

; <label>:2020                                    ; preds = %2009
  %2021 = extractvalue %dx.types.CBufRet.f32 %1865, 2
  %2022 = fadd fast float %2021, %117
  %2023 = fmul fast float %1845, 3.200000e+01
  %2024 = fmul fast float %1846, 3.200000e+01
  %2025 = fadd fast float %1868, %2023
  %2026 = fadd fast float %1869, %2024
  %2027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2028 = extractvalue %dx.types.CBufRet.f32 %2027, 0
  %2029 = extractvalue %dx.types.CBufRet.f32 %2027, 1
  %2030 = fsub fast float %2025, %2028
  %2031 = fsub fast float %2026, %2029
  %2032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2033 = extractvalue %dx.types.CBufRet.f32 %2032, 0
  %2034 = extractvalue %dx.types.CBufRet.f32 %2032, 1
  %2035 = fmul fast float %2030, %2033
  %2036 = fmul fast float %2031, %2034
  %2037 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2038 = extractvalue %dx.types.CBufRet.f32 %2037, 0
  %2039 = extractvalue %dx.types.CBufRet.f32 %2037, 1
  %2040 = fsub fast float %1868, %2038
  %2041 = fsub fast float %1869, %2039
  %2042 = fmul fast float %2040, %2040
  %2043 = fmul fast float %2041, %2041
  %2044 = fadd fast float %2042, %2043
  %2045 = call float @dx.op.unary.f32(i32 24, float %2044)  ; Sqrt(value)
  %2046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2047 = extractvalue %dx.types.CBufRet.f32 %2046, 0
  %2048 = extractvalue %dx.types.CBufRet.f32 %2046, 1
  %2049 = fsub fast float %2045, %2047
  %2050 = fdiv fast float %2049, %2048
  %2051 = call float @dx.op.unary.f32(i32 7, float %2050)  ; Saturate(value)
  %2052 = fmul fast float %2051, 2.000000e+00
  %2053 = fsub fast float 3.000000e+00, %2052
  %2054 = fmul fast float %2051, %2051
  %2055 = fmul fast float %2054, %2053
  %2056 = fcmp fast oge float %2035, 0.000000e+00
  %2057 = fcmp fast ole float %2035, 1.000000e+00
  %2058 = and i1 %2057, %2056
  %2059 = fcmp fast oge float %2036, 0.000000e+00
  %2060 = and i1 %2059, %2058
  %2061 = fcmp fast ole float %2036, 1.000000e+00
  %2062 = and i1 %2061, %2060
  %2063 = fcmp fast ogt float %2055, 0.000000e+00
  %2064 = and i1 %2063, %2062
  br i1 %2064, label %2065, label %2188, !dx.controlflow.hints !77

; <label>:2065                                    ; preds = %2020
  %2066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2067 = extractvalue %dx.types.CBufRet.f32 %2066, 2
  %2068 = extractvalue %dx.types.CBufRet.f32 %2066, 3
  %2069 = fmul fast float %2067, %2035
  %2070 = fmul fast float %2068, %2036
  %2071 = call float @dx.op.unary.f32(i32 27, float %2069)  ; Round_ni(value)
  %2072 = call float @dx.op.unary.f32(i32 27, float %2070)  ; Round_ni(value)
  %2073 = fptosi float %2071 to i32
  %2074 = fptosi float %2072 to i32
  %2075 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2073, i32 %2074, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2076 = extractvalue %dx.types.ResRet.i32 %2075, 0
  %2077 = lshr i32 %2076, 16
  %2078 = icmp eq i32 %2077, 65535
  br i1 %2078, label %2188, label %2079

; <label>:2079                                    ; preds = %2065
  %2080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2081 = extractvalue %dx.types.CBufRet.f32 %2080, 0
  %2082 = fmul fast float %2081, %2035
  %2083 = extractvalue %dx.types.CBufRet.f32 %2080, 1
  %2084 = fadd fast float %2082, %2083
  %2085 = extractvalue %dx.types.CBufRet.f32 %2080, 2
  %2086 = fmul fast float %2085, %2036
  %2087 = extractvalue %dx.types.CBufRet.f32 %2080, 3
  %2088 = fadd fast float %2086, %2087
  %2089 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2084, float %2088, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2090 = extractvalue %dx.types.ResRet.f32 %2089, 0
  %2091 = extractvalue %dx.types.ResRet.f32 %2089, 1
  %2092 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2093 = extractvalue %dx.types.CBufRet.f32 %2092, 1
  %2094 = extractvalue %dx.types.CBufRet.f32 %2092, 0
  %2095 = fsub fast float %2093, %2094
  %2096 = fmul fast float %2095, %2090
  %2097 = fadd fast float %2096, %2094
  %2098 = extractvalue %dx.types.CBufRet.f32 %2092, 3
  %2099 = extractvalue %dx.types.CBufRet.f32 %2092, 2
  %2100 = fsub fast float %2098, %2099
  %2101 = fmul fast float %2100, %2091
  %2102 = fadd fast float %2101, %2099
  %2103 = fsub fast float %2022, %2097
  %2104 = fsub fast float %2102, %2097
  %2105 = fdiv fast float %2103, %2104
  %2106 = call float @dx.op.unary.f32(i32 7, float %2105)  ; Saturate(value)
  %2107 = extractvalue %dx.types.CBufRet.f32 %2016, 1
  %2108 = extractvalue %dx.types.CBufRet.f32 %2066, 0
  %2109 = extractvalue %dx.types.CBufRet.f32 %2066, 1
  %2110 = fmul fast float %2108, %2035
  %2111 = fmul fast float %2109, %2036
  %2112 = fmul fast float %2110, 1.250000e-01
  %2113 = fmul fast float %2111, 1.250000e-01
  %2114 = call float @dx.op.unary.f32(i32 27, float %2112)  ; Round_ni(value)
  %2115 = call float @dx.op.unary.f32(i32 27, float %2113)  ; Round_ni(value)
  %2116 = fmul fast float %2114, 8.000000e+00
  %2117 = fmul fast float %2115, 8.000000e+00
  %2118 = fsub fast float %2110, %2116
  %2119 = fsub fast float %2111, %2117
  %2120 = fadd fast float %2118, 5.000000e-01
  %2121 = fadd fast float %2119, 5.000000e-01
  %2122 = and i32 %2077, 255
  %2123 = lshr i32 %2076, 24
  %2124 = mul nuw nsw i32 %2122, 9
  %2125 = uitofp i32 %2124 to float
  %2126 = mul nuw nsw i32 %2123, 9
  %2127 = uitofp i32 %2126 to float
  %2128 = fadd fast float %2120, %2125
  %2129 = fadd fast float %2121, %2127
  %2130 = fdiv fast float %2128, %2017
  %2131 = fdiv fast float %2129, %2107
  %2132 = fmul fast float %2106, 4.375000e-01
  %2133 = fadd fast float %2132, 3.125000e-02
  %2134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2130, float %2131, float %2133, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2135 = extractvalue %dx.types.ResRet.f32 %2134, 0
  %2136 = extractvalue %dx.types.ResRet.f32 %2134, 1
  %2137 = extractvalue %dx.types.ResRet.f32 %2134, 2
  %2138 = fadd fast float %2132, 5.312500e-01
  %2139 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2130, float %2131, float %2138, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2140 = extractvalue %dx.types.ResRet.f32 %2139, 0
  %2141 = extractvalue %dx.types.ResRet.f32 %2139, 1
  %2142 = extractvalue %dx.types.ResRet.f32 %2139, 2
  %2143 = fmul fast float %2140, 2.000000e+00
  %2144 = fmul fast float %2141, 2.000000e+00
  %2145 = fmul fast float %2142, 2.000000e+00
  %2146 = fadd fast float %2143, -1.000000e+00
  %2147 = fadd fast float %2144, -1.000000e+00
  %2148 = fadd fast float %2145, -1.000000e+00
  %2149 = fmul fast float %2146, %2146
  %2150 = fmul fast float %2147, %2147
  %2151 = fadd fast float %2149, %2150
  %2152 = fmul fast float %2148, %2148
  %2153 = fadd fast float %2151, %2152
  %2154 = call float @dx.op.unary.f32(i32 24, float %2153)  ; Sqrt(value)
  %2155 = fcmp fast ogt float %2154, 0.000000e+00
  br i1 %2155, label %2156, label %2160

; <label>:2156                                    ; preds = %2079
  %2157 = fdiv fast float %2146, %2154
  %2158 = fdiv fast float %2147, %2154
  %2159 = fdiv fast float %2148, %2154
  br label %2160

; <label>:2160                                    ; preds = %2156, %2079
  %2161 = phi float [ %2157, %2156 ], [ 0.000000e+00, %2079 ]
  %2162 = phi float [ %2158, %2156 ], [ 0.000000e+00, %2079 ]
  %2163 = phi float [ %2159, %2156 ], [ 0.000000e+00, %2079 ]
  %2164 = call float @dx.op.dot3.f32(i32 55, float %2161, float %2162, float %2163, float %1845, float %1846, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %2165 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2164)  ; FMax(a,b)
  %2166 = fmul fast float %2165, 0x400C5BF8A0000000
  %2167 = fmul fast float %2135, %2055
  %2168 = fmul fast float %2167, %2166
  %2169 = fmul fast float %2136, %2055
  %2170 = fmul fast float %2169, %2166
  %2171 = fmul fast float %2137, %2055
  %2172 = fmul fast float %2171, %2166
  %2173 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2174 = extractvalue %dx.types.CBufRet.f32 %2173, 3
  %2175 = fmul fast float %2168, %2174
  %2176 = fmul fast float %2170, %2174
  %2177 = fmul fast float %2172, %2174
  %2178 = fcmp fast ogt float %2022, %2102
  br i1 %2178, label %2179, label %2188

; <label>:2179                                    ; preds = %2160
  %2180 = fmul fast float %2104, 0x3FC24924A0000000
  %2181 = fsub fast float %2022, %2102
  %2182 = fdiv fast float %2181, %2180
  %2183 = call float @dx.op.unary.f32(i32 7, float %2182)  ; Saturate(value)
  %2184 = fsub fast float 1.000000e+00, %2183
  %2185 = fmul fast float %2184, %2175
  %2186 = fmul fast float %2184, %2176
  %2187 = fmul fast float %2184, %2177
  br label %2188

; <label>:2188                                    ; preds = %2179, %2160, %2065, %2020
  %2189 = phi float [ %2187, %2179 ], [ %2177, %2160 ], [ 0.000000e+00, %2065 ], [ 0.000000e+00, %2020 ]
  %2190 = phi float [ %2186, %2179 ], [ %2176, %2160 ], [ 0.000000e+00, %2065 ], [ 0.000000e+00, %2020 ]
  %2191 = phi float [ %2185, %2179 ], [ %2175, %2160 ], [ 0.000000e+00, %2065 ], [ 0.000000e+00, %2020 ]
  %2192 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2191)  ; FMax(a,b)
  %2193 = fmul fast float %2192, 0x3FD20DD760000000
  %2194 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1858, float %1859, float %1860)  ; Dot3(ax,ay,az,bx,by,bz)
  %2195 = fmul fast float %2194, 0x3FDF454380000000
  %2196 = fmul fast float %2194, %2194
  %2197 = fmul fast float %2196, 0x3FEE471020000000
  %2198 = fadd fast float %2197, 0xBFD42F6020000000
  %2199 = call float @dx.op.dot3.f32(i32 55, float %2192, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2195, float %2198)  ; Dot3(ax,ay,az,bx,by,bz)
  %2200 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2190)  ; FMax(a,b)
  %2201 = fmul fast float %2200, 0x3FD20DD760000000
  %2202 = call float @dx.op.dot3.f32(i32 55, float %2200, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2195, float %2198)  ; Dot3(ax,ay,az,bx,by,bz)
  %2203 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2189)  ; FMax(a,b)
  %2204 = fmul fast float %2203, 0x3FD20DD760000000
  %2205 = call float @dx.op.dot3.f32(i32 55, float %2203, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %2195, float %2198)  ; Dot3(ax,ay,az,bx,by,bz)
  %2206 = call float @dx.op.binary.f32(i32 35, float %2193, float 0.000000e+00)  ; FMax(a,b)
  %2207 = call float @dx.op.binary.f32(i32 35, float %2201, float 0.000000e+00)  ; FMax(a,b)
  %2208 = call float @dx.op.binary.f32(i32 35, float %2204, float 0.000000e+00)  ; FMax(a,b)
  %2209 = call float @dx.op.binary.f32(i32 35, float %2199, float 0.000000e+00)  ; FMax(a,b)
  %2210 = call float @dx.op.binary.f32(i32 35, float %2202, float 0.000000e+00)  ; FMax(a,b)
  %2211 = call float @dx.op.binary.f32(i32 35, float %2205, float 0.000000e+00)  ; FMax(a,b)
  %2212 = fmul fast float %2206, %1909
  %2213 = fmul fast float %2207, %1909
  %2214 = fmul fast float %2208, %1909
  %2215 = fadd fast float %2212, %2013
  %2216 = fadd fast float %2213, %2014
  %2217 = fadd fast float %2214, %2015
  %2218 = fmul fast float %2209, %1909
  %2219 = fmul fast float %2210, %1909
  %2220 = fmul fast float %2211, %1909
  %2221 = fadd fast float %2218, %2010
  %2222 = fadd fast float %2219, %2011
  %2223 = fadd fast float %2220, %2012
  br label %2224

; <label>:2224                                    ; preds = %2188, %2009
  %2225 = phi float [ %2221, %2188 ], [ %2010, %2009 ]
  %2226 = phi float [ %2222, %2188 ], [ %2011, %2009 ]
  %2227 = phi float [ %2223, %2188 ], [ %2012, %2009 ]
  %2228 = phi float [ %2215, %2188 ], [ %2013, %2009 ]
  %2229 = phi float [ %2216, %2188 ], [ %2014, %2009 ]
  %2230 = phi float [ %2217, %2188 ], [ %2015, %2009 ]
  %2231 = fcmp fast olt float %1909, 1.000000e+00
  br i1 %2231, label %2232, label %3050, !dx.controlflow.hints !78

; <label>:2232                                    ; preds = %2224
  %2233 = extractvalue %dx.types.CBufRet.f32 %1865, 2
  %2234 = fadd fast float %2233, %117
  %2235 = fmul fast float %1845, 3.200000e+01
  %2236 = fmul fast float %1846, 3.200000e+01
  %2237 = fadd fast float %1868, %2235
  %2238 = fadd fast float %1869, %2236
  %2239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2240 = extractvalue %dx.types.CBufRet.f32 %2239, 0
  %2241 = extractvalue %dx.types.CBufRet.f32 %2239, 1
  %2242 = fsub fast float %2237, %2240
  %2243 = fsub fast float %2238, %2241
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 0
  %2246 = extractvalue %dx.types.CBufRet.f32 %2244, 1
  %2247 = fmul fast float %2242, %2245
  %2248 = fmul fast float %2243, %2246
  %2249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %2250 = extractvalue %dx.types.CBufRet.f32 %2249, 0
  %2251 = fmul fast float %2247, %2250
  %2252 = extractvalue %dx.types.CBufRet.f32 %2249, 1
  %2253 = fadd fast float %2251, %2252
  %2254 = extractvalue %dx.types.CBufRet.f32 %2249, 2
  %2255 = fmul fast float %2254, %2248
  %2256 = extractvalue %dx.types.CBufRet.f32 %2249, 3
  %2257 = fadd fast float %2255, %2256
  %2258 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %34, float %2253, float %2257, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2259 = extractvalue %dx.types.ResRet.f32 %2258, 0
  %2260 = extractvalue %dx.types.ResRet.f32 %2258, 1
  %2261 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %2262 = extractvalue %dx.types.CBufRet.f32 %2261, 1
  %2263 = extractvalue %dx.types.CBufRet.f32 %2261, 0
  %2264 = fsub fast float %2262, %2263
  %2265 = fmul fast float %2264, %2259
  %2266 = fadd fast float %2265, %2263
  %2267 = extractvalue %dx.types.CBufRet.f32 %2261, 3
  %2268 = extractvalue %dx.types.CBufRet.f32 %2261, 2
  %2269 = fsub fast float %2267, %2268
  %2270 = fmul fast float %2269, %2260
  %2271 = fadd fast float %2270, %2268
  %2272 = fsub fast float %2234, %2266
  %2273 = fsub fast float %2271, %2266
  %2274 = fdiv fast float %2272, %2273
  %2275 = call float @dx.op.unary.f32(i32 7, float %2274)  ; Saturate(value)
  %2276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %2277 = extractvalue %dx.types.CBufRet.f32 %2276, 0
  %2278 = fmul fast float %2277, %2275
  %2279 = extractvalue %dx.types.CBufRet.f32 %2276, 1
  %2280 = fadd fast float %2278, %2279
  %2281 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %34, float %2253, float %2257, float %2280, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2282 = extractvalue %dx.types.ResRet.f32 %2281, 0
  %2283 = extractvalue %dx.types.ResRet.f32 %2281, 1
  %2284 = extractvalue %dx.types.ResRet.f32 %2281, 2
  %2285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %2286 = extractvalue %dx.types.CBufRet.f32 %2285, 0
  %2287 = extractvalue %dx.types.CBufRet.f32 %2285, 1
  %2288 = extractvalue %dx.types.CBufRet.f32 %2285, 2
  %2289 = fmul fast float %2286, %2282
  %2290 = fmul fast float %2287, %2283
  %2291 = fmul fast float %2288, %2284
  %2292 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %2293 = extractvalue %dx.types.CBufRet.f32 %2292, 0
  %2294 = extractvalue %dx.types.CBufRet.f32 %2292, 1
  %2295 = extractvalue %dx.types.CBufRet.f32 %2292, 2
  %2296 = fadd fast float %2289, %2293
  %2297 = fadd fast float %2290, %2294
  %2298 = fadd fast float %2291, %2295
  %2299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %2300 = extractvalue %dx.types.CBufRet.f32 %2299, 0
  %2301 = fmul fast float %2300, %2247
  %2302 = extractvalue %dx.types.CBufRet.f32 %2299, 1
  %2303 = fadd fast float %2301, %2302
  %2304 = extractvalue %dx.types.CBufRet.f32 %2299, 2
  %2305 = fmul fast float %2304, %2248
  %2306 = extractvalue %dx.types.CBufRet.f32 %2299, 3
  %2307 = fadd fast float %2305, %2306
  %2308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %2309 = extractvalue %dx.types.CBufRet.f32 %2308, 0
  %2310 = extractvalue %dx.types.CBufRet.f32 %2308, 1
  %2311 = extractvalue %dx.types.CBufRet.f32 %2308, 2
  %2312 = extractvalue %dx.types.CBufRet.f32 %2308, 3
  %2313 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %2314 = extractvalue %dx.types.CBufRet.f32 %2313, 0
  %2315 = extractvalue %dx.types.CBufRet.f32 %2313, 1
  %2316 = extractvalue %dx.types.CBufRet.f32 %2313, 2
  %2317 = extractvalue %dx.types.CBufRet.f32 %2313, 3
  %2318 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2303, float %2307, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2319 = extractvalue %dx.types.ResRet.f32 %2318, 0
  %2320 = extractvalue %dx.types.ResRet.f32 %2318, 1
  %2321 = extractvalue %dx.types.ResRet.f32 %2318, 2
  %2322 = extractvalue %dx.types.ResRet.f32 %2318, 3
  %2323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2303, float %2307, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2324 = extractvalue %dx.types.ResRet.f32 %2323, 0
  %2325 = extractvalue %dx.types.ResRet.f32 %2323, 1
  %2326 = extractvalue %dx.types.ResRet.f32 %2323, 2
  %2327 = extractvalue %dx.types.ResRet.f32 %2323, 3
  %2328 = fmul fast float %2319, %2296
  %2329 = fmul fast float %2324, %2296
  %2330 = fmul fast float %2326, %2296
  %2331 = fmul fast float %2322, %2296
  %2332 = fadd fast float %2328, %2309
  %2333 = fadd fast float %2329, %2310
  %2334 = fadd fast float %2330, %2311
  %2335 = fadd fast float %2331, %2312
  %2336 = fmul fast float %2320, %2296
  %2337 = fmul fast float %2325, %2296
  %2338 = fadd fast float %2336, %2314
  %2339 = fadd fast float %2337, %2315
  %2340 = fmul fast float %2321, %2296
  %2341 = fmul fast float %2327, %2296
  %2342 = fadd fast float %2340, %2316
  %2343 = fadd fast float %2341, %2317
  %2344 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2303, float %2307, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2345 = extractvalue %dx.types.ResRet.f32 %2344, 0
  %2346 = extractvalue %dx.types.ResRet.f32 %2344, 1
  %2347 = extractvalue %dx.types.ResRet.f32 %2344, 2
  %2348 = extractvalue %dx.types.ResRet.f32 %2344, 3
  %2349 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2303, float %2307, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2350 = extractvalue %dx.types.ResRet.f32 %2349, 0
  %2351 = extractvalue %dx.types.ResRet.f32 %2349, 1
  %2352 = extractvalue %dx.types.ResRet.f32 %2349, 2
  %2353 = extractvalue %dx.types.ResRet.f32 %2349, 3
  %2354 = fmul fast float %2345, %2297
  %2355 = fmul fast float %2350, %2297
  %2356 = fmul fast float %2352, %2297
  %2357 = fmul fast float %2348, %2297
  %2358 = fadd fast float %2332, %2354
  %2359 = fadd fast float %2333, %2355
  %2360 = fadd fast float %2334, %2356
  %2361 = fadd fast float %2335, %2357
  %2362 = fmul fast float %2346, %2297
  %2363 = fmul fast float %2351, %2297
  %2364 = fadd fast float %2338, %2362
  %2365 = fadd fast float %2339, %2363
  %2366 = fmul fast float %2347, %2297
  %2367 = fmul fast float %2353, %2297
  %2368 = fadd fast float %2342, %2366
  %2369 = fadd fast float %2343, %2367
  %2370 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2303, float %2307, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2371 = extractvalue %dx.types.ResRet.f32 %2370, 0
  %2372 = extractvalue %dx.types.ResRet.f32 %2370, 1
  %2373 = extractvalue %dx.types.ResRet.f32 %2370, 2
  %2374 = extractvalue %dx.types.ResRet.f32 %2370, 3
  %2375 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %30, %dx.types.Handle %34, float %2303, float %2307, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2376 = extractvalue %dx.types.ResRet.f32 %2375, 0
  %2377 = extractvalue %dx.types.ResRet.f32 %2375, 1
  %2378 = extractvalue %dx.types.ResRet.f32 %2375, 2
  %2379 = extractvalue %dx.types.ResRet.f32 %2375, 3
  %2380 = fmul fast float %2371, %2298
  %2381 = fmul fast float %2376, %2298
  %2382 = fmul fast float %2378, %2298
  %2383 = fmul fast float %2374, %2298
  %2384 = fadd fast float %2358, %2380
  %2385 = fadd fast float %2359, %2381
  %2386 = fadd fast float %2360, %2382
  %2387 = fadd fast float %2361, %2383
  %2388 = fmul fast float %2372, %2298
  %2389 = fmul fast float %2377, %2298
  %2390 = fadd fast float %2364, %2388
  %2391 = fadd fast float %2365, %2389
  %2392 = fmul fast float %2373, %2298
  %2393 = fmul fast float %2379, %2298
  %2394 = fadd fast float %2368, %2392
  %2395 = fadd fast float %2369, %2393
  %2396 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %2397 = extractvalue %dx.types.CBufRet.f32 %2396, 0
  %2398 = fsub fast float %1868, %2397
  %2399 = fsub fast float %2240, %1868
  %2400 = call float @dx.op.binary.f32(i32 35, float %2399, float %2398)  ; FMax(a,b)
  %2401 = extractvalue %dx.types.CBufRet.f32 %2396, 1
  %2402 = fsub fast float %1869, %2401
  %2403 = fsub fast float %2241, %1869
  %2404 = call float @dx.op.binary.f32(i32 35, float %2403, float %2402)  ; FMax(a,b)
  %2405 = call float @dx.op.binary.f32(i32 35, float %2400, float %2404)  ; FMax(a,b)
  %2406 = extractvalue %dx.types.CBufRet.f32 %2244, 3
  %2407 = fmul fast float %2406, %2405
  %2408 = call float @dx.op.unary.f32(i32 7, float %2407)  ; Saturate(value)
  %2409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %2410 = extractvalue %dx.types.CBufRet.f32 %2409, 0
  %2411 = extractvalue %dx.types.CBufRet.f32 %2409, 1
  %2412 = extractvalue %dx.types.CBufRet.f32 %2409, 2
  %2413 = extractvalue %dx.types.CBufRet.f32 %2409, 3
  %2414 = fsub fast float %2410, %2384
  %2415 = fsub fast float %2411, %2385
  %2416 = fsub fast float %2412, %2386
  %2417 = fsub fast float %2413, %2387
  %2418 = fmul fast float %2414, %2408
  %2419 = fmul fast float %2415, %2408
  %2420 = fmul fast float %2416, %2408
  %2421 = fmul fast float %2417, %2408
  %2422 = fadd fast float %2418, %2384
  %2423 = fadd fast float %2419, %2385
  %2424 = fadd fast float %2420, %2386
  %2425 = fadd fast float %2421, %2387
  %2426 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %2427 = extractvalue %dx.types.CBufRet.f32 %2426, 0
  %2428 = extractvalue %dx.types.CBufRet.f32 %2426, 1
  %2429 = fsub fast float %2427, %2390
  %2430 = fsub fast float %2428, %2391
  %2431 = fmul fast float %2429, %2408
  %2432 = fmul fast float %2430, %2408
  %2433 = fadd fast float %2431, %2390
  %2434 = fadd fast float %2432, %2391
  %2435 = extractvalue %dx.types.CBufRet.f32 %2426, 2
  %2436 = extractvalue %dx.types.CBufRet.f32 %2426, 3
  %2437 = fsub fast float %2435, %2394
  %2438 = fsub fast float %2436, %2395
  %2439 = fmul fast float %2437, %2408
  %2440 = fmul fast float %2438, %2408
  %2441 = fadd fast float %2439, %2394
  %2442 = fadd fast float %2440, %2395
  %2443 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %2444 = extractvalue %dx.types.CBufRet.f32 %2443, 0
  %2445 = fmul fast float %2444, %2422
  %2446 = fmul fast float %2444, %2423
  %2447 = fmul fast float %2444, %2424
  %2448 = fmul fast float %2444, %2425
  %2449 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %2450 = extractvalue %dx.types.CBufRet.f32 %2449, 0
  %2451 = fmul fast float %2450, %2433
  %2452 = fmul fast float %2450, %2434
  %2453 = fadd fast float %2451, %2445
  %2454 = fadd fast float %2452, %2447
  %2455 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %2456 = extractvalue %dx.types.CBufRet.f32 %2455, 0
  %2457 = fmul fast float %2456, %2441
  %2458 = fmul fast float %2456, %2442
  %2459 = fadd fast float %2453, %2457
  %2460 = fadd fast float %2454, %2458
  %2461 = extractvalue %dx.types.CBufRet.f32 %2443, 1
  %2462 = fmul fast float %2461, %2422
  %2463 = fmul fast float %2461, %2423
  %2464 = fmul fast float %2461, %2424
  %2465 = fmul fast float %2461, %2425
  %2466 = extractvalue %dx.types.CBufRet.f32 %2449, 1
  %2467 = fmul fast float %2466, %2433
  %2468 = fmul fast float %2466, %2434
  %2469 = fadd fast float %2467, %2462
  %2470 = fadd fast float %2468, %2464
  %2471 = extractvalue %dx.types.CBufRet.f32 %2455, 1
  %2472 = fmul fast float %2471, %2441
  %2473 = fmul fast float %2471, %2442
  %2474 = fadd fast float %2469, %2472
  %2475 = fadd fast float %2470, %2473
  %2476 = extractvalue %dx.types.CBufRet.f32 %2443, 2
  %2477 = fmul fast float %2476, %2422
  %2478 = fmul fast float %2476, %2423
  %2479 = fmul fast float %2476, %2424
  %2480 = fmul fast float %2476, %2425
  %2481 = extractvalue %dx.types.CBufRet.f32 %2449, 2
  %2482 = fmul fast float %2481, %2433
  %2483 = fmul fast float %2481, %2434
  %2484 = fadd fast float %2482, %2477
  %2485 = fadd fast float %2483, %2479
  %2486 = extractvalue %dx.types.CBufRet.f32 %2455, 2
  %2487 = fmul fast float %2486, %2441
  %2488 = fmul fast float %2486, %2442
  %2489 = fadd fast float %2484, %2487
  %2490 = fadd fast float %2485, %2488
  %2491 = fmul fast float %2478, %2478
  %2492 = fmul fast float %2490, %2490
  %2493 = fmul fast float %2480, %2480
  %2494 = fadd fast float %2493, %2491
  %2495 = fadd fast float %2494, %2492
  %2496 = call float @dx.op.unary.f32(i32 24, float %2495)  ; Sqrt(value)
  %2497 = fcmp fast ugt float %2496, 0.000000e+00
  br i1 %2497, label %2498, label %2513

; <label>:2498                                    ; preds = %2232
  %2499 = fsub fast float -0.000000e+00, %2480
  %2500 = fdiv fast float %2499, %2496
  %2501 = fsub fast float -0.000000e+00, %2478
  %2502 = fdiv fast float %2501, %2496
  %2503 = fdiv fast float %2490, %2496
  %2504 = fmul fast float %2489, 0x3FE279A760000000
  %2505 = fmul fast float %2502, %2478
  %2506 = fmul fast float %2503, %2490
  %2507 = fmul fast float %2500, %2480
  %2508 = fadd fast float %2505, %2507
  %2509 = fsub fast float %2508, %2506
  %2510 = call float @dx.op.unary.f32(i32 6, float %2509)  ; FAbs(value)
  %2511 = fadd fast float %2510, 0x3DDB7CDFE0000000
  %2512 = fdiv fast float %2504, %2511
  br label %2513

; <label>:2513                                    ; preds = %2498, %2232
  %2514 = phi float [ %2512, %2498 ], [ 1.000000e+00, %2232 ]
  %2515 = fmul fast float %2463, %2463
  %2516 = fmul fast float %2475, %2475
  %2517 = fmul fast float %2465, %2465
  %2518 = fadd fast float %2517, %2515
  %2519 = fadd fast float %2518, %2516
  %2520 = call float @dx.op.unary.f32(i32 24, float %2519)  ; Sqrt(value)
  %2521 = fcmp fast ugt float %2520, 0.000000e+00
  br i1 %2521, label %2522, label %2537

; <label>:2522                                    ; preds = %2513
  %2523 = fsub fast float -0.000000e+00, %2465
  %2524 = fdiv fast float %2523, %2520
  %2525 = fsub fast float -0.000000e+00, %2463
  %2526 = fdiv fast float %2525, %2520
  %2527 = fdiv fast float %2475, %2520
  %2528 = fmul fast float %2474, 0x3FE279A760000000
  %2529 = fmul fast float %2526, %2463
  %2530 = fmul fast float %2527, %2475
  %2531 = fmul fast float %2524, %2465
  %2532 = fadd fast float %2529, %2531
  %2533 = fsub fast float %2532, %2530
  %2534 = call float @dx.op.unary.f32(i32 6, float %2533)  ; FAbs(value)
  %2535 = fadd fast float %2534, 0x3DDB7CDFE0000000
  %2536 = fdiv fast float %2528, %2535
  br label %2537

; <label>:2537                                    ; preds = %2522, %2513
  %2538 = phi float [ %2536, %2522 ], [ 1.000000e+00, %2513 ]
  %2539 = call float @dx.op.binary.f32(i32 36, float %2538, float %2514)  ; FMin(a,b)
  %2540 = fmul fast float %2446, %2446
  %2541 = fmul fast float %2460, %2460
  %2542 = fmul fast float %2448, %2448
  %2543 = fadd fast float %2542, %2540
  %2544 = fadd fast float %2543, %2541
  %2545 = call float @dx.op.unary.f32(i32 24, float %2544)  ; Sqrt(value)
  %2546 = fcmp fast ugt float %2545, 0.000000e+00
  br i1 %2546, label %2547, label %2562

; <label>:2547                                    ; preds = %2537
  %2548 = fsub fast float -0.000000e+00, %2448
  %2549 = fdiv fast float %2548, %2545
  %2550 = fsub fast float -0.000000e+00, %2446
  %2551 = fdiv fast float %2550, %2545
  %2552 = fdiv fast float %2460, %2545
  %2553 = fmul fast float %2459, 0x3FE279A760000000
  %2554 = fmul fast float %2551, %2446
  %2555 = fmul fast float %2552, %2460
  %2556 = fmul fast float %2549, %2448
  %2557 = fadd fast float %2554, %2556
  %2558 = fsub fast float %2557, %2555
  %2559 = call float @dx.op.unary.f32(i32 6, float %2558)  ; FAbs(value)
  %2560 = fadd fast float %2559, 0x3DDB7CDFE0000000
  %2561 = fdiv fast float %2553, %2560
  br label %2562

; <label>:2562                                    ; preds = %2547, %2537
  %2563 = phi float [ %2561, %2547 ], [ 1.000000e+00, %2537 ]
  %2564 = call float @dx.op.binary.f32(i32 36, float %2563, float %2539)  ; FMin(a,b)
  %2565 = call float @dx.op.unary.f32(i32 7, float %2564)  ; Saturate(value)
  %2566 = fcmp fast olt float %2565, 1.000000e+00
  br i1 %2566, label %2567, label %2577

; <label>:2567                                    ; preds = %2562
  %2568 = fmul fast float %2565, %2446
  %2569 = fmul fast float %2565, %2460
  %2570 = fmul fast float %2565, %2448
  %2571 = fmul fast float %2565, %2463
  %2572 = fmul fast float %2565, %2475
  %2573 = fmul fast float %2565, %2465
  %2574 = fmul fast float %2565, %2478
  %2575 = fmul fast float %2565, %2490
  %2576 = fmul fast float %2565, %2480
  br label %2577

; <label>:2577                                    ; preds = %2567, %2562
  %2578 = phi float [ %2574, %2567 ], [ %2478, %2562 ]
  %2579 = phi float [ %2575, %2567 ], [ %2490, %2562 ]
  %2580 = phi float [ %2576, %2567 ], [ %2480, %2562 ]
  %2581 = phi float [ %2571, %2567 ], [ %2463, %2562 ]
  %2582 = phi float [ %2572, %2567 ], [ %2475, %2562 ]
  %2583 = phi float [ %2573, %2567 ], [ %2465, %2562 ]
  %2584 = phi float [ %2568, %2567 ], [ %2446, %2562 ]
  %2585 = phi float [ %2569, %2567 ], [ %2460, %2562 ]
  %2586 = phi float [ %2570, %2567 ], [ %2448, %2562 ]
  %2587 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2459)  ; FMax(a,b)
  %2588 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2474)  ; FMax(a,b)
  %2589 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2489)  ; FMax(a,b)
  %2590 = fcmp fast oge float %2247, 0.000000e+00
  %2591 = and i1 %2590, %2018
  %2592 = fcmp fast ole float %2247, 1.000000e+00
  %2593 = and i1 %2592, %2591
  %2594 = fcmp fast oge float %2248, 0.000000e+00
  %2595 = and i1 %2594, %2593
  %2596 = fcmp fast ole float %2248, 1.000000e+00
  %2597 = and i1 %2596, %2595
  br i1 %2597, label %2598, label %2743, !dx.controlflow.hints !79

; <label>:2598                                    ; preds = %2577
  %2599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %2600 = extractvalue %dx.types.CBufRet.f32 %2599, 2
  %2601 = extractvalue %dx.types.CBufRet.f32 %2599, 3
  %2602 = fmul fast float %2600, %2247
  %2603 = fmul fast float %2601, %2248
  %2604 = call float @dx.op.unary.f32(i32 27, float %2602)  ; Round_ni(value)
  %2605 = call float @dx.op.unary.f32(i32 27, float %2603)  ; Round_ni(value)
  %2606 = fptosi float %2604 to i32
  %2607 = fptosi float %2605 to i32
  %2608 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %26, i32 0, i32 %2606, i32 %2607, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %2609 = extractvalue %dx.types.ResRet.i32 %2608, 0
  %2610 = and i32 %2609, 65535
  %2611 = lshr i32 %2609, 16
  %2612 = icmp eq i32 %2610, 65535
  br i1 %2612, label %2649, label %2613

; <label>:2613                                    ; preds = %2598
  %2614 = extractvalue %dx.types.CBufRet.f32 %2016, 1
  %2615 = extractvalue %dx.types.CBufRet.f32 %2599, 0
  %2616 = extractvalue %dx.types.CBufRet.f32 %2599, 1
  %2617 = fmul fast float %2615, %2247
  %2618 = fmul fast float %2616, %2248
  %2619 = fmul fast float %2617, 1.250000e-01
  %2620 = fmul fast float %2618, 1.250000e-01
  %2621 = call float @dx.op.unary.f32(i32 27, float %2619)  ; Round_ni(value)
  %2622 = call float @dx.op.unary.f32(i32 27, float %2620)  ; Round_ni(value)
  %2623 = fmul fast float %2621, 8.000000e+00
  %2624 = fmul fast float %2622, 8.000000e+00
  %2625 = and i32 %2609, 255
  %2626 = lshr i32 %2609, 8
  %2627 = and i32 %2626, 255
  %2628 = mul nuw nsw i32 %2625, 9
  %2629 = uitofp i32 %2628 to float
  %2630 = mul nuw nsw i32 %2627, 9
  %2631 = uitofp i32 %2630 to float
  %2632 = fadd fast float %2629, 5.000000e-01
  %2633 = fadd fast float %2632, %2617
  %2634 = fsub fast float %2633, %2623
  %2635 = fadd fast float %2631, 5.000000e-01
  %2636 = fadd fast float %2635, %2618
  %2637 = fsub fast float %2636, %2624
  %2638 = fdiv fast float %2634, %2017
  %2639 = fdiv fast float %2637, %2614
  %2640 = fmul fast float %2275, 4.375000e-01
  %2641 = fadd fast float %2640, 3.125000e-02
  %2642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2638, float %2639, float %2641, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2643 = extractvalue %dx.types.ResRet.f32 %2642, 0
  %2644 = extractvalue %dx.types.ResRet.f32 %2642, 1
  %2645 = extractvalue %dx.types.ResRet.f32 %2642, 2
  %2646 = fadd fast float %2643, %2587
  %2647 = fadd fast float %2644, %2588
  %2648 = fadd fast float %2645, %2589
  br label %2649

; <label>:2649                                    ; preds = %2613, %2598
  %2650 = phi float [ %2648, %2613 ], [ %2589, %2598 ]
  %2651 = phi float [ %2647, %2613 ], [ %2588, %2598 ]
  %2652 = phi float [ %2646, %2613 ], [ %2587, %2598 ]
  %2653 = icmp eq i32 %2611, 65535
  br i1 %2653, label %2743, label %2654

; <label>:2654                                    ; preds = %2649
  %2655 = extractvalue %dx.types.CBufRet.f32 %2016, 1
  %2656 = extractvalue %dx.types.CBufRet.f32 %2599, 0
  %2657 = extractvalue %dx.types.CBufRet.f32 %2599, 1
  %2658 = fmul fast float %2656, %2247
  %2659 = fmul fast float %2657, %2248
  %2660 = fmul fast float %2658, 1.250000e-01
  %2661 = fmul fast float %2659, 1.250000e-01
  %2662 = call float @dx.op.unary.f32(i32 27, float %2660)  ; Round_ni(value)
  %2663 = call float @dx.op.unary.f32(i32 27, float %2661)  ; Round_ni(value)
  %2664 = fmul fast float %2662, 8.000000e+00
  %2665 = fmul fast float %2663, 8.000000e+00
  %2666 = fsub fast float %2658, %2664
  %2667 = fsub fast float %2659, %2665
  %2668 = fadd fast float %2666, 5.000000e-01
  %2669 = fadd fast float %2667, 5.000000e-01
  %2670 = and i32 %2611, 255
  %2671 = lshr i32 %2609, 24
  %2672 = mul nuw nsw i32 %2670, 9
  %2673 = uitofp i32 %2672 to float
  %2674 = mul nuw nsw i32 %2671, 9
  %2675 = uitofp i32 %2674 to float
  %2676 = fadd fast float %2668, %2673
  %2677 = fadd fast float %2669, %2675
  %2678 = fdiv fast float %2676, %2017
  %2679 = fdiv fast float %2677, %2655
  %2680 = fmul fast float %2275, 4.375000e-01
  %2681 = fadd fast float %2680, 3.125000e-02
  %2682 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2678, float %2679, float %2681, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2683 = extractvalue %dx.types.ResRet.f32 %2682, 0
  %2684 = extractvalue %dx.types.ResRet.f32 %2682, 1
  %2685 = extractvalue %dx.types.ResRet.f32 %2682, 2
  %2686 = fadd fast float %2680, 5.312500e-01
  %2687 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %25, %dx.types.Handle %34, float %2678, float %2679, float %2686, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2688 = extractvalue %dx.types.ResRet.f32 %2687, 0
  %2689 = extractvalue %dx.types.ResRet.f32 %2687, 1
  %2690 = extractvalue %dx.types.ResRet.f32 %2687, 2
  %2691 = fmul fast float %2688, 2.000000e+00
  %2692 = fmul fast float %2689, 2.000000e+00
  %2693 = fmul fast float %2690, 2.000000e+00
  %2694 = fadd fast float %2691, -1.000000e+00
  %2695 = fadd fast float %2692, -1.000000e+00
  %2696 = fadd fast float %2693, -1.000000e+00
  %2697 = fmul fast float %2694, %2694
  %2698 = fmul fast float %2695, %2695
  %2699 = fadd fast float %2697, %2698
  %2700 = fmul fast float %2696, %2696
  %2701 = fadd fast float %2699, %2700
  %2702 = call float @dx.op.unary.f32(i32 24, float %2701)  ; Sqrt(value)
  %2703 = fcmp fast ogt float %2702, 0.000000e+00
  br i1 %2703, label %2704, label %2708

; <label>:2704                                    ; preds = %2654
  %2705 = fdiv fast float %2694, %2702
  %2706 = fdiv fast float %2695, %2702
  %2707 = fdiv fast float %2696, %2702
  br label %2708

; <label>:2708                                    ; preds = %2704, %2654
  %2709 = phi float [ %2705, %2704 ], [ 0.000000e+00, %2654 ]
  %2710 = phi float [ %2706, %2704 ], [ 0.000000e+00, %2654 ]
  %2711 = phi float [ %2707, %2704 ], [ 0.000000e+00, %2654 ]
  %2712 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2713 = extractvalue %dx.types.CBufRet.f32 %2712, 0
  %2714 = extractvalue %dx.types.CBufRet.f32 %2712, 1
  %2715 = fsub fast float %1868, %2713
  %2716 = fsub fast float %1869, %2714
  %2717 = fmul fast float %2715, %2715
  %2718 = fmul fast float %2716, %2716
  %2719 = fadd fast float %2717, %2718
  %2720 = call float @dx.op.unary.f32(i32 24, float %2719)  ; Sqrt(value)
  %2721 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %2722 = extractvalue %dx.types.CBufRet.f32 %2721, 0
  %2723 = extractvalue %dx.types.CBufRet.f32 %2721, 1
  %2724 = fsub fast float %2720, %2722
  %2725 = fdiv fast float %2724, %2723
  %2726 = call float @dx.op.unary.f32(i32 7, float %2725)  ; Saturate(value)
  %2727 = fmul fast float %2726, 2.000000e+00
  %2728 = fsub fast float 3.000000e+00, %2727
  %2729 = fmul fast float %2726, %2726
  %2730 = fmul fast float %2729, %2728
  %2731 = call float @dx.op.dot3.f32(i32 55, float %2709, float %2710, float %2711, float %1845, float %1846, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %2732 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2731)  ; FMax(a,b)
  %2733 = fmul fast float %2732, 0x400C5BF8A0000000
  %2734 = fmul fast float %2730, %2683
  %2735 = fmul fast float %2734, %2733
  %2736 = fadd fast float %2735, %2652
  %2737 = fmul fast float %2730, %2684
  %2738 = fmul fast float %2737, %2733
  %2739 = fadd fast float %2738, %2651
  %2740 = fmul fast float %2730, %2685
  %2741 = fmul fast float %2740, %2733
  %2742 = fadd fast float %2741, %2650
  br label %2743

; <label>:2743                                    ; preds = %2708, %2649, %2577
  %2744 = phi float [ %2742, %2708 ], [ %2650, %2649 ], [ %2589, %2577 ]
  %2745 = phi float [ %2739, %2708 ], [ %2651, %2649 ], [ %2588, %2577 ]
  %2746 = phi float [ %2736, %2708 ], [ %2652, %2649 ], [ %2587, %2577 ]
  %2747 = fcmp fast ogt float %2234, %2271
  %2748 = and i1 %2590, %2747
  %2749 = and i1 %2592, %2748
  %2750 = and i1 %2594, %2749
  %2751 = and i1 %2596, %2750
  br i1 %2751, label %2752, label %2809, !dx.controlflow.hints !80

; <label>:2752                                    ; preds = %2743
  %2753 = fmul fast float %2273, 0x3FC24924A0000000
  %2754 = fsub fast float %2234, %2271
  %2755 = fdiv fast float %2754, %2753
  %2756 = call float @dx.op.unary.f32(i32 7, float %2755)  ; Saturate(value)
  %2757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %2758 = extractvalue %dx.types.CBufRet.f32 %2757, 0
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.CBufRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.CBufRet.f32 %2759, 2
  %2763 = fsub fast float %2758, %2746
  %2764 = fsub fast float %2760, %2584
  %2765 = fsub fast float %2761, %2585
  %2766 = fsub fast float %2762, %2586
  %2767 = fmul fast float %2763, %2756
  %2768 = fmul fast float %2764, %2756
  %2769 = fmul fast float %2765, %2756
  %2770 = fmul fast float %2766, %2756
  %2771 = fadd fast float %2767, %2746
  %2772 = fadd fast float %2768, %2584
  %2773 = fadd fast float %2769, %2585
  %2774 = fadd fast float %2770, %2586
  %2775 = extractvalue %dx.types.CBufRet.f32 %2757, 1
  %2776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %2777 = extractvalue %dx.types.CBufRet.f32 %2776, 0
  %2778 = extractvalue %dx.types.CBufRet.f32 %2776, 1
  %2779 = extractvalue %dx.types.CBufRet.f32 %2776, 2
  %2780 = fsub fast float %2775, %2745
  %2781 = fsub fast float %2777, %2581
  %2782 = fsub fast float %2778, %2582
  %2783 = fsub fast float %2779, %2583
  %2784 = fmul fast float %2780, %2756
  %2785 = fmul fast float %2781, %2756
  %2786 = fmul fast float %2782, %2756
  %2787 = fmul fast float %2783, %2756
  %2788 = fadd fast float %2784, %2745
  %2789 = fadd fast float %2785, %2581
  %2790 = fadd fast float %2786, %2582
  %2791 = fadd fast float %2787, %2583
  %2792 = extractvalue %dx.types.CBufRet.f32 %2757, 2
  %2793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %2794 = extractvalue %dx.types.CBufRet.f32 %2793, 0
  %2795 = extractvalue %dx.types.CBufRet.f32 %2793, 1
  %2796 = extractvalue %dx.types.CBufRet.f32 %2793, 2
  %2797 = fsub fast float %2792, %2744
  %2798 = fsub fast float %2794, %2578
  %2799 = fsub fast float %2795, %2579
  %2800 = fsub fast float %2796, %2580
  %2801 = fmul fast float %2797, %2756
  %2802 = fmul fast float %2798, %2756
  %2803 = fmul fast float %2799, %2756
  %2804 = fmul fast float %2800, %2756
  %2805 = fadd fast float %2801, %2744
  %2806 = fadd fast float %2802, %2578
  %2807 = fadd fast float %2803, %2579
  %2808 = fadd fast float %2804, %2580
  br label %2809

; <label>:2809                                    ; preds = %2752, %2743
  %2810 = phi float [ %2805, %2752 ], [ %2744, %2743 ]
  %2811 = phi float [ %2806, %2752 ], [ %2578, %2743 ]
  %2812 = phi float [ %2807, %2752 ], [ %2579, %2743 ]
  %2813 = phi float [ %2808, %2752 ], [ %2580, %2743 ]
  %2814 = phi float [ %2788, %2752 ], [ %2745, %2743 ]
  %2815 = phi float [ %2789, %2752 ], [ %2581, %2743 ]
  %2816 = phi float [ %2790, %2752 ], [ %2582, %2743 ]
  %2817 = phi float [ %2791, %2752 ], [ %2583, %2743 ]
  %2818 = phi float [ %2771, %2752 ], [ %2746, %2743 ]
  %2819 = phi float [ %2772, %2752 ], [ %2584, %2743 ]
  %2820 = phi float [ %2773, %2752 ], [ %2585, %2743 ]
  %2821 = phi float [ %2774, %2752 ], [ %2586, %2743 ]
  %2822 = extractvalue %dx.types.CBufRet.f32 %2396, 3
  %2823 = fmul fast float %2822, %2818
  %2824 = fmul fast float %2822, %2814
  %2825 = fmul fast float %2822, %2810
  %2826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2827 = extractvalue %dx.types.CBufRet.f32 %2826, 3
  %2828 = fmul fast float %2823, %2827
  %2829 = fmul fast float %2824, %2827
  %2830 = fmul fast float %2825, %2827
  %2831 = fmul fast float %2819, 1.500000e+00
  %2832 = fmul fast float %2831, %2822
  %2833 = fmul fast float %2832, %2827
  %2834 = fmul fast float %2820, 1.500000e+00
  %2835 = fmul fast float %2834, %2822
  %2836 = fmul fast float %2835, %2827
  %2837 = fmul fast float %2821, 1.500000e+00
  %2838 = fmul fast float %2837, %2822
  %2839 = fmul fast float %2838, %2827
  %2840 = fmul fast float %2815, 1.500000e+00
  %2841 = fmul fast float %2840, %2822
  %2842 = fmul fast float %2841, %2827
  %2843 = fmul fast float %2816, 1.500000e+00
  %2844 = fmul fast float %2843, %2822
  %2845 = fmul fast float %2844, %2827
  %2846 = fmul fast float %2817, 1.500000e+00
  %2847 = fmul fast float %2846, %2822
  %2848 = fmul fast float %2847, %2827
  %2849 = fmul fast float %2811, 1.500000e+00
  %2850 = fmul fast float %2849, %2822
  %2851 = fmul fast float %2850, %2827
  %2852 = fmul fast float %2812, 1.500000e+00
  %2853 = fmul fast float %2852, %2822
  %2854 = fmul fast float %2853, %2827
  %2855 = fmul fast float %2813, 1.500000e+00
  %2856 = fmul fast float %2855, %2822
  %2857 = fmul fast float %2856, %2827
  %2858 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2828)  ; FMax(a,b)
  %2859 = call float @dx.op.dot3.f32(i32 55, float %2833, float %2836, float %2839, float %2833, float %2836, float %2839)  ; Dot3(ax,ay,az,bx,by,bz)
  %2860 = fcmp fast oeq float %2859, 0.000000e+00
  %2861 = fcmp fast oeq float %2858, 0.000000e+00
  %2862 = or i1 %2861, %2860
  br i1 %2862, label %2892, label %2863

; <label>:2863                                    ; preds = %2809
  %2864 = fsub fast float -0.000000e+00, %2839
  %2865 = fsub fast float -0.000000e+00, %2833
  %2866 = call float @dx.op.unary.f32(i32 24, float %2859)  ; Sqrt(value)
  %2867 = fdiv fast float %2866, %2858
  %2868 = fcmp fast ogt float %2867, 0x3FFB6F8900000000
  %2869 = select i1 %2868, float 0x3FFB6F8900000000, float %2867
  %2870 = fmul fast float %2869, 0x3FE8A23460000000
  %2871 = call float @dx.op.unary.f32(i32 7, float %2870)  ; Saturate(value)
  %2872 = call float @dx.op.binary.f32(i32 35, float %2869, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2873 = fmul fast float %2871, %2858
  %2874 = fmul fast float %2872, 0x3FF279A740000000
  %2875 = fadd fast float %2874, -1.000000e+00
  %2876 = call float @dx.op.dot3.f32(i32 55, float %2864, float %2865, float %2836, float %2864, float %2865, float %2836)  ; Dot3(ax,ay,az,bx,by,bz)
  %2877 = call float @dx.op.unary.f32(i32 25, float %2876)  ; Rsqrt(value)
  %2878 = fmul fast float %2877, %2864
  %2879 = fmul fast float %2877, %2865
  %2880 = fmul fast float %2877, %2836
  %2881 = fmul fast float %2875, %2875
  %2882 = fsub fast float 1.000000e+00, %2881
  %2883 = fmul fast float %2872, 0x40005F8BE0000000
  %2884 = fsub fast float 0x400C5BF8A0000000, %2883
  %2885 = fdiv fast float %2873, %2884
  %2886 = fmul fast float %2885, 0x3FEE31C3C0000000
  %2887 = fmul fast float %2886, %2882
  %2888 = fmul fast float %2872, 0x3FDACB7480000000
  %2889 = fadd fast float %2888, 0xBFD7347680000000
  %2890 = fmul fast float %2889, %2885
  %2891 = fmul fast float %2890, %2882
  br label %2892

; <label>:2892                                    ; preds = %2863, %2809
  %2893 = phi float [ %2878, %2863 ], [ 0.000000e+00, %2809 ]
  %2894 = phi float [ %2879, %2863 ], [ 0.000000e+00, %2809 ]
  %2895 = phi float [ %2880, %2863 ], [ 0.000000e+00, %2809 ]
  %2896 = phi float [ %2887, %2863 ], [ 0.000000e+00, %2809 ]
  %2897 = phi float [ %2891, %2863 ], [ 0.000000e+00, %2809 ]
  %2898 = call float @dx.op.dot3.f32(i32 55, float %2893, float %2894, float %2895, float %1845, float %1846, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %2899 = fmul fast float %2898, %2898
  %2900 = fmul fast float %2899, 0x3FEE471020000000
  %2901 = fadd fast float %2900, 0xBFD42F6020000000
  %2902 = fmul fast float %2858, 0x3FD20DD760000000
  %2903 = fmul fast float %2901, %2897
  %2904 = fmul fast float %2896, 0x3FDF454380000000
  %2905 = fmul fast float %2904, %2898
  %2906 = fadd fast float %2905, %2902
  %2907 = fadd fast float %2906, %2903
  %2908 = call float @dx.op.dot3.f32(i32 55, float %2893, float %2894, float %2895, float %1858, float %1859, float %1860)  ; Dot3(ax,ay,az,bx,by,bz)
  %2909 = fmul fast float %2908, 0x3FDF454380000000
  %2910 = fmul fast float %2908, %2908
  %2911 = fmul fast float %2910, 0x3FEE471020000000
  %2912 = fadd fast float %2911, 0xBFD42F6020000000
  %2913 = call float @dx.op.dot3.f32(i32 55, float %2858, float %2896, float %2897, float 0x3FD20DD760000000, float %2909, float %2912)  ; Dot3(ax,ay,az,bx,by,bz)
  %2914 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2829)  ; FMax(a,b)
  %2915 = call float @dx.op.dot3.f32(i32 55, float %2842, float %2845, float %2848, float %2842, float %2845, float %2848)  ; Dot3(ax,ay,az,bx,by,bz)
  %2916 = fcmp fast oeq float %2915, 0.000000e+00
  %2917 = fcmp fast oeq float %2914, 0.000000e+00
  %2918 = or i1 %2917, %2916
  br i1 %2918, label %2948, label %2919

; <label>:2919                                    ; preds = %2892
  %2920 = fsub fast float -0.000000e+00, %2848
  %2921 = fsub fast float -0.000000e+00, %2842
  %2922 = call float @dx.op.unary.f32(i32 24, float %2915)  ; Sqrt(value)
  %2923 = fdiv fast float %2922, %2914
  %2924 = fcmp fast ogt float %2923, 0x3FFB6F8900000000
  %2925 = select i1 %2924, float 0x3FFB6F8900000000, float %2923
  %2926 = fmul fast float %2925, 0x3FE8A23460000000
  %2927 = call float @dx.op.unary.f32(i32 7, float %2926)  ; Saturate(value)
  %2928 = call float @dx.op.binary.f32(i32 35, float %2925, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2929 = fmul fast float %2927, %2914
  %2930 = fmul fast float %2928, 0x3FF279A740000000
  %2931 = fadd fast float %2930, -1.000000e+00
  %2932 = call float @dx.op.dot3.f32(i32 55, float %2920, float %2921, float %2845, float %2920, float %2921, float %2845)  ; Dot3(ax,ay,az,bx,by,bz)
  %2933 = call float @dx.op.unary.f32(i32 25, float %2932)  ; Rsqrt(value)
  %2934 = fmul fast float %2933, %2920
  %2935 = fmul fast float %2933, %2921
  %2936 = fmul fast float %2933, %2845
  %2937 = fmul fast float %2931, %2931
  %2938 = fsub fast float 1.000000e+00, %2937
  %2939 = fmul fast float %2928, 0x40005F8BE0000000
  %2940 = fsub fast float 0x400C5BF8A0000000, %2939
  %2941 = fdiv fast float %2929, %2940
  %2942 = fmul fast float %2941, 0x3FEE31C3C0000000
  %2943 = fmul fast float %2942, %2938
  %2944 = fmul fast float %2928, 0x3FDACB7480000000
  %2945 = fadd fast float %2944, 0xBFD7347680000000
  %2946 = fmul fast float %2945, %2941
  %2947 = fmul fast float %2946, %2938
  br label %2948

; <label>:2948                                    ; preds = %2919, %2892
  %2949 = phi float [ %2934, %2919 ], [ 0.000000e+00, %2892 ]
  %2950 = phi float [ %2935, %2919 ], [ 0.000000e+00, %2892 ]
  %2951 = phi float [ %2936, %2919 ], [ 0.000000e+00, %2892 ]
  %2952 = phi float [ %2943, %2919 ], [ 0.000000e+00, %2892 ]
  %2953 = phi float [ %2947, %2919 ], [ 0.000000e+00, %2892 ]
  %2954 = call float @dx.op.dot3.f32(i32 55, float %2949, float %2950, float %2951, float %1845, float %1846, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %2955 = fmul fast float %2954, %2954
  %2956 = fmul fast float %2955, 0x3FEE471020000000
  %2957 = fadd fast float %2956, 0xBFD42F6020000000
  %2958 = fmul fast float %2914, 0x3FD20DD760000000
  %2959 = fmul fast float %2957, %2953
  %2960 = fmul fast float %2952, 0x3FDF454380000000
  %2961 = fmul fast float %2960, %2954
  %2962 = fadd fast float %2961, %2958
  %2963 = fadd fast float %2962, %2959
  %2964 = call float @dx.op.dot3.f32(i32 55, float %2949, float %2950, float %2951, float %1858, float %1859, float %1860)  ; Dot3(ax,ay,az,bx,by,bz)
  %2965 = fmul fast float %2964, 0x3FDF454380000000
  %2966 = fmul fast float %2964, %2964
  %2967 = fmul fast float %2966, 0x3FEE471020000000
  %2968 = fadd fast float %2967, 0xBFD42F6020000000
  %2969 = call float @dx.op.dot3.f32(i32 55, float %2914, float %2952, float %2953, float 0x3FD20DD760000000, float %2965, float %2968)  ; Dot3(ax,ay,az,bx,by,bz)
  %2970 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %2830)  ; FMax(a,b)
  %2971 = call float @dx.op.dot3.f32(i32 55, float %2851, float %2854, float %2857, float %2851, float %2854, float %2857)  ; Dot3(ax,ay,az,bx,by,bz)
  %2972 = fcmp fast oeq float %2971, 0.000000e+00
  %2973 = fcmp fast oeq float %2970, 0.000000e+00
  %2974 = or i1 %2973, %2972
  br i1 %2974, label %3004, label %2975

; <label>:2975                                    ; preds = %2948
  %2976 = fsub fast float -0.000000e+00, %2857
  %2977 = fsub fast float -0.000000e+00, %2851
  %2978 = call float @dx.op.unary.f32(i32 24, float %2971)  ; Sqrt(value)
  %2979 = fdiv fast float %2978, %2970
  %2980 = fcmp fast ogt float %2979, 0x3FFB6F8900000000
  %2981 = select i1 %2980, float 0x3FFB6F8900000000, float %2979
  %2982 = fmul fast float %2981, 0x3FE8A23460000000
  %2983 = call float @dx.op.unary.f32(i32 7, float %2982)  ; Saturate(value)
  %2984 = call float @dx.op.binary.f32(i32 35, float %2981, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %2985 = fmul fast float %2983, %2970
  %2986 = fmul fast float %2984, 0x3FF279A740000000
  %2987 = fadd fast float %2986, -1.000000e+00
  %2988 = call float @dx.op.dot3.f32(i32 55, float %2976, float %2977, float %2854, float %2976, float %2977, float %2854)  ; Dot3(ax,ay,az,bx,by,bz)
  %2989 = call float @dx.op.unary.f32(i32 25, float %2988)  ; Rsqrt(value)
  %2990 = fmul fast float %2989, %2976
  %2991 = fmul fast float %2989, %2977
  %2992 = fmul fast float %2989, %2854
  %2993 = fmul fast float %2987, %2987
  %2994 = fsub fast float 1.000000e+00, %2993
  %2995 = fmul fast float %2984, 0x40005F8BE0000000
  %2996 = fsub fast float 0x400C5BF8A0000000, %2995
  %2997 = fdiv fast float %2985, %2996
  %2998 = fmul fast float %2997, 0x3FEE31C3C0000000
  %2999 = fmul fast float %2998, %2994
  %3000 = fmul fast float %2984, 0x3FDACB7480000000
  %3001 = fadd fast float %3000, 0xBFD7347680000000
  %3002 = fmul fast float %3001, %2997
  %3003 = fmul fast float %3002, %2994
  br label %3004

; <label>:3004                                    ; preds = %2975, %2948
  %3005 = phi float [ %2990, %2975 ], [ 0.000000e+00, %2948 ]
  %3006 = phi float [ %2991, %2975 ], [ 0.000000e+00, %2948 ]
  %3007 = phi float [ %2992, %2975 ], [ 0.000000e+00, %2948 ]
  %3008 = phi float [ %2999, %2975 ], [ 0.000000e+00, %2948 ]
  %3009 = phi float [ %3003, %2975 ], [ 0.000000e+00, %2948 ]
  %3010 = call float @dx.op.dot3.f32(i32 55, float %3005, float %3006, float %3007, float %1845, float %1846, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %3011 = fmul fast float %3010, %3010
  %3012 = fmul fast float %3011, 0x3FEE471020000000
  %3013 = fadd fast float %3012, 0xBFD42F6020000000
  %3014 = fmul fast float %2970, 0x3FD20DD760000000
  %3015 = fmul fast float %3013, %3009
  %3016 = fmul fast float %3008, 0x3FDF454380000000
  %3017 = fmul fast float %3016, %3010
  %3018 = fadd fast float %3017, %3014
  %3019 = fadd fast float %3018, %3015
  %3020 = call float @dx.op.dot3.f32(i32 55, float %3005, float %3006, float %3007, float %1858, float %1859, float %1860)  ; Dot3(ax,ay,az,bx,by,bz)
  %3021 = fmul fast float %3020, 0x3FDF454380000000
  %3022 = fmul fast float %3020, %3020
  %3023 = fmul fast float %3022, 0x3FEE471020000000
  %3024 = fadd fast float %3023, 0xBFD42F6020000000
  %3025 = call float @dx.op.dot3.f32(i32 55, float %2970, float %3008, float %3009, float 0x3FD20DD760000000, float %3021, float %3024)  ; Dot3(ax,ay,az,bx,by,bz)
  %3026 = call float @dx.op.binary.f32(i32 35, float %2907, float 0.000000e+00)  ; FMax(a,b)
  %3027 = call float @dx.op.binary.f32(i32 35, float %2963, float 0.000000e+00)  ; FMax(a,b)
  %3028 = call float @dx.op.binary.f32(i32 35, float %3019, float 0.000000e+00)  ; FMax(a,b)
  %3029 = call float @dx.op.binary.f32(i32 35, float %2913, float 0.000000e+00)  ; FMax(a,b)
  %3030 = call float @dx.op.binary.f32(i32 35, float %2969, float 0.000000e+00)  ; FMax(a,b)
  %3031 = call float @dx.op.binary.f32(i32 35, float %3025, float 0.000000e+00)  ; FMax(a,b)
  %3032 = fsub fast float %2228, %3026
  %3033 = fsub fast float %2229, %3027
  %3034 = fsub fast float %2230, %3028
  %3035 = fmul fast float %3032, %1909
  %3036 = fmul fast float %3033, %1909
  %3037 = fmul fast float %3034, %1909
  %3038 = fadd fast float %3035, %3026
  %3039 = fadd fast float %3036, %3027
  %3040 = fadd fast float %3037, %3028
  %3041 = fsub fast float %2225, %3029
  %3042 = fsub fast float %2226, %3030
  %3043 = fsub fast float %2227, %3031
  %3044 = fmul fast float %3041, %1909
  %3045 = fmul fast float %3042, %1909
  %3046 = fmul fast float %3043, %1909
  %3047 = fadd fast float %3044, %3029
  %3048 = fadd fast float %3045, %3030
  %3049 = fadd fast float %3046, %3031
  br label %3050

; <label>:3050                                    ; preds = %3004, %2224
  %3051 = phi float [ %3047, %3004 ], [ %2225, %2224 ]
  %3052 = phi float [ %3048, %3004 ], [ %2226, %2224 ]
  %3053 = phi float [ %3049, %3004 ], [ %2227, %2224 ]
  %3054 = phi float [ %3038, %3004 ], [ %2228, %2224 ]
  %3055 = phi float [ %3039, %3004 ], [ %2229, %2224 ]
  %3056 = phi float [ %3040, %3004 ], [ %2230, %2224 ]
  %3057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %3058 = extractvalue %dx.types.CBufRet.f32 %3057, 0
  %3059 = call float @dx.op.binary.f32(i32 36, float %1839, float %3058)  ; FMin(a,b)
  %3060 = fsub fast float 1.000000e+00, %1861
  %3061 = fmul fast float %3059, %3060
  %3062 = fsub fast float 1.000000e+00, %3061
  %3063 = bitcast float %3062 to i32
  %3064 = sub nsw i32 2129859010, %3063
  %3065 = bitcast i32 %3064 to float
  %3066 = call float @dx.op.binary.f32(i32 36, float %1840, float %3058)  ; FMin(a,b)
  %3067 = fmul fast float %3066, %3060
  %3068 = fsub fast float 1.000000e+00, %3067
  %3069 = bitcast float %3068 to i32
  %3070 = sub nsw i32 2129859010, %3069
  %3071 = bitcast i32 %3070 to float
  %3072 = call float @dx.op.binary.f32(i32 36, float %1841, float %3058)  ; FMin(a,b)
  %3073 = fmul fast float %3072, %3060
  %3074 = fsub fast float 1.000000e+00, %3073
  %3075 = bitcast float %3074 to i32
  %3076 = sub nsw i32 2129859010, %3075
  %3077 = bitcast i32 %3076 to float
  %3078 = fmul fast float %3054, %1861
  %3079 = fmul fast float %3078, %3065
  %3080 = fmul fast float %3055, %1861
  %3081 = fmul fast float %3080, %3071
  %3082 = fmul fast float %3056, %1861
  %3083 = fmul fast float %3082, %3077
  %3084 = call float @dx.op.binary.f32(i32 36, float %1842, float %3058)  ; FMin(a,b)
  %3085 = fmul fast float %3084, %3060
  %3086 = fsub fast float 1.000000e+00, %3085
  %3087 = bitcast float %3086 to i32
  %3088 = sub nsw i32 2129859010, %3087
  %3089 = bitcast i32 %3088 to float
  %3090 = call float @dx.op.binary.f32(i32 36, float %1843, float %3058)  ; FMin(a,b)
  %3091 = fmul fast float %3090, %3060
  %3092 = fsub fast float 1.000000e+00, %3091
  %3093 = bitcast float %3092 to i32
  %3094 = sub nsw i32 2129859010, %3093
  %3095 = bitcast i32 %3094 to float
  %3096 = call float @dx.op.binary.f32(i32 36, float %1850, float %3058)  ; FMin(a,b)
  %3097 = fmul fast float %3096, %3060
  %3098 = fsub fast float 1.000000e+00, %3097
  %3099 = bitcast float %3098 to i32
  %3100 = sub nsw i32 2129859010, %3099
  %3101 = bitcast i32 %3100 to float
  %3102 = fmul fast float %3051, %1861
  %3103 = fmul fast float %3102, %3089
  %3104 = fmul fast float %3052, %1861
  %3105 = fmul fast float %3104, %3095
  %3106 = fmul fast float %3053, %1861
  %3107 = fmul fast float %3106, %3101
  %3108 = call float @dx.op.dot3.f32(i32 55, float %3079, float %3081, float %3083, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3109 = select i1 %186, float 0.000000e+00, float %3079
  %3110 = select i1 %186, float %3108, float %3081
  %3111 = select i1 %186, float 0.000000e+00, float %3083
  %3112 = call float @dx.op.dot3.f32(i32 55, float %3103, float %3105, float %3107, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3113 = select i1 %186, float 0.000000e+00, float %3103
  %3114 = select i1 %186, float %3112, float %3105
  %3115 = select i1 %186, float 0.000000e+00, float %3107
  %3116 = fmul fast float %1852, 9.843750e-01
  %3117 = fmul fast float %1848, 9.843750e-01
  %3118 = fadd fast float %3116, 7.812500e-03
  %3119 = fadd fast float %3117, 7.812500e-03
  %3120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3118, float %3119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3121 = extractvalue %dx.types.ResRet.f32 %3120, 2
  %3122 = extractvalue %dx.types.ResRet.f32 %3120, 3
  %3123 = fmul fast float %3121, %1842
  %3124 = fmul fast float %3121, %1843
  %3125 = fmul fast float %3121, %1850
  %3126 = fadd fast float %3123, %3122
  %3127 = fadd fast float %3124, %3122
  %3128 = fadd fast float %3125, %3122
  %3129 = fcmp fast ogt float %1216, 0.000000e+00
  br i1 %3129, label %3130, label %3156

; <label>:3130                                    ; preds = %3050
  %3131 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1216, float %1852, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3132 = extractvalue %dx.types.ResRet.f32 %3131, 0
  %3133 = extractvalue %dx.types.ResRet.f32 %3131, 1
  %3134 = extractvalue %dx.types.ResRet.f32 %3131, 2
  %3135 = fadd fast float %3132, -5.000000e-01
  %3136 = fadd fast float %3133, -5.000000e-01
  %3137 = fadd fast float %3134, -5.000000e-01
  %3138 = fsub fast float 1.000000e+00, %1842
  %3139 = fsub fast float 1.000000e+00, %1843
  %3140 = fsub fast float 1.000000e+00, %1850
  %3141 = fmul fast float %1842, 4.000000e+00
  %3142 = fmul fast float %3141, %3138
  %3143 = fmul fast float %3142, %3135
  %3144 = fmul fast float %1843, 4.000000e+00
  %3145 = fmul fast float %3144, %3139
  %3146 = fmul fast float %3145, %3136
  %3147 = fmul fast float %1850, 4.000000e+00
  %3148 = fmul fast float %3147, %3140
  %3149 = fmul fast float %3148, %3137
  %3150 = fadd fast float %3143, %3126
  %3151 = fadd fast float %3146, %3127
  %3152 = fadd fast float %3149, %3128
  %3153 = call float @dx.op.unary.f32(i32 7, float %3150)  ; Saturate(value)
  %3154 = call float @dx.op.unary.f32(i32 7, float %3151)  ; Saturate(value)
  %3155 = call float @dx.op.unary.f32(i32 7, float %3152)  ; Saturate(value)
  br label %3156

; <label>:3156                                    ; preds = %3130, %3050
  %3157 = phi float [ %3153, %3130 ], [ %3126, %3050 ]
  %3158 = phi float [ %3154, %3130 ], [ %3127, %3050 ]
  %3159 = phi float [ %3155, %3130 ], [ %3128, %3050 ]
  %3160 = call float @dx.op.binary.f32(i32 35, float %3158, float %3159)  ; FMax(a,b)
  %3161 = call float @dx.op.binary.f32(i32 35, float %3157, float %3160)  ; FMax(a,b)
  %3162 = fsub fast float 1.000000e+00, %3161
  %3163 = fmul fast float %3162, %3109
  %3164 = fmul fast float %3162, %3110
  %3165 = fmul fast float %3162, %3111
  %3166 = call float @dx.op.dot3.f32(i32 55, float %1839, float %1840, float %1841, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3167 = fcmp fast ogt float %3166, 0x3E7FF19E20000000
  %3168 = fdiv fast float 1.000000e+00, %3166
  %3169 = select i1 %3167, float %3168, float 0.000000e+00
  %3170 = fmul fast float %3169, %1839
  %3171 = fmul fast float %3169, %1840
  %3172 = fmul fast float %3169, %1841
  %3173 = fadd fast float %3170, -1.000000e+00
  %3174 = fadd fast float %3171, -1.000000e+00
  %3175 = fadd fast float %3172, -1.000000e+00
  %3176 = fmul fast float %3173, 5.000000e-01
  %3177 = fmul fast float %3174, 5.000000e-01
  %3178 = fmul fast float %3175, 5.000000e-01
  %3179 = fadd fast float %3176, 1.000000e+00
  %3180 = fadd fast float %3177, 1.000000e+00
  %3181 = fadd fast float %3178, 1.000000e+00
  %3182 = fmul fast float %3157, %3113
  %3183 = fmul fast float %3158, %3114
  %3184 = fmul fast float %3159, %3115
  %3185 = fsub fast float 1.000000e+00, %1852
  %3186 = bitcast float %3185 to i32
  %3187 = sitofp i32 %3186 to float
  %3188 = fmul fast float %3187, 5.000000e+00
  %3189 = fadd fast float %3188, 0xC1EFBF8940000000
  %3190 = fptosi float %3189 to i32
  %3191 = bitcast i32 %3190 to float
  %3192 = fmul fast float %3191, %1215
  %3193 = fmul fast float %3109, %3192
  %3194 = fmul fast float %3193, %3162
  %3195 = fmul fast float %3194, %3179
  %3196 = fmul fast float %3110, %3192
  %3197 = fmul fast float %3196, %3162
  %3198 = fmul fast float %3197, %3180
  %3199 = fmul fast float %3111, %3192
  %3200 = fmul fast float %3199, %3162
  %3201 = fmul fast float %3200, %3181
  %3202 = fmul fast float %3163, %1236
  %3203 = fmul fast float %3164, %1236
  %3204 = fmul fast float %3165, %1236
  %3205 = fadd fast float %3182, %1217
  %3206 = fadd fast float %3205, %3195
  %3207 = fmul fast float %3206, %1236
  %3208 = fadd fast float %3183, %1218
  %3209 = fadd fast float %3208, %3198
  %3210 = fmul fast float %3209, %1236
  %3211 = fadd fast float %3184, %1219
  %3212 = fadd fast float %3211, %3201
  %3213 = fmul fast float %3212, %1236
  %3214 = bitcast i32 %1864 to float
  %3215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %3216 = extractvalue %dx.types.CBufRet.f32 %3215, 3
  %3217 = fcmp fast oeq float %3216, 0.000000e+00
  br i1 %3217, label %3445, label %3218

; <label>:3218                                    ; preds = %3156
  %3219 = extractvalue %dx.types.CBufRet.f32 %3215, 0
  %3220 = extractvalue %dx.types.CBufRet.f32 %3215, 1
  %3221 = extractvalue %dx.types.CBufRet.f32 %3215, 2
  %3222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %3223 = extractvalue %dx.types.CBufRet.f32 %3222, 0
  %3224 = extractvalue %dx.types.CBufRet.f32 %3222, 1
  %3225 = extractvalue %dx.types.CBufRet.f32 %3222, 2
  %3226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %3227 = extractvalue %dx.types.CBufRet.f32 %3226, 0
  %3228 = extractvalue %dx.types.CBufRet.f32 %3226, 1
  %3229 = call float @dx.op.dot3.f32(i32 55, float %3223, float %3224, float %3225, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3230 = select i1 %186, float %3227, float %3223
  %3231 = select i1 %186, float %3229, float %3224
  %3232 = select i1 %186, float %3228, float %3225
  %3233 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %3234 = extractvalue %dx.types.CBufRet.f32 %3233, 1
  %3235 = fcmp fast une float %3234, 0.000000e+00
  br i1 %3235, label %3236, label %3253

; <label>:3236                                    ; preds = %3218
  %3237 = fptoui float %60 to i32
  %3238 = fptoui float %61 to i32
  %3239 = lshr i32 %3237, 4
  %3240 = lshr i32 %3238, 4
  %3241 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %3242 = extractvalue %dx.types.CBufRet.f32 %3241, 0
  %3243 = fptoui float %3242 to i32
  %3244 = add i32 %3243, 15
  %3245 = lshr i32 %3244, 4
  %3246 = mul i32 %3245, %3240
  %3247 = add i32 %3246, %3239
  %3248 = shl i32 %3247, 3
  %3249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %3248, i32 undef)  ; BufferLoad(srv,index,wot)
  %3250 = extractvalue %dx.types.ResRet.i32 %3249, 0
  %3251 = and i32 %3250, -268435456
  %3252 = icmp eq i32 %3251, -1342177280
  br i1 %3252, label %3263, label %3253

; <label>:3253                                    ; preds = %3236, %3218
  %3254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %36, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3255 = extractvalue %dx.types.CBufRet.f32 %3254, 2
  %3256 = extractvalue %dx.types.CBufRet.f32 %3254, 3
  %3257 = fmul fast float %3255, %60
  %3258 = fmul fast float %3256, %61
  %3259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %35, float %3257, float %3258, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3260 = extractvalue %dx.types.ResRet.f32 %3259, 0
  %3261 = extractvalue %dx.types.ResRet.f32 %3259, 1
  %3262 = extractvalue %dx.types.ResRet.f32 %3259, 2
  br label %3263

; <label>:3263                                    ; preds = %3253, %3236
  %3264 = phi float [ %3260, %3253 ], [ 0.000000e+00, %3236 ]
  %3265 = phi float [ %3261, %3253 ], [ 0.000000e+00, %3236 ]
  %3266 = phi float [ %3262, %3253 ], [ 0.000000e+00, %3236 ]
  %3267 = call float @dx.op.binary.f32(i32 36, float %3265, float %3266)  ; FMin(a,b)
  %3268 = call float @dx.op.binary.f32(i32 36, float %3264, float %3267)  ; FMin(a,b)
  %3269 = fcmp fast ogt float %3268, 0.000000e+00
  br i1 %3269, label %3270, label %3445, !dx.controlflow.hints !81

; <label>:3270                                    ; preds = %3263
  %3271 = fmul fast float %3264, %3230
  %3272 = fmul fast float %3265, %3231
  %3273 = fmul fast float %3266, %3232
  %3274 = fsub fast float %3219, %1838
  %3275 = fsub fast float %3220, %1837
  %3276 = fsub fast float %3221, %1836
  %3277 = call float @dx.op.dot3.f32(i32 55, float %3274, float %3275, float %3276, float %3274, float %3275, float %3276)  ; Dot3(ax,ay,az,bx,by,bz)
  %3278 = call float @dx.op.unary.f32(i32 25, float %3277)  ; Rsqrt(value)
  %3279 = fmul fast float %3278, %3274
  %3280 = fmul fast float %3278, %3275
  %3281 = fmul fast float %3278, %3276
  %3282 = call float @dx.op.dot3.f32(i32 55, float %3219, float %3220, float %3221, float %1845, float %1846, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %3283 = call float @dx.op.dot3.f32(i32 55, float %1835, float %1834, float %1833, float %3279, float %3280, float %3281)  ; Dot3(ax,ay,az,bx,by,bz)
  %3284 = call float @dx.op.unary.f32(i32 7, float %3282)  ; Saturate(value)
  %3285 = fmul fast float %3284, %3284
  %3286 = fmul fast float %3285, %3214
  %3287 = call float @dx.op.unary.f32(i32 7, float %3286)  ; Saturate(value)
  %3288 = fmul fast float %3287, %3284
  %3289 = call float @dx.op.dot3.f32(i32 55, float %1845, float %1846, float %1847, float %3279, float %3280, float %3281)  ; Dot3(ax,ay,az,bx,by,bz)
  %3290 = fmul fast float %3289, %3289
  %3291 = call float @dx.op.unary.f32(i32 6, float %3282)  ; FAbs(value)
  %3292 = fsub fast float 1.000000e+00, %1848
  %3293 = call float @dx.op.binary.f32(i32 35, float %3292, float 0x3F847AE140000000)  ; FMax(a,b)
  %3294 = fmul fast float %3293, %3293
  %3295 = fmul fast float %3294, %3294
  %3296 = fsub fast float 1.000000e+00, %3295
  %3297 = fmul fast float %1852, %1852
  %3298 = fmul fast float %3297, %3296
  %3299 = fadd fast float %3298, %3295
  %3300 = bitcast float %3299 to i32
  %3301 = ashr i32 %3300, 1
  %3302 = add nsw i32 %3301, 532487669
  %3303 = bitcast i32 %3302 to float
  %3304 = fadd fast float %3303, %1852
  %3305 = fmul fast float %3295, %3290
  %3306 = fsub fast float 1.000000e+00, %3290
  %3307 = fadd fast float %3306, %3305
  %3308 = fmul fast float %3291, %3291
  %3309 = fmul fast float %3308, %3296
  %3310 = fadd fast float %3309, %3295
  %3311 = bitcast float %3310 to i32
  %3312 = ashr i32 %3311, 1
  %3313 = add nsw i32 %3312, 532487669
  %3314 = bitcast i32 %3313 to float
  %3315 = fadd fast float %3314, %3291
  %3316 = fmul fast float %3307, %3307
  %3317 = fmul fast float %3316, %3304
  %3318 = fmul fast float %3317, %3315
  %3319 = fdiv fast float 0x3FF0A00000000000, %3318
  %3320 = fmul fast float %3319, %3295
  %3321 = call float @dx.op.unary.f32(i32 6, float %3283)  ; FAbs(value)
  %3322 = fsub fast float 1.000000e+00, %3321
  %3323 = bitcast float %3322 to i32
  %3324 = sitofp i32 %3323 to float
  %3325 = fmul fast float %3324, 5.000000e+00
  %3326 = fadd fast float %3325, 0xC1EFBF8940000000
  %3327 = fptosi float %3326 to i32
  %3328 = bitcast i32 %3327 to float
  %3329 = fsub fast float 1.000000e+00, %1842
  %3330 = fsub fast float 1.000000e+00, %1843
  %3331 = fsub fast float 1.000000e+00, %1850
  %3332 = fmul fast float %3328, %3329
  %3333 = fmul fast float %3328, %3330
  %3334 = fmul fast float %3328, %3331
  %3335 = fadd fast float %3332, %1842
  %3336 = fadd fast float %3333, %1843
  %3337 = fadd fast float %3334, %1850
  br i1 %3129, label %3338, label %3361

; <label>:3338                                    ; preds = %3270
  %3339 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1216, float %3321, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3340 = extractvalue %dx.types.ResRet.f32 %3339, 0
  %3341 = extractvalue %dx.types.ResRet.f32 %3339, 1
  %3342 = extractvalue %dx.types.ResRet.f32 %3339, 2
  %3343 = fadd fast float %3340, -5.000000e-01
  %3344 = fadd fast float %3341, -5.000000e-01
  %3345 = fadd fast float %3342, -5.000000e-01
  %3346 = fmul fast float %1842, 4.000000e+00
  %3347 = fmul fast float %3346, %3329
  %3348 = fmul fast float %3347, %3343
  %3349 = fmul fast float %1843, 4.000000e+00
  %3350 = fmul fast float %3349, %3330
  %3351 = fmul fast float %3350, %3344
  %3352 = fmul fast float %1850, 4.000000e+00
  %3353 = fmul fast float %3352, %3331
  %3354 = fmul fast float %3353, %3345
  %3355 = fadd fast float %3348, %3335
  %3356 = fadd fast float %3351, %3336
  %3357 = fadd fast float %3354, %3337
  %3358 = call float @dx.op.unary.f32(i32 7, float %3355)  ; Saturate(value)
  %3359 = call float @dx.op.unary.f32(i32 7, float %3356)  ; Saturate(value)
  %3360 = call float @dx.op.unary.f32(i32 7, float %3357)  ; Saturate(value)
  br label %3361

; <label>:3361                                    ; preds = %3338, %3270
  %3362 = phi float [ %3358, %3338 ], [ %3335, %3270 ]
  %3363 = phi float [ %3359, %3338 ], [ %3336, %3270 ]
  %3364 = phi float [ %3360, %3338 ], [ %3337, %3270 ]
  %3365 = fmul fast float %3282, 9.843750e-01
  %3366 = fadd fast float %3365, 7.812500e-03
  %3367 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3366, float %3119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3368 = extractvalue %dx.types.ResRet.f32 %3367, 2
  %3369 = extractvalue %dx.types.ResRet.f32 %3367, 3
  %3370 = fmul fast float %3368, %1842
  %3371 = fmul fast float %3368, %1843
  %3372 = fmul fast float %3368, %1850
  %3373 = fadd fast float %3370, %3369
  %3374 = fadd fast float %3371, %3369
  %3375 = fadd fast float %3372, %3369
  br i1 %3129, label %3376, label %3399

; <label>:3376                                    ; preds = %3361
  %3377 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1216, float %3282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3378 = extractvalue %dx.types.ResRet.f32 %3377, 0
  %3379 = extractvalue %dx.types.ResRet.f32 %3377, 1
  %3380 = extractvalue %dx.types.ResRet.f32 %3377, 2
  %3381 = fadd fast float %3378, -5.000000e-01
  %3382 = fadd fast float %3379, -5.000000e-01
  %3383 = fadd fast float %3380, -5.000000e-01
  %3384 = fmul fast float %1842, 4.000000e+00
  %3385 = fmul fast float %3384, %3329
  %3386 = fmul fast float %3385, %3381
  %3387 = fmul fast float %1843, 4.000000e+00
  %3388 = fmul fast float %3387, %3330
  %3389 = fmul fast float %3388, %3382
  %3390 = fmul fast float %1850, 4.000000e+00
  %3391 = fmul fast float %3390, %3331
  %3392 = fmul fast float %3391, %3383
  %3393 = fadd fast float %3386, %3373
  %3394 = fadd fast float %3389, %3374
  %3395 = fadd fast float %3392, %3375
  %3396 = call float @dx.op.unary.f32(i32 7, float %3393)  ; Saturate(value)
  %3397 = call float @dx.op.unary.f32(i32 7, float %3394)  ; Saturate(value)
  %3398 = call float @dx.op.unary.f32(i32 7, float %3395)  ; Saturate(value)
  br label %3399

; <label>:3399                                    ; preds = %3376, %3361
  %3400 = phi float [ %3396, %3376 ], [ %3373, %3361 ]
  %3401 = phi float [ %3397, %3376 ], [ %3374, %3361 ]
  %3402 = phi float [ %3398, %3376 ], [ %3375, %3361 ]
  %3403 = call float @dx.op.binary.f32(i32 35, float %3401, float %3402)  ; FMax(a,b)
  %3404 = call float @dx.op.binary.f32(i32 35, float %3400, float %3403)  ; FMax(a,b)
  %3405 = fsub fast float 1.000000e+00, %3404
  %3406 = fmul fast float %3362, %3320
  %3407 = fmul fast float %3363, %3320
  %3408 = fmul fast float %3364, %3320
  %3409 = fsub fast float 1.000000e+00, %3283
  %3410 = bitcast float %3409 to i32
  %3411 = sitofp i32 %3410 to float
  %3412 = fmul fast float %3411, 5.000000e+00
  %3413 = fadd fast float %3412, 0xC1EFBF8940000000
  %3414 = fptosi float %3413 to i32
  %3415 = bitcast i32 %3414 to float
  %3416 = fmul fast float %3415, %1215
  %3417 = fmul fast float %3405, %3416
  %3418 = fmul fast float %3417, %3179
  %3419 = fmul fast float %3417, %3180
  %3420 = fmul fast float %3417, %3181
  %3421 = fadd fast float %3418, %3406
  %3422 = fadd fast float %3419, %3407
  %3423 = fadd fast float %3420, %3408
  %3424 = fmul fast float %3288, %3271
  %3425 = fmul fast float %3424, %3405
  %3426 = fmul fast float %3288, %3272
  %3427 = fmul fast float %3426, %3405
  %3428 = fmul fast float %3288, %3273
  %3429 = fmul fast float %3428, %3405
  %3430 = fmul fast float %3424, %3421
  %3431 = fmul fast float %3426, %3422
  %3432 = fmul fast float %3428, %3423
  %3433 = fadd fast float %3425, %3163
  %3434 = fmul fast float %3433, %1236
  %3435 = fadd fast float %3427, %3164
  %3436 = fmul fast float %3435, %1236
  %3437 = fadd fast float %3429, %3165
  %3438 = fmul fast float %3437, %1236
  %3439 = fadd fast float %3430, %3206
  %3440 = fmul fast float %3439, %1236
  %3441 = fadd fast float %3431, %3209
  %3442 = fmul fast float %3441, %1236
  %3443 = fadd fast float %3432, %3212
  %3444 = fmul fast float %3443, %1236
  br label %3445

; <label>:3445                                    ; preds = %3399, %3263, %3156
  %3446 = phi float [ %3207, %3156 ], [ %3207, %3263 ], [ %3440, %3399 ]
  %3447 = phi float [ %3210, %3156 ], [ %3210, %3263 ], [ %3442, %3399 ]
  %3448 = phi float [ %3213, %3156 ], [ %3213, %3263 ], [ %3444, %3399 ]
  %3449 = phi float [ %3202, %3156 ], [ %3202, %3263 ], [ %3434, %3399 ]
  %3450 = phi float [ %3203, %3156 ], [ %3203, %3263 ], [ %3436, %3399 ]
  %3451 = phi float [ %3204, %3156 ], [ %3204, %3263 ], [ %3438, %3399 ]
  %3452 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3453 = extractvalue %dx.types.CBufRet.i32 %3452, 0
  %3454 = icmp eq i32 %3453, 0
  br i1 %3454, label %3889, label %3455

; <label>:3455                                    ; preds = %3445
  %3456 = fptoui float %60 to i32
  %3457 = fptoui float %61 to i32
  %3458 = lshr i32 %3456, 4
  %3459 = lshr i32 %3457, 4
  %3460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %3461 = extractvalue %dx.types.CBufRet.i32 %3460, 0
  %3462 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3459, i32 %3461, i32 %3458)  ; UMad(a,b,c)
  %3463 = add nsw i32 %3453, -1
  %3464 = call i32 @dx.op.binary.i32(i32 37, i32 %3463, i32 0)  ; IMax(a,b)
  %3465 = call float @dx.op.binary.f32(i32 35, float %55, float 0.000000e+00)  ; FMax(a,b)
  %3466 = fptoui float %3465 to i32
  %3467 = lshr i32 %3466, 5
  %3468 = call i32 @dx.op.binary.i32(i32 40, i32 %3467, i32 8191)  ; UMin(a,b)
  %3469 = shl i32 %3468, 2
  %3470 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %3469, i32 undef)  ; BufferLoad(srv,index,wot)
  %3471 = extractvalue %dx.types.ResRet.i32 %3470, 0
  %3472 = lshr i32 %3471, 16
  %3473 = and i32 %3471, 65535
  %3474 = lshr i32 %3471, 21
  %3475 = lshr i32 %3473, 5
  %3476 = call i32 @dx.op.binary.i32(i32 40, i32 %3475, i32 %3464)  ; UMin(a,b)
  %3477 = icmp ugt i32 %3474, %3476
  br i1 %3477, label %3889, label %3478

; <label>:3478                                    ; preds = %3455
  br label %3479

; <label>:3479                                    ; preds = %3879, %3478
  %3480 = phi i32 [ %3886, %3879 ], [ %3474, %3478 ]
  %3481 = phi float [ %3880, %3879 ], [ %3446, %3478 ]
  %3482 = phi float [ %3881, %3879 ], [ %3447, %3478 ]
  %3483 = phi float [ %3882, %3879 ], [ %3448, %3478 ]
  %3484 = phi float [ %3883, %3879 ], [ %3449, %3478 ]
  %3485 = phi float [ %3884, %3879 ], [ %3450, %3478 ]
  %3486 = phi float [ %3885, %3879 ], [ %3451, %3478 ]
  %3487 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %37, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %3488 = extractvalue %dx.types.CBufRet.i32 %3487, 0
  %3489 = call i32 @dx.op.tertiary.i32(i32 49, i32 %3462, i32 %3488, i32 %3480)  ; UMad(a,b,c)
  %3490 = shl i32 %3489, 2
  %3491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %3490, i32 undef)  ; BufferLoad(srv,index,wot)
  %3492 = extractvalue %dx.types.ResRet.i32 %3491, 0
  %3493 = shl i32 %3480, 5
  %3494 = sub nsw i32 %3472, %3493
  %3495 = call i32 @dx.op.binary.i32(i32 37, i32 %3494, i32 0)  ; IMax(a,b)
  %3496 = call i32 @dx.op.binary.i32(i32 38, i32 %3495, i32 31)  ; IMin(a,b)
  %3497 = sub nsw i32 1, %3472
  %3498 = add nsw i32 %3497, %3473
  %3499 = call i32 @dx.op.binary.i32(i32 37, i32 %3498, i32 0)  ; IMax(a,b)
  %3500 = call i32 @dx.op.binary.i32(i32 38, i32 %3499, i32 32)  ; IMin(a,b)
  %3501 = and i32 %3500, 31
  %3502 = shl i32 -1, %3501
  %3503 = xor i32 %3502, -1
  %3504 = and i32 %3496, 31
  %3505 = shl i32 %3503, %3504
  %3506 = icmp eq i32 %3500, 32
  %3507 = select i1 %3506, i32 -1, i32 %3505
  %3508 = and i32 %3507, %3492
  %3509 = icmp eq i32 %3508, 0
  br i1 %3509, label %3879, label %3510

; <label>:3510                                    ; preds = %3479
  br label %3511

; <label>:3511                                    ; preds = %3591, %3510
  %3512 = phi i32 [ %3523, %3591 ], [ %3508, %3510 ]
  %3513 = phi float [ %3592, %3591 ], [ %3481, %3510 ]
  %3514 = phi float [ %3593, %3591 ], [ %3482, %3510 ]
  %3515 = phi float [ %3594, %3591 ], [ %3483, %3510 ]
  %3516 = phi float [ %3595, %3591 ], [ %3484, %3510 ]
  %3517 = phi float [ %3596, %3591 ], [ %3485, %3510 ]
  %3518 = phi float [ %3597, %3591 ], [ %3486, %3510 ]
  %3519 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %3512)  ; FirstbitLo(value)
  %3520 = add i32 %3519, %3493
  %3521 = and i32 %3519, 31
  %3522 = shl i32 1, %3521
  %3523 = xor i32 %3522, %3512
  %3524 = mul i32 %3520, 112
  %3525 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3524, i32 undef)  ; BufferLoad(srv,index,wot)
  %3526 = extractvalue %dx.types.ResRet.f32 %3525, 0
  %3527 = extractvalue %dx.types.ResRet.f32 %3525, 1
  %3528 = extractvalue %dx.types.ResRet.f32 %3525, 2
  %3529 = or i32 %3524, 12
  %3530 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3529, i32 undef)  ; BufferLoad(srv,index,wot)
  %3531 = extractvalue %dx.types.ResRet.f32 %3530, 0
  %3532 = add i32 %3524, 44
  %3533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3532, i32 undef)  ; BufferLoad(srv,index,wot)
  %3534 = extractvalue %dx.types.ResRet.f32 %3533, 0
  %3535 = add i32 %3524, 48
  %3536 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3535, i32 undef)  ; BufferLoad(srv,index,wot)
  %3537 = extractvalue %dx.types.ResRet.f32 %3536, 0
  %3538 = extractvalue %dx.types.ResRet.f32 %3536, 1
  %3539 = extractvalue %dx.types.ResRet.f32 %3536, 2
  %3540 = add i32 %3524, 80
  %3541 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %3540, i32 undef)  ; BufferLoad(srv,index,wot)
  %3542 = extractvalue %dx.types.ResRet.f32 %3541, 1
  %3543 = extractvalue %dx.types.ResRet.f32 %3541, 2
  %3544 = call float @dx.op.dot3.f32(i32 55, float %3526, float %3527, float %3528, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3545 = select i1 %186, float %3542, float %3526
  %3546 = select i1 %186, float %3544, float %3527
  %3547 = select i1 %186, float %3543, float %3528
  %3548 = fsub fast float %3537, %115
  %3549 = fsub fast float %3538, %116
  %3550 = fsub fast float %3539, %117
  %3551 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3550, float %3548, float %3549, float %3550)  ; Dot3(ax,ay,az,bx,by,bz)
  %3552 = call float @dx.op.unary.f32(i32 24, float %3551)  ; Sqrt(value)
  %3553 = fdiv fast float 1.000000e+00, %3552
  %3554 = fmul fast float %3553, %3548
  %3555 = fmul fast float %3553, %3549
  %3556 = fmul fast float %3553, %3550
  %3557 = fadd fast float %3552, %3531
  %3558 = fdiv fast float 1.000000e+00, %3557
  %3559 = fmul float %3534, %3558
  %3560 = fmul float %3559, %3559
  %3561 = call float @dx.op.unary.f32(i32 7, float %3560)  ; Saturate(value)
  %3562 = and i32 %3522, %3508
  %3563 = icmp eq i32 %3562, 0
  br i1 %3563, label %3586, label %3564, !dx.controlflow.hints !82

; <label>:3564                                    ; preds = %3511
  %3565 = lshr i32 %3456, 5
  %3566 = lshr i32 %3457, 5
  %3567 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %18, i32 0, i32 %3565, i32 %3566, i32 %3520, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = and i32 %3568, 3
  %3570 = icmp eq i32 %3569, 0
  %3571 = select i1 %3570, float 1.000000e+00, float 0.000000e+00
  %3572 = icmp eq i32 %3569, 3
  br i1 %3572, label %3573, label %3586

; <label>:3573                                    ; preds = %3564
  %3574 = lshr i32 %3568, 10
  %3575 = and i32 %3574, 8160
  %3576 = and i32 %3457, 31
  %3577 = or i32 %3575, %3576
  %3578 = lshr i32 %3568, 1
  %3579 = and i32 %3578, 16352
  %3580 = and i32 %3456, 31
  %3581 = or i32 %3579, %3580
  %3582 = lshr i32 %3568, 23
  %3583 = and i32 %3582, 255
  %3584 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %17, i32 0, i32 %3581, i32 %3577, i32 %3583, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3585 = extractvalue %dx.types.ResRet.f32 %3584, 0
  br label %3586

; <label>:3586                                    ; preds = %3573, %3564, %3511
  %3587 = phi float [ %3585, %3573 ], [ %3571, %3564 ], [ 0.000000e+00, %3511 ]
  %3588 = call float @dx.op.binary.f32(i32 36, float %3587, float %3587)  ; FMin(a,b)
  %3589 = call float @dx.op.binary.f32(i32 36, float %3587, float %3588)  ; FMin(a,b)
  %3590 = fcmp fast ogt float %3589, 0.000000e+00
  br i1 %3590, label %3599, label %3591, !dx.controlflow.hints !83

; <label>:3591                                    ; preds = %3835, %3586
  %3592 = phi float [ %3513, %3586 ], [ %3875, %3835 ]
  %3593 = phi float [ %3514, %3586 ], [ %3876, %3835 ]
  %3594 = phi float [ %3515, %3586 ], [ %3877, %3835 ]
  %3595 = phi float [ %3516, %3586 ], [ %3869, %3835 ]
  %3596 = phi float [ %3517, %3586 ], [ %3870, %3835 ]
  %3597 = phi float [ %3518, %3586 ], [ %3871, %3835 ]
  %3598 = icmp eq i32 %3512, %3522
  br i1 %3598, label %3878, label %3511

; <label>:3599                                    ; preds = %3586
  %3600 = fmul fast float %3587, %3545
  %3601 = fmul fast float %3587, %3546
  %3602 = fmul fast float %3587, %3547
  %3603 = fsub fast float %3539, %1638
  %3604 = fcmp fast ogt float %3603, 0.000000e+00
  %3605 = fsub fast float %117, %1638
  %3606 = fcmp fast ogt float %3605, 0.000000e+00
  %3607 = xor i1 %3606, %3604
  %3608 = fsub fast float %1638, %3539
  %3609 = fmul fast float %3608, 2.000000e+00
  %3610 = fadd fast float %3609, %3539
  %3611 = select i1 %3607, float %3539, float %3610
  %3612 = fsub fast float %3611, %117
  %3613 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3612, float %3548, float %3549, float %3612)  ; Dot3(ax,ay,az,bx,by,bz)
  %3614 = call float @dx.op.unary.f32(i32 25, float %3613)  ; Rsqrt(value)
  %3615 = fmul fast float %3614, %3548
  %3616 = fmul fast float %3614, %3549
  %3617 = fmul fast float %3614, %3612
  %3618 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %1646)  ; Dot3(ax,ay,az,bx,by,bz)
  %3619 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %3615, float %3616, float %3617)  ; Dot3(ax,ay,az,bx,by,bz)
  %3620 = fdiv fast float 1.000000e+00, %3619
  %3621 = fmul fast float %3620, %3618
  %3622 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %3605, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3623 = fcmp fast ogt float %3622, 0.000000e+00
  %3624 = fcmp fast olt float %3622, 0.000000e+00
  %3625 = zext i1 %3623 to i32
  %3626 = zext i1 %3624 to i32
  %3627 = sub nsw i32 %3625, %3626
  %3628 = sitofp i32 %3627 to float
  %3629 = fsub fast float %3611, %1638
  %3630 = call float @dx.op.dot3.f32(i32 55, float %3548, float %3549, float %3629, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %3631 = fcmp fast ogt float %3630, 0.000000e+00
  %3632 = fcmp fast olt float %3630, 0.000000e+00
  %3633 = zext i1 %3631 to i32
  %3634 = zext i1 %3632 to i32
  %3635 = sub nsw i32 %3633, %3634
  %3636 = sitofp i32 %3635 to float
  %3637 = fcmp fast une float %3628, %3636
  br i1 %3637, label %3638, label %3648

; <label>:3638                                    ; preds = %3599
  %3639 = fmul fast float %3621, %3617
  %3640 = fmul fast float %3621, %3616
  %3641 = fmul fast float %3621, %3615
  %3642 = fmul fast float %3641, %3641
  %3643 = fmul fast float %3640, %3640
  %3644 = fadd fast float %3642, %3643
  %3645 = fmul fast float %3639, %3639
  %3646 = fadd fast float %3644, %3645
  %3647 = call float @dx.op.unary.f32(i32 24, float %3646)  ; Sqrt(value)
  br label %3660

; <label>:3648                                    ; preds = %3599
  %3649 = icmp slt i32 %3627, 0
  br i1 %3649, label %3650, label %3660

; <label>:3650                                    ; preds = %3648
  %3651 = fsub fast float %115, %3537
  %3652 = fsub fast float %116, %3538
  %3653 = fsub fast float %117, %3611
  %3654 = fmul fast float %3651, %3651
  %3655 = fmul fast float %3652, %3652
  %3656 = fadd fast float %3654, %3655
  %3657 = fmul fast float %3653, %3653
  %3658 = fadd fast float %3656, %3657
  %3659 = call float @dx.op.unary.f32(i32 24, float %3658)  ; Sqrt(value)
  br label %3660

; <label>:3660                                    ; preds = %3650, %3648, %3638
  %3661 = phi float [ %3647, %3638 ], [ %3659, %3650 ], [ 0.000000e+00, %3648 ]
  %3662 = and i1 %3606, %3604
  %3663 = fsub fast float -0.000000e+00, %3661
  %3664 = select i1 %3662, float -0.000000e+00, float %3663
  %3665 = fmul fast float %1639, 0x3FF7154760000000
  %3666 = fmul fast float %3665, %3664
  %3667 = fmul fast float %1640, 0x3FF7154760000000
  %3668 = fmul fast float %3667, %3664
  %3669 = fmul fast float %1641, 0x3FF7154760000000
  %3670 = fmul fast float %3669, %3664
  %3671 = call float @dx.op.unary.f32(i32 21, float %3666)  ; Exp(value)
  %3672 = call float @dx.op.unary.f32(i32 21, float %3668)  ; Exp(value)
  %3673 = call float @dx.op.unary.f32(i32 21, float %3670)  ; Exp(value)
  %3674 = call float @dx.op.unary.f32(i32 7, float %3671)  ; Saturate(value)
  %3675 = call float @dx.op.unary.f32(i32 7, float %3672)  ; Saturate(value)
  %3676 = call float @dx.op.unary.f32(i32 7, float %3673)  ; Saturate(value)
  %3677 = fmul fast float %3600, %3674
  %3678 = fmul fast float %3601, %3675
  %3679 = fmul fast float %3602, %3676
  %3680 = fsub fast float %3554, %1838
  %3681 = fsub fast float %3555, %1837
  %3682 = fsub fast float %3556, %1836
  %3683 = call float @dx.op.dot3.f32(i32 55, float %3680, float %3681, float %3682, float %3680, float %3681, float %3682)  ; Dot3(ax,ay,az,bx,by,bz)
  %3684 = call float @dx.op.unary.f32(i32 25, float %3683)  ; Rsqrt(value)
  %3685 = fmul fast float %3684, %3680
  %3686 = fmul fast float %3684, %3681
  %3687 = fmul fast float %3684, %3682
  %3688 = call float @dx.op.dot3.f32(i32 55, float %3554, float %3555, float %3556, float %1845, float %1846, float %1847)  ; Dot3(ax,ay,az,bx,by,bz)
  %3689 = call float @dx.op.dot3.f32(i32 55, float %1835, float %1834, float %1833, float %3685, float %3686, float %3687)  ; Dot3(ax,ay,az,bx,by,bz)
  %3690 = call float @dx.op.unary.f32(i32 7, float %3688)  ; Saturate(value)
  %3691 = fmul fast float %3690, %3561
  %3692 = fmul fast float %3690, %3690
  %3693 = fmul fast float %3692, %3214
  %3694 = call float @dx.op.unary.f32(i32 7, float %3693)  ; Saturate(value)
  %3695 = fmul fast float %3691, %3694
  %3696 = bitcast float %3551 to i32
  %3697 = ashr i32 %3696, 1
  %3698 = sub nsw i32 1597463007, %3697
  %3699 = bitcast i32 %3698 to float
  %3700 = fmul fast float %3699, %3548
  %3701 = fmul fast float %3699, %3549
  %3702 = fmul fast float %3699, %3550
  %3703 = fsub fast float %3700, %1838
  %3704 = fsub fast float %3701, %1837
  %3705 = fsub fast float %3702, %1836
  %3706 = call float @dx.op.dot3.f32(i32 55, float %3703, float %3704, float %3705, float %3703, float %3704, float %3705)  ; Dot3(ax,ay,az,bx,by,bz)
  %3707 = call float @dx.op.unary.f32(i32 25, float %3706)  ; Rsqrt(value)
  %3708 = fmul fast float %3703, %3707
  %3709 = fmul fast float %3704, %3707
  %3710 = fmul fast float %3705, %3707
  %3711 = call float @dx.op.dot3.f32(i32 55, float %1845, float %1846, float %1847, float %3708, float %3709, float %3710)  ; Dot3(ax,ay,az,bx,by,bz)
  %3712 = fmul fast float %3711, %3711
  %3713 = call float @dx.op.unary.f32(i32 6, float %3688)  ; FAbs(value)
  %3714 = fsub fast float 1.000000e+00, %1848
  %3715 = call float @dx.op.binary.f32(i32 35, float %3714, float 0x3F847AE140000000)  ; FMax(a,b)
  %3716 = fmul fast float %3715, %3715
  %3717 = fmul fast float %3716, %3716
  %3718 = fsub fast float 1.000000e+00, %3717
  %3719 = fmul fast float %1852, %1852
  %3720 = fmul fast float %3719, %3718
  %3721 = fadd fast float %3720, %3717
  %3722 = bitcast float %3721 to i32
  %3723 = ashr i32 %3722, 1
  %3724 = add nsw i32 %3723, 532487669
  %3725 = bitcast i32 %3724 to float
  %3726 = fadd fast float %3725, %1852
  %3727 = fmul fast float %3717, %3712
  %3728 = fsub fast float 1.000000e+00, %3712
  %3729 = fadd fast float %3728, %3727
  %3730 = fmul fast float %3713, %3713
  %3731 = fmul fast float %3730, %3718
  %3732 = fadd fast float %3731, %3717
  %3733 = bitcast float %3732 to i32
  %3734 = ashr i32 %3733, 1
  %3735 = add nsw i32 %3734, 532487669
  %3736 = bitcast i32 %3735 to float
  %3737 = fadd fast float %3736, %3713
  %3738 = fmul fast float %3729, %3729
  %3739 = fmul fast float %3738, %3726
  %3740 = fmul fast float %3739, %3737
  %3741 = fdiv fast float 1.000000e+00, %3740
  %3742 = bitcast float %3717 to i32
  %3743 = sitofp i32 %3742 to float
  %3744 = fmul fast float %3743, 0x3FE7F73180000000
  %3745 = fadd fast float %3744, 0x41AFE27C40000000
  %3746 = fptosi float %3745 to i32
  %3747 = bitcast i32 %3746 to float
  %3748 = fmul fast float %3534, 0x3FD80E9D60000000
  %3749 = fmul fast float %3748, %3699
  %3750 = fadd fast float %3747, %3749
  %3751 = bitcast float %3750 to i32
  %3752 = sub nsw i32 2129859010, %3751
  %3753 = bitcast i32 %3752 to float
  %3754 = fmul fast float %3717, %3741
  %3755 = fmul fast float %3754, %3747
  %3756 = fmul fast float %3755, %3753
  %3757 = call float @dx.op.unary.f32(i32 6, float %3689)  ; FAbs(value)
  %3758 = fsub fast float 1.000000e+00, %3757
  %3759 = bitcast float %3758 to i32
  %3760 = sitofp i32 %3759 to float
  %3761 = fmul fast float %3760, 5.000000e+00
  %3762 = fadd fast float %3761, 0xC1EFBF8940000000
  %3763 = fptosi float %3762 to i32
  %3764 = bitcast i32 %3763 to float
  %3765 = fsub fast float 1.000000e+00, %1842
  %3766 = fsub fast float 1.000000e+00, %1843
  %3767 = fsub fast float 1.000000e+00, %1850
  %3768 = fmul fast float %3764, %3765
  %3769 = fmul fast float %3764, %3766
  %3770 = fmul fast float %3764, %3767
  %3771 = fadd fast float %3768, %1842
  %3772 = fadd fast float %3769, %1843
  %3773 = fadd fast float %3770, %1850
  br i1 %3129, label %3774, label %3797

; <label>:3774                                    ; preds = %3660
  %3775 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1216, float %3757, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3776 = extractvalue %dx.types.ResRet.f32 %3775, 0
  %3777 = extractvalue %dx.types.ResRet.f32 %3775, 1
  %3778 = extractvalue %dx.types.ResRet.f32 %3775, 2
  %3779 = fadd fast float %3776, -5.000000e-01
  %3780 = fadd fast float %3777, -5.000000e-01
  %3781 = fadd fast float %3778, -5.000000e-01
  %3782 = fmul fast float %1842, 4.000000e+00
  %3783 = fmul fast float %3782, %3765
  %3784 = fmul fast float %3783, %3779
  %3785 = fmul fast float %1843, 4.000000e+00
  %3786 = fmul fast float %3785, %3766
  %3787 = fmul fast float %3786, %3780
  %3788 = fmul fast float %1850, 4.000000e+00
  %3789 = fmul fast float %3788, %3767
  %3790 = fmul fast float %3789, %3781
  %3791 = fadd fast float %3784, %3771
  %3792 = fadd fast float %3787, %3772
  %3793 = fadd fast float %3790, %3773
  %3794 = call float @dx.op.unary.f32(i32 7, float %3791)  ; Saturate(value)
  %3795 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3796 = call float @dx.op.unary.f32(i32 7, float %3793)  ; Saturate(value)
  br label %3797

; <label>:3797                                    ; preds = %3774, %3660
  %3798 = phi float [ %3794, %3774 ], [ %3771, %3660 ]
  %3799 = phi float [ %3795, %3774 ], [ %3772, %3660 ]
  %3800 = phi float [ %3796, %3774 ], [ %3773, %3660 ]
  %3801 = fmul fast float %3688, 9.843750e-01
  %3802 = fadd fast float %3801, 7.812500e-03
  %3803 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %34, float %3802, float %3119, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3804 = extractvalue %dx.types.ResRet.f32 %3803, 2
  %3805 = extractvalue %dx.types.ResRet.f32 %3803, 3
  %3806 = fmul fast float %3804, %1842
  %3807 = fmul fast float %3804, %1843
  %3808 = fmul fast float %3804, %1850
  %3809 = fadd fast float %3806, %3805
  %3810 = fadd fast float %3807, %3805
  %3811 = fadd fast float %3808, %3805
  br i1 %3129, label %3812, label %3835

; <label>:3812                                    ; preds = %3797
  %3813 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %34, float %1216, float %3688, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3814 = extractvalue %dx.types.ResRet.f32 %3813, 0
  %3815 = extractvalue %dx.types.ResRet.f32 %3813, 1
  %3816 = extractvalue %dx.types.ResRet.f32 %3813, 2
  %3817 = fadd fast float %3814, -5.000000e-01
  %3818 = fadd fast float %3815, -5.000000e-01
  %3819 = fadd fast float %3816, -5.000000e-01
  %3820 = fmul fast float %1842, 4.000000e+00
  %3821 = fmul fast float %3820, %3765
  %3822 = fmul fast float %3821, %3817
  %3823 = fmul fast float %1843, 4.000000e+00
  %3824 = fmul fast float %3823, %3766
  %3825 = fmul fast float %3824, %3818
  %3826 = fmul fast float %1850, 4.000000e+00
  %3827 = fmul fast float %3826, %3767
  %3828 = fmul fast float %3827, %3819
  %3829 = fadd fast float %3822, %3809
  %3830 = fadd fast float %3825, %3810
  %3831 = fadd fast float %3828, %3811
  %3832 = call float @dx.op.unary.f32(i32 7, float %3829)  ; Saturate(value)
  %3833 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3834 = call float @dx.op.unary.f32(i32 7, float %3831)  ; Saturate(value)
  br label %3835

; <label>:3835                                    ; preds = %3812, %3797
  %3836 = phi float [ %3832, %3812 ], [ %3809, %3797 ]
  %3837 = phi float [ %3833, %3812 ], [ %3810, %3797 ]
  %3838 = phi float [ %3834, %3812 ], [ %3811, %3797 ]
  %3839 = call float @dx.op.binary.f32(i32 35, float %3837, float %3838)  ; FMax(a,b)
  %3840 = call float @dx.op.binary.f32(i32 35, float %3836, float %3839)  ; FMax(a,b)
  %3841 = fsub fast float 1.000000e+00, %3840
  %3842 = fmul fast float %3798, %3756
  %3843 = fmul fast float %3799, %3756
  %3844 = fmul fast float %3800, %3756
  %3845 = fsub fast float 1.000000e+00, %3689
  %3846 = bitcast float %3845 to i32
  %3847 = sitofp i32 %3846 to float
  %3848 = fmul fast float %3847, 5.000000e+00
  %3849 = fadd fast float %3848, 0xC1EFBF8940000000
  %3850 = fptosi float %3849 to i32
  %3851 = bitcast i32 %3850 to float
  %3852 = fmul fast float %3851, %1215
  %3853 = fmul fast float %3841, %3852
  %3854 = fmul fast float %3853, %3179
  %3855 = fmul fast float %3853, %3180
  %3856 = fmul fast float %3853, %3181
  %3857 = fadd fast float %3854, %3842
  %3858 = fadd fast float %3855, %3843
  %3859 = fadd fast float %3856, %3844
  %3860 = fmul fast float %3677, %1236
  %3861 = fmul fast float %3860, %3695
  %3862 = fmul fast float %3861, %3841
  %3863 = fmul fast float %3678, %1236
  %3864 = fmul fast float %3863, %3695
  %3865 = fmul fast float %3864, %3841
  %3866 = fmul fast float %3679, %1236
  %3867 = fmul fast float %3866, %3695
  %3868 = fmul fast float %3867, %3841
  %3869 = fadd fast float %3862, %3516
  %3870 = fadd fast float %3865, %3517
  %3871 = fadd fast float %3868, %3518
  %3872 = fmul fast float %3861, %3857
  %3873 = fmul fast float %3864, %3858
  %3874 = fmul fast float %3867, %3859
  %3875 = fadd fast float %3872, %3513
  %3876 = fadd fast float %3873, %3514
  %3877 = fadd fast float %3874, %3515
  br label %3591

; <label>:3878                                    ; preds = %3591
  br label %3879

; <label>:3879                                    ; preds = %3878, %3479
  %3880 = phi float [ %3481, %3479 ], [ %3592, %3878 ]
  %3881 = phi float [ %3482, %3479 ], [ %3593, %3878 ]
  %3882 = phi float [ %3483, %3479 ], [ %3594, %3878 ]
  %3883 = phi float [ %3484, %3479 ], [ %3595, %3878 ]
  %3884 = phi float [ %3485, %3479 ], [ %3596, %3878 ]
  %3885 = phi float [ %3486, %3479 ], [ %3597, %3878 ]
  %3886 = add i32 %3480, 1
  %3887 = icmp ugt i32 %3886, %3476
  br i1 %3887, label %3888, label %3479

; <label>:3888                                    ; preds = %3879
  br label %3889

; <label>:3889                                    ; preds = %3888, %3455, %3445
  %3890 = phi float [ %3446, %3445 ], [ %3446, %3455 ], [ %3880, %3888 ]
  %3891 = phi float [ %3447, %3445 ], [ %3447, %3455 ], [ %3881, %3888 ]
  %3892 = phi float [ %3448, %3445 ], [ %3448, %3455 ], [ %3882, %3888 ]
  %3893 = phi float [ %3449, %3445 ], [ %3449, %3455 ], [ %3883, %3888 ]
  %3894 = phi float [ %3450, %3445 ], [ %3450, %3455 ], [ %3884, %3888 ]
  %3895 = phi float [ %3451, %3445 ], [ %3451, %3455 ], [ %3885, %3888 ]
  %3896 = call float @dx.op.unary.f32(i32 24, float %1839)  ; Sqrt(value)
  %3897 = call float @dx.op.unary.f32(i32 24, float %1840)  ; Sqrt(value)
  %3898 = call float @dx.op.unary.f32(i32 24, float %1841)  ; Sqrt(value)
  %3899 = fmul fast float %3896, %3893
  %3900 = fmul fast float %3897, %3894
  %3901 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3902 = extractvalue %dx.types.CBufRet.f32 %3901, 0
  br i1 %186, label %3903, label %3932

; <label>:3903                                    ; preds = %3889
  %3904 = fadd fast float %3895, %1213
  %3905 = fmul fast float %3904, %1214
  %3906 = fsub fast float 1.000000e+00, %1214
  %3907 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3908 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3909 = extractvalue %dx.types.CBufRet.f32 %3908, 3
  %3910 = fmul fast float %3909, %3907
  %3911 = fadd fast float %3910, %3905
  %3912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %3913 = extractvalue %dx.types.CBufRet.f32 %3912, 0
  %3914 = fmul fast float %3913, %3185
  %3915 = fsub fast float %3911, %3914
  %3916 = fadd fast float %3900, %3899
  %3917 = fmul fast float %3902, %3916
  %3918 = extractvalue %dx.types.CBufRet.f32 %3908, 1
  %3919 = fsub fast float %3915, %3918
  %3920 = extractvalue %dx.types.CBufRet.f32 %3908, 2
  %3921 = fmul fast float %3919, %3920
  %3922 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %3924 = extractvalue %dx.types.CBufRet.f32 %3923, 0
  %3925 = fsub fast float %3922, %3924
  %3926 = fmul fast float %3925, 1.000000e+01
  %3927 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3928 = fadd fast float %1212, -1.000000e+00
  %3929 = fmul fast float %3927, %3928
  %3930 = fadd fast float %3929, 1.000000e+00
  %3931 = fmul fast float %3930, %3922
  br label %3948

; <label>:3932                                    ; preds = %3889
  %3933 = fmul fast float %3898, %3895
  %3934 = fmul fast float %3902, %3899
  %3935 = fmul fast float %3902, %3900
  %3936 = fmul fast float %3933, %3902
  %3937 = add i32 %40, 116
  %3938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %3937, i32 undef)  ; BufferLoad(srv,index,wot)
  %3939 = extractvalue %dx.types.ResRet.i32 %3938, 0
  %3940 = and i32 %3939, 32
  %3941 = icmp eq i32 %3940, 0
  br i1 %3941, label %3948, label %3942

; <label>:3942                                    ; preds = %3932
  %3943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3944 = extractvalue %dx.types.CBufRet.f32 %3943, 0
  %3945 = fmul fast float %3944, 0x3FE99999A0000000
  %3946 = fadd fast float %3944, %3934
  %3947 = fadd fast float %3945, %3936
  br label %3948

; <label>:3948                                    ; preds = %3942, %3932, %3903
  %3949 = phi float [ %3917, %3903 ], [ %3946, %3942 ], [ %3934, %3932 ]
  %3950 = phi float [ %3931, %3903 ], [ %3935, %3942 ], [ %3935, %3932 ]
  %3951 = phi float [ %3930, %3903 ], [ %3947, %3942 ], [ %3936, %3932 ]
  %3952 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %37, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3953 = extractvalue %dx.types.CBufRet.f32 %3952, 0
  %3954 = fmul fast float %3953, %3891
  %3955 = fmul fast float %3953, %3892
  %3956 = fadd fast float %3891, %3890
  %3957 = select i1 %186, float %3956, float %3890
  %3958 = fmul float %3957, %3953
  %3959 = select i1 %186, float 0.000000e+00, float %3954
  %3960 = select i1 %186, float 0.000000e+00, float %3955
  %3961 = fmul fast float %3949, %3896
  %3962 = fmul fast float %3950, %3897
  %3963 = fmul fast float %3951, %3898
  %3964 = fadd fast float %3958, %3961
  %3965 = fadd fast float %3959, %3962
  %3966 = fadd fast float %3960, %3963
  %3967 = select i1 %186, float %3950, float %3965
  %3968 = select i1 %186, float %3951, float %3966
  %3969 = call float @dx.op.binary.f32(i32 36, float %3964, float 3.225500e+04)  ; FMin(a,b)
  %3970 = call float @dx.op.binary.f32(i32 36, float %3967, float 3.225500e+04)  ; FMin(a,b)
  %3971 = call float @dx.op.binary.f32(i32 36, float %3968, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %3969)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %3970)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %3971)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!51 = !{[29 x i32] [i32 27, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7]}
!52 = !{void ()* @ps_main, !"ps_main", !53, !4, !73}
!53 = !{!54, !71, null}
!54 = !{!55, !58, !59, !61, !63, !64, !66, !68, !69, !70}
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
!69 = !{i32 8, !"SV_IsFrontFace", i8 5, i8 13, !56, i8 1, i32 1, i8 1, i32 6, i8 2, !67}
!70 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !56, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!71 = !{!72}
!72 = !{i32 0, !"SV_Target", i8 9, i8 16, !56, i8 0, i32 1, i8 4, i32 0, i8 0, !65}
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

