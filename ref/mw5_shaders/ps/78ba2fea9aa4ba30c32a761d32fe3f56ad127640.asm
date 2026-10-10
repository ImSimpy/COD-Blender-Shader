;
; Input signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Position              0   xyzw        0      POS   float   xy w
; COLOR                    0   xyzw        1     NONE   float    y  
; TEXCOORDS                0   xyzw        2     NONE   float   xyzw
; LMAPCOORDS               0   xyz         3     NONE   float   xyz 
; NORMAL                   0   xyz         4     NONE   float   xyz 
; TANGENT                  0   xyzw        5     NONE   float   xyzw
; NORMAL_TRANSFORM         1   xyzw        6     NONE   float   xyzw
; MATERIAL_DATA_OFFSET     0   x           7     NONE    uint   x   
; TRANSIENT_INDEX          0    y          7     NONE    uint    y  
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: b916010cd0a912216b4a783c12032160
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
; NORMAL_TRANSFORM         1                 linear       
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
;                                   texture     f32          2d      T8     t14,space2     1
;                                   texture     f32          2d      T9     t13,space2     1
;                                   texture     u32          2d     T10     t17,space2     1
;                                   texture     f32          3d     T11     t18,space2     1
;                                   texture     f32     2darray     T12     t23,space2     1
;                                   texture     f32     2darray     T13     t24,space2     1
;                                   texture     f32     2darray     T14     t25,space2     1
;                                   texture    byte         r/o     T15     t66,space1     1
;                                   texture    byte         r/o     T16     t16,space1     1
;                                   texture    byte         r/o     T17     t17,space1     1
;                                   texture     u32     2darray     T18     t11,space2     1
;                                   texture     f32     2darray     T19     t10,space2     1
;                                   texture     f32          2d     T20     t69,space2     1
;                                   texture    byte         r/o     T21     t49,space1     1
;                                   texture    byte         r/o     T22     t50,space1     1
;                                   texture    byte         r/o     T23     t51,space1     1
;                                   texture    byte         r/o     T24     t52,space1     1
;                                   texture     f32          2d     T25     t58,space2     1
;                                   texture     f32          2d     T26     t59,space2     1
;                                   texture     f32          2d     T27     t60,space2     1
;                                   texture    byte         r/o     T28     t45,space1     1
;                                   texture    byte         r/o     T29     t46,space1     1
;                                   texture    byte         r/o     T30     t47,space1     1
;                                   texture    byte         r/o     T31     t48,space1     1
;                                   texture     f32          2d     T32     t57,space2     1
;                                   texture    byte         r/o     T33     t69,space1     1
;                                   texture     f32          2d     T34     t34,space2     1
;                                   texture    byte         r/o     T35     t10,space1     1
;                                   texture    byte         r/o     T36     t68,space1     1
;                                   texture     f32          2d     T37      t0,space2     1
;                                   texture    byte         r/o     T38     t11,space1     1
;                                   texture    byte         r/o     T39     t13,space1     1
;
;
; ViewId state:
;
; Number of inputs: 30, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 8, 9, 10, 11, 12, 13, 14, 16, 17, 18, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 66, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 25, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 24, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 23, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 18, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 14, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 15, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = fmul fast float %70, %64
  %72 = fmul fast float %70, %65
  %73 = fmul fast float %54, %51
  %74 = fmul fast float %55, %50
  %75 = fsub fast float %73, %74
  %76 = fmul fast float %55, %49
  %77 = fmul fast float %53, %51
  %78 = fsub fast float %76, %77
  %79 = fmul fast float %53, %50
  %80 = fmul fast float %54, %49
  %81 = fsub fast float %79, %80
  %82 = fmul fast float %75, %52
  %83 = fmul fast float %78, %52
  %84 = fmul fast float %81, %52
  %85 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %86 = extractvalue %dx.types.CBufRet.f32 %85, 2
  %87 = extractvalue %dx.types.CBufRet.f32 %85, 3
  %88 = fmul fast float %86, 2.000000e+00
  %89 = fmul fast float %88, %71
  %90 = fmul fast float %87, 2.000000e+00
  %91 = fmul fast float %90, %72
  %92 = fsub fast float 1.000000e+00, %89
  %93 = fsub fast float 1.000000e+00, %91
  %94 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %95 = extractvalue %dx.types.CBufRet.f32 %94, 0
  %96 = extractvalue %dx.types.CBufRet.f32 %94, 1
  %97 = extractvalue %dx.types.CBufRet.f32 %94, 2
  %98 = fmul fast float %92, %95
  %99 = fmul fast float %92, %96
  %100 = fmul fast float %92, %97
  %101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %102 = extractvalue %dx.types.CBufRet.f32 %101, 0
  %103 = extractvalue %dx.types.CBufRet.f32 %101, 1
  %104 = extractvalue %dx.types.CBufRet.f32 %101, 2
  %105 = fmul fast float %93, %102
  %106 = fmul fast float %93, %103
  %107 = fmul fast float %93, %104
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 0
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 1
  %111 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %112 = fadd fast float %105, %109
  %113 = fadd fast float %112, %98
  %114 = fadd fast float %106, %110
  %115 = fadd fast float %114, %99
  %116 = fadd fast float %107, %111
  %117 = fadd fast float %116, %100
  %118 = fmul fast float %113, %66
  %119 = fmul fast float %115, %66
  %120 = fmul fast float %117, %66
  %121 = fadd fast float %58, 5.000000e-01
  %122 = fptoui float %121 to i32
  %123 = shl i32 %122, 3
  %124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %123, i32 undef)  ; BufferLoad(srv,index,wot)
  %125 = extractvalue %dx.types.ResRet.i32 %124, 0
  %126 = or i32 %123, 4
  %127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %126, i32 undef)  ; BufferLoad(srv,index,wot)
  %128 = extractvalue %dx.types.ResRet.i32 %127, 0
  %129 = and i32 %125, 8191
  %130 = lshr i32 %125, 13
  %131 = and i32 %130, 8191
  %132 = lshr i32 %125, 26
  %133 = and i32 %128, 65535
  %134 = lshr i32 %128, 16
  %135 = uitofp i32 %133 to float
  %136 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 302)  ; CBufferLoadLegacy(handle,regIndex)
  %137 = extractvalue %dx.types.CBufRet.f32 %136, 1
  %138 = uitofp i32 %134 to float
  %139 = uitofp i32 %129 to float
  %140 = fmul fast float %137, %139
  %141 = uitofp i32 %131 to float
  %142 = fmul fast float %137, %141
  %143 = fmul fast float %137, %56
  %144 = fmul fast float %143, %135
  %145 = fmul fast float %137, %57
  %146 = fmul fast float %145, %138
  %147 = fadd fast float %144, %140
  %148 = fadd fast float %142, %146
  %149 = uitofp i32 %132 to float
  %150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %151 = extractvalue %dx.types.CBufRet.f32 %150, 2
  %152 = extractvalue %dx.types.CBufRet.f32 %150, 3
  %153 = fmul fast float %151, %71
  %154 = fmul fast float %152, %72
  %155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %7, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %156 = extractvalue %dx.types.ResRet.i32 %155, 0
  %157 = and i32 %156, 114688
  %158 = icmp ne i32 %157, 0
  %159 = select i1 %158, float %153, float 0.000000e+00
  %160 = select i1 %158, float %154, float 0.000000e+00
  %161 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %40, float %159, float %160, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %162 = extractvalue %dx.types.ResRet.f32 %161, 0
  %163 = fmul fast float %162, 2.550000e+02
  %164 = fptoui float %163 to i32
  %165 = select i1 %158, i32 %164, i32 0
  %166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %168 = extractvalue %dx.types.CBufRet.i32 %167, 3
  %169 = and i32 %168, 3
  %170 = icmp ne i32 %169, 0
  %171 = and i32 %168, 4
  %172 = icmp ne i32 %171, 0
  %173 = and i1 %170, %172
  br i1 %173, label %174, label %185

; <label>:174                                     ; preds = %0
  %175 = extractvalue %dx.types.CBufRet.f32 %166, 3
  %176 = fmul fast float %175, %72
  %177 = extractvalue %dx.types.CBufRet.f32 %166, 2
  %178 = fmul fast float %177, %71
  %179 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %39, float %178, float %176, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %180 = extractvalue %dx.types.ResRet.f32 %179, 0
  %181 = fsub fast float 1.000000e+00, %180
  %182 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %183 = extractvalue %dx.types.CBufRet.f32 %182, 0
  %184 = fcmp fast olt float %181, %183
  br label %188

; <label>:185                                     ; preds = %0
  %186 = icmp eq i32 %171, 0
  %187 = and i1 %170, %186
  br label %188

; <label>:188                                     ; preds = %185, %174
  %189 = phi i1 [ %184, %174 ], [ %187, %185 ]
  %190 = add i32 %44, 92
  %191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %190, i32 undef)  ; BufferLoad(srv,index,wot)
  %192 = extractvalue %dx.types.ResRet.i32 %191, 0
  %193 = shl i32 %192, 4
  %194 = and i32 %193, 32752
  %195 = call float @dx.op.legacyF16ToF32(i32 131, i32 %194)  ; LegacyF16ToF32(value)
  %196 = lshr i32 %192, 7
  %197 = and i32 %196, 32752
  %198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %197)  ; LegacyF16ToF32(value)
  %199 = lshr i32 %192, 22
  %200 = shl nuw nsw i32 %199, 5
  %201 = call float @dx.op.legacyF16ToF32(i32 131, i32 %200)  ; LegacyF16ToF32(value)
  %202 = add i32 %44, 120
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = and i32 %204, 255
  %206 = uitofp i32 %205 to float
  %207 = fmul fast float %206, 0x3F70101020000000
  %208 = lshr i32 %204, 8
  %209 = and i32 %208, 255
  %210 = uitofp i32 %209 to float
  %211 = fmul fast float %210, 0x3F70101020000000
  %212 = lshr i32 %204, 16
  %213 = and i32 %212, 255
  %214 = uitofp i32 %213 to float
  %215 = fmul fast float %214, 0x3F70101020000000
  %216 = add i32 %44, 36
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = add i32 %44, 160
  %220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %219, i32 undef)  ; BufferLoad(srv,index,wot)
  %221 = extractvalue %dx.types.ResRet.i32 %220, 0
  %222 = add i32 %44, 108
  %223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %222, i32 undef)  ; BufferLoad(srv,index,wot)
  %224 = extractvalue %dx.types.ResRet.i32 %223, 0
  %225 = shl i32 %224, 4
  %226 = and i32 %225, 32752
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = lshr i32 %224, 7
  %229 = and i32 %228, 32752
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %224, 22
  %232 = shl nuw nsw i32 %231, 5
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = add i32 %44, 136
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 255
  %238 = uitofp i32 %237 to float
  %239 = fmul fast float %238, 0x3F70101020000000
  %240 = lshr i32 %236, 8
  %241 = and i32 %240, 255
  %242 = uitofp i32 %241 to float
  %243 = fmul fast float %242, 0x3F70101020000000
  %244 = lshr i32 %236, 16
  %245 = and i32 %244, 255
  %246 = uitofp i32 %245 to float
  %247 = fmul fast float %246, 0x3F70101020000000
  %248 = add i32 %44, 52
  %249 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %248, i32 undef)  ; BufferLoad(srv,index,wot)
  %250 = extractvalue %dx.types.ResRet.i32 %249, 0
  %251 = and i32 %250, 65535
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %250, 16
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %44, 176
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = fmul fast float %259, 0x3F50624DE0000000
  %263 = fmul fast float %261, 0x3F50624DE0000000
  %264 = add i32 %44, 188
  %265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %264, i32 undef)  ; BufferLoad(srv,index,wot)
  %266 = extractvalue %dx.types.ResRet.i32 %265, 0
  %267 = lshr i32 %266, 20
  %268 = and i32 %267, 3
  %269 = add nuw nsw i32 %268, 1
  %270 = add i32 %44, 24
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = add i32 %44, 28
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = or i32 %275, %272
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %769, label %278

; <label>:278                                     ; preds = %188
  %279 = lshr i32 %221, 16
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = fmul fast float %280, 0x3F50624DE0000000
  %282 = and i32 %221, 65535
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = fmul fast float %283, 0x3F50624DE0000000
  %285 = lshr i32 %218, 16
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = and i32 %218, 65535
  %288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %287)  ; LegacyF16ToF32(value)
  %289 = add i32 %44, 156
  %290 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %291 = extractvalue %dx.types.ResRet.i32 %290, 0
  %292 = lshr i32 %291, 16
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = fmul fast float %293, 0x3F50624DE0000000
  %295 = add i32 %44, 56
  %296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %295, i32 undef)  ; BufferLoad(srv,index,wot)
  %297 = extractvalue %dx.types.ResRet.i32 %296, 0
  %298 = lshr i32 %297, 16
  %299 = and i32 %298, 255
  %300 = lshr i32 %297, 24
  %301 = add i32 %44, 164
  %302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %301, i32 undef)  ; BufferLoad(srv,index,wot)
  %303 = extractvalue %dx.types.ResRet.i32 %302, 0
  %304 = and i32 %303, 65535
  %305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %304)  ; LegacyF16ToF32(value)
  %306 = lshr i32 %303, 16
  %307 = call float @dx.op.legacyF16ToF32(i32 131, i32 %306)  ; LegacyF16ToF32(value)
  %308 = add i32 %44, 32
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = lshr i32 %310, 22
  %312 = shl nuw nsw i32 %311, 5
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = shl i32 %310, 4
  %315 = and i32 %314, 32752
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %310, 7
  %318 = and i32 %317, 32752
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %321 = extractvalue %dx.types.CBufRet.f32 %320, 3
  %322 = fmul fast float %321, 1.000000e+03
  %323 = fmul fast float %284, %322
  %324 = call float @dx.op.unary.f32(i32 22, float %323)  ; Frc(value)
  %325 = fadd fast float %324, %288
  %326 = fmul fast float %281, %322
  %327 = call float @dx.op.unary.f32(i32 22, float %326)  ; Frc(value)
  %328 = fadd fast float %327, %286
  %329 = fmul fast float %294, %322
  %330 = call float @dx.op.unary.f32(i32 22, float %329)  ; Frc(value)
  %331 = fmul fast float %330, 0x401921FB60000000
  %332 = fadd fast float %331, %313
  %333 = call float @dx.op.unary.f32(i32 13, float %332)  ; Sin(value)
  %334 = call float @dx.op.unary.f32(i32 12, float %332)  ; Cos(value)
  %335 = fsub fast float -0.000000e+00, %333
  %336 = fadd fast float %59, -5.000000e-01
  %337 = fadd fast float %60, -5.000000e-01
  %338 = fmul fast float %305, %336
  %339 = fmul fast float %307, %337
  %340 = fadd fast float %338, 5.000000e-01
  %341 = fadd fast float %339, 5.000000e-01
  %342 = fmul fast float %316, %340
  %343 = fmul fast float %319, %341
  %344 = fmul fast float %334, %342
  %345 = call float @dx.op.tertiary.f32(i32 46, float %335, float %343, float %344)  ; FMad(a,b,c)
  %346 = fmul fast float %333, %342
  %347 = call float @dx.op.tertiary.f32(i32 46, float %334, float %343, float %346)  ; FMad(a,b,c)
  %348 = fadd fast float %325, %345
  %349 = fadd fast float %328, %347
  %350 = icmp ugt i32 %299, 1
  %351 = icmp ugt i32 %297, 33554431
  %352 = or i1 %351, %350
  br i1 %352, label %353, label %378

; <label>:353                                     ; preds = %278
  %354 = add i32 %44, 132
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = lshr i32 %356, 16
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = fmul fast float %321, %358
  %360 = call float @dx.op.unary.f32(i32 22, float %359)  ; Frc(value)
  %361 = mul nuw nsw i32 %299, %300
  %362 = uitofp i32 %361 to float
  %363 = fmul fast float %360, %362
  %364 = call float @dx.op.unary.f32(i32 27, float %363)  ; Round_ni(value)
  %365 = fptoui float %364 to i32
  %366 = urem i32 %365, %299
  %367 = udiv i32 %365, %300
  %368 = call float @dx.op.unary.f32(i32 22, float %348)  ; Frc(value)
  %369 = call float @dx.op.unary.f32(i32 22, float %349)  ; Frc(value)
  %370 = uitofp i32 %366 to float
  %371 = uitofp i32 %367 to float
  %372 = fadd fast float %368, %370
  %373 = fadd fast float %369, %371
  %374 = uitofp i32 %299 to float
  %375 = uitofp i32 %300 to float
  %376 = fdiv fast float %372, %374
  %377 = fdiv fast float %373, %375
  br label %378

; <label>:378                                     ; preds = %353, %278
  %379 = phi float [ %376, %353 ], [ %348, %278 ]
  %380 = phi float [ %377, %353 ], [ %349, %278 ]
  %381 = and i32 %272, 16
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %579, label %383

; <label>:383                                     ; preds = %378
  %384 = add i32 %44, 200
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = add i32 %386, 0
  %388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %388, %dx.types.Handle %67, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = extractvalue %dx.types.ResRet.f32 %389, 3
  %394 = and i32 %297, 255
  %395 = uitofp i32 %394 to float
  %396 = lshr i32 %297, 8
  %397 = and i32 %396, 255
  %398 = uitofp i32 %397 to float
  %399 = fmul fast float %393, %395
  %400 = fadd fast float %399, %398
  %401 = fmul fast float %400, 0x3F70101000000000
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 512
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %414, label %406

; <label>:406                                     ; preds = %383
  %407 = add i32 %44, 240
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = add i32 %409, 0
  %411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %410, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %412 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %411, %dx.types.Handle %68, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %413 = extractvalue %dx.types.ResRet.f32 %412, 0
  br label %414

; <label>:414                                     ; preds = %406, %383
  %415 = phi float [ %413, %406 ], [ 1.000000e+00, %383 ]
  %416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %417 = extractvalue %dx.types.ResRet.i32 %416, 0
  %418 = and i32 %417, 33554432
  %419 = icmp eq i32 %418, 0
  br i1 %419, label %526, label %420

; <label>:420                                     ; preds = %414
  %421 = add i32 %44, 128
  %422 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %421, i32 undef)  ; BufferLoad(srv,index,wot)
  %423 = extractvalue %dx.types.ResRet.i32 %422, 0
  %424 = and i32 %423, 65535
  %425 = call float @dx.op.legacyF16ToF32(i32 131, i32 %424)  ; LegacyF16ToF32(value)
  %426 = lshr i32 %423, 16
  %427 = call float @dx.op.legacyF16ToF32(i32 131, i32 %426)  ; LegacyF16ToF32(value)
  %428 = add i32 %44, 132
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = and i32 %430, 65535
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = lshr i32 %434, 24
  %436 = uitofp i32 %435 to float
  %437 = fmul fast float %436, 0x3F70101020000000
  %438 = and i32 %434, 255
  %439 = uitofp i32 %438 to float
  %440 = fmul fast float %439, 0x3F70101020000000
  %441 = lshr i32 %434, 8
  %442 = and i32 %441, 255
  %443 = uitofp i32 %442 to float
  %444 = fmul fast float %443, 0x3F70101020000000
  %445 = lshr i32 %434, 16
  %446 = and i32 %445, 255
  %447 = uitofp i32 %446 to float
  %448 = fmul fast float %447, 0x3F70101020000000
  %449 = add i32 %44, 124
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = lshr i32 %451, 24
  %453 = uitofp i32 %452 to float
  %454 = fmul fast float %453, 0x3F70101020000000
  %455 = and i32 %451, 255
  %456 = uitofp i32 %455 to float
  %457 = fmul fast float %456, 0x3F70101020000000
  %458 = lshr i32 %451, 8
  %459 = and i32 %458, 255
  %460 = uitofp i32 %459 to float
  %461 = fmul fast float %460, 0x3F70101020000000
  %462 = lshr i32 %451, 16
  %463 = and i32 %462, 255
  %464 = uitofp i32 %463 to float
  %465 = fmul fast float %464, 0x3F70101020000000
  %466 = bitcast float %390 to i32
  %467 = ashr i32 %466, 1
  %468 = sub nsw i32 1597463174, %467
  %469 = bitcast i32 %468 to float
  %470 = fmul fast float %390, 5.000000e-01
  %471 = fmul fast float %469, %469
  %472 = fmul fast float %471, %470
  %473 = fsub fast float 1.500000e+00, %472
  %474 = fmul fast float %469, %390
  %475 = fmul fast float %474, %473
  %476 = bitcast float %391 to i32
  %477 = ashr i32 %476, 1
  %478 = sub nsw i32 1597463174, %477
  %479 = bitcast i32 %478 to float
  %480 = fmul fast float %391, 5.000000e-01
  %481 = fmul fast float %479, %479
  %482 = fmul fast float %481, %480
  %483 = fsub fast float 1.500000e+00, %482
  %484 = fmul fast float %479, %391
  %485 = fmul fast float %484, %483
  %486 = bitcast float %392 to i32
  %487 = ashr i32 %486, 1
  %488 = sub nsw i32 1597463174, %487
  %489 = bitcast i32 %488 to float
  %490 = fmul fast float %392, 5.000000e-01
  %491 = fmul fast float %489, %489
  %492 = fmul fast float %491, %490
  %493 = fsub fast float 1.500000e+00, %492
  %494 = fmul fast float %489, %392
  %495 = fmul fast float %494, %493
  %496 = fsub fast float %475, %457
  %497 = fsub fast float %485, %461
  %498 = fsub fast float %495, %465
  %499 = fmul fast float %496, %425
  %500 = fmul fast float %497, %427
  %501 = fmul fast float %498, %432
  %502 = fadd fast float %499, %440
  %503 = fadd fast float %500, %444
  %504 = fadd fast float %501, %448
  %505 = call float @dx.op.unary.f32(i32 7, float %502)  ; Saturate(value)
  %506 = call float @dx.op.unary.f32(i32 7, float %503)  ; Saturate(value)
  %507 = call float @dx.op.unary.f32(i32 7, float %504)  ; Saturate(value)
  %508 = fmul fast float %505, %505
  %509 = fmul fast float %506, %506
  %510 = fmul fast float %507, %507
  %511 = fsub fast float %508, %390
  %512 = fsub fast float %509, %391
  %513 = fsub fast float %510, %392
  %514 = fmul fast float %511, %415
  %515 = fmul fast float %512, %415
  %516 = fmul fast float %513, %415
  %517 = fadd fast float %514, %390
  %518 = fadd fast float %515, %391
  %519 = fadd fast float %516, %392
  %520 = fadd fast float %437, %401
  %521 = fsub fast float %520, %454
  %522 = call float @dx.op.unary.f32(i32 7, float %521)  ; Saturate(value)
  %523 = fsub fast float %522, %401
  %524 = fmul fast float %523, %415
  %525 = fadd fast float %524, %401
  br label %579

; <label>:526                                     ; preds = %414
  %527 = and i32 %417, 134217728
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %563, label %529

; <label>:529                                     ; preds = %526
  %530 = call float @dx.op.unary.f32(i32 24, float %207)  ; Sqrt(value)
  %531 = call float @dx.op.unary.f32(i32 24, float %211)  ; Sqrt(value)
  %532 = call float @dx.op.unary.f32(i32 24, float %215)  ; Sqrt(value)
  %533 = fadd fast float %530, -5.000000e-01
  %534 = fadd fast float %531, -5.000000e-01
  %535 = fadd fast float %532, -5.000000e-01
  %536 = fmul fast float %533, %415
  %537 = fmul fast float %534, %415
  %538 = fmul fast float %535, %415
  %539 = fadd fast float %536, 5.000000e-01
  %540 = fadd fast float %537, 5.000000e-01
  %541 = fadd fast float %538, 5.000000e-01
  %542 = call float @dx.op.unary.f32(i32 24, float %390)  ; Sqrt(value)
  %543 = call float @dx.op.unary.f32(i32 24, float %391)  ; Sqrt(value)
  %544 = call float @dx.op.unary.f32(i32 24, float %392)  ; Sqrt(value)
  %545 = fmul fast float %539, 2.000000e+00
  %546 = fsub fast float 1.000000e+00, %545
  %547 = fmul fast float %546, %542
  %548 = fadd fast float %547, %545
  %549 = fmul fast float %548, %542
  %550 = fmul fast float %540, 2.000000e+00
  %551 = fsub fast float 1.000000e+00, %550
  %552 = fmul fast float %551, %543
  %553 = fadd fast float %552, %550
  %554 = fmul fast float %553, %543
  %555 = fmul fast float %541, 2.000000e+00
  %556 = fsub fast float 1.000000e+00, %555
  %557 = fmul fast float %556, %544
  %558 = fadd fast float %557, %555
  %559 = fmul fast float %558, %544
  %560 = fmul fast float %549, %549
  %561 = fmul fast float %554, %554
  %562 = fmul fast float %559, %559
  br label %579

; <label>:563                                     ; preds = %526
  %564 = fmul fast float %207, %207
  %565 = fmul fast float %211, %211
  %566 = fmul fast float %215, %215
  %567 = fadd fast float %564, -1.000000e+00
  %568 = fadd fast float %565, -1.000000e+00
  %569 = fadd fast float %566, -1.000000e+00
  %570 = fmul fast float %415, %567
  %571 = fmul fast float %415, %568
  %572 = fmul fast float %415, %569
  %573 = fadd fast float %570, 1.000000e+00
  %574 = fadd fast float %571, 1.000000e+00
  %575 = fadd fast float %572, 1.000000e+00
  %576 = fmul fast float %573, %390
  %577 = fmul fast float %574, %391
  %578 = fmul fast float %575, %392
  br label %579

; <label>:579                                     ; preds = %563, %529, %420, %378
  %580 = phi float [ %525, %420 ], [ %401, %529 ], [ %401, %563 ], [ 0x3FA23C0BE0000000, %378 ]
  %581 = phi float [ %517, %420 ], [ %560, %529 ], [ %576, %563 ], [ 1.000000e+00, %378 ]
  %582 = phi float [ %518, %420 ], [ %561, %529 ], [ %577, %563 ], [ 1.000000e+00, %378 ]
  %583 = phi float [ %519, %420 ], [ %562, %529 ], [ %578, %563 ], [ 1.000000e+00, %378 ]
  %584 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %585 = extractvalue %dx.types.CBufRet.i32 %584, 1
  %586 = and i32 %585, 1
  %587 = icmp ne i32 %586, 0
  %588 = add i32 %44, 196
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = and i32 %590, 32
  %592 = icmp ne i32 %591, 0
  %593 = and i1 %587, %592
  %594 = select i1 %593, float 1.000000e+00, float %581
  %595 = select i1 %593, float 0x3FD3333340000000, float %582
  %596 = select i1 %593, float 0x3FD3333340000000, float %583
  %597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %598 = extractvalue %dx.types.ResRet.i32 %597, 0
  %599 = and i32 %598, 32
  %600 = icmp eq i32 %599, 0
  br i1 %600, label %673, label %601

; <label>:601                                     ; preds = %579
  %602 = add i32 %44, 60
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = add i32 %44, 208
  %606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %605, i32 undef)  ; BufferLoad(srv,index,wot)
  %607 = extractvalue %dx.types.ResRet.i32 %606, 0
  %608 = add i32 %607, 0
  %609 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %608, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %610 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %609, %dx.types.Handle %67, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %611 = extractvalue %dx.types.ResRet.f32 %610, 0
  %612 = extractvalue %dx.types.ResRet.f32 %610, 1
  %613 = extractvalue %dx.types.ResRet.f32 %610, 2
  %614 = extractvalue %dx.types.ResRet.f32 %610, 3
  %615 = and i32 %604, 255
  %616 = uitofp i32 %615 to float
  %617 = lshr i32 %604, 8
  %618 = and i32 %617, 255
  %619 = uitofp i32 %618 to float
  %620 = lshr i32 %604, 16
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101000000000
  %624 = fmul fast float %611, %616
  %625 = fadd fast float %624, %619
  %626 = fmul fast float %625, 0x3F70101000000000
  %627 = fadd fast float %612, -5.000000e-01
  %628 = fadd fast float %614, -5.000000e-01
  %629 = fmul fast float %627, %623
  %630 = fmul fast float %628, %623
  %631 = fadd fast float %629, 5.000000e-01
  %632 = fadd fast float %630, 5.000000e-01
  %633 = fmul fast float %631, 2.000000e+00
  %634 = fadd fast float %633, -1.000000e+00
  %635 = fmul fast float %632, 2.000000e+00
  %636 = fadd fast float %635, -1.000000e+00
  %637 = fadd fast float %634, %636
  %638 = fmul fast float %637, 5.000000e-01
  %639 = fsub fast float %634, %636
  %640 = fmul fast float %639, 5.000000e-01
  %641 = call float @dx.op.unary.f32(i32 6, float %638)  ; FAbs(value)
  %642 = fsub fast float 1.000000e+00, %641
  %643 = call float @dx.op.unary.f32(i32 6, float %640)  ; FAbs(value)
  %644 = fsub fast float %642, %643
  %645 = call float @dx.op.dot3.f32(i32 55, float %638, float %640, float %644, float %638, float %640, float %644)  ; Dot3(ax,ay,az,bx,by,bz)
  %646 = call float @dx.op.unary.f32(i32 25, float %645)  ; Rsqrt(value)
  %647 = fmul fast float %638, %646
  %648 = fmul fast float %640, %646
  %649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %650 = extractvalue %dx.types.ResRet.i32 %649, 0
  %651 = and i32 %650, 67108864
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %669, label %653

; <label>:653                                     ; preds = %601
  %654 = add i32 %44, 152
  %655 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %654, i32 undef)  ; BufferLoad(srv,index,wot)
  %656 = extractvalue %dx.types.ResRet.i32 %655, 0
  %657 = and i32 %656, 65535
  %658 = call float @dx.op.legacyF16ToF32(i32 131, i32 %657)  ; LegacyF16ToF32(value)
  %659 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %289, i32 undef)  ; BufferLoad(srv,index,wot)
  %660 = extractvalue %dx.types.ResRet.i32 %659, 0
  %661 = and i32 %660, 65535
  %662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %661)  ; LegacyF16ToF32(value)
  %663 = lshr i32 %656, 16
  %664 = call float @dx.op.legacyF16ToF32(i32 131, i32 %663)  ; LegacyF16ToF32(value)
  %665 = fsub fast float %626, %664
  %666 = fmul fast float %665, %658
  %667 = fadd fast float %666, %662
  %668 = call float @dx.op.unary.f32(i32 7, float %667)  ; Saturate(value)
  br label %669

; <label>:669                                     ; preds = %653, %601
  %670 = phi float [ %668, %653 ], [ %626, %601 ]
  %671 = call float @dx.op.dot2.f32(i32 54, float %647, float %648, float 1.000000e+00, float 0.000000e+00)  ; Dot2(ax,ay,bx,by)
  %672 = call float @dx.op.dot2.f32(i32 54, float %647, float %648, float 0.000000e+00, float 1.000000e+00)  ; Dot2(ax,ay,bx,by)
  br label %673

; <label>:673                                     ; preds = %669, %579
  %674 = phi float [ %670, %669 ], [ 0x3FD6666660000000, %579 ]
  %675 = phi float [ %671, %669 ], [ 0.000000e+00, %579 ]
  %676 = phi float [ %672, %669 ], [ 0.000000e+00, %579 ]
  %677 = phi float [ %613, %669 ], [ 1.000000e+00, %579 ]
  %678 = add i32 %44, 96
  %679 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %678, i32 undef)  ; BufferLoad(srv,index,wot)
  %680 = extractvalue %dx.types.ResRet.i32 %679, 0
  %681 = lshr i32 %680, 22
  %682 = shl nuw nsw i32 %681, 5
  %683 = call float @dx.op.legacyF16ToF32(i32 131, i32 %682)  ; LegacyF16ToF32(value)
  %684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %685 = extractvalue %dx.types.ResRet.i32 %684, 0
  %686 = and i32 %685, 64
  %687 = icmp eq i32 %686, 0
  br i1 %687, label %721, label %688

; <label>:688                                     ; preds = %673
  %689 = add i32 %44, 216
  %690 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %689, i32 undef)  ; BufferLoad(srv,index,wot)
  %691 = extractvalue %dx.types.ResRet.i32 %690, 0
  %692 = add i32 %691, 0
  %693 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %692, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %695 = extractvalue %dx.types.ResRet.i32 %694, 0
  %696 = and i32 %695, 131072
  %697 = icmp eq i32 %696, 0
  %698 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %693, %dx.types.Handle %67, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %699 = extractvalue %dx.types.ResRet.f32 %698, 0
  %700 = extractvalue %dx.types.ResRet.f32 %698, 1
  %701 = extractvalue %dx.types.ResRet.f32 %698, 2
  %702 = fmul fast float %699, %195
  %703 = fmul fast float %700, %198
  %704 = fmul fast float %701, %201
  br i1 %697, label %711, label %705

; <label>:705                                     ; preds = %688
  %706 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %707 = extractvalue %dx.types.CBufRet.f32 %706, 0
  %708 = fmul fast float %707, %702
  %709 = fmul fast float %707, %703
  %710 = fmul fast float %707, %704
  br label %711

; <label>:711                                     ; preds = %705, %688
  %712 = phi float [ %708, %705 ], [ %702, %688 ]
  %713 = phi float [ %709, %705 ], [ %703, %688 ]
  %714 = phi float [ %710, %705 ], [ %704, %688 ]
  %715 = fmul fast float %712, %683
  %716 = select i1 %189, float %715, float %712
  %717 = call float @dx.op.dot3.f32(i32 55, float %716, float %713, float %714, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %718 = select i1 %189, float 0.000000e+00, float %712
  %719 = select i1 %189, float %717, float %713
  %720 = select i1 %189, float 0.000000e+00, float %714
  br label %721

; <label>:721                                     ; preds = %711, %673
  %722 = phi float [ %718, %711 ], [ 0.000000e+00, %673 ]
  %723 = phi float [ %719, %711 ], [ 0.000000e+00, %673 ]
  %724 = phi float [ %720, %711 ], [ 0.000000e+00, %673 ]
  %725 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %726 = extractvalue %dx.types.ResRet.i32 %725, 0
  %727 = and i32 %726, 14336
  %728 = icmp eq i32 %727, 0
  br i1 %728, label %754, label %729

; <label>:729                                     ; preds = %721
  %730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %731 = extractvalue %dx.types.ResRet.i32 %730, 0
  %732 = and i32 %731, 4096
  %733 = icmp eq i32 %732, 0
  br i1 %733, label %754, label %734

; <label>:734                                     ; preds = %729
  %735 = and i32 %731, 1048576
  %736 = icmp ne i32 %735, 0
  %737 = add i32 %44, 248
  %738 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %737, i32 undef)  ; BufferLoad(srv,index,wot)
  %739 = extractvalue %dx.types.ResRet.i32 %738, 0
  %740 = add i32 %739, 0
  %741 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %740, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %742 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %741, %dx.types.Handle %68, float %379, float %380, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %743 = extractvalue %dx.types.ResRet.f32 %742, 2
  %744 = select i1 %736, float 1.000000e+00, float %743
  %745 = add i32 %44, 100
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 65535
  %749 = call float @dx.op.legacyF16ToF32(i32 131, i32 %748)  ; LegacyF16ToF32(value)
  %750 = lshr i32 %747, 16
  %751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %750)  ; LegacyF16ToF32(value)
  %752 = fmul fast float %749, %744
  %753 = fadd fast float %752, %751
  br label %754

; <label>:754                                     ; preds = %734, %729, %721
  %755 = phi float [ %753, %734 ], [ 0.000000e+00, %729 ], [ 0.000000e+00, %721 ]
  %756 = add i32 %44, 64
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = and i32 %758, 255
  %760 = uitofp i32 %759 to float
  %761 = lshr i32 %758, 8
  %762 = and i32 %761, 255
  %763 = uitofp i32 %762 to float
  %764 = call float @dx.op.dot3.f32(i32 55, float %594, float %595, float %596, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %765 = fmul fast float %763, %764
  %766 = fadd fast float %765, %760
  %767 = fmul fast float %766, 0x3F70101020000000
  %768 = call float @dx.op.unary.f32(i32 7, float %767)  ; Saturate(value)
  br label %769

; <label>:769                                     ; preds = %754, %188
  %770 = phi float [ %675, %754 ], [ 0.000000e+00, %188 ]
  %771 = phi float [ %676, %754 ], [ 0.000000e+00, %188 ]
  %772 = phi float [ %594, %754 ], [ 0.000000e+00, %188 ]
  %773 = phi float [ %595, %754 ], [ 0.000000e+00, %188 ]
  %774 = phi float [ %596, %754 ], [ 0.000000e+00, %188 ]
  %775 = phi float [ %722, %754 ], [ 0.000000e+00, %188 ]
  %776 = phi float [ %723, %754 ], [ 0.000000e+00, %188 ]
  %777 = phi float [ %724, %754 ], [ 0.000000e+00, %188 ]
  %778 = phi float [ %580, %754 ], [ 0.000000e+00, %188 ]
  %779 = phi float [ 1.000000e+00, %754 ], [ 0.000000e+00, %188 ]
  %780 = phi float [ %674, %754 ], [ 0.000000e+00, %188 ]
  %781 = phi float [ %677, %754 ], [ 0.000000e+00, %188 ]
  %782 = phi float [ %755, %754 ], [ 0.000000e+00, %188 ]
  %783 = phi float [ %768, %754 ], [ 0.000000e+00, %188 ]
  %784 = icmp ult i32 %269, 2
  %785 = add i32 %44, 40
  %786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %787 = extractvalue %dx.types.ResRet.i32 %786, 0
  %788 = add i32 %44, 44
  %789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %788, i32 undef)  ; BufferLoad(srv,index,wot)
  %790 = extractvalue %dx.types.ResRet.i32 %789, 0
  %791 = or i32 %790, %787
  %792 = icmp eq i32 %791, 0
  br i1 %792, label %1657, label %793

; <label>:793                                     ; preds = %769
  %794 = add i32 %44, 172
  %795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %796 = extractvalue %dx.types.ResRet.i32 %795, 0
  %797 = lshr i32 %796, 16
  %798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %797)  ; LegacyF16ToF32(value)
  %799 = fmul fast float %798, 0x3F50624DE0000000
  %800 = add i32 %44, 72
  %801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %802 = extractvalue %dx.types.ResRet.i32 %801, 0
  %803 = lshr i32 %802, 16
  %804 = and i32 %803, 255
  %805 = lshr i32 %802, 24
  %806 = add i32 %44, 180
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %806, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 65535
  %810 = call float @dx.op.legacyF16ToF32(i32 131, i32 %809)  ; LegacyF16ToF32(value)
  %811 = lshr i32 %808, 16
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = add i32 %44, 48
  %814 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %813, i32 undef)  ; BufferLoad(srv,index,wot)
  %815 = extractvalue %dx.types.ResRet.i32 %814, 0
  %816 = lshr i32 %815, 22
  %817 = shl nuw nsw i32 %816, 5
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = shl i32 %815, 4
  %820 = and i32 %819, 32752
  %821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %820)  ; LegacyF16ToF32(value)
  %822 = lshr i32 %815, 7
  %823 = and i32 %822, 32752
  %824 = call float @dx.op.legacyF16ToF32(i32 131, i32 %823)  ; LegacyF16ToF32(value)
  %825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %826 = extractvalue %dx.types.CBufRet.f32 %825, 3
  %827 = fmul fast float %826, 1.000000e+03
  %828 = fmul fast float %262, %827
  %829 = call float @dx.op.unary.f32(i32 22, float %828)  ; Frc(value)
  %830 = fadd fast float %829, %252
  %831 = fmul fast float %263, %827
  %832 = call float @dx.op.unary.f32(i32 22, float %831)  ; Frc(value)
  %833 = fadd fast float %832, %254
  %834 = fmul fast float %799, %827
  %835 = call float @dx.op.unary.f32(i32 22, float %834)  ; Frc(value)
  %836 = fmul fast float %835, 0x401921FB60000000
  %837 = fadd fast float %836, %818
  %838 = call float @dx.op.unary.f32(i32 13, float %837)  ; Sin(value)
  %839 = call float @dx.op.unary.f32(i32 12, float %837)  ; Cos(value)
  %840 = fsub fast float -0.000000e+00, %838
  %841 = fadd fast float %61, -5.000000e-01
  %842 = fadd fast float %62, -5.000000e-01
  %843 = fmul fast float %810, %841
  %844 = fmul fast float %812, %842
  %845 = fadd fast float %843, 5.000000e-01
  %846 = fadd fast float %844, 5.000000e-01
  %847 = fmul fast float %821, %845
  %848 = fmul fast float %824, %846
  %849 = fmul fast float %839, %847
  %850 = call float @dx.op.tertiary.f32(i32 46, float %840, float %848, float %849)  ; FMad(a,b,c)
  %851 = fmul fast float %838, %847
  %852 = call float @dx.op.tertiary.f32(i32 46, float %839, float %848, float %851)  ; FMad(a,b,c)
  %853 = fadd fast float %830, %850
  %854 = fadd fast float %833, %852
  %855 = icmp ugt i32 %804, 1
  %856 = icmp ugt i32 %802, 33554431
  %857 = or i1 %856, %855
  br i1 %857, label %858, label %883

; <label>:858                                     ; preds = %793
  %859 = add i32 %44, 148
  %860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %859, i32 undef)  ; BufferLoad(srv,index,wot)
  %861 = extractvalue %dx.types.ResRet.i32 %860, 0
  %862 = lshr i32 %861, 16
  %863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %862)  ; LegacyF16ToF32(value)
  %864 = fmul fast float %826, %863
  %865 = call float @dx.op.unary.f32(i32 22, float %864)  ; Frc(value)
  %866 = mul nuw nsw i32 %804, %805
  %867 = uitofp i32 %866 to float
  %868 = fmul fast float %865, %867
  %869 = call float @dx.op.unary.f32(i32 27, float %868)  ; Round_ni(value)
  %870 = fptoui float %869 to i32
  %871 = urem i32 %870, %804
  %872 = udiv i32 %870, %805
  %873 = call float @dx.op.unary.f32(i32 22, float %853)  ; Frc(value)
  %874 = call float @dx.op.unary.f32(i32 22, float %854)  ; Frc(value)
  %875 = uitofp i32 %871 to float
  %876 = uitofp i32 %872 to float
  %877 = fadd fast float %873, %875
  %878 = fadd fast float %874, %876
  %879 = uitofp i32 %804 to float
  %880 = uitofp i32 %805 to float
  %881 = fdiv fast float %877, %879
  %882 = fdiv fast float %878, %880
  br label %883

; <label>:883                                     ; preds = %858, %793
  %884 = phi float [ %881, %858 ], [ %853, %793 ]
  %885 = phi float [ %882, %858 ], [ %854, %793 ]
  %886 = and i32 %787, 16777216
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %997, label %888

; <label>:888                                     ; preds = %883
  %889 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %890 = extractvalue %dx.types.CBufRet.f32 %889, 0
  %891 = extractvalue %dx.types.CBufRet.f32 %889, 1
  %892 = extractvalue %dx.types.CBufRet.f32 %889, 2
  %893 = fadd fast float %890, %118
  %894 = fadd fast float %891, %119
  %895 = fadd fast float %892, %120
  %896 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %897 = extractvalue %dx.types.CBufRet.f32 %896, 0
  %898 = call float @dx.op.unary.f32(i32 7, float %897)  ; Saturate(value)
  %899 = icmp eq i32 %43, 65535
  br i1 %899, label %994, label %900

; <label>:900                                     ; preds = %888
  %901 = lshr i32 %43, 1
  %902 = shl i32 %901, 2
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %18, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = and i32 %43, 1
  %906 = icmp ne i32 %905, 0
  %907 = lshr i32 %904, 16
  %908 = and i32 %904, 65535
  %909 = select i1 %906, i32 %907, i32 %908
  %910 = icmp eq i32 %909, 65535
  br i1 %910, label %990, label %911

; <label>:911                                     ; preds = %900
  %912 = mul nuw nsw i32 %909, 40
  %913 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.f32 %913, 0
  %915 = extractvalue %dx.types.ResRet.f32 %913, 1
  %916 = extractvalue %dx.types.ResRet.f32 %913, 2
  %917 = add nuw nsw i32 %912, 12
  %918 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %917, i32 undef)  ; BufferLoad(srv,index,wot)
  %919 = extractvalue %dx.types.ResRet.f32 %918, 0
  %920 = extractvalue %dx.types.ResRet.f32 %918, 1
  %921 = extractvalue %dx.types.ResRet.f32 %918, 2
  %922 = add nuw nsw i32 %912, 24
  %923 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.f32 %923, 0
  %925 = extractvalue %dx.types.ResRet.f32 %923, 1
  %926 = extractvalue %dx.types.ResRet.f32 %923, 2
  %927 = add nuw nsw i32 %912, 36
  %928 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %19, i32 %927, i32 undef)  ; BufferLoad(srv,index,wot)
  %929 = extractvalue %dx.types.ResRet.f32 %928, 0
  %930 = fsub fast float %893, %914
  %931 = fsub fast float %894, %915
  %932 = fsub fast float %895, %916
  %933 = fmul fast float %929, %930
  %934 = fmul fast float %929, %931
  %935 = fmul fast float %929, %932
  %936 = call float @dx.op.unary.f32(i32 27, float %933)  ; Round_ni(value)
  %937 = call float @dx.op.unary.f32(i32 27, float %934)  ; Round_ni(value)
  %938 = call float @dx.op.unary.f32(i32 27, float %935)  ; Round_ni(value)
  %939 = fadd fast float %936, 5.000000e-01
  %940 = fadd fast float %937, 5.000000e-01
  %941 = fadd fast float %938, 5.000000e-01
  %942 = fmul fast float %939, %919
  %943 = fmul fast float %940, %920
  %944 = fmul fast float %941, %921
  %945 = shl i32 %43, 2
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %17, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = add i32 %947, 0
  %949 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %948, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %950 = call float @dx.op.unary.f32(i32 22, float %942)  ; Frc(value)
  %951 = call float @dx.op.unary.f32(i32 22, float %943)  ; Frc(value)
  %952 = call float @dx.op.unary.f32(i32 22, float %944)  ; Frc(value)
  %953 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %949, %dx.types.Handle %40, float %950, float %951, float %952, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %954 = extractvalue %dx.types.ResRet.f32 %953, 0
  %955 = extractvalue %dx.types.ResRet.f32 %953, 1
  %956 = extractvalue %dx.types.ResRet.f32 %953, 2
  %957 = fmul fast float %954, 1.023000e+03
  %958 = fmul fast float %955, 1.023000e+03
  %959 = fmul fast float %956, 1.023000e+03
  %960 = fadd fast float %957, 5.000000e-01
  %961 = fadd fast float %958, 5.000000e-01
  %962 = fadd fast float %959, 5.000000e-01
  %963 = call float @dx.op.unary.f32(i32 27, float %960)  ; Round_ni(value)
  %964 = call float @dx.op.unary.f32(i32 27, float %961)  ; Round_ni(value)
  %965 = call float @dx.op.unary.f32(i32 27, float %962)  ; Round_ni(value)
  %966 = fsub fast float %933, %936
  %967 = fsub fast float %934, %937
  %968 = fsub fast float %935, %938
  %969 = fmul fast float %966, 7.500000e-01
  %970 = fmul fast float %967, 7.500000e-01
  %971 = fmul fast float %968, 7.500000e-01
  %972 = fadd fast float %936, 1.250000e-01
  %973 = fadd fast float %972, %969
  %974 = fadd fast float %973, %963
  %975 = fadd fast float %937, 1.250000e-01
  %976 = fadd fast float %975, %970
  %977 = fadd fast float %976, %964
  %978 = fadd fast float %938, 1.250000e-01
  %979 = fadd fast float %978, %971
  %980 = fadd fast float %979, %965
  %981 = fmul fast float %974, %924
  %982 = fmul fast float %977, %925
  %983 = fmul fast float %980, %926
  %984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %16, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %985 = extractvalue %dx.types.ResRet.i32 %984, 0
  %986 = add i32 %985, 0
  %987 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %986, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %988 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %987, %dx.types.Handle %38, float %981, float %982, float %983, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %989 = extractvalue %dx.types.ResRet.f32 %988, 0
  br label %990

; <label>:990                                     ; preds = %911, %900
  %991 = phi float [ %989, %911 ], [ -1.000000e+00, %900 ]
  %992 = fadd fast float %991, %898
  %993 = call float @dx.op.unary.f32(i32 7, float %992)  ; Saturate(value)
  br label %994

; <label>:994                                     ; preds = %990, %888
  %995 = phi float [ %993, %990 ], [ %898, %888 ]
  %996 = fmul fast float %995, %63
  br label %997

; <label>:997                                     ; preds = %994, %883
  %998 = phi float [ %996, %994 ], [ %63, %883 ]
  %999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1000 = extractvalue %dx.types.ResRet.i32 %999, 0
  %1001 = and i32 %1000, 256
  %1002 = icmp eq i32 %1001, 0
  br i1 %1002, label %1049, label %1003

; <label>:1003                                    ; preds = %997
  %1004 = add i32 %44, 236
  %1005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1004, i32 undef)  ; BufferLoad(srv,index,wot)
  %1006 = extractvalue %dx.types.ResRet.i32 %1005, 0
  %1007 = add i32 %1006, 0
  %1008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1009 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1008, %dx.types.Handle %68, float %884, float %885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1010 = extractvalue %dx.types.ResRet.f32 %1009, 0
  %1011 = add i32 %44, 84
  %1012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1011, i32 undef)  ; BufferLoad(srv,index,wot)
  %1013 = extractvalue %dx.types.ResRet.i32 %1012, 0
  %1014 = shl i32 %1013, 4
  %1015 = and i32 %1014, 32752
  %1016 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1015)  ; LegacyF16ToF32(value)
  %1017 = lshr i32 %1013, 7
  %1018 = and i32 %1017, 32752
  %1019 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1018)  ; LegacyF16ToF32(value)
  %1020 = fsub fast float 1.000000e+00, %998
  %1021 = call float @dx.op.binary.f32(i32 35, float %1020, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1022 = bitcast float %998 to i32
  %1023 = sitofp i32 %1022 to float
  %1024 = fadd fast float %1023, 0xC1CFBF8940000000
  %1025 = fmul fast float %1019, %1024
  %1026 = fadd fast float %1025, 0x41CFBF8940000000
  %1027 = fptosi float %1026 to i32
  %1028 = bitcast i32 %1027 to float
  %1029 = bitcast float %1021 to i32
  %1030 = sitofp i32 %1029 to float
  %1031 = fadd fast float %1030, 0xC1CFBF8940000000
  %1032 = fmul fast float %1031, %1019
  %1033 = fadd fast float %1032, 0x41CFBF8940000000
  %1034 = fptosi float %1033 to i32
  %1035 = bitcast i32 %1034 to float
  %1036 = fmul fast float %1028, %1016
  %1037 = fmul fast float %1035, %1016
  %1038 = fsub fast float %1021, %1036
  %1039 = fadd fast float %1037, %1021
  %1040 = call float @dx.op.unary.f32(i32 7, float %1038)  ; Saturate(value)
  %1041 = call float @dx.op.unary.f32(i32 7, float %1039)  ; Saturate(value)
  %1042 = fsub fast float %1010, %1040
  %1043 = fsub fast float %1041, %1040
  %1044 = bitcast float %1043 to i32
  %1045 = sub nsw i32 2129859010, %1044
  %1046 = bitcast i32 %1045 to float
  %1047 = fmul fast float %1046, %1042
  %1048 = call float @dx.op.unary.f32(i32 7, float %1047)  ; Saturate(value)
  br label %1049

; <label>:1049                                    ; preds = %1003, %997
  %1050 = phi float [ %1048, %1003 ], [ %998, %997 ]
  %1051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1052 = extractvalue %dx.types.ResRet.i32 %1051, 0
  %1053 = and i32 %1052, 128
  %1054 = icmp eq i32 %1053, 0
  br i1 %1054, label %1071, label %1055

; <label>:1055                                    ; preds = %1049
  %1056 = add i32 %44, 228
  %1057 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.i32 %1057, 0
  %1059 = add i32 %1058, 0
  %1060 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1059, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1061 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1060, %dx.types.Handle %68, float %884, float %885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1062 = extractvalue %dx.types.ResRet.f32 %1061, 0
  %1063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1064 = extractvalue %dx.types.ResRet.i32 %1063, 0
  %1065 = and i32 %1064, 524288
  %1066 = icmp ne i32 %1065, 0
  %1067 = fcmp fast ogt float %1062, 0x3FE0101020000000
  %1068 = select i1 %1067, float 1.000000e+00, float 0.000000e+00
  %1069 = select i1 %1066, float %1068, float %1062
  %1070 = fmul fast float %1069, %1050
  br label %1071

; <label>:1071                                    ; preds = %1055, %1049
  %1072 = phi float [ %1070, %1055 ], [ %1050, %1049 ]
  %1073 = fcmp fast ult float %1072, 0x3F70101020000000
  br i1 %1073, label %1657, label %1074

; <label>:1074                                    ; preds = %1071
  %1075 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.i32 %1075, 0
  %1077 = and i32 %1076, 16
  %1078 = icmp eq i32 %1077, 0
  br i1 %1078, label %1277, label %1079

; <label>:1079                                    ; preds = %1074
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %800, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = add i32 %44, 204
  %1083 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.i32 %1083, 0
  %1085 = add i32 %1084, 0
  %1086 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1085, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1087 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1086, %dx.types.Handle %67, float %884, float %885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = extractvalue %dx.types.ResRet.f32 %1087, 1
  %1090 = extractvalue %dx.types.ResRet.f32 %1087, 2
  %1091 = extractvalue %dx.types.ResRet.f32 %1087, 3
  %1092 = and i32 %1081, 255
  %1093 = uitofp i32 %1092 to float
  %1094 = lshr i32 %1081, 8
  %1095 = and i32 %1094, 255
  %1096 = uitofp i32 %1095 to float
  %1097 = fmul fast float %1091, %1093
  %1098 = fadd fast float %1097, %1096
  %1099 = fmul fast float %1098, 0x3F70101000000000
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = and i32 %1101, 512
  %1103 = icmp eq i32 %1102, 0
  br i1 %1103, label %1112, label %1104

; <label>:1104                                    ; preds = %1079
  %1105 = add i32 %44, 244
  %1106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1105, i32 undef)  ; BufferLoad(srv,index,wot)
  %1107 = extractvalue %dx.types.ResRet.i32 %1106, 0
  %1108 = add i32 %1107, 0
  %1109 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1108, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1110 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1109, %dx.types.Handle %68, float %884, float %885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1111 = extractvalue %dx.types.ResRet.f32 %1110, 0
  br label %1112

; <label>:1112                                    ; preds = %1104, %1079
  %1113 = phi float [ %1111, %1104 ], [ 1.000000e+00, %1079 ]
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = and i32 %1115, 33554432
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1224, label %1118

; <label>:1118                                    ; preds = %1112
  %1119 = add i32 %44, 144
  %1120 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1119, i32 undef)  ; BufferLoad(srv,index,wot)
  %1121 = extractvalue %dx.types.ResRet.i32 %1120, 0
  %1122 = and i32 %1121, 65535
  %1123 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1122)  ; LegacyF16ToF32(value)
  %1124 = lshr i32 %1121, 16
  %1125 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1124)  ; LegacyF16ToF32(value)
  %1126 = add i32 %44, 148
  %1127 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1126, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.i32 %1127, 0
  %1129 = and i32 %1128, 65535
  %1130 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1129)  ; LegacyF16ToF32(value)
  %1131 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %1132 = extractvalue %dx.types.ResRet.i32 %1131, 0
  %1133 = lshr i32 %1132, 24
  %1134 = uitofp i32 %1133 to float
  %1135 = fmul fast float %1134, 0x3F70101020000000
  %1136 = and i32 %1132, 255
  %1137 = uitofp i32 %1136 to float
  %1138 = fmul fast float %1137, 0x3F70101020000000
  %1139 = lshr i32 %1132, 8
  %1140 = and i32 %1139, 255
  %1141 = uitofp i32 %1140 to float
  %1142 = fmul fast float %1141, 0x3F70101020000000
  %1143 = lshr i32 %1132, 16
  %1144 = and i32 %1143, 255
  %1145 = uitofp i32 %1144 to float
  %1146 = fmul fast float %1145, 0x3F70101020000000
  %1147 = add i32 %44, 140
  %1148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1147, i32 undef)  ; BufferLoad(srv,index,wot)
  %1149 = extractvalue %dx.types.ResRet.i32 %1148, 0
  %1150 = lshr i32 %1149, 24
  %1151 = uitofp i32 %1150 to float
  %1152 = fmul fast float %1151, 0x3F70101020000000
  %1153 = and i32 %1149, 255
  %1154 = uitofp i32 %1153 to float
  %1155 = fmul fast float %1154, 0x3F70101020000000
  %1156 = lshr i32 %1149, 8
  %1157 = and i32 %1156, 255
  %1158 = uitofp i32 %1157 to float
  %1159 = fmul fast float %1158, 0x3F70101020000000
  %1160 = lshr i32 %1149, 16
  %1161 = and i32 %1160, 255
  %1162 = uitofp i32 %1161 to float
  %1163 = fmul fast float %1162, 0x3F70101020000000
  %1164 = bitcast float %1088 to i32
  %1165 = ashr i32 %1164, 1
  %1166 = sub nsw i32 1597463174, %1165
  %1167 = bitcast i32 %1166 to float
  %1168 = fmul fast float %1088, 5.000000e-01
  %1169 = fmul fast float %1167, %1167
  %1170 = fmul fast float %1169, %1168
  %1171 = fsub fast float 1.500000e+00, %1170
  %1172 = fmul fast float %1167, %1088
  %1173 = fmul fast float %1172, %1171
  %1174 = bitcast float %1089 to i32
  %1175 = ashr i32 %1174, 1
  %1176 = sub nsw i32 1597463174, %1175
  %1177 = bitcast i32 %1176 to float
  %1178 = fmul fast float %1089, 5.000000e-01
  %1179 = fmul fast float %1177, %1177
  %1180 = fmul fast float %1179, %1178
  %1181 = fsub fast float 1.500000e+00, %1180
  %1182 = fmul fast float %1177, %1089
  %1183 = fmul fast float %1182, %1181
  %1184 = bitcast float %1090 to i32
  %1185 = ashr i32 %1184, 1
  %1186 = sub nsw i32 1597463174, %1185
  %1187 = bitcast i32 %1186 to float
  %1188 = fmul fast float %1090, 5.000000e-01
  %1189 = fmul fast float %1187, %1187
  %1190 = fmul fast float %1189, %1188
  %1191 = fsub fast float 1.500000e+00, %1190
  %1192 = fmul fast float %1187, %1090
  %1193 = fmul fast float %1192, %1191
  %1194 = fsub fast float %1173, %1155
  %1195 = fsub fast float %1183, %1159
  %1196 = fsub fast float %1193, %1163
  %1197 = fmul fast float %1194, %1123
  %1198 = fmul fast float %1195, %1125
  %1199 = fmul fast float %1196, %1130
  %1200 = fadd fast float %1197, %1138
  %1201 = fadd fast float %1198, %1142
  %1202 = fadd fast float %1199, %1146
  %1203 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1204 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1205 = call float @dx.op.unary.f32(i32 7, float %1202)  ; Saturate(value)
  %1206 = fmul fast float %1203, %1203
  %1207 = fmul fast float %1204, %1204
  %1208 = fmul fast float %1205, %1205
  %1209 = fsub fast float %1206, %1088
  %1210 = fsub fast float %1207, %1089
  %1211 = fsub fast float %1208, %1090
  %1212 = fmul fast float %1209, %1113
  %1213 = fmul fast float %1210, %1113
  %1214 = fmul fast float %1211, %1113
  %1215 = fadd fast float %1212, %1088
  %1216 = fadd fast float %1213, %1089
  %1217 = fadd fast float %1214, %1090
  %1218 = fadd fast float %1135, %1099
  %1219 = fsub fast float %1218, %1152
  %1220 = call float @dx.op.unary.f32(i32 7, float %1219)  ; Saturate(value)
  %1221 = fsub fast float %1220, %1099
  %1222 = fmul fast float %1221, %1113
  %1223 = fadd fast float %1222, %1099
  br label %1277

; <label>:1224                                    ; preds = %1112
  %1225 = and i32 %1115, 134217728
  %1226 = icmp eq i32 %1225, 0
  br i1 %1226, label %1261, label %1227

; <label>:1227                                    ; preds = %1224
  %1228 = call float @dx.op.unary.f32(i32 24, float %239)  ; Sqrt(value)
  %1229 = call float @dx.op.unary.f32(i32 24, float %243)  ; Sqrt(value)
  %1230 = call float @dx.op.unary.f32(i32 24, float %247)  ; Sqrt(value)
  %1231 = fadd fast float %1228, -5.000000e-01
  %1232 = fadd fast float %1229, -5.000000e-01
  %1233 = fadd fast float %1230, -5.000000e-01
  %1234 = fmul fast float %1231, %1113
  %1235 = fmul fast float %1232, %1113
  %1236 = fmul fast float %1233, %1113
  %1237 = fadd fast float %1234, 5.000000e-01
  %1238 = fadd fast float %1235, 5.000000e-01
  %1239 = fadd fast float %1236, 5.000000e-01
  %1240 = call float @dx.op.unary.f32(i32 24, float %1088)  ; Sqrt(value)
  %1241 = call float @dx.op.unary.f32(i32 24, float %1089)  ; Sqrt(value)
  %1242 = call float @dx.op.unary.f32(i32 24, float %1090)  ; Sqrt(value)
  %1243 = fmul fast float %1237, 2.000000e+00
  %1244 = fsub fast float 1.000000e+00, %1243
  %1245 = fmul fast float %1244, %1240
  %1246 = fadd fast float %1245, %1243
  %1247 = fmul fast float %1246, %1240
  %1248 = fmul fast float %1238, 2.000000e+00
  %1249 = fsub fast float 1.000000e+00, %1248
  %1250 = fmul fast float %1249, %1241
  %1251 = fadd fast float %1250, %1248
  %1252 = fmul fast float %1251, %1241
  %1253 = fmul fast float %1239, 2.000000e+00
  %1254 = fsub fast float 1.000000e+00, %1253
  %1255 = fmul fast float %1254, %1242
  %1256 = fadd fast float %1255, %1253
  %1257 = fmul fast float %1256, %1242
  %1258 = fmul fast float %1247, %1247
  %1259 = fmul fast float %1252, %1252
  %1260 = fmul fast float %1257, %1257
  br label %1277

; <label>:1261                                    ; preds = %1224
  %1262 = fmul fast float %239, %239
  %1263 = fmul fast float %243, %243
  %1264 = fmul fast float %247, %247
  %1265 = fadd fast float %1262, -1.000000e+00
  %1266 = fadd fast float %1263, -1.000000e+00
  %1267 = fadd fast float %1264, -1.000000e+00
  %1268 = fmul fast float %1113, %1265
  %1269 = fmul fast float %1113, %1266
  %1270 = fmul fast float %1113, %1267
  %1271 = fadd fast float %1268, 1.000000e+00
  %1272 = fadd fast float %1269, 1.000000e+00
  %1273 = fadd fast float %1270, 1.000000e+00
  %1274 = fmul fast float %1271, %1088
  %1275 = fmul fast float %1272, %1089
  %1276 = fmul fast float %1273, %1090
  br label %1277

; <label>:1277                                    ; preds = %1261, %1227, %1118, %1074
  %1278 = phi float [ %1223, %1118 ], [ %1099, %1227 ], [ %1099, %1261 ], [ 0x3FA23C0BE0000000, %1074 ]
  %1279 = phi float [ %1215, %1118 ], [ %1258, %1227 ], [ %1274, %1261 ], [ 1.000000e+00, %1074 ]
  %1280 = phi float [ %1216, %1118 ], [ %1259, %1227 ], [ %1275, %1261 ], [ 1.000000e+00, %1074 ]
  %1281 = phi float [ %1217, %1118 ], [ %1260, %1227 ], [ %1276, %1261 ], [ 1.000000e+00, %1074 ]
  %1282 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1283 = extractvalue %dx.types.CBufRet.i32 %1282, 1
  %1284 = and i32 %1283, 1
  %1285 = icmp ne i32 %1284, 0
  %1286 = add i32 %44, 196
  %1287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1286, i32 undef)  ; BufferLoad(srv,index,wot)
  %1288 = extractvalue %dx.types.ResRet.i32 %1287, 0
  %1289 = and i32 %1288, 32
  %1290 = icmp ne i32 %1289, 0
  %1291 = and i1 %1285, %1290
  %1292 = select i1 %1291, float 1.000000e+00, float %1279
  %1293 = select i1 %1291, float 0x3FD3333340000000, float %1280
  %1294 = select i1 %1291, float 0x3FD3333340000000, float %1281
  %1295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1296 = extractvalue %dx.types.ResRet.i32 %1295, 0
  %1297 = and i32 %1296, 32
  %1298 = icmp eq i32 %1297, 0
  br i1 %1298, label %1371, label %1299

; <label>:1299                                    ; preds = %1277
  %1300 = add i32 %44, 76
  %1301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1300, i32 undef)  ; BufferLoad(srv,index,wot)
  %1302 = extractvalue %dx.types.ResRet.i32 %1301, 0
  %1303 = add i32 %44, 212
  %1304 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1303, i32 undef)  ; BufferLoad(srv,index,wot)
  %1305 = extractvalue %dx.types.ResRet.i32 %1304, 0
  %1306 = add i32 %1305, 0
  %1307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1306, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1308 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1307, %dx.types.Handle %67, float %884, float %885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1309 = extractvalue %dx.types.ResRet.f32 %1308, 0
  %1310 = extractvalue %dx.types.ResRet.f32 %1308, 1
  %1311 = extractvalue %dx.types.ResRet.f32 %1308, 2
  %1312 = extractvalue %dx.types.ResRet.f32 %1308, 3
  %1313 = and i32 %1302, 255
  %1314 = uitofp i32 %1313 to float
  %1315 = lshr i32 %1302, 8
  %1316 = and i32 %1315, 255
  %1317 = uitofp i32 %1316 to float
  %1318 = lshr i32 %1302, 16
  %1319 = and i32 %1318, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101000000000
  %1322 = fmul fast float %1309, %1314
  %1323 = fadd fast float %1322, %1317
  %1324 = fmul fast float %1323, 0x3F70101000000000
  %1325 = fadd fast float %1310, -5.000000e-01
  %1326 = fadd fast float %1312, -5.000000e-01
  %1327 = fmul fast float %1325, %1321
  %1328 = fmul fast float %1326, %1321
  %1329 = fadd fast float %1327, 5.000000e-01
  %1330 = fadd fast float %1328, 5.000000e-01
  %1331 = fmul fast float %1329, 2.000000e+00
  %1332 = fadd fast float %1331, -1.000000e+00
  %1333 = fmul fast float %1330, 2.000000e+00
  %1334 = fadd fast float %1333, -1.000000e+00
  %1335 = fadd fast float %1332, %1334
  %1336 = fmul fast float %1335, 5.000000e-01
  %1337 = fsub fast float %1332, %1334
  %1338 = fmul fast float %1337, 5.000000e-01
  %1339 = call float @dx.op.unary.f32(i32 6, float %1336)  ; FAbs(value)
  %1340 = fsub fast float 1.000000e+00, %1339
  %1341 = call float @dx.op.unary.f32(i32 6, float %1338)  ; FAbs(value)
  %1342 = fsub fast float %1340, %1341
  %1343 = call float @dx.op.dot3.f32(i32 55, float %1336, float %1338, float %1342, float %1336, float %1338, float %1342)  ; Dot3(ax,ay,az,bx,by,bz)
  %1344 = call float @dx.op.unary.f32(i32 25, float %1343)  ; Rsqrt(value)
  %1345 = fmul fast float %1336, %1344
  %1346 = fmul fast float %1338, %1344
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = and i32 %1348, 67108864
  %1350 = icmp eq i32 %1349, 0
  br i1 %1350, label %1367, label %1351

; <label>:1351                                    ; preds = %1299
  %1352 = add i32 %44, 168
  %1353 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1352, i32 undef)  ; BufferLoad(srv,index,wot)
  %1354 = extractvalue %dx.types.ResRet.i32 %1353, 0
  %1355 = and i32 %1354, 65535
  %1356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1355)  ; LegacyF16ToF32(value)
  %1357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1358 = extractvalue %dx.types.ResRet.i32 %1357, 0
  %1359 = and i32 %1358, 65535
  %1360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1359)  ; LegacyF16ToF32(value)
  %1361 = lshr i32 %1354, 16
  %1362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1361)  ; LegacyF16ToF32(value)
  %1363 = fsub fast float %1324, %1362
  %1364 = fmul fast float %1363, %1356
  %1365 = fadd fast float %1364, %1360
  %1366 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  br label %1367

; <label>:1367                                    ; preds = %1351, %1299
  %1368 = phi float [ %1366, %1351 ], [ %1324, %1299 ]
  %1369 = call float @dx.op.dot2.f32(i32 54, float %1345, float %1346, float %45, float %46)  ; Dot2(ax,ay,bx,by)
  %1370 = call float @dx.op.dot2.f32(i32 54, float %1345, float %1346, float %47, float %48)  ; Dot2(ax,ay,bx,by)
  br label %1371

; <label>:1371                                    ; preds = %1367, %1277
  %1372 = phi float [ %1368, %1367 ], [ 0x3FD6666660000000, %1277 ]
  %1373 = phi float [ %1369, %1367 ], [ 0.000000e+00, %1277 ]
  %1374 = phi float [ %1370, %1367 ], [ 0.000000e+00, %1277 ]
  %1375 = phi float [ %1311, %1367 ], [ 1.000000e+00, %1277 ]
  %1376 = add i32 %44, 112
  %1377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1376, i32 undef)  ; BufferLoad(srv,index,wot)
  %1378 = extractvalue %dx.types.ResRet.i32 %1377, 0
  %1379 = lshr i32 %1378, 22
  %1380 = shl nuw nsw i32 %1379, 5
  %1381 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1380)  ; LegacyF16ToF32(value)
  %1382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1383 = extractvalue %dx.types.ResRet.i32 %1382, 0
  %1384 = and i32 %1383, 64
  %1385 = icmp eq i32 %1384, 0
  br i1 %1385, label %1419, label %1386

; <label>:1386                                    ; preds = %1371
  %1387 = add i32 %44, 220
  %1388 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1387, i32 undef)  ; BufferLoad(srv,index,wot)
  %1389 = extractvalue %dx.types.ResRet.i32 %1388, 0
  %1390 = add i32 %1389, 0
  %1391 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1390, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1393 = extractvalue %dx.types.ResRet.i32 %1392, 0
  %1394 = and i32 %1393, 131072
  %1395 = icmp eq i32 %1394, 0
  %1396 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1391, %dx.types.Handle %67, float %884, float %885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1397 = extractvalue %dx.types.ResRet.f32 %1396, 0
  %1398 = extractvalue %dx.types.ResRet.f32 %1396, 1
  %1399 = extractvalue %dx.types.ResRet.f32 %1396, 2
  %1400 = fmul fast float %1397, %227
  %1401 = fmul fast float %1398, %230
  %1402 = fmul fast float %1399, %233
  br i1 %1395, label %1409, label %1403

; <label>:1403                                    ; preds = %1386
  %1404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1405 = extractvalue %dx.types.CBufRet.f32 %1404, 0
  %1406 = fmul fast float %1405, %1400
  %1407 = fmul fast float %1405, %1401
  %1408 = fmul fast float %1405, %1402
  br label %1409

; <label>:1409                                    ; preds = %1403, %1386
  %1410 = phi float [ %1406, %1403 ], [ %1400, %1386 ]
  %1411 = phi float [ %1407, %1403 ], [ %1401, %1386 ]
  %1412 = phi float [ %1408, %1403 ], [ %1402, %1386 ]
  %1413 = fmul fast float %1410, %1381
  %1414 = select i1 %189, float %1413, float %1410
  %1415 = call float @dx.op.dot3.f32(i32 55, float %1414, float %1411, float %1412, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1416 = select i1 %189, float 0.000000e+00, float %1410
  %1417 = select i1 %189, float %1415, float %1411
  %1418 = select i1 %189, float 0.000000e+00, float %1412
  br label %1419

; <label>:1419                                    ; preds = %1409, %1371
  %1420 = phi float [ %1416, %1409 ], [ 0.000000e+00, %1371 ]
  %1421 = phi float [ %1417, %1409 ], [ 0.000000e+00, %1371 ]
  %1422 = phi float [ %1418, %1409 ], [ 0.000000e+00, %1371 ]
  %1423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1424 = extractvalue %dx.types.ResRet.i32 %1423, 0
  %1425 = and i32 %1424, 14336
  %1426 = icmp eq i32 %1425, 0
  br i1 %1426, label %1452, label %1427

; <label>:1427                                    ; preds = %1419
  %1428 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1429 = extractvalue %dx.types.ResRet.i32 %1428, 0
  %1430 = and i32 %1429, 4096
  %1431 = icmp eq i32 %1430, 0
  br i1 %1431, label %1452, label %1432

; <label>:1432                                    ; preds = %1427
  %1433 = and i32 %1429, 1048576
  %1434 = icmp ne i32 %1433, 0
  %1435 = add i32 %44, 252
  %1436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1435, i32 undef)  ; BufferLoad(srv,index,wot)
  %1437 = extractvalue %dx.types.ResRet.i32 %1436, 0
  %1438 = add i32 %1437, 0
  %1439 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1438, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1440 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1439, %dx.types.Handle %68, float %884, float %885, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1441 = extractvalue %dx.types.ResRet.f32 %1440, 2
  %1442 = select i1 %1434, float 1.000000e+00, float %1441
  %1443 = add i32 %44, 116
  %1444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1443, i32 undef)  ; BufferLoad(srv,index,wot)
  %1445 = extractvalue %dx.types.ResRet.i32 %1444, 0
  %1446 = and i32 %1445, 65535
  %1447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1446)  ; LegacyF16ToF32(value)
  %1448 = lshr i32 %1445, 16
  %1449 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1448)  ; LegacyF16ToF32(value)
  %1450 = fmul fast float %1447, %1442
  %1451 = fadd fast float %1450, %1449
  br label %1452

; <label>:1452                                    ; preds = %1432, %1427, %1419
  %1453 = phi float [ %1451, %1432 ], [ 0.000000e+00, %1427 ], [ 0.000000e+00, %1419 ]
  %1454 = add i32 %44, 80
  %1455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1454, i32 undef)  ; BufferLoad(srv,index,wot)
  %1456 = extractvalue %dx.types.ResRet.i32 %1455, 0
  %1457 = and i32 %1456, 255
  %1458 = uitofp i32 %1457 to float
  %1459 = lshr i32 %1456, 8
  %1460 = and i32 %1459, 255
  %1461 = uitofp i32 %1460 to float
  %1462 = call float @dx.op.dot3.f32(i32 55, float %1292, float %1293, float %1294, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1463 = fmul fast float %1461, %1462
  %1464 = fadd fast float %1463, %1458
  %1465 = fmul fast float %1464, 0x3F70101020000000
  %1466 = call float @dx.op.unary.f32(i32 7, float %1465)  ; Saturate(value)
  br i1 %784, label %1467, label %1475

; <label>:1467                                    ; preds = %1452
  %1468 = fsub fast float 1.000000e+00, %1072
  %1469 = fmul fast float %1468, %772
  %1470 = fmul fast float %1468, %773
  %1471 = fmul fast float %1468, %774
  %1472 = fmul fast float %1468, %775
  %1473 = fmul fast float %1468, %776
  %1474 = fmul fast float %1468, %777
  br label %1475

; <label>:1475                                    ; preds = %1467, %1452
  %1476 = phi float [ %1469, %1467 ], [ %772, %1452 ]
  %1477 = phi float [ %1470, %1467 ], [ %773, %1452 ]
  %1478 = phi float [ %1471, %1467 ], [ %774, %1452 ]
  %1479 = phi float [ %1472, %1467 ], [ %775, %1452 ]
  %1480 = phi float [ %1473, %1467 ], [ %776, %1452 ]
  %1481 = phi float [ %1474, %1467 ], [ %777, %1452 ]
  %1482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1483 = extractvalue %dx.types.ResRet.i32 %1482, 0
  %1484 = and i32 %1483, 3
  %1485 = icmp eq i32 %1484, 3
  br i1 %1485, label %1564, label %1486

; <label>:1486                                    ; preds = %1475
  %1487 = and i32 %1483, 16
  %1488 = icmp ne i32 %1487, 0
  %1489 = select i1 %1488, float %1072, float 0.000000e+00
  %1490 = icmp eq i32 %1484, 0
  br i1 %1490, label %1491, label %1519

; <label>:1491                                    ; preds = %1486
  %1492 = and i32 %1483, 64
  %1493 = icmp ne i32 %1492, 0
  %1494 = select i1 %1493, float %1072, float 0.000000e+00
  %1495 = fsub fast float %1292, %1476
  %1496 = fsub fast float %1293, %1477
  %1497 = fsub fast float %1294, %1478
  %1498 = fmul fast float %1489, %1495
  %1499 = fmul fast float %1489, %1496
  %1500 = fmul fast float %1489, %1497
  %1501 = fadd fast float %1498, %1476
  %1502 = fadd fast float %1499, %1477
  %1503 = fadd fast float %1500, %1478
  %1504 = fsub fast float %1278, %778
  %1505 = fmul fast float %1489, %1504
  %1506 = fadd fast float %1505, %778
  %1507 = fsub fast float %1420, %1479
  %1508 = fsub fast float %1421, %1480
  %1509 = fsub fast float %1422, %1481
  %1510 = fmul fast float %1494, %1507
  %1511 = fmul fast float %1494, %1508
  %1512 = fmul fast float %1494, %1509
  %1513 = fadd fast float %1510, %1479
  %1514 = fadd fast float %1511, %1480
  %1515 = fadd fast float %1512, %1481
  %1516 = fsub fast float %1466, %783
  %1517 = fmul fast float %1489, %1516
  %1518 = fadd fast float %1517, %783
  br label %1564

; <label>:1519                                    ; preds = %1486
  %1520 = icmp eq i32 %1484, 1
  br i1 %1520, label %1521, label %1534

; <label>:1521                                    ; preds = %1519
  %1522 = fadd fast float %1292, -1.000000e+00
  %1523 = fadd fast float %1293, -1.000000e+00
  %1524 = fadd fast float %1294, -1.000000e+00
  %1525 = fmul fast float %1489, %1522
  %1526 = fmul fast float %1489, %1523
  %1527 = fmul fast float %1489, %1524
  %1528 = fadd fast float %1525, 1.000000e+00
  %1529 = fadd fast float %1526, 1.000000e+00
  %1530 = fadd fast float %1527, 1.000000e+00
  %1531 = fmul fast float %1528, %1476
  %1532 = fmul fast float %1529, %1477
  %1533 = fmul fast float %1530, %1478
  br label %1564

; <label>:1534                                    ; preds = %1519
  %1535 = icmp eq i32 %1484, 2
  br i1 %1535, label %1536, label %1564

; <label>:1536                                    ; preds = %1534
  %1537 = call float @dx.op.unary.f32(i32 24, float %1292)  ; Sqrt(value)
  %1538 = call float @dx.op.unary.f32(i32 24, float %1293)  ; Sqrt(value)
  %1539 = call float @dx.op.unary.f32(i32 24, float %1294)  ; Sqrt(value)
  %1540 = fadd fast float %1537, -5.000000e-01
  %1541 = fadd fast float %1538, -5.000000e-01
  %1542 = fadd fast float %1539, -5.000000e-01
  %1543 = fmul fast float %1540, %1489
  %1544 = fmul fast float %1541, %1489
  %1545 = fmul fast float %1542, %1489
  %1546 = fadd fast float %1543, 5.000000e-01
  %1547 = fadd fast float %1544, 5.000000e-01
  %1548 = fadd fast float %1545, 5.000000e-01
  %1549 = fmul fast float %1546, 2.000000e+00
  %1550 = fsub fast float 1.000000e+00, %1549
  %1551 = fmul fast float %1550, %1476
  %1552 = fadd fast float %1551, %1549
  %1553 = fmul fast float %1552, %1476
  %1554 = fmul fast float %1547, 2.000000e+00
  %1555 = fsub fast float 1.000000e+00, %1554
  %1556 = fmul fast float %1555, %1477
  %1557 = fadd fast float %1556, %1554
  %1558 = fmul fast float %1557, %1477
  %1559 = fmul fast float %1548, 2.000000e+00
  %1560 = fsub fast float 1.000000e+00, %1559
  %1561 = fmul fast float %1560, %1478
  %1562 = fadd fast float %1561, %1559
  %1563 = fmul fast float %1562, %1478
  br label %1564

; <label>:1564                                    ; preds = %1536, %1534, %1521, %1491, %1475
  %1565 = phi float [ %1476, %1475 ], [ %1553, %1536 ], [ %1476, %1534 ], [ %1531, %1521 ], [ %1501, %1491 ]
  %1566 = phi float [ %1477, %1475 ], [ %1558, %1536 ], [ %1477, %1534 ], [ %1532, %1521 ], [ %1502, %1491 ]
  %1567 = phi float [ %1478, %1475 ], [ %1563, %1536 ], [ %1478, %1534 ], [ %1533, %1521 ], [ %1503, %1491 ]
  %1568 = phi float [ %1479, %1475 ], [ %1479, %1536 ], [ %1479, %1534 ], [ %1479, %1521 ], [ %1513, %1491 ]
  %1569 = phi float [ %1480, %1475 ], [ %1480, %1536 ], [ %1480, %1534 ], [ %1480, %1521 ], [ %1514, %1491 ]
  %1570 = phi float [ %1481, %1475 ], [ %1481, %1536 ], [ %1481, %1534 ], [ %1481, %1521 ], [ %1515, %1491 ]
  %1571 = phi float [ %778, %1475 ], [ %778, %1536 ], [ %778, %1534 ], [ %778, %1521 ], [ %1506, %1491 ]
  %1572 = phi float [ %783, %1475 ], [ %783, %1536 ], [ %783, %1534 ], [ %783, %1521 ], [ %1518, %1491 ]
  %1573 = and i32 %1483, 12
  %1574 = icmp eq i32 %1573, 12
  br i1 %1574, label %1657, label %1575

; <label>:1575                                    ; preds = %1564
  %1576 = and i32 %1483, 2097184
  %1577 = icmp eq i32 %1576, 2097184
  %1578 = select i1 %1577, float %1072, float 0.000000e+00
  %1579 = and i32 %1483, 4194336
  %1580 = icmp eq i32 %1579, 4194336
  %1581 = select i1 %1580, float %1072, float 0.000000e+00
  %1582 = and i32 %1483, 8388640
  %1583 = icmp eq i32 %1582, 8388640
  %1584 = select i1 %1583, float %1072, float 0.000000e+00
  %1585 = and i32 %1483, 4096
  %1586 = icmp ne i32 %1585, 0
  %1587 = select i1 %1586, float %1072, float 0.000000e+00
  %1588 = icmp eq i32 %1573, 0
  br i1 %1588, label %1589, label %1605

; <label>:1589                                    ; preds = %1575
  %1590 = fsub fast float %1373, %770
  %1591 = fsub fast float %1374, %771
  %1592 = fmul fast float %1578, %1590
  %1593 = fmul fast float %1578, %1591
  %1594 = fadd fast float %1592, %770
  %1595 = fadd fast float %1593, %771
  %1596 = fsub fast float %1375, %781
  %1597 = fmul fast float %1581, %1596
  %1598 = fadd fast float %1597, %781
  %1599 = fsub fast float %1372, %780
  %1600 = fmul fast float %1584, %1599
  %1601 = fadd fast float %1600, %780
  %1602 = fsub fast float %1453, %782
  %1603 = fmul fast float %1587, %1602
  %1604 = fadd fast float %1603, %782
  br label %1657

; <label>:1605                                    ; preds = %1575
  %1606 = icmp eq i32 %1573, 4
  br i1 %1606, label %1607, label %1641

; <label>:1607                                    ; preds = %1605
  %1608 = fmul fast float %1578, %1373
  %1609 = fmul fast float %1578, %1374
  %1610 = fadd fast float %1608, %770
  %1611 = fadd fast float %1609, %771
  %1612 = call float @dx.op.binary.f32(i32 36, float %781, float %1375)  ; FMin(a,b)
  %1613 = fsub fast float %1612, %781
  %1614 = fmul fast float %1613, %1581
  %1615 = fadd fast float %1614, %781
  %1616 = fadd fast float %1372, %780
  %1617 = fmul fast float %1616, 0x3FF337FAE0000000
  %1618 = fmul fast float %780, %780
  %1619 = fmul fast float %1372, %1372
  %1620 = fadd fast float %1619, %1618
  %1621 = fmul fast float %1620, 0x3FE5152B00000000
  %1622 = fmul fast float %780, 0xBFCC1F85E0000000
  %1623 = fmul fast float %1622, %1372
  %1624 = fadd fast float %1623, 0xBFE1363700000000
  %1625 = fadd fast float %1624, %1617
  %1626 = fsub fast float %1625, %1621
  %1627 = fmul fast float %1616, 0x3FBA6F0D00000000
  %1628 = fmul fast float %1620, 0x3FD0432880000000
  %1629 = fmul fast float %780, 0xBFEF110800000000
  %1630 = fmul fast float %1629, %1372
  %1631 = fadd fast float %1630, 1.000000e+00
  %1632 = fsub fast float %1631, %1627
  %1633 = fadd fast float %1632, %1628
  %1634 = fdiv fast float %1626, %1633
  %1635 = call float @dx.op.unary.f32(i32 7, float %1634)  ; Saturate(value)
  %1636 = fsub fast float %1635, %780
  %1637 = fmul fast float %1636, %1584
  %1638 = fadd fast float %1637, %780
  %1639 = fmul fast float %1587, %1453
  %1640 = fadd fast float %1639, %782
  br label %1657

; <label>:1641                                    ; preds = %1605
  %1642 = icmp eq i32 %1573, 8
  br i1 %1642, label %1643, label %1657

; <label>:1643                                    ; preds = %1641
  %1644 = fmul fast float %1578, %1373
  %1645 = fmul fast float %1578, %1374
  %1646 = fadd fast float %1644, %770
  %1647 = fadd fast float %1645, %771
  %1648 = call float @dx.op.binary.f32(i32 36, float %781, float %1375)  ; FMin(a,b)
  %1649 = fsub fast float %1648, %781
  %1650 = fmul fast float %1649, %1581
  %1651 = fadd fast float %1650, %781
  %1652 = fsub fast float %1372, %780
  %1653 = fmul fast float %1584, %1652
  %1654 = fadd fast float %1653, %780
  %1655 = fmul fast float %1587, %1453
  %1656 = fadd fast float %1655, %782
  br label %1657

; <label>:1657                                    ; preds = %1643, %1641, %1607, %1589, %1564, %1071, %769
  %1658 = phi float [ %770, %1564 ], [ %770, %1071 ], [ %770, %769 ], [ %1594, %1589 ], [ %1610, %1607 ], [ %770, %1641 ], [ %1646, %1643 ]
  %1659 = phi float [ %771, %1564 ], [ %771, %1071 ], [ %771, %769 ], [ %1595, %1589 ], [ %1611, %1607 ], [ %771, %1641 ], [ %1647, %1643 ]
  %1660 = phi float [ %1565, %1564 ], [ %772, %1071 ], [ %772, %769 ], [ %1565, %1589 ], [ %1565, %1607 ], [ %1565, %1641 ], [ %1565, %1643 ]
  %1661 = phi float [ %1566, %1564 ], [ %773, %1071 ], [ %773, %769 ], [ %1566, %1589 ], [ %1566, %1607 ], [ %1566, %1641 ], [ %1566, %1643 ]
  %1662 = phi float [ %1567, %1564 ], [ %774, %1071 ], [ %774, %769 ], [ %1567, %1589 ], [ %1567, %1607 ], [ %1567, %1641 ], [ %1567, %1643 ]
  %1663 = phi float [ %1568, %1564 ], [ %775, %1071 ], [ %775, %769 ], [ %1568, %1589 ], [ %1568, %1607 ], [ %1568, %1641 ], [ %1568, %1643 ]
  %1664 = phi float [ %1569, %1564 ], [ %776, %1071 ], [ %776, %769 ], [ %1569, %1589 ], [ %1569, %1607 ], [ %1569, %1641 ], [ %1569, %1643 ]
  %1665 = phi float [ %1570, %1564 ], [ %777, %1071 ], [ %777, %769 ], [ %1570, %1589 ], [ %1570, %1607 ], [ %1570, %1641 ], [ %1570, %1643 ]
  %1666 = phi float [ %1571, %1564 ], [ %778, %1071 ], [ %778, %769 ], [ %1571, %1589 ], [ %1571, %1607 ], [ %1571, %1641 ], [ %1571, %1643 ]
  %1667 = phi float [ %780, %1564 ], [ %780, %1071 ], [ %780, %769 ], [ %1601, %1589 ], [ %1638, %1607 ], [ %780, %1641 ], [ %1654, %1643 ]
  %1668 = phi float [ %781, %1564 ], [ %781, %1071 ], [ %781, %769 ], [ %1598, %1589 ], [ %1615, %1607 ], [ %781, %1641 ], [ %1651, %1643 ]
  %1669 = phi float [ %782, %1564 ], [ %782, %1071 ], [ %782, %769 ], [ %1604, %1589 ], [ %1640, %1607 ], [ %782, %1641 ], [ %1656, %1643 ]
  %1670 = phi float [ %1572, %1564 ], [ %783, %1071 ], [ %783, %769 ], [ %1572, %1589 ], [ %1572, %1607 ], [ %1572, %1641 ], [ %1572, %1643 ]
  %1671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %1672 = extractvalue %dx.types.CBufRet.f32 %1671, 0
  %1673 = call float @dx.op.dot2.f32(i32 54, float %1658, float %1659, float %1658, float %1659)  ; Dot2(ax,ay,bx,by)
  %1674 = fmul fast float %1673, 0x3FE3333340000000
  %1675 = fsub fast float 1.000000e+00, %1674
  %1676 = call float @dx.op.dot3.f32(i32 55, float %1658, float %1659, float %1675, float %1658, float %1659, float %1675)  ; Dot3(ax,ay,az,bx,by,bz)
  %1677 = call float @dx.op.unary.f32(i32 25, float %1676)  ; Rsqrt(value)
  %1678 = fmul fast float %1677, %1658
  %1679 = fmul fast float %1677, %1659
  %1680 = fmul fast float %1675, %1677
  %1681 = fmul fast float %1680, %53
  %1682 = fmul fast float %1680, %54
  %1683 = fmul fast float %1680, %55
  %1684 = fmul fast float %1678, %49
  %1685 = fmul fast float %1678, %50
  %1686 = fmul fast float %1678, %51
  %1687 = fadd fast float %1681, %1684
  %1688 = fadd fast float %1682, %1685
  %1689 = fadd fast float %1683, %1686
  %1690 = fmul fast float %1679, %82
  %1691 = fmul fast float %1679, %83
  %1692 = fmul fast float %1679, %84
  %1693 = fadd fast float %1687, %1690
  %1694 = fadd fast float %1688, %1691
  %1695 = fadd fast float %1689, %1692
  %1696 = call float @dx.op.dot3.f32(i32 55, float %1693, float %1694, float %1695, float %1693, float %1694, float %1695)  ; Dot3(ax,ay,az,bx,by,bz)
  %1697 = call float @dx.op.unary.f32(i32 25, float %1696)  ; Rsqrt(value)
  %1698 = fmul fast float %1693, %1697
  %1699 = fmul fast float %1694, %1697
  %1700 = fmul fast float %1695, %1697
  %1701 = call float @dx.op.unary.f32(i32 83, float %118)  ; DerivCoarseX(value)
  %1702 = call float @dx.op.unary.f32(i32 83, float %119)  ; DerivCoarseX(value)
  %1703 = call float @dx.op.unary.f32(i32 83, float %120)  ; DerivCoarseX(value)
  %1704 = call float @dx.op.unary.f32(i32 84, float %118)  ; DerivCoarseY(value)
  %1705 = call float @dx.op.unary.f32(i32 84, float %119)  ; DerivCoarseY(value)
  %1706 = call float @dx.op.unary.f32(i32 84, float %120)  ; DerivCoarseY(value)
  %1707 = fadd fast float %1701, %118
  %1708 = fadd fast float %1702, %119
  %1709 = fadd fast float %1703, %120
  %1710 = fadd fast float %1704, %118
  %1711 = fadd fast float %1705, %119
  %1712 = fadd fast float %1706, %120
  %1713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %1714 = extractvalue %dx.types.CBufRet.f32 %1713, 0
  %1715 = extractvalue %dx.types.CBufRet.f32 %1713, 1
  %1716 = extractvalue %dx.types.CBufRet.f32 %1713, 2
  %1717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %1718 = extractvalue %dx.types.CBufRet.f32 %1717, 2
  %1719 = extractvalue %dx.types.CBufRet.f32 %1717, 3
  %1720 = fmul fast float %1714, %71
  %1721 = fmul fast float %1720, %1718
  %1722 = fmul fast float %1715, %72
  %1723 = fmul fast float %1722, %1719
  %1724 = fptoui float %1721 to i32
  %1725 = fptoui float %1723 to i32
  %1726 = fadd fast float %1714, -1.000000e+00
  %1727 = fadd fast float %1715, -1.000000e+00
  %1728 = fptoui float %1726 to i32
  %1729 = fptoui float %1727 to i32
  %1730 = call i32 @dx.op.binary.i32(i32 40, i32 %1724, i32 %1728)  ; UMin(a,b)
  %1731 = call i32 @dx.op.binary.i32(i32 40, i32 %1725, i32 %1729)  ; UMin(a,b)
  %1732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1733 = extractvalue %dx.types.CBufRet.f32 %1732, 2
  %1734 = extractvalue %dx.types.CBufRet.f32 %1732, 3
  %1735 = fmul fast float %1733, %66
  %1736 = fsub fast float %1735, %1734
  %1737 = fadd fast float %1716, -1.000000e+00
  %1738 = call float @dx.op.binary.f32(i32 36, float %1736, float %1737)  ; FMin(a,b)
  %1739 = fptoui float %1738 to i32
  %1740 = fptoui float %1714 to i32
  %1741 = fptoui float %1715 to i32
  %1742 = mul i32 %1739, %1741
  %1743 = add i32 %1742, %1731
  %1744 = mul i32 %1743, %1740
  %1745 = add i32 %1744, %1730
  %1746 = shl i32 %1745, 2
  %1747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1746, i32 undef)  ; BufferLoad(srv,index,wot)
  %1748 = extractvalue %dx.types.ResRet.i32 %1747, 0
  %1749 = and i32 %1748, 1023
  %1750 = lshr i32 %1748, 10
  %1751 = icmp eq i32 %1749, 0
  br i1 %1751, label %2177, label %1752

; <label>:1752                                    ; preds = %1657
  %1753 = and i32 %1748, 1023
  br label %1754

; <label>:1754                                    ; preds = %1880, %1752
  %1755 = phi float [ %1881, %1880 ], [ 0.000000e+00, %1752 ]
  %1756 = phi float [ %1882, %1880 ], [ %1672, %1752 ]
  %1757 = phi float [ %1883, %1880 ], [ %1670, %1752 ]
  %1758 = phi float [ %1884, %1880 ], [ 0.000000e+00, %1752 ]
  %1759 = phi float [ %1885, %1880 ], [ %1669, %1752 ]
  %1760 = phi float [ %1886, %1880 ], [ %1663, %1752 ]
  %1761 = phi float [ %1887, %1880 ], [ %1664, %1752 ]
  %1762 = phi float [ %1888, %1880 ], [ %1665, %1752 ]
  %1763 = phi float [ %1889, %1880 ], [ %1698, %1752 ]
  %1764 = phi float [ %1890, %1880 ], [ %1699, %1752 ]
  %1765 = phi float [ %1891, %1880 ], [ %1700, %1752 ]
  %1766 = phi float [ %1892, %1880 ], [ %1668, %1752 ]
  %1767 = phi float [ %1893, %1880 ], [ %1667, %1752 ]
  %1768 = phi float [ %1894, %1880 ], [ 0.000000e+00, %1752 ]
  %1769 = phi float [ %1895, %1880 ], [ %1666, %1752 ]
  %1770 = phi float [ %1896, %1880 ], [ %1660, %1752 ]
  %1771 = phi float [ %1897, %1880 ], [ %1661, %1752 ]
  %1772 = phi float [ %1898, %1880 ], [ %1662, %1752 ]
  %1773 = phi i32 [ %1830, %1880 ], [ 0, %1752 ]
  %1774 = add nuw nsw i32 %1773, %1750
  %1775 = shl i32 %1774, 2
  %1776 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %1775, i32 undef)  ; BufferLoad(srv,index,wot)
  %1777 = extractvalue %dx.types.ResRet.i32 %1776, 0
  %1778 = shl i32 %1777, 8
  %1779 = or i32 %1778, 48
  %1780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1779, i32 undef)  ; BufferLoad(srv,index,wot)
  %1781 = extractvalue %dx.types.ResRet.f32 %1780, 0
  %1782 = extractvalue %dx.types.ResRet.f32 %1780, 1
  %1783 = extractvalue %dx.types.ResRet.f32 %1780, 2
  %1784 = extractvalue %dx.types.ResRet.f32 %1780, 3
  %1785 = or i32 %1778, 64
  %1786 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1785, i32 undef)  ; BufferLoad(srv,index,wot)
  %1787 = extractvalue %dx.types.ResRet.i32 %1786, 0
  %1788 = extractvalue %dx.types.ResRet.i32 %1786, 1
  %1789 = or i32 %1778, 80
  %1790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1789, i32 undef)  ; BufferLoad(srv,index,wot)
  %1791 = extractvalue %dx.types.ResRet.f32 %1790, 2
  %1792 = extractvalue %dx.types.ResRet.f32 %1790, 3
  %1793 = or i32 %1778, 96
  %1794 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.f32 %1794, 0
  %1796 = extractvalue %dx.types.ResRet.f32 %1794, 1
  %1797 = extractvalue %dx.types.ResRet.f32 %1794, 2
  %1798 = extractvalue %dx.types.ResRet.f32 %1794, 3
  %1799 = or i32 %1778, 112
  %1800 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1799, i32 undef)  ; BufferLoad(srv,index,wot)
  %1801 = extractvalue %dx.types.ResRet.f32 %1800, 2
  %1802 = or i32 %1778, 128
  %1803 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1802, i32 undef)  ; BufferLoad(srv,index,wot)
  %1804 = extractvalue %dx.types.ResRet.f32 %1803, 0
  %1805 = extractvalue %dx.types.ResRet.f32 %1803, 1
  %1806 = extractvalue %dx.types.ResRet.f32 %1803, 2
  %1807 = extractvalue %dx.types.ResRet.f32 %1803, 3
  %1808 = or i32 %1778, 144
  %1809 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1808, i32 undef)  ; BufferLoad(srv,index,wot)
  %1810 = extractvalue %dx.types.ResRet.f32 %1809, 0
  %1811 = extractvalue %dx.types.ResRet.f32 %1809, 1
  %1812 = extractvalue %dx.types.ResRet.f32 %1809, 2
  %1813 = extractvalue %dx.types.ResRet.f32 %1809, 3
  %1814 = or i32 %1778, 160
  %1815 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1814, i32 undef)  ; BufferLoad(srv,index,wot)
  %1816 = extractvalue %dx.types.ResRet.f32 %1815, 0
  %1817 = extractvalue %dx.types.ResRet.f32 %1815, 1
  %1818 = extractvalue %dx.types.ResRet.f32 %1815, 2
  %1819 = extractvalue %dx.types.ResRet.f32 %1815, 3
  %1820 = or i32 %1778, 192
  %1821 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1820, i32 undef)  ; BufferLoad(srv,index,wot)
  %1822 = extractvalue %dx.types.ResRet.i32 %1821, 0
  %1823 = or i32 %1778, 208
  %1824 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1823, i32 undef)  ; BufferLoad(srv,index,wot)
  %1825 = extractvalue %dx.types.ResRet.f32 %1824, 0
  %1826 = or i32 %1778, 248
  %1827 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1826, i32 undef)  ; BufferLoad(srv,index,wot)
  %1828 = extractvalue %dx.types.ResRet.f32 %1827, 0
  %1829 = extractvalue %dx.types.ResRet.f32 %1827, 1
  %1830 = add nuw nsw i32 %1773, 1
  %1831 = bitcast float %1784 to i32
  %1832 = and i32 %1831, 2560
  %1833 = icmp eq i32 %1832, 0
  %1834 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.f32 %1834, 0
  %1836 = extractvalue %dx.types.ResRet.f32 %1834, 1
  %1837 = extractvalue %dx.types.ResRet.f32 %1834, 2
  %1838 = extractvalue %dx.types.ResRet.f32 %1834, 3
  %1839 = call float @dx.op.dot4.f32(i32 56, float %1835, float %1836, float %1837, float %1838, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1840 = or i32 %1778, 16
  %1841 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1840, i32 undef)  ; BufferLoad(srv,index,wot)
  %1842 = extractvalue %dx.types.ResRet.f32 %1841, 0
  %1843 = extractvalue %dx.types.ResRet.f32 %1841, 1
  %1844 = extractvalue %dx.types.ResRet.f32 %1841, 2
  %1845 = extractvalue %dx.types.ResRet.f32 %1841, 3
  %1846 = call float @dx.op.dot4.f32(i32 56, float %1842, float %1843, float %1844, float %1845, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1847 = or i32 %1778, 32
  %1848 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %24, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.f32 %1848, 0
  %1850 = extractvalue %dx.types.ResRet.f32 %1848, 1
  %1851 = extractvalue %dx.types.ResRet.f32 %1848, 2
  %1852 = extractvalue %dx.types.ResRet.f32 %1848, 3
  %1853 = call float @dx.op.dot4.f32(i32 56, float %1849, float %1850, float %1851, float %1852, float %118, float %119, float %120, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1854 = call float @dx.op.unary.f32(i32 27, float %1839)  ; Round_ni(value)
  %1855 = call float @dx.op.unary.f32(i32 6, float %1854)  ; FAbs(value)
  %1856 = call float @dx.op.unary.f32(i32 27, float %1846)  ; Round_ni(value)
  %1857 = call float @dx.op.unary.f32(i32 6, float %1856)  ; FAbs(value)
  %1858 = call float @dx.op.unary.f32(i32 6, float %1853)  ; FAbs(value)
  %1859 = call float @dx.op.unary.f32(i32 27, float %1858)  ; Round_ni(value)
  %1860 = fadd fast float %1857, %1855
  %1861 = fadd fast float %1860, %1859
  %1862 = fcmp fast oeq float %1861, 0.000000e+00
  %1863 = call float @dx.op.dot4.f32(i32 56, float %1835, float %1836, float %1837, float %1838, float %1707, float %1708, float %1709, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1864 = call float @dx.op.dot4.f32(i32 56, float %1842, float %1843, float %1844, float %1845, float %1707, float %1708, float %1709, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1865 = call float @dx.op.dot4.f32(i32 56, float %1835, float %1836, float %1837, float %1838, float %1710, float %1711, float %1712, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1866 = call float @dx.op.dot4.f32(i32 56, float %1842, float %1843, float %1844, float %1845, float %1710, float %1711, float %1712, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %1867 = fsub fast float %1863, %1839
  %1868 = fsub fast float %1865, %1839
  %1869 = fsub fast float %1864, %1846
  %1870 = fsub fast float %1866, %1846
  %1871 = call float @dx.op.dot3.f32(i32 55, float %1781, float %1782, float %1783, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %1872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1873 = extractvalue %dx.types.CBufRet.f32 %1872, 2
  %1874 = fadd fast float %1873, %1871
  %1875 = call float @dx.op.unary.f32(i32 7, float %1874)  ; Saturate(value)
  %1876 = extractvalue %dx.types.CBufRet.f32 %1872, 0
  %1877 = fcmp fast ogt float %1875, %1876
  %1878 = and i1 %1862, %1877
  %1879 = and i1 %1833, %1878
  br i1 %1879, label %1900, label %1880

; <label>:1880                                    ; preds = %2163, %1981, %1900, %1754
  %1881 = phi float [ %1755, %1900 ], [ %1984, %1981 ], [ %1984, %2163 ], [ %1755, %1754 ]
  %1882 = phi float [ %1756, %1900 ], [ %1756, %1981 ], [ %2138, %2163 ], [ %1756, %1754 ]
  %1883 = phi float [ %1757, %1900 ], [ %1757, %1981 ], [ %2136, %2163 ], [ %1757, %1754 ]
  %1884 = phi float [ %1758, %1900 ], [ %1758, %1981 ], [ %2108, %2163 ], [ %1758, %1754 ]
  %1885 = phi float [ %1759, %1900 ], [ %1759, %1981 ], [ %2106, %2163 ], [ %1759, %1754 ]
  %1886 = phi float [ %1760, %1900 ], [ %1760, %1981 ], [ %2173, %2163 ], [ %1760, %1754 ]
  %1887 = phi float [ %1761, %1900 ], [ %1761, %1981 ], [ %2174, %2163 ], [ %1761, %1754 ]
  %1888 = phi float [ %1762, %1900 ], [ %1762, %1981 ], [ %2175, %2163 ], [ %1762, %1754 ]
  %1889 = phi float [ %1763, %1900 ], [ %1763, %1981 ], [ %2087, %2163 ], [ %1763, %1754 ]
  %1890 = phi float [ %1764, %1900 ], [ %1764, %1981 ], [ %2088, %2163 ], [ %1764, %1754 ]
  %1891 = phi float [ %1765, %1900 ], [ %1765, %1981 ], [ %2089, %2163 ], [ %1765, %1754 ]
  %1892 = phi float [ %1766, %1900 ], [ %1766, %1981 ], [ %2116, %2163 ], [ %1766, %1754 ]
  %1893 = phi float [ %1767, %1900 ], [ %1767, %1981 ], [ %2113, %2163 ], [ %1767, %1754 ]
  %1894 = phi float [ %1768, %1900 ], [ %1768, %1981 ], [ %2110, %2163 ], [ %1768, %1754 ]
  %1895 = phi float [ %1769, %1900 ], [ %1769, %1981 ], [ %2104, %2163 ], [ %1769, %1754 ]
  %1896 = phi float [ %1770, %1900 ], [ %1770, %1981 ], [ %2099, %2163 ], [ %1770, %1754 ]
  %1897 = phi float [ %1771, %1900 ], [ %1771, %1981 ], [ %2100, %2163 ], [ %1771, %1754 ]
  %1898 = phi float [ %1772, %1900 ], [ %1772, %1981 ], [ %2101, %2163 ], [ %1772, %1754 ]
  %1899 = icmp eq i32 %1830, %1753
  br i1 %1899, label %2176, label %1754

; <label>:1900                                    ; preds = %1754
  %1901 = extractvalue %dx.types.ResRet.f32 %1800, 3
  %1902 = extractvalue %dx.types.ResRet.f32 %1800, 1
  %1903 = extractvalue %dx.types.ResRet.f32 %1800, 0
  %1904 = extractvalue %dx.types.ResRet.f32 %1790, 1
  %1905 = extractvalue %dx.types.ResRet.f32 %1790, 0
  %1906 = extractvalue %dx.types.ResRet.i32 %1786, 3
  %1907 = extractvalue %dx.types.ResRet.i32 %1786, 2
  %1908 = add i32 %1906, 0
  %1909 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1908, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1911 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1909, %dx.types.Handle %1910, float %1839, float %1846, float undef, float undef, i32 0, i32 0, i32 undef, float %1867, float %1869, float undef, float %1868, float %1870, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = fmul fast float %1912, %1905
  %1914 = fadd fast float %1913, %1904
  %1915 = call float @dx.op.unary.f32(i32 7, float %1914)  ; Saturate(value)
  %1916 = fmul fast float %1839, %1795
  %1917 = call float @dx.op.tertiary.f32(i32 46, float %1796, float %1846, float %1916)  ; FMad(a,b,c)
  %1918 = fadd fast float %1917, %1903
  %1919 = fmul fast float %1839, %1797
  %1920 = call float @dx.op.tertiary.f32(i32 46, float %1798, float %1846, float %1919)  ; FMad(a,b,c)
  %1921 = fadd fast float %1920, %1902
  %1922 = fmul fast float %1867, %1795
  %1923 = call float @dx.op.tertiary.f32(i32 46, float %1796, float %1869, float %1922)  ; FMad(a,b,c)
  %1924 = fmul fast float %1867, %1797
  %1925 = call float @dx.op.tertiary.f32(i32 46, float %1798, float %1869, float %1924)  ; FMad(a,b,c)
  %1926 = fmul fast float %1868, %1795
  %1927 = call float @dx.op.tertiary.f32(i32 46, float %1796, float %1870, float %1926)  ; FMad(a,b,c)
  %1928 = fmul fast float %1868, %1797
  %1929 = call float @dx.op.tertiary.f32(i32 46, float %1798, float %1870, float %1928)  ; FMad(a,b,c)
  %1930 = add i32 %1907, 0
  %1931 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1930, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1932 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1931, %dx.types.Handle %1910, float %1918, float %1921, float undef, float undef, i32 0, i32 0, i32 undef, float %1923, float %1925, float undef, float %1927, float %1929, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1933 = extractvalue %dx.types.ResRet.f32 %1932, 0
  %1934 = and i32 %1831, 1024
  %1935 = icmp ne i32 %1934, 0
  %1936 = fcmp fast ogt float %1933, 0x3FE0101020000000
  %1937 = uitofp i1 %1936 to float
  %1938 = select i1 %1935, float %1937, float %1933
  %1939 = and i32 %1831, 8192
  %1940 = icmp ne i32 %1939, 0
  %1941 = select i1 %1940, float %1901, float 1.000000e+00
  %1942 = fmul fast float %1839, 2.000000e+00
  %1943 = fadd fast float %1942, -1.000000e+00
  %1944 = call float @dx.op.unary.f32(i32 6, float %1943)  ; FAbs(value)
  %1945 = fmul fast float %1944, %1828
  %1946 = fsub fast float %1945, %1828
  %1947 = call float @dx.op.unary.f32(i32 7, float %1946)  ; Saturate(value)
  %1948 = fmul fast float %1846, 2.000000e+00
  %1949 = fadd fast float %1948, -1.000000e+00
  %1950 = call float @dx.op.unary.f32(i32 6, float %1949)  ; FAbs(value)
  %1951 = fmul fast float %1950, %1829
  %1952 = fsub fast float %1951, %1829
  %1953 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  %1954 = fmul fast float %1858, %1791
  %1955 = fsub fast float %1954, %1791
  %1956 = call float @dx.op.unary.f32(i32 7, float %1955)  ; Saturate(value)
  %1957 = fmul fast float %1915, %1941
  %1958 = fmul fast float %1957, %1912
  %1959 = fmul fast float %1958, %1947
  %1960 = fmul fast float %1959, %1938
  %1961 = fmul fast float %1960, %1953
  %1962 = fmul fast float %1961, %1956
  %1963 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %1964 = extractvalue %dx.types.CBufRet.f32 %1963, 1
  %1965 = extractvalue %dx.types.CBufRet.f32 %1963, 0
  %1966 = fsub fast float %1875, %1965
  %1967 = fmul fast float %1966, %1964
  %1968 = call float @dx.op.unary.f32(i32 7, float %1967)  ; Saturate(value)
  %1969 = fmul fast float %1962, %1792
  %1970 = fadd fast float %1962, %1792
  %1971 = fmul fast float %1970, %1801
  %1972 = fsub fast float %1971, %1801
  %1973 = call float @dx.op.unary.f32(i32 7, float %1972)  ; Saturate(value)
  %1974 = and i32 %1831, 128
  %1975 = icmp ne i32 %1974, 0
  %1976 = select i1 %1975, float %1973, float %1969
  %1977 = fmul fast float %1976, %1968
  %1978 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %1979 = extractvalue %dx.types.CBufRet.f32 %1978, 0
  %1980 = fcmp fast ugt float %1977, %1979
  br i1 %1980, label %1981, label %1880

; <label>:1981                                    ; preds = %1900
  %1982 = select i1 %1940, float %1977, float 0.000000e+00
  %1983 = fadd fast float %1982, %1755
  %1984 = call float @dx.op.unary.f32(i32 7, float %1983)  ; Saturate(value)
  br i1 %1940, label %1880, label %1985

; <label>:1985                                    ; preds = %1981
  %1986 = and i32 %1831, 4
  %1987 = and i32 %1831, 8
  %1988 = add i32 %1787, 0
  %1989 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %1988, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1990 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1991 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %1989, %dx.types.Handle %1990, float %1918, float %1921, float undef, float undef, i32 0, i32 0, i32 undef, float %1923, float %1925, float undef, float %1927, float %1929, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %1992 = extractvalue %dx.types.ResRet.f32 %1991, 0
  %1993 = extractvalue %dx.types.ResRet.f32 %1991, 1
  %1994 = extractvalue %dx.types.ResRet.f32 %1991, 2
  %1995 = extractvalue %dx.types.ResRet.f32 %1991, 3
  %1996 = bitcast float %1813 to i32
  %1997 = and i32 %1996, 255
  %1998 = uitofp i32 %1997 to float
  %1999 = lshr i32 %1996, 8
  %2000 = and i32 %1999, 255
  %2001 = uitofp i32 %2000 to float
  %2002 = fmul fast float %1995, %1998
  %2003 = fadd fast float %2002, %2001
  %2004 = fmul fast float %2003, 0x3F70101000000000
  %2005 = add i32 %1788, 0
  %2006 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2005, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2007 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2006, %dx.types.Handle %1990, float %1918, float %1921, float undef, float undef, i32 0, i32 0, i32 undef, float %1923, float %1925, float undef, float %1927, float %1929, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2008 = extractvalue %dx.types.ResRet.f32 %2007, 0
  %2009 = extractvalue %dx.types.ResRet.f32 %2007, 1
  %2010 = extractvalue %dx.types.ResRet.f32 %2007, 2
  %2011 = extractvalue %dx.types.ResRet.f32 %2007, 3
  %2012 = bitcast float %1807 to i32
  %2013 = and i32 %2012, 255
  %2014 = uitofp i32 %2013 to float
  %2015 = lshr i32 %2012, 8
  %2016 = and i32 %2015, 255
  %2017 = uitofp i32 %2016 to float
  %2018 = lshr i32 %2012, 16
  %2019 = and i32 %2018, 255
  %2020 = uitofp i32 %2019 to float
  %2021 = fmul fast float %2020, 0x3F70101000000000
  %2022 = fmul fast float %2008, %2014
  %2023 = fadd fast float %2022, %2017
  %2024 = fmul fast float %2023, 0x3F70101000000000
  %2025 = fadd fast float %2009, -5.000000e-01
  %2026 = fadd fast float %2011, -5.000000e-01
  %2027 = fmul fast float %2025, %2021
  %2028 = fmul fast float %2026, %2021
  %2029 = fadd fast float %2027, 5.000000e-01
  %2030 = fadd fast float %2028, 5.000000e-01
  %2031 = fmul fast float %1992, %1816
  %2032 = fmul fast float %1993, %1817
  %2033 = fmul fast float %1994, %1818
  %2034 = fmul fast float %2029, 2.000000e+00
  %2035 = fadd fast float %2034, -1.000000e+00
  %2036 = fmul fast float %2030, 2.000000e+00
  %2037 = fadd fast float %2036, -1.000000e+00
  %2038 = fadd fast float %2035, %2037
  %2039 = fmul fast float %2038, 5.000000e-01
  %2040 = fsub fast float %2035, %2037
  %2041 = fmul fast float %2040, 5.000000e-01
  %2042 = call float @dx.op.unary.f32(i32 6, float %2039)  ; FAbs(value)
  %2043 = fsub fast float 1.000000e+00, %2042
  %2044 = call float @dx.op.unary.f32(i32 6, float %2041)  ; FAbs(value)
  %2045 = fsub fast float %2043, %2044
  %2046 = call float @dx.op.dot3.f32(i32 55, float %2039, float %2041, float %2045, float %2039, float %2041, float %2045)  ; Dot3(ax,ay,az,bx,by,bz)
  %2047 = call float @dx.op.unary.f32(i32 25, float %2046)  ; Rsqrt(value)
  %2048 = fmul fast float %2039, %2047
  %2049 = fmul fast float %2041, %2047
  %2050 = fmul fast float %2047, %2045
  %2051 = fmul fast float %2050, %1781
  %2052 = fmul fast float %2050, %1782
  %2053 = fmul fast float %2050, %1783
  %2054 = fmul fast float %2048, %1804
  %2055 = fmul fast float %2048, %1805
  %2056 = fmul fast float %2048, %1806
  %2057 = fadd fast float %2054, %2051
  %2058 = fadd fast float %2055, %2052
  %2059 = fadd fast float %2056, %2053
  %2060 = fmul fast float %2049, %1810
  %2061 = fmul fast float %2049, %1811
  %2062 = fmul fast float %2049, %1812
  %2063 = fadd fast float %2057, %2060
  %2064 = fadd fast float %2058, %2061
  %2065 = fadd fast float %2059, %2062
  %2066 = call float @dx.op.dot3.f32(i32 55, float %2063, float %2064, float %2065, float %2063, float %2064, float %2065)  ; Dot3(ax,ay,az,bx,by,bz)
  %2067 = call float @dx.op.unary.f32(i32 25, float %2066)  ; Rsqrt(value)
  %2068 = fmul fast float %2063, %2067
  %2069 = fmul fast float %2064, %2067
  %2070 = fmul fast float %2065, %2067
  %2071 = icmp ne i32 %1987, 0
  %2072 = select i1 %2071, float 1.000000e+00, float 0.000000e+00
  %2073 = fmul fast float %1977, %2072
  %2074 = and i32 %1831, 1
  %2075 = icmp eq i32 %2074, 0
  br i1 %2075, label %2076, label %2080

; <label>:2076                                    ; preds = %1985
  %2077 = fsub fast float %2068, %1763
  %2078 = fsub fast float %2069, %1764
  %2079 = fsub fast float %2070, %1765
  br label %2080

; <label>:2080                                    ; preds = %2076, %1985
  %2081 = phi float [ %2077, %2076 ], [ %2068, %1985 ]
  %2082 = phi float [ %2078, %2076 ], [ %2069, %1985 ]
  %2083 = phi float [ %2079, %2076 ], [ %2070, %1985 ]
  %2084 = fmul float %2083, %2073
  %2085 = fmul float %2082, %2073
  %2086 = fmul float %2081, %2073
  %2087 = fadd fast float %2086, %1763
  %2088 = fadd fast float %2085, %1764
  %2089 = fadd fast float %2084, %1765
  %2090 = icmp ne i32 %1986, 0
  %2091 = select i1 %2090, float 1.000000e+00, float 0.000000e+00
  %2092 = fmul fast float %1977, %2091
  %2093 = fsub fast float %2031, %1770
  %2094 = fsub fast float %2032, %1771
  %2095 = fsub fast float %2033, %1772
  %2096 = fmul fast float %2093, %2092
  %2097 = fmul fast float %2094, %2092
  %2098 = fmul fast float %2095, %2092
  %2099 = fadd fast float %2096, %1770
  %2100 = fadd fast float %2097, %1771
  %2101 = fadd fast float %2098, %1772
  %2102 = fsub fast float %2004, %1769
  %2103 = fmul fast float %2102, %2092
  %2104 = fadd fast float %2103, %1769
  %2105 = fmul fast float %2092, %1759
  %2106 = fsub fast float %1759, %2105
  %2107 = fmul fast float %2092, %1758
  %2108 = fsub fast float %1758, %2107
  %2109 = fadd fast float %1977, %1768
  %2110 = call float @dx.op.unary.f32(i32 7, float %2109)  ; Saturate(value)
  %2111 = fsub fast float %2024, %1767
  %2112 = fmul fast float %2111, %2073
  %2113 = fadd fast float %2112, %1767
  %2114 = fsub fast float %2010, %1766
  %2115 = fmul fast float %2114, %2073
  %2116 = fadd fast float %2115, %1766
  %2117 = call float @dx.op.dot3.f32(i32 55, float %2031, float %2032, float %2033, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %2119 = extractvalue %dx.types.CBufRet.f32 %2118, 0
  %2120 = extractvalue %dx.types.CBufRet.f32 %2118, 1
  %2121 = fmul fast float %2120, %2117
  %2122 = fadd fast float %2121, %2119
  %2123 = call float @dx.op.unary.f32(i32 7, float %2122)  ; Saturate(value)
  %2124 = bitcast float %1819 to i32
  %2125 = and i32 %2124, 65535
  %2126 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2125)  ; LegacyF16ToF32(value)
  %2127 = lshr i32 %2124, 16
  %2128 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2127)  ; LegacyF16ToF32(value)
  %2129 = fcmp fast oge float %2126, 0.000000e+00
  %2130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %2131 = extractvalue %dx.types.CBufRet.f32 %2130, 0
  %2132 = select i1 %2129, float %2126, float %2131
  %2133 = fadd fast float %2132, %2128
  %2134 = fsub fast float %2123, %1757
  %2135 = fmul fast float %2134, %1977
  %2136 = fadd fast float %2135, %1757
  %2137 = fmul fast float %2133, %1977
  %2138 = call float @dx.op.binary.f32(i32 35, float %1756, float %2137)  ; FMax(a,b)
  %2139 = and i32 %1831, 16
  %2140 = icmp eq i32 %2139, 0
  br i1 %2140, label %2163, label %2141

; <label>:2141                                    ; preds = %2080
  %2142 = bitcast float %1825 to i32
  %2143 = add i32 %1822, 0
  %2144 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %2143, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2145 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %2144, %dx.types.Handle %1990, float %1918, float %1921, float undef, float undef, i32 0, i32 0, i32 undef, float %1923, float %1925, float undef, float %1927, float %1929, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %2146 = extractvalue %dx.types.ResRet.f32 %2145, 0
  %2147 = extractvalue %dx.types.ResRet.f32 %2145, 1
  %2148 = extractvalue %dx.types.ResRet.f32 %2145, 2
  %2149 = and i32 %2142, 65535
  %2150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2149)  ; LegacyF16ToF32(value)
  %2151 = fmul fast float %2146, %1816
  %2152 = fmul fast float %2147, %1817
  %2153 = fmul fast float %2148, %1818
  %2154 = and i32 %1831, 16384
  %2155 = icmp ne i32 %2154, 0
  %2156 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2157 = extractvalue %dx.types.CBufRet.f32 %2156, 0
  %2158 = select i1 %2155, float %2157, float 1.000000e+00
  %2159 = fmul fast float %2158, %2150
  %2160 = fmul fast float %2151, %2159
  %2161 = fmul fast float %2152, %2159
  %2162 = fmul fast float %2153, %2159
  br label %2163

; <label>:2163                                    ; preds = %2141, %2080
  %2164 = phi float [ %2160, %2141 ], [ 0.000000e+00, %2080 ]
  %2165 = phi float [ %2161, %2141 ], [ 0.000000e+00, %2080 ]
  %2166 = phi float [ %2162, %2141 ], [ 0.000000e+00, %2080 ]
  %2167 = fsub fast float %2164, %1760
  %2168 = fsub fast float %2165, %1761
  %2169 = fsub fast float %2166, %1762
  %2170 = fmul fast float %2167, %1977
  %2171 = fmul fast float %2168, %1977
  %2172 = fmul fast float %2169, %1977
  %2173 = fadd fast float %2170, %1760
  %2174 = fadd fast float %2171, %1761
  %2175 = fadd fast float %2172, %1762
  br label %1880

; <label>:2176                                    ; preds = %1880
  br label %2177

; <label>:2177                                    ; preds = %2176, %1657
  %2178 = phi float [ 0.000000e+00, %1657 ], [ %1881, %2176 ]
  %2179 = phi float [ %1672, %1657 ], [ %1882, %2176 ]
  %2180 = phi float [ %1670, %1657 ], [ %1883, %2176 ]
  %2181 = phi float [ 0.000000e+00, %1657 ], [ %1884, %2176 ]
  %2182 = phi float [ %1669, %1657 ], [ %1885, %2176 ]
  %2183 = phi float [ %1663, %1657 ], [ %1886, %2176 ]
  %2184 = phi float [ %1664, %1657 ], [ %1887, %2176 ]
  %2185 = phi float [ %1665, %1657 ], [ %1888, %2176 ]
  %2186 = phi float [ %1698, %1657 ], [ %1889, %2176 ]
  %2187 = phi float [ %1699, %1657 ], [ %1890, %2176 ]
  %2188 = phi float [ %1700, %1657 ], [ %1891, %2176 ]
  %2189 = phi float [ %1668, %1657 ], [ %1892, %2176 ]
  %2190 = phi float [ %1667, %1657 ], [ %1893, %2176 ]
  %2191 = phi float [ 0.000000e+00, %1657 ], [ %1894, %2176 ]
  %2192 = phi float [ %1666, %1657 ], [ %1895, %2176 ]
  %2193 = phi float [ %1660, %1657 ], [ %1896, %2176 ]
  %2194 = phi float [ %1661, %1657 ], [ %1897, %2176 ]
  %2195 = phi float [ %1662, %1657 ], [ %1898, %2176 ]
  %2196 = call float @dx.op.dot3.f32(i32 55, float %2186, float %2187, float %2188, float %2186, float %2187, float %2188)  ; Dot3(ax,ay,az,bx,by,bz)
  %2197 = call float @dx.op.unary.f32(i32 25, float %2196)  ; Rsqrt(value)
  %2198 = fmul fast float %2197, %2186
  %2199 = fmul fast float %2197, %2187
  %2200 = fmul fast float %2197, %2188
  %2201 = fadd fast float %2191, %779
  %2202 = call float @dx.op.unary.f32(i32 7, float %2201)  ; Saturate(value)
  %2203 = call float @dx.op.dot3.f32(i32 55, float %2198, float %2199, float %2200, float %2198, float %2199, float %2200)  ; Dot3(ax,ay,az,bx,by,bz)
  %2204 = call float @dx.op.unary.f32(i32 25, float %2203)  ; Rsqrt(value)
  %2205 = fmul fast float %2204, %2198
  %2206 = fmul fast float %2204, %2199
  %2207 = fmul fast float %2204, %2200
  %2208 = fadd fast float %2192, 0xBFB99999A0000000
  %2209 = call float @dx.op.unary.f32(i32 7, float %2208)  ; Saturate(value)
  %2210 = fmul fast float %2209, 0x3FF1C71C80000000
  %2211 = call float @dx.op.binary.f32(i32 36, float %2192, float 0x3FB99999A0000000)  ; FMin(a,b)
  %2212 = fsub fast float 1.000000e+00, %2210
  %2213 = call float @dx.op.unary.f32(i32 7, float %2212)  ; Saturate(value)
  %2214 = fmul fast float %2213, %2193
  %2215 = fmul fast float %2213, %2194
  %2216 = fmul fast float %2213, %2195
  %2217 = call float @dx.op.unary.f32(i32 7, float %2214)  ; Saturate(value)
  %2218 = call float @dx.op.unary.f32(i32 7, float %2215)  ; Saturate(value)
  %2219 = call float @dx.op.unary.f32(i32 7, float %2216)  ; Saturate(value)
  %2220 = fmul fast float %2210, %2193
  %2221 = fmul fast float %2210, %2194
  %2222 = fmul fast float %2210, %2195
  %2223 = fadd fast float %2220, %2211
  %2224 = fadd fast float %2221, %2211
  %2225 = fadd fast float %2222, %2211
  %2226 = call float @dx.op.unary.f32(i32 7, float %2223)  ; Saturate(value)
  %2227 = call float @dx.op.unary.f32(i32 7, float %2224)  ; Saturate(value)
  %2228 = call float @dx.op.unary.f32(i32 7, float %2225)  ; Saturate(value)
  %2229 = call float @dx.op.unary.f32(i32 7, float %2190)  ; Saturate(value)
  %2230 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %2231 = extractvalue %dx.types.CBufRet.i32 %2230, 3
  %2232 = and i32 %2231, 8
  %2233 = icmp ne i32 %2232, 0
  %2234 = call float @dx.op.binary.f32(i32 35, float %2217, float %2193)  ; FMax(a,b)
  %2235 = call float @dx.op.binary.f32(i32 35, float %2218, float %2193)  ; FMax(a,b)
  %2236 = call float @dx.op.binary.f32(i32 35, float %2219, float %2193)  ; FMax(a,b)
  %2237 = call float @dx.op.dot3.f32(i32 55, float %2217, float %2218, float %2219, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2238 = select i1 %189, float %2193, float %2217
  %2239 = select i1 %189, float %2237, float %2218
  %2240 = select i1 %189, float 1.000000e+00, float %2219
  %2241 = select i1 %2233, float %2234, float %2238
  %2242 = select i1 %2233, float %2235, float %2239
  %2243 = select i1 %2233, float %2236, float %2240
  %2244 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2245 = extractvalue %dx.types.CBufRet.f32 %2244, 0
  %2246 = extractvalue %dx.types.CBufRet.f32 %2244, 1
  %2247 = extractvalue %dx.types.CBufRet.f32 %2244, 2
  %2248 = fadd fast float %2245, %118
  %2249 = fadd fast float %2246, %119
  %2250 = fadd fast float %2247, %120
  %2251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %2252 = extractvalue %dx.types.CBufRet.f32 %2251, 0
  %2253 = extractvalue %dx.types.CBufRet.f32 %2251, 1
  %2254 = fsub fast float %2248, %2252
  %2255 = fsub fast float %2249, %2253
  %2256 = fmul fast float %2254, %2254
  %2257 = fmul fast float %2255, %2255
  %2258 = fadd fast float %2256, %2257
  %2259 = call float @dx.op.unary.f32(i32 24, float %2258)  ; Sqrt(value)
  %2260 = extractvalue %dx.types.CBufRet.f32 %2251, 2
  %2261 = fcmp fast olt float %2259, %2260
  br i1 %2261, label %2262, label %2329

; <label>:2262                                    ; preds = %2177
  %2263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2264 = extractvalue %dx.types.CBufRet.f32 %2263, 0
  %2265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2266 = extractvalue %dx.types.CBufRet.f32 %2265, 0
  %2267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2268 = extractvalue %dx.types.CBufRet.f32 %2267, 0
  %2269 = extractvalue %dx.types.CBufRet.f32 %2263, 1
  %2270 = extractvalue %dx.types.CBufRet.f32 %2265, 1
  %2271 = extractvalue %dx.types.CBufRet.f32 %2267, 1
  %2272 = extractvalue %dx.types.CBufRet.f32 %2263, 3
  %2273 = extractvalue %dx.types.CBufRet.f32 %2265, 3
  %2274 = extractvalue %dx.types.CBufRet.f32 %2267, 3
  %2275 = fadd fast float %2272, %2248
  %2276 = fadd fast float %2273, %2249
  %2277 = fadd fast float %2274, %2250
  %2278 = fmul fast float %2275, %2264
  %2279 = call float @dx.op.tertiary.f32(i32 46, float %2276, float %2266, float %2278)  ; FMad(a,b,c)
  %2280 = call float @dx.op.tertiary.f32(i32 46, float %2277, float %2268, float %2279)  ; FMad(a,b,c)
  %2281 = fmul fast float %2275, %2269
  %2282 = call float @dx.op.tertiary.f32(i32 46, float %2276, float %2270, float %2281)  ; FMad(a,b,c)
  %2283 = call float @dx.op.tertiary.f32(i32 46, float %2277, float %2271, float %2282)  ; FMad(a,b,c)
  %2284 = fsub fast float %2280, %2272
  %2285 = fsub fast float %2283, %2273
  %2286 = fsub fast float %2284, %2252
  %2287 = fadd fast float %2286, %2260
  %2288 = fsub fast float %2285, %2253
  %2289 = fadd fast float %2288, %2260
  %2290 = extractvalue %dx.types.CBufRet.f32 %2251, 3
  %2291 = fmul fast float %2287, %2290
  %2292 = fmul fast float %2289, %2290
  %2293 = call float @dx.op.unary.f32(i32 7, float %2291)  ; Saturate(value)
  %2294 = call float @dx.op.unary.f32(i32 7, float %2292)  ; Saturate(value)
  %2295 = fsub fast float 1.000000e+00, %2293
  %2296 = fsub fast float 1.000000e+00, %2294
  %2297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %15, %dx.types.Handle %39, float %2295, float %2296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2298 = extractvalue %dx.types.ResRet.f32 %2297, 0
  %2299 = fcmp fast ugt float %2298, 0.000000e+00
  br i1 %2299, label %2300, label %2603

; <label>:2300                                    ; preds = %2262
  %2301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2302 = extractvalue %dx.types.CBufRet.f32 %2301, 2
  %2303 = fmul fast float %2302, %2298
  %2304 = extractvalue %dx.types.CBufRet.f32 %2301, 3
  %2305 = fadd fast float %2304, %2303
  %2306 = extractvalue %dx.types.CBufRet.f32 %2267, 2
  %2307 = fadd fast float %2305, %2274
  %2308 = fmul fast float %2280, %2268
  %2309 = call float @dx.op.tertiary.f32(i32 46, float %2283, float %2271, float %2308)  ; FMad(a,b,c)
  %2310 = call float @dx.op.tertiary.f32(i32 46, float %2307, float %2306, float %2309)  ; FMad(a,b,c)
  %2311 = fsub fast float %2310, %2274
  %2312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2313 = extractvalue %dx.types.CBufRet.f32 %2312, 2
  %2314 = fsub fast float %2311, %2313
  %2315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %14, %dx.types.Handle %39, float %2295, float %2296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2316 = extractvalue %dx.types.ResRet.f32 %2315, 0
  %2317 = extractvalue %dx.types.ResRet.f32 %2315, 1
  %2318 = extractvalue %dx.types.ResRet.f32 %2315, 2
  %2319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %13, %dx.types.Handle %39, float %2295, float %2296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2320 = extractvalue %dx.types.ResRet.f32 %2319, 0
  %2321 = extractvalue %dx.types.ResRet.f32 %2319, 1
  %2322 = extractvalue %dx.types.ResRet.f32 %2319, 2
  %2323 = fadd fast float %2320, %2316
  %2324 = fmul fast float %2323, 0x3F847AE140000000
  %2325 = fadd fast float %2321, %2317
  %2326 = fmul fast float %2325, 0x3F847AE140000000
  %2327 = fadd fast float %2322, %2318
  %2328 = fmul fast float %2327, 0x3F847AE140000000
  br label %2603

; <label>:2329                                    ; preds = %2177
  %2330 = and i32 %165, 1
  %2331 = icmp eq i32 %2330, 0
  br i1 %2331, label %2603, label %2332

; <label>:2332                                    ; preds = %2329
  %2333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2334 = extractvalue %dx.types.CBufRet.f32 %2333, 0
  %2335 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2336 = extractvalue %dx.types.CBufRet.f32 %2335, 0
  %2337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.f32 %2337, 0
  %2339 = extractvalue %dx.types.CBufRet.f32 %2333, 1
  %2340 = extractvalue %dx.types.CBufRet.f32 %2335, 1
  %2341 = extractvalue %dx.types.CBufRet.f32 %2337, 1
  %2342 = extractvalue %dx.types.CBufRet.f32 %2333, 3
  %2343 = extractvalue %dx.types.CBufRet.f32 %2335, 3
  %2344 = extractvalue %dx.types.CBufRet.f32 %2337, 3
  %2345 = fadd fast float %2342, %2248
  %2346 = fadd fast float %2343, %2249
  %2347 = fadd fast float %2344, %2250
  %2348 = fmul fast float %2345, %2334
  %2349 = call float @dx.op.tertiary.f32(i32 46, float %2346, float %2336, float %2348)  ; FMad(a,b,c)
  %2350 = call float @dx.op.tertiary.f32(i32 46, float %2347, float %2338, float %2349)  ; FMad(a,b,c)
  %2351 = fmul fast float %2345, %2339
  %2352 = call float @dx.op.tertiary.f32(i32 46, float %2346, float %2340, float %2351)  ; FMad(a,b,c)
  %2353 = call float @dx.op.tertiary.f32(i32 46, float %2347, float %2341, float %2352)  ; FMad(a,b,c)
  %2354 = fsub fast float %2350, %2342
  %2355 = fsub fast float %2353, %2343
  %2356 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %2357 = extractvalue %dx.types.CBufRet.f32 %2356, 0
  %2358 = extractvalue %dx.types.CBufRet.f32 %2356, 1
  %2359 = extractvalue %dx.types.CBufRet.f32 %2356, 2
  %2360 = extractvalue %dx.types.CBufRet.f32 %2356, 3
  %2361 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2362 = extractvalue %dx.types.CBufRet.f32 %2361, 3
  %2363 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %2364 = extractvalue %dx.types.CBufRet.i32 %2363, 0
  %2365 = extractvalue %dx.types.CBufRet.i32 %2363, 1
  %2366 = udiv i32 %2365, %2364
  %2367 = fsub fast float %2354, %2357
  %2368 = fsub fast float %2355, %2358
  %2369 = call float @dx.op.binary.f32(i32 35, float %2367, float 0.000000e+00)  ; FMax(a,b)
  %2370 = call float @dx.op.binary.f32(i32 35, float %2368, float 0.000000e+00)  ; FMax(a,b)
  %2371 = call float @dx.op.binary.f32(i32 36, float %2369, float %2359)  ; FMin(a,b)
  %2372 = call float @dx.op.binary.f32(i32 36, float %2370, float %2360)  ; FMin(a,b)
  %2373 = add i32 %2364, -1
  %2374 = add i32 %2366, -1
  %2375 = fmul fast float %2371, %2362
  %2376 = fmul fast float %2372, %2362
  %2377 = fptoui float %2375 to i32
  %2378 = fptoui float %2376 to i32
  %2379 = call i32 @dx.op.binary.i32(i32 40, i32 %2377, i32 %2373)  ; UMin(a,b)
  %2380 = call i32 @dx.op.binary.i32(i32 40, i32 %2378, i32 %2374)  ; UMin(a,b)
  %2381 = mul i32 %2380, %2364
  %2382 = add i32 %2381, %2379
  %2383 = shl i32 %2382, 2
  %2384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %9, i32 %2383, i32 undef)  ; BufferLoad(srv,index,wot)
  %2385 = extractvalue %dx.types.ResRet.i32 %2384, 0
  %2386 = icmp eq i32 %2385, -1
  br i1 %2386, label %2603, label %2387

; <label>:2387                                    ; preds = %2332
  %2388 = mul i32 %2385, 148
  %2389 = add i32 %2388, 4
  %2390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2389, i32 undef)  ; BufferLoad(srv,index,wot)
  %2391 = extractvalue %dx.types.ResRet.f32 %2390, 0
  %2392 = add i32 %2388, 8
  %2393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.f32 %2393, 0
  %2395 = add i32 %2388, 36
  %2396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2395, i32 undef)  ; BufferLoad(srv,index,wot)
  %2397 = extractvalue %dx.types.ResRet.f32 %2396, 0
  %2398 = add i32 %2388, 60
  %2399 = add i32 %2388, 92
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = add i32 %2388, 116
  %2403 = fsub fast float %2354, %2391
  %2404 = fsub fast float %2355, %2394
  %2405 = fmul fast float %2362, %2403
  %2406 = fmul fast float %2362, %2404
  %2407 = call float @dx.op.unary.f32(i32 7, float %2405)  ; Saturate(value)
  %2408 = call float @dx.op.unary.f32(i32 7, float %2406)  ; Saturate(value)
  %2409 = fsub fast float 1.000000e+00, %2408
  %2410 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2411 = extractvalue %dx.types.CBufRet.f32 %2410, 2
  %2412 = call float @dx.op.unary.f32(i32 83, float %2407)  ; DerivCoarseX(value)
  %2413 = call float @dx.op.unary.f32(i32 83, float %2409)  ; DerivCoarseX(value)
  %2414 = call float @dx.op.unary.f32(i32 84, float %2407)  ; DerivCoarseY(value)
  %2415 = call float @dx.op.unary.f32(i32 84, float %2409)  ; DerivCoarseY(value)
  %2416 = fmul fast float %2412, %2411
  %2417 = fmul fast float %2413, %2411
  %2418 = fmul fast float %2414, %2411
  %2419 = fmul fast float %2415, %2411
  %2420 = call float @dx.op.dot2.f32(i32 54, float %2418, float %2419, float %2418, float %2419)  ; Dot2(ax,ay,bx,by)
  %2421 = call float @dx.op.dot2.f32(i32 54, float %2416, float %2417, float %2416, float %2417)  ; Dot2(ax,ay,bx,by)
  %2422 = call float @dx.op.binary.f32(i32 35, float %2421, float %2420)  ; FMax(a,b)
  %2423 = call float @dx.op.unary.f32(i32 23, float %2422)  ; Log(value)
  %2424 = fmul fast float %2423, 5.000000e-01
  %2425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %2426 = extractvalue %dx.types.CBufRet.f32 %2425, 1
  %2427 = fadd fast float %2426, %2424
  %2428 = call float @dx.op.binary.f32(i32 35, float %2427, float 0.000000e+00)  ; FMax(a,b)
  %2429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %2430 = extractvalue %dx.types.CBufRet.f32 %2429, 3
  %2431 = fadd fast float %2430, %2428
  %2432 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %2433 = extractvalue %dx.types.CBufRet.f32 %2432, 3
  %2434 = fadd fast float %2431, %2433
  %2435 = add i32 %2401, 0
  %2436 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2435, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2437 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2436, i32 0)  ; GetDimensions(handle,mipLevel)
  %2438 = extractvalue %dx.types.Dimensions %2437, 0
  %2439 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2438)  ; FirstbitLo(value)
  %2440 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2441 = extractvalue %dx.types.CBufRet.i32 %2440, 1
  %2442 = sub nsw i32 %2441, %2439
  %2443 = sitofp i32 %2442 to float
  %2444 = fsub fast float %2434, %2443
  %2445 = call float @dx.op.binary.f32(i32 35, float %2444, float 0.000000e+00)  ; FMax(a,b)
  %2446 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2436, %dx.types.Handle %37, float %2407, float %2409, float %2397, float undef, i32 0, i32 0, i32 undef, float %2445)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2447 = extractvalue %dx.types.ResRet.f32 %2446, 0
  %2448 = fcmp ule float %2447, 0x3FE0101020000000
  %2449 = extractvalue %dx.types.CBufRet.i32 %2440, 0
  %2450 = and i32 %2449, 128
  %2451 = icmp ne i32 %2450, 0
  %2452 = and i1 %2448, %2451
  br i1 %2452, label %2603, label %2453

; <label>:2453                                    ; preds = %2387
  %2454 = add i32 %2388, 20
  %2455 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2454, i32 undef)  ; BufferLoad(srv,index,wot)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = add i32 %2388, 24
  %2458 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2457, i32 undef)  ; BufferLoad(srv,index,wot)
  %2459 = extractvalue %dx.types.ResRet.f32 %2458, 0
  %2460 = add i32 %2388, 40
  %2461 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2460, i32 undef)  ; BufferLoad(srv,index,wot)
  %2462 = extractvalue %dx.types.ResRet.f32 %2461, 0
  %2463 = add i32 %2388, 96
  %2464 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2463, i32 undef)  ; BufferLoad(srv,index,wot)
  %2465 = extractvalue %dx.types.ResRet.i32 %2464, 0
  %2466 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2467 = extractvalue %dx.types.CBufRet.f32 %2466, 2
  %2468 = fmul fast float %2467, %2407
  %2469 = fmul fast float %2467, %2409
  %2470 = extractvalue %dx.types.CBufRet.f32 %2466, 3
  %2471 = fadd fast float %2468, %2470
  %2472 = fadd fast float %2469, %2470
  %2473 = add i32 %2465, 0
  %2474 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2473, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2475 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2474, i32 0)  ; GetDimensions(handle,mipLevel)
  %2476 = extractvalue %dx.types.Dimensions %2475, 0
  %2477 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2476)  ; FirstbitLo(value)
  %2478 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2479 = extractvalue %dx.types.CBufRet.i32 %2478, 1
  %2480 = sub nsw i32 %2479, %2477
  %2481 = sitofp i32 %2480 to float
  %2482 = fsub fast float %2431, %2481
  %2483 = call float @dx.op.binary.f32(i32 35, float %2482, float 0.000000e+00)  ; FMax(a,b)
  %2484 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2474, %dx.types.Handle %37, float %2471, float %2472, float %2462, float undef, i32 0, i32 0, i32 undef, float %2483)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2485 = extractvalue %dx.types.ResRet.f32 %2484, 0
  %2486 = fmul fast float %2485, %2456
  %2487 = fadd fast float %2486, %2459
  %2488 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %2489 = extractvalue %dx.types.CBufRet.f32 %2488, 0
  %2490 = extractvalue %dx.types.CBufRet.f32 %2488, 1
  %2491 = extractvalue %dx.types.CBufRet.f32 %2488, 2
  %2492 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %2493 = extractvalue %dx.types.CBufRet.f32 %2492, 3
  %2494 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %2495 = extractvalue %dx.types.CBufRet.f32 %2494, 3
  %2496 = extractvalue %dx.types.CBufRet.f32 %2488, 3
  %2497 = fadd fast float %2493, %2354
  %2498 = fadd fast float %2495, %2355
  %2499 = fadd fast float %2487, %2496
  %2500 = fmul fast float %2497, %2489
  %2501 = call float @dx.op.tertiary.f32(i32 46, float %2498, float %2490, float %2500)  ; FMad(a,b,c)
  %2502 = call float @dx.op.tertiary.f32(i32 46, float %2499, float %2491, float %2501)  ; FMad(a,b,c)
  %2503 = fsub fast float %2502, %2496
  %2504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2505 = extractvalue %dx.types.CBufRet.f32 %2504, 2
  %2506 = fsub fast float %2503, %2505
  %2507 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %2508 = extractvalue %dx.types.CBufRet.i32 %2507, 0
  %2509 = call i32 @dx.op.binary.i32(i32 40, i32 %2385, i32 %2508)  ; UMin(a,b)
  %2510 = mul i32 %2509, 36
  %2511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2510, i32 undef)  ; BufferLoad(srv,index,wot)
  %2512 = extractvalue %dx.types.ResRet.i32 %2511, 0
  %2513 = add i32 %2510, 4
  %2514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %2515 = extractvalue %dx.types.CBufRet.f32 %2514, 0
  %2516 = fmul fast float %2515, %2407
  %2517 = fmul fast float %2515, %2409
  %2518 = extractvalue %dx.types.CBufRet.f32 %2514, 1
  %2519 = fadd fast float %2516, %2518
  %2520 = fadd fast float %2517, %2518
  %2521 = icmp eq i32 %2512, 0
  br i1 %2521, label %2590, label %2522

; <label>:2522                                    ; preds = %2453
  br label %2523

; <label>:2523                                    ; preds = %2580, %2522
  %2524 = phi float [ %2581, %2580 ], [ 0.000000e+00, %2522 ]
  %2525 = phi float [ %2582, %2580 ], [ 0.000000e+00, %2522 ]
  %2526 = phi float [ %2583, %2580 ], [ 0.000000e+00, %2522 ]
  %2527 = phi float [ %2584, %2580 ], [ 0.000000e+00, %2522 ]
  %2528 = phi float [ %2585, %2580 ], [ 0.000000e+00, %2522 ]
  %2529 = phi float [ %2586, %2580 ], [ 0.000000e+00, %2522 ]
  %2530 = phi i32 [ %2587, %2580 ], [ 0, %2522 ]
  %2531 = shl i32 %2530, 2
  %2532 = add i32 %2398, %2531
  %2533 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %11, i32 %2532, i32 undef)  ; BufferLoad(srv,index,wot)
  %2534 = extractvalue %dx.types.ResRet.f32 %2533, 0
  %2535 = add i32 %2402, %2531
  %2536 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %11, i32 %2535, i32 undef)  ; BufferLoad(srv,index,wot)
  %2537 = extractvalue %dx.types.ResRet.i32 %2536, 0
  %2538 = add i32 %2537, 0
  %2539 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %2538, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2540 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %2539, i32 0)  ; GetDimensions(handle,mipLevel)
  %2541 = extractvalue %dx.types.Dimensions %2540, 0
  %2542 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %2541)  ; FirstbitLo(value)
  %2543 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %2544 = extractvalue %dx.types.CBufRet.i32 %2543, 1
  %2545 = sub nsw i32 %2544, %2542
  %2546 = sitofp i32 %2545 to float
  %2547 = fsub fast float %2431, %2546
  %2548 = call float @dx.op.binary.f32(i32 35, float %2547, float 0.000000e+00)  ; FMax(a,b)
  %2549 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2539, %dx.types.Handle %37, float %2519, float %2520, float %2534, float undef, i32 0, i32 0, i32 undef, float %2548)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2550 = extractvalue %dx.types.ResRet.f32 %2549, 0
  %2551 = fcmp fast ogt float %2550, 0.000000e+00
  br i1 %2551, label %2552, label %2580

; <label>:2552                                    ; preds = %2523
  %2553 = add i32 %2513, %2531
  %2554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 %2553, i32 undef)  ; BufferLoad(srv,index,wot)
  %2555 = extractvalue %dx.types.ResRet.i32 %2554, 0
  %2556 = and i32 %2555, 32767
  %2557 = mul nuw nsw i32 %2556, 928
  %2558 = add nuw nsw i32 %2557, 48
  %2559 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2558, i32 undef)  ; BufferLoad(srv,index,wot)
  %2560 = extractvalue %dx.types.ResRet.f32 %2559, 0
  %2561 = extractvalue %dx.types.ResRet.f32 %2559, 1
  %2562 = extractvalue %dx.types.ResRet.f32 %2559, 2
  %2563 = add nuw nsw i32 %2557, 60
  %2564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %12, i32 %2563, i32 undef)  ; BufferLoad(srv,index,wot)
  %2565 = extractvalue %dx.types.ResRet.f32 %2564, 0
  %2566 = extractvalue %dx.types.ResRet.f32 %2564, 1
  %2567 = extractvalue %dx.types.ResRet.f32 %2564, 2
  %2568 = fmul fast float %2560, %2550
  %2569 = fmul fast float %2561, %2550
  %2570 = fmul fast float %2562, %2550
  %2571 = fadd fast float %2568, %2524
  %2572 = fadd fast float %2569, %2525
  %2573 = fadd fast float %2570, %2526
  %2574 = fmul fast float %2565, %2550
  %2575 = fmul fast float %2566, %2550
  %2576 = fmul fast float %2567, %2550
  %2577 = fadd fast float %2574, %2527
  %2578 = fadd fast float %2575, %2528
  %2579 = fadd fast float %2576, %2529
  br label %2580

; <label>:2580                                    ; preds = %2552, %2523
  %2581 = phi float [ %2571, %2552 ], [ %2524, %2523 ]
  %2582 = phi float [ %2572, %2552 ], [ %2525, %2523 ]
  %2583 = phi float [ %2573, %2552 ], [ %2526, %2523 ]
  %2584 = phi float [ %2577, %2552 ], [ %2527, %2523 ]
  %2585 = phi float [ %2578, %2552 ], [ %2528, %2523 ]
  %2586 = phi float [ %2579, %2552 ], [ %2529, %2523 ]
  %2587 = add nuw i32 %2530, 1
  %2588 = icmp eq i32 %2587, %2512
  br i1 %2588, label %2589, label %2523

; <label>:2589                                    ; preds = %2580
  br label %2590

; <label>:2590                                    ; preds = %2589, %2453
  %2591 = phi float [ 0.000000e+00, %2453 ], [ %2581, %2589 ]
  %2592 = phi float [ 0.000000e+00, %2453 ], [ %2582, %2589 ]
  %2593 = phi float [ 0.000000e+00, %2453 ], [ %2583, %2589 ]
  %2594 = phi float [ 0.000000e+00, %2453 ], [ %2584, %2589 ]
  %2595 = phi float [ 0.000000e+00, %2453 ], [ %2585, %2589 ]
  %2596 = phi float [ 0.000000e+00, %2453 ], [ %2586, %2589 ]
  %2597 = fadd fast float %2594, %2591
  %2598 = fmul fast float %2597, 0x3F847AE140000000
  %2599 = fadd fast float %2595, %2592
  %2600 = fmul fast float %2599, 0x3F847AE140000000
  %2601 = fadd fast float %2596, %2593
  %2602 = fmul fast float %2601, 0x3F847AE140000000
  br label %2603

; <label>:2603                                    ; preds = %2590, %2387, %2332, %2329, %2300, %2262
  %2604 = phi float [ %2314, %2300 ], [ -1.310720e+05, %2262 ], [ %2506, %2590 ], [ -1.310720e+05, %2332 ], [ -1.310720e+05, %2387 ], [ -1.310720e+05, %2329 ]
  %2605 = phi float [ %2324, %2300 ], [ 0.000000e+00, %2262 ], [ %2598, %2590 ], [ 0.000000e+00, %2332 ], [ 0.000000e+00, %2387 ], [ 0.000000e+00, %2329 ]
  %2606 = phi float [ %2326, %2300 ], [ 0.000000e+00, %2262 ], [ %2600, %2590 ], [ 0.000000e+00, %2332 ], [ 0.000000e+00, %2387 ], [ 0.000000e+00, %2329 ]
  %2607 = phi float [ %2328, %2300 ], [ 0.000000e+00, %2262 ], [ %2602, %2590 ], [ 0.000000e+00, %2332 ], [ 0.000000e+00, %2387 ], [ 0.000000e+00, %2329 ]
  %2608 = phi i1 [ true, %2300 ], [ false, %2262 ], [ true, %2590 ], [ false, %2332 ], [ false, %2387 ], [ false, %2329 ]
  %2609 = and i32 %165, 3
  %2610 = icmp eq i32 %2609, 1
  %2611 = select i1 %2610, float 1.000000e+00, float 0.000000e+00
  %2612 = fsub fast float %2604, %120
  %2613 = call float @dx.op.unary.f32(i32 7, float %2612)  ; Saturate(value)
  %2614 = select i1 %2608, float %2613, float 1.000000e+00
  %2615 = fmul fast float %2614, %2611
  %2616 = icmp eq i32 %2609, 3
  %2617 = select i1 %2616, float 1.000000e+00, float %2615
  %2618 = call float @dx.op.binary.f32(i32 35, float %2178, float %2617)  ; FMax(a,b)
  %2619 = call float @dx.op.unary.f32(i32 7, float %2618)  ; Saturate(value)
  %2620 = fcmp fast une float %2619, 0.000000e+00
  %2621 = call float @dx.op.dot3.f32(i32 55, float %118, float %119, float %120, float %118, float %119, float %120)  ; Dot3(ax,ay,az,bx,by,bz)
  %2622 = call float @dx.op.unary.f32(i32 25, float %2621)  ; Rsqrt(value)
  br i1 %2620, label %2630, label %2623

; <label>:2623                                    ; preds = %2603
  %2624 = fmul fast float %2622, %118
  %2625 = fmul fast float %2622, %119
  %2626 = fmul fast float %2622, %120
  %2627 = fsub fast float -0.000000e+00, %2624
  %2628 = fsub fast float -0.000000e+00, %2625
  %2629 = fsub fast float -0.000000e+00, %2626
  br label %2798

; <label>:2630                                    ; preds = %2603
  %2631 = fmul fast float %118, %2622
  %2632 = fsub fast float -0.000000e+00, %2631
  %2633 = fmul fast float %119, %2622
  %2634 = fsub fast float -0.000000e+00, %2633
  %2635 = fmul fast float %120, %2622
  %2636 = fsub fast float -0.000000e+00, %2635
  %2637 = call float @dx.op.dot3.f32(i32 55, float %2632, float %2634, float %2636, float %53, float %54, float %55)  ; Dot3(ax,ay,az,bx,by,bz)
  %2638 = fmul fast float %2619, 2.500000e+00
  %2639 = call float @dx.op.unary.f32(i32 7, float %2638)  ; Saturate(value)
  %2640 = fmul fast float %2619, 0x4013FFFFE0000000
  %2641 = fadd fast float %2640, 0xBFFFFFFFE0000000
  %2642 = call float @dx.op.unary.f32(i32 7, float %2641)  ; Saturate(value)
  %2643 = fmul fast float %2619, 0x4004000020000000
  %2644 = fadd fast float %2643, 0xBFF8000040000000
  %2645 = call float @dx.op.unary.f32(i32 7, float %2644)  ; Saturate(value)
  %2646 = call float @dx.op.unary.f32(i32 7, float %2639)  ; Saturate(value)
  %2647 = fmul fast float %2208, 1.000000e+01
  %2648 = call float @dx.op.unary.f32(i32 7, float %2647)  ; Saturate(value)
  %2649 = fmul fast float %2648, 2.000000e+00
  %2650 = fsub fast float 3.000000e+00, %2649
  %2651 = fmul fast float %2648, %2648
  %2652 = fmul fast float %2651, %2650
  %2653 = fsub fast float 1.000000e+00, %2652
  %2654 = fsub fast float 0x3FE3333340000000, %2229
  %2655 = fmul fast float %2654, 0x400AAAAAA0000000
  %2656 = call float @dx.op.unary.f32(i32 7, float %2655)  ; Saturate(value)
  %2657 = fmul fast float %2653, %2656
  %2658 = fmul fast float %2241, 0x3FEA2B8620000000
  %2659 = fmul fast float %2242, 0x3FEA2B8620000000
  %2660 = fmul fast float %2243, 0x3FEA2B8620000000
  %2661 = fadd fast float %2658, 0x3FC81DFBA0000000
  %2662 = fmul fast float %2661, %2241
  %2663 = fadd fast float %2662, 0x3F910E6020000000
  %2664 = fadd fast float %2659, 0x3FC81DFBA0000000
  %2665 = fmul fast float %2664, %2242
  %2666 = fadd fast float %2665, 0x3F910E6020000000
  %2667 = fadd fast float %2660, 0x3FC81DFBA0000000
  %2668 = fmul fast float %2667, %2243
  %2669 = fadd fast float %2668, 0x3F910E6020000000
  %2670 = call float @dx.op.unary.f32(i32 7, float %2663)  ; Saturate(value)
  %2671 = call float @dx.op.unary.f32(i32 7, float %2666)  ; Saturate(value)
  %2672 = call float @dx.op.unary.f32(i32 7, float %2669)  ; Saturate(value)
  %2673 = fsub fast float %2670, %2241
  %2674 = fsub fast float %2671, %2242
  %2675 = fsub fast float %2672, %2243
  %2676 = fmul fast float %2673, %2646
  %2677 = fmul fast float %2676, %2657
  %2678 = fmul fast float %2674, %2646
  %2679 = fmul fast float %2678, %2657
  %2680 = fmul fast float %2675, %2646
  %2681 = fmul fast float %2680, %2657
  %2682 = fadd fast float %2677, %2241
  %2683 = fadd fast float %2679, %2242
  %2684 = fadd fast float %2681, %2243
  %2685 = fmul fast float %2189, %2189
  %2686 = fmul fast float %2685, %2685
  %2687 = fadd fast float %2642, 1.000000e+00
  %2688 = fsub fast float %2687, %2657
  %2689 = call float @dx.op.unary.f32(i32 7, float %2688)  ; Saturate(value)
  %2690 = call float @dx.op.dot3.f32(i32 55, float %53, float %54, float %55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %2691 = call float @dx.op.unary.f32(i32 7, float %2690)  ; Saturate(value)
  %2692 = fsub fast float 1.000000e+00, %2686
  %2693 = call float @dx.op.binary.f32(i32 36, float %2689, float %2692)  ; FMin(a,b)
  %2694 = call float @dx.op.unary.f32(i32 7, float %2645)  ; Saturate(value)
  %2695 = call float @dx.op.binary.f32(i32 35, float %2693, float %2694)  ; FMax(a,b)
  %2696 = fadd fast float %2691, 0xBFE4CCCCC0000000
  %2697 = fmul fast float %2696, 0x4006DB6DA0000000
  %2698 = call float @dx.op.unary.f32(i32 7, float %2697)  ; Saturate(value)
  %2699 = fmul fast float %2698, 2.000000e+00
  %2700 = fsub fast float 3.000000e+00, %2699
  %2701 = bitcast float %2226 to i32
  %2702 = ashr i32 %2701, 1
  %2703 = add nsw i32 %2702, 532487669
  %2704 = bitcast i32 %2703 to float
  %2705 = fsub fast float 1.000000e+00, %2704
  %2706 = bitcast float %2705 to i32
  %2707 = sub nsw i32 2129859010, %2706
  %2708 = bitcast i32 %2707 to float
  %2709 = fmul fast float %2708, 2.000000e+00
  %2710 = bitcast float %2227 to i32
  %2711 = ashr i32 %2710, 1
  %2712 = add nsw i32 %2711, 532487669
  %2713 = bitcast i32 %2712 to float
  %2714 = fsub fast float 1.000000e+00, %2713
  %2715 = bitcast float %2714 to i32
  %2716 = sub nsw i32 2129859010, %2715
  %2717 = bitcast i32 %2716 to float
  %2718 = fmul fast float %2717, 2.000000e+00
  %2719 = bitcast float %2228 to i32
  %2720 = ashr i32 %2719, 1
  %2721 = add nsw i32 %2720, 532487669
  %2722 = bitcast i32 %2721 to float
  %2723 = fsub fast float 1.000000e+00, %2722
  %2724 = bitcast float %2723 to i32
  %2725 = sub nsw i32 2129859010, %2724
  %2726 = bitcast i32 %2725 to float
  %2727 = fmul fast float %2726, 2.000000e+00
  %2728 = fsub fast float 0x4002A9FBE0000000, %2709
  %2729 = fadd fast float %2709, 0x3FD54FDF00000000
  %2730 = bitcast float %2729 to i32
  %2731 = sub nsw i32 2129859010, %2730
  %2732 = bitcast i32 %2731 to float
  %2733 = fmul fast float %2732, %2728
  %2734 = fmul fast float %2733, %2733
  %2735 = fsub fast float 0x4002A9FBE0000000, %2718
  %2736 = fadd fast float %2718, 0x3FD54FDF00000000
  %2737 = bitcast float %2736 to i32
  %2738 = sub nsw i32 2129859010, %2737
  %2739 = bitcast i32 %2738 to float
  %2740 = fmul fast float %2739, %2735
  %2741 = fmul fast float %2740, %2740
  %2742 = fsub fast float 0x4002A9FBE0000000, %2727
  %2743 = fadd fast float %2727, 0x3FD54FDF00000000
  %2744 = bitcast float %2743 to i32
  %2745 = sub nsw i32 2129859010, %2744
  %2746 = bitcast i32 %2745 to float
  %2747 = fmul fast float %2746, %2742
  %2748 = fmul fast float %2747, %2747
  %2749 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2734)  ; FMax(a,b)
  %2750 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2741)  ; FMax(a,b)
  %2751 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %2748)  ; FMax(a,b)
  %2752 = fsub fast float 1.000000e+00, %2637
  %2753 = fadd fast float %2752, %2653
  %2754 = call float @dx.op.unary.f32(i32 7, float %2753)  ; Saturate(value)
  %2755 = fsub fast float 1.000000e+00, %2617
  %2756 = fmul fast float %2695, %2755
  %2757 = fmul fast float %2698, %2698
  %2758 = fmul fast float %2757, %2756
  %2759 = fmul fast float %2758, %2700
  %2760 = fmul fast float %2755, 0xBFE99999A0000000
  %2761 = fmul fast float %2760, %2646
  %2762 = fmul fast float %2761, %2657
  %2763 = fadd fast float %2762, 1.000000e+00
  %2764 = fadd fast float %2229, -1.000000e+00
  %2765 = fmul fast float %2763, %2764
  %2766 = fadd fast float %2765, 1.000000e+00
  %2767 = fsub fast float %2749, %2226
  %2768 = fsub fast float %2750, %2227
  %2769 = fsub fast float %2751, %2228
  %2770 = fmul fast float %2759, %2767
  %2771 = fmul fast float %2759, %2768
  %2772 = fmul fast float %2759, %2769
  %2773 = fadd fast float %2770, %2226
  %2774 = fadd fast float %2771, %2227
  %2775 = fadd fast float %2772, %2228
  %2776 = fsub fast float %53, %2205
  %2777 = fsub fast float %54, %2206
  %2778 = fsub fast float %55, %2207
  %2779 = fmul fast float %2759, %2776
  %2780 = fmul fast float %2759, %2777
  %2781 = fmul fast float %2759, %2778
  %2782 = fadd fast float %2779, %2205
  %2783 = fadd fast float %2780, %2206
  %2784 = fadd fast float %2781, %2207
  %2785 = fmul fast float %2759, %2754
  %2786 = call float @dx.op.unary.f32(i32 7, float %2766)  ; Saturate(value)
  %2787 = fsub fast float 1.000000e+00, %2786
  %2788 = fmul fast float %2785, %2787
  %2789 = fadd fast float %2788, %2786
  %2790 = fsub fast float 1.000000e+00, %2189
  %2791 = fmul fast float %2759, %2790
  %2792 = fadd fast float %2791, %2189
  %2793 = call float @dx.op.dot3.f32(i32 55, float %2782, float %2783, float %2784, float %2782, float %2783, float %2784)  ; Dot3(ax,ay,az,bx,by,bz)
  %2794 = call float @dx.op.unary.f32(i32 25, float %2793)  ; Rsqrt(value)
  %2795 = fmul fast float %2782, %2794
  %2796 = fmul fast float %2783, %2794
  %2797 = fmul fast float %2784, %2794
  br label %2798

; <label>:2798                                    ; preds = %2630, %2623
  %2799 = phi float [ %2629, %2623 ], [ %2636, %2630 ]
  %2800 = phi float [ %2628, %2623 ], [ %2634, %2630 ]
  %2801 = phi float [ %2627, %2623 ], [ %2632, %2630 ]
  %2802 = phi float [ %2626, %2623 ], [ %2635, %2630 ]
  %2803 = phi float [ %2625, %2623 ], [ %2633, %2630 ]
  %2804 = phi float [ %2624, %2623 ], [ %2631, %2630 ]
  %2805 = phi float [ %2205, %2623 ], [ %2795, %2630 ]
  %2806 = phi float [ %2206, %2623 ], [ %2796, %2630 ]
  %2807 = phi float [ %2207, %2623 ], [ %2797, %2630 ]
  %2808 = phi float [ %2226, %2623 ], [ %2773, %2630 ]
  %2809 = phi float [ %2227, %2623 ], [ %2774, %2630 ]
  %2810 = phi float [ %2228, %2623 ], [ %2775, %2630 ]
  %2811 = phi float [ %2241, %2623 ], [ %2682, %2630 ]
  %2812 = phi float [ %2242, %2623 ], [ %2683, %2630 ]
  %2813 = phi float [ %2243, %2623 ], [ %2684, %2630 ]
  %2814 = phi float [ %2229, %2623 ], [ %2789, %2630 ]
  %2815 = phi float [ %2189, %2623 ], [ %2792, %2630 ]
  %2816 = select i1 %189, float 0.000000e+00, float %2810
  %2817 = call float @dx.op.dot3.f32(i32 55, float %2805, float %2806, float %2807, float %2801, float %2800, float %2799)  ; Dot3(ax,ay,az,bx,by,bz)
  %2818 = call float @dx.op.unary.f32(i32 7, float %2817)  ; Saturate(value)
  %2819 = call float @dx.op.dot3.f32(i32 55, float %2804, float %2803, float %2802, float %2805, float %2806, float %2807)  ; Dot3(ax,ay,az,bx,by,bz)
  %2820 = fmul fast float %2819, 2.000000e+00
  %2821 = fmul fast float %2820, %2805
  %2822 = fmul fast float %2820, %2806
  %2823 = fmul fast float %2820, %2807
  %2824 = fsub fast float %2804, %2821
  %2825 = fsub fast float %2803, %2822
  %2826 = fsub fast float %2802, %2823
  %2827 = call float @dx.op.binary.f32(i32 36, float %2815, float 1.000000e+00)  ; FMin(a,b)
  %2828 = fsub fast float 1.000000e+00, %2815
  %2829 = bitcast float %2828 to i32
  %2830 = sub nsw i32 2129859010, %2829
  %2831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2832 = extractvalue %dx.types.CBufRet.f32 %2831, 0
  %2833 = extractvalue %dx.types.CBufRet.f32 %2831, 1
  %2834 = fadd fast float %2832, %118
  %2835 = fadd fast float %2833, %119
  %2836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 260)  ; CBufferLoadLegacy(handle,regIndex)
  %2837 = extractvalue %dx.types.CBufRet.i32 %2836, 0
  %2838 = icmp eq i32 %2837, 1
  br i1 %2838, label %2839, label %2874

; <label>:2839                                    ; preds = %2798
  %2840 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2841 = extractvalue %dx.types.CBufRet.f32 %2840, 0
  %2842 = extractvalue %dx.types.CBufRet.f32 %2840, 1
  %2843 = fsub fast float %2834, %2841
  %2844 = fsub fast float %2835, %2842
  %2845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.f32 %2845, 0
  %2847 = extractvalue %dx.types.CBufRet.f32 %2845, 1
  %2848 = fmul fast float %2843, %2846
  %2849 = fmul fast float %2844, %2847
  %2850 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %32, %dx.types.Handle %39, float %2848, float %2849, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2851 = extractvalue %dx.types.ResRet.f32 %2850, 0
  %2852 = fcmp fast ogt float %2851, 0.000000e+00
  %2853 = extractvalue %dx.types.CBufRet.i32 %2836, 3
  %2854 = icmp ne i32 %2853, 0
  %2855 = and i1 %2852, %2854
  br i1 %2855, label %2856, label %2874, !dx.controlflow.hints !81

; <label>:2856                                    ; preds = %2839
  %2857 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %2858 = extractvalue %dx.types.CBufRet.f32 %2857, 0
  %2859 = extractvalue %dx.types.CBufRet.f32 %2857, 1
  %2860 = fsub fast float %2834, %2858
  %2861 = fsub fast float %2835, %2859
  %2862 = fmul fast float %2860, %2860
  %2863 = fmul fast float %2861, %2861
  %2864 = fadd fast float %2862, %2863
  %2865 = uitofp i32 %2853 to float
  %2866 = fmul fast float %2865, %2865
  %2867 = fcmp fast ogt float %2864, %2866
  br i1 %2867, label %2874, label %2868

; <label>:2868                                    ; preds = %2856
  %2869 = call float @dx.op.unary.f32(i32 24, float %2864)  ; Sqrt(value)
  %2870 = fsub fast float %2865, %2869
  %2871 = fmul fast float %2870, 0x3F75555560000000
  %2872 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  %2873 = call float @dx.op.binary.f32(i32 36, float %2872, float %2851)  ; FMin(a,b)
  br label %2874

; <label>:2874                                    ; preds = %2868, %2856, %2839, %2798
  %2875 = phi float [ 1.000000e+00, %2798 ], [ %2873, %2868 ], [ %2851, %2839 ], [ 0.000000e+00, %2856 ]
  %2876 = fcmp fast ogt float %2875, 0.000000e+00
  br i1 %2876, label %2877, label %2975, !dx.controlflow.hints !82

; <label>:2877                                    ; preds = %2874
  %2878 = fadd fast float %149, 5.000000e-01
  %2879 = call float @dx.op.unary.f32(i32 27, float %2878)  ; Round_ni(value)
  %2880 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %27, %dx.types.Handle %39, float %147, float %148, float %2879, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2881 = extractvalue %dx.types.ResRet.f32 %2880, 0
  %2882 = extractvalue %dx.types.ResRet.f32 %2880, 1
  %2883 = extractvalue %dx.types.ResRet.f32 %2880, 2
  %2884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %2885 = extractvalue %dx.types.CBufRet.f32 %2884, 3
  %2886 = fmul fast float %2885, %2881
  %2887 = fmul fast float %2885, %2882
  %2888 = fmul fast float %2885, %2883
  %2889 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %147, float %148, float %2879, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2890 = extractvalue %dx.types.ResRet.f32 %2889, 0
  %2891 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %26, %dx.types.Handle %39, float %147, float %148, float %2879, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2892 = extractvalue %dx.types.ResRet.f32 %2891, 0
  %2893 = extractvalue %dx.types.ResRet.f32 %2891, 1
  %2894 = fmul fast float %2892, 2.000000e+00
  %2895 = fmul fast float %2893, 2.000000e+00
  %2896 = fadd fast float %2894, -1.000000e+00
  %2897 = fadd fast float %2895, -1.000000e+00
  %2898 = fadd fast float %2896, %2897
  %2899 = fmul fast float %2898, 5.000000e-01
  %2900 = fsub fast float %2896, %2897
  %2901 = fmul fast float %2900, 5.000000e-01
  %2902 = call float @dx.op.unary.f32(i32 6, float %2899)  ; FAbs(value)
  %2903 = fsub fast float 1.000000e+00, %2902
  %2904 = call float @dx.op.unary.f32(i32 6, float %2901)  ; FAbs(value)
  %2905 = fsub fast float %2903, %2904
  %2906 = call float @dx.op.binary.f32(i32 35, float 0x3FA1814380000000, float %2905)  ; FMax(a,b)
  %2907 = call float @dx.op.dot3.f32(i32 55, float %2899, float %2901, float %2906, float %2899, float %2901, float %2906)  ; Dot3(ax,ay,az,bx,by,bz)
  %2908 = bitcast float %2907 to i32
  %2909 = ashr i32 %2908, 1
  %2910 = sub nsw i32 1597250115, %2909
  %2911 = bitcast i32 %2910 to float
  %2912 = fmul fast float %2911, %2899
  %2913 = fmul fast float %2911, %2901
  %2914 = fmul fast float %2911, %2906
  %2915 = fsub fast float 1.000000e+00, %2890
  %2916 = fdiv fast float %2915, %2914
  %2917 = fmul fast float %2914, %53
  %2918 = fmul fast float %2914, %54
  %2919 = fmul fast float %2914, %55
  %2920 = fmul fast float %2912, %49
  %2921 = fmul fast float %2912, %50
  %2922 = fmul fast float %2912, %51
  %2923 = fadd fast float %2917, %2920
  %2924 = fadd fast float %2918, %2921
  %2925 = fadd fast float %2919, %2922
  %2926 = fmul fast float %2913, %82
  %2927 = fmul fast float %2913, %83
  %2928 = fmul fast float %2913, %84
  %2929 = fadd fast float %2923, %2926
  %2930 = fadd fast float %2924, %2927
  %2931 = fadd fast float %2925, %2928
  %2932 = call float @dx.op.dot3.f32(i32 55, float %2929, float %2930, float %2931, float %2929, float %2930, float %2931)  ; Dot3(ax,ay,az,bx,by,bz)
  %2933 = call float @dx.op.unary.f32(i32 25, float %2932)  ; Rsqrt(value)
  %2934 = fmul fast float %2929, %2933
  %2935 = fmul fast float %2930, %2933
  %2936 = fmul fast float %2931, %2933
  %2937 = call float @dx.op.dot3.f32(i32 55, float %2805, float %2806, float %2807, float %2805, float %2806, float %2807)  ; Dot3(ax,ay,az,bx,by,bz)
  %2938 = call float @dx.op.unary.f32(i32 7, float %2937)  ; Saturate(value)
  %2939 = fmul fast float %2938, 5.000000e-01
  %2940 = fadd fast float %2939, 5.000000e-01
  %2941 = fmul fast float %2940, %2890
  %2942 = call float @dx.op.dot3.f32(i32 55, float %2805, float %2806, float %2807, float %2934, float %2935, float %2936)  ; Dot3(ax,ay,az,bx,by,bz)
  %2943 = call float @dx.op.unary.f32(i32 7, float %2942)  ; Saturate(value)
  %2944 = fmul fast float %2943, %2916
  %2945 = fadd fast float %2941, %2944
  %2946 = fsub fast float 5.000000e-01, %2939
  %2947 = fmul fast float %2946, %2811
  %2948 = fmul fast float %2946, %2812
  %2949 = fmul fast float %2946, %2813
  %2950 = fadd fast float %2945, %2947
  %2951 = fmul fast float %2950, %2886
  %2952 = fadd fast float %2945, %2948
  %2953 = fmul fast float %2952, %2887
  %2954 = fadd fast float %2945, %2949
  %2955 = fmul fast float %2954, %2888
  %2956 = call float @dx.op.dot3.f32(i32 55, float %2824, float %2825, float %2826, float %2805, float %2806, float %2807)  ; Dot3(ax,ay,az,bx,by,bz)
  %2957 = call float @dx.op.unary.f32(i32 7, float %2956)  ; Saturate(value)
  %2958 = fmul fast float %2957, 5.000000e-01
  %2959 = fadd fast float %2958, 5.000000e-01
  %2960 = fmul fast float %2959, %2890
  %2961 = call float @dx.op.dot3.f32(i32 55, float %2824, float %2825, float %2826, float %2934, float %2935, float %2936)  ; Dot3(ax,ay,az,bx,by,bz)
  %2962 = call float @dx.op.unary.f32(i32 7, float %2961)  ; Saturate(value)
  %2963 = fmul fast float %2962, %2916
  %2964 = fadd fast float %2960, %2963
  %2965 = fsub fast float 5.000000e-01, %2958
  %2966 = fmul fast float %2965, %2811
  %2967 = fmul fast float %2965, %2812
  %2968 = fmul fast float %2965, %2813
  %2969 = fadd fast float %2964, %2966
  %2970 = fmul fast float %2969, %2886
  %2971 = fadd fast float %2964, %2967
  %2972 = fmul fast float %2971, %2887
  %2973 = fadd fast float %2964, %2968
  %2974 = fmul fast float %2973, %2888
  br label %2975

; <label>:2975                                    ; preds = %2877, %2874
  %2976 = phi float [ %2970, %2877 ], [ 0.000000e+00, %2874 ]
  %2977 = phi float [ %2972, %2877 ], [ 0.000000e+00, %2874 ]
  %2978 = phi float [ %2974, %2877 ], [ 0.000000e+00, %2874 ]
  %2979 = phi float [ %2951, %2877 ], [ 0.000000e+00, %2874 ]
  %2980 = phi float [ %2953, %2877 ], [ 0.000000e+00, %2874 ]
  %2981 = phi float [ %2955, %2877 ], [ 0.000000e+00, %2874 ]
  %2982 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 271)  ; CBufferLoadLegacy(handle,regIndex)
  %2983 = extractvalue %dx.types.CBufRet.f32 %2982, 0
  %2984 = fcmp fast ogt float %2983, 0.000000e+00
  %2985 = and i1 %2876, %2984
  br i1 %2985, label %2986, label %3190, !dx.controlflow.hints !83

; <label>:2986                                    ; preds = %2975
  %2987 = extractvalue %dx.types.CBufRet.f32 %2831, 2
  %2988 = fadd fast float %2987, %120
  %2989 = fmul fast float %2805, 3.200000e+01
  %2990 = fmul fast float %2806, 3.200000e+01
  %2991 = fadd fast float %2834, %2989
  %2992 = fadd fast float %2835, %2990
  %2993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %2994 = extractvalue %dx.types.CBufRet.f32 %2993, 0
  %2995 = extractvalue %dx.types.CBufRet.f32 %2993, 1
  %2996 = fsub fast float %2991, %2994
  %2997 = fsub fast float %2992, %2995
  %2998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %2999 = extractvalue %dx.types.CBufRet.f32 %2998, 0
  %3000 = extractvalue %dx.types.CBufRet.f32 %2998, 1
  %3001 = fmul fast float %2996, %2999
  %3002 = fmul fast float %2997, %3000
  %3003 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3004 = extractvalue %dx.types.CBufRet.f32 %3003, 0
  %3005 = extractvalue %dx.types.CBufRet.f32 %3003, 1
  %3006 = fsub fast float %2834, %3004
  %3007 = fsub fast float %2835, %3005
  %3008 = fmul fast float %3006, %3006
  %3009 = fmul fast float %3007, %3007
  %3010 = fadd fast float %3008, %3009
  %3011 = call float @dx.op.unary.f32(i32 24, float %3010)  ; Sqrt(value)
  %3012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3013 = extractvalue %dx.types.CBufRet.f32 %3012, 0
  %3014 = extractvalue %dx.types.CBufRet.f32 %3012, 1
  %3015 = fsub fast float %3011, %3013
  %3016 = fdiv fast float %3015, %3014
  %3017 = call float @dx.op.unary.f32(i32 7, float %3016)  ; Saturate(value)
  %3018 = fmul fast float %3017, 2.000000e+00
  %3019 = fsub fast float 3.000000e+00, %3018
  %3020 = fmul fast float %3017, %3017
  %3021 = fmul fast float %3020, %3019
  %3022 = fcmp fast oge float %3001, 0.000000e+00
  %3023 = fcmp fast ole float %3001, 1.000000e+00
  %3024 = and i1 %3023, %3022
  %3025 = fcmp fast oge float %3002, 0.000000e+00
  %3026 = and i1 %3025, %3024
  %3027 = fcmp fast ole float %3002, 1.000000e+00
  %3028 = and i1 %3027, %3026
  %3029 = fcmp fast ogt float %3021, 0.000000e+00
  %3030 = and i1 %3029, %3028
  br i1 %3030, label %3031, label %3154, !dx.controlflow.hints !84

; <label>:3031                                    ; preds = %2986
  %3032 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3033 = extractvalue %dx.types.CBufRet.f32 %3032, 2
  %3034 = extractvalue %dx.types.CBufRet.f32 %3032, 3
  %3035 = fmul fast float %3033, %3001
  %3036 = fmul fast float %3034, %3002
  %3037 = call float @dx.op.unary.f32(i32 27, float %3035)  ; Round_ni(value)
  %3038 = call float @dx.op.unary.f32(i32 27, float %3036)  ; Round_ni(value)
  %3039 = fptosi float %3037 to i32
  %3040 = fptosi float %3038 to i32
  %3041 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3039, i32 %3040, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3042 = extractvalue %dx.types.ResRet.i32 %3041, 0
  %3043 = lshr i32 %3042, 16
  %3044 = icmp eq i32 %3043, 65535
  br i1 %3044, label %3154, label %3045

; <label>:3045                                    ; preds = %3031
  %3046 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3047 = extractvalue %dx.types.CBufRet.f32 %3046, 0
  %3048 = fmul fast float %3047, %3001
  %3049 = extractvalue %dx.types.CBufRet.f32 %3046, 1
  %3050 = fadd fast float %3048, %3049
  %3051 = extractvalue %dx.types.CBufRet.f32 %3046, 2
  %3052 = fmul fast float %3051, %3002
  %3053 = extractvalue %dx.types.CBufRet.f32 %3046, 3
  %3054 = fadd fast float %3052, %3053
  %3055 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3050, float %3054, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3056 = extractvalue %dx.types.ResRet.f32 %3055, 0
  %3057 = extractvalue %dx.types.ResRet.f32 %3055, 1
  %3058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3059 = extractvalue %dx.types.CBufRet.f32 %3058, 1
  %3060 = extractvalue %dx.types.CBufRet.f32 %3058, 0
  %3061 = fsub fast float %3059, %3060
  %3062 = fmul fast float %3061, %3056
  %3063 = fadd fast float %3062, %3060
  %3064 = extractvalue %dx.types.CBufRet.f32 %3058, 3
  %3065 = extractvalue %dx.types.CBufRet.f32 %3058, 2
  %3066 = fsub fast float %3064, %3065
  %3067 = fmul fast float %3066, %3057
  %3068 = fadd fast float %3067, %3065
  %3069 = fsub fast float %2988, %3063
  %3070 = fsub fast float %3068, %3063
  %3071 = fdiv fast float %3069, %3070
  %3072 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  %3073 = extractvalue %dx.types.CBufRet.f32 %2982, 1
  %3074 = extractvalue %dx.types.CBufRet.f32 %3032, 0
  %3075 = extractvalue %dx.types.CBufRet.f32 %3032, 1
  %3076 = fmul fast float %3074, %3001
  %3077 = fmul fast float %3075, %3002
  %3078 = fmul fast float %3076, 1.250000e-01
  %3079 = fmul fast float %3077, 1.250000e-01
  %3080 = call float @dx.op.unary.f32(i32 27, float %3078)  ; Round_ni(value)
  %3081 = call float @dx.op.unary.f32(i32 27, float %3079)  ; Round_ni(value)
  %3082 = fmul fast float %3080, 8.000000e+00
  %3083 = fmul fast float %3081, 8.000000e+00
  %3084 = fsub fast float %3076, %3082
  %3085 = fsub fast float %3077, %3083
  %3086 = fadd fast float %3084, 5.000000e-01
  %3087 = fadd fast float %3085, 5.000000e-01
  %3088 = and i32 %3043, 255
  %3089 = lshr i32 %3042, 24
  %3090 = mul nuw nsw i32 %3088, 9
  %3091 = uitofp i32 %3090 to float
  %3092 = mul nuw nsw i32 %3089, 9
  %3093 = uitofp i32 %3092 to float
  %3094 = fadd fast float %3086, %3091
  %3095 = fadd fast float %3087, %3093
  %3096 = fdiv fast float %3094, %2983
  %3097 = fdiv fast float %3095, %3073
  %3098 = fmul fast float %3072, 4.375000e-01
  %3099 = fadd fast float %3098, 3.125000e-02
  %3100 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3096, float %3097, float %3099, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3101 = extractvalue %dx.types.ResRet.f32 %3100, 0
  %3102 = extractvalue %dx.types.ResRet.f32 %3100, 1
  %3103 = extractvalue %dx.types.ResRet.f32 %3100, 2
  %3104 = fadd fast float %3098, 5.312500e-01
  %3105 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3096, float %3097, float %3104, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3106 = extractvalue %dx.types.ResRet.f32 %3105, 0
  %3107 = extractvalue %dx.types.ResRet.f32 %3105, 1
  %3108 = extractvalue %dx.types.ResRet.f32 %3105, 2
  %3109 = fmul fast float %3106, 2.000000e+00
  %3110 = fmul fast float %3107, 2.000000e+00
  %3111 = fmul fast float %3108, 2.000000e+00
  %3112 = fadd fast float %3109, -1.000000e+00
  %3113 = fadd fast float %3110, -1.000000e+00
  %3114 = fadd fast float %3111, -1.000000e+00
  %3115 = fmul fast float %3112, %3112
  %3116 = fmul fast float %3113, %3113
  %3117 = fadd fast float %3115, %3116
  %3118 = fmul fast float %3114, %3114
  %3119 = fadd fast float %3117, %3118
  %3120 = call float @dx.op.unary.f32(i32 24, float %3119)  ; Sqrt(value)
  %3121 = fcmp fast ogt float %3120, 0.000000e+00
  br i1 %3121, label %3122, label %3126

; <label>:3122                                    ; preds = %3045
  %3123 = fdiv fast float %3112, %3120
  %3124 = fdiv fast float %3113, %3120
  %3125 = fdiv fast float %3114, %3120
  br label %3126

; <label>:3126                                    ; preds = %3122, %3045
  %3127 = phi float [ %3123, %3122 ], [ 0.000000e+00, %3045 ]
  %3128 = phi float [ %3124, %3122 ], [ 0.000000e+00, %3045 ]
  %3129 = phi float [ %3125, %3122 ], [ 0.000000e+00, %3045 ]
  %3130 = call float @dx.op.dot3.f32(i32 55, float %3127, float %3128, float %3129, float %2805, float %2806, float %2807)  ; Dot3(ax,ay,az,bx,by,bz)
  %3131 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3130)  ; FMax(a,b)
  %3132 = fmul fast float %3131, 0x400C5BF8A0000000
  %3133 = fmul fast float %3101, %3021
  %3134 = fmul fast float %3133, %3132
  %3135 = fmul fast float %3102, %3021
  %3136 = fmul fast float %3135, %3132
  %3137 = fmul fast float %3103, %3021
  %3138 = fmul fast float %3137, %3132
  %3139 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3140 = extractvalue %dx.types.CBufRet.f32 %3139, 3
  %3141 = fmul fast float %3134, %3140
  %3142 = fmul fast float %3136, %3140
  %3143 = fmul fast float %3138, %3140
  %3144 = fcmp fast ogt float %2988, %3068
  br i1 %3144, label %3145, label %3154

; <label>:3145                                    ; preds = %3126
  %3146 = fmul fast float %3070, 0x3FC24924A0000000
  %3147 = fsub fast float %2988, %3068
  %3148 = fdiv fast float %3147, %3146
  %3149 = call float @dx.op.unary.f32(i32 7, float %3148)  ; Saturate(value)
  %3150 = fsub fast float 1.000000e+00, %3149
  %3151 = fmul fast float %3150, %3141
  %3152 = fmul fast float %3150, %3142
  %3153 = fmul fast float %3150, %3143
  br label %3154

; <label>:3154                                    ; preds = %3145, %3126, %3031, %2986
  %3155 = phi float [ %3153, %3145 ], [ %3143, %3126 ], [ 0.000000e+00, %3031 ], [ 0.000000e+00, %2986 ]
  %3156 = phi float [ %3152, %3145 ], [ %3142, %3126 ], [ 0.000000e+00, %3031 ], [ 0.000000e+00, %2986 ]
  %3157 = phi float [ %3151, %3145 ], [ %3141, %3126 ], [ 0.000000e+00, %3031 ], [ 0.000000e+00, %2986 ]
  %3158 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3157)  ; FMax(a,b)
  %3159 = fmul fast float %3158, 0x3FD20DD760000000
  %3160 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2824, float %2825, float %2826)  ; Dot3(ax,ay,az,bx,by,bz)
  %3161 = fmul fast float %3160, 0x3FDF454380000000
  %3162 = fmul fast float %3160, %3160
  %3163 = fmul fast float %3162, 0x3FEE471020000000
  %3164 = fadd fast float %3163, 0xBFD42F6020000000
  %3165 = call float @dx.op.dot3.f32(i32 55, float %3158, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3161, float %3164)  ; Dot3(ax,ay,az,bx,by,bz)
  %3166 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3156)  ; FMax(a,b)
  %3167 = fmul fast float %3166, 0x3FD20DD760000000
  %3168 = call float @dx.op.dot3.f32(i32 55, float %3166, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3161, float %3164)  ; Dot3(ax,ay,az,bx,by,bz)
  %3169 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3155)  ; FMax(a,b)
  %3170 = fmul fast float %3169, 0x3FD20DD760000000
  %3171 = call float @dx.op.dot3.f32(i32 55, float %3169, float 0.000000e+00, float 0.000000e+00, float 0x3FD20DD760000000, float %3161, float %3164)  ; Dot3(ax,ay,az,bx,by,bz)
  %3172 = call float @dx.op.binary.f32(i32 35, float %3159, float 0.000000e+00)  ; FMax(a,b)
  %3173 = call float @dx.op.binary.f32(i32 35, float %3167, float 0.000000e+00)  ; FMax(a,b)
  %3174 = call float @dx.op.binary.f32(i32 35, float %3170, float 0.000000e+00)  ; FMax(a,b)
  %3175 = call float @dx.op.binary.f32(i32 35, float %3165, float 0.000000e+00)  ; FMax(a,b)
  %3176 = call float @dx.op.binary.f32(i32 35, float %3168, float 0.000000e+00)  ; FMax(a,b)
  %3177 = call float @dx.op.binary.f32(i32 35, float %3171, float 0.000000e+00)  ; FMax(a,b)
  %3178 = fmul fast float %3172, %2875
  %3179 = fmul fast float %3173, %2875
  %3180 = fmul fast float %3174, %2875
  %3181 = fadd fast float %3178, %2979
  %3182 = fadd fast float %3179, %2980
  %3183 = fadd fast float %3180, %2981
  %3184 = fmul fast float %3175, %2875
  %3185 = fmul fast float %3176, %2875
  %3186 = fmul fast float %3177, %2875
  %3187 = fadd fast float %3184, %2976
  %3188 = fadd fast float %3185, %2977
  %3189 = fadd fast float %3186, %2978
  br label %3190

; <label>:3190                                    ; preds = %3154, %2975
  %3191 = phi float [ %3187, %3154 ], [ %2976, %2975 ]
  %3192 = phi float [ %3188, %3154 ], [ %2977, %2975 ]
  %3193 = phi float [ %3189, %3154 ], [ %2978, %2975 ]
  %3194 = phi float [ %3181, %3154 ], [ %2979, %2975 ]
  %3195 = phi float [ %3182, %3154 ], [ %2980, %2975 ]
  %3196 = phi float [ %3183, %3154 ], [ %2981, %2975 ]
  %3197 = fcmp fast olt float %2875, 1.000000e+00
  br i1 %3197, label %3198, label %4016, !dx.controlflow.hints !85

; <label>:3198                                    ; preds = %3190
  %3199 = extractvalue %dx.types.CBufRet.f32 %2831, 2
  %3200 = fadd fast float %3199, %120
  %3201 = fmul fast float %2805, 3.200000e+01
  %3202 = fmul fast float %2806, 3.200000e+01
  %3203 = fadd fast float %2834, %3201
  %3204 = fadd fast float %2835, %3202
  %3205 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 254)  ; CBufferLoadLegacy(handle,regIndex)
  %3206 = extractvalue %dx.types.CBufRet.f32 %3205, 0
  %3207 = extractvalue %dx.types.CBufRet.f32 %3205, 1
  %3208 = fsub fast float %3203, %3206
  %3209 = fsub fast float %3204, %3207
  %3210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 256)  ; CBufferLoadLegacy(handle,regIndex)
  %3211 = extractvalue %dx.types.CBufRet.f32 %3210, 0
  %3212 = extractvalue %dx.types.CBufRet.f32 %3210, 1
  %3213 = fmul fast float %3208, %3211
  %3214 = fmul fast float %3209, %3212
  %3215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 263)  ; CBufferLoadLegacy(handle,regIndex)
  %3216 = extractvalue %dx.types.CBufRet.f32 %3215, 0
  %3217 = fmul fast float %3213, %3216
  %3218 = extractvalue %dx.types.CBufRet.f32 %3215, 1
  %3219 = fadd fast float %3217, %3218
  %3220 = extractvalue %dx.types.CBufRet.f32 %3215, 2
  %3221 = fmul fast float %3220, %3214
  %3222 = extractvalue %dx.types.CBufRet.f32 %3215, 3
  %3223 = fadd fast float %3221, %3222
  %3224 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %31, %dx.types.Handle %39, float %3219, float %3223, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3225 = extractvalue %dx.types.ResRet.f32 %3224, 0
  %3226 = extractvalue %dx.types.ResRet.f32 %3224, 1
  %3227 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 259)  ; CBufferLoadLegacy(handle,regIndex)
  %3228 = extractvalue %dx.types.CBufRet.f32 %3227, 1
  %3229 = extractvalue %dx.types.CBufRet.f32 %3227, 0
  %3230 = fsub fast float %3228, %3229
  %3231 = fmul fast float %3230, %3225
  %3232 = fadd fast float %3231, %3229
  %3233 = extractvalue %dx.types.CBufRet.f32 %3227, 3
  %3234 = extractvalue %dx.types.CBufRet.f32 %3227, 2
  %3235 = fsub fast float %3233, %3234
  %3236 = fmul fast float %3235, %3226
  %3237 = fadd fast float %3236, %3234
  %3238 = fsub fast float %3200, %3232
  %3239 = fsub fast float %3237, %3232
  %3240 = fdiv fast float %3238, %3239
  %3241 = call float @dx.op.unary.f32(i32 7, float %3240)  ; Saturate(value)
  %3242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 264)  ; CBufferLoadLegacy(handle,regIndex)
  %3243 = extractvalue %dx.types.CBufRet.f32 %3242, 0
  %3244 = fmul fast float %3243, %3241
  %3245 = extractvalue %dx.types.CBufRet.f32 %3242, 1
  %3246 = fadd fast float %3244, %3245
  %3247 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %33, %dx.types.Handle %39, float %3219, float %3223, float %3246, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3248 = extractvalue %dx.types.ResRet.f32 %3247, 0
  %3249 = extractvalue %dx.types.ResRet.f32 %3247, 1
  %3250 = extractvalue %dx.types.ResRet.f32 %3247, 2
  %3251 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 258)  ; CBufferLoadLegacy(handle,regIndex)
  %3252 = extractvalue %dx.types.CBufRet.f32 %3251, 0
  %3253 = extractvalue %dx.types.CBufRet.f32 %3251, 1
  %3254 = extractvalue %dx.types.CBufRet.f32 %3251, 2
  %3255 = fmul fast float %3252, %3248
  %3256 = fmul fast float %3253, %3249
  %3257 = fmul fast float %3254, %3250
  %3258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 257)  ; CBufferLoadLegacy(handle,regIndex)
  %3259 = extractvalue %dx.types.CBufRet.f32 %3258, 0
  %3260 = extractvalue %dx.types.CBufRet.f32 %3258, 1
  %3261 = extractvalue %dx.types.CBufRet.f32 %3258, 2
  %3262 = fadd fast float %3255, %3259
  %3263 = fadd fast float %3256, %3260
  %3264 = fadd fast float %3257, %3261
  %3265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 262)  ; CBufferLoadLegacy(handle,regIndex)
  %3266 = extractvalue %dx.types.CBufRet.f32 %3265, 0
  %3267 = fmul fast float %3266, %3213
  %3268 = extractvalue %dx.types.CBufRet.f32 %3265, 1
  %3269 = fadd fast float %3267, %3268
  %3270 = extractvalue %dx.types.CBufRet.f32 %3265, 2
  %3271 = fmul fast float %3270, %3214
  %3272 = extractvalue %dx.types.CBufRet.f32 %3265, 3
  %3273 = fadd fast float %3271, %3272
  %3274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 265)  ; CBufferLoadLegacy(handle,regIndex)
  %3275 = extractvalue %dx.types.CBufRet.f32 %3274, 0
  %3276 = extractvalue %dx.types.CBufRet.f32 %3274, 1
  %3277 = extractvalue %dx.types.CBufRet.f32 %3274, 2
  %3278 = extractvalue %dx.types.CBufRet.f32 %3274, 3
  %3279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 266)  ; CBufferLoadLegacy(handle,regIndex)
  %3280 = extractvalue %dx.types.CBufRet.f32 %3279, 0
  %3281 = extractvalue %dx.types.CBufRet.f32 %3279, 1
  %3282 = extractvalue %dx.types.CBufRet.f32 %3279, 2
  %3283 = extractvalue %dx.types.CBufRet.f32 %3279, 3
  %3284 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3269, float %3273, float 0.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3285 = extractvalue %dx.types.ResRet.f32 %3284, 0
  %3286 = extractvalue %dx.types.ResRet.f32 %3284, 1
  %3287 = extractvalue %dx.types.ResRet.f32 %3284, 2
  %3288 = extractvalue %dx.types.ResRet.f32 %3284, 3
  %3289 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3269, float %3273, float 1.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3290 = extractvalue %dx.types.ResRet.f32 %3289, 0
  %3291 = extractvalue %dx.types.ResRet.f32 %3289, 1
  %3292 = extractvalue %dx.types.ResRet.f32 %3289, 2
  %3293 = extractvalue %dx.types.ResRet.f32 %3289, 3
  %3294 = fmul fast float %3285, %3262
  %3295 = fmul fast float %3290, %3262
  %3296 = fmul fast float %3292, %3262
  %3297 = fmul fast float %3288, %3262
  %3298 = fadd fast float %3294, %3275
  %3299 = fadd fast float %3295, %3276
  %3300 = fadd fast float %3296, %3277
  %3301 = fadd fast float %3297, %3278
  %3302 = fmul fast float %3286, %3262
  %3303 = fmul fast float %3291, %3262
  %3304 = fadd fast float %3302, %3280
  %3305 = fadd fast float %3303, %3281
  %3306 = fmul fast float %3287, %3262
  %3307 = fmul fast float %3293, %3262
  %3308 = fadd fast float %3306, %3282
  %3309 = fadd fast float %3307, %3283
  %3310 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3269, float %3273, float 2.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3311 = extractvalue %dx.types.ResRet.f32 %3310, 0
  %3312 = extractvalue %dx.types.ResRet.f32 %3310, 1
  %3313 = extractvalue %dx.types.ResRet.f32 %3310, 2
  %3314 = extractvalue %dx.types.ResRet.f32 %3310, 3
  %3315 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3269, float %3273, float 3.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3316 = extractvalue %dx.types.ResRet.f32 %3315, 0
  %3317 = extractvalue %dx.types.ResRet.f32 %3315, 1
  %3318 = extractvalue %dx.types.ResRet.f32 %3315, 2
  %3319 = extractvalue %dx.types.ResRet.f32 %3315, 3
  %3320 = fmul fast float %3311, %3263
  %3321 = fmul fast float %3316, %3263
  %3322 = fmul fast float %3318, %3263
  %3323 = fmul fast float %3314, %3263
  %3324 = fadd fast float %3298, %3320
  %3325 = fadd fast float %3299, %3321
  %3326 = fadd fast float %3300, %3322
  %3327 = fadd fast float %3301, %3323
  %3328 = fmul fast float %3312, %3263
  %3329 = fmul fast float %3317, %3263
  %3330 = fadd fast float %3304, %3328
  %3331 = fadd fast float %3305, %3329
  %3332 = fmul fast float %3313, %3263
  %3333 = fmul fast float %3319, %3263
  %3334 = fadd fast float %3308, %3332
  %3335 = fadd fast float %3309, %3333
  %3336 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3269, float %3273, float 4.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3337 = extractvalue %dx.types.ResRet.f32 %3336, 0
  %3338 = extractvalue %dx.types.ResRet.f32 %3336, 1
  %3339 = extractvalue %dx.types.ResRet.f32 %3336, 2
  %3340 = extractvalue %dx.types.ResRet.f32 %3336, 3
  %3341 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %34, %dx.types.Handle %39, float %3269, float %3273, float 5.000000e+00, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3342 = extractvalue %dx.types.ResRet.f32 %3341, 0
  %3343 = extractvalue %dx.types.ResRet.f32 %3341, 1
  %3344 = extractvalue %dx.types.ResRet.f32 %3341, 2
  %3345 = extractvalue %dx.types.ResRet.f32 %3341, 3
  %3346 = fmul fast float %3337, %3264
  %3347 = fmul fast float %3342, %3264
  %3348 = fmul fast float %3344, %3264
  %3349 = fmul fast float %3340, %3264
  %3350 = fadd fast float %3324, %3346
  %3351 = fadd fast float %3325, %3347
  %3352 = fadd fast float %3326, %3348
  %3353 = fadd fast float %3327, %3349
  %3354 = fmul fast float %3338, %3264
  %3355 = fmul fast float %3343, %3264
  %3356 = fadd fast float %3330, %3354
  %3357 = fadd fast float %3331, %3355
  %3358 = fmul fast float %3339, %3264
  %3359 = fmul fast float %3345, %3264
  %3360 = fadd fast float %3334, %3358
  %3361 = fadd fast float %3335, %3359
  %3362 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 255)  ; CBufferLoadLegacy(handle,regIndex)
  %3363 = extractvalue %dx.types.CBufRet.f32 %3362, 0
  %3364 = fsub fast float %2834, %3363
  %3365 = fsub fast float %3206, %2834
  %3366 = call float @dx.op.binary.f32(i32 35, float %3365, float %3364)  ; FMax(a,b)
  %3367 = extractvalue %dx.types.CBufRet.f32 %3362, 1
  %3368 = fsub fast float %2835, %3367
  %3369 = fsub fast float %3207, %2835
  %3370 = call float @dx.op.binary.f32(i32 35, float %3369, float %3368)  ; FMax(a,b)
  %3371 = call float @dx.op.binary.f32(i32 35, float %3366, float %3370)  ; FMax(a,b)
  %3372 = extractvalue %dx.types.CBufRet.f32 %3210, 3
  %3373 = fmul fast float %3372, %3371
  %3374 = call float @dx.op.unary.f32(i32 7, float %3373)  ; Saturate(value)
  %3375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 272)  ; CBufferLoadLegacy(handle,regIndex)
  %3376 = extractvalue %dx.types.CBufRet.f32 %3375, 0
  %3377 = extractvalue %dx.types.CBufRet.f32 %3375, 1
  %3378 = extractvalue %dx.types.CBufRet.f32 %3375, 2
  %3379 = extractvalue %dx.types.CBufRet.f32 %3375, 3
  %3380 = fsub fast float %3376, %3350
  %3381 = fsub fast float %3377, %3351
  %3382 = fsub fast float %3378, %3352
  %3383 = fsub fast float %3379, %3353
  %3384 = fmul fast float %3380, %3374
  %3385 = fmul fast float %3381, %3374
  %3386 = fmul fast float %3382, %3374
  %3387 = fmul fast float %3383, %3374
  %3388 = fadd fast float %3384, %3350
  %3389 = fadd fast float %3385, %3351
  %3390 = fadd fast float %3386, %3352
  %3391 = fadd fast float %3387, %3353
  %3392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 273)  ; CBufferLoadLegacy(handle,regIndex)
  %3393 = extractvalue %dx.types.CBufRet.f32 %3392, 0
  %3394 = extractvalue %dx.types.CBufRet.f32 %3392, 1
  %3395 = fsub fast float %3393, %3356
  %3396 = fsub fast float %3394, %3357
  %3397 = fmul fast float %3395, %3374
  %3398 = fmul fast float %3396, %3374
  %3399 = fadd fast float %3397, %3356
  %3400 = fadd fast float %3398, %3357
  %3401 = extractvalue %dx.types.CBufRet.f32 %3392, 2
  %3402 = extractvalue %dx.types.CBufRet.f32 %3392, 3
  %3403 = fsub fast float %3401, %3360
  %3404 = fsub fast float %3402, %3361
  %3405 = fmul fast float %3403, %3374
  %3406 = fmul fast float %3404, %3374
  %3407 = fadd fast float %3405, %3360
  %3408 = fadd fast float %3406, %3361
  %3409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 267)  ; CBufferLoadLegacy(handle,regIndex)
  %3410 = extractvalue %dx.types.CBufRet.f32 %3409, 0
  %3411 = fmul fast float %3410, %3388
  %3412 = fmul fast float %3410, %3389
  %3413 = fmul fast float %3410, %3390
  %3414 = fmul fast float %3410, %3391
  %3415 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 268)  ; CBufferLoadLegacy(handle,regIndex)
  %3416 = extractvalue %dx.types.CBufRet.f32 %3415, 0
  %3417 = fmul fast float %3416, %3399
  %3418 = fmul fast float %3416, %3400
  %3419 = fadd fast float %3417, %3411
  %3420 = fadd fast float %3418, %3413
  %3421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 269)  ; CBufferLoadLegacy(handle,regIndex)
  %3422 = extractvalue %dx.types.CBufRet.f32 %3421, 0
  %3423 = fmul fast float %3422, %3407
  %3424 = fmul fast float %3422, %3408
  %3425 = fadd fast float %3419, %3423
  %3426 = fadd fast float %3420, %3424
  %3427 = extractvalue %dx.types.CBufRet.f32 %3409, 1
  %3428 = fmul fast float %3427, %3388
  %3429 = fmul fast float %3427, %3389
  %3430 = fmul fast float %3427, %3390
  %3431 = fmul fast float %3427, %3391
  %3432 = extractvalue %dx.types.CBufRet.f32 %3415, 1
  %3433 = fmul fast float %3432, %3399
  %3434 = fmul fast float %3432, %3400
  %3435 = fadd fast float %3433, %3428
  %3436 = fadd fast float %3434, %3430
  %3437 = extractvalue %dx.types.CBufRet.f32 %3421, 1
  %3438 = fmul fast float %3437, %3407
  %3439 = fmul fast float %3437, %3408
  %3440 = fadd fast float %3435, %3438
  %3441 = fadd fast float %3436, %3439
  %3442 = extractvalue %dx.types.CBufRet.f32 %3409, 2
  %3443 = fmul fast float %3442, %3388
  %3444 = fmul fast float %3442, %3389
  %3445 = fmul fast float %3442, %3390
  %3446 = fmul fast float %3442, %3391
  %3447 = extractvalue %dx.types.CBufRet.f32 %3415, 2
  %3448 = fmul fast float %3447, %3399
  %3449 = fmul fast float %3447, %3400
  %3450 = fadd fast float %3448, %3443
  %3451 = fadd fast float %3449, %3445
  %3452 = extractvalue %dx.types.CBufRet.f32 %3421, 2
  %3453 = fmul fast float %3452, %3407
  %3454 = fmul fast float %3452, %3408
  %3455 = fadd fast float %3450, %3453
  %3456 = fadd fast float %3451, %3454
  %3457 = fmul fast float %3444, %3444
  %3458 = fmul fast float %3456, %3456
  %3459 = fmul fast float %3446, %3446
  %3460 = fadd fast float %3459, %3457
  %3461 = fadd fast float %3460, %3458
  %3462 = call float @dx.op.unary.f32(i32 24, float %3461)  ; Sqrt(value)
  %3463 = fcmp fast ugt float %3462, 0.000000e+00
  br i1 %3463, label %3464, label %3479

; <label>:3464                                    ; preds = %3198
  %3465 = fsub fast float -0.000000e+00, %3446
  %3466 = fdiv fast float %3465, %3462
  %3467 = fsub fast float -0.000000e+00, %3444
  %3468 = fdiv fast float %3467, %3462
  %3469 = fdiv fast float %3456, %3462
  %3470 = fmul fast float %3455, 0x3FE279A760000000
  %3471 = fmul fast float %3468, %3444
  %3472 = fmul fast float %3469, %3456
  %3473 = fmul fast float %3466, %3446
  %3474 = fadd fast float %3471, %3473
  %3475 = fsub fast float %3474, %3472
  %3476 = call float @dx.op.unary.f32(i32 6, float %3475)  ; FAbs(value)
  %3477 = fadd fast float %3476, 0x3DDB7CDFE0000000
  %3478 = fdiv fast float %3470, %3477
  br label %3479

; <label>:3479                                    ; preds = %3464, %3198
  %3480 = phi float [ %3478, %3464 ], [ 1.000000e+00, %3198 ]
  %3481 = fmul fast float %3429, %3429
  %3482 = fmul fast float %3441, %3441
  %3483 = fmul fast float %3431, %3431
  %3484 = fadd fast float %3483, %3481
  %3485 = fadd fast float %3484, %3482
  %3486 = call float @dx.op.unary.f32(i32 24, float %3485)  ; Sqrt(value)
  %3487 = fcmp fast ugt float %3486, 0.000000e+00
  br i1 %3487, label %3488, label %3503

; <label>:3488                                    ; preds = %3479
  %3489 = fsub fast float -0.000000e+00, %3431
  %3490 = fdiv fast float %3489, %3486
  %3491 = fsub fast float -0.000000e+00, %3429
  %3492 = fdiv fast float %3491, %3486
  %3493 = fdiv fast float %3441, %3486
  %3494 = fmul fast float %3440, 0x3FE279A760000000
  %3495 = fmul fast float %3492, %3429
  %3496 = fmul fast float %3493, %3441
  %3497 = fmul fast float %3490, %3431
  %3498 = fadd fast float %3495, %3497
  %3499 = fsub fast float %3498, %3496
  %3500 = call float @dx.op.unary.f32(i32 6, float %3499)  ; FAbs(value)
  %3501 = fadd fast float %3500, 0x3DDB7CDFE0000000
  %3502 = fdiv fast float %3494, %3501
  br label %3503

; <label>:3503                                    ; preds = %3488, %3479
  %3504 = phi float [ %3502, %3488 ], [ 1.000000e+00, %3479 ]
  %3505 = call float @dx.op.binary.f32(i32 36, float %3504, float %3480)  ; FMin(a,b)
  %3506 = fmul fast float %3412, %3412
  %3507 = fmul fast float %3426, %3426
  %3508 = fmul fast float %3414, %3414
  %3509 = fadd fast float %3508, %3506
  %3510 = fadd fast float %3509, %3507
  %3511 = call float @dx.op.unary.f32(i32 24, float %3510)  ; Sqrt(value)
  %3512 = fcmp fast ugt float %3511, 0.000000e+00
  br i1 %3512, label %3513, label %3528

; <label>:3513                                    ; preds = %3503
  %3514 = fsub fast float -0.000000e+00, %3414
  %3515 = fdiv fast float %3514, %3511
  %3516 = fsub fast float -0.000000e+00, %3412
  %3517 = fdiv fast float %3516, %3511
  %3518 = fdiv fast float %3426, %3511
  %3519 = fmul fast float %3425, 0x3FE279A760000000
  %3520 = fmul fast float %3517, %3412
  %3521 = fmul fast float %3518, %3426
  %3522 = fmul fast float %3515, %3414
  %3523 = fadd fast float %3520, %3522
  %3524 = fsub fast float %3523, %3521
  %3525 = call float @dx.op.unary.f32(i32 6, float %3524)  ; FAbs(value)
  %3526 = fadd fast float %3525, 0x3DDB7CDFE0000000
  %3527 = fdiv fast float %3519, %3526
  br label %3528

; <label>:3528                                    ; preds = %3513, %3503
  %3529 = phi float [ %3527, %3513 ], [ 1.000000e+00, %3503 ]
  %3530 = call float @dx.op.binary.f32(i32 36, float %3529, float %3505)  ; FMin(a,b)
  %3531 = call float @dx.op.unary.f32(i32 7, float %3530)  ; Saturate(value)
  %3532 = fcmp fast olt float %3531, 1.000000e+00
  br i1 %3532, label %3533, label %3543

; <label>:3533                                    ; preds = %3528
  %3534 = fmul fast float %3531, %3412
  %3535 = fmul fast float %3531, %3426
  %3536 = fmul fast float %3531, %3414
  %3537 = fmul fast float %3531, %3429
  %3538 = fmul fast float %3531, %3441
  %3539 = fmul fast float %3531, %3431
  %3540 = fmul fast float %3531, %3444
  %3541 = fmul fast float %3531, %3456
  %3542 = fmul fast float %3531, %3446
  br label %3543

; <label>:3543                                    ; preds = %3533, %3528
  %3544 = phi float [ %3540, %3533 ], [ %3444, %3528 ]
  %3545 = phi float [ %3541, %3533 ], [ %3456, %3528 ]
  %3546 = phi float [ %3542, %3533 ], [ %3446, %3528 ]
  %3547 = phi float [ %3537, %3533 ], [ %3429, %3528 ]
  %3548 = phi float [ %3538, %3533 ], [ %3441, %3528 ]
  %3549 = phi float [ %3539, %3533 ], [ %3431, %3528 ]
  %3550 = phi float [ %3534, %3533 ], [ %3412, %3528 ]
  %3551 = phi float [ %3535, %3533 ], [ %3426, %3528 ]
  %3552 = phi float [ %3536, %3533 ], [ %3414, %3528 ]
  %3553 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3425)  ; FMax(a,b)
  %3554 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3440)  ; FMax(a,b)
  %3555 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3455)  ; FMax(a,b)
  %3556 = fcmp fast oge float %3213, 0.000000e+00
  %3557 = and i1 %3556, %2984
  %3558 = fcmp fast ole float %3213, 1.000000e+00
  %3559 = and i1 %3558, %3557
  %3560 = fcmp fast oge float %3214, 0.000000e+00
  %3561 = and i1 %3560, %3559
  %3562 = fcmp fast ole float %3214, 1.000000e+00
  %3563 = and i1 %3562, %3561
  br i1 %3563, label %3564, label %3709, !dx.controlflow.hints !86

; <label>:3564                                    ; preds = %3543
  %3565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 270)  ; CBufferLoadLegacy(handle,regIndex)
  %3566 = extractvalue %dx.types.CBufRet.f32 %3565, 2
  %3567 = extractvalue %dx.types.CBufRet.f32 %3565, 3
  %3568 = fmul fast float %3566, %3213
  %3569 = fmul fast float %3567, %3214
  %3570 = call float @dx.op.unary.f32(i32 27, float %3568)  ; Round_ni(value)
  %3571 = call float @dx.op.unary.f32(i32 27, float %3569)  ; Round_ni(value)
  %3572 = fptosi float %3570 to i32
  %3573 = fptosi float %3571 to i32
  %3574 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %3572, i32 %3573, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %3575 = extractvalue %dx.types.ResRet.i32 %3574, 0
  %3576 = and i32 %3575, 65535
  %3577 = lshr i32 %3575, 16
  %3578 = icmp eq i32 %3576, 65535
  br i1 %3578, label %3615, label %3579

; <label>:3579                                    ; preds = %3564
  %3580 = extractvalue %dx.types.CBufRet.f32 %2982, 1
  %3581 = extractvalue %dx.types.CBufRet.f32 %3565, 0
  %3582 = extractvalue %dx.types.CBufRet.f32 %3565, 1
  %3583 = fmul fast float %3581, %3213
  %3584 = fmul fast float %3582, %3214
  %3585 = fmul fast float %3583, 1.250000e-01
  %3586 = fmul fast float %3584, 1.250000e-01
  %3587 = call float @dx.op.unary.f32(i32 27, float %3585)  ; Round_ni(value)
  %3588 = call float @dx.op.unary.f32(i32 27, float %3586)  ; Round_ni(value)
  %3589 = fmul fast float %3587, 8.000000e+00
  %3590 = fmul fast float %3588, 8.000000e+00
  %3591 = and i32 %3575, 255
  %3592 = lshr i32 %3575, 8
  %3593 = and i32 %3592, 255
  %3594 = mul nuw nsw i32 %3591, 9
  %3595 = uitofp i32 %3594 to float
  %3596 = mul nuw nsw i32 %3593, 9
  %3597 = uitofp i32 %3596 to float
  %3598 = fadd fast float %3595, 5.000000e-01
  %3599 = fadd fast float %3598, %3583
  %3600 = fsub fast float %3599, %3589
  %3601 = fadd fast float %3597, 5.000000e-01
  %3602 = fadd fast float %3601, %3584
  %3603 = fsub fast float %3602, %3590
  %3604 = fdiv fast float %3600, %2983
  %3605 = fdiv fast float %3603, %3580
  %3606 = fmul fast float %3241, 4.375000e-01
  %3607 = fadd fast float %3606, 3.125000e-02
  %3608 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3604, float %3605, float %3607, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3609 = extractvalue %dx.types.ResRet.f32 %3608, 0
  %3610 = extractvalue %dx.types.ResRet.f32 %3608, 1
  %3611 = extractvalue %dx.types.ResRet.f32 %3608, 2
  %3612 = fadd fast float %3609, %3553
  %3613 = fadd fast float %3610, %3554
  %3614 = fadd fast float %3611, %3555
  br label %3615

; <label>:3615                                    ; preds = %3579, %3564
  %3616 = phi float [ %3614, %3579 ], [ %3555, %3564 ]
  %3617 = phi float [ %3613, %3579 ], [ %3554, %3564 ]
  %3618 = phi float [ %3612, %3579 ], [ %3553, %3564 ]
  %3619 = icmp eq i32 %3577, 65535
  br i1 %3619, label %3709, label %3620

; <label>:3620                                    ; preds = %3615
  %3621 = extractvalue %dx.types.CBufRet.f32 %2982, 1
  %3622 = extractvalue %dx.types.CBufRet.f32 %3565, 0
  %3623 = extractvalue %dx.types.CBufRet.f32 %3565, 1
  %3624 = fmul fast float %3622, %3213
  %3625 = fmul fast float %3623, %3214
  %3626 = fmul fast float %3624, 1.250000e-01
  %3627 = fmul fast float %3625, 1.250000e-01
  %3628 = call float @dx.op.unary.f32(i32 27, float %3626)  ; Round_ni(value)
  %3629 = call float @dx.op.unary.f32(i32 27, float %3627)  ; Round_ni(value)
  %3630 = fmul fast float %3628, 8.000000e+00
  %3631 = fmul fast float %3629, 8.000000e+00
  %3632 = fsub fast float %3624, %3630
  %3633 = fsub fast float %3625, %3631
  %3634 = fadd fast float %3632, 5.000000e-01
  %3635 = fadd fast float %3633, 5.000000e-01
  %3636 = and i32 %3577, 255
  %3637 = lshr i32 %3575, 24
  %3638 = mul nuw nsw i32 %3636, 9
  %3639 = uitofp i32 %3638 to float
  %3640 = mul nuw nsw i32 %3637, 9
  %3641 = uitofp i32 %3640 to float
  %3642 = fadd fast float %3634, %3639
  %3643 = fadd fast float %3635, %3641
  %3644 = fdiv fast float %3642, %2983
  %3645 = fdiv fast float %3643, %3621
  %3646 = fmul fast float %3241, 4.375000e-01
  %3647 = fadd fast float %3646, 3.125000e-02
  %3648 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3644, float %3645, float %3647, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = extractvalue %dx.types.ResRet.f32 %3648, 1
  %3651 = extractvalue %dx.types.ResRet.f32 %3648, 2
  %3652 = fadd fast float %3646, 5.312500e-01
  %3653 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %29, %dx.types.Handle %39, float %3644, float %3645, float %3652, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3654 = extractvalue %dx.types.ResRet.f32 %3653, 0
  %3655 = extractvalue %dx.types.ResRet.f32 %3653, 1
  %3656 = extractvalue %dx.types.ResRet.f32 %3653, 2
  %3657 = fmul fast float %3654, 2.000000e+00
  %3658 = fmul fast float %3655, 2.000000e+00
  %3659 = fmul fast float %3656, 2.000000e+00
  %3660 = fadd fast float %3657, -1.000000e+00
  %3661 = fadd fast float %3658, -1.000000e+00
  %3662 = fadd fast float %3659, -1.000000e+00
  %3663 = fmul fast float %3660, %3660
  %3664 = fmul fast float %3661, %3661
  %3665 = fadd fast float %3663, %3664
  %3666 = fmul fast float %3662, %3662
  %3667 = fadd fast float %3665, %3666
  %3668 = call float @dx.op.unary.f32(i32 24, float %3667)  ; Sqrt(value)
  %3669 = fcmp fast ogt float %3668, 0.000000e+00
  br i1 %3669, label %3670, label %3674

; <label>:3670                                    ; preds = %3620
  %3671 = fdiv fast float %3660, %3668
  %3672 = fdiv fast float %3661, %3668
  %3673 = fdiv fast float %3662, %3668
  br label %3674

; <label>:3674                                    ; preds = %3670, %3620
  %3675 = phi float [ %3671, %3670 ], [ 0.000000e+00, %3620 ]
  %3676 = phi float [ %3672, %3670 ], [ 0.000000e+00, %3620 ]
  %3677 = phi float [ %3673, %3670 ], [ 0.000000e+00, %3620 ]
  %3678 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %3679 = extractvalue %dx.types.CBufRet.f32 %3678, 0
  %3680 = extractvalue %dx.types.CBufRet.f32 %3678, 1
  %3681 = fsub fast float %2834, %3679
  %3682 = fsub fast float %2835, %3680
  %3683 = fmul fast float %3681, %3681
  %3684 = fmul fast float %3682, %3682
  %3685 = fadd fast float %3683, %3684
  %3686 = call float @dx.op.unary.f32(i32 24, float %3685)  ; Sqrt(value)
  %3687 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 274)  ; CBufferLoadLegacy(handle,regIndex)
  %3688 = extractvalue %dx.types.CBufRet.f32 %3687, 0
  %3689 = extractvalue %dx.types.CBufRet.f32 %3687, 1
  %3690 = fsub fast float %3686, %3688
  %3691 = fdiv fast float %3690, %3689
  %3692 = call float @dx.op.unary.f32(i32 7, float %3691)  ; Saturate(value)
  %3693 = fmul fast float %3692, 2.000000e+00
  %3694 = fsub fast float 3.000000e+00, %3693
  %3695 = fmul fast float %3692, %3692
  %3696 = fmul fast float %3695, %3694
  %3697 = call float @dx.op.dot3.f32(i32 55, float %3675, float %3676, float %3677, float %2805, float %2806, float %2807)  ; Dot3(ax,ay,az,bx,by,bz)
  %3698 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3697)  ; FMax(a,b)
  %3699 = fmul fast float %3698, 0x400C5BF8A0000000
  %3700 = fmul fast float %3696, %3649
  %3701 = fmul fast float %3700, %3699
  %3702 = fadd fast float %3701, %3618
  %3703 = fmul fast float %3696, %3650
  %3704 = fmul fast float %3703, %3699
  %3705 = fadd fast float %3704, %3617
  %3706 = fmul fast float %3696, %3651
  %3707 = fmul fast float %3706, %3699
  %3708 = fadd fast float %3707, %3616
  br label %3709

; <label>:3709                                    ; preds = %3674, %3615, %3543
  %3710 = phi float [ %3708, %3674 ], [ %3616, %3615 ], [ %3555, %3543 ]
  %3711 = phi float [ %3705, %3674 ], [ %3617, %3615 ], [ %3554, %3543 ]
  %3712 = phi float [ %3702, %3674 ], [ %3618, %3615 ], [ %3553, %3543 ]
  %3713 = fcmp fast ogt float %3200, %3237
  %3714 = and i1 %3556, %3713
  %3715 = and i1 %3558, %3714
  %3716 = and i1 %3560, %3715
  %3717 = and i1 %3562, %3716
  br i1 %3717, label %3718, label %3775, !dx.controlflow.hints !87

; <label>:3718                                    ; preds = %3709
  %3719 = fmul fast float %3239, 0x3FC24924A0000000
  %3720 = fsub fast float %3200, %3237
  %3721 = fdiv fast float %3720, %3719
  %3722 = call float @dx.op.unary.f32(i32 7, float %3721)  ; Saturate(value)
  %3723 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 275)  ; CBufferLoadLegacy(handle,regIndex)
  %3724 = extractvalue %dx.types.CBufRet.f32 %3723, 0
  %3725 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 276)  ; CBufferLoadLegacy(handle,regIndex)
  %3726 = extractvalue %dx.types.CBufRet.f32 %3725, 0
  %3727 = extractvalue %dx.types.CBufRet.f32 %3725, 1
  %3728 = extractvalue %dx.types.CBufRet.f32 %3725, 2
  %3729 = fsub fast float %3724, %3712
  %3730 = fsub fast float %3726, %3550
  %3731 = fsub fast float %3727, %3551
  %3732 = fsub fast float %3728, %3552
  %3733 = fmul fast float %3729, %3722
  %3734 = fmul fast float %3730, %3722
  %3735 = fmul fast float %3731, %3722
  %3736 = fmul fast float %3732, %3722
  %3737 = fadd fast float %3733, %3712
  %3738 = fadd fast float %3734, %3550
  %3739 = fadd fast float %3735, %3551
  %3740 = fadd fast float %3736, %3552
  %3741 = extractvalue %dx.types.CBufRet.f32 %3723, 1
  %3742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 278)  ; CBufferLoadLegacy(handle,regIndex)
  %3743 = extractvalue %dx.types.CBufRet.f32 %3742, 0
  %3744 = extractvalue %dx.types.CBufRet.f32 %3742, 1
  %3745 = extractvalue %dx.types.CBufRet.f32 %3742, 2
  %3746 = fsub fast float %3741, %3711
  %3747 = fsub fast float %3743, %3547
  %3748 = fsub fast float %3744, %3548
  %3749 = fsub fast float %3745, %3549
  %3750 = fmul fast float %3746, %3722
  %3751 = fmul fast float %3747, %3722
  %3752 = fmul fast float %3748, %3722
  %3753 = fmul fast float %3749, %3722
  %3754 = fadd fast float %3750, %3711
  %3755 = fadd fast float %3751, %3547
  %3756 = fadd fast float %3752, %3548
  %3757 = fadd fast float %3753, %3549
  %3758 = extractvalue %dx.types.CBufRet.f32 %3723, 2
  %3759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 280)  ; CBufferLoadLegacy(handle,regIndex)
  %3760 = extractvalue %dx.types.CBufRet.f32 %3759, 0
  %3761 = extractvalue %dx.types.CBufRet.f32 %3759, 1
  %3762 = extractvalue %dx.types.CBufRet.f32 %3759, 2
  %3763 = fsub fast float %3758, %3710
  %3764 = fsub fast float %3760, %3544
  %3765 = fsub fast float %3761, %3545
  %3766 = fsub fast float %3762, %3546
  %3767 = fmul fast float %3763, %3722
  %3768 = fmul fast float %3764, %3722
  %3769 = fmul fast float %3765, %3722
  %3770 = fmul fast float %3766, %3722
  %3771 = fadd fast float %3767, %3710
  %3772 = fadd fast float %3768, %3544
  %3773 = fadd fast float %3769, %3545
  %3774 = fadd fast float %3770, %3546
  br label %3775

; <label>:3775                                    ; preds = %3718, %3709
  %3776 = phi float [ %3771, %3718 ], [ %3710, %3709 ]
  %3777 = phi float [ %3772, %3718 ], [ %3544, %3709 ]
  %3778 = phi float [ %3773, %3718 ], [ %3545, %3709 ]
  %3779 = phi float [ %3774, %3718 ], [ %3546, %3709 ]
  %3780 = phi float [ %3754, %3718 ], [ %3711, %3709 ]
  %3781 = phi float [ %3755, %3718 ], [ %3547, %3709 ]
  %3782 = phi float [ %3756, %3718 ], [ %3548, %3709 ]
  %3783 = phi float [ %3757, %3718 ], [ %3549, %3709 ]
  %3784 = phi float [ %3737, %3718 ], [ %3712, %3709 ]
  %3785 = phi float [ %3738, %3718 ], [ %3550, %3709 ]
  %3786 = phi float [ %3739, %3718 ], [ %3551, %3709 ]
  %3787 = phi float [ %3740, %3718 ], [ %3552, %3709 ]
  %3788 = extractvalue %dx.types.CBufRet.f32 %3362, 3
  %3789 = fmul fast float %3788, %3784
  %3790 = fmul fast float %3788, %3780
  %3791 = fmul fast float %3788, %3776
  %3792 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %3793 = extractvalue %dx.types.CBufRet.f32 %3792, 3
  %3794 = fmul fast float %3789, %3793
  %3795 = fmul fast float %3790, %3793
  %3796 = fmul fast float %3791, %3793
  %3797 = fmul fast float %3785, 1.500000e+00
  %3798 = fmul fast float %3797, %3788
  %3799 = fmul fast float %3798, %3793
  %3800 = fmul fast float %3786, 1.500000e+00
  %3801 = fmul fast float %3800, %3788
  %3802 = fmul fast float %3801, %3793
  %3803 = fmul fast float %3787, 1.500000e+00
  %3804 = fmul fast float %3803, %3788
  %3805 = fmul fast float %3804, %3793
  %3806 = fmul fast float %3781, 1.500000e+00
  %3807 = fmul fast float %3806, %3788
  %3808 = fmul fast float %3807, %3793
  %3809 = fmul fast float %3782, 1.500000e+00
  %3810 = fmul fast float %3809, %3788
  %3811 = fmul fast float %3810, %3793
  %3812 = fmul fast float %3783, 1.500000e+00
  %3813 = fmul fast float %3812, %3788
  %3814 = fmul fast float %3813, %3793
  %3815 = fmul fast float %3777, 1.500000e+00
  %3816 = fmul fast float %3815, %3788
  %3817 = fmul fast float %3816, %3793
  %3818 = fmul fast float %3778, 1.500000e+00
  %3819 = fmul fast float %3818, %3788
  %3820 = fmul fast float %3819, %3793
  %3821 = fmul fast float %3779, 1.500000e+00
  %3822 = fmul fast float %3821, %3788
  %3823 = fmul fast float %3822, %3793
  %3824 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3794)  ; FMax(a,b)
  %3825 = call float @dx.op.dot3.f32(i32 55, float %3799, float %3802, float %3805, float %3799, float %3802, float %3805)  ; Dot3(ax,ay,az,bx,by,bz)
  %3826 = fcmp fast oeq float %3825, 0.000000e+00
  %3827 = fcmp fast oeq float %3824, 0.000000e+00
  %3828 = or i1 %3827, %3826
  br i1 %3828, label %3858, label %3829

; <label>:3829                                    ; preds = %3775
  %3830 = fsub fast float -0.000000e+00, %3805
  %3831 = fsub fast float -0.000000e+00, %3799
  %3832 = call float @dx.op.unary.f32(i32 24, float %3825)  ; Sqrt(value)
  %3833 = fdiv fast float %3832, %3824
  %3834 = fcmp fast ogt float %3833, 0x3FFB6F8900000000
  %3835 = select i1 %3834, float 0x3FFB6F8900000000, float %3833
  %3836 = fmul fast float %3835, 0x3FE8A23460000000
  %3837 = call float @dx.op.unary.f32(i32 7, float %3836)  ; Saturate(value)
  %3838 = call float @dx.op.binary.f32(i32 35, float %3835, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3839 = fmul fast float %3837, %3824
  %3840 = fmul fast float %3838, 0x3FF279A740000000
  %3841 = fadd fast float %3840, -1.000000e+00
  %3842 = call float @dx.op.dot3.f32(i32 55, float %3830, float %3831, float %3802, float %3830, float %3831, float %3802)  ; Dot3(ax,ay,az,bx,by,bz)
  %3843 = call float @dx.op.unary.f32(i32 25, float %3842)  ; Rsqrt(value)
  %3844 = fmul fast float %3843, %3830
  %3845 = fmul fast float %3843, %3831
  %3846 = fmul fast float %3843, %3802
  %3847 = fmul fast float %3841, %3841
  %3848 = fsub fast float 1.000000e+00, %3847
  %3849 = fmul fast float %3838, 0x40005F8BE0000000
  %3850 = fsub fast float 0x400C5BF8A0000000, %3849
  %3851 = fdiv fast float %3839, %3850
  %3852 = fmul fast float %3851, 0x3FEE31C3C0000000
  %3853 = fmul fast float %3852, %3848
  %3854 = fmul fast float %3838, 0x3FDACB7480000000
  %3855 = fadd fast float %3854, 0xBFD7347680000000
  %3856 = fmul fast float %3855, %3851
  %3857 = fmul fast float %3856, %3848
  br label %3858

; <label>:3858                                    ; preds = %3829, %3775
  %3859 = phi float [ %3844, %3829 ], [ 0.000000e+00, %3775 ]
  %3860 = phi float [ %3845, %3829 ], [ 0.000000e+00, %3775 ]
  %3861 = phi float [ %3846, %3829 ], [ 0.000000e+00, %3775 ]
  %3862 = phi float [ %3853, %3829 ], [ 0.000000e+00, %3775 ]
  %3863 = phi float [ %3857, %3829 ], [ 0.000000e+00, %3775 ]
  %3864 = call float @dx.op.dot3.f32(i32 55, float %3859, float %3860, float %3861, float %2805, float %2806, float %2807)  ; Dot3(ax,ay,az,bx,by,bz)
  %3865 = fmul fast float %3864, %3864
  %3866 = fmul fast float %3865, 0x3FEE471020000000
  %3867 = fadd fast float %3866, 0xBFD42F6020000000
  %3868 = fmul fast float %3824, 0x3FD20DD760000000
  %3869 = fmul fast float %3867, %3863
  %3870 = fmul fast float %3862, 0x3FDF454380000000
  %3871 = fmul fast float %3870, %3864
  %3872 = fadd fast float %3871, %3868
  %3873 = fadd fast float %3872, %3869
  %3874 = call float @dx.op.dot3.f32(i32 55, float %3859, float %3860, float %3861, float %2824, float %2825, float %2826)  ; Dot3(ax,ay,az,bx,by,bz)
  %3875 = fmul fast float %3874, 0x3FDF454380000000
  %3876 = fmul fast float %3874, %3874
  %3877 = fmul fast float %3876, 0x3FEE471020000000
  %3878 = fadd fast float %3877, 0xBFD42F6020000000
  %3879 = call float @dx.op.dot3.f32(i32 55, float %3824, float %3862, float %3863, float 0x3FD20DD760000000, float %3875, float %3878)  ; Dot3(ax,ay,az,bx,by,bz)
  %3880 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3795)  ; FMax(a,b)
  %3881 = call float @dx.op.dot3.f32(i32 55, float %3808, float %3811, float %3814, float %3808, float %3811, float %3814)  ; Dot3(ax,ay,az,bx,by,bz)
  %3882 = fcmp fast oeq float %3881, 0.000000e+00
  %3883 = fcmp fast oeq float %3880, 0.000000e+00
  %3884 = or i1 %3883, %3882
  br i1 %3884, label %3914, label %3885

; <label>:3885                                    ; preds = %3858
  %3886 = fsub fast float -0.000000e+00, %3814
  %3887 = fsub fast float -0.000000e+00, %3808
  %3888 = call float @dx.op.unary.f32(i32 24, float %3881)  ; Sqrt(value)
  %3889 = fdiv fast float %3888, %3880
  %3890 = fcmp fast ogt float %3889, 0x3FFB6F8900000000
  %3891 = select i1 %3890, float 0x3FFB6F8900000000, float %3889
  %3892 = fmul fast float %3891, 0x3FE8A23460000000
  %3893 = call float @dx.op.unary.f32(i32 7, float %3892)  ; Saturate(value)
  %3894 = call float @dx.op.binary.f32(i32 35, float %3891, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3895 = fmul fast float %3893, %3880
  %3896 = fmul fast float %3894, 0x3FF279A740000000
  %3897 = fadd fast float %3896, -1.000000e+00
  %3898 = call float @dx.op.dot3.f32(i32 55, float %3886, float %3887, float %3811, float %3886, float %3887, float %3811)  ; Dot3(ax,ay,az,bx,by,bz)
  %3899 = call float @dx.op.unary.f32(i32 25, float %3898)  ; Rsqrt(value)
  %3900 = fmul fast float %3899, %3886
  %3901 = fmul fast float %3899, %3887
  %3902 = fmul fast float %3899, %3811
  %3903 = fmul fast float %3897, %3897
  %3904 = fsub fast float 1.000000e+00, %3903
  %3905 = fmul fast float %3894, 0x40005F8BE0000000
  %3906 = fsub fast float 0x400C5BF8A0000000, %3905
  %3907 = fdiv fast float %3895, %3906
  %3908 = fmul fast float %3907, 0x3FEE31C3C0000000
  %3909 = fmul fast float %3908, %3904
  %3910 = fmul fast float %3894, 0x3FDACB7480000000
  %3911 = fadd fast float %3910, 0xBFD7347680000000
  %3912 = fmul fast float %3911, %3907
  %3913 = fmul fast float %3912, %3904
  br label %3914

; <label>:3914                                    ; preds = %3885, %3858
  %3915 = phi float [ %3900, %3885 ], [ 0.000000e+00, %3858 ]
  %3916 = phi float [ %3901, %3885 ], [ 0.000000e+00, %3858 ]
  %3917 = phi float [ %3902, %3885 ], [ 0.000000e+00, %3858 ]
  %3918 = phi float [ %3909, %3885 ], [ 0.000000e+00, %3858 ]
  %3919 = phi float [ %3913, %3885 ], [ 0.000000e+00, %3858 ]
  %3920 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3916, float %3917, float %2805, float %2806, float %2807)  ; Dot3(ax,ay,az,bx,by,bz)
  %3921 = fmul fast float %3920, %3920
  %3922 = fmul fast float %3921, 0x3FEE471020000000
  %3923 = fadd fast float %3922, 0xBFD42F6020000000
  %3924 = fmul fast float %3880, 0x3FD20DD760000000
  %3925 = fmul fast float %3923, %3919
  %3926 = fmul fast float %3918, 0x3FDF454380000000
  %3927 = fmul fast float %3926, %3920
  %3928 = fadd fast float %3927, %3924
  %3929 = fadd fast float %3928, %3925
  %3930 = call float @dx.op.dot3.f32(i32 55, float %3915, float %3916, float %3917, float %2824, float %2825, float %2826)  ; Dot3(ax,ay,az,bx,by,bz)
  %3931 = fmul fast float %3930, 0x3FDF454380000000
  %3932 = fmul fast float %3930, %3930
  %3933 = fmul fast float %3932, 0x3FEE471020000000
  %3934 = fadd fast float %3933, 0xBFD42F6020000000
  %3935 = call float @dx.op.dot3.f32(i32 55, float %3880, float %3918, float %3919, float 0x3FD20DD760000000, float %3931, float %3934)  ; Dot3(ax,ay,az,bx,by,bz)
  %3936 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %3796)  ; FMax(a,b)
  %3937 = call float @dx.op.dot3.f32(i32 55, float %3817, float %3820, float %3823, float %3817, float %3820, float %3823)  ; Dot3(ax,ay,az,bx,by,bz)
  %3938 = fcmp fast oeq float %3937, 0.000000e+00
  %3939 = fcmp fast oeq float %3936, 0.000000e+00
  %3940 = or i1 %3939, %3938
  br i1 %3940, label %3970, label %3941

; <label>:3941                                    ; preds = %3914
  %3942 = fsub fast float -0.000000e+00, %3823
  %3943 = fsub fast float -0.000000e+00, %3817
  %3944 = call float @dx.op.unary.f32(i32 24, float %3937)  ; Sqrt(value)
  %3945 = fdiv fast float %3944, %3936
  %3946 = fcmp fast ogt float %3945, 0x3FFB6F8900000000
  %3947 = select i1 %3946, float 0x3FFB6F8900000000, float %3945
  %3948 = fmul fast float %3947, 0x3FE8A23460000000
  %3949 = call float @dx.op.unary.f32(i32 7, float %3948)  ; Saturate(value)
  %3950 = call float @dx.op.binary.f32(i32 35, float %3947, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %3951 = fmul fast float %3949, %3936
  %3952 = fmul fast float %3950, 0x3FF279A740000000
  %3953 = fadd fast float %3952, -1.000000e+00
  %3954 = call float @dx.op.dot3.f32(i32 55, float %3942, float %3943, float %3820, float %3942, float %3943, float %3820)  ; Dot3(ax,ay,az,bx,by,bz)
  %3955 = call float @dx.op.unary.f32(i32 25, float %3954)  ; Rsqrt(value)
  %3956 = fmul fast float %3955, %3942
  %3957 = fmul fast float %3955, %3943
  %3958 = fmul fast float %3955, %3820
  %3959 = fmul fast float %3953, %3953
  %3960 = fsub fast float 1.000000e+00, %3959
  %3961 = fmul fast float %3950, 0x40005F8BE0000000
  %3962 = fsub fast float 0x400C5BF8A0000000, %3961
  %3963 = fdiv fast float %3951, %3962
  %3964 = fmul fast float %3963, 0x3FEE31C3C0000000
  %3965 = fmul fast float %3964, %3960
  %3966 = fmul fast float %3950, 0x3FDACB7480000000
  %3967 = fadd fast float %3966, 0xBFD7347680000000
  %3968 = fmul fast float %3967, %3963
  %3969 = fmul fast float %3968, %3960
  br label %3970

; <label>:3970                                    ; preds = %3941, %3914
  %3971 = phi float [ %3956, %3941 ], [ 0.000000e+00, %3914 ]
  %3972 = phi float [ %3957, %3941 ], [ 0.000000e+00, %3914 ]
  %3973 = phi float [ %3958, %3941 ], [ 0.000000e+00, %3914 ]
  %3974 = phi float [ %3965, %3941 ], [ 0.000000e+00, %3914 ]
  %3975 = phi float [ %3969, %3941 ], [ 0.000000e+00, %3914 ]
  %3976 = call float @dx.op.dot3.f32(i32 55, float %3971, float %3972, float %3973, float %2805, float %2806, float %2807)  ; Dot3(ax,ay,az,bx,by,bz)
  %3977 = fmul fast float %3976, %3976
  %3978 = fmul fast float %3977, 0x3FEE471020000000
  %3979 = fadd fast float %3978, 0xBFD42F6020000000
  %3980 = fmul fast float %3936, 0x3FD20DD760000000
  %3981 = fmul fast float %3979, %3975
  %3982 = fmul fast float %3974, 0x3FDF454380000000
  %3983 = fmul fast float %3982, %3976
  %3984 = fadd fast float %3983, %3980
  %3985 = fadd fast float %3984, %3981
  %3986 = call float @dx.op.dot3.f32(i32 55, float %3971, float %3972, float %3973, float %2824, float %2825, float %2826)  ; Dot3(ax,ay,az,bx,by,bz)
  %3987 = fmul fast float %3986, 0x3FDF454380000000
  %3988 = fmul fast float %3986, %3986
  %3989 = fmul fast float %3988, 0x3FEE471020000000
  %3990 = fadd fast float %3989, 0xBFD42F6020000000
  %3991 = call float @dx.op.dot3.f32(i32 55, float %3936, float %3974, float %3975, float 0x3FD20DD760000000, float %3987, float %3990)  ; Dot3(ax,ay,az,bx,by,bz)
  %3992 = call float @dx.op.binary.f32(i32 35, float %3873, float 0.000000e+00)  ; FMax(a,b)
  %3993 = call float @dx.op.binary.f32(i32 35, float %3929, float 0.000000e+00)  ; FMax(a,b)
  %3994 = call float @dx.op.binary.f32(i32 35, float %3985, float 0.000000e+00)  ; FMax(a,b)
  %3995 = call float @dx.op.binary.f32(i32 35, float %3879, float 0.000000e+00)  ; FMax(a,b)
  %3996 = call float @dx.op.binary.f32(i32 35, float %3935, float 0.000000e+00)  ; FMax(a,b)
  %3997 = call float @dx.op.binary.f32(i32 35, float %3991, float 0.000000e+00)  ; FMax(a,b)
  %3998 = fsub fast float %3194, %3992
  %3999 = fsub fast float %3195, %3993
  %4000 = fsub fast float %3196, %3994
  %4001 = fmul fast float %3998, %2875
  %4002 = fmul fast float %3999, %2875
  %4003 = fmul fast float %4000, %2875
  %4004 = fadd fast float %4001, %3992
  %4005 = fadd fast float %4002, %3993
  %4006 = fadd fast float %4003, %3994
  %4007 = fsub fast float %3191, %3995
  %4008 = fsub fast float %3192, %3996
  %4009 = fsub fast float %3193, %3997
  %4010 = fmul fast float %4007, %2875
  %4011 = fmul fast float %4008, %2875
  %4012 = fmul fast float %4009, %2875
  %4013 = fadd fast float %4010, %3995
  %4014 = fadd fast float %4011, %3996
  %4015 = fadd fast float %4012, %3997
  br label %4016

; <label>:4016                                    ; preds = %3970, %3190
  %4017 = phi float [ %4013, %3970 ], [ %3191, %3190 ]
  %4018 = phi float [ %4014, %3970 ], [ %3192, %3190 ]
  %4019 = phi float [ %4015, %3970 ], [ %3193, %3190 ]
  %4020 = phi float [ %4004, %3970 ], [ %3194, %3190 ]
  %4021 = phi float [ %4005, %3970 ], [ %3195, %3190 ]
  %4022 = phi float [ %4006, %3970 ], [ %3196, %3190 ]
  %4023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4024 = extractvalue %dx.types.CBufRet.f32 %4023, 0
  %4025 = call float @dx.op.binary.f32(i32 36, float %2811, float %4024)  ; FMin(a,b)
  %4026 = fsub fast float 1.000000e+00, %2827
  %4027 = fmul fast float %4025, %4026
  %4028 = fsub fast float 1.000000e+00, %4027
  %4029 = bitcast float %4028 to i32
  %4030 = sub nsw i32 2129859010, %4029
  %4031 = bitcast i32 %4030 to float
  %4032 = call float @dx.op.binary.f32(i32 36, float %2812, float %4024)  ; FMin(a,b)
  %4033 = fmul fast float %4032, %4026
  %4034 = fsub fast float 1.000000e+00, %4033
  %4035 = bitcast float %4034 to i32
  %4036 = sub nsw i32 2129859010, %4035
  %4037 = bitcast i32 %4036 to float
  %4038 = call float @dx.op.binary.f32(i32 36, float %2813, float %4024)  ; FMin(a,b)
  %4039 = fmul fast float %4038, %4026
  %4040 = fsub fast float 1.000000e+00, %4039
  %4041 = bitcast float %4040 to i32
  %4042 = sub nsw i32 2129859010, %4041
  %4043 = bitcast i32 %4042 to float
  %4044 = fmul fast float %4020, %2827
  %4045 = fmul fast float %4044, %4031
  %4046 = fmul fast float %4021, %2827
  %4047 = fmul fast float %4046, %4037
  %4048 = fmul fast float %4022, %2827
  %4049 = fmul fast float %4048, %4043
  %4050 = call float @dx.op.binary.f32(i32 36, float %2808, float %4024)  ; FMin(a,b)
  %4051 = fmul fast float %4050, %4026
  %4052 = fsub fast float 1.000000e+00, %4051
  %4053 = bitcast float %4052 to i32
  %4054 = sub nsw i32 2129859010, %4053
  %4055 = bitcast i32 %4054 to float
  %4056 = call float @dx.op.binary.f32(i32 36, float %2809, float %4024)  ; FMin(a,b)
  %4057 = fmul fast float %4056, %4026
  %4058 = fsub fast float 1.000000e+00, %4057
  %4059 = bitcast float %4058 to i32
  %4060 = sub nsw i32 2129859010, %4059
  %4061 = bitcast i32 %4060 to float
  %4062 = call float @dx.op.binary.f32(i32 36, float %2816, float %4024)  ; FMin(a,b)
  %4063 = fmul fast float %4062, %4026
  %4064 = fsub fast float 1.000000e+00, %4063
  %4065 = bitcast float %4064 to i32
  %4066 = sub nsw i32 2129859010, %4065
  %4067 = bitcast i32 %4066 to float
  %4068 = fmul fast float %4017, %2827
  %4069 = fmul fast float %4068, %4055
  %4070 = fmul fast float %4018, %2827
  %4071 = fmul fast float %4070, %4061
  %4072 = fmul fast float %4019, %2827
  %4073 = fmul fast float %4072, %4067
  %4074 = call float @dx.op.dot3.f32(i32 55, float %4045, float %4047, float %4049, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4075 = select i1 %189, float 0.000000e+00, float %4045
  %4076 = select i1 %189, float %4074, float %4047
  %4077 = select i1 %189, float 0.000000e+00, float %4049
  %4078 = call float @dx.op.dot3.f32(i32 55, float %4069, float %4071, float %4073, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4079 = select i1 %189, float 0.000000e+00, float %4069
  %4080 = select i1 %189, float %4078, float %4071
  %4081 = select i1 %189, float 0.000000e+00, float %4073
  %4082 = fmul fast float %2818, 9.843750e-01
  %4083 = fmul fast float %2814, 9.843750e-01
  %4084 = fadd fast float %4082, 7.812500e-03
  %4085 = fadd fast float %4083, 7.812500e-03
  %4086 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4084, float %4085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4087 = extractvalue %dx.types.ResRet.f32 %4086, 2
  %4088 = extractvalue %dx.types.ResRet.f32 %4086, 3
  %4089 = fmul fast float %4087, %2808
  %4090 = fmul fast float %4087, %2809
  %4091 = fmul fast float %4087, %2816
  %4092 = fadd fast float %4089, %4088
  %4093 = fadd fast float %4090, %4088
  %4094 = fadd fast float %4091, %4088
  %4095 = fcmp fast ogt float %2182, 0.000000e+00
  br i1 %4095, label %4096, label %4122

; <label>:4096                                    ; preds = %4016
  %4097 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2182, float %2818, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4098 = extractvalue %dx.types.ResRet.f32 %4097, 0
  %4099 = extractvalue %dx.types.ResRet.f32 %4097, 1
  %4100 = extractvalue %dx.types.ResRet.f32 %4097, 2
  %4101 = fadd fast float %4098, -5.000000e-01
  %4102 = fadd fast float %4099, -5.000000e-01
  %4103 = fadd fast float %4100, -5.000000e-01
  %4104 = fsub fast float 1.000000e+00, %2808
  %4105 = fsub fast float 1.000000e+00, %2809
  %4106 = fsub fast float 1.000000e+00, %2816
  %4107 = fmul fast float %2808, 4.000000e+00
  %4108 = fmul fast float %4107, %4104
  %4109 = fmul fast float %4108, %4101
  %4110 = fmul fast float %2809, 4.000000e+00
  %4111 = fmul fast float %4110, %4105
  %4112 = fmul fast float %4111, %4102
  %4113 = fmul fast float %2816, 4.000000e+00
  %4114 = fmul fast float %4113, %4106
  %4115 = fmul fast float %4114, %4103
  %4116 = fadd fast float %4109, %4092
  %4117 = fadd fast float %4112, %4093
  %4118 = fadd fast float %4115, %4094
  %4119 = call float @dx.op.unary.f32(i32 7, float %4116)  ; Saturate(value)
  %4120 = call float @dx.op.unary.f32(i32 7, float %4117)  ; Saturate(value)
  %4121 = call float @dx.op.unary.f32(i32 7, float %4118)  ; Saturate(value)
  br label %4122

; <label>:4122                                    ; preds = %4096, %4016
  %4123 = phi float [ %4119, %4096 ], [ %4092, %4016 ]
  %4124 = phi float [ %4120, %4096 ], [ %4093, %4016 ]
  %4125 = phi float [ %4121, %4096 ], [ %4094, %4016 ]
  %4126 = call float @dx.op.binary.f32(i32 35, float %4124, float %4125)  ; FMax(a,b)
  %4127 = call float @dx.op.binary.f32(i32 35, float %4123, float %4126)  ; FMax(a,b)
  %4128 = fsub fast float 1.000000e+00, %4127
  %4129 = fmul fast float %4128, %4075
  %4130 = fmul fast float %4128, %4076
  %4131 = fmul fast float %4128, %4077
  %4132 = call float @dx.op.dot3.f32(i32 55, float %2811, float %2812, float %2813, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4133 = fcmp fast ogt float %4132, 0x3E7FF19E20000000
  %4134 = fdiv fast float 1.000000e+00, %4132
  %4135 = select i1 %4133, float %4134, float 0.000000e+00
  %4136 = fmul fast float %4135, %2811
  %4137 = fmul fast float %4135, %2812
  %4138 = fmul fast float %4135, %2813
  %4139 = fadd fast float %4136, -1.000000e+00
  %4140 = fadd fast float %4137, -1.000000e+00
  %4141 = fadd fast float %4138, -1.000000e+00
  %4142 = fmul fast float %4139, 5.000000e-01
  %4143 = fmul fast float %4140, 5.000000e-01
  %4144 = fmul fast float %4141, 5.000000e-01
  %4145 = fadd fast float %4142, 1.000000e+00
  %4146 = fadd fast float %4143, 1.000000e+00
  %4147 = fadd fast float %4144, 1.000000e+00
  %4148 = fmul fast float %4123, %4079
  %4149 = fmul fast float %4124, %4080
  %4150 = fmul fast float %4125, %4081
  %4151 = fsub fast float 1.000000e+00, %2818
  %4152 = bitcast float %4151 to i32
  %4153 = sitofp i32 %4152 to float
  %4154 = fmul fast float %4153, 5.000000e+00
  %4155 = fadd fast float %4154, 0xC1EFBF8940000000
  %4156 = fptosi float %4155 to i32
  %4157 = bitcast i32 %4156 to float
  %4158 = fmul fast float %4157, %2181
  %4159 = fmul fast float %4075, %4158
  %4160 = fmul fast float %4159, %4128
  %4161 = fmul fast float %4160, %4145
  %4162 = fmul fast float %4076, %4158
  %4163 = fmul fast float %4162, %4128
  %4164 = fmul fast float %4163, %4146
  %4165 = fmul fast float %4077, %4158
  %4166 = fmul fast float %4165, %4128
  %4167 = fmul fast float %4166, %4147
  %4168 = fmul fast float %4129, %2202
  %4169 = fmul fast float %4130, %2202
  %4170 = fmul fast float %4131, %2202
  %4171 = fadd fast float %4148, %2183
  %4172 = fadd fast float %4171, %4161
  %4173 = fmul fast float %4172, %2202
  %4174 = fadd fast float %4149, %2184
  %4175 = fadd fast float %4174, %4164
  %4176 = fmul fast float %4175, %2202
  %4177 = fadd fast float %4150, %2185
  %4178 = fadd fast float %4177, %4167
  %4179 = fmul fast float %4178, %2202
  %4180 = bitcast i32 %2830 to float
  %4181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %4182 = extractvalue %dx.types.CBufRet.f32 %4181, 3
  %4183 = fcmp fast oeq float %4182, 0.000000e+00
  br i1 %4183, label %4411, label %4184

; <label>:4184                                    ; preds = %4122
  %4185 = extractvalue %dx.types.CBufRet.f32 %4181, 0
  %4186 = extractvalue %dx.types.CBufRet.f32 %4181, 1
  %4187 = extractvalue %dx.types.CBufRet.f32 %4181, 2
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 0
  %4190 = extractvalue %dx.types.CBufRet.f32 %4188, 1
  %4191 = extractvalue %dx.types.CBufRet.f32 %4188, 2
  %4192 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %4193 = extractvalue %dx.types.CBufRet.f32 %4192, 0
  %4194 = extractvalue %dx.types.CBufRet.f32 %4192, 1
  %4195 = call float @dx.op.dot3.f32(i32 55, float %4189, float %4190, float %4191, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4196 = select i1 %189, float %4193, float %4189
  %4197 = select i1 %189, float %4195, float %4190
  %4198 = select i1 %189, float %4194, float %4191
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 1
  %4201 = fcmp fast une float %4200, 0.000000e+00
  br i1 %4201, label %4202, label %4219

; <label>:4202                                    ; preds = %4184
  %4203 = fptoui float %71 to i32
  %4204 = fptoui float %72 to i32
  %4205 = lshr i32 %4203, 4
  %4206 = lshr i32 %4204, 4
  %4207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %4208 = extractvalue %dx.types.CBufRet.f32 %4207, 0
  %4209 = fptoui float %4208 to i32
  %4210 = add i32 %4209, 15
  %4211 = lshr i32 %4210, 4
  %4212 = mul i32 %4211, %4206
  %4213 = add i32 %4212, %4205
  %4214 = shl i32 %4213, 3
  %4215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %4, i32 %4214, i32 undef)  ; BufferLoad(srv,index,wot)
  %4216 = extractvalue %dx.types.ResRet.i32 %4215, 0
  %4217 = and i32 %4216, -268435456
  %4218 = icmp eq i32 %4217, -1342177280
  br i1 %4218, label %4229, label %4219

; <label>:4219                                    ; preds = %4202, %4184
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 2
  %4222 = extractvalue %dx.types.CBufRet.f32 %4220, 3
  %4223 = fmul fast float %4221, %71
  %4224 = fmul fast float %4222, %72
  %4225 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3, %dx.types.Handle %40, float %4223, float %4224, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4226 = extractvalue %dx.types.ResRet.f32 %4225, 0
  %4227 = extractvalue %dx.types.ResRet.f32 %4225, 1
  %4228 = extractvalue %dx.types.ResRet.f32 %4225, 2
  br label %4229

; <label>:4229                                    ; preds = %4219, %4202
  %4230 = phi float [ %4226, %4219 ], [ 0.000000e+00, %4202 ]
  %4231 = phi float [ %4227, %4219 ], [ 0.000000e+00, %4202 ]
  %4232 = phi float [ %4228, %4219 ], [ 0.000000e+00, %4202 ]
  %4233 = call float @dx.op.binary.f32(i32 36, float %4231, float %4232)  ; FMin(a,b)
  %4234 = call float @dx.op.binary.f32(i32 36, float %4230, float %4233)  ; FMin(a,b)
  %4235 = fcmp fast ogt float %4234, 0.000000e+00
  br i1 %4235, label %4236, label %4411, !dx.controlflow.hints !88

; <label>:4236                                    ; preds = %4229
  %4237 = fmul fast float %4230, %4196
  %4238 = fmul fast float %4231, %4197
  %4239 = fmul fast float %4232, %4198
  %4240 = fsub fast float %4185, %2804
  %4241 = fsub fast float %4186, %2803
  %4242 = fsub fast float %4187, %2802
  %4243 = call float @dx.op.dot3.f32(i32 55, float %4240, float %4241, float %4242, float %4240, float %4241, float %4242)  ; Dot3(ax,ay,az,bx,by,bz)
  %4244 = call float @dx.op.unary.f32(i32 25, float %4243)  ; Rsqrt(value)
  %4245 = fmul fast float %4244, %4240
  %4246 = fmul fast float %4244, %4241
  %4247 = fmul fast float %4244, %4242
  %4248 = call float @dx.op.dot3.f32(i32 55, float %4185, float %4186, float %4187, float %2805, float %2806, float %2807)  ; Dot3(ax,ay,az,bx,by,bz)
  %4249 = call float @dx.op.dot3.f32(i32 55, float %2801, float %2800, float %2799, float %4245, float %4246, float %4247)  ; Dot3(ax,ay,az,bx,by,bz)
  %4250 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4251 = fmul fast float %4250, %4250
  %4252 = fmul fast float %4251, %4180
  %4253 = call float @dx.op.unary.f32(i32 7, float %4252)  ; Saturate(value)
  %4254 = fmul fast float %4253, %4250
  %4255 = call float @dx.op.dot3.f32(i32 55, float %2805, float %2806, float %2807, float %4245, float %4246, float %4247)  ; Dot3(ax,ay,az,bx,by,bz)
  %4256 = fmul fast float %4255, %4255
  %4257 = call float @dx.op.unary.f32(i32 6, float %4248)  ; FAbs(value)
  %4258 = fsub fast float 1.000000e+00, %2814
  %4259 = call float @dx.op.binary.f32(i32 35, float %4258, float 0x3F847AE140000000)  ; FMax(a,b)
  %4260 = fmul fast float %4259, %4259
  %4261 = fmul fast float %4260, %4260
  %4262 = fsub fast float 1.000000e+00, %4261
  %4263 = fmul fast float %2818, %2818
  %4264 = fmul fast float %4263, %4262
  %4265 = fadd fast float %4264, %4261
  %4266 = bitcast float %4265 to i32
  %4267 = ashr i32 %4266, 1
  %4268 = add nsw i32 %4267, 532487669
  %4269 = bitcast i32 %4268 to float
  %4270 = fadd fast float %4269, %2818
  %4271 = fmul fast float %4261, %4256
  %4272 = fsub fast float 1.000000e+00, %4256
  %4273 = fadd fast float %4272, %4271
  %4274 = fmul fast float %4257, %4257
  %4275 = fmul fast float %4274, %4262
  %4276 = fadd fast float %4275, %4261
  %4277 = bitcast float %4276 to i32
  %4278 = ashr i32 %4277, 1
  %4279 = add nsw i32 %4278, 532487669
  %4280 = bitcast i32 %4279 to float
  %4281 = fadd fast float %4280, %4257
  %4282 = fmul fast float %4273, %4273
  %4283 = fmul fast float %4282, %4270
  %4284 = fmul fast float %4283, %4281
  %4285 = fdiv fast float 0x3FF0A00000000000, %4284
  %4286 = fmul fast float %4285, %4261
  %4287 = call float @dx.op.unary.f32(i32 6, float %4249)  ; FAbs(value)
  %4288 = fsub fast float 1.000000e+00, %4287
  %4289 = bitcast float %4288 to i32
  %4290 = sitofp i32 %4289 to float
  %4291 = fmul fast float %4290, 5.000000e+00
  %4292 = fadd fast float %4291, 0xC1EFBF8940000000
  %4293 = fptosi float %4292 to i32
  %4294 = bitcast i32 %4293 to float
  %4295 = fsub fast float 1.000000e+00, %2808
  %4296 = fsub fast float 1.000000e+00, %2809
  %4297 = fsub fast float 1.000000e+00, %2816
  %4298 = fmul fast float %4294, %4295
  %4299 = fmul fast float %4294, %4296
  %4300 = fmul fast float %4294, %4297
  %4301 = fadd fast float %4298, %2808
  %4302 = fadd fast float %4299, %2809
  %4303 = fadd fast float %4300, %2816
  br i1 %4095, label %4304, label %4327

; <label>:4304                                    ; preds = %4236
  %4305 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2182, float %4287, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4306 = extractvalue %dx.types.ResRet.f32 %4305, 0
  %4307 = extractvalue %dx.types.ResRet.f32 %4305, 1
  %4308 = extractvalue %dx.types.ResRet.f32 %4305, 2
  %4309 = fadd fast float %4306, -5.000000e-01
  %4310 = fadd fast float %4307, -5.000000e-01
  %4311 = fadd fast float %4308, -5.000000e-01
  %4312 = fmul fast float %2808, 4.000000e+00
  %4313 = fmul fast float %4312, %4295
  %4314 = fmul fast float %4313, %4309
  %4315 = fmul fast float %2809, 4.000000e+00
  %4316 = fmul fast float %4315, %4296
  %4317 = fmul fast float %4316, %4310
  %4318 = fmul fast float %2816, 4.000000e+00
  %4319 = fmul fast float %4318, %4297
  %4320 = fmul fast float %4319, %4311
  %4321 = fadd fast float %4314, %4301
  %4322 = fadd fast float %4317, %4302
  %4323 = fadd fast float %4320, %4303
  %4324 = call float @dx.op.unary.f32(i32 7, float %4321)  ; Saturate(value)
  %4325 = call float @dx.op.unary.f32(i32 7, float %4322)  ; Saturate(value)
  %4326 = call float @dx.op.unary.f32(i32 7, float %4323)  ; Saturate(value)
  br label %4327

; <label>:4327                                    ; preds = %4304, %4236
  %4328 = phi float [ %4324, %4304 ], [ %4301, %4236 ]
  %4329 = phi float [ %4325, %4304 ], [ %4302, %4236 ]
  %4330 = phi float [ %4326, %4304 ], [ %4303, %4236 ]
  %4331 = fmul fast float %4248, 9.843750e-01
  %4332 = fadd fast float %4331, 7.812500e-03
  %4333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4332, float %4085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 2
  %4335 = extractvalue %dx.types.ResRet.f32 %4333, 3
  %4336 = fmul fast float %4334, %2808
  %4337 = fmul fast float %4334, %2809
  %4338 = fmul fast float %4334, %2816
  %4339 = fadd fast float %4336, %4335
  %4340 = fadd fast float %4337, %4335
  %4341 = fadd fast float %4338, %4335
  br i1 %4095, label %4342, label %4365

; <label>:4342                                    ; preds = %4327
  %4343 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2182, float %4248, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4344 = extractvalue %dx.types.ResRet.f32 %4343, 0
  %4345 = extractvalue %dx.types.ResRet.f32 %4343, 1
  %4346 = extractvalue %dx.types.ResRet.f32 %4343, 2
  %4347 = fadd fast float %4344, -5.000000e-01
  %4348 = fadd fast float %4345, -5.000000e-01
  %4349 = fadd fast float %4346, -5.000000e-01
  %4350 = fmul fast float %2808, 4.000000e+00
  %4351 = fmul fast float %4350, %4295
  %4352 = fmul fast float %4351, %4347
  %4353 = fmul fast float %2809, 4.000000e+00
  %4354 = fmul fast float %4353, %4296
  %4355 = fmul fast float %4354, %4348
  %4356 = fmul fast float %2816, 4.000000e+00
  %4357 = fmul fast float %4356, %4297
  %4358 = fmul fast float %4357, %4349
  %4359 = fadd fast float %4352, %4339
  %4360 = fadd fast float %4355, %4340
  %4361 = fadd fast float %4358, %4341
  %4362 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4363 = call float @dx.op.unary.f32(i32 7, float %4360)  ; Saturate(value)
  %4364 = call float @dx.op.unary.f32(i32 7, float %4361)  ; Saturate(value)
  br label %4365

; <label>:4365                                    ; preds = %4342, %4327
  %4366 = phi float [ %4362, %4342 ], [ %4339, %4327 ]
  %4367 = phi float [ %4363, %4342 ], [ %4340, %4327 ]
  %4368 = phi float [ %4364, %4342 ], [ %4341, %4327 ]
  %4369 = call float @dx.op.binary.f32(i32 35, float %4367, float %4368)  ; FMax(a,b)
  %4370 = call float @dx.op.binary.f32(i32 35, float %4366, float %4369)  ; FMax(a,b)
  %4371 = fsub fast float 1.000000e+00, %4370
  %4372 = fmul fast float %4328, %4286
  %4373 = fmul fast float %4329, %4286
  %4374 = fmul fast float %4330, %4286
  %4375 = fsub fast float 1.000000e+00, %4249
  %4376 = bitcast float %4375 to i32
  %4377 = sitofp i32 %4376 to float
  %4378 = fmul fast float %4377, 5.000000e+00
  %4379 = fadd fast float %4378, 0xC1EFBF8940000000
  %4380 = fptosi float %4379 to i32
  %4381 = bitcast i32 %4380 to float
  %4382 = fmul fast float %4381, %2181
  %4383 = fmul fast float %4371, %4382
  %4384 = fmul fast float %4383, %4145
  %4385 = fmul fast float %4383, %4146
  %4386 = fmul fast float %4383, %4147
  %4387 = fadd fast float %4384, %4372
  %4388 = fadd fast float %4385, %4373
  %4389 = fadd fast float %4386, %4374
  %4390 = fmul fast float %4254, %4237
  %4391 = fmul fast float %4390, %4371
  %4392 = fmul fast float %4254, %4238
  %4393 = fmul fast float %4392, %4371
  %4394 = fmul fast float %4254, %4239
  %4395 = fmul fast float %4394, %4371
  %4396 = fmul fast float %4390, %4387
  %4397 = fmul fast float %4392, %4388
  %4398 = fmul fast float %4394, %4389
  %4399 = fadd fast float %4391, %4129
  %4400 = fmul fast float %4399, %2202
  %4401 = fadd fast float %4393, %4130
  %4402 = fmul fast float %4401, %2202
  %4403 = fadd fast float %4395, %4131
  %4404 = fmul fast float %4403, %2202
  %4405 = fadd fast float %4396, %4172
  %4406 = fmul fast float %4405, %2202
  %4407 = fadd fast float %4397, %4175
  %4408 = fmul fast float %4407, %2202
  %4409 = fadd fast float %4398, %4178
  %4410 = fmul fast float %4409, %2202
  br label %4411

; <label>:4411                                    ; preds = %4365, %4229, %4122
  %4412 = phi float [ %4173, %4122 ], [ %4173, %4229 ], [ %4406, %4365 ]
  %4413 = phi float [ %4176, %4122 ], [ %4176, %4229 ], [ %4408, %4365 ]
  %4414 = phi float [ %4179, %4122 ], [ %4179, %4229 ], [ %4410, %4365 ]
  %4415 = phi float [ %4168, %4122 ], [ %4168, %4229 ], [ %4400, %4365 ]
  %4416 = phi float [ %4169, %4122 ], [ %4169, %4229 ], [ %4402, %4365 ]
  %4417 = phi float [ %4170, %4122 ], [ %4170, %4229 ], [ %4404, %4365 ]
  %4418 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4419 = extractvalue %dx.types.CBufRet.i32 %4418, 0
  %4420 = icmp eq i32 %4419, 0
  br i1 %4420, label %4855, label %4421

; <label>:4421                                    ; preds = %4411
  %4422 = fptoui float %71 to i32
  %4423 = fptoui float %72 to i32
  %4424 = lshr i32 %4422, 4
  %4425 = lshr i32 %4423, 4
  %4426 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %4427 = extractvalue %dx.types.CBufRet.i32 %4426, 0
  %4428 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4425, i32 %4427, i32 %4424)  ; UMad(a,b,c)
  %4429 = add nsw i32 %4419, -1
  %4430 = call i32 @dx.op.binary.i32(i32 37, i32 %4429, i32 0)  ; IMax(a,b)
  %4431 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %4432 = fptoui float %4431 to i32
  %4433 = lshr i32 %4432, 5
  %4434 = call i32 @dx.op.binary.i32(i32 40, i32 %4433, i32 8191)  ; UMin(a,b)
  %4435 = shl i32 %4434, 2
  %4436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %1, i32 %4435, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.i32 %4436, 0
  %4438 = lshr i32 %4437, 16
  %4439 = and i32 %4437, 65535
  %4440 = lshr i32 %4437, 21
  %4441 = lshr i32 %4439, 5
  %4442 = call i32 @dx.op.binary.i32(i32 40, i32 %4441, i32 %4430)  ; UMin(a,b)
  %4443 = icmp ugt i32 %4440, %4442
  br i1 %4443, label %4855, label %4444

; <label>:4444                                    ; preds = %4421
  br label %4445

; <label>:4445                                    ; preds = %4845, %4444
  %4446 = phi i32 [ %4852, %4845 ], [ %4440, %4444 ]
  %4447 = phi float [ %4846, %4845 ], [ %4412, %4444 ]
  %4448 = phi float [ %4847, %4845 ], [ %4413, %4444 ]
  %4449 = phi float [ %4848, %4845 ], [ %4414, %4444 ]
  %4450 = phi float [ %4849, %4845 ], [ %4415, %4444 ]
  %4451 = phi float [ %4850, %4845 ], [ %4416, %4444 ]
  %4452 = phi float [ %4851, %4845 ], [ %4417, %4444 ]
  %4453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %4454 = extractvalue %dx.types.CBufRet.i32 %4453, 0
  %4455 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4428, i32 %4454, i32 %4446)  ; UMad(a,b,c)
  %4456 = shl i32 %4455, 2
  %4457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %4456, i32 undef)  ; BufferLoad(srv,index,wot)
  %4458 = extractvalue %dx.types.ResRet.i32 %4457, 0
  %4459 = shl i32 %4446, 5
  %4460 = sub nsw i32 %4438, %4459
  %4461 = call i32 @dx.op.binary.i32(i32 37, i32 %4460, i32 0)  ; IMax(a,b)
  %4462 = call i32 @dx.op.binary.i32(i32 38, i32 %4461, i32 31)  ; IMin(a,b)
  %4463 = sub nsw i32 1, %4438
  %4464 = add nsw i32 %4463, %4439
  %4465 = call i32 @dx.op.binary.i32(i32 37, i32 %4464, i32 0)  ; IMax(a,b)
  %4466 = call i32 @dx.op.binary.i32(i32 38, i32 %4465, i32 32)  ; IMin(a,b)
  %4467 = and i32 %4466, 31
  %4468 = shl i32 -1, %4467
  %4469 = xor i32 %4468, -1
  %4470 = and i32 %4462, 31
  %4471 = shl i32 %4469, %4470
  %4472 = icmp eq i32 %4466, 32
  %4473 = select i1 %4472, i32 -1, i32 %4471
  %4474 = and i32 %4473, %4458
  %4475 = icmp eq i32 %4474, 0
  br i1 %4475, label %4845, label %4476

; <label>:4476                                    ; preds = %4445
  br label %4477

; <label>:4477                                    ; preds = %4557, %4476
  %4478 = phi i32 [ %4489, %4557 ], [ %4474, %4476 ]
  %4479 = phi float [ %4558, %4557 ], [ %4447, %4476 ]
  %4480 = phi float [ %4559, %4557 ], [ %4448, %4476 ]
  %4481 = phi float [ %4560, %4557 ], [ %4449, %4476 ]
  %4482 = phi float [ %4561, %4557 ], [ %4450, %4476 ]
  %4483 = phi float [ %4562, %4557 ], [ %4451, %4476 ]
  %4484 = phi float [ %4563, %4557 ], [ %4452, %4476 ]
  %4485 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4478)  ; FirstbitLo(value)
  %4486 = add i32 %4485, %4459
  %4487 = and i32 %4485, 31
  %4488 = shl i32 1, %4487
  %4489 = xor i32 %4488, %4478
  %4490 = mul i32 %4486, 112
  %4491 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4490, i32 undef)  ; BufferLoad(srv,index,wot)
  %4492 = extractvalue %dx.types.ResRet.f32 %4491, 0
  %4493 = extractvalue %dx.types.ResRet.f32 %4491, 1
  %4494 = extractvalue %dx.types.ResRet.f32 %4491, 2
  %4495 = or i32 %4490, 12
  %4496 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4495, i32 undef)  ; BufferLoad(srv,index,wot)
  %4497 = extractvalue %dx.types.ResRet.f32 %4496, 0
  %4498 = add i32 %4490, 44
  %4499 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4498, i32 undef)  ; BufferLoad(srv,index,wot)
  %4500 = extractvalue %dx.types.ResRet.f32 %4499, 0
  %4501 = add i32 %4490, 48
  %4502 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4501, i32 undef)  ; BufferLoad(srv,index,wot)
  %4503 = extractvalue %dx.types.ResRet.f32 %4502, 0
  %4504 = extractvalue %dx.types.ResRet.f32 %4502, 1
  %4505 = extractvalue %dx.types.ResRet.f32 %4502, 2
  %4506 = add i32 %4490, 80
  %4507 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %5, i32 %4506, i32 undef)  ; BufferLoad(srv,index,wot)
  %4508 = extractvalue %dx.types.ResRet.f32 %4507, 1
  %4509 = extractvalue %dx.types.ResRet.f32 %4507, 2
  %4510 = call float @dx.op.dot3.f32(i32 55, float %4492, float %4493, float %4494, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4511 = select i1 %189, float %4508, float %4492
  %4512 = select i1 %189, float %4510, float %4493
  %4513 = select i1 %189, float %4509, float %4494
  %4514 = fsub fast float %4503, %118
  %4515 = fsub fast float %4504, %119
  %4516 = fsub fast float %4505, %120
  %4517 = call float @dx.op.dot3.f32(i32 55, float %4514, float %4515, float %4516, float %4514, float %4515, float %4516)  ; Dot3(ax,ay,az,bx,by,bz)
  %4518 = call float @dx.op.unary.f32(i32 24, float %4517)  ; Sqrt(value)
  %4519 = fdiv fast float 1.000000e+00, %4518
  %4520 = fmul fast float %4519, %4514
  %4521 = fmul fast float %4519, %4515
  %4522 = fmul fast float %4519, %4516
  %4523 = fadd fast float %4518, %4497
  %4524 = fdiv fast float 1.000000e+00, %4523
  %4525 = fmul float %4500, %4524
  %4526 = fmul float %4525, %4525
  %4527 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4528 = and i32 %4488, %4474
  %4529 = icmp eq i32 %4528, 0
  br i1 %4529, label %4552, label %4530, !dx.controlflow.hints !89

; <label>:4530                                    ; preds = %4477
  %4531 = lshr i32 %4422, 5
  %4532 = lshr i32 %4423, 5
  %4533 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %22, i32 0, i32 %4531, i32 %4532, i32 %4486, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4534 = extractvalue %dx.types.ResRet.i32 %4533, 0
  %4535 = and i32 %4534, 3
  %4536 = icmp eq i32 %4535, 0
  %4537 = select i1 %4536, float 1.000000e+00, float 0.000000e+00
  %4538 = icmp eq i32 %4535, 3
  br i1 %4538, label %4539, label %4552

; <label>:4539                                    ; preds = %4530
  %4540 = lshr i32 %4534, 10
  %4541 = and i32 %4540, 8160
  %4542 = and i32 %4423, 31
  %4543 = or i32 %4541, %4542
  %4544 = lshr i32 %4534, 1
  %4545 = and i32 %4544, 16352
  %4546 = and i32 %4422, 31
  %4547 = or i32 %4545, %4546
  %4548 = lshr i32 %4534, 23
  %4549 = and i32 %4548, 255
  %4550 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %4547, i32 %4543, i32 %4549, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %4551 = extractvalue %dx.types.ResRet.f32 %4550, 0
  br label %4552

; <label>:4552                                    ; preds = %4539, %4530, %4477
  %4553 = phi float [ %4551, %4539 ], [ %4537, %4530 ], [ 0.000000e+00, %4477 ]
  %4554 = call float @dx.op.binary.f32(i32 36, float %4553, float %4553)  ; FMin(a,b)
  %4555 = call float @dx.op.binary.f32(i32 36, float %4553, float %4554)  ; FMin(a,b)
  %4556 = fcmp fast ogt float %4555, 0.000000e+00
  br i1 %4556, label %4565, label %4557, !dx.controlflow.hints !90

; <label>:4557                                    ; preds = %4801, %4552
  %4558 = phi float [ %4479, %4552 ], [ %4841, %4801 ]
  %4559 = phi float [ %4480, %4552 ], [ %4842, %4801 ]
  %4560 = phi float [ %4481, %4552 ], [ %4843, %4801 ]
  %4561 = phi float [ %4482, %4552 ], [ %4835, %4801 ]
  %4562 = phi float [ %4483, %4552 ], [ %4836, %4801 ]
  %4563 = phi float [ %4484, %4552 ], [ %4837, %4801 ]
  %4564 = icmp eq i32 %4478, %4488
  br i1 %4564, label %4844, label %4477

; <label>:4565                                    ; preds = %4552
  %4566 = fmul fast float %4553, %4511
  %4567 = fmul fast float %4553, %4512
  %4568 = fmul fast float %4553, %4513
  %4569 = fsub fast float %4505, %2604
  %4570 = fcmp fast ogt float %4569, 0.000000e+00
  %4571 = fsub fast float %120, %2604
  %4572 = fcmp fast ogt float %4571, 0.000000e+00
  %4573 = xor i1 %4572, %4570
  %4574 = fsub fast float %2604, %4505
  %4575 = fmul fast float %4574, 2.000000e+00
  %4576 = fadd fast float %4575, %4505
  %4577 = select i1 %4573, float %4505, float %4576
  %4578 = fsub fast float %4577, %120
  %4579 = call float @dx.op.dot3.f32(i32 55, float %4514, float %4515, float %4578, float %4514, float %4515, float %4578)  ; Dot3(ax,ay,az,bx,by,bz)
  %4580 = call float @dx.op.unary.f32(i32 25, float %4579)  ; Rsqrt(value)
  %4581 = fmul fast float %4580, %4514
  %4582 = fmul fast float %4580, %4515
  %4583 = fmul fast float %4580, %4578
  %4584 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %2612)  ; Dot3(ax,ay,az,bx,by,bz)
  %4585 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %4581, float %4582, float %4583)  ; Dot3(ax,ay,az,bx,by,bz)
  %4586 = fdiv fast float 1.000000e+00, %4585
  %4587 = fmul fast float %4586, %4584
  %4588 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %4571, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4589 = fcmp fast ogt float %4588, 0.000000e+00
  %4590 = fcmp fast olt float %4588, 0.000000e+00
  %4591 = zext i1 %4589 to i32
  %4592 = zext i1 %4590 to i32
  %4593 = sub nsw i32 %4591, %4592
  %4594 = sitofp i32 %4593 to float
  %4595 = fsub fast float %4577, %2604
  %4596 = call float @dx.op.dot3.f32(i32 55, float %4514, float %4515, float %4595, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4597 = fcmp fast ogt float %4596, 0.000000e+00
  %4598 = fcmp fast olt float %4596, 0.000000e+00
  %4599 = zext i1 %4597 to i32
  %4600 = zext i1 %4598 to i32
  %4601 = sub nsw i32 %4599, %4600
  %4602 = sitofp i32 %4601 to float
  %4603 = fcmp fast une float %4594, %4602
  br i1 %4603, label %4604, label %4614

; <label>:4604                                    ; preds = %4565
  %4605 = fmul fast float %4587, %4583
  %4606 = fmul fast float %4587, %4582
  %4607 = fmul fast float %4587, %4581
  %4608 = fmul fast float %4607, %4607
  %4609 = fmul fast float %4606, %4606
  %4610 = fadd fast float %4608, %4609
  %4611 = fmul fast float %4605, %4605
  %4612 = fadd fast float %4610, %4611
  %4613 = call float @dx.op.unary.f32(i32 24, float %4612)  ; Sqrt(value)
  br label %4626

; <label>:4614                                    ; preds = %4565
  %4615 = icmp slt i32 %4593, 0
  br i1 %4615, label %4616, label %4626

; <label>:4616                                    ; preds = %4614
  %4617 = fsub fast float %118, %4503
  %4618 = fsub fast float %119, %4504
  %4619 = fsub fast float %120, %4577
  %4620 = fmul fast float %4617, %4617
  %4621 = fmul fast float %4618, %4618
  %4622 = fadd fast float %4620, %4621
  %4623 = fmul fast float %4619, %4619
  %4624 = fadd fast float %4622, %4623
  %4625 = call float @dx.op.unary.f32(i32 24, float %4624)  ; Sqrt(value)
  br label %4626

; <label>:4626                                    ; preds = %4616, %4614, %4604
  %4627 = phi float [ %4613, %4604 ], [ %4625, %4616 ], [ 0.000000e+00, %4614 ]
  %4628 = and i1 %4572, %4570
  %4629 = fsub fast float -0.000000e+00, %4627
  %4630 = select i1 %4628, float -0.000000e+00, float %4629
  %4631 = fmul fast float %2605, 0x3FF7154760000000
  %4632 = fmul fast float %4631, %4630
  %4633 = fmul fast float %2606, 0x3FF7154760000000
  %4634 = fmul fast float %4633, %4630
  %4635 = fmul fast float %2607, 0x3FF7154760000000
  %4636 = fmul fast float %4635, %4630
  %4637 = call float @dx.op.unary.f32(i32 21, float %4632)  ; Exp(value)
  %4638 = call float @dx.op.unary.f32(i32 21, float %4634)  ; Exp(value)
  %4639 = call float @dx.op.unary.f32(i32 21, float %4636)  ; Exp(value)
  %4640 = call float @dx.op.unary.f32(i32 7, float %4637)  ; Saturate(value)
  %4641 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4642 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4643 = fmul fast float %4566, %4640
  %4644 = fmul fast float %4567, %4641
  %4645 = fmul fast float %4568, %4642
  %4646 = fsub fast float %4520, %2804
  %4647 = fsub fast float %4521, %2803
  %4648 = fsub fast float %4522, %2802
  %4649 = call float @dx.op.dot3.f32(i32 55, float %4646, float %4647, float %4648, float %4646, float %4647, float %4648)  ; Dot3(ax,ay,az,bx,by,bz)
  %4650 = call float @dx.op.unary.f32(i32 25, float %4649)  ; Rsqrt(value)
  %4651 = fmul fast float %4650, %4646
  %4652 = fmul fast float %4650, %4647
  %4653 = fmul fast float %4650, %4648
  %4654 = call float @dx.op.dot3.f32(i32 55, float %4520, float %4521, float %4522, float %2805, float %2806, float %2807)  ; Dot3(ax,ay,az,bx,by,bz)
  %4655 = call float @dx.op.dot3.f32(i32 55, float %2801, float %2800, float %2799, float %4651, float %4652, float %4653)  ; Dot3(ax,ay,az,bx,by,bz)
  %4656 = call float @dx.op.unary.f32(i32 7, float %4654)  ; Saturate(value)
  %4657 = fmul fast float %4656, %4527
  %4658 = fmul fast float %4656, %4656
  %4659 = fmul fast float %4658, %4180
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = fmul fast float %4657, %4660
  %4662 = bitcast float %4517 to i32
  %4663 = ashr i32 %4662, 1
  %4664 = sub nsw i32 1597463007, %4663
  %4665 = bitcast i32 %4664 to float
  %4666 = fmul fast float %4665, %4514
  %4667 = fmul fast float %4665, %4515
  %4668 = fmul fast float %4665, %4516
  %4669 = fsub fast float %4666, %2804
  %4670 = fsub fast float %4667, %2803
  %4671 = fsub fast float %4668, %2802
  %4672 = call float @dx.op.dot3.f32(i32 55, float %4669, float %4670, float %4671, float %4669, float %4670, float %4671)  ; Dot3(ax,ay,az,bx,by,bz)
  %4673 = call float @dx.op.unary.f32(i32 25, float %4672)  ; Rsqrt(value)
  %4674 = fmul fast float %4669, %4673
  %4675 = fmul fast float %4670, %4673
  %4676 = fmul fast float %4671, %4673
  %4677 = call float @dx.op.dot3.f32(i32 55, float %2805, float %2806, float %2807, float %4674, float %4675, float %4676)  ; Dot3(ax,ay,az,bx,by,bz)
  %4678 = fmul fast float %4677, %4677
  %4679 = call float @dx.op.unary.f32(i32 6, float %4654)  ; FAbs(value)
  %4680 = fsub fast float 1.000000e+00, %2814
  %4681 = call float @dx.op.binary.f32(i32 35, float %4680, float 0x3F847AE140000000)  ; FMax(a,b)
  %4682 = fmul fast float %4681, %4681
  %4683 = fmul fast float %4682, %4682
  %4684 = fsub fast float 1.000000e+00, %4683
  %4685 = fmul fast float %2818, %2818
  %4686 = fmul fast float %4685, %4684
  %4687 = fadd fast float %4686, %4683
  %4688 = bitcast float %4687 to i32
  %4689 = ashr i32 %4688, 1
  %4690 = add nsw i32 %4689, 532487669
  %4691 = bitcast i32 %4690 to float
  %4692 = fadd fast float %4691, %2818
  %4693 = fmul fast float %4683, %4678
  %4694 = fsub fast float 1.000000e+00, %4678
  %4695 = fadd fast float %4694, %4693
  %4696 = fmul fast float %4679, %4679
  %4697 = fmul fast float %4696, %4684
  %4698 = fadd fast float %4697, %4683
  %4699 = bitcast float %4698 to i32
  %4700 = ashr i32 %4699, 1
  %4701 = add nsw i32 %4700, 532487669
  %4702 = bitcast i32 %4701 to float
  %4703 = fadd fast float %4702, %4679
  %4704 = fmul fast float %4695, %4695
  %4705 = fmul fast float %4704, %4692
  %4706 = fmul fast float %4705, %4703
  %4707 = fdiv fast float 1.000000e+00, %4706
  %4708 = bitcast float %4683 to i32
  %4709 = sitofp i32 %4708 to float
  %4710 = fmul fast float %4709, 0x3FE7F73180000000
  %4711 = fadd fast float %4710, 0x41AFE27C40000000
  %4712 = fptosi float %4711 to i32
  %4713 = bitcast i32 %4712 to float
  %4714 = fmul fast float %4500, 0x3FD80E9D60000000
  %4715 = fmul fast float %4714, %4665
  %4716 = fadd fast float %4713, %4715
  %4717 = bitcast float %4716 to i32
  %4718 = sub nsw i32 2129859010, %4717
  %4719 = bitcast i32 %4718 to float
  %4720 = fmul fast float %4683, %4707
  %4721 = fmul fast float %4720, %4713
  %4722 = fmul fast float %4721, %4719
  %4723 = call float @dx.op.unary.f32(i32 6, float %4655)  ; FAbs(value)
  %4724 = fsub fast float 1.000000e+00, %4723
  %4725 = bitcast float %4724 to i32
  %4726 = sitofp i32 %4725 to float
  %4727 = fmul fast float %4726, 5.000000e+00
  %4728 = fadd fast float %4727, 0xC1EFBF8940000000
  %4729 = fptosi float %4728 to i32
  %4730 = bitcast i32 %4729 to float
  %4731 = fsub fast float 1.000000e+00, %2808
  %4732 = fsub fast float 1.000000e+00, %2809
  %4733 = fsub fast float 1.000000e+00, %2816
  %4734 = fmul fast float %4730, %4731
  %4735 = fmul fast float %4730, %4732
  %4736 = fmul fast float %4730, %4733
  %4737 = fadd fast float %4734, %2808
  %4738 = fadd fast float %4735, %2809
  %4739 = fadd fast float %4736, %2816
  br i1 %4095, label %4740, label %4763

; <label>:4740                                    ; preds = %4626
  %4741 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2182, float %4723, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4742 = extractvalue %dx.types.ResRet.f32 %4741, 0
  %4743 = extractvalue %dx.types.ResRet.f32 %4741, 1
  %4744 = extractvalue %dx.types.ResRet.f32 %4741, 2
  %4745 = fadd fast float %4742, -5.000000e-01
  %4746 = fadd fast float %4743, -5.000000e-01
  %4747 = fadd fast float %4744, -5.000000e-01
  %4748 = fmul fast float %2808, 4.000000e+00
  %4749 = fmul fast float %4748, %4731
  %4750 = fmul fast float %4749, %4745
  %4751 = fmul fast float %2809, 4.000000e+00
  %4752 = fmul fast float %4751, %4732
  %4753 = fmul fast float %4752, %4746
  %4754 = fmul fast float %2816, 4.000000e+00
  %4755 = fmul fast float %4754, %4733
  %4756 = fmul fast float %4755, %4747
  %4757 = fadd fast float %4750, %4737
  %4758 = fadd fast float %4753, %4738
  %4759 = fadd fast float %4756, %4739
  %4760 = call float @dx.op.unary.f32(i32 7, float %4757)  ; Saturate(value)
  %4761 = call float @dx.op.unary.f32(i32 7, float %4758)  ; Saturate(value)
  %4762 = call float @dx.op.unary.f32(i32 7, float %4759)  ; Saturate(value)
  br label %4763

; <label>:4763                                    ; preds = %4740, %4626
  %4764 = phi float [ %4760, %4740 ], [ %4737, %4626 ]
  %4765 = phi float [ %4761, %4740 ], [ %4738, %4626 ]
  %4766 = phi float [ %4762, %4740 ], [ %4739, %4626 ]
  %4767 = fmul fast float %4654, 9.843750e-01
  %4768 = fadd fast float %4767, 7.812500e-03
  %4769 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4768, float %4085, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4770 = extractvalue %dx.types.ResRet.f32 %4769, 2
  %4771 = extractvalue %dx.types.ResRet.f32 %4769, 3
  %4772 = fmul fast float %4770, %2808
  %4773 = fmul fast float %4770, %2809
  %4774 = fmul fast float %4770, %2816
  %4775 = fadd fast float %4772, %4771
  %4776 = fadd fast float %4773, %4771
  %4777 = fadd fast float %4774, %4771
  br i1 %4095, label %4778, label %4801

; <label>:4778                                    ; preds = %4763
  %4779 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %6, %dx.types.Handle %39, float %2182, float %4654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4780 = extractvalue %dx.types.ResRet.f32 %4779, 0
  %4781 = extractvalue %dx.types.ResRet.f32 %4779, 1
  %4782 = extractvalue %dx.types.ResRet.f32 %4779, 2
  %4783 = fadd fast float %4780, -5.000000e-01
  %4784 = fadd fast float %4781, -5.000000e-01
  %4785 = fadd fast float %4782, -5.000000e-01
  %4786 = fmul fast float %2808, 4.000000e+00
  %4787 = fmul fast float %4786, %4731
  %4788 = fmul fast float %4787, %4783
  %4789 = fmul fast float %2809, 4.000000e+00
  %4790 = fmul fast float %4789, %4732
  %4791 = fmul fast float %4790, %4784
  %4792 = fmul fast float %2816, 4.000000e+00
  %4793 = fmul fast float %4792, %4733
  %4794 = fmul fast float %4793, %4785
  %4795 = fadd fast float %4788, %4775
  %4796 = fadd fast float %4791, %4776
  %4797 = fadd fast float %4794, %4777
  %4798 = call float @dx.op.unary.f32(i32 7, float %4795)  ; Saturate(value)
  %4799 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4800 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  br label %4801

; <label>:4801                                    ; preds = %4778, %4763
  %4802 = phi float [ %4798, %4778 ], [ %4775, %4763 ]
  %4803 = phi float [ %4799, %4778 ], [ %4776, %4763 ]
  %4804 = phi float [ %4800, %4778 ], [ %4777, %4763 ]
  %4805 = call float @dx.op.binary.f32(i32 35, float %4803, float %4804)  ; FMax(a,b)
  %4806 = call float @dx.op.binary.f32(i32 35, float %4802, float %4805)  ; FMax(a,b)
  %4807 = fsub fast float 1.000000e+00, %4806
  %4808 = fmul fast float %4764, %4722
  %4809 = fmul fast float %4765, %4722
  %4810 = fmul fast float %4766, %4722
  %4811 = fsub fast float 1.000000e+00, %4655
  %4812 = bitcast float %4811 to i32
  %4813 = sitofp i32 %4812 to float
  %4814 = fmul fast float %4813, 5.000000e+00
  %4815 = fadd fast float %4814, 0xC1EFBF8940000000
  %4816 = fptosi float %4815 to i32
  %4817 = bitcast i32 %4816 to float
  %4818 = fmul fast float %4817, %2181
  %4819 = fmul fast float %4807, %4818
  %4820 = fmul fast float %4819, %4145
  %4821 = fmul fast float %4819, %4146
  %4822 = fmul fast float %4819, %4147
  %4823 = fadd fast float %4820, %4808
  %4824 = fadd fast float %4821, %4809
  %4825 = fadd fast float %4822, %4810
  %4826 = fmul fast float %4643, %2202
  %4827 = fmul fast float %4826, %4661
  %4828 = fmul fast float %4827, %4807
  %4829 = fmul fast float %4644, %2202
  %4830 = fmul fast float %4829, %4661
  %4831 = fmul fast float %4830, %4807
  %4832 = fmul fast float %4645, %2202
  %4833 = fmul fast float %4832, %4661
  %4834 = fmul fast float %4833, %4807
  %4835 = fadd fast float %4828, %4482
  %4836 = fadd fast float %4831, %4483
  %4837 = fadd fast float %4834, %4484
  %4838 = fmul fast float %4827, %4823
  %4839 = fmul fast float %4830, %4824
  %4840 = fmul fast float %4833, %4825
  %4841 = fadd fast float %4838, %4479
  %4842 = fadd fast float %4839, %4480
  %4843 = fadd fast float %4840, %4481
  br label %4557

; <label>:4844                                    ; preds = %4557
  br label %4845

; <label>:4845                                    ; preds = %4844, %4445
  %4846 = phi float [ %4447, %4445 ], [ %4558, %4844 ]
  %4847 = phi float [ %4448, %4445 ], [ %4559, %4844 ]
  %4848 = phi float [ %4449, %4445 ], [ %4560, %4844 ]
  %4849 = phi float [ %4450, %4445 ], [ %4561, %4844 ]
  %4850 = phi float [ %4451, %4445 ], [ %4562, %4844 ]
  %4851 = phi float [ %4452, %4445 ], [ %4563, %4844 ]
  %4852 = add i32 %4446, 1
  %4853 = icmp ugt i32 %4852, %4442
  br i1 %4853, label %4854, label %4445

; <label>:4854                                    ; preds = %4845
  br label %4855

; <label>:4855                                    ; preds = %4854, %4421, %4411
  %4856 = phi float [ %4412, %4411 ], [ %4412, %4421 ], [ %4846, %4854 ]
  %4857 = phi float [ %4413, %4411 ], [ %4413, %4421 ], [ %4847, %4854 ]
  %4858 = phi float [ %4414, %4411 ], [ %4414, %4421 ], [ %4848, %4854 ]
  %4859 = phi float [ %4415, %4411 ], [ %4415, %4421 ], [ %4849, %4854 ]
  %4860 = phi float [ %4416, %4411 ], [ %4416, %4421 ], [ %4850, %4854 ]
  %4861 = phi float [ %4417, %4411 ], [ %4417, %4421 ], [ %4851, %4854 ]
  %4862 = call float @dx.op.unary.f32(i32 24, float %2811)  ; Sqrt(value)
  %4863 = call float @dx.op.unary.f32(i32 24, float %2812)  ; Sqrt(value)
  %4864 = call float @dx.op.unary.f32(i32 24, float %2813)  ; Sqrt(value)
  %4865 = fmul fast float %4862, %4859
  %4866 = fmul fast float %4863, %4860
  %4867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.f32 %4867, 0
  br i1 %189, label %4869, label %4889

; <label>:4869                                    ; preds = %4855
  %4870 = fadd fast float %4861, %2179
  %4871 = fmul fast float %4870, %2180
  %4872 = fsub fast float 1.000000e+00, %2180
  %4873 = call float @dx.op.unary.f32(i32 7, float %4872)  ; Saturate(value)
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 3
  %4876 = fmul fast float %4875, %4873
  %4877 = fadd fast float %4876, %4871
  %4878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4879 = extractvalue %dx.types.CBufRet.f32 %4878, 0
  %4880 = fmul fast float %4879, %4151
  %4881 = fsub fast float %4877, %4880
  %4882 = fadd fast float %4866, %4865
  %4883 = fmul fast float %4868, %4882
  %4884 = extractvalue %dx.types.CBufRet.f32 %4874, 1
  %4885 = fsub fast float %4881, %4884
  %4886 = extractvalue %dx.types.CBufRet.f32 %4874, 2
  %4887 = fmul fast float %4885, %4886
  %4888 = call float @dx.op.unary.f32(i32 7, float %4887)  ; Saturate(value)
  br label %4905

; <label>:4889                                    ; preds = %4855
  %4890 = fmul fast float %4864, %4861
  %4891 = fmul fast float %4868, %4865
  %4892 = fmul fast float %4868, %4866
  %4893 = fmul fast float %4890, %4868
  %4894 = add i32 %44, 196
  %4895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4894, i32 undef)  ; BufferLoad(srv,index,wot)
  %4896 = extractvalue %dx.types.ResRet.i32 %4895, 0
  %4897 = and i32 %4896, 32
  %4898 = icmp eq i32 %4897, 0
  br i1 %4898, label %4905, label %4899

; <label>:4899                                    ; preds = %4889
  %4900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %4901 = extractvalue %dx.types.CBufRet.f32 %4900, 0
  %4902 = fmul fast float %4901, 0x3FE99999A0000000
  %4903 = fadd fast float %4901, %4891
  %4904 = fadd fast float %4902, %4893
  br label %4905

; <label>:4905                                    ; preds = %4899, %4889, %4869
  %4906 = phi float [ %4883, %4869 ], [ %4903, %4899 ], [ %4891, %4889 ]
  %4907 = phi float [ %4888, %4869 ], [ %4892, %4899 ], [ %4892, %4889 ]
  %4908 = phi float [ 1.000000e+00, %4869 ], [ %4904, %4899 ], [ %4893, %4889 ]
  %4909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4910 = extractvalue %dx.types.CBufRet.f32 %4909, 0
  %4911 = fmul fast float %4910, %4857
  %4912 = fmul fast float %4910, %4858
  %4913 = fadd fast float %4857, %4856
  %4914 = select i1 %189, float %4913, float %4856
  %4915 = fmul float %4914, %4910
  %4916 = select i1 %189, float 0.000000e+00, float %4911
  %4917 = select i1 %189, float 0.000000e+00, float %4912
  %4918 = fmul fast float %4906, %4862
  %4919 = fmul fast float %4907, %4863
  %4920 = fmul fast float %4908, %4864
  %4921 = fadd fast float %4915, %4918
  %4922 = fadd fast float %4916, %4919
  %4923 = fadd fast float %4917, %4920
  %4924 = select i1 %189, float %4907, float %4922
  %4925 = select i1 %189, float %4908, float %4923
  %4926 = call float @dx.op.binary.f32(i32 36, float %4921, float 3.225500e+04)  ; FMin(a,b)
  %4927 = call float @dx.op.binary.f32(i32 36, float %4924, float 3.225500e+04)  ; FMin(a,b)
  %4928 = call float @dx.op.binary.f32(i32 36, float %4925, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %4926)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %4927)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %4928)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readnone
declare float @dx.op.legacyF16ToF32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.tertiary.f32(i32, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
!dx.viewIdState = !{!57}
!dx.entryPoints = !{!58}

!0 = !{!"clang version 3.7 (tags/RELEASE_370/final)"}
!1 = !{i32 1, i32 1}
!2 = !{i32 1, i32 6}
!3 = !{!"ps", i32 6, i32 1}
!4 = !{!5, null, !48, !51}
!5 = !{!6, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47}
!6 = !{i32 0, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 3, i32 0, i32 -1, i32 2, i32 0, !7}
!7 = !{i32 0, i32 9}
!8 = !{i32 1, [0 x %"class.Texture2D<vector<float, 4> >"]* undef, !"", i32 4, i32 0, i32 -1, i32 2, i32 0, !7}
!9 = !{i32 2, [0 x %"class.Texture2DArray<vector<float, 4> >"]* undef, !"", i32 6, i32 0, i32 -1, i32 7, i32 0, !7}
!10 = !{i32 3, [0 x %"class.Texture3D<vector<float, 4> >"]* undef, !"", i32 7, i32 0, i32 -1, i32 4, i32 0, !7}
!11 = !{i32 4, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 37, i32 1, i32 11, i32 0, null}
!12 = !{i32 5, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 33, i32 1, i32 2, i32 0, !7}
!13 = !{i32 6, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 16, i32 1, i32 7, i32 0, !7}
!14 = !{i32 7, %"class.Texture3D<vector<float, 4> >"* undef, !"", i32 2, i32 15, i32 1, i32 4, i32 0, !7}
!15 = !{i32 8, %"class.Texture2D<float>"* undef, !"", i32 2, i32 14, i32 1, i32 2, i32 0, !7}
!16 = !{i32 9, %"class.Texture2D<vector<float, 2> >"* undef, !"", i32 2, i32 13, i32 1, i32 2, i32 0, !7}
!17 = !{i32 10, %"class.Texture2D<unsigned int>"* undef, !"", i32 2, i32 17, i32 1, i32 2, i32 0, !18}
!18 = !{i32 0, i32 5}
!19 = !{i32 11, %"class.Texture3D<vector<float, 3> >"* undef, !"", i32 2, i32 18, i32 1, i32 4, i32 0, !7}
!20 = !{i32 12, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 23, i32 1, i32 7, i32 0, !7}
!21 = !{i32 13, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 24, i32 1, i32 7, i32 0, !7}
!22 = !{i32 14, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 25, i32 1, i32 7, i32 0, !7}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 66, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !18}
!27 = !{i32 19, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!30 = !{i32 22, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!31 = !{i32 23, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!32 = !{i32 24, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!33 = !{i32 25, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!34 = !{i32 26, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!35 = !{i32 27, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!40 = !{i32 32, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!42 = !{i32 34, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!45 = !{i32 37, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!46 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!47 = !{i32 39, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!48 = !{!49, !50}
!49 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!50 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!51 = !{!52, !53, !54, !55, !56}
!52 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!53 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!56 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!57 = !{[32 x i32] [i32 30, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !80}
!59 = !{!60, !78, null}
!60 = !{!61, !64, !66, !68, !70, !71, !72, !74, !76, !77}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !65}
!65 = !{i32 3, i32 2}
!66 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !67}
!67 = !{i32 3, i32 15}
!68 = !{i32 3, !"LMAPCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !69}
!69 = !{i32 3, i32 7}
!70 = !{i32 4, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 4, i8 0, !69}
!71 = !{i32 5, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 5, i8 0, !67}
!72 = !{i32 6, !"NORMAL_TRANSFORM", i8 9, i8 0, !73, i8 2, i32 1, i8 4, i32 6, i8 0, !67}
!73 = !{i32 1}
!74 = !{i32 7, !"MATERIAL_DATA_OFFSET", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 7, i8 0, !75}
!75 = !{i32 3, i32 1}
!76 = !{i32 8, !"TRANSIENT_INDEX", i8 5, i8 0, !62, i8 1, i32 1, i8 1, i32 7, i8 1, !75}
!77 = !{i32 9, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!78 = !{!79}
!79 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !67}
!80 = !{i32 0, i64 24}
!81 = distinct !{!81, !"dx.controlflow.hints", i32 1}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}

