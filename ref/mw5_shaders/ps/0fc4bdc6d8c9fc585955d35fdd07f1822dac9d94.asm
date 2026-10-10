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
; shader hash: 00eec370be03314ff98471d024cad5b7
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
  %143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %144 = extractvalue %dx.types.CBufRet.f32 %143, 2
  %145 = extractvalue %dx.types.CBufRet.f32 %143, 3
  %146 = fmul fast float %144, %77
  %147 = fmul fast float %145, %78
  %148 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %149 = extractvalue %dx.types.ResRet.i32 %148, 0
  %150 = and i32 %149, 114688
  %151 = icmp ne i32 %150, 0
  %152 = select i1 %151, float %146, float 0.000000e+00
  %153 = select i1 %151, float %147, float 0.000000e+00
  %154 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %152, float %153, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %155 = extractvalue %dx.types.ResRet.f32 %154, 0
  %156 = fmul fast float %155, 2.550000e+02
  %157 = fptoui float %156 to i32
  %158 = select i1 %151, i32 %157, i32 0
  %159 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %160 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %161 = extractvalue %dx.types.CBufRet.i32 %160, 3
  %162 = and i32 %161, 3
  %163 = icmp ne i32 %162, 0
  %164 = and i32 %161, 4
  %165 = icmp ne i32 %164, 0
  %166 = and i1 %163, %165
  br i1 %166, label %167, label %178

; <label>:167                                     ; preds = %0
  %168 = extractvalue %dx.types.CBufRet.f32 %159, 3
  %169 = fmul fast float %168, %78
  %170 = extractvalue %dx.types.CBufRet.f32 %159, 2
  %171 = fmul fast float %170, %77
  %172 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %171, float %169, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %173 = extractvalue %dx.types.ResRet.f32 %172, 0
  %174 = fsub fast float 1.000000e+00, %173
  %175 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %176 = extractvalue %dx.types.CBufRet.f32 %175, 0
  %177 = fcmp fast olt float %174, %176
  br label %181

; <label>:178                                     ; preds = %0
  %179 = icmp eq i32 %164, 0
  %180 = and i1 %163, %179
  br label %181

; <label>:181                                     ; preds = %178, %167
  %182 = phi i1 [ %177, %167 ], [ %180, %178 ]
  %183 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %184 = extractvalue %dx.types.CBufRet.f32 %183, 2
  %185 = fmul fast float %184, 0x3FE3C6EF40000000
  %186 = frem fast float %77, 2.560000e+02
  %187 = frem fast float %78, 2.560000e+02
  %188 = fptoui float %186 to i32
  %189 = fptoui float %187 to i32
  %190 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %188, i32 %189, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %191 = extractvalue %dx.types.ResRet.f32 %190, 0
  %192 = extractvalue %dx.types.ResRet.f32 %190, 1
  %193 = fadd fast float %191, %185
  %194 = fadd fast float %192, %185
  %195 = call float @dx.op.unary.f32(i32 22, float %193)  ; Frc(value)
  %196 = call float @dx.op.unary.f32(i32 22, float %194)  ; Frc(value)
  %197 = add i32 %43, 156
  %198 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %197, i32 undef)  ; BufferLoad(srv,index,wot)
  %199 = extractvalue %dx.types.ResRet.i32 %198, 0
  %200 = shl i32 %199, 4
  %201 = and i32 %200, 32752
  %202 = call float @dx.op.legacyF16ToF32(i32 131, i32 %201)  ; LegacyF16ToF32(value)
  %203 = lshr i32 %199, 7
  %204 = and i32 %203, 32752
  %205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %204)  ; LegacyF16ToF32(value)
  %206 = lshr i32 %199, 22
  %207 = shl nuw nsw i32 %206, 5
  %208 = call float @dx.op.legacyF16ToF32(i32 131, i32 %207)  ; LegacyF16ToF32(value)
  %209 = add i32 %43, 216
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = and i32 %211, 255
  %213 = uitofp i32 %212 to float
  %214 = fmul fast float %213, 0x3F70101020000000
  %215 = lshr i32 %211, 8
  %216 = and i32 %215, 255
  %217 = uitofp i32 %216 to float
  %218 = fmul fast float %217, 0x3F70101020000000
  %219 = lshr i32 %211, 16
  %220 = and i32 %219, 255
  %221 = uitofp i32 %220 to float
  %222 = fmul fast float %221, 0x3F70101020000000
  %223 = add i32 %43, 36
  %224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %223, i32 undef)  ; BufferLoad(srv,index,wot)
  %225 = extractvalue %dx.types.ResRet.i32 %224, 0
  %226 = and i32 %225, 65535
  %227 = call float @dx.op.legacyF16ToF32(i32 131, i32 %226)  ; LegacyF16ToF32(value)
  %228 = lshr i32 %225, 16
  %229 = call float @dx.op.legacyF16ToF32(i32 131, i32 %228)  ; LegacyF16ToF32(value)
  %230 = add i32 %43, 288
  %231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %230, i32 undef)  ; BufferLoad(srv,index,wot)
  %232 = extractvalue %dx.types.ResRet.i32 %231, 0
  %233 = and i32 %232, 65535
  %234 = call float @dx.op.legacyF16ToF32(i32 131, i32 %233)  ; LegacyF16ToF32(value)
  %235 = lshr i32 %232, 16
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = fmul fast float %234, 0x3F50624DE0000000
  %238 = fmul fast float %236, 0x3F50624DE0000000
  %239 = add i32 %43, 172
  %240 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %239, i32 undef)  ; BufferLoad(srv,index,wot)
  %241 = extractvalue %dx.types.ResRet.i32 %240, 0
  %242 = shl i32 %241, 4
  %243 = and i32 %242, 32752
  %244 = call float @dx.op.legacyF16ToF32(i32 131, i32 %243)  ; LegacyF16ToF32(value)
  %245 = lshr i32 %241, 7
  %246 = and i32 %245, 32752
  %247 = call float @dx.op.legacyF16ToF32(i32 131, i32 %246)  ; LegacyF16ToF32(value)
  %248 = lshr i32 %241, 22
  %249 = shl nuw nsw i32 %248, 5
  %250 = call float @dx.op.legacyF16ToF32(i32 131, i32 %249)  ; LegacyF16ToF32(value)
  %251 = add i32 %43, 232
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 255
  %255 = uitofp i32 %254 to float
  %256 = fmul fast float %255, 0x3F70101020000000
  %257 = lshr i32 %253, 8
  %258 = and i32 %257, 255
  %259 = uitofp i32 %258 to float
  %260 = fmul fast float %259, 0x3F70101020000000
  %261 = lshr i32 %253, 16
  %262 = and i32 %261, 255
  %263 = uitofp i32 %262 to float
  %264 = fmul fast float %263, 0x3F70101020000000
  %265 = add i32 %43, 52
  %266 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %265, i32 undef)  ; BufferLoad(srv,index,wot)
  %267 = extractvalue %dx.types.ResRet.i32 %266, 0
  %268 = and i32 %267, 65535
  %269 = call float @dx.op.legacyF16ToF32(i32 131, i32 %268)  ; LegacyF16ToF32(value)
  %270 = lshr i32 %267, 16
  %271 = call float @dx.op.legacyF16ToF32(i32 131, i32 %270)  ; LegacyF16ToF32(value)
  %272 = add i32 %43, 304
  %273 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %272, i32 undef)  ; BufferLoad(srv,index,wot)
  %274 = extractvalue %dx.types.ResRet.i32 %273, 0
  %275 = and i32 %274, 65535
  %276 = call float @dx.op.legacyF16ToF32(i32 131, i32 %275)  ; LegacyF16ToF32(value)
  %277 = lshr i32 %274, 16
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = fmul fast float %276, 0x3F50624DE0000000
  %280 = fmul fast float %278, 0x3F50624DE0000000
  %281 = add i32 %43, 188
  %282 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %281, i32 undef)  ; BufferLoad(srv,index,wot)
  %283 = extractvalue %dx.types.ResRet.i32 %282, 0
  %284 = shl i32 %283, 4
  %285 = and i32 %284, 32752
  %286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %285)  ; LegacyF16ToF32(value)
  %287 = lshr i32 %283, 7
  %288 = and i32 %287, 32752
  %289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %288)  ; LegacyF16ToF32(value)
  %290 = lshr i32 %283, 22
  %291 = shl nuw nsw i32 %290, 5
  %292 = call float @dx.op.legacyF16ToF32(i32 131, i32 %291)  ; LegacyF16ToF32(value)
  %293 = add i32 %43, 248
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 255
  %297 = uitofp i32 %296 to float
  %298 = fmul fast float %297, 0x3F70101020000000
  %299 = lshr i32 %295, 8
  %300 = and i32 %299, 255
  %301 = uitofp i32 %300 to float
  %302 = fmul fast float %301, 0x3F70101020000000
  %303 = lshr i32 %295, 16
  %304 = and i32 %303, 255
  %305 = uitofp i32 %304 to float
  %306 = fmul fast float %305, 0x3F70101020000000
  %307 = add i32 %43, 68
  %308 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %307, i32 undef)  ; BufferLoad(srv,index,wot)
  %309 = extractvalue %dx.types.ResRet.i32 %308, 0
  %310 = and i32 %309, 65535
  %311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %310)  ; LegacyF16ToF32(value)
  %312 = lshr i32 %309, 16
  %313 = call float @dx.op.legacyF16ToF32(i32 131, i32 %312)  ; LegacyF16ToF32(value)
  %314 = add i32 %43, 320
  %315 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %314, i32 undef)  ; BufferLoad(srv,index,wot)
  %316 = extractvalue %dx.types.ResRet.i32 %315, 0
  %317 = and i32 %316, 65535
  %318 = call float @dx.op.legacyF16ToF32(i32 131, i32 %317)  ; LegacyF16ToF32(value)
  %319 = lshr i32 %316, 16
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = fmul fast float %318, 0x3F50624DE0000000
  %322 = fmul fast float %320, 0x3F50624DE0000000
  %323 = add i32 %43, 204
  %324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %323, i32 undef)  ; BufferLoad(srv,index,wot)
  %325 = extractvalue %dx.types.ResRet.i32 %324, 0
  %326 = shl i32 %325, 4
  %327 = and i32 %326, 32752
  %328 = call float @dx.op.legacyF16ToF32(i32 131, i32 %327)  ; LegacyF16ToF32(value)
  %329 = lshr i32 %325, 7
  %330 = and i32 %329, 32752
  %331 = call float @dx.op.legacyF16ToF32(i32 131, i32 %330)  ; LegacyF16ToF32(value)
  %332 = lshr i32 %325, 22
  %333 = shl nuw nsw i32 %332, 5
  %334 = call float @dx.op.legacyF16ToF32(i32 131, i32 %333)  ; LegacyF16ToF32(value)
  %335 = add i32 %43, 264
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 255
  %339 = uitofp i32 %338 to float
  %340 = fmul fast float %339, 0x3F70101020000000
  %341 = lshr i32 %337, 8
  %342 = and i32 %341, 255
  %343 = uitofp i32 %342 to float
  %344 = fmul fast float %343, 0x3F70101020000000
  %345 = lshr i32 %337, 16
  %346 = and i32 %345, 255
  %347 = uitofp i32 %346 to float
  %348 = fmul fast float %347, 0x3F70101020000000
  %349 = add i32 %43, 84
  %350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %349, i32 undef)  ; BufferLoad(srv,index,wot)
  %351 = extractvalue %dx.types.ResRet.i32 %350, 0
  %352 = and i32 %351, 65535
  %353 = call float @dx.op.legacyF16ToF32(i32 131, i32 %352)  ; LegacyF16ToF32(value)
  %354 = lshr i32 %351, 16
  %355 = call float @dx.op.legacyF16ToF32(i32 131, i32 %354)  ; LegacyF16ToF32(value)
  %356 = add i32 %43, 336
  %357 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %356, i32 undef)  ; BufferLoad(srv,index,wot)
  %358 = extractvalue %dx.types.ResRet.i32 %357, 0
  %359 = and i32 %358, 65535
  %360 = call float @dx.op.legacyF16ToF32(i32 131, i32 %359)  ; LegacyF16ToF32(value)
  %361 = lshr i32 %358, 16
  %362 = call float @dx.op.legacyF16ToF32(i32 131, i32 %361)  ; LegacyF16ToF32(value)
  %363 = fmul fast float %360, 0x3F50624DE0000000
  %364 = fmul fast float %362, 0x3F50624DE0000000
  %365 = add i32 %43, 348
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = and i32 %367, 32
  %369 = icmp eq i32 %368, 0
  %370 = and i32 %367, 64
  %371 = icmp eq i32 %370, 0
  %372 = and i32 %367, 128
  %373 = icmp eq i32 %372, 0
  %374 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %375 = extractvalue %dx.types.ResRet.i32 %374, 0
  %376 = and i32 %375, 2
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %391, label %378

; <label>:378                                     ; preds = %181
  %379 = add i32 %43, 492
  %380 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %379, i32 undef)  ; BufferLoad(srv,index,wot)
  %381 = extractvalue %dx.types.ResRet.i32 %380, 0
  %382 = add i32 %381, 0
  %383 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %382, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %384 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %383, %dx.types.Handle %74, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %385 = extractvalue %dx.types.ResRet.f32 %384, 0
  %386 = extractvalue %dx.types.ResRet.f32 %384, 1
  %387 = extractvalue %dx.types.ResRet.f32 %384, 2
  %388 = fmul fast float %385, %67
  %389 = fmul fast float %386, %68
  %390 = fmul fast float %387, %69
  br label %391

; <label>:391                                     ; preds = %378, %181
  %392 = phi float [ %69, %181 ], [ %390, %378 ]
  %393 = phi float [ %68, %181 ], [ %389, %378 ]
  %394 = phi float [ %67, %181 ], [ %388, %378 ]
  %395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %396 = extractvalue %dx.types.ResRet.i32 %395, 0
  %397 = and i32 %396, 2
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %418, label %399

; <label>:399                                     ; preds = %391
  %400 = add i32 %43, 44
  %401 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %400, i32 undef)  ; BufferLoad(srv,index,wot)
  %402 = extractvalue %dx.types.ResRet.i32 %401, 0
  %403 = and i32 %402, 1
  %404 = icmp ne i32 %403, 0
  %405 = select i1 %404, float %394, float 1.000000e+00
  %406 = add i32 %43, 60
  %407 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %406, i32 undef)  ; BufferLoad(srv,index,wot)
  %408 = extractvalue %dx.types.ResRet.i32 %407, 0
  %409 = and i32 %408, 1
  %410 = icmp ne i32 %409, 0
  %411 = select i1 %410, float %393, float 1.000000e+00
  %412 = add i32 %43, 76
  %413 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %412, i32 undef)  ; BufferLoad(srv,index,wot)
  %414 = extractvalue %dx.types.ResRet.i32 %413, 0
  %415 = and i32 %414, 1
  %416 = icmp ne i32 %415, 0
  %417 = select i1 %416, float %392, float 1.000000e+00
  br label %418

; <label>:418                                     ; preds = %399, %391
  %419 = phi float [ %392, %391 ], [ %417, %399 ]
  %420 = phi float [ %393, %391 ], [ %411, %399 ]
  %421 = phi float [ %394, %391 ], [ %405, %399 ]
  %422 = lshr i32 %396, 20
  %423 = and i32 %422, 3
  %424 = add nuw nsw i32 %423, 1
  %425 = add i32 %43, 24
  %426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %427 = extractvalue %dx.types.ResRet.i32 %426, 0
  %428 = add i32 %43, 28
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = or i32 %430, %427
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %891, label %433

; <label>:433                                     ; preds = %418
  %434 = and i32 %427, 262144
  %435 = icmp ne i32 %434, 0
  %436 = select i1 %435, float %45, float 1.000000e+00
  %437 = select i1 %435, float %46, float 0.000000e+00
  %438 = select i1 %435, float %47, float 0.000000e+00
  %439 = select i1 %435, float %48, float 1.000000e+00
  %440 = select i1 %435, float %49, float %65
  %441 = select i1 %435, float %50, float %66
  %442 = add i32 %43, 284
  %443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %444 = extractvalue %dx.types.ResRet.i32 %443, 0
  %445 = lshr i32 %444, 16
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = fmul fast float %446, 0x3F50624DE0000000
  %448 = add i32 %43, 88
  %449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %448, i32 undef)  ; BufferLoad(srv,index,wot)
  %450 = extractvalue %dx.types.ResRet.i32 %449, 0
  %451 = lshr i32 %450, 16
  %452 = and i32 %451, 255
  %453 = lshr i32 %450, 24
  %454 = add i32 %43, 292
  %455 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %454, i32 undef)  ; BufferLoad(srv,index,wot)
  %456 = extractvalue %dx.types.ResRet.i32 %455, 0
  %457 = and i32 %456, 65535
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = lshr i32 %456, 16
  %460 = call float @dx.op.legacyF16ToF32(i32 131, i32 %459)  ; LegacyF16ToF32(value)
  %461 = add i32 %43, 32
  %462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %461, i32 undef)  ; BufferLoad(srv,index,wot)
  %463 = extractvalue %dx.types.ResRet.i32 %462, 0
  %464 = lshr i32 %463, 22
  %465 = shl nuw nsw i32 %464, 5
  %466 = call float @dx.op.legacyF16ToF32(i32 131, i32 %465)  ; LegacyF16ToF32(value)
  %467 = shl i32 %463, 4
  %468 = and i32 %467, 32752
  %469 = call float @dx.op.legacyF16ToF32(i32 131, i32 %468)  ; LegacyF16ToF32(value)
  %470 = lshr i32 %463, 7
  %471 = and i32 %470, 32752
  %472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %471)  ; LegacyF16ToF32(value)
  %473 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %474 = extractvalue %dx.types.CBufRet.f32 %473, 3
  %475 = fmul fast float %474, 1.000000e+03
  %476 = fmul fast float %237, %475
  %477 = call float @dx.op.unary.f32(i32 22, float %476)  ; Frc(value)
  %478 = fadd fast float %477, %227
  %479 = fmul fast float %238, %475
  %480 = call float @dx.op.unary.f32(i32 22, float %479)  ; Frc(value)
  %481 = fadd fast float %480, %229
  %482 = fmul fast float %447, %475
  %483 = call float @dx.op.unary.f32(i32 22, float %482)  ; Frc(value)
  %484 = fmul fast float %483, 0x401921FB60000000
  %485 = fadd fast float %484, %466
  %486 = call float @dx.op.unary.f32(i32 13, float %485)  ; Sin(value)
  %487 = call float @dx.op.unary.f32(i32 12, float %485)  ; Cos(value)
  %488 = fsub fast float -0.000000e+00, %486
  %489 = fadd fast float %440, -5.000000e-01
  %490 = fadd fast float %441, -5.000000e-01
  %491 = fmul fast float %458, %489
  %492 = fmul fast float %460, %490
  %493 = fadd fast float %491, 5.000000e-01
  %494 = fadd fast float %492, 5.000000e-01
  %495 = fmul fast float %469, %493
  %496 = fmul fast float %472, %494
  %497 = fmul fast float %487, %495
  %498 = call float @dx.op.tertiary.f32(i32 46, float %488, float %496, float %497)  ; FMad(a,b,c)
  %499 = fmul fast float %486, %495
  %500 = call float @dx.op.tertiary.f32(i32 46, float %487, float %496, float %499)  ; FMad(a,b,c)
  %501 = fadd fast float %478, %498
  %502 = fadd fast float %481, %500
  %503 = icmp ugt i32 %452, 1
  %504 = icmp ugt i32 %450, 33554431
  %505 = or i1 %504, %503
  br i1 %505, label %506, label %531

; <label>:506                                     ; preds = %433
  %507 = add i32 %43, 228
  %508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %507, i32 undef)  ; BufferLoad(srv,index,wot)
  %509 = extractvalue %dx.types.ResRet.i32 %508, 0
  %510 = lshr i32 %509, 16
  %511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %510)  ; LegacyF16ToF32(value)
  %512 = fmul fast float %474, %511
  %513 = call float @dx.op.unary.f32(i32 22, float %512)  ; Frc(value)
  %514 = mul nuw nsw i32 %452, %453
  %515 = uitofp i32 %514 to float
  %516 = fmul fast float %513, %515
  %517 = call float @dx.op.unary.f32(i32 27, float %516)  ; Round_ni(value)
  %518 = fptoui float %517 to i32
  %519 = urem i32 %518, %452
  %520 = udiv i32 %518, %453
  %521 = call float @dx.op.unary.f32(i32 22, float %501)  ; Frc(value)
  %522 = call float @dx.op.unary.f32(i32 22, float %502)  ; Frc(value)
  %523 = uitofp i32 %519 to float
  %524 = uitofp i32 %520 to float
  %525 = fadd fast float %521, %523
  %526 = fadd fast float %522, %524
  %527 = uitofp i32 %452 to float
  %528 = uitofp i32 %453 to float
  %529 = fdiv fast float %525, %527
  %530 = fdiv fast float %526, %528
  br label %531

; <label>:531                                     ; preds = %506, %433
  %532 = phi float [ %529, %506 ], [ %501, %433 ]
  %533 = phi float [ %530, %506 ], [ %502, %433 ]
  %534 = and i32 %427, 16
  %535 = icmp eq i32 %534, 0
  br i1 %535, label %732, label %536

; <label>:536                                     ; preds = %531
  %537 = add i32 %43, 376
  %538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %537, i32 undef)  ; BufferLoad(srv,index,wot)
  %539 = extractvalue %dx.types.ResRet.i32 %538, 0
  %540 = add i32 %539, 0
  %541 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %540, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %542 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %541, %dx.types.Handle %73, float %532, float %533, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %543 = extractvalue %dx.types.ResRet.f32 %542, 0
  %544 = extractvalue %dx.types.ResRet.f32 %542, 1
  %545 = extractvalue %dx.types.ResRet.f32 %542, 2
  %546 = extractvalue %dx.types.ResRet.f32 %542, 3
  %547 = and i32 %450, 255
  %548 = uitofp i32 %547 to float
  %549 = lshr i32 %450, 8
  %550 = and i32 %549, 255
  %551 = uitofp i32 %550 to float
  %552 = fmul fast float %546, %548
  %553 = fadd fast float %552, %551
  %554 = fmul fast float %553, 0x3F70101000000000
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 512
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %567, label %559

; <label>:559                                     ; preds = %536
  %560 = add i32 %43, 460
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = add i32 %562, 0
  %564 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %563, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %565 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %564, %dx.types.Handle %74, float %532, float %533, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %566 = extractvalue %dx.types.ResRet.f32 %565, 0
  br label %567

; <label>:567                                     ; preds = %559, %536
  %568 = phi float [ %566, %559 ], [ 1.000000e+00, %536 ]
  %569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %570 = extractvalue %dx.types.ResRet.i32 %569, 0
  %571 = and i32 %570, 33554432
  %572 = icmp eq i32 %571, 0
  br i1 %572, label %679, label %573

; <label>:573                                     ; preds = %567
  %574 = add i32 %43, 224
  %575 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %574, i32 undef)  ; BufferLoad(srv,index,wot)
  %576 = extractvalue %dx.types.ResRet.i32 %575, 0
  %577 = and i32 %576, 65535
  %578 = call float @dx.op.legacyF16ToF32(i32 131, i32 %577)  ; LegacyF16ToF32(value)
  %579 = lshr i32 %576, 16
  %580 = call float @dx.op.legacyF16ToF32(i32 131, i32 %579)  ; LegacyF16ToF32(value)
  %581 = add i32 %43, 228
  %582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %581, i32 undef)  ; BufferLoad(srv,index,wot)
  %583 = extractvalue %dx.types.ResRet.i32 %582, 0
  %584 = and i32 %583, 65535
  %585 = call float @dx.op.legacyF16ToF32(i32 131, i32 %584)  ; LegacyF16ToF32(value)
  %586 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %587 = extractvalue %dx.types.ResRet.i32 %586, 0
  %588 = lshr i32 %587, 24
  %589 = uitofp i32 %588 to float
  %590 = fmul fast float %589, 0x3F70101020000000
  %591 = and i32 %587, 255
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = lshr i32 %587, 8
  %595 = and i32 %594, 255
  %596 = uitofp i32 %595 to float
  %597 = fmul fast float %596, 0x3F70101020000000
  %598 = lshr i32 %587, 16
  %599 = and i32 %598, 255
  %600 = uitofp i32 %599 to float
  %601 = fmul fast float %600, 0x3F70101020000000
  %602 = add i32 %43, 220
  %603 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %602, i32 undef)  ; BufferLoad(srv,index,wot)
  %604 = extractvalue %dx.types.ResRet.i32 %603, 0
  %605 = lshr i32 %604, 24
  %606 = uitofp i32 %605 to float
  %607 = fmul fast float %606, 0x3F70101020000000
  %608 = and i32 %604, 255
  %609 = uitofp i32 %608 to float
  %610 = fmul fast float %609, 0x3F70101020000000
  %611 = lshr i32 %604, 8
  %612 = and i32 %611, 255
  %613 = uitofp i32 %612 to float
  %614 = fmul fast float %613, 0x3F70101020000000
  %615 = lshr i32 %604, 16
  %616 = and i32 %615, 255
  %617 = uitofp i32 %616 to float
  %618 = fmul fast float %617, 0x3F70101020000000
  %619 = bitcast float %543 to i32
  %620 = ashr i32 %619, 1
  %621 = sub nsw i32 1597463174, %620
  %622 = bitcast i32 %621 to float
  %623 = fmul fast float %543, 5.000000e-01
  %624 = fmul fast float %622, %622
  %625 = fmul fast float %624, %623
  %626 = fsub fast float 1.500000e+00, %625
  %627 = fmul fast float %622, %543
  %628 = fmul fast float %627, %626
  %629 = bitcast float %544 to i32
  %630 = ashr i32 %629, 1
  %631 = sub nsw i32 1597463174, %630
  %632 = bitcast i32 %631 to float
  %633 = fmul fast float %544, 5.000000e-01
  %634 = fmul fast float %632, %632
  %635 = fmul fast float %634, %633
  %636 = fsub fast float 1.500000e+00, %635
  %637 = fmul fast float %632, %544
  %638 = fmul fast float %637, %636
  %639 = bitcast float %545 to i32
  %640 = ashr i32 %639, 1
  %641 = sub nsw i32 1597463174, %640
  %642 = bitcast i32 %641 to float
  %643 = fmul fast float %545, 5.000000e-01
  %644 = fmul fast float %642, %642
  %645 = fmul fast float %644, %643
  %646 = fsub fast float 1.500000e+00, %645
  %647 = fmul fast float %642, %545
  %648 = fmul fast float %647, %646
  %649 = fsub fast float %628, %610
  %650 = fsub fast float %638, %614
  %651 = fsub fast float %648, %618
  %652 = fmul fast float %649, %578
  %653 = fmul fast float %650, %580
  %654 = fmul fast float %651, %585
  %655 = fadd fast float %652, %593
  %656 = fadd fast float %653, %597
  %657 = fadd fast float %654, %601
  %658 = call float @dx.op.unary.f32(i32 7, float %655)  ; Saturate(value)
  %659 = call float @dx.op.unary.f32(i32 7, float %656)  ; Saturate(value)
  %660 = call float @dx.op.unary.f32(i32 7, float %657)  ; Saturate(value)
  %661 = fmul fast float %658, %658
  %662 = fmul fast float %659, %659
  %663 = fmul fast float %660, %660
  %664 = fsub fast float %661, %543
  %665 = fsub fast float %662, %544
  %666 = fsub fast float %663, %545
  %667 = fmul fast float %664, %568
  %668 = fmul fast float %665, %568
  %669 = fmul fast float %666, %568
  %670 = fadd fast float %667, %543
  %671 = fadd fast float %668, %544
  %672 = fadd fast float %669, %545
  %673 = fadd fast float %590, %554
  %674 = fsub fast float %673, %607
  %675 = call float @dx.op.unary.f32(i32 7, float %674)  ; Saturate(value)
  %676 = fsub fast float %675, %554
  %677 = fmul fast float %676, %568
  %678 = fadd fast float %677, %554
  br label %732

; <label>:679                                     ; preds = %567
  %680 = and i32 %570, 134217728
  %681 = icmp eq i32 %680, 0
  br i1 %681, label %716, label %682

; <label>:682                                     ; preds = %679
  %683 = call float @dx.op.unary.f32(i32 24, float %214)  ; Sqrt(value)
  %684 = call float @dx.op.unary.f32(i32 24, float %218)  ; Sqrt(value)
  %685 = call float @dx.op.unary.f32(i32 24, float %222)  ; Sqrt(value)
  %686 = fadd fast float %683, -5.000000e-01
  %687 = fadd fast float %684, -5.000000e-01
  %688 = fadd fast float %685, -5.000000e-01
  %689 = fmul fast float %686, %568
  %690 = fmul fast float %687, %568
  %691 = fmul fast float %688, %568
  %692 = fadd fast float %689, 5.000000e-01
  %693 = fadd fast float %690, 5.000000e-01
  %694 = fadd fast float %691, 5.000000e-01
  %695 = call float @dx.op.unary.f32(i32 24, float %543)  ; Sqrt(value)
  %696 = call float @dx.op.unary.f32(i32 24, float %544)  ; Sqrt(value)
  %697 = call float @dx.op.unary.f32(i32 24, float %545)  ; Sqrt(value)
  %698 = fmul fast float %692, 2.000000e+00
  %699 = fsub fast float 1.000000e+00, %698
  %700 = fmul fast float %699, %695
  %701 = fadd fast float %700, %698
  %702 = fmul fast float %701, %695
  %703 = fmul fast float %693, 2.000000e+00
  %704 = fsub fast float 1.000000e+00, %703
  %705 = fmul fast float %704, %696
  %706 = fadd fast float %705, %703
  %707 = fmul fast float %706, %696
  %708 = fmul fast float %694, 2.000000e+00
  %709 = fsub fast float 1.000000e+00, %708
  %710 = fmul fast float %709, %697
  %711 = fadd fast float %710, %708
  %712 = fmul fast float %711, %697
  %713 = fmul fast float %702, %702
  %714 = fmul fast float %707, %707
  %715 = fmul fast float %712, %712
  br label %732

; <label>:716                                     ; preds = %679
  %717 = fmul fast float %214, %214
  %718 = fmul fast float %218, %218
  %719 = fmul fast float %222, %222
  %720 = fadd fast float %717, -1.000000e+00
  %721 = fadd fast float %718, -1.000000e+00
  %722 = fadd fast float %719, -1.000000e+00
  %723 = fmul fast float %568, %720
  %724 = fmul fast float %568, %721
  %725 = fmul fast float %568, %722
  %726 = fadd fast float %723, 1.000000e+00
  %727 = fadd fast float %724, 1.000000e+00
  %728 = fadd fast float %725, 1.000000e+00
  %729 = fmul fast float %726, %543
  %730 = fmul fast float %727, %544
  %731 = fmul fast float %728, %545
  br label %732

; <label>:732                                     ; preds = %716, %682, %573, %531
  %733 = phi float [ %678, %573 ], [ %554, %682 ], [ %554, %716 ], [ 0x3FA23C0BE0000000, %531 ]
  %734 = phi float [ %670, %573 ], [ %713, %682 ], [ %729, %716 ], [ 1.000000e+00, %531 ]
  %735 = phi float [ %671, %573 ], [ %714, %682 ], [ %730, %716 ], [ 1.000000e+00, %531 ]
  %736 = phi float [ %672, %573 ], [ %715, %682 ], [ %731, %716 ], [ 1.000000e+00, %531 ]
  %737 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %738 = extractvalue %dx.types.CBufRet.i32 %737, 1
  %739 = and i32 %738, 1
  %740 = icmp ne i32 %739, 0
  %741 = add i32 %43, 356
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = and i32 %743, 32
  %745 = icmp ne i32 %744, 0
  %746 = and i1 %740, %745
  %747 = select i1 %746, float 1.000000e+00, float %734
  %748 = select i1 %746, float 0x3FD3333340000000, float %735
  %749 = select i1 %746, float 0x3FD3333340000000, float %736
  %750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %751 = extractvalue %dx.types.ResRet.i32 %750, 0
  %752 = and i32 %751, 32
  %753 = icmp eq i32 %752, 0
  br i1 %753, label %826, label %754

; <label>:754                                     ; preds = %732
  %755 = add i32 %43, 92
  %756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %755, i32 undef)  ; BufferLoad(srv,index,wot)
  %757 = extractvalue %dx.types.ResRet.i32 %756, 0
  %758 = add i32 %43, 392
  %759 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %758, i32 undef)  ; BufferLoad(srv,index,wot)
  %760 = extractvalue %dx.types.ResRet.i32 %759, 0
  %761 = add i32 %760, 0
  %762 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %761, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %763 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %762, %dx.types.Handle %73, float %532, float %533, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %764 = extractvalue %dx.types.ResRet.f32 %763, 0
  %765 = extractvalue %dx.types.ResRet.f32 %763, 1
  %766 = extractvalue %dx.types.ResRet.f32 %763, 2
  %767 = extractvalue %dx.types.ResRet.f32 %763, 3
  %768 = and i32 %757, 255
  %769 = uitofp i32 %768 to float
  %770 = lshr i32 %757, 8
  %771 = and i32 %770, 255
  %772 = uitofp i32 %771 to float
  %773 = lshr i32 %757, 16
  %774 = and i32 %773, 255
  %775 = uitofp i32 %774 to float
  %776 = fmul fast float %775, 0x3F70101000000000
  %777 = fmul fast float %764, %769
  %778 = fadd fast float %777, %772
  %779 = fmul fast float %778, 0x3F70101000000000
  %780 = fadd fast float %765, -5.000000e-01
  %781 = fadd fast float %767, -5.000000e-01
  %782 = fmul fast float %780, %776
  %783 = fmul fast float %781, %776
  %784 = fadd fast float %782, 5.000000e-01
  %785 = fadd fast float %783, 5.000000e-01
  %786 = fmul fast float %784, 2.000000e+00
  %787 = fadd fast float %786, -1.000000e+00
  %788 = fmul fast float %785, 2.000000e+00
  %789 = fadd fast float %788, -1.000000e+00
  %790 = fadd fast float %787, %789
  %791 = fmul fast float %790, 5.000000e-01
  %792 = fsub fast float %787, %789
  %793 = fmul fast float %792, 5.000000e-01
  %794 = call float @dx.op.unary.f32(i32 6, float %791)  ; FAbs(value)
  %795 = fsub fast float 1.000000e+00, %794
  %796 = call float @dx.op.unary.f32(i32 6, float %793)  ; FAbs(value)
  %797 = fsub fast float %795, %796
  %798 = call float @dx.op.dot3.f32(i32 55, float %791, float %793, float %797, float %791, float %793, float %797)  ; Dot3(ax,ay,az,bx,by,bz)
  %799 = call float @dx.op.unary.f32(i32 25, float %798)  ; Rsqrt(value)
  %800 = fmul fast float %791, %799
  %801 = fmul fast float %793, %799
  %802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %803 = extractvalue %dx.types.ResRet.i32 %802, 0
  %804 = and i32 %803, 67108864
  %805 = icmp eq i32 %804, 0
  br i1 %805, label %822, label %806

; <label>:806                                     ; preds = %754
  %807 = add i32 %43, 280
  %808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %807, i32 undef)  ; BufferLoad(srv,index,wot)
  %809 = extractvalue %dx.types.ResRet.i32 %808, 0
  %810 = and i32 %809, 65535
  %811 = call float @dx.op.legacyF16ToF32(i32 131, i32 %810)  ; LegacyF16ToF32(value)
  %812 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %442, i32 undef)  ; BufferLoad(srv,index,wot)
  %813 = extractvalue %dx.types.ResRet.i32 %812, 0
  %814 = and i32 %813, 65535
  %815 = call float @dx.op.legacyF16ToF32(i32 131, i32 %814)  ; LegacyF16ToF32(value)
  %816 = lshr i32 %809, 16
  %817 = call float @dx.op.legacyF16ToF32(i32 131, i32 %816)  ; LegacyF16ToF32(value)
  %818 = fsub fast float %779, %817
  %819 = fmul fast float %818, %811
  %820 = fadd fast float %819, %815
  %821 = call float @dx.op.unary.f32(i32 7, float %820)  ; Saturate(value)
  br label %822

; <label>:822                                     ; preds = %806, %754
  %823 = phi float [ %821, %806 ], [ %779, %754 ]
  %824 = call float @dx.op.dot2.f32(i32 54, float %800, float %801, float %436, float %437)  ; Dot2(ax,ay,bx,by)
  %825 = call float @dx.op.dot2.f32(i32 54, float %800, float %801, float %438, float %439)  ; Dot2(ax,ay,bx,by)
  br label %826

; <label>:826                                     ; preds = %822, %732
  %827 = phi float [ %823, %822 ], [ 0x3FD6666660000000, %732 ]
  %828 = phi float [ %824, %822 ], [ 0.000000e+00, %732 ]
  %829 = phi float [ %825, %822 ], [ 0.000000e+00, %732 ]
  %830 = phi float [ %766, %822 ], [ 1.000000e+00, %732 ]
  %831 = add i32 %43, 160
  %832 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %831, i32 undef)  ; BufferLoad(srv,index,wot)
  %833 = extractvalue %dx.types.ResRet.i32 %832, 0
  %834 = lshr i32 %833, 22
  %835 = shl nuw nsw i32 %834, 5
  %836 = call float @dx.op.legacyF16ToF32(i32 131, i32 %835)  ; LegacyF16ToF32(value)
  %837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %838 = extractvalue %dx.types.ResRet.i32 %837, 0
  %839 = and i32 %838, 64
  %840 = icmp eq i32 %839, 0
  br i1 %840, label %874, label %841

; <label>:841                                     ; preds = %826
  %842 = add i32 %43, 408
  %843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %842, i32 undef)  ; BufferLoad(srv,index,wot)
  %844 = extractvalue %dx.types.ResRet.i32 %843, 0
  %845 = add i32 %844, 0
  %846 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %845, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %847 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %425, i32 undef)  ; BufferLoad(srv,index,wot)
  %848 = extractvalue %dx.types.ResRet.i32 %847, 0
  %849 = and i32 %848, 131072
  %850 = icmp eq i32 %849, 0
  %851 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %846, %dx.types.Handle %73, float %532, float %533, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %852 = extractvalue %dx.types.ResRet.f32 %851, 0
  %853 = extractvalue %dx.types.ResRet.f32 %851, 1
  %854 = extractvalue %dx.types.ResRet.f32 %851, 2
  %855 = fmul fast float %852, %202
  %856 = fmul fast float %853, %205
  %857 = fmul fast float %854, %208
  br i1 %850, label %864, label %858

; <label>:858                                     ; preds = %841
  %859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %860 = extractvalue %dx.types.CBufRet.f32 %859, 0
  %861 = fmul fast float %860, %855
  %862 = fmul fast float %860, %856
  %863 = fmul fast float %860, %857
  br label %864

; <label>:864                                     ; preds = %858, %841
  %865 = phi float [ %861, %858 ], [ %855, %841 ]
  %866 = phi float [ %862, %858 ], [ %856, %841 ]
  %867 = phi float [ %863, %858 ], [ %857, %841 ]
  %868 = fmul fast float %865, %836
  %869 = select i1 %182, float %868, float %865
  %870 = call float @dx.op.dot3.f32(i32 55, float %869, float %866, float %867, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %871 = select i1 %182, float 0.000000e+00, float %865
  %872 = select i1 %182, float %870, float %866
  %873 = select i1 %182, float 0.000000e+00, float %867
  br label %874

; <label>:874                                     ; preds = %864, %826
  %875 = phi float [ %871, %864 ], [ 0.000000e+00, %826 ]
  %876 = phi float [ %872, %864 ], [ 0.000000e+00, %826 ]
  %877 = phi float [ %873, %864 ], [ 0.000000e+00, %826 ]
  %878 = add i32 %43, 96
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %878, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 255
  %882 = uitofp i32 %881 to float
  %883 = lshr i32 %880, 8
  %884 = and i32 %883, 255
  %885 = uitofp i32 %884 to float
  %886 = call float @dx.op.dot3.f32(i32 55, float %747, float %748, float %749, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %887 = fmul fast float %885, %886
  %888 = fadd fast float %887, %882
  %889 = fmul fast float %888, 0x3F70101020000000
  %890 = call float @dx.op.unary.f32(i32 7, float %889)  ; Saturate(value)
  br label %891

; <label>:891                                     ; preds = %874, %418
  %892 = phi float [ 0.000000e+00, %418 ], [ %828, %874 ]
  %893 = phi float [ 0.000000e+00, %418 ], [ %829, %874 ]
  %894 = phi float [ 0.000000e+00, %418 ], [ %747, %874 ]
  %895 = phi float [ 0.000000e+00, %418 ], [ %748, %874 ]
  %896 = phi float [ 0.000000e+00, %418 ], [ %749, %874 ]
  %897 = phi float [ 0.000000e+00, %418 ], [ %875, %874 ]
  %898 = phi float [ 0.000000e+00, %418 ], [ %876, %874 ]
  %899 = phi float [ 0.000000e+00, %418 ], [ %877, %874 ]
  %900 = phi float [ 0.000000e+00, %418 ], [ %733, %874 ]
  %901 = phi float [ 0.000000e+00, %418 ], [ 1.000000e+00, %874 ]
  %902 = phi float [ 0.000000e+00, %418 ], [ %827, %874 ]
  %903 = phi float [ 0.000000e+00, %418 ], [ %830, %874 ]
  %904 = phi float [ 0.000000e+00, %418 ], [ %890, %874 ]
  br i1 %369, label %1746, label %905

; <label>:905                                     ; preds = %891
  %906 = icmp ult i32 %424, 2
  %907 = add i32 %43, 40
  %908 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %909 = extractvalue %dx.types.ResRet.i32 %908, 0
  %910 = add i32 %43, 44
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = or i32 %912, %909
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %1746, label %915

; <label>:915                                     ; preds = %905
  %916 = and i32 %909, 262144
  %917 = icmp ne i32 %916, 0
  %918 = select i1 %917, float %45, float 1.000000e+00
  %919 = select i1 %917, float %46, float 0.000000e+00
  %920 = select i1 %917, float %47, float 0.000000e+00
  %921 = select i1 %917, float %48, float 1.000000e+00
  %922 = select i1 %917, float %49, float %65
  %923 = select i1 %917, float %50, float %66
  %924 = add i32 %43, 300
  %925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %926 = extractvalue %dx.types.ResRet.i32 %925, 0
  %927 = lshr i32 %926, 16
  %928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %927)  ; LegacyF16ToF32(value)
  %929 = fmul fast float %928, 0x3F50624DE0000000
  %930 = add i32 %43, 104
  %931 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %932 = extractvalue %dx.types.ResRet.i32 %931, 0
  %933 = lshr i32 %932, 16
  %934 = and i32 %933, 255
  %935 = lshr i32 %932, 24
  %936 = add i32 %43, 308
  %937 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %936, i32 undef)  ; BufferLoad(srv,index,wot)
  %938 = extractvalue %dx.types.ResRet.i32 %937, 0
  %939 = and i32 %938, 65535
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = lshr i32 %938, 16
  %942 = call float @dx.op.legacyF16ToF32(i32 131, i32 %941)  ; LegacyF16ToF32(value)
  %943 = add i32 %43, 48
  %944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %943, i32 undef)  ; BufferLoad(srv,index,wot)
  %945 = extractvalue %dx.types.ResRet.i32 %944, 0
  %946 = lshr i32 %945, 22
  %947 = shl nuw nsw i32 %946, 5
  %948 = call float @dx.op.legacyF16ToF32(i32 131, i32 %947)  ; LegacyF16ToF32(value)
  %949 = shl i32 %945, 4
  %950 = and i32 %949, 32752
  %951 = call float @dx.op.legacyF16ToF32(i32 131, i32 %950)  ; LegacyF16ToF32(value)
  %952 = lshr i32 %945, 7
  %953 = and i32 %952, 32752
  %954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %953)  ; LegacyF16ToF32(value)
  %955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %956 = extractvalue %dx.types.CBufRet.f32 %955, 3
  %957 = fmul fast float %956, 1.000000e+03
  %958 = fmul fast float %279, %957
  %959 = call float @dx.op.unary.f32(i32 22, float %958)  ; Frc(value)
  %960 = fadd fast float %959, %269
  %961 = fmul fast float %280, %957
  %962 = call float @dx.op.unary.f32(i32 22, float %961)  ; Frc(value)
  %963 = fadd fast float %962, %271
  %964 = fmul fast float %929, %957
  %965 = call float @dx.op.unary.f32(i32 22, float %964)  ; Frc(value)
  %966 = fmul fast float %965, 0x401921FB60000000
  %967 = fadd fast float %966, %948
  %968 = call float @dx.op.unary.f32(i32 13, float %967)  ; Sin(value)
  %969 = call float @dx.op.unary.f32(i32 12, float %967)  ; Cos(value)
  %970 = fsub fast float -0.000000e+00, %968
  %971 = fadd fast float %922, -5.000000e-01
  %972 = fadd fast float %923, -5.000000e-01
  %973 = fmul fast float %940, %971
  %974 = fmul fast float %942, %972
  %975 = fadd fast float %973, 5.000000e-01
  %976 = fadd fast float %974, 5.000000e-01
  %977 = fmul fast float %951, %975
  %978 = fmul fast float %954, %976
  %979 = fmul fast float %969, %977
  %980 = call float @dx.op.tertiary.f32(i32 46, float %970, float %978, float %979)  ; FMad(a,b,c)
  %981 = fmul fast float %968, %977
  %982 = call float @dx.op.tertiary.f32(i32 46, float %969, float %978, float %981)  ; FMad(a,b,c)
  %983 = fadd fast float %960, %980
  %984 = fadd fast float %963, %982
  %985 = icmp ugt i32 %934, 1
  %986 = icmp ugt i32 %932, 33554431
  %987 = or i1 %986, %985
  br i1 %987, label %988, label %1013

; <label>:988                                     ; preds = %915
  %989 = add i32 %43, 244
  %990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %989, i32 undef)  ; BufferLoad(srv,index,wot)
  %991 = extractvalue %dx.types.ResRet.i32 %990, 0
  %992 = lshr i32 %991, 16
  %993 = call float @dx.op.legacyF16ToF32(i32 131, i32 %992)  ; LegacyF16ToF32(value)
  %994 = fmul fast float %956, %993
  %995 = call float @dx.op.unary.f32(i32 22, float %994)  ; Frc(value)
  %996 = mul nuw nsw i32 %934, %935
  %997 = uitofp i32 %996 to float
  %998 = fmul fast float %995, %997
  %999 = call float @dx.op.unary.f32(i32 27, float %998)  ; Round_ni(value)
  %1000 = fptoui float %999 to i32
  %1001 = urem i32 %1000, %934
  %1002 = udiv i32 %1000, %935
  %1003 = call float @dx.op.unary.f32(i32 22, float %983)  ; Frc(value)
  %1004 = call float @dx.op.unary.f32(i32 22, float %984)  ; Frc(value)
  %1005 = uitofp i32 %1001 to float
  %1006 = uitofp i32 %1002 to float
  %1007 = fadd fast float %1003, %1005
  %1008 = fadd fast float %1004, %1006
  %1009 = uitofp i32 %934 to float
  %1010 = uitofp i32 %935 to float
  %1011 = fdiv fast float %1007, %1009
  %1012 = fdiv fast float %1008, %1010
  br label %1013

; <label>:1013                                    ; preds = %988, %915
  %1014 = phi float [ %1011, %988 ], [ %983, %915 ]
  %1015 = phi float [ %1012, %988 ], [ %984, %915 ]
  %1016 = and i32 %909, 16777216
  %1017 = icmp eq i32 %1016, 0
  br i1 %1017, label %1127, label %1018

; <label>:1018                                    ; preds = %1013
  %1019 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1020 = extractvalue %dx.types.CBufRet.f32 %1019, 0
  %1021 = extractvalue %dx.types.CBufRet.f32 %1019, 1
  %1022 = extractvalue %dx.types.CBufRet.f32 %1019, 2
  %1023 = fadd fast float %1020, %140
  %1024 = fadd fast float %1021, %141
  %1025 = fadd fast float %1022, %142
  %1026 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1027 = extractvalue %dx.types.CBufRet.f32 %1026, 0
  %1028 = call float @dx.op.unary.f32(i32 7, float %1027)  ; Saturate(value)
  %1029 = icmp eq i32 %44, 65535
  br i1 %1029, label %1124, label %1030

; <label>:1030                                    ; preds = %1018
  %1031 = lshr i32 %44, 1
  %1032 = shl i32 %1031, 2
  %1033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1032, i32 undef)  ; BufferLoad(srv,index,wot)
  %1034 = extractvalue %dx.types.ResRet.i32 %1033, 0
  %1035 = and i32 %44, 1
  %1036 = icmp ne i32 %1035, 0
  %1037 = lshr i32 %1034, 16
  %1038 = and i32 %1034, 65535
  %1039 = select i1 %1036, i32 %1037, i32 %1038
  %1040 = icmp eq i32 %1039, 65535
  br i1 %1040, label %1120, label %1041

; <label>:1041                                    ; preds = %1030
  %1042 = mul nuw nsw i32 %1039, 40
  %1043 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1042, i32 undef)  ; BufferLoad(srv,index,wot)
  %1044 = extractvalue %dx.types.ResRet.f32 %1043, 0
  %1045 = extractvalue %dx.types.ResRet.f32 %1043, 1
  %1046 = extractvalue %dx.types.ResRet.f32 %1043, 2
  %1047 = add nuw nsw i32 %1042, 12
  %1048 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1047, i32 undef)  ; BufferLoad(srv,index,wot)
  %1049 = extractvalue %dx.types.ResRet.f32 %1048, 0
  %1050 = extractvalue %dx.types.ResRet.f32 %1048, 1
  %1051 = extractvalue %dx.types.ResRet.f32 %1048, 2
  %1052 = add nuw nsw i32 %1042, 24
  %1053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1052, i32 undef)  ; BufferLoad(srv,index,wot)
  %1054 = extractvalue %dx.types.ResRet.f32 %1053, 0
  %1055 = extractvalue %dx.types.ResRet.f32 %1053, 1
  %1056 = extractvalue %dx.types.ResRet.f32 %1053, 2
  %1057 = add nuw nsw i32 %1042, 36
  %1058 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1057, i32 undef)  ; BufferLoad(srv,index,wot)
  %1059 = extractvalue %dx.types.ResRet.f32 %1058, 0
  %1060 = fsub fast float %1023, %1044
  %1061 = fsub fast float %1024, %1045
  %1062 = fsub fast float %1025, %1046
  %1063 = fmul fast float %1059, %1060
  %1064 = fmul fast float %1059, %1061
  %1065 = fmul fast float %1059, %1062
  %1066 = call float @dx.op.unary.f32(i32 27, float %1063)  ; Round_ni(value)
  %1067 = call float @dx.op.unary.f32(i32 27, float %1064)  ; Round_ni(value)
  %1068 = call float @dx.op.unary.f32(i32 27, float %1065)  ; Round_ni(value)
  %1069 = fadd fast float %1066, 5.000000e-01
  %1070 = fadd fast float %1067, 5.000000e-01
  %1071 = fadd fast float %1068, 5.000000e-01
  %1072 = fmul fast float %1069, %1049
  %1073 = fmul fast float %1070, %1050
  %1074 = fmul fast float %1071, %1051
  %1075 = shl i32 %44, 2
  %1076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1077 = extractvalue %dx.types.ResRet.i32 %1076, 0
  %1078 = add i32 %1077, 0
  %1079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1080 = call float @dx.op.unary.f32(i32 22, float %1072)  ; Frc(value)
  %1081 = call float @dx.op.unary.f32(i32 22, float %1073)  ; Frc(value)
  %1082 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1083 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1079, %dx.types.Handle %40, float %1080, float %1081, float %1082, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1084 = extractvalue %dx.types.ResRet.f32 %1083, 0
  %1085 = extractvalue %dx.types.ResRet.f32 %1083, 1
  %1086 = extractvalue %dx.types.ResRet.f32 %1083, 2
  %1087 = fmul fast float %1084, 1.023000e+03
  %1088 = fmul fast float %1085, 1.023000e+03
  %1089 = fmul fast float %1086, 1.023000e+03
  %1090 = fadd fast float %1087, 5.000000e-01
  %1091 = fadd fast float %1088, 5.000000e-01
  %1092 = fadd fast float %1089, 5.000000e-01
  %1093 = call float @dx.op.unary.f32(i32 27, float %1090)  ; Round_ni(value)
  %1094 = call float @dx.op.unary.f32(i32 27, float %1091)  ; Round_ni(value)
  %1095 = call float @dx.op.unary.f32(i32 27, float %1092)  ; Round_ni(value)
  %1096 = fsub fast float %1063, %1066
  %1097 = fsub fast float %1064, %1067
  %1098 = fsub fast float %1065, %1068
  %1099 = fmul fast float %1096, 7.500000e-01
  %1100 = fmul fast float %1097, 7.500000e-01
  %1101 = fmul fast float %1098, 7.500000e-01
  %1102 = fadd fast float %1066, 1.250000e-01
  %1103 = fadd fast float %1102, %1099
  %1104 = fadd fast float %1103, %1093
  %1105 = fadd fast float %1067, 1.250000e-01
  %1106 = fadd fast float %1105, %1100
  %1107 = fadd fast float %1106, %1094
  %1108 = fadd fast float %1068, 1.250000e-01
  %1109 = fadd fast float %1108, %1101
  %1110 = fadd fast float %1109, %1095
  %1111 = fmul fast float %1104, %1054
  %1112 = fmul fast float %1107, %1055
  %1113 = fmul fast float %1110, %1056
  %1114 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1075, i32 undef)  ; BufferLoad(srv,index,wot)
  %1115 = extractvalue %dx.types.ResRet.i32 %1114, 0
  %1116 = add i32 %1115, 0
  %1117 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1116, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1118 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1117, %dx.types.Handle %38, float %1111, float %1112, float %1113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1119 = extractvalue %dx.types.ResRet.f32 %1118, 0
  br label %1120

; <label>:1120                                    ; preds = %1041, %1030
  %1121 = phi float [ %1119, %1041 ], [ -1.000000e+00, %1030 ]
  %1122 = fadd fast float %1121, %1028
  %1123 = call float @dx.op.unary.f32(i32 7, float %1122)  ; Saturate(value)
  br label %1124

; <label>:1124                                    ; preds = %1120, %1018
  %1125 = phi float [ %1123, %1120 ], [ %1028, %1018 ]
  %1126 = fmul fast float %1125, %421
  br label %1127

; <label>:1127                                    ; preds = %1124, %1013
  %1128 = phi float [ %1126, %1124 ], [ %421, %1013 ]
  %1129 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1130 = extractvalue %dx.types.ResRet.i32 %1129, 0
  %1131 = and i32 %1130, 256
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1179, label %1133

; <label>:1133                                    ; preds = %1127
  %1134 = add i32 %43, 444
  %1135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1134, i32 undef)  ; BufferLoad(srv,index,wot)
  %1136 = extractvalue %dx.types.ResRet.i32 %1135, 0
  %1137 = add i32 %1136, 0
  %1138 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1137, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1139 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1138, %dx.types.Handle %74, float %1014, float %1015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1140 = extractvalue %dx.types.ResRet.f32 %1139, 0
  %1141 = add i32 %43, 116
  %1142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1141, i32 undef)  ; BufferLoad(srv,index,wot)
  %1143 = extractvalue %dx.types.ResRet.i32 %1142, 0
  %1144 = shl i32 %1143, 4
  %1145 = and i32 %1144, 32752
  %1146 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1145)  ; LegacyF16ToF32(value)
  %1147 = lshr i32 %1143, 7
  %1148 = and i32 %1147, 32752
  %1149 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1148)  ; LegacyF16ToF32(value)
  %1150 = fsub fast float 1.000000e+00, %1128
  %1151 = call float @dx.op.binary.f32(i32 35, float %1150, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1152 = bitcast float %1128 to i32
  %1153 = sitofp i32 %1152 to float
  %1154 = fadd fast float %1153, 0xC1CFBF8940000000
  %1155 = fmul fast float %1149, %1154
  %1156 = fadd fast float %1155, 0x41CFBF8940000000
  %1157 = fptosi float %1156 to i32
  %1158 = bitcast i32 %1157 to float
  %1159 = bitcast float %1151 to i32
  %1160 = sitofp i32 %1159 to float
  %1161 = fadd fast float %1160, 0xC1CFBF8940000000
  %1162 = fmul fast float %1161, %1149
  %1163 = fadd fast float %1162, 0x41CFBF8940000000
  %1164 = fptosi float %1163 to i32
  %1165 = bitcast i32 %1164 to float
  %1166 = fmul fast float %1158, %1146
  %1167 = fmul fast float %1165, %1146
  %1168 = fsub fast float %1151, %1166
  %1169 = fadd fast float %1167, %1151
  %1170 = call float @dx.op.unary.f32(i32 7, float %1168)  ; Saturate(value)
  %1171 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1172 = fsub fast float %1140, %1170
  %1173 = fsub fast float %1171, %1170
  %1174 = bitcast float %1173 to i32
  %1175 = sub nsw i32 2129859010, %1174
  %1176 = bitcast i32 %1175 to float
  %1177 = fmul fast float %1176, %1172
  %1178 = call float @dx.op.unary.f32(i32 7, float %1177)  ; Saturate(value)
  br label %1179

; <label>:1179                                    ; preds = %1133, %1127
  %1180 = phi float [ %1178, %1133 ], [ %1128, %1127 ]
  %1181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1182 = extractvalue %dx.types.ResRet.i32 %1181, 0
  %1183 = and i32 %1182, 128
  %1184 = icmp eq i32 %1183, 0
  br i1 %1184, label %1201, label %1185

; <label>:1185                                    ; preds = %1179
  %1186 = add i32 %43, 428
  %1187 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1186, i32 undef)  ; BufferLoad(srv,index,wot)
  %1188 = extractvalue %dx.types.ResRet.i32 %1187, 0
  %1189 = add i32 %1188, 0
  %1190 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1189, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1191 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1190, %dx.types.Handle %74, float %1014, float %1015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1192 = extractvalue %dx.types.ResRet.f32 %1191, 0
  %1193 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1194 = extractvalue %dx.types.ResRet.i32 %1193, 0
  %1195 = and i32 %1194, 524288
  %1196 = icmp ne i32 %1195, 0
  %1197 = fcmp fast ogt float %1192, 0x3FE0101020000000
  %1198 = select i1 %1197, float 1.000000e+00, float 0.000000e+00
  %1199 = select i1 %1196, float %1198, float %1192
  %1200 = fmul fast float %1199, %1180
  br label %1201

; <label>:1201                                    ; preds = %1185, %1179
  %1202 = phi float [ %1200, %1185 ], [ %1180, %1179 ]
  %1203 = fcmp fast ult float %1202, 0x3F70101020000000
  br i1 %1203, label %1746, label %1204

; <label>:1204                                    ; preds = %1201
  %1205 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1206 = extractvalue %dx.types.ResRet.i32 %1205, 0
  %1207 = and i32 %1206, 16
  %1208 = icmp eq i32 %1207, 0
  br i1 %1208, label %1407, label %1209

; <label>:1209                                    ; preds = %1204
  %1210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %930, i32 undef)  ; BufferLoad(srv,index,wot)
  %1211 = extractvalue %dx.types.ResRet.i32 %1210, 0
  %1212 = add i32 %43, 380
  %1213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1212, i32 undef)  ; BufferLoad(srv,index,wot)
  %1214 = extractvalue %dx.types.ResRet.i32 %1213, 0
  %1215 = add i32 %1214, 0
  %1216 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1215, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1217 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1216, %dx.types.Handle %73, float %1014, float %1015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1218 = extractvalue %dx.types.ResRet.f32 %1217, 0
  %1219 = extractvalue %dx.types.ResRet.f32 %1217, 1
  %1220 = extractvalue %dx.types.ResRet.f32 %1217, 2
  %1221 = extractvalue %dx.types.ResRet.f32 %1217, 3
  %1222 = and i32 %1211, 255
  %1223 = uitofp i32 %1222 to float
  %1224 = lshr i32 %1211, 8
  %1225 = and i32 %1224, 255
  %1226 = uitofp i32 %1225 to float
  %1227 = fmul fast float %1221, %1223
  %1228 = fadd fast float %1227, %1226
  %1229 = fmul fast float %1228, 0x3F70101000000000
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = and i32 %1231, 512
  %1233 = icmp eq i32 %1232, 0
  br i1 %1233, label %1242, label %1234

; <label>:1234                                    ; preds = %1209
  %1235 = add i32 %43, 464
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = add i32 %1237, 0
  %1239 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1238, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1240 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1239, %dx.types.Handle %74, float %1014, float %1015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1241 = extractvalue %dx.types.ResRet.f32 %1240, 0
  br label %1242

; <label>:1242                                    ; preds = %1234, %1209
  %1243 = phi float [ %1241, %1234 ], [ 1.000000e+00, %1209 ]
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = and i32 %1245, 33554432
  %1247 = icmp eq i32 %1246, 0
  br i1 %1247, label %1354, label %1248

; <label>:1248                                    ; preds = %1242
  %1249 = add i32 %43, 240
  %1250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1249, i32 undef)  ; BufferLoad(srv,index,wot)
  %1251 = extractvalue %dx.types.ResRet.i32 %1250, 0
  %1252 = and i32 %1251, 65535
  %1253 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1252)  ; LegacyF16ToF32(value)
  %1254 = lshr i32 %1251, 16
  %1255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1254)  ; LegacyF16ToF32(value)
  %1256 = add i32 %43, 244
  %1257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1256, i32 undef)  ; BufferLoad(srv,index,wot)
  %1258 = extractvalue %dx.types.ResRet.i32 %1257, 0
  %1259 = and i32 %1258, 65535
  %1260 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1259)  ; LegacyF16ToF32(value)
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = lshr i32 %1262, 24
  %1264 = uitofp i32 %1263 to float
  %1265 = fmul fast float %1264, 0x3F70101020000000
  %1266 = and i32 %1262, 255
  %1267 = uitofp i32 %1266 to float
  %1268 = fmul fast float %1267, 0x3F70101020000000
  %1269 = lshr i32 %1262, 8
  %1270 = and i32 %1269, 255
  %1271 = uitofp i32 %1270 to float
  %1272 = fmul fast float %1271, 0x3F70101020000000
  %1273 = lshr i32 %1262, 16
  %1274 = and i32 %1273, 255
  %1275 = uitofp i32 %1274 to float
  %1276 = fmul fast float %1275, 0x3F70101020000000
  %1277 = add i32 %43, 236
  %1278 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1277, i32 undef)  ; BufferLoad(srv,index,wot)
  %1279 = extractvalue %dx.types.ResRet.i32 %1278, 0
  %1280 = lshr i32 %1279, 24
  %1281 = uitofp i32 %1280 to float
  %1282 = fmul fast float %1281, 0x3F70101020000000
  %1283 = and i32 %1279, 255
  %1284 = uitofp i32 %1283 to float
  %1285 = fmul fast float %1284, 0x3F70101020000000
  %1286 = lshr i32 %1279, 8
  %1287 = and i32 %1286, 255
  %1288 = uitofp i32 %1287 to float
  %1289 = fmul fast float %1288, 0x3F70101020000000
  %1290 = lshr i32 %1279, 16
  %1291 = and i32 %1290, 255
  %1292 = uitofp i32 %1291 to float
  %1293 = fmul fast float %1292, 0x3F70101020000000
  %1294 = bitcast float %1218 to i32
  %1295 = ashr i32 %1294, 1
  %1296 = sub nsw i32 1597463174, %1295
  %1297 = bitcast i32 %1296 to float
  %1298 = fmul fast float %1218, 5.000000e-01
  %1299 = fmul fast float %1297, %1297
  %1300 = fmul fast float %1299, %1298
  %1301 = fsub fast float 1.500000e+00, %1300
  %1302 = fmul fast float %1297, %1218
  %1303 = fmul fast float %1302, %1301
  %1304 = bitcast float %1219 to i32
  %1305 = ashr i32 %1304, 1
  %1306 = sub nsw i32 1597463174, %1305
  %1307 = bitcast i32 %1306 to float
  %1308 = fmul fast float %1219, 5.000000e-01
  %1309 = fmul fast float %1307, %1307
  %1310 = fmul fast float %1309, %1308
  %1311 = fsub fast float 1.500000e+00, %1310
  %1312 = fmul fast float %1307, %1219
  %1313 = fmul fast float %1312, %1311
  %1314 = bitcast float %1220 to i32
  %1315 = ashr i32 %1314, 1
  %1316 = sub nsw i32 1597463174, %1315
  %1317 = bitcast i32 %1316 to float
  %1318 = fmul fast float %1220, 5.000000e-01
  %1319 = fmul fast float %1317, %1317
  %1320 = fmul fast float %1319, %1318
  %1321 = fsub fast float 1.500000e+00, %1320
  %1322 = fmul fast float %1317, %1220
  %1323 = fmul fast float %1322, %1321
  %1324 = fsub fast float %1303, %1285
  %1325 = fsub fast float %1313, %1289
  %1326 = fsub fast float %1323, %1293
  %1327 = fmul fast float %1324, %1253
  %1328 = fmul fast float %1325, %1255
  %1329 = fmul fast float %1326, %1260
  %1330 = fadd fast float %1327, %1268
  %1331 = fadd fast float %1328, %1272
  %1332 = fadd fast float %1329, %1276
  %1333 = call float @dx.op.unary.f32(i32 7, float %1330)  ; Saturate(value)
  %1334 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1335 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  %1336 = fmul fast float %1333, %1333
  %1337 = fmul fast float %1334, %1334
  %1338 = fmul fast float %1335, %1335
  %1339 = fsub fast float %1336, %1218
  %1340 = fsub fast float %1337, %1219
  %1341 = fsub fast float %1338, %1220
  %1342 = fmul fast float %1339, %1243
  %1343 = fmul fast float %1340, %1243
  %1344 = fmul fast float %1341, %1243
  %1345 = fadd fast float %1342, %1218
  %1346 = fadd fast float %1343, %1219
  %1347 = fadd fast float %1344, %1220
  %1348 = fadd fast float %1265, %1229
  %1349 = fsub fast float %1348, %1282
  %1350 = call float @dx.op.unary.f32(i32 7, float %1349)  ; Saturate(value)
  %1351 = fsub fast float %1350, %1229
  %1352 = fmul fast float %1351, %1243
  %1353 = fadd fast float %1352, %1229
  br label %1407

; <label>:1354                                    ; preds = %1242
  %1355 = and i32 %1245, 134217728
  %1356 = icmp eq i32 %1355, 0
  br i1 %1356, label %1391, label %1357

; <label>:1357                                    ; preds = %1354
  %1358 = call float @dx.op.unary.f32(i32 24, float %256)  ; Sqrt(value)
  %1359 = call float @dx.op.unary.f32(i32 24, float %260)  ; Sqrt(value)
  %1360 = call float @dx.op.unary.f32(i32 24, float %264)  ; Sqrt(value)
  %1361 = fadd fast float %1358, -5.000000e-01
  %1362 = fadd fast float %1359, -5.000000e-01
  %1363 = fadd fast float %1360, -5.000000e-01
  %1364 = fmul fast float %1361, %1243
  %1365 = fmul fast float %1362, %1243
  %1366 = fmul fast float %1363, %1243
  %1367 = fadd fast float %1364, 5.000000e-01
  %1368 = fadd fast float %1365, 5.000000e-01
  %1369 = fadd fast float %1366, 5.000000e-01
  %1370 = call float @dx.op.unary.f32(i32 24, float %1218)  ; Sqrt(value)
  %1371 = call float @dx.op.unary.f32(i32 24, float %1219)  ; Sqrt(value)
  %1372 = call float @dx.op.unary.f32(i32 24, float %1220)  ; Sqrt(value)
  %1373 = fmul fast float %1367, 2.000000e+00
  %1374 = fsub fast float 1.000000e+00, %1373
  %1375 = fmul fast float %1374, %1370
  %1376 = fadd fast float %1375, %1373
  %1377 = fmul fast float %1376, %1370
  %1378 = fmul fast float %1368, 2.000000e+00
  %1379 = fsub fast float 1.000000e+00, %1378
  %1380 = fmul fast float %1379, %1371
  %1381 = fadd fast float %1380, %1378
  %1382 = fmul fast float %1381, %1371
  %1383 = fmul fast float %1369, 2.000000e+00
  %1384 = fsub fast float 1.000000e+00, %1383
  %1385 = fmul fast float %1384, %1372
  %1386 = fadd fast float %1385, %1383
  %1387 = fmul fast float %1386, %1372
  %1388 = fmul fast float %1377, %1377
  %1389 = fmul fast float %1382, %1382
  %1390 = fmul fast float %1387, %1387
  br label %1407

; <label>:1391                                    ; preds = %1354
  %1392 = fmul fast float %256, %256
  %1393 = fmul fast float %260, %260
  %1394 = fmul fast float %264, %264
  %1395 = fadd fast float %1392, -1.000000e+00
  %1396 = fadd fast float %1393, -1.000000e+00
  %1397 = fadd fast float %1394, -1.000000e+00
  %1398 = fmul fast float %1243, %1395
  %1399 = fmul fast float %1243, %1396
  %1400 = fmul fast float %1243, %1397
  %1401 = fadd fast float %1398, 1.000000e+00
  %1402 = fadd fast float %1399, 1.000000e+00
  %1403 = fadd fast float %1400, 1.000000e+00
  %1404 = fmul fast float %1401, %1218
  %1405 = fmul fast float %1402, %1219
  %1406 = fmul fast float %1403, %1220
  br label %1407

; <label>:1407                                    ; preds = %1391, %1357, %1248, %1204
  %1408 = phi float [ %1353, %1248 ], [ %1229, %1357 ], [ %1229, %1391 ], [ 0x3FA23C0BE0000000, %1204 ]
  %1409 = phi float [ %1345, %1248 ], [ %1388, %1357 ], [ %1404, %1391 ], [ 1.000000e+00, %1204 ]
  %1410 = phi float [ %1346, %1248 ], [ %1389, %1357 ], [ %1405, %1391 ], [ 1.000000e+00, %1204 ]
  %1411 = phi float [ %1347, %1248 ], [ %1390, %1357 ], [ %1406, %1391 ], [ 1.000000e+00, %1204 ]
  %1412 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1413 = extractvalue %dx.types.CBufRet.i32 %1412, 1
  %1414 = and i32 %1413, 1
  %1415 = icmp ne i32 %1414, 0
  %1416 = add i32 %43, 356
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1416, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = and i32 %1418, 32
  %1420 = icmp ne i32 %1419, 0
  %1421 = and i1 %1415, %1420
  %1422 = select i1 %1421, float 1.000000e+00, float %1409
  %1423 = select i1 %1421, float 0x3FD3333340000000, float %1410
  %1424 = select i1 %1421, float 0x3FD3333340000000, float %1411
  %1425 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1426 = extractvalue %dx.types.ResRet.i32 %1425, 0
  %1427 = and i32 %1426, 32
  %1428 = icmp eq i32 %1427, 0
  br i1 %1428, label %1501, label %1429

; <label>:1429                                    ; preds = %1407
  %1430 = add i32 %43, 108
  %1431 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1430, i32 undef)  ; BufferLoad(srv,index,wot)
  %1432 = extractvalue %dx.types.ResRet.i32 %1431, 0
  %1433 = add i32 %43, 396
  %1434 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1433, i32 undef)  ; BufferLoad(srv,index,wot)
  %1435 = extractvalue %dx.types.ResRet.i32 %1434, 0
  %1436 = add i32 %1435, 0
  %1437 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1436, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1438 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1437, %dx.types.Handle %73, float %1014, float %1015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1439 = extractvalue %dx.types.ResRet.f32 %1438, 0
  %1440 = extractvalue %dx.types.ResRet.f32 %1438, 1
  %1441 = extractvalue %dx.types.ResRet.f32 %1438, 2
  %1442 = extractvalue %dx.types.ResRet.f32 %1438, 3
  %1443 = and i32 %1432, 255
  %1444 = uitofp i32 %1443 to float
  %1445 = lshr i32 %1432, 8
  %1446 = and i32 %1445, 255
  %1447 = uitofp i32 %1446 to float
  %1448 = lshr i32 %1432, 16
  %1449 = and i32 %1448, 255
  %1450 = uitofp i32 %1449 to float
  %1451 = fmul fast float %1450, 0x3F70101000000000
  %1452 = fmul fast float %1439, %1444
  %1453 = fadd fast float %1452, %1447
  %1454 = fmul fast float %1453, 0x3F70101000000000
  %1455 = fadd fast float %1440, -5.000000e-01
  %1456 = fadd fast float %1442, -5.000000e-01
  %1457 = fmul fast float %1455, %1451
  %1458 = fmul fast float %1456, %1451
  %1459 = fadd fast float %1457, 5.000000e-01
  %1460 = fadd fast float %1458, 5.000000e-01
  %1461 = fmul fast float %1459, 2.000000e+00
  %1462 = fadd fast float %1461, -1.000000e+00
  %1463 = fmul fast float %1460, 2.000000e+00
  %1464 = fadd fast float %1463, -1.000000e+00
  %1465 = fadd fast float %1462, %1464
  %1466 = fmul fast float %1465, 5.000000e-01
  %1467 = fsub fast float %1462, %1464
  %1468 = fmul fast float %1467, 5.000000e-01
  %1469 = call float @dx.op.unary.f32(i32 6, float %1466)  ; FAbs(value)
  %1470 = fsub fast float 1.000000e+00, %1469
  %1471 = call float @dx.op.unary.f32(i32 6, float %1468)  ; FAbs(value)
  %1472 = fsub fast float %1470, %1471
  %1473 = call float @dx.op.dot3.f32(i32 55, float %1466, float %1468, float %1472, float %1466, float %1468, float %1472)  ; Dot3(ax,ay,az,bx,by,bz)
  %1474 = call float @dx.op.unary.f32(i32 25, float %1473)  ; Rsqrt(value)
  %1475 = fmul fast float %1466, %1474
  %1476 = fmul fast float %1468, %1474
  %1477 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1478 = extractvalue %dx.types.ResRet.i32 %1477, 0
  %1479 = and i32 %1478, 67108864
  %1480 = icmp eq i32 %1479, 0
  br i1 %1480, label %1497, label %1481

; <label>:1481                                    ; preds = %1429
  %1482 = add i32 %43, 296
  %1483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1482, i32 undef)  ; BufferLoad(srv,index,wot)
  %1484 = extractvalue %dx.types.ResRet.i32 %1483, 0
  %1485 = and i32 %1484, 65535
  %1486 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1485)  ; LegacyF16ToF32(value)
  %1487 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %924, i32 undef)  ; BufferLoad(srv,index,wot)
  %1488 = extractvalue %dx.types.ResRet.i32 %1487, 0
  %1489 = and i32 %1488, 65535
  %1490 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1489)  ; LegacyF16ToF32(value)
  %1491 = lshr i32 %1484, 16
  %1492 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1491)  ; LegacyF16ToF32(value)
  %1493 = fsub fast float %1454, %1492
  %1494 = fmul fast float %1493, %1486
  %1495 = fadd fast float %1494, %1490
  %1496 = call float @dx.op.unary.f32(i32 7, float %1495)  ; Saturate(value)
  br label %1497

; <label>:1497                                    ; preds = %1481, %1429
  %1498 = phi float [ %1496, %1481 ], [ %1454, %1429 ]
  %1499 = call float @dx.op.dot2.f32(i32 54, float %1475, float %1476, float %918, float %919)  ; Dot2(ax,ay,bx,by)
  %1500 = call float @dx.op.dot2.f32(i32 54, float %1475, float %1476, float %920, float %921)  ; Dot2(ax,ay,bx,by)
  br label %1501

; <label>:1501                                    ; preds = %1497, %1407
  %1502 = phi float [ %1498, %1497 ], [ 0x3FD6666660000000, %1407 ]
  %1503 = phi float [ %1499, %1497 ], [ 0.000000e+00, %1407 ]
  %1504 = phi float [ %1500, %1497 ], [ 0.000000e+00, %1407 ]
  %1505 = phi float [ %1441, %1497 ], [ 1.000000e+00, %1407 ]
  %1506 = add i32 %43, 176
  %1507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1506, i32 undef)  ; BufferLoad(srv,index,wot)
  %1508 = extractvalue %dx.types.ResRet.i32 %1507, 0
  %1509 = lshr i32 %1508, 22
  %1510 = shl nuw nsw i32 %1509, 5
  %1511 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1510)  ; LegacyF16ToF32(value)
  %1512 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1513 = extractvalue %dx.types.ResRet.i32 %1512, 0
  %1514 = and i32 %1513, 64
  %1515 = icmp eq i32 %1514, 0
  br i1 %1515, label %1549, label %1516

; <label>:1516                                    ; preds = %1501
  %1517 = add i32 %43, 412
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1517, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = add i32 %1519, 0
  %1521 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1520, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1522 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1523 = extractvalue %dx.types.ResRet.i32 %1522, 0
  %1524 = and i32 %1523, 131072
  %1525 = icmp eq i32 %1524, 0
  %1526 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1521, %dx.types.Handle %73, float %1014, float %1015, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1527 = extractvalue %dx.types.ResRet.f32 %1526, 0
  %1528 = extractvalue %dx.types.ResRet.f32 %1526, 1
  %1529 = extractvalue %dx.types.ResRet.f32 %1526, 2
  %1530 = fmul fast float %1527, %244
  %1531 = fmul fast float %1528, %247
  %1532 = fmul fast float %1529, %250
  br i1 %1525, label %1539, label %1533

; <label>:1533                                    ; preds = %1516
  %1534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1535 = extractvalue %dx.types.CBufRet.f32 %1534, 0
  %1536 = fmul fast float %1535, %1530
  %1537 = fmul fast float %1535, %1531
  %1538 = fmul fast float %1535, %1532
  br label %1539

; <label>:1539                                    ; preds = %1533, %1516
  %1540 = phi float [ %1536, %1533 ], [ %1530, %1516 ]
  %1541 = phi float [ %1537, %1533 ], [ %1531, %1516 ]
  %1542 = phi float [ %1538, %1533 ], [ %1532, %1516 ]
  %1543 = fmul fast float %1540, %1511
  %1544 = select i1 %182, float %1543, float %1540
  %1545 = call float @dx.op.dot3.f32(i32 55, float %1544, float %1541, float %1542, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1546 = select i1 %182, float 0.000000e+00, float %1540
  %1547 = select i1 %182, float %1545, float %1541
  %1548 = select i1 %182, float 0.000000e+00, float %1542
  br label %1549

; <label>:1549                                    ; preds = %1539, %1501
  %1550 = phi float [ %1546, %1539 ], [ 0.000000e+00, %1501 ]
  %1551 = phi float [ %1547, %1539 ], [ 0.000000e+00, %1501 ]
  %1552 = phi float [ %1548, %1539 ], [ 0.000000e+00, %1501 ]
  %1553 = add i32 %43, 112
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1553, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 255
  %1557 = uitofp i32 %1556 to float
  %1558 = lshr i32 %1555, 8
  %1559 = and i32 %1558, 255
  %1560 = uitofp i32 %1559 to float
  %1561 = call float @dx.op.dot3.f32(i32 55, float %1422, float %1423, float %1424, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1562 = fmul fast float %1560, %1561
  %1563 = fadd fast float %1562, %1557
  %1564 = fmul fast float %1563, 0x3F70101020000000
  %1565 = call float @dx.op.unary.f32(i32 7, float %1564)  ; Saturate(value)
  br i1 %906, label %1566, label %1574

; <label>:1566                                    ; preds = %1549
  %1567 = fsub fast float 1.000000e+00, %1202
  %1568 = fmul fast float %1567, %894
  %1569 = fmul fast float %1567, %895
  %1570 = fmul fast float %1567, %896
  %1571 = fmul fast float %1567, %897
  %1572 = fmul fast float %1567, %898
  %1573 = fmul fast float %1567, %899
  br label %1574

; <label>:1574                                    ; preds = %1566, %1549
  %1575 = phi float [ %1568, %1566 ], [ %894, %1549 ]
  %1576 = phi float [ %1569, %1566 ], [ %895, %1549 ]
  %1577 = phi float [ %1570, %1566 ], [ %896, %1549 ]
  %1578 = phi float [ %1571, %1566 ], [ %897, %1549 ]
  %1579 = phi float [ %1572, %1566 ], [ %898, %1549 ]
  %1580 = phi float [ %1573, %1566 ], [ %899, %1549 ]
  %1581 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %907, i32 undef)  ; BufferLoad(srv,index,wot)
  %1582 = extractvalue %dx.types.ResRet.i32 %1581, 0
  %1583 = and i32 %1582, 3
  %1584 = icmp eq i32 %1583, 3
  br i1 %1584, label %1663, label %1585

; <label>:1585                                    ; preds = %1574
  %1586 = and i32 %1582, 16
  %1587 = icmp ne i32 %1586, 0
  %1588 = select i1 %1587, float %1202, float 0.000000e+00
  %1589 = icmp eq i32 %1583, 0
  br i1 %1589, label %1590, label %1618

; <label>:1590                                    ; preds = %1585
  %1591 = and i32 %1582, 64
  %1592 = icmp ne i32 %1591, 0
  %1593 = select i1 %1592, float %1202, float 0.000000e+00
  %1594 = fsub fast float %1422, %1575
  %1595 = fsub fast float %1423, %1576
  %1596 = fsub fast float %1424, %1577
  %1597 = fmul fast float %1588, %1594
  %1598 = fmul fast float %1588, %1595
  %1599 = fmul fast float %1588, %1596
  %1600 = fadd fast float %1597, %1575
  %1601 = fadd fast float %1598, %1576
  %1602 = fadd fast float %1599, %1577
  %1603 = fsub fast float %1408, %900
  %1604 = fmul fast float %1588, %1603
  %1605 = fadd fast float %1604, %900
  %1606 = fsub fast float %1550, %1578
  %1607 = fsub fast float %1551, %1579
  %1608 = fsub fast float %1552, %1580
  %1609 = fmul fast float %1593, %1606
  %1610 = fmul fast float %1593, %1607
  %1611 = fmul fast float %1593, %1608
  %1612 = fadd fast float %1609, %1578
  %1613 = fadd fast float %1610, %1579
  %1614 = fadd fast float %1611, %1580
  %1615 = fsub fast float %1565, %904
  %1616 = fmul fast float %1588, %1615
  %1617 = fadd fast float %1616, %904
  br label %1663

; <label>:1618                                    ; preds = %1585
  %1619 = icmp eq i32 %1583, 1
  br i1 %1619, label %1620, label %1633

; <label>:1620                                    ; preds = %1618
  %1621 = fadd fast float %1422, -1.000000e+00
  %1622 = fadd fast float %1423, -1.000000e+00
  %1623 = fadd fast float %1424, -1.000000e+00
  %1624 = fmul fast float %1588, %1621
  %1625 = fmul fast float %1588, %1622
  %1626 = fmul fast float %1588, %1623
  %1627 = fadd fast float %1624, 1.000000e+00
  %1628 = fadd fast float %1625, 1.000000e+00
  %1629 = fadd fast float %1626, 1.000000e+00
  %1630 = fmul fast float %1627, %1575
  %1631 = fmul fast float %1628, %1576
  %1632 = fmul fast float %1629, %1577
  br label %1663

; <label>:1633                                    ; preds = %1618
  %1634 = icmp eq i32 %1583, 2
  br i1 %1634, label %1635, label %1663

; <label>:1635                                    ; preds = %1633
  %1636 = call float @dx.op.unary.f32(i32 24, float %1422)  ; Sqrt(value)
  %1637 = call float @dx.op.unary.f32(i32 24, float %1423)  ; Sqrt(value)
  %1638 = call float @dx.op.unary.f32(i32 24, float %1424)  ; Sqrt(value)
  %1639 = fadd fast float %1636, -5.000000e-01
  %1640 = fadd fast float %1637, -5.000000e-01
  %1641 = fadd fast float %1638, -5.000000e-01
  %1642 = fmul fast float %1639, %1588
  %1643 = fmul fast float %1640, %1588
  %1644 = fmul fast float %1641, %1588
  %1645 = fadd fast float %1642, 5.000000e-01
  %1646 = fadd fast float %1643, 5.000000e-01
  %1647 = fadd fast float %1644, 5.000000e-01
  %1648 = fmul fast float %1645, 2.000000e+00
  %1649 = fsub fast float 1.000000e+00, %1648
  %1650 = fmul fast float %1649, %1575
  %1651 = fadd fast float %1650, %1648
  %1652 = fmul fast float %1651, %1575
  %1653 = fmul fast float %1646, 2.000000e+00
  %1654 = fsub fast float 1.000000e+00, %1653
  %1655 = fmul fast float %1654, %1576
  %1656 = fadd fast float %1655, %1653
  %1657 = fmul fast float %1656, %1576
  %1658 = fmul fast float %1647, 2.000000e+00
  %1659 = fsub fast float 1.000000e+00, %1658
  %1660 = fmul fast float %1659, %1577
  %1661 = fadd fast float %1660, %1658
  %1662 = fmul fast float %1661, %1577
  br label %1663

; <label>:1663                                    ; preds = %1635, %1633, %1620, %1590, %1574
  %1664 = phi float [ %1575, %1574 ], [ %1652, %1635 ], [ %1575, %1633 ], [ %1630, %1620 ], [ %1600, %1590 ]
  %1665 = phi float [ %1576, %1574 ], [ %1657, %1635 ], [ %1576, %1633 ], [ %1631, %1620 ], [ %1601, %1590 ]
  %1666 = phi float [ %1577, %1574 ], [ %1662, %1635 ], [ %1577, %1633 ], [ %1632, %1620 ], [ %1602, %1590 ]
  %1667 = phi float [ %1578, %1574 ], [ %1578, %1635 ], [ %1578, %1633 ], [ %1578, %1620 ], [ %1612, %1590 ]
  %1668 = phi float [ %1579, %1574 ], [ %1579, %1635 ], [ %1579, %1633 ], [ %1579, %1620 ], [ %1613, %1590 ]
  %1669 = phi float [ %1580, %1574 ], [ %1580, %1635 ], [ %1580, %1633 ], [ %1580, %1620 ], [ %1614, %1590 ]
  %1670 = phi float [ %900, %1574 ], [ %900, %1635 ], [ %900, %1633 ], [ %900, %1620 ], [ %1605, %1590 ]
  %1671 = phi float [ %904, %1574 ], [ %904, %1635 ], [ %904, %1633 ], [ %904, %1620 ], [ %1617, %1590 ]
  %1672 = and i32 %1582, 12
  %1673 = icmp eq i32 %1672, 12
  br i1 %1673, label %1746, label %1674

; <label>:1674                                    ; preds = %1663
  %1675 = and i32 %1582, 2097184
  %1676 = icmp eq i32 %1675, 2097184
  %1677 = select i1 %1676, float %1202, float 0.000000e+00
  %1678 = and i32 %1582, 4194336
  %1679 = icmp eq i32 %1678, 4194336
  %1680 = select i1 %1679, float %1202, float 0.000000e+00
  %1681 = and i32 %1582, 8388640
  %1682 = icmp eq i32 %1681, 8388640
  %1683 = select i1 %1682, float %1202, float 0.000000e+00
  %1684 = icmp eq i32 %1672, 0
  br i1 %1684, label %1685, label %1698

; <label>:1685                                    ; preds = %1674
  %1686 = fsub fast float %1503, %892
  %1687 = fsub fast float %1504, %893
  %1688 = fmul fast float %1677, %1686
  %1689 = fmul fast float %1677, %1687
  %1690 = fadd fast float %1688, %892
  %1691 = fadd fast float %1689, %893
  %1692 = fsub fast float %1505, %903
  %1693 = fmul fast float %1680, %1692
  %1694 = fadd fast float %1693, %903
  %1695 = fsub fast float %1502, %902
  %1696 = fmul fast float %1683, %1695
  %1697 = fadd fast float %1696, %902
  br label %1746

; <label>:1698                                    ; preds = %1674
  %1699 = icmp eq i32 %1672, 4
  br i1 %1699, label %1700, label %1732

; <label>:1700                                    ; preds = %1698
  %1701 = fmul fast float %1677, %1503
  %1702 = fmul fast float %1677, %1504
  %1703 = fadd fast float %1701, %892
  %1704 = fadd fast float %1702, %893
  %1705 = call float @dx.op.binary.f32(i32 36, float %903, float %1505)  ; FMin(a,b)
  %1706 = fsub fast float %1705, %903
  %1707 = fmul fast float %1706, %1680
  %1708 = fadd fast float %1707, %903
  %1709 = fadd fast float %1502, %902
  %1710 = fmul fast float %1709, 0x3FF337FAE0000000
  %1711 = fmul fast float %902, %902
  %1712 = fmul fast float %1502, %1502
  %1713 = fadd fast float %1712, %1711
  %1714 = fmul fast float %1713, 0x3FE5152B00000000
  %1715 = fmul fast float %902, 0xBFCC1F85E0000000
  %1716 = fmul fast float %1715, %1502
  %1717 = fadd fast float %1716, 0xBFE1363700000000
  %1718 = fadd fast float %1717, %1710
  %1719 = fsub fast float %1718, %1714
  %1720 = fmul fast float %1709, 0x3FBA6F0D00000000
  %1721 = fmul fast float %1713, 0x3FD0432880000000
  %1722 = fmul fast float %902, 0xBFEF110800000000
  %1723 = fmul fast float %1722, %1502
  %1724 = fadd fast float %1723, 1.000000e+00
  %1725 = fsub fast float %1724, %1720
  %1726 = fadd fast float %1725, %1721
  %1727 = fdiv fast float %1719, %1726
  %1728 = call float @dx.op.unary.f32(i32 7, float %1727)  ; Saturate(value)
  %1729 = fsub fast float %1728, %902
  %1730 = fmul fast float %1729, %1683
  %1731 = fadd fast float %1730, %902
  br label %1746

; <label>:1732                                    ; preds = %1698
  %1733 = icmp eq i32 %1672, 8
  br i1 %1733, label %1734, label %1746

; <label>:1734                                    ; preds = %1732
  %1735 = fmul fast float %1677, %1503
  %1736 = fmul fast float %1677, %1504
  %1737 = fadd fast float %1735, %892
  %1738 = fadd fast float %1736, %893
  %1739 = call float @dx.op.binary.f32(i32 36, float %903, float %1505)  ; FMin(a,b)
  %1740 = fsub fast float %1739, %903
  %1741 = fmul fast float %1740, %1680
  %1742 = fadd fast float %1741, %903
  %1743 = fsub fast float %1502, %902
  %1744 = fmul fast float %1683, %1743
  %1745 = fadd fast float %1744, %902
  br label %1746

; <label>:1746                                    ; preds = %1734, %1732, %1700, %1685, %1663, %1201, %905, %891
  %1747 = phi float [ %892, %1663 ], [ %892, %1201 ], [ %892, %891 ], [ %1737, %1734 ], [ %892, %1732 ], [ %1703, %1700 ], [ %1690, %1685 ], [ %892, %905 ]
  %1748 = phi float [ %893, %1663 ], [ %893, %1201 ], [ %893, %891 ], [ %1738, %1734 ], [ %893, %1732 ], [ %1704, %1700 ], [ %1691, %1685 ], [ %893, %905 ]
  %1749 = phi float [ %1664, %1663 ], [ %894, %1201 ], [ %894, %891 ], [ %1664, %1734 ], [ %1664, %1732 ], [ %1664, %1700 ], [ %1664, %1685 ], [ %894, %905 ]
  %1750 = phi float [ %1665, %1663 ], [ %895, %1201 ], [ %895, %891 ], [ %1665, %1734 ], [ %1665, %1732 ], [ %1665, %1700 ], [ %1665, %1685 ], [ %895, %905 ]
  %1751 = phi float [ %1666, %1663 ], [ %896, %1201 ], [ %896, %891 ], [ %1666, %1734 ], [ %1666, %1732 ], [ %1666, %1700 ], [ %1666, %1685 ], [ %896, %905 ]
  %1752 = phi float [ %1667, %1663 ], [ %897, %1201 ], [ %897, %891 ], [ %1667, %1734 ], [ %1667, %1732 ], [ %1667, %1700 ], [ %1667, %1685 ], [ %897, %905 ]
  %1753 = phi float [ %1668, %1663 ], [ %898, %1201 ], [ %898, %891 ], [ %1668, %1734 ], [ %1668, %1732 ], [ %1668, %1700 ], [ %1668, %1685 ], [ %898, %905 ]
  %1754 = phi float [ %1669, %1663 ], [ %899, %1201 ], [ %899, %891 ], [ %1669, %1734 ], [ %1669, %1732 ], [ %1669, %1700 ], [ %1669, %1685 ], [ %899, %905 ]
  %1755 = phi float [ %1670, %1663 ], [ %900, %1201 ], [ %900, %891 ], [ %1670, %1734 ], [ %1670, %1732 ], [ %1670, %1700 ], [ %1670, %1685 ], [ %900, %905 ]
  %1756 = phi float [ %902, %1663 ], [ %902, %1201 ], [ %902, %891 ], [ %1745, %1734 ], [ %902, %1732 ], [ %1731, %1700 ], [ %1697, %1685 ], [ %902, %905 ]
  %1757 = phi float [ %903, %1663 ], [ %903, %1201 ], [ %903, %891 ], [ %1742, %1734 ], [ %903, %1732 ], [ %1708, %1700 ], [ %1694, %1685 ], [ %903, %905 ]
  %1758 = phi float [ %1671, %1663 ], [ %904, %1201 ], [ %904, %891 ], [ %1671, %1734 ], [ %1671, %1732 ], [ %1671, %1700 ], [ %1671, %1685 ], [ %904, %905 ]
  br i1 %371, label %2600, label %1759

; <label>:1759                                    ; preds = %1746
  %1760 = icmp ult i32 %424, 3
  %1761 = add i32 %43, 56
  %1762 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1763 = extractvalue %dx.types.ResRet.i32 %1762, 0
  %1764 = add i32 %43, 60
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = or i32 %1766, %1763
  %1768 = icmp eq i32 %1767, 0
  br i1 %1768, label %2600, label %1769

; <label>:1769                                    ; preds = %1759
  %1770 = and i32 %1763, 262144
  %1771 = icmp ne i32 %1770, 0
  %1772 = select i1 %1771, float %45, float 1.000000e+00
  %1773 = select i1 %1771, float %46, float 0.000000e+00
  %1774 = select i1 %1771, float %47, float 0.000000e+00
  %1775 = select i1 %1771, float %48, float 1.000000e+00
  %1776 = select i1 %1771, float %49, float %65
  %1777 = select i1 %1771, float %50, float %66
  %1778 = add i32 %43, 316
  %1779 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %1780 = extractvalue %dx.types.ResRet.i32 %1779, 0
  %1781 = lshr i32 %1780, 16
  %1782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1781)  ; LegacyF16ToF32(value)
  %1783 = fmul fast float %1782, 0x3F50624DE0000000
  %1784 = add i32 %43, 120
  %1785 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %1786 = extractvalue %dx.types.ResRet.i32 %1785, 0
  %1787 = lshr i32 %1786, 16
  %1788 = and i32 %1787, 255
  %1789 = lshr i32 %1786, 24
  %1790 = add i32 %43, 324
  %1791 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1790, i32 undef)  ; BufferLoad(srv,index,wot)
  %1792 = extractvalue %dx.types.ResRet.i32 %1791, 0
  %1793 = and i32 %1792, 65535
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = lshr i32 %1792, 16
  %1796 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1795)  ; LegacyF16ToF32(value)
  %1797 = add i32 %43, 64
  %1798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1797, i32 undef)  ; BufferLoad(srv,index,wot)
  %1799 = extractvalue %dx.types.ResRet.i32 %1798, 0
  %1800 = lshr i32 %1799, 22
  %1801 = shl nuw nsw i32 %1800, 5
  %1802 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1801)  ; LegacyF16ToF32(value)
  %1803 = shl i32 %1799, 4
  %1804 = and i32 %1803, 32752
  %1805 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1804)  ; LegacyF16ToF32(value)
  %1806 = lshr i32 %1799, 7
  %1807 = and i32 %1806, 32752
  %1808 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1807)  ; LegacyF16ToF32(value)
  %1809 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1810 = extractvalue %dx.types.CBufRet.f32 %1809, 3
  %1811 = fmul fast float %1810, 1.000000e+03
  %1812 = fmul fast float %321, %1811
  %1813 = call float @dx.op.unary.f32(i32 22, float %1812)  ; Frc(value)
  %1814 = fadd fast float %1813, %311
  %1815 = fmul fast float %322, %1811
  %1816 = call float @dx.op.unary.f32(i32 22, float %1815)  ; Frc(value)
  %1817 = fadd fast float %1816, %313
  %1818 = fmul fast float %1783, %1811
  %1819 = call float @dx.op.unary.f32(i32 22, float %1818)  ; Frc(value)
  %1820 = fmul fast float %1819, 0x401921FB60000000
  %1821 = fadd fast float %1820, %1802
  %1822 = call float @dx.op.unary.f32(i32 13, float %1821)  ; Sin(value)
  %1823 = call float @dx.op.unary.f32(i32 12, float %1821)  ; Cos(value)
  %1824 = fsub fast float -0.000000e+00, %1822
  %1825 = fadd fast float %1776, -5.000000e-01
  %1826 = fadd fast float %1777, -5.000000e-01
  %1827 = fmul fast float %1794, %1825
  %1828 = fmul fast float %1796, %1826
  %1829 = fadd fast float %1827, 5.000000e-01
  %1830 = fadd fast float %1828, 5.000000e-01
  %1831 = fmul fast float %1805, %1829
  %1832 = fmul fast float %1808, %1830
  %1833 = fmul fast float %1823, %1831
  %1834 = call float @dx.op.tertiary.f32(i32 46, float %1824, float %1832, float %1833)  ; FMad(a,b,c)
  %1835 = fmul fast float %1822, %1831
  %1836 = call float @dx.op.tertiary.f32(i32 46, float %1823, float %1832, float %1835)  ; FMad(a,b,c)
  %1837 = fadd fast float %1814, %1834
  %1838 = fadd fast float %1817, %1836
  %1839 = icmp ugt i32 %1788, 1
  %1840 = icmp ugt i32 %1786, 33554431
  %1841 = or i1 %1840, %1839
  br i1 %1841, label %1842, label %1867

; <label>:1842                                    ; preds = %1769
  %1843 = add i32 %43, 260
  %1844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1843, i32 undef)  ; BufferLoad(srv,index,wot)
  %1845 = extractvalue %dx.types.ResRet.i32 %1844, 0
  %1846 = lshr i32 %1845, 16
  %1847 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1846)  ; LegacyF16ToF32(value)
  %1848 = fmul fast float %1810, %1847
  %1849 = call float @dx.op.unary.f32(i32 22, float %1848)  ; Frc(value)
  %1850 = mul nuw nsw i32 %1788, %1789
  %1851 = uitofp i32 %1850 to float
  %1852 = fmul fast float %1849, %1851
  %1853 = call float @dx.op.unary.f32(i32 27, float %1852)  ; Round_ni(value)
  %1854 = fptoui float %1853 to i32
  %1855 = urem i32 %1854, %1788
  %1856 = udiv i32 %1854, %1789
  %1857 = call float @dx.op.unary.f32(i32 22, float %1837)  ; Frc(value)
  %1858 = call float @dx.op.unary.f32(i32 22, float %1838)  ; Frc(value)
  %1859 = uitofp i32 %1855 to float
  %1860 = uitofp i32 %1856 to float
  %1861 = fadd fast float %1857, %1859
  %1862 = fadd fast float %1858, %1860
  %1863 = uitofp i32 %1788 to float
  %1864 = uitofp i32 %1789 to float
  %1865 = fdiv fast float %1861, %1863
  %1866 = fdiv fast float %1862, %1864
  br label %1867

; <label>:1867                                    ; preds = %1842, %1769
  %1868 = phi float [ %1865, %1842 ], [ %1837, %1769 ]
  %1869 = phi float [ %1866, %1842 ], [ %1838, %1769 ]
  %1870 = and i32 %1763, 16777216
  %1871 = icmp eq i32 %1870, 0
  br i1 %1871, label %1981, label %1872

; <label>:1872                                    ; preds = %1867
  %1873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1874 = extractvalue %dx.types.CBufRet.f32 %1873, 0
  %1875 = extractvalue %dx.types.CBufRet.f32 %1873, 1
  %1876 = extractvalue %dx.types.CBufRet.f32 %1873, 2
  %1877 = fadd fast float %1874, %140
  %1878 = fadd fast float %1875, %141
  %1879 = fadd fast float %1876, %142
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 0
  %1882 = call float @dx.op.unary.f32(i32 7, float %1881)  ; Saturate(value)
  %1883 = icmp eq i32 %44, 65535
  br i1 %1883, label %1978, label %1884

; <label>:1884                                    ; preds = %1872
  %1885 = lshr i32 %44, 1
  %1886 = shl i32 %1885, 2
  %1887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1886, i32 undef)  ; BufferLoad(srv,index,wot)
  %1888 = extractvalue %dx.types.ResRet.i32 %1887, 0
  %1889 = and i32 %44, 1
  %1890 = icmp ne i32 %1889, 0
  %1891 = lshr i32 %1888, 16
  %1892 = and i32 %1888, 65535
  %1893 = select i1 %1890, i32 %1891, i32 %1892
  %1894 = icmp eq i32 %1893, 65535
  br i1 %1894, label %1974, label %1895

; <label>:1895                                    ; preds = %1884
  %1896 = mul nuw nsw i32 %1893, 40
  %1897 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.f32 %1897, 0
  %1899 = extractvalue %dx.types.ResRet.f32 %1897, 1
  %1900 = extractvalue %dx.types.ResRet.f32 %1897, 2
  %1901 = add nuw nsw i32 %1896, 12
  %1902 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1901, i32 undef)  ; BufferLoad(srv,index,wot)
  %1903 = extractvalue %dx.types.ResRet.f32 %1902, 0
  %1904 = extractvalue %dx.types.ResRet.f32 %1902, 1
  %1905 = extractvalue %dx.types.ResRet.f32 %1902, 2
  %1906 = add nuw nsw i32 %1896, 24
  %1907 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1906, i32 undef)  ; BufferLoad(srv,index,wot)
  %1908 = extractvalue %dx.types.ResRet.f32 %1907, 0
  %1909 = extractvalue %dx.types.ResRet.f32 %1907, 1
  %1910 = extractvalue %dx.types.ResRet.f32 %1907, 2
  %1911 = add nuw nsw i32 %1896, 36
  %1912 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1911, i32 undef)  ; BufferLoad(srv,index,wot)
  %1913 = extractvalue %dx.types.ResRet.f32 %1912, 0
  %1914 = fsub fast float %1877, %1898
  %1915 = fsub fast float %1878, %1899
  %1916 = fsub fast float %1879, %1900
  %1917 = fmul fast float %1913, %1914
  %1918 = fmul fast float %1913, %1915
  %1919 = fmul fast float %1913, %1916
  %1920 = call float @dx.op.unary.f32(i32 27, float %1917)  ; Round_ni(value)
  %1921 = call float @dx.op.unary.f32(i32 27, float %1918)  ; Round_ni(value)
  %1922 = call float @dx.op.unary.f32(i32 27, float %1919)  ; Round_ni(value)
  %1923 = fadd fast float %1920, 5.000000e-01
  %1924 = fadd fast float %1921, 5.000000e-01
  %1925 = fadd fast float %1922, 5.000000e-01
  %1926 = fmul fast float %1923, %1903
  %1927 = fmul fast float %1924, %1904
  %1928 = fmul fast float %1925, %1905
  %1929 = shl i32 %44, 2
  %1930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1931 = extractvalue %dx.types.ResRet.i32 %1930, 0
  %1932 = add i32 %1931, 0
  %1933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1934 = call float @dx.op.unary.f32(i32 22, float %1926)  ; Frc(value)
  %1935 = call float @dx.op.unary.f32(i32 22, float %1927)  ; Frc(value)
  %1936 = call float @dx.op.unary.f32(i32 22, float %1928)  ; Frc(value)
  %1937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1933, %dx.types.Handle %40, float %1934, float %1935, float %1936, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1938 = extractvalue %dx.types.ResRet.f32 %1937, 0
  %1939 = extractvalue %dx.types.ResRet.f32 %1937, 1
  %1940 = extractvalue %dx.types.ResRet.f32 %1937, 2
  %1941 = fmul fast float %1938, 1.023000e+03
  %1942 = fmul fast float %1939, 1.023000e+03
  %1943 = fmul fast float %1940, 1.023000e+03
  %1944 = fadd fast float %1941, 5.000000e-01
  %1945 = fadd fast float %1942, 5.000000e-01
  %1946 = fadd fast float %1943, 5.000000e-01
  %1947 = call float @dx.op.unary.f32(i32 27, float %1944)  ; Round_ni(value)
  %1948 = call float @dx.op.unary.f32(i32 27, float %1945)  ; Round_ni(value)
  %1949 = call float @dx.op.unary.f32(i32 27, float %1946)  ; Round_ni(value)
  %1950 = fsub fast float %1917, %1920
  %1951 = fsub fast float %1918, %1921
  %1952 = fsub fast float %1919, %1922
  %1953 = fmul fast float %1950, 7.500000e-01
  %1954 = fmul fast float %1951, 7.500000e-01
  %1955 = fmul fast float %1952, 7.500000e-01
  %1956 = fadd fast float %1920, 1.250000e-01
  %1957 = fadd fast float %1956, %1953
  %1958 = fadd fast float %1957, %1947
  %1959 = fadd fast float %1921, 1.250000e-01
  %1960 = fadd fast float %1959, %1954
  %1961 = fadd fast float %1960, %1948
  %1962 = fadd fast float %1922, 1.250000e-01
  %1963 = fadd fast float %1962, %1955
  %1964 = fadd fast float %1963, %1949
  %1965 = fmul fast float %1958, %1908
  %1966 = fmul fast float %1961, %1909
  %1967 = fmul fast float %1964, %1910
  %1968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1929, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.i32 %1968, 0
  %1970 = add i32 %1969, 0
  %1971 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1970, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1972 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1971, %dx.types.Handle %38, float %1965, float %1966, float %1967, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1973 = extractvalue %dx.types.ResRet.f32 %1972, 0
  br label %1974

; <label>:1974                                    ; preds = %1895, %1884
  %1975 = phi float [ %1973, %1895 ], [ -1.000000e+00, %1884 ]
  %1976 = fadd fast float %1975, %1882
  %1977 = call float @dx.op.unary.f32(i32 7, float %1976)  ; Saturate(value)
  br label %1978

; <label>:1978                                    ; preds = %1974, %1872
  %1979 = phi float [ %1977, %1974 ], [ %1882, %1872 ]
  %1980 = fmul fast float %1979, %420
  br label %1981

; <label>:1981                                    ; preds = %1978, %1867
  %1982 = phi float [ %1980, %1978 ], [ %420, %1867 ]
  %1983 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.i32 %1983, 0
  %1985 = and i32 %1984, 256
  %1986 = icmp eq i32 %1985, 0
  br i1 %1986, label %2033, label %1987

; <label>:1987                                    ; preds = %1981
  %1988 = add i32 %43, 448
  %1989 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1988, i32 undef)  ; BufferLoad(srv,index,wot)
  %1990 = extractvalue %dx.types.ResRet.i32 %1989, 0
  %1991 = add i32 %1990, 0
  %1992 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1991, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1993 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1992, %dx.types.Handle %74, float %1868, float %1869, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1994 = extractvalue %dx.types.ResRet.f32 %1993, 0
  %1995 = add i32 %43, 132
  %1996 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1995, i32 undef)  ; BufferLoad(srv,index,wot)
  %1997 = extractvalue %dx.types.ResRet.i32 %1996, 0
  %1998 = shl i32 %1997, 4
  %1999 = and i32 %1998, 32752
  %2000 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1999)  ; LegacyF16ToF32(value)
  %2001 = lshr i32 %1997, 7
  %2002 = and i32 %2001, 32752
  %2003 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2002)  ; LegacyF16ToF32(value)
  %2004 = fsub fast float 1.000000e+00, %1982
  %2005 = call float @dx.op.binary.f32(i32 35, float %2004, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2006 = bitcast float %1982 to i32
  %2007 = sitofp i32 %2006 to float
  %2008 = fadd fast float %2007, 0xC1CFBF8940000000
  %2009 = fmul fast float %2003, %2008
  %2010 = fadd fast float %2009, 0x41CFBF8940000000
  %2011 = fptosi float %2010 to i32
  %2012 = bitcast i32 %2011 to float
  %2013 = bitcast float %2005 to i32
  %2014 = sitofp i32 %2013 to float
  %2015 = fadd fast float %2014, 0xC1CFBF8940000000
  %2016 = fmul fast float %2015, %2003
  %2017 = fadd fast float %2016, 0x41CFBF8940000000
  %2018 = fptosi float %2017 to i32
  %2019 = bitcast i32 %2018 to float
  %2020 = fmul fast float %2012, %2000
  %2021 = fmul fast float %2019, %2000
  %2022 = fsub fast float %2005, %2020
  %2023 = fadd fast float %2021, %2005
  %2024 = call float @dx.op.unary.f32(i32 7, float %2022)  ; Saturate(value)
  %2025 = call float @dx.op.unary.f32(i32 7, float %2023)  ; Saturate(value)
  %2026 = fsub fast float %1994, %2024
  %2027 = fsub fast float %2025, %2024
  %2028 = bitcast float %2027 to i32
  %2029 = sub nsw i32 2129859010, %2028
  %2030 = bitcast i32 %2029 to float
  %2031 = fmul fast float %2030, %2026
  %2032 = call float @dx.op.unary.f32(i32 7, float %2031)  ; Saturate(value)
  br label %2033

; <label>:2033                                    ; preds = %1987, %1981
  %2034 = phi float [ %2032, %1987 ], [ %1982, %1981 ]
  %2035 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2036 = extractvalue %dx.types.ResRet.i32 %2035, 0
  %2037 = and i32 %2036, 128
  %2038 = icmp eq i32 %2037, 0
  br i1 %2038, label %2055, label %2039

; <label>:2039                                    ; preds = %2033
  %2040 = add i32 %43, 432
  %2041 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2040, i32 undef)  ; BufferLoad(srv,index,wot)
  %2042 = extractvalue %dx.types.ResRet.i32 %2041, 0
  %2043 = add i32 %2042, 0
  %2044 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2043, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2045 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2044, %dx.types.Handle %74, float %1868, float %1869, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2046 = extractvalue %dx.types.ResRet.f32 %2045, 0
  %2047 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2048 = extractvalue %dx.types.ResRet.i32 %2047, 0
  %2049 = and i32 %2048, 524288
  %2050 = icmp ne i32 %2049, 0
  %2051 = fcmp fast ogt float %2046, 0x3FE0101020000000
  %2052 = select i1 %2051, float 1.000000e+00, float 0.000000e+00
  %2053 = select i1 %2050, float %2052, float %2046
  %2054 = fmul fast float %2053, %2034
  br label %2055

; <label>:2055                                    ; preds = %2039, %2033
  %2056 = phi float [ %2054, %2039 ], [ %2034, %2033 ]
  %2057 = fcmp fast ult float %2056, 0x3F70101020000000
  br i1 %2057, label %2600, label %2058

; <label>:2058                                    ; preds = %2055
  %2059 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2060 = extractvalue %dx.types.ResRet.i32 %2059, 0
  %2061 = and i32 %2060, 16
  %2062 = icmp eq i32 %2061, 0
  br i1 %2062, label %2261, label %2063

; <label>:2063                                    ; preds = %2058
  %2064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1784, i32 undef)  ; BufferLoad(srv,index,wot)
  %2065 = extractvalue %dx.types.ResRet.i32 %2064, 0
  %2066 = add i32 %43, 384
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = add i32 %2068, 0
  %2070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2069, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2071 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2070, %dx.types.Handle %73, float %1868, float %1869, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2072 = extractvalue %dx.types.ResRet.f32 %2071, 0
  %2073 = extractvalue %dx.types.ResRet.f32 %2071, 1
  %2074 = extractvalue %dx.types.ResRet.f32 %2071, 2
  %2075 = extractvalue %dx.types.ResRet.f32 %2071, 3
  %2076 = and i32 %2065, 255
  %2077 = uitofp i32 %2076 to float
  %2078 = lshr i32 %2065, 8
  %2079 = and i32 %2078, 255
  %2080 = uitofp i32 %2079 to float
  %2081 = fmul fast float %2075, %2077
  %2082 = fadd fast float %2081, %2080
  %2083 = fmul fast float %2082, 0x3F70101000000000
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = and i32 %2085, 512
  %2087 = icmp eq i32 %2086, 0
  br i1 %2087, label %2096, label %2088

; <label>:2088                                    ; preds = %2063
  %2089 = add i32 %43, 468
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = add i32 %2091, 0
  %2093 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2092, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2094 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2093, %dx.types.Handle %74, float %1868, float %1869, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2095 = extractvalue %dx.types.ResRet.f32 %2094, 0
  br label %2096

; <label>:2096                                    ; preds = %2088, %2063
  %2097 = phi float [ %2095, %2088 ], [ 1.000000e+00, %2063 ]
  %2098 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2099 = extractvalue %dx.types.ResRet.i32 %2098, 0
  %2100 = and i32 %2099, 33554432
  %2101 = icmp eq i32 %2100, 0
  br i1 %2101, label %2208, label %2102

; <label>:2102                                    ; preds = %2096
  %2103 = add i32 %43, 256
  %2104 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2103, i32 undef)  ; BufferLoad(srv,index,wot)
  %2105 = extractvalue %dx.types.ResRet.i32 %2104, 0
  %2106 = and i32 %2105, 65535
  %2107 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2106)  ; LegacyF16ToF32(value)
  %2108 = lshr i32 %2105, 16
  %2109 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2108)  ; LegacyF16ToF32(value)
  %2110 = add i32 %43, 260
  %2111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2110, i32 undef)  ; BufferLoad(srv,index,wot)
  %2112 = extractvalue %dx.types.ResRet.i32 %2111, 0
  %2113 = and i32 %2112, 65535
  %2114 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2113)  ; LegacyF16ToF32(value)
  %2115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %2116 = extractvalue %dx.types.ResRet.i32 %2115, 0
  %2117 = lshr i32 %2116, 24
  %2118 = uitofp i32 %2117 to float
  %2119 = fmul fast float %2118, 0x3F70101020000000
  %2120 = and i32 %2116, 255
  %2121 = uitofp i32 %2120 to float
  %2122 = fmul fast float %2121, 0x3F70101020000000
  %2123 = lshr i32 %2116, 8
  %2124 = and i32 %2123, 255
  %2125 = uitofp i32 %2124 to float
  %2126 = fmul fast float %2125, 0x3F70101020000000
  %2127 = lshr i32 %2116, 16
  %2128 = and i32 %2127, 255
  %2129 = uitofp i32 %2128 to float
  %2130 = fmul fast float %2129, 0x3F70101020000000
  %2131 = add i32 %43, 252
  %2132 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2131, i32 undef)  ; BufferLoad(srv,index,wot)
  %2133 = extractvalue %dx.types.ResRet.i32 %2132, 0
  %2134 = lshr i32 %2133, 24
  %2135 = uitofp i32 %2134 to float
  %2136 = fmul fast float %2135, 0x3F70101020000000
  %2137 = and i32 %2133, 255
  %2138 = uitofp i32 %2137 to float
  %2139 = fmul fast float %2138, 0x3F70101020000000
  %2140 = lshr i32 %2133, 8
  %2141 = and i32 %2140, 255
  %2142 = uitofp i32 %2141 to float
  %2143 = fmul fast float %2142, 0x3F70101020000000
  %2144 = lshr i32 %2133, 16
  %2145 = and i32 %2144, 255
  %2146 = uitofp i32 %2145 to float
  %2147 = fmul fast float %2146, 0x3F70101020000000
  %2148 = bitcast float %2072 to i32
  %2149 = ashr i32 %2148, 1
  %2150 = sub nsw i32 1597463174, %2149
  %2151 = bitcast i32 %2150 to float
  %2152 = fmul fast float %2072, 5.000000e-01
  %2153 = fmul fast float %2151, %2151
  %2154 = fmul fast float %2153, %2152
  %2155 = fsub fast float 1.500000e+00, %2154
  %2156 = fmul fast float %2151, %2072
  %2157 = fmul fast float %2156, %2155
  %2158 = bitcast float %2073 to i32
  %2159 = ashr i32 %2158, 1
  %2160 = sub nsw i32 1597463174, %2159
  %2161 = bitcast i32 %2160 to float
  %2162 = fmul fast float %2073, 5.000000e-01
  %2163 = fmul fast float %2161, %2161
  %2164 = fmul fast float %2163, %2162
  %2165 = fsub fast float 1.500000e+00, %2164
  %2166 = fmul fast float %2161, %2073
  %2167 = fmul fast float %2166, %2165
  %2168 = bitcast float %2074 to i32
  %2169 = ashr i32 %2168, 1
  %2170 = sub nsw i32 1597463174, %2169
  %2171 = bitcast i32 %2170 to float
  %2172 = fmul fast float %2074, 5.000000e-01
  %2173 = fmul fast float %2171, %2171
  %2174 = fmul fast float %2173, %2172
  %2175 = fsub fast float 1.500000e+00, %2174
  %2176 = fmul fast float %2171, %2074
  %2177 = fmul fast float %2176, %2175
  %2178 = fsub fast float %2157, %2139
  %2179 = fsub fast float %2167, %2143
  %2180 = fsub fast float %2177, %2147
  %2181 = fmul fast float %2178, %2107
  %2182 = fmul fast float %2179, %2109
  %2183 = fmul fast float %2180, %2114
  %2184 = fadd fast float %2181, %2122
  %2185 = fadd fast float %2182, %2126
  %2186 = fadd fast float %2183, %2130
  %2187 = call float @dx.op.unary.f32(i32 7, float %2184)  ; Saturate(value)
  %2188 = call float @dx.op.unary.f32(i32 7, float %2185)  ; Saturate(value)
  %2189 = call float @dx.op.unary.f32(i32 7, float %2186)  ; Saturate(value)
  %2190 = fmul fast float %2187, %2187
  %2191 = fmul fast float %2188, %2188
  %2192 = fmul fast float %2189, %2189
  %2193 = fsub fast float %2190, %2072
  %2194 = fsub fast float %2191, %2073
  %2195 = fsub fast float %2192, %2074
  %2196 = fmul fast float %2193, %2097
  %2197 = fmul fast float %2194, %2097
  %2198 = fmul fast float %2195, %2097
  %2199 = fadd fast float %2196, %2072
  %2200 = fadd fast float %2197, %2073
  %2201 = fadd fast float %2198, %2074
  %2202 = fadd fast float %2119, %2083
  %2203 = fsub fast float %2202, %2136
  %2204 = call float @dx.op.unary.f32(i32 7, float %2203)  ; Saturate(value)
  %2205 = fsub fast float %2204, %2083
  %2206 = fmul fast float %2205, %2097
  %2207 = fadd fast float %2206, %2083
  br label %2261

; <label>:2208                                    ; preds = %2096
  %2209 = and i32 %2099, 134217728
  %2210 = icmp eq i32 %2209, 0
  br i1 %2210, label %2245, label %2211

; <label>:2211                                    ; preds = %2208
  %2212 = call float @dx.op.unary.f32(i32 24, float %298)  ; Sqrt(value)
  %2213 = call float @dx.op.unary.f32(i32 24, float %302)  ; Sqrt(value)
  %2214 = call float @dx.op.unary.f32(i32 24, float %306)  ; Sqrt(value)
  %2215 = fadd fast float %2212, -5.000000e-01
  %2216 = fadd fast float %2213, -5.000000e-01
  %2217 = fadd fast float %2214, -5.000000e-01
  %2218 = fmul fast float %2215, %2097
  %2219 = fmul fast float %2216, %2097
  %2220 = fmul fast float %2217, %2097
  %2221 = fadd fast float %2218, 5.000000e-01
  %2222 = fadd fast float %2219, 5.000000e-01
  %2223 = fadd fast float %2220, 5.000000e-01
  %2224 = call float @dx.op.unary.f32(i32 24, float %2072)  ; Sqrt(value)
  %2225 = call float @dx.op.unary.f32(i32 24, float %2073)  ; Sqrt(value)
  %2226 = call float @dx.op.unary.f32(i32 24, float %2074)  ; Sqrt(value)
  %2227 = fmul fast float %2221, 2.000000e+00
  %2228 = fsub fast float 1.000000e+00, %2227
  %2229 = fmul fast float %2228, %2224
  %2230 = fadd fast float %2229, %2227
  %2231 = fmul fast float %2230, %2224
  %2232 = fmul fast float %2222, 2.000000e+00
  %2233 = fsub fast float 1.000000e+00, %2232
  %2234 = fmul fast float %2233, %2225
  %2235 = fadd fast float %2234, %2232
  %2236 = fmul fast float %2235, %2225
  %2237 = fmul fast float %2223, 2.000000e+00
  %2238 = fsub fast float 1.000000e+00, %2237
  %2239 = fmul fast float %2238, %2226
  %2240 = fadd fast float %2239, %2237
  %2241 = fmul fast float %2240, %2226
  %2242 = fmul fast float %2231, %2231
  %2243 = fmul fast float %2236, %2236
  %2244 = fmul fast float %2241, %2241
  br label %2261

; <label>:2245                                    ; preds = %2208
  %2246 = fmul fast float %298, %298
  %2247 = fmul fast float %302, %302
  %2248 = fmul fast float %306, %306
  %2249 = fadd fast float %2246, -1.000000e+00
  %2250 = fadd fast float %2247, -1.000000e+00
  %2251 = fadd fast float %2248, -1.000000e+00
  %2252 = fmul fast float %2097, %2249
  %2253 = fmul fast float %2097, %2250
  %2254 = fmul fast float %2097, %2251
  %2255 = fadd fast float %2252, 1.000000e+00
  %2256 = fadd fast float %2253, 1.000000e+00
  %2257 = fadd fast float %2254, 1.000000e+00
  %2258 = fmul fast float %2255, %2072
  %2259 = fmul fast float %2256, %2073
  %2260 = fmul fast float %2257, %2074
  br label %2261

; <label>:2261                                    ; preds = %2245, %2211, %2102, %2058
  %2262 = phi float [ %2207, %2102 ], [ %2083, %2211 ], [ %2083, %2245 ], [ 0x3FA23C0BE0000000, %2058 ]
  %2263 = phi float [ %2199, %2102 ], [ %2242, %2211 ], [ %2258, %2245 ], [ 1.000000e+00, %2058 ]
  %2264 = phi float [ %2200, %2102 ], [ %2243, %2211 ], [ %2259, %2245 ], [ 1.000000e+00, %2058 ]
  %2265 = phi float [ %2201, %2102 ], [ %2244, %2211 ], [ %2260, %2245 ], [ 1.000000e+00, %2058 ]
  %2266 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2267 = extractvalue %dx.types.CBufRet.i32 %2266, 1
  %2268 = and i32 %2267, 1
  %2269 = icmp ne i32 %2268, 0
  %2270 = add i32 %43, 356
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = and i32 %2272, 32
  %2274 = icmp ne i32 %2273, 0
  %2275 = and i1 %2269, %2274
  %2276 = select i1 %2275, float 1.000000e+00, float %2263
  %2277 = select i1 %2275, float 0x3FD3333340000000, float %2264
  %2278 = select i1 %2275, float 0x3FD3333340000000, float %2265
  %2279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2280 = extractvalue %dx.types.ResRet.i32 %2279, 0
  %2281 = and i32 %2280, 32
  %2282 = icmp eq i32 %2281, 0
  br i1 %2282, label %2355, label %2283

; <label>:2283                                    ; preds = %2261
  %2284 = add i32 %43, 124
  %2285 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2284, i32 undef)  ; BufferLoad(srv,index,wot)
  %2286 = extractvalue %dx.types.ResRet.i32 %2285, 0
  %2287 = add i32 %43, 400
  %2288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2287, i32 undef)  ; BufferLoad(srv,index,wot)
  %2289 = extractvalue %dx.types.ResRet.i32 %2288, 0
  %2290 = add i32 %2289, 0
  %2291 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2290, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2292 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2291, %dx.types.Handle %73, float %1868, float %1869, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2293 = extractvalue %dx.types.ResRet.f32 %2292, 0
  %2294 = extractvalue %dx.types.ResRet.f32 %2292, 1
  %2295 = extractvalue %dx.types.ResRet.f32 %2292, 2
  %2296 = extractvalue %dx.types.ResRet.f32 %2292, 3
  %2297 = and i32 %2286, 255
  %2298 = uitofp i32 %2297 to float
  %2299 = lshr i32 %2286, 8
  %2300 = and i32 %2299, 255
  %2301 = uitofp i32 %2300 to float
  %2302 = lshr i32 %2286, 16
  %2303 = and i32 %2302, 255
  %2304 = uitofp i32 %2303 to float
  %2305 = fmul fast float %2304, 0x3F70101000000000
  %2306 = fmul fast float %2293, %2298
  %2307 = fadd fast float %2306, %2301
  %2308 = fmul fast float %2307, 0x3F70101000000000
  %2309 = fadd fast float %2294, -5.000000e-01
  %2310 = fadd fast float %2296, -5.000000e-01
  %2311 = fmul fast float %2309, %2305
  %2312 = fmul fast float %2310, %2305
  %2313 = fadd fast float %2311, 5.000000e-01
  %2314 = fadd fast float %2312, 5.000000e-01
  %2315 = fmul fast float %2313, 2.000000e+00
  %2316 = fadd fast float %2315, -1.000000e+00
  %2317 = fmul fast float %2314, 2.000000e+00
  %2318 = fadd fast float %2317, -1.000000e+00
  %2319 = fadd fast float %2316, %2318
  %2320 = fmul fast float %2319, 5.000000e-01
  %2321 = fsub fast float %2316, %2318
  %2322 = fmul fast float %2321, 5.000000e-01
  %2323 = call float @dx.op.unary.f32(i32 6, float %2320)  ; FAbs(value)
  %2324 = fsub fast float 1.000000e+00, %2323
  %2325 = call float @dx.op.unary.f32(i32 6, float %2322)  ; FAbs(value)
  %2326 = fsub fast float %2324, %2325
  %2327 = call float @dx.op.dot3.f32(i32 55, float %2320, float %2322, float %2326, float %2320, float %2322, float %2326)  ; Dot3(ax,ay,az,bx,by,bz)
  %2328 = call float @dx.op.unary.f32(i32 25, float %2327)  ; Rsqrt(value)
  %2329 = fmul fast float %2320, %2328
  %2330 = fmul fast float %2322, %2328
  %2331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2332 = extractvalue %dx.types.ResRet.i32 %2331, 0
  %2333 = and i32 %2332, 67108864
  %2334 = icmp eq i32 %2333, 0
  br i1 %2334, label %2351, label %2335

; <label>:2335                                    ; preds = %2283
  %2336 = add i32 %43, 312
  %2337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2336, i32 undef)  ; BufferLoad(srv,index,wot)
  %2338 = extractvalue %dx.types.ResRet.i32 %2337, 0
  %2339 = and i32 %2338, 65535
  %2340 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2339)  ; LegacyF16ToF32(value)
  %2341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1778, i32 undef)  ; BufferLoad(srv,index,wot)
  %2342 = extractvalue %dx.types.ResRet.i32 %2341, 0
  %2343 = and i32 %2342, 65535
  %2344 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2343)  ; LegacyF16ToF32(value)
  %2345 = lshr i32 %2338, 16
  %2346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2345)  ; LegacyF16ToF32(value)
  %2347 = fsub fast float %2308, %2346
  %2348 = fmul fast float %2347, %2340
  %2349 = fadd fast float %2348, %2344
  %2350 = call float @dx.op.unary.f32(i32 7, float %2349)  ; Saturate(value)
  br label %2351

; <label>:2351                                    ; preds = %2335, %2283
  %2352 = phi float [ %2350, %2335 ], [ %2308, %2283 ]
  %2353 = call float @dx.op.dot2.f32(i32 54, float %2329, float %2330, float %1772, float %1773)  ; Dot2(ax,ay,bx,by)
  %2354 = call float @dx.op.dot2.f32(i32 54, float %2329, float %2330, float %1774, float %1775)  ; Dot2(ax,ay,bx,by)
  br label %2355

; <label>:2355                                    ; preds = %2351, %2261
  %2356 = phi float [ %2352, %2351 ], [ 0x3FD6666660000000, %2261 ]
  %2357 = phi float [ %2353, %2351 ], [ 0.000000e+00, %2261 ]
  %2358 = phi float [ %2354, %2351 ], [ 0.000000e+00, %2261 ]
  %2359 = phi float [ %2295, %2351 ], [ 1.000000e+00, %2261 ]
  %2360 = add i32 %43, 192
  %2361 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2360, i32 undef)  ; BufferLoad(srv,index,wot)
  %2362 = extractvalue %dx.types.ResRet.i32 %2361, 0
  %2363 = lshr i32 %2362, 22
  %2364 = shl nuw nsw i32 %2363, 5
  %2365 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2364)  ; LegacyF16ToF32(value)
  %2366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2367 = extractvalue %dx.types.ResRet.i32 %2366, 0
  %2368 = and i32 %2367, 64
  %2369 = icmp eq i32 %2368, 0
  br i1 %2369, label %2403, label %2370

; <label>:2370                                    ; preds = %2355
  %2371 = add i32 %43, 416
  %2372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2371, i32 undef)  ; BufferLoad(srv,index,wot)
  %2373 = extractvalue %dx.types.ResRet.i32 %2372, 0
  %2374 = add i32 %2373, 0
  %2375 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2374, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2376 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2377 = extractvalue %dx.types.ResRet.i32 %2376, 0
  %2378 = and i32 %2377, 131072
  %2379 = icmp eq i32 %2378, 0
  %2380 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2375, %dx.types.Handle %73, float %1868, float %1869, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2381 = extractvalue %dx.types.ResRet.f32 %2380, 0
  %2382 = extractvalue %dx.types.ResRet.f32 %2380, 1
  %2383 = extractvalue %dx.types.ResRet.f32 %2380, 2
  %2384 = fmul fast float %2381, %286
  %2385 = fmul fast float %2382, %289
  %2386 = fmul fast float %2383, %292
  br i1 %2379, label %2393, label %2387

; <label>:2387                                    ; preds = %2370
  %2388 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2389 = extractvalue %dx.types.CBufRet.f32 %2388, 0
  %2390 = fmul fast float %2389, %2384
  %2391 = fmul fast float %2389, %2385
  %2392 = fmul fast float %2389, %2386
  br label %2393

; <label>:2393                                    ; preds = %2387, %2370
  %2394 = phi float [ %2390, %2387 ], [ %2384, %2370 ]
  %2395 = phi float [ %2391, %2387 ], [ %2385, %2370 ]
  %2396 = phi float [ %2392, %2387 ], [ %2386, %2370 ]
  %2397 = fmul fast float %2394, %2365
  %2398 = select i1 %182, float %2397, float %2394
  %2399 = call float @dx.op.dot3.f32(i32 55, float %2398, float %2395, float %2396, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2400 = select i1 %182, float 0.000000e+00, float %2394
  %2401 = select i1 %182, float %2399, float %2395
  %2402 = select i1 %182, float 0.000000e+00, float %2396
  br label %2403

; <label>:2403                                    ; preds = %2393, %2355
  %2404 = phi float [ %2400, %2393 ], [ 0.000000e+00, %2355 ]
  %2405 = phi float [ %2401, %2393 ], [ 0.000000e+00, %2355 ]
  %2406 = phi float [ %2402, %2393 ], [ 0.000000e+00, %2355 ]
  %2407 = add i32 %43, 128
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = and i32 %2409, 255
  %2411 = uitofp i32 %2410 to float
  %2412 = lshr i32 %2409, 8
  %2413 = and i32 %2412, 255
  %2414 = uitofp i32 %2413 to float
  %2415 = call float @dx.op.dot3.f32(i32 55, float %2276, float %2277, float %2278, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2416 = fmul fast float %2414, %2415
  %2417 = fadd fast float %2416, %2411
  %2418 = fmul fast float %2417, 0x3F70101020000000
  %2419 = call float @dx.op.unary.f32(i32 7, float %2418)  ; Saturate(value)
  br i1 %1760, label %2420, label %2428

; <label>:2420                                    ; preds = %2403
  %2421 = fsub fast float 1.000000e+00, %2056
  %2422 = fmul fast float %2421, %1749
  %2423 = fmul fast float %2421, %1750
  %2424 = fmul fast float %2421, %1751
  %2425 = fmul fast float %2421, %1752
  %2426 = fmul fast float %2421, %1753
  %2427 = fmul fast float %2421, %1754
  br label %2428

; <label>:2428                                    ; preds = %2420, %2403
  %2429 = phi float [ %2422, %2420 ], [ %1749, %2403 ]
  %2430 = phi float [ %2423, %2420 ], [ %1750, %2403 ]
  %2431 = phi float [ %2424, %2420 ], [ %1751, %2403 ]
  %2432 = phi float [ %2425, %2420 ], [ %1752, %2403 ]
  %2433 = phi float [ %2426, %2420 ], [ %1753, %2403 ]
  %2434 = phi float [ %2427, %2420 ], [ %1754, %2403 ]
  %2435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1761, i32 undef)  ; BufferLoad(srv,index,wot)
  %2436 = extractvalue %dx.types.ResRet.i32 %2435, 0
  %2437 = and i32 %2436, 3
  %2438 = icmp eq i32 %2437, 3
  br i1 %2438, label %2517, label %2439

; <label>:2439                                    ; preds = %2428
  %2440 = and i32 %2436, 16
  %2441 = icmp ne i32 %2440, 0
  %2442 = select i1 %2441, float %2056, float 0.000000e+00
  %2443 = icmp eq i32 %2437, 0
  br i1 %2443, label %2444, label %2472

; <label>:2444                                    ; preds = %2439
  %2445 = and i32 %2436, 64
  %2446 = icmp ne i32 %2445, 0
  %2447 = select i1 %2446, float %2056, float 0.000000e+00
  %2448 = fsub fast float %2276, %2429
  %2449 = fsub fast float %2277, %2430
  %2450 = fsub fast float %2278, %2431
  %2451 = fmul fast float %2442, %2448
  %2452 = fmul fast float %2442, %2449
  %2453 = fmul fast float %2442, %2450
  %2454 = fadd fast float %2451, %2429
  %2455 = fadd fast float %2452, %2430
  %2456 = fadd fast float %2453, %2431
  %2457 = fsub fast float %2262, %1755
  %2458 = fmul fast float %2442, %2457
  %2459 = fadd fast float %2458, %1755
  %2460 = fsub fast float %2404, %2432
  %2461 = fsub fast float %2405, %2433
  %2462 = fsub fast float %2406, %2434
  %2463 = fmul fast float %2447, %2460
  %2464 = fmul fast float %2447, %2461
  %2465 = fmul fast float %2447, %2462
  %2466 = fadd fast float %2463, %2432
  %2467 = fadd fast float %2464, %2433
  %2468 = fadd fast float %2465, %2434
  %2469 = fsub fast float %2419, %1758
  %2470 = fmul fast float %2442, %2469
  %2471 = fadd fast float %2470, %1758
  br label %2517

; <label>:2472                                    ; preds = %2439
  %2473 = icmp eq i32 %2437, 1
  br i1 %2473, label %2474, label %2487

; <label>:2474                                    ; preds = %2472
  %2475 = fadd fast float %2276, -1.000000e+00
  %2476 = fadd fast float %2277, -1.000000e+00
  %2477 = fadd fast float %2278, -1.000000e+00
  %2478 = fmul fast float %2442, %2475
  %2479 = fmul fast float %2442, %2476
  %2480 = fmul fast float %2442, %2477
  %2481 = fadd fast float %2478, 1.000000e+00
  %2482 = fadd fast float %2479, 1.000000e+00
  %2483 = fadd fast float %2480, 1.000000e+00
  %2484 = fmul fast float %2481, %2429
  %2485 = fmul fast float %2482, %2430
  %2486 = fmul fast float %2483, %2431
  br label %2517

; <label>:2487                                    ; preds = %2472
  %2488 = icmp eq i32 %2437, 2
  br i1 %2488, label %2489, label %2517

; <label>:2489                                    ; preds = %2487
  %2490 = call float @dx.op.unary.f32(i32 24, float %2276)  ; Sqrt(value)
  %2491 = call float @dx.op.unary.f32(i32 24, float %2277)  ; Sqrt(value)
  %2492 = call float @dx.op.unary.f32(i32 24, float %2278)  ; Sqrt(value)
  %2493 = fadd fast float %2490, -5.000000e-01
  %2494 = fadd fast float %2491, -5.000000e-01
  %2495 = fadd fast float %2492, -5.000000e-01
  %2496 = fmul fast float %2493, %2442
  %2497 = fmul fast float %2494, %2442
  %2498 = fmul fast float %2495, %2442
  %2499 = fadd fast float %2496, 5.000000e-01
  %2500 = fadd fast float %2497, 5.000000e-01
  %2501 = fadd fast float %2498, 5.000000e-01
  %2502 = fmul fast float %2499, 2.000000e+00
  %2503 = fsub fast float 1.000000e+00, %2502
  %2504 = fmul fast float %2503, %2429
  %2505 = fadd fast float %2504, %2502
  %2506 = fmul fast float %2505, %2429
  %2507 = fmul fast float %2500, 2.000000e+00
  %2508 = fsub fast float 1.000000e+00, %2507
  %2509 = fmul fast float %2508, %2430
  %2510 = fadd fast float %2509, %2507
  %2511 = fmul fast float %2510, %2430
  %2512 = fmul fast float %2501, 2.000000e+00
  %2513 = fsub fast float 1.000000e+00, %2512
  %2514 = fmul fast float %2513, %2431
  %2515 = fadd fast float %2514, %2512
  %2516 = fmul fast float %2515, %2431
  br label %2517

; <label>:2517                                    ; preds = %2489, %2487, %2474, %2444, %2428
  %2518 = phi float [ %2429, %2428 ], [ %2506, %2489 ], [ %2429, %2487 ], [ %2484, %2474 ], [ %2454, %2444 ]
  %2519 = phi float [ %2430, %2428 ], [ %2511, %2489 ], [ %2430, %2487 ], [ %2485, %2474 ], [ %2455, %2444 ]
  %2520 = phi float [ %2431, %2428 ], [ %2516, %2489 ], [ %2431, %2487 ], [ %2486, %2474 ], [ %2456, %2444 ]
  %2521 = phi float [ %2432, %2428 ], [ %2432, %2489 ], [ %2432, %2487 ], [ %2432, %2474 ], [ %2466, %2444 ]
  %2522 = phi float [ %2433, %2428 ], [ %2433, %2489 ], [ %2433, %2487 ], [ %2433, %2474 ], [ %2467, %2444 ]
  %2523 = phi float [ %2434, %2428 ], [ %2434, %2489 ], [ %2434, %2487 ], [ %2434, %2474 ], [ %2468, %2444 ]
  %2524 = phi float [ %1755, %2428 ], [ %1755, %2489 ], [ %1755, %2487 ], [ %1755, %2474 ], [ %2459, %2444 ]
  %2525 = phi float [ %1758, %2428 ], [ %1758, %2489 ], [ %1758, %2487 ], [ %1758, %2474 ], [ %2471, %2444 ]
  %2526 = and i32 %2436, 12
  %2527 = icmp eq i32 %2526, 12
  br i1 %2527, label %2600, label %2528

; <label>:2528                                    ; preds = %2517
  %2529 = and i32 %2436, 2097184
  %2530 = icmp eq i32 %2529, 2097184
  %2531 = select i1 %2530, float %2056, float 0.000000e+00
  %2532 = and i32 %2436, 4194336
  %2533 = icmp eq i32 %2532, 4194336
  %2534 = select i1 %2533, float %2056, float 0.000000e+00
  %2535 = and i32 %2436, 8388640
  %2536 = icmp eq i32 %2535, 8388640
  %2537 = select i1 %2536, float %2056, float 0.000000e+00
  %2538 = icmp eq i32 %2526, 0
  br i1 %2538, label %2539, label %2552

; <label>:2539                                    ; preds = %2528
  %2540 = fsub fast float %2357, %1747
  %2541 = fsub fast float %2358, %1748
  %2542 = fmul fast float %2531, %2540
  %2543 = fmul fast float %2531, %2541
  %2544 = fadd fast float %2542, %1747
  %2545 = fadd fast float %2543, %1748
  %2546 = fsub fast float %2359, %1757
  %2547 = fmul fast float %2534, %2546
  %2548 = fadd fast float %2547, %1757
  %2549 = fsub fast float %2356, %1756
  %2550 = fmul fast float %2537, %2549
  %2551 = fadd fast float %2550, %1756
  br label %2600

; <label>:2552                                    ; preds = %2528
  %2553 = icmp eq i32 %2526, 4
  br i1 %2553, label %2554, label %2586

; <label>:2554                                    ; preds = %2552
  %2555 = fmul fast float %2531, %2357
  %2556 = fmul fast float %2531, %2358
  %2557 = fadd fast float %2555, %1747
  %2558 = fadd fast float %2556, %1748
  %2559 = call float @dx.op.binary.f32(i32 36, float %1757, float %2359)  ; FMin(a,b)
  %2560 = fsub fast float %2559, %1757
  %2561 = fmul fast float %2560, %2534
  %2562 = fadd fast float %2561, %1757
  %2563 = fadd fast float %2356, %1756
  %2564 = fmul fast float %2563, 0x3FF337FAE0000000
  %2565 = fmul fast float %1756, %1756
  %2566 = fmul fast float %2356, %2356
  %2567 = fadd fast float %2566, %2565
  %2568 = fmul fast float %2567, 0x3FE5152B00000000
  %2569 = fmul fast float %1756, 0xBFCC1F85E0000000
  %2570 = fmul fast float %2569, %2356
  %2571 = fadd fast float %2570, 0xBFE1363700000000
  %2572 = fadd fast float %2571, %2564
  %2573 = fsub fast float %2572, %2568
  %2574 = fmul fast float %2563, 0x3FBA6F0D00000000
  %2575 = fmul fast float %2567, 0x3FD0432880000000
  %2576 = fmul fast float %1756, 0xBFEF110800000000
  %2577 = fmul fast float %2576, %2356
  %2578 = fadd fast float %2577, 1.000000e+00
  %2579 = fsub fast float %2578, %2574
  %2580 = fadd fast float %2579, %2575
  %2581 = fdiv fast float %2573, %2580
  %2582 = call float @dx.op.unary.f32(i32 7, float %2581)  ; Saturate(value)
  %2583 = fsub fast float %2582, %1756
  %2584 = fmul fast float %2583, %2537
  %2585 = fadd fast float %2584, %1756
  br label %2600

; <label>:2586                                    ; preds = %2552
  %2587 = icmp eq i32 %2526, 8
  br i1 %2587, label %2588, label %2600

; <label>:2588                                    ; preds = %2586
  %2589 = fmul fast float %2531, %2357
  %2590 = fmul fast float %2531, %2358
  %2591 = fadd fast float %2589, %1747
  %2592 = fadd fast float %2590, %1748
  %2593 = call float @dx.op.binary.f32(i32 36, float %1757, float %2359)  ; FMin(a,b)
  %2594 = fsub fast float %2593, %1757
  %2595 = fmul fast float %2594, %2534
  %2596 = fadd fast float %2595, %1757
  %2597 = fsub fast float %2356, %1756
  %2598 = fmul fast float %2537, %2597
  %2599 = fadd fast float %2598, %1756
  br label %2600

; <label>:2600                                    ; preds = %2588, %2586, %2554, %2539, %2517, %2055, %1759, %1746
  %2601 = phi float [ %1747, %2517 ], [ %1747, %2055 ], [ %1747, %1746 ], [ %2591, %2588 ], [ %1747, %2586 ], [ %2557, %2554 ], [ %2544, %2539 ], [ %1747, %1759 ]
  %2602 = phi float [ %1748, %2517 ], [ %1748, %2055 ], [ %1748, %1746 ], [ %2592, %2588 ], [ %1748, %2586 ], [ %2558, %2554 ], [ %2545, %2539 ], [ %1748, %1759 ]
  %2603 = phi float [ %2518, %2517 ], [ %1749, %2055 ], [ %1749, %1746 ], [ %2518, %2588 ], [ %2518, %2586 ], [ %2518, %2554 ], [ %2518, %2539 ], [ %1749, %1759 ]
  %2604 = phi float [ %2519, %2517 ], [ %1750, %2055 ], [ %1750, %1746 ], [ %2519, %2588 ], [ %2519, %2586 ], [ %2519, %2554 ], [ %2519, %2539 ], [ %1750, %1759 ]
  %2605 = phi float [ %2520, %2517 ], [ %1751, %2055 ], [ %1751, %1746 ], [ %2520, %2588 ], [ %2520, %2586 ], [ %2520, %2554 ], [ %2520, %2539 ], [ %1751, %1759 ]
  %2606 = phi float [ %2521, %2517 ], [ %1752, %2055 ], [ %1752, %1746 ], [ %2521, %2588 ], [ %2521, %2586 ], [ %2521, %2554 ], [ %2521, %2539 ], [ %1752, %1759 ]
  %2607 = phi float [ %2522, %2517 ], [ %1753, %2055 ], [ %1753, %1746 ], [ %2522, %2588 ], [ %2522, %2586 ], [ %2522, %2554 ], [ %2522, %2539 ], [ %1753, %1759 ]
  %2608 = phi float [ %2523, %2517 ], [ %1754, %2055 ], [ %1754, %1746 ], [ %2523, %2588 ], [ %2523, %2586 ], [ %2523, %2554 ], [ %2523, %2539 ], [ %1754, %1759 ]
  %2609 = phi float [ %2524, %2517 ], [ %1755, %2055 ], [ %1755, %1746 ], [ %2524, %2588 ], [ %2524, %2586 ], [ %2524, %2554 ], [ %2524, %2539 ], [ %1755, %1759 ]
  %2610 = phi float [ %1756, %2517 ], [ %1756, %2055 ], [ %1756, %1746 ], [ %2599, %2588 ], [ %1756, %2586 ], [ %2585, %2554 ], [ %2551, %2539 ], [ %1756, %1759 ]
  %2611 = phi float [ %1757, %2517 ], [ %1757, %2055 ], [ %1757, %1746 ], [ %2596, %2588 ], [ %1757, %2586 ], [ %2562, %2554 ], [ %2548, %2539 ], [ %1757, %1759 ]
  %2612 = phi float [ %2525, %2517 ], [ %1758, %2055 ], [ %1758, %1746 ], [ %2525, %2588 ], [ %2525, %2586 ], [ %2525, %2554 ], [ %2525, %2539 ], [ %1758, %1759 ]
  br i1 %373, label %3454, label %2613

; <label>:2613                                    ; preds = %2600
  %2614 = icmp ult i32 %424, 4
  %2615 = add i32 %43, 72
  %2616 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2617 = extractvalue %dx.types.ResRet.i32 %2616, 0
  %2618 = add i32 %43, 76
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = or i32 %2620, %2617
  %2622 = icmp eq i32 %2621, 0
  br i1 %2622, label %3454, label %2623

; <label>:2623                                    ; preds = %2613
  %2624 = and i32 %2617, 262144
  %2625 = icmp ne i32 %2624, 0
  %2626 = select i1 %2625, float %45, float 1.000000e+00
  %2627 = select i1 %2625, float %46, float 0.000000e+00
  %2628 = select i1 %2625, float %47, float 0.000000e+00
  %2629 = select i1 %2625, float %48, float 1.000000e+00
  %2630 = select i1 %2625, float %49, float %65
  %2631 = select i1 %2625, float %50, float %66
  %2632 = add i32 %43, 332
  %2633 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %2634 = extractvalue %dx.types.ResRet.i32 %2633, 0
  %2635 = lshr i32 %2634, 16
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = fmul fast float %2636, 0x3F50624DE0000000
  %2638 = add i32 %43, 136
  %2639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2640 = extractvalue %dx.types.ResRet.i32 %2639, 0
  %2641 = lshr i32 %2640, 16
  %2642 = and i32 %2641, 255
  %2643 = lshr i32 %2640, 24
  %2644 = add i32 %43, 340
  %2645 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2644, i32 undef)  ; BufferLoad(srv,index,wot)
  %2646 = extractvalue %dx.types.ResRet.i32 %2645, 0
  %2647 = and i32 %2646, 65535
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = lshr i32 %2646, 16
  %2650 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2649)  ; LegacyF16ToF32(value)
  %2651 = add i32 %43, 80
  %2652 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2651, i32 undef)  ; BufferLoad(srv,index,wot)
  %2653 = extractvalue %dx.types.ResRet.i32 %2652, 0
  %2654 = lshr i32 %2653, 22
  %2655 = shl nuw nsw i32 %2654, 5
  %2656 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2655)  ; LegacyF16ToF32(value)
  %2657 = shl i32 %2653, 4
  %2658 = and i32 %2657, 32752
  %2659 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2658)  ; LegacyF16ToF32(value)
  %2660 = lshr i32 %2653, 7
  %2661 = and i32 %2660, 32752
  %2662 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2661)  ; LegacyF16ToF32(value)
  %2663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2664 = extractvalue %dx.types.CBufRet.f32 %2663, 3
  %2665 = fmul fast float %2664, 1.000000e+03
  %2666 = fmul fast float %363, %2665
  %2667 = call float @dx.op.unary.f32(i32 22, float %2666)  ; Frc(value)
  %2668 = fadd fast float %2667, %353
  %2669 = fmul fast float %364, %2665
  %2670 = call float @dx.op.unary.f32(i32 22, float %2669)  ; Frc(value)
  %2671 = fadd fast float %2670, %355
  %2672 = fmul fast float %2637, %2665
  %2673 = call float @dx.op.unary.f32(i32 22, float %2672)  ; Frc(value)
  %2674 = fmul fast float %2673, 0x401921FB60000000
  %2675 = fadd fast float %2674, %2656
  %2676 = call float @dx.op.unary.f32(i32 13, float %2675)  ; Sin(value)
  %2677 = call float @dx.op.unary.f32(i32 12, float %2675)  ; Cos(value)
  %2678 = fsub fast float -0.000000e+00, %2676
  %2679 = fadd fast float %2630, -5.000000e-01
  %2680 = fadd fast float %2631, -5.000000e-01
  %2681 = fmul fast float %2648, %2679
  %2682 = fmul fast float %2650, %2680
  %2683 = fadd fast float %2681, 5.000000e-01
  %2684 = fadd fast float %2682, 5.000000e-01
  %2685 = fmul fast float %2659, %2683
  %2686 = fmul fast float %2662, %2684
  %2687 = fmul fast float %2677, %2685
  %2688 = call float @dx.op.tertiary.f32(i32 46, float %2678, float %2686, float %2687)  ; FMad(a,b,c)
  %2689 = fmul fast float %2676, %2685
  %2690 = call float @dx.op.tertiary.f32(i32 46, float %2677, float %2686, float %2689)  ; FMad(a,b,c)
  %2691 = fadd fast float %2668, %2688
  %2692 = fadd fast float %2671, %2690
  %2693 = icmp ugt i32 %2642, 1
  %2694 = icmp ugt i32 %2640, 33554431
  %2695 = or i1 %2694, %2693
  br i1 %2695, label %2696, label %2721

; <label>:2696                                    ; preds = %2623
  %2697 = add i32 %43, 276
  %2698 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2697, i32 undef)  ; BufferLoad(srv,index,wot)
  %2699 = extractvalue %dx.types.ResRet.i32 %2698, 0
  %2700 = lshr i32 %2699, 16
  %2701 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2700)  ; LegacyF16ToF32(value)
  %2702 = fmul fast float %2664, %2701
  %2703 = call float @dx.op.unary.f32(i32 22, float %2702)  ; Frc(value)
  %2704 = mul nuw nsw i32 %2642, %2643
  %2705 = uitofp i32 %2704 to float
  %2706 = fmul fast float %2703, %2705
  %2707 = call float @dx.op.unary.f32(i32 27, float %2706)  ; Round_ni(value)
  %2708 = fptoui float %2707 to i32
  %2709 = urem i32 %2708, %2642
  %2710 = udiv i32 %2708, %2643
  %2711 = call float @dx.op.unary.f32(i32 22, float %2691)  ; Frc(value)
  %2712 = call float @dx.op.unary.f32(i32 22, float %2692)  ; Frc(value)
  %2713 = uitofp i32 %2709 to float
  %2714 = uitofp i32 %2710 to float
  %2715 = fadd fast float %2711, %2713
  %2716 = fadd fast float %2712, %2714
  %2717 = uitofp i32 %2642 to float
  %2718 = uitofp i32 %2643 to float
  %2719 = fdiv fast float %2715, %2717
  %2720 = fdiv fast float %2716, %2718
  br label %2721

; <label>:2721                                    ; preds = %2696, %2623
  %2722 = phi float [ %2719, %2696 ], [ %2691, %2623 ]
  %2723 = phi float [ %2720, %2696 ], [ %2692, %2623 ]
  %2724 = and i32 %2617, 16777216
  %2725 = icmp eq i32 %2724, 0
  br i1 %2725, label %2835, label %2726

; <label>:2726                                    ; preds = %2721
  %2727 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2728 = extractvalue %dx.types.CBufRet.f32 %2727, 0
  %2729 = extractvalue %dx.types.CBufRet.f32 %2727, 1
  %2730 = extractvalue %dx.types.CBufRet.f32 %2727, 2
  %2731 = fadd fast float %2728, %140
  %2732 = fadd fast float %2729, %141
  %2733 = fadd fast float %2730, %142
  %2734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2735 = extractvalue %dx.types.CBufRet.f32 %2734, 0
  %2736 = call float @dx.op.unary.f32(i32 7, float %2735)  ; Saturate(value)
  %2737 = icmp eq i32 %44, 65535
  br i1 %2737, label %2832, label %2738

; <label>:2738                                    ; preds = %2726
  %2739 = lshr i32 %44, 1
  %2740 = shl i32 %2739, 2
  %2741 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2740, i32 undef)  ; BufferLoad(srv,index,wot)
  %2742 = extractvalue %dx.types.ResRet.i32 %2741, 0
  %2743 = and i32 %44, 1
  %2744 = icmp ne i32 %2743, 0
  %2745 = lshr i32 %2742, 16
  %2746 = and i32 %2742, 65535
  %2747 = select i1 %2744, i32 %2745, i32 %2746
  %2748 = icmp eq i32 %2747, 65535
  br i1 %2748, label %2828, label %2749

; <label>:2749                                    ; preds = %2738
  %2750 = mul nuw nsw i32 %2747, 40
  %2751 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2750, i32 undef)  ; BufferLoad(srv,index,wot)
  %2752 = extractvalue %dx.types.ResRet.f32 %2751, 0
  %2753 = extractvalue %dx.types.ResRet.f32 %2751, 1
  %2754 = extractvalue %dx.types.ResRet.f32 %2751, 2
  %2755 = add nuw nsw i32 %2750, 12
  %2756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.f32 %2756, 0
  %2758 = extractvalue %dx.types.ResRet.f32 %2756, 1
  %2759 = extractvalue %dx.types.ResRet.f32 %2756, 2
  %2760 = add nuw nsw i32 %2750, 24
  %2761 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2760, i32 undef)  ; BufferLoad(srv,index,wot)
  %2762 = extractvalue %dx.types.ResRet.f32 %2761, 0
  %2763 = extractvalue %dx.types.ResRet.f32 %2761, 1
  %2764 = extractvalue %dx.types.ResRet.f32 %2761, 2
  %2765 = add nuw nsw i32 %2750, 36
  %2766 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2765, i32 undef)  ; BufferLoad(srv,index,wot)
  %2767 = extractvalue %dx.types.ResRet.f32 %2766, 0
  %2768 = fsub fast float %2731, %2752
  %2769 = fsub fast float %2732, %2753
  %2770 = fsub fast float %2733, %2754
  %2771 = fmul fast float %2767, %2768
  %2772 = fmul fast float %2767, %2769
  %2773 = fmul fast float %2767, %2770
  %2774 = call float @dx.op.unary.f32(i32 27, float %2771)  ; Round_ni(value)
  %2775 = call float @dx.op.unary.f32(i32 27, float %2772)  ; Round_ni(value)
  %2776 = call float @dx.op.unary.f32(i32 27, float %2773)  ; Round_ni(value)
  %2777 = fadd fast float %2774, 5.000000e-01
  %2778 = fadd fast float %2775, 5.000000e-01
  %2779 = fadd fast float %2776, 5.000000e-01
  %2780 = fmul fast float %2777, %2757
  %2781 = fmul fast float %2778, %2758
  %2782 = fmul fast float %2779, %2759
  %2783 = shl i32 %44, 2
  %2784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2785 = extractvalue %dx.types.ResRet.i32 %2784, 0
  %2786 = add i32 %2785, 0
  %2787 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2786, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2788 = call float @dx.op.unary.f32(i32 22, float %2780)  ; Frc(value)
  %2789 = call float @dx.op.unary.f32(i32 22, float %2781)  ; Frc(value)
  %2790 = call float @dx.op.unary.f32(i32 22, float %2782)  ; Frc(value)
  %2791 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2787, %dx.types.Handle %40, float %2788, float %2789, float %2790, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2792 = extractvalue %dx.types.ResRet.f32 %2791, 0
  %2793 = extractvalue %dx.types.ResRet.f32 %2791, 1
  %2794 = extractvalue %dx.types.ResRet.f32 %2791, 2
  %2795 = fmul fast float %2792, 1.023000e+03
  %2796 = fmul fast float %2793, 1.023000e+03
  %2797 = fmul fast float %2794, 1.023000e+03
  %2798 = fadd fast float %2795, 5.000000e-01
  %2799 = fadd fast float %2796, 5.000000e-01
  %2800 = fadd fast float %2797, 5.000000e-01
  %2801 = call float @dx.op.unary.f32(i32 27, float %2798)  ; Round_ni(value)
  %2802 = call float @dx.op.unary.f32(i32 27, float %2799)  ; Round_ni(value)
  %2803 = call float @dx.op.unary.f32(i32 27, float %2800)  ; Round_ni(value)
  %2804 = fsub fast float %2771, %2774
  %2805 = fsub fast float %2772, %2775
  %2806 = fsub fast float %2773, %2776
  %2807 = fmul fast float %2804, 7.500000e-01
  %2808 = fmul fast float %2805, 7.500000e-01
  %2809 = fmul fast float %2806, 7.500000e-01
  %2810 = fadd fast float %2774, 1.250000e-01
  %2811 = fadd fast float %2810, %2807
  %2812 = fadd fast float %2811, %2801
  %2813 = fadd fast float %2775, 1.250000e-01
  %2814 = fadd fast float %2813, %2808
  %2815 = fadd fast float %2814, %2802
  %2816 = fadd fast float %2776, 1.250000e-01
  %2817 = fadd fast float %2816, %2809
  %2818 = fadd fast float %2817, %2803
  %2819 = fmul fast float %2812, %2762
  %2820 = fmul fast float %2815, %2763
  %2821 = fmul fast float %2818, %2764
  %2822 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2783, i32 undef)  ; BufferLoad(srv,index,wot)
  %2823 = extractvalue %dx.types.ResRet.i32 %2822, 0
  %2824 = add i32 %2823, 0
  %2825 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2824, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2826 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2825, %dx.types.Handle %38, float %2819, float %2820, float %2821, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2827 = extractvalue %dx.types.ResRet.f32 %2826, 0
  br label %2828

; <label>:2828                                    ; preds = %2749, %2738
  %2829 = phi float [ %2827, %2749 ], [ -1.000000e+00, %2738 ]
  %2830 = fadd fast float %2829, %2736
  %2831 = call float @dx.op.unary.f32(i32 7, float %2830)  ; Saturate(value)
  br label %2832

; <label>:2832                                    ; preds = %2828, %2726
  %2833 = phi float [ %2831, %2828 ], [ %2736, %2726 ]
  %2834 = fmul fast float %2833, %419
  br label %2835

; <label>:2835                                    ; preds = %2832, %2721
  %2836 = phi float [ %2834, %2832 ], [ %419, %2721 ]
  %2837 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2838 = extractvalue %dx.types.ResRet.i32 %2837, 0
  %2839 = and i32 %2838, 256
  %2840 = icmp eq i32 %2839, 0
  br i1 %2840, label %2887, label %2841

; <label>:2841                                    ; preds = %2835
  %2842 = add i32 %43, 452
  %2843 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2842, i32 undef)  ; BufferLoad(srv,index,wot)
  %2844 = extractvalue %dx.types.ResRet.i32 %2843, 0
  %2845 = add i32 %2844, 0
  %2846 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2845, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2847 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2846, %dx.types.Handle %74, float %2722, float %2723, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2848 = extractvalue %dx.types.ResRet.f32 %2847, 0
  %2849 = add i32 %43, 148
  %2850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2851 = extractvalue %dx.types.ResRet.i32 %2850, 0
  %2852 = shl i32 %2851, 4
  %2853 = and i32 %2852, 32752
  %2854 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2853)  ; LegacyF16ToF32(value)
  %2855 = lshr i32 %2851, 7
  %2856 = and i32 %2855, 32752
  %2857 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2856)  ; LegacyF16ToF32(value)
  %2858 = fsub fast float 1.000000e+00, %2836
  %2859 = call float @dx.op.binary.f32(i32 35, float %2858, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2860 = bitcast float %2836 to i32
  %2861 = sitofp i32 %2860 to float
  %2862 = fadd fast float %2861, 0xC1CFBF8940000000
  %2863 = fmul fast float %2857, %2862
  %2864 = fadd fast float %2863, 0x41CFBF8940000000
  %2865 = fptosi float %2864 to i32
  %2866 = bitcast i32 %2865 to float
  %2867 = bitcast float %2859 to i32
  %2868 = sitofp i32 %2867 to float
  %2869 = fadd fast float %2868, 0xC1CFBF8940000000
  %2870 = fmul fast float %2869, %2857
  %2871 = fadd fast float %2870, 0x41CFBF8940000000
  %2872 = fptosi float %2871 to i32
  %2873 = bitcast i32 %2872 to float
  %2874 = fmul fast float %2866, %2854
  %2875 = fmul fast float %2873, %2854
  %2876 = fsub fast float %2859, %2874
  %2877 = fadd fast float %2875, %2859
  %2878 = call float @dx.op.unary.f32(i32 7, float %2876)  ; Saturate(value)
  %2879 = call float @dx.op.unary.f32(i32 7, float %2877)  ; Saturate(value)
  %2880 = fsub fast float %2848, %2878
  %2881 = fsub fast float %2879, %2878
  %2882 = bitcast float %2881 to i32
  %2883 = sub nsw i32 2129859010, %2882
  %2884 = bitcast i32 %2883 to float
  %2885 = fmul fast float %2884, %2880
  %2886 = call float @dx.op.unary.f32(i32 7, float %2885)  ; Saturate(value)
  br label %2887

; <label>:2887                                    ; preds = %2841, %2835
  %2888 = phi float [ %2886, %2841 ], [ %2836, %2835 ]
  %2889 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2890 = extractvalue %dx.types.ResRet.i32 %2889, 0
  %2891 = and i32 %2890, 128
  %2892 = icmp eq i32 %2891, 0
  br i1 %2892, label %2909, label %2893

; <label>:2893                                    ; preds = %2887
  %2894 = add i32 %43, 436
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2894, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = add i32 %2896, 0
  %2898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2899 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2898, %dx.types.Handle %74, float %2722, float %2723, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2900 = extractvalue %dx.types.ResRet.f32 %2899, 0
  %2901 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2902 = extractvalue %dx.types.ResRet.i32 %2901, 0
  %2903 = and i32 %2902, 524288
  %2904 = icmp ne i32 %2903, 0
  %2905 = fcmp fast ogt float %2900, 0x3FE0101020000000
  %2906 = select i1 %2905, float 1.000000e+00, float 0.000000e+00
  %2907 = select i1 %2904, float %2906, float %2900
  %2908 = fmul fast float %2907, %2888
  br label %2909

; <label>:2909                                    ; preds = %2893, %2887
  %2910 = phi float [ %2908, %2893 ], [ %2888, %2887 ]
  %2911 = fcmp fast ult float %2910, 0x3F70101020000000
  br i1 %2911, label %3454, label %2912

; <label>:2912                                    ; preds = %2909
  %2913 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2914 = extractvalue %dx.types.ResRet.i32 %2913, 0
  %2915 = and i32 %2914, 16
  %2916 = icmp eq i32 %2915, 0
  br i1 %2916, label %3115, label %2917

; <label>:2917                                    ; preds = %2912
  %2918 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2638, i32 undef)  ; BufferLoad(srv,index,wot)
  %2919 = extractvalue %dx.types.ResRet.i32 %2918, 0
  %2920 = add i32 %43, 388
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = add i32 %2922, 0
  %2924 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2923, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2925 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2924, %dx.types.Handle %73, float %2722, float %2723, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2926 = extractvalue %dx.types.ResRet.f32 %2925, 0
  %2927 = extractvalue %dx.types.ResRet.f32 %2925, 1
  %2928 = extractvalue %dx.types.ResRet.f32 %2925, 2
  %2929 = extractvalue %dx.types.ResRet.f32 %2925, 3
  %2930 = and i32 %2919, 255
  %2931 = uitofp i32 %2930 to float
  %2932 = lshr i32 %2919, 8
  %2933 = and i32 %2932, 255
  %2934 = uitofp i32 %2933 to float
  %2935 = fmul fast float %2929, %2931
  %2936 = fadd fast float %2935, %2934
  %2937 = fmul fast float %2936, 0x3F70101000000000
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = and i32 %2939, 512
  %2941 = icmp eq i32 %2940, 0
  br i1 %2941, label %2950, label %2942

; <label>:2942                                    ; preds = %2917
  %2943 = add i32 %43, 472
  %2944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2945 = extractvalue %dx.types.ResRet.i32 %2944, 0
  %2946 = add i32 %2945, 0
  %2947 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2946, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2948 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2947, %dx.types.Handle %74, float %2722, float %2723, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2949 = extractvalue %dx.types.ResRet.f32 %2948, 0
  br label %2950

; <label>:2950                                    ; preds = %2942, %2917
  %2951 = phi float [ %2949, %2942 ], [ 1.000000e+00, %2917 ]
  %2952 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %2953 = extractvalue %dx.types.ResRet.i32 %2952, 0
  %2954 = and i32 %2953, 33554432
  %2955 = icmp eq i32 %2954, 0
  br i1 %2955, label %3062, label %2956

; <label>:2956                                    ; preds = %2950
  %2957 = add i32 %43, 272
  %2958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2957, i32 undef)  ; BufferLoad(srv,index,wot)
  %2959 = extractvalue %dx.types.ResRet.i32 %2958, 0
  %2960 = and i32 %2959, 65535
  %2961 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2960)  ; LegacyF16ToF32(value)
  %2962 = lshr i32 %2959, 16
  %2963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2962)  ; LegacyF16ToF32(value)
  %2964 = add i32 %43, 276
  %2965 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2964, i32 undef)  ; BufferLoad(srv,index,wot)
  %2966 = extractvalue %dx.types.ResRet.i32 %2965, 0
  %2967 = and i32 %2966, 65535
  %2968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2967)  ; LegacyF16ToF32(value)
  %2969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %2970 = extractvalue %dx.types.ResRet.i32 %2969, 0
  %2971 = lshr i32 %2970, 24
  %2972 = uitofp i32 %2971 to float
  %2973 = fmul fast float %2972, 0x3F70101020000000
  %2974 = and i32 %2970, 255
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2975, 0x3F70101020000000
  %2977 = lshr i32 %2970, 8
  %2978 = and i32 %2977, 255
  %2979 = uitofp i32 %2978 to float
  %2980 = fmul fast float %2979, 0x3F70101020000000
  %2981 = lshr i32 %2970, 16
  %2982 = and i32 %2981, 255
  %2983 = uitofp i32 %2982 to float
  %2984 = fmul fast float %2983, 0x3F70101020000000
  %2985 = add i32 %43, 268
  %2986 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2985, i32 undef)  ; BufferLoad(srv,index,wot)
  %2987 = extractvalue %dx.types.ResRet.i32 %2986, 0
  %2988 = lshr i32 %2987, 24
  %2989 = uitofp i32 %2988 to float
  %2990 = fmul fast float %2989, 0x3F70101020000000
  %2991 = and i32 %2987, 255
  %2992 = uitofp i32 %2991 to float
  %2993 = fmul fast float %2992, 0x3F70101020000000
  %2994 = lshr i32 %2987, 8
  %2995 = and i32 %2994, 255
  %2996 = uitofp i32 %2995 to float
  %2997 = fmul fast float %2996, 0x3F70101020000000
  %2998 = lshr i32 %2987, 16
  %2999 = and i32 %2998, 255
  %3000 = uitofp i32 %2999 to float
  %3001 = fmul fast float %3000, 0x3F70101020000000
  %3002 = bitcast float %2926 to i32
  %3003 = ashr i32 %3002, 1
  %3004 = sub nsw i32 1597463174, %3003
  %3005 = bitcast i32 %3004 to float
  %3006 = fmul fast float %2926, 5.000000e-01
  %3007 = fmul fast float %3005, %3005
  %3008 = fmul fast float %3007, %3006
  %3009 = fsub fast float 1.500000e+00, %3008
  %3010 = fmul fast float %3005, %2926
  %3011 = fmul fast float %3010, %3009
  %3012 = bitcast float %2927 to i32
  %3013 = ashr i32 %3012, 1
  %3014 = sub nsw i32 1597463174, %3013
  %3015 = bitcast i32 %3014 to float
  %3016 = fmul fast float %2927, 5.000000e-01
  %3017 = fmul fast float %3015, %3015
  %3018 = fmul fast float %3017, %3016
  %3019 = fsub fast float 1.500000e+00, %3018
  %3020 = fmul fast float %3015, %2927
  %3021 = fmul fast float %3020, %3019
  %3022 = bitcast float %2928 to i32
  %3023 = ashr i32 %3022, 1
  %3024 = sub nsw i32 1597463174, %3023
  %3025 = bitcast i32 %3024 to float
  %3026 = fmul fast float %2928, 5.000000e-01
  %3027 = fmul fast float %3025, %3025
  %3028 = fmul fast float %3027, %3026
  %3029 = fsub fast float 1.500000e+00, %3028
  %3030 = fmul fast float %3025, %2928
  %3031 = fmul fast float %3030, %3029
  %3032 = fsub fast float %3011, %2993
  %3033 = fsub fast float %3021, %2997
  %3034 = fsub fast float %3031, %3001
  %3035 = fmul fast float %3032, %2961
  %3036 = fmul fast float %3033, %2963
  %3037 = fmul fast float %3034, %2968
  %3038 = fadd fast float %3035, %2976
  %3039 = fadd fast float %3036, %2980
  %3040 = fadd fast float %3037, %2984
  %3041 = call float @dx.op.unary.f32(i32 7, float %3038)  ; Saturate(value)
  %3042 = call float @dx.op.unary.f32(i32 7, float %3039)  ; Saturate(value)
  %3043 = call float @dx.op.unary.f32(i32 7, float %3040)  ; Saturate(value)
  %3044 = fmul fast float %3041, %3041
  %3045 = fmul fast float %3042, %3042
  %3046 = fmul fast float %3043, %3043
  %3047 = fsub fast float %3044, %2926
  %3048 = fsub fast float %3045, %2927
  %3049 = fsub fast float %3046, %2928
  %3050 = fmul fast float %3047, %2951
  %3051 = fmul fast float %3048, %2951
  %3052 = fmul fast float %3049, %2951
  %3053 = fadd fast float %3050, %2926
  %3054 = fadd fast float %3051, %2927
  %3055 = fadd fast float %3052, %2928
  %3056 = fadd fast float %2973, %2937
  %3057 = fsub fast float %3056, %2990
  %3058 = call float @dx.op.unary.f32(i32 7, float %3057)  ; Saturate(value)
  %3059 = fsub fast float %3058, %2937
  %3060 = fmul fast float %3059, %2951
  %3061 = fadd fast float %3060, %2937
  br label %3115

; <label>:3062                                    ; preds = %2950
  %3063 = and i32 %2953, 134217728
  %3064 = icmp eq i32 %3063, 0
  br i1 %3064, label %3099, label %3065

; <label>:3065                                    ; preds = %3062
  %3066 = call float @dx.op.unary.f32(i32 24, float %340)  ; Sqrt(value)
  %3067 = call float @dx.op.unary.f32(i32 24, float %344)  ; Sqrt(value)
  %3068 = call float @dx.op.unary.f32(i32 24, float %348)  ; Sqrt(value)
  %3069 = fadd fast float %3066, -5.000000e-01
  %3070 = fadd fast float %3067, -5.000000e-01
  %3071 = fadd fast float %3068, -5.000000e-01
  %3072 = fmul fast float %3069, %2951
  %3073 = fmul fast float %3070, %2951
  %3074 = fmul fast float %3071, %2951
  %3075 = fadd fast float %3072, 5.000000e-01
  %3076 = fadd fast float %3073, 5.000000e-01
  %3077 = fadd fast float %3074, 5.000000e-01
  %3078 = call float @dx.op.unary.f32(i32 24, float %2926)  ; Sqrt(value)
  %3079 = call float @dx.op.unary.f32(i32 24, float %2927)  ; Sqrt(value)
  %3080 = call float @dx.op.unary.f32(i32 24, float %2928)  ; Sqrt(value)
  %3081 = fmul fast float %3075, 2.000000e+00
  %3082 = fsub fast float 1.000000e+00, %3081
  %3083 = fmul fast float %3082, %3078
  %3084 = fadd fast float %3083, %3081
  %3085 = fmul fast float %3084, %3078
  %3086 = fmul fast float %3076, 2.000000e+00
  %3087 = fsub fast float 1.000000e+00, %3086
  %3088 = fmul fast float %3087, %3079
  %3089 = fadd fast float %3088, %3086
  %3090 = fmul fast float %3089, %3079
  %3091 = fmul fast float %3077, 2.000000e+00
  %3092 = fsub fast float 1.000000e+00, %3091
  %3093 = fmul fast float %3092, %3080
  %3094 = fadd fast float %3093, %3091
  %3095 = fmul fast float %3094, %3080
  %3096 = fmul fast float %3085, %3085
  %3097 = fmul fast float %3090, %3090
  %3098 = fmul fast float %3095, %3095
  br label %3115

; <label>:3099                                    ; preds = %3062
  %3100 = fmul fast float %340, %340
  %3101 = fmul fast float %344, %344
  %3102 = fmul fast float %348, %348
  %3103 = fadd fast float %3100, -1.000000e+00
  %3104 = fadd fast float %3101, -1.000000e+00
  %3105 = fadd fast float %3102, -1.000000e+00
  %3106 = fmul fast float %2951, %3103
  %3107 = fmul fast float %2951, %3104
  %3108 = fmul fast float %2951, %3105
  %3109 = fadd fast float %3106, 1.000000e+00
  %3110 = fadd fast float %3107, 1.000000e+00
  %3111 = fadd fast float %3108, 1.000000e+00
  %3112 = fmul fast float %3109, %2926
  %3113 = fmul fast float %3110, %2927
  %3114 = fmul fast float %3111, %2928
  br label %3115

; <label>:3115                                    ; preds = %3099, %3065, %2956, %2912
  %3116 = phi float [ %3061, %2956 ], [ %2937, %3065 ], [ %2937, %3099 ], [ 0x3FA23C0BE0000000, %2912 ]
  %3117 = phi float [ %3053, %2956 ], [ %3096, %3065 ], [ %3112, %3099 ], [ 1.000000e+00, %2912 ]
  %3118 = phi float [ %3054, %2956 ], [ %3097, %3065 ], [ %3113, %3099 ], [ 1.000000e+00, %2912 ]
  %3119 = phi float [ %3055, %2956 ], [ %3098, %3065 ], [ %3114, %3099 ], [ 1.000000e+00, %2912 ]
  %3120 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3121 = extractvalue %dx.types.CBufRet.i32 %3120, 1
  %3122 = and i32 %3121, 1
  %3123 = icmp ne i32 %3122, 0
  %3124 = add i32 %43, 356
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = and i32 %3126, 32
  %3128 = icmp ne i32 %3127, 0
  %3129 = and i1 %3123, %3128
  %3130 = select i1 %3129, float 1.000000e+00, float %3117
  %3131 = select i1 %3129, float 0x3FD3333340000000, float %3118
  %3132 = select i1 %3129, float 0x3FD3333340000000, float %3119
  %3133 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3134 = extractvalue %dx.types.ResRet.i32 %3133, 0
  %3135 = and i32 %3134, 32
  %3136 = icmp eq i32 %3135, 0
  br i1 %3136, label %3209, label %3137

; <label>:3137                                    ; preds = %3115
  %3138 = add i32 %43, 140
  %3139 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3138, i32 undef)  ; BufferLoad(srv,index,wot)
  %3140 = extractvalue %dx.types.ResRet.i32 %3139, 0
  %3141 = add i32 %43, 404
  %3142 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3141, i32 undef)  ; BufferLoad(srv,index,wot)
  %3143 = extractvalue %dx.types.ResRet.i32 %3142, 0
  %3144 = add i32 %3143, 0
  %3145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3144, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3146 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3145, %dx.types.Handle %73, float %2722, float %2723, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3147 = extractvalue %dx.types.ResRet.f32 %3146, 0
  %3148 = extractvalue %dx.types.ResRet.f32 %3146, 1
  %3149 = extractvalue %dx.types.ResRet.f32 %3146, 2
  %3150 = extractvalue %dx.types.ResRet.f32 %3146, 3
  %3151 = and i32 %3140, 255
  %3152 = uitofp i32 %3151 to float
  %3153 = lshr i32 %3140, 8
  %3154 = and i32 %3153, 255
  %3155 = uitofp i32 %3154 to float
  %3156 = lshr i32 %3140, 16
  %3157 = and i32 %3156, 255
  %3158 = uitofp i32 %3157 to float
  %3159 = fmul fast float %3158, 0x3F70101000000000
  %3160 = fmul fast float %3147, %3152
  %3161 = fadd fast float %3160, %3155
  %3162 = fmul fast float %3161, 0x3F70101000000000
  %3163 = fadd fast float %3148, -5.000000e-01
  %3164 = fadd fast float %3150, -5.000000e-01
  %3165 = fmul fast float %3163, %3159
  %3166 = fmul fast float %3164, %3159
  %3167 = fadd fast float %3165, 5.000000e-01
  %3168 = fadd fast float %3166, 5.000000e-01
  %3169 = fmul fast float %3167, 2.000000e+00
  %3170 = fadd fast float %3169, -1.000000e+00
  %3171 = fmul fast float %3168, 2.000000e+00
  %3172 = fadd fast float %3171, -1.000000e+00
  %3173 = fadd fast float %3170, %3172
  %3174 = fmul fast float %3173, 5.000000e-01
  %3175 = fsub fast float %3170, %3172
  %3176 = fmul fast float %3175, 5.000000e-01
  %3177 = call float @dx.op.unary.f32(i32 6, float %3174)  ; FAbs(value)
  %3178 = fsub fast float 1.000000e+00, %3177
  %3179 = call float @dx.op.unary.f32(i32 6, float %3176)  ; FAbs(value)
  %3180 = fsub fast float %3178, %3179
  %3181 = call float @dx.op.dot3.f32(i32 55, float %3174, float %3176, float %3180, float %3174, float %3176, float %3180)  ; Dot3(ax,ay,az,bx,by,bz)
  %3182 = call float @dx.op.unary.f32(i32 25, float %3181)  ; Rsqrt(value)
  %3183 = fmul fast float %3174, %3182
  %3184 = fmul fast float %3176, %3182
  %3185 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3186 = extractvalue %dx.types.ResRet.i32 %3185, 0
  %3187 = and i32 %3186, 67108864
  %3188 = icmp eq i32 %3187, 0
  br i1 %3188, label %3205, label %3189

; <label>:3189                                    ; preds = %3137
  %3190 = add i32 %43, 328
  %3191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3190, i32 undef)  ; BufferLoad(srv,index,wot)
  %3192 = extractvalue %dx.types.ResRet.i32 %3191, 0
  %3193 = and i32 %3192, 65535
  %3194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3193)  ; LegacyF16ToF32(value)
  %3195 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2632, i32 undef)  ; BufferLoad(srv,index,wot)
  %3196 = extractvalue %dx.types.ResRet.i32 %3195, 0
  %3197 = and i32 %3196, 65535
  %3198 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3197)  ; LegacyF16ToF32(value)
  %3199 = lshr i32 %3192, 16
  %3200 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3199)  ; LegacyF16ToF32(value)
  %3201 = fsub fast float %3162, %3200
  %3202 = fmul fast float %3201, %3194
  %3203 = fadd fast float %3202, %3198
  %3204 = call float @dx.op.unary.f32(i32 7, float %3203)  ; Saturate(value)
  br label %3205

; <label>:3205                                    ; preds = %3189, %3137
  %3206 = phi float [ %3204, %3189 ], [ %3162, %3137 ]
  %3207 = call float @dx.op.dot2.f32(i32 54, float %3183, float %3184, float %2626, float %2627)  ; Dot2(ax,ay,bx,by)
  %3208 = call float @dx.op.dot2.f32(i32 54, float %3183, float %3184, float %2628, float %2629)  ; Dot2(ax,ay,bx,by)
  br label %3209

; <label>:3209                                    ; preds = %3205, %3115
  %3210 = phi float [ %3206, %3205 ], [ 0x3FD6666660000000, %3115 ]
  %3211 = phi float [ %3207, %3205 ], [ 0.000000e+00, %3115 ]
  %3212 = phi float [ %3208, %3205 ], [ 0.000000e+00, %3115 ]
  %3213 = phi float [ %3149, %3205 ], [ 1.000000e+00, %3115 ]
  %3214 = add i32 %43, 208
  %3215 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3214, i32 undef)  ; BufferLoad(srv,index,wot)
  %3216 = extractvalue %dx.types.ResRet.i32 %3215, 0
  %3217 = lshr i32 %3216, 22
  %3218 = shl nuw nsw i32 %3217, 5
  %3219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3218)  ; LegacyF16ToF32(value)
  %3220 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3221 = extractvalue %dx.types.ResRet.i32 %3220, 0
  %3222 = and i32 %3221, 64
  %3223 = icmp eq i32 %3222, 0
  br i1 %3223, label %3257, label %3224

; <label>:3224                                    ; preds = %3209
  %3225 = add i32 %43, 420
  %3226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3225, i32 undef)  ; BufferLoad(srv,index,wot)
  %3227 = extractvalue %dx.types.ResRet.i32 %3226, 0
  %3228 = add i32 %3227, 0
  %3229 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3228, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3231 = extractvalue %dx.types.ResRet.i32 %3230, 0
  %3232 = and i32 %3231, 131072
  %3233 = icmp eq i32 %3232, 0
  %3234 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3229, %dx.types.Handle %73, float %2722, float %2723, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3235 = extractvalue %dx.types.ResRet.f32 %3234, 0
  %3236 = extractvalue %dx.types.ResRet.f32 %3234, 1
  %3237 = extractvalue %dx.types.ResRet.f32 %3234, 2
  %3238 = fmul fast float %3235, %328
  %3239 = fmul fast float %3236, %331
  %3240 = fmul fast float %3237, %334
  br i1 %3233, label %3247, label %3241

; <label>:3241                                    ; preds = %3224
  %3242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3243 = extractvalue %dx.types.CBufRet.f32 %3242, 0
  %3244 = fmul fast float %3243, %3238
  %3245 = fmul fast float %3243, %3239
  %3246 = fmul fast float %3243, %3240
  br label %3247

; <label>:3247                                    ; preds = %3241, %3224
  %3248 = phi float [ %3244, %3241 ], [ %3238, %3224 ]
  %3249 = phi float [ %3245, %3241 ], [ %3239, %3224 ]
  %3250 = phi float [ %3246, %3241 ], [ %3240, %3224 ]
  %3251 = fmul fast float %3248, %3219
  %3252 = select i1 %182, float %3251, float %3248
  %3253 = call float @dx.op.dot3.f32(i32 55, float %3252, float %3249, float %3250, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3254 = select i1 %182, float 0.000000e+00, float %3248
  %3255 = select i1 %182, float %3253, float %3249
  %3256 = select i1 %182, float 0.000000e+00, float %3250
  br label %3257

; <label>:3257                                    ; preds = %3247, %3209
  %3258 = phi float [ %3254, %3247 ], [ 0.000000e+00, %3209 ]
  %3259 = phi float [ %3255, %3247 ], [ 0.000000e+00, %3209 ]
  %3260 = phi float [ %3256, %3247 ], [ 0.000000e+00, %3209 ]
  %3261 = add i32 %43, 144
  %3262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3261, i32 undef)  ; BufferLoad(srv,index,wot)
  %3263 = extractvalue %dx.types.ResRet.i32 %3262, 0
  %3264 = and i32 %3263, 255
  %3265 = uitofp i32 %3264 to float
  %3266 = lshr i32 %3263, 8
  %3267 = and i32 %3266, 255
  %3268 = uitofp i32 %3267 to float
  %3269 = call float @dx.op.dot3.f32(i32 55, float %3130, float %3131, float %3132, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3270 = fmul fast float %3268, %3269
  %3271 = fadd fast float %3270, %3265
  %3272 = fmul fast float %3271, 0x3F70101020000000
  %3273 = call float @dx.op.unary.f32(i32 7, float %3272)  ; Saturate(value)
  br i1 %2614, label %3274, label %3282

; <label>:3274                                    ; preds = %3257
  %3275 = fsub fast float 1.000000e+00, %2910
  %3276 = fmul fast float %3275, %2603
  %3277 = fmul fast float %3275, %2604
  %3278 = fmul fast float %3275, %2605
  %3279 = fmul fast float %3275, %2606
  %3280 = fmul fast float %3275, %2607
  %3281 = fmul fast float %3275, %2608
  br label %3282

; <label>:3282                                    ; preds = %3274, %3257
  %3283 = phi float [ %3276, %3274 ], [ %2603, %3257 ]
  %3284 = phi float [ %3277, %3274 ], [ %2604, %3257 ]
  %3285 = phi float [ %3278, %3274 ], [ %2605, %3257 ]
  %3286 = phi float [ %3279, %3274 ], [ %2606, %3257 ]
  %3287 = phi float [ %3280, %3274 ], [ %2607, %3257 ]
  %3288 = phi float [ %3281, %3274 ], [ %2608, %3257 ]
  %3289 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3290 = extractvalue %dx.types.ResRet.i32 %3289, 0
  %3291 = and i32 %3290, 3
  %3292 = icmp eq i32 %3291, 3
  br i1 %3292, label %3371, label %3293

; <label>:3293                                    ; preds = %3282
  %3294 = and i32 %3290, 16
  %3295 = icmp ne i32 %3294, 0
  %3296 = select i1 %3295, float %2910, float 0.000000e+00
  %3297 = icmp eq i32 %3291, 0
  br i1 %3297, label %3298, label %3326

; <label>:3298                                    ; preds = %3293
  %3299 = and i32 %3290, 64
  %3300 = icmp ne i32 %3299, 0
  %3301 = select i1 %3300, float %2910, float 0.000000e+00
  %3302 = fsub fast float %3130, %3283
  %3303 = fsub fast float %3131, %3284
  %3304 = fsub fast float %3132, %3285
  %3305 = fmul fast float %3296, %3302
  %3306 = fmul fast float %3296, %3303
  %3307 = fmul fast float %3296, %3304
  %3308 = fadd fast float %3305, %3283
  %3309 = fadd fast float %3306, %3284
  %3310 = fadd fast float %3307, %3285
  %3311 = fsub fast float %3116, %2609
  %3312 = fmul fast float %3296, %3311
  %3313 = fadd fast float %3312, %2609
  %3314 = fsub fast float %3258, %3286
  %3315 = fsub fast float %3259, %3287
  %3316 = fsub fast float %3260, %3288
  %3317 = fmul fast float %3301, %3314
  %3318 = fmul fast float %3301, %3315
  %3319 = fmul fast float %3301, %3316
  %3320 = fadd fast float %3317, %3286
  %3321 = fadd fast float %3318, %3287
  %3322 = fadd fast float %3319, %3288
  %3323 = fsub fast float %3273, %2612
  %3324 = fmul fast float %3296, %3323
  %3325 = fadd fast float %3324, %2612
  br label %3371

; <label>:3326                                    ; preds = %3293
  %3327 = icmp eq i32 %3291, 1
  br i1 %3327, label %3328, label %3341

; <label>:3328                                    ; preds = %3326
  %3329 = fadd fast float %3130, -1.000000e+00
  %3330 = fadd fast float %3131, -1.000000e+00
  %3331 = fadd fast float %3132, -1.000000e+00
  %3332 = fmul fast float %3296, %3329
  %3333 = fmul fast float %3296, %3330
  %3334 = fmul fast float %3296, %3331
  %3335 = fadd fast float %3332, 1.000000e+00
  %3336 = fadd fast float %3333, 1.000000e+00
  %3337 = fadd fast float %3334, 1.000000e+00
  %3338 = fmul fast float %3335, %3283
  %3339 = fmul fast float %3336, %3284
  %3340 = fmul fast float %3337, %3285
  br label %3371

; <label>:3341                                    ; preds = %3326
  %3342 = icmp eq i32 %3291, 2
  br i1 %3342, label %3343, label %3371

; <label>:3343                                    ; preds = %3341
  %3344 = call float @dx.op.unary.f32(i32 24, float %3130)  ; Sqrt(value)
  %3345 = call float @dx.op.unary.f32(i32 24, float %3131)  ; Sqrt(value)
  %3346 = call float @dx.op.unary.f32(i32 24, float %3132)  ; Sqrt(value)
  %3347 = fadd fast float %3344, -5.000000e-01
  %3348 = fadd fast float %3345, -5.000000e-01
  %3349 = fadd fast float %3346, -5.000000e-01
  %3350 = fmul fast float %3347, %3296
  %3351 = fmul fast float %3348, %3296
  %3352 = fmul fast float %3349, %3296
  %3353 = fadd fast float %3350, 5.000000e-01
  %3354 = fadd fast float %3351, 5.000000e-01
  %3355 = fadd fast float %3352, 5.000000e-01
  %3356 = fmul fast float %3353, 2.000000e+00
  %3357 = fsub fast float 1.000000e+00, %3356
  %3358 = fmul fast float %3357, %3283
  %3359 = fadd fast float %3358, %3356
  %3360 = fmul fast float %3359, %3283
  %3361 = fmul fast float %3354, 2.000000e+00
  %3362 = fsub fast float 1.000000e+00, %3361
  %3363 = fmul fast float %3362, %3284
  %3364 = fadd fast float %3363, %3361
  %3365 = fmul fast float %3364, %3284
  %3366 = fmul fast float %3355, 2.000000e+00
  %3367 = fsub fast float 1.000000e+00, %3366
  %3368 = fmul fast float %3367, %3285
  %3369 = fadd fast float %3368, %3366
  %3370 = fmul fast float %3369, %3285
  br label %3371

; <label>:3371                                    ; preds = %3343, %3341, %3328, %3298, %3282
  %3372 = phi float [ %3283, %3282 ], [ %3360, %3343 ], [ %3283, %3341 ], [ %3338, %3328 ], [ %3308, %3298 ]
  %3373 = phi float [ %3284, %3282 ], [ %3365, %3343 ], [ %3284, %3341 ], [ %3339, %3328 ], [ %3309, %3298 ]
  %3374 = phi float [ %3285, %3282 ], [ %3370, %3343 ], [ %3285, %3341 ], [ %3340, %3328 ], [ %3310, %3298 ]
  %3375 = phi float [ %3286, %3282 ], [ %3286, %3343 ], [ %3286, %3341 ], [ %3286, %3328 ], [ %3320, %3298 ]
  %3376 = phi float [ %3287, %3282 ], [ %3287, %3343 ], [ %3287, %3341 ], [ %3287, %3328 ], [ %3321, %3298 ]
  %3377 = phi float [ %3288, %3282 ], [ %3288, %3343 ], [ %3288, %3341 ], [ %3288, %3328 ], [ %3322, %3298 ]
  %3378 = phi float [ %2609, %3282 ], [ %2609, %3343 ], [ %2609, %3341 ], [ %2609, %3328 ], [ %3313, %3298 ]
  %3379 = phi float [ %2612, %3282 ], [ %2612, %3343 ], [ %2612, %3341 ], [ %2612, %3328 ], [ %3325, %3298 ]
  %3380 = and i32 %3290, 12
  %3381 = icmp eq i32 %3380, 12
  br i1 %3381, label %3454, label %3382

; <label>:3382                                    ; preds = %3371
  %3383 = and i32 %3290, 2097184
  %3384 = icmp eq i32 %3383, 2097184
  %3385 = select i1 %3384, float %2910, float 0.000000e+00
  %3386 = and i32 %3290, 4194336
  %3387 = icmp eq i32 %3386, 4194336
  %3388 = select i1 %3387, float %2910, float 0.000000e+00
  %3389 = and i32 %3290, 8388640
  %3390 = icmp eq i32 %3389, 8388640
  %3391 = select i1 %3390, float %2910, float 0.000000e+00
  %3392 = icmp eq i32 %3380, 0
  br i1 %3392, label %3393, label %3406

; <label>:3393                                    ; preds = %3382
  %3394 = fsub fast float %3211, %2601
  %3395 = fsub fast float %3212, %2602
  %3396 = fmul fast float %3385, %3394
  %3397 = fmul fast float %3385, %3395
  %3398 = fadd fast float %3396, %2601
  %3399 = fadd fast float %3397, %2602
  %3400 = fsub fast float %3213, %2611
  %3401 = fmul fast float %3388, %3400
  %3402 = fadd fast float %3401, %2611
  %3403 = fsub fast float %3210, %2610
  %3404 = fmul fast float %3391, %3403
  %3405 = fadd fast float %3404, %2610
  br label %3454

; <label>:3406                                    ; preds = %3382
  %3407 = icmp eq i32 %3380, 4
  br i1 %3407, label %3408, label %3440

; <label>:3408                                    ; preds = %3406
  %3409 = fmul fast float %3385, %3211
  %3410 = fmul fast float %3385, %3212
  %3411 = fadd fast float %3409, %2601
  %3412 = fadd fast float %3410, %2602
  %3413 = call float @dx.op.binary.f32(i32 36, float %2611, float %3213)  ; FMin(a,b)
  %3414 = fsub fast float %3413, %2611
  %3415 = fmul fast float %3414, %3388
  %3416 = fadd fast float %3415, %2611
  %3417 = fadd fast float %3210, %2610
  %3418 = fmul fast float %3417, 0x3FF337FAE0000000
  %3419 = fmul fast float %2610, %2610
  %3420 = fmul fast float %3210, %3210
  %3421 = fadd fast float %3420, %3419
  %3422 = fmul fast float %3421, 0x3FE5152B00000000
  %3423 = fmul fast float %2610, 0xBFCC1F85E0000000
  %3424 = fmul fast float %3423, %3210
  %3425 = fadd fast float %3424, 0xBFE1363700000000
  %3426 = fadd fast float %3425, %3418
  %3427 = fsub fast float %3426, %3422
  %3428 = fmul fast float %3417, 0x3FBA6F0D00000000
  %3429 = fmul fast float %3421, 0x3FD0432880000000
  %3430 = fmul fast float %2610, 0xBFEF110800000000
  %3431 = fmul fast float %3430, %3210
  %3432 = fadd fast float %3431, 1.000000e+00
  %3433 = fsub fast float %3432, %3428
  %3434 = fadd fast float %3433, %3429
  %3435 = fdiv fast float %3427, %3434
  %3436 = call float @dx.op.unary.f32(i32 7, float %3435)  ; Saturate(value)
  %3437 = fsub fast float %3436, %2610
  %3438 = fmul fast float %3437, %3391
  %3439 = fadd fast float %3438, %2610
  br label %3454

; <label>:3440                                    ; preds = %3406
  %3441 = icmp eq i32 %3380, 8
  br i1 %3441, label %3442, label %3454

; <label>:3442                                    ; preds = %3440
  %3443 = fmul fast float %3385, %3211
  %3444 = fmul fast float %3385, %3212
  %3445 = fadd fast float %3443, %2601
  %3446 = fadd fast float %3444, %2602
  %3447 = call float @dx.op.binary.f32(i32 36, float %2611, float %3213)  ; FMin(a,b)
  %3448 = fsub fast float %3447, %2611
  %3449 = fmul fast float %3448, %3388
  %3450 = fadd fast float %3449, %2611
  %3451 = fsub fast float %3210, %2610
  %3452 = fmul fast float %3391, %3451
  %3453 = fadd fast float %3452, %2610
  br label %3454

; <label>:3454                                    ; preds = %3442, %3440, %3408, %3393, %3371, %2909, %2613, %2600
  %3455 = phi float [ %2601, %3371 ], [ %2601, %2909 ], [ %2601, %2600 ], [ %2601, %2613 ], [ %3398, %3393 ], [ %3411, %3408 ], [ %2601, %3440 ], [ %3445, %3442 ]
  %3456 = phi float [ %2602, %3371 ], [ %2602, %2909 ], [ %2602, %2600 ], [ %2602, %2613 ], [ %3399, %3393 ], [ %3412, %3408 ], [ %2602, %3440 ], [ %3446, %3442 ]
  %3457 = phi float [ %3372, %3371 ], [ %2603, %2909 ], [ %2603, %2600 ], [ %2603, %2613 ], [ %3372, %3393 ], [ %3372, %3408 ], [ %3372, %3440 ], [ %3372, %3442 ]
  %3458 = phi float [ %3373, %3371 ], [ %2604, %2909 ], [ %2604, %2600 ], [ %2604, %2613 ], [ %3373, %3393 ], [ %3373, %3408 ], [ %3373, %3440 ], [ %3373, %3442 ]
  %3459 = phi float [ %3374, %3371 ], [ %2605, %2909 ], [ %2605, %2600 ], [ %2605, %2613 ], [ %3374, %3393 ], [ %3374, %3408 ], [ %3374, %3440 ], [ %3374, %3442 ]
  %3460 = phi float [ %3375, %3371 ], [ %2606, %2909 ], [ %2606, %2600 ], [ %2606, %2613 ], [ %3375, %3393 ], [ %3375, %3408 ], [ %3375, %3440 ], [ %3375, %3442 ]
  %3461 = phi float [ %3376, %3371 ], [ %2607, %2909 ], [ %2607, %2600 ], [ %2607, %2613 ], [ %3376, %3393 ], [ %3376, %3408 ], [ %3376, %3440 ], [ %3376, %3442 ]
  %3462 = phi float [ %3377, %3371 ], [ %2608, %2909 ], [ %2608, %2600 ], [ %2608, %2613 ], [ %3377, %3393 ], [ %3377, %3408 ], [ %3377, %3440 ], [ %3377, %3442 ]
  %3463 = phi float [ %3378, %3371 ], [ %2609, %2909 ], [ %2609, %2600 ], [ %2609, %2613 ], [ %3378, %3393 ], [ %3378, %3408 ], [ %3378, %3440 ], [ %3378, %3442 ]
  %3464 = phi float [ %2610, %3371 ], [ %2610, %2909 ], [ %2610, %2600 ], [ %2610, %2613 ], [ %3405, %3393 ], [ %3439, %3408 ], [ %2610, %3440 ], [ %3453, %3442 ]
  %3465 = phi float [ %2611, %3371 ], [ %2611, %2909 ], [ %2611, %2600 ], [ %2611, %2613 ], [ %3402, %3393 ], [ %3416, %3408 ], [ %2611, %3440 ], [ %3450, %3442 ]
  %3466 = phi float [ %3379, %3371 ], [ %2612, %2909 ], [ %2612, %2600 ], [ %2612, %2613 ], [ %3379, %3393 ], [ %3379, %3408 ], [ %3379, %3440 ], [ %3379, %3442 ]
  %3467 = add i32 %43, 360
  %3468 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3467, i32 undef)  ; BufferLoad(srv,index,wot)
  %3469 = extractvalue %dx.types.ResRet.i32 %3468, 0
  %3470 = extractvalue %dx.types.ResRet.i32 %3468, 1
  %3471 = bitcast i32 %3469 to float
  %3472 = bitcast i32 %3470 to float
  %3473 = fcmp fast oge float %3471, 0.000000e+00
  %3474 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3475 = extractvalue %dx.types.CBufRet.f32 %3474, 0
  %3476 = select i1 %3473, float %3471, float %3475
  %3477 = add i32 %43, 456
  %3478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3477, i32 undef)  ; BufferLoad(srv,index,wot)
  %3479 = extractvalue %dx.types.ResRet.i32 %3478, 0
  %3480 = add i32 %3479, 0
  %3481 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3480, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3482 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3481, %dx.types.Handle %74, float %65, float %66, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3483 = extractvalue %dx.types.ResRet.f32 %3482, 0
  %3484 = fmul fast float %3483, %3472
  %3485 = fadd fast float %3484, %3476
  %3486 = call float @dx.op.dot2.f32(i32 54, float %3455, float %3456, float %3455, float %3456)  ; Dot2(ax,ay,bx,by)
  %3487 = fmul fast float %3486, 0x3FE3333340000000
  %3488 = fsub fast float 1.000000e+00, %3487
  %3489 = call float @dx.op.dot3.f32(i32 55, float %3455, float %3456, float %3488, float %3455, float %3456, float %3488)  ; Dot3(ax,ay,az,bx,by,bz)
  %3490 = call float @dx.op.unary.f32(i32 25, float %3489)  ; Rsqrt(value)
  %3491 = fmul fast float %3490, %3455
  %3492 = fmul fast float %3490, %3456
  %3493 = fmul fast float %3488, %3490
  %3494 = fmul fast float %3493, %84
  %3495 = fmul fast float %3493, %85
  %3496 = fmul fast float %3493, %86
  %3497 = fmul fast float %3491, %58
  %3498 = fmul fast float %3491, %59
  %3499 = fmul fast float %3491, %60
  %3500 = fadd fast float %3494, %3497
  %3501 = fadd fast float %3495, %3498
  %3502 = fadd fast float %3496, %3499
  %3503 = fmul fast float %96, %3492
  %3504 = fmul fast float %97, %3492
  %3505 = fmul fast float %98, %3492
  %3506 = fadd fast float %3500, %3503
  %3507 = fadd fast float %3501, %3504
  %3508 = fadd fast float %3502, %3505
  %3509 = call float @dx.op.dot3.f32(i32 55, float %3506, float %3507, float %3508, float %3506, float %3507, float %3508)  ; Dot3(ax,ay,az,bx,by,bz)
  %3510 = call float @dx.op.unary.f32(i32 25, float %3509)  ; Rsqrt(value)
  %3511 = fmul fast float %3506, %3510
  %3512 = fmul fast float %3507, %3510
  %3513 = fmul fast float %3508, %3510
  %3514 = call float @dx.op.unary.f32(i32 83, float %140)  ; DerivCoarseX(value)
  %3515 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3516 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3517 = call float @dx.op.unary.f32(i32 84, float %140)  ; DerivCoarseY(value)
  %3518 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3519 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3520 = fadd fast float %3514, %140
  %3521 = fadd fast float %3515, %141
  %3522 = fadd fast float %3516, %142
  %3523 = fadd fast float %3517, %140
  %3524 = fadd fast float %3518, %141
  %3525 = fadd fast float %3519, %142
  %3526 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3527 = extractvalue %dx.types.CBufRet.f32 %3526, 0
  %3528 = extractvalue %dx.types.CBufRet.f32 %3526, 1
  %3529 = extractvalue %dx.types.CBufRet.f32 %3526, 2
  %3530 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3531 = extractvalue %dx.types.CBufRet.f32 %3530, 2
  %3532 = extractvalue %dx.types.CBufRet.f32 %3530, 3
  %3533 = fmul fast float %3527, %77
  %3534 = fmul fast float %3533, %3531
  %3535 = fmul fast float %3528, %78
  %3536 = fmul fast float %3535, %3532
  %3537 = fptoui float %3534 to i32
  %3538 = fptoui float %3536 to i32
  %3539 = fadd fast float %3527, -1.000000e+00
  %3540 = fadd fast float %3528, -1.000000e+00
  %3541 = fptoui float %3539 to i32
  %3542 = fptoui float %3540 to i32
  %3543 = call i32 @dx.op.binary.i32(i32 40, i32 %3537, i32 %3541)  ; UMin(a,b)
  %3544 = call i32 @dx.op.binary.i32(i32 40, i32 %3538, i32 %3542)  ; UMin(a,b)
  %3545 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3546 = extractvalue %dx.types.CBufRet.f32 %3545, 2
  %3547 = extractvalue %dx.types.CBufRet.f32 %3545, 3
  %3548 = fmul fast float %3546, %72
  %3549 = fsub fast float %3548, %3547
  %3550 = fadd fast float %3529, -1.000000e+00
  %3551 = call float @dx.op.binary.f32(i32 36, float %3549, float %3550)  ; FMin(a,b)
  %3552 = fptoui float %3551 to i32
  %3553 = fptoui float %3527 to i32
  %3554 = fptoui float %3528 to i32
  %3555 = mul i32 %3552, %3554
  %3556 = add i32 %3555, %3544
  %3557 = mul i32 %3556, %3553
  %3558 = add i32 %3557, %3543
  %3559 = shl i32 %3558, 2
  %3560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3559, i32 undef)  ; BufferLoad(srv,index,wot)
  %3561 = extractvalue %dx.types.ResRet.i32 %3560, 0
  %3562 = and i32 %3561, 1023
  %3563 = lshr i32 %3561, 10
  %3564 = icmp eq i32 %3562, 0
  br i1 %3564, label %3990, label %3565

; <label>:3565                                    ; preds = %3454
  %3566 = and i32 %3561, 1023
  br label %3567

; <label>:3567                                    ; preds = %3693, %3565
  %3568 = phi i32 [ %3643, %3693 ], [ 0, %3565 ]
  %3569 = phi float [ %3694, %3693 ], [ 0.000000e+00, %3565 ]
  %3570 = phi float [ %3695, %3693 ], [ %3485, %3565 ]
  %3571 = phi float [ %3696, %3693 ], [ %3466, %3565 ]
  %3572 = phi float [ %3697, %3693 ], [ 0.000000e+00, %3565 ]
  %3573 = phi float [ %3698, %3693 ], [ 0.000000e+00, %3565 ]
  %3574 = phi float [ %3699, %3693 ], [ %3460, %3565 ]
  %3575 = phi float [ %3700, %3693 ], [ %3461, %3565 ]
  %3576 = phi float [ %3701, %3693 ], [ %3462, %3565 ]
  %3577 = phi float [ %3702, %3693 ], [ %3511, %3565 ]
  %3578 = phi float [ %3703, %3693 ], [ %3512, %3565 ]
  %3579 = phi float [ %3704, %3693 ], [ %3513, %3565 ]
  %3580 = phi float [ %3705, %3693 ], [ %3465, %3565 ]
  %3581 = phi float [ %3706, %3693 ], [ %3464, %3565 ]
  %3582 = phi float [ %3707, %3693 ], [ 0.000000e+00, %3565 ]
  %3583 = phi float [ %3708, %3693 ], [ %3463, %3565 ]
  %3584 = phi float [ %3709, %3693 ], [ %3457, %3565 ]
  %3585 = phi float [ %3710, %3693 ], [ %3458, %3565 ]
  %3586 = phi float [ %3711, %3693 ], [ %3459, %3565 ]
  %3587 = add nuw nsw i32 %3568, %3563
  %3588 = shl i32 %3587, 2
  %3589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3588, i32 undef)  ; BufferLoad(srv,index,wot)
  %3590 = extractvalue %dx.types.ResRet.i32 %3589, 0
  %3591 = shl i32 %3590, 8
  %3592 = or i32 %3591, 48
  %3593 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3592, i32 undef)  ; BufferLoad(srv,index,wot)
  %3594 = extractvalue %dx.types.ResRet.f32 %3593, 0
  %3595 = extractvalue %dx.types.ResRet.f32 %3593, 1
  %3596 = extractvalue %dx.types.ResRet.f32 %3593, 2
  %3597 = extractvalue %dx.types.ResRet.f32 %3593, 3
  %3598 = or i32 %3591, 64
  %3599 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3598, i32 undef)  ; BufferLoad(srv,index,wot)
  %3600 = extractvalue %dx.types.ResRet.i32 %3599, 0
  %3601 = extractvalue %dx.types.ResRet.i32 %3599, 1
  %3602 = or i32 %3591, 80
  %3603 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3602, i32 undef)  ; BufferLoad(srv,index,wot)
  %3604 = extractvalue %dx.types.ResRet.f32 %3603, 2
  %3605 = extractvalue %dx.types.ResRet.f32 %3603, 3
  %3606 = or i32 %3591, 96
  %3607 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3606, i32 undef)  ; BufferLoad(srv,index,wot)
  %3608 = extractvalue %dx.types.ResRet.f32 %3607, 0
  %3609 = extractvalue %dx.types.ResRet.f32 %3607, 1
  %3610 = extractvalue %dx.types.ResRet.f32 %3607, 2
  %3611 = extractvalue %dx.types.ResRet.f32 %3607, 3
  %3612 = or i32 %3591, 112
  %3613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3612, i32 undef)  ; BufferLoad(srv,index,wot)
  %3614 = extractvalue %dx.types.ResRet.f32 %3613, 2
  %3615 = or i32 %3591, 128
  %3616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3615, i32 undef)  ; BufferLoad(srv,index,wot)
  %3617 = extractvalue %dx.types.ResRet.f32 %3616, 0
  %3618 = extractvalue %dx.types.ResRet.f32 %3616, 1
  %3619 = extractvalue %dx.types.ResRet.f32 %3616, 2
  %3620 = extractvalue %dx.types.ResRet.f32 %3616, 3
  %3621 = or i32 %3591, 144
  %3622 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3621, i32 undef)  ; BufferLoad(srv,index,wot)
  %3623 = extractvalue %dx.types.ResRet.f32 %3622, 0
  %3624 = extractvalue %dx.types.ResRet.f32 %3622, 1
  %3625 = extractvalue %dx.types.ResRet.f32 %3622, 2
  %3626 = extractvalue %dx.types.ResRet.f32 %3622, 3
  %3627 = or i32 %3591, 160
  %3628 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3627, i32 undef)  ; BufferLoad(srv,index,wot)
  %3629 = extractvalue %dx.types.ResRet.f32 %3628, 0
  %3630 = extractvalue %dx.types.ResRet.f32 %3628, 1
  %3631 = extractvalue %dx.types.ResRet.f32 %3628, 2
  %3632 = extractvalue %dx.types.ResRet.f32 %3628, 3
  %3633 = or i32 %3591, 192
  %3634 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3633, i32 undef)  ; BufferLoad(srv,index,wot)
  %3635 = extractvalue %dx.types.ResRet.i32 %3634, 0
  %3636 = or i32 %3591, 208
  %3637 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3636, i32 undef)  ; BufferLoad(srv,index,wot)
  %3638 = extractvalue %dx.types.ResRet.f32 %3637, 0
  %3639 = or i32 %3591, 248
  %3640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3639, i32 undef)  ; BufferLoad(srv,index,wot)
  %3641 = extractvalue %dx.types.ResRet.f32 %3640, 0
  %3642 = extractvalue %dx.types.ResRet.f32 %3640, 1
  %3643 = add nuw nsw i32 %3568, 1
  %3644 = bitcast float %3597 to i32
  %3645 = and i32 %3644, 512
  %3646 = icmp eq i32 %3645, 0
  %3647 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3591, i32 undef)  ; BufferLoad(srv,index,wot)
  %3648 = extractvalue %dx.types.ResRet.f32 %3647, 0
  %3649 = extractvalue %dx.types.ResRet.f32 %3647, 1
  %3650 = extractvalue %dx.types.ResRet.f32 %3647, 2
  %3651 = extractvalue %dx.types.ResRet.f32 %3647, 3
  %3652 = call float @dx.op.dot4.f32(i32 56, float %3648, float %3649, float %3650, float %3651, float %140, float %141, float %142, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3653 = or i32 %3591, 16
  %3654 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3653, i32 undef)  ; BufferLoad(srv,index,wot)
  %3655 = extractvalue %dx.types.ResRet.f32 %3654, 0
  %3656 = extractvalue %dx.types.ResRet.f32 %3654, 1
  %3657 = extractvalue %dx.types.ResRet.f32 %3654, 2
  %3658 = extractvalue %dx.types.ResRet.f32 %3654, 3
  %3659 = call float @dx.op.dot4.f32(i32 56, float %3655, float %3656, float %3657, float %3658, float %140, float %141, float %142, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3660 = or i32 %3591, 32
  %3661 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3660, i32 undef)  ; BufferLoad(srv,index,wot)
  %3662 = extractvalue %dx.types.ResRet.f32 %3661, 0
  %3663 = extractvalue %dx.types.ResRet.f32 %3661, 1
  %3664 = extractvalue %dx.types.ResRet.f32 %3661, 2
  %3665 = extractvalue %dx.types.ResRet.f32 %3661, 3
  %3666 = call float @dx.op.dot4.f32(i32 56, float %3662, float %3663, float %3664, float %3665, float %140, float %141, float %142, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3667 = call float @dx.op.unary.f32(i32 27, float %3652)  ; Round_ni(value)
  %3668 = call float @dx.op.unary.f32(i32 6, float %3667)  ; FAbs(value)
  %3669 = call float @dx.op.unary.f32(i32 27, float %3659)  ; Round_ni(value)
  %3670 = call float @dx.op.unary.f32(i32 6, float %3669)  ; FAbs(value)
  %3671 = call float @dx.op.unary.f32(i32 6, float %3666)  ; FAbs(value)
  %3672 = call float @dx.op.unary.f32(i32 27, float %3671)  ; Round_ni(value)
  %3673 = fadd fast float %3670, %3668
  %3674 = fadd fast float %3673, %3672
  %3675 = fcmp fast oeq float %3674, 0.000000e+00
  %3676 = call float @dx.op.dot4.f32(i32 56, float %3648, float %3649, float %3650, float %3651, float %3520, float %3521, float %3522, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3677 = call float @dx.op.dot4.f32(i32 56, float %3655, float %3656, float %3657, float %3658, float %3520, float %3521, float %3522, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3678 = call float @dx.op.dot4.f32(i32 56, float %3648, float %3649, float %3650, float %3651, float %3523, float %3524, float %3525, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3679 = call float @dx.op.dot4.f32(i32 56, float %3655, float %3656, float %3657, float %3658, float %3523, float %3524, float %3525, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3680 = fsub fast float %3676, %3652
  %3681 = fsub fast float %3678, %3652
  %3682 = fsub fast float %3677, %3659
  %3683 = fsub fast float %3679, %3659
  %3684 = call float @dx.op.dot3.f32(i32 55, float %3594, float %3595, float %3596, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %3685 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3686 = extractvalue %dx.types.CBufRet.f32 %3685, 2
  %3687 = fadd fast float %3686, %3684
  %3688 = call float @dx.op.unary.f32(i32 7, float %3687)  ; Saturate(value)
  %3689 = extractvalue %dx.types.CBufRet.f32 %3685, 0
  %3690 = fcmp fast ogt float %3688, %3689
  %3691 = and i1 %3675, %3690
  %3692 = and i1 %3646, %3691
  br i1 %3692, label %3713, label %3693

; <label>:3693                                    ; preds = %3976, %3794, %3713, %3567
  %3694 = phi float [ %3569, %3713 ], [ %3797, %3794 ], [ %3797, %3976 ], [ %3569, %3567 ]
  %3695 = phi float [ %3570, %3713 ], [ %3570, %3794 ], [ %3951, %3976 ], [ %3570, %3567 ]
  %3696 = phi float [ %3571, %3713 ], [ %3571, %3794 ], [ %3949, %3976 ], [ %3571, %3567 ]
  %3697 = phi float [ %3572, %3713 ], [ %3572, %3794 ], [ %3921, %3976 ], [ %3572, %3567 ]
  %3698 = phi float [ %3573, %3713 ], [ %3573, %3794 ], [ %3919, %3976 ], [ %3573, %3567 ]
  %3699 = phi float [ %3574, %3713 ], [ %3574, %3794 ], [ %3986, %3976 ], [ %3574, %3567 ]
  %3700 = phi float [ %3575, %3713 ], [ %3575, %3794 ], [ %3987, %3976 ], [ %3575, %3567 ]
  %3701 = phi float [ %3576, %3713 ], [ %3576, %3794 ], [ %3988, %3976 ], [ %3576, %3567 ]
  %3702 = phi float [ %3577, %3713 ], [ %3577, %3794 ], [ %3900, %3976 ], [ %3577, %3567 ]
  %3703 = phi float [ %3578, %3713 ], [ %3578, %3794 ], [ %3901, %3976 ], [ %3578, %3567 ]
  %3704 = phi float [ %3579, %3713 ], [ %3579, %3794 ], [ %3902, %3976 ], [ %3579, %3567 ]
  %3705 = phi float [ %3580, %3713 ], [ %3580, %3794 ], [ %3929, %3976 ], [ %3580, %3567 ]
  %3706 = phi float [ %3581, %3713 ], [ %3581, %3794 ], [ %3926, %3976 ], [ %3581, %3567 ]
  %3707 = phi float [ %3582, %3713 ], [ %3582, %3794 ], [ %3923, %3976 ], [ %3582, %3567 ]
  %3708 = phi float [ %3583, %3713 ], [ %3583, %3794 ], [ %3917, %3976 ], [ %3583, %3567 ]
  %3709 = phi float [ %3584, %3713 ], [ %3584, %3794 ], [ %3912, %3976 ], [ %3584, %3567 ]
  %3710 = phi float [ %3585, %3713 ], [ %3585, %3794 ], [ %3913, %3976 ], [ %3585, %3567 ]
  %3711 = phi float [ %3586, %3713 ], [ %3586, %3794 ], [ %3914, %3976 ], [ %3586, %3567 ]
  %3712 = icmp eq i32 %3643, %3566
  br i1 %3712, label %3989, label %3567

; <label>:3713                                    ; preds = %3567
  %3714 = extractvalue %dx.types.ResRet.f32 %3613, 3
  %3715 = extractvalue %dx.types.ResRet.f32 %3613, 1
  %3716 = extractvalue %dx.types.ResRet.f32 %3613, 0
  %3717 = extractvalue %dx.types.ResRet.f32 %3603, 1
  %3718 = extractvalue %dx.types.ResRet.f32 %3603, 0
  %3719 = extractvalue %dx.types.ResRet.i32 %3599, 3
  %3720 = extractvalue %dx.types.ResRet.i32 %3599, 2
  %3721 = add i32 %3719, 0
  %3722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3721, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3723 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3724 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3722, %dx.types.Handle %3723, float %3652, float %3659, float undef, float undef, i32 0, i32 0, i32 undef, float %3680, float %3682, float undef, float %3681, float %3683, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3725 = extractvalue %dx.types.ResRet.f32 %3724, 0
  %3726 = fmul fast float %3725, %3718
  %3727 = fadd fast float %3726, %3717
  %3728 = call float @dx.op.unary.f32(i32 7, float %3727)  ; Saturate(value)
  %3729 = fmul fast float %3652, %3608
  %3730 = call float @dx.op.tertiary.f32(i32 46, float %3609, float %3659, float %3729)  ; FMad(a,b,c)
  %3731 = fadd fast float %3730, %3716
  %3732 = fmul fast float %3652, %3610
  %3733 = call float @dx.op.tertiary.f32(i32 46, float %3611, float %3659, float %3732)  ; FMad(a,b,c)
  %3734 = fadd fast float %3733, %3715
  %3735 = fmul fast float %3680, %3608
  %3736 = call float @dx.op.tertiary.f32(i32 46, float %3609, float %3682, float %3735)  ; FMad(a,b,c)
  %3737 = fmul fast float %3680, %3610
  %3738 = call float @dx.op.tertiary.f32(i32 46, float %3611, float %3682, float %3737)  ; FMad(a,b,c)
  %3739 = fmul fast float %3681, %3608
  %3740 = call float @dx.op.tertiary.f32(i32 46, float %3609, float %3683, float %3739)  ; FMad(a,b,c)
  %3741 = fmul fast float %3681, %3610
  %3742 = call float @dx.op.tertiary.f32(i32 46, float %3611, float %3683, float %3741)  ; FMad(a,b,c)
  %3743 = add i32 %3720, 0
  %3744 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3743, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3745 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3744, %dx.types.Handle %3723, float %3731, float %3734, float undef, float undef, i32 0, i32 0, i32 undef, float %3736, float %3738, float undef, float %3740, float %3742, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3746 = extractvalue %dx.types.ResRet.f32 %3745, 0
  %3747 = and i32 %3644, 1024
  %3748 = icmp ne i32 %3747, 0
  %3749 = fcmp fast ogt float %3746, 0x3FE0101020000000
  %3750 = uitofp i1 %3749 to float
  %3751 = select i1 %3748, float %3750, float %3746
  %3752 = and i32 %3644, 8192
  %3753 = icmp ne i32 %3752, 0
  %3754 = select i1 %3753, float %3714, float 1.000000e+00
  %3755 = fmul fast float %3652, 2.000000e+00
  %3756 = fadd fast float %3755, -1.000000e+00
  %3757 = call float @dx.op.unary.f32(i32 6, float %3756)  ; FAbs(value)
  %3758 = fmul fast float %3757, %3641
  %3759 = fsub fast float %3758, %3641
  %3760 = call float @dx.op.unary.f32(i32 7, float %3759)  ; Saturate(value)
  %3761 = fmul fast float %3659, 2.000000e+00
  %3762 = fadd fast float %3761, -1.000000e+00
  %3763 = call float @dx.op.unary.f32(i32 6, float %3762)  ; FAbs(value)
  %3764 = fmul fast float %3763, %3642
  %3765 = fsub fast float %3764, %3642
  %3766 = call float @dx.op.unary.f32(i32 7, float %3765)  ; Saturate(value)
  %3767 = fmul fast float %3671, %3604
  %3768 = fsub fast float %3767, %3604
  %3769 = call float @dx.op.unary.f32(i32 7, float %3768)  ; Saturate(value)
  %3770 = fmul fast float %3728, %3754
  %3771 = fmul fast float %3770, %3725
  %3772 = fmul fast float %3771, %3760
  %3773 = fmul fast float %3772, %3751
  %3774 = fmul fast float %3773, %3766
  %3775 = fmul fast float %3774, %3769
  %3776 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3777 = extractvalue %dx.types.CBufRet.f32 %3776, 1
  %3778 = extractvalue %dx.types.CBufRet.f32 %3776, 0
  %3779 = fsub fast float %3688, %3778
  %3780 = fmul fast float %3779, %3777
  %3781 = call float @dx.op.unary.f32(i32 7, float %3780)  ; Saturate(value)
  %3782 = fmul fast float %3775, %3605
  %3783 = fadd fast float %3775, %3605
  %3784 = fmul fast float %3783, %3614
  %3785 = fsub fast float %3784, %3614
  %3786 = call float @dx.op.unary.f32(i32 7, float %3785)  ; Saturate(value)
  %3787 = and i32 %3644, 128
  %3788 = icmp ne i32 %3787, 0
  %3789 = select i1 %3788, float %3786, float %3782
  %3790 = fmul fast float %3789, %3781
  %3791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3792 = extractvalue %dx.types.CBufRet.f32 %3791, 0
  %3793 = fcmp fast ugt float %3790, %3792
  br i1 %3793, label %3794, label %3693

; <label>:3794                                    ; preds = %3713
  %3795 = select i1 %3753, float %3790, float 0.000000e+00
  %3796 = fadd fast float %3795, %3569
  %3797 = call float @dx.op.unary.f32(i32 7, float %3796)  ; Saturate(value)
  br i1 %3753, label %3693, label %3798

; <label>:3798                                    ; preds = %3794
  %3799 = and i32 %3644, 4
  %3800 = and i32 %3644, 8
  %3801 = add i32 %3600, 0
  %3802 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3801, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3803 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3804 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3802, %dx.types.Handle %3803, float %3731, float %3734, float undef, float undef, i32 0, i32 0, i32 undef, float %3736, float %3738, float undef, float %3740, float %3742, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3806 = extractvalue %dx.types.ResRet.f32 %3804, 1
  %3807 = extractvalue %dx.types.ResRet.f32 %3804, 2
  %3808 = extractvalue %dx.types.ResRet.f32 %3804, 3
  %3809 = bitcast float %3626 to i32
  %3810 = and i32 %3809, 255
  %3811 = uitofp i32 %3810 to float
  %3812 = lshr i32 %3809, 8
  %3813 = and i32 %3812, 255
  %3814 = uitofp i32 %3813 to float
  %3815 = fmul fast float %3808, %3811
  %3816 = fadd fast float %3815, %3814
  %3817 = fmul fast float %3816, 0x3F70101000000000
  %3818 = add i32 %3601, 0
  %3819 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3818, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3820 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3819, %dx.types.Handle %3803, float %3731, float %3734, float undef, float undef, i32 0, i32 0, i32 undef, float %3736, float %3738, float undef, float %3740, float %3742, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3821 = extractvalue %dx.types.ResRet.f32 %3820, 0
  %3822 = extractvalue %dx.types.ResRet.f32 %3820, 1
  %3823 = extractvalue %dx.types.ResRet.f32 %3820, 2
  %3824 = extractvalue %dx.types.ResRet.f32 %3820, 3
  %3825 = bitcast float %3620 to i32
  %3826 = and i32 %3825, 255
  %3827 = uitofp i32 %3826 to float
  %3828 = lshr i32 %3825, 8
  %3829 = and i32 %3828, 255
  %3830 = uitofp i32 %3829 to float
  %3831 = lshr i32 %3825, 16
  %3832 = and i32 %3831, 255
  %3833 = uitofp i32 %3832 to float
  %3834 = fmul fast float %3833, 0x3F70101000000000
  %3835 = fmul fast float %3821, %3827
  %3836 = fadd fast float %3835, %3830
  %3837 = fmul fast float %3836, 0x3F70101000000000
  %3838 = fadd fast float %3822, -5.000000e-01
  %3839 = fadd fast float %3824, -5.000000e-01
  %3840 = fmul fast float %3838, %3834
  %3841 = fmul fast float %3839, %3834
  %3842 = fadd fast float %3840, 5.000000e-01
  %3843 = fadd fast float %3841, 5.000000e-01
  %3844 = fmul fast float %3805, %3629
  %3845 = fmul fast float %3806, %3630
  %3846 = fmul fast float %3807, %3631
  %3847 = fmul fast float %3842, 2.000000e+00
  %3848 = fadd fast float %3847, -1.000000e+00
  %3849 = fmul fast float %3843, 2.000000e+00
  %3850 = fadd fast float %3849, -1.000000e+00
  %3851 = fadd fast float %3848, %3850
  %3852 = fmul fast float %3851, 5.000000e-01
  %3853 = fsub fast float %3848, %3850
  %3854 = fmul fast float %3853, 5.000000e-01
  %3855 = call float @dx.op.unary.f32(i32 6, float %3852)  ; FAbs(value)
  %3856 = fsub fast float 1.000000e+00, %3855
  %3857 = call float @dx.op.unary.f32(i32 6, float %3854)  ; FAbs(value)
  %3858 = fsub fast float %3856, %3857
  %3859 = call float @dx.op.dot3.f32(i32 55, float %3852, float %3854, float %3858, float %3852, float %3854, float %3858)  ; Dot3(ax,ay,az,bx,by,bz)
  %3860 = call float @dx.op.unary.f32(i32 25, float %3859)  ; Rsqrt(value)
  %3861 = fmul fast float %3852, %3860
  %3862 = fmul fast float %3854, %3860
  %3863 = fmul fast float %3860, %3858
  %3864 = fmul fast float %3863, %3594
  %3865 = fmul fast float %3863, %3595
  %3866 = fmul fast float %3863, %3596
  %3867 = fmul fast float %3861, %3617
  %3868 = fmul fast float %3861, %3618
  %3869 = fmul fast float %3861, %3619
  %3870 = fadd fast float %3867, %3864
  %3871 = fadd fast float %3868, %3865
  %3872 = fadd fast float %3869, %3866
  %3873 = fmul fast float %3862, %3623
  %3874 = fmul fast float %3862, %3624
  %3875 = fmul fast float %3862, %3625
  %3876 = fadd fast float %3870, %3873
  %3877 = fadd fast float %3871, %3874
  %3878 = fadd fast float %3872, %3875
  %3879 = call float @dx.op.dot3.f32(i32 55, float %3876, float %3877, float %3878, float %3876, float %3877, float %3878)  ; Dot3(ax,ay,az,bx,by,bz)
  %3880 = call float @dx.op.unary.f32(i32 25, float %3879)  ; Rsqrt(value)
  %3881 = fmul fast float %3876, %3880
  %3882 = fmul fast float %3877, %3880
  %3883 = fmul fast float %3878, %3880
  %3884 = icmp ne i32 %3800, 0
  %3885 = select i1 %3884, float 1.000000e+00, float 0.000000e+00
  %3886 = fmul fast float %3790, %3885
  %3887 = and i32 %3644, 1
  %3888 = icmp eq i32 %3887, 0
  br i1 %3888, label %3889, label %3893

; <label>:3889                                    ; preds = %3798
  %3890 = fsub fast float %3881, %3577
  %3891 = fsub fast float %3882, %3578
  %3892 = fsub fast float %3883, %3579
  br label %3893

; <label>:3893                                    ; preds = %3889, %3798
  %3894 = phi float [ %3890, %3889 ], [ %3881, %3798 ]
  %3895 = phi float [ %3891, %3889 ], [ %3882, %3798 ]
  %3896 = phi float [ %3892, %3889 ], [ %3883, %3798 ]
  %3897 = fmul float %3896, %3886
  %3898 = fmul float %3895, %3886
  %3899 = fmul float %3894, %3886
  %3900 = fadd fast float %3899, %3577
  %3901 = fadd fast float %3898, %3578
  %3902 = fadd fast float %3897, %3579
  %3903 = icmp ne i32 %3799, 0
  %3904 = select i1 %3903, float 1.000000e+00, float 0.000000e+00
  %3905 = fmul fast float %3790, %3904
  %3906 = fsub fast float %3844, %3584
  %3907 = fsub fast float %3845, %3585
  %3908 = fsub fast float %3846, %3586
  %3909 = fmul fast float %3906, %3905
  %3910 = fmul fast float %3907, %3905
  %3911 = fmul fast float %3908, %3905
  %3912 = fadd fast float %3909, %3584
  %3913 = fadd fast float %3910, %3585
  %3914 = fadd fast float %3911, %3586
  %3915 = fsub fast float %3817, %3583
  %3916 = fmul fast float %3915, %3905
  %3917 = fadd fast float %3916, %3583
  %3918 = fmul fast float %3905, %3573
  %3919 = fsub fast float %3573, %3918
  %3920 = fmul fast float %3905, %3572
  %3921 = fsub fast float %3572, %3920
  %3922 = fadd fast float %3790, %3582
  %3923 = call float @dx.op.unary.f32(i32 7, float %3922)  ; Saturate(value)
  %3924 = fsub fast float %3837, %3581
  %3925 = fmul fast float %3924, %3886
  %3926 = fadd fast float %3925, %3581
  %3927 = fsub fast float %3823, %3580
  %3928 = fmul fast float %3927, %3886
  %3929 = fadd fast float %3928, %3580
  %3930 = call float @dx.op.dot3.f32(i32 55, float %3844, float %3845, float %3846, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3932 = extractvalue %dx.types.CBufRet.f32 %3931, 0
  %3933 = extractvalue %dx.types.CBufRet.f32 %3931, 1
  %3934 = fmul fast float %3933, %3930
  %3935 = fadd fast float %3934, %3932
  %3936 = call float @dx.op.unary.f32(i32 7, float %3935)  ; Saturate(value)
  %3937 = bitcast float %3632 to i32
  %3938 = and i32 %3937, 65535
  %3939 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3938)  ; LegacyF16ToF32(value)
  %3940 = lshr i32 %3937, 16
  %3941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3940)  ; LegacyF16ToF32(value)
  %3942 = fcmp fast oge float %3939, 0.000000e+00
  %3943 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3944 = extractvalue %dx.types.CBufRet.f32 %3943, 0
  %3945 = select i1 %3942, float %3939, float %3944
  %3946 = fadd fast float %3945, %3941
  %3947 = fsub fast float %3936, %3571
  %3948 = fmul fast float %3947, %3790
  %3949 = fadd fast float %3948, %3571
  %3950 = fmul fast float %3946, %3790
  %3951 = call float @dx.op.binary.f32(i32 35, float %3570, float %3950)  ; FMax(a,b)
  %3952 = and i32 %3644, 16
  %3953 = icmp eq i32 %3952, 0
  br i1 %3953, label %3976, label %3954

; <label>:3954                                    ; preds = %3893
  %3955 = bitcast float %3638 to i32
  %3956 = add i32 %3635, 0
  %3957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3956, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3958 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3957, %dx.types.Handle %3803, float %3731, float %3734, float undef, float undef, i32 0, i32 0, i32 undef, float %3736, float %3738, float undef, float %3740, float %3742, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3959 = extractvalue %dx.types.ResRet.f32 %3958, 0
  %3960 = extractvalue %dx.types.ResRet.f32 %3958, 1
  %3961 = extractvalue %dx.types.ResRet.f32 %3958, 2
  %3962 = and i32 %3955, 65535
  %3963 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3962)  ; LegacyF16ToF32(value)
  %3964 = fmul fast float %3959, %3629
  %3965 = fmul fast float %3960, %3630
  %3966 = fmul fast float %3961, %3631
  %3967 = and i32 %3644, 16384
  %3968 = icmp ne i32 %3967, 0
  %3969 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3970 = extractvalue %dx.types.CBufRet.f32 %3969, 0
  %3971 = select i1 %3968, float %3970, float 1.000000e+00
  %3972 = fmul fast float %3971, %3963
  %3973 = fmul fast float %3964, %3972
  %3974 = fmul fast float %3965, %3972
  %3975 = fmul fast float %3966, %3972
  br label %3976

; <label>:3976                                    ; preds = %3954, %3893
  %3977 = phi float [ %3973, %3954 ], [ 0.000000e+00, %3893 ]
  %3978 = phi float [ %3974, %3954 ], [ 0.000000e+00, %3893 ]
  %3979 = phi float [ %3975, %3954 ], [ 0.000000e+00, %3893 ]
  %3980 = fsub fast float %3977, %3574
  %3981 = fsub fast float %3978, %3575
  %3982 = fsub fast float %3979, %3576
  %3983 = fmul fast float %3980, %3790
  %3984 = fmul fast float %3981, %3790
  %3985 = fmul fast float %3982, %3790
  %3986 = fadd fast float %3983, %3574
  %3987 = fadd fast float %3984, %3575
  %3988 = fadd fast float %3985, %3576
  br label %3693

; <label>:3989                                    ; preds = %3693
  br label %3990

; <label>:3990                                    ; preds = %3989, %3454
  %3991 = phi float [ 0.000000e+00, %3454 ], [ %3694, %3989 ]
  %3992 = phi float [ %3485, %3454 ], [ %3695, %3989 ]
  %3993 = phi float [ %3466, %3454 ], [ %3696, %3989 ]
  %3994 = phi float [ 0.000000e+00, %3454 ], [ %3697, %3989 ]
  %3995 = phi float [ 0.000000e+00, %3454 ], [ %3698, %3989 ]
  %3996 = phi float [ %3460, %3454 ], [ %3699, %3989 ]
  %3997 = phi float [ %3461, %3454 ], [ %3700, %3989 ]
  %3998 = phi float [ %3462, %3454 ], [ %3701, %3989 ]
  %3999 = phi float [ %3511, %3454 ], [ %3702, %3989 ]
  %4000 = phi float [ %3512, %3454 ], [ %3703, %3989 ]
  %4001 = phi float [ %3513, %3454 ], [ %3704, %3989 ]
  %4002 = phi float [ %3465, %3454 ], [ %3705, %3989 ]
  %4003 = phi float [ %3464, %3454 ], [ %3706, %3989 ]
  %4004 = phi float [ 0.000000e+00, %3454 ], [ %3707, %3989 ]
  %4005 = phi float [ %3463, %3454 ], [ %3708, %3989 ]
  %4006 = phi float [ %3457, %3454 ], [ %3709, %3989 ]
  %4007 = phi float [ %3458, %3454 ], [ %3710, %3989 ]
  %4008 = phi float [ %3459, %3454 ], [ %3711, %3989 ]
  %4009 = call float @dx.op.dot3.f32(i32 55, float %3999, float %4000, float %4001, float %3999, float %4000, float %4001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4010 = call float @dx.op.unary.f32(i32 25, float %4009)  ; Rsqrt(value)
  %4011 = fmul fast float %4010, %3999
  %4012 = fmul fast float %4010, %4000
  %4013 = fmul fast float %4010, %4001
  %4014 = fadd fast float %4004, %901
  %4015 = call float @dx.op.unary.f32(i32 7, float %4014)  ; Saturate(value)
  %4016 = call float @dx.op.dot3.f32(i32 55, float %4011, float %4012, float %4013, float %4011, float %4012, float %4013)  ; Dot3(ax,ay,az,bx,by,bz)
  %4017 = call float @dx.op.unary.f32(i32 25, float %4016)  ; Rsqrt(value)
  %4018 = fmul fast float %4017, %4011
  %4019 = fmul fast float %4017, %4012
  %4020 = fmul fast float %4017, %4013
  %4021 = fadd fast float %4005, 0xBFB99999A0000000
  %4022 = call float @dx.op.unary.f32(i32 7, float %4021)  ; Saturate(value)
  %4023 = fmul fast float %4022, 0x3FF1C71C80000000
  %4024 = call float @dx.op.binary.f32(i32 36, float %4005, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4025 = fsub fast float 1.000000e+00, %4023
  %4026 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4027 = fmul fast float %4026, %4006
  %4028 = fmul fast float %4026, %4007
  %4029 = fmul fast float %4026, %4008
  %4030 = call float @dx.op.unary.f32(i32 7, float %4027)  ; Saturate(value)
  %4031 = call float @dx.op.unary.f32(i32 7, float %4028)  ; Saturate(value)
  %4032 = call float @dx.op.unary.f32(i32 7, float %4029)  ; Saturate(value)
  %4033 = fmul fast float %4023, %4006
  %4034 = fmul fast float %4023, %4007
  %4035 = fmul fast float %4023, %4008
  %4036 = fadd fast float %4033, %4024
  %4037 = fadd fast float %4034, %4024
  %4038 = fadd fast float %4035, %4024
  %4039 = call float @dx.op.unary.f32(i32 7, float %4036)  ; Saturate(value)
  %4040 = call float @dx.op.unary.f32(i32 7, float %4037)  ; Saturate(value)
  %4041 = call float @dx.op.unary.f32(i32 7, float %4038)  ; Saturate(value)
  %4042 = call float @dx.op.unary.f32(i32 7, float %4003)  ; Saturate(value)
  %4043 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4044 = extractvalue %dx.types.CBufRet.i32 %4043, 3
  %4045 = and i32 %4044, 8
  %4046 = icmp ne i32 %4045, 0
  %4047 = call float @dx.op.binary.f32(i32 35, float %4030, float %4006)  ; FMax(a,b)
  %4048 = call float @dx.op.binary.f32(i32 35, float %4031, float %4006)  ; FMax(a,b)
  %4049 = call float @dx.op.binary.f32(i32 35, float %4032, float %4006)  ; FMax(a,b)
  %4050 = call float @dx.op.dot3.f32(i32 55, float %4030, float %4031, float %4032, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4051 = select i1 %182, float %4006, float %4030
  %4052 = select i1 %182, float %4050, float %4031
  %4053 = select i1 %182, float 1.000000e+00, float %4032
  %4054 = select i1 %4046, float %4047, float %4051
  %4055 = select i1 %4046, float %4048, float %4052
  %4056 = select i1 %4046, float %4049, float %4053
  %4057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4058 = extractvalue %dx.types.CBufRet.f32 %4057, 0
  %4059 = extractvalue %dx.types.CBufRet.f32 %4057, 1
  %4060 = extractvalue %dx.types.CBufRet.f32 %4057, 2
  %4061 = fadd fast float %4058, %140
  %4062 = fadd fast float %4059, %141
  %4063 = fadd fast float %4060, %142
  %4064 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4065 = extractvalue %dx.types.CBufRet.f32 %4064, 0
  %4066 = extractvalue %dx.types.CBufRet.f32 %4064, 1
  %4067 = fsub fast float %4061, %4065
  %4068 = fsub fast float %4062, %4066
  %4069 = fmul fast float %4067, %4067
  %4070 = fmul fast float %4068, %4068
  %4071 = fadd fast float %4069, %4070
  %4072 = call float @dx.op.unary.f32(i32 24, float %4071)  ; Sqrt(value)
  %4073 = extractvalue %dx.types.CBufRet.f32 %4064, 2
  %4074 = fcmp fast olt float %4072, %4073
  br i1 %4074, label %4075, label %4142

; <label>:4075                                    ; preds = %3990
  %4076 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4077 = extractvalue %dx.types.CBufRet.f32 %4076, 0
  %4078 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4079 = extractvalue %dx.types.CBufRet.f32 %4078, 0
  %4080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4081 = extractvalue %dx.types.CBufRet.f32 %4080, 0
  %4082 = extractvalue %dx.types.CBufRet.f32 %4076, 1
  %4083 = extractvalue %dx.types.CBufRet.f32 %4078, 1
  %4084 = extractvalue %dx.types.CBufRet.f32 %4080, 1
  %4085 = extractvalue %dx.types.CBufRet.f32 %4076, 3
  %4086 = extractvalue %dx.types.CBufRet.f32 %4078, 3
  %4087 = extractvalue %dx.types.CBufRet.f32 %4080, 3
  %4088 = fadd fast float %4085, %4061
  %4089 = fadd fast float %4086, %4062
  %4090 = fadd fast float %4087, %4063
  %4091 = fmul fast float %4088, %4077
  %4092 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %4079, float %4091)  ; FMad(a,b,c)
  %4093 = call float @dx.op.tertiary.f32(i32 46, float %4090, float %4081, float %4092)  ; FMad(a,b,c)
  %4094 = fmul fast float %4088, %4082
  %4095 = call float @dx.op.tertiary.f32(i32 46, float %4089, float %4083, float %4094)  ; FMad(a,b,c)
  %4096 = call float @dx.op.tertiary.f32(i32 46, float %4090, float %4084, float %4095)  ; FMad(a,b,c)
  %4097 = fsub fast float %4093, %4085
  %4098 = fsub fast float %4096, %4086
  %4099 = fsub fast float %4097, %4065
  %4100 = fadd fast float %4099, %4073
  %4101 = fsub fast float %4098, %4066
  %4102 = fadd fast float %4101, %4073
  %4103 = extractvalue %dx.types.CBufRet.f32 %4064, 3
  %4104 = fmul fast float %4100, %4103
  %4105 = fmul fast float %4102, %4103
  %4106 = call float @dx.op.unary.f32(i32 7, float %4104)  ; Saturate(value)
  %4107 = call float @dx.op.unary.f32(i32 7, float %4105)  ; Saturate(value)
  %4108 = fsub fast float 1.000000e+00, %4106
  %4109 = fsub fast float 1.000000e+00, %4107
  %4110 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4108, float %4109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4111 = extractvalue %dx.types.ResRet.f32 %4110, 0
  %4112 = fcmp fast ugt float %4111, 0.000000e+00
  br i1 %4112, label %4113, label %4416

; <label>:4113                                    ; preds = %4075
  %4114 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4115 = extractvalue %dx.types.CBufRet.f32 %4114, 2
  %4116 = fmul fast float %4115, %4111
  %4117 = extractvalue %dx.types.CBufRet.f32 %4114, 3
  %4118 = fadd fast float %4117, %4116
  %4119 = extractvalue %dx.types.CBufRet.f32 %4080, 2
  %4120 = fadd fast float %4118, %4087
  %4121 = fmul fast float %4093, %4081
  %4122 = call float @dx.op.tertiary.f32(i32 46, float %4096, float %4084, float %4121)  ; FMad(a,b,c)
  %4123 = call float @dx.op.tertiary.f32(i32 46, float %4120, float %4119, float %4122)  ; FMad(a,b,c)
  %4124 = fsub fast float %4123, %4087
  %4125 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4126 = extractvalue %dx.types.CBufRet.f32 %4125, 2
  %4127 = fsub fast float %4124, %4126
  %4128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4108, float %4109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4129 = extractvalue %dx.types.ResRet.f32 %4128, 0
  %4130 = extractvalue %dx.types.ResRet.f32 %4128, 1
  %4131 = extractvalue %dx.types.ResRet.f32 %4128, 2
  %4132 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4108, float %4109, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4133 = extractvalue %dx.types.ResRet.f32 %4132, 0
  %4134 = extractvalue %dx.types.ResRet.f32 %4132, 1
  %4135 = extractvalue %dx.types.ResRet.f32 %4132, 2
  %4136 = fadd fast float %4133, %4129
  %4137 = fmul fast float %4136, 0x3F847AE140000000
  %4138 = fadd fast float %4134, %4130
  %4139 = fmul fast float %4138, 0x3F847AE140000000
  %4140 = fadd fast float %4135, %4131
  %4141 = fmul fast float %4140, 0x3F847AE140000000
  br label %4416

; <label>:4142                                    ; preds = %3990
  %4143 = and i32 %158, 1
  %4144 = icmp eq i32 %4143, 0
  br i1 %4144, label %4416, label %4145

; <label>:4145                                    ; preds = %4142
  %4146 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4147 = extractvalue %dx.types.CBufRet.f32 %4146, 0
  %4148 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4149 = extractvalue %dx.types.CBufRet.f32 %4148, 0
  %4150 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4151 = extractvalue %dx.types.CBufRet.f32 %4150, 0
  %4152 = extractvalue %dx.types.CBufRet.f32 %4146, 1
  %4153 = extractvalue %dx.types.CBufRet.f32 %4148, 1
  %4154 = extractvalue %dx.types.CBufRet.f32 %4150, 1
  %4155 = extractvalue %dx.types.CBufRet.f32 %4146, 3
  %4156 = extractvalue %dx.types.CBufRet.f32 %4148, 3
  %4157 = extractvalue %dx.types.CBufRet.f32 %4150, 3
  %4158 = fadd fast float %4155, %4061
  %4159 = fadd fast float %4156, %4062
  %4160 = fadd fast float %4157, %4063
  %4161 = fmul fast float %4158, %4147
  %4162 = call float @dx.op.tertiary.f32(i32 46, float %4159, float %4149, float %4161)  ; FMad(a,b,c)
  %4163 = call float @dx.op.tertiary.f32(i32 46, float %4160, float %4151, float %4162)  ; FMad(a,b,c)
  %4164 = fmul fast float %4158, %4152
  %4165 = call float @dx.op.tertiary.f32(i32 46, float %4159, float %4153, float %4164)  ; FMad(a,b,c)
  %4166 = call float @dx.op.tertiary.f32(i32 46, float %4160, float %4154, float %4165)  ; FMad(a,b,c)
  %4167 = fsub fast float %4163, %4155
  %4168 = fsub fast float %4166, %4156
  %4169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4170 = extractvalue %dx.types.CBufRet.f32 %4169, 0
  %4171 = extractvalue %dx.types.CBufRet.f32 %4169, 1
  %4172 = extractvalue %dx.types.CBufRet.f32 %4169, 2
  %4173 = extractvalue %dx.types.CBufRet.f32 %4169, 3
  %4174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4175 = extractvalue %dx.types.CBufRet.f32 %4174, 3
  %4176 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4177 = extractvalue %dx.types.CBufRet.i32 %4176, 0
  %4178 = extractvalue %dx.types.CBufRet.i32 %4176, 1
  %4179 = udiv i32 %4178, %4177
  %4180 = fsub fast float %4167, %4170
  %4181 = fsub fast float %4168, %4171
  %4182 = call float @dx.op.binary.f32(i32 35, float %4180, float 0.000000e+00)  ; FMax(a,b)
  %4183 = call float @dx.op.binary.f32(i32 35, float %4181, float 0.000000e+00)  ; FMax(a,b)
  %4184 = call float @dx.op.binary.f32(i32 36, float %4182, float %4172)  ; FMin(a,b)
  %4185 = call float @dx.op.binary.f32(i32 36, float %4183, float %4173)  ; FMin(a,b)
  %4186 = add i32 %4177, -1
  %4187 = add i32 %4179, -1
  %4188 = fmul fast float %4184, %4175
  %4189 = fmul fast float %4185, %4175
  %4190 = fptoui float %4188 to i32
  %4191 = fptoui float %4189 to i32
  %4192 = call i32 @dx.op.binary.i32(i32 40, i32 %4190, i32 %4186)  ; UMin(a,b)
  %4193 = call i32 @dx.op.binary.i32(i32 40, i32 %4191, i32 %4187)  ; UMin(a,b)
  %4194 = mul i32 %4193, %4177
  %4195 = add i32 %4194, %4192
  %4196 = shl i32 %4195, 2
  %4197 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4196, i32 undef)  ; BufferLoad(srv,index,wot)
  %4198 = extractvalue %dx.types.ResRet.i32 %4197, 0
  %4199 = icmp eq i32 %4198, -1
  br i1 %4199, label %4416, label %4200

; <label>:4200                                    ; preds = %4145
  %4201 = mul i32 %4198, 148
  %4202 = add i32 %4201, 4
  %4203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = add i32 %4201, 8
  %4206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = add i32 %4201, 36
  %4209 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4208, i32 undef)  ; BufferLoad(srv,index,wot)
  %4210 = extractvalue %dx.types.ResRet.f32 %4209, 0
  %4211 = add i32 %4201, 60
  %4212 = add i32 %4201, 92
  %4213 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4212, i32 undef)  ; BufferLoad(srv,index,wot)
  %4214 = extractvalue %dx.types.ResRet.i32 %4213, 0
  %4215 = add i32 %4201, 116
  %4216 = fsub fast float %4167, %4204
  %4217 = fsub fast float %4168, %4207
  %4218 = fmul fast float %4175, %4216
  %4219 = fmul fast float %4175, %4217
  %4220 = call float @dx.op.unary.f32(i32 7, float %4218)  ; Saturate(value)
  %4221 = call float @dx.op.unary.f32(i32 7, float %4219)  ; Saturate(value)
  %4222 = fsub fast float 1.000000e+00, %4221
  %4223 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4224 = extractvalue %dx.types.CBufRet.f32 %4223, 2
  %4225 = call float @dx.op.unary.f32(i32 83, float %4220)  ; DerivCoarseX(value)
  %4226 = call float @dx.op.unary.f32(i32 83, float %4222)  ; DerivCoarseX(value)
  %4227 = call float @dx.op.unary.f32(i32 84, float %4220)  ; DerivCoarseY(value)
  %4228 = call float @dx.op.unary.f32(i32 84, float %4222)  ; DerivCoarseY(value)
  %4229 = fmul fast float %4225, %4224
  %4230 = fmul fast float %4226, %4224
  %4231 = fmul fast float %4227, %4224
  %4232 = fmul fast float %4228, %4224
  %4233 = call float @dx.op.dot2.f32(i32 54, float %4231, float %4232, float %4231, float %4232)  ; Dot2(ax,ay,bx,by)
  %4234 = call float @dx.op.dot2.f32(i32 54, float %4229, float %4230, float %4229, float %4230)  ; Dot2(ax,ay,bx,by)
  %4235 = call float @dx.op.binary.f32(i32 35, float %4234, float %4233)  ; FMax(a,b)
  %4236 = call float @dx.op.unary.f32(i32 23, float %4235)  ; Log(value)
  %4237 = fmul fast float %4236, 5.000000e-01
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 1
  %4240 = fadd fast float %4239, %4237
  %4241 = call float @dx.op.binary.f32(i32 35, float %4240, float 0.000000e+00)  ; FMax(a,b)
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 3
  %4244 = fadd fast float %4243, %4241
  %4245 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4246 = extractvalue %dx.types.CBufRet.f32 %4245, 3
  %4247 = fadd fast float %4244, %4246
  %4248 = add i32 %4214, 0
  %4249 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4248, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4250 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4249, i32 0)  ; GetDimensions(handle,mipLevel)
  %4251 = extractvalue %dx.types.Dimensions %4250, 0
  %4252 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4251)  ; FirstbitLo(value)
  %4253 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4254 = extractvalue %dx.types.CBufRet.i32 %4253, 1
  %4255 = sub nsw i32 %4254, %4252
  %4256 = sitofp i32 %4255 to float
  %4257 = fsub fast float %4247, %4256
  %4258 = call float @dx.op.binary.f32(i32 35, float %4257, float 0.000000e+00)  ; FMax(a,b)
  %4259 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4249, %dx.types.Handle %37, float %4220, float %4222, float %4210, float undef, i32 0, i32 0, i32 undef, float %4258)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4260 = extractvalue %dx.types.ResRet.f32 %4259, 0
  %4261 = fcmp ule float %4260, 0x3FE0101020000000
  %4262 = extractvalue %dx.types.CBufRet.i32 %4253, 0
  %4263 = and i32 %4262, 128
  %4264 = icmp ne i32 %4263, 0
  %4265 = and i1 %4261, %4264
  br i1 %4265, label %4416, label %4266

; <label>:4266                                    ; preds = %4200
  %4267 = add i32 %4201, 20
  %4268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4267, i32 undef)  ; BufferLoad(srv,index,wot)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = add i32 %4201, 24
  %4271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4270, i32 undef)  ; BufferLoad(srv,index,wot)
  %4272 = extractvalue %dx.types.ResRet.f32 %4271, 0
  %4273 = add i32 %4201, 40
  %4274 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.f32 %4274, 0
  %4276 = add i32 %4201, 96
  %4277 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4276, i32 undef)  ; BufferLoad(srv,index,wot)
  %4278 = extractvalue %dx.types.ResRet.i32 %4277, 0
  %4279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4280 = extractvalue %dx.types.CBufRet.f32 %4279, 2
  %4281 = fmul fast float %4280, %4220
  %4282 = fmul fast float %4280, %4222
  %4283 = extractvalue %dx.types.CBufRet.f32 %4279, 3
  %4284 = fadd fast float %4281, %4283
  %4285 = fadd fast float %4282, %4283
  %4286 = add i32 %4278, 0
  %4287 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4286, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4288 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4287, i32 0)  ; GetDimensions(handle,mipLevel)
  %4289 = extractvalue %dx.types.Dimensions %4288, 0
  %4290 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4289)  ; FirstbitLo(value)
  %4291 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4292 = extractvalue %dx.types.CBufRet.i32 %4291, 1
  %4293 = sub nsw i32 %4292, %4290
  %4294 = sitofp i32 %4293 to float
  %4295 = fsub fast float %4244, %4294
  %4296 = call float @dx.op.binary.f32(i32 35, float %4295, float 0.000000e+00)  ; FMax(a,b)
  %4297 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4287, %dx.types.Handle %37, float %4284, float %4285, float %4275, float undef, i32 0, i32 0, i32 undef, float %4296)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4298 = extractvalue %dx.types.ResRet.f32 %4297, 0
  %4299 = fmul fast float %4298, %4269
  %4300 = fadd fast float %4299, %4272
  %4301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4302 = extractvalue %dx.types.CBufRet.f32 %4301, 0
  %4303 = extractvalue %dx.types.CBufRet.f32 %4301, 1
  %4304 = extractvalue %dx.types.CBufRet.f32 %4301, 2
  %4305 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4306 = extractvalue %dx.types.CBufRet.f32 %4305, 3
  %4307 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4308 = extractvalue %dx.types.CBufRet.f32 %4307, 3
  %4309 = extractvalue %dx.types.CBufRet.f32 %4301, 3
  %4310 = fadd fast float %4306, %4167
  %4311 = fadd fast float %4308, %4168
  %4312 = fadd fast float %4300, %4309
  %4313 = fmul fast float %4310, %4302
  %4314 = call float @dx.op.tertiary.f32(i32 46, float %4311, float %4303, float %4313)  ; FMad(a,b,c)
  %4315 = call float @dx.op.tertiary.f32(i32 46, float %4312, float %4304, float %4314)  ; FMad(a,b,c)
  %4316 = fsub fast float %4315, %4309
  %4317 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.f32 %4317, 2
  %4319 = fsub fast float %4316, %4318
  %4320 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4321 = extractvalue %dx.types.CBufRet.i32 %4320, 0
  %4322 = call i32 @dx.op.binary.i32(i32 40, i32 %4198, i32 %4321)  ; UMin(a,b)
  %4323 = mul i32 %4322, 36
  %4324 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4323, i32 undef)  ; BufferLoad(srv,index,wot)
  %4325 = extractvalue %dx.types.ResRet.i32 %4324, 0
  %4326 = add i32 %4323, 4
  %4327 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4328 = extractvalue %dx.types.CBufRet.f32 %4327, 0
  %4329 = fmul fast float %4328, %4220
  %4330 = fmul fast float %4328, %4222
  %4331 = extractvalue %dx.types.CBufRet.f32 %4327, 1
  %4332 = fadd fast float %4329, %4331
  %4333 = fadd fast float %4330, %4331
  %4334 = icmp eq i32 %4325, 0
  br i1 %4334, label %4403, label %4335

; <label>:4335                                    ; preds = %4266
  br label %4336

; <label>:4336                                    ; preds = %4393, %4335
  %4337 = phi float [ %4394, %4393 ], [ 0.000000e+00, %4335 ]
  %4338 = phi float [ %4395, %4393 ], [ 0.000000e+00, %4335 ]
  %4339 = phi float [ %4396, %4393 ], [ 0.000000e+00, %4335 ]
  %4340 = phi float [ %4397, %4393 ], [ 0.000000e+00, %4335 ]
  %4341 = phi float [ %4398, %4393 ], [ 0.000000e+00, %4335 ]
  %4342 = phi float [ %4399, %4393 ], [ 0.000000e+00, %4335 ]
  %4343 = phi i32 [ %4400, %4393 ], [ 0, %4335 ]
  %4344 = shl i32 %4343, 2
  %4345 = add i32 %4211, %4344
  %4346 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4347 = extractvalue %dx.types.ResRet.f32 %4346, 0
  %4348 = add i32 %4215, %4344
  %4349 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4348, i32 undef)  ; BufferLoad(srv,index,wot)
  %4350 = extractvalue %dx.types.ResRet.i32 %4349, 0
  %4351 = add i32 %4350, 0
  %4352 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4351, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4353 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4352, i32 0)  ; GetDimensions(handle,mipLevel)
  %4354 = extractvalue %dx.types.Dimensions %4353, 0
  %4355 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4354)  ; FirstbitLo(value)
  %4356 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4357 = extractvalue %dx.types.CBufRet.i32 %4356, 1
  %4358 = sub nsw i32 %4357, %4355
  %4359 = sitofp i32 %4358 to float
  %4360 = fsub fast float %4244, %4359
  %4361 = call float @dx.op.binary.f32(i32 35, float %4360, float 0.000000e+00)  ; FMax(a,b)
  %4362 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4352, %dx.types.Handle %37, float %4332, float %4333, float %4347, float undef, i32 0, i32 0, i32 undef, float %4361)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4363 = extractvalue %dx.types.ResRet.f32 %4362, 0
  %4364 = fcmp fast ogt float %4363, 0.000000e+00
  br i1 %4364, label %4365, label %4393

; <label>:4365                                    ; preds = %4336
  %4366 = add i32 %4326, %4344
  %4367 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4366, i32 undef)  ; BufferLoad(srv,index,wot)
  %4368 = extractvalue %dx.types.ResRet.i32 %4367, 0
  %4369 = and i32 %4368, 32767
  %4370 = mul nuw nsw i32 %4369, 928
  %4371 = add nuw nsw i32 %4370, 48
  %4372 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4371, i32 undef)  ; BufferLoad(srv,index,wot)
  %4373 = extractvalue %dx.types.ResRet.f32 %4372, 0
  %4374 = extractvalue %dx.types.ResRet.f32 %4372, 1
  %4375 = extractvalue %dx.types.ResRet.f32 %4372, 2
  %4376 = add nuw nsw i32 %4370, 60
  %4377 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4376, i32 undef)  ; BufferLoad(srv,index,wot)
  %4378 = extractvalue %dx.types.ResRet.f32 %4377, 0
  %4379 = extractvalue %dx.types.ResRet.f32 %4377, 1
  %4380 = extractvalue %dx.types.ResRet.f32 %4377, 2
  %4381 = fmul fast float %4373, %4363
  %4382 = fmul fast float %4374, %4363
  %4383 = fmul fast float %4375, %4363
  %4384 = fadd fast float %4381, %4337
  %4385 = fadd fast float %4382, %4338
  %4386 = fadd fast float %4383, %4339
  %4387 = fmul fast float %4378, %4363
  %4388 = fmul fast float %4379, %4363
  %4389 = fmul fast float %4380, %4363
  %4390 = fadd fast float %4387, %4340
  %4391 = fadd fast float %4388, %4341
  %4392 = fadd fast float %4389, %4342
  br label %4393

; <label>:4393                                    ; preds = %4365, %4336
  %4394 = phi float [ %4384, %4365 ], [ %4337, %4336 ]
  %4395 = phi float [ %4385, %4365 ], [ %4338, %4336 ]
  %4396 = phi float [ %4386, %4365 ], [ %4339, %4336 ]
  %4397 = phi float [ %4390, %4365 ], [ %4340, %4336 ]
  %4398 = phi float [ %4391, %4365 ], [ %4341, %4336 ]
  %4399 = phi float [ %4392, %4365 ], [ %4342, %4336 ]
  %4400 = add nuw i32 %4343, 1
  %4401 = icmp eq i32 %4400, %4325
  br i1 %4401, label %4402, label %4336

; <label>:4402                                    ; preds = %4393
  br label %4403

; <label>:4403                                    ; preds = %4402, %4266
  %4404 = phi float [ 0.000000e+00, %4266 ], [ %4394, %4402 ]
  %4405 = phi float [ 0.000000e+00, %4266 ], [ %4395, %4402 ]
  %4406 = phi float [ 0.000000e+00, %4266 ], [ %4396, %4402 ]
  %4407 = phi float [ 0.000000e+00, %4266 ], [ %4397, %4402 ]
  %4408 = phi float [ 0.000000e+00, %4266 ], [ %4398, %4402 ]
  %4409 = phi float [ 0.000000e+00, %4266 ], [ %4399, %4402 ]
  %4410 = fadd fast float %4407, %4404
  %4411 = fmul fast float %4410, 0x3F847AE140000000
  %4412 = fadd fast float %4408, %4405
  %4413 = fmul fast float %4412, 0x3F847AE140000000
  %4414 = fadd fast float %4409, %4406
  %4415 = fmul fast float %4414, 0x3F847AE140000000
  br label %4416

; <label>:4416                                    ; preds = %4403, %4200, %4145, %4142, %4113, %4075
  %4417 = phi float [ %4127, %4113 ], [ -1.310720e+05, %4075 ], [ %4319, %4403 ], [ -1.310720e+05, %4145 ], [ -1.310720e+05, %4200 ], [ -1.310720e+05, %4142 ]
  %4418 = phi float [ %4137, %4113 ], [ 0.000000e+00, %4075 ], [ %4411, %4403 ], [ 0.000000e+00, %4145 ], [ 0.000000e+00, %4200 ], [ 0.000000e+00, %4142 ]
  %4419 = phi float [ %4139, %4113 ], [ 0.000000e+00, %4075 ], [ %4413, %4403 ], [ 0.000000e+00, %4145 ], [ 0.000000e+00, %4200 ], [ 0.000000e+00, %4142 ]
  %4420 = phi float [ %4141, %4113 ], [ 0.000000e+00, %4075 ], [ %4415, %4403 ], [ 0.000000e+00, %4145 ], [ 0.000000e+00, %4200 ], [ 0.000000e+00, %4142 ]
  %4421 = phi i1 [ true, %4113 ], [ false, %4075 ], [ true, %4403 ], [ false, %4145 ], [ false, %4200 ], [ false, %4142 ]
  %4422 = and i32 %158, 3
  %4423 = icmp eq i32 %4422, 1
  %4424 = select i1 %4423, float 1.000000e+00, float 0.000000e+00
  %4425 = fsub fast float %4417, %142
  %4426 = call float @dx.op.unary.f32(i32 7, float %4425)  ; Saturate(value)
  %4427 = select i1 %4421, float %4426, float 1.000000e+00
  %4428 = fmul fast float %4427, %4424
  %4429 = icmp eq i32 %4422, 3
  %4430 = select i1 %4429, float 1.000000e+00, float %4428
  %4431 = call float @dx.op.binary.f32(i32 35, float %3991, float %4430)  ; FMax(a,b)
  %4432 = call float @dx.op.unary.f32(i32 7, float %4431)  ; Saturate(value)
  %4433 = fcmp fast une float %4432, 0.000000e+00
  %4434 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %140, float %141, float %142)  ; Dot3(ax,ay,az,bx,by,bz)
  %4435 = call float @dx.op.unary.f32(i32 25, float %4434)  ; Rsqrt(value)
  br i1 %4433, label %4443, label %4436

; <label>:4436                                    ; preds = %4416
  %4437 = fmul fast float %4435, %140
  %4438 = fmul fast float %4435, %141
  %4439 = fmul fast float %4435, %142
  %4440 = fsub fast float -0.000000e+00, %4437
  %4441 = fsub fast float -0.000000e+00, %4438
  %4442 = fsub fast float -0.000000e+00, %4439
  br label %4611

; <label>:4443                                    ; preds = %4416
  %4444 = fmul fast float %140, %4435
  %4445 = fsub fast float -0.000000e+00, %4444
  %4446 = fmul fast float %141, %4435
  %4447 = fsub fast float -0.000000e+00, %4446
  %4448 = fmul fast float %142, %4435
  %4449 = fsub fast float -0.000000e+00, %4448
  %4450 = call float @dx.op.dot3.f32(i32 55, float %4445, float %4447, float %4449, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4451 = fmul fast float %4432, 2.500000e+00
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = fmul fast float %4432, 0x4013FFFFE0000000
  %4454 = fadd fast float %4453, 0xBFFFFFFFE0000000
  %4455 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4456 = fmul fast float %4432, 0x4004000020000000
  %4457 = fadd fast float %4456, 0xBFF8000040000000
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = call float @dx.op.unary.f32(i32 7, float %4452)  ; Saturate(value)
  %4460 = fmul fast float %4021, 1.000000e+01
  %4461 = call float @dx.op.unary.f32(i32 7, float %4460)  ; Saturate(value)
  %4462 = fmul fast float %4461, 2.000000e+00
  %4463 = fsub fast float 3.000000e+00, %4462
  %4464 = fmul fast float %4461, %4461
  %4465 = fmul fast float %4464, %4463
  %4466 = fsub fast float 1.000000e+00, %4465
  %4467 = fsub fast float 0x3FE3333340000000, %4042
  %4468 = fmul fast float %4467, 0x400AAAAAA0000000
  %4469 = call float @dx.op.unary.f32(i32 7, float %4468)  ; Saturate(value)
  %4470 = fmul fast float %4466, %4469
  %4471 = fmul fast float %4054, 0x3FEA2B8620000000
  %4472 = fmul fast float %4055, 0x3FEA2B8620000000
  %4473 = fmul fast float %4056, 0x3FEA2B8620000000
  %4474 = fadd fast float %4471, 0x3FC81DFBA0000000
  %4475 = fmul fast float %4474, %4054
  %4476 = fadd fast float %4475, 0x3F910E6020000000
  %4477 = fadd fast float %4472, 0x3FC81DFBA0000000
  %4478 = fmul fast float %4477, %4055
  %4479 = fadd fast float %4478, 0x3F910E6020000000
  %4480 = fadd fast float %4473, 0x3FC81DFBA0000000
  %4481 = fmul fast float %4480, %4056
  %4482 = fadd fast float %4481, 0x3F910E6020000000
  %4483 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4484 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4485 = call float @dx.op.unary.f32(i32 7, float %4482)  ; Saturate(value)
  %4486 = fsub fast float %4483, %4054
  %4487 = fsub fast float %4484, %4055
  %4488 = fsub fast float %4485, %4056
  %4489 = fmul fast float %4486, %4459
  %4490 = fmul fast float %4489, %4470
  %4491 = fmul fast float %4487, %4459
  %4492 = fmul fast float %4491, %4470
  %4493 = fmul fast float %4488, %4459
  %4494 = fmul fast float %4493, %4470
  %4495 = fadd fast float %4490, %4054
  %4496 = fadd fast float %4492, %4055
  %4497 = fadd fast float %4494, %4056
  %4498 = fmul fast float %4002, %4002
  %4499 = fmul fast float %4498, %4498
  %4500 = fadd fast float %4455, 1.000000e+00
  %4501 = fsub fast float %4500, %4470
  %4502 = call float @dx.op.unary.f32(i32 7, float %4501)  ; Saturate(value)
  %4503 = call float @dx.op.dot3.f32(i32 55, float %84, float %85, float %86, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4504 = call float @dx.op.unary.f32(i32 7, float %4503)  ; Saturate(value)
  %4505 = fsub fast float 1.000000e+00, %4499
  %4506 = call float @dx.op.binary.f32(i32 36, float %4502, float %4505)  ; FMin(a,b)
  %4507 = call float @dx.op.unary.f32(i32 7, float %4458)  ; Saturate(value)
  %4508 = call float @dx.op.binary.f32(i32 35, float %4506, float %4507)  ; FMax(a,b)
  %4509 = fadd fast float %4504, 0xBFE4CCCCC0000000
  %4510 = fmul fast float %4509, 0x4006DB6DA0000000
  %4511 = call float @dx.op.unary.f32(i32 7, float %4510)  ; Saturate(value)
  %4512 = fmul fast float %4511, 2.000000e+00
  %4513 = fsub fast float 3.000000e+00, %4512
  %4514 = bitcast float %4039 to i32
  %4515 = ashr i32 %4514, 1
  %4516 = add nsw i32 %4515, 532487669
  %4517 = bitcast i32 %4516 to float
  %4518 = fsub fast float 1.000000e+00, %4517
  %4519 = bitcast float %4518 to i32
  %4520 = sub nsw i32 2129859010, %4519
  %4521 = bitcast i32 %4520 to float
  %4522 = fmul fast float %4521, 2.000000e+00
  %4523 = bitcast float %4040 to i32
  %4524 = ashr i32 %4523, 1
  %4525 = add nsw i32 %4524, 532487669
  %4526 = bitcast i32 %4525 to float
  %4527 = fsub fast float 1.000000e+00, %4526
  %4528 = bitcast float %4527 to i32
  %4529 = sub nsw i32 2129859010, %4528
  %4530 = bitcast i32 %4529 to float
  %4531 = fmul fast float %4530, 2.000000e+00
  %4532 = bitcast float %4041 to i32
  %4533 = ashr i32 %4532, 1
  %4534 = add nsw i32 %4533, 532487669
  %4535 = bitcast i32 %4534 to float
  %4536 = fsub fast float 1.000000e+00, %4535
  %4537 = bitcast float %4536 to i32
  %4538 = sub nsw i32 2129859010, %4537
  %4539 = bitcast i32 %4538 to float
  %4540 = fmul fast float %4539, 2.000000e+00
  %4541 = fsub fast float 0x4002A9FBE0000000, %4522
  %4542 = fadd fast float %4522, 0x3FD54FDF00000000
  %4543 = bitcast float %4542 to i32
  %4544 = sub nsw i32 2129859010, %4543
  %4545 = bitcast i32 %4544 to float
  %4546 = fmul fast float %4545, %4541
  %4547 = fmul fast float %4546, %4546
  %4548 = fsub fast float 0x4002A9FBE0000000, %4531
  %4549 = fadd fast float %4531, 0x3FD54FDF00000000
  %4550 = bitcast float %4549 to i32
  %4551 = sub nsw i32 2129859010, %4550
  %4552 = bitcast i32 %4551 to float
  %4553 = fmul fast float %4552, %4548
  %4554 = fmul fast float %4553, %4553
  %4555 = fsub fast float 0x4002A9FBE0000000, %4540
  %4556 = fadd fast float %4540, 0x3FD54FDF00000000
  %4557 = bitcast float %4556 to i32
  %4558 = sub nsw i32 2129859010, %4557
  %4559 = bitcast i32 %4558 to float
  %4560 = fmul fast float %4559, %4555
  %4561 = fmul fast float %4560, %4560
  %4562 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4547)  ; FMax(a,b)
  %4563 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4554)  ; FMax(a,b)
  %4564 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4561)  ; FMax(a,b)
  %4565 = fsub fast float 1.000000e+00, %4450
  %4566 = fadd fast float %4565, %4466
  %4567 = call float @dx.op.unary.f32(i32 7, float %4566)  ; Saturate(value)
  %4568 = fsub fast float 1.000000e+00, %4430
  %4569 = fmul fast float %4508, %4568
  %4570 = fmul fast float %4511, %4511
  %4571 = fmul fast float %4570, %4569
  %4572 = fmul fast float %4571, %4513
  %4573 = fmul fast float %4568, 0xBFE99999A0000000
  %4574 = fmul fast float %4573, %4459
  %4575 = fmul fast float %4574, %4470
  %4576 = fadd fast float %4575, 1.000000e+00
  %4577 = fadd fast float %4042, -1.000000e+00
  %4578 = fmul fast float %4576, %4577
  %4579 = fadd fast float %4578, 1.000000e+00
  %4580 = fsub fast float %4562, %4039
  %4581 = fsub fast float %4563, %4040
  %4582 = fsub fast float %4564, %4041
  %4583 = fmul fast float %4572, %4580
  %4584 = fmul fast float %4572, %4581
  %4585 = fmul fast float %4572, %4582
  %4586 = fadd fast float %4583, %4039
  %4587 = fadd fast float %4584, %4040
  %4588 = fadd fast float %4585, %4041
  %4589 = fsub fast float %84, %4018
  %4590 = fsub fast float %85, %4019
  %4591 = fsub fast float %86, %4020
  %4592 = fmul fast float %4572, %4589
  %4593 = fmul fast float %4572, %4590
  %4594 = fmul fast float %4572, %4591
  %4595 = fadd fast float %4592, %4018
  %4596 = fadd fast float %4593, %4019
  %4597 = fadd fast float %4594, %4020
  %4598 = fmul fast float %4572, %4567
  %4599 = call float @dx.op.unary.f32(i32 7, float %4579)  ; Saturate(value)
  %4600 = fsub fast float 1.000000e+00, %4599
  %4601 = fmul fast float %4598, %4600
  %4602 = fadd fast float %4601, %4599
  %4603 = fsub fast float 1.000000e+00, %4002
  %4604 = fmul fast float %4572, %4603
  %4605 = fadd fast float %4604, %4002
  %4606 = call float @dx.op.dot3.f32(i32 55, float %4595, float %4596, float %4597, float %4595, float %4596, float %4597)  ; Dot3(ax,ay,az,bx,by,bz)
  %4607 = call float @dx.op.unary.f32(i32 25, float %4606)  ; Rsqrt(value)
  %4608 = fmul fast float %4595, %4607
  %4609 = fmul fast float %4596, %4607
  %4610 = fmul fast float %4597, %4607
  br label %4611

; <label>:4611                                    ; preds = %4443, %4436
  %4612 = phi float [ %4442, %4436 ], [ %4449, %4443 ]
  %4613 = phi float [ %4441, %4436 ], [ %4447, %4443 ]
  %4614 = phi float [ %4440, %4436 ], [ %4445, %4443 ]
  %4615 = phi float [ %4439, %4436 ], [ %4448, %4443 ]
  %4616 = phi float [ %4438, %4436 ], [ %4446, %4443 ]
  %4617 = phi float [ %4437, %4436 ], [ %4444, %4443 ]
  %4618 = phi float [ %4039, %4436 ], [ %4586, %4443 ]
  %4619 = phi float [ %4040, %4436 ], [ %4587, %4443 ]
  %4620 = phi float [ %4041, %4436 ], [ %4588, %4443 ]
  %4621 = phi float [ %4054, %4436 ], [ %4495, %4443 ]
  %4622 = phi float [ %4055, %4436 ], [ %4496, %4443 ]
  %4623 = phi float [ %4056, %4436 ], [ %4497, %4443 ]
  %4624 = phi float [ %4018, %4436 ], [ %4608, %4443 ]
  %4625 = phi float [ %4019, %4436 ], [ %4609, %4443 ]
  %4626 = phi float [ %4020, %4436 ], [ %4610, %4443 ]
  %4627 = phi float [ %4042, %4436 ], [ %4602, %4443 ]
  %4628 = phi float [ %4002, %4436 ], [ %4605, %4443 ]
  %4629 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4630 = extractvalue %dx.types.CBufRet.f32 %4629, 2
  %4631 = extractvalue %dx.types.CBufRet.f32 %4629, 3
  %4632 = fmul fast float %4630, %77
  %4633 = fmul fast float %4631, %78
  %4634 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4635 = extractvalue %dx.types.CBufRet.f32 %4634, 0
  %4636 = extractvalue %dx.types.CBufRet.f32 %4634, 1
  %4637 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4632, float %4633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4638 = extractvalue %dx.types.ResRet.f32 %4637, 0
  %4639 = fmul fast float %4638, %4636
  %4640 = call float @dx.op.unary.f32(i32 7, float %4639)  ; Saturate(value)
  %4641 = fadd fast float %4640, -1.000000e+00
  %4642 = fmul fast float %4641, %4635
  %4643 = fadd fast float %4642, 1.000000e+00
  %4644 = select i1 %182, float 0.000000e+00, float %4620
  %4645 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float %4614, float %4613, float %4612)  ; Dot3(ax,ay,az,bx,by,bz)
  %4646 = call float @dx.op.unary.f32(i32 7, float %4645)  ; Saturate(value)
  %4647 = call float @dx.op.dot3.f32(i32 55, float %4617, float %4616, float %4615, float %4624, float %4625, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %4648 = fmul fast float %4647, 2.000000e+00
  %4649 = fmul fast float %4648, %4624
  %4650 = fmul fast float %4648, %4625
  %4651 = fmul fast float %4648, %4626
  %4652 = fsub fast float %4617, %4649
  %4653 = fsub fast float %4616, %4650
  %4654 = fsub fast float %4615, %4651
  %4655 = call float @dx.op.binary.f32(i32 36, float %4628, float %4643)  ; FMin(a,b)
  %4656 = fsub fast float 1.000000e+00, %4655
  %4657 = bitcast float %4656 to i32
  %4658 = ashr i32 %4657, 1
  %4659 = add nsw i32 %4658, 532487669
  %4660 = bitcast i32 %4659 to float
  %4661 = fsub fast float 1.000000e+00, %4627
  %4662 = call float @dx.op.binary.f32(i32 35, float %4661, float 0x3F847AE140000000)  ; FMax(a,b)
  %4663 = fmul fast float %4662, %4662
  %4664 = fmul fast float %4663, %4663
  %4665 = call float @dx.op.unary.f32(i32 7, float %4646)  ; Saturate(value)
  %4666 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4660, float %4664, float %4665, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4667 = extractvalue %dx.types.ResRet.f32 %4666, 0
  %4668 = fsub fast float 1.000000e+00, %4628
  %4669 = bitcast float %4668 to i32
  %4670 = sub nsw i32 2129859010, %4669
  %4671 = bitcast i32 %4670 to float
  %4672 = fsub fast float 1.000000e+00, %54
  %4673 = call float @dx.op.dot3.f32(i32 55, float %104, float %105, float %106, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4674 = call float @dx.op.binary.f32(i32 35, float %4673, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4675 = fdiv fast float %4672, %4674
  %4676 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4677 = call float @dx.op.unary.f32(i32 7, float %4676)  ; Saturate(value)
  %4678 = fmul fast float %4677, 5.000000e-01
  %4679 = fadd fast float %4678, 5.000000e-01
  %4680 = fmul fast float %4679, %54
  %4681 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4682 = call float @dx.op.unary.f32(i32 7, float %4681)  ; Saturate(value)
  %4683 = fmul fast float %4682, %4675
  %4684 = fadd fast float %4680, %4683
  %4685 = fsub fast float 5.000000e-01, %4678
  %4686 = fmul fast float %4685, %4621
  %4687 = fmul fast float %4685, %4622
  %4688 = fmul fast float %4685, %4623
  %4689 = fadd fast float %4684, %4686
  %4690 = fadd fast float %4684, %4687
  %4691 = fadd fast float %4684, %4688
  %4692 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %84, float %85, float %86)  ; Dot3(ax,ay,az,bx,by,bz)
  %4693 = call float @dx.op.unary.f32(i32 7, float %4692)  ; Saturate(value)
  %4694 = fmul fast float %4693, 5.000000e-01
  %4695 = fadd fast float %4694, 5.000000e-01
  %4696 = fmul fast float %4695, %54
  %4697 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float %104, float %105, float %106)  ; Dot3(ax,ay,az,bx,by,bz)
  %4698 = call float @dx.op.unary.f32(i32 7, float %4697)  ; Saturate(value)
  %4699 = fmul fast float %4698, %4675
  %4700 = fadd fast float %4696, %4699
  %4701 = fsub fast float 5.000000e-01, %4694
  %4702 = fmul fast float %4701, %4621
  %4703 = fmul fast float %4701, %4622
  %4704 = fmul fast float %4701, %4623
  %4705 = fadd fast float %4700, %4702
  %4706 = fadd fast float %4700, %4703
  %4707 = fadd fast float %4700, %4704
  %4708 = call float @dx.op.dot3.f32(i32 55, float %55, float %56, float %57, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4709 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4710 = extractvalue %dx.types.CBufRet.f32 %4709, 0
  %4711 = call float @dx.op.binary.f32(i32 36, float %4621, float %4710)  ; FMin(a,b)
  %4712 = fmul fast float %4711, %4656
  %4713 = fsub fast float 1.000000e+00, %4712
  %4714 = bitcast float %4713 to i32
  %4715 = sub nsw i32 2129859010, %4714
  %4716 = bitcast i32 %4715 to float
  %4717 = call float @dx.op.binary.f32(i32 36, float %4622, float %4710)  ; FMin(a,b)
  %4718 = fmul fast float %4717, %4656
  %4719 = fsub fast float 1.000000e+00, %4718
  %4720 = bitcast float %4719 to i32
  %4721 = sub nsw i32 2129859010, %4720
  %4722 = bitcast i32 %4721 to float
  %4723 = call float @dx.op.binary.f32(i32 36, float %4623, float %4710)  ; FMin(a,b)
  %4724 = fmul fast float %4723, %4656
  %4725 = fsub fast float 1.000000e+00, %4724
  %4726 = bitcast float %4725 to i32
  %4727 = sub nsw i32 2129859010, %4726
  %4728 = bitcast i32 %4727 to float
  %4729 = fmul fast float %4655, %55
  %4730 = fmul fast float %4729, %4689
  %4731 = fmul fast float %4730, %4716
  %4732 = fmul fast float %4655, %56
  %4733 = fmul fast float %4732, %4690
  %4734 = fmul fast float %4733, %4722
  %4735 = fmul fast float %4655, %57
  %4736 = fmul fast float %4735, %4691
  %4737 = fmul fast float %4736, %4728
  %4738 = call float @dx.op.binary.f32(i32 36, float %4618, float %4710)  ; FMin(a,b)
  %4739 = fmul fast float %4738, %4656
  %4740 = fsub fast float 1.000000e+00, %4739
  %4741 = bitcast float %4740 to i32
  %4742 = sub nsw i32 2129859010, %4741
  %4743 = bitcast i32 %4742 to float
  %4744 = call float @dx.op.binary.f32(i32 36, float %4619, float %4710)  ; FMin(a,b)
  %4745 = fmul fast float %4744, %4656
  %4746 = fsub fast float 1.000000e+00, %4745
  %4747 = bitcast float %4746 to i32
  %4748 = sub nsw i32 2129859010, %4747
  %4749 = bitcast i32 %4748 to float
  %4750 = call float @dx.op.binary.f32(i32 36, float %4644, float %4710)  ; FMin(a,b)
  %4751 = fmul fast float %4750, %4656
  %4752 = fsub fast float 1.000000e+00, %4751
  %4753 = bitcast float %4752 to i32
  %4754 = sub nsw i32 2129859010, %4753
  %4755 = bitcast i32 %4754 to float
  %4756 = fmul fast float %4729, %4705
  %4757 = fmul fast float %4756, %4743
  %4758 = fmul fast float %4732, %4706
  %4759 = fmul fast float %4758, %4749
  %4760 = fmul fast float %4735, %4707
  %4761 = fmul fast float %4760, %4755
  %4762 = call float @dx.op.dot3.f32(i32 55, float %4731, float %4734, float %4737, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4763 = select i1 %182, float 0.000000e+00, float %4731
  %4764 = select i1 %182, float %4762, float %4734
  %4765 = select i1 %182, float 0.000000e+00, float %4737
  %4766 = call float @dx.op.dot3.f32(i32 55, float %4757, float %4759, float %4761, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4767 = select i1 %182, float 0.000000e+00, float %4757
  %4768 = select i1 %182, float %4766, float %4759
  %4769 = select i1 %182, float 0.000000e+00, float %4761
  %4770 = fmul fast float %4646, 9.843750e-01
  %4771 = fmul fast float %4627, 9.843750e-01
  %4772 = fadd fast float %4770, 7.812500e-03
  %4773 = fadd fast float %4771, 7.812500e-03
  %4774 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4772, float %4773, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4775 = extractvalue %dx.types.ResRet.f32 %4774, 2
  %4776 = extractvalue %dx.types.ResRet.f32 %4774, 3
  %4777 = fmul fast float %4775, %4618
  %4778 = fmul fast float %4775, %4619
  %4779 = fmul fast float %4775, %4644
  %4780 = fadd fast float %4777, %4776
  %4781 = fadd fast float %4778, %4776
  %4782 = fadd fast float %4779, %4776
  %4783 = fcmp fast ogt float %3995, 0.000000e+00
  br i1 %4783, label %4784, label %4810

; <label>:4784                                    ; preds = %4611
  %4785 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3995, float %4646, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4786 = extractvalue %dx.types.ResRet.f32 %4785, 0
  %4787 = extractvalue %dx.types.ResRet.f32 %4785, 1
  %4788 = extractvalue %dx.types.ResRet.f32 %4785, 2
  %4789 = fadd fast float %4786, -5.000000e-01
  %4790 = fadd fast float %4787, -5.000000e-01
  %4791 = fadd fast float %4788, -5.000000e-01
  %4792 = fsub fast float 1.000000e+00, %4618
  %4793 = fsub fast float 1.000000e+00, %4619
  %4794 = fsub fast float 1.000000e+00, %4644
  %4795 = fmul fast float %4618, 4.000000e+00
  %4796 = fmul fast float %4795, %4792
  %4797 = fmul fast float %4796, %4789
  %4798 = fmul fast float %4619, 4.000000e+00
  %4799 = fmul fast float %4798, %4793
  %4800 = fmul fast float %4799, %4790
  %4801 = fmul fast float %4644, 4.000000e+00
  %4802 = fmul fast float %4801, %4794
  %4803 = fmul fast float %4802, %4791
  %4804 = fadd fast float %4797, %4780
  %4805 = fadd fast float %4800, %4781
  %4806 = fadd fast float %4803, %4782
  %4807 = call float @dx.op.unary.f32(i32 7, float %4804)  ; Saturate(value)
  %4808 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4809 = call float @dx.op.unary.f32(i32 7, float %4806)  ; Saturate(value)
  br label %4810

; <label>:4810                                    ; preds = %4784, %4611
  %4811 = phi float [ %4807, %4784 ], [ %4780, %4611 ]
  %4812 = phi float [ %4808, %4784 ], [ %4781, %4611 ]
  %4813 = phi float [ %4809, %4784 ], [ %4782, %4611 ]
  %4814 = call float @dx.op.binary.f32(i32 35, float %4812, float %4813)  ; FMax(a,b)
  %4815 = call float @dx.op.binary.f32(i32 35, float %4811, float %4814)  ; FMax(a,b)
  %4816 = fsub fast float 1.000000e+00, %4815
  %4817 = fmul fast float %4815, %4627
  %4818 = fadd fast float %4817, %4627
  %4819 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4820 = extractvalue %dx.types.CBufRet.f32 %4819, 0
  %4821 = extractvalue %dx.types.CBufRet.f32 %4819, 1
  %4822 = extractvalue %dx.types.CBufRet.f32 %4819, 2
  %4823 = extractvalue %dx.types.CBufRet.f32 %4819, 3
  %4824 = fmul fast float %4818, %4820
  %4825 = fadd fast float %4824, %4821
  %4826 = call float @dx.op.unary.f32(i32 7, float %4825)  ; Saturate(value)
  %4827 = fmul fast float %4822, %4818
  %4828 = fadd fast float %4827, %4823
  %4829 = call float @dx.op.unary.f32(i32 7, float %4828)  ; Saturate(value)
  %4830 = fsub fast float 1.000000e+00, %4667
  %4831 = fadd fast float %4830, %4829
  %4832 = call float @dx.op.unary.f32(i32 7, float %4831)  ; Saturate(value)
  %4833 = fcmp fast olt float %4832, 1.000000e+00
  br i1 %4833, label %4834, label %5689

; <label>:4834                                    ; preds = %4810
  %4835 = fcmp fast olt float %4826, 1.000000e+00
  %4836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4837 = extractvalue %dx.types.CBufRet.f32 %4836, 0
  %4838 = fcmp fast ogt float %4837, 0.000000e+00
  %4839 = or i1 %4835, %4838
  %4840 = or i1 %4835, %4838
  %4841 = xor i1 %4840, true
  %4842 = zext i1 %4841 to i32
  br i1 %4839, label %4843, label %5086

; <label>:4843                                    ; preds = %4834
  %4844 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4845 = extractvalue %dx.types.CBufRet.f32 %4844, 0
  %4846 = extractvalue %dx.types.CBufRet.f32 %4844, 1
  %4847 = extractvalue %dx.types.CBufRet.f32 %4844, 2
  %4848 = extractvalue %dx.types.CBufRet.f32 %4844, 3
  %4849 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4850 = extractvalue %dx.types.CBufRet.f32 %4849, 0
  %4851 = extractvalue %dx.types.CBufRet.f32 %4849, 1
  %4852 = extractvalue %dx.types.CBufRet.f32 %4849, 2
  %4853 = extractvalue %dx.types.CBufRet.f32 %4849, 3
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4856 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %4857 = extractvalue %dx.types.CBufRet.f32 %4854, 2
  %4858 = extractvalue %dx.types.CBufRet.f32 %4854, 3
  %4859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4860 = extractvalue %dx.types.CBufRet.f32 %4859, 0
  %4861 = extractvalue %dx.types.CBufRet.f32 %4859, 1
  %4862 = extractvalue %dx.types.CBufRet.f32 %4859, 2
  %4863 = extractvalue %dx.types.CBufRet.f32 %4859, 3
  %4864 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4865 = extractvalue %dx.types.CBufRet.f32 %4864, 0
  %4866 = extractvalue %dx.types.CBufRet.f32 %4864, 1
  %4867 = extractvalue %dx.types.CBufRet.f32 %4864, 2
  %4868 = extractvalue %dx.types.CBufRet.f32 %4864, 3
  %4869 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4870 = extractvalue %dx.types.CBufRet.f32 %4869, 0
  %4871 = extractvalue %dx.types.CBufRet.f32 %4869, 1
  %4872 = extractvalue %dx.types.CBufRet.f32 %4869, 2
  %4873 = extractvalue %dx.types.CBufRet.f32 %4869, 3
  %4874 = call float @dx.op.dot3.f32(i32 55, float %4870, float %4871, float %4872, float %4652, float %4653, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %4875 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4876 = call float @dx.op.unary.f32(i32 6, float %4875)  ; FAbs(value)
  %4877 = fmul fast float %4876, 8.000000e+00
  %4878 = fadd fast float %4877, -6.000000e+00
  %4879 = call float @dx.op.unary.f32(i32 7, float %4878)  ; Saturate(value)
  %4880 = fmul fast float %4874, 8.000000e+00
  %4881 = fmul fast float %4880, %4837
  %4882 = call float @dx.op.unary.f32(i32 7, float %4881)  ; Saturate(value)
  %4883 = fcmp fast ogt float %4882, 0.000000e+00
  br i1 %4883, label %4884, label %5061, !dx.controlflow.hints !82

; <label>:4884                                    ; preds = %4843
  %4885 = extractvalue %dx.types.CBufRet.f32 %4836, 1
  %4886 = extractvalue %dx.types.CBufRet.f32 %4836, 2
  %4887 = fsub fast float %4885, %4886
  %4888 = fmul fast float %4887, %4627
  %4889 = fadd fast float %4888, %4886
  %4890 = fmul fast float %195, 2.000000e+00
  %4891 = fmul fast float %196, 2.000000e+00
  %4892 = fadd fast float %4890, -1.000000e+00
  %4893 = fadd fast float %4891, -1.000000e+00
  %4894 = fmul fast float %4889, %4892
  %4895 = fmul fast float %4889, %4893
  %4896 = fadd fast float %4894, %77
  %4897 = fadd fast float %4895, %78
  %4898 = fmul fast float %4896, %4630
  %4899 = fmul fast float %4897, %4631
  %4900 = fadd fast float %4627, 0xBFE3333340000000
  %4901 = fmul fast float %4900, 0x4004000020000000
  %4902 = fsub fast float 1.000000e+00, %4901
  %4903 = call float @dx.op.unary.f32(i32 7, float %4902)  ; Saturate(value)
  %4904 = fmul fast float %4903, 3.000000e+00
  %4905 = fadd fast float %4904, %195
  %4906 = call float @dx.op.unary.f32(i32 27, float %4905)  ; Round_ni(value)
  %4907 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4898, float %4899, float %4906, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4908 = extractvalue %dx.types.ResRet.f32 %4907, 0
  %4909 = fcmp fast une float %4908, 0xFFF0000000000000
  %4910 = fcmp fast une float %4908, 0x7FF0000000000000
  %4911 = and i1 %4909, %4910
  %4912 = fcmp fast olt float %4908, 0.000000e+00
  %4913 = call float @dx.op.unary.f32(i32 6, float %4908)  ; FAbs(value)
  %4914 = fsub fast float 1.000000e+00, %4913
  %4915 = select i1 %4911, float 1.000000e+00, float 0.000000e+00
  %4916 = fmul fast float %4915, %4882
  %4917 = fcmp fast ogt float %4916, 0.000000e+00
  br i1 %4917, label %4918, label %5061, !dx.controlflow.hints !83

; <label>:4918                                    ; preds = %4884
  %4919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4920 = extractvalue %dx.types.CBufRet.f32 %4919, 0
  %4921 = extractvalue %dx.types.CBufRet.f32 %4919, 1
  %4922 = extractvalue %dx.types.CBufRet.f32 %4919, 2
  %4923 = select i1 %4912, float 0.000000e+00, float %4920
  %4924 = select i1 %4912, float 0.000000e+00, float %4921
  %4925 = select i1 %4912, float 0.000000e+00, float %4922
  %4926 = select i1 %4912, float %4845, float %4860
  %4927 = select i1 %4912, float %4850, float %4865
  %4928 = select i1 %4912, float %4855, float %4870
  %4929 = select i1 %4912, float %4846, float %4861
  %4930 = select i1 %4912, float %4851, float %4866
  %4931 = select i1 %4912, float %4856, float %4871
  %4932 = select i1 %4912, float %4847, float %4862
  %4933 = select i1 %4912, float %4852, float %4867
  %4934 = select i1 %4912, float %4857, float %4872
  %4935 = select i1 %4912, float %4848, float %4863
  %4936 = select i1 %4912, float %4853, float %4868
  %4937 = select i1 %4912, float %4858, float %4873
  %4938 = fadd fast float %4923, %140
  %4939 = fadd fast float %4924, %141
  %4940 = fadd fast float %4925, %142
  %4941 = fmul fast float %4938, %4926
  %4942 = call float @dx.op.tertiary.f32(i32 46, float %4939, float %4929, float %4941)  ; FMad(a,b,c)
  %4943 = call float @dx.op.tertiary.f32(i32 46, float %4940, float %4932, float %4942)  ; FMad(a,b,c)
  %4944 = fadd fast float %4943, %4935
  %4945 = fmul fast float %4938, %4927
  %4946 = call float @dx.op.tertiary.f32(i32 46, float %4939, float %4930, float %4945)  ; FMad(a,b,c)
  %4947 = call float @dx.op.tertiary.f32(i32 46, float %4940, float %4933, float %4946)  ; FMad(a,b,c)
  %4948 = fadd fast float %4947, %4936
  %4949 = fmul fast float %4938, %4928
  %4950 = call float @dx.op.tertiary.f32(i32 46, float %4939, float %4931, float %4949)  ; FMad(a,b,c)
  %4951 = call float @dx.op.tertiary.f32(i32 46, float %4940, float %4934, float %4950)  ; FMad(a,b,c)
  %4952 = fadd fast float %4951, %4937
  %4953 = fdiv fast float 1.000000e+00, %4952
  %4954 = fmul fast float %4953, %4944
  %4955 = fmul fast float %4953, %4948
  %4956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4957 = extractvalue %dx.types.CBufRet.f32 %4956, 0
  %4958 = extractvalue %dx.types.CBufRet.f32 %4956, 1
  %4959 = fmul fast float %4954, %4957
  %4960 = fmul fast float %4955, %4958
  %4961 = extractvalue %dx.types.CBufRet.f32 %4956, 2
  %4962 = extractvalue %dx.types.CBufRet.f32 %4956, 3
  %4963 = fadd fast float %4959, %4961
  %4964 = fadd fast float %4960, %4962
  %4965 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4966 = extractvalue %dx.types.CBufRet.f32 %4965, 3
  %4967 = fmul fast float %4966, %4652
  %4968 = fmul fast float %4966, %4653
  %4969 = fmul fast float %4966, %4654
  %4970 = fadd fast float %4967, %4938
  %4971 = fadd fast float %4968, %4939
  %4972 = fadd fast float %4969, %4940
  %4973 = fmul fast float %4970, %4926
  %4974 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %4929, float %4973)  ; FMad(a,b,c)
  %4975 = call float @dx.op.tertiary.f32(i32 46, float %4972, float %4932, float %4974)  ; FMad(a,b,c)
  %4976 = fadd fast float %4975, %4935
  %4977 = fmul fast float %4970, %4927
  %4978 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %4930, float %4977)  ; FMad(a,b,c)
  %4979 = call float @dx.op.tertiary.f32(i32 46, float %4972, float %4933, float %4978)  ; FMad(a,b,c)
  %4980 = fadd fast float %4979, %4936
  %4981 = fmul fast float %4970, %4928
  %4982 = call float @dx.op.tertiary.f32(i32 46, float %4971, float %4931, float %4981)  ; FMad(a,b,c)
  %4983 = call float @dx.op.tertiary.f32(i32 46, float %4972, float %4934, float %4982)  ; FMad(a,b,c)
  %4984 = fadd fast float %4983, %4937
  %4985 = fdiv fast float 1.000000e+00, %4984
  %4986 = fmul fast float %4985, %4976
  %4987 = fmul fast float %4985, %4980
  %4988 = fmul fast float %4963, 2.000000e+00
  %4989 = fadd fast float %4988, -1.000000e+00
  %4990 = call float @dx.op.unary.f32(i32 6, float %4989)  ; FAbs(value)
  %4991 = fmul fast float %4990, 5.000000e+00
  %4992 = fadd fast float %4991, -4.000000e+00
  %4993 = call float @dx.op.unary.f32(i32 7, float %4992)  ; Saturate(value)
  %4994 = fmul fast float %4993, %4879
  %4995 = fsub fast float %4954, %4986
  %4996 = fmul fast float %4957, %4995
  %4997 = fmul fast float %4994, %4996
  %4998 = fsub fast float %4986, %4954
  %4999 = fmul fast float %4957, %4998
  %5000 = fadd fast float %4999, %4997
  %5001 = fsub fast float %4987, %4955
  %5002 = fmul fast float %4958, %5001
  %5003 = fmul fast float %5000, %4914
  %5004 = fmul fast float %5002, %4914
  %5005 = fadd fast float %5003, %4963
  %5006 = fadd fast float %5004, %4964
  %5007 = fsub fast float %4985, %4953
  %5008 = fmul fast float %5007, %4914
  %5009 = fadd fast float %5008, %4953
  %5010 = fdiv fast float 1.000000e+00, %5009
  %5011 = fadd fast float %4627, -1.000000e+00
  %5012 = fsub fast float %5010, %4952
  %5013 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5014 = extractvalue %dx.types.CBufRet.f32 %5013, 2
  %5015 = fmul fast float %5014, %5010
  %5016 = fdiv fast float 1.600000e+02, %5015
  %5017 = fmul fast float %5011, %5011
  %5018 = fmul fast float %5017, 0xBFB5B17960000000
  %5019 = fmul fast float %5018, %5012
  %5020 = fmul fast float %5019, %5016
  %5021 = call float @dx.op.unary.f32(i32 21, float %5020)  ; Exp(value)
  %5022 = fmul fast float %5021, 0x3FF04B2960000000
  %5023 = fsub fast float 0x3FF04B2960000000, %5022
  %5024 = call float @dx.op.unary.f32(i32 7, float %5023)  ; Saturate(value)
  %5025 = fmul fast float %5024, 4.000000e+00
  %5026 = fadd fast float %195, -5.000000e-01
  %5027 = fadd fast float %196, -5.000000e-01
  %5028 = fmul fast float %5024, 0x3FBEB851E0000000
  %5029 = call float @dx.op.unary.f32(i32 7, float %5028)  ; Saturate(value)
  %5030 = fmul fast float %5029, %5026
  %5031 = fmul fast float %5029, %5027
  %5032 = fadd fast float %5005, %5030
  %5033 = fadd fast float %5006, %5031
  %5034 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5032, float %5033, float undef, float undef, i32 0, i32 0, i32 undef, float %5025)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5035 = extractvalue %dx.types.ResRet.f32 %5034, 0
  %5036 = extractvalue %dx.types.ResRet.f32 %5034, 1
  %5037 = extractvalue %dx.types.ResRet.f32 %5034, 2
  %5038 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5039 = extractvalue %dx.types.CBufRet.f32 %5038, 2
  %5040 = fmul fast float %5039, %5035
  %5041 = fmul fast float %5039, %5036
  %5042 = fmul fast float %5039, %5037
  %5043 = select i1 %182, float 0.000000e+00, float %5041
  %5044 = select i1 %182, float 0.000000e+00, float %5042
  %5045 = fmul fast float %5032, 2.000000e+00
  %5046 = fmul fast float %5033, 2.000000e+00
  %5047 = fadd fast float %5045, -1.000000e+00
  %5048 = fadd fast float %5046, -1.000000e+00
  %5049 = fmul fast float %5047, %5047
  %5050 = fsub fast float 1.000000e+00, %5049
  %5051 = call float @dx.op.unary.f32(i32 7, float %5050)  ; Saturate(value)
  %5052 = fsub fast float 1.000000e+00, %5051
  %5053 = fmul fast float %5052, %4879
  %5054 = fadd fast float %5053, %5051
  %5055 = fmul fast float %5048, %5048
  %5056 = fsub fast float 1.000000e+00, %5055
  %5057 = call float @dx.op.unary.f32(i32 7, float %5056)  ; Saturate(value)
  %5058 = fmul fast float %5054, %5057
  %5059 = call float @dx.op.unary.f32(i32 7, float %5058)  ; Saturate(value)
  %5060 = fmul fast float %5059, %4916
  br label %5061

; <label>:5061                                    ; preds = %4918, %4884, %4843
  %5062 = phi float [ %5040, %4918 ], [ 0.000000e+00, %4884 ], [ 0.000000e+00, %4843 ]
  %5063 = phi float [ %5043, %4918 ], [ 0.000000e+00, %4884 ], [ 0.000000e+00, %4843 ]
  %5064 = phi float [ %5044, %4918 ], [ 0.000000e+00, %4884 ], [ 0.000000e+00, %4843 ]
  %5065 = phi float [ %5060, %4918 ], [ 0.000000e+00, %4884 ], [ 0.000000e+00, %4843 ]
  %5066 = fcmp fast olt float %5065, 1.000000e+00
  %5067 = or i1 %5066, %4841
  %5068 = zext i1 %5067 to i32
  %5069 = fmul fast float %5065, %4826
  %5070 = fsub fast float %5065, %5069
  %5071 = fsub fast float 1.000000e+00, %4832
  %5072 = fmul fast float %5070, %5071
  %5073 = fadd fast float %5072, %4832
  %5074 = fsub fast float %5073, %5070
  %5075 = call float @dx.op.unary.f32(i32 7, float %5074)  ; Saturate(value)
  %5076 = fmul fast float %5075, %4767
  %5077 = fmul fast float %5075, %4768
  %5078 = fmul fast float %5075, %4769
  %5079 = fsub fast float -0.000000e+00, %5073
  %5080 = fmul fast float %5070, %5062
  %5081 = fmul fast float %5070, %5063
  %5082 = fmul fast float %5070, %5064
  %5083 = fadd fast float %5080, %5076
  %5084 = fadd fast float %5081, %5077
  %5085 = fadd fast float %5082, %5078
  br label %5086

; <label>:5086                                    ; preds = %5061, %4834
  %5087 = phi float [ %4832, %4834 ], [ %5079, %5061 ]
  %5088 = phi float [ %4767, %4834 ], [ %5083, %5061 ]
  %5089 = phi float [ %4768, %4834 ], [ %5084, %5061 ]
  %5090 = phi float [ %4769, %4834 ], [ %5085, %5061 ]
  %5091 = phi i32 [ %4842, %4834 ], [ %5068, %5061 ]
  %5092 = icmp eq i32 %5091, 0
  br i1 %5092, label %5689, label %5093

; <label>:5093                                    ; preds = %5086
  %5094 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5095 = extractvalue %dx.types.CBufRet.f32 %5094, 2
  %5096 = extractvalue %dx.types.CBufRet.f32 %5094, 3
  %5097 = fmul fast float %5095, %77
  %5098 = fmul fast float %5096, %78
  %5099 = fptoui float %5097 to i32
  %5100 = fptoui float %5098 to i32
  %5101 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5102 = extractvalue %dx.types.CBufRet.f32 %5101, 0
  %5103 = extractvalue %dx.types.CBufRet.f32 %5101, 2
  %5104 = extractvalue %dx.types.CBufRet.f32 %5101, 3
  %5105 = fadd fast float %72, -4.000000e+00
  %5106 = call float @dx.op.binary.f32(i32 35, float %5105, float 0.000000e+00)  ; FMax(a,b)
  %5107 = fadd fast float %5106, %5102
  %5108 = fmul fast float %5107, %5103
  %5109 = call float @dx.op.unary.f32(i32 23, float %5108)  ; Log(value)
  %5110 = fmul fast float %5109, %5104
  %5111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5112 = extractvalue %dx.types.CBufRet.f32 %5111, 2
  %5113 = fmul fast float %5110, %5112
  %5114 = call float @dx.op.unary.f32(i32 7, float %5113)  ; Saturate(value)
  %5115 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5116 = extractvalue %dx.types.CBufRet.i32 %5115, 1
  %5117 = add i32 %5116, -1
  %5118 = uitofp i32 %5116 to float
  %5119 = fmul fast float %5118, %5114
  %5120 = fptoui float %5119 to i32
  %5121 = call i32 @dx.op.binary.i32(i32 40, i32 %5120, i32 %5117)  ; UMin(a,b)
  %5122 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5123 = extractvalue %dx.types.CBufRet.i32 %5122, 2
  %5124 = extractvalue %dx.types.CBufRet.i32 %5122, 3
  %5125 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5100, i32 %5123, i32 %5099)  ; UMad(a,b,c)
  %5126 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5121, i32 %5124, i32 %5125)  ; UMad(a,b,c)
  %5127 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %5128 = fptoui float %5127 to i32
  %5129 = lshr i32 %5128, 5
  %5130 = call i32 @dx.op.binary.i32(i32 40, i32 %5129, i32 8191)  ; UMin(a,b)
  %5131 = fcmp fast ogt float %4426, 0.000000e+00
  %5132 = fcmp fast ogt float %4654, 0.000000e+00
  %5133 = and i1 %5132, %5131
  br i1 %5133, label %5134, label %5163

; <label>:5134                                    ; preds = %5093
  %5135 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %4654, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5136 = call float @dx.op.binary.f32(i32 35, float %5135, float -1.000000e+00)  ; FMax(a,b)
  %5137 = call float @dx.op.binary.f32(i32 36, float %5136, float 1.000000e+00)  ; FMin(a,b)
  %5138 = fmul fast float %5137, %5137
  %5139 = fsub fast float 1.000000e+00, %5138
  %5140 = fmul fast float %5139, 0x3FFC6E2300000000
  %5141 = fsub fast float 1.000000e+00, %5140
  %5142 = fcmp fast ogt float %5141, 0.000000e+00
  %5143 = call float @dx.op.unary.f32(i32 24, float %5141)  ; Sqrt(value)
  %5144 = fsub fast float 1.000000e+00, %5143
  %5145 = call float @dx.op.unary.f32(i32 23, float %5144)  ; Log(value)
  %5146 = fmul fast float %5145, 5.000000e+00
  %5147 = call float @dx.op.unary.f32(i32 21, float %5146)  ; Exp(value)
  %5148 = fmul fast float %5147, 0x3FEF591A60000000
  %5149 = fadd fast float %5148, 0x3F94DCB540000000
  %5150 = select i1 %5142, float %5149, float 1.000000e+00
  %5151 = fcmp fast oge float %5150, 1.000000e+00
  %5152 = fmul fast float %5135, 2.000000e+00
  %5153 = fadd fast float %5152, %4654
  %5154 = select i1 %5151, float %5153, float %4654
  %5155 = fsub fast float %5154, %4654
  %5156 = fmul fast float %5155, %4426
  %5157 = fadd fast float %5156, %4654
  %5158 = call float @dx.op.dot3.f32(i32 55, float %4652, float %4653, float %5157, float %4652, float %4653, float %5157)  ; Dot3(ax,ay,az,bx,by,bz)
  %5159 = call float @dx.op.unary.f32(i32 25, float %5158)  ; Rsqrt(value)
  %5160 = fmul fast float %5159, %4652
  %5161 = fmul fast float %5159, %4653
  %5162 = fmul fast float %5157, %5159
  br label %5163

; <label>:5163                                    ; preds = %5134, %5093
  %5164 = phi float [ %5160, %5134 ], [ %4652, %5093 ]
  %5165 = phi float [ %5161, %5134 ], [ %4653, %5093 ]
  %5166 = phi float [ %5162, %5134 ], [ %4654, %5093 ]
  %5167 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5168 = extractvalue %dx.types.CBufRet.i32 %5167, 2
  %5169 = add nsw i32 %5168, -1
  %5170 = call i32 @dx.op.binary.i32(i32 37, i32 %5169, i32 0)  ; IMax(a,b)
  %5171 = shl i32 %5130, 2
  %5172 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5171, i32 undef)  ; BufferLoad(srv,index,wot)
  %5173 = extractvalue %dx.types.ResRet.i32 %5172, 0
  %5174 = lshr i32 %5173, 16
  %5175 = and i32 %5173, 65535
  %5176 = lshr i32 %5173, 21
  %5177 = lshr i32 %5175, 5
  %5178 = call i32 @dx.op.binary.i32(i32 40, i32 %5177, i32 %5170)  ; UMin(a,b)
  %5179 = icmp ugt i32 %5176, %5178
  br i1 %5179, label %5561, label %5180

; <label>:5180                                    ; preds = %5163
  br label %5181

; <label>:5181                                    ; preds = %5550, %5180
  %5182 = phi float [ %5551, %5550 ], [ 0.000000e+00, %5180 ]
  %5183 = phi float [ %5552, %5550 ], [ 0.000000e+00, %5180 ]
  %5184 = phi float [ %5553, %5550 ], [ 0.000000e+00, %5180 ]
  %5185 = phi float [ %5554, %5550 ], [ 1.000000e+00, %5180 ]
  %5186 = phi i32 [ %5558, %5550 ], [ %5176, %5180 ]
  %5187 = phi float [ %5555, %5550 ], [ 0.000000e+00, %5180 ]
  %5188 = phi float [ %5556, %5550 ], [ 0.000000e+00, %5180 ]
  %5189 = phi float [ %5557, %5550 ], [ 0.000000e+00, %5180 ]
  %5190 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5191 = extractvalue %dx.types.CBufRet.i32 %5190, 2
  %5192 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5126, i32 %5191, i32 %5186)  ; UMad(a,b,c)
  %5193 = shl i32 %5192, 2
  %5194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5193, i32 undef)  ; BufferLoad(srv,index,wot)
  %5195 = extractvalue %dx.types.ResRet.i32 %5194, 0
  %5196 = shl i32 %5186, 5
  %5197 = sub nsw i32 %5174, %5196
  %5198 = call i32 @dx.op.binary.i32(i32 37, i32 %5197, i32 0)  ; IMax(a,b)
  %5199 = call i32 @dx.op.binary.i32(i32 38, i32 %5198, i32 31)  ; IMin(a,b)
  %5200 = sub nsw i32 1, %5174
  %5201 = add nsw i32 %5200, %5175
  %5202 = call i32 @dx.op.binary.i32(i32 37, i32 %5201, i32 0)  ; IMax(a,b)
  %5203 = call i32 @dx.op.binary.i32(i32 38, i32 %5202, i32 32)  ; IMin(a,b)
  %5204 = and i32 %5203, 31
  %5205 = shl i32 -1, %5204
  %5206 = xor i32 %5205, -1
  %5207 = and i32 %5199, 31
  %5208 = shl i32 %5206, %5207
  %5209 = icmp eq i32 %5203, 32
  %5210 = select i1 %5209, i32 -1, i32 %5208
  %5211 = and i32 %5210, %5195
  %5212 = icmp eq i32 %5211, 0
  br i1 %5212, label %5550, label %5213

; <label>:5213                                    ; preds = %5181
  br label %5214

; <label>:5214                                    ; preds = %5324, %5213
  %5215 = phi float [ %5325, %5324 ], [ %5182, %5213 ]
  %5216 = phi float [ %5326, %5324 ], [ %5183, %5213 ]
  %5217 = phi float [ %5327, %5324 ], [ %5184, %5213 ]
  %5218 = phi float [ %5328, %5324 ], [ %5185, %5213 ]
  %5219 = phi i32 [ %5227, %5324 ], [ %5211, %5213 ]
  %5220 = phi float [ %5329, %5324 ], [ %5187, %5213 ]
  %5221 = phi float [ %5330, %5324 ], [ %5188, %5213 ]
  %5222 = phi float [ %5331, %5324 ], [ %5189, %5213 ]
  %5223 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5219)  ; FirstbitLo(value)
  %5224 = add i32 %5223, %5196
  %5225 = and i32 %5223, 31
  %5226 = shl i32 1, %5225
  %5227 = xor i32 %5226, %5219
  %5228 = mul i32 %5224, 72
  %5229 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5228, i32 undef)  ; BufferLoad(srv,index,wot)
  %5230 = extractvalue %dx.types.ResRet.f32 %5229, 0
  %5231 = extractvalue %dx.types.ResRet.f32 %5229, 1
  %5232 = extractvalue %dx.types.ResRet.f32 %5229, 2
  %5233 = add i32 %5228, 12
  %5234 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5233, i32 undef)  ; BufferLoad(srv,index,wot)
  %5235 = extractvalue %dx.types.ResRet.i32 %5234, 0
  %5236 = add i32 %5228, 16
  %5237 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5236, i32 undef)  ; BufferLoad(srv,index,wot)
  %5238 = extractvalue %dx.types.ResRet.f32 %5237, 0
  %5239 = extractvalue %dx.types.ResRet.f32 %5237, 1
  %5240 = extractvalue %dx.types.ResRet.f32 %5237, 2
  %5241 = add i32 %5228, 28
  %5242 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5241, i32 undef)  ; BufferLoad(srv,index,wot)
  %5243 = extractvalue %dx.types.ResRet.f32 %5242, 0
  %5244 = add i32 %5228, 32
  %5245 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5244, i32 undef)  ; BufferLoad(srv,index,wot)
  %5246 = extractvalue %dx.types.ResRet.f32 %5245, 0
  %5247 = extractvalue %dx.types.ResRet.f32 %5245, 1
  %5248 = extractvalue %dx.types.ResRet.f32 %5245, 2
  %5249 = extractvalue %dx.types.ResRet.f32 %5245, 3
  %5250 = add i32 %5228, 48
  %5251 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5250, i32 undef)  ; BufferLoad(srv,index,wot)
  %5252 = extractvalue %dx.types.ResRet.f32 %5251, 0
  %5253 = extractvalue %dx.types.ResRet.f32 %5251, 1
  %5254 = add i32 %5228, 56
  %5255 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5254, i32 undef)  ; BufferLoad(srv,index,wot)
  %5256 = extractvalue %dx.types.ResRet.f32 %5255, 0
  %5257 = extractvalue %dx.types.ResRet.f32 %5255, 1
  %5258 = add i32 %5228, 64
  %5259 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5258, i32 undef)  ; BufferLoad(srv,index,wot)
  %5260 = extractvalue %dx.types.ResRet.f32 %5259, 0
  %5261 = extractvalue %dx.types.ResRet.f32 %5259, 1
  %5262 = mul i32 %5224, 60
  %5263 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5262, i32 undef)  ; BufferLoad(srv,index,wot)
  %5264 = extractvalue %dx.types.ResRet.f32 %5263, 0
  %5265 = extractvalue %dx.types.ResRet.f32 %5263, 1
  %5266 = extractvalue %dx.types.ResRet.f32 %5263, 2
  %5267 = add i32 %5262, 12
  %5268 = add i32 %5262, 48
  %5269 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5268, i32 undef)  ; BufferLoad(srv,index,wot)
  %5270 = extractvalue %dx.types.ResRet.f32 %5269, 0
  %5271 = extractvalue %dx.types.ResRet.f32 %5269, 1
  %5272 = extractvalue %dx.types.ResRet.f32 %5269, 2
  %5273 = and i32 %5235, 32767
  %5274 = bitcast float %5230 to i32
  %5275 = icmp eq i32 %5274, -1
  %5276 = bitcast float %5231 to i32
  %5277 = and i32 %5235, 32768
  %5278 = icmp ne i32 %5277, 0
  %5279 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5280 = extractvalue %dx.types.CBufRet.f32 %5279, 0
  %5281 = extractvalue %dx.types.CBufRet.f32 %5279, 1
  %5282 = extractvalue %dx.types.CBufRet.f32 %5279, 2
  %5283 = fsub fast float %5264, %5280
  %5284 = fsub fast float %5265, %5281
  %5285 = fsub fast float %5266, %5282
  %5286 = fsub fast float %140, %5283
  %5287 = fsub fast float %141, %5284
  %5288 = fsub fast float %142, %5285
  %5289 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5267, i32 undef)  ; BufferLoad(srv,index,wot)
  %5290 = extractvalue %dx.types.ResRet.f32 %5289, 0
  %5291 = extractvalue %dx.types.ResRet.f32 %5289, 1
  %5292 = extractvalue %dx.types.ResRet.f32 %5289, 2
  %5293 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float %5290, float %5291, float %5292)  ; Dot3(ax,ay,az,bx,by,bz)
  %5294 = add i32 %5262, 24
  %5295 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5294, i32 undef)  ; BufferLoad(srv,index,wot)
  %5296 = extractvalue %dx.types.ResRet.f32 %5295, 0
  %5297 = extractvalue %dx.types.ResRet.f32 %5295, 1
  %5298 = extractvalue %dx.types.ResRet.f32 %5295, 2
  %5299 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float %5296, float %5297, float %5298)  ; Dot3(ax,ay,az,bx,by,bz)
  %5300 = add i32 %5262, 36
  %5301 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5300, i32 undef)  ; BufferLoad(srv,index,wot)
  %5302 = extractvalue %dx.types.ResRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.ResRet.f32 %5301, 1
  %5304 = extractvalue %dx.types.ResRet.f32 %5301, 2
  %5305 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float %5302, float %5303, float %5304)  ; Dot3(ax,ay,az,bx,by,bz)
  %5306 = call float @dx.op.unary.f32(i32 6, float %5293)  ; FAbs(value)
  %5307 = call float @dx.op.unary.f32(i32 6, float %5299)  ; FAbs(value)
  %5308 = call float @dx.op.unary.f32(i32 6, float %5305)  ; FAbs(value)
  %5309 = fsub fast float %5270, %5306
  %5310 = fsub fast float %5271, %5307
  %5311 = fsub fast float %5272, %5308
  %5312 = fmul fast float %5309, %5238
  %5313 = fmul fast float %5310, %5239
  %5314 = fmul fast float %5311, %5240
  %5315 = call float @dx.op.binary.f32(i32 36, float %5313, float %5314)  ; FMin(a,b)
  %5316 = call float @dx.op.binary.f32(i32 36, float %5312, float %5315)  ; FMin(a,b)
  %5317 = call float @dx.op.unary.f32(i32 7, float %5316)  ; Saturate(value)
  %5318 = call float @dx.op.binary.f32(i32 36, float %5218, float %5317)  ; FMin(a,b)
  %5319 = uitofp i1 %5278 to float
  %5320 = fadd fast float %4426, 1.000000e+00
  %5321 = fsub fast float %5320, %5319
  %5322 = fmul fast float %5318, %5321
  %5323 = fcmp fast ogt float %5322, 0.000000e+00
  br i1 %5323, label %5333, label %5324

; <label>:5324                                    ; preds = %5475, %5214
  %5325 = phi float [ %5539, %5475 ], [ %5215, %5214 ]
  %5326 = phi float [ %5540, %5475 ], [ %5216, %5214 ]
  %5327 = phi float [ %5541, %5475 ], [ %5217, %5214 ]
  %5328 = phi float [ %5548, %5475 ], [ %5218, %5214 ]
  %5329 = phi float [ %5545, %5475 ], [ %5220, %5214 ]
  %5330 = phi float [ %5546, %5475 ], [ %5221, %5214 ]
  %5331 = phi float [ %5547, %5475 ], [ %5222, %5214 ]
  %5332 = icmp eq i32 %5219, %5226
  br i1 %5332, label %5549, label %5214

; <label>:5333                                    ; preds = %5214
  br i1 %5275, label %5391, label %5334

; <label>:5334                                    ; preds = %5333
  %5335 = fsub fast float -0.000000e+00, %5290
  %5336 = fsub fast float -0.000000e+00, %5291
  %5337 = fsub fast float -0.000000e+00, %5292
  %5338 = call float @dx.op.dot3.f32(i32 55, float %5164, float %5165, float %5166, float %5335, float %5336, float %5337)  ; Dot3(ax,ay,az,bx,by,bz)
  %5339 = fsub fast float -0.000000e+00, %5338
  %5340 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float %5335, float %5336, float %5337)  ; Dot3(ax,ay,az,bx,by,bz)
  %5341 = fadd fast float %5340, %5253
  %5342 = fadd fast float %5252, %5340
  %5343 = fsub fast float -0.000000e+00, %5342
  %5344 = fcmp ogt float %5338, -0.000000e+00
  %5345 = select i1 %5344, float %5343, float %5341
  %5346 = call float @dx.op.unary.f32(i32 6, float %5339)  ; FAbs(value)
  %5347 = fdiv fast float 1.000000e+00, %5346
  %5348 = fmul fast float %5345, %5347
  %5349 = call float @dx.op.binary.f32(i32 35, float %5348, float 0.000000e+00)  ; FMax(a,b)
  %5350 = fsub fast float -0.000000e+00, %5296
  %5351 = fsub fast float -0.000000e+00, %5297
  %5352 = fsub fast float -0.000000e+00, %5298
  %5353 = call float @dx.op.dot3.f32(i32 55, float %5164, float %5165, float %5166, float %5350, float %5351, float %5352)  ; Dot3(ax,ay,az,bx,by,bz)
  %5354 = fsub fast float -0.000000e+00, %5353
  %5355 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float %5350, float %5351, float %5352)  ; Dot3(ax,ay,az,bx,by,bz)
  %5356 = fadd fast float %5355, %5257
  %5357 = fadd fast float %5256, %5355
  %5358 = fsub fast float -0.000000e+00, %5357
  %5359 = fcmp ogt float %5353, -0.000000e+00
  %5360 = select i1 %5359, float %5358, float %5356
  %5361 = call float @dx.op.unary.f32(i32 6, float %5354)  ; FAbs(value)
  %5362 = fdiv fast float 1.000000e+00, %5361
  %5363 = fmul fast float %5360, %5362
  %5364 = call float @dx.op.binary.f32(i32 35, float %5363, float 0.000000e+00)  ; FMax(a,b)
  %5365 = fsub fast float -0.000000e+00, %5302
  %5366 = fsub fast float -0.000000e+00, %5303
  %5367 = fsub fast float -0.000000e+00, %5304
  %5368 = call float @dx.op.dot3.f32(i32 55, float %5164, float %5165, float %5166, float %5365, float %5366, float %5367)  ; Dot3(ax,ay,az,bx,by,bz)
  %5369 = fsub fast float -0.000000e+00, %5368
  %5370 = call float @dx.op.dot3.f32(i32 55, float %5286, float %5287, float %5288, float %5365, float %5366, float %5367)  ; Dot3(ax,ay,az,bx,by,bz)
  %5371 = fadd fast float %5370, %5261
  %5372 = fadd fast float %5260, %5370
  %5373 = fsub fast float -0.000000e+00, %5372
  %5374 = fcmp ogt float %5368, -0.000000e+00
  %5375 = select i1 %5374, float %5373, float %5371
  %5376 = call float @dx.op.unary.f32(i32 6, float %5369)  ; FAbs(value)
  %5377 = fdiv fast float 1.000000e+00, %5376
  %5378 = fmul fast float %5375, %5377
  %5379 = call float @dx.op.binary.f32(i32 35, float %5378, float 0.000000e+00)  ; FMax(a,b)
  %5380 = call float @dx.op.binary.f32(i32 36, float %5364, float %5379)  ; FMin(a,b)
  %5381 = call float @dx.op.binary.f32(i32 36, float %5349, float %5380)  ; FMin(a,b)
  %5382 = fmul fast float %5381, %5164
  %5383 = fmul fast float %5381, %5165
  %5384 = fmul fast float %5381, %5166
  %5385 = fadd fast float %5382, %140
  %5386 = fadd fast float %5383, %141
  %5387 = fadd fast float %5384, %142
  %5388 = fsub fast float %5385, %5230
  %5389 = fsub fast float %5386, %5231
  %5390 = fsub fast float %5387, %5232
  br label %5398

; <label>:5391                                    ; preds = %5333
  %5392 = fmul fast float %5164, 8.096000e+03
  %5393 = fmul fast float %5165, 8.096000e+03
  %5394 = fmul fast float %5166, 8.096000e+03
  %5395 = fadd fast float %5392, %140
  %5396 = fadd fast float %5393, %141
  %5397 = fadd fast float %5394, %142
  br label %5398

; <label>:5398                                    ; preds = %5391, %5334
  %5399 = phi float [ %5164, %5391 ], [ %5388, %5334 ]
  %5400 = phi float [ %5165, %5391 ], [ %5389, %5334 ]
  %5401 = phi float [ %5166, %5391 ], [ %5390, %5334 ]
  %5402 = phi float [ %5395, %5391 ], [ %5385, %5334 ]
  %5403 = phi float [ %5396, %5391 ], [ %5386, %5334 ]
  %5404 = phi float [ %5397, %5391 ], [ %5387, %5334 ]
  %5405 = fcmp fast olt float %5249, 1.000000e+00
  br i1 %5405, label %5406, label %5437, !dx.controlflow.hints !84

; <label>:5406                                    ; preds = %5398
  %5407 = fmul fast float %5401, %5247
  %5408 = fmul fast float %5400, %5248
  %5409 = fsub fast float %5407, %5408
  %5410 = fmul fast float %5399, %5248
  %5411 = fmul fast float %5401, %5246
  %5412 = fsub fast float %5410, %5411
  %5413 = fmul fast float %5400, %5246
  %5414 = fmul fast float %5399, %5247
  %5415 = fsub fast float %5413, %5414
  %5416 = fmul fast float %5409, 2.000000e+00
  %5417 = fmul fast float %5412, 2.000000e+00
  %5418 = fmul fast float %5415, 2.000000e+00
  %5419 = fmul fast float %5416, %5249
  %5420 = fmul fast float %5417, %5249
  %5421 = fmul fast float %5418, %5249
  %5422 = fmul fast float %5418, %5247
  %5423 = fmul fast float %5417, %5248
  %5424 = fmul fast float %5416, %5248
  %5425 = fmul fast float %5418, %5246
  %5426 = fmul fast float %5417, %5246
  %5427 = fmul fast float %5416, %5247
  %5428 = fadd fast float %5422, %5399
  %5429 = fadd fast float %5428, %5419
  %5430 = fsub fast float %5429, %5423
  %5431 = fsub fast float %5400, %5425
  %5432 = fadd fast float %5431, %5420
  %5433 = fadd fast float %5432, %5424
  %5434 = fadd fast float %5421, %5401
  %5435 = fsub fast float %5434, %5427
  %5436 = fadd fast float %5435, %5426
  br label %5437

; <label>:5437                                    ; preds = %5406, %5398
  %5438 = phi float [ %5430, %5406 ], [ %5399, %5398 ]
  %5439 = phi float [ %5433, %5406 ], [ %5400, %5398 ]
  %5440 = phi float [ %5436, %5406 ], [ %5401, %5398 ]
  br i1 %5275, label %5472, label %5441

; <label>:5441                                    ; preds = %5437
  %5442 = fmul fast float %4627, 0x400187C840000000
  %5443 = fadd fast float %5442, 0xC00EFC2120000000
  %5444 = fmul fast float %5443, %4627
  %5445 = fadd fast float %5444, 0x3FE5D16340000000
  %5446 = fmul fast float %5445, %4627
  %5447 = fadd fast float %5446, 1.000000e+00
  %5448 = call float @dx.op.unary.f32(i32 7, float %5447)  ; Saturate(value)
  %5449 = fsub fast float %5402, %140
  %5450 = fsub fast float %5403, %141
  %5451 = fsub fast float %5404, %142
  %5452 = fsub fast float %5402, %5230
  %5453 = fsub fast float %5403, %5231
  %5454 = fsub fast float %5404, %5232
  %5455 = call float @dx.op.dot3.f32(i32 55, float %5449, float %5450, float %5451, float %5449, float %5450, float %5451)  ; Dot3(ax,ay,az,bx,by,bz)
  %5456 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float %5452, float %5453, float %5454)  ; Dot3(ax,ay,az,bx,by,bz)
  %5457 = fadd fast float %5456, 0x3EE4F8B580000000
  %5458 = fdiv fast float %5455, %5457
  %5459 = bitcast float %5458 to i32
  %5460 = ashr i32 %5459, 1
  %5461 = add nsw i32 %5460, 532487669
  %5462 = bitcast i32 %5461 to float
  %5463 = fmul fast float %5462, %5448
  %5464 = call float @dx.op.unary.f32(i32 7, float %5463)  ; Saturate(value)
  %5465 = fmul fast float %5464, 0x4009981AE0000000
  %5466 = fsub fast float 0x40111BBD80000000, %5465
  %5467 = fmul fast float %5466, %5464
  %5468 = fadd fast float %5467, 0xC0009F6020000000
  %5469 = fmul fast float %5468, %5464
  %5470 = fadd fast float %5469, 1.000000e+00
  %5471 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  br label %5475

; <label>:5472                                    ; preds = %5437
  %5473 = icmp ne i32 %5276, -1
  %5474 = zext i1 %5473 to i32
  br label %5475

; <label>:5475                                    ; preds = %5472, %5441
  %5476 = phi float [ %4627, %5472 ], [ %5471, %5441 ]
  %5477 = phi i32 [ %5474, %5472 ], [ 0, %5441 ]
  %5478 = fmul float %5476, 5.000000e+00
  %5479 = fsub float 5.000000e+00, %5478
  %5480 = icmp ne i32 %5477, 0
  %5481 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5482 = extractvalue %dx.types.CBufRet.f32 %5481, 3
  %5483 = fadd fast float %5482, %5479
  %5484 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5483)  ; FMax(a,b)
  %5485 = call float @dx.op.unary.f32(i32 6, float %5438)  ; FAbs(value)
  %5486 = call float @dx.op.unary.f32(i32 6, float %5439)  ; FAbs(value)
  %5487 = fadd fast float %5486, %5485
  %5488 = call float @dx.op.unary.f32(i32 6, float %5440)  ; FAbs(value)
  %5489 = fadd fast float %5487, %5488
  %5490 = fcmp fast oeq float %5489, 0.000000e+00
  %5491 = fdiv fast float 1.000000e+00, %5489
  %5492 = select i1 %5490, float 1.000000e+00, float %5491
  %5493 = fmul fast float %5492, %5438
  %5494 = fmul fast float %5492, %5439
  %5495 = call float @dx.op.unary.f32(i32 6, float %5494)  ; FAbs(value)
  %5496 = call float @dx.op.unary.f32(i32 6, float %5493)  ; FAbs(value)
  %5497 = fsub fast float 1.000000e+00, %5495
  %5498 = fsub fast float 1.000000e+00, %5496
  %5499 = fcmp fast oge float %5493, 0.000000e+00
  %5500 = fcmp fast oge float %5494, 0.000000e+00
  %5501 = select i1 %5499, float 1.000000e+00, float -1.000000e+00
  %5502 = select i1 %5500, float 1.000000e+00, float -1.000000e+00
  %5503 = fcmp fast ole float %5440, 0.000000e+00
  %5504 = fmul fast float %5501, %5497
  %5505 = fmul fast float %5502, %5498
  %5506 = select i1 %5503, float %5504, float %5493
  %5507 = select i1 %5503, float %5505, float %5494
  %5508 = fmul fast float %5506, 5.000000e-01
  %5509 = fmul fast float %5507, 5.000000e-01
  %5510 = fadd fast float %5508, 5.000000e-01
  %5511 = fadd fast float %5509, 5.000000e-01
  %5512 = uitofp i32 %5273 to float
  %5513 = call float @dx.op.binary.f32(i32 36, float %5484, float 3.000000e+00)  ; FMin(a,b)
  %5514 = fadd fast float %5513, 2.000000e+00
  %5515 = call float @dx.op.unary.f32(i32 21, float %5514)  ; Exp(value)
  %5516 = extractvalue %dx.types.CBufRet.f32 %5481, 1
  %5517 = fmul fast float %5516, %5515
  %5518 = fmul fast float %5517, 2.000000e+00
  %5519 = fsub fast float 1.000000e+00, %5518
  %5520 = fmul fast float %5510, %5519
  %5521 = fmul fast float %5511, %5519
  %5522 = fadd fast float %5520, %5517
  %5523 = fadd fast float %5521, %5517
  %5524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5522, float %5523, float %5512, float undef, i32 0, i32 0, i32 undef, float %5484)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5525 = extractvalue %dx.types.ResRet.f32 %5524, 0
  %5526 = extractvalue %dx.types.ResRet.f32 %5524, 1
  %5527 = extractvalue %dx.types.ResRet.f32 %5524, 2
  %5528 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5529 = extractvalue %dx.types.CBufRet.f32 %5528, 3
  %5530 = fmul fast float %5529, %5243
  %5531 = call float @dx.op.binary.f32(i32 36, float %4708, float %5530)  ; FMin(a,b)
  %5532 = select i1 %5480, float %5531, float %5530
  %5533 = fmul fast float %5525, %5322
  %5534 = fmul fast float %5533, %5532
  %5535 = fmul fast float %5526, %5322
  %5536 = fmul fast float %5535, %5532
  %5537 = fmul fast float %5527, %5322
  %5538 = fmul fast float %5537, %5532
  %5539 = fadd fast float %5534, %5215
  %5540 = fadd fast float %5536, %5216
  %5541 = fadd fast float %5538, %5217
  %5542 = fmul fast float %5402, %5322
  %5543 = fmul fast float %5403, %5322
  %5544 = fmul fast float %5404, %5322
  %5545 = fadd fast float %5542, %5220
  %5546 = fadd fast float %5543, %5221
  %5547 = fadd fast float %5544, %5222
  %5548 = fsub fast float %5218, %5322
  br label %5324

; <label>:5549                                    ; preds = %5324
  br label %5550

; <label>:5550                                    ; preds = %5549, %5181
  %5551 = phi float [ %5182, %5181 ], [ %5325, %5549 ]
  %5552 = phi float [ %5183, %5181 ], [ %5326, %5549 ]
  %5553 = phi float [ %5184, %5181 ], [ %5327, %5549 ]
  %5554 = phi float [ %5185, %5181 ], [ %5328, %5549 ]
  %5555 = phi float [ %5187, %5181 ], [ %5329, %5549 ]
  %5556 = phi float [ %5188, %5181 ], [ %5330, %5549 ]
  %5557 = phi float [ %5189, %5181 ], [ %5331, %5549 ]
  %5558 = add i32 %5186, 1
  %5559 = icmp ugt i32 %5558, %5178
  br i1 %5559, label %5560, label %5181, !llvm.loop !85

; <label>:5560                                    ; preds = %5550
  br label %5561

; <label>:5561                                    ; preds = %5560, %5163
  %5562 = phi float [ 0.000000e+00, %5163 ], [ %5551, %5560 ]
  %5563 = phi float [ 0.000000e+00, %5163 ], [ %5552, %5560 ]
  %5564 = phi float [ 0.000000e+00, %5163 ], [ %5553, %5560 ]
  %5565 = phi float [ 0.000000e+00, %5163 ], [ %5555, %5560 ]
  %5566 = phi float [ 0.000000e+00, %5163 ], [ %5556, %5560 ]
  %5567 = phi float [ 0.000000e+00, %5163 ], [ %5557, %5560 ]
  %5568 = call float @dx.op.dot3.f32(i32 55, float %5562, float %5563, float %5564, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5569 = select i1 %182, float 0.000000e+00, float %5562
  %5570 = select i1 %182, float %5568, float %5563
  %5571 = select i1 %182, float 0.000000e+00, float %5564
  %5572 = fcmp fast olt float %5087, 0.000000e+00
  %5573 = call float @dx.op.unary.f32(i32 6, float %5087)  ; FAbs(value)
  %5574 = fmul fast float %5573, %5088
  %5575 = fmul fast float %5573, %5089
  %5576 = fmul fast float %5573, %5090
  %5577 = select i1 %5572, float %5088, float %5574
  %5578 = select i1 %5572, float %5089, float %5575
  %5579 = select i1 %5572, float %5090, float %5576
  %5580 = fsub fast float 1.000000e+00, %5573
  %5581 = call float @dx.op.unary.f32(i32 7, float %5580)  ; Saturate(value)
  %5582 = fmul fast float %5581, %5569
  %5583 = fmul fast float %5581, %5570
  %5584 = fmul fast float %5581, %5571
  %5585 = fadd fast float %5577, %5582
  %5586 = fadd fast float %5578, %5583
  %5587 = fadd fast float %5579, %5584
  %5588 = fcmp fast une float %4837, 0.000000e+00
  br i1 %5588, label %5689, label %5589

; <label>:5589                                    ; preds = %5561
  %5590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5591 = extractvalue %dx.types.CBufRet.f32 %5590, 0
  %5592 = extractvalue %dx.types.CBufRet.f32 %5590, 1
  %5593 = extractvalue %dx.types.CBufRet.f32 %5590, 2
  %5594 = extractvalue %dx.types.CBufRet.f32 %5590, 3
  %5595 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5596 = extractvalue %dx.types.CBufRet.f32 %5595, 0
  %5597 = extractvalue %dx.types.CBufRet.f32 %5595, 1
  %5598 = extractvalue %dx.types.CBufRet.f32 %5595, 2
  %5599 = extractvalue %dx.types.CBufRet.f32 %5595, 3
  %5600 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5601 = extractvalue %dx.types.CBufRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.CBufRet.f32 %5600, 1
  %5603 = extractvalue %dx.types.CBufRet.f32 %5600, 2
  %5604 = extractvalue %dx.types.CBufRet.f32 %5600, 3
  %5605 = call float @dx.op.dot3.f32(i32 55, float %5601, float %5602, float %5603, float %4652, float %4653, float %4654)  ; Dot3(ax,ay,az,bx,by,bz)
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5565, float %5566, float %5567, float %5601, float %5602, float %5603)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = call float @dx.op.dot3.f32(i32 55, float %140, float %141, float %142, float %5601, float %5602, float %5603)  ; Dot3(ax,ay,az,bx,by,bz)
  %5608 = fadd fast float %4627, -1.000000e+00
  %5609 = fsub fast float %5606, %5607
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 2
  %5612 = fmul fast float %5611, %5606
  %5613 = fdiv fast float 1.600000e+02, %5612
  %5614 = fmul fast float %5608, %5608
  %5615 = fmul fast float %5614, 0xBFB5B17960000000
  %5616 = fmul fast float %5615, %5609
  %5617 = fmul fast float %5616, %5613
  %5618 = call float @dx.op.unary.f32(i32 21, float %5617)  ; Exp(value)
  %5619 = fmul fast float %5618, 0x3FF04B2960000000
  %5620 = fsub fast float 0x3FF04B2960000000, %5619
  %5621 = call float @dx.op.unary.f32(i32 7, float %5620)  ; Saturate(value)
  %5622 = fmul fast float %5621, 4.000000e+00
  %5623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5624 = extractvalue %dx.types.CBufRet.f32 %5623, 0
  %5625 = extractvalue %dx.types.CBufRet.f32 %5623, 1
  %5626 = extractvalue %dx.types.CBufRet.f32 %5623, 2
  %5627 = fadd fast float %5624, %5565
  %5628 = fadd fast float %5625, %5566
  %5629 = fadd fast float %5626, %5567
  %5630 = fmul fast float %5627, %5591
  %5631 = call float @dx.op.tertiary.f32(i32 46, float %5628, float %5592, float %5630)  ; FMad(a,b,c)
  %5632 = call float @dx.op.tertiary.f32(i32 46, float %5629, float %5593, float %5631)  ; FMad(a,b,c)
  %5633 = fadd fast float %5632, %5594
  %5634 = fmul fast float %5627, %5596
  %5635 = call float @dx.op.tertiary.f32(i32 46, float %5628, float %5597, float %5634)  ; FMad(a,b,c)
  %5636 = call float @dx.op.tertiary.f32(i32 46, float %5629, float %5598, float %5635)  ; FMad(a,b,c)
  %5637 = fadd fast float %5636, %5599
  %5638 = fmul fast float %5627, %5601
  %5639 = call float @dx.op.tertiary.f32(i32 46, float %5628, float %5602, float %5638)  ; FMad(a,b,c)
  %5640 = call float @dx.op.tertiary.f32(i32 46, float %5629, float %5603, float %5639)  ; FMad(a,b,c)
  %5641 = fadd fast float %5640, %5604
  %5642 = fdiv fast float %5633, %5641
  %5643 = fdiv fast float %5637, %5641
  %5644 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5645 = extractvalue %dx.types.CBufRet.f32 %5644, 0
  %5646 = extractvalue %dx.types.CBufRet.f32 %5644, 1
  %5647 = fmul fast float %5645, %5642
  %5648 = fmul fast float %5646, %5643
  %5649 = extractvalue %dx.types.CBufRet.f32 %5644, 2
  %5650 = extractvalue %dx.types.CBufRet.f32 %5644, 3
  %5651 = fadd fast float %5647, %5649
  %5652 = fadd fast float %5648, %5650
  %5653 = fmul fast float %5605, 8.000000e+00
  %5654 = call float @dx.op.unary.f32(i32 7, float %5653)  ; Saturate(value)
  %5655 = fmul fast float %5651, 2.000000e+00
  %5656 = fmul fast float %5652, 2.000000e+00
  %5657 = fadd fast float %5655, -1.000000e+00
  %5658 = fadd fast float %5656, -1.000000e+00
  %5659 = fmul fast float %5657, %5657
  %5660 = fsub fast float 1.000000e+00, %5659
  %5661 = call float @dx.op.unary.f32(i32 7, float %5660)  ; Saturate(value)
  %5662 = fmul fast float %5658, %5658
  %5663 = fsub fast float 1.000000e+00, %5662
  %5664 = call float @dx.op.unary.f32(i32 7, float %5663)  ; Saturate(value)
  %5665 = fmul fast float %4837, %5661
  %5666 = fmul fast float %5665, %5664
  %5667 = call float @dx.op.unary.f32(i32 7, float %5666)  ; Saturate(value)
  %5668 = fmul fast float %5667, %5654
  %5669 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5651, float %5652, float undef, float undef, i32 0, i32 0, i32 undef, float %5622)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5670 = extractvalue %dx.types.ResRet.f32 %5669, 0
  %5671 = extractvalue %dx.types.ResRet.f32 %5669, 1
  %5672 = extractvalue %dx.types.ResRet.f32 %5669, 2
  %5673 = select i1 %182, float 0.000000e+00, float %5671
  %5674 = select i1 %182, float 0.000000e+00, float %5672
  %5675 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5676 = extractvalue %dx.types.CBufRet.f32 %5675, 2
  %5677 = fmul fast float %5676, %5670
  %5678 = fmul fast float %5673, %5676
  %5679 = fmul fast float %5674, %5676
  %5680 = fsub fast float %5677, %5569
  %5681 = fsub fast float %5678, %5570
  %5682 = fsub fast float %5679, %5571
  %5683 = fmul fast float %5680, %5668
  %5684 = fmul fast float %5681, %5668
  %5685 = fmul fast float %5682, %5668
  %5686 = fadd fast float %5683, %5569
  %5687 = fadd fast float %5684, %5570
  %5688 = fadd fast float %5685, %5571
  br label %5689

; <label>:5689                                    ; preds = %5589, %5561, %5086, %4810
  %5690 = phi float [ %5088, %5086 ], [ %5585, %5561 ], [ %4767, %4810 ], [ %5686, %5589 ]
  %5691 = phi float [ %5089, %5086 ], [ %5586, %5561 ], [ %4768, %4810 ], [ %5687, %5589 ]
  %5692 = phi float [ %5090, %5086 ], [ %5587, %5561 ], [ %4769, %4810 ], [ %5688, %5589 ]
  %5693 = fmul fast float %4816, %4763
  %5694 = fmul fast float %4816, %4764
  %5695 = fmul fast float %4816, %4765
  %5696 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4622, float %4623, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5697 = fcmp fast ogt float %5696, 0x3E7FF19E20000000
  %5698 = fdiv fast float 1.000000e+00, %5696
  %5699 = select i1 %5697, float %5698, float 0.000000e+00
  %5700 = fmul fast float %5699, %4621
  %5701 = fmul fast float %5699, %4622
  %5702 = fmul fast float %5699, %4623
  %5703 = fadd fast float %5700, -1.000000e+00
  %5704 = fadd fast float %5701, -1.000000e+00
  %5705 = fadd fast float %5702, -1.000000e+00
  %5706 = fmul fast float %5703, 5.000000e-01
  %5707 = fmul fast float %5704, 5.000000e-01
  %5708 = fmul fast float %5705, 5.000000e-01
  %5709 = fadd fast float %5706, 1.000000e+00
  %5710 = fadd fast float %5707, 1.000000e+00
  %5711 = fadd fast float %5708, 1.000000e+00
  %5712 = fmul fast float %5690, %4811
  %5713 = fmul fast float %5691, %4812
  %5714 = fmul fast float %5692, %4813
  %5715 = fsub fast float 1.000000e+00, %4646
  %5716 = bitcast float %5715 to i32
  %5717 = sitofp i32 %5716 to float
  %5718 = fmul fast float %5717, 5.000000e+00
  %5719 = fadd fast float %5718, 0xC1EFBF8940000000
  %5720 = fptosi float %5719 to i32
  %5721 = bitcast i32 %5720 to float
  %5722 = fmul fast float %5721, %3994
  %5723 = fmul fast float %4763, %5722
  %5724 = fmul fast float %5723, %4816
  %5725 = fmul fast float %5724, %5709
  %5726 = fmul fast float %4764, %5722
  %5727 = fmul fast float %5726, %4816
  %5728 = fmul fast float %5727, %5710
  %5729 = fmul fast float %4765, %5722
  %5730 = fmul fast float %5729, %4816
  %5731 = fmul fast float %5730, %5711
  %5732 = fmul fast float %5693, %4015
  %5733 = fmul fast float %5694, %4015
  %5734 = fmul fast float %5695, %4015
  %5735 = fadd fast float %5712, %3996
  %5736 = fadd fast float %5735, %5725
  %5737 = fmul fast float %5736, %4015
  %5738 = fadd fast float %5713, %3997
  %5739 = fadd fast float %5738, %5728
  %5740 = fmul fast float %5739, %4015
  %5741 = fadd fast float %5714, %3998
  %5742 = fadd fast float %5741, %5731
  %5743 = fmul fast float %5742, %4015
  %5744 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5745 = extractvalue %dx.types.CBufRet.f32 %5744, 3
  %5746 = fcmp fast oeq float %5745, 0.000000e+00
  br i1 %5746, label %5965, label %5747

; <label>:5747                                    ; preds = %5689
  %5748 = extractvalue %dx.types.CBufRet.f32 %5744, 0
  %5749 = extractvalue %dx.types.CBufRet.f32 %5744, 1
  %5750 = extractvalue %dx.types.CBufRet.f32 %5744, 2
  %5751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.f32 %5751, 0
  %5753 = extractvalue %dx.types.CBufRet.f32 %5751, 1
  %5754 = extractvalue %dx.types.CBufRet.f32 %5751, 2
  %5755 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5756 = extractvalue %dx.types.CBufRet.f32 %5755, 0
  %5757 = extractvalue %dx.types.CBufRet.f32 %5755, 1
  %5758 = call float @dx.op.dot3.f32(i32 55, float %5752, float %5753, float %5754, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5759 = select i1 %182, float %5756, float %5752
  %5760 = select i1 %182, float %5758, float %5753
  %5761 = select i1 %182, float %5757, float %5754
  %5762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5763 = extractvalue %dx.types.CBufRet.f32 %5762, 1
  %5764 = fcmp fast une float %5763, 0.000000e+00
  br i1 %5764, label %5765, label %5782

; <label>:5765                                    ; preds = %5747
  %5766 = fptoui float %77 to i32
  %5767 = fptoui float %78 to i32
  %5768 = lshr i32 %5766, 4
  %5769 = lshr i32 %5767, 4
  %5770 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5771 = extractvalue %dx.types.CBufRet.f32 %5770, 0
  %5772 = fptoui float %5771 to i32
  %5773 = add i32 %5772, 15
  %5774 = lshr i32 %5773, 4
  %5775 = mul i32 %5774, %5769
  %5776 = add i32 %5775, %5768
  %5777 = shl i32 %5776, 3
  %5778 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5777, i32 undef)  ; BufferLoad(srv,index,wot)
  %5779 = extractvalue %dx.types.ResRet.i32 %5778, 0
  %5780 = and i32 %5779, -268435456
  %5781 = icmp eq i32 %5780, -1342177280
  br i1 %5781, label %5787, label %5782

; <label>:5782                                    ; preds = %5765, %5747
  %5783 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4632, float %4633, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5784 = extractvalue %dx.types.ResRet.f32 %5783, 0
  %5785 = extractvalue %dx.types.ResRet.f32 %5783, 1
  %5786 = extractvalue %dx.types.ResRet.f32 %5783, 2
  br label %5787

; <label>:5787                                    ; preds = %5782, %5765
  %5788 = phi float [ %5784, %5782 ], [ 0.000000e+00, %5765 ]
  %5789 = phi float [ %5785, %5782 ], [ 0.000000e+00, %5765 ]
  %5790 = phi float [ %5786, %5782 ], [ 0.000000e+00, %5765 ]
  %5791 = call float @dx.op.binary.f32(i32 36, float %5789, float %5790)  ; FMin(a,b)
  %5792 = call float @dx.op.binary.f32(i32 36, float %5788, float %5791)  ; FMin(a,b)
  %5793 = fcmp fast ogt float %5792, 0.000000e+00
  br i1 %5793, label %5794, label %5965, !dx.controlflow.hints !87

; <label>:5794                                    ; preds = %5787
  %5795 = fmul fast float %5788, %5759
  %5796 = fmul fast float %5789, %5760
  %5797 = fmul fast float %5790, %5761
  %5798 = fsub fast float %5748, %4617
  %5799 = fsub fast float %5749, %4616
  %5800 = fsub fast float %5750, %4615
  %5801 = call float @dx.op.dot3.f32(i32 55, float %5798, float %5799, float %5800, float %5798, float %5799, float %5800)  ; Dot3(ax,ay,az,bx,by,bz)
  %5802 = call float @dx.op.unary.f32(i32 25, float %5801)  ; Rsqrt(value)
  %5803 = fmul fast float %5802, %5798
  %5804 = fmul fast float %5802, %5799
  %5805 = fmul fast float %5802, %5800
  %5806 = call float @dx.op.dot3.f32(i32 55, float %5748, float %5749, float %5750, float %4624, float %4625, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %5807 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4613, float %4612, float %5803, float %5804, float %5805)  ; Dot3(ax,ay,az,bx,by,bz)
  %5808 = call float @dx.op.unary.f32(i32 7, float %5806)  ; Saturate(value)
  %5809 = fmul fast float %5808, %5808
  %5810 = fmul fast float %5809, %4671
  %5811 = call float @dx.op.unary.f32(i32 7, float %5810)  ; Saturate(value)
  %5812 = fmul fast float %5811, %5808
  %5813 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float %5803, float %5804, float %5805)  ; Dot3(ax,ay,az,bx,by,bz)
  %5814 = fmul fast float %5813, %5813
  %5815 = call float @dx.op.unary.f32(i32 6, float %5806)  ; FAbs(value)
  %5816 = fsub fast float 1.000000e+00, %4664
  %5817 = fmul fast float %4646, %4646
  %5818 = fmul fast float %5817, %5816
  %5819 = fadd fast float %5818, %4664
  %5820 = bitcast float %5819 to i32
  %5821 = ashr i32 %5820, 1
  %5822 = add nsw i32 %5821, 532487669
  %5823 = bitcast i32 %5822 to float
  %5824 = fadd fast float %5823, %4646
  %5825 = fmul fast float %4664, %5814
  %5826 = fsub fast float 1.000000e+00, %5814
  %5827 = fadd fast float %5826, %5825
  %5828 = fmul fast float %5815, %5815
  %5829 = fmul fast float %5828, %5816
  %5830 = fadd fast float %5829, %4664
  %5831 = bitcast float %5830 to i32
  %5832 = ashr i32 %5831, 1
  %5833 = add nsw i32 %5832, 532487669
  %5834 = bitcast i32 %5833 to float
  %5835 = fadd fast float %5834, %5815
  %5836 = fmul fast float %5827, %5827
  %5837 = fmul fast float %5836, %5824
  %5838 = fmul fast float %5837, %5835
  %5839 = fdiv fast float 0x3FF0A00000000000, %5838
  %5840 = fmul fast float %5839, %4664
  %5841 = call float @dx.op.unary.f32(i32 6, float %5807)  ; FAbs(value)
  %5842 = fsub fast float 1.000000e+00, %5841
  %5843 = bitcast float %5842 to i32
  %5844 = sitofp i32 %5843 to float
  %5845 = fmul fast float %5844, 5.000000e+00
  %5846 = fadd fast float %5845, 0xC1EFBF8940000000
  %5847 = fptosi float %5846 to i32
  %5848 = bitcast i32 %5847 to float
  %5849 = fsub fast float 1.000000e+00, %4618
  %5850 = fsub fast float 1.000000e+00, %4619
  %5851 = fsub fast float 1.000000e+00, %4644
  %5852 = fmul fast float %5848, %5849
  %5853 = fmul fast float %5848, %5850
  %5854 = fmul fast float %5848, %5851
  %5855 = fadd fast float %5852, %4618
  %5856 = fadd fast float %5853, %4619
  %5857 = fadd fast float %5854, %4644
  br i1 %4783, label %5858, label %5881

; <label>:5858                                    ; preds = %5794
  %5859 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3995, float %5841, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5860 = extractvalue %dx.types.ResRet.f32 %5859, 0
  %5861 = extractvalue %dx.types.ResRet.f32 %5859, 1
  %5862 = extractvalue %dx.types.ResRet.f32 %5859, 2
  %5863 = fadd fast float %5860, -5.000000e-01
  %5864 = fadd fast float %5861, -5.000000e-01
  %5865 = fadd fast float %5862, -5.000000e-01
  %5866 = fmul fast float %4618, 4.000000e+00
  %5867 = fmul fast float %5866, %5849
  %5868 = fmul fast float %5867, %5863
  %5869 = fmul fast float %4619, 4.000000e+00
  %5870 = fmul fast float %5869, %5850
  %5871 = fmul fast float %5870, %5864
  %5872 = fmul fast float %4644, 4.000000e+00
  %5873 = fmul fast float %5872, %5851
  %5874 = fmul fast float %5873, %5865
  %5875 = fadd fast float %5868, %5855
  %5876 = fadd fast float %5871, %5856
  %5877 = fadd fast float %5874, %5857
  %5878 = call float @dx.op.unary.f32(i32 7, float %5875)  ; Saturate(value)
  %5879 = call float @dx.op.unary.f32(i32 7, float %5876)  ; Saturate(value)
  %5880 = call float @dx.op.unary.f32(i32 7, float %5877)  ; Saturate(value)
  br label %5881

; <label>:5881                                    ; preds = %5858, %5794
  %5882 = phi float [ %5878, %5858 ], [ %5855, %5794 ]
  %5883 = phi float [ %5879, %5858 ], [ %5856, %5794 ]
  %5884 = phi float [ %5880, %5858 ], [ %5857, %5794 ]
  %5885 = fmul fast float %5806, 9.843750e-01
  %5886 = fadd fast float %5885, 7.812500e-03
  %5887 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5886, float %4773, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5888 = extractvalue %dx.types.ResRet.f32 %5887, 2
  %5889 = extractvalue %dx.types.ResRet.f32 %5887, 3
  %5890 = fmul fast float %5888, %4618
  %5891 = fmul fast float %5888, %4619
  %5892 = fmul fast float %5888, %4644
  %5893 = fadd fast float %5890, %5889
  %5894 = fadd fast float %5891, %5889
  %5895 = fadd fast float %5892, %5889
  br i1 %4783, label %5896, label %5919

; <label>:5896                                    ; preds = %5881
  %5897 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3995, float %5806, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5898 = extractvalue %dx.types.ResRet.f32 %5897, 0
  %5899 = extractvalue %dx.types.ResRet.f32 %5897, 1
  %5900 = extractvalue %dx.types.ResRet.f32 %5897, 2
  %5901 = fadd fast float %5898, -5.000000e-01
  %5902 = fadd fast float %5899, -5.000000e-01
  %5903 = fadd fast float %5900, -5.000000e-01
  %5904 = fmul fast float %4618, 4.000000e+00
  %5905 = fmul fast float %5904, %5849
  %5906 = fmul fast float %5905, %5901
  %5907 = fmul fast float %4619, 4.000000e+00
  %5908 = fmul fast float %5907, %5850
  %5909 = fmul fast float %5908, %5902
  %5910 = fmul fast float %4644, 4.000000e+00
  %5911 = fmul fast float %5910, %5851
  %5912 = fmul fast float %5911, %5903
  %5913 = fadd fast float %5906, %5893
  %5914 = fadd fast float %5909, %5894
  %5915 = fadd fast float %5912, %5895
  %5916 = call float @dx.op.unary.f32(i32 7, float %5913)  ; Saturate(value)
  %5917 = call float @dx.op.unary.f32(i32 7, float %5914)  ; Saturate(value)
  %5918 = call float @dx.op.unary.f32(i32 7, float %5915)  ; Saturate(value)
  br label %5919

; <label>:5919                                    ; preds = %5896, %5881
  %5920 = phi float [ %5916, %5896 ], [ %5893, %5881 ]
  %5921 = phi float [ %5917, %5896 ], [ %5894, %5881 ]
  %5922 = phi float [ %5918, %5896 ], [ %5895, %5881 ]
  %5923 = call float @dx.op.binary.f32(i32 35, float %5921, float %5922)  ; FMax(a,b)
  %5924 = call float @dx.op.binary.f32(i32 35, float %5920, float %5923)  ; FMax(a,b)
  %5925 = fsub fast float 1.000000e+00, %5924
  %5926 = fmul fast float %5882, %5840
  %5927 = fmul fast float %5883, %5840
  %5928 = fmul fast float %5884, %5840
  %5929 = fsub fast float 1.000000e+00, %5807
  %5930 = bitcast float %5929 to i32
  %5931 = sitofp i32 %5930 to float
  %5932 = fmul fast float %5931, 5.000000e+00
  %5933 = fadd fast float %5932, 0xC1EFBF8940000000
  %5934 = fptosi float %5933 to i32
  %5935 = bitcast i32 %5934 to float
  %5936 = fmul fast float %5935, %3994
  %5937 = fmul fast float %5925, %5936
  %5938 = fmul fast float %5937, %5709
  %5939 = fmul fast float %5937, %5710
  %5940 = fmul fast float %5937, %5711
  %5941 = fadd fast float %5938, %5926
  %5942 = fadd fast float %5939, %5927
  %5943 = fadd fast float %5940, %5928
  %5944 = fmul fast float %5812, %5795
  %5945 = fmul fast float %5944, %5925
  %5946 = fmul fast float %5812, %5796
  %5947 = fmul fast float %5946, %5925
  %5948 = fmul fast float %5812, %5797
  %5949 = fmul fast float %5948, %5925
  %5950 = fmul fast float %5944, %5941
  %5951 = fmul fast float %5946, %5942
  %5952 = fmul fast float %5948, %5943
  %5953 = fadd fast float %5945, %5693
  %5954 = fmul fast float %5953, %4015
  %5955 = fadd fast float %5947, %5694
  %5956 = fmul fast float %5955, %4015
  %5957 = fadd fast float %5949, %5695
  %5958 = fmul fast float %5957, %4015
  %5959 = fadd fast float %5950, %5736
  %5960 = fmul fast float %5959, %4015
  %5961 = fadd fast float %5951, %5739
  %5962 = fmul fast float %5961, %4015
  %5963 = fadd fast float %5952, %5742
  %5964 = fmul fast float %5963, %4015
  br label %5965

; <label>:5965                                    ; preds = %5919, %5787, %5689
  %5966 = phi float [ %5737, %5689 ], [ %5737, %5787 ], [ %5960, %5919 ]
  %5967 = phi float [ %5740, %5689 ], [ %5740, %5787 ], [ %5962, %5919 ]
  %5968 = phi float [ %5743, %5689 ], [ %5743, %5787 ], [ %5964, %5919 ]
  %5969 = phi float [ %5732, %5689 ], [ %5732, %5787 ], [ %5954, %5919 ]
  %5970 = phi float [ %5733, %5689 ], [ %5733, %5787 ], [ %5956, %5919 ]
  %5971 = phi float [ %5734, %5689 ], [ %5734, %5787 ], [ %5958, %5919 ]
  %5972 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5973 = extractvalue %dx.types.CBufRet.i32 %5972, 0
  %5974 = icmp eq i32 %5973, 0
  br i1 %5974, label %6405, label %5975

; <label>:5975                                    ; preds = %5965
  %5976 = fptoui float %77 to i32
  %5977 = fptoui float %78 to i32
  %5978 = lshr i32 %5976, 4
  %5979 = lshr i32 %5977, 4
  %5980 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5981 = extractvalue %dx.types.CBufRet.i32 %5980, 0
  %5982 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5979, i32 %5981, i32 %5978)  ; UMad(a,b,c)
  %5983 = add nsw i32 %5973, -1
  %5984 = call i32 @dx.op.binary.i32(i32 37, i32 %5983, i32 0)  ; IMax(a,b)
  %5985 = call float @dx.op.binary.f32(i32 35, float %72, float 0.000000e+00)  ; FMax(a,b)
  %5986 = fptoui float %5985 to i32
  %5987 = lshr i32 %5986, 5
  %5988 = call i32 @dx.op.binary.i32(i32 40, i32 %5987, i32 8191)  ; UMin(a,b)
  %5989 = shl i32 %5988, 2
  %5990 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5989, i32 undef)  ; BufferLoad(srv,index,wot)
  %5991 = extractvalue %dx.types.ResRet.i32 %5990, 0
  %5992 = lshr i32 %5991, 16
  %5993 = and i32 %5991, 65535
  %5994 = lshr i32 %5991, 21
  %5995 = lshr i32 %5993, 5
  %5996 = call i32 @dx.op.binary.i32(i32 40, i32 %5995, i32 %5984)  ; UMin(a,b)
  %5997 = icmp ugt i32 %5994, %5996
  br i1 %5997, label %6405, label %5998

; <label>:5998                                    ; preds = %5975
  br label %5999

; <label>:5999                                    ; preds = %6395, %5998
  %6000 = phi i32 [ %6402, %6395 ], [ %5994, %5998 ]
  %6001 = phi float [ %6396, %6395 ], [ %5966, %5998 ]
  %6002 = phi float [ %6397, %6395 ], [ %5967, %5998 ]
  %6003 = phi float [ %6398, %6395 ], [ %5968, %5998 ]
  %6004 = phi float [ %6399, %6395 ], [ %5969, %5998 ]
  %6005 = phi float [ %6400, %6395 ], [ %5970, %5998 ]
  %6006 = phi float [ %6401, %6395 ], [ %5971, %5998 ]
  %6007 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6008 = extractvalue %dx.types.CBufRet.i32 %6007, 0
  %6009 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5982, i32 %6008, i32 %6000)  ; UMad(a,b,c)
  %6010 = shl i32 %6009, 2
  %6011 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6010, i32 undef)  ; BufferLoad(srv,index,wot)
  %6012 = extractvalue %dx.types.ResRet.i32 %6011, 0
  %6013 = shl i32 %6000, 5
  %6014 = sub nsw i32 %5992, %6013
  %6015 = call i32 @dx.op.binary.i32(i32 37, i32 %6014, i32 0)  ; IMax(a,b)
  %6016 = call i32 @dx.op.binary.i32(i32 38, i32 %6015, i32 31)  ; IMin(a,b)
  %6017 = sub nsw i32 1, %5992
  %6018 = add nsw i32 %6017, %5993
  %6019 = call i32 @dx.op.binary.i32(i32 37, i32 %6018, i32 0)  ; IMax(a,b)
  %6020 = call i32 @dx.op.binary.i32(i32 38, i32 %6019, i32 32)  ; IMin(a,b)
  %6021 = and i32 %6020, 31
  %6022 = shl i32 -1, %6021
  %6023 = xor i32 %6022, -1
  %6024 = and i32 %6016, 31
  %6025 = shl i32 %6023, %6024
  %6026 = icmp eq i32 %6020, 32
  %6027 = select i1 %6026, i32 -1, i32 %6025
  %6028 = and i32 %6027, %6012
  %6029 = icmp eq i32 %6028, 0
  br i1 %6029, label %6395, label %6030

; <label>:6030                                    ; preds = %5999
  br label %6031

; <label>:6031                                    ; preds = %6111, %6030
  %6032 = phi i32 [ %6043, %6111 ], [ %6028, %6030 ]
  %6033 = phi float [ %6112, %6111 ], [ %6001, %6030 ]
  %6034 = phi float [ %6113, %6111 ], [ %6002, %6030 ]
  %6035 = phi float [ %6114, %6111 ], [ %6003, %6030 ]
  %6036 = phi float [ %6115, %6111 ], [ %6004, %6030 ]
  %6037 = phi float [ %6116, %6111 ], [ %6005, %6030 ]
  %6038 = phi float [ %6117, %6111 ], [ %6006, %6030 ]
  %6039 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6032)  ; FirstbitLo(value)
  %6040 = add i32 %6039, %6013
  %6041 = and i32 %6039, 31
  %6042 = shl i32 1, %6041
  %6043 = xor i32 %6042, %6032
  %6044 = mul i32 %6040, 112
  %6045 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6044, i32 undef)  ; BufferLoad(srv,index,wot)
  %6046 = extractvalue %dx.types.ResRet.f32 %6045, 0
  %6047 = extractvalue %dx.types.ResRet.f32 %6045, 1
  %6048 = extractvalue %dx.types.ResRet.f32 %6045, 2
  %6049 = or i32 %6044, 12
  %6050 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6049, i32 undef)  ; BufferLoad(srv,index,wot)
  %6051 = extractvalue %dx.types.ResRet.f32 %6050, 0
  %6052 = add i32 %6044, 44
  %6053 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6052, i32 undef)  ; BufferLoad(srv,index,wot)
  %6054 = extractvalue %dx.types.ResRet.f32 %6053, 0
  %6055 = add i32 %6044, 48
  %6056 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6055, i32 undef)  ; BufferLoad(srv,index,wot)
  %6057 = extractvalue %dx.types.ResRet.f32 %6056, 0
  %6058 = extractvalue %dx.types.ResRet.f32 %6056, 1
  %6059 = extractvalue %dx.types.ResRet.f32 %6056, 2
  %6060 = add i32 %6044, 80
  %6061 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6060, i32 undef)  ; BufferLoad(srv,index,wot)
  %6062 = extractvalue %dx.types.ResRet.f32 %6061, 1
  %6063 = extractvalue %dx.types.ResRet.f32 %6061, 2
  %6064 = call float @dx.op.dot3.f32(i32 55, float %6046, float %6047, float %6048, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6065 = select i1 %182, float %6062, float %6046
  %6066 = select i1 %182, float %6064, float %6047
  %6067 = select i1 %182, float %6063, float %6048
  %6068 = fsub fast float %6057, %140
  %6069 = fsub fast float %6058, %141
  %6070 = fsub fast float %6059, %142
  %6071 = call float @dx.op.dot3.f32(i32 55, float %6068, float %6069, float %6070, float %6068, float %6069, float %6070)  ; Dot3(ax,ay,az,bx,by,bz)
  %6072 = call float @dx.op.unary.f32(i32 24, float %6071)  ; Sqrt(value)
  %6073 = fdiv fast float 1.000000e+00, %6072
  %6074 = fmul fast float %6073, %6068
  %6075 = fmul fast float %6073, %6069
  %6076 = fmul fast float %6073, %6070
  %6077 = fadd fast float %6072, %6051
  %6078 = fdiv fast float 1.000000e+00, %6077
  %6079 = fmul float %6054, %6078
  %6080 = fmul float %6079, %6079
  %6081 = call float @dx.op.unary.f32(i32 7, float %6080)  ; Saturate(value)
  %6082 = and i32 %6042, %6028
  %6083 = icmp eq i32 %6082, 0
  br i1 %6083, label %6106, label %6084, !dx.controlflow.hints !88

; <label>:6084                                    ; preds = %6031
  %6085 = lshr i32 %5976, 5
  %6086 = lshr i32 %5977, 5
  %6087 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6085, i32 %6086, i32 %6040, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6088 = extractvalue %dx.types.ResRet.i32 %6087, 0
  %6089 = and i32 %6088, 3
  %6090 = icmp eq i32 %6089, 0
  %6091 = select i1 %6090, float 1.000000e+00, float 0.000000e+00
  %6092 = icmp eq i32 %6089, 3
  br i1 %6092, label %6093, label %6106

; <label>:6093                                    ; preds = %6084
  %6094 = lshr i32 %6088, 10
  %6095 = and i32 %6094, 8160
  %6096 = and i32 %5977, 31
  %6097 = or i32 %6095, %6096
  %6098 = lshr i32 %6088, 1
  %6099 = and i32 %6098, 16352
  %6100 = and i32 %5976, 31
  %6101 = or i32 %6099, %6100
  %6102 = lshr i32 %6088, 23
  %6103 = and i32 %6102, 255
  %6104 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6101, i32 %6097, i32 %6103, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6105 = extractvalue %dx.types.ResRet.f32 %6104, 0
  br label %6106

; <label>:6106                                    ; preds = %6093, %6084, %6031
  %6107 = phi float [ %6105, %6093 ], [ %6091, %6084 ], [ 0.000000e+00, %6031 ]
  %6108 = call float @dx.op.binary.f32(i32 36, float %6107, float %6107)  ; FMin(a,b)
  %6109 = call float @dx.op.binary.f32(i32 36, float %6107, float %6108)  ; FMin(a,b)
  %6110 = fcmp fast ogt float %6109, 0.000000e+00
  br i1 %6110, label %6119, label %6111, !dx.controlflow.hints !89

; <label>:6111                                    ; preds = %6351, %6106
  %6112 = phi float [ %6033, %6106 ], [ %6391, %6351 ]
  %6113 = phi float [ %6034, %6106 ], [ %6392, %6351 ]
  %6114 = phi float [ %6035, %6106 ], [ %6393, %6351 ]
  %6115 = phi float [ %6036, %6106 ], [ %6385, %6351 ]
  %6116 = phi float [ %6037, %6106 ], [ %6386, %6351 ]
  %6117 = phi float [ %6038, %6106 ], [ %6387, %6351 ]
  %6118 = icmp eq i32 %6032, %6042
  br i1 %6118, label %6394, label %6031

; <label>:6119                                    ; preds = %6106
  %6120 = fmul fast float %6107, %6065
  %6121 = fmul fast float %6107, %6066
  %6122 = fmul fast float %6107, %6067
  %6123 = fsub fast float %6059, %4417
  %6124 = fcmp fast ogt float %6123, 0.000000e+00
  %6125 = fsub fast float %142, %4417
  %6126 = fcmp fast ogt float %6125, 0.000000e+00
  %6127 = xor i1 %6126, %6124
  %6128 = fsub fast float %4417, %6059
  %6129 = fmul fast float %6128, 2.000000e+00
  %6130 = fadd fast float %6129, %6059
  %6131 = select i1 %6127, float %6059, float %6130
  %6132 = fsub fast float %6131, %142
  %6133 = call float @dx.op.dot3.f32(i32 55, float %6068, float %6069, float %6132, float %6068, float %6069, float %6132)  ; Dot3(ax,ay,az,bx,by,bz)
  %6134 = call float @dx.op.unary.f32(i32 25, float %6133)  ; Rsqrt(value)
  %6135 = fmul fast float %6134, %6068
  %6136 = fmul fast float %6134, %6069
  %6137 = fmul fast float %6134, %6132
  %6138 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4425)  ; Dot3(ax,ay,az,bx,by,bz)
  %6139 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6135, float %6136, float %6137)  ; Dot3(ax,ay,az,bx,by,bz)
  %6140 = fdiv fast float 1.000000e+00, %6139
  %6141 = fmul fast float %6140, %6138
  %6142 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6125, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6143 = fcmp fast ogt float %6142, 0.000000e+00
  %6144 = fcmp fast olt float %6142, 0.000000e+00
  %6145 = zext i1 %6143 to i32
  %6146 = zext i1 %6144 to i32
  %6147 = sub nsw i32 %6145, %6146
  %6148 = sitofp i32 %6147 to float
  %6149 = fsub fast float %6131, %4417
  %6150 = call float @dx.op.dot3.f32(i32 55, float %6068, float %6069, float %6149, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6151 = fcmp fast ogt float %6150, 0.000000e+00
  %6152 = fcmp fast olt float %6150, 0.000000e+00
  %6153 = zext i1 %6151 to i32
  %6154 = zext i1 %6152 to i32
  %6155 = sub nsw i32 %6153, %6154
  %6156 = sitofp i32 %6155 to float
  %6157 = fcmp fast une float %6148, %6156
  br i1 %6157, label %6158, label %6168

; <label>:6158                                    ; preds = %6119
  %6159 = fmul fast float %6141, %6137
  %6160 = fmul fast float %6141, %6136
  %6161 = fmul fast float %6141, %6135
  %6162 = fmul fast float %6161, %6161
  %6163 = fmul fast float %6160, %6160
  %6164 = fadd fast float %6162, %6163
  %6165 = fmul fast float %6159, %6159
  %6166 = fadd fast float %6164, %6165
  %6167 = call float @dx.op.unary.f32(i32 24, float %6166)  ; Sqrt(value)
  br label %6180

; <label>:6168                                    ; preds = %6119
  %6169 = icmp slt i32 %6147, 0
  br i1 %6169, label %6170, label %6180

; <label>:6170                                    ; preds = %6168
  %6171 = fsub fast float %140, %6057
  %6172 = fsub fast float %141, %6058
  %6173 = fsub fast float %142, %6131
  %6174 = fmul fast float %6171, %6171
  %6175 = fmul fast float %6172, %6172
  %6176 = fadd fast float %6174, %6175
  %6177 = fmul fast float %6173, %6173
  %6178 = fadd fast float %6176, %6177
  %6179 = call float @dx.op.unary.f32(i32 24, float %6178)  ; Sqrt(value)
  br label %6180

; <label>:6180                                    ; preds = %6170, %6168, %6158
  %6181 = phi float [ %6167, %6158 ], [ %6179, %6170 ], [ 0.000000e+00, %6168 ]
  %6182 = and i1 %6126, %6124
  %6183 = fsub fast float -0.000000e+00, %6181
  %6184 = select i1 %6182, float -0.000000e+00, float %6183
  %6185 = fmul fast float %4418, 0x3FF7154760000000
  %6186 = fmul fast float %6185, %6184
  %6187 = fmul fast float %4419, 0x3FF7154760000000
  %6188 = fmul fast float %6187, %6184
  %6189 = fmul fast float %4420, 0x3FF7154760000000
  %6190 = fmul fast float %6189, %6184
  %6191 = call float @dx.op.unary.f32(i32 21, float %6186)  ; Exp(value)
  %6192 = call float @dx.op.unary.f32(i32 21, float %6188)  ; Exp(value)
  %6193 = call float @dx.op.unary.f32(i32 21, float %6190)  ; Exp(value)
  %6194 = call float @dx.op.unary.f32(i32 7, float %6191)  ; Saturate(value)
  %6195 = call float @dx.op.unary.f32(i32 7, float %6192)  ; Saturate(value)
  %6196 = call float @dx.op.unary.f32(i32 7, float %6193)  ; Saturate(value)
  %6197 = fmul fast float %6120, %6194
  %6198 = fmul fast float %6121, %6195
  %6199 = fmul fast float %6122, %6196
  %6200 = fsub fast float %6074, %4617
  %6201 = fsub fast float %6075, %4616
  %6202 = fsub fast float %6076, %4615
  %6203 = call float @dx.op.dot3.f32(i32 55, float %6200, float %6201, float %6202, float %6200, float %6201, float %6202)  ; Dot3(ax,ay,az,bx,by,bz)
  %6204 = call float @dx.op.unary.f32(i32 25, float %6203)  ; Rsqrt(value)
  %6205 = fmul fast float %6204, %6200
  %6206 = fmul fast float %6204, %6201
  %6207 = fmul fast float %6204, %6202
  %6208 = call float @dx.op.dot3.f32(i32 55, float %6074, float %6075, float %6076, float %4624, float %4625, float %4626)  ; Dot3(ax,ay,az,bx,by,bz)
  %6209 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4613, float %4612, float %6205, float %6206, float %6207)  ; Dot3(ax,ay,az,bx,by,bz)
  %6210 = call float @dx.op.unary.f32(i32 7, float %6208)  ; Saturate(value)
  %6211 = fmul fast float %6210, %6081
  %6212 = fmul fast float %6210, %6210
  %6213 = fmul fast float %6212, %4671
  %6214 = call float @dx.op.unary.f32(i32 7, float %6213)  ; Saturate(value)
  %6215 = fmul fast float %6211, %6214
  %6216 = bitcast float %6071 to i32
  %6217 = ashr i32 %6216, 1
  %6218 = sub nsw i32 1597463007, %6217
  %6219 = bitcast i32 %6218 to float
  %6220 = fmul fast float %6219, %6068
  %6221 = fmul fast float %6219, %6069
  %6222 = fmul fast float %6219, %6070
  %6223 = fsub fast float %6220, %4617
  %6224 = fsub fast float %6221, %4616
  %6225 = fsub fast float %6222, %4615
  %6226 = call float @dx.op.dot3.f32(i32 55, float %6223, float %6224, float %6225, float %6223, float %6224, float %6225)  ; Dot3(ax,ay,az,bx,by,bz)
  %6227 = call float @dx.op.unary.f32(i32 25, float %6226)  ; Rsqrt(value)
  %6228 = fmul fast float %6223, %6227
  %6229 = fmul fast float %6224, %6227
  %6230 = fmul fast float %6225, %6227
  %6231 = call float @dx.op.dot3.f32(i32 55, float %4624, float %4625, float %4626, float %6228, float %6229, float %6230)  ; Dot3(ax,ay,az,bx,by,bz)
  %6232 = fmul fast float %6231, %6231
  %6233 = call float @dx.op.unary.f32(i32 6, float %6208)  ; FAbs(value)
  %6234 = fsub fast float 1.000000e+00, %4664
  %6235 = fmul fast float %4646, %4646
  %6236 = fmul fast float %6235, %6234
  %6237 = fadd fast float %6236, %4664
  %6238 = bitcast float %6237 to i32
  %6239 = ashr i32 %6238, 1
  %6240 = add nsw i32 %6239, 532487669
  %6241 = bitcast i32 %6240 to float
  %6242 = fadd fast float %6241, %4646
  %6243 = fmul fast float %4664, %6232
  %6244 = fsub fast float 1.000000e+00, %6232
  %6245 = fadd fast float %6244, %6243
  %6246 = fmul fast float %6233, %6233
  %6247 = fmul fast float %6246, %6234
  %6248 = fadd fast float %6247, %4664
  %6249 = bitcast float %6248 to i32
  %6250 = ashr i32 %6249, 1
  %6251 = add nsw i32 %6250, 532487669
  %6252 = bitcast i32 %6251 to float
  %6253 = fadd fast float %6252, %6233
  %6254 = fmul fast float %6245, %6245
  %6255 = fmul fast float %6254, %6242
  %6256 = fmul fast float %6255, %6253
  %6257 = fdiv fast float 1.000000e+00, %6256
  %6258 = bitcast float %4664 to i32
  %6259 = sitofp i32 %6258 to float
  %6260 = fmul fast float %6259, 0x3FE7F73180000000
  %6261 = fadd fast float %6260, 0x41AFE27C40000000
  %6262 = fptosi float %6261 to i32
  %6263 = bitcast i32 %6262 to float
  %6264 = fmul fast float %6054, 0x3FD80E9D60000000
  %6265 = fmul fast float %6264, %6219
  %6266 = fadd fast float %6263, %6265
  %6267 = bitcast float %6266 to i32
  %6268 = sub nsw i32 2129859010, %6267
  %6269 = bitcast i32 %6268 to float
  %6270 = fmul fast float %4664, %6257
  %6271 = fmul fast float %6270, %6263
  %6272 = fmul fast float %6271, %6269
  %6273 = call float @dx.op.unary.f32(i32 6, float %6209)  ; FAbs(value)
  %6274 = fsub fast float 1.000000e+00, %6273
  %6275 = bitcast float %6274 to i32
  %6276 = sitofp i32 %6275 to float
  %6277 = fmul fast float %6276, 5.000000e+00
  %6278 = fadd fast float %6277, 0xC1EFBF8940000000
  %6279 = fptosi float %6278 to i32
  %6280 = bitcast i32 %6279 to float
  %6281 = fsub fast float 1.000000e+00, %4618
  %6282 = fsub fast float 1.000000e+00, %4619
  %6283 = fsub fast float 1.000000e+00, %4644
  %6284 = fmul fast float %6280, %6281
  %6285 = fmul fast float %6280, %6282
  %6286 = fmul fast float %6280, %6283
  %6287 = fadd fast float %6284, %4618
  %6288 = fadd fast float %6285, %4619
  %6289 = fadd fast float %6286, %4644
  br i1 %4783, label %6290, label %6313

; <label>:6290                                    ; preds = %6180
  %6291 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3995, float %6273, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6292 = extractvalue %dx.types.ResRet.f32 %6291, 0
  %6293 = extractvalue %dx.types.ResRet.f32 %6291, 1
  %6294 = extractvalue %dx.types.ResRet.f32 %6291, 2
  %6295 = fadd fast float %6292, -5.000000e-01
  %6296 = fadd fast float %6293, -5.000000e-01
  %6297 = fadd fast float %6294, -5.000000e-01
  %6298 = fmul fast float %4618, 4.000000e+00
  %6299 = fmul fast float %6298, %6281
  %6300 = fmul fast float %6299, %6295
  %6301 = fmul fast float %4619, 4.000000e+00
  %6302 = fmul fast float %6301, %6282
  %6303 = fmul fast float %6302, %6296
  %6304 = fmul fast float %4644, 4.000000e+00
  %6305 = fmul fast float %6304, %6283
  %6306 = fmul fast float %6305, %6297
  %6307 = fadd fast float %6300, %6287
  %6308 = fadd fast float %6303, %6288
  %6309 = fadd fast float %6306, %6289
  %6310 = call float @dx.op.unary.f32(i32 7, float %6307)  ; Saturate(value)
  %6311 = call float @dx.op.unary.f32(i32 7, float %6308)  ; Saturate(value)
  %6312 = call float @dx.op.unary.f32(i32 7, float %6309)  ; Saturate(value)
  br label %6313

; <label>:6313                                    ; preds = %6290, %6180
  %6314 = phi float [ %6310, %6290 ], [ %6287, %6180 ]
  %6315 = phi float [ %6311, %6290 ], [ %6288, %6180 ]
  %6316 = phi float [ %6312, %6290 ], [ %6289, %6180 ]
  %6317 = fmul fast float %6208, 9.843750e-01
  %6318 = fadd fast float %6317, 7.812500e-03
  %6319 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6318, float %4773, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6320 = extractvalue %dx.types.ResRet.f32 %6319, 2
  %6321 = extractvalue %dx.types.ResRet.f32 %6319, 3
  %6322 = fmul fast float %6320, %4618
  %6323 = fmul fast float %6320, %4619
  %6324 = fmul fast float %6320, %4644
  %6325 = fadd fast float %6322, %6321
  %6326 = fadd fast float %6323, %6321
  %6327 = fadd fast float %6324, %6321
  br i1 %4783, label %6328, label %6351

; <label>:6328                                    ; preds = %6313
  %6329 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %3995, float %6208, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6330 = extractvalue %dx.types.ResRet.f32 %6329, 0
  %6331 = extractvalue %dx.types.ResRet.f32 %6329, 1
  %6332 = extractvalue %dx.types.ResRet.f32 %6329, 2
  %6333 = fadd fast float %6330, -5.000000e-01
  %6334 = fadd fast float %6331, -5.000000e-01
  %6335 = fadd fast float %6332, -5.000000e-01
  %6336 = fmul fast float %4618, 4.000000e+00
  %6337 = fmul fast float %6336, %6281
  %6338 = fmul fast float %6337, %6333
  %6339 = fmul fast float %4619, 4.000000e+00
  %6340 = fmul fast float %6339, %6282
  %6341 = fmul fast float %6340, %6334
  %6342 = fmul fast float %4644, 4.000000e+00
  %6343 = fmul fast float %6342, %6283
  %6344 = fmul fast float %6343, %6335
  %6345 = fadd fast float %6338, %6325
  %6346 = fadd fast float %6341, %6326
  %6347 = fadd fast float %6344, %6327
  %6348 = call float @dx.op.unary.f32(i32 7, float %6345)  ; Saturate(value)
  %6349 = call float @dx.op.unary.f32(i32 7, float %6346)  ; Saturate(value)
  %6350 = call float @dx.op.unary.f32(i32 7, float %6347)  ; Saturate(value)
  br label %6351

; <label>:6351                                    ; preds = %6328, %6313
  %6352 = phi float [ %6348, %6328 ], [ %6325, %6313 ]
  %6353 = phi float [ %6349, %6328 ], [ %6326, %6313 ]
  %6354 = phi float [ %6350, %6328 ], [ %6327, %6313 ]
  %6355 = call float @dx.op.binary.f32(i32 35, float %6353, float %6354)  ; FMax(a,b)
  %6356 = call float @dx.op.binary.f32(i32 35, float %6352, float %6355)  ; FMax(a,b)
  %6357 = fsub fast float 1.000000e+00, %6356
  %6358 = fmul fast float %6314, %6272
  %6359 = fmul fast float %6315, %6272
  %6360 = fmul fast float %6316, %6272
  %6361 = fsub fast float 1.000000e+00, %6209
  %6362 = bitcast float %6361 to i32
  %6363 = sitofp i32 %6362 to float
  %6364 = fmul fast float %6363, 5.000000e+00
  %6365 = fadd fast float %6364, 0xC1EFBF8940000000
  %6366 = fptosi float %6365 to i32
  %6367 = bitcast i32 %6366 to float
  %6368 = fmul fast float %6367, %3994
  %6369 = fmul fast float %6357, %6368
  %6370 = fmul fast float %6369, %5709
  %6371 = fmul fast float %6369, %5710
  %6372 = fmul fast float %6369, %5711
  %6373 = fadd fast float %6370, %6358
  %6374 = fadd fast float %6371, %6359
  %6375 = fadd fast float %6372, %6360
  %6376 = fmul fast float %6197, %4015
  %6377 = fmul fast float %6376, %6215
  %6378 = fmul fast float %6377, %6357
  %6379 = fmul fast float %6198, %4015
  %6380 = fmul fast float %6379, %6215
  %6381 = fmul fast float %6380, %6357
  %6382 = fmul fast float %6199, %4015
  %6383 = fmul fast float %6382, %6215
  %6384 = fmul fast float %6383, %6357
  %6385 = fadd fast float %6378, %6036
  %6386 = fadd fast float %6381, %6037
  %6387 = fadd fast float %6384, %6038
  %6388 = fmul fast float %6377, %6373
  %6389 = fmul fast float %6380, %6374
  %6390 = fmul fast float %6383, %6375
  %6391 = fadd fast float %6388, %6033
  %6392 = fadd fast float %6389, %6034
  %6393 = fadd fast float %6390, %6035
  br label %6111

; <label>:6394                                    ; preds = %6111
  br label %6395

; <label>:6395                                    ; preds = %6394, %5999
  %6396 = phi float [ %6001, %5999 ], [ %6112, %6394 ]
  %6397 = phi float [ %6002, %5999 ], [ %6113, %6394 ]
  %6398 = phi float [ %6003, %5999 ], [ %6114, %6394 ]
  %6399 = phi float [ %6004, %5999 ], [ %6115, %6394 ]
  %6400 = phi float [ %6005, %5999 ], [ %6116, %6394 ]
  %6401 = phi float [ %6006, %5999 ], [ %6117, %6394 ]
  %6402 = add i32 %6000, 1
  %6403 = icmp ugt i32 %6402, %5996
  br i1 %6403, label %6404, label %5999

; <label>:6404                                    ; preds = %6395
  br label %6405

; <label>:6405                                    ; preds = %6404, %5975, %5965
  %6406 = phi float [ %5966, %5965 ], [ %5966, %5975 ], [ %6396, %6404 ]
  %6407 = phi float [ %5967, %5965 ], [ %5967, %5975 ], [ %6397, %6404 ]
  %6408 = phi float [ %5968, %5965 ], [ %5968, %5975 ], [ %6398, %6404 ]
  %6409 = phi float [ %5969, %5965 ], [ %5969, %5975 ], [ %6399, %6404 ]
  %6410 = phi float [ %5970, %5965 ], [ %5970, %5975 ], [ %6400, %6404 ]
  %6411 = phi float [ %5971, %5965 ], [ %5971, %5975 ], [ %6401, %6404 ]
  %6412 = call float @dx.op.unary.f32(i32 24, float %4621)  ; Sqrt(value)
  %6413 = call float @dx.op.unary.f32(i32 24, float %4622)  ; Sqrt(value)
  %6414 = call float @dx.op.unary.f32(i32 24, float %4623)  ; Sqrt(value)
  %6415 = fmul fast float %6412, %6409
  %6416 = fmul fast float %6413, %6410
  %6417 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6418 = extractvalue %dx.types.CBufRet.f32 %6417, 0
  br i1 %182, label %6419, label %6442

; <label>:6419                                    ; preds = %6405
  %6420 = fadd fast float %6411, %3992
  %6421 = fmul fast float %6420, %3993
  %6422 = fsub fast float 1.000000e+00, %3993
  %6423 = call float @dx.op.unary.f32(i32 7, float %6422)  ; Saturate(value)
  %6424 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6425 = extractvalue %dx.types.CBufRet.f32 %6424, 3
  %6426 = fmul fast float %6425, %6423
  %6427 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6428 = extractvalue %dx.types.CBufRet.f32 %6427, 0
  %6429 = fmul fast float %6428, %5715
  %6430 = extractvalue %dx.types.CBufRet.f32 %6427, 2
  %6431 = fmul fast float %6430, %4642
  %6432 = fadd fast float %6416, %6415
  %6433 = fmul fast float %6418, %6432
  %6434 = extractvalue %dx.types.CBufRet.f32 %6424, 1
  %6435 = fadd fast float %6426, %6421
  %6436 = fsub fast float %6435, %6429
  %6437 = fadd fast float %6436, %6431
  %6438 = fsub fast float %6437, %6434
  %6439 = extractvalue %dx.types.CBufRet.f32 %6424, 2
  %6440 = fmul fast float %6438, %6439
  %6441 = call float @dx.op.unary.f32(i32 7, float %6440)  ; Saturate(value)
  br label %6458

; <label>:6442                                    ; preds = %6405
  %6443 = fmul fast float %6414, %6411
  %6444 = fmul fast float %6418, %6415
  %6445 = fmul fast float %6418, %6416
  %6446 = fmul fast float %6443, %6418
  %6447 = add i32 %43, 356
  %6448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6447, i32 undef)  ; BufferLoad(srv,index,wot)
  %6449 = extractvalue %dx.types.ResRet.i32 %6448, 0
  %6450 = and i32 %6449, 32
  %6451 = icmp eq i32 %6450, 0
  br i1 %6451, label %6458, label %6452

; <label>:6452                                    ; preds = %6442
  %6453 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6454 = extractvalue %dx.types.CBufRet.f32 %6453, 0
  %6455 = fmul fast float %6454, 0x3FE99999A0000000
  %6456 = fadd fast float %6454, %6444
  %6457 = fadd fast float %6455, %6446
  br label %6458

; <label>:6458                                    ; preds = %6452, %6442, %6419
  %6459 = phi float [ %6433, %6419 ], [ %6456, %6452 ], [ %6444, %6442 ]
  %6460 = phi float [ %6441, %6419 ], [ %6445, %6452 ], [ %6445, %6442 ]
  %6461 = phi float [ 1.000000e+00, %6419 ], [ %6457, %6452 ], [ %6446, %6442 ]
  %6462 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6463 = extractvalue %dx.types.CBufRet.f32 %6462, 0
  %6464 = fmul fast float %6463, %6407
  %6465 = fmul fast float %6463, %6408
  %6466 = fadd fast float %6407, %6406
  %6467 = select i1 %182, float %6466, float %6406
  %6468 = fmul float %6467, %6463
  %6469 = select i1 %182, float 0.000000e+00, float %6464
  %6470 = select i1 %182, float 0.000000e+00, float %6465
  %6471 = fmul fast float %6459, %6412
  %6472 = fmul fast float %6460, %6413
  %6473 = fmul fast float %6461, %6414
  %6474 = fadd fast float %6468, %6471
  %6475 = fadd fast float %6469, %6472
  %6476 = fadd fast float %6470, %6473
  %6477 = select i1 %182, float %6460, float %6475
  %6478 = select i1 %182, float %6461, float %6476
  %6479 = call float @dx.op.binary.f32(i32 36, float %6474, float 3.225500e+04)  ; FMin(a,b)
  %6480 = call float @dx.op.binary.f32(i32 36, float %6477, float 3.225500e+04)  ; FMin(a,b)
  %6481 = call float @dx.op.binary.f32(i32 36, float %6478, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6479)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6480)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6481)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

