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
; OBJECT_POSITION          0   xyzw       10     NONE   float      w
; PACKED_TRI_DATA          0   xyzw       11     NONE    uint   x zw
; SV_IsFrontFace           0   x          12    FFACE    uint   x   
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: dba014a5f5b2b874a393f97d25c9bfcf
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
; OBJECT_POSITION          0                 linear       
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
; Number of inputs: 49, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 24, 28, 29, 30, 31, 32, 33, 36, 37, 38, 39, 43, 44, 46, 47, 48 }
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 12, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = icmp ne i32 %43, 0
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call i32 @dx.op.loadInput.i32(i32 4, i32 11, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 10, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %75 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %76 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %77 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %78 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %79 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %80 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %81 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %82 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %83 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %84 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %85 = extractvalue %dx.types.CBufRet.f32 %84, 0
  %86 = fmul fast float %85, %79
  %87 = fmul fast float %85, %80
  %88 = select i1 %44, float 1.000000e+00, float -1.000000e+00
  %89 = call float @dx.op.dot3.f32(i32 55, float %71, float %72, float %73, float %71, float %72, float %73)  ; Dot3(ax,ay,az,bx,by,bz)
  %90 = bitcast float %89 to i32
  %91 = ashr i32 %90, 1
  %92 = sub nsw i32 1597250115, %91
  %93 = bitcast i32 %92 to float
  %94 = fmul fast float %71, %88
  %95 = fmul fast float %94, %93
  %96 = fmul fast float %72, %88
  %97 = fmul fast float %96, %93
  %98 = fmul fast float %73, %88
  %99 = fmul fast float %98, %93
  %100 = fmul fast float %72, %69
  %101 = fmul fast float %73, %68
  %102 = fsub fast float %100, %101
  %103 = fmul fast float %73, %67
  %104 = fmul fast float %71, %69
  %105 = fsub fast float %103, %104
  %106 = fmul fast float %71, %68
  %107 = fmul fast float %72, %67
  %108 = fsub fast float %106, %107
  %109 = fmul fast float %102, %70
  %110 = fmul fast float %105, %70
  %111 = fmul fast float %108, %70
  %112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %113 = extractvalue %dx.types.CBufRet.f32 %112, 2
  %114 = extractvalue %dx.types.CBufRet.f32 %112, 3
  %115 = fmul fast float %86, 2.000000e+00
  %116 = fmul fast float %115, %113
  %117 = fmul fast float %87, 2.000000e+00
  %118 = fmul fast float %117, %114
  %119 = fsub fast float 1.000000e+00, %116
  %120 = fsub fast float 1.000000e+00, %118
  %121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %122 = extractvalue %dx.types.CBufRet.f32 %121, 0
  %123 = extractvalue %dx.types.CBufRet.f32 %121, 1
  %124 = extractvalue %dx.types.CBufRet.f32 %121, 2
  %125 = fmul fast float %119, %122
  %126 = fmul fast float %119, %123
  %127 = fmul fast float %119, %124
  %128 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %129 = extractvalue %dx.types.CBufRet.f32 %128, 0
  %130 = extractvalue %dx.types.CBufRet.f32 %128, 1
  %131 = extractvalue %dx.types.CBufRet.f32 %128, 2
  %132 = fmul fast float %120, %129
  %133 = fmul fast float %120, %130
  %134 = fmul fast float %120, %131
  %135 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %136 = extractvalue %dx.types.CBufRet.f32 %135, 0
  %137 = extractvalue %dx.types.CBufRet.f32 %135, 1
  %138 = extractvalue %dx.types.CBufRet.f32 %135, 2
  %139 = fadd fast float %132, %136
  %140 = fadd fast float %139, %125
  %141 = fadd fast float %133, %137
  %142 = fadd fast float %141, %126
  %143 = fadd fast float %134, %138
  %144 = fadd fast float %143, %127
  %145 = fmul fast float %140, %81
  %146 = fmul fast float %142, %81
  %147 = fmul fast float %144, %81
  %148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %149 = extractvalue %dx.types.CBufRet.f32 %148, 2
  %150 = extractvalue %dx.types.CBufRet.f32 %148, 3
  %151 = fmul fast float %149, %86
  %152 = fmul fast float %150, %87
  %153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %154 = extractvalue %dx.types.ResRet.i32 %153, 0
  %155 = and i32 %154, 114688
  %156 = icmp ne i32 %155, 0
  %157 = select i1 %156, float %151, float 0.000000e+00
  %158 = select i1 %156, float %152, float 0.000000e+00
  %159 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %157, float %158, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %160 = extractvalue %dx.types.ResRet.f32 %159, 0
  %161 = fmul fast float %160, 2.550000e+02
  %162 = fptoui float %161 to i32
  %163 = select i1 %156, i32 %162, i32 0
  %164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %165 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %166 = extractvalue %dx.types.CBufRet.i32 %165, 3
  %167 = and i32 %166, 3
  %168 = icmp ne i32 %167, 0
  %169 = and i32 %166, 4
  %170 = icmp ne i32 %169, 0
  %171 = and i1 %168, %170
  br i1 %171, label %172, label %183

; <label>:172                                     ; preds = %0
  %173 = extractvalue %dx.types.CBufRet.f32 %164, 3
  %174 = fmul fast float %173, %87
  %175 = extractvalue %dx.types.CBufRet.f32 %164, 2
  %176 = fmul fast float %175, %86
  %177 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %176, float %174, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %178 = extractvalue %dx.types.ResRet.f32 %177, 0
  %179 = fsub fast float 1.000000e+00, %178
  %180 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %181 = extractvalue %dx.types.CBufRet.f32 %180, 0
  %182 = fcmp fast olt float %179, %181
  br label %186

; <label>:183                                     ; preds = %0
  %184 = icmp eq i32 %169, 0
  %185 = and i1 %168, %184
  br label %186

; <label>:186                                     ; preds = %183, %172
  %187 = phi i1 [ %182, %172 ], [ %185, %183 ]
  %188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %189 = extractvalue %dx.types.CBufRet.f32 %188, 2
  %190 = fmul fast float %189, 0x3FE3C6EF40000000
  %191 = frem fast float %86, 2.560000e+02
  %192 = frem fast float %87, 2.560000e+02
  %193 = fptoui float %191 to i32
  %194 = fptoui float %192 to i32
  %195 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %193, i32 %194, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %196 = extractvalue %dx.types.ResRet.f32 %195, 0
  %197 = extractvalue %dx.types.ResRet.f32 %195, 1
  %198 = fadd fast float %196, %190
  %199 = fadd fast float %197, %190
  %200 = call float @dx.op.unary.f32(i32 22, float %198)  ; Frc(value)
  %201 = call float @dx.op.unary.f32(i32 22, float %199)  ; Frc(value)
  %202 = add i32 %45, 156
  %203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %202, i32 undef)  ; BufferLoad(srv,index,wot)
  %204 = extractvalue %dx.types.ResRet.i32 %203, 0
  %205 = shl i32 %204, 4
  %206 = and i32 %205, 32752
  %207 = call float @dx.op.legacyF16ToF32(i32 131, i32 %206)  ; LegacyF16ToF32(value)
  %208 = lshr i32 %204, 7
  %209 = and i32 %208, 32752
  %210 = call float @dx.op.legacyF16ToF32(i32 131, i32 %209)  ; LegacyF16ToF32(value)
  %211 = lshr i32 %204, 22
  %212 = shl nuw nsw i32 %211, 5
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = add i32 %45, 216
  %215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %216 = extractvalue %dx.types.ResRet.i32 %215, 0
  %217 = and i32 %216, 255
  %218 = uitofp i32 %217 to float
  %219 = fmul fast float %218, 0x3F70101020000000
  %220 = lshr i32 %216, 8
  %221 = and i32 %220, 255
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F70101020000000
  %224 = lshr i32 %216, 16
  %225 = and i32 %224, 255
  %226 = uitofp i32 %225 to float
  %227 = fmul fast float %226, 0x3F70101020000000
  %228 = add i32 %45, 36
  %229 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %228, i32 undef)  ; BufferLoad(srv,index,wot)
  %230 = extractvalue %dx.types.ResRet.i32 %229, 0
  %231 = and i32 %230, 65535
  %232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %231)  ; LegacyF16ToF32(value)
  %233 = lshr i32 %230, 16
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = add i32 %45, 288
  %236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %235, i32 undef)  ; BufferLoad(srv,index,wot)
  %237 = extractvalue %dx.types.ResRet.i32 %236, 0
  %238 = and i32 %237, 65535
  %239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %238)  ; LegacyF16ToF32(value)
  %240 = lshr i32 %237, 16
  %241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %240)  ; LegacyF16ToF32(value)
  %242 = fmul fast float %239, 0x3F50624DE0000000
  %243 = fmul fast float %241, 0x3F50624DE0000000
  %244 = add i32 %45, 172
  %245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %244, i32 undef)  ; BufferLoad(srv,index,wot)
  %246 = extractvalue %dx.types.ResRet.i32 %245, 0
  %247 = shl i32 %246, 4
  %248 = and i32 %247, 32752
  %249 = call float @dx.op.legacyF16ToF32(i32 131, i32 %248)  ; LegacyF16ToF32(value)
  %250 = lshr i32 %246, 7
  %251 = and i32 %250, 32752
  %252 = call float @dx.op.legacyF16ToF32(i32 131, i32 %251)  ; LegacyF16ToF32(value)
  %253 = lshr i32 %246, 22
  %254 = shl nuw nsw i32 %253, 5
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = add i32 %45, 232
  %257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %258 = extractvalue %dx.types.ResRet.i32 %257, 0
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = lshr i32 %258, 8
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = lshr i32 %258, 16
  %267 = and i32 %266, 255
  %268 = uitofp i32 %267 to float
  %269 = fmul fast float %268, 0x3F70101020000000
  %270 = add i32 %45, 52
  %271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %270, i32 undef)  ; BufferLoad(srv,index,wot)
  %272 = extractvalue %dx.types.ResRet.i32 %271, 0
  %273 = and i32 %272, 65535
  %274 = call float @dx.op.legacyF16ToF32(i32 131, i32 %273)  ; LegacyF16ToF32(value)
  %275 = lshr i32 %272, 16
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = add i32 %45, 304
  %278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %277, i32 undef)  ; BufferLoad(srv,index,wot)
  %279 = extractvalue %dx.types.ResRet.i32 %278, 0
  %280 = and i32 %279, 65535
  %281 = call float @dx.op.legacyF16ToF32(i32 131, i32 %280)  ; LegacyF16ToF32(value)
  %282 = lshr i32 %279, 16
  %283 = call float @dx.op.legacyF16ToF32(i32 131, i32 %282)  ; LegacyF16ToF32(value)
  %284 = fmul fast float %281, 0x3F50624DE0000000
  %285 = fmul fast float %283, 0x3F50624DE0000000
  %286 = add i32 %45, 188
  %287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %286, i32 undef)  ; BufferLoad(srv,index,wot)
  %288 = extractvalue %dx.types.ResRet.i32 %287, 0
  %289 = shl i32 %288, 4
  %290 = and i32 %289, 32752
  %291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %290)  ; LegacyF16ToF32(value)
  %292 = lshr i32 %288, 7
  %293 = and i32 %292, 32752
  %294 = call float @dx.op.legacyF16ToF32(i32 131, i32 %293)  ; LegacyF16ToF32(value)
  %295 = lshr i32 %288, 22
  %296 = shl nuw nsw i32 %295, 5
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = add i32 %45, 248
  %299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %300 = extractvalue %dx.types.ResRet.i32 %299, 0
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = lshr i32 %300, 8
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = lshr i32 %300, 16
  %309 = and i32 %308, 255
  %310 = uitofp i32 %309 to float
  %311 = fmul fast float %310, 0x3F70101020000000
  %312 = add i32 %45, 68
  %313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %312, i32 undef)  ; BufferLoad(srv,index,wot)
  %314 = extractvalue %dx.types.ResRet.i32 %313, 0
  %315 = and i32 %314, 65535
  %316 = call float @dx.op.legacyF16ToF32(i32 131, i32 %315)  ; LegacyF16ToF32(value)
  %317 = lshr i32 %314, 16
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = add i32 %45, 320
  %320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %319, i32 undef)  ; BufferLoad(srv,index,wot)
  %321 = extractvalue %dx.types.ResRet.i32 %320, 0
  %322 = and i32 %321, 65535
  %323 = call float @dx.op.legacyF16ToF32(i32 131, i32 %322)  ; LegacyF16ToF32(value)
  %324 = lshr i32 %321, 16
  %325 = call float @dx.op.legacyF16ToF32(i32 131, i32 %324)  ; LegacyF16ToF32(value)
  %326 = fmul fast float %323, 0x3F50624DE0000000
  %327 = fmul fast float %325, 0x3F50624DE0000000
  %328 = add i32 %45, 204
  %329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %328, i32 undef)  ; BufferLoad(srv,index,wot)
  %330 = extractvalue %dx.types.ResRet.i32 %329, 0
  %331 = shl i32 %330, 4
  %332 = and i32 %331, 32752
  %333 = call float @dx.op.legacyF16ToF32(i32 131, i32 %332)  ; LegacyF16ToF32(value)
  %334 = lshr i32 %330, 7
  %335 = and i32 %334, 32752
  %336 = call float @dx.op.legacyF16ToF32(i32 131, i32 %335)  ; LegacyF16ToF32(value)
  %337 = lshr i32 %330, 22
  %338 = shl nuw nsw i32 %337, 5
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = add i32 %45, 264
  %341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %342 = extractvalue %dx.types.ResRet.i32 %341, 0
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %342, 8
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = lshr i32 %342, 16
  %351 = and i32 %350, 255
  %352 = uitofp i32 %351 to float
  %353 = fmul fast float %352, 0x3F70101020000000
  %354 = add i32 %45, 84
  %355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %354, i32 undef)  ; BufferLoad(srv,index,wot)
  %356 = extractvalue %dx.types.ResRet.i32 %355, 0
  %357 = and i32 %356, 65535
  %358 = call float @dx.op.legacyF16ToF32(i32 131, i32 %357)  ; LegacyF16ToF32(value)
  %359 = lshr i32 %356, 16
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = add i32 %45, 336
  %362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %361, i32 undef)  ; BufferLoad(srv,index,wot)
  %363 = extractvalue %dx.types.ResRet.i32 %362, 0
  %364 = and i32 %363, 65535
  %365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %364)  ; LegacyF16ToF32(value)
  %366 = lshr i32 %363, 16
  %367 = call float @dx.op.legacyF16ToF32(i32 131, i32 %366)  ; LegacyF16ToF32(value)
  %368 = fmul fast float %365, 0x3F50624DE0000000
  %369 = fmul fast float %367, 0x3F50624DE0000000
  %370 = add i32 %45, 348
  %371 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %372 = extractvalue %dx.types.ResRet.i32 %371, 0
  %373 = and i32 %372, 32
  %374 = icmp eq i32 %373, 0
  %375 = and i32 %372, 64
  %376 = icmp eq i32 %375, 0
  %377 = and i32 %372, 128
  %378 = icmp eq i32 %377, 0
  %379 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %380 = extractvalue %dx.types.ResRet.i32 %379, 0
  %381 = and i32 %380, 2
  %382 = icmp eq i32 %381, 0
  br i1 %382, label %396, label %383

; <label>:383                                     ; preds = %186
  %384 = add i32 %45, 504
  %385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %384, i32 undef)  ; BufferLoad(srv,index,wot)
  %386 = extractvalue %dx.types.ResRet.i32 %385, 0
  %387 = add i32 %386, 0
  %388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %388, %dx.types.Handle %83, float %74, float %75, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %390 = extractvalue %dx.types.ResRet.f32 %389, 0
  %391 = extractvalue %dx.types.ResRet.f32 %389, 1
  %392 = extractvalue %dx.types.ResRet.f32 %389, 2
  %393 = fmul fast float %390, %76
  %394 = fmul fast float %391, %77
  %395 = fmul fast float %392, %78
  br label %396

; <label>:396                                     ; preds = %383, %186
  %397 = phi float [ %78, %186 ], [ %395, %383 ]
  %398 = phi float [ %77, %186 ], [ %394, %383 ]
  %399 = phi float [ %76, %186 ], [ %393, %383 ]
  %400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %370, i32 undef)  ; BufferLoad(srv,index,wot)
  %401 = extractvalue %dx.types.ResRet.i32 %400, 0
  %402 = and i32 %401, 2
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %423, label %404

; <label>:404                                     ; preds = %396
  %405 = add i32 %45, 44
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %405, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 1
  %409 = icmp ne i32 %408, 0
  %410 = select i1 %409, float %399, float 1.000000e+00
  %411 = add i32 %45, 60
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = and i32 %413, 1
  %415 = icmp ne i32 %414, 0
  %416 = select i1 %415, float %398, float 1.000000e+00
  %417 = add i32 %45, 76
  %418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %417, i32 undef)  ; BufferLoad(srv,index,wot)
  %419 = extractvalue %dx.types.ResRet.i32 %418, 0
  %420 = and i32 %419, 1
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %397, float 1.000000e+00
  br label %423

; <label>:423                                     ; preds = %404, %396
  %424 = phi float [ %397, %396 ], [ %422, %404 ]
  %425 = phi float [ %398, %396 ], [ %416, %404 ]
  %426 = phi float [ %399, %396 ], [ %410, %404 ]
  %427 = lshr i32 %401, 20
  %428 = and i32 %427, 3
  %429 = add nuw nsw i32 %428, 1
  %430 = add i32 %45, 24
  %431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %432 = extractvalue %dx.types.ResRet.i32 %431, 0
  %433 = add i32 %45, 28
  %434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %433, i32 undef)  ; BufferLoad(srv,index,wot)
  %435 = extractvalue %dx.types.ResRet.i32 %434, 0
  %436 = or i32 %435, %432
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %925, label %438

; <label>:438                                     ; preds = %423
  %439 = and i32 %432, 262144
  %440 = icmp ne i32 %439, 0
  %441 = select i1 %440, float %49, float 1.000000e+00
  %442 = select i1 %440, float %50, float 0.000000e+00
  %443 = select i1 %440, float %51, float 0.000000e+00
  %444 = select i1 %440, float %52, float 1.000000e+00
  %445 = select i1 %440, float %53, float %74
  %446 = select i1 %440, float %54, float %75
  %447 = add i32 %45, 284
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = lshr i32 %449, 16
  %451 = call float @dx.op.legacyF16ToF32(i32 131, i32 %450)  ; LegacyF16ToF32(value)
  %452 = fmul fast float %451, 0x3F50624DE0000000
  %453 = add i32 %45, 88
  %454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %453, i32 undef)  ; BufferLoad(srv,index,wot)
  %455 = extractvalue %dx.types.ResRet.i32 %454, 0
  %456 = lshr i32 %455, 16
  %457 = and i32 %456, 255
  %458 = lshr i32 %455, 24
  %459 = add i32 %45, 292
  %460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %459, i32 undef)  ; BufferLoad(srv,index,wot)
  %461 = extractvalue %dx.types.ResRet.i32 %460, 0
  %462 = and i32 %461, 65535
  %463 = call float @dx.op.legacyF16ToF32(i32 131, i32 %462)  ; LegacyF16ToF32(value)
  %464 = lshr i32 %461, 16
  %465 = call float @dx.op.legacyF16ToF32(i32 131, i32 %464)  ; LegacyF16ToF32(value)
  %466 = add i32 %45, 32
  %467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %466, i32 undef)  ; BufferLoad(srv,index,wot)
  %468 = extractvalue %dx.types.ResRet.i32 %467, 0
  %469 = lshr i32 %468, 22
  %470 = shl nuw nsw i32 %469, 5
  %471 = call float @dx.op.legacyF16ToF32(i32 131, i32 %470)  ; LegacyF16ToF32(value)
  %472 = shl i32 %468, 4
  %473 = and i32 %472, 32752
  %474 = call float @dx.op.legacyF16ToF32(i32 131, i32 %473)  ; LegacyF16ToF32(value)
  %475 = lshr i32 %468, 7
  %476 = and i32 %475, 32752
  %477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %476)  ; LegacyF16ToF32(value)
  %478 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %479 = extractvalue %dx.types.CBufRet.f32 %478, 3
  %480 = fmul fast float %479, 1.000000e+03
  %481 = fmul fast float %242, %480
  %482 = call float @dx.op.unary.f32(i32 22, float %481)  ; Frc(value)
  %483 = fadd fast float %482, %232
  %484 = fmul fast float %243, %480
  %485 = call float @dx.op.unary.f32(i32 22, float %484)  ; Frc(value)
  %486 = fadd fast float %485, %234
  %487 = fmul fast float %452, %480
  %488 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %489 = fmul fast float %488, 0x401921FB60000000
  %490 = fadd fast float %489, %471
  %491 = call float @dx.op.unary.f32(i32 13, float %490)  ; Sin(value)
  %492 = call float @dx.op.unary.f32(i32 12, float %490)  ; Cos(value)
  %493 = fsub fast float -0.000000e+00, %491
  %494 = fadd fast float %445, -5.000000e-01
  %495 = fadd fast float %446, -5.000000e-01
  %496 = fmul fast float %463, %494
  %497 = fmul fast float %465, %495
  %498 = fadd fast float %496, 5.000000e-01
  %499 = fadd fast float %497, 5.000000e-01
  %500 = fmul fast float %474, %498
  %501 = fmul fast float %477, %499
  %502 = fmul fast float %492, %500
  %503 = call float @dx.op.tertiary.f32(i32 46, float %493, float %501, float %502)  ; FMad(a,b,c)
  %504 = fmul fast float %491, %500
  %505 = call float @dx.op.tertiary.f32(i32 46, float %492, float %501, float %504)  ; FMad(a,b,c)
  %506 = fadd fast float %483, %503
  %507 = fadd fast float %486, %505
  %508 = icmp ugt i32 %457, 1
  %509 = icmp ugt i32 %455, 33554431
  %510 = or i1 %509, %508
  br i1 %510, label %511, label %536

; <label>:511                                     ; preds = %438
  %512 = add i32 %45, 228
  %513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %512, i32 undef)  ; BufferLoad(srv,index,wot)
  %514 = extractvalue %dx.types.ResRet.i32 %513, 0
  %515 = lshr i32 %514, 16
  %516 = call float @dx.op.legacyF16ToF32(i32 131, i32 %515)  ; LegacyF16ToF32(value)
  %517 = fmul fast float %479, %516
  %518 = call float @dx.op.unary.f32(i32 22, float %517)  ; Frc(value)
  %519 = mul nuw nsw i32 %457, %458
  %520 = uitofp i32 %519 to float
  %521 = fmul fast float %518, %520
  %522 = call float @dx.op.unary.f32(i32 27, float %521)  ; Round_ni(value)
  %523 = fptoui float %522 to i32
  %524 = urem i32 %523, %457
  %525 = udiv i32 %523, %458
  %526 = call float @dx.op.unary.f32(i32 22, float %506)  ; Frc(value)
  %527 = call float @dx.op.unary.f32(i32 22, float %507)  ; Frc(value)
  %528 = uitofp i32 %524 to float
  %529 = uitofp i32 %525 to float
  %530 = fadd fast float %526, %528
  %531 = fadd fast float %527, %529
  %532 = uitofp i32 %457 to float
  %533 = uitofp i32 %458 to float
  %534 = fdiv fast float %530, %532
  %535 = fdiv fast float %531, %533
  br label %536

; <label>:536                                     ; preds = %511, %438
  %537 = phi float [ %534, %511 ], [ %506, %438 ]
  %538 = phi float [ %535, %511 ], [ %507, %438 ]
  %539 = and i32 %432, 16
  %540 = icmp eq i32 %539, 0
  br i1 %540, label %737, label %541

; <label>:541                                     ; preds = %536
  %542 = add i32 %45, 392
  %543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %542, i32 undef)  ; BufferLoad(srv,index,wot)
  %544 = extractvalue %dx.types.ResRet.i32 %543, 0
  %545 = add i32 %544, 0
  %546 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %545, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %547 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %546, %dx.types.Handle %82, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %548 = extractvalue %dx.types.ResRet.f32 %547, 0
  %549 = extractvalue %dx.types.ResRet.f32 %547, 1
  %550 = extractvalue %dx.types.ResRet.f32 %547, 2
  %551 = extractvalue %dx.types.ResRet.f32 %547, 3
  %552 = and i32 %455, 255
  %553 = uitofp i32 %552 to float
  %554 = lshr i32 %455, 8
  %555 = and i32 %554, 255
  %556 = uitofp i32 %555 to float
  %557 = fmul fast float %551, %553
  %558 = fadd fast float %557, %556
  %559 = fmul fast float %558, 0x3F70101000000000
  %560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %561 = extractvalue %dx.types.ResRet.i32 %560, 0
  %562 = and i32 %561, 512
  %563 = icmp eq i32 %562, 0
  br i1 %563, label %572, label %564

; <label>:564                                     ; preds = %541
  %565 = add i32 %45, 472
  %566 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %565, i32 undef)  ; BufferLoad(srv,index,wot)
  %567 = extractvalue %dx.types.ResRet.i32 %566, 0
  %568 = add i32 %567, 0
  %569 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %568, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %570 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %569, %dx.types.Handle %83, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %571 = extractvalue %dx.types.ResRet.f32 %570, 0
  br label %572

; <label>:572                                     ; preds = %564, %541
  %573 = phi float [ %571, %564 ], [ 1.000000e+00, %541 ]
  %574 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %575 = extractvalue %dx.types.ResRet.i32 %574, 0
  %576 = and i32 %575, 33554432
  %577 = icmp eq i32 %576, 0
  br i1 %577, label %684, label %578

; <label>:578                                     ; preds = %572
  %579 = add i32 %45, 224
  %580 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %579, i32 undef)  ; BufferLoad(srv,index,wot)
  %581 = extractvalue %dx.types.ResRet.i32 %580, 0
  %582 = and i32 %581, 65535
  %583 = call float @dx.op.legacyF16ToF32(i32 131, i32 %582)  ; LegacyF16ToF32(value)
  %584 = lshr i32 %581, 16
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = add i32 %45, 228
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %586, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 65535
  %590 = call float @dx.op.legacyF16ToF32(i32 131, i32 %589)  ; LegacyF16ToF32(value)
  %591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %214, i32 undef)  ; BufferLoad(srv,index,wot)
  %592 = extractvalue %dx.types.ResRet.i32 %591, 0
  %593 = lshr i32 %592, 24
  %594 = uitofp i32 %593 to float
  %595 = fmul fast float %594, 0x3F70101020000000
  %596 = and i32 %592, 255
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %597, 0x3F70101020000000
  %599 = lshr i32 %592, 8
  %600 = and i32 %599, 255
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, 0x3F70101020000000
  %603 = lshr i32 %592, 16
  %604 = and i32 %603, 255
  %605 = uitofp i32 %604 to float
  %606 = fmul fast float %605, 0x3F70101020000000
  %607 = add i32 %45, 220
  %608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %607, i32 undef)  ; BufferLoad(srv,index,wot)
  %609 = extractvalue %dx.types.ResRet.i32 %608, 0
  %610 = lshr i32 %609, 24
  %611 = uitofp i32 %610 to float
  %612 = fmul fast float %611, 0x3F70101020000000
  %613 = and i32 %609, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = lshr i32 %609, 8
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = lshr i32 %609, 16
  %621 = and i32 %620, 255
  %622 = uitofp i32 %621 to float
  %623 = fmul fast float %622, 0x3F70101020000000
  %624 = bitcast float %548 to i32
  %625 = ashr i32 %624, 1
  %626 = sub nsw i32 1597463174, %625
  %627 = bitcast i32 %626 to float
  %628 = fmul fast float %548, 5.000000e-01
  %629 = fmul fast float %627, %627
  %630 = fmul fast float %629, %628
  %631 = fsub fast float 1.500000e+00, %630
  %632 = fmul fast float %627, %548
  %633 = fmul fast float %632, %631
  %634 = bitcast float %549 to i32
  %635 = ashr i32 %634, 1
  %636 = sub nsw i32 1597463174, %635
  %637 = bitcast i32 %636 to float
  %638 = fmul fast float %549, 5.000000e-01
  %639 = fmul fast float %637, %637
  %640 = fmul fast float %639, %638
  %641 = fsub fast float 1.500000e+00, %640
  %642 = fmul fast float %637, %549
  %643 = fmul fast float %642, %641
  %644 = bitcast float %550 to i32
  %645 = ashr i32 %644, 1
  %646 = sub nsw i32 1597463174, %645
  %647 = bitcast i32 %646 to float
  %648 = fmul fast float %550, 5.000000e-01
  %649 = fmul fast float %647, %647
  %650 = fmul fast float %649, %648
  %651 = fsub fast float 1.500000e+00, %650
  %652 = fmul fast float %647, %550
  %653 = fmul fast float %652, %651
  %654 = fsub fast float %633, %615
  %655 = fsub fast float %643, %619
  %656 = fsub fast float %653, %623
  %657 = fmul fast float %654, %583
  %658 = fmul fast float %655, %585
  %659 = fmul fast float %656, %590
  %660 = fadd fast float %657, %598
  %661 = fadd fast float %658, %602
  %662 = fadd fast float %659, %606
  %663 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %664 = call float @dx.op.unary.f32(i32 7, float %661)  ; Saturate(value)
  %665 = call float @dx.op.unary.f32(i32 7, float %662)  ; Saturate(value)
  %666 = fmul fast float %663, %663
  %667 = fmul fast float %664, %664
  %668 = fmul fast float %665, %665
  %669 = fsub fast float %666, %548
  %670 = fsub fast float %667, %549
  %671 = fsub fast float %668, %550
  %672 = fmul fast float %669, %573
  %673 = fmul fast float %670, %573
  %674 = fmul fast float %671, %573
  %675 = fadd fast float %672, %548
  %676 = fadd fast float %673, %549
  %677 = fadd fast float %674, %550
  %678 = fadd fast float %595, %559
  %679 = fsub fast float %678, %612
  %680 = call float @dx.op.unary.f32(i32 7, float %679)  ; Saturate(value)
  %681 = fsub fast float %680, %559
  %682 = fmul fast float %681, %573
  %683 = fadd fast float %682, %559
  br label %737

; <label>:684                                     ; preds = %572
  %685 = and i32 %575, 134217728
  %686 = icmp eq i32 %685, 0
  br i1 %686, label %721, label %687

; <label>:687                                     ; preds = %684
  %688 = call float @dx.op.unary.f32(i32 24, float %219)  ; Sqrt(value)
  %689 = call float @dx.op.unary.f32(i32 24, float %223)  ; Sqrt(value)
  %690 = call float @dx.op.unary.f32(i32 24, float %227)  ; Sqrt(value)
  %691 = fadd fast float %688, -5.000000e-01
  %692 = fadd fast float %689, -5.000000e-01
  %693 = fadd fast float %690, -5.000000e-01
  %694 = fmul fast float %691, %573
  %695 = fmul fast float %692, %573
  %696 = fmul fast float %693, %573
  %697 = fadd fast float %694, 5.000000e-01
  %698 = fadd fast float %695, 5.000000e-01
  %699 = fadd fast float %696, 5.000000e-01
  %700 = call float @dx.op.unary.f32(i32 24, float %548)  ; Sqrt(value)
  %701 = call float @dx.op.unary.f32(i32 24, float %549)  ; Sqrt(value)
  %702 = call float @dx.op.unary.f32(i32 24, float %550)  ; Sqrt(value)
  %703 = fmul fast float %697, 2.000000e+00
  %704 = fsub fast float 1.000000e+00, %703
  %705 = fmul fast float %704, %700
  %706 = fadd fast float %705, %703
  %707 = fmul fast float %706, %700
  %708 = fmul fast float %698, 2.000000e+00
  %709 = fsub fast float 1.000000e+00, %708
  %710 = fmul fast float %709, %701
  %711 = fadd fast float %710, %708
  %712 = fmul fast float %711, %701
  %713 = fmul fast float %699, 2.000000e+00
  %714 = fsub fast float 1.000000e+00, %713
  %715 = fmul fast float %714, %702
  %716 = fadd fast float %715, %713
  %717 = fmul fast float %716, %702
  %718 = fmul fast float %707, %707
  %719 = fmul fast float %712, %712
  %720 = fmul fast float %717, %717
  br label %737

; <label>:721                                     ; preds = %684
  %722 = fmul fast float %219, %219
  %723 = fmul fast float %223, %223
  %724 = fmul fast float %227, %227
  %725 = fadd fast float %722, -1.000000e+00
  %726 = fadd fast float %723, -1.000000e+00
  %727 = fadd fast float %724, -1.000000e+00
  %728 = fmul fast float %573, %725
  %729 = fmul fast float %573, %726
  %730 = fmul fast float %573, %727
  %731 = fadd fast float %728, 1.000000e+00
  %732 = fadd fast float %729, 1.000000e+00
  %733 = fadd fast float %730, 1.000000e+00
  %734 = fmul fast float %731, %548
  %735 = fmul fast float %732, %549
  %736 = fmul fast float %733, %550
  br label %737

; <label>:737                                     ; preds = %721, %687, %578, %536
  %738 = phi float [ %683, %578 ], [ %559, %687 ], [ %559, %721 ], [ 0x3FA23C0BE0000000, %536 ]
  %739 = phi float [ %675, %578 ], [ %718, %687 ], [ %734, %721 ], [ 1.000000e+00, %536 ]
  %740 = phi float [ %676, %578 ], [ %719, %687 ], [ %735, %721 ], [ 1.000000e+00, %536 ]
  %741 = phi float [ %677, %578 ], [ %720, %687 ], [ %736, %721 ], [ 1.000000e+00, %536 ]
  %742 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %743 = extractvalue %dx.types.CBufRet.i32 %742, 1
  %744 = and i32 %743, 1
  %745 = icmp ne i32 %744, 0
  %746 = add i32 %45, 356
  %747 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %746, i32 undef)  ; BufferLoad(srv,index,wot)
  %748 = extractvalue %dx.types.ResRet.i32 %747, 0
  %749 = and i32 %748, 32
  %750 = icmp ne i32 %749, 0
  %751 = and i1 %745, %750
  %752 = select i1 %751, float 1.000000e+00, float %739
  %753 = select i1 %751, float 0x3FD3333340000000, float %740
  %754 = select i1 %751, float 0x3FD3333340000000, float %741
  %755 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %756 = extractvalue %dx.types.ResRet.i32 %755, 0
  %757 = and i32 %756, 32
  %758 = icmp eq i32 %757, 0
  br i1 %758, label %831, label %759

; <label>:759                                     ; preds = %737
  %760 = add i32 %45, 92
  %761 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %760, i32 undef)  ; BufferLoad(srv,index,wot)
  %762 = extractvalue %dx.types.ResRet.i32 %761, 0
  %763 = add i32 %45, 408
  %764 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %763, i32 undef)  ; BufferLoad(srv,index,wot)
  %765 = extractvalue %dx.types.ResRet.i32 %764, 0
  %766 = add i32 %765, 0
  %767 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %766, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %768 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %767, %dx.types.Handle %82, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %769 = extractvalue %dx.types.ResRet.f32 %768, 0
  %770 = extractvalue %dx.types.ResRet.f32 %768, 1
  %771 = extractvalue %dx.types.ResRet.f32 %768, 2
  %772 = extractvalue %dx.types.ResRet.f32 %768, 3
  %773 = and i32 %762, 255
  %774 = uitofp i32 %773 to float
  %775 = lshr i32 %762, 8
  %776 = and i32 %775, 255
  %777 = uitofp i32 %776 to float
  %778 = lshr i32 %762, 16
  %779 = and i32 %778, 255
  %780 = uitofp i32 %779 to float
  %781 = fmul fast float %780, 0x3F70101000000000
  %782 = fmul fast float %769, %774
  %783 = fadd fast float %782, %777
  %784 = fmul fast float %783, 0x3F70101000000000
  %785 = fadd fast float %770, -5.000000e-01
  %786 = fadd fast float %772, -5.000000e-01
  %787 = fmul fast float %785, %781
  %788 = fmul fast float %786, %781
  %789 = fadd fast float %787, 5.000000e-01
  %790 = fadd fast float %788, 5.000000e-01
  %791 = fmul fast float %789, 2.000000e+00
  %792 = fadd fast float %791, -1.000000e+00
  %793 = fmul fast float %790, 2.000000e+00
  %794 = fadd fast float %793, -1.000000e+00
  %795 = fadd fast float %792, %794
  %796 = fmul fast float %795, 5.000000e-01
  %797 = fsub fast float %792, %794
  %798 = fmul fast float %797, 5.000000e-01
  %799 = call float @dx.op.unary.f32(i32 6, float %796)  ; FAbs(value)
  %800 = fsub fast float 1.000000e+00, %799
  %801 = call float @dx.op.unary.f32(i32 6, float %798)  ; FAbs(value)
  %802 = fsub fast float %800, %801
  %803 = call float @dx.op.dot3.f32(i32 55, float %796, float %798, float %802, float %796, float %798, float %802)  ; Dot3(ax,ay,az,bx,by,bz)
  %804 = call float @dx.op.unary.f32(i32 25, float %803)  ; Rsqrt(value)
  %805 = fmul fast float %796, %804
  %806 = fmul fast float %798, %804
  %807 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %808 = extractvalue %dx.types.ResRet.i32 %807, 0
  %809 = and i32 %808, 67108864
  %810 = icmp eq i32 %809, 0
  br i1 %810, label %827, label %811

; <label>:811                                     ; preds = %759
  %812 = add i32 %45, 280
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %812, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 65535
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %818 = extractvalue %dx.types.ResRet.i32 %817, 0
  %819 = and i32 %818, 65535
  %820 = call float @dx.op.legacyF16ToF32(i32 131, i32 %819)  ; LegacyF16ToF32(value)
  %821 = lshr i32 %814, 16
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = fsub fast float %784, %822
  %824 = fmul fast float %823, %816
  %825 = fadd fast float %824, %820
  %826 = call float @dx.op.unary.f32(i32 7, float %825)  ; Saturate(value)
  br label %827

; <label>:827                                     ; preds = %811, %759
  %828 = phi float [ %826, %811 ], [ %784, %759 ]
  %829 = call float @dx.op.dot2.f32(i32 54, float %805, float %806, float %441, float %442)  ; Dot2(ax,ay,bx,by)
  %830 = call float @dx.op.dot2.f32(i32 54, float %805, float %806, float %443, float %444)  ; Dot2(ax,ay,bx,by)
  br label %831

; <label>:831                                     ; preds = %827, %737
  %832 = phi float [ %828, %827 ], [ 0x3FD6666660000000, %737 ]
  %833 = phi float [ %829, %827 ], [ 0.000000e+00, %737 ]
  %834 = phi float [ %830, %827 ], [ 0.000000e+00, %737 ]
  %835 = phi float [ %771, %827 ], [ 1.000000e+00, %737 ]
  %836 = add i32 %45, 160
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %836, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = lshr i32 %838, 22
  %840 = shl nuw nsw i32 %839, 5
  %841 = call float @dx.op.legacyF16ToF32(i32 131, i32 %840)  ; LegacyF16ToF32(value)
  %842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %843 = extractvalue %dx.types.ResRet.i32 %842, 0
  %844 = and i32 %843, 64
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %879, label %846

; <label>:846                                     ; preds = %831
  %847 = add i32 %45, 424
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %847, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = add i32 %849, 0
  %851 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %850, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %853 = extractvalue %dx.types.ResRet.i32 %852, 0
  %854 = and i32 %853, 131072
  %855 = icmp eq i32 %854, 0
  %856 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %851, %dx.types.Handle %82, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %857 = extractvalue %dx.types.ResRet.f32 %856, 0
  %858 = extractvalue %dx.types.ResRet.f32 %856, 1
  %859 = extractvalue %dx.types.ResRet.f32 %856, 2
  %860 = fmul fast float %857, %207
  %861 = fmul fast float %858, %210
  %862 = fmul fast float %859, %213
  br i1 %855, label %869, label %863

; <label>:863                                     ; preds = %846
  %864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %865 = extractvalue %dx.types.CBufRet.f32 %864, 0
  %866 = fmul fast float %865, %860
  %867 = fmul fast float %865, %861
  %868 = fmul fast float %865, %862
  br label %869

; <label>:869                                     ; preds = %863, %846
  %870 = phi float [ %866, %863 ], [ %860, %846 ]
  %871 = phi float [ %867, %863 ], [ %861, %846 ]
  %872 = phi float [ %868, %863 ], [ %862, %846 ]
  %873 = fmul fast float %870, %841
  %874 = select i1 %187, float %873, float %870
  %875 = call float @dx.op.dot3.f32(i32 55, float %874, float %871, float %872, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %876 = select i1 %187, float 0.000000e+00, float %870
  %877 = select i1 %187, float %875, float %871
  %878 = select i1 %187, float 0.000000e+00, float %872
  br label %879

; <label>:879                                     ; preds = %869, %831
  %880 = phi float [ %876, %869 ], [ 0.000000e+00, %831 ]
  %881 = phi float [ %877, %869 ], [ 0.000000e+00, %831 ]
  %882 = phi float [ %878, %869 ], [ 0.000000e+00, %831 ]
  %883 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %884 = extractvalue %dx.types.ResRet.i32 %883, 0
  %885 = and i32 %884, 26624
  %886 = icmp eq i32 %885, 0
  br i1 %886, label %910, label %887

; <label>:887                                     ; preds = %879
  %888 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %430, i32 undef)  ; BufferLoad(srv,index,wot)
  %889 = extractvalue %dx.types.ResRet.i32 %888, 0
  %890 = and i32 %889, 16384
  %891 = icmp eq i32 %890, 0
  br i1 %891, label %910, label %892

; <label>:892                                     ; preds = %887
  %893 = and i32 %889, 1048576
  %894 = icmp ne i32 %893, 0
  %895 = add i32 %45, 488
  %896 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %895, i32 undef)  ; BufferLoad(srv,index,wot)
  %897 = extractvalue %dx.types.ResRet.i32 %896, 0
  %898 = add i32 %897, 0
  %899 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %898, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %900 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %899, %dx.types.Handle %83, float %537, float %538, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %901 = extractvalue %dx.types.ResRet.f32 %900, 0
  %902 = add i32 %45, 96
  %903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %902, i32 undef)  ; BufferLoad(srv,index,wot)
  %904 = extractvalue %dx.types.ResRet.i32 %903, 0
  %905 = lshr i32 %904, 24
  %906 = uitofp i32 %905 to float
  %907 = fmul fast float %901, 0x3F70101020000000
  %908 = select i1 %894, float 0x3F70101020000000, float %907
  %909 = fmul fast float %908, %906
  br label %910

; <label>:910                                     ; preds = %892, %887, %879
  %911 = phi float [ %909, %892 ], [ 0.000000e+00, %887 ], [ 0.000000e+00, %879 ]
  %912 = add i32 %45, 96
  %913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %912, i32 undef)  ; BufferLoad(srv,index,wot)
  %914 = extractvalue %dx.types.ResRet.i32 %913, 0
  %915 = and i32 %914, 255
  %916 = uitofp i32 %915 to float
  %917 = lshr i32 %914, 8
  %918 = and i32 %917, 255
  %919 = uitofp i32 %918 to float
  %920 = call float @dx.op.dot3.f32(i32 55, float %752, float %753, float %754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %921 = fmul fast float %919, %920
  %922 = fadd fast float %921, %916
  %923 = fmul fast float %922, 0x3F70101020000000
  %924 = call float @dx.op.unary.f32(i32 7, float %923)  ; Saturate(value)
  br label %925

; <label>:925                                     ; preds = %910, %423
  %926 = phi float [ 0.000000e+00, %423 ], [ %833, %910 ]
  %927 = phi float [ 0.000000e+00, %423 ], [ %834, %910 ]
  %928 = phi float [ 0.000000e+00, %423 ], [ %752, %910 ]
  %929 = phi float [ 0.000000e+00, %423 ], [ %753, %910 ]
  %930 = phi float [ 0.000000e+00, %423 ], [ %754, %910 ]
  %931 = phi float [ 0.000000e+00, %423 ], [ %880, %910 ]
  %932 = phi float [ 0.000000e+00, %423 ], [ %881, %910 ]
  %933 = phi float [ 0.000000e+00, %423 ], [ %882, %910 ]
  %934 = phi float [ 0.000000e+00, %423 ], [ %738, %910 ]
  %935 = phi float [ 0.000000e+00, %423 ], [ 1.000000e+00, %910 ]
  %936 = phi float [ 0.000000e+00, %423 ], [ %832, %910 ]
  %937 = phi float [ 0.000000e+00, %423 ], [ %835, %910 ]
  %938 = phi float [ 0.000000e+00, %423 ], [ %911, %910 ]
  %939 = phi float [ 0.000000e+00, %423 ], [ %924, %910 ]
  br i1 %374, label %1820, label %940

; <label>:940                                     ; preds = %925
  %941 = icmp ult i32 %429, 2
  %942 = add i32 %45, 40
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = add i32 %45, 44
  %946 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %945, i32 undef)  ; BufferLoad(srv,index,wot)
  %947 = extractvalue %dx.types.ResRet.i32 %946, 0
  %948 = or i32 %947, %944
  %949 = icmp eq i32 %948, 0
  br i1 %949, label %1820, label %950

; <label>:950                                     ; preds = %940
  %951 = and i32 %944, 262144
  %952 = icmp ne i32 %951, 0
  %953 = select i1 %952, float %49, float 1.000000e+00
  %954 = select i1 %952, float %50, float 0.000000e+00
  %955 = select i1 %952, float %51, float 0.000000e+00
  %956 = select i1 %952, float %52, float 1.000000e+00
  %957 = select i1 %952, float %53, float %74
  %958 = select i1 %952, float %54, float %75
  %959 = add i32 %45, 300
  %960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %961 = extractvalue %dx.types.ResRet.i32 %960, 0
  %962 = lshr i32 %961, 16
  %963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %962)  ; LegacyF16ToF32(value)
  %964 = fmul fast float %963, 0x3F50624DE0000000
  %965 = add i32 %45, 104
  %966 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %967 = extractvalue %dx.types.ResRet.i32 %966, 0
  %968 = lshr i32 %967, 16
  %969 = and i32 %968, 255
  %970 = lshr i32 %967, 24
  %971 = add i32 %45, 308
  %972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %971, i32 undef)  ; BufferLoad(srv,index,wot)
  %973 = extractvalue %dx.types.ResRet.i32 %972, 0
  %974 = and i32 %973, 65535
  %975 = call float @dx.op.legacyF16ToF32(i32 131, i32 %974)  ; LegacyF16ToF32(value)
  %976 = lshr i32 %973, 16
  %977 = call float @dx.op.legacyF16ToF32(i32 131, i32 %976)  ; LegacyF16ToF32(value)
  %978 = add i32 %45, 48
  %979 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %978, i32 undef)  ; BufferLoad(srv,index,wot)
  %980 = extractvalue %dx.types.ResRet.i32 %979, 0
  %981 = lshr i32 %980, 22
  %982 = shl nuw nsw i32 %981, 5
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = shl i32 %980, 4
  %985 = and i32 %984, 32752
  %986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %985)  ; LegacyF16ToF32(value)
  %987 = lshr i32 %980, 7
  %988 = and i32 %987, 32752
  %989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %988)  ; LegacyF16ToF32(value)
  %990 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %991 = extractvalue %dx.types.CBufRet.f32 %990, 3
  %992 = fmul fast float %991, 1.000000e+03
  %993 = fmul fast float %284, %992
  %994 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %995 = fadd fast float %994, %274
  %996 = fmul fast float %285, %992
  %997 = call float @dx.op.unary.f32(i32 22, float %996)  ; Frc(value)
  %998 = fadd fast float %997, %276
  %999 = fmul fast float %964, %992
  %1000 = call float @dx.op.unary.f32(i32 22, float %999)  ; Frc(value)
  %1001 = fmul fast float %1000, 0x401921FB60000000
  %1002 = fadd fast float %1001, %983
  %1003 = call float @dx.op.unary.f32(i32 13, float %1002)  ; Sin(value)
  %1004 = call float @dx.op.unary.f32(i32 12, float %1002)  ; Cos(value)
  %1005 = fsub fast float -0.000000e+00, %1003
  %1006 = fadd fast float %957, -5.000000e-01
  %1007 = fadd fast float %958, -5.000000e-01
  %1008 = fmul fast float %975, %1006
  %1009 = fmul fast float %977, %1007
  %1010 = fadd fast float %1008, 5.000000e-01
  %1011 = fadd fast float %1009, 5.000000e-01
  %1012 = fmul fast float %986, %1010
  %1013 = fmul fast float %989, %1011
  %1014 = fmul fast float %1004, %1012
  %1015 = call float @dx.op.tertiary.f32(i32 46, float %1005, float %1013, float %1014)  ; FMad(a,b,c)
  %1016 = fmul fast float %1003, %1012
  %1017 = call float @dx.op.tertiary.f32(i32 46, float %1004, float %1013, float %1016)  ; FMad(a,b,c)
  %1018 = fadd fast float %995, %1015
  %1019 = fadd fast float %998, %1017
  %1020 = icmp ugt i32 %969, 1
  %1021 = icmp ugt i32 %967, 33554431
  %1022 = or i1 %1021, %1020
  br i1 %1022, label %1023, label %1048

; <label>:1023                                    ; preds = %950
  %1024 = add i32 %45, 244
  %1025 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1024, i32 undef)  ; BufferLoad(srv,index,wot)
  %1026 = extractvalue %dx.types.ResRet.i32 %1025, 0
  %1027 = lshr i32 %1026, 16
  %1028 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1027)  ; LegacyF16ToF32(value)
  %1029 = fmul fast float %991, %1028
  %1030 = call float @dx.op.unary.f32(i32 22, float %1029)  ; Frc(value)
  %1031 = mul nuw nsw i32 %969, %970
  %1032 = uitofp i32 %1031 to float
  %1033 = fmul fast float %1030, %1032
  %1034 = call float @dx.op.unary.f32(i32 27, float %1033)  ; Round_ni(value)
  %1035 = fptoui float %1034 to i32
  %1036 = urem i32 %1035, %969
  %1037 = udiv i32 %1035, %970
  %1038 = call float @dx.op.unary.f32(i32 22, float %1018)  ; Frc(value)
  %1039 = call float @dx.op.unary.f32(i32 22, float %1019)  ; Frc(value)
  %1040 = uitofp i32 %1036 to float
  %1041 = uitofp i32 %1037 to float
  %1042 = fadd fast float %1038, %1040
  %1043 = fadd fast float %1039, %1041
  %1044 = uitofp i32 %969 to float
  %1045 = uitofp i32 %970 to float
  %1046 = fdiv fast float %1042, %1044
  %1047 = fdiv fast float %1043, %1045
  br label %1048

; <label>:1048                                    ; preds = %1023, %950
  %1049 = phi float [ %1046, %1023 ], [ %1018, %950 ]
  %1050 = phi float [ %1047, %1023 ], [ %1019, %950 ]
  %1051 = and i32 %944, 16777216
  %1052 = icmp eq i32 %1051, 0
  br i1 %1052, label %1162, label %1053

; <label>:1053                                    ; preds = %1048
  %1054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1055 = extractvalue %dx.types.CBufRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.CBufRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.CBufRet.f32 %1054, 2
  %1058 = fadd fast float %1055, %145
  %1059 = fadd fast float %1056, %146
  %1060 = fadd fast float %1057, %147
  %1061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1062 = extractvalue %dx.types.CBufRet.f32 %1061, 0
  %1063 = call float @dx.op.unary.f32(i32 7, float %1062)  ; Saturate(value)
  %1064 = icmp eq i32 %46, 65535
  br i1 %1064, label %1159, label %1065

; <label>:1065                                    ; preds = %1053
  %1066 = lshr i32 %46, 1
  %1067 = shl i32 %1066, 2
  %1068 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1067, i32 undef)  ; BufferLoad(srv,index,wot)
  %1069 = extractvalue %dx.types.ResRet.i32 %1068, 0
  %1070 = and i32 %46, 1
  %1071 = icmp ne i32 %1070, 0
  %1072 = lshr i32 %1069, 16
  %1073 = and i32 %1069, 65535
  %1074 = select i1 %1071, i32 %1072, i32 %1073
  %1075 = icmp eq i32 %1074, 65535
  br i1 %1075, label %1155, label %1076

; <label>:1076                                    ; preds = %1065
  %1077 = mul nuw nsw i32 %1074, 40
  %1078 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1077, i32 undef)  ; BufferLoad(srv,index,wot)
  %1079 = extractvalue %dx.types.ResRet.f32 %1078, 0
  %1080 = extractvalue %dx.types.ResRet.f32 %1078, 1
  %1081 = extractvalue %dx.types.ResRet.f32 %1078, 2
  %1082 = add nuw nsw i32 %1077, 12
  %1083 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1082, i32 undef)  ; BufferLoad(srv,index,wot)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = add nuw nsw i32 %1077, 24
  %1088 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1087, i32 undef)  ; BufferLoad(srv,index,wot)
  %1089 = extractvalue %dx.types.ResRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.ResRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.ResRet.f32 %1088, 2
  %1092 = add nuw nsw i32 %1077, 36
  %1093 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1092, i32 undef)  ; BufferLoad(srv,index,wot)
  %1094 = extractvalue %dx.types.ResRet.f32 %1093, 0
  %1095 = fsub fast float %1058, %1079
  %1096 = fsub fast float %1059, %1080
  %1097 = fsub fast float %1060, %1081
  %1098 = fmul fast float %1094, %1095
  %1099 = fmul fast float %1094, %1096
  %1100 = fmul fast float %1094, %1097
  %1101 = call float @dx.op.unary.f32(i32 27, float %1098)  ; Round_ni(value)
  %1102 = call float @dx.op.unary.f32(i32 27, float %1099)  ; Round_ni(value)
  %1103 = call float @dx.op.unary.f32(i32 27, float %1100)  ; Round_ni(value)
  %1104 = fadd fast float %1101, 5.000000e-01
  %1105 = fadd fast float %1102, 5.000000e-01
  %1106 = fadd fast float %1103, 5.000000e-01
  %1107 = fmul fast float %1104, %1084
  %1108 = fmul fast float %1105, %1085
  %1109 = fmul fast float %1106, %1086
  %1110 = shl i32 %46, 2
  %1111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1112 = extractvalue %dx.types.ResRet.i32 %1111, 0
  %1113 = add i32 %1112, 0
  %1114 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1113, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1115 = call float @dx.op.unary.f32(i32 22, float %1107)  ; Frc(value)
  %1116 = call float @dx.op.unary.f32(i32 22, float %1108)  ; Frc(value)
  %1117 = call float @dx.op.unary.f32(i32 22, float %1109)  ; Frc(value)
  %1118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1114, %dx.types.Handle %40, float %1115, float %1116, float %1117, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  %1120 = extractvalue %dx.types.ResRet.f32 %1118, 1
  %1121 = extractvalue %dx.types.ResRet.f32 %1118, 2
  %1122 = fmul fast float %1119, 1.023000e+03
  %1123 = fmul fast float %1120, 1.023000e+03
  %1124 = fmul fast float %1121, 1.023000e+03
  %1125 = fadd fast float %1122, 5.000000e-01
  %1126 = fadd fast float %1123, 5.000000e-01
  %1127 = fadd fast float %1124, 5.000000e-01
  %1128 = call float @dx.op.unary.f32(i32 27, float %1125)  ; Round_ni(value)
  %1129 = call float @dx.op.unary.f32(i32 27, float %1126)  ; Round_ni(value)
  %1130 = call float @dx.op.unary.f32(i32 27, float %1127)  ; Round_ni(value)
  %1131 = fsub fast float %1098, %1101
  %1132 = fsub fast float %1099, %1102
  %1133 = fsub fast float %1100, %1103
  %1134 = fmul fast float %1131, 7.500000e-01
  %1135 = fmul fast float %1132, 7.500000e-01
  %1136 = fmul fast float %1133, 7.500000e-01
  %1137 = fadd fast float %1101, 1.250000e-01
  %1138 = fadd fast float %1137, %1134
  %1139 = fadd fast float %1138, %1128
  %1140 = fadd fast float %1102, 1.250000e-01
  %1141 = fadd fast float %1140, %1135
  %1142 = fadd fast float %1141, %1129
  %1143 = fadd fast float %1103, 1.250000e-01
  %1144 = fadd fast float %1143, %1136
  %1145 = fadd fast float %1144, %1130
  %1146 = fmul fast float %1139, %1089
  %1147 = fmul fast float %1142, %1090
  %1148 = fmul fast float %1145, %1091
  %1149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1110, i32 undef)  ; BufferLoad(srv,index,wot)
  %1150 = extractvalue %dx.types.ResRet.i32 %1149, 0
  %1151 = add i32 %1150, 0
  %1152 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1151, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1153 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1152, %dx.types.Handle %38, float %1146, float %1147, float %1148, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1154 = extractvalue %dx.types.ResRet.f32 %1153, 0
  br label %1155

; <label>:1155                                    ; preds = %1076, %1065
  %1156 = phi float [ %1154, %1076 ], [ -1.000000e+00, %1065 ]
  %1157 = fadd fast float %1156, %1063
  %1158 = call float @dx.op.unary.f32(i32 7, float %1157)  ; Saturate(value)
  br label %1159

; <label>:1159                                    ; preds = %1155, %1053
  %1160 = phi float [ %1158, %1155 ], [ %1063, %1053 ]
  %1161 = fmul fast float %1160, %426
  br label %1162

; <label>:1162                                    ; preds = %1159, %1048
  %1163 = phi float [ %1161, %1159 ], [ %426, %1048 ]
  %1164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1165 = extractvalue %dx.types.ResRet.i32 %1164, 0
  %1166 = and i32 %1165, 256
  %1167 = icmp eq i32 %1166, 0
  br i1 %1167, label %1214, label %1168

; <label>:1168                                    ; preds = %1162
  %1169 = add i32 %45, 460
  %1170 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1169, i32 undef)  ; BufferLoad(srv,index,wot)
  %1171 = extractvalue %dx.types.ResRet.i32 %1170, 0
  %1172 = add i32 %1171, 0
  %1173 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1172, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1174 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1173, %dx.types.Handle %83, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1175 = extractvalue %dx.types.ResRet.f32 %1174, 0
  %1176 = add i32 %45, 116
  %1177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1176, i32 undef)  ; BufferLoad(srv,index,wot)
  %1178 = extractvalue %dx.types.ResRet.i32 %1177, 0
  %1179 = shl i32 %1178, 4
  %1180 = and i32 %1179, 32752
  %1181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1180)  ; LegacyF16ToF32(value)
  %1182 = lshr i32 %1178, 7
  %1183 = and i32 %1182, 32752
  %1184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1183)  ; LegacyF16ToF32(value)
  %1185 = fsub fast float 1.000000e+00, %1163
  %1186 = call float @dx.op.binary.f32(i32 35, float %1185, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1187 = bitcast float %1163 to i32
  %1188 = sitofp i32 %1187 to float
  %1189 = fadd fast float %1188, 0xC1CFBF8940000000
  %1190 = fmul fast float %1184, %1189
  %1191 = fadd fast float %1190, 0x41CFBF8940000000
  %1192 = fptosi float %1191 to i32
  %1193 = bitcast i32 %1192 to float
  %1194 = bitcast float %1186 to i32
  %1195 = sitofp i32 %1194 to float
  %1196 = fadd fast float %1195, 0xC1CFBF8940000000
  %1197 = fmul fast float %1196, %1184
  %1198 = fadd fast float %1197, 0x41CFBF8940000000
  %1199 = fptosi float %1198 to i32
  %1200 = bitcast i32 %1199 to float
  %1201 = fmul fast float %1193, %1181
  %1202 = fmul fast float %1200, %1181
  %1203 = fsub fast float %1186, %1201
  %1204 = fadd fast float %1202, %1186
  %1205 = call float @dx.op.unary.f32(i32 7, float %1203)  ; Saturate(value)
  %1206 = call float @dx.op.unary.f32(i32 7, float %1204)  ; Saturate(value)
  %1207 = fsub fast float %1175, %1205
  %1208 = fsub fast float %1206, %1205
  %1209 = bitcast float %1208 to i32
  %1210 = sub nsw i32 2129859010, %1209
  %1211 = bitcast i32 %1210 to float
  %1212 = fmul fast float %1211, %1207
  %1213 = call float @dx.op.unary.f32(i32 7, float %1212)  ; Saturate(value)
  br label %1214

; <label>:1214                                    ; preds = %1168, %1162
  %1215 = phi float [ %1213, %1168 ], [ %1163, %1162 ]
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = and i32 %1217, 128
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1236, label %1220

; <label>:1220                                    ; preds = %1214
  %1221 = add i32 %45, 444
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = add i32 %1223, 0
  %1225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1225, %dx.types.Handle %83, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  %1228 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1229 = extractvalue %dx.types.ResRet.i32 %1228, 0
  %1230 = and i32 %1229, 524288
  %1231 = icmp ne i32 %1230, 0
  %1232 = fcmp fast ogt float %1227, 0x3FE0101020000000
  %1233 = select i1 %1232, float 1.000000e+00, float 0.000000e+00
  %1234 = select i1 %1231, float %1233, float %1227
  %1235 = fmul fast float %1234, %1215
  br label %1236

; <label>:1236                                    ; preds = %1220, %1214
  %1237 = phi float [ %1235, %1220 ], [ %1215, %1214 ]
  %1238 = fcmp fast ult float %1237, 0x3F70101020000000
  br i1 %1238, label %1820, label %1239

; <label>:1239                                    ; preds = %1236
  %1240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1241 = extractvalue %dx.types.ResRet.i32 %1240, 0
  %1242 = and i32 %1241, 16
  %1243 = icmp eq i32 %1242, 0
  br i1 %1243, label %1442, label %1244

; <label>:1244                                    ; preds = %1239
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = add i32 %45, 396
  %1248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1247, i32 undef)  ; BufferLoad(srv,index,wot)
  %1249 = extractvalue %dx.types.ResRet.i32 %1248, 0
  %1250 = add i32 %1249, 0
  %1251 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1250, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1252 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1251, %dx.types.Handle %82, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1253 = extractvalue %dx.types.ResRet.f32 %1252, 0
  %1254 = extractvalue %dx.types.ResRet.f32 %1252, 1
  %1255 = extractvalue %dx.types.ResRet.f32 %1252, 2
  %1256 = extractvalue %dx.types.ResRet.f32 %1252, 3
  %1257 = and i32 %1246, 255
  %1258 = uitofp i32 %1257 to float
  %1259 = lshr i32 %1246, 8
  %1260 = and i32 %1259, 255
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1256, %1258
  %1263 = fadd fast float %1262, %1261
  %1264 = fmul fast float %1263, 0x3F70101000000000
  %1265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1266 = extractvalue %dx.types.ResRet.i32 %1265, 0
  %1267 = and i32 %1266, 512
  %1268 = icmp eq i32 %1267, 0
  br i1 %1268, label %1277, label %1269

; <label>:1269                                    ; preds = %1244
  %1270 = add i32 %45, 476
  %1271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1270, i32 undef)  ; BufferLoad(srv,index,wot)
  %1272 = extractvalue %dx.types.ResRet.i32 %1271, 0
  %1273 = add i32 %1272, 0
  %1274 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1273, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1275 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1274, %dx.types.Handle %83, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1276 = extractvalue %dx.types.ResRet.f32 %1275, 0
  br label %1277

; <label>:1277                                    ; preds = %1269, %1244
  %1278 = phi float [ %1276, %1269 ], [ 1.000000e+00, %1244 ]
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = and i32 %1280, 33554432
  %1282 = icmp eq i32 %1281, 0
  br i1 %1282, label %1389, label %1283

; <label>:1283                                    ; preds = %1277
  %1284 = add i32 %45, 240
  %1285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1284, i32 undef)  ; BufferLoad(srv,index,wot)
  %1286 = extractvalue %dx.types.ResRet.i32 %1285, 0
  %1287 = and i32 %1286, 65535
  %1288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1287)  ; LegacyF16ToF32(value)
  %1289 = lshr i32 %1286, 16
  %1290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1289)  ; LegacyF16ToF32(value)
  %1291 = add i32 %45, 244
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1291, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = and i32 %1293, 65535
  %1295 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1294)  ; LegacyF16ToF32(value)
  %1296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1297 = extractvalue %dx.types.ResRet.i32 %1296, 0
  %1298 = lshr i32 %1297, 24
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1299, 0x3F70101020000000
  %1301 = and i32 %1297, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1302, 0x3F70101020000000
  %1304 = lshr i32 %1297, 8
  %1305 = and i32 %1304, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1306, 0x3F70101020000000
  %1308 = lshr i32 %1297, 16
  %1309 = and i32 %1308, 255
  %1310 = uitofp i32 %1309 to float
  %1311 = fmul fast float %1310, 0x3F70101020000000
  %1312 = add i32 %45, 236
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1312, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = lshr i32 %1314, 24
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3F70101020000000
  %1318 = and i32 %1314, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F70101020000000
  %1321 = lshr i32 %1314, 8
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = lshr i32 %1314, 16
  %1326 = and i32 %1325, 255
  %1327 = uitofp i32 %1326 to float
  %1328 = fmul fast float %1327, 0x3F70101020000000
  %1329 = bitcast float %1253 to i32
  %1330 = ashr i32 %1329, 1
  %1331 = sub nsw i32 1597463174, %1330
  %1332 = bitcast i32 %1331 to float
  %1333 = fmul fast float %1253, 5.000000e-01
  %1334 = fmul fast float %1332, %1332
  %1335 = fmul fast float %1334, %1333
  %1336 = fsub fast float 1.500000e+00, %1335
  %1337 = fmul fast float %1332, %1253
  %1338 = fmul fast float %1337, %1336
  %1339 = bitcast float %1254 to i32
  %1340 = ashr i32 %1339, 1
  %1341 = sub nsw i32 1597463174, %1340
  %1342 = bitcast i32 %1341 to float
  %1343 = fmul fast float %1254, 5.000000e-01
  %1344 = fmul fast float %1342, %1342
  %1345 = fmul fast float %1344, %1343
  %1346 = fsub fast float 1.500000e+00, %1345
  %1347 = fmul fast float %1342, %1254
  %1348 = fmul fast float %1347, %1346
  %1349 = bitcast float %1255 to i32
  %1350 = ashr i32 %1349, 1
  %1351 = sub nsw i32 1597463174, %1350
  %1352 = bitcast i32 %1351 to float
  %1353 = fmul fast float %1255, 5.000000e-01
  %1354 = fmul fast float %1352, %1352
  %1355 = fmul fast float %1354, %1353
  %1356 = fsub fast float 1.500000e+00, %1355
  %1357 = fmul fast float %1352, %1255
  %1358 = fmul fast float %1357, %1356
  %1359 = fsub fast float %1338, %1320
  %1360 = fsub fast float %1348, %1324
  %1361 = fsub fast float %1358, %1328
  %1362 = fmul fast float %1359, %1288
  %1363 = fmul fast float %1360, %1290
  %1364 = fmul fast float %1361, %1295
  %1365 = fadd fast float %1362, %1303
  %1366 = fadd fast float %1363, %1307
  %1367 = fadd fast float %1364, %1311
  %1368 = call float @dx.op.unary.f32(i32 7, float %1365)  ; Saturate(value)
  %1369 = call float @dx.op.unary.f32(i32 7, float %1366)  ; Saturate(value)
  %1370 = call float @dx.op.unary.f32(i32 7, float %1367)  ; Saturate(value)
  %1371 = fmul fast float %1368, %1368
  %1372 = fmul fast float %1369, %1369
  %1373 = fmul fast float %1370, %1370
  %1374 = fsub fast float %1371, %1253
  %1375 = fsub fast float %1372, %1254
  %1376 = fsub fast float %1373, %1255
  %1377 = fmul fast float %1374, %1278
  %1378 = fmul fast float %1375, %1278
  %1379 = fmul fast float %1376, %1278
  %1380 = fadd fast float %1377, %1253
  %1381 = fadd fast float %1378, %1254
  %1382 = fadd fast float %1379, %1255
  %1383 = fadd fast float %1300, %1264
  %1384 = fsub fast float %1383, %1317
  %1385 = call float @dx.op.unary.f32(i32 7, float %1384)  ; Saturate(value)
  %1386 = fsub fast float %1385, %1264
  %1387 = fmul fast float %1386, %1278
  %1388 = fadd fast float %1387, %1264
  br label %1442

; <label>:1389                                    ; preds = %1277
  %1390 = and i32 %1280, 134217728
  %1391 = icmp eq i32 %1390, 0
  br i1 %1391, label %1426, label %1392

; <label>:1392                                    ; preds = %1389
  %1393 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %1394 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %1395 = call float @dx.op.unary.f32(i32 24, float %269)  ; Sqrt(value)
  %1396 = fadd fast float %1393, -5.000000e-01
  %1397 = fadd fast float %1394, -5.000000e-01
  %1398 = fadd fast float %1395, -5.000000e-01
  %1399 = fmul fast float %1396, %1278
  %1400 = fmul fast float %1397, %1278
  %1401 = fmul fast float %1398, %1278
  %1402 = fadd fast float %1399, 5.000000e-01
  %1403 = fadd fast float %1400, 5.000000e-01
  %1404 = fadd fast float %1401, 5.000000e-01
  %1405 = call float @dx.op.unary.f32(i32 24, float %1253)  ; Sqrt(value)
  %1406 = call float @dx.op.unary.f32(i32 24, float %1254)  ; Sqrt(value)
  %1407 = call float @dx.op.unary.f32(i32 24, float %1255)  ; Sqrt(value)
  %1408 = fmul fast float %1402, 2.000000e+00
  %1409 = fsub fast float 1.000000e+00, %1408
  %1410 = fmul fast float %1409, %1405
  %1411 = fadd fast float %1410, %1408
  %1412 = fmul fast float %1411, %1405
  %1413 = fmul fast float %1403, 2.000000e+00
  %1414 = fsub fast float 1.000000e+00, %1413
  %1415 = fmul fast float %1414, %1406
  %1416 = fadd fast float %1415, %1413
  %1417 = fmul fast float %1416, %1406
  %1418 = fmul fast float %1404, 2.000000e+00
  %1419 = fsub fast float 1.000000e+00, %1418
  %1420 = fmul fast float %1419, %1407
  %1421 = fadd fast float %1420, %1418
  %1422 = fmul fast float %1421, %1407
  %1423 = fmul fast float %1412, %1412
  %1424 = fmul fast float %1417, %1417
  %1425 = fmul fast float %1422, %1422
  br label %1442

; <label>:1426                                    ; preds = %1389
  %1427 = fmul fast float %261, %261
  %1428 = fmul fast float %265, %265
  %1429 = fmul fast float %269, %269
  %1430 = fadd fast float %1427, -1.000000e+00
  %1431 = fadd fast float %1428, -1.000000e+00
  %1432 = fadd fast float %1429, -1.000000e+00
  %1433 = fmul fast float %1278, %1430
  %1434 = fmul fast float %1278, %1431
  %1435 = fmul fast float %1278, %1432
  %1436 = fadd fast float %1433, 1.000000e+00
  %1437 = fadd fast float %1434, 1.000000e+00
  %1438 = fadd fast float %1435, 1.000000e+00
  %1439 = fmul fast float %1436, %1253
  %1440 = fmul fast float %1437, %1254
  %1441 = fmul fast float %1438, %1255
  br label %1442

; <label>:1442                                    ; preds = %1426, %1392, %1283, %1239
  %1443 = phi float [ %1388, %1283 ], [ %1264, %1392 ], [ %1264, %1426 ], [ 0x3FA23C0BE0000000, %1239 ]
  %1444 = phi float [ %1380, %1283 ], [ %1423, %1392 ], [ %1439, %1426 ], [ 1.000000e+00, %1239 ]
  %1445 = phi float [ %1381, %1283 ], [ %1424, %1392 ], [ %1440, %1426 ], [ 1.000000e+00, %1239 ]
  %1446 = phi float [ %1382, %1283 ], [ %1425, %1392 ], [ %1441, %1426 ], [ 1.000000e+00, %1239 ]
  %1447 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1448 = extractvalue %dx.types.CBufRet.i32 %1447, 1
  %1449 = and i32 %1448, 1
  %1450 = icmp ne i32 %1449, 0
  %1451 = add i32 %45, 356
  %1452 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1451, i32 undef)  ; BufferLoad(srv,index,wot)
  %1453 = extractvalue %dx.types.ResRet.i32 %1452, 0
  %1454 = and i32 %1453, 32
  %1455 = icmp ne i32 %1454, 0
  %1456 = and i1 %1450, %1455
  %1457 = select i1 %1456, float 1.000000e+00, float %1444
  %1458 = select i1 %1456, float 0x3FD3333340000000, float %1445
  %1459 = select i1 %1456, float 0x3FD3333340000000, float %1446
  %1460 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1461 = extractvalue %dx.types.ResRet.i32 %1460, 0
  %1462 = and i32 %1461, 32
  %1463 = icmp eq i32 %1462, 0
  br i1 %1463, label %1536, label %1464

; <label>:1464                                    ; preds = %1442
  %1465 = add i32 %45, 108
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = add i32 %45, 412
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = add i32 %1470, 0
  %1472 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1471, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1473 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1472, %dx.types.Handle %82, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1474 = extractvalue %dx.types.ResRet.f32 %1473, 0
  %1475 = extractvalue %dx.types.ResRet.f32 %1473, 1
  %1476 = extractvalue %dx.types.ResRet.f32 %1473, 2
  %1477 = extractvalue %dx.types.ResRet.f32 %1473, 3
  %1478 = and i32 %1467, 255
  %1479 = uitofp i32 %1478 to float
  %1480 = lshr i32 %1467, 8
  %1481 = and i32 %1480, 255
  %1482 = uitofp i32 %1481 to float
  %1483 = lshr i32 %1467, 16
  %1484 = and i32 %1483, 255
  %1485 = uitofp i32 %1484 to float
  %1486 = fmul fast float %1485, 0x3F70101000000000
  %1487 = fmul fast float %1474, %1479
  %1488 = fadd fast float %1487, %1482
  %1489 = fmul fast float %1488, 0x3F70101000000000
  %1490 = fadd fast float %1475, -5.000000e-01
  %1491 = fadd fast float %1477, -5.000000e-01
  %1492 = fmul fast float %1490, %1486
  %1493 = fmul fast float %1491, %1486
  %1494 = fadd fast float %1492, 5.000000e-01
  %1495 = fadd fast float %1493, 5.000000e-01
  %1496 = fmul fast float %1494, 2.000000e+00
  %1497 = fadd fast float %1496, -1.000000e+00
  %1498 = fmul fast float %1495, 2.000000e+00
  %1499 = fadd fast float %1498, -1.000000e+00
  %1500 = fadd fast float %1497, %1499
  %1501 = fmul fast float %1500, 5.000000e-01
  %1502 = fsub fast float %1497, %1499
  %1503 = fmul fast float %1502, 5.000000e-01
  %1504 = call float @dx.op.unary.f32(i32 6, float %1501)  ; FAbs(value)
  %1505 = fsub fast float 1.000000e+00, %1504
  %1506 = call float @dx.op.unary.f32(i32 6, float %1503)  ; FAbs(value)
  %1507 = fsub fast float %1505, %1506
  %1508 = call float @dx.op.dot3.f32(i32 55, float %1501, float %1503, float %1507, float %1501, float %1503, float %1507)  ; Dot3(ax,ay,az,bx,by,bz)
  %1509 = call float @dx.op.unary.f32(i32 25, float %1508)  ; Rsqrt(value)
  %1510 = fmul fast float %1501, %1509
  %1511 = fmul fast float %1503, %1509
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = and i32 %1513, 67108864
  %1515 = icmp eq i32 %1514, 0
  br i1 %1515, label %1532, label %1516

; <label>:1516                                    ; preds = %1464
  %1517 = add i32 %45, 296
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 65535
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %959, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 65535
  %1525 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1524)  ; LegacyF16ToF32(value)
  %1526 = lshr i32 %1519, 16
  %1527 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1526)  ; LegacyF16ToF32(value)
  %1528 = fsub fast float %1489, %1527
  %1529 = fmul fast float %1528, %1521
  %1530 = fadd fast float %1529, %1525
  %1531 = call float @dx.op.unary.f32(i32 7, float %1530)  ; Saturate(value)
  br label %1532

; <label>:1532                                    ; preds = %1516, %1464
  %1533 = phi float [ %1531, %1516 ], [ %1489, %1464 ]
  %1534 = call float @dx.op.dot2.f32(i32 54, float %1510, float %1511, float %953, float %954)  ; Dot2(ax,ay,bx,by)
  %1535 = call float @dx.op.dot2.f32(i32 54, float %1510, float %1511, float %955, float %956)  ; Dot2(ax,ay,bx,by)
  br label %1536

; <label>:1536                                    ; preds = %1532, %1442
  %1537 = phi float [ %1533, %1532 ], [ 0x3FD6666660000000, %1442 ]
  %1538 = phi float [ %1534, %1532 ], [ 0.000000e+00, %1442 ]
  %1539 = phi float [ %1535, %1532 ], [ 0.000000e+00, %1442 ]
  %1540 = phi float [ %1476, %1532 ], [ 1.000000e+00, %1442 ]
  %1541 = add i32 %45, 176
  %1542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1541, i32 undef)  ; BufferLoad(srv,index,wot)
  %1543 = extractvalue %dx.types.ResRet.i32 %1542, 0
  %1544 = lshr i32 %1543, 22
  %1545 = shl nuw nsw i32 %1544, 5
  %1546 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1545)  ; LegacyF16ToF32(value)
  %1547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1548 = extractvalue %dx.types.ResRet.i32 %1547, 0
  %1549 = and i32 %1548, 64
  %1550 = icmp eq i32 %1549, 0
  br i1 %1550, label %1584, label %1551

; <label>:1551                                    ; preds = %1536
  %1552 = add i32 %45, 428
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1552, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = add i32 %1554, 0
  %1556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1557 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1558 = extractvalue %dx.types.ResRet.i32 %1557, 0
  %1559 = and i32 %1558, 131072
  %1560 = icmp eq i32 %1559, 0
  %1561 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1556, %dx.types.Handle %82, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1562 = extractvalue %dx.types.ResRet.f32 %1561, 0
  %1563 = extractvalue %dx.types.ResRet.f32 %1561, 1
  %1564 = extractvalue %dx.types.ResRet.f32 %1561, 2
  %1565 = fmul fast float %1562, %249
  %1566 = fmul fast float %1563, %252
  %1567 = fmul fast float %1564, %255
  br i1 %1560, label %1574, label %1568

; <label>:1568                                    ; preds = %1551
  %1569 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1570 = extractvalue %dx.types.CBufRet.f32 %1569, 0
  %1571 = fmul fast float %1570, %1565
  %1572 = fmul fast float %1570, %1566
  %1573 = fmul fast float %1570, %1567
  br label %1574

; <label>:1574                                    ; preds = %1568, %1551
  %1575 = phi float [ %1571, %1568 ], [ %1565, %1551 ]
  %1576 = phi float [ %1572, %1568 ], [ %1566, %1551 ]
  %1577 = phi float [ %1573, %1568 ], [ %1567, %1551 ]
  %1578 = fmul fast float %1575, %1546
  %1579 = select i1 %187, float %1578, float %1575
  %1580 = call float @dx.op.dot3.f32(i32 55, float %1579, float %1576, float %1577, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1581 = select i1 %187, float 0.000000e+00, float %1575
  %1582 = select i1 %187, float %1580, float %1576
  %1583 = select i1 %187, float 0.000000e+00, float %1577
  br label %1584

; <label>:1584                                    ; preds = %1574, %1536
  %1585 = phi float [ %1581, %1574 ], [ 0.000000e+00, %1536 ]
  %1586 = phi float [ %1582, %1574 ], [ 0.000000e+00, %1536 ]
  %1587 = phi float [ %1583, %1574 ], [ 0.000000e+00, %1536 ]
  %1588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1589 = extractvalue %dx.types.ResRet.i32 %1588, 0
  %1590 = and i32 %1589, 26624
  %1591 = icmp eq i32 %1590, 0
  br i1 %1591, label %1615, label %1592

; <label>:1592                                    ; preds = %1584
  %1593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1594 = extractvalue %dx.types.ResRet.i32 %1593, 0
  %1595 = and i32 %1594, 16384
  %1596 = icmp eq i32 %1595, 0
  br i1 %1596, label %1615, label %1597

; <label>:1597                                    ; preds = %1592
  %1598 = and i32 %1594, 1048576
  %1599 = icmp ne i32 %1598, 0
  %1600 = add i32 %45, 492
  %1601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1600, i32 undef)  ; BufferLoad(srv,index,wot)
  %1602 = extractvalue %dx.types.ResRet.i32 %1601, 0
  %1603 = add i32 %1602, 0
  %1604 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1603, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1605 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1604, %dx.types.Handle %83, float %1049, float %1050, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1606 = extractvalue %dx.types.ResRet.f32 %1605, 0
  %1607 = add i32 %45, 112
  %1608 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1607, i32 undef)  ; BufferLoad(srv,index,wot)
  %1609 = extractvalue %dx.types.ResRet.i32 %1608, 0
  %1610 = lshr i32 %1609, 24
  %1611 = uitofp i32 %1610 to float
  %1612 = fmul fast float %1606, 0x3F70101020000000
  %1613 = select i1 %1599, float 0x3F70101020000000, float %1612
  %1614 = fmul fast float %1613, %1611
  br label %1615

; <label>:1615                                    ; preds = %1597, %1592, %1584
  %1616 = phi float [ %1614, %1597 ], [ 0.000000e+00, %1592 ], [ 0.000000e+00, %1584 ]
  %1617 = add i32 %45, 112
  %1618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1617, i32 undef)  ; BufferLoad(srv,index,wot)
  %1619 = extractvalue %dx.types.ResRet.i32 %1618, 0
  %1620 = and i32 %1619, 255
  %1621 = uitofp i32 %1620 to float
  %1622 = lshr i32 %1619, 8
  %1623 = and i32 %1622, 255
  %1624 = uitofp i32 %1623 to float
  %1625 = call float @dx.op.dot3.f32(i32 55, float %1457, float %1458, float %1459, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1626 = fmul fast float %1624, %1625
  %1627 = fadd fast float %1626, %1621
  %1628 = fmul fast float %1627, 0x3F70101020000000
  %1629 = call float @dx.op.unary.f32(i32 7, float %1628)  ; Saturate(value)
  br i1 %941, label %1630, label %1638

; <label>:1630                                    ; preds = %1615
  %1631 = fsub fast float 1.000000e+00, %1237
  %1632 = fmul fast float %1631, %928
  %1633 = fmul fast float %1631, %929
  %1634 = fmul fast float %1631, %930
  %1635 = fmul fast float %1631, %931
  %1636 = fmul fast float %1631, %932
  %1637 = fmul fast float %1631, %933
  br label %1638

; <label>:1638                                    ; preds = %1630, %1615
  %1639 = phi float [ %1632, %1630 ], [ %928, %1615 ]
  %1640 = phi float [ %1633, %1630 ], [ %929, %1615 ]
  %1641 = phi float [ %1634, %1630 ], [ %930, %1615 ]
  %1642 = phi float [ %1635, %1630 ], [ %931, %1615 ]
  %1643 = phi float [ %1636, %1630 ], [ %932, %1615 ]
  %1644 = phi float [ %1637, %1630 ], [ %933, %1615 ]
  %1645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %1646 = extractvalue %dx.types.ResRet.i32 %1645, 0
  %1647 = and i32 %1646, 3
  %1648 = icmp eq i32 %1647, 3
  br i1 %1648, label %1727, label %1649

; <label>:1649                                    ; preds = %1638
  %1650 = and i32 %1646, 16
  %1651 = icmp ne i32 %1650, 0
  %1652 = select i1 %1651, float %1237, float 0.000000e+00
  %1653 = icmp eq i32 %1647, 0
  br i1 %1653, label %1654, label %1682

; <label>:1654                                    ; preds = %1649
  %1655 = and i32 %1646, 64
  %1656 = icmp ne i32 %1655, 0
  %1657 = select i1 %1656, float %1237, float 0.000000e+00
  %1658 = fsub fast float %1457, %1639
  %1659 = fsub fast float %1458, %1640
  %1660 = fsub fast float %1459, %1641
  %1661 = fmul fast float %1652, %1658
  %1662 = fmul fast float %1652, %1659
  %1663 = fmul fast float %1652, %1660
  %1664 = fadd fast float %1661, %1639
  %1665 = fadd fast float %1662, %1640
  %1666 = fadd fast float %1663, %1641
  %1667 = fsub fast float %1443, %934
  %1668 = fmul fast float %1652, %1667
  %1669 = fadd fast float %1668, %934
  %1670 = fsub fast float %1585, %1642
  %1671 = fsub fast float %1586, %1643
  %1672 = fsub fast float %1587, %1644
  %1673 = fmul fast float %1657, %1670
  %1674 = fmul fast float %1657, %1671
  %1675 = fmul fast float %1657, %1672
  %1676 = fadd fast float %1673, %1642
  %1677 = fadd fast float %1674, %1643
  %1678 = fadd fast float %1675, %1644
  %1679 = fsub fast float %1629, %939
  %1680 = fmul fast float %1652, %1679
  %1681 = fadd fast float %1680, %939
  br label %1727

; <label>:1682                                    ; preds = %1649
  %1683 = icmp eq i32 %1647, 1
  br i1 %1683, label %1684, label %1697

; <label>:1684                                    ; preds = %1682
  %1685 = fadd fast float %1457, -1.000000e+00
  %1686 = fadd fast float %1458, -1.000000e+00
  %1687 = fadd fast float %1459, -1.000000e+00
  %1688 = fmul fast float %1652, %1685
  %1689 = fmul fast float %1652, %1686
  %1690 = fmul fast float %1652, %1687
  %1691 = fadd fast float %1688, 1.000000e+00
  %1692 = fadd fast float %1689, 1.000000e+00
  %1693 = fadd fast float %1690, 1.000000e+00
  %1694 = fmul fast float %1691, %1639
  %1695 = fmul fast float %1692, %1640
  %1696 = fmul fast float %1693, %1641
  br label %1727

; <label>:1697                                    ; preds = %1682
  %1698 = icmp eq i32 %1647, 2
  br i1 %1698, label %1699, label %1727

; <label>:1699                                    ; preds = %1697
  %1700 = call float @dx.op.unary.f32(i32 24, float %1457)  ; Sqrt(value)
  %1701 = call float @dx.op.unary.f32(i32 24, float %1458)  ; Sqrt(value)
  %1702 = call float @dx.op.unary.f32(i32 24, float %1459)  ; Sqrt(value)
  %1703 = fadd fast float %1700, -5.000000e-01
  %1704 = fadd fast float %1701, -5.000000e-01
  %1705 = fadd fast float %1702, -5.000000e-01
  %1706 = fmul fast float %1703, %1652
  %1707 = fmul fast float %1704, %1652
  %1708 = fmul fast float %1705, %1652
  %1709 = fadd fast float %1706, 5.000000e-01
  %1710 = fadd fast float %1707, 5.000000e-01
  %1711 = fadd fast float %1708, 5.000000e-01
  %1712 = fmul fast float %1709, 2.000000e+00
  %1713 = fsub fast float 1.000000e+00, %1712
  %1714 = fmul fast float %1713, %1639
  %1715 = fadd fast float %1714, %1712
  %1716 = fmul fast float %1715, %1639
  %1717 = fmul fast float %1710, 2.000000e+00
  %1718 = fsub fast float 1.000000e+00, %1717
  %1719 = fmul fast float %1718, %1640
  %1720 = fadd fast float %1719, %1717
  %1721 = fmul fast float %1720, %1640
  %1722 = fmul fast float %1711, 2.000000e+00
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = fmul fast float %1723, %1641
  %1725 = fadd fast float %1724, %1722
  %1726 = fmul fast float %1725, %1641
  br label %1727

; <label>:1727                                    ; preds = %1699, %1697, %1684, %1654, %1638
  %1728 = phi float [ %1639, %1638 ], [ %1716, %1699 ], [ %1639, %1697 ], [ %1694, %1684 ], [ %1664, %1654 ]
  %1729 = phi float [ %1640, %1638 ], [ %1721, %1699 ], [ %1640, %1697 ], [ %1695, %1684 ], [ %1665, %1654 ]
  %1730 = phi float [ %1641, %1638 ], [ %1726, %1699 ], [ %1641, %1697 ], [ %1696, %1684 ], [ %1666, %1654 ]
  %1731 = phi float [ %1642, %1638 ], [ %1642, %1699 ], [ %1642, %1697 ], [ %1642, %1684 ], [ %1676, %1654 ]
  %1732 = phi float [ %1643, %1638 ], [ %1643, %1699 ], [ %1643, %1697 ], [ %1643, %1684 ], [ %1677, %1654 ]
  %1733 = phi float [ %1644, %1638 ], [ %1644, %1699 ], [ %1644, %1697 ], [ %1644, %1684 ], [ %1678, %1654 ]
  %1734 = phi float [ %934, %1638 ], [ %934, %1699 ], [ %934, %1697 ], [ %934, %1684 ], [ %1669, %1654 ]
  %1735 = phi float [ %939, %1638 ], [ %939, %1699 ], [ %939, %1697 ], [ %939, %1684 ], [ %1681, %1654 ]
  %1736 = and i32 %1646, 12
  %1737 = icmp eq i32 %1736, 12
  br i1 %1737, label %1820, label %1738

; <label>:1738                                    ; preds = %1727
  %1739 = and i32 %1646, 2097184
  %1740 = icmp eq i32 %1739, 2097184
  %1741 = select i1 %1740, float %1237, float 0.000000e+00
  %1742 = and i32 %1646, 4194336
  %1743 = icmp eq i32 %1742, 4194336
  %1744 = select i1 %1743, float %1237, float 0.000000e+00
  %1745 = and i32 %1646, 8388640
  %1746 = icmp eq i32 %1745, 8388640
  %1747 = select i1 %1746, float %1237, float 0.000000e+00
  %1748 = and i32 %1646, 16384
  %1749 = icmp ne i32 %1748, 0
  %1750 = select i1 %1749, float %1237, float 0.000000e+00
  %1751 = icmp eq i32 %1736, 0
  br i1 %1751, label %1752, label %1768

; <label>:1752                                    ; preds = %1738
  %1753 = fsub fast float %1538, %926
  %1754 = fsub fast float %1539, %927
  %1755 = fmul fast float %1741, %1753
  %1756 = fmul fast float %1741, %1754
  %1757 = fadd fast float %1755, %926
  %1758 = fadd fast float %1756, %927
  %1759 = fsub fast float %1540, %937
  %1760 = fmul fast float %1744, %1759
  %1761 = fadd fast float %1760, %937
  %1762 = fsub fast float %1537, %936
  %1763 = fmul fast float %1747, %1762
  %1764 = fadd fast float %1763, %936
  %1765 = fsub fast float %1616, %938
  %1766 = fmul fast float %1750, %1765
  %1767 = fadd fast float %1766, %938
  br label %1820

; <label>:1768                                    ; preds = %1738
  %1769 = icmp eq i32 %1736, 4
  br i1 %1769, label %1770, label %1804

; <label>:1770                                    ; preds = %1768
  %1771 = fmul fast float %1741, %1538
  %1772 = fmul fast float %1741, %1539
  %1773 = fadd fast float %1771, %926
  %1774 = fadd fast float %1772, %927
  %1775 = call float @dx.op.binary.f32(i32 36, float %937, float %1540)  ; FMin(a,b)
  %1776 = fsub fast float %1775, %937
  %1777 = fmul fast float %1776, %1744
  %1778 = fadd fast float %1777, %937
  %1779 = fadd fast float %1537, %936
  %1780 = fmul fast float %1779, 0x3FF337FAE0000000
  %1781 = fmul fast float %936, %936
  %1782 = fmul fast float %1537, %1537
  %1783 = fadd fast float %1782, %1781
  %1784 = fmul fast float %1783, 0x3FE5152B00000000
  %1785 = fmul fast float %936, 0xBFCC1F85E0000000
  %1786 = fmul fast float %1785, %1537
  %1787 = fadd fast float %1786, 0xBFE1363700000000
  %1788 = fadd fast float %1787, %1780
  %1789 = fsub fast float %1788, %1784
  %1790 = fmul fast float %1779, 0x3FBA6F0D00000000
  %1791 = fmul fast float %1783, 0x3FD0432880000000
  %1792 = fmul fast float %936, 0xBFEF110800000000
  %1793 = fmul fast float %1792, %1537
  %1794 = fadd fast float %1793, 1.000000e+00
  %1795 = fsub fast float %1794, %1790
  %1796 = fadd fast float %1795, %1791
  %1797 = fdiv fast float %1789, %1796
  %1798 = call float @dx.op.unary.f32(i32 7, float %1797)  ; Saturate(value)
  %1799 = fsub fast float %1798, %936
  %1800 = fmul fast float %1799, %1747
  %1801 = fadd fast float %1800, %936
  %1802 = fmul fast float %1750, %1616
  %1803 = fadd fast float %1802, %938
  br label %1820

; <label>:1804                                    ; preds = %1768
  %1805 = icmp eq i32 %1736, 8
  br i1 %1805, label %1806, label %1820

; <label>:1806                                    ; preds = %1804
  %1807 = fmul fast float %1741, %1538
  %1808 = fmul fast float %1741, %1539
  %1809 = fadd fast float %1807, %926
  %1810 = fadd fast float %1808, %927
  %1811 = call float @dx.op.binary.f32(i32 36, float %937, float %1540)  ; FMin(a,b)
  %1812 = fsub fast float %1811, %937
  %1813 = fmul fast float %1812, %1744
  %1814 = fadd fast float %1813, %937
  %1815 = fsub fast float %1537, %936
  %1816 = fmul fast float %1747, %1815
  %1817 = fadd fast float %1816, %936
  %1818 = fmul fast float %1750, %1616
  %1819 = fadd fast float %1818, %938
  br label %1820

; <label>:1820                                    ; preds = %1806, %1804, %1770, %1752, %1727, %1236, %940, %925
  %1821 = phi float [ %926, %1727 ], [ %926, %1236 ], [ %926, %925 ], [ %1809, %1806 ], [ %926, %1804 ], [ %1773, %1770 ], [ %1757, %1752 ], [ %926, %940 ]
  %1822 = phi float [ %927, %1727 ], [ %927, %1236 ], [ %927, %925 ], [ %1810, %1806 ], [ %927, %1804 ], [ %1774, %1770 ], [ %1758, %1752 ], [ %927, %940 ]
  %1823 = phi float [ %1728, %1727 ], [ %928, %1236 ], [ %928, %925 ], [ %1728, %1806 ], [ %1728, %1804 ], [ %1728, %1770 ], [ %1728, %1752 ], [ %928, %940 ]
  %1824 = phi float [ %1729, %1727 ], [ %929, %1236 ], [ %929, %925 ], [ %1729, %1806 ], [ %1729, %1804 ], [ %1729, %1770 ], [ %1729, %1752 ], [ %929, %940 ]
  %1825 = phi float [ %1730, %1727 ], [ %930, %1236 ], [ %930, %925 ], [ %1730, %1806 ], [ %1730, %1804 ], [ %1730, %1770 ], [ %1730, %1752 ], [ %930, %940 ]
  %1826 = phi float [ %1731, %1727 ], [ %931, %1236 ], [ %931, %925 ], [ %1731, %1806 ], [ %1731, %1804 ], [ %1731, %1770 ], [ %1731, %1752 ], [ %931, %940 ]
  %1827 = phi float [ %1732, %1727 ], [ %932, %1236 ], [ %932, %925 ], [ %1732, %1806 ], [ %1732, %1804 ], [ %1732, %1770 ], [ %1732, %1752 ], [ %932, %940 ]
  %1828 = phi float [ %1733, %1727 ], [ %933, %1236 ], [ %933, %925 ], [ %1733, %1806 ], [ %1733, %1804 ], [ %1733, %1770 ], [ %1733, %1752 ], [ %933, %940 ]
  %1829 = phi float [ %1734, %1727 ], [ %934, %1236 ], [ %934, %925 ], [ %1734, %1806 ], [ %1734, %1804 ], [ %1734, %1770 ], [ %1734, %1752 ], [ %934, %940 ]
  %1830 = phi float [ %936, %1727 ], [ %936, %1236 ], [ %936, %925 ], [ %1817, %1806 ], [ %936, %1804 ], [ %1801, %1770 ], [ %1764, %1752 ], [ %936, %940 ]
  %1831 = phi float [ %937, %1727 ], [ %937, %1236 ], [ %937, %925 ], [ %1814, %1806 ], [ %937, %1804 ], [ %1778, %1770 ], [ %1761, %1752 ], [ %937, %940 ]
  %1832 = phi float [ %938, %1727 ], [ %938, %1236 ], [ %938, %925 ], [ %1819, %1806 ], [ %938, %1804 ], [ %1803, %1770 ], [ %1767, %1752 ], [ %938, %940 ]
  %1833 = phi float [ %1735, %1727 ], [ %939, %1236 ], [ %939, %925 ], [ %1735, %1806 ], [ %1735, %1804 ], [ %1735, %1770 ], [ %1735, %1752 ], [ %939, %940 ]
  br i1 %376, label %2714, label %1834

; <label>:1834                                    ; preds = %1820
  %1835 = icmp ult i32 %429, 3
  %1836 = add i32 %45, 56
  %1837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %1838 = extractvalue %dx.types.ResRet.i32 %1837, 0
  %1839 = add i32 %45, 60
  %1840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1839, i32 undef)  ; BufferLoad(srv,index,wot)
  %1841 = extractvalue %dx.types.ResRet.i32 %1840, 0
  %1842 = or i32 %1841, %1838
  %1843 = icmp eq i32 %1842, 0
  br i1 %1843, label %2714, label %1844

; <label>:1844                                    ; preds = %1834
  %1845 = and i32 %1838, 262144
  %1846 = icmp ne i32 %1845, 0
  %1847 = select i1 %1846, float %49, float 1.000000e+00
  %1848 = select i1 %1846, float %50, float 0.000000e+00
  %1849 = select i1 %1846, float %51, float 0.000000e+00
  %1850 = select i1 %1846, float %52, float 1.000000e+00
  %1851 = select i1 %1846, float %53, float %74
  %1852 = select i1 %1846, float %54, float %75
  %1853 = add i32 %45, 316
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = lshr i32 %1855, 16
  %1857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1856)  ; LegacyF16ToF32(value)
  %1858 = fmul fast float %1857, 0x3F50624DE0000000
  %1859 = add i32 %45, 120
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = lshr i32 %1861, 16
  %1863 = and i32 %1862, 255
  %1864 = lshr i32 %1861, 24
  %1865 = add i32 %45, 324
  %1866 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1865, i32 undef)  ; BufferLoad(srv,index,wot)
  %1867 = extractvalue %dx.types.ResRet.i32 %1866, 0
  %1868 = and i32 %1867, 65535
  %1869 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1868)  ; LegacyF16ToF32(value)
  %1870 = lshr i32 %1867, 16
  %1871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1870)  ; LegacyF16ToF32(value)
  %1872 = add i32 %45, 64
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = lshr i32 %1874, 22
  %1876 = shl nuw nsw i32 %1875, 5
  %1877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1876)  ; LegacyF16ToF32(value)
  %1878 = shl i32 %1874, 4
  %1879 = and i32 %1878, 32752
  %1880 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1879)  ; LegacyF16ToF32(value)
  %1881 = lshr i32 %1874, 7
  %1882 = and i32 %1881, 32752
  %1883 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1882)  ; LegacyF16ToF32(value)
  %1884 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1885 = extractvalue %dx.types.CBufRet.f32 %1884, 3
  %1886 = fmul fast float %1885, 1.000000e+03
  %1887 = fmul fast float %326, %1886
  %1888 = call float @dx.op.unary.f32(i32 22, float %1887)  ; Frc(value)
  %1889 = fadd fast float %1888, %316
  %1890 = fmul fast float %327, %1886
  %1891 = call float @dx.op.unary.f32(i32 22, float %1890)  ; Frc(value)
  %1892 = fadd fast float %1891, %318
  %1893 = fmul fast float %1858, %1886
  %1894 = call float @dx.op.unary.f32(i32 22, float %1893)  ; Frc(value)
  %1895 = fmul fast float %1894, 0x401921FB60000000
  %1896 = fadd fast float %1895, %1877
  %1897 = call float @dx.op.unary.f32(i32 13, float %1896)  ; Sin(value)
  %1898 = call float @dx.op.unary.f32(i32 12, float %1896)  ; Cos(value)
  %1899 = fsub fast float -0.000000e+00, %1897
  %1900 = fadd fast float %1851, -5.000000e-01
  %1901 = fadd fast float %1852, -5.000000e-01
  %1902 = fmul fast float %1869, %1900
  %1903 = fmul fast float %1871, %1901
  %1904 = fadd fast float %1902, 5.000000e-01
  %1905 = fadd fast float %1903, 5.000000e-01
  %1906 = fmul fast float %1880, %1904
  %1907 = fmul fast float %1883, %1905
  %1908 = fmul fast float %1898, %1906
  %1909 = call float @dx.op.tertiary.f32(i32 46, float %1899, float %1907, float %1908)  ; FMad(a,b,c)
  %1910 = fmul fast float %1897, %1906
  %1911 = call float @dx.op.tertiary.f32(i32 46, float %1898, float %1907, float %1910)  ; FMad(a,b,c)
  %1912 = fadd fast float %1889, %1909
  %1913 = fadd fast float %1892, %1911
  %1914 = icmp ugt i32 %1863, 1
  %1915 = icmp ugt i32 %1861, 33554431
  %1916 = or i1 %1915, %1914
  br i1 %1916, label %1917, label %1942

; <label>:1917                                    ; preds = %1844
  %1918 = add i32 %45, 260
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = lshr i32 %1920, 16
  %1922 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1921)  ; LegacyF16ToF32(value)
  %1923 = fmul fast float %1885, %1922
  %1924 = call float @dx.op.unary.f32(i32 22, float %1923)  ; Frc(value)
  %1925 = mul nuw nsw i32 %1863, %1864
  %1926 = uitofp i32 %1925 to float
  %1927 = fmul fast float %1924, %1926
  %1928 = call float @dx.op.unary.f32(i32 27, float %1927)  ; Round_ni(value)
  %1929 = fptoui float %1928 to i32
  %1930 = urem i32 %1929, %1863
  %1931 = udiv i32 %1929, %1864
  %1932 = call float @dx.op.unary.f32(i32 22, float %1912)  ; Frc(value)
  %1933 = call float @dx.op.unary.f32(i32 22, float %1913)  ; Frc(value)
  %1934 = uitofp i32 %1930 to float
  %1935 = uitofp i32 %1931 to float
  %1936 = fadd fast float %1932, %1934
  %1937 = fadd fast float %1933, %1935
  %1938 = uitofp i32 %1863 to float
  %1939 = uitofp i32 %1864 to float
  %1940 = fdiv fast float %1936, %1938
  %1941 = fdiv fast float %1937, %1939
  br label %1942

; <label>:1942                                    ; preds = %1917, %1844
  %1943 = phi float [ %1940, %1917 ], [ %1912, %1844 ]
  %1944 = phi float [ %1941, %1917 ], [ %1913, %1844 ]
  %1945 = and i32 %1838, 16777216
  %1946 = icmp eq i32 %1945, 0
  br i1 %1946, label %2056, label %1947

; <label>:1947                                    ; preds = %1942
  %1948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1949 = extractvalue %dx.types.CBufRet.f32 %1948, 0
  %1950 = extractvalue %dx.types.CBufRet.f32 %1948, 1
  %1951 = extractvalue %dx.types.CBufRet.f32 %1948, 2
  %1952 = fadd fast float %1949, %145
  %1953 = fadd fast float %1950, %146
  %1954 = fadd fast float %1951, %147
  %1955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1956 = extractvalue %dx.types.CBufRet.f32 %1955, 0
  %1957 = call float @dx.op.unary.f32(i32 7, float %1956)  ; Saturate(value)
  %1958 = icmp eq i32 %46, 65535
  br i1 %1958, label %2053, label %1959

; <label>:1959                                    ; preds = %1947
  %1960 = lshr i32 %46, 1
  %1961 = shl i32 %1960, 2
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = and i32 %46, 1
  %1965 = icmp ne i32 %1964, 0
  %1966 = lshr i32 %1963, 16
  %1967 = and i32 %1963, 65535
  %1968 = select i1 %1965, i32 %1966, i32 %1967
  %1969 = icmp eq i32 %1968, 65535
  br i1 %1969, label %2049, label %1970

; <label>:1970                                    ; preds = %1959
  %1971 = mul nuw nsw i32 %1968, 40
  %1972 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1971, i32 undef)  ; BufferLoad(srv,index,wot)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  %1974 = extractvalue %dx.types.ResRet.f32 %1972, 1
  %1975 = extractvalue %dx.types.ResRet.f32 %1972, 2
  %1976 = add nuw nsw i32 %1971, 12
  %1977 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1978 = extractvalue %dx.types.ResRet.f32 %1977, 0
  %1979 = extractvalue %dx.types.ResRet.f32 %1977, 1
  %1980 = extractvalue %dx.types.ResRet.f32 %1977, 2
  %1981 = add nuw nsw i32 %1971, 24
  %1982 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.f32 %1982, 0
  %1984 = extractvalue %dx.types.ResRet.f32 %1982, 1
  %1985 = extractvalue %dx.types.ResRet.f32 %1982, 2
  %1986 = add nuw nsw i32 %1971, 36
  %1987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1986, i32 undef)  ; BufferLoad(srv,index,wot)
  %1988 = extractvalue %dx.types.ResRet.f32 %1987, 0
  %1989 = fsub fast float %1952, %1973
  %1990 = fsub fast float %1953, %1974
  %1991 = fsub fast float %1954, %1975
  %1992 = fmul fast float %1988, %1989
  %1993 = fmul fast float %1988, %1990
  %1994 = fmul fast float %1988, %1991
  %1995 = call float @dx.op.unary.f32(i32 27, float %1992)  ; Round_ni(value)
  %1996 = call float @dx.op.unary.f32(i32 27, float %1993)  ; Round_ni(value)
  %1997 = call float @dx.op.unary.f32(i32 27, float %1994)  ; Round_ni(value)
  %1998 = fadd fast float %1995, 5.000000e-01
  %1999 = fadd fast float %1996, 5.000000e-01
  %2000 = fadd fast float %1997, 5.000000e-01
  %2001 = fmul fast float %1998, %1978
  %2002 = fmul fast float %1999, %1979
  %2003 = fmul fast float %2000, %1980
  %2004 = shl i32 %46, 2
  %2005 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2006 = extractvalue %dx.types.ResRet.i32 %2005, 0
  %2007 = add i32 %2006, 0
  %2008 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2007, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2009 = call float @dx.op.unary.f32(i32 22, float %2001)  ; Frc(value)
  %2010 = call float @dx.op.unary.f32(i32 22, float %2002)  ; Frc(value)
  %2011 = call float @dx.op.unary.f32(i32 22, float %2003)  ; Frc(value)
  %2012 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2008, %dx.types.Handle %40, float %2009, float %2010, float %2011, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2013 = extractvalue %dx.types.ResRet.f32 %2012, 0
  %2014 = extractvalue %dx.types.ResRet.f32 %2012, 1
  %2015 = extractvalue %dx.types.ResRet.f32 %2012, 2
  %2016 = fmul fast float %2013, 1.023000e+03
  %2017 = fmul fast float %2014, 1.023000e+03
  %2018 = fmul fast float %2015, 1.023000e+03
  %2019 = fadd fast float %2016, 5.000000e-01
  %2020 = fadd fast float %2017, 5.000000e-01
  %2021 = fadd fast float %2018, 5.000000e-01
  %2022 = call float @dx.op.unary.f32(i32 27, float %2019)  ; Round_ni(value)
  %2023 = call float @dx.op.unary.f32(i32 27, float %2020)  ; Round_ni(value)
  %2024 = call float @dx.op.unary.f32(i32 27, float %2021)  ; Round_ni(value)
  %2025 = fsub fast float %1992, %1995
  %2026 = fsub fast float %1993, %1996
  %2027 = fsub fast float %1994, %1997
  %2028 = fmul fast float %2025, 7.500000e-01
  %2029 = fmul fast float %2026, 7.500000e-01
  %2030 = fmul fast float %2027, 7.500000e-01
  %2031 = fadd fast float %1995, 1.250000e-01
  %2032 = fadd fast float %2031, %2028
  %2033 = fadd fast float %2032, %2022
  %2034 = fadd fast float %1996, 1.250000e-01
  %2035 = fadd fast float %2034, %2029
  %2036 = fadd fast float %2035, %2023
  %2037 = fadd fast float %1997, 1.250000e-01
  %2038 = fadd fast float %2037, %2030
  %2039 = fadd fast float %2038, %2024
  %2040 = fmul fast float %2033, %1983
  %2041 = fmul fast float %2036, %1984
  %2042 = fmul fast float %2039, %1985
  %2043 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2004, i32 undef)  ; BufferLoad(srv,index,wot)
  %2044 = extractvalue %dx.types.ResRet.i32 %2043, 0
  %2045 = add i32 %2044, 0
  %2046 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2045, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2047 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2046, %dx.types.Handle %38, float %2040, float %2041, float %2042, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2048 = extractvalue %dx.types.ResRet.f32 %2047, 0
  br label %2049

; <label>:2049                                    ; preds = %1970, %1959
  %2050 = phi float [ %2048, %1970 ], [ -1.000000e+00, %1959 ]
  %2051 = fadd fast float %2050, %1957
  %2052 = call float @dx.op.unary.f32(i32 7, float %2051)  ; Saturate(value)
  br label %2053

; <label>:2053                                    ; preds = %2049, %1947
  %2054 = phi float [ %2052, %2049 ], [ %1957, %1947 ]
  %2055 = fmul fast float %2054, %425
  br label %2056

; <label>:2056                                    ; preds = %2053, %1942
  %2057 = phi float [ %2055, %2053 ], [ %425, %1942 ]
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = and i32 %2059, 256
  %2061 = icmp eq i32 %2060, 0
  br i1 %2061, label %2108, label %2062

; <label>:2062                                    ; preds = %2056
  %2063 = add i32 %45, 464
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2063, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = add i32 %2065, 0
  %2067 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2066, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2068 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2067, %dx.types.Handle %83, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2069 = extractvalue %dx.types.ResRet.f32 %2068, 0
  %2070 = add i32 %45, 132
  %2071 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2070, i32 undef)  ; BufferLoad(srv,index,wot)
  %2072 = extractvalue %dx.types.ResRet.i32 %2071, 0
  %2073 = shl i32 %2072, 4
  %2074 = and i32 %2073, 32752
  %2075 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2074)  ; LegacyF16ToF32(value)
  %2076 = lshr i32 %2072, 7
  %2077 = and i32 %2076, 32752
  %2078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2077)  ; LegacyF16ToF32(value)
  %2079 = fsub fast float 1.000000e+00, %2057
  %2080 = call float @dx.op.binary.f32(i32 35, float %2079, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2081 = bitcast float %2057 to i32
  %2082 = sitofp i32 %2081 to float
  %2083 = fadd fast float %2082, 0xC1CFBF8940000000
  %2084 = fmul fast float %2078, %2083
  %2085 = fadd fast float %2084, 0x41CFBF8940000000
  %2086 = fptosi float %2085 to i32
  %2087 = bitcast i32 %2086 to float
  %2088 = bitcast float %2080 to i32
  %2089 = sitofp i32 %2088 to float
  %2090 = fadd fast float %2089, 0xC1CFBF8940000000
  %2091 = fmul fast float %2090, %2078
  %2092 = fadd fast float %2091, 0x41CFBF8940000000
  %2093 = fptosi float %2092 to i32
  %2094 = bitcast i32 %2093 to float
  %2095 = fmul fast float %2087, %2075
  %2096 = fmul fast float %2094, %2075
  %2097 = fsub fast float %2080, %2095
  %2098 = fadd fast float %2096, %2080
  %2099 = call float @dx.op.unary.f32(i32 7, float %2097)  ; Saturate(value)
  %2100 = call float @dx.op.unary.f32(i32 7, float %2098)  ; Saturate(value)
  %2101 = fsub fast float %2069, %2099
  %2102 = fsub fast float %2100, %2099
  %2103 = bitcast float %2102 to i32
  %2104 = sub nsw i32 2129859010, %2103
  %2105 = bitcast i32 %2104 to float
  %2106 = fmul fast float %2105, %2101
  %2107 = call float @dx.op.unary.f32(i32 7, float %2106)  ; Saturate(value)
  br label %2108

; <label>:2108                                    ; preds = %2062, %2056
  %2109 = phi float [ %2107, %2062 ], [ %2057, %2056 ]
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = and i32 %2111, 128
  %2113 = icmp eq i32 %2112, 0
  br i1 %2113, label %2130, label %2114

; <label>:2114                                    ; preds = %2108
  %2115 = add i32 %45, 448
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2115, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = add i32 %2117, 0
  %2119 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2118, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2120 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2119, %dx.types.Handle %83, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2121 = extractvalue %dx.types.ResRet.f32 %2120, 0
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = and i32 %2123, 524288
  %2125 = icmp ne i32 %2124, 0
  %2126 = fcmp fast ogt float %2121, 0x3FE0101020000000
  %2127 = select i1 %2126, float 1.000000e+00, float 0.000000e+00
  %2128 = select i1 %2125, float %2127, float %2121
  %2129 = fmul fast float %2128, %2109
  br label %2130

; <label>:2130                                    ; preds = %2114, %2108
  %2131 = phi float [ %2129, %2114 ], [ %2109, %2108 ]
  %2132 = fcmp fast ult float %2131, 0x3F70101020000000
  br i1 %2132, label %2714, label %2133

; <label>:2133                                    ; preds = %2130
  %2134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2135 = extractvalue %dx.types.ResRet.i32 %2134, 0
  %2136 = and i32 %2135, 16
  %2137 = icmp eq i32 %2136, 0
  br i1 %2137, label %2336, label %2138

; <label>:2138                                    ; preds = %2133
  %2139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %2140 = extractvalue %dx.types.ResRet.i32 %2139, 0
  %2141 = add i32 %45, 400
  %2142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2141, i32 undef)  ; BufferLoad(srv,index,wot)
  %2143 = extractvalue %dx.types.ResRet.i32 %2142, 0
  %2144 = add i32 %2143, 0
  %2145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2145, %dx.types.Handle %82, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2147 = extractvalue %dx.types.ResRet.f32 %2146, 0
  %2148 = extractvalue %dx.types.ResRet.f32 %2146, 1
  %2149 = extractvalue %dx.types.ResRet.f32 %2146, 2
  %2150 = extractvalue %dx.types.ResRet.f32 %2146, 3
  %2151 = and i32 %2140, 255
  %2152 = uitofp i32 %2151 to float
  %2153 = lshr i32 %2140, 8
  %2154 = and i32 %2153, 255
  %2155 = uitofp i32 %2154 to float
  %2156 = fmul fast float %2150, %2152
  %2157 = fadd fast float %2156, %2155
  %2158 = fmul fast float %2157, 0x3F70101000000000
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = and i32 %2160, 512
  %2162 = icmp eq i32 %2161, 0
  br i1 %2162, label %2171, label %2163

; <label>:2163                                    ; preds = %2138
  %2164 = add i32 %45, 480
  %2165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2164, i32 undef)  ; BufferLoad(srv,index,wot)
  %2166 = extractvalue %dx.types.ResRet.i32 %2165, 0
  %2167 = add i32 %2166, 0
  %2168 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2167, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2169 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2168, %dx.types.Handle %83, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2170 = extractvalue %dx.types.ResRet.f32 %2169, 0
  br label %2171

; <label>:2171                                    ; preds = %2163, %2138
  %2172 = phi float [ %2170, %2163 ], [ 1.000000e+00, %2138 ]
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = and i32 %2174, 33554432
  %2176 = icmp eq i32 %2175, 0
  br i1 %2176, label %2283, label %2177

; <label>:2177                                    ; preds = %2171
  %2178 = add i32 %45, 256
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = and i32 %2180, 65535
  %2182 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2181)  ; LegacyF16ToF32(value)
  %2183 = lshr i32 %2180, 16
  %2184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2183)  ; LegacyF16ToF32(value)
  %2185 = add i32 %45, 260
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2185, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = and i32 %2187, 65535
  %2189 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2188)  ; LegacyF16ToF32(value)
  %2190 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %298, i32 undef)  ; BufferLoad(srv,index,wot)
  %2191 = extractvalue %dx.types.ResRet.i32 %2190, 0
  %2192 = lshr i32 %2191, 24
  %2193 = uitofp i32 %2192 to float
  %2194 = fmul fast float %2193, 0x3F70101020000000
  %2195 = and i32 %2191, 255
  %2196 = uitofp i32 %2195 to float
  %2197 = fmul fast float %2196, 0x3F70101020000000
  %2198 = lshr i32 %2191, 8
  %2199 = and i32 %2198, 255
  %2200 = uitofp i32 %2199 to float
  %2201 = fmul fast float %2200, 0x3F70101020000000
  %2202 = lshr i32 %2191, 16
  %2203 = and i32 %2202, 255
  %2204 = uitofp i32 %2203 to float
  %2205 = fmul fast float %2204, 0x3F70101020000000
  %2206 = add i32 %45, 252
  %2207 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2206, i32 undef)  ; BufferLoad(srv,index,wot)
  %2208 = extractvalue %dx.types.ResRet.i32 %2207, 0
  %2209 = lshr i32 %2208, 24
  %2210 = uitofp i32 %2209 to float
  %2211 = fmul fast float %2210, 0x3F70101020000000
  %2212 = and i32 %2208, 255
  %2213 = uitofp i32 %2212 to float
  %2214 = fmul fast float %2213, 0x3F70101020000000
  %2215 = lshr i32 %2208, 8
  %2216 = and i32 %2215, 255
  %2217 = uitofp i32 %2216 to float
  %2218 = fmul fast float %2217, 0x3F70101020000000
  %2219 = lshr i32 %2208, 16
  %2220 = and i32 %2219, 255
  %2221 = uitofp i32 %2220 to float
  %2222 = fmul fast float %2221, 0x3F70101020000000
  %2223 = bitcast float %2147 to i32
  %2224 = ashr i32 %2223, 1
  %2225 = sub nsw i32 1597463174, %2224
  %2226 = bitcast i32 %2225 to float
  %2227 = fmul fast float %2147, 5.000000e-01
  %2228 = fmul fast float %2226, %2226
  %2229 = fmul fast float %2228, %2227
  %2230 = fsub fast float 1.500000e+00, %2229
  %2231 = fmul fast float %2226, %2147
  %2232 = fmul fast float %2231, %2230
  %2233 = bitcast float %2148 to i32
  %2234 = ashr i32 %2233, 1
  %2235 = sub nsw i32 1597463174, %2234
  %2236 = bitcast i32 %2235 to float
  %2237 = fmul fast float %2148, 5.000000e-01
  %2238 = fmul fast float %2236, %2236
  %2239 = fmul fast float %2238, %2237
  %2240 = fsub fast float 1.500000e+00, %2239
  %2241 = fmul fast float %2236, %2148
  %2242 = fmul fast float %2241, %2240
  %2243 = bitcast float %2149 to i32
  %2244 = ashr i32 %2243, 1
  %2245 = sub nsw i32 1597463174, %2244
  %2246 = bitcast i32 %2245 to float
  %2247 = fmul fast float %2149, 5.000000e-01
  %2248 = fmul fast float %2246, %2246
  %2249 = fmul fast float %2248, %2247
  %2250 = fsub fast float 1.500000e+00, %2249
  %2251 = fmul fast float %2246, %2149
  %2252 = fmul fast float %2251, %2250
  %2253 = fsub fast float %2232, %2214
  %2254 = fsub fast float %2242, %2218
  %2255 = fsub fast float %2252, %2222
  %2256 = fmul fast float %2253, %2182
  %2257 = fmul fast float %2254, %2184
  %2258 = fmul fast float %2255, %2189
  %2259 = fadd fast float %2256, %2197
  %2260 = fadd fast float %2257, %2201
  %2261 = fadd fast float %2258, %2205
  %2262 = call float @dx.op.unary.f32(i32 7, float %2259)  ; Saturate(value)
  %2263 = call float @dx.op.unary.f32(i32 7, float %2260)  ; Saturate(value)
  %2264 = call float @dx.op.unary.f32(i32 7, float %2261)  ; Saturate(value)
  %2265 = fmul fast float %2262, %2262
  %2266 = fmul fast float %2263, %2263
  %2267 = fmul fast float %2264, %2264
  %2268 = fsub fast float %2265, %2147
  %2269 = fsub fast float %2266, %2148
  %2270 = fsub fast float %2267, %2149
  %2271 = fmul fast float %2268, %2172
  %2272 = fmul fast float %2269, %2172
  %2273 = fmul fast float %2270, %2172
  %2274 = fadd fast float %2271, %2147
  %2275 = fadd fast float %2272, %2148
  %2276 = fadd fast float %2273, %2149
  %2277 = fadd fast float %2194, %2158
  %2278 = fsub fast float %2277, %2211
  %2279 = call float @dx.op.unary.f32(i32 7, float %2278)  ; Saturate(value)
  %2280 = fsub fast float %2279, %2158
  %2281 = fmul fast float %2280, %2172
  %2282 = fadd fast float %2281, %2158
  br label %2336

; <label>:2283                                    ; preds = %2171
  %2284 = and i32 %2174, 134217728
  %2285 = icmp eq i32 %2284, 0
  br i1 %2285, label %2320, label %2286

; <label>:2286                                    ; preds = %2283
  %2287 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %2288 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2289 = call float @dx.op.unary.f32(i32 24, float %311)  ; Sqrt(value)
  %2290 = fadd fast float %2287, -5.000000e-01
  %2291 = fadd fast float %2288, -5.000000e-01
  %2292 = fadd fast float %2289, -5.000000e-01
  %2293 = fmul fast float %2290, %2172
  %2294 = fmul fast float %2291, %2172
  %2295 = fmul fast float %2292, %2172
  %2296 = fadd fast float %2293, 5.000000e-01
  %2297 = fadd fast float %2294, 5.000000e-01
  %2298 = fadd fast float %2295, 5.000000e-01
  %2299 = call float @dx.op.unary.f32(i32 24, float %2147)  ; Sqrt(value)
  %2300 = call float @dx.op.unary.f32(i32 24, float %2148)  ; Sqrt(value)
  %2301 = call float @dx.op.unary.f32(i32 24, float %2149)  ; Sqrt(value)
  %2302 = fmul fast float %2296, 2.000000e+00
  %2303 = fsub fast float 1.000000e+00, %2302
  %2304 = fmul fast float %2303, %2299
  %2305 = fadd fast float %2304, %2302
  %2306 = fmul fast float %2305, %2299
  %2307 = fmul fast float %2297, 2.000000e+00
  %2308 = fsub fast float 1.000000e+00, %2307
  %2309 = fmul fast float %2308, %2300
  %2310 = fadd fast float %2309, %2307
  %2311 = fmul fast float %2310, %2300
  %2312 = fmul fast float %2298, 2.000000e+00
  %2313 = fsub fast float 1.000000e+00, %2312
  %2314 = fmul fast float %2313, %2301
  %2315 = fadd fast float %2314, %2312
  %2316 = fmul fast float %2315, %2301
  %2317 = fmul fast float %2306, %2306
  %2318 = fmul fast float %2311, %2311
  %2319 = fmul fast float %2316, %2316
  br label %2336

; <label>:2320                                    ; preds = %2283
  %2321 = fmul fast float %303, %303
  %2322 = fmul fast float %307, %307
  %2323 = fmul fast float %311, %311
  %2324 = fadd fast float %2321, -1.000000e+00
  %2325 = fadd fast float %2322, -1.000000e+00
  %2326 = fadd fast float %2323, -1.000000e+00
  %2327 = fmul fast float %2172, %2324
  %2328 = fmul fast float %2172, %2325
  %2329 = fmul fast float %2172, %2326
  %2330 = fadd fast float %2327, 1.000000e+00
  %2331 = fadd fast float %2328, 1.000000e+00
  %2332 = fadd fast float %2329, 1.000000e+00
  %2333 = fmul fast float %2330, %2147
  %2334 = fmul fast float %2331, %2148
  %2335 = fmul fast float %2332, %2149
  br label %2336

; <label>:2336                                    ; preds = %2320, %2286, %2177, %2133
  %2337 = phi float [ %2282, %2177 ], [ %2158, %2286 ], [ %2158, %2320 ], [ 0x3FA23C0BE0000000, %2133 ]
  %2338 = phi float [ %2274, %2177 ], [ %2317, %2286 ], [ %2333, %2320 ], [ 1.000000e+00, %2133 ]
  %2339 = phi float [ %2275, %2177 ], [ %2318, %2286 ], [ %2334, %2320 ], [ 1.000000e+00, %2133 ]
  %2340 = phi float [ %2276, %2177 ], [ %2319, %2286 ], [ %2335, %2320 ], [ 1.000000e+00, %2133 ]
  %2341 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2342 = extractvalue %dx.types.CBufRet.i32 %2341, 1
  %2343 = and i32 %2342, 1
  %2344 = icmp ne i32 %2343, 0
  %2345 = add i32 %45, 356
  %2346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2345, i32 undef)  ; BufferLoad(srv,index,wot)
  %2347 = extractvalue %dx.types.ResRet.i32 %2346, 0
  %2348 = and i32 %2347, 32
  %2349 = icmp ne i32 %2348, 0
  %2350 = and i1 %2344, %2349
  %2351 = select i1 %2350, float 1.000000e+00, float %2338
  %2352 = select i1 %2350, float 0x3FD3333340000000, float %2339
  %2353 = select i1 %2350, float 0x3FD3333340000000, float %2340
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = and i32 %2355, 32
  %2357 = icmp eq i32 %2356, 0
  br i1 %2357, label %2430, label %2358

; <label>:2358                                    ; preds = %2336
  %2359 = add i32 %45, 124
  %2360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2359, i32 undef)  ; BufferLoad(srv,index,wot)
  %2361 = extractvalue %dx.types.ResRet.i32 %2360, 0
  %2362 = add i32 %45, 416
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2362, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = add i32 %2364, 0
  %2366 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2365, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2367 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2366, %dx.types.Handle %82, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2368 = extractvalue %dx.types.ResRet.f32 %2367, 0
  %2369 = extractvalue %dx.types.ResRet.f32 %2367, 1
  %2370 = extractvalue %dx.types.ResRet.f32 %2367, 2
  %2371 = extractvalue %dx.types.ResRet.f32 %2367, 3
  %2372 = and i32 %2361, 255
  %2373 = uitofp i32 %2372 to float
  %2374 = lshr i32 %2361, 8
  %2375 = and i32 %2374, 255
  %2376 = uitofp i32 %2375 to float
  %2377 = lshr i32 %2361, 16
  %2378 = and i32 %2377, 255
  %2379 = uitofp i32 %2378 to float
  %2380 = fmul fast float %2379, 0x3F70101000000000
  %2381 = fmul fast float %2368, %2373
  %2382 = fadd fast float %2381, %2376
  %2383 = fmul fast float %2382, 0x3F70101000000000
  %2384 = fadd fast float %2369, -5.000000e-01
  %2385 = fadd fast float %2371, -5.000000e-01
  %2386 = fmul fast float %2384, %2380
  %2387 = fmul fast float %2385, %2380
  %2388 = fadd fast float %2386, 5.000000e-01
  %2389 = fadd fast float %2387, 5.000000e-01
  %2390 = fmul fast float %2388, 2.000000e+00
  %2391 = fadd fast float %2390, -1.000000e+00
  %2392 = fmul fast float %2389, 2.000000e+00
  %2393 = fadd fast float %2392, -1.000000e+00
  %2394 = fadd fast float %2391, %2393
  %2395 = fmul fast float %2394, 5.000000e-01
  %2396 = fsub fast float %2391, %2393
  %2397 = fmul fast float %2396, 5.000000e-01
  %2398 = call float @dx.op.unary.f32(i32 6, float %2395)  ; FAbs(value)
  %2399 = fsub fast float 1.000000e+00, %2398
  %2400 = call float @dx.op.unary.f32(i32 6, float %2397)  ; FAbs(value)
  %2401 = fsub fast float %2399, %2400
  %2402 = call float @dx.op.dot3.f32(i32 55, float %2395, float %2397, float %2401, float %2395, float %2397, float %2401)  ; Dot3(ax,ay,az,bx,by,bz)
  %2403 = call float @dx.op.unary.f32(i32 25, float %2402)  ; Rsqrt(value)
  %2404 = fmul fast float %2395, %2403
  %2405 = fmul fast float %2397, %2403
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 67108864
  %2409 = icmp eq i32 %2408, 0
  br i1 %2409, label %2426, label %2410

; <label>:2410                                    ; preds = %2358
  %2411 = add i32 %45, 312
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2411, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 65535
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2417 = extractvalue %dx.types.ResRet.i32 %2416, 0
  %2418 = and i32 %2417, 65535
  %2419 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2418)  ; LegacyF16ToF32(value)
  %2420 = lshr i32 %2413, 16
  %2421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2420)  ; LegacyF16ToF32(value)
  %2422 = fsub fast float %2383, %2421
  %2423 = fmul fast float %2422, %2415
  %2424 = fadd fast float %2423, %2419
  %2425 = call float @dx.op.unary.f32(i32 7, float %2424)  ; Saturate(value)
  br label %2426

; <label>:2426                                    ; preds = %2410, %2358
  %2427 = phi float [ %2425, %2410 ], [ %2383, %2358 ]
  %2428 = call float @dx.op.dot2.f32(i32 54, float %2404, float %2405, float %1847, float %1848)  ; Dot2(ax,ay,bx,by)
  %2429 = call float @dx.op.dot2.f32(i32 54, float %2404, float %2405, float %1849, float %1850)  ; Dot2(ax,ay,bx,by)
  br label %2430

; <label>:2430                                    ; preds = %2426, %2336
  %2431 = phi float [ %2427, %2426 ], [ 0x3FD6666660000000, %2336 ]
  %2432 = phi float [ %2428, %2426 ], [ 0.000000e+00, %2336 ]
  %2433 = phi float [ %2429, %2426 ], [ 0.000000e+00, %2336 ]
  %2434 = phi float [ %2370, %2426 ], [ 1.000000e+00, %2336 ]
  %2435 = add i32 %45, 192
  %2436 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2435, i32 undef)  ; BufferLoad(srv,index,wot)
  %2437 = extractvalue %dx.types.ResRet.i32 %2436, 0
  %2438 = lshr i32 %2437, 22
  %2439 = shl nuw nsw i32 %2438, 5
  %2440 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2439)  ; LegacyF16ToF32(value)
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = and i32 %2442, 64
  %2444 = icmp eq i32 %2443, 0
  br i1 %2444, label %2478, label %2445

; <label>:2445                                    ; preds = %2430
  %2446 = add i32 %45, 432
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2446, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = add i32 %2448, 0
  %2450 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2449, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2451 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2452 = extractvalue %dx.types.ResRet.i32 %2451, 0
  %2453 = and i32 %2452, 131072
  %2454 = icmp eq i32 %2453, 0
  %2455 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2450, %dx.types.Handle %82, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2456 = extractvalue %dx.types.ResRet.f32 %2455, 0
  %2457 = extractvalue %dx.types.ResRet.f32 %2455, 1
  %2458 = extractvalue %dx.types.ResRet.f32 %2455, 2
  %2459 = fmul fast float %2456, %291
  %2460 = fmul fast float %2457, %294
  %2461 = fmul fast float %2458, %297
  br i1 %2454, label %2468, label %2462

; <label>:2462                                    ; preds = %2445
  %2463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2464 = extractvalue %dx.types.CBufRet.f32 %2463, 0
  %2465 = fmul fast float %2464, %2459
  %2466 = fmul fast float %2464, %2460
  %2467 = fmul fast float %2464, %2461
  br label %2468

; <label>:2468                                    ; preds = %2462, %2445
  %2469 = phi float [ %2465, %2462 ], [ %2459, %2445 ]
  %2470 = phi float [ %2466, %2462 ], [ %2460, %2445 ]
  %2471 = phi float [ %2467, %2462 ], [ %2461, %2445 ]
  %2472 = fmul fast float %2469, %2440
  %2473 = select i1 %187, float %2472, float %2469
  %2474 = call float @dx.op.dot3.f32(i32 55, float %2473, float %2470, float %2471, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2475 = select i1 %187, float 0.000000e+00, float %2469
  %2476 = select i1 %187, float %2474, float %2470
  %2477 = select i1 %187, float 0.000000e+00, float %2471
  br label %2478

; <label>:2478                                    ; preds = %2468, %2430
  %2479 = phi float [ %2475, %2468 ], [ 0.000000e+00, %2430 ]
  %2480 = phi float [ %2476, %2468 ], [ 0.000000e+00, %2430 ]
  %2481 = phi float [ %2477, %2468 ], [ 0.000000e+00, %2430 ]
  %2482 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2483 = extractvalue %dx.types.ResRet.i32 %2482, 0
  %2484 = and i32 %2483, 26624
  %2485 = icmp eq i32 %2484, 0
  br i1 %2485, label %2509, label %2486

; <label>:2486                                    ; preds = %2478
  %2487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2488 = extractvalue %dx.types.ResRet.i32 %2487, 0
  %2489 = and i32 %2488, 16384
  %2490 = icmp eq i32 %2489, 0
  br i1 %2490, label %2509, label %2491

; <label>:2491                                    ; preds = %2486
  %2492 = and i32 %2488, 1048576
  %2493 = icmp ne i32 %2492, 0
  %2494 = add i32 %45, 496
  %2495 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2494, i32 undef)  ; BufferLoad(srv,index,wot)
  %2496 = extractvalue %dx.types.ResRet.i32 %2495, 0
  %2497 = add i32 %2496, 0
  %2498 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2497, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2499 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2498, %dx.types.Handle %83, float %1943, float %1944, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2500 = extractvalue %dx.types.ResRet.f32 %2499, 0
  %2501 = add i32 %45, 128
  %2502 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2501, i32 undef)  ; BufferLoad(srv,index,wot)
  %2503 = extractvalue %dx.types.ResRet.i32 %2502, 0
  %2504 = lshr i32 %2503, 24
  %2505 = uitofp i32 %2504 to float
  %2506 = fmul fast float %2500, 0x3F70101020000000
  %2507 = select i1 %2493, float 0x3F70101020000000, float %2506
  %2508 = fmul fast float %2507, %2505
  br label %2509

; <label>:2509                                    ; preds = %2491, %2486, %2478
  %2510 = phi float [ %2508, %2491 ], [ 0.000000e+00, %2486 ], [ 0.000000e+00, %2478 ]
  %2511 = add i32 %45, 128
  %2512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2511, i32 undef)  ; BufferLoad(srv,index,wot)
  %2513 = extractvalue %dx.types.ResRet.i32 %2512, 0
  %2514 = and i32 %2513, 255
  %2515 = uitofp i32 %2514 to float
  %2516 = lshr i32 %2513, 8
  %2517 = and i32 %2516, 255
  %2518 = uitofp i32 %2517 to float
  %2519 = call float @dx.op.dot3.f32(i32 55, float %2351, float %2352, float %2353, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2520 = fmul fast float %2518, %2519
  %2521 = fadd fast float %2520, %2515
  %2522 = fmul fast float %2521, 0x3F70101020000000
  %2523 = call float @dx.op.unary.f32(i32 7, float %2522)  ; Saturate(value)
  br i1 %1835, label %2524, label %2532

; <label>:2524                                    ; preds = %2509
  %2525 = fsub fast float 1.000000e+00, %2131
  %2526 = fmul fast float %2525, %1823
  %2527 = fmul fast float %2525, %1824
  %2528 = fmul fast float %2525, %1825
  %2529 = fmul fast float %2525, %1826
  %2530 = fmul fast float %2525, %1827
  %2531 = fmul fast float %2525, %1828
  br label %2532

; <label>:2532                                    ; preds = %2524, %2509
  %2533 = phi float [ %2526, %2524 ], [ %1823, %2509 ]
  %2534 = phi float [ %2527, %2524 ], [ %1824, %2509 ]
  %2535 = phi float [ %2528, %2524 ], [ %1825, %2509 ]
  %2536 = phi float [ %2529, %2524 ], [ %1826, %2509 ]
  %2537 = phi float [ %2530, %2524 ], [ %1827, %2509 ]
  %2538 = phi float [ %2531, %2524 ], [ %1828, %2509 ]
  %2539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1836, i32 undef)  ; BufferLoad(srv,index,wot)
  %2540 = extractvalue %dx.types.ResRet.i32 %2539, 0
  %2541 = and i32 %2540, 3
  %2542 = icmp eq i32 %2541, 3
  br i1 %2542, label %2621, label %2543

; <label>:2543                                    ; preds = %2532
  %2544 = and i32 %2540, 16
  %2545 = icmp ne i32 %2544, 0
  %2546 = select i1 %2545, float %2131, float 0.000000e+00
  %2547 = icmp eq i32 %2541, 0
  br i1 %2547, label %2548, label %2576

; <label>:2548                                    ; preds = %2543
  %2549 = and i32 %2540, 64
  %2550 = icmp ne i32 %2549, 0
  %2551 = select i1 %2550, float %2131, float 0.000000e+00
  %2552 = fsub fast float %2351, %2533
  %2553 = fsub fast float %2352, %2534
  %2554 = fsub fast float %2353, %2535
  %2555 = fmul fast float %2546, %2552
  %2556 = fmul fast float %2546, %2553
  %2557 = fmul fast float %2546, %2554
  %2558 = fadd fast float %2555, %2533
  %2559 = fadd fast float %2556, %2534
  %2560 = fadd fast float %2557, %2535
  %2561 = fsub fast float %2337, %1829
  %2562 = fmul fast float %2546, %2561
  %2563 = fadd fast float %2562, %1829
  %2564 = fsub fast float %2479, %2536
  %2565 = fsub fast float %2480, %2537
  %2566 = fsub fast float %2481, %2538
  %2567 = fmul fast float %2551, %2564
  %2568 = fmul fast float %2551, %2565
  %2569 = fmul fast float %2551, %2566
  %2570 = fadd fast float %2567, %2536
  %2571 = fadd fast float %2568, %2537
  %2572 = fadd fast float %2569, %2538
  %2573 = fsub fast float %2523, %1833
  %2574 = fmul fast float %2546, %2573
  %2575 = fadd fast float %2574, %1833
  br label %2621

; <label>:2576                                    ; preds = %2543
  %2577 = icmp eq i32 %2541, 1
  br i1 %2577, label %2578, label %2591

; <label>:2578                                    ; preds = %2576
  %2579 = fadd fast float %2351, -1.000000e+00
  %2580 = fadd fast float %2352, -1.000000e+00
  %2581 = fadd fast float %2353, -1.000000e+00
  %2582 = fmul fast float %2546, %2579
  %2583 = fmul fast float %2546, %2580
  %2584 = fmul fast float %2546, %2581
  %2585 = fadd fast float %2582, 1.000000e+00
  %2586 = fadd fast float %2583, 1.000000e+00
  %2587 = fadd fast float %2584, 1.000000e+00
  %2588 = fmul fast float %2585, %2533
  %2589 = fmul fast float %2586, %2534
  %2590 = fmul fast float %2587, %2535
  br label %2621

; <label>:2591                                    ; preds = %2576
  %2592 = icmp eq i32 %2541, 2
  br i1 %2592, label %2593, label %2621

; <label>:2593                                    ; preds = %2591
  %2594 = call float @dx.op.unary.f32(i32 24, float %2351)  ; Sqrt(value)
  %2595 = call float @dx.op.unary.f32(i32 24, float %2352)  ; Sqrt(value)
  %2596 = call float @dx.op.unary.f32(i32 24, float %2353)  ; Sqrt(value)
  %2597 = fadd fast float %2594, -5.000000e-01
  %2598 = fadd fast float %2595, -5.000000e-01
  %2599 = fadd fast float %2596, -5.000000e-01
  %2600 = fmul fast float %2597, %2546
  %2601 = fmul fast float %2598, %2546
  %2602 = fmul fast float %2599, %2546
  %2603 = fadd fast float %2600, 5.000000e-01
  %2604 = fadd fast float %2601, 5.000000e-01
  %2605 = fadd fast float %2602, 5.000000e-01
  %2606 = fmul fast float %2603, 2.000000e+00
  %2607 = fsub fast float 1.000000e+00, %2606
  %2608 = fmul fast float %2607, %2533
  %2609 = fadd fast float %2608, %2606
  %2610 = fmul fast float %2609, %2533
  %2611 = fmul fast float %2604, 2.000000e+00
  %2612 = fsub fast float 1.000000e+00, %2611
  %2613 = fmul fast float %2612, %2534
  %2614 = fadd fast float %2613, %2611
  %2615 = fmul fast float %2614, %2534
  %2616 = fmul fast float %2605, 2.000000e+00
  %2617 = fsub fast float 1.000000e+00, %2616
  %2618 = fmul fast float %2617, %2535
  %2619 = fadd fast float %2618, %2616
  %2620 = fmul fast float %2619, %2535
  br label %2621

; <label>:2621                                    ; preds = %2593, %2591, %2578, %2548, %2532
  %2622 = phi float [ %2533, %2532 ], [ %2610, %2593 ], [ %2533, %2591 ], [ %2588, %2578 ], [ %2558, %2548 ]
  %2623 = phi float [ %2534, %2532 ], [ %2615, %2593 ], [ %2534, %2591 ], [ %2589, %2578 ], [ %2559, %2548 ]
  %2624 = phi float [ %2535, %2532 ], [ %2620, %2593 ], [ %2535, %2591 ], [ %2590, %2578 ], [ %2560, %2548 ]
  %2625 = phi float [ %2536, %2532 ], [ %2536, %2593 ], [ %2536, %2591 ], [ %2536, %2578 ], [ %2570, %2548 ]
  %2626 = phi float [ %2537, %2532 ], [ %2537, %2593 ], [ %2537, %2591 ], [ %2537, %2578 ], [ %2571, %2548 ]
  %2627 = phi float [ %2538, %2532 ], [ %2538, %2593 ], [ %2538, %2591 ], [ %2538, %2578 ], [ %2572, %2548 ]
  %2628 = phi float [ %1829, %2532 ], [ %1829, %2593 ], [ %1829, %2591 ], [ %1829, %2578 ], [ %2563, %2548 ]
  %2629 = phi float [ %1833, %2532 ], [ %1833, %2593 ], [ %1833, %2591 ], [ %1833, %2578 ], [ %2575, %2548 ]
  %2630 = and i32 %2540, 12
  %2631 = icmp eq i32 %2630, 12
  br i1 %2631, label %2714, label %2632

; <label>:2632                                    ; preds = %2621
  %2633 = and i32 %2540, 2097184
  %2634 = icmp eq i32 %2633, 2097184
  %2635 = select i1 %2634, float %2131, float 0.000000e+00
  %2636 = and i32 %2540, 4194336
  %2637 = icmp eq i32 %2636, 4194336
  %2638 = select i1 %2637, float %2131, float 0.000000e+00
  %2639 = and i32 %2540, 8388640
  %2640 = icmp eq i32 %2639, 8388640
  %2641 = select i1 %2640, float %2131, float 0.000000e+00
  %2642 = and i32 %2540, 16384
  %2643 = icmp ne i32 %2642, 0
  %2644 = select i1 %2643, float %2131, float 0.000000e+00
  %2645 = icmp eq i32 %2630, 0
  br i1 %2645, label %2646, label %2662

; <label>:2646                                    ; preds = %2632
  %2647 = fsub fast float %2432, %1821
  %2648 = fsub fast float %2433, %1822
  %2649 = fmul fast float %2635, %2647
  %2650 = fmul fast float %2635, %2648
  %2651 = fadd fast float %2649, %1821
  %2652 = fadd fast float %2650, %1822
  %2653 = fsub fast float %2434, %1831
  %2654 = fmul fast float %2638, %2653
  %2655 = fadd fast float %2654, %1831
  %2656 = fsub fast float %2431, %1830
  %2657 = fmul fast float %2641, %2656
  %2658 = fadd fast float %2657, %1830
  %2659 = fsub fast float %2510, %1832
  %2660 = fmul fast float %2644, %2659
  %2661 = fadd fast float %2660, %1832
  br label %2714

; <label>:2662                                    ; preds = %2632
  %2663 = icmp eq i32 %2630, 4
  br i1 %2663, label %2664, label %2698

; <label>:2664                                    ; preds = %2662
  %2665 = fmul fast float %2635, %2432
  %2666 = fmul fast float %2635, %2433
  %2667 = fadd fast float %2665, %1821
  %2668 = fadd fast float %2666, %1822
  %2669 = call float @dx.op.binary.f32(i32 36, float %1831, float %2434)  ; FMin(a,b)
  %2670 = fsub fast float %2669, %1831
  %2671 = fmul fast float %2670, %2638
  %2672 = fadd fast float %2671, %1831
  %2673 = fadd fast float %2431, %1830
  %2674 = fmul fast float %2673, 0x3FF337FAE0000000
  %2675 = fmul fast float %1830, %1830
  %2676 = fmul fast float %2431, %2431
  %2677 = fadd fast float %2676, %2675
  %2678 = fmul fast float %2677, 0x3FE5152B00000000
  %2679 = fmul fast float %1830, 0xBFCC1F85E0000000
  %2680 = fmul fast float %2679, %2431
  %2681 = fadd fast float %2680, 0xBFE1363700000000
  %2682 = fadd fast float %2681, %2674
  %2683 = fsub fast float %2682, %2678
  %2684 = fmul fast float %2673, 0x3FBA6F0D00000000
  %2685 = fmul fast float %2677, 0x3FD0432880000000
  %2686 = fmul fast float %1830, 0xBFEF110800000000
  %2687 = fmul fast float %2686, %2431
  %2688 = fadd fast float %2687, 1.000000e+00
  %2689 = fsub fast float %2688, %2684
  %2690 = fadd fast float %2689, %2685
  %2691 = fdiv fast float %2683, %2690
  %2692 = call float @dx.op.unary.f32(i32 7, float %2691)  ; Saturate(value)
  %2693 = fsub fast float %2692, %1830
  %2694 = fmul fast float %2693, %2641
  %2695 = fadd fast float %2694, %1830
  %2696 = fmul fast float %2644, %2510
  %2697 = fadd fast float %2696, %1832
  br label %2714

; <label>:2698                                    ; preds = %2662
  %2699 = icmp eq i32 %2630, 8
  br i1 %2699, label %2700, label %2714

; <label>:2700                                    ; preds = %2698
  %2701 = fmul fast float %2635, %2432
  %2702 = fmul fast float %2635, %2433
  %2703 = fadd fast float %2701, %1821
  %2704 = fadd fast float %2702, %1822
  %2705 = call float @dx.op.binary.f32(i32 36, float %1831, float %2434)  ; FMin(a,b)
  %2706 = fsub fast float %2705, %1831
  %2707 = fmul fast float %2706, %2638
  %2708 = fadd fast float %2707, %1831
  %2709 = fsub fast float %2431, %1830
  %2710 = fmul fast float %2641, %2709
  %2711 = fadd fast float %2710, %1830
  %2712 = fmul fast float %2644, %2510
  %2713 = fadd fast float %2712, %1832
  br label %2714

; <label>:2714                                    ; preds = %2700, %2698, %2664, %2646, %2621, %2130, %1834, %1820
  %2715 = phi float [ %1821, %2621 ], [ %1821, %2130 ], [ %1821, %1820 ], [ %2703, %2700 ], [ %1821, %2698 ], [ %2667, %2664 ], [ %2651, %2646 ], [ %1821, %1834 ]
  %2716 = phi float [ %1822, %2621 ], [ %1822, %2130 ], [ %1822, %1820 ], [ %2704, %2700 ], [ %1822, %2698 ], [ %2668, %2664 ], [ %2652, %2646 ], [ %1822, %1834 ]
  %2717 = phi float [ %2622, %2621 ], [ %1823, %2130 ], [ %1823, %1820 ], [ %2622, %2700 ], [ %2622, %2698 ], [ %2622, %2664 ], [ %2622, %2646 ], [ %1823, %1834 ]
  %2718 = phi float [ %2623, %2621 ], [ %1824, %2130 ], [ %1824, %1820 ], [ %2623, %2700 ], [ %2623, %2698 ], [ %2623, %2664 ], [ %2623, %2646 ], [ %1824, %1834 ]
  %2719 = phi float [ %2624, %2621 ], [ %1825, %2130 ], [ %1825, %1820 ], [ %2624, %2700 ], [ %2624, %2698 ], [ %2624, %2664 ], [ %2624, %2646 ], [ %1825, %1834 ]
  %2720 = phi float [ %2625, %2621 ], [ %1826, %2130 ], [ %1826, %1820 ], [ %2625, %2700 ], [ %2625, %2698 ], [ %2625, %2664 ], [ %2625, %2646 ], [ %1826, %1834 ]
  %2721 = phi float [ %2626, %2621 ], [ %1827, %2130 ], [ %1827, %1820 ], [ %2626, %2700 ], [ %2626, %2698 ], [ %2626, %2664 ], [ %2626, %2646 ], [ %1827, %1834 ]
  %2722 = phi float [ %2627, %2621 ], [ %1828, %2130 ], [ %1828, %1820 ], [ %2627, %2700 ], [ %2627, %2698 ], [ %2627, %2664 ], [ %2627, %2646 ], [ %1828, %1834 ]
  %2723 = phi float [ %2628, %2621 ], [ %1829, %2130 ], [ %1829, %1820 ], [ %2628, %2700 ], [ %2628, %2698 ], [ %2628, %2664 ], [ %2628, %2646 ], [ %1829, %1834 ]
  %2724 = phi float [ %1830, %2621 ], [ %1830, %2130 ], [ %1830, %1820 ], [ %2711, %2700 ], [ %1830, %2698 ], [ %2695, %2664 ], [ %2658, %2646 ], [ %1830, %1834 ]
  %2725 = phi float [ %1831, %2621 ], [ %1831, %2130 ], [ %1831, %1820 ], [ %2708, %2700 ], [ %1831, %2698 ], [ %2672, %2664 ], [ %2655, %2646 ], [ %1831, %1834 ]
  %2726 = phi float [ %1832, %2621 ], [ %1832, %2130 ], [ %1832, %1820 ], [ %2713, %2700 ], [ %1832, %2698 ], [ %2697, %2664 ], [ %2661, %2646 ], [ %1832, %1834 ]
  %2727 = phi float [ %2629, %2621 ], [ %1833, %2130 ], [ %1833, %1820 ], [ %2629, %2700 ], [ %2629, %2698 ], [ %2629, %2664 ], [ %2629, %2646 ], [ %1833, %1834 ]
  br i1 %378, label %3608, label %2728

; <label>:2728                                    ; preds = %2714
  %2729 = icmp ult i32 %429, 4
  %2730 = add i32 %45, 72
  %2731 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2732 = extractvalue %dx.types.ResRet.i32 %2731, 0
  %2733 = add i32 %45, 76
  %2734 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2733, i32 undef)  ; BufferLoad(srv,index,wot)
  %2735 = extractvalue %dx.types.ResRet.i32 %2734, 0
  %2736 = or i32 %2735, %2732
  %2737 = icmp eq i32 %2736, 0
  br i1 %2737, label %3608, label %2738

; <label>:2738                                    ; preds = %2728
  %2739 = and i32 %2732, 262144
  %2740 = icmp ne i32 %2739, 0
  %2741 = select i1 %2740, float %49, float 1.000000e+00
  %2742 = select i1 %2740, float %50, float 0.000000e+00
  %2743 = select i1 %2740, float %51, float 0.000000e+00
  %2744 = select i1 %2740, float %52, float 1.000000e+00
  %2745 = select i1 %2740, float %53, float %74
  %2746 = select i1 %2740, float %54, float %75
  %2747 = add i32 %45, 332
  %2748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2749 = extractvalue %dx.types.ResRet.i32 %2748, 0
  %2750 = lshr i32 %2749, 16
  %2751 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2750)  ; LegacyF16ToF32(value)
  %2752 = fmul fast float %2751, 0x3F50624DE0000000
  %2753 = add i32 %45, 136
  %2754 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %2755 = extractvalue %dx.types.ResRet.i32 %2754, 0
  %2756 = lshr i32 %2755, 16
  %2757 = and i32 %2756, 255
  %2758 = lshr i32 %2755, 24
  %2759 = add i32 %45, 340
  %2760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2759, i32 undef)  ; BufferLoad(srv,index,wot)
  %2761 = extractvalue %dx.types.ResRet.i32 %2760, 0
  %2762 = and i32 %2761, 65535
  %2763 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2762)  ; LegacyF16ToF32(value)
  %2764 = lshr i32 %2761, 16
  %2765 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2764)  ; LegacyF16ToF32(value)
  %2766 = add i32 %45, 80
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = lshr i32 %2768, 22
  %2770 = shl nuw nsw i32 %2769, 5
  %2771 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2770)  ; LegacyF16ToF32(value)
  %2772 = shl i32 %2768, 4
  %2773 = and i32 %2772, 32752
  %2774 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2773)  ; LegacyF16ToF32(value)
  %2775 = lshr i32 %2768, 7
  %2776 = and i32 %2775, 32752
  %2777 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2776)  ; LegacyF16ToF32(value)
  %2778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2779 = extractvalue %dx.types.CBufRet.f32 %2778, 3
  %2780 = fmul fast float %2779, 1.000000e+03
  %2781 = fmul fast float %368, %2780
  %2782 = call float @dx.op.unary.f32(i32 22, float %2781)  ; Frc(value)
  %2783 = fadd fast float %2782, %358
  %2784 = fmul fast float %369, %2780
  %2785 = call float @dx.op.unary.f32(i32 22, float %2784)  ; Frc(value)
  %2786 = fadd fast float %2785, %360
  %2787 = fmul fast float %2752, %2780
  %2788 = call float @dx.op.unary.f32(i32 22, float %2787)  ; Frc(value)
  %2789 = fmul fast float %2788, 0x401921FB60000000
  %2790 = fadd fast float %2789, %2771
  %2791 = call float @dx.op.unary.f32(i32 13, float %2790)  ; Sin(value)
  %2792 = call float @dx.op.unary.f32(i32 12, float %2790)  ; Cos(value)
  %2793 = fsub fast float -0.000000e+00, %2791
  %2794 = fadd fast float %2745, -5.000000e-01
  %2795 = fadd fast float %2746, -5.000000e-01
  %2796 = fmul fast float %2763, %2794
  %2797 = fmul fast float %2765, %2795
  %2798 = fadd fast float %2796, 5.000000e-01
  %2799 = fadd fast float %2797, 5.000000e-01
  %2800 = fmul fast float %2774, %2798
  %2801 = fmul fast float %2777, %2799
  %2802 = fmul fast float %2792, %2800
  %2803 = call float @dx.op.tertiary.f32(i32 46, float %2793, float %2801, float %2802)  ; FMad(a,b,c)
  %2804 = fmul fast float %2791, %2800
  %2805 = call float @dx.op.tertiary.f32(i32 46, float %2792, float %2801, float %2804)  ; FMad(a,b,c)
  %2806 = fadd fast float %2783, %2803
  %2807 = fadd fast float %2786, %2805
  %2808 = icmp ugt i32 %2757, 1
  %2809 = icmp ugt i32 %2755, 33554431
  %2810 = or i1 %2809, %2808
  br i1 %2810, label %2811, label %2836

; <label>:2811                                    ; preds = %2738
  %2812 = add i32 %45, 276
  %2813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2812, i32 undef)  ; BufferLoad(srv,index,wot)
  %2814 = extractvalue %dx.types.ResRet.i32 %2813, 0
  %2815 = lshr i32 %2814, 16
  %2816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2815)  ; LegacyF16ToF32(value)
  %2817 = fmul fast float %2779, %2816
  %2818 = call float @dx.op.unary.f32(i32 22, float %2817)  ; Frc(value)
  %2819 = mul nuw nsw i32 %2757, %2758
  %2820 = uitofp i32 %2819 to float
  %2821 = fmul fast float %2818, %2820
  %2822 = call float @dx.op.unary.f32(i32 27, float %2821)  ; Round_ni(value)
  %2823 = fptoui float %2822 to i32
  %2824 = urem i32 %2823, %2757
  %2825 = udiv i32 %2823, %2758
  %2826 = call float @dx.op.unary.f32(i32 22, float %2806)  ; Frc(value)
  %2827 = call float @dx.op.unary.f32(i32 22, float %2807)  ; Frc(value)
  %2828 = uitofp i32 %2824 to float
  %2829 = uitofp i32 %2825 to float
  %2830 = fadd fast float %2826, %2828
  %2831 = fadd fast float %2827, %2829
  %2832 = uitofp i32 %2757 to float
  %2833 = uitofp i32 %2758 to float
  %2834 = fdiv fast float %2830, %2832
  %2835 = fdiv fast float %2831, %2833
  br label %2836

; <label>:2836                                    ; preds = %2811, %2738
  %2837 = phi float [ %2834, %2811 ], [ %2806, %2738 ]
  %2838 = phi float [ %2835, %2811 ], [ %2807, %2738 ]
  %2839 = and i32 %2732, 16777216
  %2840 = icmp eq i32 %2839, 0
  br i1 %2840, label %2950, label %2841

; <label>:2841                                    ; preds = %2836
  %2842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2843 = extractvalue %dx.types.CBufRet.f32 %2842, 0
  %2844 = extractvalue %dx.types.CBufRet.f32 %2842, 1
  %2845 = extractvalue %dx.types.CBufRet.f32 %2842, 2
  %2846 = fadd fast float %2843, %145
  %2847 = fadd fast float %2844, %146
  %2848 = fadd fast float %2845, %147
  %2849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2850 = extractvalue %dx.types.CBufRet.f32 %2849, 0
  %2851 = call float @dx.op.unary.f32(i32 7, float %2850)  ; Saturate(value)
  %2852 = icmp eq i32 %46, 65535
  br i1 %2852, label %2947, label %2853

; <label>:2853                                    ; preds = %2841
  %2854 = lshr i32 %46, 1
  %2855 = shl i32 %2854, 2
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = and i32 %46, 1
  %2859 = icmp ne i32 %2858, 0
  %2860 = lshr i32 %2857, 16
  %2861 = and i32 %2857, 65535
  %2862 = select i1 %2859, i32 %2860, i32 %2861
  %2863 = icmp eq i32 %2862, 65535
  br i1 %2863, label %2943, label %2864

; <label>:2864                                    ; preds = %2853
  %2865 = mul nuw nsw i32 %2862, 40
  %2866 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2865, i32 undef)  ; BufferLoad(srv,index,wot)
  %2867 = extractvalue %dx.types.ResRet.f32 %2866, 0
  %2868 = extractvalue %dx.types.ResRet.f32 %2866, 1
  %2869 = extractvalue %dx.types.ResRet.f32 %2866, 2
  %2870 = add nuw nsw i32 %2865, 12
  %2871 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2870, i32 undef)  ; BufferLoad(srv,index,wot)
  %2872 = extractvalue %dx.types.ResRet.f32 %2871, 0
  %2873 = extractvalue %dx.types.ResRet.f32 %2871, 1
  %2874 = extractvalue %dx.types.ResRet.f32 %2871, 2
  %2875 = add nuw nsw i32 %2865, 24
  %2876 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2875, i32 undef)  ; BufferLoad(srv,index,wot)
  %2877 = extractvalue %dx.types.ResRet.f32 %2876, 0
  %2878 = extractvalue %dx.types.ResRet.f32 %2876, 1
  %2879 = extractvalue %dx.types.ResRet.f32 %2876, 2
  %2880 = add nuw nsw i32 %2865, 36
  %2881 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.f32 %2881, 0
  %2883 = fsub fast float %2846, %2867
  %2884 = fsub fast float %2847, %2868
  %2885 = fsub fast float %2848, %2869
  %2886 = fmul fast float %2882, %2883
  %2887 = fmul fast float %2882, %2884
  %2888 = fmul fast float %2882, %2885
  %2889 = call float @dx.op.unary.f32(i32 27, float %2886)  ; Round_ni(value)
  %2890 = call float @dx.op.unary.f32(i32 27, float %2887)  ; Round_ni(value)
  %2891 = call float @dx.op.unary.f32(i32 27, float %2888)  ; Round_ni(value)
  %2892 = fadd fast float %2889, 5.000000e-01
  %2893 = fadd fast float %2890, 5.000000e-01
  %2894 = fadd fast float %2891, 5.000000e-01
  %2895 = fmul fast float %2892, %2872
  %2896 = fmul fast float %2893, %2873
  %2897 = fmul fast float %2894, %2874
  %2898 = shl i32 %46, 2
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = add i32 %2900, 0
  %2902 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2901, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2903 = call float @dx.op.unary.f32(i32 22, float %2895)  ; Frc(value)
  %2904 = call float @dx.op.unary.f32(i32 22, float %2896)  ; Frc(value)
  %2905 = call float @dx.op.unary.f32(i32 22, float %2897)  ; Frc(value)
  %2906 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2902, %dx.types.Handle %40, float %2903, float %2904, float %2905, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2907 = extractvalue %dx.types.ResRet.f32 %2906, 0
  %2908 = extractvalue %dx.types.ResRet.f32 %2906, 1
  %2909 = extractvalue %dx.types.ResRet.f32 %2906, 2
  %2910 = fmul fast float %2907, 1.023000e+03
  %2911 = fmul fast float %2908, 1.023000e+03
  %2912 = fmul fast float %2909, 1.023000e+03
  %2913 = fadd fast float %2910, 5.000000e-01
  %2914 = fadd fast float %2911, 5.000000e-01
  %2915 = fadd fast float %2912, 5.000000e-01
  %2916 = call float @dx.op.unary.f32(i32 27, float %2913)  ; Round_ni(value)
  %2917 = call float @dx.op.unary.f32(i32 27, float %2914)  ; Round_ni(value)
  %2918 = call float @dx.op.unary.f32(i32 27, float %2915)  ; Round_ni(value)
  %2919 = fsub fast float %2886, %2889
  %2920 = fsub fast float %2887, %2890
  %2921 = fsub fast float %2888, %2891
  %2922 = fmul fast float %2919, 7.500000e-01
  %2923 = fmul fast float %2920, 7.500000e-01
  %2924 = fmul fast float %2921, 7.500000e-01
  %2925 = fadd fast float %2889, 1.250000e-01
  %2926 = fadd fast float %2925, %2922
  %2927 = fadd fast float %2926, %2916
  %2928 = fadd fast float %2890, 1.250000e-01
  %2929 = fadd fast float %2928, %2923
  %2930 = fadd fast float %2929, %2917
  %2931 = fadd fast float %2891, 1.250000e-01
  %2932 = fadd fast float %2931, %2924
  %2933 = fadd fast float %2932, %2918
  %2934 = fmul fast float %2927, %2877
  %2935 = fmul fast float %2930, %2878
  %2936 = fmul fast float %2933, %2879
  %2937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2898, i32 undef)  ; BufferLoad(srv,index,wot)
  %2938 = extractvalue %dx.types.ResRet.i32 %2937, 0
  %2939 = add i32 %2938, 0
  %2940 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2939, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2941 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2940, %dx.types.Handle %38, float %2934, float %2935, float %2936, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2942 = extractvalue %dx.types.ResRet.f32 %2941, 0
  br label %2943

; <label>:2943                                    ; preds = %2864, %2853
  %2944 = phi float [ %2942, %2864 ], [ -1.000000e+00, %2853 ]
  %2945 = fadd fast float %2944, %2851
  %2946 = call float @dx.op.unary.f32(i32 7, float %2945)  ; Saturate(value)
  br label %2947

; <label>:2947                                    ; preds = %2943, %2841
  %2948 = phi float [ %2946, %2943 ], [ %2851, %2841 ]
  %2949 = fmul fast float %2948, %424
  br label %2950

; <label>:2950                                    ; preds = %2947, %2836
  %2951 = phi float [ %2949, %2947 ], [ %424, %2836 ]
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = and i32 %2953, 256
  %2955 = icmp eq i32 %2954, 0
  br i1 %2955, label %3002, label %2956

; <label>:2956                                    ; preds = %2950
  %2957 = add i32 %45, 468
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = add i32 %2959, 0
  %2961 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2960, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2962 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2961, %dx.types.Handle %83, float %2837, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2963 = extractvalue %dx.types.ResRet.f32 %2962, 0
  %2964 = add i32 %45, 148
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = shl i32 %2966, 4
  %2968 = and i32 %2967, 32752
  %2969 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2968)  ; LegacyF16ToF32(value)
  %2970 = lshr i32 %2966, 7
  %2971 = and i32 %2970, 32752
  %2972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2971)  ; LegacyF16ToF32(value)
  %2973 = fsub fast float 1.000000e+00, %2951
  %2974 = call float @dx.op.binary.f32(i32 35, float %2973, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2975 = bitcast float %2951 to i32
  %2976 = sitofp i32 %2975 to float
  %2977 = fadd fast float %2976, 0xC1CFBF8940000000
  %2978 = fmul fast float %2972, %2977
  %2979 = fadd fast float %2978, 0x41CFBF8940000000
  %2980 = fptosi float %2979 to i32
  %2981 = bitcast i32 %2980 to float
  %2982 = bitcast float %2974 to i32
  %2983 = sitofp i32 %2982 to float
  %2984 = fadd fast float %2983, 0xC1CFBF8940000000
  %2985 = fmul fast float %2984, %2972
  %2986 = fadd fast float %2985, 0x41CFBF8940000000
  %2987 = fptosi float %2986 to i32
  %2988 = bitcast i32 %2987 to float
  %2989 = fmul fast float %2981, %2969
  %2990 = fmul fast float %2988, %2969
  %2991 = fsub fast float %2974, %2989
  %2992 = fadd fast float %2990, %2974
  %2993 = call float @dx.op.unary.f32(i32 7, float %2991)  ; Saturate(value)
  %2994 = call float @dx.op.unary.f32(i32 7, float %2992)  ; Saturate(value)
  %2995 = fsub fast float %2963, %2993
  %2996 = fsub fast float %2994, %2993
  %2997 = bitcast float %2996 to i32
  %2998 = sub nsw i32 2129859010, %2997
  %2999 = bitcast i32 %2998 to float
  %3000 = fmul fast float %2999, %2995
  %3001 = call float @dx.op.unary.f32(i32 7, float %3000)  ; Saturate(value)
  br label %3002

; <label>:3002                                    ; preds = %2956, %2950
  %3003 = phi float [ %3001, %2956 ], [ %2951, %2950 ]
  %3004 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3005 = extractvalue %dx.types.ResRet.i32 %3004, 0
  %3006 = and i32 %3005, 128
  %3007 = icmp eq i32 %3006, 0
  br i1 %3007, label %3024, label %3008

; <label>:3008                                    ; preds = %3002
  %3009 = add i32 %45, 452
  %3010 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3009, i32 undef)  ; BufferLoad(srv,index,wot)
  %3011 = extractvalue %dx.types.ResRet.i32 %3010, 0
  %3012 = add i32 %3011, 0
  %3013 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3012, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3014 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3013, %dx.types.Handle %83, float %2837, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3015 = extractvalue %dx.types.ResRet.f32 %3014, 0
  %3016 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3017 = extractvalue %dx.types.ResRet.i32 %3016, 0
  %3018 = and i32 %3017, 524288
  %3019 = icmp ne i32 %3018, 0
  %3020 = fcmp fast ogt float %3015, 0x3FE0101020000000
  %3021 = select i1 %3020, float 1.000000e+00, float 0.000000e+00
  %3022 = select i1 %3019, float %3021, float %3015
  %3023 = fmul fast float %3022, %3003
  br label %3024

; <label>:3024                                    ; preds = %3008, %3002
  %3025 = phi float [ %3023, %3008 ], [ %3003, %3002 ]
  %3026 = fcmp fast ult float %3025, 0x3F70101020000000
  br i1 %3026, label %3608, label %3027

; <label>:3027                                    ; preds = %3024
  %3028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3029 = extractvalue %dx.types.ResRet.i32 %3028, 0
  %3030 = and i32 %3029, 16
  %3031 = icmp eq i32 %3030, 0
  br i1 %3031, label %3230, label %3032

; <label>:3032                                    ; preds = %3027
  %3033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3034 = extractvalue %dx.types.ResRet.i32 %3033, 0
  %3035 = add i32 %45, 404
  %3036 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3035, i32 undef)  ; BufferLoad(srv,index,wot)
  %3037 = extractvalue %dx.types.ResRet.i32 %3036, 0
  %3038 = add i32 %3037, 0
  %3039 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3038, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3040 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3039, %dx.types.Handle %82, float %2837, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3041 = extractvalue %dx.types.ResRet.f32 %3040, 0
  %3042 = extractvalue %dx.types.ResRet.f32 %3040, 1
  %3043 = extractvalue %dx.types.ResRet.f32 %3040, 2
  %3044 = extractvalue %dx.types.ResRet.f32 %3040, 3
  %3045 = and i32 %3034, 255
  %3046 = uitofp i32 %3045 to float
  %3047 = lshr i32 %3034, 8
  %3048 = and i32 %3047, 255
  %3049 = uitofp i32 %3048 to float
  %3050 = fmul fast float %3044, %3046
  %3051 = fadd fast float %3050, %3049
  %3052 = fmul fast float %3051, 0x3F70101000000000
  %3053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3054 = extractvalue %dx.types.ResRet.i32 %3053, 0
  %3055 = and i32 %3054, 512
  %3056 = icmp eq i32 %3055, 0
  br i1 %3056, label %3065, label %3057

; <label>:3057                                    ; preds = %3032
  %3058 = add i32 %45, 484
  %3059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3058, i32 undef)  ; BufferLoad(srv,index,wot)
  %3060 = extractvalue %dx.types.ResRet.i32 %3059, 0
  %3061 = add i32 %3060, 0
  %3062 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3061, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3063 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3062, %dx.types.Handle %83, float %2837, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3064 = extractvalue %dx.types.ResRet.f32 %3063, 0
  br label %3065

; <label>:3065                                    ; preds = %3057, %3032
  %3066 = phi float [ %3064, %3057 ], [ 1.000000e+00, %3032 ]
  %3067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3068 = extractvalue %dx.types.ResRet.i32 %3067, 0
  %3069 = and i32 %3068, 33554432
  %3070 = icmp eq i32 %3069, 0
  br i1 %3070, label %3177, label %3071

; <label>:3071                                    ; preds = %3065
  %3072 = add i32 %45, 272
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = and i32 %3074, 65535
  %3076 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3075)  ; LegacyF16ToF32(value)
  %3077 = lshr i32 %3074, 16
  %3078 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3077)  ; LegacyF16ToF32(value)
  %3079 = add i32 %45, 276
  %3080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3079, i32 undef)  ; BufferLoad(srv,index,wot)
  %3081 = extractvalue %dx.types.ResRet.i32 %3080, 0
  %3082 = and i32 %3081, 65535
  %3083 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3082)  ; LegacyF16ToF32(value)
  %3084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3085 = extractvalue %dx.types.ResRet.i32 %3084, 0
  %3086 = lshr i32 %3085, 24
  %3087 = uitofp i32 %3086 to float
  %3088 = fmul fast float %3087, 0x3F70101020000000
  %3089 = and i32 %3085, 255
  %3090 = uitofp i32 %3089 to float
  %3091 = fmul fast float %3090, 0x3F70101020000000
  %3092 = lshr i32 %3085, 8
  %3093 = and i32 %3092, 255
  %3094 = uitofp i32 %3093 to float
  %3095 = fmul fast float %3094, 0x3F70101020000000
  %3096 = lshr i32 %3085, 16
  %3097 = and i32 %3096, 255
  %3098 = uitofp i32 %3097 to float
  %3099 = fmul fast float %3098, 0x3F70101020000000
  %3100 = add i32 %45, 268
  %3101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3100, i32 undef)  ; BufferLoad(srv,index,wot)
  %3102 = extractvalue %dx.types.ResRet.i32 %3101, 0
  %3103 = lshr i32 %3102, 24
  %3104 = uitofp i32 %3103 to float
  %3105 = fmul fast float %3104, 0x3F70101020000000
  %3106 = and i32 %3102, 255
  %3107 = uitofp i32 %3106 to float
  %3108 = fmul fast float %3107, 0x3F70101020000000
  %3109 = lshr i32 %3102, 8
  %3110 = and i32 %3109, 255
  %3111 = uitofp i32 %3110 to float
  %3112 = fmul fast float %3111, 0x3F70101020000000
  %3113 = lshr i32 %3102, 16
  %3114 = and i32 %3113, 255
  %3115 = uitofp i32 %3114 to float
  %3116 = fmul fast float %3115, 0x3F70101020000000
  %3117 = bitcast float %3041 to i32
  %3118 = ashr i32 %3117, 1
  %3119 = sub nsw i32 1597463174, %3118
  %3120 = bitcast i32 %3119 to float
  %3121 = fmul fast float %3041, 5.000000e-01
  %3122 = fmul fast float %3120, %3120
  %3123 = fmul fast float %3122, %3121
  %3124 = fsub fast float 1.500000e+00, %3123
  %3125 = fmul fast float %3120, %3041
  %3126 = fmul fast float %3125, %3124
  %3127 = bitcast float %3042 to i32
  %3128 = ashr i32 %3127, 1
  %3129 = sub nsw i32 1597463174, %3128
  %3130 = bitcast i32 %3129 to float
  %3131 = fmul fast float %3042, 5.000000e-01
  %3132 = fmul fast float %3130, %3130
  %3133 = fmul fast float %3132, %3131
  %3134 = fsub fast float 1.500000e+00, %3133
  %3135 = fmul fast float %3130, %3042
  %3136 = fmul fast float %3135, %3134
  %3137 = bitcast float %3043 to i32
  %3138 = ashr i32 %3137, 1
  %3139 = sub nsw i32 1597463174, %3138
  %3140 = bitcast i32 %3139 to float
  %3141 = fmul fast float %3043, 5.000000e-01
  %3142 = fmul fast float %3140, %3140
  %3143 = fmul fast float %3142, %3141
  %3144 = fsub fast float 1.500000e+00, %3143
  %3145 = fmul fast float %3140, %3043
  %3146 = fmul fast float %3145, %3144
  %3147 = fsub fast float %3126, %3108
  %3148 = fsub fast float %3136, %3112
  %3149 = fsub fast float %3146, %3116
  %3150 = fmul fast float %3147, %3076
  %3151 = fmul fast float %3148, %3078
  %3152 = fmul fast float %3149, %3083
  %3153 = fadd fast float %3150, %3091
  %3154 = fadd fast float %3151, %3095
  %3155 = fadd fast float %3152, %3099
  %3156 = call float @dx.op.unary.f32(i32 7, float %3153)  ; Saturate(value)
  %3157 = call float @dx.op.unary.f32(i32 7, float %3154)  ; Saturate(value)
  %3158 = call float @dx.op.unary.f32(i32 7, float %3155)  ; Saturate(value)
  %3159 = fmul fast float %3156, %3156
  %3160 = fmul fast float %3157, %3157
  %3161 = fmul fast float %3158, %3158
  %3162 = fsub fast float %3159, %3041
  %3163 = fsub fast float %3160, %3042
  %3164 = fsub fast float %3161, %3043
  %3165 = fmul fast float %3162, %3066
  %3166 = fmul fast float %3163, %3066
  %3167 = fmul fast float %3164, %3066
  %3168 = fadd fast float %3165, %3041
  %3169 = fadd fast float %3166, %3042
  %3170 = fadd fast float %3167, %3043
  %3171 = fadd fast float %3088, %3052
  %3172 = fsub fast float %3171, %3105
  %3173 = call float @dx.op.unary.f32(i32 7, float %3172)  ; Saturate(value)
  %3174 = fsub fast float %3173, %3052
  %3175 = fmul fast float %3174, %3066
  %3176 = fadd fast float %3175, %3052
  br label %3230

; <label>:3177                                    ; preds = %3065
  %3178 = and i32 %3068, 134217728
  %3179 = icmp eq i32 %3178, 0
  br i1 %3179, label %3214, label %3180

; <label>:3180                                    ; preds = %3177
  %3181 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %3182 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %3183 = call float @dx.op.unary.f32(i32 24, float %353)  ; Sqrt(value)
  %3184 = fadd fast float %3181, -5.000000e-01
  %3185 = fadd fast float %3182, -5.000000e-01
  %3186 = fadd fast float %3183, -5.000000e-01
  %3187 = fmul fast float %3184, %3066
  %3188 = fmul fast float %3185, %3066
  %3189 = fmul fast float %3186, %3066
  %3190 = fadd fast float %3187, 5.000000e-01
  %3191 = fadd fast float %3188, 5.000000e-01
  %3192 = fadd fast float %3189, 5.000000e-01
  %3193 = call float @dx.op.unary.f32(i32 24, float %3041)  ; Sqrt(value)
  %3194 = call float @dx.op.unary.f32(i32 24, float %3042)  ; Sqrt(value)
  %3195 = call float @dx.op.unary.f32(i32 24, float %3043)  ; Sqrt(value)
  %3196 = fmul fast float %3190, 2.000000e+00
  %3197 = fsub fast float 1.000000e+00, %3196
  %3198 = fmul fast float %3197, %3193
  %3199 = fadd fast float %3198, %3196
  %3200 = fmul fast float %3199, %3193
  %3201 = fmul fast float %3191, 2.000000e+00
  %3202 = fsub fast float 1.000000e+00, %3201
  %3203 = fmul fast float %3202, %3194
  %3204 = fadd fast float %3203, %3201
  %3205 = fmul fast float %3204, %3194
  %3206 = fmul fast float %3192, 2.000000e+00
  %3207 = fsub fast float 1.000000e+00, %3206
  %3208 = fmul fast float %3207, %3195
  %3209 = fadd fast float %3208, %3206
  %3210 = fmul fast float %3209, %3195
  %3211 = fmul fast float %3200, %3200
  %3212 = fmul fast float %3205, %3205
  %3213 = fmul fast float %3210, %3210
  br label %3230

; <label>:3214                                    ; preds = %3177
  %3215 = fmul fast float %345, %345
  %3216 = fmul fast float %349, %349
  %3217 = fmul fast float %353, %353
  %3218 = fadd fast float %3215, -1.000000e+00
  %3219 = fadd fast float %3216, -1.000000e+00
  %3220 = fadd fast float %3217, -1.000000e+00
  %3221 = fmul fast float %3066, %3218
  %3222 = fmul fast float %3066, %3219
  %3223 = fmul fast float %3066, %3220
  %3224 = fadd fast float %3221, 1.000000e+00
  %3225 = fadd fast float %3222, 1.000000e+00
  %3226 = fadd fast float %3223, 1.000000e+00
  %3227 = fmul fast float %3224, %3041
  %3228 = fmul fast float %3225, %3042
  %3229 = fmul fast float %3226, %3043
  br label %3230

; <label>:3230                                    ; preds = %3214, %3180, %3071, %3027
  %3231 = phi float [ %3176, %3071 ], [ %3052, %3180 ], [ %3052, %3214 ], [ 0x3FA23C0BE0000000, %3027 ]
  %3232 = phi float [ %3168, %3071 ], [ %3211, %3180 ], [ %3227, %3214 ], [ 1.000000e+00, %3027 ]
  %3233 = phi float [ %3169, %3071 ], [ %3212, %3180 ], [ %3228, %3214 ], [ 1.000000e+00, %3027 ]
  %3234 = phi float [ %3170, %3071 ], [ %3213, %3180 ], [ %3229, %3214 ], [ 1.000000e+00, %3027 ]
  %3235 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3236 = extractvalue %dx.types.CBufRet.i32 %3235, 1
  %3237 = and i32 %3236, 1
  %3238 = icmp ne i32 %3237, 0
  %3239 = add i32 %45, 356
  %3240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3239, i32 undef)  ; BufferLoad(srv,index,wot)
  %3241 = extractvalue %dx.types.ResRet.i32 %3240, 0
  %3242 = and i32 %3241, 32
  %3243 = icmp ne i32 %3242, 0
  %3244 = and i1 %3238, %3243
  %3245 = select i1 %3244, float 1.000000e+00, float %3232
  %3246 = select i1 %3244, float 0x3FD3333340000000, float %3233
  %3247 = select i1 %3244, float 0x3FD3333340000000, float %3234
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = and i32 %3249, 32
  %3251 = icmp eq i32 %3250, 0
  br i1 %3251, label %3324, label %3252

; <label>:3252                                    ; preds = %3230
  %3253 = add i32 %45, 140
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3253, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = add i32 %45, 420
  %3257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3256, i32 undef)  ; BufferLoad(srv,index,wot)
  %3258 = extractvalue %dx.types.ResRet.i32 %3257, 0
  %3259 = add i32 %3258, 0
  %3260 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3259, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3261 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3260, %dx.types.Handle %82, float %2837, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3262 = extractvalue %dx.types.ResRet.f32 %3261, 0
  %3263 = extractvalue %dx.types.ResRet.f32 %3261, 1
  %3264 = extractvalue %dx.types.ResRet.f32 %3261, 2
  %3265 = extractvalue %dx.types.ResRet.f32 %3261, 3
  %3266 = and i32 %3255, 255
  %3267 = uitofp i32 %3266 to float
  %3268 = lshr i32 %3255, 8
  %3269 = and i32 %3268, 255
  %3270 = uitofp i32 %3269 to float
  %3271 = lshr i32 %3255, 16
  %3272 = and i32 %3271, 255
  %3273 = uitofp i32 %3272 to float
  %3274 = fmul fast float %3273, 0x3F70101000000000
  %3275 = fmul fast float %3262, %3267
  %3276 = fadd fast float %3275, %3270
  %3277 = fmul fast float %3276, 0x3F70101000000000
  %3278 = fadd fast float %3263, -5.000000e-01
  %3279 = fadd fast float %3265, -5.000000e-01
  %3280 = fmul fast float %3278, %3274
  %3281 = fmul fast float %3279, %3274
  %3282 = fadd fast float %3280, 5.000000e-01
  %3283 = fadd fast float %3281, 5.000000e-01
  %3284 = fmul fast float %3282, 2.000000e+00
  %3285 = fadd fast float %3284, -1.000000e+00
  %3286 = fmul fast float %3283, 2.000000e+00
  %3287 = fadd fast float %3286, -1.000000e+00
  %3288 = fadd fast float %3285, %3287
  %3289 = fmul fast float %3288, 5.000000e-01
  %3290 = fsub fast float %3285, %3287
  %3291 = fmul fast float %3290, 5.000000e-01
  %3292 = call float @dx.op.unary.f32(i32 6, float %3289)  ; FAbs(value)
  %3293 = fsub fast float 1.000000e+00, %3292
  %3294 = call float @dx.op.unary.f32(i32 6, float %3291)  ; FAbs(value)
  %3295 = fsub fast float %3293, %3294
  %3296 = call float @dx.op.dot3.f32(i32 55, float %3289, float %3291, float %3295, float %3289, float %3291, float %3295)  ; Dot3(ax,ay,az,bx,by,bz)
  %3297 = call float @dx.op.unary.f32(i32 25, float %3296)  ; Rsqrt(value)
  %3298 = fmul fast float %3289, %3297
  %3299 = fmul fast float %3291, %3297
  %3300 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3301 = extractvalue %dx.types.ResRet.i32 %3300, 0
  %3302 = and i32 %3301, 67108864
  %3303 = icmp eq i32 %3302, 0
  br i1 %3303, label %3320, label %3304

; <label>:3304                                    ; preds = %3252
  %3305 = add i32 %45, 328
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3305, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.i32 %3306, 0
  %3308 = and i32 %3307, 65535
  %3309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3308)  ; LegacyF16ToF32(value)
  %3310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3311 = extractvalue %dx.types.ResRet.i32 %3310, 0
  %3312 = and i32 %3311, 65535
  %3313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3312)  ; LegacyF16ToF32(value)
  %3314 = lshr i32 %3307, 16
  %3315 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3314)  ; LegacyF16ToF32(value)
  %3316 = fsub fast float %3277, %3315
  %3317 = fmul fast float %3316, %3309
  %3318 = fadd fast float %3317, %3313
  %3319 = call float @dx.op.unary.f32(i32 7, float %3318)  ; Saturate(value)
  br label %3320

; <label>:3320                                    ; preds = %3304, %3252
  %3321 = phi float [ %3319, %3304 ], [ %3277, %3252 ]
  %3322 = call float @dx.op.dot2.f32(i32 54, float %3298, float %3299, float %2741, float %2742)  ; Dot2(ax,ay,bx,by)
  %3323 = call float @dx.op.dot2.f32(i32 54, float %3298, float %3299, float %2743, float %2744)  ; Dot2(ax,ay,bx,by)
  br label %3324

; <label>:3324                                    ; preds = %3320, %3230
  %3325 = phi float [ %3321, %3320 ], [ 0x3FD6666660000000, %3230 ]
  %3326 = phi float [ %3322, %3320 ], [ 0.000000e+00, %3230 ]
  %3327 = phi float [ %3323, %3320 ], [ 0.000000e+00, %3230 ]
  %3328 = phi float [ %3264, %3320 ], [ 1.000000e+00, %3230 ]
  %3329 = add i32 %45, 208
  %3330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3329, i32 undef)  ; BufferLoad(srv,index,wot)
  %3331 = extractvalue %dx.types.ResRet.i32 %3330, 0
  %3332 = lshr i32 %3331, 22
  %3333 = shl nuw nsw i32 %3332, 5
  %3334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3333)  ; LegacyF16ToF32(value)
  %3335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3336 = extractvalue %dx.types.ResRet.i32 %3335, 0
  %3337 = and i32 %3336, 64
  %3338 = icmp eq i32 %3337, 0
  br i1 %3338, label %3372, label %3339

; <label>:3339                                    ; preds = %3324
  %3340 = add i32 %45, 436
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3340, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = add i32 %3342, 0
  %3344 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3343, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3345 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3346 = extractvalue %dx.types.ResRet.i32 %3345, 0
  %3347 = and i32 %3346, 131072
  %3348 = icmp eq i32 %3347, 0
  %3349 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3344, %dx.types.Handle %82, float %2837, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3350 = extractvalue %dx.types.ResRet.f32 %3349, 0
  %3351 = extractvalue %dx.types.ResRet.f32 %3349, 1
  %3352 = extractvalue %dx.types.ResRet.f32 %3349, 2
  %3353 = fmul fast float %3350, %333
  %3354 = fmul fast float %3351, %336
  %3355 = fmul fast float %3352, %339
  br i1 %3348, label %3362, label %3356

; <label>:3356                                    ; preds = %3339
  %3357 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3358 = extractvalue %dx.types.CBufRet.f32 %3357, 0
  %3359 = fmul fast float %3358, %3353
  %3360 = fmul fast float %3358, %3354
  %3361 = fmul fast float %3358, %3355
  br label %3362

; <label>:3362                                    ; preds = %3356, %3339
  %3363 = phi float [ %3359, %3356 ], [ %3353, %3339 ]
  %3364 = phi float [ %3360, %3356 ], [ %3354, %3339 ]
  %3365 = phi float [ %3361, %3356 ], [ %3355, %3339 ]
  %3366 = fmul fast float %3363, %3334
  %3367 = select i1 %187, float %3366, float %3363
  %3368 = call float @dx.op.dot3.f32(i32 55, float %3367, float %3364, float %3365, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3369 = select i1 %187, float 0.000000e+00, float %3363
  %3370 = select i1 %187, float %3368, float %3364
  %3371 = select i1 %187, float 0.000000e+00, float %3365
  br label %3372

; <label>:3372                                    ; preds = %3362, %3324
  %3373 = phi float [ %3369, %3362 ], [ 0.000000e+00, %3324 ]
  %3374 = phi float [ %3370, %3362 ], [ 0.000000e+00, %3324 ]
  %3375 = phi float [ %3371, %3362 ], [ 0.000000e+00, %3324 ]
  %3376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3377 = extractvalue %dx.types.ResRet.i32 %3376, 0
  %3378 = and i32 %3377, 26624
  %3379 = icmp eq i32 %3378, 0
  br i1 %3379, label %3403, label %3380

; <label>:3380                                    ; preds = %3372
  %3381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3382 = extractvalue %dx.types.ResRet.i32 %3381, 0
  %3383 = and i32 %3382, 16384
  %3384 = icmp eq i32 %3383, 0
  br i1 %3384, label %3403, label %3385

; <label>:3385                                    ; preds = %3380
  %3386 = and i32 %3382, 1048576
  %3387 = icmp ne i32 %3386, 0
  %3388 = add i32 %45, 500
  %3389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3388, i32 undef)  ; BufferLoad(srv,index,wot)
  %3390 = extractvalue %dx.types.ResRet.i32 %3389, 0
  %3391 = add i32 %3390, 0
  %3392 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3391, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3393 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3392, %dx.types.Handle %83, float %2837, float %2838, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3394 = extractvalue %dx.types.ResRet.f32 %3393, 0
  %3395 = add i32 %45, 144
  %3396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3395, i32 undef)  ; BufferLoad(srv,index,wot)
  %3397 = extractvalue %dx.types.ResRet.i32 %3396, 0
  %3398 = lshr i32 %3397, 24
  %3399 = uitofp i32 %3398 to float
  %3400 = fmul fast float %3394, 0x3F70101020000000
  %3401 = select i1 %3387, float 0x3F70101020000000, float %3400
  %3402 = fmul fast float %3401, %3399
  br label %3403

; <label>:3403                                    ; preds = %3385, %3380, %3372
  %3404 = phi float [ %3402, %3385 ], [ 0.000000e+00, %3380 ], [ 0.000000e+00, %3372 ]
  %3405 = add i32 %45, 144
  %3406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3405, i32 undef)  ; BufferLoad(srv,index,wot)
  %3407 = extractvalue %dx.types.ResRet.i32 %3406, 0
  %3408 = and i32 %3407, 255
  %3409 = uitofp i32 %3408 to float
  %3410 = lshr i32 %3407, 8
  %3411 = and i32 %3410, 255
  %3412 = uitofp i32 %3411 to float
  %3413 = call float @dx.op.dot3.f32(i32 55, float %3245, float %3246, float %3247, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3414 = fmul fast float %3412, %3413
  %3415 = fadd fast float %3414, %3409
  %3416 = fmul fast float %3415, 0x3F70101020000000
  %3417 = call float @dx.op.unary.f32(i32 7, float %3416)  ; Saturate(value)
  br i1 %2729, label %3418, label %3426

; <label>:3418                                    ; preds = %3403
  %3419 = fsub fast float 1.000000e+00, %3025
  %3420 = fmul fast float %3419, %2717
  %3421 = fmul fast float %3419, %2718
  %3422 = fmul fast float %3419, %2719
  %3423 = fmul fast float %3419, %2720
  %3424 = fmul fast float %3419, %2721
  %3425 = fmul fast float %3419, %2722
  br label %3426

; <label>:3426                                    ; preds = %3418, %3403
  %3427 = phi float [ %3420, %3418 ], [ %2717, %3403 ]
  %3428 = phi float [ %3421, %3418 ], [ %2718, %3403 ]
  %3429 = phi float [ %3422, %3418 ], [ %2719, %3403 ]
  %3430 = phi float [ %3423, %3418 ], [ %2720, %3403 ]
  %3431 = phi float [ %3424, %3418 ], [ %2721, %3403 ]
  %3432 = phi float [ %3425, %3418 ], [ %2722, %3403 ]
  %3433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2730, i32 undef)  ; BufferLoad(srv,index,wot)
  %3434 = extractvalue %dx.types.ResRet.i32 %3433, 0
  %3435 = and i32 %3434, 3
  %3436 = icmp eq i32 %3435, 3
  br i1 %3436, label %3515, label %3437

; <label>:3437                                    ; preds = %3426
  %3438 = and i32 %3434, 16
  %3439 = icmp ne i32 %3438, 0
  %3440 = select i1 %3439, float %3025, float 0.000000e+00
  %3441 = icmp eq i32 %3435, 0
  br i1 %3441, label %3442, label %3470

; <label>:3442                                    ; preds = %3437
  %3443 = and i32 %3434, 64
  %3444 = icmp ne i32 %3443, 0
  %3445 = select i1 %3444, float %3025, float 0.000000e+00
  %3446 = fsub fast float %3245, %3427
  %3447 = fsub fast float %3246, %3428
  %3448 = fsub fast float %3247, %3429
  %3449 = fmul fast float %3440, %3446
  %3450 = fmul fast float %3440, %3447
  %3451 = fmul fast float %3440, %3448
  %3452 = fadd fast float %3449, %3427
  %3453 = fadd fast float %3450, %3428
  %3454 = fadd fast float %3451, %3429
  %3455 = fsub fast float %3231, %2723
  %3456 = fmul fast float %3440, %3455
  %3457 = fadd fast float %3456, %2723
  %3458 = fsub fast float %3373, %3430
  %3459 = fsub fast float %3374, %3431
  %3460 = fsub fast float %3375, %3432
  %3461 = fmul fast float %3445, %3458
  %3462 = fmul fast float %3445, %3459
  %3463 = fmul fast float %3445, %3460
  %3464 = fadd fast float %3461, %3430
  %3465 = fadd fast float %3462, %3431
  %3466 = fadd fast float %3463, %3432
  %3467 = fsub fast float %3417, %2727
  %3468 = fmul fast float %3440, %3467
  %3469 = fadd fast float %3468, %2727
  br label %3515

; <label>:3470                                    ; preds = %3437
  %3471 = icmp eq i32 %3435, 1
  br i1 %3471, label %3472, label %3485

; <label>:3472                                    ; preds = %3470
  %3473 = fadd fast float %3245, -1.000000e+00
  %3474 = fadd fast float %3246, -1.000000e+00
  %3475 = fadd fast float %3247, -1.000000e+00
  %3476 = fmul fast float %3440, %3473
  %3477 = fmul fast float %3440, %3474
  %3478 = fmul fast float %3440, %3475
  %3479 = fadd fast float %3476, 1.000000e+00
  %3480 = fadd fast float %3477, 1.000000e+00
  %3481 = fadd fast float %3478, 1.000000e+00
  %3482 = fmul fast float %3479, %3427
  %3483 = fmul fast float %3480, %3428
  %3484 = fmul fast float %3481, %3429
  br label %3515

; <label>:3485                                    ; preds = %3470
  %3486 = icmp eq i32 %3435, 2
  br i1 %3486, label %3487, label %3515

; <label>:3487                                    ; preds = %3485
  %3488 = call float @dx.op.unary.f32(i32 24, float %3245)  ; Sqrt(value)
  %3489 = call float @dx.op.unary.f32(i32 24, float %3246)  ; Sqrt(value)
  %3490 = call float @dx.op.unary.f32(i32 24, float %3247)  ; Sqrt(value)
  %3491 = fadd fast float %3488, -5.000000e-01
  %3492 = fadd fast float %3489, -5.000000e-01
  %3493 = fadd fast float %3490, -5.000000e-01
  %3494 = fmul fast float %3491, %3440
  %3495 = fmul fast float %3492, %3440
  %3496 = fmul fast float %3493, %3440
  %3497 = fadd fast float %3494, 5.000000e-01
  %3498 = fadd fast float %3495, 5.000000e-01
  %3499 = fadd fast float %3496, 5.000000e-01
  %3500 = fmul fast float %3497, 2.000000e+00
  %3501 = fsub fast float 1.000000e+00, %3500
  %3502 = fmul fast float %3501, %3427
  %3503 = fadd fast float %3502, %3500
  %3504 = fmul fast float %3503, %3427
  %3505 = fmul fast float %3498, 2.000000e+00
  %3506 = fsub fast float 1.000000e+00, %3505
  %3507 = fmul fast float %3506, %3428
  %3508 = fadd fast float %3507, %3505
  %3509 = fmul fast float %3508, %3428
  %3510 = fmul fast float %3499, 2.000000e+00
  %3511 = fsub fast float 1.000000e+00, %3510
  %3512 = fmul fast float %3511, %3429
  %3513 = fadd fast float %3512, %3510
  %3514 = fmul fast float %3513, %3429
  br label %3515

; <label>:3515                                    ; preds = %3487, %3485, %3472, %3442, %3426
  %3516 = phi float [ %3427, %3426 ], [ %3504, %3487 ], [ %3427, %3485 ], [ %3482, %3472 ], [ %3452, %3442 ]
  %3517 = phi float [ %3428, %3426 ], [ %3509, %3487 ], [ %3428, %3485 ], [ %3483, %3472 ], [ %3453, %3442 ]
  %3518 = phi float [ %3429, %3426 ], [ %3514, %3487 ], [ %3429, %3485 ], [ %3484, %3472 ], [ %3454, %3442 ]
  %3519 = phi float [ %3430, %3426 ], [ %3430, %3487 ], [ %3430, %3485 ], [ %3430, %3472 ], [ %3464, %3442 ]
  %3520 = phi float [ %3431, %3426 ], [ %3431, %3487 ], [ %3431, %3485 ], [ %3431, %3472 ], [ %3465, %3442 ]
  %3521 = phi float [ %3432, %3426 ], [ %3432, %3487 ], [ %3432, %3485 ], [ %3432, %3472 ], [ %3466, %3442 ]
  %3522 = phi float [ %2723, %3426 ], [ %2723, %3487 ], [ %2723, %3485 ], [ %2723, %3472 ], [ %3457, %3442 ]
  %3523 = phi float [ %2727, %3426 ], [ %2727, %3487 ], [ %2727, %3485 ], [ %2727, %3472 ], [ %3469, %3442 ]
  %3524 = and i32 %3434, 12
  %3525 = icmp eq i32 %3524, 12
  br i1 %3525, label %3608, label %3526

; <label>:3526                                    ; preds = %3515
  %3527 = and i32 %3434, 2097184
  %3528 = icmp eq i32 %3527, 2097184
  %3529 = select i1 %3528, float %3025, float 0.000000e+00
  %3530 = and i32 %3434, 4194336
  %3531 = icmp eq i32 %3530, 4194336
  %3532 = select i1 %3531, float %3025, float 0.000000e+00
  %3533 = and i32 %3434, 8388640
  %3534 = icmp eq i32 %3533, 8388640
  %3535 = select i1 %3534, float %3025, float 0.000000e+00
  %3536 = and i32 %3434, 16384
  %3537 = icmp ne i32 %3536, 0
  %3538 = select i1 %3537, float %3025, float 0.000000e+00
  %3539 = icmp eq i32 %3524, 0
  br i1 %3539, label %3540, label %3556

; <label>:3540                                    ; preds = %3526
  %3541 = fsub fast float %3326, %2715
  %3542 = fsub fast float %3327, %2716
  %3543 = fmul fast float %3529, %3541
  %3544 = fmul fast float %3529, %3542
  %3545 = fadd fast float %3543, %2715
  %3546 = fadd fast float %3544, %2716
  %3547 = fsub fast float %3328, %2725
  %3548 = fmul fast float %3532, %3547
  %3549 = fadd fast float %3548, %2725
  %3550 = fsub fast float %3325, %2724
  %3551 = fmul fast float %3535, %3550
  %3552 = fadd fast float %3551, %2724
  %3553 = fsub fast float %3404, %2726
  %3554 = fmul fast float %3538, %3553
  %3555 = fadd fast float %3554, %2726
  br label %3608

; <label>:3556                                    ; preds = %3526
  %3557 = icmp eq i32 %3524, 4
  br i1 %3557, label %3558, label %3592

; <label>:3558                                    ; preds = %3556
  %3559 = fmul fast float %3529, %3326
  %3560 = fmul fast float %3529, %3327
  %3561 = fadd fast float %3559, %2715
  %3562 = fadd fast float %3560, %2716
  %3563 = call float @dx.op.binary.f32(i32 36, float %2725, float %3328)  ; FMin(a,b)
  %3564 = fsub fast float %3563, %2725
  %3565 = fmul fast float %3564, %3532
  %3566 = fadd fast float %3565, %2725
  %3567 = fadd fast float %3325, %2724
  %3568 = fmul fast float %3567, 0x3FF337FAE0000000
  %3569 = fmul fast float %2724, %2724
  %3570 = fmul fast float %3325, %3325
  %3571 = fadd fast float %3570, %3569
  %3572 = fmul fast float %3571, 0x3FE5152B00000000
  %3573 = fmul fast float %2724, 0xBFCC1F85E0000000
  %3574 = fmul fast float %3573, %3325
  %3575 = fadd fast float %3574, 0xBFE1363700000000
  %3576 = fadd fast float %3575, %3568
  %3577 = fsub fast float %3576, %3572
  %3578 = fmul fast float %3567, 0x3FBA6F0D00000000
  %3579 = fmul fast float %3571, 0x3FD0432880000000
  %3580 = fmul fast float %2724, 0xBFEF110800000000
  %3581 = fmul fast float %3580, %3325
  %3582 = fadd fast float %3581, 1.000000e+00
  %3583 = fsub fast float %3582, %3578
  %3584 = fadd fast float %3583, %3579
  %3585 = fdiv fast float %3577, %3584
  %3586 = call float @dx.op.unary.f32(i32 7, float %3585)  ; Saturate(value)
  %3587 = fsub fast float %3586, %2724
  %3588 = fmul fast float %3587, %3535
  %3589 = fadd fast float %3588, %2724
  %3590 = fmul fast float %3538, %3404
  %3591 = fadd fast float %3590, %2726
  br label %3608

; <label>:3592                                    ; preds = %3556
  %3593 = icmp eq i32 %3524, 8
  br i1 %3593, label %3594, label %3608

; <label>:3594                                    ; preds = %3592
  %3595 = fmul fast float %3529, %3326
  %3596 = fmul fast float %3529, %3327
  %3597 = fadd fast float %3595, %2715
  %3598 = fadd fast float %3596, %2716
  %3599 = call float @dx.op.binary.f32(i32 36, float %2725, float %3328)  ; FMin(a,b)
  %3600 = fsub fast float %3599, %2725
  %3601 = fmul fast float %3600, %3532
  %3602 = fadd fast float %3601, %2725
  %3603 = fsub fast float %3325, %2724
  %3604 = fmul fast float %3535, %3603
  %3605 = fadd fast float %3604, %2724
  %3606 = fmul fast float %3538, %3404
  %3607 = fadd fast float %3606, %2726
  br label %3608

; <label>:3608                                    ; preds = %3594, %3592, %3558, %3540, %3515, %3024, %2728, %2714
  %3609 = phi float [ %2715, %3515 ], [ %2715, %3024 ], [ %2715, %2714 ], [ %2715, %2728 ], [ %3545, %3540 ], [ %3561, %3558 ], [ %2715, %3592 ], [ %3597, %3594 ]
  %3610 = phi float [ %2716, %3515 ], [ %2716, %3024 ], [ %2716, %2714 ], [ %2716, %2728 ], [ %3546, %3540 ], [ %3562, %3558 ], [ %2716, %3592 ], [ %3598, %3594 ]
  %3611 = phi float [ %3516, %3515 ], [ %2717, %3024 ], [ %2717, %2714 ], [ %2717, %2728 ], [ %3516, %3540 ], [ %3516, %3558 ], [ %3516, %3592 ], [ %3516, %3594 ]
  %3612 = phi float [ %3517, %3515 ], [ %2718, %3024 ], [ %2718, %2714 ], [ %2718, %2728 ], [ %3517, %3540 ], [ %3517, %3558 ], [ %3517, %3592 ], [ %3517, %3594 ]
  %3613 = phi float [ %3518, %3515 ], [ %2719, %3024 ], [ %2719, %2714 ], [ %2719, %2728 ], [ %3518, %3540 ], [ %3518, %3558 ], [ %3518, %3592 ], [ %3518, %3594 ]
  %3614 = phi float [ %3519, %3515 ], [ %2720, %3024 ], [ %2720, %2714 ], [ %2720, %2728 ], [ %3519, %3540 ], [ %3519, %3558 ], [ %3519, %3592 ], [ %3519, %3594 ]
  %3615 = phi float [ %3520, %3515 ], [ %2721, %3024 ], [ %2721, %2714 ], [ %2721, %2728 ], [ %3520, %3540 ], [ %3520, %3558 ], [ %3520, %3592 ], [ %3520, %3594 ]
  %3616 = phi float [ %3521, %3515 ], [ %2722, %3024 ], [ %2722, %2714 ], [ %2722, %2728 ], [ %3521, %3540 ], [ %3521, %3558 ], [ %3521, %3592 ], [ %3521, %3594 ]
  %3617 = phi float [ %3522, %3515 ], [ %2723, %3024 ], [ %2723, %2714 ], [ %2723, %2728 ], [ %3522, %3540 ], [ %3522, %3558 ], [ %3522, %3592 ], [ %3522, %3594 ]
  %3618 = phi float [ %2724, %3515 ], [ %2724, %3024 ], [ %2724, %2714 ], [ %2724, %2728 ], [ %3552, %3540 ], [ %3589, %3558 ], [ %2724, %3592 ], [ %3605, %3594 ]
  %3619 = phi float [ %2725, %3515 ], [ %2725, %3024 ], [ %2725, %2714 ], [ %2725, %2728 ], [ %3549, %3540 ], [ %3566, %3558 ], [ %2725, %3592 ], [ %3602, %3594 ]
  %3620 = phi float [ %2726, %3515 ], [ %2726, %3024 ], [ %2726, %2714 ], [ %2726, %2728 ], [ %3555, %3540 ], [ %3591, %3558 ], [ %2726, %3592 ], [ %3607, %3594 ]
  %3621 = phi float [ %3523, %3515 ], [ %2727, %3024 ], [ %2727, %2714 ], [ %2727, %2728 ], [ %3523, %3540 ], [ %3523, %3558 ], [ %3523, %3592 ], [ %3523, %3594 ]
  %3622 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3623 = extractvalue %dx.types.CBufRet.f32 %3622, 0
  %3624 = call float @dx.op.dot2.f32(i32 54, float %3609, float %3610, float %3609, float %3610)  ; Dot2(ax,ay,bx,by)
  %3625 = fmul fast float %3624, 0x3FE3333340000000
  %3626 = fsub fast float 1.000000e+00, %3625
  %3627 = call float @dx.op.dot3.f32(i32 55, float %3609, float %3610, float %3626, float %3609, float %3610, float %3626)  ; Dot3(ax,ay,az,bx,by,bz)
  %3628 = call float @dx.op.unary.f32(i32 25, float %3627)  ; Rsqrt(value)
  %3629 = fmul fast float %3628, %3609
  %3630 = fmul fast float %3628, %3610
  %3631 = fmul fast float %3626, %3628
  %3632 = fmul fast float %3631, %95
  %3633 = fmul fast float %3631, %97
  %3634 = fmul fast float %3631, %99
  %3635 = fmul fast float %3629, %67
  %3636 = fmul fast float %3629, %68
  %3637 = fmul fast float %3629, %69
  %3638 = fadd fast float %3632, %3635
  %3639 = fadd fast float %3633, %3636
  %3640 = fadd fast float %3634, %3637
  %3641 = fmul fast float %109, %3630
  %3642 = fmul fast float %110, %3630
  %3643 = fmul fast float %111, %3630
  %3644 = fadd fast float %3638, %3641
  %3645 = fadd fast float %3639, %3642
  %3646 = fadd fast float %3640, %3643
  %3647 = call float @dx.op.dot3.f32(i32 55, float %3644, float %3645, float %3646, float %3644, float %3645, float %3646)  ; Dot3(ax,ay,az,bx,by,bz)
  %3648 = call float @dx.op.unary.f32(i32 25, float %3647)  ; Rsqrt(value)
  %3649 = fmul fast float %3644, %3648
  %3650 = fmul fast float %3645, %3648
  %3651 = fmul fast float %3646, %3648
  %3652 = and i32 %47, 1
  %3653 = icmp eq i32 %3652, 0
  br i1 %3653, label %3654, label %4162

; <label>:3654                                    ; preds = %3608
  %3655 = call float @dx.op.unary.f32(i32 83, float %145)  ; DerivCoarseX(value)
  %3656 = call float @dx.op.unary.f32(i32 83, float %146)  ; DerivCoarseX(value)
  %3657 = call float @dx.op.unary.f32(i32 83, float %147)  ; DerivCoarseX(value)
  %3658 = call float @dx.op.unary.f32(i32 84, float %145)  ; DerivCoarseY(value)
  %3659 = call float @dx.op.unary.f32(i32 84, float %146)  ; DerivCoarseY(value)
  %3660 = call float @dx.op.unary.f32(i32 84, float %147)  ; DerivCoarseY(value)
  %3661 = fadd fast float %3655, %145
  %3662 = fadd fast float %3656, %146
  %3663 = fadd fast float %3657, %147
  %3664 = fadd fast float %3658, %145
  %3665 = fadd fast float %3659, %146
  %3666 = fadd fast float %3660, %147
  %3667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3668 = extractvalue %dx.types.CBufRet.f32 %3667, 0
  %3669 = extractvalue %dx.types.CBufRet.f32 %3667, 1
  %3670 = extractvalue %dx.types.CBufRet.f32 %3667, 2
  %3671 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3672 = extractvalue %dx.types.CBufRet.f32 %3671, 2
  %3673 = extractvalue %dx.types.CBufRet.f32 %3671, 3
  %3674 = fmul fast float %3668, %86
  %3675 = fmul fast float %3674, %3672
  %3676 = fmul fast float %3669, %87
  %3677 = fmul fast float %3676, %3673
  %3678 = fptoui float %3675 to i32
  %3679 = fptoui float %3677 to i32
  %3680 = fadd fast float %3668, -1.000000e+00
  %3681 = fadd fast float %3669, -1.000000e+00
  %3682 = fptoui float %3680 to i32
  %3683 = fptoui float %3681 to i32
  %3684 = call i32 @dx.op.binary.i32(i32 40, i32 %3678, i32 %3682)  ; UMin(a,b)
  %3685 = call i32 @dx.op.binary.i32(i32 40, i32 %3679, i32 %3683)  ; UMin(a,b)
  %3686 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3687 = extractvalue %dx.types.CBufRet.f32 %3686, 2
  %3688 = extractvalue %dx.types.CBufRet.f32 %3686, 3
  %3689 = fmul fast float %3687, %81
  %3690 = fsub fast float %3689, %3688
  %3691 = fadd fast float %3670, -1.000000e+00
  %3692 = call float @dx.op.binary.f32(i32 36, float %3690, float %3691)  ; FMin(a,b)
  %3693 = fptoui float %3692 to i32
  %3694 = fptoui float %3668 to i32
  %3695 = fptoui float %3669 to i32
  %3696 = mul i32 %3693, %3695
  %3697 = add i32 %3696, %3685
  %3698 = mul i32 %3697, %3694
  %3699 = add i32 %3698, %3684
  %3700 = shl i32 %3699, 2
  %3701 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3700, i32 undef)  ; BufferLoad(srv,index,wot)
  %3702 = extractvalue %dx.types.ResRet.i32 %3701, 0
  %3703 = and i32 %3702, 1023
  %3704 = lshr i32 %3702, 10
  %3705 = icmp eq i32 %3703, 0
  br i1 %3705, label %4131, label %3706

; <label>:3706                                    ; preds = %3654
  %3707 = and i32 %3702, 1023
  br label %3708

; <label>:3708                                    ; preds = %3834, %3706
  %3709 = phi i32 [ %3784, %3834 ], [ 0, %3706 ]
  %3710 = phi float [ %3835, %3834 ], [ 0.000000e+00, %3706 ]
  %3711 = phi float [ %3836, %3834 ], [ %3623, %3706 ]
  %3712 = phi float [ %3837, %3834 ], [ %3621, %3706 ]
  %3713 = phi float [ %3838, %3834 ], [ %3620, %3706 ]
  %3714 = phi float [ %3839, %3834 ], [ 0.000000e+00, %3706 ]
  %3715 = phi float [ %3840, %3834 ], [ %3614, %3706 ]
  %3716 = phi float [ %3841, %3834 ], [ %3615, %3706 ]
  %3717 = phi float [ %3842, %3834 ], [ %3616, %3706 ]
  %3718 = phi float [ %3843, %3834 ], [ %3649, %3706 ]
  %3719 = phi float [ %3844, %3834 ], [ %3650, %3706 ]
  %3720 = phi float [ %3845, %3834 ], [ %3651, %3706 ]
  %3721 = phi float [ %3846, %3834 ], [ %3619, %3706 ]
  %3722 = phi float [ %3847, %3834 ], [ %3618, %3706 ]
  %3723 = phi float [ %3848, %3834 ], [ 0.000000e+00, %3706 ]
  %3724 = phi float [ %3849, %3834 ], [ %3617, %3706 ]
  %3725 = phi float [ %3850, %3834 ], [ %3611, %3706 ]
  %3726 = phi float [ %3851, %3834 ], [ %3612, %3706 ]
  %3727 = phi float [ %3852, %3834 ], [ %3613, %3706 ]
  %3728 = add nuw nsw i32 %3709, %3704
  %3729 = shl i32 %3728, 2
  %3730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3729, i32 undef)  ; BufferLoad(srv,index,wot)
  %3731 = extractvalue %dx.types.ResRet.i32 %3730, 0
  %3732 = shl i32 %3731, 8
  %3733 = or i32 %3732, 48
  %3734 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3733, i32 undef)  ; BufferLoad(srv,index,wot)
  %3735 = extractvalue %dx.types.ResRet.f32 %3734, 0
  %3736 = extractvalue %dx.types.ResRet.f32 %3734, 1
  %3737 = extractvalue %dx.types.ResRet.f32 %3734, 2
  %3738 = extractvalue %dx.types.ResRet.f32 %3734, 3
  %3739 = or i32 %3732, 64
  %3740 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3739, i32 undef)  ; BufferLoad(srv,index,wot)
  %3741 = extractvalue %dx.types.ResRet.i32 %3740, 0
  %3742 = extractvalue %dx.types.ResRet.i32 %3740, 1
  %3743 = or i32 %3732, 80
  %3744 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3745 = extractvalue %dx.types.ResRet.f32 %3744, 2
  %3746 = extractvalue %dx.types.ResRet.f32 %3744, 3
  %3747 = or i32 %3732, 96
  %3748 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3747, i32 undef)  ; BufferLoad(srv,index,wot)
  %3749 = extractvalue %dx.types.ResRet.f32 %3748, 0
  %3750 = extractvalue %dx.types.ResRet.f32 %3748, 1
  %3751 = extractvalue %dx.types.ResRet.f32 %3748, 2
  %3752 = extractvalue %dx.types.ResRet.f32 %3748, 3
  %3753 = or i32 %3732, 112
  %3754 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3753, i32 undef)  ; BufferLoad(srv,index,wot)
  %3755 = extractvalue %dx.types.ResRet.f32 %3754, 2
  %3756 = or i32 %3732, 128
  %3757 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3756, i32 undef)  ; BufferLoad(srv,index,wot)
  %3758 = extractvalue %dx.types.ResRet.f32 %3757, 0
  %3759 = extractvalue %dx.types.ResRet.f32 %3757, 1
  %3760 = extractvalue %dx.types.ResRet.f32 %3757, 2
  %3761 = extractvalue %dx.types.ResRet.f32 %3757, 3
  %3762 = or i32 %3732, 144
  %3763 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3762, i32 undef)  ; BufferLoad(srv,index,wot)
  %3764 = extractvalue %dx.types.ResRet.f32 %3763, 0
  %3765 = extractvalue %dx.types.ResRet.f32 %3763, 1
  %3766 = extractvalue %dx.types.ResRet.f32 %3763, 2
  %3767 = extractvalue %dx.types.ResRet.f32 %3763, 3
  %3768 = or i32 %3732, 160
  %3769 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3768, i32 undef)  ; BufferLoad(srv,index,wot)
  %3770 = extractvalue %dx.types.ResRet.f32 %3769, 0
  %3771 = extractvalue %dx.types.ResRet.f32 %3769, 1
  %3772 = extractvalue %dx.types.ResRet.f32 %3769, 2
  %3773 = extractvalue %dx.types.ResRet.f32 %3769, 3
  %3774 = or i32 %3732, 192
  %3775 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3774, i32 undef)  ; BufferLoad(srv,index,wot)
  %3776 = extractvalue %dx.types.ResRet.i32 %3775, 0
  %3777 = or i32 %3732, 208
  %3778 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3777, i32 undef)  ; BufferLoad(srv,index,wot)
  %3779 = extractvalue %dx.types.ResRet.f32 %3778, 0
  %3780 = or i32 %3732, 248
  %3781 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3780, i32 undef)  ; BufferLoad(srv,index,wot)
  %3782 = extractvalue %dx.types.ResRet.f32 %3781, 0
  %3783 = extractvalue %dx.types.ResRet.f32 %3781, 1
  %3784 = add nuw nsw i32 %3709, 1
  %3785 = bitcast float %3738 to i32
  %3786 = and i32 %3785, 512
  %3787 = icmp eq i32 %3786, 0
  %3788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3732, i32 undef)  ; BufferLoad(srv,index,wot)
  %3789 = extractvalue %dx.types.ResRet.f32 %3788, 0
  %3790 = extractvalue %dx.types.ResRet.f32 %3788, 1
  %3791 = extractvalue %dx.types.ResRet.f32 %3788, 2
  %3792 = extractvalue %dx.types.ResRet.f32 %3788, 3
  %3793 = call float @dx.op.dot4.f32(i32 56, float %3789, float %3790, float %3791, float %3792, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3794 = or i32 %3732, 16
  %3795 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3794, i32 undef)  ; BufferLoad(srv,index,wot)
  %3796 = extractvalue %dx.types.ResRet.f32 %3795, 0
  %3797 = extractvalue %dx.types.ResRet.f32 %3795, 1
  %3798 = extractvalue %dx.types.ResRet.f32 %3795, 2
  %3799 = extractvalue %dx.types.ResRet.f32 %3795, 3
  %3800 = call float @dx.op.dot4.f32(i32 56, float %3796, float %3797, float %3798, float %3799, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3801 = or i32 %3732, 32
  %3802 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3803 = extractvalue %dx.types.ResRet.f32 %3802, 0
  %3804 = extractvalue %dx.types.ResRet.f32 %3802, 1
  %3805 = extractvalue %dx.types.ResRet.f32 %3802, 2
  %3806 = extractvalue %dx.types.ResRet.f32 %3802, 3
  %3807 = call float @dx.op.dot4.f32(i32 56, float %3803, float %3804, float %3805, float %3806, float %145, float %146, float %147, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3808 = call float @dx.op.unary.f32(i32 27, float %3793)  ; Round_ni(value)
  %3809 = call float @dx.op.unary.f32(i32 6, float %3808)  ; FAbs(value)
  %3810 = call float @dx.op.unary.f32(i32 27, float %3800)  ; Round_ni(value)
  %3811 = call float @dx.op.unary.f32(i32 6, float %3810)  ; FAbs(value)
  %3812 = call float @dx.op.unary.f32(i32 6, float %3807)  ; FAbs(value)
  %3813 = call float @dx.op.unary.f32(i32 27, float %3812)  ; Round_ni(value)
  %3814 = fadd fast float %3811, %3809
  %3815 = fadd fast float %3814, %3813
  %3816 = fcmp fast oeq float %3815, 0.000000e+00
  %3817 = call float @dx.op.dot4.f32(i32 56, float %3789, float %3790, float %3791, float %3792, float %3661, float %3662, float %3663, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3818 = call float @dx.op.dot4.f32(i32 56, float %3796, float %3797, float %3798, float %3799, float %3661, float %3662, float %3663, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3819 = call float @dx.op.dot4.f32(i32 56, float %3789, float %3790, float %3791, float %3792, float %3664, float %3665, float %3666, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3820 = call float @dx.op.dot4.f32(i32 56, float %3796, float %3797, float %3798, float %3799, float %3664, float %3665, float %3666, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3821 = fsub fast float %3817, %3793
  %3822 = fsub fast float %3819, %3793
  %3823 = fsub fast float %3818, %3800
  %3824 = fsub fast float %3820, %3800
  %3825 = call float @dx.op.dot3.f32(i32 55, float %3735, float %3736, float %3737, float %95, float %97, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %3826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3827 = extractvalue %dx.types.CBufRet.f32 %3826, 2
  %3828 = fadd fast float %3827, %3825
  %3829 = call float @dx.op.unary.f32(i32 7, float %3828)  ; Saturate(value)
  %3830 = extractvalue %dx.types.CBufRet.f32 %3826, 0
  %3831 = fcmp fast ogt float %3829, %3830
  %3832 = and i1 %3816, %3831
  %3833 = and i1 %3787, %3832
  br i1 %3833, label %3854, label %3834

; <label>:3834                                    ; preds = %4117, %3935, %3854, %3708
  %3835 = phi float [ %3710, %3854 ], [ %3938, %3935 ], [ %3938, %4117 ], [ %3710, %3708 ]
  %3836 = phi float [ %3711, %3854 ], [ %3711, %3935 ], [ %4092, %4117 ], [ %3711, %3708 ]
  %3837 = phi float [ %3712, %3854 ], [ %3712, %3935 ], [ %4090, %4117 ], [ %3712, %3708 ]
  %3838 = phi float [ %3713, %3854 ], [ %3713, %3935 ], [ %4062, %4117 ], [ %3713, %3708 ]
  %3839 = phi float [ %3714, %3854 ], [ %3714, %3935 ], [ %4060, %4117 ], [ %3714, %3708 ]
  %3840 = phi float [ %3715, %3854 ], [ %3715, %3935 ], [ %4127, %4117 ], [ %3715, %3708 ]
  %3841 = phi float [ %3716, %3854 ], [ %3716, %3935 ], [ %4128, %4117 ], [ %3716, %3708 ]
  %3842 = phi float [ %3717, %3854 ], [ %3717, %3935 ], [ %4129, %4117 ], [ %3717, %3708 ]
  %3843 = phi float [ %3718, %3854 ], [ %3718, %3935 ], [ %4041, %4117 ], [ %3718, %3708 ]
  %3844 = phi float [ %3719, %3854 ], [ %3719, %3935 ], [ %4042, %4117 ], [ %3719, %3708 ]
  %3845 = phi float [ %3720, %3854 ], [ %3720, %3935 ], [ %4043, %4117 ], [ %3720, %3708 ]
  %3846 = phi float [ %3721, %3854 ], [ %3721, %3935 ], [ %4070, %4117 ], [ %3721, %3708 ]
  %3847 = phi float [ %3722, %3854 ], [ %3722, %3935 ], [ %4067, %4117 ], [ %3722, %3708 ]
  %3848 = phi float [ %3723, %3854 ], [ %3723, %3935 ], [ %4064, %4117 ], [ %3723, %3708 ]
  %3849 = phi float [ %3724, %3854 ], [ %3724, %3935 ], [ %4058, %4117 ], [ %3724, %3708 ]
  %3850 = phi float [ %3725, %3854 ], [ %3725, %3935 ], [ %4053, %4117 ], [ %3725, %3708 ]
  %3851 = phi float [ %3726, %3854 ], [ %3726, %3935 ], [ %4054, %4117 ], [ %3726, %3708 ]
  %3852 = phi float [ %3727, %3854 ], [ %3727, %3935 ], [ %4055, %4117 ], [ %3727, %3708 ]
  %3853 = icmp eq i32 %3784, %3707
  br i1 %3853, label %4130, label %3708

; <label>:3854                                    ; preds = %3708
  %3855 = extractvalue %dx.types.ResRet.f32 %3754, 3
  %3856 = extractvalue %dx.types.ResRet.f32 %3754, 1
  %3857 = extractvalue %dx.types.ResRet.f32 %3754, 0
  %3858 = extractvalue %dx.types.ResRet.f32 %3744, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3744, 0
  %3860 = extractvalue %dx.types.ResRet.i32 %3740, 3
  %3861 = extractvalue %dx.types.ResRet.i32 %3740, 2
  %3862 = add i32 %3860, 0
  %3863 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3862, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3864 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3865 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3863, %dx.types.Handle %3864, float %3793, float %3800, float undef, float undef, i32 0, i32 0, i32 undef, float %3821, float %3823, float undef, float %3822, float %3824, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3866 = extractvalue %dx.types.ResRet.f32 %3865, 0
  %3867 = fmul fast float %3866, %3859
  %3868 = fadd fast float %3867, %3858
  %3869 = call float @dx.op.unary.f32(i32 7, float %3868)  ; Saturate(value)
  %3870 = fmul fast float %3793, %3749
  %3871 = call float @dx.op.tertiary.f32(i32 46, float %3750, float %3800, float %3870)  ; FMad(a,b,c)
  %3872 = fadd fast float %3871, %3857
  %3873 = fmul fast float %3793, %3751
  %3874 = call float @dx.op.tertiary.f32(i32 46, float %3752, float %3800, float %3873)  ; FMad(a,b,c)
  %3875 = fadd fast float %3874, %3856
  %3876 = fmul fast float %3821, %3749
  %3877 = call float @dx.op.tertiary.f32(i32 46, float %3750, float %3823, float %3876)  ; FMad(a,b,c)
  %3878 = fmul fast float %3821, %3751
  %3879 = call float @dx.op.tertiary.f32(i32 46, float %3752, float %3823, float %3878)  ; FMad(a,b,c)
  %3880 = fmul fast float %3822, %3749
  %3881 = call float @dx.op.tertiary.f32(i32 46, float %3750, float %3824, float %3880)  ; FMad(a,b,c)
  %3882 = fmul fast float %3822, %3751
  %3883 = call float @dx.op.tertiary.f32(i32 46, float %3752, float %3824, float %3882)  ; FMad(a,b,c)
  %3884 = add i32 %3861, 0
  %3885 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3884, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3886 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3885, %dx.types.Handle %3864, float %3872, float %3875, float undef, float undef, i32 0, i32 0, i32 undef, float %3877, float %3879, float undef, float %3881, float %3883, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3887 = extractvalue %dx.types.ResRet.f32 %3886, 0
  %3888 = and i32 %3785, 1024
  %3889 = icmp ne i32 %3888, 0
  %3890 = fcmp fast ogt float %3887, 0x3FE0101020000000
  %3891 = uitofp i1 %3890 to float
  %3892 = select i1 %3889, float %3891, float %3887
  %3893 = and i32 %3785, 8192
  %3894 = icmp ne i32 %3893, 0
  %3895 = select i1 %3894, float %3855, float 1.000000e+00
  %3896 = fmul fast float %3793, 2.000000e+00
  %3897 = fadd fast float %3896, -1.000000e+00
  %3898 = call float @dx.op.unary.f32(i32 6, float %3897)  ; FAbs(value)
  %3899 = fmul fast float %3898, %3782
  %3900 = fsub fast float %3899, %3782
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = fmul fast float %3800, 2.000000e+00
  %3903 = fadd fast float %3902, -1.000000e+00
  %3904 = call float @dx.op.unary.f32(i32 6, float %3903)  ; FAbs(value)
  %3905 = fmul fast float %3904, %3783
  %3906 = fsub fast float %3905, %3783
  %3907 = call float @dx.op.unary.f32(i32 7, float %3906)  ; Saturate(value)
  %3908 = fmul fast float %3812, %3745
  %3909 = fsub fast float %3908, %3745
  %3910 = call float @dx.op.unary.f32(i32 7, float %3909)  ; Saturate(value)
  %3911 = fmul fast float %3869, %3895
  %3912 = fmul fast float %3911, %3866
  %3913 = fmul fast float %3912, %3901
  %3914 = fmul fast float %3913, %3892
  %3915 = fmul fast float %3914, %3907
  %3916 = fmul fast float %3915, %3910
  %3917 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3918 = extractvalue %dx.types.CBufRet.f32 %3917, 1
  %3919 = extractvalue %dx.types.CBufRet.f32 %3917, 0
  %3920 = fsub fast float %3829, %3919
  %3921 = fmul fast float %3920, %3918
  %3922 = call float @dx.op.unary.f32(i32 7, float %3921)  ; Saturate(value)
  %3923 = fmul fast float %3916, %3746
  %3924 = fadd fast float %3916, %3746
  %3925 = fmul fast float %3924, %3755
  %3926 = fsub fast float %3925, %3755
  %3927 = call float @dx.op.unary.f32(i32 7, float %3926)  ; Saturate(value)
  %3928 = and i32 %3785, 128
  %3929 = icmp ne i32 %3928, 0
  %3930 = select i1 %3929, float %3927, float %3923
  %3931 = fmul fast float %3930, %3922
  %3932 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3933 = extractvalue %dx.types.CBufRet.f32 %3932, 0
  %3934 = fcmp fast ugt float %3931, %3933
  br i1 %3934, label %3935, label %3834

; <label>:3935                                    ; preds = %3854
  %3936 = select i1 %3894, float %3931, float 0.000000e+00
  %3937 = fadd fast float %3936, %3710
  %3938 = call float @dx.op.unary.f32(i32 7, float %3937)  ; Saturate(value)
  br i1 %3894, label %3834, label %3939

; <label>:3939                                    ; preds = %3935
  %3940 = and i32 %3785, 4
  %3941 = and i32 %3785, 8
  %3942 = add i32 %3741, 0
  %3943 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3942, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3944 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3945 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3943, %dx.types.Handle %3944, float %3872, float %3875, float undef, float undef, i32 0, i32 0, i32 undef, float %3877, float %3879, float undef, float %3881, float %3883, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3946 = extractvalue %dx.types.ResRet.f32 %3945, 0
  %3947 = extractvalue %dx.types.ResRet.f32 %3945, 1
  %3948 = extractvalue %dx.types.ResRet.f32 %3945, 2
  %3949 = extractvalue %dx.types.ResRet.f32 %3945, 3
  %3950 = bitcast float %3767 to i32
  %3951 = and i32 %3950, 255
  %3952 = uitofp i32 %3951 to float
  %3953 = lshr i32 %3950, 8
  %3954 = and i32 %3953, 255
  %3955 = uitofp i32 %3954 to float
  %3956 = fmul fast float %3949, %3952
  %3957 = fadd fast float %3956, %3955
  %3958 = fmul fast float %3957, 0x3F70101000000000
  %3959 = add i32 %3742, 0
  %3960 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3959, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3961 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3960, %dx.types.Handle %3944, float %3872, float %3875, float undef, float undef, i32 0, i32 0, i32 undef, float %3877, float %3879, float undef, float %3881, float %3883, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3962 = extractvalue %dx.types.ResRet.f32 %3961, 0
  %3963 = extractvalue %dx.types.ResRet.f32 %3961, 1
  %3964 = extractvalue %dx.types.ResRet.f32 %3961, 2
  %3965 = extractvalue %dx.types.ResRet.f32 %3961, 3
  %3966 = bitcast float %3761 to i32
  %3967 = and i32 %3966, 255
  %3968 = uitofp i32 %3967 to float
  %3969 = lshr i32 %3966, 8
  %3970 = and i32 %3969, 255
  %3971 = uitofp i32 %3970 to float
  %3972 = lshr i32 %3966, 16
  %3973 = and i32 %3972, 255
  %3974 = uitofp i32 %3973 to float
  %3975 = fmul fast float %3974, 0x3F70101000000000
  %3976 = fmul fast float %3962, %3968
  %3977 = fadd fast float %3976, %3971
  %3978 = fmul fast float %3977, 0x3F70101000000000
  %3979 = fadd fast float %3963, -5.000000e-01
  %3980 = fadd fast float %3965, -5.000000e-01
  %3981 = fmul fast float %3979, %3975
  %3982 = fmul fast float %3980, %3975
  %3983 = fadd fast float %3981, 5.000000e-01
  %3984 = fadd fast float %3982, 5.000000e-01
  %3985 = fmul fast float %3946, %3770
  %3986 = fmul fast float %3947, %3771
  %3987 = fmul fast float %3948, %3772
  %3988 = fmul fast float %3983, 2.000000e+00
  %3989 = fadd fast float %3988, -1.000000e+00
  %3990 = fmul fast float %3984, 2.000000e+00
  %3991 = fadd fast float %3990, -1.000000e+00
  %3992 = fadd fast float %3989, %3991
  %3993 = fmul fast float %3992, 5.000000e-01
  %3994 = fsub fast float %3989, %3991
  %3995 = fmul fast float %3994, 5.000000e-01
  %3996 = call float @dx.op.unary.f32(i32 6, float %3993)  ; FAbs(value)
  %3997 = fsub fast float 1.000000e+00, %3996
  %3998 = call float @dx.op.unary.f32(i32 6, float %3995)  ; FAbs(value)
  %3999 = fsub fast float %3997, %3998
  %4000 = call float @dx.op.dot3.f32(i32 55, float %3993, float %3995, float %3999, float %3993, float %3995, float %3999)  ; Dot3(ax,ay,az,bx,by,bz)
  %4001 = call float @dx.op.unary.f32(i32 25, float %4000)  ; Rsqrt(value)
  %4002 = fmul fast float %3993, %4001
  %4003 = fmul fast float %3995, %4001
  %4004 = fmul fast float %4001, %3999
  %4005 = fmul fast float %4004, %3735
  %4006 = fmul fast float %4004, %3736
  %4007 = fmul fast float %4004, %3737
  %4008 = fmul fast float %4002, %3758
  %4009 = fmul fast float %4002, %3759
  %4010 = fmul fast float %4002, %3760
  %4011 = fadd fast float %4008, %4005
  %4012 = fadd fast float %4009, %4006
  %4013 = fadd fast float %4010, %4007
  %4014 = fmul fast float %4003, %3764
  %4015 = fmul fast float %4003, %3765
  %4016 = fmul fast float %4003, %3766
  %4017 = fadd fast float %4011, %4014
  %4018 = fadd fast float %4012, %4015
  %4019 = fadd fast float %4013, %4016
  %4020 = call float @dx.op.dot3.f32(i32 55, float %4017, float %4018, float %4019, float %4017, float %4018, float %4019)  ; Dot3(ax,ay,az,bx,by,bz)
  %4021 = call float @dx.op.unary.f32(i32 25, float %4020)  ; Rsqrt(value)
  %4022 = fmul fast float %4017, %4021
  %4023 = fmul fast float %4018, %4021
  %4024 = fmul fast float %4019, %4021
  %4025 = icmp ne i32 %3941, 0
  %4026 = select i1 %4025, float 1.000000e+00, float 0.000000e+00
  %4027 = fmul fast float %3931, %4026
  %4028 = and i32 %3785, 1
  %4029 = icmp eq i32 %4028, 0
  br i1 %4029, label %4030, label %4034

; <label>:4030                                    ; preds = %3939
  %4031 = fsub fast float %4022, %3718
  %4032 = fsub fast float %4023, %3719
  %4033 = fsub fast float %4024, %3720
  br label %4034

; <label>:4034                                    ; preds = %4030, %3939
  %4035 = phi float [ %4031, %4030 ], [ %4022, %3939 ]
  %4036 = phi float [ %4032, %4030 ], [ %4023, %3939 ]
  %4037 = phi float [ %4033, %4030 ], [ %4024, %3939 ]
  %4038 = fmul float %4037, %4027
  %4039 = fmul float %4036, %4027
  %4040 = fmul float %4035, %4027
  %4041 = fadd fast float %4040, %3718
  %4042 = fadd fast float %4039, %3719
  %4043 = fadd fast float %4038, %3720
  %4044 = icmp ne i32 %3940, 0
  %4045 = select i1 %4044, float 1.000000e+00, float 0.000000e+00
  %4046 = fmul fast float %3931, %4045
  %4047 = fsub fast float %3985, %3725
  %4048 = fsub fast float %3986, %3726
  %4049 = fsub fast float %3987, %3727
  %4050 = fmul fast float %4047, %4046
  %4051 = fmul fast float %4048, %4046
  %4052 = fmul fast float %4049, %4046
  %4053 = fadd fast float %4050, %3725
  %4054 = fadd fast float %4051, %3726
  %4055 = fadd fast float %4052, %3727
  %4056 = fsub fast float %3958, %3724
  %4057 = fmul fast float %4056, %4046
  %4058 = fadd fast float %4057, %3724
  %4059 = fmul fast float %4046, %3714
  %4060 = fsub fast float %3714, %4059
  %4061 = fmul fast float %4046, %3713
  %4062 = fsub fast float %3713, %4061
  %4063 = fadd fast float %3931, %3723
  %4064 = call float @dx.op.unary.f32(i32 7, float %4063)  ; Saturate(value)
  %4065 = fsub fast float %3978, %3722
  %4066 = fmul fast float %4065, %4027
  %4067 = fadd fast float %4066, %3722
  %4068 = fsub fast float %3964, %3721
  %4069 = fmul fast float %4068, %4027
  %4070 = fadd fast float %4069, %3721
  %4071 = call float @dx.op.dot3.f32(i32 55, float %3985, float %3986, float %3987, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4072 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4072, 0
  %4074 = extractvalue %dx.types.CBufRet.f32 %4072, 1
  %4075 = fmul fast float %4074, %4071
  %4076 = fadd fast float %4075, %4073
  %4077 = call float @dx.op.unary.f32(i32 7, float %4076)  ; Saturate(value)
  %4078 = bitcast float %3773 to i32
  %4079 = and i32 %4078, 65535
  %4080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4079)  ; LegacyF16ToF32(value)
  %4081 = lshr i32 %4078, 16
  %4082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4081)  ; LegacyF16ToF32(value)
  %4083 = fcmp fast oge float %4080, 0.000000e+00
  %4084 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.f32 %4084, 0
  %4086 = select i1 %4083, float %4080, float %4085
  %4087 = fadd fast float %4086, %4082
  %4088 = fsub fast float %4077, %3712
  %4089 = fmul fast float %4088, %3931
  %4090 = fadd fast float %4089, %3712
  %4091 = fmul fast float %4087, %3931
  %4092 = call float @dx.op.binary.f32(i32 35, float %3711, float %4091)  ; FMax(a,b)
  %4093 = and i32 %3785, 16
  %4094 = icmp eq i32 %4093, 0
  br i1 %4094, label %4117, label %4095

; <label>:4095                                    ; preds = %4034
  %4096 = bitcast float %3779 to i32
  %4097 = add i32 %3776, 0
  %4098 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4097, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4099 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4098, %dx.types.Handle %3944, float %3872, float %3875, float undef, float undef, i32 0, i32 0, i32 undef, float %3877, float %3879, float undef, float %3881, float %3883, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4100 = extractvalue %dx.types.ResRet.f32 %4099, 0
  %4101 = extractvalue %dx.types.ResRet.f32 %4099, 1
  %4102 = extractvalue %dx.types.ResRet.f32 %4099, 2
  %4103 = and i32 %4096, 65535
  %4104 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4103)  ; LegacyF16ToF32(value)
  %4105 = fmul fast float %4100, %3770
  %4106 = fmul fast float %4101, %3771
  %4107 = fmul fast float %4102, %3772
  %4108 = and i32 %3785, 16384
  %4109 = icmp ne i32 %4108, 0
  %4110 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4111 = extractvalue %dx.types.CBufRet.f32 %4110, 0
  %4112 = select i1 %4109, float %4111, float 1.000000e+00
  %4113 = fmul fast float %4112, %4104
  %4114 = fmul fast float %4105, %4113
  %4115 = fmul fast float %4106, %4113
  %4116 = fmul fast float %4107, %4113
  br label %4117

; <label>:4117                                    ; preds = %4095, %4034
  %4118 = phi float [ %4114, %4095 ], [ 0.000000e+00, %4034 ]
  %4119 = phi float [ %4115, %4095 ], [ 0.000000e+00, %4034 ]
  %4120 = phi float [ %4116, %4095 ], [ 0.000000e+00, %4034 ]
  %4121 = fsub fast float %4118, %3715
  %4122 = fsub fast float %4119, %3716
  %4123 = fsub fast float %4120, %3717
  %4124 = fmul fast float %4121, %3931
  %4125 = fmul fast float %4122, %3931
  %4126 = fmul fast float %4123, %3931
  %4127 = fadd fast float %4124, %3715
  %4128 = fadd fast float %4125, %3716
  %4129 = fadd fast float %4126, %3717
  br label %3834

; <label>:4130                                    ; preds = %3834
  br label %4131

; <label>:4131                                    ; preds = %4130, %3654
  %4132 = phi float [ 0.000000e+00, %3654 ], [ %3835, %4130 ]
  %4133 = phi float [ %3623, %3654 ], [ %3836, %4130 ]
  %4134 = phi float [ %3621, %3654 ], [ %3837, %4130 ]
  %4135 = phi float [ %3620, %3654 ], [ %3838, %4130 ]
  %4136 = phi float [ 0.000000e+00, %3654 ], [ %3839, %4130 ]
  %4137 = phi float [ %3614, %3654 ], [ %3840, %4130 ]
  %4138 = phi float [ %3615, %3654 ], [ %3841, %4130 ]
  %4139 = phi float [ %3616, %3654 ], [ %3842, %4130 ]
  %4140 = phi float [ %3649, %3654 ], [ %3843, %4130 ]
  %4141 = phi float [ %3650, %3654 ], [ %3844, %4130 ]
  %4142 = phi float [ %3651, %3654 ], [ %3845, %4130 ]
  %4143 = phi float [ %3619, %3654 ], [ %3846, %4130 ]
  %4144 = phi float [ %3618, %3654 ], [ %3847, %4130 ]
  %4145 = phi float [ 0.000000e+00, %3654 ], [ %3848, %4130 ]
  %4146 = phi float [ %3617, %3654 ], [ %3849, %4130 ]
  %4147 = phi float [ %3611, %3654 ], [ %3850, %4130 ]
  %4148 = phi float [ %3612, %3654 ], [ %3851, %4130 ]
  %4149 = phi float [ %3613, %3654 ], [ %3852, %4130 ]
  %4150 = call float @dx.op.dot3.f32(i32 55, float %4140, float %4141, float %4142, float %4140, float %4141, float %4142)  ; Dot3(ax,ay,az,bx,by,bz)
  %4151 = call float @dx.op.unary.f32(i32 25, float %4150)  ; Rsqrt(value)
  %4152 = fmul fast float %4151, %4140
  %4153 = fmul fast float %4151, %4141
  %4154 = fmul fast float %4151, %4142
  %4155 = fadd fast float %4145, %935
  %4156 = call float @dx.op.unary.f32(i32 7, float %4155)  ; Saturate(value)
  %4157 = call float @dx.op.dot3.f32(i32 55, float %4152, float %4153, float %4154, float %4152, float %4153, float %4154)  ; Dot3(ax,ay,az,bx,by,bz)
  %4158 = call float @dx.op.unary.f32(i32 25, float %4157)  ; Rsqrt(value)
  %4159 = fmul fast float %4158, %4152
  %4160 = fmul fast float %4158, %4153
  %4161 = fmul fast float %4158, %4154
  br label %4162

; <label>:4162                                    ; preds = %4131, %3608
  %4163 = phi float [ %4159, %4131 ], [ %3649, %3608 ]
  %4164 = phi float [ %4160, %4131 ], [ %3650, %3608 ]
  %4165 = phi float [ %4161, %4131 ], [ %3651, %3608 ]
  %4166 = phi float [ %4147, %4131 ], [ %3611, %3608 ]
  %4167 = phi float [ %4148, %4131 ], [ %3612, %3608 ]
  %4168 = phi float [ %4149, %4131 ], [ %3613, %3608 ]
  %4169 = phi float [ %4137, %4131 ], [ %3614, %3608 ]
  %4170 = phi float [ %4138, %4131 ], [ %3615, %3608 ]
  %4171 = phi float [ %4139, %4131 ], [ %3616, %3608 ]
  %4172 = phi float [ %4146, %4131 ], [ %3617, %3608 ]
  %4173 = phi float [ %4156, %4131 ], [ %935, %3608 ]
  %4174 = phi float [ %4144, %4131 ], [ %3618, %3608 ]
  %4175 = phi float [ %4143, %4131 ], [ %3619, %3608 ]
  %4176 = phi float [ %4136, %4131 ], [ 0.000000e+00, %3608 ]
  %4177 = phi float [ %4135, %4131 ], [ %3620, %3608 ]
  %4178 = phi float [ %4132, %4131 ], [ 0.000000e+00, %3608 ]
  %4179 = phi float [ %4133, %4131 ], [ %3623, %3608 ]
  %4180 = phi float [ %4134, %4131 ], [ %3621, %3608 ]
  %4181 = fadd fast float %4172, 0xBFB99999A0000000
  %4182 = call float @dx.op.unary.f32(i32 7, float %4181)  ; Saturate(value)
  %4183 = fmul fast float %4182, 0x3FF1C71C80000000
  %4184 = call float @dx.op.binary.f32(i32 36, float %4172, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4185 = fsub fast float 1.000000e+00, %4183
  %4186 = call float @dx.op.unary.f32(i32 7, float %4185)  ; Saturate(value)
  %4187 = fmul fast float %4186, %4166
  %4188 = fmul fast float %4186, %4167
  %4189 = fmul fast float %4186, %4168
  %4190 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  %4191 = call float @dx.op.unary.f32(i32 7, float %4188)  ; Saturate(value)
  %4192 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4193 = fmul fast float %4183, %4166
  %4194 = fmul fast float %4183, %4167
  %4195 = fmul fast float %4183, %4168
  %4196 = fadd fast float %4193, %4184
  %4197 = fadd fast float %4194, %4184
  %4198 = fadd fast float %4195, %4184
  %4199 = call float @dx.op.unary.f32(i32 7, float %4196)  ; Saturate(value)
  %4200 = call float @dx.op.unary.f32(i32 7, float %4197)  ; Saturate(value)
  %4201 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  %4202 = call float @dx.op.unary.f32(i32 7, float %4174)  ; Saturate(value)
  %4203 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4204 = extractvalue %dx.types.CBufRet.i32 %4203, 3
  %4205 = and i32 %4204, 8
  %4206 = icmp ne i32 %4205, 0
  %4207 = call float @dx.op.binary.f32(i32 35, float %4190, float %4166)  ; FMax(a,b)
  %4208 = call float @dx.op.binary.f32(i32 35, float %4191, float %4166)  ; FMax(a,b)
  %4209 = call float @dx.op.binary.f32(i32 35, float %4192, float %4166)  ; FMax(a,b)
  %4210 = call float @dx.op.dot3.f32(i32 55, float %4190, float %4191, float %4192, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4211 = select i1 %187, float %4166, float %4190
  %4212 = select i1 %187, float %4210, float %4191
  %4213 = select i1 %187, float 1.000000e+00, float %4192
  %4214 = select i1 %4206, float %4207, float %4211
  %4215 = select i1 %4206, float %4208, float %4212
  %4216 = select i1 %4206, float %4209, float %4213
  %4217 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.f32 %4217, 0
  %4219 = extractvalue %dx.types.CBufRet.f32 %4217, 1
  %4220 = extractvalue %dx.types.CBufRet.f32 %4217, 2
  %4221 = fadd fast float %4218, %145
  %4222 = fadd fast float %4219, %146
  %4223 = fadd fast float %4220, %147
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4227 = fsub fast float %4221, %4225
  %4228 = fsub fast float %4222, %4226
  %4229 = fmul fast float %4227, %4227
  %4230 = fmul fast float %4228, %4228
  %4231 = fadd fast float %4229, %4230
  %4232 = call float @dx.op.unary.f32(i32 24, float %4231)  ; Sqrt(value)
  %4233 = extractvalue %dx.types.CBufRet.f32 %4224, 2
  %4234 = fcmp fast olt float %4232, %4233
  br i1 %4234, label %4235, label %4302

; <label>:4235                                    ; preds = %4162
  %4236 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4237 = extractvalue %dx.types.CBufRet.f32 %4236, 0
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 0
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 0
  %4242 = extractvalue %dx.types.CBufRet.f32 %4236, 1
  %4243 = extractvalue %dx.types.CBufRet.f32 %4238, 1
  %4244 = extractvalue %dx.types.CBufRet.f32 %4240, 1
  %4245 = extractvalue %dx.types.CBufRet.f32 %4236, 3
  %4246 = extractvalue %dx.types.CBufRet.f32 %4238, 3
  %4247 = extractvalue %dx.types.CBufRet.f32 %4240, 3
  %4248 = fadd fast float %4245, %4221
  %4249 = fadd fast float %4246, %4222
  %4250 = fadd fast float %4247, %4223
  %4251 = fmul fast float %4248, %4237
  %4252 = call float @dx.op.tertiary.f32(i32 46, float %4249, float %4239, float %4251)  ; FMad(a,b,c)
  %4253 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4241, float %4252)  ; FMad(a,b,c)
  %4254 = fmul fast float %4248, %4242
  %4255 = call float @dx.op.tertiary.f32(i32 46, float %4249, float %4243, float %4254)  ; FMad(a,b,c)
  %4256 = call float @dx.op.tertiary.f32(i32 46, float %4250, float %4244, float %4255)  ; FMad(a,b,c)
  %4257 = fsub fast float %4253, %4245
  %4258 = fsub fast float %4256, %4246
  %4259 = fsub fast float %4257, %4225
  %4260 = fadd fast float %4259, %4233
  %4261 = fsub fast float %4258, %4226
  %4262 = fadd fast float %4261, %4233
  %4263 = extractvalue %dx.types.CBufRet.f32 %4224, 3
  %4264 = fmul fast float %4260, %4263
  %4265 = fmul fast float %4262, %4263
  %4266 = call float @dx.op.unary.f32(i32 7, float %4264)  ; Saturate(value)
  %4267 = call float @dx.op.unary.f32(i32 7, float %4265)  ; Saturate(value)
  %4268 = fsub fast float 1.000000e+00, %4266
  %4269 = fsub fast float 1.000000e+00, %4267
  %4270 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4268, float %4269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4271 = extractvalue %dx.types.ResRet.f32 %4270, 0
  %4272 = fcmp fast ugt float %4271, 0.000000e+00
  br i1 %4272, label %4273, label %4576

; <label>:4273                                    ; preds = %4235
  %4274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4275 = extractvalue %dx.types.CBufRet.f32 %4274, 2
  %4276 = fmul fast float %4275, %4271
  %4277 = extractvalue %dx.types.CBufRet.f32 %4274, 3
  %4278 = fadd fast float %4277, %4276
  %4279 = extractvalue %dx.types.CBufRet.f32 %4240, 2
  %4280 = fadd fast float %4278, %4247
  %4281 = fmul fast float %4253, %4241
  %4282 = call float @dx.op.tertiary.f32(i32 46, float %4256, float %4244, float %4281)  ; FMad(a,b,c)
  %4283 = call float @dx.op.tertiary.f32(i32 46, float %4280, float %4279, float %4282)  ; FMad(a,b,c)
  %4284 = fsub fast float %4283, %4247
  %4285 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4286 = extractvalue %dx.types.CBufRet.f32 %4285, 2
  %4287 = fsub fast float %4284, %4286
  %4288 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4268, float %4269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4289 = extractvalue %dx.types.ResRet.f32 %4288, 0
  %4290 = extractvalue %dx.types.ResRet.f32 %4288, 1
  %4291 = extractvalue %dx.types.ResRet.f32 %4288, 2
  %4292 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4268, float %4269, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4293 = extractvalue %dx.types.ResRet.f32 %4292, 0
  %4294 = extractvalue %dx.types.ResRet.f32 %4292, 1
  %4295 = extractvalue %dx.types.ResRet.f32 %4292, 2
  %4296 = fadd fast float %4293, %4289
  %4297 = fmul fast float %4296, 0x3F847AE140000000
  %4298 = fadd fast float %4294, %4290
  %4299 = fmul fast float %4298, 0x3F847AE140000000
  %4300 = fadd fast float %4295, %4291
  %4301 = fmul fast float %4300, 0x3F847AE140000000
  br label %4576

; <label>:4302                                    ; preds = %4162
  %4303 = and i32 %163, 1
  %4304 = icmp eq i32 %4303, 0
  br i1 %4304, label %4576, label %4305

; <label>:4305                                    ; preds = %4302
  %4306 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4307 = extractvalue %dx.types.CBufRet.f32 %4306, 0
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 0
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 0
  %4312 = extractvalue %dx.types.CBufRet.f32 %4306, 1
  %4313 = extractvalue %dx.types.CBufRet.f32 %4308, 1
  %4314 = extractvalue %dx.types.CBufRet.f32 %4310, 1
  %4315 = extractvalue %dx.types.CBufRet.f32 %4306, 3
  %4316 = extractvalue %dx.types.CBufRet.f32 %4308, 3
  %4317 = extractvalue %dx.types.CBufRet.f32 %4310, 3
  %4318 = fadd fast float %4315, %4221
  %4319 = fadd fast float %4316, %4222
  %4320 = fadd fast float %4317, %4223
  %4321 = fmul fast float %4318, %4307
  %4322 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4309, float %4321)  ; FMad(a,b,c)
  %4323 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4311, float %4322)  ; FMad(a,b,c)
  %4324 = fmul fast float %4318, %4312
  %4325 = call float @dx.op.tertiary.f32(i32 46, float %4319, float %4313, float %4324)  ; FMad(a,b,c)
  %4326 = call float @dx.op.tertiary.f32(i32 46, float %4320, float %4314, float %4325)  ; FMad(a,b,c)
  %4327 = fsub fast float %4323, %4315
  %4328 = fsub fast float %4326, %4316
  %4329 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4330 = extractvalue %dx.types.CBufRet.f32 %4329, 0
  %4331 = extractvalue %dx.types.CBufRet.f32 %4329, 1
  %4332 = extractvalue %dx.types.CBufRet.f32 %4329, 2
  %4333 = extractvalue %dx.types.CBufRet.f32 %4329, 3
  %4334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4335 = extractvalue %dx.types.CBufRet.f32 %4334, 3
  %4336 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.i32 %4336, 0
  %4338 = extractvalue %dx.types.CBufRet.i32 %4336, 1
  %4339 = udiv i32 %4338, %4337
  %4340 = fsub fast float %4327, %4330
  %4341 = fsub fast float %4328, %4331
  %4342 = call float @dx.op.binary.f32(i32 35, float %4340, float 0.000000e+00)  ; FMax(a,b)
  %4343 = call float @dx.op.binary.f32(i32 35, float %4341, float 0.000000e+00)  ; FMax(a,b)
  %4344 = call float @dx.op.binary.f32(i32 36, float %4342, float %4332)  ; FMin(a,b)
  %4345 = call float @dx.op.binary.f32(i32 36, float %4343, float %4333)  ; FMin(a,b)
  %4346 = add i32 %4337, -1
  %4347 = add i32 %4339, -1
  %4348 = fmul fast float %4344, %4335
  %4349 = fmul fast float %4345, %4335
  %4350 = fptoui float %4348 to i32
  %4351 = fptoui float %4349 to i32
  %4352 = call i32 @dx.op.binary.i32(i32 40, i32 %4350, i32 %4346)  ; UMin(a,b)
  %4353 = call i32 @dx.op.binary.i32(i32 40, i32 %4351, i32 %4347)  ; UMin(a,b)
  %4354 = mul i32 %4353, %4337
  %4355 = add i32 %4354, %4352
  %4356 = shl i32 %4355, 2
  %4357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4356, i32 undef)  ; BufferLoad(srv,index,wot)
  %4358 = extractvalue %dx.types.ResRet.i32 %4357, 0
  %4359 = icmp eq i32 %4358, -1
  br i1 %4359, label %4576, label %4360

; <label>:4360                                    ; preds = %4305
  %4361 = mul i32 %4358, 148
  %4362 = add i32 %4361, 4
  %4363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4362, i32 undef)  ; BufferLoad(srv,index,wot)
  %4364 = extractvalue %dx.types.ResRet.f32 %4363, 0
  %4365 = add i32 %4361, 8
  %4366 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4365, i32 undef)  ; BufferLoad(srv,index,wot)
  %4367 = extractvalue %dx.types.ResRet.f32 %4366, 0
  %4368 = add i32 %4361, 36
  %4369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4370 = extractvalue %dx.types.ResRet.f32 %4369, 0
  %4371 = add i32 %4361, 60
  %4372 = add i32 %4361, 92
  %4373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4372, i32 undef)  ; BufferLoad(srv,index,wot)
  %4374 = extractvalue %dx.types.ResRet.i32 %4373, 0
  %4375 = add i32 %4361, 116
  %4376 = fsub fast float %4327, %4364
  %4377 = fsub fast float %4328, %4367
  %4378 = fmul fast float %4335, %4376
  %4379 = fmul fast float %4335, %4377
  %4380 = call float @dx.op.unary.f32(i32 7, float %4378)  ; Saturate(value)
  %4381 = call float @dx.op.unary.f32(i32 7, float %4379)  ; Saturate(value)
  %4382 = fsub fast float 1.000000e+00, %4381
  %4383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4384 = extractvalue %dx.types.CBufRet.f32 %4383, 2
  %4385 = call float @dx.op.unary.f32(i32 83, float %4380)  ; DerivCoarseX(value)
  %4386 = call float @dx.op.unary.f32(i32 83, float %4382)  ; DerivCoarseX(value)
  %4387 = call float @dx.op.unary.f32(i32 84, float %4380)  ; DerivCoarseY(value)
  %4388 = call float @dx.op.unary.f32(i32 84, float %4382)  ; DerivCoarseY(value)
  %4389 = fmul fast float %4385, %4384
  %4390 = fmul fast float %4386, %4384
  %4391 = fmul fast float %4387, %4384
  %4392 = fmul fast float %4388, %4384
  %4393 = call float @dx.op.dot2.f32(i32 54, float %4391, float %4392, float %4391, float %4392)  ; Dot2(ax,ay,bx,by)
  %4394 = call float @dx.op.dot2.f32(i32 54, float %4389, float %4390, float %4389, float %4390)  ; Dot2(ax,ay,bx,by)
  %4395 = call float @dx.op.binary.f32(i32 35, float %4394, float %4393)  ; FMax(a,b)
  %4396 = call float @dx.op.unary.f32(i32 23, float %4395)  ; Log(value)
  %4397 = fmul fast float %4396, 5.000000e-01
  %4398 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4399 = extractvalue %dx.types.CBufRet.f32 %4398, 1
  %4400 = fadd fast float %4399, %4397
  %4401 = call float @dx.op.binary.f32(i32 35, float %4400, float 0.000000e+00)  ; FMax(a,b)
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 3
  %4404 = fadd fast float %4403, %4401
  %4405 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4406 = extractvalue %dx.types.CBufRet.f32 %4405, 3
  %4407 = fadd fast float %4404, %4406
  %4408 = add i32 %4374, 0
  %4409 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4408, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4410 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4409, i32 0)  ; GetDimensions(handle,mipLevel)
  %4411 = extractvalue %dx.types.Dimensions %4410, 0
  %4412 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4411)  ; FirstbitLo(value)
  %4413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4414 = extractvalue %dx.types.CBufRet.i32 %4413, 1
  %4415 = sub nsw i32 %4414, %4412
  %4416 = sitofp i32 %4415 to float
  %4417 = fsub fast float %4407, %4416
  %4418 = call float @dx.op.binary.f32(i32 35, float %4417, float 0.000000e+00)  ; FMax(a,b)
  %4419 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4409, %dx.types.Handle %37, float %4380, float %4382, float %4370, float undef, i32 0, i32 0, i32 undef, float %4418)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4420 = extractvalue %dx.types.ResRet.f32 %4419, 0
  %4421 = fcmp ule float %4420, 0x3FE0101020000000
  %4422 = extractvalue %dx.types.CBufRet.i32 %4413, 0
  %4423 = and i32 %4422, 128
  %4424 = icmp ne i32 %4423, 0
  %4425 = and i1 %4421, %4424
  br i1 %4425, label %4576, label %4426

; <label>:4426                                    ; preds = %4360
  %4427 = add i32 %4361, 20
  %4428 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4427, i32 undef)  ; BufferLoad(srv,index,wot)
  %4429 = extractvalue %dx.types.ResRet.f32 %4428, 0
  %4430 = add i32 %4361, 24
  %4431 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4430, i32 undef)  ; BufferLoad(srv,index,wot)
  %4432 = extractvalue %dx.types.ResRet.f32 %4431, 0
  %4433 = add i32 %4361, 40
  %4434 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4433, i32 undef)  ; BufferLoad(srv,index,wot)
  %4435 = extractvalue %dx.types.ResRet.f32 %4434, 0
  %4436 = add i32 %4361, 96
  %4437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4436, i32 undef)  ; BufferLoad(srv,index,wot)
  %4438 = extractvalue %dx.types.ResRet.i32 %4437, 0
  %4439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4440 = extractvalue %dx.types.CBufRet.f32 %4439, 2
  %4441 = fmul fast float %4440, %4380
  %4442 = fmul fast float %4440, %4382
  %4443 = extractvalue %dx.types.CBufRet.f32 %4439, 3
  %4444 = fadd fast float %4441, %4443
  %4445 = fadd fast float %4442, %4443
  %4446 = add i32 %4438, 0
  %4447 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4446, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4448 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4447, i32 0)  ; GetDimensions(handle,mipLevel)
  %4449 = extractvalue %dx.types.Dimensions %4448, 0
  %4450 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4449)  ; FirstbitLo(value)
  %4451 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4452 = extractvalue %dx.types.CBufRet.i32 %4451, 1
  %4453 = sub nsw i32 %4452, %4450
  %4454 = sitofp i32 %4453 to float
  %4455 = fsub fast float %4404, %4454
  %4456 = call float @dx.op.binary.f32(i32 35, float %4455, float 0.000000e+00)  ; FMax(a,b)
  %4457 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4447, %dx.types.Handle %37, float %4444, float %4445, float %4435, float undef, i32 0, i32 0, i32 undef, float %4456)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4458 = extractvalue %dx.types.ResRet.f32 %4457, 0
  %4459 = fmul fast float %4458, %4429
  %4460 = fadd fast float %4459, %4432
  %4461 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4462 = extractvalue %dx.types.CBufRet.f32 %4461, 0
  %4463 = extractvalue %dx.types.CBufRet.f32 %4461, 1
  %4464 = extractvalue %dx.types.CBufRet.f32 %4461, 2
  %4465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4466 = extractvalue %dx.types.CBufRet.f32 %4465, 3
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4469 = extractvalue %dx.types.CBufRet.f32 %4461, 3
  %4470 = fadd fast float %4466, %4327
  %4471 = fadd fast float %4468, %4328
  %4472 = fadd fast float %4460, %4469
  %4473 = fmul fast float %4470, %4462
  %4474 = call float @dx.op.tertiary.f32(i32 46, float %4471, float %4463, float %4473)  ; FMad(a,b,c)
  %4475 = call float @dx.op.tertiary.f32(i32 46, float %4472, float %4464, float %4474)  ; FMad(a,b,c)
  %4476 = fsub fast float %4475, %4469
  %4477 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4478 = extractvalue %dx.types.CBufRet.f32 %4477, 2
  %4479 = fsub fast float %4476, %4478
  %4480 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4481 = extractvalue %dx.types.CBufRet.i32 %4480, 0
  %4482 = call i32 @dx.op.binary.i32(i32 40, i32 %4358, i32 %4481)  ; UMin(a,b)
  %4483 = mul i32 %4482, 36
  %4484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4483, i32 undef)  ; BufferLoad(srv,index,wot)
  %4485 = extractvalue %dx.types.ResRet.i32 %4484, 0
  %4486 = add i32 %4483, 4
  %4487 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4488 = extractvalue %dx.types.CBufRet.f32 %4487, 0
  %4489 = fmul fast float %4488, %4380
  %4490 = fmul fast float %4488, %4382
  %4491 = extractvalue %dx.types.CBufRet.f32 %4487, 1
  %4492 = fadd fast float %4489, %4491
  %4493 = fadd fast float %4490, %4491
  %4494 = icmp eq i32 %4485, 0
  br i1 %4494, label %4563, label %4495

; <label>:4495                                    ; preds = %4426
  br label %4496

; <label>:4496                                    ; preds = %4553, %4495
  %4497 = phi float [ %4554, %4553 ], [ 0.000000e+00, %4495 ]
  %4498 = phi float [ %4555, %4553 ], [ 0.000000e+00, %4495 ]
  %4499 = phi float [ %4556, %4553 ], [ 0.000000e+00, %4495 ]
  %4500 = phi float [ %4557, %4553 ], [ 0.000000e+00, %4495 ]
  %4501 = phi float [ %4558, %4553 ], [ 0.000000e+00, %4495 ]
  %4502 = phi float [ %4559, %4553 ], [ 0.000000e+00, %4495 ]
  %4503 = phi i32 [ %4560, %4553 ], [ 0, %4495 ]
  %4504 = shl i32 %4503, 2
  %4505 = add i32 %4371, %4504
  %4506 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4505, i32 undef)  ; BufferLoad(srv,index,wot)
  %4507 = extractvalue %dx.types.ResRet.f32 %4506, 0
  %4508 = add i32 %4375, %4504
  %4509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4508, i32 undef)  ; BufferLoad(srv,index,wot)
  %4510 = extractvalue %dx.types.ResRet.i32 %4509, 0
  %4511 = add i32 %4510, 0
  %4512 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4511, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4513 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4512, i32 0)  ; GetDimensions(handle,mipLevel)
  %4514 = extractvalue %dx.types.Dimensions %4513, 0
  %4515 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4514)  ; FirstbitLo(value)
  %4516 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4517 = extractvalue %dx.types.CBufRet.i32 %4516, 1
  %4518 = sub nsw i32 %4517, %4515
  %4519 = sitofp i32 %4518 to float
  %4520 = fsub fast float %4404, %4519
  %4521 = call float @dx.op.binary.f32(i32 35, float %4520, float 0.000000e+00)  ; FMax(a,b)
  %4522 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4512, %dx.types.Handle %37, float %4492, float %4493, float %4507, float undef, i32 0, i32 0, i32 undef, float %4521)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4523 = extractvalue %dx.types.ResRet.f32 %4522, 0
  %4524 = fcmp fast ogt float %4523, 0.000000e+00
  br i1 %4524, label %4525, label %4553

; <label>:4525                                    ; preds = %4496
  %4526 = add i32 %4486, %4504
  %4527 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4526, i32 undef)  ; BufferLoad(srv,index,wot)
  %4528 = extractvalue %dx.types.ResRet.i32 %4527, 0
  %4529 = and i32 %4528, 32767
  %4530 = mul nuw nsw i32 %4529, 928
  %4531 = add nuw nsw i32 %4530, 48
  %4532 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4531, i32 undef)  ; BufferLoad(srv,index,wot)
  %4533 = extractvalue %dx.types.ResRet.f32 %4532, 0
  %4534 = extractvalue %dx.types.ResRet.f32 %4532, 1
  %4535 = extractvalue %dx.types.ResRet.f32 %4532, 2
  %4536 = add nuw nsw i32 %4530, 60
  %4537 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4536, i32 undef)  ; BufferLoad(srv,index,wot)
  %4538 = extractvalue %dx.types.ResRet.f32 %4537, 0
  %4539 = extractvalue %dx.types.ResRet.f32 %4537, 1
  %4540 = extractvalue %dx.types.ResRet.f32 %4537, 2
  %4541 = fmul fast float %4533, %4523
  %4542 = fmul fast float %4534, %4523
  %4543 = fmul fast float %4535, %4523
  %4544 = fadd fast float %4541, %4497
  %4545 = fadd fast float %4542, %4498
  %4546 = fadd fast float %4543, %4499
  %4547 = fmul fast float %4538, %4523
  %4548 = fmul fast float %4539, %4523
  %4549 = fmul fast float %4540, %4523
  %4550 = fadd fast float %4547, %4500
  %4551 = fadd fast float %4548, %4501
  %4552 = fadd fast float %4549, %4502
  br label %4553

; <label>:4553                                    ; preds = %4525, %4496
  %4554 = phi float [ %4544, %4525 ], [ %4497, %4496 ]
  %4555 = phi float [ %4545, %4525 ], [ %4498, %4496 ]
  %4556 = phi float [ %4546, %4525 ], [ %4499, %4496 ]
  %4557 = phi float [ %4550, %4525 ], [ %4500, %4496 ]
  %4558 = phi float [ %4551, %4525 ], [ %4501, %4496 ]
  %4559 = phi float [ %4552, %4525 ], [ %4502, %4496 ]
  %4560 = add nuw i32 %4503, 1
  %4561 = icmp eq i32 %4560, %4485
  br i1 %4561, label %4562, label %4496

; <label>:4562                                    ; preds = %4553
  br label %4563

; <label>:4563                                    ; preds = %4562, %4426
  %4564 = phi float [ 0.000000e+00, %4426 ], [ %4554, %4562 ]
  %4565 = phi float [ 0.000000e+00, %4426 ], [ %4555, %4562 ]
  %4566 = phi float [ 0.000000e+00, %4426 ], [ %4556, %4562 ]
  %4567 = phi float [ 0.000000e+00, %4426 ], [ %4557, %4562 ]
  %4568 = phi float [ 0.000000e+00, %4426 ], [ %4558, %4562 ]
  %4569 = phi float [ 0.000000e+00, %4426 ], [ %4559, %4562 ]
  %4570 = fadd fast float %4567, %4564
  %4571 = fmul fast float %4570, 0x3F847AE140000000
  %4572 = fadd fast float %4568, %4565
  %4573 = fmul fast float %4572, 0x3F847AE140000000
  %4574 = fadd fast float %4569, %4566
  %4575 = fmul fast float %4574, 0x3F847AE140000000
  br label %4576

; <label>:4576                                    ; preds = %4563, %4360, %4305, %4302, %4273, %4235
  %4577 = phi float [ %4287, %4273 ], [ -1.310720e+05, %4235 ], [ %4479, %4563 ], [ -1.310720e+05, %4305 ], [ -1.310720e+05, %4360 ], [ -1.310720e+05, %4302 ]
  %4578 = phi float [ %4297, %4273 ], [ 0.000000e+00, %4235 ], [ %4571, %4563 ], [ 0.000000e+00, %4305 ], [ 0.000000e+00, %4360 ], [ 0.000000e+00, %4302 ]
  %4579 = phi float [ %4299, %4273 ], [ 0.000000e+00, %4235 ], [ %4573, %4563 ], [ 0.000000e+00, %4305 ], [ 0.000000e+00, %4360 ], [ 0.000000e+00, %4302 ]
  %4580 = phi float [ %4301, %4273 ], [ 0.000000e+00, %4235 ], [ %4575, %4563 ], [ 0.000000e+00, %4305 ], [ 0.000000e+00, %4360 ], [ 0.000000e+00, %4302 ]
  %4581 = phi i1 [ true, %4273 ], [ false, %4235 ], [ true, %4563 ], [ false, %4305 ], [ false, %4360 ], [ false, %4302 ]
  %4582 = and i32 %163, 3
  %4583 = icmp eq i32 %4582, 1
  %4584 = select i1 %4583, float 1.000000e+00, float 0.000000e+00
  %4585 = fsub fast float %4577, %147
  %4586 = call float @dx.op.unary.f32(i32 7, float %4585)  ; Saturate(value)
  %4587 = select i1 %4581, float %4586, float 1.000000e+00
  %4588 = fmul fast float %4587, %4584
  %4589 = icmp eq i32 %4582, 3
  %4590 = select i1 %4589, float 1.000000e+00, float %4588
  %4591 = call float @dx.op.binary.f32(i32 35, float %4178, float %4590)  ; FMax(a,b)
  %4592 = call float @dx.op.unary.f32(i32 7, float %4591)  ; Saturate(value)
  %4593 = fcmp fast une float %4592, 0.000000e+00
  %4594 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %145, float %146, float %147)  ; Dot3(ax,ay,az,bx,by,bz)
  %4595 = call float @dx.op.unary.f32(i32 25, float %4594)  ; Rsqrt(value)
  br i1 %4593, label %4603, label %4596

; <label>:4596                                    ; preds = %4576
  %4597 = fmul fast float %4595, %145
  %4598 = fmul fast float %4595, %146
  %4599 = fmul fast float %4595, %147
  %4600 = fsub fast float -0.000000e+00, %4597
  %4601 = fsub fast float -0.000000e+00, %4598
  %4602 = fsub fast float -0.000000e+00, %4599
  br label %4771

; <label>:4603                                    ; preds = %4576
  %4604 = fmul fast float %145, %4595
  %4605 = fsub fast float -0.000000e+00, %4604
  %4606 = fmul fast float %146, %4595
  %4607 = fsub fast float -0.000000e+00, %4606
  %4608 = fmul fast float %147, %4595
  %4609 = fsub fast float -0.000000e+00, %4608
  %4610 = call float @dx.op.dot3.f32(i32 55, float %4605, float %4607, float %4609, float %95, float %97, float %99)  ; Dot3(ax,ay,az,bx,by,bz)
  %4611 = fmul fast float %4592, 2.500000e+00
  %4612 = call float @dx.op.unary.f32(i32 7, float %4611)  ; Saturate(value)
  %4613 = fmul fast float %4592, 0x4013FFFFE0000000
  %4614 = fadd fast float %4613, 0xBFFFFFFFE0000000
  %4615 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4616 = fmul fast float %4592, 0x4004000020000000
  %4617 = fadd fast float %4616, 0xBFF8000040000000
  %4618 = call float @dx.op.unary.f32(i32 7, float %4617)  ; Saturate(value)
  %4619 = call float @dx.op.unary.f32(i32 7, float %4612)  ; Saturate(value)
  %4620 = fmul fast float %4181, 1.000000e+01
  %4621 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4622 = fmul fast float %4621, 2.000000e+00
  %4623 = fsub fast float 3.000000e+00, %4622
  %4624 = fmul fast float %4621, %4621
  %4625 = fmul fast float %4624, %4623
  %4626 = fsub fast float 1.000000e+00, %4625
  %4627 = fsub fast float 0x3FE3333340000000, %4202
  %4628 = fmul fast float %4627, 0x400AAAAAA0000000
  %4629 = call float @dx.op.unary.f32(i32 7, float %4628)  ; Saturate(value)
  %4630 = fmul fast float %4626, %4629
  %4631 = fmul fast float %4214, 0x3FEA2B8620000000
  %4632 = fmul fast float %4215, 0x3FEA2B8620000000
  %4633 = fmul fast float %4216, 0x3FEA2B8620000000
  %4634 = fadd fast float %4631, 0x3FC81DFBA0000000
  %4635 = fmul fast float %4634, %4214
  %4636 = fadd fast float %4635, 0x3F910E6020000000
  %4637 = fadd fast float %4632, 0x3FC81DFBA0000000
  %4638 = fmul fast float %4637, %4215
  %4639 = fadd fast float %4638, 0x3F910E6020000000
  %4640 = fadd fast float %4633, 0x3FC81DFBA0000000
  %4641 = fmul fast float %4640, %4216
  %4642 = fadd fast float %4641, 0x3F910E6020000000
  %4643 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4644 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4645 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4646 = fsub fast float %4643, %4214
  %4647 = fsub fast float %4644, %4215
  %4648 = fsub fast float %4645, %4216
  %4649 = fmul fast float %4646, %4619
  %4650 = fmul fast float %4649, %4630
  %4651 = fmul fast float %4647, %4619
  %4652 = fmul fast float %4651, %4630
  %4653 = fmul fast float %4648, %4619
  %4654 = fmul fast float %4653, %4630
  %4655 = fadd fast float %4650, %4214
  %4656 = fadd fast float %4652, %4215
  %4657 = fadd fast float %4654, %4216
  %4658 = fmul fast float %4175, %4175
  %4659 = fmul fast float %4658, %4658
  %4660 = fadd fast float %4615, 1.000000e+00
  %4661 = fsub fast float %4660, %4630
  %4662 = call float @dx.op.unary.f32(i32 7, float %4661)  ; Saturate(value)
  %4663 = call float @dx.op.dot3.f32(i32 55, float %95, float %97, float %99, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4664 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4665 = fsub fast float 1.000000e+00, %4659
  %4666 = call float @dx.op.binary.f32(i32 36, float %4662, float %4665)  ; FMin(a,b)
  %4667 = call float @dx.op.unary.f32(i32 7, float %4618)  ; Saturate(value)
  %4668 = call float @dx.op.binary.f32(i32 35, float %4666, float %4667)  ; FMax(a,b)
  %4669 = fadd fast float %4664, 0xBFE4CCCCC0000000
  %4670 = fmul fast float %4669, 0x4006DB6DA0000000
  %4671 = call float @dx.op.unary.f32(i32 7, float %4670)  ; Saturate(value)
  %4672 = fmul fast float %4671, 2.000000e+00
  %4673 = fsub fast float 3.000000e+00, %4672
  %4674 = bitcast float %4199 to i32
  %4675 = ashr i32 %4674, 1
  %4676 = add nsw i32 %4675, 532487669
  %4677 = bitcast i32 %4676 to float
  %4678 = fsub fast float 1.000000e+00, %4677
  %4679 = bitcast float %4678 to i32
  %4680 = sub nsw i32 2129859010, %4679
  %4681 = bitcast i32 %4680 to float
  %4682 = fmul fast float %4681, 2.000000e+00
  %4683 = bitcast float %4200 to i32
  %4684 = ashr i32 %4683, 1
  %4685 = add nsw i32 %4684, 532487669
  %4686 = bitcast i32 %4685 to float
  %4687 = fsub fast float 1.000000e+00, %4686
  %4688 = bitcast float %4687 to i32
  %4689 = sub nsw i32 2129859010, %4688
  %4690 = bitcast i32 %4689 to float
  %4691 = fmul fast float %4690, 2.000000e+00
  %4692 = bitcast float %4201 to i32
  %4693 = ashr i32 %4692, 1
  %4694 = add nsw i32 %4693, 532487669
  %4695 = bitcast i32 %4694 to float
  %4696 = fsub fast float 1.000000e+00, %4695
  %4697 = bitcast float %4696 to i32
  %4698 = sub nsw i32 2129859010, %4697
  %4699 = bitcast i32 %4698 to float
  %4700 = fmul fast float %4699, 2.000000e+00
  %4701 = fsub fast float 0x4002A9FBE0000000, %4682
  %4702 = fadd fast float %4682, 0x3FD54FDF00000000
  %4703 = bitcast float %4702 to i32
  %4704 = sub nsw i32 2129859010, %4703
  %4705 = bitcast i32 %4704 to float
  %4706 = fmul fast float %4705, %4701
  %4707 = fmul fast float %4706, %4706
  %4708 = fsub fast float 0x4002A9FBE0000000, %4691
  %4709 = fadd fast float %4691, 0x3FD54FDF00000000
  %4710 = bitcast float %4709 to i32
  %4711 = sub nsw i32 2129859010, %4710
  %4712 = bitcast i32 %4711 to float
  %4713 = fmul fast float %4712, %4708
  %4714 = fmul fast float %4713, %4713
  %4715 = fsub fast float 0x4002A9FBE0000000, %4700
  %4716 = fadd fast float %4700, 0x3FD54FDF00000000
  %4717 = bitcast float %4716 to i32
  %4718 = sub nsw i32 2129859010, %4717
  %4719 = bitcast i32 %4718 to float
  %4720 = fmul fast float %4719, %4715
  %4721 = fmul fast float %4720, %4720
  %4722 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4707)  ; FMax(a,b)
  %4723 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4714)  ; FMax(a,b)
  %4724 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4721)  ; FMax(a,b)
  %4725 = fsub fast float 1.000000e+00, %4610
  %4726 = fadd fast float %4725, %4626
  %4727 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4728 = fsub fast float 1.000000e+00, %4590
  %4729 = fmul fast float %4668, %4728
  %4730 = fmul fast float %4671, %4671
  %4731 = fmul fast float %4730, %4729
  %4732 = fmul fast float %4731, %4673
  %4733 = fmul fast float %4728, 0xBFE99999A0000000
  %4734 = fmul fast float %4733, %4619
  %4735 = fmul fast float %4734, %4630
  %4736 = fadd fast float %4735, 1.000000e+00
  %4737 = fadd fast float %4202, -1.000000e+00
  %4738 = fmul fast float %4736, %4737
  %4739 = fadd fast float %4738, 1.000000e+00
  %4740 = fsub fast float %4722, %4199
  %4741 = fsub fast float %4723, %4200
  %4742 = fsub fast float %4724, %4201
  %4743 = fmul fast float %4732, %4740
  %4744 = fmul fast float %4732, %4741
  %4745 = fmul fast float %4732, %4742
  %4746 = fadd fast float %4743, %4199
  %4747 = fadd fast float %4744, %4200
  %4748 = fadd fast float %4745, %4201
  %4749 = fsub fast float %95, %4163
  %4750 = fsub fast float %97, %4164
  %4751 = fsub fast float %99, %4165
  %4752 = fmul fast float %4732, %4749
  %4753 = fmul fast float %4732, %4750
  %4754 = fmul fast float %4732, %4751
  %4755 = fadd fast float %4752, %4163
  %4756 = fadd fast float %4753, %4164
  %4757 = fadd fast float %4754, %4165
  %4758 = fmul fast float %4732, %4727
  %4759 = call float @dx.op.unary.f32(i32 7, float %4739)  ; Saturate(value)
  %4760 = fsub fast float 1.000000e+00, %4759
  %4761 = fmul fast float %4758, %4760
  %4762 = fadd fast float %4761, %4759
  %4763 = fsub fast float 1.000000e+00, %4175
  %4764 = fmul fast float %4732, %4763
  %4765 = fadd fast float %4764, %4175
  %4766 = call float @dx.op.dot3.f32(i32 55, float %4755, float %4756, float %4757, float %4755, float %4756, float %4757)  ; Dot3(ax,ay,az,bx,by,bz)
  %4767 = call float @dx.op.unary.f32(i32 25, float %4766)  ; Rsqrt(value)
  %4768 = fmul fast float %4755, %4767
  %4769 = fmul fast float %4756, %4767
  %4770 = fmul fast float %4757, %4767
  br label %4771

; <label>:4771                                    ; preds = %4603, %4596
  %4772 = phi float [ %4602, %4596 ], [ %4609, %4603 ]
  %4773 = phi float [ %4601, %4596 ], [ %4607, %4603 ]
  %4774 = phi float [ %4600, %4596 ], [ %4605, %4603 ]
  %4775 = phi float [ %4599, %4596 ], [ %4608, %4603 ]
  %4776 = phi float [ %4598, %4596 ], [ %4606, %4603 ]
  %4777 = phi float [ %4597, %4596 ], [ %4604, %4603 ]
  %4778 = phi float [ %4214, %4596 ], [ %4655, %4603 ]
  %4779 = phi float [ %4215, %4596 ], [ %4656, %4603 ]
  %4780 = phi float [ %4216, %4596 ], [ %4657, %4603 ]
  %4781 = phi float [ %4163, %4596 ], [ %4768, %4603 ]
  %4782 = phi float [ %4164, %4596 ], [ %4769, %4603 ]
  %4783 = phi float [ %4165, %4596 ], [ %4770, %4603 ]
  %4784 = phi float [ %4199, %4596 ], [ %4746, %4603 ]
  %4785 = phi float [ %4200, %4596 ], [ %4747, %4603 ]
  %4786 = phi float [ %4201, %4596 ], [ %4748, %4603 ]
  %4787 = phi float [ %4202, %4596 ], [ %4762, %4603 ]
  %4788 = phi float [ %4175, %4596 ], [ %4765, %4603 ]
  %4789 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4790 = extractvalue %dx.types.CBufRet.f32 %4789, 2
  %4791 = extractvalue %dx.types.CBufRet.f32 %4789, 3
  %4792 = fmul fast float %4790, %86
  %4793 = fmul fast float %4791, %87
  %4794 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4795 = extractvalue %dx.types.CBufRet.f32 %4794, 0
  %4796 = extractvalue %dx.types.CBufRet.f32 %4794, 1
  %4797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4792, float %4793, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 0
  %4799 = fmul fast float %4798, %4796
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = fadd fast float %4800, -1.000000e+00
  %4802 = fmul fast float %4801, %4795
  %4803 = fadd fast float %4802, 1.000000e+00
  %4804 = select i1 %187, float 0.000000e+00, float %4786
  %4805 = call float @dx.op.dot3.f32(i32 55, float %4781, float %4782, float %4783, float %4774, float %4773, float %4772)  ; Dot3(ax,ay,az,bx,by,bz)
  %4806 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4777, float %4776, float %4775, float %4781, float %4782, float %4783)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = fmul fast float %4807, 2.000000e+00
  %4809 = fmul fast float %4808, %4781
  %4810 = fmul fast float %4808, %4782
  %4811 = fmul fast float %4808, %4783
  %4812 = fsub fast float %4777, %4809
  %4813 = fsub fast float %4776, %4810
  %4814 = fsub fast float %4775, %4811
  %4815 = call float @dx.op.binary.f32(i32 36, float %4788, float %4803)  ; FMin(a,b)
  %4816 = fsub fast float 1.000000e+00, %4815
  %4817 = bitcast float %4816 to i32
  %4818 = ashr i32 %4817, 1
  %4819 = add nsw i32 %4818, 532487669
  %4820 = bitcast i32 %4819 to float
  %4821 = fsub fast float 1.000000e+00, %4787
  %4822 = call float @dx.op.binary.f32(i32 35, float %4821, float 0x3F847AE140000000)  ; FMax(a,b)
  %4823 = fmul fast float %4822, %4822
  %4824 = fmul fast float %4823, %4823
  %4825 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  %4826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4820, float %4824, float %4825, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4827 = extractvalue %dx.types.ResRet.f32 %4826, 0
  %4828 = fsub fast float 1.000000e+00, %4788
  %4829 = bitcast float %4828 to i32
  %4830 = sub nsw i32 2129859010, %4829
  %4831 = bitcast i32 %4830 to float
  %4832 = call float @dx.op.dot3.f32(i32 55, float %63, float %59, float %55, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4833 = fmul fast float %4832, 0x3FD20DD760000000
  %4834 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %63)  ; FMax(a,b)
  %4835 = call float @dx.op.dot3.f32(i32 55, float %64, float %65, float %66, float %64, float %65, float %66)  ; Dot3(ax,ay,az,bx,by,bz)
  %4836 = fcmp fast oeq float %4835, 0.000000e+00
  %4837 = fcmp fast oeq float %4834, 0.000000e+00
  %4838 = or i1 %4837, %4836
  br i1 %4838, label %4868, label %4839

; <label>:4839                                    ; preds = %4771
  %4840 = fsub fast float -0.000000e+00, %66
  %4841 = fsub fast float -0.000000e+00, %64
  %4842 = call float @dx.op.unary.f32(i32 24, float %4835)  ; Sqrt(value)
  %4843 = fdiv fast float %4842, %4834
  %4844 = fcmp fast ogt float %4843, 0x3FFB6F8900000000
  %4845 = select i1 %4844, float 0x3FFB6F8900000000, float %4843
  %4846 = fmul fast float %4845, 0x3FE8A23460000000
  %4847 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4848 = call float @dx.op.binary.f32(i32 35, float %4845, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4849 = fmul fast float %4847, %4834
  %4850 = fmul fast float %4848, 0x3FF279A740000000
  %4851 = fadd fast float %4850, -1.000000e+00
  %4852 = call float @dx.op.dot3.f32(i32 55, float %4840, float %4841, float %65, float %4840, float %4841, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %4853 = call float @dx.op.unary.f32(i32 25, float %4852)  ; Rsqrt(value)
  %4854 = fmul fast float %4853, %4840
  %4855 = fmul fast float %4853, %4841
  %4856 = fmul fast float %4853, %65
  %4857 = fmul fast float %4851, %4851
  %4858 = fsub fast float 1.000000e+00, %4857
  %4859 = fmul fast float %4848, 0x40005F8BE0000000
  %4860 = fsub fast float 0x400C5BF8A0000000, %4859
  %4861 = fdiv fast float %4849, %4860
  %4862 = fmul fast float %4861, 0x3FEE31C3C0000000
  %4863 = fmul fast float %4862, %4858
  %4864 = fmul fast float %4848, 0x3FDACB7480000000
  %4865 = fadd fast float %4864, 0xBFD7347680000000
  %4866 = fmul fast float %4865, %4861
  %4867 = fmul fast float %4866, %4858
  br label %4868

; <label>:4868                                    ; preds = %4839, %4771
  %4869 = phi float [ %4854, %4839 ], [ 0.000000e+00, %4771 ]
  %4870 = phi float [ %4855, %4839 ], [ 0.000000e+00, %4771 ]
  %4871 = phi float [ %4856, %4839 ], [ 0.000000e+00, %4771 ]
  %4872 = phi float [ %4863, %4839 ], [ 0.000000e+00, %4771 ]
  %4873 = phi float [ %4867, %4839 ], [ 0.000000e+00, %4771 ]
  %4874 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4870, float %4871, float %4781, float %4782, float %4783)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = fmul fast float %4874, %4874
  %4876 = fmul fast float %4875, 0x3FEE471020000000
  %4877 = fadd fast float %4876, 0xBFD42F6020000000
  %4878 = fmul fast float %4834, 0x3FD20DD760000000
  %4879 = fmul fast float %4877, %4873
  %4880 = fmul fast float %4872, 0x3FDF454380000000
  %4881 = fmul fast float %4880, %4874
  %4882 = fadd fast float %4881, %4878
  %4883 = fadd fast float %4882, %4879
  %4884 = call float @dx.op.dot3.f32(i32 55, float %4869, float %4870, float %4871, float %4812, float %4813, float %4814)  ; Dot3(ax,ay,az,bx,by,bz)
  %4885 = fmul fast float %4884, 0x3FDF454380000000
  %4886 = fmul fast float %4884, %4884
  %4887 = fmul fast float %4886, 0x3FEE471020000000
  %4888 = fadd fast float %4887, 0xBFD42F6020000000
  %4889 = call float @dx.op.dot3.f32(i32 55, float %4834, float %4872, float %4873, float 0x3FD20DD760000000, float %4885, float %4888)  ; Dot3(ax,ay,az,bx,by,bz)
  %4890 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %59)  ; FMax(a,b)
  %4891 = call float @dx.op.dot3.f32(i32 55, float %60, float %61, float %62, float %60, float %61, float %62)  ; Dot3(ax,ay,az,bx,by,bz)
  %4892 = fcmp fast oeq float %4891, 0.000000e+00
  %4893 = fcmp fast oeq float %4890, 0.000000e+00
  %4894 = or i1 %4893, %4892
  br i1 %4894, label %4924, label %4895

; <label>:4895                                    ; preds = %4868
  %4896 = fsub fast float -0.000000e+00, %62
  %4897 = fsub fast float -0.000000e+00, %60
  %4898 = call float @dx.op.unary.f32(i32 24, float %4891)  ; Sqrt(value)
  %4899 = fdiv fast float %4898, %4890
  %4900 = fcmp fast ogt float %4899, 0x3FFB6F8900000000
  %4901 = select i1 %4900, float 0x3FFB6F8900000000, float %4899
  %4902 = fmul fast float %4901, 0x3FE8A23460000000
  %4903 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4904 = call float @dx.op.binary.f32(i32 35, float %4901, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4905 = fmul fast float %4903, %4890
  %4906 = fmul fast float %4904, 0x3FF279A740000000
  %4907 = fadd fast float %4906, -1.000000e+00
  %4908 = call float @dx.op.dot3.f32(i32 55, float %4896, float %4897, float %61, float %4896, float %4897, float %61)  ; Dot3(ax,ay,az,bx,by,bz)
  %4909 = call float @dx.op.unary.f32(i32 25, float %4908)  ; Rsqrt(value)
  %4910 = fmul fast float %4909, %4896
  %4911 = fmul fast float %4909, %4897
  %4912 = fmul fast float %4909, %61
  %4913 = fmul fast float %4907, %4907
  %4914 = fsub fast float 1.000000e+00, %4913
  %4915 = fmul fast float %4904, 0x40005F8BE0000000
  %4916 = fsub fast float 0x400C5BF8A0000000, %4915
  %4917 = fdiv fast float %4905, %4916
  %4918 = fmul fast float %4917, 0x3FEE31C3C0000000
  %4919 = fmul fast float %4918, %4914
  %4920 = fmul fast float %4904, 0x3FDACB7480000000
  %4921 = fadd fast float %4920, 0xBFD7347680000000
  %4922 = fmul fast float %4921, %4917
  %4923 = fmul fast float %4922, %4914
  br label %4924

; <label>:4924                                    ; preds = %4895, %4868
  %4925 = phi float [ %4910, %4895 ], [ 0.000000e+00, %4868 ]
  %4926 = phi float [ %4911, %4895 ], [ 0.000000e+00, %4868 ]
  %4927 = phi float [ %4912, %4895 ], [ 0.000000e+00, %4868 ]
  %4928 = phi float [ %4919, %4895 ], [ 0.000000e+00, %4868 ]
  %4929 = phi float [ %4923, %4895 ], [ 0.000000e+00, %4868 ]
  %4930 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4926, float %4927, float %4781, float %4782, float %4783)  ; Dot3(ax,ay,az,bx,by,bz)
  %4931 = fmul fast float %4930, %4930
  %4932 = fmul fast float %4931, 0x3FEE471020000000
  %4933 = fadd fast float %4932, 0xBFD42F6020000000
  %4934 = fmul fast float %4890, 0x3FD20DD760000000
  %4935 = fmul fast float %4933, %4929
  %4936 = fmul fast float %4928, 0x3FDF454380000000
  %4937 = fmul fast float %4936, %4930
  %4938 = fadd fast float %4937, %4934
  %4939 = fadd fast float %4938, %4935
  %4940 = call float @dx.op.dot3.f32(i32 55, float %4925, float %4926, float %4927, float %4812, float %4813, float %4814)  ; Dot3(ax,ay,az,bx,by,bz)
  %4941 = fmul fast float %4940, 0x3FDF454380000000
  %4942 = fmul fast float %4940, %4940
  %4943 = fmul fast float %4942, 0x3FEE471020000000
  %4944 = fadd fast float %4943, 0xBFD42F6020000000
  %4945 = call float @dx.op.dot3.f32(i32 55, float %4890, float %4928, float %4929, float 0x3FD20DD760000000, float %4941, float %4944)  ; Dot3(ax,ay,az,bx,by,bz)
  %4946 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %55)  ; FMax(a,b)
  %4947 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %4948 = fcmp fast oeq float %4947, 0.000000e+00
  %4949 = fcmp fast oeq float %4946, 0.000000e+00
  %4950 = or i1 %4949, %4948
  br i1 %4950, label %4980, label %4951

; <label>:4951                                    ; preds = %4924
  %4952 = fsub fast float -0.000000e+00, %58
  %4953 = fsub fast float -0.000000e+00, %56
  %4954 = call float @dx.op.unary.f32(i32 24, float %4947)  ; Sqrt(value)
  %4955 = fdiv fast float %4954, %4946
  %4956 = fcmp fast ogt float %4955, 0x3FFB6F8900000000
  %4957 = select i1 %4956, float 0x3FFB6F8900000000, float %4955
  %4958 = fmul fast float %4957, 0x3FE8A23460000000
  %4959 = call float @dx.op.unary.f32(i32 7, float %4958)  ; Saturate(value)
  %4960 = call float @dx.op.binary.f32(i32 35, float %4957, float 0x3FF4C8DC20000000)  ; FMax(a,b)
  %4961 = fmul fast float %4959, %4946
  %4962 = fmul fast float %4960, 0x3FF279A740000000
  %4963 = fadd fast float %4962, -1.000000e+00
  %4964 = call float @dx.op.dot3.f32(i32 55, float %4952, float %4953, float %57, float %4952, float %4953, float %57)  ; Dot3(ax,ay,az,bx,by,bz)
  %4965 = call float @dx.op.unary.f32(i32 25, float %4964)  ; Rsqrt(value)
  %4966 = fmul fast float %4965, %4952
  %4967 = fmul fast float %4965, %4953
  %4968 = fmul fast float %4965, %57
  %4969 = fmul fast float %4963, %4963
  %4970 = fsub fast float 1.000000e+00, %4969
  %4971 = fmul fast float %4960, 0x40005F8BE0000000
  %4972 = fsub fast float 0x400C5BF8A0000000, %4971
  %4973 = fdiv fast float %4961, %4972
  %4974 = fmul fast float %4973, 0x3FEE31C3C0000000
  %4975 = fmul fast float %4974, %4970
  %4976 = fmul fast float %4960, 0x3FDACB7480000000
  %4977 = fadd fast float %4976, 0xBFD7347680000000
  %4978 = fmul fast float %4977, %4973
  %4979 = fmul fast float %4978, %4970
  br label %4980

; <label>:4980                                    ; preds = %4951, %4924
  %4981 = phi float [ %4966, %4951 ], [ 0.000000e+00, %4924 ]
  %4982 = phi float [ %4967, %4951 ], [ 0.000000e+00, %4924 ]
  %4983 = phi float [ %4968, %4951 ], [ 0.000000e+00, %4924 ]
  %4984 = phi float [ %4975, %4951 ], [ 0.000000e+00, %4924 ]
  %4985 = phi float [ %4979, %4951 ], [ 0.000000e+00, %4924 ]
  %4986 = call float @dx.op.dot3.f32(i32 55, float %4981, float %4982, float %4983, float %4781, float %4782, float %4783)  ; Dot3(ax,ay,az,bx,by,bz)
  %4987 = fmul fast float %4986, %4986
  %4988 = fmul fast float %4987, 0x3FEE471020000000
  %4989 = fadd fast float %4988, 0xBFD42F6020000000
  %4990 = fmul fast float %4946, 0x3FD20DD760000000
  %4991 = fmul fast float %4989, %4985
  %4992 = fmul fast float %4984, 0x3FDF454380000000
  %4993 = fmul fast float %4992, %4986
  %4994 = fadd fast float %4993, %4990
  %4995 = fadd fast float %4994, %4991
  %4996 = call float @dx.op.dot3.f32(i32 55, float %4981, float %4982, float %4983, float %4812, float %4813, float %4814)  ; Dot3(ax,ay,az,bx,by,bz)
  %4997 = fmul fast float %4996, 0x3FDF454380000000
  %4998 = fmul fast float %4996, %4996
  %4999 = fmul fast float %4998, 0x3FEE471020000000
  %5000 = fadd fast float %4999, 0xBFD42F6020000000
  %5001 = call float @dx.op.dot3.f32(i32 55, float %4946, float %4984, float %4985, float 0x3FD20DD760000000, float %4997, float %5000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5002 = call float @dx.op.binary.f32(i32 35, float %4883, float 0.000000e+00)  ; FMax(a,b)
  %5003 = call float @dx.op.binary.f32(i32 35, float %4939, float 0.000000e+00)  ; FMax(a,b)
  %5004 = call float @dx.op.binary.f32(i32 35, float %4995, float 0.000000e+00)  ; FMax(a,b)
  %5005 = call float @dx.op.binary.f32(i32 35, float %4889, float 0.000000e+00)  ; FMax(a,b)
  %5006 = call float @dx.op.binary.f32(i32 35, float %4945, float 0.000000e+00)  ; FMax(a,b)
  %5007 = call float @dx.op.binary.f32(i32 35, float %5001, float 0.000000e+00)  ; FMax(a,b)
  %5008 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5009 = extractvalue %dx.types.CBufRet.f32 %5008, 0
  %5010 = call float @dx.op.binary.f32(i32 36, float %4778, float %5009)  ; FMin(a,b)
  %5011 = fmul fast float %5010, %4816
  %5012 = fsub fast float 1.000000e+00, %5011
  %5013 = bitcast float %5012 to i32
  %5014 = sub nsw i32 2129859010, %5013
  %5015 = bitcast i32 %5014 to float
  %5016 = call float @dx.op.binary.f32(i32 36, float %4779, float %5009)  ; FMin(a,b)
  %5017 = fmul fast float %5016, %4816
  %5018 = fsub fast float 1.000000e+00, %5017
  %5019 = bitcast float %5018 to i32
  %5020 = sub nsw i32 2129859010, %5019
  %5021 = bitcast i32 %5020 to float
  %5022 = call float @dx.op.binary.f32(i32 36, float %4780, float %5009)  ; FMin(a,b)
  %5023 = fmul fast float %5022, %4816
  %5024 = fsub fast float 1.000000e+00, %5023
  %5025 = bitcast float %5024 to i32
  %5026 = sub nsw i32 2129859010, %5025
  %5027 = bitcast i32 %5026 to float
  %5028 = fmul fast float %5002, %4815
  %5029 = fmul fast float %5028, %5015
  %5030 = fmul fast float %5003, %4815
  %5031 = fmul fast float %5030, %5021
  %5032 = fmul fast float %5004, %4815
  %5033 = fmul fast float %5032, %5027
  %5034 = call float @dx.op.binary.f32(i32 36, float %4784, float %5009)  ; FMin(a,b)
  %5035 = fmul fast float %5034, %4816
  %5036 = fsub fast float 1.000000e+00, %5035
  %5037 = bitcast float %5036 to i32
  %5038 = sub nsw i32 2129859010, %5037
  %5039 = bitcast i32 %5038 to float
  %5040 = call float @dx.op.binary.f32(i32 36, float %4785, float %5009)  ; FMin(a,b)
  %5041 = fmul fast float %5040, %4816
  %5042 = fsub fast float 1.000000e+00, %5041
  %5043 = bitcast float %5042 to i32
  %5044 = sub nsw i32 2129859010, %5043
  %5045 = bitcast i32 %5044 to float
  %5046 = call float @dx.op.binary.f32(i32 36, float %4804, float %5009)  ; FMin(a,b)
  %5047 = fmul fast float %5046, %4816
  %5048 = fsub fast float 1.000000e+00, %5047
  %5049 = bitcast float %5048 to i32
  %5050 = sub nsw i32 2129859010, %5049
  %5051 = bitcast i32 %5050 to float
  %5052 = fmul fast float %5005, %4815
  %5053 = fmul fast float %5052, %5039
  %5054 = fmul fast float %5006, %4815
  %5055 = fmul fast float %5054, %5045
  %5056 = fmul fast float %5007, %4815
  %5057 = fmul fast float %5056, %5051
  %5058 = call float @dx.op.dot3.f32(i32 55, float %5029, float %5031, float %5033, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5059 = select i1 %187, float 0.000000e+00, float %5029
  %5060 = select i1 %187, float %5058, float %5031
  %5061 = select i1 %187, float 0.000000e+00, float %5033
  %5062 = call float @dx.op.dot3.f32(i32 55, float %5053, float %5055, float %5057, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5063 = select i1 %187, float 0.000000e+00, float %5053
  %5064 = select i1 %187, float %5062, float %5055
  %5065 = select i1 %187, float 0.000000e+00, float %5057
  %5066 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 6)  ; CBufferLoadLegacy(handle,regIndex)
  %5067 = extractvalue %dx.types.CBufRet.f32 %5066, 1
  %5068 = fsub fast float %81, %5067
  %5069 = extractvalue %dx.types.CBufRet.f32 %5066, 2
  %5070 = fmul fast float %5068, %5069
  %5071 = call float @dx.op.unary.f32(i32 7, float %5070)  ; Saturate(value)
  %5072 = fmul fast float %4832, 0x4071A18460000000
  %5073 = fadd fast float %5072, 0x3F0FFB4800000000
  %5074 = call float @dx.op.unary.f32(i32 23, float %5073)  ; Log(value)
  %5075 = fadd fast float %5074, 0x4006B851E0000000
  %5076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5077 = extractvalue %dx.types.CBufRet.f32 %5076, 1
  %5078 = extractvalue %dx.types.CBufRet.f32 %5076, 3
  %5079 = fsub fast float %5077, %5075
  %5080 = fcmp fast ogt float %5079, 0.000000e+00
  %5081 = fcmp fast olt float %5079, 0.000000e+00
  %5082 = zext i1 %5080 to i32
  %5083 = zext i1 %5081 to i32
  %5084 = sub nsw i32 %5082, %5083
  %5085 = sitofp i32 %5084 to float
  %5086 = call float @dx.op.unary.f32(i32 6, float %5079)  ; FAbs(value)
  %5087 = fsub fast float %5086, %5078
  %5088 = call float @dx.op.binary.f32(i32 35, float %5087, float 0.000000e+00)  ; FMax(a,b)
  %5089 = fmul fast float %5085, %5088
  %5090 = fadd fast float %5074, %5089
  %5091 = call float @dx.op.unary.f32(i32 21, float %5090)  ; Exp(value)
  %5092 = fmul fast float %5091, 0x3F50624DE0000000
  %5093 = fcmp fast oeq float %4833, 0.000000e+00
  %5094 = fdiv fast float 0x400C5BF880000000, %4832
  %5095 = fmul fast float %5092, %5094
  %5096 = select i1 %5093, float 1.000000e+00, float %5095
  %5097 = call float @dx.op.binary.f32(i32 35, float %5096, float 1.000000e+00)  ; FMax(a,b)
  %5098 = fadd fast float %5097, -1.000000e+00
  %5099 = fmul fast float %5098, %5071
  %5100 = fadd fast float %5099, 1.000000e+00
  %5101 = call float @dx.op.unary.f32(i32 6, float %5100)  ; FAbs(value)
  %5102 = fmul fast float %5101, %5059
  %5103 = fmul fast float %5101, %5060
  %5104 = fmul fast float %5101, %5061
  %5105 = fmul fast float %4806, 9.843750e-01
  %5106 = fmul fast float %4787, 9.843750e-01
  %5107 = fadd fast float %5105, 7.812500e-03
  %5108 = fadd fast float %5106, 7.812500e-03
  %5109 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5107, float %5108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5110 = extractvalue %dx.types.ResRet.f32 %5109, 2
  %5111 = extractvalue %dx.types.ResRet.f32 %5109, 3
  %5112 = fmul fast float %5110, %4784
  %5113 = fmul fast float %5110, %4785
  %5114 = fmul fast float %5110, %4804
  %5115 = fadd fast float %5112, %5111
  %5116 = fadd fast float %5113, %5111
  %5117 = fadd fast float %5114, %5111
  %5118 = fcmp fast ogt float %4176, 0.000000e+00
  br i1 %5118, label %5119, label %5145

; <label>:5119                                    ; preds = %4980
  %5120 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4176, float %4806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5121 = extractvalue %dx.types.ResRet.f32 %5120, 0
  %5122 = extractvalue %dx.types.ResRet.f32 %5120, 1
  %5123 = extractvalue %dx.types.ResRet.f32 %5120, 2
  %5124 = fadd fast float %5121, -5.000000e-01
  %5125 = fadd fast float %5122, -5.000000e-01
  %5126 = fadd fast float %5123, -5.000000e-01
  %5127 = fsub fast float 1.000000e+00, %4784
  %5128 = fsub fast float 1.000000e+00, %4785
  %5129 = fsub fast float 1.000000e+00, %4804
  %5130 = fmul fast float %4784, 4.000000e+00
  %5131 = fmul fast float %5130, %5127
  %5132 = fmul fast float %5131, %5124
  %5133 = fmul fast float %4785, 4.000000e+00
  %5134 = fmul fast float %5133, %5128
  %5135 = fmul fast float %5134, %5125
  %5136 = fmul fast float %4804, 4.000000e+00
  %5137 = fmul fast float %5136, %5129
  %5138 = fmul fast float %5137, %5126
  %5139 = fadd fast float %5132, %5115
  %5140 = fadd fast float %5135, %5116
  %5141 = fadd fast float %5138, %5117
  %5142 = call float @dx.op.unary.f32(i32 7, float %5139)  ; Saturate(value)
  %5143 = call float @dx.op.unary.f32(i32 7, float %5140)  ; Saturate(value)
  %5144 = call float @dx.op.unary.f32(i32 7, float %5141)  ; Saturate(value)
  br label %5145

; <label>:5145                                    ; preds = %5119, %4980
  %5146 = phi float [ %5142, %5119 ], [ %5115, %4980 ]
  %5147 = phi float [ %5143, %5119 ], [ %5116, %4980 ]
  %5148 = phi float [ %5144, %5119 ], [ %5117, %4980 ]
  %5149 = call float @dx.op.binary.f32(i32 35, float %5147, float %5148)  ; FMax(a,b)
  %5150 = call float @dx.op.binary.f32(i32 35, float %5146, float %5149)  ; FMax(a,b)
  %5151 = fsub fast float 1.000000e+00, %5150
  %5152 = fmul fast float %5150, %4787
  %5153 = fadd fast float %5152, %4787
  %5154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5155 = extractvalue %dx.types.CBufRet.f32 %5154, 0
  %5156 = extractvalue %dx.types.CBufRet.f32 %5154, 1
  %5157 = extractvalue %dx.types.CBufRet.f32 %5154, 2
  %5158 = extractvalue %dx.types.CBufRet.f32 %5154, 3
  %5159 = fmul fast float %5153, %5155
  %5160 = fadd fast float %5159, %5156
  %5161 = call float @dx.op.unary.f32(i32 7, float %5160)  ; Saturate(value)
  %5162 = fmul fast float %5157, %5153
  %5163 = fadd fast float %5162, %5158
  %5164 = call float @dx.op.unary.f32(i32 7, float %5163)  ; Saturate(value)
  %5165 = fsub fast float 1.000000e+00, %4827
  %5166 = fadd fast float %5165, %5164
  %5167 = call float @dx.op.unary.f32(i32 7, float %5166)  ; Saturate(value)
  %5168 = fcmp fast olt float %5167, 1.000000e+00
  br i1 %5168, label %5169, label %6024

; <label>:5169                                    ; preds = %5145
  %5170 = fcmp fast olt float %5161, 1.000000e+00
  %5171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5172 = extractvalue %dx.types.CBufRet.f32 %5171, 0
  %5173 = fcmp fast ogt float %5172, 0.000000e+00
  %5174 = or i1 %5170, %5173
  %5175 = or i1 %5170, %5173
  %5176 = xor i1 %5175, true
  %5177 = zext i1 %5176 to i32
  br i1 %5174, label %5178, label %5421

; <label>:5178                                    ; preds = %5169
  %5179 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5180 = extractvalue %dx.types.CBufRet.f32 %5179, 0
  %5181 = extractvalue %dx.types.CBufRet.f32 %5179, 1
  %5182 = extractvalue %dx.types.CBufRet.f32 %5179, 2
  %5183 = extractvalue %dx.types.CBufRet.f32 %5179, 3
  %5184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5185 = extractvalue %dx.types.CBufRet.f32 %5184, 0
  %5186 = extractvalue %dx.types.CBufRet.f32 %5184, 1
  %5187 = extractvalue %dx.types.CBufRet.f32 %5184, 2
  %5188 = extractvalue %dx.types.CBufRet.f32 %5184, 3
  %5189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.f32 %5189, 0
  %5191 = extractvalue %dx.types.CBufRet.f32 %5189, 1
  %5192 = extractvalue %dx.types.CBufRet.f32 %5189, 2
  %5193 = extractvalue %dx.types.CBufRet.f32 %5189, 3
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 0
  %5196 = extractvalue %dx.types.CBufRet.f32 %5194, 1
  %5197 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %5198 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5199, 0
  %5201 = extractvalue %dx.types.CBufRet.f32 %5199, 1
  %5202 = extractvalue %dx.types.CBufRet.f32 %5199, 2
  %5203 = extractvalue %dx.types.CBufRet.f32 %5199, 3
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.CBufRet.f32 %5204, 1
  %5207 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %5208 = extractvalue %dx.types.CBufRet.f32 %5204, 3
  %5209 = call float @dx.op.dot3.f32(i32 55, float %5205, float %5206, float %5207, float %4812, float %4813, float %4814)  ; Dot3(ax,ay,az,bx,by,bz)
  %5210 = call float @dx.op.dot3.f32(i32 55, float %4781, float %4782, float %4783, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5211 = call float @dx.op.unary.f32(i32 6, float %5210)  ; FAbs(value)
  %5212 = fmul fast float %5211, 8.000000e+00
  %5213 = fadd fast float %5212, -6.000000e+00
  %5214 = call float @dx.op.unary.f32(i32 7, float %5213)  ; Saturate(value)
  %5215 = fmul fast float %5209, 8.000000e+00
  %5216 = fmul fast float %5215, %5172
  %5217 = call float @dx.op.unary.f32(i32 7, float %5216)  ; Saturate(value)
  %5218 = fcmp fast ogt float %5217, 0.000000e+00
  br i1 %5218, label %5219, label %5396, !dx.controlflow.hints !87

; <label>:5219                                    ; preds = %5178
  %5220 = extractvalue %dx.types.CBufRet.f32 %5171, 1
  %5221 = extractvalue %dx.types.CBufRet.f32 %5171, 2
  %5222 = fsub fast float %5220, %5221
  %5223 = fmul fast float %5222, %4787
  %5224 = fadd fast float %5223, %5221
  %5225 = fmul fast float %200, 2.000000e+00
  %5226 = fmul fast float %201, 2.000000e+00
  %5227 = fadd fast float %5225, -1.000000e+00
  %5228 = fadd fast float %5226, -1.000000e+00
  %5229 = fmul fast float %5224, %5227
  %5230 = fmul fast float %5224, %5228
  %5231 = fadd fast float %5229, %86
  %5232 = fadd fast float %5230, %87
  %5233 = fmul fast float %5231, %4790
  %5234 = fmul fast float %5232, %4791
  %5235 = fadd fast float %4787, 0xBFE3333340000000
  %5236 = fmul fast float %5235, 0x4004000020000000
  %5237 = fsub fast float 1.000000e+00, %5236
  %5238 = call float @dx.op.unary.f32(i32 7, float %5237)  ; Saturate(value)
  %5239 = fmul fast float %5238, 3.000000e+00
  %5240 = fadd fast float %5239, %200
  %5241 = call float @dx.op.unary.f32(i32 27, float %5240)  ; Round_ni(value)
  %5242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5233, float %5234, float %5241, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5243 = extractvalue %dx.types.ResRet.f32 %5242, 0
  %5244 = fcmp fast une float %5243, 0xFFF0000000000000
  %5245 = fcmp fast une float %5243, 0x7FF0000000000000
  %5246 = and i1 %5244, %5245
  %5247 = fcmp fast olt float %5243, 0.000000e+00
  %5248 = call float @dx.op.unary.f32(i32 6, float %5243)  ; FAbs(value)
  %5249 = fsub fast float 1.000000e+00, %5248
  %5250 = select i1 %5246, float 1.000000e+00, float 0.000000e+00
  %5251 = fmul fast float %5250, %5217
  %5252 = fcmp fast ogt float %5251, 0.000000e+00
  br i1 %5252, label %5253, label %5396, !dx.controlflow.hints !88

; <label>:5253                                    ; preds = %5219
  %5254 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5255 = extractvalue %dx.types.CBufRet.f32 %5254, 0
  %5256 = extractvalue %dx.types.CBufRet.f32 %5254, 1
  %5257 = extractvalue %dx.types.CBufRet.f32 %5254, 2
  %5258 = select i1 %5247, float 0.000000e+00, float %5255
  %5259 = select i1 %5247, float 0.000000e+00, float %5256
  %5260 = select i1 %5247, float 0.000000e+00, float %5257
  %5261 = select i1 %5247, float %5180, float %5195
  %5262 = select i1 %5247, float %5185, float %5200
  %5263 = select i1 %5247, float %5190, float %5205
  %5264 = select i1 %5247, float %5181, float %5196
  %5265 = select i1 %5247, float %5186, float %5201
  %5266 = select i1 %5247, float %5191, float %5206
  %5267 = select i1 %5247, float %5182, float %5197
  %5268 = select i1 %5247, float %5187, float %5202
  %5269 = select i1 %5247, float %5192, float %5207
  %5270 = select i1 %5247, float %5183, float %5198
  %5271 = select i1 %5247, float %5188, float %5203
  %5272 = select i1 %5247, float %5193, float %5208
  %5273 = fadd fast float %5258, %145
  %5274 = fadd fast float %5259, %146
  %5275 = fadd fast float %5260, %147
  %5276 = fmul fast float %5273, %5261
  %5277 = call float @dx.op.tertiary.f32(i32 46, float %5274, float %5264, float %5276)  ; FMad(a,b,c)
  %5278 = call float @dx.op.tertiary.f32(i32 46, float %5275, float %5267, float %5277)  ; FMad(a,b,c)
  %5279 = fadd fast float %5278, %5270
  %5280 = fmul fast float %5273, %5262
  %5281 = call float @dx.op.tertiary.f32(i32 46, float %5274, float %5265, float %5280)  ; FMad(a,b,c)
  %5282 = call float @dx.op.tertiary.f32(i32 46, float %5275, float %5268, float %5281)  ; FMad(a,b,c)
  %5283 = fadd fast float %5282, %5271
  %5284 = fmul fast float %5273, %5263
  %5285 = call float @dx.op.tertiary.f32(i32 46, float %5274, float %5266, float %5284)  ; FMad(a,b,c)
  %5286 = call float @dx.op.tertiary.f32(i32 46, float %5275, float %5269, float %5285)  ; FMad(a,b,c)
  %5287 = fadd fast float %5286, %5272
  %5288 = fdiv fast float 1.000000e+00, %5287
  %5289 = fmul fast float %5288, %5279
  %5290 = fmul fast float %5288, %5283
  %5291 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5292 = extractvalue %dx.types.CBufRet.f32 %5291, 0
  %5293 = extractvalue %dx.types.CBufRet.f32 %5291, 1
  %5294 = fmul fast float %5289, %5292
  %5295 = fmul fast float %5290, %5293
  %5296 = extractvalue %dx.types.CBufRet.f32 %5291, 2
  %5297 = extractvalue %dx.types.CBufRet.f32 %5291, 3
  %5298 = fadd fast float %5294, %5296
  %5299 = fadd fast float %5295, %5297
  %5300 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5301 = extractvalue %dx.types.CBufRet.f32 %5300, 3
  %5302 = fmul fast float %5301, %4812
  %5303 = fmul fast float %5301, %4813
  %5304 = fmul fast float %5301, %4814
  %5305 = fadd fast float %5302, %5273
  %5306 = fadd fast float %5303, %5274
  %5307 = fadd fast float %5304, %5275
  %5308 = fmul fast float %5305, %5261
  %5309 = call float @dx.op.tertiary.f32(i32 46, float %5306, float %5264, float %5308)  ; FMad(a,b,c)
  %5310 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5267, float %5309)  ; FMad(a,b,c)
  %5311 = fadd fast float %5310, %5270
  %5312 = fmul fast float %5305, %5262
  %5313 = call float @dx.op.tertiary.f32(i32 46, float %5306, float %5265, float %5312)  ; FMad(a,b,c)
  %5314 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5268, float %5313)  ; FMad(a,b,c)
  %5315 = fadd fast float %5314, %5271
  %5316 = fmul fast float %5305, %5263
  %5317 = call float @dx.op.tertiary.f32(i32 46, float %5306, float %5266, float %5316)  ; FMad(a,b,c)
  %5318 = call float @dx.op.tertiary.f32(i32 46, float %5307, float %5269, float %5317)  ; FMad(a,b,c)
  %5319 = fadd fast float %5318, %5272
  %5320 = fdiv fast float 1.000000e+00, %5319
  %5321 = fmul fast float %5320, %5311
  %5322 = fmul fast float %5320, %5315
  %5323 = fmul fast float %5298, 2.000000e+00
  %5324 = fadd fast float %5323, -1.000000e+00
  %5325 = call float @dx.op.unary.f32(i32 6, float %5324)  ; FAbs(value)
  %5326 = fmul fast float %5325, 5.000000e+00
  %5327 = fadd fast float %5326, -4.000000e+00
  %5328 = call float @dx.op.unary.f32(i32 7, float %5327)  ; Saturate(value)
  %5329 = fmul fast float %5328, %5214
  %5330 = fsub fast float %5289, %5321
  %5331 = fmul fast float %5292, %5330
  %5332 = fmul fast float %5329, %5331
  %5333 = fsub fast float %5321, %5289
  %5334 = fmul fast float %5292, %5333
  %5335 = fadd fast float %5334, %5332
  %5336 = fsub fast float %5322, %5290
  %5337 = fmul fast float %5293, %5336
  %5338 = fmul fast float %5335, %5249
  %5339 = fmul fast float %5337, %5249
  %5340 = fadd fast float %5338, %5298
  %5341 = fadd fast float %5339, %5299
  %5342 = fsub fast float %5320, %5288
  %5343 = fmul fast float %5342, %5249
  %5344 = fadd fast float %5343, %5288
  %5345 = fdiv fast float 1.000000e+00, %5344
  %5346 = fadd fast float %4787, -1.000000e+00
  %5347 = fsub fast float %5345, %5287
  %5348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5349 = extractvalue %dx.types.CBufRet.f32 %5348, 2
  %5350 = fmul fast float %5349, %5345
  %5351 = fdiv fast float 1.600000e+02, %5350
  %5352 = fmul fast float %5346, %5346
  %5353 = fmul fast float %5352, 0xBFB5B17960000000
  %5354 = fmul fast float %5353, %5347
  %5355 = fmul fast float %5354, %5351
  %5356 = call float @dx.op.unary.f32(i32 21, float %5355)  ; Exp(value)
  %5357 = fmul fast float %5356, 0x3FF04B2960000000
  %5358 = fsub fast float 0x3FF04B2960000000, %5357
  %5359 = call float @dx.op.unary.f32(i32 7, float %5358)  ; Saturate(value)
  %5360 = fmul fast float %5359, 4.000000e+00
  %5361 = fadd fast float %200, -5.000000e-01
  %5362 = fadd fast float %201, -5.000000e-01
  %5363 = fmul fast float %5359, 0x3FBEB851E0000000
  %5364 = call float @dx.op.unary.f32(i32 7, float %5363)  ; Saturate(value)
  %5365 = fmul fast float %5364, %5361
  %5366 = fmul fast float %5364, %5362
  %5367 = fadd fast float %5340, %5365
  %5368 = fadd fast float %5341, %5366
  %5369 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5367, float %5368, float undef, float undef, i32 0, i32 0, i32 undef, float %5360)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.ResRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.ResRet.f32 %5369, 2
  %5373 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5374 = extractvalue %dx.types.CBufRet.f32 %5373, 2
  %5375 = fmul fast float %5374, %5370
  %5376 = fmul fast float %5374, %5371
  %5377 = fmul fast float %5374, %5372
  %5378 = select i1 %187, float 0.000000e+00, float %5376
  %5379 = select i1 %187, float 0.000000e+00, float %5377
  %5380 = fmul fast float %5367, 2.000000e+00
  %5381 = fmul fast float %5368, 2.000000e+00
  %5382 = fadd fast float %5380, -1.000000e+00
  %5383 = fadd fast float %5381, -1.000000e+00
  %5384 = fmul fast float %5382, %5382
  %5385 = fsub fast float 1.000000e+00, %5384
  %5386 = call float @dx.op.unary.f32(i32 7, float %5385)  ; Saturate(value)
  %5387 = fsub fast float 1.000000e+00, %5386
  %5388 = fmul fast float %5387, %5214
  %5389 = fadd fast float %5388, %5386
  %5390 = fmul fast float %5383, %5383
  %5391 = fsub fast float 1.000000e+00, %5390
  %5392 = call float @dx.op.unary.f32(i32 7, float %5391)  ; Saturate(value)
  %5393 = fmul fast float %5389, %5392
  %5394 = call float @dx.op.unary.f32(i32 7, float %5393)  ; Saturate(value)
  %5395 = fmul fast float %5394, %5251
  br label %5396

; <label>:5396                                    ; preds = %5253, %5219, %5178
  %5397 = phi float [ %5375, %5253 ], [ 0.000000e+00, %5219 ], [ 0.000000e+00, %5178 ]
  %5398 = phi float [ %5378, %5253 ], [ 0.000000e+00, %5219 ], [ 0.000000e+00, %5178 ]
  %5399 = phi float [ %5379, %5253 ], [ 0.000000e+00, %5219 ], [ 0.000000e+00, %5178 ]
  %5400 = phi float [ %5395, %5253 ], [ 0.000000e+00, %5219 ], [ 0.000000e+00, %5178 ]
  %5401 = fcmp fast olt float %5400, 1.000000e+00
  %5402 = or i1 %5401, %5176
  %5403 = zext i1 %5402 to i32
  %5404 = fmul fast float %5400, %5161
  %5405 = fsub fast float %5400, %5404
  %5406 = fsub fast float 1.000000e+00, %5167
  %5407 = fmul fast float %5405, %5406
  %5408 = fadd fast float %5407, %5167
  %5409 = fsub fast float %5408, %5405
  %5410 = call float @dx.op.unary.f32(i32 7, float %5409)  ; Saturate(value)
  %5411 = fmul fast float %5410, %5063
  %5412 = fmul fast float %5410, %5064
  %5413 = fmul fast float %5410, %5065
  %5414 = fsub fast float -0.000000e+00, %5408
  %5415 = fmul fast float %5405, %5397
  %5416 = fmul fast float %5405, %5398
  %5417 = fmul fast float %5405, %5399
  %5418 = fadd fast float %5415, %5411
  %5419 = fadd fast float %5416, %5412
  %5420 = fadd fast float %5417, %5413
  br label %5421

; <label>:5421                                    ; preds = %5396, %5169
  %5422 = phi float [ %5167, %5169 ], [ %5414, %5396 ]
  %5423 = phi float [ %5063, %5169 ], [ %5418, %5396 ]
  %5424 = phi float [ %5064, %5169 ], [ %5419, %5396 ]
  %5425 = phi float [ %5065, %5169 ], [ %5420, %5396 ]
  %5426 = phi i32 [ %5177, %5169 ], [ %5403, %5396 ]
  %5427 = icmp eq i32 %5426, 0
  br i1 %5427, label %6024, label %5428

; <label>:5428                                    ; preds = %5421
  %5429 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5430 = extractvalue %dx.types.CBufRet.f32 %5429, 2
  %5431 = extractvalue %dx.types.CBufRet.f32 %5429, 3
  %5432 = fmul fast float %5430, %86
  %5433 = fmul fast float %5431, %87
  %5434 = fptoui float %5432 to i32
  %5435 = fptoui float %5433 to i32
  %5436 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5437 = extractvalue %dx.types.CBufRet.f32 %5436, 0
  %5438 = extractvalue %dx.types.CBufRet.f32 %5436, 2
  %5439 = extractvalue %dx.types.CBufRet.f32 %5436, 3
  %5440 = fadd fast float %81, -4.000000e+00
  %5441 = call float @dx.op.binary.f32(i32 35, float %5440, float 0.000000e+00)  ; FMax(a,b)
  %5442 = fadd fast float %5441, %5437
  %5443 = fmul fast float %5442, %5438
  %5444 = call float @dx.op.unary.f32(i32 23, float %5443)  ; Log(value)
  %5445 = fmul fast float %5444, %5439
  %5446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = extractvalue %dx.types.CBufRet.f32 %5446, 2
  %5448 = fmul fast float %5445, %5447
  %5449 = call float @dx.op.unary.f32(i32 7, float %5448)  ; Saturate(value)
  %5450 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5451 = extractvalue %dx.types.CBufRet.i32 %5450, 1
  %5452 = add i32 %5451, -1
  %5453 = uitofp i32 %5451 to float
  %5454 = fmul fast float %5453, %5449
  %5455 = fptoui float %5454 to i32
  %5456 = call i32 @dx.op.binary.i32(i32 40, i32 %5455, i32 %5452)  ; UMin(a,b)
  %5457 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5458 = extractvalue %dx.types.CBufRet.i32 %5457, 2
  %5459 = extractvalue %dx.types.CBufRet.i32 %5457, 3
  %5460 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5435, i32 %5458, i32 %5434)  ; UMad(a,b,c)
  %5461 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5456, i32 %5459, i32 %5460)  ; UMad(a,b,c)
  %5462 = call float @dx.op.binary.f32(i32 35, float %81, float 0.000000e+00)  ; FMax(a,b)
  %5463 = fptoui float %5462 to i32
  %5464 = lshr i32 %5463, 5
  %5465 = call i32 @dx.op.binary.i32(i32 40, i32 %5464, i32 8191)  ; UMin(a,b)
  %5466 = fcmp fast ogt float %4586, 0.000000e+00
  %5467 = fcmp fast ogt float %4814, 0.000000e+00
  %5468 = and i1 %5467, %5466
  br i1 %5468, label %5469, label %5498

; <label>:5469                                    ; preds = %5428
  %5470 = call float @dx.op.dot3.f32(i32 55, float %4812, float %4813, float %4814, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5471 = call float @dx.op.binary.f32(i32 35, float %5470, float -1.000000e+00)  ; FMax(a,b)
  %5472 = call float @dx.op.binary.f32(i32 36, float %5471, float 1.000000e+00)  ; FMin(a,b)
  %5473 = fmul fast float %5472, %5472
  %5474 = fsub fast float 1.000000e+00, %5473
  %5475 = fmul fast float %5474, 0x3FFC6E2300000000
  %5476 = fsub fast float 1.000000e+00, %5475
  %5477 = fcmp fast ogt float %5476, 0.000000e+00
  %5478 = call float @dx.op.unary.f32(i32 24, float %5476)  ; Sqrt(value)
  %5479 = fsub fast float 1.000000e+00, %5478
  %5480 = call float @dx.op.unary.f32(i32 23, float %5479)  ; Log(value)
  %5481 = fmul fast float %5480, 5.000000e+00
  %5482 = call float @dx.op.unary.f32(i32 21, float %5481)  ; Exp(value)
  %5483 = fmul fast float %5482, 0x3FEF591A60000000
  %5484 = fadd fast float %5483, 0x3F94DCB540000000
  %5485 = select i1 %5477, float %5484, float 1.000000e+00
  %5486 = fcmp fast oge float %5485, 1.000000e+00
  %5487 = fmul fast float %5470, 2.000000e+00
  %5488 = fadd fast float %5487, %4814
  %5489 = select i1 %5486, float %5488, float %4814
  %5490 = fsub fast float %5489, %4814
  %5491 = fmul fast float %5490, %4586
  %5492 = fadd fast float %5491, %4814
  %5493 = call float @dx.op.dot3.f32(i32 55, float %4812, float %4813, float %5492, float %4812, float %4813, float %5492)  ; Dot3(ax,ay,az,bx,by,bz)
  %5494 = call float @dx.op.unary.f32(i32 25, float %5493)  ; Rsqrt(value)
  %5495 = fmul fast float %5494, %4812
  %5496 = fmul fast float %5494, %4813
  %5497 = fmul fast float %5492, %5494
  br label %5498

; <label>:5498                                    ; preds = %5469, %5428
  %5499 = phi float [ %5495, %5469 ], [ %4812, %5428 ]
  %5500 = phi float [ %5496, %5469 ], [ %4813, %5428 ]
  %5501 = phi float [ %5497, %5469 ], [ %4814, %5428 ]
  %5502 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5503 = extractvalue %dx.types.CBufRet.i32 %5502, 2
  %5504 = add nsw i32 %5503, -1
  %5505 = call i32 @dx.op.binary.i32(i32 37, i32 %5504, i32 0)  ; IMax(a,b)
  %5506 = shl i32 %5465, 2
  %5507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5506, i32 undef)  ; BufferLoad(srv,index,wot)
  %5508 = extractvalue %dx.types.ResRet.i32 %5507, 0
  %5509 = lshr i32 %5508, 16
  %5510 = and i32 %5508, 65535
  %5511 = lshr i32 %5508, 21
  %5512 = lshr i32 %5510, 5
  %5513 = call i32 @dx.op.binary.i32(i32 40, i32 %5512, i32 %5505)  ; UMin(a,b)
  %5514 = icmp ugt i32 %5511, %5513
  br i1 %5514, label %5896, label %5515

; <label>:5515                                    ; preds = %5498
  br label %5516

; <label>:5516                                    ; preds = %5885, %5515
  %5517 = phi float [ %5886, %5885 ], [ 0.000000e+00, %5515 ]
  %5518 = phi float [ %5887, %5885 ], [ 0.000000e+00, %5515 ]
  %5519 = phi float [ %5888, %5885 ], [ 0.000000e+00, %5515 ]
  %5520 = phi float [ %5889, %5885 ], [ 1.000000e+00, %5515 ]
  %5521 = phi i32 [ %5893, %5885 ], [ %5511, %5515 ]
  %5522 = phi float [ %5890, %5885 ], [ 0.000000e+00, %5515 ]
  %5523 = phi float [ %5891, %5885 ], [ 0.000000e+00, %5515 ]
  %5524 = phi float [ %5892, %5885 ], [ 0.000000e+00, %5515 ]
  %5525 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5526 = extractvalue %dx.types.CBufRet.i32 %5525, 2
  %5527 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5461, i32 %5526, i32 %5521)  ; UMad(a,b,c)
  %5528 = shl i32 %5527, 2
  %5529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5528, i32 undef)  ; BufferLoad(srv,index,wot)
  %5530 = extractvalue %dx.types.ResRet.i32 %5529, 0
  %5531 = shl i32 %5521, 5
  %5532 = sub nsw i32 %5509, %5531
  %5533 = call i32 @dx.op.binary.i32(i32 37, i32 %5532, i32 0)  ; IMax(a,b)
  %5534 = call i32 @dx.op.binary.i32(i32 38, i32 %5533, i32 31)  ; IMin(a,b)
  %5535 = sub nsw i32 1, %5509
  %5536 = add nsw i32 %5535, %5510
  %5537 = call i32 @dx.op.binary.i32(i32 37, i32 %5536, i32 0)  ; IMax(a,b)
  %5538 = call i32 @dx.op.binary.i32(i32 38, i32 %5537, i32 32)  ; IMin(a,b)
  %5539 = and i32 %5538, 31
  %5540 = shl i32 -1, %5539
  %5541 = xor i32 %5540, -1
  %5542 = and i32 %5534, 31
  %5543 = shl i32 %5541, %5542
  %5544 = icmp eq i32 %5538, 32
  %5545 = select i1 %5544, i32 -1, i32 %5543
  %5546 = and i32 %5545, %5530
  %5547 = icmp eq i32 %5546, 0
  br i1 %5547, label %5885, label %5548

; <label>:5548                                    ; preds = %5516
  br label %5549

; <label>:5549                                    ; preds = %5659, %5548
  %5550 = phi float [ %5660, %5659 ], [ %5517, %5548 ]
  %5551 = phi float [ %5661, %5659 ], [ %5518, %5548 ]
  %5552 = phi float [ %5662, %5659 ], [ %5519, %5548 ]
  %5553 = phi float [ %5663, %5659 ], [ %5520, %5548 ]
  %5554 = phi i32 [ %5562, %5659 ], [ %5546, %5548 ]
  %5555 = phi float [ %5664, %5659 ], [ %5522, %5548 ]
  %5556 = phi float [ %5665, %5659 ], [ %5523, %5548 ]
  %5557 = phi float [ %5666, %5659 ], [ %5524, %5548 ]
  %5558 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5554)  ; FirstbitLo(value)
  %5559 = add i32 %5558, %5531
  %5560 = and i32 %5558, 31
  %5561 = shl i32 1, %5560
  %5562 = xor i32 %5561, %5554
  %5563 = mul i32 %5559, 72
  %5564 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5563, i32 undef)  ; BufferLoad(srv,index,wot)
  %5565 = extractvalue %dx.types.ResRet.f32 %5564, 0
  %5566 = extractvalue %dx.types.ResRet.f32 %5564, 1
  %5567 = extractvalue %dx.types.ResRet.f32 %5564, 2
  %5568 = add i32 %5563, 12
  %5569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5568, i32 undef)  ; BufferLoad(srv,index,wot)
  %5570 = extractvalue %dx.types.ResRet.i32 %5569, 0
  %5571 = add i32 %5563, 16
  %5572 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5571, i32 undef)  ; BufferLoad(srv,index,wot)
  %5573 = extractvalue %dx.types.ResRet.f32 %5572, 0
  %5574 = extractvalue %dx.types.ResRet.f32 %5572, 1
  %5575 = extractvalue %dx.types.ResRet.f32 %5572, 2
  %5576 = add i32 %5563, 28
  %5577 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5576, i32 undef)  ; BufferLoad(srv,index,wot)
  %5578 = extractvalue %dx.types.ResRet.f32 %5577, 0
  %5579 = add i32 %5563, 32
  %5580 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5579, i32 undef)  ; BufferLoad(srv,index,wot)
  %5581 = extractvalue %dx.types.ResRet.f32 %5580, 0
  %5582 = extractvalue %dx.types.ResRet.f32 %5580, 1
  %5583 = extractvalue %dx.types.ResRet.f32 %5580, 2
  %5584 = extractvalue %dx.types.ResRet.f32 %5580, 3
  %5585 = add i32 %5563, 48
  %5586 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5585, i32 undef)  ; BufferLoad(srv,index,wot)
  %5587 = extractvalue %dx.types.ResRet.f32 %5586, 0
  %5588 = extractvalue %dx.types.ResRet.f32 %5586, 1
  %5589 = add i32 %5563, 56
  %5590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5589, i32 undef)  ; BufferLoad(srv,index,wot)
  %5591 = extractvalue %dx.types.ResRet.f32 %5590, 0
  %5592 = extractvalue %dx.types.ResRet.f32 %5590, 1
  %5593 = add i32 %5563, 64
  %5594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5593, i32 undef)  ; BufferLoad(srv,index,wot)
  %5595 = extractvalue %dx.types.ResRet.f32 %5594, 0
  %5596 = extractvalue %dx.types.ResRet.f32 %5594, 1
  %5597 = mul i32 %5559, 60
  %5598 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5597, i32 undef)  ; BufferLoad(srv,index,wot)
  %5599 = extractvalue %dx.types.ResRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.ResRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.ResRet.f32 %5598, 2
  %5602 = add i32 %5597, 12
  %5603 = add i32 %5597, 48
  %5604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5603, i32 undef)  ; BufferLoad(srv,index,wot)
  %5605 = extractvalue %dx.types.ResRet.f32 %5604, 0
  %5606 = extractvalue %dx.types.ResRet.f32 %5604, 1
  %5607 = extractvalue %dx.types.ResRet.f32 %5604, 2
  %5608 = and i32 %5570, 32767
  %5609 = bitcast float %5565 to i32
  %5610 = icmp eq i32 %5609, -1
  %5611 = bitcast float %5566 to i32
  %5612 = and i32 %5570, 32768
  %5613 = icmp ne i32 %5612, 0
  %5614 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5615 = extractvalue %dx.types.CBufRet.f32 %5614, 0
  %5616 = extractvalue %dx.types.CBufRet.f32 %5614, 1
  %5617 = extractvalue %dx.types.CBufRet.f32 %5614, 2
  %5618 = fsub fast float %5599, %5615
  %5619 = fsub fast float %5600, %5616
  %5620 = fsub fast float %5601, %5617
  %5621 = fsub fast float %145, %5618
  %5622 = fsub fast float %146, %5619
  %5623 = fsub fast float %147, %5620
  %5624 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5602, i32 undef)  ; BufferLoad(srv,index,wot)
  %5625 = extractvalue %dx.types.ResRet.f32 %5624, 0
  %5626 = extractvalue %dx.types.ResRet.f32 %5624, 1
  %5627 = extractvalue %dx.types.ResRet.f32 %5624, 2
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5623, float %5625, float %5626, float %5627)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = add i32 %5597, 24
  %5630 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5629, i32 undef)  ; BufferLoad(srv,index,wot)
  %5631 = extractvalue %dx.types.ResRet.f32 %5630, 0
  %5632 = extractvalue %dx.types.ResRet.f32 %5630, 1
  %5633 = extractvalue %dx.types.ResRet.f32 %5630, 2
  %5634 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5623, float %5631, float %5632, float %5633)  ; Dot3(ax,ay,az,bx,by,bz)
  %5635 = add i32 %5597, 36
  %5636 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5635, i32 undef)  ; BufferLoad(srv,index,wot)
  %5637 = extractvalue %dx.types.ResRet.f32 %5636, 0
  %5638 = extractvalue %dx.types.ResRet.f32 %5636, 1
  %5639 = extractvalue %dx.types.ResRet.f32 %5636, 2
  %5640 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5623, float %5637, float %5638, float %5639)  ; Dot3(ax,ay,az,bx,by,bz)
  %5641 = call float @dx.op.unary.f32(i32 6, float %5628)  ; FAbs(value)
  %5642 = call float @dx.op.unary.f32(i32 6, float %5634)  ; FAbs(value)
  %5643 = call float @dx.op.unary.f32(i32 6, float %5640)  ; FAbs(value)
  %5644 = fsub fast float %5605, %5641
  %5645 = fsub fast float %5606, %5642
  %5646 = fsub fast float %5607, %5643
  %5647 = fmul fast float %5644, %5573
  %5648 = fmul fast float %5645, %5574
  %5649 = fmul fast float %5646, %5575
  %5650 = call float @dx.op.binary.f32(i32 36, float %5648, float %5649)  ; FMin(a,b)
  %5651 = call float @dx.op.binary.f32(i32 36, float %5647, float %5650)  ; FMin(a,b)
  %5652 = call float @dx.op.unary.f32(i32 7, float %5651)  ; Saturate(value)
  %5653 = call float @dx.op.binary.f32(i32 36, float %5553, float %5652)  ; FMin(a,b)
  %5654 = uitofp i1 %5613 to float
  %5655 = fadd fast float %4586, 1.000000e+00
  %5656 = fsub fast float %5655, %5654
  %5657 = fmul fast float %5653, %5656
  %5658 = fcmp fast ogt float %5657, 0.000000e+00
  br i1 %5658, label %5668, label %5659

; <label>:5659                                    ; preds = %5810, %5549
  %5660 = phi float [ %5874, %5810 ], [ %5550, %5549 ]
  %5661 = phi float [ %5875, %5810 ], [ %5551, %5549 ]
  %5662 = phi float [ %5876, %5810 ], [ %5552, %5549 ]
  %5663 = phi float [ %5883, %5810 ], [ %5553, %5549 ]
  %5664 = phi float [ %5880, %5810 ], [ %5555, %5549 ]
  %5665 = phi float [ %5881, %5810 ], [ %5556, %5549 ]
  %5666 = phi float [ %5882, %5810 ], [ %5557, %5549 ]
  %5667 = icmp eq i32 %5554, %5561
  br i1 %5667, label %5884, label %5549

; <label>:5668                                    ; preds = %5549
  br i1 %5610, label %5726, label %5669

; <label>:5669                                    ; preds = %5668
  %5670 = fsub fast float -0.000000e+00, %5625
  %5671 = fsub fast float -0.000000e+00, %5626
  %5672 = fsub fast float -0.000000e+00, %5627
  %5673 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5500, float %5501, float %5670, float %5671, float %5672)  ; Dot3(ax,ay,az,bx,by,bz)
  %5674 = fsub fast float -0.000000e+00, %5673
  %5675 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5623, float %5670, float %5671, float %5672)  ; Dot3(ax,ay,az,bx,by,bz)
  %5676 = fadd fast float %5675, %5588
  %5677 = fadd fast float %5587, %5675
  %5678 = fsub fast float -0.000000e+00, %5677
  %5679 = fcmp ogt float %5673, -0.000000e+00
  %5680 = select i1 %5679, float %5678, float %5676
  %5681 = call float @dx.op.unary.f32(i32 6, float %5674)  ; FAbs(value)
  %5682 = fdiv fast float 1.000000e+00, %5681
  %5683 = fmul fast float %5680, %5682
  %5684 = call float @dx.op.binary.f32(i32 35, float %5683, float 0.000000e+00)  ; FMax(a,b)
  %5685 = fsub fast float -0.000000e+00, %5631
  %5686 = fsub fast float -0.000000e+00, %5632
  %5687 = fsub fast float -0.000000e+00, %5633
  %5688 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5500, float %5501, float %5685, float %5686, float %5687)  ; Dot3(ax,ay,az,bx,by,bz)
  %5689 = fsub fast float -0.000000e+00, %5688
  %5690 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5623, float %5685, float %5686, float %5687)  ; Dot3(ax,ay,az,bx,by,bz)
  %5691 = fadd fast float %5690, %5592
  %5692 = fadd fast float %5591, %5690
  %5693 = fsub fast float -0.000000e+00, %5692
  %5694 = fcmp ogt float %5688, -0.000000e+00
  %5695 = select i1 %5694, float %5693, float %5691
  %5696 = call float @dx.op.unary.f32(i32 6, float %5689)  ; FAbs(value)
  %5697 = fdiv fast float 1.000000e+00, %5696
  %5698 = fmul fast float %5695, %5697
  %5699 = call float @dx.op.binary.f32(i32 35, float %5698, float 0.000000e+00)  ; FMax(a,b)
  %5700 = fsub fast float -0.000000e+00, %5637
  %5701 = fsub fast float -0.000000e+00, %5638
  %5702 = fsub fast float -0.000000e+00, %5639
  %5703 = call float @dx.op.dot3.f32(i32 55, float %5499, float %5500, float %5501, float %5700, float %5701, float %5702)  ; Dot3(ax,ay,az,bx,by,bz)
  %5704 = fsub fast float -0.000000e+00, %5703
  %5705 = call float @dx.op.dot3.f32(i32 55, float %5621, float %5622, float %5623, float %5700, float %5701, float %5702)  ; Dot3(ax,ay,az,bx,by,bz)
  %5706 = fadd fast float %5705, %5596
  %5707 = fadd fast float %5595, %5705
  %5708 = fsub fast float -0.000000e+00, %5707
  %5709 = fcmp ogt float %5703, -0.000000e+00
  %5710 = select i1 %5709, float %5708, float %5706
  %5711 = call float @dx.op.unary.f32(i32 6, float %5704)  ; FAbs(value)
  %5712 = fdiv fast float 1.000000e+00, %5711
  %5713 = fmul fast float %5710, %5712
  %5714 = call float @dx.op.binary.f32(i32 35, float %5713, float 0.000000e+00)  ; FMax(a,b)
  %5715 = call float @dx.op.binary.f32(i32 36, float %5699, float %5714)  ; FMin(a,b)
  %5716 = call float @dx.op.binary.f32(i32 36, float %5684, float %5715)  ; FMin(a,b)
  %5717 = fmul fast float %5716, %5499
  %5718 = fmul fast float %5716, %5500
  %5719 = fmul fast float %5716, %5501
  %5720 = fadd fast float %5717, %145
  %5721 = fadd fast float %5718, %146
  %5722 = fadd fast float %5719, %147
  %5723 = fsub fast float %5720, %5565
  %5724 = fsub fast float %5721, %5566
  %5725 = fsub fast float %5722, %5567
  br label %5733

; <label>:5726                                    ; preds = %5668
  %5727 = fmul fast float %5499, 8.096000e+03
  %5728 = fmul fast float %5500, 8.096000e+03
  %5729 = fmul fast float %5501, 8.096000e+03
  %5730 = fadd fast float %5727, %145
  %5731 = fadd fast float %5728, %146
  %5732 = fadd fast float %5729, %147
  br label %5733

; <label>:5733                                    ; preds = %5726, %5669
  %5734 = phi float [ %5499, %5726 ], [ %5723, %5669 ]
  %5735 = phi float [ %5500, %5726 ], [ %5724, %5669 ]
  %5736 = phi float [ %5501, %5726 ], [ %5725, %5669 ]
  %5737 = phi float [ %5730, %5726 ], [ %5720, %5669 ]
  %5738 = phi float [ %5731, %5726 ], [ %5721, %5669 ]
  %5739 = phi float [ %5732, %5726 ], [ %5722, %5669 ]
  %5740 = fcmp fast olt float %5584, 1.000000e+00
  br i1 %5740, label %5741, label %5772, !dx.controlflow.hints !89

; <label>:5741                                    ; preds = %5733
  %5742 = fmul fast float %5736, %5582
  %5743 = fmul fast float %5735, %5583
  %5744 = fsub fast float %5742, %5743
  %5745 = fmul fast float %5734, %5583
  %5746 = fmul fast float %5736, %5581
  %5747 = fsub fast float %5745, %5746
  %5748 = fmul fast float %5735, %5581
  %5749 = fmul fast float %5734, %5582
  %5750 = fsub fast float %5748, %5749
  %5751 = fmul fast float %5744, 2.000000e+00
  %5752 = fmul fast float %5747, 2.000000e+00
  %5753 = fmul fast float %5750, 2.000000e+00
  %5754 = fmul fast float %5751, %5584
  %5755 = fmul fast float %5752, %5584
  %5756 = fmul fast float %5753, %5584
  %5757 = fmul fast float %5753, %5582
  %5758 = fmul fast float %5752, %5583
  %5759 = fmul fast float %5751, %5583
  %5760 = fmul fast float %5753, %5581
  %5761 = fmul fast float %5752, %5581
  %5762 = fmul fast float %5751, %5582
  %5763 = fadd fast float %5757, %5734
  %5764 = fadd fast float %5763, %5754
  %5765 = fsub fast float %5764, %5758
  %5766 = fsub fast float %5735, %5760
  %5767 = fadd fast float %5766, %5755
  %5768 = fadd fast float %5767, %5759
  %5769 = fadd fast float %5756, %5736
  %5770 = fsub fast float %5769, %5762
  %5771 = fadd fast float %5770, %5761
  br label %5772

; <label>:5772                                    ; preds = %5741, %5733
  %5773 = phi float [ %5765, %5741 ], [ %5734, %5733 ]
  %5774 = phi float [ %5768, %5741 ], [ %5735, %5733 ]
  %5775 = phi float [ %5771, %5741 ], [ %5736, %5733 ]
  br i1 %5610, label %5807, label %5776

; <label>:5776                                    ; preds = %5772
  %5777 = fmul fast float %4787, 0x400187C840000000
  %5778 = fadd fast float %5777, 0xC00EFC2120000000
  %5779 = fmul fast float %5778, %4787
  %5780 = fadd fast float %5779, 0x3FE5D16340000000
  %5781 = fmul fast float %5780, %4787
  %5782 = fadd fast float %5781, 1.000000e+00
  %5783 = call float @dx.op.unary.f32(i32 7, float %5782)  ; Saturate(value)
  %5784 = fsub fast float %5737, %145
  %5785 = fsub fast float %5738, %146
  %5786 = fsub fast float %5739, %147
  %5787 = fsub fast float %5737, %5565
  %5788 = fsub fast float %5738, %5566
  %5789 = fsub fast float %5739, %5567
  %5790 = call float @dx.op.dot3.f32(i32 55, float %5784, float %5785, float %5786, float %5784, float %5785, float %5786)  ; Dot3(ax,ay,az,bx,by,bz)
  %5791 = call float @dx.op.dot3.f32(i32 55, float %5787, float %5788, float %5789, float %5787, float %5788, float %5789)  ; Dot3(ax,ay,az,bx,by,bz)
  %5792 = fadd fast float %5791, 0x3EE4F8B580000000
  %5793 = fdiv fast float %5790, %5792
  %5794 = bitcast float %5793 to i32
  %5795 = ashr i32 %5794, 1
  %5796 = add nsw i32 %5795, 532487669
  %5797 = bitcast i32 %5796 to float
  %5798 = fmul fast float %5797, %5783
  %5799 = call float @dx.op.unary.f32(i32 7, float %5798)  ; Saturate(value)
  %5800 = fmul fast float %5799, 0x4009981AE0000000
  %5801 = fsub fast float 0x40111BBD80000000, %5800
  %5802 = fmul fast float %5801, %5799
  %5803 = fadd fast float %5802, 0xC0009F6020000000
  %5804 = fmul fast float %5803, %5799
  %5805 = fadd fast float %5804, 1.000000e+00
  %5806 = call float @dx.op.unary.f32(i32 7, float %5805)  ; Saturate(value)
  br label %5810

; <label>:5807                                    ; preds = %5772
  %5808 = icmp ne i32 %5611, -1
  %5809 = zext i1 %5808 to i32
  br label %5810

; <label>:5810                                    ; preds = %5807, %5776
  %5811 = phi float [ %4787, %5807 ], [ %5806, %5776 ]
  %5812 = phi i32 [ %5809, %5807 ], [ 0, %5776 ]
  %5813 = fmul float %5811, 5.000000e+00
  %5814 = fsub float 5.000000e+00, %5813
  %5815 = icmp ne i32 %5812, 0
  %5816 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5817 = extractvalue %dx.types.CBufRet.f32 %5816, 3
  %5818 = fadd fast float %5817, %5814
  %5819 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5818)  ; FMax(a,b)
  %5820 = call float @dx.op.unary.f32(i32 6, float %5773)  ; FAbs(value)
  %5821 = call float @dx.op.unary.f32(i32 6, float %5774)  ; FAbs(value)
  %5822 = fadd fast float %5821, %5820
  %5823 = call float @dx.op.unary.f32(i32 6, float %5775)  ; FAbs(value)
  %5824 = fadd fast float %5822, %5823
  %5825 = fcmp fast oeq float %5824, 0.000000e+00
  %5826 = fdiv fast float 1.000000e+00, %5824
  %5827 = select i1 %5825, float 1.000000e+00, float %5826
  %5828 = fmul fast float %5827, %5773
  %5829 = fmul fast float %5827, %5774
  %5830 = call float @dx.op.unary.f32(i32 6, float %5829)  ; FAbs(value)
  %5831 = call float @dx.op.unary.f32(i32 6, float %5828)  ; FAbs(value)
  %5832 = fsub fast float 1.000000e+00, %5830
  %5833 = fsub fast float 1.000000e+00, %5831
  %5834 = fcmp fast oge float %5828, 0.000000e+00
  %5835 = fcmp fast oge float %5829, 0.000000e+00
  %5836 = select i1 %5834, float 1.000000e+00, float -1.000000e+00
  %5837 = select i1 %5835, float 1.000000e+00, float -1.000000e+00
  %5838 = fcmp fast ole float %5775, 0.000000e+00
  %5839 = fmul fast float %5836, %5832
  %5840 = fmul fast float %5837, %5833
  %5841 = select i1 %5838, float %5839, float %5828
  %5842 = select i1 %5838, float %5840, float %5829
  %5843 = fmul fast float %5841, 5.000000e-01
  %5844 = fmul fast float %5842, 5.000000e-01
  %5845 = fadd fast float %5843, 5.000000e-01
  %5846 = fadd fast float %5844, 5.000000e-01
  %5847 = uitofp i32 %5608 to float
  %5848 = call float @dx.op.binary.f32(i32 36, float %5819, float 3.000000e+00)  ; FMin(a,b)
  %5849 = fadd fast float %5848, 2.000000e+00
  %5850 = call float @dx.op.unary.f32(i32 21, float %5849)  ; Exp(value)
  %5851 = extractvalue %dx.types.CBufRet.f32 %5816, 1
  %5852 = fmul fast float %5851, %5850
  %5853 = fmul fast float %5852, 2.000000e+00
  %5854 = fsub fast float 1.000000e+00, %5853
  %5855 = fmul fast float %5845, %5854
  %5856 = fmul fast float %5846, %5854
  %5857 = fadd fast float %5855, %5852
  %5858 = fadd fast float %5856, %5852
  %5859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5857, float %5858, float %5847, float undef, i32 0, i32 0, i32 undef, float %5819)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5860 = extractvalue %dx.types.ResRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.ResRet.f32 %5859, 1
  %5862 = extractvalue %dx.types.ResRet.f32 %5859, 2
  %5863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5864 = extractvalue %dx.types.CBufRet.f32 %5863, 3
  %5865 = fmul fast float %5864, %5578
  %5866 = call float @dx.op.binary.f32(i32 36, float %4833, float %5865)  ; FMin(a,b)
  %5867 = select i1 %5815, float %5866, float %5865
  %5868 = fmul fast float %5860, %5657
  %5869 = fmul fast float %5868, %5867
  %5870 = fmul fast float %5861, %5657
  %5871 = fmul fast float %5870, %5867
  %5872 = fmul fast float %5862, %5657
  %5873 = fmul fast float %5872, %5867
  %5874 = fadd fast float %5869, %5550
  %5875 = fadd fast float %5871, %5551
  %5876 = fadd fast float %5873, %5552
  %5877 = fmul fast float %5737, %5657
  %5878 = fmul fast float %5738, %5657
  %5879 = fmul fast float %5739, %5657
  %5880 = fadd fast float %5877, %5555
  %5881 = fadd fast float %5878, %5556
  %5882 = fadd fast float %5879, %5557
  %5883 = fsub fast float %5553, %5657
  br label %5659

; <label>:5884                                    ; preds = %5659
  br label %5885

; <label>:5885                                    ; preds = %5884, %5516
  %5886 = phi float [ %5517, %5516 ], [ %5660, %5884 ]
  %5887 = phi float [ %5518, %5516 ], [ %5661, %5884 ]
  %5888 = phi float [ %5519, %5516 ], [ %5662, %5884 ]
  %5889 = phi float [ %5520, %5516 ], [ %5663, %5884 ]
  %5890 = phi float [ %5522, %5516 ], [ %5664, %5884 ]
  %5891 = phi float [ %5523, %5516 ], [ %5665, %5884 ]
  %5892 = phi float [ %5524, %5516 ], [ %5666, %5884 ]
  %5893 = add i32 %5521, 1
  %5894 = icmp ugt i32 %5893, %5513
  br i1 %5894, label %5895, label %5516, !llvm.loop !90

; <label>:5895                                    ; preds = %5885
  br label %5896

; <label>:5896                                    ; preds = %5895, %5498
  %5897 = phi float [ 0.000000e+00, %5498 ], [ %5886, %5895 ]
  %5898 = phi float [ 0.000000e+00, %5498 ], [ %5887, %5895 ]
  %5899 = phi float [ 0.000000e+00, %5498 ], [ %5888, %5895 ]
  %5900 = phi float [ 0.000000e+00, %5498 ], [ %5890, %5895 ]
  %5901 = phi float [ 0.000000e+00, %5498 ], [ %5891, %5895 ]
  %5902 = phi float [ 0.000000e+00, %5498 ], [ %5892, %5895 ]
  %5903 = call float @dx.op.dot3.f32(i32 55, float %5897, float %5898, float %5899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5904 = select i1 %187, float 0.000000e+00, float %5897
  %5905 = select i1 %187, float %5903, float %5898
  %5906 = select i1 %187, float 0.000000e+00, float %5899
  %5907 = fcmp fast olt float %5422, 0.000000e+00
  %5908 = call float @dx.op.unary.f32(i32 6, float %5422)  ; FAbs(value)
  %5909 = fmul fast float %5908, %5423
  %5910 = fmul fast float %5908, %5424
  %5911 = fmul fast float %5908, %5425
  %5912 = select i1 %5907, float %5423, float %5909
  %5913 = select i1 %5907, float %5424, float %5910
  %5914 = select i1 %5907, float %5425, float %5911
  %5915 = fsub fast float 1.000000e+00, %5908
  %5916 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  %5917 = fmul fast float %5916, %5904
  %5918 = fmul fast float %5916, %5905
  %5919 = fmul fast float %5916, %5906
  %5920 = fadd fast float %5912, %5917
  %5921 = fadd fast float %5913, %5918
  %5922 = fadd fast float %5914, %5919
  %5923 = fcmp fast une float %5172, 0.000000e+00
  br i1 %5923, label %6024, label %5924

; <label>:5924                                    ; preds = %5896
  %5925 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5926 = extractvalue %dx.types.CBufRet.f32 %5925, 0
  %5927 = extractvalue %dx.types.CBufRet.f32 %5925, 1
  %5928 = extractvalue %dx.types.CBufRet.f32 %5925, 2
  %5929 = extractvalue %dx.types.CBufRet.f32 %5925, 3
  %5930 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5931 = extractvalue %dx.types.CBufRet.f32 %5930, 0
  %5932 = extractvalue %dx.types.CBufRet.f32 %5930, 1
  %5933 = extractvalue %dx.types.CBufRet.f32 %5930, 2
  %5934 = extractvalue %dx.types.CBufRet.f32 %5930, 3
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.CBufRet.f32 %5935, 1
  %5938 = extractvalue %dx.types.CBufRet.f32 %5935, 2
  %5939 = extractvalue %dx.types.CBufRet.f32 %5935, 3
  %5940 = call float @dx.op.dot3.f32(i32 55, float %5936, float %5937, float %5938, float %4812, float %4813, float %4814)  ; Dot3(ax,ay,az,bx,by,bz)
  %5941 = call float @dx.op.dot3.f32(i32 55, float %5900, float %5901, float %5902, float %5936, float %5937, float %5938)  ; Dot3(ax,ay,az,bx,by,bz)
  %5942 = call float @dx.op.dot3.f32(i32 55, float %145, float %146, float %147, float %5936, float %5937, float %5938)  ; Dot3(ax,ay,az,bx,by,bz)
  %5943 = fadd fast float %4787, -1.000000e+00
  %5944 = fsub fast float %5941, %5942
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 2
  %5947 = fmul fast float %5946, %5941
  %5948 = fdiv fast float 1.600000e+02, %5947
  %5949 = fmul fast float %5943, %5943
  %5950 = fmul fast float %5949, 0xBFB5B17960000000
  %5951 = fmul fast float %5950, %5944
  %5952 = fmul fast float %5951, %5948
  %5953 = call float @dx.op.unary.f32(i32 21, float %5952)  ; Exp(value)
  %5954 = fmul fast float %5953, 0x3FF04B2960000000
  %5955 = fsub fast float 0x3FF04B2960000000, %5954
  %5956 = call float @dx.op.unary.f32(i32 7, float %5955)  ; Saturate(value)
  %5957 = fmul fast float %5956, 4.000000e+00
  %5958 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5959 = extractvalue %dx.types.CBufRet.f32 %5958, 0
  %5960 = extractvalue %dx.types.CBufRet.f32 %5958, 1
  %5961 = extractvalue %dx.types.CBufRet.f32 %5958, 2
  %5962 = fadd fast float %5959, %5900
  %5963 = fadd fast float %5960, %5901
  %5964 = fadd fast float %5961, %5902
  %5965 = fmul fast float %5962, %5926
  %5966 = call float @dx.op.tertiary.f32(i32 46, float %5963, float %5927, float %5965)  ; FMad(a,b,c)
  %5967 = call float @dx.op.tertiary.f32(i32 46, float %5964, float %5928, float %5966)  ; FMad(a,b,c)
  %5968 = fadd fast float %5967, %5929
  %5969 = fmul fast float %5962, %5931
  %5970 = call float @dx.op.tertiary.f32(i32 46, float %5963, float %5932, float %5969)  ; FMad(a,b,c)
  %5971 = call float @dx.op.tertiary.f32(i32 46, float %5964, float %5933, float %5970)  ; FMad(a,b,c)
  %5972 = fadd fast float %5971, %5934
  %5973 = fmul fast float %5962, %5936
  %5974 = call float @dx.op.tertiary.f32(i32 46, float %5963, float %5937, float %5973)  ; FMad(a,b,c)
  %5975 = call float @dx.op.tertiary.f32(i32 46, float %5964, float %5938, float %5974)  ; FMad(a,b,c)
  %5976 = fadd fast float %5975, %5939
  %5977 = fdiv fast float %5968, %5976
  %5978 = fdiv fast float %5972, %5976
  %5979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5980 = extractvalue %dx.types.CBufRet.f32 %5979, 0
  %5981 = extractvalue %dx.types.CBufRet.f32 %5979, 1
  %5982 = fmul fast float %5980, %5977
  %5983 = fmul fast float %5981, %5978
  %5984 = extractvalue %dx.types.CBufRet.f32 %5979, 2
  %5985 = extractvalue %dx.types.CBufRet.f32 %5979, 3
  %5986 = fadd fast float %5982, %5984
  %5987 = fadd fast float %5983, %5985
  %5988 = fmul fast float %5940, 8.000000e+00
  %5989 = call float @dx.op.unary.f32(i32 7, float %5988)  ; Saturate(value)
  %5990 = fmul fast float %5986, 2.000000e+00
  %5991 = fmul fast float %5987, 2.000000e+00
  %5992 = fadd fast float %5990, -1.000000e+00
  %5993 = fadd fast float %5991, -1.000000e+00
  %5994 = fmul fast float %5992, %5992
  %5995 = fsub fast float 1.000000e+00, %5994
  %5996 = call float @dx.op.unary.f32(i32 7, float %5995)  ; Saturate(value)
  %5997 = fmul fast float %5993, %5993
  %5998 = fsub fast float 1.000000e+00, %5997
  %5999 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6000 = fmul fast float %5172, %5996
  %6001 = fmul fast float %6000, %5999
  %6002 = call float @dx.op.unary.f32(i32 7, float %6001)  ; Saturate(value)
  %6003 = fmul fast float %6002, %5989
  %6004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5986, float %5987, float undef, float undef, i32 0, i32 0, i32 undef, float %5957)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6005 = extractvalue %dx.types.ResRet.f32 %6004, 0
  %6006 = extractvalue %dx.types.ResRet.f32 %6004, 1
  %6007 = extractvalue %dx.types.ResRet.f32 %6004, 2
  %6008 = select i1 %187, float 0.000000e+00, float %6006
  %6009 = select i1 %187, float 0.000000e+00, float %6007
  %6010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6011 = extractvalue %dx.types.CBufRet.f32 %6010, 2
  %6012 = fmul fast float %6011, %6005
  %6013 = fmul fast float %6008, %6011
  %6014 = fmul fast float %6009, %6011
  %6015 = fsub fast float %6012, %5904
  %6016 = fsub fast float %6013, %5905
  %6017 = fsub fast float %6014, %5906
  %6018 = fmul fast float %6015, %6003
  %6019 = fmul fast float %6016, %6003
  %6020 = fmul fast float %6017, %6003
  %6021 = fadd fast float %6018, %5904
  %6022 = fadd fast float %6019, %5905
  %6023 = fadd fast float %6020, %5906
  br label %6024

; <label>:6024                                    ; preds = %5924, %5896, %5421, %5145
  %6025 = phi float [ %5423, %5421 ], [ %6021, %5924 ], [ %5920, %5896 ], [ %5063, %5145 ]
  %6026 = phi float [ %5424, %5421 ], [ %6022, %5924 ], [ %5921, %5896 ], [ %5064, %5145 ]
  %6027 = phi float [ %5425, %5421 ], [ %6023, %5924 ], [ %5922, %5896 ], [ %5065, %5145 ]
  %6028 = fmul fast float %145, %145
  %6029 = fmul fast float %146, %146
  %6030 = fadd fast float %6029, %6028
  %6031 = fmul fast float %147, %147
  %6032 = fadd fast float %6030, %6031
  %6033 = call float @dx.op.unary.f32(i32 24, float %6032)  ; Sqrt(value)
  %6034 = fsub fast float %6033, %5067
  %6035 = fmul fast float %6034, %5069
  %6036 = call float @dx.op.unary.f32(i32 7, float %6035)  ; Saturate(value)
  %6037 = extractvalue %dx.types.CBufRet.f32 %5066, 0
  %6038 = extractvalue %dx.types.CBufRet.f32 %5066, 3
  %6039 = fmul fast float %6036, %48
  %6040 = fmul fast float %6039, %6037
  %6041 = fmul fast float %6039, %6038
  %6042 = fadd fast float %6041, 1.000000e+00
  %6043 = fmul fast float %5151, %5102
  %6044 = fmul fast float %6043, %6042
  %6045 = fmul fast float %5151, %5103
  %6046 = fmul fast float %6045, %6042
  %6047 = fmul fast float %5151, %5104
  %6048 = fmul fast float %6047, %6042
  %6049 = call float @dx.op.dot3.f32(i32 55, float %4778, float %4779, float %4780, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6050 = fcmp fast ogt float %6049, 0x3E7FF19E20000000
  %6051 = fdiv fast float 1.000000e+00, %6049
  %6052 = select i1 %6050, float %6051, float 0.000000e+00
  %6053 = fmul fast float %6052, %4778
  %6054 = fmul fast float %6052, %4779
  %6055 = fmul fast float %6052, %4780
  %6056 = fadd fast float %6053, -1.000000e+00
  %6057 = fadd fast float %6054, -1.000000e+00
  %6058 = fadd fast float %6055, -1.000000e+00
  %6059 = fmul fast float %6056, 5.000000e-01
  %6060 = fmul fast float %6057, 5.000000e-01
  %6061 = fmul fast float %6058, 5.000000e-01
  %6062 = fadd fast float %6059, 1.000000e+00
  %6063 = fadd fast float %6060, 1.000000e+00
  %6064 = fadd fast float %6061, 1.000000e+00
  %6065 = fadd fast float %6040, %4177
  %6066 = fmul fast float %6025, %5146
  %6067 = fmul fast float %6026, %5147
  %6068 = fmul fast float %6027, %5148
  %6069 = fsub fast float 1.000000e+00, %4806
  %6070 = bitcast float %6069 to i32
  %6071 = sitofp i32 %6070 to float
  %6072 = fmul fast float %6071, 5.000000e+00
  %6073 = fadd fast float %6072, 0xC1EFBF8940000000
  %6074 = fptosi float %6073 to i32
  %6075 = bitcast i32 %6074 to float
  %6076 = fmul fast float %6065, %6075
  %6077 = fmul fast float %6043, %6076
  %6078 = fmul fast float %6077, %6062
  %6079 = fmul fast float %6045, %6076
  %6080 = fmul fast float %6079, %6063
  %6081 = fmul fast float %6047, %6076
  %6082 = fmul fast float %6081, %6064
  %6083 = fmul fast float %6044, %4173
  %6084 = fmul fast float %6046, %4173
  %6085 = fmul fast float %6048, %4173
  %6086 = fadd fast float %6066, %4169
  %6087 = fadd fast float %6086, %6078
  %6088 = fmul fast float %6087, %4173
  %6089 = fadd fast float %6067, %4170
  %6090 = fadd fast float %6089, %6080
  %6091 = fmul fast float %6090, %4173
  %6092 = fadd fast float %6068, %4171
  %6093 = fadd fast float %6092, %6082
  %6094 = fmul fast float %6093, %4173
  %6095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6096 = extractvalue %dx.types.CBufRet.f32 %6095, 3
  %6097 = fcmp fast oeq float %6096, 0.000000e+00
  br i1 %6097, label %6316, label %6098

; <label>:6098                                    ; preds = %6024
  %6099 = extractvalue %dx.types.CBufRet.f32 %6095, 0
  %6100 = extractvalue %dx.types.CBufRet.f32 %6095, 1
  %6101 = extractvalue %dx.types.CBufRet.f32 %6095, 2
  %6102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6103 = extractvalue %dx.types.CBufRet.f32 %6102, 0
  %6104 = extractvalue %dx.types.CBufRet.f32 %6102, 1
  %6105 = extractvalue %dx.types.CBufRet.f32 %6102, 2
  %6106 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6107 = extractvalue %dx.types.CBufRet.f32 %6106, 0
  %6108 = extractvalue %dx.types.CBufRet.f32 %6106, 1
  %6109 = call float @dx.op.dot3.f32(i32 55, float %6103, float %6104, float %6105, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6110 = select i1 %187, float %6107, float %6103
  %6111 = select i1 %187, float %6109, float %6104
  %6112 = select i1 %187, float %6108, float %6105
  %6113 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6114 = extractvalue %dx.types.CBufRet.f32 %6113, 1
  %6115 = fcmp fast une float %6114, 0.000000e+00
  br i1 %6115, label %6116, label %6133

; <label>:6116                                    ; preds = %6098
  %6117 = fptoui float %86 to i32
  %6118 = fptoui float %87 to i32
  %6119 = lshr i32 %6117, 4
  %6120 = lshr i32 %6118, 4
  %6121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6122 = extractvalue %dx.types.CBufRet.f32 %6121, 0
  %6123 = fptoui float %6122 to i32
  %6124 = add i32 %6123, 15
  %6125 = lshr i32 %6124, 4
  %6126 = mul i32 %6125, %6120
  %6127 = add i32 %6126, %6119
  %6128 = shl i32 %6127, 3
  %6129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %6128, i32 undef)  ; BufferLoad(srv,index,wot)
  %6130 = extractvalue %dx.types.ResRet.i32 %6129, 0
  %6131 = and i32 %6130, -268435456
  %6132 = icmp eq i32 %6131, -1342177280
  br i1 %6132, label %6138, label %6133

; <label>:6133                                    ; preds = %6116, %6098
  %6134 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4792, float %4793, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6135 = extractvalue %dx.types.ResRet.f32 %6134, 0
  %6136 = extractvalue %dx.types.ResRet.f32 %6134, 1
  %6137 = extractvalue %dx.types.ResRet.f32 %6134, 2
  br label %6138

; <label>:6138                                    ; preds = %6133, %6116
  %6139 = phi float [ %6135, %6133 ], [ 0.000000e+00, %6116 ]
  %6140 = phi float [ %6136, %6133 ], [ 0.000000e+00, %6116 ]
  %6141 = phi float [ %6137, %6133 ], [ 0.000000e+00, %6116 ]
  %6142 = call float @dx.op.binary.f32(i32 36, float %6140, float %6141)  ; FMin(a,b)
  %6143 = call float @dx.op.binary.f32(i32 36, float %6139, float %6142)  ; FMin(a,b)
  %6144 = fcmp fast ogt float %6143, 0.000000e+00
  br i1 %6144, label %6145, label %6316, !dx.controlflow.hints !92

; <label>:6145                                    ; preds = %6138
  %6146 = fmul fast float %6139, %6110
  %6147 = fmul fast float %6140, %6111
  %6148 = fmul fast float %6141, %6112
  %6149 = fsub fast float %6099, %4777
  %6150 = fsub fast float %6100, %4776
  %6151 = fsub fast float %6101, %4775
  %6152 = call float @dx.op.dot3.f32(i32 55, float %6149, float %6150, float %6151, float %6149, float %6150, float %6151)  ; Dot3(ax,ay,az,bx,by,bz)
  %6153 = call float @dx.op.unary.f32(i32 25, float %6152)  ; Rsqrt(value)
  %6154 = fmul fast float %6153, %6149
  %6155 = fmul fast float %6153, %6150
  %6156 = fmul fast float %6153, %6151
  %6157 = call float @dx.op.dot3.f32(i32 55, float %6099, float %6100, float %6101, float %4781, float %4782, float %4783)  ; Dot3(ax,ay,az,bx,by,bz)
  %6158 = call float @dx.op.dot3.f32(i32 55, float %4774, float %4773, float %4772, float %6154, float %6155, float %6156)  ; Dot3(ax,ay,az,bx,by,bz)
  %6159 = call float @dx.op.unary.f32(i32 7, float %6157)  ; Saturate(value)
  %6160 = fmul fast float %6159, %6159
  %6161 = fmul fast float %6160, %4831
  %6162 = call float @dx.op.unary.f32(i32 7, float %6161)  ; Saturate(value)
  %6163 = fmul fast float %6162, %6159
  %6164 = call float @dx.op.dot3.f32(i32 55, float %4781, float %4782, float %4783, float %6154, float %6155, float %6156)  ; Dot3(ax,ay,az,bx,by,bz)
  %6165 = fmul fast float %6164, %6164
  %6166 = call float @dx.op.unary.f32(i32 6, float %6157)  ; FAbs(value)
  %6167 = fsub fast float 1.000000e+00, %4824
  %6168 = fmul fast float %4806, %4806
  %6169 = fmul fast float %6168, %6167
  %6170 = fadd fast float %6169, %4824
  %6171 = bitcast float %6170 to i32
  %6172 = ashr i32 %6171, 1
  %6173 = add nsw i32 %6172, 532487669
  %6174 = bitcast i32 %6173 to float
  %6175 = fadd fast float %6174, %4806
  %6176 = fmul fast float %4824, %6165
  %6177 = fsub fast float 1.000000e+00, %6165
  %6178 = fadd fast float %6177, %6176
  %6179 = fmul fast float %6166, %6166
  %6180 = fmul fast float %6179, %6167
  %6181 = fadd fast float %6180, %4824
  %6182 = bitcast float %6181 to i32
  %6183 = ashr i32 %6182, 1
  %6184 = add nsw i32 %6183, 532487669
  %6185 = bitcast i32 %6184 to float
  %6186 = fadd fast float %6185, %6166
  %6187 = fmul fast float %6178, %6178
  %6188 = fmul fast float %6187, %6175
  %6189 = fmul fast float %6188, %6186
  %6190 = fdiv fast float 0x3FF0A00000000000, %6189
  %6191 = fmul fast float %6190, %4824
  %6192 = call float @dx.op.unary.f32(i32 6, float %6158)  ; FAbs(value)
  %6193 = fsub fast float 1.000000e+00, %6192
  %6194 = bitcast float %6193 to i32
  %6195 = sitofp i32 %6194 to float
  %6196 = fmul fast float %6195, 5.000000e+00
  %6197 = fadd fast float %6196, 0xC1EFBF8940000000
  %6198 = fptosi float %6197 to i32
  %6199 = bitcast i32 %6198 to float
  %6200 = fsub fast float 1.000000e+00, %4784
  %6201 = fsub fast float 1.000000e+00, %4785
  %6202 = fsub fast float 1.000000e+00, %4804
  %6203 = fmul fast float %6199, %6200
  %6204 = fmul fast float %6199, %6201
  %6205 = fmul fast float %6199, %6202
  %6206 = fadd fast float %6203, %4784
  %6207 = fadd fast float %6204, %4785
  %6208 = fadd fast float %6205, %4804
  br i1 %5118, label %6209, label %6232

; <label>:6209                                    ; preds = %6145
  %6210 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4176, float %6192, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6211 = extractvalue %dx.types.ResRet.f32 %6210, 0
  %6212 = extractvalue %dx.types.ResRet.f32 %6210, 1
  %6213 = extractvalue %dx.types.ResRet.f32 %6210, 2
  %6214 = fadd fast float %6211, -5.000000e-01
  %6215 = fadd fast float %6212, -5.000000e-01
  %6216 = fadd fast float %6213, -5.000000e-01
  %6217 = fmul fast float %4784, 4.000000e+00
  %6218 = fmul fast float %6217, %6200
  %6219 = fmul fast float %6218, %6214
  %6220 = fmul fast float %4785, 4.000000e+00
  %6221 = fmul fast float %6220, %6201
  %6222 = fmul fast float %6221, %6215
  %6223 = fmul fast float %4804, 4.000000e+00
  %6224 = fmul fast float %6223, %6202
  %6225 = fmul fast float %6224, %6216
  %6226 = fadd fast float %6219, %6206
  %6227 = fadd fast float %6222, %6207
  %6228 = fadd fast float %6225, %6208
  %6229 = call float @dx.op.unary.f32(i32 7, float %6226)  ; Saturate(value)
  %6230 = call float @dx.op.unary.f32(i32 7, float %6227)  ; Saturate(value)
  %6231 = call float @dx.op.unary.f32(i32 7, float %6228)  ; Saturate(value)
  br label %6232

; <label>:6232                                    ; preds = %6209, %6145
  %6233 = phi float [ %6229, %6209 ], [ %6206, %6145 ]
  %6234 = phi float [ %6230, %6209 ], [ %6207, %6145 ]
  %6235 = phi float [ %6231, %6209 ], [ %6208, %6145 ]
  %6236 = fmul fast float %6157, 9.843750e-01
  %6237 = fadd fast float %6236, 7.812500e-03
  %6238 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6237, float %5108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6239 = extractvalue %dx.types.ResRet.f32 %6238, 2
  %6240 = extractvalue %dx.types.ResRet.f32 %6238, 3
  %6241 = fmul fast float %6239, %4784
  %6242 = fmul fast float %6239, %4785
  %6243 = fmul fast float %6239, %4804
  %6244 = fadd fast float %6241, %6240
  %6245 = fadd fast float %6242, %6240
  %6246 = fadd fast float %6243, %6240
  br i1 %5118, label %6247, label %6270

; <label>:6247                                    ; preds = %6232
  %6248 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4176, float %6157, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6249 = extractvalue %dx.types.ResRet.f32 %6248, 0
  %6250 = extractvalue %dx.types.ResRet.f32 %6248, 1
  %6251 = extractvalue %dx.types.ResRet.f32 %6248, 2
  %6252 = fadd fast float %6249, -5.000000e-01
  %6253 = fadd fast float %6250, -5.000000e-01
  %6254 = fadd fast float %6251, -5.000000e-01
  %6255 = fmul fast float %4784, 4.000000e+00
  %6256 = fmul fast float %6255, %6200
  %6257 = fmul fast float %6256, %6252
  %6258 = fmul fast float %4785, 4.000000e+00
  %6259 = fmul fast float %6258, %6201
  %6260 = fmul fast float %6259, %6253
  %6261 = fmul fast float %4804, 4.000000e+00
  %6262 = fmul fast float %6261, %6202
  %6263 = fmul fast float %6262, %6254
  %6264 = fadd fast float %6257, %6244
  %6265 = fadd fast float %6260, %6245
  %6266 = fadd fast float %6263, %6246
  %6267 = call float @dx.op.unary.f32(i32 7, float %6264)  ; Saturate(value)
  %6268 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6269 = call float @dx.op.unary.f32(i32 7, float %6266)  ; Saturate(value)
  br label %6270

; <label>:6270                                    ; preds = %6247, %6232
  %6271 = phi float [ %6267, %6247 ], [ %6244, %6232 ]
  %6272 = phi float [ %6268, %6247 ], [ %6245, %6232 ]
  %6273 = phi float [ %6269, %6247 ], [ %6246, %6232 ]
  %6274 = call float @dx.op.binary.f32(i32 35, float %6272, float %6273)  ; FMax(a,b)
  %6275 = call float @dx.op.binary.f32(i32 35, float %6271, float %6274)  ; FMax(a,b)
  %6276 = fsub fast float 1.000000e+00, %6275
  %6277 = fmul fast float %6233, %6191
  %6278 = fmul fast float %6234, %6191
  %6279 = fmul fast float %6235, %6191
  %6280 = fsub fast float 1.000000e+00, %6158
  %6281 = bitcast float %6280 to i32
  %6282 = sitofp i32 %6281 to float
  %6283 = fmul fast float %6282, 5.000000e+00
  %6284 = fadd fast float %6283, 0xC1EFBF8940000000
  %6285 = fptosi float %6284 to i32
  %6286 = bitcast i32 %6285 to float
  %6287 = fmul fast float %6286, %4177
  %6288 = fmul fast float %6276, %6287
  %6289 = fmul fast float %6288, %6062
  %6290 = fmul fast float %6288, %6063
  %6291 = fmul fast float %6288, %6064
  %6292 = fadd fast float %6289, %6277
  %6293 = fadd fast float %6290, %6278
  %6294 = fadd fast float %6291, %6279
  %6295 = fmul fast float %6163, %6146
  %6296 = fmul fast float %6295, %6276
  %6297 = fmul fast float %6163, %6147
  %6298 = fmul fast float %6297, %6276
  %6299 = fmul fast float %6163, %6148
  %6300 = fmul fast float %6299, %6276
  %6301 = fmul fast float %6295, %6292
  %6302 = fmul fast float %6297, %6293
  %6303 = fmul fast float %6299, %6294
  %6304 = fadd fast float %6296, %6044
  %6305 = fmul fast float %6304, %4173
  %6306 = fadd fast float %6298, %6046
  %6307 = fmul fast float %6306, %4173
  %6308 = fadd fast float %6300, %6048
  %6309 = fmul fast float %6308, %4173
  %6310 = fadd fast float %6301, %6087
  %6311 = fmul fast float %6310, %4173
  %6312 = fadd fast float %6302, %6090
  %6313 = fmul fast float %6312, %4173
  %6314 = fadd fast float %6303, %6093
  %6315 = fmul fast float %6314, %4173
  br label %6316

; <label>:6316                                    ; preds = %6270, %6138, %6024
  %6317 = phi float [ %6088, %6024 ], [ %6088, %6138 ], [ %6311, %6270 ]
  %6318 = phi float [ %6091, %6024 ], [ %6091, %6138 ], [ %6313, %6270 ]
  %6319 = phi float [ %6094, %6024 ], [ %6094, %6138 ], [ %6315, %6270 ]
  %6320 = phi float [ %6083, %6024 ], [ %6083, %6138 ], [ %6305, %6270 ]
  %6321 = phi float [ %6084, %6024 ], [ %6084, %6138 ], [ %6307, %6270 ]
  %6322 = phi float [ %6085, %6024 ], [ %6085, %6138 ], [ %6309, %6270 ]
  %6323 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6324 = extractvalue %dx.types.CBufRet.i32 %6323, 0
  %6325 = icmp eq i32 %6324, 0
  br i1 %6325, label %6756, label %6326

; <label>:6326                                    ; preds = %6316
  %6327 = fptoui float %86 to i32
  %6328 = fptoui float %87 to i32
  %6329 = lshr i32 %6327, 4
  %6330 = lshr i32 %6328, 4
  %6331 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6332 = extractvalue %dx.types.CBufRet.i32 %6331, 0
  %6333 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6330, i32 %6332, i32 %6329)  ; UMad(a,b,c)
  %6334 = add nsw i32 %6324, -1
  %6335 = call i32 @dx.op.binary.i32(i32 37, i32 %6334, i32 0)  ; IMax(a,b)
  %6336 = call float @dx.op.binary.f32(i32 35, float %81, float 0.000000e+00)  ; FMax(a,b)
  %6337 = fptoui float %6336 to i32
  %6338 = lshr i32 %6337, 5
  %6339 = call i32 @dx.op.binary.i32(i32 40, i32 %6338, i32 8191)  ; UMin(a,b)
  %6340 = shl i32 %6339, 2
  %6341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6340, i32 undef)  ; BufferLoad(srv,index,wot)
  %6342 = extractvalue %dx.types.ResRet.i32 %6341, 0
  %6343 = lshr i32 %6342, 16
  %6344 = and i32 %6342, 65535
  %6345 = lshr i32 %6342, 21
  %6346 = lshr i32 %6344, 5
  %6347 = call i32 @dx.op.binary.i32(i32 40, i32 %6346, i32 %6335)  ; UMin(a,b)
  %6348 = icmp ugt i32 %6345, %6347
  br i1 %6348, label %6756, label %6349

; <label>:6349                                    ; preds = %6326
  br label %6350

; <label>:6350                                    ; preds = %6746, %6349
  %6351 = phi i32 [ %6753, %6746 ], [ %6345, %6349 ]
  %6352 = phi float [ %6747, %6746 ], [ %6317, %6349 ]
  %6353 = phi float [ %6748, %6746 ], [ %6318, %6349 ]
  %6354 = phi float [ %6749, %6746 ], [ %6319, %6349 ]
  %6355 = phi float [ %6750, %6746 ], [ %6320, %6349 ]
  %6356 = phi float [ %6751, %6746 ], [ %6321, %6349 ]
  %6357 = phi float [ %6752, %6746 ], [ %6322, %6349 ]
  %6358 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6359 = extractvalue %dx.types.CBufRet.i32 %6358, 0
  %6360 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6333, i32 %6359, i32 %6351)  ; UMad(a,b,c)
  %6361 = shl i32 %6360, 2
  %6362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6361, i32 undef)  ; BufferLoad(srv,index,wot)
  %6363 = extractvalue %dx.types.ResRet.i32 %6362, 0
  %6364 = shl i32 %6351, 5
  %6365 = sub nsw i32 %6343, %6364
  %6366 = call i32 @dx.op.binary.i32(i32 37, i32 %6365, i32 0)  ; IMax(a,b)
  %6367 = call i32 @dx.op.binary.i32(i32 38, i32 %6366, i32 31)  ; IMin(a,b)
  %6368 = sub nsw i32 1, %6343
  %6369 = add nsw i32 %6368, %6344
  %6370 = call i32 @dx.op.binary.i32(i32 37, i32 %6369, i32 0)  ; IMax(a,b)
  %6371 = call i32 @dx.op.binary.i32(i32 38, i32 %6370, i32 32)  ; IMin(a,b)
  %6372 = and i32 %6371, 31
  %6373 = shl i32 -1, %6372
  %6374 = xor i32 %6373, -1
  %6375 = and i32 %6367, 31
  %6376 = shl i32 %6374, %6375
  %6377 = icmp eq i32 %6371, 32
  %6378 = select i1 %6377, i32 -1, i32 %6376
  %6379 = and i32 %6378, %6363
  %6380 = icmp eq i32 %6379, 0
  br i1 %6380, label %6746, label %6381

; <label>:6381                                    ; preds = %6350
  br label %6382

; <label>:6382                                    ; preds = %6462, %6381
  %6383 = phi i32 [ %6394, %6462 ], [ %6379, %6381 ]
  %6384 = phi float [ %6463, %6462 ], [ %6352, %6381 ]
  %6385 = phi float [ %6464, %6462 ], [ %6353, %6381 ]
  %6386 = phi float [ %6465, %6462 ], [ %6354, %6381 ]
  %6387 = phi float [ %6466, %6462 ], [ %6355, %6381 ]
  %6388 = phi float [ %6467, %6462 ], [ %6356, %6381 ]
  %6389 = phi float [ %6468, %6462 ], [ %6357, %6381 ]
  %6390 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6383)  ; FirstbitLo(value)
  %6391 = add i32 %6390, %6364
  %6392 = and i32 %6390, 31
  %6393 = shl i32 1, %6392
  %6394 = xor i32 %6393, %6383
  %6395 = mul i32 %6391, 112
  %6396 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6395, i32 undef)  ; BufferLoad(srv,index,wot)
  %6397 = extractvalue %dx.types.ResRet.f32 %6396, 0
  %6398 = extractvalue %dx.types.ResRet.f32 %6396, 1
  %6399 = extractvalue %dx.types.ResRet.f32 %6396, 2
  %6400 = or i32 %6395, 12
  %6401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6400, i32 undef)  ; BufferLoad(srv,index,wot)
  %6402 = extractvalue %dx.types.ResRet.f32 %6401, 0
  %6403 = add i32 %6395, 44
  %6404 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6403, i32 undef)  ; BufferLoad(srv,index,wot)
  %6405 = extractvalue %dx.types.ResRet.f32 %6404, 0
  %6406 = add i32 %6395, 48
  %6407 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6406, i32 undef)  ; BufferLoad(srv,index,wot)
  %6408 = extractvalue %dx.types.ResRet.f32 %6407, 0
  %6409 = extractvalue %dx.types.ResRet.f32 %6407, 1
  %6410 = extractvalue %dx.types.ResRet.f32 %6407, 2
  %6411 = add i32 %6395, 80
  %6412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6411, i32 undef)  ; BufferLoad(srv,index,wot)
  %6413 = extractvalue %dx.types.ResRet.f32 %6412, 1
  %6414 = extractvalue %dx.types.ResRet.f32 %6412, 2
  %6415 = call float @dx.op.dot3.f32(i32 55, float %6397, float %6398, float %6399, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6416 = select i1 %187, float %6413, float %6397
  %6417 = select i1 %187, float %6415, float %6398
  %6418 = select i1 %187, float %6414, float %6399
  %6419 = fsub fast float %6408, %145
  %6420 = fsub fast float %6409, %146
  %6421 = fsub fast float %6410, %147
  %6422 = call float @dx.op.dot3.f32(i32 55, float %6419, float %6420, float %6421, float %6419, float %6420, float %6421)  ; Dot3(ax,ay,az,bx,by,bz)
  %6423 = call float @dx.op.unary.f32(i32 24, float %6422)  ; Sqrt(value)
  %6424 = fdiv fast float 1.000000e+00, %6423
  %6425 = fmul fast float %6424, %6419
  %6426 = fmul fast float %6424, %6420
  %6427 = fmul fast float %6424, %6421
  %6428 = fadd fast float %6423, %6402
  %6429 = fdiv fast float 1.000000e+00, %6428
  %6430 = fmul float %6405, %6429
  %6431 = fmul float %6430, %6430
  %6432 = call float @dx.op.unary.f32(i32 7, float %6431)  ; Saturate(value)
  %6433 = and i32 %6393, %6379
  %6434 = icmp eq i32 %6433, 0
  br i1 %6434, label %6457, label %6435, !dx.controlflow.hints !93

; <label>:6435                                    ; preds = %6382
  %6436 = lshr i32 %6327, 5
  %6437 = lshr i32 %6328, 5
  %6438 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6436, i32 %6437, i32 %6391, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6439 = extractvalue %dx.types.ResRet.i32 %6438, 0
  %6440 = and i32 %6439, 3
  %6441 = icmp eq i32 %6440, 0
  %6442 = select i1 %6441, float 1.000000e+00, float 0.000000e+00
  %6443 = icmp eq i32 %6440, 3
  br i1 %6443, label %6444, label %6457

; <label>:6444                                    ; preds = %6435
  %6445 = lshr i32 %6439, 10
  %6446 = and i32 %6445, 8160
  %6447 = and i32 %6328, 31
  %6448 = or i32 %6446, %6447
  %6449 = lshr i32 %6439, 1
  %6450 = and i32 %6449, 16352
  %6451 = and i32 %6327, 31
  %6452 = or i32 %6450, %6451
  %6453 = lshr i32 %6439, 23
  %6454 = and i32 %6453, 255
  %6455 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6452, i32 %6448, i32 %6454, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6456 = extractvalue %dx.types.ResRet.f32 %6455, 0
  br label %6457

; <label>:6457                                    ; preds = %6444, %6435, %6382
  %6458 = phi float [ %6456, %6444 ], [ %6442, %6435 ], [ 0.000000e+00, %6382 ]
  %6459 = call float @dx.op.binary.f32(i32 36, float %6458, float %6458)  ; FMin(a,b)
  %6460 = call float @dx.op.binary.f32(i32 36, float %6458, float %6459)  ; FMin(a,b)
  %6461 = fcmp fast ogt float %6460, 0.000000e+00
  br i1 %6461, label %6470, label %6462, !dx.controlflow.hints !94

; <label>:6462                                    ; preds = %6702, %6457
  %6463 = phi float [ %6384, %6457 ], [ %6742, %6702 ]
  %6464 = phi float [ %6385, %6457 ], [ %6743, %6702 ]
  %6465 = phi float [ %6386, %6457 ], [ %6744, %6702 ]
  %6466 = phi float [ %6387, %6457 ], [ %6736, %6702 ]
  %6467 = phi float [ %6388, %6457 ], [ %6737, %6702 ]
  %6468 = phi float [ %6389, %6457 ], [ %6738, %6702 ]
  %6469 = icmp eq i32 %6383, %6393
  br i1 %6469, label %6745, label %6382

; <label>:6470                                    ; preds = %6457
  %6471 = fmul fast float %6458, %6416
  %6472 = fmul fast float %6458, %6417
  %6473 = fmul fast float %6458, %6418
  %6474 = fsub fast float %6410, %4577
  %6475 = fcmp fast ogt float %6474, 0.000000e+00
  %6476 = fsub fast float %147, %4577
  %6477 = fcmp fast ogt float %6476, 0.000000e+00
  %6478 = xor i1 %6477, %6475
  %6479 = fsub fast float %4577, %6410
  %6480 = fmul fast float %6479, 2.000000e+00
  %6481 = fadd fast float %6480, %6410
  %6482 = select i1 %6478, float %6410, float %6481
  %6483 = fsub fast float %6482, %147
  %6484 = call float @dx.op.dot3.f32(i32 55, float %6419, float %6420, float %6483, float %6419, float %6420, float %6483)  ; Dot3(ax,ay,az,bx,by,bz)
  %6485 = call float @dx.op.unary.f32(i32 25, float %6484)  ; Rsqrt(value)
  %6486 = fmul fast float %6485, %6419
  %6487 = fmul fast float %6485, %6420
  %6488 = fmul fast float %6485, %6483
  %6489 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4585)  ; Dot3(ax,ay,az,bx,by,bz)
  %6490 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6486, float %6487, float %6488)  ; Dot3(ax,ay,az,bx,by,bz)
  %6491 = fdiv fast float 1.000000e+00, %6490
  %6492 = fmul fast float %6491, %6489
  %6493 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6476, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6494 = fcmp fast ogt float %6493, 0.000000e+00
  %6495 = fcmp fast olt float %6493, 0.000000e+00
  %6496 = zext i1 %6494 to i32
  %6497 = zext i1 %6495 to i32
  %6498 = sub nsw i32 %6496, %6497
  %6499 = sitofp i32 %6498 to float
  %6500 = fsub fast float %6482, %4577
  %6501 = call float @dx.op.dot3.f32(i32 55, float %6419, float %6420, float %6500, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6502 = fcmp fast ogt float %6501, 0.000000e+00
  %6503 = fcmp fast olt float %6501, 0.000000e+00
  %6504 = zext i1 %6502 to i32
  %6505 = zext i1 %6503 to i32
  %6506 = sub nsw i32 %6504, %6505
  %6507 = sitofp i32 %6506 to float
  %6508 = fcmp fast une float %6499, %6507
  br i1 %6508, label %6509, label %6519

; <label>:6509                                    ; preds = %6470
  %6510 = fmul fast float %6492, %6488
  %6511 = fmul fast float %6492, %6487
  %6512 = fmul fast float %6492, %6486
  %6513 = fmul fast float %6512, %6512
  %6514 = fmul fast float %6511, %6511
  %6515 = fadd fast float %6513, %6514
  %6516 = fmul fast float %6510, %6510
  %6517 = fadd fast float %6515, %6516
  %6518 = call float @dx.op.unary.f32(i32 24, float %6517)  ; Sqrt(value)
  br label %6531

; <label>:6519                                    ; preds = %6470
  %6520 = icmp slt i32 %6498, 0
  br i1 %6520, label %6521, label %6531

; <label>:6521                                    ; preds = %6519
  %6522 = fsub fast float %145, %6408
  %6523 = fsub fast float %146, %6409
  %6524 = fsub fast float %147, %6482
  %6525 = fmul fast float %6522, %6522
  %6526 = fmul fast float %6523, %6523
  %6527 = fadd fast float %6525, %6526
  %6528 = fmul fast float %6524, %6524
  %6529 = fadd fast float %6527, %6528
  %6530 = call float @dx.op.unary.f32(i32 24, float %6529)  ; Sqrt(value)
  br label %6531

; <label>:6531                                    ; preds = %6521, %6519, %6509
  %6532 = phi float [ %6518, %6509 ], [ %6530, %6521 ], [ 0.000000e+00, %6519 ]
  %6533 = and i1 %6477, %6475
  %6534 = fsub fast float -0.000000e+00, %6532
  %6535 = select i1 %6533, float -0.000000e+00, float %6534
  %6536 = fmul fast float %4578, 0x3FF7154760000000
  %6537 = fmul fast float %6536, %6535
  %6538 = fmul fast float %4579, 0x3FF7154760000000
  %6539 = fmul fast float %6538, %6535
  %6540 = fmul fast float %4580, 0x3FF7154760000000
  %6541 = fmul fast float %6540, %6535
  %6542 = call float @dx.op.unary.f32(i32 21, float %6537)  ; Exp(value)
  %6543 = call float @dx.op.unary.f32(i32 21, float %6539)  ; Exp(value)
  %6544 = call float @dx.op.unary.f32(i32 21, float %6541)  ; Exp(value)
  %6545 = call float @dx.op.unary.f32(i32 7, float %6542)  ; Saturate(value)
  %6546 = call float @dx.op.unary.f32(i32 7, float %6543)  ; Saturate(value)
  %6547 = call float @dx.op.unary.f32(i32 7, float %6544)  ; Saturate(value)
  %6548 = fmul fast float %6471, %6545
  %6549 = fmul fast float %6472, %6546
  %6550 = fmul fast float %6473, %6547
  %6551 = fsub fast float %6425, %4777
  %6552 = fsub fast float %6426, %4776
  %6553 = fsub fast float %6427, %4775
  %6554 = call float @dx.op.dot3.f32(i32 55, float %6551, float %6552, float %6553, float %6551, float %6552, float %6553)  ; Dot3(ax,ay,az,bx,by,bz)
  %6555 = call float @dx.op.unary.f32(i32 25, float %6554)  ; Rsqrt(value)
  %6556 = fmul fast float %6555, %6551
  %6557 = fmul fast float %6555, %6552
  %6558 = fmul fast float %6555, %6553
  %6559 = call float @dx.op.dot3.f32(i32 55, float %6425, float %6426, float %6427, float %4781, float %4782, float %4783)  ; Dot3(ax,ay,az,bx,by,bz)
  %6560 = call float @dx.op.dot3.f32(i32 55, float %4774, float %4773, float %4772, float %6556, float %6557, float %6558)  ; Dot3(ax,ay,az,bx,by,bz)
  %6561 = call float @dx.op.unary.f32(i32 7, float %6559)  ; Saturate(value)
  %6562 = fmul fast float %6561, %6432
  %6563 = fmul fast float %6561, %6561
  %6564 = fmul fast float %6563, %4831
  %6565 = call float @dx.op.unary.f32(i32 7, float %6564)  ; Saturate(value)
  %6566 = fmul fast float %6562, %6565
  %6567 = bitcast float %6422 to i32
  %6568 = ashr i32 %6567, 1
  %6569 = sub nsw i32 1597463007, %6568
  %6570 = bitcast i32 %6569 to float
  %6571 = fmul fast float %6570, %6419
  %6572 = fmul fast float %6570, %6420
  %6573 = fmul fast float %6570, %6421
  %6574 = fsub fast float %6571, %4777
  %6575 = fsub fast float %6572, %4776
  %6576 = fsub fast float %6573, %4775
  %6577 = call float @dx.op.dot3.f32(i32 55, float %6574, float %6575, float %6576, float %6574, float %6575, float %6576)  ; Dot3(ax,ay,az,bx,by,bz)
  %6578 = call float @dx.op.unary.f32(i32 25, float %6577)  ; Rsqrt(value)
  %6579 = fmul fast float %6574, %6578
  %6580 = fmul fast float %6575, %6578
  %6581 = fmul fast float %6576, %6578
  %6582 = call float @dx.op.dot3.f32(i32 55, float %4781, float %4782, float %4783, float %6579, float %6580, float %6581)  ; Dot3(ax,ay,az,bx,by,bz)
  %6583 = fmul fast float %6582, %6582
  %6584 = call float @dx.op.unary.f32(i32 6, float %6559)  ; FAbs(value)
  %6585 = fsub fast float 1.000000e+00, %4824
  %6586 = fmul fast float %4806, %4806
  %6587 = fmul fast float %6586, %6585
  %6588 = fadd fast float %6587, %4824
  %6589 = bitcast float %6588 to i32
  %6590 = ashr i32 %6589, 1
  %6591 = add nsw i32 %6590, 532487669
  %6592 = bitcast i32 %6591 to float
  %6593 = fadd fast float %6592, %4806
  %6594 = fmul fast float %4824, %6583
  %6595 = fsub fast float 1.000000e+00, %6583
  %6596 = fadd fast float %6595, %6594
  %6597 = fmul fast float %6584, %6584
  %6598 = fmul fast float %6597, %6585
  %6599 = fadd fast float %6598, %4824
  %6600 = bitcast float %6599 to i32
  %6601 = ashr i32 %6600, 1
  %6602 = add nsw i32 %6601, 532487669
  %6603 = bitcast i32 %6602 to float
  %6604 = fadd fast float %6603, %6584
  %6605 = fmul fast float %6596, %6596
  %6606 = fmul fast float %6605, %6593
  %6607 = fmul fast float %6606, %6604
  %6608 = fdiv fast float 1.000000e+00, %6607
  %6609 = bitcast float %4824 to i32
  %6610 = sitofp i32 %6609 to float
  %6611 = fmul fast float %6610, 0x3FE7F73180000000
  %6612 = fadd fast float %6611, 0x41AFE27C40000000
  %6613 = fptosi float %6612 to i32
  %6614 = bitcast i32 %6613 to float
  %6615 = fmul fast float %6405, 0x3FD80E9D60000000
  %6616 = fmul fast float %6615, %6570
  %6617 = fadd fast float %6614, %6616
  %6618 = bitcast float %6617 to i32
  %6619 = sub nsw i32 2129859010, %6618
  %6620 = bitcast i32 %6619 to float
  %6621 = fmul fast float %4824, %6608
  %6622 = fmul fast float %6621, %6614
  %6623 = fmul fast float %6622, %6620
  %6624 = call float @dx.op.unary.f32(i32 6, float %6560)  ; FAbs(value)
  %6625 = fsub fast float 1.000000e+00, %6624
  %6626 = bitcast float %6625 to i32
  %6627 = sitofp i32 %6626 to float
  %6628 = fmul fast float %6627, 5.000000e+00
  %6629 = fadd fast float %6628, 0xC1EFBF8940000000
  %6630 = fptosi float %6629 to i32
  %6631 = bitcast i32 %6630 to float
  %6632 = fsub fast float 1.000000e+00, %4784
  %6633 = fsub fast float 1.000000e+00, %4785
  %6634 = fsub fast float 1.000000e+00, %4804
  %6635 = fmul fast float %6631, %6632
  %6636 = fmul fast float %6631, %6633
  %6637 = fmul fast float %6631, %6634
  %6638 = fadd fast float %6635, %4784
  %6639 = fadd fast float %6636, %4785
  %6640 = fadd fast float %6637, %4804
  br i1 %5118, label %6641, label %6664

; <label>:6641                                    ; preds = %6531
  %6642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4176, float %6624, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6643 = extractvalue %dx.types.ResRet.f32 %6642, 0
  %6644 = extractvalue %dx.types.ResRet.f32 %6642, 1
  %6645 = extractvalue %dx.types.ResRet.f32 %6642, 2
  %6646 = fadd fast float %6643, -5.000000e-01
  %6647 = fadd fast float %6644, -5.000000e-01
  %6648 = fadd fast float %6645, -5.000000e-01
  %6649 = fmul fast float %4784, 4.000000e+00
  %6650 = fmul fast float %6649, %6632
  %6651 = fmul fast float %6650, %6646
  %6652 = fmul fast float %4785, 4.000000e+00
  %6653 = fmul fast float %6652, %6633
  %6654 = fmul fast float %6653, %6647
  %6655 = fmul fast float %4804, 4.000000e+00
  %6656 = fmul fast float %6655, %6634
  %6657 = fmul fast float %6656, %6648
  %6658 = fadd fast float %6651, %6638
  %6659 = fadd fast float %6654, %6639
  %6660 = fadd fast float %6657, %6640
  %6661 = call float @dx.op.unary.f32(i32 7, float %6658)  ; Saturate(value)
  %6662 = call float @dx.op.unary.f32(i32 7, float %6659)  ; Saturate(value)
  %6663 = call float @dx.op.unary.f32(i32 7, float %6660)  ; Saturate(value)
  br label %6664

; <label>:6664                                    ; preds = %6641, %6531
  %6665 = phi float [ %6661, %6641 ], [ %6638, %6531 ]
  %6666 = phi float [ %6662, %6641 ], [ %6639, %6531 ]
  %6667 = phi float [ %6663, %6641 ], [ %6640, %6531 ]
  %6668 = fmul fast float %6559, 9.843750e-01
  %6669 = fadd fast float %6668, 7.812500e-03
  %6670 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6669, float %5108, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6671 = extractvalue %dx.types.ResRet.f32 %6670, 2
  %6672 = extractvalue %dx.types.ResRet.f32 %6670, 3
  %6673 = fmul fast float %6671, %4784
  %6674 = fmul fast float %6671, %4785
  %6675 = fmul fast float %6671, %4804
  %6676 = fadd fast float %6673, %6672
  %6677 = fadd fast float %6674, %6672
  %6678 = fadd fast float %6675, %6672
  br i1 %5118, label %6679, label %6702

; <label>:6679                                    ; preds = %6664
  %6680 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4176, float %6559, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6681 = extractvalue %dx.types.ResRet.f32 %6680, 0
  %6682 = extractvalue %dx.types.ResRet.f32 %6680, 1
  %6683 = extractvalue %dx.types.ResRet.f32 %6680, 2
  %6684 = fadd fast float %6681, -5.000000e-01
  %6685 = fadd fast float %6682, -5.000000e-01
  %6686 = fadd fast float %6683, -5.000000e-01
  %6687 = fmul fast float %4784, 4.000000e+00
  %6688 = fmul fast float %6687, %6632
  %6689 = fmul fast float %6688, %6684
  %6690 = fmul fast float %4785, 4.000000e+00
  %6691 = fmul fast float %6690, %6633
  %6692 = fmul fast float %6691, %6685
  %6693 = fmul fast float %4804, 4.000000e+00
  %6694 = fmul fast float %6693, %6634
  %6695 = fmul fast float %6694, %6686
  %6696 = fadd fast float %6689, %6676
  %6697 = fadd fast float %6692, %6677
  %6698 = fadd fast float %6695, %6678
  %6699 = call float @dx.op.unary.f32(i32 7, float %6696)  ; Saturate(value)
  %6700 = call float @dx.op.unary.f32(i32 7, float %6697)  ; Saturate(value)
  %6701 = call float @dx.op.unary.f32(i32 7, float %6698)  ; Saturate(value)
  br label %6702

; <label>:6702                                    ; preds = %6679, %6664
  %6703 = phi float [ %6699, %6679 ], [ %6676, %6664 ]
  %6704 = phi float [ %6700, %6679 ], [ %6677, %6664 ]
  %6705 = phi float [ %6701, %6679 ], [ %6678, %6664 ]
  %6706 = call float @dx.op.binary.f32(i32 35, float %6704, float %6705)  ; FMax(a,b)
  %6707 = call float @dx.op.binary.f32(i32 35, float %6703, float %6706)  ; FMax(a,b)
  %6708 = fsub fast float 1.000000e+00, %6707
  %6709 = fmul fast float %6665, %6623
  %6710 = fmul fast float %6666, %6623
  %6711 = fmul fast float %6667, %6623
  %6712 = fsub fast float 1.000000e+00, %6560
  %6713 = bitcast float %6712 to i32
  %6714 = sitofp i32 %6713 to float
  %6715 = fmul fast float %6714, 5.000000e+00
  %6716 = fadd fast float %6715, 0xC1EFBF8940000000
  %6717 = fptosi float %6716 to i32
  %6718 = bitcast i32 %6717 to float
  %6719 = fmul fast float %6718, %4177
  %6720 = fmul fast float %6708, %6719
  %6721 = fmul fast float %6720, %6062
  %6722 = fmul fast float %6720, %6063
  %6723 = fmul fast float %6720, %6064
  %6724 = fadd fast float %6721, %6709
  %6725 = fadd fast float %6722, %6710
  %6726 = fadd fast float %6723, %6711
  %6727 = fmul fast float %6548, %4173
  %6728 = fmul fast float %6727, %6566
  %6729 = fmul fast float %6728, %6708
  %6730 = fmul fast float %6549, %4173
  %6731 = fmul fast float %6730, %6566
  %6732 = fmul fast float %6731, %6708
  %6733 = fmul fast float %6550, %4173
  %6734 = fmul fast float %6733, %6566
  %6735 = fmul fast float %6734, %6708
  %6736 = fadd fast float %6729, %6387
  %6737 = fadd fast float %6732, %6388
  %6738 = fadd fast float %6735, %6389
  %6739 = fmul fast float %6728, %6724
  %6740 = fmul fast float %6731, %6725
  %6741 = fmul fast float %6734, %6726
  %6742 = fadd fast float %6739, %6384
  %6743 = fadd fast float %6740, %6385
  %6744 = fadd fast float %6741, %6386
  br label %6462

; <label>:6745                                    ; preds = %6462
  br label %6746

; <label>:6746                                    ; preds = %6745, %6350
  %6747 = phi float [ %6352, %6350 ], [ %6463, %6745 ]
  %6748 = phi float [ %6353, %6350 ], [ %6464, %6745 ]
  %6749 = phi float [ %6354, %6350 ], [ %6465, %6745 ]
  %6750 = phi float [ %6355, %6350 ], [ %6466, %6745 ]
  %6751 = phi float [ %6356, %6350 ], [ %6467, %6745 ]
  %6752 = phi float [ %6357, %6350 ], [ %6468, %6745 ]
  %6753 = add i32 %6351, 1
  %6754 = icmp ugt i32 %6753, %6347
  br i1 %6754, label %6755, label %6350

; <label>:6755                                    ; preds = %6746
  br label %6756

; <label>:6756                                    ; preds = %6755, %6326, %6316
  %6757 = phi float [ %6317, %6316 ], [ %6317, %6326 ], [ %6747, %6755 ]
  %6758 = phi float [ %6318, %6316 ], [ %6318, %6326 ], [ %6748, %6755 ]
  %6759 = phi float [ %6319, %6316 ], [ %6319, %6326 ], [ %6749, %6755 ]
  %6760 = phi float [ %6320, %6316 ], [ %6320, %6326 ], [ %6750, %6755 ]
  %6761 = phi float [ %6321, %6316 ], [ %6321, %6326 ], [ %6751, %6755 ]
  %6762 = phi float [ %6322, %6316 ], [ %6322, %6326 ], [ %6752, %6755 ]
  %6763 = call float @dx.op.unary.f32(i32 24, float %4778)  ; Sqrt(value)
  %6764 = call float @dx.op.unary.f32(i32 24, float %4779)  ; Sqrt(value)
  %6765 = call float @dx.op.unary.f32(i32 24, float %4780)  ; Sqrt(value)
  %6766 = fmul fast float %6763, %6760
  %6767 = fmul fast float %6764, %6761
  %6768 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6769 = extractvalue %dx.types.CBufRet.f32 %6768, 0
  br i1 %187, label %6770, label %6793

; <label>:6770                                    ; preds = %6756
  %6771 = fadd fast float %6762, %4179
  %6772 = fmul fast float %6771, %4180
  %6773 = fsub fast float 1.000000e+00, %4180
  %6774 = call float @dx.op.unary.f32(i32 7, float %6773)  ; Saturate(value)
  %6775 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6776 = extractvalue %dx.types.CBufRet.f32 %6775, 3
  %6777 = fmul fast float %6776, %6774
  %6778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6779 = extractvalue %dx.types.CBufRet.f32 %6778, 0
  %6780 = fmul fast float %6779, %6069
  %6781 = extractvalue %dx.types.CBufRet.f32 %6778, 2
  %6782 = fmul fast float %6781, %4802
  %6783 = fadd fast float %6767, %6766
  %6784 = fmul fast float %6769, %6783
  %6785 = extractvalue %dx.types.CBufRet.f32 %6775, 1
  %6786 = fadd fast float %6777, %6772
  %6787 = fsub fast float %6786, %6780
  %6788 = fadd fast float %6787, %6782
  %6789 = fsub fast float %6788, %6785
  %6790 = extractvalue %dx.types.CBufRet.f32 %6775, 2
  %6791 = fmul fast float %6789, %6790
  %6792 = call float @dx.op.unary.f32(i32 7, float %6791)  ; Saturate(value)
  br label %6809

; <label>:6793                                    ; preds = %6756
  %6794 = fmul fast float %6765, %6762
  %6795 = fmul fast float %6769, %6766
  %6796 = fmul fast float %6769, %6767
  %6797 = fmul fast float %6794, %6769
  %6798 = add i32 %45, 356
  %6799 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6798, i32 undef)  ; BufferLoad(srv,index,wot)
  %6800 = extractvalue %dx.types.ResRet.i32 %6799, 0
  %6801 = and i32 %6800, 32
  %6802 = icmp eq i32 %6801, 0
  br i1 %6802, label %6809, label %6803

; <label>:6803                                    ; preds = %6793
  %6804 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6805 = extractvalue %dx.types.CBufRet.f32 %6804, 0
  %6806 = fmul fast float %6805, 0x3FE99999A0000000
  %6807 = fadd fast float %6805, %6795
  %6808 = fadd fast float %6806, %6797
  br label %6809

; <label>:6809                                    ; preds = %6803, %6793, %6770
  %6810 = phi float [ %6784, %6770 ], [ %6807, %6803 ], [ %6795, %6793 ]
  %6811 = phi float [ %6792, %6770 ], [ %6796, %6803 ], [ %6796, %6793 ]
  %6812 = phi float [ 1.000000e+00, %6770 ], [ %6808, %6803 ], [ %6797, %6793 ]
  %6813 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6814 = extractvalue %dx.types.CBufRet.f32 %6813, 0
  %6815 = fmul fast float %6814, %6758
  %6816 = fmul fast float %6814, %6759
  %6817 = fadd fast float %6758, %6757
  %6818 = select i1 %187, float %6817, float %6757
  %6819 = fmul float %6818, %6814
  %6820 = select i1 %187, float 0.000000e+00, float %6815
  %6821 = select i1 %187, float 0.000000e+00, float %6816
  %6822 = fmul fast float %6810, %6763
  %6823 = fmul fast float %6811, %6764
  %6824 = fmul fast float %6812, %6765
  %6825 = fadd fast float %6819, %6822
  %6826 = fadd fast float %6820, %6823
  %6827 = fadd fast float %6821, %6824
  %6828 = select i1 %187, float %6811, float %6826
  %6829 = select i1 %187, float %6812, float %6827
  %6830 = call float @dx.op.binary.f32(i32 36, float %6825, float 3.225500e+04)  ; FMin(a,b)
  %6831 = call float @dx.op.binary.f32(i32 36, float %6828, float 3.225500e+04)  ; FMin(a,b)
  %6832 = call float @dx.op.binary.f32(i32 36, float %6829, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6830)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6831)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6832)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[51 x i32] [i32 49, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 3, i32 3, i32 3, i32 7, i32 3, i32 3, i32 3, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !86}
!59 = !{!60, !84, null}
!60 = !{!61, !64, !66, !68, !70, !72, !73, !74, !75, !76, !77, !79, !81, !83}
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
!77 = !{i32 10, !"OBJECT_POSITION", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 10, i8 0, !78}
!78 = !{i32 3, i32 8}
!79 = !{i32 11, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 11, i8 0, !80}
!80 = !{i32 3, i32 13}
!81 = !{i32 12, !"SV_IsFrontFace", i8 5, i8 13, !62, i8 1, i32 1, i8 1, i32 12, i8 0, !82}
!82 = !{i32 3, i32 1}
!83 = !{i32 13, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!84 = !{!85}
!85 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!86 = !{i32 0, i64 24}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}
!90 = distinct !{!90, !91}
!91 = !{!"llvm.loop.unroll.disable"}
!92 = distinct !{!92, !"dx.controlflow.hints", i32 1}
!93 = distinct !{!93, !"dx.controlflow.hints", i32 1}
!94 = distinct !{!94, !"dx.controlflow.hints", i32 1}

