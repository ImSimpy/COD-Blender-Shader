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
; AMBIENT_COLOR            0   xyz         5     NONE   float       
; HIGHLIGHT_DIR_VIS        0   xyzw        6     NONE   float       
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
; shader hash: 8f1af9012d43434f49436a995f2315ca
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
;   output 0 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 1 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
;   output 2 depends on inputs: { 0, 1, 3, 5, 6, 7, 8, 9, 12, 13, 14, 16, 17, 18, 19, 28, 29, 32, 33, 34, 35, 36, 38, 39 }
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
  %52 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %53 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %54 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %55 = call float @dx.op.loadInput.f32(i32 4, i32 4, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %56 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %57 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %58 = call float @dx.op.loadInput.f32(i32 4, i32 3, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %59 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %60 = call float @dx.op.loadInput.f32(i32 4, i32 2, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %61 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %62 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 2, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %63 = call float @dx.op.loadInput.f32(i32 4, i32 1, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %64 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 0, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %65 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 1, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %66 = call float @dx.op.loadInput.f32(i32 4, i32 0, i32 0, i8 3, i32 undef)  ; LoadInput(inputSigId,rowIndex,colIndex,gsVertexAxis)
  %67 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %68 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %69 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %70 = extractvalue %dx.types.CBufRet.f32 %69, 0
  %71 = fmul fast float %70, %64
  %72 = fmul fast float %70, %65
  %73 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float %56, float %57, float %58)  ; Dot3(ax,ay,az,bx,by,bz)
  %74 = bitcast float %73 to i32
  %75 = ashr i32 %74, 1
  %76 = sub nsw i32 1597250115, %75
  %77 = bitcast i32 %76 to float
  %78 = fmul fast float %77, %56
  %79 = fmul fast float %77, %57
  %80 = fmul fast float %77, %58
  %81 = fmul fast float %57, %54
  %82 = fmul fast float %58, %53
  %83 = fsub fast float %81, %82
  %84 = fmul fast float %58, %52
  %85 = fmul fast float %56, %54
  %86 = fsub fast float %84, %85
  %87 = fmul fast float %56, %53
  %88 = fmul fast float %57, %52
  %89 = fsub fast float %87, %88
  %90 = fmul fast float %83, %55
  %91 = fmul fast float %86, %55
  %92 = fmul fast float %89, %55
  %93 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %94 = extractvalue %dx.types.CBufRet.f32 %93, 2
  %95 = extractvalue %dx.types.CBufRet.f32 %93, 3
  %96 = fmul fast float %71, 2.000000e+00
  %97 = fmul fast float %96, %94
  %98 = fmul fast float %72, 2.000000e+00
  %99 = fmul fast float %98, %95
  %100 = fsub fast float 1.000000e+00, %97
  %101 = fsub fast float 1.000000e+00, %99
  %102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 93)  ; CBufferLoadLegacy(handle,regIndex)
  %103 = extractvalue %dx.types.CBufRet.f32 %102, 0
  %104 = extractvalue %dx.types.CBufRet.f32 %102, 1
  %105 = extractvalue %dx.types.CBufRet.f32 %102, 2
  %106 = fmul fast float %100, %103
  %107 = fmul fast float %100, %104
  %108 = fmul fast float %100, %105
  %109 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 94)  ; CBufferLoadLegacy(handle,regIndex)
  %110 = extractvalue %dx.types.CBufRet.f32 %109, 0
  %111 = extractvalue %dx.types.CBufRet.f32 %109, 1
  %112 = extractvalue %dx.types.CBufRet.f32 %109, 2
  %113 = fmul fast float %101, %110
  %114 = fmul fast float %101, %111
  %115 = fmul fast float %101, %112
  %116 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 95)  ; CBufferLoadLegacy(handle,regIndex)
  %117 = extractvalue %dx.types.CBufRet.f32 %116, 0
  %118 = extractvalue %dx.types.CBufRet.f32 %116, 1
  %119 = extractvalue %dx.types.CBufRet.f32 %116, 2
  %120 = fadd fast float %113, %117
  %121 = fadd fast float %120, %106
  %122 = fadd fast float %114, %118
  %123 = fadd fast float %122, %107
  %124 = fadd fast float %115, %119
  %125 = fadd fast float %124, %108
  %126 = fmul fast float %121, %66
  %127 = fmul fast float %123, %66
  %128 = fmul fast float %125, %66
  %129 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %130 = extractvalue %dx.types.CBufRet.f32 %129, 2
  %131 = extractvalue %dx.types.CBufRet.f32 %129, 3
  %132 = fmul fast float %130, %71
  %133 = fmul fast float %131, %72
  %134 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %10, i32 0, i32 undef)  ; BufferLoad(srv,index,wot)
  %135 = extractvalue %dx.types.ResRet.i32 %134, 0
  %136 = and i32 %135, 114688
  %137 = icmp ne i32 %136, 0
  %138 = select i1 %137, float %132, float 0.000000e+00
  %139 = select i1 %137, float %133, float 0.000000e+00
  %140 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %11, %dx.types.Handle %40, float %138, float %139, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %141 = extractvalue %dx.types.ResRet.f32 %140, 0
  %142 = fmul fast float %141, 2.550000e+02
  %143 = fptoui float %142 to i32
  %144 = select i1 %137, i32 %143, i32 0
  %145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %146 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %147 = extractvalue %dx.types.CBufRet.i32 %146, 3
  %148 = and i32 %147, 3
  %149 = icmp ne i32 %148, 0
  %150 = and i32 %147, 4
  %151 = icmp ne i32 %150, 0
  %152 = and i1 %149, %151
  br i1 %152, label %153, label %164

; <label>:153                                     ; preds = %0
  %154 = extractvalue %dx.types.CBufRet.f32 %145, 3
  %155 = fmul fast float %154, %72
  %156 = extractvalue %dx.types.CBufRet.f32 %145, 2
  %157 = fmul fast float %156, %71
  %158 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %28, %dx.types.Handle %39, float %157, float %155, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %159 = extractvalue %dx.types.ResRet.f32 %158, 0
  %160 = fsub fast float 1.000000e+00, %159
  %161 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 223)  ; CBufferLoadLegacy(handle,regIndex)
  %162 = extractvalue %dx.types.CBufRet.f32 %161, 0
  %163 = fcmp fast olt float %160, %162
  br label %167

; <label>:164                                     ; preds = %0
  %165 = icmp eq i32 %150, 0
  %166 = and i1 %149, %165
  br label %167

; <label>:167                                     ; preds = %164, %153
  %168 = phi i1 [ %163, %153 ], [ %166, %164 ]
  %169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 23)  ; CBufferLoadLegacy(handle,regIndex)
  %170 = extractvalue %dx.types.CBufRet.f32 %169, 2
  %171 = fmul fast float %170, 0x3FE3C6EF40000000
  %172 = frem fast float %71, 2.560000e+02
  %173 = frem fast float %72, 2.560000e+02
  %174 = fptoui float %172 to i32
  %175 = fptoui float %173 to i32
  %176 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %21, i32 0, i32 %174, i32 %175, i32 undef, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %177 = extractvalue %dx.types.ResRet.f32 %176, 0
  %178 = extractvalue %dx.types.ResRet.f32 %176, 1
  %179 = fadd fast float %177, %171
  %180 = fadd fast float %178, %171
  %181 = call float @dx.op.unary.f32(i32 22, float %179)  ; Frc(value)
  %182 = call float @dx.op.unary.f32(i32 22, float %180)  ; Frc(value)
  %183 = add i32 %43, 156
  %184 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %183, i32 undef)  ; BufferLoad(srv,index,wot)
  %185 = extractvalue %dx.types.ResRet.i32 %184, 0
  %186 = shl i32 %185, 4
  %187 = and i32 %186, 32752
  %188 = call float @dx.op.legacyF16ToF32(i32 131, i32 %187)  ; LegacyF16ToF32(value)
  %189 = lshr i32 %185, 7
  %190 = and i32 %189, 32752
  %191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %190)  ; LegacyF16ToF32(value)
  %192 = lshr i32 %185, 22
  %193 = shl nuw nsw i32 %192, 5
  %194 = call float @dx.op.legacyF16ToF32(i32 131, i32 %193)  ; LegacyF16ToF32(value)
  %195 = add i32 %43, 216
  %196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %197 = extractvalue %dx.types.ResRet.i32 %196, 0
  %198 = and i32 %197, 255
  %199 = uitofp i32 %198 to float
  %200 = fmul fast float %199, 0x3F70101020000000
  %201 = lshr i32 %197, 8
  %202 = and i32 %201, 255
  %203 = uitofp i32 %202 to float
  %204 = fmul fast float %203, 0x3F70101020000000
  %205 = lshr i32 %197, 16
  %206 = and i32 %205, 255
  %207 = uitofp i32 %206 to float
  %208 = fmul fast float %207, 0x3F70101020000000
  %209 = add i32 %43, 36
  %210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %209, i32 undef)  ; BufferLoad(srv,index,wot)
  %211 = extractvalue %dx.types.ResRet.i32 %210, 0
  %212 = and i32 %211, 65535
  %213 = call float @dx.op.legacyF16ToF32(i32 131, i32 %212)  ; LegacyF16ToF32(value)
  %214 = lshr i32 %211, 16
  %215 = call float @dx.op.legacyF16ToF32(i32 131, i32 %214)  ; LegacyF16ToF32(value)
  %216 = add i32 %43, 288
  %217 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %216, i32 undef)  ; BufferLoad(srv,index,wot)
  %218 = extractvalue %dx.types.ResRet.i32 %217, 0
  %219 = and i32 %218, 65535
  %220 = call float @dx.op.legacyF16ToF32(i32 131, i32 %219)  ; LegacyF16ToF32(value)
  %221 = lshr i32 %218, 16
  %222 = call float @dx.op.legacyF16ToF32(i32 131, i32 %221)  ; LegacyF16ToF32(value)
  %223 = fmul fast float %220, 0x3F50624DE0000000
  %224 = fmul fast float %222, 0x3F50624DE0000000
  %225 = add i32 %43, 172
  %226 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %225, i32 undef)  ; BufferLoad(srv,index,wot)
  %227 = extractvalue %dx.types.ResRet.i32 %226, 0
  %228 = shl i32 %227, 4
  %229 = and i32 %228, 32752
  %230 = call float @dx.op.legacyF16ToF32(i32 131, i32 %229)  ; LegacyF16ToF32(value)
  %231 = lshr i32 %227, 7
  %232 = and i32 %231, 32752
  %233 = call float @dx.op.legacyF16ToF32(i32 131, i32 %232)  ; LegacyF16ToF32(value)
  %234 = lshr i32 %227, 22
  %235 = shl nuw nsw i32 %234, 5
  %236 = call float @dx.op.legacyF16ToF32(i32 131, i32 %235)  ; LegacyF16ToF32(value)
  %237 = add i32 %43, 232
  %238 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %239 = extractvalue %dx.types.ResRet.i32 %238, 0
  %240 = and i32 %239, 255
  %241 = uitofp i32 %240 to float
  %242 = fmul fast float %241, 0x3F70101020000000
  %243 = lshr i32 %239, 8
  %244 = and i32 %243, 255
  %245 = uitofp i32 %244 to float
  %246 = fmul fast float %245, 0x3F70101020000000
  %247 = lshr i32 %239, 16
  %248 = and i32 %247, 255
  %249 = uitofp i32 %248 to float
  %250 = fmul fast float %249, 0x3F70101020000000
  %251 = add i32 %43, 52
  %252 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %251, i32 undef)  ; BufferLoad(srv,index,wot)
  %253 = extractvalue %dx.types.ResRet.i32 %252, 0
  %254 = and i32 %253, 65535
  %255 = call float @dx.op.legacyF16ToF32(i32 131, i32 %254)  ; LegacyF16ToF32(value)
  %256 = lshr i32 %253, 16
  %257 = call float @dx.op.legacyF16ToF32(i32 131, i32 %256)  ; LegacyF16ToF32(value)
  %258 = add i32 %43, 304
  %259 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %258, i32 undef)  ; BufferLoad(srv,index,wot)
  %260 = extractvalue %dx.types.ResRet.i32 %259, 0
  %261 = and i32 %260, 65535
  %262 = call float @dx.op.legacyF16ToF32(i32 131, i32 %261)  ; LegacyF16ToF32(value)
  %263 = lshr i32 %260, 16
  %264 = call float @dx.op.legacyF16ToF32(i32 131, i32 %263)  ; LegacyF16ToF32(value)
  %265 = fmul fast float %262, 0x3F50624DE0000000
  %266 = fmul fast float %264, 0x3F50624DE0000000
  %267 = add i32 %43, 188
  %268 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %267, i32 undef)  ; BufferLoad(srv,index,wot)
  %269 = extractvalue %dx.types.ResRet.i32 %268, 0
  %270 = shl i32 %269, 4
  %271 = and i32 %270, 32752
  %272 = call float @dx.op.legacyF16ToF32(i32 131, i32 %271)  ; LegacyF16ToF32(value)
  %273 = lshr i32 %269, 7
  %274 = and i32 %273, 32752
  %275 = call float @dx.op.legacyF16ToF32(i32 131, i32 %274)  ; LegacyF16ToF32(value)
  %276 = lshr i32 %269, 22
  %277 = shl nuw nsw i32 %276, 5
  %278 = call float @dx.op.legacyF16ToF32(i32 131, i32 %277)  ; LegacyF16ToF32(value)
  %279 = add i32 %43, 248
  %280 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %281 = extractvalue %dx.types.ResRet.i32 %280, 0
  %282 = and i32 %281, 255
  %283 = uitofp i32 %282 to float
  %284 = fmul fast float %283, 0x3F70101020000000
  %285 = lshr i32 %281, 8
  %286 = and i32 %285, 255
  %287 = uitofp i32 %286 to float
  %288 = fmul fast float %287, 0x3F70101020000000
  %289 = lshr i32 %281, 16
  %290 = and i32 %289, 255
  %291 = uitofp i32 %290 to float
  %292 = fmul fast float %291, 0x3F70101020000000
  %293 = add i32 %43, 68
  %294 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %293, i32 undef)  ; BufferLoad(srv,index,wot)
  %295 = extractvalue %dx.types.ResRet.i32 %294, 0
  %296 = and i32 %295, 65535
  %297 = call float @dx.op.legacyF16ToF32(i32 131, i32 %296)  ; LegacyF16ToF32(value)
  %298 = lshr i32 %295, 16
  %299 = call float @dx.op.legacyF16ToF32(i32 131, i32 %298)  ; LegacyF16ToF32(value)
  %300 = add i32 %43, 320
  %301 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %300, i32 undef)  ; BufferLoad(srv,index,wot)
  %302 = extractvalue %dx.types.ResRet.i32 %301, 0
  %303 = and i32 %302, 65535
  %304 = call float @dx.op.legacyF16ToF32(i32 131, i32 %303)  ; LegacyF16ToF32(value)
  %305 = lshr i32 %302, 16
  %306 = call float @dx.op.legacyF16ToF32(i32 131, i32 %305)  ; LegacyF16ToF32(value)
  %307 = fmul fast float %304, 0x3F50624DE0000000
  %308 = fmul fast float %306, 0x3F50624DE0000000
  %309 = add i32 %43, 204
  %310 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %309, i32 undef)  ; BufferLoad(srv,index,wot)
  %311 = extractvalue %dx.types.ResRet.i32 %310, 0
  %312 = shl i32 %311, 4
  %313 = and i32 %312, 32752
  %314 = call float @dx.op.legacyF16ToF32(i32 131, i32 %313)  ; LegacyF16ToF32(value)
  %315 = lshr i32 %311, 7
  %316 = and i32 %315, 32752
  %317 = call float @dx.op.legacyF16ToF32(i32 131, i32 %316)  ; LegacyF16ToF32(value)
  %318 = lshr i32 %311, 22
  %319 = shl nuw nsw i32 %318, 5
  %320 = call float @dx.op.legacyF16ToF32(i32 131, i32 %319)  ; LegacyF16ToF32(value)
  %321 = add i32 %43, 264
  %322 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %323 = extractvalue %dx.types.ResRet.i32 %322, 0
  %324 = and i32 %323, 255
  %325 = uitofp i32 %324 to float
  %326 = fmul fast float %325, 0x3F70101020000000
  %327 = lshr i32 %323, 8
  %328 = and i32 %327, 255
  %329 = uitofp i32 %328 to float
  %330 = fmul fast float %329, 0x3F70101020000000
  %331 = lshr i32 %323, 16
  %332 = and i32 %331, 255
  %333 = uitofp i32 %332 to float
  %334 = fmul fast float %333, 0x3F70101020000000
  %335 = add i32 %43, 84
  %336 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %335, i32 undef)  ; BufferLoad(srv,index,wot)
  %337 = extractvalue %dx.types.ResRet.i32 %336, 0
  %338 = and i32 %337, 65535
  %339 = call float @dx.op.legacyF16ToF32(i32 131, i32 %338)  ; LegacyF16ToF32(value)
  %340 = lshr i32 %337, 16
  %341 = call float @dx.op.legacyF16ToF32(i32 131, i32 %340)  ; LegacyF16ToF32(value)
  %342 = add i32 %43, 336
  %343 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %342, i32 undef)  ; BufferLoad(srv,index,wot)
  %344 = extractvalue %dx.types.ResRet.i32 %343, 0
  %345 = and i32 %344, 65535
  %346 = call float @dx.op.legacyF16ToF32(i32 131, i32 %345)  ; LegacyF16ToF32(value)
  %347 = lshr i32 %344, 16
  %348 = call float @dx.op.legacyF16ToF32(i32 131, i32 %347)  ; LegacyF16ToF32(value)
  %349 = fmul fast float %346, 0x3F50624DE0000000
  %350 = fmul fast float %348, 0x3F50624DE0000000
  %351 = add i32 %43, 348
  %352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %353 = extractvalue %dx.types.ResRet.i32 %352, 0
  %354 = and i32 %353, 32
  %355 = icmp eq i32 %354, 0
  %356 = and i32 %353, 64
  %357 = icmp eq i32 %356, 0
  %358 = and i32 %353, 128
  %359 = icmp eq i32 %358, 0
  %360 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %361 = extractvalue %dx.types.ResRet.i32 %360, 0
  %362 = and i32 %361, 2
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %377, label %364

; <label>:364                                     ; preds = %167
  %365 = add i32 %43, 488
  %366 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %365, i32 undef)  ; BufferLoad(srv,index,wot)
  %367 = extractvalue %dx.types.ResRet.i32 %366, 0
  %368 = add i32 %367, 0
  %369 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %368, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %370 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %369, %dx.types.Handle %68, float %59, float %60, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %371 = extractvalue %dx.types.ResRet.f32 %370, 0
  %372 = extractvalue %dx.types.ResRet.f32 %370, 1
  %373 = extractvalue %dx.types.ResRet.f32 %370, 2
  %374 = fmul fast float %371, %61
  %375 = fmul fast float %372, %62
  %376 = fmul fast float %373, %63
  br label %377

; <label>:377                                     ; preds = %364, %167
  %378 = phi float [ %63, %167 ], [ %376, %364 ]
  %379 = phi float [ %62, %167 ], [ %375, %364 ]
  %380 = phi float [ %61, %167 ], [ %374, %364 ]
  %381 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %351, i32 undef)  ; BufferLoad(srv,index,wot)
  %382 = extractvalue %dx.types.ResRet.i32 %381, 0
  %383 = and i32 %382, 2
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %404, label %385

; <label>:385                                     ; preds = %377
  %386 = add i32 %43, 44
  %387 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %386, i32 undef)  ; BufferLoad(srv,index,wot)
  %388 = extractvalue %dx.types.ResRet.i32 %387, 0
  %389 = and i32 %388, 1
  %390 = icmp ne i32 %389, 0
  %391 = select i1 %390, float %380, float 1.000000e+00
  %392 = add i32 %43, 60
  %393 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %392, i32 undef)  ; BufferLoad(srv,index,wot)
  %394 = extractvalue %dx.types.ResRet.i32 %393, 0
  %395 = and i32 %394, 1
  %396 = icmp ne i32 %395, 0
  %397 = select i1 %396, float %379, float 1.000000e+00
  %398 = add i32 %43, 76
  %399 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %398, i32 undef)  ; BufferLoad(srv,index,wot)
  %400 = extractvalue %dx.types.ResRet.i32 %399, 0
  %401 = and i32 %400, 1
  %402 = icmp ne i32 %401, 0
  %403 = select i1 %402, float %378, float 1.000000e+00
  br label %404

; <label>:404                                     ; preds = %385, %377
  %405 = phi float [ %378, %377 ], [ %403, %385 ]
  %406 = phi float [ %379, %377 ], [ %397, %385 ]
  %407 = phi float [ %380, %377 ], [ %391, %385 ]
  %408 = lshr i32 %382, 20
  %409 = and i32 %408, 3
  %410 = add nuw nsw i32 %409, 1
  %411 = add i32 %43, 24
  %412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %413 = extractvalue %dx.types.ResRet.i32 %412, 0
  %414 = add i32 %43, 28
  %415 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %414, i32 undef)  ; BufferLoad(srv,index,wot)
  %416 = extractvalue %dx.types.ResRet.i32 %415, 0
  %417 = or i32 %416, %413
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %877, label %419

; <label>:419                                     ; preds = %404
  %420 = and i32 %413, 262144
  %421 = icmp ne i32 %420, 0
  %422 = select i1 %421, float %46, float 1.000000e+00
  %423 = select i1 %421, float %47, float 0.000000e+00
  %424 = select i1 %421, float %48, float 0.000000e+00
  %425 = select i1 %421, float %49, float 1.000000e+00
  %426 = select i1 %421, float %50, float %59
  %427 = select i1 %421, float %51, float %60
  %428 = add i32 %43, 284
  %429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %430 = extractvalue %dx.types.ResRet.i32 %429, 0
  %431 = lshr i32 %430, 16
  %432 = call float @dx.op.legacyF16ToF32(i32 131, i32 %431)  ; LegacyF16ToF32(value)
  %433 = fmul fast float %432, 0x3F50624DE0000000
  %434 = add i32 %43, 88
  %435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %434, i32 undef)  ; BufferLoad(srv,index,wot)
  %436 = extractvalue %dx.types.ResRet.i32 %435, 0
  %437 = lshr i32 %436, 16
  %438 = and i32 %437, 255
  %439 = lshr i32 %436, 24
  %440 = add i32 %43, 292
  %441 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %440, i32 undef)  ; BufferLoad(srv,index,wot)
  %442 = extractvalue %dx.types.ResRet.i32 %441, 0
  %443 = and i32 %442, 65535
  %444 = call float @dx.op.legacyF16ToF32(i32 131, i32 %443)  ; LegacyF16ToF32(value)
  %445 = lshr i32 %442, 16
  %446 = call float @dx.op.legacyF16ToF32(i32 131, i32 %445)  ; LegacyF16ToF32(value)
  %447 = add i32 %43, 32
  %448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %447, i32 undef)  ; BufferLoad(srv,index,wot)
  %449 = extractvalue %dx.types.ResRet.i32 %448, 0
  %450 = lshr i32 %449, 22
  %451 = shl nuw nsw i32 %450, 5
  %452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %451)  ; LegacyF16ToF32(value)
  %453 = shl i32 %449, 4
  %454 = and i32 %453, 32752
  %455 = call float @dx.op.legacyF16ToF32(i32 131, i32 %454)  ; LegacyF16ToF32(value)
  %456 = lshr i32 %449, 7
  %457 = and i32 %456, 32752
  %458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %457)  ; LegacyF16ToF32(value)
  %459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %460 = extractvalue %dx.types.CBufRet.f32 %459, 3
  %461 = fmul fast float %460, 1.000000e+03
  %462 = fmul fast float %223, %461
  %463 = call float @dx.op.unary.f32(i32 22, float %462)  ; Frc(value)
  %464 = fadd fast float %463, %213
  %465 = fmul fast float %224, %461
  %466 = call float @dx.op.unary.f32(i32 22, float %465)  ; Frc(value)
  %467 = fadd fast float %466, %215
  %468 = fmul fast float %433, %461
  %469 = call float @dx.op.unary.f32(i32 22, float %468)  ; Frc(value)
  %470 = fmul fast float %469, 0x401921FB60000000
  %471 = fadd fast float %470, %452
  %472 = call float @dx.op.unary.f32(i32 13, float %471)  ; Sin(value)
  %473 = call float @dx.op.unary.f32(i32 12, float %471)  ; Cos(value)
  %474 = fsub fast float -0.000000e+00, %472
  %475 = fadd fast float %426, -5.000000e-01
  %476 = fadd fast float %427, -5.000000e-01
  %477 = fmul fast float %444, %475
  %478 = fmul fast float %446, %476
  %479 = fadd fast float %477, 5.000000e-01
  %480 = fadd fast float %478, 5.000000e-01
  %481 = fmul fast float %455, %479
  %482 = fmul fast float %458, %480
  %483 = fmul fast float %473, %481
  %484 = call float @dx.op.tertiary.f32(i32 46, float %474, float %482, float %483)  ; FMad(a,b,c)
  %485 = fmul fast float %472, %481
  %486 = call float @dx.op.tertiary.f32(i32 46, float %473, float %482, float %485)  ; FMad(a,b,c)
  %487 = fadd fast float %464, %484
  %488 = fadd fast float %467, %486
  %489 = icmp ugt i32 %438, 1
  %490 = icmp ugt i32 %436, 33554431
  %491 = or i1 %490, %489
  br i1 %491, label %492, label %517

; <label>:492                                     ; preds = %419
  %493 = add i32 %43, 228
  %494 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %493, i32 undef)  ; BufferLoad(srv,index,wot)
  %495 = extractvalue %dx.types.ResRet.i32 %494, 0
  %496 = lshr i32 %495, 16
  %497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %496)  ; LegacyF16ToF32(value)
  %498 = fmul fast float %460, %497
  %499 = call float @dx.op.unary.f32(i32 22, float %498)  ; Frc(value)
  %500 = mul nuw nsw i32 %438, %439
  %501 = uitofp i32 %500 to float
  %502 = fmul fast float %499, %501
  %503 = call float @dx.op.unary.f32(i32 27, float %502)  ; Round_ni(value)
  %504 = fptoui float %503 to i32
  %505 = urem i32 %504, %438
  %506 = udiv i32 %504, %439
  %507 = call float @dx.op.unary.f32(i32 22, float %487)  ; Frc(value)
  %508 = call float @dx.op.unary.f32(i32 22, float %488)  ; Frc(value)
  %509 = uitofp i32 %505 to float
  %510 = uitofp i32 %506 to float
  %511 = fadd fast float %507, %509
  %512 = fadd fast float %508, %510
  %513 = uitofp i32 %438 to float
  %514 = uitofp i32 %439 to float
  %515 = fdiv fast float %511, %513
  %516 = fdiv fast float %512, %514
  br label %517

; <label>:517                                     ; preds = %492, %419
  %518 = phi float [ %515, %492 ], [ %487, %419 ]
  %519 = phi float [ %516, %492 ], [ %488, %419 ]
  %520 = and i32 %413, 16
  %521 = icmp eq i32 %520, 0
  br i1 %521, label %718, label %522

; <label>:522                                     ; preds = %517
  %523 = add i32 %43, 376
  %524 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %523, i32 undef)  ; BufferLoad(srv,index,wot)
  %525 = extractvalue %dx.types.ResRet.i32 %524, 0
  %526 = add i32 %525, 0
  %527 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %526, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %528 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %527, %dx.types.Handle %67, float %518, float %519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %529 = extractvalue %dx.types.ResRet.f32 %528, 0
  %530 = extractvalue %dx.types.ResRet.f32 %528, 1
  %531 = extractvalue %dx.types.ResRet.f32 %528, 2
  %532 = extractvalue %dx.types.ResRet.f32 %528, 3
  %533 = and i32 %436, 255
  %534 = uitofp i32 %533 to float
  %535 = lshr i32 %436, 8
  %536 = and i32 %535, 255
  %537 = uitofp i32 %536 to float
  %538 = fmul fast float %532, %534
  %539 = fadd fast float %538, %537
  %540 = fmul fast float %539, 0x3F70101000000000
  %541 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %542 = extractvalue %dx.types.ResRet.i32 %541, 0
  %543 = and i32 %542, 512
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %553, label %545

; <label>:545                                     ; preds = %522
  %546 = add i32 %43, 456
  %547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %546, i32 undef)  ; BufferLoad(srv,index,wot)
  %548 = extractvalue %dx.types.ResRet.i32 %547, 0
  %549 = add i32 %548, 0
  %550 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %549, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %551 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %550, %dx.types.Handle %68, float %518, float %519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %552 = extractvalue %dx.types.ResRet.f32 %551, 0
  br label %553

; <label>:553                                     ; preds = %545, %522
  %554 = phi float [ %552, %545 ], [ 1.000000e+00, %522 ]
  %555 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %556 = extractvalue %dx.types.ResRet.i32 %555, 0
  %557 = and i32 %556, 33554432
  %558 = icmp eq i32 %557, 0
  br i1 %558, label %665, label %559

; <label>:559                                     ; preds = %553
  %560 = add i32 %43, 224
  %561 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %560, i32 undef)  ; BufferLoad(srv,index,wot)
  %562 = extractvalue %dx.types.ResRet.i32 %561, 0
  %563 = and i32 %562, 65535
  %564 = call float @dx.op.legacyF16ToF32(i32 131, i32 %563)  ; LegacyF16ToF32(value)
  %565 = lshr i32 %562, 16
  %566 = call float @dx.op.legacyF16ToF32(i32 131, i32 %565)  ; LegacyF16ToF32(value)
  %567 = add i32 %43, 228
  %568 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %567, i32 undef)  ; BufferLoad(srv,index,wot)
  %569 = extractvalue %dx.types.ResRet.i32 %568, 0
  %570 = and i32 %569, 65535
  %571 = call float @dx.op.legacyF16ToF32(i32 131, i32 %570)  ; LegacyF16ToF32(value)
  %572 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %195, i32 undef)  ; BufferLoad(srv,index,wot)
  %573 = extractvalue %dx.types.ResRet.i32 %572, 0
  %574 = lshr i32 %573, 24
  %575 = uitofp i32 %574 to float
  %576 = fmul fast float %575, 0x3F70101020000000
  %577 = and i32 %573, 255
  %578 = uitofp i32 %577 to float
  %579 = fmul fast float %578, 0x3F70101020000000
  %580 = lshr i32 %573, 8
  %581 = and i32 %580, 255
  %582 = uitofp i32 %581 to float
  %583 = fmul fast float %582, 0x3F70101020000000
  %584 = lshr i32 %573, 16
  %585 = and i32 %584, 255
  %586 = uitofp i32 %585 to float
  %587 = fmul fast float %586, 0x3F70101020000000
  %588 = add i32 %43, 220
  %589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %588, i32 undef)  ; BufferLoad(srv,index,wot)
  %590 = extractvalue %dx.types.ResRet.i32 %589, 0
  %591 = lshr i32 %590, 24
  %592 = uitofp i32 %591 to float
  %593 = fmul fast float %592, 0x3F70101020000000
  %594 = and i32 %590, 255
  %595 = uitofp i32 %594 to float
  %596 = fmul fast float %595, 0x3F70101020000000
  %597 = lshr i32 %590, 8
  %598 = and i32 %597, 255
  %599 = uitofp i32 %598 to float
  %600 = fmul fast float %599, 0x3F70101020000000
  %601 = lshr i32 %590, 16
  %602 = and i32 %601, 255
  %603 = uitofp i32 %602 to float
  %604 = fmul fast float %603, 0x3F70101020000000
  %605 = bitcast float %529 to i32
  %606 = ashr i32 %605, 1
  %607 = sub nsw i32 1597463174, %606
  %608 = bitcast i32 %607 to float
  %609 = fmul fast float %529, 5.000000e-01
  %610 = fmul fast float %608, %608
  %611 = fmul fast float %610, %609
  %612 = fsub fast float 1.500000e+00, %611
  %613 = fmul fast float %608, %529
  %614 = fmul fast float %613, %612
  %615 = bitcast float %530 to i32
  %616 = ashr i32 %615, 1
  %617 = sub nsw i32 1597463174, %616
  %618 = bitcast i32 %617 to float
  %619 = fmul fast float %530, 5.000000e-01
  %620 = fmul fast float %618, %618
  %621 = fmul fast float %620, %619
  %622 = fsub fast float 1.500000e+00, %621
  %623 = fmul fast float %618, %530
  %624 = fmul fast float %623, %622
  %625 = bitcast float %531 to i32
  %626 = ashr i32 %625, 1
  %627 = sub nsw i32 1597463174, %626
  %628 = bitcast i32 %627 to float
  %629 = fmul fast float %531, 5.000000e-01
  %630 = fmul fast float %628, %628
  %631 = fmul fast float %630, %629
  %632 = fsub fast float 1.500000e+00, %631
  %633 = fmul fast float %628, %531
  %634 = fmul fast float %633, %632
  %635 = fsub fast float %614, %596
  %636 = fsub fast float %624, %600
  %637 = fsub fast float %634, %604
  %638 = fmul fast float %635, %564
  %639 = fmul fast float %636, %566
  %640 = fmul fast float %637, %571
  %641 = fadd fast float %638, %579
  %642 = fadd fast float %639, %583
  %643 = fadd fast float %640, %587
  %644 = call float @dx.op.unary.f32(i32 7, float %641)  ; Saturate(value)
  %645 = call float @dx.op.unary.f32(i32 7, float %642)  ; Saturate(value)
  %646 = call float @dx.op.unary.f32(i32 7, float %643)  ; Saturate(value)
  %647 = fmul fast float %644, %644
  %648 = fmul fast float %645, %645
  %649 = fmul fast float %646, %646
  %650 = fsub fast float %647, %529
  %651 = fsub fast float %648, %530
  %652 = fsub fast float %649, %531
  %653 = fmul fast float %650, %554
  %654 = fmul fast float %651, %554
  %655 = fmul fast float %652, %554
  %656 = fadd fast float %653, %529
  %657 = fadd fast float %654, %530
  %658 = fadd fast float %655, %531
  %659 = fadd fast float %576, %540
  %660 = fsub fast float %659, %593
  %661 = call float @dx.op.unary.f32(i32 7, float %660)  ; Saturate(value)
  %662 = fsub fast float %661, %540
  %663 = fmul fast float %662, %554
  %664 = fadd fast float %663, %540
  br label %718

; <label>:665                                     ; preds = %553
  %666 = and i32 %556, 134217728
  %667 = icmp eq i32 %666, 0
  br i1 %667, label %702, label %668

; <label>:668                                     ; preds = %665
  %669 = call float @dx.op.unary.f32(i32 24, float %200)  ; Sqrt(value)
  %670 = call float @dx.op.unary.f32(i32 24, float %204)  ; Sqrt(value)
  %671 = call float @dx.op.unary.f32(i32 24, float %208)  ; Sqrt(value)
  %672 = fadd fast float %669, -5.000000e-01
  %673 = fadd fast float %670, -5.000000e-01
  %674 = fadd fast float %671, -5.000000e-01
  %675 = fmul fast float %672, %554
  %676 = fmul fast float %673, %554
  %677 = fmul fast float %674, %554
  %678 = fadd fast float %675, 5.000000e-01
  %679 = fadd fast float %676, 5.000000e-01
  %680 = fadd fast float %677, 5.000000e-01
  %681 = call float @dx.op.unary.f32(i32 24, float %529)  ; Sqrt(value)
  %682 = call float @dx.op.unary.f32(i32 24, float %530)  ; Sqrt(value)
  %683 = call float @dx.op.unary.f32(i32 24, float %531)  ; Sqrt(value)
  %684 = fmul fast float %678, 2.000000e+00
  %685 = fsub fast float 1.000000e+00, %684
  %686 = fmul fast float %685, %681
  %687 = fadd fast float %686, %684
  %688 = fmul fast float %687, %681
  %689 = fmul fast float %679, 2.000000e+00
  %690 = fsub fast float 1.000000e+00, %689
  %691 = fmul fast float %690, %682
  %692 = fadd fast float %691, %689
  %693 = fmul fast float %692, %682
  %694 = fmul fast float %680, 2.000000e+00
  %695 = fsub fast float 1.000000e+00, %694
  %696 = fmul fast float %695, %683
  %697 = fadd fast float %696, %694
  %698 = fmul fast float %697, %683
  %699 = fmul fast float %688, %688
  %700 = fmul fast float %693, %693
  %701 = fmul fast float %698, %698
  br label %718

; <label>:702                                     ; preds = %665
  %703 = fmul fast float %200, %200
  %704 = fmul fast float %204, %204
  %705 = fmul fast float %208, %208
  %706 = fadd fast float %703, -1.000000e+00
  %707 = fadd fast float %704, -1.000000e+00
  %708 = fadd fast float %705, -1.000000e+00
  %709 = fmul fast float %554, %706
  %710 = fmul fast float %554, %707
  %711 = fmul fast float %554, %708
  %712 = fadd fast float %709, 1.000000e+00
  %713 = fadd fast float %710, 1.000000e+00
  %714 = fadd fast float %711, 1.000000e+00
  %715 = fmul fast float %712, %529
  %716 = fmul fast float %713, %530
  %717 = fmul fast float %714, %531
  br label %718

; <label>:718                                     ; preds = %702, %668, %559, %517
  %719 = phi float [ %664, %559 ], [ %540, %668 ], [ %540, %702 ], [ 0x3FA23C0BE0000000, %517 ]
  %720 = phi float [ %656, %559 ], [ %699, %668 ], [ %715, %702 ], [ 1.000000e+00, %517 ]
  %721 = phi float [ %657, %559 ], [ %700, %668 ], [ %716, %702 ], [ 1.000000e+00, %517 ]
  %722 = phi float [ %658, %559 ], [ %701, %668 ], [ %717, %702 ], [ 1.000000e+00, %517 ]
  %723 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %724 = extractvalue %dx.types.CBufRet.i32 %723, 1
  %725 = and i32 %724, 1
  %726 = icmp ne i32 %725, 0
  %727 = add i32 %43, 356
  %728 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %727, i32 undef)  ; BufferLoad(srv,index,wot)
  %729 = extractvalue %dx.types.ResRet.i32 %728, 0
  %730 = and i32 %729, 32
  %731 = icmp ne i32 %730, 0
  %732 = and i1 %726, %731
  %733 = select i1 %732, float 1.000000e+00, float %720
  %734 = select i1 %732, float 0x3FD3333340000000, float %721
  %735 = select i1 %732, float 0x3FD3333340000000, float %722
  %736 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %737 = extractvalue %dx.types.ResRet.i32 %736, 0
  %738 = and i32 %737, 32
  %739 = icmp eq i32 %738, 0
  br i1 %739, label %812, label %740

; <label>:740                                     ; preds = %718
  %741 = add i32 %43, 92
  %742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %741, i32 undef)  ; BufferLoad(srv,index,wot)
  %743 = extractvalue %dx.types.ResRet.i32 %742, 0
  %744 = add i32 %43, 392
  %745 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %744, i32 undef)  ; BufferLoad(srv,index,wot)
  %746 = extractvalue %dx.types.ResRet.i32 %745, 0
  %747 = add i32 %746, 0
  %748 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %747, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %749 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %748, %dx.types.Handle %67, float %518, float %519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %750 = extractvalue %dx.types.ResRet.f32 %749, 0
  %751 = extractvalue %dx.types.ResRet.f32 %749, 1
  %752 = extractvalue %dx.types.ResRet.f32 %749, 2
  %753 = extractvalue %dx.types.ResRet.f32 %749, 3
  %754 = and i32 %743, 255
  %755 = uitofp i32 %754 to float
  %756 = lshr i32 %743, 8
  %757 = and i32 %756, 255
  %758 = uitofp i32 %757 to float
  %759 = lshr i32 %743, 16
  %760 = and i32 %759, 255
  %761 = uitofp i32 %760 to float
  %762 = fmul fast float %761, 0x3F70101000000000
  %763 = fmul fast float %750, %755
  %764 = fadd fast float %763, %758
  %765 = fmul fast float %764, 0x3F70101000000000
  %766 = fadd fast float %751, -5.000000e-01
  %767 = fadd fast float %753, -5.000000e-01
  %768 = fmul fast float %766, %762
  %769 = fmul fast float %767, %762
  %770 = fadd fast float %768, 5.000000e-01
  %771 = fadd fast float %769, 5.000000e-01
  %772 = fmul fast float %770, 2.000000e+00
  %773 = fadd fast float %772, -1.000000e+00
  %774 = fmul fast float %771, 2.000000e+00
  %775 = fadd fast float %774, -1.000000e+00
  %776 = fadd fast float %773, %775
  %777 = fmul fast float %776, 5.000000e-01
  %778 = fsub fast float %773, %775
  %779 = fmul fast float %778, 5.000000e-01
  %780 = call float @dx.op.unary.f32(i32 6, float %777)  ; FAbs(value)
  %781 = fsub fast float 1.000000e+00, %780
  %782 = call float @dx.op.unary.f32(i32 6, float %779)  ; FAbs(value)
  %783 = fsub fast float %781, %782
  %784 = call float @dx.op.dot3.f32(i32 55, float %777, float %779, float %783, float %777, float %779, float %783)  ; Dot3(ax,ay,az,bx,by,bz)
  %785 = call float @dx.op.unary.f32(i32 25, float %784)  ; Rsqrt(value)
  %786 = fmul fast float %777, %785
  %787 = fmul fast float %779, %785
  %788 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %789 = extractvalue %dx.types.ResRet.i32 %788, 0
  %790 = and i32 %789, 67108864
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %808, label %792

; <label>:792                                     ; preds = %740
  %793 = add i32 %43, 280
  %794 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %793, i32 undef)  ; BufferLoad(srv,index,wot)
  %795 = extractvalue %dx.types.ResRet.i32 %794, 0
  %796 = and i32 %795, 65535
  %797 = call float @dx.op.legacyF16ToF32(i32 131, i32 %796)  ; LegacyF16ToF32(value)
  %798 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %428, i32 undef)  ; BufferLoad(srv,index,wot)
  %799 = extractvalue %dx.types.ResRet.i32 %798, 0
  %800 = and i32 %799, 65535
  %801 = call float @dx.op.legacyF16ToF32(i32 131, i32 %800)  ; LegacyF16ToF32(value)
  %802 = lshr i32 %795, 16
  %803 = call float @dx.op.legacyF16ToF32(i32 131, i32 %802)  ; LegacyF16ToF32(value)
  %804 = fsub fast float %765, %803
  %805 = fmul fast float %804, %797
  %806 = fadd fast float %805, %801
  %807 = call float @dx.op.unary.f32(i32 7, float %806)  ; Saturate(value)
  br label %808

; <label>:808                                     ; preds = %792, %740
  %809 = phi float [ %807, %792 ], [ %765, %740 ]
  %810 = call float @dx.op.dot2.f32(i32 54, float %786, float %787, float %422, float %423)  ; Dot2(ax,ay,bx,by)
  %811 = call float @dx.op.dot2.f32(i32 54, float %786, float %787, float %424, float %425)  ; Dot2(ax,ay,bx,by)
  br label %812

; <label>:812                                     ; preds = %808, %718
  %813 = phi float [ %809, %808 ], [ 0x3FD6666660000000, %718 ]
  %814 = phi float [ %810, %808 ], [ 0.000000e+00, %718 ]
  %815 = phi float [ %811, %808 ], [ 0.000000e+00, %718 ]
  %816 = phi float [ %752, %808 ], [ 1.000000e+00, %718 ]
  %817 = add i32 %43, 160
  %818 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %817, i32 undef)  ; BufferLoad(srv,index,wot)
  %819 = extractvalue %dx.types.ResRet.i32 %818, 0
  %820 = lshr i32 %819, 22
  %821 = shl nuw nsw i32 %820, 5
  %822 = call float @dx.op.legacyF16ToF32(i32 131, i32 %821)  ; LegacyF16ToF32(value)
  %823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %824 = extractvalue %dx.types.ResRet.i32 %823, 0
  %825 = and i32 %824, 64
  %826 = icmp eq i32 %825, 0
  br i1 %826, label %860, label %827

; <label>:827                                     ; preds = %812
  %828 = add i32 %43, 408
  %829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %828, i32 undef)  ; BufferLoad(srv,index,wot)
  %830 = extractvalue %dx.types.ResRet.i32 %829, 0
  %831 = add i32 %830, 0
  %832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %411, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = and i32 %834, 131072
  %836 = icmp eq i32 %835, 0
  %837 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %832, %dx.types.Handle %67, float %518, float %519, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %838 = extractvalue %dx.types.ResRet.f32 %837, 0
  %839 = extractvalue %dx.types.ResRet.f32 %837, 1
  %840 = extractvalue %dx.types.ResRet.f32 %837, 2
  %841 = fmul fast float %838, %188
  %842 = fmul fast float %839, %191
  %843 = fmul fast float %840, %194
  br i1 %836, label %850, label %844

; <label>:844                                     ; preds = %827
  %845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %846 = extractvalue %dx.types.CBufRet.f32 %845, 0
  %847 = fmul fast float %846, %841
  %848 = fmul fast float %846, %842
  %849 = fmul fast float %846, %843
  br label %850

; <label>:850                                     ; preds = %844, %827
  %851 = phi float [ %847, %844 ], [ %841, %827 ]
  %852 = phi float [ %848, %844 ], [ %842, %827 ]
  %853 = phi float [ %849, %844 ], [ %843, %827 ]
  %854 = fmul fast float %851, %822
  %855 = select i1 %168, float %854, float %851
  %856 = call float @dx.op.dot3.f32(i32 55, float %855, float %852, float %853, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %857 = select i1 %168, float 0.000000e+00, float %851
  %858 = select i1 %168, float %856, float %852
  %859 = select i1 %168, float 0.000000e+00, float %853
  br label %860

; <label>:860                                     ; preds = %850, %812
  %861 = phi float [ %857, %850 ], [ 0.000000e+00, %812 ]
  %862 = phi float [ %858, %850 ], [ 0.000000e+00, %812 ]
  %863 = phi float [ %859, %850 ], [ 0.000000e+00, %812 ]
  %864 = add i32 %43, 96
  %865 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %864, i32 undef)  ; BufferLoad(srv,index,wot)
  %866 = extractvalue %dx.types.ResRet.i32 %865, 0
  %867 = and i32 %866, 255
  %868 = uitofp i32 %867 to float
  %869 = lshr i32 %866, 8
  %870 = and i32 %869, 255
  %871 = uitofp i32 %870 to float
  %872 = call float @dx.op.dot3.f32(i32 55, float %733, float %734, float %735, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %873 = fmul fast float %871, %872
  %874 = fadd fast float %873, %868
  %875 = fmul fast float %874, 0x3F70101020000000
  %876 = call float @dx.op.unary.f32(i32 7, float %875)  ; Saturate(value)
  br label %877

; <label>:877                                     ; preds = %860, %404
  %878 = phi float [ 0.000000e+00, %404 ], [ %814, %860 ]
  %879 = phi float [ 0.000000e+00, %404 ], [ %815, %860 ]
  %880 = phi float [ 0.000000e+00, %404 ], [ %733, %860 ]
  %881 = phi float [ 0.000000e+00, %404 ], [ %734, %860 ]
  %882 = phi float [ 0.000000e+00, %404 ], [ %735, %860 ]
  %883 = phi float [ 0.000000e+00, %404 ], [ %861, %860 ]
  %884 = phi float [ 0.000000e+00, %404 ], [ %862, %860 ]
  %885 = phi float [ 0.000000e+00, %404 ], [ %863, %860 ]
  %886 = phi float [ 0.000000e+00, %404 ], [ %719, %860 ]
  %887 = phi float [ 0.000000e+00, %404 ], [ 1.000000e+00, %860 ]
  %888 = phi float [ 0.000000e+00, %404 ], [ %813, %860 ]
  %889 = phi float [ 0.000000e+00, %404 ], [ %816, %860 ]
  %890 = phi float [ 0.000000e+00, %404 ], [ %876, %860 ]
  br i1 %355, label %1732, label %891

; <label>:891                                     ; preds = %877
  %892 = icmp ult i32 %410, 2
  %893 = add i32 %43, 40
  %894 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %895 = extractvalue %dx.types.ResRet.i32 %894, 0
  %896 = add i32 %43, 44
  %897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %896, i32 undef)  ; BufferLoad(srv,index,wot)
  %898 = extractvalue %dx.types.ResRet.i32 %897, 0
  %899 = or i32 %898, %895
  %900 = icmp eq i32 %899, 0
  br i1 %900, label %1732, label %901

; <label>:901                                     ; preds = %891
  %902 = and i32 %895, 262144
  %903 = icmp ne i32 %902, 0
  %904 = select i1 %903, float %46, float 1.000000e+00
  %905 = select i1 %903, float %47, float 0.000000e+00
  %906 = select i1 %903, float %48, float 0.000000e+00
  %907 = select i1 %903, float %49, float 1.000000e+00
  %908 = select i1 %903, float %50, float %59
  %909 = select i1 %903, float %51, float %60
  %910 = add i32 %43, 300
  %911 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %912 = extractvalue %dx.types.ResRet.i32 %911, 0
  %913 = lshr i32 %912, 16
  %914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %913)  ; LegacyF16ToF32(value)
  %915 = fmul fast float %914, 0x3F50624DE0000000
  %916 = add i32 %43, 104
  %917 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %918 = extractvalue %dx.types.ResRet.i32 %917, 0
  %919 = lshr i32 %918, 16
  %920 = and i32 %919, 255
  %921 = lshr i32 %918, 24
  %922 = add i32 %43, 308
  %923 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %922, i32 undef)  ; BufferLoad(srv,index,wot)
  %924 = extractvalue %dx.types.ResRet.i32 %923, 0
  %925 = and i32 %924, 65535
  %926 = call float @dx.op.legacyF16ToF32(i32 131, i32 %925)  ; LegacyF16ToF32(value)
  %927 = lshr i32 %924, 16
  %928 = call float @dx.op.legacyF16ToF32(i32 131, i32 %927)  ; LegacyF16ToF32(value)
  %929 = add i32 %43, 48
  %930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %929, i32 undef)  ; BufferLoad(srv,index,wot)
  %931 = extractvalue %dx.types.ResRet.i32 %930, 0
  %932 = lshr i32 %931, 22
  %933 = shl nuw nsw i32 %932, 5
  %934 = call float @dx.op.legacyF16ToF32(i32 131, i32 %933)  ; LegacyF16ToF32(value)
  %935 = shl i32 %931, 4
  %936 = and i32 %935, 32752
  %937 = call float @dx.op.legacyF16ToF32(i32 131, i32 %936)  ; LegacyF16ToF32(value)
  %938 = lshr i32 %931, 7
  %939 = and i32 %938, 32752
  %940 = call float @dx.op.legacyF16ToF32(i32 131, i32 %939)  ; LegacyF16ToF32(value)
  %941 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %942 = extractvalue %dx.types.CBufRet.f32 %941, 3
  %943 = fmul fast float %942, 1.000000e+03
  %944 = fmul fast float %265, %943
  %945 = call float @dx.op.unary.f32(i32 22, float %944)  ; Frc(value)
  %946 = fadd fast float %945, %255
  %947 = fmul fast float %266, %943
  %948 = call float @dx.op.unary.f32(i32 22, float %947)  ; Frc(value)
  %949 = fadd fast float %948, %257
  %950 = fmul fast float %915, %943
  %951 = call float @dx.op.unary.f32(i32 22, float %950)  ; Frc(value)
  %952 = fmul fast float %951, 0x401921FB60000000
  %953 = fadd fast float %952, %934
  %954 = call float @dx.op.unary.f32(i32 13, float %953)  ; Sin(value)
  %955 = call float @dx.op.unary.f32(i32 12, float %953)  ; Cos(value)
  %956 = fsub fast float -0.000000e+00, %954
  %957 = fadd fast float %908, -5.000000e-01
  %958 = fadd fast float %909, -5.000000e-01
  %959 = fmul fast float %926, %957
  %960 = fmul fast float %928, %958
  %961 = fadd fast float %959, 5.000000e-01
  %962 = fadd fast float %960, 5.000000e-01
  %963 = fmul fast float %937, %961
  %964 = fmul fast float %940, %962
  %965 = fmul fast float %955, %963
  %966 = call float @dx.op.tertiary.f32(i32 46, float %956, float %964, float %965)  ; FMad(a,b,c)
  %967 = fmul fast float %954, %963
  %968 = call float @dx.op.tertiary.f32(i32 46, float %955, float %964, float %967)  ; FMad(a,b,c)
  %969 = fadd fast float %946, %966
  %970 = fadd fast float %949, %968
  %971 = icmp ugt i32 %920, 1
  %972 = icmp ugt i32 %918, 33554431
  %973 = or i1 %972, %971
  br i1 %973, label %974, label %999

; <label>:974                                     ; preds = %901
  %975 = add i32 %43, 244
  %976 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %975, i32 undef)  ; BufferLoad(srv,index,wot)
  %977 = extractvalue %dx.types.ResRet.i32 %976, 0
  %978 = lshr i32 %977, 16
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = fmul fast float %942, %979
  %981 = call float @dx.op.unary.f32(i32 22, float %980)  ; Frc(value)
  %982 = mul nuw nsw i32 %920, %921
  %983 = uitofp i32 %982 to float
  %984 = fmul fast float %981, %983
  %985 = call float @dx.op.unary.f32(i32 27, float %984)  ; Round_ni(value)
  %986 = fptoui float %985 to i32
  %987 = urem i32 %986, %920
  %988 = udiv i32 %986, %921
  %989 = call float @dx.op.unary.f32(i32 22, float %969)  ; Frc(value)
  %990 = call float @dx.op.unary.f32(i32 22, float %970)  ; Frc(value)
  %991 = uitofp i32 %987 to float
  %992 = uitofp i32 %988 to float
  %993 = fadd fast float %989, %991
  %994 = fadd fast float %990, %992
  %995 = uitofp i32 %920 to float
  %996 = uitofp i32 %921 to float
  %997 = fdiv fast float %993, %995
  %998 = fdiv fast float %994, %996
  br label %999

; <label>:999                                     ; preds = %974, %901
  %1000 = phi float [ %997, %974 ], [ %969, %901 ]
  %1001 = phi float [ %998, %974 ], [ %970, %901 ]
  %1002 = and i32 %895, 16777216
  %1003 = icmp eq i32 %1002, 0
  br i1 %1003, label %1113, label %1004

; <label>:1004                                    ; preds = %999
  %1005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1006 = extractvalue %dx.types.CBufRet.f32 %1005, 0
  %1007 = extractvalue %dx.types.CBufRet.f32 %1005, 1
  %1008 = extractvalue %dx.types.CBufRet.f32 %1005, 2
  %1009 = fadd fast float %1006, %126
  %1010 = fadd fast float %1007, %127
  %1011 = fadd fast float %1008, %128
  %1012 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1013 = extractvalue %dx.types.CBufRet.f32 %1012, 0
  %1014 = call float @dx.op.unary.f32(i32 7, float %1013)  ; Saturate(value)
  %1015 = icmp eq i32 %44, 65535
  br i1 %1015, label %1110, label %1016

; <label>:1016                                    ; preds = %1004
  %1017 = lshr i32 %44, 1
  %1018 = shl i32 %1017, 2
  %1019 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1018, i32 undef)  ; BufferLoad(srv,index,wot)
  %1020 = extractvalue %dx.types.ResRet.i32 %1019, 0
  %1021 = and i32 %44, 1
  %1022 = icmp ne i32 %1021, 0
  %1023 = lshr i32 %1020, 16
  %1024 = and i32 %1020, 65535
  %1025 = select i1 %1022, i32 %1023, i32 %1024
  %1026 = icmp eq i32 %1025, 65535
  br i1 %1026, label %1106, label %1027

; <label>:1027                                    ; preds = %1016
  %1028 = mul nuw nsw i32 %1025, 40
  %1029 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1028, i32 undef)  ; BufferLoad(srv,index,wot)
  %1030 = extractvalue %dx.types.ResRet.f32 %1029, 0
  %1031 = extractvalue %dx.types.ResRet.f32 %1029, 1
  %1032 = extractvalue %dx.types.ResRet.f32 %1029, 2
  %1033 = add nuw nsw i32 %1028, 12
  %1034 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.f32 %1034, 0
  %1036 = extractvalue %dx.types.ResRet.f32 %1034, 1
  %1037 = extractvalue %dx.types.ResRet.f32 %1034, 2
  %1038 = add nuw nsw i32 %1028, 24
  %1039 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1038, i32 undef)  ; BufferLoad(srv,index,wot)
  %1040 = extractvalue %dx.types.ResRet.f32 %1039, 0
  %1041 = extractvalue %dx.types.ResRet.f32 %1039, 1
  %1042 = extractvalue %dx.types.ResRet.f32 %1039, 2
  %1043 = add nuw nsw i32 %1028, 36
  %1044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = fsub fast float %1009, %1030
  %1047 = fsub fast float %1010, %1031
  %1048 = fsub fast float %1011, %1032
  %1049 = fmul fast float %1045, %1046
  %1050 = fmul fast float %1045, %1047
  %1051 = fmul fast float %1045, %1048
  %1052 = call float @dx.op.unary.f32(i32 27, float %1049)  ; Round_ni(value)
  %1053 = call float @dx.op.unary.f32(i32 27, float %1050)  ; Round_ni(value)
  %1054 = call float @dx.op.unary.f32(i32 27, float %1051)  ; Round_ni(value)
  %1055 = fadd fast float %1052, 5.000000e-01
  %1056 = fadd fast float %1053, 5.000000e-01
  %1057 = fadd fast float %1054, 5.000000e-01
  %1058 = fmul fast float %1055, %1035
  %1059 = fmul fast float %1056, %1036
  %1060 = fmul fast float %1057, %1037
  %1061 = shl i32 %44, 2
  %1062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1063 = extractvalue %dx.types.ResRet.i32 %1062, 0
  %1064 = add i32 %1063, 0
  %1065 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1064, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1066 = call float @dx.op.unary.f32(i32 22, float %1058)  ; Frc(value)
  %1067 = call float @dx.op.unary.f32(i32 22, float %1059)  ; Frc(value)
  %1068 = call float @dx.op.unary.f32(i32 22, float %1060)  ; Frc(value)
  %1069 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1065, %dx.types.Handle %40, float %1066, float %1067, float %1068, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1070 = extractvalue %dx.types.ResRet.f32 %1069, 0
  %1071 = extractvalue %dx.types.ResRet.f32 %1069, 1
  %1072 = extractvalue %dx.types.ResRet.f32 %1069, 2
  %1073 = fmul fast float %1070, 1.023000e+03
  %1074 = fmul fast float %1071, 1.023000e+03
  %1075 = fmul fast float %1072, 1.023000e+03
  %1076 = fadd fast float %1073, 5.000000e-01
  %1077 = fadd fast float %1074, 5.000000e-01
  %1078 = fadd fast float %1075, 5.000000e-01
  %1079 = call float @dx.op.unary.f32(i32 27, float %1076)  ; Round_ni(value)
  %1080 = call float @dx.op.unary.f32(i32 27, float %1077)  ; Round_ni(value)
  %1081 = call float @dx.op.unary.f32(i32 27, float %1078)  ; Round_ni(value)
  %1082 = fsub fast float %1049, %1052
  %1083 = fsub fast float %1050, %1053
  %1084 = fsub fast float %1051, %1054
  %1085 = fmul fast float %1082, 7.500000e-01
  %1086 = fmul fast float %1083, 7.500000e-01
  %1087 = fmul fast float %1084, 7.500000e-01
  %1088 = fadd fast float %1052, 1.250000e-01
  %1089 = fadd fast float %1088, %1085
  %1090 = fadd fast float %1089, %1079
  %1091 = fadd fast float %1053, 1.250000e-01
  %1092 = fadd fast float %1091, %1086
  %1093 = fadd fast float %1092, %1080
  %1094 = fadd fast float %1054, 1.250000e-01
  %1095 = fadd fast float %1094, %1087
  %1096 = fadd fast float %1095, %1081
  %1097 = fmul fast float %1090, %1040
  %1098 = fmul fast float %1093, %1041
  %1099 = fmul fast float %1096, %1042
  %1100 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1061, i32 undef)  ; BufferLoad(srv,index,wot)
  %1101 = extractvalue %dx.types.ResRet.i32 %1100, 0
  %1102 = add i32 %1101, 0
  %1103 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1102, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1104 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1103, %dx.types.Handle %38, float %1097, float %1098, float %1099, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1105 = extractvalue %dx.types.ResRet.f32 %1104, 0
  br label %1106

; <label>:1106                                    ; preds = %1027, %1016
  %1107 = phi float [ %1105, %1027 ], [ -1.000000e+00, %1016 ]
  %1108 = fadd fast float %1107, %1014
  %1109 = call float @dx.op.unary.f32(i32 7, float %1108)  ; Saturate(value)
  br label %1110

; <label>:1110                                    ; preds = %1106, %1004
  %1111 = phi float [ %1109, %1106 ], [ %1014, %1004 ]
  %1112 = fmul fast float %1111, %407
  br label %1113

; <label>:1113                                    ; preds = %1110, %999
  %1114 = phi float [ %1112, %1110 ], [ %407, %999 ]
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = and i32 %1116, 256
  %1118 = icmp eq i32 %1117, 0
  br i1 %1118, label %1165, label %1119

; <label>:1119                                    ; preds = %1113
  %1120 = add i32 %43, 444
  %1121 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1120, i32 undef)  ; BufferLoad(srv,index,wot)
  %1122 = extractvalue %dx.types.ResRet.i32 %1121, 0
  %1123 = add i32 %1122, 0
  %1124 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1123, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1125 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1124, %dx.types.Handle %68, float %1000, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1126 = extractvalue %dx.types.ResRet.f32 %1125, 0
  %1127 = add i32 %43, 116
  %1128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1127, i32 undef)  ; BufferLoad(srv,index,wot)
  %1129 = extractvalue %dx.types.ResRet.i32 %1128, 0
  %1130 = shl i32 %1129, 4
  %1131 = and i32 %1130, 32752
  %1132 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1131)  ; LegacyF16ToF32(value)
  %1133 = lshr i32 %1129, 7
  %1134 = and i32 %1133, 32752
  %1135 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1134)  ; LegacyF16ToF32(value)
  %1136 = fsub fast float 1.000000e+00, %1114
  %1137 = call float @dx.op.binary.f32(i32 35, float %1136, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1138 = bitcast float %1114 to i32
  %1139 = sitofp i32 %1138 to float
  %1140 = fadd fast float %1139, 0xC1CFBF8940000000
  %1141 = fmul fast float %1135, %1140
  %1142 = fadd fast float %1141, 0x41CFBF8940000000
  %1143 = fptosi float %1142 to i32
  %1144 = bitcast i32 %1143 to float
  %1145 = bitcast float %1137 to i32
  %1146 = sitofp i32 %1145 to float
  %1147 = fadd fast float %1146, 0xC1CFBF8940000000
  %1148 = fmul fast float %1147, %1135
  %1149 = fadd fast float %1148, 0x41CFBF8940000000
  %1150 = fptosi float %1149 to i32
  %1151 = bitcast i32 %1150 to float
  %1152 = fmul fast float %1144, %1132
  %1153 = fmul fast float %1151, %1132
  %1154 = fsub fast float %1137, %1152
  %1155 = fadd fast float %1153, %1137
  %1156 = call float @dx.op.unary.f32(i32 7, float %1154)  ; Saturate(value)
  %1157 = call float @dx.op.unary.f32(i32 7, float %1155)  ; Saturate(value)
  %1158 = fsub fast float %1126, %1156
  %1159 = fsub fast float %1157, %1156
  %1160 = bitcast float %1159 to i32
  %1161 = sub nsw i32 2129859010, %1160
  %1162 = bitcast i32 %1161 to float
  %1163 = fmul fast float %1162, %1158
  %1164 = call float @dx.op.unary.f32(i32 7, float %1163)  ; Saturate(value)
  br label %1165

; <label>:1165                                    ; preds = %1119, %1113
  %1166 = phi float [ %1164, %1119 ], [ %1114, %1113 ]
  %1167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1168 = extractvalue %dx.types.ResRet.i32 %1167, 0
  %1169 = and i32 %1168, 128
  %1170 = icmp eq i32 %1169, 0
  br i1 %1170, label %1187, label %1171

; <label>:1171                                    ; preds = %1165
  %1172 = add i32 %43, 428
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = add i32 %1174, 0
  %1176 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1175, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1177 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1176, %dx.types.Handle %68, float %1000, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1178 = extractvalue %dx.types.ResRet.f32 %1177, 0
  %1179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1180 = extractvalue %dx.types.ResRet.i32 %1179, 0
  %1181 = and i32 %1180, 524288
  %1182 = icmp ne i32 %1181, 0
  %1183 = fcmp fast ogt float %1178, 0x3FE0101020000000
  %1184 = select i1 %1183, float 1.000000e+00, float 0.000000e+00
  %1185 = select i1 %1182, float %1184, float %1178
  %1186 = fmul fast float %1185, %1166
  br label %1187

; <label>:1187                                    ; preds = %1171, %1165
  %1188 = phi float [ %1186, %1171 ], [ %1166, %1165 ]
  %1189 = fcmp fast ult float %1188, 0x3F70101020000000
  br i1 %1189, label %1732, label %1190

; <label>:1190                                    ; preds = %1187
  %1191 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1192 = extractvalue %dx.types.ResRet.i32 %1191, 0
  %1193 = and i32 %1192, 16
  %1194 = icmp eq i32 %1193, 0
  br i1 %1194, label %1393, label %1195

; <label>:1195                                    ; preds = %1190
  %1196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %916, i32 undef)  ; BufferLoad(srv,index,wot)
  %1197 = extractvalue %dx.types.ResRet.i32 %1196, 0
  %1198 = add i32 %43, 380
  %1199 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1198, i32 undef)  ; BufferLoad(srv,index,wot)
  %1200 = extractvalue %dx.types.ResRet.i32 %1199, 0
  %1201 = add i32 %1200, 0
  %1202 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1201, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1203 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1202, %dx.types.Handle %67, float %1000, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1204 = extractvalue %dx.types.ResRet.f32 %1203, 0
  %1205 = extractvalue %dx.types.ResRet.f32 %1203, 1
  %1206 = extractvalue %dx.types.ResRet.f32 %1203, 2
  %1207 = extractvalue %dx.types.ResRet.f32 %1203, 3
  %1208 = and i32 %1197, 255
  %1209 = uitofp i32 %1208 to float
  %1210 = lshr i32 %1197, 8
  %1211 = and i32 %1210, 255
  %1212 = uitofp i32 %1211 to float
  %1213 = fmul fast float %1207, %1209
  %1214 = fadd fast float %1213, %1212
  %1215 = fmul fast float %1214, 0x3F70101000000000
  %1216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1217 = extractvalue %dx.types.ResRet.i32 %1216, 0
  %1218 = and i32 %1217, 512
  %1219 = icmp eq i32 %1218, 0
  br i1 %1219, label %1228, label %1220

; <label>:1220                                    ; preds = %1195
  %1221 = add i32 %43, 460
  %1222 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1221, i32 undef)  ; BufferLoad(srv,index,wot)
  %1223 = extractvalue %dx.types.ResRet.i32 %1222, 0
  %1224 = add i32 %1223, 0
  %1225 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1224, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1226 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1225, %dx.types.Handle %68, float %1000, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1227 = extractvalue %dx.types.ResRet.f32 %1226, 0
  br label %1228

; <label>:1228                                    ; preds = %1220, %1195
  %1229 = phi float [ %1227, %1220 ], [ 1.000000e+00, %1195 ]
  %1230 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1231 = extractvalue %dx.types.ResRet.i32 %1230, 0
  %1232 = and i32 %1231, 33554432
  %1233 = icmp eq i32 %1232, 0
  br i1 %1233, label %1340, label %1234

; <label>:1234                                    ; preds = %1228
  %1235 = add i32 %43, 240
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1235, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 65535
  %1239 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1238)  ; LegacyF16ToF32(value)
  %1240 = lshr i32 %1237, 16
  %1241 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1240)  ; LegacyF16ToF32(value)
  %1242 = add i32 %43, 244
  %1243 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1242, i32 undef)  ; BufferLoad(srv,index,wot)
  %1244 = extractvalue %dx.types.ResRet.i32 %1243, 0
  %1245 = and i32 %1244, 65535
  %1246 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1245)  ; LegacyF16ToF32(value)
  %1247 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %237, i32 undef)  ; BufferLoad(srv,index,wot)
  %1248 = extractvalue %dx.types.ResRet.i32 %1247, 0
  %1249 = lshr i32 %1248, 24
  %1250 = uitofp i32 %1249 to float
  %1251 = fmul fast float %1250, 0x3F70101020000000
  %1252 = and i32 %1248, 255
  %1253 = uitofp i32 %1252 to float
  %1254 = fmul fast float %1253, 0x3F70101020000000
  %1255 = lshr i32 %1248, 8
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1257, 0x3F70101020000000
  %1259 = lshr i32 %1248, 16
  %1260 = and i32 %1259, 255
  %1261 = uitofp i32 %1260 to float
  %1262 = fmul fast float %1261, 0x3F70101020000000
  %1263 = add i32 %43, 236
  %1264 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1263, i32 undef)  ; BufferLoad(srv,index,wot)
  %1265 = extractvalue %dx.types.ResRet.i32 %1264, 0
  %1266 = lshr i32 %1265, 24
  %1267 = uitofp i32 %1266 to float
  %1268 = fmul fast float %1267, 0x3F70101020000000
  %1269 = and i32 %1265, 255
  %1270 = uitofp i32 %1269 to float
  %1271 = fmul fast float %1270, 0x3F70101020000000
  %1272 = lshr i32 %1265, 8
  %1273 = and i32 %1272, 255
  %1274 = uitofp i32 %1273 to float
  %1275 = fmul fast float %1274, 0x3F70101020000000
  %1276 = lshr i32 %1265, 16
  %1277 = and i32 %1276, 255
  %1278 = uitofp i32 %1277 to float
  %1279 = fmul fast float %1278, 0x3F70101020000000
  %1280 = bitcast float %1204 to i32
  %1281 = ashr i32 %1280, 1
  %1282 = sub nsw i32 1597463174, %1281
  %1283 = bitcast i32 %1282 to float
  %1284 = fmul fast float %1204, 5.000000e-01
  %1285 = fmul fast float %1283, %1283
  %1286 = fmul fast float %1285, %1284
  %1287 = fsub fast float 1.500000e+00, %1286
  %1288 = fmul fast float %1283, %1204
  %1289 = fmul fast float %1288, %1287
  %1290 = bitcast float %1205 to i32
  %1291 = ashr i32 %1290, 1
  %1292 = sub nsw i32 1597463174, %1291
  %1293 = bitcast i32 %1292 to float
  %1294 = fmul fast float %1205, 5.000000e-01
  %1295 = fmul fast float %1293, %1293
  %1296 = fmul fast float %1295, %1294
  %1297 = fsub fast float 1.500000e+00, %1296
  %1298 = fmul fast float %1293, %1205
  %1299 = fmul fast float %1298, %1297
  %1300 = bitcast float %1206 to i32
  %1301 = ashr i32 %1300, 1
  %1302 = sub nsw i32 1597463174, %1301
  %1303 = bitcast i32 %1302 to float
  %1304 = fmul fast float %1206, 5.000000e-01
  %1305 = fmul fast float %1303, %1303
  %1306 = fmul fast float %1305, %1304
  %1307 = fsub fast float 1.500000e+00, %1306
  %1308 = fmul fast float %1303, %1206
  %1309 = fmul fast float %1308, %1307
  %1310 = fsub fast float %1289, %1271
  %1311 = fsub fast float %1299, %1275
  %1312 = fsub fast float %1309, %1279
  %1313 = fmul fast float %1310, %1239
  %1314 = fmul fast float %1311, %1241
  %1315 = fmul fast float %1312, %1246
  %1316 = fadd fast float %1313, %1254
  %1317 = fadd fast float %1314, %1258
  %1318 = fadd fast float %1315, %1262
  %1319 = call float @dx.op.unary.f32(i32 7, float %1316)  ; Saturate(value)
  %1320 = call float @dx.op.unary.f32(i32 7, float %1317)  ; Saturate(value)
  %1321 = call float @dx.op.unary.f32(i32 7, float %1318)  ; Saturate(value)
  %1322 = fmul fast float %1319, %1319
  %1323 = fmul fast float %1320, %1320
  %1324 = fmul fast float %1321, %1321
  %1325 = fsub fast float %1322, %1204
  %1326 = fsub fast float %1323, %1205
  %1327 = fsub fast float %1324, %1206
  %1328 = fmul fast float %1325, %1229
  %1329 = fmul fast float %1326, %1229
  %1330 = fmul fast float %1327, %1229
  %1331 = fadd fast float %1328, %1204
  %1332 = fadd fast float %1329, %1205
  %1333 = fadd fast float %1330, %1206
  %1334 = fadd fast float %1251, %1215
  %1335 = fsub fast float %1334, %1268
  %1336 = call float @dx.op.unary.f32(i32 7, float %1335)  ; Saturate(value)
  %1337 = fsub fast float %1336, %1215
  %1338 = fmul fast float %1337, %1229
  %1339 = fadd fast float %1338, %1215
  br label %1393

; <label>:1340                                    ; preds = %1228
  %1341 = and i32 %1231, 134217728
  %1342 = icmp eq i32 %1341, 0
  br i1 %1342, label %1377, label %1343

; <label>:1343                                    ; preds = %1340
  %1344 = call float @dx.op.unary.f32(i32 24, float %242)  ; Sqrt(value)
  %1345 = call float @dx.op.unary.f32(i32 24, float %246)  ; Sqrt(value)
  %1346 = call float @dx.op.unary.f32(i32 24, float %250)  ; Sqrt(value)
  %1347 = fadd fast float %1344, -5.000000e-01
  %1348 = fadd fast float %1345, -5.000000e-01
  %1349 = fadd fast float %1346, -5.000000e-01
  %1350 = fmul fast float %1347, %1229
  %1351 = fmul fast float %1348, %1229
  %1352 = fmul fast float %1349, %1229
  %1353 = fadd fast float %1350, 5.000000e-01
  %1354 = fadd fast float %1351, 5.000000e-01
  %1355 = fadd fast float %1352, 5.000000e-01
  %1356 = call float @dx.op.unary.f32(i32 24, float %1204)  ; Sqrt(value)
  %1357 = call float @dx.op.unary.f32(i32 24, float %1205)  ; Sqrt(value)
  %1358 = call float @dx.op.unary.f32(i32 24, float %1206)  ; Sqrt(value)
  %1359 = fmul fast float %1353, 2.000000e+00
  %1360 = fsub fast float 1.000000e+00, %1359
  %1361 = fmul fast float %1360, %1356
  %1362 = fadd fast float %1361, %1359
  %1363 = fmul fast float %1362, %1356
  %1364 = fmul fast float %1354, 2.000000e+00
  %1365 = fsub fast float 1.000000e+00, %1364
  %1366 = fmul fast float %1365, %1357
  %1367 = fadd fast float %1366, %1364
  %1368 = fmul fast float %1367, %1357
  %1369 = fmul fast float %1355, 2.000000e+00
  %1370 = fsub fast float 1.000000e+00, %1369
  %1371 = fmul fast float %1370, %1358
  %1372 = fadd fast float %1371, %1369
  %1373 = fmul fast float %1372, %1358
  %1374 = fmul fast float %1363, %1363
  %1375 = fmul fast float %1368, %1368
  %1376 = fmul fast float %1373, %1373
  br label %1393

; <label>:1377                                    ; preds = %1340
  %1378 = fmul fast float %242, %242
  %1379 = fmul fast float %246, %246
  %1380 = fmul fast float %250, %250
  %1381 = fadd fast float %1378, -1.000000e+00
  %1382 = fadd fast float %1379, -1.000000e+00
  %1383 = fadd fast float %1380, -1.000000e+00
  %1384 = fmul fast float %1229, %1381
  %1385 = fmul fast float %1229, %1382
  %1386 = fmul fast float %1229, %1383
  %1387 = fadd fast float %1384, 1.000000e+00
  %1388 = fadd fast float %1385, 1.000000e+00
  %1389 = fadd fast float %1386, 1.000000e+00
  %1390 = fmul fast float %1387, %1204
  %1391 = fmul fast float %1388, %1205
  %1392 = fmul fast float %1389, %1206
  br label %1393

; <label>:1393                                    ; preds = %1377, %1343, %1234, %1190
  %1394 = phi float [ %1339, %1234 ], [ %1215, %1343 ], [ %1215, %1377 ], [ 0x3FA23C0BE0000000, %1190 ]
  %1395 = phi float [ %1331, %1234 ], [ %1374, %1343 ], [ %1390, %1377 ], [ 1.000000e+00, %1190 ]
  %1396 = phi float [ %1332, %1234 ], [ %1375, %1343 ], [ %1391, %1377 ], [ 1.000000e+00, %1190 ]
  %1397 = phi float [ %1333, %1234 ], [ %1376, %1343 ], [ %1392, %1377 ], [ 1.000000e+00, %1190 ]
  %1398 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1399 = extractvalue %dx.types.CBufRet.i32 %1398, 1
  %1400 = and i32 %1399, 1
  %1401 = icmp ne i32 %1400, 0
  %1402 = add i32 %43, 356
  %1403 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1402, i32 undef)  ; BufferLoad(srv,index,wot)
  %1404 = extractvalue %dx.types.ResRet.i32 %1403, 0
  %1405 = and i32 %1404, 32
  %1406 = icmp ne i32 %1405, 0
  %1407 = and i1 %1401, %1406
  %1408 = select i1 %1407, float 1.000000e+00, float %1395
  %1409 = select i1 %1407, float 0x3FD3333340000000, float %1396
  %1410 = select i1 %1407, float 0x3FD3333340000000, float %1397
  %1411 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1412 = extractvalue %dx.types.ResRet.i32 %1411, 0
  %1413 = and i32 %1412, 32
  %1414 = icmp eq i32 %1413, 0
  br i1 %1414, label %1487, label %1415

; <label>:1415                                    ; preds = %1393
  %1416 = add i32 %43, 108
  %1417 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1416, i32 undef)  ; BufferLoad(srv,index,wot)
  %1418 = extractvalue %dx.types.ResRet.i32 %1417, 0
  %1419 = add i32 %43, 396
  %1420 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1419, i32 undef)  ; BufferLoad(srv,index,wot)
  %1421 = extractvalue %dx.types.ResRet.i32 %1420, 0
  %1422 = add i32 %1421, 0
  %1423 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1422, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1424 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1423, %dx.types.Handle %67, float %1000, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1425 = extractvalue %dx.types.ResRet.f32 %1424, 0
  %1426 = extractvalue %dx.types.ResRet.f32 %1424, 1
  %1427 = extractvalue %dx.types.ResRet.f32 %1424, 2
  %1428 = extractvalue %dx.types.ResRet.f32 %1424, 3
  %1429 = and i32 %1418, 255
  %1430 = uitofp i32 %1429 to float
  %1431 = lshr i32 %1418, 8
  %1432 = and i32 %1431, 255
  %1433 = uitofp i32 %1432 to float
  %1434 = lshr i32 %1418, 16
  %1435 = and i32 %1434, 255
  %1436 = uitofp i32 %1435 to float
  %1437 = fmul fast float %1436, 0x3F70101000000000
  %1438 = fmul fast float %1425, %1430
  %1439 = fadd fast float %1438, %1433
  %1440 = fmul fast float %1439, 0x3F70101000000000
  %1441 = fadd fast float %1426, -5.000000e-01
  %1442 = fadd fast float %1428, -5.000000e-01
  %1443 = fmul fast float %1441, %1437
  %1444 = fmul fast float %1442, %1437
  %1445 = fadd fast float %1443, 5.000000e-01
  %1446 = fadd fast float %1444, 5.000000e-01
  %1447 = fmul fast float %1445, 2.000000e+00
  %1448 = fadd fast float %1447, -1.000000e+00
  %1449 = fmul fast float %1446, 2.000000e+00
  %1450 = fadd fast float %1449, -1.000000e+00
  %1451 = fadd fast float %1448, %1450
  %1452 = fmul fast float %1451, 5.000000e-01
  %1453 = fsub fast float %1448, %1450
  %1454 = fmul fast float %1453, 5.000000e-01
  %1455 = call float @dx.op.unary.f32(i32 6, float %1452)  ; FAbs(value)
  %1456 = fsub fast float 1.000000e+00, %1455
  %1457 = call float @dx.op.unary.f32(i32 6, float %1454)  ; FAbs(value)
  %1458 = fsub fast float %1456, %1457
  %1459 = call float @dx.op.dot3.f32(i32 55, float %1452, float %1454, float %1458, float %1452, float %1454, float %1458)  ; Dot3(ax,ay,az,bx,by,bz)
  %1460 = call float @dx.op.unary.f32(i32 25, float %1459)  ; Rsqrt(value)
  %1461 = fmul fast float %1452, %1460
  %1462 = fmul fast float %1454, %1460
  %1463 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1464 = extractvalue %dx.types.ResRet.i32 %1463, 0
  %1465 = and i32 %1464, 67108864
  %1466 = icmp eq i32 %1465, 0
  br i1 %1466, label %1483, label %1467

; <label>:1467                                    ; preds = %1415
  %1468 = add i32 %43, 296
  %1469 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1468, i32 undef)  ; BufferLoad(srv,index,wot)
  %1470 = extractvalue %dx.types.ResRet.i32 %1469, 0
  %1471 = and i32 %1470, 65535
  %1472 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1471)  ; LegacyF16ToF32(value)
  %1473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %910, i32 undef)  ; BufferLoad(srv,index,wot)
  %1474 = extractvalue %dx.types.ResRet.i32 %1473, 0
  %1475 = and i32 %1474, 65535
  %1476 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1475)  ; LegacyF16ToF32(value)
  %1477 = lshr i32 %1470, 16
  %1478 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1477)  ; LegacyF16ToF32(value)
  %1479 = fsub fast float %1440, %1478
  %1480 = fmul fast float %1479, %1472
  %1481 = fadd fast float %1480, %1476
  %1482 = call float @dx.op.unary.f32(i32 7, float %1481)  ; Saturate(value)
  br label %1483

; <label>:1483                                    ; preds = %1467, %1415
  %1484 = phi float [ %1482, %1467 ], [ %1440, %1415 ]
  %1485 = call float @dx.op.dot2.f32(i32 54, float %1461, float %1462, float %904, float %905)  ; Dot2(ax,ay,bx,by)
  %1486 = call float @dx.op.dot2.f32(i32 54, float %1461, float %1462, float %906, float %907)  ; Dot2(ax,ay,bx,by)
  br label %1487

; <label>:1487                                    ; preds = %1483, %1393
  %1488 = phi float [ %1484, %1483 ], [ 0x3FD6666660000000, %1393 ]
  %1489 = phi float [ %1485, %1483 ], [ 0.000000e+00, %1393 ]
  %1490 = phi float [ %1486, %1483 ], [ 0.000000e+00, %1393 ]
  %1491 = phi float [ %1427, %1483 ], [ 1.000000e+00, %1393 ]
  %1492 = add i32 %43, 176
  %1493 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1492, i32 undef)  ; BufferLoad(srv,index,wot)
  %1494 = extractvalue %dx.types.ResRet.i32 %1493, 0
  %1495 = lshr i32 %1494, 22
  %1496 = shl nuw nsw i32 %1495, 5
  %1497 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1496)  ; LegacyF16ToF32(value)
  %1498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1499 = extractvalue %dx.types.ResRet.i32 %1498, 0
  %1500 = and i32 %1499, 64
  %1501 = icmp eq i32 %1500, 0
  br i1 %1501, label %1535, label %1502

; <label>:1502                                    ; preds = %1487
  %1503 = add i32 %43, 412
  %1504 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1503, i32 undef)  ; BufferLoad(srv,index,wot)
  %1505 = extractvalue %dx.types.ResRet.i32 %1504, 0
  %1506 = add i32 %1505, 0
  %1507 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1506, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = and i32 %1509, 131072
  %1511 = icmp eq i32 %1510, 0
  %1512 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1507, %dx.types.Handle %67, float %1000, float %1001, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1513 = extractvalue %dx.types.ResRet.f32 %1512, 0
  %1514 = extractvalue %dx.types.ResRet.f32 %1512, 1
  %1515 = extractvalue %dx.types.ResRet.f32 %1512, 2
  %1516 = fmul fast float %1513, %230
  %1517 = fmul fast float %1514, %233
  %1518 = fmul fast float %1515, %236
  br i1 %1511, label %1525, label %1519

; <label>:1519                                    ; preds = %1502
  %1520 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1521 = extractvalue %dx.types.CBufRet.f32 %1520, 0
  %1522 = fmul fast float %1521, %1516
  %1523 = fmul fast float %1521, %1517
  %1524 = fmul fast float %1521, %1518
  br label %1525

; <label>:1525                                    ; preds = %1519, %1502
  %1526 = phi float [ %1522, %1519 ], [ %1516, %1502 ]
  %1527 = phi float [ %1523, %1519 ], [ %1517, %1502 ]
  %1528 = phi float [ %1524, %1519 ], [ %1518, %1502 ]
  %1529 = fmul fast float %1526, %1497
  %1530 = select i1 %168, float %1529, float %1526
  %1531 = call float @dx.op.dot3.f32(i32 55, float %1530, float %1527, float %1528, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1532 = select i1 %168, float 0.000000e+00, float %1526
  %1533 = select i1 %168, float %1531, float %1527
  %1534 = select i1 %168, float 0.000000e+00, float %1528
  br label %1535

; <label>:1535                                    ; preds = %1525, %1487
  %1536 = phi float [ %1532, %1525 ], [ 0.000000e+00, %1487 ]
  %1537 = phi float [ %1533, %1525 ], [ 0.000000e+00, %1487 ]
  %1538 = phi float [ %1534, %1525 ], [ 0.000000e+00, %1487 ]
  %1539 = add i32 %43, 112
  %1540 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1539, i32 undef)  ; BufferLoad(srv,index,wot)
  %1541 = extractvalue %dx.types.ResRet.i32 %1540, 0
  %1542 = and i32 %1541, 255
  %1543 = uitofp i32 %1542 to float
  %1544 = lshr i32 %1541, 8
  %1545 = and i32 %1544, 255
  %1546 = uitofp i32 %1545 to float
  %1547 = call float @dx.op.dot3.f32(i32 55, float %1408, float %1409, float %1410, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1548 = fmul fast float %1546, %1547
  %1549 = fadd fast float %1548, %1543
  %1550 = fmul fast float %1549, 0x3F70101020000000
  %1551 = call float @dx.op.unary.f32(i32 7, float %1550)  ; Saturate(value)
  br i1 %892, label %1552, label %1560

; <label>:1552                                    ; preds = %1535
  %1553 = fsub fast float 1.000000e+00, %1188
  %1554 = fmul fast float %1553, %880
  %1555 = fmul fast float %1553, %881
  %1556 = fmul fast float %1553, %882
  %1557 = fmul fast float %1553, %883
  %1558 = fmul fast float %1553, %884
  %1559 = fmul fast float %1553, %885
  br label %1560

; <label>:1560                                    ; preds = %1552, %1535
  %1561 = phi float [ %1554, %1552 ], [ %880, %1535 ]
  %1562 = phi float [ %1555, %1552 ], [ %881, %1535 ]
  %1563 = phi float [ %1556, %1552 ], [ %882, %1535 ]
  %1564 = phi float [ %1557, %1552 ], [ %883, %1535 ]
  %1565 = phi float [ %1558, %1552 ], [ %884, %1535 ]
  %1566 = phi float [ %1559, %1552 ], [ %885, %1535 ]
  %1567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %893, i32 undef)  ; BufferLoad(srv,index,wot)
  %1568 = extractvalue %dx.types.ResRet.i32 %1567, 0
  %1569 = and i32 %1568, 3
  %1570 = icmp eq i32 %1569, 3
  br i1 %1570, label %1649, label %1571

; <label>:1571                                    ; preds = %1560
  %1572 = and i32 %1568, 16
  %1573 = icmp ne i32 %1572, 0
  %1574 = select i1 %1573, float %1188, float 0.000000e+00
  %1575 = icmp eq i32 %1569, 0
  br i1 %1575, label %1576, label %1604

; <label>:1576                                    ; preds = %1571
  %1577 = and i32 %1568, 64
  %1578 = icmp ne i32 %1577, 0
  %1579 = select i1 %1578, float %1188, float 0.000000e+00
  %1580 = fsub fast float %1408, %1561
  %1581 = fsub fast float %1409, %1562
  %1582 = fsub fast float %1410, %1563
  %1583 = fmul fast float %1574, %1580
  %1584 = fmul fast float %1574, %1581
  %1585 = fmul fast float %1574, %1582
  %1586 = fadd fast float %1583, %1561
  %1587 = fadd fast float %1584, %1562
  %1588 = fadd fast float %1585, %1563
  %1589 = fsub fast float %1394, %886
  %1590 = fmul fast float %1574, %1589
  %1591 = fadd fast float %1590, %886
  %1592 = fsub fast float %1536, %1564
  %1593 = fsub fast float %1537, %1565
  %1594 = fsub fast float %1538, %1566
  %1595 = fmul fast float %1579, %1592
  %1596 = fmul fast float %1579, %1593
  %1597 = fmul fast float %1579, %1594
  %1598 = fadd fast float %1595, %1564
  %1599 = fadd fast float %1596, %1565
  %1600 = fadd fast float %1597, %1566
  %1601 = fsub fast float %1551, %890
  %1602 = fmul fast float %1574, %1601
  %1603 = fadd fast float %1602, %890
  br label %1649

; <label>:1604                                    ; preds = %1571
  %1605 = icmp eq i32 %1569, 1
  br i1 %1605, label %1606, label %1619

; <label>:1606                                    ; preds = %1604
  %1607 = fadd fast float %1408, -1.000000e+00
  %1608 = fadd fast float %1409, -1.000000e+00
  %1609 = fadd fast float %1410, -1.000000e+00
  %1610 = fmul fast float %1574, %1607
  %1611 = fmul fast float %1574, %1608
  %1612 = fmul fast float %1574, %1609
  %1613 = fadd fast float %1610, 1.000000e+00
  %1614 = fadd fast float %1611, 1.000000e+00
  %1615 = fadd fast float %1612, 1.000000e+00
  %1616 = fmul fast float %1613, %1561
  %1617 = fmul fast float %1614, %1562
  %1618 = fmul fast float %1615, %1563
  br label %1649

; <label>:1619                                    ; preds = %1604
  %1620 = icmp eq i32 %1569, 2
  br i1 %1620, label %1621, label %1649

; <label>:1621                                    ; preds = %1619
  %1622 = call float @dx.op.unary.f32(i32 24, float %1408)  ; Sqrt(value)
  %1623 = call float @dx.op.unary.f32(i32 24, float %1409)  ; Sqrt(value)
  %1624 = call float @dx.op.unary.f32(i32 24, float %1410)  ; Sqrt(value)
  %1625 = fadd fast float %1622, -5.000000e-01
  %1626 = fadd fast float %1623, -5.000000e-01
  %1627 = fadd fast float %1624, -5.000000e-01
  %1628 = fmul fast float %1625, %1574
  %1629 = fmul fast float %1626, %1574
  %1630 = fmul fast float %1627, %1574
  %1631 = fadd fast float %1628, 5.000000e-01
  %1632 = fadd fast float %1629, 5.000000e-01
  %1633 = fadd fast float %1630, 5.000000e-01
  %1634 = fmul fast float %1631, 2.000000e+00
  %1635 = fsub fast float 1.000000e+00, %1634
  %1636 = fmul fast float %1635, %1561
  %1637 = fadd fast float %1636, %1634
  %1638 = fmul fast float %1637, %1561
  %1639 = fmul fast float %1632, 2.000000e+00
  %1640 = fsub fast float 1.000000e+00, %1639
  %1641 = fmul fast float %1640, %1562
  %1642 = fadd fast float %1641, %1639
  %1643 = fmul fast float %1642, %1562
  %1644 = fmul fast float %1633, 2.000000e+00
  %1645 = fsub fast float 1.000000e+00, %1644
  %1646 = fmul fast float %1645, %1563
  %1647 = fadd fast float %1646, %1644
  %1648 = fmul fast float %1647, %1563
  br label %1649

; <label>:1649                                    ; preds = %1621, %1619, %1606, %1576, %1560
  %1650 = phi float [ %1561, %1560 ], [ %1638, %1621 ], [ %1561, %1619 ], [ %1616, %1606 ], [ %1586, %1576 ]
  %1651 = phi float [ %1562, %1560 ], [ %1643, %1621 ], [ %1562, %1619 ], [ %1617, %1606 ], [ %1587, %1576 ]
  %1652 = phi float [ %1563, %1560 ], [ %1648, %1621 ], [ %1563, %1619 ], [ %1618, %1606 ], [ %1588, %1576 ]
  %1653 = phi float [ %1564, %1560 ], [ %1564, %1621 ], [ %1564, %1619 ], [ %1564, %1606 ], [ %1598, %1576 ]
  %1654 = phi float [ %1565, %1560 ], [ %1565, %1621 ], [ %1565, %1619 ], [ %1565, %1606 ], [ %1599, %1576 ]
  %1655 = phi float [ %1566, %1560 ], [ %1566, %1621 ], [ %1566, %1619 ], [ %1566, %1606 ], [ %1600, %1576 ]
  %1656 = phi float [ %886, %1560 ], [ %886, %1621 ], [ %886, %1619 ], [ %886, %1606 ], [ %1591, %1576 ]
  %1657 = phi float [ %890, %1560 ], [ %890, %1621 ], [ %890, %1619 ], [ %890, %1606 ], [ %1603, %1576 ]
  %1658 = and i32 %1568, 12
  %1659 = icmp eq i32 %1658, 12
  br i1 %1659, label %1732, label %1660

; <label>:1660                                    ; preds = %1649
  %1661 = and i32 %1568, 2097184
  %1662 = icmp eq i32 %1661, 2097184
  %1663 = select i1 %1662, float %1188, float 0.000000e+00
  %1664 = and i32 %1568, 4194336
  %1665 = icmp eq i32 %1664, 4194336
  %1666 = select i1 %1665, float %1188, float 0.000000e+00
  %1667 = and i32 %1568, 8388640
  %1668 = icmp eq i32 %1667, 8388640
  %1669 = select i1 %1668, float %1188, float 0.000000e+00
  %1670 = icmp eq i32 %1658, 0
  br i1 %1670, label %1671, label %1684

; <label>:1671                                    ; preds = %1660
  %1672 = fsub fast float %1489, %878
  %1673 = fsub fast float %1490, %879
  %1674 = fmul fast float %1663, %1672
  %1675 = fmul fast float %1663, %1673
  %1676 = fadd fast float %1674, %878
  %1677 = fadd fast float %1675, %879
  %1678 = fsub fast float %1491, %889
  %1679 = fmul fast float %1666, %1678
  %1680 = fadd fast float %1679, %889
  %1681 = fsub fast float %1488, %888
  %1682 = fmul fast float %1669, %1681
  %1683 = fadd fast float %1682, %888
  br label %1732

; <label>:1684                                    ; preds = %1660
  %1685 = icmp eq i32 %1658, 4
  br i1 %1685, label %1686, label %1718

; <label>:1686                                    ; preds = %1684
  %1687 = fmul fast float %1663, %1489
  %1688 = fmul fast float %1663, %1490
  %1689 = fadd fast float %1687, %878
  %1690 = fadd fast float %1688, %879
  %1691 = call float @dx.op.binary.f32(i32 36, float %889, float %1491)  ; FMin(a,b)
  %1692 = fsub fast float %1691, %889
  %1693 = fmul fast float %1692, %1666
  %1694 = fadd fast float %1693, %889
  %1695 = fadd fast float %1488, %888
  %1696 = fmul fast float %1695, 0x3FF337FAE0000000
  %1697 = fmul fast float %888, %888
  %1698 = fmul fast float %1488, %1488
  %1699 = fadd fast float %1698, %1697
  %1700 = fmul fast float %1699, 0x3FE5152B00000000
  %1701 = fmul fast float %888, 0xBFCC1F85E0000000
  %1702 = fmul fast float %1701, %1488
  %1703 = fadd fast float %1702, 0xBFE1363700000000
  %1704 = fadd fast float %1703, %1696
  %1705 = fsub fast float %1704, %1700
  %1706 = fmul fast float %1695, 0x3FBA6F0D00000000
  %1707 = fmul fast float %1699, 0x3FD0432880000000
  %1708 = fmul fast float %888, 0xBFEF110800000000
  %1709 = fmul fast float %1708, %1488
  %1710 = fadd fast float %1709, 1.000000e+00
  %1711 = fsub fast float %1710, %1706
  %1712 = fadd fast float %1711, %1707
  %1713 = fdiv fast float %1705, %1712
  %1714 = call float @dx.op.unary.f32(i32 7, float %1713)  ; Saturate(value)
  %1715 = fsub fast float %1714, %888
  %1716 = fmul fast float %1715, %1669
  %1717 = fadd fast float %1716, %888
  br label %1732

; <label>:1718                                    ; preds = %1684
  %1719 = icmp eq i32 %1658, 8
  br i1 %1719, label %1720, label %1732

; <label>:1720                                    ; preds = %1718
  %1721 = fmul fast float %1663, %1489
  %1722 = fmul fast float %1663, %1490
  %1723 = fadd fast float %1721, %878
  %1724 = fadd fast float %1722, %879
  %1725 = call float @dx.op.binary.f32(i32 36, float %889, float %1491)  ; FMin(a,b)
  %1726 = fsub fast float %1725, %889
  %1727 = fmul fast float %1726, %1666
  %1728 = fadd fast float %1727, %889
  %1729 = fsub fast float %1488, %888
  %1730 = fmul fast float %1669, %1729
  %1731 = fadd fast float %1730, %888
  br label %1732

; <label>:1732                                    ; preds = %1720, %1718, %1686, %1671, %1649, %1187, %891, %877
  %1733 = phi float [ %878, %1649 ], [ %878, %1187 ], [ %878, %877 ], [ %1723, %1720 ], [ %878, %1718 ], [ %1689, %1686 ], [ %1676, %1671 ], [ %878, %891 ]
  %1734 = phi float [ %879, %1649 ], [ %879, %1187 ], [ %879, %877 ], [ %1724, %1720 ], [ %879, %1718 ], [ %1690, %1686 ], [ %1677, %1671 ], [ %879, %891 ]
  %1735 = phi float [ %1650, %1649 ], [ %880, %1187 ], [ %880, %877 ], [ %1650, %1720 ], [ %1650, %1718 ], [ %1650, %1686 ], [ %1650, %1671 ], [ %880, %891 ]
  %1736 = phi float [ %1651, %1649 ], [ %881, %1187 ], [ %881, %877 ], [ %1651, %1720 ], [ %1651, %1718 ], [ %1651, %1686 ], [ %1651, %1671 ], [ %881, %891 ]
  %1737 = phi float [ %1652, %1649 ], [ %882, %1187 ], [ %882, %877 ], [ %1652, %1720 ], [ %1652, %1718 ], [ %1652, %1686 ], [ %1652, %1671 ], [ %882, %891 ]
  %1738 = phi float [ %1653, %1649 ], [ %883, %1187 ], [ %883, %877 ], [ %1653, %1720 ], [ %1653, %1718 ], [ %1653, %1686 ], [ %1653, %1671 ], [ %883, %891 ]
  %1739 = phi float [ %1654, %1649 ], [ %884, %1187 ], [ %884, %877 ], [ %1654, %1720 ], [ %1654, %1718 ], [ %1654, %1686 ], [ %1654, %1671 ], [ %884, %891 ]
  %1740 = phi float [ %1655, %1649 ], [ %885, %1187 ], [ %885, %877 ], [ %1655, %1720 ], [ %1655, %1718 ], [ %1655, %1686 ], [ %1655, %1671 ], [ %885, %891 ]
  %1741 = phi float [ %1656, %1649 ], [ %886, %1187 ], [ %886, %877 ], [ %1656, %1720 ], [ %1656, %1718 ], [ %1656, %1686 ], [ %1656, %1671 ], [ %886, %891 ]
  %1742 = phi float [ %888, %1649 ], [ %888, %1187 ], [ %888, %877 ], [ %1731, %1720 ], [ %888, %1718 ], [ %1717, %1686 ], [ %1683, %1671 ], [ %888, %891 ]
  %1743 = phi float [ %889, %1649 ], [ %889, %1187 ], [ %889, %877 ], [ %1728, %1720 ], [ %889, %1718 ], [ %1694, %1686 ], [ %1680, %1671 ], [ %889, %891 ]
  %1744 = phi float [ %1657, %1649 ], [ %890, %1187 ], [ %890, %877 ], [ %1657, %1720 ], [ %1657, %1718 ], [ %1657, %1686 ], [ %1657, %1671 ], [ %890, %891 ]
  br i1 %357, label %2586, label %1745

; <label>:1745                                    ; preds = %1732
  %1746 = icmp ult i32 %410, 3
  %1747 = add i32 %43, 56
  %1748 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1749 = extractvalue %dx.types.ResRet.i32 %1748, 0
  %1750 = add i32 %43, 60
  %1751 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1750, i32 undef)  ; BufferLoad(srv,index,wot)
  %1752 = extractvalue %dx.types.ResRet.i32 %1751, 0
  %1753 = or i32 %1752, %1749
  %1754 = icmp eq i32 %1753, 0
  br i1 %1754, label %2586, label %1755

; <label>:1755                                    ; preds = %1745
  %1756 = and i32 %1749, 262144
  %1757 = icmp ne i32 %1756, 0
  %1758 = select i1 %1757, float %46, float 1.000000e+00
  %1759 = select i1 %1757, float %47, float 0.000000e+00
  %1760 = select i1 %1757, float %48, float 0.000000e+00
  %1761 = select i1 %1757, float %49, float 1.000000e+00
  %1762 = select i1 %1757, float %50, float %59
  %1763 = select i1 %1757, float %51, float %60
  %1764 = add i32 %43, 316
  %1765 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %1766 = extractvalue %dx.types.ResRet.i32 %1765, 0
  %1767 = lshr i32 %1766, 16
  %1768 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1767)  ; LegacyF16ToF32(value)
  %1769 = fmul fast float %1768, 0x3F50624DE0000000
  %1770 = add i32 %43, 120
  %1771 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %1772 = extractvalue %dx.types.ResRet.i32 %1771, 0
  %1773 = lshr i32 %1772, 16
  %1774 = and i32 %1773, 255
  %1775 = lshr i32 %1772, 24
  %1776 = add i32 %43, 324
  %1777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1776, i32 undef)  ; BufferLoad(srv,index,wot)
  %1778 = extractvalue %dx.types.ResRet.i32 %1777, 0
  %1779 = and i32 %1778, 65535
  %1780 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1779)  ; LegacyF16ToF32(value)
  %1781 = lshr i32 %1778, 16
  %1782 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1781)  ; LegacyF16ToF32(value)
  %1783 = add i32 %43, 64
  %1784 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1783, i32 undef)  ; BufferLoad(srv,index,wot)
  %1785 = extractvalue %dx.types.ResRet.i32 %1784, 0
  %1786 = lshr i32 %1785, 22
  %1787 = shl nuw nsw i32 %1786, 5
  %1788 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1787)  ; LegacyF16ToF32(value)
  %1789 = shl i32 %1785, 4
  %1790 = and i32 %1789, 32752
  %1791 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1790)  ; LegacyF16ToF32(value)
  %1792 = lshr i32 %1785, 7
  %1793 = and i32 %1792, 32752
  %1794 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1793)  ; LegacyF16ToF32(value)
  %1795 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1796 = extractvalue %dx.types.CBufRet.f32 %1795, 3
  %1797 = fmul fast float %1796, 1.000000e+03
  %1798 = fmul fast float %307, %1797
  %1799 = call float @dx.op.unary.f32(i32 22, float %1798)  ; Frc(value)
  %1800 = fadd fast float %1799, %297
  %1801 = fmul fast float %308, %1797
  %1802 = call float @dx.op.unary.f32(i32 22, float %1801)  ; Frc(value)
  %1803 = fadd fast float %1802, %299
  %1804 = fmul fast float %1769, %1797
  %1805 = call float @dx.op.unary.f32(i32 22, float %1804)  ; Frc(value)
  %1806 = fmul fast float %1805, 0x401921FB60000000
  %1807 = fadd fast float %1806, %1788
  %1808 = call float @dx.op.unary.f32(i32 13, float %1807)  ; Sin(value)
  %1809 = call float @dx.op.unary.f32(i32 12, float %1807)  ; Cos(value)
  %1810 = fsub fast float -0.000000e+00, %1808
  %1811 = fadd fast float %1762, -5.000000e-01
  %1812 = fadd fast float %1763, -5.000000e-01
  %1813 = fmul fast float %1780, %1811
  %1814 = fmul fast float %1782, %1812
  %1815 = fadd fast float %1813, 5.000000e-01
  %1816 = fadd fast float %1814, 5.000000e-01
  %1817 = fmul fast float %1791, %1815
  %1818 = fmul fast float %1794, %1816
  %1819 = fmul fast float %1809, %1817
  %1820 = call float @dx.op.tertiary.f32(i32 46, float %1810, float %1818, float %1819)  ; FMad(a,b,c)
  %1821 = fmul fast float %1808, %1817
  %1822 = call float @dx.op.tertiary.f32(i32 46, float %1809, float %1818, float %1821)  ; FMad(a,b,c)
  %1823 = fadd fast float %1800, %1820
  %1824 = fadd fast float %1803, %1822
  %1825 = icmp ugt i32 %1774, 1
  %1826 = icmp ugt i32 %1772, 33554431
  %1827 = or i1 %1826, %1825
  br i1 %1827, label %1828, label %1853

; <label>:1828                                    ; preds = %1755
  %1829 = add i32 %43, 260
  %1830 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1829, i32 undef)  ; BufferLoad(srv,index,wot)
  %1831 = extractvalue %dx.types.ResRet.i32 %1830, 0
  %1832 = lshr i32 %1831, 16
  %1833 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1832)  ; LegacyF16ToF32(value)
  %1834 = fmul fast float %1796, %1833
  %1835 = call float @dx.op.unary.f32(i32 22, float %1834)  ; Frc(value)
  %1836 = mul nuw nsw i32 %1774, %1775
  %1837 = uitofp i32 %1836 to float
  %1838 = fmul fast float %1835, %1837
  %1839 = call float @dx.op.unary.f32(i32 27, float %1838)  ; Round_ni(value)
  %1840 = fptoui float %1839 to i32
  %1841 = urem i32 %1840, %1774
  %1842 = udiv i32 %1840, %1775
  %1843 = call float @dx.op.unary.f32(i32 22, float %1823)  ; Frc(value)
  %1844 = call float @dx.op.unary.f32(i32 22, float %1824)  ; Frc(value)
  %1845 = uitofp i32 %1841 to float
  %1846 = uitofp i32 %1842 to float
  %1847 = fadd fast float %1843, %1845
  %1848 = fadd fast float %1844, %1846
  %1849 = uitofp i32 %1774 to float
  %1850 = uitofp i32 %1775 to float
  %1851 = fdiv fast float %1847, %1849
  %1852 = fdiv fast float %1848, %1850
  br label %1853

; <label>:1853                                    ; preds = %1828, %1755
  %1854 = phi float [ %1851, %1828 ], [ %1823, %1755 ]
  %1855 = phi float [ %1852, %1828 ], [ %1824, %1755 ]
  %1856 = and i32 %1749, 16777216
  %1857 = icmp eq i32 %1856, 0
  br i1 %1857, label %1967, label %1858

; <label>:1858                                    ; preds = %1853
  %1859 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1860 = extractvalue %dx.types.CBufRet.f32 %1859, 0
  %1861 = extractvalue %dx.types.CBufRet.f32 %1859, 1
  %1862 = extractvalue %dx.types.CBufRet.f32 %1859, 2
  %1863 = fadd fast float %1860, %126
  %1864 = fadd fast float %1861, %127
  %1865 = fadd fast float %1862, %128
  %1866 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1867 = extractvalue %dx.types.CBufRet.f32 %1866, 0
  %1868 = call float @dx.op.unary.f32(i32 7, float %1867)  ; Saturate(value)
  %1869 = icmp eq i32 %44, 65535
  br i1 %1869, label %1964, label %1870

; <label>:1870                                    ; preds = %1858
  %1871 = lshr i32 %44, 1
  %1872 = shl i32 %1871, 2
  %1873 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1872, i32 undef)  ; BufferLoad(srv,index,wot)
  %1874 = extractvalue %dx.types.ResRet.i32 %1873, 0
  %1875 = and i32 %44, 1
  %1876 = icmp ne i32 %1875, 0
  %1877 = lshr i32 %1874, 16
  %1878 = and i32 %1874, 65535
  %1879 = select i1 %1876, i32 %1877, i32 %1878
  %1880 = icmp eq i32 %1879, 65535
  br i1 %1880, label %1960, label %1881

; <label>:1881                                    ; preds = %1870
  %1882 = mul nuw nsw i32 %1879, 40
  %1883 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1882, i32 undef)  ; BufferLoad(srv,index,wot)
  %1884 = extractvalue %dx.types.ResRet.f32 %1883, 0
  %1885 = extractvalue %dx.types.ResRet.f32 %1883, 1
  %1886 = extractvalue %dx.types.ResRet.f32 %1883, 2
  %1887 = add nuw nsw i32 %1882, 12
  %1888 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1887, i32 undef)  ; BufferLoad(srv,index,wot)
  %1889 = extractvalue %dx.types.ResRet.f32 %1888, 0
  %1890 = extractvalue %dx.types.ResRet.f32 %1888, 1
  %1891 = extractvalue %dx.types.ResRet.f32 %1888, 2
  %1892 = add nuw nsw i32 %1882, 24
  %1893 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1892, i32 undef)  ; BufferLoad(srv,index,wot)
  %1894 = extractvalue %dx.types.ResRet.f32 %1893, 0
  %1895 = extractvalue %dx.types.ResRet.f32 %1893, 1
  %1896 = extractvalue %dx.types.ResRet.f32 %1893, 2
  %1897 = add nuw nsw i32 %1882, 36
  %1898 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1897, i32 undef)  ; BufferLoad(srv,index,wot)
  %1899 = extractvalue %dx.types.ResRet.f32 %1898, 0
  %1900 = fsub fast float %1863, %1884
  %1901 = fsub fast float %1864, %1885
  %1902 = fsub fast float %1865, %1886
  %1903 = fmul fast float %1899, %1900
  %1904 = fmul fast float %1899, %1901
  %1905 = fmul fast float %1899, %1902
  %1906 = call float @dx.op.unary.f32(i32 27, float %1903)  ; Round_ni(value)
  %1907 = call float @dx.op.unary.f32(i32 27, float %1904)  ; Round_ni(value)
  %1908 = call float @dx.op.unary.f32(i32 27, float %1905)  ; Round_ni(value)
  %1909 = fadd fast float %1906, 5.000000e-01
  %1910 = fadd fast float %1907, 5.000000e-01
  %1911 = fadd fast float %1908, 5.000000e-01
  %1912 = fmul fast float %1909, %1889
  %1913 = fmul fast float %1910, %1890
  %1914 = fmul fast float %1911, %1891
  %1915 = shl i32 %44, 2
  %1916 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1917 = extractvalue %dx.types.ResRet.i32 %1916, 0
  %1918 = add i32 %1917, 0
  %1919 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1918, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1920 = call float @dx.op.unary.f32(i32 22, float %1912)  ; Frc(value)
  %1921 = call float @dx.op.unary.f32(i32 22, float %1913)  ; Frc(value)
  %1922 = call float @dx.op.unary.f32(i32 22, float %1914)  ; Frc(value)
  %1923 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1919, %dx.types.Handle %40, float %1920, float %1921, float %1922, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1924 = extractvalue %dx.types.ResRet.f32 %1923, 0
  %1925 = extractvalue %dx.types.ResRet.f32 %1923, 1
  %1926 = extractvalue %dx.types.ResRet.f32 %1923, 2
  %1927 = fmul fast float %1924, 1.023000e+03
  %1928 = fmul fast float %1925, 1.023000e+03
  %1929 = fmul fast float %1926, 1.023000e+03
  %1930 = fadd fast float %1927, 5.000000e-01
  %1931 = fadd fast float %1928, 5.000000e-01
  %1932 = fadd fast float %1929, 5.000000e-01
  %1933 = call float @dx.op.unary.f32(i32 27, float %1930)  ; Round_ni(value)
  %1934 = call float @dx.op.unary.f32(i32 27, float %1931)  ; Round_ni(value)
  %1935 = call float @dx.op.unary.f32(i32 27, float %1932)  ; Round_ni(value)
  %1936 = fsub fast float %1903, %1906
  %1937 = fsub fast float %1904, %1907
  %1938 = fsub fast float %1905, %1908
  %1939 = fmul fast float %1936, 7.500000e-01
  %1940 = fmul fast float %1937, 7.500000e-01
  %1941 = fmul fast float %1938, 7.500000e-01
  %1942 = fadd fast float %1906, 1.250000e-01
  %1943 = fadd fast float %1942, %1939
  %1944 = fadd fast float %1943, %1933
  %1945 = fadd fast float %1907, 1.250000e-01
  %1946 = fadd fast float %1945, %1940
  %1947 = fadd fast float %1946, %1934
  %1948 = fadd fast float %1908, 1.250000e-01
  %1949 = fadd fast float %1948, %1941
  %1950 = fadd fast float %1949, %1935
  %1951 = fmul fast float %1944, %1894
  %1952 = fmul fast float %1947, %1895
  %1953 = fmul fast float %1950, %1896
  %1954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1915, i32 undef)  ; BufferLoad(srv,index,wot)
  %1955 = extractvalue %dx.types.ResRet.i32 %1954, 0
  %1956 = add i32 %1955, 0
  %1957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1958 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1957, %dx.types.Handle %38, float %1951, float %1952, float %1953, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1959 = extractvalue %dx.types.ResRet.f32 %1958, 0
  br label %1960

; <label>:1960                                    ; preds = %1881, %1870
  %1961 = phi float [ %1959, %1881 ], [ -1.000000e+00, %1870 ]
  %1962 = fadd fast float %1961, %1868
  %1963 = call float @dx.op.unary.f32(i32 7, float %1962)  ; Saturate(value)
  br label %1964

; <label>:1964                                    ; preds = %1960, %1858
  %1965 = phi float [ %1963, %1960 ], [ %1868, %1858 ]
  %1966 = fmul fast float %1965, %406
  br label %1967

; <label>:1967                                    ; preds = %1964, %1853
  %1968 = phi float [ %1966, %1964 ], [ %406, %1853 ]
  %1969 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %1970 = extractvalue %dx.types.ResRet.i32 %1969, 0
  %1971 = and i32 %1970, 256
  %1972 = icmp eq i32 %1971, 0
  br i1 %1972, label %2019, label %1973

; <label>:1973                                    ; preds = %1967
  %1974 = add i32 %43, 448
  %1975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1974, i32 undef)  ; BufferLoad(srv,index,wot)
  %1976 = extractvalue %dx.types.ResRet.i32 %1975, 0
  %1977 = add i32 %1976, 0
  %1978 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1977, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1979 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1978, %dx.types.Handle %68, float %1854, float %1855, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1980 = extractvalue %dx.types.ResRet.f32 %1979, 0
  %1981 = add i32 %43, 132
  %1982 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1981, i32 undef)  ; BufferLoad(srv,index,wot)
  %1983 = extractvalue %dx.types.ResRet.i32 %1982, 0
  %1984 = shl i32 %1983, 4
  %1985 = and i32 %1984, 32752
  %1986 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1985)  ; LegacyF16ToF32(value)
  %1987 = lshr i32 %1983, 7
  %1988 = and i32 %1987, 32752
  %1989 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1988)  ; LegacyF16ToF32(value)
  %1990 = fsub fast float 1.000000e+00, %1968
  %1991 = call float @dx.op.binary.f32(i32 35, float %1990, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1992 = bitcast float %1968 to i32
  %1993 = sitofp i32 %1992 to float
  %1994 = fadd fast float %1993, 0xC1CFBF8940000000
  %1995 = fmul fast float %1989, %1994
  %1996 = fadd fast float %1995, 0x41CFBF8940000000
  %1997 = fptosi float %1996 to i32
  %1998 = bitcast i32 %1997 to float
  %1999 = bitcast float %1991 to i32
  %2000 = sitofp i32 %1999 to float
  %2001 = fadd fast float %2000, 0xC1CFBF8940000000
  %2002 = fmul fast float %2001, %1989
  %2003 = fadd fast float %2002, 0x41CFBF8940000000
  %2004 = fptosi float %2003 to i32
  %2005 = bitcast i32 %2004 to float
  %2006 = fmul fast float %1998, %1986
  %2007 = fmul fast float %2005, %1986
  %2008 = fsub fast float %1991, %2006
  %2009 = fadd fast float %2007, %1991
  %2010 = call float @dx.op.unary.f32(i32 7, float %2008)  ; Saturate(value)
  %2011 = call float @dx.op.unary.f32(i32 7, float %2009)  ; Saturate(value)
  %2012 = fsub fast float %1980, %2010
  %2013 = fsub fast float %2011, %2010
  %2014 = bitcast float %2013 to i32
  %2015 = sub nsw i32 2129859010, %2014
  %2016 = bitcast i32 %2015 to float
  %2017 = fmul fast float %2016, %2012
  %2018 = call float @dx.op.unary.f32(i32 7, float %2017)  ; Saturate(value)
  br label %2019

; <label>:2019                                    ; preds = %1973, %1967
  %2020 = phi float [ %2018, %1973 ], [ %1968, %1967 ]
  %2021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2022 = extractvalue %dx.types.ResRet.i32 %2021, 0
  %2023 = and i32 %2022, 128
  %2024 = icmp eq i32 %2023, 0
  br i1 %2024, label %2041, label %2025

; <label>:2025                                    ; preds = %2019
  %2026 = add i32 %43, 432
  %2027 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2026, i32 undef)  ; BufferLoad(srv,index,wot)
  %2028 = extractvalue %dx.types.ResRet.i32 %2027, 0
  %2029 = add i32 %2028, 0
  %2030 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2029, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2031 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2030, %dx.types.Handle %68, float %1854, float %1855, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2032 = extractvalue %dx.types.ResRet.f32 %2031, 0
  %2033 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2034 = extractvalue %dx.types.ResRet.i32 %2033, 0
  %2035 = and i32 %2034, 524288
  %2036 = icmp ne i32 %2035, 0
  %2037 = fcmp fast ogt float %2032, 0x3FE0101020000000
  %2038 = select i1 %2037, float 1.000000e+00, float 0.000000e+00
  %2039 = select i1 %2036, float %2038, float %2032
  %2040 = fmul fast float %2039, %2020
  br label %2041

; <label>:2041                                    ; preds = %2025, %2019
  %2042 = phi float [ %2040, %2025 ], [ %2020, %2019 ]
  %2043 = fcmp fast ult float %2042, 0x3F70101020000000
  br i1 %2043, label %2586, label %2044

; <label>:2044                                    ; preds = %2041
  %2045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2046 = extractvalue %dx.types.ResRet.i32 %2045, 0
  %2047 = and i32 %2046, 16
  %2048 = icmp eq i32 %2047, 0
  br i1 %2048, label %2247, label %2049

; <label>:2049                                    ; preds = %2044
  %2050 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1770, i32 undef)  ; BufferLoad(srv,index,wot)
  %2051 = extractvalue %dx.types.ResRet.i32 %2050, 0
  %2052 = add i32 %43, 384
  %2053 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2052, i32 undef)  ; BufferLoad(srv,index,wot)
  %2054 = extractvalue %dx.types.ResRet.i32 %2053, 0
  %2055 = add i32 %2054, 0
  %2056 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2055, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2057 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2056, %dx.types.Handle %67, float %1854, float %1855, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2058 = extractvalue %dx.types.ResRet.f32 %2057, 0
  %2059 = extractvalue %dx.types.ResRet.f32 %2057, 1
  %2060 = extractvalue %dx.types.ResRet.f32 %2057, 2
  %2061 = extractvalue %dx.types.ResRet.f32 %2057, 3
  %2062 = and i32 %2051, 255
  %2063 = uitofp i32 %2062 to float
  %2064 = lshr i32 %2051, 8
  %2065 = and i32 %2064, 255
  %2066 = uitofp i32 %2065 to float
  %2067 = fmul fast float %2061, %2063
  %2068 = fadd fast float %2067, %2066
  %2069 = fmul fast float %2068, 0x3F70101000000000
  %2070 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2071 = extractvalue %dx.types.ResRet.i32 %2070, 0
  %2072 = and i32 %2071, 512
  %2073 = icmp eq i32 %2072, 0
  br i1 %2073, label %2082, label %2074

; <label>:2074                                    ; preds = %2049
  %2075 = add i32 %43, 464
  %2076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2075, i32 undef)  ; BufferLoad(srv,index,wot)
  %2077 = extractvalue %dx.types.ResRet.i32 %2076, 0
  %2078 = add i32 %2077, 0
  %2079 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2078, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2080 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2079, %dx.types.Handle %68, float %1854, float %1855, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2081 = extractvalue %dx.types.ResRet.f32 %2080, 0
  br label %2082

; <label>:2082                                    ; preds = %2074, %2049
  %2083 = phi float [ %2081, %2074 ], [ 1.000000e+00, %2049 ]
  %2084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2085 = extractvalue %dx.types.ResRet.i32 %2084, 0
  %2086 = and i32 %2085, 33554432
  %2087 = icmp eq i32 %2086, 0
  br i1 %2087, label %2194, label %2088

; <label>:2088                                    ; preds = %2082
  %2089 = add i32 %43, 256
  %2090 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2089, i32 undef)  ; BufferLoad(srv,index,wot)
  %2091 = extractvalue %dx.types.ResRet.i32 %2090, 0
  %2092 = and i32 %2091, 65535
  %2093 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2092)  ; LegacyF16ToF32(value)
  %2094 = lshr i32 %2091, 16
  %2095 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2094)  ; LegacyF16ToF32(value)
  %2096 = add i32 %43, 260
  %2097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2096, i32 undef)  ; BufferLoad(srv,index,wot)
  %2098 = extractvalue %dx.types.ResRet.i32 %2097, 0
  %2099 = and i32 %2098, 65535
  %2100 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2099)  ; LegacyF16ToF32(value)
  %2101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %279, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.i32 %2101, 0
  %2103 = lshr i32 %2102, 24
  %2104 = uitofp i32 %2103 to float
  %2105 = fmul fast float %2104, 0x3F70101020000000
  %2106 = and i32 %2102, 255
  %2107 = uitofp i32 %2106 to float
  %2108 = fmul fast float %2107, 0x3F70101020000000
  %2109 = lshr i32 %2102, 8
  %2110 = and i32 %2109, 255
  %2111 = uitofp i32 %2110 to float
  %2112 = fmul fast float %2111, 0x3F70101020000000
  %2113 = lshr i32 %2102, 16
  %2114 = and i32 %2113, 255
  %2115 = uitofp i32 %2114 to float
  %2116 = fmul fast float %2115, 0x3F70101020000000
  %2117 = add i32 %43, 252
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2117, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = lshr i32 %2119, 24
  %2121 = uitofp i32 %2120 to float
  %2122 = fmul fast float %2121, 0x3F70101020000000
  %2123 = and i32 %2119, 255
  %2124 = uitofp i32 %2123 to float
  %2125 = fmul fast float %2124, 0x3F70101020000000
  %2126 = lshr i32 %2119, 8
  %2127 = and i32 %2126, 255
  %2128 = uitofp i32 %2127 to float
  %2129 = fmul fast float %2128, 0x3F70101020000000
  %2130 = lshr i32 %2119, 16
  %2131 = and i32 %2130, 255
  %2132 = uitofp i32 %2131 to float
  %2133 = fmul fast float %2132, 0x3F70101020000000
  %2134 = bitcast float %2058 to i32
  %2135 = ashr i32 %2134, 1
  %2136 = sub nsw i32 1597463174, %2135
  %2137 = bitcast i32 %2136 to float
  %2138 = fmul fast float %2058, 5.000000e-01
  %2139 = fmul fast float %2137, %2137
  %2140 = fmul fast float %2139, %2138
  %2141 = fsub fast float 1.500000e+00, %2140
  %2142 = fmul fast float %2137, %2058
  %2143 = fmul fast float %2142, %2141
  %2144 = bitcast float %2059 to i32
  %2145 = ashr i32 %2144, 1
  %2146 = sub nsw i32 1597463174, %2145
  %2147 = bitcast i32 %2146 to float
  %2148 = fmul fast float %2059, 5.000000e-01
  %2149 = fmul fast float %2147, %2147
  %2150 = fmul fast float %2149, %2148
  %2151 = fsub fast float 1.500000e+00, %2150
  %2152 = fmul fast float %2147, %2059
  %2153 = fmul fast float %2152, %2151
  %2154 = bitcast float %2060 to i32
  %2155 = ashr i32 %2154, 1
  %2156 = sub nsw i32 1597463174, %2155
  %2157 = bitcast i32 %2156 to float
  %2158 = fmul fast float %2060, 5.000000e-01
  %2159 = fmul fast float %2157, %2157
  %2160 = fmul fast float %2159, %2158
  %2161 = fsub fast float 1.500000e+00, %2160
  %2162 = fmul fast float %2157, %2060
  %2163 = fmul fast float %2162, %2161
  %2164 = fsub fast float %2143, %2125
  %2165 = fsub fast float %2153, %2129
  %2166 = fsub fast float %2163, %2133
  %2167 = fmul fast float %2164, %2093
  %2168 = fmul fast float %2165, %2095
  %2169 = fmul fast float %2166, %2100
  %2170 = fadd fast float %2167, %2108
  %2171 = fadd fast float %2168, %2112
  %2172 = fadd fast float %2169, %2116
  %2173 = call float @dx.op.unary.f32(i32 7, float %2170)  ; Saturate(value)
  %2174 = call float @dx.op.unary.f32(i32 7, float %2171)  ; Saturate(value)
  %2175 = call float @dx.op.unary.f32(i32 7, float %2172)  ; Saturate(value)
  %2176 = fmul fast float %2173, %2173
  %2177 = fmul fast float %2174, %2174
  %2178 = fmul fast float %2175, %2175
  %2179 = fsub fast float %2176, %2058
  %2180 = fsub fast float %2177, %2059
  %2181 = fsub fast float %2178, %2060
  %2182 = fmul fast float %2179, %2083
  %2183 = fmul fast float %2180, %2083
  %2184 = fmul fast float %2181, %2083
  %2185 = fadd fast float %2182, %2058
  %2186 = fadd fast float %2183, %2059
  %2187 = fadd fast float %2184, %2060
  %2188 = fadd fast float %2105, %2069
  %2189 = fsub fast float %2188, %2122
  %2190 = call float @dx.op.unary.f32(i32 7, float %2189)  ; Saturate(value)
  %2191 = fsub fast float %2190, %2069
  %2192 = fmul fast float %2191, %2083
  %2193 = fadd fast float %2192, %2069
  br label %2247

; <label>:2194                                    ; preds = %2082
  %2195 = and i32 %2085, 134217728
  %2196 = icmp eq i32 %2195, 0
  br i1 %2196, label %2231, label %2197

; <label>:2197                                    ; preds = %2194
  %2198 = call float @dx.op.unary.f32(i32 24, float %284)  ; Sqrt(value)
  %2199 = call float @dx.op.unary.f32(i32 24, float %288)  ; Sqrt(value)
  %2200 = call float @dx.op.unary.f32(i32 24, float %292)  ; Sqrt(value)
  %2201 = fadd fast float %2198, -5.000000e-01
  %2202 = fadd fast float %2199, -5.000000e-01
  %2203 = fadd fast float %2200, -5.000000e-01
  %2204 = fmul fast float %2201, %2083
  %2205 = fmul fast float %2202, %2083
  %2206 = fmul fast float %2203, %2083
  %2207 = fadd fast float %2204, 5.000000e-01
  %2208 = fadd fast float %2205, 5.000000e-01
  %2209 = fadd fast float %2206, 5.000000e-01
  %2210 = call float @dx.op.unary.f32(i32 24, float %2058)  ; Sqrt(value)
  %2211 = call float @dx.op.unary.f32(i32 24, float %2059)  ; Sqrt(value)
  %2212 = call float @dx.op.unary.f32(i32 24, float %2060)  ; Sqrt(value)
  %2213 = fmul fast float %2207, 2.000000e+00
  %2214 = fsub fast float 1.000000e+00, %2213
  %2215 = fmul fast float %2214, %2210
  %2216 = fadd fast float %2215, %2213
  %2217 = fmul fast float %2216, %2210
  %2218 = fmul fast float %2208, 2.000000e+00
  %2219 = fsub fast float 1.000000e+00, %2218
  %2220 = fmul fast float %2219, %2211
  %2221 = fadd fast float %2220, %2218
  %2222 = fmul fast float %2221, %2211
  %2223 = fmul fast float %2209, 2.000000e+00
  %2224 = fsub fast float 1.000000e+00, %2223
  %2225 = fmul fast float %2224, %2212
  %2226 = fadd fast float %2225, %2223
  %2227 = fmul fast float %2226, %2212
  %2228 = fmul fast float %2217, %2217
  %2229 = fmul fast float %2222, %2222
  %2230 = fmul fast float %2227, %2227
  br label %2247

; <label>:2231                                    ; preds = %2194
  %2232 = fmul fast float %284, %284
  %2233 = fmul fast float %288, %288
  %2234 = fmul fast float %292, %292
  %2235 = fadd fast float %2232, -1.000000e+00
  %2236 = fadd fast float %2233, -1.000000e+00
  %2237 = fadd fast float %2234, -1.000000e+00
  %2238 = fmul fast float %2083, %2235
  %2239 = fmul fast float %2083, %2236
  %2240 = fmul fast float %2083, %2237
  %2241 = fadd fast float %2238, 1.000000e+00
  %2242 = fadd fast float %2239, 1.000000e+00
  %2243 = fadd fast float %2240, 1.000000e+00
  %2244 = fmul fast float %2241, %2058
  %2245 = fmul fast float %2242, %2059
  %2246 = fmul fast float %2243, %2060
  br label %2247

; <label>:2247                                    ; preds = %2231, %2197, %2088, %2044
  %2248 = phi float [ %2193, %2088 ], [ %2069, %2197 ], [ %2069, %2231 ], [ 0x3FA23C0BE0000000, %2044 ]
  %2249 = phi float [ %2185, %2088 ], [ %2228, %2197 ], [ %2244, %2231 ], [ 1.000000e+00, %2044 ]
  %2250 = phi float [ %2186, %2088 ], [ %2229, %2197 ], [ %2245, %2231 ], [ 1.000000e+00, %2044 ]
  %2251 = phi float [ %2187, %2088 ], [ %2230, %2197 ], [ %2246, %2231 ], [ 1.000000e+00, %2044 ]
  %2252 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2253 = extractvalue %dx.types.CBufRet.i32 %2252, 1
  %2254 = and i32 %2253, 1
  %2255 = icmp ne i32 %2254, 0
  %2256 = add i32 %43, 356
  %2257 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2256, i32 undef)  ; BufferLoad(srv,index,wot)
  %2258 = extractvalue %dx.types.ResRet.i32 %2257, 0
  %2259 = and i32 %2258, 32
  %2260 = icmp ne i32 %2259, 0
  %2261 = and i1 %2255, %2260
  %2262 = select i1 %2261, float 1.000000e+00, float %2249
  %2263 = select i1 %2261, float 0x3FD3333340000000, float %2250
  %2264 = select i1 %2261, float 0x3FD3333340000000, float %2251
  %2265 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2266 = extractvalue %dx.types.ResRet.i32 %2265, 0
  %2267 = and i32 %2266, 32
  %2268 = icmp eq i32 %2267, 0
  br i1 %2268, label %2341, label %2269

; <label>:2269                                    ; preds = %2247
  %2270 = add i32 %43, 124
  %2271 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2270, i32 undef)  ; BufferLoad(srv,index,wot)
  %2272 = extractvalue %dx.types.ResRet.i32 %2271, 0
  %2273 = add i32 %43, 400
  %2274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2273, i32 undef)  ; BufferLoad(srv,index,wot)
  %2275 = extractvalue %dx.types.ResRet.i32 %2274, 0
  %2276 = add i32 %2275, 0
  %2277 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2276, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2278 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2277, %dx.types.Handle %67, float %1854, float %1855, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2279 = extractvalue %dx.types.ResRet.f32 %2278, 0
  %2280 = extractvalue %dx.types.ResRet.f32 %2278, 1
  %2281 = extractvalue %dx.types.ResRet.f32 %2278, 2
  %2282 = extractvalue %dx.types.ResRet.f32 %2278, 3
  %2283 = and i32 %2272, 255
  %2284 = uitofp i32 %2283 to float
  %2285 = lshr i32 %2272, 8
  %2286 = and i32 %2285, 255
  %2287 = uitofp i32 %2286 to float
  %2288 = lshr i32 %2272, 16
  %2289 = and i32 %2288, 255
  %2290 = uitofp i32 %2289 to float
  %2291 = fmul fast float %2290, 0x3F70101000000000
  %2292 = fmul fast float %2279, %2284
  %2293 = fadd fast float %2292, %2287
  %2294 = fmul fast float %2293, 0x3F70101000000000
  %2295 = fadd fast float %2280, -5.000000e-01
  %2296 = fadd fast float %2282, -5.000000e-01
  %2297 = fmul fast float %2295, %2291
  %2298 = fmul fast float %2296, %2291
  %2299 = fadd fast float %2297, 5.000000e-01
  %2300 = fadd fast float %2298, 5.000000e-01
  %2301 = fmul fast float %2299, 2.000000e+00
  %2302 = fadd fast float %2301, -1.000000e+00
  %2303 = fmul fast float %2300, 2.000000e+00
  %2304 = fadd fast float %2303, -1.000000e+00
  %2305 = fadd fast float %2302, %2304
  %2306 = fmul fast float %2305, 5.000000e-01
  %2307 = fsub fast float %2302, %2304
  %2308 = fmul fast float %2307, 5.000000e-01
  %2309 = call float @dx.op.unary.f32(i32 6, float %2306)  ; FAbs(value)
  %2310 = fsub fast float 1.000000e+00, %2309
  %2311 = call float @dx.op.unary.f32(i32 6, float %2308)  ; FAbs(value)
  %2312 = fsub fast float %2310, %2311
  %2313 = call float @dx.op.dot3.f32(i32 55, float %2306, float %2308, float %2312, float %2306, float %2308, float %2312)  ; Dot3(ax,ay,az,bx,by,bz)
  %2314 = call float @dx.op.unary.f32(i32 25, float %2313)  ; Rsqrt(value)
  %2315 = fmul fast float %2306, %2314
  %2316 = fmul fast float %2308, %2314
  %2317 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2318 = extractvalue %dx.types.ResRet.i32 %2317, 0
  %2319 = and i32 %2318, 67108864
  %2320 = icmp eq i32 %2319, 0
  br i1 %2320, label %2337, label %2321

; <label>:2321                                    ; preds = %2269
  %2322 = add i32 %43, 312
  %2323 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2322, i32 undef)  ; BufferLoad(srv,index,wot)
  %2324 = extractvalue %dx.types.ResRet.i32 %2323, 0
  %2325 = and i32 %2324, 65535
  %2326 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2325)  ; LegacyF16ToF32(value)
  %2327 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1764, i32 undef)  ; BufferLoad(srv,index,wot)
  %2328 = extractvalue %dx.types.ResRet.i32 %2327, 0
  %2329 = and i32 %2328, 65535
  %2330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2329)  ; LegacyF16ToF32(value)
  %2331 = lshr i32 %2324, 16
  %2332 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2331)  ; LegacyF16ToF32(value)
  %2333 = fsub fast float %2294, %2332
  %2334 = fmul fast float %2333, %2326
  %2335 = fadd fast float %2334, %2330
  %2336 = call float @dx.op.unary.f32(i32 7, float %2335)  ; Saturate(value)
  br label %2337

; <label>:2337                                    ; preds = %2321, %2269
  %2338 = phi float [ %2336, %2321 ], [ %2294, %2269 ]
  %2339 = call float @dx.op.dot2.f32(i32 54, float %2315, float %2316, float %1758, float %1759)  ; Dot2(ax,ay,bx,by)
  %2340 = call float @dx.op.dot2.f32(i32 54, float %2315, float %2316, float %1760, float %1761)  ; Dot2(ax,ay,bx,by)
  br label %2341

; <label>:2341                                    ; preds = %2337, %2247
  %2342 = phi float [ %2338, %2337 ], [ 0x3FD6666660000000, %2247 ]
  %2343 = phi float [ %2339, %2337 ], [ 0.000000e+00, %2247 ]
  %2344 = phi float [ %2340, %2337 ], [ 0.000000e+00, %2247 ]
  %2345 = phi float [ %2281, %2337 ], [ 1.000000e+00, %2247 ]
  %2346 = add i32 %43, 192
  %2347 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2346, i32 undef)  ; BufferLoad(srv,index,wot)
  %2348 = extractvalue %dx.types.ResRet.i32 %2347, 0
  %2349 = lshr i32 %2348, 22
  %2350 = shl nuw nsw i32 %2349, 5
  %2351 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2350)  ; LegacyF16ToF32(value)
  %2352 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2353 = extractvalue %dx.types.ResRet.i32 %2352, 0
  %2354 = and i32 %2353, 64
  %2355 = icmp eq i32 %2354, 0
  br i1 %2355, label %2389, label %2356

; <label>:2356                                    ; preds = %2341
  %2357 = add i32 %43, 416
  %2358 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2357, i32 undef)  ; BufferLoad(srv,index,wot)
  %2359 = extractvalue %dx.types.ResRet.i32 %2358, 0
  %2360 = add i32 %2359, 0
  %2361 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2360, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2363 = extractvalue %dx.types.ResRet.i32 %2362, 0
  %2364 = and i32 %2363, 131072
  %2365 = icmp eq i32 %2364, 0
  %2366 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2361, %dx.types.Handle %67, float %1854, float %1855, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2367 = extractvalue %dx.types.ResRet.f32 %2366, 0
  %2368 = extractvalue %dx.types.ResRet.f32 %2366, 1
  %2369 = extractvalue %dx.types.ResRet.f32 %2366, 2
  %2370 = fmul fast float %2367, %272
  %2371 = fmul fast float %2368, %275
  %2372 = fmul fast float %2369, %278
  br i1 %2365, label %2379, label %2373

; <label>:2373                                    ; preds = %2356
  %2374 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2375 = extractvalue %dx.types.CBufRet.f32 %2374, 0
  %2376 = fmul fast float %2375, %2370
  %2377 = fmul fast float %2375, %2371
  %2378 = fmul fast float %2375, %2372
  br label %2379

; <label>:2379                                    ; preds = %2373, %2356
  %2380 = phi float [ %2376, %2373 ], [ %2370, %2356 ]
  %2381 = phi float [ %2377, %2373 ], [ %2371, %2356 ]
  %2382 = phi float [ %2378, %2373 ], [ %2372, %2356 ]
  %2383 = fmul fast float %2380, %2351
  %2384 = select i1 %168, float %2383, float %2380
  %2385 = call float @dx.op.dot3.f32(i32 55, float %2384, float %2381, float %2382, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2386 = select i1 %168, float 0.000000e+00, float %2380
  %2387 = select i1 %168, float %2385, float %2381
  %2388 = select i1 %168, float 0.000000e+00, float %2382
  br label %2389

; <label>:2389                                    ; preds = %2379, %2341
  %2390 = phi float [ %2386, %2379 ], [ 0.000000e+00, %2341 ]
  %2391 = phi float [ %2387, %2379 ], [ 0.000000e+00, %2341 ]
  %2392 = phi float [ %2388, %2379 ], [ 0.000000e+00, %2341 ]
  %2393 = add i32 %43, 128
  %2394 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2393, i32 undef)  ; BufferLoad(srv,index,wot)
  %2395 = extractvalue %dx.types.ResRet.i32 %2394, 0
  %2396 = and i32 %2395, 255
  %2397 = uitofp i32 %2396 to float
  %2398 = lshr i32 %2395, 8
  %2399 = and i32 %2398, 255
  %2400 = uitofp i32 %2399 to float
  %2401 = call float @dx.op.dot3.f32(i32 55, float %2262, float %2263, float %2264, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2402 = fmul fast float %2400, %2401
  %2403 = fadd fast float %2402, %2397
  %2404 = fmul fast float %2403, 0x3F70101020000000
  %2405 = call float @dx.op.unary.f32(i32 7, float %2404)  ; Saturate(value)
  br i1 %1746, label %2406, label %2414

; <label>:2406                                    ; preds = %2389
  %2407 = fsub fast float 1.000000e+00, %2042
  %2408 = fmul fast float %2407, %1735
  %2409 = fmul fast float %2407, %1736
  %2410 = fmul fast float %2407, %1737
  %2411 = fmul fast float %2407, %1738
  %2412 = fmul fast float %2407, %1739
  %2413 = fmul fast float %2407, %1740
  br label %2414

; <label>:2414                                    ; preds = %2406, %2389
  %2415 = phi float [ %2408, %2406 ], [ %1735, %2389 ]
  %2416 = phi float [ %2409, %2406 ], [ %1736, %2389 ]
  %2417 = phi float [ %2410, %2406 ], [ %1737, %2389 ]
  %2418 = phi float [ %2411, %2406 ], [ %1738, %2389 ]
  %2419 = phi float [ %2412, %2406 ], [ %1739, %2389 ]
  %2420 = phi float [ %2413, %2406 ], [ %1740, %2389 ]
  %2421 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1747, i32 undef)  ; BufferLoad(srv,index,wot)
  %2422 = extractvalue %dx.types.ResRet.i32 %2421, 0
  %2423 = and i32 %2422, 3
  %2424 = icmp eq i32 %2423, 3
  br i1 %2424, label %2503, label %2425

; <label>:2425                                    ; preds = %2414
  %2426 = and i32 %2422, 16
  %2427 = icmp ne i32 %2426, 0
  %2428 = select i1 %2427, float %2042, float 0.000000e+00
  %2429 = icmp eq i32 %2423, 0
  br i1 %2429, label %2430, label %2458

; <label>:2430                                    ; preds = %2425
  %2431 = and i32 %2422, 64
  %2432 = icmp ne i32 %2431, 0
  %2433 = select i1 %2432, float %2042, float 0.000000e+00
  %2434 = fsub fast float %2262, %2415
  %2435 = fsub fast float %2263, %2416
  %2436 = fsub fast float %2264, %2417
  %2437 = fmul fast float %2428, %2434
  %2438 = fmul fast float %2428, %2435
  %2439 = fmul fast float %2428, %2436
  %2440 = fadd fast float %2437, %2415
  %2441 = fadd fast float %2438, %2416
  %2442 = fadd fast float %2439, %2417
  %2443 = fsub fast float %2248, %1741
  %2444 = fmul fast float %2428, %2443
  %2445 = fadd fast float %2444, %1741
  %2446 = fsub fast float %2390, %2418
  %2447 = fsub fast float %2391, %2419
  %2448 = fsub fast float %2392, %2420
  %2449 = fmul fast float %2433, %2446
  %2450 = fmul fast float %2433, %2447
  %2451 = fmul fast float %2433, %2448
  %2452 = fadd fast float %2449, %2418
  %2453 = fadd fast float %2450, %2419
  %2454 = fadd fast float %2451, %2420
  %2455 = fsub fast float %2405, %1744
  %2456 = fmul fast float %2428, %2455
  %2457 = fadd fast float %2456, %1744
  br label %2503

; <label>:2458                                    ; preds = %2425
  %2459 = icmp eq i32 %2423, 1
  br i1 %2459, label %2460, label %2473

; <label>:2460                                    ; preds = %2458
  %2461 = fadd fast float %2262, -1.000000e+00
  %2462 = fadd fast float %2263, -1.000000e+00
  %2463 = fadd fast float %2264, -1.000000e+00
  %2464 = fmul fast float %2428, %2461
  %2465 = fmul fast float %2428, %2462
  %2466 = fmul fast float %2428, %2463
  %2467 = fadd fast float %2464, 1.000000e+00
  %2468 = fadd fast float %2465, 1.000000e+00
  %2469 = fadd fast float %2466, 1.000000e+00
  %2470 = fmul fast float %2467, %2415
  %2471 = fmul fast float %2468, %2416
  %2472 = fmul fast float %2469, %2417
  br label %2503

; <label>:2473                                    ; preds = %2458
  %2474 = icmp eq i32 %2423, 2
  br i1 %2474, label %2475, label %2503

; <label>:2475                                    ; preds = %2473
  %2476 = call float @dx.op.unary.f32(i32 24, float %2262)  ; Sqrt(value)
  %2477 = call float @dx.op.unary.f32(i32 24, float %2263)  ; Sqrt(value)
  %2478 = call float @dx.op.unary.f32(i32 24, float %2264)  ; Sqrt(value)
  %2479 = fadd fast float %2476, -5.000000e-01
  %2480 = fadd fast float %2477, -5.000000e-01
  %2481 = fadd fast float %2478, -5.000000e-01
  %2482 = fmul fast float %2479, %2428
  %2483 = fmul fast float %2480, %2428
  %2484 = fmul fast float %2481, %2428
  %2485 = fadd fast float %2482, 5.000000e-01
  %2486 = fadd fast float %2483, 5.000000e-01
  %2487 = fadd fast float %2484, 5.000000e-01
  %2488 = fmul fast float %2485, 2.000000e+00
  %2489 = fsub fast float 1.000000e+00, %2488
  %2490 = fmul fast float %2489, %2415
  %2491 = fadd fast float %2490, %2488
  %2492 = fmul fast float %2491, %2415
  %2493 = fmul fast float %2486, 2.000000e+00
  %2494 = fsub fast float 1.000000e+00, %2493
  %2495 = fmul fast float %2494, %2416
  %2496 = fadd fast float %2495, %2493
  %2497 = fmul fast float %2496, %2416
  %2498 = fmul fast float %2487, 2.000000e+00
  %2499 = fsub fast float 1.000000e+00, %2498
  %2500 = fmul fast float %2499, %2417
  %2501 = fadd fast float %2500, %2498
  %2502 = fmul fast float %2501, %2417
  br label %2503

; <label>:2503                                    ; preds = %2475, %2473, %2460, %2430, %2414
  %2504 = phi float [ %2415, %2414 ], [ %2492, %2475 ], [ %2415, %2473 ], [ %2470, %2460 ], [ %2440, %2430 ]
  %2505 = phi float [ %2416, %2414 ], [ %2497, %2475 ], [ %2416, %2473 ], [ %2471, %2460 ], [ %2441, %2430 ]
  %2506 = phi float [ %2417, %2414 ], [ %2502, %2475 ], [ %2417, %2473 ], [ %2472, %2460 ], [ %2442, %2430 ]
  %2507 = phi float [ %2418, %2414 ], [ %2418, %2475 ], [ %2418, %2473 ], [ %2418, %2460 ], [ %2452, %2430 ]
  %2508 = phi float [ %2419, %2414 ], [ %2419, %2475 ], [ %2419, %2473 ], [ %2419, %2460 ], [ %2453, %2430 ]
  %2509 = phi float [ %2420, %2414 ], [ %2420, %2475 ], [ %2420, %2473 ], [ %2420, %2460 ], [ %2454, %2430 ]
  %2510 = phi float [ %1741, %2414 ], [ %1741, %2475 ], [ %1741, %2473 ], [ %1741, %2460 ], [ %2445, %2430 ]
  %2511 = phi float [ %1744, %2414 ], [ %1744, %2475 ], [ %1744, %2473 ], [ %1744, %2460 ], [ %2457, %2430 ]
  %2512 = and i32 %2422, 12
  %2513 = icmp eq i32 %2512, 12
  br i1 %2513, label %2586, label %2514

; <label>:2514                                    ; preds = %2503
  %2515 = and i32 %2422, 2097184
  %2516 = icmp eq i32 %2515, 2097184
  %2517 = select i1 %2516, float %2042, float 0.000000e+00
  %2518 = and i32 %2422, 4194336
  %2519 = icmp eq i32 %2518, 4194336
  %2520 = select i1 %2519, float %2042, float 0.000000e+00
  %2521 = and i32 %2422, 8388640
  %2522 = icmp eq i32 %2521, 8388640
  %2523 = select i1 %2522, float %2042, float 0.000000e+00
  %2524 = icmp eq i32 %2512, 0
  br i1 %2524, label %2525, label %2538

; <label>:2525                                    ; preds = %2514
  %2526 = fsub fast float %2343, %1733
  %2527 = fsub fast float %2344, %1734
  %2528 = fmul fast float %2517, %2526
  %2529 = fmul fast float %2517, %2527
  %2530 = fadd fast float %2528, %1733
  %2531 = fadd fast float %2529, %1734
  %2532 = fsub fast float %2345, %1743
  %2533 = fmul fast float %2520, %2532
  %2534 = fadd fast float %2533, %1743
  %2535 = fsub fast float %2342, %1742
  %2536 = fmul fast float %2523, %2535
  %2537 = fadd fast float %2536, %1742
  br label %2586

; <label>:2538                                    ; preds = %2514
  %2539 = icmp eq i32 %2512, 4
  br i1 %2539, label %2540, label %2572

; <label>:2540                                    ; preds = %2538
  %2541 = fmul fast float %2517, %2343
  %2542 = fmul fast float %2517, %2344
  %2543 = fadd fast float %2541, %1733
  %2544 = fadd fast float %2542, %1734
  %2545 = call float @dx.op.binary.f32(i32 36, float %1743, float %2345)  ; FMin(a,b)
  %2546 = fsub fast float %2545, %1743
  %2547 = fmul fast float %2546, %2520
  %2548 = fadd fast float %2547, %1743
  %2549 = fadd fast float %2342, %1742
  %2550 = fmul fast float %2549, 0x3FF337FAE0000000
  %2551 = fmul fast float %1742, %1742
  %2552 = fmul fast float %2342, %2342
  %2553 = fadd fast float %2552, %2551
  %2554 = fmul fast float %2553, 0x3FE5152B00000000
  %2555 = fmul fast float %1742, 0xBFCC1F85E0000000
  %2556 = fmul fast float %2555, %2342
  %2557 = fadd fast float %2556, 0xBFE1363700000000
  %2558 = fadd fast float %2557, %2550
  %2559 = fsub fast float %2558, %2554
  %2560 = fmul fast float %2549, 0x3FBA6F0D00000000
  %2561 = fmul fast float %2553, 0x3FD0432880000000
  %2562 = fmul fast float %1742, 0xBFEF110800000000
  %2563 = fmul fast float %2562, %2342
  %2564 = fadd fast float %2563, 1.000000e+00
  %2565 = fsub fast float %2564, %2560
  %2566 = fadd fast float %2565, %2561
  %2567 = fdiv fast float %2559, %2566
  %2568 = call float @dx.op.unary.f32(i32 7, float %2567)  ; Saturate(value)
  %2569 = fsub fast float %2568, %1742
  %2570 = fmul fast float %2569, %2523
  %2571 = fadd fast float %2570, %1742
  br label %2586

; <label>:2572                                    ; preds = %2538
  %2573 = icmp eq i32 %2512, 8
  br i1 %2573, label %2574, label %2586

; <label>:2574                                    ; preds = %2572
  %2575 = fmul fast float %2517, %2343
  %2576 = fmul fast float %2517, %2344
  %2577 = fadd fast float %2575, %1733
  %2578 = fadd fast float %2576, %1734
  %2579 = call float @dx.op.binary.f32(i32 36, float %1743, float %2345)  ; FMin(a,b)
  %2580 = fsub fast float %2579, %1743
  %2581 = fmul fast float %2580, %2520
  %2582 = fadd fast float %2581, %1743
  %2583 = fsub fast float %2342, %1742
  %2584 = fmul fast float %2523, %2583
  %2585 = fadd fast float %2584, %1742
  br label %2586

; <label>:2586                                    ; preds = %2574, %2572, %2540, %2525, %2503, %2041, %1745, %1732
  %2587 = phi float [ %1733, %2503 ], [ %1733, %2041 ], [ %1733, %1732 ], [ %2577, %2574 ], [ %1733, %2572 ], [ %2543, %2540 ], [ %2530, %2525 ], [ %1733, %1745 ]
  %2588 = phi float [ %1734, %2503 ], [ %1734, %2041 ], [ %1734, %1732 ], [ %2578, %2574 ], [ %1734, %2572 ], [ %2544, %2540 ], [ %2531, %2525 ], [ %1734, %1745 ]
  %2589 = phi float [ %2504, %2503 ], [ %1735, %2041 ], [ %1735, %1732 ], [ %2504, %2574 ], [ %2504, %2572 ], [ %2504, %2540 ], [ %2504, %2525 ], [ %1735, %1745 ]
  %2590 = phi float [ %2505, %2503 ], [ %1736, %2041 ], [ %1736, %1732 ], [ %2505, %2574 ], [ %2505, %2572 ], [ %2505, %2540 ], [ %2505, %2525 ], [ %1736, %1745 ]
  %2591 = phi float [ %2506, %2503 ], [ %1737, %2041 ], [ %1737, %1732 ], [ %2506, %2574 ], [ %2506, %2572 ], [ %2506, %2540 ], [ %2506, %2525 ], [ %1737, %1745 ]
  %2592 = phi float [ %2507, %2503 ], [ %1738, %2041 ], [ %1738, %1732 ], [ %2507, %2574 ], [ %2507, %2572 ], [ %2507, %2540 ], [ %2507, %2525 ], [ %1738, %1745 ]
  %2593 = phi float [ %2508, %2503 ], [ %1739, %2041 ], [ %1739, %1732 ], [ %2508, %2574 ], [ %2508, %2572 ], [ %2508, %2540 ], [ %2508, %2525 ], [ %1739, %1745 ]
  %2594 = phi float [ %2509, %2503 ], [ %1740, %2041 ], [ %1740, %1732 ], [ %2509, %2574 ], [ %2509, %2572 ], [ %2509, %2540 ], [ %2509, %2525 ], [ %1740, %1745 ]
  %2595 = phi float [ %2510, %2503 ], [ %1741, %2041 ], [ %1741, %1732 ], [ %2510, %2574 ], [ %2510, %2572 ], [ %2510, %2540 ], [ %2510, %2525 ], [ %1741, %1745 ]
  %2596 = phi float [ %1742, %2503 ], [ %1742, %2041 ], [ %1742, %1732 ], [ %2585, %2574 ], [ %1742, %2572 ], [ %2571, %2540 ], [ %2537, %2525 ], [ %1742, %1745 ]
  %2597 = phi float [ %1743, %2503 ], [ %1743, %2041 ], [ %1743, %1732 ], [ %2582, %2574 ], [ %1743, %2572 ], [ %2548, %2540 ], [ %2534, %2525 ], [ %1743, %1745 ]
  %2598 = phi float [ %2511, %2503 ], [ %1744, %2041 ], [ %1744, %1732 ], [ %2511, %2574 ], [ %2511, %2572 ], [ %2511, %2540 ], [ %2511, %2525 ], [ %1744, %1745 ]
  br i1 %359, label %3440, label %2599

; <label>:2599                                    ; preds = %2586
  %2600 = icmp ult i32 %410, 4
  %2601 = add i32 %43, 72
  %2602 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2603 = extractvalue %dx.types.ResRet.i32 %2602, 0
  %2604 = add i32 %43, 76
  %2605 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2604, i32 undef)  ; BufferLoad(srv,index,wot)
  %2606 = extractvalue %dx.types.ResRet.i32 %2605, 0
  %2607 = or i32 %2606, %2603
  %2608 = icmp eq i32 %2607, 0
  br i1 %2608, label %3440, label %2609

; <label>:2609                                    ; preds = %2599
  %2610 = and i32 %2603, 262144
  %2611 = icmp ne i32 %2610, 0
  %2612 = select i1 %2611, float %46, float 1.000000e+00
  %2613 = select i1 %2611, float %47, float 0.000000e+00
  %2614 = select i1 %2611, float %48, float 0.000000e+00
  %2615 = select i1 %2611, float %49, float 1.000000e+00
  %2616 = select i1 %2611, float %50, float %59
  %2617 = select i1 %2611, float %51, float %60
  %2618 = add i32 %43, 332
  %2619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %2620 = extractvalue %dx.types.ResRet.i32 %2619, 0
  %2621 = lshr i32 %2620, 16
  %2622 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2621)  ; LegacyF16ToF32(value)
  %2623 = fmul fast float %2622, 0x3F50624DE0000000
  %2624 = add i32 %43, 136
  %2625 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2626 = extractvalue %dx.types.ResRet.i32 %2625, 0
  %2627 = lshr i32 %2626, 16
  %2628 = and i32 %2627, 255
  %2629 = lshr i32 %2626, 24
  %2630 = add i32 %43, 340
  %2631 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2630, i32 undef)  ; BufferLoad(srv,index,wot)
  %2632 = extractvalue %dx.types.ResRet.i32 %2631, 0
  %2633 = and i32 %2632, 65535
  %2634 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2633)  ; LegacyF16ToF32(value)
  %2635 = lshr i32 %2632, 16
  %2636 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2635)  ; LegacyF16ToF32(value)
  %2637 = add i32 %43, 80
  %2638 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2637, i32 undef)  ; BufferLoad(srv,index,wot)
  %2639 = extractvalue %dx.types.ResRet.i32 %2638, 0
  %2640 = lshr i32 %2639, 22
  %2641 = shl nuw nsw i32 %2640, 5
  %2642 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2641)  ; LegacyF16ToF32(value)
  %2643 = shl i32 %2639, 4
  %2644 = and i32 %2643, 32752
  %2645 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2644)  ; LegacyF16ToF32(value)
  %2646 = lshr i32 %2639, 7
  %2647 = and i32 %2646, 32752
  %2648 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2647)  ; LegacyF16ToF32(value)
  %2649 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2650 = extractvalue %dx.types.CBufRet.f32 %2649, 3
  %2651 = fmul fast float %2650, 1.000000e+03
  %2652 = fmul fast float %349, %2651
  %2653 = call float @dx.op.unary.f32(i32 22, float %2652)  ; Frc(value)
  %2654 = fadd fast float %2653, %339
  %2655 = fmul fast float %350, %2651
  %2656 = call float @dx.op.unary.f32(i32 22, float %2655)  ; Frc(value)
  %2657 = fadd fast float %2656, %341
  %2658 = fmul fast float %2623, %2651
  %2659 = call float @dx.op.unary.f32(i32 22, float %2658)  ; Frc(value)
  %2660 = fmul fast float %2659, 0x401921FB60000000
  %2661 = fadd fast float %2660, %2642
  %2662 = call float @dx.op.unary.f32(i32 13, float %2661)  ; Sin(value)
  %2663 = call float @dx.op.unary.f32(i32 12, float %2661)  ; Cos(value)
  %2664 = fsub fast float -0.000000e+00, %2662
  %2665 = fadd fast float %2616, -5.000000e-01
  %2666 = fadd fast float %2617, -5.000000e-01
  %2667 = fmul fast float %2634, %2665
  %2668 = fmul fast float %2636, %2666
  %2669 = fadd fast float %2667, 5.000000e-01
  %2670 = fadd fast float %2668, 5.000000e-01
  %2671 = fmul fast float %2645, %2669
  %2672 = fmul fast float %2648, %2670
  %2673 = fmul fast float %2663, %2671
  %2674 = call float @dx.op.tertiary.f32(i32 46, float %2664, float %2672, float %2673)  ; FMad(a,b,c)
  %2675 = fmul fast float %2662, %2671
  %2676 = call float @dx.op.tertiary.f32(i32 46, float %2663, float %2672, float %2675)  ; FMad(a,b,c)
  %2677 = fadd fast float %2654, %2674
  %2678 = fadd fast float %2657, %2676
  %2679 = icmp ugt i32 %2628, 1
  %2680 = icmp ugt i32 %2626, 33554431
  %2681 = or i1 %2680, %2679
  br i1 %2681, label %2682, label %2707

; <label>:2682                                    ; preds = %2609
  %2683 = add i32 %43, 276
  %2684 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2683, i32 undef)  ; BufferLoad(srv,index,wot)
  %2685 = extractvalue %dx.types.ResRet.i32 %2684, 0
  %2686 = lshr i32 %2685, 16
  %2687 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2686)  ; LegacyF16ToF32(value)
  %2688 = fmul fast float %2650, %2687
  %2689 = call float @dx.op.unary.f32(i32 22, float %2688)  ; Frc(value)
  %2690 = mul nuw nsw i32 %2628, %2629
  %2691 = uitofp i32 %2690 to float
  %2692 = fmul fast float %2689, %2691
  %2693 = call float @dx.op.unary.f32(i32 27, float %2692)  ; Round_ni(value)
  %2694 = fptoui float %2693 to i32
  %2695 = urem i32 %2694, %2628
  %2696 = udiv i32 %2694, %2629
  %2697 = call float @dx.op.unary.f32(i32 22, float %2677)  ; Frc(value)
  %2698 = call float @dx.op.unary.f32(i32 22, float %2678)  ; Frc(value)
  %2699 = uitofp i32 %2695 to float
  %2700 = uitofp i32 %2696 to float
  %2701 = fadd fast float %2697, %2699
  %2702 = fadd fast float %2698, %2700
  %2703 = uitofp i32 %2628 to float
  %2704 = uitofp i32 %2629 to float
  %2705 = fdiv fast float %2701, %2703
  %2706 = fdiv fast float %2702, %2704
  br label %2707

; <label>:2707                                    ; preds = %2682, %2609
  %2708 = phi float [ %2705, %2682 ], [ %2677, %2609 ]
  %2709 = phi float [ %2706, %2682 ], [ %2678, %2609 ]
  %2710 = and i32 %2603, 16777216
  %2711 = icmp eq i32 %2710, 0
  br i1 %2711, label %2821, label %2712

; <label>:2712                                    ; preds = %2707
  %2713 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2714 = extractvalue %dx.types.CBufRet.f32 %2713, 0
  %2715 = extractvalue %dx.types.CBufRet.f32 %2713, 1
  %2716 = extractvalue %dx.types.CBufRet.f32 %2713, 2
  %2717 = fadd fast float %2714, %126
  %2718 = fadd fast float %2715, %127
  %2719 = fadd fast float %2716, %128
  %2720 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2721 = extractvalue %dx.types.CBufRet.f32 %2720, 0
  %2722 = call float @dx.op.unary.f32(i32 7, float %2721)  ; Saturate(value)
  %2723 = icmp eq i32 %44, 65535
  br i1 %2723, label %2818, label %2724

; <label>:2724                                    ; preds = %2712
  %2725 = lshr i32 %44, 1
  %2726 = shl i32 %2725, 2
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = and i32 %44, 1
  %2730 = icmp ne i32 %2729, 0
  %2731 = lshr i32 %2728, 16
  %2732 = and i32 %2728, 65535
  %2733 = select i1 %2730, i32 %2731, i32 %2732
  %2734 = icmp eq i32 %2733, 65535
  br i1 %2734, label %2814, label %2735

; <label>:2735                                    ; preds = %2724
  %2736 = mul nuw nsw i32 %2733, 40
  %2737 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2736, i32 undef)  ; BufferLoad(srv,index,wot)
  %2738 = extractvalue %dx.types.ResRet.f32 %2737, 0
  %2739 = extractvalue %dx.types.ResRet.f32 %2737, 1
  %2740 = extractvalue %dx.types.ResRet.f32 %2737, 2
  %2741 = add nuw nsw i32 %2736, 12
  %2742 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2741, i32 undef)  ; BufferLoad(srv,index,wot)
  %2743 = extractvalue %dx.types.ResRet.f32 %2742, 0
  %2744 = extractvalue %dx.types.ResRet.f32 %2742, 1
  %2745 = extractvalue %dx.types.ResRet.f32 %2742, 2
  %2746 = add nuw nsw i32 %2736, 24
  %2747 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2746, i32 undef)  ; BufferLoad(srv,index,wot)
  %2748 = extractvalue %dx.types.ResRet.f32 %2747, 0
  %2749 = extractvalue %dx.types.ResRet.f32 %2747, 1
  %2750 = extractvalue %dx.types.ResRet.f32 %2747, 2
  %2751 = add nuw nsw i32 %2736, 36
  %2752 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2751, i32 undef)  ; BufferLoad(srv,index,wot)
  %2753 = extractvalue %dx.types.ResRet.f32 %2752, 0
  %2754 = fsub fast float %2717, %2738
  %2755 = fsub fast float %2718, %2739
  %2756 = fsub fast float %2719, %2740
  %2757 = fmul fast float %2753, %2754
  %2758 = fmul fast float %2753, %2755
  %2759 = fmul fast float %2753, %2756
  %2760 = call float @dx.op.unary.f32(i32 27, float %2757)  ; Round_ni(value)
  %2761 = call float @dx.op.unary.f32(i32 27, float %2758)  ; Round_ni(value)
  %2762 = call float @dx.op.unary.f32(i32 27, float %2759)  ; Round_ni(value)
  %2763 = fadd fast float %2760, 5.000000e-01
  %2764 = fadd fast float %2761, 5.000000e-01
  %2765 = fadd fast float %2762, 5.000000e-01
  %2766 = fmul fast float %2763, %2743
  %2767 = fmul fast float %2764, %2744
  %2768 = fmul fast float %2765, %2745
  %2769 = shl i32 %44, 2
  %2770 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2771 = extractvalue %dx.types.ResRet.i32 %2770, 0
  %2772 = add i32 %2771, 0
  %2773 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2772, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2774 = call float @dx.op.unary.f32(i32 22, float %2766)  ; Frc(value)
  %2775 = call float @dx.op.unary.f32(i32 22, float %2767)  ; Frc(value)
  %2776 = call float @dx.op.unary.f32(i32 22, float %2768)  ; Frc(value)
  %2777 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2773, %dx.types.Handle %40, float %2774, float %2775, float %2776, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2778 = extractvalue %dx.types.ResRet.f32 %2777, 0
  %2779 = extractvalue %dx.types.ResRet.f32 %2777, 1
  %2780 = extractvalue %dx.types.ResRet.f32 %2777, 2
  %2781 = fmul fast float %2778, 1.023000e+03
  %2782 = fmul fast float %2779, 1.023000e+03
  %2783 = fmul fast float %2780, 1.023000e+03
  %2784 = fadd fast float %2781, 5.000000e-01
  %2785 = fadd fast float %2782, 5.000000e-01
  %2786 = fadd fast float %2783, 5.000000e-01
  %2787 = call float @dx.op.unary.f32(i32 27, float %2784)  ; Round_ni(value)
  %2788 = call float @dx.op.unary.f32(i32 27, float %2785)  ; Round_ni(value)
  %2789 = call float @dx.op.unary.f32(i32 27, float %2786)  ; Round_ni(value)
  %2790 = fsub fast float %2757, %2760
  %2791 = fsub fast float %2758, %2761
  %2792 = fsub fast float %2759, %2762
  %2793 = fmul fast float %2790, 7.500000e-01
  %2794 = fmul fast float %2791, 7.500000e-01
  %2795 = fmul fast float %2792, 7.500000e-01
  %2796 = fadd fast float %2760, 1.250000e-01
  %2797 = fadd fast float %2796, %2793
  %2798 = fadd fast float %2797, %2787
  %2799 = fadd fast float %2761, 1.250000e-01
  %2800 = fadd fast float %2799, %2794
  %2801 = fadd fast float %2800, %2788
  %2802 = fadd fast float %2762, 1.250000e-01
  %2803 = fadd fast float %2802, %2795
  %2804 = fadd fast float %2803, %2789
  %2805 = fmul fast float %2798, %2748
  %2806 = fmul fast float %2801, %2749
  %2807 = fmul fast float %2804, %2750
  %2808 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2769, i32 undef)  ; BufferLoad(srv,index,wot)
  %2809 = extractvalue %dx.types.ResRet.i32 %2808, 0
  %2810 = add i32 %2809, 0
  %2811 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2810, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2812 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2811, %dx.types.Handle %38, float %2805, float %2806, float %2807, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2813 = extractvalue %dx.types.ResRet.f32 %2812, 0
  br label %2814

; <label>:2814                                    ; preds = %2735, %2724
  %2815 = phi float [ %2813, %2735 ], [ -1.000000e+00, %2724 ]
  %2816 = fadd fast float %2815, %2722
  %2817 = call float @dx.op.unary.f32(i32 7, float %2816)  ; Saturate(value)
  br label %2818

; <label>:2818                                    ; preds = %2814, %2712
  %2819 = phi float [ %2817, %2814 ], [ %2722, %2712 ]
  %2820 = fmul fast float %2819, %405
  br label %2821

; <label>:2821                                    ; preds = %2818, %2707
  %2822 = phi float [ %2820, %2818 ], [ %405, %2707 ]
  %2823 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2824 = extractvalue %dx.types.ResRet.i32 %2823, 0
  %2825 = and i32 %2824, 256
  %2826 = icmp eq i32 %2825, 0
  br i1 %2826, label %2873, label %2827

; <label>:2827                                    ; preds = %2821
  %2828 = add i32 %43, 452
  %2829 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2828, i32 undef)  ; BufferLoad(srv,index,wot)
  %2830 = extractvalue %dx.types.ResRet.i32 %2829, 0
  %2831 = add i32 %2830, 0
  %2832 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2831, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2833 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2832, %dx.types.Handle %68, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2834 = extractvalue %dx.types.ResRet.f32 %2833, 0
  %2835 = add i32 %43, 148
  %2836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2835, i32 undef)  ; BufferLoad(srv,index,wot)
  %2837 = extractvalue %dx.types.ResRet.i32 %2836, 0
  %2838 = shl i32 %2837, 4
  %2839 = and i32 %2838, 32752
  %2840 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2839)  ; LegacyF16ToF32(value)
  %2841 = lshr i32 %2837, 7
  %2842 = and i32 %2841, 32752
  %2843 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2842)  ; LegacyF16ToF32(value)
  %2844 = fsub fast float 1.000000e+00, %2822
  %2845 = call float @dx.op.binary.f32(i32 35, float %2844, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2846 = bitcast float %2822 to i32
  %2847 = sitofp i32 %2846 to float
  %2848 = fadd fast float %2847, 0xC1CFBF8940000000
  %2849 = fmul fast float %2843, %2848
  %2850 = fadd fast float %2849, 0x41CFBF8940000000
  %2851 = fptosi float %2850 to i32
  %2852 = bitcast i32 %2851 to float
  %2853 = bitcast float %2845 to i32
  %2854 = sitofp i32 %2853 to float
  %2855 = fadd fast float %2854, 0xC1CFBF8940000000
  %2856 = fmul fast float %2855, %2843
  %2857 = fadd fast float %2856, 0x41CFBF8940000000
  %2858 = fptosi float %2857 to i32
  %2859 = bitcast i32 %2858 to float
  %2860 = fmul fast float %2852, %2840
  %2861 = fmul fast float %2859, %2840
  %2862 = fsub fast float %2845, %2860
  %2863 = fadd fast float %2861, %2845
  %2864 = call float @dx.op.unary.f32(i32 7, float %2862)  ; Saturate(value)
  %2865 = call float @dx.op.unary.f32(i32 7, float %2863)  ; Saturate(value)
  %2866 = fsub fast float %2834, %2864
  %2867 = fsub fast float %2865, %2864
  %2868 = bitcast float %2867 to i32
  %2869 = sub nsw i32 2129859010, %2868
  %2870 = bitcast i32 %2869 to float
  %2871 = fmul fast float %2870, %2866
  %2872 = call float @dx.op.unary.f32(i32 7, float %2871)  ; Saturate(value)
  br label %2873

; <label>:2873                                    ; preds = %2827, %2821
  %2874 = phi float [ %2872, %2827 ], [ %2822, %2821 ]
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = and i32 %2876, 128
  %2878 = icmp eq i32 %2877, 0
  br i1 %2878, label %2895, label %2879

; <label>:2879                                    ; preds = %2873
  %2880 = add i32 %43, 436
  %2881 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2880, i32 undef)  ; BufferLoad(srv,index,wot)
  %2882 = extractvalue %dx.types.ResRet.i32 %2881, 0
  %2883 = add i32 %2882, 0
  %2884 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2883, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2885 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2884, %dx.types.Handle %68, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2886 = extractvalue %dx.types.ResRet.f32 %2885, 0
  %2887 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2888 = extractvalue %dx.types.ResRet.i32 %2887, 0
  %2889 = and i32 %2888, 524288
  %2890 = icmp ne i32 %2889, 0
  %2891 = fcmp fast ogt float %2886, 0x3FE0101020000000
  %2892 = select i1 %2891, float 1.000000e+00, float 0.000000e+00
  %2893 = select i1 %2890, float %2892, float %2886
  %2894 = fmul fast float %2893, %2874
  br label %2895

; <label>:2895                                    ; preds = %2879, %2873
  %2896 = phi float [ %2894, %2879 ], [ %2874, %2873 ]
  %2897 = fcmp fast ult float %2896, 0x3F70101020000000
  br i1 %2897, label %3440, label %2898

; <label>:2898                                    ; preds = %2895
  %2899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2900 = extractvalue %dx.types.ResRet.i32 %2899, 0
  %2901 = and i32 %2900, 16
  %2902 = icmp eq i32 %2901, 0
  br i1 %2902, label %3101, label %2903

; <label>:2903                                    ; preds = %2898
  %2904 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2624, i32 undef)  ; BufferLoad(srv,index,wot)
  %2905 = extractvalue %dx.types.ResRet.i32 %2904, 0
  %2906 = add i32 %43, 388
  %2907 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2906, i32 undef)  ; BufferLoad(srv,index,wot)
  %2908 = extractvalue %dx.types.ResRet.i32 %2907, 0
  %2909 = add i32 %2908, 0
  %2910 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2909, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2911 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2910, %dx.types.Handle %67, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2912 = extractvalue %dx.types.ResRet.f32 %2911, 0
  %2913 = extractvalue %dx.types.ResRet.f32 %2911, 1
  %2914 = extractvalue %dx.types.ResRet.f32 %2911, 2
  %2915 = extractvalue %dx.types.ResRet.f32 %2911, 3
  %2916 = and i32 %2905, 255
  %2917 = uitofp i32 %2916 to float
  %2918 = lshr i32 %2905, 8
  %2919 = and i32 %2918, 255
  %2920 = uitofp i32 %2919 to float
  %2921 = fmul fast float %2915, %2917
  %2922 = fadd fast float %2921, %2920
  %2923 = fmul fast float %2922, 0x3F70101000000000
  %2924 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2925 = extractvalue %dx.types.ResRet.i32 %2924, 0
  %2926 = and i32 %2925, 512
  %2927 = icmp eq i32 %2926, 0
  br i1 %2927, label %2936, label %2928

; <label>:2928                                    ; preds = %2903
  %2929 = add i32 %43, 468
  %2930 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2929, i32 undef)  ; BufferLoad(srv,index,wot)
  %2931 = extractvalue %dx.types.ResRet.i32 %2930, 0
  %2932 = add i32 %2931, 0
  %2933 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2932, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2934 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2933, %dx.types.Handle %68, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2935 = extractvalue %dx.types.ResRet.f32 %2934, 0
  br label %2936

; <label>:2936                                    ; preds = %2928, %2903
  %2937 = phi float [ %2935, %2928 ], [ 1.000000e+00, %2903 ]
  %2938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %2939 = extractvalue %dx.types.ResRet.i32 %2938, 0
  %2940 = and i32 %2939, 33554432
  %2941 = icmp eq i32 %2940, 0
  br i1 %2941, label %3048, label %2942

; <label>:2942                                    ; preds = %2936
  %2943 = add i32 %43, 272
  %2944 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2943, i32 undef)  ; BufferLoad(srv,index,wot)
  %2945 = extractvalue %dx.types.ResRet.i32 %2944, 0
  %2946 = and i32 %2945, 65535
  %2947 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2946)  ; LegacyF16ToF32(value)
  %2948 = lshr i32 %2945, 16
  %2949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2948)  ; LegacyF16ToF32(value)
  %2950 = add i32 %43, 276
  %2951 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2950, i32 undef)  ; BufferLoad(srv,index,wot)
  %2952 = extractvalue %dx.types.ResRet.i32 %2951, 0
  %2953 = and i32 %2952, 65535
  %2954 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2953)  ; LegacyF16ToF32(value)
  %2955 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %321, i32 undef)  ; BufferLoad(srv,index,wot)
  %2956 = extractvalue %dx.types.ResRet.i32 %2955, 0
  %2957 = lshr i32 %2956, 24
  %2958 = uitofp i32 %2957 to float
  %2959 = fmul fast float %2958, 0x3F70101020000000
  %2960 = and i32 %2956, 255
  %2961 = uitofp i32 %2960 to float
  %2962 = fmul fast float %2961, 0x3F70101020000000
  %2963 = lshr i32 %2956, 8
  %2964 = and i32 %2963, 255
  %2965 = uitofp i32 %2964 to float
  %2966 = fmul fast float %2965, 0x3F70101020000000
  %2967 = lshr i32 %2956, 16
  %2968 = and i32 %2967, 255
  %2969 = uitofp i32 %2968 to float
  %2970 = fmul fast float %2969, 0x3F70101020000000
  %2971 = add i32 %43, 268
  %2972 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2971, i32 undef)  ; BufferLoad(srv,index,wot)
  %2973 = extractvalue %dx.types.ResRet.i32 %2972, 0
  %2974 = lshr i32 %2973, 24
  %2975 = uitofp i32 %2974 to float
  %2976 = fmul fast float %2975, 0x3F70101020000000
  %2977 = and i32 %2973, 255
  %2978 = uitofp i32 %2977 to float
  %2979 = fmul fast float %2978, 0x3F70101020000000
  %2980 = lshr i32 %2973, 8
  %2981 = and i32 %2980, 255
  %2982 = uitofp i32 %2981 to float
  %2983 = fmul fast float %2982, 0x3F70101020000000
  %2984 = lshr i32 %2973, 16
  %2985 = and i32 %2984, 255
  %2986 = uitofp i32 %2985 to float
  %2987 = fmul fast float %2986, 0x3F70101020000000
  %2988 = bitcast float %2912 to i32
  %2989 = ashr i32 %2988, 1
  %2990 = sub nsw i32 1597463174, %2989
  %2991 = bitcast i32 %2990 to float
  %2992 = fmul fast float %2912, 5.000000e-01
  %2993 = fmul fast float %2991, %2991
  %2994 = fmul fast float %2993, %2992
  %2995 = fsub fast float 1.500000e+00, %2994
  %2996 = fmul fast float %2991, %2912
  %2997 = fmul fast float %2996, %2995
  %2998 = bitcast float %2913 to i32
  %2999 = ashr i32 %2998, 1
  %3000 = sub nsw i32 1597463174, %2999
  %3001 = bitcast i32 %3000 to float
  %3002 = fmul fast float %2913, 5.000000e-01
  %3003 = fmul fast float %3001, %3001
  %3004 = fmul fast float %3003, %3002
  %3005 = fsub fast float 1.500000e+00, %3004
  %3006 = fmul fast float %3001, %2913
  %3007 = fmul fast float %3006, %3005
  %3008 = bitcast float %2914 to i32
  %3009 = ashr i32 %3008, 1
  %3010 = sub nsw i32 1597463174, %3009
  %3011 = bitcast i32 %3010 to float
  %3012 = fmul fast float %2914, 5.000000e-01
  %3013 = fmul fast float %3011, %3011
  %3014 = fmul fast float %3013, %3012
  %3015 = fsub fast float 1.500000e+00, %3014
  %3016 = fmul fast float %3011, %2914
  %3017 = fmul fast float %3016, %3015
  %3018 = fsub fast float %2997, %2979
  %3019 = fsub fast float %3007, %2983
  %3020 = fsub fast float %3017, %2987
  %3021 = fmul fast float %3018, %2947
  %3022 = fmul fast float %3019, %2949
  %3023 = fmul fast float %3020, %2954
  %3024 = fadd fast float %3021, %2962
  %3025 = fadd fast float %3022, %2966
  %3026 = fadd fast float %3023, %2970
  %3027 = call float @dx.op.unary.f32(i32 7, float %3024)  ; Saturate(value)
  %3028 = call float @dx.op.unary.f32(i32 7, float %3025)  ; Saturate(value)
  %3029 = call float @dx.op.unary.f32(i32 7, float %3026)  ; Saturate(value)
  %3030 = fmul fast float %3027, %3027
  %3031 = fmul fast float %3028, %3028
  %3032 = fmul fast float %3029, %3029
  %3033 = fsub fast float %3030, %2912
  %3034 = fsub fast float %3031, %2913
  %3035 = fsub fast float %3032, %2914
  %3036 = fmul fast float %3033, %2937
  %3037 = fmul fast float %3034, %2937
  %3038 = fmul fast float %3035, %2937
  %3039 = fadd fast float %3036, %2912
  %3040 = fadd fast float %3037, %2913
  %3041 = fadd fast float %3038, %2914
  %3042 = fadd fast float %2959, %2923
  %3043 = fsub fast float %3042, %2976
  %3044 = call float @dx.op.unary.f32(i32 7, float %3043)  ; Saturate(value)
  %3045 = fsub fast float %3044, %2923
  %3046 = fmul fast float %3045, %2937
  %3047 = fadd fast float %3046, %2923
  br label %3101

; <label>:3048                                    ; preds = %2936
  %3049 = and i32 %2939, 134217728
  %3050 = icmp eq i32 %3049, 0
  br i1 %3050, label %3085, label %3051

; <label>:3051                                    ; preds = %3048
  %3052 = call float @dx.op.unary.f32(i32 24, float %326)  ; Sqrt(value)
  %3053 = call float @dx.op.unary.f32(i32 24, float %330)  ; Sqrt(value)
  %3054 = call float @dx.op.unary.f32(i32 24, float %334)  ; Sqrt(value)
  %3055 = fadd fast float %3052, -5.000000e-01
  %3056 = fadd fast float %3053, -5.000000e-01
  %3057 = fadd fast float %3054, -5.000000e-01
  %3058 = fmul fast float %3055, %2937
  %3059 = fmul fast float %3056, %2937
  %3060 = fmul fast float %3057, %2937
  %3061 = fadd fast float %3058, 5.000000e-01
  %3062 = fadd fast float %3059, 5.000000e-01
  %3063 = fadd fast float %3060, 5.000000e-01
  %3064 = call float @dx.op.unary.f32(i32 24, float %2912)  ; Sqrt(value)
  %3065 = call float @dx.op.unary.f32(i32 24, float %2913)  ; Sqrt(value)
  %3066 = call float @dx.op.unary.f32(i32 24, float %2914)  ; Sqrt(value)
  %3067 = fmul fast float %3061, 2.000000e+00
  %3068 = fsub fast float 1.000000e+00, %3067
  %3069 = fmul fast float %3068, %3064
  %3070 = fadd fast float %3069, %3067
  %3071 = fmul fast float %3070, %3064
  %3072 = fmul fast float %3062, 2.000000e+00
  %3073 = fsub fast float 1.000000e+00, %3072
  %3074 = fmul fast float %3073, %3065
  %3075 = fadd fast float %3074, %3072
  %3076 = fmul fast float %3075, %3065
  %3077 = fmul fast float %3063, 2.000000e+00
  %3078 = fsub fast float 1.000000e+00, %3077
  %3079 = fmul fast float %3078, %3066
  %3080 = fadd fast float %3079, %3077
  %3081 = fmul fast float %3080, %3066
  %3082 = fmul fast float %3071, %3071
  %3083 = fmul fast float %3076, %3076
  %3084 = fmul fast float %3081, %3081
  br label %3101

; <label>:3085                                    ; preds = %3048
  %3086 = fmul fast float %326, %326
  %3087 = fmul fast float %330, %330
  %3088 = fmul fast float %334, %334
  %3089 = fadd fast float %3086, -1.000000e+00
  %3090 = fadd fast float %3087, -1.000000e+00
  %3091 = fadd fast float %3088, -1.000000e+00
  %3092 = fmul fast float %2937, %3089
  %3093 = fmul fast float %2937, %3090
  %3094 = fmul fast float %2937, %3091
  %3095 = fadd fast float %3092, 1.000000e+00
  %3096 = fadd fast float %3093, 1.000000e+00
  %3097 = fadd fast float %3094, 1.000000e+00
  %3098 = fmul fast float %3095, %2912
  %3099 = fmul fast float %3096, %2913
  %3100 = fmul fast float %3097, %2914
  br label %3101

; <label>:3101                                    ; preds = %3085, %3051, %2942, %2898
  %3102 = phi float [ %3047, %2942 ], [ %2923, %3051 ], [ %2923, %3085 ], [ 0x3FA23C0BE0000000, %2898 ]
  %3103 = phi float [ %3039, %2942 ], [ %3082, %3051 ], [ %3098, %3085 ], [ 1.000000e+00, %2898 ]
  %3104 = phi float [ %3040, %2942 ], [ %3083, %3051 ], [ %3099, %3085 ], [ 1.000000e+00, %2898 ]
  %3105 = phi float [ %3041, %2942 ], [ %3084, %3051 ], [ %3100, %3085 ], [ 1.000000e+00, %2898 ]
  %3106 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3107 = extractvalue %dx.types.CBufRet.i32 %3106, 1
  %3108 = and i32 %3107, 1
  %3109 = icmp ne i32 %3108, 0
  %3110 = add i32 %43, 356
  %3111 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3110, i32 undef)  ; BufferLoad(srv,index,wot)
  %3112 = extractvalue %dx.types.ResRet.i32 %3111, 0
  %3113 = and i32 %3112, 32
  %3114 = icmp ne i32 %3113, 0
  %3115 = and i1 %3109, %3114
  %3116 = select i1 %3115, float 1.000000e+00, float %3103
  %3117 = select i1 %3115, float 0x3FD3333340000000, float %3104
  %3118 = select i1 %3115, float 0x3FD3333340000000, float %3105
  %3119 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3120 = extractvalue %dx.types.ResRet.i32 %3119, 0
  %3121 = and i32 %3120, 32
  %3122 = icmp eq i32 %3121, 0
  br i1 %3122, label %3195, label %3123

; <label>:3123                                    ; preds = %3101
  %3124 = add i32 %43, 140
  %3125 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3124, i32 undef)  ; BufferLoad(srv,index,wot)
  %3126 = extractvalue %dx.types.ResRet.i32 %3125, 0
  %3127 = add i32 %43, 404
  %3128 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3127, i32 undef)  ; BufferLoad(srv,index,wot)
  %3129 = extractvalue %dx.types.ResRet.i32 %3128, 0
  %3130 = add i32 %3129, 0
  %3131 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3130, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3132 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3131, %dx.types.Handle %67, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3133 = extractvalue %dx.types.ResRet.f32 %3132, 0
  %3134 = extractvalue %dx.types.ResRet.f32 %3132, 1
  %3135 = extractvalue %dx.types.ResRet.f32 %3132, 2
  %3136 = extractvalue %dx.types.ResRet.f32 %3132, 3
  %3137 = and i32 %3126, 255
  %3138 = uitofp i32 %3137 to float
  %3139 = lshr i32 %3126, 8
  %3140 = and i32 %3139, 255
  %3141 = uitofp i32 %3140 to float
  %3142 = lshr i32 %3126, 16
  %3143 = and i32 %3142, 255
  %3144 = uitofp i32 %3143 to float
  %3145 = fmul fast float %3144, 0x3F70101000000000
  %3146 = fmul fast float %3133, %3138
  %3147 = fadd fast float %3146, %3141
  %3148 = fmul fast float %3147, 0x3F70101000000000
  %3149 = fadd fast float %3134, -5.000000e-01
  %3150 = fadd fast float %3136, -5.000000e-01
  %3151 = fmul fast float %3149, %3145
  %3152 = fmul fast float %3150, %3145
  %3153 = fadd fast float %3151, 5.000000e-01
  %3154 = fadd fast float %3152, 5.000000e-01
  %3155 = fmul fast float %3153, 2.000000e+00
  %3156 = fadd fast float %3155, -1.000000e+00
  %3157 = fmul fast float %3154, 2.000000e+00
  %3158 = fadd fast float %3157, -1.000000e+00
  %3159 = fadd fast float %3156, %3158
  %3160 = fmul fast float %3159, 5.000000e-01
  %3161 = fsub fast float %3156, %3158
  %3162 = fmul fast float %3161, 5.000000e-01
  %3163 = call float @dx.op.unary.f32(i32 6, float %3160)  ; FAbs(value)
  %3164 = fsub fast float 1.000000e+00, %3163
  %3165 = call float @dx.op.unary.f32(i32 6, float %3162)  ; FAbs(value)
  %3166 = fsub fast float %3164, %3165
  %3167 = call float @dx.op.dot3.f32(i32 55, float %3160, float %3162, float %3166, float %3160, float %3162, float %3166)  ; Dot3(ax,ay,az,bx,by,bz)
  %3168 = call float @dx.op.unary.f32(i32 25, float %3167)  ; Rsqrt(value)
  %3169 = fmul fast float %3160, %3168
  %3170 = fmul fast float %3162, %3168
  %3171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3172 = extractvalue %dx.types.ResRet.i32 %3171, 0
  %3173 = and i32 %3172, 67108864
  %3174 = icmp eq i32 %3173, 0
  br i1 %3174, label %3191, label %3175

; <label>:3175                                    ; preds = %3123
  %3176 = add i32 %43, 328
  %3177 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3176, i32 undef)  ; BufferLoad(srv,index,wot)
  %3178 = extractvalue %dx.types.ResRet.i32 %3177, 0
  %3179 = and i32 %3178, 65535
  %3180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3179)  ; LegacyF16ToF32(value)
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = and i32 %3182, 65535
  %3184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3183)  ; LegacyF16ToF32(value)
  %3185 = lshr i32 %3178, 16
  %3186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3185)  ; LegacyF16ToF32(value)
  %3187 = fsub fast float %3148, %3186
  %3188 = fmul fast float %3187, %3180
  %3189 = fadd fast float %3188, %3184
  %3190 = call float @dx.op.unary.f32(i32 7, float %3189)  ; Saturate(value)
  br label %3191

; <label>:3191                                    ; preds = %3175, %3123
  %3192 = phi float [ %3190, %3175 ], [ %3148, %3123 ]
  %3193 = call float @dx.op.dot2.f32(i32 54, float %3169, float %3170, float %2612, float %2613)  ; Dot2(ax,ay,bx,by)
  %3194 = call float @dx.op.dot2.f32(i32 54, float %3169, float %3170, float %2614, float %2615)  ; Dot2(ax,ay,bx,by)
  br label %3195

; <label>:3195                                    ; preds = %3191, %3101
  %3196 = phi float [ %3192, %3191 ], [ 0x3FD6666660000000, %3101 ]
  %3197 = phi float [ %3193, %3191 ], [ 0.000000e+00, %3101 ]
  %3198 = phi float [ %3194, %3191 ], [ 0.000000e+00, %3101 ]
  %3199 = phi float [ %3135, %3191 ], [ 1.000000e+00, %3101 ]
  %3200 = add i32 %43, 208
  %3201 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3200, i32 undef)  ; BufferLoad(srv,index,wot)
  %3202 = extractvalue %dx.types.ResRet.i32 %3201, 0
  %3203 = lshr i32 %3202, 22
  %3204 = shl nuw nsw i32 %3203, 5
  %3205 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3204)  ; LegacyF16ToF32(value)
  %3206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3207 = extractvalue %dx.types.ResRet.i32 %3206, 0
  %3208 = and i32 %3207, 64
  %3209 = icmp eq i32 %3208, 0
  br i1 %3209, label %3243, label %3210

; <label>:3210                                    ; preds = %3195
  %3211 = add i32 %43, 420
  %3212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3211, i32 undef)  ; BufferLoad(srv,index,wot)
  %3213 = extractvalue %dx.types.ResRet.i32 %3212, 0
  %3214 = add i32 %3213, 0
  %3215 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3214, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3217 = extractvalue %dx.types.ResRet.i32 %3216, 0
  %3218 = and i32 %3217, 131072
  %3219 = icmp eq i32 %3218, 0
  %3220 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3215, %dx.types.Handle %67, float %2708, float %2709, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3221 = extractvalue %dx.types.ResRet.f32 %3220, 0
  %3222 = extractvalue %dx.types.ResRet.f32 %3220, 1
  %3223 = extractvalue %dx.types.ResRet.f32 %3220, 2
  %3224 = fmul fast float %3221, %314
  %3225 = fmul fast float %3222, %317
  %3226 = fmul fast float %3223, %320
  br i1 %3219, label %3233, label %3227

; <label>:3227                                    ; preds = %3210
  %3228 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3229 = extractvalue %dx.types.CBufRet.f32 %3228, 0
  %3230 = fmul fast float %3229, %3224
  %3231 = fmul fast float %3229, %3225
  %3232 = fmul fast float %3229, %3226
  br label %3233

; <label>:3233                                    ; preds = %3227, %3210
  %3234 = phi float [ %3230, %3227 ], [ %3224, %3210 ]
  %3235 = phi float [ %3231, %3227 ], [ %3225, %3210 ]
  %3236 = phi float [ %3232, %3227 ], [ %3226, %3210 ]
  %3237 = fmul fast float %3234, %3205
  %3238 = select i1 %168, float %3237, float %3234
  %3239 = call float @dx.op.dot3.f32(i32 55, float %3238, float %3235, float %3236, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3240 = select i1 %168, float 0.000000e+00, float %3234
  %3241 = select i1 %168, float %3239, float %3235
  %3242 = select i1 %168, float 0.000000e+00, float %3236
  br label %3243

; <label>:3243                                    ; preds = %3233, %3195
  %3244 = phi float [ %3240, %3233 ], [ 0.000000e+00, %3195 ]
  %3245 = phi float [ %3241, %3233 ], [ 0.000000e+00, %3195 ]
  %3246 = phi float [ %3242, %3233 ], [ 0.000000e+00, %3195 ]
  %3247 = add i32 %43, 144
  %3248 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3247, i32 undef)  ; BufferLoad(srv,index,wot)
  %3249 = extractvalue %dx.types.ResRet.i32 %3248, 0
  %3250 = and i32 %3249, 255
  %3251 = uitofp i32 %3250 to float
  %3252 = lshr i32 %3249, 8
  %3253 = and i32 %3252, 255
  %3254 = uitofp i32 %3253 to float
  %3255 = call float @dx.op.dot3.f32(i32 55, float %3116, float %3117, float %3118, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3256 = fmul fast float %3254, %3255
  %3257 = fadd fast float %3256, %3251
  %3258 = fmul fast float %3257, 0x3F70101020000000
  %3259 = call float @dx.op.unary.f32(i32 7, float %3258)  ; Saturate(value)
  br i1 %2600, label %3260, label %3268

; <label>:3260                                    ; preds = %3243
  %3261 = fsub fast float 1.000000e+00, %2896
  %3262 = fmul fast float %3261, %2589
  %3263 = fmul fast float %3261, %2590
  %3264 = fmul fast float %3261, %2591
  %3265 = fmul fast float %3261, %2592
  %3266 = fmul fast float %3261, %2593
  %3267 = fmul fast float %3261, %2594
  br label %3268

; <label>:3268                                    ; preds = %3260, %3243
  %3269 = phi float [ %3262, %3260 ], [ %2589, %3243 ]
  %3270 = phi float [ %3263, %3260 ], [ %2590, %3243 ]
  %3271 = phi float [ %3264, %3260 ], [ %2591, %3243 ]
  %3272 = phi float [ %3265, %3260 ], [ %2592, %3243 ]
  %3273 = phi float [ %3266, %3260 ], [ %2593, %3243 ]
  %3274 = phi float [ %3267, %3260 ], [ %2594, %3243 ]
  %3275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2601, i32 undef)  ; BufferLoad(srv,index,wot)
  %3276 = extractvalue %dx.types.ResRet.i32 %3275, 0
  %3277 = and i32 %3276, 3
  %3278 = icmp eq i32 %3277, 3
  br i1 %3278, label %3357, label %3279

; <label>:3279                                    ; preds = %3268
  %3280 = and i32 %3276, 16
  %3281 = icmp ne i32 %3280, 0
  %3282 = select i1 %3281, float %2896, float 0.000000e+00
  %3283 = icmp eq i32 %3277, 0
  br i1 %3283, label %3284, label %3312

; <label>:3284                                    ; preds = %3279
  %3285 = and i32 %3276, 64
  %3286 = icmp ne i32 %3285, 0
  %3287 = select i1 %3286, float %2896, float 0.000000e+00
  %3288 = fsub fast float %3116, %3269
  %3289 = fsub fast float %3117, %3270
  %3290 = fsub fast float %3118, %3271
  %3291 = fmul fast float %3282, %3288
  %3292 = fmul fast float %3282, %3289
  %3293 = fmul fast float %3282, %3290
  %3294 = fadd fast float %3291, %3269
  %3295 = fadd fast float %3292, %3270
  %3296 = fadd fast float %3293, %3271
  %3297 = fsub fast float %3102, %2595
  %3298 = fmul fast float %3282, %3297
  %3299 = fadd fast float %3298, %2595
  %3300 = fsub fast float %3244, %3272
  %3301 = fsub fast float %3245, %3273
  %3302 = fsub fast float %3246, %3274
  %3303 = fmul fast float %3287, %3300
  %3304 = fmul fast float %3287, %3301
  %3305 = fmul fast float %3287, %3302
  %3306 = fadd fast float %3303, %3272
  %3307 = fadd fast float %3304, %3273
  %3308 = fadd fast float %3305, %3274
  %3309 = fsub fast float %3259, %2598
  %3310 = fmul fast float %3282, %3309
  %3311 = fadd fast float %3310, %2598
  br label %3357

; <label>:3312                                    ; preds = %3279
  %3313 = icmp eq i32 %3277, 1
  br i1 %3313, label %3314, label %3327

; <label>:3314                                    ; preds = %3312
  %3315 = fadd fast float %3116, -1.000000e+00
  %3316 = fadd fast float %3117, -1.000000e+00
  %3317 = fadd fast float %3118, -1.000000e+00
  %3318 = fmul fast float %3282, %3315
  %3319 = fmul fast float %3282, %3316
  %3320 = fmul fast float %3282, %3317
  %3321 = fadd fast float %3318, 1.000000e+00
  %3322 = fadd fast float %3319, 1.000000e+00
  %3323 = fadd fast float %3320, 1.000000e+00
  %3324 = fmul fast float %3321, %3269
  %3325 = fmul fast float %3322, %3270
  %3326 = fmul fast float %3323, %3271
  br label %3357

; <label>:3327                                    ; preds = %3312
  %3328 = icmp eq i32 %3277, 2
  br i1 %3328, label %3329, label %3357

; <label>:3329                                    ; preds = %3327
  %3330 = call float @dx.op.unary.f32(i32 24, float %3116)  ; Sqrt(value)
  %3331 = call float @dx.op.unary.f32(i32 24, float %3117)  ; Sqrt(value)
  %3332 = call float @dx.op.unary.f32(i32 24, float %3118)  ; Sqrt(value)
  %3333 = fadd fast float %3330, -5.000000e-01
  %3334 = fadd fast float %3331, -5.000000e-01
  %3335 = fadd fast float %3332, -5.000000e-01
  %3336 = fmul fast float %3333, %3282
  %3337 = fmul fast float %3334, %3282
  %3338 = fmul fast float %3335, %3282
  %3339 = fadd fast float %3336, 5.000000e-01
  %3340 = fadd fast float %3337, 5.000000e-01
  %3341 = fadd fast float %3338, 5.000000e-01
  %3342 = fmul fast float %3339, 2.000000e+00
  %3343 = fsub fast float 1.000000e+00, %3342
  %3344 = fmul fast float %3343, %3269
  %3345 = fadd fast float %3344, %3342
  %3346 = fmul fast float %3345, %3269
  %3347 = fmul fast float %3340, 2.000000e+00
  %3348 = fsub fast float 1.000000e+00, %3347
  %3349 = fmul fast float %3348, %3270
  %3350 = fadd fast float %3349, %3347
  %3351 = fmul fast float %3350, %3270
  %3352 = fmul fast float %3341, 2.000000e+00
  %3353 = fsub fast float 1.000000e+00, %3352
  %3354 = fmul fast float %3353, %3271
  %3355 = fadd fast float %3354, %3352
  %3356 = fmul fast float %3355, %3271
  br label %3357

; <label>:3357                                    ; preds = %3329, %3327, %3314, %3284, %3268
  %3358 = phi float [ %3269, %3268 ], [ %3346, %3329 ], [ %3269, %3327 ], [ %3324, %3314 ], [ %3294, %3284 ]
  %3359 = phi float [ %3270, %3268 ], [ %3351, %3329 ], [ %3270, %3327 ], [ %3325, %3314 ], [ %3295, %3284 ]
  %3360 = phi float [ %3271, %3268 ], [ %3356, %3329 ], [ %3271, %3327 ], [ %3326, %3314 ], [ %3296, %3284 ]
  %3361 = phi float [ %3272, %3268 ], [ %3272, %3329 ], [ %3272, %3327 ], [ %3272, %3314 ], [ %3306, %3284 ]
  %3362 = phi float [ %3273, %3268 ], [ %3273, %3329 ], [ %3273, %3327 ], [ %3273, %3314 ], [ %3307, %3284 ]
  %3363 = phi float [ %3274, %3268 ], [ %3274, %3329 ], [ %3274, %3327 ], [ %3274, %3314 ], [ %3308, %3284 ]
  %3364 = phi float [ %2595, %3268 ], [ %2595, %3329 ], [ %2595, %3327 ], [ %2595, %3314 ], [ %3299, %3284 ]
  %3365 = phi float [ %2598, %3268 ], [ %2598, %3329 ], [ %2598, %3327 ], [ %2598, %3314 ], [ %3311, %3284 ]
  %3366 = and i32 %3276, 12
  %3367 = icmp eq i32 %3366, 12
  br i1 %3367, label %3440, label %3368

; <label>:3368                                    ; preds = %3357
  %3369 = and i32 %3276, 2097184
  %3370 = icmp eq i32 %3369, 2097184
  %3371 = select i1 %3370, float %2896, float 0.000000e+00
  %3372 = and i32 %3276, 4194336
  %3373 = icmp eq i32 %3372, 4194336
  %3374 = select i1 %3373, float %2896, float 0.000000e+00
  %3375 = and i32 %3276, 8388640
  %3376 = icmp eq i32 %3375, 8388640
  %3377 = select i1 %3376, float %2896, float 0.000000e+00
  %3378 = icmp eq i32 %3366, 0
  br i1 %3378, label %3379, label %3392

; <label>:3379                                    ; preds = %3368
  %3380 = fsub fast float %3197, %2587
  %3381 = fsub fast float %3198, %2588
  %3382 = fmul fast float %3371, %3380
  %3383 = fmul fast float %3371, %3381
  %3384 = fadd fast float %3382, %2587
  %3385 = fadd fast float %3383, %2588
  %3386 = fsub fast float %3199, %2597
  %3387 = fmul fast float %3374, %3386
  %3388 = fadd fast float %3387, %2597
  %3389 = fsub fast float %3196, %2596
  %3390 = fmul fast float %3377, %3389
  %3391 = fadd fast float %3390, %2596
  br label %3440

; <label>:3392                                    ; preds = %3368
  %3393 = icmp eq i32 %3366, 4
  br i1 %3393, label %3394, label %3426

; <label>:3394                                    ; preds = %3392
  %3395 = fmul fast float %3371, %3197
  %3396 = fmul fast float %3371, %3198
  %3397 = fadd fast float %3395, %2587
  %3398 = fadd fast float %3396, %2588
  %3399 = call float @dx.op.binary.f32(i32 36, float %2597, float %3199)  ; FMin(a,b)
  %3400 = fsub fast float %3399, %2597
  %3401 = fmul fast float %3400, %3374
  %3402 = fadd fast float %3401, %2597
  %3403 = fadd fast float %3196, %2596
  %3404 = fmul fast float %3403, 0x3FF337FAE0000000
  %3405 = fmul fast float %2596, %2596
  %3406 = fmul fast float %3196, %3196
  %3407 = fadd fast float %3406, %3405
  %3408 = fmul fast float %3407, 0x3FE5152B00000000
  %3409 = fmul fast float %2596, 0xBFCC1F85E0000000
  %3410 = fmul fast float %3409, %3196
  %3411 = fadd fast float %3410, 0xBFE1363700000000
  %3412 = fadd fast float %3411, %3404
  %3413 = fsub fast float %3412, %3408
  %3414 = fmul fast float %3403, 0x3FBA6F0D00000000
  %3415 = fmul fast float %3407, 0x3FD0432880000000
  %3416 = fmul fast float %2596, 0xBFEF110800000000
  %3417 = fmul fast float %3416, %3196
  %3418 = fadd fast float %3417, 1.000000e+00
  %3419 = fsub fast float %3418, %3414
  %3420 = fadd fast float %3419, %3415
  %3421 = fdiv fast float %3413, %3420
  %3422 = call float @dx.op.unary.f32(i32 7, float %3421)  ; Saturate(value)
  %3423 = fsub fast float %3422, %2596
  %3424 = fmul fast float %3423, %3377
  %3425 = fadd fast float %3424, %2596
  br label %3440

; <label>:3426                                    ; preds = %3392
  %3427 = icmp eq i32 %3366, 8
  br i1 %3427, label %3428, label %3440

; <label>:3428                                    ; preds = %3426
  %3429 = fmul fast float %3371, %3197
  %3430 = fmul fast float %3371, %3198
  %3431 = fadd fast float %3429, %2587
  %3432 = fadd fast float %3430, %2588
  %3433 = call float @dx.op.binary.f32(i32 36, float %2597, float %3199)  ; FMin(a,b)
  %3434 = fsub fast float %3433, %2597
  %3435 = fmul fast float %3434, %3374
  %3436 = fadd fast float %3435, %2597
  %3437 = fsub fast float %3196, %2596
  %3438 = fmul fast float %3377, %3437
  %3439 = fadd fast float %3438, %2596
  br label %3440

; <label>:3440                                    ; preds = %3428, %3426, %3394, %3379, %3357, %2895, %2599, %2586
  %3441 = phi float [ %2587, %3357 ], [ %2587, %2895 ], [ %2587, %2586 ], [ %2587, %2599 ], [ %3384, %3379 ], [ %3397, %3394 ], [ %2587, %3426 ], [ %3431, %3428 ]
  %3442 = phi float [ %2588, %3357 ], [ %2588, %2895 ], [ %2588, %2586 ], [ %2588, %2599 ], [ %3385, %3379 ], [ %3398, %3394 ], [ %2588, %3426 ], [ %3432, %3428 ]
  %3443 = phi float [ %3358, %3357 ], [ %2589, %2895 ], [ %2589, %2586 ], [ %2589, %2599 ], [ %3358, %3379 ], [ %3358, %3394 ], [ %3358, %3426 ], [ %3358, %3428 ]
  %3444 = phi float [ %3359, %3357 ], [ %2590, %2895 ], [ %2590, %2586 ], [ %2590, %2599 ], [ %3359, %3379 ], [ %3359, %3394 ], [ %3359, %3426 ], [ %3359, %3428 ]
  %3445 = phi float [ %3360, %3357 ], [ %2591, %2895 ], [ %2591, %2586 ], [ %2591, %2599 ], [ %3360, %3379 ], [ %3360, %3394 ], [ %3360, %3426 ], [ %3360, %3428 ]
  %3446 = phi float [ %3361, %3357 ], [ %2592, %2895 ], [ %2592, %2586 ], [ %2592, %2599 ], [ %3361, %3379 ], [ %3361, %3394 ], [ %3361, %3426 ], [ %3361, %3428 ]
  %3447 = phi float [ %3362, %3357 ], [ %2593, %2895 ], [ %2593, %2586 ], [ %2593, %2599 ], [ %3362, %3379 ], [ %3362, %3394 ], [ %3362, %3426 ], [ %3362, %3428 ]
  %3448 = phi float [ %3363, %3357 ], [ %2594, %2895 ], [ %2594, %2586 ], [ %2594, %2599 ], [ %3363, %3379 ], [ %3363, %3394 ], [ %3363, %3426 ], [ %3363, %3428 ]
  %3449 = phi float [ %3364, %3357 ], [ %2595, %2895 ], [ %2595, %2586 ], [ %2595, %2599 ], [ %3364, %3379 ], [ %3364, %3394 ], [ %3364, %3426 ], [ %3364, %3428 ]
  %3450 = phi float [ %2596, %3357 ], [ %2596, %2895 ], [ %2596, %2586 ], [ %2596, %2599 ], [ %3391, %3379 ], [ %3425, %3394 ], [ %2596, %3426 ], [ %3439, %3428 ]
  %3451 = phi float [ %2597, %3357 ], [ %2597, %2895 ], [ %2597, %2586 ], [ %2597, %2599 ], [ %3388, %3379 ], [ %3402, %3394 ], [ %2597, %3426 ], [ %3436, %3428 ]
  %3452 = phi float [ %3365, %3357 ], [ %2598, %2895 ], [ %2598, %2586 ], [ %2598, %2599 ], [ %3365, %3379 ], [ %3365, %3394 ], [ %3365, %3426 ], [ %3365, %3428 ]
  %3453 = add i32 %43, 360
  %3454 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3453, i32 undef)  ; BufferLoad(srv,index,wot)
  %3455 = extractvalue %dx.types.ResRet.i32 %3454, 0
  %3456 = bitcast i32 %3455 to float
  %3457 = fcmp fast oge float %3456, 0.000000e+00
  %3458 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3459 = extractvalue %dx.types.CBufRet.f32 %3458, 0
  %3460 = select i1 %3457, float %3456, float %3459
  %3461 = call float @dx.op.dot2.f32(i32 54, float %3441, float %3442, float %3441, float %3442)  ; Dot2(ax,ay,bx,by)
  %3462 = fmul fast float %3461, 0x3FE3333340000000
  %3463 = fsub fast float 1.000000e+00, %3462
  %3464 = call float @dx.op.dot3.f32(i32 55, float %3441, float %3442, float %3463, float %3441, float %3442, float %3463)  ; Dot3(ax,ay,az,bx,by,bz)
  %3465 = call float @dx.op.unary.f32(i32 25, float %3464)  ; Rsqrt(value)
  %3466 = fmul fast float %3465, %3441
  %3467 = fmul fast float %3465, %3442
  %3468 = fmul fast float %3463, %3465
  %3469 = fmul fast float %3468, %78
  %3470 = fmul fast float %3468, %79
  %3471 = fmul fast float %3468, %80
  %3472 = fmul fast float %3466, %52
  %3473 = fmul fast float %3466, %53
  %3474 = fmul fast float %3466, %54
  %3475 = fadd fast float %3469, %3472
  %3476 = fadd fast float %3470, %3473
  %3477 = fadd fast float %3471, %3474
  %3478 = fmul fast float %90, %3467
  %3479 = fmul fast float %91, %3467
  %3480 = fmul fast float %92, %3467
  %3481 = fadd fast float %3475, %3478
  %3482 = fadd fast float %3476, %3479
  %3483 = fadd fast float %3477, %3480
  %3484 = call float @dx.op.dot3.f32(i32 55, float %3481, float %3482, float %3483, float %3481, float %3482, float %3483)  ; Dot3(ax,ay,az,bx,by,bz)
  %3485 = call float @dx.op.unary.f32(i32 25, float %3484)  ; Rsqrt(value)
  %3486 = fmul fast float %3481, %3485
  %3487 = fmul fast float %3482, %3485
  %3488 = fmul fast float %3483, %3485
  %3489 = and i32 %45, 1
  %3490 = icmp eq i32 %3489, 0
  br i1 %3490, label %3491, label %3999

; <label>:3491                                    ; preds = %3440
  %3492 = call float @dx.op.unary.f32(i32 83, float %126)  ; DerivCoarseX(value)
  %3493 = call float @dx.op.unary.f32(i32 83, float %127)  ; DerivCoarseX(value)
  %3494 = call float @dx.op.unary.f32(i32 83, float %128)  ; DerivCoarseX(value)
  %3495 = call float @dx.op.unary.f32(i32 84, float %126)  ; DerivCoarseY(value)
  %3496 = call float @dx.op.unary.f32(i32 84, float %127)  ; DerivCoarseY(value)
  %3497 = call float @dx.op.unary.f32(i32 84, float %128)  ; DerivCoarseY(value)
  %3498 = fadd fast float %3492, %126
  %3499 = fadd fast float %3493, %127
  %3500 = fadd fast float %3494, %128
  %3501 = fadd fast float %3495, %126
  %3502 = fadd fast float %3496, %127
  %3503 = fadd fast float %3497, %128
  %3504 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3505 = extractvalue %dx.types.CBufRet.f32 %3504, 0
  %3506 = extractvalue %dx.types.CBufRet.f32 %3504, 1
  %3507 = extractvalue %dx.types.CBufRet.f32 %3504, 2
  %3508 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3509 = extractvalue %dx.types.CBufRet.f32 %3508, 2
  %3510 = extractvalue %dx.types.CBufRet.f32 %3508, 3
  %3511 = fmul fast float %3505, %71
  %3512 = fmul fast float %3511, %3509
  %3513 = fmul fast float %3506, %72
  %3514 = fmul fast float %3513, %3510
  %3515 = fptoui float %3512 to i32
  %3516 = fptoui float %3514 to i32
  %3517 = fadd fast float %3505, -1.000000e+00
  %3518 = fadd fast float %3506, -1.000000e+00
  %3519 = fptoui float %3517 to i32
  %3520 = fptoui float %3518 to i32
  %3521 = call i32 @dx.op.binary.i32(i32 40, i32 %3515, i32 %3519)  ; UMin(a,b)
  %3522 = call i32 @dx.op.binary.i32(i32 40, i32 %3516, i32 %3520)  ; UMin(a,b)
  %3523 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3524 = extractvalue %dx.types.CBufRet.f32 %3523, 2
  %3525 = extractvalue %dx.types.CBufRet.f32 %3523, 3
  %3526 = fmul fast float %3524, %66
  %3527 = fsub fast float %3526, %3525
  %3528 = fadd fast float %3507, -1.000000e+00
  %3529 = call float @dx.op.binary.f32(i32 36, float %3527, float %3528)  ; FMin(a,b)
  %3530 = fptoui float %3529 to i32
  %3531 = fptoui float %3505 to i32
  %3532 = fptoui float %3506 to i32
  %3533 = mul i32 %3530, %3532
  %3534 = add i32 %3533, %3522
  %3535 = mul i32 %3534, %3531
  %3536 = add i32 %3535, %3521
  %3537 = shl i32 %3536, 2
  %3538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3537, i32 undef)  ; BufferLoad(srv,index,wot)
  %3539 = extractvalue %dx.types.ResRet.i32 %3538, 0
  %3540 = and i32 %3539, 1023
  %3541 = lshr i32 %3539, 10
  %3542 = icmp eq i32 %3540, 0
  br i1 %3542, label %3968, label %3543

; <label>:3543                                    ; preds = %3491
  %3544 = and i32 %3539, 1023
  br label %3545

; <label>:3545                                    ; preds = %3671, %3543
  %3546 = phi i32 [ %3621, %3671 ], [ 0, %3543 ]
  %3547 = phi float [ %3672, %3671 ], [ 0.000000e+00, %3543 ]
  %3548 = phi float [ %3673, %3671 ], [ %3460, %3543 ]
  %3549 = phi float [ %3674, %3671 ], [ %3452, %3543 ]
  %3550 = phi float [ %3675, %3671 ], [ 0.000000e+00, %3543 ]
  %3551 = phi float [ %3676, %3671 ], [ 0.000000e+00, %3543 ]
  %3552 = phi float [ %3677, %3671 ], [ %3446, %3543 ]
  %3553 = phi float [ %3678, %3671 ], [ %3447, %3543 ]
  %3554 = phi float [ %3679, %3671 ], [ %3448, %3543 ]
  %3555 = phi float [ %3680, %3671 ], [ %3486, %3543 ]
  %3556 = phi float [ %3681, %3671 ], [ %3487, %3543 ]
  %3557 = phi float [ %3682, %3671 ], [ %3488, %3543 ]
  %3558 = phi float [ %3683, %3671 ], [ %3451, %3543 ]
  %3559 = phi float [ %3684, %3671 ], [ %3450, %3543 ]
  %3560 = phi float [ %3685, %3671 ], [ 0.000000e+00, %3543 ]
  %3561 = phi float [ %3686, %3671 ], [ %3449, %3543 ]
  %3562 = phi float [ %3687, %3671 ], [ %3443, %3543 ]
  %3563 = phi float [ %3688, %3671 ], [ %3444, %3543 ]
  %3564 = phi float [ %3689, %3671 ], [ %3445, %3543 ]
  %3565 = add nuw nsw i32 %3546, %3541
  %3566 = shl i32 %3565, 2
  %3567 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3566, i32 undef)  ; BufferLoad(srv,index,wot)
  %3568 = extractvalue %dx.types.ResRet.i32 %3567, 0
  %3569 = shl i32 %3568, 8
  %3570 = or i32 %3569, 48
  %3571 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3570, i32 undef)  ; BufferLoad(srv,index,wot)
  %3572 = extractvalue %dx.types.ResRet.f32 %3571, 0
  %3573 = extractvalue %dx.types.ResRet.f32 %3571, 1
  %3574 = extractvalue %dx.types.ResRet.f32 %3571, 2
  %3575 = extractvalue %dx.types.ResRet.f32 %3571, 3
  %3576 = or i32 %3569, 64
  %3577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3576, i32 undef)  ; BufferLoad(srv,index,wot)
  %3578 = extractvalue %dx.types.ResRet.i32 %3577, 0
  %3579 = extractvalue %dx.types.ResRet.i32 %3577, 1
  %3580 = or i32 %3569, 80
  %3581 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3580, i32 undef)  ; BufferLoad(srv,index,wot)
  %3582 = extractvalue %dx.types.ResRet.f32 %3581, 2
  %3583 = extractvalue %dx.types.ResRet.f32 %3581, 3
  %3584 = or i32 %3569, 96
  %3585 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3584, i32 undef)  ; BufferLoad(srv,index,wot)
  %3586 = extractvalue %dx.types.ResRet.f32 %3585, 0
  %3587 = extractvalue %dx.types.ResRet.f32 %3585, 1
  %3588 = extractvalue %dx.types.ResRet.f32 %3585, 2
  %3589 = extractvalue %dx.types.ResRet.f32 %3585, 3
  %3590 = or i32 %3569, 112
  %3591 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3590, i32 undef)  ; BufferLoad(srv,index,wot)
  %3592 = extractvalue %dx.types.ResRet.f32 %3591, 2
  %3593 = or i32 %3569, 128
  %3594 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3593, i32 undef)  ; BufferLoad(srv,index,wot)
  %3595 = extractvalue %dx.types.ResRet.f32 %3594, 0
  %3596 = extractvalue %dx.types.ResRet.f32 %3594, 1
  %3597 = extractvalue %dx.types.ResRet.f32 %3594, 2
  %3598 = extractvalue %dx.types.ResRet.f32 %3594, 3
  %3599 = or i32 %3569, 144
  %3600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3599, i32 undef)  ; BufferLoad(srv,index,wot)
  %3601 = extractvalue %dx.types.ResRet.f32 %3600, 0
  %3602 = extractvalue %dx.types.ResRet.f32 %3600, 1
  %3603 = extractvalue %dx.types.ResRet.f32 %3600, 2
  %3604 = extractvalue %dx.types.ResRet.f32 %3600, 3
  %3605 = or i32 %3569, 160
  %3606 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3605, i32 undef)  ; BufferLoad(srv,index,wot)
  %3607 = extractvalue %dx.types.ResRet.f32 %3606, 0
  %3608 = extractvalue %dx.types.ResRet.f32 %3606, 1
  %3609 = extractvalue %dx.types.ResRet.f32 %3606, 2
  %3610 = extractvalue %dx.types.ResRet.f32 %3606, 3
  %3611 = or i32 %3569, 192
  %3612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3611, i32 undef)  ; BufferLoad(srv,index,wot)
  %3613 = extractvalue %dx.types.ResRet.i32 %3612, 0
  %3614 = or i32 %3569, 208
  %3615 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3614, i32 undef)  ; BufferLoad(srv,index,wot)
  %3616 = extractvalue %dx.types.ResRet.f32 %3615, 0
  %3617 = or i32 %3569, 248
  %3618 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3617, i32 undef)  ; BufferLoad(srv,index,wot)
  %3619 = extractvalue %dx.types.ResRet.f32 %3618, 0
  %3620 = extractvalue %dx.types.ResRet.f32 %3618, 1
  %3621 = add nuw nsw i32 %3546, 1
  %3622 = bitcast float %3575 to i32
  %3623 = and i32 %3622, 512
  %3624 = icmp eq i32 %3623, 0
  %3625 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3569, i32 undef)  ; BufferLoad(srv,index,wot)
  %3626 = extractvalue %dx.types.ResRet.f32 %3625, 0
  %3627 = extractvalue %dx.types.ResRet.f32 %3625, 1
  %3628 = extractvalue %dx.types.ResRet.f32 %3625, 2
  %3629 = extractvalue %dx.types.ResRet.f32 %3625, 3
  %3630 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %126, float %127, float %128, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3631 = or i32 %3569, 16
  %3632 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3631, i32 undef)  ; BufferLoad(srv,index,wot)
  %3633 = extractvalue %dx.types.ResRet.f32 %3632, 0
  %3634 = extractvalue %dx.types.ResRet.f32 %3632, 1
  %3635 = extractvalue %dx.types.ResRet.f32 %3632, 2
  %3636 = extractvalue %dx.types.ResRet.f32 %3632, 3
  %3637 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %126, float %127, float %128, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3638 = or i32 %3569, 32
  %3639 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3638, i32 undef)  ; BufferLoad(srv,index,wot)
  %3640 = extractvalue %dx.types.ResRet.f32 %3639, 0
  %3641 = extractvalue %dx.types.ResRet.f32 %3639, 1
  %3642 = extractvalue %dx.types.ResRet.f32 %3639, 2
  %3643 = extractvalue %dx.types.ResRet.f32 %3639, 3
  %3644 = call float @dx.op.dot4.f32(i32 56, float %3640, float %3641, float %3642, float %3643, float %126, float %127, float %128, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3645 = call float @dx.op.unary.f32(i32 27, float %3630)  ; Round_ni(value)
  %3646 = call float @dx.op.unary.f32(i32 6, float %3645)  ; FAbs(value)
  %3647 = call float @dx.op.unary.f32(i32 27, float %3637)  ; Round_ni(value)
  %3648 = call float @dx.op.unary.f32(i32 6, float %3647)  ; FAbs(value)
  %3649 = call float @dx.op.unary.f32(i32 6, float %3644)  ; FAbs(value)
  %3650 = call float @dx.op.unary.f32(i32 27, float %3649)  ; Round_ni(value)
  %3651 = fadd fast float %3648, %3646
  %3652 = fadd fast float %3651, %3650
  %3653 = fcmp fast oeq float %3652, 0.000000e+00
  %3654 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %3498, float %3499, float %3500, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3655 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %3498, float %3499, float %3500, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3656 = call float @dx.op.dot4.f32(i32 56, float %3626, float %3627, float %3628, float %3629, float %3501, float %3502, float %3503, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3657 = call float @dx.op.dot4.f32(i32 56, float %3633, float %3634, float %3635, float %3636, float %3501, float %3502, float %3503, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3658 = fsub fast float %3654, %3630
  %3659 = fsub fast float %3656, %3630
  %3660 = fsub fast float %3655, %3637
  %3661 = fsub fast float %3657, %3637
  %3662 = call float @dx.op.dot3.f32(i32 55, float %3572, float %3573, float %3574, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %3663 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3664 = extractvalue %dx.types.CBufRet.f32 %3663, 2
  %3665 = fadd fast float %3664, %3662
  %3666 = call float @dx.op.unary.f32(i32 7, float %3665)  ; Saturate(value)
  %3667 = extractvalue %dx.types.CBufRet.f32 %3663, 0
  %3668 = fcmp fast ogt float %3666, %3667
  %3669 = and i1 %3653, %3668
  %3670 = and i1 %3624, %3669
  br i1 %3670, label %3691, label %3671

; <label>:3671                                    ; preds = %3954, %3772, %3691, %3545
  %3672 = phi float [ %3547, %3691 ], [ %3775, %3772 ], [ %3775, %3954 ], [ %3547, %3545 ]
  %3673 = phi float [ %3548, %3691 ], [ %3548, %3772 ], [ %3929, %3954 ], [ %3548, %3545 ]
  %3674 = phi float [ %3549, %3691 ], [ %3549, %3772 ], [ %3927, %3954 ], [ %3549, %3545 ]
  %3675 = phi float [ %3550, %3691 ], [ %3550, %3772 ], [ %3899, %3954 ], [ %3550, %3545 ]
  %3676 = phi float [ %3551, %3691 ], [ %3551, %3772 ], [ %3897, %3954 ], [ %3551, %3545 ]
  %3677 = phi float [ %3552, %3691 ], [ %3552, %3772 ], [ %3964, %3954 ], [ %3552, %3545 ]
  %3678 = phi float [ %3553, %3691 ], [ %3553, %3772 ], [ %3965, %3954 ], [ %3553, %3545 ]
  %3679 = phi float [ %3554, %3691 ], [ %3554, %3772 ], [ %3966, %3954 ], [ %3554, %3545 ]
  %3680 = phi float [ %3555, %3691 ], [ %3555, %3772 ], [ %3878, %3954 ], [ %3555, %3545 ]
  %3681 = phi float [ %3556, %3691 ], [ %3556, %3772 ], [ %3879, %3954 ], [ %3556, %3545 ]
  %3682 = phi float [ %3557, %3691 ], [ %3557, %3772 ], [ %3880, %3954 ], [ %3557, %3545 ]
  %3683 = phi float [ %3558, %3691 ], [ %3558, %3772 ], [ %3907, %3954 ], [ %3558, %3545 ]
  %3684 = phi float [ %3559, %3691 ], [ %3559, %3772 ], [ %3904, %3954 ], [ %3559, %3545 ]
  %3685 = phi float [ %3560, %3691 ], [ %3560, %3772 ], [ %3901, %3954 ], [ %3560, %3545 ]
  %3686 = phi float [ %3561, %3691 ], [ %3561, %3772 ], [ %3895, %3954 ], [ %3561, %3545 ]
  %3687 = phi float [ %3562, %3691 ], [ %3562, %3772 ], [ %3890, %3954 ], [ %3562, %3545 ]
  %3688 = phi float [ %3563, %3691 ], [ %3563, %3772 ], [ %3891, %3954 ], [ %3563, %3545 ]
  %3689 = phi float [ %3564, %3691 ], [ %3564, %3772 ], [ %3892, %3954 ], [ %3564, %3545 ]
  %3690 = icmp eq i32 %3621, %3544
  br i1 %3690, label %3967, label %3545

; <label>:3691                                    ; preds = %3545
  %3692 = extractvalue %dx.types.ResRet.f32 %3591, 3
  %3693 = extractvalue %dx.types.ResRet.f32 %3591, 1
  %3694 = extractvalue %dx.types.ResRet.f32 %3591, 0
  %3695 = extractvalue %dx.types.ResRet.f32 %3581, 1
  %3696 = extractvalue %dx.types.ResRet.f32 %3581, 0
  %3697 = extractvalue %dx.types.ResRet.i32 %3577, 3
  %3698 = extractvalue %dx.types.ResRet.i32 %3577, 2
  %3699 = add i32 %3697, 0
  %3700 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3699, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3701 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3702 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3700, %dx.types.Handle %3701, float %3630, float %3637, float undef, float undef, i32 0, i32 0, i32 undef, float %3658, float %3660, float undef, float %3659, float %3661, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3703 = extractvalue %dx.types.ResRet.f32 %3702, 0
  %3704 = fmul fast float %3703, %3696
  %3705 = fadd fast float %3704, %3695
  %3706 = call float @dx.op.unary.f32(i32 7, float %3705)  ; Saturate(value)
  %3707 = fmul fast float %3630, %3586
  %3708 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3637, float %3707)  ; FMad(a,b,c)
  %3709 = fadd fast float %3708, %3694
  %3710 = fmul fast float %3630, %3588
  %3711 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3637, float %3710)  ; FMad(a,b,c)
  %3712 = fadd fast float %3711, %3693
  %3713 = fmul fast float %3658, %3586
  %3714 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3660, float %3713)  ; FMad(a,b,c)
  %3715 = fmul fast float %3658, %3588
  %3716 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3660, float %3715)  ; FMad(a,b,c)
  %3717 = fmul fast float %3659, %3586
  %3718 = call float @dx.op.tertiary.f32(i32 46, float %3587, float %3661, float %3717)  ; FMad(a,b,c)
  %3719 = fmul fast float %3659, %3588
  %3720 = call float @dx.op.tertiary.f32(i32 46, float %3589, float %3661, float %3719)  ; FMad(a,b,c)
  %3721 = add i32 %3698, 0
  %3722 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3721, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3723 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3722, %dx.types.Handle %3701, float %3709, float %3712, float undef, float undef, i32 0, i32 0, i32 undef, float %3714, float %3716, float undef, float %3718, float %3720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3724 = extractvalue %dx.types.ResRet.f32 %3723, 0
  %3725 = and i32 %3622, 1024
  %3726 = icmp ne i32 %3725, 0
  %3727 = fcmp fast ogt float %3724, 0x3FE0101020000000
  %3728 = uitofp i1 %3727 to float
  %3729 = select i1 %3726, float %3728, float %3724
  %3730 = and i32 %3622, 8192
  %3731 = icmp ne i32 %3730, 0
  %3732 = select i1 %3731, float %3692, float 1.000000e+00
  %3733 = fmul fast float %3630, 2.000000e+00
  %3734 = fadd fast float %3733, -1.000000e+00
  %3735 = call float @dx.op.unary.f32(i32 6, float %3734)  ; FAbs(value)
  %3736 = fmul fast float %3735, %3619
  %3737 = fsub fast float %3736, %3619
  %3738 = call float @dx.op.unary.f32(i32 7, float %3737)  ; Saturate(value)
  %3739 = fmul fast float %3637, 2.000000e+00
  %3740 = fadd fast float %3739, -1.000000e+00
  %3741 = call float @dx.op.unary.f32(i32 6, float %3740)  ; FAbs(value)
  %3742 = fmul fast float %3741, %3620
  %3743 = fsub fast float %3742, %3620
  %3744 = call float @dx.op.unary.f32(i32 7, float %3743)  ; Saturate(value)
  %3745 = fmul fast float %3649, %3582
  %3746 = fsub fast float %3745, %3582
  %3747 = call float @dx.op.unary.f32(i32 7, float %3746)  ; Saturate(value)
  %3748 = fmul fast float %3706, %3732
  %3749 = fmul fast float %3748, %3703
  %3750 = fmul fast float %3749, %3738
  %3751 = fmul fast float %3750, %3729
  %3752 = fmul fast float %3751, %3744
  %3753 = fmul fast float %3752, %3747
  %3754 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3755 = extractvalue %dx.types.CBufRet.f32 %3754, 1
  %3756 = extractvalue %dx.types.CBufRet.f32 %3754, 0
  %3757 = fsub fast float %3666, %3756
  %3758 = fmul fast float %3757, %3755
  %3759 = call float @dx.op.unary.f32(i32 7, float %3758)  ; Saturate(value)
  %3760 = fmul fast float %3753, %3583
  %3761 = fadd fast float %3753, %3583
  %3762 = fmul fast float %3761, %3592
  %3763 = fsub fast float %3762, %3592
  %3764 = call float @dx.op.unary.f32(i32 7, float %3763)  ; Saturate(value)
  %3765 = and i32 %3622, 128
  %3766 = icmp ne i32 %3765, 0
  %3767 = select i1 %3766, float %3764, float %3760
  %3768 = fmul fast float %3767, %3759
  %3769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3770 = extractvalue %dx.types.CBufRet.f32 %3769, 0
  %3771 = fcmp fast ugt float %3768, %3770
  br i1 %3771, label %3772, label %3671

; <label>:3772                                    ; preds = %3691
  %3773 = select i1 %3731, float %3768, float 0.000000e+00
  %3774 = fadd fast float %3773, %3547
  %3775 = call float @dx.op.unary.f32(i32 7, float %3774)  ; Saturate(value)
  br i1 %3731, label %3671, label %3776

; <label>:3776                                    ; preds = %3772
  %3777 = and i32 %3622, 4
  %3778 = and i32 %3622, 8
  %3779 = add i32 %3578, 0
  %3780 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3779, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3781 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3782 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3780, %dx.types.Handle %3781, float %3709, float %3712, float undef, float undef, i32 0, i32 0, i32 undef, float %3714, float %3716, float undef, float %3718, float %3720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3783 = extractvalue %dx.types.ResRet.f32 %3782, 0
  %3784 = extractvalue %dx.types.ResRet.f32 %3782, 1
  %3785 = extractvalue %dx.types.ResRet.f32 %3782, 2
  %3786 = extractvalue %dx.types.ResRet.f32 %3782, 3
  %3787 = bitcast float %3604 to i32
  %3788 = and i32 %3787, 255
  %3789 = uitofp i32 %3788 to float
  %3790 = lshr i32 %3787, 8
  %3791 = and i32 %3790, 255
  %3792 = uitofp i32 %3791 to float
  %3793 = fmul fast float %3786, %3789
  %3794 = fadd fast float %3793, %3792
  %3795 = fmul fast float %3794, 0x3F70101000000000
  %3796 = add i32 %3579, 0
  %3797 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3796, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3798 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3797, %dx.types.Handle %3781, float %3709, float %3712, float undef, float undef, i32 0, i32 0, i32 undef, float %3714, float %3716, float undef, float %3718, float %3720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3799 = extractvalue %dx.types.ResRet.f32 %3798, 0
  %3800 = extractvalue %dx.types.ResRet.f32 %3798, 1
  %3801 = extractvalue %dx.types.ResRet.f32 %3798, 2
  %3802 = extractvalue %dx.types.ResRet.f32 %3798, 3
  %3803 = bitcast float %3598 to i32
  %3804 = and i32 %3803, 255
  %3805 = uitofp i32 %3804 to float
  %3806 = lshr i32 %3803, 8
  %3807 = and i32 %3806, 255
  %3808 = uitofp i32 %3807 to float
  %3809 = lshr i32 %3803, 16
  %3810 = and i32 %3809, 255
  %3811 = uitofp i32 %3810 to float
  %3812 = fmul fast float %3811, 0x3F70101000000000
  %3813 = fmul fast float %3799, %3805
  %3814 = fadd fast float %3813, %3808
  %3815 = fmul fast float %3814, 0x3F70101000000000
  %3816 = fadd fast float %3800, -5.000000e-01
  %3817 = fadd fast float %3802, -5.000000e-01
  %3818 = fmul fast float %3816, %3812
  %3819 = fmul fast float %3817, %3812
  %3820 = fadd fast float %3818, 5.000000e-01
  %3821 = fadd fast float %3819, 5.000000e-01
  %3822 = fmul fast float %3783, %3607
  %3823 = fmul fast float %3784, %3608
  %3824 = fmul fast float %3785, %3609
  %3825 = fmul fast float %3820, 2.000000e+00
  %3826 = fadd fast float %3825, -1.000000e+00
  %3827 = fmul fast float %3821, 2.000000e+00
  %3828 = fadd fast float %3827, -1.000000e+00
  %3829 = fadd fast float %3826, %3828
  %3830 = fmul fast float %3829, 5.000000e-01
  %3831 = fsub fast float %3826, %3828
  %3832 = fmul fast float %3831, 5.000000e-01
  %3833 = call float @dx.op.unary.f32(i32 6, float %3830)  ; FAbs(value)
  %3834 = fsub fast float 1.000000e+00, %3833
  %3835 = call float @dx.op.unary.f32(i32 6, float %3832)  ; FAbs(value)
  %3836 = fsub fast float %3834, %3835
  %3837 = call float @dx.op.dot3.f32(i32 55, float %3830, float %3832, float %3836, float %3830, float %3832, float %3836)  ; Dot3(ax,ay,az,bx,by,bz)
  %3838 = call float @dx.op.unary.f32(i32 25, float %3837)  ; Rsqrt(value)
  %3839 = fmul fast float %3830, %3838
  %3840 = fmul fast float %3832, %3838
  %3841 = fmul fast float %3838, %3836
  %3842 = fmul fast float %3841, %3572
  %3843 = fmul fast float %3841, %3573
  %3844 = fmul fast float %3841, %3574
  %3845 = fmul fast float %3839, %3595
  %3846 = fmul fast float %3839, %3596
  %3847 = fmul fast float %3839, %3597
  %3848 = fadd fast float %3845, %3842
  %3849 = fadd fast float %3846, %3843
  %3850 = fadd fast float %3847, %3844
  %3851 = fmul fast float %3840, %3601
  %3852 = fmul fast float %3840, %3602
  %3853 = fmul fast float %3840, %3603
  %3854 = fadd fast float %3848, %3851
  %3855 = fadd fast float %3849, %3852
  %3856 = fadd fast float %3850, %3853
  %3857 = call float @dx.op.dot3.f32(i32 55, float %3854, float %3855, float %3856, float %3854, float %3855, float %3856)  ; Dot3(ax,ay,az,bx,by,bz)
  %3858 = call float @dx.op.unary.f32(i32 25, float %3857)  ; Rsqrt(value)
  %3859 = fmul fast float %3854, %3858
  %3860 = fmul fast float %3855, %3858
  %3861 = fmul fast float %3856, %3858
  %3862 = icmp ne i32 %3778, 0
  %3863 = select i1 %3862, float 1.000000e+00, float 0.000000e+00
  %3864 = fmul fast float %3768, %3863
  %3865 = and i32 %3622, 1
  %3866 = icmp eq i32 %3865, 0
  br i1 %3866, label %3867, label %3871

; <label>:3867                                    ; preds = %3776
  %3868 = fsub fast float %3859, %3555
  %3869 = fsub fast float %3860, %3556
  %3870 = fsub fast float %3861, %3557
  br label %3871

; <label>:3871                                    ; preds = %3867, %3776
  %3872 = phi float [ %3868, %3867 ], [ %3859, %3776 ]
  %3873 = phi float [ %3869, %3867 ], [ %3860, %3776 ]
  %3874 = phi float [ %3870, %3867 ], [ %3861, %3776 ]
  %3875 = fmul float %3874, %3864
  %3876 = fmul float %3873, %3864
  %3877 = fmul float %3872, %3864
  %3878 = fadd fast float %3877, %3555
  %3879 = fadd fast float %3876, %3556
  %3880 = fadd fast float %3875, %3557
  %3881 = icmp ne i32 %3777, 0
  %3882 = select i1 %3881, float 1.000000e+00, float 0.000000e+00
  %3883 = fmul fast float %3768, %3882
  %3884 = fsub fast float %3822, %3562
  %3885 = fsub fast float %3823, %3563
  %3886 = fsub fast float %3824, %3564
  %3887 = fmul fast float %3884, %3883
  %3888 = fmul fast float %3885, %3883
  %3889 = fmul fast float %3886, %3883
  %3890 = fadd fast float %3887, %3562
  %3891 = fadd fast float %3888, %3563
  %3892 = fadd fast float %3889, %3564
  %3893 = fsub fast float %3795, %3561
  %3894 = fmul fast float %3893, %3883
  %3895 = fadd fast float %3894, %3561
  %3896 = fmul fast float %3883, %3551
  %3897 = fsub fast float %3551, %3896
  %3898 = fmul fast float %3883, %3550
  %3899 = fsub fast float %3550, %3898
  %3900 = fadd fast float %3768, %3560
  %3901 = call float @dx.op.unary.f32(i32 7, float %3900)  ; Saturate(value)
  %3902 = fsub fast float %3815, %3559
  %3903 = fmul fast float %3902, %3864
  %3904 = fadd fast float %3903, %3559
  %3905 = fsub fast float %3801, %3558
  %3906 = fmul fast float %3905, %3864
  %3907 = fadd fast float %3906, %3558
  %3908 = call float @dx.op.dot3.f32(i32 55, float %3822, float %3823, float %3824, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3909 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %3910 = extractvalue %dx.types.CBufRet.f32 %3909, 0
  %3911 = extractvalue %dx.types.CBufRet.f32 %3909, 1
  %3912 = fmul fast float %3911, %3908
  %3913 = fadd fast float %3912, %3910
  %3914 = call float @dx.op.unary.f32(i32 7, float %3913)  ; Saturate(value)
  %3915 = bitcast float %3610 to i32
  %3916 = and i32 %3915, 65535
  %3917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3916)  ; LegacyF16ToF32(value)
  %3918 = lshr i32 %3915, 16
  %3919 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3918)  ; LegacyF16ToF32(value)
  %3920 = fcmp fast oge float %3917, 0.000000e+00
  %3921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3922 = extractvalue %dx.types.CBufRet.f32 %3921, 0
  %3923 = select i1 %3920, float %3917, float %3922
  %3924 = fadd fast float %3923, %3919
  %3925 = fsub fast float %3914, %3549
  %3926 = fmul fast float %3925, %3768
  %3927 = fadd fast float %3926, %3549
  %3928 = fmul fast float %3924, %3768
  %3929 = call float @dx.op.binary.f32(i32 35, float %3548, float %3928)  ; FMax(a,b)
  %3930 = and i32 %3622, 16
  %3931 = icmp eq i32 %3930, 0
  br i1 %3931, label %3954, label %3932

; <label>:3932                                    ; preds = %3871
  %3933 = bitcast float %3616 to i32
  %3934 = add i32 %3613, 0
  %3935 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3934, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3936 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3935, %dx.types.Handle %3781, float %3709, float %3712, float undef, float undef, i32 0, i32 0, i32 undef, float %3714, float %3716, float undef, float %3718, float %3720, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3937 = extractvalue %dx.types.ResRet.f32 %3936, 0
  %3938 = extractvalue %dx.types.ResRet.f32 %3936, 1
  %3939 = extractvalue %dx.types.ResRet.f32 %3936, 2
  %3940 = and i32 %3933, 65535
  %3941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3940)  ; LegacyF16ToF32(value)
  %3942 = fmul fast float %3937, %3607
  %3943 = fmul fast float %3938, %3608
  %3944 = fmul fast float %3939, %3609
  %3945 = and i32 %3622, 16384
  %3946 = icmp ne i32 %3945, 0
  %3947 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3948 = extractvalue %dx.types.CBufRet.f32 %3947, 0
  %3949 = select i1 %3946, float %3948, float 1.000000e+00
  %3950 = fmul fast float %3949, %3941
  %3951 = fmul fast float %3942, %3950
  %3952 = fmul fast float %3943, %3950
  %3953 = fmul fast float %3944, %3950
  br label %3954

; <label>:3954                                    ; preds = %3932, %3871
  %3955 = phi float [ %3951, %3932 ], [ 0.000000e+00, %3871 ]
  %3956 = phi float [ %3952, %3932 ], [ 0.000000e+00, %3871 ]
  %3957 = phi float [ %3953, %3932 ], [ 0.000000e+00, %3871 ]
  %3958 = fsub fast float %3955, %3552
  %3959 = fsub fast float %3956, %3553
  %3960 = fsub fast float %3957, %3554
  %3961 = fmul fast float %3958, %3768
  %3962 = fmul fast float %3959, %3768
  %3963 = fmul fast float %3960, %3768
  %3964 = fadd fast float %3961, %3552
  %3965 = fadd fast float %3962, %3553
  %3966 = fadd fast float %3963, %3554
  br label %3671

; <label>:3967                                    ; preds = %3671
  br label %3968

; <label>:3968                                    ; preds = %3967, %3491
  %3969 = phi float [ 0.000000e+00, %3491 ], [ %3672, %3967 ]
  %3970 = phi float [ %3460, %3491 ], [ %3673, %3967 ]
  %3971 = phi float [ %3452, %3491 ], [ %3674, %3967 ]
  %3972 = phi float [ 0.000000e+00, %3491 ], [ %3675, %3967 ]
  %3973 = phi float [ 0.000000e+00, %3491 ], [ %3676, %3967 ]
  %3974 = phi float [ %3446, %3491 ], [ %3677, %3967 ]
  %3975 = phi float [ %3447, %3491 ], [ %3678, %3967 ]
  %3976 = phi float [ %3448, %3491 ], [ %3679, %3967 ]
  %3977 = phi float [ %3486, %3491 ], [ %3680, %3967 ]
  %3978 = phi float [ %3487, %3491 ], [ %3681, %3967 ]
  %3979 = phi float [ %3488, %3491 ], [ %3682, %3967 ]
  %3980 = phi float [ %3451, %3491 ], [ %3683, %3967 ]
  %3981 = phi float [ %3450, %3491 ], [ %3684, %3967 ]
  %3982 = phi float [ 0.000000e+00, %3491 ], [ %3685, %3967 ]
  %3983 = phi float [ %3449, %3491 ], [ %3686, %3967 ]
  %3984 = phi float [ %3443, %3491 ], [ %3687, %3967 ]
  %3985 = phi float [ %3444, %3491 ], [ %3688, %3967 ]
  %3986 = phi float [ %3445, %3491 ], [ %3689, %3967 ]
  %3987 = call float @dx.op.dot3.f32(i32 55, float %3977, float %3978, float %3979, float %3977, float %3978, float %3979)  ; Dot3(ax,ay,az,bx,by,bz)
  %3988 = call float @dx.op.unary.f32(i32 25, float %3987)  ; Rsqrt(value)
  %3989 = fmul fast float %3988, %3977
  %3990 = fmul fast float %3988, %3978
  %3991 = fmul fast float %3988, %3979
  %3992 = fadd fast float %3982, %887
  %3993 = call float @dx.op.unary.f32(i32 7, float %3992)  ; Saturate(value)
  %3994 = call float @dx.op.dot3.f32(i32 55, float %3989, float %3990, float %3991, float %3989, float %3990, float %3991)  ; Dot3(ax,ay,az,bx,by,bz)
  %3995 = call float @dx.op.unary.f32(i32 25, float %3994)  ; Rsqrt(value)
  %3996 = fmul fast float %3995, %3989
  %3997 = fmul fast float %3995, %3990
  %3998 = fmul fast float %3995, %3991
  br label %3999

; <label>:3999                                    ; preds = %3968, %3440
  %4000 = phi float [ %3996, %3968 ], [ %3486, %3440 ]
  %4001 = phi float [ %3997, %3968 ], [ %3487, %3440 ]
  %4002 = phi float [ %3998, %3968 ], [ %3488, %3440 ]
  %4003 = phi float [ %3984, %3968 ], [ %3443, %3440 ]
  %4004 = phi float [ %3985, %3968 ], [ %3444, %3440 ]
  %4005 = phi float [ %3986, %3968 ], [ %3445, %3440 ]
  %4006 = phi float [ %3974, %3968 ], [ %3446, %3440 ]
  %4007 = phi float [ %3975, %3968 ], [ %3447, %3440 ]
  %4008 = phi float [ %3976, %3968 ], [ %3448, %3440 ]
  %4009 = phi float [ %3983, %3968 ], [ %3449, %3440 ]
  %4010 = phi float [ %3993, %3968 ], [ %887, %3440 ]
  %4011 = phi float [ %3981, %3968 ], [ %3450, %3440 ]
  %4012 = phi float [ %3980, %3968 ], [ %3451, %3440 ]
  %4013 = phi float [ %3973, %3968 ], [ 0.000000e+00, %3440 ]
  %4014 = phi float [ %3972, %3968 ], [ 0.000000e+00, %3440 ]
  %4015 = phi float [ %3969, %3968 ], [ 0.000000e+00, %3440 ]
  %4016 = phi float [ %3970, %3968 ], [ %3460, %3440 ]
  %4017 = phi float [ %3971, %3968 ], [ %3452, %3440 ]
  %4018 = fadd fast float %4009, 0xBFB99999A0000000
  %4019 = call float @dx.op.unary.f32(i32 7, float %4018)  ; Saturate(value)
  %4020 = fmul fast float %4019, 0x3FF1C71C80000000
  %4021 = call float @dx.op.binary.f32(i32 36, float %4009, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4022 = fsub fast float 1.000000e+00, %4020
  %4023 = call float @dx.op.unary.f32(i32 7, float %4022)  ; Saturate(value)
  %4024 = fmul fast float %4023, %4003
  %4025 = fmul fast float %4023, %4004
  %4026 = fmul fast float %4023, %4005
  %4027 = call float @dx.op.unary.f32(i32 7, float %4024)  ; Saturate(value)
  %4028 = call float @dx.op.unary.f32(i32 7, float %4025)  ; Saturate(value)
  %4029 = call float @dx.op.unary.f32(i32 7, float %4026)  ; Saturate(value)
  %4030 = fmul fast float %4020, %4003
  %4031 = fmul fast float %4020, %4004
  %4032 = fmul fast float %4020, %4005
  %4033 = fadd fast float %4030, %4021
  %4034 = fadd fast float %4031, %4021
  %4035 = fadd fast float %4032, %4021
  %4036 = call float @dx.op.unary.f32(i32 7, float %4033)  ; Saturate(value)
  %4037 = call float @dx.op.unary.f32(i32 7, float %4034)  ; Saturate(value)
  %4038 = call float @dx.op.unary.f32(i32 7, float %4035)  ; Saturate(value)
  %4039 = call float @dx.op.unary.f32(i32 7, float %4011)  ; Saturate(value)
  %4040 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4041 = extractvalue %dx.types.CBufRet.i32 %4040, 3
  %4042 = and i32 %4041, 8
  %4043 = icmp ne i32 %4042, 0
  %4044 = call float @dx.op.binary.f32(i32 35, float %4027, float %4003)  ; FMax(a,b)
  %4045 = call float @dx.op.binary.f32(i32 35, float %4028, float %4003)  ; FMax(a,b)
  %4046 = call float @dx.op.binary.f32(i32 35, float %4029, float %4003)  ; FMax(a,b)
  %4047 = call float @dx.op.dot3.f32(i32 55, float %4027, float %4028, float %4029, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4048 = select i1 %168, float %4003, float %4027
  %4049 = select i1 %168, float %4047, float %4028
  %4050 = select i1 %168, float 1.000000e+00, float %4029
  %4051 = select i1 %4043, float %4044, float %4048
  %4052 = select i1 %4043, float %4045, float %4049
  %4053 = select i1 %4043, float %4046, float %4050
  %4054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4055 = extractvalue %dx.types.CBufRet.f32 %4054, 0
  %4056 = extractvalue %dx.types.CBufRet.f32 %4054, 1
  %4057 = extractvalue %dx.types.CBufRet.f32 %4054, 2
  %4058 = fadd fast float %4055, %126
  %4059 = fadd fast float %4056, %127
  %4060 = fadd fast float %4057, %128
  %4061 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4062 = extractvalue %dx.types.CBufRet.f32 %4061, 0
  %4063 = extractvalue %dx.types.CBufRet.f32 %4061, 1
  %4064 = fsub fast float %4058, %4062
  %4065 = fsub fast float %4059, %4063
  %4066 = fmul fast float %4064, %4064
  %4067 = fmul fast float %4065, %4065
  %4068 = fadd fast float %4066, %4067
  %4069 = call float @dx.op.unary.f32(i32 24, float %4068)  ; Sqrt(value)
  %4070 = extractvalue %dx.types.CBufRet.f32 %4061, 2
  %4071 = fcmp fast olt float %4069, %4070
  br i1 %4071, label %4072, label %4139

; <label>:4072                                    ; preds = %3999
  %4073 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4074 = extractvalue %dx.types.CBufRet.f32 %4073, 0
  %4075 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4076 = extractvalue %dx.types.CBufRet.f32 %4075, 0
  %4077 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4078 = extractvalue %dx.types.CBufRet.f32 %4077, 0
  %4079 = extractvalue %dx.types.CBufRet.f32 %4073, 1
  %4080 = extractvalue %dx.types.CBufRet.f32 %4075, 1
  %4081 = extractvalue %dx.types.CBufRet.f32 %4077, 1
  %4082 = extractvalue %dx.types.CBufRet.f32 %4073, 3
  %4083 = extractvalue %dx.types.CBufRet.f32 %4075, 3
  %4084 = extractvalue %dx.types.CBufRet.f32 %4077, 3
  %4085 = fadd fast float %4082, %4058
  %4086 = fadd fast float %4083, %4059
  %4087 = fadd fast float %4084, %4060
  %4088 = fmul fast float %4085, %4074
  %4089 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %4076, float %4088)  ; FMad(a,b,c)
  %4090 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %4078, float %4089)  ; FMad(a,b,c)
  %4091 = fmul fast float %4085, %4079
  %4092 = call float @dx.op.tertiary.f32(i32 46, float %4086, float %4080, float %4091)  ; FMad(a,b,c)
  %4093 = call float @dx.op.tertiary.f32(i32 46, float %4087, float %4081, float %4092)  ; FMad(a,b,c)
  %4094 = fsub fast float %4090, %4082
  %4095 = fsub fast float %4093, %4083
  %4096 = fsub fast float %4094, %4062
  %4097 = fadd fast float %4096, %4070
  %4098 = fsub fast float %4095, %4063
  %4099 = fadd fast float %4098, %4070
  %4100 = extractvalue %dx.types.CBufRet.f32 %4061, 3
  %4101 = fmul fast float %4097, %4100
  %4102 = fmul fast float %4099, %4100
  %4103 = call float @dx.op.unary.f32(i32 7, float %4101)  ; Saturate(value)
  %4104 = call float @dx.op.unary.f32(i32 7, float %4102)  ; Saturate(value)
  %4105 = fsub fast float 1.000000e+00, %4103
  %4106 = fsub fast float 1.000000e+00, %4104
  %4107 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4105, float %4106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4108 = extractvalue %dx.types.ResRet.f32 %4107, 0
  %4109 = fcmp fast ugt float %4108, 0.000000e+00
  br i1 %4109, label %4110, label %4413

; <label>:4110                                    ; preds = %4072
  %4111 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4112 = extractvalue %dx.types.CBufRet.f32 %4111, 2
  %4113 = fmul fast float %4112, %4108
  %4114 = extractvalue %dx.types.CBufRet.f32 %4111, 3
  %4115 = fadd fast float %4114, %4113
  %4116 = extractvalue %dx.types.CBufRet.f32 %4077, 2
  %4117 = fadd fast float %4115, %4084
  %4118 = fmul fast float %4090, %4078
  %4119 = call float @dx.op.tertiary.f32(i32 46, float %4093, float %4081, float %4118)  ; FMad(a,b,c)
  %4120 = call float @dx.op.tertiary.f32(i32 46, float %4117, float %4116, float %4119)  ; FMad(a,b,c)
  %4121 = fsub fast float %4120, %4084
  %4122 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4123 = extractvalue %dx.types.CBufRet.f32 %4122, 2
  %4124 = fsub fast float %4121, %4123
  %4125 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4105, float %4106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4126 = extractvalue %dx.types.ResRet.f32 %4125, 0
  %4127 = extractvalue %dx.types.ResRet.f32 %4125, 1
  %4128 = extractvalue %dx.types.ResRet.f32 %4125, 2
  %4129 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4105, float %4106, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4130 = extractvalue %dx.types.ResRet.f32 %4129, 0
  %4131 = extractvalue %dx.types.ResRet.f32 %4129, 1
  %4132 = extractvalue %dx.types.ResRet.f32 %4129, 2
  %4133 = fadd fast float %4130, %4126
  %4134 = fmul fast float %4133, 0x3F847AE140000000
  %4135 = fadd fast float %4131, %4127
  %4136 = fmul fast float %4135, 0x3F847AE140000000
  %4137 = fadd fast float %4132, %4128
  %4138 = fmul fast float %4137, 0x3F847AE140000000
  br label %4413

; <label>:4139                                    ; preds = %3999
  %4140 = and i32 %144, 1
  %4141 = icmp eq i32 %4140, 0
  br i1 %4141, label %4413, label %4142

; <label>:4142                                    ; preds = %4139
  %4143 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4144 = extractvalue %dx.types.CBufRet.f32 %4143, 0
  %4145 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4146 = extractvalue %dx.types.CBufRet.f32 %4145, 0
  %4147 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4148 = extractvalue %dx.types.CBufRet.f32 %4147, 0
  %4149 = extractvalue %dx.types.CBufRet.f32 %4143, 1
  %4150 = extractvalue %dx.types.CBufRet.f32 %4145, 1
  %4151 = extractvalue %dx.types.CBufRet.f32 %4147, 1
  %4152 = extractvalue %dx.types.CBufRet.f32 %4143, 3
  %4153 = extractvalue %dx.types.CBufRet.f32 %4145, 3
  %4154 = extractvalue %dx.types.CBufRet.f32 %4147, 3
  %4155 = fadd fast float %4152, %4058
  %4156 = fadd fast float %4153, %4059
  %4157 = fadd fast float %4154, %4060
  %4158 = fmul fast float %4155, %4144
  %4159 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4146, float %4158)  ; FMad(a,b,c)
  %4160 = call float @dx.op.tertiary.f32(i32 46, float %4157, float %4148, float %4159)  ; FMad(a,b,c)
  %4161 = fmul fast float %4155, %4149
  %4162 = call float @dx.op.tertiary.f32(i32 46, float %4156, float %4150, float %4161)  ; FMad(a,b,c)
  %4163 = call float @dx.op.tertiary.f32(i32 46, float %4157, float %4151, float %4162)  ; FMad(a,b,c)
  %4164 = fsub fast float %4160, %4152
  %4165 = fsub fast float %4163, %4153
  %4166 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4167 = extractvalue %dx.types.CBufRet.f32 %4166, 0
  %4168 = extractvalue %dx.types.CBufRet.f32 %4166, 1
  %4169 = extractvalue %dx.types.CBufRet.f32 %4166, 2
  %4170 = extractvalue %dx.types.CBufRet.f32 %4166, 3
  %4171 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4172 = extractvalue %dx.types.CBufRet.f32 %4171, 3
  %4173 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4174 = extractvalue %dx.types.CBufRet.i32 %4173, 0
  %4175 = extractvalue %dx.types.CBufRet.i32 %4173, 1
  %4176 = udiv i32 %4175, %4174
  %4177 = fsub fast float %4164, %4167
  %4178 = fsub fast float %4165, %4168
  %4179 = call float @dx.op.binary.f32(i32 35, float %4177, float 0.000000e+00)  ; FMax(a,b)
  %4180 = call float @dx.op.binary.f32(i32 35, float %4178, float 0.000000e+00)  ; FMax(a,b)
  %4181 = call float @dx.op.binary.f32(i32 36, float %4179, float %4169)  ; FMin(a,b)
  %4182 = call float @dx.op.binary.f32(i32 36, float %4180, float %4170)  ; FMin(a,b)
  %4183 = add i32 %4174, -1
  %4184 = add i32 %4176, -1
  %4185 = fmul fast float %4181, %4172
  %4186 = fmul fast float %4182, %4172
  %4187 = fptoui float %4185 to i32
  %4188 = fptoui float %4186 to i32
  %4189 = call i32 @dx.op.binary.i32(i32 40, i32 %4187, i32 %4183)  ; UMin(a,b)
  %4190 = call i32 @dx.op.binary.i32(i32 40, i32 %4188, i32 %4184)  ; UMin(a,b)
  %4191 = mul i32 %4190, %4174
  %4192 = add i32 %4191, %4189
  %4193 = shl i32 %4192, 2
  %4194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4193, i32 undef)  ; BufferLoad(srv,index,wot)
  %4195 = extractvalue %dx.types.ResRet.i32 %4194, 0
  %4196 = icmp eq i32 %4195, -1
  br i1 %4196, label %4413, label %4197

; <label>:4197                                    ; preds = %4142
  %4198 = mul i32 %4195, 148
  %4199 = add i32 %4198, 4
  %4200 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4199, i32 undef)  ; BufferLoad(srv,index,wot)
  %4201 = extractvalue %dx.types.ResRet.f32 %4200, 0
  %4202 = add i32 %4198, 8
  %4203 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4202, i32 undef)  ; BufferLoad(srv,index,wot)
  %4204 = extractvalue %dx.types.ResRet.f32 %4203, 0
  %4205 = add i32 %4198, 36
  %4206 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4205, i32 undef)  ; BufferLoad(srv,index,wot)
  %4207 = extractvalue %dx.types.ResRet.f32 %4206, 0
  %4208 = add i32 %4198, 60
  %4209 = add i32 %4198, 92
  %4210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4209, i32 undef)  ; BufferLoad(srv,index,wot)
  %4211 = extractvalue %dx.types.ResRet.i32 %4210, 0
  %4212 = add i32 %4198, 116
  %4213 = fsub fast float %4164, %4201
  %4214 = fsub fast float %4165, %4204
  %4215 = fmul fast float %4172, %4213
  %4216 = fmul fast float %4172, %4214
  %4217 = call float @dx.op.unary.f32(i32 7, float %4215)  ; Saturate(value)
  %4218 = call float @dx.op.unary.f32(i32 7, float %4216)  ; Saturate(value)
  %4219 = fsub fast float 1.000000e+00, %4218
  %4220 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4221 = extractvalue %dx.types.CBufRet.f32 %4220, 2
  %4222 = call float @dx.op.unary.f32(i32 83, float %4217)  ; DerivCoarseX(value)
  %4223 = call float @dx.op.unary.f32(i32 83, float %4219)  ; DerivCoarseX(value)
  %4224 = call float @dx.op.unary.f32(i32 84, float %4217)  ; DerivCoarseY(value)
  %4225 = call float @dx.op.unary.f32(i32 84, float %4219)  ; DerivCoarseY(value)
  %4226 = fmul fast float %4222, %4221
  %4227 = fmul fast float %4223, %4221
  %4228 = fmul fast float %4224, %4221
  %4229 = fmul fast float %4225, %4221
  %4230 = call float @dx.op.dot2.f32(i32 54, float %4228, float %4229, float %4228, float %4229)  ; Dot2(ax,ay,bx,by)
  %4231 = call float @dx.op.dot2.f32(i32 54, float %4226, float %4227, float %4226, float %4227)  ; Dot2(ax,ay,bx,by)
  %4232 = call float @dx.op.binary.f32(i32 35, float %4231, float %4230)  ; FMax(a,b)
  %4233 = call float @dx.op.unary.f32(i32 23, float %4232)  ; Log(value)
  %4234 = fmul fast float %4233, 5.000000e-01
  %4235 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4236 = extractvalue %dx.types.CBufRet.f32 %4235, 1
  %4237 = fadd fast float %4236, %4234
  %4238 = call float @dx.op.binary.f32(i32 35, float %4237, float 0.000000e+00)  ; FMax(a,b)
  %4239 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4240 = extractvalue %dx.types.CBufRet.f32 %4239, 3
  %4241 = fadd fast float %4240, %4238
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 3
  %4244 = fadd fast float %4241, %4243
  %4245 = add i32 %4211, 0
  %4246 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4245, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4247 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4246, i32 0)  ; GetDimensions(handle,mipLevel)
  %4248 = extractvalue %dx.types.Dimensions %4247, 0
  %4249 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4248)  ; FirstbitLo(value)
  %4250 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4251 = extractvalue %dx.types.CBufRet.i32 %4250, 1
  %4252 = sub nsw i32 %4251, %4249
  %4253 = sitofp i32 %4252 to float
  %4254 = fsub fast float %4244, %4253
  %4255 = call float @dx.op.binary.f32(i32 35, float %4254, float 0.000000e+00)  ; FMax(a,b)
  %4256 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4246, %dx.types.Handle %37, float %4217, float %4219, float %4207, float undef, i32 0, i32 0, i32 undef, float %4255)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4257 = extractvalue %dx.types.ResRet.f32 %4256, 0
  %4258 = fcmp ule float %4257, 0x3FE0101020000000
  %4259 = extractvalue %dx.types.CBufRet.i32 %4250, 0
  %4260 = and i32 %4259, 128
  %4261 = icmp ne i32 %4260, 0
  %4262 = and i1 %4258, %4261
  br i1 %4262, label %4413, label %4263

; <label>:4263                                    ; preds = %4197
  %4264 = add i32 %4198, 20
  %4265 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4264, i32 undef)  ; BufferLoad(srv,index,wot)
  %4266 = extractvalue %dx.types.ResRet.f32 %4265, 0
  %4267 = add i32 %4198, 24
  %4268 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4267, i32 undef)  ; BufferLoad(srv,index,wot)
  %4269 = extractvalue %dx.types.ResRet.f32 %4268, 0
  %4270 = add i32 %4198, 40
  %4271 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4270, i32 undef)  ; BufferLoad(srv,index,wot)
  %4272 = extractvalue %dx.types.ResRet.f32 %4271, 0
  %4273 = add i32 %4198, 96
  %4274 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4273, i32 undef)  ; BufferLoad(srv,index,wot)
  %4275 = extractvalue %dx.types.ResRet.i32 %4274, 0
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 2
  %4278 = fmul fast float %4277, %4217
  %4279 = fmul fast float %4277, %4219
  %4280 = extractvalue %dx.types.CBufRet.f32 %4276, 3
  %4281 = fadd fast float %4278, %4280
  %4282 = fadd fast float %4279, %4280
  %4283 = add i32 %4275, 0
  %4284 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4283, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4285 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4284, i32 0)  ; GetDimensions(handle,mipLevel)
  %4286 = extractvalue %dx.types.Dimensions %4285, 0
  %4287 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4286)  ; FirstbitLo(value)
  %4288 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4289 = extractvalue %dx.types.CBufRet.i32 %4288, 1
  %4290 = sub nsw i32 %4289, %4287
  %4291 = sitofp i32 %4290 to float
  %4292 = fsub fast float %4241, %4291
  %4293 = call float @dx.op.binary.f32(i32 35, float %4292, float 0.000000e+00)  ; FMax(a,b)
  %4294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4284, %dx.types.Handle %37, float %4281, float %4282, float %4272, float undef, i32 0, i32 0, i32 undef, float %4293)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = fmul fast float %4295, %4266
  %4297 = fadd fast float %4296, %4269
  %4298 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4299 = extractvalue %dx.types.CBufRet.f32 %4298, 0
  %4300 = extractvalue %dx.types.CBufRet.f32 %4298, 1
  %4301 = extractvalue %dx.types.CBufRet.f32 %4298, 2
  %4302 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4303 = extractvalue %dx.types.CBufRet.f32 %4302, 3
  %4304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4305 = extractvalue %dx.types.CBufRet.f32 %4304, 3
  %4306 = extractvalue %dx.types.CBufRet.f32 %4298, 3
  %4307 = fadd fast float %4303, %4164
  %4308 = fadd fast float %4305, %4165
  %4309 = fadd fast float %4297, %4306
  %4310 = fmul fast float %4307, %4299
  %4311 = call float @dx.op.tertiary.f32(i32 46, float %4308, float %4300, float %4310)  ; FMad(a,b,c)
  %4312 = call float @dx.op.tertiary.f32(i32 46, float %4309, float %4301, float %4311)  ; FMad(a,b,c)
  %4313 = fsub fast float %4312, %4306
  %4314 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4315 = extractvalue %dx.types.CBufRet.f32 %4314, 2
  %4316 = fsub fast float %4313, %4315
  %4317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4318 = extractvalue %dx.types.CBufRet.i32 %4317, 0
  %4319 = call i32 @dx.op.binary.i32(i32 40, i32 %4195, i32 %4318)  ; UMin(a,b)
  %4320 = mul i32 %4319, 36
  %4321 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4320, i32 undef)  ; BufferLoad(srv,index,wot)
  %4322 = extractvalue %dx.types.ResRet.i32 %4321, 0
  %4323 = add i32 %4320, 4
  %4324 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4325 = extractvalue %dx.types.CBufRet.f32 %4324, 0
  %4326 = fmul fast float %4325, %4217
  %4327 = fmul fast float %4325, %4219
  %4328 = extractvalue %dx.types.CBufRet.f32 %4324, 1
  %4329 = fadd fast float %4326, %4328
  %4330 = fadd fast float %4327, %4328
  %4331 = icmp eq i32 %4322, 0
  br i1 %4331, label %4400, label %4332

; <label>:4332                                    ; preds = %4263
  br label %4333

; <label>:4333                                    ; preds = %4390, %4332
  %4334 = phi float [ %4391, %4390 ], [ 0.000000e+00, %4332 ]
  %4335 = phi float [ %4392, %4390 ], [ 0.000000e+00, %4332 ]
  %4336 = phi float [ %4393, %4390 ], [ 0.000000e+00, %4332 ]
  %4337 = phi float [ %4394, %4390 ], [ 0.000000e+00, %4332 ]
  %4338 = phi float [ %4395, %4390 ], [ 0.000000e+00, %4332 ]
  %4339 = phi float [ %4396, %4390 ], [ 0.000000e+00, %4332 ]
  %4340 = phi i32 [ %4397, %4390 ], [ 0, %4332 ]
  %4341 = shl i32 %4340, 2
  %4342 = add i32 %4208, %4341
  %4343 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4342, i32 undef)  ; BufferLoad(srv,index,wot)
  %4344 = extractvalue %dx.types.ResRet.f32 %4343, 0
  %4345 = add i32 %4212, %4341
  %4346 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4345, i32 undef)  ; BufferLoad(srv,index,wot)
  %4347 = extractvalue %dx.types.ResRet.i32 %4346, 0
  %4348 = add i32 %4347, 0
  %4349 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4348, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4350 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4349, i32 0)  ; GetDimensions(handle,mipLevel)
  %4351 = extractvalue %dx.types.Dimensions %4350, 0
  %4352 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4351)  ; FirstbitLo(value)
  %4353 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4354 = extractvalue %dx.types.CBufRet.i32 %4353, 1
  %4355 = sub nsw i32 %4354, %4352
  %4356 = sitofp i32 %4355 to float
  %4357 = fsub fast float %4241, %4356
  %4358 = call float @dx.op.binary.f32(i32 35, float %4357, float 0.000000e+00)  ; FMax(a,b)
  %4359 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4349, %dx.types.Handle %37, float %4329, float %4330, float %4344, float undef, i32 0, i32 0, i32 undef, float %4358)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4360 = extractvalue %dx.types.ResRet.f32 %4359, 0
  %4361 = fcmp fast ogt float %4360, 0.000000e+00
  br i1 %4361, label %4362, label %4390

; <label>:4362                                    ; preds = %4333
  %4363 = add i32 %4323, %4341
  %4364 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4363, i32 undef)  ; BufferLoad(srv,index,wot)
  %4365 = extractvalue %dx.types.ResRet.i32 %4364, 0
  %4366 = and i32 %4365, 32767
  %4367 = mul nuw nsw i32 %4366, 928
  %4368 = add nuw nsw i32 %4367, 48
  %4369 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4368, i32 undef)  ; BufferLoad(srv,index,wot)
  %4370 = extractvalue %dx.types.ResRet.f32 %4369, 0
  %4371 = extractvalue %dx.types.ResRet.f32 %4369, 1
  %4372 = extractvalue %dx.types.ResRet.f32 %4369, 2
  %4373 = add nuw nsw i32 %4367, 60
  %4374 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4373, i32 undef)  ; BufferLoad(srv,index,wot)
  %4375 = extractvalue %dx.types.ResRet.f32 %4374, 0
  %4376 = extractvalue %dx.types.ResRet.f32 %4374, 1
  %4377 = extractvalue %dx.types.ResRet.f32 %4374, 2
  %4378 = fmul fast float %4370, %4360
  %4379 = fmul fast float %4371, %4360
  %4380 = fmul fast float %4372, %4360
  %4381 = fadd fast float %4378, %4334
  %4382 = fadd fast float %4379, %4335
  %4383 = fadd fast float %4380, %4336
  %4384 = fmul fast float %4375, %4360
  %4385 = fmul fast float %4376, %4360
  %4386 = fmul fast float %4377, %4360
  %4387 = fadd fast float %4384, %4337
  %4388 = fadd fast float %4385, %4338
  %4389 = fadd fast float %4386, %4339
  br label %4390

; <label>:4390                                    ; preds = %4362, %4333
  %4391 = phi float [ %4381, %4362 ], [ %4334, %4333 ]
  %4392 = phi float [ %4382, %4362 ], [ %4335, %4333 ]
  %4393 = phi float [ %4383, %4362 ], [ %4336, %4333 ]
  %4394 = phi float [ %4387, %4362 ], [ %4337, %4333 ]
  %4395 = phi float [ %4388, %4362 ], [ %4338, %4333 ]
  %4396 = phi float [ %4389, %4362 ], [ %4339, %4333 ]
  %4397 = add nuw i32 %4340, 1
  %4398 = icmp eq i32 %4397, %4322
  br i1 %4398, label %4399, label %4333

; <label>:4399                                    ; preds = %4390
  br label %4400

; <label>:4400                                    ; preds = %4399, %4263
  %4401 = phi float [ 0.000000e+00, %4263 ], [ %4391, %4399 ]
  %4402 = phi float [ 0.000000e+00, %4263 ], [ %4392, %4399 ]
  %4403 = phi float [ 0.000000e+00, %4263 ], [ %4393, %4399 ]
  %4404 = phi float [ 0.000000e+00, %4263 ], [ %4394, %4399 ]
  %4405 = phi float [ 0.000000e+00, %4263 ], [ %4395, %4399 ]
  %4406 = phi float [ 0.000000e+00, %4263 ], [ %4396, %4399 ]
  %4407 = fadd fast float %4404, %4401
  %4408 = fmul fast float %4407, 0x3F847AE140000000
  %4409 = fadd fast float %4405, %4402
  %4410 = fmul fast float %4409, 0x3F847AE140000000
  %4411 = fadd fast float %4406, %4403
  %4412 = fmul fast float %4411, 0x3F847AE140000000
  br label %4413

; <label>:4413                                    ; preds = %4400, %4197, %4142, %4139, %4110, %4072
  %4414 = phi float [ %4124, %4110 ], [ -1.310720e+05, %4072 ], [ %4316, %4400 ], [ -1.310720e+05, %4142 ], [ -1.310720e+05, %4197 ], [ -1.310720e+05, %4139 ]
  %4415 = phi float [ %4134, %4110 ], [ 0.000000e+00, %4072 ], [ %4408, %4400 ], [ 0.000000e+00, %4142 ], [ 0.000000e+00, %4197 ], [ 0.000000e+00, %4139 ]
  %4416 = phi float [ %4136, %4110 ], [ 0.000000e+00, %4072 ], [ %4410, %4400 ], [ 0.000000e+00, %4142 ], [ 0.000000e+00, %4197 ], [ 0.000000e+00, %4139 ]
  %4417 = phi float [ %4138, %4110 ], [ 0.000000e+00, %4072 ], [ %4412, %4400 ], [ 0.000000e+00, %4142 ], [ 0.000000e+00, %4197 ], [ 0.000000e+00, %4139 ]
  %4418 = phi i1 [ true, %4110 ], [ false, %4072 ], [ true, %4400 ], [ false, %4142 ], [ false, %4197 ], [ false, %4139 ]
  %4419 = and i32 %144, 3
  %4420 = icmp eq i32 %4419, 1
  %4421 = select i1 %4420, float 1.000000e+00, float 0.000000e+00
  %4422 = fsub fast float %4414, %128
  %4423 = call float @dx.op.unary.f32(i32 7, float %4422)  ; Saturate(value)
  %4424 = select i1 %4418, float %4423, float 1.000000e+00
  %4425 = fmul fast float %4424, %4421
  %4426 = icmp eq i32 %4419, 3
  %4427 = select i1 %4426, float 1.000000e+00, float %4425
  %4428 = call float @dx.op.binary.f32(i32 35, float %4015, float %4427)  ; FMax(a,b)
  %4429 = call float @dx.op.unary.f32(i32 7, float %4428)  ; Saturate(value)
  %4430 = fcmp fast une float %4429, 0.000000e+00
  %4431 = call float @dx.op.dot3.f32(i32 55, float %126, float %127, float %128, float %126, float %127, float %128)  ; Dot3(ax,ay,az,bx,by,bz)
  %4432 = call float @dx.op.unary.f32(i32 25, float %4431)  ; Rsqrt(value)
  br i1 %4430, label %4440, label %4433

; <label>:4433                                    ; preds = %4413
  %4434 = fmul fast float %4432, %126
  %4435 = fmul fast float %4432, %127
  %4436 = fmul fast float %4432, %128
  %4437 = fsub fast float -0.000000e+00, %4434
  %4438 = fsub fast float -0.000000e+00, %4435
  %4439 = fsub fast float -0.000000e+00, %4436
  br label %4608

; <label>:4440                                    ; preds = %4413
  %4441 = fmul fast float %126, %4432
  %4442 = fsub fast float -0.000000e+00, %4441
  %4443 = fmul fast float %127, %4432
  %4444 = fsub fast float -0.000000e+00, %4443
  %4445 = fmul fast float %128, %4432
  %4446 = fsub fast float -0.000000e+00, %4445
  %4447 = call float @dx.op.dot3.f32(i32 55, float %4442, float %4444, float %4446, float %78, float %79, float %80)  ; Dot3(ax,ay,az,bx,by,bz)
  %4448 = fmul fast float %4429, 2.500000e+00
  %4449 = call float @dx.op.unary.f32(i32 7, float %4448)  ; Saturate(value)
  %4450 = fmul fast float %4429, 0x4013FFFFE0000000
  %4451 = fadd fast float %4450, 0xBFFFFFFFE0000000
  %4452 = call float @dx.op.unary.f32(i32 7, float %4451)  ; Saturate(value)
  %4453 = fmul fast float %4429, 0x4004000020000000
  %4454 = fadd fast float %4453, 0xBFF8000040000000
  %4455 = call float @dx.op.unary.f32(i32 7, float %4454)  ; Saturate(value)
  %4456 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4457 = fmul fast float %4018, 1.000000e+01
  %4458 = call float @dx.op.unary.f32(i32 7, float %4457)  ; Saturate(value)
  %4459 = fmul fast float %4458, 2.000000e+00
  %4460 = fsub fast float 3.000000e+00, %4459
  %4461 = fmul fast float %4458, %4458
  %4462 = fmul fast float %4461, %4460
  %4463 = fsub fast float 1.000000e+00, %4462
  %4464 = fsub fast float 0x3FE3333340000000, %4039
  %4465 = fmul fast float %4464, 0x400AAAAAA0000000
  %4466 = call float @dx.op.unary.f32(i32 7, float %4465)  ; Saturate(value)
  %4467 = fmul fast float %4463, %4466
  %4468 = fmul fast float %4051, 0x3FEA2B8620000000
  %4469 = fmul fast float %4052, 0x3FEA2B8620000000
  %4470 = fmul fast float %4053, 0x3FEA2B8620000000
  %4471 = fadd fast float %4468, 0x3FC81DFBA0000000
  %4472 = fmul fast float %4471, %4051
  %4473 = fadd fast float %4472, 0x3F910E6020000000
  %4474 = fadd fast float %4469, 0x3FC81DFBA0000000
  %4475 = fmul fast float %4474, %4052
  %4476 = fadd fast float %4475, 0x3F910E6020000000
  %4477 = fadd fast float %4470, 0x3FC81DFBA0000000
  %4478 = fmul fast float %4477, %4053
  %4479 = fadd fast float %4478, 0x3F910E6020000000
  %4480 = call float @dx.op.unary.f32(i32 7, float %4473)  ; Saturate(value)
  %4481 = call float @dx.op.unary.f32(i32 7, float %4476)  ; Saturate(value)
  %4482 = call float @dx.op.unary.f32(i32 7, float %4479)  ; Saturate(value)
  %4483 = fsub fast float %4480, %4051
  %4484 = fsub fast float %4481, %4052
  %4485 = fsub fast float %4482, %4053
  %4486 = fmul fast float %4483, %4456
  %4487 = fmul fast float %4486, %4467
  %4488 = fmul fast float %4484, %4456
  %4489 = fmul fast float %4488, %4467
  %4490 = fmul fast float %4485, %4456
  %4491 = fmul fast float %4490, %4467
  %4492 = fadd fast float %4487, %4051
  %4493 = fadd fast float %4489, %4052
  %4494 = fadd fast float %4491, %4053
  %4495 = fmul fast float %4012, %4012
  %4496 = fmul fast float %4495, %4495
  %4497 = fadd fast float %4452, 1.000000e+00
  %4498 = fsub fast float %4497, %4467
  %4499 = call float @dx.op.unary.f32(i32 7, float %4498)  ; Saturate(value)
  %4500 = call float @dx.op.dot3.f32(i32 55, float %78, float %79, float %80, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4501 = call float @dx.op.unary.f32(i32 7, float %4500)  ; Saturate(value)
  %4502 = fsub fast float 1.000000e+00, %4496
  %4503 = call float @dx.op.binary.f32(i32 36, float %4499, float %4502)  ; FMin(a,b)
  %4504 = call float @dx.op.unary.f32(i32 7, float %4455)  ; Saturate(value)
  %4505 = call float @dx.op.binary.f32(i32 35, float %4503, float %4504)  ; FMax(a,b)
  %4506 = fadd fast float %4501, 0xBFE4CCCCC0000000
  %4507 = fmul fast float %4506, 0x4006DB6DA0000000
  %4508 = call float @dx.op.unary.f32(i32 7, float %4507)  ; Saturate(value)
  %4509 = fmul fast float %4508, 2.000000e+00
  %4510 = fsub fast float 3.000000e+00, %4509
  %4511 = bitcast float %4036 to i32
  %4512 = ashr i32 %4511, 1
  %4513 = add nsw i32 %4512, 532487669
  %4514 = bitcast i32 %4513 to float
  %4515 = fsub fast float 1.000000e+00, %4514
  %4516 = bitcast float %4515 to i32
  %4517 = sub nsw i32 2129859010, %4516
  %4518 = bitcast i32 %4517 to float
  %4519 = fmul fast float %4518, 2.000000e+00
  %4520 = bitcast float %4037 to i32
  %4521 = ashr i32 %4520, 1
  %4522 = add nsw i32 %4521, 532487669
  %4523 = bitcast i32 %4522 to float
  %4524 = fsub fast float 1.000000e+00, %4523
  %4525 = bitcast float %4524 to i32
  %4526 = sub nsw i32 2129859010, %4525
  %4527 = bitcast i32 %4526 to float
  %4528 = fmul fast float %4527, 2.000000e+00
  %4529 = bitcast float %4038 to i32
  %4530 = ashr i32 %4529, 1
  %4531 = add nsw i32 %4530, 532487669
  %4532 = bitcast i32 %4531 to float
  %4533 = fsub fast float 1.000000e+00, %4532
  %4534 = bitcast float %4533 to i32
  %4535 = sub nsw i32 2129859010, %4534
  %4536 = bitcast i32 %4535 to float
  %4537 = fmul fast float %4536, 2.000000e+00
  %4538 = fsub fast float 0x4002A9FBE0000000, %4519
  %4539 = fadd fast float %4519, 0x3FD54FDF00000000
  %4540 = bitcast float %4539 to i32
  %4541 = sub nsw i32 2129859010, %4540
  %4542 = bitcast i32 %4541 to float
  %4543 = fmul fast float %4542, %4538
  %4544 = fmul fast float %4543, %4543
  %4545 = fsub fast float 0x4002A9FBE0000000, %4528
  %4546 = fadd fast float %4528, 0x3FD54FDF00000000
  %4547 = bitcast float %4546 to i32
  %4548 = sub nsw i32 2129859010, %4547
  %4549 = bitcast i32 %4548 to float
  %4550 = fmul fast float %4549, %4545
  %4551 = fmul fast float %4550, %4550
  %4552 = fsub fast float 0x4002A9FBE0000000, %4537
  %4553 = fadd fast float %4537, 0x3FD54FDF00000000
  %4554 = bitcast float %4553 to i32
  %4555 = sub nsw i32 2129859010, %4554
  %4556 = bitcast i32 %4555 to float
  %4557 = fmul fast float %4556, %4552
  %4558 = fmul fast float %4557, %4557
  %4559 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4544)  ; FMax(a,b)
  %4560 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4551)  ; FMax(a,b)
  %4561 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4558)  ; FMax(a,b)
  %4562 = fsub fast float 1.000000e+00, %4447
  %4563 = fadd fast float %4562, %4463
  %4564 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4565 = fsub fast float 1.000000e+00, %4427
  %4566 = fmul fast float %4505, %4565
  %4567 = fmul fast float %4508, %4508
  %4568 = fmul fast float %4567, %4566
  %4569 = fmul fast float %4568, %4510
  %4570 = fmul fast float %4565, 0xBFE99999A0000000
  %4571 = fmul fast float %4570, %4456
  %4572 = fmul fast float %4571, %4467
  %4573 = fadd fast float %4572, 1.000000e+00
  %4574 = fadd fast float %4039, -1.000000e+00
  %4575 = fmul fast float %4573, %4574
  %4576 = fadd fast float %4575, 1.000000e+00
  %4577 = fsub fast float %4559, %4036
  %4578 = fsub fast float %4560, %4037
  %4579 = fsub fast float %4561, %4038
  %4580 = fmul fast float %4569, %4577
  %4581 = fmul fast float %4569, %4578
  %4582 = fmul fast float %4569, %4579
  %4583 = fadd fast float %4580, %4036
  %4584 = fadd fast float %4581, %4037
  %4585 = fadd fast float %4582, %4038
  %4586 = fsub fast float %78, %4000
  %4587 = fsub fast float %79, %4001
  %4588 = fsub fast float %80, %4002
  %4589 = fmul fast float %4569, %4586
  %4590 = fmul fast float %4569, %4587
  %4591 = fmul fast float %4569, %4588
  %4592 = fadd fast float %4589, %4000
  %4593 = fadd fast float %4590, %4001
  %4594 = fadd fast float %4591, %4002
  %4595 = fmul fast float %4569, %4564
  %4596 = call float @dx.op.unary.f32(i32 7, float %4576)  ; Saturate(value)
  %4597 = fsub fast float 1.000000e+00, %4596
  %4598 = fmul fast float %4595, %4597
  %4599 = fadd fast float %4598, %4596
  %4600 = fsub fast float 1.000000e+00, %4012
  %4601 = fmul fast float %4569, %4600
  %4602 = fadd fast float %4601, %4012
  %4603 = call float @dx.op.dot3.f32(i32 55, float %4592, float %4593, float %4594, float %4592, float %4593, float %4594)  ; Dot3(ax,ay,az,bx,by,bz)
  %4604 = call float @dx.op.unary.f32(i32 25, float %4603)  ; Rsqrt(value)
  %4605 = fmul fast float %4592, %4604
  %4606 = fmul fast float %4593, %4604
  %4607 = fmul fast float %4594, %4604
  br label %4608

; <label>:4608                                    ; preds = %4440, %4433
  %4609 = phi float [ %4439, %4433 ], [ %4446, %4440 ]
  %4610 = phi float [ %4438, %4433 ], [ %4444, %4440 ]
  %4611 = phi float [ %4437, %4433 ], [ %4442, %4440 ]
  %4612 = phi float [ %4436, %4433 ], [ %4445, %4440 ]
  %4613 = phi float [ %4435, %4433 ], [ %4443, %4440 ]
  %4614 = phi float [ %4434, %4433 ], [ %4441, %4440 ]
  %4615 = phi float [ %4036, %4433 ], [ %4583, %4440 ]
  %4616 = phi float [ %4037, %4433 ], [ %4584, %4440 ]
  %4617 = phi float [ %4038, %4433 ], [ %4585, %4440 ]
  %4618 = phi float [ %4051, %4433 ], [ %4492, %4440 ]
  %4619 = phi float [ %4052, %4433 ], [ %4493, %4440 ]
  %4620 = phi float [ %4053, %4433 ], [ %4494, %4440 ]
  %4621 = phi float [ %4000, %4433 ], [ %4605, %4440 ]
  %4622 = phi float [ %4001, %4433 ], [ %4606, %4440 ]
  %4623 = phi float [ %4002, %4433 ], [ %4607, %4440 ]
  %4624 = phi float [ %4039, %4433 ], [ %4599, %4440 ]
  %4625 = phi float [ %4012, %4433 ], [ %4602, %4440 ]
  %4626 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4627 = extractvalue %dx.types.CBufRet.f32 %4626, 2
  %4628 = extractvalue %dx.types.CBufRet.f32 %4626, 3
  %4629 = fmul fast float %4627, %71
  %4630 = fmul fast float %4628, %72
  %4631 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4632 = extractvalue %dx.types.CBufRet.f32 %4631, 0
  %4633 = extractvalue %dx.types.CBufRet.f32 %4631, 1
  %4634 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4629, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4635 = extractvalue %dx.types.ResRet.f32 %4634, 0
  %4636 = fmul fast float %4635, %4633
  %4637 = call float @dx.op.unary.f32(i32 7, float %4636)  ; Saturate(value)
  %4638 = fadd fast float %4637, -1.000000e+00
  %4639 = fmul fast float %4638, %4632
  %4640 = fadd fast float %4639, 1.000000e+00
  %4641 = select i1 %168, float 0.000000e+00, float %4617
  %4642 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4622, float %4623, float %4611, float %4610, float %4609)  ; Dot3(ax,ay,az,bx,by,bz)
  %4643 = call float @dx.op.unary.f32(i32 7, float %4642)  ; Saturate(value)
  %4644 = call float @dx.op.dot3.f32(i32 55, float %4614, float %4613, float %4612, float %4621, float %4622, float %4623)  ; Dot3(ax,ay,az,bx,by,bz)
  %4645 = fmul fast float %4644, 2.000000e+00
  %4646 = fmul fast float %4645, %4621
  %4647 = fmul fast float %4645, %4622
  %4648 = fmul fast float %4645, %4623
  %4649 = fsub fast float %4614, %4646
  %4650 = fsub fast float %4613, %4647
  %4651 = fsub fast float %4612, %4648
  %4652 = call float @dx.op.binary.f32(i32 36, float %4625, float %4640)  ; FMin(a,b)
  %4653 = fsub fast float 1.000000e+00, %4652
  %4654 = bitcast float %4653 to i32
  %4655 = ashr i32 %4654, 1
  %4656 = add nsw i32 %4655, 532487669
  %4657 = bitcast i32 %4656 to float
  %4658 = fsub fast float 1.000000e+00, %4624
  %4659 = call float @dx.op.binary.f32(i32 35, float %4658, float 0x3F847AE140000000)  ; FMax(a,b)
  %4660 = fmul fast float %4659, %4659
  %4661 = fmul fast float %4660, %4660
  %4662 = call float @dx.op.unary.f32(i32 7, float %4643)  ; Saturate(value)
  %4663 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4657, float %4661, float %4662, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4664 = extractvalue %dx.types.ResRet.f32 %4663, 0
  %4665 = fsub fast float 1.000000e+00, %4625
  %4666 = bitcast float %4665 to i32
  %4667 = sub nsw i32 2129859010, %4666
  %4668 = bitcast i32 %4667 to float
  %4669 = fmul fast float %4643, 9.843750e-01
  %4670 = fmul fast float %4624, 9.843750e-01
  %4671 = fadd fast float %4669, 7.812500e-03
  %4672 = fadd fast float %4670, 7.812500e-03
  %4673 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4671, float %4672, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4674 = extractvalue %dx.types.ResRet.f32 %4673, 2
  %4675 = extractvalue %dx.types.ResRet.f32 %4673, 3
  %4676 = fmul fast float %4674, %4615
  %4677 = fmul fast float %4674, %4616
  %4678 = fmul fast float %4674, %4641
  %4679 = fadd fast float %4676, %4675
  %4680 = fadd fast float %4677, %4675
  %4681 = fadd fast float %4678, %4675
  %4682 = fcmp fast ogt float %4013, 0.000000e+00
  br i1 %4682, label %4683, label %4709

; <label>:4683                                    ; preds = %4608
  %4684 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4013, float %4643, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4685 = extractvalue %dx.types.ResRet.f32 %4684, 0
  %4686 = extractvalue %dx.types.ResRet.f32 %4684, 1
  %4687 = extractvalue %dx.types.ResRet.f32 %4684, 2
  %4688 = fadd fast float %4685, -5.000000e-01
  %4689 = fadd fast float %4686, -5.000000e-01
  %4690 = fadd fast float %4687, -5.000000e-01
  %4691 = fsub fast float 1.000000e+00, %4615
  %4692 = fsub fast float 1.000000e+00, %4616
  %4693 = fsub fast float 1.000000e+00, %4641
  %4694 = fmul fast float %4615, 4.000000e+00
  %4695 = fmul fast float %4694, %4691
  %4696 = fmul fast float %4695, %4688
  %4697 = fmul fast float %4616, 4.000000e+00
  %4698 = fmul fast float %4697, %4692
  %4699 = fmul fast float %4698, %4689
  %4700 = fmul fast float %4641, 4.000000e+00
  %4701 = fmul fast float %4700, %4693
  %4702 = fmul fast float %4701, %4690
  %4703 = fadd fast float %4696, %4679
  %4704 = fadd fast float %4699, %4680
  %4705 = fadd fast float %4702, %4681
  %4706 = call float @dx.op.unary.f32(i32 7, float %4703)  ; Saturate(value)
  %4707 = call float @dx.op.unary.f32(i32 7, float %4704)  ; Saturate(value)
  %4708 = call float @dx.op.unary.f32(i32 7, float %4705)  ; Saturate(value)
  br label %4709

; <label>:4709                                    ; preds = %4683, %4608
  %4710 = phi float [ %4706, %4683 ], [ %4679, %4608 ]
  %4711 = phi float [ %4707, %4683 ], [ %4680, %4608 ]
  %4712 = phi float [ %4708, %4683 ], [ %4681, %4608 ]
  %4713 = call float @dx.op.binary.f32(i32 35, float %4711, float %4712)  ; FMax(a,b)
  %4714 = call float @dx.op.binary.f32(i32 35, float %4710, float %4713)  ; FMax(a,b)
  %4715 = fmul fast float %4714, %4624
  %4716 = fadd fast float %4715, %4624
  %4717 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4718 = extractvalue %dx.types.CBufRet.f32 %4717, 0
  %4719 = extractvalue %dx.types.CBufRet.f32 %4717, 1
  %4720 = extractvalue %dx.types.CBufRet.f32 %4717, 2
  %4721 = extractvalue %dx.types.CBufRet.f32 %4717, 3
  %4722 = fmul fast float %4716, %4718
  %4723 = fadd fast float %4722, %4719
  %4724 = call float @dx.op.unary.f32(i32 7, float %4723)  ; Saturate(value)
  %4725 = fmul fast float %4720, %4716
  %4726 = fadd fast float %4725, %4721
  %4727 = call float @dx.op.unary.f32(i32 7, float %4726)  ; Saturate(value)
  %4728 = fsub fast float 1.000000e+00, %4664
  %4729 = fadd fast float %4728, %4727
  %4730 = call float @dx.op.unary.f32(i32 7, float %4729)  ; Saturate(value)
  %4731 = fcmp fast olt float %4730, 1.000000e+00
  br i1 %4731, label %4732, label %5579

; <label>:4732                                    ; preds = %4709
  %4733 = fcmp fast olt float %4724, 1.000000e+00
  %4734 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4735 = extractvalue %dx.types.CBufRet.f32 %4734, 0
  %4736 = fcmp fast ogt float %4735, 0.000000e+00
  %4737 = or i1 %4733, %4736
  %4738 = or i1 %4733, %4736
  %4739 = xor i1 %4738, true
  %4740 = zext i1 %4739 to i32
  br i1 %4737, label %4741, label %4976

; <label>:4741                                    ; preds = %4732
  %4742 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %4743 = extractvalue %dx.types.CBufRet.f32 %4742, 0
  %4744 = extractvalue %dx.types.CBufRet.f32 %4742, 1
  %4745 = extractvalue %dx.types.CBufRet.f32 %4742, 2
  %4746 = extractvalue %dx.types.CBufRet.f32 %4742, 3
  %4747 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %4748 = extractvalue %dx.types.CBufRet.f32 %4747, 0
  %4749 = extractvalue %dx.types.CBufRet.f32 %4747, 1
  %4750 = extractvalue %dx.types.CBufRet.f32 %4747, 2
  %4751 = extractvalue %dx.types.CBufRet.f32 %4747, 3
  %4752 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %4753 = extractvalue %dx.types.CBufRet.f32 %4752, 0
  %4754 = extractvalue %dx.types.CBufRet.f32 %4752, 1
  %4755 = extractvalue %dx.types.CBufRet.f32 %4752, 2
  %4756 = extractvalue %dx.types.CBufRet.f32 %4752, 3
  %4757 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %4758 = extractvalue %dx.types.CBufRet.f32 %4757, 0
  %4759 = extractvalue %dx.types.CBufRet.f32 %4757, 1
  %4760 = extractvalue %dx.types.CBufRet.f32 %4757, 2
  %4761 = extractvalue %dx.types.CBufRet.f32 %4757, 3
  %4762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %4763 = extractvalue %dx.types.CBufRet.f32 %4762, 0
  %4764 = extractvalue %dx.types.CBufRet.f32 %4762, 1
  %4765 = extractvalue %dx.types.CBufRet.f32 %4762, 2
  %4766 = extractvalue %dx.types.CBufRet.f32 %4762, 3
  %4767 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %4768 = extractvalue %dx.types.CBufRet.f32 %4767, 0
  %4769 = extractvalue %dx.types.CBufRet.f32 %4767, 1
  %4770 = extractvalue %dx.types.CBufRet.f32 %4767, 2
  %4771 = extractvalue %dx.types.CBufRet.f32 %4767, 3
  %4772 = call float @dx.op.dot3.f32(i32 55, float %4768, float %4769, float %4770, float %4649, float %4650, float %4651)  ; Dot3(ax,ay,az,bx,by,bz)
  %4773 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4622, float %4623, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4774 = call float @dx.op.unary.f32(i32 6, float %4773)  ; FAbs(value)
  %4775 = fmul fast float %4774, 8.000000e+00
  %4776 = fadd fast float %4775, -6.000000e+00
  %4777 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4778 = fmul fast float %4772, 8.000000e+00
  %4779 = fmul fast float %4778, %4735
  %4780 = call float @dx.op.unary.f32(i32 7, float %4779)  ; Saturate(value)
  %4781 = fcmp fast ogt float %4780, 0.000000e+00
  br i1 %4781, label %4782, label %4959, !dx.controlflow.hints !82

; <label>:4782                                    ; preds = %4741
  %4783 = extractvalue %dx.types.CBufRet.f32 %4734, 1
  %4784 = extractvalue %dx.types.CBufRet.f32 %4734, 2
  %4785 = fsub fast float %4783, %4784
  %4786 = fmul fast float %4785, %4624
  %4787 = fadd fast float %4786, %4784
  %4788 = fmul fast float %181, 2.000000e+00
  %4789 = fmul fast float %182, 2.000000e+00
  %4790 = fadd fast float %4788, -1.000000e+00
  %4791 = fadd fast float %4789, -1.000000e+00
  %4792 = fmul fast float %4787, %4790
  %4793 = fmul fast float %4787, %4791
  %4794 = fadd fast float %4792, %71
  %4795 = fadd fast float %4793, %72
  %4796 = fmul fast float %4794, %4627
  %4797 = fmul fast float %4795, %4628
  %4798 = fadd fast float %4624, 0xBFE3333340000000
  %4799 = fmul fast float %4798, 0x4004000020000000
  %4800 = fsub fast float 1.000000e+00, %4799
  %4801 = call float @dx.op.unary.f32(i32 7, float %4800)  ; Saturate(value)
  %4802 = fmul fast float %4801, 3.000000e+00
  %4803 = fadd fast float %4802, %181
  %4804 = call float @dx.op.unary.f32(i32 27, float %4803)  ; Round_ni(value)
  %4805 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %4796, float %4797, float %4804, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4806 = extractvalue %dx.types.ResRet.f32 %4805, 0
  %4807 = fcmp fast une float %4806, 0xFFF0000000000000
  %4808 = fcmp fast une float %4806, 0x7FF0000000000000
  %4809 = and i1 %4807, %4808
  %4810 = fcmp fast olt float %4806, 0.000000e+00
  %4811 = call float @dx.op.unary.f32(i32 6, float %4806)  ; FAbs(value)
  %4812 = fsub fast float 1.000000e+00, %4811
  %4813 = select i1 %4809, float 1.000000e+00, float 0.000000e+00
  %4814 = fmul fast float %4813, %4780
  %4815 = fcmp fast ogt float %4814, 0.000000e+00
  br i1 %4815, label %4816, label %4959, !dx.controlflow.hints !83

; <label>:4816                                    ; preds = %4782
  %4817 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %4818 = extractvalue %dx.types.CBufRet.f32 %4817, 0
  %4819 = extractvalue %dx.types.CBufRet.f32 %4817, 1
  %4820 = extractvalue %dx.types.CBufRet.f32 %4817, 2
  %4821 = select i1 %4810, float 0.000000e+00, float %4818
  %4822 = select i1 %4810, float 0.000000e+00, float %4819
  %4823 = select i1 %4810, float 0.000000e+00, float %4820
  %4824 = select i1 %4810, float %4743, float %4758
  %4825 = select i1 %4810, float %4748, float %4763
  %4826 = select i1 %4810, float %4753, float %4768
  %4827 = select i1 %4810, float %4744, float %4759
  %4828 = select i1 %4810, float %4749, float %4764
  %4829 = select i1 %4810, float %4754, float %4769
  %4830 = select i1 %4810, float %4745, float %4760
  %4831 = select i1 %4810, float %4750, float %4765
  %4832 = select i1 %4810, float %4755, float %4770
  %4833 = select i1 %4810, float %4746, float %4761
  %4834 = select i1 %4810, float %4751, float %4766
  %4835 = select i1 %4810, float %4756, float %4771
  %4836 = fadd fast float %4821, %126
  %4837 = fadd fast float %4822, %127
  %4838 = fadd fast float %4823, %128
  %4839 = fmul fast float %4836, %4824
  %4840 = call float @dx.op.tertiary.f32(i32 46, float %4837, float %4827, float %4839)  ; FMad(a,b,c)
  %4841 = call float @dx.op.tertiary.f32(i32 46, float %4838, float %4830, float %4840)  ; FMad(a,b,c)
  %4842 = fadd fast float %4841, %4833
  %4843 = fmul fast float %4836, %4825
  %4844 = call float @dx.op.tertiary.f32(i32 46, float %4837, float %4828, float %4843)  ; FMad(a,b,c)
  %4845 = call float @dx.op.tertiary.f32(i32 46, float %4838, float %4831, float %4844)  ; FMad(a,b,c)
  %4846 = fadd fast float %4845, %4834
  %4847 = fmul fast float %4836, %4826
  %4848 = call float @dx.op.tertiary.f32(i32 46, float %4837, float %4829, float %4847)  ; FMad(a,b,c)
  %4849 = call float @dx.op.tertiary.f32(i32 46, float %4838, float %4832, float %4848)  ; FMad(a,b,c)
  %4850 = fadd fast float %4849, %4835
  %4851 = fdiv fast float 1.000000e+00, %4850
  %4852 = fmul fast float %4851, %4842
  %4853 = fmul fast float %4851, %4846
  %4854 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4855 = extractvalue %dx.types.CBufRet.f32 %4854, 0
  %4856 = extractvalue %dx.types.CBufRet.f32 %4854, 1
  %4857 = fmul fast float %4852, %4855
  %4858 = fmul fast float %4853, %4856
  %4859 = extractvalue %dx.types.CBufRet.f32 %4854, 2
  %4860 = extractvalue %dx.types.CBufRet.f32 %4854, 3
  %4861 = fadd fast float %4857, %4859
  %4862 = fadd fast float %4858, %4860
  %4863 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %4864 = extractvalue %dx.types.CBufRet.f32 %4863, 3
  %4865 = fmul fast float %4864, %4649
  %4866 = fmul fast float %4864, %4650
  %4867 = fmul fast float %4864, %4651
  %4868 = fadd fast float %4865, %4836
  %4869 = fadd fast float %4866, %4837
  %4870 = fadd fast float %4867, %4838
  %4871 = fmul fast float %4868, %4824
  %4872 = call float @dx.op.tertiary.f32(i32 46, float %4869, float %4827, float %4871)  ; FMad(a,b,c)
  %4873 = call float @dx.op.tertiary.f32(i32 46, float %4870, float %4830, float %4872)  ; FMad(a,b,c)
  %4874 = fadd fast float %4873, %4833
  %4875 = fmul fast float %4868, %4825
  %4876 = call float @dx.op.tertiary.f32(i32 46, float %4869, float %4828, float %4875)  ; FMad(a,b,c)
  %4877 = call float @dx.op.tertiary.f32(i32 46, float %4870, float %4831, float %4876)  ; FMad(a,b,c)
  %4878 = fadd fast float %4877, %4834
  %4879 = fmul fast float %4868, %4826
  %4880 = call float @dx.op.tertiary.f32(i32 46, float %4869, float %4829, float %4879)  ; FMad(a,b,c)
  %4881 = call float @dx.op.tertiary.f32(i32 46, float %4870, float %4832, float %4880)  ; FMad(a,b,c)
  %4882 = fadd fast float %4881, %4835
  %4883 = fdiv fast float 1.000000e+00, %4882
  %4884 = fmul fast float %4883, %4874
  %4885 = fmul fast float %4883, %4878
  %4886 = fmul fast float %4861, 2.000000e+00
  %4887 = fadd fast float %4886, -1.000000e+00
  %4888 = call float @dx.op.unary.f32(i32 6, float %4887)  ; FAbs(value)
  %4889 = fmul fast float %4888, 5.000000e+00
  %4890 = fadd fast float %4889, -4.000000e+00
  %4891 = call float @dx.op.unary.f32(i32 7, float %4890)  ; Saturate(value)
  %4892 = fmul fast float %4891, %4777
  %4893 = fsub fast float %4852, %4884
  %4894 = fmul fast float %4855, %4893
  %4895 = fmul fast float %4892, %4894
  %4896 = fsub fast float %4884, %4852
  %4897 = fmul fast float %4855, %4896
  %4898 = fadd fast float %4897, %4895
  %4899 = fsub fast float %4885, %4853
  %4900 = fmul fast float %4856, %4899
  %4901 = fmul fast float %4898, %4812
  %4902 = fmul fast float %4900, %4812
  %4903 = fadd fast float %4901, %4861
  %4904 = fadd fast float %4902, %4862
  %4905 = fsub fast float %4883, %4851
  %4906 = fmul fast float %4905, %4812
  %4907 = fadd fast float %4906, %4851
  %4908 = fdiv fast float 1.000000e+00, %4907
  %4909 = fadd fast float %4624, -1.000000e+00
  %4910 = fsub fast float %4908, %4850
  %4911 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %4912 = extractvalue %dx.types.CBufRet.f32 %4911, 2
  %4913 = fmul fast float %4912, %4908
  %4914 = fdiv fast float 1.600000e+02, %4913
  %4915 = fmul fast float %4909, %4909
  %4916 = fmul fast float %4915, 0xBFB5B17960000000
  %4917 = fmul fast float %4916, %4910
  %4918 = fmul fast float %4917, %4914
  %4919 = call float @dx.op.unary.f32(i32 21, float %4918)  ; Exp(value)
  %4920 = fmul fast float %4919, 0x3FF04B2960000000
  %4921 = fsub fast float 0x3FF04B2960000000, %4920
  %4922 = call float @dx.op.unary.f32(i32 7, float %4921)  ; Saturate(value)
  %4923 = fmul fast float %4922, 4.000000e+00
  %4924 = fadd fast float %181, -5.000000e-01
  %4925 = fadd fast float %182, -5.000000e-01
  %4926 = fmul fast float %4922, 0x3FBEB851E0000000
  %4927 = call float @dx.op.unary.f32(i32 7, float %4926)  ; Saturate(value)
  %4928 = fmul fast float %4927, %4924
  %4929 = fmul fast float %4927, %4925
  %4930 = fadd fast float %4903, %4928
  %4931 = fadd fast float %4904, %4929
  %4932 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %4930, float %4931, float undef, float undef, i32 0, i32 0, i32 undef, float %4923)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4933 = extractvalue %dx.types.ResRet.f32 %4932, 0
  %4934 = extractvalue %dx.types.ResRet.f32 %4932, 1
  %4935 = extractvalue %dx.types.ResRet.f32 %4932, 2
  %4936 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %4937 = extractvalue %dx.types.CBufRet.f32 %4936, 2
  %4938 = fmul fast float %4937, %4933
  %4939 = fmul fast float %4937, %4934
  %4940 = fmul fast float %4937, %4935
  %4941 = select i1 %168, float 0.000000e+00, float %4939
  %4942 = select i1 %168, float 0.000000e+00, float %4940
  %4943 = fmul fast float %4930, 2.000000e+00
  %4944 = fmul fast float %4931, 2.000000e+00
  %4945 = fadd fast float %4943, -1.000000e+00
  %4946 = fadd fast float %4944, -1.000000e+00
  %4947 = fmul fast float %4945, %4945
  %4948 = fsub fast float 1.000000e+00, %4947
  %4949 = call float @dx.op.unary.f32(i32 7, float %4948)  ; Saturate(value)
  %4950 = fsub fast float 1.000000e+00, %4949
  %4951 = fmul fast float %4950, %4777
  %4952 = fadd fast float %4951, %4949
  %4953 = fmul fast float %4946, %4946
  %4954 = fsub fast float 1.000000e+00, %4953
  %4955 = call float @dx.op.unary.f32(i32 7, float %4954)  ; Saturate(value)
  %4956 = fmul fast float %4952, %4955
  %4957 = call float @dx.op.unary.f32(i32 7, float %4956)  ; Saturate(value)
  %4958 = fmul fast float %4957, %4814
  br label %4959

; <label>:4959                                    ; preds = %4816, %4782, %4741
  %4960 = phi float [ %4938, %4816 ], [ 0.000000e+00, %4782 ], [ 0.000000e+00, %4741 ]
  %4961 = phi float [ %4941, %4816 ], [ 0.000000e+00, %4782 ], [ 0.000000e+00, %4741 ]
  %4962 = phi float [ %4942, %4816 ], [ 0.000000e+00, %4782 ], [ 0.000000e+00, %4741 ]
  %4963 = phi float [ %4958, %4816 ], [ 0.000000e+00, %4782 ], [ 0.000000e+00, %4741 ]
  %4964 = fcmp fast olt float %4963, 1.000000e+00
  %4965 = or i1 %4964, %4739
  %4966 = zext i1 %4965 to i32
  %4967 = fmul fast float %4963, %4724
  %4968 = fsub fast float %4963, %4967
  %4969 = fsub fast float 1.000000e+00, %4730
  %4970 = fmul fast float %4968, %4969
  %4971 = fadd fast float %4730, %4970
  %4972 = fsub fast float -0.000000e+00, %4971
  %4973 = fmul fast float %4968, %4960
  %4974 = fmul fast float %4968, %4961
  %4975 = fmul fast float %4968, %4962
  br label %4976

; <label>:4976                                    ; preds = %4959, %4732
  %4977 = phi float [ %4730, %4732 ], [ %4972, %4959 ]
  %4978 = phi float [ 0.000000e+00, %4732 ], [ %4973, %4959 ]
  %4979 = phi float [ 0.000000e+00, %4732 ], [ %4974, %4959 ]
  %4980 = phi float [ 0.000000e+00, %4732 ], [ %4975, %4959 ]
  %4981 = phi i32 [ %4740, %4732 ], [ %4966, %4959 ]
  %4982 = icmp eq i32 %4981, 0
  br i1 %4982, label %5579, label %4983

; <label>:4983                                    ; preds = %4976
  %4984 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %4985 = extractvalue %dx.types.CBufRet.f32 %4984, 2
  %4986 = extractvalue %dx.types.CBufRet.f32 %4984, 3
  %4987 = fmul fast float %4985, %71
  %4988 = fmul fast float %4986, %72
  %4989 = fptoui float %4987 to i32
  %4990 = fptoui float %4988 to i32
  %4991 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %4992 = extractvalue %dx.types.CBufRet.f32 %4991, 0
  %4993 = extractvalue %dx.types.CBufRet.f32 %4991, 2
  %4994 = extractvalue %dx.types.CBufRet.f32 %4991, 3
  %4995 = fadd fast float %66, -4.000000e+00
  %4996 = call float @dx.op.binary.f32(i32 35, float %4995, float 0.000000e+00)  ; FMax(a,b)
  %4997 = fadd fast float %4996, %4992
  %4998 = fmul fast float %4997, %4993
  %4999 = call float @dx.op.unary.f32(i32 23, float %4998)  ; Log(value)
  %5000 = fmul fast float %4999, %4994
  %5001 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5002 = extractvalue %dx.types.CBufRet.f32 %5001, 2
  %5003 = fmul fast float %5000, %5002
  %5004 = call float @dx.op.unary.f32(i32 7, float %5003)  ; Saturate(value)
  %5005 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.i32 %5005, 1
  %5007 = add i32 %5006, -1
  %5008 = uitofp i32 %5006 to float
  %5009 = fmul fast float %5008, %5004
  %5010 = fptoui float %5009 to i32
  %5011 = call i32 @dx.op.binary.i32(i32 40, i32 %5010, i32 %5007)  ; UMin(a,b)
  %5012 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5013 = extractvalue %dx.types.CBufRet.i32 %5012, 2
  %5014 = extractvalue %dx.types.CBufRet.i32 %5012, 3
  %5015 = call i32 @dx.op.tertiary.i32(i32 49, i32 %4990, i32 %5013, i32 %4989)  ; UMad(a,b,c)
  %5016 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5011, i32 %5014, i32 %5015)  ; UMad(a,b,c)
  %5017 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %5018 = fptoui float %5017 to i32
  %5019 = lshr i32 %5018, 5
  %5020 = call i32 @dx.op.binary.i32(i32 40, i32 %5019, i32 8191)  ; UMin(a,b)
  %5021 = fcmp fast ogt float %4423, 0.000000e+00
  %5022 = fcmp fast ogt float %4651, 0.000000e+00
  %5023 = and i1 %5022, %5021
  br i1 %5023, label %5024, label %5053

; <label>:5024                                    ; preds = %4983
  %5025 = call float @dx.op.dot3.f32(i32 55, float %4649, float %4650, float %4651, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5026 = call float @dx.op.binary.f32(i32 35, float %5025, float -1.000000e+00)  ; FMax(a,b)
  %5027 = call float @dx.op.binary.f32(i32 36, float %5026, float 1.000000e+00)  ; FMin(a,b)
  %5028 = fmul fast float %5027, %5027
  %5029 = fsub fast float 1.000000e+00, %5028
  %5030 = fmul fast float %5029, 0x3FFC6E2300000000
  %5031 = fsub fast float 1.000000e+00, %5030
  %5032 = fcmp fast ogt float %5031, 0.000000e+00
  %5033 = call float @dx.op.unary.f32(i32 24, float %5031)  ; Sqrt(value)
  %5034 = fsub fast float 1.000000e+00, %5033
  %5035 = call float @dx.op.unary.f32(i32 23, float %5034)  ; Log(value)
  %5036 = fmul fast float %5035, 5.000000e+00
  %5037 = call float @dx.op.unary.f32(i32 21, float %5036)  ; Exp(value)
  %5038 = fmul fast float %5037, 0x3FEF591A60000000
  %5039 = fadd fast float %5038, 0x3F94DCB540000000
  %5040 = select i1 %5032, float %5039, float 1.000000e+00
  %5041 = fcmp fast oge float %5040, 1.000000e+00
  %5042 = fmul fast float %5025, 2.000000e+00
  %5043 = fadd fast float %5042, %4651
  %5044 = select i1 %5041, float %5043, float %4651
  %5045 = fsub fast float %5044, %4651
  %5046 = fmul fast float %5045, %4423
  %5047 = fadd fast float %5046, %4651
  %5048 = call float @dx.op.dot3.f32(i32 55, float %4649, float %4650, float %5047, float %4649, float %4650, float %5047)  ; Dot3(ax,ay,az,bx,by,bz)
  %5049 = call float @dx.op.unary.f32(i32 25, float %5048)  ; Rsqrt(value)
  %5050 = fmul fast float %5049, %4649
  %5051 = fmul fast float %5049, %4650
  %5052 = fmul fast float %5047, %5049
  br label %5053

; <label>:5053                                    ; preds = %5024, %4983
  %5054 = phi float [ %5050, %5024 ], [ %4649, %4983 ]
  %5055 = phi float [ %5051, %5024 ], [ %4650, %4983 ]
  %5056 = phi float [ %5052, %5024 ], [ %4651, %4983 ]
  %5057 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5058 = extractvalue %dx.types.CBufRet.i32 %5057, 2
  %5059 = add nsw i32 %5058, -1
  %5060 = call i32 @dx.op.binary.i32(i32 37, i32 %5059, i32 0)  ; IMax(a,b)
  %5061 = shl i32 %5020, 2
  %5062 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5061, i32 undef)  ; BufferLoad(srv,index,wot)
  %5063 = extractvalue %dx.types.ResRet.i32 %5062, 0
  %5064 = lshr i32 %5063, 16
  %5065 = and i32 %5063, 65535
  %5066 = lshr i32 %5063, 21
  %5067 = lshr i32 %5065, 5
  %5068 = call i32 @dx.op.binary.i32(i32 40, i32 %5067, i32 %5060)  ; UMin(a,b)
  %5069 = icmp ugt i32 %5066, %5068
  br i1 %5069, label %5451, label %5070

; <label>:5070                                    ; preds = %5053
  br label %5071

; <label>:5071                                    ; preds = %5440, %5070
  %5072 = phi float [ %5441, %5440 ], [ 0.000000e+00, %5070 ]
  %5073 = phi float [ %5442, %5440 ], [ 0.000000e+00, %5070 ]
  %5074 = phi float [ %5443, %5440 ], [ 0.000000e+00, %5070 ]
  %5075 = phi float [ %5444, %5440 ], [ 1.000000e+00, %5070 ]
  %5076 = phi i32 [ %5448, %5440 ], [ %5066, %5070 ]
  %5077 = phi float [ %5445, %5440 ], [ 0.000000e+00, %5070 ]
  %5078 = phi float [ %5446, %5440 ], [ 0.000000e+00, %5070 ]
  %5079 = phi float [ %5447, %5440 ], [ 0.000000e+00, %5070 ]
  %5080 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5081 = extractvalue %dx.types.CBufRet.i32 %5080, 2
  %5082 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5016, i32 %5081, i32 %5076)  ; UMad(a,b,c)
  %5083 = shl i32 %5082, 2
  %5084 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5083, i32 undef)  ; BufferLoad(srv,index,wot)
  %5085 = extractvalue %dx.types.ResRet.i32 %5084, 0
  %5086 = shl i32 %5076, 5
  %5087 = sub nsw i32 %5064, %5086
  %5088 = call i32 @dx.op.binary.i32(i32 37, i32 %5087, i32 0)  ; IMax(a,b)
  %5089 = call i32 @dx.op.binary.i32(i32 38, i32 %5088, i32 31)  ; IMin(a,b)
  %5090 = sub nsw i32 1, %5064
  %5091 = add nsw i32 %5090, %5065
  %5092 = call i32 @dx.op.binary.i32(i32 37, i32 %5091, i32 0)  ; IMax(a,b)
  %5093 = call i32 @dx.op.binary.i32(i32 38, i32 %5092, i32 32)  ; IMin(a,b)
  %5094 = and i32 %5093, 31
  %5095 = shl i32 -1, %5094
  %5096 = xor i32 %5095, -1
  %5097 = and i32 %5089, 31
  %5098 = shl i32 %5096, %5097
  %5099 = icmp eq i32 %5093, 32
  %5100 = select i1 %5099, i32 -1, i32 %5098
  %5101 = and i32 %5100, %5085
  %5102 = icmp eq i32 %5101, 0
  br i1 %5102, label %5440, label %5103

; <label>:5103                                    ; preds = %5071
  br label %5104

; <label>:5104                                    ; preds = %5214, %5103
  %5105 = phi float [ %5215, %5214 ], [ %5072, %5103 ]
  %5106 = phi float [ %5216, %5214 ], [ %5073, %5103 ]
  %5107 = phi float [ %5217, %5214 ], [ %5074, %5103 ]
  %5108 = phi float [ %5218, %5214 ], [ %5075, %5103 ]
  %5109 = phi i32 [ %5117, %5214 ], [ %5101, %5103 ]
  %5110 = phi float [ %5219, %5214 ], [ %5077, %5103 ]
  %5111 = phi float [ %5220, %5214 ], [ %5078, %5103 ]
  %5112 = phi float [ %5221, %5214 ], [ %5079, %5103 ]
  %5113 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5109)  ; FirstbitLo(value)
  %5114 = add i32 %5113, %5086
  %5115 = and i32 %5113, 31
  %5116 = shl i32 1, %5115
  %5117 = xor i32 %5116, %5109
  %5118 = mul i32 %5114, 72
  %5119 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5118, i32 undef)  ; BufferLoad(srv,index,wot)
  %5120 = extractvalue %dx.types.ResRet.f32 %5119, 0
  %5121 = extractvalue %dx.types.ResRet.f32 %5119, 1
  %5122 = extractvalue %dx.types.ResRet.f32 %5119, 2
  %5123 = add i32 %5118, 12
  %5124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5123, i32 undef)  ; BufferLoad(srv,index,wot)
  %5125 = extractvalue %dx.types.ResRet.i32 %5124, 0
  %5126 = add i32 %5118, 16
  %5127 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5126, i32 undef)  ; BufferLoad(srv,index,wot)
  %5128 = extractvalue %dx.types.ResRet.f32 %5127, 0
  %5129 = extractvalue %dx.types.ResRet.f32 %5127, 1
  %5130 = extractvalue %dx.types.ResRet.f32 %5127, 2
  %5131 = add i32 %5118, 28
  %5132 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5131, i32 undef)  ; BufferLoad(srv,index,wot)
  %5133 = extractvalue %dx.types.ResRet.f32 %5132, 0
  %5134 = add i32 %5118, 32
  %5135 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5134, i32 undef)  ; BufferLoad(srv,index,wot)
  %5136 = extractvalue %dx.types.ResRet.f32 %5135, 0
  %5137 = extractvalue %dx.types.ResRet.f32 %5135, 1
  %5138 = extractvalue %dx.types.ResRet.f32 %5135, 2
  %5139 = extractvalue %dx.types.ResRet.f32 %5135, 3
  %5140 = add i32 %5118, 48
  %5141 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5140, i32 undef)  ; BufferLoad(srv,index,wot)
  %5142 = extractvalue %dx.types.ResRet.f32 %5141, 0
  %5143 = extractvalue %dx.types.ResRet.f32 %5141, 1
  %5144 = add i32 %5118, 56
  %5145 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5144, i32 undef)  ; BufferLoad(srv,index,wot)
  %5146 = extractvalue %dx.types.ResRet.f32 %5145, 0
  %5147 = extractvalue %dx.types.ResRet.f32 %5145, 1
  %5148 = add i32 %5118, 64
  %5149 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5148, i32 undef)  ; BufferLoad(srv,index,wot)
  %5150 = extractvalue %dx.types.ResRet.f32 %5149, 0
  %5151 = extractvalue %dx.types.ResRet.f32 %5149, 1
  %5152 = mul i32 %5114, 60
  %5153 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5152, i32 undef)  ; BufferLoad(srv,index,wot)
  %5154 = extractvalue %dx.types.ResRet.f32 %5153, 0
  %5155 = extractvalue %dx.types.ResRet.f32 %5153, 1
  %5156 = extractvalue %dx.types.ResRet.f32 %5153, 2
  %5157 = add i32 %5152, 12
  %5158 = add i32 %5152, 48
  %5159 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5158, i32 undef)  ; BufferLoad(srv,index,wot)
  %5160 = extractvalue %dx.types.ResRet.f32 %5159, 0
  %5161 = extractvalue %dx.types.ResRet.f32 %5159, 1
  %5162 = extractvalue %dx.types.ResRet.f32 %5159, 2
  %5163 = and i32 %5125, 32767
  %5164 = bitcast float %5120 to i32
  %5165 = icmp eq i32 %5164, -1
  %5166 = bitcast float %5121 to i32
  %5167 = and i32 %5125, 32768
  %5168 = icmp ne i32 %5167, 0
  %5169 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5170 = extractvalue %dx.types.CBufRet.f32 %5169, 0
  %5171 = extractvalue %dx.types.CBufRet.f32 %5169, 1
  %5172 = extractvalue %dx.types.CBufRet.f32 %5169, 2
  %5173 = fsub fast float %5154, %5170
  %5174 = fsub fast float %5155, %5171
  %5175 = fsub fast float %5156, %5172
  %5176 = fsub fast float %126, %5173
  %5177 = fsub fast float %127, %5174
  %5178 = fsub fast float %128, %5175
  %5179 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5157, i32 undef)  ; BufferLoad(srv,index,wot)
  %5180 = extractvalue %dx.types.ResRet.f32 %5179, 0
  %5181 = extractvalue %dx.types.ResRet.f32 %5179, 1
  %5182 = extractvalue %dx.types.ResRet.f32 %5179, 2
  %5183 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %5178, float %5180, float %5181, float %5182)  ; Dot3(ax,ay,az,bx,by,bz)
  %5184 = add i32 %5152, 24
  %5185 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5184, i32 undef)  ; BufferLoad(srv,index,wot)
  %5186 = extractvalue %dx.types.ResRet.f32 %5185, 0
  %5187 = extractvalue %dx.types.ResRet.f32 %5185, 1
  %5188 = extractvalue %dx.types.ResRet.f32 %5185, 2
  %5189 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %5178, float %5186, float %5187, float %5188)  ; Dot3(ax,ay,az,bx,by,bz)
  %5190 = add i32 %5152, 36
  %5191 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5190, i32 undef)  ; BufferLoad(srv,index,wot)
  %5192 = extractvalue %dx.types.ResRet.f32 %5191, 0
  %5193 = extractvalue %dx.types.ResRet.f32 %5191, 1
  %5194 = extractvalue %dx.types.ResRet.f32 %5191, 2
  %5195 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %5178, float %5192, float %5193, float %5194)  ; Dot3(ax,ay,az,bx,by,bz)
  %5196 = call float @dx.op.unary.f32(i32 6, float %5183)  ; FAbs(value)
  %5197 = call float @dx.op.unary.f32(i32 6, float %5189)  ; FAbs(value)
  %5198 = call float @dx.op.unary.f32(i32 6, float %5195)  ; FAbs(value)
  %5199 = fsub fast float %5160, %5196
  %5200 = fsub fast float %5161, %5197
  %5201 = fsub fast float %5162, %5198
  %5202 = fmul fast float %5199, %5128
  %5203 = fmul fast float %5200, %5129
  %5204 = fmul fast float %5201, %5130
  %5205 = call float @dx.op.binary.f32(i32 36, float %5203, float %5204)  ; FMin(a,b)
  %5206 = call float @dx.op.binary.f32(i32 36, float %5202, float %5205)  ; FMin(a,b)
  %5207 = call float @dx.op.unary.f32(i32 7, float %5206)  ; Saturate(value)
  %5208 = call float @dx.op.binary.f32(i32 36, float %5108, float %5207)  ; FMin(a,b)
  %5209 = uitofp i1 %5168 to float
  %5210 = fadd fast float %4423, 1.000000e+00
  %5211 = fsub fast float %5210, %5209
  %5212 = fmul fast float %5208, %5211
  %5213 = fcmp fast ogt float %5212, 0.000000e+00
  br i1 %5213, label %5223, label %5214

; <label>:5214                                    ; preds = %5365, %5104
  %5215 = phi float [ %5429, %5365 ], [ %5105, %5104 ]
  %5216 = phi float [ %5430, %5365 ], [ %5106, %5104 ]
  %5217 = phi float [ %5431, %5365 ], [ %5107, %5104 ]
  %5218 = phi float [ %5438, %5365 ], [ %5108, %5104 ]
  %5219 = phi float [ %5435, %5365 ], [ %5110, %5104 ]
  %5220 = phi float [ %5436, %5365 ], [ %5111, %5104 ]
  %5221 = phi float [ %5437, %5365 ], [ %5112, %5104 ]
  %5222 = icmp eq i32 %5109, %5116
  br i1 %5222, label %5439, label %5104

; <label>:5223                                    ; preds = %5104
  br i1 %5165, label %5281, label %5224

; <label>:5224                                    ; preds = %5223
  %5225 = fsub fast float -0.000000e+00, %5180
  %5226 = fsub fast float -0.000000e+00, %5181
  %5227 = fsub fast float -0.000000e+00, %5182
  %5228 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %5225, float %5226, float %5227)  ; Dot3(ax,ay,az,bx,by,bz)
  %5229 = fsub fast float -0.000000e+00, %5228
  %5230 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %5178, float %5225, float %5226, float %5227)  ; Dot3(ax,ay,az,bx,by,bz)
  %5231 = fadd fast float %5230, %5143
  %5232 = fadd fast float %5142, %5230
  %5233 = fsub fast float -0.000000e+00, %5232
  %5234 = fcmp ogt float %5228, -0.000000e+00
  %5235 = select i1 %5234, float %5233, float %5231
  %5236 = call float @dx.op.unary.f32(i32 6, float %5229)  ; FAbs(value)
  %5237 = fdiv fast float 1.000000e+00, %5236
  %5238 = fmul fast float %5235, %5237
  %5239 = call float @dx.op.binary.f32(i32 35, float %5238, float 0.000000e+00)  ; FMax(a,b)
  %5240 = fsub fast float -0.000000e+00, %5186
  %5241 = fsub fast float -0.000000e+00, %5187
  %5242 = fsub fast float -0.000000e+00, %5188
  %5243 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %5240, float %5241, float %5242)  ; Dot3(ax,ay,az,bx,by,bz)
  %5244 = fsub fast float -0.000000e+00, %5243
  %5245 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %5178, float %5240, float %5241, float %5242)  ; Dot3(ax,ay,az,bx,by,bz)
  %5246 = fadd fast float %5245, %5147
  %5247 = fadd fast float %5146, %5245
  %5248 = fsub fast float -0.000000e+00, %5247
  %5249 = fcmp ogt float %5243, -0.000000e+00
  %5250 = select i1 %5249, float %5248, float %5246
  %5251 = call float @dx.op.unary.f32(i32 6, float %5244)  ; FAbs(value)
  %5252 = fdiv fast float 1.000000e+00, %5251
  %5253 = fmul fast float %5250, %5252
  %5254 = call float @dx.op.binary.f32(i32 35, float %5253, float 0.000000e+00)  ; FMax(a,b)
  %5255 = fsub fast float -0.000000e+00, %5192
  %5256 = fsub fast float -0.000000e+00, %5193
  %5257 = fsub fast float -0.000000e+00, %5194
  %5258 = call float @dx.op.dot3.f32(i32 55, float %5054, float %5055, float %5056, float %5255, float %5256, float %5257)  ; Dot3(ax,ay,az,bx,by,bz)
  %5259 = fsub fast float -0.000000e+00, %5258
  %5260 = call float @dx.op.dot3.f32(i32 55, float %5176, float %5177, float %5178, float %5255, float %5256, float %5257)  ; Dot3(ax,ay,az,bx,by,bz)
  %5261 = fadd fast float %5260, %5151
  %5262 = fadd fast float %5150, %5260
  %5263 = fsub fast float -0.000000e+00, %5262
  %5264 = fcmp ogt float %5258, -0.000000e+00
  %5265 = select i1 %5264, float %5263, float %5261
  %5266 = call float @dx.op.unary.f32(i32 6, float %5259)  ; FAbs(value)
  %5267 = fdiv fast float 1.000000e+00, %5266
  %5268 = fmul fast float %5265, %5267
  %5269 = call float @dx.op.binary.f32(i32 35, float %5268, float 0.000000e+00)  ; FMax(a,b)
  %5270 = call float @dx.op.binary.f32(i32 36, float %5254, float %5269)  ; FMin(a,b)
  %5271 = call float @dx.op.binary.f32(i32 36, float %5239, float %5270)  ; FMin(a,b)
  %5272 = fmul fast float %5271, %5054
  %5273 = fmul fast float %5271, %5055
  %5274 = fmul fast float %5271, %5056
  %5275 = fadd fast float %5272, %126
  %5276 = fadd fast float %5273, %127
  %5277 = fadd fast float %5274, %128
  %5278 = fsub fast float %5275, %5120
  %5279 = fsub fast float %5276, %5121
  %5280 = fsub fast float %5277, %5122
  br label %5288

; <label>:5281                                    ; preds = %5223
  %5282 = fmul fast float %5054, 8.096000e+03
  %5283 = fmul fast float %5055, 8.096000e+03
  %5284 = fmul fast float %5056, 8.096000e+03
  %5285 = fadd fast float %5282, %126
  %5286 = fadd fast float %5283, %127
  %5287 = fadd fast float %5284, %128
  br label %5288

; <label>:5288                                    ; preds = %5281, %5224
  %5289 = phi float [ %5054, %5281 ], [ %5278, %5224 ]
  %5290 = phi float [ %5055, %5281 ], [ %5279, %5224 ]
  %5291 = phi float [ %5056, %5281 ], [ %5280, %5224 ]
  %5292 = phi float [ %5285, %5281 ], [ %5275, %5224 ]
  %5293 = phi float [ %5286, %5281 ], [ %5276, %5224 ]
  %5294 = phi float [ %5287, %5281 ], [ %5277, %5224 ]
  %5295 = fcmp fast olt float %5139, 1.000000e+00
  br i1 %5295, label %5296, label %5327, !dx.controlflow.hints !84

; <label>:5296                                    ; preds = %5288
  %5297 = fmul fast float %5291, %5137
  %5298 = fmul fast float %5290, %5138
  %5299 = fsub fast float %5297, %5298
  %5300 = fmul fast float %5289, %5138
  %5301 = fmul fast float %5291, %5136
  %5302 = fsub fast float %5300, %5301
  %5303 = fmul fast float %5290, %5136
  %5304 = fmul fast float %5289, %5137
  %5305 = fsub fast float %5303, %5304
  %5306 = fmul fast float %5299, 2.000000e+00
  %5307 = fmul fast float %5302, 2.000000e+00
  %5308 = fmul fast float %5305, 2.000000e+00
  %5309 = fmul fast float %5306, %5139
  %5310 = fmul fast float %5307, %5139
  %5311 = fmul fast float %5308, %5139
  %5312 = fmul fast float %5308, %5137
  %5313 = fmul fast float %5307, %5138
  %5314 = fmul fast float %5306, %5138
  %5315 = fmul fast float %5308, %5136
  %5316 = fmul fast float %5307, %5136
  %5317 = fmul fast float %5306, %5137
  %5318 = fadd fast float %5312, %5289
  %5319 = fadd fast float %5318, %5309
  %5320 = fsub fast float %5319, %5313
  %5321 = fsub fast float %5290, %5315
  %5322 = fadd fast float %5321, %5310
  %5323 = fadd fast float %5322, %5314
  %5324 = fadd fast float %5311, %5291
  %5325 = fsub fast float %5324, %5317
  %5326 = fadd fast float %5325, %5316
  br label %5327

; <label>:5327                                    ; preds = %5296, %5288
  %5328 = phi float [ %5320, %5296 ], [ %5289, %5288 ]
  %5329 = phi float [ %5323, %5296 ], [ %5290, %5288 ]
  %5330 = phi float [ %5326, %5296 ], [ %5291, %5288 ]
  br i1 %5165, label %5362, label %5331

; <label>:5331                                    ; preds = %5327
  %5332 = fmul fast float %4624, 0x400187C840000000
  %5333 = fadd fast float %5332, 0xC00EFC2120000000
  %5334 = fmul fast float %5333, %4624
  %5335 = fadd fast float %5334, 0x3FE5D16340000000
  %5336 = fmul fast float %5335, %4624
  %5337 = fadd fast float %5336, 1.000000e+00
  %5338 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5339 = fsub fast float %5292, %126
  %5340 = fsub fast float %5293, %127
  %5341 = fsub fast float %5294, %128
  %5342 = fsub fast float %5292, %5120
  %5343 = fsub fast float %5293, %5121
  %5344 = fsub fast float %5294, %5122
  %5345 = call float @dx.op.dot3.f32(i32 55, float %5339, float %5340, float %5341, float %5339, float %5340, float %5341)  ; Dot3(ax,ay,az,bx,by,bz)
  %5346 = call float @dx.op.dot3.f32(i32 55, float %5342, float %5343, float %5344, float %5342, float %5343, float %5344)  ; Dot3(ax,ay,az,bx,by,bz)
  %5347 = fadd fast float %5346, 0x3EE4F8B580000000
  %5348 = fdiv fast float %5345, %5347
  %5349 = bitcast float %5348 to i32
  %5350 = ashr i32 %5349, 1
  %5351 = add nsw i32 %5350, 532487669
  %5352 = bitcast i32 %5351 to float
  %5353 = fmul fast float %5352, %5338
  %5354 = call float @dx.op.unary.f32(i32 7, float %5353)  ; Saturate(value)
  %5355 = fmul fast float %5354, 0x4009981AE0000000
  %5356 = fsub fast float 0x40111BBD80000000, %5355
  %5357 = fmul fast float %5356, %5354
  %5358 = fadd fast float %5357, 0xC0009F6020000000
  %5359 = fmul fast float %5358, %5354
  %5360 = fadd fast float %5359, 1.000000e+00
  %5361 = call float @dx.op.unary.f32(i32 7, float %5360)  ; Saturate(value)
  br label %5365

; <label>:5362                                    ; preds = %5327
  %5363 = icmp ne i32 %5166, -1
  %5364 = zext i1 %5363 to i32
  br label %5365

; <label>:5365                                    ; preds = %5362, %5331
  %5366 = phi float [ %4624, %5362 ], [ %5361, %5331 ]
  %5367 = phi i32 [ %5364, %5362 ], [ 0, %5331 ]
  %5368 = fmul float %5366, 5.000000e+00
  %5369 = fsub float 5.000000e+00, %5368
  %5370 = icmp ne i32 %5367, 0
  %5371 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5372 = extractvalue %dx.types.CBufRet.f32 %5371, 3
  %5373 = fadd fast float %5372, %5369
  %5374 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5373)  ; FMax(a,b)
  %5375 = call float @dx.op.unary.f32(i32 6, float %5328)  ; FAbs(value)
  %5376 = call float @dx.op.unary.f32(i32 6, float %5329)  ; FAbs(value)
  %5377 = fadd fast float %5376, %5375
  %5378 = call float @dx.op.unary.f32(i32 6, float %5330)  ; FAbs(value)
  %5379 = fadd fast float %5377, %5378
  %5380 = fcmp fast oeq float %5379, 0.000000e+00
  %5381 = fdiv fast float 1.000000e+00, %5379
  %5382 = select i1 %5380, float 1.000000e+00, float %5381
  %5383 = fmul fast float %5382, %5328
  %5384 = fmul fast float %5382, %5329
  %5385 = call float @dx.op.unary.f32(i32 6, float %5384)  ; FAbs(value)
  %5386 = call float @dx.op.unary.f32(i32 6, float %5383)  ; FAbs(value)
  %5387 = fsub fast float 1.000000e+00, %5385
  %5388 = fsub fast float 1.000000e+00, %5386
  %5389 = fcmp fast oge float %5383, 0.000000e+00
  %5390 = fcmp fast oge float %5384, 0.000000e+00
  %5391 = select i1 %5389, float 1.000000e+00, float -1.000000e+00
  %5392 = select i1 %5390, float 1.000000e+00, float -1.000000e+00
  %5393 = fcmp fast ole float %5330, 0.000000e+00
  %5394 = fmul fast float %5391, %5387
  %5395 = fmul fast float %5392, %5388
  %5396 = select i1 %5393, float %5394, float %5383
  %5397 = select i1 %5393, float %5395, float %5384
  %5398 = fmul fast float %5396, 5.000000e-01
  %5399 = fmul fast float %5397, 5.000000e-01
  %5400 = fadd fast float %5398, 5.000000e-01
  %5401 = fadd fast float %5399, 5.000000e-01
  %5402 = uitofp i32 %5163 to float
  %5403 = call float @dx.op.binary.f32(i32 36, float %5374, float 3.000000e+00)  ; FMin(a,b)
  %5404 = fadd fast float %5403, 2.000000e+00
  %5405 = call float @dx.op.unary.f32(i32 21, float %5404)  ; Exp(value)
  %5406 = extractvalue %dx.types.CBufRet.f32 %5371, 1
  %5407 = fmul fast float %5406, %5405
  %5408 = fmul fast float %5407, 2.000000e+00
  %5409 = fsub fast float 1.000000e+00, %5408
  %5410 = fmul fast float %5400, %5409
  %5411 = fmul fast float %5401, %5409
  %5412 = fadd fast float %5410, %5407
  %5413 = fadd fast float %5411, %5407
  %5414 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5412, float %5413, float %5402, float undef, i32 0, i32 0, i32 undef, float %5374)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5415 = extractvalue %dx.types.ResRet.f32 %5414, 0
  %5416 = extractvalue %dx.types.ResRet.f32 %5414, 1
  %5417 = extractvalue %dx.types.ResRet.f32 %5414, 2
  %5418 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5419 = extractvalue %dx.types.CBufRet.f32 %5418, 3
  %5420 = fmul fast float %5419, %5133
  %5421 = call float @dx.op.binary.f32(i32 36, float 0.000000e+00, float %5420)  ; FMin(a,b)
  %5422 = select i1 %5370, float %5421, float %5420
  %5423 = fmul fast float %5415, %5212
  %5424 = fmul fast float %5423, %5422
  %5425 = fmul fast float %5416, %5212
  %5426 = fmul fast float %5425, %5422
  %5427 = fmul fast float %5417, %5212
  %5428 = fmul fast float %5427, %5422
  %5429 = fadd fast float %5424, %5105
  %5430 = fadd fast float %5426, %5106
  %5431 = fadd fast float %5428, %5107
  %5432 = fmul fast float %5292, %5212
  %5433 = fmul fast float %5293, %5212
  %5434 = fmul fast float %5294, %5212
  %5435 = fadd fast float %5432, %5110
  %5436 = fadd fast float %5433, %5111
  %5437 = fadd fast float %5434, %5112
  %5438 = fsub fast float %5108, %5212
  br label %5214

; <label>:5439                                    ; preds = %5214
  br label %5440

; <label>:5440                                    ; preds = %5439, %5071
  %5441 = phi float [ %5072, %5071 ], [ %5215, %5439 ]
  %5442 = phi float [ %5073, %5071 ], [ %5216, %5439 ]
  %5443 = phi float [ %5074, %5071 ], [ %5217, %5439 ]
  %5444 = phi float [ %5075, %5071 ], [ %5218, %5439 ]
  %5445 = phi float [ %5077, %5071 ], [ %5219, %5439 ]
  %5446 = phi float [ %5078, %5071 ], [ %5220, %5439 ]
  %5447 = phi float [ %5079, %5071 ], [ %5221, %5439 ]
  %5448 = add i32 %5076, 1
  %5449 = icmp ugt i32 %5448, %5068
  br i1 %5449, label %5450, label %5071, !llvm.loop !85

; <label>:5450                                    ; preds = %5440
  br label %5451

; <label>:5451                                    ; preds = %5450, %5053
  %5452 = phi float [ 0.000000e+00, %5053 ], [ %5441, %5450 ]
  %5453 = phi float [ 0.000000e+00, %5053 ], [ %5442, %5450 ]
  %5454 = phi float [ 0.000000e+00, %5053 ], [ %5443, %5450 ]
  %5455 = phi float [ 0.000000e+00, %5053 ], [ %5445, %5450 ]
  %5456 = phi float [ 0.000000e+00, %5053 ], [ %5446, %5450 ]
  %5457 = phi float [ 0.000000e+00, %5053 ], [ %5447, %5450 ]
  %5458 = call float @dx.op.dot3.f32(i32 55, float %5452, float %5453, float %5454, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5459 = select i1 %168, float 0.000000e+00, float %5452
  %5460 = select i1 %168, float %5458, float %5453
  %5461 = select i1 %168, float 0.000000e+00, float %5454
  %5462 = fcmp fast olt float %4977, 0.000000e+00
  %5463 = call float @dx.op.unary.f32(i32 6, float %4977)  ; FAbs(value)
  %5464 = fmul fast float %5463, %4978
  %5465 = fmul fast float %5463, %4979
  %5466 = fmul fast float %5463, %4980
  %5467 = select i1 %5462, float %4978, float %5464
  %5468 = select i1 %5462, float %4979, float %5465
  %5469 = select i1 %5462, float %4980, float %5466
  %5470 = fsub fast float 1.000000e+00, %5463
  %5471 = call float @dx.op.unary.f32(i32 7, float %5470)  ; Saturate(value)
  %5472 = fmul fast float %5471, %5459
  %5473 = fmul fast float %5471, %5460
  %5474 = fmul fast float %5471, %5461
  %5475 = fadd fast float %5467, %5472
  %5476 = fadd fast float %5468, %5473
  %5477 = fadd fast float %5469, %5474
  %5478 = fcmp fast une float %4735, 0.000000e+00
  br i1 %5478, label %5579, label %5479

; <label>:5479                                    ; preds = %5451
  %5480 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5481 = extractvalue %dx.types.CBufRet.f32 %5480, 0
  %5482 = extractvalue %dx.types.CBufRet.f32 %5480, 1
  %5483 = extractvalue %dx.types.CBufRet.f32 %5480, 2
  %5484 = extractvalue %dx.types.CBufRet.f32 %5480, 3
  %5485 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5486 = extractvalue %dx.types.CBufRet.f32 %5485, 0
  %5487 = extractvalue %dx.types.CBufRet.f32 %5485, 1
  %5488 = extractvalue %dx.types.CBufRet.f32 %5485, 2
  %5489 = extractvalue %dx.types.CBufRet.f32 %5485, 3
  %5490 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5491 = extractvalue %dx.types.CBufRet.f32 %5490, 0
  %5492 = extractvalue %dx.types.CBufRet.f32 %5490, 1
  %5493 = extractvalue %dx.types.CBufRet.f32 %5490, 2
  %5494 = extractvalue %dx.types.CBufRet.f32 %5490, 3
  %5495 = call float @dx.op.dot3.f32(i32 55, float %5491, float %5492, float %5493, float %4649, float %4650, float %4651)  ; Dot3(ax,ay,az,bx,by,bz)
  %5496 = call float @dx.op.dot3.f32(i32 55, float %5455, float %5456, float %5457, float %5491, float %5492, float %5493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5497 = call float @dx.op.dot3.f32(i32 55, float %126, float %127, float %128, float %5491, float %5492, float %5493)  ; Dot3(ax,ay,az,bx,by,bz)
  %5498 = fadd fast float %4624, -1.000000e+00
  %5499 = fsub fast float %5496, %5497
  %5500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5501 = extractvalue %dx.types.CBufRet.f32 %5500, 2
  %5502 = fmul fast float %5501, %5496
  %5503 = fdiv fast float 1.600000e+02, %5502
  %5504 = fmul fast float %5498, %5498
  %5505 = fmul fast float %5504, 0xBFB5B17960000000
  %5506 = fmul fast float %5505, %5499
  %5507 = fmul fast float %5506, %5503
  %5508 = call float @dx.op.unary.f32(i32 21, float %5507)  ; Exp(value)
  %5509 = fmul fast float %5508, 0x3FF04B2960000000
  %5510 = fsub fast float 0x3FF04B2960000000, %5509
  %5511 = call float @dx.op.unary.f32(i32 7, float %5510)  ; Saturate(value)
  %5512 = fmul fast float %5511, 4.000000e+00
  %5513 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5514 = extractvalue %dx.types.CBufRet.f32 %5513, 0
  %5515 = extractvalue %dx.types.CBufRet.f32 %5513, 1
  %5516 = extractvalue %dx.types.CBufRet.f32 %5513, 2
  %5517 = fadd fast float %5514, %5455
  %5518 = fadd fast float %5515, %5456
  %5519 = fadd fast float %5516, %5457
  %5520 = fmul fast float %5517, %5481
  %5521 = call float @dx.op.tertiary.f32(i32 46, float %5518, float %5482, float %5520)  ; FMad(a,b,c)
  %5522 = call float @dx.op.tertiary.f32(i32 46, float %5519, float %5483, float %5521)  ; FMad(a,b,c)
  %5523 = fadd fast float %5522, %5484
  %5524 = fmul fast float %5517, %5486
  %5525 = call float @dx.op.tertiary.f32(i32 46, float %5518, float %5487, float %5524)  ; FMad(a,b,c)
  %5526 = call float @dx.op.tertiary.f32(i32 46, float %5519, float %5488, float %5525)  ; FMad(a,b,c)
  %5527 = fadd fast float %5526, %5489
  %5528 = fmul fast float %5517, %5491
  %5529 = call float @dx.op.tertiary.f32(i32 46, float %5518, float %5492, float %5528)  ; FMad(a,b,c)
  %5530 = call float @dx.op.tertiary.f32(i32 46, float %5519, float %5493, float %5529)  ; FMad(a,b,c)
  %5531 = fadd fast float %5530, %5494
  %5532 = fdiv fast float %5523, %5531
  %5533 = fdiv fast float %5527, %5531
  %5534 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5535 = extractvalue %dx.types.CBufRet.f32 %5534, 0
  %5536 = extractvalue %dx.types.CBufRet.f32 %5534, 1
  %5537 = fmul fast float %5535, %5532
  %5538 = fmul fast float %5536, %5533
  %5539 = extractvalue %dx.types.CBufRet.f32 %5534, 2
  %5540 = extractvalue %dx.types.CBufRet.f32 %5534, 3
  %5541 = fadd fast float %5537, %5539
  %5542 = fadd fast float %5538, %5540
  %5543 = fmul fast float %5495, 8.000000e+00
  %5544 = call float @dx.op.unary.f32(i32 7, float %5543)  ; Saturate(value)
  %5545 = fmul fast float %5541, 2.000000e+00
  %5546 = fmul fast float %5542, 2.000000e+00
  %5547 = fadd fast float %5545, -1.000000e+00
  %5548 = fadd fast float %5546, -1.000000e+00
  %5549 = fmul fast float %5547, %5547
  %5550 = fsub fast float 1.000000e+00, %5549
  %5551 = call float @dx.op.unary.f32(i32 7, float %5550)  ; Saturate(value)
  %5552 = fmul fast float %5548, %5548
  %5553 = fsub fast float 1.000000e+00, %5552
  %5554 = call float @dx.op.unary.f32(i32 7, float %5553)  ; Saturate(value)
  %5555 = fmul fast float %4735, %5551
  %5556 = fmul fast float %5555, %5554
  %5557 = call float @dx.op.unary.f32(i32 7, float %5556)  ; Saturate(value)
  %5558 = fmul fast float %5557, %5544
  %5559 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5541, float %5542, float undef, float undef, i32 0, i32 0, i32 undef, float %5512)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5560 = extractvalue %dx.types.ResRet.f32 %5559, 0
  %5561 = extractvalue %dx.types.ResRet.f32 %5559, 1
  %5562 = extractvalue %dx.types.ResRet.f32 %5559, 2
  %5563 = select i1 %168, float 0.000000e+00, float %5561
  %5564 = select i1 %168, float 0.000000e+00, float %5562
  %5565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5566 = extractvalue %dx.types.CBufRet.f32 %5565, 2
  %5567 = fmul fast float %5566, %5560
  %5568 = fmul fast float %5563, %5566
  %5569 = fmul fast float %5564, %5566
  %5570 = fsub fast float %5567, %5459
  %5571 = fsub fast float %5568, %5460
  %5572 = fsub fast float %5569, %5461
  %5573 = fmul fast float %5570, %5558
  %5574 = fmul fast float %5571, %5558
  %5575 = fmul fast float %5572, %5558
  %5576 = fadd fast float %5573, %5459
  %5577 = fadd fast float %5574, %5460
  %5578 = fadd fast float %5575, %5461
  br label %5579

; <label>:5579                                    ; preds = %5479, %5451, %4976, %4709
  %5580 = phi float [ %4978, %4976 ], [ %5475, %5451 ], [ 0.000000e+00, %4709 ], [ %5576, %5479 ]
  %5581 = phi float [ %4979, %4976 ], [ %5476, %5451 ], [ 0.000000e+00, %4709 ], [ %5577, %5479 ]
  %5582 = phi float [ %4980, %4976 ], [ %5477, %5451 ], [ 0.000000e+00, %4709 ], [ %5578, %5479 ]
  %5583 = fmul fast float %5580, %4710
  %5584 = fmul fast float %5581, %4711
  %5585 = fmul fast float %5582, %4712
  %5586 = fadd fast float %5583, %4006
  %5587 = fmul fast float %5586, %4010
  %5588 = fadd fast float %5584, %4007
  %5589 = fmul fast float %5588, %4010
  %5590 = fadd fast float %5585, %4008
  %5591 = fmul fast float %5590, %4010
  %5592 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5593 = extractvalue %dx.types.CBufRet.f32 %5592, 3
  %5594 = fcmp fast oeq float %5593, 0.000000e+00
  br i1 %5594, label %5829, label %5595

; <label>:5595                                    ; preds = %5579
  %5596 = extractvalue %dx.types.CBufRet.f32 %5592, 0
  %5597 = extractvalue %dx.types.CBufRet.f32 %5592, 1
  %5598 = extractvalue %dx.types.CBufRet.f32 %5592, 2
  %5599 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5600 = extractvalue %dx.types.CBufRet.f32 %5599, 0
  %5601 = extractvalue %dx.types.CBufRet.f32 %5599, 1
  %5602 = extractvalue %dx.types.CBufRet.f32 %5599, 2
  %5603 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5604 = extractvalue %dx.types.CBufRet.f32 %5603, 0
  %5605 = extractvalue %dx.types.CBufRet.f32 %5603, 1
  %5606 = call float @dx.op.dot3.f32(i32 55, float %5600, float %5601, float %5602, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5607 = select i1 %168, float %5604, float %5600
  %5608 = select i1 %168, float %5606, float %5601
  %5609 = select i1 %168, float %5605, float %5602
  %5610 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5611 = extractvalue %dx.types.CBufRet.f32 %5610, 1
  %5612 = fcmp fast une float %5611, 0.000000e+00
  br i1 %5612, label %5613, label %5630

; <label>:5613                                    ; preds = %5595
  %5614 = fptoui float %71 to i32
  %5615 = fptoui float %72 to i32
  %5616 = lshr i32 %5614, 4
  %5617 = lshr i32 %5615, 4
  %5618 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5619 = extractvalue %dx.types.CBufRet.f32 %5618, 0
  %5620 = fptoui float %5619 to i32
  %5621 = add i32 %5620, 15
  %5622 = lshr i32 %5621, 4
  %5623 = mul i32 %5622, %5617
  %5624 = add i32 %5623, %5616
  %5625 = shl i32 %5624, 3
  %5626 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5625, i32 undef)  ; BufferLoad(srv,index,wot)
  %5627 = extractvalue %dx.types.ResRet.i32 %5626, 0
  %5628 = and i32 %5627, -268435456
  %5629 = icmp eq i32 %5628, -1342177280
  br i1 %5629, label %5635, label %5630

; <label>:5630                                    ; preds = %5613, %5595
  %5631 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4629, float %4630, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5632 = extractvalue %dx.types.ResRet.f32 %5631, 0
  %5633 = extractvalue %dx.types.ResRet.f32 %5631, 1
  %5634 = extractvalue %dx.types.ResRet.f32 %5631, 2
  br label %5635

; <label>:5635                                    ; preds = %5630, %5613
  %5636 = phi float [ %5632, %5630 ], [ 0.000000e+00, %5613 ]
  %5637 = phi float [ %5633, %5630 ], [ 0.000000e+00, %5613 ]
  %5638 = phi float [ %5634, %5630 ], [ 0.000000e+00, %5613 ]
  %5639 = call float @dx.op.binary.f32(i32 36, float %5637, float %5638)  ; FMin(a,b)
  %5640 = call float @dx.op.binary.f32(i32 36, float %5636, float %5639)  ; FMin(a,b)
  %5641 = fcmp fast ogt float %5640, 0.000000e+00
  br i1 %5641, label %5642, label %5829, !dx.controlflow.hints !87

; <label>:5642                                    ; preds = %5635
  %5643 = fmul fast float %5636, %5607
  %5644 = fmul fast float %5637, %5608
  %5645 = fmul fast float %5638, %5609
  %5646 = fsub fast float %5596, %4614
  %5647 = fsub fast float %5597, %4613
  %5648 = fsub fast float %5598, %4612
  %5649 = call float @dx.op.dot3.f32(i32 55, float %5646, float %5647, float %5648, float %5646, float %5647, float %5648)  ; Dot3(ax,ay,az,bx,by,bz)
  %5650 = call float @dx.op.unary.f32(i32 25, float %5649)  ; Rsqrt(value)
  %5651 = fmul fast float %5650, %5646
  %5652 = fmul fast float %5650, %5647
  %5653 = fmul fast float %5650, %5648
  %5654 = call float @dx.op.dot3.f32(i32 55, float %5596, float %5597, float %5598, float %4621, float %4622, float %4623)  ; Dot3(ax,ay,az,bx,by,bz)
  %5655 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4610, float %4609, float %5651, float %5652, float %5653)  ; Dot3(ax,ay,az,bx,by,bz)
  %5656 = call float @dx.op.unary.f32(i32 7, float %5654)  ; Saturate(value)
  %5657 = fmul fast float %5656, %5656
  %5658 = fmul fast float %5657, %4668
  %5659 = call float @dx.op.unary.f32(i32 7, float %5658)  ; Saturate(value)
  %5660 = fmul fast float %5659, %5656
  %5661 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4622, float %4623, float %5651, float %5652, float %5653)  ; Dot3(ax,ay,az,bx,by,bz)
  %5662 = fmul fast float %5661, %5661
  %5663 = call float @dx.op.unary.f32(i32 6, float %5654)  ; FAbs(value)
  %5664 = fsub fast float 1.000000e+00, %4661
  %5665 = fmul fast float %4643, %4643
  %5666 = fmul fast float %5665, %5664
  %5667 = fadd fast float %5666, %4661
  %5668 = bitcast float %5667 to i32
  %5669 = ashr i32 %5668, 1
  %5670 = add nsw i32 %5669, 532487669
  %5671 = bitcast i32 %5670 to float
  %5672 = fadd fast float %5671, %4643
  %5673 = fmul fast float %4661, %5662
  %5674 = fsub fast float 1.000000e+00, %5662
  %5675 = fadd fast float %5674, %5673
  %5676 = fmul fast float %5663, %5663
  %5677 = fmul fast float %5676, %5664
  %5678 = fadd fast float %5677, %4661
  %5679 = bitcast float %5678 to i32
  %5680 = ashr i32 %5679, 1
  %5681 = add nsw i32 %5680, 532487669
  %5682 = bitcast i32 %5681 to float
  %5683 = fadd fast float %5682, %5663
  %5684 = fmul fast float %5675, %5675
  %5685 = fmul fast float %5684, %5672
  %5686 = fmul fast float %5685, %5683
  %5687 = fdiv fast float 0x3FF0A00000000000, %5686
  %5688 = fmul fast float %5687, %4661
  %5689 = call float @dx.op.unary.f32(i32 6, float %5655)  ; FAbs(value)
  %5690 = fsub fast float 1.000000e+00, %5689
  %5691 = bitcast float %5690 to i32
  %5692 = sitofp i32 %5691 to float
  %5693 = fmul fast float %5692, 5.000000e+00
  %5694 = fadd fast float %5693, 0xC1EFBF8940000000
  %5695 = fptosi float %5694 to i32
  %5696 = bitcast i32 %5695 to float
  %5697 = fsub fast float 1.000000e+00, %4615
  %5698 = fsub fast float 1.000000e+00, %4616
  %5699 = fsub fast float 1.000000e+00, %4641
  %5700 = fmul fast float %5696, %5697
  %5701 = fmul fast float %5696, %5698
  %5702 = fmul fast float %5696, %5699
  %5703 = fadd fast float %5700, %4615
  %5704 = fadd fast float %5701, %4616
  %5705 = fadd fast float %5702, %4641
  br i1 %4682, label %5706, label %5729

; <label>:5706                                    ; preds = %5642
  %5707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4013, float %5689, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5708 = extractvalue %dx.types.ResRet.f32 %5707, 0
  %5709 = extractvalue %dx.types.ResRet.f32 %5707, 1
  %5710 = extractvalue %dx.types.ResRet.f32 %5707, 2
  %5711 = fadd fast float %5708, -5.000000e-01
  %5712 = fadd fast float %5709, -5.000000e-01
  %5713 = fadd fast float %5710, -5.000000e-01
  %5714 = fmul fast float %4615, 4.000000e+00
  %5715 = fmul fast float %5714, %5697
  %5716 = fmul fast float %5715, %5711
  %5717 = fmul fast float %4616, 4.000000e+00
  %5718 = fmul fast float %5717, %5698
  %5719 = fmul fast float %5718, %5712
  %5720 = fmul fast float %4641, 4.000000e+00
  %5721 = fmul fast float %5720, %5699
  %5722 = fmul fast float %5721, %5713
  %5723 = fadd fast float %5716, %5703
  %5724 = fadd fast float %5719, %5704
  %5725 = fadd fast float %5722, %5705
  %5726 = call float @dx.op.unary.f32(i32 7, float %5723)  ; Saturate(value)
  %5727 = call float @dx.op.unary.f32(i32 7, float %5724)  ; Saturate(value)
  %5728 = call float @dx.op.unary.f32(i32 7, float %5725)  ; Saturate(value)
  br label %5729

; <label>:5729                                    ; preds = %5706, %5642
  %5730 = phi float [ %5726, %5706 ], [ %5703, %5642 ]
  %5731 = phi float [ %5727, %5706 ], [ %5704, %5642 ]
  %5732 = phi float [ %5728, %5706 ], [ %5705, %5642 ]
  %5733 = fmul fast float %5654, 9.843750e-01
  %5734 = fadd fast float %5733, 7.812500e-03
  %5735 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5734, float %4672, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5736 = extractvalue %dx.types.ResRet.f32 %5735, 2
  %5737 = extractvalue %dx.types.ResRet.f32 %5735, 3
  %5738 = fmul fast float %5736, %4615
  %5739 = fmul fast float %5736, %4616
  %5740 = fmul fast float %5736, %4641
  %5741 = fadd fast float %5738, %5737
  %5742 = fadd fast float %5739, %5737
  %5743 = fadd fast float %5740, %5737
  br i1 %4682, label %5744, label %5767

; <label>:5744                                    ; preds = %5729
  %5745 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4013, float %5654, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5746 = extractvalue %dx.types.ResRet.f32 %5745, 0
  %5747 = extractvalue %dx.types.ResRet.f32 %5745, 1
  %5748 = extractvalue %dx.types.ResRet.f32 %5745, 2
  %5749 = fadd fast float %5746, -5.000000e-01
  %5750 = fadd fast float %5747, -5.000000e-01
  %5751 = fadd fast float %5748, -5.000000e-01
  %5752 = fmul fast float %4615, 4.000000e+00
  %5753 = fmul fast float %5752, %5697
  %5754 = fmul fast float %5753, %5749
  %5755 = fmul fast float %4616, 4.000000e+00
  %5756 = fmul fast float %5755, %5698
  %5757 = fmul fast float %5756, %5750
  %5758 = fmul fast float %4641, 4.000000e+00
  %5759 = fmul fast float %5758, %5699
  %5760 = fmul fast float %5759, %5751
  %5761 = fadd fast float %5754, %5741
  %5762 = fadd fast float %5757, %5742
  %5763 = fadd fast float %5760, %5743
  %5764 = call float @dx.op.unary.f32(i32 7, float %5761)  ; Saturate(value)
  %5765 = call float @dx.op.unary.f32(i32 7, float %5762)  ; Saturate(value)
  %5766 = call float @dx.op.unary.f32(i32 7, float %5763)  ; Saturate(value)
  br label %5767

; <label>:5767                                    ; preds = %5744, %5729
  %5768 = phi float [ %5764, %5744 ], [ %5741, %5729 ]
  %5769 = phi float [ %5765, %5744 ], [ %5742, %5729 ]
  %5770 = phi float [ %5766, %5744 ], [ %5743, %5729 ]
  %5771 = call float @dx.op.binary.f32(i32 35, float %5769, float %5770)  ; FMax(a,b)
  %5772 = call float @dx.op.binary.f32(i32 35, float %5768, float %5771)  ; FMax(a,b)
  %5773 = fsub fast float 1.000000e+00, %5772
  %5774 = fmul fast float %5730, %5688
  %5775 = fmul fast float %5731, %5688
  %5776 = fmul fast float %5732, %5688
  %5777 = call float @dx.op.dot3.f32(i32 55, float %4618, float %4619, float %4620, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5778 = fcmp fast ogt float %5777, 0x3E7FF19E20000000
  %5779 = fdiv fast float 1.000000e+00, %5777
  %5780 = select i1 %5778, float %5779, float 0.000000e+00
  %5781 = fmul fast float %5780, %4618
  %5782 = fmul fast float %5780, %4619
  %5783 = fmul fast float %5780, %4620
  %5784 = fadd fast float %5781, -1.000000e+00
  %5785 = fadd fast float %5782, -1.000000e+00
  %5786 = fadd fast float %5783, -1.000000e+00
  %5787 = fmul fast float %5784, 5.000000e-01
  %5788 = fmul fast float %5785, 5.000000e-01
  %5789 = fmul fast float %5786, 5.000000e-01
  %5790 = fadd fast float %5787, 1.000000e+00
  %5791 = fadd fast float %5788, 1.000000e+00
  %5792 = fadd fast float %5789, 1.000000e+00
  %5793 = fsub fast float 1.000000e+00, %5655
  %5794 = bitcast float %5793 to i32
  %5795 = sitofp i32 %5794 to float
  %5796 = fmul fast float %5795, 5.000000e+00
  %5797 = fadd fast float %5796, 0xC1EFBF8940000000
  %5798 = fptosi float %5797 to i32
  %5799 = bitcast i32 %5798 to float
  %5800 = fmul fast float %5799, %4014
  %5801 = fmul fast float %5773, %5800
  %5802 = fmul fast float %5801, %5790
  %5803 = fmul fast float %5801, %5791
  %5804 = fmul fast float %5801, %5792
  %5805 = fadd fast float %5802, %5774
  %5806 = fadd fast float %5803, %5775
  %5807 = fadd fast float %5804, %5776
  %5808 = fmul fast float %5660, %5643
  %5809 = fmul fast float %5808, %5805
  %5810 = fmul fast float %5660, %5644
  %5811 = fmul fast float %5810, %5806
  %5812 = fmul fast float %5660, %5645
  %5813 = fmul fast float %5812, %5807
  %5814 = fmul fast float %5643, %4010
  %5815 = fmul fast float %5814, %5660
  %5816 = fmul fast float %5815, %5773
  %5817 = fmul fast float %5644, %4010
  %5818 = fmul fast float %5817, %5660
  %5819 = fmul fast float %5818, %5773
  %5820 = fmul fast float %5645, %4010
  %5821 = fmul fast float %5820, %5660
  %5822 = fmul fast float %5821, %5773
  %5823 = fadd fast float %5809, %5586
  %5824 = fmul fast float %5823, %4010
  %5825 = fadd fast float %5811, %5588
  %5826 = fmul fast float %5825, %4010
  %5827 = fadd fast float %5813, %5590
  %5828 = fmul fast float %5827, %4010
  br label %5829

; <label>:5829                                    ; preds = %5767, %5635, %5579
  %5830 = phi float [ %5587, %5579 ], [ %5587, %5635 ], [ %5824, %5767 ]
  %5831 = phi float [ %5589, %5579 ], [ %5589, %5635 ], [ %5826, %5767 ]
  %5832 = phi float [ %5591, %5579 ], [ %5591, %5635 ], [ %5828, %5767 ]
  %5833 = phi float [ 0.000000e+00, %5579 ], [ 0.000000e+00, %5635 ], [ %5816, %5767 ]
  %5834 = phi float [ 0.000000e+00, %5579 ], [ 0.000000e+00, %5635 ], [ %5819, %5767 ]
  %5835 = phi float [ 0.000000e+00, %5579 ], [ 0.000000e+00, %5635 ], [ %5822, %5767 ]
  %5836 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.i32 %5836, 0
  %5838 = icmp eq i32 %5837, 0
  br i1 %5838, label %6285, label %5839

; <label>:5839                                    ; preds = %5829
  %5840 = fptoui float %71 to i32
  %5841 = fptoui float %72 to i32
  %5842 = lshr i32 %5840, 4
  %5843 = lshr i32 %5841, 4
  %5844 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5845 = extractvalue %dx.types.CBufRet.i32 %5844, 0
  %5846 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5843, i32 %5845, i32 %5842)  ; UMad(a,b,c)
  %5847 = add nsw i32 %5837, -1
  %5848 = call i32 @dx.op.binary.i32(i32 37, i32 %5847, i32 0)  ; IMax(a,b)
  %5849 = call float @dx.op.binary.f32(i32 35, float %66, float 0.000000e+00)  ; FMax(a,b)
  %5850 = fptoui float %5849 to i32
  %5851 = lshr i32 %5850, 5
  %5852 = call i32 @dx.op.binary.i32(i32 40, i32 %5851, i32 8191)  ; UMin(a,b)
  %5853 = shl i32 %5852, 2
  %5854 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %5853, i32 undef)  ; BufferLoad(srv,index,wot)
  %5855 = extractvalue %dx.types.ResRet.i32 %5854, 0
  %5856 = lshr i32 %5855, 16
  %5857 = and i32 %5855, 65535
  %5858 = lshr i32 %5855, 21
  %5859 = lshr i32 %5857, 5
  %5860 = call i32 @dx.op.binary.i32(i32 40, i32 %5859, i32 %5848)  ; UMin(a,b)
  %5861 = icmp ugt i32 %5858, %5860
  br i1 %5861, label %6285, label %5862

; <label>:5862                                    ; preds = %5839
  br label %5863

; <label>:5863                                    ; preds = %6275, %5862
  %5864 = phi i32 [ %6282, %6275 ], [ %5858, %5862 ]
  %5865 = phi float [ %6276, %6275 ], [ %5830, %5862 ]
  %5866 = phi float [ %6277, %6275 ], [ %5831, %5862 ]
  %5867 = phi float [ %6278, %6275 ], [ %5832, %5862 ]
  %5868 = phi float [ %6279, %6275 ], [ %5833, %5862 ]
  %5869 = phi float [ %6280, %6275 ], [ %5834, %5862 ]
  %5870 = phi float [ %6281, %6275 ], [ %5835, %5862 ]
  %5871 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5872 = extractvalue %dx.types.CBufRet.i32 %5871, 0
  %5873 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5846, i32 %5872, i32 %5864)  ; UMad(a,b,c)
  %5874 = shl i32 %5873, 2
  %5875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %5874, i32 undef)  ; BufferLoad(srv,index,wot)
  %5876 = extractvalue %dx.types.ResRet.i32 %5875, 0
  %5877 = shl i32 %5864, 5
  %5878 = sub nsw i32 %5856, %5877
  %5879 = call i32 @dx.op.binary.i32(i32 37, i32 %5878, i32 0)  ; IMax(a,b)
  %5880 = call i32 @dx.op.binary.i32(i32 38, i32 %5879, i32 31)  ; IMin(a,b)
  %5881 = sub nsw i32 1, %5856
  %5882 = add nsw i32 %5881, %5857
  %5883 = call i32 @dx.op.binary.i32(i32 37, i32 %5882, i32 0)  ; IMax(a,b)
  %5884 = call i32 @dx.op.binary.i32(i32 38, i32 %5883, i32 32)  ; IMin(a,b)
  %5885 = and i32 %5884, 31
  %5886 = shl i32 -1, %5885
  %5887 = xor i32 %5886, -1
  %5888 = and i32 %5880, 31
  %5889 = shl i32 %5887, %5888
  %5890 = icmp eq i32 %5884, 32
  %5891 = select i1 %5890, i32 -1, i32 %5889
  %5892 = and i32 %5891, %5876
  %5893 = icmp eq i32 %5892, 0
  br i1 %5893, label %6275, label %5894

; <label>:5894                                    ; preds = %5863
  br label %5895

; <label>:5895                                    ; preds = %5975, %5894
  %5896 = phi i32 [ %5907, %5975 ], [ %5892, %5894 ]
  %5897 = phi float [ %5976, %5975 ], [ %5865, %5894 ]
  %5898 = phi float [ %5977, %5975 ], [ %5866, %5894 ]
  %5899 = phi float [ %5978, %5975 ], [ %5867, %5894 ]
  %5900 = phi float [ %5979, %5975 ], [ %5868, %5894 ]
  %5901 = phi float [ %5980, %5975 ], [ %5869, %5894 ]
  %5902 = phi float [ %5981, %5975 ], [ %5870, %5894 ]
  %5903 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5896)  ; FirstbitLo(value)
  %5904 = add i32 %5903, %5877
  %5905 = and i32 %5903, 31
  %5906 = shl i32 1, %5905
  %5907 = xor i32 %5906, %5896
  %5908 = mul i32 %5904, 112
  %5909 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5908, i32 undef)  ; BufferLoad(srv,index,wot)
  %5910 = extractvalue %dx.types.ResRet.f32 %5909, 0
  %5911 = extractvalue %dx.types.ResRet.f32 %5909, 1
  %5912 = extractvalue %dx.types.ResRet.f32 %5909, 2
  %5913 = or i32 %5908, 12
  %5914 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5913, i32 undef)  ; BufferLoad(srv,index,wot)
  %5915 = extractvalue %dx.types.ResRet.f32 %5914, 0
  %5916 = add i32 %5908, 44
  %5917 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5916, i32 undef)  ; BufferLoad(srv,index,wot)
  %5918 = extractvalue %dx.types.ResRet.f32 %5917, 0
  %5919 = add i32 %5908, 48
  %5920 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5919, i32 undef)  ; BufferLoad(srv,index,wot)
  %5921 = extractvalue %dx.types.ResRet.f32 %5920, 0
  %5922 = extractvalue %dx.types.ResRet.f32 %5920, 1
  %5923 = extractvalue %dx.types.ResRet.f32 %5920, 2
  %5924 = add i32 %5908, 80
  %5925 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %5924, i32 undef)  ; BufferLoad(srv,index,wot)
  %5926 = extractvalue %dx.types.ResRet.f32 %5925, 1
  %5927 = extractvalue %dx.types.ResRet.f32 %5925, 2
  %5928 = call float @dx.op.dot3.f32(i32 55, float %5910, float %5911, float %5912, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5929 = select i1 %168, float %5926, float %5910
  %5930 = select i1 %168, float %5928, float %5911
  %5931 = select i1 %168, float %5927, float %5912
  %5932 = fsub fast float %5921, %126
  %5933 = fsub fast float %5922, %127
  %5934 = fsub fast float %5923, %128
  %5935 = call float @dx.op.dot3.f32(i32 55, float %5932, float %5933, float %5934, float %5932, float %5933, float %5934)  ; Dot3(ax,ay,az,bx,by,bz)
  %5936 = call float @dx.op.unary.f32(i32 24, float %5935)  ; Sqrt(value)
  %5937 = fdiv fast float 1.000000e+00, %5936
  %5938 = fmul fast float %5937, %5932
  %5939 = fmul fast float %5937, %5933
  %5940 = fmul fast float %5937, %5934
  %5941 = fadd fast float %5936, %5915
  %5942 = fdiv fast float 1.000000e+00, %5941
  %5943 = fmul float %5918, %5942
  %5944 = fmul float %5943, %5943
  %5945 = call float @dx.op.unary.f32(i32 7, float %5944)  ; Saturate(value)
  %5946 = and i32 %5906, %5892
  %5947 = icmp eq i32 %5946, 0
  br i1 %5947, label %5970, label %5948, !dx.controlflow.hints !88

; <label>:5948                                    ; preds = %5895
  %5949 = lshr i32 %5840, 5
  %5950 = lshr i32 %5841, 5
  %5951 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %5949, i32 %5950, i32 %5904, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5952 = extractvalue %dx.types.ResRet.i32 %5951, 0
  %5953 = and i32 %5952, 3
  %5954 = icmp eq i32 %5953, 0
  %5955 = select i1 %5954, float 1.000000e+00, float 0.000000e+00
  %5956 = icmp eq i32 %5953, 3
  br i1 %5956, label %5957, label %5970

; <label>:5957                                    ; preds = %5948
  %5958 = lshr i32 %5952, 10
  %5959 = and i32 %5958, 8160
  %5960 = and i32 %5841, 31
  %5961 = or i32 %5959, %5960
  %5962 = lshr i32 %5952, 1
  %5963 = and i32 %5962, 16352
  %5964 = and i32 %5840, 31
  %5965 = or i32 %5963, %5964
  %5966 = lshr i32 %5952, 23
  %5967 = and i32 %5966, 255
  %5968 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %5965, i32 %5961, i32 %5967, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %5969 = extractvalue %dx.types.ResRet.f32 %5968, 0
  br label %5970

; <label>:5970                                    ; preds = %5957, %5948, %5895
  %5971 = phi float [ %5969, %5957 ], [ %5955, %5948 ], [ 0.000000e+00, %5895 ]
  %5972 = call float @dx.op.binary.f32(i32 36, float %5971, float %5971)  ; FMin(a,b)
  %5973 = call float @dx.op.binary.f32(i32 36, float %5971, float %5972)  ; FMin(a,b)
  %5974 = fcmp fast ogt float %5973, 0.000000e+00
  br i1 %5974, label %5983, label %5975, !dx.controlflow.hints !89

; <label>:5975                                    ; preds = %6215, %5970
  %5976 = phi float [ %5897, %5970 ], [ %6271, %6215 ]
  %5977 = phi float [ %5898, %5970 ], [ %6272, %6215 ]
  %5978 = phi float [ %5899, %5970 ], [ %6273, %6215 ]
  %5979 = phi float [ %5900, %5970 ], [ %6265, %6215 ]
  %5980 = phi float [ %5901, %5970 ], [ %6266, %6215 ]
  %5981 = phi float [ %5902, %5970 ], [ %6267, %6215 ]
  %5982 = icmp eq i32 %5896, %5906
  br i1 %5982, label %6274, label %5895

; <label>:5983                                    ; preds = %5970
  %5984 = fmul fast float %5971, %5929
  %5985 = fmul fast float %5971, %5930
  %5986 = fmul fast float %5971, %5931
  %5987 = fsub fast float %5923, %4414
  %5988 = fcmp fast ogt float %5987, 0.000000e+00
  %5989 = fsub fast float %128, %4414
  %5990 = fcmp fast ogt float %5989, 0.000000e+00
  %5991 = xor i1 %5990, %5988
  %5992 = fsub fast float %4414, %5923
  %5993 = fmul fast float %5992, 2.000000e+00
  %5994 = fadd fast float %5993, %5923
  %5995 = select i1 %5991, float %5923, float %5994
  %5996 = fsub fast float %5995, %128
  %5997 = call float @dx.op.dot3.f32(i32 55, float %5932, float %5933, float %5996, float %5932, float %5933, float %5996)  ; Dot3(ax,ay,az,bx,by,bz)
  %5998 = call float @dx.op.unary.f32(i32 25, float %5997)  ; Rsqrt(value)
  %5999 = fmul fast float %5998, %5932
  %6000 = fmul fast float %5998, %5933
  %6001 = fmul fast float %5998, %5996
  %6002 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4422)  ; Dot3(ax,ay,az,bx,by,bz)
  %6003 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %5999, float %6000, float %6001)  ; Dot3(ax,ay,az,bx,by,bz)
  %6004 = fdiv fast float 1.000000e+00, %6003
  %6005 = fmul fast float %6004, %6002
  %6006 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %5989, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6007 = fcmp fast ogt float %6006, 0.000000e+00
  %6008 = fcmp fast olt float %6006, 0.000000e+00
  %6009 = zext i1 %6007 to i32
  %6010 = zext i1 %6008 to i32
  %6011 = sub nsw i32 %6009, %6010
  %6012 = sitofp i32 %6011 to float
  %6013 = fsub fast float %5995, %4414
  %6014 = call float @dx.op.dot3.f32(i32 55, float %5932, float %5933, float %6013, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6015 = fcmp fast ogt float %6014, 0.000000e+00
  %6016 = fcmp fast olt float %6014, 0.000000e+00
  %6017 = zext i1 %6015 to i32
  %6018 = zext i1 %6016 to i32
  %6019 = sub nsw i32 %6017, %6018
  %6020 = sitofp i32 %6019 to float
  %6021 = fcmp fast une float %6012, %6020
  br i1 %6021, label %6022, label %6032

; <label>:6022                                    ; preds = %5983
  %6023 = fmul fast float %6005, %6001
  %6024 = fmul fast float %6005, %6000
  %6025 = fmul fast float %6005, %5999
  %6026 = fmul fast float %6025, %6025
  %6027 = fmul fast float %6024, %6024
  %6028 = fadd fast float %6026, %6027
  %6029 = fmul fast float %6023, %6023
  %6030 = fadd fast float %6028, %6029
  %6031 = call float @dx.op.unary.f32(i32 24, float %6030)  ; Sqrt(value)
  br label %6044

; <label>:6032                                    ; preds = %5983
  %6033 = icmp slt i32 %6011, 0
  br i1 %6033, label %6034, label %6044

; <label>:6034                                    ; preds = %6032
  %6035 = fsub fast float %126, %5921
  %6036 = fsub fast float %127, %5922
  %6037 = fsub fast float %128, %5995
  %6038 = fmul fast float %6035, %6035
  %6039 = fmul fast float %6036, %6036
  %6040 = fadd fast float %6038, %6039
  %6041 = fmul fast float %6037, %6037
  %6042 = fadd fast float %6040, %6041
  %6043 = call float @dx.op.unary.f32(i32 24, float %6042)  ; Sqrt(value)
  br label %6044

; <label>:6044                                    ; preds = %6034, %6032, %6022
  %6045 = phi float [ %6031, %6022 ], [ %6043, %6034 ], [ 0.000000e+00, %6032 ]
  %6046 = and i1 %5990, %5988
  %6047 = fsub fast float -0.000000e+00, %6045
  %6048 = select i1 %6046, float -0.000000e+00, float %6047
  %6049 = fmul fast float %4415, 0x3FF7154760000000
  %6050 = fmul fast float %6049, %6048
  %6051 = fmul fast float %4416, 0x3FF7154760000000
  %6052 = fmul fast float %6051, %6048
  %6053 = fmul fast float %4417, 0x3FF7154760000000
  %6054 = fmul fast float %6053, %6048
  %6055 = call float @dx.op.unary.f32(i32 21, float %6050)  ; Exp(value)
  %6056 = call float @dx.op.unary.f32(i32 21, float %6052)  ; Exp(value)
  %6057 = call float @dx.op.unary.f32(i32 21, float %6054)  ; Exp(value)
  %6058 = call float @dx.op.unary.f32(i32 7, float %6055)  ; Saturate(value)
  %6059 = call float @dx.op.unary.f32(i32 7, float %6056)  ; Saturate(value)
  %6060 = call float @dx.op.unary.f32(i32 7, float %6057)  ; Saturate(value)
  %6061 = fmul fast float %5984, %6058
  %6062 = fmul fast float %5985, %6059
  %6063 = fmul fast float %5986, %6060
  %6064 = fsub fast float %5938, %4614
  %6065 = fsub fast float %5939, %4613
  %6066 = fsub fast float %5940, %4612
  %6067 = call float @dx.op.dot3.f32(i32 55, float %6064, float %6065, float %6066, float %6064, float %6065, float %6066)  ; Dot3(ax,ay,az,bx,by,bz)
  %6068 = call float @dx.op.unary.f32(i32 25, float %6067)  ; Rsqrt(value)
  %6069 = fmul fast float %6068, %6064
  %6070 = fmul fast float %6068, %6065
  %6071 = fmul fast float %6068, %6066
  %6072 = call float @dx.op.dot3.f32(i32 55, float %5938, float %5939, float %5940, float %4621, float %4622, float %4623)  ; Dot3(ax,ay,az,bx,by,bz)
  %6073 = call float @dx.op.dot3.f32(i32 55, float %4611, float %4610, float %4609, float %6069, float %6070, float %6071)  ; Dot3(ax,ay,az,bx,by,bz)
  %6074 = call float @dx.op.unary.f32(i32 7, float %6072)  ; Saturate(value)
  %6075 = fmul fast float %6074, %5945
  %6076 = fmul fast float %6074, %6074
  %6077 = fmul fast float %6076, %4668
  %6078 = call float @dx.op.unary.f32(i32 7, float %6077)  ; Saturate(value)
  %6079 = fmul fast float %6075, %6078
  %6080 = bitcast float %5935 to i32
  %6081 = ashr i32 %6080, 1
  %6082 = sub nsw i32 1597463007, %6081
  %6083 = bitcast i32 %6082 to float
  %6084 = fmul fast float %6083, %5932
  %6085 = fmul fast float %6083, %5933
  %6086 = fmul fast float %6083, %5934
  %6087 = fsub fast float %6084, %4614
  %6088 = fsub fast float %6085, %4613
  %6089 = fsub fast float %6086, %4612
  %6090 = call float @dx.op.dot3.f32(i32 55, float %6087, float %6088, float %6089, float %6087, float %6088, float %6089)  ; Dot3(ax,ay,az,bx,by,bz)
  %6091 = call float @dx.op.unary.f32(i32 25, float %6090)  ; Rsqrt(value)
  %6092 = fmul fast float %6087, %6091
  %6093 = fmul fast float %6088, %6091
  %6094 = fmul fast float %6089, %6091
  %6095 = call float @dx.op.dot3.f32(i32 55, float %4621, float %4622, float %4623, float %6092, float %6093, float %6094)  ; Dot3(ax,ay,az,bx,by,bz)
  %6096 = fmul fast float %6095, %6095
  %6097 = call float @dx.op.unary.f32(i32 6, float %6072)  ; FAbs(value)
  %6098 = fsub fast float 1.000000e+00, %4661
  %6099 = fmul fast float %4643, %4643
  %6100 = fmul fast float %6099, %6098
  %6101 = fadd fast float %6100, %4661
  %6102 = bitcast float %6101 to i32
  %6103 = ashr i32 %6102, 1
  %6104 = add nsw i32 %6103, 532487669
  %6105 = bitcast i32 %6104 to float
  %6106 = fadd fast float %6105, %4643
  %6107 = fmul fast float %4661, %6096
  %6108 = fsub fast float 1.000000e+00, %6096
  %6109 = fadd fast float %6108, %6107
  %6110 = fmul fast float %6097, %6097
  %6111 = fmul fast float %6110, %6098
  %6112 = fadd fast float %6111, %4661
  %6113 = bitcast float %6112 to i32
  %6114 = ashr i32 %6113, 1
  %6115 = add nsw i32 %6114, 532487669
  %6116 = bitcast i32 %6115 to float
  %6117 = fadd fast float %6116, %6097
  %6118 = fmul fast float %6109, %6109
  %6119 = fmul fast float %6118, %6106
  %6120 = fmul fast float %6119, %6117
  %6121 = fdiv fast float 1.000000e+00, %6120
  %6122 = bitcast float %4661 to i32
  %6123 = sitofp i32 %6122 to float
  %6124 = fmul fast float %6123, 0x3FE7F73180000000
  %6125 = fadd fast float %6124, 0x41AFE27C40000000
  %6126 = fptosi float %6125 to i32
  %6127 = bitcast i32 %6126 to float
  %6128 = fmul fast float %5918, 0x3FD80E9D60000000
  %6129 = fmul fast float %6128, %6083
  %6130 = fadd fast float %6127, %6129
  %6131 = bitcast float %6130 to i32
  %6132 = sub nsw i32 2129859010, %6131
  %6133 = bitcast i32 %6132 to float
  %6134 = fmul fast float %4661, %6121
  %6135 = fmul fast float %6134, %6127
  %6136 = fmul fast float %6135, %6133
  %6137 = call float @dx.op.unary.f32(i32 6, float %6073)  ; FAbs(value)
  %6138 = fsub fast float 1.000000e+00, %6137
  %6139 = bitcast float %6138 to i32
  %6140 = sitofp i32 %6139 to float
  %6141 = fmul fast float %6140, 5.000000e+00
  %6142 = fadd fast float %6141, 0xC1EFBF8940000000
  %6143 = fptosi float %6142 to i32
  %6144 = bitcast i32 %6143 to float
  %6145 = fsub fast float 1.000000e+00, %4615
  %6146 = fsub fast float 1.000000e+00, %4616
  %6147 = fsub fast float 1.000000e+00, %4641
  %6148 = fmul fast float %6144, %6145
  %6149 = fmul fast float %6144, %6146
  %6150 = fmul fast float %6144, %6147
  %6151 = fadd fast float %6148, %4615
  %6152 = fadd fast float %6149, %4616
  %6153 = fadd fast float %6150, %4641
  br i1 %4682, label %6154, label %6177

; <label>:6154                                    ; preds = %6044
  %6155 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4013, float %6137, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6156 = extractvalue %dx.types.ResRet.f32 %6155, 0
  %6157 = extractvalue %dx.types.ResRet.f32 %6155, 1
  %6158 = extractvalue %dx.types.ResRet.f32 %6155, 2
  %6159 = fadd fast float %6156, -5.000000e-01
  %6160 = fadd fast float %6157, -5.000000e-01
  %6161 = fadd fast float %6158, -5.000000e-01
  %6162 = fmul fast float %4615, 4.000000e+00
  %6163 = fmul fast float %6162, %6145
  %6164 = fmul fast float %6163, %6159
  %6165 = fmul fast float %4616, 4.000000e+00
  %6166 = fmul fast float %6165, %6146
  %6167 = fmul fast float %6166, %6160
  %6168 = fmul fast float %4641, 4.000000e+00
  %6169 = fmul fast float %6168, %6147
  %6170 = fmul fast float %6169, %6161
  %6171 = fadd fast float %6164, %6151
  %6172 = fadd fast float %6167, %6152
  %6173 = fadd fast float %6170, %6153
  %6174 = call float @dx.op.unary.f32(i32 7, float %6171)  ; Saturate(value)
  %6175 = call float @dx.op.unary.f32(i32 7, float %6172)  ; Saturate(value)
  %6176 = call float @dx.op.unary.f32(i32 7, float %6173)  ; Saturate(value)
  br label %6177

; <label>:6177                                    ; preds = %6154, %6044
  %6178 = phi float [ %6174, %6154 ], [ %6151, %6044 ]
  %6179 = phi float [ %6175, %6154 ], [ %6152, %6044 ]
  %6180 = phi float [ %6176, %6154 ], [ %6153, %6044 ]
  %6181 = fmul fast float %6072, 9.843750e-01
  %6182 = fadd fast float %6181, 7.812500e-03
  %6183 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6182, float %4672, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6184 = extractvalue %dx.types.ResRet.f32 %6183, 2
  %6185 = extractvalue %dx.types.ResRet.f32 %6183, 3
  %6186 = fmul fast float %6184, %4615
  %6187 = fmul fast float %6184, %4616
  %6188 = fmul fast float %6184, %4641
  %6189 = fadd fast float %6186, %6185
  %6190 = fadd fast float %6187, %6185
  %6191 = fadd fast float %6188, %6185
  br i1 %4682, label %6192, label %6215

; <label>:6192                                    ; preds = %6177
  %6193 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4013, float %6072, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6194 = extractvalue %dx.types.ResRet.f32 %6193, 0
  %6195 = extractvalue %dx.types.ResRet.f32 %6193, 1
  %6196 = extractvalue %dx.types.ResRet.f32 %6193, 2
  %6197 = fadd fast float %6194, -5.000000e-01
  %6198 = fadd fast float %6195, -5.000000e-01
  %6199 = fadd fast float %6196, -5.000000e-01
  %6200 = fmul fast float %4615, 4.000000e+00
  %6201 = fmul fast float %6200, %6145
  %6202 = fmul fast float %6201, %6197
  %6203 = fmul fast float %4616, 4.000000e+00
  %6204 = fmul fast float %6203, %6146
  %6205 = fmul fast float %6204, %6198
  %6206 = fmul fast float %4641, 4.000000e+00
  %6207 = fmul fast float %6206, %6147
  %6208 = fmul fast float %6207, %6199
  %6209 = fadd fast float %6202, %6189
  %6210 = fadd fast float %6205, %6190
  %6211 = fadd fast float %6208, %6191
  %6212 = call float @dx.op.unary.f32(i32 7, float %6209)  ; Saturate(value)
  %6213 = call float @dx.op.unary.f32(i32 7, float %6210)  ; Saturate(value)
  %6214 = call float @dx.op.unary.f32(i32 7, float %6211)  ; Saturate(value)
  br label %6215

; <label>:6215                                    ; preds = %6192, %6177
  %6216 = phi float [ %6212, %6192 ], [ %6189, %6177 ]
  %6217 = phi float [ %6213, %6192 ], [ %6190, %6177 ]
  %6218 = phi float [ %6214, %6192 ], [ %6191, %6177 ]
  %6219 = call float @dx.op.binary.f32(i32 35, float %6217, float %6218)  ; FMax(a,b)
  %6220 = call float @dx.op.binary.f32(i32 35, float %6216, float %6219)  ; FMax(a,b)
  %6221 = fsub fast float 1.000000e+00, %6220
  %6222 = fmul fast float %6178, %6136
  %6223 = fmul fast float %6179, %6136
  %6224 = fmul fast float %6180, %6136
  %6225 = call float @dx.op.dot3.f32(i32 55, float %4618, float %4619, float %4620, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6226 = fcmp fast ogt float %6225, 0x3E7FF19E20000000
  %6227 = fdiv fast float 1.000000e+00, %6225
  %6228 = select i1 %6226, float %6227, float 0.000000e+00
  %6229 = fmul fast float %6228, %4618
  %6230 = fmul fast float %6228, %4619
  %6231 = fmul fast float %6228, %4620
  %6232 = fadd fast float %6229, -1.000000e+00
  %6233 = fadd fast float %6230, -1.000000e+00
  %6234 = fadd fast float %6231, -1.000000e+00
  %6235 = fmul fast float %6232, 5.000000e-01
  %6236 = fmul fast float %6233, 5.000000e-01
  %6237 = fmul fast float %6234, 5.000000e-01
  %6238 = fadd fast float %6235, 1.000000e+00
  %6239 = fadd fast float %6236, 1.000000e+00
  %6240 = fadd fast float %6237, 1.000000e+00
  %6241 = fsub fast float 1.000000e+00, %6073
  %6242 = bitcast float %6241 to i32
  %6243 = sitofp i32 %6242 to float
  %6244 = fmul fast float %6243, 5.000000e+00
  %6245 = fadd fast float %6244, 0xC1EFBF8940000000
  %6246 = fptosi float %6245 to i32
  %6247 = bitcast i32 %6246 to float
  %6248 = fmul fast float %6247, %4014
  %6249 = fmul fast float %6221, %6248
  %6250 = fmul fast float %6249, %6238
  %6251 = fmul fast float %6249, %6239
  %6252 = fmul fast float %6249, %6240
  %6253 = fadd fast float %6250, %6222
  %6254 = fadd fast float %6251, %6223
  %6255 = fadd fast float %6252, %6224
  %6256 = fmul fast float %6061, %4010
  %6257 = fmul fast float %6256, %6079
  %6258 = fmul fast float %6257, %6221
  %6259 = fmul fast float %6062, %4010
  %6260 = fmul fast float %6259, %6079
  %6261 = fmul fast float %6260, %6221
  %6262 = fmul fast float %6063, %4010
  %6263 = fmul fast float %6262, %6079
  %6264 = fmul fast float %6263, %6221
  %6265 = fadd fast float %6258, %5900
  %6266 = fadd fast float %6261, %5901
  %6267 = fadd fast float %6264, %5902
  %6268 = fmul fast float %6257, %6253
  %6269 = fmul fast float %6260, %6254
  %6270 = fmul fast float %6263, %6255
  %6271 = fadd fast float %6268, %5897
  %6272 = fadd fast float %6269, %5898
  %6273 = fadd fast float %6270, %5899
  br label %5975

; <label>:6274                                    ; preds = %5975
  br label %6275

; <label>:6275                                    ; preds = %6274, %5863
  %6276 = phi float [ %5865, %5863 ], [ %5976, %6274 ]
  %6277 = phi float [ %5866, %5863 ], [ %5977, %6274 ]
  %6278 = phi float [ %5867, %5863 ], [ %5978, %6274 ]
  %6279 = phi float [ %5868, %5863 ], [ %5979, %6274 ]
  %6280 = phi float [ %5869, %5863 ], [ %5980, %6274 ]
  %6281 = phi float [ %5870, %5863 ], [ %5981, %6274 ]
  %6282 = add i32 %5864, 1
  %6283 = icmp ugt i32 %6282, %5860
  br i1 %6283, label %6284, label %5863

; <label>:6284                                    ; preds = %6275
  br label %6285

; <label>:6285                                    ; preds = %6284, %5839, %5829
  %6286 = phi float [ %5830, %5829 ], [ %5830, %5839 ], [ %6276, %6284 ]
  %6287 = phi float [ %5831, %5829 ], [ %5831, %5839 ], [ %6277, %6284 ]
  %6288 = phi float [ %5832, %5829 ], [ %5832, %5839 ], [ %6278, %6284 ]
  %6289 = phi float [ %5833, %5829 ], [ %5833, %5839 ], [ %6279, %6284 ]
  %6290 = phi float [ %5834, %5829 ], [ %5834, %5839 ], [ %6280, %6284 ]
  %6291 = phi float [ %5835, %5829 ], [ %5835, %5839 ], [ %6281, %6284 ]
  %6292 = call float @dx.op.unary.f32(i32 24, float %4618)  ; Sqrt(value)
  %6293 = call float @dx.op.unary.f32(i32 24, float %4619)  ; Sqrt(value)
  %6294 = call float @dx.op.unary.f32(i32 24, float %4620)  ; Sqrt(value)
  %6295 = fmul fast float %6292, %6289
  %6296 = fmul fast float %6293, %6290
  %6297 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6298 = extractvalue %dx.types.CBufRet.f32 %6297, 0
  br i1 %168, label %6299, label %6323

; <label>:6299                                    ; preds = %6285
  %6300 = fadd fast float %6291, %4016
  %6301 = fmul fast float %6300, %4017
  %6302 = fsub fast float 1.000000e+00, %4017
  %6303 = call float @dx.op.unary.f32(i32 7, float %6302)  ; Saturate(value)
  %6304 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6305 = extractvalue %dx.types.CBufRet.f32 %6304, 3
  %6306 = fmul fast float %6305, %6303
  %6307 = fsub fast float 1.000000e+00, %4643
  %6308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6309 = extractvalue %dx.types.CBufRet.f32 %6308, 0
  %6310 = fmul fast float %6309, %6307
  %6311 = extractvalue %dx.types.CBufRet.f32 %6308, 2
  %6312 = fmul fast float %6311, %4639
  %6313 = fadd fast float %6296, %6295
  %6314 = fmul fast float %6298, %6313
  %6315 = extractvalue %dx.types.CBufRet.f32 %6304, 1
  %6316 = fadd fast float %6306, %6301
  %6317 = fsub fast float %6316, %6310
  %6318 = fadd fast float %6317, %6312
  %6319 = fsub fast float %6318, %6315
  %6320 = extractvalue %dx.types.CBufRet.f32 %6304, 2
  %6321 = fmul fast float %6319, %6320
  %6322 = call float @dx.op.unary.f32(i32 7, float %6321)  ; Saturate(value)
  br label %6339

; <label>:6323                                    ; preds = %6285
  %6324 = fmul fast float %6294, %6291
  %6325 = fmul fast float %6298, %6295
  %6326 = fmul fast float %6298, %6296
  %6327 = fmul fast float %6324, %6298
  %6328 = add i32 %43, 356
  %6329 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6328, i32 undef)  ; BufferLoad(srv,index,wot)
  %6330 = extractvalue %dx.types.ResRet.i32 %6329, 0
  %6331 = and i32 %6330, 32
  %6332 = icmp eq i32 %6331, 0
  br i1 %6332, label %6339, label %6333

; <label>:6333                                    ; preds = %6323
  %6334 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6335 = extractvalue %dx.types.CBufRet.f32 %6334, 0
  %6336 = fmul fast float %6335, 0x3FE99999A0000000
  %6337 = fadd fast float %6335, %6325
  %6338 = fadd fast float %6336, %6327
  br label %6339

; <label>:6339                                    ; preds = %6333, %6323, %6299
  %6340 = phi float [ %6314, %6299 ], [ %6337, %6333 ], [ %6325, %6323 ]
  %6341 = phi float [ %6322, %6299 ], [ %6326, %6333 ], [ %6326, %6323 ]
  %6342 = phi float [ 1.000000e+00, %6299 ], [ %6338, %6333 ], [ %6327, %6323 ]
  %6343 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6344 = extractvalue %dx.types.CBufRet.f32 %6343, 0
  %6345 = fmul fast float %6344, %6287
  %6346 = fmul fast float %6344, %6288
  %6347 = fadd fast float %6287, %6286
  %6348 = select i1 %168, float %6347, float %6286
  %6349 = fmul float %6348, %6344
  %6350 = select i1 %168, float 0.000000e+00, float %6345
  %6351 = select i1 %168, float 0.000000e+00, float %6346
  %6352 = fmul fast float %6340, %6292
  %6353 = fmul fast float %6341, %6293
  %6354 = fmul fast float %6342, %6294
  %6355 = fadd fast float %6349, %6352
  %6356 = fadd fast float %6350, %6353
  %6357 = fadd fast float %6351, %6354
  %6358 = select i1 %168, float %6341, float %6356
  %6359 = select i1 %168, float %6342, float %6357
  %6360 = call float @dx.op.binary.f32(i32 36, float %6355, float 3.225500e+04)  ; FMin(a,b)
  %6361 = call float @dx.op.binary.f32(i32 36, float %6358, float 3.225500e+04)  ; FMin(a,b)
  %6362 = call float @dx.op.binary.f32(i32 36, float %6359, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6360)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6361)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6362)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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
!57 = !{[42 x i32] [i32 40, i32 4, i32 7, i32 7, i32 0, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7, i32 7, i32 7, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 7, i32 7, i32 0, i32 0, i32 7, i32 7, i32 7, i32 7, i32 7, i32 0, i32 7, i32 7]}
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
!72 = !{i32 5, !"AMBIENT_COLOR", i8 9, i8 0, !62, i8 2, i32 1, i8 3, i32 5, i8 0, null}
!73 = !{i32 6, !"HIGHLIGHT_DIR_VIS", i8 9, i8 0, !62, i8 2, i32 1, i8 4, i32 6, i8 0, null}
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

