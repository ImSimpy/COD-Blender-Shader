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
; AMBIENT_COLOR            0   xyz         5     NONE   float   xyz 
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float   xyzw
; SECONDARY_TEXCOORDS      0   xy          7     NONE   float   xy  
; SCEONDARY_NORMAL         0   xyzw        8     NONE   float   xyzw
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x zw
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 0cc9668d6a3e285ce97b7425d0e7d95d
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
; AMBIENT_COLOR            0                 linear       
; HIGHLIGHT_DIR_VIS        0                 linear       
; SECONDARY_TEXCOORDS      0                 linear       
; SCEONDARY_NORMAL         0                 linear       
; PACKED_TRI_DATA          0        nointerpolation       
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
; Number of inputs: 40, outputs: 4
; Outputs dependent on ViewId: {  }
; Inputs contributing to computation of Outputs:
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %43 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %44 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %45 = call i32 @dx.op.loadInput.i32(i32 4, i32 9, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %76 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %77 = extractvalue %dx.types.CBufRet.f32 %76, 0
  %78 = fmul fast float %77, %71
  %79 = fmul fast float %77, %72
  %80 = call float @dx.op.dot3.f32(i32 55, float %63, float %64, float %65, float %63, float %64, float %65)  ; Dot3(ax,ay,az,bx,by,bz)
  %81 = bitcast float %80 to i32
  %82 = ashr i32 %81, 1
  %83 = sub nsw i32 1597250115, %82
  %84 = bitcast i32 %83 to float
  %85 = fmul fast float %84, %63
  %86 = fmul fast float %84, %64
  %87 = fmul fast float %84, %65
  %88 = fmul fast float %64, %61
  %89 = fmul fast float %65, %60
  %90 = fsub fast float %88, %89
  %91 = fmul fast float %65, %59
  %92 = fmul fast float %63, %61
  %93 = fsub fast float %91, %92
  %94 = fmul fast float %63, %60
  %95 = fmul fast float %64, %59
  %96 = fsub fast float %94, %95
  %97 = fmul fast float %90, %62
  %98 = fmul fast float %93, %62
  %99 = fmul fast float %96, %62
  %100 = call float @dx.op.dot3.f32(i32 55, float %52, float %53, float %54, float %52, float %53, float %54)  ; Dot3(ax,ay,az,bx,by,bz)
  %101 = bitcast float %100 to i32
  %102 = ashr i32 %101, 1
  %103 = sub nsw i32 1597250115, %102
  %104 = bitcast i32 %103 to float
  %105 = fmul fast float %104, %52
  %106 = fmul fast float %104, %53
  %107 = fmul fast float %104, %54
  %108 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %109 = extractvalue %dx.types.CBufRet.f32 %108, 2
  %110 = extractvalue %dx.types.CBufRet.f32 %108, 3
  %111 = fmul fast float %78, 2.000000e+00
  %112 = fmul fast float %111, %109
  %113 = fmul fast float %79, 2.000000e+00
  %114 = fmul fast float %113, %110
  %115 = fsub fast float 1.000000e+00, %112
  %116 = fsub fast float 1.000000e+00, %114
  %117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %118 = extractvalue %dx.types.CBufRet.f32 %117, 0
  %119 = extractvalue %dx.types.CBufRet.f32 %117, 1
  %120 = extractvalue %dx.types.CBufRet.f32 %117, 2
  %121 = fmul fast float %115, %118
  %122 = fmul fast float %115, %119
  %123 = fmul fast float %115, %120
  %124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %125 = extractvalue %dx.types.CBufRet.f32 %124, 0
  %126 = extractvalue %dx.types.CBufRet.f32 %124, 1
  %127 = extractvalue %dx.types.CBufRet.f32 %124, 2
  %128 = fmul fast float %116, %125
  %129 = fmul fast float %116, %126
  %130 = fmul fast float %116, %127
  %131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %132 = extractvalue %dx.types.CBufRet.f32 %131, 0
  %133 = extractvalue %dx.types.CBufRet.f32 %131, 1
  %134 = extractvalue %dx.types.CBufRet.f32 %131, 2
  %135 = fadd fast float %128, %132
  %136 = fadd fast float %135, %121
  %137 = fadd fast float %129, %133
  %138 = fadd fast float %137, %122
  %139 = fadd fast float %130, %134
  %140 = fadd fast float %139, %123
  %141 = fmul fast float %136, %73
  %142 = fmul fast float %138, %73
  %143 = fmul fast float %140, %73
  %144 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %145 = extractvalue %dx.types.CBufRet.f32 %144, 2
  %146 = extractvalue %dx.types.CBufRet.f32 %144, 3
  %147 = fmul fast float %145, %78
  %148 = fmul fast float %146, %79
  %149 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %150 = extractvalue %dx.types.ResRet.i32 %149, 0
  %151 = and i32 %150, 114688
  %152 = icmp ne i32 %151, 0
  %153 = select i1 %152, float %147, float 0.000000e+00
  %154 = select i1 %152, float %148, float 0.000000e+00
  %155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %153, float %154, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %156 = extractvalue %dx.types.ResRet.f32 %155, 0
  %157 = fmul fast float %156, 2.550000e+02
  %158 = fptoui float %157 to i32
  %159 = select i1 %152, i32 %158, i32 0
  %160 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.i32 %161, 3
  %163 = and i32 %162, 3
  %164 = icmp ne i32 %163, 0
  %165 = and i32 %162, 4
  %166 = icmp ne i32 %165, 0
  %167 = and i1 %164, %166
  br i1 %167, label %168, label %179

; <label>:168                                     ; preds = %0
  %169 = extractvalue %dx.types.CBufRet.f32 %160, 3
  %170 = fmul fast float %169, %79
  %171 = extractvalue %dx.types.CBufRet.f32 %160, 2
  %172 = fmul fast float %171, %78
  %173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %172, float %170, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %174 = extractvalue %dx.types.ResRet.f32 %173, 0
  %175 = fsub fast float 1.000000e+00, %174
  %176 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %177 = extractvalue %dx.types.CBufRet.f32 %176, 0
  %178 = fcmp fast olt float %175, %177
  br label %182

; <label>:179                                     ; preds = %0
  %180 = icmp eq i32 %165, 0
  %181 = and i1 %164, %180
  br label %182

; <label>:182                                     ; preds = %179, %168
  %183 = phi i1 [ %178, %168 ], [ %181, %179 ]
  %184 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %185 = extractvalue %dx.types.CBufRet.f32 %184, 2
  %186 = fmul fast float %185, 0x3FE3C6EF40000000
  %187 = frem fast float %78, 2.560000e+02
  %188 = frem fast float %79, 2.560000e+02
  %189 = fptoui float %187 to i32
  %190 = fptoui float %188 to i32
  %191 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %189, i32 %190, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %192 = extractvalue %dx.types.ResRet.f32 %191, 0
  %193 = extractvalue %dx.types.ResRet.f32 %191, 1
  %194 = fadd fast float %192, %186
  %195 = fadd fast float %193, %186
  %196 = call float @dx.op.unary.f32(i32 22, float %194)  ; Frc(value)
  %197 = call float @dx.op.unary.f32(i32 22, float %195)  ; Frc(value)
  %198 = add i32 %43, 156
  %199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %198, i32 undef)  ; BufferLoad(srv,index,wot)
  %200 = extractvalue %dx.types.ResRet.i32 %199, 0
  %201 = shl i32 %200, 4
  %202 = and i32 %201, 32752
  %203 = call float @dx.op.legacyF16ToF32(i32 131, i32 %202)  ; LegacyF16ToF32(value)
  %204 = lshr i32 %200, 7
  %205 = and i32 %204, 32752
  %206 = call float @dx.op.legacyF16ToF32(i32 131, i32 %205)  ; LegacyF16ToF32(value)
  %207 = lshr i32 %200, 22
  %208 = shl nuw nsw i32 %207, 5
  %209 = call float @dx.op.legacyF16ToF32(i32 131, i32 %208)  ; LegacyF16ToF32(value)
  %210 = add i32 %43, 216
  %211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %212 = extractvalue %dx.types.ResRet.i32 %211, 0
  %213 = and i32 %212, 255
  %214 = uitofp i32 %213 to float
  %215 = fmul fast float %214, 0x3F70101020000000
  %216 = lshr i32 %212, 8
  %217 = and i32 %216, 255
  %218 = uitofp i32 %217 to float
  %219 = fmul fast float %218, 0x3F70101020000000
  %220 = lshr i32 %212, 16
  %221 = and i32 %220, 255
  %222 = uitofp i32 %221 to float
  %223 = fmul fast float %222, 0x3F70101020000000
  %224 = add i32 %43, 36
  %225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %224, i32 undef)  ; BufferLoad(srv,index,wot)
  %226 = extractvalue %dx.types.ResRet.i32 %225, 0
  %227 = and i32 %226, 65535
  %228 = call float @dx.op.legacyF16ToF32(i32 131, i32 %227)  ; LegacyF16ToF32(value)
  %229 = lshr i32 %226, 16
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = add i32 %43, 288
  %232 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %231, i32 undef)  ; BufferLoad(srv,index,wot)
  %233 = extractvalue %dx.types.ResRet.i32 %232, 0
  %234 = and i32 %233, 65535
  %235 = call float @dx.op.legacyF16ToF32(i32 131, i32 %234)  ; LegacyF16ToF32(value)
  %236 = lshr i32 %233, 16
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = fmul fast float %235, 0x3F50624DE0000000
  %239 = fmul fast float %237, 0x3F50624DE0000000
  %240 = add i32 %43, 172
  %241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %240, i32 undef)  ; BufferLoad(srv,index,wot)
  %242 = extractvalue %dx.types.ResRet.i32 %241, 0
  %243 = shl i32 %242, 4
  %244 = and i32 %243, 32752
  %245 = call float @dx.op.legacyF16ToF32(i32 131, i32 %244)  ; LegacyF16ToF32(value)
  %246 = lshr i32 %242, 7
  %247 = and i32 %246, 32752
  %248 = call float @dx.op.legacyF16ToF32(i32 131, i32 %247)  ; LegacyF16ToF32(value)
  %249 = lshr i32 %242, 22
  %250 = shl nuw nsw i32 %249, 5
  %251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %250)  ; LegacyF16ToF32(value)
  %252 = add i32 %43, 232
  %253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %254 = extractvalue %dx.types.ResRet.i32 %253, 0
  %255 = and i32 %254, 255
  %256 = uitofp i32 %255 to float
  %257 = fmul fast float %256, 0x3F70101020000000
  %258 = lshr i32 %254, 8
  %259 = and i32 %258, 255
  %260 = uitofp i32 %259 to float
  %261 = fmul fast float %260, 0x3F70101020000000
  %262 = lshr i32 %254, 16
  %263 = and i32 %262, 255
  %264 = uitofp i32 %263 to float
  %265 = fmul fast float %264, 0x3F70101020000000
  %266 = add i32 %43, 52
  %267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %266, i32 undef)  ; BufferLoad(srv,index,wot)
  %268 = extractvalue %dx.types.ResRet.i32 %267, 0
  %269 = and i32 %268, 65535
  %270 = call float @dx.op.legacyF16ToF32(i32 131, i32 %269)  ; LegacyF16ToF32(value)
  %271 = lshr i32 %268, 16
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = add i32 %43, 304
  %274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %273, i32 undef)  ; BufferLoad(srv,index,wot)
  %275 = extractvalue %dx.types.ResRet.i32 %274, 0
  %276 = and i32 %275, 65535
  %277 = call float @dx.op.legacyF16ToF32(i32 131, i32 %276)  ; LegacyF16ToF32(value)
  %278 = lshr i32 %275, 16
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = fmul fast float %277, 0x3F50624DE0000000
  %281 = fmul fast float %279, 0x3F50624DE0000000
  %282 = add i32 %43, 188
  %283 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %282, i32 undef)  ; BufferLoad(srv,index,wot)
  %284 = extractvalue %dx.types.ResRet.i32 %283, 0
  %285 = shl i32 %284, 4
  %286 = and i32 %285, 32752
  %287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %286)  ; LegacyF16ToF32(value)
  %288 = lshr i32 %284, 7
  %289 = and i32 %288, 32752
  %290 = call float @dx.op.legacyF16ToF32(i32 131, i32 %289)  ; LegacyF16ToF32(value)
  %291 = lshr i32 %284, 22
  %292 = shl nuw nsw i32 %291, 5
  %293 = call float @dx.op.legacyF16ToF32(i32 131, i32 %292)  ; LegacyF16ToF32(value)
  %294 = add i32 %43, 248
  %295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %296 = extractvalue %dx.types.ResRet.i32 %295, 0
  %297 = and i32 %296, 255
  %298 = uitofp i32 %297 to float
  %299 = fmul fast float %298, 0x3F70101020000000
  %300 = lshr i32 %296, 8
  %301 = and i32 %300, 255
  %302 = uitofp i32 %301 to float
  %303 = fmul fast float %302, 0x3F70101020000000
  %304 = lshr i32 %296, 16
  %305 = and i32 %304, 255
  %306 = uitofp i32 %305 to float
  %307 = fmul fast float %306, 0x3F70101020000000
  %308 = add i32 %43, 68
  %309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %308, i32 undef)  ; BufferLoad(srv,index,wot)
  %310 = extractvalue %dx.types.ResRet.i32 %309, 0
  %311 = and i32 %310, 65535
  %312 = call float @dx.op.legacyF16ToF32(i32 131, i32 %311)  ; LegacyF16ToF32(value)
  %313 = lshr i32 %310, 16
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = add i32 %43, 320
  %316 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %315, i32 undef)  ; BufferLoad(srv,index,wot)
  %317 = extractvalue %dx.types.ResRet.i32 %316, 0
  %318 = and i32 %317, 65535
  %319 = call float @dx.op.legacyF16ToF32(i32 131, i32 %318)  ; LegacyF16ToF32(value)
  %320 = lshr i32 %317, 16
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = fmul fast float %319, 0x3F50624DE0000000
  %323 = fmul fast float %321, 0x3F50624DE0000000
  %324 = add i32 %43, 204
  %325 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %324, i32 undef)  ; BufferLoad(srv,index,wot)
  %326 = extractvalue %dx.types.ResRet.i32 %325, 0
  %327 = shl i32 %326, 4
  %328 = and i32 %327, 32752
  %329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %328)  ; LegacyF16ToF32(value)
  %330 = lshr i32 %326, 7
  %331 = and i32 %330, 32752
  %332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %331)  ; LegacyF16ToF32(value)
  %333 = lshr i32 %326, 22
  %334 = shl nuw nsw i32 %333, 5
  %335 = call float @dx.op.legacyF16ToF32(i32 131, i32 %334)  ; LegacyF16ToF32(value)
  %336 = add i32 %43, 264
  %337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %338 = extractvalue %dx.types.ResRet.i32 %337, 0
  %339 = and i32 %338, 255
  %340 = uitofp i32 %339 to float
  %341 = fmul fast float %340, 0x3F70101020000000
  %342 = lshr i32 %338, 8
  %343 = and i32 %342, 255
  %344 = uitofp i32 %343 to float
  %345 = fmul fast float %344, 0x3F70101020000000
  %346 = lshr i32 %338, 16
  %347 = and i32 %346, 255
  %348 = uitofp i32 %347 to float
  %349 = fmul fast float %348, 0x3F70101020000000
  %350 = add i32 %43, 84
  %351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %350, i32 undef)  ; BufferLoad(srv,index,wot)
  %352 = extractvalue %dx.types.ResRet.i32 %351, 0
  %353 = and i32 %352, 65535
  %354 = call float @dx.op.legacyF16ToF32(i32 131, i32 %353)  ; LegacyF16ToF32(value)
  %355 = lshr i32 %352, 16
  %356 = call float @dx.op.legacyF16ToF32(i32 131, i32 %355)  ; LegacyF16ToF32(value)
  %357 = add i32 %43, 336
  %358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %357, i32 undef)  ; BufferLoad(srv,index,wot)
  %359 = extractvalue %dx.types.ResRet.i32 %358, 0
  %360 = and i32 %359, 65535
  %361 = call float @dx.op.legacyF16ToF32(i32 131, i32 %360)  ; LegacyF16ToF32(value)
  %362 = lshr i32 %359, 16
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = fmul fast float %361, 0x3F50624DE0000000
  %365 = fmul fast float %363, 0x3F50624DE0000000
  %366 = add i32 %43, 364
  %367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %368 = extractvalue %dx.types.ResRet.i32 %367, 0
  %369 = and i32 %368, 32
  %370 = icmp eq i32 %369, 0
  %371 = and i32 %368, 64
  %372 = icmp eq i32 %371, 0
  %373 = and i32 %368, 128
  %374 = icmp eq i32 %373, 0
  %375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %376 = extractvalue %dx.types.ResRet.i32 %375, 0
  %377 = and i32 %376, 2
  %378 = icmp eq i32 %377, 0
  br i1 %378, label %392, label %379

; <label>:379                                     ; preds = %182
  %380 = add i32 %43, 520
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %380, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = add i32 %382, 0
  %384 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %383, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %385 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %384, %dx.types.Handle %75, float %66, float %67, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %386 = extractvalue %dx.types.ResRet.f32 %385, 0
  %387 = extractvalue %dx.types.ResRet.f32 %385, 1
  %388 = extractvalue %dx.types.ResRet.f32 %385, 2
  %389 = fmul fast float %386, %68
  %390 = fmul fast float %387, %69
  %391 = fmul fast float %388, %70
  br label %392

; <label>:392                                     ; preds = %379, %182
  %393 = phi float [ %70, %182 ], [ %391, %379 ]
  %394 = phi float [ %69, %182 ], [ %390, %379 ]
  %395 = phi float [ %68, %182 ], [ %389, %379 ]
  %396 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %366, i32 undef)  ; BufferLoad(srv,index,wot)
  %397 = extractvalue %dx.types.ResRet.i32 %396, 0
  %398 = and i32 %397, 2
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %419, label %400

; <label>:400                                     ; preds = %392
  %401 = add i32 %43, 44
  %402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %401, i32 undef)  ; BufferLoad(srv,index,wot)
  %403 = extractvalue %dx.types.ResRet.i32 %402, 0
  %404 = and i32 %403, 1
  %405 = icmp ne i32 %404, 0
  %406 = select i1 %405, float %395, float 1.000000e+00
  %407 = add i32 %43, 60
  %408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %407, i32 undef)  ; BufferLoad(srv,index,wot)
  %409 = extractvalue %dx.types.ResRet.i32 %408, 0
  %410 = and i32 %409, 1
  %411 = icmp ne i32 %410, 0
  %412 = select i1 %411, float %394, float 1.000000e+00
  %413 = add i32 %43, 76
  %414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %413, i32 undef)  ; BufferLoad(srv,index,wot)
  %415 = extractvalue %dx.types.ResRet.i32 %414, 0
  %416 = and i32 %415, 1
  %417 = icmp ne i32 %416, 0
  %418 = select i1 %417, float %393, float 1.000000e+00
  br label %419

; <label>:419                                     ; preds = %400, %392
  %420 = phi float [ %393, %392 ], [ %418, %400 ]
  %421 = phi float [ %394, %392 ], [ %412, %400 ]
  %422 = phi float [ %395, %392 ], [ %406, %400 ]
  %423 = lshr i32 %397, 20
  %424 = and i32 %423, 3
  %425 = add nuw nsw i32 %424, 1
  %426 = add i32 %43, 24
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = add i32 %43, 28
  %430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %429, i32 undef)  ; BufferLoad(srv,index,wot)
  %431 = extractvalue %dx.types.ResRet.i32 %430, 0
  %432 = or i32 %431, %428
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %960, label %434

; <label>:434                                     ; preds = %419
  %435 = and i32 %428, 262144
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %46, float 1.000000e+00
  %438 = select i1 %436, float %47, float 0.000000e+00
  %439 = select i1 %436, float %48, float 0.000000e+00
  %440 = select i1 %436, float %49, float 1.000000e+00
  %441 = select i1 %436, float %50, float %66
  %442 = select i1 %436, float %51, float %67
  %443 = add i32 %43, 284
  %444 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %445 = extractvalue %dx.types.ResRet.i32 %444, 0
  %446 = lshr i32 %445, 16
  %447 = call float @dx.op.legacyF16ToF32(i32 131, i32 %446)  ; LegacyF16ToF32(value)
  %448 = fmul fast float %447, 0x3F50624DE0000000
  %449 = add i32 %43, 88
  %450 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %449, i32 undef)  ; BufferLoad(srv,index,wot)
  %451 = extractvalue %dx.types.ResRet.i32 %450, 0
  %452 = lshr i32 %451, 16
  %453 = and i32 %452, 255
  %454 = lshr i32 %451, 24
  %455 = add i32 %43, 292
  %456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %455, i32 undef)  ; BufferLoad(srv,index,wot)
  %457 = extractvalue %dx.types.ResRet.i32 %456, 0
  %458 = and i32 %457, 65535
  %459 = call float @dx.op.legacyF16ToF32(i32 131, i32 %458)  ; LegacyF16ToF32(value)
  %460 = lshr i32 %457, 16
  %461 = call float @dx.op.legacyF16ToF32(i32 131, i32 %460)  ; LegacyF16ToF32(value)
  %462 = add i32 %43, 32
  %463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %462, i32 undef)  ; BufferLoad(srv,index,wot)
  %464 = extractvalue %dx.types.ResRet.i32 %463, 0
  %465 = lshr i32 %464, 22
  %466 = shl nuw nsw i32 %465, 5
  %467 = call float @dx.op.legacyF16ToF32(i32 131, i32 %466)  ; LegacyF16ToF32(value)
  %468 = shl i32 %464, 4
  %469 = and i32 %468, 32752
  %470 = call float @dx.op.legacyF16ToF32(i32 131, i32 %469)  ; LegacyF16ToF32(value)
  %471 = lshr i32 %464, 7
  %472 = and i32 %471, 32752
  %473 = call float @dx.op.legacyF16ToF32(i32 131, i32 %472)  ; LegacyF16ToF32(value)
  %474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %475 = extractvalue %dx.types.CBufRet.f32 %474, 3
  %476 = fmul fast float %475, 1.000000e+03
  %477 = fmul fast float %238, %476
  %478 = call float @dx.op.unary.f32(i32 22, float %477)  ; Frc(value)
  %479 = fadd fast float %478, %228
  %480 = fmul fast float %239, %476
  %481 = call float @dx.op.unary.f32(i32 22, float %480)  ; Frc(value)
  %482 = fadd fast float %481, %230
  %483 = fmul fast float %448, %476
  %484 = call float @dx.op.unary.f32(i32 22, float %483)  ; Frc(value)
  %485 = fmul fast float %484, 0x401921FB60000000
  %486 = fadd fast float %485, %467
  %487 = call float @dx.op.unary.f32(i32 13, float %486)  ; Sin(value)
  %488 = call float @dx.op.unary.f32(i32 12, float %486)  ; Cos(value)
  %489 = fsub fast float -0.000000e+00, %487
  %490 = fadd fast float %441, -5.000000e-01
  %491 = fadd fast float %442, -5.000000e-01
  %492 = fmul fast float %459, %490
  %493 = fmul fast float %461, %491
  %494 = fadd fast float %492, 5.000000e-01
  %495 = fadd fast float %493, 5.000000e-01
  %496 = fmul fast float %470, %494
  %497 = fmul fast float %473, %495
  %498 = fmul fast float %488, %496
  %499 = call float @dx.op.tertiary.f32(i32 46, float %489, float %497, float %498)  ; FMad(a,b,c)
  %500 = fmul fast float %487, %496
  %501 = call float @dx.op.tertiary.f32(i32 46, float %488, float %497, float %500)  ; FMad(a,b,c)
  %502 = fadd fast float %479, %499
  %503 = fadd fast float %482, %501
  %504 = icmp ugt i32 %453, 1
  %505 = icmp ugt i32 %451, 33554431
  %506 = or i1 %505, %504
  br i1 %506, label %507, label %532

; <label>:507                                     ; preds = %434
  %508 = add i32 %43, 228
  %509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %508, i32 undef)  ; BufferLoad(srv,index,wot)
  %510 = extractvalue %dx.types.ResRet.i32 %509, 0
  %511 = lshr i32 %510, 16
  %512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %511)  ; LegacyF16ToF32(value)
  %513 = fmul fast float %475, %512
  %514 = call float @dx.op.unary.f32(i32 22, float %513)  ; Frc(value)
  %515 = mul nuw nsw i32 %453, %454
  %516 = uitofp i32 %515 to float
  %517 = fmul fast float %514, %516
  %518 = call float @dx.op.unary.f32(i32 27, float %517)  ; Round_ni(value)
  %519 = fptoui float %518 to i32
  %520 = urem i32 %519, %453
  %521 = udiv i32 %519, %454
  %522 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %523 = call float @dx.op.unary.f32(i32 22, float %503)  ; Frc(value)
  %524 = uitofp i32 %520 to float
  %525 = uitofp i32 %521 to float
  %526 = fadd fast float %522, %524
  %527 = fadd fast float %523, %525
  %528 = uitofp i32 %453 to float
  %529 = uitofp i32 %454 to float
  %530 = fdiv fast float %526, %528
  %531 = fdiv fast float %527, %529
  br label %532

; <label>:532                                     ; preds = %507, %434
  %533 = phi float [ %530, %507 ], [ %502, %434 ]
  %534 = phi float [ %531, %507 ], [ %503, %434 ]
  %535 = and i32 %428, 16
  %536 = icmp eq i32 %535, 0
  br i1 %536, label %733, label %537

; <label>:537                                     ; preds = %532
  %538 = add i32 %43, 408
  %539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %538, i32 undef)  ; BufferLoad(srv,index,wot)
  %540 = extractvalue %dx.types.ResRet.i32 %539, 0
  %541 = add i32 %540, 0
  %542 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %541, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %543 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %542, %dx.types.Handle %74, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %544 = extractvalue %dx.types.ResRet.f32 %543, 0
  %545 = extractvalue %dx.types.ResRet.f32 %543, 1
  %546 = extractvalue %dx.types.ResRet.f32 %543, 2
  %547 = extractvalue %dx.types.ResRet.f32 %543, 3
  %548 = and i32 %451, 255
  %549 = uitofp i32 %548 to float
  %550 = lshr i32 %451, 8
  %551 = and i32 %550, 255
  %552 = uitofp i32 %551 to float
  %553 = fmul fast float %547, %549
  %554 = fadd fast float %553, %552
  %555 = fmul fast float %554, 0x3F70101000000000
  %556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %557 = extractvalue %dx.types.ResRet.i32 %556, 0
  %558 = and i32 %557, 512
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %568, label %560

; <label>:560                                     ; preds = %537
  %561 = add i32 %43, 488
  %562 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %561, i32 undef)  ; BufferLoad(srv,index,wot)
  %563 = extractvalue %dx.types.ResRet.i32 %562, 0
  %564 = add i32 %563, 0
  %565 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %564, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %566 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %565, %dx.types.Handle %75, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %567 = extractvalue %dx.types.ResRet.f32 %566, 0
  br label %568

; <label>:568                                     ; preds = %560, %537
  %569 = phi float [ %567, %560 ], [ 1.000000e+00, %537 ]
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = and i32 %571, 33554432
  %573 = icmp eq i32 %572, 0
  br i1 %573, label %680, label %574

; <label>:574                                     ; preds = %568
  %575 = add i32 %43, 224
  %576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %575, i32 undef)  ; BufferLoad(srv,index,wot)
  %577 = extractvalue %dx.types.ResRet.i32 %576, 0
  %578 = and i32 %577, 65535
  %579 = call float @dx.op.legacyF16ToF32(i32 131, i32 %578)  ; LegacyF16ToF32(value)
  %580 = lshr i32 %577, 16
  %581 = call float @dx.op.legacyF16ToF32(i32 131, i32 %580)  ; LegacyF16ToF32(value)
  %582 = add i32 %43, 228
  %583 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %582, i32 undef)  ; BufferLoad(srv,index,wot)
  %584 = extractvalue %dx.types.ResRet.i32 %583, 0
  %585 = and i32 %584, 65535
  %586 = call float @dx.op.legacyF16ToF32(i32 131, i32 %585)  ; LegacyF16ToF32(value)
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %210, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = lshr i32 %588, 24
  %590 = uitofp i32 %589 to float
  %591 = fmul fast float %590, 0x3F70101020000000
  %592 = and i32 %588, 255
  %593 = uitofp i32 %592 to float
  %594 = fmul fast float %593, 0x3F70101020000000
  %595 = lshr i32 %588, 8
  %596 = and i32 %595, 255
  %597 = uitofp i32 %596 to float
  %598 = fmul fast float %597, 0x3F70101020000000
  %599 = lshr i32 %588, 16
  %600 = and i32 %599, 255
  %601 = uitofp i32 %600 to float
  %602 = fmul fast float %601, 0x3F70101020000000
  %603 = add i32 %43, 220
  %604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %603, i32 undef)  ; BufferLoad(srv,index,wot)
  %605 = extractvalue %dx.types.ResRet.i32 %604, 0
  %606 = lshr i32 %605, 24
  %607 = uitofp i32 %606 to float
  %608 = fmul fast float %607, 0x3F70101020000000
  %609 = and i32 %605, 255
  %610 = uitofp i32 %609 to float
  %611 = fmul fast float %610, 0x3F70101020000000
  %612 = lshr i32 %605, 8
  %613 = and i32 %612, 255
  %614 = uitofp i32 %613 to float
  %615 = fmul fast float %614, 0x3F70101020000000
  %616 = lshr i32 %605, 16
  %617 = and i32 %616, 255
  %618 = uitofp i32 %617 to float
  %619 = fmul fast float %618, 0x3F70101020000000
  %620 = bitcast float %544 to i32
  %621 = ashr i32 %620, 1
  %622 = sub nsw i32 1597463174, %621
  %623 = bitcast i32 %622 to float
  %624 = fmul fast float %544, 5.000000e-01
  %625 = fmul fast float %623, %623
  %626 = fmul fast float %625, %624
  %627 = fsub fast float 1.500000e+00, %626
  %628 = fmul fast float %623, %544
  %629 = fmul fast float %628, %627
  %630 = bitcast float %545 to i32
  %631 = ashr i32 %630, 1
  %632 = sub nsw i32 1597463174, %631
  %633 = bitcast i32 %632 to float
  %634 = fmul fast float %545, 5.000000e-01
  %635 = fmul fast float %633, %633
  %636 = fmul fast float %635, %634
  %637 = fsub fast float 1.500000e+00, %636
  %638 = fmul fast float %633, %545
  %639 = fmul fast float %638, %637
  %640 = bitcast float %546 to i32
  %641 = ashr i32 %640, 1
  %642 = sub nsw i32 1597463174, %641
  %643 = bitcast i32 %642 to float
  %644 = fmul fast float %546, 5.000000e-01
  %645 = fmul fast float %643, %643
  %646 = fmul fast float %645, %644
  %647 = fsub fast float 1.500000e+00, %646
  %648 = fmul fast float %643, %546
  %649 = fmul fast float %648, %647
  %650 = fsub fast float %629, %611
  %651 = fsub fast float %639, %615
  %652 = fsub fast float %649, %619
  %653 = fmul fast float %650, %579
  %654 = fmul fast float %651, %581
  %655 = fmul fast float %652, %586
  %656 = fadd fast float %653, %594
  %657 = fadd fast float %654, %598
  %658 = fadd fast float %655, %602
  %659 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %660 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %661 = call float @dx.op.unary.f32(i32 7, float %658)  ; Saturate(value)
  %662 = fmul fast float %659, %659
  %663 = fmul fast float %660, %660
  %664 = fmul fast float %661, %661
  %665 = fsub fast float %662, %544
  %666 = fsub fast float %663, %545
  %667 = fsub fast float %664, %546
  %668 = fmul fast float %665, %569
  %669 = fmul fast float %666, %569
  %670 = fmul fast float %667, %569
  %671 = fadd fast float %668, %544
  %672 = fadd fast float %669, %545
  %673 = fadd fast float %670, %546
  %674 = fadd fast float %591, %555
  %675 = fsub fast float %674, %608
  %676 = call float @dx.op.unary.f32(i32 7, float %675)  ; Saturate(value)
  %677 = fsub fast float %676, %555
  %678 = fmul fast float %677, %569
  %679 = fadd fast float %678, %555
  br label %733

; <label>:680                                     ; preds = %568
  %681 = and i32 %571, 134217728
  %682 = icmp eq i32 %681, 0
  br i1 %682, label %717, label %683

; <label>:683                                     ; preds = %680
  %684 = call float @dx.op.unary.f32(i32 24, float %215)  ; Sqrt(value)
  %685 = call float @dx.op.unary.f32(i32 24, float %219)  ; Sqrt(value)
  %686 = call float @dx.op.unary.f32(i32 24, float %223)  ; Sqrt(value)
  %687 = fadd fast float %684, -5.000000e-01
  %688 = fadd fast float %685, -5.000000e-01
  %689 = fadd fast float %686, -5.000000e-01
  %690 = fmul fast float %687, %569
  %691 = fmul fast float %688, %569
  %692 = fmul fast float %689, %569
  %693 = fadd fast float %690, 5.000000e-01
  %694 = fadd fast float %691, 5.000000e-01
  %695 = fadd fast float %692, 5.000000e-01
  %696 = call float @dx.op.unary.f32(i32 24, float %544)  ; Sqrt(value)
  %697 = call float @dx.op.unary.f32(i32 24, float %545)  ; Sqrt(value)
  %698 = call float @dx.op.unary.f32(i32 24, float %546)  ; Sqrt(value)
  %699 = fmul fast float %693, 2.000000e+00
  %700 = fsub fast float 1.000000e+00, %699
  %701 = fmul fast float %700, %696
  %702 = fadd fast float %701, %699
  %703 = fmul fast float %702, %696
  %704 = fmul fast float %694, 2.000000e+00
  %705 = fsub fast float 1.000000e+00, %704
  %706 = fmul fast float %705, %697
  %707 = fadd fast float %706, %704
  %708 = fmul fast float %707, %697
  %709 = fmul fast float %695, 2.000000e+00
  %710 = fsub fast float 1.000000e+00, %709
  %711 = fmul fast float %710, %698
  %712 = fadd fast float %711, %709
  %713 = fmul fast float %712, %698
  %714 = fmul fast float %703, %703
  %715 = fmul fast float %708, %708
  %716 = fmul fast float %713, %713
  br label %733

; <label>:717                                     ; preds = %680
  %718 = fmul fast float %215, %215
  %719 = fmul fast float %219, %219
  %720 = fmul fast float %223, %223
  %721 = fadd fast float %718, -1.000000e+00
  %722 = fadd fast float %719, -1.000000e+00
  %723 = fadd fast float %720, -1.000000e+00
  %724 = fmul fast float %569, %721
  %725 = fmul fast float %569, %722
  %726 = fmul fast float %569, %723
  %727 = fadd fast float %724, 1.000000e+00
  %728 = fadd fast float %725, 1.000000e+00
  %729 = fadd fast float %726, 1.000000e+00
  %730 = fmul fast float %727, %544
  %731 = fmul fast float %728, %545
  %732 = fmul fast float %729, %546
  br label %733

; <label>:733                                     ; preds = %717, %683, %574, %532
  %734 = phi float [ %679, %574 ], [ %555, %683 ], [ %555, %717 ], [ 0x3FA23C0BE0000000, %532 ]
  %735 = phi float [ %671, %574 ], [ %714, %683 ], [ %730, %717 ], [ 1.000000e+00, %532 ]
  %736 = phi float [ %672, %574 ], [ %715, %683 ], [ %731, %717 ], [ 1.000000e+00, %532 ]
  %737 = phi float [ %673, %574 ], [ %716, %683 ], [ %732, %717 ], [ 1.000000e+00, %532 ]
  %738 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %739 = extractvalue %dx.types.CBufRet.i32 %738, 1
  %740 = and i32 %739, 1
  %741 = icmp ne i32 %740, 0
  %742 = add i32 %43, 372
  %743 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %742, i32 undef)  ; BufferLoad(srv,index,wot)
  %744 = extractvalue %dx.types.ResRet.i32 %743, 0
  %745 = and i32 %744, 32
  %746 = icmp ne i32 %745, 0
  %747 = and i1 %741, %746
  %748 = select i1 %747, float 1.000000e+00, float %735
  %749 = select i1 %747, float 0x3FD3333340000000, float %736
  %750 = select i1 %747, float 0x3FD3333340000000, float %737
  %751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %752 = extractvalue %dx.types.ResRet.i32 %751, 0
  %753 = and i32 %752, 32
  %754 = icmp eq i32 %753, 0
  br i1 %754, label %895, label %755

; <label>:755                                     ; preds = %733
  %756 = add i32 %43, 92
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = add i32 %43, 424
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = add i32 %761, 0
  %763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %764 = add i32 %43, 376
  %765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %764, i32 undef)  ; BufferLoad(srv,index,wot)
  %766 = extractvalue %dx.types.ResRet.i32 %765, 0
  %767 = extractvalue %dx.types.ResRet.i32 %765, 1
  %768 = extractvalue %dx.types.ResRet.i32 %765, 2
  %769 = extractvalue %dx.types.ResRet.i32 %765, 3
  %770 = bitcast i32 %767 to float
  %771 = bitcast i32 %768 to float
  %772 = bitcast i32 %769 to float
  %773 = add i32 %43, 392
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = extractvalue %dx.types.ResRet.i32 %774, 1
  %777 = extractvalue %dx.types.ResRet.i32 %774, 2
  %778 = extractvalue %dx.types.ResRet.i32 %774, 3
  %779 = bitcast i32 %776 to float
  %780 = bitcast i32 %777 to float
  %781 = bitcast i32 %778 to float
  %782 = fmul fast float %770, %533
  %783 = fmul fast float %770, %534
  %784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %785 = extractvalue %dx.types.CBufRet.f32 %784, 3
  %786 = fmul fast float %785, %771
  %787 = fmul fast float %785, %772
  %788 = fadd fast float %786, %782
  %789 = fadd fast float %787, %783
  %790 = fmul fast float %779, %533
  %791 = fmul fast float %779, %534
  %792 = fmul fast float %785, %780
  %793 = fmul fast float %785, %781
  %794 = fadd fast float %792, %790
  %795 = fadd fast float %793, %791
  %796 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %763, i32 0)  ; GetDimensions(handle,mipLevel)
  %797 = extractvalue %dx.types.Dimensions %796, 3
  %798 = sitofp i32 %797 to float
  %799 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %763, %dx.types.Handle %74, float %788, float %789, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %800 = call float @dx.op.calculateLOD.f32(i32 81, %dx.types.Handle %763, %dx.types.Handle %74, float %794, float %795, float undef, i1 true)  ; CalculateLOD(handle,sampler,coord0,coord1,coord2,clamped)
  %801 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %763, %dx.types.Handle %74, float %788, float %789, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %802 = extractvalue %dx.types.ResRet.f32 %801, 0
  %803 = extractvalue %dx.types.ResRet.f32 %801, 1
  %804 = extractvalue %dx.types.ResRet.f32 %801, 2
  %805 = extractvalue %dx.types.ResRet.f32 %801, 3
  %806 = and i32 %758, 255
  %807 = uitofp i32 %806 to float
  %808 = lshr i32 %758, 8
  %809 = and i32 %808, 255
  %810 = uitofp i32 %809 to float
  %811 = lshr i32 %758, 16
  %812 = and i32 %811, 255
  %813 = uitofp i32 %812 to float
  %814 = fmul fast float %813, 0x3F70101000000000
  %815 = fmul fast float %802, %807
  %816 = fadd fast float %815, %810
  %817 = fadd fast float %803, -5.000000e-01
  %818 = fadd fast float %805, -5.000000e-01
  %819 = fmul fast float %817, %814
  %820 = fmul fast float %818, %814
  %821 = fadd fast float %819, 5.000000e-01
  %822 = fadd fast float %820, 5.000000e-01
  %823 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %763, %dx.types.Handle %74, float %794, float %795, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %824 = extractvalue %dx.types.ResRet.f32 %823, 0
  %825 = extractvalue %dx.types.ResRet.f32 %823, 1
  %826 = extractvalue %dx.types.ResRet.f32 %823, 2
  %827 = extractvalue %dx.types.ResRet.f32 %823, 3
  %828 = fmul fast float %824, %807
  %829 = fadd fast float %828, %810
  %830 = fadd fast float %825, -5.000000e-01
  %831 = fadd fast float %827, -5.000000e-01
  %832 = fmul fast float %830, %814
  %833 = fmul fast float %831, %814
  %834 = fadd fast float %832, 5.000000e-01
  %835 = fadd fast float %833, 5.000000e-01
  %836 = fmul fast float %821, 2.000000e+00
  %837 = fadd fast float %836, -1.000000e+00
  %838 = fmul fast float %822, 2.000000e+00
  %839 = fadd fast float %838, -1.000000e+00
  %840 = fadd fast float %837, %839
  %841 = fmul fast float %840, 5.000000e-01
  %842 = fsub fast float %837, %839
  %843 = fmul fast float %842, 5.000000e-01
  %844 = call float @dx.op.unary.f32(i32 6, float %841)  ; FAbs(value)
  %845 = fsub fast float 1.000000e+00, %844
  %846 = call float @dx.op.unary.f32(i32 6, float %843)  ; FAbs(value)
  %847 = fsub fast float %845, %846
  %848 = call float @dx.op.dot3.f32(i32 55, float %841, float %843, float %847, float %841, float %843, float %847)  ; Dot3(ax,ay,az,bx,by,bz)
  %849 = call float @dx.op.unary.f32(i32 25, float %848)  ; Rsqrt(value)
  %850 = fmul fast float %834, 2.000000e+00
  %851 = fadd fast float %850, -1.000000e+00
  %852 = fmul fast float %835, 2.000000e+00
  %853 = fadd fast float %852, -1.000000e+00
  %854 = fadd fast float %851, %853
  %855 = fmul fast float %854, 5.000000e-01
  %856 = fsub fast float %851, %853
  %857 = fmul fast float %856, 5.000000e-01
  %858 = call float @dx.op.unary.f32(i32 6, float %855)  ; FAbs(value)
  %859 = fsub fast float 1.000000e+00, %858
  %860 = call float @dx.op.unary.f32(i32 6, float %857)  ; FAbs(value)
  %861 = fsub fast float %859, %860
  %862 = call float @dx.op.dot3.f32(i32 55, float %855, float %857, float %861, float %855, float %857, float %861)  ; Dot3(ax,ay,az,bx,by,bz)
  %863 = call float @dx.op.unary.f32(i32 25, float %862)  ; Rsqrt(value)
  %864 = fadd fast float %798, -1.000000e+00
  %865 = fsub fast float %864, %799
  %866 = fmul fast float %865, 5.000000e-01
  %867 = call float @dx.op.unary.f32(i32 7, float %866)  ; Saturate(value)
  %868 = fsub fast float %864, %800
  %869 = fmul fast float %868, 5.000000e-01
  %870 = call float @dx.op.unary.f32(i32 7, float %869)  ; Saturate(value)
  %871 = bitcast i32 %766 to float
  %872 = bitcast i32 %775 to float
  %873 = fmul fast float %841, %871
  %874 = fmul fast float %873, %849
  %875 = fmul fast float %874, %867
  %876 = fmul fast float %843, %871
  %877 = fmul fast float %876, %849
  %878 = fmul fast float %877, %867
  %879 = fmul fast float %863, %872
  %880 = fmul fast float %879, %855
  %881 = fmul fast float %880, %870
  %882 = fmul fast float %879, %857
  %883 = fmul fast float %882, %870
  %884 = fadd fast float %881, %875
  %885 = fadd fast float %883, %878
  %886 = fmul fast float %804, %871
  %887 = fmul fast float %826, %872
  %888 = fadd fast float %887, %886
  %889 = fmul fast float %816, %871
  %890 = fmul fast float %829, %872
  %891 = fadd fast float %890, %889
  %892 = fmul fast float %891, 0x3F70101000000000
  %893 = call float @dx.op.dot2.f32(i32 54, float %884, float %885, float %437, float %438)  ; Dot2(ax,ay,bx,by)
  %894 = call float @dx.op.dot2.f32(i32 54, float %884, float %885, float %439, float %440)  ; Dot2(ax,ay,bx,by)
  br label %895

; <label>:895                                     ; preds = %755, %733
  %896 = phi float [ %892, %755 ], [ 0x3FD6666660000000, %733 ]
  %897 = phi float [ %893, %755 ], [ 0.000000e+00, %733 ]
  %898 = phi float [ %894, %755 ], [ 0.000000e+00, %733 ]
  %899 = phi float [ %888, %755 ], [ 1.000000e+00, %733 ]
  %900 = add i32 %43, 160
  %901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %900, i32 undef)  ; BufferLoad(srv,index,wot)
  %902 = extractvalue %dx.types.ResRet.i32 %901, 0
  %903 = lshr i32 %902, 22
  %904 = shl nuw nsw i32 %903, 5
  %905 = call float @dx.op.legacyF16ToF32(i32 131, i32 %904)  ; LegacyF16ToF32(value)
  %906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %907 = extractvalue %dx.types.ResRet.i32 %906, 0
  %908 = and i32 %907, 64
  %909 = icmp eq i32 %908, 0
  br i1 %909, label %943, label %910

; <label>:910                                     ; preds = %895
  %911 = add i32 %43, 440
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = add i32 %913, 0
  %915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %917 = extractvalue %dx.types.ResRet.i32 %916, 0
  %918 = and i32 %917, 131072
  %919 = icmp eq i32 %918, 0
  %920 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %915, %dx.types.Handle %74, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %921 = extractvalue %dx.types.ResRet.f32 %920, 0
  %922 = extractvalue %dx.types.ResRet.f32 %920, 1
  %923 = extractvalue %dx.types.ResRet.f32 %920, 2
  %924 = fmul fast float %921, %203
  %925 = fmul fast float %922, %206
  %926 = fmul fast float %923, %209
  br i1 %919, label %933, label %927

; <label>:927                                     ; preds = %910
  %928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %929 = extractvalue %dx.types.CBufRet.f32 %928, 0
  %930 = fmul fast float %929, %924
  %931 = fmul fast float %929, %925
  %932 = fmul fast float %929, %926
  br label %933

; <label>:933                                     ; preds = %927, %910
  %934 = phi float [ %930, %927 ], [ %924, %910 ]
  %935 = phi float [ %931, %927 ], [ %925, %910 ]
  %936 = phi float [ %932, %927 ], [ %926, %910 ]
  %937 = fmul fast float %934, %905
  %938 = select i1 %183, float %937, float %934
  %939 = call float @dx.op.dot3.f32(i32 55, float %938, float %935, float %936, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %940 = select i1 %183, float 0.000000e+00, float %934
  %941 = select i1 %183, float %939, float %935
  %942 = select i1 %183, float 0.000000e+00, float %936
  br label %943

; <label>:943                                     ; preds = %933, %895
  %944 = phi float [ %940, %933 ], [ 0.000000e+00, %895 ]
  %945 = phi float [ %941, %933 ], [ 0.000000e+00, %895 ]
  %946 = phi float [ %942, %933 ], [ 0.000000e+00, %895 ]
  %947 = add i32 %43, 96
  %948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %947, i32 undef)  ; BufferLoad(srv,index,wot)
  %949 = extractvalue %dx.types.ResRet.i32 %948, 0
  %950 = and i32 %949, 255
  %951 = uitofp i32 %950 to float
  %952 = lshr i32 %949, 8
  %953 = and i32 %952, 255
  %954 = uitofp i32 %953 to float
  %955 = call float @dx.op.dot3.f32(i32 55, float %748, float %749, float %750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %956 = fmul fast float %954, %955
  %957 = fadd fast float %956, %951
  %958 = fmul fast float %957, 0x3F70101020000000
  %959 = call float @dx.op.unary.f32(i32 7, float %958)  ; Saturate(value)
  br label %960

; <label>:960                                     ; preds = %943, %419
  %961 = phi float [ 0.000000e+00, %419 ], [ %897, %943 ]
  %962 = phi float [ 0.000000e+00, %419 ], [ %898, %943 ]
  %963 = phi float [ 0.000000e+00, %419 ], [ %748, %943 ]
  %964 = phi float [ 0.000000e+00, %419 ], [ %749, %943 ]
  %965 = phi float [ 0.000000e+00, %419 ], [ %750, %943 ]
  %966 = phi float [ 0.000000e+00, %419 ], [ %944, %943 ]
  %967 = phi float [ 0.000000e+00, %419 ], [ %945, %943 ]
  %968 = phi float [ 0.000000e+00, %419 ], [ %946, %943 ]
  %969 = phi float [ 0.000000e+00, %419 ], [ %734, %943 ]
  %970 = phi float [ 0.000000e+00, %419 ], [ 1.000000e+00, %943 ]
  %971 = phi float [ 0.000000e+00, %419 ], [ %896, %943 ]
  %972 = phi float [ 0.000000e+00, %419 ], [ %899, %943 ]
  %973 = phi float [ 0.000000e+00, %419 ], [ %959, %943 ]
  br i1 %370, label %1815, label %974

; <label>:974                                     ; preds = %960
  %975 = icmp ult i32 %425, 2
  %976 = add i32 %43, 40
  %977 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %978 = extractvalue %dx.types.ResRet.i32 %977, 0
  %979 = add i32 %43, 44
  %980 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %979, i32 undef)  ; BufferLoad(srv,index,wot)
  %981 = extractvalue %dx.types.ResRet.i32 %980, 0
  %982 = or i32 %981, %978
  %983 = icmp eq i32 %982, 0
  br i1 %983, label %1815, label %984

; <label>:984                                     ; preds = %974
  %985 = and i32 %978, 262144
  %986 = icmp ne i32 %985, 0
  %987 = select i1 %986, float %46, float 1.000000e+00
  %988 = select i1 %986, float %47, float 0.000000e+00
  %989 = select i1 %986, float %48, float 0.000000e+00
  %990 = select i1 %986, float %49, float 1.000000e+00
  %991 = select i1 %986, float %50, float %66
  %992 = select i1 %986, float %51, float %67
  %993 = add i32 %43, 300
  %994 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %995 = extractvalue %dx.types.ResRet.i32 %994, 0
  %996 = lshr i32 %995, 16
  %997 = call float @dx.op.legacyF16ToF32(i32 131, i32 %996)  ; LegacyF16ToF32(value)
  %998 = fmul fast float %997, 0x3F50624DE0000000
  %999 = add i32 %43, 104
  %1000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1001 = extractvalue %dx.types.ResRet.i32 %1000, 0
  %1002 = lshr i32 %1001, 16
  %1003 = and i32 %1002, 255
  %1004 = lshr i32 %1001, 24
  %1005 = add i32 %43, 308
  %1006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1005, i32 undef)  ; BufferLoad(srv,index,wot)
  %1007 = extractvalue %dx.types.ResRet.i32 %1006, 0
  %1008 = and i32 %1007, 65535
  %1009 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1008)  ; LegacyF16ToF32(value)
  %1010 = lshr i32 %1007, 16
  %1011 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1010)  ; LegacyF16ToF32(value)
  %1012 = add i32 %43, 48
  %1013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1012, i32 undef)  ; BufferLoad(srv,index,wot)
  %1014 = extractvalue %dx.types.ResRet.i32 %1013, 0
  %1015 = lshr i32 %1014, 22
  %1016 = shl nuw nsw i32 %1015, 5
  %1017 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1016)  ; LegacyF16ToF32(value)
  %1018 = shl i32 %1014, 4
  %1019 = and i32 %1018, 32752
  %1020 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1019)  ; LegacyF16ToF32(value)
  %1021 = lshr i32 %1014, 7
  %1022 = and i32 %1021, 32752
  %1023 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1022)  ; LegacyF16ToF32(value)
  %1024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1025 = extractvalue %dx.types.CBufRet.f32 %1024, 3
  %1026 = fmul fast float %1025, 1.000000e+03
  %1027 = fmul fast float %280, %1026
  %1028 = call float @dx.op.unary.f32(i32 22, float %1027)  ; Frc(value)
  %1029 = fadd fast float %1028, %270
  %1030 = fmul fast float %281, %1026
  %1031 = call float @dx.op.unary.f32(i32 22, float %1030)  ; Frc(value)
  %1032 = fadd fast float %1031, %272
  %1033 = fmul fast float %998, %1026
  %1034 = call float @dx.op.unary.f32(i32 22, float %1033)  ; Frc(value)
  %1035 = fmul fast float %1034, 0x401921FB60000000
  %1036 = fadd fast float %1035, %1017
  %1037 = call float @dx.op.unary.f32(i32 13, float %1036)  ; Sin(value)
  %1038 = call float @dx.op.unary.f32(i32 12, float %1036)  ; Cos(value)
  %1039 = fsub fast float -0.000000e+00, %1037
  %1040 = fadd fast float %991, -5.000000e-01
  %1041 = fadd fast float %992, -5.000000e-01
  %1042 = fmul fast float %1009, %1040
  %1043 = fmul fast float %1011, %1041
  %1044 = fadd fast float %1042, 5.000000e-01
  %1045 = fadd fast float %1043, 5.000000e-01
  %1046 = fmul fast float %1020, %1044
  %1047 = fmul fast float %1023, %1045
  %1048 = fmul fast float %1038, %1046
  %1049 = call float @dx.op.tertiary.f32(i32 46, float %1039, float %1047, float %1048)  ; FMad(a,b,c)
  %1050 = fmul fast float %1037, %1046
  %1051 = call float @dx.op.tertiary.f32(i32 46, float %1038, float %1047, float %1050)  ; FMad(a,b,c)
  %1052 = fadd fast float %1029, %1049
  %1053 = fadd fast float %1032, %1051
  %1054 = icmp ugt i32 %1003, 1
  %1055 = icmp ugt i32 %1001, 33554431
  %1056 = or i1 %1055, %1054
  br i1 %1056, label %1057, label %1082

; <label>:1057                                    ; preds = %984
  %1058 = add i32 %43, 244
  %1059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.i32 %1059, 0
  %1061 = lshr i32 %1060, 16
  %1062 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1061)  ; LegacyF16ToF32(value)
  %1063 = fmul fast float %1025, %1062
  %1064 = call float @dx.op.unary.f32(i32 22, float %1063)  ; Frc(value)
  %1065 = mul nuw nsw i32 %1003, %1004
  %1066 = uitofp i32 %1065 to float
  %1067 = fmul fast float %1064, %1066
  %1068 = call float @dx.op.unary.f32(i32 27, float %1067)  ; Round_ni(value)
  %1069 = fptoui float %1068 to i32
  %1070 = urem i32 %1069, %1003
  %1071 = udiv i32 %1069, %1004
  %1072 = call float @dx.op.unary.f32(i32 22, float %1052)  ; Frc(value)
  %1073 = call float @dx.op.unary.f32(i32 22, float %1053)  ; Frc(value)
  %1074 = uitofp i32 %1070 to float
  %1075 = uitofp i32 %1071 to float
  %1076 = fadd fast float %1072, %1074
  %1077 = fadd fast float %1073, %1075
  %1078 = uitofp i32 %1003 to float
  %1079 = uitofp i32 %1004 to float
  %1080 = fdiv fast float %1076, %1078
  %1081 = fdiv fast float %1077, %1079
  br label %1082

; <label>:1082                                    ; preds = %1057, %984
  %1083 = phi float [ %1080, %1057 ], [ %1052, %984 ]
  %1084 = phi float [ %1081, %1057 ], [ %1053, %984 ]
  %1085 = and i32 %978, 16777216
  %1086 = icmp eq i32 %1085, 0
  br i1 %1086, label %1196, label %1087

; <label>:1087                                    ; preds = %1082
  %1088 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1089 = extractvalue %dx.types.CBufRet.f32 %1088, 0
  %1090 = extractvalue %dx.types.CBufRet.f32 %1088, 1
  %1091 = extractvalue %dx.types.CBufRet.f32 %1088, 2
  %1092 = fadd fast float %1089, %141
  %1093 = fadd fast float %1090, %142
  %1094 = fadd fast float %1091, %143
  %1095 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1096 = extractvalue %dx.types.CBufRet.f32 %1095, 0
  %1097 = call float @dx.op.unary.f32(i32 7, float %1096)  ; Saturate(value)
  %1098 = icmp eq i32 %44, 65535
  br i1 %1098, label %1193, label %1099

; <label>:1099                                    ; preds = %1087
  %1100 = lshr i32 %44, 1
  %1101 = shl i32 %1100, 2
  %1102 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1101, i32 undef)  ; BufferLoad(srv,index,wot)
  %1103 = extractvalue %dx.types.ResRet.i32 %1102, 0
  %1104 = and i32 %44, 1
  %1105 = icmp ne i32 %1104, 0
  %1106 = lshr i32 %1103, 16
  %1107 = and i32 %1103, 65535
  %1108 = select i1 %1105, i32 %1106, i32 %1107
  %1109 = icmp eq i32 %1108, 65535
  br i1 %1109, label %1189, label %1110

; <label>:1110                                    ; preds = %1099
  %1111 = mul nuw nsw i32 %1108, 40
  %1112 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1111, i32 undef)  ; BufferLoad(srv,index,wot)
  %1113 = extractvalue %dx.types.ResRet.f32 %1112, 0
  %1114 = extractvalue %dx.types.ResRet.f32 %1112, 1
  %1115 = extractvalue %dx.types.ResRet.f32 %1112, 2
  %1116 = add nuw nsw i32 %1111, 12
  %1117 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1116, i32 undef)  ; BufferLoad(srv,index,wot)
  %1118 = extractvalue %dx.types.ResRet.f32 %1117, 0
  %1119 = extractvalue %dx.types.ResRet.f32 %1117, 1
  %1120 = extractvalue %dx.types.ResRet.f32 %1117, 2
  %1121 = add nuw nsw i32 %1111, 24
  %1122 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1121, i32 undef)  ; BufferLoad(srv,index,wot)
  %1123 = extractvalue %dx.types.ResRet.f32 %1122, 0
  %1124 = extractvalue %dx.types.ResRet.f32 %1122, 1
  %1125 = extractvalue %dx.types.ResRet.f32 %1122, 2
  %1126 = add nuw nsw i32 %1111, 36
  %1127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1126, i32 undef)  ; BufferLoad(srv,index,wot)
  %1128 = extractvalue %dx.types.ResRet.f32 %1127, 0
  %1129 = fsub fast float %1092, %1113
  %1130 = fsub fast float %1093, %1114
  %1131 = fsub fast float %1094, %1115
  %1132 = fmul fast float %1128, %1129
  %1133 = fmul fast float %1128, %1130
  %1134 = fmul fast float %1128, %1131
  %1135 = call float @dx.op.unary.f32(i32 27, float %1132)  ; Round_ni(value)
  %1136 = call float @dx.op.unary.f32(i32 27, float %1133)  ; Round_ni(value)
  %1137 = call float @dx.op.unary.f32(i32 27, float %1134)  ; Round_ni(value)
  %1138 = fadd fast float %1135, 5.000000e-01
  %1139 = fadd fast float %1136, 5.000000e-01
  %1140 = fadd fast float %1137, 5.000000e-01
  %1141 = fmul fast float %1138, %1118
  %1142 = fmul fast float %1139, %1119
  %1143 = fmul fast float %1140, %1120
  %1144 = shl i32 %44, 2
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = add i32 %1146, 0
  %1148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1149 = call float @dx.op.unary.f32(i32 22, float %1141)  ; Frc(value)
  %1150 = call float @dx.op.unary.f32(i32 22, float %1142)  ; Frc(value)
  %1151 = call float @dx.op.unary.f32(i32 22, float %1143)  ; Frc(value)
  %1152 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1148, %dx.types.Handle %40, float %1149, float %1150, float %1151, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1153 = extractvalue %dx.types.ResRet.f32 %1152, 0
  %1154 = extractvalue %dx.types.ResRet.f32 %1152, 1
  %1155 = extractvalue %dx.types.ResRet.f32 %1152, 2
  %1156 = fmul fast float %1153, 1.023000e+03
  %1157 = fmul fast float %1154, 1.023000e+03
  %1158 = fmul fast float %1155, 1.023000e+03
  %1159 = fadd fast float %1156, 5.000000e-01
  %1160 = fadd fast float %1157, 5.000000e-01
  %1161 = fadd fast float %1158, 5.000000e-01
  %1162 = call float @dx.op.unary.f32(i32 27, float %1159)  ; Round_ni(value)
  %1163 = call float @dx.op.unary.f32(i32 27, float %1160)  ; Round_ni(value)
  %1164 = call float @dx.op.unary.f32(i32 27, float %1161)  ; Round_ni(value)
  %1165 = fsub fast float %1132, %1135
  %1166 = fsub fast float %1133, %1136
  %1167 = fsub fast float %1134, %1137
  %1168 = fmul fast float %1165, 7.500000e-01
  %1169 = fmul fast float %1166, 7.500000e-01
  %1170 = fmul fast float %1167, 7.500000e-01
  %1171 = fadd fast float %1135, 1.250000e-01
  %1172 = fadd fast float %1171, %1168
  %1173 = fadd fast float %1172, %1162
  %1174 = fadd fast float %1136, 1.250000e-01
  %1175 = fadd fast float %1174, %1169
  %1176 = fadd fast float %1175, %1163
  %1177 = fadd fast float %1137, 1.250000e-01
  %1178 = fadd fast float %1177, %1170
  %1179 = fadd fast float %1178, %1164
  %1180 = fmul fast float %1173, %1123
  %1181 = fmul fast float %1176, %1124
  %1182 = fmul fast float %1179, %1125
  %1183 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1144, i32 undef)  ; BufferLoad(srv,index,wot)
  %1184 = extractvalue %dx.types.ResRet.i32 %1183, 0
  %1185 = add i32 %1184, 0
  %1186 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1185, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1187 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1186, %dx.types.Handle %38, float %1180, float %1181, float %1182, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1188 = extractvalue %dx.types.ResRet.f32 %1187, 0
  br label %1189

; <label>:1189                                    ; preds = %1110, %1099
  %1190 = phi float [ %1188, %1110 ], [ -1.000000e+00, %1099 ]
  %1191 = fadd fast float %1190, %1097
  %1192 = call float @dx.op.unary.f32(i32 7, float %1191)  ; Saturate(value)
  br label %1193

; <label>:1193                                    ; preds = %1189, %1087
  %1194 = phi float [ %1192, %1189 ], [ %1097, %1087 ]
  %1195 = fmul fast float %1194, %422
  br label %1196

; <label>:1196                                    ; preds = %1193, %1082
  %1197 = phi float [ %1195, %1193 ], [ %422, %1082 ]
  %1198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1199 = extractvalue %dx.types.ResRet.i32 %1198, 0
  %1200 = and i32 %1199, 256
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1248, label %1202

; <label>:1202                                    ; preds = %1196
  %1203 = add i32 %43, 476
  %1204 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1203, i32 undef)  ; BufferLoad(srv,index,wot)
  %1205 = extractvalue %dx.types.ResRet.i32 %1204, 0
  %1206 = add i32 %1205, 0
  %1207 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1206, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1208 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1207, %dx.types.Handle %75, float %1083, float %1084, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1209 = extractvalue %dx.types.ResRet.f32 %1208, 0
  %1210 = add i32 %43, 116
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1210, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = shl i32 %1212, 4
  %1214 = and i32 %1213, 32752
  %1215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1214)  ; LegacyF16ToF32(value)
  %1216 = lshr i32 %1212, 7
  %1217 = and i32 %1216, 32752
  %1218 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1217)  ; LegacyF16ToF32(value)
  %1219 = fsub fast float 1.000000e+00, %1197
  %1220 = call float @dx.op.binary.f32(i32 35, float %1219, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1221 = bitcast float %1197 to i32
  %1222 = sitofp i32 %1221 to float
  %1223 = fadd fast float %1222, 0xC1CFBF8940000000
  %1224 = fmul fast float %1218, %1223
  %1225 = fadd fast float %1224, 0x41CFBF8940000000
  %1226 = fptosi float %1225 to i32
  %1227 = bitcast i32 %1226 to float
  %1228 = bitcast float %1220 to i32
  %1229 = sitofp i32 %1228 to float
  %1230 = fadd fast float %1229, 0xC1CFBF8940000000
  %1231 = fmul fast float %1230, %1218
  %1232 = fadd fast float %1231, 0x41CFBF8940000000
  %1233 = fptosi float %1232 to i32
  %1234 = bitcast i32 %1233 to float
  %1235 = fmul fast float %1227, %1215
  %1236 = fmul fast float %1234, %1215
  %1237 = fsub fast float %1220, %1235
  %1238 = fadd fast float %1236, %1220
  %1239 = call float @dx.op.unary.f32(i32 7, float %1237)  ; Saturate(value)
  %1240 = call float @dx.op.unary.f32(i32 7, float %1238)  ; Saturate(value)
  %1241 = fsub fast float %1209, %1239
  %1242 = fsub fast float %1240, %1239
  %1243 = bitcast float %1242 to i32
  %1244 = sub nsw i32 2129859010, %1243
  %1245 = bitcast i32 %1244 to float
  %1246 = fmul fast float %1245, %1241
  %1247 = call float @dx.op.unary.f32(i32 7, float %1246)  ; Saturate(value)
  br label %1248

; <label>:1248                                    ; preds = %1202, %1196
  %1249 = phi float [ %1247, %1202 ], [ %1197, %1196 ]
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = and i32 %1251, 128
  %1253 = icmp eq i32 %1252, 0
  br i1 %1253, label %1270, label %1254

; <label>:1254                                    ; preds = %1248
  %1255 = add i32 %43, 460
  %1256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1255, i32 undef)  ; BufferLoad(srv,index,wot)
  %1257 = extractvalue %dx.types.ResRet.i32 %1256, 0
  %1258 = add i32 %1257, 0
  %1259 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1258, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1260 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1259, %dx.types.Handle %75, float %1083, float %1084, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1261 = extractvalue %dx.types.ResRet.f32 %1260, 0
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %1263, 524288
  %1265 = icmp ne i32 %1264, 0
  %1266 = fcmp fast ogt float %1261, 0x3FE0101020000000
  %1267 = select i1 %1266, float 1.000000e+00, float 0.000000e+00
  %1268 = select i1 %1265, float %1267, float %1261
  %1269 = fmul fast float %1268, %1249
  br label %1270

; <label>:1270                                    ; preds = %1254, %1248
  %1271 = phi float [ %1269, %1254 ], [ %1249, %1248 ]
  %1272 = fcmp fast ult float %1271, 0x3F70101020000000
  br i1 %1272, label %1815, label %1273

; <label>:1273                                    ; preds = %1270
  %1274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1275 = extractvalue %dx.types.ResRet.i32 %1274, 0
  %1276 = and i32 %1275, 16
  %1277 = icmp eq i32 %1276, 0
  br i1 %1277, label %1476, label %1278

; <label>:1278                                    ; preds = %1273
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %999, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = add i32 %43, 412
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = add i32 %1283, 0
  %1285 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1284, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1286 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1285, %dx.types.Handle %74, float %1083, float %1084, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1287 = extractvalue %dx.types.ResRet.f32 %1286, 0
  %1288 = extractvalue %dx.types.ResRet.f32 %1286, 1
  %1289 = extractvalue %dx.types.ResRet.f32 %1286, 2
  %1290 = extractvalue %dx.types.ResRet.f32 %1286, 3
  %1291 = and i32 %1280, 255
  %1292 = uitofp i32 %1291 to float
  %1293 = lshr i32 %1280, 8
  %1294 = and i32 %1293, 255
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1290, %1292
  %1297 = fadd fast float %1296, %1295
  %1298 = fmul fast float %1297, 0x3F70101000000000
  %1299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1300 = extractvalue %dx.types.ResRet.i32 %1299, 0
  %1301 = and i32 %1300, 512
  %1302 = icmp eq i32 %1301, 0
  br i1 %1302, label %1311, label %1303

; <label>:1303                                    ; preds = %1278
  %1304 = add i32 %43, 492
  %1305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1304, i32 undef)  ; BufferLoad(srv,index,wot)
  %1306 = extractvalue %dx.types.ResRet.i32 %1305, 0
  %1307 = add i32 %1306, 0
  %1308 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1307, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1309 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1308, %dx.types.Handle %75, float %1083, float %1084, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1310 = extractvalue %dx.types.ResRet.f32 %1309, 0
  br label %1311

; <label>:1311                                    ; preds = %1303, %1278
  %1312 = phi float [ %1310, %1303 ], [ 1.000000e+00, %1278 ]
  %1313 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1314 = extractvalue %dx.types.ResRet.i32 %1313, 0
  %1315 = and i32 %1314, 33554432
  %1316 = icmp eq i32 %1315, 0
  br i1 %1316, label %1423, label %1317

; <label>:1317                                    ; preds = %1311
  %1318 = add i32 %43, 240
  %1319 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1318, i32 undef)  ; BufferLoad(srv,index,wot)
  %1320 = extractvalue %dx.types.ResRet.i32 %1319, 0
  %1321 = and i32 %1320, 65535
  %1322 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1321)  ; LegacyF16ToF32(value)
  %1323 = lshr i32 %1320, 16
  %1324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1323)  ; LegacyF16ToF32(value)
  %1325 = add i32 %43, 244
  %1326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1325, i32 undef)  ; BufferLoad(srv,index,wot)
  %1327 = extractvalue %dx.types.ResRet.i32 %1326, 0
  %1328 = and i32 %1327, 65535
  %1329 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1328)  ; LegacyF16ToF32(value)
  %1330 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1331 = extractvalue %dx.types.ResRet.i32 %1330, 0
  %1332 = lshr i32 %1331, 24
  %1333 = uitofp i32 %1332 to float
  %1334 = fmul fast float %1333, 0x3F70101020000000
  %1335 = and i32 %1331, 255
  %1336 = uitofp i32 %1335 to float
  %1337 = fmul fast float %1336, 0x3F70101020000000
  %1338 = lshr i32 %1331, 8
  %1339 = and i32 %1338, 255
  %1340 = uitofp i32 %1339 to float
  %1341 = fmul fast float %1340, 0x3F70101020000000
  %1342 = lshr i32 %1331, 16
  %1343 = and i32 %1342, 255
  %1344 = uitofp i32 %1343 to float
  %1345 = fmul fast float %1344, 0x3F70101020000000
  %1346 = add i32 %43, 236
  %1347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1346, i32 undef)  ; BufferLoad(srv,index,wot)
  %1348 = extractvalue %dx.types.ResRet.i32 %1347, 0
  %1349 = lshr i32 %1348, 24
  %1350 = uitofp i32 %1349 to float
  %1351 = fmul fast float %1350, 0x3F70101020000000
  %1352 = and i32 %1348, 255
  %1353 = uitofp i32 %1352 to float
  %1354 = fmul fast float %1353, 0x3F70101020000000
  %1355 = lshr i32 %1348, 8
  %1356 = and i32 %1355, 255
  %1357 = uitofp i32 %1356 to float
  %1358 = fmul fast float %1357, 0x3F70101020000000
  %1359 = lshr i32 %1348, 16
  %1360 = and i32 %1359, 255
  %1361 = uitofp i32 %1360 to float
  %1362 = fmul fast float %1361, 0x3F70101020000000
  %1363 = bitcast float %1287 to i32
  %1364 = ashr i32 %1363, 1
  %1365 = sub nsw i32 1597463174, %1364
  %1366 = bitcast i32 %1365 to float
  %1367 = fmul fast float %1287, 5.000000e-01
  %1368 = fmul fast float %1366, %1366
  %1369 = fmul fast float %1368, %1367
  %1370 = fsub fast float 1.500000e+00, %1369
  %1371 = fmul fast float %1366, %1287
  %1372 = fmul fast float %1371, %1370
  %1373 = bitcast float %1288 to i32
  %1374 = ashr i32 %1373, 1
  %1375 = sub nsw i32 1597463174, %1374
  %1376 = bitcast i32 %1375 to float
  %1377 = fmul fast float %1288, 5.000000e-01
  %1378 = fmul fast float %1376, %1376
  %1379 = fmul fast float %1378, %1377
  %1380 = fsub fast float 1.500000e+00, %1379
  %1381 = fmul fast float %1376, %1288
  %1382 = fmul fast float %1381, %1380
  %1383 = bitcast float %1289 to i32
  %1384 = ashr i32 %1383, 1
  %1385 = sub nsw i32 1597463174, %1384
  %1386 = bitcast i32 %1385 to float
  %1387 = fmul fast float %1289, 5.000000e-01
  %1388 = fmul fast float %1386, %1386
  %1389 = fmul fast float %1388, %1387
  %1390 = fsub fast float 1.500000e+00, %1389
  %1391 = fmul fast float %1386, %1289
  %1392 = fmul fast float %1391, %1390
  %1393 = fsub fast float %1372, %1354
  %1394 = fsub fast float %1382, %1358
  %1395 = fsub fast float %1392, %1362
  %1396 = fmul fast float %1393, %1322
  %1397 = fmul fast float %1394, %1324
  %1398 = fmul fast float %1395, %1329
  %1399 = fadd fast float %1396, %1337
  %1400 = fadd fast float %1397, %1341
  %1401 = fadd fast float %1398, %1345
  %1402 = call float @dx.op.unary.f32(i32 7, float %1399)  ; Saturate(value)
  %1403 = call float @dx.op.unary.f32(i32 7, float %1400)  ; Saturate(value)
  %1404 = call float @dx.op.unary.f32(i32 7, float %1401)  ; Saturate(value)
  %1405 = fmul fast float %1402, %1402
  %1406 = fmul fast float %1403, %1403
  %1407 = fmul fast float %1404, %1404
  %1408 = fsub fast float %1405, %1287
  %1409 = fsub fast float %1406, %1288
  %1410 = fsub fast float %1407, %1289
  %1411 = fmul fast float %1408, %1312
  %1412 = fmul fast float %1409, %1312
  %1413 = fmul fast float %1410, %1312
  %1414 = fadd fast float %1411, %1287
  %1415 = fadd fast float %1412, %1288
  %1416 = fadd fast float %1413, %1289
  %1417 = fadd fast float %1334, %1298
  %1418 = fsub fast float %1417, %1351
  %1419 = call float @dx.op.unary.f32(i32 7, float %1418)  ; Saturate(value)
  %1420 = fsub fast float %1419, %1298
  %1421 = fmul fast float %1420, %1312
  %1422 = fadd fast float %1421, %1298
  br label %1476

; <label>:1423                                    ; preds = %1311
  %1424 = and i32 %1314, 134217728
  %1425 = icmp eq i32 %1424, 0
  br i1 %1425, label %1460, label %1426

; <label>:1426                                    ; preds = %1423
  %1427 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %1428 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %1429 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %1430 = fadd fast float %1427, -5.000000e-01
  %1431 = fadd fast float %1428, -5.000000e-01
  %1432 = fadd fast float %1429, -5.000000e-01
  %1433 = fmul fast float %1430, %1312
  %1434 = fmul fast float %1431, %1312
  %1435 = fmul fast float %1432, %1312
  %1436 = fadd fast float %1433, 5.000000e-01
  %1437 = fadd fast float %1434, 5.000000e-01
  %1438 = fadd fast float %1435, 5.000000e-01
  %1439 = call float @dx.op.unary.f32(i32 24, float %1287)  ; Sqrt(value)
  %1440 = call float @dx.op.unary.f32(i32 24, float %1288)  ; Sqrt(value)
  %1441 = call float @dx.op.unary.f32(i32 24, float %1289)  ; Sqrt(value)
  %1442 = fmul fast float %1436, 2.000000e+00
  %1443 = fsub fast float 1.000000e+00, %1442
  %1444 = fmul fast float %1443, %1439
  %1445 = fadd fast float %1444, %1442
  %1446 = fmul fast float %1445, %1439
  %1447 = fmul fast float %1437, 2.000000e+00
  %1448 = fsub fast float 1.000000e+00, %1447
  %1449 = fmul fast float %1448, %1440
  %1450 = fadd fast float %1449, %1447
  %1451 = fmul fast float %1450, %1440
  %1452 = fmul fast float %1438, 2.000000e+00
  %1453 = fsub fast float 1.000000e+00, %1452
  %1454 = fmul fast float %1453, %1441
  %1455 = fadd fast float %1454, %1452
  %1456 = fmul fast float %1455, %1441
  %1457 = fmul fast float %1446, %1446
  %1458 = fmul fast float %1451, %1451
  %1459 = fmul fast float %1456, %1456
  br label %1476

; <label>:1460                                    ; preds = %1423
  %1461 = fmul fast float %257, %257
  %1462 = fmul fast float %261, %261
  %1463 = fmul fast float %265, %265
  %1464 = fadd fast float %1461, -1.000000e+00
  %1465 = fadd fast float %1462, -1.000000e+00
  %1466 = fadd fast float %1463, -1.000000e+00
  %1467 = fmul fast float %1312, %1464
  %1468 = fmul fast float %1312, %1465
  %1469 = fmul fast float %1312, %1466
  %1470 = fadd fast float %1467, 1.000000e+00
  %1471 = fadd fast float %1468, 1.000000e+00
  %1472 = fadd fast float %1469, 1.000000e+00
  %1473 = fmul fast float %1470, %1287
  %1474 = fmul fast float %1471, %1288
  %1475 = fmul fast float %1472, %1289
  br label %1476

; <label>:1476                                    ; preds = %1460, %1426, %1317, %1273
  %1477 = phi float [ %1422, %1317 ], [ %1298, %1426 ], [ %1298, %1460 ], [ 0x3FA23C0BE0000000, %1273 ]
  %1478 = phi float [ %1414, %1317 ], [ %1457, %1426 ], [ %1473, %1460 ], [ 1.000000e+00, %1273 ]
  %1479 = phi float [ %1415, %1317 ], [ %1458, %1426 ], [ %1474, %1460 ], [ 1.000000e+00, %1273 ]
  %1480 = phi float [ %1416, %1317 ], [ %1459, %1426 ], [ %1475, %1460 ], [ 1.000000e+00, %1273 ]
  %1481 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1482 = extractvalue %dx.types.CBufRet.i32 %1481, 1
  %1483 = and i32 %1482, 1
  %1484 = icmp ne i32 %1483, 0
  %1485 = add i32 %43, 372
  %1486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1485, i32 undef)  ; BufferLoad(srv,index,wot)
  %1487 = extractvalue %dx.types.ResRet.i32 %1486, 0
  %1488 = and i32 %1487, 32
  %1489 = icmp ne i32 %1488, 0
  %1490 = and i1 %1484, %1489
  %1491 = select i1 %1490, float 1.000000e+00, float %1478
  %1492 = select i1 %1490, float 0x3FD3333340000000, float %1479
  %1493 = select i1 %1490, float 0x3FD3333340000000, float %1480
  %1494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1495 = extractvalue %dx.types.ResRet.i32 %1494, 0
  %1496 = and i32 %1495, 32
  %1497 = icmp eq i32 %1496, 0
  br i1 %1497, label %1570, label %1498

; <label>:1498                                    ; preds = %1476
  %1499 = add i32 %43, 108
  %1500 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1499, i32 undef)  ; BufferLoad(srv,index,wot)
  %1501 = extractvalue %dx.types.ResRet.i32 %1500, 0
  %1502 = add i32 %43, 428
  %1503 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1502, i32 undef)  ; BufferLoad(srv,index,wot)
  %1504 = extractvalue %dx.types.ResRet.i32 %1503, 0
  %1505 = add i32 %1504, 0
  %1506 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1505, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1507 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1506, %dx.types.Handle %74, float %1083, float %1084, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1508 = extractvalue %dx.types.ResRet.f32 %1507, 0
  %1509 = extractvalue %dx.types.ResRet.f32 %1507, 1
  %1510 = extractvalue %dx.types.ResRet.f32 %1507, 2
  %1511 = extractvalue %dx.types.ResRet.f32 %1507, 3
  %1512 = and i32 %1501, 255
  %1513 = uitofp i32 %1512 to float
  %1514 = lshr i32 %1501, 8
  %1515 = and i32 %1514, 255
  %1516 = uitofp i32 %1515 to float
  %1517 = lshr i32 %1501, 16
  %1518 = and i32 %1517, 255
  %1519 = uitofp i32 %1518 to float
  %1520 = fmul fast float %1519, 0x3F70101000000000
  %1521 = fmul fast float %1508, %1513
  %1522 = fadd fast float %1521, %1516
  %1523 = fmul fast float %1522, 0x3F70101000000000
  %1524 = fadd fast float %1509, -5.000000e-01
  %1525 = fadd fast float %1511, -5.000000e-01
  %1526 = fmul fast float %1524, %1520
  %1527 = fmul fast float %1525, %1520
  %1528 = fadd fast float %1526, 5.000000e-01
  %1529 = fadd fast float %1527, 5.000000e-01
  %1530 = fmul fast float %1528, 2.000000e+00
  %1531 = fadd fast float %1530, -1.000000e+00
  %1532 = fmul fast float %1529, 2.000000e+00
  %1533 = fadd fast float %1532, -1.000000e+00
  %1534 = fadd fast float %1531, %1533
  %1535 = fmul fast float %1534, 5.000000e-01
  %1536 = fsub fast float %1531, %1533
  %1537 = fmul fast float %1536, 5.000000e-01
  %1538 = call float @dx.op.unary.f32(i32 6, float %1535)  ; FAbs(value)
  %1539 = fsub fast float 1.000000e+00, %1538
  %1540 = call float @dx.op.unary.f32(i32 6, float %1537)  ; FAbs(value)
  %1541 = fsub fast float %1539, %1540
  %1542 = call float @dx.op.dot3.f32(i32 55, float %1535, float %1537, float %1541, float %1535, float %1537, float %1541)  ; Dot3(ax,ay,az,bx,by,bz)
  %1543 = call float @dx.op.unary.f32(i32 25, float %1542)  ; Rsqrt(value)
  %1544 = fmul fast float %1535, %1543
  %1545 = fmul fast float %1537, %1543
  %1546 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1547 = extractvalue %dx.types.ResRet.i32 %1546, 0
  %1548 = and i32 %1547, 67108864
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1566, label %1550

; <label>:1550                                    ; preds = %1498
  %1551 = add i32 %43, 296
  %1552 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1551, i32 undef)  ; BufferLoad(srv,index,wot)
  %1553 = extractvalue %dx.types.ResRet.i32 %1552, 0
  %1554 = and i32 %1553, 65535
  %1555 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1554)  ; LegacyF16ToF32(value)
  %1556 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %993, i32 undef)  ; BufferLoad(srv,index,wot)
  %1557 = extractvalue %dx.types.ResRet.i32 %1556, 0
  %1558 = and i32 %1557, 65535
  %1559 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1558)  ; LegacyF16ToF32(value)
  %1560 = lshr i32 %1553, 16
  %1561 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1560)  ; LegacyF16ToF32(value)
  %1562 = fsub fast float %1523, %1561
  %1563 = fmul fast float %1562, %1555
  %1564 = fadd fast float %1563, %1559
  %1565 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  br label %1566

; <label>:1566                                    ; preds = %1550, %1498
  %1567 = phi float [ %1565, %1550 ], [ %1523, %1498 ]
  %1568 = call float @dx.op.dot2.f32(i32 54, float %1544, float %1545, float %987, float %988)  ; Dot2(ax,ay,bx,by)
  %1569 = call float @dx.op.dot2.f32(i32 54, float %1544, float %1545, float %989, float %990)  ; Dot2(ax,ay,bx,by)
  br label %1570

; <label>:1570                                    ; preds = %1566, %1476
  %1571 = phi float [ %1567, %1566 ], [ 0x3FD6666660000000, %1476 ]
  %1572 = phi float [ %1568, %1566 ], [ 0.000000e+00, %1476 ]
  %1573 = phi float [ %1569, %1566 ], [ 0.000000e+00, %1476 ]
  %1574 = phi float [ %1510, %1566 ], [ 1.000000e+00, %1476 ]
  %1575 = add i32 %43, 176
  %1576 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1575, i32 undef)  ; BufferLoad(srv,index,wot)
  %1577 = extractvalue %dx.types.ResRet.i32 %1576, 0
  %1578 = lshr i32 %1577, 22
  %1579 = shl nuw nsw i32 %1578, 5
  %1580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1579)  ; LegacyF16ToF32(value)
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = and i32 %1582, 64
  %1584 = icmp eq i32 %1583, 0
  br i1 %1584, label %1618, label %1585

; <label>:1585                                    ; preds = %1570
  %1586 = add i32 %43, 444
  %1587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1586, i32 undef)  ; BufferLoad(srv,index,wot)
  %1588 = extractvalue %dx.types.ResRet.i32 %1587, 0
  %1589 = add i32 %1588, 0
  %1590 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1589, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1591 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1592 = extractvalue %dx.types.ResRet.i32 %1591, 0
  %1593 = and i32 %1592, 131072
  %1594 = icmp eq i32 %1593, 0
  %1595 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1590, %dx.types.Handle %74, float %1083, float %1084, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1596 = extractvalue %dx.types.ResRet.f32 %1595, 0
  %1597 = extractvalue %dx.types.ResRet.f32 %1595, 1
  %1598 = extractvalue %dx.types.ResRet.f32 %1595, 2
  %1599 = fmul fast float %1596, %245
  %1600 = fmul fast float %1597, %248
  %1601 = fmul fast float %1598, %251
  br i1 %1594, label %1608, label %1602

; <label>:1602                                    ; preds = %1585
  %1603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1604 = extractvalue %dx.types.CBufRet.f32 %1603, 0
  %1605 = fmul fast float %1604, %1599
  %1606 = fmul fast float %1604, %1600
  %1607 = fmul fast float %1604, %1601
  br label %1608

; <label>:1608                                    ; preds = %1602, %1585
  %1609 = phi float [ %1605, %1602 ], [ %1599, %1585 ]
  %1610 = phi float [ %1606, %1602 ], [ %1600, %1585 ]
  %1611 = phi float [ %1607, %1602 ], [ %1601, %1585 ]
  %1612 = fmul fast float %1609, %1580
  %1613 = select i1 %183, float %1612, float %1609
  %1614 = call float @dx.op.dot3.f32(i32 55, float %1613, float %1610, float %1611, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1615 = select i1 %183, float 0.000000e+00, float %1609
  %1616 = select i1 %183, float %1614, float %1610
  %1617 = select i1 %183, float 0.000000e+00, float %1611
  br label %1618

; <label>:1618                                    ; preds = %1608, %1570
  %1619 = phi float [ %1615, %1608 ], [ 0.000000e+00, %1570 ]
  %1620 = phi float [ %1616, %1608 ], [ 0.000000e+00, %1570 ]
  %1621 = phi float [ %1617, %1608 ], [ 0.000000e+00, %1570 ]
  %1622 = add i32 %43, 112
  %1623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1622, i32 undef)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.i32 %1623, 0
  %1625 = and i32 %1624, 255
  %1626 = uitofp i32 %1625 to float
  %1627 = lshr i32 %1624, 8
  %1628 = and i32 %1627, 255
  %1629 = uitofp i32 %1628 to float
  %1630 = call float @dx.op.dot3.f32(i32 55, float %1491, float %1492, float %1493, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1631 = fmul fast float %1629, %1630
  %1632 = fadd fast float %1631, %1626
  %1633 = fmul fast float %1632, 0x3F70101020000000
  %1634 = call float @dx.op.unary.f32(i32 7, float %1633)  ; Saturate(value)
  br i1 %975, label %1635, label %1643

; <label>:1635                                    ; preds = %1618
  %1636 = fsub fast float 1.000000e+00, %1271
  %1637 = fmul fast float %1636, %963
  %1638 = fmul fast float %1636, %964
  %1639 = fmul fast float %1636, %965
  %1640 = fmul fast float %1636, %966
  %1641 = fmul fast float %1636, %967
  %1642 = fmul fast float %1636, %968
  br label %1643

; <label>:1643                                    ; preds = %1635, %1618
  %1644 = phi float [ %1637, %1635 ], [ %963, %1618 ]
  %1645 = phi float [ %1638, %1635 ], [ %964, %1618 ]
  %1646 = phi float [ %1639, %1635 ], [ %965, %1618 ]
  %1647 = phi float [ %1640, %1635 ], [ %966, %1618 ]
  %1648 = phi float [ %1641, %1635 ], [ %967, %1618 ]
  %1649 = phi float [ %1642, %1635 ], [ %968, %1618 ]
  %1650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %976, i32 undef)  ; BufferLoad(srv,index,wot)
  %1651 = extractvalue %dx.types.ResRet.i32 %1650, 0
  %1652 = and i32 %1651, 3
  %1653 = icmp eq i32 %1652, 3
  br i1 %1653, label %1732, label %1654

; <label>:1654                                    ; preds = %1643
  %1655 = and i32 %1651, 16
  %1656 = icmp ne i32 %1655, 0
  %1657 = select i1 %1656, float %1271, float 0.000000e+00
  %1658 = icmp eq i32 %1652, 0
  br i1 %1658, label %1659, label %1687

; <label>:1659                                    ; preds = %1654
  %1660 = and i32 %1651, 64
  %1661 = icmp ne i32 %1660, 0
  %1662 = select i1 %1661, float %1271, float 0.000000e+00
  %1663 = fsub fast float %1491, %1644
  %1664 = fsub fast float %1492, %1645
  %1665 = fsub fast float %1493, %1646
  %1666 = fmul fast float %1657, %1663
  %1667 = fmul fast float %1657, %1664
  %1668 = fmul fast float %1657, %1665
  %1669 = fadd fast float %1666, %1644
  %1670 = fadd fast float %1667, %1645
  %1671 = fadd fast float %1668, %1646
  %1672 = fsub fast float %1477, %969
  %1673 = fmul fast float %1657, %1672
  %1674 = fadd fast float %1673, %969
  %1675 = fsub fast float %1619, %1647
  %1676 = fsub fast float %1620, %1648
  %1677 = fsub fast float %1621, %1649
  %1678 = fmul fast float %1662, %1675
  %1679 = fmul fast float %1662, %1676
  %1680 = fmul fast float %1662, %1677
  %1681 = fadd fast float %1678, %1647
  %1682 = fadd fast float %1679, %1648
  %1683 = fadd fast float %1680, %1649
  %1684 = fsub fast float %1634, %973
  %1685 = fmul fast float %1657, %1684
  %1686 = fadd fast float %1685, %973
  br label %1732

; <label>:1687                                    ; preds = %1654
  %1688 = icmp eq i32 %1652, 1
  br i1 %1688, label %1689, label %1702

; <label>:1689                                    ; preds = %1687
  %1690 = fadd fast float %1491, -1.000000e+00
  %1691 = fadd fast float %1492, -1.000000e+00
  %1692 = fadd fast float %1493, -1.000000e+00
  %1693 = fmul fast float %1657, %1690
  %1694 = fmul fast float %1657, %1691
  %1695 = fmul fast float %1657, %1692
  %1696 = fadd fast float %1693, 1.000000e+00
  %1697 = fadd fast float %1694, 1.000000e+00
  %1698 = fadd fast float %1695, 1.000000e+00
  %1699 = fmul fast float %1696, %1644
  %1700 = fmul fast float %1697, %1645
  %1701 = fmul fast float %1698, %1646
  br label %1732

; <label>:1702                                    ; preds = %1687
  %1703 = icmp eq i32 %1652, 2
  br i1 %1703, label %1704, label %1732

; <label>:1704                                    ; preds = %1702
  %1705 = call float @dx.op.unary.f32(i32 24, float %1491)  ; Sqrt(value)
  %1706 = call float @dx.op.unary.f32(i32 24, float %1492)  ; Sqrt(value)
  %1707 = call float @dx.op.unary.f32(i32 24, float %1493)  ; Sqrt(value)
  %1708 = fadd fast float %1705, -5.000000e-01
  %1709 = fadd fast float %1706, -5.000000e-01
  %1710 = fadd fast float %1707, -5.000000e-01
  %1711 = fmul fast float %1708, %1657
  %1712 = fmul fast float %1709, %1657
  %1713 = fmul fast float %1710, %1657
  %1714 = fadd fast float %1711, 5.000000e-01
  %1715 = fadd fast float %1712, 5.000000e-01
  %1716 = fadd fast float %1713, 5.000000e-01
  %1717 = fmul fast float %1714, 2.000000e+00
  %1718 = fsub fast float 1.000000e+00, %1717
  %1719 = fmul fast float %1718, %1644
  %1720 = fadd fast float %1719, %1717
  %1721 = fmul fast float %1720, %1644
  %1722 = fmul fast float %1715, 2.000000e+00
  %1723 = fsub fast float 1.000000e+00, %1722
  %1724 = fmul fast float %1723, %1645
  %1725 = fadd fast float %1724, %1722
  %1726 = fmul fast float %1725, %1645
  %1727 = fmul fast float %1716, 2.000000e+00
  %1728 = fsub fast float 1.000000e+00, %1727
  %1729 = fmul fast float %1728, %1646
  %1730 = fadd fast float %1729, %1727
  %1731 = fmul fast float %1730, %1646
  br label %1732

; <label>:1732                                    ; preds = %1704, %1702, %1689, %1659, %1643
  %1733 = phi float [ %1644, %1643 ], [ %1721, %1704 ], [ %1644, %1702 ], [ %1699, %1689 ], [ %1669, %1659 ]
  %1734 = phi float [ %1645, %1643 ], [ %1726, %1704 ], [ %1645, %1702 ], [ %1700, %1689 ], [ %1670, %1659 ]
  %1735 = phi float [ %1646, %1643 ], [ %1731, %1704 ], [ %1646, %1702 ], [ %1701, %1689 ], [ %1671, %1659 ]
  %1736 = phi float [ %1647, %1643 ], [ %1647, %1704 ], [ %1647, %1702 ], [ %1647, %1689 ], [ %1681, %1659 ]
  %1737 = phi float [ %1648, %1643 ], [ %1648, %1704 ], [ %1648, %1702 ], [ %1648, %1689 ], [ %1682, %1659 ]
  %1738 = phi float [ %1649, %1643 ], [ %1649, %1704 ], [ %1649, %1702 ], [ %1649, %1689 ], [ %1683, %1659 ]
  %1739 = phi float [ %969, %1643 ], [ %969, %1704 ], [ %969, %1702 ], [ %969, %1689 ], [ %1674, %1659 ]
  %1740 = phi float [ %973, %1643 ], [ %973, %1704 ], [ %973, %1702 ], [ %973, %1689 ], [ %1686, %1659 ]
  %1741 = and i32 %1651, 12
  %1742 = icmp eq i32 %1741, 12
  br i1 %1742, label %1815, label %1743

; <label>:1743                                    ; preds = %1732
  %1744 = and i32 %1651, 2097184
  %1745 = icmp eq i32 %1744, 2097184
  %1746 = select i1 %1745, float %1271, float 0.000000e+00
  %1747 = and i32 %1651, 4194336
  %1748 = icmp eq i32 %1747, 4194336
  %1749 = select i1 %1748, float %1271, float 0.000000e+00
  %1750 = and i32 %1651, 8388640
  %1751 = icmp eq i32 %1750, 8388640
  %1752 = select i1 %1751, float %1271, float 0.000000e+00
  %1753 = icmp eq i32 %1741, 0
  br i1 %1753, label %1754, label %1767

; <label>:1754                                    ; preds = %1743
  %1755 = fsub fast float %1572, %961
  %1756 = fsub fast float %1573, %962
  %1757 = fmul fast float %1746, %1755
  %1758 = fmul fast float %1746, %1756
  %1759 = fadd fast float %1757, %961
  %1760 = fadd fast float %1758, %962
  %1761 = fsub fast float %1574, %972
  %1762 = fmul fast float %1749, %1761
  %1763 = fadd fast float %1762, %972
  %1764 = fsub fast float %1571, %971
  %1765 = fmul fast float %1752, %1764
  %1766 = fadd fast float %1765, %971
  br label %1815

; <label>:1767                                    ; preds = %1743
  %1768 = icmp eq i32 %1741, 4
  br i1 %1768, label %1769, label %1801

; <label>:1769                                    ; preds = %1767
  %1770 = fmul fast float %1746, %1572
  %1771 = fmul fast float %1746, %1573
  %1772 = fadd fast float %1770, %961
  %1773 = fadd fast float %1771, %962
  %1774 = call float @dx.op.binary.f32(i32 36, float %972, float %1574)  ; FMin(a,b)
  %1775 = fsub fast float %1774, %972
  %1776 = fmul fast float %1775, %1749
  %1777 = fadd fast float %1776, %972
  %1778 = fadd fast float %1571, %971
  %1779 = fmul fast float %1778, 0x3FF337FAE0000000
  %1780 = fmul fast float %971, %971
  %1781 = fmul fast float %1571, %1571
  %1782 = fadd fast float %1781, %1780
  %1783 = fmul fast float %1782, 0x3FE5152B00000000
  %1784 = fmul fast float %971, 0xBFCC1F85E0000000
  %1785 = fmul fast float %1784, %1571
  %1786 = fadd fast float %1785, 0xBFE1363700000000
  %1787 = fadd fast float %1786, %1779
  %1788 = fsub fast float %1787, %1783
  %1789 = fmul fast float %1778, 0x3FBA6F0D00000000
  %1790 = fmul fast float %1782, 0x3FD0432880000000
  %1791 = fmul fast float %971, 0xBFEF110800000000
  %1792 = fmul fast float %1791, %1571
  %1793 = fadd fast float %1792, 1.000000e+00
  %1794 = fsub fast float %1793, %1789
  %1795 = fadd fast float %1794, %1790
  %1796 = fdiv fast float %1788, %1795
  %1797 = call float @dx.op.unary.f32(i32 7, float %1796)  ; Saturate(value)
  %1798 = fsub fast float %1797, %971
  %1799 = fmul fast float %1798, %1752
  %1800 = fadd fast float %1799, %971
  br label %1815

; <label>:1801                                    ; preds = %1767
  %1802 = icmp eq i32 %1741, 8
  br i1 %1802, label %1803, label %1815

; <label>:1803                                    ; preds = %1801
  %1804 = fmul fast float %1746, %1572
  %1805 = fmul fast float %1746, %1573
  %1806 = fadd fast float %1804, %961
  %1807 = fadd fast float %1805, %962
  %1808 = call float @dx.op.binary.f32(i32 36, float %972, float %1574)  ; FMin(a,b)
  %1809 = fsub fast float %1808, %972
  %1810 = fmul fast float %1809, %1749
  %1811 = fadd fast float %1810, %972
  %1812 = fsub fast float %1571, %971
  %1813 = fmul fast float %1752, %1812
  %1814 = fadd fast float %1813, %971
  br label %1815

; <label>:1815                                    ; preds = %1803, %1801, %1769, %1754, %1732, %1270, %974, %960
  %1816 = phi float [ %961, %1732 ], [ %961, %1270 ], [ %961, %960 ], [ %1806, %1803 ], [ %961, %1801 ], [ %1772, %1769 ], [ %1759, %1754 ], [ %961, %974 ]
  %1817 = phi float [ %962, %1732 ], [ %962, %1270 ], [ %962, %960 ], [ %1807, %1803 ], [ %962, %1801 ], [ %1773, %1769 ], [ %1760, %1754 ], [ %962, %974 ]
  %1818 = phi float [ %1733, %1732 ], [ %963, %1270 ], [ %963, %960 ], [ %1733, %1803 ], [ %1733, %1801 ], [ %1733, %1769 ], [ %1733, %1754 ], [ %963, %974 ]
  %1819 = phi float [ %1734, %1732 ], [ %964, %1270 ], [ %964, %960 ], [ %1734, %1803 ], [ %1734, %1801 ], [ %1734, %1769 ], [ %1734, %1754 ], [ %964, %974 ]
  %1820 = phi float [ %1735, %1732 ], [ %965, %1270 ], [ %965, %960 ], [ %1735, %1803 ], [ %1735, %1801 ], [ %1735, %1769 ], [ %1735, %1754 ], [ %965, %974 ]
  %1821 = phi float [ %1736, %1732 ], [ %966, %1270 ], [ %966, %960 ], [ %1736, %1803 ], [ %1736, %1801 ], [ %1736, %1769 ], [ %1736, %1754 ], [ %966, %974 ]
  %1822 = phi float [ %1737, %1732 ], [ %967, %1270 ], [ %967, %960 ], [ %1737, %1803 ], [ %1737, %1801 ], [ %1737, %1769 ], [ %1737, %1754 ], [ %967, %974 ]
  %1823 = phi float [ %1738, %1732 ], [ %968, %1270 ], [ %968, %960 ], [ %1738, %1803 ], [ %1738, %1801 ], [ %1738, %1769 ], [ %1738, %1754 ], [ %968, %974 ]
  %1824 = phi float [ %1739, %1732 ], [ %969, %1270 ], [ %969, %960 ], [ %1739, %1803 ], [ %1739, %1801 ], [ %1739, %1769 ], [ %1739, %1754 ], [ %969, %974 ]
  %1825 = phi float [ %971, %1732 ], [ %971, %1270 ], [ %971, %960 ], [ %1814, %1803 ], [ %971, %1801 ], [ %1800, %1769 ], [ %1766, %1754 ], [ %971, %974 ]
  %1826 = phi float [ %972, %1732 ], [ %972, %1270 ], [ %972, %960 ], [ %1811, %1803 ], [ %972, %1801 ], [ %1777, %1769 ], [ %1763, %1754 ], [ %972, %974 ]
  %1827 = phi float [ %1740, %1732 ], [ %973, %1270 ], [ %973, %960 ], [ %1740, %1803 ], [ %1740, %1801 ], [ %1740, %1769 ], [ %1740, %1754 ], [ %973, %974 ]
  br i1 %372, label %2669, label %1828

; <label>:1828                                    ; preds = %1815
  %1829 = icmp ult i32 %425, 3
  %1830 = add i32 %43, 56
  %1831 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %1832 = extractvalue %dx.types.ResRet.i32 %1831, 0
  %1833 = add i32 %43, 60
  %1834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1833, i32 undef)  ; BufferLoad(srv,index,wot)
  %1835 = extractvalue %dx.types.ResRet.i32 %1834, 0
  %1836 = or i32 %1835, %1832
  %1837 = icmp eq i32 %1836, 0
  br i1 %1837, label %2669, label %1838

; <label>:1838                                    ; preds = %1828
  %1839 = and i32 %1832, 262144
  %1840 = icmp ne i32 %1839, 0
  %1841 = select i1 %1840, float %46, float 1.000000e+00
  %1842 = select i1 %1840, float %47, float 0.000000e+00
  %1843 = select i1 %1840, float %48, float 0.000000e+00
  %1844 = select i1 %1840, float %49, float 1.000000e+00
  %1845 = select i1 %1840, float %50, float %66
  %1846 = select i1 %1840, float %51, float %67
  %1847 = add i32 %43, 316
  %1848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %1849 = extractvalue %dx.types.ResRet.i32 %1848, 0
  %1850 = lshr i32 %1849, 16
  %1851 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1850)  ; LegacyF16ToF32(value)
  %1852 = fmul fast float %1851, 0x3F50624DE0000000
  %1853 = add i32 %43, 120
  %1854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %1855 = extractvalue %dx.types.ResRet.i32 %1854, 0
  %1856 = lshr i32 %1855, 16
  %1857 = and i32 %1856, 255
  %1858 = lshr i32 %1855, 24
  %1859 = add i32 %43, 324
  %1860 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1859, i32 undef)  ; BufferLoad(srv,index,wot)
  %1861 = extractvalue %dx.types.ResRet.i32 %1860, 0
  %1862 = and i32 %1861, 65535
  %1863 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1862)  ; LegacyF16ToF32(value)
  %1864 = lshr i32 %1861, 16
  %1865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1864)  ; LegacyF16ToF32(value)
  %1866 = add i32 %43, 64
  %1867 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1866, i32 undef)  ; BufferLoad(srv,index,wot)
  %1868 = extractvalue %dx.types.ResRet.i32 %1867, 0
  %1869 = lshr i32 %1868, 22
  %1870 = shl nuw nsw i32 %1869, 5
  %1871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1870)  ; LegacyF16ToF32(value)
  %1872 = shl i32 %1868, 4
  %1873 = and i32 %1872, 32752
  %1874 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1873)  ; LegacyF16ToF32(value)
  %1875 = lshr i32 %1868, 7
  %1876 = and i32 %1875, 32752
  %1877 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1876)  ; LegacyF16ToF32(value)
  %1878 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1879 = extractvalue %dx.types.CBufRet.f32 %1878, 3
  %1880 = fmul fast float %1879, 1.000000e+03
  %1881 = fmul fast float %322, %1880
  %1882 = call float @dx.op.unary.f32(i32 22, float %1881)  ; Frc(value)
  %1883 = fadd fast float %1882, %312
  %1884 = fmul fast float %323, %1880
  %1885 = call float @dx.op.unary.f32(i32 22, float %1884)  ; Frc(value)
  %1886 = fadd fast float %1885, %314
  %1887 = fmul fast float %1852, %1880
  %1888 = call float @dx.op.unary.f32(i32 22, float %1887)  ; Frc(value)
  %1889 = fmul fast float %1888, 0x401921FB60000000
  %1890 = fadd fast float %1889, %1871
  %1891 = call float @dx.op.unary.f32(i32 13, float %1890)  ; Sin(value)
  %1892 = call float @dx.op.unary.f32(i32 12, float %1890)  ; Cos(value)
  %1893 = fsub fast float -0.000000e+00, %1891
  %1894 = fadd fast float %1845, -5.000000e-01
  %1895 = fadd fast float %1846, -5.000000e-01
  %1896 = fmul fast float %1863, %1894
  %1897 = fmul fast float %1865, %1895
  %1898 = fadd fast float %1896, 5.000000e-01
  %1899 = fadd fast float %1897, 5.000000e-01
  %1900 = fmul fast float %1874, %1898
  %1901 = fmul fast float %1877, %1899
  %1902 = fmul fast float %1892, %1900
  %1903 = call float @dx.op.tertiary.f32(i32 46, float %1893, float %1901, float %1902)  ; FMad(a,b,c)
  %1904 = fmul fast float %1891, %1900
  %1905 = call float @dx.op.tertiary.f32(i32 46, float %1892, float %1901, float %1904)  ; FMad(a,b,c)
  %1906 = fadd fast float %1883, %1903
  %1907 = fadd fast float %1886, %1905
  %1908 = icmp ugt i32 %1857, 1
  %1909 = icmp ugt i32 %1855, 33554431
  %1910 = or i1 %1909, %1908
  br i1 %1910, label %1911, label %1936

; <label>:1911                                    ; preds = %1838
  %1912 = add i32 %43, 260
  %1913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1912, i32 undef)  ; BufferLoad(srv,index,wot)
  %1914 = extractvalue %dx.types.ResRet.i32 %1913, 0
  %1915 = lshr i32 %1914, 16
  %1916 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1915)  ; LegacyF16ToF32(value)
  %1917 = fmul fast float %1879, %1916
  %1918 = call float @dx.op.unary.f32(i32 22, float %1917)  ; Frc(value)
  %1919 = mul nuw nsw i32 %1857, %1858
  %1920 = uitofp i32 %1919 to float
  %1921 = fmul fast float %1918, %1920
  %1922 = call float @dx.op.unary.f32(i32 27, float %1921)  ; Round_ni(value)
  %1923 = fptoui float %1922 to i32
  %1924 = urem i32 %1923, %1857
  %1925 = udiv i32 %1923, %1858
  %1926 = call float @dx.op.unary.f32(i32 22, float %1906)  ; Frc(value)
  %1927 = call float @dx.op.unary.f32(i32 22, float %1907)  ; Frc(value)
  %1928 = uitofp i32 %1924 to float
  %1929 = uitofp i32 %1925 to float
  %1930 = fadd fast float %1926, %1928
  %1931 = fadd fast float %1927, %1929
  %1932 = uitofp i32 %1857 to float
  %1933 = uitofp i32 %1858 to float
  %1934 = fdiv fast float %1930, %1932
  %1935 = fdiv fast float %1931, %1933
  br label %1936

; <label>:1936                                    ; preds = %1911, %1838
  %1937 = phi float [ %1934, %1911 ], [ %1906, %1838 ]
  %1938 = phi float [ %1935, %1911 ], [ %1907, %1838 ]
  %1939 = and i32 %1832, 16777216
  %1940 = icmp eq i32 %1939, 0
  br i1 %1940, label %2050, label %1941

; <label>:1941                                    ; preds = %1936
  %1942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1943 = extractvalue %dx.types.CBufRet.f32 %1942, 0
  %1944 = extractvalue %dx.types.CBufRet.f32 %1942, 1
  %1945 = extractvalue %dx.types.CBufRet.f32 %1942, 2
  %1946 = fadd fast float %1943, %141
  %1947 = fadd fast float %1944, %142
  %1948 = fadd fast float %1945, %143
  %1949 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1950 = extractvalue %dx.types.CBufRet.f32 %1949, 0
  %1951 = call float @dx.op.unary.f32(i32 7, float %1950)  ; Saturate(value)
  %1952 = icmp eq i32 %44, 65535
  br i1 %1952, label %2047, label %1953

; <label>:1953                                    ; preds = %1941
  %1954 = lshr i32 %44, 1
  %1955 = shl i32 %1954, 2
  %1956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1955, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.i32 %1956, 0
  %1958 = and i32 %44, 1
  %1959 = icmp ne i32 %1958, 0
  %1960 = lshr i32 %1957, 16
  %1961 = and i32 %1957, 65535
  %1962 = select i1 %1959, i32 %1960, i32 %1961
  %1963 = icmp eq i32 %1962, 65535
  br i1 %1963, label %2043, label %1964

; <label>:1964                                    ; preds = %1953
  %1965 = mul nuw nsw i32 %1962, 40
  %1966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1965, i32 undef)  ; BufferLoad(srv,index,wot)
  %1967 = extractvalue %dx.types.ResRet.f32 %1966, 0
  %1968 = extractvalue %dx.types.ResRet.f32 %1966, 1
  %1969 = extractvalue %dx.types.ResRet.f32 %1966, 2
  %1970 = add nuw nsw i32 %1965, 12
  %1971 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1970, i32 undef)  ; BufferLoad(srv,index,wot)
  %1972 = extractvalue %dx.types.ResRet.f32 %1971, 0
  %1973 = extractvalue %dx.types.ResRet.f32 %1971, 1
  %1974 = extractvalue %dx.types.ResRet.f32 %1971, 2
  %1975 = add nuw nsw i32 %1965, 24
  %1976 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1975, i32 undef)  ; BufferLoad(srv,index,wot)
  %1977 = extractvalue %dx.types.ResRet.f32 %1976, 0
  %1978 = extractvalue %dx.types.ResRet.f32 %1976, 1
  %1979 = extractvalue %dx.types.ResRet.f32 %1976, 2
  %1980 = add nuw nsw i32 %1965, 36
  %1981 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1980, i32 undef)  ; BufferLoad(srv,index,wot)
  %1982 = extractvalue %dx.types.ResRet.f32 %1981, 0
  %1983 = fsub fast float %1946, %1967
  %1984 = fsub fast float %1947, %1968
  %1985 = fsub fast float %1948, %1969
  %1986 = fmul fast float %1982, %1983
  %1987 = fmul fast float %1982, %1984
  %1988 = fmul fast float %1982, %1985
  %1989 = call float @dx.op.unary.f32(i32 27, float %1986)  ; Round_ni(value)
  %1990 = call float @dx.op.unary.f32(i32 27, float %1987)  ; Round_ni(value)
  %1991 = call float @dx.op.unary.f32(i32 27, float %1988)  ; Round_ni(value)
  %1992 = fadd fast float %1989, 5.000000e-01
  %1993 = fadd fast float %1990, 5.000000e-01
  %1994 = fadd fast float %1991, 5.000000e-01
  %1995 = fmul fast float %1992, %1972
  %1996 = fmul fast float %1993, %1973
  %1997 = fmul fast float %1994, %1974
  %1998 = shl i32 %44, 2
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = add i32 %2000, 0
  %2002 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2001, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2003 = call float @dx.op.unary.f32(i32 22, float %1995)  ; Frc(value)
  %2004 = call float @dx.op.unary.f32(i32 22, float %1996)  ; Frc(value)
  %2005 = call float @dx.op.unary.f32(i32 22, float %1997)  ; Frc(value)
  %2006 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2002, %dx.types.Handle %40, float %2003, float %2004, float %2005, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2007 = extractvalue %dx.types.ResRet.f32 %2006, 0
  %2008 = extractvalue %dx.types.ResRet.f32 %2006, 1
  %2009 = extractvalue %dx.types.ResRet.f32 %2006, 2
  %2010 = fmul fast float %2007, 1.023000e+03
  %2011 = fmul fast float %2008, 1.023000e+03
  %2012 = fmul fast float %2009, 1.023000e+03
  %2013 = fadd fast float %2010, 5.000000e-01
  %2014 = fadd fast float %2011, 5.000000e-01
  %2015 = fadd fast float %2012, 5.000000e-01
  %2016 = call float @dx.op.unary.f32(i32 27, float %2013)  ; Round_ni(value)
  %2017 = call float @dx.op.unary.f32(i32 27, float %2014)  ; Round_ni(value)
  %2018 = call float @dx.op.unary.f32(i32 27, float %2015)  ; Round_ni(value)
  %2019 = fsub fast float %1986, %1989
  %2020 = fsub fast float %1987, %1990
  %2021 = fsub fast float %1988, %1991
  %2022 = fmul fast float %2019, 7.500000e-01
  %2023 = fmul fast float %2020, 7.500000e-01
  %2024 = fmul fast float %2021, 7.500000e-01
  %2025 = fadd fast float %1989, 1.250000e-01
  %2026 = fadd fast float %2025, %2022
  %2027 = fadd fast float %2026, %2016
  %2028 = fadd fast float %1990, 1.250000e-01
  %2029 = fadd fast float %2028, %2023
  %2030 = fadd fast float %2029, %2017
  %2031 = fadd fast float %1991, 1.250000e-01
  %2032 = fadd fast float %2031, %2024
  %2033 = fadd fast float %2032, %2018
  %2034 = fmul fast float %2027, %1977
  %2035 = fmul fast float %2030, %1978
  %2036 = fmul fast float %2033, %1979
  %2037 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2038 = extractvalue %dx.types.ResRet.i32 %2037, 0
  %2039 = add i32 %2038, 0
  %2040 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2039, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2041 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2040, %dx.types.Handle %38, float %2034, float %2035, float %2036, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2042 = extractvalue %dx.types.ResRet.f32 %2041, 0
  br label %2043

; <label>:2043                                    ; preds = %1964, %1953
  %2044 = phi float [ %2042, %1964 ], [ -1.000000e+00, %1953 ]
  %2045 = fadd fast float %2044, %1951
  %2046 = call float @dx.op.unary.f32(i32 7, float %2045)  ; Saturate(value)
  br label %2047

; <label>:2047                                    ; preds = %2043, %1941
  %2048 = phi float [ %2046, %2043 ], [ %1951, %1941 ]
  %2049 = fmul fast float %2048, %421
  br label %2050

; <label>:2050                                    ; preds = %2047, %1936
  %2051 = phi float [ %2049, %2047 ], [ %421, %1936 ]
  %2052 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2053 = extractvalue %dx.types.ResRet.i32 %2052, 0
  %2054 = and i32 %2053, 256
  %2055 = icmp eq i32 %2054, 0
  br i1 %2055, label %2102, label %2056

; <label>:2056                                    ; preds = %2050
  %2057 = add i32 %43, 480
  %2058 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2057, i32 undef)  ; BufferLoad(srv,index,wot)
  %2059 = extractvalue %dx.types.ResRet.i32 %2058, 0
  %2060 = add i32 %2059, 0
  %2061 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2060, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2062 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2061, %dx.types.Handle %75, float %1937, float %1938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2063 = extractvalue %dx.types.ResRet.f32 %2062, 0
  %2064 = add i32 %43, 132
  %2065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2064, i32 undef)  ; BufferLoad(srv,index,wot)
  %2066 = extractvalue %dx.types.ResRet.i32 %2065, 0
  %2067 = shl i32 %2066, 4
  %2068 = and i32 %2067, 32752
  %2069 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2068)  ; LegacyF16ToF32(value)
  %2070 = lshr i32 %2066, 7
  %2071 = and i32 %2070, 32752
  %2072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2071)  ; LegacyF16ToF32(value)
  %2073 = fsub fast float 1.000000e+00, %2051
  %2074 = call float @dx.op.binary.f32(i32 35, float %2073, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2075 = bitcast float %2051 to i32
  %2076 = sitofp i32 %2075 to float
  %2077 = fadd fast float %2076, 0xC1CFBF8940000000
  %2078 = fmul fast float %2072, %2077
  %2079 = fadd fast float %2078, 0x41CFBF8940000000
  %2080 = fptosi float %2079 to i32
  %2081 = bitcast i32 %2080 to float
  %2082 = bitcast float %2074 to i32
  %2083 = sitofp i32 %2082 to float
  %2084 = fadd fast float %2083, 0xC1CFBF8940000000
  %2085 = fmul fast float %2084, %2072
  %2086 = fadd fast float %2085, 0x41CFBF8940000000
  %2087 = fptosi float %2086 to i32
  %2088 = bitcast i32 %2087 to float
  %2089 = fmul fast float %2081, %2069
  %2090 = fmul fast float %2088, %2069
  %2091 = fsub fast float %2074, %2089
  %2092 = fadd fast float %2090, %2074
  %2093 = call float @dx.op.unary.f32(i32 7, float %2091)  ; Saturate(value)
  %2094 = call float @dx.op.unary.f32(i32 7, float %2092)  ; Saturate(value)
  %2095 = fsub fast float %2063, %2093
  %2096 = fsub fast float %2094, %2093
  %2097 = bitcast float %2096 to i32
  %2098 = sub nsw i32 2129859010, %2097
  %2099 = bitcast i32 %2098 to float
  %2100 = fmul fast float %2099, %2095
  %2101 = call float @dx.op.unary.f32(i32 7, float %2100)  ; Saturate(value)
  br label %2102

; <label>:2102                                    ; preds = %2056, %2050
  %2103 = phi float [ %2101, %2056 ], [ %2051, %2050 ]
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = and i32 %2105, 128
  %2107 = icmp eq i32 %2106, 0
  br i1 %2107, label %2124, label %2108

; <label>:2108                                    ; preds = %2102
  %2109 = add i32 %43, 464
  %2110 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2109, i32 undef)  ; BufferLoad(srv,index,wot)
  %2111 = extractvalue %dx.types.ResRet.i32 %2110, 0
  %2112 = add i32 %2111, 0
  %2113 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2112, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2114 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2113, %dx.types.Handle %75, float %1937, float %1938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2115 = extractvalue %dx.types.ResRet.f32 %2114, 0
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = and i32 %2117, 524288
  %2119 = icmp ne i32 %2118, 0
  %2120 = fcmp fast ogt float %2115, 0x3FE0101020000000
  %2121 = select i1 %2120, float 1.000000e+00, float 0.000000e+00
  %2122 = select i1 %2119, float %2121, float %2115
  %2123 = fmul fast float %2122, %2103
  br label %2124

; <label>:2124                                    ; preds = %2108, %2102
  %2125 = phi float [ %2123, %2108 ], [ %2103, %2102 ]
  %2126 = fcmp fast ult float %2125, 0x3F70101020000000
  br i1 %2126, label %2669, label %2127

; <label>:2127                                    ; preds = %2124
  %2128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2129 = extractvalue %dx.types.ResRet.i32 %2128, 0
  %2130 = and i32 %2129, 16
  %2131 = icmp eq i32 %2130, 0
  br i1 %2131, label %2330, label %2132

; <label>:2132                                    ; preds = %2127
  %2133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1853, i32 undef)  ; BufferLoad(srv,index,wot)
  %2134 = extractvalue %dx.types.ResRet.i32 %2133, 0
  %2135 = add i32 %43, 416
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = add i32 %2137, 0
  %2139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2139, %dx.types.Handle %74, float %1937, float %1938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2141 = extractvalue %dx.types.ResRet.f32 %2140, 0
  %2142 = extractvalue %dx.types.ResRet.f32 %2140, 1
  %2143 = extractvalue %dx.types.ResRet.f32 %2140, 2
  %2144 = extractvalue %dx.types.ResRet.f32 %2140, 3
  %2145 = and i32 %2134, 255
  %2146 = uitofp i32 %2145 to float
  %2147 = lshr i32 %2134, 8
  %2148 = and i32 %2147, 255
  %2149 = uitofp i32 %2148 to float
  %2150 = fmul fast float %2144, %2146
  %2151 = fadd fast float %2150, %2149
  %2152 = fmul fast float %2151, 0x3F70101000000000
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = and i32 %2154, 512
  %2156 = icmp eq i32 %2155, 0
  br i1 %2156, label %2165, label %2157

; <label>:2157                                    ; preds = %2132
  %2158 = add i32 %43, 496
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2158, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = add i32 %2160, 0
  %2162 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2161, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2163 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2162, %dx.types.Handle %75, float %1937, float %1938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2164 = extractvalue %dx.types.ResRet.f32 %2163, 0
  br label %2165

; <label>:2165                                    ; preds = %2157, %2132
  %2166 = phi float [ %2164, %2157 ], [ 1.000000e+00, %2132 ]
  %2167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2168 = extractvalue %dx.types.ResRet.i32 %2167, 0
  %2169 = and i32 %2168, 33554432
  %2170 = icmp eq i32 %2169, 0
  br i1 %2170, label %2277, label %2171

; <label>:2171                                    ; preds = %2165
  %2172 = add i32 %43, 256
  %2173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2172, i32 undef)  ; BufferLoad(srv,index,wot)
  %2174 = extractvalue %dx.types.ResRet.i32 %2173, 0
  %2175 = and i32 %2174, 65535
  %2176 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2175)  ; LegacyF16ToF32(value)
  %2177 = lshr i32 %2174, 16
  %2178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2177)  ; LegacyF16ToF32(value)
  %2179 = add i32 %43, 260
  %2180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2179, i32 undef)  ; BufferLoad(srv,index,wot)
  %2181 = extractvalue %dx.types.ResRet.i32 %2180, 0
  %2182 = and i32 %2181, 65535
  %2183 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2182)  ; LegacyF16ToF32(value)
  %2184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2185 = extractvalue %dx.types.ResRet.i32 %2184, 0
  %2186 = lshr i32 %2185, 24
  %2187 = uitofp i32 %2186 to float
  %2188 = fmul fast float %2187, 0x3F70101020000000
  %2189 = and i32 %2185, 255
  %2190 = uitofp i32 %2189 to float
  %2191 = fmul fast float %2190, 0x3F70101020000000
  %2192 = lshr i32 %2185, 8
  %2193 = and i32 %2192, 255
  %2194 = uitofp i32 %2193 to float
  %2195 = fmul fast float %2194, 0x3F70101020000000
  %2196 = lshr i32 %2185, 16
  %2197 = and i32 %2196, 255
  %2198 = uitofp i32 %2197 to float
  %2199 = fmul fast float %2198, 0x3F70101020000000
  %2200 = add i32 %43, 252
  %2201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2200, i32 undef)  ; BufferLoad(srv,index,wot)
  %2202 = extractvalue %dx.types.ResRet.i32 %2201, 0
  %2203 = lshr i32 %2202, 24
  %2204 = uitofp i32 %2203 to float
  %2205 = fmul fast float %2204, 0x3F70101020000000
  %2206 = and i32 %2202, 255
  %2207 = uitofp i32 %2206 to float
  %2208 = fmul fast float %2207, 0x3F70101020000000
  %2209 = lshr i32 %2202, 8
  %2210 = and i32 %2209, 255
  %2211 = uitofp i32 %2210 to float
  %2212 = fmul fast float %2211, 0x3F70101020000000
  %2213 = lshr i32 %2202, 16
  %2214 = and i32 %2213, 255
  %2215 = uitofp i32 %2214 to float
  %2216 = fmul fast float %2215, 0x3F70101020000000
  %2217 = bitcast float %2141 to i32
  %2218 = ashr i32 %2217, 1
  %2219 = sub nsw i32 1597463174, %2218
  %2220 = bitcast i32 %2219 to float
  %2221 = fmul fast float %2141, 5.000000e-01
  %2222 = fmul fast float %2220, %2220
  %2223 = fmul fast float %2222, %2221
  %2224 = fsub fast float 1.500000e+00, %2223
  %2225 = fmul fast float %2220, %2141
  %2226 = fmul fast float %2225, %2224
  %2227 = bitcast float %2142 to i32
  %2228 = ashr i32 %2227, 1
  %2229 = sub nsw i32 1597463174, %2228
  %2230 = bitcast i32 %2229 to float
  %2231 = fmul fast float %2142, 5.000000e-01
  %2232 = fmul fast float %2230, %2230
  %2233 = fmul fast float %2232, %2231
  %2234 = fsub fast float 1.500000e+00, %2233
  %2235 = fmul fast float %2230, %2142
  %2236 = fmul fast float %2235, %2234
  %2237 = bitcast float %2143 to i32
  %2238 = ashr i32 %2237, 1
  %2239 = sub nsw i32 1597463174, %2238
  %2240 = bitcast i32 %2239 to float
  %2241 = fmul fast float %2143, 5.000000e-01
  %2242 = fmul fast float %2240, %2240
  %2243 = fmul fast float %2242, %2241
  %2244 = fsub fast float 1.500000e+00, %2243
  %2245 = fmul fast float %2240, %2143
  %2246 = fmul fast float %2245, %2244
  %2247 = fsub fast float %2226, %2208
  %2248 = fsub fast float %2236, %2212
  %2249 = fsub fast float %2246, %2216
  %2250 = fmul fast float %2247, %2176
  %2251 = fmul fast float %2248, %2178
  %2252 = fmul fast float %2249, %2183
  %2253 = fadd fast float %2250, %2191
  %2254 = fadd fast float %2251, %2195
  %2255 = fadd fast float %2252, %2199
  %2256 = call float @dx.op.unary.f32(i32 7, float %2253)  ; Saturate(value)
  %2257 = call float @dx.op.unary.f32(i32 7, float %2254)  ; Saturate(value)
  %2258 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2259 = fmul fast float %2256, %2256
  %2260 = fmul fast float %2257, %2257
  %2261 = fmul fast float %2258, %2258
  %2262 = fsub fast float %2259, %2141
  %2263 = fsub fast float %2260, %2142
  %2264 = fsub fast float %2261, %2143
  %2265 = fmul fast float %2262, %2166
  %2266 = fmul fast float %2263, %2166
  %2267 = fmul fast float %2264, %2166
  %2268 = fadd fast float %2265, %2141
  %2269 = fadd fast float %2266, %2142
  %2270 = fadd fast float %2267, %2143
  %2271 = fadd fast float %2188, %2152
  %2272 = fsub fast float %2271, %2205
  %2273 = call float @dx.op.unary.f32(i32 7, float %2272)  ; Saturate(value)
  %2274 = fsub fast float %2273, %2152
  %2275 = fmul fast float %2274, %2166
  %2276 = fadd fast float %2275, %2152
  br label %2330

; <label>:2277                                    ; preds = %2165
  %2278 = and i32 %2168, 134217728
  %2279 = icmp eq i32 %2278, 0
  br i1 %2279, label %2314, label %2280

; <label>:2280                                    ; preds = %2277
  %2281 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %2282 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %2283 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2284 = fadd fast float %2281, -5.000000e-01
  %2285 = fadd fast float %2282, -5.000000e-01
  %2286 = fadd fast float %2283, -5.000000e-01
  %2287 = fmul fast float %2284, %2166
  %2288 = fmul fast float %2285, %2166
  %2289 = fmul fast float %2286, %2166
  %2290 = fadd fast float %2287, 5.000000e-01
  %2291 = fadd fast float %2288, 5.000000e-01
  %2292 = fadd fast float %2289, 5.000000e-01
  %2293 = call float @dx.op.unary.f32(i32 24, float %2141)  ; Sqrt(value)
  %2294 = call float @dx.op.unary.f32(i32 24, float %2142)  ; Sqrt(value)
  %2295 = call float @dx.op.unary.f32(i32 24, float %2143)  ; Sqrt(value)
  %2296 = fmul fast float %2290, 2.000000e+00
  %2297 = fsub fast float 1.000000e+00, %2296
  %2298 = fmul fast float %2297, %2293
  %2299 = fadd fast float %2298, %2296
  %2300 = fmul fast float %2299, %2293
  %2301 = fmul fast float %2291, 2.000000e+00
  %2302 = fsub fast float 1.000000e+00, %2301
  %2303 = fmul fast float %2302, %2294
  %2304 = fadd fast float %2303, %2301
  %2305 = fmul fast float %2304, %2294
  %2306 = fmul fast float %2292, 2.000000e+00
  %2307 = fsub fast float 1.000000e+00, %2306
  %2308 = fmul fast float %2307, %2295
  %2309 = fadd fast float %2308, %2306
  %2310 = fmul fast float %2309, %2295
  %2311 = fmul fast float %2300, %2300
  %2312 = fmul fast float %2305, %2305
  %2313 = fmul fast float %2310, %2310
  br label %2330

; <label>:2314                                    ; preds = %2277
  %2315 = fmul fast float %299, %299
  %2316 = fmul fast float %303, %303
  %2317 = fmul fast float %307, %307
  %2318 = fadd fast float %2315, -1.000000e+00
  %2319 = fadd fast float %2316, -1.000000e+00
  %2320 = fadd fast float %2317, -1.000000e+00
  %2321 = fmul fast float %2166, %2318
  %2322 = fmul fast float %2166, %2319
  %2323 = fmul fast float %2166, %2320
  %2324 = fadd fast float %2321, 1.000000e+00
  %2325 = fadd fast float %2322, 1.000000e+00
  %2326 = fadd fast float %2323, 1.000000e+00
  %2327 = fmul fast float %2324, %2141
  %2328 = fmul fast float %2325, %2142
  %2329 = fmul fast float %2326, %2143
  br label %2330

; <label>:2330                                    ; preds = %2314, %2280, %2171, %2127
  %2331 = phi float [ %2276, %2171 ], [ %2152, %2280 ], [ %2152, %2314 ], [ 0x3FA23C0BE0000000, %2127 ]
  %2332 = phi float [ %2268, %2171 ], [ %2311, %2280 ], [ %2327, %2314 ], [ 1.000000e+00, %2127 ]
  %2333 = phi float [ %2269, %2171 ], [ %2312, %2280 ], [ %2328, %2314 ], [ 1.000000e+00, %2127 ]
  %2334 = phi float [ %2270, %2171 ], [ %2313, %2280 ], [ %2329, %2314 ], [ 1.000000e+00, %2127 ]
  %2335 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2336 = extractvalue %dx.types.CBufRet.i32 %2335, 1
  %2337 = and i32 %2336, 1
  %2338 = icmp ne i32 %2337, 0
  %2339 = add i32 %43, 372
  %2340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2339, i32 undef)  ; BufferLoad(srv,index,wot)
  %2341 = extractvalue %dx.types.ResRet.i32 %2340, 0
  %2342 = and i32 %2341, 32
  %2343 = icmp ne i32 %2342, 0
  %2344 = and i1 %2338, %2343
  %2345 = select i1 %2344, float 1.000000e+00, float %2332
  %2346 = select i1 %2344, float 0x3FD3333340000000, float %2333
  %2347 = select i1 %2344, float 0x3FD3333340000000, float %2334
  %2348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2349 = extractvalue %dx.types.ResRet.i32 %2348, 0
  %2350 = and i32 %2349, 32
  %2351 = icmp eq i32 %2350, 0
  br i1 %2351, label %2424, label %2352

; <label>:2352                                    ; preds = %2330
  %2353 = add i32 %43, 124
  %2354 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2353, i32 undef)  ; BufferLoad(srv,index,wot)
  %2355 = extractvalue %dx.types.ResRet.i32 %2354, 0
  %2356 = add i32 %43, 432
  %2357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2356, i32 undef)  ; BufferLoad(srv,index,wot)
  %2358 = extractvalue %dx.types.ResRet.i32 %2357, 0
  %2359 = add i32 %2358, 0
  %2360 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2359, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2361 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2360, %dx.types.Handle %74, float %1937, float %1938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2362 = extractvalue %dx.types.ResRet.f32 %2361, 0
  %2363 = extractvalue %dx.types.ResRet.f32 %2361, 1
  %2364 = extractvalue %dx.types.ResRet.f32 %2361, 2
  %2365 = extractvalue %dx.types.ResRet.f32 %2361, 3
  %2366 = and i32 %2355, 255
  %2367 = uitofp i32 %2366 to float
  %2368 = lshr i32 %2355, 8
  %2369 = and i32 %2368, 255
  %2370 = uitofp i32 %2369 to float
  %2371 = lshr i32 %2355, 16
  %2372 = and i32 %2371, 255
  %2373 = uitofp i32 %2372 to float
  %2374 = fmul fast float %2373, 0x3F70101000000000
  %2375 = fmul fast float %2362, %2367
  %2376 = fadd fast float %2375, %2370
  %2377 = fmul fast float %2376, 0x3F70101000000000
  %2378 = fadd fast float %2363, -5.000000e-01
  %2379 = fadd fast float %2365, -5.000000e-01
  %2380 = fmul fast float %2378, %2374
  %2381 = fmul fast float %2379, %2374
  %2382 = fadd fast float %2380, 5.000000e-01
  %2383 = fadd fast float %2381, 5.000000e-01
  %2384 = fmul fast float %2382, 2.000000e+00
  %2385 = fadd fast float %2384, -1.000000e+00
  %2386 = fmul fast float %2383, 2.000000e+00
  %2387 = fadd fast float %2386, -1.000000e+00
  %2388 = fadd fast float %2385, %2387
  %2389 = fmul fast float %2388, 5.000000e-01
  %2390 = fsub fast float %2385, %2387
  %2391 = fmul fast float %2390, 5.000000e-01
  %2392 = call float @dx.op.unary.f32(i32 6, float %2389)  ; FAbs(value)
  %2393 = fsub fast float 1.000000e+00, %2392
  %2394 = call float @dx.op.unary.f32(i32 6, float %2391)  ; FAbs(value)
  %2395 = fsub fast float %2393, %2394
  %2396 = call float @dx.op.dot3.f32(i32 55, float %2389, float %2391, float %2395, float %2389, float %2391, float %2395)  ; Dot3(ax,ay,az,bx,by,bz)
  %2397 = call float @dx.op.unary.f32(i32 25, float %2396)  ; Rsqrt(value)
  %2398 = fmul fast float %2389, %2397
  %2399 = fmul fast float %2391, %2397
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = and i32 %2401, 67108864
  %2403 = icmp eq i32 %2402, 0
  br i1 %2403, label %2420, label %2404

; <label>:2404                                    ; preds = %2352
  %2405 = add i32 %43, 312
  %2406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2405, i32 undef)  ; BufferLoad(srv,index,wot)
  %2407 = extractvalue %dx.types.ResRet.i32 %2406, 0
  %2408 = and i32 %2407, 65535
  %2409 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2408)  ; LegacyF16ToF32(value)
  %2410 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1847, i32 undef)  ; BufferLoad(srv,index,wot)
  %2411 = extractvalue %dx.types.ResRet.i32 %2410, 0
  %2412 = and i32 %2411, 65535
  %2413 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2412)  ; LegacyF16ToF32(value)
  %2414 = lshr i32 %2407, 16
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = fsub fast float %2377, %2415
  %2417 = fmul fast float %2416, %2409
  %2418 = fadd fast float %2417, %2413
  %2419 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  br label %2420

; <label>:2420                                    ; preds = %2404, %2352
  %2421 = phi float [ %2419, %2404 ], [ %2377, %2352 ]
  %2422 = call float @dx.op.dot2.f32(i32 54, float %2398, float %2399, float %1841, float %1842)  ; Dot2(ax,ay,bx,by)
  %2423 = call float @dx.op.dot2.f32(i32 54, float %2398, float %2399, float %1843, float %1844)  ; Dot2(ax,ay,bx,by)
  br label %2424

; <label>:2424                                    ; preds = %2420, %2330
  %2425 = phi float [ %2421, %2420 ], [ 0x3FD6666660000000, %2330 ]
  %2426 = phi float [ %2422, %2420 ], [ 0.000000e+00, %2330 ]
  %2427 = phi float [ %2423, %2420 ], [ 0.000000e+00, %2330 ]
  %2428 = phi float [ %2364, %2420 ], [ 1.000000e+00, %2330 ]
  %2429 = add i32 %43, 192
  %2430 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2429, i32 undef)  ; BufferLoad(srv,index,wot)
  %2431 = extractvalue %dx.types.ResRet.i32 %2430, 0
  %2432 = lshr i32 %2431, 22
  %2433 = shl nuw nsw i32 %2432, 5
  %2434 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2433)  ; LegacyF16ToF32(value)
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %2436, 64
  %2438 = icmp eq i32 %2437, 0
  br i1 %2438, label %2472, label %2439

; <label>:2439                                    ; preds = %2424
  %2440 = add i32 %43, 448
  %2441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2440, i32 undef)  ; BufferLoad(srv,index,wot)
  %2442 = extractvalue %dx.types.ResRet.i32 %2441, 0
  %2443 = add i32 %2442, 0
  %2444 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2443, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2446 = extractvalue %dx.types.ResRet.i32 %2445, 0
  %2447 = and i32 %2446, 131072
  %2448 = icmp eq i32 %2447, 0
  %2449 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2444, %dx.types.Handle %74, float %1937, float %1938, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2450 = extractvalue %dx.types.ResRet.f32 %2449, 0
  %2451 = extractvalue %dx.types.ResRet.f32 %2449, 1
  %2452 = extractvalue %dx.types.ResRet.f32 %2449, 2
  %2453 = fmul fast float %2450, %287
  %2454 = fmul fast float %2451, %290
  %2455 = fmul fast float %2452, %293
  br i1 %2448, label %2462, label %2456

; <label>:2456                                    ; preds = %2439
  %2457 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2458 = extractvalue %dx.types.CBufRet.f32 %2457, 0
  %2459 = fmul fast float %2458, %2453
  %2460 = fmul fast float %2458, %2454
  %2461 = fmul fast float %2458, %2455
  br label %2462

; <label>:2462                                    ; preds = %2456, %2439
  %2463 = phi float [ %2459, %2456 ], [ %2453, %2439 ]
  %2464 = phi float [ %2460, %2456 ], [ %2454, %2439 ]
  %2465 = phi float [ %2461, %2456 ], [ %2455, %2439 ]
  %2466 = fmul fast float %2463, %2434
  %2467 = select i1 %183, float %2466, float %2463
  %2468 = call float @dx.op.dot3.f32(i32 55, float %2467, float %2464, float %2465, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2469 = select i1 %183, float 0.000000e+00, float %2463
  %2470 = select i1 %183, float %2468, float %2464
  %2471 = select i1 %183, float 0.000000e+00, float %2465
  br label %2472

; <label>:2472                                    ; preds = %2462, %2424
  %2473 = phi float [ %2469, %2462 ], [ 0.000000e+00, %2424 ]
  %2474 = phi float [ %2470, %2462 ], [ 0.000000e+00, %2424 ]
  %2475 = phi float [ %2471, %2462 ], [ 0.000000e+00, %2424 ]
  %2476 = add i32 %43, 128
  %2477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2476, i32 undef)  ; BufferLoad(srv,index,wot)
  %2478 = extractvalue %dx.types.ResRet.i32 %2477, 0
  %2479 = and i32 %2478, 255
  %2480 = uitofp i32 %2479 to float
  %2481 = lshr i32 %2478, 8
  %2482 = and i32 %2481, 255
  %2483 = uitofp i32 %2482 to float
  %2484 = call float @dx.op.dot3.f32(i32 55, float %2345, float %2346, float %2347, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2485 = fmul fast float %2483, %2484
  %2486 = fadd fast float %2485, %2480
  %2487 = fmul fast float %2486, 0x3F70101020000000
  %2488 = call float @dx.op.unary.f32(i32 7, float %2487)  ; Saturate(value)
  br i1 %1829, label %2489, label %2497

; <label>:2489                                    ; preds = %2472
  %2490 = fsub fast float 1.000000e+00, %2125
  %2491 = fmul fast float %2490, %1818
  %2492 = fmul fast float %2490, %1819
  %2493 = fmul fast float %2490, %1820
  %2494 = fmul fast float %2490, %1821
  %2495 = fmul fast float %2490, %1822
  %2496 = fmul fast float %2490, %1823
  br label %2497

; <label>:2497                                    ; preds = %2489, %2472
  %2498 = phi float [ %2491, %2489 ], [ %1818, %2472 ]
  %2499 = phi float [ %2492, %2489 ], [ %1819, %2472 ]
  %2500 = phi float [ %2493, %2489 ], [ %1820, %2472 ]
  %2501 = phi float [ %2494, %2489 ], [ %1821, %2472 ]
  %2502 = phi float [ %2495, %2489 ], [ %1822, %2472 ]
  %2503 = phi float [ %2496, %2489 ], [ %1823, %2472 ]
  %2504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1830, i32 undef)  ; BufferLoad(srv,index,wot)
  %2505 = extractvalue %dx.types.ResRet.i32 %2504, 0
  %2506 = and i32 %2505, 3
  %2507 = icmp eq i32 %2506, 3
  br i1 %2507, label %2586, label %2508

; <label>:2508                                    ; preds = %2497
  %2509 = and i32 %2505, 16
  %2510 = icmp ne i32 %2509, 0
  %2511 = select i1 %2510, float %2125, float 0.000000e+00
  %2512 = icmp eq i32 %2506, 0
  br i1 %2512, label %2513, label %2541

; <label>:2513                                    ; preds = %2508
  %2514 = and i32 %2505, 64
  %2515 = icmp ne i32 %2514, 0
  %2516 = select i1 %2515, float %2125, float 0.000000e+00
  %2517 = fsub fast float %2345, %2498
  %2518 = fsub fast float %2346, %2499
  %2519 = fsub fast float %2347, %2500
  %2520 = fmul fast float %2511, %2517
  %2521 = fmul fast float %2511, %2518
  %2522 = fmul fast float %2511, %2519
  %2523 = fadd fast float %2520, %2498
  %2524 = fadd fast float %2521, %2499
  %2525 = fadd fast float %2522, %2500
  %2526 = fsub fast float %2331, %1824
  %2527 = fmul fast float %2511, %2526
  %2528 = fadd fast float %2527, %1824
  %2529 = fsub fast float %2473, %2501
  %2530 = fsub fast float %2474, %2502
  %2531 = fsub fast float %2475, %2503
  %2532 = fmul fast float %2516, %2529
  %2533 = fmul fast float %2516, %2530
  %2534 = fmul fast float %2516, %2531
  %2535 = fadd fast float %2532, %2501
  %2536 = fadd fast float %2533, %2502
  %2537 = fadd fast float %2534, %2503
  %2538 = fsub fast float %2488, %1827
  %2539 = fmul fast float %2511, %2538
  %2540 = fadd fast float %2539, %1827
  br label %2586

; <label>:2541                                    ; preds = %2508
  %2542 = icmp eq i32 %2506, 1
  br i1 %2542, label %2543, label %2556

; <label>:2543                                    ; preds = %2541
  %2544 = fadd fast float %2345, -1.000000e+00
  %2545 = fadd fast float %2346, -1.000000e+00
  %2546 = fadd fast float %2347, -1.000000e+00
  %2547 = fmul fast float %2511, %2544
  %2548 = fmul fast float %2511, %2545
  %2549 = fmul fast float %2511, %2546
  %2550 = fadd fast float %2547, 1.000000e+00
  %2551 = fadd fast float %2548, 1.000000e+00
  %2552 = fadd fast float %2549, 1.000000e+00
  %2553 = fmul fast float %2550, %2498
  %2554 = fmul fast float %2551, %2499
  %2555 = fmul fast float %2552, %2500
  br label %2586

; <label>:2556                                    ; preds = %2541
  %2557 = icmp eq i32 %2506, 2
  br i1 %2557, label %2558, label %2586

; <label>:2558                                    ; preds = %2556
  %2559 = call float @dx.op.unary.f32(i32 24, float %2345)  ; Sqrt(value)
  %2560 = call float @dx.op.unary.f32(i32 24, float %2346)  ; Sqrt(value)
  %2561 = call float @dx.op.unary.f32(i32 24, float %2347)  ; Sqrt(value)
  %2562 = fadd fast float %2559, -5.000000e-01
  %2563 = fadd fast float %2560, -5.000000e-01
  %2564 = fadd fast float %2561, -5.000000e-01
  %2565 = fmul fast float %2562, %2511
  %2566 = fmul fast float %2563, %2511
  %2567 = fmul fast float %2564, %2511
  %2568 = fadd fast float %2565, 5.000000e-01
  %2569 = fadd fast float %2566, 5.000000e-01
  %2570 = fadd fast float %2567, 5.000000e-01
  %2571 = fmul fast float %2568, 2.000000e+00
  %2572 = fsub fast float 1.000000e+00, %2571
  %2573 = fmul fast float %2572, %2498
  %2574 = fadd fast float %2573, %2571
  %2575 = fmul fast float %2574, %2498
  %2576 = fmul fast float %2569, 2.000000e+00
  %2577 = fsub fast float 1.000000e+00, %2576
  %2578 = fmul fast float %2577, %2499
  %2579 = fadd fast float %2578, %2576
  %2580 = fmul fast float %2579, %2499
  %2581 = fmul fast float %2570, 2.000000e+00
  %2582 = fsub fast float 1.000000e+00, %2581
  %2583 = fmul fast float %2582, %2500
  %2584 = fadd fast float %2583, %2581
  %2585 = fmul fast float %2584, %2500
  br label %2586

; <label>:2586                                    ; preds = %2558, %2556, %2543, %2513, %2497
  %2587 = phi float [ %2498, %2497 ], [ %2575, %2558 ], [ %2498, %2556 ], [ %2553, %2543 ], [ %2523, %2513 ]
  %2588 = phi float [ %2499, %2497 ], [ %2580, %2558 ], [ %2499, %2556 ], [ %2554, %2543 ], [ %2524, %2513 ]
  %2589 = phi float [ %2500, %2497 ], [ %2585, %2558 ], [ %2500, %2556 ], [ %2555, %2543 ], [ %2525, %2513 ]
  %2590 = phi float [ %2501, %2497 ], [ %2501, %2558 ], [ %2501, %2556 ], [ %2501, %2543 ], [ %2535, %2513 ]
  %2591 = phi float [ %2502, %2497 ], [ %2502, %2558 ], [ %2502, %2556 ], [ %2502, %2543 ], [ %2536, %2513 ]
  %2592 = phi float [ %2503, %2497 ], [ %2503, %2558 ], [ %2503, %2556 ], [ %2503, %2543 ], [ %2537, %2513 ]
  %2593 = phi float [ %1824, %2497 ], [ %1824, %2558 ], [ %1824, %2556 ], [ %1824, %2543 ], [ %2528, %2513 ]
  %2594 = phi float [ %1827, %2497 ], [ %1827, %2558 ], [ %1827, %2556 ], [ %1827, %2543 ], [ %2540, %2513 ]
  %2595 = and i32 %2505, 12
  %2596 = icmp eq i32 %2595, 12
  br i1 %2596, label %2669, label %2597

; <label>:2597                                    ; preds = %2586
  %2598 = and i32 %2505, 2097184
  %2599 = icmp eq i32 %2598, 2097184
  %2600 = select i1 %2599, float %2125, float 0.000000e+00
  %2601 = and i32 %2505, 4194336
  %2602 = icmp eq i32 %2601, 4194336
  %2603 = select i1 %2602, float %2125, float 0.000000e+00
  %2604 = and i32 %2505, 8388640
  %2605 = icmp eq i32 %2604, 8388640
  %2606 = select i1 %2605, float %2125, float 0.000000e+00
  %2607 = icmp eq i32 %2595, 0
  br i1 %2607, label %2608, label %2621

; <label>:2608                                    ; preds = %2597
  %2609 = fsub fast float %2426, %1816
  %2610 = fsub fast float %2427, %1817
  %2611 = fmul fast float %2600, %2609
  %2612 = fmul fast float %2600, %2610
  %2613 = fadd fast float %2611, %1816
  %2614 = fadd fast float %2612, %1817
  %2615 = fsub fast float %2428, %1826
  %2616 = fmul fast float %2603, %2615
  %2617 = fadd fast float %2616, %1826
  %2618 = fsub fast float %2425, %1825
  %2619 = fmul fast float %2606, %2618
  %2620 = fadd fast float %2619, %1825
  br label %2669

; <label>:2621                                    ; preds = %2597
  %2622 = icmp eq i32 %2595, 4
  br i1 %2622, label %2623, label %2655

; <label>:2623                                    ; preds = %2621
  %2624 = fmul fast float %2600, %2426
  %2625 = fmul fast float %2600, %2427
  %2626 = fadd fast float %2624, %1816
  %2627 = fadd fast float %2625, %1817
  %2628 = call float @dx.op.binary.f32(i32 36, float %1826, float %2428)  ; FMin(a,b)
  %2629 = fsub fast float %2628, %1826
  %2630 = fmul fast float %2629, %2603
  %2631 = fadd fast float %2630, %1826
  %2632 = fadd fast float %2425, %1825
  %2633 = fmul fast float %2632, 0x3FF337FAE0000000
  %2634 = fmul fast float %1825, %1825
  %2635 = fmul fast float %2425, %2425
  %2636 = fadd fast float %2635, %2634
  %2637 = fmul fast float %2636, 0x3FE5152B00000000
  %2638 = fmul fast float %1825, 0xBFCC1F85E0000000
  %2639 = fmul fast float %2638, %2425
  %2640 = fadd fast float %2639, 0xBFE1363700000000
  %2641 = fadd fast float %2640, %2633
  %2642 = fsub fast float %2641, %2637
  %2643 = fmul fast float %2632, 0x3FBA6F0D00000000
  %2644 = fmul fast float %2636, 0x3FD0432880000000
  %2645 = fmul fast float %1825, 0xBFEF110800000000
  %2646 = fmul fast float %2645, %2425
  %2647 = fadd fast float %2646, 1.000000e+00
  %2648 = fsub fast float %2647, %2643
  %2649 = fadd fast float %2648, %2644
  %2650 = fdiv fast float %2642, %2649
  %2651 = call float @dx.op.unary.f32(i32 7, float %2650)  ; Saturate(value)
  %2652 = fsub fast float %2651, %1825
  %2653 = fmul fast float %2652, %2606
  %2654 = fadd fast float %2653, %1825
  br label %2669

; <label>:2655                                    ; preds = %2621
  %2656 = icmp eq i32 %2595, 8
  br i1 %2656, label %2657, label %2669

; <label>:2657                                    ; preds = %2655
  %2658 = fmul fast float %2600, %2426
  %2659 = fmul fast float %2600, %2427
  %2660 = fadd fast float %2658, %1816
  %2661 = fadd fast float %2659, %1817
  %2662 = call float @dx.op.binary.f32(i32 36, float %1826, float %2428)  ; FMin(a,b)
  %2663 = fsub fast float %2662, %1826
  %2664 = fmul fast float %2663, %2603
  %2665 = fadd fast float %2664, %1826
  %2666 = fsub fast float %2425, %1825
  %2667 = fmul fast float %2606, %2666
  %2668 = fadd fast float %2667, %1825
  br label %2669

; <label>:2669                                    ; preds = %2657, %2655, %2623, %2608, %2586, %2124, %1828, %1815
  %2670 = phi float [ %1816, %2586 ], [ %1816, %2124 ], [ %1816, %1815 ], [ %2660, %2657 ], [ %1816, %2655 ], [ %2626, %2623 ], [ %2613, %2608 ], [ %1816, %1828 ]
  %2671 = phi float [ %1817, %2586 ], [ %1817, %2124 ], [ %1817, %1815 ], [ %2661, %2657 ], [ %1817, %2655 ], [ %2627, %2623 ], [ %2614, %2608 ], [ %1817, %1828 ]
  %2672 = phi float [ %2587, %2586 ], [ %1818, %2124 ], [ %1818, %1815 ], [ %2587, %2657 ], [ %2587, %2655 ], [ %2587, %2623 ], [ %2587, %2608 ], [ %1818, %1828 ]
  %2673 = phi float [ %2588, %2586 ], [ %1819, %2124 ], [ %1819, %1815 ], [ %2588, %2657 ], [ %2588, %2655 ], [ %2588, %2623 ], [ %2588, %2608 ], [ %1819, %1828 ]
  %2674 = phi float [ %2589, %2586 ], [ %1820, %2124 ], [ %1820, %1815 ], [ %2589, %2657 ], [ %2589, %2655 ], [ %2589, %2623 ], [ %2589, %2608 ], [ %1820, %1828 ]
  %2675 = phi float [ %2590, %2586 ], [ %1821, %2124 ], [ %1821, %1815 ], [ %2590, %2657 ], [ %2590, %2655 ], [ %2590, %2623 ], [ %2590, %2608 ], [ %1821, %1828 ]
  %2676 = phi float [ %2591, %2586 ], [ %1822, %2124 ], [ %1822, %1815 ], [ %2591, %2657 ], [ %2591, %2655 ], [ %2591, %2623 ], [ %2591, %2608 ], [ %1822, %1828 ]
  %2677 = phi float [ %2592, %2586 ], [ %1823, %2124 ], [ %1823, %1815 ], [ %2592, %2657 ], [ %2592, %2655 ], [ %2592, %2623 ], [ %2592, %2608 ], [ %1823, %1828 ]
  %2678 = phi float [ %2593, %2586 ], [ %1824, %2124 ], [ %1824, %1815 ], [ %2593, %2657 ], [ %2593, %2655 ], [ %2593, %2623 ], [ %2593, %2608 ], [ %1824, %1828 ]
  %2679 = phi float [ %1825, %2586 ], [ %1825, %2124 ], [ %1825, %1815 ], [ %2668, %2657 ], [ %1825, %2655 ], [ %2654, %2623 ], [ %2620, %2608 ], [ %1825, %1828 ]
  %2680 = phi float [ %1826, %2586 ], [ %1826, %2124 ], [ %1826, %1815 ], [ %2665, %2657 ], [ %1826, %2655 ], [ %2631, %2623 ], [ %2617, %2608 ], [ %1826, %1828 ]
  %2681 = phi float [ %2594, %2586 ], [ %1827, %2124 ], [ %1827, %1815 ], [ %2594, %2657 ], [ %2594, %2655 ], [ %2594, %2623 ], [ %2594, %2608 ], [ %1827, %1828 ]
  br i1 %374, label %3523, label %2682

; <label>:2682                                    ; preds = %2669
  %2683 = icmp ult i32 %425, 4
  %2684 = add i32 %43, 72
  %2685 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2686 = extractvalue %dx.types.ResRet.i32 %2685, 0
  %2687 = add i32 %43, 76
  %2688 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2687, i32 undef)  ; BufferLoad(srv,index,wot)
  %2689 = extractvalue %dx.types.ResRet.i32 %2688, 0
  %2690 = or i32 %2689, %2686
  %2691 = icmp eq i32 %2690, 0
  br i1 %2691, label %3523, label %2692

; <label>:2692                                    ; preds = %2682
  %2693 = and i32 %2686, 262144
  %2694 = icmp ne i32 %2693, 0
  %2695 = select i1 %2694, float %46, float 1.000000e+00
  %2696 = select i1 %2694, float %47, float 0.000000e+00
  %2697 = select i1 %2694, float %48, float 0.000000e+00
  %2698 = select i1 %2694, float %49, float 1.000000e+00
  %2699 = select i1 %2694, float %50, float %66
  %2700 = select i1 %2694, float %51, float %67
  %2701 = add i32 %43, 332
  %2702 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %2703 = extractvalue %dx.types.ResRet.i32 %2702, 0
  %2704 = lshr i32 %2703, 16
  %2705 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2704)  ; LegacyF16ToF32(value)
  %2706 = fmul fast float %2705, 0x3F50624DE0000000
  %2707 = add i32 %43, 136
  %2708 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2707, i32 undef)  ; BufferLoad(srv,index,wot)
  %2709 = extractvalue %dx.types.ResRet.i32 %2708, 0
  %2710 = lshr i32 %2709, 16
  %2711 = and i32 %2710, 255
  %2712 = lshr i32 %2709, 24
  %2713 = add i32 %43, 340
  %2714 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2713, i32 undef)  ; BufferLoad(srv,index,wot)
  %2715 = extractvalue %dx.types.ResRet.i32 %2714, 0
  %2716 = and i32 %2715, 65535
  %2717 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2716)  ; LegacyF16ToF32(value)
  %2718 = lshr i32 %2715, 16
  %2719 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2718)  ; LegacyF16ToF32(value)
  %2720 = add i32 %43, 80
  %2721 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2720, i32 undef)  ; BufferLoad(srv,index,wot)
  %2722 = extractvalue %dx.types.ResRet.i32 %2721, 0
  %2723 = lshr i32 %2722, 22
  %2724 = shl nuw nsw i32 %2723, 5
  %2725 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2724)  ; LegacyF16ToF32(value)
  %2726 = shl i32 %2722, 4
  %2727 = and i32 %2726, 32752
  %2728 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2727)  ; LegacyF16ToF32(value)
  %2729 = lshr i32 %2722, 7
  %2730 = and i32 %2729, 32752
  %2731 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2730)  ; LegacyF16ToF32(value)
  %2732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2733 = extractvalue %dx.types.CBufRet.f32 %2732, 3
  %2734 = fmul fast float %2733, 1.000000e+03
  %2735 = fmul fast float %364, %2734
  %2736 = call float @dx.op.unary.f32(i32 22, float %2735)  ; Frc(value)
  %2737 = fadd fast float %2736, %354
  %2738 = fmul fast float %365, %2734
  %2739 = call float @dx.op.unary.f32(i32 22, float %2738)  ; Frc(value)
  %2740 = fadd fast float %2739, %356
  %2741 = fmul fast float %2706, %2734
  %2742 = call float @dx.op.unary.f32(i32 22, float %2741)  ; Frc(value)
  %2743 = fmul fast float %2742, 0x401921FB60000000
  %2744 = fadd fast float %2743, %2725
  %2745 = call float @dx.op.unary.f32(i32 13, float %2744)  ; Sin(value)
  %2746 = call float @dx.op.unary.f32(i32 12, float %2744)  ; Cos(value)
  %2747 = fsub fast float -0.000000e+00, %2745
  %2748 = fadd fast float %2699, -5.000000e-01
  %2749 = fadd fast float %2700, -5.000000e-01
  %2750 = fmul fast float %2717, %2748
  %2751 = fmul fast float %2719, %2749
  %2752 = fadd fast float %2750, 5.000000e-01
  %2753 = fadd fast float %2751, 5.000000e-01
  %2754 = fmul fast float %2728, %2752
  %2755 = fmul fast float %2731, %2753
  %2756 = fmul fast float %2746, %2754
  %2757 = call float @dx.op.tertiary.f32(i32 46, float %2747, float %2755, float %2756)  ; FMad(a,b,c)
  %2758 = fmul fast float %2745, %2754
  %2759 = call float @dx.op.tertiary.f32(i32 46, float %2746, float %2755, float %2758)  ; FMad(a,b,c)
  %2760 = fadd fast float %2737, %2757
  %2761 = fadd fast float %2740, %2759
  %2762 = icmp ugt i32 %2711, 1
  %2763 = icmp ugt i32 %2709, 33554431
  %2764 = or i1 %2763, %2762
  br i1 %2764, label %2765, label %2790

; <label>:2765                                    ; preds = %2692
  %2766 = add i32 %43, 276
  %2767 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2766, i32 undef)  ; BufferLoad(srv,index,wot)
  %2768 = extractvalue %dx.types.ResRet.i32 %2767, 0
  %2769 = lshr i32 %2768, 16
  %2770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2769)  ; LegacyF16ToF32(value)
  %2771 = fmul fast float %2733, %2770
  %2772 = call float @dx.op.unary.f32(i32 22, float %2771)  ; Frc(value)
  %2773 = mul nuw nsw i32 %2711, %2712
  %2774 = uitofp i32 %2773 to float
  %2775 = fmul fast float %2772, %2774
  %2776 = call float @dx.op.unary.f32(i32 27, float %2775)  ; Round_ni(value)
  %2777 = fptoui float %2776 to i32
  %2778 = urem i32 %2777, %2711
  %2779 = udiv i32 %2777, %2712
  %2780 = call float @dx.op.unary.f32(i32 22, float %2760)  ; Frc(value)
  %2781 = call float @dx.op.unary.f32(i32 22, float %2761)  ; Frc(value)
  %2782 = uitofp i32 %2778 to float
  %2783 = uitofp i32 %2779 to float
  %2784 = fadd fast float %2780, %2782
  %2785 = fadd fast float %2781, %2783
  %2786 = uitofp i32 %2711 to float
  %2787 = uitofp i32 %2712 to float
  %2788 = fdiv fast float %2784, %2786
  %2789 = fdiv fast float %2785, %2787
  br label %2790

; <label>:2790                                    ; preds = %2765, %2692
  %2791 = phi float [ %2788, %2765 ], [ %2760, %2692 ]
  %2792 = phi float [ %2789, %2765 ], [ %2761, %2692 ]
  %2793 = and i32 %2686, 16777216
  %2794 = icmp eq i32 %2793, 0
  br i1 %2794, label %2904, label %2795

; <label>:2795                                    ; preds = %2790
  %2796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2797 = extractvalue %dx.types.CBufRet.f32 %2796, 0
  %2798 = extractvalue %dx.types.CBufRet.f32 %2796, 1
  %2799 = extractvalue %dx.types.CBufRet.f32 %2796, 2
  %2800 = fadd fast float %2797, %141
  %2801 = fadd fast float %2798, %142
  %2802 = fadd fast float %2799, %143
  %2803 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2804 = extractvalue %dx.types.CBufRet.f32 %2803, 0
  %2805 = call float @dx.op.unary.f32(i32 7, float %2804)  ; Saturate(value)
  %2806 = icmp eq i32 %44, 65535
  br i1 %2806, label %2901, label %2807

; <label>:2807                                    ; preds = %2795
  %2808 = lshr i32 %44, 1
  %2809 = shl i32 %2808, 2
  %2810 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2809, i32 undef)  ; BufferLoad(srv,index,wot)
  %2811 = extractvalue %dx.types.ResRet.i32 %2810, 0
  %2812 = and i32 %44, 1
  %2813 = icmp ne i32 %2812, 0
  %2814 = lshr i32 %2811, 16
  %2815 = and i32 %2811, 65535
  %2816 = select i1 %2813, i32 %2814, i32 %2815
  %2817 = icmp eq i32 %2816, 65535
  br i1 %2817, label %2897, label %2818

; <label>:2818                                    ; preds = %2807
  %2819 = mul nuw nsw i32 %2816, 40
  %2820 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2819, i32 undef)  ; BufferLoad(srv,index,wot)
  %2821 = extractvalue %dx.types.ResRet.f32 %2820, 0
  %2822 = extractvalue %dx.types.ResRet.f32 %2820, 1
  %2823 = extractvalue %dx.types.ResRet.f32 %2820, 2
  %2824 = add nuw nsw i32 %2819, 12
  %2825 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2824, i32 undef)  ; BufferLoad(srv,index,wot)
  %2826 = extractvalue %dx.types.ResRet.f32 %2825, 0
  %2827 = extractvalue %dx.types.ResRet.f32 %2825, 1
  %2828 = extractvalue %dx.types.ResRet.f32 %2825, 2
  %2829 = add nuw nsw i32 %2819, 24
  %2830 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2829, i32 undef)  ; BufferLoad(srv,index,wot)
  %2831 = extractvalue %dx.types.ResRet.f32 %2830, 0
  %2832 = extractvalue %dx.types.ResRet.f32 %2830, 1
  %2833 = extractvalue %dx.types.ResRet.f32 %2830, 2
  %2834 = add nuw nsw i32 %2819, 36
  %2835 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2834, i32 undef)  ; BufferLoad(srv,index,wot)
  %2836 = extractvalue %dx.types.ResRet.f32 %2835, 0
  %2837 = fsub fast float %2800, %2821
  %2838 = fsub fast float %2801, %2822
  %2839 = fsub fast float %2802, %2823
  %2840 = fmul fast float %2836, %2837
  %2841 = fmul fast float %2836, %2838
  %2842 = fmul fast float %2836, %2839
  %2843 = call float @dx.op.unary.f32(i32 27, float %2840)  ; Round_ni(value)
  %2844 = call float @dx.op.unary.f32(i32 27, float %2841)  ; Round_ni(value)
  %2845 = call float @dx.op.unary.f32(i32 27, float %2842)  ; Round_ni(value)
  %2846 = fadd fast float %2843, 5.000000e-01
  %2847 = fadd fast float %2844, 5.000000e-01
  %2848 = fadd fast float %2845, 5.000000e-01
  %2849 = fmul fast float %2846, %2826
  %2850 = fmul fast float %2847, %2827
  %2851 = fmul fast float %2848, %2828
  %2852 = shl i32 %44, 2
  %2853 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2854 = extractvalue %dx.types.ResRet.i32 %2853, 0
  %2855 = add i32 %2854, 0
  %2856 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2855, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2857 = call float @dx.op.unary.f32(i32 22, float %2849)  ; Frc(value)
  %2858 = call float @dx.op.unary.f32(i32 22, float %2850)  ; Frc(value)
  %2859 = call float @dx.op.unary.f32(i32 22, float %2851)  ; Frc(value)
  %2860 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2856, %dx.types.Handle %40, float %2857, float %2858, float %2859, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2861 = extractvalue %dx.types.ResRet.f32 %2860, 0
  %2862 = extractvalue %dx.types.ResRet.f32 %2860, 1
  %2863 = extractvalue %dx.types.ResRet.f32 %2860, 2
  %2864 = fmul fast float %2861, 1.023000e+03
  %2865 = fmul fast float %2862, 1.023000e+03
  %2866 = fmul fast float %2863, 1.023000e+03
  %2867 = fadd fast float %2864, 5.000000e-01
  %2868 = fadd fast float %2865, 5.000000e-01
  %2869 = fadd fast float %2866, 5.000000e-01
  %2870 = call float @dx.op.unary.f32(i32 27, float %2867)  ; Round_ni(value)
  %2871 = call float @dx.op.unary.f32(i32 27, float %2868)  ; Round_ni(value)
  %2872 = call float @dx.op.unary.f32(i32 27, float %2869)  ; Round_ni(value)
  %2873 = fsub fast float %2840, %2843
  %2874 = fsub fast float %2841, %2844
  %2875 = fsub fast float %2842, %2845
  %2876 = fmul fast float %2873, 7.500000e-01
  %2877 = fmul fast float %2874, 7.500000e-01
  %2878 = fmul fast float %2875, 7.500000e-01
  %2879 = fadd fast float %2843, 1.250000e-01
  %2880 = fadd fast float %2879, %2876
  %2881 = fadd fast float %2880, %2870
  %2882 = fadd fast float %2844, 1.250000e-01
  %2883 = fadd fast float %2882, %2877
  %2884 = fadd fast float %2883, %2871
  %2885 = fadd fast float %2845, 1.250000e-01
  %2886 = fadd fast float %2885, %2878
  %2887 = fadd fast float %2886, %2872
  %2888 = fmul fast float %2881, %2831
  %2889 = fmul fast float %2884, %2832
  %2890 = fmul fast float %2887, %2833
  %2891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2852, i32 undef)  ; BufferLoad(srv,index,wot)
  %2892 = extractvalue %dx.types.ResRet.i32 %2891, 0
  %2893 = add i32 %2892, 0
  %2894 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2893, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2895 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2894, %dx.types.Handle %38, float %2888, float %2889, float %2890, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2896 = extractvalue %dx.types.ResRet.f32 %2895, 0
  br label %2897

; <label>:2897                                    ; preds = %2818, %2807
  %2898 = phi float [ %2896, %2818 ], [ -1.000000e+00, %2807 ]
  %2899 = fadd fast float %2898, %2805
  %2900 = call float @dx.op.unary.f32(i32 7, float %2899)  ; Saturate(value)
  br label %2901

; <label>:2901                                    ; preds = %2897, %2795
  %2902 = phi float [ %2900, %2897 ], [ %2805, %2795 ]
  %2903 = fmul fast float %2902, %420
  br label %2904

; <label>:2904                                    ; preds = %2901, %2790
  %2905 = phi float [ %2903, %2901 ], [ %420, %2790 ]
  %2906 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2907 = extractvalue %dx.types.ResRet.i32 %2906, 0
  %2908 = and i32 %2907, 256
  %2909 = icmp eq i32 %2908, 0
  br i1 %2909, label %2956, label %2910

; <label>:2910                                    ; preds = %2904
  %2911 = add i32 %43, 484
  %2912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2911, i32 undef)  ; BufferLoad(srv,index,wot)
  %2913 = extractvalue %dx.types.ResRet.i32 %2912, 0
  %2914 = add i32 %2913, 0
  %2915 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2914, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2916 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2915, %dx.types.Handle %75, float %2791, float %2792, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2917 = extractvalue %dx.types.ResRet.f32 %2916, 0
  %2918 = add i32 %43, 148
  %2919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2918, i32 undef)  ; BufferLoad(srv,index,wot)
  %2920 = extractvalue %dx.types.ResRet.i32 %2919, 0
  %2921 = shl i32 %2920, 4
  %2922 = and i32 %2921, 32752
  %2923 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2922)  ; LegacyF16ToF32(value)
  %2924 = lshr i32 %2920, 7
  %2925 = and i32 %2924, 32752
  %2926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2925)  ; LegacyF16ToF32(value)
  %2927 = fsub fast float 1.000000e+00, %2905
  %2928 = call float @dx.op.binary.f32(i32 35, float %2927, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2929 = bitcast float %2905 to i32
  %2930 = sitofp i32 %2929 to float
  %2931 = fadd fast float %2930, 0xC1CFBF8940000000
  %2932 = fmul fast float %2926, %2931
  %2933 = fadd fast float %2932, 0x41CFBF8940000000
  %2934 = fptosi float %2933 to i32
  %2935 = bitcast i32 %2934 to float
  %2936 = bitcast float %2928 to i32
  %2937 = sitofp i32 %2936 to float
  %2938 = fadd fast float %2937, 0xC1CFBF8940000000
  %2939 = fmul fast float %2938, %2926
  %2940 = fadd fast float %2939, 0x41CFBF8940000000
  %2941 = fptosi float %2940 to i32
  %2942 = bitcast i32 %2941 to float
  %2943 = fmul fast float %2935, %2923
  %2944 = fmul fast float %2942, %2923
  %2945 = fsub fast float %2928, %2943
  %2946 = fadd fast float %2944, %2928
  %2947 = call float @dx.op.unary.f32(i32 7, float %2945)  ; Saturate(value)
  %2948 = call float @dx.op.unary.f32(i32 7, float %2946)  ; Saturate(value)
  %2949 = fsub fast float %2917, %2947
  %2950 = fsub fast float %2948, %2947
  %2951 = bitcast float %2950 to i32
  %2952 = sub nsw i32 2129859010, %2951
  %2953 = bitcast i32 %2952 to float
  %2954 = fmul fast float %2953, %2949
  %2955 = call float @dx.op.unary.f32(i32 7, float %2954)  ; Saturate(value)
  br label %2956

; <label>:2956                                    ; preds = %2910, %2904
  %2957 = phi float [ %2955, %2910 ], [ %2905, %2904 ]
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = and i32 %2959, 128
  %2961 = icmp eq i32 %2960, 0
  br i1 %2961, label %2978, label %2962

; <label>:2962                                    ; preds = %2956
  %2963 = add i32 %43, 468
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = add i32 %2965, 0
  %2967 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2966, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2968 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2967, %dx.types.Handle %75, float %2791, float %2792, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2969 = extractvalue %dx.types.ResRet.f32 %2968, 0
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 524288
  %2973 = icmp ne i32 %2972, 0
  %2974 = fcmp fast ogt float %2969, 0x3FE0101020000000
  %2975 = select i1 %2974, float 1.000000e+00, float 0.000000e+00
  %2976 = select i1 %2973, float %2975, float %2969
  %2977 = fmul fast float %2976, %2957
  br label %2978

; <label>:2978                                    ; preds = %2962, %2956
  %2979 = phi float [ %2977, %2962 ], [ %2957, %2956 ]
  %2980 = fcmp fast ult float %2979, 0x3F70101020000000
  br i1 %2980, label %3523, label %2981

; <label>:2981                                    ; preds = %2978
  %2982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %2983 = extractvalue %dx.types.ResRet.i32 %2982, 0
  %2984 = and i32 %2983, 16
  %2985 = icmp eq i32 %2984, 0
  br i1 %2985, label %3184, label %2986

; <label>:2986                                    ; preds = %2981
  %2987 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2707, i32 undef)  ; BufferLoad(srv,index,wot)
  %2988 = extractvalue %dx.types.ResRet.i32 %2987, 0
  %2989 = add i32 %43, 420
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = add i32 %2991, 0
  %2993 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2992, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2994 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2993, %dx.types.Handle %74, float %2791, float %2792, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2995 = extractvalue %dx.types.ResRet.f32 %2994, 0
  %2996 = extractvalue %dx.types.ResRet.f32 %2994, 1
  %2997 = extractvalue %dx.types.ResRet.f32 %2994, 2
  %2998 = extractvalue %dx.types.ResRet.f32 %2994, 3
  %2999 = and i32 %2988, 255
  %3000 = uitofp i32 %2999 to float
  %3001 = lshr i32 %2988, 8
  %3002 = and i32 %3001, 255
  %3003 = uitofp i32 %3002 to float
  %3004 = fmul fast float %2998, %3000
  %3005 = fadd fast float %3004, %3003
  %3006 = fmul fast float %3005, 0x3F70101000000000
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = and i32 %3008, 512
  %3010 = icmp eq i32 %3009, 0
  br i1 %3010, label %3019, label %3011

; <label>:3011                                    ; preds = %2986
  %3012 = add i32 %43, 500
  %3013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3012, i32 undef)  ; BufferLoad(srv,index,wot)
  %3014 = extractvalue %dx.types.ResRet.i32 %3013, 0
  %3015 = add i32 %3014, 0
  %3016 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3015, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3017 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3016, %dx.types.Handle %75, float %2791, float %2792, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3018 = extractvalue %dx.types.ResRet.f32 %3017, 0
  br label %3019

; <label>:3019                                    ; preds = %3011, %2986
  %3020 = phi float [ %3018, %3011 ], [ 1.000000e+00, %2986 ]
  %3021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3022 = extractvalue %dx.types.ResRet.i32 %3021, 0
  %3023 = and i32 %3022, 33554432
  %3024 = icmp eq i32 %3023, 0
  br i1 %3024, label %3131, label %3025

; <label>:3025                                    ; preds = %3019
  %3026 = add i32 %43, 272
  %3027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3026, i32 undef)  ; BufferLoad(srv,index,wot)
  %3028 = extractvalue %dx.types.ResRet.i32 %3027, 0
  %3029 = and i32 %3028, 65535
  %3030 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3029)  ; LegacyF16ToF32(value)
  %3031 = lshr i32 %3028, 16
  %3032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3031)  ; LegacyF16ToF32(value)
  %3033 = add i32 %43, 276
  %3034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3033, i32 undef)  ; BufferLoad(srv,index,wot)
  %3035 = extractvalue %dx.types.ResRet.i32 %3034, 0
  %3036 = and i32 %3035, 65535
  %3037 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3036)  ; LegacyF16ToF32(value)
  %3038 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3039 = extractvalue %dx.types.ResRet.i32 %3038, 0
  %3040 = lshr i32 %3039, 24
  %3041 = uitofp i32 %3040 to float
  %3042 = fmul fast float %3041, 0x3F70101020000000
  %3043 = and i32 %3039, 255
  %3044 = uitofp i32 %3043 to float
  %3045 = fmul fast float %3044, 0x3F70101020000000
  %3046 = lshr i32 %3039, 8
  %3047 = and i32 %3046, 255
  %3048 = uitofp i32 %3047 to float
  %3049 = fmul fast float %3048, 0x3F70101020000000
  %3050 = lshr i32 %3039, 16
  %3051 = and i32 %3050, 255
  %3052 = uitofp i32 %3051 to float
  %3053 = fmul fast float %3052, 0x3F70101020000000
  %3054 = add i32 %43, 268
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3054, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = lshr i32 %3056, 24
  %3058 = uitofp i32 %3057 to float
  %3059 = fmul fast float %3058, 0x3F70101020000000
  %3060 = and i32 %3056, 255
  %3061 = uitofp i32 %3060 to float
  %3062 = fmul fast float %3061, 0x3F70101020000000
  %3063 = lshr i32 %3056, 8
  %3064 = and i32 %3063, 255
  %3065 = uitofp i32 %3064 to float
  %3066 = fmul fast float %3065, 0x3F70101020000000
  %3067 = lshr i32 %3056, 16
  %3068 = and i32 %3067, 255
  %3069 = uitofp i32 %3068 to float
  %3070 = fmul fast float %3069, 0x3F70101020000000
  %3071 = bitcast float %2995 to i32
  %3072 = ashr i32 %3071, 1
  %3073 = sub nsw i32 1597463174, %3072
  %3074 = bitcast i32 %3073 to float
  %3075 = fmul fast float %2995, 5.000000e-01
  %3076 = fmul fast float %3074, %3074
  %3077 = fmul fast float %3076, %3075
  %3078 = fsub fast float 1.500000e+00, %3077
  %3079 = fmul fast float %3074, %2995
  %3080 = fmul fast float %3079, %3078
  %3081 = bitcast float %2996 to i32
  %3082 = ashr i32 %3081, 1
  %3083 = sub nsw i32 1597463174, %3082
  %3084 = bitcast i32 %3083 to float
  %3085 = fmul fast float %2996, 5.000000e-01
  %3086 = fmul fast float %3084, %3084
  %3087 = fmul fast float %3086, %3085
  %3088 = fsub fast float 1.500000e+00, %3087
  %3089 = fmul fast float %3084, %2996
  %3090 = fmul fast float %3089, %3088
  %3091 = bitcast float %2997 to i32
  %3092 = ashr i32 %3091, 1
  %3093 = sub nsw i32 1597463174, %3092
  %3094 = bitcast i32 %3093 to float
  %3095 = fmul fast float %2997, 5.000000e-01
  %3096 = fmul fast float %3094, %3094
  %3097 = fmul fast float %3096, %3095
  %3098 = fsub fast float 1.500000e+00, %3097
  %3099 = fmul fast float %3094, %2997
  %3100 = fmul fast float %3099, %3098
  %3101 = fsub fast float %3080, %3062
  %3102 = fsub fast float %3090, %3066
  %3103 = fsub fast float %3100, %3070
  %3104 = fmul fast float %3101, %3030
  %3105 = fmul fast float %3102, %3032
  %3106 = fmul fast float %3103, %3037
  %3107 = fadd fast float %3104, %3045
  %3108 = fadd fast float %3105, %3049
  %3109 = fadd fast float %3106, %3053
  %3110 = call float @dx.op.unary.f32(i32 7, float %3107)  ; Saturate(value)
  %3111 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  %3112 = call float @dx.op.unary.f32(i32 7, float %3109)  ; Saturate(value)
  %3113 = fmul fast float %3110, %3110
  %3114 = fmul fast float %3111, %3111
  %3115 = fmul fast float %3112, %3112
  %3116 = fsub fast float %3113, %2995
  %3117 = fsub fast float %3114, %2996
  %3118 = fsub fast float %3115, %2997
  %3119 = fmul fast float %3116, %3020
  %3120 = fmul fast float %3117, %3020
  %3121 = fmul fast float %3118, %3020
  %3122 = fadd fast float %3119, %2995
  %3123 = fadd fast float %3120, %2996
  %3124 = fadd fast float %3121, %2997
  %3125 = fadd fast float %3042, %3006
  %3126 = fsub fast float %3125, %3059
  %3127 = call float @dx.op.unary.f32(i32 7, float %3126)  ; Saturate(value)
  %3128 = fsub fast float %3127, %3006
  %3129 = fmul fast float %3128, %3020
  %3130 = fadd fast float %3129, %3006
  br label %3184

; <label>:3131                                    ; preds = %3019
  %3132 = and i32 %3022, 134217728
  %3133 = icmp eq i32 %3132, 0
  br i1 %3133, label %3168, label %3134

; <label>:3134                                    ; preds = %3131
  %3135 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %3136 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %3137 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %3138 = fadd fast float %3135, -5.000000e-01
  %3139 = fadd fast float %3136, -5.000000e-01
  %3140 = fadd fast float %3137, -5.000000e-01
  %3141 = fmul fast float %3138, %3020
  %3142 = fmul fast float %3139, %3020
  %3143 = fmul fast float %3140, %3020
  %3144 = fadd fast float %3141, 5.000000e-01
  %3145 = fadd fast float %3142, 5.000000e-01
  %3146 = fadd fast float %3143, 5.000000e-01
  %3147 = call float @dx.op.unary.f32(i32 24, float %2995)  ; Sqrt(value)
  %3148 = call float @dx.op.unary.f32(i32 24, float %2996)  ; Sqrt(value)
  %3149 = call float @dx.op.unary.f32(i32 24, float %2997)  ; Sqrt(value)
  %3150 = fmul fast float %3144, 2.000000e+00
  %3151 = fsub fast float 1.000000e+00, %3150
  %3152 = fmul fast float %3151, %3147
  %3153 = fadd fast float %3152, %3150
  %3154 = fmul fast float %3153, %3147
  %3155 = fmul fast float %3145, 2.000000e+00
  %3156 = fsub fast float 1.000000e+00, %3155
  %3157 = fmul fast float %3156, %3148
  %3158 = fadd fast float %3157, %3155
  %3159 = fmul fast float %3158, %3148
  %3160 = fmul fast float %3146, 2.000000e+00
  %3161 = fsub fast float 1.000000e+00, %3160
  %3162 = fmul fast float %3161, %3149
  %3163 = fadd fast float %3162, %3160
  %3164 = fmul fast float %3163, %3149
  %3165 = fmul fast float %3154, %3154
  %3166 = fmul fast float %3159, %3159
  %3167 = fmul fast float %3164, %3164
  br label %3184

; <label>:3168                                    ; preds = %3131
  %3169 = fmul fast float %341, %341
  %3170 = fmul fast float %345, %345
  %3171 = fmul fast float %349, %349
  %3172 = fadd fast float %3169, -1.000000e+00
  %3173 = fadd fast float %3170, -1.000000e+00
  %3174 = fadd fast float %3171, -1.000000e+00
  %3175 = fmul fast float %3020, %3172
  %3176 = fmul fast float %3020, %3173
  %3177 = fmul fast float %3020, %3174
  %3178 = fadd fast float %3175, 1.000000e+00
  %3179 = fadd fast float %3176, 1.000000e+00
  %3180 = fadd fast float %3177, 1.000000e+00
  %3181 = fmul fast float %3178, %2995
  %3182 = fmul fast float %3179, %2996
  %3183 = fmul fast float %3180, %2997
  br label %3184

; <label>:3184                                    ; preds = %3168, %3134, %3025, %2981
  %3185 = phi float [ %3130, %3025 ], [ %3006, %3134 ], [ %3006, %3168 ], [ 0x3FA23C0BE0000000, %2981 ]
  %3186 = phi float [ %3122, %3025 ], [ %3165, %3134 ], [ %3181, %3168 ], [ 1.000000e+00, %2981 ]
  %3187 = phi float [ %3123, %3025 ], [ %3166, %3134 ], [ %3182, %3168 ], [ 1.000000e+00, %2981 ]
  %3188 = phi float [ %3124, %3025 ], [ %3167, %3134 ], [ %3183, %3168 ], [ 1.000000e+00, %2981 ]
  %3189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3190 = extractvalue %dx.types.CBufRet.i32 %3189, 1
  %3191 = and i32 %3190, 1
  %3192 = icmp ne i32 %3191, 0
  %3193 = add i32 %43, 372
  %3194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3193, i32 undef)  ; BufferLoad(srv,index,wot)
  %3195 = extractvalue %dx.types.ResRet.i32 %3194, 0
  %3196 = and i32 %3195, 32
  %3197 = icmp ne i32 %3196, 0
  %3198 = and i1 %3192, %3197
  %3199 = select i1 %3198, float 1.000000e+00, float %3186
  %3200 = select i1 %3198, float 0x3FD3333340000000, float %3187
  %3201 = select i1 %3198, float 0x3FD3333340000000, float %3188
  %3202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3203 = extractvalue %dx.types.ResRet.i32 %3202, 0
  %3204 = and i32 %3203, 32
  %3205 = icmp eq i32 %3204, 0
  br i1 %3205, label %3278, label %3206

; <label>:3206                                    ; preds = %3184
  %3207 = add i32 %43, 140
  %3208 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3207, i32 undef)  ; BufferLoad(srv,index,wot)
  %3209 = extractvalue %dx.types.ResRet.i32 %3208, 0
  %3210 = add i32 %43, 436
  %3211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3210, i32 undef)  ; BufferLoad(srv,index,wot)
  %3212 = extractvalue %dx.types.ResRet.i32 %3211, 0
  %3213 = add i32 %3212, 0
  %3214 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3213, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3215 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3214, %dx.types.Handle %74, float %2791, float %2792, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3216 = extractvalue %dx.types.ResRet.f32 %3215, 0
  %3217 = extractvalue %dx.types.ResRet.f32 %3215, 1
  %3218 = extractvalue %dx.types.ResRet.f32 %3215, 2
  %3219 = extractvalue %dx.types.ResRet.f32 %3215, 3
  %3220 = and i32 %3209, 255
  %3221 = uitofp i32 %3220 to float
  %3222 = lshr i32 %3209, 8
  %3223 = and i32 %3222, 255
  %3224 = uitofp i32 %3223 to float
  %3225 = lshr i32 %3209, 16
  %3226 = and i32 %3225, 255
  %3227 = uitofp i32 %3226 to float
  %3228 = fmul fast float %3227, 0x3F70101000000000
  %3229 = fmul fast float %3216, %3221
  %3230 = fadd fast float %3229, %3224
  %3231 = fmul fast float %3230, 0x3F70101000000000
  %3232 = fadd fast float %3217, -5.000000e-01
  %3233 = fadd fast float %3219, -5.000000e-01
  %3234 = fmul fast float %3232, %3228
  %3235 = fmul fast float %3233, %3228
  %3236 = fadd fast float %3234, 5.000000e-01
  %3237 = fadd fast float %3235, 5.000000e-01
  %3238 = fmul fast float %3236, 2.000000e+00
  %3239 = fadd fast float %3238, -1.000000e+00
  %3240 = fmul fast float %3237, 2.000000e+00
  %3241 = fadd fast float %3240, -1.000000e+00
  %3242 = fadd fast float %3239, %3241
  %3243 = fmul fast float %3242, 5.000000e-01
  %3244 = fsub fast float %3239, %3241
  %3245 = fmul fast float %3244, 5.000000e-01
  %3246 = call float @dx.op.unary.f32(i32 6, float %3243)  ; FAbs(value)
  %3247 = fsub fast float 1.000000e+00, %3246
  %3248 = call float @dx.op.unary.f32(i32 6, float %3245)  ; FAbs(value)
  %3249 = fsub fast float %3247, %3248
  %3250 = call float @dx.op.dot3.f32(i32 55, float %3243, float %3245, float %3249, float %3243, float %3245, float %3249)  ; Dot3(ax,ay,az,bx,by,bz)
  %3251 = call float @dx.op.unary.f32(i32 25, float %3250)  ; Rsqrt(value)
  %3252 = fmul fast float %3243, %3251
  %3253 = fmul fast float %3245, %3251
  %3254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3255 = extractvalue %dx.types.ResRet.i32 %3254, 0
  %3256 = and i32 %3255, 67108864
  %3257 = icmp eq i32 %3256, 0
  br i1 %3257, label %3274, label %3258

; <label>:3258                                    ; preds = %3206
  %3259 = add i32 %43, 328
  %3260 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3259, i32 undef)  ; BufferLoad(srv,index,wot)
  %3261 = extractvalue %dx.types.ResRet.i32 %3260, 0
  %3262 = and i32 %3261, 65535
  %3263 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3262)  ; LegacyF16ToF32(value)
  %3264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2701, i32 undef)  ; BufferLoad(srv,index,wot)
  %3265 = extractvalue %dx.types.ResRet.i32 %3264, 0
  %3266 = and i32 %3265, 65535
  %3267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3266)  ; LegacyF16ToF32(value)
  %3268 = lshr i32 %3261, 16
  %3269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3268)  ; LegacyF16ToF32(value)
  %3270 = fsub fast float %3231, %3269
  %3271 = fmul fast float %3270, %3263
  %3272 = fadd fast float %3271, %3267
  %3273 = call float @dx.op.unary.f32(i32 7, float %3272)  ; Saturate(value)
  br label %3274

; <label>:3274                                    ; preds = %3258, %3206
  %3275 = phi float [ %3273, %3258 ], [ %3231, %3206 ]
  %3276 = call float @dx.op.dot2.f32(i32 54, float %3252, float %3253, float %2695, float %2696)  ; Dot2(ax,ay,bx,by)
  %3277 = call float @dx.op.dot2.f32(i32 54, float %3252, float %3253, float %2697, float %2698)  ; Dot2(ax,ay,bx,by)
  br label %3278

; <label>:3278                                    ; preds = %3274, %3184
  %3279 = phi float [ %3275, %3274 ], [ 0x3FD6666660000000, %3184 ]
  %3280 = phi float [ %3276, %3274 ], [ 0.000000e+00, %3184 ]
  %3281 = phi float [ %3277, %3274 ], [ 0.000000e+00, %3184 ]
  %3282 = phi float [ %3218, %3274 ], [ 1.000000e+00, %3184 ]
  %3283 = add i32 %43, 208
  %3284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3283, i32 undef)  ; BufferLoad(srv,index,wot)
  %3285 = extractvalue %dx.types.ResRet.i32 %3284, 0
  %3286 = lshr i32 %3285, 22
  %3287 = shl nuw nsw i32 %3286, 5
  %3288 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3287)  ; LegacyF16ToF32(value)
  %3289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.i32 %3289, 0
  %3291 = and i32 %3290, 64
  %3292 = icmp eq i32 %3291, 0
  br i1 %3292, label %3326, label %3293

; <label>:3293                                    ; preds = %3278
  %3294 = add i32 %43, 452
  %3295 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3294, i32 undef)  ; BufferLoad(srv,index,wot)
  %3296 = extractvalue %dx.types.ResRet.i32 %3295, 0
  %3297 = add i32 %3296, 0
  %3298 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3297, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3299 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3300 = extractvalue %dx.types.ResRet.i32 %3299, 0
  %3301 = and i32 %3300, 131072
  %3302 = icmp eq i32 %3301, 0
  %3303 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3298, %dx.types.Handle %74, float %2791, float %2792, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3304 = extractvalue %dx.types.ResRet.f32 %3303, 0
  %3305 = extractvalue %dx.types.ResRet.f32 %3303, 1
  %3306 = extractvalue %dx.types.ResRet.f32 %3303, 2
  %3307 = fmul fast float %3304, %329
  %3308 = fmul fast float %3305, %332
  %3309 = fmul fast float %3306, %335
  br i1 %3302, label %3316, label %3310

; <label>:3310                                    ; preds = %3293
  %3311 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3312 = extractvalue %dx.types.CBufRet.f32 %3311, 0
  %3313 = fmul fast float %3312, %3307
  %3314 = fmul fast float %3312, %3308
  %3315 = fmul fast float %3312, %3309
  br label %3316

; <label>:3316                                    ; preds = %3310, %3293
  %3317 = phi float [ %3313, %3310 ], [ %3307, %3293 ]
  %3318 = phi float [ %3314, %3310 ], [ %3308, %3293 ]
  %3319 = phi float [ %3315, %3310 ], [ %3309, %3293 ]
  %3320 = fmul fast float %3317, %3288
  %3321 = select i1 %183, float %3320, float %3317
  %3322 = call float @dx.op.dot3.f32(i32 55, float %3321, float %3318, float %3319, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3323 = select i1 %183, float 0.000000e+00, float %3317
  %3324 = select i1 %183, float %3322, float %3318
  %3325 = select i1 %183, float 0.000000e+00, float %3319
  br label %3326

; <label>:3326                                    ; preds = %3316, %3278
  %3327 = phi float [ %3323, %3316 ], [ 0.000000e+00, %3278 ]
  %3328 = phi float [ %3324, %3316 ], [ 0.000000e+00, %3278 ]
  %3329 = phi float [ %3325, %3316 ], [ 0.000000e+00, %3278 ]
  %3330 = add i32 %43, 144
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3330, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = and i32 %3332, 255
  %3334 = uitofp i32 %3333 to float
  %3335 = lshr i32 %3332, 8
  %3336 = and i32 %3335, 255
  %3337 = uitofp i32 %3336 to float
  %3338 = call float @dx.op.dot3.f32(i32 55, float %3199, float %3200, float %3201, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3339 = fmul fast float %3337, %3338
  %3340 = fadd fast float %3339, %3334
  %3341 = fmul fast float %3340, 0x3F70101020000000
  %3342 = call float @dx.op.unary.f32(i32 7, float %3341)  ; Saturate(value)
  br i1 %2683, label %3343, label %3351

; <label>:3343                                    ; preds = %3326
  %3344 = fsub fast float 1.000000e+00, %2979
  %3345 = fmul fast float %3344, %2672
  %3346 = fmul fast float %3344, %2673
  %3347 = fmul fast float %3344, %2674
  %3348 = fmul fast float %3344, %2675
  %3349 = fmul fast float %3344, %2676
  %3350 = fmul fast float %3344, %2677
  br label %3351

; <label>:3351                                    ; preds = %3343, %3326
  %3352 = phi float [ %3345, %3343 ], [ %2672, %3326 ]
  %3353 = phi float [ %3346, %3343 ], [ %2673, %3326 ]
  %3354 = phi float [ %3347, %3343 ], [ %2674, %3326 ]
  %3355 = phi float [ %3348, %3343 ], [ %2675, %3326 ]
  %3356 = phi float [ %3349, %3343 ], [ %2676, %3326 ]
  %3357 = phi float [ %3350, %3343 ], [ %2677, %3326 ]
  %3358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2684, i32 undef)  ; BufferLoad(srv,index,wot)
  %3359 = extractvalue %dx.types.ResRet.i32 %3358, 0
  %3360 = and i32 %3359, 3
  %3361 = icmp eq i32 %3360, 3
  br i1 %3361, label %3440, label %3362

; <label>:3362                                    ; preds = %3351
  %3363 = and i32 %3359, 16
  %3364 = icmp ne i32 %3363, 0
  %3365 = select i1 %3364, float %2979, float 0.000000e+00
  %3366 = icmp eq i32 %3360, 0
  br i1 %3366, label %3367, label %3395

; <label>:3367                                    ; preds = %3362
  %3368 = and i32 %3359, 64
  %3369 = icmp ne i32 %3368, 0
  %3370 = select i1 %3369, float %2979, float 0.000000e+00
  %3371 = fsub fast float %3199, %3352
  %3372 = fsub fast float %3200, %3353
  %3373 = fsub fast float %3201, %3354
  %3374 = fmul fast float %3365, %3371
  %3375 = fmul fast float %3365, %3372
  %3376 = fmul fast float %3365, %3373
  %3377 = fadd fast float %3374, %3352
  %3378 = fadd fast float %3375, %3353
  %3379 = fadd fast float %3376, %3354
  %3380 = fsub fast float %3185, %2678
  %3381 = fmul fast float %3365, %3380
  %3382 = fadd fast float %3381, %2678
  %3383 = fsub fast float %3327, %3355
  %3384 = fsub fast float %3328, %3356
  %3385 = fsub fast float %3329, %3357
  %3386 = fmul fast float %3370, %3383
  %3387 = fmul fast float %3370, %3384
  %3388 = fmul fast float %3370, %3385
  %3389 = fadd fast float %3386, %3355
  %3390 = fadd fast float %3387, %3356
  %3391 = fadd fast float %3388, %3357
  %3392 = fsub fast float %3342, %2681
  %3393 = fmul fast float %3365, %3392
  %3394 = fadd fast float %3393, %2681
  br label %3440

; <label>:3395                                    ; preds = %3362
  %3396 = icmp eq i32 %3360, 1
  br i1 %3396, label %3397, label %3410

; <label>:3397                                    ; preds = %3395
  %3398 = fadd fast float %3199, -1.000000e+00
  %3399 = fadd fast float %3200, -1.000000e+00
  %3400 = fadd fast float %3201, -1.000000e+00
  %3401 = fmul fast float %3365, %3398
  %3402 = fmul fast float %3365, %3399
  %3403 = fmul fast float %3365, %3400
  %3404 = fadd fast float %3401, 1.000000e+00
  %3405 = fadd fast float %3402, 1.000000e+00
  %3406 = fadd fast float %3403, 1.000000e+00
  %3407 = fmul fast float %3404, %3352
  %3408 = fmul fast float %3405, %3353
  %3409 = fmul fast float %3406, %3354
  br label %3440

; <label>:3410                                    ; preds = %3395
  %3411 = icmp eq i32 %3360, 2
  br i1 %3411, label %3412, label %3440

; <label>:3412                                    ; preds = %3410
  %3413 = call float @dx.op.unary.f32(i32 24, float %3199)  ; Sqrt(value)
  %3414 = call float @dx.op.unary.f32(i32 24, float %3200)  ; Sqrt(value)
  %3415 = call float @dx.op.unary.f32(i32 24, float %3201)  ; Sqrt(value)
  %3416 = fadd fast float %3413, -5.000000e-01
  %3417 = fadd fast float %3414, -5.000000e-01
  %3418 = fadd fast float %3415, -5.000000e-01
  %3419 = fmul fast float %3416, %3365
  %3420 = fmul fast float %3417, %3365
  %3421 = fmul fast float %3418, %3365
  %3422 = fadd fast float %3419, 5.000000e-01
  %3423 = fadd fast float %3420, 5.000000e-01
  %3424 = fadd fast float %3421, 5.000000e-01
  %3425 = fmul fast float %3422, 2.000000e+00
  %3426 = fsub fast float 1.000000e+00, %3425
  %3427 = fmul fast float %3426, %3352
  %3428 = fadd fast float %3427, %3425
  %3429 = fmul fast float %3428, %3352
  %3430 = fmul fast float %3423, 2.000000e+00
  %3431 = fsub fast float 1.000000e+00, %3430
  %3432 = fmul fast float %3431, %3353
  %3433 = fadd fast float %3432, %3430
  %3434 = fmul fast float %3433, %3353
  %3435 = fmul fast float %3424, 2.000000e+00
  %3436 = fsub fast float 1.000000e+00, %3435
  %3437 = fmul fast float %3436, %3354
  %3438 = fadd fast float %3437, %3435
  %3439 = fmul fast float %3438, %3354
  br label %3440

; <label>:3440                                    ; preds = %3412, %3410, %3397, %3367, %3351
  %3441 = phi float [ %3352, %3351 ], [ %3429, %3412 ], [ %3352, %3410 ], [ %3407, %3397 ], [ %3377, %3367 ]
  %3442 = phi float [ %3353, %3351 ], [ %3434, %3412 ], [ %3353, %3410 ], [ %3408, %3397 ], [ %3378, %3367 ]
  %3443 = phi float [ %3354, %3351 ], [ %3439, %3412 ], [ %3354, %3410 ], [ %3409, %3397 ], [ %3379, %3367 ]
  %3444 = phi float [ %3355, %3351 ], [ %3355, %3412 ], [ %3355, %3410 ], [ %3355, %3397 ], [ %3389, %3367 ]
  %3445 = phi float [ %3356, %3351 ], [ %3356, %3412 ], [ %3356, %3410 ], [ %3356, %3397 ], [ %3390, %3367 ]
  %3446 = phi float [ %3357, %3351 ], [ %3357, %3412 ], [ %3357, %3410 ], [ %3357, %3397 ], [ %3391, %3367 ]
  %3447 = phi float [ %2678, %3351 ], [ %2678, %3412 ], [ %2678, %3410 ], [ %2678, %3397 ], [ %3382, %3367 ]
  %3448 = phi float [ %2681, %3351 ], [ %2681, %3412 ], [ %2681, %3410 ], [ %2681, %3397 ], [ %3394, %3367 ]
  %3449 = and i32 %3359, 12
  %3450 = icmp eq i32 %3449, 12
  br i1 %3450, label %3523, label %3451

; <label>:3451                                    ; preds = %3440
  %3452 = and i32 %3359, 2097184
  %3453 = icmp eq i32 %3452, 2097184
  %3454 = select i1 %3453, float %2979, float 0.000000e+00
  %3455 = and i32 %3359, 4194336
  %3456 = icmp eq i32 %3455, 4194336
  %3457 = select i1 %3456, float %2979, float 0.000000e+00
  %3458 = and i32 %3359, 8388640
  %3459 = icmp eq i32 %3458, 8388640
  %3460 = select i1 %3459, float %2979, float 0.000000e+00
  %3461 = icmp eq i32 %3449, 0
  br i1 %3461, label %3462, label %3475

; <label>:3462                                    ; preds = %3451
  %3463 = fsub fast float %3280, %2670
  %3464 = fsub fast float %3281, %2671
  %3465 = fmul fast float %3454, %3463
  %3466 = fmul fast float %3454, %3464
  %3467 = fadd fast float %3465, %2670
  %3468 = fadd fast float %3466, %2671
  %3469 = fsub fast float %3282, %2680
  %3470 = fmul fast float %3457, %3469
  %3471 = fadd fast float %3470, %2680
  %3472 = fsub fast float %3279, %2679
  %3473 = fmul fast float %3460, %3472
  %3474 = fadd fast float %3473, %2679
  br label %3523

; <label>:3475                                    ; preds = %3451
  %3476 = icmp eq i32 %3449, 4
  br i1 %3476, label %3477, label %3509

; <label>:3477                                    ; preds = %3475
  %3478 = fmul fast float %3454, %3280
  %3479 = fmul fast float %3454, %3281
  %3480 = fadd fast float %3478, %2670
  %3481 = fadd fast float %3479, %2671
  %3482 = call float @dx.op.binary.f32(i32 36, float %2680, float %3282)  ; FMin(a,b)
  %3483 = fsub fast float %3482, %2680
  %3484 = fmul fast float %3483, %3457
  %3485 = fadd fast float %3484, %2680
  %3486 = fadd fast float %3279, %2679
  %3487 = fmul fast float %3486, 0x3FF337FAE0000000
  %3488 = fmul fast float %2679, %2679
  %3489 = fmul fast float %3279, %3279
  %3490 = fadd fast float %3489, %3488
  %3491 = fmul fast float %3490, 0x3FE5152B00000000
  %3492 = fmul fast float %2679, 0xBFCC1F85E0000000
  %3493 = fmul fast float %3492, %3279
  %3494 = fadd fast float %3493, 0xBFE1363700000000
  %3495 = fadd fast float %3494, %3487
  %3496 = fsub fast float %3495, %3491
  %3497 = fmul fast float %3486, 0x3FBA6F0D00000000
  %3498 = fmul fast float %3490, 0x3FD0432880000000
  %3499 = fmul fast float %2679, 0xBFEF110800000000
  %3500 = fmul fast float %3499, %3279
  %3501 = fadd fast float %3500, 1.000000e+00
  %3502 = fsub fast float %3501, %3497
  %3503 = fadd fast float %3502, %3498
  %3504 = fdiv fast float %3496, %3503
  %3505 = call float @dx.op.unary.f32(i32 7, float %3504)  ; Saturate(value)
  %3506 = fsub fast float %3505, %2679
  %3507 = fmul fast float %3506, %3460
  %3508 = fadd fast float %3507, %2679
  br label %3523

; <label>:3509                                    ; preds = %3475
  %3510 = icmp eq i32 %3449, 8
  br i1 %3510, label %3511, label %3523

; <label>:3511                                    ; preds = %3509
  %3512 = fmul fast float %3454, %3280
  %3513 = fmul fast float %3454, %3281
  %3514 = fadd fast float %3512, %2670
  %3515 = fadd fast float %3513, %2671
  %3516 = call float @dx.op.binary.f32(i32 36, float %2680, float %3282)  ; FMin(a,b)
  %3517 = fsub fast float %3516, %2680
  %3518 = fmul fast float %3517, %3457
  %3519 = fadd fast float %3518, %2680
  %3520 = fsub fast float %3279, %2679
  %3521 = fmul fast float %3460, %3520
  %3522 = fadd fast float %3521, %2679
  br label %3523

; <label>:3523                                    ; preds = %3511, %3509, %3477, %3462, %3440, %2978, %2682, %2669
  %3524 = phi float [ %2670, %3440 ], [ %2670, %2978 ], [ %2670, %2669 ], [ %2670, %2682 ], [ %3467, %3462 ], [ %3480, %3477 ], [ %2670, %3509 ], [ %3514, %3511 ]
  %3525 = phi float [ %2671, %3440 ], [ %2671, %2978 ], [ %2671, %2669 ], [ %2671, %2682 ], [ %3468, %3462 ], [ %3481, %3477 ], [ %2671, %3509 ], [ %3515, %3511 ]
  %3526 = phi float [ %3441, %3440 ], [ %2672, %2978 ], [ %2672, %2669 ], [ %2672, %2682 ], [ %3441, %3462 ], [ %3441, %3477 ], [ %3441, %3509 ], [ %3441, %3511 ]
  %3527 = phi float [ %3442, %3440 ], [ %2673, %2978 ], [ %2673, %2669 ], [ %2673, %2682 ], [ %3442, %3462 ], [ %3442, %3477 ], [ %3442, %3509 ], [ %3442, %3511 ]
  %3528 = phi float [ %3443, %3440 ], [ %2674, %2978 ], [ %2674, %2669 ], [ %2674, %2682 ], [ %3443, %3462 ], [ %3443, %3477 ], [ %3443, %3509 ], [ %3443, %3511 ]
  %3529 = phi float [ %3444, %3440 ], [ %2675, %2978 ], [ %2675, %2669 ], [ %2675, %2682 ], [ %3444, %3462 ], [ %3444, %3477 ], [ %3444, %3509 ], [ %3444, %3511 ]
  %3530 = phi float [ %3445, %3440 ], [ %2676, %2978 ], [ %2676, %2669 ], [ %2676, %2682 ], [ %3445, %3462 ], [ %3445, %3477 ], [ %3445, %3509 ], [ %3445, %3511 ]
  %3531 = phi float [ %3446, %3440 ], [ %2677, %2978 ], [ %2677, %2669 ], [ %2677, %2682 ], [ %3446, %3462 ], [ %3446, %3477 ], [ %3446, %3509 ], [ %3446, %3511 ]
  %3532 = phi float [ %3447, %3440 ], [ %2678, %2978 ], [ %2678, %2669 ], [ %2678, %2682 ], [ %3447, %3462 ], [ %3447, %3477 ], [ %3447, %3509 ], [ %3447, %3511 ]
  %3533 = phi float [ %2679, %3440 ], [ %2679, %2978 ], [ %2679, %2669 ], [ %2679, %2682 ], [ %3474, %3462 ], [ %3508, %3477 ], [ %2679, %3509 ], [ %3522, %3511 ]
  %3534 = phi float [ %2680, %3440 ], [ %2680, %2978 ], [ %2680, %2669 ], [ %2680, %2682 ], [ %3471, %3462 ], [ %3485, %3477 ], [ %2680, %3509 ], [ %3519, %3511 ]
  %3535 = phi float [ %3448, %3440 ], [ %2681, %2978 ], [ %2681, %2669 ], [ %2681, %2682 ], [ %3448, %3462 ], [ %3448, %3477 ], [ %3448, %3509 ], [ %3448, %3511 ]
  %3536 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3537 = extractvalue %dx.types.CBufRet.f32 %3536, 0
  %3538 = call float @dx.op.dot2.f32(i32 54, float %3524, float %3525, float %3524, float %3525)  ; Dot2(ax,ay,bx,by)
  %3539 = fmul fast float %3538, 0x3FE3333340000000
  %3540 = fsub fast float 1.000000e+00, %3539
  %3541 = call float @dx.op.dot3.f32(i32 55, float %3524, float %3525, float %3540, float %3524, float %3525, float %3540)  ; Dot3(ax,ay,az,bx,by,bz)
  %3542 = call float @dx.op.unary.f32(i32 25, float %3541)  ; Rsqrt(value)
  %3543 = fmul fast float %3542, %3524
  %3544 = fmul fast float %3542, %3525
  %3545 = fmul fast float %3540, %3542
  %3546 = fmul fast float %3545, %85
  %3547 = fmul fast float %3545, %86
  %3548 = fmul fast float %3545, %87
  %3549 = fmul fast float %3543, %59
  %3550 = fmul fast float %3543, %60
  %3551 = fmul fast float %3543, %61
  %3552 = fadd fast float %3546, %3549
  %3553 = fadd fast float %3547, %3550
  %3554 = fadd fast float %3548, %3551
  %3555 = fmul fast float %97, %3544
  %3556 = fmul fast float %98, %3544
  %3557 = fmul fast float %99, %3544
  %3558 = fadd fast float %3552, %3555
  %3559 = fadd fast float %3553, %3556
  %3560 = fadd fast float %3554, %3557
  %3561 = call float @dx.op.dot3.f32(i32 55, float %3558, float %3559, float %3560, float %3558, float %3559, float %3560)  ; Dot3(ax,ay,az,bx,by,bz)
  %3562 = call float @dx.op.unary.f32(i32 25, float %3561)  ; Rsqrt(value)
  %3563 = fmul fast float %3558, %3562
  %3564 = fmul fast float %3559, %3562
  %3565 = fmul fast float %3560, %3562
  %3566 = and i32 %45, 1
  %3567 = icmp eq i32 %3566, 0
  br i1 %3567, label %3568, label %4076

; <label>:3568                                    ; preds = %3523
  %3569 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3570 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3571 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3572 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3573 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3574 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3575 = fadd fast float %3569, %141
  %3576 = fadd fast float %3570, %142
  %3577 = fadd fast float %3571, %143
  %3578 = fadd fast float %3572, %141
  %3579 = fadd fast float %3573, %142
  %3580 = fadd fast float %3574, %143
  %3581 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3582 = extractvalue %dx.types.CBufRet.f32 %3581, 0
  %3583 = extractvalue %dx.types.CBufRet.f32 %3581, 1
  %3584 = extractvalue %dx.types.CBufRet.f32 %3581, 2
  %3585 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3586 = extractvalue %dx.types.CBufRet.f32 %3585, 2
  %3587 = extractvalue %dx.types.CBufRet.f32 %3585, 3
  %3588 = fmul fast float %3582, %78
  %3589 = fmul fast float %3588, %3586
  %3590 = fmul fast float %3583, %79
  %3591 = fmul fast float %3590, %3587
  %3592 = fptoui float %3589 to i32
  %3593 = fptoui float %3591 to i32
  %3594 = fadd fast float %3582, -1.000000e+00
  %3595 = fadd fast float %3583, -1.000000e+00
  %3596 = fptoui float %3594 to i32
  %3597 = fptoui float %3595 to i32
  %3598 = call i32 @dx.op.binary.i32(i32 40, i32 %3592, i32 %3596)  ; UMin(a,b)
  %3599 = call i32 @dx.op.binary.i32(i32 40, i32 %3593, i32 %3597)  ; UMin(a,b)
  %3600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3601 = extractvalue %dx.types.CBufRet.f32 %3600, 2
  %3602 = extractvalue %dx.types.CBufRet.f32 %3600, 3
  %3603 = fmul fast float %3601, %73
  %3604 = fsub fast float %3603, %3602
  %3605 = fadd fast float %3584, -1.000000e+00
  %3606 = call float @dx.op.binary.f32(i32 36, float %3604, float %3605)  ; FMin(a,b)
  %3607 = fptoui float %3606 to i32
  %3608 = fptoui float %3582 to i32
  %3609 = fptoui float %3583 to i32
  %3610 = mul i32 %3607, %3609
  %3611 = add i32 %3610, %3599
  %3612 = mul i32 %3611, %3608
  %3613 = add i32 %3612, %3598
  %3614 = shl i32 %3613, 2
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = and i32 %3616, 1023
  %3618 = lshr i32 %3616, 10
  %3619 = icmp eq i32 %3617, 0
  br i1 %3619, label %4045, label %3620

; <label>:3620                                    ; preds = %3568
  %3621 = and i32 %3616, 1023
  br label %3622

; <label>:3622                                    ; preds = %3748, %3620
  %3623 = phi i32 [ %3698, %3748 ], [ 0, %3620 ]
  %3624 = phi float [ %3749, %3748 ], [ 0.000000e+00, %3620 ]
  %3625 = phi float [ %3750, %3748 ], [ %3537, %3620 ]
  %3626 = phi float [ %3751, %3748 ], [ %3535, %3620 ]
  %3627 = phi float [ %3752, %3748 ], [ 0.000000e+00, %3620 ]
  %3628 = phi float [ %3753, %3748 ], [ 0.000000e+00, %3620 ]
  %3629 = phi float [ %3754, %3748 ], [ %3529, %3620 ]
  %3630 = phi float [ %3755, %3748 ], [ %3530, %3620 ]
  %3631 = phi float [ %3756, %3748 ], [ %3531, %3620 ]
  %3632 = phi float [ %3757, %3748 ], [ %3563, %3620 ]
  %3633 = phi float [ %3758, %3748 ], [ %3564, %3620 ]
  %3634 = phi float [ %3759, %3748 ], [ %3565, %3620 ]
  %3635 = phi float [ %3760, %3748 ], [ %3534, %3620 ]
  %3636 = phi float [ %3761, %3748 ], [ %3533, %3620 ]
  %3637 = phi float [ %3762, %3748 ], [ 0.000000e+00, %3620 ]
  %3638 = phi float [ %3763, %3748 ], [ %3532, %3620 ]
  %3639 = phi float [ %3764, %3748 ], [ %3526, %3620 ]
  %3640 = phi float [ %3765, %3748 ], [ %3527, %3620 ]
  %3641 = phi float [ %3766, %3748 ], [ %3528, %3620 ]
  %3642 = add nuw nsw i32 %3623, %3618
  %3643 = shl i32 %3642, 2
  %3644 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.i32 %3644, 0
  %3646 = shl i32 %3645, 8
  %3647 = or i32 %3646, 48
  %3648 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3649 = extractvalue %dx.types.ResRet.f32 %3648, 0
  %3650 = extractvalue %dx.types.ResRet.f32 %3648, 1
  %3651 = extractvalue %dx.types.ResRet.f32 %3648, 2
  %3652 = extractvalue %dx.types.ResRet.f32 %3648, 3
  %3653 = or i32 %3646, 64
  %3654 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.i32 %3654, 0
  %3656 = extractvalue %dx.types.ResRet.i32 %3654, 1
  %3657 = or i32 %3646, 80
  %3658 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3657, i32 undef)  ; BufferLoad(srv,index,wot)
  %3659 = extractvalue %dx.types.ResRet.f32 %3658, 2
  %3660 = extractvalue %dx.types.ResRet.f32 %3658, 3
  %3661 = or i32 %3646, 96
  %3662 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3661, i32 undef)  ; BufferLoad(srv,index,wot)
  %3663 = extractvalue %dx.types.ResRet.f32 %3662, 0
  %3664 = extractvalue %dx.types.ResRet.f32 %3662, 1
  %3665 = extractvalue %dx.types.ResRet.f32 %3662, 2
  %3666 = extractvalue %dx.types.ResRet.f32 %3662, 3
  %3667 = or i32 %3646, 112
  %3668 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3667, i32 undef)  ; BufferLoad(srv,index,wot)
  %3669 = extractvalue %dx.types.ResRet.f32 %3668, 2
  %3670 = or i32 %3646, 128
  %3671 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3670, i32 undef)  ; BufferLoad(srv,index,wot)
  %3672 = extractvalue %dx.types.ResRet.f32 %3671, 0
  %3673 = extractvalue %dx.types.ResRet.f32 %3671, 1
  %3674 = extractvalue %dx.types.ResRet.f32 %3671, 2
  %3675 = extractvalue %dx.types.ResRet.f32 %3671, 3
  %3676 = or i32 %3646, 144
  %3677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = extractvalue %dx.types.ResRet.f32 %3677, 1
  %3680 = extractvalue %dx.types.ResRet.f32 %3677, 2
  %3681 = extractvalue %dx.types.ResRet.f32 %3677, 3
  %3682 = or i32 %3646, 160
  %3683 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3682, i32 undef)  ; BufferLoad(srv,index,wot)
  %3684 = extractvalue %dx.types.ResRet.f32 %3683, 0
  %3685 = extractvalue %dx.types.ResRet.f32 %3683, 1
  %3686 = extractvalue %dx.types.ResRet.f32 %3683, 2
  %3687 = extractvalue %dx.types.ResRet.f32 %3683, 3
  %3688 = or i32 %3646, 192
  %3689 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3688, i32 undef)  ; BufferLoad(srv,index,wot)
  %3690 = extractvalue %dx.types.ResRet.i32 %3689, 0
  %3691 = or i32 %3646, 208
  %3692 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3691, i32 undef)  ; BufferLoad(srv,index,wot)
  %3693 = extractvalue %dx.types.ResRet.f32 %3692, 0
  %3694 = or i32 %3646, 248
  %3695 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3694, i32 undef)  ; BufferLoad(srv,index,wot)
  %3696 = extractvalue %dx.types.ResRet.f32 %3695, 0
  %3697 = extractvalue %dx.types.ResRet.f32 %3695, 1
  %3698 = add nuw nsw i32 %3623, 1
  %3699 = bitcast float %3652 to i32
  %3700 = and i32 %3699, 512
  %3701 = icmp eq i32 %3700, 0
  %3702 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3646, i32 undef)  ; BufferLoad(srv,index,wot)
  %3703 = extractvalue %dx.types.ResRet.f32 %3702, 0
  %3704 = extractvalue %dx.types.ResRet.f32 %3702, 1
  %3705 = extractvalue %dx.types.ResRet.f32 %3702, 2
  %3706 = extractvalue %dx.types.ResRet.f32 %3702, 3
  %3707 = call float @dx.op.dot4.f32(i32 56, float %3703, float %3704, float %3705, float %3706, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3708 = or i32 %3646, 16
  %3709 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3708, i32 undef)  ; BufferLoad(srv,index,wot)
  %3710 = extractvalue %dx.types.ResRet.f32 %3709, 0
  %3711 = extractvalue %dx.types.ResRet.f32 %3709, 1
  %3712 = extractvalue %dx.types.ResRet.f32 %3709, 2
  %3713 = extractvalue %dx.types.ResRet.f32 %3709, 3
  %3714 = call float @dx.op.dot4.f32(i32 56, float %3710, float %3711, float %3712, float %3713, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3715 = or i32 %3646, 32
  %3716 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3715, i32 undef)  ; BufferLoad(srv,index,wot)
  %3717 = extractvalue %dx.types.ResRet.f32 %3716, 0
  %3718 = extractvalue %dx.types.ResRet.f32 %3716, 1
  %3719 = extractvalue %dx.types.ResRet.f32 %3716, 2
  %3720 = extractvalue %dx.types.ResRet.f32 %3716, 3
  %3721 = call float @dx.op.dot4.f32(i32 56, float %3717, float %3718, float %3719, float %3720, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3722 = call float @dx.op.unary.f32(i32 27, float %3707)  ; Round_ni(value)
  %3723 = call float @dx.op.unary.f32(i32 6, float %3722)  ; FAbs(value)
  %3724 = call float @dx.op.unary.f32(i32 27, float %3714)  ; Round_ni(value)
  %3725 = call float @dx.op.unary.f32(i32 6, float %3724)  ; FAbs(value)
  %3726 = call float @dx.op.unary.f32(i32 6, float %3721)  ; FAbs(value)
  %3727 = call float @dx.op.unary.f32(i32 27, float %3726)  ; Round_ni(value)
  %3728 = fadd fast float %3725, %3723
  %3729 = fadd fast float %3728, %3727
  %3730 = fcmp fast oeq float %3729, 0.000000e+00
  %3731 = call float @dx.op.dot4.f32(i32 56, float %3703, float %3704, float %3705, float %3706, float %3575, float %3576, float %3577, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3732 = call float @dx.op.dot4.f32(i32 56, float %3710, float %3711, float %3712, float %3713, float %3575, float %3576, float %3577, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3733 = call float @dx.op.dot4.f32(i32 56, float %3703, float %3704, float %3705, float %3706, float %3578, float %3579, float %3580, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3734 = call float @dx.op.dot4.f32(i32 56, float %3710, float %3711, float %3712, float %3713, float %3578, float %3579, float %3580, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3735 = fsub fast float %3731, %3707
  %3736 = fsub fast float %3733, %3707
  %3737 = fsub fast float %3732, %3714
  %3738 = fsub fast float %3734, %3714
  %3739 = call float @dx.op.dot3.f32(i32 55, float %3649, float %3650, float %3651, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3740 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3741 = extractvalue %dx.types.CBufRet.f32 %3740, 2
  %3742 = fadd fast float %3741, %3739
  %3743 = call float @dx.op.unary.f32(i32 7, float %3742)  ; Saturate(value)
  %3744 = extractvalue %dx.types.CBufRet.f32 %3740, 0
  %3745 = fcmp fast ogt float %3743, %3744
  %3746 = and i1 %3730, %3745
  %3747 = and i1 %3701, %3746
  br i1 %3747, label %3768, label %3748

; <label>:3748                                    ; preds = %4031, %3849, %3768, %3622
  %3749 = phi float [ %3624, %3768 ], [ %3852, %3849 ], [ %3852, %4031 ], [ %3624, %3622 ]
  %3750 = phi float [ %3625, %3768 ], [ %3625, %3849 ], [ %4006, %4031 ], [ %3625, %3622 ]
  %3751 = phi float [ %3626, %3768 ], [ %3626, %3849 ], [ %4004, %4031 ], [ %3626, %3622 ]
  %3752 = phi float [ %3627, %3768 ], [ %3627, %3849 ], [ %3976, %4031 ], [ %3627, %3622 ]
  %3753 = phi float [ %3628, %3768 ], [ %3628, %3849 ], [ %3974, %4031 ], [ %3628, %3622 ]
  %3754 = phi float [ %3629, %3768 ], [ %3629, %3849 ], [ %4041, %4031 ], [ %3629, %3622 ]
  %3755 = phi float [ %3630, %3768 ], [ %3630, %3849 ], [ %4042, %4031 ], [ %3630, %3622 ]
  %3756 = phi float [ %3631, %3768 ], [ %3631, %3849 ], [ %4043, %4031 ], [ %3631, %3622 ]
  %3757 = phi float [ %3632, %3768 ], [ %3632, %3849 ], [ %3955, %4031 ], [ %3632, %3622 ]
  %3758 = phi float [ %3633, %3768 ], [ %3633, %3849 ], [ %3956, %4031 ], [ %3633, %3622 ]
  %3759 = phi float [ %3634, %3768 ], [ %3634, %3849 ], [ %3957, %4031 ], [ %3634, %3622 ]
  %3760 = phi float [ %3635, %3768 ], [ %3635, %3849 ], [ %3984, %4031 ], [ %3635, %3622 ]
  %3761 = phi float [ %3636, %3768 ], [ %3636, %3849 ], [ %3981, %4031 ], [ %3636, %3622 ]
  %3762 = phi float [ %3637, %3768 ], [ %3637, %3849 ], [ %3978, %4031 ], [ %3637, %3622 ]
  %3763 = phi float [ %3638, %3768 ], [ %3638, %3849 ], [ %3972, %4031 ], [ %3638, %3622 ]
  %3764 = phi float [ %3639, %3768 ], [ %3639, %3849 ], [ %3967, %4031 ], [ %3639, %3622 ]
  %3765 = phi float [ %3640, %3768 ], [ %3640, %3849 ], [ %3968, %4031 ], [ %3640, %3622 ]
  %3766 = phi float [ %3641, %3768 ], [ %3641, %3849 ], [ %3969, %4031 ], [ %3641, %3622 ]
  %3767 = icmp eq i32 %3698, %3621
  br i1 %3767, label %4044, label %3622

; <label>:3768                                    ; preds = %3622
  %3769 = extractvalue %dx.types.ResRet.f32 %3668, 3
  %3770 = extractvalue %dx.types.ResRet.f32 %3668, 1
  %3771 = extractvalue %dx.types.ResRet.f32 %3668, 0
  %3772 = extractvalue %dx.types.ResRet.f32 %3658, 1
  %3773 = extractvalue %dx.types.ResRet.f32 %3658, 0
  %3774 = extractvalue %dx.types.ResRet.i32 %3654, 3
  %3775 = extractvalue %dx.types.ResRet.i32 %3654, 2
  %3776 = add i32 %3774, 0
  %3777 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3776, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3778 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3779 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3777, %dx.types.Handle %3778, float %3707, float %3714, float undef, float undef, i32 0, i32 0, i32 undef, float %3735, float %3737, float undef, float %3736, float %3738, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3780 = extractvalue %dx.types.ResRet.f32 %3779, 0
  %3781 = fmul fast float %3780, %3773
  %3782 = fadd fast float %3781, %3772
  %3783 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3784 = fmul fast float %3707, %3663
  %3785 = call float @dx.op.tertiary.f32(i32 46, float %3664, float %3714, float %3784)  ; FMad(a,b,c)
  %3786 = fadd fast float %3785, %3771
  %3787 = fmul fast float %3707, %3665
  %3788 = call float @dx.op.tertiary.f32(i32 46, float %3666, float %3714, float %3787)  ; FMad(a,b,c)
  %3789 = fadd fast float %3788, %3770
  %3790 = fmul fast float %3735, %3663
  %3791 = call float @dx.op.tertiary.f32(i32 46, float %3664, float %3737, float %3790)  ; FMad(a,b,c)
  %3792 = fmul fast float %3735, %3665
  %3793 = call float @dx.op.tertiary.f32(i32 46, float %3666, float %3737, float %3792)  ; FMad(a,b,c)
  %3794 = fmul fast float %3736, %3663
  %3795 = call float @dx.op.tertiary.f32(i32 46, float %3664, float %3738, float %3794)  ; FMad(a,b,c)
  %3796 = fmul fast float %3736, %3665
  %3797 = call float @dx.op.tertiary.f32(i32 46, float %3666, float %3738, float %3796)  ; FMad(a,b,c)
  %3798 = add i32 %3775, 0
  %3799 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3798, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3800 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3799, %dx.types.Handle %3778, float %3786, float %3789, float undef, float undef, i32 0, i32 0, i32 undef, float %3791, float %3793, float undef, float %3795, float %3797, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3801 = extractvalue %dx.types.ResRet.f32 %3800, 0
  %3802 = and i32 %3699, 1024
  %3803 = icmp ne i32 %3802, 0
  %3804 = fcmp fast ogt float %3801, 0x3FE0101020000000
  %3805 = uitofp i1 %3804 to float
  %3806 = select i1 %3803, float %3805, float %3801
  %3807 = and i32 %3699, 8192
  %3808 = icmp ne i32 %3807, 0
  %3809 = select i1 %3808, float %3769, float 1.000000e+00
  %3810 = fmul fast float %3707, 2.000000e+00
  %3811 = fadd fast float %3810, -1.000000e+00
  %3812 = call float @dx.op.unary.f32(i32 6, float %3811)  ; FAbs(value)
  %3813 = fmul fast float %3812, %3696
  %3814 = fsub fast float %3813, %3696
  %3815 = call float @dx.op.unary.f32(i32 7, float %3814)  ; Saturate(value)
  %3816 = fmul fast float %3714, 2.000000e+00
  %3817 = fadd fast float %3816, -1.000000e+00
  %3818 = call float @dx.op.unary.f32(i32 6, float %3817)  ; FAbs(value)
  %3819 = fmul fast float %3818, %3697
  %3820 = fsub fast float %3819, %3697
  %3821 = call float @dx.op.unary.f32(i32 7, float %3820)  ; Saturate(value)
  %3822 = fmul fast float %3726, %3659
  %3823 = fsub fast float %3822, %3659
  %3824 = call float @dx.op.unary.f32(i32 7, float %3823)  ; Saturate(value)
  %3825 = fmul fast float %3783, %3809
  %3826 = fmul fast float %3825, %3780
  %3827 = fmul fast float %3826, %3815
  %3828 = fmul fast float %3827, %3806
  %3829 = fmul fast float %3828, %3821
  %3830 = fmul fast float %3829, %3824
  %3831 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3832 = extractvalue %dx.types.CBufRet.f32 %3831, 1
  %3833 = extractvalue %dx.types.CBufRet.f32 %3831, 0
  %3834 = fsub fast float %3743, %3833
  %3835 = fmul fast float %3834, %3832
  %3836 = call float @dx.op.unary.f32(i32 7, float %3835)  ; Saturate(value)
  %3837 = fmul fast float %3830, %3660
  %3838 = fadd fast float %3830, %3660
  %3839 = fmul fast float %3838, %3669
  %3840 = fsub fast float %3839, %3669
  %3841 = call float @dx.op.unary.f32(i32 7, float %3840)  ; Saturate(value)
  %3842 = and i32 %3699, 128
  %3843 = icmp ne i32 %3842, 0
  %3844 = select i1 %3843, float %3841, float %3837
  %3845 = fmul fast float %3844, %3836
  %3846 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3847 = extractvalue %dx.types.CBufRet.f32 %3846, 0
  %3848 = fcmp fast ugt float %3845, %3847
  br i1 %3848, label %3849, label %3748

; <label>:3849                                    ; preds = %3768
  %3850 = select i1 %3808, float %3845, float 0.000000e+00
  %3851 = fadd fast float %3850, %3624
  %3852 = call float @dx.op.unary.f32(i32 7, float %3851)  ; Saturate(value)
  br i1 %3808, label %3748, label %3853

; <label>:3853                                    ; preds = %3849
  %3854 = and i32 %3699, 4
  %3855 = and i32 %3699, 8
  %3856 = add i32 %3655, 0
  %3857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3856, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3858 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3859 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3857, %dx.types.Handle %3858, float %3786, float %3789, float undef, float undef, i32 0, i32 0, i32 undef, float %3791, float %3793, float undef, float %3795, float %3797, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3860 = extractvalue %dx.types.ResRet.f32 %3859, 0
  %3861 = extractvalue %dx.types.ResRet.f32 %3859, 1
  %3862 = extractvalue %dx.types.ResRet.f32 %3859, 2
  %3863 = extractvalue %dx.types.ResRet.f32 %3859, 3
  %3864 = bitcast float %3681 to i32
  %3865 = and i32 %3864, 255
  %3866 = uitofp i32 %3865 to float
  %3867 = lshr i32 %3864, 8
  %3868 = and i32 %3867, 255
  %3869 = uitofp i32 %3868 to float
  %3870 = fmul fast float %3863, %3866
  %3871 = fadd fast float %3870, %3869
  %3872 = fmul fast float %3871, 0x3F70101000000000
  %3873 = add i32 %3656, 0
  %3874 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3873, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3875 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3874, %dx.types.Handle %3858, float %3786, float %3789, float undef, float undef, i32 0, i32 0, i32 undef, float %3791, float %3793, float undef, float %3795, float %3797, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3876 = extractvalue %dx.types.ResRet.f32 %3875, 0
  %3877 = extractvalue %dx.types.ResRet.f32 %3875, 1
  %3878 = extractvalue %dx.types.ResRet.f32 %3875, 2
  %3879 = extractvalue %dx.types.ResRet.f32 %3875, 3
  %3880 = bitcast float %3675 to i32
  %3881 = and i32 %3880, 255
  %3882 = uitofp i32 %3881 to float
  %3883 = lshr i32 %3880, 8
  %3884 = and i32 %3883, 255
  %3885 = uitofp i32 %3884 to float
  %3886 = lshr i32 %3880, 16
  %3887 = and i32 %3886, 255
  %3888 = uitofp i32 %3887 to float
  %3889 = fmul fast float %3888, 0x3F70101000000000
  %3890 = fmul fast float %3876, %3882
  %3891 = fadd fast float %3890, %3885
  %3892 = fmul fast float %3891, 0x3F70101000000000
  %3893 = fadd fast float %3877, -5.000000e-01
  %3894 = fadd fast float %3879, -5.000000e-01
  %3895 = fmul fast float %3893, %3889
  %3896 = fmul fast float %3894, %3889
  %3897 = fadd fast float %3895, 5.000000e-01
  %3898 = fadd fast float %3896, 5.000000e-01
  %3899 = fmul fast float %3860, %3684
  %3900 = fmul fast float %3861, %3685
  %3901 = fmul fast float %3862, %3686
  %3902 = fmul fast float %3897, 2.000000e+00
  %3903 = fadd fast float %3902, -1.000000e+00
  %3904 = fmul fast float %3898, 2.000000e+00
  %3905 = fadd fast float %3904, -1.000000e+00
  %3906 = fadd fast float %3903, %3905
  %3907 = fmul fast float %3906, 5.000000e-01
  %3908 = fsub fast float %3903, %3905
  %3909 = fmul fast float %3908, 5.000000e-01
  %3910 = call float @dx.op.unary.f32(i32 6, float %3907)  ; FAbs(value)
  %3911 = fsub fast float 1.000000e+00, %3910
  %3912 = call float @dx.op.unary.f32(i32 6, float %3909)  ; FAbs(value)
  %3913 = fsub fast float %3911, %3912
  %3914 = call float @dx.op.dot3.f32(i32 55, float %3907, float %3909, float %3913, float %3907, float %3909, float %3913)  ; Dot3(ax,ay,az,bx,by,bz)
  %3915 = call float @dx.op.unary.f32(i32 25, float %3914)  ; Rsqrt(value)
  %3916 = fmul fast float %3907, %3915
  %3917 = fmul fast float %3909, %3915
  %3918 = fmul fast float %3915, %3913
  %3919 = fmul fast float %3918, %3649
  %3920 = fmul fast float %3918, %3650
  %3921 = fmul fast float %3918, %3651
  %3922 = fmul fast float %3916, %3672
  %3923 = fmul fast float %3916, %3673
  %3924 = fmul fast float %3916, %3674
  %3925 = fadd fast float %3922, %3919
  %3926 = fadd fast float %3923, %3920
  %3927 = fadd fast float %3924, %3921
  %3928 = fmul fast float %3917, %3678
  %3929 = fmul fast float %3917, %3679
  %3930 = fmul fast float %3917, %3680
  %3931 = fadd fast float %3925, %3928
  %3932 = fadd fast float %3926, %3929
  %3933 = fadd fast float %3927, %3930
  %3934 = call float @dx.op.dot3.f32(i32 55, float %3931, float %3932, float %3933, float %3931, float %3932, float %3933)  ; Dot3(ax,ay,az,bx,by,bz)
  %3935 = call float @dx.op.unary.f32(i32 25, float %3934)  ; Rsqrt(value)
  %3936 = fmul fast float %3931, %3935
  %3937 = fmul fast float %3932, %3935
  %3938 = fmul fast float %3933, %3935
  %3939 = icmp ne i32 %3855, 0
  %3940 = select i1 %3939, float 1.000000e+00, float 0.000000e+00
  %3941 = fmul fast float %3845, %3940
  %3942 = and i32 %3699, 1
  %3943 = icmp eq i32 %3942, 0
  br i1 %3943, label %3944, label %3948

; <label>:3944                                    ; preds = %3853
  %3945 = fsub fast float %3936, %3632
  %3946 = fsub fast float %3937, %3633
  %3947 = fsub fast float %3938, %3634
  br label %3948

; <label>:3948                                    ; preds = %3944, %3853
  %3949 = phi float [ %3945, %3944 ], [ %3936, %3853 ]
  %3950 = phi float [ %3946, %3944 ], [ %3937, %3853 ]
  %3951 = phi float [ %3947, %3944 ], [ %3938, %3853 ]
  %3952 = fmul float %3951, %3941
  %3953 = fmul float %3950, %3941
  %3954 = fmul float %3949, %3941
  %3955 = fadd fast float %3954, %3632
  %3956 = fadd fast float %3953, %3633
  %3957 = fadd fast float %3952, %3634
  %3958 = icmp ne i32 %3854, 0
  %3959 = select i1 %3958, float 1.000000e+00, float 0.000000e+00
  %3960 = fmul fast float %3845, %3959
  %3961 = fsub fast float %3899, %3639
  %3962 = fsub fast float %3900, %3640
  %3963 = fsub fast float %3901, %3641
  %3964 = fmul fast float %3961, %3960
  %3965 = fmul fast float %3962, %3960
  %3966 = fmul fast float %3963, %3960
  %3967 = fadd fast float %3964, %3639
  %3968 = fadd fast float %3965, %3640
  %3969 = fadd fast float %3966, %3641
  %3970 = fsub fast float %3872, %3638
  %3971 = fmul fast float %3970, %3960
  %3972 = fadd fast float %3971, %3638
  %3973 = fmul fast float %3960, %3628
  %3974 = fsub fast float %3628, %3973
  %3975 = fmul fast float %3960, %3627
  %3976 = fsub fast float %3627, %3975
  %3977 = fadd fast float %3845, %3637
  %3978 = call float @dx.op.unary.f32(i32 7, float %3977)  ; Saturate(value)
  %3979 = fsub fast float %3892, %3636
  %3980 = fmul fast float %3979, %3941
  %3981 = fadd fast float %3980, %3636
  %3982 = fsub fast float %3878, %3635
  %3983 = fmul fast float %3982, %3941
  %3984 = fadd fast float %3983, %3635
  %3985 = call float @dx.op.dot3.f32(i32 55, float %3899, float %3900, float %3901, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3987 = extractvalue %dx.types.CBufRet.f32 %3986, 0
  %3988 = extractvalue %dx.types.CBufRet.f32 %3986, 1
  %3989 = fmul fast float %3988, %3985
  %3990 = fadd fast float %3989, %3987
  %3991 = call float @dx.op.unary.f32(i32 7, float %3990)  ; Saturate(value)
  %3992 = bitcast float %3687 to i32
  %3993 = and i32 %3992, 65535
  %3994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3993)  ; LegacyF16ToF32(value)
  %3995 = lshr i32 %3992, 16
  %3996 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3995)  ; LegacyF16ToF32(value)
  %3997 = fcmp fast oge float %3994, 0.000000e+00
  %3998 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3999 = extractvalue %dx.types.CBufRet.f32 %3998, 0
  %4000 = select i1 %3997, float %3994, float %3999
  %4001 = fadd fast float %4000, %3996
  %4002 = fsub fast float %3991, %3626
  %4003 = fmul fast float %4002, %3845
  %4004 = fadd fast float %4003, %3626
  %4005 = fmul fast float %4001, %3845
  %4006 = call float @dx.op.binary.f32(i32 35, float %3625, float %4005)  ; FMax(a,b)
  %4007 = and i32 %3699, 16
  %4008 = icmp eq i32 %4007, 0
  br i1 %4008, label %4031, label %4009

; <label>:4009                                    ; preds = %3948
  %4010 = bitcast float %3693 to i32
  %4011 = add i32 %3690, 0
  %4012 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4011, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4013 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4012, %dx.types.Handle %3858, float %3786, float %3789, float undef, float undef, i32 0, i32 0, i32 undef, float %3791, float %3793, float undef, float %3795, float %3797, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4014 = extractvalue %dx.types.ResRet.f32 %4013, 0
  %4015 = extractvalue %dx.types.ResRet.f32 %4013, 1
  %4016 = extractvalue %dx.types.ResRet.f32 %4013, 2
  %4017 = and i32 %4010, 65535
  %4018 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4017)  ; LegacyF16ToF32(value)
  %4019 = fmul fast float %4014, %3684
  %4020 = fmul fast float %4015, %3685
  %4021 = fmul fast float %4016, %3686
  %4022 = and i32 %3699, 16384
  %4023 = icmp ne i32 %4022, 0
  %4024 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4025 = extractvalue %dx.types.CBufRet.f32 %4024, 0
  %4026 = select i1 %4023, float %4025, float 1.000000e+00
  %4027 = fmul fast float %4026, %4018
  %4028 = fmul fast float %4019, %4027
  %4029 = fmul fast float %4020, %4027
  %4030 = fmul fast float %4021, %4027
  br label %4031

; <label>:4031                                    ; preds = %4009, %3948
  %4032 = phi float [ %4028, %4009 ], [ 0.000000e+00, %3948 ]
  %4033 = phi float [ %4029, %4009 ], [ 0.000000e+00, %3948 ]
  %4034 = phi float [ %4030, %4009 ], [ 0.000000e+00, %3948 ]
  %4035 = fsub fast float %4032, %3629
  %4036 = fsub fast float %4033, %3630
  %4037 = fsub fast float %4034, %3631
  %4038 = fmul fast float %4035, %3845
  %4039 = fmul fast float %4036, %3845
  %4040 = fmul fast float %4037, %3845
  %4041 = fadd fast float %4038, %3629
  %4042 = fadd fast float %4039, %3630
  %4043 = fadd fast float %4040, %3631
  br label %3748

; <label>:4044                                    ; preds = %3748
  br label %4045

; <label>:4045                                    ; preds = %4044, %3568
  %4046 = phi float [ 0.000000e+00, %3568 ], [ %3749, %4044 ]
  %4047 = phi float [ %3537, %3568 ], [ %3750, %4044 ]
  %4048 = phi float [ %3535, %3568 ], [ %3751, %4044 ]
  %4049 = phi float [ 0.000000e+00, %3568 ], [ %3752, %4044 ]
  %4050 = phi float [ 0.000000e+00, %3568 ], [ %3753, %4044 ]
  %4051 = phi float [ %3529, %3568 ], [ %3754, %4044 ]
  %4052 = phi float [ %3530, %3568 ], [ %3755, %4044 ]
  %4053 = phi float [ %3531, %3568 ], [ %3756, %4044 ]
  %4054 = phi float [ %3563, %3568 ], [ %3757, %4044 ]
  %4055 = phi float [ %3564, %3568 ], [ %3758, %4044 ]
  %4056 = phi float [ %3565, %3568 ], [ %3759, %4044 ]
  %4057 = phi float [ %3534, %3568 ], [ %3760, %4044 ]
  %4058 = phi float [ %3533, %3568 ], [ %3761, %4044 ]
  %4059 = phi float [ 0.000000e+00, %3568 ], [ %3762, %4044 ]
  %4060 = phi float [ %3532, %3568 ], [ %3763, %4044 ]
  %4061 = phi float [ %3526, %3568 ], [ %3764, %4044 ]
  %4062 = phi float [ %3527, %3568 ], [ %3765, %4044 ]
  %4063 = phi float [ %3528, %3568 ], [ %3766, %4044 ]
  %4064 = call float @dx.op.dot3.f32(i32 55, float %4054, float %4055, float %4056, float %4054, float %4055, float %4056)  ; Dot3(ax,ay,az,bx,by,bz)
  %4065 = call float @dx.op.unary.f32(i32 25, float %4064)  ; Rsqrt(value)
  %4066 = fmul fast float %4065, %4054
  %4067 = fmul fast float %4065, %4055
  %4068 = fmul fast float %4065, %4056
  %4069 = fadd fast float %4059, %970
  %4070 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4071 = call float @dx.op.dot3.f32(i32 55, float %4066, float %4067, float %4068, float %4066, float %4067, float %4068)  ; Dot3(ax,ay,az,bx,by,bz)
  %4072 = call float @dx.op.unary.f32(i32 25, float %4071)  ; Rsqrt(value)
  %4073 = fmul fast float %4072, %4066
  %4074 = fmul fast float %4072, %4067
  %4075 = fmul fast float %4072, %4068
  br label %4076

; <label>:4076                                    ; preds = %4045, %3523
  %4077 = phi float [ %4073, %4045 ], [ %3563, %3523 ]
  %4078 = phi float [ %4074, %4045 ], [ %3564, %3523 ]
  %4079 = phi float [ %4075, %4045 ], [ %3565, %3523 ]
  %4080 = phi float [ %4061, %4045 ], [ %3526, %3523 ]
  %4081 = phi float [ %4062, %4045 ], [ %3527, %3523 ]
  %4082 = phi float [ %4063, %4045 ], [ %3528, %3523 ]
  %4083 = phi float [ %4051, %4045 ], [ %3529, %3523 ]
  %4084 = phi float [ %4052, %4045 ], [ %3530, %3523 ]
  %4085 = phi float [ %4053, %4045 ], [ %3531, %3523 ]
  %4086 = phi float [ %4060, %4045 ], [ %3532, %3523 ]
  %4087 = phi float [ %4070, %4045 ], [ %970, %3523 ]
  %4088 = phi float [ %4058, %4045 ], [ %3533, %3523 ]
  %4089 = phi float [ %4057, %4045 ], [ %3534, %3523 ]
  %4090 = phi float [ %4050, %4045 ], [ 0.000000e+00, %3523 ]
  %4091 = phi float [ %4049, %4045 ], [ 0.000000e+00, %3523 ]
  %4092 = phi float [ %4046, %4045 ], [ 0.000000e+00, %3523 ]
  %4093 = phi float [ %4047, %4045 ], [ %3537, %3523 ]
  %4094 = phi float [ %4048, %4045 ], [ %3535, %3523 ]
  %4095 = fadd fast float %4086, 0xBFB99999A0000000
  %4096 = call float @dx.op.unary.f32(i32 7, float %4095)  ; Saturate(value)
  %4097 = fmul fast float %4096, 0x3FF1C71C80000000
  %4098 = call float @dx.op.binary.f32(i32 36, float %4086, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4099 = fsub fast float 1.000000e+00, %4097
  %4100 = call float @dx.op.unary.f32(i32 7, float %4099)  ; Saturate(value)
  %4101 = fmul fast float %4100, %4080
  %4102 = fmul fast float %4100, %4081
  %4103 = fmul fast float %4100, %4082
  %4104 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4105 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4106 = call float @dx.op.unary.f32(i32 7, float %4103)  ; Saturate(value)
  %4107 = fmul fast float %4097, %4080
  %4108 = fmul fast float %4097, %4081
  %4109 = fmul fast float %4097, %4082
  %4110 = fadd fast float %4107, %4098
  %4111 = fadd fast float %4108, %4098
  %4112 = fadd fast float %4109, %4098
  %4113 = call float @dx.op.unary.f32(i32 7, float %4110)  ; Saturate(value)
  %4114 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4115 = call float @dx.op.unary.f32(i32 7, float %4112)  ; Saturate(value)
  %4116 = call float @dx.op.unary.f32(i32 7, float %4088)  ; Saturate(value)
  %4117 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.i32 %4117, 3
  %4119 = and i32 %4118, 8
  %4120 = icmp ne i32 %4119, 0
  %4121 = call float @dx.op.binary.f32(i32 35, float %4104, float %4080)  ; FMax(a,b)
  %4122 = call float @dx.op.binary.f32(i32 35, float %4105, float %4080)  ; FMax(a,b)
  %4123 = call float @dx.op.binary.f32(i32 35, float %4106, float %4080)  ; FMax(a,b)
  %4124 = call float @dx.op.dot3.f32(i32 55, float %4104, float %4105, float %4106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4125 = select i1 %183, float %4080, float %4104
  %4126 = select i1 %183, float %4124, float %4105
  %4127 = select i1 %183, float 1.000000e+00, float %4106
  %4128 = select i1 %4120, float %4121, float %4125
  %4129 = select i1 %4120, float %4122, float %4126
  %4130 = select i1 %4120, float %4123, float %4127
  %4131 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4132 = extractvalue %dx.types.CBufRet.f32 %4131, 0
  %4133 = extractvalue %dx.types.CBufRet.f32 %4131, 1
  %4134 = extractvalue %dx.types.CBufRet.f32 %4131, 2
  %4135 = fadd fast float %4132, %141
  %4136 = fadd fast float %4133, %142
  %4137 = fadd fast float %4134, %143
  %4138 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4139 = extractvalue %dx.types.CBufRet.f32 %4138, 0
  %4140 = extractvalue %dx.types.CBufRet.f32 %4138, 1
  %4141 = fsub fast float %4135, %4139
  %4142 = fsub fast float %4136, %4140
  %4143 = fmul fast float %4141, %4141
  %4144 = fmul fast float %4142, %4142
  %4145 = fadd fast float %4143, %4144
  %4146 = call float @dx.op.unary.f32(i32 24, float %4145)  ; Sqrt(value)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4138, 2
  %4148 = fcmp fast olt float %4146, %4147
  br i1 %4148, label %4149, label %4216

; <label>:4149                                    ; preds = %4076
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 0
  %4152 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4153 = extractvalue %dx.types.CBufRet.f32 %4152, 0
  %4154 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4155 = extractvalue %dx.types.CBufRet.f32 %4154, 0
  %4156 = extractvalue %dx.types.CBufRet.f32 %4150, 1
  %4157 = extractvalue %dx.types.CBufRet.f32 %4152, 1
  %4158 = extractvalue %dx.types.CBufRet.f32 %4154, 1
  %4159 = extractvalue %dx.types.CBufRet.f32 %4150, 3
  %4160 = extractvalue %dx.types.CBufRet.f32 %4152, 3
  %4161 = extractvalue %dx.types.CBufRet.f32 %4154, 3
  %4162 = fadd fast float %4159, %4135
  %4163 = fadd fast float %4160, %4136
  %4164 = fadd fast float %4161, %4137
  %4165 = fmul fast float %4162, %4151
  %4166 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4153, float %4165)  ; FMad(a,b,c)
  %4167 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4155, float %4166)  ; FMad(a,b,c)
  %4168 = fmul fast float %4162, %4156
  %4169 = call float @dx.op.tertiary.f32(i32 46, float %4163, float %4157, float %4168)  ; FMad(a,b,c)
  %4170 = call float @dx.op.tertiary.f32(i32 46, float %4164, float %4158, float %4169)  ; FMad(a,b,c)
  %4171 = fsub fast float %4167, %4159
  %4172 = fsub fast float %4170, %4160
  %4173 = fsub fast float %4171, %4139
  %4174 = fadd fast float %4173, %4147
  %4175 = fsub fast float %4172, %4140
  %4176 = fadd fast float %4175, %4147
  %4177 = extractvalue %dx.types.CBufRet.f32 %4138, 3
  %4178 = fmul fast float %4174, %4177
  %4179 = fmul fast float %4176, %4177
  %4180 = call float @dx.op.unary.f32(i32 7, float %4178)  ; Saturate(value)
  %4181 = call float @dx.op.unary.f32(i32 7, float %4179)  ; Saturate(value)
  %4182 = fsub fast float 1.000000e+00, %4180
  %4183 = fsub fast float 1.000000e+00, %4181
  %4184 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4182, float %4183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4185 = extractvalue %dx.types.ResRet.f32 %4184, 0
  %4186 = fcmp fast ugt float %4185, 0.000000e+00
  br i1 %4186, label %4187, label %4490

; <label>:4187                                    ; preds = %4149
  %4188 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4189 = extractvalue %dx.types.CBufRet.f32 %4188, 2
  %4190 = fmul fast float %4189, %4185
  %4191 = extractvalue %dx.types.CBufRet.f32 %4188, 3
  %4192 = fadd fast float %4191, %4190
  %4193 = extractvalue %dx.types.CBufRet.f32 %4154, 2
  %4194 = fadd fast float %4192, %4161
  %4195 = fmul fast float %4167, %4155
  %4196 = call float @dx.op.tertiary.f32(i32 46, float %4170, float %4158, float %4195)  ; FMad(a,b,c)
  %4197 = call float @dx.op.tertiary.f32(i32 46, float %4194, float %4193, float %4196)  ; FMad(a,b,c)
  %4198 = fsub fast float %4197, %4161
  %4199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4200 = extractvalue %dx.types.CBufRet.f32 %4199, 2
  %4201 = fsub fast float %4198, %4200
  %4202 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4182, float %4183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4203 = extractvalue %dx.types.ResRet.f32 %4202, 0
  %4204 = extractvalue %dx.types.ResRet.f32 %4202, 1
  %4205 = extractvalue %dx.types.ResRet.f32 %4202, 2
  %4206 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4182, float %4183, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = extractvalue %dx.types.ResRet.f32 %4206, 1
  %4209 = extractvalue %dx.types.ResRet.f32 %4206, 2
  %4210 = fadd fast float %4207, %4203
  %4211 = fmul fast float %4210, 0x3F847AE140000000
  %4212 = fadd fast float %4208, %4204
  %4213 = fmul fast float %4212, 0x3F847AE140000000
  %4214 = fadd fast float %4209, %4205
  %4215 = fmul fast float %4214, 0x3F847AE140000000
  br label %4490

; <label>:4216                                    ; preds = %4076
  %4217 = and i32 %159, 1
  %4218 = icmp eq i32 %4217, 0
  br i1 %4218, label %4490, label %4219

; <label>:4219                                    ; preds = %4216
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 0
  %4222 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4223 = extractvalue %dx.types.CBufRet.f32 %4222, 0
  %4224 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4225 = extractvalue %dx.types.CBufRet.f32 %4224, 0
  %4226 = extractvalue %dx.types.CBufRet.f32 %4220, 1
  %4227 = extractvalue %dx.types.CBufRet.f32 %4222, 1
  %4228 = extractvalue %dx.types.CBufRet.f32 %4224, 1
  %4229 = extractvalue %dx.types.CBufRet.f32 %4220, 3
  %4230 = extractvalue %dx.types.CBufRet.f32 %4222, 3
  %4231 = extractvalue %dx.types.CBufRet.f32 %4224, 3
  %4232 = fadd fast float %4229, %4135
  %4233 = fadd fast float %4230, %4136
  %4234 = fadd fast float %4231, %4137
  %4235 = fmul fast float %4232, %4221
  %4236 = call float @dx.op.tertiary.f32(i32 46, float %4233, float %4223, float %4235)  ; FMad(a,b,c)
  %4237 = call float @dx.op.tertiary.f32(i32 46, float %4234, float %4225, float %4236)  ; FMad(a,b,c)
  %4238 = fmul fast float %4232, %4226
  %4239 = call float @dx.op.tertiary.f32(i32 46, float %4233, float %4227, float %4238)  ; FMad(a,b,c)
  %4240 = call float @dx.op.tertiary.f32(i32 46, float %4234, float %4228, float %4239)  ; FMad(a,b,c)
  %4241 = fsub fast float %4237, %4229
  %4242 = fsub fast float %4240, %4230
  %4243 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4244 = extractvalue %dx.types.CBufRet.f32 %4243, 0
  %4245 = extractvalue %dx.types.CBufRet.f32 %4243, 1
  %4246 = extractvalue %dx.types.CBufRet.f32 %4243, 2
  %4247 = extractvalue %dx.types.CBufRet.f32 %4243, 3
  %4248 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4249 = extractvalue %dx.types.CBufRet.f32 %4248, 3
  %4250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.i32 %4250, 0
  %4252 = extractvalue %dx.types.CBufRet.i32 %4250, 1
  %4253 = udiv i32 %4252, %4251
  %4254 = fsub fast float %4241, %4244
  %4255 = fsub fast float %4242, %4245
  %4256 = call float @dx.op.binary.f32(i32 35, float %4254, float 0.000000e+00)  ; FMax(a,b)
  %4257 = call float @dx.op.binary.f32(i32 35, float %4255, float 0.000000e+00)  ; FMax(a,b)
  %4258 = call float @dx.op.binary.f32(i32 36, float %4256, float %4246)  ; FMin(a,b)
  %4259 = call float @dx.op.binary.f32(i32 36, float %4257, float %4247)  ; FMin(a,b)
  %4260 = add i32 %4251, -1
  %4261 = add i32 %4253, -1
  %4262 = fmul fast float %4258, %4249
  %4263 = fmul fast float %4259, %4249
  %4264 = fptoui float %4262 to i32
  %4265 = fptoui float %4263 to i32
  %4266 = call i32 @dx.op.binary.i32(i32 40, i32 %4264, i32 %4260)  ; UMin(a,b)
  %4267 = call i32 @dx.op.binary.i32(i32 40, i32 %4265, i32 %4261)  ; UMin(a,b)
  %4268 = mul i32 %4267, %4251
  %4269 = add i32 %4268, %4266
  %4270 = shl i32 %4269, 2
  %4271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4270, i32 undef)  ; BufferLoad(srv,index,wot)
  %4272 = extractvalue %dx.types.ResRet.i32 %4271, 0
  %4273 = icmp eq i32 %4272, -1
  br i1 %4273, label %4490, label %4274

; <label>:4274                                    ; preds = %4219
  %4275 = mul i32 %4272, 148
  %4276 = add i32 %4275, 4
  %4277 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4276, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.f32 %4277, 0
  %4279 = add i32 %4275, 8
  %4280 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4279, i32 undef)  ; BufferLoad(srv,index,wot)
  %4281 = extractvalue %dx.types.ResRet.f32 %4280, 0
  %4282 = add i32 %4275, 36
  %4283 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4282, i32 undef)  ; BufferLoad(srv,index,wot)
  %4284 = extractvalue %dx.types.ResRet.f32 %4283, 0
  %4285 = add i32 %4275, 60
  %4286 = add i32 %4275, 92
  %4287 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4286, i32 undef)  ; BufferLoad(srv,index,wot)
  %4288 = extractvalue %dx.types.ResRet.i32 %4287, 0
  %4289 = add i32 %4275, 116
  %4290 = fsub fast float %4241, %4278
  %4291 = fsub fast float %4242, %4281
  %4292 = fmul fast float %4249, %4290
  %4293 = fmul fast float %4249, %4291
  %4294 = call float @dx.op.unary.f32(i32 7, float %4292)  ; Saturate(value)
  %4295 = call float @dx.op.unary.f32(i32 7, float %4293)  ; Saturate(value)
  %4296 = fsub fast float 1.000000e+00, %4295
  %4297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4298 = extractvalue %dx.types.CBufRet.f32 %4297, 2
  %4299 = call float @dx.op.unary.f32(i32 83, float %4294)  ; DerivCoarseX(value)
  %4300 = call float @dx.op.unary.f32(i32 83, float %4296)  ; DerivCoarseX(value)
  %4301 = call float @dx.op.unary.f32(i32 84, float %4294)  ; DerivCoarseY(value)
  %4302 = call float @dx.op.unary.f32(i32 84, float %4296)  ; DerivCoarseY(value)
  %4303 = fmul fast float %4299, %4298
  %4304 = fmul fast float %4300, %4298
  %4305 = fmul fast float %4301, %4298
  %4306 = fmul fast float %4302, %4298
  %4307 = call float @dx.op.dot2.f32(i32 54, float %4305, float %4306, float %4305, float %4306)  ; Dot2(ax,ay,bx,by)
  %4308 = call float @dx.op.dot2.f32(i32 54, float %4303, float %4304, float %4303, float %4304)  ; Dot2(ax,ay,bx,by)
  %4309 = call float @dx.op.binary.f32(i32 35, float %4308, float %4307)  ; FMax(a,b)
  %4310 = call float @dx.op.unary.f32(i32 23, float %4309)  ; Log(value)
  %4311 = fmul fast float %4310, 5.000000e-01
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4314 = fadd fast float %4313, %4311
  %4315 = call float @dx.op.binary.f32(i32 35, float %4314, float 0.000000e+00)  ; FMax(a,b)
  %4316 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4317 = extractvalue %dx.types.CBufRet.f32 %4316, 3
  %4318 = fadd fast float %4317, %4315
  %4319 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4320 = extractvalue %dx.types.CBufRet.f32 %4319, 3
  %4321 = fadd fast float %4318, %4320
  %4322 = add i32 %4288, 0
  %4323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4322, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4324 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4323, i32 0)  ; GetDimensions(handle,mipLevel)
  %4325 = extractvalue %dx.types.Dimensions %4324, 0
  %4326 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4325)  ; FirstbitLo(value)
  %4327 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.i32 %4327, 1
  %4329 = sub nsw i32 %4328, %4326
  %4330 = sitofp i32 %4329 to float
  %4331 = fsub fast float %4321, %4330
  %4332 = call float @dx.op.binary.f32(i32 35, float %4331, float 0.000000e+00)  ; FMax(a,b)
  %4333 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4323, %dx.types.Handle %37, float %4294, float %4296, float %4284, float undef, i32 0, i32 0, i32 undef, float %4332)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4334 = extractvalue %dx.types.ResRet.f32 %4333, 0
  %4335 = fcmp ule float %4334, 0x3FE0101020000000
  %4336 = extractvalue %dx.types.CBufRet.i32 %4327, 0
  %4337 = and i32 %4336, 128
  %4338 = icmp ne i32 %4337, 0
  %4339 = and i1 %4335, %4338
  br i1 %4339, label %4490, label %4340

; <label>:4340                                    ; preds = %4274
  %4341 = add i32 %4275, 20
  %4342 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4341, i32 undef)  ; BufferLoad(srv,index,wot)
  %4343 = extractvalue %dx.types.ResRet.f32 %4342, 0
  %4344 = add i32 %4275, 24
  %4345 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4344, i32 undef)  ; BufferLoad(srv,index,wot)
  %4346 = extractvalue %dx.types.ResRet.f32 %4345, 0
  %4347 = add i32 %4275, 40
  %4348 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4347, i32 undef)  ; BufferLoad(srv,index,wot)
  %4349 = extractvalue %dx.types.ResRet.f32 %4348, 0
  %4350 = add i32 %4275, 96
  %4351 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4350, i32 undef)  ; BufferLoad(srv,index,wot)
  %4352 = extractvalue %dx.types.ResRet.i32 %4351, 0
  %4353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.f32 %4353, 2
  %4355 = fmul fast float %4354, %4294
  %4356 = fmul fast float %4354, %4296
  %4357 = extractvalue %dx.types.CBufRet.f32 %4353, 3
  %4358 = fadd fast float %4355, %4357
  %4359 = fadd fast float %4356, %4357
  %4360 = add i32 %4352, 0
  %4361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4360, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4362 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4361, i32 0)  ; GetDimensions(handle,mipLevel)
  %4363 = extractvalue %dx.types.Dimensions %4362, 0
  %4364 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4363)  ; FirstbitLo(value)
  %4365 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4366 = extractvalue %dx.types.CBufRet.i32 %4365, 1
  %4367 = sub nsw i32 %4366, %4364
  %4368 = sitofp i32 %4367 to float
  %4369 = fsub fast float %4318, %4368
  %4370 = call float @dx.op.binary.f32(i32 35, float %4369, float 0.000000e+00)  ; FMax(a,b)
  %4371 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4361, %dx.types.Handle %37, float %4358, float %4359, float %4349, float undef, i32 0, i32 0, i32 undef, float %4370)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = fmul fast float %4372, %4343
  %4374 = fadd fast float %4373, %4346
  %4375 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4376 = extractvalue %dx.types.CBufRet.f32 %4375, 0
  %4377 = extractvalue %dx.types.CBufRet.f32 %4375, 1
  %4378 = extractvalue %dx.types.CBufRet.f32 %4375, 2
  %4379 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4380 = extractvalue %dx.types.CBufRet.f32 %4379, 3
  %4381 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4382 = extractvalue %dx.types.CBufRet.f32 %4381, 3
  %4383 = extractvalue %dx.types.CBufRet.f32 %4375, 3
  %4384 = fadd fast float %4380, %4241
  %4385 = fadd fast float %4382, %4242
  %4386 = fadd fast float %4374, %4383
  %4387 = fmul fast float %4384, %4376
  %4388 = call float @dx.op.tertiary.f32(i32 46, float %4385, float %4377, float %4387)  ; FMad(a,b,c)
  %4389 = call float @dx.op.tertiary.f32(i32 46, float %4386, float %4378, float %4388)  ; FMad(a,b,c)
  %4390 = fsub fast float %4389, %4383
  %4391 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4392 = extractvalue %dx.types.CBufRet.f32 %4391, 2
  %4393 = fsub fast float %4390, %4392
  %4394 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4395 = extractvalue %dx.types.CBufRet.i32 %4394, 0
  %4396 = call i32 @dx.op.binary.i32(i32 40, i32 %4272, i32 %4395)  ; UMin(a,b)
  %4397 = mul i32 %4396, 36
  %4398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4397, i32 undef)  ; BufferLoad(srv,index,wot)
  %4399 = extractvalue %dx.types.ResRet.i32 %4398, 0
  %4400 = add i32 %4397, 4
  %4401 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4402 = extractvalue %dx.types.CBufRet.f32 %4401, 0
  %4403 = fmul fast float %4402, %4294
  %4404 = fmul fast float %4402, %4296
  %4405 = extractvalue %dx.types.CBufRet.f32 %4401, 1
  %4406 = fadd fast float %4403, %4405
  %4407 = fadd fast float %4404, %4405
  %4408 = icmp eq i32 %4399, 0
  br i1 %4408, label %4477, label %4409

; <label>:4409                                    ; preds = %4340
  br label %4410

; <label>:4410                                    ; preds = %4467, %4409
  %4411 = phi float [ %4468, %4467 ], [ 0.000000e+00, %4409 ]
  %4412 = phi float [ %4469, %4467 ], [ 0.000000e+00, %4409 ]
  %4413 = phi float [ %4470, %4467 ], [ 0.000000e+00, %4409 ]
  %4414 = phi float [ %4471, %4467 ], [ 0.000000e+00, %4409 ]
  %4415 = phi float [ %4472, %4467 ], [ 0.000000e+00, %4409 ]
  %4416 = phi float [ %4473, %4467 ], [ 0.000000e+00, %4409 ]
  %4417 = phi i32 [ %4474, %4467 ], [ 0, %4409 ]
  %4418 = shl i32 %4417, 2
  %4419 = add i32 %4285, %4418
  %4420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4419, i32 undef)  ; BufferLoad(srv,index,wot)
  %4421 = extractvalue %dx.types.ResRet.f32 %4420, 0
  %4422 = add i32 %4289, %4418
  %4423 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4422, i32 undef)  ; BufferLoad(srv,index,wot)
  %4424 = extractvalue %dx.types.ResRet.i32 %4423, 0
  %4425 = add i32 %4424, 0
  %4426 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4425, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4427 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4426, i32 0)  ; GetDimensions(handle,mipLevel)
  %4428 = extractvalue %dx.types.Dimensions %4427, 0
  %4429 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4428)  ; FirstbitLo(value)
  %4430 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4431 = extractvalue %dx.types.CBufRet.i32 %4430, 1
  %4432 = sub nsw i32 %4431, %4429
  %4433 = sitofp i32 %4432 to float
  %4434 = fsub fast float %4318, %4433
  %4435 = call float @dx.op.binary.f32(i32 35, float %4434, float 0.000000e+00)  ; FMax(a,b)
  %4436 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4426, %dx.types.Handle %37, float %4406, float %4407, float %4421, float undef, i32 0, i32 0, i32 undef, float %4435)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = fcmp fast ogt float %4437, 0.000000e+00
  br i1 %4438, label %4439, label %4467

; <label>:4439                                    ; preds = %4410
  %4440 = add i32 %4400, %4418
  %4441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4440, i32 undef)  ; BufferLoad(srv,index,wot)
  %4442 = extractvalue %dx.types.ResRet.i32 %4441, 0
  %4443 = and i32 %4442, 32767
  %4444 = mul nuw nsw i32 %4443, 928
  %4445 = add nuw nsw i32 %4444, 48
  %4446 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4445, i32 undef)  ; BufferLoad(srv,index,wot)
  %4447 = extractvalue %dx.types.ResRet.f32 %4446, 0
  %4448 = extractvalue %dx.types.ResRet.f32 %4446, 1
  %4449 = extractvalue %dx.types.ResRet.f32 %4446, 2
  %4450 = add nuw nsw i32 %4444, 60
  %4451 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4450, i32 undef)  ; BufferLoad(srv,index,wot)
  %4452 = extractvalue %dx.types.ResRet.f32 %4451, 0
  %4453 = extractvalue %dx.types.ResRet.f32 %4451, 1
  %4454 = extractvalue %dx.types.ResRet.f32 %4451, 2
  %4455 = fmul fast float %4447, %4437
  %4456 = fmul fast float %4448, %4437
  %4457 = fmul fast float %4449, %4437
  %4458 = fadd fast float %4455, %4411
  %4459 = fadd fast float %4456, %4412
  %4460 = fadd fast float %4457, %4413
  %4461 = fmul fast float %4452, %4437
  %4462 = fmul fast float %4453, %4437
  %4463 = fmul fast float %4454, %4437
  %4464 = fadd fast float %4461, %4414
  %4465 = fadd fast float %4462, %4415
  %4466 = fadd fast float %4463, %4416
  br label %4467

; <label>:4467                                    ; preds = %4439, %4410
  %4468 = phi float [ %4458, %4439 ], [ %4411, %4410 ]
  %4469 = phi float [ %4459, %4439 ], [ %4412, %4410 ]
  %4470 = phi float [ %4460, %4439 ], [ %4413, %4410 ]
  %4471 = phi float [ %4464, %4439 ], [ %4414, %4410 ]
  %4472 = phi float [ %4465, %4439 ], [ %4415, %4410 ]
  %4473 = phi float [ %4466, %4439 ], [ %4416, %4410 ]
  %4474 = add nuw i32 %4417, 1
  %4475 = icmp eq i32 %4474, %4399
  br i1 %4475, label %4476, label %4410

; <label>:4476                                    ; preds = %4467
  br label %4477

; <label>:4477                                    ; preds = %4476, %4340
  %4478 = phi float [ 0.000000e+00, %4340 ], [ %4468, %4476 ]
  %4479 = phi float [ 0.000000e+00, %4340 ], [ %4469, %4476 ]
  %4480 = phi float [ 0.000000e+00, %4340 ], [ %4470, %4476 ]
  %4481 = phi float [ 0.000000e+00, %4340 ], [ %4471, %4476 ]
  %4482 = phi float [ 0.000000e+00, %4340 ], [ %4472, %4476 ]
  %4483 = phi float [ 0.000000e+00, %4340 ], [ %4473, %4476 ]
  %4484 = fadd fast float %4481, %4478
  %4485 = fmul fast float %4484, 0x3F847AE140000000
  %4486 = fadd fast float %4482, %4479
  %4487 = fmul fast float %4486, 0x3F847AE140000000
  %4488 = fadd fast float %4483, %4480
  %4489 = fmul fast float %4488, 0x3F847AE140000000
  br label %4490

; <label>:4490                                    ; preds = %4477, %4274, %4219, %4216, %4187, %4149
  %4491 = phi float [ %4201, %4187 ], [ -1.310720e+05, %4149 ], [ %4393, %4477 ], [ -1.310720e+05, %4219 ], [ -1.310720e+05, %4274 ], [ -1.310720e+05, %4216 ]
  %4492 = phi float [ %4211, %4187 ], [ 0.000000e+00, %4149 ], [ %4485, %4477 ], [ 0.000000e+00, %4219 ], [ 0.000000e+00, %4274 ], [ 0.000000e+00, %4216 ]
  %4493 = phi float [ %4213, %4187 ], [ 0.000000e+00, %4149 ], [ %4487, %4477 ], [ 0.000000e+00, %4219 ], [ 0.000000e+00, %4274 ], [ 0.000000e+00, %4216 ]
  %4494 = phi float [ %4215, %4187 ], [ 0.000000e+00, %4149 ], [ %4489, %4477 ], [ 0.000000e+00, %4219 ], [ 0.000000e+00, %4274 ], [ 0.000000e+00, %4216 ]
  %4495 = phi i1 [ true, %4187 ], [ false, %4149 ], [ true, %4477 ], [ false, %4219 ], [ false, %4274 ], [ false, %4216 ]
  %4496 = and i32 %159, 3
  %4497 = icmp eq i32 %4496, 1
  %4498 = select i1 %4497, float 1.000000e+00, float 0.000000e+00
  %4499 = fsub fast float %4491, %143
  %4500 = call float @dx.op.unary.f32(i32 7, float %4499)  ; Saturate(value)
  %4501 = select i1 %4495, float %4500, float 1.000000e+00
  %4502 = fmul fast float %4501, %4498
  %4503 = icmp eq i32 %4496, 3
  %4504 = select i1 %4503, float 1.000000e+00, float %4502
  %4505 = call float @dx.op.binary.f32(i32 35, float %4092, float %4504)  ; FMax(a,b)
  %4506 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4507 = fcmp fast une float %4506, 0.000000e+00
  %4508 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4509 = call float @dx.op.unary.f32(i32 25, float %4508)  ; Rsqrt(value)
  br i1 %4507, label %4517, label %4510

; <label>:4510                                    ; preds = %4490
  %4511 = fmul fast float %4509, %141
  %4512 = fmul fast float %4509, %142
  %4513 = fmul fast float %4509, %143
  %4514 = fsub fast float -0.000000e+00, %4511
  %4515 = fsub fast float -0.000000e+00, %4512
  %4516 = fsub fast float -0.000000e+00, %4513
  br label %4685

; <label>:4517                                    ; preds = %4490
  %4518 = fmul fast float %141, %4509
  %4519 = fsub fast float -0.000000e+00, %4518
  %4520 = fmul fast float %142, %4509
  %4521 = fsub fast float -0.000000e+00, %4520
  %4522 = fmul fast float %143, %4509
  %4523 = fsub fast float -0.000000e+00, %4522
  %4524 = call float @dx.op.dot3.f32(i32 55, float %4519, float %4521, float %4523, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4525 = fmul fast float %4506, 2.500000e+00
  %4526 = call float @dx.op.unary.f32(i32 7, float %4525)  ; Saturate(value)
  %4527 = fmul fast float %4506, 0x4013FFFFE0000000
  %4528 = fadd fast float %4527, 0xBFFFFFFFE0000000
  %4529 = call float @dx.op.unary.f32(i32 7, float %4528)  ; Saturate(value)
  %4530 = fmul fast float %4506, 0x4004000020000000
  %4531 = fadd fast float %4530, 0xBFF8000040000000
  %4532 = call float @dx.op.unary.f32(i32 7, float %4531)  ; Saturate(value)
  %4533 = call float @dx.op.unary.f32(i32 7, float %4526)  ; Saturate(value)
  %4534 = fmul fast float %4095, 1.000000e+01
  %4535 = call float @dx.op.unary.f32(i32 7, float %4534)  ; Saturate(value)
  %4536 = fmul fast float %4535, 2.000000e+00
  %4537 = fsub fast float 3.000000e+00, %4536
  %4538 = fmul fast float %4535, %4535
  %4539 = fmul fast float %4538, %4537
  %4540 = fsub fast float 1.000000e+00, %4539
  %4541 = fsub fast float 0x3FE3333340000000, %4116
  %4542 = fmul fast float %4541, 0x400AAAAAA0000000
  %4543 = call float @dx.op.unary.f32(i32 7, float %4542)  ; Saturate(value)
  %4544 = fmul fast float %4540, %4543
  %4545 = fmul fast float %4128, 0x3FEA2B8620000000
  %4546 = fmul fast float %4129, 0x3FEA2B8620000000
  %4547 = fmul fast float %4130, 0x3FEA2B8620000000
  %4548 = fadd fast float %4545, 0x3FC81DFBA0000000
  %4549 = fmul fast float %4548, %4128
  %4550 = fadd fast float %4549, 0x3F910E6020000000
  %4551 = fadd fast float %4546, 0x3FC81DFBA0000000
  %4552 = fmul fast float %4551, %4129
  %4553 = fadd fast float %4552, 0x3F910E6020000000
  %4554 = fadd fast float %4547, 0x3FC81DFBA0000000
  %4555 = fmul fast float %4554, %4130
  %4556 = fadd fast float %4555, 0x3F910E6020000000
  %4557 = call float @dx.op.unary.f32(i32 7, float %4550)  ; Saturate(value)
  %4558 = call float @dx.op.unary.f32(i32 7, float %4553)  ; Saturate(value)
  %4559 = call float @dx.op.unary.f32(i32 7, float %4556)  ; Saturate(value)
  %4560 = fsub fast float %4557, %4128
  %4561 = fsub fast float %4558, %4129
  %4562 = fsub fast float %4559, %4130
  %4563 = fmul fast float %4560, %4533
  %4564 = fmul fast float %4563, %4544
  %4565 = fmul fast float %4561, %4533
  %4566 = fmul fast float %4565, %4544
  %4567 = fmul fast float %4562, %4533
  %4568 = fmul fast float %4567, %4544
  %4569 = fadd fast float %4564, %4128
  %4570 = fadd fast float %4566, %4129
  %4571 = fadd fast float %4568, %4130
  %4572 = fmul fast float %4089, %4089
  %4573 = fmul fast float %4572, %4572
  %4574 = fadd fast float %4529, 1.000000e+00
  %4575 = fsub fast float %4574, %4544
  %4576 = call float @dx.op.unary.f32(i32 7, float %4575)  ; Saturate(value)
  %4577 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4578 = call float @dx.op.unary.f32(i32 7, float %4577)  ; Saturate(value)
  %4579 = fsub fast float 1.000000e+00, %4573
  %4580 = call float @dx.op.binary.f32(i32 36, float %4576, float %4579)  ; FMin(a,b)
  %4581 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4582 = call float @dx.op.binary.f32(i32 35, float %4580, float %4581)  ; FMax(a,b)
  %4583 = fadd fast float %4578, 0xBFE4CCCCC0000000
  %4584 = fmul fast float %4583, 0x4006DB6DA0000000
  %4585 = call float @dx.op.unary.f32(i32 7, float %4584)  ; Saturate(value)
  %4586 = fmul fast float %4585, 2.000000e+00
  %4587 = fsub fast float 3.000000e+00, %4586
  %4588 = bitcast float %4113 to i32
  %4589 = ashr i32 %4588, 1
  %4590 = add nsw i32 %4589, 532487669
  %4591 = bitcast i32 %4590 to float
  %4592 = fsub fast float 1.000000e+00, %4591
  %4593 = bitcast float %4592 to i32
  %4594 = sub nsw i32 2129859010, %4593
  %4595 = bitcast i32 %4594 to float
  %4596 = fmul fast float %4595, 2.000000e+00
  %4597 = bitcast float %4114 to i32
  %4598 = ashr i32 %4597, 1
  %4599 = add nsw i32 %4598, 532487669
  %4600 = bitcast i32 %4599 to float
  %4601 = fsub fast float 1.000000e+00, %4600
  %4602 = bitcast float %4601 to i32
  %4603 = sub nsw i32 2129859010, %4602
  %4604 = bitcast i32 %4603 to float
  %4605 = fmul fast float %4604, 2.000000e+00
  %4606 = bitcast float %4115 to i32
  %4607 = ashr i32 %4606, 1
  %4608 = add nsw i32 %4607, 532487669
  %4609 = bitcast i32 %4608 to float
  %4610 = fsub fast float 1.000000e+00, %4609
  %4611 = bitcast float %4610 to i32
  %4612 = sub nsw i32 2129859010, %4611
  %4613 = bitcast i32 %4612 to float
  %4614 = fmul fast float %4613, 2.000000e+00
  %4615 = fsub fast float 0x4002A9FBE0000000, %4596
  %4616 = fadd fast float %4596, 0x3FD54FDF00000000
  %4617 = bitcast float %4616 to i32
  %4618 = sub nsw i32 2129859010, %4617
  %4619 = bitcast i32 %4618 to float
  %4620 = fmul fast float %4619, %4615
  %4621 = fmul fast float %4620, %4620
  %4622 = fsub fast float 0x4002A9FBE0000000, %4605
  %4623 = fadd fast float %4605, 0x3FD54FDF00000000
  %4624 = bitcast float %4623 to i32
  %4625 = sub nsw i32 2129859010, %4624
  %4626 = bitcast i32 %4625 to float
  %4627 = fmul fast float %4626, %4622
  %4628 = fmul fast float %4627, %4627
  %4629 = fsub fast float 0x4002A9FBE0000000, %4614
  %4630 = fadd fast float %4614, 0x3FD54FDF00000000
  %4631 = bitcast float %4630 to i32
  %4632 = sub nsw i32 2129859010, %4631
  %4633 = bitcast i32 %4632 to float
  %4634 = fmul fast float %4633, %4629
  %4635 = fmul fast float %4634, %4634
  %4636 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4621)  ; FMax(a,b)
  %4637 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4628)  ; FMax(a,b)
  %4638 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4635)  ; FMax(a,b)
  %4639 = fsub fast float 1.000000e+00, %4524
  %4640 = fadd fast float %4639, %4540
  %4641 = call float @dx.op.unary.f32(i32 7, float %4640)  ; Saturate(value)
  %4642 = fsub fast float 1.000000e+00, %4504
  %4643 = fmul fast float %4582, %4642
  %4644 = fmul fast float %4585, %4585
  %4645 = fmul fast float %4644, %4643
  %4646 = fmul fast float %4645, %4587
  %4647 = fmul fast float %4642, 0xBFE99999A0000000
  %4648 = fmul fast float %4647, %4533
  %4649 = fmul fast float %4648, %4544
  %4650 = fadd fast float %4649, 1.000000e+00
  %4651 = fadd fast float %4116, -1.000000e+00
  %4652 = fmul fast float %4650, %4651
  %4653 = fadd fast float %4652, 1.000000e+00
  %4654 = fsub fast float %4636, %4113
  %4655 = fsub fast float %4637, %4114
  %4656 = fsub fast float %4638, %4115
  %4657 = fmul fast float %4646, %4654
  %4658 = fmul fast float %4646, %4655
  %4659 = fmul fast float %4646, %4656
  %4660 = fadd fast float %4657, %4113
  %4661 = fadd fast float %4658, %4114
  %4662 = fadd fast float %4659, %4115
  %4663 = fsub fast float %85, %4077
  %4664 = fsub fast float %86, %4078
  %4665 = fsub fast float %87, %4079
  %4666 = fmul fast float %4646, %4663
  %4667 = fmul fast float %4646, %4664
  %4668 = fmul fast float %4646, %4665
  %4669 = fadd fast float %4666, %4077
  %4670 = fadd fast float %4667, %4078
  %4671 = fadd fast float %4668, %4079
  %4672 = fmul fast float %4646, %4641
  %4673 = call float @dx.op.unary.f32(i32 7, float %4653)  ; Saturate(value)
  %4674 = fsub fast float 1.000000e+00, %4673
  %4675 = fmul fast float %4672, %4674
  %4676 = fadd fast float %4675, %4673
  %4677 = fsub fast float 1.000000e+00, %4089
  %4678 = fmul fast float %4646, %4677
  %4679 = fadd fast float %4678, %4089
  %4680 = call float @dx.op.dot3.f32(i32 55, float %4669, float %4670, float %4671, float %4669, float %4670, float %4671)  ; Dot3(ax,ay,az,bx,by,bz)
  %4681 = call float @dx.op.unary.f32(i32 25, float %4680)  ; Rsqrt(value)
  %4682 = fmul fast float %4669, %4681
  %4683 = fmul fast float %4670, %4681
  %4684 = fmul fast float %4671, %4681
  br label %4685

; <label>:4685                                    ; preds = %4517, %4510
  %4686 = phi float [ %4516, %4510 ], [ %4523, %4517 ]
  %4687 = phi float [ %4515, %4510 ], [ %4521, %4517 ]
  %4688 = phi float [ %4514, %4510 ], [ %4519, %4517 ]
  %4689 = phi float [ %4513, %4510 ], [ %4522, %4517 ]
  %4690 = phi float [ %4512, %4510 ], [ %4520, %4517 ]
  %4691 = phi float [ %4511, %4510 ], [ %4518, %4517 ]
  %4692 = phi float [ %4113, %4510 ], [ %4660, %4517 ]
  %4693 = phi float [ %4114, %4510 ], [ %4661, %4517 ]
  %4694 = phi float [ %4115, %4510 ], [ %4662, %4517 ]
  %4695 = phi float [ %4128, %4510 ], [ %4569, %4517 ]
  %4696 = phi float [ %4129, %4510 ], [ %4570, %4517 ]
  %4697 = phi float [ %4130, %4510 ], [ %4571, %4517 ]
  %4698 = phi float [ %4077, %4510 ], [ %4682, %4517 ]
  %4699 = phi float [ %4078, %4510 ], [ %4683, %4517 ]
  %4700 = phi float [ %4079, %4510 ], [ %4684, %4517 ]
  %4701 = phi float [ %4116, %4510 ], [ %4676, %4517 ]
  %4702 = phi float [ %4089, %4510 ], [ %4679, %4517 ]
  %4703 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4704 = extractvalue %dx.types.CBufRet.f32 %4703, 2
  %4705 = extractvalue %dx.types.CBufRet.f32 %4703, 3
  %4706 = fmul fast float %4704, %78
  %4707 = fmul fast float %4705, %79
  %4708 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4709 = extractvalue %dx.types.CBufRet.f32 %4708, 0
  %4710 = extractvalue %dx.types.CBufRet.f32 %4708, 1
  %4711 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4706, float %4707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4712 = extractvalue %dx.types.ResRet.f32 %4711, 0
  %4713 = fmul fast float %4712, %4710
  %4714 = call float @dx.op.unary.f32(i32 7, float %4713)  ; Saturate(value)
  %4715 = fadd fast float %4714, -1.000000e+00
  %4716 = fmul fast float %4715, %4709
  %4717 = fadd fast float %4716, 1.000000e+00
  %4718 = select i1 %183, float 0.000000e+00, float %4694
  %4719 = call float @dx.op.dot3.f32(i32 55, float %4698, float %4699, float %4700, float %4688, float %4687, float %4686)  ; Dot3(ax,ay,az,bx,by,bz)
  %4720 = call float @dx.op.unary.f32(i32 7, float %4719)  ; Saturate(value)
  %4721 = call float @dx.op.dot3.f32(i32 55, float %4691, float %4690, float %4689, float %4698, float %4699, float %4700)  ; Dot3(ax,ay,az,bx,by,bz)
  %4722 = fmul fast float %4721, 2.000000e+00
  %4723 = fmul fast float %4722, %4698
  %4724 = fmul fast float %4722, %4699
  %4725 = fmul fast float %4722, %4700
  %4726 = fsub fast float %4691, %4723
  %4727 = fsub fast float %4690, %4724
  %4728 = fsub fast float %4689, %4725
  %4729 = call float @dx.op.binary.f32(i32 36, float %4702, float %4717)  ; FMin(a,b)
  %4730 = fsub fast float 1.000000e+00, %4729
  %4731 = bitcast float %4730 to i32
  %4732 = ashr i32 %4731, 1
  %4733 = add nsw i32 %4732, 532487669
  %4734 = bitcast i32 %4733 to float
  %4735 = fsub fast float 1.000000e+00, %4701
  %4736 = call float @dx.op.binary.f32(i32 35, float %4735, float 0x3F847AE140000000)  ; FMax(a,b)
  %4737 = fmul fast float %4736, %4736
  %4738 = fmul fast float %4737, %4737
  %4739 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4740 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4734, float %4738, float %4739, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4741 = extractvalue %dx.types.ResRet.f32 %4740, 0
  %4742 = fsub fast float 1.000000e+00, %4702
  %4743 = bitcast float %4742 to i32
  %4744 = sub nsw i32 2129859010, %4743
  %4745 = bitcast i32 %4744 to float
  %4746 = fsub fast float 1.000000e+00, %55
  %4747 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4748 = call float @dx.op.binary.f32(i32 35, float %4747, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4749 = fdiv fast float %4746, %4748
  %4750 = call float @dx.op.dot3.f32(i32 55, float %4698, float %4699, float %4700, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4751 = call float @dx.op.unary.f32(i32 7, float %4750)  ; Saturate(value)
  %4752 = fmul fast float %4751, 5.000000e-01
  %4753 = fadd fast float %4752, 5.000000e-01
  %4754 = fmul fast float %4753, %55
  %4755 = call float @dx.op.dot3.f32(i32 55, float %4698, float %4699, float %4700, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4756 = call float @dx.op.unary.f32(i32 7, float %4755)  ; Saturate(value)
  %4757 = fmul fast float %4756, %4749
  %4758 = fadd fast float %4754, %4757
  %4759 = fsub fast float 5.000000e-01, %4752
  %4760 = fmul fast float %4759, %4695
  %4761 = fmul fast float %4759, %4696
  %4762 = fmul fast float %4759, %4697
  %4763 = fadd fast float %4758, %4760
  %4764 = fadd fast float %4758, %4761
  %4765 = fadd fast float %4758, %4762
  %4766 = call float @dx.op.dot3.f32(i32 55, float %4726, float %4727, float %4728, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4767 = call float @dx.op.unary.f32(i32 7, float %4766)  ; Saturate(value)
  %4768 = fmul fast float %4767, 5.000000e-01
  %4769 = fadd fast float %4768, 5.000000e-01
  %4770 = fmul fast float %4769, %55
  %4771 = call float @dx.op.dot3.f32(i32 55, float %4726, float %4727, float %4728, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4772 = call float @dx.op.unary.f32(i32 7, float %4771)  ; Saturate(value)
  %4773 = fmul fast float %4772, %4749
  %4774 = fadd fast float %4770, %4773
  %4775 = fsub fast float 5.000000e-01, %4768
  %4776 = fmul fast float %4775, %4695
  %4777 = fmul fast float %4775, %4696
  %4778 = fmul fast float %4775, %4697
  %4779 = fadd fast float %4774, %4776
  %4780 = fadd fast float %4774, %4777
  %4781 = fadd fast float %4774, %4778
  %4782 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4783 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4784 = extractvalue %dx.types.CBufRet.f32 %4783, 0
  %4785 = call float @dx.op.binary.f32(i32 36, float %4695, float %4784)  ; FMin(a,b)
  %4786 = fmul fast float %4785, %4730
  %4787 = fsub fast float 1.000000e+00, %4786
  %4788 = bitcast float %4787 to i32
  %4789 = sub nsw i32 2129859010, %4788
  %4790 = bitcast i32 %4789 to float
  %4791 = call float @dx.op.binary.f32(i32 36, float %4696, float %4784)  ; FMin(a,b)
  %4792 = fmul fast float %4791, %4730
  %4793 = fsub fast float 1.000000e+00, %4792
  %4794 = bitcast float %4793 to i32
  %4795 = sub nsw i32 2129859010, %4794
  %4796 = bitcast i32 %4795 to float
  %4797 = call float @dx.op.binary.f32(i32 36, float %4697, float %4784)  ; FMin(a,b)
  %4798 = fmul fast float %4797, %4730
  %4799 = fsub fast float 1.000000e+00, %4798
  %4800 = bitcast float %4799 to i32
  %4801 = sub nsw i32 2129859010, %4800
  %4802 = bitcast i32 %4801 to float
  %4803 = fmul fast float %4729, %56
  %4804 = fmul fast float %4803, %4763
  %4805 = fmul fast float %4804, %4790
  %4806 = fmul fast float %4729, %57
  %4807 = fmul fast float %4806, %4764
  %4808 = fmul fast float %4807, %4796
  %4809 = fmul fast float %4729, %58
  %4810 = fmul fast float %4809, %4765
  %4811 = fmul fast float %4810, %4802
  %4812 = call float @dx.op.binary.f32(i32 36, float %4692, float %4784)  ; FMin(a,b)
  %4813 = fmul fast float %4812, %4730
  %4814 = fsub fast float 1.000000e+00, %4813
  %4815 = bitcast float %4814 to i32
  %4816 = sub nsw i32 2129859010, %4815
  %4817 = bitcast i32 %4816 to float
  %4818 = call float @dx.op.binary.f32(i32 36, float %4693, float %4784)  ; FMin(a,b)
  %4819 = fmul fast float %4818, %4730
  %4820 = fsub fast float 1.000000e+00, %4819
  %4821 = bitcast float %4820 to i32
  %4822 = sub nsw i32 2129859010, %4821
  %4823 = bitcast i32 %4822 to float
  %4824 = call float @dx.op.binary.f32(i32 36, float %4718, float %4784)  ; FMin(a,b)
  %4825 = fmul fast float %4824, %4730
  %4826 = fsub fast float 1.000000e+00, %4825
  %4827 = bitcast float %4826 to i32
  %4828 = sub nsw i32 2129859010, %4827
  %4829 = bitcast i32 %4828 to float
  %4830 = fmul fast float %4803, %4779
  %4831 = fmul fast float %4830, %4817
  %4832 = fmul fast float %4806, %4780
  %4833 = fmul fast float %4832, %4823
  %4834 = fmul fast float %4809, %4781
  %4835 = fmul fast float %4834, %4829
  %4836 = call float @dx.op.dot3.f32(i32 55, float %4805, float %4808, float %4811, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4837 = select i1 %183, float 0.000000e+00, float %4805
  %4838 = select i1 %183, float %4836, float %4808
  %4839 = select i1 %183, float 0.000000e+00, float %4811
  %4840 = call float @dx.op.dot3.f32(i32 55, float %4831, float %4833, float %4835, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4841 = select i1 %183, float 0.000000e+00, float %4831
  %4842 = select i1 %183, float %4840, float %4833
  %4843 = select i1 %183, float 0.000000e+00, float %4835
  %4844 = fmul fast float %4720, 9.843750e-01
  %4845 = fmul fast float %4701, 9.843750e-01
  %4846 = fadd fast float %4844, 7.812500e-03
  %4847 = fadd fast float %4845, 7.812500e-03
  %4848 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4846, float %4847, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4849 = extractvalue %dx.types.ResRet.f32 %4848, 2
  %4850 = extractvalue %dx.types.ResRet.f32 %4848, 3
  %4851 = fmul fast float %4849, %4692
  %4852 = fmul fast float %4849, %4693
  %4853 = fmul fast float %4849, %4718
  %4854 = fadd fast float %4851, %4850
  %4855 = fadd fast float %4852, %4850
  %4856 = fadd fast float %4853, %4850
  %4857 = fcmp fast ogt float %4090, 0.000000e+00
  br i1 %4857, label %4858, label %4884

; <label>:4858                                    ; preds = %4685
  %4859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4090, float %4720, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4860 = extractvalue %dx.types.ResRet.f32 %4859, 0
  %4861 = extractvalue %dx.types.ResRet.f32 %4859, 1
  %4862 = extractvalue %dx.types.ResRet.f32 %4859, 2
  %4863 = fadd fast float %4860, -5.000000e-01
  %4864 = fadd fast float %4861, -5.000000e-01
  %4865 = fadd fast float %4862, -5.000000e-01
  %4866 = fsub fast float 1.000000e+00, %4692
  %4867 = fsub fast float 1.000000e+00, %4693
  %4868 = fsub fast float 1.000000e+00, %4718
  %4869 = fmul fast float %4692, 4.000000e+00
  %4870 = fmul fast float %4869, %4866
  %4871 = fmul fast float %4870, %4863
  %4872 = fmul fast float %4693, 4.000000e+00
  %4873 = fmul fast float %4872, %4867
  %4874 = fmul fast float %4873, %4864
  %4875 = fmul fast float %4718, 4.000000e+00
  %4876 = fmul fast float %4875, %4868
  %4877 = fmul fast float %4876, %4865
  %4878 = fadd fast float %4871, %4854
  %4879 = fadd fast float %4874, %4855
  %4880 = fadd fast float %4877, %4856
  %4881 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4882 = call float @dx.op.unary.f32(i32 7, float %4879)  ; Saturate(value)
  %4883 = call float @dx.op.unary.f32(i32 7, float %4880)  ; Saturate(value)
  br label %4884

; <label>:4884                                    ; preds = %4858, %4685
  %4885 = phi float [ %4881, %4858 ], [ %4854, %4685 ]
  %4886 = phi float [ %4882, %4858 ], [ %4855, %4685 ]
  %4887 = phi float [ %4883, %4858 ], [ %4856, %4685 ]
  %4888 = call float @dx.op.binary.f32(i32 35, float %4886, float %4887)  ; FMax(a,b)
  %4889 = call float @dx.op.binary.f32(i32 35, float %4885, float %4888)  ; FMax(a,b)
  %4890 = fsub fast float 1.000000e+00, %4889
  %4891 = fmul fast float %4889, %4701
  %4892 = fadd fast float %4891, %4701
  %4893 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4894 = extractvalue %dx.types.CBufRet.f32 %4893, 0
  %4895 = extractvalue %dx.types.CBufRet.f32 %4893, 1
  %4896 = extractvalue %dx.types.CBufRet.f32 %4893, 2
  %4897 = extractvalue %dx.types.CBufRet.f32 %4893, 3
  %4898 = fmul fast float %4892, %4894
  %4899 = fadd fast float %4898, %4895
  %4900 = call float @dx.op.unary.f32(i32 7, float %4899)  ; Saturate(value)
  %4901 = fmul fast float %4896, %4892
  %4902 = fadd fast float %4901, %4897
  %4903 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4904 = fsub fast float 1.000000e+00, %4741
  %4905 = fadd fast float %4904, %4903
  %4906 = call float @dx.op.unary.f32(i32 7, float %4905)  ; Saturate(value)
  %4907 = fcmp fast olt float %4906, 1.000000e+00
  br i1 %4907, label %4908, label %5763

; <label>:4908                                    ; preds = %4884
  %4909 = fcmp fast olt float %4900, 1.000000e+00
  %4910 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4911 = extractvalue %dx.types.CBufRet.f32 %4910, 0
  %4912 = fcmp fast ogt float %4911, 0.000000e+00
  %4913 = or i1 %4909, %4912
  %4914 = or i1 %4909, %4912
  %4915 = xor i1 %4914, true
  %4916 = zext i1 %4915 to i32
  br i1 %4913, label %4917, label %5160

; <label>:4917                                    ; preds = %4908
  %4918 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4919 = extractvalue %dx.types.CBufRet.f32 %4918, 0
  %4920 = extractvalue %dx.types.CBufRet.f32 %4918, 1
  %4921 = extractvalue %dx.types.CBufRet.f32 %4918, 2
  %4922 = extractvalue %dx.types.CBufRet.f32 %4918, 3
  %4923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4924 = extractvalue %dx.types.CBufRet.f32 %4923, 0
  %4925 = extractvalue %dx.types.CBufRet.f32 %4923, 1
  %4926 = extractvalue %dx.types.CBufRet.f32 %4923, 2
  %4927 = extractvalue %dx.types.CBufRet.f32 %4923, 3
  %4928 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4929 = extractvalue %dx.types.CBufRet.f32 %4928, 0
  %4930 = extractvalue %dx.types.CBufRet.f32 %4928, 1
  %4931 = extractvalue %dx.types.CBufRet.f32 %4928, 2
  %4932 = extractvalue %dx.types.CBufRet.f32 %4928, 3
  %4933 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4934 = extractvalue %dx.types.CBufRet.f32 %4933, 0
  %4935 = extractvalue %dx.types.CBufRet.f32 %4933, 1
  %4936 = extractvalue %dx.types.CBufRet.f32 %4933, 2
  %4937 = extractvalue %dx.types.CBufRet.f32 %4933, 3
  %4938 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4939 = extractvalue %dx.types.CBufRet.f32 %4938, 0
  %4940 = extractvalue %dx.types.CBufRet.f32 %4938, 1
  %4941 = extractvalue %dx.types.CBufRet.f32 %4938, 2
  %4942 = extractvalue %dx.types.CBufRet.f32 %4938, 3
  %4943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4944 = extractvalue %dx.types.CBufRet.f32 %4943, 0
  %4945 = extractvalue %dx.types.CBufRet.f32 %4943, 1
  %4946 = extractvalue %dx.types.CBufRet.f32 %4943, 2
  %4947 = extractvalue %dx.types.CBufRet.f32 %4943, 3
  %4948 = call float @dx.op.dot3.f32(i32 55, float %4944, float %4945, float %4946, float %4726, float %4727, float %4728)  ; Dot3(ax,ay,az,bx,by,bz)
  %4949 = call float @dx.op.dot3.f32(i32 55, float %4698, float %4699, float %4700, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4950 = call float @dx.op.unary.f32(i32 6, float %4949)  ; FAbs(value)
  %4951 = fmul fast float %4950, 8.000000e+00
  %4952 = fadd fast float %4951, -6.000000e+00
  %4953 = call float @dx.op.unary.f32(i32 7, float %4952)  ; Saturate(value)
  %4954 = fmul fast float %4948, 8.000000e+00
  %4955 = fmul fast float %4954, %4911
  %4956 = call float @dx.op.unary.f32(i32 7, float %4955)  ; Saturate(value)
  %4957 = fcmp fast ogt float %4956, 0.000000e+00
  br i1 %4957, label %4958, label %5135, !dx.controlflow.hints !82

; <label>:4958                                    ; preds = %4917
  %4959 = extractvalue %dx.types.CBufRet.f32 %4910, 1
  %4960 = extractvalue %dx.types.CBufRet.f32 %4910, 2
  %4961 = fsub fast float %4959, %4960
  %4962 = fmul fast float %4961, %4701
  %4963 = fadd fast float %4962, %4960
  %4964 = fmul fast float %196, 2.000000e+00
  %4965 = fmul fast float %197, 2.000000e+00
  %4966 = fadd fast float %4964, -1.000000e+00
  %4967 = fadd fast float %4965, -1.000000e+00
  %4968 = fmul fast float %4963, %4966
  %4969 = fmul fast float %4963, %4967
  %4970 = fadd fast float %4968, %78
  %4971 = fadd fast float %4969, %79
  %4972 = fmul fast float %4970, %4704
  %4973 = fmul fast float %4971, %4705
  %4974 = fadd fast float %4701, 0xBFE3333340000000
  %4975 = fmul fast float %4974, 0x4004000020000000
  %4976 = fsub fast float 1.000000e+00, %4975
  %4977 = call float @dx.op.unary.f32(i32 7, float %4976)  ; Saturate(value)
  %4978 = fmul fast float %4977, 3.000000e+00
  %4979 = fadd fast float %4978, %196
  %4980 = call float @dx.op.unary.f32(i32 27, float %4979)  ; Round_ni(value)
  %4981 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4972, float %4973, float %4980, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4982 = extractvalue %dx.types.ResRet.f32 %4981, 0
  %4983 = fcmp fast une float %4982, 0xFFF0000000000000
  %4984 = fcmp fast une float %4982, 0x7FF0000000000000
  %4985 = and i1 %4983, %4984
  %4986 = fcmp fast olt float %4982, 0.000000e+00
  %4987 = call float @dx.op.unary.f32(i32 6, float %4982)  ; FAbs(value)
  %4988 = fsub fast float 1.000000e+00, %4987
  %4989 = select i1 %4985, float 1.000000e+00, float 0.000000e+00
  %4990 = fmul fast float %4989, %4956
  %4991 = fcmp fast ogt float %4990, 0.000000e+00
  br i1 %4991, label %4992, label %5135, !dx.controlflow.hints !83

; <label>:4992                                    ; preds = %4958
  %4993 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4994 = extractvalue %dx.types.CBufRet.f32 %4993, 0
  %4995 = extractvalue %dx.types.CBufRet.f32 %4993, 1
  %4996 = extractvalue %dx.types.CBufRet.f32 %4993, 2
  %4997 = select i1 %4986, float 0.000000e+00, float %4994
  %4998 = select i1 %4986, float 0.000000e+00, float %4995
  %4999 = select i1 %4986, float 0.000000e+00, float %4996
  %5000 = select i1 %4986, float %4919, float %4934
  %5001 = select i1 %4986, float %4924, float %4939
  %5002 = select i1 %4986, float %4929, float %4944
  %5003 = select i1 %4986, float %4920, float %4935
  %5004 = select i1 %4986, float %4925, float %4940
  %5005 = select i1 %4986, float %4930, float %4945
  %5006 = select i1 %4986, float %4921, float %4936
  %5007 = select i1 %4986, float %4926, float %4941
  %5008 = select i1 %4986, float %4931, float %4946
  %5009 = select i1 %4986, float %4922, float %4937
  %5010 = select i1 %4986, float %4927, float %4942
  %5011 = select i1 %4986, float %4932, float %4947
  %5012 = fadd fast float %4997, %141
  %5013 = fadd fast float %4998, %142
  %5014 = fadd fast float %4999, %143
  %5015 = fmul fast float %5012, %5000
  %5016 = call float @dx.op.tertiary.f32(i32 46, float %5013, float %5003, float %5015)  ; FMad(a,b,c)
  %5017 = call float @dx.op.tertiary.f32(i32 46, float %5014, float %5006, float %5016)  ; FMad(a,b,c)
  %5018 = fadd fast float %5017, %5009
  %5019 = fmul fast float %5012, %5001
  %5020 = call float @dx.op.tertiary.f32(i32 46, float %5013, float %5004, float %5019)  ; FMad(a,b,c)
  %5021 = call float @dx.op.tertiary.f32(i32 46, float %5014, float %5007, float %5020)  ; FMad(a,b,c)
  %5022 = fadd fast float %5021, %5010
  %5023 = fmul fast float %5012, %5002
  %5024 = call float @dx.op.tertiary.f32(i32 46, float %5013, float %5005, float %5023)  ; FMad(a,b,c)
  %5025 = call float @dx.op.tertiary.f32(i32 46, float %5014, float %5008, float %5024)  ; FMad(a,b,c)
  %5026 = fadd fast float %5025, %5011
  %5027 = fdiv fast float 1.000000e+00, %5026
  %5028 = fmul fast float %5027, %5018
  %5029 = fmul fast float %5027, %5022
  %5030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5031 = extractvalue %dx.types.CBufRet.f32 %5030, 0
  %5032 = extractvalue %dx.types.CBufRet.f32 %5030, 1
  %5033 = fmul fast float %5028, %5031
  %5034 = fmul fast float %5029, %5032
  %5035 = extractvalue %dx.types.CBufRet.f32 %5030, 2
  %5036 = extractvalue %dx.types.CBufRet.f32 %5030, 3
  %5037 = fadd fast float %5033, %5035
  %5038 = fadd fast float %5034, %5036
  %5039 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5040 = extractvalue %dx.types.CBufRet.f32 %5039, 3
  %5041 = fmul fast float %5040, %4726
  %5042 = fmul fast float %5040, %4727
  %5043 = fmul fast float %5040, %4728
  %5044 = fadd fast float %5041, %5012
  %5045 = fadd fast float %5042, %5013
  %5046 = fadd fast float %5043, %5014
  %5047 = fmul fast float %5044, %5000
  %5048 = call float @dx.op.tertiary.f32(i32 46, float %5045, float %5003, float %5047)  ; FMad(a,b,c)
  %5049 = call float @dx.op.tertiary.f32(i32 46, float %5046, float %5006, float %5048)  ; FMad(a,b,c)
  %5050 = fadd fast float %5049, %5009
  %5051 = fmul fast float %5044, %5001
  %5052 = call float @dx.op.tertiary.f32(i32 46, float %5045, float %5004, float %5051)  ; FMad(a,b,c)
  %5053 = call float @dx.op.tertiary.f32(i32 46, float %5046, float %5007, float %5052)  ; FMad(a,b,c)
  %5054 = fadd fast float %5053, %5010
  %5055 = fmul fast float %5044, %5002
  %5056 = call float @dx.op.tertiary.f32(i32 46, float %5045, float %5005, float %5055)  ; FMad(a,b,c)
  %5057 = call float @dx.op.tertiary.f32(i32 46, float %5046, float %5008, float %5056)  ; FMad(a,b,c)
  %5058 = fadd fast float %5057, %5011
  %5059 = fdiv fast float 1.000000e+00, %5058
  %5060 = fmul fast float %5059, %5050
  %5061 = fmul fast float %5059, %5054
  %5062 = fmul fast float %5037, 2.000000e+00
  %5063 = fadd fast float %5062, -1.000000e+00
  %5064 = call float @dx.op.unary.f32(i32 6, float %5063)  ; FAbs(value)
  %5065 = fmul fast float %5064, 5.000000e+00
  %5066 = fadd fast float %5065, -4.000000e+00
  %5067 = call float @dx.op.unary.f32(i32 7, float %5066)  ; Saturate(value)
  %5068 = fmul fast float %5067, %4953
  %5069 = fsub fast float %5028, %5060
  %5070 = fmul fast float %5031, %5069
  %5071 = fmul fast float %5068, %5070
  %5072 = fsub fast float %5060, %5028
  %5073 = fmul fast float %5031, %5072
  %5074 = fadd fast float %5073, %5071
  %5075 = fsub fast float %5061, %5029
  %5076 = fmul fast float %5032, %5075
  %5077 = fmul fast float %5074, %4988
  %5078 = fmul fast float %5076, %4988
  %5079 = fadd fast float %5077, %5037
  %5080 = fadd fast float %5078, %5038
  %5081 = fsub fast float %5059, %5027
  %5082 = fmul fast float %5081, %4988
  %5083 = fadd fast float %5082, %5027
  %5084 = fdiv fast float 1.000000e+00, %5083
  %5085 = fadd fast float %4701, -1.000000e+00
  %5086 = fsub fast float %5084, %5026
  %5087 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5088 = extractvalue %dx.types.CBufRet.f32 %5087, 2
  %5089 = fmul fast float %5088, %5084
  %5090 = fdiv fast float 1.600000e+02, %5089
  %5091 = fmul fast float %5085, %5085
  %5092 = fmul fast float %5091, 0xBFB5B17960000000
  %5093 = fmul fast float %5092, %5086
  %5094 = fmul fast float %5093, %5090
  %5095 = call float @dx.op.unary.f32(i32 21, float %5094)  ; Exp(value)
  %5096 = fmul fast float %5095, 0x3FF04B2960000000
  %5097 = fsub fast float 0x3FF04B2960000000, %5096
  %5098 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5099 = fmul fast float %5098, 4.000000e+00
  %5100 = fadd fast float %196, -5.000000e-01
  %5101 = fadd fast float %197, -5.000000e-01
  %5102 = fmul fast float %5098, 0x3FBEB851E0000000
  %5103 = call float @dx.op.unary.f32(i32 7, float %5102)  ; Saturate(value)
  %5104 = fmul fast float %5103, %5100
  %5105 = fmul fast float %5103, %5101
  %5106 = fadd fast float %5079, %5104
  %5107 = fadd fast float %5080, %5105
  %5108 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5106, float %5107, float undef, float undef, i32 0, i32 0, i32 undef, float %5099)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5109 = extractvalue %dx.types.ResRet.f32 %5108, 0
  %5110 = extractvalue %dx.types.ResRet.f32 %5108, 1
  %5111 = extractvalue %dx.types.ResRet.f32 %5108, 2
  %5112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5113 = extractvalue %dx.types.CBufRet.f32 %5112, 2
  %5114 = fmul fast float %5113, %5109
  %5115 = fmul fast float %5113, %5110
  %5116 = fmul fast float %5113, %5111
  %5117 = select i1 %183, float 0.000000e+00, float %5115
  %5118 = select i1 %183, float 0.000000e+00, float %5116
  %5119 = fmul fast float %5106, 2.000000e+00
  %5120 = fmul fast float %5107, 2.000000e+00
  %5121 = fadd fast float %5119, -1.000000e+00
  %5122 = fadd fast float %5120, -1.000000e+00
  %5123 = fmul fast float %5121, %5121
  %5124 = fsub fast float 1.000000e+00, %5123
  %5125 = call float @dx.op.unary.f32(i32 7, float %5124)  ; Saturate(value)
  %5126 = fsub fast float 1.000000e+00, %5125
  %5127 = fmul fast float %5126, %4953
  %5128 = fadd fast float %5127, %5125
  %5129 = fmul fast float %5122, %5122
  %5130 = fsub fast float 1.000000e+00, %5129
  %5131 = call float @dx.op.unary.f32(i32 7, float %5130)  ; Saturate(value)
  %5132 = fmul fast float %5128, %5131
  %5133 = call float @dx.op.unary.f32(i32 7, float %5132)  ; Saturate(value)
  %5134 = fmul fast float %5133, %4990
  br label %5135

; <label>:5135                                    ; preds = %4992, %4958, %4917
  %5136 = phi float [ %5114, %4992 ], [ 0.000000e+00, %4958 ], [ 0.000000e+00, %4917 ]
  %5137 = phi float [ %5117, %4992 ], [ 0.000000e+00, %4958 ], [ 0.000000e+00, %4917 ]
  %5138 = phi float [ %5118, %4992 ], [ 0.000000e+00, %4958 ], [ 0.000000e+00, %4917 ]
  %5139 = phi float [ %5134, %4992 ], [ 0.000000e+00, %4958 ], [ 0.000000e+00, %4917 ]
  %5140 = fcmp fast olt float %5139, 1.000000e+00
  %5141 = or i1 %5140, %4915
  %5142 = zext i1 %5141 to i32
  %5143 = fmul fast float %5139, %4900
  %5144 = fsub fast float %5139, %5143
  %5145 = fsub fast float 1.000000e+00, %4906
  %5146 = fmul fast float %5144, %5145
  %5147 = fadd fast float %5146, %4906
  %5148 = fsub fast float %5147, %5144
  %5149 = call float @dx.op.unary.f32(i32 7, float %5148)  ; Saturate(value)
  %5150 = fmul fast float %5149, %4841
  %5151 = fmul fast float %5149, %4842
  %5152 = fmul fast float %5149, %4843
  %5153 = fsub fast float -0.000000e+00, %5147
  %5154 = fmul fast float %5144, %5136
  %5155 = fmul fast float %5144, %5137
  %5156 = fmul fast float %5144, %5138
  %5157 = fadd fast float %5154, %5150
  %5158 = fadd fast float %5155, %5151
  %5159 = fadd fast float %5156, %5152
  br label %5160

; <label>:5160                                    ; preds = %5135, %4908
  %5161 = phi float [ %4906, %4908 ], [ %5153, %5135 ]
  %5162 = phi float [ %4841, %4908 ], [ %5157, %5135 ]
  %5163 = phi float [ %4842, %4908 ], [ %5158, %5135 ]
  %5164 = phi float [ %4843, %4908 ], [ %5159, %5135 ]
  %5165 = phi i32 [ %4916, %4908 ], [ %5142, %5135 ]
  %5166 = icmp eq i32 %5165, 0
  br i1 %5166, label %5763, label %5167

; <label>:5167                                    ; preds = %5160
  %5168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5169 = extractvalue %dx.types.CBufRet.f32 %5168, 2
  %5170 = extractvalue %dx.types.CBufRet.f32 %5168, 3
  %5171 = fmul fast float %5169, %78
  %5172 = fmul fast float %5170, %79
  %5173 = fptoui float %5171 to i32
  %5174 = fptoui float %5172 to i32
  %5175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5176 = extractvalue %dx.types.CBufRet.f32 %5175, 0
  %5177 = extractvalue %dx.types.CBufRet.f32 %5175, 2
  %5178 = extractvalue %dx.types.CBufRet.f32 %5175, 3
  %5179 = fadd fast float %73, -4.000000e+00
  %5180 = call float @dx.op.binary.f32(i32 35, float %5179, float 0.000000e+00)  ; FMax(a,b)
  %5181 = fadd fast float %5180, %5176
  %5182 = fmul fast float %5181, %5177
  %5183 = call float @dx.op.unary.f32(i32 23, float %5182)  ; Log(value)
  %5184 = fmul fast float %5183, %5178
  %5185 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5186 = extractvalue %dx.types.CBufRet.f32 %5185, 2
  %5187 = fmul fast float %5184, %5186
  %5188 = call float @dx.op.unary.f32(i32 7, float %5187)  ; Saturate(value)
  %5189 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.i32 %5189, 1
  %5191 = add i32 %5190, -1
  %5192 = uitofp i32 %5190 to float
  %5193 = fmul fast float %5192, %5188
  %5194 = fptoui float %5193 to i32
  %5195 = call i32 @dx.op.binary.i32(i32 40, i32 %5194, i32 %5191)  ; UMin(a,b)
  %5196 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5197 = extractvalue %dx.types.CBufRet.i32 %5196, 2
  %5198 = extractvalue %dx.types.CBufRet.i32 %5196, 3
  %5199 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5174, i32 %5197, i32 %5173)  ; UMad(a,b,c)
  %5200 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5195, i32 %5198, i32 %5199)  ; UMad(a,b,c)
  %5201 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5202 = fptoui float %5201 to i32
  %5203 = lshr i32 %5202, 5
  %5204 = call i32 @dx.op.binary.i32(i32 40, i32 %5203, i32 8191)  ; UMin(a,b)
  %5205 = fcmp fast ogt float %4500, 0.000000e+00
  %5206 = fcmp fast ogt float %4728, 0.000000e+00
  %5207 = and i1 %5206, %5205
  br i1 %5207, label %5208, label %5237

; <label>:5208                                    ; preds = %5167
  %5209 = call float @dx.op.dot3.f32(i32 55, float %4726, float %4727, float %4728, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5210 = call float @dx.op.binary.f32(i32 35, float %5209, float -1.000000e+00)  ; FMax(a,b)
  %5211 = call float @dx.op.binary.f32(i32 36, float %5210, float 1.000000e+00)  ; FMin(a,b)
  %5212 = fmul fast float %5211, %5211
  %5213 = fsub fast float 1.000000e+00, %5212
  %5214 = fmul fast float %5213, 0x3FFC6E2300000000
  %5215 = fsub fast float 1.000000e+00, %5214
  %5216 = fcmp fast ogt float %5215, 0.000000e+00
  %5217 = call float @dx.op.unary.f32(i32 24, float %5215)  ; Sqrt(value)
  %5218 = fsub fast float 1.000000e+00, %5217
  %5219 = call float @dx.op.unary.f32(i32 23, float %5218)  ; Log(value)
  %5220 = fmul fast float %5219, 5.000000e+00
  %5221 = call float @dx.op.unary.f32(i32 21, float %5220)  ; Exp(value)
  %5222 = fmul fast float %5221, 0x3FEF591A60000000
  %5223 = fadd fast float %5222, 0x3F94DCB540000000
  %5224 = select i1 %5216, float %5223, float 1.000000e+00
  %5225 = fcmp fast oge float %5224, 1.000000e+00
  %5226 = fmul fast float %5209, 2.000000e+00
  %5227 = fadd fast float %5226, %4728
  %5228 = select i1 %5225, float %5227, float %4728
  %5229 = fsub fast float %5228, %4728
  %5230 = fmul fast float %5229, %4500
  %5231 = fadd fast float %5230, %4728
  %5232 = call float @dx.op.dot3.f32(i32 55, float %4726, float %4727, float %5231, float %4726, float %4727, float %5231)  ; Dot3(ax,ay,az,bx,by,bz)
  %5233 = call float @dx.op.unary.f32(i32 25, float %5232)  ; Rsqrt(value)
  %5234 = fmul fast float %5233, %4726
  %5235 = fmul fast float %5233, %4727
  %5236 = fmul fast float %5231, %5233
  br label %5237

; <label>:5237                                    ; preds = %5208, %5167
  %5238 = phi float [ %5234, %5208 ], [ %4726, %5167 ]
  %5239 = phi float [ %5235, %5208 ], [ %4727, %5167 ]
  %5240 = phi float [ %5236, %5208 ], [ %4728, %5167 ]
  %5241 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5242 = extractvalue %dx.types.CBufRet.i32 %5241, 2
  %5243 = add nsw i32 %5242, -1
  %5244 = call i32 @dx.op.binary.i32(i32 37, i32 %5243, i32 0)  ; IMax(a,b)
  %5245 = shl i32 %5204, 2
  %5246 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5245, i32 undef)  ; BufferLoad(srv,index,wot)
  %5247 = extractvalue %dx.types.ResRet.i32 %5246, 0
  %5248 = lshr i32 %5247, 16
  %5249 = and i32 %5247, 65535
  %5250 = lshr i32 %5247, 21
  %5251 = lshr i32 %5249, 5
  %5252 = call i32 @dx.op.binary.i32(i32 40, i32 %5251, i32 %5244)  ; UMin(a,b)
  %5253 = icmp ugt i32 %5250, %5252
  br i1 %5253, label %5635, label %5254

; <label>:5254                                    ; preds = %5237
  br label %5255

; <label>:5255                                    ; preds = %5624, %5254
  %5256 = phi float [ %5625, %5624 ], [ 0.000000e+00, %5254 ]
  %5257 = phi float [ %5626, %5624 ], [ 0.000000e+00, %5254 ]
  %5258 = phi float [ %5627, %5624 ], [ 0.000000e+00, %5254 ]
  %5259 = phi float [ %5628, %5624 ], [ 1.000000e+00, %5254 ]
  %5260 = phi i32 [ %5632, %5624 ], [ %5250, %5254 ]
  %5261 = phi float [ %5629, %5624 ], [ 0.000000e+00, %5254 ]
  %5262 = phi float [ %5630, %5624 ], [ 0.000000e+00, %5254 ]
  %5263 = phi float [ %5631, %5624 ], [ 0.000000e+00, %5254 ]
  %5264 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.i32 %5264, 2
  %5266 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5200, i32 %5265, i32 %5260)  ; UMad(a,b,c)
  %5267 = shl i32 %5266, 2
  %5268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5267, i32 undef)  ; BufferLoad(srv,index,wot)
  %5269 = extractvalue %dx.types.ResRet.i32 %5268, 0
  %5270 = shl i32 %5260, 5
  %5271 = sub nsw i32 %5248, %5270
  %5272 = call i32 @dx.op.binary.i32(i32 37, i32 %5271, i32 0)  ; IMax(a,b)
  %5273 = call i32 @dx.op.binary.i32(i32 38, i32 %5272, i32 31)  ; IMin(a,b)
  %5274 = sub nsw i32 1, %5248
  %5275 = add nsw i32 %5274, %5249
  %5276 = call i32 @dx.op.binary.i32(i32 37, i32 %5275, i32 0)  ; IMax(a,b)
  %5277 = call i32 @dx.op.binary.i32(i32 38, i32 %5276, i32 32)  ; IMin(a,b)
  %5278 = and i32 %5277, 31
  %5279 = shl i32 -1, %5278
  %5280 = xor i32 %5279, -1
  %5281 = and i32 %5273, 31
  %5282 = shl i32 %5280, %5281
  %5283 = icmp eq i32 %5277, 32
  %5284 = select i1 %5283, i32 -1, i32 %5282
  %5285 = and i32 %5284, %5269
  %5286 = icmp eq i32 %5285, 0
  br i1 %5286, label %5624, label %5287

; <label>:5287                                    ; preds = %5255
  br label %5288

; <label>:5288                                    ; preds = %5398, %5287
  %5289 = phi float [ %5399, %5398 ], [ %5256, %5287 ]
  %5290 = phi float [ %5400, %5398 ], [ %5257, %5287 ]
  %5291 = phi float [ %5401, %5398 ], [ %5258, %5287 ]
  %5292 = phi float [ %5402, %5398 ], [ %5259, %5287 ]
  %5293 = phi i32 [ %5301, %5398 ], [ %5285, %5287 ]
  %5294 = phi float [ %5403, %5398 ], [ %5261, %5287 ]
  %5295 = phi float [ %5404, %5398 ], [ %5262, %5287 ]
  %5296 = phi float [ %5405, %5398 ], [ %5263, %5287 ]
  %5297 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5293)  ; FirstbitLo(value)
  %5298 = add i32 %5297, %5270
  %5299 = and i32 %5297, 31
  %5300 = shl i32 1, %5299
  %5301 = xor i32 %5300, %5293
  %5302 = mul i32 %5298, 72
  %5303 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5302, i32 undef)  ; BufferLoad(srv,index,wot)
  %5304 = extractvalue %dx.types.ResRet.f32 %5303, 0
  %5305 = extractvalue %dx.types.ResRet.f32 %5303, 1
  %5306 = extractvalue %dx.types.ResRet.f32 %5303, 2
  %5307 = add i32 %5302, 12
  %5308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5307, i32 undef)  ; BufferLoad(srv,index,wot)
  %5309 = extractvalue %dx.types.ResRet.i32 %5308, 0
  %5310 = add i32 %5302, 16
  %5311 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5310, i32 undef)  ; BufferLoad(srv,index,wot)
  %5312 = extractvalue %dx.types.ResRet.f32 %5311, 0
  %5313 = extractvalue %dx.types.ResRet.f32 %5311, 1
  %5314 = extractvalue %dx.types.ResRet.f32 %5311, 2
  %5315 = add i32 %5302, 28
  %5316 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5315, i32 undef)  ; BufferLoad(srv,index,wot)
  %5317 = extractvalue %dx.types.ResRet.f32 %5316, 0
  %5318 = add i32 %5302, 32
  %5319 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5318, i32 undef)  ; BufferLoad(srv,index,wot)
  %5320 = extractvalue %dx.types.ResRet.f32 %5319, 0
  %5321 = extractvalue %dx.types.ResRet.f32 %5319, 1
  %5322 = extractvalue %dx.types.ResRet.f32 %5319, 2
  %5323 = extractvalue %dx.types.ResRet.f32 %5319, 3
  %5324 = add i32 %5302, 48
  %5325 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5324, i32 undef)  ; BufferLoad(srv,index,wot)
  %5326 = extractvalue %dx.types.ResRet.f32 %5325, 0
  %5327 = extractvalue %dx.types.ResRet.f32 %5325, 1
  %5328 = add i32 %5302, 56
  %5329 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5328, i32 undef)  ; BufferLoad(srv,index,wot)
  %5330 = extractvalue %dx.types.ResRet.f32 %5329, 0
  %5331 = extractvalue %dx.types.ResRet.f32 %5329, 1
  %5332 = add i32 %5302, 64
  %5333 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5332, i32 undef)  ; BufferLoad(srv,index,wot)
  %5334 = extractvalue %dx.types.ResRet.f32 %5333, 0
  %5335 = extractvalue %dx.types.ResRet.f32 %5333, 1
  %5336 = mul i32 %5298, 60
  %5337 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5336, i32 undef)  ; BufferLoad(srv,index,wot)
  %5338 = extractvalue %dx.types.ResRet.f32 %5337, 0
  %5339 = extractvalue %dx.types.ResRet.f32 %5337, 1
  %5340 = extractvalue %dx.types.ResRet.f32 %5337, 2
  %5341 = add i32 %5336, 12
  %5342 = add i32 %5336, 48
  %5343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5342, i32 undef)  ; BufferLoad(srv,index,wot)
  %5344 = extractvalue %dx.types.ResRet.f32 %5343, 0
  %5345 = extractvalue %dx.types.ResRet.f32 %5343, 1
  %5346 = extractvalue %dx.types.ResRet.f32 %5343, 2
  %5347 = and i32 %5309, 32767
  %5348 = bitcast float %5304 to i32
  %5349 = icmp eq i32 %5348, -1
  %5350 = bitcast float %5305 to i32
  %5351 = and i32 %5309, 32768
  %5352 = icmp ne i32 %5351, 0
  %5353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5354 = extractvalue %dx.types.CBufRet.f32 %5353, 0
  %5355 = extractvalue %dx.types.CBufRet.f32 %5353, 1
  %5356 = extractvalue %dx.types.CBufRet.f32 %5353, 2
  %5357 = fsub fast float %5338, %5354
  %5358 = fsub fast float %5339, %5355
  %5359 = fsub fast float %5340, %5356
  %5360 = fsub fast float %141, %5357
  %5361 = fsub fast float %142, %5358
  %5362 = fsub fast float %143, %5359
  %5363 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5341, i32 undef)  ; BufferLoad(srv,index,wot)
  %5364 = extractvalue %dx.types.ResRet.f32 %5363, 0
  %5365 = extractvalue %dx.types.ResRet.f32 %5363, 1
  %5366 = extractvalue %dx.types.ResRet.f32 %5363, 2
  %5367 = call float @dx.op.dot3.f32(i32 55, float %5360, float %5361, float %5362, float %5364, float %5365, float %5366)  ; Dot3(ax,ay,az,bx,by,bz)
  %5368 = add i32 %5336, 24
  %5369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5368, i32 undef)  ; BufferLoad(srv,index,wot)
  %5370 = extractvalue %dx.types.ResRet.f32 %5369, 0
  %5371 = extractvalue %dx.types.ResRet.f32 %5369, 1
  %5372 = extractvalue %dx.types.ResRet.f32 %5369, 2
  %5373 = call float @dx.op.dot3.f32(i32 55, float %5360, float %5361, float %5362, float %5370, float %5371, float %5372)  ; Dot3(ax,ay,az,bx,by,bz)
  %5374 = add i32 %5336, 36
  %5375 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5374, i32 undef)  ; BufferLoad(srv,index,wot)
  %5376 = extractvalue %dx.types.ResRet.f32 %5375, 0
  %5377 = extractvalue %dx.types.ResRet.f32 %5375, 1
  %5378 = extractvalue %dx.types.ResRet.f32 %5375, 2
  %5379 = call float @dx.op.dot3.f32(i32 55, float %5360, float %5361, float %5362, float %5376, float %5377, float %5378)  ; Dot3(ax,ay,az,bx,by,bz)
  %5380 = call float @dx.op.unary.f32(i32 6, float %5367)  ; FAbs(value)
  %5381 = call float @dx.op.unary.f32(i32 6, float %5373)  ; FAbs(value)
  %5382 = call float @dx.op.unary.f32(i32 6, float %5379)  ; FAbs(value)
  %5383 = fsub fast float %5344, %5380
  %5384 = fsub fast float %5345, %5381
  %5385 = fsub fast float %5346, %5382
  %5386 = fmul fast float %5383, %5312
  %5387 = fmul fast float %5384, %5313
  %5388 = fmul fast float %5385, %5314
  %5389 = call float @dx.op.binary.f32(i32 36, float %5387, float %5388)  ; FMin(a,b)
  %5390 = call float @dx.op.binary.f32(i32 36, float %5386, float %5389)  ; FMin(a,b)
  %5391 = call float @dx.op.unary.f32(i32 7, float %5390)  ; Saturate(value)
  %5392 = call float @dx.op.binary.f32(i32 36, float %5292, float %5391)  ; FMin(a,b)
  %5393 = uitofp i1 %5352 to float
  %5394 = fadd fast float %4500, 1.000000e+00
  %5395 = fsub fast float %5394, %5393
  %5396 = fmul fast float %5392, %5395
  %5397 = fcmp fast ogt float %5396, 0.000000e+00
  br i1 %5397, label %5407, label %5398

; <label>:5398                                    ; preds = %5549, %5288
  %5399 = phi float [ %5613, %5549 ], [ %5289, %5288 ]
  %5400 = phi float [ %5614, %5549 ], [ %5290, %5288 ]
  %5401 = phi float [ %5615, %5549 ], [ %5291, %5288 ]
  %5402 = phi float [ %5622, %5549 ], [ %5292, %5288 ]
  %5403 = phi float [ %5619, %5549 ], [ %5294, %5288 ]
  %5404 = phi float [ %5620, %5549 ], [ %5295, %5288 ]
  %5405 = phi float [ %5621, %5549 ], [ %5296, %5288 ]
  %5406 = icmp eq i32 %5293, %5300
  br i1 %5406, label %5623, label %5288

; <label>:5407                                    ; preds = %5288
  br i1 %5349, label %5465, label %5408

; <label>:5408                                    ; preds = %5407
  %5409 = fsub fast float -0.000000e+00, %5364
  %5410 = fsub fast float -0.000000e+00, %5365
  %5411 = fsub fast float -0.000000e+00, %5366
  %5412 = call float @dx.op.dot3.f32(i32 55, float %5238, float %5239, float %5240, float %5409, float %5410, float %5411)  ; Dot3(ax,ay,az,bx,by,bz)
  %5413 = fsub fast float -0.000000e+00, %5412
  %5414 = call float @dx.op.dot3.f32(i32 55, float %5360, float %5361, float %5362, float %5409, float %5410, float %5411)  ; Dot3(ax,ay,az,bx,by,bz)
  %5415 = fadd fast float %5414, %5327
  %5416 = fadd fast float %5326, %5414
  %5417 = fsub fast float -0.000000e+00, %5416
  %5418 = fcmp ogt float %5412, -0.000000e+00
  %5419 = select i1 %5418, float %5417, float %5415
  %5420 = call float @dx.op.unary.f32(i32 6, float %5413)  ; FAbs(value)
  %5421 = fdiv fast float 1.000000e+00, %5420
  %5422 = fmul fast float %5419, %5421
  %5423 = call float @dx.op.binary.f32(i32 35, float %5422, float 0.000000e+00)  ; FMax(a,b)
  %5424 = fsub fast float -0.000000e+00, %5370
  %5425 = fsub fast float -0.000000e+00, %5371
  %5426 = fsub fast float -0.000000e+00, %5372
  %5427 = call float @dx.op.dot3.f32(i32 55, float %5238, float %5239, float %5240, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5428 = fsub fast float -0.000000e+00, %5427
  %5429 = call float @dx.op.dot3.f32(i32 55, float %5360, float %5361, float %5362, float %5424, float %5425, float %5426)  ; Dot3(ax,ay,az,bx,by,bz)
  %5430 = fadd fast float %5429, %5331
  %5431 = fadd fast float %5330, %5429
  %5432 = fsub fast float -0.000000e+00, %5431
  %5433 = fcmp ogt float %5427, -0.000000e+00
  %5434 = select i1 %5433, float %5432, float %5430
  %5435 = call float @dx.op.unary.f32(i32 6, float %5428)  ; FAbs(value)
  %5436 = fdiv fast float 1.000000e+00, %5435
  %5437 = fmul fast float %5434, %5436
  %5438 = call float @dx.op.binary.f32(i32 35, float %5437, float 0.000000e+00)  ; FMax(a,b)
  %5439 = fsub fast float -0.000000e+00, %5376
  %5440 = fsub fast float -0.000000e+00, %5377
  %5441 = fsub fast float -0.000000e+00, %5378
  %5442 = call float @dx.op.dot3.f32(i32 55, float %5238, float %5239, float %5240, float %5439, float %5440, float %5441)  ; Dot3(ax,ay,az,bx,by,bz)
  %5443 = fsub fast float -0.000000e+00, %5442
  %5444 = call float @dx.op.dot3.f32(i32 55, float %5360, float %5361, float %5362, float %5439, float %5440, float %5441)  ; Dot3(ax,ay,az,bx,by,bz)
  %5445 = fadd fast float %5444, %5335
  %5446 = fadd fast float %5334, %5444
  %5447 = fsub fast float -0.000000e+00, %5446
  %5448 = fcmp ogt float %5442, -0.000000e+00
  %5449 = select i1 %5448, float %5447, float %5445
  %5450 = call float @dx.op.unary.f32(i32 6, float %5443)  ; FAbs(value)
  %5451 = fdiv fast float 1.000000e+00, %5450
  %5452 = fmul fast float %5449, %5451
  %5453 = call float @dx.op.binary.f32(i32 35, float %5452, float 0.000000e+00)  ; FMax(a,b)
  %5454 = call float @dx.op.binary.f32(i32 36, float %5438, float %5453)  ; FMin(a,b)
  %5455 = call float @dx.op.binary.f32(i32 36, float %5423, float %5454)  ; FMin(a,b)
  %5456 = fmul fast float %5455, %5238
  %5457 = fmul fast float %5455, %5239
  %5458 = fmul fast float %5455, %5240
  %5459 = fadd fast float %5456, %141
  %5460 = fadd fast float %5457, %142
  %5461 = fadd fast float %5458, %143
  %5462 = fsub fast float %5459, %5304
  %5463 = fsub fast float %5460, %5305
  %5464 = fsub fast float %5461, %5306
  br label %5472

; <label>:5465                                    ; preds = %5407
  %5466 = fmul fast float %5238, 8.096000e+03
  %5467 = fmul fast float %5239, 8.096000e+03
  %5468 = fmul fast float %5240, 8.096000e+03
  %5469 = fadd fast float %5466, %141
  %5470 = fadd fast float %5467, %142
  %5471 = fadd fast float %5468, %143
  br label %5472

; <label>:5472                                    ; preds = %5465, %5408
  %5473 = phi float [ %5238, %5465 ], [ %5462, %5408 ]
  %5474 = phi float [ %5239, %5465 ], [ %5463, %5408 ]
  %5475 = phi float [ %5240, %5465 ], [ %5464, %5408 ]
  %5476 = phi float [ %5469, %5465 ], [ %5459, %5408 ]
  %5477 = phi float [ %5470, %5465 ], [ %5460, %5408 ]
  %5478 = phi float [ %5471, %5465 ], [ %5461, %5408 ]
  %5479 = fcmp fast olt float %5323, 1.000000e+00
  br i1 %5479, label %5480, label %5511, !dx.controlflow.hints !84

; <label>:5480                                    ; preds = %5472
  %5481 = fmul fast float %5475, %5321
  %5482 = fmul fast float %5474, %5322
  %5483 = fsub fast float %5481, %5482
  %5484 = fmul fast float %5473, %5322
  %5485 = fmul fast float %5475, %5320
  %5486 = fsub fast float %5484, %5485
  %5487 = fmul fast float %5474, %5320
  %5488 = fmul fast float %5473, %5321
  %5489 = fsub fast float %5487, %5488
  %5490 = fmul fast float %5483, 2.000000e+00
  %5491 = fmul fast float %5486, 2.000000e+00
  %5492 = fmul fast float %5489, 2.000000e+00
  %5493 = fmul fast float %5490, %5323
  %5494 = fmul fast float %5491, %5323
  %5495 = fmul fast float %5492, %5323
  %5496 = fmul fast float %5492, %5321
  %5497 = fmul fast float %5491, %5322
  %5498 = fmul fast float %5490, %5322
  %5499 = fmul fast float %5492, %5320
  %5500 = fmul fast float %5491, %5320
  %5501 = fmul fast float %5490, %5321
  %5502 = fadd fast float %5496, %5473
  %5503 = fadd fast float %5502, %5493
  %5504 = fsub fast float %5503, %5497
  %5505 = fsub fast float %5474, %5499
  %5506 = fadd fast float %5505, %5494
  %5507 = fadd fast float %5506, %5498
  %5508 = fadd fast float %5495, %5475
  %5509 = fsub fast float %5508, %5501
  %5510 = fadd fast float %5509, %5500
  br label %5511

; <label>:5511                                    ; preds = %5480, %5472
  %5512 = phi float [ %5504, %5480 ], [ %5473, %5472 ]
  %5513 = phi float [ %5507, %5480 ], [ %5474, %5472 ]
  %5514 = phi float [ %5510, %5480 ], [ %5475, %5472 ]
  br i1 %5349, label %5546, label %5515

; <label>:5515                                    ; preds = %5511
  %5516 = fmul fast float %4701, 0x400187C840000000
  %5517 = fadd fast float %5516, 0xC00EFC2120000000
  %5518 = fmul fast float %5517, %4701
  %5519 = fadd fast float %5518, 0x3FE5D16340000000
  %5520 = fmul fast float %5519, %4701
  %5521 = fadd fast float %5520, 1.000000e+00
  %5522 = call float @dx.op.unary.f32(i32 7, float %5521)  ; Saturate(value)
  %5523 = fsub fast float %5476, %141
  %5524 = fsub fast float %5477, %142
  %5525 = fsub fast float %5478, %143
  %5526 = fsub fast float %5476, %5304
  %5527 = fsub fast float %5477, %5305
  %5528 = fsub fast float %5478, %5306
  %5529 = call float @dx.op.dot3.f32(i32 55, float %5523, float %5524, float %5525, float %5523, float %5524, float %5525)  ; Dot3(ax,ay,az,bx,by,bz)
  %5530 = call float @dx.op.dot3.f32(i32 55, float %5526, float %5527, float %5528, float %5526, float %5527, float %5528)  ; Dot3(ax,ay,az,bx,by,bz)
  %5531 = fadd fast float %5530, 0x3EE4F8B580000000
  %5532 = fdiv fast float %5529, %5531
  %5533 = bitcast float %5532 to i32
  %5534 = ashr i32 %5533, 1
  %5535 = add nsw i32 %5534, 532487669
  %5536 = bitcast i32 %5535 to float
  %5537 = fmul fast float %5536, %5522
  %5538 = call float @dx.op.unary.f32(i32 7, float %5537)  ; Saturate(value)
  %5539 = fmul fast float %5538, 0x4009981AE0000000
  %5540 = fsub fast float 0x40111BBD80000000, %5539
  %5541 = fmul fast float %5540, %5538
  %5542 = fadd fast float %5541, 0xC0009F6020000000
  %5543 = fmul fast float %5542, %5538
  %5544 = fadd fast float %5543, 1.000000e+00
  %5545 = call float @dx.op.unary.f32(i32 7, float %5544)  ; Saturate(value)
  br label %5549

; <label>:5546                                    ; preds = %5511
  %5547 = icmp ne i32 %5350, -1
  %5548 = zext i1 %5547 to i32
  br label %5549

; <label>:5549                                    ; preds = %5546, %5515
  %5550 = phi float [ %4701, %5546 ], [ %5545, %5515 ]
  %5551 = phi i32 [ %5548, %5546 ], [ 0, %5515 ]
  %5552 = fmul float %5550, 5.000000e+00
  %5553 = fsub float 5.000000e+00, %5552
  %5554 = icmp ne i32 %5551, 0
  %5555 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5556 = extractvalue %dx.types.CBufRet.f32 %5555, 3
  %5557 = fadd fast float %5556, %5553
  %5558 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5557)  ; FMax(a,b)
  %5559 = call float @dx.op.unary.f32(i32 6, float %5512)  ; FAbs(value)
  %5560 = call float @dx.op.unary.f32(i32 6, float %5513)  ; FAbs(value)
  %5561 = fadd fast float %5560, %5559
  %5562 = call float @dx.op.unary.f32(i32 6, float %5514)  ; FAbs(value)
  %5563 = fadd fast float %5561, %5562
  %5564 = fcmp fast oeq float %5563, 0.000000e+00
  %5565 = fdiv fast float 1.000000e+00, %5563
  %5566 = select i1 %5564, float 1.000000e+00, float %5565
  %5567 = fmul fast float %5566, %5512
  %5568 = fmul fast float %5566, %5513
  %5569 = call float @dx.op.unary.f32(i32 6, float %5568)  ; FAbs(value)
  %5570 = call float @dx.op.unary.f32(i32 6, float %5567)  ; FAbs(value)
  %5571 = fsub fast float 1.000000e+00, %5569
  %5572 = fsub fast float 1.000000e+00, %5570
  %5573 = fcmp fast oge float %5567, 0.000000e+00
  %5574 = fcmp fast oge float %5568, 0.000000e+00
  %5575 = select i1 %5573, float 1.000000e+00, float -1.000000e+00
  %5576 = select i1 %5574, float 1.000000e+00, float -1.000000e+00
  %5577 = fcmp fast ole float %5514, 0.000000e+00
  %5578 = fmul fast float %5575, %5571
  %5579 = fmul fast float %5576, %5572
  %5580 = select i1 %5577, float %5578, float %5567
  %5581 = select i1 %5577, float %5579, float %5568
  %5582 = fmul fast float %5580, 5.000000e-01
  %5583 = fmul fast float %5581, 5.000000e-01
  %5584 = fadd fast float %5582, 5.000000e-01
  %5585 = fadd fast float %5583, 5.000000e-01
  %5586 = uitofp i32 %5347 to float
  %5587 = call float @dx.op.binary.f32(i32 36, float %5558, float 3.000000e+00)  ; FMin(a,b)
  %5588 = fadd fast float %5587, 2.000000e+00
  %5589 = call float @dx.op.unary.f32(i32 21, float %5588)  ; Exp(value)
  %5590 = extractvalue %dx.types.CBufRet.f32 %5555, 1
  %5591 = fmul fast float %5590, %5589
  %5592 = fmul fast float %5591, 2.000000e+00
  %5593 = fsub fast float 1.000000e+00, %5592
  %5594 = fmul fast float %5584, %5593
  %5595 = fmul fast float %5585, %5593
  %5596 = fadd fast float %5594, %5591
  %5597 = fadd fast float %5595, %5591
  %5598 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5596, float %5597, float %5586, float undef, i32 0, i32 0, i32 undef, float %5558)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5599 = extractvalue %dx.types.ResRet.f32 %5598, 0
  %5600 = extractvalue %dx.types.ResRet.f32 %5598, 1
  %5601 = extractvalue %dx.types.ResRet.f32 %5598, 2
  %5602 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5603 = extractvalue %dx.types.CBufRet.f32 %5602, 3
  %5604 = fmul fast float %5603, %5317
  %5605 = call float @dx.op.binary.f32(i32 36, float %4782, float %5604)  ; FMin(a,b)
  %5606 = select i1 %5554, float %5605, float %5604
  %5607 = fmul fast float %5599, %5396
  %5608 = fmul fast float %5607, %5606
  %5609 = fmul fast float %5600, %5396
  %5610 = fmul fast float %5609, %5606
  %5611 = fmul fast float %5601, %5396
  %5612 = fmul fast float %5611, %5606
  %5613 = fadd fast float %5608, %5289
  %5614 = fadd fast float %5610, %5290
  %5615 = fadd fast float %5612, %5291
  %5616 = fmul fast float %5476, %5396
  %5617 = fmul fast float %5477, %5396
  %5618 = fmul fast float %5478, %5396
  %5619 = fadd fast float %5616, %5294
  %5620 = fadd fast float %5617, %5295
  %5621 = fadd fast float %5618, %5296
  %5622 = fsub fast float %5292, %5396
  br label %5398

; <label>:5623                                    ; preds = %5398
  br label %5624

; <label>:5624                                    ; preds = %5623, %5255
  %5625 = phi float [ %5256, %5255 ], [ %5399, %5623 ]
  %5626 = phi float [ %5257, %5255 ], [ %5400, %5623 ]
  %5627 = phi float [ %5258, %5255 ], [ %5401, %5623 ]
  %5628 = phi float [ %5259, %5255 ], [ %5402, %5623 ]
  %5629 = phi float [ %5261, %5255 ], [ %5403, %5623 ]
  %5630 = phi float [ %5262, %5255 ], [ %5404, %5623 ]
  %5631 = phi float [ %5263, %5255 ], [ %5405, %5623 ]
  %5632 = add i32 %5260, 1
  %5633 = icmp ugt i32 %5632, %5252
  br i1 %5633, label %5634, label %5255, !llvm.loop !85

; <label>:5634                                    ; preds = %5624
  br label %5635

; <label>:5635                                    ; preds = %5634, %5237
  %5636 = phi float [ 0.000000e+00, %5237 ], [ %5625, %5634 ]
  %5637 = phi float [ 0.000000e+00, %5237 ], [ %5626, %5634 ]
  %5638 = phi float [ 0.000000e+00, %5237 ], [ %5627, %5634 ]
  %5639 = phi float [ 0.000000e+00, %5237 ], [ %5629, %5634 ]
  %5640 = phi float [ 0.000000e+00, %5237 ], [ %5630, %5634 ]
  %5641 = phi float [ 0.000000e+00, %5237 ], [ %5631, %5634 ]
  %5642 = call float @dx.op.dot3.f32(i32 55, float %5636, float %5637, float %5638, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5643 = select i1 %183, float 0.000000e+00, float %5636
  %5644 = select i1 %183, float %5642, float %5637
  %5645 = select i1 %183, float 0.000000e+00, float %5638
  %5646 = fcmp fast olt float %5161, 0.000000e+00
  %5647 = call float @dx.op.unary.f32(i32 6, float %5161)  ; FAbs(value)
  %5648 = fmul fast float %5647, %5162
  %5649 = fmul fast float %5647, %5163
  %5650 = fmul fast float %5647, %5164
  %5651 = select i1 %5646, float %5162, float %5648
  %5652 = select i1 %5646, float %5163, float %5649
  %5653 = select i1 %5646, float %5164, float %5650
  %5654 = fsub fast float 1.000000e+00, %5647
  %5655 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5656 = fmul fast float %5655, %5643
  %5657 = fmul fast float %5655, %5644
  %5658 = fmul fast float %5655, %5645
  %5659 = fadd fast float %5651, %5656
  %5660 = fadd fast float %5652, %5657
  %5661 = fadd fast float %5653, %5658
  %5662 = fcmp fast une float %4911, 0.000000e+00
  br i1 %5662, label %5763, label %5663

; <label>:5663                                    ; preds = %5635
  %5664 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5665 = extractvalue %dx.types.CBufRet.f32 %5664, 0
  %5666 = extractvalue %dx.types.CBufRet.f32 %5664, 1
  %5667 = extractvalue %dx.types.CBufRet.f32 %5664, 2
  %5668 = extractvalue %dx.types.CBufRet.f32 %5664, 3
  %5669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5670 = extractvalue %dx.types.CBufRet.f32 %5669, 0
  %5671 = extractvalue %dx.types.CBufRet.f32 %5669, 1
  %5672 = extractvalue %dx.types.CBufRet.f32 %5669, 2
  %5673 = extractvalue %dx.types.CBufRet.f32 %5669, 3
  %5674 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5675 = extractvalue %dx.types.CBufRet.f32 %5674, 0
  %5676 = extractvalue %dx.types.CBufRet.f32 %5674, 1
  %5677 = extractvalue %dx.types.CBufRet.f32 %5674, 2
  %5678 = extractvalue %dx.types.CBufRet.f32 %5674, 3
  %5679 = call float @dx.op.dot3.f32(i32 55, float %5675, float %5676, float %5677, float %4726, float %4727, float %4728)  ; Dot3(ax,ay,az,bx,by,bz)
  %5680 = call float @dx.op.dot3.f32(i32 55, float %5639, float %5640, float %5641, float %5675, float %5676, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5681 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %5675, float %5676, float %5677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5682 = fadd fast float %4701, -1.000000e+00
  %5683 = fsub fast float %5680, %5681
  %5684 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5685 = extractvalue %dx.types.CBufRet.f32 %5684, 2
  %5686 = fmul fast float %5685, %5680
  %5687 = fdiv fast float 1.600000e+02, %5686
  %5688 = fmul fast float %5682, %5682
  %5689 = fmul fast float %5688, 0xBFB5B17960000000
  %5690 = fmul fast float %5689, %5683
  %5691 = fmul fast float %5690, %5687
  %5692 = call float @dx.op.unary.f32(i32 21, float %5691)  ; Exp(value)
  %5693 = fmul fast float %5692, 0x3FF04B2960000000
  %5694 = fsub fast float 0x3FF04B2960000000, %5693
  %5695 = call float @dx.op.unary.f32(i32 7, float %5694)  ; Saturate(value)
  %5696 = fmul fast float %5695, 4.000000e+00
  %5697 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5698 = extractvalue %dx.types.CBufRet.f32 %5697, 0
  %5699 = extractvalue %dx.types.CBufRet.f32 %5697, 1
  %5700 = extractvalue %dx.types.CBufRet.f32 %5697, 2
  %5701 = fadd fast float %5698, %5639
  %5702 = fadd fast float %5699, %5640
  %5703 = fadd fast float %5700, %5641
  %5704 = fmul fast float %5701, %5665
  %5705 = call float @dx.op.tertiary.f32(i32 46, float %5702, float %5666, float %5704)  ; FMad(a,b,c)
  %5706 = call float @dx.op.tertiary.f32(i32 46, float %5703, float %5667, float %5705)  ; FMad(a,b,c)
  %5707 = fadd fast float %5706, %5668
  %5708 = fmul fast float %5701, %5670
  %5709 = call float @dx.op.tertiary.f32(i32 46, float %5702, float %5671, float %5708)  ; FMad(a,b,c)
  %5710 = call float @dx.op.tertiary.f32(i32 46, float %5703, float %5672, float %5709)  ; FMad(a,b,c)
  %5711 = fadd fast float %5710, %5673
  %5712 = fmul fast float %5701, %5675
  %5713 = call float @dx.op.tertiary.f32(i32 46, float %5702, float %5676, float %5712)  ; FMad(a,b,c)
  %5714 = call float @dx.op.tertiary.f32(i32 46, float %5703, float %5677, float %5713)  ; FMad(a,b,c)
  %5715 = fadd fast float %5714, %5678
  %5716 = fdiv fast float %5707, %5715
  %5717 = fdiv fast float %5711, %5715
  %5718 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5719 = extractvalue %dx.types.CBufRet.f32 %5718, 0
  %5720 = extractvalue %dx.types.CBufRet.f32 %5718, 1
  %5721 = fmul fast float %5719, %5716
  %5722 = fmul fast float %5720, %5717
  %5723 = extractvalue %dx.types.CBufRet.f32 %5718, 2
  %5724 = extractvalue %dx.types.CBufRet.f32 %5718, 3
  %5725 = fadd fast float %5721, %5723
  %5726 = fadd fast float %5722, %5724
  %5727 = fmul fast float %5679, 8.000000e+00
  %5728 = call float @dx.op.unary.f32(i32 7, float %5727)  ; Saturate(value)
  %5729 = fmul fast float %5725, 2.000000e+00
  %5730 = fmul fast float %5726, 2.000000e+00
  %5731 = fadd fast float %5729, -1.000000e+00
  %5732 = fadd fast float %5730, -1.000000e+00
  %5733 = fmul fast float %5731, %5731
  %5734 = fsub fast float 1.000000e+00, %5733
  %5735 = call float @dx.op.unary.f32(i32 7, float %5734)  ; Saturate(value)
  %5736 = fmul fast float %5732, %5732
  %5737 = fsub fast float 1.000000e+00, %5736
  %5738 = call float @dx.op.unary.f32(i32 7, float %5737)  ; Saturate(value)
  %5739 = fmul fast float %4911, %5735
  %5740 = fmul fast float %5739, %5738
  %5741 = call float @dx.op.unary.f32(i32 7, float %5740)  ; Saturate(value)
  %5742 = fmul fast float %5741, %5728
  %5743 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5725, float %5726, float undef, float undef, i32 0, i32 0, i32 undef, float %5696)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5744 = extractvalue %dx.types.ResRet.f32 %5743, 0
  %5745 = extractvalue %dx.types.ResRet.f32 %5743, 1
  %5746 = extractvalue %dx.types.ResRet.f32 %5743, 2
  %5747 = select i1 %183, float 0.000000e+00, float %5745
  %5748 = select i1 %183, float 0.000000e+00, float %5746
  %5749 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5750 = extractvalue %dx.types.CBufRet.f32 %5749, 2
  %5751 = fmul fast float %5750, %5744
  %5752 = fmul fast float %5747, %5750
  %5753 = fmul fast float %5748, %5750
  %5754 = fsub fast float %5751, %5643
  %5755 = fsub fast float %5752, %5644
  %5756 = fsub fast float %5753, %5645
  %5757 = fmul fast float %5754, %5742
  %5758 = fmul fast float %5755, %5742
  %5759 = fmul fast float %5756, %5742
  %5760 = fadd fast float %5757, %5643
  %5761 = fadd fast float %5758, %5644
  %5762 = fadd fast float %5759, %5645
  br label %5763

; <label>:5763                                    ; preds = %5663, %5635, %5160, %4884
  %5764 = phi float [ %5162, %5160 ], [ %5659, %5635 ], [ %4841, %4884 ], [ %5760, %5663 ]
  %5765 = phi float [ %5163, %5160 ], [ %5660, %5635 ], [ %4842, %4884 ], [ %5761, %5663 ]
  %5766 = phi float [ %5164, %5160 ], [ %5661, %5635 ], [ %4843, %4884 ], [ %5762, %5663 ]
  %5767 = fmul fast float %4890, %4837
  %5768 = fmul fast float %4890, %4838
  %5769 = fmul fast float %4890, %4839
  %5770 = call float @dx.op.dot3.f32(i32 55, float %4695, float %4696, float %4697, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5771 = fcmp fast ogt float %5770, 0x3E7FF19E20000000
  %5772 = fdiv fast float 1.000000e+00, %5770
  %5773 = select i1 %5771, float %5772, float 0.000000e+00
  %5774 = fmul fast float %5773, %4695
  %5775 = fmul fast float %5773, %4696
  %5776 = fmul fast float %5773, %4697
  %5777 = fadd fast float %5774, -1.000000e+00
  %5778 = fadd fast float %5775, -1.000000e+00
  %5779 = fadd fast float %5776, -1.000000e+00
  %5780 = fmul fast float %5777, 5.000000e-01
  %5781 = fmul fast float %5778, 5.000000e-01
  %5782 = fmul fast float %5779, 5.000000e-01
  %5783 = fadd fast float %5780, 1.000000e+00
  %5784 = fadd fast float %5781, 1.000000e+00
  %5785 = fadd fast float %5782, 1.000000e+00
  %5786 = fmul fast float %5764, %4885
  %5787 = fmul fast float %5765, %4886
  %5788 = fmul fast float %5766, %4887
  %5789 = fsub fast float 1.000000e+00, %4720
  %5790 = bitcast float %5789 to i32
  %5791 = sitofp i32 %5790 to float
  %5792 = fmul fast float %5791, 5.000000e+00
  %5793 = fadd fast float %5792, 0xC1EFBF8940000000
  %5794 = fptosi float %5793 to i32
  %5795 = bitcast i32 %5794 to float
  %5796 = fmul fast float %5795, %4091
  %5797 = fmul fast float %4837, %5796
  %5798 = fmul fast float %5797, %4890
  %5799 = fmul fast float %5798, %5783
  %5800 = fmul fast float %4838, %5796
  %5801 = fmul fast float %5800, %4890
  %5802 = fmul fast float %5801, %5784
  %5803 = fmul fast float %4839, %5796
  %5804 = fmul fast float %5803, %4890
  %5805 = fmul fast float %5804, %5785
  %5806 = fmul fast float %5767, %4087
  %5807 = fmul fast float %5768, %4087
  %5808 = fmul fast float %5769, %4087
  %5809 = fadd fast float %5786, %4083
  %5810 = fadd fast float %5809, %5799
  %5811 = fmul fast float %5810, %4087
  %5812 = fadd fast float %5787, %4084
  %5813 = fadd fast float %5812, %5802
  %5814 = fmul fast float %5813, %4087
  %5815 = fadd fast float %5788, %4085
  %5816 = fadd fast float %5815, %5805
  %5817 = fmul fast float %5816, %4087
  %5818 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5819 = extractvalue %dx.types.CBufRet.f32 %5818, 3
  %5820 = fcmp fast oeq float %5819, 0.000000e+00
  br i1 %5820, label %6039, label %5821

; <label>:5821                                    ; preds = %5763
  %5822 = extractvalue %dx.types.CBufRet.f32 %5818, 0
  %5823 = extractvalue %dx.types.CBufRet.f32 %5818, 1
  %5824 = extractvalue %dx.types.CBufRet.f32 %5818, 2
  %5825 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5826 = extractvalue %dx.types.CBufRet.f32 %5825, 0
  %5827 = extractvalue %dx.types.CBufRet.f32 %5825, 1
  %5828 = extractvalue %dx.types.CBufRet.f32 %5825, 2
  %5829 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5830 = extractvalue %dx.types.CBufRet.f32 %5829, 0
  %5831 = extractvalue %dx.types.CBufRet.f32 %5829, 1
  %5832 = call float @dx.op.dot3.f32(i32 55, float %5826, float %5827, float %5828, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5833 = select i1 %183, float %5830, float %5826
  %5834 = select i1 %183, float %5832, float %5827
  %5835 = select i1 %183, float %5831, float %5828
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 1
  %5838 = fcmp fast une float %5837, 0.000000e+00
  br i1 %5838, label %5839, label %5856

; <label>:5839                                    ; preds = %5821
  %5840 = fptoui float %78 to i32
  %5841 = fptoui float %79 to i32
  %5842 = lshr i32 %5840, 4
  %5843 = lshr i32 %5841, 4
  %5844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.f32 %5844, 0
  %5846 = fptoui float %5845 to i32
  %5847 = add i32 %5846, 15
  %5848 = lshr i32 %5847, 4
  %5849 = mul i32 %5848, %5843
  %5850 = add i32 %5849, %5842
  %5851 = shl i32 %5850, 3
  %5852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5851, i32 undef)  ; BufferLoad(srv,index,wot)
  %5853 = extractvalue %dx.types.ResRet.i32 %5852, 0
  %5854 = and i32 %5853, -268435456
  %5855 = icmp eq i32 %5854, -1342177280
  br i1 %5855, label %5861, label %5856

; <label>:5856                                    ; preds = %5839, %5821
  %5857 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4706, float %4707, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5858 = extractvalue %dx.types.ResRet.f32 %5857, 0
  %5859 = extractvalue %dx.types.ResRet.f32 %5857, 1
  %5860 = extractvalue %dx.types.ResRet.f32 %5857, 2
  br label %5861

; <label>:5861                                    ; preds = %5856, %5839
  %5862 = phi float [ %5858, %5856 ], [ 0.000000e+00, %5839 ]
  %5863 = phi float [ %5859, %5856 ], [ 0.000000e+00, %5839 ]
  %5864 = phi float [ %5860, %5856 ], [ 0.000000e+00, %5839 ]
  %5865 = call float @dx.op.binary.f32(i32 36, float %5863, float %5864)  ; FMin(a,b)
  %5866 = call float @dx.op.binary.f32(i32 36, float %5862, float %5865)  ; FMin(a,b)
  %5867 = fcmp fast ogt float %5866, 0.000000e+00
  br i1 %5867, label %5868, label %6039, !dx.controlflow.hints !87

; <label>:5868                                    ; preds = %5861
  %5869 = fmul fast float %5862, %5833
  %5870 = fmul fast float %5863, %5834
  %5871 = fmul fast float %5864, %5835
  %5872 = fsub fast float %5822, %4691
  %5873 = fsub fast float %5823, %4690
  %5874 = fsub fast float %5824, %4689
  %5875 = call float @dx.op.dot3.f32(i32 55, float %5872, float %5873, float %5874, float %5872, float %5873, float %5874)  ; Dot3(ax,ay,az,bx,by,bz)
  %5876 = call float @dx.op.unary.f32(i32 25, float %5875)  ; Rsqrt(value)
  %5877 = fmul fast float %5876, %5872
  %5878 = fmul fast float %5876, %5873
  %5879 = fmul fast float %5876, %5874
  %5880 = call float @dx.op.dot3.f32(i32 55, float %5822, float %5823, float %5824, float %4698, float %4699, float %4700)  ; Dot3(ax,ay,az,bx,by,bz)
  %5881 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4687, float %4686, float %5877, float %5878, float %5879)  ; Dot3(ax,ay,az,bx,by,bz)
  %5882 = call float @dx.op.unary.f32(i32 7, float %5880)  ; Saturate(value)
  %5883 = fmul fast float %5882, %5882
  %5884 = fmul fast float %5883, %4745
  %5885 = call float @dx.op.unary.f32(i32 7, float %5884)  ; Saturate(value)
  %5886 = fmul fast float %5885, %5882
  %5887 = call float @dx.op.dot3.f32(i32 55, float %4698, float %4699, float %4700, float %5877, float %5878, float %5879)  ; Dot3(ax,ay,az,bx,by,bz)
  %5888 = fmul fast float %5887, %5887
  %5889 = call float @dx.op.unary.f32(i32 6, float %5880)  ; FAbs(value)
  %5890 = fsub fast float 1.000000e+00, %4738
  %5891 = fmul fast float %4720, %4720
  %5892 = fmul fast float %5891, %5890
  %5893 = fadd fast float %5892, %4738
  %5894 = bitcast float %5893 to i32
  %5895 = ashr i32 %5894, 1
  %5896 = add nsw i32 %5895, 532487669
  %5897 = bitcast i32 %5896 to float
  %5898 = fadd fast float %5897, %4720
  %5899 = fmul fast float %4738, %5888
  %5900 = fsub fast float 1.000000e+00, %5888
  %5901 = fadd fast float %5900, %5899
  %5902 = fmul fast float %5889, %5889
  %5903 = fmul fast float %5902, %5890
  %5904 = fadd fast float %5903, %4738
  %5905 = bitcast float %5904 to i32
  %5906 = ashr i32 %5905, 1
  %5907 = add nsw i32 %5906, 532487669
  %5908 = bitcast i32 %5907 to float
  %5909 = fadd fast float %5908, %5889
  %5910 = fmul fast float %5901, %5901
  %5911 = fmul fast float %5910, %5898
  %5912 = fmul fast float %5911, %5909
  %5913 = fdiv fast float 0x3FF0A00000000000, %5912
  %5914 = fmul fast float %5913, %4738
  %5915 = call float @dx.op.unary.f32(i32 6, float %5881)  ; FAbs(value)
  %5916 = fsub fast float 1.000000e+00, %5915
  %5917 = bitcast float %5916 to i32
  %5918 = sitofp i32 %5917 to float
  %5919 = fmul fast float %5918, 5.000000e+00
  %5920 = fadd fast float %5919, 0xC1EFBF8940000000
  %5921 = fptosi float %5920 to i32
  %5922 = bitcast i32 %5921 to float
  %5923 = fsub fast float 1.000000e+00, %4692
  %5924 = fsub fast float 1.000000e+00, %4693
  %5925 = fsub fast float 1.000000e+00, %4718
  %5926 = fmul fast float %5922, %5923
  %5927 = fmul fast float %5922, %5924
  %5928 = fmul fast float %5922, %5925
  %5929 = fadd fast float %5926, %4692
  %5930 = fadd fast float %5927, %4693
  %5931 = fadd fast float %5928, %4718
  br i1 %4857, label %5932, label %5955

; <label>:5932                                    ; preds = %5868
  %5933 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4090, float %5915, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5934 = extractvalue %dx.types.ResRet.f32 %5933, 0
  %5935 = extractvalue %dx.types.ResRet.f32 %5933, 1
  %5936 = extractvalue %dx.types.ResRet.f32 %5933, 2
  %5937 = fadd fast float %5934, -5.000000e-01
  %5938 = fadd fast float %5935, -5.000000e-01
  %5939 = fadd fast float %5936, -5.000000e-01
  %5940 = fmul fast float %4692, 4.000000e+00
  %5941 = fmul fast float %5940, %5923
  %5942 = fmul fast float %5941, %5937
  %5943 = fmul fast float %4693, 4.000000e+00
  %5944 = fmul fast float %5943, %5924
  %5945 = fmul fast float %5944, %5938
  %5946 = fmul fast float %4718, 4.000000e+00
  %5947 = fmul fast float %5946, %5925
  %5948 = fmul fast float %5947, %5939
  %5949 = fadd fast float %5942, %5929
  %5950 = fadd fast float %5945, %5930
  %5951 = fadd fast float %5948, %5931
  %5952 = call float @dx.op.unary.f32(i32 7, float %5949)  ; Saturate(value)
  %5953 = call float @dx.op.unary.f32(i32 7, float %5950)  ; Saturate(value)
  %5954 = call float @dx.op.unary.f32(i32 7, float %5951)  ; Saturate(value)
  br label %5955

; <label>:5955                                    ; preds = %5932, %5868
  %5956 = phi float [ %5952, %5932 ], [ %5929, %5868 ]
  %5957 = phi float [ %5953, %5932 ], [ %5930, %5868 ]
  %5958 = phi float [ %5954, %5932 ], [ %5931, %5868 ]
  %5959 = fmul fast float %5880, 9.843750e-01
  %5960 = fadd fast float %5959, 7.812500e-03
  %5961 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5960, float %4847, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5962 = extractvalue %dx.types.ResRet.f32 %5961, 2
  %5963 = extractvalue %dx.types.ResRet.f32 %5961, 3
  %5964 = fmul fast float %5962, %4692
  %5965 = fmul fast float %5962, %4693
  %5966 = fmul fast float %5962, %4718
  %5967 = fadd fast float %5964, %5963
  %5968 = fadd fast float %5965, %5963
  %5969 = fadd fast float %5966, %5963
  br i1 %4857, label %5970, label %5993

; <label>:5970                                    ; preds = %5955
  %5971 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4090, float %5880, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5972 = extractvalue %dx.types.ResRet.f32 %5971, 0
  %5973 = extractvalue %dx.types.ResRet.f32 %5971, 1
  %5974 = extractvalue %dx.types.ResRet.f32 %5971, 2
  %5975 = fadd fast float %5972, -5.000000e-01
  %5976 = fadd fast float %5973, -5.000000e-01
  %5977 = fadd fast float %5974, -5.000000e-01
  %5978 = fmul fast float %4692, 4.000000e+00
  %5979 = fmul fast float %5978, %5923
  %5980 = fmul fast float %5979, %5975
  %5981 = fmul fast float %4693, 4.000000e+00
  %5982 = fmul fast float %5981, %5924
  %5983 = fmul fast float %5982, %5976
  %5984 = fmul fast float %4718, 4.000000e+00
  %5985 = fmul fast float %5984, %5925
  %5986 = fmul fast float %5985, %5977
  %5987 = fadd fast float %5980, %5967
  %5988 = fadd fast float %5983, %5968
  %5989 = fadd fast float %5986, %5969
  %5990 = call float @dx.op.unary.f32(i32 7, float %5987)  ; Saturate(value)
  %5991 = call float @dx.op.unary.f32(i32 7, float %5988)  ; Saturate(value)
  %5992 = call float @dx.op.unary.f32(i32 7, float %5989)  ; Saturate(value)
  br label %5993

; <label>:5993                                    ; preds = %5970, %5955
  %5994 = phi float [ %5990, %5970 ], [ %5967, %5955 ]
  %5995 = phi float [ %5991, %5970 ], [ %5968, %5955 ]
  %5996 = phi float [ %5992, %5970 ], [ %5969, %5955 ]
  %5997 = call float @dx.op.binary.f32(i32 35, float %5995, float %5996)  ; FMax(a,b)
  %5998 = call float @dx.op.binary.f32(i32 35, float %5994, float %5997)  ; FMax(a,b)
  %5999 = fsub fast float 1.000000e+00, %5998
  %6000 = fmul fast float %5956, %5914
  %6001 = fmul fast float %5957, %5914
  %6002 = fmul fast float %5958, %5914
  %6003 = fsub fast float 1.000000e+00, %5881
  %6004 = bitcast float %6003 to i32
  %6005 = sitofp i32 %6004 to float
  %6006 = fmul fast float %6005, 5.000000e+00
  %6007 = fadd fast float %6006, 0xC1EFBF8940000000
  %6008 = fptosi float %6007 to i32
  %6009 = bitcast i32 %6008 to float
  %6010 = fmul fast float %6009, %4091
  %6011 = fmul fast float %5999, %6010
  %6012 = fmul fast float %6011, %5783
  %6013 = fmul fast float %6011, %5784
  %6014 = fmul fast float %6011, %5785
  %6015 = fadd fast float %6012, %6000
  %6016 = fadd fast float %6013, %6001
  %6017 = fadd fast float %6014, %6002
  %6018 = fmul fast float %5886, %5869
  %6019 = fmul fast float %6018, %5999
  %6020 = fmul fast float %5886, %5870
  %6021 = fmul fast float %6020, %5999
  %6022 = fmul fast float %5886, %5871
  %6023 = fmul fast float %6022, %5999
  %6024 = fmul fast float %6018, %6015
  %6025 = fmul fast float %6020, %6016
  %6026 = fmul fast float %6022, %6017
  %6027 = fadd fast float %6019, %5767
  %6028 = fmul fast float %6027, %4087
  %6029 = fadd fast float %6021, %5768
  %6030 = fmul fast float %6029, %4087
  %6031 = fadd fast float %6023, %5769
  %6032 = fmul fast float %6031, %4087
  %6033 = fadd fast float %6024, %5810
  %6034 = fmul fast float %6033, %4087
  %6035 = fadd fast float %6025, %5813
  %6036 = fmul fast float %6035, %4087
  %6037 = fadd fast float %6026, %5816
  %6038 = fmul fast float %6037, %4087
  br label %6039

; <label>:6039                                    ; preds = %5993, %5861, %5763
  %6040 = phi float [ %5811, %5763 ], [ %5811, %5861 ], [ %6034, %5993 ]
  %6041 = phi float [ %5814, %5763 ], [ %5814, %5861 ], [ %6036, %5993 ]
  %6042 = phi float [ %5817, %5763 ], [ %5817, %5861 ], [ %6038, %5993 ]
  %6043 = phi float [ %5806, %5763 ], [ %5806, %5861 ], [ %6028, %5993 ]
  %6044 = phi float [ %5807, %5763 ], [ %5807, %5861 ], [ %6030, %5993 ]
  %6045 = phi float [ %5808, %5763 ], [ %5808, %5861 ], [ %6032, %5993 ]
  %6046 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6047 = extractvalue %dx.types.CBufRet.i32 %6046, 0
  %6048 = icmp eq i32 %6047, 0
  br i1 %6048, label %6479, label %6049

; <label>:6049                                    ; preds = %6039
  %6050 = fptoui float %78 to i32
  %6051 = fptoui float %79 to i32
  %6052 = lshr i32 %6050, 4
  %6053 = lshr i32 %6051, 4
  %6054 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6055 = extractvalue %dx.types.CBufRet.i32 %6054, 0
  %6056 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6053, i32 %6055, i32 %6052)  ; UMad(a,b,c)
  %6057 = add nsw i32 %6047, -1
  %6058 = call i32 @dx.op.binary.i32(i32 37, i32 %6057, i32 0)  ; IMax(a,b)
  %6059 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %6060 = fptoui float %6059 to i32
  %6061 = lshr i32 %6060, 5
  %6062 = call i32 @dx.op.binary.i32(i32 40, i32 %6061, i32 8191)  ; UMin(a,b)
  %6063 = shl i32 %6062, 2
  %6064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6063, i32 undef)  ; BufferLoad(srv,index,wot)
  %6065 = extractvalue %dx.types.ResRet.i32 %6064, 0
  %6066 = lshr i32 %6065, 16
  %6067 = and i32 %6065, 65535
  %6068 = lshr i32 %6065, 21
  %6069 = lshr i32 %6067, 5
  %6070 = call i32 @dx.op.binary.i32(i32 40, i32 %6069, i32 %6058)  ; UMin(a,b)
  %6071 = icmp ugt i32 %6068, %6070
  br i1 %6071, label %6479, label %6072

; <label>:6072                                    ; preds = %6049
  br label %6073

; <label>:6073                                    ; preds = %6469, %6072
  %6074 = phi i32 [ %6476, %6469 ], [ %6068, %6072 ]
  %6075 = phi float [ %6470, %6469 ], [ %6040, %6072 ]
  %6076 = phi float [ %6471, %6469 ], [ %6041, %6072 ]
  %6077 = phi float [ %6472, %6469 ], [ %6042, %6072 ]
  %6078 = phi float [ %6473, %6469 ], [ %6043, %6072 ]
  %6079 = phi float [ %6474, %6469 ], [ %6044, %6072 ]
  %6080 = phi float [ %6475, %6469 ], [ %6045, %6072 ]
  %6081 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6082 = extractvalue %dx.types.CBufRet.i32 %6081, 0
  %6083 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6056, i32 %6082, i32 %6074)  ; UMad(a,b,c)
  %6084 = shl i32 %6083, 2
  %6085 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6084, i32 undef)  ; BufferLoad(srv,index,wot)
  %6086 = extractvalue %dx.types.ResRet.i32 %6085, 0
  %6087 = shl i32 %6074, 5
  %6088 = sub nsw i32 %6066, %6087
  %6089 = call i32 @dx.op.binary.i32(i32 37, i32 %6088, i32 0)  ; IMax(a,b)
  %6090 = call i32 @dx.op.binary.i32(i32 38, i32 %6089, i32 31)  ; IMin(a,b)
  %6091 = sub nsw i32 1, %6066
  %6092 = add nsw i32 %6091, %6067
  %6093 = call i32 @dx.op.binary.i32(i32 37, i32 %6092, i32 0)  ; IMax(a,b)
  %6094 = call i32 @dx.op.binary.i32(i32 38, i32 %6093, i32 32)  ; IMin(a,b)
  %6095 = and i32 %6094, 31
  %6096 = shl i32 -1, %6095
  %6097 = xor i32 %6096, -1
  %6098 = and i32 %6090, 31
  %6099 = shl i32 %6097, %6098
  %6100 = icmp eq i32 %6094, 32
  %6101 = select i1 %6100, i32 -1, i32 %6099
  %6102 = and i32 %6101, %6086
  %6103 = icmp eq i32 %6102, 0
  br i1 %6103, label %6469, label %6104

; <label>:6104                                    ; preds = %6073
  br label %6105

; <label>:6105                                    ; preds = %6185, %6104
  %6106 = phi i32 [ %6117, %6185 ], [ %6102, %6104 ]
  %6107 = phi float [ %6186, %6185 ], [ %6075, %6104 ]
  %6108 = phi float [ %6187, %6185 ], [ %6076, %6104 ]
  %6109 = phi float [ %6188, %6185 ], [ %6077, %6104 ]
  %6110 = phi float [ %6189, %6185 ], [ %6078, %6104 ]
  %6111 = phi float [ %6190, %6185 ], [ %6079, %6104 ]
  %6112 = phi float [ %6191, %6185 ], [ %6080, %6104 ]
  %6113 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6106)  ; FirstbitLo(value)
  %6114 = add i32 %6113, %6087
  %6115 = and i32 %6113, 31
  %6116 = shl i32 1, %6115
  %6117 = xor i32 %6116, %6106
  %6118 = mul i32 %6114, 112
  %6119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6118, i32 undef)  ; BufferLoad(srv,index,wot)
  %6120 = extractvalue %dx.types.ResRet.f32 %6119, 0
  %6121 = extractvalue %dx.types.ResRet.f32 %6119, 1
  %6122 = extractvalue %dx.types.ResRet.f32 %6119, 2
  %6123 = or i32 %6118, 12
  %6124 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6123, i32 undef)  ; BufferLoad(srv,index,wot)
  %6125 = extractvalue %dx.types.ResRet.f32 %6124, 0
  %6126 = add i32 %6118, 44
  %6127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6126, i32 undef)  ; BufferLoad(srv,index,wot)
  %6128 = extractvalue %dx.types.ResRet.f32 %6127, 0
  %6129 = add i32 %6118, 48
  %6130 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6129, i32 undef)  ; BufferLoad(srv,index,wot)
  %6131 = extractvalue %dx.types.ResRet.f32 %6130, 0
  %6132 = extractvalue %dx.types.ResRet.f32 %6130, 1
  %6133 = extractvalue %dx.types.ResRet.f32 %6130, 2
  %6134 = add i32 %6118, 80
  %6135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6134, i32 undef)  ; BufferLoad(srv,index,wot)
  %6136 = extractvalue %dx.types.ResRet.f32 %6135, 1
  %6137 = extractvalue %dx.types.ResRet.f32 %6135, 2
  %6138 = call float @dx.op.dot3.f32(i32 55, float %6120, float %6121, float %6122, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6139 = select i1 %183, float %6136, float %6120
  %6140 = select i1 %183, float %6138, float %6121
  %6141 = select i1 %183, float %6137, float %6122
  %6142 = fsub fast float %6131, %141
  %6143 = fsub fast float %6132, %142
  %6144 = fsub fast float %6133, %143
  %6145 = call float @dx.op.dot3.f32(i32 55, float %6142, float %6143, float %6144, float %6142, float %6143, float %6144)  ; Dot3(ax,ay,az,bx,by,bz)
  %6146 = call float @dx.op.unary.f32(i32 24, float %6145)  ; Sqrt(value)
  %6147 = fdiv fast float 1.000000e+00, %6146
  %6148 = fmul fast float %6147, %6142
  %6149 = fmul fast float %6147, %6143
  %6150 = fmul fast float %6147, %6144
  %6151 = fadd fast float %6146, %6125
  %6152 = fdiv fast float 1.000000e+00, %6151
  %6153 = fmul float %6128, %6152
  %6154 = fmul float %6153, %6153
  %6155 = call float @dx.op.unary.f32(i32 7, float %6154)  ; Saturate(value)
  %6156 = and i32 %6116, %6102
  %6157 = icmp eq i32 %6156, 0
  br i1 %6157, label %6180, label %6158, !dx.controlflow.hints !88

; <label>:6158                                    ; preds = %6105
  %6159 = lshr i32 %6050, 5
  %6160 = lshr i32 %6051, 5
  %6161 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6159, i32 %6160, i32 %6114, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6162 = extractvalue %dx.types.ResRet.i32 %6161, 0
  %6163 = and i32 %6162, 3
  %6164 = icmp eq i32 %6163, 0
  %6165 = select i1 %6164, float 1.000000e+00, float 0.000000e+00
  %6166 = icmp eq i32 %6163, 3
  br i1 %6166, label %6167, label %6180

; <label>:6167                                    ; preds = %6158
  %6168 = lshr i32 %6162, 10
  %6169 = and i32 %6168, 8160
  %6170 = and i32 %6051, 31
  %6171 = or i32 %6169, %6170
  %6172 = lshr i32 %6162, 1
  %6173 = and i32 %6172, 16352
  %6174 = and i32 %6050, 31
  %6175 = or i32 %6173, %6174
  %6176 = lshr i32 %6162, 23
  %6177 = and i32 %6176, 255
  %6178 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6175, i32 %6171, i32 %6177, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6179 = extractvalue %dx.types.ResRet.f32 %6178, 0
  br label %6180

; <label>:6180                                    ; preds = %6167, %6158, %6105
  %6181 = phi float [ %6179, %6167 ], [ %6165, %6158 ], [ 0.000000e+00, %6105 ]
  %6182 = call float @dx.op.binary.f32(i32 36, float %6181, float %6181)  ; FMin(a,b)
  %6183 = call float @dx.op.binary.f32(i32 36, float %6181, float %6182)  ; FMin(a,b)
  %6184 = fcmp fast ogt float %6183, 0.000000e+00
  br i1 %6184, label %6193, label %6185, !dx.controlflow.hints !89

; <label>:6185                                    ; preds = %6425, %6180
  %6186 = phi float [ %6107, %6180 ], [ %6465, %6425 ]
  %6187 = phi float [ %6108, %6180 ], [ %6466, %6425 ]
  %6188 = phi float [ %6109, %6180 ], [ %6467, %6425 ]
  %6189 = phi float [ %6110, %6180 ], [ %6459, %6425 ]
  %6190 = phi float [ %6111, %6180 ], [ %6460, %6425 ]
  %6191 = phi float [ %6112, %6180 ], [ %6461, %6425 ]
  %6192 = icmp eq i32 %6106, %6116
  br i1 %6192, label %6468, label %6105

; <label>:6193                                    ; preds = %6180
  %6194 = fmul fast float %6181, %6139
  %6195 = fmul fast float %6181, %6140
  %6196 = fmul fast float %6181, %6141
  %6197 = fsub fast float %6133, %4491
  %6198 = fcmp fast ogt float %6197, 0.000000e+00
  %6199 = fsub fast float %143, %4491
  %6200 = fcmp fast ogt float %6199, 0.000000e+00
  %6201 = xor i1 %6200, %6198
  %6202 = fsub fast float %4491, %6133
  %6203 = fmul fast float %6202, 2.000000e+00
  %6204 = fadd fast float %6203, %6133
  %6205 = select i1 %6201, float %6133, float %6204
  %6206 = fsub fast float %6205, %143
  %6207 = call float @dx.op.dot3.f32(i32 55, float %6142, float %6143, float %6206, float %6142, float %6143, float %6206)  ; Dot3(ax,ay,az,bx,by,bz)
  %6208 = call float @dx.op.unary.f32(i32 25, float %6207)  ; Rsqrt(value)
  %6209 = fmul fast float %6208, %6142
  %6210 = fmul fast float %6208, %6143
  %6211 = fmul fast float %6208, %6206
  %6212 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4499)  ; Dot3(ax,ay,az,bx,by,bz)
  %6213 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6209, float %6210, float %6211)  ; Dot3(ax,ay,az,bx,by,bz)
  %6214 = fdiv fast float 1.000000e+00, %6213
  %6215 = fmul fast float %6214, %6212
  %6216 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6199, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6217 = fcmp fast ogt float %6216, 0.000000e+00
  %6218 = fcmp fast olt float %6216, 0.000000e+00
  %6219 = zext i1 %6217 to i32
  %6220 = zext i1 %6218 to i32
  %6221 = sub nsw i32 %6219, %6220
  %6222 = sitofp i32 %6221 to float
  %6223 = fsub fast float %6205, %4491
  %6224 = call float @dx.op.dot3.f32(i32 55, float %6142, float %6143, float %6223, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6225 = fcmp fast ogt float %6224, 0.000000e+00
  %6226 = fcmp fast olt float %6224, 0.000000e+00
  %6227 = zext i1 %6225 to i32
  %6228 = zext i1 %6226 to i32
  %6229 = sub nsw i32 %6227, %6228
  %6230 = sitofp i32 %6229 to float
  %6231 = fcmp fast une float %6222, %6230
  br i1 %6231, label %6232, label %6242

; <label>:6232                                    ; preds = %6193
  %6233 = fmul fast float %6215, %6211
  %6234 = fmul fast float %6215, %6210
  %6235 = fmul fast float %6215, %6209
  %6236 = fmul fast float %6235, %6235
  %6237 = fmul fast float %6234, %6234
  %6238 = fadd fast float %6236, %6237
  %6239 = fmul fast float %6233, %6233
  %6240 = fadd fast float %6238, %6239
  %6241 = call float @dx.op.unary.f32(i32 24, float %6240)  ; Sqrt(value)
  br label %6254

; <label>:6242                                    ; preds = %6193
  %6243 = icmp slt i32 %6221, 0
  br i1 %6243, label %6244, label %6254

; <label>:6244                                    ; preds = %6242
  %6245 = fsub fast float %141, %6131
  %6246 = fsub fast float %142, %6132
  %6247 = fsub fast float %143, %6205
  %6248 = fmul fast float %6245, %6245
  %6249 = fmul fast float %6246, %6246
  %6250 = fadd fast float %6248, %6249
  %6251 = fmul fast float %6247, %6247
  %6252 = fadd fast float %6250, %6251
  %6253 = call float @dx.op.unary.f32(i32 24, float %6252)  ; Sqrt(value)
  br label %6254

; <label>:6254                                    ; preds = %6244, %6242, %6232
  %6255 = phi float [ %6241, %6232 ], [ %6253, %6244 ], [ 0.000000e+00, %6242 ]
  %6256 = and i1 %6200, %6198
  %6257 = fsub fast float -0.000000e+00, %6255
  %6258 = select i1 %6256, float -0.000000e+00, float %6257
  %6259 = fmul fast float %4492, 0x3FF7154760000000
  %6260 = fmul fast float %6259, %6258
  %6261 = fmul fast float %4493, 0x3FF7154760000000
  %6262 = fmul fast float %6261, %6258
  %6263 = fmul fast float %4494, 0x3FF7154760000000
  %6264 = fmul fast float %6263, %6258
  %6265 = call float @dx.op.unary.f32(i32 21, float %6260)  ; Exp(value)
  %6266 = call float @dx.op.unary.f32(i32 21, float %6262)  ; Exp(value)
  %6267 = call float @dx.op.unary.f32(i32 21, float %6264)  ; Exp(value)
  %6268 = call float @dx.op.unary.f32(i32 7, float %6265)  ; Saturate(value)
  %6269 = call float @dx.op.unary.f32(i32 7, float %6266)  ; Saturate(value)
  %6270 = call float @dx.op.unary.f32(i32 7, float %6267)  ; Saturate(value)
  %6271 = fmul fast float %6194, %6268
  %6272 = fmul fast float %6195, %6269
  %6273 = fmul fast float %6196, %6270
  %6274 = fsub fast float %6148, %4691
  %6275 = fsub fast float %6149, %4690
  %6276 = fsub fast float %6150, %4689
  %6277 = call float @dx.op.dot3.f32(i32 55, float %6274, float %6275, float %6276, float %6274, float %6275, float %6276)  ; Dot3(ax,ay,az,bx,by,bz)
  %6278 = call float @dx.op.unary.f32(i32 25, float %6277)  ; Rsqrt(value)
  %6279 = fmul fast float %6278, %6274
  %6280 = fmul fast float %6278, %6275
  %6281 = fmul fast float %6278, %6276
  %6282 = call float @dx.op.dot3.f32(i32 55, float %6148, float %6149, float %6150, float %4698, float %4699, float %4700)  ; Dot3(ax,ay,az,bx,by,bz)
  %6283 = call float @dx.op.dot3.f32(i32 55, float %4688, float %4687, float %4686, float %6279, float %6280, float %6281)  ; Dot3(ax,ay,az,bx,by,bz)
  %6284 = call float @dx.op.unary.f32(i32 7, float %6282)  ; Saturate(value)
  %6285 = fmul fast float %6284, %6155
  %6286 = fmul fast float %6284, %6284
  %6287 = fmul fast float %6286, %4745
  %6288 = call float @dx.op.unary.f32(i32 7, float %6287)  ; Saturate(value)
  %6289 = fmul fast float %6285, %6288
  %6290 = bitcast float %6145 to i32
  %6291 = ashr i32 %6290, 1
  %6292 = sub nsw i32 1597463007, %6291
  %6293 = bitcast i32 %6292 to float
  %6294 = fmul fast float %6293, %6142
  %6295 = fmul fast float %6293, %6143
  %6296 = fmul fast float %6293, %6144
  %6297 = fsub fast float %6294, %4691
  %6298 = fsub fast float %6295, %4690
  %6299 = fsub fast float %6296, %4689
  %6300 = call float @dx.op.dot3.f32(i32 55, float %6297, float %6298, float %6299, float %6297, float %6298, float %6299)  ; Dot3(ax,ay,az,bx,by,bz)
  %6301 = call float @dx.op.unary.f32(i32 25, float %6300)  ; Rsqrt(value)
  %6302 = fmul fast float %6297, %6301
  %6303 = fmul fast float %6298, %6301
  %6304 = fmul fast float %6299, %6301
  %6305 = call float @dx.op.dot3.f32(i32 55, float %4698, float %4699, float %4700, float %6302, float %6303, float %6304)  ; Dot3(ax,ay,az,bx,by,bz)
  %6306 = fmul fast float %6305, %6305
  %6307 = call float @dx.op.unary.f32(i32 6, float %6282)  ; FAbs(value)
  %6308 = fsub fast float 1.000000e+00, %4738
  %6309 = fmul fast float %4720, %4720
  %6310 = fmul fast float %6309, %6308
  %6311 = fadd fast float %6310, %4738
  %6312 = bitcast float %6311 to i32
  %6313 = ashr i32 %6312, 1
  %6314 = add nsw i32 %6313, 532487669
  %6315 = bitcast i32 %6314 to float
  %6316 = fadd fast float %6315, %4720
  %6317 = fmul fast float %4738, %6306
  %6318 = fsub fast float 1.000000e+00, %6306
  %6319 = fadd fast float %6318, %6317
  %6320 = fmul fast float %6307, %6307
  %6321 = fmul fast float %6320, %6308
  %6322 = fadd fast float %6321, %4738
  %6323 = bitcast float %6322 to i32
  %6324 = ashr i32 %6323, 1
  %6325 = add nsw i32 %6324, 532487669
  %6326 = bitcast i32 %6325 to float
  %6327 = fadd fast float %6326, %6307
  %6328 = fmul fast float %6319, %6319
  %6329 = fmul fast float %6328, %6316
  %6330 = fmul fast float %6329, %6327
  %6331 = fdiv fast float 1.000000e+00, %6330
  %6332 = bitcast float %4738 to i32
  %6333 = sitofp i32 %6332 to float
  %6334 = fmul fast float %6333, 0x3FE7F73180000000
  %6335 = fadd fast float %6334, 0x41AFE27C40000000
  %6336 = fptosi float %6335 to i32
  %6337 = bitcast i32 %6336 to float
  %6338 = fmul fast float %6128, 0x3FD80E9D60000000
  %6339 = fmul fast float %6338, %6293
  %6340 = fadd fast float %6337, %6339
  %6341 = bitcast float %6340 to i32
  %6342 = sub nsw i32 2129859010, %6341
  %6343 = bitcast i32 %6342 to float
  %6344 = fmul fast float %4738, %6331
  %6345 = fmul fast float %6344, %6337
  %6346 = fmul fast float %6345, %6343
  %6347 = call float @dx.op.unary.f32(i32 6, float %6283)  ; FAbs(value)
  %6348 = fsub fast float 1.000000e+00, %6347
  %6349 = bitcast float %6348 to i32
  %6350 = sitofp i32 %6349 to float
  %6351 = fmul fast float %6350, 5.000000e+00
  %6352 = fadd fast float %6351, 0xC1EFBF8940000000
  %6353 = fptosi float %6352 to i32
  %6354 = bitcast i32 %6353 to float
  %6355 = fsub fast float 1.000000e+00, %4692
  %6356 = fsub fast float 1.000000e+00, %4693
  %6357 = fsub fast float 1.000000e+00, %4718
  %6358 = fmul fast float %6354, %6355
  %6359 = fmul fast float %6354, %6356
  %6360 = fmul fast float %6354, %6357
  %6361 = fadd fast float %6358, %4692
  %6362 = fadd fast float %6359, %4693
  %6363 = fadd fast float %6360, %4718
  br i1 %4857, label %6364, label %6387

; <label>:6364                                    ; preds = %6254
  %6365 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4090, float %6347, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6366 = extractvalue %dx.types.ResRet.f32 %6365, 0
  %6367 = extractvalue %dx.types.ResRet.f32 %6365, 1
  %6368 = extractvalue %dx.types.ResRet.f32 %6365, 2
  %6369 = fadd fast float %6366, -5.000000e-01
  %6370 = fadd fast float %6367, -5.000000e-01
  %6371 = fadd fast float %6368, -5.000000e-01
  %6372 = fmul fast float %4692, 4.000000e+00
  %6373 = fmul fast float %6372, %6355
  %6374 = fmul fast float %6373, %6369
  %6375 = fmul fast float %4693, 4.000000e+00
  %6376 = fmul fast float %6375, %6356
  %6377 = fmul fast float %6376, %6370
  %6378 = fmul fast float %4718, 4.000000e+00
  %6379 = fmul fast float %6378, %6357
  %6380 = fmul fast float %6379, %6371
  %6381 = fadd fast float %6374, %6361
  %6382 = fadd fast float %6377, %6362
  %6383 = fadd fast float %6380, %6363
  %6384 = call float @dx.op.unary.f32(i32 7, float %6381)  ; Saturate(value)
  %6385 = call float @dx.op.unary.f32(i32 7, float %6382)  ; Saturate(value)
  %6386 = call float @dx.op.unary.f32(i32 7, float %6383)  ; Saturate(value)
  br label %6387

; <label>:6387                                    ; preds = %6364, %6254
  %6388 = phi float [ %6384, %6364 ], [ %6361, %6254 ]
  %6389 = phi float [ %6385, %6364 ], [ %6362, %6254 ]
  %6390 = phi float [ %6386, %6364 ], [ %6363, %6254 ]
  %6391 = fmul fast float %6282, 9.843750e-01
  %6392 = fadd fast float %6391, 7.812500e-03
  %6393 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6392, float %4847, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6394 = extractvalue %dx.types.ResRet.f32 %6393, 2
  %6395 = extractvalue %dx.types.ResRet.f32 %6393, 3
  %6396 = fmul fast float %6394, %4692
  %6397 = fmul fast float %6394, %4693
  %6398 = fmul fast float %6394, %4718
  %6399 = fadd fast float %6396, %6395
  %6400 = fadd fast float %6397, %6395
  %6401 = fadd fast float %6398, %6395
  br i1 %4857, label %6402, label %6425

; <label>:6402                                    ; preds = %6387
  %6403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4090, float %6282, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6404 = extractvalue %dx.types.ResRet.f32 %6403, 0
  %6405 = extractvalue %dx.types.ResRet.f32 %6403, 1
  %6406 = extractvalue %dx.types.ResRet.f32 %6403, 2
  %6407 = fadd fast float %6404, -5.000000e-01
  %6408 = fadd fast float %6405, -5.000000e-01
  %6409 = fadd fast float %6406, -5.000000e-01
  %6410 = fmul fast float %4692, 4.000000e+00
  %6411 = fmul fast float %6410, %6355
  %6412 = fmul fast float %6411, %6407
  %6413 = fmul fast float %4693, 4.000000e+00
  %6414 = fmul fast float %6413, %6356
  %6415 = fmul fast float %6414, %6408
  %6416 = fmul fast float %4718, 4.000000e+00
  %6417 = fmul fast float %6416, %6357
  %6418 = fmul fast float %6417, %6409
  %6419 = fadd fast float %6412, %6399
  %6420 = fadd fast float %6415, %6400
  %6421 = fadd fast float %6418, %6401
  %6422 = call float @dx.op.unary.f32(i32 7, float %6419)  ; Saturate(value)
  %6423 = call float @dx.op.unary.f32(i32 7, float %6420)  ; Saturate(value)
  %6424 = call float @dx.op.unary.f32(i32 7, float %6421)  ; Saturate(value)
  br label %6425

; <label>:6425                                    ; preds = %6402, %6387
  %6426 = phi float [ %6422, %6402 ], [ %6399, %6387 ]
  %6427 = phi float [ %6423, %6402 ], [ %6400, %6387 ]
  %6428 = phi float [ %6424, %6402 ], [ %6401, %6387 ]
  %6429 = call float @dx.op.binary.f32(i32 35, float %6427, float %6428)  ; FMax(a,b)
  %6430 = call float @dx.op.binary.f32(i32 35, float %6426, float %6429)  ; FMax(a,b)
  %6431 = fsub fast float 1.000000e+00, %6430
  %6432 = fmul fast float %6388, %6346
  %6433 = fmul fast float %6389, %6346
  %6434 = fmul fast float %6390, %6346
  %6435 = fsub fast float 1.000000e+00, %6283
  %6436 = bitcast float %6435 to i32
  %6437 = sitofp i32 %6436 to float
  %6438 = fmul fast float %6437, 5.000000e+00
  %6439 = fadd fast float %6438, 0xC1EFBF8940000000
  %6440 = fptosi float %6439 to i32
  %6441 = bitcast i32 %6440 to float
  %6442 = fmul fast float %6441, %4091
  %6443 = fmul fast float %6431, %6442
  %6444 = fmul fast float %6443, %5783
  %6445 = fmul fast float %6443, %5784
  %6446 = fmul fast float %6443, %5785
  %6447 = fadd fast float %6444, %6432
  %6448 = fadd fast float %6445, %6433
  %6449 = fadd fast float %6446, %6434
  %6450 = fmul fast float %6271, %4087
  %6451 = fmul fast float %6450, %6289
  %6452 = fmul fast float %6451, %6431
  %6453 = fmul fast float %6272, %4087
  %6454 = fmul fast float %6453, %6289
  %6455 = fmul fast float %6454, %6431
  %6456 = fmul fast float %6273, %4087
  %6457 = fmul fast float %6456, %6289
  %6458 = fmul fast float %6457, %6431
  %6459 = fadd fast float %6452, %6110
  %6460 = fadd fast float %6455, %6111
  %6461 = fadd fast float %6458, %6112
  %6462 = fmul fast float %6451, %6447
  %6463 = fmul fast float %6454, %6448
  %6464 = fmul fast float %6457, %6449
  %6465 = fadd fast float %6462, %6107
  %6466 = fadd fast float %6463, %6108
  %6467 = fadd fast float %6464, %6109
  br label %6185

; <label>:6468                                    ; preds = %6185
  br label %6469

; <label>:6469                                    ; preds = %6468, %6073
  %6470 = phi float [ %6075, %6073 ], [ %6186, %6468 ]
  %6471 = phi float [ %6076, %6073 ], [ %6187, %6468 ]
  %6472 = phi float [ %6077, %6073 ], [ %6188, %6468 ]
  %6473 = phi float [ %6078, %6073 ], [ %6189, %6468 ]
  %6474 = phi float [ %6079, %6073 ], [ %6190, %6468 ]
  %6475 = phi float [ %6080, %6073 ], [ %6191, %6468 ]
  %6476 = add i32 %6074, 1
  %6477 = icmp ugt i32 %6476, %6070
  br i1 %6477, label %6478, label %6073

; <label>:6478                                    ; preds = %6469
  br label %6479

; <label>:6479                                    ; preds = %6478, %6049, %6039
  %6480 = phi float [ %6040, %6039 ], [ %6040, %6049 ], [ %6470, %6478 ]
  %6481 = phi float [ %6041, %6039 ], [ %6041, %6049 ], [ %6471, %6478 ]
  %6482 = phi float [ %6042, %6039 ], [ %6042, %6049 ], [ %6472, %6478 ]
  %6483 = phi float [ %6043, %6039 ], [ %6043, %6049 ], [ %6473, %6478 ]
  %6484 = phi float [ %6044, %6039 ], [ %6044, %6049 ], [ %6474, %6478 ]
  %6485 = phi float [ %6045, %6039 ], [ %6045, %6049 ], [ %6475, %6478 ]
  %6486 = call float @dx.op.unary.f32(i32 24, float %4695)  ; Sqrt(value)
  %6487 = call float @dx.op.unary.f32(i32 24, float %4696)  ; Sqrt(value)
  %6488 = call float @dx.op.unary.f32(i32 24, float %4697)  ; Sqrt(value)
  %6489 = fmul fast float %6486, %6483
  %6490 = fmul fast float %6487, %6484
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 0
  br i1 %183, label %6493, label %6522

; <label>:6493                                    ; preds = %6479
  %6494 = fadd fast float %6485, %4093
  %6495 = fmul fast float %6494, %4094
  %6496 = fsub fast float 1.000000e+00, %4094
  %6497 = call float @dx.op.unary.f32(i32 7, float %6496)  ; Saturate(value)
  %6498 = fmul fast float %4700, 2.000000e+00
  %6499 = fmul fast float %6498, %4721
  %6500 = fsub fast float %4689, %6499
  %6501 = call float @dx.op.unary.f32(i32 7, float %6500)  ; Saturate(value)
  %6502 = fsub fast float 1.000000e+00, %6501
  %6503 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6504 = extractvalue %dx.types.CBufRet.f32 %6503, 3
  %6505 = fmul fast float %6502, %6497
  %6506 = fmul fast float %6505, %6504
  %6507 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6508 = extractvalue %dx.types.CBufRet.f32 %6507, 0
  %6509 = fmul fast float %6508, %5789
  %6510 = extractvalue %dx.types.CBufRet.f32 %6507, 2
  %6511 = fmul fast float %6510, %4716
  %6512 = fadd fast float %6490, %6489
  %6513 = fmul fast float %6492, %6512
  %6514 = extractvalue %dx.types.CBufRet.f32 %6503, 1
  %6515 = fadd fast float %6506, %6495
  %6516 = fsub fast float %6515, %6509
  %6517 = fadd fast float %6516, %6511
  %6518 = fsub fast float %6517, %6514
  %6519 = extractvalue %dx.types.CBufRet.f32 %6503, 2
  %6520 = fmul fast float %6518, %6519
  %6521 = call float @dx.op.unary.f32(i32 7, float %6520)  ; Saturate(value)
  br label %6538

; <label>:6522                                    ; preds = %6479
  %6523 = fmul fast float %6488, %6485
  %6524 = fmul fast float %6492, %6489
  %6525 = fmul fast float %6492, %6490
  %6526 = fmul fast float %6523, %6492
  %6527 = add i32 %43, 372
  %6528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6527, i32 undef)  ; BufferLoad(srv,index,wot)
  %6529 = extractvalue %dx.types.ResRet.i32 %6528, 0
  %6530 = and i32 %6529, 32
  %6531 = icmp eq i32 %6530, 0
  br i1 %6531, label %6538, label %6532

; <label>:6532                                    ; preds = %6522
  %6533 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6534 = extractvalue %dx.types.CBufRet.f32 %6533, 0
  %6535 = fmul fast float %6534, 0x3FE99999A0000000
  %6536 = fadd fast float %6534, %6524
  %6537 = fadd fast float %6535, %6526
  br label %6538

; <label>:6538                                    ; preds = %6532, %6522, %6493
  %6539 = phi float [ %6513, %6493 ], [ %6536, %6532 ], [ %6524, %6522 ]
  %6540 = phi float [ %6521, %6493 ], [ %6525, %6532 ], [ %6525, %6522 ]
  %6541 = phi float [ 1.000000e+00, %6493 ], [ %6537, %6532 ], [ %6526, %6522 ]
  %6542 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6543 = extractvalue %dx.types.CBufRet.f32 %6542, 0
  %6544 = fmul fast float %6543, %6481
  %6545 = fmul fast float %6543, %6482
  %6546 = fadd fast float %6481, %6480
  %6547 = select i1 %183, float %6546, float %6480
  %6548 = fmul float %6547, %6543
  %6549 = select i1 %183, float 0.000000e+00, float %6544
  %6550 = select i1 %183, float 0.000000e+00, float %6545
  %6551 = fmul fast float %6539, %6486
  %6552 = fmul fast float %6540, %6487
  %6553 = fmul fast float %6541, %6488
  %6554 = fadd fast float %6548, %6551
  %6555 = fadd fast float %6549, %6552
  %6556 = fadd fast float %6550, %6553
  %6557 = select i1 %183, float %6540, float %6555
  %6558 = select i1 %183, float %6541, float %6556
  %6559 = call float @dx.op.binary.f32(i32 36, float %6554, float 3.225500e+04)  ; FMin(a,b)
  %6560 = call float @dx.op.binary.f32(i32 36, float %6557, float 3.225500e+04)  ; FMin(a,b)
  %6561 = call float @dx.op.binary.f32(i32 36, float %6558, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6559)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6560)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6561)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

; Function Attrs: nounwind readonly
declare %dx.types.Dimensions @dx.op.getDimensions(i32, %dx.types.Handle, i32) #2

; Function Attrs: nounwind readonly
declare float @dx.op.calculateLOD.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, i1) #2

; Function Attrs: nounwind readnone
declare i32 @dx.op.unaryBits.i32(i32, i32) #0

; Function Attrs: nounwind readnone
declare float @dx.op.dot4.f32(i32, float, float, float, float, float, float, float, float) #0

; Function Attrs: nounwind readonly
declare %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32, %dx.types.Handle, %dx.types.Handle, float, float, float, float, i32, i32, i32, float, float, float, float, float, float, float) #2

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
!57 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
!58 = !{void ()* @ps_main, !"ps_main", !59, !4, !81}
!59 = !{!60, !79, null}
!60 = !{!61, !64, !66, !68, !70, !72, !73, !74, !75, !76, !78}
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
!72 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 5, i8 0, !69}
!73 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, !71}
!74 = !{i32 7, !"SECONDARY_TEXCOORDS", i8 9, i8 0, !62, i8 2, i32 1, i8 2, i32 7, i8 0, !67}
!75 = !{i32 8, !"SCEONDARY_NORMAL", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 8, i8 0, !71}
!76 = !{i32 9, !"PACKED_TRI_DATA", i8 5, i8 0, !62, i8 1, i32 1, i8 4, i32 9, i8 0, !77}
!77 = !{i32 3, i32 13}
!78 = !{i32 10, !"SV_SampleIndex", i8 5, i8 12, !62, i8 1, i32 1, i8 1, i32 -1, i8 -1, null}
!79 = !{!80}
!80 = !{i32 0, !"SV_Target", i8 9, i8 16, !62, i8 0, i32 1, i8 4, i32 0, i8 0, !71}
!81 = !{i32 0, i64 24}
!82 = distinct !{!82, !"dx.controlflow.hints", i32 1}
!83 = distinct !{!83, !"dx.controlflow.hints", i32 1}
!84 = distinct !{!84, !"dx.controlflow.hints", i32 1}
!85 = distinct !{!85, !86}
!86 = !{!"llvm.loop.unroll.disable"}
!87 = distinct !{!87, !"dx.controlflow.hints", i32 1}
!88 = distinct !{!88, !"dx.controlflow.hints", i32 1}
!89 = distinct !{!89, !"dx.controlflow.hints", i32 1}

