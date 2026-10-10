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
; PACKED_TRI_DATA          0   xyzw        9     NONE    uint   x z 
; SV_SampleIndex           0    N/A  special   SAMPLE    uint     NO
;
;
; Output signature:
;
; Name                 Index   Mask Register SysValue  Format   Used
; -------------------- ----- ------ -------- -------- ------- ------
; SV_Target                0   xyzw        0   TARGET   float   xyzw
;
; shader hash: 819914f2709b5f734cfd25f52211213a
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 20, 21, 22, 24, 25, 26, 27, 28, 29, 32, 33, 34, 35, 36, 38 }
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
  %45 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %46 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %47 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %48 = call float @dx.op.loadInput.f32(i32 4, i32 8, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %49 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %50 = call float @dx.op.loadInput.f32(i32 4, i32 7, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %51 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 6, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 5, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %68 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %69 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %70 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %71 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %72 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %73 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %74 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %75 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %76 = extractvalue %dx.types.CBufRet.f32 %75, 0
  %77 = fmul fast float %76, %70
  %78 = fmul fast float %76, %71
  %79 = call float @dx.op.dot3.f32(i32 55, float %62, float %63, float %64, float %62, float %63, float %64)  ; Dot3(ax,ay,az,bx,by,bz)
  %80 = bitcast float %79 to i32
  %81 = ashr i32 %80, 1
  %82 = sub nsw i32 1597250115, %81
  %83 = bitcast i32 %82 to float
  %84 = fmul fast float %83, %62
  %85 = fmul fast float %83, %63
  %86 = fmul fast float %83, %64
  %87 = fmul fast float %63, %60
  %88 = fmul fast float %64, %59
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %64, %58
  %91 = fmul fast float %62, %60
  %92 = fsub fast float %90, %91
  %93 = fmul fast float %62, %59
  %94 = fmul fast float %63, %58
  %95 = fsub fast float %93, %94
  %96 = fmul fast float %89, %61
  %97 = fmul fast float %92, %61
  %98 = fmul fast float %95, %61
  %99 = call float @dx.op.dot3.f32(i32 55, float %51, float %52, float %53, float %51, float %52, float %53)  ; Dot3(ax,ay,az,bx,by,bz)
  %100 = bitcast float %99 to i32
  %101 = ashr i32 %100, 1
  %102 = sub nsw i32 1597250115, %101
  %103 = bitcast i32 %102 to float
  %104 = fmul fast float %103, %51
  %105 = fmul fast float %103, %52
  %106 = fmul fast float %103, %53
  %107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %108 = extractvalue %dx.types.CBufRet.f32 %107, 2
  %109 = extractvalue %dx.types.CBufRet.f32 %107, 3
  %110 = fmul fast float %77, 2.000000e+00
  %111 = fmul fast float %110, %108
  %112 = fmul fast float %78, 2.000000e+00
  %113 = fmul fast float %112, %109
  %114 = fsub fast float 1.000000e+00, %111
  %115 = fsub fast float 1.000000e+00, %113
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fmul fast float %114, %117
  %121 = fmul fast float %114, %118
  %122 = fmul fast float %114, %119
  %123 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %124 = extractvalue %dx.types.CBufRet.f32 %123, 0
  %125 = extractvalue %dx.types.CBufRet.f32 %123, 1
  %126 = extractvalue %dx.types.CBufRet.f32 %123, 2
  %127 = fmul fast float %115, %124
  %128 = fmul fast float %115, %125
  %129 = fmul fast float %115, %126
  %130 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %131 = extractvalue %dx.types.CBufRet.f32 %130, 0
  %132 = extractvalue %dx.types.CBufRet.f32 %130, 1
  %133 = extractvalue %dx.types.CBufRet.f32 %130, 2
  %134 = fadd fast float %127, %131
  %135 = fadd fast float %134, %120
  %136 = fadd fast float %128, %132
  %137 = fadd fast float %136, %121
  %138 = fadd fast float %129, %133
  %139 = fadd fast float %138, %122
  %140 = fmul fast float %135, %72
  %141 = fmul fast float %137, %72
  %142 = fmul fast float %139, %72
  %143 = add i32 %43, 360
  %144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %143, i32 undef)  ; BufferLoad(srv,index,wot)
  %145 = extractvalue %dx.types.ResRet.i32 %144, 0
  %146 = extractvalue %dx.types.ResRet.i32 %144, 1
  %147 = extractvalue %dx.types.ResRet.i32 %144, 2
  %148 = extractvalue %dx.types.ResRet.i32 %144, 3
  %149 = bitcast i32 %145 to float
  %150 = bitcast i32 %146 to float
  %151 = bitcast i32 %147 to float
  %152 = bitcast i32 %148 to float
  %153 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %154 = call float @dx.op.unary.f32(i32 25, float %153)  ; Rsqrt(value)
  %155 = fmul fast float %154, %84
  %156 = fmul fast float %154, %85
  %157 = fmul fast float %154, %86
  %158 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %140, float %141, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %159 = call float @dx.op.unary.f32(i32 25, float %158)  ; Rsqrt(value)
  %160 = fmul fast float %159, %140
  %161 = fmul fast float %159, %141
  %162 = fmul fast float %159, %142
  %163 = call float @dx.op.dot3.f32(i32 55, float %160, float %161, float %162, float %155, float %156, float %157)  ; Dot3(ax,ay,az,bx,by,bz)
  %164 = fmul fast float %163, %163
  %165 = fmul fast float %164, %151
  %166 = fadd fast float %165, %152
  %167 = call float @dx.op.unary.f32(i32 7, float %166)  ; Saturate(value)
  %168 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 310)  ; CBufferLoadLegacy(handle,regIndex)
  %169 = extractvalue %dx.types.CBufRet.f32 %168, 3
  %170 = fmul fast float %169, %158
  %171 = fsub fast float %149, %170
  %172 = fmul fast float %171, %150
  %173 = call float @dx.op.unary.f32(i32 7, float %172)  ; Saturate(value)
  %174 = fmul fast float %173, %167
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 2
  %177 = extractvalue %dx.types.CBufRet.f32 %175, 3
  %178 = fmul fast float %176, %77
  %179 = fmul fast float %177, %78
  %180 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %181 = extractvalue %dx.types.ResRet.i32 %180, 0
  %182 = and i32 %181, 114688
  %183 = icmp ne i32 %182, 0
  %184 = select i1 %183, float %178, float 0.000000e+00
  %185 = select i1 %183, float %179, float 0.000000e+00
  %186 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %184, float %185, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %187 = extractvalue %dx.types.ResRet.f32 %186, 0
  %188 = fmul fast float %187, 2.550000e+02
  %189 = fptoui float %188 to i32
  %190 = select i1 %183, i32 %189, i32 0
  %191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %192 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %193 = extractvalue %dx.types.CBufRet.i32 %192, 3
  %194 = and i32 %193, 3
  %195 = icmp ne i32 %194, 0
  %196 = and i32 %193, 4
  %197 = icmp ne i32 %196, 0
  %198 = and i1 %195, %197
  br i1 %198, label %199, label %210

; <label>:199                                     ; preds = %0
  %200 = extractvalue %dx.types.CBufRet.f32 %191, 3
  %201 = fmul fast float %200, %78
  %202 = extractvalue %dx.types.CBufRet.f32 %191, 2
  %203 = fmul fast float %202, %77
  %204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %203, float %201, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %205 = extractvalue %dx.types.ResRet.f32 %204, 0
  %206 = fsub fast float 1.000000e+00, %205
  %207 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %208 = extractvalue %dx.types.CBufRet.f32 %207, 0
  %209 = fcmp fast olt float %206, %208
  br label %213

; <label>:210                                     ; preds = %0
  %211 = icmp eq i32 %196, 0
  %212 = and i1 %195, %211
  br label %213

; <label>:213                                     ; preds = %210, %199
  %214 = phi i1 [ %209, %199 ], [ %212, %210 ]
  %215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %216 = extractvalue %dx.types.CBufRet.f32 %215, 2
  %217 = fmul fast float %216, 0x3FE3C6EF40000000
  %218 = frem fast float %77, 2.560000e+02
  %219 = frem fast float %78, 2.560000e+02
  %220 = fptoui float %218 to i32
  %221 = fptoui float %219 to i32
  %222 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %220, i32 %221, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %223 = extractvalue %dx.types.ResRet.f32 %222, 0
  %224 = extractvalue %dx.types.ResRet.f32 %222, 1
  %225 = fadd fast float %223, %217
  %226 = fadd fast float %224, %217
  %227 = call float @dx.op.unary.f32(i32 22, float %225)  ; Frc(value)
  %228 = call float @dx.op.unary.f32(i32 22, float %226)  ; Frc(value)
  %229 = add i32 %43, 156
  %230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %229, i32 undef)  ; BufferLoad(srv,index,wot)
  %231 = extractvalue %dx.types.ResRet.i32 %230, 0
  %232 = shl i32 %231, 4
  %233 = and i32 %232, 32752
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %231, 7
  %236 = and i32 %235, 32752
  %237 = call float @dx.op.legacyF16ToF32(i32 131, i32 %236)  ; LegacyF16ToF32(value)
  %238 = lshr i32 %231, 22
  %239 = shl nuw nsw i32 %238, 5
  %240 = call float @dx.op.legacyF16ToF32(i32 131, i32 %239)  ; LegacyF16ToF32(value)
  %241 = add i32 %43, 216
  %242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %243 = extractvalue %dx.types.ResRet.i32 %242, 0
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %243, 8
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = lshr i32 %243, 16
  %252 = and i32 %251, 255
  %253 = uitofp i32 %252 to float
  %254 = fmul fast float %253, 0x3F70101020000000
  %255 = add i32 %43, 36
  %256 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %255, i32 undef)  ; BufferLoad(srv,index,wot)
  %257 = extractvalue %dx.types.ResRet.i32 %256, 0
  %258 = and i32 %257, 65535
  %259 = call float @dx.op.legacyF16ToF32(i32 131, i32 %258)  ; LegacyF16ToF32(value)
  %260 = lshr i32 %257, 16
  %261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %260)  ; LegacyF16ToF32(value)
  %262 = add i32 %43, 288
  %263 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %262, i32 undef)  ; BufferLoad(srv,index,wot)
  %264 = extractvalue %dx.types.ResRet.i32 %263, 0
  %265 = and i32 %264, 65535
  %266 = call float @dx.op.legacyF16ToF32(i32 131, i32 %265)  ; LegacyF16ToF32(value)
  %267 = lshr i32 %264, 16
  %268 = call float @dx.op.legacyF16ToF32(i32 131, i32 %267)  ; LegacyF16ToF32(value)
  %269 = fmul fast float %266, 0x3F50624DE0000000
  %270 = fmul fast float %268, 0x3F50624DE0000000
  %271 = add i32 %43, 172
  %272 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %271, i32 undef)  ; BufferLoad(srv,index,wot)
  %273 = extractvalue %dx.types.ResRet.i32 %272, 0
  %274 = shl i32 %273, 4
  %275 = and i32 %274, 32752
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %273, 7
  %278 = and i32 %277, 32752
  %279 = call float @dx.op.legacyF16ToF32(i32 131, i32 %278)  ; LegacyF16ToF32(value)
  %280 = lshr i32 %273, 22
  %281 = shl nuw nsw i32 %280, 5
  %282 = call float @dx.op.legacyF16ToF32(i32 131, i32 %281)  ; LegacyF16ToF32(value)
  %283 = add i32 %43, 232
  %284 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %285 = extractvalue %dx.types.ResRet.i32 %284, 0
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %285, 8
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = lshr i32 %285, 16
  %294 = and i32 %293, 255
  %295 = uitofp i32 %294 to float
  %296 = fmul fast float %295, 0x3F70101020000000
  %297 = add i32 %43, 52
  %298 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %297, i32 undef)  ; BufferLoad(srv,index,wot)
  %299 = extractvalue %dx.types.ResRet.i32 %298, 0
  %300 = and i32 %299, 65535
  %301 = call float @dx.op.legacyF16ToF32(i32 131, i32 %300)  ; LegacyF16ToF32(value)
  %302 = lshr i32 %299, 16
  %303 = call float @dx.op.legacyF16ToF32(i32 131, i32 %302)  ; LegacyF16ToF32(value)
  %304 = add i32 %43, 304
  %305 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %304, i32 undef)  ; BufferLoad(srv,index,wot)
  %306 = extractvalue %dx.types.ResRet.i32 %305, 0
  %307 = and i32 %306, 65535
  %308 = call float @dx.op.legacyF16ToF32(i32 131, i32 %307)  ; LegacyF16ToF32(value)
  %309 = lshr i32 %306, 16
  %310 = call float @dx.op.legacyF16ToF32(i32 131, i32 %309)  ; LegacyF16ToF32(value)
  %311 = fmul fast float %308, 0x3F50624DE0000000
  %312 = fmul fast float %310, 0x3F50624DE0000000
  %313 = add i32 %43, 188
  %314 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %313, i32 undef)  ; BufferLoad(srv,index,wot)
  %315 = extractvalue %dx.types.ResRet.i32 %314, 0
  %316 = shl i32 %315, 4
  %317 = and i32 %316, 32752
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %315, 7
  %320 = and i32 %319, 32752
  %321 = call float @dx.op.legacyF16ToF32(i32 131, i32 %320)  ; LegacyF16ToF32(value)
  %322 = lshr i32 %315, 22
  %323 = shl nuw nsw i32 %322, 5
  %324 = call float @dx.op.legacyF16ToF32(i32 131, i32 %323)  ; LegacyF16ToF32(value)
  %325 = add i32 %43, 248
  %326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %327 = extractvalue %dx.types.ResRet.i32 %326, 0
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %327, 8
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = lshr i32 %327, 16
  %336 = and i32 %335, 255
  %337 = uitofp i32 %336 to float
  %338 = fmul fast float %337, 0x3F70101020000000
  %339 = add i32 %43, 68
  %340 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %339, i32 undef)  ; BufferLoad(srv,index,wot)
  %341 = extractvalue %dx.types.ResRet.i32 %340, 0
  %342 = and i32 %341, 65535
  %343 = call float @dx.op.legacyF16ToF32(i32 131, i32 %342)  ; LegacyF16ToF32(value)
  %344 = lshr i32 %341, 16
  %345 = call float @dx.op.legacyF16ToF32(i32 131, i32 %344)  ; LegacyF16ToF32(value)
  %346 = add i32 %43, 320
  %347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %346, i32 undef)  ; BufferLoad(srv,index,wot)
  %348 = extractvalue %dx.types.ResRet.i32 %347, 0
  %349 = and i32 %348, 65535
  %350 = call float @dx.op.legacyF16ToF32(i32 131, i32 %349)  ; LegacyF16ToF32(value)
  %351 = lshr i32 %348, 16
  %352 = call float @dx.op.legacyF16ToF32(i32 131, i32 %351)  ; LegacyF16ToF32(value)
  %353 = fmul fast float %350, 0x3F50624DE0000000
  %354 = fmul fast float %352, 0x3F50624DE0000000
  %355 = add i32 %43, 204
  %356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %355, i32 undef)  ; BufferLoad(srv,index,wot)
  %357 = extractvalue %dx.types.ResRet.i32 %356, 0
  %358 = shl i32 %357, 4
  %359 = and i32 %358, 32752
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %357, 7
  %362 = and i32 %361, 32752
  %363 = call float @dx.op.legacyF16ToF32(i32 131, i32 %362)  ; LegacyF16ToF32(value)
  %364 = lshr i32 %357, 22
  %365 = shl nuw nsw i32 %364, 5
  %366 = call float @dx.op.legacyF16ToF32(i32 131, i32 %365)  ; LegacyF16ToF32(value)
  %367 = add i32 %43, 264
  %368 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %369 = extractvalue %dx.types.ResRet.i32 %368, 0
  %370 = and i32 %369, 255
  %371 = uitofp i32 %370 to float
  %372 = fmul fast float %371, 0x3F70101020000000
  %373 = lshr i32 %369, 8
  %374 = and i32 %373, 255
  %375 = uitofp i32 %374 to float
  %376 = fmul fast float %375, 0x3F70101020000000
  %377 = lshr i32 %369, 16
  %378 = and i32 %377, 255
  %379 = uitofp i32 %378 to float
  %380 = fmul fast float %379, 0x3F70101020000000
  %381 = add i32 %43, 84
  %382 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %381, i32 undef)  ; BufferLoad(srv,index,wot)
  %383 = extractvalue %dx.types.ResRet.i32 %382, 0
  %384 = and i32 %383, 65535
  %385 = call float @dx.op.legacyF16ToF32(i32 131, i32 %384)  ; LegacyF16ToF32(value)
  %386 = lshr i32 %383, 16
  %387 = call float @dx.op.legacyF16ToF32(i32 131, i32 %386)  ; LegacyF16ToF32(value)
  %388 = add i32 %43, 336
  %389 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %388, i32 undef)  ; BufferLoad(srv,index,wot)
  %390 = extractvalue %dx.types.ResRet.i32 %389, 0
  %391 = and i32 %390, 65535
  %392 = call float @dx.op.legacyF16ToF32(i32 131, i32 %391)  ; LegacyF16ToF32(value)
  %393 = lshr i32 %390, 16
  %394 = call float @dx.op.legacyF16ToF32(i32 131, i32 %393)  ; LegacyF16ToF32(value)
  %395 = fmul fast float %392, 0x3F50624DE0000000
  %396 = fmul fast float %394, 0x3F50624DE0000000
  %397 = add i32 %43, 348
  %398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %399 = extractvalue %dx.types.ResRet.i32 %398, 0
  %400 = and i32 %399, 32
  %401 = icmp eq i32 %400, 0
  %402 = and i32 %399, 64
  %403 = icmp eq i32 %402, 0
  %404 = and i32 %399, 128
  %405 = icmp eq i32 %404, 0
  %406 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %407 = extractvalue %dx.types.ResRet.i32 %406, 0
  %408 = and i32 %407, 2
  %409 = icmp eq i32 %408, 0
  br i1 %409, label %423, label %410

; <label>:410                                     ; preds = %213
  %411 = add i32 %43, 520
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = add i32 %413, 0
  %415 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %414, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %416 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %415, %dx.types.Handle %74, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %417 = extractvalue %dx.types.ResRet.f32 %416, 0
  %418 = extractvalue %dx.types.ResRet.f32 %416, 1
  %419 = extractvalue %dx.types.ResRet.f32 %416, 2
  %420 = fmul fast float %417, %67
  %421 = fmul fast float %418, %68
  %422 = fmul fast float %419, %69
  br label %423

; <label>:423                                     ; preds = %410, %213
  %424 = phi float [ %69, %213 ], [ %422, %410 ]
  %425 = phi float [ %68, %213 ], [ %421, %410 ]
  %426 = phi float [ %67, %213 ], [ %420, %410 ]
  %427 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %397, i32 undef)  ; BufferLoad(srv,index,wot)
  %428 = extractvalue %dx.types.ResRet.i32 %427, 0
  %429 = and i32 %428, 2
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %450, label %431

; <label>:431                                     ; preds = %423
  %432 = add i32 %43, 44
  %433 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %432, i32 undef)  ; BufferLoad(srv,index,wot)
  %434 = extractvalue %dx.types.ResRet.i32 %433, 0
  %435 = and i32 %434, 1
  %436 = icmp ne i32 %435, 0
  %437 = select i1 %436, float %426, float 1.000000e+00
  %438 = add i32 %43, 60
  %439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %438, i32 undef)  ; BufferLoad(srv,index,wot)
  %440 = extractvalue %dx.types.ResRet.i32 %439, 0
  %441 = and i32 %440, 1
  %442 = icmp ne i32 %441, 0
  %443 = select i1 %442, float %425, float 1.000000e+00
  %444 = add i32 %43, 76
  %445 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %444, i32 undef)  ; BufferLoad(srv,index,wot)
  %446 = extractvalue %dx.types.ResRet.i32 %445, 0
  %447 = and i32 %446, 1
  %448 = icmp ne i32 %447, 0
  %449 = select i1 %448, float %424, float 1.000000e+00
  br label %450

; <label>:450                                     ; preds = %431, %423
  %451 = phi float [ %424, %423 ], [ %449, %431 ]
  %452 = phi float [ %425, %423 ], [ %443, %431 ]
  %453 = phi float [ %426, %423 ], [ %437, %431 ]
  %454 = lshr i32 %428, 20
  %455 = and i32 %454, 3
  %456 = add nuw nsw i32 %455, 1
  %457 = add i32 %43, 24
  %458 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %459 = extractvalue %dx.types.ResRet.i32 %458, 0
  %460 = add i32 %43, 28
  %461 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %460, i32 undef)  ; BufferLoad(srv,index,wot)
  %462 = extractvalue %dx.types.ResRet.i32 %461, 0
  %463 = or i32 %462, %459
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %923, label %465

; <label>:465                                     ; preds = %450
  %466 = and i32 %459, 262144
  %467 = icmp ne i32 %466, 0
  %468 = select i1 %467, float %45, float 1.000000e+00
  %469 = select i1 %467, float %46, float 0.000000e+00
  %470 = select i1 %467, float %47, float 0.000000e+00
  %471 = select i1 %467, float %48, float 1.000000e+00
  %472 = select i1 %467, float %49, float %65
  %473 = select i1 %467, float %50, float %66
  %474 = add i32 %43, 284
  %475 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %476 = extractvalue %dx.types.ResRet.i32 %475, 0
  %477 = lshr i32 %476, 16
  %478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %477)  ; LegacyF16ToF32(value)
  %479 = fmul fast float %478, 0x3F50624DE0000000
  %480 = add i32 %43, 88
  %481 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %480, i32 undef)  ; BufferLoad(srv,index,wot)
  %482 = extractvalue %dx.types.ResRet.i32 %481, 0
  %483 = lshr i32 %482, 16
  %484 = and i32 %483, 255
  %485 = lshr i32 %482, 24
  %486 = add i32 %43, 292
  %487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %486, i32 undef)  ; BufferLoad(srv,index,wot)
  %488 = extractvalue %dx.types.ResRet.i32 %487, 0
  %489 = and i32 %488, 65535
  %490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %489)  ; LegacyF16ToF32(value)
  %491 = lshr i32 %488, 16
  %492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %491)  ; LegacyF16ToF32(value)
  %493 = add i32 %43, 32
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = lshr i32 %495, 22
  %497 = shl nuw nsw i32 %496, 5
  %498 = call float @dx.op.legacyF16ToF32(i32 131, i32 %497)  ; LegacyF16ToF32(value)
  %499 = shl i32 %495, 4
  %500 = and i32 %499, 32752
  %501 = call float @dx.op.legacyF16ToF32(i32 131, i32 %500)  ; LegacyF16ToF32(value)
  %502 = lshr i32 %495, 7
  %503 = and i32 %502, 32752
  %504 = call float @dx.op.legacyF16ToF32(i32 131, i32 %503)  ; LegacyF16ToF32(value)
  %505 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %506 = extractvalue %dx.types.CBufRet.f32 %505, 3
  %507 = fmul fast float %506, 1.000000e+03
  %508 = fmul fast float %269, %507
  %509 = call float @dx.op.unary.f32(i32 22, float %508)  ; Frc(value)
  %510 = fadd fast float %509, %259
  %511 = fmul fast float %270, %507
  %512 = call float @dx.op.unary.f32(i32 22, float %511)  ; Frc(value)
  %513 = fadd fast float %512, %261
  %514 = fmul fast float %479, %507
  %515 = call float @dx.op.unary.f32(i32 22, float %514)  ; Frc(value)
  %516 = fmul fast float %515, 0x401921FB60000000
  %517 = fadd fast float %516, %498
  %518 = call float @dx.op.unary.f32(i32 13, float %517)  ; Sin(value)
  %519 = call float @dx.op.unary.f32(i32 12, float %517)  ; Cos(value)
  %520 = fsub fast float -0.000000e+00, %518
  %521 = fadd fast float %472, -5.000000e-01
  %522 = fadd fast float %473, -5.000000e-01
  %523 = fmul fast float %490, %521
  %524 = fmul fast float %492, %522
  %525 = fadd fast float %523, 5.000000e-01
  %526 = fadd fast float %524, 5.000000e-01
  %527 = fmul fast float %501, %525
  %528 = fmul fast float %504, %526
  %529 = fmul fast float %519, %527
  %530 = call float @dx.op.tertiary.f32(i32 46, float %520, float %528, float %529)  ; FMad(a,b,c)
  %531 = fmul fast float %518, %527
  %532 = call float @dx.op.tertiary.f32(i32 46, float %519, float %528, float %531)  ; FMad(a,b,c)
  %533 = fadd fast float %510, %530
  %534 = fadd fast float %513, %532
  %535 = icmp ugt i32 %484, 1
  %536 = icmp ugt i32 %482, 33554431
  %537 = or i1 %536, %535
  br i1 %537, label %538, label %563

; <label>:538                                     ; preds = %465
  %539 = add i32 %43, 228
  %540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %539, i32 undef)  ; BufferLoad(srv,index,wot)
  %541 = extractvalue %dx.types.ResRet.i32 %540, 0
  %542 = lshr i32 %541, 16
  %543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %542)  ; LegacyF16ToF32(value)
  %544 = fmul fast float %506, %543
  %545 = call float @dx.op.unary.f32(i32 22, float %544)  ; Frc(value)
  %546 = mul nuw nsw i32 %484, %485
  %547 = uitofp i32 %546 to float
  %548 = fmul fast float %545, %547
  %549 = call float @dx.op.unary.f32(i32 27, float %548)  ; Round_ni(value)
  %550 = fptoui float %549 to i32
  %551 = urem i32 %550, %484
  %552 = udiv i32 %550, %485
  %553 = call float @dx.op.unary.f32(i32 22, float %533)  ; Frc(value)
  %554 = call float @dx.op.unary.f32(i32 22, float %534)  ; Frc(value)
  %555 = uitofp i32 %551 to float
  %556 = uitofp i32 %552 to float
  %557 = fadd fast float %553, %555
  %558 = fadd fast float %554, %556
  %559 = uitofp i32 %484 to float
  %560 = uitofp i32 %485 to float
  %561 = fdiv fast float %557, %559
  %562 = fdiv fast float %558, %560
  br label %563

; <label>:563                                     ; preds = %538, %465
  %564 = phi float [ %561, %538 ], [ %533, %465 ]
  %565 = phi float [ %562, %538 ], [ %534, %465 ]
  %566 = and i32 %459, 16
  %567 = icmp eq i32 %566, 0
  br i1 %567, label %764, label %568

; <label>:568                                     ; preds = %563
  %569 = add i32 %43, 408
  %570 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %569, i32 undef)  ; BufferLoad(srv,index,wot)
  %571 = extractvalue %dx.types.ResRet.i32 %570, 0
  %572 = add i32 %571, 0
  %573 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %572, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %574 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %573, %dx.types.Handle %73, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %575 = extractvalue %dx.types.ResRet.f32 %574, 0
  %576 = extractvalue %dx.types.ResRet.f32 %574, 1
  %577 = extractvalue %dx.types.ResRet.f32 %574, 2
  %578 = extractvalue %dx.types.ResRet.f32 %574, 3
  %579 = and i32 %482, 255
  %580 = uitofp i32 %579 to float
  %581 = lshr i32 %482, 8
  %582 = and i32 %581, 255
  %583 = uitofp i32 %582 to float
  %584 = fmul fast float %578, %580
  %585 = fadd fast float %584, %583
  %586 = fmul fast float %585, 0x3F70101000000000
  %587 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %588 = extractvalue %dx.types.ResRet.i32 %587, 0
  %589 = and i32 %588, 512
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %599, label %591

; <label>:591                                     ; preds = %568
  %592 = add i32 %43, 488
  %593 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %592, i32 undef)  ; BufferLoad(srv,index,wot)
  %594 = extractvalue %dx.types.ResRet.i32 %593, 0
  %595 = add i32 %594, 0
  %596 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %595, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %597 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %596, %dx.types.Handle %74, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %598 = extractvalue %dx.types.ResRet.f32 %597, 0
  br label %599

; <label>:599                                     ; preds = %591, %568
  %600 = phi float [ %598, %591 ], [ 1.000000e+00, %568 ]
  %601 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %602 = extractvalue %dx.types.ResRet.i32 %601, 0
  %603 = and i32 %602, 33554432
  %604 = icmp eq i32 %603, 0
  br i1 %604, label %711, label %605

; <label>:605                                     ; preds = %599
  %606 = add i32 %43, 224
  %607 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %606, i32 undef)  ; BufferLoad(srv,index,wot)
  %608 = extractvalue %dx.types.ResRet.i32 %607, 0
  %609 = and i32 %608, 65535
  %610 = call float @dx.op.legacyF16ToF32(i32 131, i32 %609)  ; LegacyF16ToF32(value)
  %611 = lshr i32 %608, 16
  %612 = call float @dx.op.legacyF16ToF32(i32 131, i32 %611)  ; LegacyF16ToF32(value)
  %613 = add i32 %43, 228
  %614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %613, i32 undef)  ; BufferLoad(srv,index,wot)
  %615 = extractvalue %dx.types.ResRet.i32 %614, 0
  %616 = and i32 %615, 65535
  %617 = call float @dx.op.legacyF16ToF32(i32 131, i32 %616)  ; LegacyF16ToF32(value)
  %618 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %241, i32 undef)  ; BufferLoad(srv,index,wot)
  %619 = extractvalue %dx.types.ResRet.i32 %618, 0
  %620 = lshr i32 %619, 24
  %621 = uitofp i32 %620 to float
  %622 = fmul fast float %621, 0x3F70101020000000
  %623 = and i32 %619, 255
  %624 = uitofp i32 %623 to float
  %625 = fmul fast float %624, 0x3F70101020000000
  %626 = lshr i32 %619, 8
  %627 = and i32 %626, 255
  %628 = uitofp i32 %627 to float
  %629 = fmul fast float %628, 0x3F70101020000000
  %630 = lshr i32 %619, 16
  %631 = and i32 %630, 255
  %632 = uitofp i32 %631 to float
  %633 = fmul fast float %632, 0x3F70101020000000
  %634 = add i32 %43, 220
  %635 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %634, i32 undef)  ; BufferLoad(srv,index,wot)
  %636 = extractvalue %dx.types.ResRet.i32 %635, 0
  %637 = lshr i32 %636, 24
  %638 = uitofp i32 %637 to float
  %639 = fmul fast float %638, 0x3F70101020000000
  %640 = and i32 %636, 255
  %641 = uitofp i32 %640 to float
  %642 = fmul fast float %641, 0x3F70101020000000
  %643 = lshr i32 %636, 8
  %644 = and i32 %643, 255
  %645 = uitofp i32 %644 to float
  %646 = fmul fast float %645, 0x3F70101020000000
  %647 = lshr i32 %636, 16
  %648 = and i32 %647, 255
  %649 = uitofp i32 %648 to float
  %650 = fmul fast float %649, 0x3F70101020000000
  %651 = bitcast float %575 to i32
  %652 = ashr i32 %651, 1
  %653 = sub nsw i32 1597463174, %652
  %654 = bitcast i32 %653 to float
  %655 = fmul fast float %575, 5.000000e-01
  %656 = fmul fast float %654, %654
  %657 = fmul fast float %656, %655
  %658 = fsub fast float 1.500000e+00, %657
  %659 = fmul fast float %654, %575
  %660 = fmul fast float %659, %658
  %661 = bitcast float %576 to i32
  %662 = ashr i32 %661, 1
  %663 = sub nsw i32 1597463174, %662
  %664 = bitcast i32 %663 to float
  %665 = fmul fast float %576, 5.000000e-01
  %666 = fmul fast float %664, %664
  %667 = fmul fast float %666, %665
  %668 = fsub fast float 1.500000e+00, %667
  %669 = fmul fast float %664, %576
  %670 = fmul fast float %669, %668
  %671 = bitcast float %577 to i32
  %672 = ashr i32 %671, 1
  %673 = sub nsw i32 1597463174, %672
  %674 = bitcast i32 %673 to float
  %675 = fmul fast float %577, 5.000000e-01
  %676 = fmul fast float %674, %674
  %677 = fmul fast float %676, %675
  %678 = fsub fast float 1.500000e+00, %677
  %679 = fmul fast float %674, %577
  %680 = fmul fast float %679, %678
  %681 = fsub fast float %660, %642
  %682 = fsub fast float %670, %646
  %683 = fsub fast float %680, %650
  %684 = fmul fast float %681, %610
  %685 = fmul fast float %682, %612
  %686 = fmul fast float %683, %617
  %687 = fadd fast float %684, %625
  %688 = fadd fast float %685, %629
  %689 = fadd fast float %686, %633
  %690 = call float @dx.op.unary.f32(i32 7, float %687)  ; Saturate(value)
  %691 = call float @dx.op.unary.f32(i32 7, float %688)  ; Saturate(value)
  %692 = call float @dx.op.unary.f32(i32 7, float %689)  ; Saturate(value)
  %693 = fmul fast float %690, %690
  %694 = fmul fast float %691, %691
  %695 = fmul fast float %692, %692
  %696 = fsub fast float %693, %575
  %697 = fsub fast float %694, %576
  %698 = fsub fast float %695, %577
  %699 = fmul fast float %696, %600
  %700 = fmul fast float %697, %600
  %701 = fmul fast float %698, %600
  %702 = fadd fast float %699, %575
  %703 = fadd fast float %700, %576
  %704 = fadd fast float %701, %577
  %705 = fadd fast float %622, %586
  %706 = fsub fast float %705, %639
  %707 = call float @dx.op.unary.f32(i32 7, float %706)  ; Saturate(value)
  %708 = fsub fast float %707, %586
  %709 = fmul fast float %708, %600
  %710 = fadd fast float %709, %586
  br label %764

; <label>:711                                     ; preds = %599
  %712 = and i32 %602, 134217728
  %713 = icmp eq i32 %712, 0
  br i1 %713, label %748, label %714

; <label>:714                                     ; preds = %711
  %715 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %716 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %717 = call float @dx.op.unary.f32(i32 24, float %254)  ; Sqrt(value)
  %718 = fadd fast float %715, -5.000000e-01
  %719 = fadd fast float %716, -5.000000e-01
  %720 = fadd fast float %717, -5.000000e-01
  %721 = fmul fast float %718, %600
  %722 = fmul fast float %719, %600
  %723 = fmul fast float %720, %600
  %724 = fadd fast float %721, 5.000000e-01
  %725 = fadd fast float %722, 5.000000e-01
  %726 = fadd fast float %723, 5.000000e-01
  %727 = call float @dx.op.unary.f32(i32 24, float %575)  ; Sqrt(value)
  %728 = call float @dx.op.unary.f32(i32 24, float %576)  ; Sqrt(value)
  %729 = call float @dx.op.unary.f32(i32 24, float %577)  ; Sqrt(value)
  %730 = fmul fast float %724, 2.000000e+00
  %731 = fsub fast float 1.000000e+00, %730
  %732 = fmul fast float %731, %727
  %733 = fadd fast float %732, %730
  %734 = fmul fast float %733, %727
  %735 = fmul fast float %725, 2.000000e+00
  %736 = fsub fast float 1.000000e+00, %735
  %737 = fmul fast float %736, %728
  %738 = fadd fast float %737, %735
  %739 = fmul fast float %738, %728
  %740 = fmul fast float %726, 2.000000e+00
  %741 = fsub fast float 1.000000e+00, %740
  %742 = fmul fast float %741, %729
  %743 = fadd fast float %742, %740
  %744 = fmul fast float %743, %729
  %745 = fmul fast float %734, %734
  %746 = fmul fast float %739, %739
  %747 = fmul fast float %744, %744
  br label %764

; <label>:748                                     ; preds = %711
  %749 = fmul fast float %246, %246
  %750 = fmul fast float %250, %250
  %751 = fmul fast float %254, %254
  %752 = fadd fast float %749, -1.000000e+00
  %753 = fadd fast float %750, -1.000000e+00
  %754 = fadd fast float %751, -1.000000e+00
  %755 = fmul fast float %600, %752
  %756 = fmul fast float %600, %753
  %757 = fmul fast float %600, %754
  %758 = fadd fast float %755, 1.000000e+00
  %759 = fadd fast float %756, 1.000000e+00
  %760 = fadd fast float %757, 1.000000e+00
  %761 = fmul fast float %758, %575
  %762 = fmul fast float %759, %576
  %763 = fmul fast float %760, %577
  br label %764

; <label>:764                                     ; preds = %748, %714, %605, %563
  %765 = phi float [ %710, %605 ], [ %586, %714 ], [ %586, %748 ], [ 0x3FA23C0BE0000000, %563 ]
  %766 = phi float [ %702, %605 ], [ %745, %714 ], [ %761, %748 ], [ 1.000000e+00, %563 ]
  %767 = phi float [ %703, %605 ], [ %746, %714 ], [ %762, %748 ], [ 1.000000e+00, %563 ]
  %768 = phi float [ %704, %605 ], [ %747, %714 ], [ %763, %748 ], [ 1.000000e+00, %563 ]
  %769 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %770 = extractvalue %dx.types.CBufRet.i32 %769, 1
  %771 = and i32 %770, 1
  %772 = icmp ne i32 %771, 0
  %773 = add i32 %43, 356
  %774 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %773, i32 undef)  ; BufferLoad(srv,index,wot)
  %775 = extractvalue %dx.types.ResRet.i32 %774, 0
  %776 = and i32 %775, 32
  %777 = icmp ne i32 %776, 0
  %778 = and i1 %772, %777
  %779 = select i1 %778, float 1.000000e+00, float %766
  %780 = select i1 %778, float 0x3FD3333340000000, float %767
  %781 = select i1 %778, float 0x3FD3333340000000, float %768
  %782 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %783 = extractvalue %dx.types.ResRet.i32 %782, 0
  %784 = and i32 %783, 32
  %785 = icmp eq i32 %784, 0
  br i1 %785, label %858, label %786

; <label>:786                                     ; preds = %764
  %787 = add i32 %43, 92
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %787, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = add i32 %43, 424
  %791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %790, i32 undef)  ; BufferLoad(srv,index,wot)
  %792 = extractvalue %dx.types.ResRet.i32 %791, 0
  %793 = add i32 %792, 0
  %794 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %793, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %795 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %794, %dx.types.Handle %73, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %796 = extractvalue %dx.types.ResRet.f32 %795, 0
  %797 = extractvalue %dx.types.ResRet.f32 %795, 1
  %798 = extractvalue %dx.types.ResRet.f32 %795, 2
  %799 = extractvalue %dx.types.ResRet.f32 %795, 3
  %800 = and i32 %789, 255
  %801 = uitofp i32 %800 to float
  %802 = lshr i32 %789, 8
  %803 = and i32 %802, 255
  %804 = uitofp i32 %803 to float
  %805 = lshr i32 %789, 16
  %806 = and i32 %805, 255
  %807 = uitofp i32 %806 to float
  %808 = fmul fast float %807, 0x3F70101000000000
  %809 = fmul fast float %796, %801
  %810 = fadd fast float %809, %804
  %811 = fmul fast float %810, 0x3F70101000000000
  %812 = fadd fast float %797, -5.000000e-01
  %813 = fadd fast float %799, -5.000000e-01
  %814 = fmul fast float %812, %808
  %815 = fmul fast float %813, %808
  %816 = fadd fast float %814, 5.000000e-01
  %817 = fadd fast float %815, 5.000000e-01
  %818 = fmul fast float %816, 2.000000e+00
  %819 = fadd fast float %818, -1.000000e+00
  %820 = fmul fast float %817, 2.000000e+00
  %821 = fadd fast float %820, -1.000000e+00
  %822 = fadd fast float %819, %821
  %823 = fmul fast float %822, 5.000000e-01
  %824 = fsub fast float %819, %821
  %825 = fmul fast float %824, 5.000000e-01
  %826 = call float @dx.op.unary.f32(i32 6, float %823)  ; FAbs(value)
  %827 = fsub fast float 1.000000e+00, %826
  %828 = call float @dx.op.unary.f32(i32 6, float %825)  ; FAbs(value)
  %829 = fsub fast float %827, %828
  %830 = call float @dx.op.dot3.f32(i32 55, float %823, float %825, float %829, float %823, float %825, float %829)  ; Dot3(ax,ay,az,bx,by,bz)
  %831 = call float @dx.op.unary.f32(i32 25, float %830)  ; Rsqrt(value)
  %832 = fmul fast float %823, %831
  %833 = fmul fast float %825, %831
  %834 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %835 = extractvalue %dx.types.ResRet.i32 %834, 0
  %836 = and i32 %835, 67108864
  %837 = icmp eq i32 %836, 0
  br i1 %837, label %854, label %838

; <label>:838                                     ; preds = %786
  %839 = add i32 %43, 280
  %840 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %839, i32 undef)  ; BufferLoad(srv,index,wot)
  %841 = extractvalue %dx.types.ResRet.i32 %840, 0
  %842 = and i32 %841, 65535
  %843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %842)  ; LegacyF16ToF32(value)
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %474, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = and i32 %845, 65535
  %847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %846)  ; LegacyF16ToF32(value)
  %848 = lshr i32 %841, 16
  %849 = call float @dx.op.legacyF16ToF32(i32 131, i32 %848)  ; LegacyF16ToF32(value)
  %850 = fsub fast float %811, %849
  %851 = fmul fast float %850, %843
  %852 = fadd fast float %851, %847
  %853 = call float @dx.op.unary.f32(i32 7, float %852)  ; Saturate(value)
  br label %854

; <label>:854                                     ; preds = %838, %786
  %855 = phi float [ %853, %838 ], [ %811, %786 ]
  %856 = call float @dx.op.dot2.f32(i32 54, float %832, float %833, float %468, float %469)  ; Dot2(ax,ay,bx,by)
  %857 = call float @dx.op.dot2.f32(i32 54, float %832, float %833, float %470, float %471)  ; Dot2(ax,ay,bx,by)
  br label %858

; <label>:858                                     ; preds = %854, %764
  %859 = phi float [ %855, %854 ], [ 0x3FD6666660000000, %764 ]
  %860 = phi float [ %856, %854 ], [ 0.000000e+00, %764 ]
  %861 = phi float [ %857, %854 ], [ 0.000000e+00, %764 ]
  %862 = phi float [ %798, %854 ], [ 1.000000e+00, %764 ]
  %863 = add i32 %43, 160
  %864 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %863, i32 undef)  ; BufferLoad(srv,index,wot)
  %865 = extractvalue %dx.types.ResRet.i32 %864, 0
  %866 = lshr i32 %865, 22
  %867 = shl nuw nsw i32 %866, 5
  %868 = call float @dx.op.legacyF16ToF32(i32 131, i32 %867)  ; LegacyF16ToF32(value)
  %869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %870 = extractvalue %dx.types.ResRet.i32 %869, 0
  %871 = and i32 %870, 64
  %872 = icmp eq i32 %871, 0
  br i1 %872, label %906, label %873

; <label>:873                                     ; preds = %858
  %874 = add i32 %43, 440
  %875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %874, i32 undef)  ; BufferLoad(srv,index,wot)
  %876 = extractvalue %dx.types.ResRet.i32 %875, 0
  %877 = add i32 %876, 0
  %878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %457, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 131072
  %882 = icmp eq i32 %881, 0
  %883 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %878, %dx.types.Handle %73, float %564, float %565, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %884 = extractvalue %dx.types.ResRet.f32 %883, 0
  %885 = extractvalue %dx.types.ResRet.f32 %883, 1
  %886 = extractvalue %dx.types.ResRet.f32 %883, 2
  %887 = fmul fast float %884, %234
  %888 = fmul fast float %885, %237
  %889 = fmul fast float %886, %240
  br i1 %882, label %896, label %890

; <label>:890                                     ; preds = %873
  %891 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %892 = extractvalue %dx.types.CBufRet.f32 %891, 0
  %893 = fmul fast float %892, %887
  %894 = fmul fast float %892, %888
  %895 = fmul fast float %892, %889
  br label %896

; <label>:896                                     ; preds = %890, %873
  %897 = phi float [ %893, %890 ], [ %887, %873 ]
  %898 = phi float [ %894, %890 ], [ %888, %873 ]
  %899 = phi float [ %895, %890 ], [ %889, %873 ]
  %900 = fmul fast float %897, %868
  %901 = select i1 %214, float %900, float %897
  %902 = call float @dx.op.dot3.f32(i32 55, float %901, float %898, float %899, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %903 = select i1 %214, float 0.000000e+00, float %897
  %904 = select i1 %214, float %902, float %898
  %905 = select i1 %214, float 0.000000e+00, float %899
  br label %906

; <label>:906                                     ; preds = %896, %858
  %907 = phi float [ %903, %896 ], [ 0.000000e+00, %858 ]
  %908 = phi float [ %904, %896 ], [ 0.000000e+00, %858 ]
  %909 = phi float [ %905, %896 ], [ 0.000000e+00, %858 ]
  %910 = add i32 %43, 96
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = and i32 %912, 255
  %914 = uitofp i32 %913 to float
  %915 = lshr i32 %912, 8
  %916 = and i32 %915, 255
  %917 = uitofp i32 %916 to float
  %918 = call float @dx.op.dot3.f32(i32 55, float %779, float %780, float %781, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %919 = fmul fast float %917, %918
  %920 = fadd fast float %919, %914
  %921 = fmul fast float %920, 0x3F70101020000000
  %922 = call float @dx.op.unary.f32(i32 7, float %921)  ; Saturate(value)
  br label %923

; <label>:923                                     ; preds = %906, %450
  %924 = phi float [ 0.000000e+00, %450 ], [ %860, %906 ]
  %925 = phi float [ 0.000000e+00, %450 ], [ %861, %906 ]
  %926 = phi float [ 0.000000e+00, %450 ], [ %779, %906 ]
  %927 = phi float [ 0.000000e+00, %450 ], [ %780, %906 ]
  %928 = phi float [ 0.000000e+00, %450 ], [ %781, %906 ]
  %929 = phi float [ 0.000000e+00, %450 ], [ %907, %906 ]
  %930 = phi float [ 0.000000e+00, %450 ], [ %908, %906 ]
  %931 = phi float [ 0.000000e+00, %450 ], [ %909, %906 ]
  %932 = phi float [ 0.000000e+00, %450 ], [ %765, %906 ]
  %933 = phi float [ 0.000000e+00, %450 ], [ 1.000000e+00, %906 ]
  %934 = phi float [ 0.000000e+00, %450 ], [ %859, %906 ]
  %935 = phi float [ 0.000000e+00, %450 ], [ %862, %906 ]
  %936 = phi float [ 0.000000e+00, %450 ], [ %922, %906 ]
  br i1 %401, label %1778, label %937

; <label>:937                                     ; preds = %923
  %938 = icmp ult i32 %456, 2
  %939 = add i32 %43, 40
  %940 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %941 = extractvalue %dx.types.ResRet.i32 %940, 0
  %942 = add i32 %43, 44
  %943 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %942, i32 undef)  ; BufferLoad(srv,index,wot)
  %944 = extractvalue %dx.types.ResRet.i32 %943, 0
  %945 = or i32 %944, %941
  %946 = icmp eq i32 %945, 0
  br i1 %946, label %1778, label %947

; <label>:947                                     ; preds = %937
  %948 = and i32 %941, 262144
  %949 = icmp ne i32 %948, 0
  %950 = select i1 %949, float %45, float 1.000000e+00
  %951 = select i1 %949, float %46, float 0.000000e+00
  %952 = select i1 %949, float %47, float 0.000000e+00
  %953 = select i1 %949, float %48, float 1.000000e+00
  %954 = select i1 %949, float %49, float %65
  %955 = select i1 %949, float %50, float %66
  %956 = add i32 %43, 300
  %957 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %958 = extractvalue %dx.types.ResRet.i32 %957, 0
  %959 = lshr i32 %958, 16
  %960 = call float @dx.op.legacyF16ToF32(i32 131, i32 %959)  ; LegacyF16ToF32(value)
  %961 = fmul fast float %960, 0x3F50624DE0000000
  %962 = add i32 %43, 104
  %963 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %964 = extractvalue %dx.types.ResRet.i32 %963, 0
  %965 = lshr i32 %964, 16
  %966 = and i32 %965, 255
  %967 = lshr i32 %964, 24
  %968 = add i32 %43, 308
  %969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %968, i32 undef)  ; BufferLoad(srv,index,wot)
  %970 = extractvalue %dx.types.ResRet.i32 %969, 0
  %971 = and i32 %970, 65535
  %972 = call float @dx.op.legacyF16ToF32(i32 131, i32 %971)  ; LegacyF16ToF32(value)
  %973 = lshr i32 %970, 16
  %974 = call float @dx.op.legacyF16ToF32(i32 131, i32 %973)  ; LegacyF16ToF32(value)
  %975 = add i32 %43, 48
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = lshr i32 %977, 22
  %979 = shl nuw nsw i32 %978, 5
  %980 = call float @dx.op.legacyF16ToF32(i32 131, i32 %979)  ; LegacyF16ToF32(value)
  %981 = shl i32 %977, 4
  %982 = and i32 %981, 32752
  %983 = call float @dx.op.legacyF16ToF32(i32 131, i32 %982)  ; LegacyF16ToF32(value)
  %984 = lshr i32 %977, 7
  %985 = and i32 %984, 32752
  %986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %985)  ; LegacyF16ToF32(value)
  %987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %988 = extractvalue %dx.types.CBufRet.f32 %987, 3
  %989 = fmul fast float %988, 1.000000e+03
  %990 = fmul fast float %311, %989
  %991 = call float @dx.op.unary.f32(i32 22, float %990)  ; Frc(value)
  %992 = fadd fast float %991, %301
  %993 = fmul fast float %312, %989
  %994 = call float @dx.op.unary.f32(i32 22, float %993)  ; Frc(value)
  %995 = fadd fast float %994, %303
  %996 = fmul fast float %961, %989
  %997 = call float @dx.op.unary.f32(i32 22, float %996)  ; Frc(value)
  %998 = fmul fast float %997, 0x401921FB60000000
  %999 = fadd fast float %998, %980
  %1000 = call float @dx.op.unary.f32(i32 13, float %999)  ; Sin(value)
  %1001 = call float @dx.op.unary.f32(i32 12, float %999)  ; Cos(value)
  %1002 = fsub fast float -0.000000e+00, %1000
  %1003 = fadd fast float %954, -5.000000e-01
  %1004 = fadd fast float %955, -5.000000e-01
  %1005 = fmul fast float %972, %1003
  %1006 = fmul fast float %974, %1004
  %1007 = fadd fast float %1005, 5.000000e-01
  %1008 = fadd fast float %1006, 5.000000e-01
  %1009 = fmul fast float %983, %1007
  %1010 = fmul fast float %986, %1008
  %1011 = fmul fast float %1001, %1009
  %1012 = call float @dx.op.tertiary.f32(i32 46, float %1002, float %1010, float %1011)  ; FMad(a,b,c)
  %1013 = fmul fast float %1000, %1009
  %1014 = call float @dx.op.tertiary.f32(i32 46, float %1001, float %1010, float %1013)  ; FMad(a,b,c)
  %1015 = fadd fast float %992, %1012
  %1016 = fadd fast float %995, %1014
  %1017 = icmp ugt i32 %966, 1
  %1018 = icmp ugt i32 %964, 33554431
  %1019 = or i1 %1018, %1017
  br i1 %1019, label %1020, label %1045

; <label>:1020                                    ; preds = %947
  %1021 = add i32 %43, 244
  %1022 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1021, i32 undef)  ; BufferLoad(srv,index,wot)
  %1023 = extractvalue %dx.types.ResRet.i32 %1022, 0
  %1024 = lshr i32 %1023, 16
  %1025 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1024)  ; LegacyF16ToF32(value)
  %1026 = fmul fast float %988, %1025
  %1027 = call float @dx.op.unary.f32(i32 22, float %1026)  ; Frc(value)
  %1028 = mul nuw nsw i32 %966, %967
  %1029 = uitofp i32 %1028 to float
  %1030 = fmul fast float %1027, %1029
  %1031 = call float @dx.op.unary.f32(i32 27, float %1030)  ; Round_ni(value)
  %1032 = fptoui float %1031 to i32
  %1033 = urem i32 %1032, %966
  %1034 = udiv i32 %1032, %967
  %1035 = call float @dx.op.unary.f32(i32 22, float %1015)  ; Frc(value)
  %1036 = call float @dx.op.unary.f32(i32 22, float %1016)  ; Frc(value)
  %1037 = uitofp i32 %1033 to float
  %1038 = uitofp i32 %1034 to float
  %1039 = fadd fast float %1035, %1037
  %1040 = fadd fast float %1036, %1038
  %1041 = uitofp i32 %966 to float
  %1042 = uitofp i32 %967 to float
  %1043 = fdiv fast float %1039, %1041
  %1044 = fdiv fast float %1040, %1042
  br label %1045

; <label>:1045                                    ; preds = %1020, %947
  %1046 = phi float [ %1043, %1020 ], [ %1015, %947 ]
  %1047 = phi float [ %1044, %1020 ], [ %1016, %947 ]
  %1048 = and i32 %941, 16777216
  %1049 = icmp eq i32 %1048, 0
  br i1 %1049, label %1159, label %1050

; <label>:1050                                    ; preds = %1045
  %1051 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1052 = extractvalue %dx.types.CBufRet.f32 %1051, 0
  %1053 = extractvalue %dx.types.CBufRet.f32 %1051, 1
  %1054 = extractvalue %dx.types.CBufRet.f32 %1051, 2
  %1055 = fadd fast float %1052, %140
  %1056 = fadd fast float %1053, %141
  %1057 = fadd fast float %1054, %142
  %1058 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1059 = extractvalue %dx.types.CBufRet.f32 %1058, 0
  %1060 = call float @dx.op.unary.f32(i32 7, float %1059)  ; Saturate(value)
  %1061 = icmp eq i32 %44, 65535
  br i1 %1061, label %1156, label %1062

; <label>:1062                                    ; preds = %1050
  %1063 = lshr i32 %44, 1
  %1064 = shl i32 %1063, 2
  %1065 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1064, i32 undef)  ; BufferLoad(srv,index,wot)
  %1066 = extractvalue %dx.types.ResRet.i32 %1065, 0
  %1067 = and i32 %44, 1
  %1068 = icmp ne i32 %1067, 0
  %1069 = lshr i32 %1066, 16
  %1070 = and i32 %1066, 65535
  %1071 = select i1 %1068, i32 %1069, i32 %1070
  %1072 = icmp eq i32 %1071, 65535
  br i1 %1072, label %1152, label %1073

; <label>:1073                                    ; preds = %1062
  %1074 = mul nuw nsw i32 %1071, 40
  %1075 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1074, i32 undef)  ; BufferLoad(srv,index,wot)
  %1076 = extractvalue %dx.types.ResRet.f32 %1075, 0
  %1077 = extractvalue %dx.types.ResRet.f32 %1075, 1
  %1078 = extractvalue %dx.types.ResRet.f32 %1075, 2
  %1079 = add nuw nsw i32 %1074, 12
  %1080 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1079, i32 undef)  ; BufferLoad(srv,index,wot)
  %1081 = extractvalue %dx.types.ResRet.f32 %1080, 0
  %1082 = extractvalue %dx.types.ResRet.f32 %1080, 1
  %1083 = extractvalue %dx.types.ResRet.f32 %1080, 2
  %1084 = add nuw nsw i32 %1074, 24
  %1085 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1084, i32 undef)  ; BufferLoad(srv,index,wot)
  %1086 = extractvalue %dx.types.ResRet.f32 %1085, 0
  %1087 = extractvalue %dx.types.ResRet.f32 %1085, 1
  %1088 = extractvalue %dx.types.ResRet.f32 %1085, 2
  %1089 = add nuw nsw i32 %1074, 36
  %1090 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1089, i32 undef)  ; BufferLoad(srv,index,wot)
  %1091 = extractvalue %dx.types.ResRet.f32 %1090, 0
  %1092 = fsub fast float %1055, %1076
  %1093 = fsub fast float %1056, %1077
  %1094 = fsub fast float %1057, %1078
  %1095 = fmul fast float %1091, %1092
  %1096 = fmul fast float %1091, %1093
  %1097 = fmul fast float %1091, %1094
  %1098 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1099 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1100 = call float @dx.op.unary.f32(i32 27, float %1097)  ; Round_ni(value)
  %1101 = fadd fast float %1098, 5.000000e-01
  %1102 = fadd fast float %1099, 5.000000e-01
  %1103 = fadd fast float %1100, 5.000000e-01
  %1104 = fmul fast float %1101, %1081
  %1105 = fmul fast float %1102, %1082
  %1106 = fmul fast float %1103, %1083
  %1107 = shl i32 %44, 2
  %1108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1109 = extractvalue %dx.types.ResRet.i32 %1108, 0
  %1110 = add i32 %1109, 0
  %1111 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1110, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1112 = call float @dx.op.unary.f32(i32 22, float %1104)  ; Frc(value)
  %1113 = call float @dx.op.unary.f32(i32 22, float %1105)  ; Frc(value)
  %1114 = call float @dx.op.unary.f32(i32 22, float %1106)  ; Frc(value)
  %1115 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1111, %dx.types.Handle %40, float %1112, float %1113, float %1114, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1116 = extractvalue %dx.types.ResRet.f32 %1115, 0
  %1117 = extractvalue %dx.types.ResRet.f32 %1115, 1
  %1118 = extractvalue %dx.types.ResRet.f32 %1115, 2
  %1119 = fmul fast float %1116, 1.023000e+03
  %1120 = fmul fast float %1117, 1.023000e+03
  %1121 = fmul fast float %1118, 1.023000e+03
  %1122 = fadd fast float %1119, 5.000000e-01
  %1123 = fadd fast float %1120, 5.000000e-01
  %1124 = fadd fast float %1121, 5.000000e-01
  %1125 = call float @dx.op.unary.f32(i32 27, float %1122)  ; Round_ni(value)
  %1126 = call float @dx.op.unary.f32(i32 27, float %1123)  ; Round_ni(value)
  %1127 = call float @dx.op.unary.f32(i32 27, float %1124)  ; Round_ni(value)
  %1128 = fsub fast float %1095, %1098
  %1129 = fsub fast float %1096, %1099
  %1130 = fsub fast float %1097, %1100
  %1131 = fmul fast float %1128, 7.500000e-01
  %1132 = fmul fast float %1129, 7.500000e-01
  %1133 = fmul fast float %1130, 7.500000e-01
  %1134 = fadd fast float %1098, 1.250000e-01
  %1135 = fadd fast float %1134, %1131
  %1136 = fadd fast float %1135, %1125
  %1137 = fadd fast float %1099, 1.250000e-01
  %1138 = fadd fast float %1137, %1132
  %1139 = fadd fast float %1138, %1126
  %1140 = fadd fast float %1100, 1.250000e-01
  %1141 = fadd fast float %1140, %1133
  %1142 = fadd fast float %1141, %1127
  %1143 = fmul fast float %1136, %1086
  %1144 = fmul fast float %1139, %1087
  %1145 = fmul fast float %1142, %1088
  %1146 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1107, i32 undef)  ; BufferLoad(srv,index,wot)
  %1147 = extractvalue %dx.types.ResRet.i32 %1146, 0
  %1148 = add i32 %1147, 0
  %1149 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1148, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1150 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1149, %dx.types.Handle %38, float %1143, float %1144, float %1145, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1151 = extractvalue %dx.types.ResRet.f32 %1150, 0
  br label %1152

; <label>:1152                                    ; preds = %1073, %1062
  %1153 = phi float [ %1151, %1073 ], [ -1.000000e+00, %1062 ]
  %1154 = fadd fast float %1153, %1060
  %1155 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  br label %1156

; <label>:1156                                    ; preds = %1152, %1050
  %1157 = phi float [ %1155, %1152 ], [ %1060, %1050 ]
  %1158 = fmul fast float %1157, %453
  br label %1159

; <label>:1159                                    ; preds = %1156, %1045
  %1160 = phi float [ %1158, %1156 ], [ %453, %1045 ]
  %1161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1162 = extractvalue %dx.types.ResRet.i32 %1161, 0
  %1163 = and i32 %1162, 256
  %1164 = icmp eq i32 %1163, 0
  br i1 %1164, label %1211, label %1165

; <label>:1165                                    ; preds = %1159
  %1166 = add i32 %43, 476
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1166, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = add i32 %1168, 0
  %1170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1171 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1170, %dx.types.Handle %74, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1172 = extractvalue %dx.types.ResRet.f32 %1171, 0
  %1173 = add i32 %43, 116
  %1174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1173, i32 undef)  ; BufferLoad(srv,index,wot)
  %1175 = extractvalue %dx.types.ResRet.i32 %1174, 0
  %1176 = shl i32 %1175, 4
  %1177 = and i32 %1176, 32752
  %1178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1177)  ; LegacyF16ToF32(value)
  %1179 = lshr i32 %1175, 7
  %1180 = and i32 %1179, 32752
  %1181 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1180)  ; LegacyF16ToF32(value)
  %1182 = fsub fast float 1.000000e+00, %1160
  %1183 = call float @dx.op.binary.f32(i32 35, float %1182, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1184 = bitcast float %1160 to i32
  %1185 = sitofp i32 %1184 to float
  %1186 = fadd fast float %1185, 0xC1CFBF8940000000
  %1187 = fmul fast float %1181, %1186
  %1188 = fadd fast float %1187, 0x41CFBF8940000000
  %1189 = fptosi float %1188 to i32
  %1190 = bitcast i32 %1189 to float
  %1191 = bitcast float %1183 to i32
  %1192 = sitofp i32 %1191 to float
  %1193 = fadd fast float %1192, 0xC1CFBF8940000000
  %1194 = fmul fast float %1193, %1181
  %1195 = fadd fast float %1194, 0x41CFBF8940000000
  %1196 = fptosi float %1195 to i32
  %1197 = bitcast i32 %1196 to float
  %1198 = fmul fast float %1190, %1178
  %1199 = fmul fast float %1197, %1178
  %1200 = fsub fast float %1183, %1198
  %1201 = fadd fast float %1199, %1183
  %1202 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1203 = call float @dx.op.unary.f32(i32 7, float %1201)  ; Saturate(value)
  %1204 = fsub fast float %1172, %1202
  %1205 = fsub fast float %1203, %1202
  %1206 = bitcast float %1205 to i32
  %1207 = sub nsw i32 2129859010, %1206
  %1208 = bitcast i32 %1207 to float
  %1209 = fmul fast float %1208, %1204
  %1210 = call float @dx.op.unary.f32(i32 7, float %1209)  ; Saturate(value)
  br label %1211

; <label>:1211                                    ; preds = %1165, %1159
  %1212 = phi float [ %1210, %1165 ], [ %1160, %1159 ]
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = and i32 %1214, 128
  %1216 = icmp eq i32 %1215, 0
  br i1 %1216, label %1233, label %1217

; <label>:1217                                    ; preds = %1211
  %1218 = add i32 %43, 460
  %1219 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1218, i32 undef)  ; BufferLoad(srv,index,wot)
  %1220 = extractvalue %dx.types.ResRet.i32 %1219, 0
  %1221 = add i32 %1220, 0
  %1222 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1221, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1223 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1222, %dx.types.Handle %74, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1224 = extractvalue %dx.types.ResRet.f32 %1223, 0
  %1225 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1226 = extractvalue %dx.types.ResRet.i32 %1225, 0
  %1227 = and i32 %1226, 524288
  %1228 = icmp ne i32 %1227, 0
  %1229 = fcmp fast ogt float %1224, 0x3FE0101020000000
  %1230 = select i1 %1229, float 1.000000e+00, float 0.000000e+00
  %1231 = select i1 %1228, float %1230, float %1224
  %1232 = fmul fast float %1231, %1212
  br label %1233

; <label>:1233                                    ; preds = %1217, %1211
  %1234 = phi float [ %1232, %1217 ], [ %1212, %1211 ]
  %1235 = fcmp fast ult float %1234, 0x3F70101020000000
  br i1 %1235, label %1778, label %1236

; <label>:1236                                    ; preds = %1233
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = and i32 %1238, 16
  %1240 = icmp eq i32 %1239, 0
  br i1 %1240, label %1439, label %1241

; <label>:1241                                    ; preds = %1236
  %1242 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %962, i32 undef)  ; BufferLoad(srv,index,wot)
  %1243 = extractvalue %dx.types.ResRet.i32 %1242, 0
  %1244 = add i32 %43, 412
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1244, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = add i32 %1246, 0
  %1248 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1247, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1249 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1248, %dx.types.Handle %73, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1250 = extractvalue %dx.types.ResRet.f32 %1249, 0
  %1251 = extractvalue %dx.types.ResRet.f32 %1249, 1
  %1252 = extractvalue %dx.types.ResRet.f32 %1249, 2
  %1253 = extractvalue %dx.types.ResRet.f32 %1249, 3
  %1254 = and i32 %1243, 255
  %1255 = uitofp i32 %1254 to float
  %1256 = lshr i32 %1243, 8
  %1257 = and i32 %1256, 255
  %1258 = uitofp i32 %1257 to float
  %1259 = fmul fast float %1253, %1255
  %1260 = fadd fast float %1259, %1258
  %1261 = fmul fast float %1260, 0x3F70101000000000
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = and i32 %1263, 512
  %1265 = icmp eq i32 %1264, 0
  br i1 %1265, label %1274, label %1266

; <label>:1266                                    ; preds = %1241
  %1267 = add i32 %43, 492
  %1268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1267, i32 undef)  ; BufferLoad(srv,index,wot)
  %1269 = extractvalue %dx.types.ResRet.i32 %1268, 0
  %1270 = add i32 %1269, 0
  %1271 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1270, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1272 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1271, %dx.types.Handle %74, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1273 = extractvalue %dx.types.ResRet.f32 %1272, 0
  br label %1274

; <label>:1274                                    ; preds = %1266, %1241
  %1275 = phi float [ %1273, %1266 ], [ 1.000000e+00, %1241 ]
  %1276 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1277 = extractvalue %dx.types.ResRet.i32 %1276, 0
  %1278 = and i32 %1277, 33554432
  %1279 = icmp eq i32 %1278, 0
  br i1 %1279, label %1386, label %1280

; <label>:1280                                    ; preds = %1274
  %1281 = add i32 %43, 240
  %1282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1281, i32 undef)  ; BufferLoad(srv,index,wot)
  %1283 = extractvalue %dx.types.ResRet.i32 %1282, 0
  %1284 = and i32 %1283, 65535
  %1285 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1284)  ; LegacyF16ToF32(value)
  %1286 = lshr i32 %1283, 16
  %1287 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1286)  ; LegacyF16ToF32(value)
  %1288 = add i32 %43, 244
  %1289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1288, i32 undef)  ; BufferLoad(srv,index,wot)
  %1290 = extractvalue %dx.types.ResRet.i32 %1289, 0
  %1291 = and i32 %1290, 65535
  %1292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1291)  ; LegacyF16ToF32(value)
  %1293 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %283, i32 undef)  ; BufferLoad(srv,index,wot)
  %1294 = extractvalue %dx.types.ResRet.i32 %1293, 0
  %1295 = lshr i32 %1294, 24
  %1296 = uitofp i32 %1295 to float
  %1297 = fmul fast float %1296, 0x3F70101020000000
  %1298 = and i32 %1294, 255
  %1299 = uitofp i32 %1298 to float
  %1300 = fmul fast float %1299, 0x3F70101020000000
  %1301 = lshr i32 %1294, 8
  %1302 = and i32 %1301, 255
  %1303 = uitofp i32 %1302 to float
  %1304 = fmul fast float %1303, 0x3F70101020000000
  %1305 = lshr i32 %1294, 16
  %1306 = and i32 %1305, 255
  %1307 = uitofp i32 %1306 to float
  %1308 = fmul fast float %1307, 0x3F70101020000000
  %1309 = add i32 %43, 236
  %1310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1309, i32 undef)  ; BufferLoad(srv,index,wot)
  %1311 = extractvalue %dx.types.ResRet.i32 %1310, 0
  %1312 = lshr i32 %1311, 24
  %1313 = uitofp i32 %1312 to float
  %1314 = fmul fast float %1313, 0x3F70101020000000
  %1315 = and i32 %1311, 255
  %1316 = uitofp i32 %1315 to float
  %1317 = fmul fast float %1316, 0x3F70101020000000
  %1318 = lshr i32 %1311, 8
  %1319 = and i32 %1318, 255
  %1320 = uitofp i32 %1319 to float
  %1321 = fmul fast float %1320, 0x3F70101020000000
  %1322 = lshr i32 %1311, 16
  %1323 = and i32 %1322, 255
  %1324 = uitofp i32 %1323 to float
  %1325 = fmul fast float %1324, 0x3F70101020000000
  %1326 = bitcast float %1250 to i32
  %1327 = ashr i32 %1326, 1
  %1328 = sub nsw i32 1597463174, %1327
  %1329 = bitcast i32 %1328 to float
  %1330 = fmul fast float %1250, 5.000000e-01
  %1331 = fmul fast float %1329, %1329
  %1332 = fmul fast float %1331, %1330
  %1333 = fsub fast float 1.500000e+00, %1332
  %1334 = fmul fast float %1329, %1250
  %1335 = fmul fast float %1334, %1333
  %1336 = bitcast float %1251 to i32
  %1337 = ashr i32 %1336, 1
  %1338 = sub nsw i32 1597463174, %1337
  %1339 = bitcast i32 %1338 to float
  %1340 = fmul fast float %1251, 5.000000e-01
  %1341 = fmul fast float %1339, %1339
  %1342 = fmul fast float %1341, %1340
  %1343 = fsub fast float 1.500000e+00, %1342
  %1344 = fmul fast float %1339, %1251
  %1345 = fmul fast float %1344, %1343
  %1346 = bitcast float %1252 to i32
  %1347 = ashr i32 %1346, 1
  %1348 = sub nsw i32 1597463174, %1347
  %1349 = bitcast i32 %1348 to float
  %1350 = fmul fast float %1252, 5.000000e-01
  %1351 = fmul fast float %1349, %1349
  %1352 = fmul fast float %1351, %1350
  %1353 = fsub fast float 1.500000e+00, %1352
  %1354 = fmul fast float %1349, %1252
  %1355 = fmul fast float %1354, %1353
  %1356 = fsub fast float %1335, %1317
  %1357 = fsub fast float %1345, %1321
  %1358 = fsub fast float %1355, %1325
  %1359 = fmul fast float %1356, %1285
  %1360 = fmul fast float %1357, %1287
  %1361 = fmul fast float %1358, %1292
  %1362 = fadd fast float %1359, %1300
  %1363 = fadd fast float %1360, %1304
  %1364 = fadd fast float %1361, %1308
  %1365 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1366 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1367 = call float @dx.op.unary.f32(i32 7, float %1364)  ; Saturate(value)
  %1368 = fmul fast float %1365, %1365
  %1369 = fmul fast float %1366, %1366
  %1370 = fmul fast float %1367, %1367
  %1371 = fsub fast float %1368, %1250
  %1372 = fsub fast float %1369, %1251
  %1373 = fsub fast float %1370, %1252
  %1374 = fmul fast float %1371, %1275
  %1375 = fmul fast float %1372, %1275
  %1376 = fmul fast float %1373, %1275
  %1377 = fadd fast float %1374, %1250
  %1378 = fadd fast float %1375, %1251
  %1379 = fadd fast float %1376, %1252
  %1380 = fadd fast float %1297, %1261
  %1381 = fsub fast float %1380, %1314
  %1382 = call float @dx.op.unary.f32(i32 7, float %1381)  ; Saturate(value)
  %1383 = fsub fast float %1382, %1261
  %1384 = fmul fast float %1383, %1275
  %1385 = fadd fast float %1384, %1261
  br label %1439

; <label>:1386                                    ; preds = %1274
  %1387 = and i32 %1277, 134217728
  %1388 = icmp eq i32 %1387, 0
  br i1 %1388, label %1423, label %1389

; <label>:1389                                    ; preds = %1386
  %1390 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %1391 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %1392 = call float @dx.op.unary.f32(i32 24, float %296)  ; Sqrt(value)
  %1393 = fadd fast float %1390, -5.000000e-01
  %1394 = fadd fast float %1391, -5.000000e-01
  %1395 = fadd fast float %1392, -5.000000e-01
  %1396 = fmul fast float %1393, %1275
  %1397 = fmul fast float %1394, %1275
  %1398 = fmul fast float %1395, %1275
  %1399 = fadd fast float %1396, 5.000000e-01
  %1400 = fadd fast float %1397, 5.000000e-01
  %1401 = fadd fast float %1398, 5.000000e-01
  %1402 = call float @dx.op.unary.f32(i32 24, float %1250)  ; Sqrt(value)
  %1403 = call float @dx.op.unary.f32(i32 24, float %1251)  ; Sqrt(value)
  %1404 = call float @dx.op.unary.f32(i32 24, float %1252)  ; Sqrt(value)
  %1405 = fmul fast float %1399, 2.000000e+00
  %1406 = fsub fast float 1.000000e+00, %1405
  %1407 = fmul fast float %1406, %1402
  %1408 = fadd fast float %1407, %1405
  %1409 = fmul fast float %1408, %1402
  %1410 = fmul fast float %1400, 2.000000e+00
  %1411 = fsub fast float 1.000000e+00, %1410
  %1412 = fmul fast float %1411, %1403
  %1413 = fadd fast float %1412, %1410
  %1414 = fmul fast float %1413, %1403
  %1415 = fmul fast float %1401, 2.000000e+00
  %1416 = fsub fast float 1.000000e+00, %1415
  %1417 = fmul fast float %1416, %1404
  %1418 = fadd fast float %1417, %1415
  %1419 = fmul fast float %1418, %1404
  %1420 = fmul fast float %1409, %1409
  %1421 = fmul fast float %1414, %1414
  %1422 = fmul fast float %1419, %1419
  br label %1439

; <label>:1423                                    ; preds = %1386
  %1424 = fmul fast float %288, %288
  %1425 = fmul fast float %292, %292
  %1426 = fmul fast float %296, %296
  %1427 = fadd fast float %1424, -1.000000e+00
  %1428 = fadd fast float %1425, -1.000000e+00
  %1429 = fadd fast float %1426, -1.000000e+00
  %1430 = fmul fast float %1275, %1427
  %1431 = fmul fast float %1275, %1428
  %1432 = fmul fast float %1275, %1429
  %1433 = fadd fast float %1430, 1.000000e+00
  %1434 = fadd fast float %1431, 1.000000e+00
  %1435 = fadd fast float %1432, 1.000000e+00
  %1436 = fmul fast float %1433, %1250
  %1437 = fmul fast float %1434, %1251
  %1438 = fmul fast float %1435, %1252
  br label %1439

; <label>:1439                                    ; preds = %1423, %1389, %1280, %1236
  %1440 = phi float [ %1385, %1280 ], [ %1261, %1389 ], [ %1261, %1423 ], [ 0x3FA23C0BE0000000, %1236 ]
  %1441 = phi float [ %1377, %1280 ], [ %1420, %1389 ], [ %1436, %1423 ], [ 1.000000e+00, %1236 ]
  %1442 = phi float [ %1378, %1280 ], [ %1421, %1389 ], [ %1437, %1423 ], [ 1.000000e+00, %1236 ]
  %1443 = phi float [ %1379, %1280 ], [ %1422, %1389 ], [ %1438, %1423 ], [ 1.000000e+00, %1236 ]
  %1444 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1445 = extractvalue %dx.types.CBufRet.i32 %1444, 1
  %1446 = and i32 %1445, 1
  %1447 = icmp ne i32 %1446, 0
  %1448 = add i32 %43, 356
  %1449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1448, i32 undef)  ; BufferLoad(srv,index,wot)
  %1450 = extractvalue %dx.types.ResRet.i32 %1449, 0
  %1451 = and i32 %1450, 32
  %1452 = icmp ne i32 %1451, 0
  %1453 = and i1 %1447, %1452
  %1454 = select i1 %1453, float 1.000000e+00, float %1441
  %1455 = select i1 %1453, float 0x3FD3333340000000, float %1442
  %1456 = select i1 %1453, float 0x3FD3333340000000, float %1443
  %1457 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1458 = extractvalue %dx.types.ResRet.i32 %1457, 0
  %1459 = and i32 %1458, 32
  %1460 = icmp eq i32 %1459, 0
  br i1 %1460, label %1533, label %1461

; <label>:1461                                    ; preds = %1439
  %1462 = add i32 %43, 108
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1462, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = add i32 %43, 428
  %1466 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1465, i32 undef)  ; BufferLoad(srv,index,wot)
  %1467 = extractvalue %dx.types.ResRet.i32 %1466, 0
  %1468 = add i32 %1467, 0
  %1469 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1468, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1470 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1469, %dx.types.Handle %73, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1471 = extractvalue %dx.types.ResRet.f32 %1470, 0
  %1472 = extractvalue %dx.types.ResRet.f32 %1470, 1
  %1473 = extractvalue %dx.types.ResRet.f32 %1470, 2
  %1474 = extractvalue %dx.types.ResRet.f32 %1470, 3
  %1475 = and i32 %1464, 255
  %1476 = uitofp i32 %1475 to float
  %1477 = lshr i32 %1464, 8
  %1478 = and i32 %1477, 255
  %1479 = uitofp i32 %1478 to float
  %1480 = lshr i32 %1464, 16
  %1481 = and i32 %1480, 255
  %1482 = uitofp i32 %1481 to float
  %1483 = fmul fast float %1482, 0x3F70101000000000
  %1484 = fmul fast float %1471, %1476
  %1485 = fadd fast float %1484, %1479
  %1486 = fmul fast float %1485, 0x3F70101000000000
  %1487 = fadd fast float %1472, -5.000000e-01
  %1488 = fadd fast float %1474, -5.000000e-01
  %1489 = fmul fast float %1487, %1483
  %1490 = fmul fast float %1488, %1483
  %1491 = fadd fast float %1489, 5.000000e-01
  %1492 = fadd fast float %1490, 5.000000e-01
  %1493 = fmul fast float %1491, 2.000000e+00
  %1494 = fadd fast float %1493, -1.000000e+00
  %1495 = fmul fast float %1492, 2.000000e+00
  %1496 = fadd fast float %1495, -1.000000e+00
  %1497 = fadd fast float %1494, %1496
  %1498 = fmul fast float %1497, 5.000000e-01
  %1499 = fsub fast float %1494, %1496
  %1500 = fmul fast float %1499, 5.000000e-01
  %1501 = call float @dx.op.unary.f32(i32 6, float %1498)  ; FAbs(value)
  %1502 = fsub fast float 1.000000e+00, %1501
  %1503 = call float @dx.op.unary.f32(i32 6, float %1500)  ; FAbs(value)
  %1504 = fsub fast float %1502, %1503
  %1505 = call float @dx.op.dot3.f32(i32 55, float %1498, float %1500, float %1504, float %1498, float %1500, float %1504)  ; Dot3(ax,ay,az,bx,by,bz)
  %1506 = call float @dx.op.unary.f32(i32 25, float %1505)  ; Rsqrt(value)
  %1507 = fmul fast float %1498, %1506
  %1508 = fmul fast float %1500, %1506
  %1509 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1510 = extractvalue %dx.types.ResRet.i32 %1509, 0
  %1511 = and i32 %1510, 67108864
  %1512 = icmp eq i32 %1511, 0
  br i1 %1512, label %1529, label %1513

; <label>:1513                                    ; preds = %1461
  %1514 = add i32 %43, 296
  %1515 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1514, i32 undef)  ; BufferLoad(srv,index,wot)
  %1516 = extractvalue %dx.types.ResRet.i32 %1515, 0
  %1517 = and i32 %1516, 65535
  %1518 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1517)  ; LegacyF16ToF32(value)
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %956, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = and i32 %1520, 65535
  %1522 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1521)  ; LegacyF16ToF32(value)
  %1523 = lshr i32 %1516, 16
  %1524 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1523)  ; LegacyF16ToF32(value)
  %1525 = fsub fast float %1486, %1524
  %1526 = fmul fast float %1525, %1518
  %1527 = fadd fast float %1526, %1522
  %1528 = call float @dx.op.unary.f32(i32 7, float %1527)  ; Saturate(value)
  br label %1529

; <label>:1529                                    ; preds = %1513, %1461
  %1530 = phi float [ %1528, %1513 ], [ %1486, %1461 ]
  %1531 = call float @dx.op.dot2.f32(i32 54, float %1507, float %1508, float %950, float %951)  ; Dot2(ax,ay,bx,by)
  %1532 = call float @dx.op.dot2.f32(i32 54, float %1507, float %1508, float %952, float %953)  ; Dot2(ax,ay,bx,by)
  br label %1533

; <label>:1533                                    ; preds = %1529, %1439
  %1534 = phi float [ %1530, %1529 ], [ 0x3FD6666660000000, %1439 ]
  %1535 = phi float [ %1531, %1529 ], [ 0.000000e+00, %1439 ]
  %1536 = phi float [ %1532, %1529 ], [ 0.000000e+00, %1439 ]
  %1537 = phi float [ %1473, %1529 ], [ 1.000000e+00, %1439 ]
  %1538 = add i32 %43, 176
  %1539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1538, i32 undef)  ; BufferLoad(srv,index,wot)
  %1540 = extractvalue %dx.types.ResRet.i32 %1539, 0
  %1541 = lshr i32 %1540, 22
  %1542 = shl nuw nsw i32 %1541, 5
  %1543 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1542)  ; LegacyF16ToF32(value)
  %1544 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1545 = extractvalue %dx.types.ResRet.i32 %1544, 0
  %1546 = and i32 %1545, 64
  %1547 = icmp eq i32 %1546, 0
  br i1 %1547, label %1581, label %1548

; <label>:1548                                    ; preds = %1533
  %1549 = add i32 %43, 444
  %1550 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1549, i32 undef)  ; BufferLoad(srv,index,wot)
  %1551 = extractvalue %dx.types.ResRet.i32 %1550, 0
  %1552 = add i32 %1551, 0
  %1553 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1552, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 131072
  %1557 = icmp eq i32 %1556, 0
  %1558 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1553, %dx.types.Handle %73, float %1046, float %1047, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1559 = extractvalue %dx.types.ResRet.f32 %1558, 0
  %1560 = extractvalue %dx.types.ResRet.f32 %1558, 1
  %1561 = extractvalue %dx.types.ResRet.f32 %1558, 2
  %1562 = fmul fast float %1559, %276
  %1563 = fmul fast float %1560, %279
  %1564 = fmul fast float %1561, %282
  br i1 %1557, label %1571, label %1565

; <label>:1565                                    ; preds = %1548
  %1566 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1567 = extractvalue %dx.types.CBufRet.f32 %1566, 0
  %1568 = fmul fast float %1567, %1562
  %1569 = fmul fast float %1567, %1563
  %1570 = fmul fast float %1567, %1564
  br label %1571

; <label>:1571                                    ; preds = %1565, %1548
  %1572 = phi float [ %1568, %1565 ], [ %1562, %1548 ]
  %1573 = phi float [ %1569, %1565 ], [ %1563, %1548 ]
  %1574 = phi float [ %1570, %1565 ], [ %1564, %1548 ]
  %1575 = fmul fast float %1572, %1543
  %1576 = select i1 %214, float %1575, float %1572
  %1577 = call float @dx.op.dot3.f32(i32 55, float %1576, float %1573, float %1574, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1578 = select i1 %214, float 0.000000e+00, float %1572
  %1579 = select i1 %214, float %1577, float %1573
  %1580 = select i1 %214, float 0.000000e+00, float %1574
  br label %1581

; <label>:1581                                    ; preds = %1571, %1533
  %1582 = phi float [ %1578, %1571 ], [ 0.000000e+00, %1533 ]
  %1583 = phi float [ %1579, %1571 ], [ 0.000000e+00, %1533 ]
  %1584 = phi float [ %1580, %1571 ], [ 0.000000e+00, %1533 ]
  %1585 = add i32 %43, 112
  %1586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1585, i32 undef)  ; BufferLoad(srv,index,wot)
  %1587 = extractvalue %dx.types.ResRet.i32 %1586, 0
  %1588 = and i32 %1587, 255
  %1589 = uitofp i32 %1588 to float
  %1590 = lshr i32 %1587, 8
  %1591 = and i32 %1590, 255
  %1592 = uitofp i32 %1591 to float
  %1593 = call float @dx.op.dot3.f32(i32 55, float %1454, float %1455, float %1456, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1594 = fmul fast float %1592, %1593
  %1595 = fadd fast float %1594, %1589
  %1596 = fmul fast float %1595, 0x3F70101020000000
  %1597 = call float @dx.op.unary.f32(i32 7, float %1596)  ; Saturate(value)
  br i1 %938, label %1598, label %1606

; <label>:1598                                    ; preds = %1581
  %1599 = fsub fast float 1.000000e+00, %1234
  %1600 = fmul fast float %1599, %926
  %1601 = fmul fast float %1599, %927
  %1602 = fmul fast float %1599, %928
  %1603 = fmul fast float %1599, %929
  %1604 = fmul fast float %1599, %930
  %1605 = fmul fast float %1599, %931
  br label %1606

; <label>:1606                                    ; preds = %1598, %1581
  %1607 = phi float [ %1600, %1598 ], [ %926, %1581 ]
  %1608 = phi float [ %1601, %1598 ], [ %927, %1581 ]
  %1609 = phi float [ %1602, %1598 ], [ %928, %1581 ]
  %1610 = phi float [ %1603, %1598 ], [ %929, %1581 ]
  %1611 = phi float [ %1604, %1598 ], [ %930, %1581 ]
  %1612 = phi float [ %1605, %1598 ], [ %931, %1581 ]
  %1613 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %939, i32 undef)  ; BufferLoad(srv,index,wot)
  %1614 = extractvalue %dx.types.ResRet.i32 %1613, 0
  %1615 = and i32 %1614, 3
  %1616 = icmp eq i32 %1615, 3
  br i1 %1616, label %1695, label %1617

; <label>:1617                                    ; preds = %1606
  %1618 = and i32 %1614, 16
  %1619 = icmp ne i32 %1618, 0
  %1620 = select i1 %1619, float %1234, float 0.000000e+00
  %1621 = icmp eq i32 %1615, 0
  br i1 %1621, label %1622, label %1650

; <label>:1622                                    ; preds = %1617
  %1623 = and i32 %1614, 64
  %1624 = icmp ne i32 %1623, 0
  %1625 = select i1 %1624, float %1234, float 0.000000e+00
  %1626 = fsub fast float %1454, %1607
  %1627 = fsub fast float %1455, %1608
  %1628 = fsub fast float %1456, %1609
  %1629 = fmul fast float %1620, %1626
  %1630 = fmul fast float %1620, %1627
  %1631 = fmul fast float %1620, %1628
  %1632 = fadd fast float %1629, %1607
  %1633 = fadd fast float %1630, %1608
  %1634 = fadd fast float %1631, %1609
  %1635 = fsub fast float %1440, %932
  %1636 = fmul fast float %1620, %1635
  %1637 = fadd fast float %1636, %932
  %1638 = fsub fast float %1582, %1610
  %1639 = fsub fast float %1583, %1611
  %1640 = fsub fast float %1584, %1612
  %1641 = fmul fast float %1625, %1638
  %1642 = fmul fast float %1625, %1639
  %1643 = fmul fast float %1625, %1640
  %1644 = fadd fast float %1641, %1610
  %1645 = fadd fast float %1642, %1611
  %1646 = fadd fast float %1643, %1612
  %1647 = fsub fast float %1597, %936
  %1648 = fmul fast float %1620, %1647
  %1649 = fadd fast float %1648, %936
  br label %1695

; <label>:1650                                    ; preds = %1617
  %1651 = icmp eq i32 %1615, 1
  br i1 %1651, label %1652, label %1665

; <label>:1652                                    ; preds = %1650
  %1653 = fadd fast float %1454, -1.000000e+00
  %1654 = fadd fast float %1455, -1.000000e+00
  %1655 = fadd fast float %1456, -1.000000e+00
  %1656 = fmul fast float %1620, %1653
  %1657 = fmul fast float %1620, %1654
  %1658 = fmul fast float %1620, %1655
  %1659 = fadd fast float %1656, 1.000000e+00
  %1660 = fadd fast float %1657, 1.000000e+00
  %1661 = fadd fast float %1658, 1.000000e+00
  %1662 = fmul fast float %1659, %1607
  %1663 = fmul fast float %1660, %1608
  %1664 = fmul fast float %1661, %1609
  br label %1695

; <label>:1665                                    ; preds = %1650
  %1666 = icmp eq i32 %1615, 2
  br i1 %1666, label %1667, label %1695

; <label>:1667                                    ; preds = %1665
  %1668 = call float @dx.op.unary.f32(i32 24, float %1454)  ; Sqrt(value)
  %1669 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1670 = call float @dx.op.unary.f32(i32 24, float %1456)  ; Sqrt(value)
  %1671 = fadd fast float %1668, -5.000000e-01
  %1672 = fadd fast float %1669, -5.000000e-01
  %1673 = fadd fast float %1670, -5.000000e-01
  %1674 = fmul fast float %1671, %1620
  %1675 = fmul fast float %1672, %1620
  %1676 = fmul fast float %1673, %1620
  %1677 = fadd fast float %1674, 5.000000e-01
  %1678 = fadd fast float %1675, 5.000000e-01
  %1679 = fadd fast float %1676, 5.000000e-01
  %1680 = fmul fast float %1677, 2.000000e+00
  %1681 = fsub fast float 1.000000e+00, %1680
  %1682 = fmul fast float %1681, %1607
  %1683 = fadd fast float %1682, %1680
  %1684 = fmul fast float %1683, %1607
  %1685 = fmul fast float %1678, 2.000000e+00
  %1686 = fsub fast float 1.000000e+00, %1685
  %1687 = fmul fast float %1686, %1608
  %1688 = fadd fast float %1687, %1685
  %1689 = fmul fast float %1688, %1608
  %1690 = fmul fast float %1679, 2.000000e+00
  %1691 = fsub fast float 1.000000e+00, %1690
  %1692 = fmul fast float %1691, %1609
  %1693 = fadd fast float %1692, %1690
  %1694 = fmul fast float %1693, %1609
  br label %1695

; <label>:1695                                    ; preds = %1667, %1665, %1652, %1622, %1606
  %1696 = phi float [ %1607, %1606 ], [ %1684, %1667 ], [ %1607, %1665 ], [ %1662, %1652 ], [ %1632, %1622 ]
  %1697 = phi float [ %1608, %1606 ], [ %1689, %1667 ], [ %1608, %1665 ], [ %1663, %1652 ], [ %1633, %1622 ]
  %1698 = phi float [ %1609, %1606 ], [ %1694, %1667 ], [ %1609, %1665 ], [ %1664, %1652 ], [ %1634, %1622 ]
  %1699 = phi float [ %1610, %1606 ], [ %1610, %1667 ], [ %1610, %1665 ], [ %1610, %1652 ], [ %1644, %1622 ]
  %1700 = phi float [ %1611, %1606 ], [ %1611, %1667 ], [ %1611, %1665 ], [ %1611, %1652 ], [ %1645, %1622 ]
  %1701 = phi float [ %1612, %1606 ], [ %1612, %1667 ], [ %1612, %1665 ], [ %1612, %1652 ], [ %1646, %1622 ]
  %1702 = phi float [ %932, %1606 ], [ %932, %1667 ], [ %932, %1665 ], [ %932, %1652 ], [ %1637, %1622 ]
  %1703 = phi float [ %936, %1606 ], [ %936, %1667 ], [ %936, %1665 ], [ %936, %1652 ], [ %1649, %1622 ]
  %1704 = and i32 %1614, 12
  %1705 = icmp eq i32 %1704, 12
  br i1 %1705, label %1778, label %1706

; <label>:1706                                    ; preds = %1695
  %1707 = and i32 %1614, 2097184
  %1708 = icmp eq i32 %1707, 2097184
  %1709 = select i1 %1708, float %1234, float 0.000000e+00
  %1710 = and i32 %1614, 4194336
  %1711 = icmp eq i32 %1710, 4194336
  %1712 = select i1 %1711, float %1234, float 0.000000e+00
  %1713 = and i32 %1614, 8388640
  %1714 = icmp eq i32 %1713, 8388640
  %1715 = select i1 %1714, float %1234, float 0.000000e+00
  %1716 = icmp eq i32 %1704, 0
  br i1 %1716, label %1717, label %1730

; <label>:1717                                    ; preds = %1706
  %1718 = fsub fast float %1535, %924
  %1719 = fsub fast float %1536, %925
  %1720 = fmul fast float %1709, %1718
  %1721 = fmul fast float %1709, %1719
  %1722 = fadd fast float %1720, %924
  %1723 = fadd fast float %1721, %925
  %1724 = fsub fast float %1537, %935
  %1725 = fmul fast float %1712, %1724
  %1726 = fadd fast float %1725, %935
  %1727 = fsub fast float %1534, %934
  %1728 = fmul fast float %1715, %1727
  %1729 = fadd fast float %1728, %934
  br label %1778

; <label>:1730                                    ; preds = %1706
  %1731 = icmp eq i32 %1704, 4
  br i1 %1731, label %1732, label %1764

; <label>:1732                                    ; preds = %1730
  %1733 = fmul fast float %1709, %1535
  %1734 = fmul fast float %1709, %1536
  %1735 = fadd fast float %1733, %924
  %1736 = fadd fast float %1734, %925
  %1737 = call float @dx.op.binary.f32(i32 36, float %935, float %1537)  ; FMin(a,b)
  %1738 = fsub fast float %1737, %935
  %1739 = fmul fast float %1738, %1712
  %1740 = fadd fast float %1739, %935
  %1741 = fadd fast float %1534, %934
  %1742 = fmul fast float %1741, 0x3FF337FAE0000000
  %1743 = fmul fast float %934, %934
  %1744 = fmul fast float %1534, %1534
  %1745 = fadd fast float %1744, %1743
  %1746 = fmul fast float %1745, 0x3FE5152B00000000
  %1747 = fmul fast float %934, 0xBFCC1F85E0000000
  %1748 = fmul fast float %1747, %1534
  %1749 = fadd fast float %1748, 0xBFE1363700000000
  %1750 = fadd fast float %1749, %1742
  %1751 = fsub fast float %1750, %1746
  %1752 = fmul fast float %1741, 0x3FBA6F0D00000000
  %1753 = fmul fast float %1745, 0x3FD0432880000000
  %1754 = fmul fast float %934, 0xBFEF110800000000
  %1755 = fmul fast float %1754, %1534
  %1756 = fadd fast float %1755, 1.000000e+00
  %1757 = fsub fast float %1756, %1752
  %1758 = fadd fast float %1757, %1753
  %1759 = fdiv fast float %1751, %1758
  %1760 = call float @dx.op.unary.f32(i32 7, float %1759)  ; Saturate(value)
  %1761 = fsub fast float %1760, %934
  %1762 = fmul fast float %1761, %1715
  %1763 = fadd fast float %1762, %934
  br label %1778

; <label>:1764                                    ; preds = %1730
  %1765 = icmp eq i32 %1704, 8
  br i1 %1765, label %1766, label %1778

; <label>:1766                                    ; preds = %1764
  %1767 = fmul fast float %1709, %1535
  %1768 = fmul fast float %1709, %1536
  %1769 = fadd fast float %1767, %924
  %1770 = fadd fast float %1768, %925
  %1771 = call float @dx.op.binary.f32(i32 36, float %935, float %1537)  ; FMin(a,b)
  %1772 = fsub fast float %1771, %935
  %1773 = fmul fast float %1772, %1712
  %1774 = fadd fast float %1773, %935
  %1775 = fsub fast float %1534, %934
  %1776 = fmul fast float %1715, %1775
  %1777 = fadd fast float %1776, %934
  br label %1778

; <label>:1778                                    ; preds = %1766, %1764, %1732, %1717, %1695, %1233, %937, %923
  %1779 = phi float [ %924, %1695 ], [ %924, %1233 ], [ %924, %923 ], [ %1769, %1766 ], [ %924, %1764 ], [ %1735, %1732 ], [ %1722, %1717 ], [ %924, %937 ]
  %1780 = phi float [ %925, %1695 ], [ %925, %1233 ], [ %925, %923 ], [ %1770, %1766 ], [ %925, %1764 ], [ %1736, %1732 ], [ %1723, %1717 ], [ %925, %937 ]
  %1781 = phi float [ %1696, %1695 ], [ %926, %1233 ], [ %926, %923 ], [ %1696, %1766 ], [ %1696, %1764 ], [ %1696, %1732 ], [ %1696, %1717 ], [ %926, %937 ]
  %1782 = phi float [ %1697, %1695 ], [ %927, %1233 ], [ %927, %923 ], [ %1697, %1766 ], [ %1697, %1764 ], [ %1697, %1732 ], [ %1697, %1717 ], [ %927, %937 ]
  %1783 = phi float [ %1698, %1695 ], [ %928, %1233 ], [ %928, %923 ], [ %1698, %1766 ], [ %1698, %1764 ], [ %1698, %1732 ], [ %1698, %1717 ], [ %928, %937 ]
  %1784 = phi float [ %1699, %1695 ], [ %929, %1233 ], [ %929, %923 ], [ %1699, %1766 ], [ %1699, %1764 ], [ %1699, %1732 ], [ %1699, %1717 ], [ %929, %937 ]
  %1785 = phi float [ %1700, %1695 ], [ %930, %1233 ], [ %930, %923 ], [ %1700, %1766 ], [ %1700, %1764 ], [ %1700, %1732 ], [ %1700, %1717 ], [ %930, %937 ]
  %1786 = phi float [ %1701, %1695 ], [ %931, %1233 ], [ %931, %923 ], [ %1701, %1766 ], [ %1701, %1764 ], [ %1701, %1732 ], [ %1701, %1717 ], [ %931, %937 ]
  %1787 = phi float [ %1702, %1695 ], [ %932, %1233 ], [ %932, %923 ], [ %1702, %1766 ], [ %1702, %1764 ], [ %1702, %1732 ], [ %1702, %1717 ], [ %932, %937 ]
  %1788 = phi float [ %934, %1695 ], [ %934, %1233 ], [ %934, %923 ], [ %1777, %1766 ], [ %934, %1764 ], [ %1763, %1732 ], [ %1729, %1717 ], [ %934, %937 ]
  %1789 = phi float [ %935, %1695 ], [ %935, %1233 ], [ %935, %923 ], [ %1774, %1766 ], [ %935, %1764 ], [ %1740, %1732 ], [ %1726, %1717 ], [ %935, %937 ]
  %1790 = phi float [ %1703, %1695 ], [ %936, %1233 ], [ %936, %923 ], [ %1703, %1766 ], [ %1703, %1764 ], [ %1703, %1732 ], [ %1703, %1717 ], [ %936, %937 ]
  br i1 %403, label %2632, label %1791

; <label>:1791                                    ; preds = %1778
  %1792 = icmp ult i32 %456, 3
  %1793 = add i32 %43, 56
  %1794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %1795 = extractvalue %dx.types.ResRet.i32 %1794, 0
  %1796 = add i32 %43, 60
  %1797 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1796, i32 undef)  ; BufferLoad(srv,index,wot)
  %1798 = extractvalue %dx.types.ResRet.i32 %1797, 0
  %1799 = or i32 %1798, %1795
  %1800 = icmp eq i32 %1799, 0
  br i1 %1800, label %2632, label %1801

; <label>:1801                                    ; preds = %1791
  %1802 = and i32 %1795, 262144
  %1803 = icmp ne i32 %1802, 0
  %1804 = select i1 %1803, float %45, float 1.000000e+00
  %1805 = select i1 %1803, float %46, float 0.000000e+00
  %1806 = select i1 %1803, float %47, float 0.000000e+00
  %1807 = select i1 %1803, float %48, float 1.000000e+00
  %1808 = select i1 %1803, float %49, float %65
  %1809 = select i1 %1803, float %50, float %66
  %1810 = add i32 %43, 316
  %1811 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %1812 = extractvalue %dx.types.ResRet.i32 %1811, 0
  %1813 = lshr i32 %1812, 16
  %1814 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1813)  ; LegacyF16ToF32(value)
  %1815 = fmul fast float %1814, 0x3F50624DE0000000
  %1816 = add i32 %43, 120
  %1817 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %1818 = extractvalue %dx.types.ResRet.i32 %1817, 0
  %1819 = lshr i32 %1818, 16
  %1820 = and i32 %1819, 255
  %1821 = lshr i32 %1818, 24
  %1822 = add i32 %43, 324
  %1823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1822, i32 undef)  ; BufferLoad(srv,index,wot)
  %1824 = extractvalue %dx.types.ResRet.i32 %1823, 0
  %1825 = and i32 %1824, 65535
  %1826 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1825)  ; LegacyF16ToF32(value)
  %1827 = lshr i32 %1824, 16
  %1828 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1827)  ; LegacyF16ToF32(value)
  %1829 = add i32 %43, 64
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1829, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = lshr i32 %1831, 22
  %1833 = shl nuw nsw i32 %1832, 5
  %1834 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1833)  ; LegacyF16ToF32(value)
  %1835 = shl i32 %1831, 4
  %1836 = and i32 %1835, 32752
  %1837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1836)  ; LegacyF16ToF32(value)
  %1838 = lshr i32 %1831, 7
  %1839 = and i32 %1838, 32752
  %1840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1839)  ; LegacyF16ToF32(value)
  %1841 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1842 = extractvalue %dx.types.CBufRet.f32 %1841, 3
  %1843 = fmul fast float %1842, 1.000000e+03
  %1844 = fmul fast float %353, %1843
  %1845 = call float @dx.op.unary.f32(i32 22, float %1844)  ; Frc(value)
  %1846 = fadd fast float %1845, %343
  %1847 = fmul fast float %354, %1843
  %1848 = call float @dx.op.unary.f32(i32 22, float %1847)  ; Frc(value)
  %1849 = fadd fast float %1848, %345
  %1850 = fmul fast float %1815, %1843
  %1851 = call float @dx.op.unary.f32(i32 22, float %1850)  ; Frc(value)
  %1852 = fmul fast float %1851, 0x401921FB60000000
  %1853 = fadd fast float %1852, %1834
  %1854 = call float @dx.op.unary.f32(i32 13, float %1853)  ; Sin(value)
  %1855 = call float @dx.op.unary.f32(i32 12, float %1853)  ; Cos(value)
  %1856 = fsub fast float -0.000000e+00, %1854
  %1857 = fadd fast float %1808, -5.000000e-01
  %1858 = fadd fast float %1809, -5.000000e-01
  %1859 = fmul fast float %1826, %1857
  %1860 = fmul fast float %1828, %1858
  %1861 = fadd fast float %1859, 5.000000e-01
  %1862 = fadd fast float %1860, 5.000000e-01
  %1863 = fmul fast float %1837, %1861
  %1864 = fmul fast float %1840, %1862
  %1865 = fmul fast float %1855, %1863
  %1866 = call float @dx.op.tertiary.f32(i32 46, float %1856, float %1864, float %1865)  ; FMad(a,b,c)
  %1867 = fmul fast float %1854, %1863
  %1868 = call float @dx.op.tertiary.f32(i32 46, float %1855, float %1864, float %1867)  ; FMad(a,b,c)
  %1869 = fadd fast float %1846, %1866
  %1870 = fadd fast float %1849, %1868
  %1871 = icmp ugt i32 %1820, 1
  %1872 = icmp ugt i32 %1818, 33554431
  %1873 = or i1 %1872, %1871
  br i1 %1873, label %1874, label %1899

; <label>:1874                                    ; preds = %1801
  %1875 = add i32 %43, 260
  %1876 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1875, i32 undef)  ; BufferLoad(srv,index,wot)
  %1877 = extractvalue %dx.types.ResRet.i32 %1876, 0
  %1878 = lshr i32 %1877, 16
  %1879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1878)  ; LegacyF16ToF32(value)
  %1880 = fmul fast float %1842, %1879
  %1881 = call float @dx.op.unary.f32(i32 22, float %1880)  ; Frc(value)
  %1882 = mul nuw nsw i32 %1820, %1821
  %1883 = uitofp i32 %1882 to float
  %1884 = fmul fast float %1881, %1883
  %1885 = call float @dx.op.unary.f32(i32 27, float %1884)  ; Round_ni(value)
  %1886 = fptoui float %1885 to i32
  %1887 = urem i32 %1886, %1820
  %1888 = udiv i32 %1886, %1821
  %1889 = call float @dx.op.unary.f32(i32 22, float %1869)  ; Frc(value)
  %1890 = call float @dx.op.unary.f32(i32 22, float %1870)  ; Frc(value)
  %1891 = uitofp i32 %1887 to float
  %1892 = uitofp i32 %1888 to float
  %1893 = fadd fast float %1889, %1891
  %1894 = fadd fast float %1890, %1892
  %1895 = uitofp i32 %1820 to float
  %1896 = uitofp i32 %1821 to float
  %1897 = fdiv fast float %1893, %1895
  %1898 = fdiv fast float %1894, %1896
  br label %1899

; <label>:1899                                    ; preds = %1874, %1801
  %1900 = phi float [ %1897, %1874 ], [ %1869, %1801 ]
  %1901 = phi float [ %1898, %1874 ], [ %1870, %1801 ]
  %1902 = and i32 %1795, 16777216
  %1903 = icmp eq i32 %1902, 0
  br i1 %1903, label %2013, label %1904

; <label>:1904                                    ; preds = %1899
  %1905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1906 = extractvalue %dx.types.CBufRet.f32 %1905, 0
  %1907 = extractvalue %dx.types.CBufRet.f32 %1905, 1
  %1908 = extractvalue %dx.types.CBufRet.f32 %1905, 2
  %1909 = fadd fast float %1906, %140
  %1910 = fadd fast float %1907, %141
  %1911 = fadd fast float %1908, %142
  %1912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1913 = extractvalue %dx.types.CBufRet.f32 %1912, 0
  %1914 = call float @dx.op.unary.f32(i32 7, float %1913)  ; Saturate(value)
  %1915 = icmp eq i32 %44, 65535
  br i1 %1915, label %2010, label %1916

; <label>:1916                                    ; preds = %1904
  %1917 = lshr i32 %44, 1
  %1918 = shl i32 %1917, 2
  %1919 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1918, i32 undef)  ; BufferLoad(srv,index,wot)
  %1920 = extractvalue %dx.types.ResRet.i32 %1919, 0
  %1921 = and i32 %44, 1
  %1922 = icmp ne i32 %1921, 0
  %1923 = lshr i32 %1920, 16
  %1924 = and i32 %1920, 65535
  %1925 = select i1 %1922, i32 %1923, i32 %1924
  %1926 = icmp eq i32 %1925, 65535
  br i1 %1926, label %2006, label %1927

; <label>:1927                                    ; preds = %1916
  %1928 = mul nuw nsw i32 %1925, 40
  %1929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1928, i32 undef)  ; BufferLoad(srv,index,wot)
  %1930 = extractvalue %dx.types.ResRet.f32 %1929, 0
  %1931 = extractvalue %dx.types.ResRet.f32 %1929, 1
  %1932 = extractvalue %dx.types.ResRet.f32 %1929, 2
  %1933 = add nuw nsw i32 %1928, 12
  %1934 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1933, i32 undef)  ; BufferLoad(srv,index,wot)
  %1935 = extractvalue %dx.types.ResRet.f32 %1934, 0
  %1936 = extractvalue %dx.types.ResRet.f32 %1934, 1
  %1937 = extractvalue %dx.types.ResRet.f32 %1934, 2
  %1938 = add nuw nsw i32 %1928, 24
  %1939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1940 = extractvalue %dx.types.ResRet.f32 %1939, 0
  %1941 = extractvalue %dx.types.ResRet.f32 %1939, 1
  %1942 = extractvalue %dx.types.ResRet.f32 %1939, 2
  %1943 = add nuw nsw i32 %1928, 36
  %1944 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1943, i32 undef)  ; BufferLoad(srv,index,wot)
  %1945 = extractvalue %dx.types.ResRet.f32 %1944, 0
  %1946 = fsub fast float %1909, %1930
  %1947 = fsub fast float %1910, %1931
  %1948 = fsub fast float %1911, %1932
  %1949 = fmul fast float %1945, %1946
  %1950 = fmul fast float %1945, %1947
  %1951 = fmul fast float %1945, %1948
  %1952 = call float @dx.op.unary.f32(i32 27, float %1949)  ; Round_ni(value)
  %1953 = call float @dx.op.unary.f32(i32 27, float %1950)  ; Round_ni(value)
  %1954 = call float @dx.op.unary.f32(i32 27, float %1951)  ; Round_ni(value)
  %1955 = fadd fast float %1952, 5.000000e-01
  %1956 = fadd fast float %1953, 5.000000e-01
  %1957 = fadd fast float %1954, 5.000000e-01
  %1958 = fmul fast float %1955, %1935
  %1959 = fmul fast float %1956, %1936
  %1960 = fmul fast float %1957, %1937
  %1961 = shl i32 %44, 2
  %1962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1963 = extractvalue %dx.types.ResRet.i32 %1962, 0
  %1964 = add i32 %1963, 0
  %1965 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1964, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1966 = call float @dx.op.unary.f32(i32 22, float %1958)  ; Frc(value)
  %1967 = call float @dx.op.unary.f32(i32 22, float %1959)  ; Frc(value)
  %1968 = call float @dx.op.unary.f32(i32 22, float %1960)  ; Frc(value)
  %1969 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1965, %dx.types.Handle %40, float %1966, float %1967, float %1968, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1970 = extractvalue %dx.types.ResRet.f32 %1969, 0
  %1971 = extractvalue %dx.types.ResRet.f32 %1969, 1
  %1972 = extractvalue %dx.types.ResRet.f32 %1969, 2
  %1973 = fmul fast float %1970, 1.023000e+03
  %1974 = fmul fast float %1971, 1.023000e+03
  %1975 = fmul fast float %1972, 1.023000e+03
  %1976 = fadd fast float %1973, 5.000000e-01
  %1977 = fadd fast float %1974, 5.000000e-01
  %1978 = fadd fast float %1975, 5.000000e-01
  %1979 = call float @dx.op.unary.f32(i32 27, float %1976)  ; Round_ni(value)
  %1980 = call float @dx.op.unary.f32(i32 27, float %1977)  ; Round_ni(value)
  %1981 = call float @dx.op.unary.f32(i32 27, float %1978)  ; Round_ni(value)
  %1982 = fsub fast float %1949, %1952
  %1983 = fsub fast float %1950, %1953
  %1984 = fsub fast float %1951, %1954
  %1985 = fmul fast float %1982, 7.500000e-01
  %1986 = fmul fast float %1983, 7.500000e-01
  %1987 = fmul fast float %1984, 7.500000e-01
  %1988 = fadd fast float %1952, 1.250000e-01
  %1989 = fadd fast float %1988, %1985
  %1990 = fadd fast float %1989, %1979
  %1991 = fadd fast float %1953, 1.250000e-01
  %1992 = fadd fast float %1991, %1986
  %1993 = fadd fast float %1992, %1980
  %1994 = fadd fast float %1954, 1.250000e-01
  %1995 = fadd fast float %1994, %1987
  %1996 = fadd fast float %1995, %1981
  %1997 = fmul fast float %1990, %1940
  %1998 = fmul fast float %1993, %1941
  %1999 = fmul fast float %1996, %1942
  %2000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1961, i32 undef)  ; BufferLoad(srv,index,wot)
  %2001 = extractvalue %dx.types.ResRet.i32 %2000, 0
  %2002 = add i32 %2001, 0
  %2003 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2002, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2004 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2003, %dx.types.Handle %38, float %1997, float %1998, float %1999, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2005 = extractvalue %dx.types.ResRet.f32 %2004, 0
  br label %2006

; <label>:2006                                    ; preds = %1927, %1916
  %2007 = phi float [ %2005, %1927 ], [ -1.000000e+00, %1916 ]
  %2008 = fadd fast float %2007, %1914
  %2009 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  br label %2010

; <label>:2010                                    ; preds = %2006, %1904
  %2011 = phi float [ %2009, %2006 ], [ %1914, %1904 ]
  %2012 = fmul fast float %2011, %452
  br label %2013

; <label>:2013                                    ; preds = %2010, %1899
  %2014 = phi float [ %2012, %2010 ], [ %452, %1899 ]
  %2015 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2016 = extractvalue %dx.types.ResRet.i32 %2015, 0
  %2017 = and i32 %2016, 256
  %2018 = icmp eq i32 %2017, 0
  br i1 %2018, label %2065, label %2019

; <label>:2019                                    ; preds = %2013
  %2020 = add i32 %43, 480
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2020, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = add i32 %2022, 0
  %2024 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2023, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2025 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2024, %dx.types.Handle %74, float %1900, float %1901, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2026 = extractvalue %dx.types.ResRet.f32 %2025, 0
  %2027 = add i32 %43, 132
  %2028 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2027, i32 undef)  ; BufferLoad(srv,index,wot)
  %2029 = extractvalue %dx.types.ResRet.i32 %2028, 0
  %2030 = shl i32 %2029, 4
  %2031 = and i32 %2030, 32752
  %2032 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2031)  ; LegacyF16ToF32(value)
  %2033 = lshr i32 %2029, 7
  %2034 = and i32 %2033, 32752
  %2035 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2034)  ; LegacyF16ToF32(value)
  %2036 = fsub fast float 1.000000e+00, %2014
  %2037 = call float @dx.op.binary.f32(i32 35, float %2036, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2038 = bitcast float %2014 to i32
  %2039 = sitofp i32 %2038 to float
  %2040 = fadd fast float %2039, 0xC1CFBF8940000000
  %2041 = fmul fast float %2035, %2040
  %2042 = fadd fast float %2041, 0x41CFBF8940000000
  %2043 = fptosi float %2042 to i32
  %2044 = bitcast i32 %2043 to float
  %2045 = bitcast float %2037 to i32
  %2046 = sitofp i32 %2045 to float
  %2047 = fadd fast float %2046, 0xC1CFBF8940000000
  %2048 = fmul fast float %2047, %2035
  %2049 = fadd fast float %2048, 0x41CFBF8940000000
  %2050 = fptosi float %2049 to i32
  %2051 = bitcast i32 %2050 to float
  %2052 = fmul fast float %2044, %2032
  %2053 = fmul fast float %2051, %2032
  %2054 = fsub fast float %2037, %2052
  %2055 = fadd fast float %2053, %2037
  %2056 = call float @dx.op.unary.f32(i32 7, float %2054)  ; Saturate(value)
  %2057 = call float @dx.op.unary.f32(i32 7, float %2055)  ; Saturate(value)
  %2058 = fsub fast float %2026, %2056
  %2059 = fsub fast float %2057, %2056
  %2060 = bitcast float %2059 to i32
  %2061 = sub nsw i32 2129859010, %2060
  %2062 = bitcast i32 %2061 to float
  %2063 = fmul fast float %2062, %2058
  %2064 = call float @dx.op.unary.f32(i32 7, float %2063)  ; Saturate(value)
  br label %2065

; <label>:2065                                    ; preds = %2019, %2013
  %2066 = phi float [ %2064, %2019 ], [ %2014, %2013 ]
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = and i32 %2068, 128
  %2070 = icmp eq i32 %2069, 0
  br i1 %2070, label %2087, label %2071

; <label>:2071                                    ; preds = %2065
  %2072 = add i32 %43, 464
  %2073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2072, i32 undef)  ; BufferLoad(srv,index,wot)
  %2074 = extractvalue %dx.types.ResRet.i32 %2073, 0
  %2075 = add i32 %2074, 0
  %2076 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2075, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2077 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2076, %dx.types.Handle %74, float %1900, float %1901, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2078 = extractvalue %dx.types.ResRet.f32 %2077, 0
  %2079 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2080 = extractvalue %dx.types.ResRet.i32 %2079, 0
  %2081 = and i32 %2080, 524288
  %2082 = icmp ne i32 %2081, 0
  %2083 = fcmp fast ogt float %2078, 0x3FE0101020000000
  %2084 = select i1 %2083, float 1.000000e+00, float 0.000000e+00
  %2085 = select i1 %2082, float %2084, float %2078
  %2086 = fmul fast float %2085, %2066
  br label %2087

; <label>:2087                                    ; preds = %2071, %2065
  %2088 = phi float [ %2086, %2071 ], [ %2066, %2065 ]
  %2089 = fcmp fast ult float %2088, 0x3F70101020000000
  br i1 %2089, label %2632, label %2090

; <label>:2090                                    ; preds = %2087
  %2091 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2092 = extractvalue %dx.types.ResRet.i32 %2091, 0
  %2093 = and i32 %2092, 16
  %2094 = icmp eq i32 %2093, 0
  br i1 %2094, label %2293, label %2095

; <label>:2095                                    ; preds = %2090
  %2096 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1816, i32 undef)  ; BufferLoad(srv,index,wot)
  %2097 = extractvalue %dx.types.ResRet.i32 %2096, 0
  %2098 = add i32 %43, 416
  %2099 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2098, i32 undef)  ; BufferLoad(srv,index,wot)
  %2100 = extractvalue %dx.types.ResRet.i32 %2099, 0
  %2101 = add i32 %2100, 0
  %2102 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2101, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2103 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2102, %dx.types.Handle %73, float %1900, float %1901, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2104 = extractvalue %dx.types.ResRet.f32 %2103, 0
  %2105 = extractvalue %dx.types.ResRet.f32 %2103, 1
  %2106 = extractvalue %dx.types.ResRet.f32 %2103, 2
  %2107 = extractvalue %dx.types.ResRet.f32 %2103, 3
  %2108 = and i32 %2097, 255
  %2109 = uitofp i32 %2108 to float
  %2110 = lshr i32 %2097, 8
  %2111 = and i32 %2110, 255
  %2112 = uitofp i32 %2111 to float
  %2113 = fmul fast float %2107, %2109
  %2114 = fadd fast float %2113, %2112
  %2115 = fmul fast float %2114, 0x3F70101000000000
  %2116 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2117 = extractvalue %dx.types.ResRet.i32 %2116, 0
  %2118 = and i32 %2117, 512
  %2119 = icmp eq i32 %2118, 0
  br i1 %2119, label %2128, label %2120

; <label>:2120                                    ; preds = %2095
  %2121 = add i32 %43, 496
  %2122 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2121, i32 undef)  ; BufferLoad(srv,index,wot)
  %2123 = extractvalue %dx.types.ResRet.i32 %2122, 0
  %2124 = add i32 %2123, 0
  %2125 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2124, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2126 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2125, %dx.types.Handle %74, float %1900, float %1901, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2127 = extractvalue %dx.types.ResRet.f32 %2126, 0
  br label %2128

; <label>:2128                                    ; preds = %2120, %2095
  %2129 = phi float [ %2127, %2120 ], [ 1.000000e+00, %2095 ]
  %2130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.i32 %2130, 0
  %2132 = and i32 %2131, 33554432
  %2133 = icmp eq i32 %2132, 0
  br i1 %2133, label %2240, label %2134

; <label>:2134                                    ; preds = %2128
  %2135 = add i32 %43, 256
  %2136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2135, i32 undef)  ; BufferLoad(srv,index,wot)
  %2137 = extractvalue %dx.types.ResRet.i32 %2136, 0
  %2138 = and i32 %2137, 65535
  %2139 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2138)  ; LegacyF16ToF32(value)
  %2140 = lshr i32 %2137, 16
  %2141 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2140)  ; LegacyF16ToF32(value)
  %2142 = add i32 %43, 260
  %2143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2142, i32 undef)  ; BufferLoad(srv,index,wot)
  %2144 = extractvalue %dx.types.ResRet.i32 %2143, 0
  %2145 = and i32 %2144, 65535
  %2146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2145)  ; LegacyF16ToF32(value)
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %325, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = lshr i32 %2148, 24
  %2150 = uitofp i32 %2149 to float
  %2151 = fmul fast float %2150, 0x3F70101020000000
  %2152 = and i32 %2148, 255
  %2153 = uitofp i32 %2152 to float
  %2154 = fmul fast float %2153, 0x3F70101020000000
  %2155 = lshr i32 %2148, 8
  %2156 = and i32 %2155, 255
  %2157 = uitofp i32 %2156 to float
  %2158 = fmul fast float %2157, 0x3F70101020000000
  %2159 = lshr i32 %2148, 16
  %2160 = and i32 %2159, 255
  %2161 = uitofp i32 %2160 to float
  %2162 = fmul fast float %2161, 0x3F70101020000000
  %2163 = add i32 %43, 252
  %2164 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2163, i32 undef)  ; BufferLoad(srv,index,wot)
  %2165 = extractvalue %dx.types.ResRet.i32 %2164, 0
  %2166 = lshr i32 %2165, 24
  %2167 = uitofp i32 %2166 to float
  %2168 = fmul fast float %2167, 0x3F70101020000000
  %2169 = and i32 %2165, 255
  %2170 = uitofp i32 %2169 to float
  %2171 = fmul fast float %2170, 0x3F70101020000000
  %2172 = lshr i32 %2165, 8
  %2173 = and i32 %2172, 255
  %2174 = uitofp i32 %2173 to float
  %2175 = fmul fast float %2174, 0x3F70101020000000
  %2176 = lshr i32 %2165, 16
  %2177 = and i32 %2176, 255
  %2178 = uitofp i32 %2177 to float
  %2179 = fmul fast float %2178, 0x3F70101020000000
  %2180 = bitcast float %2104 to i32
  %2181 = ashr i32 %2180, 1
  %2182 = sub nsw i32 1597463174, %2181
  %2183 = bitcast i32 %2182 to float
  %2184 = fmul fast float %2104, 5.000000e-01
  %2185 = fmul fast float %2183, %2183
  %2186 = fmul fast float %2185, %2184
  %2187 = fsub fast float 1.500000e+00, %2186
  %2188 = fmul fast float %2183, %2104
  %2189 = fmul fast float %2188, %2187
  %2190 = bitcast float %2105 to i32
  %2191 = ashr i32 %2190, 1
  %2192 = sub nsw i32 1597463174, %2191
  %2193 = bitcast i32 %2192 to float
  %2194 = fmul fast float %2105, 5.000000e-01
  %2195 = fmul fast float %2193, %2193
  %2196 = fmul fast float %2195, %2194
  %2197 = fsub fast float 1.500000e+00, %2196
  %2198 = fmul fast float %2193, %2105
  %2199 = fmul fast float %2198, %2197
  %2200 = bitcast float %2106 to i32
  %2201 = ashr i32 %2200, 1
  %2202 = sub nsw i32 1597463174, %2201
  %2203 = bitcast i32 %2202 to float
  %2204 = fmul fast float %2106, 5.000000e-01
  %2205 = fmul fast float %2203, %2203
  %2206 = fmul fast float %2205, %2204
  %2207 = fsub fast float 1.500000e+00, %2206
  %2208 = fmul fast float %2203, %2106
  %2209 = fmul fast float %2208, %2207
  %2210 = fsub fast float %2189, %2171
  %2211 = fsub fast float %2199, %2175
  %2212 = fsub fast float %2209, %2179
  %2213 = fmul fast float %2210, %2139
  %2214 = fmul fast float %2211, %2141
  %2215 = fmul fast float %2212, %2146
  %2216 = fadd fast float %2213, %2154
  %2217 = fadd fast float %2214, %2158
  %2218 = fadd fast float %2215, %2162
  %2219 = call float @dx.op.unary.f32(i32 7, float %2216)  ; Saturate(value)
  %2220 = call float @dx.op.unary.f32(i32 7, float %2217)  ; Saturate(value)
  %2221 = call float @dx.op.unary.f32(i32 7, float %2218)  ; Saturate(value)
  %2222 = fmul fast float %2219, %2219
  %2223 = fmul fast float %2220, %2220
  %2224 = fmul fast float %2221, %2221
  %2225 = fsub fast float %2222, %2104
  %2226 = fsub fast float %2223, %2105
  %2227 = fsub fast float %2224, %2106
  %2228 = fmul fast float %2225, %2129
  %2229 = fmul fast float %2226, %2129
  %2230 = fmul fast float %2227, %2129
  %2231 = fadd fast float %2228, %2104
  %2232 = fadd fast float %2229, %2105
  %2233 = fadd fast float %2230, %2106
  %2234 = fadd fast float %2151, %2115
  %2235 = fsub fast float %2234, %2168
  %2236 = call float @dx.op.unary.f32(i32 7, float %2235)  ; Saturate(value)
  %2237 = fsub fast float %2236, %2115
  %2238 = fmul fast float %2237, %2129
  %2239 = fadd fast float %2238, %2115
  br label %2293

; <label>:2240                                    ; preds = %2128
  %2241 = and i32 %2131, 134217728
  %2242 = icmp eq i32 %2241, 0
  br i1 %2242, label %2277, label %2243

; <label>:2243                                    ; preds = %2240
  %2244 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %2245 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %2246 = call float @dx.op.unary.f32(i32 24, float %338)  ; Sqrt(value)
  %2247 = fadd fast float %2244, -5.000000e-01
  %2248 = fadd fast float %2245, -5.000000e-01
  %2249 = fadd fast float %2246, -5.000000e-01
  %2250 = fmul fast float %2247, %2129
  %2251 = fmul fast float %2248, %2129
  %2252 = fmul fast float %2249, %2129
  %2253 = fadd fast float %2250, 5.000000e-01
  %2254 = fadd fast float %2251, 5.000000e-01
  %2255 = fadd fast float %2252, 5.000000e-01
  %2256 = call float @dx.op.unary.f32(i32 24, float %2104)  ; Sqrt(value)
  %2257 = call float @dx.op.unary.f32(i32 24, float %2105)  ; Sqrt(value)
  %2258 = call float @dx.op.unary.f32(i32 24, float %2106)  ; Sqrt(value)
  %2259 = fmul fast float %2253, 2.000000e+00
  %2260 = fsub fast float 1.000000e+00, %2259
  %2261 = fmul fast float %2260, %2256
  %2262 = fadd fast float %2261, %2259
  %2263 = fmul fast float %2262, %2256
  %2264 = fmul fast float %2254, 2.000000e+00
  %2265 = fsub fast float 1.000000e+00, %2264
  %2266 = fmul fast float %2265, %2257
  %2267 = fadd fast float %2266, %2264
  %2268 = fmul fast float %2267, %2257
  %2269 = fmul fast float %2255, 2.000000e+00
  %2270 = fsub fast float 1.000000e+00, %2269
  %2271 = fmul fast float %2270, %2258
  %2272 = fadd fast float %2271, %2269
  %2273 = fmul fast float %2272, %2258
  %2274 = fmul fast float %2263, %2263
  %2275 = fmul fast float %2268, %2268
  %2276 = fmul fast float %2273, %2273
  br label %2293

; <label>:2277                                    ; preds = %2240
  %2278 = fmul fast float %330, %330
  %2279 = fmul fast float %334, %334
  %2280 = fmul fast float %338, %338
  %2281 = fadd fast float %2278, -1.000000e+00
  %2282 = fadd fast float %2279, -1.000000e+00
  %2283 = fadd fast float %2280, -1.000000e+00
  %2284 = fmul fast float %2129, %2281
  %2285 = fmul fast float %2129, %2282
  %2286 = fmul fast float %2129, %2283
  %2287 = fadd fast float %2284, 1.000000e+00
  %2288 = fadd fast float %2285, 1.000000e+00
  %2289 = fadd fast float %2286, 1.000000e+00
  %2290 = fmul fast float %2287, %2104
  %2291 = fmul fast float %2288, %2105
  %2292 = fmul fast float %2289, %2106
  br label %2293

; <label>:2293                                    ; preds = %2277, %2243, %2134, %2090
  %2294 = phi float [ %2239, %2134 ], [ %2115, %2243 ], [ %2115, %2277 ], [ 0x3FA23C0BE0000000, %2090 ]
  %2295 = phi float [ %2231, %2134 ], [ %2274, %2243 ], [ %2290, %2277 ], [ 1.000000e+00, %2090 ]
  %2296 = phi float [ %2232, %2134 ], [ %2275, %2243 ], [ %2291, %2277 ], [ 1.000000e+00, %2090 ]
  %2297 = phi float [ %2233, %2134 ], [ %2276, %2243 ], [ %2292, %2277 ], [ 1.000000e+00, %2090 ]
  %2298 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2299 = extractvalue %dx.types.CBufRet.i32 %2298, 1
  %2300 = and i32 %2299, 1
  %2301 = icmp ne i32 %2300, 0
  %2302 = add i32 %43, 356
  %2303 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2302, i32 undef)  ; BufferLoad(srv,index,wot)
  %2304 = extractvalue %dx.types.ResRet.i32 %2303, 0
  %2305 = and i32 %2304, 32
  %2306 = icmp ne i32 %2305, 0
  %2307 = and i1 %2301, %2306
  %2308 = select i1 %2307, float 1.000000e+00, float %2295
  %2309 = select i1 %2307, float 0x3FD3333340000000, float %2296
  %2310 = select i1 %2307, float 0x3FD3333340000000, float %2297
  %2311 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2312 = extractvalue %dx.types.ResRet.i32 %2311, 0
  %2313 = and i32 %2312, 32
  %2314 = icmp eq i32 %2313, 0
  br i1 %2314, label %2387, label %2315

; <label>:2315                                    ; preds = %2293
  %2316 = add i32 %43, 124
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2316, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = add i32 %43, 432
  %2320 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2319, i32 undef)  ; BufferLoad(srv,index,wot)
  %2321 = extractvalue %dx.types.ResRet.i32 %2320, 0
  %2322 = add i32 %2321, 0
  %2323 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2322, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2324 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2323, %dx.types.Handle %73, float %1900, float %1901, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2325 = extractvalue %dx.types.ResRet.f32 %2324, 0
  %2326 = extractvalue %dx.types.ResRet.f32 %2324, 1
  %2327 = extractvalue %dx.types.ResRet.f32 %2324, 2
  %2328 = extractvalue %dx.types.ResRet.f32 %2324, 3
  %2329 = and i32 %2318, 255
  %2330 = uitofp i32 %2329 to float
  %2331 = lshr i32 %2318, 8
  %2332 = and i32 %2331, 255
  %2333 = uitofp i32 %2332 to float
  %2334 = lshr i32 %2318, 16
  %2335 = and i32 %2334, 255
  %2336 = uitofp i32 %2335 to float
  %2337 = fmul fast float %2336, 0x3F70101000000000
  %2338 = fmul fast float %2325, %2330
  %2339 = fadd fast float %2338, %2333
  %2340 = fmul fast float %2339, 0x3F70101000000000
  %2341 = fadd fast float %2326, -5.000000e-01
  %2342 = fadd fast float %2328, -5.000000e-01
  %2343 = fmul fast float %2341, %2337
  %2344 = fmul fast float %2342, %2337
  %2345 = fadd fast float %2343, 5.000000e-01
  %2346 = fadd fast float %2344, 5.000000e-01
  %2347 = fmul fast float %2345, 2.000000e+00
  %2348 = fadd fast float %2347, -1.000000e+00
  %2349 = fmul fast float %2346, 2.000000e+00
  %2350 = fadd fast float %2349, -1.000000e+00
  %2351 = fadd fast float %2348, %2350
  %2352 = fmul fast float %2351, 5.000000e-01
  %2353 = fsub fast float %2348, %2350
  %2354 = fmul fast float %2353, 5.000000e-01
  %2355 = call float @dx.op.unary.f32(i32 6, float %2352)  ; FAbs(value)
  %2356 = fsub fast float 1.000000e+00, %2355
  %2357 = call float @dx.op.unary.f32(i32 6, float %2354)  ; FAbs(value)
  %2358 = fsub fast float %2356, %2357
  %2359 = call float @dx.op.dot3.f32(i32 55, float %2352, float %2354, float %2358, float %2352, float %2354, float %2358)  ; Dot3(ax,ay,az,bx,by,bz)
  %2360 = call float @dx.op.unary.f32(i32 25, float %2359)  ; Rsqrt(value)
  %2361 = fmul fast float %2352, %2360
  %2362 = fmul fast float %2354, %2360
  %2363 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2364 = extractvalue %dx.types.ResRet.i32 %2363, 0
  %2365 = and i32 %2364, 67108864
  %2366 = icmp eq i32 %2365, 0
  br i1 %2366, label %2383, label %2367

; <label>:2367                                    ; preds = %2315
  %2368 = add i32 %43, 312
  %2369 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2368, i32 undef)  ; BufferLoad(srv,index,wot)
  %2370 = extractvalue %dx.types.ResRet.i32 %2369, 0
  %2371 = and i32 %2370, 65535
  %2372 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2371)  ; LegacyF16ToF32(value)
  %2373 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1810, i32 undef)  ; BufferLoad(srv,index,wot)
  %2374 = extractvalue %dx.types.ResRet.i32 %2373, 0
  %2375 = and i32 %2374, 65535
  %2376 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2375)  ; LegacyF16ToF32(value)
  %2377 = lshr i32 %2370, 16
  %2378 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2377)  ; LegacyF16ToF32(value)
  %2379 = fsub fast float %2340, %2378
  %2380 = fmul fast float %2379, %2372
  %2381 = fadd fast float %2380, %2376
  %2382 = call float @dx.op.unary.f32(i32 7, float %2381)  ; Saturate(value)
  br label %2383

; <label>:2383                                    ; preds = %2367, %2315
  %2384 = phi float [ %2382, %2367 ], [ %2340, %2315 ]
  %2385 = call float @dx.op.dot2.f32(i32 54, float %2361, float %2362, float %1804, float %1805)  ; Dot2(ax,ay,bx,by)
  %2386 = call float @dx.op.dot2.f32(i32 54, float %2361, float %2362, float %1806, float %1807)  ; Dot2(ax,ay,bx,by)
  br label %2387

; <label>:2387                                    ; preds = %2383, %2293
  %2388 = phi float [ %2384, %2383 ], [ 0x3FD6666660000000, %2293 ]
  %2389 = phi float [ %2385, %2383 ], [ 0.000000e+00, %2293 ]
  %2390 = phi float [ %2386, %2383 ], [ 0.000000e+00, %2293 ]
  %2391 = phi float [ %2327, %2383 ], [ 1.000000e+00, %2293 ]
  %2392 = add i32 %43, 192
  %2393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2392, i32 undef)  ; BufferLoad(srv,index,wot)
  %2394 = extractvalue %dx.types.ResRet.i32 %2393, 0
  %2395 = lshr i32 %2394, 22
  %2396 = shl nuw nsw i32 %2395, 5
  %2397 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2396)  ; LegacyF16ToF32(value)
  %2398 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2399 = extractvalue %dx.types.ResRet.i32 %2398, 0
  %2400 = and i32 %2399, 64
  %2401 = icmp eq i32 %2400, 0
  br i1 %2401, label %2435, label %2402

; <label>:2402                                    ; preds = %2387
  %2403 = add i32 %43, 448
  %2404 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2403, i32 undef)  ; BufferLoad(srv,index,wot)
  %2405 = extractvalue %dx.types.ResRet.i32 %2404, 0
  %2406 = add i32 %2405, 0
  %2407 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2406, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = and i32 %2409, 131072
  %2411 = icmp eq i32 %2410, 0
  %2412 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2407, %dx.types.Handle %73, float %1900, float %1901, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2413 = extractvalue %dx.types.ResRet.f32 %2412, 0
  %2414 = extractvalue %dx.types.ResRet.f32 %2412, 1
  %2415 = extractvalue %dx.types.ResRet.f32 %2412, 2
  %2416 = fmul fast float %2413, %318
  %2417 = fmul fast float %2414, %321
  %2418 = fmul fast float %2415, %324
  br i1 %2411, label %2425, label %2419

; <label>:2419                                    ; preds = %2402
  %2420 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2421 = extractvalue %dx.types.CBufRet.f32 %2420, 0
  %2422 = fmul fast float %2421, %2416
  %2423 = fmul fast float %2421, %2417
  %2424 = fmul fast float %2421, %2418
  br label %2425

; <label>:2425                                    ; preds = %2419, %2402
  %2426 = phi float [ %2422, %2419 ], [ %2416, %2402 ]
  %2427 = phi float [ %2423, %2419 ], [ %2417, %2402 ]
  %2428 = phi float [ %2424, %2419 ], [ %2418, %2402 ]
  %2429 = fmul fast float %2426, %2397
  %2430 = select i1 %214, float %2429, float %2426
  %2431 = call float @dx.op.dot3.f32(i32 55, float %2430, float %2427, float %2428, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2432 = select i1 %214, float 0.000000e+00, float %2426
  %2433 = select i1 %214, float %2431, float %2427
  %2434 = select i1 %214, float 0.000000e+00, float %2428
  br label %2435

; <label>:2435                                    ; preds = %2425, %2387
  %2436 = phi float [ %2432, %2425 ], [ 0.000000e+00, %2387 ]
  %2437 = phi float [ %2433, %2425 ], [ 0.000000e+00, %2387 ]
  %2438 = phi float [ %2434, %2425 ], [ 0.000000e+00, %2387 ]
  %2439 = add i32 %43, 128
  %2440 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2439, i32 undef)  ; BufferLoad(srv,index,wot)
  %2441 = extractvalue %dx.types.ResRet.i32 %2440, 0
  %2442 = and i32 %2441, 255
  %2443 = uitofp i32 %2442 to float
  %2444 = lshr i32 %2441, 8
  %2445 = and i32 %2444, 255
  %2446 = uitofp i32 %2445 to float
  %2447 = call float @dx.op.dot3.f32(i32 55, float %2308, float %2309, float %2310, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2448 = fmul fast float %2446, %2447
  %2449 = fadd fast float %2448, %2443
  %2450 = fmul fast float %2449, 0x3F70101020000000
  %2451 = call float @dx.op.unary.f32(i32 7, float %2450)  ; Saturate(value)
  br i1 %1792, label %2452, label %2460

; <label>:2452                                    ; preds = %2435
  %2453 = fsub fast float 1.000000e+00, %2088
  %2454 = fmul fast float %2453, %1781
  %2455 = fmul fast float %2453, %1782
  %2456 = fmul fast float %2453, %1783
  %2457 = fmul fast float %2453, %1784
  %2458 = fmul fast float %2453, %1785
  %2459 = fmul fast float %2453, %1786
  br label %2460

; <label>:2460                                    ; preds = %2452, %2435
  %2461 = phi float [ %2454, %2452 ], [ %1781, %2435 ]
  %2462 = phi float [ %2455, %2452 ], [ %1782, %2435 ]
  %2463 = phi float [ %2456, %2452 ], [ %1783, %2435 ]
  %2464 = phi float [ %2457, %2452 ], [ %1784, %2435 ]
  %2465 = phi float [ %2458, %2452 ], [ %1785, %2435 ]
  %2466 = phi float [ %2459, %2452 ], [ %1786, %2435 ]
  %2467 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1793, i32 undef)  ; BufferLoad(srv,index,wot)
  %2468 = extractvalue %dx.types.ResRet.i32 %2467, 0
  %2469 = and i32 %2468, 3
  %2470 = icmp eq i32 %2469, 3
  br i1 %2470, label %2549, label %2471

; <label>:2471                                    ; preds = %2460
  %2472 = and i32 %2468, 16
  %2473 = icmp ne i32 %2472, 0
  %2474 = select i1 %2473, float %2088, float 0.000000e+00
  %2475 = icmp eq i32 %2469, 0
  br i1 %2475, label %2476, label %2504

; <label>:2476                                    ; preds = %2471
  %2477 = and i32 %2468, 64
  %2478 = icmp ne i32 %2477, 0
  %2479 = select i1 %2478, float %2088, float 0.000000e+00
  %2480 = fsub fast float %2308, %2461
  %2481 = fsub fast float %2309, %2462
  %2482 = fsub fast float %2310, %2463
  %2483 = fmul fast float %2474, %2480
  %2484 = fmul fast float %2474, %2481
  %2485 = fmul fast float %2474, %2482
  %2486 = fadd fast float %2483, %2461
  %2487 = fadd fast float %2484, %2462
  %2488 = fadd fast float %2485, %2463
  %2489 = fsub fast float %2294, %1787
  %2490 = fmul fast float %2474, %2489
  %2491 = fadd fast float %2490, %1787
  %2492 = fsub fast float %2436, %2464
  %2493 = fsub fast float %2437, %2465
  %2494 = fsub fast float %2438, %2466
  %2495 = fmul fast float %2479, %2492
  %2496 = fmul fast float %2479, %2493
  %2497 = fmul fast float %2479, %2494
  %2498 = fadd fast float %2495, %2464
  %2499 = fadd fast float %2496, %2465
  %2500 = fadd fast float %2497, %2466
  %2501 = fsub fast float %2451, %1790
  %2502 = fmul fast float %2474, %2501
  %2503 = fadd fast float %2502, %1790
  br label %2549

; <label>:2504                                    ; preds = %2471
  %2505 = icmp eq i32 %2469, 1
  br i1 %2505, label %2506, label %2519

; <label>:2506                                    ; preds = %2504
  %2507 = fadd fast float %2308, -1.000000e+00
  %2508 = fadd fast float %2309, -1.000000e+00
  %2509 = fadd fast float %2310, -1.000000e+00
  %2510 = fmul fast float %2474, %2507
  %2511 = fmul fast float %2474, %2508
  %2512 = fmul fast float %2474, %2509
  %2513 = fadd fast float %2510, 1.000000e+00
  %2514 = fadd fast float %2511, 1.000000e+00
  %2515 = fadd fast float %2512, 1.000000e+00
  %2516 = fmul fast float %2513, %2461
  %2517 = fmul fast float %2514, %2462
  %2518 = fmul fast float %2515, %2463
  br label %2549

; <label>:2519                                    ; preds = %2504
  %2520 = icmp eq i32 %2469, 2
  br i1 %2520, label %2521, label %2549

; <label>:2521                                    ; preds = %2519
  %2522 = call float @dx.op.unary.f32(i32 24, float %2308)  ; Sqrt(value)
  %2523 = call float @dx.op.unary.f32(i32 24, float %2309)  ; Sqrt(value)
  %2524 = call float @dx.op.unary.f32(i32 24, float %2310)  ; Sqrt(value)
  %2525 = fadd fast float %2522, -5.000000e-01
  %2526 = fadd fast float %2523, -5.000000e-01
  %2527 = fadd fast float %2524, -5.000000e-01
  %2528 = fmul fast float %2525, %2474
  %2529 = fmul fast float %2526, %2474
  %2530 = fmul fast float %2527, %2474
  %2531 = fadd fast float %2528, 5.000000e-01
  %2532 = fadd fast float %2529, 5.000000e-01
  %2533 = fadd fast float %2530, 5.000000e-01
  %2534 = fmul fast float %2531, 2.000000e+00
  %2535 = fsub fast float 1.000000e+00, %2534
  %2536 = fmul fast float %2535, %2461
  %2537 = fadd fast float %2536, %2534
  %2538 = fmul fast float %2537, %2461
  %2539 = fmul fast float %2532, 2.000000e+00
  %2540 = fsub fast float 1.000000e+00, %2539
  %2541 = fmul fast float %2540, %2462
  %2542 = fadd fast float %2541, %2539
  %2543 = fmul fast float %2542, %2462
  %2544 = fmul fast float %2533, 2.000000e+00
  %2545 = fsub fast float 1.000000e+00, %2544
  %2546 = fmul fast float %2545, %2463
  %2547 = fadd fast float %2546, %2544
  %2548 = fmul fast float %2547, %2463
  br label %2549

; <label>:2549                                    ; preds = %2521, %2519, %2506, %2476, %2460
  %2550 = phi float [ %2461, %2460 ], [ %2538, %2521 ], [ %2461, %2519 ], [ %2516, %2506 ], [ %2486, %2476 ]
  %2551 = phi float [ %2462, %2460 ], [ %2543, %2521 ], [ %2462, %2519 ], [ %2517, %2506 ], [ %2487, %2476 ]
  %2552 = phi float [ %2463, %2460 ], [ %2548, %2521 ], [ %2463, %2519 ], [ %2518, %2506 ], [ %2488, %2476 ]
  %2553 = phi float [ %2464, %2460 ], [ %2464, %2521 ], [ %2464, %2519 ], [ %2464, %2506 ], [ %2498, %2476 ]
  %2554 = phi float [ %2465, %2460 ], [ %2465, %2521 ], [ %2465, %2519 ], [ %2465, %2506 ], [ %2499, %2476 ]
  %2555 = phi float [ %2466, %2460 ], [ %2466, %2521 ], [ %2466, %2519 ], [ %2466, %2506 ], [ %2500, %2476 ]
  %2556 = phi float [ %1787, %2460 ], [ %1787, %2521 ], [ %1787, %2519 ], [ %1787, %2506 ], [ %2491, %2476 ]
  %2557 = phi float [ %1790, %2460 ], [ %1790, %2521 ], [ %1790, %2519 ], [ %1790, %2506 ], [ %2503, %2476 ]
  %2558 = and i32 %2468, 12
  %2559 = icmp eq i32 %2558, 12
  br i1 %2559, label %2632, label %2560

; <label>:2560                                    ; preds = %2549
  %2561 = and i32 %2468, 2097184
  %2562 = icmp eq i32 %2561, 2097184
  %2563 = select i1 %2562, float %2088, float 0.000000e+00
  %2564 = and i32 %2468, 4194336
  %2565 = icmp eq i32 %2564, 4194336
  %2566 = select i1 %2565, float %2088, float 0.000000e+00
  %2567 = and i32 %2468, 8388640
  %2568 = icmp eq i32 %2567, 8388640
  %2569 = select i1 %2568, float %2088, float 0.000000e+00
  %2570 = icmp eq i32 %2558, 0
  br i1 %2570, label %2571, label %2584

; <label>:2571                                    ; preds = %2560
  %2572 = fsub fast float %2389, %1779
  %2573 = fsub fast float %2390, %1780
  %2574 = fmul fast float %2563, %2572
  %2575 = fmul fast float %2563, %2573
  %2576 = fadd fast float %2574, %1779
  %2577 = fadd fast float %2575, %1780
  %2578 = fsub fast float %2391, %1789
  %2579 = fmul fast float %2566, %2578
  %2580 = fadd fast float %2579, %1789
  %2581 = fsub fast float %2388, %1788
  %2582 = fmul fast float %2569, %2581
  %2583 = fadd fast float %2582, %1788
  br label %2632

; <label>:2584                                    ; preds = %2560
  %2585 = icmp eq i32 %2558, 4
  br i1 %2585, label %2586, label %2618

; <label>:2586                                    ; preds = %2584
  %2587 = fmul fast float %2563, %2389
  %2588 = fmul fast float %2563, %2390
  %2589 = fadd fast float %2587, %1779
  %2590 = fadd fast float %2588, %1780
  %2591 = call float @dx.op.binary.f32(i32 36, float %1789, float %2391)  ; FMin(a,b)
  %2592 = fsub fast float %2591, %1789
  %2593 = fmul fast float %2592, %2566
  %2594 = fadd fast float %2593, %1789
  %2595 = fadd fast float %2388, %1788
  %2596 = fmul fast float %2595, 0x3FF337FAE0000000
  %2597 = fmul fast float %1788, %1788
  %2598 = fmul fast float %2388, %2388
  %2599 = fadd fast float %2598, %2597
  %2600 = fmul fast float %2599, 0x3FE5152B00000000
  %2601 = fmul fast float %1788, 0xBFCC1F85E0000000
  %2602 = fmul fast float %2601, %2388
  %2603 = fadd fast float %2602, 0xBFE1363700000000
  %2604 = fadd fast float %2603, %2596
  %2605 = fsub fast float %2604, %2600
  %2606 = fmul fast float %2595, 0x3FBA6F0D00000000
  %2607 = fmul fast float %2599, 0x3FD0432880000000
  %2608 = fmul fast float %1788, 0xBFEF110800000000
  %2609 = fmul fast float %2608, %2388
  %2610 = fadd fast float %2609, 1.000000e+00
  %2611 = fsub fast float %2610, %2606
  %2612 = fadd fast float %2611, %2607
  %2613 = fdiv fast float %2605, %2612
  %2614 = call float @dx.op.unary.f32(i32 7, float %2613)  ; Saturate(value)
  %2615 = fsub fast float %2614, %1788
  %2616 = fmul fast float %2615, %2569
  %2617 = fadd fast float %2616, %1788
  br label %2632

; <label>:2618                                    ; preds = %2584
  %2619 = icmp eq i32 %2558, 8
  br i1 %2619, label %2620, label %2632

; <label>:2620                                    ; preds = %2618
  %2621 = fmul fast float %2563, %2389
  %2622 = fmul fast float %2563, %2390
  %2623 = fadd fast float %2621, %1779
  %2624 = fadd fast float %2622, %1780
  %2625 = call float @dx.op.binary.f32(i32 36, float %1789, float %2391)  ; FMin(a,b)
  %2626 = fsub fast float %2625, %1789
  %2627 = fmul fast float %2626, %2566
  %2628 = fadd fast float %2627, %1789
  %2629 = fsub fast float %2388, %1788
  %2630 = fmul fast float %2569, %2629
  %2631 = fadd fast float %2630, %1788
  br label %2632

; <label>:2632                                    ; preds = %2620, %2618, %2586, %2571, %2549, %2087, %1791, %1778
  %2633 = phi float [ %1779, %2549 ], [ %1779, %2087 ], [ %1779, %1778 ], [ %2623, %2620 ], [ %1779, %2618 ], [ %2589, %2586 ], [ %2576, %2571 ], [ %1779, %1791 ]
  %2634 = phi float [ %1780, %2549 ], [ %1780, %2087 ], [ %1780, %1778 ], [ %2624, %2620 ], [ %1780, %2618 ], [ %2590, %2586 ], [ %2577, %2571 ], [ %1780, %1791 ]
  %2635 = phi float [ %2550, %2549 ], [ %1781, %2087 ], [ %1781, %1778 ], [ %2550, %2620 ], [ %2550, %2618 ], [ %2550, %2586 ], [ %2550, %2571 ], [ %1781, %1791 ]
  %2636 = phi float [ %2551, %2549 ], [ %1782, %2087 ], [ %1782, %1778 ], [ %2551, %2620 ], [ %2551, %2618 ], [ %2551, %2586 ], [ %2551, %2571 ], [ %1782, %1791 ]
  %2637 = phi float [ %2552, %2549 ], [ %1783, %2087 ], [ %1783, %1778 ], [ %2552, %2620 ], [ %2552, %2618 ], [ %2552, %2586 ], [ %2552, %2571 ], [ %1783, %1791 ]
  %2638 = phi float [ %2553, %2549 ], [ %1784, %2087 ], [ %1784, %1778 ], [ %2553, %2620 ], [ %2553, %2618 ], [ %2553, %2586 ], [ %2553, %2571 ], [ %1784, %1791 ]
  %2639 = phi float [ %2554, %2549 ], [ %1785, %2087 ], [ %1785, %1778 ], [ %2554, %2620 ], [ %2554, %2618 ], [ %2554, %2586 ], [ %2554, %2571 ], [ %1785, %1791 ]
  %2640 = phi float [ %2555, %2549 ], [ %1786, %2087 ], [ %1786, %1778 ], [ %2555, %2620 ], [ %2555, %2618 ], [ %2555, %2586 ], [ %2555, %2571 ], [ %1786, %1791 ]
  %2641 = phi float [ %2556, %2549 ], [ %1787, %2087 ], [ %1787, %1778 ], [ %2556, %2620 ], [ %2556, %2618 ], [ %2556, %2586 ], [ %2556, %2571 ], [ %1787, %1791 ]
  %2642 = phi float [ %1788, %2549 ], [ %1788, %2087 ], [ %1788, %1778 ], [ %2631, %2620 ], [ %1788, %2618 ], [ %2617, %2586 ], [ %2583, %2571 ], [ %1788, %1791 ]
  %2643 = phi float [ %1789, %2549 ], [ %1789, %2087 ], [ %1789, %1778 ], [ %2628, %2620 ], [ %1789, %2618 ], [ %2594, %2586 ], [ %2580, %2571 ], [ %1789, %1791 ]
  %2644 = phi float [ %2557, %2549 ], [ %1790, %2087 ], [ %1790, %1778 ], [ %2557, %2620 ], [ %2557, %2618 ], [ %2557, %2586 ], [ %2557, %2571 ], [ %1790, %1791 ]
  br i1 %405, label %3486, label %2645

; <label>:2645                                    ; preds = %2632
  %2646 = icmp ult i32 %456, 4
  %2647 = add i32 %43, 72
  %2648 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2649 = extractvalue %dx.types.ResRet.i32 %2648, 0
  %2650 = add i32 %43, 76
  %2651 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2650, i32 undef)  ; BufferLoad(srv,index,wot)
  %2652 = extractvalue %dx.types.ResRet.i32 %2651, 0
  %2653 = or i32 %2652, %2649
  %2654 = icmp eq i32 %2653, 0
  br i1 %2654, label %3486, label %2655

; <label>:2655                                    ; preds = %2645
  %2656 = and i32 %2649, 262144
  %2657 = icmp ne i32 %2656, 0
  %2658 = select i1 %2657, float %45, float 1.000000e+00
  %2659 = select i1 %2657, float %46, float 0.000000e+00
  %2660 = select i1 %2657, float %47, float 0.000000e+00
  %2661 = select i1 %2657, float %48, float 1.000000e+00
  %2662 = select i1 %2657, float %49, float %65
  %2663 = select i1 %2657, float %50, float %66
  %2664 = add i32 %43, 332
  %2665 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2664, i32 undef)  ; BufferLoad(srv,index,wot)
  %2666 = extractvalue %dx.types.ResRet.i32 %2665, 0
  %2667 = lshr i32 %2666, 16
  %2668 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2667)  ; LegacyF16ToF32(value)
  %2669 = fmul fast float %2668, 0x3F50624DE0000000
  %2670 = add i32 %43, 136
  %2671 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2672 = extractvalue %dx.types.ResRet.i32 %2671, 0
  %2673 = lshr i32 %2672, 16
  %2674 = and i32 %2673, 255
  %2675 = lshr i32 %2672, 24
  %2676 = add i32 %43, 340
  %2677 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2676, i32 undef)  ; BufferLoad(srv,index,wot)
  %2678 = extractvalue %dx.types.ResRet.i32 %2677, 0
  %2679 = and i32 %2678, 65535
  %2680 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2679)  ; LegacyF16ToF32(value)
  %2681 = lshr i32 %2678, 16
  %2682 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2681)  ; LegacyF16ToF32(value)
  %2683 = add i32 %43, 80
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = lshr i32 %2685, 22
  %2687 = shl nuw nsw i32 %2686, 5
  %2688 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2687)  ; LegacyF16ToF32(value)
  %2689 = shl i32 %2685, 4
  %2690 = and i32 %2689, 32752
  %2691 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2690)  ; LegacyF16ToF32(value)
  %2692 = lshr i32 %2685, 7
  %2693 = and i32 %2692, 32752
  %2694 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2693)  ; LegacyF16ToF32(value)
  %2695 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2696 = extractvalue %dx.types.CBufRet.f32 %2695, 3
  %2697 = fmul fast float %2696, 1.000000e+03
  %2698 = fmul fast float %395, %2697
  %2699 = call float @dx.op.unary.f32(i32 22, float %2698)  ; Frc(value)
  %2700 = fadd fast float %2699, %385
  %2701 = fmul fast float %396, %2697
  %2702 = call float @dx.op.unary.f32(i32 22, float %2701)  ; Frc(value)
  %2703 = fadd fast float %2702, %387
  %2704 = fmul fast float %2669, %2697
  %2705 = call float @dx.op.unary.f32(i32 22, float %2704)  ; Frc(value)
  %2706 = fmul fast float %2705, 0x401921FB60000000
  %2707 = fadd fast float %2706, %2688
  %2708 = call float @dx.op.unary.f32(i32 13, float %2707)  ; Sin(value)
  %2709 = call float @dx.op.unary.f32(i32 12, float %2707)  ; Cos(value)
  %2710 = fsub fast float -0.000000e+00, %2708
  %2711 = fadd fast float %2662, -5.000000e-01
  %2712 = fadd fast float %2663, -5.000000e-01
  %2713 = fmul fast float %2680, %2711
  %2714 = fmul fast float %2682, %2712
  %2715 = fadd fast float %2713, 5.000000e-01
  %2716 = fadd fast float %2714, 5.000000e-01
  %2717 = fmul fast float %2691, %2715
  %2718 = fmul fast float %2694, %2716
  %2719 = fmul fast float %2709, %2717
  %2720 = call float @dx.op.tertiary.f32(i32 46, float %2710, float %2718, float %2719)  ; FMad(a,b,c)
  %2721 = fmul fast float %2708, %2717
  %2722 = call float @dx.op.tertiary.f32(i32 46, float %2709, float %2718, float %2721)  ; FMad(a,b,c)
  %2723 = fadd fast float %2700, %2720
  %2724 = fadd fast float %2703, %2722
  %2725 = icmp ugt i32 %2674, 1
  %2726 = icmp ugt i32 %2672, 33554431
  %2727 = or i1 %2726, %2725
  br i1 %2727, label %2728, label %2753

; <label>:2728                                    ; preds = %2655
  %2729 = add i32 %43, 276
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = lshr i32 %2731, 16
  %2733 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2732)  ; LegacyF16ToF32(value)
  %2734 = fmul fast float %2696, %2733
  %2735 = call float @dx.op.unary.f32(i32 22, float %2734)  ; Frc(value)
  %2736 = mul nuw nsw i32 %2674, %2675
  %2737 = uitofp i32 %2736 to float
  %2738 = fmul fast float %2735, %2737
  %2739 = call float @dx.op.unary.f32(i32 27, float %2738)  ; Round_ni(value)
  %2740 = fptoui float %2739 to i32
  %2741 = urem i32 %2740, %2674
  %2742 = udiv i32 %2740, %2675
  %2743 = call float @dx.op.unary.f32(i32 22, float %2723)  ; Frc(value)
  %2744 = call float @dx.op.unary.f32(i32 22, float %2724)  ; Frc(value)
  %2745 = uitofp i32 %2741 to float
  %2746 = uitofp i32 %2742 to float
  %2747 = fadd fast float %2743, %2745
  %2748 = fadd fast float %2744, %2746
  %2749 = uitofp i32 %2674 to float
  %2750 = uitofp i32 %2675 to float
  %2751 = fdiv fast float %2747, %2749
  %2752 = fdiv fast float %2748, %2750
  br label %2753

; <label>:2753                                    ; preds = %2728, %2655
  %2754 = phi float [ %2751, %2728 ], [ %2723, %2655 ]
  %2755 = phi float [ %2752, %2728 ], [ %2724, %2655 ]
  %2756 = and i32 %2649, 16777216
  %2757 = icmp eq i32 %2756, 0
  br i1 %2757, label %2867, label %2758

; <label>:2758                                    ; preds = %2753
  %2759 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2760 = extractvalue %dx.types.CBufRet.f32 %2759, 0
  %2761 = extractvalue %dx.types.CBufRet.f32 %2759, 1
  %2762 = extractvalue %dx.types.CBufRet.f32 %2759, 2
  %2763 = fadd fast float %2760, %140
  %2764 = fadd fast float %2761, %141
  %2765 = fadd fast float %2762, %142
  %2766 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2767 = extractvalue %dx.types.CBufRet.f32 %2766, 0
  %2768 = call float @dx.op.unary.f32(i32 7, float %2767)  ; Saturate(value)
  %2769 = icmp eq i32 %44, 65535
  br i1 %2769, label %2864, label %2770

; <label>:2770                                    ; preds = %2758
  %2771 = lshr i32 %44, 1
  %2772 = shl i32 %2771, 2
  %2773 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2772, i32 undef)  ; BufferLoad(srv,index,wot)
  %2774 = extractvalue %dx.types.ResRet.i32 %2773, 0
  %2775 = and i32 %44, 1
  %2776 = icmp ne i32 %2775, 0
  %2777 = lshr i32 %2774, 16
  %2778 = and i32 %2774, 65535
  %2779 = select i1 %2776, i32 %2777, i32 %2778
  %2780 = icmp eq i32 %2779, 65535
  br i1 %2780, label %2860, label %2781

; <label>:2781                                    ; preds = %2770
  %2782 = mul nuw nsw i32 %2779, 40
  %2783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2782, i32 undef)  ; BufferLoad(srv,index,wot)
  %2784 = extractvalue %dx.types.ResRet.f32 %2783, 0
  %2785 = extractvalue %dx.types.ResRet.f32 %2783, 1
  %2786 = extractvalue %dx.types.ResRet.f32 %2783, 2
  %2787 = add nuw nsw i32 %2782, 12
  %2788 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2787, i32 undef)  ; BufferLoad(srv,index,wot)
  %2789 = extractvalue %dx.types.ResRet.f32 %2788, 0
  %2790 = extractvalue %dx.types.ResRet.f32 %2788, 1
  %2791 = extractvalue %dx.types.ResRet.f32 %2788, 2
  %2792 = add nuw nsw i32 %2782, 24
  %2793 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2792, i32 undef)  ; BufferLoad(srv,index,wot)
  %2794 = extractvalue %dx.types.ResRet.f32 %2793, 0
  %2795 = extractvalue %dx.types.ResRet.f32 %2793, 1
  %2796 = extractvalue %dx.types.ResRet.f32 %2793, 2
  %2797 = add nuw nsw i32 %2782, 36
  %2798 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2797, i32 undef)  ; BufferLoad(srv,index,wot)
  %2799 = extractvalue %dx.types.ResRet.f32 %2798, 0
  %2800 = fsub fast float %2763, %2784
  %2801 = fsub fast float %2764, %2785
  %2802 = fsub fast float %2765, %2786
  %2803 = fmul fast float %2799, %2800
  %2804 = fmul fast float %2799, %2801
  %2805 = fmul fast float %2799, %2802
  %2806 = call float @dx.op.unary.f32(i32 27, float %2803)  ; Round_ni(value)
  %2807 = call float @dx.op.unary.f32(i32 27, float %2804)  ; Round_ni(value)
  %2808 = call float @dx.op.unary.f32(i32 27, float %2805)  ; Round_ni(value)
  %2809 = fadd fast float %2806, 5.000000e-01
  %2810 = fadd fast float %2807, 5.000000e-01
  %2811 = fadd fast float %2808, 5.000000e-01
  %2812 = fmul fast float %2809, %2789
  %2813 = fmul fast float %2810, %2790
  %2814 = fmul fast float %2811, %2791
  %2815 = shl i32 %44, 2
  %2816 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2817 = extractvalue %dx.types.ResRet.i32 %2816, 0
  %2818 = add i32 %2817, 0
  %2819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2818, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2820 = call float @dx.op.unary.f32(i32 22, float %2812)  ; Frc(value)
  %2821 = call float @dx.op.unary.f32(i32 22, float %2813)  ; Frc(value)
  %2822 = call float @dx.op.unary.f32(i32 22, float %2814)  ; Frc(value)
  %2823 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2819, %dx.types.Handle %40, float %2820, float %2821, float %2822, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2824 = extractvalue %dx.types.ResRet.f32 %2823, 0
  %2825 = extractvalue %dx.types.ResRet.f32 %2823, 1
  %2826 = extractvalue %dx.types.ResRet.f32 %2823, 2
  %2827 = fmul fast float %2824, 1.023000e+03
  %2828 = fmul fast float %2825, 1.023000e+03
  %2829 = fmul fast float %2826, 1.023000e+03
  %2830 = fadd fast float %2827, 5.000000e-01
  %2831 = fadd fast float %2828, 5.000000e-01
  %2832 = fadd fast float %2829, 5.000000e-01
  %2833 = call float @dx.op.unary.f32(i32 27, float %2830)  ; Round_ni(value)
  %2834 = call float @dx.op.unary.f32(i32 27, float %2831)  ; Round_ni(value)
  %2835 = call float @dx.op.unary.f32(i32 27, float %2832)  ; Round_ni(value)
  %2836 = fsub fast float %2803, %2806
  %2837 = fsub fast float %2804, %2807
  %2838 = fsub fast float %2805, %2808
  %2839 = fmul fast float %2836, 7.500000e-01
  %2840 = fmul fast float %2837, 7.500000e-01
  %2841 = fmul fast float %2838, 7.500000e-01
  %2842 = fadd fast float %2806, 1.250000e-01
  %2843 = fadd fast float %2842, %2839
  %2844 = fadd fast float %2843, %2833
  %2845 = fadd fast float %2807, 1.250000e-01
  %2846 = fadd fast float %2845, %2840
  %2847 = fadd fast float %2846, %2834
  %2848 = fadd fast float %2808, 1.250000e-01
  %2849 = fadd fast float %2848, %2841
  %2850 = fadd fast float %2849, %2835
  %2851 = fmul fast float %2844, %2794
  %2852 = fmul fast float %2847, %2795
  %2853 = fmul fast float %2850, %2796
  %2854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2815, i32 undef)  ; BufferLoad(srv,index,wot)
  %2855 = extractvalue %dx.types.ResRet.i32 %2854, 0
  %2856 = add i32 %2855, 0
  %2857 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2856, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2858 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2857, %dx.types.Handle %38, float %2851, float %2852, float %2853, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2859 = extractvalue %dx.types.ResRet.f32 %2858, 0
  br label %2860

; <label>:2860                                    ; preds = %2781, %2770
  %2861 = phi float [ %2859, %2781 ], [ -1.000000e+00, %2770 ]
  %2862 = fadd fast float %2861, %2768
  %2863 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  br label %2864

; <label>:2864                                    ; preds = %2860, %2758
  %2865 = phi float [ %2863, %2860 ], [ %2768, %2758 ]
  %2866 = fmul fast float %2865, %451
  br label %2867

; <label>:2867                                    ; preds = %2864, %2753
  %2868 = phi float [ %2866, %2864 ], [ %451, %2753 ]
  %2869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2870 = extractvalue %dx.types.ResRet.i32 %2869, 0
  %2871 = and i32 %2870, 256
  %2872 = icmp eq i32 %2871, 0
  br i1 %2872, label %2919, label %2873

; <label>:2873                                    ; preds = %2867
  %2874 = add i32 %43, 484
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = add i32 %2876, 0
  %2878 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2877, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2879 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2878, %dx.types.Handle %74, float %2754, float %2755, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2880 = extractvalue %dx.types.ResRet.f32 %2879, 0
  %2881 = add i32 %43, 148
  %2882 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2881, i32 undef)  ; BufferLoad(srv,index,wot)
  %2883 = extractvalue %dx.types.ResRet.i32 %2882, 0
  %2884 = shl i32 %2883, 4
  %2885 = and i32 %2884, 32752
  %2886 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2885)  ; LegacyF16ToF32(value)
  %2887 = lshr i32 %2883, 7
  %2888 = and i32 %2887, 32752
  %2889 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2888)  ; LegacyF16ToF32(value)
  %2890 = fsub fast float 1.000000e+00, %2868
  %2891 = call float @dx.op.binary.f32(i32 35, float %2890, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2892 = bitcast float %2868 to i32
  %2893 = sitofp i32 %2892 to float
  %2894 = fadd fast float %2893, 0xC1CFBF8940000000
  %2895 = fmul fast float %2889, %2894
  %2896 = fadd fast float %2895, 0x41CFBF8940000000
  %2897 = fptosi float %2896 to i32
  %2898 = bitcast i32 %2897 to float
  %2899 = bitcast float %2891 to i32
  %2900 = sitofp i32 %2899 to float
  %2901 = fadd fast float %2900, 0xC1CFBF8940000000
  %2902 = fmul fast float %2901, %2889
  %2903 = fadd fast float %2902, 0x41CFBF8940000000
  %2904 = fptosi float %2903 to i32
  %2905 = bitcast i32 %2904 to float
  %2906 = fmul fast float %2898, %2886
  %2907 = fmul fast float %2905, %2886
  %2908 = fsub fast float %2891, %2906
  %2909 = fadd fast float %2907, %2891
  %2910 = call float @dx.op.unary.f32(i32 7, float %2908)  ; Saturate(value)
  %2911 = call float @dx.op.unary.f32(i32 7, float %2909)  ; Saturate(value)
  %2912 = fsub fast float %2880, %2910
  %2913 = fsub fast float %2911, %2910
  %2914 = bitcast float %2913 to i32
  %2915 = sub nsw i32 2129859010, %2914
  %2916 = bitcast i32 %2915 to float
  %2917 = fmul fast float %2916, %2912
  %2918 = call float @dx.op.unary.f32(i32 7, float %2917)  ; Saturate(value)
  br label %2919

; <label>:2919                                    ; preds = %2873, %2867
  %2920 = phi float [ %2918, %2873 ], [ %2868, %2867 ]
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = and i32 %2922, 128
  %2924 = icmp eq i32 %2923, 0
  br i1 %2924, label %2941, label %2925

; <label>:2925                                    ; preds = %2919
  %2926 = add i32 %43, 468
  %2927 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2926, i32 undef)  ; BufferLoad(srv,index,wot)
  %2928 = extractvalue %dx.types.ResRet.i32 %2927, 0
  %2929 = add i32 %2928, 0
  %2930 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2929, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2931 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2930, %dx.types.Handle %74, float %2754, float %2755, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2932 = extractvalue %dx.types.ResRet.f32 %2931, 0
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = and i32 %2934, 524288
  %2936 = icmp ne i32 %2935, 0
  %2937 = fcmp fast ogt float %2932, 0x3FE0101020000000
  %2938 = select i1 %2937, float 1.000000e+00, float 0.000000e+00
  %2939 = select i1 %2936, float %2938, float %2932
  %2940 = fmul fast float %2939, %2920
  br label %2941

; <label>:2941                                    ; preds = %2925, %2919
  %2942 = phi float [ %2940, %2925 ], [ %2920, %2919 ]
  %2943 = fcmp fast ult float %2942, 0x3F70101020000000
  br i1 %2943, label %3486, label %2944

; <label>:2944                                    ; preds = %2941
  %2945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2946 = extractvalue %dx.types.ResRet.i32 %2945, 0
  %2947 = and i32 %2946, 16
  %2948 = icmp eq i32 %2947, 0
  br i1 %2948, label %3147, label %2949

; <label>:2949                                    ; preds = %2944
  %2950 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2670, i32 undef)  ; BufferLoad(srv,index,wot)
  %2951 = extractvalue %dx.types.ResRet.i32 %2950, 0
  %2952 = add i32 %43, 420
  %2953 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2952, i32 undef)  ; BufferLoad(srv,index,wot)
  %2954 = extractvalue %dx.types.ResRet.i32 %2953, 0
  %2955 = add i32 %2954, 0
  %2956 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2955, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2957 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2956, %dx.types.Handle %73, float %2754, float %2755, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2958 = extractvalue %dx.types.ResRet.f32 %2957, 0
  %2959 = extractvalue %dx.types.ResRet.f32 %2957, 1
  %2960 = extractvalue %dx.types.ResRet.f32 %2957, 2
  %2961 = extractvalue %dx.types.ResRet.f32 %2957, 3
  %2962 = and i32 %2951, 255
  %2963 = uitofp i32 %2962 to float
  %2964 = lshr i32 %2951, 8
  %2965 = and i32 %2964, 255
  %2966 = uitofp i32 %2965 to float
  %2967 = fmul fast float %2961, %2963
  %2968 = fadd fast float %2967, %2966
  %2969 = fmul fast float %2968, 0x3F70101000000000
  %2970 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2971 = extractvalue %dx.types.ResRet.i32 %2970, 0
  %2972 = and i32 %2971, 512
  %2973 = icmp eq i32 %2972, 0
  br i1 %2973, label %2982, label %2974

; <label>:2974                                    ; preds = %2949
  %2975 = add i32 %43, 500
  %2976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2975, i32 undef)  ; BufferLoad(srv,index,wot)
  %2977 = extractvalue %dx.types.ResRet.i32 %2976, 0
  %2978 = add i32 %2977, 0
  %2979 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2978, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2980 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2979, %dx.types.Handle %74, float %2754, float %2755, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2981 = extractvalue %dx.types.ResRet.f32 %2980, 0
  br label %2982

; <label>:2982                                    ; preds = %2974, %2949
  %2983 = phi float [ %2981, %2974 ], [ 1.000000e+00, %2949 ]
  %2984 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.i32 %2984, 0
  %2986 = and i32 %2985, 33554432
  %2987 = icmp eq i32 %2986, 0
  br i1 %2987, label %3094, label %2988

; <label>:2988                                    ; preds = %2982
  %2989 = add i32 %43, 272
  %2990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2989, i32 undef)  ; BufferLoad(srv,index,wot)
  %2991 = extractvalue %dx.types.ResRet.i32 %2990, 0
  %2992 = and i32 %2991, 65535
  %2993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2992)  ; LegacyF16ToF32(value)
  %2994 = lshr i32 %2991, 16
  %2995 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2994)  ; LegacyF16ToF32(value)
  %2996 = add i32 %43, 276
  %2997 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2996, i32 undef)  ; BufferLoad(srv,index,wot)
  %2998 = extractvalue %dx.types.ResRet.i32 %2997, 0
  %2999 = and i32 %2998, 65535
  %3000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2999)  ; LegacyF16ToF32(value)
  %3001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %367, i32 undef)  ; BufferLoad(srv,index,wot)
  %3002 = extractvalue %dx.types.ResRet.i32 %3001, 0
  %3003 = lshr i32 %3002, 24
  %3004 = uitofp i32 %3003 to float
  %3005 = fmul fast float %3004, 0x3F70101020000000
  %3006 = and i32 %3002, 255
  %3007 = uitofp i32 %3006 to float
  %3008 = fmul fast float %3007, 0x3F70101020000000
  %3009 = lshr i32 %3002, 8
  %3010 = and i32 %3009, 255
  %3011 = uitofp i32 %3010 to float
  %3012 = fmul fast float %3011, 0x3F70101020000000
  %3013 = lshr i32 %3002, 16
  %3014 = and i32 %3013, 255
  %3015 = uitofp i32 %3014 to float
  %3016 = fmul fast float %3015, 0x3F70101020000000
  %3017 = add i32 %43, 268
  %3018 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3017, i32 undef)  ; BufferLoad(srv,index,wot)
  %3019 = extractvalue %dx.types.ResRet.i32 %3018, 0
  %3020 = lshr i32 %3019, 24
  %3021 = uitofp i32 %3020 to float
  %3022 = fmul fast float %3021, 0x3F70101020000000
  %3023 = and i32 %3019, 255
  %3024 = uitofp i32 %3023 to float
  %3025 = fmul fast float %3024, 0x3F70101020000000
  %3026 = lshr i32 %3019, 8
  %3027 = and i32 %3026, 255
  %3028 = uitofp i32 %3027 to float
  %3029 = fmul fast float %3028, 0x3F70101020000000
  %3030 = lshr i32 %3019, 16
  %3031 = and i32 %3030, 255
  %3032 = uitofp i32 %3031 to float
  %3033 = fmul fast float %3032, 0x3F70101020000000
  %3034 = bitcast float %2958 to i32
  %3035 = ashr i32 %3034, 1
  %3036 = sub nsw i32 1597463174, %3035
  %3037 = bitcast i32 %3036 to float
  %3038 = fmul fast float %2958, 5.000000e-01
  %3039 = fmul fast float %3037, %3037
  %3040 = fmul fast float %3039, %3038
  %3041 = fsub fast float 1.500000e+00, %3040
  %3042 = fmul fast float %3037, %2958
  %3043 = fmul fast float %3042, %3041
  %3044 = bitcast float %2959 to i32
  %3045 = ashr i32 %3044, 1
  %3046 = sub nsw i32 1597463174, %3045
  %3047 = bitcast i32 %3046 to float
  %3048 = fmul fast float %2959, 5.000000e-01
  %3049 = fmul fast float %3047, %3047
  %3050 = fmul fast float %3049, %3048
  %3051 = fsub fast float 1.500000e+00, %3050
  %3052 = fmul fast float %3047, %2959
  %3053 = fmul fast float %3052, %3051
  %3054 = bitcast float %2960 to i32
  %3055 = ashr i32 %3054, 1
  %3056 = sub nsw i32 1597463174, %3055
  %3057 = bitcast i32 %3056 to float
  %3058 = fmul fast float %2960, 5.000000e-01
  %3059 = fmul fast float %3057, %3057
  %3060 = fmul fast float %3059, %3058
  %3061 = fsub fast float 1.500000e+00, %3060
  %3062 = fmul fast float %3057, %2960
  %3063 = fmul fast float %3062, %3061
  %3064 = fsub fast float %3043, %3025
  %3065 = fsub fast float %3053, %3029
  %3066 = fsub fast float %3063, %3033
  %3067 = fmul fast float %3064, %2993
  %3068 = fmul fast float %3065, %2995
  %3069 = fmul fast float %3066, %3000
  %3070 = fadd fast float %3067, %3008
  %3071 = fadd fast float %3068, %3012
  %3072 = fadd fast float %3069, %3016
  %3073 = call float @dx.op.unary.f32(i32 7, float %3070)  ; Saturate(value)
  %3074 = call float @dx.op.unary.f32(i32 7, float %3071)  ; Saturate(value)
  %3075 = call float @dx.op.unary.f32(i32 7, float %3072)  ; Saturate(value)
  %3076 = fmul fast float %3073, %3073
  %3077 = fmul fast float %3074, %3074
  %3078 = fmul fast float %3075, %3075
  %3079 = fsub fast float %3076, %2958
  %3080 = fsub fast float %3077, %2959
  %3081 = fsub fast float %3078, %2960
  %3082 = fmul fast float %3079, %2983
  %3083 = fmul fast float %3080, %2983
  %3084 = fmul fast float %3081, %2983
  %3085 = fadd fast float %3082, %2958
  %3086 = fadd fast float %3083, %2959
  %3087 = fadd fast float %3084, %2960
  %3088 = fadd fast float %3005, %2969
  %3089 = fsub fast float %3088, %3022
  %3090 = call float @dx.op.unary.f32(i32 7, float %3089)  ; Saturate(value)
  %3091 = fsub fast float %3090, %2969
  %3092 = fmul fast float %3091, %2983
  %3093 = fadd fast float %3092, %2969
  br label %3147

; <label>:3094                                    ; preds = %2982
  %3095 = and i32 %2985, 134217728
  %3096 = icmp eq i32 %3095, 0
  br i1 %3096, label %3131, label %3097

; <label>:3097                                    ; preds = %3094
  %3098 = call float @dx.op.unary.f32(i32 24, float %372)  ; Sqrt(value)
  %3099 = call float @dx.op.unary.f32(i32 24, float %376)  ; Sqrt(value)
  %3100 = call float @dx.op.unary.f32(i32 24, float %380)  ; Sqrt(value)
  %3101 = fadd fast float %3098, -5.000000e-01
  %3102 = fadd fast float %3099, -5.000000e-01
  %3103 = fadd fast float %3100, -5.000000e-01
  %3104 = fmul fast float %3101, %2983
  %3105 = fmul fast float %3102, %2983
  %3106 = fmul fast float %3103, %2983
  %3107 = fadd fast float %3104, 5.000000e-01
  %3108 = fadd fast float %3105, 5.000000e-01
  %3109 = fadd fast float %3106, 5.000000e-01
  %3110 = call float @dx.op.unary.f32(i32 24, float %2958)  ; Sqrt(value)
  %3111 = call float @dx.op.unary.f32(i32 24, float %2959)  ; Sqrt(value)
  %3112 = call float @dx.op.unary.f32(i32 24, float %2960)  ; Sqrt(value)
  %3113 = fmul fast float %3107, 2.000000e+00
  %3114 = fsub fast float 1.000000e+00, %3113
  %3115 = fmul fast float %3114, %3110
  %3116 = fadd fast float %3115, %3113
  %3117 = fmul fast float %3116, %3110
  %3118 = fmul fast float %3108, 2.000000e+00
  %3119 = fsub fast float 1.000000e+00, %3118
  %3120 = fmul fast float %3119, %3111
  %3121 = fadd fast float %3120, %3118
  %3122 = fmul fast float %3121, %3111
  %3123 = fmul fast float %3109, 2.000000e+00
  %3124 = fsub fast float 1.000000e+00, %3123
  %3125 = fmul fast float %3124, %3112
  %3126 = fadd fast float %3125, %3123
  %3127 = fmul fast float %3126, %3112
  %3128 = fmul fast float %3117, %3117
  %3129 = fmul fast float %3122, %3122
  %3130 = fmul fast float %3127, %3127
  br label %3147

; <label>:3131                                    ; preds = %3094
  %3132 = fmul fast float %372, %372
  %3133 = fmul fast float %376, %376
  %3134 = fmul fast float %380, %380
  %3135 = fadd fast float %3132, -1.000000e+00
  %3136 = fadd fast float %3133, -1.000000e+00
  %3137 = fadd fast float %3134, -1.000000e+00
  %3138 = fmul fast float %2983, %3135
  %3139 = fmul fast float %2983, %3136
  %3140 = fmul fast float %2983, %3137
  %3141 = fadd fast float %3138, 1.000000e+00
  %3142 = fadd fast float %3139, 1.000000e+00
  %3143 = fadd fast float %3140, 1.000000e+00
  %3144 = fmul fast float %3141, %2958
  %3145 = fmul fast float %3142, %2959
  %3146 = fmul fast float %3143, %2960
  br label %3147

; <label>:3147                                    ; preds = %3131, %3097, %2988, %2944
  %3148 = phi float [ %3093, %2988 ], [ %2969, %3097 ], [ %2969, %3131 ], [ 0x3FA23C0BE0000000, %2944 ]
  %3149 = phi float [ %3085, %2988 ], [ %3128, %3097 ], [ %3144, %3131 ], [ 1.000000e+00, %2944 ]
  %3150 = phi float [ %3086, %2988 ], [ %3129, %3097 ], [ %3145, %3131 ], [ 1.000000e+00, %2944 ]
  %3151 = phi float [ %3087, %2988 ], [ %3130, %3097 ], [ %3146, %3131 ], [ 1.000000e+00, %2944 ]
  %3152 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3153 = extractvalue %dx.types.CBufRet.i32 %3152, 1
  %3154 = and i32 %3153, 1
  %3155 = icmp ne i32 %3154, 0
  %3156 = add i32 %43, 356
  %3157 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3156, i32 undef)  ; BufferLoad(srv,index,wot)
  %3158 = extractvalue %dx.types.ResRet.i32 %3157, 0
  %3159 = and i32 %3158, 32
  %3160 = icmp ne i32 %3159, 0
  %3161 = and i1 %3155, %3160
  %3162 = select i1 %3161, float 1.000000e+00, float %3149
  %3163 = select i1 %3161, float 0x3FD3333340000000, float %3150
  %3164 = select i1 %3161, float 0x3FD3333340000000, float %3151
  %3165 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3166 = extractvalue %dx.types.ResRet.i32 %3165, 0
  %3167 = and i32 %3166, 32
  %3168 = icmp eq i32 %3167, 0
  br i1 %3168, label %3241, label %3169

; <label>:3169                                    ; preds = %3147
  %3170 = add i32 %43, 140
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3170, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = add i32 %43, 436
  %3174 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3173, i32 undef)  ; BufferLoad(srv,index,wot)
  %3175 = extractvalue %dx.types.ResRet.i32 %3174, 0
  %3176 = add i32 %3175, 0
  %3177 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3176, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3178 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3177, %dx.types.Handle %73, float %2754, float %2755, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3179 = extractvalue %dx.types.ResRet.f32 %3178, 0
  %3180 = extractvalue %dx.types.ResRet.f32 %3178, 1
  %3181 = extractvalue %dx.types.ResRet.f32 %3178, 2
  %3182 = extractvalue %dx.types.ResRet.f32 %3178, 3
  %3183 = and i32 %3172, 255
  %3184 = uitofp i32 %3183 to float
  %3185 = lshr i32 %3172, 8
  %3186 = and i32 %3185, 255
  %3187 = uitofp i32 %3186 to float
  %3188 = lshr i32 %3172, 16
  %3189 = and i32 %3188, 255
  %3190 = uitofp i32 %3189 to float
  %3191 = fmul fast float %3190, 0x3F70101000000000
  %3192 = fmul fast float %3179, %3184
  %3193 = fadd fast float %3192, %3187
  %3194 = fmul fast float %3193, 0x3F70101000000000
  %3195 = fadd fast float %3180, -5.000000e-01
  %3196 = fadd fast float %3182, -5.000000e-01
  %3197 = fmul fast float %3195, %3191
  %3198 = fmul fast float %3196, %3191
  %3199 = fadd fast float %3197, 5.000000e-01
  %3200 = fadd fast float %3198, 5.000000e-01
  %3201 = fmul fast float %3199, 2.000000e+00
  %3202 = fadd fast float %3201, -1.000000e+00
  %3203 = fmul fast float %3200, 2.000000e+00
  %3204 = fadd fast float %3203, -1.000000e+00
  %3205 = fadd fast float %3202, %3204
  %3206 = fmul fast float %3205, 5.000000e-01
  %3207 = fsub fast float %3202, %3204
  %3208 = fmul fast float %3207, 5.000000e-01
  %3209 = call float @dx.op.unary.f32(i32 6, float %3206)  ; FAbs(value)
  %3210 = fsub fast float 1.000000e+00, %3209
  %3211 = call float @dx.op.unary.f32(i32 6, float %3208)  ; FAbs(value)
  %3212 = fsub fast float %3210, %3211
  %3213 = call float @dx.op.dot3.f32(i32 55, float %3206, float %3208, float %3212, float %3206, float %3208, float %3212)  ; Dot3(ax,ay,az,bx,by,bz)
  %3214 = call float @dx.op.unary.f32(i32 25, float %3213)  ; Rsqrt(value)
  %3215 = fmul fast float %3206, %3214
  %3216 = fmul fast float %3208, %3214
  %3217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3218 = extractvalue %dx.types.ResRet.i32 %3217, 0
  %3219 = and i32 %3218, 67108864
  %3220 = icmp eq i32 %3219, 0
  br i1 %3220, label %3237, label %3221

; <label>:3221                                    ; preds = %3169
  %3222 = add i32 %43, 328
  %3223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3222, i32 undef)  ; BufferLoad(srv,index,wot)
  %3224 = extractvalue %dx.types.ResRet.i32 %3223, 0
  %3225 = and i32 %3224, 65535
  %3226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3225)  ; LegacyF16ToF32(value)
  %3227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2664, i32 undef)  ; BufferLoad(srv,index,wot)
  %3228 = extractvalue %dx.types.ResRet.i32 %3227, 0
  %3229 = and i32 %3228, 65535
  %3230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3229)  ; LegacyF16ToF32(value)
  %3231 = lshr i32 %3224, 16
  %3232 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3231)  ; LegacyF16ToF32(value)
  %3233 = fsub fast float %3194, %3232
  %3234 = fmul fast float %3233, %3226
  %3235 = fadd fast float %3234, %3230
  %3236 = call float @dx.op.unary.f32(i32 7, float %3235)  ; Saturate(value)
  br label %3237

; <label>:3237                                    ; preds = %3221, %3169
  %3238 = phi float [ %3236, %3221 ], [ %3194, %3169 ]
  %3239 = call float @dx.op.dot2.f32(i32 54, float %3215, float %3216, float %2658, float %2659)  ; Dot2(ax,ay,bx,by)
  %3240 = call float @dx.op.dot2.f32(i32 54, float %3215, float %3216, float %2660, float %2661)  ; Dot2(ax,ay,bx,by)
  br label %3241

; <label>:3241                                    ; preds = %3237, %3147
  %3242 = phi float [ %3238, %3237 ], [ 0x3FD6666660000000, %3147 ]
  %3243 = phi float [ %3239, %3237 ], [ 0.000000e+00, %3147 ]
  %3244 = phi float [ %3240, %3237 ], [ 0.000000e+00, %3147 ]
  %3245 = phi float [ %3181, %3237 ], [ 1.000000e+00, %3147 ]
  %3246 = add i32 %43, 208
  %3247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3246, i32 undef)  ; BufferLoad(srv,index,wot)
  %3248 = extractvalue %dx.types.ResRet.i32 %3247, 0
  %3249 = lshr i32 %3248, 22
  %3250 = shl nuw nsw i32 %3249, 5
  %3251 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3250)  ; LegacyF16ToF32(value)
  %3252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3253 = extractvalue %dx.types.ResRet.i32 %3252, 0
  %3254 = and i32 %3253, 64
  %3255 = icmp eq i32 %3254, 0
  br i1 %3255, label %3289, label %3256

; <label>:3256                                    ; preds = %3241
  %3257 = add i32 %43, 452
  %3258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3257, i32 undef)  ; BufferLoad(srv,index,wot)
  %3259 = extractvalue %dx.types.ResRet.i32 %3258, 0
  %3260 = add i32 %3259, 0
  %3261 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3260, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = and i32 %3263, 131072
  %3265 = icmp eq i32 %3264, 0
  %3266 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3261, %dx.types.Handle %73, float %2754, float %2755, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3267 = extractvalue %dx.types.ResRet.f32 %3266, 0
  %3268 = extractvalue %dx.types.ResRet.f32 %3266, 1
  %3269 = extractvalue %dx.types.ResRet.f32 %3266, 2
  %3270 = fmul fast float %3267, %360
  %3271 = fmul fast float %3268, %363
  %3272 = fmul fast float %3269, %366
  br i1 %3265, label %3279, label %3273

; <label>:3273                                    ; preds = %3256
  %3274 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3275 = extractvalue %dx.types.CBufRet.f32 %3274, 0
  %3276 = fmul fast float %3275, %3270
  %3277 = fmul fast float %3275, %3271
  %3278 = fmul fast float %3275, %3272
  br label %3279

; <label>:3279                                    ; preds = %3273, %3256
  %3280 = phi float [ %3276, %3273 ], [ %3270, %3256 ]
  %3281 = phi float [ %3277, %3273 ], [ %3271, %3256 ]
  %3282 = phi float [ %3278, %3273 ], [ %3272, %3256 ]
  %3283 = fmul fast float %3280, %3251
  %3284 = select i1 %214, float %3283, float %3280
  %3285 = call float @dx.op.dot3.f32(i32 55, float %3284, float %3281, float %3282, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3286 = select i1 %214, float 0.000000e+00, float %3280
  %3287 = select i1 %214, float %3285, float %3281
  %3288 = select i1 %214, float 0.000000e+00, float %3282
  br label %3289

; <label>:3289                                    ; preds = %3279, %3241
  %3290 = phi float [ %3286, %3279 ], [ 0.000000e+00, %3241 ]
  %3291 = phi float [ %3287, %3279 ], [ 0.000000e+00, %3241 ]
  %3292 = phi float [ %3288, %3279 ], [ 0.000000e+00, %3241 ]
  %3293 = add i32 %43, 144
  %3294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3293, i32 undef)  ; BufferLoad(srv,index,wot)
  %3295 = extractvalue %dx.types.ResRet.i32 %3294, 0
  %3296 = and i32 %3295, 255
  %3297 = uitofp i32 %3296 to float
  %3298 = lshr i32 %3295, 8
  %3299 = and i32 %3298, 255
  %3300 = uitofp i32 %3299 to float
  %3301 = call float @dx.op.dot3.f32(i32 55, float %3162, float %3163, float %3164, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3302 = fmul fast float %3300, %3301
  %3303 = fadd fast float %3302, %3297
  %3304 = fmul fast float %3303, 0x3F70101020000000
  %3305 = call float @dx.op.unary.f32(i32 7, float %3304)  ; Saturate(value)
  br i1 %2646, label %3306, label %3314

; <label>:3306                                    ; preds = %3289
  %3307 = fsub fast float 1.000000e+00, %2942
  %3308 = fmul fast float %3307, %2635
  %3309 = fmul fast float %3307, %2636
  %3310 = fmul fast float %3307, %2637
  %3311 = fmul fast float %3307, %2638
  %3312 = fmul fast float %3307, %2639
  %3313 = fmul fast float %3307, %2640
  br label %3314

; <label>:3314                                    ; preds = %3306, %3289
  %3315 = phi float [ %3308, %3306 ], [ %2635, %3289 ]
  %3316 = phi float [ %3309, %3306 ], [ %2636, %3289 ]
  %3317 = phi float [ %3310, %3306 ], [ %2637, %3289 ]
  %3318 = phi float [ %3311, %3306 ], [ %2638, %3289 ]
  %3319 = phi float [ %3312, %3306 ], [ %2639, %3289 ]
  %3320 = phi float [ %3313, %3306 ], [ %2640, %3289 ]
  %3321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2647, i32 undef)  ; BufferLoad(srv,index,wot)
  %3322 = extractvalue %dx.types.ResRet.i32 %3321, 0
  %3323 = and i32 %3322, 3
  %3324 = icmp eq i32 %3323, 3
  br i1 %3324, label %3403, label %3325

; <label>:3325                                    ; preds = %3314
  %3326 = and i32 %3322, 16
  %3327 = icmp ne i32 %3326, 0
  %3328 = select i1 %3327, float %2942, float 0.000000e+00
  %3329 = icmp eq i32 %3323, 0
  br i1 %3329, label %3330, label %3358

; <label>:3330                                    ; preds = %3325
  %3331 = and i32 %3322, 64
  %3332 = icmp ne i32 %3331, 0
  %3333 = select i1 %3332, float %2942, float 0.000000e+00
  %3334 = fsub fast float %3162, %3315
  %3335 = fsub fast float %3163, %3316
  %3336 = fsub fast float %3164, %3317
  %3337 = fmul fast float %3328, %3334
  %3338 = fmul fast float %3328, %3335
  %3339 = fmul fast float %3328, %3336
  %3340 = fadd fast float %3337, %3315
  %3341 = fadd fast float %3338, %3316
  %3342 = fadd fast float %3339, %3317
  %3343 = fsub fast float %3148, %2641
  %3344 = fmul fast float %3328, %3343
  %3345 = fadd fast float %3344, %2641
  %3346 = fsub fast float %3290, %3318
  %3347 = fsub fast float %3291, %3319
  %3348 = fsub fast float %3292, %3320
  %3349 = fmul fast float %3333, %3346
  %3350 = fmul fast float %3333, %3347
  %3351 = fmul fast float %3333, %3348
  %3352 = fadd fast float %3349, %3318
  %3353 = fadd fast float %3350, %3319
  %3354 = fadd fast float %3351, %3320
  %3355 = fsub fast float %3305, %2644
  %3356 = fmul fast float %3328, %3355
  %3357 = fadd fast float %3356, %2644
  br label %3403

; <label>:3358                                    ; preds = %3325
  %3359 = icmp eq i32 %3323, 1
  br i1 %3359, label %3360, label %3373

; <label>:3360                                    ; preds = %3358
  %3361 = fadd fast float %3162, -1.000000e+00
  %3362 = fadd fast float %3163, -1.000000e+00
  %3363 = fadd fast float %3164, -1.000000e+00
  %3364 = fmul fast float %3328, %3361
  %3365 = fmul fast float %3328, %3362
  %3366 = fmul fast float %3328, %3363
  %3367 = fadd fast float %3364, 1.000000e+00
  %3368 = fadd fast float %3365, 1.000000e+00
  %3369 = fadd fast float %3366, 1.000000e+00
  %3370 = fmul fast float %3367, %3315
  %3371 = fmul fast float %3368, %3316
  %3372 = fmul fast float %3369, %3317
  br label %3403

; <label>:3373                                    ; preds = %3358
  %3374 = icmp eq i32 %3323, 2
  br i1 %3374, label %3375, label %3403

; <label>:3375                                    ; preds = %3373
  %3376 = call float @dx.op.unary.f32(i32 24, float %3162)  ; Sqrt(value)
  %3377 = call float @dx.op.unary.f32(i32 24, float %3163)  ; Sqrt(value)
  %3378 = call float @dx.op.unary.f32(i32 24, float %3164)  ; Sqrt(value)
  %3379 = fadd fast float %3376, -5.000000e-01
  %3380 = fadd fast float %3377, -5.000000e-01
  %3381 = fadd fast float %3378, -5.000000e-01
  %3382 = fmul fast float %3379, %3328
  %3383 = fmul fast float %3380, %3328
  %3384 = fmul fast float %3381, %3328
  %3385 = fadd fast float %3382, 5.000000e-01
  %3386 = fadd fast float %3383, 5.000000e-01
  %3387 = fadd fast float %3384, 5.000000e-01
  %3388 = fmul fast float %3385, 2.000000e+00
  %3389 = fsub fast float 1.000000e+00, %3388
  %3390 = fmul fast float %3389, %3315
  %3391 = fadd fast float %3390, %3388
  %3392 = fmul fast float %3391, %3315
  %3393 = fmul fast float %3386, 2.000000e+00
  %3394 = fsub fast float 1.000000e+00, %3393
  %3395 = fmul fast float %3394, %3316
  %3396 = fadd fast float %3395, %3393
  %3397 = fmul fast float %3396, %3316
  %3398 = fmul fast float %3387, 2.000000e+00
  %3399 = fsub fast float 1.000000e+00, %3398
  %3400 = fmul fast float %3399, %3317
  %3401 = fadd fast float %3400, %3398
  %3402 = fmul fast float %3401, %3317
  br label %3403

; <label>:3403                                    ; preds = %3375, %3373, %3360, %3330, %3314
  %3404 = phi float [ %3315, %3314 ], [ %3392, %3375 ], [ %3315, %3373 ], [ %3370, %3360 ], [ %3340, %3330 ]
  %3405 = phi float [ %3316, %3314 ], [ %3397, %3375 ], [ %3316, %3373 ], [ %3371, %3360 ], [ %3341, %3330 ]
  %3406 = phi float [ %3317, %3314 ], [ %3402, %3375 ], [ %3317, %3373 ], [ %3372, %3360 ], [ %3342, %3330 ]
  %3407 = phi float [ %3318, %3314 ], [ %3318, %3375 ], [ %3318, %3373 ], [ %3318, %3360 ], [ %3352, %3330 ]
  %3408 = phi float [ %3319, %3314 ], [ %3319, %3375 ], [ %3319, %3373 ], [ %3319, %3360 ], [ %3353, %3330 ]
  %3409 = phi float [ %3320, %3314 ], [ %3320, %3375 ], [ %3320, %3373 ], [ %3320, %3360 ], [ %3354, %3330 ]
  %3410 = phi float [ %2641, %3314 ], [ %2641, %3375 ], [ %2641, %3373 ], [ %2641, %3360 ], [ %3345, %3330 ]
  %3411 = phi float [ %2644, %3314 ], [ %2644, %3375 ], [ %2644, %3373 ], [ %2644, %3360 ], [ %3357, %3330 ]
  %3412 = and i32 %3322, 12
  %3413 = icmp eq i32 %3412, 12
  br i1 %3413, label %3486, label %3414

; <label>:3414                                    ; preds = %3403
  %3415 = and i32 %3322, 2097184
  %3416 = icmp eq i32 %3415, 2097184
  %3417 = select i1 %3416, float %2942, float 0.000000e+00
  %3418 = and i32 %3322, 4194336
  %3419 = icmp eq i32 %3418, 4194336
  %3420 = select i1 %3419, float %2942, float 0.000000e+00
  %3421 = and i32 %3322, 8388640
  %3422 = icmp eq i32 %3421, 8388640
  %3423 = select i1 %3422, float %2942, float 0.000000e+00
  %3424 = icmp eq i32 %3412, 0
  br i1 %3424, label %3425, label %3438

; <label>:3425                                    ; preds = %3414
  %3426 = fsub fast float %3243, %2633
  %3427 = fsub fast float %3244, %2634
  %3428 = fmul fast float %3417, %3426
  %3429 = fmul fast float %3417, %3427
  %3430 = fadd fast float %3428, %2633
  %3431 = fadd fast float %3429, %2634
  %3432 = fsub fast float %3245, %2643
  %3433 = fmul fast float %3420, %3432
  %3434 = fadd fast float %3433, %2643
  %3435 = fsub fast float %3242, %2642
  %3436 = fmul fast float %3423, %3435
  %3437 = fadd fast float %3436, %2642
  br label %3486

; <label>:3438                                    ; preds = %3414
  %3439 = icmp eq i32 %3412, 4
  br i1 %3439, label %3440, label %3472

; <label>:3440                                    ; preds = %3438
  %3441 = fmul fast float %3417, %3243
  %3442 = fmul fast float %3417, %3244
  %3443 = fadd fast float %3441, %2633
  %3444 = fadd fast float %3442, %2634
  %3445 = call float @dx.op.binary.f32(i32 36, float %2643, float %3245)  ; FMin(a,b)
  %3446 = fsub fast float %3445, %2643
  %3447 = fmul fast float %3446, %3420
  %3448 = fadd fast float %3447, %2643
  %3449 = fadd fast float %3242, %2642
  %3450 = fmul fast float %3449, 0x3FF337FAE0000000
  %3451 = fmul fast float %2642, %2642
  %3452 = fmul fast float %3242, %3242
  %3453 = fadd fast float %3452, %3451
  %3454 = fmul fast float %3453, 0x3FE5152B00000000
  %3455 = fmul fast float %2642, 0xBFCC1F85E0000000
  %3456 = fmul fast float %3455, %3242
  %3457 = fadd fast float %3456, 0xBFE1363700000000
  %3458 = fadd fast float %3457, %3450
  %3459 = fsub fast float %3458, %3454
  %3460 = fmul fast float %3449, 0x3FBA6F0D00000000
  %3461 = fmul fast float %3453, 0x3FD0432880000000
  %3462 = fmul fast float %2642, 0xBFEF110800000000
  %3463 = fmul fast float %3462, %3242
  %3464 = fadd fast float %3463, 1.000000e+00
  %3465 = fsub fast float %3464, %3460
  %3466 = fadd fast float %3465, %3461
  %3467 = fdiv fast float %3459, %3466
  %3468 = call float @dx.op.unary.f32(i32 7, float %3467)  ; Saturate(value)
  %3469 = fsub fast float %3468, %2642
  %3470 = fmul fast float %3469, %3423
  %3471 = fadd fast float %3470, %2642
  br label %3486

; <label>:3472                                    ; preds = %3438
  %3473 = icmp eq i32 %3412, 8
  br i1 %3473, label %3474, label %3486

; <label>:3474                                    ; preds = %3472
  %3475 = fmul fast float %3417, %3243
  %3476 = fmul fast float %3417, %3244
  %3477 = fadd fast float %3475, %2633
  %3478 = fadd fast float %3476, %2634
  %3479 = call float @dx.op.binary.f32(i32 36, float %2643, float %3245)  ; FMin(a,b)
  %3480 = fsub fast float %3479, %2643
  %3481 = fmul fast float %3480, %3420
  %3482 = fadd fast float %3481, %2643
  %3483 = fsub fast float %3242, %2642
  %3484 = fmul fast float %3423, %3483
  %3485 = fadd fast float %3484, %2642
  br label %3486

; <label>:3486                                    ; preds = %3474, %3472, %3440, %3425, %3403, %2941, %2645, %2632
  %3487 = phi float [ %2633, %3403 ], [ %2633, %2941 ], [ %2633, %2632 ], [ %2633, %2645 ], [ %3430, %3425 ], [ %3443, %3440 ], [ %2633, %3472 ], [ %3477, %3474 ]
  %3488 = phi float [ %2634, %3403 ], [ %2634, %2941 ], [ %2634, %2632 ], [ %2634, %2645 ], [ %3431, %3425 ], [ %3444, %3440 ], [ %2634, %3472 ], [ %3478, %3474 ]
  %3489 = phi float [ %3404, %3403 ], [ %2635, %2941 ], [ %2635, %2632 ], [ %2635, %2645 ], [ %3404, %3425 ], [ %3404, %3440 ], [ %3404, %3472 ], [ %3404, %3474 ]
  %3490 = phi float [ %3405, %3403 ], [ %2636, %2941 ], [ %2636, %2632 ], [ %2636, %2645 ], [ %3405, %3425 ], [ %3405, %3440 ], [ %3405, %3472 ], [ %3405, %3474 ]
  %3491 = phi float [ %3406, %3403 ], [ %2637, %2941 ], [ %2637, %2632 ], [ %2637, %2645 ], [ %3406, %3425 ], [ %3406, %3440 ], [ %3406, %3472 ], [ %3406, %3474 ]
  %3492 = phi float [ %3407, %3403 ], [ %2638, %2941 ], [ %2638, %2632 ], [ %2638, %2645 ], [ %3407, %3425 ], [ %3407, %3440 ], [ %3407, %3472 ], [ %3407, %3474 ]
  %3493 = phi float [ %3408, %3403 ], [ %2639, %2941 ], [ %2639, %2632 ], [ %2639, %2645 ], [ %3408, %3425 ], [ %3408, %3440 ], [ %3408, %3472 ], [ %3408, %3474 ]
  %3494 = phi float [ %3409, %3403 ], [ %2640, %2941 ], [ %2640, %2632 ], [ %2640, %2645 ], [ %3409, %3425 ], [ %3409, %3440 ], [ %3409, %3472 ], [ %3409, %3474 ]
  %3495 = phi float [ %3410, %3403 ], [ %2641, %2941 ], [ %2641, %2632 ], [ %2641, %2645 ], [ %3410, %3425 ], [ %3410, %3440 ], [ %3410, %3472 ], [ %3410, %3474 ]
  %3496 = phi float [ %2642, %3403 ], [ %2642, %2941 ], [ %2642, %2632 ], [ %2642, %2645 ], [ %3437, %3425 ], [ %3471, %3440 ], [ %2642, %3472 ], [ %3485, %3474 ]
  %3497 = phi float [ %2643, %3403 ], [ %2643, %2941 ], [ %2643, %2632 ], [ %2643, %2645 ], [ %3434, %3425 ], [ %3448, %3440 ], [ %2643, %3472 ], [ %3482, %3474 ]
  %3498 = phi float [ %3411, %3403 ], [ %2644, %2941 ], [ %2644, %2632 ], [ %2644, %2645 ], [ %3411, %3425 ], [ %3411, %3440 ], [ %3411, %3472 ], [ %3411, %3474 ]
  %3499 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3500 = extractvalue %dx.types.CBufRet.f32 %3499, 0
  %3501 = call float @dx.op.dot2.f32(i32 54, float %3487, float %3488, float %3487, float %3488)  ; Dot2(ax,ay,bx,by)
  %3502 = fmul fast float %3501, 0x3FE3333340000000
  %3503 = fsub fast float 1.000000e+00, %3502
  %3504 = call float @dx.op.dot3.f32(i32 55, float %3487, float %3488, float %3503, float %3487, float %3488, float %3503)  ; Dot3(ax,ay,az,bx,by,bz)
  %3505 = call float @dx.op.unary.f32(i32 25, float %3504)  ; Rsqrt(value)
  %3506 = fmul fast float %3505, %3487
  %3507 = fmul fast float %3505, %3488
  %3508 = fmul fast float %3503, %3505
  %3509 = fmul fast float %3508, %84
  %3510 = fmul fast float %3508, %85
  %3511 = fmul fast float %3508, %86
  %3512 = fmul fast float %3506, %58
  %3513 = fmul fast float %3506, %59
  %3514 = fmul fast float %3506, %60
  %3515 = fadd fast float %3509, %3512
  %3516 = fadd fast float %3510, %3513
  %3517 = fadd fast float %3511, %3514
  %3518 = fmul fast float %96, %3507
  %3519 = fmul fast float %97, %3507
  %3520 = fmul fast float %98, %3507
  %3521 = fadd fast float %3515, %3518
  %3522 = fadd fast float %3516, %3519
  %3523 = fadd fast float %3517, %3520
  %3524 = call float @dx.op.dot3.f32(i32 55, float %3521, float %3522, float %3523, float %3521, float %3522, float %3523)  ; Dot3(ax,ay,az,bx,by,bz)
  %3525 = call float @dx.op.unary.f32(i32 25, float %3524)  ; Rsqrt(value)
  %3526 = fmul fast float %3521, %3525
  %3527 = fmul fast float %3522, %3525
  %3528 = fmul fast float %3523, %3525
  %3529 = call float @dx.op.unary.f32(i32 83, float %140)  ; DerivCoarseX(value)
  %3530 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3531 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3532 = call float @dx.op.unary.f32(i32 84, float %140)  ; DerivCoarseY(value)
  %3533 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3534 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3535 = fadd fast float %3529, %140
  %3536 = fadd fast float %3530, %141
  %3537 = fadd fast float %3531, %142
  %3538 = fadd fast float %3532, %140
  %3539 = fadd fast float %3533, %141
  %3540 = fadd fast float %3534, %142
  %3541 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3542 = extractvalue %dx.types.CBufRet.f32 %3541, 0
  %3543 = extractvalue %dx.types.CBufRet.f32 %3541, 1
  %3544 = extractvalue %dx.types.CBufRet.f32 %3541, 2
  %3545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3546 = extractvalue %dx.types.CBufRet.f32 %3545, 2
  %3547 = extractvalue %dx.types.CBufRet.f32 %3545, 3
  %3548 = fmul fast float %3542, %77
  %3549 = fmul fast float %3548, %3546
  %3550 = fmul fast float %3543, %78
  %3551 = fmul fast float %3550, %3547
  %3552 = fptoui float %3549 to i32
  %3553 = fptoui float %3551 to i32
  %3554 = fadd fast float %3542, -1.000000e+00
  %3555 = fadd fast float %3543, -1.000000e+00
  %3556 = fptoui float %3554 to i32
  %3557 = fptoui float %3555 to i32
  %3558 = call i32 @dx.op.binary.i32(i32 40, i32 %3552, i32 %3556)  ; UMin(a,b)
  %3559 = call i32 @dx.op.binary.i32(i32 40, i32 %3553, i32 %3557)  ; UMin(a,b)
  %3560 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3561 = extractvalue %dx.types.CBufRet.f32 %3560, 2
  %3562 = extractvalue %dx.types.CBufRet.f32 %3560, 3
  %3563 = fmul fast float %3561, %72
  %3564 = fsub fast float %3563, %3562
  %3565 = fadd fast float %3544, -1.000000e+00
  %3566 = call float @dx.op.binary.f32(i32 36, float %3564, float %3565)  ; FMin(a,b)
  %3567 = fptoui float %3566 to i32
  %3568 = fptoui float %3542 to i32
  %3569 = fptoui float %3543 to i32
  %3570 = mul i32 %3567, %3569
  %3571 = add i32 %3570, %3559
  %3572 = mul i32 %3571, %3568
  %3573 = add i32 %3572, %3558
  %3574 = shl i32 %3573, 2
  %3575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3574, i32 undef)  ; BufferLoad(srv,index,wot)
  %3576 = extractvalue %dx.types.ResRet.i32 %3575, 0
  %3577 = and i32 %3576, 1023
  %3578 = lshr i32 %3576, 10
  %3579 = icmp eq i32 %3577, 0
  br i1 %3579, label %4008, label %3580

; <label>:3580                                    ; preds = %3486
  %3581 = and i32 %3576, 1023
  br label %3582

; <label>:3582                                    ; preds = %3709, %3580
  %3583 = phi i32 [ %3659, %3709 ], [ 0, %3580 ]
  %3584 = phi float [ %3710, %3709 ], [ 0.000000e+00, %3580 ]
  %3585 = phi float [ %3711, %3709 ], [ %933, %3580 ]
  %3586 = phi float [ %3712, %3709 ], [ %3500, %3580 ]
  %3587 = phi float [ %3713, %3709 ], [ %3498, %3580 ]
  %3588 = phi float [ %3714, %3709 ], [ 0.000000e+00, %3580 ]
  %3589 = phi float [ %3715, %3709 ], [ 0.000000e+00, %3580 ]
  %3590 = phi float [ %3716, %3709 ], [ %3492, %3580 ]
  %3591 = phi float [ %3717, %3709 ], [ %3493, %3580 ]
  %3592 = phi float [ %3718, %3709 ], [ %3494, %3580 ]
  %3593 = phi float [ %3719, %3709 ], [ %3526, %3580 ]
  %3594 = phi float [ %3720, %3709 ], [ %3527, %3580 ]
  %3595 = phi float [ %3721, %3709 ], [ %3528, %3580 ]
  %3596 = phi float [ %3722, %3709 ], [ %3497, %3580 ]
  %3597 = phi float [ %3723, %3709 ], [ %3496, %3580 ]
  %3598 = phi float [ %3724, %3709 ], [ 0.000000e+00, %3580 ]
  %3599 = phi float [ %3725, %3709 ], [ %3495, %3580 ]
  %3600 = phi float [ %3726, %3709 ], [ %3489, %3580 ]
  %3601 = phi float [ %3727, %3709 ], [ %3490, %3580 ]
  %3602 = phi float [ %3728, %3709 ], [ %3491, %3580 ]
  %3603 = add nuw nsw i32 %3583, %3578
  %3604 = shl i32 %3603, 2
  %3605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3604, i32 undef)  ; BufferLoad(srv,index,wot)
  %3606 = extractvalue %dx.types.ResRet.i32 %3605, 0
  %3607 = shl i32 %3606, 8
  %3608 = or i32 %3607, 48
  %3609 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3608, i32 undef)  ; BufferLoad(srv,index,wot)
  %3610 = extractvalue %dx.types.ResRet.f32 %3609, 0
  %3611 = extractvalue %dx.types.ResRet.f32 %3609, 1
  %3612 = extractvalue %dx.types.ResRet.f32 %3609, 2
  %3613 = extractvalue %dx.types.ResRet.f32 %3609, 3
  %3614 = or i32 %3607, 64
  %3615 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.i32 %3615, 0
  %3617 = extractvalue %dx.types.ResRet.i32 %3615, 1
  %3618 = or i32 %3607, 80
  %3619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.f32 %3619, 2
  %3621 = extractvalue %dx.types.ResRet.f32 %3619, 3
  %3622 = or i32 %3607, 96
  %3623 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3622, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.f32 %3623, 0
  %3625 = extractvalue %dx.types.ResRet.f32 %3623, 1
  %3626 = extractvalue %dx.types.ResRet.f32 %3623, 2
  %3627 = extractvalue %dx.types.ResRet.f32 %3623, 3
  %3628 = or i32 %3607, 112
  %3629 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3628, i32 undef)  ; BufferLoad(srv,index,wot)
  %3630 = extractvalue %dx.types.ResRet.f32 %3629, 2
  %3631 = or i32 %3607, 128
  %3632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = extractvalue %dx.types.ResRet.f32 %3632, 2
  %3636 = extractvalue %dx.types.ResRet.f32 %3632, 3
  %3637 = or i32 %3607, 144
  %3638 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3637, i32 undef)  ; BufferLoad(srv,index,wot)
  %3639 = extractvalue %dx.types.ResRet.f32 %3638, 0
  %3640 = extractvalue %dx.types.ResRet.f32 %3638, 1
  %3641 = extractvalue %dx.types.ResRet.f32 %3638, 2
  %3642 = extractvalue %dx.types.ResRet.f32 %3638, 3
  %3643 = or i32 %3607, 160
  %3644 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3643, i32 undef)  ; BufferLoad(srv,index,wot)
  %3645 = extractvalue %dx.types.ResRet.f32 %3644, 0
  %3646 = extractvalue %dx.types.ResRet.f32 %3644, 1
  %3647 = extractvalue %dx.types.ResRet.f32 %3644, 2
  %3648 = extractvalue %dx.types.ResRet.f32 %3644, 3
  %3649 = or i32 %3607, 192
  %3650 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3649, i32 undef)  ; BufferLoad(srv,index,wot)
  %3651 = extractvalue %dx.types.ResRet.i32 %3650, 0
  %3652 = or i32 %3607, 208
  %3653 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3652, i32 undef)  ; BufferLoad(srv,index,wot)
  %3654 = extractvalue %dx.types.ResRet.f32 %3653, 0
  %3655 = or i32 %3607, 248
  %3656 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3655, i32 undef)  ; BufferLoad(srv,index,wot)
  %3657 = extractvalue %dx.types.ResRet.f32 %3656, 0
  %3658 = extractvalue %dx.types.ResRet.f32 %3656, 1
  %3659 = add nuw nsw i32 %3583, 1
  %3660 = bitcast float %3613 to i32
  %3661 = and i32 %3660, 512
  %3662 = icmp eq i32 %3661, 0
  %3663 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3607, i32 undef)  ; BufferLoad(srv,index,wot)
  %3664 = extractvalue %dx.types.ResRet.f32 %3663, 0
  %3665 = extractvalue %dx.types.ResRet.f32 %3663, 1
  %3666 = extractvalue %dx.types.ResRet.f32 %3663, 2
  %3667 = extractvalue %dx.types.ResRet.f32 %3663, 3
  %3668 = call float @dx.op.dot4.f32(i32 56, float %3664, float %3665, float %3666, float %3667, float %140, float %141, float %142, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3669 = or i32 %3607, 16
  %3670 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3669, i32 undef)  ; BufferLoad(srv,index,wot)
  %3671 = extractvalue %dx.types.ResRet.f32 %3670, 0
  %3672 = extractvalue %dx.types.ResRet.f32 %3670, 1
  %3673 = extractvalue %dx.types.ResRet.f32 %3670, 2
  %3674 = extractvalue %dx.types.ResRet.f32 %3670, 3
  %3675 = call float @dx.op.dot4.f32(i32 56, float %3671, float %3672, float %3673, float %3674, float %140, float %141, float %142, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3676 = or i32 %3607, 32
  %3677 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3676, i32 undef)  ; BufferLoad(srv,index,wot)
  %3678 = extractvalue %dx.types.ResRet.f32 %3677, 0
  %3679 = extractvalue %dx.types.ResRet.f32 %3677, 1
  %3680 = extractvalue %dx.types.ResRet.f32 %3677, 2
  %3681 = extractvalue %dx.types.ResRet.f32 %3677, 3
  %3682 = call float @dx.op.dot4.f32(i32 56, float %3678, float %3679, float %3680, float %3681, float %140, float %141, float %142, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3683 = call float @dx.op.unary.f32(i32 27, float %3668)  ; Round_ni(value)
  %3684 = call float @dx.op.unary.f32(i32 6, float %3683)  ; FAbs(value)
  %3685 = call float @dx.op.unary.f32(i32 27, float %3675)  ; Round_ni(value)
  %3686 = call float @dx.op.unary.f32(i32 6, float %3685)  ; FAbs(value)
  %3687 = call float @dx.op.unary.f32(i32 6, float %3682)  ; FAbs(value)
  %3688 = call float @dx.op.unary.f32(i32 27, float %3687)  ; Round_ni(value)
  %3689 = fadd fast float %3686, %3684
  %3690 = fadd fast float %3689, %3688
  %3691 = fcmp fast oeq float %3690, 0.000000e+00
  %3692 = call float @dx.op.dot4.f32(i32 56, float %3664, float %3665, float %3666, float %3667, float %3535, float %3536, float %3537, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3693 = call float @dx.op.dot4.f32(i32 56, float %3671, float %3672, float %3673, float %3674, float %3535, float %3536, float %3537, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3694 = call float @dx.op.dot4.f32(i32 56, float %3664, float %3665, float %3666, float %3667, float %3538, float %3539, float %3540, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3695 = call float @dx.op.dot4.f32(i32 56, float %3671, float %3672, float %3673, float %3674, float %3538, float %3539, float %3540, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3696 = fsub fast float %3692, %3668
  %3697 = fsub fast float %3694, %3668
  %3698 = fsub fast float %3693, %3675
  %3699 = fsub fast float %3695, %3675
  %3700 = call float @dx.op.dot3.f32(i32 55, float %3610, float %3611, float %3612, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %3701 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3702 = extractvalue %dx.types.CBufRet.f32 %3701, 2
  %3703 = fadd fast float %3702, %3700
  %3704 = call float @dx.op.unary.f32(i32 7, float %3703)  ; Saturate(value)
  %3705 = extractvalue %dx.types.CBufRet.f32 %3701, 0
  %3706 = fcmp fast ogt float %3704, %3705
  %3707 = and i1 %3691, %3706
  %3708 = and i1 %3662, %3707
  br i1 %3708, label %3730, label %3709

; <label>:3709                                    ; preds = %3994, %3811, %3730, %3582
  %3710 = phi float [ %3584, %3730 ], [ %3814, %3811 ], [ %3814, %3994 ], [ %3584, %3582 ]
  %3711 = phi float [ %3585, %3730 ], [ %3585, %3811 ], [ %3969, %3994 ], [ %3585, %3582 ]
  %3712 = phi float [ %3586, %3730 ], [ %3586, %3811 ], [ %3968, %3994 ], [ %3586, %3582 ]
  %3713 = phi float [ %3587, %3730 ], [ %3587, %3811 ], [ %3966, %3994 ], [ %3587, %3582 ]
  %3714 = phi float [ %3588, %3730 ], [ %3588, %3811 ], [ %3938, %3994 ], [ %3588, %3582 ]
  %3715 = phi float [ %3589, %3730 ], [ %3589, %3811 ], [ %3936, %3994 ], [ %3589, %3582 ]
  %3716 = phi float [ %3590, %3730 ], [ %3590, %3811 ], [ %4004, %3994 ], [ %3590, %3582 ]
  %3717 = phi float [ %3591, %3730 ], [ %3591, %3811 ], [ %4005, %3994 ], [ %3591, %3582 ]
  %3718 = phi float [ %3592, %3730 ], [ %3592, %3811 ], [ %4006, %3994 ], [ %3592, %3582 ]
  %3719 = phi float [ %3593, %3730 ], [ %3593, %3811 ], [ %3917, %3994 ], [ %3593, %3582 ]
  %3720 = phi float [ %3594, %3730 ], [ %3594, %3811 ], [ %3918, %3994 ], [ %3594, %3582 ]
  %3721 = phi float [ %3595, %3730 ], [ %3595, %3811 ], [ %3919, %3994 ], [ %3595, %3582 ]
  %3722 = phi float [ %3596, %3730 ], [ %3596, %3811 ], [ %3946, %3994 ], [ %3596, %3582 ]
  %3723 = phi float [ %3597, %3730 ], [ %3597, %3811 ], [ %3943, %3994 ], [ %3597, %3582 ]
  %3724 = phi float [ %3598, %3730 ], [ %3598, %3811 ], [ %3940, %3994 ], [ %3598, %3582 ]
  %3725 = phi float [ %3599, %3730 ], [ %3599, %3811 ], [ %3934, %3994 ], [ %3599, %3582 ]
  %3726 = phi float [ %3600, %3730 ], [ %3600, %3811 ], [ %3929, %3994 ], [ %3600, %3582 ]
  %3727 = phi float [ %3601, %3730 ], [ %3601, %3811 ], [ %3930, %3994 ], [ %3601, %3582 ]
  %3728 = phi float [ %3602, %3730 ], [ %3602, %3811 ], [ %3931, %3994 ], [ %3602, %3582 ]
  %3729 = icmp eq i32 %3659, %3581
  br i1 %3729, label %4007, label %3582

; <label>:3730                                    ; preds = %3582
  %3731 = extractvalue %dx.types.ResRet.f32 %3629, 3
  %3732 = extractvalue %dx.types.ResRet.f32 %3629, 1
  %3733 = extractvalue %dx.types.ResRet.f32 %3629, 0
  %3734 = extractvalue %dx.types.ResRet.f32 %3619, 1
  %3735 = extractvalue %dx.types.ResRet.f32 %3619, 0
  %3736 = extractvalue %dx.types.ResRet.i32 %3615, 3
  %3737 = extractvalue %dx.types.ResRet.i32 %3615, 2
  %3738 = add i32 %3736, 0
  %3739 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3738, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3740 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3741 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3739, %dx.types.Handle %3740, float %3668, float %3675, float undef, float undef, i32 0, i32 0, i32 undef, float %3696, float %3698, float undef, float %3697, float %3699, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3742 = extractvalue %dx.types.ResRet.f32 %3741, 0
  %3743 = fmul fast float %3742, %3735
  %3744 = fadd fast float %3743, %3734
  %3745 = call float @dx.op.unary.f32(i32 7, float %3744)  ; Saturate(value)
  %3746 = fmul fast float %3668, %3624
  %3747 = call float @dx.op.tertiary.f32(i32 46, float %3625, float %3675, float %3746)  ; FMad(a,b,c)
  %3748 = fadd fast float %3747, %3733
  %3749 = fmul fast float %3668, %3626
  %3750 = call float @dx.op.tertiary.f32(i32 46, float %3627, float %3675, float %3749)  ; FMad(a,b,c)
  %3751 = fadd fast float %3750, %3732
  %3752 = fmul fast float %3696, %3624
  %3753 = call float @dx.op.tertiary.f32(i32 46, float %3625, float %3698, float %3752)  ; FMad(a,b,c)
  %3754 = fmul fast float %3696, %3626
  %3755 = call float @dx.op.tertiary.f32(i32 46, float %3627, float %3698, float %3754)  ; FMad(a,b,c)
  %3756 = fmul fast float %3697, %3624
  %3757 = call float @dx.op.tertiary.f32(i32 46, float %3625, float %3699, float %3756)  ; FMad(a,b,c)
  %3758 = fmul fast float %3697, %3626
  %3759 = call float @dx.op.tertiary.f32(i32 46, float %3627, float %3699, float %3758)  ; FMad(a,b,c)
  %3760 = add i32 %3737, 0
  %3761 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3760, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3762 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3761, %dx.types.Handle %3740, float %3748, float %3751, float undef, float undef, i32 0, i32 0, i32 undef, float %3753, float %3755, float undef, float %3757, float %3759, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3763 = extractvalue %dx.types.ResRet.f32 %3762, 0
  %3764 = and i32 %3660, 1024
  %3765 = icmp ne i32 %3764, 0
  %3766 = fcmp fast ogt float %3763, 0x3FE0101020000000
  %3767 = uitofp i1 %3766 to float
  %3768 = select i1 %3765, float %3767, float %3763
  %3769 = and i32 %3660, 8192
  %3770 = icmp ne i32 %3769, 0
  %3771 = select i1 %3770, float %3731, float 1.000000e+00
  %3772 = fmul fast float %3668, 2.000000e+00
  %3773 = fadd fast float %3772, -1.000000e+00
  %3774 = call float @dx.op.unary.f32(i32 6, float %3773)  ; FAbs(value)
  %3775 = fmul fast float %3774, %3657
  %3776 = fsub fast float %3775, %3657
  %3777 = call float @dx.op.unary.f32(i32 7, float %3776)  ; Saturate(value)
  %3778 = fmul fast float %3675, 2.000000e+00
  %3779 = fadd fast float %3778, -1.000000e+00
  %3780 = call float @dx.op.unary.f32(i32 6, float %3779)  ; FAbs(value)
  %3781 = fmul fast float %3780, %3658
  %3782 = fsub fast float %3781, %3658
  %3783 = call float @dx.op.unary.f32(i32 7, float %3782)  ; Saturate(value)
  %3784 = fmul fast float %3687, %3620
  %3785 = fsub fast float %3784, %3620
  %3786 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  %3787 = fmul fast float %3745, %3771
  %3788 = fmul fast float %3787, %3742
  %3789 = fmul fast float %3788, %3777
  %3790 = fmul fast float %3789, %3768
  %3791 = fmul fast float %3790, %3783
  %3792 = fmul fast float %3791, %3786
  %3793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3794 = extractvalue %dx.types.CBufRet.f32 %3793, 1
  %3795 = extractvalue %dx.types.CBufRet.f32 %3793, 0
  %3796 = fsub fast float %3704, %3795
  %3797 = fmul fast float %3796, %3794
  %3798 = call float @dx.op.unary.f32(i32 7, float %3797)  ; Saturate(value)
  %3799 = fmul fast float %3792, %3621
  %3800 = fadd fast float %3792, %3621
  %3801 = fmul fast float %3800, %3630
  %3802 = fsub fast float %3801, %3630
  %3803 = call float @dx.op.unary.f32(i32 7, float %3802)  ; Saturate(value)
  %3804 = and i32 %3660, 128
  %3805 = icmp ne i32 %3804, 0
  %3806 = select i1 %3805, float %3803, float %3799
  %3807 = fmul fast float %3806, %3798
  %3808 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3809 = extractvalue %dx.types.CBufRet.f32 %3808, 0
  %3810 = fcmp fast ugt float %3807, %3809
  br i1 %3810, label %3811, label %3709

; <label>:3811                                    ; preds = %3730
  %3812 = select i1 %3770, float %3807, float 0.000000e+00
  %3813 = fadd fast float %3812, %3584
  %3814 = call float @dx.op.unary.f32(i32 7, float %3813)  ; Saturate(value)
  br i1 %3770, label %3709, label %3815

; <label>:3815                                    ; preds = %3811
  %3816 = and i32 %3660, 4
  %3817 = and i32 %3660, 8
  %3818 = add i32 %3616, 0
  %3819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3818, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3820 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3821 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3819, %dx.types.Handle %3820, float %3748, float %3751, float undef, float undef, i32 0, i32 0, i32 undef, float %3753, float %3755, float undef, float %3757, float %3759, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3822 = extractvalue %dx.types.ResRet.f32 %3821, 0
  %3823 = extractvalue %dx.types.ResRet.f32 %3821, 1
  %3824 = extractvalue %dx.types.ResRet.f32 %3821, 2
  %3825 = extractvalue %dx.types.ResRet.f32 %3821, 3
  %3826 = bitcast float %3642 to i32
  %3827 = and i32 %3826, 255
  %3828 = uitofp i32 %3827 to float
  %3829 = lshr i32 %3826, 8
  %3830 = and i32 %3829, 255
  %3831 = uitofp i32 %3830 to float
  %3832 = fmul fast float %3825, %3828
  %3833 = fadd fast float %3832, %3831
  %3834 = fmul fast float %3833, 0x3F70101000000000
  %3835 = add i32 %3617, 0
  %3836 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3835, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3837 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3836, %dx.types.Handle %3820, float %3748, float %3751, float undef, float undef, i32 0, i32 0, i32 undef, float %3753, float %3755, float undef, float %3757, float %3759, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3838 = extractvalue %dx.types.ResRet.f32 %3837, 0
  %3839 = extractvalue %dx.types.ResRet.f32 %3837, 1
  %3840 = extractvalue %dx.types.ResRet.f32 %3837, 2
  %3841 = extractvalue %dx.types.ResRet.f32 %3837, 3
  %3842 = bitcast float %3636 to i32
  %3843 = and i32 %3842, 255
  %3844 = uitofp i32 %3843 to float
  %3845 = lshr i32 %3842, 8
  %3846 = and i32 %3845, 255
  %3847 = uitofp i32 %3846 to float
  %3848 = lshr i32 %3842, 16
  %3849 = and i32 %3848, 255
  %3850 = uitofp i32 %3849 to float
  %3851 = fmul fast float %3850, 0x3F70101000000000
  %3852 = fmul fast float %3838, %3844
  %3853 = fadd fast float %3852, %3847
  %3854 = fmul fast float %3853, 0x3F70101000000000
  %3855 = fadd fast float %3839, -5.000000e-01
  %3856 = fadd fast float %3841, -5.000000e-01
  %3857 = fmul fast float %3855, %3851
  %3858 = fmul fast float %3856, %3851
  %3859 = fadd fast float %3857, 5.000000e-01
  %3860 = fadd fast float %3858, 5.000000e-01
  %3861 = fmul fast float %3822, %3645
  %3862 = fmul fast float %3823, %3646
  %3863 = fmul fast float %3824, %3647
  %3864 = fmul fast float %3859, 2.000000e+00
  %3865 = fadd fast float %3864, -1.000000e+00
  %3866 = fmul fast float %3860, 2.000000e+00
  %3867 = fadd fast float %3866, -1.000000e+00
  %3868 = fadd fast float %3865, %3867
  %3869 = fmul fast float %3868, 5.000000e-01
  %3870 = fsub fast float %3865, %3867
  %3871 = fmul fast float %3870, 5.000000e-01
  %3872 = call float @dx.op.unary.f32(i32 6, float %3869)  ; FAbs(value)
  %3873 = fsub fast float 1.000000e+00, %3872
  %3874 = call float @dx.op.unary.f32(i32 6, float %3871)  ; FAbs(value)
  %3875 = fsub fast float %3873, %3874
  %3876 = call float @dx.op.dot3.f32(i32 55, float %3869, float %3871, float %3875, float %3869, float %3871, float %3875)  ; Dot3(ax,ay,az,bx,by,bz)
  %3877 = call float @dx.op.unary.f32(i32 25, float %3876)  ; Rsqrt(value)
  %3878 = fmul fast float %3869, %3877
  %3879 = fmul fast float %3871, %3877
  %3880 = fmul fast float %3877, %3875
  %3881 = fmul fast float %3880, %3610
  %3882 = fmul fast float %3880, %3611
  %3883 = fmul fast float %3880, %3612
  %3884 = fmul fast float %3878, %3633
  %3885 = fmul fast float %3878, %3634
  %3886 = fmul fast float %3878, %3635
  %3887 = fadd fast float %3884, %3881
  %3888 = fadd fast float %3885, %3882
  %3889 = fadd fast float %3886, %3883
  %3890 = fmul fast float %3879, %3639
  %3891 = fmul fast float %3879, %3640
  %3892 = fmul fast float %3879, %3641
  %3893 = fadd fast float %3887, %3890
  %3894 = fadd fast float %3888, %3891
  %3895 = fadd fast float %3889, %3892
  %3896 = call float @dx.op.dot3.f32(i32 55, float %3893, float %3894, float %3895, float %3893, float %3894, float %3895)  ; Dot3(ax,ay,az,bx,by,bz)
  %3897 = call float @dx.op.unary.f32(i32 25, float %3896)  ; Rsqrt(value)
  %3898 = fmul fast float %3893, %3897
  %3899 = fmul fast float %3894, %3897
  %3900 = fmul fast float %3895, %3897
  %3901 = icmp ne i32 %3817, 0
  %3902 = select i1 %3901, float 1.000000e+00, float 0.000000e+00
  %3903 = fmul fast float %3807, %3902
  %3904 = and i32 %3660, 1
  %3905 = icmp eq i32 %3904, 0
  br i1 %3905, label %3906, label %3910

; <label>:3906                                    ; preds = %3815
  %3907 = fsub fast float %3898, %3593
  %3908 = fsub fast float %3899, %3594
  %3909 = fsub fast float %3900, %3595
  br label %3910

; <label>:3910                                    ; preds = %3906, %3815
  %3911 = phi float [ %3907, %3906 ], [ %3898, %3815 ]
  %3912 = phi float [ %3908, %3906 ], [ %3899, %3815 ]
  %3913 = phi float [ %3909, %3906 ], [ %3900, %3815 ]
  %3914 = fmul float %3913, %3903
  %3915 = fmul float %3912, %3903
  %3916 = fmul float %3911, %3903
  %3917 = fadd fast float %3916, %3593
  %3918 = fadd fast float %3915, %3594
  %3919 = fadd fast float %3914, %3595
  %3920 = icmp ne i32 %3816, 0
  %3921 = select i1 %3920, float 1.000000e+00, float 0.000000e+00
  %3922 = fmul fast float %3807, %3921
  %3923 = fsub fast float %3861, %3600
  %3924 = fsub fast float %3862, %3601
  %3925 = fsub fast float %3863, %3602
  %3926 = fmul fast float %3923, %3922
  %3927 = fmul fast float %3924, %3922
  %3928 = fmul fast float %3925, %3922
  %3929 = fadd fast float %3926, %3600
  %3930 = fadd fast float %3927, %3601
  %3931 = fadd fast float %3928, %3602
  %3932 = fsub fast float %3834, %3599
  %3933 = fmul fast float %3932, %3922
  %3934 = fadd fast float %3933, %3599
  %3935 = fmul fast float %3922, %3589
  %3936 = fsub fast float %3589, %3935
  %3937 = fmul fast float %3922, %3588
  %3938 = fsub fast float %3588, %3937
  %3939 = fadd fast float %3807, %3598
  %3940 = call float @dx.op.unary.f32(i32 7, float %3939)  ; Saturate(value)
  %3941 = fsub fast float %3854, %3597
  %3942 = fmul fast float %3941, %3903
  %3943 = fadd fast float %3942, %3597
  %3944 = fsub fast float %3840, %3596
  %3945 = fmul fast float %3944, %3903
  %3946 = fadd fast float %3945, %3596
  %3947 = call float @dx.op.dot3.f32(i32 55, float %3861, float %3862, float %3863, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3948 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3949 = extractvalue %dx.types.CBufRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.CBufRet.f32 %3948, 1
  %3951 = fmul fast float %3950, %3947
  %3952 = fadd fast float %3951, %3949
  %3953 = call float @dx.op.unary.f32(i32 7, float %3952)  ; Saturate(value)
  %3954 = bitcast float %3648 to i32
  %3955 = and i32 %3954, 65535
  %3956 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3955)  ; LegacyF16ToF32(value)
  %3957 = lshr i32 %3954, 16
  %3958 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3957)  ; LegacyF16ToF32(value)
  %3959 = fcmp fast oge float %3956, 0.000000e+00
  %3960 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3961 = extractvalue %dx.types.CBufRet.f32 %3960, 0
  %3962 = select i1 %3959, float %3956, float %3961
  %3963 = fadd fast float %3962, %3958
  %3964 = fsub fast float %3953, %3587
  %3965 = fmul fast float %3964, %3807
  %3966 = fadd fast float %3965, %3587
  %3967 = fmul fast float %3963, %3807
  %3968 = call float @dx.op.binary.f32(i32 35, float %3586, float %3967)  ; FMax(a,b)
  %3969 = call float @dx.op.binary.f32(i32 35, float %3585, float %3807)  ; FMax(a,b)
  %3970 = and i32 %3660, 16
  %3971 = icmp eq i32 %3970, 0
  br i1 %3971, label %3994, label %3972

; <label>:3972                                    ; preds = %3910
  %3973 = bitcast float %3654 to i32
  %3974 = add i32 %3651, 0
  %3975 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3974, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3976 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3975, %dx.types.Handle %3820, float %3748, float %3751, float undef, float undef, i32 0, i32 0, i32 undef, float %3753, float %3755, float undef, float %3757, float %3759, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3977 = extractvalue %dx.types.ResRet.f32 %3976, 0
  %3978 = extractvalue %dx.types.ResRet.f32 %3976, 1
  %3979 = extractvalue %dx.types.ResRet.f32 %3976, 2
  %3980 = and i32 %3973, 65535
  %3981 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3980)  ; LegacyF16ToF32(value)
  %3982 = fmul fast float %3977, %3645
  %3983 = fmul fast float %3978, %3646
  %3984 = fmul fast float %3979, %3647
  %3985 = and i32 %3660, 16384
  %3986 = icmp ne i32 %3985, 0
  %3987 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3988 = extractvalue %dx.types.CBufRet.f32 %3987, 0
  %3989 = select i1 %3986, float %3988, float 1.000000e+00
  %3990 = fmul fast float %3989, %3981
  %3991 = fmul fast float %3982, %3990
  %3992 = fmul fast float %3983, %3990
  %3993 = fmul fast float %3984, %3990
  br label %3994

; <label>:3994                                    ; preds = %3972, %3910
  %3995 = phi float [ %3991, %3972 ], [ 0.000000e+00, %3910 ]
  %3996 = phi float [ %3992, %3972 ], [ 0.000000e+00, %3910 ]
  %3997 = phi float [ %3993, %3972 ], [ 0.000000e+00, %3910 ]
  %3998 = fsub fast float %3995, %3590
  %3999 = fsub fast float %3996, %3591
  %4000 = fsub fast float %3997, %3592
  %4001 = fmul fast float %3998, %3807
  %4002 = fmul fast float %3999, %3807
  %4003 = fmul fast float %4000, %3807
  %4004 = fadd fast float %4001, %3590
  %4005 = fadd fast float %4002, %3591
  %4006 = fadd fast float %4003, %3592
  br label %3709

; <label>:4007                                    ; preds = %3709
  br label %4008

; <label>:4008                                    ; preds = %4007, %3486
  %4009 = phi float [ 0.000000e+00, %3486 ], [ %3710, %4007 ]
  %4010 = phi float [ %933, %3486 ], [ %3711, %4007 ]
  %4011 = phi float [ %3500, %3486 ], [ %3712, %4007 ]
  %4012 = phi float [ %3498, %3486 ], [ %3713, %4007 ]
  %4013 = phi float [ 0.000000e+00, %3486 ], [ %3714, %4007 ]
  %4014 = phi float [ 0.000000e+00, %3486 ], [ %3715, %4007 ]
  %4015 = phi float [ %3492, %3486 ], [ %3716, %4007 ]
  %4016 = phi float [ %3493, %3486 ], [ %3717, %4007 ]
  %4017 = phi float [ %3494, %3486 ], [ %3718, %4007 ]
  %4018 = phi float [ %3526, %3486 ], [ %3719, %4007 ]
  %4019 = phi float [ %3527, %3486 ], [ %3720, %4007 ]
  %4020 = phi float [ %3528, %3486 ], [ %3721, %4007 ]
  %4021 = phi float [ %3497, %3486 ], [ %3722, %4007 ]
  %4022 = phi float [ %3496, %3486 ], [ %3723, %4007 ]
  %4023 = phi float [ 0.000000e+00, %3486 ], [ %3724, %4007 ]
  %4024 = phi float [ %3495, %3486 ], [ %3725, %4007 ]
  %4025 = phi float [ %3489, %3486 ], [ %3726, %4007 ]
  %4026 = phi float [ %3490, %3486 ], [ %3727, %4007 ]
  %4027 = phi float [ %3491, %3486 ], [ %3728, %4007 ]
  %4028 = call float @dx.op.dot3.f32(i32 55, float %4018, float %4019, float %4020, float %4018, float %4019, float %4020)  ; Dot3(ax,ay,az,bx,by,bz)
  %4029 = call float @dx.op.unary.f32(i32 25, float %4028)  ; Rsqrt(value)
  %4030 = fmul fast float %4029, %4018
  %4031 = fmul fast float %4029, %4019
  %4032 = fmul fast float %4029, %4020
  %4033 = fadd fast float %4023, %933
  %4034 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4035 = call float @dx.op.dot3.f32(i32 55, float %4030, float %4031, float %4032, float %4030, float %4031, float %4032)  ; Dot3(ax,ay,az,bx,by,bz)
  %4036 = call float @dx.op.unary.f32(i32 25, float %4035)  ; Rsqrt(value)
  %4037 = fmul fast float %4036, %4030
  %4038 = fmul fast float %4036, %4031
  %4039 = fmul fast float %4036, %4032
  %4040 = add i32 %43, 392
  %4041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %4042 = extractvalue %dx.types.ResRet.i32 %4041, 0
  %4043 = extractvalue %dx.types.ResRet.i32 %4041, 1
  %4044 = extractvalue %dx.types.ResRet.i32 %4041, 2
  %4045 = extractvalue %dx.types.ResRet.i32 %4041, 3
  %4046 = bitcast i32 %4042 to float
  %4047 = bitcast i32 %4043 to float
  %4048 = bitcast i32 %4044 to float
  %4049 = bitcast i32 %4045 to float
  %4050 = fsub fast float %4025, %4046
  %4051 = fsub fast float %4026, %4047
  %4052 = fsub fast float %4027, %4048
  %4053 = fmul fast float %4050, %174
  %4054 = fmul fast float %4051, %174
  %4055 = fmul fast float %4052, %174
  %4056 = fadd fast float %4053, %4046
  %4057 = fadd fast float %4054, %4047
  %4058 = fadd fast float %4055, %4048
  %4059 = fsub fast float %4034, %4049
  %4060 = fmul fast float %4059, %174
  %4061 = fadd fast float %4060, %4049
  %4062 = fadd fast float %4024, 0xBFB99999A0000000
  %4063 = call float @dx.op.unary.f32(i32 7, float %4062)  ; Saturate(value)
  %4064 = fmul fast float %4063, 0x3FF1C71C80000000
  %4065 = call float @dx.op.binary.f32(i32 36, float %4024, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4066 = fsub fast float 1.000000e+00, %4064
  %4067 = call float @dx.op.unary.f32(i32 7, float %4066)  ; Saturate(value)
  %4068 = fmul fast float %4056, %4067
  %4069 = fmul fast float %4057, %4067
  %4070 = fmul fast float %4058, %4067
  %4071 = call float @dx.op.unary.f32(i32 7, float %4068)  ; Saturate(value)
  %4072 = call float @dx.op.unary.f32(i32 7, float %4069)  ; Saturate(value)
  %4073 = call float @dx.op.unary.f32(i32 7, float %4070)  ; Saturate(value)
  %4074 = fmul fast float %4056, %4064
  %4075 = fmul fast float %4057, %4064
  %4076 = fmul fast float %4058, %4064
  %4077 = fadd fast float %4074, %4065
  %4078 = fadd fast float %4075, %4065
  %4079 = fadd fast float %4076, %4065
  %4080 = call float @dx.op.unary.f32(i32 7, float %4077)  ; Saturate(value)
  %4081 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4082 = call float @dx.op.unary.f32(i32 7, float %4079)  ; Saturate(value)
  %4083 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4084 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4085 = extractvalue %dx.types.CBufRet.i32 %4084, 3
  %4086 = and i32 %4085, 8
  %4087 = icmp ne i32 %4086, 0
  %4088 = call float @dx.op.binary.f32(i32 35, float %4071, float %4056)  ; FMax(a,b)
  %4089 = call float @dx.op.binary.f32(i32 35, float %4072, float %4056)  ; FMax(a,b)
  %4090 = call float @dx.op.binary.f32(i32 35, float %4073, float %4056)  ; FMax(a,b)
  %4091 = call float @dx.op.dot3.f32(i32 55, float %4071, float %4072, float %4073, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4092 = select i1 %214, float %4056, float %4071
  %4093 = select i1 %214, float %4091, float %4072
  %4094 = select i1 %214, float 1.000000e+00, float %4073
  %4095 = select i1 %4087, float %4088, float %4092
  %4096 = select i1 %4087, float %4089, float %4093
  %4097 = select i1 %4087, float %4090, float %4094
  %4098 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4099 = extractvalue %dx.types.CBufRet.f32 %4098, 0
  %4100 = extractvalue %dx.types.CBufRet.f32 %4098, 1
  %4101 = extractvalue %dx.types.CBufRet.f32 %4098, 2
  %4102 = fadd fast float %4099, %140
  %4103 = fadd fast float %4100, %141
  %4104 = fadd fast float %4101, %142
  %4105 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4106 = extractvalue %dx.types.CBufRet.f32 %4105, 0
  %4107 = extractvalue %dx.types.CBufRet.f32 %4105, 1
  %4108 = fsub fast float %4102, %4106
  %4109 = fsub fast float %4103, %4107
  %4110 = fmul fast float %4108, %4108
  %4111 = fmul fast float %4109, %4109
  %4112 = fadd fast float %4110, %4111
  %4113 = call float @dx.op.unary.f32(i32 24, float %4112)  ; Sqrt(value)
  %4114 = extractvalue %dx.types.CBufRet.f32 %4105, 2
  %4115 = fcmp fast olt float %4113, %4114
  br i1 %4115, label %4116, label %4183

; <label>:4116                                    ; preds = %4008
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 0
  %4119 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4120 = extractvalue %dx.types.CBufRet.f32 %4119, 0
  %4121 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4122 = extractvalue %dx.types.CBufRet.f32 %4121, 0
  %4123 = extractvalue %dx.types.CBufRet.f32 %4117, 1
  %4124 = extractvalue %dx.types.CBufRet.f32 %4119, 1
  %4125 = extractvalue %dx.types.CBufRet.f32 %4121, 1
  %4126 = extractvalue %dx.types.CBufRet.f32 %4117, 3
  %4127 = extractvalue %dx.types.CBufRet.f32 %4119, 3
  %4128 = extractvalue %dx.types.CBufRet.f32 %4121, 3
  %4129 = fadd fast float %4126, %4102
  %4130 = fadd fast float %4127, %4103
  %4131 = fadd fast float %4128, %4104
  %4132 = fmul fast float %4129, %4118
  %4133 = call float @dx.op.tertiary.f32(i32 46, float %4130, float %4120, float %4132)  ; FMad(a,b,c)
  %4134 = call float @dx.op.tertiary.f32(i32 46, float %4131, float %4122, float %4133)  ; FMad(a,b,c)
  %4135 = fmul fast float %4129, %4123
  %4136 = call float @dx.op.tertiary.f32(i32 46, float %4130, float %4124, float %4135)  ; FMad(a,b,c)
  %4137 = call float @dx.op.tertiary.f32(i32 46, float %4131, float %4125, float %4136)  ; FMad(a,b,c)
  %4138 = fsub fast float %4134, %4126
  %4139 = fsub fast float %4137, %4127
  %4140 = fsub fast float %4138, %4106
  %4141 = fadd fast float %4140, %4114
  %4142 = fsub fast float %4139, %4107
  %4143 = fadd fast float %4142, %4114
  %4144 = extractvalue %dx.types.CBufRet.f32 %4105, 3
  %4145 = fmul fast float %4141, %4144
  %4146 = fmul fast float %4143, %4144
  %4147 = call float @dx.op.unary.f32(i32 7, float %4145)  ; Saturate(value)
  %4148 = call float @dx.op.unary.f32(i32 7, float %4146)  ; Saturate(value)
  %4149 = fsub fast float 1.000000e+00, %4147
  %4150 = fsub fast float 1.000000e+00, %4148
  %4151 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4149, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4152 = extractvalue %dx.types.ResRet.f32 %4151, 0
  %4153 = fcmp fast ugt float %4152, 0.000000e+00
  br i1 %4153, label %4154, label %4457

; <label>:4154                                    ; preds = %4116
  %4155 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4156 = extractvalue %dx.types.CBufRet.f32 %4155, 2
  %4157 = fmul fast float %4156, %4152
  %4158 = extractvalue %dx.types.CBufRet.f32 %4155, 3
  %4159 = fadd fast float %4158, %4157
  %4160 = extractvalue %dx.types.CBufRet.f32 %4121, 2
  %4161 = fadd fast float %4159, %4128
  %4162 = fmul fast float %4134, %4122
  %4163 = call float @dx.op.tertiary.f32(i32 46, float %4137, float %4125, float %4162)  ; FMad(a,b,c)
  %4164 = call float @dx.op.tertiary.f32(i32 46, float %4161, float %4160, float %4163)  ; FMad(a,b,c)
  %4165 = fsub fast float %4164, %4128
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4168 = fsub fast float %4165, %4167
  %4169 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4149, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4170 = extractvalue %dx.types.ResRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.ResRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.ResRet.f32 %4169, 2
  %4173 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4149, float %4150, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4174 = extractvalue %dx.types.ResRet.f32 %4173, 0
  %4175 = extractvalue %dx.types.ResRet.f32 %4173, 1
  %4176 = extractvalue %dx.types.ResRet.f32 %4173, 2
  %4177 = fadd fast float %4174, %4170
  %4178 = fmul fast float %4177, 0x3F847AE140000000
  %4179 = fadd fast float %4175, %4171
  %4180 = fmul fast float %4179, 0x3F847AE140000000
  %4181 = fadd fast float %4176, %4172
  %4182 = fmul fast float %4181, 0x3F847AE140000000
  br label %4457

; <label>:4183                                    ; preds = %4008
  %4184 = and i32 %190, 1
  %4185 = icmp eq i32 %4184, 0
  br i1 %4185, label %4457, label %4186

; <label>:4186                                    ; preds = %4183
  %4187 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4188 = extractvalue %dx.types.CBufRet.f32 %4187, 0
  %4189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4190 = extractvalue %dx.types.CBufRet.f32 %4189, 0
  %4191 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4192 = extractvalue %dx.types.CBufRet.f32 %4191, 0
  %4193 = extractvalue %dx.types.CBufRet.f32 %4187, 1
  %4194 = extractvalue %dx.types.CBufRet.f32 %4189, 1
  %4195 = extractvalue %dx.types.CBufRet.f32 %4191, 1
  %4196 = extractvalue %dx.types.CBufRet.f32 %4187, 3
  %4197 = extractvalue %dx.types.CBufRet.f32 %4189, 3
  %4198 = extractvalue %dx.types.CBufRet.f32 %4191, 3
  %4199 = fadd fast float %4196, %4102
  %4200 = fadd fast float %4197, %4103
  %4201 = fadd fast float %4198, %4104
  %4202 = fmul fast float %4199, %4188
  %4203 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4190, float %4202)  ; FMad(a,b,c)
  %4204 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4192, float %4203)  ; FMad(a,b,c)
  %4205 = fmul fast float %4199, %4193
  %4206 = call float @dx.op.tertiary.f32(i32 46, float %4200, float %4194, float %4205)  ; FMad(a,b,c)
  %4207 = call float @dx.op.tertiary.f32(i32 46, float %4201, float %4195, float %4206)  ; FMad(a,b,c)
  %4208 = fsub fast float %4204, %4196
  %4209 = fsub fast float %4207, %4197
  %4210 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4211 = extractvalue %dx.types.CBufRet.f32 %4210, 0
  %4212 = extractvalue %dx.types.CBufRet.f32 %4210, 1
  %4213 = extractvalue %dx.types.CBufRet.f32 %4210, 2
  %4214 = extractvalue %dx.types.CBufRet.f32 %4210, 3
  %4215 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4216 = extractvalue %dx.types.CBufRet.f32 %4215, 3
  %4217 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4218 = extractvalue %dx.types.CBufRet.i32 %4217, 0
  %4219 = extractvalue %dx.types.CBufRet.i32 %4217, 1
  %4220 = udiv i32 %4219, %4218
  %4221 = fsub fast float %4208, %4211
  %4222 = fsub fast float %4209, %4212
  %4223 = call float @dx.op.binary.f32(i32 35, float %4221, float 0.000000e+00)  ; FMax(a,b)
  %4224 = call float @dx.op.binary.f32(i32 35, float %4222, float 0.000000e+00)  ; FMax(a,b)
  %4225 = call float @dx.op.binary.f32(i32 36, float %4223, float %4213)  ; FMin(a,b)
  %4226 = call float @dx.op.binary.f32(i32 36, float %4224, float %4214)  ; FMin(a,b)
  %4227 = add i32 %4218, -1
  %4228 = add i32 %4220, -1
  %4229 = fmul fast float %4225, %4216
  %4230 = fmul fast float %4226, %4216
  %4231 = fptoui float %4229 to i32
  %4232 = fptoui float %4230 to i32
  %4233 = call i32 @dx.op.binary.i32(i32 40, i32 %4231, i32 %4227)  ; UMin(a,b)
  %4234 = call i32 @dx.op.binary.i32(i32 40, i32 %4232, i32 %4228)  ; UMin(a,b)
  %4235 = mul i32 %4234, %4218
  %4236 = add i32 %4235, %4233
  %4237 = shl i32 %4236, 2
  %4238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4237, i32 undef)  ; BufferLoad(srv,index,wot)
  %4239 = extractvalue %dx.types.ResRet.i32 %4238, 0
  %4240 = icmp eq i32 %4239, -1
  br i1 %4240, label %4457, label %4241

; <label>:4241                                    ; preds = %4186
  %4242 = mul i32 %4239, 148
  %4243 = add i32 %4242, 4
  %4244 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4243, i32 undef)  ; BufferLoad(srv,index,wot)
  %4245 = extractvalue %dx.types.ResRet.f32 %4244, 0
  %4246 = add i32 %4242, 8
  %4247 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4246, i32 undef)  ; BufferLoad(srv,index,wot)
  %4248 = extractvalue %dx.types.ResRet.f32 %4247, 0
  %4249 = add i32 %4242, 36
  %4250 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4249, i32 undef)  ; BufferLoad(srv,index,wot)
  %4251 = extractvalue %dx.types.ResRet.f32 %4250, 0
  %4252 = add i32 %4242, 60
  %4253 = add i32 %4242, 92
  %4254 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4253, i32 undef)  ; BufferLoad(srv,index,wot)
  %4255 = extractvalue %dx.types.ResRet.i32 %4254, 0
  %4256 = add i32 %4242, 116
  %4257 = fsub fast float %4208, %4245
  %4258 = fsub fast float %4209, %4248
  %4259 = fmul fast float %4216, %4257
  %4260 = fmul fast float %4216, %4258
  %4261 = call float @dx.op.unary.f32(i32 7, float %4259)  ; Saturate(value)
  %4262 = call float @dx.op.unary.f32(i32 7, float %4260)  ; Saturate(value)
  %4263 = fsub fast float 1.000000e+00, %4262
  %4264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4265 = extractvalue %dx.types.CBufRet.f32 %4264, 2
  %4266 = call float @dx.op.unary.f32(i32 83, float %4261)  ; DerivCoarseX(value)
  %4267 = call float @dx.op.unary.f32(i32 83, float %4263)  ; DerivCoarseX(value)
  %4268 = call float @dx.op.unary.f32(i32 84, float %4261)  ; DerivCoarseY(value)
  %4269 = call float @dx.op.unary.f32(i32 84, float %4263)  ; DerivCoarseY(value)
  %4270 = fmul fast float %4266, %4265
  %4271 = fmul fast float %4267, %4265
  %4272 = fmul fast float %4268, %4265
  %4273 = fmul fast float %4269, %4265
  %4274 = call float @dx.op.dot2.f32(i32 54, float %4272, float %4273, float %4272, float %4273)  ; Dot2(ax,ay,bx,by)
  %4275 = call float @dx.op.dot2.f32(i32 54, float %4270, float %4271, float %4270, float %4271)  ; Dot2(ax,ay,bx,by)
  %4276 = call float @dx.op.binary.f32(i32 35, float %4275, float %4274)  ; FMax(a,b)
  %4277 = call float @dx.op.unary.f32(i32 23, float %4276)  ; Log(value)
  %4278 = fmul fast float %4277, 5.000000e-01
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 1
  %4281 = fadd fast float %4280, %4278
  %4282 = call float @dx.op.binary.f32(i32 35, float %4281, float 0.000000e+00)  ; FMax(a,b)
  %4283 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4284 = extractvalue %dx.types.CBufRet.f32 %4283, 3
  %4285 = fadd fast float %4284, %4282
  %4286 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4287 = extractvalue %dx.types.CBufRet.f32 %4286, 3
  %4288 = fadd fast float %4285, %4287
  %4289 = add i32 %4255, 0
  %4290 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4289, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4291 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4290, i32 0)  ; GetDimensions(handle,mipLevel)
  %4292 = extractvalue %dx.types.Dimensions %4291, 0
  %4293 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4292)  ; FirstbitLo(value)
  %4294 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4295 = extractvalue %dx.types.CBufRet.i32 %4294, 1
  %4296 = sub nsw i32 %4295, %4293
  %4297 = sitofp i32 %4296 to float
  %4298 = fsub fast float %4288, %4297
  %4299 = call float @dx.op.binary.f32(i32 35, float %4298, float 0.000000e+00)  ; FMax(a,b)
  %4300 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4290, %dx.types.Handle %37, float %4261, float %4263, float %4251, float undef, i32 0, i32 0, i32 undef, float %4299)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4301 = extractvalue %dx.types.ResRet.f32 %4300, 0
  %4302 = fcmp ule float %4301, 0x3FE0101020000000
  %4303 = extractvalue %dx.types.CBufRet.i32 %4294, 0
  %4304 = and i32 %4303, 128
  %4305 = icmp ne i32 %4304, 0
  %4306 = and i1 %4302, %4305
  br i1 %4306, label %4457, label %4307

; <label>:4307                                    ; preds = %4241
  %4308 = add i32 %4242, 20
  %4309 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4308, i32 undef)  ; BufferLoad(srv,index,wot)
  %4310 = extractvalue %dx.types.ResRet.f32 %4309, 0
  %4311 = add i32 %4242, 24
  %4312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4311, i32 undef)  ; BufferLoad(srv,index,wot)
  %4313 = extractvalue %dx.types.ResRet.f32 %4312, 0
  %4314 = add i32 %4242, 40
  %4315 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4314, i32 undef)  ; BufferLoad(srv,index,wot)
  %4316 = extractvalue %dx.types.ResRet.f32 %4315, 0
  %4317 = add i32 %4242, 96
  %4318 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4317, i32 undef)  ; BufferLoad(srv,index,wot)
  %4319 = extractvalue %dx.types.ResRet.i32 %4318, 0
  %4320 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.f32 %4320, 2
  %4322 = fmul fast float %4321, %4261
  %4323 = fmul fast float %4321, %4263
  %4324 = extractvalue %dx.types.CBufRet.f32 %4320, 3
  %4325 = fadd fast float %4322, %4324
  %4326 = fadd fast float %4323, %4324
  %4327 = add i32 %4319, 0
  %4328 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4327, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4329 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4328, i32 0)  ; GetDimensions(handle,mipLevel)
  %4330 = extractvalue %dx.types.Dimensions %4329, 0
  %4331 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4330)  ; FirstbitLo(value)
  %4332 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4333 = extractvalue %dx.types.CBufRet.i32 %4332, 1
  %4334 = sub nsw i32 %4333, %4331
  %4335 = sitofp i32 %4334 to float
  %4336 = fsub fast float %4285, %4335
  %4337 = call float @dx.op.binary.f32(i32 35, float %4336, float 0.000000e+00)  ; FMax(a,b)
  %4338 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4328, %dx.types.Handle %37, float %4325, float %4326, float %4316, float undef, i32 0, i32 0, i32 undef, float %4337)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4339 = extractvalue %dx.types.ResRet.f32 %4338, 0
  %4340 = fmul fast float %4339, %4310
  %4341 = fadd fast float %4340, %4313
  %4342 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4343 = extractvalue %dx.types.CBufRet.f32 %4342, 0
  %4344 = extractvalue %dx.types.CBufRet.f32 %4342, 1
  %4345 = extractvalue %dx.types.CBufRet.f32 %4342, 2
  %4346 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4347 = extractvalue %dx.types.CBufRet.f32 %4346, 3
  %4348 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4349 = extractvalue %dx.types.CBufRet.f32 %4348, 3
  %4350 = extractvalue %dx.types.CBufRet.f32 %4342, 3
  %4351 = fadd fast float %4347, %4208
  %4352 = fadd fast float %4349, %4209
  %4353 = fadd fast float %4341, %4350
  %4354 = fmul fast float %4351, %4343
  %4355 = call float @dx.op.tertiary.f32(i32 46, float %4352, float %4344, float %4354)  ; FMad(a,b,c)
  %4356 = call float @dx.op.tertiary.f32(i32 46, float %4353, float %4345, float %4355)  ; FMad(a,b,c)
  %4357 = fsub fast float %4356, %4350
  %4358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4359 = extractvalue %dx.types.CBufRet.f32 %4358, 2
  %4360 = fsub fast float %4357, %4359
  %4361 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4362 = extractvalue %dx.types.CBufRet.i32 %4361, 0
  %4363 = call i32 @dx.op.binary.i32(i32 40, i32 %4239, i32 %4362)  ; UMin(a,b)
  %4364 = mul i32 %4363, 36
  %4365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4366 = extractvalue %dx.types.ResRet.i32 %4365, 0
  %4367 = add i32 %4364, 4
  %4368 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4369 = extractvalue %dx.types.CBufRet.f32 %4368, 0
  %4370 = fmul fast float %4369, %4261
  %4371 = fmul fast float %4369, %4263
  %4372 = extractvalue %dx.types.CBufRet.f32 %4368, 1
  %4373 = fadd fast float %4370, %4372
  %4374 = fadd fast float %4371, %4372
  %4375 = icmp eq i32 %4366, 0
  br i1 %4375, label %4444, label %4376

; <label>:4376                                    ; preds = %4307
  br label %4377

; <label>:4377                                    ; preds = %4434, %4376
  %4378 = phi float [ %4435, %4434 ], [ 0.000000e+00, %4376 ]
  %4379 = phi float [ %4436, %4434 ], [ 0.000000e+00, %4376 ]
  %4380 = phi float [ %4437, %4434 ], [ 0.000000e+00, %4376 ]
  %4381 = phi float [ %4438, %4434 ], [ 0.000000e+00, %4376 ]
  %4382 = phi float [ %4439, %4434 ], [ 0.000000e+00, %4376 ]
  %4383 = phi float [ %4440, %4434 ], [ 0.000000e+00, %4376 ]
  %4384 = phi i32 [ %4441, %4434 ], [ 0, %4376 ]
  %4385 = shl i32 %4384, 2
  %4386 = add i32 %4252, %4385
  %4387 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4386, i32 undef)  ; BufferLoad(srv,index,wot)
  %4388 = extractvalue %dx.types.ResRet.f32 %4387, 0
  %4389 = add i32 %4256, %4385
  %4390 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4389, i32 undef)  ; BufferLoad(srv,index,wot)
  %4391 = extractvalue %dx.types.ResRet.i32 %4390, 0
  %4392 = add i32 %4391, 0
  %4393 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4392, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4394 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4393, i32 0)  ; GetDimensions(handle,mipLevel)
  %4395 = extractvalue %dx.types.Dimensions %4394, 0
  %4396 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4395)  ; FirstbitLo(value)
  %4397 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4398 = extractvalue %dx.types.CBufRet.i32 %4397, 1
  %4399 = sub nsw i32 %4398, %4396
  %4400 = sitofp i32 %4399 to float
  %4401 = fsub fast float %4285, %4400
  %4402 = call float @dx.op.binary.f32(i32 35, float %4401, float 0.000000e+00)  ; FMax(a,b)
  %4403 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4393, %dx.types.Handle %37, float %4373, float %4374, float %4388, float undef, i32 0, i32 0, i32 undef, float %4402)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4404 = extractvalue %dx.types.ResRet.f32 %4403, 0
  %4405 = fcmp fast ogt float %4404, 0.000000e+00
  br i1 %4405, label %4406, label %4434

; <label>:4406                                    ; preds = %4377
  %4407 = add i32 %4367, %4385
  %4408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4407, i32 undef)  ; BufferLoad(srv,index,wot)
  %4409 = extractvalue %dx.types.ResRet.i32 %4408, 0
  %4410 = and i32 %4409, 32767
  %4411 = mul nuw nsw i32 %4410, 928
  %4412 = add nuw nsw i32 %4411, 48
  %4413 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4412, i32 undef)  ; BufferLoad(srv,index,wot)
  %4414 = extractvalue %dx.types.ResRet.f32 %4413, 0
  %4415 = extractvalue %dx.types.ResRet.f32 %4413, 1
  %4416 = extractvalue %dx.types.ResRet.f32 %4413, 2
  %4417 = add nuw nsw i32 %4411, 60
  %4418 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4417, i32 undef)  ; BufferLoad(srv,index,wot)
  %4419 = extractvalue %dx.types.ResRet.f32 %4418, 0
  %4420 = extractvalue %dx.types.ResRet.f32 %4418, 1
  %4421 = extractvalue %dx.types.ResRet.f32 %4418, 2
  %4422 = fmul fast float %4414, %4404
  %4423 = fmul fast float %4415, %4404
  %4424 = fmul fast float %4416, %4404
  %4425 = fadd fast float %4422, %4378
  %4426 = fadd fast float %4423, %4379
  %4427 = fadd fast float %4424, %4380
  %4428 = fmul fast float %4419, %4404
  %4429 = fmul fast float %4420, %4404
  %4430 = fmul fast float %4421, %4404
  %4431 = fadd fast float %4428, %4381
  %4432 = fadd fast float %4429, %4382
  %4433 = fadd fast float %4430, %4383
  br label %4434

; <label>:4434                                    ; preds = %4406, %4377
  %4435 = phi float [ %4425, %4406 ], [ %4378, %4377 ]
  %4436 = phi float [ %4426, %4406 ], [ %4379, %4377 ]
  %4437 = phi float [ %4427, %4406 ], [ %4380, %4377 ]
  %4438 = phi float [ %4431, %4406 ], [ %4381, %4377 ]
  %4439 = phi float [ %4432, %4406 ], [ %4382, %4377 ]
  %4440 = phi float [ %4433, %4406 ], [ %4383, %4377 ]
  %4441 = add nuw i32 %4384, 1
  %4442 = icmp eq i32 %4441, %4366
  br i1 %4442, label %4443, label %4377

; <label>:4443                                    ; preds = %4434
  br label %4444

; <label>:4444                                    ; preds = %4443, %4307
  %4445 = phi float [ 0.000000e+00, %4307 ], [ %4435, %4443 ]
  %4446 = phi float [ 0.000000e+00, %4307 ], [ %4436, %4443 ]
  %4447 = phi float [ 0.000000e+00, %4307 ], [ %4437, %4443 ]
  %4448 = phi float [ 0.000000e+00, %4307 ], [ %4438, %4443 ]
  %4449 = phi float [ 0.000000e+00, %4307 ], [ %4439, %4443 ]
  %4450 = phi float [ 0.000000e+00, %4307 ], [ %4440, %4443 ]
  %4451 = fadd fast float %4448, %4445
  %4452 = fmul fast float %4451, 0x3F847AE140000000
  %4453 = fadd fast float %4449, %4446
  %4454 = fmul fast float %4453, 0x3F847AE140000000
  %4455 = fadd fast float %4450, %4447
  %4456 = fmul fast float %4455, 0x3F847AE140000000
  br label %4457

; <label>:4457                                    ; preds = %4444, %4241, %4186, %4183, %4154, %4116
  %4458 = phi float [ %4168, %4154 ], [ -1.310720e+05, %4116 ], [ %4360, %4444 ], [ -1.310720e+05, %4186 ], [ -1.310720e+05, %4241 ], [ -1.310720e+05, %4183 ]
  %4459 = phi float [ %4178, %4154 ], [ 0.000000e+00, %4116 ], [ %4452, %4444 ], [ 0.000000e+00, %4186 ], [ 0.000000e+00, %4241 ], [ 0.000000e+00, %4183 ]
  %4460 = phi float [ %4180, %4154 ], [ 0.000000e+00, %4116 ], [ %4454, %4444 ], [ 0.000000e+00, %4186 ], [ 0.000000e+00, %4241 ], [ 0.000000e+00, %4183 ]
  %4461 = phi float [ %4182, %4154 ], [ 0.000000e+00, %4116 ], [ %4456, %4444 ], [ 0.000000e+00, %4186 ], [ 0.000000e+00, %4241 ], [ 0.000000e+00, %4183 ]
  %4462 = phi i1 [ true, %4154 ], [ false, %4116 ], [ true, %4444 ], [ false, %4186 ], [ false, %4241 ], [ false, %4183 ]
  %4463 = and i32 %190, 3
  %4464 = icmp eq i32 %4463, 1
  %4465 = select i1 %4464, float 1.000000e+00, float 0.000000e+00
  %4466 = fsub fast float %4458, %142
  %4467 = call float @dx.op.unary.f32(i32 7, float %4466)  ; Saturate(value)
  %4468 = select i1 %4462, float %4467, float 1.000000e+00
  %4469 = fmul fast float %4468, %4465
  %4470 = icmp eq i32 %4463, 3
  %4471 = select i1 %4470, float 1.000000e+00, float %4469
  %4472 = call float @dx.op.binary.f32(i32 35, float %4009, float %4471)  ; FMax(a,b)
  %4473 = call float @dx.op.unary.f32(i32 7, float %4472)  ; Saturate(value)
  %4474 = fcmp fast une float %4473, 0.000000e+00
  %4475 = fsub fast float -0.000000e+00, %160
  %4476 = fsub fast float -0.000000e+00, %161
  %4477 = fsub fast float -0.000000e+00, %162
  br i1 %4474, label %4478, label %4640

; <label>:4478                                    ; preds = %4457
  %4479 = call float @dx.op.dot3.f32(i32 55, float %4475, float %4476, float %4477, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4480 = fmul fast float %4473, 2.500000e+00
  %4481 = call float @dx.op.unary.f32(i32 7, float %4480)  ; Saturate(value)
  %4482 = fmul fast float %4473, 0x4013FFFFE0000000
  %4483 = fadd fast float %4482, 0xBFFFFFFFE0000000
  %4484 = call float @dx.op.unary.f32(i32 7, float %4483)  ; Saturate(value)
  %4485 = fmul fast float %4473, 0x4004000020000000
  %4486 = fadd fast float %4485, 0xBFF8000040000000
  %4487 = call float @dx.op.unary.f32(i32 7, float %4486)  ; Saturate(value)
  %4488 = call float @dx.op.unary.f32(i32 7, float %4481)  ; Saturate(value)
  %4489 = fmul fast float %4062, 1.000000e+01
  %4490 = call float @dx.op.unary.f32(i32 7, float %4489)  ; Saturate(value)
  %4491 = fmul fast float %4490, 2.000000e+00
  %4492 = fsub fast float 3.000000e+00, %4491
  %4493 = fmul fast float %4490, %4490
  %4494 = fmul fast float %4493, %4492
  %4495 = fsub fast float 1.000000e+00, %4494
  %4496 = fsub fast float 0x3FE3333340000000, %4083
  %4497 = fmul fast float %4496, 0x400AAAAAA0000000
  %4498 = call float @dx.op.unary.f32(i32 7, float %4497)  ; Saturate(value)
  %4499 = fmul fast float %4495, %4498
  %4500 = fmul fast float %4095, 0x3FEA2B8620000000
  %4501 = fmul fast float %4096, 0x3FEA2B8620000000
  %4502 = fmul fast float %4097, 0x3FEA2B8620000000
  %4503 = fadd fast float %4500, 0x3FC81DFBA0000000
  %4504 = fmul fast float %4503, %4095
  %4505 = fadd fast float %4504, 0x3F910E6020000000
  %4506 = fadd fast float %4501, 0x3FC81DFBA0000000
  %4507 = fmul fast float %4506, %4096
  %4508 = fadd fast float %4507, 0x3F910E6020000000
  %4509 = fadd fast float %4502, 0x3FC81DFBA0000000
  %4510 = fmul fast float %4509, %4097
  %4511 = fadd fast float %4510, 0x3F910E6020000000
  %4512 = call float @dx.op.unary.f32(i32 7, float %4505)  ; Saturate(value)
  %4513 = call float @dx.op.unary.f32(i32 7, float %4508)  ; Saturate(value)
  %4514 = call float @dx.op.unary.f32(i32 7, float %4511)  ; Saturate(value)
  %4515 = fsub fast float %4512, %4095
  %4516 = fsub fast float %4513, %4096
  %4517 = fsub fast float %4514, %4097
  %4518 = fmul fast float %4515, %4488
  %4519 = fmul fast float %4518, %4499
  %4520 = fmul fast float %4516, %4488
  %4521 = fmul fast float %4520, %4499
  %4522 = fmul fast float %4517, %4488
  %4523 = fmul fast float %4522, %4499
  %4524 = fadd fast float %4519, %4095
  %4525 = fadd fast float %4521, %4096
  %4526 = fadd fast float %4523, %4097
  %4527 = fmul fast float %4021, %4021
  %4528 = fmul fast float %4527, %4527
  %4529 = fadd fast float %4484, 1.000000e+00
  %4530 = fsub fast float %4529, %4499
  %4531 = call float @dx.op.unary.f32(i32 7, float %4530)  ; Saturate(value)
  %4532 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4533 = call float @dx.op.unary.f32(i32 7, float %4532)  ; Saturate(value)
  %4534 = fsub fast float 1.000000e+00, %4528
  %4535 = call float @dx.op.binary.f32(i32 36, float %4531, float %4534)  ; FMin(a,b)
  %4536 = call float @dx.op.unary.f32(i32 7, float %4487)  ; Saturate(value)
  %4537 = call float @dx.op.binary.f32(i32 35, float %4535, float %4536)  ; FMax(a,b)
  %4538 = fadd fast float %4533, 0xBFE4CCCCC0000000
  %4539 = fmul fast float %4538, 0x4006DB6DA0000000
  %4540 = call float @dx.op.unary.f32(i32 7, float %4539)  ; Saturate(value)
  %4541 = fmul fast float %4540, 2.000000e+00
  %4542 = fsub fast float 3.000000e+00, %4541
  %4543 = bitcast float %4080 to i32
  %4544 = ashr i32 %4543, 1
  %4545 = add nsw i32 %4544, 532487669
  %4546 = bitcast i32 %4545 to float
  %4547 = fsub fast float 1.000000e+00, %4546
  %4548 = bitcast float %4547 to i32
  %4549 = sub nsw i32 2129859010, %4548
  %4550 = bitcast i32 %4549 to float
  %4551 = fmul fast float %4550, 2.000000e+00
  %4552 = bitcast float %4081 to i32
  %4553 = ashr i32 %4552, 1
  %4554 = add nsw i32 %4553, 532487669
  %4555 = bitcast i32 %4554 to float
  %4556 = fsub fast float 1.000000e+00, %4555
  %4557 = bitcast float %4556 to i32
  %4558 = sub nsw i32 2129859010, %4557
  %4559 = bitcast i32 %4558 to float
  %4560 = fmul fast float %4559, 2.000000e+00
  %4561 = bitcast float %4082 to i32
  %4562 = ashr i32 %4561, 1
  %4563 = add nsw i32 %4562, 532487669
  %4564 = bitcast i32 %4563 to float
  %4565 = fsub fast float 1.000000e+00, %4564
  %4566 = bitcast float %4565 to i32
  %4567 = sub nsw i32 2129859010, %4566
  %4568 = bitcast i32 %4567 to float
  %4569 = fmul fast float %4568, 2.000000e+00
  %4570 = fsub fast float 0x4002A9FBE0000000, %4551
  %4571 = fadd fast float %4551, 0x3FD54FDF00000000
  %4572 = bitcast float %4571 to i32
  %4573 = sub nsw i32 2129859010, %4572
  %4574 = bitcast i32 %4573 to float
  %4575 = fmul fast float %4574, %4570
  %4576 = fmul fast float %4575, %4575
  %4577 = fsub fast float 0x4002A9FBE0000000, %4560
  %4578 = fadd fast float %4560, 0x3FD54FDF00000000
  %4579 = bitcast float %4578 to i32
  %4580 = sub nsw i32 2129859010, %4579
  %4581 = bitcast i32 %4580 to float
  %4582 = fmul fast float %4581, %4577
  %4583 = fmul fast float %4582, %4582
  %4584 = fsub fast float 0x4002A9FBE0000000, %4569
  %4585 = fadd fast float %4569, 0x3FD54FDF00000000
  %4586 = bitcast float %4585 to i32
  %4587 = sub nsw i32 2129859010, %4586
  %4588 = bitcast i32 %4587 to float
  %4589 = fmul fast float %4588, %4584
  %4590 = fmul fast float %4589, %4589
  %4591 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4576)  ; FMax(a,b)
  %4592 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4583)  ; FMax(a,b)
  %4593 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4590)  ; FMax(a,b)
  %4594 = fsub fast float 1.000000e+00, %4479
  %4595 = fadd fast float %4594, %4495
  %4596 = call float @dx.op.unary.f32(i32 7, float %4595)  ; Saturate(value)
  %4597 = fsub fast float 1.000000e+00, %4471
  %4598 = fmul fast float %4537, %4597
  %4599 = fmul fast float %4540, %4540
  %4600 = fmul fast float %4599, %4598
  %4601 = fmul fast float %4600, %4542
  %4602 = fmul fast float %4597, 0xBFE99999A0000000
  %4603 = fmul fast float %4602, %4488
  %4604 = fmul fast float %4603, %4499
  %4605 = fadd fast float %4604, 1.000000e+00
  %4606 = fadd fast float %4083, -1.000000e+00
  %4607 = fmul fast float %4605, %4606
  %4608 = fadd fast float %4607, 1.000000e+00
  %4609 = fsub fast float %4591, %4080
  %4610 = fsub fast float %4592, %4081
  %4611 = fsub fast float %4593, %4082
  %4612 = fmul fast float %4601, %4609
  %4613 = fmul fast float %4601, %4610
  %4614 = fmul fast float %4601, %4611
  %4615 = fadd fast float %4612, %4080
  %4616 = fadd fast float %4613, %4081
  %4617 = fadd fast float %4614, %4082
  %4618 = fsub fast float %84, %4037
  %4619 = fsub fast float %85, %4038
  %4620 = fsub fast float %86, %4039
  %4621 = fmul fast float %4601, %4618
  %4622 = fmul fast float %4601, %4619
  %4623 = fmul fast float %4601, %4620
  %4624 = fadd fast float %4621, %4037
  %4625 = fadd fast float %4622, %4038
  %4626 = fadd fast float %4623, %4039
  %4627 = fmul fast float %4601, %4596
  %4628 = call float @dx.op.unary.f32(i32 7, float %4608)  ; Saturate(value)
  %4629 = fsub fast float 1.000000e+00, %4628
  %4630 = fmul fast float %4627, %4629
  %4631 = fadd fast float %4630, %4628
  %4632 = fsub fast float 1.000000e+00, %4021
  %4633 = fmul fast float %4601, %4632
  %4634 = fadd fast float %4633, %4021
  %4635 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float %4624, float %4625, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %4636 = call float @dx.op.unary.f32(i32 25, float %4635)  ; Rsqrt(value)
  %4637 = fmul fast float %4624, %4636
  %4638 = fmul fast float %4625, %4636
  %4639 = fmul fast float %4626, %4636
  br label %4640

; <label>:4640                                    ; preds = %4478, %4457
  %4641 = phi float [ %4615, %4478 ], [ %4080, %4457 ]
  %4642 = phi float [ %4616, %4478 ], [ %4081, %4457 ]
  %4643 = phi float [ %4617, %4478 ], [ %4082, %4457 ]
  %4644 = phi float [ %4637, %4478 ], [ %4037, %4457 ]
  %4645 = phi float [ %4638, %4478 ], [ %4038, %4457 ]
  %4646 = phi float [ %4639, %4478 ], [ %4039, %4457 ]
  %4647 = phi float [ %4524, %4478 ], [ %4095, %4457 ]
  %4648 = phi float [ %4525, %4478 ], [ %4096, %4457 ]
  %4649 = phi float [ %4526, %4478 ], [ %4097, %4457 ]
  %4650 = phi float [ %4631, %4478 ], [ %4083, %4457 ]
  %4651 = phi float [ %4634, %4478 ], [ %4021, %4457 ]
  %4652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4652, 2
  %4654 = extractvalue %dx.types.CBufRet.f32 %4652, 3
  %4655 = fmul fast float %4653, %77
  %4656 = fmul fast float %4654, %78
  %4657 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4658 = extractvalue %dx.types.CBufRet.f32 %4657, 0
  %4659 = extractvalue %dx.types.CBufRet.f32 %4657, 1
  %4660 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4655, float %4656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4661 = extractvalue %dx.types.ResRet.f32 %4660, 0
  %4662 = fmul fast float %4661, %4659
  %4663 = call float @dx.op.unary.f32(i32 7, float %4662)  ; Saturate(value)
  %4664 = fadd fast float %4663, -1.000000e+00
  %4665 = fmul fast float %4664, %4658
  %4666 = fadd fast float %4665, 1.000000e+00
  %4667 = select i1 %214, float 0.000000e+00, float %4643
  %4668 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %4475, float %4476, float %4477)  ; Dot3(ax,ay,az,bx,by,bz)
  %4669 = call float @dx.op.unary.f32(i32 7, float %4668)  ; Saturate(value)
  %4670 = call float @dx.op.dot3.f32(i32 55, float %160, float %161, float %162, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %4671 = fmul fast float %4670, 2.000000e+00
  %4672 = fmul fast float %4671, %4644
  %4673 = fmul fast float %4671, %4645
  %4674 = fmul fast float %4671, %4646
  %4675 = fsub fast float %160, %4672
  %4676 = fsub fast float %161, %4673
  %4677 = fsub fast float %162, %4674
  %4678 = call float @dx.op.binary.f32(i32 36, float %4651, float %4666)  ; FMin(a,b)
  %4679 = fsub fast float 1.000000e+00, %4678
  %4680 = bitcast float %4679 to i32
  %4681 = ashr i32 %4680, 1
  %4682 = add nsw i32 %4681, 532487669
  %4683 = bitcast i32 %4682 to float
  %4684 = fsub fast float 1.000000e+00, %4650
  %4685 = call float @dx.op.binary.f32(i32 35, float %4684, float 0x3F847AE140000000)  ; FMax(a,b)
  %4686 = fmul fast float %4685, %4685
  %4687 = fmul fast float %4686, %4686
  %4688 = call float @dx.op.unary.f32(i32 7, float %4669)  ; Saturate(value)
  %4689 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4683, float %4687, float %4688, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4690 = extractvalue %dx.types.ResRet.f32 %4689, 0
  %4691 = fsub fast float 1.000000e+00, %4651
  %4692 = bitcast float %4691 to i32
  %4693 = sub nsw i32 2129859010, %4692
  %4694 = bitcast i32 %4693 to float
  %4695 = fsub fast float 1.000000e+00, %54
  %4696 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4697 = call float @dx.op.binary.f32(i32 35, float %4696, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4698 = fdiv fast float %4695, %4697
  %4699 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4700 = call float @dx.op.unary.f32(i32 7, float %4699)  ; Saturate(value)
  %4701 = fmul fast float %4700, 5.000000e-01
  %4702 = fadd fast float %4701, 5.000000e-01
  %4703 = fmul fast float %4702, %54
  %4704 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4705 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4706 = fmul fast float %4705, %4698
  %4707 = fadd fast float %4703, %4706
  %4708 = fsub fast float 5.000000e-01, %4701
  %4709 = fmul fast float %4708, %4647
  %4710 = fmul fast float %4708, %4648
  %4711 = fmul fast float %4708, %4649
  %4712 = fadd fast float %4707, %4709
  %4713 = fadd fast float %4707, %4710
  %4714 = fadd fast float %4707, %4711
  %4715 = call float @dx.op.dot3.f32(i32 55, float %4675, float %4676, float %4677, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4716 = call float @dx.op.unary.f32(i32 7, float %4715)  ; Saturate(value)
  %4717 = fmul fast float %4716, 5.000000e-01
  %4718 = fadd fast float %4717, 5.000000e-01
  %4719 = fmul fast float %4718, %54
  %4720 = call float @dx.op.dot3.f32(i32 55, float %4675, float %4676, float %4677, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4721 = call float @dx.op.unary.f32(i32 7, float %4720)  ; Saturate(value)
  %4722 = fmul fast float %4721, %4698
  %4723 = fadd fast float %4719, %4722
  %4724 = fsub fast float 5.000000e-01, %4717
  %4725 = fmul fast float %4724, %4647
  %4726 = fmul fast float %4724, %4648
  %4727 = fmul fast float %4724, %4649
  %4728 = fadd fast float %4723, %4725
  %4729 = fadd fast float %4723, %4726
  %4730 = fadd fast float %4723, %4727
  %4731 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4732 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4733 = extractvalue %dx.types.CBufRet.f32 %4732, 0
  %4734 = call float @dx.op.binary.f32(i32 36, float %4647, float %4733)  ; FMin(a,b)
  %4735 = fmul fast float %4734, %4679
  %4736 = fsub fast float 1.000000e+00, %4735
  %4737 = bitcast float %4736 to i32
  %4738 = sub nsw i32 2129859010, %4737
  %4739 = bitcast i32 %4738 to float
  %4740 = call float @dx.op.binary.f32(i32 36, float %4648, float %4733)  ; FMin(a,b)
  %4741 = fmul fast float %4740, %4679
  %4742 = fsub fast float 1.000000e+00, %4741
  %4743 = bitcast float %4742 to i32
  %4744 = sub nsw i32 2129859010, %4743
  %4745 = bitcast i32 %4744 to float
  %4746 = call float @dx.op.binary.f32(i32 36, float %4649, float %4733)  ; FMin(a,b)
  %4747 = fmul fast float %4746, %4679
  %4748 = fsub fast float 1.000000e+00, %4747
  %4749 = bitcast float %4748 to i32
  %4750 = sub nsw i32 2129859010, %4749
  %4751 = bitcast i32 %4750 to float
  %4752 = fmul fast float %4678, %55
  %4753 = fmul fast float %4752, %4712
  %4754 = fmul fast float %4753, %4739
  %4755 = fmul fast float %4678, %56
  %4756 = fmul fast float %4755, %4713
  %4757 = fmul fast float %4756, %4745
  %4758 = fmul fast float %4678, %57
  %4759 = fmul fast float %4758, %4714
  %4760 = fmul fast float %4759, %4751
  %4761 = call float @dx.op.binary.f32(i32 36, float %4641, float %4733)  ; FMin(a,b)
  %4762 = fmul fast float %4761, %4679
  %4763 = fsub fast float 1.000000e+00, %4762
  %4764 = bitcast float %4763 to i32
  %4765 = sub nsw i32 2129859010, %4764
  %4766 = bitcast i32 %4765 to float
  %4767 = call float @dx.op.binary.f32(i32 36, float %4642, float %4733)  ; FMin(a,b)
  %4768 = fmul fast float %4767, %4679
  %4769 = fsub fast float 1.000000e+00, %4768
  %4770 = bitcast float %4769 to i32
  %4771 = sub nsw i32 2129859010, %4770
  %4772 = bitcast i32 %4771 to float
  %4773 = call float @dx.op.binary.f32(i32 36, float %4667, float %4733)  ; FMin(a,b)
  %4774 = fmul fast float %4773, %4679
  %4775 = fsub fast float 1.000000e+00, %4774
  %4776 = bitcast float %4775 to i32
  %4777 = sub nsw i32 2129859010, %4776
  %4778 = bitcast i32 %4777 to float
  %4779 = fmul fast float %4752, %4728
  %4780 = fmul fast float %4779, %4766
  %4781 = fmul fast float %4755, %4729
  %4782 = fmul fast float %4781, %4772
  %4783 = fmul fast float %4758, %4730
  %4784 = fmul fast float %4783, %4778
  %4785 = call float @dx.op.dot3.f32(i32 55, float %4754, float %4757, float %4760, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4786 = select i1 %214, float 0.000000e+00, float %4754
  %4787 = select i1 %214, float %4785, float %4757
  %4788 = select i1 %214, float 0.000000e+00, float %4760
  %4789 = call float @dx.op.dot3.f32(i32 55, float %4780, float %4782, float %4784, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4790 = select i1 %214, float 0.000000e+00, float %4780
  %4791 = select i1 %214, float %4789, float %4782
  %4792 = select i1 %214, float 0.000000e+00, float %4784
  %4793 = fmul fast float %4669, 9.843750e-01
  %4794 = fmul fast float %4650, 9.843750e-01
  %4795 = fadd fast float %4793, 7.812500e-03
  %4796 = fadd fast float %4794, 7.812500e-03
  %4797 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4795, float %4796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4798 = extractvalue %dx.types.ResRet.f32 %4797, 2
  %4799 = extractvalue %dx.types.ResRet.f32 %4797, 3
  %4800 = fmul fast float %4798, %4641
  %4801 = fmul fast float %4798, %4642
  %4802 = fmul fast float %4798, %4667
  %4803 = fadd fast float %4800, %4799
  %4804 = fadd fast float %4801, %4799
  %4805 = fadd fast float %4802, %4799
  %4806 = fcmp fast ogt float %4014, 0.000000e+00
  br i1 %4806, label %4807, label %4833

; <label>:4807                                    ; preds = %4640
  %4808 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4014, float %4669, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4809 = extractvalue %dx.types.ResRet.f32 %4808, 0
  %4810 = extractvalue %dx.types.ResRet.f32 %4808, 1
  %4811 = extractvalue %dx.types.ResRet.f32 %4808, 2
  %4812 = fadd fast float %4809, -5.000000e-01
  %4813 = fadd fast float %4810, -5.000000e-01
  %4814 = fadd fast float %4811, -5.000000e-01
  %4815 = fsub fast float 1.000000e+00, %4641
  %4816 = fsub fast float 1.000000e+00, %4642
  %4817 = fsub fast float 1.000000e+00, %4667
  %4818 = fmul fast float %4641, 4.000000e+00
  %4819 = fmul fast float %4818, %4815
  %4820 = fmul fast float %4819, %4812
  %4821 = fmul fast float %4642, 4.000000e+00
  %4822 = fmul fast float %4821, %4816
  %4823 = fmul fast float %4822, %4813
  %4824 = fmul fast float %4667, 4.000000e+00
  %4825 = fmul fast float %4824, %4817
  %4826 = fmul fast float %4825, %4814
  %4827 = fadd fast float %4820, %4803
  %4828 = fadd fast float %4823, %4804
  %4829 = fadd fast float %4826, %4805
  %4830 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4831 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4832 = call float @dx.op.unary.f32(i32 7, float %4829)  ; Saturate(value)
  br label %4833

; <label>:4833                                    ; preds = %4807, %4640
  %4834 = phi float [ %4830, %4807 ], [ %4803, %4640 ]
  %4835 = phi float [ %4831, %4807 ], [ %4804, %4640 ]
  %4836 = phi float [ %4832, %4807 ], [ %4805, %4640 ]
  %4837 = call float @dx.op.binary.f32(i32 35, float %4835, float %4836)  ; FMax(a,b)
  %4838 = call float @dx.op.binary.f32(i32 35, float %4834, float %4837)  ; FMax(a,b)
  %4839 = fsub fast float 1.000000e+00, %4838
  %4840 = fmul fast float %4838, %4650
  %4841 = fadd fast float %4840, %4650
  %4842 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4843 = extractvalue %dx.types.CBufRet.f32 %4842, 0
  %4844 = extractvalue %dx.types.CBufRet.f32 %4842, 1
  %4845 = extractvalue %dx.types.CBufRet.f32 %4842, 2
  %4846 = extractvalue %dx.types.CBufRet.f32 %4842, 3
  %4847 = fmul fast float %4841, %4843
  %4848 = fadd fast float %4847, %4844
  %4849 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4850 = fmul fast float %4845, %4841
  %4851 = fadd fast float %4850, %4846
  %4852 = call float @dx.op.unary.f32(i32 7, float %4851)  ; Saturate(value)
  %4853 = fsub fast float 1.000000e+00, %4690
  %4854 = fadd fast float %4853, %4852
  %4855 = call float @dx.op.unary.f32(i32 7, float %4854)  ; Saturate(value)
  %4856 = fcmp fast olt float %4855, 1.000000e+00
  br i1 %4856, label %4857, label %5712

; <label>:4857                                    ; preds = %4833
  %4858 = fcmp fast olt float %4849, 1.000000e+00
  %4859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4860 = extractvalue %dx.types.CBufRet.f32 %4859, 0
  %4861 = fcmp fast ogt float %4860, 0.000000e+00
  %4862 = or i1 %4858, %4861
  %4863 = or i1 %4858, %4861
  %4864 = xor i1 %4863, true
  %4865 = zext i1 %4864 to i32
  br i1 %4862, label %4866, label %5109

; <label>:4866                                    ; preds = %4857
  %4867 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4868 = extractvalue %dx.types.CBufRet.f32 %4867, 0
  %4869 = extractvalue %dx.types.CBufRet.f32 %4867, 1
  %4870 = extractvalue %dx.types.CBufRet.f32 %4867, 2
  %4871 = extractvalue %dx.types.CBufRet.f32 %4867, 3
  %4872 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4873 = extractvalue %dx.types.CBufRet.f32 %4872, 0
  %4874 = extractvalue %dx.types.CBufRet.f32 %4872, 1
  %4875 = extractvalue %dx.types.CBufRet.f32 %4872, 2
  %4876 = extractvalue %dx.types.CBufRet.f32 %4872, 3
  %4877 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4878 = extractvalue %dx.types.CBufRet.f32 %4877, 0
  %4879 = extractvalue %dx.types.CBufRet.f32 %4877, 1
  %4880 = extractvalue %dx.types.CBufRet.f32 %4877, 2
  %4881 = extractvalue %dx.types.CBufRet.f32 %4877, 3
  %4882 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4883 = extractvalue %dx.types.CBufRet.f32 %4882, 0
  %4884 = extractvalue %dx.types.CBufRet.f32 %4882, 1
  %4885 = extractvalue %dx.types.CBufRet.f32 %4882, 2
  %4886 = extractvalue %dx.types.CBufRet.f32 %4882, 3
  %4887 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4888 = extractvalue %dx.types.CBufRet.f32 %4887, 0
  %4889 = extractvalue %dx.types.CBufRet.f32 %4887, 1
  %4890 = extractvalue %dx.types.CBufRet.f32 %4887, 2
  %4891 = extractvalue %dx.types.CBufRet.f32 %4887, 3
  %4892 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4893 = extractvalue %dx.types.CBufRet.f32 %4892, 0
  %4894 = extractvalue %dx.types.CBufRet.f32 %4892, 1
  %4895 = extractvalue %dx.types.CBufRet.f32 %4892, 2
  %4896 = extractvalue %dx.types.CBufRet.f32 %4892, 3
  %4897 = call float @dx.op.dot3.f32(i32 55, float %4893, float %4894, float %4895, float %4675, float %4676, float %4677)  ; Dot3(ax,ay,az,bx,by,bz)
  %4898 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4899 = call float @dx.op.unary.f32(i32 6, float %4898)  ; FAbs(value)
  %4900 = fmul fast float %4899, 8.000000e+00
  %4901 = fadd fast float %4900, -6.000000e+00
  %4902 = call float @dx.op.unary.f32(i32 7, float %4901)  ; Saturate(value)
  %4903 = fmul fast float %4897, 8.000000e+00
  %4904 = fmul fast float %4903, %4860
  %4905 = call float @dx.op.unary.f32(i32 7, float %4904)  ; Saturate(value)
  %4906 = fcmp fast ogt float %4905, 0.000000e+00
  br i1 %4906, label %4907, label %5084, !dx.controlflow.hints !82

; <label>:4907                                    ; preds = %4866
  %4908 = extractvalue %dx.types.CBufRet.f32 %4859, 1
  %4909 = extractvalue %dx.types.CBufRet.f32 %4859, 2
  %4910 = fsub fast float %4908, %4909
  %4911 = fmul fast float %4910, %4650
  %4912 = fadd fast float %4911, %4909
  %4913 = fmul fast float %227, 2.000000e+00
  %4914 = fmul fast float %228, 2.000000e+00
  %4915 = fadd fast float %4913, -1.000000e+00
  %4916 = fadd fast float %4914, -1.000000e+00
  %4917 = fmul fast float %4912, %4915
  %4918 = fmul fast float %4912, %4916
  %4919 = fadd fast float %4917, %77
  %4920 = fadd fast float %4918, %78
  %4921 = fmul fast float %4919, %4653
  %4922 = fmul fast float %4920, %4654
  %4923 = fadd fast float %4650, 0xBFE3333340000000
  %4924 = fmul fast float %4923, 0x4004000020000000
  %4925 = fsub fast float 1.000000e+00, %4924
  %4926 = call float @dx.op.unary.f32(i32 7, float %4925)  ; Saturate(value)
  %4927 = fmul fast float %4926, 3.000000e+00
  %4928 = fadd fast float %4927, %227
  %4929 = call float @dx.op.unary.f32(i32 27, float %4928)  ; Round_ni(value)
  %4930 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4921, float %4922, float %4929, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4931 = extractvalue %dx.types.ResRet.f32 %4930, 0
  %4932 = fcmp fast une float %4931, 0xFFF0000000000000
  %4933 = fcmp fast une float %4931, 0x7FF0000000000000
  %4934 = and i1 %4932, %4933
  %4935 = fcmp fast olt float %4931, 0.000000e+00
  %4936 = call float @dx.op.unary.f32(i32 6, float %4931)  ; FAbs(value)
  %4937 = fsub fast float 1.000000e+00, %4936
  %4938 = select i1 %4934, float 1.000000e+00, float 0.000000e+00
  %4939 = fmul fast float %4938, %4905
  %4940 = fcmp fast ogt float %4939, 0.000000e+00
  br i1 %4940, label %4941, label %5084, !dx.controlflow.hints !83

; <label>:4941                                    ; preds = %4907
  %4942 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4943 = extractvalue %dx.types.CBufRet.f32 %4942, 0
  %4944 = extractvalue %dx.types.CBufRet.f32 %4942, 1
  %4945 = extractvalue %dx.types.CBufRet.f32 %4942, 2
  %4946 = select i1 %4935, float 0.000000e+00, float %4943
  %4947 = select i1 %4935, float 0.000000e+00, float %4944
  %4948 = select i1 %4935, float 0.000000e+00, float %4945
  %4949 = select i1 %4935, float %4868, float %4883
  %4950 = select i1 %4935, float %4873, float %4888
  %4951 = select i1 %4935, float %4878, float %4893
  %4952 = select i1 %4935, float %4869, float %4884
  %4953 = select i1 %4935, float %4874, float %4889
  %4954 = select i1 %4935, float %4879, float %4894
  %4955 = select i1 %4935, float %4870, float %4885
  %4956 = select i1 %4935, float %4875, float %4890
  %4957 = select i1 %4935, float %4880, float %4895
  %4958 = select i1 %4935, float %4871, float %4886
  %4959 = select i1 %4935, float %4876, float %4891
  %4960 = select i1 %4935, float %4881, float %4896
  %4961 = fadd fast float %4946, %140
  %4962 = fadd fast float %4947, %141
  %4963 = fadd fast float %4948, %142
  %4964 = fmul fast float %4961, %4949
  %4965 = call float @dx.op.tertiary.f32(i32 46, float %4962, float %4952, float %4964)  ; FMad(a,b,c)
  %4966 = call float @dx.op.tertiary.f32(i32 46, float %4963, float %4955, float %4965)  ; FMad(a,b,c)
  %4967 = fadd fast float %4966, %4958
  %4968 = fmul fast float %4961, %4950
  %4969 = call float @dx.op.tertiary.f32(i32 46, float %4962, float %4953, float %4968)  ; FMad(a,b,c)
  %4970 = call float @dx.op.tertiary.f32(i32 46, float %4963, float %4956, float %4969)  ; FMad(a,b,c)
  %4971 = fadd fast float %4970, %4959
  %4972 = fmul fast float %4961, %4951
  %4973 = call float @dx.op.tertiary.f32(i32 46, float %4962, float %4954, float %4972)  ; FMad(a,b,c)
  %4974 = call float @dx.op.tertiary.f32(i32 46, float %4963, float %4957, float %4973)  ; FMad(a,b,c)
  %4975 = fadd fast float %4974, %4960
  %4976 = fdiv fast float 1.000000e+00, %4975
  %4977 = fmul fast float %4976, %4967
  %4978 = fmul fast float %4976, %4971
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4982 = fmul fast float %4977, %4980
  %4983 = fmul fast float %4978, %4981
  %4984 = extractvalue %dx.types.CBufRet.f32 %4979, 2
  %4985 = extractvalue %dx.types.CBufRet.f32 %4979, 3
  %4986 = fadd fast float %4982, %4984
  %4987 = fadd fast float %4983, %4985
  %4988 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4989 = extractvalue %dx.types.CBufRet.f32 %4988, 3
  %4990 = fmul fast float %4989, %4675
  %4991 = fmul fast float %4989, %4676
  %4992 = fmul fast float %4989, %4677
  %4993 = fadd fast float %4990, %4961
  %4994 = fadd fast float %4991, %4962
  %4995 = fadd fast float %4992, %4963
  %4996 = fmul fast float %4993, %4949
  %4997 = call float @dx.op.tertiary.f32(i32 46, float %4994, float %4952, float %4996)  ; FMad(a,b,c)
  %4998 = call float @dx.op.tertiary.f32(i32 46, float %4995, float %4955, float %4997)  ; FMad(a,b,c)
  %4999 = fadd fast float %4998, %4958
  %5000 = fmul fast float %4993, %4950
  %5001 = call float @dx.op.tertiary.f32(i32 46, float %4994, float %4953, float %5000)  ; FMad(a,b,c)
  %5002 = call float @dx.op.tertiary.f32(i32 46, float %4995, float %4956, float %5001)  ; FMad(a,b,c)
  %5003 = fadd fast float %5002, %4959
  %5004 = fmul fast float %4993, %4951
  %5005 = call float @dx.op.tertiary.f32(i32 46, float %4994, float %4954, float %5004)  ; FMad(a,b,c)
  %5006 = call float @dx.op.tertiary.f32(i32 46, float %4995, float %4957, float %5005)  ; FMad(a,b,c)
  %5007 = fadd fast float %5006, %4960
  %5008 = fdiv fast float 1.000000e+00, %5007
  %5009 = fmul fast float %5008, %4999
  %5010 = fmul fast float %5008, %5003
  %5011 = fmul fast float %4986, 2.000000e+00
  %5012 = fadd fast float %5011, -1.000000e+00
  %5013 = call float @dx.op.unary.f32(i32 6, float %5012)  ; FAbs(value)
  %5014 = fmul fast float %5013, 5.000000e+00
  %5015 = fadd fast float %5014, -4.000000e+00
  %5016 = call float @dx.op.unary.f32(i32 7, float %5015)  ; Saturate(value)
  %5017 = fmul fast float %5016, %4902
  %5018 = fsub fast float %4977, %5009
  %5019 = fmul fast float %4980, %5018
  %5020 = fmul fast float %5017, %5019
  %5021 = fsub fast float %5009, %4977
  %5022 = fmul fast float %4980, %5021
  %5023 = fadd fast float %5022, %5020
  %5024 = fsub fast float %5010, %4978
  %5025 = fmul fast float %4981, %5024
  %5026 = fmul fast float %5023, %4937
  %5027 = fmul fast float %5025, %4937
  %5028 = fadd fast float %5026, %4986
  %5029 = fadd fast float %5027, %4987
  %5030 = fsub fast float %5008, %4976
  %5031 = fmul fast float %5030, %4937
  %5032 = fadd fast float %5031, %4976
  %5033 = fdiv fast float 1.000000e+00, %5032
  %5034 = fadd fast float %4650, -1.000000e+00
  %5035 = fsub fast float %5033, %4975
  %5036 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5037 = extractvalue %dx.types.CBufRet.f32 %5036, 2
  %5038 = fmul fast float %5037, %5033
  %5039 = fdiv fast float 1.600000e+02, %5038
  %5040 = fmul fast float %5034, %5034
  %5041 = fmul fast float %5040, 0xBFB5B17960000000
  %5042 = fmul fast float %5041, %5035
  %5043 = fmul fast float %5042, %5039
  %5044 = call float @dx.op.unary.f32(i32 21, float %5043)  ; Exp(value)
  %5045 = fmul fast float %5044, 0x3FF04B2960000000
  %5046 = fsub fast float 0x3FF04B2960000000, %5045
  %5047 = call float @dx.op.unary.f32(i32 7, float %5046)  ; Saturate(value)
  %5048 = fmul fast float %5047, 4.000000e+00
  %5049 = fadd fast float %227, -5.000000e-01
  %5050 = fadd fast float %228, -5.000000e-01
  %5051 = fmul fast float %5047, 0x3FBEB851E0000000
  %5052 = call float @dx.op.unary.f32(i32 7, float %5051)  ; Saturate(value)
  %5053 = fmul fast float %5052, %5049
  %5054 = fmul fast float %5052, %5050
  %5055 = fadd fast float %5028, %5053
  %5056 = fadd fast float %5029, %5054
  %5057 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5055, float %5056, float undef, float undef, i32 0, i32 0, i32 undef, float %5048)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5058 = extractvalue %dx.types.ResRet.f32 %5057, 0
  %5059 = extractvalue %dx.types.ResRet.f32 %5057, 1
  %5060 = extractvalue %dx.types.ResRet.f32 %5057, 2
  %5061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5062 = extractvalue %dx.types.CBufRet.f32 %5061, 2
  %5063 = fmul fast float %5062, %5058
  %5064 = fmul fast float %5062, %5059
  %5065 = fmul fast float %5062, %5060
  %5066 = select i1 %214, float 0.000000e+00, float %5064
  %5067 = select i1 %214, float 0.000000e+00, float %5065
  %5068 = fmul fast float %5055, 2.000000e+00
  %5069 = fmul fast float %5056, 2.000000e+00
  %5070 = fadd fast float %5068, -1.000000e+00
  %5071 = fadd fast float %5069, -1.000000e+00
  %5072 = fmul fast float %5070, %5070
  %5073 = fsub fast float 1.000000e+00, %5072
  %5074 = call float @dx.op.unary.f32(i32 7, float %5073)  ; Saturate(value)
  %5075 = fsub fast float 1.000000e+00, %5074
  %5076 = fmul fast float %5075, %4902
  %5077 = fadd fast float %5076, %5074
  %5078 = fmul fast float %5071, %5071
  %5079 = fsub fast float 1.000000e+00, %5078
  %5080 = call float @dx.op.unary.f32(i32 7, float %5079)  ; Saturate(value)
  %5081 = fmul fast float %5077, %5080
  %5082 = call float @dx.op.unary.f32(i32 7, float %5081)  ; Saturate(value)
  %5083 = fmul fast float %5082, %4939
  br label %5084

; <label>:5084                                    ; preds = %4941, %4907, %4866
  %5085 = phi float [ %5063, %4941 ], [ 0.000000e+00, %4907 ], [ 0.000000e+00, %4866 ]
  %5086 = phi float [ %5066, %4941 ], [ 0.000000e+00, %4907 ], [ 0.000000e+00, %4866 ]
  %5087 = phi float [ %5067, %4941 ], [ 0.000000e+00, %4907 ], [ 0.000000e+00, %4866 ]
  %5088 = phi float [ %5083, %4941 ], [ 0.000000e+00, %4907 ], [ 0.000000e+00, %4866 ]
  %5089 = fcmp fast olt float %5088, 1.000000e+00
  %5090 = or i1 %5089, %4864
  %5091 = zext i1 %5090 to i32
  %5092 = fmul fast float %5088, %4849
  %5093 = fsub fast float %5088, %5092
  %5094 = fsub fast float 1.000000e+00, %4855
  %5095 = fmul fast float %5093, %5094
  %5096 = fadd fast float %5095, %4855
  %5097 = fsub fast float %5096, %5093
  %5098 = call float @dx.op.unary.f32(i32 7, float %5097)  ; Saturate(value)
  %5099 = fmul fast float %5098, %4790
  %5100 = fmul fast float %5098, %4791
  %5101 = fmul fast float %5098, %4792
  %5102 = fsub fast float -0.000000e+00, %5096
  %5103 = fmul fast float %5093, %5085
  %5104 = fmul fast float %5093, %5086
  %5105 = fmul fast float %5093, %5087
  %5106 = fadd fast float %5103, %5099
  %5107 = fadd fast float %5104, %5100
  %5108 = fadd fast float %5105, %5101
  br label %5109

; <label>:5109                                    ; preds = %5084, %4857
  %5110 = phi float [ %4855, %4857 ], [ %5102, %5084 ]
  %5111 = phi float [ %4790, %4857 ], [ %5106, %5084 ]
  %5112 = phi float [ %4791, %4857 ], [ %5107, %5084 ]
  %5113 = phi float [ %4792, %4857 ], [ %5108, %5084 ]
  %5114 = phi i32 [ %4865, %4857 ], [ %5091, %5084 ]
  %5115 = icmp eq i32 %5114, 0
  br i1 %5115, label %5712, label %5116

; <label>:5116                                    ; preds = %5109
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 2
  %5119 = extractvalue %dx.types.CBufRet.f32 %5117, 3
  %5120 = fmul fast float %5118, %77
  %5121 = fmul fast float %5119, %78
  %5122 = fptoui float %5120 to i32
  %5123 = fptoui float %5121 to i32
  %5124 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5125 = extractvalue %dx.types.CBufRet.f32 %5124, 0
  %5126 = extractvalue %dx.types.CBufRet.f32 %5124, 2
  %5127 = extractvalue %dx.types.CBufRet.f32 %5124, 3
  %5128 = fadd fast float %72, -4.000000e+00
  %5129 = call float @dx.op.binary.f32(i32 35, float %5128, float 0.000000e+00)  ; FMax(a,b)
  %5130 = fadd fast float %5129, %5125
  %5131 = fmul fast float %5130, %5126
  %5132 = call float @dx.op.unary.f32(i32 23, float %5131)  ; Log(value)
  %5133 = fmul fast float %5132, %5127
  %5134 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5135 = extractvalue %dx.types.CBufRet.f32 %5134, 2
  %5136 = fmul fast float %5133, %5135
  %5137 = call float @dx.op.unary.f32(i32 7, float %5136)  ; Saturate(value)
  %5138 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5139 = extractvalue %dx.types.CBufRet.i32 %5138, 1
  %5140 = add i32 %5139, -1
  %5141 = uitofp i32 %5139 to float
  %5142 = fmul fast float %5141, %5137
  %5143 = fptoui float %5142 to i32
  %5144 = call i32 @dx.op.binary.i32(i32 40, i32 %5143, i32 %5140)  ; UMin(a,b)
  %5145 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5146 = extractvalue %dx.types.CBufRet.i32 %5145, 2
  %5147 = extractvalue %dx.types.CBufRet.i32 %5145, 3
  %5148 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5123, i32 %5146, i32 %5122)  ; UMad(a,b,c)
  %5149 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5144, i32 %5147, i32 %5148)  ; UMad(a,b,c)
  %5150 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %5151 = fptoui float %5150 to i32
  %5152 = lshr i32 %5151, 5
  %5153 = call i32 @dx.op.binary.i32(i32 40, i32 %5152, i32 8191)  ; UMin(a,b)
  %5154 = fcmp fast ogt float %4467, 0.000000e+00
  %5155 = fcmp fast ogt float %4677, 0.000000e+00
  %5156 = and i1 %5155, %5154
  br i1 %5156, label %5157, label %5186

; <label>:5157                                    ; preds = %5116
  %5158 = call float @dx.op.dot3.f32(i32 55, float %4675, float %4676, float %4677, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5159 = call float @dx.op.binary.f32(i32 35, float %5158, float -1.000000e+00)  ; FMax(a,b)
  %5160 = call float @dx.op.binary.f32(i32 36, float %5159, float 1.000000e+00)  ; FMin(a,b)
  %5161 = fmul fast float %5160, %5160
  %5162 = fsub fast float 1.000000e+00, %5161
  %5163 = fmul fast float %5162, 0x3FFC6E2300000000
  %5164 = fsub fast float 1.000000e+00, %5163
  %5165 = fcmp fast ogt float %5164, 0.000000e+00
  %5166 = call float @dx.op.unary.f32(i32 24, float %5164)  ; Sqrt(value)
  %5167 = fsub fast float 1.000000e+00, %5166
  %5168 = call float @dx.op.unary.f32(i32 23, float %5167)  ; Log(value)
  %5169 = fmul fast float %5168, 5.000000e+00
  %5170 = call float @dx.op.unary.f32(i32 21, float %5169)  ; Exp(value)
  %5171 = fmul fast float %5170, 0x3FEF591A60000000
  %5172 = fadd fast float %5171, 0x3F94DCB540000000
  %5173 = select i1 %5165, float %5172, float 1.000000e+00
  %5174 = fcmp fast oge float %5173, 1.000000e+00
  %5175 = fmul fast float %5158, 2.000000e+00
  %5176 = fadd fast float %5175, %4677
  %5177 = select i1 %5174, float %5176, float %4677
  %5178 = fsub fast float %5177, %4677
  %5179 = fmul fast float %5178, %4467
  %5180 = fadd fast float %5179, %4677
  %5181 = call float @dx.op.dot3.f32(i32 55, float %4675, float %4676, float %5180, float %4675, float %4676, float %5180)  ; Dot3(ax,ay,az,bx,by,bz)
  %5182 = call float @dx.op.unary.f32(i32 25, float %5181)  ; Rsqrt(value)
  %5183 = fmul fast float %5182, %4675
  %5184 = fmul fast float %5182, %4676
  %5185 = fmul fast float %5180, %5182
  br label %5186

; <label>:5186                                    ; preds = %5157, %5116
  %5187 = phi float [ %5183, %5157 ], [ %4675, %5116 ]
  %5188 = phi float [ %5184, %5157 ], [ %4676, %5116 ]
  %5189 = phi float [ %5185, %5157 ], [ %4677, %5116 ]
  %5190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5191 = extractvalue %dx.types.CBufRet.i32 %5190, 2
  %5192 = add nsw i32 %5191, -1
  %5193 = call i32 @dx.op.binary.i32(i32 37, i32 %5192, i32 0)  ; IMax(a,b)
  %5194 = shl i32 %5153, 2
  %5195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5194, i32 undef)  ; BufferLoad(srv,index,wot)
  %5196 = extractvalue %dx.types.ResRet.i32 %5195, 0
  %5197 = lshr i32 %5196, 16
  %5198 = and i32 %5196, 65535
  %5199 = lshr i32 %5196, 21
  %5200 = lshr i32 %5198, 5
  %5201 = call i32 @dx.op.binary.i32(i32 40, i32 %5200, i32 %5193)  ; UMin(a,b)
  %5202 = icmp ugt i32 %5199, %5201
  br i1 %5202, label %5584, label %5203

; <label>:5203                                    ; preds = %5186
  br label %5204

; <label>:5204                                    ; preds = %5573, %5203
  %5205 = phi float [ %5574, %5573 ], [ 0.000000e+00, %5203 ]
  %5206 = phi float [ %5575, %5573 ], [ 0.000000e+00, %5203 ]
  %5207 = phi float [ %5576, %5573 ], [ 0.000000e+00, %5203 ]
  %5208 = phi float [ %5577, %5573 ], [ 1.000000e+00, %5203 ]
  %5209 = phi i32 [ %5581, %5573 ], [ %5199, %5203 ]
  %5210 = phi float [ %5578, %5573 ], [ 0.000000e+00, %5203 ]
  %5211 = phi float [ %5579, %5573 ], [ 0.000000e+00, %5203 ]
  %5212 = phi float [ %5580, %5573 ], [ 0.000000e+00, %5203 ]
  %5213 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5214 = extractvalue %dx.types.CBufRet.i32 %5213, 2
  %5215 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5149, i32 %5214, i32 %5209)  ; UMad(a,b,c)
  %5216 = shl i32 %5215, 2
  %5217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5216, i32 undef)  ; BufferLoad(srv,index,wot)
  %5218 = extractvalue %dx.types.ResRet.i32 %5217, 0
  %5219 = shl i32 %5209, 5
  %5220 = sub nsw i32 %5197, %5219
  %5221 = call i32 @dx.op.binary.i32(i32 37, i32 %5220, i32 0)  ; IMax(a,b)
  %5222 = call i32 @dx.op.binary.i32(i32 38, i32 %5221, i32 31)  ; IMin(a,b)
  %5223 = sub nsw i32 1, %5197
  %5224 = add nsw i32 %5223, %5198
  %5225 = call i32 @dx.op.binary.i32(i32 37, i32 %5224, i32 0)  ; IMax(a,b)
  %5226 = call i32 @dx.op.binary.i32(i32 38, i32 %5225, i32 32)  ; IMin(a,b)
  %5227 = and i32 %5226, 31
  %5228 = shl i32 -1, %5227
  %5229 = xor i32 %5228, -1
  %5230 = and i32 %5222, 31
  %5231 = shl i32 %5229, %5230
  %5232 = icmp eq i32 %5226, 32
  %5233 = select i1 %5232, i32 -1, i32 %5231
  %5234 = and i32 %5233, %5218
  %5235 = icmp eq i32 %5234, 0
  br i1 %5235, label %5573, label %5236

; <label>:5236                                    ; preds = %5204
  br label %5237

; <label>:5237                                    ; preds = %5347, %5236
  %5238 = phi float [ %5348, %5347 ], [ %5205, %5236 ]
  %5239 = phi float [ %5349, %5347 ], [ %5206, %5236 ]
  %5240 = phi float [ %5350, %5347 ], [ %5207, %5236 ]
  %5241 = phi float [ %5351, %5347 ], [ %5208, %5236 ]
  %5242 = phi i32 [ %5250, %5347 ], [ %5234, %5236 ]
  %5243 = phi float [ %5352, %5347 ], [ %5210, %5236 ]
  %5244 = phi float [ %5353, %5347 ], [ %5211, %5236 ]
  %5245 = phi float [ %5354, %5347 ], [ %5212, %5236 ]
  %5246 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5242)  ; FirstbitLo(value)
  %5247 = add i32 %5246, %5219
  %5248 = and i32 %5246, 31
  %5249 = shl i32 1, %5248
  %5250 = xor i32 %5249, %5242
  %5251 = mul i32 %5247, 72
  %5252 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5251, i32 undef)  ; BufferLoad(srv,index,wot)
  %5253 = extractvalue %dx.types.ResRet.f32 %5252, 0
  %5254 = extractvalue %dx.types.ResRet.f32 %5252, 1
  %5255 = extractvalue %dx.types.ResRet.f32 %5252, 2
  %5256 = add i32 %5251, 12
  %5257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5256, i32 undef)  ; BufferLoad(srv,index,wot)
  %5258 = extractvalue %dx.types.ResRet.i32 %5257, 0
  %5259 = add i32 %5251, 16
  %5260 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5259, i32 undef)  ; BufferLoad(srv,index,wot)
  %5261 = extractvalue %dx.types.ResRet.f32 %5260, 0
  %5262 = extractvalue %dx.types.ResRet.f32 %5260, 1
  %5263 = extractvalue %dx.types.ResRet.f32 %5260, 2
  %5264 = add i32 %5251, 28
  %5265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5264, i32 undef)  ; BufferLoad(srv,index,wot)
  %5266 = extractvalue %dx.types.ResRet.f32 %5265, 0
  %5267 = add i32 %5251, 32
  %5268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5267, i32 undef)  ; BufferLoad(srv,index,wot)
  %5269 = extractvalue %dx.types.ResRet.f32 %5268, 0
  %5270 = extractvalue %dx.types.ResRet.f32 %5268, 1
  %5271 = extractvalue %dx.types.ResRet.f32 %5268, 2
  %5272 = extractvalue %dx.types.ResRet.f32 %5268, 3
  %5273 = add i32 %5251, 48
  %5274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5273, i32 undef)  ; BufferLoad(srv,index,wot)
  %5275 = extractvalue %dx.types.ResRet.f32 %5274, 0
  %5276 = extractvalue %dx.types.ResRet.f32 %5274, 1
  %5277 = add i32 %5251, 56
  %5278 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5277, i32 undef)  ; BufferLoad(srv,index,wot)
  %5279 = extractvalue %dx.types.ResRet.f32 %5278, 0
  %5280 = extractvalue %dx.types.ResRet.f32 %5278, 1
  %5281 = add i32 %5251, 64
  %5282 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5281, i32 undef)  ; BufferLoad(srv,index,wot)
  %5283 = extractvalue %dx.types.ResRet.f32 %5282, 0
  %5284 = extractvalue %dx.types.ResRet.f32 %5282, 1
  %5285 = mul i32 %5247, 60
  %5286 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5285, i32 undef)  ; BufferLoad(srv,index,wot)
  %5287 = extractvalue %dx.types.ResRet.f32 %5286, 0
  %5288 = extractvalue %dx.types.ResRet.f32 %5286, 1
  %5289 = extractvalue %dx.types.ResRet.f32 %5286, 2
  %5290 = add i32 %5285, 12
  %5291 = add i32 %5285, 48
  %5292 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5291, i32 undef)  ; BufferLoad(srv,index,wot)
  %5293 = extractvalue %dx.types.ResRet.f32 %5292, 0
  %5294 = extractvalue %dx.types.ResRet.f32 %5292, 1
  %5295 = extractvalue %dx.types.ResRet.f32 %5292, 2
  %5296 = and i32 %5258, 32767
  %5297 = bitcast float %5253 to i32
  %5298 = icmp eq i32 %5297, -1
  %5299 = bitcast float %5254 to i32
  %5300 = and i32 %5258, 32768
  %5301 = icmp ne i32 %5300, 0
  %5302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5303 = extractvalue %dx.types.CBufRet.f32 %5302, 0
  %5304 = extractvalue %dx.types.CBufRet.f32 %5302, 1
  %5305 = extractvalue %dx.types.CBufRet.f32 %5302, 2
  %5306 = fsub fast float %5287, %5303
  %5307 = fsub fast float %5288, %5304
  %5308 = fsub fast float %5289, %5305
  %5309 = fsub fast float %140, %5306
  %5310 = fsub fast float %141, %5307
  %5311 = fsub fast float %142, %5308
  %5312 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5290, i32 undef)  ; BufferLoad(srv,index,wot)
  %5313 = extractvalue %dx.types.ResRet.f32 %5312, 0
  %5314 = extractvalue %dx.types.ResRet.f32 %5312, 1
  %5315 = extractvalue %dx.types.ResRet.f32 %5312, 2
  %5316 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %5313, float %5314, float %5315)  ; Dot3(ax,ay,az,bx,by,bz)
  %5317 = add i32 %5285, 24
  %5318 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5317, i32 undef)  ; BufferLoad(srv,index,wot)
  %5319 = extractvalue %dx.types.ResRet.f32 %5318, 0
  %5320 = extractvalue %dx.types.ResRet.f32 %5318, 1
  %5321 = extractvalue %dx.types.ResRet.f32 %5318, 2
  %5322 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %5319, float %5320, float %5321)  ; Dot3(ax,ay,az,bx,by,bz)
  %5323 = add i32 %5285, 36
  %5324 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5323, i32 undef)  ; BufferLoad(srv,index,wot)
  %5325 = extractvalue %dx.types.ResRet.f32 %5324, 0
  %5326 = extractvalue %dx.types.ResRet.f32 %5324, 1
  %5327 = extractvalue %dx.types.ResRet.f32 %5324, 2
  %5328 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %5325, float %5326, float %5327)  ; Dot3(ax,ay,az,bx,by,bz)
  %5329 = call float @dx.op.unary.f32(i32 6, float %5316)  ; FAbs(value)
  %5330 = call float @dx.op.unary.f32(i32 6, float %5322)  ; FAbs(value)
  %5331 = call float @dx.op.unary.f32(i32 6, float %5328)  ; FAbs(value)
  %5332 = fsub fast float %5293, %5329
  %5333 = fsub fast float %5294, %5330
  %5334 = fsub fast float %5295, %5331
  %5335 = fmul fast float %5332, %5261
  %5336 = fmul fast float %5333, %5262
  %5337 = fmul fast float %5334, %5263
  %5338 = call float @dx.op.binary.f32(i32 36, float %5336, float %5337)  ; FMin(a,b)
  %5339 = call float @dx.op.binary.f32(i32 36, float %5335, float %5338)  ; FMin(a,b)
  %5340 = call float @dx.op.unary.f32(i32 7, float %5339)  ; Saturate(value)
  %5341 = call float @dx.op.binary.f32(i32 36, float %5241, float %5340)  ; FMin(a,b)
  %5342 = uitofp i1 %5301 to float
  %5343 = fadd fast float %4467, 1.000000e+00
  %5344 = fsub fast float %5343, %5342
  %5345 = fmul fast float %5341, %5344
  %5346 = fcmp fast ogt float %5345, 0.000000e+00
  br i1 %5346, label %5356, label %5347

; <label>:5347                                    ; preds = %5498, %5237
  %5348 = phi float [ %5562, %5498 ], [ %5238, %5237 ]
  %5349 = phi float [ %5563, %5498 ], [ %5239, %5237 ]
  %5350 = phi float [ %5564, %5498 ], [ %5240, %5237 ]
  %5351 = phi float [ %5571, %5498 ], [ %5241, %5237 ]
  %5352 = phi float [ %5568, %5498 ], [ %5243, %5237 ]
  %5353 = phi float [ %5569, %5498 ], [ %5244, %5237 ]
  %5354 = phi float [ %5570, %5498 ], [ %5245, %5237 ]
  %5355 = icmp eq i32 %5242, %5249
  br i1 %5355, label %5572, label %5237

; <label>:5356                                    ; preds = %5237
  br i1 %5298, label %5414, label %5357

; <label>:5357                                    ; preds = %5356
  %5358 = fsub fast float -0.000000e+00, %5313
  %5359 = fsub fast float -0.000000e+00, %5314
  %5360 = fsub fast float -0.000000e+00, %5315
  %5361 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5189, float %5358, float %5359, float %5360)  ; Dot3(ax,ay,az,bx,by,bz)
  %5362 = fsub fast float -0.000000e+00, %5361
  %5363 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %5358, float %5359, float %5360)  ; Dot3(ax,ay,az,bx,by,bz)
  %5364 = fadd fast float %5363, %5276
  %5365 = fadd fast float %5275, %5363
  %5366 = fsub fast float -0.000000e+00, %5365
  %5367 = fcmp ogt float %5361, -0.000000e+00
  %5368 = select i1 %5367, float %5366, float %5364
  %5369 = call float @dx.op.unary.f32(i32 6, float %5362)  ; FAbs(value)
  %5370 = fdiv fast float 1.000000e+00, %5369
  %5371 = fmul fast float %5368, %5370
  %5372 = call float @dx.op.binary.f32(i32 35, float %5371, float 0.000000e+00)  ; FMax(a,b)
  %5373 = fsub fast float -0.000000e+00, %5319
  %5374 = fsub fast float -0.000000e+00, %5320
  %5375 = fsub fast float -0.000000e+00, %5321
  %5376 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5189, float %5373, float %5374, float %5375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5377 = fsub fast float -0.000000e+00, %5376
  %5378 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %5373, float %5374, float %5375)  ; Dot3(ax,ay,az,bx,by,bz)
  %5379 = fadd fast float %5378, %5280
  %5380 = fadd fast float %5279, %5378
  %5381 = fsub fast float -0.000000e+00, %5380
  %5382 = fcmp ogt float %5376, -0.000000e+00
  %5383 = select i1 %5382, float %5381, float %5379
  %5384 = call float @dx.op.unary.f32(i32 6, float %5377)  ; FAbs(value)
  %5385 = fdiv fast float 1.000000e+00, %5384
  %5386 = fmul fast float %5383, %5385
  %5387 = call float @dx.op.binary.f32(i32 35, float %5386, float 0.000000e+00)  ; FMax(a,b)
  %5388 = fsub fast float -0.000000e+00, %5325
  %5389 = fsub fast float -0.000000e+00, %5326
  %5390 = fsub fast float -0.000000e+00, %5327
  %5391 = call float @dx.op.dot3.f32(i32 55, float %5187, float %5188, float %5189, float %5388, float %5389, float %5390)  ; Dot3(ax,ay,az,bx,by,bz)
  %5392 = fsub fast float -0.000000e+00, %5391
  %5393 = call float @dx.op.dot3.f32(i32 55, float %5309, float %5310, float %5311, float %5388, float %5389, float %5390)  ; Dot3(ax,ay,az,bx,by,bz)
  %5394 = fadd fast float %5393, %5284
  %5395 = fadd fast float %5283, %5393
  %5396 = fsub fast float -0.000000e+00, %5395
  %5397 = fcmp ogt float %5391, -0.000000e+00
  %5398 = select i1 %5397, float %5396, float %5394
  %5399 = call float @dx.op.unary.f32(i32 6, float %5392)  ; FAbs(value)
  %5400 = fdiv fast float 1.000000e+00, %5399
  %5401 = fmul fast float %5398, %5400
  %5402 = call float @dx.op.binary.f32(i32 35, float %5401, float 0.000000e+00)  ; FMax(a,b)
  %5403 = call float @dx.op.binary.f32(i32 36, float %5387, float %5402)  ; FMin(a,b)
  %5404 = call float @dx.op.binary.f32(i32 36, float %5372, float %5403)  ; FMin(a,b)
  %5405 = fmul fast float %5404, %5187
  %5406 = fmul fast float %5404, %5188
  %5407 = fmul fast float %5404, %5189
  %5408 = fadd fast float %5405, %140
  %5409 = fadd fast float %5406, %141
  %5410 = fadd fast float %5407, %142
  %5411 = fsub fast float %5408, %5253
  %5412 = fsub fast float %5409, %5254
  %5413 = fsub fast float %5410, %5255
  br label %5421

; <label>:5414                                    ; preds = %5356
  %5415 = fmul fast float %5187, 8.096000e+03
  %5416 = fmul fast float %5188, 8.096000e+03
  %5417 = fmul fast float %5189, 8.096000e+03
  %5418 = fadd fast float %5415, %140
  %5419 = fadd fast float %5416, %141
  %5420 = fadd fast float %5417, %142
  br label %5421

; <label>:5421                                    ; preds = %5414, %5357
  %5422 = phi float [ %5187, %5414 ], [ %5411, %5357 ]
  %5423 = phi float [ %5188, %5414 ], [ %5412, %5357 ]
  %5424 = phi float [ %5189, %5414 ], [ %5413, %5357 ]
  %5425 = phi float [ %5418, %5414 ], [ %5408, %5357 ]
  %5426 = phi float [ %5419, %5414 ], [ %5409, %5357 ]
  %5427 = phi float [ %5420, %5414 ], [ %5410, %5357 ]
  %5428 = fcmp fast olt float %5272, 1.000000e+00
  br i1 %5428, label %5429, label %5460, !dx.controlflow.hints !84

; <label>:5429                                    ; preds = %5421
  %5430 = fmul fast float %5424, %5270
  %5431 = fmul fast float %5423, %5271
  %5432 = fsub fast float %5430, %5431
  %5433 = fmul fast float %5422, %5271
  %5434 = fmul fast float %5424, %5269
  %5435 = fsub fast float %5433, %5434
  %5436 = fmul fast float %5423, %5269
  %5437 = fmul fast float %5422, %5270
  %5438 = fsub fast float %5436, %5437
  %5439 = fmul fast float %5432, 2.000000e+00
  %5440 = fmul fast float %5435, 2.000000e+00
  %5441 = fmul fast float %5438, 2.000000e+00
  %5442 = fmul fast float %5439, %5272
  %5443 = fmul fast float %5440, %5272
  %5444 = fmul fast float %5441, %5272
  %5445 = fmul fast float %5441, %5270
  %5446 = fmul fast float %5440, %5271
  %5447 = fmul fast float %5439, %5271
  %5448 = fmul fast float %5441, %5269
  %5449 = fmul fast float %5440, %5269
  %5450 = fmul fast float %5439, %5270
  %5451 = fadd fast float %5445, %5422
  %5452 = fadd fast float %5451, %5442
  %5453 = fsub fast float %5452, %5446
  %5454 = fsub fast float %5423, %5448
  %5455 = fadd fast float %5454, %5443
  %5456 = fadd fast float %5455, %5447
  %5457 = fadd fast float %5444, %5424
  %5458 = fsub fast float %5457, %5450
  %5459 = fadd fast float %5458, %5449
  br label %5460

; <label>:5460                                    ; preds = %5429, %5421
  %5461 = phi float [ %5453, %5429 ], [ %5422, %5421 ]
  %5462 = phi float [ %5456, %5429 ], [ %5423, %5421 ]
  %5463 = phi float [ %5459, %5429 ], [ %5424, %5421 ]
  br i1 %5298, label %5495, label %5464

; <label>:5464                                    ; preds = %5460
  %5465 = fmul fast float %4650, 0x400187C840000000
  %5466 = fadd fast float %5465, 0xC00EFC2120000000
  %5467 = fmul fast float %5466, %4650
  %5468 = fadd fast float %5467, 0x3FE5D16340000000
  %5469 = fmul fast float %5468, %4650
  %5470 = fadd fast float %5469, 1.000000e+00
  %5471 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5472 = fsub fast float %5425, %140
  %5473 = fsub fast float %5426, %141
  %5474 = fsub fast float %5427, %142
  %5475 = fsub fast float %5425, %5253
  %5476 = fsub fast float %5426, %5254
  %5477 = fsub fast float %5427, %5255
  %5478 = call float @dx.op.dot3.f32(i32 55, float %5472, float %5473, float %5474, float %5472, float %5473, float %5474)  ; Dot3(ax,ay,az,bx,by,bz)
  %5479 = call float @dx.op.dot3.f32(i32 55, float %5475, float %5476, float %5477, float %5475, float %5476, float %5477)  ; Dot3(ax,ay,az,bx,by,bz)
  %5480 = fadd fast float %5479, 0x3EE4F8B580000000
  %5481 = fdiv fast float %5478, %5480
  %5482 = bitcast float %5481 to i32
  %5483 = ashr i32 %5482, 1
  %5484 = add nsw i32 %5483, 532487669
  %5485 = bitcast i32 %5484 to float
  %5486 = fmul fast float %5485, %5471
  %5487 = call float @dx.op.unary.f32(i32 7, float %5486)  ; Saturate(value)
  %5488 = fmul fast float %5487, 0x4009981AE0000000
  %5489 = fsub fast float 0x40111BBD80000000, %5488
  %5490 = fmul fast float %5489, %5487
  %5491 = fadd fast float %5490, 0xC0009F6020000000
  %5492 = fmul fast float %5491, %5487
  %5493 = fadd fast float %5492, 1.000000e+00
  %5494 = call float @dx.op.unary.f32(i32 7, float %5493)  ; Saturate(value)
  br label %5498

; <label>:5495                                    ; preds = %5460
  %5496 = icmp ne i32 %5299, -1
  %5497 = zext i1 %5496 to i32
  br label %5498

; <label>:5498                                    ; preds = %5495, %5464
  %5499 = phi float [ %4650, %5495 ], [ %5494, %5464 ]
  %5500 = phi i32 [ %5497, %5495 ], [ 0, %5464 ]
  %5501 = fmul float %5499, 5.000000e+00
  %5502 = fsub float 5.000000e+00, %5501
  %5503 = icmp ne i32 %5500, 0
  %5504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5505 = extractvalue %dx.types.CBufRet.f32 %5504, 3
  %5506 = fadd fast float %5505, %5502
  %5507 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5506)  ; FMax(a,b)
  %5508 = call float @dx.op.unary.f32(i32 6, float %5461)  ; FAbs(value)
  %5509 = call float @dx.op.unary.f32(i32 6, float %5462)  ; FAbs(value)
  %5510 = fadd fast float %5509, %5508
  %5511 = call float @dx.op.unary.f32(i32 6, float %5463)  ; FAbs(value)
  %5512 = fadd fast float %5510, %5511
  %5513 = fcmp fast oeq float %5512, 0.000000e+00
  %5514 = fdiv fast float 1.000000e+00, %5512
  %5515 = select i1 %5513, float 1.000000e+00, float %5514
  %5516 = fmul fast float %5515, %5461
  %5517 = fmul fast float %5515, %5462
  %5518 = call float @dx.op.unary.f32(i32 6, float %5517)  ; FAbs(value)
  %5519 = call float @dx.op.unary.f32(i32 6, float %5516)  ; FAbs(value)
  %5520 = fsub fast float 1.000000e+00, %5518
  %5521 = fsub fast float 1.000000e+00, %5519
  %5522 = fcmp fast oge float %5516, 0.000000e+00
  %5523 = fcmp fast oge float %5517, 0.000000e+00
  %5524 = select i1 %5522, float 1.000000e+00, float -1.000000e+00
  %5525 = select i1 %5523, float 1.000000e+00, float -1.000000e+00
  %5526 = fcmp fast ole float %5463, 0.000000e+00
  %5527 = fmul fast float %5524, %5520
  %5528 = fmul fast float %5525, %5521
  %5529 = select i1 %5526, float %5527, float %5516
  %5530 = select i1 %5526, float %5528, float %5517
  %5531 = fmul fast float %5529, 5.000000e-01
  %5532 = fmul fast float %5530, 5.000000e-01
  %5533 = fadd fast float %5531, 5.000000e-01
  %5534 = fadd fast float %5532, 5.000000e-01
  %5535 = uitofp i32 %5296 to float
  %5536 = call float @dx.op.binary.f32(i32 36, float %5507, float 3.000000e+00)  ; FMin(a,b)
  %5537 = fadd fast float %5536, 2.000000e+00
  %5538 = call float @dx.op.unary.f32(i32 21, float %5537)  ; Exp(value)
  %5539 = extractvalue %dx.types.CBufRet.f32 %5504, 1
  %5540 = fmul fast float %5539, %5538
  %5541 = fmul fast float %5540, 2.000000e+00
  %5542 = fsub fast float 1.000000e+00, %5541
  %5543 = fmul fast float %5533, %5542
  %5544 = fmul fast float %5534, %5542
  %5545 = fadd fast float %5543, %5540
  %5546 = fadd fast float %5544, %5540
  %5547 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5545, float %5546, float %5535, float undef, i32 0, i32 0, i32 undef, float %5507)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5548 = extractvalue %dx.types.ResRet.f32 %5547, 0
  %5549 = extractvalue %dx.types.ResRet.f32 %5547, 1
  %5550 = extractvalue %dx.types.ResRet.f32 %5547, 2
  %5551 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5552 = extractvalue %dx.types.CBufRet.f32 %5551, 3
  %5553 = fmul fast float %5552, %5266
  %5554 = call float @dx.op.binary.f32(i32 36, float %4731, float %5553)  ; FMin(a,b)
  %5555 = select i1 %5503, float %5554, float %5553
  %5556 = fmul fast float %5548, %5345
  %5557 = fmul fast float %5556, %5555
  %5558 = fmul fast float %5549, %5345
  %5559 = fmul fast float %5558, %5555
  %5560 = fmul fast float %5550, %5345
  %5561 = fmul fast float %5560, %5555
  %5562 = fadd fast float %5557, %5238
  %5563 = fadd fast float %5559, %5239
  %5564 = fadd fast float %5561, %5240
  %5565 = fmul fast float %5425, %5345
  %5566 = fmul fast float %5426, %5345
  %5567 = fmul fast float %5427, %5345
  %5568 = fadd fast float %5565, %5243
  %5569 = fadd fast float %5566, %5244
  %5570 = fadd fast float %5567, %5245
  %5571 = fsub fast float %5241, %5345
  br label %5347

; <label>:5572                                    ; preds = %5347
  br label %5573

; <label>:5573                                    ; preds = %5572, %5204
  %5574 = phi float [ %5205, %5204 ], [ %5348, %5572 ]
  %5575 = phi float [ %5206, %5204 ], [ %5349, %5572 ]
  %5576 = phi float [ %5207, %5204 ], [ %5350, %5572 ]
  %5577 = phi float [ %5208, %5204 ], [ %5351, %5572 ]
  %5578 = phi float [ %5210, %5204 ], [ %5352, %5572 ]
  %5579 = phi float [ %5211, %5204 ], [ %5353, %5572 ]
  %5580 = phi float [ %5212, %5204 ], [ %5354, %5572 ]
  %5581 = add i32 %5209, 1
  %5582 = icmp ugt i32 %5581, %5201
  br i1 %5582, label %5583, label %5204, !llvm.loop !85

; <label>:5583                                    ; preds = %5573
  br label %5584

; <label>:5584                                    ; preds = %5583, %5186
  %5585 = phi float [ 0.000000e+00, %5186 ], [ %5574, %5583 ]
  %5586 = phi float [ 0.000000e+00, %5186 ], [ %5575, %5583 ]
  %5587 = phi float [ 0.000000e+00, %5186 ], [ %5576, %5583 ]
  %5588 = phi float [ 0.000000e+00, %5186 ], [ %5578, %5583 ]
  %5589 = phi float [ 0.000000e+00, %5186 ], [ %5579, %5583 ]
  %5590 = phi float [ 0.000000e+00, %5186 ], [ %5580, %5583 ]
  %5591 = call float @dx.op.dot3.f32(i32 55, float %5585, float %5586, float %5587, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5592 = select i1 %214, float 0.000000e+00, float %5585
  %5593 = select i1 %214, float %5591, float %5586
  %5594 = select i1 %214, float 0.000000e+00, float %5587
  %5595 = fcmp fast olt float %5110, 0.000000e+00
  %5596 = call float @dx.op.unary.f32(i32 6, float %5110)  ; FAbs(value)
  %5597 = fmul fast float %5596, %5111
  %5598 = fmul fast float %5596, %5112
  %5599 = fmul fast float %5596, %5113
  %5600 = select i1 %5595, float %5111, float %5597
  %5601 = select i1 %5595, float %5112, float %5598
  %5602 = select i1 %5595, float %5113, float %5599
  %5603 = fsub fast float 1.000000e+00, %5596
  %5604 = call float @dx.op.unary.f32(i32 7, float %5603)  ; Saturate(value)
  %5605 = fmul fast float %5604, %5592
  %5606 = fmul fast float %5604, %5593
  %5607 = fmul fast float %5604, %5594
  %5608 = fadd fast float %5600, %5605
  %5609 = fadd fast float %5601, %5606
  %5610 = fadd fast float %5602, %5607
  %5611 = fcmp fast une float %4860, 0.000000e+00
  br i1 %5611, label %5712, label %5612

; <label>:5612                                    ; preds = %5584
  %5613 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5614 = extractvalue %dx.types.CBufRet.f32 %5613, 0
  %5615 = extractvalue %dx.types.CBufRet.f32 %5613, 1
  %5616 = extractvalue %dx.types.CBufRet.f32 %5613, 2
  %5617 = extractvalue %dx.types.CBufRet.f32 %5613, 3
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 0
  %5620 = extractvalue %dx.types.CBufRet.f32 %5618, 1
  %5621 = extractvalue %dx.types.CBufRet.f32 %5618, 2
  %5622 = extractvalue %dx.types.CBufRet.f32 %5618, 3
  %5623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5624 = extractvalue %dx.types.CBufRet.f32 %5623, 0
  %5625 = extractvalue %dx.types.CBufRet.f32 %5623, 1
  %5626 = extractvalue %dx.types.CBufRet.f32 %5623, 2
  %5627 = extractvalue %dx.types.CBufRet.f32 %5623, 3
  %5628 = call float @dx.op.dot3.f32(i32 55, float %5624, float %5625, float %5626, float %4675, float %4676, float %4677)  ; Dot3(ax,ay,az,bx,by,bz)
  %5629 = call float @dx.op.dot3.f32(i32 55, float %5588, float %5589, float %5590, float %5624, float %5625, float %5626)  ; Dot3(ax,ay,az,bx,by,bz)
  %5630 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %5624, float %5625, float %5626)  ; Dot3(ax,ay,az,bx,by,bz)
  %5631 = fadd fast float %4650, -1.000000e+00
  %5632 = fsub fast float %5629, %5630
  %5633 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5634 = extractvalue %dx.types.CBufRet.f32 %5633, 2
  %5635 = fmul fast float %5634, %5629
  %5636 = fdiv fast float 1.600000e+02, %5635
  %5637 = fmul fast float %5631, %5631
  %5638 = fmul fast float %5637, 0xBFB5B17960000000
  %5639 = fmul fast float %5638, %5632
  %5640 = fmul fast float %5639, %5636
  %5641 = call float @dx.op.unary.f32(i32 21, float %5640)  ; Exp(value)
  %5642 = fmul fast float %5641, 0x3FF04B2960000000
  %5643 = fsub fast float 0x3FF04B2960000000, %5642
  %5644 = call float @dx.op.unary.f32(i32 7, float %5643)  ; Saturate(value)
  %5645 = fmul fast float %5644, 4.000000e+00
  %5646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5647 = extractvalue %dx.types.CBufRet.f32 %5646, 0
  %5648 = extractvalue %dx.types.CBufRet.f32 %5646, 1
  %5649 = extractvalue %dx.types.CBufRet.f32 %5646, 2
  %5650 = fadd fast float %5647, %5588
  %5651 = fadd fast float %5648, %5589
  %5652 = fadd fast float %5649, %5590
  %5653 = fmul fast float %5650, %5614
  %5654 = call float @dx.op.tertiary.f32(i32 46, float %5651, float %5615, float %5653)  ; FMad(a,b,c)
  %5655 = call float @dx.op.tertiary.f32(i32 46, float %5652, float %5616, float %5654)  ; FMad(a,b,c)
  %5656 = fadd fast float %5655, %5617
  %5657 = fmul fast float %5650, %5619
  %5658 = call float @dx.op.tertiary.f32(i32 46, float %5651, float %5620, float %5657)  ; FMad(a,b,c)
  %5659 = call float @dx.op.tertiary.f32(i32 46, float %5652, float %5621, float %5658)  ; FMad(a,b,c)
  %5660 = fadd fast float %5659, %5622
  %5661 = fmul fast float %5650, %5624
  %5662 = call float @dx.op.tertiary.f32(i32 46, float %5651, float %5625, float %5661)  ; FMad(a,b,c)
  %5663 = call float @dx.op.tertiary.f32(i32 46, float %5652, float %5626, float %5662)  ; FMad(a,b,c)
  %5664 = fadd fast float %5663, %5627
  %5665 = fdiv fast float %5656, %5664
  %5666 = fdiv fast float %5660, %5664
  %5667 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5668 = extractvalue %dx.types.CBufRet.f32 %5667, 0
  %5669 = extractvalue %dx.types.CBufRet.f32 %5667, 1
  %5670 = fmul fast float %5668, %5665
  %5671 = fmul fast float %5669, %5666
  %5672 = extractvalue %dx.types.CBufRet.f32 %5667, 2
  %5673 = extractvalue %dx.types.CBufRet.f32 %5667, 3
  %5674 = fadd fast float %5670, %5672
  %5675 = fadd fast float %5671, %5673
  %5676 = fmul fast float %5628, 8.000000e+00
  %5677 = call float @dx.op.unary.f32(i32 7, float %5676)  ; Saturate(value)
  %5678 = fmul fast float %5674, 2.000000e+00
  %5679 = fmul fast float %5675, 2.000000e+00
  %5680 = fadd fast float %5678, -1.000000e+00
  %5681 = fadd fast float %5679, -1.000000e+00
  %5682 = fmul fast float %5680, %5680
  %5683 = fsub fast float 1.000000e+00, %5682
  %5684 = call float @dx.op.unary.f32(i32 7, float %5683)  ; Saturate(value)
  %5685 = fmul fast float %5681, %5681
  %5686 = fsub fast float 1.000000e+00, %5685
  %5687 = call float @dx.op.unary.f32(i32 7, float %5686)  ; Saturate(value)
  %5688 = fmul fast float %4860, %5684
  %5689 = fmul fast float %5688, %5687
  %5690 = call float @dx.op.unary.f32(i32 7, float %5689)  ; Saturate(value)
  %5691 = fmul fast float %5690, %5677
  %5692 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5674, float %5675, float undef, float undef, i32 0, i32 0, i32 undef, float %5645)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5693 = extractvalue %dx.types.ResRet.f32 %5692, 0
  %5694 = extractvalue %dx.types.ResRet.f32 %5692, 1
  %5695 = extractvalue %dx.types.ResRet.f32 %5692, 2
  %5696 = select i1 %214, float 0.000000e+00, float %5694
  %5697 = select i1 %214, float 0.000000e+00, float %5695
  %5698 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5699 = extractvalue %dx.types.CBufRet.f32 %5698, 2
  %5700 = fmul fast float %5699, %5693
  %5701 = fmul fast float %5696, %5699
  %5702 = fmul fast float %5697, %5699
  %5703 = fsub fast float %5700, %5592
  %5704 = fsub fast float %5701, %5593
  %5705 = fsub fast float %5702, %5594
  %5706 = fmul fast float %5703, %5691
  %5707 = fmul fast float %5704, %5691
  %5708 = fmul fast float %5705, %5691
  %5709 = fadd fast float %5706, %5592
  %5710 = fadd fast float %5707, %5593
  %5711 = fadd fast float %5708, %5594
  br label %5712

; <label>:5712                                    ; preds = %5612, %5584, %5109, %4833
  %5713 = phi float [ %5111, %5109 ], [ %5608, %5584 ], [ %4790, %4833 ], [ %5709, %5612 ]
  %5714 = phi float [ %5112, %5109 ], [ %5609, %5584 ], [ %4791, %4833 ], [ %5710, %5612 ]
  %5715 = phi float [ %5113, %5109 ], [ %5610, %5584 ], [ %4792, %4833 ], [ %5711, %5612 ]
  %5716 = fmul fast float %4839, %4786
  %5717 = fmul fast float %4839, %4787
  %5718 = fmul fast float %4839, %4788
  %5719 = call float @dx.op.dot3.f32(i32 55, float %4647, float %4648, float %4649, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5720 = fcmp fast ogt float %5719, 0x3E7FF19E20000000
  %5721 = fdiv fast float 1.000000e+00, %5719
  %5722 = select i1 %5720, float %5721, float 0.000000e+00
  %5723 = fmul fast float %5722, %4647
  %5724 = fmul fast float %5722, %4648
  %5725 = fmul fast float %5722, %4649
  %5726 = fadd fast float %5723, -1.000000e+00
  %5727 = fadd fast float %5724, -1.000000e+00
  %5728 = fadd fast float %5725, -1.000000e+00
  %5729 = fmul fast float %5726, 5.000000e-01
  %5730 = fmul fast float %5727, 5.000000e-01
  %5731 = fmul fast float %5728, 5.000000e-01
  %5732 = fadd fast float %5729, 1.000000e+00
  %5733 = fadd fast float %5730, 1.000000e+00
  %5734 = fadd fast float %5731, 1.000000e+00
  %5735 = fmul fast float %5713, %4834
  %5736 = fmul fast float %5714, %4835
  %5737 = fmul fast float %5715, %4836
  %5738 = fsub fast float 1.000000e+00, %4669
  %5739 = bitcast float %5738 to i32
  %5740 = sitofp i32 %5739 to float
  %5741 = fmul fast float %5740, 5.000000e+00
  %5742 = fadd fast float %5741, 0xC1EFBF8940000000
  %5743 = fptosi float %5742 to i32
  %5744 = bitcast i32 %5743 to float
  %5745 = fmul fast float %5744, %4013
  %5746 = fmul fast float %4786, %5745
  %5747 = fmul fast float %5746, %4839
  %5748 = fmul fast float %5747, %5732
  %5749 = fmul fast float %4787, %5745
  %5750 = fmul fast float %5749, %4839
  %5751 = fmul fast float %5750, %5733
  %5752 = fmul fast float %4788, %5745
  %5753 = fmul fast float %5752, %4839
  %5754 = fmul fast float %5753, %5734
  %5755 = fmul fast float %5716, %4061
  %5756 = fmul fast float %5717, %4061
  %5757 = fmul fast float %5718, %4061
  %5758 = fadd fast float %5735, %4015
  %5759 = fadd fast float %5758, %5748
  %5760 = fmul fast float %5759, %4061
  %5761 = fadd fast float %5736, %4016
  %5762 = fadd fast float %5761, %5751
  %5763 = fmul fast float %5762, %4061
  %5764 = fadd fast float %5737, %4017
  %5765 = fadd fast float %5764, %5754
  %5766 = fmul fast float %5765, %4061
  %5767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5768 = extractvalue %dx.types.CBufRet.f32 %5767, 3
  %5769 = fcmp fast oeq float %5768, 0.000000e+00
  br i1 %5769, label %5988, label %5770

; <label>:5770                                    ; preds = %5712
  %5771 = extractvalue %dx.types.CBufRet.f32 %5767, 0
  %5772 = extractvalue %dx.types.CBufRet.f32 %5767, 1
  %5773 = extractvalue %dx.types.CBufRet.f32 %5767, 2
  %5774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5775 = extractvalue %dx.types.CBufRet.f32 %5774, 0
  %5776 = extractvalue %dx.types.CBufRet.f32 %5774, 1
  %5777 = extractvalue %dx.types.CBufRet.f32 %5774, 2
  %5778 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5779 = extractvalue %dx.types.CBufRet.f32 %5778, 0
  %5780 = extractvalue %dx.types.CBufRet.f32 %5778, 1
  %5781 = call float @dx.op.dot3.f32(i32 55, float %5775, float %5776, float %5777, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5782 = select i1 %214, float %5779, float %5775
  %5783 = select i1 %214, float %5781, float %5776
  %5784 = select i1 %214, float %5780, float %5777
  %5785 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5786 = extractvalue %dx.types.CBufRet.f32 %5785, 1
  %5787 = fcmp fast une float %5786, 0.000000e+00
  br i1 %5787, label %5788, label %5805

; <label>:5788                                    ; preds = %5770
  %5789 = fptoui float %77 to i32
  %5790 = fptoui float %78 to i32
  %5791 = lshr i32 %5789, 4
  %5792 = lshr i32 %5790, 4
  %5793 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5794 = extractvalue %dx.types.CBufRet.f32 %5793, 0
  %5795 = fptoui float %5794 to i32
  %5796 = add i32 %5795, 15
  %5797 = lshr i32 %5796, 4
  %5798 = mul i32 %5797, %5792
  %5799 = add i32 %5798, %5791
  %5800 = shl i32 %5799, 3
  %5801 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5800, i32 undef)  ; BufferLoad(srv,index,wot)
  %5802 = extractvalue %dx.types.ResRet.i32 %5801, 0
  %5803 = and i32 %5802, -268435456
  %5804 = icmp eq i32 %5803, -1342177280
  br i1 %5804, label %5810, label %5805

; <label>:5805                                    ; preds = %5788, %5770
  %5806 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4655, float %4656, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5807 = extractvalue %dx.types.ResRet.f32 %5806, 0
  %5808 = extractvalue %dx.types.ResRet.f32 %5806, 1
  %5809 = extractvalue %dx.types.ResRet.f32 %5806, 2
  br label %5810

; <label>:5810                                    ; preds = %5805, %5788
  %5811 = phi float [ %5807, %5805 ], [ 0.000000e+00, %5788 ]
  %5812 = phi float [ %5808, %5805 ], [ 0.000000e+00, %5788 ]
  %5813 = phi float [ %5809, %5805 ], [ 0.000000e+00, %5788 ]
  %5814 = call float @dx.op.binary.f32(i32 36, float %5812, float %5813)  ; FMin(a,b)
  %5815 = call float @dx.op.binary.f32(i32 36, float %5811, float %5814)  ; FMin(a,b)
  %5816 = fcmp fast ogt float %5815, 0.000000e+00
  br i1 %5816, label %5817, label %5988, !dx.controlflow.hints !87

; <label>:5817                                    ; preds = %5810
  %5818 = fmul fast float %5811, %5782
  %5819 = fmul fast float %5812, %5783
  %5820 = fmul fast float %5813, %5784
  %5821 = fsub fast float %5771, %160
  %5822 = fsub fast float %5772, %161
  %5823 = fsub fast float %5773, %162
  %5824 = call float @dx.op.dot3.f32(i32 55, float %5821, float %5822, float %5823, float %5821, float %5822, float %5823)  ; Dot3(ax,ay,az,bx,by,bz)
  %5825 = call float @dx.op.unary.f32(i32 25, float %5824)  ; Rsqrt(value)
  %5826 = fmul fast float %5825, %5821
  %5827 = fmul fast float %5825, %5822
  %5828 = fmul fast float %5825, %5823
  %5829 = call float @dx.op.dot3.f32(i32 55, float %5771, float %5772, float %5773, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %5830 = call float @dx.op.dot3.f32(i32 55, float %4475, float %4476, float %4477, float %5826, float %5827, float %5828)  ; Dot3(ax,ay,az,bx,by,bz)
  %5831 = call float @dx.op.unary.f32(i32 7, float %5829)  ; Saturate(value)
  %5832 = fmul fast float %5831, %5831
  %5833 = fmul fast float %5832, %4694
  %5834 = call float @dx.op.unary.f32(i32 7, float %5833)  ; Saturate(value)
  %5835 = fmul fast float %5834, %5831
  %5836 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %5826, float %5827, float %5828)  ; Dot3(ax,ay,az,bx,by,bz)
  %5837 = fmul fast float %5836, %5836
  %5838 = call float @dx.op.unary.f32(i32 6, float %5829)  ; FAbs(value)
  %5839 = fsub fast float 1.000000e+00, %4687
  %5840 = fmul fast float %4669, %4669
  %5841 = fmul fast float %5840, %5839
  %5842 = fadd fast float %5841, %4687
  %5843 = bitcast float %5842 to i32
  %5844 = ashr i32 %5843, 1
  %5845 = add nsw i32 %5844, 532487669
  %5846 = bitcast i32 %5845 to float
  %5847 = fadd fast float %5846, %4669
  %5848 = fmul fast float %4687, %5837
  %5849 = fsub fast float 1.000000e+00, %5837
  %5850 = fadd fast float %5849, %5848
  %5851 = fmul fast float %5838, %5838
  %5852 = fmul fast float %5851, %5839
  %5853 = fadd fast float %5852, %4687
  %5854 = bitcast float %5853 to i32
  %5855 = ashr i32 %5854, 1
  %5856 = add nsw i32 %5855, 532487669
  %5857 = bitcast i32 %5856 to float
  %5858 = fadd fast float %5857, %5838
  %5859 = fmul fast float %5850, %5850
  %5860 = fmul fast float %5859, %5847
  %5861 = fmul fast float %5860, %5858
  %5862 = fdiv fast float 0x3FF0A00000000000, %5861
  %5863 = fmul fast float %5862, %4687
  %5864 = call float @dx.op.unary.f32(i32 6, float %5830)  ; FAbs(value)
  %5865 = fsub fast float 1.000000e+00, %5864
  %5866 = bitcast float %5865 to i32
  %5867 = sitofp i32 %5866 to float
  %5868 = fmul fast float %5867, 5.000000e+00
  %5869 = fadd fast float %5868, 0xC1EFBF8940000000
  %5870 = fptosi float %5869 to i32
  %5871 = bitcast i32 %5870 to float
  %5872 = fsub fast float 1.000000e+00, %4641
  %5873 = fsub fast float 1.000000e+00, %4642
  %5874 = fsub fast float 1.000000e+00, %4667
  %5875 = fmul fast float %5871, %5872
  %5876 = fmul fast float %5871, %5873
  %5877 = fmul fast float %5871, %5874
  %5878 = fadd fast float %5875, %4641
  %5879 = fadd fast float %5876, %4642
  %5880 = fadd fast float %5877, %4667
  br i1 %4806, label %5881, label %5904

; <label>:5881                                    ; preds = %5817
  %5882 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4014, float %5864, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5883 = extractvalue %dx.types.ResRet.f32 %5882, 0
  %5884 = extractvalue %dx.types.ResRet.f32 %5882, 1
  %5885 = extractvalue %dx.types.ResRet.f32 %5882, 2
  %5886 = fadd fast float %5883, -5.000000e-01
  %5887 = fadd fast float %5884, -5.000000e-01
  %5888 = fadd fast float %5885, -5.000000e-01
  %5889 = fmul fast float %4641, 4.000000e+00
  %5890 = fmul fast float %5889, %5872
  %5891 = fmul fast float %5890, %5886
  %5892 = fmul fast float %4642, 4.000000e+00
  %5893 = fmul fast float %5892, %5873
  %5894 = fmul fast float %5893, %5887
  %5895 = fmul fast float %4667, 4.000000e+00
  %5896 = fmul fast float %5895, %5874
  %5897 = fmul fast float %5896, %5888
  %5898 = fadd fast float %5891, %5878
  %5899 = fadd fast float %5894, %5879
  %5900 = fadd fast float %5897, %5880
  %5901 = call float @dx.op.unary.f32(i32 7, float %5898)  ; Saturate(value)
  %5902 = call float @dx.op.unary.f32(i32 7, float %5899)  ; Saturate(value)
  %5903 = call float @dx.op.unary.f32(i32 7, float %5900)  ; Saturate(value)
  br label %5904

; <label>:5904                                    ; preds = %5881, %5817
  %5905 = phi float [ %5901, %5881 ], [ %5878, %5817 ]
  %5906 = phi float [ %5902, %5881 ], [ %5879, %5817 ]
  %5907 = phi float [ %5903, %5881 ], [ %5880, %5817 ]
  %5908 = fmul fast float %5829, 9.843750e-01
  %5909 = fadd fast float %5908, 7.812500e-03
  %5910 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5909, float %4796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5911 = extractvalue %dx.types.ResRet.f32 %5910, 2
  %5912 = extractvalue %dx.types.ResRet.f32 %5910, 3
  %5913 = fmul fast float %5911, %4641
  %5914 = fmul fast float %5911, %4642
  %5915 = fmul fast float %5911, %4667
  %5916 = fadd fast float %5913, %5912
  %5917 = fadd fast float %5914, %5912
  %5918 = fadd fast float %5915, %5912
  br i1 %4806, label %5919, label %5942

; <label>:5919                                    ; preds = %5904
  %5920 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4014, float %5829, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5921 = extractvalue %dx.types.ResRet.f32 %5920, 0
  %5922 = extractvalue %dx.types.ResRet.f32 %5920, 1
  %5923 = extractvalue %dx.types.ResRet.f32 %5920, 2
  %5924 = fadd fast float %5921, -5.000000e-01
  %5925 = fadd fast float %5922, -5.000000e-01
  %5926 = fadd fast float %5923, -5.000000e-01
  %5927 = fmul fast float %4641, 4.000000e+00
  %5928 = fmul fast float %5927, %5872
  %5929 = fmul fast float %5928, %5924
  %5930 = fmul fast float %4642, 4.000000e+00
  %5931 = fmul fast float %5930, %5873
  %5932 = fmul fast float %5931, %5925
  %5933 = fmul fast float %4667, 4.000000e+00
  %5934 = fmul fast float %5933, %5874
  %5935 = fmul fast float %5934, %5926
  %5936 = fadd fast float %5929, %5916
  %5937 = fadd fast float %5932, %5917
  %5938 = fadd fast float %5935, %5918
  %5939 = call float @dx.op.unary.f32(i32 7, float %5936)  ; Saturate(value)
  %5940 = call float @dx.op.unary.f32(i32 7, float %5937)  ; Saturate(value)
  %5941 = call float @dx.op.unary.f32(i32 7, float %5938)  ; Saturate(value)
  br label %5942

; <label>:5942                                    ; preds = %5919, %5904
  %5943 = phi float [ %5939, %5919 ], [ %5916, %5904 ]
  %5944 = phi float [ %5940, %5919 ], [ %5917, %5904 ]
  %5945 = phi float [ %5941, %5919 ], [ %5918, %5904 ]
  %5946 = call float @dx.op.binary.f32(i32 35, float %5944, float %5945)  ; FMax(a,b)
  %5947 = call float @dx.op.binary.f32(i32 35, float %5943, float %5946)  ; FMax(a,b)
  %5948 = fsub fast float 1.000000e+00, %5947
  %5949 = fmul fast float %5905, %5863
  %5950 = fmul fast float %5906, %5863
  %5951 = fmul fast float %5907, %5863
  %5952 = fsub fast float 1.000000e+00, %5830
  %5953 = bitcast float %5952 to i32
  %5954 = sitofp i32 %5953 to float
  %5955 = fmul fast float %5954, 5.000000e+00
  %5956 = fadd fast float %5955, 0xC1EFBF8940000000
  %5957 = fptosi float %5956 to i32
  %5958 = bitcast i32 %5957 to float
  %5959 = fmul fast float %5958, %4013
  %5960 = fmul fast float %5948, %5959
  %5961 = fmul fast float %5960, %5732
  %5962 = fmul fast float %5960, %5733
  %5963 = fmul fast float %5960, %5734
  %5964 = fadd fast float %5961, %5949
  %5965 = fadd fast float %5962, %5950
  %5966 = fadd fast float %5963, %5951
  %5967 = fmul fast float %5835, %5818
  %5968 = fmul fast float %5967, %5948
  %5969 = fmul fast float %5835, %5819
  %5970 = fmul fast float %5969, %5948
  %5971 = fmul fast float %5835, %5820
  %5972 = fmul fast float %5971, %5948
  %5973 = fmul fast float %5967, %5964
  %5974 = fmul fast float %5969, %5965
  %5975 = fmul fast float %5971, %5966
  %5976 = fadd fast float %5968, %5716
  %5977 = fmul fast float %5976, %4061
  %5978 = fadd fast float %5970, %5717
  %5979 = fmul fast float %5978, %4061
  %5980 = fadd fast float %5972, %5718
  %5981 = fmul fast float %5980, %4061
  %5982 = fadd fast float %5973, %5759
  %5983 = fmul fast float %5982, %4061
  %5984 = fadd fast float %5974, %5762
  %5985 = fmul fast float %5984, %4061
  %5986 = fadd fast float %5975, %5765
  %5987 = fmul fast float %5986, %4061
  br label %5988

; <label>:5988                                    ; preds = %5942, %5810, %5712
  %5989 = phi float [ %5760, %5712 ], [ %5760, %5810 ], [ %5983, %5942 ]
  %5990 = phi float [ %5763, %5712 ], [ %5763, %5810 ], [ %5985, %5942 ]
  %5991 = phi float [ %5766, %5712 ], [ %5766, %5810 ], [ %5987, %5942 ]
  %5992 = phi float [ %5755, %5712 ], [ %5755, %5810 ], [ %5977, %5942 ]
  %5993 = phi float [ %5756, %5712 ], [ %5756, %5810 ], [ %5979, %5942 ]
  %5994 = phi float [ %5757, %5712 ], [ %5757, %5810 ], [ %5981, %5942 ]
  %5995 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5996 = extractvalue %dx.types.CBufRet.i32 %5995, 0
  %5997 = icmp eq i32 %5996, 0
  br i1 %5997, label %6428, label %5998

; <label>:5998                                    ; preds = %5988
  %5999 = fptoui float %77 to i32
  %6000 = fptoui float %78 to i32
  %6001 = lshr i32 %5999, 4
  %6002 = lshr i32 %6000, 4
  %6003 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6004 = extractvalue %dx.types.CBufRet.i32 %6003, 0
  %6005 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6002, i32 %6004, i32 %6001)  ; UMad(a,b,c)
  %6006 = add nsw i32 %5996, -1
  %6007 = call i32 @dx.op.binary.i32(i32 37, i32 %6006, i32 0)  ; IMax(a,b)
  %6008 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %6009 = fptoui float %6008 to i32
  %6010 = lshr i32 %6009, 5
  %6011 = call i32 @dx.op.binary.i32(i32 40, i32 %6010, i32 8191)  ; UMin(a,b)
  %6012 = shl i32 %6011, 2
  %6013 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6012, i32 undef)  ; BufferLoad(srv,index,wot)
  %6014 = extractvalue %dx.types.ResRet.i32 %6013, 0
  %6015 = lshr i32 %6014, 16
  %6016 = and i32 %6014, 65535
  %6017 = lshr i32 %6014, 21
  %6018 = lshr i32 %6016, 5
  %6019 = call i32 @dx.op.binary.i32(i32 40, i32 %6018, i32 %6007)  ; UMin(a,b)
  %6020 = icmp ugt i32 %6017, %6019
  br i1 %6020, label %6428, label %6021

; <label>:6021                                    ; preds = %5998
  br label %6022

; <label>:6022                                    ; preds = %6418, %6021
  %6023 = phi i32 [ %6425, %6418 ], [ %6017, %6021 ]
  %6024 = phi float [ %6419, %6418 ], [ %5989, %6021 ]
  %6025 = phi float [ %6420, %6418 ], [ %5990, %6021 ]
  %6026 = phi float [ %6421, %6418 ], [ %5991, %6021 ]
  %6027 = phi float [ %6422, %6418 ], [ %5992, %6021 ]
  %6028 = phi float [ %6423, %6418 ], [ %5993, %6021 ]
  %6029 = phi float [ %6424, %6418 ], [ %5994, %6021 ]
  %6030 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6031 = extractvalue %dx.types.CBufRet.i32 %6030, 0
  %6032 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6005, i32 %6031, i32 %6023)  ; UMad(a,b,c)
  %6033 = shl i32 %6032, 2
  %6034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6033, i32 undef)  ; BufferLoad(srv,index,wot)
  %6035 = extractvalue %dx.types.ResRet.i32 %6034, 0
  %6036 = shl i32 %6023, 5
  %6037 = sub nsw i32 %6015, %6036
  %6038 = call i32 @dx.op.binary.i32(i32 37, i32 %6037, i32 0)  ; IMax(a,b)
  %6039 = call i32 @dx.op.binary.i32(i32 38, i32 %6038, i32 31)  ; IMin(a,b)
  %6040 = sub nsw i32 1, %6015
  %6041 = add nsw i32 %6040, %6016
  %6042 = call i32 @dx.op.binary.i32(i32 37, i32 %6041, i32 0)  ; IMax(a,b)
  %6043 = call i32 @dx.op.binary.i32(i32 38, i32 %6042, i32 32)  ; IMin(a,b)
  %6044 = and i32 %6043, 31
  %6045 = shl i32 -1, %6044
  %6046 = xor i32 %6045, -1
  %6047 = and i32 %6039, 31
  %6048 = shl i32 %6046, %6047
  %6049 = icmp eq i32 %6043, 32
  %6050 = select i1 %6049, i32 -1, i32 %6048
  %6051 = and i32 %6050, %6035
  %6052 = icmp eq i32 %6051, 0
  br i1 %6052, label %6418, label %6053

; <label>:6053                                    ; preds = %6022
  br label %6054

; <label>:6054                                    ; preds = %6134, %6053
  %6055 = phi i32 [ %6066, %6134 ], [ %6051, %6053 ]
  %6056 = phi float [ %6135, %6134 ], [ %6024, %6053 ]
  %6057 = phi float [ %6136, %6134 ], [ %6025, %6053 ]
  %6058 = phi float [ %6137, %6134 ], [ %6026, %6053 ]
  %6059 = phi float [ %6138, %6134 ], [ %6027, %6053 ]
  %6060 = phi float [ %6139, %6134 ], [ %6028, %6053 ]
  %6061 = phi float [ %6140, %6134 ], [ %6029, %6053 ]
  %6062 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6055)  ; FirstbitLo(value)
  %6063 = add i32 %6062, %6036
  %6064 = and i32 %6062, 31
  %6065 = shl i32 1, %6064
  %6066 = xor i32 %6065, %6055
  %6067 = mul i32 %6063, 112
  %6068 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6067, i32 undef)  ; BufferLoad(srv,index,wot)
  %6069 = extractvalue %dx.types.ResRet.f32 %6068, 0
  %6070 = extractvalue %dx.types.ResRet.f32 %6068, 1
  %6071 = extractvalue %dx.types.ResRet.f32 %6068, 2
  %6072 = or i32 %6067, 12
  %6073 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6072, i32 undef)  ; BufferLoad(srv,index,wot)
  %6074 = extractvalue %dx.types.ResRet.f32 %6073, 0
  %6075 = add i32 %6067, 44
  %6076 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6075, i32 undef)  ; BufferLoad(srv,index,wot)
  %6077 = extractvalue %dx.types.ResRet.f32 %6076, 0
  %6078 = add i32 %6067, 48
  %6079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6078, i32 undef)  ; BufferLoad(srv,index,wot)
  %6080 = extractvalue %dx.types.ResRet.f32 %6079, 0
  %6081 = extractvalue %dx.types.ResRet.f32 %6079, 1
  %6082 = extractvalue %dx.types.ResRet.f32 %6079, 2
  %6083 = add i32 %6067, 80
  %6084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6083, i32 undef)  ; BufferLoad(srv,index,wot)
  %6085 = extractvalue %dx.types.ResRet.f32 %6084, 1
  %6086 = extractvalue %dx.types.ResRet.f32 %6084, 2
  %6087 = call float @dx.op.dot3.f32(i32 55, float %6069, float %6070, float %6071, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6088 = select i1 %214, float %6085, float %6069
  %6089 = select i1 %214, float %6087, float %6070
  %6090 = select i1 %214, float %6086, float %6071
  %6091 = fsub fast float %6080, %140
  %6092 = fsub fast float %6081, %141
  %6093 = fsub fast float %6082, %142
  %6094 = call float @dx.op.dot3.f32(i32 55, float %6091, float %6092, float %6093, float %6091, float %6092, float %6093)  ; Dot3(ax,ay,az,bx,by,bz)
  %6095 = call float @dx.op.unary.f32(i32 24, float %6094)  ; Sqrt(value)
  %6096 = fdiv fast float 1.000000e+00, %6095
  %6097 = fmul fast float %6096, %6091
  %6098 = fmul fast float %6096, %6092
  %6099 = fmul fast float %6096, %6093
  %6100 = fadd fast float %6095, %6074
  %6101 = fdiv fast float 1.000000e+00, %6100
  %6102 = fmul float %6077, %6101
  %6103 = fmul float %6102, %6102
  %6104 = call float @dx.op.unary.f32(i32 7, float %6103)  ; Saturate(value)
  %6105 = and i32 %6065, %6051
  %6106 = icmp eq i32 %6105, 0
  br i1 %6106, label %6129, label %6107, !dx.controlflow.hints !88

; <label>:6107                                    ; preds = %6054
  %6108 = lshr i32 %5999, 5
  %6109 = lshr i32 %6000, 5
  %6110 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6108, i32 %6109, i32 %6063, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6111 = extractvalue %dx.types.ResRet.i32 %6110, 0
  %6112 = and i32 %6111, 3
  %6113 = icmp eq i32 %6112, 0
  %6114 = select i1 %6113, float 1.000000e+00, float 0.000000e+00
  %6115 = icmp eq i32 %6112, 3
  br i1 %6115, label %6116, label %6129

; <label>:6116                                    ; preds = %6107
  %6117 = lshr i32 %6111, 10
  %6118 = and i32 %6117, 8160
  %6119 = and i32 %6000, 31
  %6120 = or i32 %6118, %6119
  %6121 = lshr i32 %6111, 1
  %6122 = and i32 %6121, 16352
  %6123 = and i32 %5999, 31
  %6124 = or i32 %6122, %6123
  %6125 = lshr i32 %6111, 23
  %6126 = and i32 %6125, 255
  %6127 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6124, i32 %6120, i32 %6126, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6128 = extractvalue %dx.types.ResRet.f32 %6127, 0
  br label %6129

; <label>:6129                                    ; preds = %6116, %6107, %6054
  %6130 = phi float [ %6128, %6116 ], [ %6114, %6107 ], [ 0.000000e+00, %6054 ]
  %6131 = call float @dx.op.binary.f32(i32 36, float %6130, float %6130)  ; FMin(a,b)
  %6132 = call float @dx.op.binary.f32(i32 36, float %6130, float %6131)  ; FMin(a,b)
  %6133 = fcmp fast ogt float %6132, 0.000000e+00
  br i1 %6133, label %6142, label %6134, !dx.controlflow.hints !89

; <label>:6134                                    ; preds = %6374, %6129
  %6135 = phi float [ %6056, %6129 ], [ %6414, %6374 ]
  %6136 = phi float [ %6057, %6129 ], [ %6415, %6374 ]
  %6137 = phi float [ %6058, %6129 ], [ %6416, %6374 ]
  %6138 = phi float [ %6059, %6129 ], [ %6408, %6374 ]
  %6139 = phi float [ %6060, %6129 ], [ %6409, %6374 ]
  %6140 = phi float [ %6061, %6129 ], [ %6410, %6374 ]
  %6141 = icmp eq i32 %6055, %6065
  br i1 %6141, label %6417, label %6054

; <label>:6142                                    ; preds = %6129
  %6143 = fmul fast float %6130, %6088
  %6144 = fmul fast float %6130, %6089
  %6145 = fmul fast float %6130, %6090
  %6146 = fsub fast float %6082, %4458
  %6147 = fcmp fast ogt float %6146, 0.000000e+00
  %6148 = fsub fast float %142, %4458
  %6149 = fcmp fast ogt float %6148, 0.000000e+00
  %6150 = xor i1 %6149, %6147
  %6151 = fsub fast float %4458, %6082
  %6152 = fmul fast float %6151, 2.000000e+00
  %6153 = fadd fast float %6152, %6082
  %6154 = select i1 %6150, float %6082, float %6153
  %6155 = fsub fast float %6154, %142
  %6156 = call float @dx.op.dot3.f32(i32 55, float %6091, float %6092, float %6155, float %6091, float %6092, float %6155)  ; Dot3(ax,ay,az,bx,by,bz)
  %6157 = call float @dx.op.unary.f32(i32 25, float %6156)  ; Rsqrt(value)
  %6158 = fmul fast float %6157, %6091
  %6159 = fmul fast float %6157, %6092
  %6160 = fmul fast float %6157, %6155
  %6161 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4466)  ; Dot3(ax,ay,az,bx,by,bz)
  %6162 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6158, float %6159, float %6160)  ; Dot3(ax,ay,az,bx,by,bz)
  %6163 = fdiv fast float 1.000000e+00, %6162
  %6164 = fmul fast float %6163, %6161
  %6165 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6148, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6166 = fcmp fast ogt float %6165, 0.000000e+00
  %6167 = fcmp fast olt float %6165, 0.000000e+00
  %6168 = zext i1 %6166 to i32
  %6169 = zext i1 %6167 to i32
  %6170 = sub nsw i32 %6168, %6169
  %6171 = sitofp i32 %6170 to float
  %6172 = fsub fast float %6154, %4458
  %6173 = call float @dx.op.dot3.f32(i32 55, float %6091, float %6092, float %6172, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6174 = fcmp fast ogt float %6173, 0.000000e+00
  %6175 = fcmp fast olt float %6173, 0.000000e+00
  %6176 = zext i1 %6174 to i32
  %6177 = zext i1 %6175 to i32
  %6178 = sub nsw i32 %6176, %6177
  %6179 = sitofp i32 %6178 to float
  %6180 = fcmp fast une float %6171, %6179
  br i1 %6180, label %6181, label %6191

; <label>:6181                                    ; preds = %6142
  %6182 = fmul fast float %6164, %6160
  %6183 = fmul fast float %6164, %6159
  %6184 = fmul fast float %6164, %6158
  %6185 = fmul fast float %6184, %6184
  %6186 = fmul fast float %6183, %6183
  %6187 = fadd fast float %6185, %6186
  %6188 = fmul fast float %6182, %6182
  %6189 = fadd fast float %6187, %6188
  %6190 = call float @dx.op.unary.f32(i32 24, float %6189)  ; Sqrt(value)
  br label %6203

; <label>:6191                                    ; preds = %6142
  %6192 = icmp slt i32 %6170, 0
  br i1 %6192, label %6193, label %6203

; <label>:6193                                    ; preds = %6191
  %6194 = fsub fast float %140, %6080
  %6195 = fsub fast float %141, %6081
  %6196 = fsub fast float %142, %6154
  %6197 = fmul fast float %6194, %6194
  %6198 = fmul fast float %6195, %6195
  %6199 = fadd fast float %6197, %6198
  %6200 = fmul fast float %6196, %6196
  %6201 = fadd fast float %6199, %6200
  %6202 = call float @dx.op.unary.f32(i32 24, float %6201)  ; Sqrt(value)
  br label %6203

; <label>:6203                                    ; preds = %6193, %6191, %6181
  %6204 = phi float [ %6190, %6181 ], [ %6202, %6193 ], [ 0.000000e+00, %6191 ]
  %6205 = and i1 %6149, %6147
  %6206 = fsub fast float -0.000000e+00, %6204
  %6207 = select i1 %6205, float -0.000000e+00, float %6206
  %6208 = fmul fast float %4459, 0x3FF7154760000000
  %6209 = fmul fast float %6208, %6207
  %6210 = fmul fast float %4460, 0x3FF7154760000000
  %6211 = fmul fast float %6210, %6207
  %6212 = fmul fast float %4461, 0x3FF7154760000000
  %6213 = fmul fast float %6212, %6207
  %6214 = call float @dx.op.unary.f32(i32 21, float %6209)  ; Exp(value)
  %6215 = call float @dx.op.unary.f32(i32 21, float %6211)  ; Exp(value)
  %6216 = call float @dx.op.unary.f32(i32 21, float %6213)  ; Exp(value)
  %6217 = call float @dx.op.unary.f32(i32 7, float %6214)  ; Saturate(value)
  %6218 = call float @dx.op.unary.f32(i32 7, float %6215)  ; Saturate(value)
  %6219 = call float @dx.op.unary.f32(i32 7, float %6216)  ; Saturate(value)
  %6220 = fmul fast float %6143, %6217
  %6221 = fmul fast float %6144, %6218
  %6222 = fmul fast float %6145, %6219
  %6223 = fsub fast float %6097, %160
  %6224 = fsub fast float %6098, %161
  %6225 = fsub fast float %6099, %162
  %6226 = call float @dx.op.dot3.f32(i32 55, float %6223, float %6224, float %6225, float %6223, float %6224, float %6225)  ; Dot3(ax,ay,az,bx,by,bz)
  %6227 = call float @dx.op.unary.f32(i32 25, float %6226)  ; Rsqrt(value)
  %6228 = fmul fast float %6227, %6223
  %6229 = fmul fast float %6227, %6224
  %6230 = fmul fast float %6227, %6225
  %6231 = call float @dx.op.dot3.f32(i32 55, float %6097, float %6098, float %6099, float %4644, float %4645, float %4646)  ; Dot3(ax,ay,az,bx,by,bz)
  %6232 = call float @dx.op.dot3.f32(i32 55, float %4475, float %4476, float %4477, float %6228, float %6229, float %6230)  ; Dot3(ax,ay,az,bx,by,bz)
  %6233 = call float @dx.op.unary.f32(i32 7, float %6231)  ; Saturate(value)
  %6234 = fmul fast float %6233, %6104
  %6235 = fmul fast float %6233, %6233
  %6236 = fmul fast float %6235, %4694
  %6237 = call float @dx.op.unary.f32(i32 7, float %6236)  ; Saturate(value)
  %6238 = fmul fast float %6234, %6237
  %6239 = bitcast float %6094 to i32
  %6240 = ashr i32 %6239, 1
  %6241 = sub nsw i32 1597463007, %6240
  %6242 = bitcast i32 %6241 to float
  %6243 = fmul fast float %6242, %6091
  %6244 = fmul fast float %6242, %6092
  %6245 = fmul fast float %6242, %6093
  %6246 = fsub fast float %6243, %160
  %6247 = fsub fast float %6244, %161
  %6248 = fsub fast float %6245, %162
  %6249 = call float @dx.op.dot3.f32(i32 55, float %6246, float %6247, float %6248, float %6246, float %6247, float %6248)  ; Dot3(ax,ay,az,bx,by,bz)
  %6250 = call float @dx.op.unary.f32(i32 25, float %6249)  ; Rsqrt(value)
  %6251 = fmul fast float %6246, %6250
  %6252 = fmul fast float %6247, %6250
  %6253 = fmul fast float %6248, %6250
  %6254 = call float @dx.op.dot3.f32(i32 55, float %4644, float %4645, float %4646, float %6251, float %6252, float %6253)  ; Dot3(ax,ay,az,bx,by,bz)
  %6255 = fmul fast float %6254, %6254
  %6256 = call float @dx.op.unary.f32(i32 6, float %6231)  ; FAbs(value)
  %6257 = fsub fast float 1.000000e+00, %4687
  %6258 = fmul fast float %4669, %4669
  %6259 = fmul fast float %6258, %6257
  %6260 = fadd fast float %6259, %4687
  %6261 = bitcast float %6260 to i32
  %6262 = ashr i32 %6261, 1
  %6263 = add nsw i32 %6262, 532487669
  %6264 = bitcast i32 %6263 to float
  %6265 = fadd fast float %6264, %4669
  %6266 = fmul fast float %4687, %6255
  %6267 = fsub fast float 1.000000e+00, %6255
  %6268 = fadd fast float %6267, %6266
  %6269 = fmul fast float %6256, %6256
  %6270 = fmul fast float %6269, %6257
  %6271 = fadd fast float %6270, %4687
  %6272 = bitcast float %6271 to i32
  %6273 = ashr i32 %6272, 1
  %6274 = add nsw i32 %6273, 532487669
  %6275 = bitcast i32 %6274 to float
  %6276 = fadd fast float %6275, %6256
  %6277 = fmul fast float %6268, %6268
  %6278 = fmul fast float %6277, %6265
  %6279 = fmul fast float %6278, %6276
  %6280 = fdiv fast float 1.000000e+00, %6279
  %6281 = bitcast float %4687 to i32
  %6282 = sitofp i32 %6281 to float
  %6283 = fmul fast float %6282, 0x3FE7F73180000000
  %6284 = fadd fast float %6283, 0x41AFE27C40000000
  %6285 = fptosi float %6284 to i32
  %6286 = bitcast i32 %6285 to float
  %6287 = fmul fast float %6077, 0x3FD80E9D60000000
  %6288 = fmul fast float %6287, %6242
  %6289 = fadd fast float %6286, %6288
  %6290 = bitcast float %6289 to i32
  %6291 = sub nsw i32 2129859010, %6290
  %6292 = bitcast i32 %6291 to float
  %6293 = fmul fast float %4687, %6280
  %6294 = fmul fast float %6293, %6286
  %6295 = fmul fast float %6294, %6292
  %6296 = call float @dx.op.unary.f32(i32 6, float %6232)  ; FAbs(value)
  %6297 = fsub fast float 1.000000e+00, %6296
  %6298 = bitcast float %6297 to i32
  %6299 = sitofp i32 %6298 to float
  %6300 = fmul fast float %6299, 5.000000e+00
  %6301 = fadd fast float %6300, 0xC1EFBF8940000000
  %6302 = fptosi float %6301 to i32
  %6303 = bitcast i32 %6302 to float
  %6304 = fsub fast float 1.000000e+00, %4641
  %6305 = fsub fast float 1.000000e+00, %4642
  %6306 = fsub fast float 1.000000e+00, %4667
  %6307 = fmul fast float %6303, %6304
  %6308 = fmul fast float %6303, %6305
  %6309 = fmul fast float %6303, %6306
  %6310 = fadd fast float %6307, %4641
  %6311 = fadd fast float %6308, %4642
  %6312 = fadd fast float %6309, %4667
  br i1 %4806, label %6313, label %6336

; <label>:6313                                    ; preds = %6203
  %6314 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4014, float %6296, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6315 = extractvalue %dx.types.ResRet.f32 %6314, 0
  %6316 = extractvalue %dx.types.ResRet.f32 %6314, 1
  %6317 = extractvalue %dx.types.ResRet.f32 %6314, 2
  %6318 = fadd fast float %6315, -5.000000e-01
  %6319 = fadd fast float %6316, -5.000000e-01
  %6320 = fadd fast float %6317, -5.000000e-01
  %6321 = fmul fast float %4641, 4.000000e+00
  %6322 = fmul fast float %6321, %6304
  %6323 = fmul fast float %6322, %6318
  %6324 = fmul fast float %4642, 4.000000e+00
  %6325 = fmul fast float %6324, %6305
  %6326 = fmul fast float %6325, %6319
  %6327 = fmul fast float %4667, 4.000000e+00
  %6328 = fmul fast float %6327, %6306
  %6329 = fmul fast float %6328, %6320
  %6330 = fadd fast float %6323, %6310
  %6331 = fadd fast float %6326, %6311
  %6332 = fadd fast float %6329, %6312
  %6333 = call float @dx.op.unary.f32(i32 7, float %6330)  ; Saturate(value)
  %6334 = call float @dx.op.unary.f32(i32 7, float %6331)  ; Saturate(value)
  %6335 = call float @dx.op.unary.f32(i32 7, float %6332)  ; Saturate(value)
  br label %6336

; <label>:6336                                    ; preds = %6313, %6203
  %6337 = phi float [ %6333, %6313 ], [ %6310, %6203 ]
  %6338 = phi float [ %6334, %6313 ], [ %6311, %6203 ]
  %6339 = phi float [ %6335, %6313 ], [ %6312, %6203 ]
  %6340 = fmul fast float %6231, 9.843750e-01
  %6341 = fadd fast float %6340, 7.812500e-03
  %6342 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6341, float %4796, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6343 = extractvalue %dx.types.ResRet.f32 %6342, 2
  %6344 = extractvalue %dx.types.ResRet.f32 %6342, 3
  %6345 = fmul fast float %6343, %4641
  %6346 = fmul fast float %6343, %4642
  %6347 = fmul fast float %6343, %4667
  %6348 = fadd fast float %6345, %6344
  %6349 = fadd fast float %6346, %6344
  %6350 = fadd fast float %6347, %6344
  br i1 %4806, label %6351, label %6374

; <label>:6351                                    ; preds = %6336
  %6352 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4014, float %6231, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6353 = extractvalue %dx.types.ResRet.f32 %6352, 0
  %6354 = extractvalue %dx.types.ResRet.f32 %6352, 1
  %6355 = extractvalue %dx.types.ResRet.f32 %6352, 2
  %6356 = fadd fast float %6353, -5.000000e-01
  %6357 = fadd fast float %6354, -5.000000e-01
  %6358 = fadd fast float %6355, -5.000000e-01
  %6359 = fmul fast float %4641, 4.000000e+00
  %6360 = fmul fast float %6359, %6304
  %6361 = fmul fast float %6360, %6356
  %6362 = fmul fast float %4642, 4.000000e+00
  %6363 = fmul fast float %6362, %6305
  %6364 = fmul fast float %6363, %6357
  %6365 = fmul fast float %4667, 4.000000e+00
  %6366 = fmul fast float %6365, %6306
  %6367 = fmul fast float %6366, %6358
  %6368 = fadd fast float %6361, %6348
  %6369 = fadd fast float %6364, %6349
  %6370 = fadd fast float %6367, %6350
  %6371 = call float @dx.op.unary.f32(i32 7, float %6368)  ; Saturate(value)
  %6372 = call float @dx.op.unary.f32(i32 7, float %6369)  ; Saturate(value)
  %6373 = call float @dx.op.unary.f32(i32 7, float %6370)  ; Saturate(value)
  br label %6374

; <label>:6374                                    ; preds = %6351, %6336
  %6375 = phi float [ %6371, %6351 ], [ %6348, %6336 ]
  %6376 = phi float [ %6372, %6351 ], [ %6349, %6336 ]
  %6377 = phi float [ %6373, %6351 ], [ %6350, %6336 ]
  %6378 = call float @dx.op.binary.f32(i32 35, float %6376, float %6377)  ; FMax(a,b)
  %6379 = call float @dx.op.binary.f32(i32 35, float %6375, float %6378)  ; FMax(a,b)
  %6380 = fsub fast float 1.000000e+00, %6379
  %6381 = fmul fast float %6337, %6295
  %6382 = fmul fast float %6338, %6295
  %6383 = fmul fast float %6339, %6295
  %6384 = fsub fast float 1.000000e+00, %6232
  %6385 = bitcast float %6384 to i32
  %6386 = sitofp i32 %6385 to float
  %6387 = fmul fast float %6386, 5.000000e+00
  %6388 = fadd fast float %6387, 0xC1EFBF8940000000
  %6389 = fptosi float %6388 to i32
  %6390 = bitcast i32 %6389 to float
  %6391 = fmul fast float %6390, %4013
  %6392 = fmul fast float %6380, %6391
  %6393 = fmul fast float %6392, %5732
  %6394 = fmul fast float %6392, %5733
  %6395 = fmul fast float %6392, %5734
  %6396 = fadd fast float %6393, %6381
  %6397 = fadd fast float %6394, %6382
  %6398 = fadd fast float %6395, %6383
  %6399 = fmul fast float %6220, %4061
  %6400 = fmul fast float %6399, %6238
  %6401 = fmul fast float %6400, %6380
  %6402 = fmul fast float %6221, %4061
  %6403 = fmul fast float %6402, %6238
  %6404 = fmul fast float %6403, %6380
  %6405 = fmul fast float %6222, %4061
  %6406 = fmul fast float %6405, %6238
  %6407 = fmul fast float %6406, %6380
  %6408 = fadd fast float %6401, %6059
  %6409 = fadd fast float %6404, %6060
  %6410 = fadd fast float %6407, %6061
  %6411 = fmul fast float %6400, %6396
  %6412 = fmul fast float %6403, %6397
  %6413 = fmul fast float %6406, %6398
  %6414 = fadd fast float %6411, %6056
  %6415 = fadd fast float %6412, %6057
  %6416 = fadd fast float %6413, %6058
  br label %6134

; <label>:6417                                    ; preds = %6134
  br label %6418

; <label>:6418                                    ; preds = %6417, %6022
  %6419 = phi float [ %6024, %6022 ], [ %6135, %6417 ]
  %6420 = phi float [ %6025, %6022 ], [ %6136, %6417 ]
  %6421 = phi float [ %6026, %6022 ], [ %6137, %6417 ]
  %6422 = phi float [ %6027, %6022 ], [ %6138, %6417 ]
  %6423 = phi float [ %6028, %6022 ], [ %6139, %6417 ]
  %6424 = phi float [ %6029, %6022 ], [ %6140, %6417 ]
  %6425 = add i32 %6023, 1
  %6426 = icmp ugt i32 %6425, %6019
  br i1 %6426, label %6427, label %6022

; <label>:6427                                    ; preds = %6418
  br label %6428

; <label>:6428                                    ; preds = %6427, %5998, %5988
  %6429 = phi float [ %5989, %5988 ], [ %5989, %5998 ], [ %6419, %6427 ]
  %6430 = phi float [ %5990, %5988 ], [ %5990, %5998 ], [ %6420, %6427 ]
  %6431 = phi float [ %5991, %5988 ], [ %5991, %5998 ], [ %6421, %6427 ]
  %6432 = phi float [ %5992, %5988 ], [ %5992, %5998 ], [ %6422, %6427 ]
  %6433 = phi float [ %5993, %5988 ], [ %5993, %5998 ], [ %6423, %6427 ]
  %6434 = phi float [ %5994, %5988 ], [ %5994, %5998 ], [ %6424, %6427 ]
  %6435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %4040, i32 undef)  ; BufferLoad(srv,index,wot)
  %6436 = extractvalue %dx.types.ResRet.i32 %6435, 3
  %6437 = bitcast i32 %6436 to float
  %6438 = fsub fast float 1.000000e+00, %6437
  %6439 = fmul fast float %6438, %174
  %6440 = fadd fast float %6439, %6437
  %6441 = call float @dx.op.unary.f32(i32 24, float %4647)  ; Sqrt(value)
  %6442 = call float @dx.op.unary.f32(i32 24, float %4648)  ; Sqrt(value)
  %6443 = call float @dx.op.unary.f32(i32 24, float %4649)  ; Sqrt(value)
  %6444 = fmul fast float %6441, %6432
  %6445 = fmul fast float %6442, %6433
  %6446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6447 = extractvalue %dx.types.CBufRet.f32 %6446, 0
  br i1 %214, label %6448, label %6480

; <label>:6448                                    ; preds = %6428
  %6449 = fadd fast float %6434, %4011
  %6450 = fmul fast float %6449, %4012
  %6451 = fsub fast float 1.000000e+00, %4012
  %6452 = call float @dx.op.unary.f32(i32 7, float %6451)  ; Saturate(value)
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 3
  %6455 = fmul fast float %6454, %6452
  %6456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6457 = extractvalue %dx.types.CBufRet.f32 %6456, 0
  %6458 = fmul fast float %6457, %5738
  %6459 = extractvalue %dx.types.CBufRet.f32 %6456, 2
  %6460 = fmul fast float %6459, %4665
  %6461 = fadd fast float %6445, %6444
  %6462 = fmul fast float %6447, %6461
  %6463 = extractvalue %dx.types.CBufRet.f32 %6453, 1
  %6464 = fadd fast float %6455, %6450
  %6465 = fsub fast float %6464, %6458
  %6466 = fadd fast float %6465, %6460
  %6467 = fsub fast float %6466, %6463
  %6468 = extractvalue %dx.types.CBufRet.f32 %6453, 2
  %6469 = fmul fast float %6467, %6468
  %6470 = call float @dx.op.unary.f32(i32 7, float %6469)  ; Saturate(value)
  %6471 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 236)  ; CBufferLoadLegacy(handle,regIndex)
  %6472 = extractvalue %dx.types.CBufRet.f32 %6471, 0
  %6473 = fsub fast float %6470, %6472
  %6474 = fmul fast float %6473, 1.000000e+01
  %6475 = call float @dx.op.unary.f32(i32 7, float %6474)  ; Saturate(value)
  %6476 = fsub fast float %4010, %6440
  %6477 = fmul fast float %6475, %6476
  %6478 = fadd fast float %6477, %6440
  %6479 = fmul fast float %6478, %6470
  br label %6496

; <label>:6480                                    ; preds = %6428
  %6481 = fmul fast float %6443, %6434
  %6482 = fmul fast float %6447, %6444
  %6483 = fmul fast float %6447, %6445
  %6484 = fmul fast float %6481, %6447
  %6485 = add i32 %43, 356
  %6486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6485, i32 undef)  ; BufferLoad(srv,index,wot)
  %6487 = extractvalue %dx.types.ResRet.i32 %6486, 0
  %6488 = and i32 %6487, 32
  %6489 = icmp eq i32 %6488, 0
  br i1 %6489, label %6496, label %6490

; <label>:6490                                    ; preds = %6480
  %6491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6492 = extractvalue %dx.types.CBufRet.f32 %6491, 0
  %6493 = fmul fast float %6492, 0x3FE99999A0000000
  %6494 = fadd fast float %6492, %6482
  %6495 = fadd fast float %6493, %6484
  br label %6496

; <label>:6496                                    ; preds = %6490, %6480, %6448
  %6497 = phi float [ %6462, %6448 ], [ %6494, %6490 ], [ %6482, %6480 ]
  %6498 = phi float [ %6479, %6448 ], [ %6483, %6490 ], [ %6483, %6480 ]
  %6499 = phi float [ %6478, %6448 ], [ %6495, %6490 ], [ %6484, %6480 ]
  %6500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6501 = extractvalue %dx.types.CBufRet.f32 %6500, 0
  %6502 = fmul fast float %6501, %6430
  %6503 = fmul fast float %6501, %6431
  %6504 = fadd fast float %6430, %6429
  %6505 = select i1 %214, float %6504, float %6429
  %6506 = fmul float %6505, %6501
  %6507 = select i1 %214, float 0.000000e+00, float %6502
  %6508 = select i1 %214, float 0.000000e+00, float %6503
  %6509 = fmul fast float %6497, %6441
  %6510 = fmul fast float %6498, %6442
  %6511 = fmul fast float %6499, %6443
  %6512 = fadd fast float %6506, %6509
  %6513 = fadd fast float %6507, %6510
  %6514 = fadd fast float %6508, %6511
  %6515 = select i1 %214, float %6498, float %6513
  %6516 = select i1 %214, float %6499, float %6514
  %6517 = call float @dx.op.binary.f32(i32 36, float %6512, float 3.225500e+04)  ; FMin(a,b)
  %6518 = call float @dx.op.binary.f32(i32 36, float %6515, float 3.225500e+04)  ; FMin(a,b)
  %6519 = call float @dx.op.binary.f32(i32 36, float %6516, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6517)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6518)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6519)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 0]}
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
!77 = !{i32 3, i32 5}
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

