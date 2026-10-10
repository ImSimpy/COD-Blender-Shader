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
; SH_RED                   0   xyzw        5     NONE   float   xyzw
; SH_GREEN                 0   xyzw        6     NONE   float   xyzw
; SH_BLUE                  0   xyzw        7     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          8     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        9     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw       10     NONE    uint   x zw
; SV_IsFrontFace           0   x          11    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 9c2e5ab975b0ede7998817603c41a24b
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
; SH_RED                   0                 linear       
; SH_GREEN                 0                 linear       
; SH_BLUE                  0                 linear       
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
;                                   texture     f32          2d      T1      t0,space4unbounded
;                                   texture     f32     2darray      T2      t0,space6unbounded
;                                   texture     f32          3d      T3      t0,space7unbounded
;                                   texture    byte         r/o      T4     t37,space1     1
;                                   texture     f32          2d      T5     t33,space2     1
;                                   texture    byte         r/o      T6      t3,space1     1
;                                   texture    byte         r/o      T7      t4,space1     1
;                                   texture    byte         r/o      T8      t5,space1     1
;                                   texture    byte         r/o      T9      t6,space1     1
;                                   texture     u32     2darray     T10     t11,space2     1
;                                   texture     f32     2darray     T11     t10,space2     1
;                                   texture     f32          2d     T12     t69,space2     1
;                                   texture    byte         r/o     T13     t49,space1     1
;                                   texture    byte         r/o     T14     t50,space1     1
;                                   texture    byte         r/o     T15     t51,space1     1
;                                   texture    byte         r/o     T16     t52,space1     1
;                                   texture    byte         r/o     T17     t16,space1     1
;                                   texture    byte         r/o     T18     t17,space1     1
;                                   texture     f32          2d     T19     t37,space2     1
;                                   texture     f32          2d     T20             t0     1
;                                   texture     f32     2darray     T21     t49,space2     1
;                                   texture     f32          2d     T22     t58,space2     1
;                                   texture     f32          2d     T23     t59,space2     1
;                                   texture     f32          2d     T24     t60,space2     1
;                                   texture    byte         r/o     T25     t45,space1     1
;                                   texture    byte         r/o     T26     t46,space1     1
;                                   texture    byte         r/o     T27     t47,space1     1
;                                   texture    byte         r/o     T28     t48,space1     1
;                                   texture     f32          2d     T29     t57,space2     1
;                                   texture    byte         r/o     T30     t69,space1     1
;                                   texture     f32     2darray     T31     t35,space2     1
;                                   texture     f32          2d     T32     t34,space2     1
;                                   texture     f32          3d     T33     t31,space2     1
;                                   texture    byte         r/o     T34     t10,space1     1
;                                   texture    byte         r/o     T35     t68,space1     1
;                                   texture     f32          2d     T36      t0,space2     1
;                                   texture    byte         r/o     T37     t11,space1     1
;                                   texture    byte         r/o     T38     t13,space1     1
;                                   texture     f32          2d     T39     t48,space2     1
;
;
; ViewId state:
;
; Number of inputs: 45, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 40, 42, 43, 44 }
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
%"class.Texture2DArray<unsigned int>" = type { i32, %"class.Texture2DArray<unsigned int>::mips_type" }
%"class.Texture2DArray<unsigned int>::mips_type" = type { i32 }
%"class.Texture2DArray<float>" = type { float, %"class.Texture2DArray<float>::mips_type" }
%"class.Texture2DArray<float>::mips_type" = type { i32 }
%"class.Texture2D<vector<float, 3> >" = type { <3 x float>, %"class.Texture2D<vector<float, 3> >::mips_type" }
%"class.Texture2D<vector<float, 3> >::mips_type" = type { i32 }
%"class.Texture3D<float>" = type { float, %"class.Texture3D<float>::mips_type" }
%"class.Texture3D<float>::mips_type" = type { i32 }
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
  %1 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 39, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 38, i32 13, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 37, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 36, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %5 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 35, i32 68, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %6 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 34, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %7 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 33, i32 31, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %8 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 32, i32 34, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %9 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 31, i32 35, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %10 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 30, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %11 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 29, i32 57, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %12 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 28, i32 48, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %13 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 27, i32 47, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %14 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 26, i32 46, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %15 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 25, i32 45, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %16 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 24, i32 60, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %17 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 23, i32 59, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %18 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 22, i32 58, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %19 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 21, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %20 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 20, i32 0, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %21 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 19, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %22 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 18, i32 17, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %23 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 17, i32 16, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %24 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 16, i32 52, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %25 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 15, i32 51, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %26 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 14, i32 50, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %27 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 13, i32 49, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %28 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 12, i32 69, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %29 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 11, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %30 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 10, i32 11, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %31 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 9, i32 6, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %32 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 8, i32 5, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %33 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 7, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %34 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 6, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %35 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 5, i32 33, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %36 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 4, i32 37, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %37 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 4, i32 4, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %38 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 3, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %39 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 2, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %40 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 1, i32 1, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %41 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 1, i32 2, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %42 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 2, i32 0, i32 3, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = icmp ne i32 %43, 0
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call i32 @dx.op.loadInput.i32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %82 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %83 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %84 = extractvalue %dx.types.CBufRet.f32 %83, 0
  %85 = fmul fast float %84, %78
  %86 = fmul fast float %84, %79
  %87 = select i1 %44, float 1.000000e+00, float -1.000000e+00
  %88 = call float @dx.op.dot3.f32(i32 55, float %70, float %71, float %72, float %70, float %71, float %72)  ; Dot3(ax,ay,az,bx,by,bz)
  %89 = bitcast float %88 to i32
  %90 = ashr i32 %89, 1
  %91 = sub nsw i32 1597250115, %90
  %92 = bitcast i32 %91 to float
  %93 = fmul fast float %70, %87
  %94 = fmul fast float %93, %92
  %95 = fmul fast float %71, %87
  %96 = fmul fast float %95, %92
  %97 = fmul fast float %72, %87
  %98 = fmul fast float %97, %92
  %99 = fmul fast float %71, %68
  %100 = fmul fast float %72, %67
  %101 = fsub fast float %99, %100
  %102 = fmul fast float %72, %66
  %103 = fmul fast float %70, %68
  %104 = fsub fast float %102, %103
  %105 = fmul fast float %70, %67
  %106 = fmul fast float %71, %66
  %107 = fsub fast float %105, %106
  %108 = fmul fast float %101, %69
  %109 = fmul fast float %104, %69
  %110 = fmul fast float %107, %69
  %111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %112 = extractvalue %dx.types.CBufRet.f32 %111, 2
  %113 = extractvalue %dx.types.CBufRet.f32 %111, 3
  %114 = fmul fast float %85, 2.000000e+00
  %115 = fmul fast float %114, %112
  %116 = fmul fast float %86, 2.000000e+00
  %117 = fmul fast float %116, %113
  %118 = fsub fast float 1.000000e+00, %115
  %119 = fsub fast float 1.000000e+00, %117
  %120 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %121 = extractvalue %dx.types.CBufRet.f32 %120, 0
  %122 = extractvalue %dx.types.CBufRet.f32 %120, 1
  %123 = extractvalue %dx.types.CBufRet.f32 %120, 2
  %124 = fmul fast float %118, %121
  %125 = fmul fast float %118, %122
  %126 = fmul fast float %118, %123
  %127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %128 = extractvalue %dx.types.CBufRet.f32 %127, 0
  %129 = extractvalue %dx.types.CBufRet.f32 %127, 1
  %130 = extractvalue %dx.types.CBufRet.f32 %127, 2
  %131 = fmul fast float %119, %128
  %132 = fmul fast float %119, %129
  %133 = fmul fast float %119, %130
  %134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %135 = extractvalue %dx.types.CBufRet.f32 %134, 0
  %136 = extractvalue %dx.types.CBufRet.f32 %134, 1
  %137 = extractvalue %dx.types.CBufRet.f32 %134, 2
  %138 = fadd fast float %131, %135
  %139 = fadd fast float %138, %124
  %140 = fadd fast float %132, %136
  %141 = fadd fast float %140, %125
  %142 = fadd fast float %133, %137
  %143 = fadd fast float %142, %126
  %144 = fmul fast float %139, %80
  %145 = fmul fast float %141, %80
  %146 = fmul fast float %143, %80
  %147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %148 = extractvalue %dx.types.CBufRet.f32 %147, 2
  %149 = extractvalue %dx.types.CBufRet.f32 %147, 3
  %150 = fmul fast float %148, %85
  %151 = fmul fast float %149, %86
  %152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %153 = extractvalue %dx.types.ResRet.i32 %152, 0
  %154 = and i32 %153, 114688
  %155 = icmp ne i32 %154, 0
  %156 = select i1 %155, float %150, float 0.000000e+00
  %157 = select i1 %155, float %151, float 0.000000e+00
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %156, float %157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = fmul fast float %159, 2.550000e+02
  %161 = fptoui float %160 to i32
  %162 = select i1 %155, i32 %161, i32 0
  %163 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %164 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = extractvalue %dx.types.CBufRet.i32 %164, 3
  %166 = and i32 %165, 3
  %167 = icmp ne i32 %166, 0
  %168 = and i32 %165, 4
  %169 = icmp ne i32 %168, 0
  %170 = and i1 %167, %169
  br i1 %170, label %171, label %182

; <label>:171                                     ; preds = %0
  %172 = extractvalue %dx.types.CBufRet.f32 %163, 3
  %173 = fmul fast float %172, %86
  %174 = extractvalue %dx.types.CBufRet.f32 %163, 2
  %175 = fmul fast float %174, %85
  %176 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %175, float %173, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = fsub fast float 1.000000e+00, %177
  %179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %180 = extractvalue %dx.types.CBufRet.f32 %179, 0
  %181 = fcmp fast olt float %178, %180
  br label %185

; <label>:182                                     ; preds = %0
  %183 = icmp eq i32 %168, 0
  %184 = and i1 %167, %183
  br label %185

; <label>:185                                     ; preds = %182, %171
  %186 = phi i1 [ %181, %171 ], [ %184, %182 ]
  %187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %188 = extractvalue %dx.types.CBufRet.f32 %187, 2
  %189 = fmul fast float %188, 0x3FE3C6EF40000000
  %190 = frem fast float %85, 2.560000e+02
  %191 = frem fast float %86, 2.560000e+02
  %192 = fptoui float %190 to i32
  %193 = fptoui float %191 to i32
  %194 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %192, i32 %193, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %195 = extractvalue %dx.types.ResRet.f32 %194, 0
  %196 = extractvalue %dx.types.ResRet.f32 %194, 1
  %197 = fadd fast float %195, %189
  %198 = fadd fast float %196, %189
  %199 = call float @dx.op.unary.f32(i32 22, float %197)  ; Frc(value)
  %200 = call float @dx.op.unary.f32(i32 22, float %198)  ; Frc(value)
  %201 = add i32 %45, 156
  %202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %201, i32 undef)  ; BufferLoad(srv,index,wot)
  %203 = extractvalue %dx.types.ResRet.i32 %202, 0
  %204 = shl i32 %203, 4
  %205 = and i32 %204, 32752
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = lshr i32 %203, 7
  %208 = and i32 %207, 32752
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = lshr i32 %203, 22
  %211 = shl nuw nsw i32 %210, 5
  %212 = call float @dx.op.legacyF16ToF32(i32 131, i32 %211)  ; LegacyF16ToF32(value)
  %213 = add i32 %45, 216
  %214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %215 = extractvalue %dx.types.ResRet.i32 %214, 0
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = lshr i32 %215, 8
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = lshr i32 %215, 16
  %224 = and i32 %223, 255
  %225 = uitofp i32 %224 to float
  %226 = fmul fast float %225, 0x3F70101020000000
  %227 = add i32 %45, 36
  %228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %227, i32 undef)  ; BufferLoad(srv,index,wot)
  %229 = extractvalue %dx.types.ResRet.i32 %228, 0
  %230 = and i32 %229, 65535
  %231 = call float @dx.op.legacyF16ToF32(i32 131, i32 %230)  ; LegacyF16ToF32(value)
  %232 = lshr i32 %229, 16
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = add i32 %45, 288
  %235 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %234, i32 undef)  ; BufferLoad(srv,index,wot)
  %236 = extractvalue %dx.types.ResRet.i32 %235, 0
  %237 = and i32 %236, 65535
  %238 = call float @dx.op.legacyF16ToF32(i32 131, i32 %237)  ; LegacyF16ToF32(value)
  %239 = lshr i32 %236, 16
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = fmul fast float %238, 0x3F50624DE0000000
  %242 = fmul fast float %240, 0x3F50624DE0000000
  %243 = add i32 %45, 172
  %244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %243, i32 undef)  ; BufferLoad(srv,index,wot)
  %245 = extractvalue %dx.types.ResRet.i32 %244, 0
  %246 = shl i32 %245, 4
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %245, 7
  %250 = and i32 %249, 32752
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = lshr i32 %245, 22
  %253 = shl nuw nsw i32 %252, 5
  %254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %253)  ; LegacyF16ToF32(value)
  %255 = add i32 %45, 232
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = lshr i32 %257, 8
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = lshr i32 %257, 16
  %266 = and i32 %265, 255
  %267 = uitofp i32 %266 to float
  %268 = fmul fast float %267, 0x3F70101020000000
  %269 = add i32 %45, 52
  %270 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %269, i32 undef)  ; BufferLoad(srv,index,wot)
  %271 = extractvalue %dx.types.ResRet.i32 %270, 0
  %272 = and i32 %271, 65535
  %273 = call float @dx.op.legacyF16ToF32(i32 131, i32 %272)  ; LegacyF16ToF32(value)
  %274 = lshr i32 %271, 16
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = add i32 %45, 304
  %277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %276, i32 undef)  ; BufferLoad(srv,index,wot)
  %278 = extractvalue %dx.types.ResRet.i32 %277, 0
  %279 = and i32 %278, 65535
  %280 = call float @dx.op.legacyF16ToF32(i32 131, i32 %279)  ; LegacyF16ToF32(value)
  %281 = lshr i32 %278, 16
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = fmul fast float %280, 0x3F50624DE0000000
  %284 = fmul fast float %282, 0x3F50624DE0000000
  %285 = add i32 %45, 188
  %286 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %285, i32 undef)  ; BufferLoad(srv,index,wot)
  %287 = extractvalue %dx.types.ResRet.i32 %286, 0
  %288 = shl i32 %287, 4
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %287, 7
  %292 = and i32 %291, 32752
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = lshr i32 %287, 22
  %295 = shl nuw nsw i32 %294, 5
  %296 = call float @dx.op.legacyF16ToF32(i32 131, i32 %295)  ; LegacyF16ToF32(value)
  %297 = add i32 %45, 248
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %299, 8
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = lshr i32 %299, 16
  %308 = and i32 %307, 255
  %309 = uitofp i32 %308 to float
  %310 = fmul fast float %309, 0x3F70101020000000
  %311 = add i32 %45, 68
  %312 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %311, i32 undef)  ; BufferLoad(srv,index,wot)
  %313 = extractvalue %dx.types.ResRet.i32 %312, 0
  %314 = and i32 %313, 65535
  %315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %314)  ; LegacyF16ToF32(value)
  %316 = lshr i32 %313, 16
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = add i32 %45, 320
  %319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %318, i32 undef)  ; BufferLoad(srv,index,wot)
  %320 = extractvalue %dx.types.ResRet.i32 %319, 0
  %321 = and i32 %320, 65535
  %322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %321)  ; LegacyF16ToF32(value)
  %323 = lshr i32 %320, 16
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = fmul fast float %322, 0x3F50624DE0000000
  %326 = fmul fast float %324, 0x3F50624DE0000000
  %327 = add i32 %45, 204
  %328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %327, i32 undef)  ; BufferLoad(srv,index,wot)
  %329 = extractvalue %dx.types.ResRet.i32 %328, 0
  %330 = shl i32 %329, 4
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %329, 7
  %334 = and i32 %333, 32752
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = lshr i32 %329, 22
  %337 = shl nuw nsw i32 %336, 5
  %338 = call float @dx.op.legacyF16ToF32(i32 131, i32 %337)  ; LegacyF16ToF32(value)
  %339 = add i32 %45, 264
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %341, 8
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = lshr i32 %341, 16
  %350 = and i32 %349, 255
  %351 = uitofp i32 %350 to float
  %352 = fmul fast float %351, 0x3F70101020000000
  %353 = add i32 %45, 84
  %354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %353, i32 undef)  ; BufferLoad(srv,index,wot)
  %355 = extractvalue %dx.types.ResRet.i32 %354, 0
  %356 = and i32 %355, 65535
  %357 = call float @dx.op.legacyF16ToF32(i32 131, i32 %356)  ; LegacyF16ToF32(value)
  %358 = lshr i32 %355, 16
  %359 = call float @dx.op.legacyF16ToF32(i32 131, i32 %358)  ; LegacyF16ToF32(value)
  %360 = add i32 %45, 336
  %361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %360, i32 undef)  ; BufferLoad(srv,index,wot)
  %362 = extractvalue %dx.types.ResRet.i32 %361, 0
  %363 = and i32 %362, 65535
  %364 = call float @dx.op.legacyF16ToF32(i32 131, i32 %363)  ; LegacyF16ToF32(value)
  %365 = lshr i32 %362, 16
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = fmul fast float %364, 0x3F50624DE0000000
  %368 = fmul fast float %366, 0x3F50624DE0000000
  %369 = add i32 %45, 348
  %370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %371 = extractvalue %dx.types.ResRet.i32 %370, 0
  %372 = and i32 %371, 32
  %373 = icmp eq i32 %372, 0
  %374 = and i32 %371, 64
  %375 = icmp eq i32 %374, 0
  %376 = and i32 %371, 128
  %377 = icmp eq i32 %376, 0
  %378 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %379 = extractvalue %dx.types.ResRet.i32 %378, 0
  %380 = and i32 %379, 2
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %395, label %382

; <label>:382                                     ; preds = %185
  %383 = add i32 %45, 492
  %384 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %383, i32 undef)  ; BufferLoad(srv,index,wot)
  %385 = extractvalue %dx.types.ResRet.i32 %384, 0
  %386 = add i32 %385, 0
  %387 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %386, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %388 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %387, %dx.types.Handle %82, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %389 = extractvalue %dx.types.ResRet.f32 %388, 0
  %390 = extractvalue %dx.types.ResRet.f32 %388, 1
  %391 = extractvalue %dx.types.ResRet.f32 %388, 2
  %392 = fmul fast float %389, %75
  %393 = fmul fast float %390, %76
  %394 = fmul fast float %391, %77
  br label %395

; <label>:395                                     ; preds = %382, %185
  %396 = phi float [ %77, %185 ], [ %394, %382 ]
  %397 = phi float [ %76, %185 ], [ %393, %382 ]
  %398 = phi float [ %75, %185 ], [ %392, %382 ]
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %369, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 2
  %402 = icmp eq i32 %401, 0
  br i1 %402, label %422, label %403

; <label>:403                                     ; preds = %395
  %404 = add i32 %45, 44
  %405 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %404, i32 undef)  ; BufferLoad(srv,index,wot)
  %406 = extractvalue %dx.types.ResRet.i32 %405, 0
  %407 = and i32 %406, 1
  %408 = icmp ne i32 %407, 0
  %409 = select i1 %408, float %398, float 1.000000e+00
  %410 = add i32 %45, 60
  %411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %410, i32 undef)  ; BufferLoad(srv,index,wot)
  %412 = extractvalue %dx.types.ResRet.i32 %411, 0
  %413 = and i32 %412, 1
  %414 = icmp ne i32 %413, 0
  %415 = select i1 %414, float %397, float 1.000000e+00
  %416 = add i32 %45, 76
  %417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %416, i32 undef)  ; BufferLoad(srv,index,wot)
  %418 = extractvalue %dx.types.ResRet.i32 %417, 0
  %419 = and i32 %418, 1
  %420 = icmp ne i32 %419, 0
  %421 = select i1 %420, float %396, float 1.000000e+00
  br label %422

; <label>:422                                     ; preds = %403, %395
  %423 = phi float [ %396, %395 ], [ %421, %403 ]
  %424 = phi float [ %397, %395 ], [ %415, %403 ]
  %425 = phi float [ %398, %395 ], [ %409, %403 ]
  %426 = lshr i32 %400, 20
  %427 = and i32 %426, 3
  %428 = add nuw nsw i32 %427, 1
  %429 = add i32 %45, 24
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = add i32 %45, 28
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = or i32 %434, %431
  %436 = icmp eq i32 %435, 0
  br i1 %436, label %895, label %437

; <label>:437                                     ; preds = %422
  %438 = and i32 %431, 262144
  %439 = icmp ne i32 %438, 0
  %440 = select i1 %439, float %48, float 1.000000e+00
  %441 = select i1 %439, float %49, float 0.000000e+00
  %442 = select i1 %439, float %50, float 0.000000e+00
  %443 = select i1 %439, float %51, float 1.000000e+00
  %444 = select i1 %439, float %52, float %73
  %445 = select i1 %439, float %53, float %74
  %446 = add i32 %45, 284
  %447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %448 = extractvalue %dx.types.ResRet.i32 %447, 0
  %449 = lshr i32 %448, 16
  %450 = call float @dx.op.legacyF16ToF32(i32 131, i32 %449)  ; LegacyF16ToF32(value)
  %451 = fmul fast float %450, 0x3F50624DE0000000
  %452 = add i32 %45, 88
  %453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %452, i32 undef)  ; BufferLoad(srv,index,wot)
  %454 = extractvalue %dx.types.ResRet.i32 %453, 0
  %455 = lshr i32 %454, 16
  %456 = and i32 %455, 255
  %457 = lshr i32 %454, 24
  %458 = add i32 %45, 292
  %459 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %458, i32 undef)  ; BufferLoad(srv,index,wot)
  %460 = extractvalue %dx.types.ResRet.i32 %459, 0
  %461 = and i32 %460, 65535
  %462 = call float @dx.op.legacyF16ToF32(i32 131, i32 %461)  ; LegacyF16ToF32(value)
  %463 = lshr i32 %460, 16
  %464 = call float @dx.op.legacyF16ToF32(i32 131, i32 %463)  ; LegacyF16ToF32(value)
  %465 = add i32 %45, 32
  %466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %465, i32 undef)  ; BufferLoad(srv,index,wot)
  %467 = extractvalue %dx.types.ResRet.i32 %466, 0
  %468 = lshr i32 %467, 22
  %469 = shl nuw nsw i32 %468, 5
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = shl i32 %467, 4
  %472 = and i32 %471, 32752
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = lshr i32 %467, 7
  %475 = and i32 %474, 32752
  %476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %475)  ; LegacyF16ToF32(value)
  %477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %478 = extractvalue %dx.types.CBufRet.f32 %477, 3
  %479 = fmul fast float %478, 1.000000e+03
  %480 = fmul fast float %241, %479
  %481 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %482 = fadd fast float %481, %231
  %483 = fmul fast float %242, %479
  %484 = call float @dx.op.unary.f32(i32 22, float %483)  ; Frc(value)
  %485 = fadd fast float %484, %233
  %486 = fmul fast float %451, %479
  %487 = call float @dx.op.unary.f32(i32 22, float %486)  ; Frc(value)
  %488 = fmul fast float %487, 0x401921FB60000000
  %489 = fadd fast float %488, %470
  %490 = call float @dx.op.unary.f32(i32 13, float %489)  ; Sin(value)
  %491 = call float @dx.op.unary.f32(i32 12, float %489)  ; Cos(value)
  %492 = fsub fast float -0.000000e+00, %490
  %493 = fadd fast float %444, -5.000000e-01
  %494 = fadd fast float %445, -5.000000e-01
  %495 = fmul fast float %462, %493
  %496 = fmul fast float %464, %494
  %497 = fadd fast float %495, 5.000000e-01
  %498 = fadd fast float %496, 5.000000e-01
  %499 = fmul fast float %473, %497
  %500 = fmul fast float %476, %498
  %501 = fmul fast float %491, %499
  %502 = call float @dx.op.tertiary.f32(i32 46, float %492, float %500, float %501)  ; FMad(a,b,c)
  %503 = fmul fast float %490, %499
  %504 = call float @dx.op.tertiary.f32(i32 46, float %491, float %500, float %503)  ; FMad(a,b,c)
  %505 = fadd fast float %482, %502
  %506 = fadd fast float %485, %504
  %507 = icmp ugt i32 %456, 1
  %508 = icmp ugt i32 %454, 33554431
  %509 = or i1 %508, %507
  br i1 %509, label %510, label %535

; <label>:510                                     ; preds = %437
  %511 = add i32 %45, 228
  %512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %511, i32 undef)  ; BufferLoad(srv,index,wot)
  %513 = extractvalue %dx.types.ResRet.i32 %512, 0
  %514 = lshr i32 %513, 16
  %515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %514)  ; LegacyF16ToF32(value)
  %516 = fmul fast float %478, %515
  %517 = call float @dx.op.unary.f32(i32 22, float %516)  ; Frc(value)
  %518 = mul nuw nsw i32 %456, %457
  %519 = uitofp i32 %518 to float
  %520 = fmul fast float %517, %519
  %521 = call float @dx.op.unary.f32(i32 27, float %520)  ; Round_ni(value)
  %522 = fptoui float %521 to i32
  %523 = urem i32 %522, %456
  %524 = udiv i32 %522, %457
  %525 = call float @dx.op.unary.f32(i32 22, float %505)  ; Frc(value)
  %526 = call float @dx.op.unary.f32(i32 22, float %506)  ; Frc(value)
  %527 = uitofp i32 %523 to float
  %528 = uitofp i32 %524 to float
  %529 = fadd fast float %525, %527
  %530 = fadd fast float %526, %528
  %531 = uitofp i32 %456 to float
  %532 = uitofp i32 %457 to float
  %533 = fdiv fast float %529, %531
  %534 = fdiv fast float %530, %532
  br label %535

; <label>:535                                     ; preds = %510, %437
  %536 = phi float [ %533, %510 ], [ %505, %437 ]
  %537 = phi float [ %534, %510 ], [ %506, %437 ]
  %538 = and i32 %431, 16
  %539 = icmp eq i32 %538, 0
  br i1 %539, label %736, label %540

; <label>:540                                     ; preds = %535
  %541 = add i32 %45, 376
  %542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %541, i32 undef)  ; BufferLoad(srv,index,wot)
  %543 = extractvalue %dx.types.ResRet.i32 %542, 0
  %544 = add i32 %543, 0
  %545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %545, %dx.types.Handle %81, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %547 = extractvalue %dx.types.ResRet.f32 %546, 0
  %548 = extractvalue %dx.types.ResRet.f32 %546, 1
  %549 = extractvalue %dx.types.ResRet.f32 %546, 2
  %550 = extractvalue %dx.types.ResRet.f32 %546, 3
  %551 = and i32 %454, 255
  %552 = uitofp i32 %551 to float
  %553 = lshr i32 %454, 8
  %554 = and i32 %553, 255
  %555 = uitofp i32 %554 to float
  %556 = fmul fast float %550, %552
  %557 = fadd fast float %556, %555
  %558 = fmul fast float %557, 0x3F70101000000000
  %559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %560 = extractvalue %dx.types.ResRet.i32 %559, 0
  %561 = and i32 %560, 512
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %571, label %563

; <label>:563                                     ; preds = %540
  %564 = add i32 %45, 460
  %565 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %564, i32 undef)  ; BufferLoad(srv,index,wot)
  %566 = extractvalue %dx.types.ResRet.i32 %565, 0
  %567 = add i32 %566, 0
  %568 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %567, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %569 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %568, %dx.types.Handle %82, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %570 = extractvalue %dx.types.ResRet.f32 %569, 0
  br label %571

; <label>:571                                     ; preds = %563, %540
  %572 = phi float [ %570, %563 ], [ 1.000000e+00, %540 ]
  %573 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %574 = extractvalue %dx.types.ResRet.i32 %573, 0
  %575 = and i32 %574, 33554432
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %683, label %577

; <label>:577                                     ; preds = %571
  %578 = add i32 %45, 224
  %579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %578, i32 undef)  ; BufferLoad(srv,index,wot)
  %580 = extractvalue %dx.types.ResRet.i32 %579, 0
  %581 = and i32 %580, 65535
  %582 = call float @dx.op.legacyF16ToF32(i32 131, i32 %581)  ; LegacyF16ToF32(value)
  %583 = lshr i32 %580, 16
  %584 = call float @dx.op.legacyF16ToF32(i32 131, i32 %583)  ; LegacyF16ToF32(value)
  %585 = add i32 %45, 228
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %585, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = and i32 %587, 65535
  %589 = call float @dx.op.legacyF16ToF32(i32 131, i32 %588)  ; LegacyF16ToF32(value)
  %590 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %213, i32 undef)  ; BufferLoad(srv,index,wot)
  %591 = extractvalue %dx.types.ResRet.i32 %590, 0
  %592 = lshr i32 %591, 24
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %593, 0x3F70101020000000
  %595 = and i32 %591, 255
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %596, 0x3F70101020000000
  %598 = lshr i32 %591, 8
  %599 = and i32 %598, 255
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %600, 0x3F70101020000000
  %602 = lshr i32 %591, 16
  %603 = and i32 %602, 255
  %604 = uitofp i32 %603 to float
  %605 = fmul fast float %604, 0x3F70101020000000
  %606 = add i32 %45, 220
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = lshr i32 %608, 24
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = and i32 %608, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, 0x3F70101020000000
  %615 = lshr i32 %608, 8
  %616 = and i32 %615, 255
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %617, 0x3F70101020000000
  %619 = lshr i32 %608, 16
  %620 = and i32 %619, 255
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = bitcast float %547 to i32
  %624 = ashr i32 %623, 1
  %625 = sub nsw i32 1597463174, %624
  %626 = bitcast i32 %625 to float
  %627 = fmul fast float %547, 5.000000e-01
  %628 = fmul fast float %626, %626
  %629 = fmul fast float %628, %627
  %630 = fsub fast float 1.500000e+00, %629
  %631 = fmul fast float %626, %547
  %632 = fmul fast float %631, %630
  %633 = bitcast float %548 to i32
  %634 = ashr i32 %633, 1
  %635 = sub nsw i32 1597463174, %634
  %636 = bitcast i32 %635 to float
  %637 = fmul fast float %548, 5.000000e-01
  %638 = fmul fast float %636, %636
  %639 = fmul fast float %638, %637
  %640 = fsub fast float 1.500000e+00, %639
  %641 = fmul fast float %636, %548
  %642 = fmul fast float %641, %640
  %643 = bitcast float %549 to i32
  %644 = ashr i32 %643, 1
  %645 = sub nsw i32 1597463174, %644
  %646 = bitcast i32 %645 to float
  %647 = fmul fast float %549, 5.000000e-01
  %648 = fmul fast float %646, %646
  %649 = fmul fast float %648, %647
  %650 = fsub fast float 1.500000e+00, %649
  %651 = fmul fast float %646, %549
  %652 = fmul fast float %651, %650
  %653 = fsub fast float %632, %614
  %654 = fsub fast float %642, %618
  %655 = fsub fast float %652, %622
  %656 = fmul fast float %653, %582
  %657 = fmul fast float %654, %584
  %658 = fmul fast float %655, %589
  %659 = fadd fast float %656, %597
  %660 = fadd fast float %657, %601
  %661 = fadd fast float %658, %605
  %662 = call float @dx.op.unary.f32(i32 7, float %659)  ; Saturate(value)
  %663 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %664 = call float @dx.op.unary.f32(i32 7, float %661)  ; Saturate(value)
  %665 = fmul fast float %662, %662
  %666 = fmul fast float %663, %663
  %667 = fmul fast float %664, %664
  %668 = fsub fast float %665, %547
  %669 = fsub fast float %666, %548
  %670 = fsub fast float %667, %549
  %671 = fmul fast float %668, %572
  %672 = fmul fast float %669, %572
  %673 = fmul fast float %670, %572
  %674 = fadd fast float %671, %547
  %675 = fadd fast float %672, %548
  %676 = fadd fast float %673, %549
  %677 = fadd fast float %594, %558
  %678 = fsub fast float %677, %611
  %679 = call float @dx.op.unary.f32(i32 7, float %678)  ; Saturate(value)
  %680 = fsub fast float %679, %558
  %681 = fmul fast float %680, %572
  %682 = fadd fast float %681, %558
  br label %736

; <label>:683                                     ; preds = %571
  %684 = and i32 %574, 134217728
  %685 = icmp eq i32 %684, 0
  br i1 %685, label %720, label %686

; <label>:686                                     ; preds = %683
  %687 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %688 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %689 = call float @dx.op.unary.f32(i32 24, float %226)  ; Sqrt(value)
  %690 = fadd fast float %687, -5.000000e-01
  %691 = fadd fast float %688, -5.000000e-01
  %692 = fadd fast float %689, -5.000000e-01
  %693 = fmul fast float %690, %572
  %694 = fmul fast float %691, %572
  %695 = fmul fast float %692, %572
  %696 = fadd fast float %693, 5.000000e-01
  %697 = fadd fast float %694, 5.000000e-01
  %698 = fadd fast float %695, 5.000000e-01
  %699 = call float @dx.op.unary.f32(i32 24, float %547)  ; Sqrt(value)
  %700 = call float @dx.op.unary.f32(i32 24, float %548)  ; Sqrt(value)
  %701 = call float @dx.op.unary.f32(i32 24, float %549)  ; Sqrt(value)
  %702 = fmul fast float %696, 2.000000e+00
  %703 = fsub fast float 1.000000e+00, %702
  %704 = fmul fast float %703, %699
  %705 = fadd fast float %704, %702
  %706 = fmul fast float %705, %699
  %707 = fmul fast float %697, 2.000000e+00
  %708 = fsub fast float 1.000000e+00, %707
  %709 = fmul fast float %708, %700
  %710 = fadd fast float %709, %707
  %711 = fmul fast float %710, %700
  %712 = fmul fast float %698, 2.000000e+00
  %713 = fsub fast float 1.000000e+00, %712
  %714 = fmul fast float %713, %701
  %715 = fadd fast float %714, %712
  %716 = fmul fast float %715, %701
  %717 = fmul fast float %706, %706
  %718 = fmul fast float %711, %711
  %719 = fmul fast float %716, %716
  br label %736

; <label>:720                                     ; preds = %683
  %721 = fmul fast float %218, %218
  %722 = fmul fast float %222, %222
  %723 = fmul fast float %226, %226
  %724 = fadd fast float %721, -1.000000e+00
  %725 = fadd fast float %722, -1.000000e+00
  %726 = fadd fast float %723, -1.000000e+00
  %727 = fmul fast float %572, %724
  %728 = fmul fast float %572, %725
  %729 = fmul fast float %572, %726
  %730 = fadd fast float %727, 1.000000e+00
  %731 = fadd fast float %728, 1.000000e+00
  %732 = fadd fast float %729, 1.000000e+00
  %733 = fmul fast float %730, %547
  %734 = fmul fast float %731, %548
  %735 = fmul fast float %732, %549
  br label %736

; <label>:736                                     ; preds = %720, %686, %577, %535
  %737 = phi float [ %682, %577 ], [ %558, %686 ], [ %558, %720 ], [ 0x3FA23C0BE0000000, %535 ]
  %738 = phi float [ %674, %577 ], [ %717, %686 ], [ %733, %720 ], [ 1.000000e+00, %535 ]
  %739 = phi float [ %675, %577 ], [ %718, %686 ], [ %734, %720 ], [ 1.000000e+00, %535 ]
  %740 = phi float [ %676, %577 ], [ %719, %686 ], [ %735, %720 ], [ 1.000000e+00, %535 ]
  %741 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %742 = extractvalue %dx.types.CBufRet.i32 %741, 1
  %743 = and i32 %742, 1
  %744 = icmp ne i32 %743, 0
  %745 = add i32 %45, 356
  %746 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %745, i32 undef)  ; BufferLoad(srv,index,wot)
  %747 = extractvalue %dx.types.ResRet.i32 %746, 0
  %748 = and i32 %747, 32
  %749 = icmp ne i32 %748, 0
  %750 = and i1 %744, %749
  %751 = select i1 %750, float 1.000000e+00, float %738
  %752 = select i1 %750, float 0x3FD3333340000000, float %739
  %753 = select i1 %750, float 0x3FD3333340000000, float %740
  %754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %755 = extractvalue %dx.types.ResRet.i32 %754, 0
  %756 = and i32 %755, 32
  %757 = icmp eq i32 %756, 0
  br i1 %757, label %830, label %758

; <label>:758                                     ; preds = %736
  %759 = add i32 %45, 92
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = add i32 %45, 392
  %763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %762, i32 undef)  ; BufferLoad(srv,index,wot)
  %764 = extractvalue %dx.types.ResRet.i32 %763, 0
  %765 = add i32 %764, 0
  %766 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %765, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %767 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %766, %dx.types.Handle %81, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %768 = extractvalue %dx.types.ResRet.f32 %767, 0
  %769 = extractvalue %dx.types.ResRet.f32 %767, 1
  %770 = extractvalue %dx.types.ResRet.f32 %767, 2
  %771 = extractvalue %dx.types.ResRet.f32 %767, 3
  %772 = and i32 %761, 255
  %773 = uitofp i32 %772 to float
  %774 = lshr i32 %761, 8
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = lshr i32 %761, 16
  %778 = and i32 %777, 255
  %779 = uitofp i32 %778 to float
  %780 = fmul fast float %779, 0x3F70101000000000
  %781 = fmul fast float %768, %773
  %782 = fadd fast float %781, %776
  %783 = fmul fast float %782, 0x3F70101000000000
  %784 = fadd fast float %769, -5.000000e-01
  %785 = fadd fast float %771, -5.000000e-01
  %786 = fmul fast float %784, %780
  %787 = fmul fast float %785, %780
  %788 = fadd fast float %786, 5.000000e-01
  %789 = fadd fast float %787, 5.000000e-01
  %790 = fmul fast float %788, 2.000000e+00
  %791 = fadd fast float %790, -1.000000e+00
  %792 = fmul fast float %789, 2.000000e+00
  %793 = fadd fast float %792, -1.000000e+00
  %794 = fadd fast float %791, %793
  %795 = fmul fast float %794, 5.000000e-01
  %796 = fsub fast float %791, %793
  %797 = fmul fast float %796, 5.000000e-01
  %798 = call float @dx.op.unary.f32(i32 6, float %795)  ; FAbs(value)
  %799 = fsub fast float 1.000000e+00, %798
  %800 = call float @dx.op.unary.f32(i32 6, float %797)  ; FAbs(value)
  %801 = fsub fast float %799, %800
  %802 = call float @dx.op.dot3.f32(i32 55, float %795, float %797, float %801, float %795, float %797, float %801)  ; Dot3(ax,ay,az,bx,by,bz)
  %803 = call float @dx.op.unary.f32(i32 25, float %802)  ; Rsqrt(value)
  %804 = fmul fast float %795, %803
  %805 = fmul fast float %797, %803
  %806 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %807 = extractvalue %dx.types.ResRet.i32 %806, 0
  %808 = and i32 %807, 67108864
  %809 = icmp eq i32 %808, 0
  br i1 %809, label %826, label %810

; <label>:810                                     ; preds = %758
  %811 = add i32 %45, 280
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %811, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 65535
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %446, i32 undef)  ; BufferLoad(srv,index,wot)
  %817 = extractvalue %dx.types.ResRet.i32 %816, 0
  %818 = and i32 %817, 65535
  %819 = call float @dx.op.legacyF16ToF32(i32 131, i32 %818)  ; LegacyF16ToF32(value)
  %820 = lshr i32 %813, 16
  %821 = call float @dx.op.legacyF16ToF32(i32 131, i32 %820)  ; LegacyF16ToF32(value)
  %822 = fsub fast float %783, %821
  %823 = fmul fast float %822, %815
  %824 = fadd fast float %823, %819
  %825 = call float @dx.op.unary.f32(i32 7, float %824)  ; Saturate(value)
  br label %826

; <label>:826                                     ; preds = %810, %758
  %827 = phi float [ %825, %810 ], [ %783, %758 ]
  %828 = call float @dx.op.dot2.f32(i32 54, float %804, float %805, float %440, float %441)  ; Dot2(ax,ay,bx,by)
  %829 = call float @dx.op.dot2.f32(i32 54, float %804, float %805, float %442, float %443)  ; Dot2(ax,ay,bx,by)
  br label %830

; <label>:830                                     ; preds = %826, %736
  %831 = phi float [ %827, %826 ], [ 0x3FD6666660000000, %736 ]
  %832 = phi float [ %828, %826 ], [ 0.000000e+00, %736 ]
  %833 = phi float [ %829, %826 ], [ 0.000000e+00, %736 ]
  %834 = phi float [ %770, %826 ], [ 1.000000e+00, %736 ]
  %835 = add i32 %45, 160
  %836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %835, i32 undef)  ; BufferLoad(srv,index,wot)
  %837 = extractvalue %dx.types.ResRet.i32 %836, 0
  %838 = lshr i32 %837, 22
  %839 = shl nuw nsw i32 %838, 5
  %840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %839)  ; LegacyF16ToF32(value)
  %841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %842 = extractvalue %dx.types.ResRet.i32 %841, 0
  %843 = and i32 %842, 64
  %844 = icmp eq i32 %843, 0
  br i1 %844, label %878, label %845

; <label>:845                                     ; preds = %830
  %846 = add i32 %45, 408
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %846, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = add i32 %848, 0
  %850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %849, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %851 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %852 = extractvalue %dx.types.ResRet.i32 %851, 0
  %853 = and i32 %852, 131072
  %854 = icmp eq i32 %853, 0
  %855 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %850, %dx.types.Handle %81, float %536, float %537, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %856 = extractvalue %dx.types.ResRet.f32 %855, 0
  %857 = extractvalue %dx.types.ResRet.f32 %855, 1
  %858 = extractvalue %dx.types.ResRet.f32 %855, 2
  %859 = fmul fast float %856, %206
  %860 = fmul fast float %857, %209
  %861 = fmul fast float %858, %212
  br i1 %854, label %868, label %862

; <label>:862                                     ; preds = %845
  %863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %864 = extractvalue %dx.types.CBufRet.f32 %863, 0
  %865 = fmul fast float %864, %859
  %866 = fmul fast float %864, %860
  %867 = fmul fast float %864, %861
  br label %868

; <label>:868                                     ; preds = %862, %845
  %869 = phi float [ %865, %862 ], [ %859, %845 ]
  %870 = phi float [ %866, %862 ], [ %860, %845 ]
  %871 = phi float [ %867, %862 ], [ %861, %845 ]
  %872 = fmul fast float %869, %840
  %873 = select i1 %186, float %872, float %869
  %874 = call float @dx.op.dot3.f32(i32 55, float %873, float %870, float %871, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %875 = select i1 %186, float 0.000000e+00, float %869
  %876 = select i1 %186, float %874, float %870
  %877 = select i1 %186, float 0.000000e+00, float %871
  br label %878

; <label>:878                                     ; preds = %868, %830
  %879 = phi float [ %875, %868 ], [ 0.000000e+00, %830 ]
  %880 = phi float [ %876, %868 ], [ 0.000000e+00, %830 ]
  %881 = phi float [ %877, %868 ], [ 0.000000e+00, %830 ]
  %882 = add i32 %45, 96
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %882, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = and i32 %884, 255
  %886 = uitofp i32 %885 to float
  %887 = lshr i32 %884, 8
  %888 = and i32 %887, 255
  %889 = uitofp i32 %888 to float
  %890 = call float @dx.op.dot3.f32(i32 55, float %751, float %752, float %753, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %891 = fmul fast float %889, %890
  %892 = fadd fast float %891, %886
  %893 = fmul fast float %892, 0x3F70101020000000
  %894 = call float @dx.op.unary.f32(i32 7, float %893)  ; Saturate(value)
  br label %895

; <label>:895                                     ; preds = %878, %422
  %896 = phi float [ 0.000000e+00, %422 ], [ %832, %878 ]
  %897 = phi float [ 0.000000e+00, %422 ], [ %833, %878 ]
  %898 = phi float [ 0.000000e+00, %422 ], [ %751, %878 ]
  %899 = phi float [ 0.000000e+00, %422 ], [ %752, %878 ]
  %900 = phi float [ 0.000000e+00, %422 ], [ %753, %878 ]
  %901 = phi float [ 0.000000e+00, %422 ], [ %879, %878 ]
  %902 = phi float [ 0.000000e+00, %422 ], [ %880, %878 ]
  %903 = phi float [ 0.000000e+00, %422 ], [ %881, %878 ]
  %904 = phi float [ 0.000000e+00, %422 ], [ %737, %878 ]
  %905 = phi float [ 0.000000e+00, %422 ], [ 1.000000e+00, %878 ]
  %906 = phi float [ 0.000000e+00, %422 ], [ %831, %878 ]
  %907 = phi float [ 0.000000e+00, %422 ], [ %834, %878 ]
  %908 = phi float [ 0.000000e+00, %422 ], [ %894, %878 ]
  br i1 %373, label %1750, label %909

; <label>:909                                     ; preds = %895
  %910 = icmp ult i32 %428, 2
  %911 = add i32 %45, 40
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = add i32 %45, 44
  %915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %914, i32 undef)  ; BufferLoad(srv,index,wot)
  %916 = extractvalue %dx.types.ResRet.i32 %915, 0
  %917 = or i32 %916, %913
  %918 = icmp eq i32 %917, 0
  br i1 %918, label %1750, label %919

; <label>:919                                     ; preds = %909
  %920 = and i32 %913, 262144
  %921 = icmp ne i32 %920, 0
  %922 = select i1 %921, float %48, float 1.000000e+00
  %923 = select i1 %921, float %49, float 0.000000e+00
  %924 = select i1 %921, float %50, float 0.000000e+00
  %925 = select i1 %921, float %51, float 1.000000e+00
  %926 = select i1 %921, float %52, float %73
  %927 = select i1 %921, float %53, float %74
  %928 = add i32 %45, 300
  %929 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %930 = extractvalue %dx.types.ResRet.i32 %929, 0
  %931 = lshr i32 %930, 16
  %932 = call float @dx.op.legacyF16ToF32(i32 131, i32 %931)  ; LegacyF16ToF32(value)
  %933 = fmul fast float %932, 0x3F50624DE0000000
  %934 = add i32 %45, 104
  %935 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %936 = extractvalue %dx.types.ResRet.i32 %935, 0
  %937 = lshr i32 %936, 16
  %938 = and i32 %937, 255
  %939 = lshr i32 %936, 24
  %940 = add i32 %45, 308
  %941 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %940, i32 undef)  ; BufferLoad(srv,index,wot)
  %942 = extractvalue %dx.types.ResRet.i32 %941, 0
  %943 = and i32 %942, 65535
  %944 = call float @dx.op.legacyF16ToF32(i32 131, i32 %943)  ; LegacyF16ToF32(value)
  %945 = lshr i32 %942, 16
  %946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %945)  ; LegacyF16ToF32(value)
  %947 = add i32 %45, 48
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = lshr i32 %949, 22
  %951 = shl nuw nsw i32 %950, 5
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = shl i32 %949, 4
  %954 = and i32 %953, 32752
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = lshr i32 %949, 7
  %957 = and i32 %956, 32752
  %958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %957)  ; LegacyF16ToF32(value)
  %959 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %960 = extractvalue %dx.types.CBufRet.f32 %959, 3
  %961 = fmul fast float %960, 1.000000e+03
  %962 = fmul fast float %283, %961
  %963 = call float @dx.op.unary.f32(i32 22, float %962)  ; Frc(value)
  %964 = fadd fast float %963, %273
  %965 = fmul fast float %284, %961
  %966 = call float @dx.op.unary.f32(i32 22, float %965)  ; Frc(value)
  %967 = fadd fast float %966, %275
  %968 = fmul fast float %933, %961
  %969 = call float @dx.op.unary.f32(i32 22, float %968)  ; Frc(value)
  %970 = fmul fast float %969, 0x401921FB60000000
  %971 = fadd fast float %970, %952
  %972 = call float @dx.op.unary.f32(i32 13, float %971)  ; Sin(value)
  %973 = call float @dx.op.unary.f32(i32 12, float %971)  ; Cos(value)
  %974 = fsub fast float -0.000000e+00, %972
  %975 = fadd fast float %926, -5.000000e-01
  %976 = fadd fast float %927, -5.000000e-01
  %977 = fmul fast float %944, %975
  %978 = fmul fast float %946, %976
  %979 = fadd fast float %977, 5.000000e-01
  %980 = fadd fast float %978, 5.000000e-01
  %981 = fmul fast float %955, %979
  %982 = fmul fast float %958, %980
  %983 = fmul fast float %973, %981
  %984 = call float @dx.op.tertiary.f32(i32 46, float %974, float %982, float %983)  ; FMad(a,b,c)
  %985 = fmul fast float %972, %981
  %986 = call float @dx.op.tertiary.f32(i32 46, float %973, float %982, float %985)  ; FMad(a,b,c)
  %987 = fadd fast float %964, %984
  %988 = fadd fast float %967, %986
  %989 = icmp ugt i32 %938, 1
  %990 = icmp ugt i32 %936, 33554431
  %991 = or i1 %990, %989
  br i1 %991, label %992, label %1017

; <label>:992                                     ; preds = %919
  %993 = add i32 %45, 244
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = lshr i32 %995, 16
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = fmul fast float %960, %997
  %999 = call float @dx.op.unary.f32(i32 22, float %998)  ; Frc(value)
  %1000 = mul nuw nsw i32 %938, %939
  %1001 = uitofp i32 %1000 to float
  %1002 = fmul fast float %999, %1001
  %1003 = call float @dx.op.unary.f32(i32 27, float %1002)  ; Round_ni(value)
  %1004 = fptoui float %1003 to i32
  %1005 = urem i32 %1004, %938
  %1006 = udiv i32 %1004, %939
  %1007 = call float @dx.op.unary.f32(i32 22, float %987)  ; Frc(value)
  %1008 = call float @dx.op.unary.f32(i32 22, float %988)  ; Frc(value)
  %1009 = uitofp i32 %1005 to float
  %1010 = uitofp i32 %1006 to float
  %1011 = fadd fast float %1007, %1009
  %1012 = fadd fast float %1008, %1010
  %1013 = uitofp i32 %938 to float
  %1014 = uitofp i32 %939 to float
  %1015 = fdiv fast float %1011, %1013
  %1016 = fdiv fast float %1012, %1014
  br label %1017

; <label>:1017                                    ; preds = %992, %919
  %1018 = phi float [ %1015, %992 ], [ %987, %919 ]
  %1019 = phi float [ %1016, %992 ], [ %988, %919 ]
  %1020 = and i32 %913, 16777216
  %1021 = icmp eq i32 %1020, 0
  br i1 %1021, label %1131, label %1022

; <label>:1022                                    ; preds = %1017
  %1023 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1024 = extractvalue %dx.types.CBufRet.f32 %1023, 0
  %1025 = extractvalue %dx.types.CBufRet.f32 %1023, 1
  %1026 = extractvalue %dx.types.CBufRet.f32 %1023, 2
  %1027 = fadd fast float %1024, %144
  %1028 = fadd fast float %1025, %145
  %1029 = fadd fast float %1026, %146
  %1030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1031 = extractvalue %dx.types.CBufRet.f32 %1030, 0
  %1032 = call float @dx.op.unary.f32(i32 7, float %1031)  ; Saturate(value)
  %1033 = icmp eq i32 %46, 65535
  br i1 %1033, label %1128, label %1034

; <label>:1034                                    ; preds = %1022
  %1035 = lshr i32 %46, 1
  %1036 = shl i32 %1035, 2
  %1037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1036, i32 undef)  ; BufferLoad(srv,index,wot)
  %1038 = extractvalue %dx.types.ResRet.i32 %1037, 0
  %1039 = and i32 %46, 1
  %1040 = icmp ne i32 %1039, 0
  %1041 = lshr i32 %1038, 16
  %1042 = and i32 %1038, 65535
  %1043 = select i1 %1040, i32 %1041, i32 %1042
  %1044 = icmp eq i32 %1043, 65535
  br i1 %1044, label %1124, label %1045

; <label>:1045                                    ; preds = %1034
  %1046 = mul nuw nsw i32 %1043, 40
  %1047 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1046, i32 undef)  ; BufferLoad(srv,index,wot)
  %1048 = extractvalue %dx.types.ResRet.f32 %1047, 0
  %1049 = extractvalue %dx.types.ResRet.f32 %1047, 1
  %1050 = extractvalue %dx.types.ResRet.f32 %1047, 2
  %1051 = add nuw nsw i32 %1046, 12
  %1052 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1051, i32 undef)  ; BufferLoad(srv,index,wot)
  %1053 = extractvalue %dx.types.ResRet.f32 %1052, 0
  %1054 = extractvalue %dx.types.ResRet.f32 %1052, 1
  %1055 = extractvalue %dx.types.ResRet.f32 %1052, 2
  %1056 = add nuw nsw i32 %1046, 24
  %1057 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1056, i32 undef)  ; BufferLoad(srv,index,wot)
  %1058 = extractvalue %dx.types.ResRet.f32 %1057, 0
  %1059 = extractvalue %dx.types.ResRet.f32 %1057, 1
  %1060 = extractvalue %dx.types.ResRet.f32 %1057, 2
  %1061 = add nuw nsw i32 %1046, 36
  %1062 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.f32 %1062, 0
  %1064 = fsub fast float %1027, %1048
  %1065 = fsub fast float %1028, %1049
  %1066 = fsub fast float %1029, %1050
  %1067 = fmul fast float %1063, %1064
  %1068 = fmul fast float %1063, %1065
  %1069 = fmul fast float %1063, %1066
  %1070 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1071 = call float @dx.op.unary.f32(i32 27, float %1068)  ; Round_ni(value)
  %1072 = call float @dx.op.unary.f32(i32 27, float %1069)  ; Round_ni(value)
  %1073 = fadd fast float %1070, 5.000000e-01
  %1074 = fadd fast float %1071, 5.000000e-01
  %1075 = fadd fast float %1072, 5.000000e-01
  %1076 = fmul fast float %1073, %1053
  %1077 = fmul fast float %1074, %1054
  %1078 = fmul fast float %1075, %1055
  %1079 = shl i32 %46, 2
  %1080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.i32 %1080, 0
  %1082 = add i32 %1081, 0
  %1083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1084 = call float @dx.op.unary.f32(i32 22, float %1076)  ; Frc(value)
  %1085 = call float @dx.op.unary.f32(i32 22, float %1077)  ; Frc(value)
  %1086 = call float @dx.op.unary.f32(i32 22, float %1078)  ; Frc(value)
  %1087 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1083, %dx.types.Handle %40, float %1084, float %1085, float %1086, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1088 = extractvalue %dx.types.ResRet.f32 %1087, 0
  %1089 = extractvalue %dx.types.ResRet.f32 %1087, 1
  %1090 = extractvalue %dx.types.ResRet.f32 %1087, 2
  %1091 = fmul fast float %1088, 1.023000e+03
  %1092 = fmul fast float %1089, 1.023000e+03
  %1093 = fmul fast float %1090, 1.023000e+03
  %1094 = fadd fast float %1091, 5.000000e-01
  %1095 = fadd fast float %1092, 5.000000e-01
  %1096 = fadd fast float %1093, 5.000000e-01
  %1097 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1099 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1100 = fsub fast float %1067, %1070
  %1101 = fsub fast float %1068, %1071
  %1102 = fsub fast float %1069, %1072
  %1103 = fmul fast float %1100, 7.500000e-01
  %1104 = fmul fast float %1101, 7.500000e-01
  %1105 = fmul fast float %1102, 7.500000e-01
  %1106 = fadd fast float %1070, 1.250000e-01
  %1107 = fadd fast float %1106, %1103
  %1108 = fadd fast float %1107, %1097
  %1109 = fadd fast float %1071, 1.250000e-01
  %1110 = fadd fast float %1109, %1104
  %1111 = fadd fast float %1110, %1098
  %1112 = fadd fast float %1072, 1.250000e-01
  %1113 = fadd fast float %1112, %1105
  %1114 = fadd fast float %1113, %1099
  %1115 = fmul fast float %1108, %1058
  %1116 = fmul fast float %1111, %1059
  %1117 = fmul fast float %1114, %1060
  %1118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1119 = extractvalue %dx.types.ResRet.i32 %1118, 0
  %1120 = add i32 %1119, 0
  %1121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1122 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1121, %dx.types.Handle %38, float %1115, float %1116, float %1117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  br label %1124

; <label>:1124                                    ; preds = %1045, %1034
  %1125 = phi float [ %1123, %1045 ], [ -1.000000e+00, %1034 ]
  %1126 = fadd fast float %1125, %1032
  %1127 = call float @dx.op.unary.f32(i32 7, float %1126)  ; Saturate(value)
  br label %1128

; <label>:1128                                    ; preds = %1124, %1022
  %1129 = phi float [ %1127, %1124 ], [ %1032, %1022 ]
  %1130 = fmul fast float %1129, %425
  br label %1131

; <label>:1131                                    ; preds = %1128, %1017
  %1132 = phi float [ %1130, %1128 ], [ %425, %1017 ]
  %1133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1134 = extractvalue %dx.types.ResRet.i32 %1133, 0
  %1135 = and i32 %1134, 256
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1183, label %1137

; <label>:1137                                    ; preds = %1131
  %1138 = add i32 %45, 444
  %1139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1138, i32 undef)  ; BufferLoad(srv,index,wot)
  %1140 = extractvalue %dx.types.ResRet.i32 %1139, 0
  %1141 = add i32 %1140, 0
  %1142 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1141, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1143 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1142, %dx.types.Handle %82, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1144 = extractvalue %dx.types.ResRet.f32 %1143, 0
  %1145 = add i32 %45, 116
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1145, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = shl i32 %1147, 4
  %1149 = and i32 %1148, 32752
  %1150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1149)  ; LegacyF16ToF32(value)
  %1151 = lshr i32 %1147, 7
  %1152 = and i32 %1151, 32752
  %1153 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1152)  ; LegacyF16ToF32(value)
  %1154 = fsub fast float 1.000000e+00, %1132
  %1155 = call float @dx.op.binary.f32(i32 35, float %1154, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1156 = bitcast float %1132 to i32
  %1157 = sitofp i32 %1156 to float
  %1158 = fadd fast float %1157, 0xC1CFBF8940000000
  %1159 = fmul fast float %1153, %1158
  %1160 = fadd fast float %1159, 0x41CFBF8940000000
  %1161 = fptosi float %1160 to i32
  %1162 = bitcast i32 %1161 to float
  %1163 = bitcast float %1155 to i32
  %1164 = sitofp i32 %1163 to float
  %1165 = fadd fast float %1164, 0xC1CFBF8940000000
  %1166 = fmul fast float %1165, %1153
  %1167 = fadd fast float %1166, 0x41CFBF8940000000
  %1168 = fptosi float %1167 to i32
  %1169 = bitcast i32 %1168 to float
  %1170 = fmul fast float %1162, %1150
  %1171 = fmul fast float %1169, %1150
  %1172 = fsub fast float %1155, %1170
  %1173 = fadd fast float %1171, %1155
  %1174 = call float @dx.op.unary.f32(i32 7, float %1172)  ; Saturate(value)
  %1175 = call float @dx.op.unary.f32(i32 7, float %1173)  ; Saturate(value)
  %1176 = fsub fast float %1144, %1174
  %1177 = fsub fast float %1175, %1174
  %1178 = bitcast float %1177 to i32
  %1179 = sub nsw i32 2129859010, %1178
  %1180 = bitcast i32 %1179 to float
  %1181 = fmul fast float %1180, %1176
  %1182 = call float @dx.op.unary.f32(i32 7, float %1181)  ; Saturate(value)
  br label %1183

; <label>:1183                                    ; preds = %1137, %1131
  %1184 = phi float [ %1182, %1137 ], [ %1132, %1131 ]
  %1185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1186 = extractvalue %dx.types.ResRet.i32 %1185, 0
  %1187 = and i32 %1186, 128
  %1188 = icmp eq i32 %1187, 0
  br i1 %1188, label %1205, label %1189

; <label>:1189                                    ; preds = %1183
  %1190 = add i32 %45, 428
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1190, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = add i32 %1192, 0
  %1194 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1193, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1195 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1194, %dx.types.Handle %82, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1196 = extractvalue %dx.types.ResRet.f32 %1195, 0
  %1197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1198 = extractvalue %dx.types.ResRet.i32 %1197, 0
  %1199 = and i32 %1198, 524288
  %1200 = icmp ne i32 %1199, 0
  %1201 = fcmp fast ogt float %1196, 0x3FE0101020000000
  %1202 = select i1 %1201, float 1.000000e+00, float 0.000000e+00
  %1203 = select i1 %1200, float %1202, float %1196
  %1204 = fmul fast float %1203, %1184
  br label %1205

; <label>:1205                                    ; preds = %1189, %1183
  %1206 = phi float [ %1204, %1189 ], [ %1184, %1183 ]
  %1207 = fcmp fast ult float %1206, 0x3F70101020000000
  br i1 %1207, label %1750, label %1208

; <label>:1208                                    ; preds = %1205
  %1209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1210 = extractvalue %dx.types.ResRet.i32 %1209, 0
  %1211 = and i32 %1210, 16
  %1212 = icmp eq i32 %1211, 0
  br i1 %1212, label %1411, label %1213

; <label>:1213                                    ; preds = %1208
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %934, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = add i32 %45, 380
  %1217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1216, i32 undef)  ; BufferLoad(srv,index,wot)
  %1218 = extractvalue %dx.types.ResRet.i32 %1217, 0
  %1219 = add i32 %1218, 0
  %1220 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1219, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1221 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1220, %dx.types.Handle %81, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1222 = extractvalue %dx.types.ResRet.f32 %1221, 0
  %1223 = extractvalue %dx.types.ResRet.f32 %1221, 1
  %1224 = extractvalue %dx.types.ResRet.f32 %1221, 2
  %1225 = extractvalue %dx.types.ResRet.f32 %1221, 3
  %1226 = and i32 %1215, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = lshr i32 %1215, 8
  %1229 = and i32 %1228, 255
  %1230 = uitofp i32 %1229 to float
  %1231 = fmul fast float %1225, %1227
  %1232 = fadd fast float %1231, %1230
  %1233 = fmul fast float %1232, 0x3F70101000000000
  %1234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1235 = extractvalue %dx.types.ResRet.i32 %1234, 0
  %1236 = and i32 %1235, 512
  %1237 = icmp eq i32 %1236, 0
  br i1 %1237, label %1246, label %1238

; <label>:1238                                    ; preds = %1213
  %1239 = add i32 %45, 464
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1239, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = add i32 %1241, 0
  %1243 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1242, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1244 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1243, %dx.types.Handle %82, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1245 = extractvalue %dx.types.ResRet.f32 %1244, 0
  br label %1246

; <label>:1246                                    ; preds = %1238, %1213
  %1247 = phi float [ %1245, %1238 ], [ 1.000000e+00, %1213 ]
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = and i32 %1249, 33554432
  %1251 = icmp eq i32 %1250, 0
  br i1 %1251, label %1358, label %1252

; <label>:1252                                    ; preds = %1246
  %1253 = add i32 %45, 240
  %1254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1253, i32 undef)  ; BufferLoad(srv,index,wot)
  %1255 = extractvalue %dx.types.ResRet.i32 %1254, 0
  %1256 = and i32 %1255, 65535
  %1257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1256)  ; LegacyF16ToF32(value)
  %1258 = lshr i32 %1255, 16
  %1259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1258)  ; LegacyF16ToF32(value)
  %1260 = add i32 %45, 244
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1260, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = and i32 %1262, 65535
  %1264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1263)  ; LegacyF16ToF32(value)
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = lshr i32 %1266, 24
  %1268 = uitofp i32 %1267 to float
  %1269 = fmul fast float %1268, 0x3F70101020000000
  %1270 = and i32 %1266, 255
  %1271 = uitofp i32 %1270 to float
  %1272 = fmul fast float %1271, 0x3F70101020000000
  %1273 = lshr i32 %1266, 8
  %1274 = and i32 %1273, 255
  %1275 = uitofp i32 %1274 to float
  %1276 = fmul fast float %1275, 0x3F70101020000000
  %1277 = lshr i32 %1266, 16
  %1278 = and i32 %1277, 255
  %1279 = uitofp i32 %1278 to float
  %1280 = fmul fast float %1279, 0x3F70101020000000
  %1281 = add i32 %45, 236
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = lshr i32 %1283, 24
  %1285 = uitofp i32 %1284 to float
  %1286 = fmul fast float %1285, 0x3F70101020000000
  %1287 = and i32 %1283, 255
  %1288 = uitofp i32 %1287 to float
  %1289 = fmul fast float %1288, 0x3F70101020000000
  %1290 = lshr i32 %1283, 8
  %1291 = and i32 %1290, 255
  %1292 = uitofp i32 %1291 to float
  %1293 = fmul fast float %1292, 0x3F70101020000000
  %1294 = lshr i32 %1283, 16
  %1295 = and i32 %1294, 255
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1296, 0x3F70101020000000
  %1298 = bitcast float %1222 to i32
  %1299 = ashr i32 %1298, 1
  %1300 = sub nsw i32 1597463174, %1299
  %1301 = bitcast i32 %1300 to float
  %1302 = fmul fast float %1222, 5.000000e-01
  %1303 = fmul fast float %1301, %1301
  %1304 = fmul fast float %1303, %1302
  %1305 = fsub fast float 1.500000e+00, %1304
  %1306 = fmul fast float %1301, %1222
  %1307 = fmul fast float %1306, %1305
  %1308 = bitcast float %1223 to i32
  %1309 = ashr i32 %1308, 1
  %1310 = sub nsw i32 1597463174, %1309
  %1311 = bitcast i32 %1310 to float
  %1312 = fmul fast float %1223, 5.000000e-01
  %1313 = fmul fast float %1311, %1311
  %1314 = fmul fast float %1313, %1312
  %1315 = fsub fast float 1.500000e+00, %1314
  %1316 = fmul fast float %1311, %1223
  %1317 = fmul fast float %1316, %1315
  %1318 = bitcast float %1224 to i32
  %1319 = ashr i32 %1318, 1
  %1320 = sub nsw i32 1597463174, %1319
  %1321 = bitcast i32 %1320 to float
  %1322 = fmul fast float %1224, 5.000000e-01
  %1323 = fmul fast float %1321, %1321
  %1324 = fmul fast float %1323, %1322
  %1325 = fsub fast float 1.500000e+00, %1324
  %1326 = fmul fast float %1321, %1224
  %1327 = fmul fast float %1326, %1325
  %1328 = fsub fast float %1307, %1289
  %1329 = fsub fast float %1317, %1293
  %1330 = fsub fast float %1327, %1297
  %1331 = fmul fast float %1328, %1257
  %1332 = fmul fast float %1329, %1259
  %1333 = fmul fast float %1330, %1264
  %1334 = fadd fast float %1331, %1272
  %1335 = fadd fast float %1332, %1276
  %1336 = fadd fast float %1333, %1280
  %1337 = call float @dx.op.unary.f32(i32 7, float %1334)  ; Saturate(value)
  %1338 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1339 = call float @dx.op.unary.f32(i32 7, float %1336)  ; Saturate(value)
  %1340 = fmul fast float %1337, %1337
  %1341 = fmul fast float %1338, %1338
  %1342 = fmul fast float %1339, %1339
  %1343 = fsub fast float %1340, %1222
  %1344 = fsub fast float %1341, %1223
  %1345 = fsub fast float %1342, %1224
  %1346 = fmul fast float %1343, %1247
  %1347 = fmul fast float %1344, %1247
  %1348 = fmul fast float %1345, %1247
  %1349 = fadd fast float %1346, %1222
  %1350 = fadd fast float %1347, %1223
  %1351 = fadd fast float %1348, %1224
  %1352 = fadd fast float %1269, %1233
  %1353 = fsub fast float %1352, %1286
  %1354 = call float @dx.op.unary.f32(i32 7, float %1353)  ; Saturate(value)
  %1355 = fsub fast float %1354, %1233
  %1356 = fmul fast float %1355, %1247
  %1357 = fadd fast float %1356, %1233
  br label %1411

; <label>:1358                                    ; preds = %1246
  %1359 = and i32 %1249, 134217728
  %1360 = icmp eq i32 %1359, 0
  br i1 %1360, label %1395, label %1361

; <label>:1361                                    ; preds = %1358
  %1362 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %1363 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %1364 = call float @dx.op.unary.f32(i32 24, float %268)  ; Sqrt(value)
  %1365 = fadd fast float %1362, -5.000000e-01
  %1366 = fadd fast float %1363, -5.000000e-01
  %1367 = fadd fast float %1364, -5.000000e-01
  %1368 = fmul fast float %1365, %1247
  %1369 = fmul fast float %1366, %1247
  %1370 = fmul fast float %1367, %1247
  %1371 = fadd fast float %1368, 5.000000e-01
  %1372 = fadd fast float %1369, 5.000000e-01
  %1373 = fadd fast float %1370, 5.000000e-01
  %1374 = call float @dx.op.unary.f32(i32 24, float %1222)  ; Sqrt(value)
  %1375 = call float @dx.op.unary.f32(i32 24, float %1223)  ; Sqrt(value)
  %1376 = call float @dx.op.unary.f32(i32 24, float %1224)  ; Sqrt(value)
  %1377 = fmul fast float %1371, 2.000000e+00
  %1378 = fsub fast float 1.000000e+00, %1377
  %1379 = fmul fast float %1378, %1374
  %1380 = fadd fast float %1379, %1377
  %1381 = fmul fast float %1380, %1374
  %1382 = fmul fast float %1372, 2.000000e+00
  %1383 = fsub fast float 1.000000e+00, %1382
  %1384 = fmul fast float %1383, %1375
  %1385 = fadd fast float %1384, %1382
  %1386 = fmul fast float %1385, %1375
  %1387 = fmul fast float %1373, 2.000000e+00
  %1388 = fsub fast float 1.000000e+00, %1387
  %1389 = fmul fast float %1388, %1376
  %1390 = fadd fast float %1389, %1387
  %1391 = fmul fast float %1390, %1376
  %1392 = fmul fast float %1381, %1381
  %1393 = fmul fast float %1386, %1386
  %1394 = fmul fast float %1391, %1391
  br label %1411

; <label>:1395                                    ; preds = %1358
  %1396 = fmul fast float %260, %260
  %1397 = fmul fast float %264, %264
  %1398 = fmul fast float %268, %268
  %1399 = fadd fast float %1396, -1.000000e+00
  %1400 = fadd fast float %1397, -1.000000e+00
  %1401 = fadd fast float %1398, -1.000000e+00
  %1402 = fmul fast float %1247, %1399
  %1403 = fmul fast float %1247, %1400
  %1404 = fmul fast float %1247, %1401
  %1405 = fadd fast float %1402, 1.000000e+00
  %1406 = fadd fast float %1403, 1.000000e+00
  %1407 = fadd fast float %1404, 1.000000e+00
  %1408 = fmul fast float %1405, %1222
  %1409 = fmul fast float %1406, %1223
  %1410 = fmul fast float %1407, %1224
  br label %1411

; <label>:1411                                    ; preds = %1395, %1361, %1252, %1208
  %1412 = phi float [ %1357, %1252 ], [ %1233, %1361 ], [ %1233, %1395 ], [ 0x3FA23C0BE0000000, %1208 ]
  %1413 = phi float [ %1349, %1252 ], [ %1392, %1361 ], [ %1408, %1395 ], [ 1.000000e+00, %1208 ]
  %1414 = phi float [ %1350, %1252 ], [ %1393, %1361 ], [ %1409, %1395 ], [ 1.000000e+00, %1208 ]
  %1415 = phi float [ %1351, %1252 ], [ %1394, %1361 ], [ %1410, %1395 ], [ 1.000000e+00, %1208 ]
  %1416 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1417 = extractvalue %dx.types.CBufRet.i32 %1416, 1
  %1418 = and i32 %1417, 1
  %1419 = icmp ne i32 %1418, 0
  %1420 = add i32 %45, 356
  %1421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1420, i32 undef)  ; BufferLoad(srv,index,wot)
  %1422 = extractvalue %dx.types.ResRet.i32 %1421, 0
  %1423 = and i32 %1422, 32
  %1424 = icmp ne i32 %1423, 0
  %1425 = and i1 %1419, %1424
  %1426 = select i1 %1425, float 1.000000e+00, float %1413
  %1427 = select i1 %1425, float 0x3FD3333340000000, float %1414
  %1428 = select i1 %1425, float 0x3FD3333340000000, float %1415
  %1429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1430 = extractvalue %dx.types.ResRet.i32 %1429, 0
  %1431 = and i32 %1430, 32
  %1432 = icmp eq i32 %1431, 0
  br i1 %1432, label %1505, label %1433

; <label>:1433                                    ; preds = %1411
  %1434 = add i32 %45, 108
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = add i32 %45, 396
  %1438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1437, i32 undef)  ; BufferLoad(srv,index,wot)
  %1439 = extractvalue %dx.types.ResRet.i32 %1438, 0
  %1440 = add i32 %1439, 0
  %1441 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1440, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1442 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1441, %dx.types.Handle %81, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1443 = extractvalue %dx.types.ResRet.f32 %1442, 0
  %1444 = extractvalue %dx.types.ResRet.f32 %1442, 1
  %1445 = extractvalue %dx.types.ResRet.f32 %1442, 2
  %1446 = extractvalue %dx.types.ResRet.f32 %1442, 3
  %1447 = and i32 %1436, 255
  %1448 = uitofp i32 %1447 to float
  %1449 = lshr i32 %1436, 8
  %1450 = and i32 %1449, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = lshr i32 %1436, 16
  %1453 = and i32 %1452, 255
  %1454 = uitofp i32 %1453 to float
  %1455 = fmul fast float %1454, 0x3F70101000000000
  %1456 = fmul fast float %1443, %1448
  %1457 = fadd fast float %1456, %1451
  %1458 = fmul fast float %1457, 0x3F70101000000000
  %1459 = fadd fast float %1444, -5.000000e-01
  %1460 = fadd fast float %1446, -5.000000e-01
  %1461 = fmul fast float %1459, %1455
  %1462 = fmul fast float %1460, %1455
  %1463 = fadd fast float %1461, 5.000000e-01
  %1464 = fadd fast float %1462, 5.000000e-01
  %1465 = fmul fast float %1463, 2.000000e+00
  %1466 = fadd fast float %1465, -1.000000e+00
  %1467 = fmul fast float %1464, 2.000000e+00
  %1468 = fadd fast float %1467, -1.000000e+00
  %1469 = fadd fast float %1466, %1468
  %1470 = fmul fast float %1469, 5.000000e-01
  %1471 = fsub fast float %1466, %1468
  %1472 = fmul fast float %1471, 5.000000e-01
  %1473 = call float @dx.op.unary.f32(i32 6, float %1470)  ; FAbs(value)
  %1474 = fsub fast float 1.000000e+00, %1473
  %1475 = call float @dx.op.unary.f32(i32 6, float %1472)  ; FAbs(value)
  %1476 = fsub fast float %1474, %1475
  %1477 = call float @dx.op.dot3.f32(i32 55, float %1470, float %1472, float %1476, float %1470, float %1472, float %1476)  ; Dot3(ax,ay,az,bx,by,bz)
  %1478 = call float @dx.op.unary.f32(i32 25, float %1477)  ; Rsqrt(value)
  %1479 = fmul fast float %1470, %1478
  %1480 = fmul fast float %1472, %1478
  %1481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1482 = extractvalue %dx.types.ResRet.i32 %1481, 0
  %1483 = and i32 %1482, 67108864
  %1484 = icmp eq i32 %1483, 0
  br i1 %1484, label %1501, label %1485

; <label>:1485                                    ; preds = %1433
  %1486 = add i32 %45, 296
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1486, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 65535
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1492 = extractvalue %dx.types.ResRet.i32 %1491, 0
  %1493 = and i32 %1492, 65535
  %1494 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1493)  ; LegacyF16ToF32(value)
  %1495 = lshr i32 %1488, 16
  %1496 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1495)  ; LegacyF16ToF32(value)
  %1497 = fsub fast float %1458, %1496
  %1498 = fmul fast float %1497, %1490
  %1499 = fadd fast float %1498, %1494
  %1500 = call float @dx.op.unary.f32(i32 7, float %1499)  ; Saturate(value)
  br label %1501

; <label>:1501                                    ; preds = %1485, %1433
  %1502 = phi float [ %1500, %1485 ], [ %1458, %1433 ]
  %1503 = call float @dx.op.dot2.f32(i32 54, float %1479, float %1480, float %922, float %923)  ; Dot2(ax,ay,bx,by)
  %1504 = call float @dx.op.dot2.f32(i32 54, float %1479, float %1480, float %924, float %925)  ; Dot2(ax,ay,bx,by)
  br label %1505

; <label>:1505                                    ; preds = %1501, %1411
  %1506 = phi float [ %1502, %1501 ], [ 0x3FD6666660000000, %1411 ]
  %1507 = phi float [ %1503, %1501 ], [ 0.000000e+00, %1411 ]
  %1508 = phi float [ %1504, %1501 ], [ 0.000000e+00, %1411 ]
  %1509 = phi float [ %1445, %1501 ], [ 1.000000e+00, %1411 ]
  %1510 = add i32 %45, 176
  %1511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1510, i32 undef)  ; BufferLoad(srv,index,wot)
  %1512 = extractvalue %dx.types.ResRet.i32 %1511, 0
  %1513 = lshr i32 %1512, 22
  %1514 = shl nuw nsw i32 %1513, 5
  %1515 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1514)  ; LegacyF16ToF32(value)
  %1516 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1517 = extractvalue %dx.types.ResRet.i32 %1516, 0
  %1518 = and i32 %1517, 64
  %1519 = icmp eq i32 %1518, 0
  br i1 %1519, label %1553, label %1520

; <label>:1520                                    ; preds = %1505
  %1521 = add i32 %45, 412
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1521, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = add i32 %1523, 0
  %1525 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1524, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1526 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1527 = extractvalue %dx.types.ResRet.i32 %1526, 0
  %1528 = and i32 %1527, 131072
  %1529 = icmp eq i32 %1528, 0
  %1530 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1525, %dx.types.Handle %81, float %1018, float %1019, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1531 = extractvalue %dx.types.ResRet.f32 %1530, 0
  %1532 = extractvalue %dx.types.ResRet.f32 %1530, 1
  %1533 = extractvalue %dx.types.ResRet.f32 %1530, 2
  %1534 = fmul fast float %1531, %248
  %1535 = fmul fast float %1532, %251
  %1536 = fmul fast float %1533, %254
  br i1 %1529, label %1543, label %1537

; <label>:1537                                    ; preds = %1520
  %1538 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1539 = extractvalue %dx.types.CBufRet.f32 %1538, 0
  %1540 = fmul fast float %1539, %1534
  %1541 = fmul fast float %1539, %1535
  %1542 = fmul fast float %1539, %1536
  br label %1543

; <label>:1543                                    ; preds = %1537, %1520
  %1544 = phi float [ %1540, %1537 ], [ %1534, %1520 ]
  %1545 = phi float [ %1541, %1537 ], [ %1535, %1520 ]
  %1546 = phi float [ %1542, %1537 ], [ %1536, %1520 ]
  %1547 = fmul fast float %1544, %1515
  %1548 = select i1 %186, float %1547, float %1544
  %1549 = call float @dx.op.dot3.f32(i32 55, float %1548, float %1545, float %1546, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1550 = select i1 %186, float 0.000000e+00, float %1544
  %1551 = select i1 %186, float %1549, float %1545
  %1552 = select i1 %186, float 0.000000e+00, float %1546
  br label %1553

; <label>:1553                                    ; preds = %1543, %1505
  %1554 = phi float [ %1550, %1543 ], [ 0.000000e+00, %1505 ]
  %1555 = phi float [ %1551, %1543 ], [ 0.000000e+00, %1505 ]
  %1556 = phi float [ %1552, %1543 ], [ 0.000000e+00, %1505 ]
  %1557 = add i32 %45, 112
  %1558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1557, i32 undef)  ; BufferLoad(srv,index,wot)
  %1559 = extractvalue %dx.types.ResRet.i32 %1558, 0
  %1560 = and i32 %1559, 255
  %1561 = uitofp i32 %1560 to float
  %1562 = lshr i32 %1559, 8
  %1563 = and i32 %1562, 255
  %1564 = uitofp i32 %1563 to float
  %1565 = call float @dx.op.dot3.f32(i32 55, float %1426, float %1427, float %1428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1566 = fmul fast float %1564, %1565
  %1567 = fadd fast float %1566, %1561
  %1568 = fmul fast float %1567, 0x3F70101020000000
  %1569 = call float @dx.op.unary.f32(i32 7, float %1568)  ; Saturate(value)
  br i1 %910, label %1570, label %1578

; <label>:1570                                    ; preds = %1553
  %1571 = fsub fast float 1.000000e+00, %1206
  %1572 = fmul fast float %1571, %898
  %1573 = fmul fast float %1571, %899
  %1574 = fmul fast float %1571, %900
  %1575 = fmul fast float %1571, %901
  %1576 = fmul fast float %1571, %902
  %1577 = fmul fast float %1571, %903
  br label %1578

; <label>:1578                                    ; preds = %1570, %1553
  %1579 = phi float [ %1572, %1570 ], [ %898, %1553 ]
  %1580 = phi float [ %1573, %1570 ], [ %899, %1553 ]
  %1581 = phi float [ %1574, %1570 ], [ %900, %1553 ]
  %1582 = phi float [ %1575, %1570 ], [ %901, %1553 ]
  %1583 = phi float [ %1576, %1570 ], [ %902, %1553 ]
  %1584 = phi float [ %1577, %1570 ], [ %903, %1553 ]
  %1585 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1586 = extractvalue %dx.types.ResRet.i32 %1585, 0
  %1587 = and i32 %1586, 3
  %1588 = icmp eq i32 %1587, 3
  br i1 %1588, label %1667, label %1589

; <label>:1589                                    ; preds = %1578
  %1590 = and i32 %1586, 16
  %1591 = icmp ne i32 %1590, 0
  %1592 = select i1 %1591, float %1206, float 0.000000e+00
  %1593 = icmp eq i32 %1587, 0
  br i1 %1593, label %1594, label %1622

; <label>:1594                                    ; preds = %1589
  %1595 = and i32 %1586, 64
  %1596 = icmp ne i32 %1595, 0
  %1597 = select i1 %1596, float %1206, float 0.000000e+00
  %1598 = fsub fast float %1426, %1579
  %1599 = fsub fast float %1427, %1580
  %1600 = fsub fast float %1428, %1581
  %1601 = fmul fast float %1592, %1598
  %1602 = fmul fast float %1592, %1599
  %1603 = fmul fast float %1592, %1600
  %1604 = fadd fast float %1601, %1579
  %1605 = fadd fast float %1602, %1580
  %1606 = fadd fast float %1603, %1581
  %1607 = fsub fast float %1412, %904
  %1608 = fmul fast float %1592, %1607
  %1609 = fadd fast float %1608, %904
  %1610 = fsub fast float %1554, %1582
  %1611 = fsub fast float %1555, %1583
  %1612 = fsub fast float %1556, %1584
  %1613 = fmul fast float %1597, %1610
  %1614 = fmul fast float %1597, %1611
  %1615 = fmul fast float %1597, %1612
  %1616 = fadd fast float %1613, %1582
  %1617 = fadd fast float %1614, %1583
  %1618 = fadd fast float %1615, %1584
  %1619 = fsub fast float %1569, %908
  %1620 = fmul fast float %1592, %1619
  %1621 = fadd fast float %1620, %908
  br label %1667

; <label>:1622                                    ; preds = %1589
  %1623 = icmp eq i32 %1587, 1
  br i1 %1623, label %1624, label %1637

; <label>:1624                                    ; preds = %1622
  %1625 = fadd fast float %1426, -1.000000e+00
  %1626 = fadd fast float %1427, -1.000000e+00
  %1627 = fadd fast float %1428, -1.000000e+00
  %1628 = fmul fast float %1592, %1625
  %1629 = fmul fast float %1592, %1626
  %1630 = fmul fast float %1592, %1627
  %1631 = fadd fast float %1628, 1.000000e+00
  %1632 = fadd fast float %1629, 1.000000e+00
  %1633 = fadd fast float %1630, 1.000000e+00
  %1634 = fmul fast float %1631, %1579
  %1635 = fmul fast float %1632, %1580
  %1636 = fmul fast float %1633, %1581
  br label %1667

; <label>:1637                                    ; preds = %1622
  %1638 = icmp eq i32 %1587, 2
  br i1 %1638, label %1639, label %1667

; <label>:1639                                    ; preds = %1637
  %1640 = call float @dx.op.unary.f32(i32 24, float %1426)  ; Sqrt(value)
  %1641 = call float @dx.op.unary.f32(i32 24, float %1427)  ; Sqrt(value)
  %1642 = call float @dx.op.unary.f32(i32 24, float %1428)  ; Sqrt(value)
  %1643 = fadd fast float %1640, -5.000000e-01
  %1644 = fadd fast float %1641, -5.000000e-01
  %1645 = fadd fast float %1642, -5.000000e-01
  %1646 = fmul fast float %1643, %1592
  %1647 = fmul fast float %1644, %1592
  %1648 = fmul fast float %1645, %1592
  %1649 = fadd fast float %1646, 5.000000e-01
  %1650 = fadd fast float %1647, 5.000000e-01
  %1651 = fadd fast float %1648, 5.000000e-01
  %1652 = fmul fast float %1649, 2.000000e+00
  %1653 = fsub fast float 1.000000e+00, %1652
  %1654 = fmul fast float %1653, %1579
  %1655 = fadd fast float %1654, %1652
  %1656 = fmul fast float %1655, %1579
  %1657 = fmul fast float %1650, 2.000000e+00
  %1658 = fsub fast float 1.000000e+00, %1657
  %1659 = fmul fast float %1658, %1580
  %1660 = fadd fast float %1659, %1657
  %1661 = fmul fast float %1660, %1580
  %1662 = fmul fast float %1651, 2.000000e+00
  %1663 = fsub fast float 1.000000e+00, %1662
  %1664 = fmul fast float %1663, %1581
  %1665 = fadd fast float %1664, %1662
  %1666 = fmul fast float %1665, %1581
  br label %1667

; <label>:1667                                    ; preds = %1639, %1637, %1624, %1594, %1578
  %1668 = phi float [ %1579, %1578 ], [ %1656, %1639 ], [ %1579, %1637 ], [ %1634, %1624 ], [ %1604, %1594 ]
  %1669 = phi float [ %1580, %1578 ], [ %1661, %1639 ], [ %1580, %1637 ], [ %1635, %1624 ], [ %1605, %1594 ]
  %1670 = phi float [ %1581, %1578 ], [ %1666, %1639 ], [ %1581, %1637 ], [ %1636, %1624 ], [ %1606, %1594 ]
  %1671 = phi float [ %1582, %1578 ], [ %1582, %1639 ], [ %1582, %1637 ], [ %1582, %1624 ], [ %1616, %1594 ]
  %1672 = phi float [ %1583, %1578 ], [ %1583, %1639 ], [ %1583, %1637 ], [ %1583, %1624 ], [ %1617, %1594 ]
  %1673 = phi float [ %1584, %1578 ], [ %1584, %1639 ], [ %1584, %1637 ], [ %1584, %1624 ], [ %1618, %1594 ]
  %1674 = phi float [ %904, %1578 ], [ %904, %1639 ], [ %904, %1637 ], [ %904, %1624 ], [ %1609, %1594 ]
  %1675 = phi float [ %908, %1578 ], [ %908, %1639 ], [ %908, %1637 ], [ %908, %1624 ], [ %1621, %1594 ]
  %1676 = and i32 %1586, 12
  %1677 = icmp eq i32 %1676, 12
  br i1 %1677, label %1750, label %1678

; <label>:1678                                    ; preds = %1667
  %1679 = and i32 %1586, 2097184
  %1680 = icmp eq i32 %1679, 2097184
  %1681 = select i1 %1680, float %1206, float 0.000000e+00
  %1682 = and i32 %1586, 4194336
  %1683 = icmp eq i32 %1682, 4194336
  %1684 = select i1 %1683, float %1206, float 0.000000e+00
  %1685 = and i32 %1586, 8388640
  %1686 = icmp eq i32 %1685, 8388640
  %1687 = select i1 %1686, float %1206, float 0.000000e+00
  %1688 = icmp eq i32 %1676, 0
  br i1 %1688, label %1689, label %1702

; <label>:1689                                    ; preds = %1678
  %1690 = fsub fast float %1507, %896
  %1691 = fsub fast float %1508, %897
  %1692 = fmul fast float %1681, %1690
  %1693 = fmul fast float %1681, %1691
  %1694 = fadd fast float %1692, %896
  %1695 = fadd fast float %1693, %897
  %1696 = fsub fast float %1509, %907
  %1697 = fmul fast float %1684, %1696
  %1698 = fadd fast float %1697, %907
  %1699 = fsub fast float %1506, %906
  %1700 = fmul fast float %1687, %1699
  %1701 = fadd fast float %1700, %906
  br label %1750

; <label>:1702                                    ; preds = %1678
  %1703 = icmp eq i32 %1676, 4
  br i1 %1703, label %1704, label %1736

; <label>:1704                                    ; preds = %1702
  %1705 = fmul fast float %1681, %1507
  %1706 = fmul fast float %1681, %1508
  %1707 = fadd fast float %1705, %896
  %1708 = fadd fast float %1706, %897
  %1709 = call float @dx.op.binary.f32(i32 36, float %907, float %1509)  ; FMin(a,b)
  %1710 = fsub fast float %1709, %907
  %1711 = fmul fast float %1710, %1684
  %1712 = fadd fast float %1711, %907
  %1713 = fadd fast float %1506, %906
  %1714 = fmul fast float %1713, 0x3FF337FAE0000000
  %1715 = fmul fast float %906, %906
  %1716 = fmul fast float %1506, %1506
  %1717 = fadd fast float %1716, %1715
  %1718 = fmul fast float %1717, 0x3FE5152B00000000
  %1719 = fmul fast float %906, 0xBFCC1F85E0000000
  %1720 = fmul fast float %1719, %1506
  %1721 = fadd fast float %1720, 0xBFE1363700000000
  %1722 = fadd fast float %1721, %1714
  %1723 = fsub fast float %1722, %1718
  %1724 = fmul fast float %1713, 0x3FBA6F0D00000000
  %1725 = fmul fast float %1717, 0x3FD0432880000000
  %1726 = fmul fast float %906, 0xBFEF110800000000
  %1727 = fmul fast float %1726, %1506
  %1728 = fadd fast float %1727, 1.000000e+00
  %1729 = fsub fast float %1728, %1724
  %1730 = fadd fast float %1729, %1725
  %1731 = fdiv fast float %1723, %1730
  %1732 = call float @dx.op.unary.f32(i32 7, float %1731)  ; Saturate(value)
  %1733 = fsub fast float %1732, %906
  %1734 = fmul fast float %1733, %1687
  %1735 = fadd fast float %1734, %906
  br label %1750

; <label>:1736                                    ; preds = %1702
  %1737 = icmp eq i32 %1676, 8
  br i1 %1737, label %1738, label %1750

; <label>:1738                                    ; preds = %1736
  %1739 = fmul fast float %1681, %1507
  %1740 = fmul fast float %1681, %1508
  %1741 = fadd fast float %1739, %896
  %1742 = fadd fast float %1740, %897
  %1743 = call float @dx.op.binary.f32(i32 36, float %907, float %1509)  ; FMin(a,b)
  %1744 = fsub fast float %1743, %907
  %1745 = fmul fast float %1744, %1684
  %1746 = fadd fast float %1745, %907
  %1747 = fsub fast float %1506, %906
  %1748 = fmul fast float %1687, %1747
  %1749 = fadd fast float %1748, %906
  br label %1750

; <label>:1750                                    ; preds = %1738, %1736, %1704, %1689, %1667, %1205, %909, %895
  %1751 = phi float [ %896, %1667 ], [ %896, %1205 ], [ %896, %895 ], [ %1741, %1738 ], [ %896, %1736 ], [ %1707, %1704 ], [ %1694, %1689 ], [ %896, %909 ]
  %1752 = phi float [ %897, %1667 ], [ %897, %1205 ], [ %897, %895 ], [ %1742, %1738 ], [ %897, %1736 ], [ %1708, %1704 ], [ %1695, %1689 ], [ %897, %909 ]
  %1753 = phi float [ %1668, %1667 ], [ %898, %1205 ], [ %898, %895 ], [ %1668, %1738 ], [ %1668, %1736 ], [ %1668, %1704 ], [ %1668, %1689 ], [ %898, %909 ]
  %1754 = phi float [ %1669, %1667 ], [ %899, %1205 ], [ %899, %895 ], [ %1669, %1738 ], [ %1669, %1736 ], [ %1669, %1704 ], [ %1669, %1689 ], [ %899, %909 ]
  %1755 = phi float [ %1670, %1667 ], [ %900, %1205 ], [ %900, %895 ], [ %1670, %1738 ], [ %1670, %1736 ], [ %1670, %1704 ], [ %1670, %1689 ], [ %900, %909 ]
  %1756 = phi float [ %1671, %1667 ], [ %901, %1205 ], [ %901, %895 ], [ %1671, %1738 ], [ %1671, %1736 ], [ %1671, %1704 ], [ %1671, %1689 ], [ %901, %909 ]
  %1757 = phi float [ %1672, %1667 ], [ %902, %1205 ], [ %902, %895 ], [ %1672, %1738 ], [ %1672, %1736 ], [ %1672, %1704 ], [ %1672, %1689 ], [ %902, %909 ]
  %1758 = phi float [ %1673, %1667 ], [ %903, %1205 ], [ %903, %895 ], [ %1673, %1738 ], [ %1673, %1736 ], [ %1673, %1704 ], [ %1673, %1689 ], [ %903, %909 ]
  %1759 = phi float [ %1674, %1667 ], [ %904, %1205 ], [ %904, %895 ], [ %1674, %1738 ], [ %1674, %1736 ], [ %1674, %1704 ], [ %1674, %1689 ], [ %904, %909 ]
  %1760 = phi float [ %906, %1667 ], [ %906, %1205 ], [ %906, %895 ], [ %1749, %1738 ], [ %906, %1736 ], [ %1735, %1704 ], [ %1701, %1689 ], [ %906, %909 ]
  %1761 = phi float [ %907, %1667 ], [ %907, %1205 ], [ %907, %895 ], [ %1746, %1738 ], [ %907, %1736 ], [ %1712, %1704 ], [ %1698, %1689 ], [ %907, %909 ]
  %1762 = phi float [ %1675, %1667 ], [ %908, %1205 ], [ %908, %895 ], [ %1675, %1738 ], [ %1675, %1736 ], [ %1675, %1704 ], [ %1675, %1689 ], [ %908, %909 ]
  br i1 %375, label %2604, label %1763

; <label>:1763                                    ; preds = %1750
  %1764 = icmp ult i32 %428, 3
  %1765 = add i32 %45, 56
  %1766 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1767 = extractvalue %dx.types.ResRet.i32 %1766, 0
  %1768 = add i32 %45, 60
  %1769 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1768, i32 undef)  ; BufferLoad(srv,index,wot)
  %1770 = extractvalue %dx.types.ResRet.i32 %1769, 0
  %1771 = or i32 %1770, %1767
  %1772 = icmp eq i32 %1771, 0
  br i1 %1772, label %2604, label %1773

; <label>:1773                                    ; preds = %1763
  %1774 = and i32 %1767, 262144
  %1775 = icmp ne i32 %1774, 0
  %1776 = select i1 %1775, float %48, float 1.000000e+00
  %1777 = select i1 %1775, float %49, float 0.000000e+00
  %1778 = select i1 %1775, float %50, float 0.000000e+00
  %1779 = select i1 %1775, float %51, float 1.000000e+00
  %1780 = select i1 %1775, float %52, float %73
  %1781 = select i1 %1775, float %53, float %74
  %1782 = add i32 %45, 316
  %1783 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %1784 = extractvalue %dx.types.ResRet.i32 %1783, 0
  %1785 = lshr i32 %1784, 16
  %1786 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1785)  ; LegacyF16ToF32(value)
  %1787 = fmul fast float %1786, 0x3F50624DE0000000
  %1788 = add i32 %45, 120
  %1789 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1788, i32 undef)  ; BufferLoad(srv,index,wot)
  %1790 = extractvalue %dx.types.ResRet.i32 %1789, 0
  %1791 = lshr i32 %1790, 16
  %1792 = and i32 %1791, 255
  %1793 = lshr i32 %1790, 24
  %1794 = add i32 %45, 324
  %1795 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1794, i32 undef)  ; BufferLoad(srv,index,wot)
  %1796 = extractvalue %dx.types.ResRet.i32 %1795, 0
  %1797 = and i32 %1796, 65535
  %1798 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1797)  ; LegacyF16ToF32(value)
  %1799 = lshr i32 %1796, 16
  %1800 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1799)  ; LegacyF16ToF32(value)
  %1801 = add i32 %45, 64
  %1802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1801, i32 undef)  ; BufferLoad(srv,index,wot)
  %1803 = extractvalue %dx.types.ResRet.i32 %1802, 0
  %1804 = lshr i32 %1803, 22
  %1805 = shl nuw nsw i32 %1804, 5
  %1806 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1805)  ; LegacyF16ToF32(value)
  %1807 = shl i32 %1803, 4
  %1808 = and i32 %1807, 32752
  %1809 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1808)  ; LegacyF16ToF32(value)
  %1810 = lshr i32 %1803, 7
  %1811 = and i32 %1810, 32752
  %1812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1811)  ; LegacyF16ToF32(value)
  %1813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1814 = extractvalue %dx.types.CBufRet.f32 %1813, 3
  %1815 = fmul fast float %1814, 1.000000e+03
  %1816 = fmul fast float %325, %1815
  %1817 = call float @dx.op.unary.f32(i32 22, float %1816)  ; Frc(value)
  %1818 = fadd fast float %1817, %315
  %1819 = fmul fast float %326, %1815
  %1820 = call float @dx.op.unary.f32(i32 22, float %1819)  ; Frc(value)
  %1821 = fadd fast float %1820, %317
  %1822 = fmul fast float %1787, %1815
  %1823 = call float @dx.op.unary.f32(i32 22, float %1822)  ; Frc(value)
  %1824 = fmul fast float %1823, 0x401921FB60000000
  %1825 = fadd fast float %1824, %1806
  %1826 = call float @dx.op.unary.f32(i32 13, float %1825)  ; Sin(value)
  %1827 = call float @dx.op.unary.f32(i32 12, float %1825)  ; Cos(value)
  %1828 = fsub fast float -0.000000e+00, %1826
  %1829 = fadd fast float %1780, -5.000000e-01
  %1830 = fadd fast float %1781, -5.000000e-01
  %1831 = fmul fast float %1798, %1829
  %1832 = fmul fast float %1800, %1830
  %1833 = fadd fast float %1831, 5.000000e-01
  %1834 = fadd fast float %1832, 5.000000e-01
  %1835 = fmul fast float %1809, %1833
  %1836 = fmul fast float %1812, %1834
  %1837 = fmul fast float %1827, %1835
  %1838 = call float @dx.op.tertiary.f32(i32 46, float %1828, float %1836, float %1837)  ; FMad(a,b,c)
  %1839 = fmul fast float %1826, %1835
  %1840 = call float @dx.op.tertiary.f32(i32 46, float %1827, float %1836, float %1839)  ; FMad(a,b,c)
  %1841 = fadd fast float %1818, %1838
  %1842 = fadd fast float %1821, %1840
  %1843 = icmp ugt i32 %1792, 1
  %1844 = icmp ugt i32 %1790, 33554431
  %1845 = or i1 %1844, %1843
  br i1 %1845, label %1846, label %1871

; <label>:1846                                    ; preds = %1773
  %1847 = add i32 %45, 260
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = lshr i32 %1849, 16
  %1851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1850)  ; LegacyF16ToF32(value)
  %1852 = fmul fast float %1814, %1851
  %1853 = call float @dx.op.unary.f32(i32 22, float %1852)  ; Frc(value)
  %1854 = mul nuw nsw i32 %1792, %1793
  %1855 = uitofp i32 %1854 to float
  %1856 = fmul fast float %1853, %1855
  %1857 = call float @dx.op.unary.f32(i32 27, float %1856)  ; Round_ni(value)
  %1858 = fptoui float %1857 to i32
  %1859 = urem i32 %1858, %1792
  %1860 = udiv i32 %1858, %1793
  %1861 = call float @dx.op.unary.f32(i32 22, float %1841)  ; Frc(value)
  %1862 = call float @dx.op.unary.f32(i32 22, float %1842)  ; Frc(value)
  %1863 = uitofp i32 %1859 to float
  %1864 = uitofp i32 %1860 to float
  %1865 = fadd fast float %1861, %1863
  %1866 = fadd fast float %1862, %1864
  %1867 = uitofp i32 %1792 to float
  %1868 = uitofp i32 %1793 to float
  %1869 = fdiv fast float %1865, %1867
  %1870 = fdiv fast float %1866, %1868
  br label %1871

; <label>:1871                                    ; preds = %1846, %1773
  %1872 = phi float [ %1869, %1846 ], [ %1841, %1773 ]
  %1873 = phi float [ %1870, %1846 ], [ %1842, %1773 ]
  %1874 = and i32 %1767, 16777216
  %1875 = icmp eq i32 %1874, 0
  br i1 %1875, label %1985, label %1876

; <label>:1876                                    ; preds = %1871
  %1877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1878 = extractvalue %dx.types.CBufRet.f32 %1877, 0
  %1879 = extractvalue %dx.types.CBufRet.f32 %1877, 1
  %1880 = extractvalue %dx.types.CBufRet.f32 %1877, 2
  %1881 = fadd fast float %1878, %144
  %1882 = fadd fast float %1879, %145
  %1883 = fadd fast float %1880, %146
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 0
  %1886 = call float @dx.op.unary.f32(i32 7, float %1885)  ; Saturate(value)
  %1887 = icmp eq i32 %46, 65535
  br i1 %1887, label %1982, label %1888

; <label>:1888                                    ; preds = %1876
  %1889 = lshr i32 %46, 1
  %1890 = shl i32 %1889, 2
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = and i32 %46, 1
  %1894 = icmp ne i32 %1893, 0
  %1895 = lshr i32 %1892, 16
  %1896 = and i32 %1892, 65535
  %1897 = select i1 %1894, i32 %1895, i32 %1896
  %1898 = icmp eq i32 %1897, 65535
  br i1 %1898, label %1978, label %1899

; <label>:1899                                    ; preds = %1888
  %1900 = mul nuw nsw i32 %1897, 40
  %1901 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1900, i32 undef)  ; BufferLoad(srv,index,wot)
  %1902 = extractvalue %dx.types.ResRet.f32 %1901, 0
  %1903 = extractvalue %dx.types.ResRet.f32 %1901, 1
  %1904 = extractvalue %dx.types.ResRet.f32 %1901, 2
  %1905 = add nuw nsw i32 %1900, 12
  %1906 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1905, i32 undef)  ; BufferLoad(srv,index,wot)
  %1907 = extractvalue %dx.types.ResRet.f32 %1906, 0
  %1908 = extractvalue %dx.types.ResRet.f32 %1906, 1
  %1909 = extractvalue %dx.types.ResRet.f32 %1906, 2
  %1910 = add nuw nsw i32 %1900, 24
  %1911 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1912 = extractvalue %dx.types.ResRet.f32 %1911, 0
  %1913 = extractvalue %dx.types.ResRet.f32 %1911, 1
  %1914 = extractvalue %dx.types.ResRet.f32 %1911, 2
  %1915 = add nuw nsw i32 %1900, 36
  %1916 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.f32 %1916, 0
  %1918 = fsub fast float %1881, %1902
  %1919 = fsub fast float %1882, %1903
  %1920 = fsub fast float %1883, %1904
  %1921 = fmul fast float %1917, %1918
  %1922 = fmul fast float %1917, %1919
  %1923 = fmul fast float %1917, %1920
  %1924 = call float @dx.op.unary.f32(i32 27, float %1921)  ; Round_ni(value)
  %1925 = call float @dx.op.unary.f32(i32 27, float %1922)  ; Round_ni(value)
  %1926 = call float @dx.op.unary.f32(i32 27, float %1923)  ; Round_ni(value)
  %1927 = fadd fast float %1924, 5.000000e-01
  %1928 = fadd fast float %1925, 5.000000e-01
  %1929 = fadd fast float %1926, 5.000000e-01
  %1930 = fmul fast float %1927, %1907
  %1931 = fmul fast float %1928, %1908
  %1932 = fmul fast float %1929, %1909
  %1933 = shl i32 %46, 2
  %1934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.i32 %1934, 0
  %1936 = add i32 %1935, 0
  %1937 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1936, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1938 = call float @dx.op.unary.f32(i32 22, float %1930)  ; Frc(value)
  %1939 = call float @dx.op.unary.f32(i32 22, float %1931)  ; Frc(value)
  %1940 = call float @dx.op.unary.f32(i32 22, float %1932)  ; Frc(value)
  %1941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1937, %dx.types.Handle %40, float %1938, float %1939, float %1940, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1942 = extractvalue %dx.types.ResRet.f32 %1941, 0
  %1943 = extractvalue %dx.types.ResRet.f32 %1941, 1
  %1944 = extractvalue %dx.types.ResRet.f32 %1941, 2
  %1945 = fmul fast float %1942, 1.023000e+03
  %1946 = fmul fast float %1943, 1.023000e+03
  %1947 = fmul fast float %1944, 1.023000e+03
  %1948 = fadd fast float %1945, 5.000000e-01
  %1949 = fadd fast float %1946, 5.000000e-01
  %1950 = fadd fast float %1947, 5.000000e-01
  %1951 = call float @dx.op.unary.f32(i32 27, float %1948)  ; Round_ni(value)
  %1952 = call float @dx.op.unary.f32(i32 27, float %1949)  ; Round_ni(value)
  %1953 = call float @dx.op.unary.f32(i32 27, float %1950)  ; Round_ni(value)
  %1954 = fsub fast float %1921, %1924
  %1955 = fsub fast float %1922, %1925
  %1956 = fsub fast float %1923, %1926
  %1957 = fmul fast float %1954, 7.500000e-01
  %1958 = fmul fast float %1955, 7.500000e-01
  %1959 = fmul fast float %1956, 7.500000e-01
  %1960 = fadd fast float %1924, 1.250000e-01
  %1961 = fadd fast float %1960, %1957
  %1962 = fadd fast float %1961, %1951
  %1963 = fadd fast float %1925, 1.250000e-01
  %1964 = fadd fast float %1963, %1958
  %1965 = fadd fast float %1964, %1952
  %1966 = fadd fast float %1926, 1.250000e-01
  %1967 = fadd fast float %1966, %1959
  %1968 = fadd fast float %1967, %1953
  %1969 = fmul fast float %1962, %1912
  %1970 = fmul fast float %1965, %1913
  %1971 = fmul fast float %1968, %1914
  %1972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.i32 %1972, 0
  %1974 = add i32 %1973, 0
  %1975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1974, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1976 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1975, %dx.types.Handle %38, float %1969, float %1970, float %1971, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1977 = extractvalue %dx.types.ResRet.f32 %1976, 0
  br label %1978

; <label>:1978                                    ; preds = %1899, %1888
  %1979 = phi float [ %1977, %1899 ], [ -1.000000e+00, %1888 ]
  %1980 = fadd fast float %1979, %1886
  %1981 = call float @dx.op.unary.f32(i32 7, float %1980)  ; Saturate(value)
  br label %1982

; <label>:1982                                    ; preds = %1978, %1876
  %1983 = phi float [ %1981, %1978 ], [ %1886, %1876 ]
  %1984 = fmul fast float %1983, %424
  br label %1985

; <label>:1985                                    ; preds = %1982, %1871
  %1986 = phi float [ %1984, %1982 ], [ %424, %1871 ]
  %1987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.i32 %1987, 0
  %1989 = and i32 %1988, 256
  %1990 = icmp eq i32 %1989, 0
  br i1 %1990, label %2037, label %1991

; <label>:1991                                    ; preds = %1985
  %1992 = add i32 %45, 448
  %1993 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1992, i32 undef)  ; BufferLoad(srv,index,wot)
  %1994 = extractvalue %dx.types.ResRet.i32 %1993, 0
  %1995 = add i32 %1994, 0
  %1996 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1995, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1997 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1996, %dx.types.Handle %82, float %1872, float %1873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1998 = extractvalue %dx.types.ResRet.f32 %1997, 0
  %1999 = add i32 %45, 132
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1999, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = shl i32 %2001, 4
  %2003 = and i32 %2002, 32752
  %2004 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2003)  ; LegacyF16ToF32(value)
  %2005 = lshr i32 %2001, 7
  %2006 = and i32 %2005, 32752
  %2007 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2006)  ; LegacyF16ToF32(value)
  %2008 = fsub fast float 1.000000e+00, %1986
  %2009 = call float @dx.op.binary.f32(i32 35, float %2008, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2010 = bitcast float %1986 to i32
  %2011 = sitofp i32 %2010 to float
  %2012 = fadd fast float %2011, 0xC1CFBF8940000000
  %2013 = fmul fast float %2007, %2012
  %2014 = fadd fast float %2013, 0x41CFBF8940000000
  %2015 = fptosi float %2014 to i32
  %2016 = bitcast i32 %2015 to float
  %2017 = bitcast float %2009 to i32
  %2018 = sitofp i32 %2017 to float
  %2019 = fadd fast float %2018, 0xC1CFBF8940000000
  %2020 = fmul fast float %2019, %2007
  %2021 = fadd fast float %2020, 0x41CFBF8940000000
  %2022 = fptosi float %2021 to i32
  %2023 = bitcast i32 %2022 to float
  %2024 = fmul fast float %2016, %2004
  %2025 = fmul fast float %2023, %2004
  %2026 = fsub fast float %2009, %2024
  %2027 = fadd fast float %2025, %2009
  %2028 = call float @dx.op.unary.f32(i32 7, float %2026)  ; Saturate(value)
  %2029 = call float @dx.op.unary.f32(i32 7, float %2027)  ; Saturate(value)
  %2030 = fsub fast float %1998, %2028
  %2031 = fsub fast float %2029, %2028
  %2032 = bitcast float %2031 to i32
  %2033 = sub nsw i32 2129859010, %2032
  %2034 = bitcast i32 %2033 to float
  %2035 = fmul fast float %2034, %2030
  %2036 = call float @dx.op.unary.f32(i32 7, float %2035)  ; Saturate(value)
  br label %2037

; <label>:2037                                    ; preds = %1991, %1985
  %2038 = phi float [ %2036, %1991 ], [ %1986, %1985 ]
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = and i32 %2040, 128
  %2042 = icmp eq i32 %2041, 0
  br i1 %2042, label %2059, label %2043

; <label>:2043                                    ; preds = %2037
  %2044 = add i32 %45, 432
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2044, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = add i32 %2046, 0
  %2048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2049 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2048, %dx.types.Handle %82, float %1872, float %1873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2050 = extractvalue %dx.types.ResRet.f32 %2049, 0
  %2051 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2052 = extractvalue %dx.types.ResRet.i32 %2051, 0
  %2053 = and i32 %2052, 524288
  %2054 = icmp ne i32 %2053, 0
  %2055 = fcmp fast ogt float %2050, 0x3FE0101020000000
  %2056 = select i1 %2055, float 1.000000e+00, float 0.000000e+00
  %2057 = select i1 %2054, float %2056, float %2050
  %2058 = fmul fast float %2057, %2038
  br label %2059

; <label>:2059                                    ; preds = %2043, %2037
  %2060 = phi float [ %2058, %2043 ], [ %2038, %2037 ]
  %2061 = fcmp fast ult float %2060, 0x3F70101020000000
  br i1 %2061, label %2604, label %2062

; <label>:2062                                    ; preds = %2059
  %2063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2064 = extractvalue %dx.types.ResRet.i32 %2063, 0
  %2065 = and i32 %2064, 16
  %2066 = icmp eq i32 %2065, 0
  br i1 %2066, label %2265, label %2067

; <label>:2067                                    ; preds = %2062
  %2068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1788, i32 undef)  ; BufferLoad(srv,index,wot)
  %2069 = extractvalue %dx.types.ResRet.i32 %2068, 0
  %2070 = add i32 %45, 384
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = add i32 %2072, 0
  %2074 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2073, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2075 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2074, %dx.types.Handle %81, float %1872, float %1873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2076 = extractvalue %dx.types.ResRet.f32 %2075, 0
  %2077 = extractvalue %dx.types.ResRet.f32 %2075, 1
  %2078 = extractvalue %dx.types.ResRet.f32 %2075, 2
  %2079 = extractvalue %dx.types.ResRet.f32 %2075, 3
  %2080 = and i32 %2069, 255
  %2081 = uitofp i32 %2080 to float
  %2082 = lshr i32 %2069, 8
  %2083 = and i32 %2082, 255
  %2084 = uitofp i32 %2083 to float
  %2085 = fmul fast float %2079, %2081
  %2086 = fadd fast float %2085, %2084
  %2087 = fmul fast float %2086, 0x3F70101000000000
  %2088 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2089 = extractvalue %dx.types.ResRet.i32 %2088, 0
  %2090 = and i32 %2089, 512
  %2091 = icmp eq i32 %2090, 0
  br i1 %2091, label %2100, label %2092

; <label>:2092                                    ; preds = %2067
  %2093 = add i32 %45, 468
  %2094 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2093, i32 undef)  ; BufferLoad(srv,index,wot)
  %2095 = extractvalue %dx.types.ResRet.i32 %2094, 0
  %2096 = add i32 %2095, 0
  %2097 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2096, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2098 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2097, %dx.types.Handle %82, float %1872, float %1873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2099 = extractvalue %dx.types.ResRet.f32 %2098, 0
  br label %2100

; <label>:2100                                    ; preds = %2092, %2067
  %2101 = phi float [ %2099, %2092 ], [ 1.000000e+00, %2067 ]
  %2102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2103 = extractvalue %dx.types.ResRet.i32 %2102, 0
  %2104 = and i32 %2103, 33554432
  %2105 = icmp eq i32 %2104, 0
  br i1 %2105, label %2212, label %2106

; <label>:2106                                    ; preds = %2100
  %2107 = add i32 %45, 256
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = and i32 %2109, 65535
  %2111 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2110)  ; LegacyF16ToF32(value)
  %2112 = lshr i32 %2109, 16
  %2113 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2112)  ; LegacyF16ToF32(value)
  %2114 = add i32 %45, 260
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2114, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = and i32 %2116, 65535
  %2118 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2117)  ; LegacyF16ToF32(value)
  %2119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %2120 = extractvalue %dx.types.ResRet.i32 %2119, 0
  %2121 = lshr i32 %2120, 24
  %2122 = uitofp i32 %2121 to float
  %2123 = fmul fast float %2122, 0x3F70101020000000
  %2124 = and i32 %2120, 255
  %2125 = uitofp i32 %2124 to float
  %2126 = fmul fast float %2125, 0x3F70101020000000
  %2127 = lshr i32 %2120, 8
  %2128 = and i32 %2127, 255
  %2129 = uitofp i32 %2128 to float
  %2130 = fmul fast float %2129, 0x3F70101020000000
  %2131 = lshr i32 %2120, 16
  %2132 = and i32 %2131, 255
  %2133 = uitofp i32 %2132 to float
  %2134 = fmul fast float %2133, 0x3F70101020000000
  %2135 = add i32 %45, 252
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = lshr i32 %2137, 24
  %2139 = uitofp i32 %2138 to float
  %2140 = fmul fast float %2139, 0x3F70101020000000
  %2141 = and i32 %2137, 255
  %2142 = uitofp i32 %2141 to float
  %2143 = fmul fast float %2142, 0x3F70101020000000
  %2144 = lshr i32 %2137, 8
  %2145 = and i32 %2144, 255
  %2146 = uitofp i32 %2145 to float
  %2147 = fmul fast float %2146, 0x3F70101020000000
  %2148 = lshr i32 %2137, 16
  %2149 = and i32 %2148, 255
  %2150 = uitofp i32 %2149 to float
  %2151 = fmul fast float %2150, 0x3F70101020000000
  %2152 = bitcast float %2076 to i32
  %2153 = ashr i32 %2152, 1
  %2154 = sub nsw i32 1597463174, %2153
  %2155 = bitcast i32 %2154 to float
  %2156 = fmul fast float %2076, 5.000000e-01
  %2157 = fmul fast float %2155, %2155
  %2158 = fmul fast float %2157, %2156
  %2159 = fsub fast float 1.500000e+00, %2158
  %2160 = fmul fast float %2155, %2076
  %2161 = fmul fast float %2160, %2159
  %2162 = bitcast float %2077 to i32
  %2163 = ashr i32 %2162, 1
  %2164 = sub nsw i32 1597463174, %2163
  %2165 = bitcast i32 %2164 to float
  %2166 = fmul fast float %2077, 5.000000e-01
  %2167 = fmul fast float %2165, %2165
  %2168 = fmul fast float %2167, %2166
  %2169 = fsub fast float 1.500000e+00, %2168
  %2170 = fmul fast float %2165, %2077
  %2171 = fmul fast float %2170, %2169
  %2172 = bitcast float %2078 to i32
  %2173 = ashr i32 %2172, 1
  %2174 = sub nsw i32 1597463174, %2173
  %2175 = bitcast i32 %2174 to float
  %2176 = fmul fast float %2078, 5.000000e-01
  %2177 = fmul fast float %2175, %2175
  %2178 = fmul fast float %2177, %2176
  %2179 = fsub fast float 1.500000e+00, %2178
  %2180 = fmul fast float %2175, %2078
  %2181 = fmul fast float %2180, %2179
  %2182 = fsub fast float %2161, %2143
  %2183 = fsub fast float %2171, %2147
  %2184 = fsub fast float %2181, %2151
  %2185 = fmul fast float %2182, %2111
  %2186 = fmul fast float %2183, %2113
  %2187 = fmul fast float %2184, %2118
  %2188 = fadd fast float %2185, %2126
  %2189 = fadd fast float %2186, %2130
  %2190 = fadd fast float %2187, %2134
  %2191 = call float @dx.op.unary.f32(i32 7, float %2188)  ; Saturate(value)
  %2192 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2193 = call float @dx.op.unary.f32(i32 7, float %2190)  ; Saturate(value)
  %2194 = fmul fast float %2191, %2191
  %2195 = fmul fast float %2192, %2192
  %2196 = fmul fast float %2193, %2193
  %2197 = fsub fast float %2194, %2076
  %2198 = fsub fast float %2195, %2077
  %2199 = fsub fast float %2196, %2078
  %2200 = fmul fast float %2197, %2101
  %2201 = fmul fast float %2198, %2101
  %2202 = fmul fast float %2199, %2101
  %2203 = fadd fast float %2200, %2076
  %2204 = fadd fast float %2201, %2077
  %2205 = fadd fast float %2202, %2078
  %2206 = fadd fast float %2123, %2087
  %2207 = fsub fast float %2206, %2140
  %2208 = call float @dx.op.unary.f32(i32 7, float %2207)  ; Saturate(value)
  %2209 = fsub fast float %2208, %2087
  %2210 = fmul fast float %2209, %2101
  %2211 = fadd fast float %2210, %2087
  br label %2265

; <label>:2212                                    ; preds = %2100
  %2213 = and i32 %2103, 134217728
  %2214 = icmp eq i32 %2213, 0
  br i1 %2214, label %2249, label %2215

; <label>:2215                                    ; preds = %2212
  %2216 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %2217 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %2218 = call float @dx.op.unary.f32(i32 24, float %310)  ; Sqrt(value)
  %2219 = fadd fast float %2216, -5.000000e-01
  %2220 = fadd fast float %2217, -5.000000e-01
  %2221 = fadd fast float %2218, -5.000000e-01
  %2222 = fmul fast float %2219, %2101
  %2223 = fmul fast float %2220, %2101
  %2224 = fmul fast float %2221, %2101
  %2225 = fadd fast float %2222, 5.000000e-01
  %2226 = fadd fast float %2223, 5.000000e-01
  %2227 = fadd fast float %2224, 5.000000e-01
  %2228 = call float @dx.op.unary.f32(i32 24, float %2076)  ; Sqrt(value)
  %2229 = call float @dx.op.unary.f32(i32 24, float %2077)  ; Sqrt(value)
  %2230 = call float @dx.op.unary.f32(i32 24, float %2078)  ; Sqrt(value)
  %2231 = fmul fast float %2225, 2.000000e+00
  %2232 = fsub fast float 1.000000e+00, %2231
  %2233 = fmul fast float %2232, %2228
  %2234 = fadd fast float %2233, %2231
  %2235 = fmul fast float %2234, %2228
  %2236 = fmul fast float %2226, 2.000000e+00
  %2237 = fsub fast float 1.000000e+00, %2236
  %2238 = fmul fast float %2237, %2229
  %2239 = fadd fast float %2238, %2236
  %2240 = fmul fast float %2239, %2229
  %2241 = fmul fast float %2227, 2.000000e+00
  %2242 = fsub fast float 1.000000e+00, %2241
  %2243 = fmul fast float %2242, %2230
  %2244 = fadd fast float %2243, %2241
  %2245 = fmul fast float %2244, %2230
  %2246 = fmul fast float %2235, %2235
  %2247 = fmul fast float %2240, %2240
  %2248 = fmul fast float %2245, %2245
  br label %2265

; <label>:2249                                    ; preds = %2212
  %2250 = fmul fast float %302, %302
  %2251 = fmul fast float %306, %306
  %2252 = fmul fast float %310, %310
  %2253 = fadd fast float %2250, -1.000000e+00
  %2254 = fadd fast float %2251, -1.000000e+00
  %2255 = fadd fast float %2252, -1.000000e+00
  %2256 = fmul fast float %2101, %2253
  %2257 = fmul fast float %2101, %2254
  %2258 = fmul fast float %2101, %2255
  %2259 = fadd fast float %2256, 1.000000e+00
  %2260 = fadd fast float %2257, 1.000000e+00
  %2261 = fadd fast float %2258, 1.000000e+00
  %2262 = fmul fast float %2259, %2076
  %2263 = fmul fast float %2260, %2077
  %2264 = fmul fast float %2261, %2078
  br label %2265

; <label>:2265                                    ; preds = %2249, %2215, %2106, %2062
  %2266 = phi float [ %2211, %2106 ], [ %2087, %2215 ], [ %2087, %2249 ], [ 0x3FA23C0BE0000000, %2062 ]
  %2267 = phi float [ %2203, %2106 ], [ %2246, %2215 ], [ %2262, %2249 ], [ 1.000000e+00, %2062 ]
  %2268 = phi float [ %2204, %2106 ], [ %2247, %2215 ], [ %2263, %2249 ], [ 1.000000e+00, %2062 ]
  %2269 = phi float [ %2205, %2106 ], [ %2248, %2215 ], [ %2264, %2249 ], [ 1.000000e+00, %2062 ]
  %2270 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2271 = extractvalue %dx.types.CBufRet.i32 %2270, 1
  %2272 = and i32 %2271, 1
  %2273 = icmp ne i32 %2272, 0
  %2274 = add i32 %45, 356
  %2275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2274, i32 undef)  ; BufferLoad(srv,index,wot)
  %2276 = extractvalue %dx.types.ResRet.i32 %2275, 0
  %2277 = and i32 %2276, 32
  %2278 = icmp ne i32 %2277, 0
  %2279 = and i1 %2273, %2278
  %2280 = select i1 %2279, float 1.000000e+00, float %2267
  %2281 = select i1 %2279, float 0x3FD3333340000000, float %2268
  %2282 = select i1 %2279, float 0x3FD3333340000000, float %2269
  %2283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2284 = extractvalue %dx.types.ResRet.i32 %2283, 0
  %2285 = and i32 %2284, 32
  %2286 = icmp eq i32 %2285, 0
  br i1 %2286, label %2359, label %2287

; <label>:2287                                    ; preds = %2265
  %2288 = add i32 %45, 124
  %2289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2288, i32 undef)  ; BufferLoad(srv,index,wot)
  %2290 = extractvalue %dx.types.ResRet.i32 %2289, 0
  %2291 = add i32 %45, 400
  %2292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2291, i32 undef)  ; BufferLoad(srv,index,wot)
  %2293 = extractvalue %dx.types.ResRet.i32 %2292, 0
  %2294 = add i32 %2293, 0
  %2295 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2294, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2296 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2295, %dx.types.Handle %81, float %1872, float %1873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2297 = extractvalue %dx.types.ResRet.f32 %2296, 0
  %2298 = extractvalue %dx.types.ResRet.f32 %2296, 1
  %2299 = extractvalue %dx.types.ResRet.f32 %2296, 2
  %2300 = extractvalue %dx.types.ResRet.f32 %2296, 3
  %2301 = and i32 %2290, 255
  %2302 = uitofp i32 %2301 to float
  %2303 = lshr i32 %2290, 8
  %2304 = and i32 %2303, 255
  %2305 = uitofp i32 %2304 to float
  %2306 = lshr i32 %2290, 16
  %2307 = and i32 %2306, 255
  %2308 = uitofp i32 %2307 to float
  %2309 = fmul fast float %2308, 0x3F70101000000000
  %2310 = fmul fast float %2297, %2302
  %2311 = fadd fast float %2310, %2305
  %2312 = fmul fast float %2311, 0x3F70101000000000
  %2313 = fadd fast float %2298, -5.000000e-01
  %2314 = fadd fast float %2300, -5.000000e-01
  %2315 = fmul fast float %2313, %2309
  %2316 = fmul fast float %2314, %2309
  %2317 = fadd fast float %2315, 5.000000e-01
  %2318 = fadd fast float %2316, 5.000000e-01
  %2319 = fmul fast float %2317, 2.000000e+00
  %2320 = fadd fast float %2319, -1.000000e+00
  %2321 = fmul fast float %2318, 2.000000e+00
  %2322 = fadd fast float %2321, -1.000000e+00
  %2323 = fadd fast float %2320, %2322
  %2324 = fmul fast float %2323, 5.000000e-01
  %2325 = fsub fast float %2320, %2322
  %2326 = fmul fast float %2325, 5.000000e-01
  %2327 = call float @dx.op.unary.f32(i32 6, float %2324)  ; FAbs(value)
  %2328 = fsub fast float 1.000000e+00, %2327
  %2329 = call float @dx.op.unary.f32(i32 6, float %2326)  ; FAbs(value)
  %2330 = fsub fast float %2328, %2329
  %2331 = call float @dx.op.dot3.f32(i32 55, float %2324, float %2326, float %2330, float %2324, float %2326, float %2330)  ; Dot3(ax,ay,az,bx,by,bz)
  %2332 = call float @dx.op.unary.f32(i32 25, float %2331)  ; Rsqrt(value)
  %2333 = fmul fast float %2324, %2332
  %2334 = fmul fast float %2326, %2332
  %2335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2336 = extractvalue %dx.types.ResRet.i32 %2335, 0
  %2337 = and i32 %2336, 67108864
  %2338 = icmp eq i32 %2337, 0
  br i1 %2338, label %2355, label %2339

; <label>:2339                                    ; preds = %2287
  %2340 = add i32 %45, 312
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2340, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = and i32 %2342, 65535
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2346 = extractvalue %dx.types.ResRet.i32 %2345, 0
  %2347 = and i32 %2346, 65535
  %2348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2347)  ; LegacyF16ToF32(value)
  %2349 = lshr i32 %2342, 16
  %2350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2349)  ; LegacyF16ToF32(value)
  %2351 = fsub fast float %2312, %2350
  %2352 = fmul fast float %2351, %2344
  %2353 = fadd fast float %2352, %2348
  %2354 = call float @dx.op.unary.f32(i32 7, float %2353)  ; Saturate(value)
  br label %2355

; <label>:2355                                    ; preds = %2339, %2287
  %2356 = phi float [ %2354, %2339 ], [ %2312, %2287 ]
  %2357 = call float @dx.op.dot2.f32(i32 54, float %2333, float %2334, float %1776, float %1777)  ; Dot2(ax,ay,bx,by)
  %2358 = call float @dx.op.dot2.f32(i32 54, float %2333, float %2334, float %1778, float %1779)  ; Dot2(ax,ay,bx,by)
  br label %2359

; <label>:2359                                    ; preds = %2355, %2265
  %2360 = phi float [ %2356, %2355 ], [ 0x3FD6666660000000, %2265 ]
  %2361 = phi float [ %2357, %2355 ], [ 0.000000e+00, %2265 ]
  %2362 = phi float [ %2358, %2355 ], [ 0.000000e+00, %2265 ]
  %2363 = phi float [ %2299, %2355 ], [ 1.000000e+00, %2265 ]
  %2364 = add i32 %45, 192
  %2365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2364, i32 undef)  ; BufferLoad(srv,index,wot)
  %2366 = extractvalue %dx.types.ResRet.i32 %2365, 0
  %2367 = lshr i32 %2366, 22
  %2368 = shl nuw nsw i32 %2367, 5
  %2369 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2368)  ; LegacyF16ToF32(value)
  %2370 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2371 = extractvalue %dx.types.ResRet.i32 %2370, 0
  %2372 = and i32 %2371, 64
  %2373 = icmp eq i32 %2372, 0
  br i1 %2373, label %2407, label %2374

; <label>:2374                                    ; preds = %2359
  %2375 = add i32 %45, 416
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2375, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = add i32 %2377, 0
  %2379 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2378, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2381 = extractvalue %dx.types.ResRet.i32 %2380, 0
  %2382 = and i32 %2381, 131072
  %2383 = icmp eq i32 %2382, 0
  %2384 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2379, %dx.types.Handle %81, float %1872, float %1873, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2385 = extractvalue %dx.types.ResRet.f32 %2384, 0
  %2386 = extractvalue %dx.types.ResRet.f32 %2384, 1
  %2387 = extractvalue %dx.types.ResRet.f32 %2384, 2
  %2388 = fmul fast float %2385, %290
  %2389 = fmul fast float %2386, %293
  %2390 = fmul fast float %2387, %296
  br i1 %2383, label %2397, label %2391

; <label>:2391                                    ; preds = %2374
  %2392 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2393 = extractvalue %dx.types.CBufRet.f32 %2392, 0
  %2394 = fmul fast float %2393, %2388
  %2395 = fmul fast float %2393, %2389
  %2396 = fmul fast float %2393, %2390
  br label %2397

; <label>:2397                                    ; preds = %2391, %2374
  %2398 = phi float [ %2394, %2391 ], [ %2388, %2374 ]
  %2399 = phi float [ %2395, %2391 ], [ %2389, %2374 ]
  %2400 = phi float [ %2396, %2391 ], [ %2390, %2374 ]
  %2401 = fmul fast float %2398, %2369
  %2402 = select i1 %186, float %2401, float %2398
  %2403 = call float @dx.op.dot3.f32(i32 55, float %2402, float %2399, float %2400, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2404 = select i1 %186, float 0.000000e+00, float %2398
  %2405 = select i1 %186, float %2403, float %2399
  %2406 = select i1 %186, float 0.000000e+00, float %2400
  br label %2407

; <label>:2407                                    ; preds = %2397, %2359
  %2408 = phi float [ %2404, %2397 ], [ 0.000000e+00, %2359 ]
  %2409 = phi float [ %2405, %2397 ], [ 0.000000e+00, %2359 ]
  %2410 = phi float [ %2406, %2397 ], [ 0.000000e+00, %2359 ]
  %2411 = add i32 %45, 128
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 255
  %2415 = uitofp i32 %2414 to float
  %2416 = lshr i32 %2413, 8
  %2417 = and i32 %2416, 255
  %2418 = uitofp i32 %2417 to float
  %2419 = call float @dx.op.dot3.f32(i32 55, float %2280, float %2281, float %2282, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2420 = fmul fast float %2418, %2419
  %2421 = fadd fast float %2420, %2415
  %2422 = fmul fast float %2421, 0x3F70101020000000
  %2423 = call float @dx.op.unary.f32(i32 7, float %2422)  ; Saturate(value)
  br i1 %1764, label %2424, label %2432

; <label>:2424                                    ; preds = %2407
  %2425 = fsub fast float 1.000000e+00, %2060
  %2426 = fmul fast float %2425, %1753
  %2427 = fmul fast float %2425, %1754
  %2428 = fmul fast float %2425, %1755
  %2429 = fmul fast float %2425, %1756
  %2430 = fmul fast float %2425, %1757
  %2431 = fmul fast float %2425, %1758
  br label %2432

; <label>:2432                                    ; preds = %2424, %2407
  %2433 = phi float [ %2426, %2424 ], [ %1753, %2407 ]
  %2434 = phi float [ %2427, %2424 ], [ %1754, %2407 ]
  %2435 = phi float [ %2428, %2424 ], [ %1755, %2407 ]
  %2436 = phi float [ %2429, %2424 ], [ %1756, %2407 ]
  %2437 = phi float [ %2430, %2424 ], [ %1757, %2407 ]
  %2438 = phi float [ %2431, %2424 ], [ %1758, %2407 ]
  %2439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2440 = extractvalue %dx.types.ResRet.i32 %2439, 0
  %2441 = and i32 %2440, 3
  %2442 = icmp eq i32 %2441, 3
  br i1 %2442, label %2521, label %2443

; <label>:2443                                    ; preds = %2432
  %2444 = and i32 %2440, 16
  %2445 = icmp ne i32 %2444, 0
  %2446 = select i1 %2445, float %2060, float 0.000000e+00
  %2447 = icmp eq i32 %2441, 0
  br i1 %2447, label %2448, label %2476

; <label>:2448                                    ; preds = %2443
  %2449 = and i32 %2440, 64
  %2450 = icmp ne i32 %2449, 0
  %2451 = select i1 %2450, float %2060, float 0.000000e+00
  %2452 = fsub fast float %2280, %2433
  %2453 = fsub fast float %2281, %2434
  %2454 = fsub fast float %2282, %2435
  %2455 = fmul fast float %2446, %2452
  %2456 = fmul fast float %2446, %2453
  %2457 = fmul fast float %2446, %2454
  %2458 = fadd fast float %2455, %2433
  %2459 = fadd fast float %2456, %2434
  %2460 = fadd fast float %2457, %2435
  %2461 = fsub fast float %2266, %1759
  %2462 = fmul fast float %2446, %2461
  %2463 = fadd fast float %2462, %1759
  %2464 = fsub fast float %2408, %2436
  %2465 = fsub fast float %2409, %2437
  %2466 = fsub fast float %2410, %2438
  %2467 = fmul fast float %2451, %2464
  %2468 = fmul fast float %2451, %2465
  %2469 = fmul fast float %2451, %2466
  %2470 = fadd fast float %2467, %2436
  %2471 = fadd fast float %2468, %2437
  %2472 = fadd fast float %2469, %2438
  %2473 = fsub fast float %2423, %1762
  %2474 = fmul fast float %2446, %2473
  %2475 = fadd fast float %2474, %1762
  br label %2521

; <label>:2476                                    ; preds = %2443
  %2477 = icmp eq i32 %2441, 1
  br i1 %2477, label %2478, label %2491

; <label>:2478                                    ; preds = %2476
  %2479 = fadd fast float %2280, -1.000000e+00
  %2480 = fadd fast float %2281, -1.000000e+00
  %2481 = fadd fast float %2282, -1.000000e+00
  %2482 = fmul fast float %2446, %2479
  %2483 = fmul fast float %2446, %2480
  %2484 = fmul fast float %2446, %2481
  %2485 = fadd fast float %2482, 1.000000e+00
  %2486 = fadd fast float %2483, 1.000000e+00
  %2487 = fadd fast float %2484, 1.000000e+00
  %2488 = fmul fast float %2485, %2433
  %2489 = fmul fast float %2486, %2434
  %2490 = fmul fast float %2487, %2435
  br label %2521

; <label>:2491                                    ; preds = %2476
  %2492 = icmp eq i32 %2441, 2
  br i1 %2492, label %2493, label %2521

; <label>:2493                                    ; preds = %2491
  %2494 = call float @dx.op.unary.f32(i32 24, float %2280)  ; Sqrt(value)
  %2495 = call float @dx.op.unary.f32(i32 24, float %2281)  ; Sqrt(value)
  %2496 = call float @dx.op.unary.f32(i32 24, float %2282)  ; Sqrt(value)
  %2497 = fadd fast float %2494, -5.000000e-01
  %2498 = fadd fast float %2495, -5.000000e-01
  %2499 = fadd fast float %2496, -5.000000e-01
  %2500 = fmul fast float %2497, %2446
  %2501 = fmul fast float %2498, %2446
  %2502 = fmul fast float %2499, %2446
  %2503 = fadd fast float %2500, 5.000000e-01
  %2504 = fadd fast float %2501, 5.000000e-01
  %2505 = fadd fast float %2502, 5.000000e-01
  %2506 = fmul fast float %2503, 2.000000e+00
  %2507 = fsub fast float 1.000000e+00, %2506
  %2508 = fmul fast float %2507, %2433
  %2509 = fadd fast float %2508, %2506
  %2510 = fmul fast float %2509, %2433
  %2511 = fmul fast float %2504, 2.000000e+00
  %2512 = fsub fast float 1.000000e+00, %2511
  %2513 = fmul fast float %2512, %2434
  %2514 = fadd fast float %2513, %2511
  %2515 = fmul fast float %2514, %2434
  %2516 = fmul fast float %2505, 2.000000e+00
  %2517 = fsub fast float 1.000000e+00, %2516
  %2518 = fmul fast float %2517, %2435
  %2519 = fadd fast float %2518, %2516
  %2520 = fmul fast float %2519, %2435
  br label %2521

; <label>:2521                                    ; preds = %2493, %2491, %2478, %2448, %2432
  %2522 = phi float [ %2433, %2432 ], [ %2510, %2493 ], [ %2433, %2491 ], [ %2488, %2478 ], [ %2458, %2448 ]
  %2523 = phi float [ %2434, %2432 ], [ %2515, %2493 ], [ %2434, %2491 ], [ %2489, %2478 ], [ %2459, %2448 ]
  %2524 = phi float [ %2435, %2432 ], [ %2520, %2493 ], [ %2435, %2491 ], [ %2490, %2478 ], [ %2460, %2448 ]
  %2525 = phi float [ %2436, %2432 ], [ %2436, %2493 ], [ %2436, %2491 ], [ %2436, %2478 ], [ %2470, %2448 ]
  %2526 = phi float [ %2437, %2432 ], [ %2437, %2493 ], [ %2437, %2491 ], [ %2437, %2478 ], [ %2471, %2448 ]
  %2527 = phi float [ %2438, %2432 ], [ %2438, %2493 ], [ %2438, %2491 ], [ %2438, %2478 ], [ %2472, %2448 ]
  %2528 = phi float [ %1759, %2432 ], [ %1759, %2493 ], [ %1759, %2491 ], [ %1759, %2478 ], [ %2463, %2448 ]
  %2529 = phi float [ %1762, %2432 ], [ %1762, %2493 ], [ %1762, %2491 ], [ %1762, %2478 ], [ %2475, %2448 ]
  %2530 = and i32 %2440, 12
  %2531 = icmp eq i32 %2530, 12
  br i1 %2531, label %2604, label %2532

; <label>:2532                                    ; preds = %2521
  %2533 = and i32 %2440, 2097184
  %2534 = icmp eq i32 %2533, 2097184
  %2535 = select i1 %2534, float %2060, float 0.000000e+00
  %2536 = and i32 %2440, 4194336
  %2537 = icmp eq i32 %2536, 4194336
  %2538 = select i1 %2537, float %2060, float 0.000000e+00
  %2539 = and i32 %2440, 8388640
  %2540 = icmp eq i32 %2539, 8388640
  %2541 = select i1 %2540, float %2060, float 0.000000e+00
  %2542 = icmp eq i32 %2530, 0
  br i1 %2542, label %2543, label %2556

; <label>:2543                                    ; preds = %2532
  %2544 = fsub fast float %2361, %1751
  %2545 = fsub fast float %2362, %1752
  %2546 = fmul fast float %2535, %2544
  %2547 = fmul fast float %2535, %2545
  %2548 = fadd fast float %2546, %1751
  %2549 = fadd fast float %2547, %1752
  %2550 = fsub fast float %2363, %1761
  %2551 = fmul fast float %2538, %2550
  %2552 = fadd fast float %2551, %1761
  %2553 = fsub fast float %2360, %1760
  %2554 = fmul fast float %2541, %2553
  %2555 = fadd fast float %2554, %1760
  br label %2604

; <label>:2556                                    ; preds = %2532
  %2557 = icmp eq i32 %2530, 4
  br i1 %2557, label %2558, label %2590

; <label>:2558                                    ; preds = %2556
  %2559 = fmul fast float %2535, %2361
  %2560 = fmul fast float %2535, %2362
  %2561 = fadd fast float %2559, %1751
  %2562 = fadd fast float %2560, %1752
  %2563 = call float @dx.op.binary.f32(i32 36, float %1761, float %2363)  ; FMin(a,b)
  %2564 = fsub fast float %2563, %1761
  %2565 = fmul fast float %2564, %2538
  %2566 = fadd fast float %2565, %1761
  %2567 = fadd fast float %2360, %1760
  %2568 = fmul fast float %2567, 0x3FF337FAE0000000
  %2569 = fmul fast float %1760, %1760
  %2570 = fmul fast float %2360, %2360
  %2571 = fadd fast float %2570, %2569
  %2572 = fmul fast float %2571, 0x3FE5152B00000000
  %2573 = fmul fast float %1760, 0xBFCC1F85E0000000
  %2574 = fmul fast float %2573, %2360
  %2575 = fadd fast float %2574, 0xBFE1363700000000
  %2576 = fadd fast float %2575, %2568
  %2577 = fsub fast float %2576, %2572
  %2578 = fmul fast float %2567, 0x3FBA6F0D00000000
  %2579 = fmul fast float %2571, 0x3FD0432880000000
  %2580 = fmul fast float %1760, 0xBFEF110800000000
  %2581 = fmul fast float %2580, %2360
  %2582 = fadd fast float %2581, 1.000000e+00
  %2583 = fsub fast float %2582, %2578
  %2584 = fadd fast float %2583, %2579
  %2585 = fdiv fast float %2577, %2584
  %2586 = call float @dx.op.unary.f32(i32 7, float %2585)  ; Saturate(value)
  %2587 = fsub fast float %2586, %1760
  %2588 = fmul fast float %2587, %2541
  %2589 = fadd fast float %2588, %1760
  br label %2604

; <label>:2590                                    ; preds = %2556
  %2591 = icmp eq i32 %2530, 8
  br i1 %2591, label %2592, label %2604

; <label>:2592                                    ; preds = %2590
  %2593 = fmul fast float %2535, %2361
  %2594 = fmul fast float %2535, %2362
  %2595 = fadd fast float %2593, %1751
  %2596 = fadd fast float %2594, %1752
  %2597 = call float @dx.op.binary.f32(i32 36, float %1761, float %2363)  ; FMin(a,b)
  %2598 = fsub fast float %2597, %1761
  %2599 = fmul fast float %2598, %2538
  %2600 = fadd fast float %2599, %1761
  %2601 = fsub fast float %2360, %1760
  %2602 = fmul fast float %2541, %2601
  %2603 = fadd fast float %2602, %1760
  br label %2604

; <label>:2604                                    ; preds = %2592, %2590, %2558, %2543, %2521, %2059, %1763, %1750
  %2605 = phi float [ %1751, %2521 ], [ %1751, %2059 ], [ %1751, %1750 ], [ %2595, %2592 ], [ %1751, %2590 ], [ %2561, %2558 ], [ %2548, %2543 ], [ %1751, %1763 ]
  %2606 = phi float [ %1752, %2521 ], [ %1752, %2059 ], [ %1752, %1750 ], [ %2596, %2592 ], [ %1752, %2590 ], [ %2562, %2558 ], [ %2549, %2543 ], [ %1752, %1763 ]
  %2607 = phi float [ %2522, %2521 ], [ %1753, %2059 ], [ %1753, %1750 ], [ %2522, %2592 ], [ %2522, %2590 ], [ %2522, %2558 ], [ %2522, %2543 ], [ %1753, %1763 ]
  %2608 = phi float [ %2523, %2521 ], [ %1754, %2059 ], [ %1754, %1750 ], [ %2523, %2592 ], [ %2523, %2590 ], [ %2523, %2558 ], [ %2523, %2543 ], [ %1754, %1763 ]
  %2609 = phi float [ %2524, %2521 ], [ %1755, %2059 ], [ %1755, %1750 ], [ %2524, %2592 ], [ %2524, %2590 ], [ %2524, %2558 ], [ %2524, %2543 ], [ %1755, %1763 ]
  %2610 = phi float [ %2525, %2521 ], [ %1756, %2059 ], [ %1756, %1750 ], [ %2525, %2592 ], [ %2525, %2590 ], [ %2525, %2558 ], [ %2525, %2543 ], [ %1756, %1763 ]
  %2611 = phi float [ %2526, %2521 ], [ %1757, %2059 ], [ %1757, %1750 ], [ %2526, %2592 ], [ %2526, %2590 ], [ %2526, %2558 ], [ %2526, %2543 ], [ %1757, %1763 ]
  %2612 = phi float [ %2527, %2521 ], [ %1758, %2059 ], [ %1758, %1750 ], [ %2527, %2592 ], [ %2527, %2590 ], [ %2527, %2558 ], [ %2527, %2543 ], [ %1758, %1763 ]
  %2613 = phi float [ %2528, %2521 ], [ %1759, %2059 ], [ %1759, %1750 ], [ %2528, %2592 ], [ %2528, %2590 ], [ %2528, %2558 ], [ %2528, %2543 ], [ %1759, %1763 ]
  %2614 = phi float [ %1760, %2521 ], [ %1760, %2059 ], [ %1760, %1750 ], [ %2603, %2592 ], [ %1760, %2590 ], [ %2589, %2558 ], [ %2555, %2543 ], [ %1760, %1763 ]
  %2615 = phi float [ %1761, %2521 ], [ %1761, %2059 ], [ %1761, %1750 ], [ %2600, %2592 ], [ %1761, %2590 ], [ %2566, %2558 ], [ %2552, %2543 ], [ %1761, %1763 ]
  %2616 = phi float [ %2529, %2521 ], [ %1762, %2059 ], [ %1762, %1750 ], [ %2529, %2592 ], [ %2529, %2590 ], [ %2529, %2558 ], [ %2529, %2543 ], [ %1762, %1763 ]
  br i1 %377, label %3458, label %2617

; <label>:2617                                    ; preds = %2604
  %2618 = icmp ult i32 %428, 4
  %2619 = add i32 %45, 72
  %2620 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2621 = extractvalue %dx.types.ResRet.i32 %2620, 0
  %2622 = add i32 %45, 76
  %2623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2622, i32 undef)  ; BufferLoad(srv,index,wot)
  %2624 = extractvalue %dx.types.ResRet.i32 %2623, 0
  %2625 = or i32 %2624, %2621
  %2626 = icmp eq i32 %2625, 0
  br i1 %2626, label %3458, label %2627

; <label>:2627                                    ; preds = %2617
  %2628 = and i32 %2621, 262144
  %2629 = icmp ne i32 %2628, 0
  %2630 = select i1 %2629, float %48, float 1.000000e+00
  %2631 = select i1 %2629, float %49, float 0.000000e+00
  %2632 = select i1 %2629, float %50, float 0.000000e+00
  %2633 = select i1 %2629, float %51, float 1.000000e+00
  %2634 = select i1 %2629, float %52, float %73
  %2635 = select i1 %2629, float %53, float %74
  %2636 = add i32 %45, 332
  %2637 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %2638 = extractvalue %dx.types.ResRet.i32 %2637, 0
  %2639 = lshr i32 %2638, 16
  %2640 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2639)  ; LegacyF16ToF32(value)
  %2641 = fmul fast float %2640, 0x3F50624DE0000000
  %2642 = add i32 %45, 136
  %2643 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2644 = extractvalue %dx.types.ResRet.i32 %2643, 0
  %2645 = lshr i32 %2644, 16
  %2646 = and i32 %2645, 255
  %2647 = lshr i32 %2644, 24
  %2648 = add i32 %45, 340
  %2649 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2648, i32 undef)  ; BufferLoad(srv,index,wot)
  %2650 = extractvalue %dx.types.ResRet.i32 %2649, 0
  %2651 = and i32 %2650, 65535
  %2652 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2651)  ; LegacyF16ToF32(value)
  %2653 = lshr i32 %2650, 16
  %2654 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2653)  ; LegacyF16ToF32(value)
  %2655 = add i32 %45, 80
  %2656 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2655, i32 undef)  ; BufferLoad(srv,index,wot)
  %2657 = extractvalue %dx.types.ResRet.i32 %2656, 0
  %2658 = lshr i32 %2657, 22
  %2659 = shl nuw nsw i32 %2658, 5
  %2660 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2659)  ; LegacyF16ToF32(value)
  %2661 = shl i32 %2657, 4
  %2662 = and i32 %2661, 32752
  %2663 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2662)  ; LegacyF16ToF32(value)
  %2664 = lshr i32 %2657, 7
  %2665 = and i32 %2664, 32752
  %2666 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2665)  ; LegacyF16ToF32(value)
  %2667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2668 = extractvalue %dx.types.CBufRet.f32 %2667, 3
  %2669 = fmul fast float %2668, 1.000000e+03
  %2670 = fmul fast float %367, %2669
  %2671 = call float @dx.op.unary.f32(i32 22, float %2670)  ; Frc(value)
  %2672 = fadd fast float %2671, %357
  %2673 = fmul fast float %368, %2669
  %2674 = call float @dx.op.unary.f32(i32 22, float %2673)  ; Frc(value)
  %2675 = fadd fast float %2674, %359
  %2676 = fmul fast float %2641, %2669
  %2677 = call float @dx.op.unary.f32(i32 22, float %2676)  ; Frc(value)
  %2678 = fmul fast float %2677, 0x401921FB60000000
  %2679 = fadd fast float %2678, %2660
  %2680 = call float @dx.op.unary.f32(i32 13, float %2679)  ; Sin(value)
  %2681 = call float @dx.op.unary.f32(i32 12, float %2679)  ; Cos(value)
  %2682 = fsub fast float -0.000000e+00, %2680
  %2683 = fadd fast float %2634, -5.000000e-01
  %2684 = fadd fast float %2635, -5.000000e-01
  %2685 = fmul fast float %2652, %2683
  %2686 = fmul fast float %2654, %2684
  %2687 = fadd fast float %2685, 5.000000e-01
  %2688 = fadd fast float %2686, 5.000000e-01
  %2689 = fmul fast float %2663, %2687
  %2690 = fmul fast float %2666, %2688
  %2691 = fmul fast float %2681, %2689
  %2692 = call float @dx.op.tertiary.f32(i32 46, float %2682, float %2690, float %2691)  ; FMad(a,b,c)
  %2693 = fmul fast float %2680, %2689
  %2694 = call float @dx.op.tertiary.f32(i32 46, float %2681, float %2690, float %2693)  ; FMad(a,b,c)
  %2695 = fadd fast float %2672, %2692
  %2696 = fadd fast float %2675, %2694
  %2697 = icmp ugt i32 %2646, 1
  %2698 = icmp ugt i32 %2644, 33554431
  %2699 = or i1 %2698, %2697
  br i1 %2699, label %2700, label %2725

; <label>:2700                                    ; preds = %2627
  %2701 = add i32 %45, 276
  %2702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %2703 = extractvalue %dx.types.ResRet.i32 %2702, 0
  %2704 = lshr i32 %2703, 16
  %2705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2704)  ; LegacyF16ToF32(value)
  %2706 = fmul fast float %2668, %2705
  %2707 = call float @dx.op.unary.f32(i32 22, float %2706)  ; Frc(value)
  %2708 = mul nuw nsw i32 %2646, %2647
  %2709 = uitofp i32 %2708 to float
  %2710 = fmul fast float %2707, %2709
  %2711 = call float @dx.op.unary.f32(i32 27, float %2710)  ; Round_ni(value)
  %2712 = fptoui float %2711 to i32
  %2713 = urem i32 %2712, %2646
  %2714 = udiv i32 %2712, %2647
  %2715 = call float @dx.op.unary.f32(i32 22, float %2695)  ; Frc(value)
  %2716 = call float @dx.op.unary.f32(i32 22, float %2696)  ; Frc(value)
  %2717 = uitofp i32 %2713 to float
  %2718 = uitofp i32 %2714 to float
  %2719 = fadd fast float %2715, %2717
  %2720 = fadd fast float %2716, %2718
  %2721 = uitofp i32 %2646 to float
  %2722 = uitofp i32 %2647 to float
  %2723 = fdiv fast float %2719, %2721
  %2724 = fdiv fast float %2720, %2722
  br label %2725

; <label>:2725                                    ; preds = %2700, %2627
  %2726 = phi float [ %2723, %2700 ], [ %2695, %2627 ]
  %2727 = phi float [ %2724, %2700 ], [ %2696, %2627 ]
  %2728 = and i32 %2621, 16777216
  %2729 = icmp eq i32 %2728, 0
  br i1 %2729, label %2839, label %2730

; <label>:2730                                    ; preds = %2725
  %2731 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2732 = extractvalue %dx.types.CBufRet.f32 %2731, 0
  %2733 = extractvalue %dx.types.CBufRet.f32 %2731, 1
  %2734 = extractvalue %dx.types.CBufRet.f32 %2731, 2
  %2735 = fadd fast float %2732, %144
  %2736 = fadd fast float %2733, %145
  %2737 = fadd fast float %2734, %146
  %2738 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2739 = extractvalue %dx.types.CBufRet.f32 %2738, 0
  %2740 = call float @dx.op.unary.f32(i32 7, float %2739)  ; Saturate(value)
  %2741 = icmp eq i32 %46, 65535
  br i1 %2741, label %2836, label %2742

; <label>:2742                                    ; preds = %2730
  %2743 = lshr i32 %46, 1
  %2744 = shl i32 %2743, 2
  %2745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2744, i32 undef)  ; BufferLoad(srv,index,wot)
  %2746 = extractvalue %dx.types.ResRet.i32 %2745, 0
  %2747 = and i32 %46, 1
  %2748 = icmp ne i32 %2747, 0
  %2749 = lshr i32 %2746, 16
  %2750 = and i32 %2746, 65535
  %2751 = select i1 %2748, i32 %2749, i32 %2750
  %2752 = icmp eq i32 %2751, 65535
  br i1 %2752, label %2832, label %2753

; <label>:2753                                    ; preds = %2742
  %2754 = mul nuw nsw i32 %2751, 40
  %2755 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2754, i32 undef)  ; BufferLoad(srv,index,wot)
  %2756 = extractvalue %dx.types.ResRet.f32 %2755, 0
  %2757 = extractvalue %dx.types.ResRet.f32 %2755, 1
  %2758 = extractvalue %dx.types.ResRet.f32 %2755, 2
  %2759 = add nuw nsw i32 %2754, 12
  %2760 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.f32 %2760, 0
  %2762 = extractvalue %dx.types.ResRet.f32 %2760, 1
  %2763 = extractvalue %dx.types.ResRet.f32 %2760, 2
  %2764 = add nuw nsw i32 %2754, 24
  %2765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2766 = extractvalue %dx.types.ResRet.f32 %2765, 0
  %2767 = extractvalue %dx.types.ResRet.f32 %2765, 1
  %2768 = extractvalue %dx.types.ResRet.f32 %2765, 2
  %2769 = add nuw nsw i32 %2754, 36
  %2770 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.f32 %2770, 0
  %2772 = fsub fast float %2735, %2756
  %2773 = fsub fast float %2736, %2757
  %2774 = fsub fast float %2737, %2758
  %2775 = fmul fast float %2771, %2772
  %2776 = fmul fast float %2771, %2773
  %2777 = fmul fast float %2771, %2774
  %2778 = call float @dx.op.unary.f32(i32 27, float %2775)  ; Round_ni(value)
  %2779 = call float @dx.op.unary.f32(i32 27, float %2776)  ; Round_ni(value)
  %2780 = call float @dx.op.unary.f32(i32 27, float %2777)  ; Round_ni(value)
  %2781 = fadd fast float %2778, 5.000000e-01
  %2782 = fadd fast float %2779, 5.000000e-01
  %2783 = fadd fast float %2780, 5.000000e-01
  %2784 = fmul fast float %2781, %2761
  %2785 = fmul fast float %2782, %2762
  %2786 = fmul fast float %2783, %2763
  %2787 = shl i32 %46, 2
  %2788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.i32 %2788, 0
  %2790 = add i32 %2789, 0
  %2791 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2790, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2792 = call float @dx.op.unary.f32(i32 22, float %2784)  ; Frc(value)
  %2793 = call float @dx.op.unary.f32(i32 22, float %2785)  ; Frc(value)
  %2794 = call float @dx.op.unary.f32(i32 22, float %2786)  ; Frc(value)
  %2795 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2791, %dx.types.Handle %40, float %2792, float %2793, float %2794, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2796 = extractvalue %dx.types.ResRet.f32 %2795, 0
  %2797 = extractvalue %dx.types.ResRet.f32 %2795, 1
  %2798 = extractvalue %dx.types.ResRet.f32 %2795, 2
  %2799 = fmul fast float %2796, 1.023000e+03
  %2800 = fmul fast float %2797, 1.023000e+03
  %2801 = fmul fast float %2798, 1.023000e+03
  %2802 = fadd fast float %2799, 5.000000e-01
  %2803 = fadd fast float %2800, 5.000000e-01
  %2804 = fadd fast float %2801, 5.000000e-01
  %2805 = call float @dx.op.unary.f32(i32 27, float %2802)  ; Round_ni(value)
  %2806 = call float @dx.op.unary.f32(i32 27, float %2803)  ; Round_ni(value)
  %2807 = call float @dx.op.unary.f32(i32 27, float %2804)  ; Round_ni(value)
  %2808 = fsub fast float %2775, %2778
  %2809 = fsub fast float %2776, %2779
  %2810 = fsub fast float %2777, %2780
  %2811 = fmul fast float %2808, 7.500000e-01
  %2812 = fmul fast float %2809, 7.500000e-01
  %2813 = fmul fast float %2810, 7.500000e-01
  %2814 = fadd fast float %2778, 1.250000e-01
  %2815 = fadd fast float %2814, %2811
  %2816 = fadd fast float %2815, %2805
  %2817 = fadd fast float %2779, 1.250000e-01
  %2818 = fadd fast float %2817, %2812
  %2819 = fadd fast float %2818, %2806
  %2820 = fadd fast float %2780, 1.250000e-01
  %2821 = fadd fast float %2820, %2813
  %2822 = fadd fast float %2821, %2807
  %2823 = fmul fast float %2816, %2766
  %2824 = fmul fast float %2819, %2767
  %2825 = fmul fast float %2822, %2768
  %2826 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2827 = extractvalue %dx.types.ResRet.i32 %2826, 0
  %2828 = add i32 %2827, 0
  %2829 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2828, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2829, %dx.types.Handle %38, float %2823, float %2824, float %2825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2831 = extractvalue %dx.types.ResRet.f32 %2830, 0
  br label %2832

; <label>:2832                                    ; preds = %2753, %2742
  %2833 = phi float [ %2831, %2753 ], [ -1.000000e+00, %2742 ]
  %2834 = fadd fast float %2833, %2740
  %2835 = call float @dx.op.unary.f32(i32 7, float %2834)  ; Saturate(value)
  br label %2836

; <label>:2836                                    ; preds = %2832, %2730
  %2837 = phi float [ %2835, %2832 ], [ %2740, %2730 ]
  %2838 = fmul fast float %2837, %423
  br label %2839

; <label>:2839                                    ; preds = %2836, %2725
  %2840 = phi float [ %2838, %2836 ], [ %423, %2725 ]
  %2841 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2842 = extractvalue %dx.types.ResRet.i32 %2841, 0
  %2843 = and i32 %2842, 256
  %2844 = icmp eq i32 %2843, 0
  br i1 %2844, label %2891, label %2845

; <label>:2845                                    ; preds = %2839
  %2846 = add i32 %45, 452
  %2847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2846, i32 undef)  ; BufferLoad(srv,index,wot)
  %2848 = extractvalue %dx.types.ResRet.i32 %2847, 0
  %2849 = add i32 %2848, 0
  %2850 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2849, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2851 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2850, %dx.types.Handle %82, float %2726, float %2727, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2852 = extractvalue %dx.types.ResRet.f32 %2851, 0
  %2853 = add i32 %45, 148
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = shl i32 %2855, 4
  %2857 = and i32 %2856, 32752
  %2858 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2857)  ; LegacyF16ToF32(value)
  %2859 = lshr i32 %2855, 7
  %2860 = and i32 %2859, 32752
  %2861 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2860)  ; LegacyF16ToF32(value)
  %2862 = fsub fast float 1.000000e+00, %2840
  %2863 = call float @dx.op.binary.f32(i32 35, float %2862, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2864 = bitcast float %2840 to i32
  %2865 = sitofp i32 %2864 to float
  %2866 = fadd fast float %2865, 0xC1CFBF8940000000
  %2867 = fmul fast float %2861, %2866
  %2868 = fadd fast float %2867, 0x41CFBF8940000000
  %2869 = fptosi float %2868 to i32
  %2870 = bitcast i32 %2869 to float
  %2871 = bitcast float %2863 to i32
  %2872 = sitofp i32 %2871 to float
  %2873 = fadd fast float %2872, 0xC1CFBF8940000000
  %2874 = fmul fast float %2873, %2861
  %2875 = fadd fast float %2874, 0x41CFBF8940000000
  %2876 = fptosi float %2875 to i32
  %2877 = bitcast i32 %2876 to float
  %2878 = fmul fast float %2870, %2858
  %2879 = fmul fast float %2877, %2858
  %2880 = fsub fast float %2863, %2878
  %2881 = fadd fast float %2879, %2863
  %2882 = call float @dx.op.unary.f32(i32 7, float %2880)  ; Saturate(value)
  %2883 = call float @dx.op.unary.f32(i32 7, float %2881)  ; Saturate(value)
  %2884 = fsub fast float %2852, %2882
  %2885 = fsub fast float %2883, %2882
  %2886 = bitcast float %2885 to i32
  %2887 = sub nsw i32 2129859010, %2886
  %2888 = bitcast i32 %2887 to float
  %2889 = fmul fast float %2888, %2884
  %2890 = call float @dx.op.unary.f32(i32 7, float %2889)  ; Saturate(value)
  br label %2891

; <label>:2891                                    ; preds = %2845, %2839
  %2892 = phi float [ %2890, %2845 ], [ %2840, %2839 ]
  %2893 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2894 = extractvalue %dx.types.ResRet.i32 %2893, 0
  %2895 = and i32 %2894, 128
  %2896 = icmp eq i32 %2895, 0
  br i1 %2896, label %2913, label %2897

; <label>:2897                                    ; preds = %2891
  %2898 = add i32 %45, 436
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = add i32 %2900, 0
  %2902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2903 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2902, %dx.types.Handle %82, float %2726, float %2727, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2904 = extractvalue %dx.types.ResRet.f32 %2903, 0
  %2905 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2906 = extractvalue %dx.types.ResRet.i32 %2905, 0
  %2907 = and i32 %2906, 524288
  %2908 = icmp ne i32 %2907, 0
  %2909 = fcmp fast ogt float %2904, 0x3FE0101020000000
  %2910 = select i1 %2909, float 1.000000e+00, float 0.000000e+00
  %2911 = select i1 %2908, float %2910, float %2904
  %2912 = fmul fast float %2911, %2892
  br label %2913

; <label>:2913                                    ; preds = %2897, %2891
  %2914 = phi float [ %2912, %2897 ], [ %2892, %2891 ]
  %2915 = fcmp fast ult float %2914, 0x3F70101020000000
  br i1 %2915, label %3458, label %2916

; <label>:2916                                    ; preds = %2913
  %2917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2918 = extractvalue %dx.types.ResRet.i32 %2917, 0
  %2919 = and i32 %2918, 16
  %2920 = icmp eq i32 %2919, 0
  br i1 %2920, label %3119, label %2921

; <label>:2921                                    ; preds = %2916
  %2922 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2642, i32 undef)  ; BufferLoad(srv,index,wot)
  %2923 = extractvalue %dx.types.ResRet.i32 %2922, 0
  %2924 = add i32 %45, 388
  %2925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2924, i32 undef)  ; BufferLoad(srv,index,wot)
  %2926 = extractvalue %dx.types.ResRet.i32 %2925, 0
  %2927 = add i32 %2926, 0
  %2928 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2927, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2929 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2928, %dx.types.Handle %81, float %2726, float %2727, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2930 = extractvalue %dx.types.ResRet.f32 %2929, 0
  %2931 = extractvalue %dx.types.ResRet.f32 %2929, 1
  %2932 = extractvalue %dx.types.ResRet.f32 %2929, 2
  %2933 = extractvalue %dx.types.ResRet.f32 %2929, 3
  %2934 = and i32 %2923, 255
  %2935 = uitofp i32 %2934 to float
  %2936 = lshr i32 %2923, 8
  %2937 = and i32 %2936, 255
  %2938 = uitofp i32 %2937 to float
  %2939 = fmul fast float %2933, %2935
  %2940 = fadd fast float %2939, %2938
  %2941 = fmul fast float %2940, 0x3F70101000000000
  %2942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2943 = extractvalue %dx.types.ResRet.i32 %2942, 0
  %2944 = and i32 %2943, 512
  %2945 = icmp eq i32 %2944, 0
  br i1 %2945, label %2954, label %2946

; <label>:2946                                    ; preds = %2921
  %2947 = add i32 %45, 472
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2947, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = add i32 %2949, 0
  %2951 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2950, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2952 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2951, %dx.types.Handle %82, float %2726, float %2727, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2953 = extractvalue %dx.types.ResRet.f32 %2952, 0
  br label %2954

; <label>:2954                                    ; preds = %2946, %2921
  %2955 = phi float [ %2953, %2946 ], [ 1.000000e+00, %2921 ]
  %2956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %2957 = extractvalue %dx.types.ResRet.i32 %2956, 0
  %2958 = and i32 %2957, 33554432
  %2959 = icmp eq i32 %2958, 0
  br i1 %2959, label %3066, label %2960

; <label>:2960                                    ; preds = %2954
  %2961 = add i32 %45, 272
  %2962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2963 = extractvalue %dx.types.ResRet.i32 %2962, 0
  %2964 = and i32 %2963, 65535
  %2965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2964)  ; LegacyF16ToF32(value)
  %2966 = lshr i32 %2963, 16
  %2967 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2966)  ; LegacyF16ToF32(value)
  %2968 = add i32 %45, 276
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2968, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = and i32 %2970, 65535
  %2972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2971)  ; LegacyF16ToF32(value)
  %2973 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2974 = extractvalue %dx.types.ResRet.i32 %2973, 0
  %2975 = lshr i32 %2974, 24
  %2976 = uitofp i32 %2975 to float
  %2977 = fmul fast float %2976, 0x3F70101020000000
  %2978 = and i32 %2974, 255
  %2979 = uitofp i32 %2978 to float
  %2980 = fmul fast float %2979, 0x3F70101020000000
  %2981 = lshr i32 %2974, 8
  %2982 = and i32 %2981, 255
  %2983 = uitofp i32 %2982 to float
  %2984 = fmul fast float %2983, 0x3F70101020000000
  %2985 = lshr i32 %2974, 16
  %2986 = and i32 %2985, 255
  %2987 = uitofp i32 %2986 to float
  %2988 = fmul fast float %2987, 0x3F70101020000000
  %2989 = add i32 %45, 268
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = lshr i32 %2991, 24
  %2993 = uitofp i32 %2992 to float
  %2994 = fmul fast float %2993, 0x3F70101020000000
  %2995 = and i32 %2991, 255
  %2996 = uitofp i32 %2995 to float
  %2997 = fmul fast float %2996, 0x3F70101020000000
  %2998 = lshr i32 %2991, 8
  %2999 = and i32 %2998, 255
  %3000 = uitofp i32 %2999 to float
  %3001 = fmul fast float %3000, 0x3F70101020000000
  %3002 = lshr i32 %2991, 16
  %3003 = and i32 %3002, 255
  %3004 = uitofp i32 %3003 to float
  %3005 = fmul fast float %3004, 0x3F70101020000000
  %3006 = bitcast float %2930 to i32
  %3007 = ashr i32 %3006, 1
  %3008 = sub nsw i32 1597463174, %3007
  %3009 = bitcast i32 %3008 to float
  %3010 = fmul fast float %2930, 5.000000e-01
  %3011 = fmul fast float %3009, %3009
  %3012 = fmul fast float %3011, %3010
  %3013 = fsub fast float 1.500000e+00, %3012
  %3014 = fmul fast float %3009, %2930
  %3015 = fmul fast float %3014, %3013
  %3016 = bitcast float %2931 to i32
  %3017 = ashr i32 %3016, 1
  %3018 = sub nsw i32 1597463174, %3017
  %3019 = bitcast i32 %3018 to float
  %3020 = fmul fast float %2931, 5.000000e-01
  %3021 = fmul fast float %3019, %3019
  %3022 = fmul fast float %3021, %3020
  %3023 = fsub fast float 1.500000e+00, %3022
  %3024 = fmul fast float %3019, %2931
  %3025 = fmul fast float %3024, %3023
  %3026 = bitcast float %2932 to i32
  %3027 = ashr i32 %3026, 1
  %3028 = sub nsw i32 1597463174, %3027
  %3029 = bitcast i32 %3028 to float
  %3030 = fmul fast float %2932, 5.000000e-01
  %3031 = fmul fast float %3029, %3029
  %3032 = fmul fast float %3031, %3030
  %3033 = fsub fast float 1.500000e+00, %3032
  %3034 = fmul fast float %3029, %2932
  %3035 = fmul fast float %3034, %3033
  %3036 = fsub fast float %3015, %2997
  %3037 = fsub fast float %3025, %3001
  %3038 = fsub fast float %3035, %3005
  %3039 = fmul fast float %3036, %2965
  %3040 = fmul fast float %3037, %2967
  %3041 = fmul fast float %3038, %2972
  %3042 = fadd fast float %3039, %2980
  %3043 = fadd fast float %3040, %2984
  %3044 = fadd fast float %3041, %2988
  %3045 = call float @dx.op.unary.f32(i32 7, float %3042)  ; Saturate(value)
  %3046 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3047 = call float @dx.op.unary.f32(i32 7, float %3044)  ; Saturate(value)
  %3048 = fmul fast float %3045, %3045
  %3049 = fmul fast float %3046, %3046
  %3050 = fmul fast float %3047, %3047
  %3051 = fsub fast float %3048, %2930
  %3052 = fsub fast float %3049, %2931
  %3053 = fsub fast float %3050, %2932
  %3054 = fmul fast float %3051, %2955
  %3055 = fmul fast float %3052, %2955
  %3056 = fmul fast float %3053, %2955
  %3057 = fadd fast float %3054, %2930
  %3058 = fadd fast float %3055, %2931
  %3059 = fadd fast float %3056, %2932
  %3060 = fadd fast float %2977, %2941
  %3061 = fsub fast float %3060, %2994
  %3062 = call float @dx.op.unary.f32(i32 7, float %3061)  ; Saturate(value)
  %3063 = fsub fast float %3062, %2941
  %3064 = fmul fast float %3063, %2955
  %3065 = fadd fast float %3064, %2941
  br label %3119

; <label>:3066                                    ; preds = %2954
  %3067 = and i32 %2957, 134217728
  %3068 = icmp eq i32 %3067, 0
  br i1 %3068, label %3103, label %3069

; <label>:3069                                    ; preds = %3066
  %3070 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %3071 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %3072 = call float @dx.op.unary.f32(i32 24, float %352)  ; Sqrt(value)
  %3073 = fadd fast float %3070, -5.000000e-01
  %3074 = fadd fast float %3071, -5.000000e-01
  %3075 = fadd fast float %3072, -5.000000e-01
  %3076 = fmul fast float %3073, %2955
  %3077 = fmul fast float %3074, %2955
  %3078 = fmul fast float %3075, %2955
  %3079 = fadd fast float %3076, 5.000000e-01
  %3080 = fadd fast float %3077, 5.000000e-01
  %3081 = fadd fast float %3078, 5.000000e-01
  %3082 = call float @dx.op.unary.f32(i32 24, float %2930)  ; Sqrt(value)
  %3083 = call float @dx.op.unary.f32(i32 24, float %2931)  ; Sqrt(value)
  %3084 = call float @dx.op.unary.f32(i32 24, float %2932)  ; Sqrt(value)
  %3085 = fmul fast float %3079, 2.000000e+00
  %3086 = fsub fast float 1.000000e+00, %3085
  %3087 = fmul fast float %3086, %3082
  %3088 = fadd fast float %3087, %3085
  %3089 = fmul fast float %3088, %3082
  %3090 = fmul fast float %3080, 2.000000e+00
  %3091 = fsub fast float 1.000000e+00, %3090
  %3092 = fmul fast float %3091, %3083
  %3093 = fadd fast float %3092, %3090
  %3094 = fmul fast float %3093, %3083
  %3095 = fmul fast float %3081, 2.000000e+00
  %3096 = fsub fast float 1.000000e+00, %3095
  %3097 = fmul fast float %3096, %3084
  %3098 = fadd fast float %3097, %3095
  %3099 = fmul fast float %3098, %3084
  %3100 = fmul fast float %3089, %3089
  %3101 = fmul fast float %3094, %3094
  %3102 = fmul fast float %3099, %3099
  br label %3119

; <label>:3103                                    ; preds = %3066
  %3104 = fmul fast float %344, %344
  %3105 = fmul fast float %348, %348
  %3106 = fmul fast float %352, %352
  %3107 = fadd fast float %3104, -1.000000e+00
  %3108 = fadd fast float %3105, -1.000000e+00
  %3109 = fadd fast float %3106, -1.000000e+00
  %3110 = fmul fast float %2955, %3107
  %3111 = fmul fast float %2955, %3108
  %3112 = fmul fast float %2955, %3109
  %3113 = fadd fast float %3110, 1.000000e+00
  %3114 = fadd fast float %3111, 1.000000e+00
  %3115 = fadd fast float %3112, 1.000000e+00
  %3116 = fmul fast float %3113, %2930
  %3117 = fmul fast float %3114, %2931
  %3118 = fmul fast float %3115, %2932
  br label %3119

; <label>:3119                                    ; preds = %3103, %3069, %2960, %2916
  %3120 = phi float [ %3065, %2960 ], [ %2941, %3069 ], [ %2941, %3103 ], [ 0x3FA23C0BE0000000, %2916 ]
  %3121 = phi float [ %3057, %2960 ], [ %3100, %3069 ], [ %3116, %3103 ], [ 1.000000e+00, %2916 ]
  %3122 = phi float [ %3058, %2960 ], [ %3101, %3069 ], [ %3117, %3103 ], [ 1.000000e+00, %2916 ]
  %3123 = phi float [ %3059, %2960 ], [ %3102, %3069 ], [ %3118, %3103 ], [ 1.000000e+00, %2916 ]
  %3124 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3125 = extractvalue %dx.types.CBufRet.i32 %3124, 1
  %3126 = and i32 %3125, 1
  %3127 = icmp ne i32 %3126, 0
  %3128 = add i32 %45, 356
  %3129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3128, i32 undef)  ; BufferLoad(srv,index,wot)
  %3130 = extractvalue %dx.types.ResRet.i32 %3129, 0
  %3131 = and i32 %3130, 32
  %3132 = icmp ne i32 %3131, 0
  %3133 = and i1 %3127, %3132
  %3134 = select i1 %3133, float 1.000000e+00, float %3121
  %3135 = select i1 %3133, float 0x3FD3333340000000, float %3122
  %3136 = select i1 %3133, float 0x3FD3333340000000, float %3123
  %3137 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3138 = extractvalue %dx.types.ResRet.i32 %3137, 0
  %3139 = and i32 %3138, 32
  %3140 = icmp eq i32 %3139, 0
  br i1 %3140, label %3213, label %3141

; <label>:3141                                    ; preds = %3119
  %3142 = add i32 %45, 140
  %3143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3142, i32 undef)  ; BufferLoad(srv,index,wot)
  %3144 = extractvalue %dx.types.ResRet.i32 %3143, 0
  %3145 = add i32 %45, 404
  %3146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3145, i32 undef)  ; BufferLoad(srv,index,wot)
  %3147 = extractvalue %dx.types.ResRet.i32 %3146, 0
  %3148 = add i32 %3147, 0
  %3149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3148, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3150 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3149, %dx.types.Handle %81, float %2726, float %2727, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3151 = extractvalue %dx.types.ResRet.f32 %3150, 0
  %3152 = extractvalue %dx.types.ResRet.f32 %3150, 1
  %3153 = extractvalue %dx.types.ResRet.f32 %3150, 2
  %3154 = extractvalue %dx.types.ResRet.f32 %3150, 3
  %3155 = and i32 %3144, 255
  %3156 = uitofp i32 %3155 to float
  %3157 = lshr i32 %3144, 8
  %3158 = and i32 %3157, 255
  %3159 = uitofp i32 %3158 to float
  %3160 = lshr i32 %3144, 16
  %3161 = and i32 %3160, 255
  %3162 = uitofp i32 %3161 to float
  %3163 = fmul fast float %3162, 0x3F70101000000000
  %3164 = fmul fast float %3151, %3156
  %3165 = fadd fast float %3164, %3159
  %3166 = fmul fast float %3165, 0x3F70101000000000
  %3167 = fadd fast float %3152, -5.000000e-01
  %3168 = fadd fast float %3154, -5.000000e-01
  %3169 = fmul fast float %3167, %3163
  %3170 = fmul fast float %3168, %3163
  %3171 = fadd fast float %3169, 5.000000e-01
  %3172 = fadd fast float %3170, 5.000000e-01
  %3173 = fmul fast float %3171, 2.000000e+00
  %3174 = fadd fast float %3173, -1.000000e+00
  %3175 = fmul fast float %3172, 2.000000e+00
  %3176 = fadd fast float %3175, -1.000000e+00
  %3177 = fadd fast float %3174, %3176
  %3178 = fmul fast float %3177, 5.000000e-01
  %3179 = fsub fast float %3174, %3176
  %3180 = fmul fast float %3179, 5.000000e-01
  %3181 = call float @dx.op.unary.f32(i32 6, float %3178)  ; FAbs(value)
  %3182 = fsub fast float 1.000000e+00, %3181
  %3183 = call float @dx.op.unary.f32(i32 6, float %3180)  ; FAbs(value)
  %3184 = fsub fast float %3182, %3183
  %3185 = call float @dx.op.dot3.f32(i32 55, float %3178, float %3180, float %3184, float %3178, float %3180, float %3184)  ; Dot3(ax,ay,az,bx,by,bz)
  %3186 = call float @dx.op.unary.f32(i32 25, float %3185)  ; Rsqrt(value)
  %3187 = fmul fast float %3178, %3186
  %3188 = fmul fast float %3180, %3186
  %3189 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3190 = extractvalue %dx.types.ResRet.i32 %3189, 0
  %3191 = and i32 %3190, 67108864
  %3192 = icmp eq i32 %3191, 0
  br i1 %3192, label %3209, label %3193

; <label>:3193                                    ; preds = %3141
  %3194 = add i32 %45, 328
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3194, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = and i32 %3196, 65535
  %3198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3197)  ; LegacyF16ToF32(value)
  %3199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3200 = extractvalue %dx.types.ResRet.i32 %3199, 0
  %3201 = and i32 %3200, 65535
  %3202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3201)  ; LegacyF16ToF32(value)
  %3203 = lshr i32 %3196, 16
  %3204 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3203)  ; LegacyF16ToF32(value)
  %3205 = fsub fast float %3166, %3204
  %3206 = fmul fast float %3205, %3198
  %3207 = fadd fast float %3206, %3202
  %3208 = call float @dx.op.unary.f32(i32 7, float %3207)  ; Saturate(value)
  br label %3209

; <label>:3209                                    ; preds = %3193, %3141
  %3210 = phi float [ %3208, %3193 ], [ %3166, %3141 ]
  %3211 = call float @dx.op.dot2.f32(i32 54, float %3187, float %3188, float %2630, float %2631)  ; Dot2(ax,ay,bx,by)
  %3212 = call float @dx.op.dot2.f32(i32 54, float %3187, float %3188, float %2632, float %2633)  ; Dot2(ax,ay,bx,by)
  br label %3213

; <label>:3213                                    ; preds = %3209, %3119
  %3214 = phi float [ %3210, %3209 ], [ 0x3FD6666660000000, %3119 ]
  %3215 = phi float [ %3211, %3209 ], [ 0.000000e+00, %3119 ]
  %3216 = phi float [ %3212, %3209 ], [ 0.000000e+00, %3119 ]
  %3217 = phi float [ %3153, %3209 ], [ 1.000000e+00, %3119 ]
  %3218 = add i32 %45, 208
  %3219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3218, i32 undef)  ; BufferLoad(srv,index,wot)
  %3220 = extractvalue %dx.types.ResRet.i32 %3219, 0
  %3221 = lshr i32 %3220, 22
  %3222 = shl nuw nsw i32 %3221, 5
  %3223 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3222)  ; LegacyF16ToF32(value)
  %3224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3225 = extractvalue %dx.types.ResRet.i32 %3224, 0
  %3226 = and i32 %3225, 64
  %3227 = icmp eq i32 %3226, 0
  br i1 %3227, label %3261, label %3228

; <label>:3228                                    ; preds = %3213
  %3229 = add i32 %45, 420
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3229, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = add i32 %3231, 0
  %3233 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3232, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3235 = extractvalue %dx.types.ResRet.i32 %3234, 0
  %3236 = and i32 %3235, 131072
  %3237 = icmp eq i32 %3236, 0
  %3238 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3233, %dx.types.Handle %81, float %2726, float %2727, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3239 = extractvalue %dx.types.ResRet.f32 %3238, 0
  %3240 = extractvalue %dx.types.ResRet.f32 %3238, 1
  %3241 = extractvalue %dx.types.ResRet.f32 %3238, 2
  %3242 = fmul fast float %3239, %332
  %3243 = fmul fast float %3240, %335
  %3244 = fmul fast float %3241, %338
  br i1 %3237, label %3251, label %3245

; <label>:3245                                    ; preds = %3228
  %3246 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3247 = extractvalue %dx.types.CBufRet.f32 %3246, 0
  %3248 = fmul fast float %3247, %3242
  %3249 = fmul fast float %3247, %3243
  %3250 = fmul fast float %3247, %3244
  br label %3251

; <label>:3251                                    ; preds = %3245, %3228
  %3252 = phi float [ %3248, %3245 ], [ %3242, %3228 ]
  %3253 = phi float [ %3249, %3245 ], [ %3243, %3228 ]
  %3254 = phi float [ %3250, %3245 ], [ %3244, %3228 ]
  %3255 = fmul fast float %3252, %3223
  %3256 = select i1 %186, float %3255, float %3252
  %3257 = call float @dx.op.dot3.f32(i32 55, float %3256, float %3253, float %3254, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3258 = select i1 %186, float 0.000000e+00, float %3252
  %3259 = select i1 %186, float %3257, float %3253
  %3260 = select i1 %186, float 0.000000e+00, float %3254
  br label %3261

; <label>:3261                                    ; preds = %3251, %3213
  %3262 = phi float [ %3258, %3251 ], [ 0.000000e+00, %3213 ]
  %3263 = phi float [ %3259, %3251 ], [ 0.000000e+00, %3213 ]
  %3264 = phi float [ %3260, %3251 ], [ 0.000000e+00, %3213 ]
  %3265 = add i32 %45, 144
  %3266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3265, i32 undef)  ; BufferLoad(srv,index,wot)
  %3267 = extractvalue %dx.types.ResRet.i32 %3266, 0
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = lshr i32 %3267, 8
  %3271 = and i32 %3270, 255
  %3272 = uitofp i32 %3271 to float
  %3273 = call float @dx.op.dot3.f32(i32 55, float %3134, float %3135, float %3136, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3274 = fmul fast float %3272, %3273
  %3275 = fadd fast float %3274, %3269
  %3276 = fmul fast float %3275, 0x3F70101020000000
  %3277 = call float @dx.op.unary.f32(i32 7, float %3276)  ; Saturate(value)
  br i1 %2618, label %3278, label %3286

; <label>:3278                                    ; preds = %3261
  %3279 = fsub fast float 1.000000e+00, %2914
  %3280 = fmul fast float %3279, %2607
  %3281 = fmul fast float %3279, %2608
  %3282 = fmul fast float %3279, %2609
  %3283 = fmul fast float %3279, %2610
  %3284 = fmul fast float %3279, %2611
  %3285 = fmul fast float %3279, %2612
  br label %3286

; <label>:3286                                    ; preds = %3278, %3261
  %3287 = phi float [ %3280, %3278 ], [ %2607, %3261 ]
  %3288 = phi float [ %3281, %3278 ], [ %2608, %3261 ]
  %3289 = phi float [ %3282, %3278 ], [ %2609, %3261 ]
  %3290 = phi float [ %3283, %3278 ], [ %2610, %3261 ]
  %3291 = phi float [ %3284, %3278 ], [ %2611, %3261 ]
  %3292 = phi float [ %3285, %3278 ], [ %2612, %3261 ]
  %3293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3294 = extractvalue %dx.types.ResRet.i32 %3293, 0
  %3295 = and i32 %3294, 3
  %3296 = icmp eq i32 %3295, 3
  br i1 %3296, label %3375, label %3297

; <label>:3297                                    ; preds = %3286
  %3298 = and i32 %3294, 16
  %3299 = icmp ne i32 %3298, 0
  %3300 = select i1 %3299, float %2914, float 0.000000e+00
  %3301 = icmp eq i32 %3295, 0
  br i1 %3301, label %3302, label %3330

; <label>:3302                                    ; preds = %3297
  %3303 = and i32 %3294, 64
  %3304 = icmp ne i32 %3303, 0
  %3305 = select i1 %3304, float %2914, float 0.000000e+00
  %3306 = fsub fast float %3134, %3287
  %3307 = fsub fast float %3135, %3288
  %3308 = fsub fast float %3136, %3289
  %3309 = fmul fast float %3300, %3306
  %3310 = fmul fast float %3300, %3307
  %3311 = fmul fast float %3300, %3308
  %3312 = fadd fast float %3309, %3287
  %3313 = fadd fast float %3310, %3288
  %3314 = fadd fast float %3311, %3289
  %3315 = fsub fast float %3120, %2613
  %3316 = fmul fast float %3300, %3315
  %3317 = fadd fast float %3316, %2613
  %3318 = fsub fast float %3262, %3290
  %3319 = fsub fast float %3263, %3291
  %3320 = fsub fast float %3264, %3292
  %3321 = fmul fast float %3305, %3318
  %3322 = fmul fast float %3305, %3319
  %3323 = fmul fast float %3305, %3320
  %3324 = fadd fast float %3321, %3290
  %3325 = fadd fast float %3322, %3291
  %3326 = fadd fast float %3323, %3292
  %3327 = fsub fast float %3277, %2616
  %3328 = fmul fast float %3300, %3327
  %3329 = fadd fast float %3328, %2616
  br label %3375

; <label>:3330                                    ; preds = %3297
  %3331 = icmp eq i32 %3295, 1
  br i1 %3331, label %3332, label %3345

; <label>:3332                                    ; preds = %3330
  %3333 = fadd fast float %3134, -1.000000e+00
  %3334 = fadd fast float %3135, -1.000000e+00
  %3335 = fadd fast float %3136, -1.000000e+00
  %3336 = fmul fast float %3300, %3333
  %3337 = fmul fast float %3300, %3334
  %3338 = fmul fast float %3300, %3335
  %3339 = fadd fast float %3336, 1.000000e+00
  %3340 = fadd fast float %3337, 1.000000e+00
  %3341 = fadd fast float %3338, 1.000000e+00
  %3342 = fmul fast float %3339, %3287
  %3343 = fmul fast float %3340, %3288
  %3344 = fmul fast float %3341, %3289
  br label %3375

; <label>:3345                                    ; preds = %3330
  %3346 = icmp eq i32 %3295, 2
  br i1 %3346, label %3347, label %3375

; <label>:3347                                    ; preds = %3345
  %3348 = call float @dx.op.unary.f32(i32 24, float %3134)  ; Sqrt(value)
  %3349 = call float @dx.op.unary.f32(i32 24, float %3135)  ; Sqrt(value)
  %3350 = call float @dx.op.unary.f32(i32 24, float %3136)  ; Sqrt(value)
  %3351 = fadd fast float %3348, -5.000000e-01
  %3352 = fadd fast float %3349, -5.000000e-01
  %3353 = fadd fast float %3350, -5.000000e-01
  %3354 = fmul fast float %3351, %3300
  %3355 = fmul fast float %3352, %3300
  %3356 = fmul fast float %3353, %3300
  %3357 = fadd fast float %3354, 5.000000e-01
  %3358 = fadd fast float %3355, 5.000000e-01
  %3359 = fadd fast float %3356, 5.000000e-01
  %3360 = fmul fast float %3357, 2.000000e+00
  %3361 = fsub fast float 1.000000e+00, %3360
  %3362 = fmul fast float %3361, %3287
  %3363 = fadd fast float %3362, %3360
  %3364 = fmul fast float %3363, %3287
  %3365 = fmul fast float %3358, 2.000000e+00
  %3366 = fsub fast float 1.000000e+00, %3365
  %3367 = fmul fast float %3366, %3288
  %3368 = fadd fast float %3367, %3365
  %3369 = fmul fast float %3368, %3288
  %3370 = fmul fast float %3359, 2.000000e+00
  %3371 = fsub fast float 1.000000e+00, %3370
  %3372 = fmul fast float %3371, %3289
  %3373 = fadd fast float %3372, %3370
  %3374 = fmul fast float %3373, %3289
  br label %3375

; <label>:3375                                    ; preds = %3347, %3345, %3332, %3302, %3286
  %3376 = phi float [ %3287, %3286 ], [ %3364, %3347 ], [ %3287, %3345 ], [ %3342, %3332 ], [ %3312, %3302 ]
  %3377 = phi float [ %3288, %3286 ], [ %3369, %3347 ], [ %3288, %3345 ], [ %3343, %3332 ], [ %3313, %3302 ]
  %3378 = phi float [ %3289, %3286 ], [ %3374, %3347 ], [ %3289, %3345 ], [ %3344, %3332 ], [ %3314, %3302 ]
  %3379 = phi float [ %3290, %3286 ], [ %3290, %3347 ], [ %3290, %3345 ], [ %3290, %3332 ], [ %3324, %3302 ]
  %3380 = phi float [ %3291, %3286 ], [ %3291, %3347 ], [ %3291, %3345 ], [ %3291, %3332 ], [ %3325, %3302 ]
  %3381 = phi float [ %3292, %3286 ], [ %3292, %3347 ], [ %3292, %3345 ], [ %3292, %3332 ], [ %3326, %3302 ]
  %3382 = phi float [ %2613, %3286 ], [ %2613, %3347 ], [ %2613, %3345 ], [ %2613, %3332 ], [ %3317, %3302 ]
  %3383 = phi float [ %2616, %3286 ], [ %2616, %3347 ], [ %2616, %3345 ], [ %2616, %3332 ], [ %3329, %3302 ]
  %3384 = and i32 %3294, 12
  %3385 = icmp eq i32 %3384, 12
  br i1 %3385, label %3458, label %3386

; <label>:3386                                    ; preds = %3375
  %3387 = and i32 %3294, 2097184
  %3388 = icmp eq i32 %3387, 2097184
  %3389 = select i1 %3388, float %2914, float 0.000000e+00
  %3390 = and i32 %3294, 4194336
  %3391 = icmp eq i32 %3390, 4194336
  %3392 = select i1 %3391, float %2914, float 0.000000e+00
  %3393 = and i32 %3294, 8388640
  %3394 = icmp eq i32 %3393, 8388640
  %3395 = select i1 %3394, float %2914, float 0.000000e+00
  %3396 = icmp eq i32 %3384, 0
  br i1 %3396, label %3397, label %3410

; <label>:3397                                    ; preds = %3386
  %3398 = fsub fast float %3215, %2605
  %3399 = fsub fast float %3216, %2606
  %3400 = fmul fast float %3389, %3398
  %3401 = fmul fast float %3389, %3399
  %3402 = fadd fast float %3400, %2605
  %3403 = fadd fast float %3401, %2606
  %3404 = fsub fast float %3217, %2615
  %3405 = fmul fast float %3392, %3404
  %3406 = fadd fast float %3405, %2615
  %3407 = fsub fast float %3214, %2614
  %3408 = fmul fast float %3395, %3407
  %3409 = fadd fast float %3408, %2614
  br label %3458

; <label>:3410                                    ; preds = %3386
  %3411 = icmp eq i32 %3384, 4
  br i1 %3411, label %3412, label %3444

; <label>:3412                                    ; preds = %3410
  %3413 = fmul fast float %3389, %3215
  %3414 = fmul fast float %3389, %3216
  %3415 = fadd fast float %3413, %2605
  %3416 = fadd fast float %3414, %2606
  %3417 = call float @dx.op.binary.f32(i32 36, float %2615, float %3217)  ; FMin(a,b)
  %3418 = fsub fast float %3417, %2615
  %3419 = fmul fast float %3418, %3392
  %3420 = fadd fast float %3419, %2615
  %3421 = fadd fast float %3214, %2614
  %3422 = fmul fast float %3421, 0x3FF337FAE0000000
  %3423 = fmul fast float %2614, %2614
  %3424 = fmul fast float %3214, %3214
  %3425 = fadd fast float %3424, %3423
  %3426 = fmul fast float %3425, 0x3FE5152B00000000
  %3427 = fmul fast float %2614, 0xBFCC1F85E0000000
  %3428 = fmul fast float %3427, %3214
  %3429 = fadd fast float %3428, 0xBFE1363700000000
  %3430 = fadd fast float %3429, %3422
  %3431 = fsub fast float %3430, %3426
  %3432 = fmul fast float %3421, 0x3FBA6F0D00000000
  %3433 = fmul fast float %3425, 0x3FD0432880000000
  %3434 = fmul fast float %2614, 0xBFEF110800000000
  %3435 = fmul fast float %3434, %3214
  %3436 = fadd fast float %3435, 1.000000e+00
  %3437 = fsub fast float %3436, %3432
  %3438 = fadd fast float %3437, %3433
  %3439 = fdiv fast float %3431, %3438
  %3440 = call float @dx.op.unary.f32(i32 7, float %3439)  ; Saturate(value)
  %3441 = fsub fast float %3440, %2614
  %3442 = fmul fast float %3441, %3395
  %3443 = fadd fast float %3442, %2614
  br label %3458

; <label>:3444                                    ; preds = %3410
  %3445 = icmp eq i32 %3384, 8
  br i1 %3445, label %3446, label %3458

; <label>:3446                                    ; preds = %3444
  %3447 = fmul fast float %3389, %3215
  %3448 = fmul fast float %3389, %3216
  %3449 = fadd fast float %3447, %2605
  %3450 = fadd fast float %3448, %2606
  %3451 = call float @dx.op.binary.f32(i32 36, float %2615, float %3217)  ; FMin(a,b)
  %3452 = fsub fast float %3451, %2615
  %3453 = fmul fast float %3452, %3392
  %3454 = fadd fast float %3453, %2615
  %3455 = fsub fast float %3214, %2614
  %3456 = fmul fast float %3395, %3455
  %3457 = fadd fast float %3456, %2614
  br label %3458

; <label>:3458                                    ; preds = %3446, %3444, %3412, %3397, %3375, %2913, %2617, %2604
  %3459 = phi float [ %2605, %3375 ], [ %2605, %2913 ], [ %2605, %2604 ], [ %2605, %2617 ], [ %3402, %3397 ], [ %3415, %3412 ], [ %2605, %3444 ], [ %3449, %3446 ]
  %3460 = phi float [ %2606, %3375 ], [ %2606, %2913 ], [ %2606, %2604 ], [ %2606, %2617 ], [ %3403, %3397 ], [ %3416, %3412 ], [ %2606, %3444 ], [ %3450, %3446 ]
  %3461 = phi float [ %3376, %3375 ], [ %2607, %2913 ], [ %2607, %2604 ], [ %2607, %2617 ], [ %3376, %3397 ], [ %3376, %3412 ], [ %3376, %3444 ], [ %3376, %3446 ]
  %3462 = phi float [ %3377, %3375 ], [ %2608, %2913 ], [ %2608, %2604 ], [ %2608, %2617 ], [ %3377, %3397 ], [ %3377, %3412 ], [ %3377, %3444 ], [ %3377, %3446 ]
  %3463 = phi float [ %3378, %3375 ], [ %2609, %2913 ], [ %2609, %2604 ], [ %2609, %2617 ], [ %3378, %3397 ], [ %3378, %3412 ], [ %3378, %3444 ], [ %3378, %3446 ]
  %3464 = phi float [ %3379, %3375 ], [ %2610, %2913 ], [ %2610, %2604 ], [ %2610, %2617 ], [ %3379, %3397 ], [ %3379, %3412 ], [ %3379, %3444 ], [ %3379, %3446 ]
  %3465 = phi float [ %3380, %3375 ], [ %2611, %2913 ], [ %2611, %2604 ], [ %2611, %2617 ], [ %3380, %3397 ], [ %3380, %3412 ], [ %3380, %3444 ], [ %3380, %3446 ]
  %3466 = phi float [ %3381, %3375 ], [ %2612, %2913 ], [ %2612, %2604 ], [ %2612, %2617 ], [ %3381, %3397 ], [ %3381, %3412 ], [ %3381, %3444 ], [ %3381, %3446 ]
  %3467 = phi float [ %3382, %3375 ], [ %2613, %2913 ], [ %2613, %2604 ], [ %2613, %2617 ], [ %3382, %3397 ], [ %3382, %3412 ], [ %3382, %3444 ], [ %3382, %3446 ]
  %3468 = phi float [ %2614, %3375 ], [ %2614, %2913 ], [ %2614, %2604 ], [ %2614, %2617 ], [ %3409, %3397 ], [ %3443, %3412 ], [ %2614, %3444 ], [ %3457, %3446 ]
  %3469 = phi float [ %2615, %3375 ], [ %2615, %2913 ], [ %2615, %2604 ], [ %2615, %2617 ], [ %3406, %3397 ], [ %3420, %3412 ], [ %2615, %3444 ], [ %3454, %3446 ]
  %3470 = phi float [ %3383, %3375 ], [ %2616, %2913 ], [ %2616, %2604 ], [ %2616, %2617 ], [ %3383, %3397 ], [ %3383, %3412 ], [ %3383, %3444 ], [ %3383, %3446 ]
  %3471 = add i32 %45, 360
  %3472 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3471, i32 undef)  ; BufferLoad(srv,index,wot)
  %3473 = extractvalue %dx.types.ResRet.i32 %3472, 0
  %3474 = extractvalue %dx.types.ResRet.i32 %3472, 1
  %3475 = bitcast i32 %3473 to float
  %3476 = bitcast i32 %3474 to float
  %3477 = fcmp fast oge float %3475, 0.000000e+00
  %3478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3479 = extractvalue %dx.types.CBufRet.f32 %3478, 0
  %3480 = select i1 %3477, float %3475, float %3479
  %3481 = add i32 %45, 456
  %3482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3481, i32 undef)  ; BufferLoad(srv,index,wot)
  %3483 = extractvalue %dx.types.ResRet.i32 %3482, 0
  %3484 = add i32 %3483, 0
  %3485 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3484, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3486 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3485, %dx.types.Handle %82, float %73, float %74, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3487 = extractvalue %dx.types.ResRet.f32 %3486, 0
  %3488 = fmul fast float %3487, %3476
  %3489 = fadd fast float %3488, %3480
  %3490 = call float @dx.op.dot2.f32(i32 54, float %3459, float %3460, float %3459, float %3460)  ; Dot2(ax,ay,bx,by)
  %3491 = fmul fast float %3490, 0x3FE3333340000000
  %3492 = fsub fast float 1.000000e+00, %3491
  %3493 = call float @dx.op.dot3.f32(i32 55, float %3459, float %3460, float %3492, float %3459, float %3460, float %3492)  ; Dot3(ax,ay,az,bx,by,bz)
  %3494 = call float @dx.op.unary.f32(i32 25, float %3493)  ; Rsqrt(value)
  %3495 = fmul fast float %3494, %3459
  %3496 = fmul fast float %3494, %3460
  %3497 = fmul fast float %3492, %3494
  %3498 = fmul fast float %3497, %94
  %3499 = fmul fast float %3497, %96
  %3500 = fmul fast float %3497, %98
  %3501 = fmul fast float %3495, %66
  %3502 = fmul fast float %3495, %67
  %3503 = fmul fast float %3495, %68
  %3504 = fadd fast float %3498, %3501
  %3505 = fadd fast float %3499, %3502
  %3506 = fadd fast float %3500, %3503
  %3507 = fmul fast float %108, %3496
  %3508 = fmul fast float %109, %3496
  %3509 = fmul fast float %110, %3496
  %3510 = fadd fast float %3504, %3507
  %3511 = fadd fast float %3505, %3508
  %3512 = fadd fast float %3506, %3509
  %3513 = call float @dx.op.dot3.f32(i32 55, float %3510, float %3511, float %3512, float %3510, float %3511, float %3512)  ; Dot3(ax,ay,az,bx,by,bz)
  %3514 = call float @dx.op.unary.f32(i32 25, float %3513)  ; Rsqrt(value)
  %3515 = fmul fast float %3510, %3514
  %3516 = fmul fast float %3511, %3514
  %3517 = fmul fast float %3512, %3514
  %3518 = and i32 %47, 1
  %3519 = icmp eq i32 %3518, 0
  br i1 %3519, label %3520, label %4028

; <label>:3520                                    ; preds = %3458
  %3521 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3522 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3523 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %3524 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3525 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3526 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %3527 = fadd fast float %3521, %144
  %3528 = fadd fast float %3522, %145
  %3529 = fadd fast float %3523, %146
  %3530 = fadd fast float %3524, %144
  %3531 = fadd fast float %3525, %145
  %3532 = fadd fast float %3526, %146
  %3533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3534 = extractvalue %dx.types.CBufRet.f32 %3533, 0
  %3535 = extractvalue %dx.types.CBufRet.f32 %3533, 1
  %3536 = extractvalue %dx.types.CBufRet.f32 %3533, 2
  %3537 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3538 = extractvalue %dx.types.CBufRet.f32 %3537, 2
  %3539 = extractvalue %dx.types.CBufRet.f32 %3537, 3
  %3540 = fmul fast float %3534, %85
  %3541 = fmul fast float %3540, %3538
  %3542 = fmul fast float %3535, %86
  %3543 = fmul fast float %3542, %3539
  %3544 = fptoui float %3541 to i32
  %3545 = fptoui float %3543 to i32
  %3546 = fadd fast float %3534, -1.000000e+00
  %3547 = fadd fast float %3535, -1.000000e+00
  %3548 = fptoui float %3546 to i32
  %3549 = fptoui float %3547 to i32
  %3550 = call i32 @dx.op.binary.i32(i32 40, i32 %3544, i32 %3548)  ; UMin(a,b)
  %3551 = call i32 @dx.op.binary.i32(i32 40, i32 %3545, i32 %3549)  ; UMin(a,b)
  %3552 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3553 = extractvalue %dx.types.CBufRet.f32 %3552, 2
  %3554 = extractvalue %dx.types.CBufRet.f32 %3552, 3
  %3555 = fmul fast float %3553, %80
  %3556 = fsub fast float %3555, %3554
  %3557 = fadd fast float %3536, -1.000000e+00
  %3558 = call float @dx.op.binary.f32(i32 36, float %3556, float %3557)  ; FMin(a,b)
  %3559 = fptoui float %3558 to i32
  %3560 = fptoui float %3534 to i32
  %3561 = fptoui float %3535 to i32
  %3562 = mul i32 %3559, %3561
  %3563 = add i32 %3562, %3551
  %3564 = mul i32 %3563, %3560
  %3565 = add i32 %3564, %3550
  %3566 = shl i32 %3565, 2
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = and i32 %3568, 1023
  %3570 = lshr i32 %3568, 10
  %3571 = icmp eq i32 %3569, 0
  br i1 %3571, label %3997, label %3572

; <label>:3572                                    ; preds = %3520
  %3573 = and i32 %3568, 1023
  br label %3574

; <label>:3574                                    ; preds = %3700, %3572
  %3575 = phi i32 [ %3650, %3700 ], [ 0, %3572 ]
  %3576 = phi float [ %3701, %3700 ], [ 0.000000e+00, %3572 ]
  %3577 = phi float [ %3702, %3700 ], [ %3489, %3572 ]
  %3578 = phi float [ %3703, %3700 ], [ %3470, %3572 ]
  %3579 = phi float [ %3704, %3700 ], [ 0.000000e+00, %3572 ]
  %3580 = phi float [ %3705, %3700 ], [ 0.000000e+00, %3572 ]
  %3581 = phi float [ %3706, %3700 ], [ %3464, %3572 ]
  %3582 = phi float [ %3707, %3700 ], [ %3465, %3572 ]
  %3583 = phi float [ %3708, %3700 ], [ %3466, %3572 ]
  %3584 = phi float [ %3709, %3700 ], [ %3515, %3572 ]
  %3585 = phi float [ %3710, %3700 ], [ %3516, %3572 ]
  %3586 = phi float [ %3711, %3700 ], [ %3517, %3572 ]
  %3587 = phi float [ %3712, %3700 ], [ %3469, %3572 ]
  %3588 = phi float [ %3713, %3700 ], [ %3468, %3572 ]
  %3589 = phi float [ %3714, %3700 ], [ 0.000000e+00, %3572 ]
  %3590 = phi float [ %3715, %3700 ], [ %3467, %3572 ]
  %3591 = phi float [ %3716, %3700 ], [ %3461, %3572 ]
  %3592 = phi float [ %3717, %3700 ], [ %3462, %3572 ]
  %3593 = phi float [ %3718, %3700 ], [ %3463, %3572 ]
  %3594 = add nuw nsw i32 %3575, %3570
  %3595 = shl i32 %3594, 2
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = shl i32 %3597, 8
  %3599 = or i32 %3598, 48
  %3600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3603 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3604 = extractvalue %dx.types.ResRet.f32 %3600, 3
  %3605 = or i32 %3598, 64
  %3606 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.i32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.i32 %3606, 1
  %3609 = or i32 %3598, 80
  %3610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.f32 %3610, 2
  %3612 = extractvalue %dx.types.ResRet.f32 %3610, 3
  %3613 = or i32 %3598, 96
  %3614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3613, i32 undef)  ; BufferLoad(srv,index,wot)
  %3615 = extractvalue %dx.types.ResRet.f32 %3614, 0
  %3616 = extractvalue %dx.types.ResRet.f32 %3614, 1
  %3617 = extractvalue %dx.types.ResRet.f32 %3614, 2
  %3618 = extractvalue %dx.types.ResRet.f32 %3614, 3
  %3619 = or i32 %3598, 112
  %3620 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3619, i32 undef)  ; BufferLoad(srv,index,wot)
  %3621 = extractvalue %dx.types.ResRet.f32 %3620, 2
  %3622 = or i32 %3598, 128
  %3623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3627 = extractvalue %dx.types.ResRet.f32 %3623, 3
  %3628 = or i32 %3598, 144
  %3629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3631 = extractvalue %dx.types.ResRet.f32 %3629, 1
  %3632 = extractvalue %dx.types.ResRet.f32 %3629, 2
  %3633 = extractvalue %dx.types.ResRet.f32 %3629, 3
  %3634 = or i32 %3598, 160
  %3635 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3634, i32 undef)  ; BufferLoad(srv,index,wot)
  %3636 = extractvalue %dx.types.ResRet.f32 %3635, 0
  %3637 = extractvalue %dx.types.ResRet.f32 %3635, 1
  %3638 = extractvalue %dx.types.ResRet.f32 %3635, 2
  %3639 = extractvalue %dx.types.ResRet.f32 %3635, 3
  %3640 = or i32 %3598, 192
  %3641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3640, i32 undef)  ; BufferLoad(srv,index,wot)
  %3642 = extractvalue %dx.types.ResRet.i32 %3641, 0
  %3643 = or i32 %3598, 208
  %3644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = or i32 %3598, 248
  %3647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3646, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.ResRet.f32 %3647, 1
  %3650 = add nuw nsw i32 %3575, 1
  %3651 = bitcast float %3604 to i32
  %3652 = and i32 %3651, 512
  %3653 = icmp eq i32 %3652, 0
  %3654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3656 = extractvalue %dx.types.ResRet.f32 %3654, 1
  %3657 = extractvalue %dx.types.ResRet.f32 %3654, 2
  %3658 = extractvalue %dx.types.ResRet.f32 %3654, 3
  %3659 = call float @dx.op.dot4.f32(i32 56, float %3655, float %3656, float %3657, float %3658, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3660 = or i32 %3598, 16
  %3661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.ResRet.f32 %3661, 1
  %3664 = extractvalue %dx.types.ResRet.f32 %3661, 2
  %3665 = extractvalue %dx.types.ResRet.f32 %3661, 3
  %3666 = call float @dx.op.dot4.f32(i32 56, float %3662, float %3663, float %3664, float %3665, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3667 = or i32 %3598, 32
  %3668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3667, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.f32 %3668, 0
  %3670 = extractvalue %dx.types.ResRet.f32 %3668, 1
  %3671 = extractvalue %dx.types.ResRet.f32 %3668, 2
  %3672 = extractvalue %dx.types.ResRet.f32 %3668, 3
  %3673 = call float @dx.op.dot4.f32(i32 56, float %3669, float %3670, float %3671, float %3672, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3674 = call float @dx.op.unary.f32(i32 27, float %3659)  ; Round_ni(value)
  %3675 = call float @dx.op.unary.f32(i32 6, float %3674)  ; FAbs(value)
  %3676 = call float @dx.op.unary.f32(i32 27, float %3666)  ; Round_ni(value)
  %3677 = call float @dx.op.unary.f32(i32 6, float %3676)  ; FAbs(value)
  %3678 = call float @dx.op.unary.f32(i32 6, float %3673)  ; FAbs(value)
  %3679 = call float @dx.op.unary.f32(i32 27, float %3678)  ; Round_ni(value)
  %3680 = fadd fast float %3677, %3675
  %3681 = fadd fast float %3680, %3679
  %3682 = fcmp fast oeq float %3681, 0.000000e+00
  %3683 = call float @dx.op.dot4.f32(i32 56, float %3655, float %3656, float %3657, float %3658, float %3527, float %3528, float %3529, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3684 = call float @dx.op.dot4.f32(i32 56, float %3662, float %3663, float %3664, float %3665, float %3527, float %3528, float %3529, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3685 = call float @dx.op.dot4.f32(i32 56, float %3655, float %3656, float %3657, float %3658, float %3530, float %3531, float %3532, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3686 = call float @dx.op.dot4.f32(i32 56, float %3662, float %3663, float %3664, float %3665, float %3530, float %3531, float %3532, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3687 = fsub fast float %3683, %3659
  %3688 = fsub fast float %3685, %3659
  %3689 = fsub fast float %3684, %3666
  %3690 = fsub fast float %3686, %3666
  %3691 = call float @dx.op.dot3.f32(i32 55, float %3601, float %3602, float %3603, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %3692 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3693 = extractvalue %dx.types.CBufRet.f32 %3692, 2
  %3694 = fadd fast float %3693, %3691
  %3695 = call float @dx.op.unary.f32(i32 7, float %3694)  ; Saturate(value)
  %3696 = extractvalue %dx.types.CBufRet.f32 %3692, 0
  %3697 = fcmp fast ogt float %3695, %3696
  %3698 = and i1 %3682, %3697
  %3699 = and i1 %3653, %3698
  br i1 %3699, label %3720, label %3700

; <label>:3700                                    ; preds = %3983, %3801, %3720, %3574
  %3701 = phi float [ %3576, %3720 ], [ %3804, %3801 ], [ %3804, %3983 ], [ %3576, %3574 ]
  %3702 = phi float [ %3577, %3720 ], [ %3577, %3801 ], [ %3958, %3983 ], [ %3577, %3574 ]
  %3703 = phi float [ %3578, %3720 ], [ %3578, %3801 ], [ %3956, %3983 ], [ %3578, %3574 ]
  %3704 = phi float [ %3579, %3720 ], [ %3579, %3801 ], [ %3928, %3983 ], [ %3579, %3574 ]
  %3705 = phi float [ %3580, %3720 ], [ %3580, %3801 ], [ %3926, %3983 ], [ %3580, %3574 ]
  %3706 = phi float [ %3581, %3720 ], [ %3581, %3801 ], [ %3993, %3983 ], [ %3581, %3574 ]
  %3707 = phi float [ %3582, %3720 ], [ %3582, %3801 ], [ %3994, %3983 ], [ %3582, %3574 ]
  %3708 = phi float [ %3583, %3720 ], [ %3583, %3801 ], [ %3995, %3983 ], [ %3583, %3574 ]
  %3709 = phi float [ %3584, %3720 ], [ %3584, %3801 ], [ %3907, %3983 ], [ %3584, %3574 ]
  %3710 = phi float [ %3585, %3720 ], [ %3585, %3801 ], [ %3908, %3983 ], [ %3585, %3574 ]
  %3711 = phi float [ %3586, %3720 ], [ %3586, %3801 ], [ %3909, %3983 ], [ %3586, %3574 ]
  %3712 = phi float [ %3587, %3720 ], [ %3587, %3801 ], [ %3936, %3983 ], [ %3587, %3574 ]
  %3713 = phi float [ %3588, %3720 ], [ %3588, %3801 ], [ %3933, %3983 ], [ %3588, %3574 ]
  %3714 = phi float [ %3589, %3720 ], [ %3589, %3801 ], [ %3930, %3983 ], [ %3589, %3574 ]
  %3715 = phi float [ %3590, %3720 ], [ %3590, %3801 ], [ %3924, %3983 ], [ %3590, %3574 ]
  %3716 = phi float [ %3591, %3720 ], [ %3591, %3801 ], [ %3919, %3983 ], [ %3591, %3574 ]
  %3717 = phi float [ %3592, %3720 ], [ %3592, %3801 ], [ %3920, %3983 ], [ %3592, %3574 ]
  %3718 = phi float [ %3593, %3720 ], [ %3593, %3801 ], [ %3921, %3983 ], [ %3593, %3574 ]
  %3719 = icmp eq i32 %3650, %3573
  br i1 %3719, label %3996, label %3574

; <label>:3720                                    ; preds = %3574
  %3721 = extractvalue %dx.types.ResRet.f32 %3620, 3
  %3722 = extractvalue %dx.types.ResRet.f32 %3620, 1
  %3723 = extractvalue %dx.types.ResRet.f32 %3620, 0
  %3724 = extractvalue %dx.types.ResRet.f32 %3610, 1
  %3725 = extractvalue %dx.types.ResRet.f32 %3610, 0
  %3726 = extractvalue %dx.types.ResRet.i32 %3606, 3
  %3727 = extractvalue %dx.types.ResRet.i32 %3606, 2
  %3728 = add i32 %3726, 0
  %3729 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3728, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3730 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3731 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3729, %dx.types.Handle %3730, float %3659, float %3666, float undef, float undef, i32 0, i32 0, i32 undef, float %3687, float %3689, float undef, float %3688, float %3690, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3732 = extractvalue %dx.types.ResRet.f32 %3731, 0
  %3733 = fmul fast float %3732, %3725
  %3734 = fadd fast float %3733, %3724
  %3735 = call float @dx.op.unary.f32(i32 7, float %3734)  ; Saturate(value)
  %3736 = fmul fast float %3659, %3615
  %3737 = call float @dx.op.tertiary.f32(i32 46, float %3616, float %3666, float %3736)  ; FMad(a,b,c)
  %3738 = fadd fast float %3737, %3723
  %3739 = fmul fast float %3659, %3617
  %3740 = call float @dx.op.tertiary.f32(i32 46, float %3618, float %3666, float %3739)  ; FMad(a,b,c)
  %3741 = fadd fast float %3740, %3722
  %3742 = fmul fast float %3687, %3615
  %3743 = call float @dx.op.tertiary.f32(i32 46, float %3616, float %3689, float %3742)  ; FMad(a,b,c)
  %3744 = fmul fast float %3687, %3617
  %3745 = call float @dx.op.tertiary.f32(i32 46, float %3618, float %3689, float %3744)  ; FMad(a,b,c)
  %3746 = fmul fast float %3688, %3615
  %3747 = call float @dx.op.tertiary.f32(i32 46, float %3616, float %3690, float %3746)  ; FMad(a,b,c)
  %3748 = fmul fast float %3688, %3617
  %3749 = call float @dx.op.tertiary.f32(i32 46, float %3618, float %3690, float %3748)  ; FMad(a,b,c)
  %3750 = add i32 %3727, 0
  %3751 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3750, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3752 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3751, %dx.types.Handle %3730, float %3738, float %3741, float undef, float undef, i32 0, i32 0, i32 undef, float %3743, float %3745, float undef, float %3747, float %3749, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3753 = extractvalue %dx.types.ResRet.f32 %3752, 0
  %3754 = and i32 %3651, 1024
  %3755 = icmp ne i32 %3754, 0
  %3756 = fcmp fast ogt float %3753, 0x3FE0101020000000
  %3757 = uitofp i1 %3756 to float
  %3758 = select i1 %3755, float %3757, float %3753
  %3759 = and i32 %3651, 8192
  %3760 = icmp ne i32 %3759, 0
  %3761 = select i1 %3760, float %3721, float 1.000000e+00
  %3762 = fmul fast float %3659, 2.000000e+00
  %3763 = fadd fast float %3762, -1.000000e+00
  %3764 = call float @dx.op.unary.f32(i32 6, float %3763)  ; FAbs(value)
  %3765 = fmul fast float %3764, %3648
  %3766 = fsub fast float %3765, %3648
  %3767 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  %3768 = fmul fast float %3666, 2.000000e+00
  %3769 = fadd fast float %3768, -1.000000e+00
  %3770 = call float @dx.op.unary.f32(i32 6, float %3769)  ; FAbs(value)
  %3771 = fmul fast float %3770, %3649
  %3772 = fsub fast float %3771, %3649
  %3773 = call float @dx.op.unary.f32(i32 7, float %3772)  ; Saturate(value)
  %3774 = fmul fast float %3678, %3611
  %3775 = fsub fast float %3774, %3611
  %3776 = call float @dx.op.unary.f32(i32 7, float %3775)  ; Saturate(value)
  %3777 = fmul fast float %3735, %3761
  %3778 = fmul fast float %3777, %3732
  %3779 = fmul fast float %3778, %3767
  %3780 = fmul fast float %3779, %3758
  %3781 = fmul fast float %3780, %3773
  %3782 = fmul fast float %3781, %3776
  %3783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3784 = extractvalue %dx.types.CBufRet.f32 %3783, 1
  %3785 = extractvalue %dx.types.CBufRet.f32 %3783, 0
  %3786 = fsub fast float %3695, %3785
  %3787 = fmul fast float %3786, %3784
  %3788 = call float @dx.op.unary.f32(i32 7, float %3787)  ; Saturate(value)
  %3789 = fmul fast float %3782, %3612
  %3790 = fadd fast float %3782, %3612
  %3791 = fmul fast float %3790, %3621
  %3792 = fsub fast float %3791, %3621
  %3793 = call float @dx.op.unary.f32(i32 7, float %3792)  ; Saturate(value)
  %3794 = and i32 %3651, 128
  %3795 = icmp ne i32 %3794, 0
  %3796 = select i1 %3795, float %3793, float %3789
  %3797 = fmul fast float %3796, %3788
  %3798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3799 = extractvalue %dx.types.CBufRet.f32 %3798, 0
  %3800 = fcmp fast ugt float %3797, %3799
  br i1 %3800, label %3801, label %3700

; <label>:3801                                    ; preds = %3720
  %3802 = select i1 %3760, float %3797, float 0.000000e+00
  %3803 = fadd fast float %3802, %3576
  %3804 = call float @dx.op.unary.f32(i32 7, float %3803)  ; Saturate(value)
  br i1 %3760, label %3700, label %3805

; <label>:3805                                    ; preds = %3801
  %3806 = and i32 %3651, 4
  %3807 = and i32 %3651, 8
  %3808 = add i32 %3607, 0
  %3809 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3808, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3810 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3811 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3809, %dx.types.Handle %3810, float %3738, float %3741, float undef, float undef, i32 0, i32 0, i32 undef, float %3743, float %3745, float undef, float %3747, float %3749, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3812 = extractvalue %dx.types.ResRet.f32 %3811, 0
  %3813 = extractvalue %dx.types.ResRet.f32 %3811, 1
  %3814 = extractvalue %dx.types.ResRet.f32 %3811, 2
  %3815 = extractvalue %dx.types.ResRet.f32 %3811, 3
  %3816 = bitcast float %3633 to i32
  %3817 = and i32 %3816, 255
  %3818 = uitofp i32 %3817 to float
  %3819 = lshr i32 %3816, 8
  %3820 = and i32 %3819, 255
  %3821 = uitofp i32 %3820 to float
  %3822 = fmul fast float %3815, %3818
  %3823 = fadd fast float %3822, %3821
  %3824 = fmul fast float %3823, 0x3F70101000000000
  %3825 = add i32 %3608, 0
  %3826 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3825, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3827 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3826, %dx.types.Handle %3810, float %3738, float %3741, float undef, float undef, i32 0, i32 0, i32 undef, float %3743, float %3745, float undef, float %3747, float %3749, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3828 = extractvalue %dx.types.ResRet.f32 %3827, 0
  %3829 = extractvalue %dx.types.ResRet.f32 %3827, 1
  %3830 = extractvalue %dx.types.ResRet.f32 %3827, 2
  %3831 = extractvalue %dx.types.ResRet.f32 %3827, 3
  %3832 = bitcast float %3627 to i32
  %3833 = and i32 %3832, 255
  %3834 = uitofp i32 %3833 to float
  %3835 = lshr i32 %3832, 8
  %3836 = and i32 %3835, 255
  %3837 = uitofp i32 %3836 to float
  %3838 = lshr i32 %3832, 16
  %3839 = and i32 %3838, 255
  %3840 = uitofp i32 %3839 to float
  %3841 = fmul fast float %3840, 0x3F70101000000000
  %3842 = fmul fast float %3828, %3834
  %3843 = fadd fast float %3842, %3837
  %3844 = fmul fast float %3843, 0x3F70101000000000
  %3845 = fadd fast float %3829, -5.000000e-01
  %3846 = fadd fast float %3831, -5.000000e-01
  %3847 = fmul fast float %3845, %3841
  %3848 = fmul fast float %3846, %3841
  %3849 = fadd fast float %3847, 5.000000e-01
  %3850 = fadd fast float %3848, 5.000000e-01
  %3851 = fmul fast float %3812, %3636
  %3852 = fmul fast float %3813, %3637
  %3853 = fmul fast float %3814, %3638
  %3854 = fmul fast float %3849, 2.000000e+00
  %3855 = fadd fast float %3854, -1.000000e+00
  %3856 = fmul fast float %3850, 2.000000e+00
  %3857 = fadd fast float %3856, -1.000000e+00
  %3858 = fadd fast float %3855, %3857
  %3859 = fmul fast float %3858, 5.000000e-01
  %3860 = fsub fast float %3855, %3857
  %3861 = fmul fast float %3860, 5.000000e-01
  %3862 = call float @dx.op.unary.f32(i32 6, float %3859)  ; FAbs(value)
  %3863 = fsub fast float 1.000000e+00, %3862
  %3864 = call float @dx.op.unary.f32(i32 6, float %3861)  ; FAbs(value)
  %3865 = fsub fast float %3863, %3864
  %3866 = call float @dx.op.dot3.f32(i32 55, float %3859, float %3861, float %3865, float %3859, float %3861, float %3865)  ; Dot3(ax,ay,az,bx,by,bz)
  %3867 = call float @dx.op.unary.f32(i32 25, float %3866)  ; Rsqrt(value)
  %3868 = fmul fast float %3859, %3867
  %3869 = fmul fast float %3861, %3867
  %3870 = fmul fast float %3867, %3865
  %3871 = fmul fast float %3870, %3601
  %3872 = fmul fast float %3870, %3602
  %3873 = fmul fast float %3870, %3603
  %3874 = fmul fast float %3868, %3624
  %3875 = fmul fast float %3868, %3625
  %3876 = fmul fast float %3868, %3626
  %3877 = fadd fast float %3874, %3871
  %3878 = fadd fast float %3875, %3872
  %3879 = fadd fast float %3876, %3873
  %3880 = fmul fast float %3869, %3630
  %3881 = fmul fast float %3869, %3631
  %3882 = fmul fast float %3869, %3632
  %3883 = fadd fast float %3877, %3880
  %3884 = fadd fast float %3878, %3881
  %3885 = fadd fast float %3879, %3882
  %3886 = call float @dx.op.dot3.f32(i32 55, float %3883, float %3884, float %3885, float %3883, float %3884, float %3885)  ; Dot3(ax,ay,az,bx,by,bz)
  %3887 = call float @dx.op.unary.f32(i32 25, float %3886)  ; Rsqrt(value)
  %3888 = fmul fast float %3883, %3887
  %3889 = fmul fast float %3884, %3887
  %3890 = fmul fast float %3885, %3887
  %3891 = icmp ne i32 %3807, 0
  %3892 = select i1 %3891, float 1.000000e+00, float 0.000000e+00
  %3893 = fmul fast float %3797, %3892
  %3894 = and i32 %3651, 1
  %3895 = icmp eq i32 %3894, 0
  br i1 %3895, label %3896, label %3900

; <label>:3896                                    ; preds = %3805
  %3897 = fsub fast float %3888, %3584
  %3898 = fsub fast float %3889, %3585
  %3899 = fsub fast float %3890, %3586
  br label %3900

; <label>:3900                                    ; preds = %3896, %3805
  %3901 = phi float [ %3897, %3896 ], [ %3888, %3805 ]
  %3902 = phi float [ %3898, %3896 ], [ %3889, %3805 ]
  %3903 = phi float [ %3899, %3896 ], [ %3890, %3805 ]
  %3904 = fmul float %3903, %3893
  %3905 = fmul float %3902, %3893
  %3906 = fmul float %3901, %3893
  %3907 = fadd fast float %3906, %3584
  %3908 = fadd fast float %3905, %3585
  %3909 = fadd fast float %3904, %3586
  %3910 = icmp ne i32 %3806, 0
  %3911 = select i1 %3910, float 1.000000e+00, float 0.000000e+00
  %3912 = fmul fast float %3797, %3911
  %3913 = fsub fast float %3851, %3591
  %3914 = fsub fast float %3852, %3592
  %3915 = fsub fast float %3853, %3593
  %3916 = fmul fast float %3913, %3912
  %3917 = fmul fast float %3914, %3912
  %3918 = fmul fast float %3915, %3912
  %3919 = fadd fast float %3916, %3591
  %3920 = fadd fast float %3917, %3592
  %3921 = fadd fast float %3918, %3593
  %3922 = fsub fast float %3824, %3590
  %3923 = fmul fast float %3922, %3912
  %3924 = fadd fast float %3923, %3590
  %3925 = fmul fast float %3912, %3580
  %3926 = fsub fast float %3580, %3925
  %3927 = fmul fast float %3912, %3579
  %3928 = fsub fast float %3579, %3927
  %3929 = fadd fast float %3797, %3589
  %3930 = call float @dx.op.unary.f32(i32 7, float %3929)  ; Saturate(value)
  %3931 = fsub fast float %3844, %3588
  %3932 = fmul fast float %3931, %3893
  %3933 = fadd fast float %3932, %3588
  %3934 = fsub fast float %3830, %3587
  %3935 = fmul fast float %3934, %3893
  %3936 = fadd fast float %3935, %3587
  %3937 = call float @dx.op.dot3.f32(i32 55, float %3851, float %3852, float %3853, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3939 = extractvalue %dx.types.CBufRet.f32 %3938, 0
  %3940 = extractvalue %dx.types.CBufRet.f32 %3938, 1
  %3941 = fmul fast float %3940, %3937
  %3942 = fadd fast float %3941, %3939
  %3943 = call float @dx.op.unary.f32(i32 7, float %3942)  ; Saturate(value)
  %3944 = bitcast float %3639 to i32
  %3945 = and i32 %3944, 65535
  %3946 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3945)  ; LegacyF16ToF32(value)
  %3947 = lshr i32 %3944, 16
  %3948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3947)  ; LegacyF16ToF32(value)
  %3949 = fcmp fast oge float %3946, 0.000000e+00
  %3950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3951 = extractvalue %dx.types.CBufRet.f32 %3950, 0
  %3952 = select i1 %3949, float %3946, float %3951
  %3953 = fadd fast float %3952, %3948
  %3954 = fsub fast float %3943, %3578
  %3955 = fmul fast float %3954, %3797
  %3956 = fadd fast float %3955, %3578
  %3957 = fmul fast float %3953, %3797
  %3958 = call float @dx.op.binary.f32(i32 35, float %3577, float %3957)  ; FMax(a,b)
  %3959 = and i32 %3651, 16
  %3960 = icmp eq i32 %3959, 0
  br i1 %3960, label %3983, label %3961

; <label>:3961                                    ; preds = %3900
  %3962 = bitcast float %3645 to i32
  %3963 = add i32 %3642, 0
  %3964 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3963, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3965 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3964, %dx.types.Handle %3810, float %3738, float %3741, float undef, float undef, i32 0, i32 0, i32 undef, float %3743, float %3745, float undef, float %3747, float %3749, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3966 = extractvalue %dx.types.ResRet.f32 %3965, 0
  %3967 = extractvalue %dx.types.ResRet.f32 %3965, 1
  %3968 = extractvalue %dx.types.ResRet.f32 %3965, 2
  %3969 = and i32 %3962, 65535
  %3970 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3969)  ; LegacyF16ToF32(value)
  %3971 = fmul fast float %3966, %3636
  %3972 = fmul fast float %3967, %3637
  %3973 = fmul fast float %3968, %3638
  %3974 = and i32 %3651, 16384
  %3975 = icmp ne i32 %3974, 0
  %3976 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3977 = extractvalue %dx.types.CBufRet.f32 %3976, 0
  %3978 = select i1 %3975, float %3977, float 1.000000e+00
  %3979 = fmul fast float %3978, %3970
  %3980 = fmul fast float %3971, %3979
  %3981 = fmul fast float %3972, %3979
  %3982 = fmul fast float %3973, %3979
  br label %3983

; <label>:3983                                    ; preds = %3961, %3900
  %3984 = phi float [ %3980, %3961 ], [ 0.000000e+00, %3900 ]
  %3985 = phi float [ %3981, %3961 ], [ 0.000000e+00, %3900 ]
  %3986 = phi float [ %3982, %3961 ], [ 0.000000e+00, %3900 ]
  %3987 = fsub fast float %3984, %3581
  %3988 = fsub fast float %3985, %3582
  %3989 = fsub fast float %3986, %3583
  %3990 = fmul fast float %3987, %3797
  %3991 = fmul fast float %3988, %3797
  %3992 = fmul fast float %3989, %3797
  %3993 = fadd fast float %3990, %3581
  %3994 = fadd fast float %3991, %3582
  %3995 = fadd fast float %3992, %3583
  br label %3700

; <label>:3996                                    ; preds = %3700
  br label %3997

; <label>:3997                                    ; preds = %3996, %3520
  %3998 = phi float [ 0.000000e+00, %3520 ], [ %3701, %3996 ]
  %3999 = phi float [ %3489, %3520 ], [ %3702, %3996 ]
  %4000 = phi float [ %3470, %3520 ], [ %3703, %3996 ]
  %4001 = phi float [ 0.000000e+00, %3520 ], [ %3704, %3996 ]
  %4002 = phi float [ 0.000000e+00, %3520 ], [ %3705, %3996 ]
  %4003 = phi float [ %3464, %3520 ], [ %3706, %3996 ]
  %4004 = phi float [ %3465, %3520 ], [ %3707, %3996 ]
  %4005 = phi float [ %3466, %3520 ], [ %3708, %3996 ]
  %4006 = phi float [ %3515, %3520 ], [ %3709, %3996 ]
  %4007 = phi float [ %3516, %3520 ], [ %3710, %3996 ]
  %4008 = phi float [ %3517, %3520 ], [ %3711, %3996 ]
  %4009 = phi float [ %3469, %3520 ], [ %3712, %3996 ]
  %4010 = phi float [ %3468, %3520 ], [ %3713, %3996 ]
  %4011 = phi float [ 0.000000e+00, %3520 ], [ %3714, %3996 ]
  %4012 = phi float [ %3467, %3520 ], [ %3715, %3996 ]
  %4013 = phi float [ %3461, %3520 ], [ %3716, %3996 ]
  %4014 = phi float [ %3462, %3520 ], [ %3717, %3996 ]
  %4015 = phi float [ %3463, %3520 ], [ %3718, %3996 ]
  %4016 = call float @dx.op.dot3.f32(i32 55, float %4006, float %4007, float %4008, float %4006, float %4007, float %4008)  ; Dot3(ax,ay,az,bx,by,bz)
  %4017 = call float @dx.op.unary.f32(i32 25, float %4016)  ; Rsqrt(value)
  %4018 = fmul fast float %4017, %4006
  %4019 = fmul fast float %4017, %4007
  %4020 = fmul fast float %4017, %4008
  %4021 = fadd fast float %4011, %905
  %4022 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4023 = call float @dx.op.dot3.f32(i32 55, float %4018, float %4019, float %4020, float %4018, float %4019, float %4020)  ; Dot3(ax,ay,az,bx,by,bz)
  %4024 = call float @dx.op.unary.f32(i32 25, float %4023)  ; Rsqrt(value)
  %4025 = fmul fast float %4024, %4018
  %4026 = fmul fast float %4024, %4019
  %4027 = fmul fast float %4024, %4020
  br label %4028

; <label>:4028                                    ; preds = %3997, %3458
  %4029 = phi float [ %4025, %3997 ], [ %3515, %3458 ]
  %4030 = phi float [ %4026, %3997 ], [ %3516, %3458 ]
  %4031 = phi float [ %4027, %3997 ], [ %3517, %3458 ]
  %4032 = phi float [ %4013, %3997 ], [ %3461, %3458 ]
  %4033 = phi float [ %4014, %3997 ], [ %3462, %3458 ]
  %4034 = phi float [ %4015, %3997 ], [ %3463, %3458 ]
  %4035 = phi float [ %4003, %3997 ], [ %3464, %3458 ]
  %4036 = phi float [ %4004, %3997 ], [ %3465, %3458 ]
  %4037 = phi float [ %4005, %3997 ], [ %3466, %3458 ]
  %4038 = phi float [ %4012, %3997 ], [ %3467, %3458 ]
  %4039 = phi float [ %4022, %3997 ], [ %905, %3458 ]
  %4040 = phi float [ %4010, %3997 ], [ %3468, %3458 ]
  %4041 = phi float [ %4009, %3997 ], [ %3469, %3458 ]
  %4042 = phi float [ %4002, %3997 ], [ 0.000000e+00, %3458 ]
  %4043 = phi float [ %4001, %3997 ], [ 0.000000e+00, %3458 ]
  %4044 = phi float [ %3998, %3997 ], [ 0.000000e+00, %3458 ]
  %4045 = phi float [ %3999, %3997 ], [ %3489, %3458 ]
  %4046 = phi float [ %4000, %3997 ], [ %3470, %3458 ]
  %4047 = fadd fast float %4038, 0xBFB99999A0000000
  %4048 = call float @dx.op.unary.f32(i32 7, float %4047)  ; Saturate(value)
  %4049 = fmul fast float %4048, 0x3FF1C71C80000000
  %4050 = call float @dx.op.binary.f32(i32 36, float %4038, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4051 = fsub fast float 1.000000e+00, %4049
  %4052 = call float @dx.op.unary.f32(i32 7, float %4051)  ; Saturate(value)
  %4053 = fmul fast float %4052, %4032
  %4054 = fmul fast float %4052, %4033
  %4055 = fmul fast float %4052, %4034
  %4056 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4057 = call float @dx.op.unary.f32(i32 7, float %4054)  ; Saturate(value)
  %4058 = call float @dx.op.unary.f32(i32 7, float %4055)  ; Saturate(value)
  %4059 = fmul fast float %4049, %4032
  %4060 = fmul fast float %4049, %4033
  %4061 = fmul fast float %4049, %4034
  %4062 = fadd fast float %4059, %4050
  %4063 = fadd fast float %4060, %4050
  %4064 = fadd fast float %4061, %4050
  %4065 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4066 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4067 = call float @dx.op.unary.f32(i32 7, float %4064)  ; Saturate(value)
  %4068 = call float @dx.op.unary.f32(i32 7, float %4040)  ; Saturate(value)
  %4069 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4070 = extractvalue %dx.types.CBufRet.i32 %4069, 3
  %4071 = and i32 %4070, 8
  %4072 = icmp ne i32 %4071, 0
  %4073 = call float @dx.op.binary.f32(i32 35, float %4056, float %4032)  ; FMax(a,b)
  %4074 = call float @dx.op.binary.f32(i32 35, float %4057, float %4032)  ; FMax(a,b)
  %4075 = call float @dx.op.binary.f32(i32 35, float %4058, float %4032)  ; FMax(a,b)
  %4076 = call float @dx.op.dot3.f32(i32 55, float %4056, float %4057, float %4058, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4077 = select i1 %186, float %4032, float %4056
  %4078 = select i1 %186, float %4076, float %4057
  %4079 = select i1 %186, float 1.000000e+00, float %4058
  %4080 = select i1 %4072, float %4073, float %4077
  %4081 = select i1 %4072, float %4074, float %4078
  %4082 = select i1 %4072, float %4075, float %4079
  %4083 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4084 = extractvalue %dx.types.CBufRet.f32 %4083, 0
  %4085 = extractvalue %dx.types.CBufRet.f32 %4083, 1
  %4086 = extractvalue %dx.types.CBufRet.f32 %4083, 2
  %4087 = fadd fast float %4084, %144
  %4088 = fadd fast float %4085, %145
  %4089 = fadd fast float %4086, %146
  %4090 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4091 = extractvalue %dx.types.CBufRet.f32 %4090, 0
  %4092 = extractvalue %dx.types.CBufRet.f32 %4090, 1
  %4093 = fsub fast float %4087, %4091
  %4094 = fsub fast float %4088, %4092
  %4095 = fmul fast float %4093, %4093
  %4096 = fmul fast float %4094, %4094
  %4097 = fadd fast float %4095, %4096
  %4098 = call float @dx.op.unary.f32(i32 24, float %4097)  ; Sqrt(value)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4090, 2
  %4100 = fcmp fast olt float %4098, %4099
  br i1 %4100, label %4101, label %4168

; <label>:4101                                    ; preds = %4028
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 0
  %4104 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4105 = extractvalue %dx.types.CBufRet.f32 %4104, 0
  %4106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4107 = extractvalue %dx.types.CBufRet.f32 %4106, 0
  %4108 = extractvalue %dx.types.CBufRet.f32 %4102, 1
  %4109 = extractvalue %dx.types.CBufRet.f32 %4104, 1
  %4110 = extractvalue %dx.types.CBufRet.f32 %4106, 1
  %4111 = extractvalue %dx.types.CBufRet.f32 %4102, 3
  %4112 = extractvalue %dx.types.CBufRet.f32 %4104, 3
  %4113 = extractvalue %dx.types.CBufRet.f32 %4106, 3
  %4114 = fadd fast float %4111, %4087
  %4115 = fadd fast float %4112, %4088
  %4116 = fadd fast float %4113, %4089
  %4117 = fmul fast float %4114, %4103
  %4118 = call float @dx.op.tertiary.f32(i32 46, float %4115, float %4105, float %4117)  ; FMad(a,b,c)
  %4119 = call float @dx.op.tertiary.f32(i32 46, float %4116, float %4107, float %4118)  ; FMad(a,b,c)
  %4120 = fmul fast float %4114, %4108
  %4121 = call float @dx.op.tertiary.f32(i32 46, float %4115, float %4109, float %4120)  ; FMad(a,b,c)
  %4122 = call float @dx.op.tertiary.f32(i32 46, float %4116, float %4110, float %4121)  ; FMad(a,b,c)
  %4123 = fsub fast float %4119, %4111
  %4124 = fsub fast float %4122, %4112
  %4125 = fsub fast float %4123, %4091
  %4126 = fadd fast float %4125, %4099
  %4127 = fsub fast float %4124, %4092
  %4128 = fadd fast float %4127, %4099
  %4129 = extractvalue %dx.types.CBufRet.f32 %4090, 3
  %4130 = fmul fast float %4126, %4129
  %4131 = fmul fast float %4128, %4129
  %4132 = call float @dx.op.unary.f32(i32 7, float %4130)  ; Saturate(value)
  %4133 = call float @dx.op.unary.f32(i32 7, float %4131)  ; Saturate(value)
  %4134 = fsub fast float 1.000000e+00, %4132
  %4135 = fsub fast float 1.000000e+00, %4133
  %4136 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4134, float %4135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4137 = extractvalue %dx.types.ResRet.f32 %4136, 0
  %4138 = fcmp fast ugt float %4137, 0.000000e+00
  br i1 %4138, label %4139, label %4442

; <label>:4139                                    ; preds = %4101
  %4140 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4141 = extractvalue %dx.types.CBufRet.f32 %4140, 2
  %4142 = fmul fast float %4141, %4137
  %4143 = extractvalue %dx.types.CBufRet.f32 %4140, 3
  %4144 = fadd fast float %4143, %4142
  %4145 = extractvalue %dx.types.CBufRet.f32 %4106, 2
  %4146 = fadd fast float %4144, %4113
  %4147 = fmul fast float %4119, %4107
  %4148 = call float @dx.op.tertiary.f32(i32 46, float %4122, float %4110, float %4147)  ; FMad(a,b,c)
  %4149 = call float @dx.op.tertiary.f32(i32 46, float %4146, float %4145, float %4148)  ; FMad(a,b,c)
  %4150 = fsub fast float %4149, %4113
  %4151 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4152 = extractvalue %dx.types.CBufRet.f32 %4151, 2
  %4153 = fsub fast float %4150, %4152
  %4154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4134, float %4135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4155 = extractvalue %dx.types.ResRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.ResRet.f32 %4154, 1
  %4157 = extractvalue %dx.types.ResRet.f32 %4154, 2
  %4158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4134, float %4135, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4159 = extractvalue %dx.types.ResRet.f32 %4158, 0
  %4160 = extractvalue %dx.types.ResRet.f32 %4158, 1
  %4161 = extractvalue %dx.types.ResRet.f32 %4158, 2
  %4162 = fadd fast float %4159, %4155
  %4163 = fmul fast float %4162, 0x3F847AE140000000
  %4164 = fadd fast float %4160, %4156
  %4165 = fmul fast float %4164, 0x3F847AE140000000
  %4166 = fadd fast float %4161, %4157
  %4167 = fmul fast float %4166, 0x3F847AE140000000
  br label %4442

; <label>:4168                                    ; preds = %4028
  %4169 = and i32 %162, 1
  %4170 = icmp eq i32 %4169, 0
  br i1 %4170, label %4442, label %4171

; <label>:4171                                    ; preds = %4168
  %4172 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4173 = extractvalue %dx.types.CBufRet.f32 %4172, 0
  %4174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.f32 %4174, 0
  %4176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.f32 %4176, 0
  %4178 = extractvalue %dx.types.CBufRet.f32 %4172, 1
  %4179 = extractvalue %dx.types.CBufRet.f32 %4174, 1
  %4180 = extractvalue %dx.types.CBufRet.f32 %4176, 1
  %4181 = extractvalue %dx.types.CBufRet.f32 %4172, 3
  %4182 = extractvalue %dx.types.CBufRet.f32 %4174, 3
  %4183 = extractvalue %dx.types.CBufRet.f32 %4176, 3
  %4184 = fadd fast float %4181, %4087
  %4185 = fadd fast float %4182, %4088
  %4186 = fadd fast float %4183, %4089
  %4187 = fmul fast float %4184, %4173
  %4188 = call float @dx.op.tertiary.f32(i32 46, float %4185, float %4175, float %4187)  ; FMad(a,b,c)
  %4189 = call float @dx.op.tertiary.f32(i32 46, float %4186, float %4177, float %4188)  ; FMad(a,b,c)
  %4190 = fmul fast float %4184, %4178
  %4191 = call float @dx.op.tertiary.f32(i32 46, float %4185, float %4179, float %4190)  ; FMad(a,b,c)
  %4192 = call float @dx.op.tertiary.f32(i32 46, float %4186, float %4180, float %4191)  ; FMad(a,b,c)
  %4193 = fsub fast float %4189, %4181
  %4194 = fsub fast float %4192, %4182
  %4195 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4196 = extractvalue %dx.types.CBufRet.f32 %4195, 0
  %4197 = extractvalue %dx.types.CBufRet.f32 %4195, 1
  %4198 = extractvalue %dx.types.CBufRet.f32 %4195, 2
  %4199 = extractvalue %dx.types.CBufRet.f32 %4195, 3
  %4200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4201 = extractvalue %dx.types.CBufRet.f32 %4200, 3
  %4202 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4203 = extractvalue %dx.types.CBufRet.i32 %4202, 0
  %4204 = extractvalue %dx.types.CBufRet.i32 %4202, 1
  %4205 = udiv i32 %4204, %4203
  %4206 = fsub fast float %4193, %4196
  %4207 = fsub fast float %4194, %4197
  %4208 = call float @dx.op.binary.f32(i32 35, float %4206, float 0.000000e+00)  ; FMax(a,b)
  %4209 = call float @dx.op.binary.f32(i32 35, float %4207, float 0.000000e+00)  ; FMax(a,b)
  %4210 = call float @dx.op.binary.f32(i32 36, float %4208, float %4198)  ; FMin(a,b)
  %4211 = call float @dx.op.binary.f32(i32 36, float %4209, float %4199)  ; FMin(a,b)
  %4212 = add i32 %4203, -1
  %4213 = add i32 %4205, -1
  %4214 = fmul fast float %4210, %4201
  %4215 = fmul fast float %4211, %4201
  %4216 = fptoui float %4214 to i32
  %4217 = fptoui float %4215 to i32
  %4218 = call i32 @dx.op.binary.i32(i32 40, i32 %4216, i32 %4212)  ; UMin(a,b)
  %4219 = call i32 @dx.op.binary.i32(i32 40, i32 %4217, i32 %4213)  ; UMin(a,b)
  %4220 = mul i32 %4219, %4203
  %4221 = add i32 %4220, %4218
  %4222 = shl i32 %4221, 2
  %4223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.i32 %4223, 0
  %4225 = icmp eq i32 %4224, -1
  br i1 %4225, label %4442, label %4226

; <label>:4226                                    ; preds = %4171
  %4227 = mul i32 %4224, 148
  %4228 = add i32 %4227, 4
  %4229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4228, i32 undef)  ; BufferLoad(srv,index,wot)
  %4230 = extractvalue %dx.types.ResRet.f32 %4229, 0
  %4231 = add i32 %4227, 8
  %4232 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4231, i32 undef)  ; BufferLoad(srv,index,wot)
  %4233 = extractvalue %dx.types.ResRet.f32 %4232, 0
  %4234 = add i32 %4227, 36
  %4235 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4234, i32 undef)  ; BufferLoad(srv,index,wot)
  %4236 = extractvalue %dx.types.ResRet.f32 %4235, 0
  %4237 = add i32 %4227, 60
  %4238 = add i32 %4227, 92
  %4239 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4238, i32 undef)  ; BufferLoad(srv,index,wot)
  %4240 = extractvalue %dx.types.ResRet.i32 %4239, 0
  %4241 = add i32 %4227, 116
  %4242 = fsub fast float %4193, %4230
  %4243 = fsub fast float %4194, %4233
  %4244 = fmul fast float %4201, %4242
  %4245 = fmul fast float %4201, %4243
  %4246 = call float @dx.op.unary.f32(i32 7, float %4244)  ; Saturate(value)
  %4247 = call float @dx.op.unary.f32(i32 7, float %4245)  ; Saturate(value)
  %4248 = fsub fast float 1.000000e+00, %4247
  %4249 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4250 = extractvalue %dx.types.CBufRet.f32 %4249, 2
  %4251 = call float @dx.op.unary.f32(i32 83, float %4246)  ; DerivCoarseX(value)
  %4252 = call float @dx.op.unary.f32(i32 83, float %4248)  ; DerivCoarseX(value)
  %4253 = call float @dx.op.unary.f32(i32 84, float %4246)  ; DerivCoarseY(value)
  %4254 = call float @dx.op.unary.f32(i32 84, float %4248)  ; DerivCoarseY(value)
  %4255 = fmul fast float %4251, %4250
  %4256 = fmul fast float %4252, %4250
  %4257 = fmul fast float %4253, %4250
  %4258 = fmul fast float %4254, %4250
  %4259 = call float @dx.op.dot2.f32(i32 54, float %4257, float %4258, float %4257, float %4258)  ; Dot2(ax,ay,bx,by)
  %4260 = call float @dx.op.dot2.f32(i32 54, float %4255, float %4256, float %4255, float %4256)  ; Dot2(ax,ay,bx,by)
  %4261 = call float @dx.op.binary.f32(i32 35, float %4260, float %4259)  ; FMax(a,b)
  %4262 = call float @dx.op.unary.f32(i32 23, float %4261)  ; Log(value)
  %4263 = fmul fast float %4262, 5.000000e-01
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 1
  %4266 = fadd fast float %4265, %4263
  %4267 = call float @dx.op.binary.f32(i32 35, float %4266, float 0.000000e+00)  ; FMax(a,b)
  %4268 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4269 = extractvalue %dx.types.CBufRet.f32 %4268, 3
  %4270 = fadd fast float %4269, %4267
  %4271 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4272 = extractvalue %dx.types.CBufRet.f32 %4271, 3
  %4273 = fadd fast float %4270, %4272
  %4274 = add i32 %4240, 0
  %4275 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4274, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4276 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4275, i32 0)  ; GetDimensions(handle,mipLevel)
  %4277 = extractvalue %dx.types.Dimensions %4276, 0
  %4278 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4277)  ; FirstbitLo(value)
  %4279 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.i32 %4279, 1
  %4281 = sub nsw i32 %4280, %4278
  %4282 = sitofp i32 %4281 to float
  %4283 = fsub fast float %4273, %4282
  %4284 = call float @dx.op.binary.f32(i32 35, float %4283, float 0.000000e+00)  ; FMax(a,b)
  %4285 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4275, %dx.types.Handle %37, float %4246, float %4248, float %4236, float undef, i32 0, i32 0, i32 undef, float %4284)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4286 = extractvalue %dx.types.ResRet.f32 %4285, 0
  %4287 = fcmp ule float %4286, 0x3FE0101020000000
  %4288 = extractvalue %dx.types.CBufRet.i32 %4279, 0
  %4289 = and i32 %4288, 128
  %4290 = icmp ne i32 %4289, 0
  %4291 = and i1 %4287, %4290
  br i1 %4291, label %4442, label %4292

; <label>:4292                                    ; preds = %4226
  %4293 = add i32 %4227, 20
  %4294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4293, i32 undef)  ; BufferLoad(srv,index,wot)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = add i32 %4227, 24
  %4297 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4296, i32 undef)  ; BufferLoad(srv,index,wot)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = add i32 %4227, 40
  %4300 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4299, i32 undef)  ; BufferLoad(srv,index,wot)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = add i32 %4227, 96
  %4303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4302, i32 undef)  ; BufferLoad(srv,index,wot)
  %4304 = extractvalue %dx.types.ResRet.i32 %4303, 0
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 2
  %4307 = fmul fast float %4306, %4246
  %4308 = fmul fast float %4306, %4248
  %4309 = extractvalue %dx.types.CBufRet.f32 %4305, 3
  %4310 = fadd fast float %4307, %4309
  %4311 = fadd fast float %4308, %4309
  %4312 = add i32 %4304, 0
  %4313 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4312, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4314 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4313, i32 0)  ; GetDimensions(handle,mipLevel)
  %4315 = extractvalue %dx.types.Dimensions %4314, 0
  %4316 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4315)  ; FirstbitLo(value)
  %4317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.i32 %4317, 1
  %4319 = sub nsw i32 %4318, %4316
  %4320 = sitofp i32 %4319 to float
  %4321 = fsub fast float %4270, %4320
  %4322 = call float @dx.op.binary.f32(i32 35, float %4321, float 0.000000e+00)  ; FMax(a,b)
  %4323 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4313, %dx.types.Handle %37, float %4310, float %4311, float %4301, float undef, i32 0, i32 0, i32 undef, float %4322)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4324 = extractvalue %dx.types.ResRet.f32 %4323, 0
  %4325 = fmul fast float %4324, %4295
  %4326 = fadd fast float %4325, %4298
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 0
  %4329 = extractvalue %dx.types.CBufRet.f32 %4327, 1
  %4330 = extractvalue %dx.types.CBufRet.f32 %4327, 2
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 3
  %4333 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4334 = extractvalue %dx.types.CBufRet.f32 %4333, 3
  %4335 = extractvalue %dx.types.CBufRet.f32 %4327, 3
  %4336 = fadd fast float %4332, %4193
  %4337 = fadd fast float %4334, %4194
  %4338 = fadd fast float %4326, %4335
  %4339 = fmul fast float %4336, %4328
  %4340 = call float @dx.op.tertiary.f32(i32 46, float %4337, float %4329, float %4339)  ; FMad(a,b,c)
  %4341 = call float @dx.op.tertiary.f32(i32 46, float %4338, float %4330, float %4340)  ; FMad(a,b,c)
  %4342 = fsub fast float %4341, %4335
  %4343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4344 = extractvalue %dx.types.CBufRet.f32 %4343, 2
  %4345 = fsub fast float %4342, %4344
  %4346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.i32 %4346, 0
  %4348 = call i32 @dx.op.binary.i32(i32 40, i32 %4224, i32 %4347)  ; UMin(a,b)
  %4349 = mul i32 %4348, 36
  %4350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4349, i32 undef)  ; BufferLoad(srv,index,wot)
  %4351 = extractvalue %dx.types.ResRet.i32 %4350, 0
  %4352 = add i32 %4349, 4
  %4353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.f32 %4353, 0
  %4355 = fmul fast float %4354, %4246
  %4356 = fmul fast float %4354, %4248
  %4357 = extractvalue %dx.types.CBufRet.f32 %4353, 1
  %4358 = fadd fast float %4355, %4357
  %4359 = fadd fast float %4356, %4357
  %4360 = icmp eq i32 %4351, 0
  br i1 %4360, label %4429, label %4361

; <label>:4361                                    ; preds = %4292
  br label %4362

; <label>:4362                                    ; preds = %4419, %4361
  %4363 = phi float [ %4420, %4419 ], [ 0.000000e+00, %4361 ]
  %4364 = phi float [ %4421, %4419 ], [ 0.000000e+00, %4361 ]
  %4365 = phi float [ %4422, %4419 ], [ 0.000000e+00, %4361 ]
  %4366 = phi float [ %4423, %4419 ], [ 0.000000e+00, %4361 ]
  %4367 = phi float [ %4424, %4419 ], [ 0.000000e+00, %4361 ]
  %4368 = phi float [ %4425, %4419 ], [ 0.000000e+00, %4361 ]
  %4369 = phi i32 [ %4426, %4419 ], [ 0, %4361 ]
  %4370 = shl i32 %4369, 2
  %4371 = add i32 %4237, %4370
  %4372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4373 = extractvalue %dx.types.ResRet.f32 %4372, 0
  %4374 = add i32 %4241, %4370
  %4375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4376 = extractvalue %dx.types.ResRet.i32 %4375, 0
  %4377 = add i32 %4376, 0
  %4378 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4377, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4379 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4378, i32 0)  ; GetDimensions(handle,mipLevel)
  %4380 = extractvalue %dx.types.Dimensions %4379, 0
  %4381 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4380)  ; FirstbitLo(value)
  %4382 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4383 = extractvalue %dx.types.CBufRet.i32 %4382, 1
  %4384 = sub nsw i32 %4383, %4381
  %4385 = sitofp i32 %4384 to float
  %4386 = fsub fast float %4270, %4385
  %4387 = call float @dx.op.binary.f32(i32 35, float %4386, float 0.000000e+00)  ; FMax(a,b)
  %4388 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4378, %dx.types.Handle %37, float %4358, float %4359, float %4373, float undef, i32 0, i32 0, i32 undef, float %4387)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4389 = extractvalue %dx.types.ResRet.f32 %4388, 0
  %4390 = fcmp fast ogt float %4389, 0.000000e+00
  br i1 %4390, label %4391, label %4419

; <label>:4391                                    ; preds = %4362
  %4392 = add i32 %4352, %4370
  %4393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4392, i32 undef)  ; BufferLoad(srv,index,wot)
  %4394 = extractvalue %dx.types.ResRet.i32 %4393, 0
  %4395 = and i32 %4394, 32767
  %4396 = mul nuw nsw i32 %4395, 928
  %4397 = add nuw nsw i32 %4396, 48
  %4398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4399 = extractvalue %dx.types.ResRet.f32 %4398, 0
  %4400 = extractvalue %dx.types.ResRet.f32 %4398, 1
  %4401 = extractvalue %dx.types.ResRet.f32 %4398, 2
  %4402 = add nuw nsw i32 %4396, 60
  %4403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4402, i32 undef)  ; BufferLoad(srv,index,wot)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = extractvalue %dx.types.ResRet.f32 %4403, 1
  %4406 = extractvalue %dx.types.ResRet.f32 %4403, 2
  %4407 = fmul fast float %4399, %4389
  %4408 = fmul fast float %4400, %4389
  %4409 = fmul fast float %4401, %4389
  %4410 = fadd fast float %4407, %4363
  %4411 = fadd fast float %4408, %4364
  %4412 = fadd fast float %4409, %4365
  %4413 = fmul fast float %4404, %4389
  %4414 = fmul fast float %4405, %4389
  %4415 = fmul fast float %4406, %4389
  %4416 = fadd fast float %4413, %4366
  %4417 = fadd fast float %4414, %4367
  %4418 = fadd fast float %4415, %4368
  br label %4419

; <label>:4419                                    ; preds = %4391, %4362
  %4420 = phi float [ %4410, %4391 ], [ %4363, %4362 ]
  %4421 = phi float [ %4411, %4391 ], [ %4364, %4362 ]
  %4422 = phi float [ %4412, %4391 ], [ %4365, %4362 ]
  %4423 = phi float [ %4416, %4391 ], [ %4366, %4362 ]
  %4424 = phi float [ %4417, %4391 ], [ %4367, %4362 ]
  %4425 = phi float [ %4418, %4391 ], [ %4368, %4362 ]
  %4426 = add nuw i32 %4369, 1
  %4427 = icmp eq i32 %4426, %4351
  br i1 %4427, label %4428, label %4362

; <label>:4428                                    ; preds = %4419
  br label %4429

; <label>:4429                                    ; preds = %4428, %4292
  %4430 = phi float [ 0.000000e+00, %4292 ], [ %4420, %4428 ]
  %4431 = phi float [ 0.000000e+00, %4292 ], [ %4421, %4428 ]
  %4432 = phi float [ 0.000000e+00, %4292 ], [ %4422, %4428 ]
  %4433 = phi float [ 0.000000e+00, %4292 ], [ %4423, %4428 ]
  %4434 = phi float [ 0.000000e+00, %4292 ], [ %4424, %4428 ]
  %4435 = phi float [ 0.000000e+00, %4292 ], [ %4425, %4428 ]
  %4436 = fadd fast float %4433, %4430
  %4437 = fmul fast float %4436, 0x3F847AE140000000
  %4438 = fadd fast float %4434, %4431
  %4439 = fmul fast float %4438, 0x3F847AE140000000
  %4440 = fadd fast float %4435, %4432
  %4441 = fmul fast float %4440, 0x3F847AE140000000
  br label %4442

; <label>:4442                                    ; preds = %4429, %4226, %4171, %4168, %4139, %4101
  %4443 = phi float [ %4153, %4139 ], [ -1.310720e+05, %4101 ], [ %4345, %4429 ], [ -1.310720e+05, %4171 ], [ -1.310720e+05, %4226 ], [ -1.310720e+05, %4168 ]
  %4444 = phi float [ %4163, %4139 ], [ 0.000000e+00, %4101 ], [ %4437, %4429 ], [ 0.000000e+00, %4171 ], [ 0.000000e+00, %4226 ], [ 0.000000e+00, %4168 ]
  %4445 = phi float [ %4165, %4139 ], [ 0.000000e+00, %4101 ], [ %4439, %4429 ], [ 0.000000e+00, %4171 ], [ 0.000000e+00, %4226 ], [ 0.000000e+00, %4168 ]
  %4446 = phi float [ %4167, %4139 ], [ 0.000000e+00, %4101 ], [ %4441, %4429 ], [ 0.000000e+00, %4171 ], [ 0.000000e+00, %4226 ], [ 0.000000e+00, %4168 ]
  %4447 = phi i1 [ true, %4139 ], [ false, %4101 ], [ true, %4429 ], [ false, %4171 ], [ false, %4226 ], [ false, %4168 ]
  %4448 = and i32 %162, 3
  %4449 = icmp eq i32 %4448, 1
  %4450 = select i1 %4449, float 1.000000e+00, float 0.000000e+00
  %4451 = fsub fast float %4443, %146
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = select i1 %4447, float %4452, float 1.000000e+00
  %4454 = fmul fast float %4453, %4450
  %4455 = icmp eq i32 %4448, 3
  %4456 = select i1 %4455, float 1.000000e+00, float %4454
  %4457 = call float @dx.op.binary.f32(i32 35, float %4044, float %4456)  ; FMax(a,b)
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = fcmp fast une float %4458, 0.000000e+00
  %4460 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4461 = call float @dx.op.unary.f32(i32 25, float %4460)  ; Rsqrt(value)
  br i1 %4459, label %4469, label %4462

; <label>:4462                                    ; preds = %4442
  %4463 = fmul fast float %4461, %144
  %4464 = fmul fast float %4461, %145
  %4465 = fmul fast float %4461, %146
  %4466 = fsub fast float -0.000000e+00, %4463
  %4467 = fsub fast float -0.000000e+00, %4464
  %4468 = fsub fast float -0.000000e+00, %4465
  br label %4637

; <label>:4469                                    ; preds = %4442
  %4470 = fmul fast float %144, %4461
  %4471 = fsub fast float -0.000000e+00, %4470
  %4472 = fmul fast float %145, %4461
  %4473 = fsub fast float -0.000000e+00, %4472
  %4474 = fmul fast float %146, %4461
  %4475 = fsub fast float -0.000000e+00, %4474
  %4476 = call float @dx.op.dot3.f32(i32 55, float %4471, float %4473, float %4475, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %4477 = fmul fast float %4458, 2.500000e+00
  %4478 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4479 = fmul fast float %4458, 0x4013FFFFE0000000
  %4480 = fadd fast float %4479, 0xBFFFFFFFE0000000
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = fmul fast float %4458, 0x4004000020000000
  %4483 = fadd fast float %4482, 0xBFF8000040000000
  %4484 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4485 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4486 = fmul fast float %4047, 1.000000e+01
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = fmul fast float %4487, 2.000000e+00
  %4489 = fsub fast float 3.000000e+00, %4488
  %4490 = fmul fast float %4487, %4487
  %4491 = fmul fast float %4490, %4489
  %4492 = fsub fast float 1.000000e+00, %4491
  %4493 = fsub fast float 0x3FE3333340000000, %4068
  %4494 = fmul fast float %4493, 0x400AAAAAA0000000
  %4495 = call float @dx.op.unary.f32(i32 7, float %4494)  ; Saturate(value)
  %4496 = fmul fast float %4492, %4495
  %4497 = fmul fast float %4080, 0x3FEA2B8620000000
  %4498 = fmul fast float %4081, 0x3FEA2B8620000000
  %4499 = fmul fast float %4082, 0x3FEA2B8620000000
  %4500 = fadd fast float %4497, 0x3FC81DFBA0000000
  %4501 = fmul fast float %4500, %4080
  %4502 = fadd fast float %4501, 0x3F910E6020000000
  %4503 = fadd fast float %4498, 0x3FC81DFBA0000000
  %4504 = fmul fast float %4503, %4081
  %4505 = fadd fast float %4504, 0x3F910E6020000000
  %4506 = fadd fast float %4499, 0x3FC81DFBA0000000
  %4507 = fmul fast float %4506, %4082
  %4508 = fadd fast float %4507, 0x3F910E6020000000
  %4509 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4510 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4511 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4512 = fsub fast float %4509, %4080
  %4513 = fsub fast float %4510, %4081
  %4514 = fsub fast float %4511, %4082
  %4515 = fmul fast float %4512, %4485
  %4516 = fmul fast float %4515, %4496
  %4517 = fmul fast float %4513, %4485
  %4518 = fmul fast float %4517, %4496
  %4519 = fmul fast float %4514, %4485
  %4520 = fmul fast float %4519, %4496
  %4521 = fadd fast float %4516, %4080
  %4522 = fadd fast float %4518, %4081
  %4523 = fadd fast float %4520, %4082
  %4524 = fmul fast float %4041, %4041
  %4525 = fmul fast float %4524, %4524
  %4526 = fadd fast float %4481, 1.000000e+00
  %4527 = fsub fast float %4526, %4496
  %4528 = call float @dx.op.unary.f32(i32 7, float %4527)  ; Saturate(value)
  %4529 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4530 = call float @dx.op.unary.f32(i32 7, float %4529)  ; Saturate(value)
  %4531 = fsub fast float 1.000000e+00, %4525
  %4532 = call float @dx.op.binary.f32(i32 36, float %4528, float %4531)  ; FMin(a,b)
  %4533 = call float @dx.op.unary.f32(i32 7, float %4484)  ; Saturate(value)
  %4534 = call float @dx.op.binary.f32(i32 35, float %4532, float %4533)  ; FMax(a,b)
  %4535 = fadd fast float %4530, 0xBFE4CCCCC0000000
  %4536 = fmul fast float %4535, 0x4006DB6DA0000000
  %4537 = call float @dx.op.unary.f32(i32 7, float %4536)  ; Saturate(value)
  %4538 = fmul fast float %4537, 2.000000e+00
  %4539 = fsub fast float 3.000000e+00, %4538
  %4540 = bitcast float %4065 to i32
  %4541 = ashr i32 %4540, 1
  %4542 = add nsw i32 %4541, 532487669
  %4543 = bitcast i32 %4542 to float
  %4544 = fsub fast float 1.000000e+00, %4543
  %4545 = bitcast float %4544 to i32
  %4546 = sub nsw i32 2129859010, %4545
  %4547 = bitcast i32 %4546 to float
  %4548 = fmul fast float %4547, 2.000000e+00
  %4549 = bitcast float %4066 to i32
  %4550 = ashr i32 %4549, 1
  %4551 = add nsw i32 %4550, 532487669
  %4552 = bitcast i32 %4551 to float
  %4553 = fsub fast float 1.000000e+00, %4552
  %4554 = bitcast float %4553 to i32
  %4555 = sub nsw i32 2129859010, %4554
  %4556 = bitcast i32 %4555 to float
  %4557 = fmul fast float %4556, 2.000000e+00
  %4558 = bitcast float %4067 to i32
  %4559 = ashr i32 %4558, 1
  %4560 = add nsw i32 %4559, 532487669
  %4561 = bitcast i32 %4560 to float
  %4562 = fsub fast float 1.000000e+00, %4561
  %4563 = bitcast float %4562 to i32
  %4564 = sub nsw i32 2129859010, %4563
  %4565 = bitcast i32 %4564 to float
  %4566 = fmul fast float %4565, 2.000000e+00
  %4567 = fsub fast float 0x4002A9FBE0000000, %4548
  %4568 = fadd fast float %4548, 0x3FD54FDF00000000
  %4569 = bitcast float %4568 to i32
  %4570 = sub nsw i32 2129859010, %4569
  %4571 = bitcast i32 %4570 to float
  %4572 = fmul fast float %4571, %4567
  %4573 = fmul fast float %4572, %4572
  %4574 = fsub fast float 0x4002A9FBE0000000, %4557
  %4575 = fadd fast float %4557, 0x3FD54FDF00000000
  %4576 = bitcast float %4575 to i32
  %4577 = sub nsw i32 2129859010, %4576
  %4578 = bitcast i32 %4577 to float
  %4579 = fmul fast float %4578, %4574
  %4580 = fmul fast float %4579, %4579
  %4581 = fsub fast float 0x4002A9FBE0000000, %4566
  %4582 = fadd fast float %4566, 0x3FD54FDF00000000
  %4583 = bitcast float %4582 to i32
  %4584 = sub nsw i32 2129859010, %4583
  %4585 = bitcast i32 %4584 to float
  %4586 = fmul fast float %4585, %4581
  %4587 = fmul fast float %4586, %4586
  %4588 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4573)  ; FMax(a,b)
  %4589 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4580)  ; FMax(a,b)
  %4590 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4587)  ; FMax(a,b)
  %4591 = fsub fast float 1.000000e+00, %4476
  %4592 = fadd fast float %4591, %4492
  %4593 = call float @dx.op.unary.f32(i32 7, float %4592)  ; Saturate(value)
  %4594 = fsub fast float 1.000000e+00, %4456
  %4595 = fmul fast float %4534, %4594
  %4596 = fmul fast float %4537, %4537
  %4597 = fmul fast float %4596, %4595
  %4598 = fmul fast float %4597, %4539
  %4599 = fmul fast float %4594, 0xBFE99999A0000000
  %4600 = fmul fast float %4599, %4485
  %4601 = fmul fast float %4600, %4496
  %4602 = fadd fast float %4601, 1.000000e+00
  %4603 = fadd fast float %4068, -1.000000e+00
  %4604 = fmul fast float %4602, %4603
  %4605 = fadd fast float %4604, 1.000000e+00
  %4606 = fsub fast float %4588, %4065
  %4607 = fsub fast float %4589, %4066
  %4608 = fsub fast float %4590, %4067
  %4609 = fmul fast float %4598, %4606
  %4610 = fmul fast float %4598, %4607
  %4611 = fmul fast float %4598, %4608
  %4612 = fadd fast float %4609, %4065
  %4613 = fadd fast float %4610, %4066
  %4614 = fadd fast float %4611, %4067
  %4615 = fsub fast float %94, %4029
  %4616 = fsub fast float %96, %4030
  %4617 = fsub fast float %98, %4031
  %4618 = fmul fast float %4598, %4615
  %4619 = fmul fast float %4598, %4616
  %4620 = fmul fast float %4598, %4617
  %4621 = fadd fast float %4618, %4029
  %4622 = fadd fast float %4619, %4030
  %4623 = fadd fast float %4620, %4031
  %4624 = fmul fast float %4598, %4593
  %4625 = call float @dx.op.unary.f32(i32 7, float %4605)  ; Saturate(value)
  %4626 = fsub fast float 1.000000e+00, %4625
  %4627 = fmul fast float %4624, %4626
  %4628 = fadd fast float %4627, %4625
  %4629 = fsub fast float 1.000000e+00, %4041
  %4630 = fmul fast float %4598, %4629
  %4631 = fadd fast float %4630, %4041
  %4632 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4622, float %4623, float %4621, float %4622, float %4623)  ; Dot3(ax,ay,az,bx,by,bz)
  %4633 = call float @dx.op.unary.f32(i32 25, float %4632)  ; Rsqrt(value)
  %4634 = fmul fast float %4621, %4633
  %4635 = fmul fast float %4622, %4633
  %4636 = fmul fast float %4623, %4633
  br label %4637

; <label>:4637                                    ; preds = %4469, %4462
  %4638 = phi float [ %4468, %4462 ], [ %4475, %4469 ]
  %4639 = phi float [ %4467, %4462 ], [ %4473, %4469 ]
  %4640 = phi float [ %4466, %4462 ], [ %4471, %4469 ]
  %4641 = phi float [ %4465, %4462 ], [ %4474, %4469 ]
  %4642 = phi float [ %4464, %4462 ], [ %4472, %4469 ]
  %4643 = phi float [ %4463, %4462 ], [ %4470, %4469 ]
  %4644 = phi float [ %4029, %4462 ], [ %4634, %4469 ]
  %4645 = phi float [ %4030, %4462 ], [ %4635, %4469 ]
  %4646 = phi float [ %4031, %4462 ], [ %4636, %4469 ]
  %4647 = phi float [ %4065, %4462 ], [ %4612, %4469 ]
  %4648 = phi float [ %4066, %4462 ], [ %4613, %4469 ]
  %4649 = phi float [ %4067, %4462 ], [ %4614, %4469 ]
  %4650 = phi float [ %4080, %4462 ], [ %4521, %4469 ]
  %4651 = phi float [ %4081, %4462 ], [ %4522, %4469 ]
  %4652 = phi float [ %4082, %4462 ], [ %4523, %4469 ]
  %4653 = phi float [ %4068, %4462 ], [ %4628, %4469 ]
  %4654 = phi float [ %4041, %4462 ], [ %4631, %4469 ]
  %4655 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4656 = extractvalue %dx.types.CBufRet.f32 %4655, 2
  %4657 = extractvalue %dx.types.CBufRet.f32 %4655, 3
  %4658 = fmul fast float %4656, %85
  %4659 = fmul fast float %4657, %86
  %4660 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4661 = extractvalue %dx.types.CBufRet.f32 %4660, 0
  %4662 = extractvalue %dx.types.CBufRet.f32 %4660, 1
  %4663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4658, float %4659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4664 = extractvalue %dx.types.ResRet.f32 %4663, 0
  %4665 = fmul fast float %4664, %4662
  %4666 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4667 = fadd fast float %4666, -1.000000e+00
  %4668 = fmul fast float %4667, %4661
  %4669 = fadd fast float %4668, 1.000000e+00
  %4670 = select i1 %186, float 0.000000e+00, float %4649
  %4671 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %4640, float %4639, float %4638)  ; Dot3(ax,ay,az,bx,by,bz)
  %4672 = call float @dx.op.unary.f32(i32 7, float %4671)  ; Saturate(value)
  %4673 = call float @dx.op.dot3.f32(i32 55, float %4643, float %4642, float %4641, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4674 = fmul fast float %4673, 2.000000e+00
  %4675 = fmul fast float %4674, %4644
  %4676 = fmul fast float %4674, %4645
  %4677 = fmul fast float %4674, %4646
  %4678 = fsub fast float %4643, %4675
  %4679 = fsub fast float %4642, %4676
  %4680 = fsub fast float %4641, %4677
  %4681 = call float @dx.op.binary.f32(i32 36, float %4654, float %4669)  ; FMin(a,b)
  %4682 = fsub fast float 1.000000e+00, %4681
  %4683 = bitcast float %4682 to i32
  %4684 = ashr i32 %4683, 1
  %4685 = add nsw i32 %4684, 532487669
  %4686 = bitcast i32 %4685 to float
  %4687 = fsub fast float 1.000000e+00, %4653
  %4688 = call float @dx.op.binary.f32(i32 35, float %4687, float 0x3F847AE140000000)  ; FMax(a,b)
  %4689 = fmul fast float %4688, %4688
  %4690 = fmul fast float %4689, %4689
  %4691 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4686, float %4690, float %4691, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4693 = extractvalue %dx.types.ResRet.f32 %4692, 0
  %4694 = fsub fast float 1.000000e+00, %4654
  %4695 = bitcast float %4694 to i32
  %4696 = sub nsw i32 2129859010, %4695
  %4697 = bitcast i32 %4696 to float
  %4698 = call float @dx.op.dot3.f32(i32 55, float %62, float %58, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4699 = fmul fast float %4698, 0x3FD20DD760000000
  %4700 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %4701 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4702 = fcmp fast oeq float %4701, 0.000000e+00
  %4703 = fcmp fast oeq float %4700, 0.000000e+00
  %4704 = or i1 %4703, %4702
  br i1 %4704, label %4734, label %4705

; <label>:4705                                    ; preds = %4637
  %4706 = fsub fast float -0.000000e+00, %65
  %4707 = fsub fast float -0.000000e+00, %63
  %4708 = call float @dx.op.unary.f32(i32 24, float %4701)  ; Sqrt(value)
  %4709 = fdiv fast float %4708, %4700
  %4710 = fcmp fast ogt float %4709, 0x3FFB6F8900000000
  %4711 = select i1 %4710, float 0x3FFB6F8900000000, float %4709
  %4712 = fmul fast float %4711, 0x3FE8A23460000000
  %4713 = call float @dx.op.unary.f32(i32 7, float %4712)  ; Saturate(value)
  %4714 = call float @dx.op.binary.f32(i32 35, float %4711, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4715 = fmul fast float %4713, %4700
  %4716 = fmul fast float %4714, 0x3FF279A740000000
  %4717 = fadd fast float %4716, -1.000000e+00
  %4718 = call float @dx.op.dot3.f32(i32 55, float %4706, float %4707, float %64, float %4706, float %4707, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %4719 = call float @dx.op.unary.f32(i32 25, float %4718)  ; Rsqrt(value)
  %4720 = fmul fast float %4719, %4706
  %4721 = fmul fast float %4719, %4707
  %4722 = fmul fast float %4719, %64
  %4723 = fmul fast float %4717, %4717
  %4724 = fsub fast float 1.000000e+00, %4723
  %4725 = fmul fast float %4714, 0x40005F8BE0000000
  %4726 = fsub fast float 0x400C5BF8A0000000, %4725
  %4727 = fdiv fast float %4715, %4726
  %4728 = fmul fast float %4727, 0x3FEE31C3C0000000
  %4729 = fmul fast float %4728, %4724
  %4730 = fmul fast float %4714, 0x3FDACB7480000000
  %4731 = fadd fast float %4730, 0xBFD7347680000000
  %4732 = fmul fast float %4731, %4727
  %4733 = fmul fast float %4732, %4724
  br label %4734

; <label>:4734                                    ; preds = %4705, %4637
  %4735 = phi float [ %4720, %4705 ], [ 0.000000e+00, %4637 ]
  %4736 = phi float [ %4721, %4705 ], [ 0.000000e+00, %4637 ]
  %4737 = phi float [ %4722, %4705 ], [ 0.000000e+00, %4637 ]
  %4738 = phi float [ %4729, %4705 ], [ 0.000000e+00, %4637 ]
  %4739 = phi float [ %4733, %4705 ], [ 0.000000e+00, %4637 ]
  %4740 = call float @dx.op.dot3.f32(i32 55, float %4735, float %4736, float %4737, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4741 = fmul fast float %4740, %4740
  %4742 = fmul fast float %4741, 0x3FEE471020000000
  %4743 = fadd fast float %4742, 0xBFD42F6020000000
  %4744 = fmul fast float %4700, 0x3FD20DD760000000
  %4745 = fmul fast float %4743, %4739
  %4746 = fmul fast float %4738, 0x3FDF454380000000
  %4747 = fmul fast float %4746, %4740
  %4748 = fadd fast float %4747, %4744
  %4749 = fadd fast float %4748, %4745
  %4750 = call float @dx.op.dot3.f32(i32 55, float %4735, float %4736, float %4737, float %4678, float %4679, float %4680)  ; Dot3(ax,ay,az,bx,by,bz)
  %4751 = fmul fast float %4750, 0x3FDF454380000000
  %4752 = fmul fast float %4750, %4750
  %4753 = fmul fast float %4752, 0x3FEE471020000000
  %4754 = fadd fast float %4753, 0xBFD42F6020000000
  %4755 = call float @dx.op.dot3.f32(i32 55, float %4700, float %4738, float %4739, float 0x3FD20DD760000000, float %4751, float %4754)  ; Dot3(ax,ay,az,bx,by,bz)
  %4756 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4757 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4758 = fcmp fast oeq float %4757, 0.000000e+00
  %4759 = fcmp fast oeq float %4756, 0.000000e+00
  %4760 = or i1 %4759, %4758
  br i1 %4760, label %4790, label %4761

; <label>:4761                                    ; preds = %4734
  %4762 = fsub fast float -0.000000e+00, %61
  %4763 = fsub fast float -0.000000e+00, %59
  %4764 = call float @dx.op.unary.f32(i32 24, float %4757)  ; Sqrt(value)
  %4765 = fdiv fast float %4764, %4756
  %4766 = fcmp fast ogt float %4765, 0x3FFB6F8900000000
  %4767 = select i1 %4766, float 0x3FFB6F8900000000, float %4765
  %4768 = fmul fast float %4767, 0x3FE8A23460000000
  %4769 = call float @dx.op.unary.f32(i32 7, float %4768)  ; Saturate(value)
  %4770 = call float @dx.op.binary.f32(i32 35, float %4767, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4771 = fmul fast float %4769, %4756
  %4772 = fmul fast float %4770, 0x3FF279A740000000
  %4773 = fadd fast float %4772, -1.000000e+00
  %4774 = call float @dx.op.dot3.f32(i32 55, float %4762, float %4763, float %60, float %4762, float %4763, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4775 = call float @dx.op.unary.f32(i32 25, float %4774)  ; Rsqrt(value)
  %4776 = fmul fast float %4775, %4762
  %4777 = fmul fast float %4775, %4763
  %4778 = fmul fast float %4775, %60
  %4779 = fmul fast float %4773, %4773
  %4780 = fsub fast float 1.000000e+00, %4779
  %4781 = fmul fast float %4770, 0x40005F8BE0000000
  %4782 = fsub fast float 0x400C5BF8A0000000, %4781
  %4783 = fdiv fast float %4771, %4782
  %4784 = fmul fast float %4783, 0x3FEE31C3C0000000
  %4785 = fmul fast float %4784, %4780
  %4786 = fmul fast float %4770, 0x3FDACB7480000000
  %4787 = fadd fast float %4786, 0xBFD7347680000000
  %4788 = fmul fast float %4787, %4783
  %4789 = fmul fast float %4788, %4780
  br label %4790

; <label>:4790                                    ; preds = %4761, %4734
  %4791 = phi float [ %4776, %4761 ], [ 0.000000e+00, %4734 ]
  %4792 = phi float [ %4777, %4761 ], [ 0.000000e+00, %4734 ]
  %4793 = phi float [ %4778, %4761 ], [ 0.000000e+00, %4734 ]
  %4794 = phi float [ %4785, %4761 ], [ 0.000000e+00, %4734 ]
  %4795 = phi float [ %4789, %4761 ], [ 0.000000e+00, %4734 ]
  %4796 = call float @dx.op.dot3.f32(i32 55, float %4791, float %4792, float %4793, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4797 = fmul fast float %4796, %4796
  %4798 = fmul fast float %4797, 0x3FEE471020000000
  %4799 = fadd fast float %4798, 0xBFD42F6020000000
  %4800 = fmul fast float %4756, 0x3FD20DD760000000
  %4801 = fmul fast float %4799, %4795
  %4802 = fmul fast float %4794, 0x3FDF454380000000
  %4803 = fmul fast float %4802, %4796
  %4804 = fadd fast float %4803, %4800
  %4805 = fadd fast float %4804, %4801
  %4806 = call float @dx.op.dot3.f32(i32 55, float %4791, float %4792, float %4793, float %4678, float %4679, float %4680)  ; Dot3(ax,ay,az,bx,by,bz)
  %4807 = fmul fast float %4806, 0x3FDF454380000000
  %4808 = fmul fast float %4806, %4806
  %4809 = fmul fast float %4808, 0x3FEE471020000000
  %4810 = fadd fast float %4809, 0xBFD42F6020000000
  %4811 = call float @dx.op.dot3.f32(i32 55, float %4756, float %4794, float %4795, float 0x3FD20DD760000000, float %4807, float %4810)  ; Dot3(ax,ay,az,bx,by,bz)
  %4812 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4813 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4814 = fcmp fast oeq float %4813, 0.000000e+00
  %4815 = fcmp fast oeq float %4812, 0.000000e+00
  %4816 = or i1 %4815, %4814
  br i1 %4816, label %4846, label %4817

; <label>:4817                                    ; preds = %4790
  %4818 = fsub fast float -0.000000e+00, %57
  %4819 = fsub fast float -0.000000e+00, %55
  %4820 = call float @dx.op.unary.f32(i32 24, float %4813)  ; Sqrt(value)
  %4821 = fdiv fast float %4820, %4812
  %4822 = fcmp fast ogt float %4821, 0x3FFB6F8900000000
  %4823 = select i1 %4822, float 0x3FFB6F8900000000, float %4821
  %4824 = fmul fast float %4823, 0x3FE8A23460000000
  %4825 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4826 = call float @dx.op.binary.f32(i32 35, float %4823, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4827 = fmul fast float %4825, %4812
  %4828 = fmul fast float %4826, 0x3FF279A740000000
  %4829 = fadd fast float %4828, -1.000000e+00
  %4830 = call float @dx.op.dot3.f32(i32 55, float %4818, float %4819, float %56, float %4818, float %4819, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4831 = call float @dx.op.unary.f32(i32 25, float %4830)  ; Rsqrt(value)
  %4832 = fmul fast float %4831, %4818
  %4833 = fmul fast float %4831, %4819
  %4834 = fmul fast float %4831, %56
  %4835 = fmul fast float %4829, %4829
  %4836 = fsub fast float 1.000000e+00, %4835
  %4837 = fmul fast float %4826, 0x40005F8BE0000000
  %4838 = fsub fast float 0x400C5BF8A0000000, %4837
  %4839 = fdiv fast float %4827, %4838
  %4840 = fmul fast float %4839, 0x3FEE31C3C0000000
  %4841 = fmul fast float %4840, %4836
  %4842 = fmul fast float %4826, 0x3FDACB7480000000
  %4843 = fadd fast float %4842, 0xBFD7347680000000
  %4844 = fmul fast float %4843, %4839
  %4845 = fmul fast float %4844, %4836
  br label %4846

; <label>:4846                                    ; preds = %4817, %4790
  %4847 = phi float [ %4832, %4817 ], [ 0.000000e+00, %4790 ]
  %4848 = phi float [ %4833, %4817 ], [ 0.000000e+00, %4790 ]
  %4849 = phi float [ %4834, %4817 ], [ 0.000000e+00, %4790 ]
  %4850 = phi float [ %4841, %4817 ], [ 0.000000e+00, %4790 ]
  %4851 = phi float [ %4845, %4817 ], [ 0.000000e+00, %4790 ]
  %4852 = call float @dx.op.dot3.f32(i32 55, float %4847, float %4848, float %4849, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4853 = fmul fast float %4852, %4852
  %4854 = fmul fast float %4853, 0x3FEE471020000000
  %4855 = fadd fast float %4854, 0xBFD42F6020000000
  %4856 = fmul fast float %4812, 0x3FD20DD760000000
  %4857 = fmul fast float %4855, %4851
  %4858 = fmul fast float %4850, 0x3FDF454380000000
  %4859 = fmul fast float %4858, %4852
  %4860 = fadd fast float %4859, %4856
  %4861 = fadd fast float %4860, %4857
  %4862 = call float @dx.op.dot3.f32(i32 55, float %4847, float %4848, float %4849, float %4678, float %4679, float %4680)  ; Dot3(ax,ay,az,bx,by,bz)
  %4863 = fmul fast float %4862, 0x3FDF454380000000
  %4864 = fmul fast float %4862, %4862
  %4865 = fmul fast float %4864, 0x3FEE471020000000
  %4866 = fadd fast float %4865, 0xBFD42F6020000000
  %4867 = call float @dx.op.dot3.f32(i32 55, float %4812, float %4850, float %4851, float 0x3FD20DD760000000, float %4863, float %4866)  ; Dot3(ax,ay,az,bx,by,bz)
  %4868 = call float @dx.op.binary.f32(i32 35, float %4749, float 0.000000e+00)  ; FMax(a,b)
  %4869 = call float @dx.op.binary.f32(i32 35, float %4805, float 0.000000e+00)  ; FMax(a,b)
  %4870 = call float @dx.op.binary.f32(i32 35, float %4861, float 0.000000e+00)  ; FMax(a,b)
  %4871 = call float @dx.op.binary.f32(i32 35, float %4755, float 0.000000e+00)  ; FMax(a,b)
  %4872 = call float @dx.op.binary.f32(i32 35, float %4811, float 0.000000e+00)  ; FMax(a,b)
  %4873 = call float @dx.op.binary.f32(i32 35, float %4867, float 0.000000e+00)  ; FMax(a,b)
  %4874 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4875 = extractvalue %dx.types.CBufRet.f32 %4874, 0
  %4876 = call float @dx.op.binary.f32(i32 36, float %4650, float %4875)  ; FMin(a,b)
  %4877 = fmul fast float %4876, %4682
  %4878 = fsub fast float 1.000000e+00, %4877
  %4879 = bitcast float %4878 to i32
  %4880 = sub nsw i32 2129859010, %4879
  %4881 = bitcast i32 %4880 to float
  %4882 = call float @dx.op.binary.f32(i32 36, float %4651, float %4875)  ; FMin(a,b)
  %4883 = fmul fast float %4882, %4682
  %4884 = fsub fast float 1.000000e+00, %4883
  %4885 = bitcast float %4884 to i32
  %4886 = sub nsw i32 2129859010, %4885
  %4887 = bitcast i32 %4886 to float
  %4888 = call float @dx.op.binary.f32(i32 36, float %4652, float %4875)  ; FMin(a,b)
  %4889 = fmul fast float %4888, %4682
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = bitcast float %4890 to i32
  %4892 = sub nsw i32 2129859010, %4891
  %4893 = bitcast i32 %4892 to float
  %4894 = fmul fast float %4868, %4681
  %4895 = fmul fast float %4894, %4881
  %4896 = fmul fast float %4869, %4681
  %4897 = fmul fast float %4896, %4887
  %4898 = fmul fast float %4870, %4681
  %4899 = fmul fast float %4898, %4893
  %4900 = call float @dx.op.binary.f32(i32 36, float %4647, float %4875)  ; FMin(a,b)
  %4901 = fmul fast float %4900, %4682
  %4902 = fsub fast float 1.000000e+00, %4901
  %4903 = bitcast float %4902 to i32
  %4904 = sub nsw i32 2129859010, %4903
  %4905 = bitcast i32 %4904 to float
  %4906 = call float @dx.op.binary.f32(i32 36, float %4648, float %4875)  ; FMin(a,b)
  %4907 = fmul fast float %4906, %4682
  %4908 = fsub fast float 1.000000e+00, %4907
  %4909 = bitcast float %4908 to i32
  %4910 = sub nsw i32 2129859010, %4909
  %4911 = bitcast i32 %4910 to float
  %4912 = call float @dx.op.binary.f32(i32 36, float %4670, float %4875)  ; FMin(a,b)
  %4913 = fmul fast float %4912, %4682
  %4914 = fsub fast float 1.000000e+00, %4913
  %4915 = bitcast float %4914 to i32
  %4916 = sub nsw i32 2129859010, %4915
  %4917 = bitcast i32 %4916 to float
  %4918 = fmul fast float %4871, %4681
  %4919 = fmul fast float %4918, %4905
  %4920 = fmul fast float %4872, %4681
  %4921 = fmul fast float %4920, %4911
  %4922 = fmul fast float %4873, %4681
  %4923 = fmul fast float %4922, %4917
  %4924 = call float @dx.op.dot3.f32(i32 55, float %4895, float %4897, float %4899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4925 = select i1 %186, float 0.000000e+00, float %4895
  %4926 = select i1 %186, float %4924, float %4897
  %4927 = select i1 %186, float 0.000000e+00, float %4899
  %4928 = call float @dx.op.dot3.f32(i32 55, float %4919, float %4921, float %4923, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4929 = select i1 %186, float 0.000000e+00, float %4919
  %4930 = select i1 %186, float %4928, float %4921
  %4931 = select i1 %186, float 0.000000e+00, float %4923
  %4932 = fmul fast float %4672, 9.843750e-01
  %4933 = fmul fast float %4653, 9.843750e-01
  %4934 = fadd fast float %4932, 7.812500e-03
  %4935 = fadd fast float %4933, 7.812500e-03
  %4936 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4934, float %4935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4937 = extractvalue %dx.types.ResRet.f32 %4936, 2
  %4938 = extractvalue %dx.types.ResRet.f32 %4936, 3
  %4939 = fmul fast float %4937, %4647
  %4940 = fmul fast float %4937, %4648
  %4941 = fmul fast float %4937, %4670
  %4942 = fadd fast float %4939, %4938
  %4943 = fadd fast float %4940, %4938
  %4944 = fadd fast float %4941, %4938
  %4945 = fcmp fast ogt float %4042, 0.000000e+00
  br i1 %4945, label %4946, label %4972

; <label>:4946                                    ; preds = %4846
  %4947 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4042, float %4672, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4948 = extractvalue %dx.types.ResRet.f32 %4947, 0
  %4949 = extractvalue %dx.types.ResRet.f32 %4947, 1
  %4950 = extractvalue %dx.types.ResRet.f32 %4947, 2
  %4951 = fadd fast float %4948, -5.000000e-01
  %4952 = fadd fast float %4949, -5.000000e-01
  %4953 = fadd fast float %4950, -5.000000e-01
  %4954 = fsub fast float 1.000000e+00, %4647
  %4955 = fsub fast float 1.000000e+00, %4648
  %4956 = fsub fast float 1.000000e+00, %4670
  %4957 = fmul fast float %4647, 4.000000e+00
  %4958 = fmul fast float %4957, %4954
  %4959 = fmul fast float %4958, %4951
  %4960 = fmul fast float %4648, 4.000000e+00
  %4961 = fmul fast float %4960, %4955
  %4962 = fmul fast float %4961, %4952
  %4963 = fmul fast float %4670, 4.000000e+00
  %4964 = fmul fast float %4963, %4956
  %4965 = fmul fast float %4964, %4953
  %4966 = fadd fast float %4959, %4942
  %4967 = fadd fast float %4962, %4943
  %4968 = fadd fast float %4965, %4944
  %4969 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4970 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  %4971 = call float @dx.op.unary.f32(i32 7, float %4968)  ; Saturate(value)
  br label %4972

; <label>:4972                                    ; preds = %4946, %4846
  %4973 = phi float [ %4969, %4946 ], [ %4942, %4846 ]
  %4974 = phi float [ %4970, %4946 ], [ %4943, %4846 ]
  %4975 = phi float [ %4971, %4946 ], [ %4944, %4846 ]
  %4976 = call float @dx.op.binary.f32(i32 35, float %4974, float %4975)  ; FMax(a,b)
  %4977 = call float @dx.op.binary.f32(i32 35, float %4973, float %4976)  ; FMax(a,b)
  %4978 = fsub fast float 1.000000e+00, %4977
  %4979 = fmul fast float %4977, %4653
  %4980 = fadd fast float %4979, %4653
  %4981 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4982 = extractvalue %dx.types.CBufRet.f32 %4981, 0
  %4983 = extractvalue %dx.types.CBufRet.f32 %4981, 1
  %4984 = extractvalue %dx.types.CBufRet.f32 %4981, 2
  %4985 = extractvalue %dx.types.CBufRet.f32 %4981, 3
  %4986 = fmul fast float %4980, %4982
  %4987 = fadd fast float %4986, %4983
  %4988 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4989 = fmul fast float %4984, %4980
  %4990 = fadd fast float %4989, %4985
  %4991 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4992 = fsub fast float 1.000000e+00, %4693
  %4993 = fadd fast float %4992, %4991
  %4994 = call float @dx.op.unary.f32(i32 7, float %4993)  ; Saturate(value)
  %4995 = fcmp fast olt float %4994, 1.000000e+00
  br i1 %4995, label %4996, label %5851

; <label>:4996                                    ; preds = %4972
  %4997 = fcmp fast olt float %4988, 1.000000e+00
  %4998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4999 = extractvalue %dx.types.CBufRet.f32 %4998, 0
  %5000 = fcmp fast ogt float %4999, 0.000000e+00
  %5001 = or i1 %4997, %5000
  %5002 = or i1 %4997, %5000
  %5003 = xor i1 %5002, true
  %5004 = zext i1 %5003 to i32
  br i1 %5001, label %5005, label %5248

; <label>:5005                                    ; preds = %4996
  %5006 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5007 = extractvalue %dx.types.CBufRet.f32 %5006, 0
  %5008 = extractvalue %dx.types.CBufRet.f32 %5006, 1
  %5009 = extractvalue %dx.types.CBufRet.f32 %5006, 2
  %5010 = extractvalue %dx.types.CBufRet.f32 %5006, 3
  %5011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5012 = extractvalue %dx.types.CBufRet.f32 %5011, 0
  %5013 = extractvalue %dx.types.CBufRet.f32 %5011, 1
  %5014 = extractvalue %dx.types.CBufRet.f32 %5011, 2
  %5015 = extractvalue %dx.types.CBufRet.f32 %5011, 3
  %5016 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5017 = extractvalue %dx.types.CBufRet.f32 %5016, 0
  %5018 = extractvalue %dx.types.CBufRet.f32 %5016, 1
  %5019 = extractvalue %dx.types.CBufRet.f32 %5016, 2
  %5020 = extractvalue %dx.types.CBufRet.f32 %5016, 3
  %5021 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5022 = extractvalue %dx.types.CBufRet.f32 %5021, 0
  %5023 = extractvalue %dx.types.CBufRet.f32 %5021, 1
  %5024 = extractvalue %dx.types.CBufRet.f32 %5021, 2
  %5025 = extractvalue %dx.types.CBufRet.f32 %5021, 3
  %5026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5027 = extractvalue %dx.types.CBufRet.f32 %5026, 0
  %5028 = extractvalue %dx.types.CBufRet.f32 %5026, 1
  %5029 = extractvalue %dx.types.CBufRet.f32 %5026, 2
  %5030 = extractvalue %dx.types.CBufRet.f32 %5026, 3
  %5031 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5032 = extractvalue %dx.types.CBufRet.f32 %5031, 0
  %5033 = extractvalue %dx.types.CBufRet.f32 %5031, 1
  %5034 = extractvalue %dx.types.CBufRet.f32 %5031, 2
  %5035 = extractvalue %dx.types.CBufRet.f32 %5031, 3
  %5036 = call float @dx.op.dot3.f32(i32 55, float %5032, float %5033, float %5034, float %4678, float %4679, float %4680)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = call float @dx.op.unary.f32(i32 6, float %5037)  ; FAbs(value)
  %5039 = fmul fast float %5038, 8.000000e+00
  %5040 = fadd fast float %5039, -6.000000e+00
  %5041 = call float @dx.op.unary.f32(i32 7, float %5040)  ; Saturate(value)
  %5042 = fmul fast float %5036, 8.000000e+00
  %5043 = fmul fast float %5042, %4999
  %5044 = call float @dx.op.unary.f32(i32 7, float %5043)  ; Saturate(value)
  %5045 = fcmp fast ogt float %5044, 0.000000e+00
  br i1 %5045, label %5046, label %5223, !dx.controlflow.hints !85

; <label>:5046                                    ; preds = %5005
  %5047 = extractvalue %dx.types.CBufRet.f32 %4998, 1
  %5048 = extractvalue %dx.types.CBufRet.f32 %4998, 2
  %5049 = fsub fast float %5047, %5048
  %5050 = fmul fast float %5049, %4653
  %5051 = fadd fast float %5050, %5048
  %5052 = fmul fast float %199, 2.000000e+00
  %5053 = fmul fast float %200, 2.000000e+00
  %5054 = fadd fast float %5052, -1.000000e+00
  %5055 = fadd fast float %5053, -1.000000e+00
  %5056 = fmul fast float %5051, %5054
  %5057 = fmul fast float %5051, %5055
  %5058 = fadd fast float %5056, %85
  %5059 = fadd fast float %5057, %86
  %5060 = fmul fast float %5058, %4656
  %5061 = fmul fast float %5059, %4657
  %5062 = fadd fast float %4653, 0xBFE3333340000000
  %5063 = fmul fast float %5062, 0x4004000020000000
  %5064 = fsub fast float 1.000000e+00, %5063
  %5065 = call float @dx.op.unary.f32(i32 7, float %5064)  ; Saturate(value)
  %5066 = fmul fast float %5065, 3.000000e+00
  %5067 = fadd fast float %5066, %199
  %5068 = call float @dx.op.unary.f32(i32 27, float %5067)  ; Round_ni(value)
  %5069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5060, float %5061, float %5068, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5070 = extractvalue %dx.types.ResRet.f32 %5069, 0
  %5071 = fcmp fast une float %5070, 0xFFF0000000000000
  %5072 = fcmp fast une float %5070, 0x7FF0000000000000
  %5073 = and i1 %5071, %5072
  %5074 = fcmp fast olt float %5070, 0.000000e+00
  %5075 = call float @dx.op.unary.f32(i32 6, float %5070)  ; FAbs(value)
  %5076 = fsub fast float 1.000000e+00, %5075
  %5077 = select i1 %5073, float 1.000000e+00, float 0.000000e+00
  %5078 = fmul fast float %5077, %5044
  %5079 = fcmp fast ogt float %5078, 0.000000e+00
  br i1 %5079, label %5080, label %5223, !dx.controlflow.hints !86

; <label>:5080                                    ; preds = %5046
  %5081 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5082 = extractvalue %dx.types.CBufRet.f32 %5081, 0
  %5083 = extractvalue %dx.types.CBufRet.f32 %5081, 1
  %5084 = extractvalue %dx.types.CBufRet.f32 %5081, 2
  %5085 = select i1 %5074, float 0.000000e+00, float %5082
  %5086 = select i1 %5074, float 0.000000e+00, float %5083
  %5087 = select i1 %5074, float 0.000000e+00, float %5084
  %5088 = select i1 %5074, float %5007, float %5022
  %5089 = select i1 %5074, float %5012, float %5027
  %5090 = select i1 %5074, float %5017, float %5032
  %5091 = select i1 %5074, float %5008, float %5023
  %5092 = select i1 %5074, float %5013, float %5028
  %5093 = select i1 %5074, float %5018, float %5033
  %5094 = select i1 %5074, float %5009, float %5024
  %5095 = select i1 %5074, float %5014, float %5029
  %5096 = select i1 %5074, float %5019, float %5034
  %5097 = select i1 %5074, float %5010, float %5025
  %5098 = select i1 %5074, float %5015, float %5030
  %5099 = select i1 %5074, float %5020, float %5035
  %5100 = fadd fast float %5085, %144
  %5101 = fadd fast float %5086, %145
  %5102 = fadd fast float %5087, %146
  %5103 = fmul fast float %5100, %5088
  %5104 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5091, float %5103)  ; FMad(a,b,c)
  %5105 = call float @dx.op.tertiary.f32(i32 46, float %5102, float %5094, float %5104)  ; FMad(a,b,c)
  %5106 = fadd fast float %5105, %5097
  %5107 = fmul fast float %5100, %5089
  %5108 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5092, float %5107)  ; FMad(a,b,c)
  %5109 = call float @dx.op.tertiary.f32(i32 46, float %5102, float %5095, float %5108)  ; FMad(a,b,c)
  %5110 = fadd fast float %5109, %5098
  %5111 = fmul fast float %5100, %5090
  %5112 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5093, float %5111)  ; FMad(a,b,c)
  %5113 = call float @dx.op.tertiary.f32(i32 46, float %5102, float %5096, float %5112)  ; FMad(a,b,c)
  %5114 = fadd fast float %5113, %5099
  %5115 = fdiv fast float 1.000000e+00, %5114
  %5116 = fmul fast float %5115, %5106
  %5117 = fmul fast float %5115, %5110
  %5118 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5119 = extractvalue %dx.types.CBufRet.f32 %5118, 0
  %5120 = extractvalue %dx.types.CBufRet.f32 %5118, 1
  %5121 = fmul fast float %5116, %5119
  %5122 = fmul fast float %5117, %5120
  %5123 = extractvalue %dx.types.CBufRet.f32 %5118, 2
  %5124 = extractvalue %dx.types.CBufRet.f32 %5118, 3
  %5125 = fadd fast float %5121, %5123
  %5126 = fadd fast float %5122, %5124
  %5127 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5128 = extractvalue %dx.types.CBufRet.f32 %5127, 3
  %5129 = fmul fast float %5128, %4678
  %5130 = fmul fast float %5128, %4679
  %5131 = fmul fast float %5128, %4680
  %5132 = fadd fast float %5129, %5100
  %5133 = fadd fast float %5130, %5101
  %5134 = fadd fast float %5131, %5102
  %5135 = fmul fast float %5132, %5088
  %5136 = call float @dx.op.tertiary.f32(i32 46, float %5133, float %5091, float %5135)  ; FMad(a,b,c)
  %5137 = call float @dx.op.tertiary.f32(i32 46, float %5134, float %5094, float %5136)  ; FMad(a,b,c)
  %5138 = fadd fast float %5137, %5097
  %5139 = fmul fast float %5132, %5089
  %5140 = call float @dx.op.tertiary.f32(i32 46, float %5133, float %5092, float %5139)  ; FMad(a,b,c)
  %5141 = call float @dx.op.tertiary.f32(i32 46, float %5134, float %5095, float %5140)  ; FMad(a,b,c)
  %5142 = fadd fast float %5141, %5098
  %5143 = fmul fast float %5132, %5090
  %5144 = call float @dx.op.tertiary.f32(i32 46, float %5133, float %5093, float %5143)  ; FMad(a,b,c)
  %5145 = call float @dx.op.tertiary.f32(i32 46, float %5134, float %5096, float %5144)  ; FMad(a,b,c)
  %5146 = fadd fast float %5145, %5099
  %5147 = fdiv fast float 1.000000e+00, %5146
  %5148 = fmul fast float %5147, %5138
  %5149 = fmul fast float %5147, %5142
  %5150 = fmul fast float %5125, 2.000000e+00
  %5151 = fadd fast float %5150, -1.000000e+00
  %5152 = call float @dx.op.unary.f32(i32 6, float %5151)  ; FAbs(value)
  %5153 = fmul fast float %5152, 5.000000e+00
  %5154 = fadd fast float %5153, -4.000000e+00
  %5155 = call float @dx.op.unary.f32(i32 7, float %5154)  ; Saturate(value)
  %5156 = fmul fast float %5155, %5041
  %5157 = fsub fast float %5116, %5148
  %5158 = fmul fast float %5119, %5157
  %5159 = fmul fast float %5156, %5158
  %5160 = fsub fast float %5148, %5116
  %5161 = fmul fast float %5119, %5160
  %5162 = fadd fast float %5161, %5159
  %5163 = fsub fast float %5149, %5117
  %5164 = fmul fast float %5120, %5163
  %5165 = fmul fast float %5162, %5076
  %5166 = fmul fast float %5164, %5076
  %5167 = fadd fast float %5165, %5125
  %5168 = fadd fast float %5166, %5126
  %5169 = fsub fast float %5147, %5115
  %5170 = fmul fast float %5169, %5076
  %5171 = fadd fast float %5170, %5115
  %5172 = fdiv fast float 1.000000e+00, %5171
  %5173 = fadd fast float %4653, -1.000000e+00
  %5174 = fsub fast float %5172, %5114
  %5175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.f32 %5175, 2
  %5177 = fmul fast float %5176, %5172
  %5178 = fdiv fast float 1.600000e+02, %5177
  %5179 = fmul fast float %5173, %5173
  %5180 = fmul fast float %5179, 0xBFB5B17960000000
  %5181 = fmul fast float %5180, %5174
  %5182 = fmul fast float %5181, %5178
  %5183 = call float @dx.op.unary.f32(i32 21, float %5182)  ; Exp(value)
  %5184 = fmul fast float %5183, 0x3FF04B2960000000
  %5185 = fsub fast float 0x3FF04B2960000000, %5184
  %5186 = call float @dx.op.unary.f32(i32 7, float %5185)  ; Saturate(value)
  %5187 = fmul fast float %5186, 4.000000e+00
  %5188 = fadd fast float %199, -5.000000e-01
  %5189 = fadd fast float %200, -5.000000e-01
  %5190 = fmul fast float %5186, 0x3FBEB851E0000000
  %5191 = call float @dx.op.unary.f32(i32 7, float %5190)  ; Saturate(value)
  %5192 = fmul fast float %5191, %5188
  %5193 = fmul fast float %5191, %5189
  %5194 = fadd fast float %5167, %5192
  %5195 = fadd fast float %5168, %5193
  %5196 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5194, float %5195, float undef, float undef, i32 0, i32 0, i32 undef, float %5187)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5197 = extractvalue %dx.types.ResRet.f32 %5196, 0
  %5198 = extractvalue %dx.types.ResRet.f32 %5196, 1
  %5199 = extractvalue %dx.types.ResRet.f32 %5196, 2
  %5200 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5201 = extractvalue %dx.types.CBufRet.f32 %5200, 2
  %5202 = fmul fast float %5201, %5197
  %5203 = fmul fast float %5201, %5198
  %5204 = fmul fast float %5201, %5199
  %5205 = select i1 %186, float 0.000000e+00, float %5203
  %5206 = select i1 %186, float 0.000000e+00, float %5204
  %5207 = fmul fast float %5194, 2.000000e+00
  %5208 = fmul fast float %5195, 2.000000e+00
  %5209 = fadd fast float %5207, -1.000000e+00
  %5210 = fadd fast float %5208, -1.000000e+00
  %5211 = fmul fast float %5209, %5209
  %5212 = fsub fast float 1.000000e+00, %5211
  %5213 = call float @dx.op.unary.f32(i32 7, float %5212)  ; Saturate(value)
  %5214 = fsub fast float 1.000000e+00, %5213
  %5215 = fmul fast float %5214, %5041
  %5216 = fadd fast float %5215, %5213
  %5217 = fmul fast float %5210, %5210
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = call float @dx.op.unary.f32(i32 7, float %5218)  ; Saturate(value)
  %5220 = fmul fast float %5216, %5219
  %5221 = call float @dx.op.unary.f32(i32 7, float %5220)  ; Saturate(value)
  %5222 = fmul fast float %5221, %5078
  br label %5223

; <label>:5223                                    ; preds = %5080, %5046, %5005
  %5224 = phi float [ %5202, %5080 ], [ 0.000000e+00, %5046 ], [ 0.000000e+00, %5005 ]
  %5225 = phi float [ %5205, %5080 ], [ 0.000000e+00, %5046 ], [ 0.000000e+00, %5005 ]
  %5226 = phi float [ %5206, %5080 ], [ 0.000000e+00, %5046 ], [ 0.000000e+00, %5005 ]
  %5227 = phi float [ %5222, %5080 ], [ 0.000000e+00, %5046 ], [ 0.000000e+00, %5005 ]
  %5228 = fcmp fast olt float %5227, 1.000000e+00
  %5229 = or i1 %5228, %5003
  %5230 = zext i1 %5229 to i32
  %5231 = fmul fast float %5227, %4988
  %5232 = fsub fast float %5227, %5231
  %5233 = fsub fast float 1.000000e+00, %4994
  %5234 = fmul fast float %5232, %5233
  %5235 = fadd fast float %5234, %4994
  %5236 = fsub fast float %5235, %5232
  %5237 = call float @dx.op.unary.f32(i32 7, float %5236)  ; Saturate(value)
  %5238 = fmul fast float %5237, %4929
  %5239 = fmul fast float %5237, %4930
  %5240 = fmul fast float %5237, %4931
  %5241 = fsub fast float -0.000000e+00, %5235
  %5242 = fmul fast float %5232, %5224
  %5243 = fmul fast float %5232, %5225
  %5244 = fmul fast float %5232, %5226
  %5245 = fadd fast float %5242, %5238
  %5246 = fadd fast float %5243, %5239
  %5247 = fadd fast float %5244, %5240
  br label %5248

; <label>:5248                                    ; preds = %5223, %4996
  %5249 = phi float [ %4994, %4996 ], [ %5241, %5223 ]
  %5250 = phi float [ %4929, %4996 ], [ %5245, %5223 ]
  %5251 = phi float [ %4930, %4996 ], [ %5246, %5223 ]
  %5252 = phi float [ %4931, %4996 ], [ %5247, %5223 ]
  %5253 = phi i32 [ %5004, %4996 ], [ %5230, %5223 ]
  %5254 = icmp eq i32 %5253, 0
  br i1 %5254, label %5851, label %5255

; <label>:5255                                    ; preds = %5248
  %5256 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5257 = extractvalue %dx.types.CBufRet.f32 %5256, 2
  %5258 = extractvalue %dx.types.CBufRet.f32 %5256, 3
  %5259 = fmul fast float %5257, %85
  %5260 = fmul fast float %5258, %86
  %5261 = fptoui float %5259 to i32
  %5262 = fptoui float %5260 to i32
  %5263 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5264 = extractvalue %dx.types.CBufRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.CBufRet.f32 %5263, 2
  %5266 = extractvalue %dx.types.CBufRet.f32 %5263, 3
  %5267 = fadd fast float %80, -4.000000e+00
  %5268 = call float @dx.op.binary.f32(i32 35, float %5267, float 0.000000e+00)  ; FMax(a,b)
  %5269 = fadd fast float %5268, %5264
  %5270 = fmul fast float %5269, %5265
  %5271 = call float @dx.op.unary.f32(i32 23, float %5270)  ; Log(value)
  %5272 = fmul fast float %5271, %5266
  %5273 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5274 = extractvalue %dx.types.CBufRet.f32 %5273, 2
  %5275 = fmul fast float %5272, %5274
  %5276 = call float @dx.op.unary.f32(i32 7, float %5275)  ; Saturate(value)
  %5277 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5278 = extractvalue %dx.types.CBufRet.i32 %5277, 1
  %5279 = add i32 %5278, -1
  %5280 = uitofp i32 %5278 to float
  %5281 = fmul fast float %5280, %5276
  %5282 = fptoui float %5281 to i32
  %5283 = call i32 @dx.op.binary.i32(i32 40, i32 %5282, i32 %5279)  ; UMin(a,b)
  %5284 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5285 = extractvalue %dx.types.CBufRet.i32 %5284, 2
  %5286 = extractvalue %dx.types.CBufRet.i32 %5284, 3
  %5287 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5262, i32 %5285, i32 %5261)  ; UMad(a,b,c)
  %5288 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5283, i32 %5286, i32 %5287)  ; UMad(a,b,c)
  %5289 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %5290 = fptoui float %5289 to i32
  %5291 = lshr i32 %5290, 5
  %5292 = call i32 @dx.op.binary.i32(i32 40, i32 %5291, i32 8191)  ; UMin(a,b)
  %5293 = fcmp fast ogt float %4452, 0.000000e+00
  %5294 = fcmp fast ogt float %4680, 0.000000e+00
  %5295 = and i1 %5294, %5293
  br i1 %5295, label %5296, label %5325

; <label>:5296                                    ; preds = %5255
  %5297 = call float @dx.op.dot3.f32(i32 55, float %4678, float %4679, float %4680, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5298 = call float @dx.op.binary.f32(i32 35, float %5297, float -1.000000e+00)  ; FMax(a,b)
  %5299 = call float @dx.op.binary.f32(i32 36, float %5298, float 1.000000e+00)  ; FMin(a,b)
  %5300 = fmul fast float %5299, %5299
  %5301 = fsub fast float 1.000000e+00, %5300
  %5302 = fmul fast float %5301, 0x3FFC6E2300000000
  %5303 = fsub fast float 1.000000e+00, %5302
  %5304 = fcmp fast ogt float %5303, 0.000000e+00
  %5305 = call float @dx.op.unary.f32(i32 24, float %5303)  ; Sqrt(value)
  %5306 = fsub fast float 1.000000e+00, %5305
  %5307 = call float @dx.op.unary.f32(i32 23, float %5306)  ; Log(value)
  %5308 = fmul fast float %5307, 5.000000e+00
  %5309 = call float @dx.op.unary.f32(i32 21, float %5308)  ; Exp(value)
  %5310 = fmul fast float %5309, 0x3FEF591A60000000
  %5311 = fadd fast float %5310, 0x3F94DCB540000000
  %5312 = select i1 %5304, float %5311, float 1.000000e+00
  %5313 = fcmp fast oge float %5312, 1.000000e+00
  %5314 = fmul fast float %5297, 2.000000e+00
  %5315 = fadd fast float %5314, %4680
  %5316 = select i1 %5313, float %5315, float %4680
  %5317 = fsub fast float %5316, %4680
  %5318 = fmul fast float %5317, %4452
  %5319 = fadd fast float %5318, %4680
  %5320 = call float @dx.op.dot3.f32(i32 55, float %4678, float %4679, float %5319, float %4678, float %4679, float %5319)  ; Dot3(ax,ay,az,bx,by,bz)
  %5321 = call float @dx.op.unary.f32(i32 25, float %5320)  ; Rsqrt(value)
  %5322 = fmul fast float %5321, %4678
  %5323 = fmul fast float %5321, %4679
  %5324 = fmul fast float %5319, %5321
  br label %5325

; <label>:5325                                    ; preds = %5296, %5255
  %5326 = phi float [ %5322, %5296 ], [ %4678, %5255 ]
  %5327 = phi float [ %5323, %5296 ], [ %4679, %5255 ]
  %5328 = phi float [ %5324, %5296 ], [ %4680, %5255 ]
  %5329 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5330 = extractvalue %dx.types.CBufRet.i32 %5329, 2
  %5331 = add nsw i32 %5330, -1
  %5332 = call i32 @dx.op.binary.i32(i32 37, i32 %5331, i32 0)  ; IMax(a,b)
  %5333 = shl i32 %5292, 2
  %5334 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5333, i32 undef)  ; BufferLoad(srv,index,wot)
  %5335 = extractvalue %dx.types.ResRet.i32 %5334, 0
  %5336 = lshr i32 %5335, 16
  %5337 = and i32 %5335, 65535
  %5338 = lshr i32 %5335, 21
  %5339 = lshr i32 %5337, 5
  %5340 = call i32 @dx.op.binary.i32(i32 40, i32 %5339, i32 %5332)  ; UMin(a,b)
  %5341 = icmp ugt i32 %5338, %5340
  br i1 %5341, label %5723, label %5342

; <label>:5342                                    ; preds = %5325
  br label %5343

; <label>:5343                                    ; preds = %5712, %5342
  %5344 = phi float [ %5713, %5712 ], [ 0.000000e+00, %5342 ]
  %5345 = phi float [ %5714, %5712 ], [ 0.000000e+00, %5342 ]
  %5346 = phi float [ %5715, %5712 ], [ 0.000000e+00, %5342 ]
  %5347 = phi float [ %5716, %5712 ], [ 1.000000e+00, %5342 ]
  %5348 = phi i32 [ %5720, %5712 ], [ %5338, %5342 ]
  %5349 = phi float [ %5717, %5712 ], [ 0.000000e+00, %5342 ]
  %5350 = phi float [ %5718, %5712 ], [ 0.000000e+00, %5342 ]
  %5351 = phi float [ %5719, %5712 ], [ 0.000000e+00, %5342 ]
  %5352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5353 = extractvalue %dx.types.CBufRet.i32 %5352, 2
  %5354 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5288, i32 %5353, i32 %5348)  ; UMad(a,b,c)
  %5355 = shl i32 %5354, 2
  %5356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5355, i32 undef)  ; BufferLoad(srv,index,wot)
  %5357 = extractvalue %dx.types.ResRet.i32 %5356, 0
  %5358 = shl i32 %5348, 5
  %5359 = sub nsw i32 %5336, %5358
  %5360 = call i32 @dx.op.binary.i32(i32 37, i32 %5359, i32 0)  ; IMax(a,b)
  %5361 = call i32 @dx.op.binary.i32(i32 38, i32 %5360, i32 31)  ; IMin(a,b)
  %5362 = sub nsw i32 1, %5336
  %5363 = add nsw i32 %5362, %5337
  %5364 = call i32 @dx.op.binary.i32(i32 37, i32 %5363, i32 0)  ; IMax(a,b)
  %5365 = call i32 @dx.op.binary.i32(i32 38, i32 %5364, i32 32)  ; IMin(a,b)
  %5366 = and i32 %5365, 31
  %5367 = shl i32 -1, %5366
  %5368 = xor i32 %5367, -1
  %5369 = and i32 %5361, 31
  %5370 = shl i32 %5368, %5369
  %5371 = icmp eq i32 %5365, 32
  %5372 = select i1 %5371, i32 -1, i32 %5370
  %5373 = and i32 %5372, %5357
  %5374 = icmp eq i32 %5373, 0
  br i1 %5374, label %5712, label %5375

; <label>:5375                                    ; preds = %5343
  br label %5376

; <label>:5376                                    ; preds = %5486, %5375
  %5377 = phi float [ %5487, %5486 ], [ %5344, %5375 ]
  %5378 = phi float [ %5488, %5486 ], [ %5345, %5375 ]
  %5379 = phi float [ %5489, %5486 ], [ %5346, %5375 ]
  %5380 = phi float [ %5490, %5486 ], [ %5347, %5375 ]
  %5381 = phi i32 [ %5389, %5486 ], [ %5373, %5375 ]
  %5382 = phi float [ %5491, %5486 ], [ %5349, %5375 ]
  %5383 = phi float [ %5492, %5486 ], [ %5350, %5375 ]
  %5384 = phi float [ %5493, %5486 ], [ %5351, %5375 ]
  %5385 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5381)  ; FirstbitLo(value)
  %5386 = add i32 %5385, %5358
  %5387 = and i32 %5385, 31
  %5388 = shl i32 1, %5387
  %5389 = xor i32 %5388, %5381
  %5390 = mul i32 %5386, 72
  %5391 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5390, i32 undef)  ; BufferLoad(srv,index,wot)
  %5392 = extractvalue %dx.types.ResRet.f32 %5391, 0
  %5393 = extractvalue %dx.types.ResRet.f32 %5391, 1
  %5394 = extractvalue %dx.types.ResRet.f32 %5391, 2
  %5395 = add i32 %5390, 12
  %5396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5395, i32 undef)  ; BufferLoad(srv,index,wot)
  %5397 = extractvalue %dx.types.ResRet.i32 %5396, 0
  %5398 = add i32 %5390, 16
  %5399 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5398, i32 undef)  ; BufferLoad(srv,index,wot)
  %5400 = extractvalue %dx.types.ResRet.f32 %5399, 0
  %5401 = extractvalue %dx.types.ResRet.f32 %5399, 1
  %5402 = extractvalue %dx.types.ResRet.f32 %5399, 2
  %5403 = add i32 %5390, 28
  %5404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5403, i32 undef)  ; BufferLoad(srv,index,wot)
  %5405 = extractvalue %dx.types.ResRet.f32 %5404, 0
  %5406 = add i32 %5390, 32
  %5407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = extractvalue %dx.types.ResRet.f32 %5407, 1
  %5410 = extractvalue %dx.types.ResRet.f32 %5407, 2
  %5411 = extractvalue %dx.types.ResRet.f32 %5407, 3
  %5412 = add i32 %5390, 48
  %5413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5412, i32 undef)  ; BufferLoad(srv,index,wot)
  %5414 = extractvalue %dx.types.ResRet.f32 %5413, 0
  %5415 = extractvalue %dx.types.ResRet.f32 %5413, 1
  %5416 = add i32 %5390, 56
  %5417 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5416, i32 undef)  ; BufferLoad(srv,index,wot)
  %5418 = extractvalue %dx.types.ResRet.f32 %5417, 0
  %5419 = extractvalue %dx.types.ResRet.f32 %5417, 1
  %5420 = add i32 %5390, 64
  %5421 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5420, i32 undef)  ; BufferLoad(srv,index,wot)
  %5422 = extractvalue %dx.types.ResRet.f32 %5421, 0
  %5423 = extractvalue %dx.types.ResRet.f32 %5421, 1
  %5424 = mul i32 %5386, 60
  %5425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5424, i32 undef)  ; BufferLoad(srv,index,wot)
  %5426 = extractvalue %dx.types.ResRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.ResRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.ResRet.f32 %5425, 2
  %5429 = add i32 %5424, 12
  %5430 = add i32 %5424, 48
  %5431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5430, i32 undef)  ; BufferLoad(srv,index,wot)
  %5432 = extractvalue %dx.types.ResRet.f32 %5431, 0
  %5433 = extractvalue %dx.types.ResRet.f32 %5431, 1
  %5434 = extractvalue %dx.types.ResRet.f32 %5431, 2
  %5435 = and i32 %5397, 32767
  %5436 = bitcast float %5392 to i32
  %5437 = icmp eq i32 %5436, -1
  %5438 = bitcast float %5393 to i32
  %5439 = and i32 %5397, 32768
  %5440 = icmp ne i32 %5439, 0
  %5441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5442 = extractvalue %dx.types.CBufRet.f32 %5441, 0
  %5443 = extractvalue %dx.types.CBufRet.f32 %5441, 1
  %5444 = extractvalue %dx.types.CBufRet.f32 %5441, 2
  %5445 = fsub fast float %5426, %5442
  %5446 = fsub fast float %5427, %5443
  %5447 = fsub fast float %5428, %5444
  %5448 = fsub fast float %144, %5445
  %5449 = fsub fast float %145, %5446
  %5450 = fsub fast float %146, %5447
  %5451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5429, i32 undef)  ; BufferLoad(srv,index,wot)
  %5452 = extractvalue %dx.types.ResRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.ResRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.ResRet.f32 %5451, 2
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = add i32 %5424, 24
  %5457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5456, i32 undef)  ; BufferLoad(srv,index,wot)
  %5458 = extractvalue %dx.types.ResRet.f32 %5457, 0
  %5459 = extractvalue %dx.types.ResRet.f32 %5457, 1
  %5460 = extractvalue %dx.types.ResRet.f32 %5457, 2
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5458, float %5459, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = add i32 %5424, 36
  %5463 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5462, i32 undef)  ; BufferLoad(srv,index,wot)
  %5464 = extractvalue %dx.types.ResRet.f32 %5463, 0
  %5465 = extractvalue %dx.types.ResRet.f32 %5463, 1
  %5466 = extractvalue %dx.types.ResRet.f32 %5463, 2
  %5467 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5464, float %5465, float %5466)  ; Dot3(ax,ay,az,bx,by,bz)
  %5468 = call float @dx.op.unary.f32(i32 6, float %5455)  ; FAbs(value)
  %5469 = call float @dx.op.unary.f32(i32 6, float %5461)  ; FAbs(value)
  %5470 = call float @dx.op.unary.f32(i32 6, float %5467)  ; FAbs(value)
  %5471 = fsub fast float %5432, %5468
  %5472 = fsub fast float %5433, %5469
  %5473 = fsub fast float %5434, %5470
  %5474 = fmul fast float %5471, %5400
  %5475 = fmul fast float %5472, %5401
  %5476 = fmul fast float %5473, %5402
  %5477 = call float @dx.op.binary.f32(i32 36, float %5475, float %5476)  ; FMin(a,b)
  %5478 = call float @dx.op.binary.f32(i32 36, float %5474, float %5477)  ; FMin(a,b)
  %5479 = call float @dx.op.unary.f32(i32 7, float %5478)  ; Saturate(value)
  %5480 = call float @dx.op.binary.f32(i32 36, float %5380, float %5479)  ; FMin(a,b)
  %5481 = uitofp i1 %5440 to float
  %5482 = fadd fast float %4452, 1.000000e+00
  %5483 = fsub fast float %5482, %5481
  %5484 = fmul fast float %5480, %5483
  %5485 = fcmp fast ogt float %5484, 0.000000e+00
  br i1 %5485, label %5495, label %5486

; <label>:5486                                    ; preds = %5637, %5376
  %5487 = phi float [ %5701, %5637 ], [ %5377, %5376 ]
  %5488 = phi float [ %5702, %5637 ], [ %5378, %5376 ]
  %5489 = phi float [ %5703, %5637 ], [ %5379, %5376 ]
  %5490 = phi float [ %5710, %5637 ], [ %5380, %5376 ]
  %5491 = phi float [ %5707, %5637 ], [ %5382, %5376 ]
  %5492 = phi float [ %5708, %5637 ], [ %5383, %5376 ]
  %5493 = phi float [ %5709, %5637 ], [ %5384, %5376 ]
  %5494 = icmp eq i32 %5381, %5388
  br i1 %5494, label %5711, label %5376

; <label>:5495                                    ; preds = %5376
  br i1 %5437, label %5553, label %5496

; <label>:5496                                    ; preds = %5495
  %5497 = fsub fast float -0.000000e+00, %5452
  %5498 = fsub fast float -0.000000e+00, %5453
  %5499 = fsub fast float -0.000000e+00, %5454
  %5500 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5497, float %5498, float %5499)  ; Dot3(ax,ay,az,bx,by,bz)
  %5501 = fsub fast float -0.000000e+00, %5500
  %5502 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5497, float %5498, float %5499)  ; Dot3(ax,ay,az,bx,by,bz)
  %5503 = fadd fast float %5502, %5415
  %5504 = fadd fast float %5414, %5502
  %5505 = fsub fast float -0.000000e+00, %5504
  %5506 = fcmp ogt float %5500, -0.000000e+00
  %5507 = select i1 %5506, float %5505, float %5503
  %5508 = call float @dx.op.unary.f32(i32 6, float %5501)  ; FAbs(value)
  %5509 = fdiv fast float 1.000000e+00, %5508
  %5510 = fmul fast float %5507, %5509
  %5511 = call float @dx.op.binary.f32(i32 35, float %5510, float 0.000000e+00)  ; FMax(a,b)
  %5512 = fsub fast float -0.000000e+00, %5458
  %5513 = fsub fast float -0.000000e+00, %5459
  %5514 = fsub fast float -0.000000e+00, %5460
  %5515 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5512, float %5513, float %5514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5516 = fsub fast float -0.000000e+00, %5515
  %5517 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5512, float %5513, float %5514)  ; Dot3(ax,ay,az,bx,by,bz)
  %5518 = fadd fast float %5517, %5419
  %5519 = fadd fast float %5418, %5517
  %5520 = fsub fast float -0.000000e+00, %5519
  %5521 = fcmp ogt float %5515, -0.000000e+00
  %5522 = select i1 %5521, float %5520, float %5518
  %5523 = call float @dx.op.unary.f32(i32 6, float %5516)  ; FAbs(value)
  %5524 = fdiv fast float 1.000000e+00, %5523
  %5525 = fmul fast float %5522, %5524
  %5526 = call float @dx.op.binary.f32(i32 35, float %5525, float 0.000000e+00)  ; FMax(a,b)
  %5527 = fsub fast float -0.000000e+00, %5464
  %5528 = fsub fast float -0.000000e+00, %5465
  %5529 = fsub fast float -0.000000e+00, %5466
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5326, float %5327, float %5328, float %5527, float %5528, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fsub fast float -0.000000e+00, %5530
  %5532 = call float @dx.op.dot3.f32(i32 55, float %5448, float %5449, float %5450, float %5527, float %5528, float %5529)  ; Dot3(ax,ay,az,bx,by,bz)
  %5533 = fadd fast float %5532, %5423
  %5534 = fadd fast float %5422, %5532
  %5535 = fsub fast float -0.000000e+00, %5534
  %5536 = fcmp ogt float %5530, -0.000000e+00
  %5537 = select i1 %5536, float %5535, float %5533
  %5538 = call float @dx.op.unary.f32(i32 6, float %5531)  ; FAbs(value)
  %5539 = fdiv fast float 1.000000e+00, %5538
  %5540 = fmul fast float %5537, %5539
  %5541 = call float @dx.op.binary.f32(i32 35, float %5540, float 0.000000e+00)  ; FMax(a,b)
  %5542 = call float @dx.op.binary.f32(i32 36, float %5526, float %5541)  ; FMin(a,b)
  %5543 = call float @dx.op.binary.f32(i32 36, float %5511, float %5542)  ; FMin(a,b)
  %5544 = fmul fast float %5543, %5326
  %5545 = fmul fast float %5543, %5327
  %5546 = fmul fast float %5543, %5328
  %5547 = fadd fast float %5544, %144
  %5548 = fadd fast float %5545, %145
  %5549 = fadd fast float %5546, %146
  %5550 = fsub fast float %5547, %5392
  %5551 = fsub fast float %5548, %5393
  %5552 = fsub fast float %5549, %5394
  br label %5560

; <label>:5553                                    ; preds = %5495
  %5554 = fmul fast float %5326, 8.096000e+03
  %5555 = fmul fast float %5327, 8.096000e+03
  %5556 = fmul fast float %5328, 8.096000e+03
  %5557 = fadd fast float %5554, %144
  %5558 = fadd fast float %5555, %145
  %5559 = fadd fast float %5556, %146
  br label %5560

; <label>:5560                                    ; preds = %5553, %5496
  %5561 = phi float [ %5326, %5553 ], [ %5550, %5496 ]
  %5562 = phi float [ %5327, %5553 ], [ %5551, %5496 ]
  %5563 = phi float [ %5328, %5553 ], [ %5552, %5496 ]
  %5564 = phi float [ %5557, %5553 ], [ %5547, %5496 ]
  %5565 = phi float [ %5558, %5553 ], [ %5548, %5496 ]
  %5566 = phi float [ %5559, %5553 ], [ %5549, %5496 ]
  %5567 = fcmp fast olt float %5411, 1.000000e+00
  br i1 %5567, label %5568, label %5599, !dx.controlflow.hints !87

; <label>:5568                                    ; preds = %5560
  %5569 = fmul fast float %5563, %5409
  %5570 = fmul fast float %5562, %5410
  %5571 = fsub fast float %5569, %5570
  %5572 = fmul fast float %5561, %5410
  %5573 = fmul fast float %5563, %5408
  %5574 = fsub fast float %5572, %5573
  %5575 = fmul fast float %5562, %5408
  %5576 = fmul fast float %5561, %5409
  %5577 = fsub fast float %5575, %5576
  %5578 = fmul fast float %5571, 2.000000e+00
  %5579 = fmul fast float %5574, 2.000000e+00
  %5580 = fmul fast float %5577, 2.000000e+00
  %5581 = fmul fast float %5578, %5411
  %5582 = fmul fast float %5579, %5411
  %5583 = fmul fast float %5580, %5411
  %5584 = fmul fast float %5580, %5409
  %5585 = fmul fast float %5579, %5410
  %5586 = fmul fast float %5578, %5410
  %5587 = fmul fast float %5580, %5408
  %5588 = fmul fast float %5579, %5408
  %5589 = fmul fast float %5578, %5409
  %5590 = fadd fast float %5584, %5561
  %5591 = fadd fast float %5590, %5581
  %5592 = fsub fast float %5591, %5585
  %5593 = fsub fast float %5562, %5587
  %5594 = fadd fast float %5593, %5582
  %5595 = fadd fast float %5594, %5586
  %5596 = fadd fast float %5583, %5563
  %5597 = fsub fast float %5596, %5589
  %5598 = fadd fast float %5597, %5588
  br label %5599

; <label>:5599                                    ; preds = %5568, %5560
  %5600 = phi float [ %5592, %5568 ], [ %5561, %5560 ]
  %5601 = phi float [ %5595, %5568 ], [ %5562, %5560 ]
  %5602 = phi float [ %5598, %5568 ], [ %5563, %5560 ]
  br i1 %5437, label %5634, label %5603

; <label>:5603                                    ; preds = %5599
  %5604 = fmul fast float %4653, 0x400187C840000000
  %5605 = fadd fast float %5604, 0xC00EFC2120000000
  %5606 = fmul fast float %5605, %4653
  %5607 = fadd fast float %5606, 0x3FE5D16340000000
  %5608 = fmul fast float %5607, %4653
  %5609 = fadd fast float %5608, 1.000000e+00
  %5610 = call float @dx.op.unary.f32(i32 7, float %5609)  ; Saturate(value)
  %5611 = fsub fast float %5564, %144
  %5612 = fsub fast float %5565, %145
  %5613 = fsub fast float %5566, %146
  %5614 = fsub fast float %5564, %5392
  %5615 = fsub fast float %5565, %5393
  %5616 = fsub fast float %5566, %5394
  %5617 = call float @dx.op.dot3.f32(i32 55, float %5611, float %5612, float %5613, float %5611, float %5612, float %5613)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = call float @dx.op.dot3.f32(i32 55, float %5614, float %5615, float %5616, float %5614, float %5615, float %5616)  ; Dot3(ax,ay,az,bx,by,bz)
  %5619 = fadd fast float %5618, 0x3EE4F8B580000000
  %5620 = fdiv fast float %5617, %5619
  %5621 = bitcast float %5620 to i32
  %5622 = ashr i32 %5621, 1
  %5623 = add nsw i32 %5622, 532487669
  %5624 = bitcast i32 %5623 to float
  %5625 = fmul fast float %5624, %5610
  %5626 = call float @dx.op.unary.f32(i32 7, float %5625)  ; Saturate(value)
  %5627 = fmul fast float %5626, 0x4009981AE0000000
  %5628 = fsub fast float 0x40111BBD80000000, %5627
  %5629 = fmul fast float %5628, %5626
  %5630 = fadd fast float %5629, 0xC0009F6020000000
  %5631 = fmul fast float %5630, %5626
  %5632 = fadd fast float %5631, 1.000000e+00
  %5633 = call float @dx.op.unary.f32(i32 7, float %5632)  ; Saturate(value)
  br label %5637

; <label>:5634                                    ; preds = %5599
  %5635 = icmp ne i32 %5438, -1
  %5636 = zext i1 %5635 to i32
  br label %5637

; <label>:5637                                    ; preds = %5634, %5603
  %5638 = phi float [ %4653, %5634 ], [ %5633, %5603 ]
  %5639 = phi i32 [ %5636, %5634 ], [ 0, %5603 ]
  %5640 = fmul float %5638, 5.000000e+00
  %5641 = fsub float 5.000000e+00, %5640
  %5642 = icmp ne i32 %5639, 0
  %5643 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5644 = extractvalue %dx.types.CBufRet.f32 %5643, 3
  %5645 = fadd fast float %5644, %5641
  %5646 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5645)  ; FMax(a,b)
  %5647 = call float @dx.op.unary.f32(i32 6, float %5600)  ; FAbs(value)
  %5648 = call float @dx.op.unary.f32(i32 6, float %5601)  ; FAbs(value)
  %5649 = fadd fast float %5648, %5647
  %5650 = call float @dx.op.unary.f32(i32 6, float %5602)  ; FAbs(value)
  %5651 = fadd fast float %5649, %5650
  %5652 = fcmp fast oeq float %5651, 0.000000e+00
  %5653 = fdiv fast float 1.000000e+00, %5651
  %5654 = select i1 %5652, float 1.000000e+00, float %5653
  %5655 = fmul fast float %5654, %5600
  %5656 = fmul fast float %5654, %5601
  %5657 = call float @dx.op.unary.f32(i32 6, float %5656)  ; FAbs(value)
  %5658 = call float @dx.op.unary.f32(i32 6, float %5655)  ; FAbs(value)
  %5659 = fsub fast float 1.000000e+00, %5657
  %5660 = fsub fast float 1.000000e+00, %5658
  %5661 = fcmp fast oge float %5655, 0.000000e+00
  %5662 = fcmp fast oge float %5656, 0.000000e+00
  %5663 = select i1 %5661, float 1.000000e+00, float -1.000000e+00
  %5664 = select i1 %5662, float 1.000000e+00, float -1.000000e+00
  %5665 = fcmp fast ole float %5602, 0.000000e+00
  %5666 = fmul fast float %5663, %5659
  %5667 = fmul fast float %5664, %5660
  %5668 = select i1 %5665, float %5666, float %5655
  %5669 = select i1 %5665, float %5667, float %5656
  %5670 = fmul fast float %5668, 5.000000e-01
  %5671 = fmul fast float %5669, 5.000000e-01
  %5672 = fadd fast float %5670, 5.000000e-01
  %5673 = fadd fast float %5671, 5.000000e-01
  %5674 = uitofp i32 %5435 to float
  %5675 = call float @dx.op.binary.f32(i32 36, float %5646, float 3.000000e+00)  ; FMin(a,b)
  %5676 = fadd fast float %5675, 2.000000e+00
  %5677 = call float @dx.op.unary.f32(i32 21, float %5676)  ; Exp(value)
  %5678 = extractvalue %dx.types.CBufRet.f32 %5643, 1
  %5679 = fmul fast float %5678, %5677
  %5680 = fmul fast float %5679, 2.000000e+00
  %5681 = fsub fast float 1.000000e+00, %5680
  %5682 = fmul fast float %5672, %5681
  %5683 = fmul fast float %5673, %5681
  %5684 = fadd fast float %5682, %5679
  %5685 = fadd fast float %5683, %5679
  %5686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5684, float %5685, float %5674, float undef, i32 0, i32 0, i32 undef, float %5646)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5687 = extractvalue %dx.types.ResRet.f32 %5686, 0
  %5688 = extractvalue %dx.types.ResRet.f32 %5686, 1
  %5689 = extractvalue %dx.types.ResRet.f32 %5686, 2
  %5690 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5691 = extractvalue %dx.types.CBufRet.f32 %5690, 3
  %5692 = fmul fast float %5691, %5405
  %5693 = call float @dx.op.binary.f32(i32 36, float %4699, float %5692)  ; FMin(a,b)
  %5694 = select i1 %5642, float %5693, float %5692
  %5695 = fmul fast float %5687, %5484
  %5696 = fmul fast float %5695, %5694
  %5697 = fmul fast float %5688, %5484
  %5698 = fmul fast float %5697, %5694
  %5699 = fmul fast float %5689, %5484
  %5700 = fmul fast float %5699, %5694
  %5701 = fadd fast float %5696, %5377
  %5702 = fadd fast float %5698, %5378
  %5703 = fadd fast float %5700, %5379
  %5704 = fmul fast float %5564, %5484
  %5705 = fmul fast float %5565, %5484
  %5706 = fmul fast float %5566, %5484
  %5707 = fadd fast float %5704, %5382
  %5708 = fadd fast float %5705, %5383
  %5709 = fadd fast float %5706, %5384
  %5710 = fsub fast float %5380, %5484
  br label %5486

; <label>:5711                                    ; preds = %5486
  br label %5712

; <label>:5712                                    ; preds = %5711, %5343
  %5713 = phi float [ %5344, %5343 ], [ %5487, %5711 ]
  %5714 = phi float [ %5345, %5343 ], [ %5488, %5711 ]
  %5715 = phi float [ %5346, %5343 ], [ %5489, %5711 ]
  %5716 = phi float [ %5347, %5343 ], [ %5490, %5711 ]
  %5717 = phi float [ %5349, %5343 ], [ %5491, %5711 ]
  %5718 = phi float [ %5350, %5343 ], [ %5492, %5711 ]
  %5719 = phi float [ %5351, %5343 ], [ %5493, %5711 ]
  %5720 = add i32 %5348, 1
  %5721 = icmp ugt i32 %5720, %5340
  br i1 %5721, label %5722, label %5343, !llvm.loop !88

; <label>:5722                                    ; preds = %5712
  br label %5723

; <label>:5723                                    ; preds = %5722, %5325
  %5724 = phi float [ 0.000000e+00, %5325 ], [ %5713, %5722 ]
  %5725 = phi float [ 0.000000e+00, %5325 ], [ %5714, %5722 ]
  %5726 = phi float [ 0.000000e+00, %5325 ], [ %5715, %5722 ]
  %5727 = phi float [ 0.000000e+00, %5325 ], [ %5717, %5722 ]
  %5728 = phi float [ 0.000000e+00, %5325 ], [ %5718, %5722 ]
  %5729 = phi float [ 0.000000e+00, %5325 ], [ %5719, %5722 ]
  %5730 = call float @dx.op.dot3.f32(i32 55, float %5724, float %5725, float %5726, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5731 = select i1 %186, float 0.000000e+00, float %5724
  %5732 = select i1 %186, float %5730, float %5725
  %5733 = select i1 %186, float 0.000000e+00, float %5726
  %5734 = fcmp fast olt float %5249, 0.000000e+00
  %5735 = call float @dx.op.unary.f32(i32 6, float %5249)  ; FAbs(value)
  %5736 = fmul fast float %5735, %5250
  %5737 = fmul fast float %5735, %5251
  %5738 = fmul fast float %5735, %5252
  %5739 = select i1 %5734, float %5250, float %5736
  %5740 = select i1 %5734, float %5251, float %5737
  %5741 = select i1 %5734, float %5252, float %5738
  %5742 = fsub fast float 1.000000e+00, %5735
  %5743 = call float @dx.op.unary.f32(i32 7, float %5742)  ; Saturate(value)
  %5744 = fmul fast float %5743, %5731
  %5745 = fmul fast float %5743, %5732
  %5746 = fmul fast float %5743, %5733
  %5747 = fadd fast float %5739, %5744
  %5748 = fadd fast float %5740, %5745
  %5749 = fadd fast float %5741, %5746
  %5750 = fcmp fast une float %4999, 0.000000e+00
  br i1 %5750, label %5851, label %5751

; <label>:5751                                    ; preds = %5723
  %5752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5753 = extractvalue %dx.types.CBufRet.f32 %5752, 0
  %5754 = extractvalue %dx.types.CBufRet.f32 %5752, 1
  %5755 = extractvalue %dx.types.CBufRet.f32 %5752, 2
  %5756 = extractvalue %dx.types.CBufRet.f32 %5752, 3
  %5757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5758 = extractvalue %dx.types.CBufRet.f32 %5757, 0
  %5759 = extractvalue %dx.types.CBufRet.f32 %5757, 1
  %5760 = extractvalue %dx.types.CBufRet.f32 %5757, 2
  %5761 = extractvalue %dx.types.CBufRet.f32 %5757, 3
  %5762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5763 = extractvalue %dx.types.CBufRet.f32 %5762, 0
  %5764 = extractvalue %dx.types.CBufRet.f32 %5762, 1
  %5765 = extractvalue %dx.types.CBufRet.f32 %5762, 2
  %5766 = extractvalue %dx.types.CBufRet.f32 %5762, 3
  %5767 = call float @dx.op.dot3.f32(i32 55, float %5763, float %5764, float %5765, float %4678, float %4679, float %4680)  ; Dot3(ax,ay,az,bx,by,bz)
  %5768 = call float @dx.op.dot3.f32(i32 55, float %5727, float %5728, float %5729, float %5763, float %5764, float %5765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5769 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %5763, float %5764, float %5765)  ; Dot3(ax,ay,az,bx,by,bz)
  %5770 = fadd fast float %4653, -1.000000e+00
  %5771 = fsub fast float %5768, %5769
  %5772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5773 = extractvalue %dx.types.CBufRet.f32 %5772, 2
  %5774 = fmul fast float %5773, %5768
  %5775 = fdiv fast float 1.600000e+02, %5774
  %5776 = fmul fast float %5770, %5770
  %5777 = fmul fast float %5776, 0xBFB5B17960000000
  %5778 = fmul fast float %5777, %5771
  %5779 = fmul fast float %5778, %5775
  %5780 = call float @dx.op.unary.f32(i32 21, float %5779)  ; Exp(value)
  %5781 = fmul fast float %5780, 0x3FF04B2960000000
  %5782 = fsub fast float 0x3FF04B2960000000, %5781
  %5783 = call float @dx.op.unary.f32(i32 7, float %5782)  ; Saturate(value)
  %5784 = fmul fast float %5783, 4.000000e+00
  %5785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5785, 0
  %5787 = extractvalue %dx.types.CBufRet.f32 %5785, 1
  %5788 = extractvalue %dx.types.CBufRet.f32 %5785, 2
  %5789 = fadd fast float %5786, %5727
  %5790 = fadd fast float %5787, %5728
  %5791 = fadd fast float %5788, %5729
  %5792 = fmul fast float %5789, %5753
  %5793 = call float @dx.op.tertiary.f32(i32 46, float %5790, float %5754, float %5792)  ; FMad(a,b,c)
  %5794 = call float @dx.op.tertiary.f32(i32 46, float %5791, float %5755, float %5793)  ; FMad(a,b,c)
  %5795 = fadd fast float %5794, %5756
  %5796 = fmul fast float %5789, %5758
  %5797 = call float @dx.op.tertiary.f32(i32 46, float %5790, float %5759, float %5796)  ; FMad(a,b,c)
  %5798 = call float @dx.op.tertiary.f32(i32 46, float %5791, float %5760, float %5797)  ; FMad(a,b,c)
  %5799 = fadd fast float %5798, %5761
  %5800 = fmul fast float %5789, %5763
  %5801 = call float @dx.op.tertiary.f32(i32 46, float %5790, float %5764, float %5800)  ; FMad(a,b,c)
  %5802 = call float @dx.op.tertiary.f32(i32 46, float %5791, float %5765, float %5801)  ; FMad(a,b,c)
  %5803 = fadd fast float %5802, %5766
  %5804 = fdiv fast float %5795, %5803
  %5805 = fdiv fast float %5799, %5803
  %5806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5807 = extractvalue %dx.types.CBufRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.CBufRet.f32 %5806, 1
  %5809 = fmul fast float %5807, %5804
  %5810 = fmul fast float %5808, %5805
  %5811 = extractvalue %dx.types.CBufRet.f32 %5806, 2
  %5812 = extractvalue %dx.types.CBufRet.f32 %5806, 3
  %5813 = fadd fast float %5809, %5811
  %5814 = fadd fast float %5810, %5812
  %5815 = fmul fast float %5767, 8.000000e+00
  %5816 = call float @dx.op.unary.f32(i32 7, float %5815)  ; Saturate(value)
  %5817 = fmul fast float %5813, 2.000000e+00
  %5818 = fmul fast float %5814, 2.000000e+00
  %5819 = fadd fast float %5817, -1.000000e+00
  %5820 = fadd fast float %5818, -1.000000e+00
  %5821 = fmul fast float %5819, %5819
  %5822 = fsub fast float 1.000000e+00, %5821
  %5823 = call float @dx.op.unary.f32(i32 7, float %5822)  ; Saturate(value)
  %5824 = fmul fast float %5820, %5820
  %5825 = fsub fast float 1.000000e+00, %5824
  %5826 = call float @dx.op.unary.f32(i32 7, float %5825)  ; Saturate(value)
  %5827 = fmul fast float %4999, %5823
  %5828 = fmul fast float %5827, %5826
  %5829 = call float @dx.op.unary.f32(i32 7, float %5828)  ; Saturate(value)
  %5830 = fmul fast float %5829, %5816
  %5831 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5813, float %5814, float undef, float undef, i32 0, i32 0, i32 undef, float %5784)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5832 = extractvalue %dx.types.ResRet.f32 %5831, 0
  %5833 = extractvalue %dx.types.ResRet.f32 %5831, 1
  %5834 = extractvalue %dx.types.ResRet.f32 %5831, 2
  %5835 = select i1 %186, float 0.000000e+00, float %5833
  %5836 = select i1 %186, float 0.000000e+00, float %5834
  %5837 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5838 = extractvalue %dx.types.CBufRet.f32 %5837, 2
  %5839 = fmul fast float %5838, %5832
  %5840 = fmul fast float %5835, %5838
  %5841 = fmul fast float %5836, %5838
  %5842 = fsub fast float %5839, %5731
  %5843 = fsub fast float %5840, %5732
  %5844 = fsub fast float %5841, %5733
  %5845 = fmul fast float %5842, %5830
  %5846 = fmul fast float %5843, %5830
  %5847 = fmul fast float %5844, %5830
  %5848 = fadd fast float %5845, %5731
  %5849 = fadd fast float %5846, %5732
  %5850 = fadd fast float %5847, %5733
  br label %5851

; <label>:5851                                    ; preds = %5751, %5723, %5248, %4972
  %5852 = phi float [ %5250, %5248 ], [ %5747, %5723 ], [ %4929, %4972 ], [ %5848, %5751 ]
  %5853 = phi float [ %5251, %5248 ], [ %5748, %5723 ], [ %4930, %4972 ], [ %5849, %5751 ]
  %5854 = phi float [ %5252, %5248 ], [ %5749, %5723 ], [ %4931, %4972 ], [ %5850, %5751 ]
  %5855 = fmul fast float %4978, %4925
  %5856 = fmul fast float %4978, %4926
  %5857 = fmul fast float %4978, %4927
  %5858 = call float @dx.op.dot3.f32(i32 55, float %4650, float %4651, float %4652, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5859 = fcmp fast ogt float %5858, 0x3E7FF19E20000000
  %5860 = fdiv fast float 1.000000e+00, %5858
  %5861 = select i1 %5859, float %5860, float 0.000000e+00
  %5862 = fmul fast float %5861, %4650
  %5863 = fmul fast float %5861, %4651
  %5864 = fmul fast float %5861, %4652
  %5865 = fadd fast float %5862, -1.000000e+00
  %5866 = fadd fast float %5863, -1.000000e+00
  %5867 = fadd fast float %5864, -1.000000e+00
  %5868 = fmul fast float %5865, 5.000000e-01
  %5869 = fmul fast float %5866, 5.000000e-01
  %5870 = fmul fast float %5867, 5.000000e-01
  %5871 = fadd fast float %5868, 1.000000e+00
  %5872 = fadd fast float %5869, 1.000000e+00
  %5873 = fadd fast float %5870, 1.000000e+00
  %5874 = fmul fast float %5852, %4973
  %5875 = fmul fast float %5853, %4974
  %5876 = fmul fast float %5854, %4975
  %5877 = fsub fast float 1.000000e+00, %4672
  %5878 = bitcast float %5877 to i32
  %5879 = sitofp i32 %5878 to float
  %5880 = fmul fast float %5879, 5.000000e+00
  %5881 = fadd fast float %5880, 0xC1EFBF8940000000
  %5882 = fptosi float %5881 to i32
  %5883 = bitcast i32 %5882 to float
  %5884 = fmul fast float %5883, %4043
  %5885 = fmul fast float %4925, %5884
  %5886 = fmul fast float %5885, %4978
  %5887 = fmul fast float %5886, %5871
  %5888 = fmul fast float %4926, %5884
  %5889 = fmul fast float %5888, %4978
  %5890 = fmul fast float %5889, %5872
  %5891 = fmul fast float %4927, %5884
  %5892 = fmul fast float %5891, %4978
  %5893 = fmul fast float %5892, %5873
  %5894 = fmul fast float %5855, %4039
  %5895 = fmul fast float %5856, %4039
  %5896 = fmul fast float %5857, %4039
  %5897 = fadd fast float %5874, %4035
  %5898 = fadd fast float %5897, %5887
  %5899 = fmul fast float %5898, %4039
  %5900 = fadd fast float %5875, %4036
  %5901 = fadd fast float %5900, %5890
  %5902 = fmul fast float %5901, %4039
  %5903 = fadd fast float %5876, %4037
  %5904 = fadd fast float %5903, %5893
  %5905 = fmul fast float %5904, %4039
  %5906 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5907 = extractvalue %dx.types.CBufRet.f32 %5906, 3
  %5908 = fcmp fast oeq float %5907, 0.000000e+00
  br i1 %5908, label %6127, label %5909

; <label>:5909                                    ; preds = %5851
  %5910 = extractvalue %dx.types.CBufRet.f32 %5906, 0
  %5911 = extractvalue %dx.types.CBufRet.f32 %5906, 1
  %5912 = extractvalue %dx.types.CBufRet.f32 %5906, 2
  %5913 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5914 = extractvalue %dx.types.CBufRet.f32 %5913, 0
  %5915 = extractvalue %dx.types.CBufRet.f32 %5913, 1
  %5916 = extractvalue %dx.types.CBufRet.f32 %5913, 2
  %5917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5918 = extractvalue %dx.types.CBufRet.f32 %5917, 0
  %5919 = extractvalue %dx.types.CBufRet.f32 %5917, 1
  %5920 = call float @dx.op.dot3.f32(i32 55, float %5914, float %5915, float %5916, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5921 = select i1 %186, float %5918, float %5914
  %5922 = select i1 %186, float %5920, float %5915
  %5923 = select i1 %186, float %5919, float %5916
  %5924 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5925 = extractvalue %dx.types.CBufRet.f32 %5924, 1
  %5926 = fcmp fast une float %5925, 0.000000e+00
  br i1 %5926, label %5927, label %5944

; <label>:5927                                    ; preds = %5909
  %5928 = fptoui float %85 to i32
  %5929 = fptoui float %86 to i32
  %5930 = lshr i32 %5928, 4
  %5931 = lshr i32 %5929, 4
  %5932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5933 = extractvalue %dx.types.CBufRet.f32 %5932, 0
  %5934 = fptoui float %5933 to i32
  %5935 = add i32 %5934, 15
  %5936 = lshr i32 %5935, 4
  %5937 = mul i32 %5936, %5931
  %5938 = add i32 %5937, %5930
  %5939 = shl i32 %5938, 3
  %5940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5939, i32 undef)  ; BufferLoad(srv,index,wot)
  %5941 = extractvalue %dx.types.ResRet.i32 %5940, 0
  %5942 = and i32 %5941, -268435456
  %5943 = icmp eq i32 %5942, -1342177280
  br i1 %5943, label %5949, label %5944

; <label>:5944                                    ; preds = %5927, %5909
  %5945 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4658, float %4659, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5946 = extractvalue %dx.types.ResRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.ResRet.f32 %5945, 1
  %5948 = extractvalue %dx.types.ResRet.f32 %5945, 2
  br label %5949

; <label>:5949                                    ; preds = %5944, %5927
  %5950 = phi float [ %5946, %5944 ], [ 0.000000e+00, %5927 ]
  %5951 = phi float [ %5947, %5944 ], [ 0.000000e+00, %5927 ]
  %5952 = phi float [ %5948, %5944 ], [ 0.000000e+00, %5927 ]
  %5953 = call float @dx.op.binary.f32(i32 36, float %5951, float %5952)  ; FMin(a,b)
  %5954 = call float @dx.op.binary.f32(i32 36, float %5950, float %5953)  ; FMin(a,b)
  %5955 = fcmp fast ogt float %5954, 0.000000e+00
  br i1 %5955, label %5956, label %6127, !dx.controlflow.hints !90

; <label>:5956                                    ; preds = %5949
  %5957 = fmul fast float %5950, %5921
  %5958 = fmul fast float %5951, %5922
  %5959 = fmul fast float %5952, %5923
  %5960 = fsub fast float %5910, %4643
  %5961 = fsub fast float %5911, %4642
  %5962 = fsub fast float %5912, %4641
  %5963 = call float @dx.op.dot3.f32(i32 55, float %5960, float %5961, float %5962, float %5960, float %5961, float %5962)  ; Dot3(ax,ay,az,bx,by,bz)
  %5964 = call float @dx.op.unary.f32(i32 25, float %5963)  ; Rsqrt(value)
  %5965 = fmul fast float %5964, %5960
  %5966 = fmul fast float %5964, %5961
  %5967 = fmul fast float %5964, %5962
  %5968 = call float @dx.op.dot3.f32(i32 55, float %5910, float %5911, float %5912, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = call float @dx.op.dot3.f32(i32 55, float %4640, float %4639, float %4638, float %5965, float %5966, float %5967)  ; Dot3(ax,ay,az,bx,by,bz)
  %5970 = call float @dx.op.unary.f32(i32 7, float %5968)  ; Saturate(value)
  %5971 = fmul fast float %5970, %5970
  %5972 = fmul fast float %5971, %4697
  %5973 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  %5974 = fmul fast float %5973, %5970
  %5975 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %5965, float %5966, float %5967)  ; Dot3(ax,ay,az,bx,by,bz)
  %5976 = fmul fast float %5975, %5975
  %5977 = call float @dx.op.unary.f32(i32 6, float %5968)  ; FAbs(value)
  %5978 = fsub fast float 1.000000e+00, %4690
  %5979 = fmul fast float %4672, %4672
  %5980 = fmul fast float %5979, %5978
  %5981 = fadd fast float %5980, %4690
  %5982 = bitcast float %5981 to i32
  %5983 = ashr i32 %5982, 1
  %5984 = add nsw i32 %5983, 532487669
  %5985 = bitcast i32 %5984 to float
  %5986 = fadd fast float %5985, %4672
  %5987 = fmul fast float %4690, %5976
  %5988 = fsub fast float 1.000000e+00, %5976
  %5989 = fadd fast float %5988, %5987
  %5990 = fmul fast float %5977, %5977
  %5991 = fmul fast float %5990, %5978
  %5992 = fadd fast float %5991, %4690
  %5993 = bitcast float %5992 to i32
  %5994 = ashr i32 %5993, 1
  %5995 = add nsw i32 %5994, 532487669
  %5996 = bitcast i32 %5995 to float
  %5997 = fadd fast float %5996, %5977
  %5998 = fmul fast float %5989, %5989
  %5999 = fmul fast float %5998, %5986
  %6000 = fmul fast float %5999, %5997
  %6001 = fdiv fast float 0x3FF0A00000000000, %6000
  %6002 = fmul fast float %6001, %4690
  %6003 = call float @dx.op.unary.f32(i32 6, float %5969)  ; FAbs(value)
  %6004 = fsub fast float 1.000000e+00, %6003
  %6005 = bitcast float %6004 to i32
  %6006 = sitofp i32 %6005 to float
  %6007 = fmul fast float %6006, 5.000000e+00
  %6008 = fadd fast float %6007, 0xC1EFBF8940000000
  %6009 = fptosi float %6008 to i32
  %6010 = bitcast i32 %6009 to float
  %6011 = fsub fast float 1.000000e+00, %4647
  %6012 = fsub fast float 1.000000e+00, %4648
  %6013 = fsub fast float 1.000000e+00, %4670
  %6014 = fmul fast float %6010, %6011
  %6015 = fmul fast float %6010, %6012
  %6016 = fmul fast float %6010, %6013
  %6017 = fadd fast float %6014, %4647
  %6018 = fadd fast float %6015, %4648
  %6019 = fadd fast float %6016, %4670
  br i1 %4945, label %6020, label %6043

; <label>:6020                                    ; preds = %5956
  %6021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4042, float %6003, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6022 = extractvalue %dx.types.ResRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.ResRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.ResRet.f32 %6021, 2
  %6025 = fadd fast float %6022, -5.000000e-01
  %6026 = fadd fast float %6023, -5.000000e-01
  %6027 = fadd fast float %6024, -5.000000e-01
  %6028 = fmul fast float %4647, 4.000000e+00
  %6029 = fmul fast float %6028, %6011
  %6030 = fmul fast float %6029, %6025
  %6031 = fmul fast float %4648, 4.000000e+00
  %6032 = fmul fast float %6031, %6012
  %6033 = fmul fast float %6032, %6026
  %6034 = fmul fast float %4670, 4.000000e+00
  %6035 = fmul fast float %6034, %6013
  %6036 = fmul fast float %6035, %6027
  %6037 = fadd fast float %6030, %6017
  %6038 = fadd fast float %6033, %6018
  %6039 = fadd fast float %6036, %6019
  %6040 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6041 = call float @dx.op.unary.f32(i32 7, float %6038)  ; Saturate(value)
  %6042 = call float @dx.op.unary.f32(i32 7, float %6039)  ; Saturate(value)
  br label %6043

; <label>:6043                                    ; preds = %6020, %5956
  %6044 = phi float [ %6040, %6020 ], [ %6017, %5956 ]
  %6045 = phi float [ %6041, %6020 ], [ %6018, %5956 ]
  %6046 = phi float [ %6042, %6020 ], [ %6019, %5956 ]
  %6047 = fmul fast float %5968, 9.843750e-01
  %6048 = fadd fast float %6047, 7.812500e-03
  %6049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6048, float %4935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6050 = extractvalue %dx.types.ResRet.f32 %6049, 2
  %6051 = extractvalue %dx.types.ResRet.f32 %6049, 3
  %6052 = fmul fast float %6050, %4647
  %6053 = fmul fast float %6050, %4648
  %6054 = fmul fast float %6050, %4670
  %6055 = fadd fast float %6052, %6051
  %6056 = fadd fast float %6053, %6051
  %6057 = fadd fast float %6054, %6051
  br i1 %4945, label %6058, label %6081

; <label>:6058                                    ; preds = %6043
  %6059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4042, float %5968, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6060 = extractvalue %dx.types.ResRet.f32 %6059, 0
  %6061 = extractvalue %dx.types.ResRet.f32 %6059, 1
  %6062 = extractvalue %dx.types.ResRet.f32 %6059, 2
  %6063 = fadd fast float %6060, -5.000000e-01
  %6064 = fadd fast float %6061, -5.000000e-01
  %6065 = fadd fast float %6062, -5.000000e-01
  %6066 = fmul fast float %4647, 4.000000e+00
  %6067 = fmul fast float %6066, %6011
  %6068 = fmul fast float %6067, %6063
  %6069 = fmul fast float %4648, 4.000000e+00
  %6070 = fmul fast float %6069, %6012
  %6071 = fmul fast float %6070, %6064
  %6072 = fmul fast float %4670, 4.000000e+00
  %6073 = fmul fast float %6072, %6013
  %6074 = fmul fast float %6073, %6065
  %6075 = fadd fast float %6068, %6055
  %6076 = fadd fast float %6071, %6056
  %6077 = fadd fast float %6074, %6057
  %6078 = call float @dx.op.unary.f32(i32 7, float %6075)  ; Saturate(value)
  %6079 = call float @dx.op.unary.f32(i32 7, float %6076)  ; Saturate(value)
  %6080 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  br label %6081

; <label>:6081                                    ; preds = %6058, %6043
  %6082 = phi float [ %6078, %6058 ], [ %6055, %6043 ]
  %6083 = phi float [ %6079, %6058 ], [ %6056, %6043 ]
  %6084 = phi float [ %6080, %6058 ], [ %6057, %6043 ]
  %6085 = call float @dx.op.binary.f32(i32 35, float %6083, float %6084)  ; FMax(a,b)
  %6086 = call float @dx.op.binary.f32(i32 35, float %6082, float %6085)  ; FMax(a,b)
  %6087 = fsub fast float 1.000000e+00, %6086
  %6088 = fmul fast float %6044, %6002
  %6089 = fmul fast float %6045, %6002
  %6090 = fmul fast float %6046, %6002
  %6091 = fsub fast float 1.000000e+00, %5969
  %6092 = bitcast float %6091 to i32
  %6093 = sitofp i32 %6092 to float
  %6094 = fmul fast float %6093, 5.000000e+00
  %6095 = fadd fast float %6094, 0xC1EFBF8940000000
  %6096 = fptosi float %6095 to i32
  %6097 = bitcast i32 %6096 to float
  %6098 = fmul fast float %6097, %4043
  %6099 = fmul fast float %6087, %6098
  %6100 = fmul fast float %6099, %5871
  %6101 = fmul fast float %6099, %5872
  %6102 = fmul fast float %6099, %5873
  %6103 = fadd fast float %6100, %6088
  %6104 = fadd fast float %6101, %6089
  %6105 = fadd fast float %6102, %6090
  %6106 = fmul fast float %5974, %5957
  %6107 = fmul fast float %6106, %6087
  %6108 = fmul fast float %5974, %5958
  %6109 = fmul fast float %6108, %6087
  %6110 = fmul fast float %5974, %5959
  %6111 = fmul fast float %6110, %6087
  %6112 = fmul fast float %6106, %6103
  %6113 = fmul fast float %6108, %6104
  %6114 = fmul fast float %6110, %6105
  %6115 = fadd fast float %6107, %5855
  %6116 = fmul fast float %6115, %4039
  %6117 = fadd fast float %6109, %5856
  %6118 = fmul fast float %6117, %4039
  %6119 = fadd fast float %6111, %5857
  %6120 = fmul fast float %6119, %4039
  %6121 = fadd fast float %6112, %5898
  %6122 = fmul fast float %6121, %4039
  %6123 = fadd fast float %6113, %5901
  %6124 = fmul fast float %6123, %4039
  %6125 = fadd fast float %6114, %5904
  %6126 = fmul fast float %6125, %4039
  br label %6127

; <label>:6127                                    ; preds = %6081, %5949, %5851
  %6128 = phi float [ %5899, %5851 ], [ %5899, %5949 ], [ %6122, %6081 ]
  %6129 = phi float [ %5902, %5851 ], [ %5902, %5949 ], [ %6124, %6081 ]
  %6130 = phi float [ %5905, %5851 ], [ %5905, %5949 ], [ %6126, %6081 ]
  %6131 = phi float [ %5894, %5851 ], [ %5894, %5949 ], [ %6116, %6081 ]
  %6132 = phi float [ %5895, %5851 ], [ %5895, %5949 ], [ %6118, %6081 ]
  %6133 = phi float [ %5896, %5851 ], [ %5896, %5949 ], [ %6120, %6081 ]
  %6134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6135 = extractvalue %dx.types.CBufRet.i32 %6134, 0
  %6136 = icmp eq i32 %6135, 0
  br i1 %6136, label %6567, label %6137

; <label>:6137                                    ; preds = %6127
  %6138 = fptoui float %85 to i32
  %6139 = fptoui float %86 to i32
  %6140 = lshr i32 %6138, 4
  %6141 = lshr i32 %6139, 4
  %6142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.i32 %6142, 0
  %6144 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6141, i32 %6143, i32 %6140)  ; UMad(a,b,c)
  %6145 = add nsw i32 %6135, -1
  %6146 = call i32 @dx.op.binary.i32(i32 37, i32 %6145, i32 0)  ; IMax(a,b)
  %6147 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6148 = fptoui float %6147 to i32
  %6149 = lshr i32 %6148, 5
  %6150 = call i32 @dx.op.binary.i32(i32 40, i32 %6149, i32 8191)  ; UMin(a,b)
  %6151 = shl i32 %6150, 2
  %6152 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6151, i32 undef)  ; BufferLoad(srv,index,wot)
  %6153 = extractvalue %dx.types.ResRet.i32 %6152, 0
  %6154 = lshr i32 %6153, 16
  %6155 = and i32 %6153, 65535
  %6156 = lshr i32 %6153, 21
  %6157 = lshr i32 %6155, 5
  %6158 = call i32 @dx.op.binary.i32(i32 40, i32 %6157, i32 %6146)  ; UMin(a,b)
  %6159 = icmp ugt i32 %6156, %6158
  br i1 %6159, label %6567, label %6160

; <label>:6160                                    ; preds = %6137
  br label %6161

; <label>:6161                                    ; preds = %6557, %6160
  %6162 = phi i32 [ %6564, %6557 ], [ %6156, %6160 ]
  %6163 = phi float [ %6558, %6557 ], [ %6128, %6160 ]
  %6164 = phi float [ %6559, %6557 ], [ %6129, %6160 ]
  %6165 = phi float [ %6560, %6557 ], [ %6130, %6160 ]
  %6166 = phi float [ %6561, %6557 ], [ %6131, %6160 ]
  %6167 = phi float [ %6562, %6557 ], [ %6132, %6160 ]
  %6168 = phi float [ %6563, %6557 ], [ %6133, %6160 ]
  %6169 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6170 = extractvalue %dx.types.CBufRet.i32 %6169, 0
  %6171 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6144, i32 %6170, i32 %6162)  ; UMad(a,b,c)
  %6172 = shl i32 %6171, 2
  %6173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6172, i32 undef)  ; BufferLoad(srv,index,wot)
  %6174 = extractvalue %dx.types.ResRet.i32 %6173, 0
  %6175 = shl i32 %6162, 5
  %6176 = sub nsw i32 %6154, %6175
  %6177 = call i32 @dx.op.binary.i32(i32 37, i32 %6176, i32 0)  ; IMax(a,b)
  %6178 = call i32 @dx.op.binary.i32(i32 38, i32 %6177, i32 31)  ; IMin(a,b)
  %6179 = sub nsw i32 1, %6154
  %6180 = add nsw i32 %6179, %6155
  %6181 = call i32 @dx.op.binary.i32(i32 37, i32 %6180, i32 0)  ; IMax(a,b)
  %6182 = call i32 @dx.op.binary.i32(i32 38, i32 %6181, i32 32)  ; IMin(a,b)
  %6183 = and i32 %6182, 31
  %6184 = shl i32 -1, %6183
  %6185 = xor i32 %6184, -1
  %6186 = and i32 %6178, 31
  %6187 = shl i32 %6185, %6186
  %6188 = icmp eq i32 %6182, 32
  %6189 = select i1 %6188, i32 -1, i32 %6187
  %6190 = and i32 %6189, %6174
  %6191 = icmp eq i32 %6190, 0
  br i1 %6191, label %6557, label %6192

; <label>:6192                                    ; preds = %6161
  br label %6193

; <label>:6193                                    ; preds = %6273, %6192
  %6194 = phi i32 [ %6205, %6273 ], [ %6190, %6192 ]
  %6195 = phi float [ %6274, %6273 ], [ %6163, %6192 ]
  %6196 = phi float [ %6275, %6273 ], [ %6164, %6192 ]
  %6197 = phi float [ %6276, %6273 ], [ %6165, %6192 ]
  %6198 = phi float [ %6277, %6273 ], [ %6166, %6192 ]
  %6199 = phi float [ %6278, %6273 ], [ %6167, %6192 ]
  %6200 = phi float [ %6279, %6273 ], [ %6168, %6192 ]
  %6201 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6194)  ; FirstbitLo(value)
  %6202 = add i32 %6201, %6175
  %6203 = and i32 %6201, 31
  %6204 = shl i32 1, %6203
  %6205 = xor i32 %6204, %6194
  %6206 = mul i32 %6202, 112
  %6207 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6206, i32 undef)  ; BufferLoad(srv,index,wot)
  %6208 = extractvalue %dx.types.ResRet.f32 %6207, 0
  %6209 = extractvalue %dx.types.ResRet.f32 %6207, 1
  %6210 = extractvalue %dx.types.ResRet.f32 %6207, 2
  %6211 = or i32 %6206, 12
  %6212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6211, i32 undef)  ; BufferLoad(srv,index,wot)
  %6213 = extractvalue %dx.types.ResRet.f32 %6212, 0
  %6214 = add i32 %6206, 44
  %6215 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6214, i32 undef)  ; BufferLoad(srv,index,wot)
  %6216 = extractvalue %dx.types.ResRet.f32 %6215, 0
  %6217 = add i32 %6206, 48
  %6218 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6217, i32 undef)  ; BufferLoad(srv,index,wot)
  %6219 = extractvalue %dx.types.ResRet.f32 %6218, 0
  %6220 = extractvalue %dx.types.ResRet.f32 %6218, 1
  %6221 = extractvalue %dx.types.ResRet.f32 %6218, 2
  %6222 = add i32 %6206, 80
  %6223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6222, i32 undef)  ; BufferLoad(srv,index,wot)
  %6224 = extractvalue %dx.types.ResRet.f32 %6223, 1
  %6225 = extractvalue %dx.types.ResRet.f32 %6223, 2
  %6226 = call float @dx.op.dot3.f32(i32 55, float %6208, float %6209, float %6210, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6227 = select i1 %186, float %6224, float %6208
  %6228 = select i1 %186, float %6226, float %6209
  %6229 = select i1 %186, float %6225, float %6210
  %6230 = fsub fast float %6219, %144
  %6231 = fsub fast float %6220, %145
  %6232 = fsub fast float %6221, %146
  %6233 = call float @dx.op.dot3.f32(i32 55, float %6230, float %6231, float %6232, float %6230, float %6231, float %6232)  ; Dot3(ax,ay,az,bx,by,bz)
  %6234 = call float @dx.op.unary.f32(i32 24, float %6233)  ; Sqrt(value)
  %6235 = fdiv fast float 1.000000e+00, %6234
  %6236 = fmul fast float %6235, %6230
  %6237 = fmul fast float %6235, %6231
  %6238 = fmul fast float %6235, %6232
  %6239 = fadd fast float %6234, %6213
  %6240 = fdiv fast float 1.000000e+00, %6239
  %6241 = fmul float %6216, %6240
  %6242 = fmul float %6241, %6241
  %6243 = call float @dx.op.unary.f32(i32 7, float %6242)  ; Saturate(value)
  %6244 = and i32 %6204, %6190
  %6245 = icmp eq i32 %6244, 0
  br i1 %6245, label %6268, label %6246, !dx.controlflow.hints !91

; <label>:6246                                    ; preds = %6193
  %6247 = lshr i32 %6138, 5
  %6248 = lshr i32 %6139, 5
  %6249 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6247, i32 %6248, i32 %6202, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6250 = extractvalue %dx.types.ResRet.i32 %6249, 0
  %6251 = and i32 %6250, 3
  %6252 = icmp eq i32 %6251, 0
  %6253 = select i1 %6252, float 1.000000e+00, float 0.000000e+00
  %6254 = icmp eq i32 %6251, 3
  br i1 %6254, label %6255, label %6268

; <label>:6255                                    ; preds = %6246
  %6256 = lshr i32 %6250, 10
  %6257 = and i32 %6256, 8160
  %6258 = and i32 %6139, 31
  %6259 = or i32 %6257, %6258
  %6260 = lshr i32 %6250, 1
  %6261 = and i32 %6260, 16352
  %6262 = and i32 %6138, 31
  %6263 = or i32 %6261, %6262
  %6264 = lshr i32 %6250, 23
  %6265 = and i32 %6264, 255
  %6266 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6263, i32 %6259, i32 %6265, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6267 = extractvalue %dx.types.ResRet.f32 %6266, 0
  br label %6268

; <label>:6268                                    ; preds = %6255, %6246, %6193
  %6269 = phi float [ %6267, %6255 ], [ %6253, %6246 ], [ 0.000000e+00, %6193 ]
  %6270 = call float @dx.op.binary.f32(i32 36, float %6269, float %6269)  ; FMin(a,b)
  %6271 = call float @dx.op.binary.f32(i32 36, float %6269, float %6270)  ; FMin(a,b)
  %6272 = fcmp fast ogt float %6271, 0.000000e+00
  br i1 %6272, label %6281, label %6273, !dx.controlflow.hints !92

; <label>:6273                                    ; preds = %6513, %6268
  %6274 = phi float [ %6195, %6268 ], [ %6553, %6513 ]
  %6275 = phi float [ %6196, %6268 ], [ %6554, %6513 ]
  %6276 = phi float [ %6197, %6268 ], [ %6555, %6513 ]
  %6277 = phi float [ %6198, %6268 ], [ %6547, %6513 ]
  %6278 = phi float [ %6199, %6268 ], [ %6548, %6513 ]
  %6279 = phi float [ %6200, %6268 ], [ %6549, %6513 ]
  %6280 = icmp eq i32 %6194, %6204
  br i1 %6280, label %6556, label %6193

; <label>:6281                                    ; preds = %6268
  %6282 = fmul fast float %6269, %6227
  %6283 = fmul fast float %6269, %6228
  %6284 = fmul fast float %6269, %6229
  %6285 = fsub fast float %6221, %4443
  %6286 = fcmp fast ogt float %6285, 0.000000e+00
  %6287 = fsub fast float %146, %4443
  %6288 = fcmp fast ogt float %6287, 0.000000e+00
  %6289 = xor i1 %6288, %6286
  %6290 = fsub fast float %4443, %6221
  %6291 = fmul fast float %6290, 2.000000e+00
  %6292 = fadd fast float %6291, %6221
  %6293 = select i1 %6289, float %6221, float %6292
  %6294 = fsub fast float %6293, %146
  %6295 = call float @dx.op.dot3.f32(i32 55, float %6230, float %6231, float %6294, float %6230, float %6231, float %6294)  ; Dot3(ax,ay,az,bx,by,bz)
  %6296 = call float @dx.op.unary.f32(i32 25, float %6295)  ; Rsqrt(value)
  %6297 = fmul fast float %6296, %6230
  %6298 = fmul fast float %6296, %6231
  %6299 = fmul fast float %6296, %6294
  %6300 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4451)  ; Dot3(ax,ay,az,bx,by,bz)
  %6301 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6297, float %6298, float %6299)  ; Dot3(ax,ay,az,bx,by,bz)
  %6302 = fdiv fast float 1.000000e+00, %6301
  %6303 = fmul fast float %6302, %6300
  %6304 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6287, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6305 = fcmp fast ogt float %6304, 0.000000e+00
  %6306 = fcmp fast olt float %6304, 0.000000e+00
  %6307 = zext i1 %6305 to i32
  %6308 = zext i1 %6306 to i32
  %6309 = sub nsw i32 %6307, %6308
  %6310 = sitofp i32 %6309 to float
  %6311 = fsub fast float %6293, %4443
  %6312 = call float @dx.op.dot3.f32(i32 55, float %6230, float %6231, float %6311, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6313 = fcmp fast ogt float %6312, 0.000000e+00
  %6314 = fcmp fast olt float %6312, 0.000000e+00
  %6315 = zext i1 %6313 to i32
  %6316 = zext i1 %6314 to i32
  %6317 = sub nsw i32 %6315, %6316
  %6318 = sitofp i32 %6317 to float
  %6319 = fcmp fast une float %6310, %6318
  br i1 %6319, label %6320, label %6330

; <label>:6320                                    ; preds = %6281
  %6321 = fmul fast float %6303, %6299
  %6322 = fmul fast float %6303, %6298
  %6323 = fmul fast float %6303, %6297
  %6324 = fmul fast float %6323, %6323
  %6325 = fmul fast float %6322, %6322
  %6326 = fadd fast float %6324, %6325
  %6327 = fmul fast float %6321, %6321
  %6328 = fadd fast float %6326, %6327
  %6329 = call float @dx.op.unary.f32(i32 24, float %6328)  ; Sqrt(value)
  br label %6342

; <label>:6330                                    ; preds = %6281
  %6331 = icmp slt i32 %6309, 0
  br i1 %6331, label %6332, label %6342

; <label>:6332                                    ; preds = %6330
  %6333 = fsub fast float %144, %6219
  %6334 = fsub fast float %145, %6220
  %6335 = fsub fast float %146, %6293
  %6336 = fmul fast float %6333, %6333
  %6337 = fmul fast float %6334, %6334
  %6338 = fadd fast float %6336, %6337
  %6339 = fmul fast float %6335, %6335
  %6340 = fadd fast float %6338, %6339
  %6341 = call float @dx.op.unary.f32(i32 24, float %6340)  ; Sqrt(value)
  br label %6342

; <label>:6342                                    ; preds = %6332, %6330, %6320
  %6343 = phi float [ %6329, %6320 ], [ %6341, %6332 ], [ 0.000000e+00, %6330 ]
  %6344 = and i1 %6288, %6286
  %6345 = fsub fast float -0.000000e+00, %6343
  %6346 = select i1 %6344, float -0.000000e+00, float %6345
  %6347 = fmul fast float %4444, 0x3FF7154760000000
  %6348 = fmul fast float %6347, %6346
  %6349 = fmul fast float %4445, 0x3FF7154760000000
  %6350 = fmul fast float %6349, %6346
  %6351 = fmul fast float %4446, 0x3FF7154760000000
  %6352 = fmul fast float %6351, %6346
  %6353 = call float @dx.op.unary.f32(i32 21, float %6348)  ; Exp(value)
  %6354 = call float @dx.op.unary.f32(i32 21, float %6350)  ; Exp(value)
  %6355 = call float @dx.op.unary.f32(i32 21, float %6352)  ; Exp(value)
  %6356 = call float @dx.op.unary.f32(i32 7, float %6353)  ; Saturate(value)
  %6357 = call float @dx.op.unary.f32(i32 7, float %6354)  ; Saturate(value)
  %6358 = call float @dx.op.unary.f32(i32 7, float %6355)  ; Saturate(value)
  %6359 = fmul fast float %6282, %6356
  %6360 = fmul fast float %6283, %6357
  %6361 = fmul fast float %6284, %6358
  %6362 = fsub fast float %6236, %4643
  %6363 = fsub fast float %6237, %4642
  %6364 = fsub fast float %6238, %4641
  %6365 = call float @dx.op.dot3.f32(i32 55, float %6362, float %6363, float %6364, float %6362, float %6363, float %6364)  ; Dot3(ax,ay,az,bx,by,bz)
  %6366 = call float @dx.op.unary.f32(i32 25, float %6365)  ; Rsqrt(value)
  %6367 = fmul fast float %6366, %6362
  %6368 = fmul fast float %6366, %6363
  %6369 = fmul fast float %6366, %6364
  %6370 = call float @dx.op.dot3.f32(i32 55, float %6236, float %6237, float %6238, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %6371 = call float @dx.op.dot3.f32(i32 55, float %4640, float %4639, float %4638, float %6367, float %6368, float %6369)  ; Dot3(ax,ay,az,bx,by,bz)
  %6372 = call float @dx.op.unary.f32(i32 7, float %6370)  ; Saturate(value)
  %6373 = fmul fast float %6372, %6243
  %6374 = fmul fast float %6372, %6372
  %6375 = fmul fast float %6374, %4697
  %6376 = call float @dx.op.unary.f32(i32 7, float %6375)  ; Saturate(value)
  %6377 = fmul fast float %6373, %6376
  %6378 = bitcast float %6233 to i32
  %6379 = ashr i32 %6378, 1
  %6380 = sub nsw i32 1597463007, %6379
  %6381 = bitcast i32 %6380 to float
  %6382 = fmul fast float %6381, %6230
  %6383 = fmul fast float %6381, %6231
  %6384 = fmul fast float %6381, %6232
  %6385 = fsub fast float %6382, %4643
  %6386 = fsub fast float %6383, %4642
  %6387 = fsub fast float %6384, %4641
  %6388 = call float @dx.op.dot3.f32(i32 55, float %6385, float %6386, float %6387, float %6385, float %6386, float %6387)  ; Dot3(ax,ay,az,bx,by,bz)
  %6389 = call float @dx.op.unary.f32(i32 25, float %6388)  ; Rsqrt(value)
  %6390 = fmul fast float %6385, %6389
  %6391 = fmul fast float %6386, %6389
  %6392 = fmul fast float %6387, %6389
  %6393 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %6390, float %6391, float %6392)  ; Dot3(ax,ay,az,bx,by,bz)
  %6394 = fmul fast float %6393, %6393
  %6395 = call float @dx.op.unary.f32(i32 6, float %6370)  ; FAbs(value)
  %6396 = fsub fast float 1.000000e+00, %4690
  %6397 = fmul fast float %4672, %4672
  %6398 = fmul fast float %6397, %6396
  %6399 = fadd fast float %6398, %4690
  %6400 = bitcast float %6399 to i32
  %6401 = ashr i32 %6400, 1
  %6402 = add nsw i32 %6401, 532487669
  %6403 = bitcast i32 %6402 to float
  %6404 = fadd fast float %6403, %4672
  %6405 = fmul fast float %4690, %6394
  %6406 = fsub fast float 1.000000e+00, %6394
  %6407 = fadd fast float %6406, %6405
  %6408 = fmul fast float %6395, %6395
  %6409 = fmul fast float %6408, %6396
  %6410 = fadd fast float %6409, %4690
  %6411 = bitcast float %6410 to i32
  %6412 = ashr i32 %6411, 1
  %6413 = add nsw i32 %6412, 532487669
  %6414 = bitcast i32 %6413 to float
  %6415 = fadd fast float %6414, %6395
  %6416 = fmul fast float %6407, %6407
  %6417 = fmul fast float %6416, %6404
  %6418 = fmul fast float %6417, %6415
  %6419 = fdiv fast float 1.000000e+00, %6418
  %6420 = bitcast float %4690 to i32
  %6421 = sitofp i32 %6420 to float
  %6422 = fmul fast float %6421, 0x3FE7F73180000000
  %6423 = fadd fast float %6422, 0x41AFE27C40000000
  %6424 = fptosi float %6423 to i32
  %6425 = bitcast i32 %6424 to float
  %6426 = fmul fast float %6216, 0x3FD80E9D60000000
  %6427 = fmul fast float %6426, %6381
  %6428 = fadd fast float %6425, %6427
  %6429 = bitcast float %6428 to i32
  %6430 = sub nsw i32 2129859010, %6429
  %6431 = bitcast i32 %6430 to float
  %6432 = fmul fast float %4690, %6419
  %6433 = fmul fast float %6432, %6425
  %6434 = fmul fast float %6433, %6431
  %6435 = call float @dx.op.unary.f32(i32 6, float %6371)  ; FAbs(value)
  %6436 = fsub fast float 1.000000e+00, %6435
  %6437 = bitcast float %6436 to i32
  %6438 = sitofp i32 %6437 to float
  %6439 = fmul fast float %6438, 5.000000e+00
  %6440 = fadd fast float %6439, 0xC1EFBF8940000000
  %6441 = fptosi float %6440 to i32
  %6442 = bitcast i32 %6441 to float
  %6443 = fsub fast float 1.000000e+00, %4647
  %6444 = fsub fast float 1.000000e+00, %4648
  %6445 = fsub fast float 1.000000e+00, %4670
  %6446 = fmul fast float %6442, %6443
  %6447 = fmul fast float %6442, %6444
  %6448 = fmul fast float %6442, %6445
  %6449 = fadd fast float %6446, %4647
  %6450 = fadd fast float %6447, %4648
  %6451 = fadd fast float %6448, %4670
  br i1 %4945, label %6452, label %6475

; <label>:6452                                    ; preds = %6342
  %6453 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4042, float %6435, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6454 = extractvalue %dx.types.ResRet.f32 %6453, 0
  %6455 = extractvalue %dx.types.ResRet.f32 %6453, 1
  %6456 = extractvalue %dx.types.ResRet.f32 %6453, 2
  %6457 = fadd fast float %6454, -5.000000e-01
  %6458 = fadd fast float %6455, -5.000000e-01
  %6459 = fadd fast float %6456, -5.000000e-01
  %6460 = fmul fast float %4647, 4.000000e+00
  %6461 = fmul fast float %6460, %6443
  %6462 = fmul fast float %6461, %6457
  %6463 = fmul fast float %4648, 4.000000e+00
  %6464 = fmul fast float %6463, %6444
  %6465 = fmul fast float %6464, %6458
  %6466 = fmul fast float %4670, 4.000000e+00
  %6467 = fmul fast float %6466, %6445
  %6468 = fmul fast float %6467, %6459
  %6469 = fadd fast float %6462, %6449
  %6470 = fadd fast float %6465, %6450
  %6471 = fadd fast float %6468, %6451
  %6472 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  %6473 = call float @dx.op.unary.f32(i32 7, float %6470)  ; Saturate(value)
  %6474 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  br label %6475

; <label>:6475                                    ; preds = %6452, %6342
  %6476 = phi float [ %6472, %6452 ], [ %6449, %6342 ]
  %6477 = phi float [ %6473, %6452 ], [ %6450, %6342 ]
  %6478 = phi float [ %6474, %6452 ], [ %6451, %6342 ]
  %6479 = fmul fast float %6370, 9.843750e-01
  %6480 = fadd fast float %6479, 7.812500e-03
  %6481 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6480, float %4935, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6482 = extractvalue %dx.types.ResRet.f32 %6481, 2
  %6483 = extractvalue %dx.types.ResRet.f32 %6481, 3
  %6484 = fmul fast float %6482, %4647
  %6485 = fmul fast float %6482, %4648
  %6486 = fmul fast float %6482, %4670
  %6487 = fadd fast float %6484, %6483
  %6488 = fadd fast float %6485, %6483
  %6489 = fadd fast float %6486, %6483
  br i1 %4945, label %6490, label %6513

; <label>:6490                                    ; preds = %6475
  %6491 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4042, float %6370, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6492 = extractvalue %dx.types.ResRet.f32 %6491, 0
  %6493 = extractvalue %dx.types.ResRet.f32 %6491, 1
  %6494 = extractvalue %dx.types.ResRet.f32 %6491, 2
  %6495 = fadd fast float %6492, -5.000000e-01
  %6496 = fadd fast float %6493, -5.000000e-01
  %6497 = fadd fast float %6494, -5.000000e-01
  %6498 = fmul fast float %4647, 4.000000e+00
  %6499 = fmul fast float %6498, %6443
  %6500 = fmul fast float %6499, %6495
  %6501 = fmul fast float %4648, 4.000000e+00
  %6502 = fmul fast float %6501, %6444
  %6503 = fmul fast float %6502, %6496
  %6504 = fmul fast float %4670, 4.000000e+00
  %6505 = fmul fast float %6504, %6445
  %6506 = fmul fast float %6505, %6497
  %6507 = fadd fast float %6500, %6487
  %6508 = fadd fast float %6503, %6488
  %6509 = fadd fast float %6506, %6489
  %6510 = call float @dx.op.unary.f32(i32 7, float %6507)  ; Saturate(value)
  %6511 = call float @dx.op.unary.f32(i32 7, float %6508)  ; Saturate(value)
  %6512 = call float @dx.op.unary.f32(i32 7, float %6509)  ; Saturate(value)
  br label %6513

; <label>:6513                                    ; preds = %6490, %6475
  %6514 = phi float [ %6510, %6490 ], [ %6487, %6475 ]
  %6515 = phi float [ %6511, %6490 ], [ %6488, %6475 ]
  %6516 = phi float [ %6512, %6490 ], [ %6489, %6475 ]
  %6517 = call float @dx.op.binary.f32(i32 35, float %6515, float %6516)  ; FMax(a,b)
  %6518 = call float @dx.op.binary.f32(i32 35, float %6514, float %6517)  ; FMax(a,b)
  %6519 = fsub fast float 1.000000e+00, %6518
  %6520 = fmul fast float %6476, %6434
  %6521 = fmul fast float %6477, %6434
  %6522 = fmul fast float %6478, %6434
  %6523 = fsub fast float 1.000000e+00, %6371
  %6524 = bitcast float %6523 to i32
  %6525 = sitofp i32 %6524 to float
  %6526 = fmul fast float %6525, 5.000000e+00
  %6527 = fadd fast float %6526, 0xC1EFBF8940000000
  %6528 = fptosi float %6527 to i32
  %6529 = bitcast i32 %6528 to float
  %6530 = fmul fast float %6529, %4043
  %6531 = fmul fast float %6519, %6530
  %6532 = fmul fast float %6531, %5871
  %6533 = fmul fast float %6531, %5872
  %6534 = fmul fast float %6531, %5873
  %6535 = fadd fast float %6532, %6520
  %6536 = fadd fast float %6533, %6521
  %6537 = fadd fast float %6534, %6522
  %6538 = fmul fast float %6359, %4039
  %6539 = fmul fast float %6538, %6377
  %6540 = fmul fast float %6539, %6519
  %6541 = fmul fast float %6360, %4039
  %6542 = fmul fast float %6541, %6377
  %6543 = fmul fast float %6542, %6519
  %6544 = fmul fast float %6361, %4039
  %6545 = fmul fast float %6544, %6377
  %6546 = fmul fast float %6545, %6519
  %6547 = fadd fast float %6540, %6198
  %6548 = fadd fast float %6543, %6199
  %6549 = fadd fast float %6546, %6200
  %6550 = fmul fast float %6539, %6535
  %6551 = fmul fast float %6542, %6536
  %6552 = fmul fast float %6545, %6537
  %6553 = fadd fast float %6550, %6195
  %6554 = fadd fast float %6551, %6196
  %6555 = fadd fast float %6552, %6197
  br label %6273

; <label>:6556                                    ; preds = %6273
  br label %6557

; <label>:6557                                    ; preds = %6556, %6161
  %6558 = phi float [ %6163, %6161 ], [ %6274, %6556 ]
  %6559 = phi float [ %6164, %6161 ], [ %6275, %6556 ]
  %6560 = phi float [ %6165, %6161 ], [ %6276, %6556 ]
  %6561 = phi float [ %6166, %6161 ], [ %6277, %6556 ]
  %6562 = phi float [ %6167, %6161 ], [ %6278, %6556 ]
  %6563 = phi float [ %6168, %6161 ], [ %6279, %6556 ]
  %6564 = add i32 %6162, 1
  %6565 = icmp ugt i32 %6564, %6158
  br i1 %6565, label %6566, label %6161

; <label>:6566                                    ; preds = %6557
  br label %6567

; <label>:6567                                    ; preds = %6566, %6137, %6127
  %6568 = phi float [ %6128, %6127 ], [ %6128, %6137 ], [ %6558, %6566 ]
  %6569 = phi float [ %6129, %6127 ], [ %6129, %6137 ], [ %6559, %6566 ]
  %6570 = phi float [ %6130, %6127 ], [ %6130, %6137 ], [ %6560, %6566 ]
  %6571 = phi float [ %6131, %6127 ], [ %6131, %6137 ], [ %6561, %6566 ]
  %6572 = phi float [ %6132, %6127 ], [ %6132, %6137 ], [ %6562, %6566 ]
  %6573 = phi float [ %6133, %6127 ], [ %6133, %6137 ], [ %6563, %6566 ]
  %6574 = call float @dx.op.unary.f32(i32 24, float %4650)  ; Sqrt(value)
  %6575 = call float @dx.op.unary.f32(i32 24, float %4651)  ; Sqrt(value)
  %6576 = call float @dx.op.unary.f32(i32 24, float %4652)  ; Sqrt(value)
  %6577 = fmul fast float %6574, %6571
  %6578 = fmul fast float %6575, %6572
  %6579 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6580 = extractvalue %dx.types.CBufRet.f32 %6579, 0
  br i1 %186, label %6581, label %6604

; <label>:6581                                    ; preds = %6567
  %6582 = fadd fast float %6573, %4045
  %6583 = fmul fast float %6582, %4046
  %6584 = fsub fast float 1.000000e+00, %4046
  %6585 = call float @dx.op.unary.f32(i32 7, float %6584)  ; Saturate(value)
  %6586 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6587 = extractvalue %dx.types.CBufRet.f32 %6586, 3
  %6588 = fmul fast float %6587, %6585
  %6589 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6590 = extractvalue %dx.types.CBufRet.f32 %6589, 0
  %6591 = fmul fast float %6590, %5877
  %6592 = extractvalue %dx.types.CBufRet.f32 %6589, 2
  %6593 = fmul fast float %6592, %4668
  %6594 = fadd fast float %6578, %6577
  %6595 = fmul fast float %6580, %6594
  %6596 = extractvalue %dx.types.CBufRet.f32 %6586, 1
  %6597 = fadd fast float %6588, %6583
  %6598 = fsub fast float %6597, %6591
  %6599 = fadd fast float %6598, %6593
  %6600 = fsub fast float %6599, %6596
  %6601 = extractvalue %dx.types.CBufRet.f32 %6586, 2
  %6602 = fmul fast float %6600, %6601
  %6603 = call float @dx.op.unary.f32(i32 7, float %6602)  ; Saturate(value)
  br label %6620

; <label>:6604                                    ; preds = %6567
  %6605 = fmul fast float %6576, %6573
  %6606 = fmul fast float %6580, %6577
  %6607 = fmul fast float %6580, %6578
  %6608 = fmul fast float %6605, %6580
  %6609 = add i32 %45, 356
  %6610 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6609, i32 undef)  ; BufferLoad(srv,index,wot)
  %6611 = extractvalue %dx.types.ResRet.i32 %6610, 0
  %6612 = and i32 %6611, 32
  %6613 = icmp eq i32 %6612, 0
  br i1 %6613, label %6620, label %6614

; <label>:6614                                    ; preds = %6604
  %6615 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6616 = extractvalue %dx.types.CBufRet.f32 %6615, 0
  %6617 = fmul fast float %6616, 0x3FE99999A0000000
  %6618 = fadd fast float %6616, %6606
  %6619 = fadd fast float %6617, %6608
  br label %6620

; <label>:6620                                    ; preds = %6614, %6604, %6581
  %6621 = phi float [ %6595, %6581 ], [ %6618, %6614 ], [ %6606, %6604 ]
  %6622 = phi float [ %6603, %6581 ], [ %6607, %6614 ], [ %6607, %6604 ]
  %6623 = phi float [ 1.000000e+00, %6581 ], [ %6619, %6614 ], [ %6608, %6604 ]
  %6624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6625 = extractvalue %dx.types.CBufRet.f32 %6624, 0
  %6626 = fmul fast float %6625, %6569
  %6627 = fmul fast float %6625, %6570
  %6628 = fadd fast float %6569, %6568
  %6629 = select i1 %186, float %6628, float %6568
  %6630 = fmul float %6629, %6625
  %6631 = select i1 %186, float 0.000000e+00, float %6626
  %6632 = select i1 %186, float 0.000000e+00, float %6627
  %6633 = fmul fast float %6621, %6574
  %6634 = fmul fast float %6622, %6575
  %6635 = fmul fast float %6623, %6576
  %6636 = fadd fast float %6630, %6633
  %6637 = fadd fast float %6631, %6634
  %6638 = fadd fast float %6632, %6635
  %6639 = select i1 %186, float %6622, float %6637
  %6640 = select i1 %186, float %6623, float %6638
  %6641 = call float @dx.op.binary.f32(i32 36, float %6636, float 3.225500e+04)  ; FMin(a,b)
  %6642 = call float @dx.op.binary.f32(i32 36, float %6639, float 3.225500e+04)  ; FMin(a,b)
  %6643 = call float @dx.op.binary.f32(i32 36, float %6640, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6641)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6643)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 3, float 0.000000e+00)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  ret void
}

; Function Attrs: nounwind readnone
declare float @dx.op.loadInput.f32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind readnone
declare i32 @dx.op.loadInput.i32(i32, i32, i32, i8, i32) #0

; Function Attrs: nounwind
declare void @dx.op.storeOutput.f32(i32, i32, i32, i8, float) #1

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sample.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float) #2

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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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

; Function Attrs: nounwind readnone
declare i32 @dx.op.tertiary.i32(i32, i32, i32, i32) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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
!13 = !{i32 6, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 3, i32 1, i32 11, i32 0, null}
!14 = !{i32 7, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 4, i32 1, i32 11, i32 0, null}
!15 = !{i32 8, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 5, i32 1, i32 11, i32 0, null}
!16 = !{i32 9, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 6, i32 1, i32 11, i32 0, null}
!17 = !{i32 10, %"class.Texture2DArray<unsigned int>"* undef, !"", i32 2, i32 11, i32 1, i32 7, i32 0, !18}
!18 = !{i32 0, i32 5}
!19 = !{i32 11, %"class.Texture2DArray<float>"* undef, !"", i32 2, i32 10, i32 1, i32 7, i32 0, !7}
!20 = !{i32 12, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 69, i32 1, i32 2, i32 0, !7}
!21 = !{i32 13, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 49, i32 1, i32 11, i32 0, null}
!22 = !{i32 14, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 50, i32 1, i32 11, i32 0, null}
!23 = !{i32 15, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 51, i32 1, i32 11, i32 0, null}
!24 = !{i32 16, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 52, i32 1, i32 11, i32 0, null}
!25 = !{i32 17, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 16, i32 1, i32 11, i32 0, null}
!26 = !{i32 18, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 17, i32 1, i32 11, i32 0, null}
!27 = !{i32 19, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 37, i32 1, i32 2, i32 0, !7}
!28 = !{i32 20, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 0, i32 0, i32 1, i32 2, i32 0, !7}
!29 = !{i32 21, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 49, i32 1, i32 7, i32 0, !7}
!30 = !{i32 22, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 58, i32 1, i32 2, i32 0, !7}
!31 = !{i32 23, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 59, i32 1, i32 2, i32 0, !7}
!32 = !{i32 24, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 60, i32 1, i32 2, i32 0, !7}
!33 = !{i32 25, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 45, i32 1, i32 11, i32 0, null}
!34 = !{i32 26, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 46, i32 1, i32 11, i32 0, null}
!35 = !{i32 27, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 47, i32 1, i32 11, i32 0, null}
!36 = !{i32 28, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 48, i32 1, i32 11, i32 0, null}
!37 = !{i32 29, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 57, i32 1, i32 2, i32 0, !7}
!38 = !{i32 30, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 69, i32 1, i32 11, i32 0, null}
!39 = !{i32 31, %"class.Texture2DArray<vector<float, 4> >"* undef, !"", i32 2, i32 35, i32 1, i32 7, i32 0, !7}
!40 = !{i32 32, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 34, i32 1, i32 2, i32 0, !7}
!41 = !{i32 33, %"class.Texture3D<float>"* undef, !"", i32 2, i32 31, i32 1, i32 4, i32 0, !7}
!42 = !{i32 34, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 10, i32 1, i32 11, i32 0, null}
!43 = !{i32 35, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 68, i32 1, i32 11, i32 0, null}
!44 = !{i32 36, %"class.Texture2D<vector<float, 3> >"* undef, !"", i32 2, i32 0, i32 1, i32 2, i32 0, !7}
!45 = !{i32 37, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 11, i32 1, i32 11, i32 0, null}
!46 = !{i32 38, %struct.ByteAddressBuffer* undef, !"", i32 1, i32 13, i32 1, i32 11, i32 0, null}
!47 = !{i32 39, %"class.Texture2D<vector<float, 4> >"* undef, !"", i32 2, i32 48, i32 1, i32 2, i32 0, !7}
!48 = !{!49, !50}
!49 = !{i32 0, %hostlayout.scene* undef, !"", i32 0, i32 3, i32 1, i32 11728, null}
!50 = !{i32 1, %hostlayout.stable* undef, !"", i32 0, i32 2, i32 1, i32 144, null}
!51 = !{!52, !53, !54, !55, !56}
!52 = !{i32 0, [4 x %struct.SamplerState]* undef, !"", i32 0, i32 7, i32 4, i32 0, null}
!53 = !{i32 1, %struct.SamplerState* undef, !"", i32 0, i32 1, i32 1, i32 0, null}
!54 = !{i32 2, %struct.SamplerState* undef, !"", i32 0, i32 2, i32 1, i32 0, null}
!55 = !{i32 3, %struct.SamplerState* undef, !"", i32 0, i32 3, i32 1, i32 0, null}
!56 = !{i32 4, %struct.SamplerState* undef, !"", i32 0, i32 4, i32 1, i32 0, null}
!57 = !{[47 x i32] [i32 45, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !84}
!59 = !{!60, !82, null}
!60 = !{!61, !64, !66, !68, !70, !72, !73, !74, !75, !76, !77, !79, !81}
!61 = !{i32 0, !"SV_Position", i8 9, i8 3, !62, i8 4, i32 1, i8 4, i32 0, i8 0, !63}
!62 = !{i32 0}
!63 = !{i32 3, i32 11}
!64 = !{i32 1, !"COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 1, i8 0, !65}
!65 = !{i32 3, i32 14}
!66 = !{i32 2, !"TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 2, i8 0, !67}
!67 = !{i32 3, i32 3}
!68 = !{i32 3, !"NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 3, i8 0, !69}
!69 = !{i32 3, i32 7}
!70 = !{i32 4, !"TANGENT", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 4, i8 0, !71}
!71 = !{i32 3, i32 15}
!72 = !{i32 5, !"SH_RED", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 5, i8 0, !71}
!73 = !{i32 6, !"SH_GREEN", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !71}
!74 = !{i32 7, !"SH_BLUE", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 7, i8 0, !71}
!75 = !{i32 8, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 8, i8 0, !67}
!76 = !{i32 9, !"SCEONDARY_NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 9, i8 0, !71}
!77 = !{i32 10, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 10, i8 0, !78}
!78 = !{i32 3, i32 13}
!79 = !{i32 11, !"SV_IsFrontFace", i8 5, i8 13, !62, i8 1, i32 1, i8 1, i32 11, i8 0, !80}
!80 = !{i32 3, i32 1}
!81 = !{i32 12, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!82 = !{!83}
!83 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!84 = !{i32 0, i64 24}
!85 = distinct !{!85, !"dx.controlflow.hints", i32 1}
!86 = distinct !{!86, !"dx.controlflow.hints", i32 1}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !89}
!89 = !{!"llvm.loop.unroll.disable"}
!90 = distinct !{!90, !"dx.controlflow.hints", i32 1}
!91 = distinct !{!91, !"dx.controlflow.hints", i32 1}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}

