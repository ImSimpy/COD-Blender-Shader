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
; shader hash: c92903bd8abab307527c55dbff7841f5
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
  %383 = add i32 %45, 488
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
  %564 = add i32 %45, 456
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
  %1239 = add i32 %45, 460
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
  %2093 = add i32 %45, 464
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
  %2947 = add i32 %45, 468
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
  %3474 = bitcast i32 %3473 to float
  %3475 = fcmp fast oge float %3474, 0.000000e+00
  %3476 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3477 = extractvalue %dx.types.CBufRet.f32 %3476, 0
  %3478 = select i1 %3475, float %3474, float %3477
  %3479 = call float @dx.op.dot2.f32(i32 54, float %3459, float %3460, float %3459, float %3460)  ; Dot2(ax,ay,bx,by)
  %3480 = fmul fast float %3479, 0x3FE3333340000000
  %3481 = fsub fast float 1.000000e+00, %3480
  %3482 = call float @dx.op.dot3.f32(i32 55, float %3459, float %3460, float %3481, float %3459, float %3460, float %3481)  ; Dot3(ax,ay,az,bx,by,bz)
  %3483 = call float @dx.op.unary.f32(i32 25, float %3482)  ; Rsqrt(value)
  %3484 = fmul fast float %3483, %3459
  %3485 = fmul fast float %3483, %3460
  %3486 = fmul fast float %3481, %3483
  %3487 = fmul fast float %3486, %94
  %3488 = fmul fast float %3486, %96
  %3489 = fmul fast float %3486, %98
  %3490 = fmul fast float %3484, %66
  %3491 = fmul fast float %3484, %67
  %3492 = fmul fast float %3484, %68
  %3493 = fadd fast float %3487, %3490
  %3494 = fadd fast float %3488, %3491
  %3495 = fadd fast float %3489, %3492
  %3496 = fmul fast float %108, %3485
  %3497 = fmul fast float %109, %3485
  %3498 = fmul fast float %110, %3485
  %3499 = fadd fast float %3493, %3496
  %3500 = fadd fast float %3494, %3497
  %3501 = fadd fast float %3495, %3498
  %3502 = call float @dx.op.dot3.f32(i32 55, float %3499, float %3500, float %3501, float %3499, float %3500, float %3501)  ; Dot3(ax,ay,az,bx,by,bz)
  %3503 = call float @dx.op.unary.f32(i32 25, float %3502)  ; Rsqrt(value)
  %3504 = fmul fast float %3499, %3503
  %3505 = fmul fast float %3500, %3503
  %3506 = fmul fast float %3501, %3503
  %3507 = and i32 %47, 1
  %3508 = icmp eq i32 %3507, 0
  br i1 %3508, label %3509, label %4021

; <label>:3509                                    ; preds = %3458
  %3510 = call float @dx.op.unary.f32(i32 83, float %144)  ; DerivCoarseX(value)
  %3511 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3512 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %3513 = call float @dx.op.unary.f32(i32 84, float %144)  ; DerivCoarseY(value)
  %3514 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3515 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %3516 = fadd fast float %3510, %144
  %3517 = fadd fast float %3511, %145
  %3518 = fadd fast float %3512, %146
  %3519 = fadd fast float %3513, %144
  %3520 = fadd fast float %3514, %145
  %3521 = fadd fast float %3515, %146
  %3522 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3523 = extractvalue %dx.types.CBufRet.f32 %3522, 0
  %3524 = extractvalue %dx.types.CBufRet.f32 %3522, 1
  %3525 = extractvalue %dx.types.CBufRet.f32 %3522, 2
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 2
  %3528 = extractvalue %dx.types.CBufRet.f32 %3526, 3
  %3529 = fmul fast float %3523, %85
  %3530 = fmul fast float %3529, %3527
  %3531 = fmul fast float %3524, %86
  %3532 = fmul fast float %3531, %3528
  %3533 = fptoui float %3530 to i32
  %3534 = fptoui float %3532 to i32
  %3535 = fadd fast float %3523, -1.000000e+00
  %3536 = fadd fast float %3524, -1.000000e+00
  %3537 = fptoui float %3535 to i32
  %3538 = fptoui float %3536 to i32
  %3539 = call i32 @dx.op.binary.i32(i32 40, i32 %3533, i32 %3537)  ; UMin(a,b)
  %3540 = call i32 @dx.op.binary.i32(i32 40, i32 %3534, i32 %3538)  ; UMin(a,b)
  %3541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3542 = extractvalue %dx.types.CBufRet.f32 %3541, 2
  %3543 = extractvalue %dx.types.CBufRet.f32 %3541, 3
  %3544 = fmul fast float %3542, %80
  %3545 = fsub fast float %3544, %3543
  %3546 = fadd fast float %3525, -1.000000e+00
  %3547 = call float @dx.op.binary.f32(i32 36, float %3545, float %3546)  ; FMin(a,b)
  %3548 = fptoui float %3547 to i32
  %3549 = fptoui float %3523 to i32
  %3550 = fptoui float %3524 to i32
  %3551 = mul i32 %3548, %3550
  %3552 = add i32 %3551, %3540
  %3553 = mul i32 %3552, %3549
  %3554 = add i32 %3553, %3539
  %3555 = shl i32 %3554, 2
  %3556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3555, i32 undef)  ; BufferLoad(srv,index,wot)
  %3557 = extractvalue %dx.types.ResRet.i32 %3556, 0
  %3558 = and i32 %3557, 1023
  %3559 = lshr i32 %3557, 10
  %3560 = icmp eq i32 %3558, 0
  br i1 %3560, label %3989, label %3561

; <label>:3561                                    ; preds = %3509
  %3562 = and i32 %3557, 1023
  br label %3563

; <label>:3563                                    ; preds = %3690, %3561
  %3564 = phi i32 [ %3640, %3690 ], [ 0, %3561 ]
  %3565 = phi float [ %3691, %3690 ], [ 0.000000e+00, %3561 ]
  %3566 = phi float [ %3692, %3690 ], [ %905, %3561 ]
  %3567 = phi float [ %3693, %3690 ], [ %3478, %3561 ]
  %3568 = phi float [ %3694, %3690 ], [ %3470, %3561 ]
  %3569 = phi float [ %3695, %3690 ], [ 0.000000e+00, %3561 ]
  %3570 = phi float [ %3696, %3690 ], [ 0.000000e+00, %3561 ]
  %3571 = phi float [ %3697, %3690 ], [ %3464, %3561 ]
  %3572 = phi float [ %3698, %3690 ], [ %3465, %3561 ]
  %3573 = phi float [ %3699, %3690 ], [ %3466, %3561 ]
  %3574 = phi float [ %3700, %3690 ], [ %3504, %3561 ]
  %3575 = phi float [ %3701, %3690 ], [ %3505, %3561 ]
  %3576 = phi float [ %3702, %3690 ], [ %3506, %3561 ]
  %3577 = phi float [ %3703, %3690 ], [ %3469, %3561 ]
  %3578 = phi float [ %3704, %3690 ], [ %3468, %3561 ]
  %3579 = phi float [ %3705, %3690 ], [ 0.000000e+00, %3561 ]
  %3580 = phi float [ %3706, %3690 ], [ %3467, %3561 ]
  %3581 = phi float [ %3707, %3690 ], [ %3461, %3561 ]
  %3582 = phi float [ %3708, %3690 ], [ %3462, %3561 ]
  %3583 = phi float [ %3709, %3690 ], [ %3463, %3561 ]
  %3584 = add nuw nsw i32 %3564, %3559
  %3585 = shl i32 %3584, 2
  %3586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3585, i32 undef)  ; BufferLoad(srv,index,wot)
  %3587 = extractvalue %dx.types.ResRet.i32 %3586, 0
  %3588 = shl i32 %3587, 8
  %3589 = or i32 %3588, 48
  %3590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3589, i32 undef)  ; BufferLoad(srv,index,wot)
  %3591 = extractvalue %dx.types.ResRet.f32 %3590, 0
  %3592 = extractvalue %dx.types.ResRet.f32 %3590, 1
  %3593 = extractvalue %dx.types.ResRet.f32 %3590, 2
  %3594 = extractvalue %dx.types.ResRet.f32 %3590, 3
  %3595 = or i32 %3588, 64
  %3596 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3595, i32 undef)  ; BufferLoad(srv,index,wot)
  %3597 = extractvalue %dx.types.ResRet.i32 %3596, 0
  %3598 = extractvalue %dx.types.ResRet.i32 %3596, 1
  %3599 = or i32 %3588, 80
  %3600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 3
  %3603 = or i32 %3588, 96
  %3604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3603, i32 undef)  ; BufferLoad(srv,index,wot)
  %3605 = extractvalue %dx.types.ResRet.f32 %3604, 0
  %3606 = extractvalue %dx.types.ResRet.f32 %3604, 1
  %3607 = extractvalue %dx.types.ResRet.f32 %3604, 2
  %3608 = extractvalue %dx.types.ResRet.f32 %3604, 3
  %3609 = or i32 %3588, 112
  %3610 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3609, i32 undef)  ; BufferLoad(srv,index,wot)
  %3611 = extractvalue %dx.types.ResRet.f32 %3610, 2
  %3612 = or i32 %3588, 128
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3615 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3616 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3617 = extractvalue %dx.types.ResRet.f32 %3613, 3
  %3618 = or i32 %3588, 144
  %3619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3621 = extractvalue %dx.types.ResRet.f32 %3619, 1
  %3622 = extractvalue %dx.types.ResRet.f32 %3619, 2
  %3623 = extractvalue %dx.types.ResRet.f32 %3619, 3
  %3624 = or i32 %3588, 160
  %3625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3624, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = extractvalue %dx.types.ResRet.f32 %3625, 2
  %3629 = extractvalue %dx.types.ResRet.f32 %3625, 3
  %3630 = or i32 %3588, 192
  %3631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3630, i32 undef)  ; BufferLoad(srv,index,wot)
  %3632 = extractvalue %dx.types.ResRet.i32 %3631, 0
  %3633 = or i32 %3588, 208
  %3634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.f32 %3634, 0
  %3636 = or i32 %3588, 248
  %3637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = extractvalue %dx.types.ResRet.f32 %3637, 1
  %3640 = add nuw nsw i32 %3564, 1
  %3641 = bitcast float %3594 to i32
  %3642 = and i32 %3641, 512
  %3643 = icmp eq i32 %3642, 0
  %3644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3648 = extractvalue %dx.types.ResRet.f32 %3644, 3
  %3649 = call float @dx.op.dot4.f32(i32 56, float %3645, float %3646, float %3647, float %3648, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3650 = or i32 %3588, 16
  %3651 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3650, i32 undef)  ; BufferLoad(srv,index,wot)
  %3652 = extractvalue %dx.types.ResRet.f32 %3651, 0
  %3653 = extractvalue %dx.types.ResRet.f32 %3651, 1
  %3654 = extractvalue %dx.types.ResRet.f32 %3651, 2
  %3655 = extractvalue %dx.types.ResRet.f32 %3651, 3
  %3656 = call float @dx.op.dot4.f32(i32 56, float %3652, float %3653, float %3654, float %3655, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3657 = or i32 %3588, 32
  %3658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3660 = extractvalue %dx.types.ResRet.f32 %3658, 1
  %3661 = extractvalue %dx.types.ResRet.f32 %3658, 2
  %3662 = extractvalue %dx.types.ResRet.f32 %3658, 3
  %3663 = call float @dx.op.dot4.f32(i32 56, float %3659, float %3660, float %3661, float %3662, float %144, float %145, float %146, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3664 = call float @dx.op.unary.f32(i32 27, float %3649)  ; Round_ni(value)
  %3665 = call float @dx.op.unary.f32(i32 6, float %3664)  ; FAbs(value)
  %3666 = call float @dx.op.unary.f32(i32 27, float %3656)  ; Round_ni(value)
  %3667 = call float @dx.op.unary.f32(i32 6, float %3666)  ; FAbs(value)
  %3668 = call float @dx.op.unary.f32(i32 6, float %3663)  ; FAbs(value)
  %3669 = call float @dx.op.unary.f32(i32 27, float %3668)  ; Round_ni(value)
  %3670 = fadd fast float %3667, %3665
  %3671 = fadd fast float %3670, %3669
  %3672 = fcmp fast oeq float %3671, 0.000000e+00
  %3673 = call float @dx.op.dot4.f32(i32 56, float %3645, float %3646, float %3647, float %3648, float %3516, float %3517, float %3518, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3674 = call float @dx.op.dot4.f32(i32 56, float %3652, float %3653, float %3654, float %3655, float %3516, float %3517, float %3518, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3675 = call float @dx.op.dot4.f32(i32 56, float %3645, float %3646, float %3647, float %3648, float %3519, float %3520, float %3521, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3676 = call float @dx.op.dot4.f32(i32 56, float %3652, float %3653, float %3654, float %3655, float %3519, float %3520, float %3521, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3677 = fsub fast float %3673, %3649
  %3678 = fsub fast float %3675, %3649
  %3679 = fsub fast float %3674, %3656
  %3680 = fsub fast float %3676, %3656
  %3681 = call float @dx.op.dot3.f32(i32 55, float %3591, float %3592, float %3593, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %3682 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3683 = extractvalue %dx.types.CBufRet.f32 %3682, 2
  %3684 = fadd fast float %3683, %3681
  %3685 = call float @dx.op.unary.f32(i32 7, float %3684)  ; Saturate(value)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3682, 0
  %3687 = fcmp fast ogt float %3685, %3686
  %3688 = and i1 %3672, %3687
  %3689 = and i1 %3643, %3688
  br i1 %3689, label %3711, label %3690

; <label>:3690                                    ; preds = %3975, %3792, %3711, %3563
  %3691 = phi float [ %3565, %3711 ], [ %3795, %3792 ], [ %3795, %3975 ], [ %3565, %3563 ]
  %3692 = phi float [ %3566, %3711 ], [ %3566, %3792 ], [ %3950, %3975 ], [ %3566, %3563 ]
  %3693 = phi float [ %3567, %3711 ], [ %3567, %3792 ], [ %3949, %3975 ], [ %3567, %3563 ]
  %3694 = phi float [ %3568, %3711 ], [ %3568, %3792 ], [ %3947, %3975 ], [ %3568, %3563 ]
  %3695 = phi float [ %3569, %3711 ], [ %3569, %3792 ], [ %3919, %3975 ], [ %3569, %3563 ]
  %3696 = phi float [ %3570, %3711 ], [ %3570, %3792 ], [ %3917, %3975 ], [ %3570, %3563 ]
  %3697 = phi float [ %3571, %3711 ], [ %3571, %3792 ], [ %3985, %3975 ], [ %3571, %3563 ]
  %3698 = phi float [ %3572, %3711 ], [ %3572, %3792 ], [ %3986, %3975 ], [ %3572, %3563 ]
  %3699 = phi float [ %3573, %3711 ], [ %3573, %3792 ], [ %3987, %3975 ], [ %3573, %3563 ]
  %3700 = phi float [ %3574, %3711 ], [ %3574, %3792 ], [ %3898, %3975 ], [ %3574, %3563 ]
  %3701 = phi float [ %3575, %3711 ], [ %3575, %3792 ], [ %3899, %3975 ], [ %3575, %3563 ]
  %3702 = phi float [ %3576, %3711 ], [ %3576, %3792 ], [ %3900, %3975 ], [ %3576, %3563 ]
  %3703 = phi float [ %3577, %3711 ], [ %3577, %3792 ], [ %3927, %3975 ], [ %3577, %3563 ]
  %3704 = phi float [ %3578, %3711 ], [ %3578, %3792 ], [ %3924, %3975 ], [ %3578, %3563 ]
  %3705 = phi float [ %3579, %3711 ], [ %3579, %3792 ], [ %3921, %3975 ], [ %3579, %3563 ]
  %3706 = phi float [ %3580, %3711 ], [ %3580, %3792 ], [ %3915, %3975 ], [ %3580, %3563 ]
  %3707 = phi float [ %3581, %3711 ], [ %3581, %3792 ], [ %3910, %3975 ], [ %3581, %3563 ]
  %3708 = phi float [ %3582, %3711 ], [ %3582, %3792 ], [ %3911, %3975 ], [ %3582, %3563 ]
  %3709 = phi float [ %3583, %3711 ], [ %3583, %3792 ], [ %3912, %3975 ], [ %3583, %3563 ]
  %3710 = icmp eq i32 %3640, %3562
  br i1 %3710, label %3988, label %3563

; <label>:3711                                    ; preds = %3563
  %3712 = extractvalue %dx.types.ResRet.f32 %3610, 3
  %3713 = extractvalue %dx.types.ResRet.f32 %3610, 1
  %3714 = extractvalue %dx.types.ResRet.f32 %3610, 0
  %3715 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3716 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3717 = extractvalue %dx.types.ResRet.i32 %3596, 3
  %3718 = extractvalue %dx.types.ResRet.i32 %3596, 2
  %3719 = add i32 %3717, 0
  %3720 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3719, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3721 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3722 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3720, %dx.types.Handle %3721, float %3649, float %3656, float undef, float undef, i32 0, i32 0, i32 undef, float %3677, float %3679, float undef, float %3678, float %3680, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3723 = extractvalue %dx.types.ResRet.f32 %3722, 0
  %3724 = fmul fast float %3723, %3716
  %3725 = fadd fast float %3724, %3715
  %3726 = call float @dx.op.unary.f32(i32 7, float %3725)  ; Saturate(value)
  %3727 = fmul fast float %3649, %3605
  %3728 = call float @dx.op.tertiary.f32(i32 46, float %3606, float %3656, float %3727)  ; FMad(a,b,c)
  %3729 = fadd fast float %3728, %3714
  %3730 = fmul fast float %3649, %3607
  %3731 = call float @dx.op.tertiary.f32(i32 46, float %3608, float %3656, float %3730)  ; FMad(a,b,c)
  %3732 = fadd fast float %3731, %3713
  %3733 = fmul fast float %3677, %3605
  %3734 = call float @dx.op.tertiary.f32(i32 46, float %3606, float %3679, float %3733)  ; FMad(a,b,c)
  %3735 = fmul fast float %3677, %3607
  %3736 = call float @dx.op.tertiary.f32(i32 46, float %3608, float %3679, float %3735)  ; FMad(a,b,c)
  %3737 = fmul fast float %3678, %3605
  %3738 = call float @dx.op.tertiary.f32(i32 46, float %3606, float %3680, float %3737)  ; FMad(a,b,c)
  %3739 = fmul fast float %3678, %3607
  %3740 = call float @dx.op.tertiary.f32(i32 46, float %3608, float %3680, float %3739)  ; FMad(a,b,c)
  %3741 = add i32 %3718, 0
  %3742 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3741, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3743 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3742, %dx.types.Handle %3721, float %3729, float %3732, float undef, float undef, i32 0, i32 0, i32 undef, float %3734, float %3736, float undef, float %3738, float %3740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3744 = extractvalue %dx.types.ResRet.f32 %3743, 0
  %3745 = and i32 %3641, 1024
  %3746 = icmp ne i32 %3745, 0
  %3747 = fcmp fast ogt float %3744, 0x3FE0101020000000
  %3748 = uitofp i1 %3747 to float
  %3749 = select i1 %3746, float %3748, float %3744
  %3750 = and i32 %3641, 8192
  %3751 = icmp ne i32 %3750, 0
  %3752 = select i1 %3751, float %3712, float 1.000000e+00
  %3753 = fmul fast float %3649, 2.000000e+00
  %3754 = fadd fast float %3753, -1.000000e+00
  %3755 = call float @dx.op.unary.f32(i32 6, float %3754)  ; FAbs(value)
  %3756 = fmul fast float %3755, %3638
  %3757 = fsub fast float %3756, %3638
  %3758 = call float @dx.op.unary.f32(i32 7, float %3757)  ; Saturate(value)
  %3759 = fmul fast float %3656, 2.000000e+00
  %3760 = fadd fast float %3759, -1.000000e+00
  %3761 = call float @dx.op.unary.f32(i32 6, float %3760)  ; FAbs(value)
  %3762 = fmul fast float %3761, %3639
  %3763 = fsub fast float %3762, %3639
  %3764 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3765 = fmul fast float %3668, %3601
  %3766 = fsub fast float %3765, %3601
  %3767 = call float @dx.op.unary.f32(i32 7, float %3766)  ; Saturate(value)
  %3768 = fmul fast float %3726, %3752
  %3769 = fmul fast float %3768, %3723
  %3770 = fmul fast float %3769, %3758
  %3771 = fmul fast float %3770, %3749
  %3772 = fmul fast float %3771, %3764
  %3773 = fmul fast float %3772, %3767
  %3774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3775 = extractvalue %dx.types.CBufRet.f32 %3774, 1
  %3776 = extractvalue %dx.types.CBufRet.f32 %3774, 0
  %3777 = fsub fast float %3685, %3776
  %3778 = fmul fast float %3777, %3775
  %3779 = call float @dx.op.unary.f32(i32 7, float %3778)  ; Saturate(value)
  %3780 = fmul fast float %3773, %3602
  %3781 = fadd fast float %3773, %3602
  %3782 = fmul fast float %3781, %3611
  %3783 = fsub fast float %3782, %3611
  %3784 = call float @dx.op.unary.f32(i32 7, float %3783)  ; Saturate(value)
  %3785 = and i32 %3641, 128
  %3786 = icmp ne i32 %3785, 0
  %3787 = select i1 %3786, float %3784, float %3780
  %3788 = fmul fast float %3787, %3779
  %3789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3790 = extractvalue %dx.types.CBufRet.f32 %3789, 0
  %3791 = fcmp fast ugt float %3788, %3790
  br i1 %3791, label %3792, label %3690

; <label>:3792                                    ; preds = %3711
  %3793 = select i1 %3751, float %3788, float 0.000000e+00
  %3794 = fadd fast float %3793, %3565
  %3795 = call float @dx.op.unary.f32(i32 7, float %3794)  ; Saturate(value)
  br i1 %3751, label %3690, label %3796

; <label>:3796                                    ; preds = %3792
  %3797 = and i32 %3641, 4
  %3798 = and i32 %3641, 8
  %3799 = add i32 %3597, 0
  %3800 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3799, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3801 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3802 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3800, %dx.types.Handle %3801, float %3729, float %3732, float undef, float undef, i32 0, i32 0, i32 undef, float %3734, float %3736, float undef, float %3738, float %3740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3803 = extractvalue %dx.types.ResRet.f32 %3802, 0
  %3804 = extractvalue %dx.types.ResRet.f32 %3802, 1
  %3805 = extractvalue %dx.types.ResRet.f32 %3802, 2
  %3806 = extractvalue %dx.types.ResRet.f32 %3802, 3
  %3807 = bitcast float %3623 to i32
  %3808 = and i32 %3807, 255
  %3809 = uitofp i32 %3808 to float
  %3810 = lshr i32 %3807, 8
  %3811 = and i32 %3810, 255
  %3812 = uitofp i32 %3811 to float
  %3813 = fmul fast float %3806, %3809
  %3814 = fadd fast float %3813, %3812
  %3815 = fmul fast float %3814, 0x3F70101000000000
  %3816 = add i32 %3598, 0
  %3817 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3816, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3818 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3817, %dx.types.Handle %3801, float %3729, float %3732, float undef, float undef, i32 0, i32 0, i32 undef, float %3734, float %3736, float undef, float %3738, float %3740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3819 = extractvalue %dx.types.ResRet.f32 %3818, 0
  %3820 = extractvalue %dx.types.ResRet.f32 %3818, 1
  %3821 = extractvalue %dx.types.ResRet.f32 %3818, 2
  %3822 = extractvalue %dx.types.ResRet.f32 %3818, 3
  %3823 = bitcast float %3617 to i32
  %3824 = and i32 %3823, 255
  %3825 = uitofp i32 %3824 to float
  %3826 = lshr i32 %3823, 8
  %3827 = and i32 %3826, 255
  %3828 = uitofp i32 %3827 to float
  %3829 = lshr i32 %3823, 16
  %3830 = and i32 %3829, 255
  %3831 = uitofp i32 %3830 to float
  %3832 = fmul fast float %3831, 0x3F70101000000000
  %3833 = fmul fast float %3819, %3825
  %3834 = fadd fast float %3833, %3828
  %3835 = fmul fast float %3834, 0x3F70101000000000
  %3836 = fadd fast float %3820, -5.000000e-01
  %3837 = fadd fast float %3822, -5.000000e-01
  %3838 = fmul fast float %3836, %3832
  %3839 = fmul fast float %3837, %3832
  %3840 = fadd fast float %3838, 5.000000e-01
  %3841 = fadd fast float %3839, 5.000000e-01
  %3842 = fmul fast float %3803, %3626
  %3843 = fmul fast float %3804, %3627
  %3844 = fmul fast float %3805, %3628
  %3845 = fmul fast float %3840, 2.000000e+00
  %3846 = fadd fast float %3845, -1.000000e+00
  %3847 = fmul fast float %3841, 2.000000e+00
  %3848 = fadd fast float %3847, -1.000000e+00
  %3849 = fadd fast float %3846, %3848
  %3850 = fmul fast float %3849, 5.000000e-01
  %3851 = fsub fast float %3846, %3848
  %3852 = fmul fast float %3851, 5.000000e-01
  %3853 = call float @dx.op.unary.f32(i32 6, float %3850)  ; FAbs(value)
  %3854 = fsub fast float 1.000000e+00, %3853
  %3855 = call float @dx.op.unary.f32(i32 6, float %3852)  ; FAbs(value)
  %3856 = fsub fast float %3854, %3855
  %3857 = call float @dx.op.dot3.f32(i32 55, float %3850, float %3852, float %3856, float %3850, float %3852, float %3856)  ; Dot3(ax,ay,az,bx,by,bz)
  %3858 = call float @dx.op.unary.f32(i32 25, float %3857)  ; Rsqrt(value)
  %3859 = fmul fast float %3850, %3858
  %3860 = fmul fast float %3852, %3858
  %3861 = fmul fast float %3858, %3856
  %3862 = fmul fast float %3861, %3591
  %3863 = fmul fast float %3861, %3592
  %3864 = fmul fast float %3861, %3593
  %3865 = fmul fast float %3859, %3614
  %3866 = fmul fast float %3859, %3615
  %3867 = fmul fast float %3859, %3616
  %3868 = fadd fast float %3865, %3862
  %3869 = fadd fast float %3866, %3863
  %3870 = fadd fast float %3867, %3864
  %3871 = fmul fast float %3860, %3620
  %3872 = fmul fast float %3860, %3621
  %3873 = fmul fast float %3860, %3622
  %3874 = fadd fast float %3868, %3871
  %3875 = fadd fast float %3869, %3872
  %3876 = fadd fast float %3870, %3873
  %3877 = call float @dx.op.dot3.f32(i32 55, float %3874, float %3875, float %3876, float %3874, float %3875, float %3876)  ; Dot3(ax,ay,az,bx,by,bz)
  %3878 = call float @dx.op.unary.f32(i32 25, float %3877)  ; Rsqrt(value)
  %3879 = fmul fast float %3874, %3878
  %3880 = fmul fast float %3875, %3878
  %3881 = fmul fast float %3876, %3878
  %3882 = icmp ne i32 %3798, 0
  %3883 = select i1 %3882, float 1.000000e+00, float 0.000000e+00
  %3884 = fmul fast float %3788, %3883
  %3885 = and i32 %3641, 1
  %3886 = icmp eq i32 %3885, 0
  br i1 %3886, label %3887, label %3891

; <label>:3887                                    ; preds = %3796
  %3888 = fsub fast float %3879, %3574
  %3889 = fsub fast float %3880, %3575
  %3890 = fsub fast float %3881, %3576
  br label %3891

; <label>:3891                                    ; preds = %3887, %3796
  %3892 = phi float [ %3888, %3887 ], [ %3879, %3796 ]
  %3893 = phi float [ %3889, %3887 ], [ %3880, %3796 ]
  %3894 = phi float [ %3890, %3887 ], [ %3881, %3796 ]
  %3895 = fmul float %3894, %3884
  %3896 = fmul float %3893, %3884
  %3897 = fmul float %3892, %3884
  %3898 = fadd fast float %3897, %3574
  %3899 = fadd fast float %3896, %3575
  %3900 = fadd fast float %3895, %3576
  %3901 = icmp ne i32 %3797, 0
  %3902 = select i1 %3901, float 1.000000e+00, float 0.000000e+00
  %3903 = fmul fast float %3788, %3902
  %3904 = fsub fast float %3842, %3581
  %3905 = fsub fast float %3843, %3582
  %3906 = fsub fast float %3844, %3583
  %3907 = fmul fast float %3904, %3903
  %3908 = fmul fast float %3905, %3903
  %3909 = fmul fast float %3906, %3903
  %3910 = fadd fast float %3907, %3581
  %3911 = fadd fast float %3908, %3582
  %3912 = fadd fast float %3909, %3583
  %3913 = fsub fast float %3815, %3580
  %3914 = fmul fast float %3913, %3903
  %3915 = fadd fast float %3914, %3580
  %3916 = fmul fast float %3903, %3570
  %3917 = fsub fast float %3570, %3916
  %3918 = fmul fast float %3903, %3569
  %3919 = fsub fast float %3569, %3918
  %3920 = fadd fast float %3788, %3579
  %3921 = call float @dx.op.unary.f32(i32 7, float %3920)  ; Saturate(value)
  %3922 = fsub fast float %3835, %3578
  %3923 = fmul fast float %3922, %3884
  %3924 = fadd fast float %3923, %3578
  %3925 = fsub fast float %3821, %3577
  %3926 = fmul fast float %3925, %3884
  %3927 = fadd fast float %3926, %3577
  %3928 = call float @dx.op.dot3.f32(i32 55, float %3842, float %3843, float %3844, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3929 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3930 = extractvalue %dx.types.CBufRet.f32 %3929, 0
  %3931 = extractvalue %dx.types.CBufRet.f32 %3929, 1
  %3932 = fmul fast float %3931, %3928
  %3933 = fadd fast float %3932, %3930
  %3934 = call float @dx.op.unary.f32(i32 7, float %3933)  ; Saturate(value)
  %3935 = bitcast float %3629 to i32
  %3936 = and i32 %3935, 65535
  %3937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3936)  ; LegacyF16ToF32(value)
  %3938 = lshr i32 %3935, 16
  %3939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3938)  ; LegacyF16ToF32(value)
  %3940 = fcmp fast oge float %3937, 0.000000e+00
  %3941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3942 = extractvalue %dx.types.CBufRet.f32 %3941, 0
  %3943 = select i1 %3940, float %3937, float %3942
  %3944 = fadd fast float %3943, %3939
  %3945 = fsub fast float %3934, %3568
  %3946 = fmul fast float %3945, %3788
  %3947 = fadd fast float %3946, %3568
  %3948 = fmul fast float %3944, %3788
  %3949 = call float @dx.op.binary.f32(i32 35, float %3567, float %3948)  ; FMax(a,b)
  %3950 = call float @dx.op.binary.f32(i32 35, float %3566, float %3788)  ; FMax(a,b)
  %3951 = and i32 %3641, 16
  %3952 = icmp eq i32 %3951, 0
  br i1 %3952, label %3975, label %3953

; <label>:3953                                    ; preds = %3891
  %3954 = bitcast float %3635 to i32
  %3955 = add i32 %3632, 0
  %3956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3955, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3957 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3956, %dx.types.Handle %3801, float %3729, float %3732, float undef, float undef, i32 0, i32 0, i32 undef, float %3734, float %3736, float undef, float %3738, float %3740, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3958 = extractvalue %dx.types.ResRet.f32 %3957, 0
  %3959 = extractvalue %dx.types.ResRet.f32 %3957, 1
  %3960 = extractvalue %dx.types.ResRet.f32 %3957, 2
  %3961 = and i32 %3954, 65535
  %3962 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3961)  ; LegacyF16ToF32(value)
  %3963 = fmul fast float %3958, %3626
  %3964 = fmul fast float %3959, %3627
  %3965 = fmul fast float %3960, %3628
  %3966 = and i32 %3641, 16384
  %3967 = icmp ne i32 %3966, 0
  %3968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3969 = extractvalue %dx.types.CBufRet.f32 %3968, 0
  %3970 = select i1 %3967, float %3969, float 1.000000e+00
  %3971 = fmul fast float %3970, %3962
  %3972 = fmul fast float %3963, %3971
  %3973 = fmul fast float %3964, %3971
  %3974 = fmul fast float %3965, %3971
  br label %3975

; <label>:3975                                    ; preds = %3953, %3891
  %3976 = phi float [ %3972, %3953 ], [ 0.000000e+00, %3891 ]
  %3977 = phi float [ %3973, %3953 ], [ 0.000000e+00, %3891 ]
  %3978 = phi float [ %3974, %3953 ], [ 0.000000e+00, %3891 ]
  %3979 = fsub fast float %3976, %3571
  %3980 = fsub fast float %3977, %3572
  %3981 = fsub fast float %3978, %3573
  %3982 = fmul fast float %3979, %3788
  %3983 = fmul fast float %3980, %3788
  %3984 = fmul fast float %3981, %3788
  %3985 = fadd fast float %3982, %3571
  %3986 = fadd fast float %3983, %3572
  %3987 = fadd fast float %3984, %3573
  br label %3690

; <label>:3988                                    ; preds = %3690
  br label %3989

; <label>:3989                                    ; preds = %3988, %3509
  %3990 = phi float [ 0.000000e+00, %3509 ], [ %3691, %3988 ]
  %3991 = phi float [ %905, %3509 ], [ %3692, %3988 ]
  %3992 = phi float [ %3478, %3509 ], [ %3693, %3988 ]
  %3993 = phi float [ %3470, %3509 ], [ %3694, %3988 ]
  %3994 = phi float [ 0.000000e+00, %3509 ], [ %3695, %3988 ]
  %3995 = phi float [ 0.000000e+00, %3509 ], [ %3696, %3988 ]
  %3996 = phi float [ %3464, %3509 ], [ %3697, %3988 ]
  %3997 = phi float [ %3465, %3509 ], [ %3698, %3988 ]
  %3998 = phi float [ %3466, %3509 ], [ %3699, %3988 ]
  %3999 = phi float [ %3504, %3509 ], [ %3700, %3988 ]
  %4000 = phi float [ %3505, %3509 ], [ %3701, %3988 ]
  %4001 = phi float [ %3506, %3509 ], [ %3702, %3988 ]
  %4002 = phi float [ %3469, %3509 ], [ %3703, %3988 ]
  %4003 = phi float [ %3468, %3509 ], [ %3704, %3988 ]
  %4004 = phi float [ 0.000000e+00, %3509 ], [ %3705, %3988 ]
  %4005 = phi float [ %3467, %3509 ], [ %3706, %3988 ]
  %4006 = phi float [ %3461, %3509 ], [ %3707, %3988 ]
  %4007 = phi float [ %3462, %3509 ], [ %3708, %3988 ]
  %4008 = phi float [ %3463, %3509 ], [ %3709, %3988 ]
  %4009 = call float @dx.op.dot3.f32(i32 55, float %3999, float %4000, float %4001, float %3999, float %4000, float %4001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4010 = call float @dx.op.unary.f32(i32 25, float %4009)  ; Rsqrt(value)
  %4011 = fmul fast float %4010, %3999
  %4012 = fmul fast float %4010, %4000
  %4013 = fmul fast float %4010, %4001
  %4014 = fadd fast float %4004, %905
  %4015 = call float @dx.op.unary.f32(i32 7, float %4014)  ; Saturate(value)
  %4016 = call float @dx.op.dot3.f32(i32 55, float %4011, float %4012, float %4013, float %4011, float %4012, float %4013)  ; Dot3(ax,ay,az,bx,by,bz)
  %4017 = call float @dx.op.unary.f32(i32 25, float %4016)  ; Rsqrt(value)
  %4018 = fmul fast float %4017, %4011
  %4019 = fmul fast float %4017, %4012
  %4020 = fmul fast float %4017, %4013
  br label %4021

; <label>:4021                                    ; preds = %3989, %3458
  %4022 = phi float [ %4018, %3989 ], [ %3504, %3458 ]
  %4023 = phi float [ %4019, %3989 ], [ %3505, %3458 ]
  %4024 = phi float [ %4020, %3989 ], [ %3506, %3458 ]
  %4025 = phi float [ %4006, %3989 ], [ %3461, %3458 ]
  %4026 = phi float [ %4007, %3989 ], [ %3462, %3458 ]
  %4027 = phi float [ %4008, %3989 ], [ %3463, %3458 ]
  %4028 = phi float [ %3996, %3989 ], [ %3464, %3458 ]
  %4029 = phi float [ %3997, %3989 ], [ %3465, %3458 ]
  %4030 = phi float [ %3998, %3989 ], [ %3466, %3458 ]
  %4031 = phi float [ %4005, %3989 ], [ %3467, %3458 ]
  %4032 = phi float [ %4015, %3989 ], [ %905, %3458 ]
  %4033 = phi float [ %4003, %3989 ], [ %3468, %3458 ]
  %4034 = phi float [ %4002, %3989 ], [ %3469, %3458 ]
  %4035 = phi float [ %3995, %3989 ], [ 0.000000e+00, %3458 ]
  %4036 = phi float [ %3994, %3989 ], [ 0.000000e+00, %3458 ]
  %4037 = phi float [ %3990, %3989 ], [ 0.000000e+00, %3458 ]
  %4038 = phi float [ %3992, %3989 ], [ %3478, %3458 ]
  %4039 = phi float [ %3991, %3989 ], [ %905, %3458 ]
  %4040 = phi float [ %3993, %3989 ], [ %3470, %3458 ]
  %4041 = fadd fast float %4031, 0xBFB99999A0000000
  %4042 = call float @dx.op.unary.f32(i32 7, float %4041)  ; Saturate(value)
  %4043 = fmul fast float %4042, 0x3FF1C71C80000000
  %4044 = call float @dx.op.binary.f32(i32 36, float %4031, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4045 = fsub fast float 1.000000e+00, %4043
  %4046 = call float @dx.op.unary.f32(i32 7, float %4045)  ; Saturate(value)
  %4047 = fmul fast float %4046, %4025
  %4048 = fmul fast float %4046, %4026
  %4049 = fmul fast float %4046, %4027
  %4050 = call float @dx.op.unary.f32(i32 7, float %4047)  ; Saturate(value)
  %4051 = call float @dx.op.unary.f32(i32 7, float %4048)  ; Saturate(value)
  %4052 = call float @dx.op.unary.f32(i32 7, float %4049)  ; Saturate(value)
  %4053 = fmul fast float %4043, %4025
  %4054 = fmul fast float %4043, %4026
  %4055 = fmul fast float %4043, %4027
  %4056 = fadd fast float %4053, %4044
  %4057 = fadd fast float %4054, %4044
  %4058 = fadd fast float %4055, %4044
  %4059 = call float @dx.op.unary.f32(i32 7, float %4056)  ; Saturate(value)
  %4060 = call float @dx.op.unary.f32(i32 7, float %4057)  ; Saturate(value)
  %4061 = call float @dx.op.unary.f32(i32 7, float %4058)  ; Saturate(value)
  %4062 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4063 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4064 = extractvalue %dx.types.CBufRet.i32 %4063, 3
  %4065 = and i32 %4064, 8
  %4066 = icmp ne i32 %4065, 0
  %4067 = call float @dx.op.binary.f32(i32 35, float %4050, float %4025)  ; FMax(a,b)
  %4068 = call float @dx.op.binary.f32(i32 35, float %4051, float %4025)  ; FMax(a,b)
  %4069 = call float @dx.op.binary.f32(i32 35, float %4052, float %4025)  ; FMax(a,b)
  %4070 = call float @dx.op.dot3.f32(i32 55, float %4050, float %4051, float %4052, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4071 = select i1 %186, float %4025, float %4050
  %4072 = select i1 %186, float %4070, float %4051
  %4073 = select i1 %186, float 1.000000e+00, float %4052
  %4074 = select i1 %4066, float %4067, float %4071
  %4075 = select i1 %4066, float %4068, float %4072
  %4076 = select i1 %4066, float %4069, float %4073
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4080 = extractvalue %dx.types.CBufRet.f32 %4077, 2
  %4081 = fadd fast float %4078, %144
  %4082 = fadd fast float %4079, %145
  %4083 = fadd fast float %4080, %146
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 0
  %4086 = extractvalue %dx.types.CBufRet.f32 %4084, 1
  %4087 = fsub fast float %4081, %4085
  %4088 = fsub fast float %4082, %4086
  %4089 = fmul fast float %4087, %4087
  %4090 = fmul fast float %4088, %4088
  %4091 = fadd fast float %4089, %4090
  %4092 = call float @dx.op.unary.f32(i32 24, float %4091)  ; Sqrt(value)
  %4093 = extractvalue %dx.types.CBufRet.f32 %4084, 2
  %4094 = fcmp fast olt float %4092, %4093
  br i1 %4094, label %4095, label %4162

; <label>:4095                                    ; preds = %4021
  %4096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4097 = extractvalue %dx.types.CBufRet.f32 %4096, 0
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4101 = extractvalue %dx.types.CBufRet.f32 %4100, 0
  %4102 = extractvalue %dx.types.CBufRet.f32 %4096, 1
  %4103 = extractvalue %dx.types.CBufRet.f32 %4098, 1
  %4104 = extractvalue %dx.types.CBufRet.f32 %4100, 1
  %4105 = extractvalue %dx.types.CBufRet.f32 %4096, 3
  %4106 = extractvalue %dx.types.CBufRet.f32 %4098, 3
  %4107 = extractvalue %dx.types.CBufRet.f32 %4100, 3
  %4108 = fadd fast float %4105, %4081
  %4109 = fadd fast float %4106, %4082
  %4110 = fadd fast float %4107, %4083
  %4111 = fmul fast float %4108, %4097
  %4112 = call float @dx.op.tertiary.f32(i32 46, float %4109, float %4099, float %4111)  ; FMad(a,b,c)
  %4113 = call float @dx.op.tertiary.f32(i32 46, float %4110, float %4101, float %4112)  ; FMad(a,b,c)
  %4114 = fmul fast float %4108, %4102
  %4115 = call float @dx.op.tertiary.f32(i32 46, float %4109, float %4103, float %4114)  ; FMad(a,b,c)
  %4116 = call float @dx.op.tertiary.f32(i32 46, float %4110, float %4104, float %4115)  ; FMad(a,b,c)
  %4117 = fsub fast float %4113, %4105
  %4118 = fsub fast float %4116, %4106
  %4119 = fsub fast float %4117, %4085
  %4120 = fadd fast float %4119, %4093
  %4121 = fsub fast float %4118, %4086
  %4122 = fadd fast float %4121, %4093
  %4123 = extractvalue %dx.types.CBufRet.f32 %4084, 3
  %4124 = fmul fast float %4120, %4123
  %4125 = fmul fast float %4122, %4123
  %4126 = call float @dx.op.unary.f32(i32 7, float %4124)  ; Saturate(value)
  %4127 = call float @dx.op.unary.f32(i32 7, float %4125)  ; Saturate(value)
  %4128 = fsub fast float 1.000000e+00, %4126
  %4129 = fsub fast float 1.000000e+00, %4127
  %4130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4128, float %4129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = fcmp fast ugt float %4131, 0.000000e+00
  br i1 %4132, label %4133, label %4436

; <label>:4133                                    ; preds = %4095
  %4134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4135 = extractvalue %dx.types.CBufRet.f32 %4134, 2
  %4136 = fmul fast float %4135, %4131
  %4137 = extractvalue %dx.types.CBufRet.f32 %4134, 3
  %4138 = fadd fast float %4137, %4136
  %4139 = extractvalue %dx.types.CBufRet.f32 %4100, 2
  %4140 = fadd fast float %4138, %4107
  %4141 = fmul fast float %4113, %4101
  %4142 = call float @dx.op.tertiary.f32(i32 46, float %4116, float %4104, float %4141)  ; FMad(a,b,c)
  %4143 = call float @dx.op.tertiary.f32(i32 46, float %4140, float %4139, float %4142)  ; FMad(a,b,c)
  %4144 = fsub fast float %4143, %4107
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 2
  %4147 = fsub fast float %4144, %4146
  %4148 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4128, float %4129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4149 = extractvalue %dx.types.ResRet.f32 %4148, 0
  %4150 = extractvalue %dx.types.ResRet.f32 %4148, 1
  %4151 = extractvalue %dx.types.ResRet.f32 %4148, 2
  %4152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4128, float %4129, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4153 = extractvalue %dx.types.ResRet.f32 %4152, 0
  %4154 = extractvalue %dx.types.ResRet.f32 %4152, 1
  %4155 = extractvalue %dx.types.ResRet.f32 %4152, 2
  %4156 = fadd fast float %4153, %4149
  %4157 = fmul fast float %4156, 0x3F847AE140000000
  %4158 = fadd fast float %4154, %4150
  %4159 = fmul fast float %4158, 0x3F847AE140000000
  %4160 = fadd fast float %4155, %4151
  %4161 = fmul fast float %4160, 0x3F847AE140000000
  br label %4436

; <label>:4162                                    ; preds = %4021
  %4163 = and i32 %162, 1
  %4164 = icmp eq i32 %4163, 0
  br i1 %4164, label %4436, label %4165

; <label>:4165                                    ; preds = %4162
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 0
  %4168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4169 = extractvalue %dx.types.CBufRet.f32 %4168, 0
  %4170 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4171 = extractvalue %dx.types.CBufRet.f32 %4170, 0
  %4172 = extractvalue %dx.types.CBufRet.f32 %4166, 1
  %4173 = extractvalue %dx.types.CBufRet.f32 %4168, 1
  %4174 = extractvalue %dx.types.CBufRet.f32 %4170, 1
  %4175 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4176 = extractvalue %dx.types.CBufRet.f32 %4168, 3
  %4177 = extractvalue %dx.types.CBufRet.f32 %4170, 3
  %4178 = fadd fast float %4175, %4081
  %4179 = fadd fast float %4176, %4082
  %4180 = fadd fast float %4177, %4083
  %4181 = fmul fast float %4178, %4167
  %4182 = call float @dx.op.tertiary.f32(i32 46, float %4179, float %4169, float %4181)  ; FMad(a,b,c)
  %4183 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %4171, float %4182)  ; FMad(a,b,c)
  %4184 = fmul fast float %4178, %4172
  %4185 = call float @dx.op.tertiary.f32(i32 46, float %4179, float %4173, float %4184)  ; FMad(a,b,c)
  %4186 = call float @dx.op.tertiary.f32(i32 46, float %4180, float %4174, float %4185)  ; FMad(a,b,c)
  %4187 = fsub fast float %4183, %4175
  %4188 = fsub fast float %4186, %4176
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 0
  %4191 = extractvalue %dx.types.CBufRet.f32 %4189, 1
  %4192 = extractvalue %dx.types.CBufRet.f32 %4189, 2
  %4193 = extractvalue %dx.types.CBufRet.f32 %4189, 3
  %4194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4195 = extractvalue %dx.types.CBufRet.f32 %4194, 3
  %4196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4197 = extractvalue %dx.types.CBufRet.i32 %4196, 0
  %4198 = extractvalue %dx.types.CBufRet.i32 %4196, 1
  %4199 = udiv i32 %4198, %4197
  %4200 = fsub fast float %4187, %4190
  %4201 = fsub fast float %4188, %4191
  %4202 = call float @dx.op.binary.f32(i32 35, float %4200, float 0.000000e+00)  ; FMax(a,b)
  %4203 = call float @dx.op.binary.f32(i32 35, float %4201, float 0.000000e+00)  ; FMax(a,b)
  %4204 = call float @dx.op.binary.f32(i32 36, float %4202, float %4192)  ; FMin(a,b)
  %4205 = call float @dx.op.binary.f32(i32 36, float %4203, float %4193)  ; FMin(a,b)
  %4206 = add i32 %4197, -1
  %4207 = add i32 %4199, -1
  %4208 = fmul fast float %4204, %4195
  %4209 = fmul fast float %4205, %4195
  %4210 = fptoui float %4208 to i32
  %4211 = fptoui float %4209 to i32
  %4212 = call i32 @dx.op.binary.i32(i32 40, i32 %4210, i32 %4206)  ; UMin(a,b)
  %4213 = call i32 @dx.op.binary.i32(i32 40, i32 %4211, i32 %4207)  ; UMin(a,b)
  %4214 = mul i32 %4213, %4197
  %4215 = add i32 %4214, %4212
  %4216 = shl i32 %4215, 2
  %4217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4216, i32 undef)  ; BufferLoad(srv,index,wot)
  %4218 = extractvalue %dx.types.ResRet.i32 %4217, 0
  %4219 = icmp eq i32 %4218, -1
  br i1 %4219, label %4436, label %4220

; <label>:4220                                    ; preds = %4165
  %4221 = mul i32 %4218, 148
  %4222 = add i32 %4221, 4
  %4223 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4222, i32 undef)  ; BufferLoad(srv,index,wot)
  %4224 = extractvalue %dx.types.ResRet.f32 %4223, 0
  %4225 = add i32 %4221, 8
  %4226 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4225, i32 undef)  ; BufferLoad(srv,index,wot)
  %4227 = extractvalue %dx.types.ResRet.f32 %4226, 0
  %4228 = add i32 %4221, 36
  %4229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4228, i32 undef)  ; BufferLoad(srv,index,wot)
  %4230 = extractvalue %dx.types.ResRet.f32 %4229, 0
  %4231 = add i32 %4221, 60
  %4232 = add i32 %4221, 92
  %4233 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4232, i32 undef)  ; BufferLoad(srv,index,wot)
  %4234 = extractvalue %dx.types.ResRet.i32 %4233, 0
  %4235 = add i32 %4221, 116
  %4236 = fsub fast float %4187, %4224
  %4237 = fsub fast float %4188, %4227
  %4238 = fmul fast float %4195, %4236
  %4239 = fmul fast float %4195, %4237
  %4240 = call float @dx.op.unary.f32(i32 7, float %4238)  ; Saturate(value)
  %4241 = call float @dx.op.unary.f32(i32 7, float %4239)  ; Saturate(value)
  %4242 = fsub fast float 1.000000e+00, %4241
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 2
  %4245 = call float @dx.op.unary.f32(i32 83, float %4240)  ; DerivCoarseX(value)
  %4246 = call float @dx.op.unary.f32(i32 83, float %4242)  ; DerivCoarseX(value)
  %4247 = call float @dx.op.unary.f32(i32 84, float %4240)  ; DerivCoarseY(value)
  %4248 = call float @dx.op.unary.f32(i32 84, float %4242)  ; DerivCoarseY(value)
  %4249 = fmul fast float %4245, %4244
  %4250 = fmul fast float %4246, %4244
  %4251 = fmul fast float %4247, %4244
  %4252 = fmul fast float %4248, %4244
  %4253 = call float @dx.op.dot2.f32(i32 54, float %4251, float %4252, float %4251, float %4252)  ; Dot2(ax,ay,bx,by)
  %4254 = call float @dx.op.dot2.f32(i32 54, float %4249, float %4250, float %4249, float %4250)  ; Dot2(ax,ay,bx,by)
  %4255 = call float @dx.op.binary.f32(i32 35, float %4254, float %4253)  ; FMax(a,b)
  %4256 = call float @dx.op.unary.f32(i32 23, float %4255)  ; Log(value)
  %4257 = fmul fast float %4256, 5.000000e-01
  %4258 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4259 = extractvalue %dx.types.CBufRet.f32 %4258, 1
  %4260 = fadd fast float %4259, %4257
  %4261 = call float @dx.op.binary.f32(i32 35, float %4260, float 0.000000e+00)  ; FMax(a,b)
  %4262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4263 = extractvalue %dx.types.CBufRet.f32 %4262, 3
  %4264 = fadd fast float %4263, %4261
  %4265 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4266 = extractvalue %dx.types.CBufRet.f32 %4265, 3
  %4267 = fadd fast float %4264, %4266
  %4268 = add i32 %4234, 0
  %4269 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4268, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4270 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4269, i32 0)  ; GetDimensions(handle,mipLevel)
  %4271 = extractvalue %dx.types.Dimensions %4270, 0
  %4272 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4271)  ; FirstbitLo(value)
  %4273 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4274 = extractvalue %dx.types.CBufRet.i32 %4273, 1
  %4275 = sub nsw i32 %4274, %4272
  %4276 = sitofp i32 %4275 to float
  %4277 = fsub fast float %4267, %4276
  %4278 = call float @dx.op.binary.f32(i32 35, float %4277, float 0.000000e+00)  ; FMax(a,b)
  %4279 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4269, %dx.types.Handle %37, float %4240, float %4242, float %4230, float undef, i32 0, i32 0, i32 undef, float %4278)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4280 = extractvalue %dx.types.ResRet.f32 %4279, 0
  %4281 = fcmp ule float %4280, 0x3FE0101020000000
  %4282 = extractvalue %dx.types.CBufRet.i32 %4273, 0
  %4283 = and i32 %4282, 128
  %4284 = icmp ne i32 %4283, 0
  %4285 = and i1 %4281, %4284
  br i1 %4285, label %4436, label %4286

; <label>:4286                                    ; preds = %4220
  %4287 = add i32 %4221, 20
  %4288 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4287, i32 undef)  ; BufferLoad(srv,index,wot)
  %4289 = extractvalue %dx.types.ResRet.f32 %4288, 0
  %4290 = add i32 %4221, 24
  %4291 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4290, i32 undef)  ; BufferLoad(srv,index,wot)
  %4292 = extractvalue %dx.types.ResRet.f32 %4291, 0
  %4293 = add i32 %4221, 40
  %4294 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4293, i32 undef)  ; BufferLoad(srv,index,wot)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = add i32 %4221, 96
  %4297 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4296, i32 undef)  ; BufferLoad(srv,index,wot)
  %4298 = extractvalue %dx.types.ResRet.i32 %4297, 0
  %4299 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4300 = extractvalue %dx.types.CBufRet.f32 %4299, 2
  %4301 = fmul fast float %4300, %4240
  %4302 = fmul fast float %4300, %4242
  %4303 = extractvalue %dx.types.CBufRet.f32 %4299, 3
  %4304 = fadd fast float %4301, %4303
  %4305 = fadd fast float %4302, %4303
  %4306 = add i32 %4298, 0
  %4307 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4306, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4308 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4307, i32 0)  ; GetDimensions(handle,mipLevel)
  %4309 = extractvalue %dx.types.Dimensions %4308, 0
  %4310 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4309)  ; FirstbitLo(value)
  %4311 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4312 = extractvalue %dx.types.CBufRet.i32 %4311, 1
  %4313 = sub nsw i32 %4312, %4310
  %4314 = sitofp i32 %4313 to float
  %4315 = fsub fast float %4264, %4314
  %4316 = call float @dx.op.binary.f32(i32 35, float %4315, float 0.000000e+00)  ; FMax(a,b)
  %4317 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4307, %dx.types.Handle %37, float %4304, float %4305, float %4295, float undef, i32 0, i32 0, i32 undef, float %4316)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4318 = extractvalue %dx.types.ResRet.f32 %4317, 0
  %4319 = fmul fast float %4318, %4289
  %4320 = fadd fast float %4319, %4292
  %4321 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4322 = extractvalue %dx.types.CBufRet.f32 %4321, 0
  %4323 = extractvalue %dx.types.CBufRet.f32 %4321, 1
  %4324 = extractvalue %dx.types.CBufRet.f32 %4321, 2
  %4325 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4326 = extractvalue %dx.types.CBufRet.f32 %4325, 3
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 3
  %4329 = extractvalue %dx.types.CBufRet.f32 %4321, 3
  %4330 = fadd fast float %4326, %4187
  %4331 = fadd fast float %4328, %4188
  %4332 = fadd fast float %4320, %4329
  %4333 = fmul fast float %4330, %4322
  %4334 = call float @dx.op.tertiary.f32(i32 46, float %4331, float %4323, float %4333)  ; FMad(a,b,c)
  %4335 = call float @dx.op.tertiary.f32(i32 46, float %4332, float %4324, float %4334)  ; FMad(a,b,c)
  %4336 = fsub fast float %4335, %4329
  %4337 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4338 = extractvalue %dx.types.CBufRet.f32 %4337, 2
  %4339 = fsub fast float %4336, %4338
  %4340 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4341 = extractvalue %dx.types.CBufRet.i32 %4340, 0
  %4342 = call i32 @dx.op.binary.i32(i32 40, i32 %4218, i32 %4341)  ; UMin(a,b)
  %4343 = mul i32 %4342, 36
  %4344 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4343, i32 undef)  ; BufferLoad(srv,index,wot)
  %4345 = extractvalue %dx.types.ResRet.i32 %4344, 0
  %4346 = add i32 %4343, 4
  %4347 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4348 = extractvalue %dx.types.CBufRet.f32 %4347, 0
  %4349 = fmul fast float %4348, %4240
  %4350 = fmul fast float %4348, %4242
  %4351 = extractvalue %dx.types.CBufRet.f32 %4347, 1
  %4352 = fadd fast float %4349, %4351
  %4353 = fadd fast float %4350, %4351
  %4354 = icmp eq i32 %4345, 0
  br i1 %4354, label %4423, label %4355

; <label>:4355                                    ; preds = %4286
  br label %4356

; <label>:4356                                    ; preds = %4413, %4355
  %4357 = phi float [ %4414, %4413 ], [ 0.000000e+00, %4355 ]
  %4358 = phi float [ %4415, %4413 ], [ 0.000000e+00, %4355 ]
  %4359 = phi float [ %4416, %4413 ], [ 0.000000e+00, %4355 ]
  %4360 = phi float [ %4417, %4413 ], [ 0.000000e+00, %4355 ]
  %4361 = phi float [ %4418, %4413 ], [ 0.000000e+00, %4355 ]
  %4362 = phi float [ %4419, %4413 ], [ 0.000000e+00, %4355 ]
  %4363 = phi i32 [ %4420, %4413 ], [ 0, %4355 ]
  %4364 = shl i32 %4363, 2
  %4365 = add i32 %4231, %4364
  %4366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4368 = add i32 %4235, %4364
  %4369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4370 = extractvalue %dx.types.ResRet.i32 %4369, 0
  %4371 = add i32 %4370, 0
  %4372 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4371, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4373 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4372, i32 0)  ; GetDimensions(handle,mipLevel)
  %4374 = extractvalue %dx.types.Dimensions %4373, 0
  %4375 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4374)  ; FirstbitLo(value)
  %4376 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4377 = extractvalue %dx.types.CBufRet.i32 %4376, 1
  %4378 = sub nsw i32 %4377, %4375
  %4379 = sitofp i32 %4378 to float
  %4380 = fsub fast float %4264, %4379
  %4381 = call float @dx.op.binary.f32(i32 35, float %4380, float 0.000000e+00)  ; FMax(a,b)
  %4382 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4372, %dx.types.Handle %37, float %4352, float %4353, float %4367, float undef, i32 0, i32 0, i32 undef, float %4381)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4383 = extractvalue %dx.types.ResRet.f32 %4382, 0
  %4384 = fcmp fast ogt float %4383, 0.000000e+00
  br i1 %4384, label %4385, label %4413

; <label>:4385                                    ; preds = %4356
  %4386 = add i32 %4346, %4364
  %4387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.i32 %4387, 0
  %4389 = and i32 %4388, 32767
  %4390 = mul nuw nsw i32 %4389, 928
  %4391 = add nuw nsw i32 %4390, 48
  %4392 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4391, i32 undef)  ; BufferLoad(srv,index,wot)
  %4393 = extractvalue %dx.types.ResRet.f32 %4392, 0
  %4394 = extractvalue %dx.types.ResRet.f32 %4392, 1
  %4395 = extractvalue %dx.types.ResRet.f32 %4392, 2
  %4396 = add nuw nsw i32 %4390, 60
  %4397 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4396, i32 undef)  ; BufferLoad(srv,index,wot)
  %4398 = extractvalue %dx.types.ResRet.f32 %4397, 0
  %4399 = extractvalue %dx.types.ResRet.f32 %4397, 1
  %4400 = extractvalue %dx.types.ResRet.f32 %4397, 2
  %4401 = fmul fast float %4393, %4383
  %4402 = fmul fast float %4394, %4383
  %4403 = fmul fast float %4395, %4383
  %4404 = fadd fast float %4401, %4357
  %4405 = fadd fast float %4402, %4358
  %4406 = fadd fast float %4403, %4359
  %4407 = fmul fast float %4398, %4383
  %4408 = fmul fast float %4399, %4383
  %4409 = fmul fast float %4400, %4383
  %4410 = fadd fast float %4407, %4360
  %4411 = fadd fast float %4408, %4361
  %4412 = fadd fast float %4409, %4362
  br label %4413

; <label>:4413                                    ; preds = %4385, %4356
  %4414 = phi float [ %4404, %4385 ], [ %4357, %4356 ]
  %4415 = phi float [ %4405, %4385 ], [ %4358, %4356 ]
  %4416 = phi float [ %4406, %4385 ], [ %4359, %4356 ]
  %4417 = phi float [ %4410, %4385 ], [ %4360, %4356 ]
  %4418 = phi float [ %4411, %4385 ], [ %4361, %4356 ]
  %4419 = phi float [ %4412, %4385 ], [ %4362, %4356 ]
  %4420 = add nuw i32 %4363, 1
  %4421 = icmp eq i32 %4420, %4345
  br i1 %4421, label %4422, label %4356

; <label>:4422                                    ; preds = %4413
  br label %4423

; <label>:4423                                    ; preds = %4422, %4286
  %4424 = phi float [ 0.000000e+00, %4286 ], [ %4414, %4422 ]
  %4425 = phi float [ 0.000000e+00, %4286 ], [ %4415, %4422 ]
  %4426 = phi float [ 0.000000e+00, %4286 ], [ %4416, %4422 ]
  %4427 = phi float [ 0.000000e+00, %4286 ], [ %4417, %4422 ]
  %4428 = phi float [ 0.000000e+00, %4286 ], [ %4418, %4422 ]
  %4429 = phi float [ 0.000000e+00, %4286 ], [ %4419, %4422 ]
  %4430 = fadd fast float %4427, %4424
  %4431 = fmul fast float %4430, 0x3F847AE140000000
  %4432 = fadd fast float %4428, %4425
  %4433 = fmul fast float %4432, 0x3F847AE140000000
  %4434 = fadd fast float %4429, %4426
  %4435 = fmul fast float %4434, 0x3F847AE140000000
  br label %4436

; <label>:4436                                    ; preds = %4423, %4220, %4165, %4162, %4133, %4095
  %4437 = phi float [ %4147, %4133 ], [ -1.310720e+05, %4095 ], [ %4339, %4423 ], [ -1.310720e+05, %4165 ], [ -1.310720e+05, %4220 ], [ -1.310720e+05, %4162 ]
  %4438 = phi float [ %4157, %4133 ], [ 0.000000e+00, %4095 ], [ %4431, %4423 ], [ 0.000000e+00, %4165 ], [ 0.000000e+00, %4220 ], [ 0.000000e+00, %4162 ]
  %4439 = phi float [ %4159, %4133 ], [ 0.000000e+00, %4095 ], [ %4433, %4423 ], [ 0.000000e+00, %4165 ], [ 0.000000e+00, %4220 ], [ 0.000000e+00, %4162 ]
  %4440 = phi float [ %4161, %4133 ], [ 0.000000e+00, %4095 ], [ %4435, %4423 ], [ 0.000000e+00, %4165 ], [ 0.000000e+00, %4220 ], [ 0.000000e+00, %4162 ]
  %4441 = phi i1 [ true, %4133 ], [ false, %4095 ], [ true, %4423 ], [ false, %4165 ], [ false, %4220 ], [ false, %4162 ]
  %4442 = and i32 %162, 3
  %4443 = icmp eq i32 %4442, 1
  %4444 = select i1 %4443, float 1.000000e+00, float 0.000000e+00
  %4445 = fsub fast float %4437, %146
  %4446 = call float @dx.op.unary.f32(i32 7, float %4445)  ; Saturate(value)
  %4447 = select i1 %4441, float %4446, float 1.000000e+00
  %4448 = fmul fast float %4447, %4444
  %4449 = icmp eq i32 %4442, 3
  %4450 = select i1 %4449, float 1.000000e+00, float %4448
  %4451 = call float @dx.op.binary.f32(i32 35, float %4037, float %4450)  ; FMax(a,b)
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = fcmp fast une float %4452, 0.000000e+00
  %4454 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %144, float %145, float %146)  ; Dot3(ax,ay,az,bx,by,bz)
  %4455 = call float @dx.op.unary.f32(i32 25, float %4454)  ; Rsqrt(value)
  br i1 %4453, label %4463, label %4456

; <label>:4456                                    ; preds = %4436
  %4457 = fmul fast float %4455, %144
  %4458 = fmul fast float %4455, %145
  %4459 = fmul fast float %4455, %146
  %4460 = fsub fast float -0.000000e+00, %4457
  %4461 = fsub fast float -0.000000e+00, %4458
  %4462 = fsub fast float -0.000000e+00, %4459
  br label %4631

; <label>:4463                                    ; preds = %4436
  %4464 = fmul fast float %144, %4455
  %4465 = fsub fast float -0.000000e+00, %4464
  %4466 = fmul fast float %145, %4455
  %4467 = fsub fast float -0.000000e+00, %4466
  %4468 = fmul fast float %146, %4455
  %4469 = fsub fast float -0.000000e+00, %4468
  %4470 = call float @dx.op.dot3.f32(i32 55, float %4465, float %4467, float %4469, float %94, float %96, float %98)  ; Dot3(ax,ay,az,bx,by,bz)
  %4471 = fmul fast float %4452, 2.500000e+00
  %4472 = call float @dx.op.unary.f32(i32 7, float %4471)  ; Saturate(value)
  %4473 = fmul fast float %4452, 0x4013FFFFE0000000
  %4474 = fadd fast float %4473, 0xBFFFFFFFE0000000
  %4475 = call float @dx.op.unary.f32(i32 7, float %4474)  ; Saturate(value)
  %4476 = fmul fast float %4452, 0x4004000020000000
  %4477 = fadd fast float %4476, 0xBFF8000040000000
  %4478 = call float @dx.op.unary.f32(i32 7, float %4477)  ; Saturate(value)
  %4479 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4480 = fmul fast float %4041, 1.000000e+01
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = fmul fast float %4481, 2.000000e+00
  %4483 = fsub fast float 3.000000e+00, %4482
  %4484 = fmul fast float %4481, %4481
  %4485 = fmul fast float %4484, %4483
  %4486 = fsub fast float 1.000000e+00, %4485
  %4487 = fsub fast float 0x3FE3333340000000, %4062
  %4488 = fmul fast float %4487, 0x400AAAAAA0000000
  %4489 = call float @dx.op.unary.f32(i32 7, float %4488)  ; Saturate(value)
  %4490 = fmul fast float %4486, %4489
  %4491 = fmul fast float %4074, 0x3FEA2B8620000000
  %4492 = fmul fast float %4075, 0x3FEA2B8620000000
  %4493 = fmul fast float %4076, 0x3FEA2B8620000000
  %4494 = fadd fast float %4491, 0x3FC81DFBA0000000
  %4495 = fmul fast float %4494, %4074
  %4496 = fadd fast float %4495, 0x3F910E6020000000
  %4497 = fadd fast float %4492, 0x3FC81DFBA0000000
  %4498 = fmul fast float %4497, %4075
  %4499 = fadd fast float %4498, 0x3F910E6020000000
  %4500 = fadd fast float %4493, 0x3FC81DFBA0000000
  %4501 = fmul fast float %4500, %4076
  %4502 = fadd fast float %4501, 0x3F910E6020000000
  %4503 = call float @dx.op.unary.f32(i32 7, float %4496)  ; Saturate(value)
  %4504 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4505 = call float @dx.op.unary.f32(i32 7, float %4502)  ; Saturate(value)
  %4506 = fsub fast float %4503, %4074
  %4507 = fsub fast float %4504, %4075
  %4508 = fsub fast float %4505, %4076
  %4509 = fmul fast float %4506, %4479
  %4510 = fmul fast float %4509, %4490
  %4511 = fmul fast float %4507, %4479
  %4512 = fmul fast float %4511, %4490
  %4513 = fmul fast float %4508, %4479
  %4514 = fmul fast float %4513, %4490
  %4515 = fadd fast float %4510, %4074
  %4516 = fadd fast float %4512, %4075
  %4517 = fadd fast float %4514, %4076
  %4518 = fmul fast float %4034, %4034
  %4519 = fmul fast float %4518, %4518
  %4520 = fadd fast float %4475, 1.000000e+00
  %4521 = fsub fast float %4520, %4490
  %4522 = call float @dx.op.unary.f32(i32 7, float %4521)  ; Saturate(value)
  %4523 = call float @dx.op.dot3.f32(i32 55, float %94, float %96, float %98, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4524 = call float @dx.op.unary.f32(i32 7, float %4523)  ; Saturate(value)
  %4525 = fsub fast float 1.000000e+00, %4519
  %4526 = call float @dx.op.binary.f32(i32 36, float %4522, float %4525)  ; FMin(a,b)
  %4527 = call float @dx.op.unary.f32(i32 7, float %4478)  ; Saturate(value)
  %4528 = call float @dx.op.binary.f32(i32 35, float %4526, float %4527)  ; FMax(a,b)
  %4529 = fadd fast float %4524, 0xBFE4CCCCC0000000
  %4530 = fmul fast float %4529, 0x4006DB6DA0000000
  %4531 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4532 = fmul fast float %4531, 2.000000e+00
  %4533 = fsub fast float 3.000000e+00, %4532
  %4534 = bitcast float %4059 to i32
  %4535 = ashr i32 %4534, 1
  %4536 = add nsw i32 %4535, 532487669
  %4537 = bitcast i32 %4536 to float
  %4538 = fsub fast float 1.000000e+00, %4537
  %4539 = bitcast float %4538 to i32
  %4540 = sub nsw i32 2129859010, %4539
  %4541 = bitcast i32 %4540 to float
  %4542 = fmul fast float %4541, 2.000000e+00
  %4543 = bitcast float %4060 to i32
  %4544 = ashr i32 %4543, 1
  %4545 = add nsw i32 %4544, 532487669
  %4546 = bitcast i32 %4545 to float
  %4547 = fsub fast float 1.000000e+00, %4546
  %4548 = bitcast float %4547 to i32
  %4549 = sub nsw i32 2129859010, %4548
  %4550 = bitcast i32 %4549 to float
  %4551 = fmul fast float %4550, 2.000000e+00
  %4552 = bitcast float %4061 to i32
  %4553 = ashr i32 %4552, 1
  %4554 = add nsw i32 %4553, 532487669
  %4555 = bitcast i32 %4554 to float
  %4556 = fsub fast float 1.000000e+00, %4555
  %4557 = bitcast float %4556 to i32
  %4558 = sub nsw i32 2129859010, %4557
  %4559 = bitcast i32 %4558 to float
  %4560 = fmul fast float %4559, 2.000000e+00
  %4561 = fsub fast float 0x4002A9FBE0000000, %4542
  %4562 = fadd fast float %4542, 0x3FD54FDF00000000
  %4563 = bitcast float %4562 to i32
  %4564 = sub nsw i32 2129859010, %4563
  %4565 = bitcast i32 %4564 to float
  %4566 = fmul fast float %4565, %4561
  %4567 = fmul fast float %4566, %4566
  %4568 = fsub fast float 0x4002A9FBE0000000, %4551
  %4569 = fadd fast float %4551, 0x3FD54FDF00000000
  %4570 = bitcast float %4569 to i32
  %4571 = sub nsw i32 2129859010, %4570
  %4572 = bitcast i32 %4571 to float
  %4573 = fmul fast float %4572, %4568
  %4574 = fmul fast float %4573, %4573
  %4575 = fsub fast float 0x4002A9FBE0000000, %4560
  %4576 = fadd fast float %4560, 0x3FD54FDF00000000
  %4577 = bitcast float %4576 to i32
  %4578 = sub nsw i32 2129859010, %4577
  %4579 = bitcast i32 %4578 to float
  %4580 = fmul fast float %4579, %4575
  %4581 = fmul fast float %4580, %4580
  %4582 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4567)  ; FMax(a,b)
  %4583 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4574)  ; FMax(a,b)
  %4584 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4581)  ; FMax(a,b)
  %4585 = fsub fast float 1.000000e+00, %4470
  %4586 = fadd fast float %4585, %4486
  %4587 = call float @dx.op.unary.f32(i32 7, float %4586)  ; Saturate(value)
  %4588 = fsub fast float 1.000000e+00, %4450
  %4589 = fmul fast float %4528, %4588
  %4590 = fmul fast float %4531, %4531
  %4591 = fmul fast float %4590, %4589
  %4592 = fmul fast float %4591, %4533
  %4593 = fmul fast float %4588, 0xBFE99999A0000000
  %4594 = fmul fast float %4593, %4479
  %4595 = fmul fast float %4594, %4490
  %4596 = fadd fast float %4595, 1.000000e+00
  %4597 = fadd fast float %4062, -1.000000e+00
  %4598 = fmul fast float %4596, %4597
  %4599 = fadd fast float %4598, 1.000000e+00
  %4600 = fsub fast float %4582, %4059
  %4601 = fsub fast float %4583, %4060
  %4602 = fsub fast float %4584, %4061
  %4603 = fmul fast float %4592, %4600
  %4604 = fmul fast float %4592, %4601
  %4605 = fmul fast float %4592, %4602
  %4606 = fadd fast float %4603, %4059
  %4607 = fadd fast float %4604, %4060
  %4608 = fadd fast float %4605, %4061
  %4609 = fsub fast float %94, %4022
  %4610 = fsub fast float %96, %4023
  %4611 = fsub fast float %98, %4024
  %4612 = fmul fast float %4592, %4609
  %4613 = fmul fast float %4592, %4610
  %4614 = fmul fast float %4592, %4611
  %4615 = fadd fast float %4612, %4022
  %4616 = fadd fast float %4613, %4023
  %4617 = fadd fast float %4614, %4024
  %4618 = fmul fast float %4592, %4587
  %4619 = call float @dx.op.unary.f32(i32 7, float %4599)  ; Saturate(value)
  %4620 = fsub fast float 1.000000e+00, %4619
  %4621 = fmul fast float %4618, %4620
  %4622 = fadd fast float %4621, %4619
  %4623 = fsub fast float 1.000000e+00, %4034
  %4624 = fmul fast float %4592, %4623
  %4625 = fadd fast float %4624, %4034
  %4626 = call float @dx.op.dot3.f32(i32 55, float %4615, float %4616, float %4617, float %4615, float %4616, float %4617)  ; Dot3(ax,ay,az,bx,by,bz)
  %4627 = call float @dx.op.unary.f32(i32 25, float %4626)  ; Rsqrt(value)
  %4628 = fmul fast float %4615, %4627
  %4629 = fmul fast float %4616, %4627
  %4630 = fmul fast float %4617, %4627
  br label %4631

; <label>:4631                                    ; preds = %4463, %4456
  %4632 = phi float [ %4462, %4456 ], [ %4469, %4463 ]
  %4633 = phi float [ %4461, %4456 ], [ %4467, %4463 ]
  %4634 = phi float [ %4460, %4456 ], [ %4465, %4463 ]
  %4635 = phi float [ %4459, %4456 ], [ %4468, %4463 ]
  %4636 = phi float [ %4458, %4456 ], [ %4466, %4463 ]
  %4637 = phi float [ %4457, %4456 ], [ %4464, %4463 ]
  %4638 = phi float [ %4074, %4456 ], [ %4515, %4463 ]
  %4639 = phi float [ %4075, %4456 ], [ %4516, %4463 ]
  %4640 = phi float [ %4076, %4456 ], [ %4517, %4463 ]
  %4641 = phi float [ %4059, %4456 ], [ %4606, %4463 ]
  %4642 = phi float [ %4060, %4456 ], [ %4607, %4463 ]
  %4643 = phi float [ %4061, %4456 ], [ %4608, %4463 ]
  %4644 = phi float [ %4022, %4456 ], [ %4628, %4463 ]
  %4645 = phi float [ %4023, %4456 ], [ %4629, %4463 ]
  %4646 = phi float [ %4024, %4456 ], [ %4630, %4463 ]
  %4647 = phi float [ %4062, %4456 ], [ %4622, %4463 ]
  %4648 = phi float [ %4034, %4456 ], [ %4625, %4463 ]
  %4649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4650 = extractvalue %dx.types.CBufRet.f32 %4649, 2
  %4651 = extractvalue %dx.types.CBufRet.f32 %4649, 3
  %4652 = fmul fast float %4650, %85
  %4653 = fmul fast float %4651, %86
  %4654 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4655 = extractvalue %dx.types.CBufRet.f32 %4654, 0
  %4656 = extractvalue %dx.types.CBufRet.f32 %4654, 1
  %4657 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4652, float %4653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4658 = extractvalue %dx.types.ResRet.f32 %4657, 0
  %4659 = fmul fast float %4658, %4656
  %4660 = call float @dx.op.unary.f32(i32 7, float %4659)  ; Saturate(value)
  %4661 = fadd fast float %4660, -1.000000e+00
  %4662 = fmul fast float %4661, %4655
  %4663 = fadd fast float %4662, 1.000000e+00
  %4664 = select i1 %186, float 0.000000e+00, float %4643
  %4665 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %4634, float %4633, float %4632)  ; Dot3(ax,ay,az,bx,by,bz)
  %4666 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4667 = call float @dx.op.dot3.f32(i32 55, float %4637, float %4636, float %4635, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4668 = fmul fast float %4667, 2.000000e+00
  %4669 = fmul fast float %4668, %4644
  %4670 = fmul fast float %4668, %4645
  %4671 = fmul fast float %4668, %4646
  %4672 = fsub fast float %4637, %4669
  %4673 = fsub fast float %4636, %4670
  %4674 = fsub fast float %4635, %4671
  %4675 = call float @dx.op.binary.f32(i32 36, float %4648, float %4663)  ; FMin(a,b)
  %4676 = fsub fast float 1.000000e+00, %4675
  %4677 = bitcast float %4676 to i32
  %4678 = ashr i32 %4677, 1
  %4679 = add nsw i32 %4678, 532487669
  %4680 = bitcast i32 %4679 to float
  %4681 = fsub fast float 1.000000e+00, %4647
  %4682 = call float @dx.op.binary.f32(i32 35, float %4681, float 0x3F847AE140000000)  ; FMax(a,b)
  %4683 = fmul fast float %4682, %4682
  %4684 = fmul fast float %4683, %4683
  %4685 = call float @dx.op.unary.f32(i32 7, float %4666)  ; Saturate(value)
  %4686 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4680, float %4684, float %4685, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4687 = extractvalue %dx.types.ResRet.f32 %4686, 0
  %4688 = fsub fast float 1.000000e+00, %4648
  %4689 = bitcast float %4688 to i32
  %4690 = sub nsw i32 2129859010, %4689
  %4691 = bitcast i32 %4690 to float
  %4692 = call float @dx.op.dot3.f32(i32 55, float %62, float %58, float %54, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4693 = fmul fast float %4692, 0x3FD20DD760000000
  %4694 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %62)  ; FMax(a,b)
  %4695 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4696 = fcmp fast oeq float %4695, 0.000000e+00
  %4697 = fcmp fast oeq float %4694, 0.000000e+00
  %4698 = or i1 %4697, %4696
  br i1 %4698, label %4728, label %4699

; <label>:4699                                    ; preds = %4631
  %4700 = fsub fast float -0.000000e+00, %65
  %4701 = fsub fast float -0.000000e+00, %63
  %4702 = call float @dx.op.unary.f32(i32 24, float %4695)  ; Sqrt(value)
  %4703 = fdiv fast float %4702, %4694
  %4704 = fcmp fast ogt float %4703, 0x3FFB6F8900000000
  %4705 = select i1 %4704, float 0x3FFB6F8900000000, float %4703
  %4706 = fmul fast float %4705, 0x3FE8A23460000000
  %4707 = call float @dx.op.unary.f32(i32 7, float %4706)  ; Saturate(value)
  %4708 = call float @dx.op.binary.f32(i32 35, float %4705, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4709 = fmul fast float %4707, %4694
  %4710 = fmul fast float %4708, 0x3FF279A740000000
  %4711 = fadd fast float %4710, -1.000000e+00
  %4712 = call float @dx.op.dot3.f32(i32 55, float %4700, float %4701, float %64, float %4700, float %4701, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %4713 = call float @dx.op.unary.f32(i32 25, float %4712)  ; Rsqrt(value)
  %4714 = fmul fast float %4713, %4700
  %4715 = fmul fast float %4713, %4701
  %4716 = fmul fast float %4713, %64
  %4717 = fmul fast float %4711, %4711
  %4718 = fsub fast float 1.000000e+00, %4717
  %4719 = fmul fast float %4708, 0x40005F8BE0000000
  %4720 = fsub fast float 0x400C5BF8A0000000, %4719
  %4721 = fdiv fast float %4709, %4720
  %4722 = fmul fast float %4721, 0x3FEE31C3C0000000
  %4723 = fmul fast float %4722, %4718
  %4724 = fmul fast float %4708, 0x3FDACB7480000000
  %4725 = fadd fast float %4724, 0xBFD7347680000000
  %4726 = fmul fast float %4725, %4721
  %4727 = fmul fast float %4726, %4718
  br label %4728

; <label>:4728                                    ; preds = %4699, %4631
  %4729 = phi float [ %4714, %4699 ], [ 0.000000e+00, %4631 ]
  %4730 = phi float [ %4715, %4699 ], [ 0.000000e+00, %4631 ]
  %4731 = phi float [ %4716, %4699 ], [ 0.000000e+00, %4631 ]
  %4732 = phi float [ %4723, %4699 ], [ 0.000000e+00, %4631 ]
  %4733 = phi float [ %4727, %4699 ], [ 0.000000e+00, %4631 ]
  %4734 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4735 = fmul fast float %4734, %4734
  %4736 = fmul fast float %4735, 0x3FEE471020000000
  %4737 = fadd fast float %4736, 0xBFD42F6020000000
  %4738 = fmul fast float %4694, 0x3FD20DD760000000
  %4739 = fmul fast float %4737, %4733
  %4740 = fmul fast float %4732, 0x3FDF454380000000
  %4741 = fmul fast float %4740, %4734
  %4742 = fadd fast float %4741, %4738
  %4743 = fadd fast float %4742, %4739
  %4744 = call float @dx.op.dot3.f32(i32 55, float %4729, float %4730, float %4731, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %4745 = fmul fast float %4744, 0x3FDF454380000000
  %4746 = fmul fast float %4744, %4744
  %4747 = fmul fast float %4746, 0x3FEE471020000000
  %4748 = fadd fast float %4747, 0xBFD42F6020000000
  %4749 = call float @dx.op.dot3.f32(i32 55, float %4694, float %4732, float %4733, float 0x3FD20DD760000000, float %4745, float %4748)  ; Dot3(ax,ay,az,bx,by,bz)
  %4750 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %58)  ; FMax(a,b)
  %4751 = call float @dx.op.dot3.f32(i32 55, float %59, float %60, float %61, float %59, float %60, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4752 = fcmp fast oeq float %4751, 0.000000e+00
  %4753 = fcmp fast oeq float %4750, 0.000000e+00
  %4754 = or i1 %4753, %4752
  br i1 %4754, label %4784, label %4755

; <label>:4755                                    ; preds = %4728
  %4756 = fsub fast float -0.000000e+00, %61
  %4757 = fsub fast float -0.000000e+00, %59
  %4758 = call float @dx.op.unary.f32(i32 24, float %4751)  ; Sqrt(value)
  %4759 = fdiv fast float %4758, %4750
  %4760 = fcmp fast ogt float %4759, 0x3FFB6F8900000000
  %4761 = select i1 %4760, float 0x3FFB6F8900000000, float %4759
  %4762 = fmul fast float %4761, 0x3FE8A23460000000
  %4763 = call float @dx.op.unary.f32(i32 7, float %4762)  ; Saturate(value)
  %4764 = call float @dx.op.binary.f32(i32 35, float %4761, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4765 = fmul fast float %4763, %4750
  %4766 = fmul fast float %4764, 0x3FF279A740000000
  %4767 = fadd fast float %4766, -1.000000e+00
  %4768 = call float @dx.op.dot3.f32(i32 55, float %4756, float %4757, float %60, float %4756, float %4757, float %60)  ; Dot3(ax,ay,az,bx,by,bz)
  %4769 = call float @dx.op.unary.f32(i32 25, float %4768)  ; Rsqrt(value)
  %4770 = fmul fast float %4769, %4756
  %4771 = fmul fast float %4769, %4757
  %4772 = fmul fast float %4769, %60
  %4773 = fmul fast float %4767, %4767
  %4774 = fsub fast float 1.000000e+00, %4773
  %4775 = fmul fast float %4764, 0x40005F8BE0000000
  %4776 = fsub fast float 0x400C5BF8A0000000, %4775
  %4777 = fdiv fast float %4765, %4776
  %4778 = fmul fast float %4777, 0x3FEE31C3C0000000
  %4779 = fmul fast float %4778, %4774
  %4780 = fmul fast float %4764, 0x3FDACB7480000000
  %4781 = fadd fast float %4780, 0xBFD7347680000000
  %4782 = fmul fast float %4781, %4777
  %4783 = fmul fast float %4782, %4774
  br label %4784

; <label>:4784                                    ; preds = %4755, %4728
  %4785 = phi float [ %4770, %4755 ], [ 0.000000e+00, %4728 ]
  %4786 = phi float [ %4771, %4755 ], [ 0.000000e+00, %4728 ]
  %4787 = phi float [ %4772, %4755 ], [ 0.000000e+00, %4728 ]
  %4788 = phi float [ %4779, %4755 ], [ 0.000000e+00, %4728 ]
  %4789 = phi float [ %4783, %4755 ], [ 0.000000e+00, %4728 ]
  %4790 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4791 = fmul fast float %4790, %4790
  %4792 = fmul fast float %4791, 0x3FEE471020000000
  %4793 = fadd fast float %4792, 0xBFD42F6020000000
  %4794 = fmul fast float %4750, 0x3FD20DD760000000
  %4795 = fmul fast float %4793, %4789
  %4796 = fmul fast float %4788, 0x3FDF454380000000
  %4797 = fmul fast float %4796, %4790
  %4798 = fadd fast float %4797, %4794
  %4799 = fadd fast float %4798, %4795
  %4800 = call float @dx.op.dot3.f32(i32 55, float %4785, float %4786, float %4787, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %4801 = fmul fast float %4800, 0x3FDF454380000000
  %4802 = fmul fast float %4800, %4800
  %4803 = fmul fast float %4802, 0x3FEE471020000000
  %4804 = fadd fast float %4803, 0xBFD42F6020000000
  %4805 = call float @dx.op.dot3.f32(i32 55, float %4750, float %4788, float %4789, float 0x3FD20DD760000000, float %4801, float %4804)  ; Dot3(ax,ay,az,bx,by,bz)
  %4806 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %54)  ; FMax(a,b)
  %4807 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float %55, float %56, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = fcmp fast oeq float %4807, 0.000000e+00
  %4809 = fcmp fast oeq float %4806, 0.000000e+00
  %4810 = or i1 %4809, %4808
  br i1 %4810, label %4840, label %4811

; <label>:4811                                    ; preds = %4784
  %4812 = fsub fast float -0.000000e+00, %57
  %4813 = fsub fast float -0.000000e+00, %55
  %4814 = call float @dx.op.unary.f32(i32 24, float %4807)  ; Sqrt(value)
  %4815 = fdiv fast float %4814, %4806
  %4816 = fcmp fast ogt float %4815, 0x3FFB6F8900000000
  %4817 = select i1 %4816, float 0x3FFB6F8900000000, float %4815
  %4818 = fmul fast float %4817, 0x3FE8A23460000000
  %4819 = call float @dx.op.unary.f32(i32 7, float %4818)  ; Saturate(value)
  %4820 = call float @dx.op.binary.f32(i32 35, float %4817, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4821 = fmul fast float %4819, %4806
  %4822 = fmul fast float %4820, 0x3FF279A740000000
  %4823 = fadd fast float %4822, -1.000000e+00
  %4824 = call float @dx.op.dot3.f32(i32 55, float %4812, float %4813, float %56, float %4812, float %4813, float %56)  ; Dot3(ax,ay,az,bx,by,bz)
  %4825 = call float @dx.op.unary.f32(i32 25, float %4824)  ; Rsqrt(value)
  %4826 = fmul fast float %4825, %4812
  %4827 = fmul fast float %4825, %4813
  %4828 = fmul fast float %4825, %56
  %4829 = fmul fast float %4823, %4823
  %4830 = fsub fast float 1.000000e+00, %4829
  %4831 = fmul fast float %4820, 0x40005F8BE0000000
  %4832 = fsub fast float 0x400C5BF8A0000000, %4831
  %4833 = fdiv fast float %4821, %4832
  %4834 = fmul fast float %4833, 0x3FEE31C3C0000000
  %4835 = fmul fast float %4834, %4830
  %4836 = fmul fast float %4820, 0x3FDACB7480000000
  %4837 = fadd fast float %4836, 0xBFD7347680000000
  %4838 = fmul fast float %4837, %4833
  %4839 = fmul fast float %4838, %4830
  br label %4840

; <label>:4840                                    ; preds = %4811, %4784
  %4841 = phi float [ %4826, %4811 ], [ 0.000000e+00, %4784 ]
  %4842 = phi float [ %4827, %4811 ], [ 0.000000e+00, %4784 ]
  %4843 = phi float [ %4828, %4811 ], [ 0.000000e+00, %4784 ]
  %4844 = phi float [ %4835, %4811 ], [ 0.000000e+00, %4784 ]
  %4845 = phi float [ %4839, %4811 ], [ 0.000000e+00, %4784 ]
  %4846 = call float @dx.op.dot3.f32(i32 55, float %4841, float %4842, float %4843, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4847 = fmul fast float %4846, %4846
  %4848 = fmul fast float %4847, 0x3FEE471020000000
  %4849 = fadd fast float %4848, 0xBFD42F6020000000
  %4850 = fmul fast float %4806, 0x3FD20DD760000000
  %4851 = fmul fast float %4849, %4845
  %4852 = fmul fast float %4844, 0x3FDF454380000000
  %4853 = fmul fast float %4852, %4846
  %4854 = fadd fast float %4853, %4850
  %4855 = fadd fast float %4854, %4851
  %4856 = call float @dx.op.dot3.f32(i32 55, float %4841, float %4842, float %4843, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %4857 = fmul fast float %4856, 0x3FDF454380000000
  %4858 = fmul fast float %4856, %4856
  %4859 = fmul fast float %4858, 0x3FEE471020000000
  %4860 = fadd fast float %4859, 0xBFD42F6020000000
  %4861 = call float @dx.op.dot3.f32(i32 55, float %4806, float %4844, float %4845, float 0x3FD20DD760000000, float %4857, float %4860)  ; Dot3(ax,ay,az,bx,by,bz)
  %4862 = call float @dx.op.binary.f32(i32 35, float %4743, float 0.000000e+00)  ; FMax(a,b)
  %4863 = call float @dx.op.binary.f32(i32 35, float %4799, float 0.000000e+00)  ; FMax(a,b)
  %4864 = call float @dx.op.binary.f32(i32 35, float %4855, float 0.000000e+00)  ; FMax(a,b)
  %4865 = call float @dx.op.binary.f32(i32 35, float %4749, float 0.000000e+00)  ; FMax(a,b)
  %4866 = call float @dx.op.binary.f32(i32 35, float %4805, float 0.000000e+00)  ; FMax(a,b)
  %4867 = call float @dx.op.binary.f32(i32 35, float %4861, float 0.000000e+00)  ; FMax(a,b)
  %4868 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4869 = extractvalue %dx.types.CBufRet.f32 %4868, 0
  %4870 = call float @dx.op.binary.f32(i32 36, float %4638, float %4869)  ; FMin(a,b)
  %4871 = fmul fast float %4870, %4676
  %4872 = fsub fast float 1.000000e+00, %4871
  %4873 = bitcast float %4872 to i32
  %4874 = sub nsw i32 2129859010, %4873
  %4875 = bitcast i32 %4874 to float
  %4876 = call float @dx.op.binary.f32(i32 36, float %4639, float %4869)  ; FMin(a,b)
  %4877 = fmul fast float %4876, %4676
  %4878 = fsub fast float 1.000000e+00, %4877
  %4879 = bitcast float %4878 to i32
  %4880 = sub nsw i32 2129859010, %4879
  %4881 = bitcast i32 %4880 to float
  %4882 = call float @dx.op.binary.f32(i32 36, float %4640, float %4869)  ; FMin(a,b)
  %4883 = fmul fast float %4882, %4676
  %4884 = fsub fast float 1.000000e+00, %4883
  %4885 = bitcast float %4884 to i32
  %4886 = sub nsw i32 2129859010, %4885
  %4887 = bitcast i32 %4886 to float
  %4888 = fmul fast float %4862, %4675
  %4889 = fmul fast float %4888, %4875
  %4890 = fmul fast float %4863, %4675
  %4891 = fmul fast float %4890, %4881
  %4892 = fmul fast float %4864, %4675
  %4893 = fmul fast float %4892, %4887
  %4894 = call float @dx.op.binary.f32(i32 36, float %4641, float %4869)  ; FMin(a,b)
  %4895 = fmul fast float %4894, %4676
  %4896 = fsub fast float 1.000000e+00, %4895
  %4897 = bitcast float %4896 to i32
  %4898 = sub nsw i32 2129859010, %4897
  %4899 = bitcast i32 %4898 to float
  %4900 = call float @dx.op.binary.f32(i32 36, float %4642, float %4869)  ; FMin(a,b)
  %4901 = fmul fast float %4900, %4676
  %4902 = fsub fast float 1.000000e+00, %4901
  %4903 = bitcast float %4902 to i32
  %4904 = sub nsw i32 2129859010, %4903
  %4905 = bitcast i32 %4904 to float
  %4906 = call float @dx.op.binary.f32(i32 36, float %4664, float %4869)  ; FMin(a,b)
  %4907 = fmul fast float %4906, %4676
  %4908 = fsub fast float 1.000000e+00, %4907
  %4909 = bitcast float %4908 to i32
  %4910 = sub nsw i32 2129859010, %4909
  %4911 = bitcast i32 %4910 to float
  %4912 = fmul fast float %4865, %4675
  %4913 = fmul fast float %4912, %4899
  %4914 = fmul fast float %4866, %4675
  %4915 = fmul fast float %4914, %4905
  %4916 = fmul fast float %4867, %4675
  %4917 = fmul fast float %4916, %4911
  %4918 = call float @dx.op.dot3.f32(i32 55, float %4889, float %4891, float %4893, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4919 = select i1 %186, float 0.000000e+00, float %4889
  %4920 = select i1 %186, float %4918, float %4891
  %4921 = select i1 %186, float 0.000000e+00, float %4893
  %4922 = call float @dx.op.dot3.f32(i32 55, float %4913, float %4915, float %4917, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4923 = select i1 %186, float 0.000000e+00, float %4913
  %4924 = select i1 %186, float %4922, float %4915
  %4925 = select i1 %186, float 0.000000e+00, float %4917
  %4926 = fmul fast float %4666, 9.843750e-01
  %4927 = fmul fast float %4647, 9.843750e-01
  %4928 = fadd fast float %4926, 7.812500e-03
  %4929 = fadd fast float %4927, 7.812500e-03
  %4930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4928, float %4929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4931 = extractvalue %dx.types.ResRet.f32 %4930, 2
  %4932 = extractvalue %dx.types.ResRet.f32 %4930, 3
  %4933 = fmul fast float %4931, %4641
  %4934 = fmul fast float %4931, %4642
  %4935 = fmul fast float %4931, %4664
  %4936 = fadd fast float %4933, %4932
  %4937 = fadd fast float %4934, %4932
  %4938 = fadd fast float %4935, %4932
  %4939 = fcmp fast ogt float %4035, 0.000000e+00
  br i1 %4939, label %4940, label %4966

; <label>:4940                                    ; preds = %4840
  %4941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4035, float %4666, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4942 = extractvalue %dx.types.ResRet.f32 %4941, 0
  %4943 = extractvalue %dx.types.ResRet.f32 %4941, 1
  %4944 = extractvalue %dx.types.ResRet.f32 %4941, 2
  %4945 = fadd fast float %4942, -5.000000e-01
  %4946 = fadd fast float %4943, -5.000000e-01
  %4947 = fadd fast float %4944, -5.000000e-01
  %4948 = fsub fast float 1.000000e+00, %4641
  %4949 = fsub fast float 1.000000e+00, %4642
  %4950 = fsub fast float 1.000000e+00, %4664
  %4951 = fmul fast float %4641, 4.000000e+00
  %4952 = fmul fast float %4951, %4948
  %4953 = fmul fast float %4952, %4945
  %4954 = fmul fast float %4642, 4.000000e+00
  %4955 = fmul fast float %4954, %4949
  %4956 = fmul fast float %4955, %4946
  %4957 = fmul fast float %4664, 4.000000e+00
  %4958 = fmul fast float %4957, %4950
  %4959 = fmul fast float %4958, %4947
  %4960 = fadd fast float %4953, %4936
  %4961 = fadd fast float %4956, %4937
  %4962 = fadd fast float %4959, %4938
  %4963 = call float @dx.op.unary.f32(i32 7, float %4960)  ; Saturate(value)
  %4964 = call float @dx.op.unary.f32(i32 7, float %4961)  ; Saturate(value)
  %4965 = call float @dx.op.unary.f32(i32 7, float %4962)  ; Saturate(value)
  br label %4966

; <label>:4966                                    ; preds = %4940, %4840
  %4967 = phi float [ %4963, %4940 ], [ %4936, %4840 ]
  %4968 = phi float [ %4964, %4940 ], [ %4937, %4840 ]
  %4969 = phi float [ %4965, %4940 ], [ %4938, %4840 ]
  %4970 = call float @dx.op.binary.f32(i32 35, float %4968, float %4969)  ; FMax(a,b)
  %4971 = call float @dx.op.binary.f32(i32 35, float %4967, float %4970)  ; FMax(a,b)
  %4972 = fsub fast float 1.000000e+00, %4971
  %4973 = fmul fast float %4971, %4647
  %4974 = fadd fast float %4973, %4647
  %4975 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4976 = extractvalue %dx.types.CBufRet.f32 %4975, 0
  %4977 = extractvalue %dx.types.CBufRet.f32 %4975, 1
  %4978 = extractvalue %dx.types.CBufRet.f32 %4975, 2
  %4979 = extractvalue %dx.types.CBufRet.f32 %4975, 3
  %4980 = fmul fast float %4974, %4976
  %4981 = fadd fast float %4980, %4977
  %4982 = call float @dx.op.unary.f32(i32 7, float %4981)  ; Saturate(value)
  %4983 = fmul fast float %4978, %4974
  %4984 = fadd fast float %4983, %4979
  %4985 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4986 = fsub fast float 1.000000e+00, %4687
  %4987 = fadd fast float %4986, %4985
  %4988 = call float @dx.op.unary.f32(i32 7, float %4987)  ; Saturate(value)
  %4989 = fcmp fast olt float %4988, 1.000000e+00
  br i1 %4989, label %4990, label %5845

; <label>:4990                                    ; preds = %4966
  %4991 = fcmp fast olt float %4982, 1.000000e+00
  %4992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4993 = extractvalue %dx.types.CBufRet.f32 %4992, 0
  %4994 = fcmp fast ogt float %4993, 0.000000e+00
  %4995 = or i1 %4991, %4994
  %4996 = or i1 %4991, %4994
  %4997 = xor i1 %4996, true
  %4998 = zext i1 %4997 to i32
  br i1 %4995, label %4999, label %5242

; <label>:4999                                    ; preds = %4990
  %5000 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5001 = extractvalue %dx.types.CBufRet.f32 %5000, 0
  %5002 = extractvalue %dx.types.CBufRet.f32 %5000, 1
  %5003 = extractvalue %dx.types.CBufRet.f32 %5000, 2
  %5004 = extractvalue %dx.types.CBufRet.f32 %5000, 3
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 0
  %5007 = extractvalue %dx.types.CBufRet.f32 %5005, 1
  %5008 = extractvalue %dx.types.CBufRet.f32 %5005, 2
  %5009 = extractvalue %dx.types.CBufRet.f32 %5005, 3
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.CBufRet.f32 %5010, 1
  %5013 = extractvalue %dx.types.CBufRet.f32 %5010, 2
  %5014 = extractvalue %dx.types.CBufRet.f32 %5010, 3
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 0
  %5017 = extractvalue %dx.types.CBufRet.f32 %5015, 1
  %5018 = extractvalue %dx.types.CBufRet.f32 %5015, 2
  %5019 = extractvalue %dx.types.CBufRet.f32 %5015, 3
  %5020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.f32 %5020, 0
  %5022 = extractvalue %dx.types.CBufRet.f32 %5020, 1
  %5023 = extractvalue %dx.types.CBufRet.f32 %5020, 2
  %5024 = extractvalue %dx.types.CBufRet.f32 %5020, 3
  %5025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5026 = extractvalue %dx.types.CBufRet.f32 %5025, 0
  %5027 = extractvalue %dx.types.CBufRet.f32 %5025, 1
  %5028 = extractvalue %dx.types.CBufRet.f32 %5025, 2
  %5029 = extractvalue %dx.types.CBufRet.f32 %5025, 3
  %5030 = call float @dx.op.dot3.f32(i32 55, float %5026, float %5027, float %5028, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5031 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5032 = call float @dx.op.unary.f32(i32 6, float %5031)  ; FAbs(value)
  %5033 = fmul fast float %5032, 8.000000e+00
  %5034 = fadd fast float %5033, -6.000000e+00
  %5035 = call float @dx.op.unary.f32(i32 7, float %5034)  ; Saturate(value)
  %5036 = fmul fast float %5030, 8.000000e+00
  %5037 = fmul fast float %5036, %4993
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = fcmp fast ogt float %5038, 0.000000e+00
  br i1 %5039, label %5040, label %5217, !dx.controlflow.hints !85

; <label>:5040                                    ; preds = %4999
  %5041 = extractvalue %dx.types.CBufRet.f32 %4992, 1
  %5042 = extractvalue %dx.types.CBufRet.f32 %4992, 2
  %5043 = fsub fast float %5041, %5042
  %5044 = fmul fast float %5043, %4647
  %5045 = fadd fast float %5044, %5042
  %5046 = fmul fast float %199, 2.000000e+00
  %5047 = fmul fast float %200, 2.000000e+00
  %5048 = fadd fast float %5046, -1.000000e+00
  %5049 = fadd fast float %5047, -1.000000e+00
  %5050 = fmul fast float %5045, %5048
  %5051 = fmul fast float %5045, %5049
  %5052 = fadd fast float %5050, %85
  %5053 = fadd fast float %5051, %86
  %5054 = fmul fast float %5052, %4650
  %5055 = fmul fast float %5053, %4651
  %5056 = fadd fast float %4647, 0xBFE3333340000000
  %5057 = fmul fast float %5056, 0x4004000020000000
  %5058 = fsub fast float 1.000000e+00, %5057
  %5059 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5060 = fmul fast float %5059, 3.000000e+00
  %5061 = fadd fast float %5060, %199
  %5062 = call float @dx.op.unary.f32(i32 27, float %5061)  ; Round_ni(value)
  %5063 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5054, float %5055, float %5062, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5064 = extractvalue %dx.types.ResRet.f32 %5063, 0
  %5065 = fcmp fast une float %5064, 0xFFF0000000000000
  %5066 = fcmp fast une float %5064, 0x7FF0000000000000
  %5067 = and i1 %5065, %5066
  %5068 = fcmp fast olt float %5064, 0.000000e+00
  %5069 = call float @dx.op.unary.f32(i32 6, float %5064)  ; FAbs(value)
  %5070 = fsub fast float 1.000000e+00, %5069
  %5071 = select i1 %5067, float 1.000000e+00, float 0.000000e+00
  %5072 = fmul fast float %5071, %5038
  %5073 = fcmp fast ogt float %5072, 0.000000e+00
  br i1 %5073, label %5074, label %5217, !dx.controlflow.hints !86

; <label>:5074                                    ; preds = %5040
  %5075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5076 = extractvalue %dx.types.CBufRet.f32 %5075, 0
  %5077 = extractvalue %dx.types.CBufRet.f32 %5075, 1
  %5078 = extractvalue %dx.types.CBufRet.f32 %5075, 2
  %5079 = select i1 %5068, float 0.000000e+00, float %5076
  %5080 = select i1 %5068, float 0.000000e+00, float %5077
  %5081 = select i1 %5068, float 0.000000e+00, float %5078
  %5082 = select i1 %5068, float %5001, float %5016
  %5083 = select i1 %5068, float %5006, float %5021
  %5084 = select i1 %5068, float %5011, float %5026
  %5085 = select i1 %5068, float %5002, float %5017
  %5086 = select i1 %5068, float %5007, float %5022
  %5087 = select i1 %5068, float %5012, float %5027
  %5088 = select i1 %5068, float %5003, float %5018
  %5089 = select i1 %5068, float %5008, float %5023
  %5090 = select i1 %5068, float %5013, float %5028
  %5091 = select i1 %5068, float %5004, float %5019
  %5092 = select i1 %5068, float %5009, float %5024
  %5093 = select i1 %5068, float %5014, float %5029
  %5094 = fadd fast float %5079, %144
  %5095 = fadd fast float %5080, %145
  %5096 = fadd fast float %5081, %146
  %5097 = fmul fast float %5094, %5082
  %5098 = call float @dx.op.tertiary.f32(i32 46, float %5095, float %5085, float %5097)  ; FMad(a,b,c)
  %5099 = call float @dx.op.tertiary.f32(i32 46, float %5096, float %5088, float %5098)  ; FMad(a,b,c)
  %5100 = fadd fast float %5099, %5091
  %5101 = fmul fast float %5094, %5083
  %5102 = call float @dx.op.tertiary.f32(i32 46, float %5095, float %5086, float %5101)  ; FMad(a,b,c)
  %5103 = call float @dx.op.tertiary.f32(i32 46, float %5096, float %5089, float %5102)  ; FMad(a,b,c)
  %5104 = fadd fast float %5103, %5092
  %5105 = fmul fast float %5094, %5084
  %5106 = call float @dx.op.tertiary.f32(i32 46, float %5095, float %5087, float %5105)  ; FMad(a,b,c)
  %5107 = call float @dx.op.tertiary.f32(i32 46, float %5096, float %5090, float %5106)  ; FMad(a,b,c)
  %5108 = fadd fast float %5107, %5093
  %5109 = fdiv fast float 1.000000e+00, %5108
  %5110 = fmul fast float %5109, %5100
  %5111 = fmul fast float %5109, %5104
  %5112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.f32 %5112, 0
  %5114 = extractvalue %dx.types.CBufRet.f32 %5112, 1
  %5115 = fmul fast float %5110, %5113
  %5116 = fmul fast float %5111, %5114
  %5117 = extractvalue %dx.types.CBufRet.f32 %5112, 2
  %5118 = extractvalue %dx.types.CBufRet.f32 %5112, 3
  %5119 = fadd fast float %5115, %5117
  %5120 = fadd fast float %5116, %5118
  %5121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5122 = extractvalue %dx.types.CBufRet.f32 %5121, 3
  %5123 = fmul fast float %5122, %4672
  %5124 = fmul fast float %5122, %4673
  %5125 = fmul fast float %5122, %4674
  %5126 = fadd fast float %5123, %5094
  %5127 = fadd fast float %5124, %5095
  %5128 = fadd fast float %5125, %5096
  %5129 = fmul fast float %5126, %5082
  %5130 = call float @dx.op.tertiary.f32(i32 46, float %5127, float %5085, float %5129)  ; FMad(a,b,c)
  %5131 = call float @dx.op.tertiary.f32(i32 46, float %5128, float %5088, float %5130)  ; FMad(a,b,c)
  %5132 = fadd fast float %5131, %5091
  %5133 = fmul fast float %5126, %5083
  %5134 = call float @dx.op.tertiary.f32(i32 46, float %5127, float %5086, float %5133)  ; FMad(a,b,c)
  %5135 = call float @dx.op.tertiary.f32(i32 46, float %5128, float %5089, float %5134)  ; FMad(a,b,c)
  %5136 = fadd fast float %5135, %5092
  %5137 = fmul fast float %5126, %5084
  %5138 = call float @dx.op.tertiary.f32(i32 46, float %5127, float %5087, float %5137)  ; FMad(a,b,c)
  %5139 = call float @dx.op.tertiary.f32(i32 46, float %5128, float %5090, float %5138)  ; FMad(a,b,c)
  %5140 = fadd fast float %5139, %5093
  %5141 = fdiv fast float 1.000000e+00, %5140
  %5142 = fmul fast float %5141, %5132
  %5143 = fmul fast float %5141, %5136
  %5144 = fmul fast float %5119, 2.000000e+00
  %5145 = fadd fast float %5144, -1.000000e+00
  %5146 = call float @dx.op.unary.f32(i32 6, float %5145)  ; FAbs(value)
  %5147 = fmul fast float %5146, 5.000000e+00
  %5148 = fadd fast float %5147, -4.000000e+00
  %5149 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5150 = fmul fast float %5149, %5035
  %5151 = fsub fast float %5110, %5142
  %5152 = fmul fast float %5113, %5151
  %5153 = fmul fast float %5150, %5152
  %5154 = fsub fast float %5142, %5110
  %5155 = fmul fast float %5113, %5154
  %5156 = fadd fast float %5155, %5153
  %5157 = fsub fast float %5143, %5111
  %5158 = fmul fast float %5114, %5157
  %5159 = fmul fast float %5156, %5070
  %5160 = fmul fast float %5158, %5070
  %5161 = fadd fast float %5159, %5119
  %5162 = fadd fast float %5160, %5120
  %5163 = fsub fast float %5141, %5109
  %5164 = fmul fast float %5163, %5070
  %5165 = fadd fast float %5164, %5109
  %5166 = fdiv fast float 1.000000e+00, %5165
  %5167 = fadd fast float %4647, -1.000000e+00
  %5168 = fsub fast float %5166, %5108
  %5169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5170 = extractvalue %dx.types.CBufRet.f32 %5169, 2
  %5171 = fmul fast float %5170, %5166
  %5172 = fdiv fast float 1.600000e+02, %5171
  %5173 = fmul fast float %5167, %5167
  %5174 = fmul fast float %5173, 0xBFB5B17960000000
  %5175 = fmul fast float %5174, %5168
  %5176 = fmul fast float %5175, %5172
  %5177 = call float @dx.op.unary.f32(i32 21, float %5176)  ; Exp(value)
  %5178 = fmul fast float %5177, 0x3FF04B2960000000
  %5179 = fsub fast float 0x3FF04B2960000000, %5178
  %5180 = call float @dx.op.unary.f32(i32 7, float %5179)  ; Saturate(value)
  %5181 = fmul fast float %5180, 4.000000e+00
  %5182 = fadd fast float %199, -5.000000e-01
  %5183 = fadd fast float %200, -5.000000e-01
  %5184 = fmul fast float %5180, 0x3FBEB851E0000000
  %5185 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5186 = fmul fast float %5185, %5182
  %5187 = fmul fast float %5185, %5183
  %5188 = fadd fast float %5161, %5186
  %5189 = fadd fast float %5162, %5187
  %5190 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5188, float %5189, float undef, float undef, i32 0, i32 0, i32 undef, float %5181)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5191 = extractvalue %dx.types.ResRet.f32 %5190, 0
  %5192 = extractvalue %dx.types.ResRet.f32 %5190, 1
  %5193 = extractvalue %dx.types.ResRet.f32 %5190, 2
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %5196 = fmul fast float %5195, %5191
  %5197 = fmul fast float %5195, %5192
  %5198 = fmul fast float %5195, %5193
  %5199 = select i1 %186, float 0.000000e+00, float %5197
  %5200 = select i1 %186, float 0.000000e+00, float %5198
  %5201 = fmul fast float %5188, 2.000000e+00
  %5202 = fmul fast float %5189, 2.000000e+00
  %5203 = fadd fast float %5201, -1.000000e+00
  %5204 = fadd fast float %5202, -1.000000e+00
  %5205 = fmul fast float %5203, %5203
  %5206 = fsub fast float 1.000000e+00, %5205
  %5207 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5208 = fsub fast float 1.000000e+00, %5207
  %5209 = fmul fast float %5208, %5035
  %5210 = fadd fast float %5209, %5207
  %5211 = fmul fast float %5204, %5204
  %5212 = fsub fast float 1.000000e+00, %5211
  %5213 = call float @dx.op.unary.f32(i32 7, float %5212)  ; Saturate(value)
  %5214 = fmul fast float %5210, %5213
  %5215 = call float @dx.op.unary.f32(i32 7, float %5214)  ; Saturate(value)
  %5216 = fmul fast float %5215, %5072
  br label %5217

; <label>:5217                                    ; preds = %5074, %5040, %4999
  %5218 = phi float [ %5196, %5074 ], [ 0.000000e+00, %5040 ], [ 0.000000e+00, %4999 ]
  %5219 = phi float [ %5199, %5074 ], [ 0.000000e+00, %5040 ], [ 0.000000e+00, %4999 ]
  %5220 = phi float [ %5200, %5074 ], [ 0.000000e+00, %5040 ], [ 0.000000e+00, %4999 ]
  %5221 = phi float [ %5216, %5074 ], [ 0.000000e+00, %5040 ], [ 0.000000e+00, %4999 ]
  %5222 = fcmp fast olt float %5221, 1.000000e+00
  %5223 = or i1 %5222, %4997
  %5224 = zext i1 %5223 to i32
  %5225 = fmul fast float %5221, %4982
  %5226 = fsub fast float %5221, %5225
  %5227 = fsub fast float 1.000000e+00, %4988
  %5228 = fmul fast float %5226, %5227
  %5229 = fadd fast float %5228, %4988
  %5230 = fsub fast float %5229, %5226
  %5231 = call float @dx.op.unary.f32(i32 7, float %5230)  ; Saturate(value)
  %5232 = fmul fast float %5231, %4923
  %5233 = fmul fast float %5231, %4924
  %5234 = fmul fast float %5231, %4925
  %5235 = fsub fast float -0.000000e+00, %5229
  %5236 = fmul fast float %5226, %5218
  %5237 = fmul fast float %5226, %5219
  %5238 = fmul fast float %5226, %5220
  %5239 = fadd fast float %5236, %5232
  %5240 = fadd fast float %5237, %5233
  %5241 = fadd fast float %5238, %5234
  br label %5242

; <label>:5242                                    ; preds = %5217, %4990
  %5243 = phi float [ %4988, %4990 ], [ %5235, %5217 ]
  %5244 = phi float [ %4923, %4990 ], [ %5239, %5217 ]
  %5245 = phi float [ %4924, %4990 ], [ %5240, %5217 ]
  %5246 = phi float [ %4925, %4990 ], [ %5241, %5217 ]
  %5247 = phi i32 [ %4998, %4990 ], [ %5224, %5217 ]
  %5248 = icmp eq i32 %5247, 0
  br i1 %5248, label %5845, label %5249

; <label>:5249                                    ; preds = %5242
  %5250 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5251 = extractvalue %dx.types.CBufRet.f32 %5250, 2
  %5252 = extractvalue %dx.types.CBufRet.f32 %5250, 3
  %5253 = fmul fast float %5251, %85
  %5254 = fmul fast float %5252, %86
  %5255 = fptoui float %5253 to i32
  %5256 = fptoui float %5254 to i32
  %5257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5258 = extractvalue %dx.types.CBufRet.f32 %5257, 0
  %5259 = extractvalue %dx.types.CBufRet.f32 %5257, 2
  %5260 = extractvalue %dx.types.CBufRet.f32 %5257, 3
  %5261 = fadd fast float %80, -4.000000e+00
  %5262 = call float @dx.op.binary.f32(i32 35, float %5261, float 0.000000e+00)  ; FMax(a,b)
  %5263 = fadd fast float %5262, %5258
  %5264 = fmul fast float %5263, %5259
  %5265 = call float @dx.op.unary.f32(i32 23, float %5264)  ; Log(value)
  %5266 = fmul fast float %5265, %5260
  %5267 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5268 = extractvalue %dx.types.CBufRet.f32 %5267, 2
  %5269 = fmul fast float %5266, %5268
  %5270 = call float @dx.op.unary.f32(i32 7, float %5269)  ; Saturate(value)
  %5271 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5272 = extractvalue %dx.types.CBufRet.i32 %5271, 1
  %5273 = add i32 %5272, -1
  %5274 = uitofp i32 %5272 to float
  %5275 = fmul fast float %5274, %5270
  %5276 = fptoui float %5275 to i32
  %5277 = call i32 @dx.op.binary.i32(i32 40, i32 %5276, i32 %5273)  ; UMin(a,b)
  %5278 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5279 = extractvalue %dx.types.CBufRet.i32 %5278, 2
  %5280 = extractvalue %dx.types.CBufRet.i32 %5278, 3
  %5281 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5256, i32 %5279, i32 %5255)  ; UMad(a,b,c)
  %5282 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5277, i32 %5280, i32 %5281)  ; UMad(a,b,c)
  %5283 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %5284 = fptoui float %5283 to i32
  %5285 = lshr i32 %5284, 5
  %5286 = call i32 @dx.op.binary.i32(i32 40, i32 %5285, i32 8191)  ; UMin(a,b)
  %5287 = fcmp fast ogt float %4446, 0.000000e+00
  %5288 = fcmp fast ogt float %4674, 0.000000e+00
  %5289 = and i1 %5288, %5287
  br i1 %5289, label %5290, label %5319

; <label>:5290                                    ; preds = %5249
  %5291 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4673, float %4674, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5292 = call float @dx.op.binary.f32(i32 35, float %5291, float -1.000000e+00)  ; FMax(a,b)
  %5293 = call float @dx.op.binary.f32(i32 36, float %5292, float 1.000000e+00)  ; FMin(a,b)
  %5294 = fmul fast float %5293, %5293
  %5295 = fsub fast float 1.000000e+00, %5294
  %5296 = fmul fast float %5295, 0x3FFC6E2300000000
  %5297 = fsub fast float 1.000000e+00, %5296
  %5298 = fcmp fast ogt float %5297, 0.000000e+00
  %5299 = call float @dx.op.unary.f32(i32 24, float %5297)  ; Sqrt(value)
  %5300 = fsub fast float 1.000000e+00, %5299
  %5301 = call float @dx.op.unary.f32(i32 23, float %5300)  ; Log(value)
  %5302 = fmul fast float %5301, 5.000000e+00
  %5303 = call float @dx.op.unary.f32(i32 21, float %5302)  ; Exp(value)
  %5304 = fmul fast float %5303, 0x3FEF591A60000000
  %5305 = fadd fast float %5304, 0x3F94DCB540000000
  %5306 = select i1 %5298, float %5305, float 1.000000e+00
  %5307 = fcmp fast oge float %5306, 1.000000e+00
  %5308 = fmul fast float %5291, 2.000000e+00
  %5309 = fadd fast float %5308, %4674
  %5310 = select i1 %5307, float %5309, float %4674
  %5311 = fsub fast float %5310, %4674
  %5312 = fmul fast float %5311, %4446
  %5313 = fadd fast float %5312, %4674
  %5314 = call float @dx.op.dot3.f32(i32 55, float %4672, float %4673, float %5313, float %4672, float %4673, float %5313)  ; Dot3(ax,ay,az,bx,by,bz)
  %5315 = call float @dx.op.unary.f32(i32 25, float %5314)  ; Rsqrt(value)
  %5316 = fmul fast float %5315, %4672
  %5317 = fmul fast float %5315, %4673
  %5318 = fmul fast float %5313, %5315
  br label %5319

; <label>:5319                                    ; preds = %5290, %5249
  %5320 = phi float [ %5316, %5290 ], [ %4672, %5249 ]
  %5321 = phi float [ %5317, %5290 ], [ %4673, %5249 ]
  %5322 = phi float [ %5318, %5290 ], [ %4674, %5249 ]
  %5323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5324 = extractvalue %dx.types.CBufRet.i32 %5323, 2
  %5325 = add nsw i32 %5324, -1
  %5326 = call i32 @dx.op.binary.i32(i32 37, i32 %5325, i32 0)  ; IMax(a,b)
  %5327 = shl i32 %5286, 2
  %5328 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5327, i32 undef)  ; BufferLoad(srv,index,wot)
  %5329 = extractvalue %dx.types.ResRet.i32 %5328, 0
  %5330 = lshr i32 %5329, 16
  %5331 = and i32 %5329, 65535
  %5332 = lshr i32 %5329, 21
  %5333 = lshr i32 %5331, 5
  %5334 = call i32 @dx.op.binary.i32(i32 40, i32 %5333, i32 %5326)  ; UMin(a,b)
  %5335 = icmp ugt i32 %5332, %5334
  br i1 %5335, label %5717, label %5336

; <label>:5336                                    ; preds = %5319
  br label %5337

; <label>:5337                                    ; preds = %5706, %5336
  %5338 = phi float [ %5707, %5706 ], [ 0.000000e+00, %5336 ]
  %5339 = phi float [ %5708, %5706 ], [ 0.000000e+00, %5336 ]
  %5340 = phi float [ %5709, %5706 ], [ 0.000000e+00, %5336 ]
  %5341 = phi float [ %5710, %5706 ], [ 1.000000e+00, %5336 ]
  %5342 = phi i32 [ %5714, %5706 ], [ %5332, %5336 ]
  %5343 = phi float [ %5711, %5706 ], [ 0.000000e+00, %5336 ]
  %5344 = phi float [ %5712, %5706 ], [ 0.000000e+00, %5336 ]
  %5345 = phi float [ %5713, %5706 ], [ 0.000000e+00, %5336 ]
  %5346 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5347 = extractvalue %dx.types.CBufRet.i32 %5346, 2
  %5348 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5282, i32 %5347, i32 %5342)  ; UMad(a,b,c)
  %5349 = shl i32 %5348, 2
  %5350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5349, i32 undef)  ; BufferLoad(srv,index,wot)
  %5351 = extractvalue %dx.types.ResRet.i32 %5350, 0
  %5352 = shl i32 %5342, 5
  %5353 = sub nsw i32 %5330, %5352
  %5354 = call i32 @dx.op.binary.i32(i32 37, i32 %5353, i32 0)  ; IMax(a,b)
  %5355 = call i32 @dx.op.binary.i32(i32 38, i32 %5354, i32 31)  ; IMin(a,b)
  %5356 = sub nsw i32 1, %5330
  %5357 = add nsw i32 %5356, %5331
  %5358 = call i32 @dx.op.binary.i32(i32 37, i32 %5357, i32 0)  ; IMax(a,b)
  %5359 = call i32 @dx.op.binary.i32(i32 38, i32 %5358, i32 32)  ; IMin(a,b)
  %5360 = and i32 %5359, 31
  %5361 = shl i32 -1, %5360
  %5362 = xor i32 %5361, -1
  %5363 = and i32 %5355, 31
  %5364 = shl i32 %5362, %5363
  %5365 = icmp eq i32 %5359, 32
  %5366 = select i1 %5365, i32 -1, i32 %5364
  %5367 = and i32 %5366, %5351
  %5368 = icmp eq i32 %5367, 0
  br i1 %5368, label %5706, label %5369

; <label>:5369                                    ; preds = %5337
  br label %5370

; <label>:5370                                    ; preds = %5480, %5369
  %5371 = phi float [ %5481, %5480 ], [ %5338, %5369 ]
  %5372 = phi float [ %5482, %5480 ], [ %5339, %5369 ]
  %5373 = phi float [ %5483, %5480 ], [ %5340, %5369 ]
  %5374 = phi float [ %5484, %5480 ], [ %5341, %5369 ]
  %5375 = phi i32 [ %5383, %5480 ], [ %5367, %5369 ]
  %5376 = phi float [ %5485, %5480 ], [ %5343, %5369 ]
  %5377 = phi float [ %5486, %5480 ], [ %5344, %5369 ]
  %5378 = phi float [ %5487, %5480 ], [ %5345, %5369 ]
  %5379 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5375)  ; FirstbitLo(value)
  %5380 = add i32 %5379, %5352
  %5381 = and i32 %5379, 31
  %5382 = shl i32 1, %5381
  %5383 = xor i32 %5382, %5375
  %5384 = mul i32 %5380, 72
  %5385 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5384, i32 undef)  ; BufferLoad(srv,index,wot)
  %5386 = extractvalue %dx.types.ResRet.f32 %5385, 0
  %5387 = extractvalue %dx.types.ResRet.f32 %5385, 1
  %5388 = extractvalue %dx.types.ResRet.f32 %5385, 2
  %5389 = add i32 %5384, 12
  %5390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5389, i32 undef)  ; BufferLoad(srv,index,wot)
  %5391 = extractvalue %dx.types.ResRet.i32 %5390, 0
  %5392 = add i32 %5384, 16
  %5393 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5392, i32 undef)  ; BufferLoad(srv,index,wot)
  %5394 = extractvalue %dx.types.ResRet.f32 %5393, 0
  %5395 = extractvalue %dx.types.ResRet.f32 %5393, 1
  %5396 = extractvalue %dx.types.ResRet.f32 %5393, 2
  %5397 = add i32 %5384, 28
  %5398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5399 = extractvalue %dx.types.ResRet.f32 %5398, 0
  %5400 = add i32 %5384, 32
  %5401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5400, i32 undef)  ; BufferLoad(srv,index,wot)
  %5402 = extractvalue %dx.types.ResRet.f32 %5401, 0
  %5403 = extractvalue %dx.types.ResRet.f32 %5401, 1
  %5404 = extractvalue %dx.types.ResRet.f32 %5401, 2
  %5405 = extractvalue %dx.types.ResRet.f32 %5401, 3
  %5406 = add i32 %5384, 48
  %5407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5406, i32 undef)  ; BufferLoad(srv,index,wot)
  %5408 = extractvalue %dx.types.ResRet.f32 %5407, 0
  %5409 = extractvalue %dx.types.ResRet.f32 %5407, 1
  %5410 = add i32 %5384, 56
  %5411 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5410, i32 undef)  ; BufferLoad(srv,index,wot)
  %5412 = extractvalue %dx.types.ResRet.f32 %5411, 0
  %5413 = extractvalue %dx.types.ResRet.f32 %5411, 1
  %5414 = add i32 %5384, 64
  %5415 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5414, i32 undef)  ; BufferLoad(srv,index,wot)
  %5416 = extractvalue %dx.types.ResRet.f32 %5415, 0
  %5417 = extractvalue %dx.types.ResRet.f32 %5415, 1
  %5418 = mul i32 %5380, 60
  %5419 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5418, i32 undef)  ; BufferLoad(srv,index,wot)
  %5420 = extractvalue %dx.types.ResRet.f32 %5419, 0
  %5421 = extractvalue %dx.types.ResRet.f32 %5419, 1
  %5422 = extractvalue %dx.types.ResRet.f32 %5419, 2
  %5423 = add i32 %5418, 12
  %5424 = add i32 %5418, 48
  %5425 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5424, i32 undef)  ; BufferLoad(srv,index,wot)
  %5426 = extractvalue %dx.types.ResRet.f32 %5425, 0
  %5427 = extractvalue %dx.types.ResRet.f32 %5425, 1
  %5428 = extractvalue %dx.types.ResRet.f32 %5425, 2
  %5429 = and i32 %5391, 32767
  %5430 = bitcast float %5386 to i32
  %5431 = icmp eq i32 %5430, -1
  %5432 = bitcast float %5387 to i32
  %5433 = and i32 %5391, 32768
  %5434 = icmp ne i32 %5433, 0
  %5435 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5436 = extractvalue %dx.types.CBufRet.f32 %5435, 0
  %5437 = extractvalue %dx.types.CBufRet.f32 %5435, 1
  %5438 = extractvalue %dx.types.CBufRet.f32 %5435, 2
  %5439 = fsub fast float %5420, %5436
  %5440 = fsub fast float %5421, %5437
  %5441 = fsub fast float %5422, %5438
  %5442 = fsub fast float %144, %5439
  %5443 = fsub fast float %145, %5440
  %5444 = fsub fast float %146, %5441
  %5445 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5423, i32 undef)  ; BufferLoad(srv,index,wot)
  %5446 = extractvalue %dx.types.ResRet.f32 %5445, 0
  %5447 = extractvalue %dx.types.ResRet.f32 %5445, 1
  %5448 = extractvalue %dx.types.ResRet.f32 %5445, 2
  %5449 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5446, float %5447, float %5448)  ; Dot3(ax,ay,az,bx,by,bz)
  %5450 = add i32 %5418, 24
  %5451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5450, i32 undef)  ; BufferLoad(srv,index,wot)
  %5452 = extractvalue %dx.types.ResRet.f32 %5451, 0
  %5453 = extractvalue %dx.types.ResRet.f32 %5451, 1
  %5454 = extractvalue %dx.types.ResRet.f32 %5451, 2
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = add i32 %5418, 36
  %5457 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5456, i32 undef)  ; BufferLoad(srv,index,wot)
  %5458 = extractvalue %dx.types.ResRet.f32 %5457, 0
  %5459 = extractvalue %dx.types.ResRet.f32 %5457, 1
  %5460 = extractvalue %dx.types.ResRet.f32 %5457, 2
  %5461 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5458, float %5459, float %5460)  ; Dot3(ax,ay,az,bx,by,bz)
  %5462 = call float @dx.op.unary.f32(i32 6, float %5449)  ; FAbs(value)
  %5463 = call float @dx.op.unary.f32(i32 6, float %5455)  ; FAbs(value)
  %5464 = call float @dx.op.unary.f32(i32 6, float %5461)  ; FAbs(value)
  %5465 = fsub fast float %5426, %5462
  %5466 = fsub fast float %5427, %5463
  %5467 = fsub fast float %5428, %5464
  %5468 = fmul fast float %5465, %5394
  %5469 = fmul fast float %5466, %5395
  %5470 = fmul fast float %5467, %5396
  %5471 = call float @dx.op.binary.f32(i32 36, float %5469, float %5470)  ; FMin(a,b)
  %5472 = call float @dx.op.binary.f32(i32 36, float %5468, float %5471)  ; FMin(a,b)
  %5473 = call float @dx.op.unary.f32(i32 7, float %5472)  ; Saturate(value)
  %5474 = call float @dx.op.binary.f32(i32 36, float %5374, float %5473)  ; FMin(a,b)
  %5475 = uitofp i1 %5434 to float
  %5476 = fadd fast float %4446, 1.000000e+00
  %5477 = fsub fast float %5476, %5475
  %5478 = fmul fast float %5474, %5477
  %5479 = fcmp fast ogt float %5478, 0.000000e+00
  br i1 %5479, label %5489, label %5480

; <label>:5480                                    ; preds = %5631, %5370
  %5481 = phi float [ %5695, %5631 ], [ %5371, %5370 ]
  %5482 = phi float [ %5696, %5631 ], [ %5372, %5370 ]
  %5483 = phi float [ %5697, %5631 ], [ %5373, %5370 ]
  %5484 = phi float [ %5704, %5631 ], [ %5374, %5370 ]
  %5485 = phi float [ %5701, %5631 ], [ %5376, %5370 ]
  %5486 = phi float [ %5702, %5631 ], [ %5377, %5370 ]
  %5487 = phi float [ %5703, %5631 ], [ %5378, %5370 ]
  %5488 = icmp eq i32 %5375, %5382
  br i1 %5488, label %5705, label %5370

; <label>:5489                                    ; preds = %5370
  br i1 %5431, label %5547, label %5490

; <label>:5490                                    ; preds = %5489
  %5491 = fsub fast float -0.000000e+00, %5446
  %5492 = fsub fast float -0.000000e+00, %5447
  %5493 = fsub fast float -0.000000e+00, %5448
  %5494 = call float @dx.op.dot3.f32(i32 55, float %5320, float %5321, float %5322, float %5491, float %5492, float %5493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5495 = fsub fast float -0.000000e+00, %5494
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5491, float %5492, float %5493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = fadd fast float %5496, %5409
  %5498 = fadd fast float %5408, %5496
  %5499 = fsub fast float -0.000000e+00, %5498
  %5500 = fcmp ogt float %5494, -0.000000e+00
  %5501 = select i1 %5500, float %5499, float %5497
  %5502 = call float @dx.op.unary.f32(i32 6, float %5495)  ; FAbs(value)
  %5503 = fdiv fast float 1.000000e+00, %5502
  %5504 = fmul fast float %5501, %5503
  %5505 = call float @dx.op.binary.f32(i32 35, float %5504, float 0.000000e+00)  ; FMax(a,b)
  %5506 = fsub fast float -0.000000e+00, %5452
  %5507 = fsub fast float -0.000000e+00, %5453
  %5508 = fsub fast float -0.000000e+00, %5454
  %5509 = call float @dx.op.dot3.f32(i32 55, float %5320, float %5321, float %5322, float %5506, float %5507, float %5508)  ; Dot3(ax,ay,az,bx,by,bz)
  %5510 = fsub fast float -0.000000e+00, %5509
  %5511 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5506, float %5507, float %5508)  ; Dot3(ax,ay,az,bx,by,bz)
  %5512 = fadd fast float %5511, %5413
  %5513 = fadd fast float %5412, %5511
  %5514 = fsub fast float -0.000000e+00, %5513
  %5515 = fcmp ogt float %5509, -0.000000e+00
  %5516 = select i1 %5515, float %5514, float %5512
  %5517 = call float @dx.op.unary.f32(i32 6, float %5510)  ; FAbs(value)
  %5518 = fdiv fast float 1.000000e+00, %5517
  %5519 = fmul fast float %5516, %5518
  %5520 = call float @dx.op.binary.f32(i32 35, float %5519, float 0.000000e+00)  ; FMax(a,b)
  %5521 = fsub fast float -0.000000e+00, %5458
  %5522 = fsub fast float -0.000000e+00, %5459
  %5523 = fsub fast float -0.000000e+00, %5460
  %5524 = call float @dx.op.dot3.f32(i32 55, float %5320, float %5321, float %5322, float %5521, float %5522, float %5523)  ; Dot3(ax,ay,az,bx,by,bz)
  %5525 = fsub fast float -0.000000e+00, %5524
  %5526 = call float @dx.op.dot3.f32(i32 55, float %5442, float %5443, float %5444, float %5521, float %5522, float %5523)  ; Dot3(ax,ay,az,bx,by,bz)
  %5527 = fadd fast float %5526, %5417
  %5528 = fadd fast float %5416, %5526
  %5529 = fsub fast float -0.000000e+00, %5528
  %5530 = fcmp ogt float %5524, -0.000000e+00
  %5531 = select i1 %5530, float %5529, float %5527
  %5532 = call float @dx.op.unary.f32(i32 6, float %5525)  ; FAbs(value)
  %5533 = fdiv fast float 1.000000e+00, %5532
  %5534 = fmul fast float %5531, %5533
  %5535 = call float @dx.op.binary.f32(i32 35, float %5534, float 0.000000e+00)  ; FMax(a,b)
  %5536 = call float @dx.op.binary.f32(i32 36, float %5520, float %5535)  ; FMin(a,b)
  %5537 = call float @dx.op.binary.f32(i32 36, float %5505, float %5536)  ; FMin(a,b)
  %5538 = fmul fast float %5537, %5320
  %5539 = fmul fast float %5537, %5321
  %5540 = fmul fast float %5537, %5322
  %5541 = fadd fast float %5538, %144
  %5542 = fadd fast float %5539, %145
  %5543 = fadd fast float %5540, %146
  %5544 = fsub fast float %5541, %5386
  %5545 = fsub fast float %5542, %5387
  %5546 = fsub fast float %5543, %5388
  br label %5554

; <label>:5547                                    ; preds = %5489
  %5548 = fmul fast float %5320, 8.096000e+03
  %5549 = fmul fast float %5321, 8.096000e+03
  %5550 = fmul fast float %5322, 8.096000e+03
  %5551 = fadd fast float %5548, %144
  %5552 = fadd fast float %5549, %145
  %5553 = fadd fast float %5550, %146
  br label %5554

; <label>:5554                                    ; preds = %5547, %5490
  %5555 = phi float [ %5320, %5547 ], [ %5544, %5490 ]
  %5556 = phi float [ %5321, %5547 ], [ %5545, %5490 ]
  %5557 = phi float [ %5322, %5547 ], [ %5546, %5490 ]
  %5558 = phi float [ %5551, %5547 ], [ %5541, %5490 ]
  %5559 = phi float [ %5552, %5547 ], [ %5542, %5490 ]
  %5560 = phi float [ %5553, %5547 ], [ %5543, %5490 ]
  %5561 = fcmp fast olt float %5405, 1.000000e+00
  br i1 %5561, label %5562, label %5593, !dx.controlflow.hints !87

; <label>:5562                                    ; preds = %5554
  %5563 = fmul fast float %5557, %5403
  %5564 = fmul fast float %5556, %5404
  %5565 = fsub fast float %5563, %5564
  %5566 = fmul fast float %5555, %5404
  %5567 = fmul fast float %5557, %5402
  %5568 = fsub fast float %5566, %5567
  %5569 = fmul fast float %5556, %5402
  %5570 = fmul fast float %5555, %5403
  %5571 = fsub fast float %5569, %5570
  %5572 = fmul fast float %5565, 2.000000e+00
  %5573 = fmul fast float %5568, 2.000000e+00
  %5574 = fmul fast float %5571, 2.000000e+00
  %5575 = fmul fast float %5572, %5405
  %5576 = fmul fast float %5573, %5405
  %5577 = fmul fast float %5574, %5405
  %5578 = fmul fast float %5574, %5403
  %5579 = fmul fast float %5573, %5404
  %5580 = fmul fast float %5572, %5404
  %5581 = fmul fast float %5574, %5402
  %5582 = fmul fast float %5573, %5402
  %5583 = fmul fast float %5572, %5403
  %5584 = fadd fast float %5578, %5555
  %5585 = fadd fast float %5584, %5575
  %5586 = fsub fast float %5585, %5579
  %5587 = fsub fast float %5556, %5581
  %5588 = fadd fast float %5587, %5576
  %5589 = fadd fast float %5588, %5580
  %5590 = fadd fast float %5577, %5557
  %5591 = fsub fast float %5590, %5583
  %5592 = fadd fast float %5591, %5582
  br label %5593

; <label>:5593                                    ; preds = %5562, %5554
  %5594 = phi float [ %5586, %5562 ], [ %5555, %5554 ]
  %5595 = phi float [ %5589, %5562 ], [ %5556, %5554 ]
  %5596 = phi float [ %5592, %5562 ], [ %5557, %5554 ]
  br i1 %5431, label %5628, label %5597

; <label>:5597                                    ; preds = %5593
  %5598 = fmul fast float %4647, 0x400187C840000000
  %5599 = fadd fast float %5598, 0xC00EFC2120000000
  %5600 = fmul fast float %5599, %4647
  %5601 = fadd fast float %5600, 0x3FE5D16340000000
  %5602 = fmul fast float %5601, %4647
  %5603 = fadd fast float %5602, 1.000000e+00
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5605 = fsub fast float %5558, %144
  %5606 = fsub fast float %5559, %145
  %5607 = fsub fast float %5560, %146
  %5608 = fsub fast float %5558, %5386
  %5609 = fsub fast float %5559, %5387
  %5610 = fsub fast float %5560, %5388
  %5611 = call float @dx.op.dot3.f32(i32 55, float %5605, float %5606, float %5607, float %5605, float %5606, float %5607)  ; Dot3(ax,ay,az,bx,by,bz)
  %5612 = call float @dx.op.dot3.f32(i32 55, float %5608, float %5609, float %5610, float %5608, float %5609, float %5610)  ; Dot3(ax,ay,az,bx,by,bz)
  %5613 = fadd fast float %5612, 0x3EE4F8B580000000
  %5614 = fdiv fast float %5611, %5613
  %5615 = bitcast float %5614 to i32
  %5616 = ashr i32 %5615, 1
  %5617 = add nsw i32 %5616, 532487669
  %5618 = bitcast i32 %5617 to float
  %5619 = fmul fast float %5618, %5604
  %5620 = call float @dx.op.unary.f32(i32 7, float %5619)  ; Saturate(value)
  %5621 = fmul fast float %5620, 0x4009981AE0000000
  %5622 = fsub fast float 0x40111BBD80000000, %5621
  %5623 = fmul fast float %5622, %5620
  %5624 = fadd fast float %5623, 0xC0009F6020000000
  %5625 = fmul fast float %5624, %5620
  %5626 = fadd fast float %5625, 1.000000e+00
  %5627 = call float @dx.op.unary.f32(i32 7, float %5626)  ; Saturate(value)
  br label %5631

; <label>:5628                                    ; preds = %5593
  %5629 = icmp ne i32 %5432, -1
  %5630 = zext i1 %5629 to i32
  br label %5631

; <label>:5631                                    ; preds = %5628, %5597
  %5632 = phi float [ %4647, %5628 ], [ %5627, %5597 ]
  %5633 = phi i32 [ %5630, %5628 ], [ 0, %5597 ]
  %5634 = fmul float %5632, 5.000000e+00
  %5635 = fsub float 5.000000e+00, %5634
  %5636 = icmp ne i32 %5633, 0
  %5637 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5638 = extractvalue %dx.types.CBufRet.f32 %5637, 3
  %5639 = fadd fast float %5638, %5635
  %5640 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5639)  ; FMax(a,b)
  %5641 = call float @dx.op.unary.f32(i32 6, float %5594)  ; FAbs(value)
  %5642 = call float @dx.op.unary.f32(i32 6, float %5595)  ; FAbs(value)
  %5643 = fadd fast float %5642, %5641
  %5644 = call float @dx.op.unary.f32(i32 6, float %5596)  ; FAbs(value)
  %5645 = fadd fast float %5643, %5644
  %5646 = fcmp fast oeq float %5645, 0.000000e+00
  %5647 = fdiv fast float 1.000000e+00, %5645
  %5648 = select i1 %5646, float 1.000000e+00, float %5647
  %5649 = fmul fast float %5648, %5594
  %5650 = fmul fast float %5648, %5595
  %5651 = call float @dx.op.unary.f32(i32 6, float %5650)  ; FAbs(value)
  %5652 = call float @dx.op.unary.f32(i32 6, float %5649)  ; FAbs(value)
  %5653 = fsub fast float 1.000000e+00, %5651
  %5654 = fsub fast float 1.000000e+00, %5652
  %5655 = fcmp fast oge float %5649, 0.000000e+00
  %5656 = fcmp fast oge float %5650, 0.000000e+00
  %5657 = select i1 %5655, float 1.000000e+00, float -1.000000e+00
  %5658 = select i1 %5656, float 1.000000e+00, float -1.000000e+00
  %5659 = fcmp fast ole float %5596, 0.000000e+00
  %5660 = fmul fast float %5657, %5653
  %5661 = fmul fast float %5658, %5654
  %5662 = select i1 %5659, float %5660, float %5649
  %5663 = select i1 %5659, float %5661, float %5650
  %5664 = fmul fast float %5662, 5.000000e-01
  %5665 = fmul fast float %5663, 5.000000e-01
  %5666 = fadd fast float %5664, 5.000000e-01
  %5667 = fadd fast float %5665, 5.000000e-01
  %5668 = uitofp i32 %5429 to float
  %5669 = call float @dx.op.binary.f32(i32 36, float %5640, float 3.000000e+00)  ; FMin(a,b)
  %5670 = fadd fast float %5669, 2.000000e+00
  %5671 = call float @dx.op.unary.f32(i32 21, float %5670)  ; Exp(value)
  %5672 = extractvalue %dx.types.CBufRet.f32 %5637, 1
  %5673 = fmul fast float %5672, %5671
  %5674 = fmul fast float %5673, 2.000000e+00
  %5675 = fsub fast float 1.000000e+00, %5674
  %5676 = fmul fast float %5666, %5675
  %5677 = fmul fast float %5667, %5675
  %5678 = fadd fast float %5676, %5673
  %5679 = fadd fast float %5677, %5673
  %5680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5678, float %5679, float %5668, float undef, i32 0, i32 0, i32 undef, float %5640)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5681 = extractvalue %dx.types.ResRet.f32 %5680, 0
  %5682 = extractvalue %dx.types.ResRet.f32 %5680, 1
  %5683 = extractvalue %dx.types.ResRet.f32 %5680, 2
  %5684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5685 = extractvalue %dx.types.CBufRet.f32 %5684, 3
  %5686 = fmul fast float %5685, %5399
  %5687 = call float @dx.op.binary.f32(i32 36, float %4693, float %5686)  ; FMin(a,b)
  %5688 = select i1 %5636, float %5687, float %5686
  %5689 = fmul fast float %5681, %5478
  %5690 = fmul fast float %5689, %5688
  %5691 = fmul fast float %5682, %5478
  %5692 = fmul fast float %5691, %5688
  %5693 = fmul fast float %5683, %5478
  %5694 = fmul fast float %5693, %5688
  %5695 = fadd fast float %5690, %5371
  %5696 = fadd fast float %5692, %5372
  %5697 = fadd fast float %5694, %5373
  %5698 = fmul fast float %5558, %5478
  %5699 = fmul fast float %5559, %5478
  %5700 = fmul fast float %5560, %5478
  %5701 = fadd fast float %5698, %5376
  %5702 = fadd fast float %5699, %5377
  %5703 = fadd fast float %5700, %5378
  %5704 = fsub fast float %5374, %5478
  br label %5480

; <label>:5705                                    ; preds = %5480
  br label %5706

; <label>:5706                                    ; preds = %5705, %5337
  %5707 = phi float [ %5338, %5337 ], [ %5481, %5705 ]
  %5708 = phi float [ %5339, %5337 ], [ %5482, %5705 ]
  %5709 = phi float [ %5340, %5337 ], [ %5483, %5705 ]
  %5710 = phi float [ %5341, %5337 ], [ %5484, %5705 ]
  %5711 = phi float [ %5343, %5337 ], [ %5485, %5705 ]
  %5712 = phi float [ %5344, %5337 ], [ %5486, %5705 ]
  %5713 = phi float [ %5345, %5337 ], [ %5487, %5705 ]
  %5714 = add i32 %5342, 1
  %5715 = icmp ugt i32 %5714, %5334
  br i1 %5715, label %5716, label %5337, !llvm.loop !88

; <label>:5716                                    ; preds = %5706
  br label %5717

; <label>:5717                                    ; preds = %5716, %5319
  %5718 = phi float [ 0.000000e+00, %5319 ], [ %5707, %5716 ]
  %5719 = phi float [ 0.000000e+00, %5319 ], [ %5708, %5716 ]
  %5720 = phi float [ 0.000000e+00, %5319 ], [ %5709, %5716 ]
  %5721 = phi float [ 0.000000e+00, %5319 ], [ %5711, %5716 ]
  %5722 = phi float [ 0.000000e+00, %5319 ], [ %5712, %5716 ]
  %5723 = phi float [ 0.000000e+00, %5319 ], [ %5713, %5716 ]
  %5724 = call float @dx.op.dot3.f32(i32 55, float %5718, float %5719, float %5720, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5725 = select i1 %186, float 0.000000e+00, float %5718
  %5726 = select i1 %186, float %5724, float %5719
  %5727 = select i1 %186, float 0.000000e+00, float %5720
  %5728 = fcmp fast olt float %5243, 0.000000e+00
  %5729 = call float @dx.op.unary.f32(i32 6, float %5243)  ; FAbs(value)
  %5730 = fmul fast float %5729, %5244
  %5731 = fmul fast float %5729, %5245
  %5732 = fmul fast float %5729, %5246
  %5733 = select i1 %5728, float %5244, float %5730
  %5734 = select i1 %5728, float %5245, float %5731
  %5735 = select i1 %5728, float %5246, float %5732
  %5736 = fsub fast float 1.000000e+00, %5729
  %5737 = call float @dx.op.unary.f32(i32 7, float %5736)  ; Saturate(value)
  %5738 = fmul fast float %5737, %5725
  %5739 = fmul fast float %5737, %5726
  %5740 = fmul fast float %5737, %5727
  %5741 = fadd fast float %5733, %5738
  %5742 = fadd fast float %5734, %5739
  %5743 = fadd fast float %5735, %5740
  %5744 = fcmp fast une float %4993, 0.000000e+00
  br i1 %5744, label %5845, label %5745

; <label>:5745                                    ; preds = %5717
  %5746 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5747 = extractvalue %dx.types.CBufRet.f32 %5746, 0
  %5748 = extractvalue %dx.types.CBufRet.f32 %5746, 1
  %5749 = extractvalue %dx.types.CBufRet.f32 %5746, 2
  %5750 = extractvalue %dx.types.CBufRet.f32 %5746, 3
  %5751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.f32 %5751, 0
  %5753 = extractvalue %dx.types.CBufRet.f32 %5751, 1
  %5754 = extractvalue %dx.types.CBufRet.f32 %5751, 2
  %5755 = extractvalue %dx.types.CBufRet.f32 %5751, 3
  %5756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5757 = extractvalue %dx.types.CBufRet.f32 %5756, 0
  %5758 = extractvalue %dx.types.CBufRet.f32 %5756, 1
  %5759 = extractvalue %dx.types.CBufRet.f32 %5756, 2
  %5760 = extractvalue %dx.types.CBufRet.f32 %5756, 3
  %5761 = call float @dx.op.dot3.f32(i32 55, float %5757, float %5758, float %5759, float %4672, float %4673, float %4674)  ; Dot3(ax,ay,az,bx,by,bz)
  %5762 = call float @dx.op.dot3.f32(i32 55, float %5721, float %5722, float %5723, float %5757, float %5758, float %5759)  ; Dot3(ax,ay,az,bx,by,bz)
  %5763 = call float @dx.op.dot3.f32(i32 55, float %144, float %145, float %146, float %5757, float %5758, float %5759)  ; Dot3(ax,ay,az,bx,by,bz)
  %5764 = fadd fast float %4647, -1.000000e+00
  %5765 = fsub fast float %5762, %5763
  %5766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5767 = extractvalue %dx.types.CBufRet.f32 %5766, 2
  %5768 = fmul fast float %5767, %5762
  %5769 = fdiv fast float 1.600000e+02, %5768
  %5770 = fmul fast float %5764, %5764
  %5771 = fmul fast float %5770, 0xBFB5B17960000000
  %5772 = fmul fast float %5771, %5765
  %5773 = fmul fast float %5772, %5769
  %5774 = call float @dx.op.unary.f32(i32 21, float %5773)  ; Exp(value)
  %5775 = fmul fast float %5774, 0x3FF04B2960000000
  %5776 = fsub fast float 0x3FF04B2960000000, %5775
  %5777 = call float @dx.op.unary.f32(i32 7, float %5776)  ; Saturate(value)
  %5778 = fmul fast float %5777, 4.000000e+00
  %5779 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5780 = extractvalue %dx.types.CBufRet.f32 %5779, 0
  %5781 = extractvalue %dx.types.CBufRet.f32 %5779, 1
  %5782 = extractvalue %dx.types.CBufRet.f32 %5779, 2
  %5783 = fadd fast float %5780, %5721
  %5784 = fadd fast float %5781, %5722
  %5785 = fadd fast float %5782, %5723
  %5786 = fmul fast float %5783, %5747
  %5787 = call float @dx.op.tertiary.f32(i32 46, float %5784, float %5748, float %5786)  ; FMad(a,b,c)
  %5788 = call float @dx.op.tertiary.f32(i32 46, float %5785, float %5749, float %5787)  ; FMad(a,b,c)
  %5789 = fadd fast float %5788, %5750
  %5790 = fmul fast float %5783, %5752
  %5791 = call float @dx.op.tertiary.f32(i32 46, float %5784, float %5753, float %5790)  ; FMad(a,b,c)
  %5792 = call float @dx.op.tertiary.f32(i32 46, float %5785, float %5754, float %5791)  ; FMad(a,b,c)
  %5793 = fadd fast float %5792, %5755
  %5794 = fmul fast float %5783, %5757
  %5795 = call float @dx.op.tertiary.f32(i32 46, float %5784, float %5758, float %5794)  ; FMad(a,b,c)
  %5796 = call float @dx.op.tertiary.f32(i32 46, float %5785, float %5759, float %5795)  ; FMad(a,b,c)
  %5797 = fadd fast float %5796, %5760
  %5798 = fdiv fast float %5789, %5797
  %5799 = fdiv fast float %5793, %5797
  %5800 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5801 = extractvalue %dx.types.CBufRet.f32 %5800, 0
  %5802 = extractvalue %dx.types.CBufRet.f32 %5800, 1
  %5803 = fmul fast float %5801, %5798
  %5804 = fmul fast float %5802, %5799
  %5805 = extractvalue %dx.types.CBufRet.f32 %5800, 2
  %5806 = extractvalue %dx.types.CBufRet.f32 %5800, 3
  %5807 = fadd fast float %5803, %5805
  %5808 = fadd fast float %5804, %5806
  %5809 = fmul fast float %5761, 8.000000e+00
  %5810 = call float @dx.op.unary.f32(i32 7, float %5809)  ; Saturate(value)
  %5811 = fmul fast float %5807, 2.000000e+00
  %5812 = fmul fast float %5808, 2.000000e+00
  %5813 = fadd fast float %5811, -1.000000e+00
  %5814 = fadd fast float %5812, -1.000000e+00
  %5815 = fmul fast float %5813, %5813
  %5816 = fsub fast float 1.000000e+00, %5815
  %5817 = call float @dx.op.unary.f32(i32 7, float %5816)  ; Saturate(value)
  %5818 = fmul fast float %5814, %5814
  %5819 = fsub fast float 1.000000e+00, %5818
  %5820 = call float @dx.op.unary.f32(i32 7, float %5819)  ; Saturate(value)
  %5821 = fmul fast float %4993, %5817
  %5822 = fmul fast float %5821, %5820
  %5823 = call float @dx.op.unary.f32(i32 7, float %5822)  ; Saturate(value)
  %5824 = fmul fast float %5823, %5810
  %5825 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5807, float %5808, float undef, float undef, i32 0, i32 0, i32 undef, float %5778)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5826 = extractvalue %dx.types.ResRet.f32 %5825, 0
  %5827 = extractvalue %dx.types.ResRet.f32 %5825, 1
  %5828 = extractvalue %dx.types.ResRet.f32 %5825, 2
  %5829 = select i1 %186, float 0.000000e+00, float %5827
  %5830 = select i1 %186, float 0.000000e+00, float %5828
  %5831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5832 = extractvalue %dx.types.CBufRet.f32 %5831, 2
  %5833 = fmul fast float %5832, %5826
  %5834 = fmul fast float %5829, %5832
  %5835 = fmul fast float %5830, %5832
  %5836 = fsub fast float %5833, %5725
  %5837 = fsub fast float %5834, %5726
  %5838 = fsub fast float %5835, %5727
  %5839 = fmul fast float %5836, %5824
  %5840 = fmul fast float %5837, %5824
  %5841 = fmul fast float %5838, %5824
  %5842 = fadd fast float %5839, %5725
  %5843 = fadd fast float %5840, %5726
  %5844 = fadd fast float %5841, %5727
  br label %5845

; <label>:5845                                    ; preds = %5745, %5717, %5242, %4966
  %5846 = phi float [ %5244, %5242 ], [ %5741, %5717 ], [ %4923, %4966 ], [ %5842, %5745 ]
  %5847 = phi float [ %5245, %5242 ], [ %5742, %5717 ], [ %4924, %4966 ], [ %5843, %5745 ]
  %5848 = phi float [ %5246, %5242 ], [ %5743, %5717 ], [ %4925, %4966 ], [ %5844, %5745 ]
  %5849 = fmul fast float %4972, %4919
  %5850 = fmul fast float %4972, %4920
  %5851 = fmul fast float %4972, %4921
  %5852 = call float @dx.op.dot3.f32(i32 55, float %4638, float %4639, float %4640, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5853 = fcmp fast ogt float %5852, 0x3E7FF19E20000000
  %5854 = fdiv fast float 1.000000e+00, %5852
  %5855 = select i1 %5853, float %5854, float 0.000000e+00
  %5856 = fmul fast float %5855, %4638
  %5857 = fmul fast float %5855, %4639
  %5858 = fmul fast float %5855, %4640
  %5859 = fadd fast float %5856, -1.000000e+00
  %5860 = fadd fast float %5857, -1.000000e+00
  %5861 = fadd fast float %5858, -1.000000e+00
  %5862 = fmul fast float %5859, 5.000000e-01
  %5863 = fmul fast float %5860, 5.000000e-01
  %5864 = fmul fast float %5861, 5.000000e-01
  %5865 = fadd fast float %5862, 1.000000e+00
  %5866 = fadd fast float %5863, 1.000000e+00
  %5867 = fadd fast float %5864, 1.000000e+00
  %5868 = fmul fast float %5846, %4967
  %5869 = fmul fast float %5847, %4968
  %5870 = fmul fast float %5848, %4969
  %5871 = fsub fast float 1.000000e+00, %4666
  %5872 = bitcast float %5871 to i32
  %5873 = sitofp i32 %5872 to float
  %5874 = fmul fast float %5873, 5.000000e+00
  %5875 = fadd fast float %5874, 0xC1EFBF8940000000
  %5876 = fptosi float %5875 to i32
  %5877 = bitcast i32 %5876 to float
  %5878 = fmul fast float %5877, %4036
  %5879 = fmul fast float %4919, %5878
  %5880 = fmul fast float %5879, %4972
  %5881 = fmul fast float %5880, %5865
  %5882 = fmul fast float %4920, %5878
  %5883 = fmul fast float %5882, %4972
  %5884 = fmul fast float %5883, %5866
  %5885 = fmul fast float %4921, %5878
  %5886 = fmul fast float %5885, %4972
  %5887 = fmul fast float %5886, %5867
  %5888 = fmul fast float %5849, %4032
  %5889 = fmul fast float %5850, %4032
  %5890 = fmul fast float %5851, %4032
  %5891 = fadd fast float %5868, %4028
  %5892 = fadd fast float %5891, %5881
  %5893 = fmul fast float %5892, %4032
  %5894 = fadd fast float %5869, %4029
  %5895 = fadd fast float %5894, %5884
  %5896 = fmul fast float %5895, %4032
  %5897 = fadd fast float %5870, %4030
  %5898 = fadd fast float %5897, %5887
  %5899 = fmul fast float %5898, %4032
  %5900 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5901 = extractvalue %dx.types.CBufRet.f32 %5900, 3
  %5902 = fcmp fast oeq float %5901, 0.000000e+00
  br i1 %5902, label %6121, label %5903

; <label>:5903                                    ; preds = %5845
  %5904 = extractvalue %dx.types.CBufRet.f32 %5900, 0
  %5905 = extractvalue %dx.types.CBufRet.f32 %5900, 1
  %5906 = extractvalue %dx.types.CBufRet.f32 %5900, 2
  %5907 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5908 = extractvalue %dx.types.CBufRet.f32 %5907, 0
  %5909 = extractvalue %dx.types.CBufRet.f32 %5907, 1
  %5910 = extractvalue %dx.types.CBufRet.f32 %5907, 2
  %5911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5912 = extractvalue %dx.types.CBufRet.f32 %5911, 0
  %5913 = extractvalue %dx.types.CBufRet.f32 %5911, 1
  %5914 = call float @dx.op.dot3.f32(i32 55, float %5908, float %5909, float %5910, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5915 = select i1 %186, float %5912, float %5908
  %5916 = select i1 %186, float %5914, float %5909
  %5917 = select i1 %186, float %5913, float %5910
  %5918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5919 = extractvalue %dx.types.CBufRet.f32 %5918, 1
  %5920 = fcmp fast une float %5919, 0.000000e+00
  br i1 %5920, label %5921, label %5938

; <label>:5921                                    ; preds = %5903
  %5922 = fptoui float %85 to i32
  %5923 = fptoui float %86 to i32
  %5924 = lshr i32 %5922, 4
  %5925 = lshr i32 %5923, 4
  %5926 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5927 = extractvalue %dx.types.CBufRet.f32 %5926, 0
  %5928 = fptoui float %5927 to i32
  %5929 = add i32 %5928, 15
  %5930 = lshr i32 %5929, 4
  %5931 = mul i32 %5930, %5925
  %5932 = add i32 %5931, %5924
  %5933 = shl i32 %5932, 3
  %5934 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5933, i32 undef)  ; BufferLoad(srv,index,wot)
  %5935 = extractvalue %dx.types.ResRet.i32 %5934, 0
  %5936 = and i32 %5935, -268435456
  %5937 = icmp eq i32 %5936, -1342177280
  br i1 %5937, label %5943, label %5938

; <label>:5938                                    ; preds = %5921, %5903
  %5939 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4652, float %4653, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5940 = extractvalue %dx.types.ResRet.f32 %5939, 0
  %5941 = extractvalue %dx.types.ResRet.f32 %5939, 1
  %5942 = extractvalue %dx.types.ResRet.f32 %5939, 2
  br label %5943

; <label>:5943                                    ; preds = %5938, %5921
  %5944 = phi float [ %5940, %5938 ], [ 0.000000e+00, %5921 ]
  %5945 = phi float [ %5941, %5938 ], [ 0.000000e+00, %5921 ]
  %5946 = phi float [ %5942, %5938 ], [ 0.000000e+00, %5921 ]
  %5947 = call float @dx.op.binary.f32(i32 36, float %5945, float %5946)  ; FMin(a,b)
  %5948 = call float @dx.op.binary.f32(i32 36, float %5944, float %5947)  ; FMin(a,b)
  %5949 = fcmp fast ogt float %5948, 0.000000e+00
  br i1 %5949, label %5950, label %6121, !dx.controlflow.hints !90

; <label>:5950                                    ; preds = %5943
  %5951 = fmul fast float %5944, %5915
  %5952 = fmul fast float %5945, %5916
  %5953 = fmul fast float %5946, %5917
  %5954 = fsub fast float %5904, %4637
  %5955 = fsub fast float %5905, %4636
  %5956 = fsub fast float %5906, %4635
  %5957 = call float @dx.op.dot3.f32(i32 55, float %5954, float %5955, float %5956, float %5954, float %5955, float %5956)  ; Dot3(ax,ay,az,bx,by,bz)
  %5958 = call float @dx.op.unary.f32(i32 25, float %5957)  ; Rsqrt(value)
  %5959 = fmul fast float %5958, %5954
  %5960 = fmul fast float %5958, %5955
  %5961 = fmul fast float %5958, %5956
  %5962 = call float @dx.op.dot3.f32(i32 55, float %5904, float %5905, float %5906, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %5963 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4633, float %4632, float %5959, float %5960, float %5961)  ; Dot3(ax,ay,az,bx,by,bz)
  %5964 = call float @dx.op.unary.f32(i32 7, float %5962)  ; Saturate(value)
  %5965 = fmul fast float %5964, %5964
  %5966 = fmul fast float %5965, %4691
  %5967 = call float @dx.op.unary.f32(i32 7, float %5966)  ; Saturate(value)
  %5968 = fmul fast float %5967, %5964
  %5969 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %5959, float %5960, float %5961)  ; Dot3(ax,ay,az,bx,by,bz)
  %5970 = fmul fast float %5969, %5969
  %5971 = call float @dx.op.unary.f32(i32 6, float %5962)  ; FAbs(value)
  %5972 = fsub fast float 1.000000e+00, %4684
  %5973 = fmul fast float %4666, %4666
  %5974 = fmul fast float %5973, %5972
  %5975 = fadd fast float %5974, %4684
  %5976 = bitcast float %5975 to i32
  %5977 = ashr i32 %5976, 1
  %5978 = add nsw i32 %5977, 532487669
  %5979 = bitcast i32 %5978 to float
  %5980 = fadd fast float %5979, %4666
  %5981 = fmul fast float %4684, %5970
  %5982 = fsub fast float 1.000000e+00, %5970
  %5983 = fadd fast float %5982, %5981
  %5984 = fmul fast float %5971, %5971
  %5985 = fmul fast float %5984, %5972
  %5986 = fadd fast float %5985, %4684
  %5987 = bitcast float %5986 to i32
  %5988 = ashr i32 %5987, 1
  %5989 = add nsw i32 %5988, 532487669
  %5990 = bitcast i32 %5989 to float
  %5991 = fadd fast float %5990, %5971
  %5992 = fmul fast float %5983, %5983
  %5993 = fmul fast float %5992, %5980
  %5994 = fmul fast float %5993, %5991
  %5995 = fdiv fast float 0x3FF0A00000000000, %5994
  %5996 = fmul fast float %5995, %4684
  %5997 = call float @dx.op.unary.f32(i32 6, float %5963)  ; FAbs(value)
  %5998 = fsub fast float 1.000000e+00, %5997
  %5999 = bitcast float %5998 to i32
  %6000 = sitofp i32 %5999 to float
  %6001 = fmul fast float %6000, 5.000000e+00
  %6002 = fadd fast float %6001, 0xC1EFBF8940000000
  %6003 = fptosi float %6002 to i32
  %6004 = bitcast i32 %6003 to float
  %6005 = fsub fast float 1.000000e+00, %4641
  %6006 = fsub fast float 1.000000e+00, %4642
  %6007 = fsub fast float 1.000000e+00, %4664
  %6008 = fmul fast float %6004, %6005
  %6009 = fmul fast float %6004, %6006
  %6010 = fmul fast float %6004, %6007
  %6011 = fadd fast float %6008, %4641
  %6012 = fadd fast float %6009, %4642
  %6013 = fadd fast float %6010, %4664
  br i1 %4939, label %6014, label %6037

; <label>:6014                                    ; preds = %5950
  %6015 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4035, float %5997, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6016 = extractvalue %dx.types.ResRet.f32 %6015, 0
  %6017 = extractvalue %dx.types.ResRet.f32 %6015, 1
  %6018 = extractvalue %dx.types.ResRet.f32 %6015, 2
  %6019 = fadd fast float %6016, -5.000000e-01
  %6020 = fadd fast float %6017, -5.000000e-01
  %6021 = fadd fast float %6018, -5.000000e-01
  %6022 = fmul fast float %4641, 4.000000e+00
  %6023 = fmul fast float %6022, %6005
  %6024 = fmul fast float %6023, %6019
  %6025 = fmul fast float %4642, 4.000000e+00
  %6026 = fmul fast float %6025, %6006
  %6027 = fmul fast float %6026, %6020
  %6028 = fmul fast float %4664, 4.000000e+00
  %6029 = fmul fast float %6028, %6007
  %6030 = fmul fast float %6029, %6021
  %6031 = fadd fast float %6024, %6011
  %6032 = fadd fast float %6027, %6012
  %6033 = fadd fast float %6030, %6013
  %6034 = call float @dx.op.unary.f32(i32 7, float %6031)  ; Saturate(value)
  %6035 = call float @dx.op.unary.f32(i32 7, float %6032)  ; Saturate(value)
  %6036 = call float @dx.op.unary.f32(i32 7, float %6033)  ; Saturate(value)
  br label %6037

; <label>:6037                                    ; preds = %6014, %5950
  %6038 = phi float [ %6034, %6014 ], [ %6011, %5950 ]
  %6039 = phi float [ %6035, %6014 ], [ %6012, %5950 ]
  %6040 = phi float [ %6036, %6014 ], [ %6013, %5950 ]
  %6041 = fmul fast float %5962, 9.843750e-01
  %6042 = fadd fast float %6041, 7.812500e-03
  %6043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6042, float %4929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6044 = extractvalue %dx.types.ResRet.f32 %6043, 2
  %6045 = extractvalue %dx.types.ResRet.f32 %6043, 3
  %6046 = fmul fast float %6044, %4641
  %6047 = fmul fast float %6044, %4642
  %6048 = fmul fast float %6044, %4664
  %6049 = fadd fast float %6046, %6045
  %6050 = fadd fast float %6047, %6045
  %6051 = fadd fast float %6048, %6045
  br i1 %4939, label %6052, label %6075

; <label>:6052                                    ; preds = %6037
  %6053 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4035, float %5962, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6054 = extractvalue %dx.types.ResRet.f32 %6053, 0
  %6055 = extractvalue %dx.types.ResRet.f32 %6053, 1
  %6056 = extractvalue %dx.types.ResRet.f32 %6053, 2
  %6057 = fadd fast float %6054, -5.000000e-01
  %6058 = fadd fast float %6055, -5.000000e-01
  %6059 = fadd fast float %6056, -5.000000e-01
  %6060 = fmul fast float %4641, 4.000000e+00
  %6061 = fmul fast float %6060, %6005
  %6062 = fmul fast float %6061, %6057
  %6063 = fmul fast float %4642, 4.000000e+00
  %6064 = fmul fast float %6063, %6006
  %6065 = fmul fast float %6064, %6058
  %6066 = fmul fast float %4664, 4.000000e+00
  %6067 = fmul fast float %6066, %6007
  %6068 = fmul fast float %6067, %6059
  %6069 = fadd fast float %6062, %6049
  %6070 = fadd fast float %6065, %6050
  %6071 = fadd fast float %6068, %6051
  %6072 = call float @dx.op.unary.f32(i32 7, float %6069)  ; Saturate(value)
  %6073 = call float @dx.op.unary.f32(i32 7, float %6070)  ; Saturate(value)
  %6074 = call float @dx.op.unary.f32(i32 7, float %6071)  ; Saturate(value)
  br label %6075

; <label>:6075                                    ; preds = %6052, %6037
  %6076 = phi float [ %6072, %6052 ], [ %6049, %6037 ]
  %6077 = phi float [ %6073, %6052 ], [ %6050, %6037 ]
  %6078 = phi float [ %6074, %6052 ], [ %6051, %6037 ]
  %6079 = call float @dx.op.binary.f32(i32 35, float %6077, float %6078)  ; FMax(a,b)
  %6080 = call float @dx.op.binary.f32(i32 35, float %6076, float %6079)  ; FMax(a,b)
  %6081 = fsub fast float 1.000000e+00, %6080
  %6082 = fmul fast float %6038, %5996
  %6083 = fmul fast float %6039, %5996
  %6084 = fmul fast float %6040, %5996
  %6085 = fsub fast float 1.000000e+00, %5963
  %6086 = bitcast float %6085 to i32
  %6087 = sitofp i32 %6086 to float
  %6088 = fmul fast float %6087, 5.000000e+00
  %6089 = fadd fast float %6088, 0xC1EFBF8940000000
  %6090 = fptosi float %6089 to i32
  %6091 = bitcast i32 %6090 to float
  %6092 = fmul fast float %6091, %4036
  %6093 = fmul fast float %6081, %6092
  %6094 = fmul fast float %6093, %5865
  %6095 = fmul fast float %6093, %5866
  %6096 = fmul fast float %6093, %5867
  %6097 = fadd fast float %6094, %6082
  %6098 = fadd fast float %6095, %6083
  %6099 = fadd fast float %6096, %6084
  %6100 = fmul fast float %5968, %5951
  %6101 = fmul fast float %6100, %6081
  %6102 = fmul fast float %5968, %5952
  %6103 = fmul fast float %6102, %6081
  %6104 = fmul fast float %5968, %5953
  %6105 = fmul fast float %6104, %6081
  %6106 = fmul fast float %6100, %6097
  %6107 = fmul fast float %6102, %6098
  %6108 = fmul fast float %6104, %6099
  %6109 = fadd fast float %6101, %5849
  %6110 = fmul fast float %6109, %4032
  %6111 = fadd fast float %6103, %5850
  %6112 = fmul fast float %6111, %4032
  %6113 = fadd fast float %6105, %5851
  %6114 = fmul fast float %6113, %4032
  %6115 = fadd fast float %6106, %5892
  %6116 = fmul fast float %6115, %4032
  %6117 = fadd fast float %6107, %5895
  %6118 = fmul fast float %6117, %4032
  %6119 = fadd fast float %6108, %5898
  %6120 = fmul fast float %6119, %4032
  br label %6121

; <label>:6121                                    ; preds = %6075, %5943, %5845
  %6122 = phi float [ %5893, %5845 ], [ %5893, %5943 ], [ %6116, %6075 ]
  %6123 = phi float [ %5896, %5845 ], [ %5896, %5943 ], [ %6118, %6075 ]
  %6124 = phi float [ %5899, %5845 ], [ %5899, %5943 ], [ %6120, %6075 ]
  %6125 = phi float [ %5888, %5845 ], [ %5888, %5943 ], [ %6110, %6075 ]
  %6126 = phi float [ %5889, %5845 ], [ %5889, %5943 ], [ %6112, %6075 ]
  %6127 = phi float [ %5890, %5845 ], [ %5890, %5943 ], [ %6114, %6075 ]
  %6128 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6129 = extractvalue %dx.types.CBufRet.i32 %6128, 0
  %6130 = icmp eq i32 %6129, 0
  br i1 %6130, label %6561, label %6131

; <label>:6131                                    ; preds = %6121
  %6132 = fptoui float %85 to i32
  %6133 = fptoui float %86 to i32
  %6134 = lshr i32 %6132, 4
  %6135 = lshr i32 %6133, 4
  %6136 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6137 = extractvalue %dx.types.CBufRet.i32 %6136, 0
  %6138 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6135, i32 %6137, i32 %6134)  ; UMad(a,b,c)
  %6139 = add nsw i32 %6129, -1
  %6140 = call i32 @dx.op.binary.i32(i32 37, i32 %6139, i32 0)  ; IMax(a,b)
  %6141 = call float @dx.op.binary.f32(i32 35, float %80, float 0.000000e+00)  ; FMax(a,b)
  %6142 = fptoui float %6141 to i32
  %6143 = lshr i32 %6142, 5
  %6144 = call i32 @dx.op.binary.i32(i32 40, i32 %6143, i32 8191)  ; UMin(a,b)
  %6145 = shl i32 %6144, 2
  %6146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6145, i32 undef)  ; BufferLoad(srv,index,wot)
  %6147 = extractvalue %dx.types.ResRet.i32 %6146, 0
  %6148 = lshr i32 %6147, 16
  %6149 = and i32 %6147, 65535
  %6150 = lshr i32 %6147, 21
  %6151 = lshr i32 %6149, 5
  %6152 = call i32 @dx.op.binary.i32(i32 40, i32 %6151, i32 %6140)  ; UMin(a,b)
  %6153 = icmp ugt i32 %6150, %6152
  br i1 %6153, label %6561, label %6154

; <label>:6154                                    ; preds = %6131
  br label %6155

; <label>:6155                                    ; preds = %6551, %6154
  %6156 = phi i32 [ %6558, %6551 ], [ %6150, %6154 ]
  %6157 = phi float [ %6552, %6551 ], [ %6122, %6154 ]
  %6158 = phi float [ %6553, %6551 ], [ %6123, %6154 ]
  %6159 = phi float [ %6554, %6551 ], [ %6124, %6154 ]
  %6160 = phi float [ %6555, %6551 ], [ %6125, %6154 ]
  %6161 = phi float [ %6556, %6551 ], [ %6126, %6154 ]
  %6162 = phi float [ %6557, %6551 ], [ %6127, %6154 ]
  %6163 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6164 = extractvalue %dx.types.CBufRet.i32 %6163, 0
  %6165 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6138, i32 %6164, i32 %6156)  ; UMad(a,b,c)
  %6166 = shl i32 %6165, 2
  %6167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6166, i32 undef)  ; BufferLoad(srv,index,wot)
  %6168 = extractvalue %dx.types.ResRet.i32 %6167, 0
  %6169 = shl i32 %6156, 5
  %6170 = sub nsw i32 %6148, %6169
  %6171 = call i32 @dx.op.binary.i32(i32 37, i32 %6170, i32 0)  ; IMax(a,b)
  %6172 = call i32 @dx.op.binary.i32(i32 38, i32 %6171, i32 31)  ; IMin(a,b)
  %6173 = sub nsw i32 1, %6148
  %6174 = add nsw i32 %6173, %6149
  %6175 = call i32 @dx.op.binary.i32(i32 37, i32 %6174, i32 0)  ; IMax(a,b)
  %6176 = call i32 @dx.op.binary.i32(i32 38, i32 %6175, i32 32)  ; IMin(a,b)
  %6177 = and i32 %6176, 31
  %6178 = shl i32 -1, %6177
  %6179 = xor i32 %6178, -1
  %6180 = and i32 %6172, 31
  %6181 = shl i32 %6179, %6180
  %6182 = icmp eq i32 %6176, 32
  %6183 = select i1 %6182, i32 -1, i32 %6181
  %6184 = and i32 %6183, %6168
  %6185 = icmp eq i32 %6184, 0
  br i1 %6185, label %6551, label %6186

; <label>:6186                                    ; preds = %6155
  br label %6187

; <label>:6187                                    ; preds = %6267, %6186
  %6188 = phi i32 [ %6199, %6267 ], [ %6184, %6186 ]
  %6189 = phi float [ %6268, %6267 ], [ %6157, %6186 ]
  %6190 = phi float [ %6269, %6267 ], [ %6158, %6186 ]
  %6191 = phi float [ %6270, %6267 ], [ %6159, %6186 ]
  %6192 = phi float [ %6271, %6267 ], [ %6160, %6186 ]
  %6193 = phi float [ %6272, %6267 ], [ %6161, %6186 ]
  %6194 = phi float [ %6273, %6267 ], [ %6162, %6186 ]
  %6195 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6188)  ; FirstbitLo(value)
  %6196 = add i32 %6195, %6169
  %6197 = and i32 %6195, 31
  %6198 = shl i32 1, %6197
  %6199 = xor i32 %6198, %6188
  %6200 = mul i32 %6196, 112
  %6201 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6200, i32 undef)  ; BufferLoad(srv,index,wot)
  %6202 = extractvalue %dx.types.ResRet.f32 %6201, 0
  %6203 = extractvalue %dx.types.ResRet.f32 %6201, 1
  %6204 = extractvalue %dx.types.ResRet.f32 %6201, 2
  %6205 = or i32 %6200, 12
  %6206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6205, i32 undef)  ; BufferLoad(srv,index,wot)
  %6207 = extractvalue %dx.types.ResRet.f32 %6206, 0
  %6208 = add i32 %6200, 44
  %6209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6208, i32 undef)  ; BufferLoad(srv,index,wot)
  %6210 = extractvalue %dx.types.ResRet.f32 %6209, 0
  %6211 = add i32 %6200, 48
  %6212 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6211, i32 undef)  ; BufferLoad(srv,index,wot)
  %6213 = extractvalue %dx.types.ResRet.f32 %6212, 0
  %6214 = extractvalue %dx.types.ResRet.f32 %6212, 1
  %6215 = extractvalue %dx.types.ResRet.f32 %6212, 2
  %6216 = add i32 %6200, 80
  %6217 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6216, i32 undef)  ; BufferLoad(srv,index,wot)
  %6218 = extractvalue %dx.types.ResRet.f32 %6217, 1
  %6219 = extractvalue %dx.types.ResRet.f32 %6217, 2
  %6220 = call float @dx.op.dot3.f32(i32 55, float %6202, float %6203, float %6204, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6221 = select i1 %186, float %6218, float %6202
  %6222 = select i1 %186, float %6220, float %6203
  %6223 = select i1 %186, float %6219, float %6204
  %6224 = fsub fast float %6213, %144
  %6225 = fsub fast float %6214, %145
  %6226 = fsub fast float %6215, %146
  %6227 = call float @dx.op.dot3.f32(i32 55, float %6224, float %6225, float %6226, float %6224, float %6225, float %6226)  ; Dot3(ax,ay,az,bx,by,bz)
  %6228 = call float @dx.op.unary.f32(i32 24, float %6227)  ; Sqrt(value)
  %6229 = fdiv fast float 1.000000e+00, %6228
  %6230 = fmul fast float %6229, %6224
  %6231 = fmul fast float %6229, %6225
  %6232 = fmul fast float %6229, %6226
  %6233 = fadd fast float %6228, %6207
  %6234 = fdiv fast float 1.000000e+00, %6233
  %6235 = fmul float %6210, %6234
  %6236 = fmul float %6235, %6235
  %6237 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6238 = and i32 %6198, %6184
  %6239 = icmp eq i32 %6238, 0
  br i1 %6239, label %6262, label %6240, !dx.controlflow.hints !91

; <label>:6240                                    ; preds = %6187
  %6241 = lshr i32 %6132, 5
  %6242 = lshr i32 %6133, 5
  %6243 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6241, i32 %6242, i32 %6196, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6244 = extractvalue %dx.types.ResRet.i32 %6243, 0
  %6245 = and i32 %6244, 3
  %6246 = icmp eq i32 %6245, 0
  %6247 = select i1 %6246, float 1.000000e+00, float 0.000000e+00
  %6248 = icmp eq i32 %6245, 3
  br i1 %6248, label %6249, label %6262

; <label>:6249                                    ; preds = %6240
  %6250 = lshr i32 %6244, 10
  %6251 = and i32 %6250, 8160
  %6252 = and i32 %6133, 31
  %6253 = or i32 %6251, %6252
  %6254 = lshr i32 %6244, 1
  %6255 = and i32 %6254, 16352
  %6256 = and i32 %6132, 31
  %6257 = or i32 %6255, %6256
  %6258 = lshr i32 %6244, 23
  %6259 = and i32 %6258, 255
  %6260 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6257, i32 %6253, i32 %6259, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6261 = extractvalue %dx.types.ResRet.f32 %6260, 0
  br label %6262

; <label>:6262                                    ; preds = %6249, %6240, %6187
  %6263 = phi float [ %6261, %6249 ], [ %6247, %6240 ], [ 0.000000e+00, %6187 ]
  %6264 = call float @dx.op.binary.f32(i32 36, float %6263, float %6263)  ; FMin(a,b)
  %6265 = call float @dx.op.binary.f32(i32 36, float %6263, float %6264)  ; FMin(a,b)
  %6266 = fcmp fast ogt float %6265, 0.000000e+00
  br i1 %6266, label %6275, label %6267, !dx.controlflow.hints !92

; <label>:6267                                    ; preds = %6507, %6262
  %6268 = phi float [ %6189, %6262 ], [ %6547, %6507 ]
  %6269 = phi float [ %6190, %6262 ], [ %6548, %6507 ]
  %6270 = phi float [ %6191, %6262 ], [ %6549, %6507 ]
  %6271 = phi float [ %6192, %6262 ], [ %6541, %6507 ]
  %6272 = phi float [ %6193, %6262 ], [ %6542, %6507 ]
  %6273 = phi float [ %6194, %6262 ], [ %6543, %6507 ]
  %6274 = icmp eq i32 %6188, %6198
  br i1 %6274, label %6550, label %6187

; <label>:6275                                    ; preds = %6262
  %6276 = fmul fast float %6263, %6221
  %6277 = fmul fast float %6263, %6222
  %6278 = fmul fast float %6263, %6223
  %6279 = fsub fast float %6215, %4437
  %6280 = fcmp fast ogt float %6279, 0.000000e+00
  %6281 = fsub fast float %146, %4437
  %6282 = fcmp fast ogt float %6281, 0.000000e+00
  %6283 = xor i1 %6282, %6280
  %6284 = fsub fast float %4437, %6215
  %6285 = fmul fast float %6284, 2.000000e+00
  %6286 = fadd fast float %6285, %6215
  %6287 = select i1 %6283, float %6215, float %6286
  %6288 = fsub fast float %6287, %146
  %6289 = call float @dx.op.dot3.f32(i32 55, float %6224, float %6225, float %6288, float %6224, float %6225, float %6288)  ; Dot3(ax,ay,az,bx,by,bz)
  %6290 = call float @dx.op.unary.f32(i32 25, float %6289)  ; Rsqrt(value)
  %6291 = fmul fast float %6290, %6224
  %6292 = fmul fast float %6290, %6225
  %6293 = fmul fast float %6290, %6288
  %6294 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4445)  ; Dot3(ax,ay,az,bx,by,bz)
  %6295 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6291, float %6292, float %6293)  ; Dot3(ax,ay,az,bx,by,bz)
  %6296 = fdiv fast float 1.000000e+00, %6295
  %6297 = fmul fast float %6296, %6294
  %6298 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6281, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6299 = fcmp fast ogt float %6298, 0.000000e+00
  %6300 = fcmp fast olt float %6298, 0.000000e+00
  %6301 = zext i1 %6299 to i32
  %6302 = zext i1 %6300 to i32
  %6303 = sub nsw i32 %6301, %6302
  %6304 = sitofp i32 %6303 to float
  %6305 = fsub fast float %6287, %4437
  %6306 = call float @dx.op.dot3.f32(i32 55, float %6224, float %6225, float %6305, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6307 = fcmp fast ogt float %6306, 0.000000e+00
  %6308 = fcmp fast olt float %6306, 0.000000e+00
  %6309 = zext i1 %6307 to i32
  %6310 = zext i1 %6308 to i32
  %6311 = sub nsw i32 %6309, %6310
  %6312 = sitofp i32 %6311 to float
  %6313 = fcmp fast une float %6304, %6312
  br i1 %6313, label %6314, label %6324

; <label>:6314                                    ; preds = %6275
  %6315 = fmul fast float %6297, %6293
  %6316 = fmul fast float %6297, %6292
  %6317 = fmul fast float %6297, %6291
  %6318 = fmul fast float %6317, %6317
  %6319 = fmul fast float %6316, %6316
  %6320 = fadd fast float %6318, %6319
  %6321 = fmul fast float %6315, %6315
  %6322 = fadd fast float %6320, %6321
  %6323 = call float @dx.op.unary.f32(i32 24, float %6322)  ; Sqrt(value)
  br label %6336

; <label>:6324                                    ; preds = %6275
  %6325 = icmp slt i32 %6303, 0
  br i1 %6325, label %6326, label %6336

; <label>:6326                                    ; preds = %6324
  %6327 = fsub fast float %144, %6213
  %6328 = fsub fast float %145, %6214
  %6329 = fsub fast float %146, %6287
  %6330 = fmul fast float %6327, %6327
  %6331 = fmul fast float %6328, %6328
  %6332 = fadd fast float %6330, %6331
  %6333 = fmul fast float %6329, %6329
  %6334 = fadd fast float %6332, %6333
  %6335 = call float @dx.op.unary.f32(i32 24, float %6334)  ; Sqrt(value)
  br label %6336

; <label>:6336                                    ; preds = %6326, %6324, %6314
  %6337 = phi float [ %6323, %6314 ], [ %6335, %6326 ], [ 0.000000e+00, %6324 ]
  %6338 = and i1 %6282, %6280
  %6339 = fsub fast float -0.000000e+00, %6337
  %6340 = select i1 %6338, float -0.000000e+00, float %6339
  %6341 = fmul fast float %4438, 0x3FF7154760000000
  %6342 = fmul fast float %6341, %6340
  %6343 = fmul fast float %4439, 0x3FF7154760000000
  %6344 = fmul fast float %6343, %6340
  %6345 = fmul fast float %4440, 0x3FF7154760000000
  %6346 = fmul fast float %6345, %6340
  %6347 = call float @dx.op.unary.f32(i32 21, float %6342)  ; Exp(value)
  %6348 = call float @dx.op.unary.f32(i32 21, float %6344)  ; Exp(value)
  %6349 = call float @dx.op.unary.f32(i32 21, float %6346)  ; Exp(value)
  %6350 = call float @dx.op.unary.f32(i32 7, float %6347)  ; Saturate(value)
  %6351 = call float @dx.op.unary.f32(i32 7, float %6348)  ; Saturate(value)
  %6352 = call float @dx.op.unary.f32(i32 7, float %6349)  ; Saturate(value)
  %6353 = fmul fast float %6276, %6350
  %6354 = fmul fast float %6277, %6351
  %6355 = fmul fast float %6278, %6352
  %6356 = fsub fast float %6230, %4637
  %6357 = fsub fast float %6231, %4636
  %6358 = fsub fast float %6232, %4635
  %6359 = call float @dx.op.dot3.f32(i32 55, float %6356, float %6357, float %6358, float %6356, float %6357, float %6358)  ; Dot3(ax,ay,az,bx,by,bz)
  %6360 = call float @dx.op.unary.f32(i32 25, float %6359)  ; Rsqrt(value)
  %6361 = fmul fast float %6360, %6356
  %6362 = fmul fast float %6360, %6357
  %6363 = fmul fast float %6360, %6358
  %6364 = call float @dx.op.dot3.f32(i32 55, float %6230, float %6231, float %6232, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %6365 = call float @dx.op.dot3.f32(i32 55, float %4634, float %4633, float %4632, float %6361, float %6362, float %6363)  ; Dot3(ax,ay,az,bx,by,bz)
  %6366 = call float @dx.op.unary.f32(i32 7, float %6364)  ; Saturate(value)
  %6367 = fmul fast float %6366, %6237
  %6368 = fmul fast float %6366, %6366
  %6369 = fmul fast float %6368, %4691
  %6370 = call float @dx.op.unary.f32(i32 7, float %6369)  ; Saturate(value)
  %6371 = fmul fast float %6367, %6370
  %6372 = bitcast float %6227 to i32
  %6373 = ashr i32 %6372, 1
  %6374 = sub nsw i32 1597463007, %6373
  %6375 = bitcast i32 %6374 to float
  %6376 = fmul fast float %6375, %6224
  %6377 = fmul fast float %6375, %6225
  %6378 = fmul fast float %6375, %6226
  %6379 = fsub fast float %6376, %4637
  %6380 = fsub fast float %6377, %4636
  %6381 = fsub fast float %6378, %4635
  %6382 = call float @dx.op.dot3.f32(i32 55, float %6379, float %6380, float %6381, float %6379, float %6380, float %6381)  ; Dot3(ax,ay,az,bx,by,bz)
  %6383 = call float @dx.op.unary.f32(i32 25, float %6382)  ; Rsqrt(value)
  %6384 = fmul fast float %6379, %6383
  %6385 = fmul fast float %6380, %6383
  %6386 = fmul fast float %6381, %6383
  %6387 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %6384, float %6385, float %6386)  ; Dot3(ax,ay,az,bx,by,bz)
  %6388 = fmul fast float %6387, %6387
  %6389 = call float @dx.op.unary.f32(i32 6, float %6364)  ; FAbs(value)
  %6390 = fsub fast float 1.000000e+00, %4684
  %6391 = fmul fast float %4666, %4666
  %6392 = fmul fast float %6391, %6390
  %6393 = fadd fast float %6392, %4684
  %6394 = bitcast float %6393 to i32
  %6395 = ashr i32 %6394, 1
  %6396 = add nsw i32 %6395, 532487669
  %6397 = bitcast i32 %6396 to float
  %6398 = fadd fast float %6397, %4666
  %6399 = fmul fast float %4684, %6388
  %6400 = fsub fast float 1.000000e+00, %6388
  %6401 = fadd fast float %6400, %6399
  %6402 = fmul fast float %6389, %6389
  %6403 = fmul fast float %6402, %6390
  %6404 = fadd fast float %6403, %4684
  %6405 = bitcast float %6404 to i32
  %6406 = ashr i32 %6405, 1
  %6407 = add nsw i32 %6406, 532487669
  %6408 = bitcast i32 %6407 to float
  %6409 = fadd fast float %6408, %6389
  %6410 = fmul fast float %6401, %6401
  %6411 = fmul fast float %6410, %6398
  %6412 = fmul fast float %6411, %6409
  %6413 = fdiv fast float 1.000000e+00, %6412
  %6414 = bitcast float %4684 to i32
  %6415 = sitofp i32 %6414 to float
  %6416 = fmul fast float %6415, 0x3FE7F73180000000
  %6417 = fadd fast float %6416, 0x41AFE27C40000000
  %6418 = fptosi float %6417 to i32
  %6419 = bitcast i32 %6418 to float
  %6420 = fmul fast float %6210, 0x3FD80E9D60000000
  %6421 = fmul fast float %6420, %6375
  %6422 = fadd fast float %6419, %6421
  %6423 = bitcast float %6422 to i32
  %6424 = sub nsw i32 2129859010, %6423
  %6425 = bitcast i32 %6424 to float
  %6426 = fmul fast float %4684, %6413
  %6427 = fmul fast float %6426, %6419
  %6428 = fmul fast float %6427, %6425
  %6429 = call float @dx.op.unary.f32(i32 6, float %6365)  ; FAbs(value)
  %6430 = fsub fast float 1.000000e+00, %6429
  %6431 = bitcast float %6430 to i32
  %6432 = sitofp i32 %6431 to float
  %6433 = fmul fast float %6432, 5.000000e+00
  %6434 = fadd fast float %6433, 0xC1EFBF8940000000
  %6435 = fptosi float %6434 to i32
  %6436 = bitcast i32 %6435 to float
  %6437 = fsub fast float 1.000000e+00, %4641
  %6438 = fsub fast float 1.000000e+00, %4642
  %6439 = fsub fast float 1.000000e+00, %4664
  %6440 = fmul fast float %6436, %6437
  %6441 = fmul fast float %6436, %6438
  %6442 = fmul fast float %6436, %6439
  %6443 = fadd fast float %6440, %4641
  %6444 = fadd fast float %6441, %4642
  %6445 = fadd fast float %6442, %4664
  br i1 %4939, label %6446, label %6469

; <label>:6446                                    ; preds = %6336
  %6447 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4035, float %6429, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6448 = extractvalue %dx.types.ResRet.f32 %6447, 0
  %6449 = extractvalue %dx.types.ResRet.f32 %6447, 1
  %6450 = extractvalue %dx.types.ResRet.f32 %6447, 2
  %6451 = fadd fast float %6448, -5.000000e-01
  %6452 = fadd fast float %6449, -5.000000e-01
  %6453 = fadd fast float %6450, -5.000000e-01
  %6454 = fmul fast float %4641, 4.000000e+00
  %6455 = fmul fast float %6454, %6437
  %6456 = fmul fast float %6455, %6451
  %6457 = fmul fast float %4642, 4.000000e+00
  %6458 = fmul fast float %6457, %6438
  %6459 = fmul fast float %6458, %6452
  %6460 = fmul fast float %4664, 4.000000e+00
  %6461 = fmul fast float %6460, %6439
  %6462 = fmul fast float %6461, %6453
  %6463 = fadd fast float %6456, %6443
  %6464 = fadd fast float %6459, %6444
  %6465 = fadd fast float %6462, %6445
  %6466 = call float @dx.op.unary.f32(i32 7, float %6463)  ; Saturate(value)
  %6467 = call float @dx.op.unary.f32(i32 7, float %6464)  ; Saturate(value)
  %6468 = call float @dx.op.unary.f32(i32 7, float %6465)  ; Saturate(value)
  br label %6469

; <label>:6469                                    ; preds = %6446, %6336
  %6470 = phi float [ %6466, %6446 ], [ %6443, %6336 ]
  %6471 = phi float [ %6467, %6446 ], [ %6444, %6336 ]
  %6472 = phi float [ %6468, %6446 ], [ %6445, %6336 ]
  %6473 = fmul fast float %6364, 9.843750e-01
  %6474 = fadd fast float %6473, 7.812500e-03
  %6475 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6474, float %4929, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6476 = extractvalue %dx.types.ResRet.f32 %6475, 2
  %6477 = extractvalue %dx.types.ResRet.f32 %6475, 3
  %6478 = fmul fast float %6476, %4641
  %6479 = fmul fast float %6476, %4642
  %6480 = fmul fast float %6476, %4664
  %6481 = fadd fast float %6478, %6477
  %6482 = fadd fast float %6479, %6477
  %6483 = fadd fast float %6480, %6477
  br i1 %4939, label %6484, label %6507

; <label>:6484                                    ; preds = %6469
  %6485 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4035, float %6364, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6486 = extractvalue %dx.types.ResRet.f32 %6485, 0
  %6487 = extractvalue %dx.types.ResRet.f32 %6485, 1
  %6488 = extractvalue %dx.types.ResRet.f32 %6485, 2
  %6489 = fadd fast float %6486, -5.000000e-01
  %6490 = fadd fast float %6487, -5.000000e-01
  %6491 = fadd fast float %6488, -5.000000e-01
  %6492 = fmul fast float %4641, 4.000000e+00
  %6493 = fmul fast float %6492, %6437
  %6494 = fmul fast float %6493, %6489
  %6495 = fmul fast float %4642, 4.000000e+00
  %6496 = fmul fast float %6495, %6438
  %6497 = fmul fast float %6496, %6490
  %6498 = fmul fast float %4664, 4.000000e+00
  %6499 = fmul fast float %6498, %6439
  %6500 = fmul fast float %6499, %6491
  %6501 = fadd fast float %6494, %6481
  %6502 = fadd fast float %6497, %6482
  %6503 = fadd fast float %6500, %6483
  %6504 = call float @dx.op.unary.f32(i32 7, float %6501)  ; Saturate(value)
  %6505 = call float @dx.op.unary.f32(i32 7, float %6502)  ; Saturate(value)
  %6506 = call float @dx.op.unary.f32(i32 7, float %6503)  ; Saturate(value)
  br label %6507

; <label>:6507                                    ; preds = %6484, %6469
  %6508 = phi float [ %6504, %6484 ], [ %6481, %6469 ]
  %6509 = phi float [ %6505, %6484 ], [ %6482, %6469 ]
  %6510 = phi float [ %6506, %6484 ], [ %6483, %6469 ]
  %6511 = call float @dx.op.binary.f32(i32 35, float %6509, float %6510)  ; FMax(a,b)
  %6512 = call float @dx.op.binary.f32(i32 35, float %6508, float %6511)  ; FMax(a,b)
  %6513 = fsub fast float 1.000000e+00, %6512
  %6514 = fmul fast float %6470, %6428
  %6515 = fmul fast float %6471, %6428
  %6516 = fmul fast float %6472, %6428
  %6517 = fsub fast float 1.000000e+00, %6365
  %6518 = bitcast float %6517 to i32
  %6519 = sitofp i32 %6518 to float
  %6520 = fmul fast float %6519, 5.000000e+00
  %6521 = fadd fast float %6520, 0xC1EFBF8940000000
  %6522 = fptosi float %6521 to i32
  %6523 = bitcast i32 %6522 to float
  %6524 = fmul fast float %6523, %4036
  %6525 = fmul fast float %6513, %6524
  %6526 = fmul fast float %6525, %5865
  %6527 = fmul fast float %6525, %5866
  %6528 = fmul fast float %6525, %5867
  %6529 = fadd fast float %6526, %6514
  %6530 = fadd fast float %6527, %6515
  %6531 = fadd fast float %6528, %6516
  %6532 = fmul fast float %6353, %4032
  %6533 = fmul fast float %6532, %6371
  %6534 = fmul fast float %6533, %6513
  %6535 = fmul fast float %6354, %4032
  %6536 = fmul fast float %6535, %6371
  %6537 = fmul fast float %6536, %6513
  %6538 = fmul fast float %6355, %4032
  %6539 = fmul fast float %6538, %6371
  %6540 = fmul fast float %6539, %6513
  %6541 = fadd fast float %6534, %6192
  %6542 = fadd fast float %6537, %6193
  %6543 = fadd fast float %6540, %6194
  %6544 = fmul fast float %6533, %6529
  %6545 = fmul fast float %6536, %6530
  %6546 = fmul fast float %6539, %6531
  %6547 = fadd fast float %6544, %6189
  %6548 = fadd fast float %6545, %6190
  %6549 = fadd fast float %6546, %6191
  br label %6267

; <label>:6550                                    ; preds = %6267
  br label %6551

; <label>:6551                                    ; preds = %6550, %6155
  %6552 = phi float [ %6157, %6155 ], [ %6268, %6550 ]
  %6553 = phi float [ %6158, %6155 ], [ %6269, %6550 ]
  %6554 = phi float [ %6159, %6155 ], [ %6270, %6550 ]
  %6555 = phi float [ %6160, %6155 ], [ %6271, %6550 ]
  %6556 = phi float [ %6161, %6155 ], [ %6272, %6550 ]
  %6557 = phi float [ %6162, %6155 ], [ %6273, %6550 ]
  %6558 = add i32 %6156, 1
  %6559 = icmp ugt i32 %6558, %6152
  br i1 %6559, label %6560, label %6155

; <label>:6560                                    ; preds = %6551
  br label %6561

; <label>:6561                                    ; preds = %6560, %6131, %6121
  %6562 = phi float [ %6122, %6121 ], [ %6122, %6131 ], [ %6552, %6560 ]
  %6563 = phi float [ %6123, %6121 ], [ %6123, %6131 ], [ %6553, %6560 ]
  %6564 = phi float [ %6124, %6121 ], [ %6124, %6131 ], [ %6554, %6560 ]
  %6565 = phi float [ %6125, %6121 ], [ %6125, %6131 ], [ %6555, %6560 ]
  %6566 = phi float [ %6126, %6121 ], [ %6126, %6131 ], [ %6556, %6560 ]
  %6567 = phi float [ %6127, %6121 ], [ %6127, %6131 ], [ %6557, %6560 ]
  %6568 = call float @dx.op.unary.f32(i32 24, float %4638)  ; Sqrt(value)
  %6569 = call float @dx.op.unary.f32(i32 24, float %4639)  ; Sqrt(value)
  %6570 = call float @dx.op.unary.f32(i32 24, float %4640)  ; Sqrt(value)
  %6571 = fmul fast float %6568, %6565
  %6572 = fmul fast float %6569, %6566
  %6573 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6574 = extractvalue %dx.types.CBufRet.f32 %6573, 0
  br i1 %186, label %6575, label %6607

; <label>:6575                                    ; preds = %6561
  %6576 = fadd fast float %6567, %4038
  %6577 = fmul fast float %6576, %4040
  %6578 = fsub fast float 1.000000e+00, %4040
  %6579 = call float @dx.op.unary.f32(i32 7, float %6578)  ; Saturate(value)
  %6580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6581 = extractvalue %dx.types.CBufRet.f32 %6580, 3
  %6582 = fmul fast float %6581, %6579
  %6583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6584 = extractvalue %dx.types.CBufRet.f32 %6583, 0
  %6585 = fmul fast float %6584, %5871
  %6586 = extractvalue %dx.types.CBufRet.f32 %6583, 2
  %6587 = fmul fast float %6586, %4662
  %6588 = fadd fast float %6572, %6571
  %6589 = fmul fast float %6574, %6588
  %6590 = extractvalue %dx.types.CBufRet.f32 %6580, 1
  %6591 = fadd fast float %6582, %6577
  %6592 = fsub fast float %6591, %6585
  %6593 = fadd fast float %6592, %6587
  %6594 = fsub fast float %6593, %6590
  %6595 = extractvalue %dx.types.CBufRet.f32 %6580, 2
  %6596 = fmul fast float %6594, %6595
  %6597 = call float @dx.op.unary.f32(i32 7, float %6596)  ; Saturate(value)
  %6598 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6599 = extractvalue %dx.types.CBufRet.f32 %6598, 0
  %6600 = fsub fast float %6597, %6599
  %6601 = fmul fast float %6600, 1.000000e+01
  %6602 = call float @dx.op.unary.f32(i32 7, float %6601)  ; Saturate(value)
  %6603 = fadd fast float %4039, -1.000000e+00
  %6604 = fmul fast float %6602, %6603
  %6605 = fadd fast float %6604, 1.000000e+00
  %6606 = fmul fast float %6605, %6597
  br label %6623

; <label>:6607                                    ; preds = %6561
  %6608 = fmul fast float %6570, %6567
  %6609 = fmul fast float %6574, %6571
  %6610 = fmul fast float %6574, %6572
  %6611 = fmul fast float %6608, %6574
  %6612 = add i32 %45, 356
  %6613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6612, i32 undef)  ; BufferLoad(srv,index,wot)
  %6614 = extractvalue %dx.types.ResRet.i32 %6613, 0
  %6615 = and i32 %6614, 32
  %6616 = icmp eq i32 %6615, 0
  br i1 %6616, label %6623, label %6617

; <label>:6617                                    ; preds = %6607
  %6618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6619 = extractvalue %dx.types.CBufRet.f32 %6618, 0
  %6620 = fmul fast float %6619, 0x3FE99999A0000000
  %6621 = fadd fast float %6619, %6609
  %6622 = fadd fast float %6620, %6611
  br label %6623

; <label>:6623                                    ; preds = %6617, %6607, %6575
  %6624 = phi float [ %6589, %6575 ], [ %6621, %6617 ], [ %6609, %6607 ]
  %6625 = phi float [ %6606, %6575 ], [ %6610, %6617 ], [ %6610, %6607 ]
  %6626 = phi float [ %6605, %6575 ], [ %6622, %6617 ], [ %6611, %6607 ]
  %6627 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6628 = extractvalue %dx.types.CBufRet.f32 %6627, 0
  %6629 = fmul fast float %6628, %6563
  %6630 = fmul fast float %6628, %6564
  %6631 = fadd fast float %6563, %6562
  %6632 = select i1 %186, float %6631, float %6562
  %6633 = fmul float %6632, %6628
  %6634 = select i1 %186, float 0.000000e+00, float %6629
  %6635 = select i1 %186, float 0.000000e+00, float %6630
  %6636 = fmul fast float %6624, %6568
  %6637 = fmul fast float %6625, %6569
  %6638 = fmul fast float %6626, %6570
  %6639 = fadd fast float %6633, %6636
  %6640 = fadd fast float %6634, %6637
  %6641 = fadd fast float %6635, %6638
  %6642 = select i1 %186, float %6625, float %6640
  %6643 = select i1 %186, float %6626, float %6641
  %6644 = call float @dx.op.binary.f32(i32 36, float %6639, float 3.225500e+04)  ; FMin(a,b)
  %6645 = call float @dx.op.binary.f32(i32 36, float %6642, float 3.225500e+04)  ; FMin(a,b)
  %6646 = call float @dx.op.binary.f32(i32 36, float %6643, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6644)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6645)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6646)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
declare %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32, %dx.types.Handle, i32, i32, i32, i32, i32, i32, i32) #2

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

