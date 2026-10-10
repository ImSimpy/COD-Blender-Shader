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
; shader hash: 6f0b6202d0851472080bf2878126a2f7
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
  %366 = add i32 %43, 348
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
  %380 = add i32 %43, 488
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
  br i1 %433, label %921, label %434

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
  %538 = add i32 %43, 376
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
  %561 = add i32 %43, 456
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
  %742 = add i32 %43, 356
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
  br i1 %754, label %827, label %755

; <label>:755                                     ; preds = %733
  %756 = add i32 %43, 92
  %757 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %756, i32 undef)  ; BufferLoad(srv,index,wot)
  %758 = extractvalue %dx.types.ResRet.i32 %757, 0
  %759 = add i32 %43, 392
  %760 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %759, i32 undef)  ; BufferLoad(srv,index,wot)
  %761 = extractvalue %dx.types.ResRet.i32 %760, 0
  %762 = add i32 %761, 0
  %763 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %762, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %764 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %763, %dx.types.Handle %74, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %765 = extractvalue %dx.types.ResRet.f32 %764, 0
  %766 = extractvalue %dx.types.ResRet.f32 %764, 1
  %767 = extractvalue %dx.types.ResRet.f32 %764, 2
  %768 = extractvalue %dx.types.ResRet.f32 %764, 3
  %769 = and i32 %758, 255
  %770 = uitofp i32 %769 to float
  %771 = lshr i32 %758, 8
  %772 = and i32 %771, 255
  %773 = uitofp i32 %772 to float
  %774 = lshr i32 %758, 16
  %775 = and i32 %774, 255
  %776 = uitofp i32 %775 to float
  %777 = fmul fast float %776, 0x3F70101000000000
  %778 = fmul fast float %765, %770
  %779 = fadd fast float %778, %773
  %780 = fmul fast float %779, 0x3F70101000000000
  %781 = fadd fast float %766, -5.000000e-01
  %782 = fadd fast float %768, -5.000000e-01
  %783 = fmul fast float %781, %777
  %784 = fmul fast float %782, %777
  %785 = fadd fast float %783, 5.000000e-01
  %786 = fadd fast float %784, 5.000000e-01
  %787 = fmul fast float %785, 2.000000e+00
  %788 = fadd fast float %787, -1.000000e+00
  %789 = fmul fast float %786, 2.000000e+00
  %790 = fadd fast float %789, -1.000000e+00
  %791 = fadd fast float %788, %790
  %792 = fmul fast float %791, 5.000000e-01
  %793 = fsub fast float %788, %790
  %794 = fmul fast float %793, 5.000000e-01
  %795 = call float @dx.op.unary.f32(i32 6, float %792)  ; FAbs(value)
  %796 = fsub fast float 1.000000e+00, %795
  %797 = call float @dx.op.unary.f32(i32 6, float %794)  ; FAbs(value)
  %798 = fsub fast float %796, %797
  %799 = call float @dx.op.dot3.f32(i32 55, float %792, float %794, float %798, float %792, float %794, float %798)  ; Dot3(ax,ay,az,bx,by,bz)
  %800 = call float @dx.op.unary.f32(i32 25, float %799)  ; Rsqrt(value)
  %801 = fmul fast float %792, %800
  %802 = fmul fast float %794, %800
  %803 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %804 = extractvalue %dx.types.ResRet.i32 %803, 0
  %805 = and i32 %804, 67108864
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %823, label %807

; <label>:807                                     ; preds = %755
  %808 = add i32 %43, 280
  %809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %808, i32 undef)  ; BufferLoad(srv,index,wot)
  %810 = extractvalue %dx.types.ResRet.i32 %809, 0
  %811 = and i32 %810, 65535
  %812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %811)  ; LegacyF16ToF32(value)
  %813 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %443, i32 undef)  ; BufferLoad(srv,index,wot)
  %814 = extractvalue %dx.types.ResRet.i32 %813, 0
  %815 = and i32 %814, 65535
  %816 = call float @dx.op.legacyF16ToF32(i32 131, i32 %815)  ; LegacyF16ToF32(value)
  %817 = lshr i32 %810, 16
  %818 = call float @dx.op.legacyF16ToF32(i32 131, i32 %817)  ; LegacyF16ToF32(value)
  %819 = fsub fast float %780, %818
  %820 = fmul fast float %819, %812
  %821 = fadd fast float %820, %816
  %822 = call float @dx.op.unary.f32(i32 7, float %821)  ; Saturate(value)
  br label %823

; <label>:823                                     ; preds = %807, %755
  %824 = phi float [ %822, %807 ], [ %780, %755 ]
  %825 = call float @dx.op.dot2.f32(i32 54, float %801, float %802, float %437, float %438)  ; Dot2(ax,ay,bx,by)
  %826 = call float @dx.op.dot2.f32(i32 54, float %801, float %802, float %439, float %440)  ; Dot2(ax,ay,bx,by)
  br label %827

; <label>:827                                     ; preds = %823, %733
  %828 = phi float [ %824, %823 ], [ 0x3FD6666660000000, %733 ]
  %829 = phi float [ %825, %823 ], [ 0.000000e+00, %733 ]
  %830 = phi float [ %826, %823 ], [ 0.000000e+00, %733 ]
  %831 = phi float [ %767, %823 ], [ 1.000000e+00, %733 ]
  %832 = add i32 %43, 160
  %833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %832, i32 undef)  ; BufferLoad(srv,index,wot)
  %834 = extractvalue %dx.types.ResRet.i32 %833, 0
  %835 = lshr i32 %834, 22
  %836 = shl nuw nsw i32 %835, 5
  %837 = call float @dx.op.legacyF16ToF32(i32 131, i32 %836)  ; LegacyF16ToF32(value)
  %838 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %839 = extractvalue %dx.types.ResRet.i32 %838, 0
  %840 = and i32 %839, 64
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %875, label %842

; <label>:842                                     ; preds = %827
  %843 = add i32 %43, 408
  %844 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %843, i32 undef)  ; BufferLoad(srv,index,wot)
  %845 = extractvalue %dx.types.ResRet.i32 %844, 0
  %846 = add i32 %845, 0
  %847 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %846, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %848 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %849 = extractvalue %dx.types.ResRet.i32 %848, 0
  %850 = and i32 %849, 131072
  %851 = icmp eq i32 %850, 0
  %852 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %847, %dx.types.Handle %74, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %853 = extractvalue %dx.types.ResRet.f32 %852, 0
  %854 = extractvalue %dx.types.ResRet.f32 %852, 1
  %855 = extractvalue %dx.types.ResRet.f32 %852, 2
  %856 = fmul fast float %853, %203
  %857 = fmul fast float %854, %206
  %858 = fmul fast float %855, %209
  br i1 %851, label %865, label %859

; <label>:859                                     ; preds = %842
  %860 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %861 = extractvalue %dx.types.CBufRet.f32 %860, 0
  %862 = fmul fast float %861, %856
  %863 = fmul fast float %861, %857
  %864 = fmul fast float %861, %858
  br label %865

; <label>:865                                     ; preds = %859, %842
  %866 = phi float [ %862, %859 ], [ %856, %842 ]
  %867 = phi float [ %863, %859 ], [ %857, %842 ]
  %868 = phi float [ %864, %859 ], [ %858, %842 ]
  %869 = fmul fast float %866, %837
  %870 = select i1 %183, float %869, float %866
  %871 = call float @dx.op.dot3.f32(i32 55, float %870, float %867, float %868, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %872 = select i1 %183, float 0.000000e+00, float %866
  %873 = select i1 %183, float %871, float %867
  %874 = select i1 %183, float 0.000000e+00, float %868
  br label %875

; <label>:875                                     ; preds = %865, %827
  %876 = phi float [ %872, %865 ], [ 0.000000e+00, %827 ]
  %877 = phi float [ %873, %865 ], [ 0.000000e+00, %827 ]
  %878 = phi float [ %874, %865 ], [ 0.000000e+00, %827 ]
  %879 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %880 = extractvalue %dx.types.ResRet.i32 %879, 0
  %881 = and i32 %880, 26624
  %882 = icmp eq i32 %881, 0
  br i1 %882, label %906, label %883

; <label>:883                                     ; preds = %875
  %884 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %426, i32 undef)  ; BufferLoad(srv,index,wot)
  %885 = extractvalue %dx.types.ResRet.i32 %884, 0
  %886 = and i32 %885, 16384
  %887 = icmp eq i32 %886, 0
  br i1 %887, label %906, label %888

; <label>:888                                     ; preds = %883
  %889 = and i32 %885, 1048576
  %890 = icmp ne i32 %889, 0
  %891 = add i32 %43, 472
  %892 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %891, i32 undef)  ; BufferLoad(srv,index,wot)
  %893 = extractvalue %dx.types.ResRet.i32 %892, 0
  %894 = add i32 %893, 0
  %895 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %894, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %896 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %895, %dx.types.Handle %75, float %533, float %534, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %897 = extractvalue %dx.types.ResRet.f32 %896, 0
  %898 = add i32 %43, 96
  %899 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %898, i32 undef)  ; BufferLoad(srv,index,wot)
  %900 = extractvalue %dx.types.ResRet.i32 %899, 0
  %901 = lshr i32 %900, 24
  %902 = uitofp i32 %901 to float
  %903 = fmul fast float %897, 0x3F70101020000000
  %904 = select i1 %890, float 0x3F70101020000000, float %903
  %905 = fmul fast float %904, %902
  br label %906

; <label>:906                                     ; preds = %888, %883, %875
  %907 = phi float [ %905, %888 ], [ 0.000000e+00, %883 ], [ 0.000000e+00, %875 ]
  %908 = add i32 %43, 96
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = and i32 %910, 255
  %912 = uitofp i32 %911 to float
  %913 = lshr i32 %910, 8
  %914 = and i32 %913, 255
  %915 = uitofp i32 %914 to float
  %916 = call float @dx.op.dot3.f32(i32 55, float %748, float %749, float %750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %917 = fmul fast float %915, %916
  %918 = fadd fast float %917, %912
  %919 = fmul fast float %918, 0x3F70101020000000
  %920 = call float @dx.op.unary.f32(i32 7, float %919)  ; Saturate(value)
  br label %921

; <label>:921                                     ; preds = %906, %419
  %922 = phi float [ 0.000000e+00, %419 ], [ %829, %906 ]
  %923 = phi float [ 0.000000e+00, %419 ], [ %830, %906 ]
  %924 = phi float [ 0.000000e+00, %419 ], [ %748, %906 ]
  %925 = phi float [ 0.000000e+00, %419 ], [ %749, %906 ]
  %926 = phi float [ 0.000000e+00, %419 ], [ %750, %906 ]
  %927 = phi float [ 0.000000e+00, %419 ], [ %876, %906 ]
  %928 = phi float [ 0.000000e+00, %419 ], [ %877, %906 ]
  %929 = phi float [ 0.000000e+00, %419 ], [ %878, %906 ]
  %930 = phi float [ 0.000000e+00, %419 ], [ %734, %906 ]
  %931 = phi float [ 0.000000e+00, %419 ], [ 1.000000e+00, %906 ]
  %932 = phi float [ 0.000000e+00, %419 ], [ %828, %906 ]
  %933 = phi float [ 0.000000e+00, %419 ], [ %831, %906 ]
  %934 = phi float [ 0.000000e+00, %419 ], [ %907, %906 ]
  %935 = phi float [ 0.000000e+00, %419 ], [ %920, %906 ]
  br i1 %370, label %1816, label %936

; <label>:936                                     ; preds = %921
  %937 = icmp ult i32 %425, 2
  %938 = add i32 %43, 40
  %939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %940 = extractvalue %dx.types.ResRet.i32 %939, 0
  %941 = add i32 %43, 44
  %942 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %941, i32 undef)  ; BufferLoad(srv,index,wot)
  %943 = extractvalue %dx.types.ResRet.i32 %942, 0
  %944 = or i32 %943, %940
  %945 = icmp eq i32 %944, 0
  br i1 %945, label %1816, label %946

; <label>:946                                     ; preds = %936
  %947 = and i32 %940, 262144
  %948 = icmp ne i32 %947, 0
  %949 = select i1 %948, float %46, float 1.000000e+00
  %950 = select i1 %948, float %47, float 0.000000e+00
  %951 = select i1 %948, float %48, float 0.000000e+00
  %952 = select i1 %948, float %49, float 1.000000e+00
  %953 = select i1 %948, float %50, float %66
  %954 = select i1 %948, float %51, float %67
  %955 = add i32 %43, 300
  %956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %957 = extractvalue %dx.types.ResRet.i32 %956, 0
  %958 = lshr i32 %957, 16
  %959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %958)  ; LegacyF16ToF32(value)
  %960 = fmul fast float %959, 0x3F50624DE0000000
  %961 = add i32 %43, 104
  %962 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %963 = extractvalue %dx.types.ResRet.i32 %962, 0
  %964 = lshr i32 %963, 16
  %965 = and i32 %964, 255
  %966 = lshr i32 %963, 24
  %967 = add i32 %43, 308
  %968 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %967, i32 undef)  ; BufferLoad(srv,index,wot)
  %969 = extractvalue %dx.types.ResRet.i32 %968, 0
  %970 = and i32 %969, 65535
  %971 = call float @dx.op.legacyF16ToF32(i32 131, i32 %970)  ; LegacyF16ToF32(value)
  %972 = lshr i32 %969, 16
  %973 = call float @dx.op.legacyF16ToF32(i32 131, i32 %972)  ; LegacyF16ToF32(value)
  %974 = add i32 %43, 48
  %975 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %974, i32 undef)  ; BufferLoad(srv,index,wot)
  %976 = extractvalue %dx.types.ResRet.i32 %975, 0
  %977 = lshr i32 %976, 22
  %978 = shl nuw nsw i32 %977, 5
  %979 = call float @dx.op.legacyF16ToF32(i32 131, i32 %978)  ; LegacyF16ToF32(value)
  %980 = shl i32 %976, 4
  %981 = and i32 %980, 32752
  %982 = call float @dx.op.legacyF16ToF32(i32 131, i32 %981)  ; LegacyF16ToF32(value)
  %983 = lshr i32 %976, 7
  %984 = and i32 %983, 32752
  %985 = call float @dx.op.legacyF16ToF32(i32 131, i32 %984)  ; LegacyF16ToF32(value)
  %986 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %987 = extractvalue %dx.types.CBufRet.f32 %986, 3
  %988 = fmul fast float %987, 1.000000e+03
  %989 = fmul fast float %280, %988
  %990 = call float @dx.op.unary.f32(i32 22, float %989)  ; Frc(value)
  %991 = fadd fast float %990, %270
  %992 = fmul fast float %281, %988
  %993 = call float @dx.op.unary.f32(i32 22, float %992)  ; Frc(value)
  %994 = fadd fast float %993, %272
  %995 = fmul fast float %960, %988
  %996 = call float @dx.op.unary.f32(i32 22, float %995)  ; Frc(value)
  %997 = fmul fast float %996, 0x401921FB60000000
  %998 = fadd fast float %997, %979
  %999 = call float @dx.op.unary.f32(i32 13, float %998)  ; Sin(value)
  %1000 = call float @dx.op.unary.f32(i32 12, float %998)  ; Cos(value)
  %1001 = fsub fast float -0.000000e+00, %999
  %1002 = fadd fast float %953, -5.000000e-01
  %1003 = fadd fast float %954, -5.000000e-01
  %1004 = fmul fast float %971, %1002
  %1005 = fmul fast float %973, %1003
  %1006 = fadd fast float %1004, 5.000000e-01
  %1007 = fadd fast float %1005, 5.000000e-01
  %1008 = fmul fast float %982, %1006
  %1009 = fmul fast float %985, %1007
  %1010 = fmul fast float %1000, %1008
  %1011 = call float @dx.op.tertiary.f32(i32 46, float %1001, float %1009, float %1010)  ; FMad(a,b,c)
  %1012 = fmul fast float %999, %1008
  %1013 = call float @dx.op.tertiary.f32(i32 46, float %1000, float %1009, float %1012)  ; FMad(a,b,c)
  %1014 = fadd fast float %991, %1011
  %1015 = fadd fast float %994, %1013
  %1016 = icmp ugt i32 %965, 1
  %1017 = icmp ugt i32 %963, 33554431
  %1018 = or i1 %1017, %1016
  br i1 %1018, label %1019, label %1044

; <label>:1019                                    ; preds = %946
  %1020 = add i32 %43, 244
  %1021 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1020, i32 undef)  ; BufferLoad(srv,index,wot)
  %1022 = extractvalue %dx.types.ResRet.i32 %1021, 0
  %1023 = lshr i32 %1022, 16
  %1024 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1023)  ; LegacyF16ToF32(value)
  %1025 = fmul fast float %987, %1024
  %1026 = call float @dx.op.unary.f32(i32 22, float %1025)  ; Frc(value)
  %1027 = mul nuw nsw i32 %965, %966
  %1028 = uitofp i32 %1027 to float
  %1029 = fmul fast float %1026, %1028
  %1030 = call float @dx.op.unary.f32(i32 27, float %1029)  ; Round_ni(value)
  %1031 = fptoui float %1030 to i32
  %1032 = urem i32 %1031, %965
  %1033 = udiv i32 %1031, %966
  %1034 = call float @dx.op.unary.f32(i32 22, float %1014)  ; Frc(value)
  %1035 = call float @dx.op.unary.f32(i32 22, float %1015)  ; Frc(value)
  %1036 = uitofp i32 %1032 to float
  %1037 = uitofp i32 %1033 to float
  %1038 = fadd fast float %1034, %1036
  %1039 = fadd fast float %1035, %1037
  %1040 = uitofp i32 %965 to float
  %1041 = uitofp i32 %966 to float
  %1042 = fdiv fast float %1038, %1040
  %1043 = fdiv fast float %1039, %1041
  br label %1044

; <label>:1044                                    ; preds = %1019, %946
  %1045 = phi float [ %1042, %1019 ], [ %1014, %946 ]
  %1046 = phi float [ %1043, %1019 ], [ %1015, %946 ]
  %1047 = and i32 %940, 16777216
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %1158, label %1049

; <label>:1049                                    ; preds = %1044
  %1050 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1051 = extractvalue %dx.types.CBufRet.f32 %1050, 0
  %1052 = extractvalue %dx.types.CBufRet.f32 %1050, 1
  %1053 = extractvalue %dx.types.CBufRet.f32 %1050, 2
  %1054 = fadd fast float %1051, %141
  %1055 = fadd fast float %1052, %142
  %1056 = fadd fast float %1053, %143
  %1057 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1058 = extractvalue %dx.types.CBufRet.f32 %1057, 0
  %1059 = call float @dx.op.unary.f32(i32 7, float %1058)  ; Saturate(value)
  %1060 = icmp eq i32 %44, 65535
  br i1 %1060, label %1155, label %1061

; <label>:1061                                    ; preds = %1049
  %1062 = lshr i32 %44, 1
  %1063 = shl i32 %1062, 2
  %1064 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1063, i32 undef)  ; BufferLoad(srv,index,wot)
  %1065 = extractvalue %dx.types.ResRet.i32 %1064, 0
  %1066 = and i32 %44, 1
  %1067 = icmp ne i32 %1066, 0
  %1068 = lshr i32 %1065, 16
  %1069 = and i32 %1065, 65535
  %1070 = select i1 %1067, i32 %1068, i32 %1069
  %1071 = icmp eq i32 %1070, 65535
  br i1 %1071, label %1151, label %1072

; <label>:1072                                    ; preds = %1061
  %1073 = mul nuw nsw i32 %1070, 40
  %1074 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1073, i32 undef)  ; BufferLoad(srv,index,wot)
  %1075 = extractvalue %dx.types.ResRet.f32 %1074, 0
  %1076 = extractvalue %dx.types.ResRet.f32 %1074, 1
  %1077 = extractvalue %dx.types.ResRet.f32 %1074, 2
  %1078 = add nuw nsw i32 %1073, 12
  %1079 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1078, i32 undef)  ; BufferLoad(srv,index,wot)
  %1080 = extractvalue %dx.types.ResRet.f32 %1079, 0
  %1081 = extractvalue %dx.types.ResRet.f32 %1079, 1
  %1082 = extractvalue %dx.types.ResRet.f32 %1079, 2
  %1083 = add nuw nsw i32 %1073, 24
  %1084 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1083, i32 undef)  ; BufferLoad(srv,index,wot)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = add nuw nsw i32 %1073, 36
  %1089 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1088, i32 undef)  ; BufferLoad(srv,index,wot)
  %1090 = extractvalue %dx.types.ResRet.f32 %1089, 0
  %1091 = fsub fast float %1054, %1075
  %1092 = fsub fast float %1055, %1076
  %1093 = fsub fast float %1056, %1077
  %1094 = fmul fast float %1090, %1091
  %1095 = fmul fast float %1090, %1092
  %1096 = fmul fast float %1090, %1093
  %1097 = call float @dx.op.unary.f32(i32 27, float %1094)  ; Round_ni(value)
  %1098 = call float @dx.op.unary.f32(i32 27, float %1095)  ; Round_ni(value)
  %1099 = call float @dx.op.unary.f32(i32 27, float %1096)  ; Round_ni(value)
  %1100 = fadd fast float %1097, 5.000000e-01
  %1101 = fadd fast float %1098, 5.000000e-01
  %1102 = fadd fast float %1099, 5.000000e-01
  %1103 = fmul fast float %1100, %1080
  %1104 = fmul fast float %1101, %1081
  %1105 = fmul fast float %1102, %1082
  %1106 = shl i32 %44, 2
  %1107 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1108 = extractvalue %dx.types.ResRet.i32 %1107, 0
  %1109 = add i32 %1108, 0
  %1110 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1109, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1111 = call float @dx.op.unary.f32(i32 22, float %1103)  ; Frc(value)
  %1112 = call float @dx.op.unary.f32(i32 22, float %1104)  ; Frc(value)
  %1113 = call float @dx.op.unary.f32(i32 22, float %1105)  ; Frc(value)
  %1114 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1110, %dx.types.Handle %40, float %1111, float %1112, float %1113, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1115 = extractvalue %dx.types.ResRet.f32 %1114, 0
  %1116 = extractvalue %dx.types.ResRet.f32 %1114, 1
  %1117 = extractvalue %dx.types.ResRet.f32 %1114, 2
  %1118 = fmul fast float %1115, 1.023000e+03
  %1119 = fmul fast float %1116, 1.023000e+03
  %1120 = fmul fast float %1117, 1.023000e+03
  %1121 = fadd fast float %1118, 5.000000e-01
  %1122 = fadd fast float %1119, 5.000000e-01
  %1123 = fadd fast float %1120, 5.000000e-01
  %1124 = call float @dx.op.unary.f32(i32 27, float %1121)  ; Round_ni(value)
  %1125 = call float @dx.op.unary.f32(i32 27, float %1122)  ; Round_ni(value)
  %1126 = call float @dx.op.unary.f32(i32 27, float %1123)  ; Round_ni(value)
  %1127 = fsub fast float %1094, %1097
  %1128 = fsub fast float %1095, %1098
  %1129 = fsub fast float %1096, %1099
  %1130 = fmul fast float %1127, 7.500000e-01
  %1131 = fmul fast float %1128, 7.500000e-01
  %1132 = fmul fast float %1129, 7.500000e-01
  %1133 = fadd fast float %1097, 1.250000e-01
  %1134 = fadd fast float %1133, %1130
  %1135 = fadd fast float %1134, %1124
  %1136 = fadd fast float %1098, 1.250000e-01
  %1137 = fadd fast float %1136, %1131
  %1138 = fadd fast float %1137, %1125
  %1139 = fadd fast float %1099, 1.250000e-01
  %1140 = fadd fast float %1139, %1132
  %1141 = fadd fast float %1140, %1126
  %1142 = fmul fast float %1135, %1085
  %1143 = fmul fast float %1138, %1086
  %1144 = fmul fast float %1141, %1087
  %1145 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1106, i32 undef)  ; BufferLoad(srv,index,wot)
  %1146 = extractvalue %dx.types.ResRet.i32 %1145, 0
  %1147 = add i32 %1146, 0
  %1148 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1147, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1149 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1148, %dx.types.Handle %38, float %1142, float %1143, float %1144, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1150 = extractvalue %dx.types.ResRet.f32 %1149, 0
  br label %1151

; <label>:1151                                    ; preds = %1072, %1061
  %1152 = phi float [ %1150, %1072 ], [ -1.000000e+00, %1061 ]
  %1153 = fadd fast float %1152, %1059
  %1154 = call float @dx.op.unary.f32(i32 7, float %1153)  ; Saturate(value)
  br label %1155

; <label>:1155                                    ; preds = %1151, %1049
  %1156 = phi float [ %1154, %1151 ], [ %1059, %1049 ]
  %1157 = fmul fast float %1156, %422
  br label %1158

; <label>:1158                                    ; preds = %1155, %1044
  %1159 = phi float [ %1157, %1155 ], [ %422, %1044 ]
  %1160 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1161 = extractvalue %dx.types.ResRet.i32 %1160, 0
  %1162 = and i32 %1161, 256
  %1163 = icmp eq i32 %1162, 0
  br i1 %1163, label %1210, label %1164

; <label>:1164                                    ; preds = %1158
  %1165 = add i32 %43, 444
  %1166 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1165, i32 undef)  ; BufferLoad(srv,index,wot)
  %1167 = extractvalue %dx.types.ResRet.i32 %1166, 0
  %1168 = add i32 %1167, 0
  %1169 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1168, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1170 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1169, %dx.types.Handle %75, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1171 = extractvalue %dx.types.ResRet.f32 %1170, 0
  %1172 = add i32 %43, 116
  %1173 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1172, i32 undef)  ; BufferLoad(srv,index,wot)
  %1174 = extractvalue %dx.types.ResRet.i32 %1173, 0
  %1175 = shl i32 %1174, 4
  %1176 = and i32 %1175, 32752
  %1177 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1176)  ; LegacyF16ToF32(value)
  %1178 = lshr i32 %1174, 7
  %1179 = and i32 %1178, 32752
  %1180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1179)  ; LegacyF16ToF32(value)
  %1181 = fsub fast float 1.000000e+00, %1159
  %1182 = call float @dx.op.binary.f32(i32 35, float %1181, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1183 = bitcast float %1159 to i32
  %1184 = sitofp i32 %1183 to float
  %1185 = fadd fast float %1184, 0xC1CFBF8940000000
  %1186 = fmul fast float %1180, %1185
  %1187 = fadd fast float %1186, 0x41CFBF8940000000
  %1188 = fptosi float %1187 to i32
  %1189 = bitcast i32 %1188 to float
  %1190 = bitcast float %1182 to i32
  %1191 = sitofp i32 %1190 to float
  %1192 = fadd fast float %1191, 0xC1CFBF8940000000
  %1193 = fmul fast float %1192, %1180
  %1194 = fadd fast float %1193, 0x41CFBF8940000000
  %1195 = fptosi float %1194 to i32
  %1196 = bitcast i32 %1195 to float
  %1197 = fmul fast float %1189, %1177
  %1198 = fmul fast float %1196, %1177
  %1199 = fsub fast float %1182, %1197
  %1200 = fadd fast float %1198, %1182
  %1201 = call float @dx.op.unary.f32(i32 7, float %1199)  ; Saturate(value)
  %1202 = call float @dx.op.unary.f32(i32 7, float %1200)  ; Saturate(value)
  %1203 = fsub fast float %1171, %1201
  %1204 = fsub fast float %1202, %1201
  %1205 = bitcast float %1204 to i32
  %1206 = sub nsw i32 2129859010, %1205
  %1207 = bitcast i32 %1206 to float
  %1208 = fmul fast float %1207, %1203
  %1209 = call float @dx.op.unary.f32(i32 7, float %1208)  ; Saturate(value)
  br label %1210

; <label>:1210                                    ; preds = %1164, %1158
  %1211 = phi float [ %1209, %1164 ], [ %1159, %1158 ]
  %1212 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1213 = extractvalue %dx.types.ResRet.i32 %1212, 0
  %1214 = and i32 %1213, 128
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1232, label %1216

; <label>:1216                                    ; preds = %1210
  %1217 = add i32 %43, 428
  %1218 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1217, i32 undef)  ; BufferLoad(srv,index,wot)
  %1219 = extractvalue %dx.types.ResRet.i32 %1218, 0
  %1220 = add i32 %1219, 0
  %1221 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1220, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1222 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1221, %dx.types.Handle %75, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1223 = extractvalue %dx.types.ResRet.f32 %1222, 0
  %1224 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1225 = extractvalue %dx.types.ResRet.i32 %1224, 0
  %1226 = and i32 %1225, 524288
  %1227 = icmp ne i32 %1226, 0
  %1228 = fcmp fast ogt float %1223, 0x3FE0101020000000
  %1229 = select i1 %1228, float 1.000000e+00, float 0.000000e+00
  %1230 = select i1 %1227, float %1229, float %1223
  %1231 = fmul fast float %1230, %1211
  br label %1232

; <label>:1232                                    ; preds = %1216, %1210
  %1233 = phi float [ %1231, %1216 ], [ %1211, %1210 ]
  %1234 = fcmp fast ult float %1233, 0x3F70101020000000
  br i1 %1234, label %1816, label %1235

; <label>:1235                                    ; preds = %1232
  %1236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1237 = extractvalue %dx.types.ResRet.i32 %1236, 0
  %1238 = and i32 %1237, 16
  %1239 = icmp eq i32 %1238, 0
  br i1 %1239, label %1438, label %1240

; <label>:1240                                    ; preds = %1235
  %1241 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %961, i32 undef)  ; BufferLoad(srv,index,wot)
  %1242 = extractvalue %dx.types.ResRet.i32 %1241, 0
  %1243 = add i32 %43, 380
  %1244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1243, i32 undef)  ; BufferLoad(srv,index,wot)
  %1245 = extractvalue %dx.types.ResRet.i32 %1244, 0
  %1246 = add i32 %1245, 0
  %1247 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1246, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1248 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1247, %dx.types.Handle %74, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1249 = extractvalue %dx.types.ResRet.f32 %1248, 0
  %1250 = extractvalue %dx.types.ResRet.f32 %1248, 1
  %1251 = extractvalue %dx.types.ResRet.f32 %1248, 2
  %1252 = extractvalue %dx.types.ResRet.f32 %1248, 3
  %1253 = and i32 %1242, 255
  %1254 = uitofp i32 %1253 to float
  %1255 = lshr i32 %1242, 8
  %1256 = and i32 %1255, 255
  %1257 = uitofp i32 %1256 to float
  %1258 = fmul fast float %1252, %1254
  %1259 = fadd fast float %1258, %1257
  %1260 = fmul fast float %1259, 0x3F70101000000000
  %1261 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1262 = extractvalue %dx.types.ResRet.i32 %1261, 0
  %1263 = and i32 %1262, 512
  %1264 = icmp eq i32 %1263, 0
  br i1 %1264, label %1273, label %1265

; <label>:1265                                    ; preds = %1240
  %1266 = add i32 %43, 460
  %1267 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1266, i32 undef)  ; BufferLoad(srv,index,wot)
  %1268 = extractvalue %dx.types.ResRet.i32 %1267, 0
  %1269 = add i32 %1268, 0
  %1270 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1269, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1271 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1270, %dx.types.Handle %75, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1272 = extractvalue %dx.types.ResRet.f32 %1271, 0
  br label %1273

; <label>:1273                                    ; preds = %1265, %1240
  %1274 = phi float [ %1272, %1265 ], [ 1.000000e+00, %1240 ]
  %1275 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1276 = extractvalue %dx.types.ResRet.i32 %1275, 0
  %1277 = and i32 %1276, 33554432
  %1278 = icmp eq i32 %1277, 0
  br i1 %1278, label %1385, label %1279

; <label>:1279                                    ; preds = %1273
  %1280 = add i32 %43, 240
  %1281 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1280, i32 undef)  ; BufferLoad(srv,index,wot)
  %1282 = extractvalue %dx.types.ResRet.i32 %1281, 0
  %1283 = and i32 %1282, 65535
  %1284 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1283)  ; LegacyF16ToF32(value)
  %1285 = lshr i32 %1282, 16
  %1286 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1285)  ; LegacyF16ToF32(value)
  %1287 = add i32 %43, 244
  %1288 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1287, i32 undef)  ; BufferLoad(srv,index,wot)
  %1289 = extractvalue %dx.types.ResRet.i32 %1288, 0
  %1290 = and i32 %1289, 65535
  %1291 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1290)  ; LegacyF16ToF32(value)
  %1292 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1293 = extractvalue %dx.types.ResRet.i32 %1292, 0
  %1294 = lshr i32 %1293, 24
  %1295 = uitofp i32 %1294 to float
  %1296 = fmul fast float %1295, 0x3F70101020000000
  %1297 = and i32 %1293, 255
  %1298 = uitofp i32 %1297 to float
  %1299 = fmul fast float %1298, 0x3F70101020000000
  %1300 = lshr i32 %1293, 8
  %1301 = and i32 %1300, 255
  %1302 = uitofp i32 %1301 to float
  %1303 = fmul fast float %1302, 0x3F70101020000000
  %1304 = lshr i32 %1293, 16
  %1305 = and i32 %1304, 255
  %1306 = uitofp i32 %1305 to float
  %1307 = fmul fast float %1306, 0x3F70101020000000
  %1308 = add i32 %43, 236
  %1309 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1308, i32 undef)  ; BufferLoad(srv,index,wot)
  %1310 = extractvalue %dx.types.ResRet.i32 %1309, 0
  %1311 = lshr i32 %1310, 24
  %1312 = uitofp i32 %1311 to float
  %1313 = fmul fast float %1312, 0x3F70101020000000
  %1314 = and i32 %1310, 255
  %1315 = uitofp i32 %1314 to float
  %1316 = fmul fast float %1315, 0x3F70101020000000
  %1317 = lshr i32 %1310, 8
  %1318 = and i32 %1317, 255
  %1319 = uitofp i32 %1318 to float
  %1320 = fmul fast float %1319, 0x3F70101020000000
  %1321 = lshr i32 %1310, 16
  %1322 = and i32 %1321, 255
  %1323 = uitofp i32 %1322 to float
  %1324 = fmul fast float %1323, 0x3F70101020000000
  %1325 = bitcast float %1249 to i32
  %1326 = ashr i32 %1325, 1
  %1327 = sub nsw i32 1597463174, %1326
  %1328 = bitcast i32 %1327 to float
  %1329 = fmul fast float %1249, 5.000000e-01
  %1330 = fmul fast float %1328, %1328
  %1331 = fmul fast float %1330, %1329
  %1332 = fsub fast float 1.500000e+00, %1331
  %1333 = fmul fast float %1328, %1249
  %1334 = fmul fast float %1333, %1332
  %1335 = bitcast float %1250 to i32
  %1336 = ashr i32 %1335, 1
  %1337 = sub nsw i32 1597463174, %1336
  %1338 = bitcast i32 %1337 to float
  %1339 = fmul fast float %1250, 5.000000e-01
  %1340 = fmul fast float %1338, %1338
  %1341 = fmul fast float %1340, %1339
  %1342 = fsub fast float 1.500000e+00, %1341
  %1343 = fmul fast float %1338, %1250
  %1344 = fmul fast float %1343, %1342
  %1345 = bitcast float %1251 to i32
  %1346 = ashr i32 %1345, 1
  %1347 = sub nsw i32 1597463174, %1346
  %1348 = bitcast i32 %1347 to float
  %1349 = fmul fast float %1251, 5.000000e-01
  %1350 = fmul fast float %1348, %1348
  %1351 = fmul fast float %1350, %1349
  %1352 = fsub fast float 1.500000e+00, %1351
  %1353 = fmul fast float %1348, %1251
  %1354 = fmul fast float %1353, %1352
  %1355 = fsub fast float %1334, %1316
  %1356 = fsub fast float %1344, %1320
  %1357 = fsub fast float %1354, %1324
  %1358 = fmul fast float %1355, %1284
  %1359 = fmul fast float %1356, %1286
  %1360 = fmul fast float %1357, %1291
  %1361 = fadd fast float %1358, %1299
  %1362 = fadd fast float %1359, %1303
  %1363 = fadd fast float %1360, %1307
  %1364 = call float @dx.op.unary.f32(i32 7, float %1361)  ; Saturate(value)
  %1365 = call float @dx.op.unary.f32(i32 7, float %1362)  ; Saturate(value)
  %1366 = call float @dx.op.unary.f32(i32 7, float %1363)  ; Saturate(value)
  %1367 = fmul fast float %1364, %1364
  %1368 = fmul fast float %1365, %1365
  %1369 = fmul fast float %1366, %1366
  %1370 = fsub fast float %1367, %1249
  %1371 = fsub fast float %1368, %1250
  %1372 = fsub fast float %1369, %1251
  %1373 = fmul fast float %1370, %1274
  %1374 = fmul fast float %1371, %1274
  %1375 = fmul fast float %1372, %1274
  %1376 = fadd fast float %1373, %1249
  %1377 = fadd fast float %1374, %1250
  %1378 = fadd fast float %1375, %1251
  %1379 = fadd fast float %1296, %1260
  %1380 = fsub fast float %1379, %1313
  %1381 = call float @dx.op.unary.f32(i32 7, float %1380)  ; Saturate(value)
  %1382 = fsub fast float %1381, %1260
  %1383 = fmul fast float %1382, %1274
  %1384 = fadd fast float %1383, %1260
  br label %1438

; <label>:1385                                    ; preds = %1273
  %1386 = and i32 %1276, 134217728
  %1387 = icmp eq i32 %1386, 0
  br i1 %1387, label %1422, label %1388

; <label>:1388                                    ; preds = %1385
  %1389 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %1390 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %1391 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %1392 = fadd fast float %1389, -5.000000e-01
  %1393 = fadd fast float %1390, -5.000000e-01
  %1394 = fadd fast float %1391, -5.000000e-01
  %1395 = fmul fast float %1392, %1274
  %1396 = fmul fast float %1393, %1274
  %1397 = fmul fast float %1394, %1274
  %1398 = fadd fast float %1395, 5.000000e-01
  %1399 = fadd fast float %1396, 5.000000e-01
  %1400 = fadd fast float %1397, 5.000000e-01
  %1401 = call float @dx.op.unary.f32(i32 24, float %1249)  ; Sqrt(value)
  %1402 = call float @dx.op.unary.f32(i32 24, float %1250)  ; Sqrt(value)
  %1403 = call float @dx.op.unary.f32(i32 24, float %1251)  ; Sqrt(value)
  %1404 = fmul fast float %1398, 2.000000e+00
  %1405 = fsub fast float 1.000000e+00, %1404
  %1406 = fmul fast float %1405, %1401
  %1407 = fadd fast float %1406, %1404
  %1408 = fmul fast float %1407, %1401
  %1409 = fmul fast float %1399, 2.000000e+00
  %1410 = fsub fast float 1.000000e+00, %1409
  %1411 = fmul fast float %1410, %1402
  %1412 = fadd fast float %1411, %1409
  %1413 = fmul fast float %1412, %1402
  %1414 = fmul fast float %1400, 2.000000e+00
  %1415 = fsub fast float 1.000000e+00, %1414
  %1416 = fmul fast float %1415, %1403
  %1417 = fadd fast float %1416, %1414
  %1418 = fmul fast float %1417, %1403
  %1419 = fmul fast float %1408, %1408
  %1420 = fmul fast float %1413, %1413
  %1421 = fmul fast float %1418, %1418
  br label %1438

; <label>:1422                                    ; preds = %1385
  %1423 = fmul fast float %257, %257
  %1424 = fmul fast float %261, %261
  %1425 = fmul fast float %265, %265
  %1426 = fadd fast float %1423, -1.000000e+00
  %1427 = fadd fast float %1424, -1.000000e+00
  %1428 = fadd fast float %1425, -1.000000e+00
  %1429 = fmul fast float %1274, %1426
  %1430 = fmul fast float %1274, %1427
  %1431 = fmul fast float %1274, %1428
  %1432 = fadd fast float %1429, 1.000000e+00
  %1433 = fadd fast float %1430, 1.000000e+00
  %1434 = fadd fast float %1431, 1.000000e+00
  %1435 = fmul fast float %1432, %1249
  %1436 = fmul fast float %1433, %1250
  %1437 = fmul fast float %1434, %1251
  br label %1438

; <label>:1438                                    ; preds = %1422, %1388, %1279, %1235
  %1439 = phi float [ %1384, %1279 ], [ %1260, %1388 ], [ %1260, %1422 ], [ 0x3FA23C0BE0000000, %1235 ]
  %1440 = phi float [ %1376, %1279 ], [ %1419, %1388 ], [ %1435, %1422 ], [ 1.000000e+00, %1235 ]
  %1441 = phi float [ %1377, %1279 ], [ %1420, %1388 ], [ %1436, %1422 ], [ 1.000000e+00, %1235 ]
  %1442 = phi float [ %1378, %1279 ], [ %1421, %1388 ], [ %1437, %1422 ], [ 1.000000e+00, %1235 ]
  %1443 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1444 = extractvalue %dx.types.CBufRet.i32 %1443, 1
  %1445 = and i32 %1444, 1
  %1446 = icmp ne i32 %1445, 0
  %1447 = add i32 %43, 356
  %1448 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1447, i32 undef)  ; BufferLoad(srv,index,wot)
  %1449 = extractvalue %dx.types.ResRet.i32 %1448, 0
  %1450 = and i32 %1449, 32
  %1451 = icmp ne i32 %1450, 0
  %1452 = and i1 %1446, %1451
  %1453 = select i1 %1452, float 1.000000e+00, float %1440
  %1454 = select i1 %1452, float 0x3FD3333340000000, float %1441
  %1455 = select i1 %1452, float 0x3FD3333340000000, float %1442
  %1456 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1457 = extractvalue %dx.types.ResRet.i32 %1456, 0
  %1458 = and i32 %1457, 32
  %1459 = icmp eq i32 %1458, 0
  br i1 %1459, label %1532, label %1460

; <label>:1460                                    ; preds = %1438
  %1461 = add i32 %43, 108
  %1462 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1461, i32 undef)  ; BufferLoad(srv,index,wot)
  %1463 = extractvalue %dx.types.ResRet.i32 %1462, 0
  %1464 = add i32 %43, 396
  %1465 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1464, i32 undef)  ; BufferLoad(srv,index,wot)
  %1466 = extractvalue %dx.types.ResRet.i32 %1465, 0
  %1467 = add i32 %1466, 0
  %1468 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1467, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1469 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1468, %dx.types.Handle %74, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1470 = extractvalue %dx.types.ResRet.f32 %1469, 0
  %1471 = extractvalue %dx.types.ResRet.f32 %1469, 1
  %1472 = extractvalue %dx.types.ResRet.f32 %1469, 2
  %1473 = extractvalue %dx.types.ResRet.f32 %1469, 3
  %1474 = and i32 %1463, 255
  %1475 = uitofp i32 %1474 to float
  %1476 = lshr i32 %1463, 8
  %1477 = and i32 %1476, 255
  %1478 = uitofp i32 %1477 to float
  %1479 = lshr i32 %1463, 16
  %1480 = and i32 %1479, 255
  %1481 = uitofp i32 %1480 to float
  %1482 = fmul fast float %1481, 0x3F70101000000000
  %1483 = fmul fast float %1470, %1475
  %1484 = fadd fast float %1483, %1478
  %1485 = fmul fast float %1484, 0x3F70101000000000
  %1486 = fadd fast float %1471, -5.000000e-01
  %1487 = fadd fast float %1473, -5.000000e-01
  %1488 = fmul fast float %1486, %1482
  %1489 = fmul fast float %1487, %1482
  %1490 = fadd fast float %1488, 5.000000e-01
  %1491 = fadd fast float %1489, 5.000000e-01
  %1492 = fmul fast float %1490, 2.000000e+00
  %1493 = fadd fast float %1492, -1.000000e+00
  %1494 = fmul fast float %1491, 2.000000e+00
  %1495 = fadd fast float %1494, -1.000000e+00
  %1496 = fadd fast float %1493, %1495
  %1497 = fmul fast float %1496, 5.000000e-01
  %1498 = fsub fast float %1493, %1495
  %1499 = fmul fast float %1498, 5.000000e-01
  %1500 = call float @dx.op.unary.f32(i32 6, float %1497)  ; FAbs(value)
  %1501 = fsub fast float 1.000000e+00, %1500
  %1502 = call float @dx.op.unary.f32(i32 6, float %1499)  ; FAbs(value)
  %1503 = fsub fast float %1501, %1502
  %1504 = call float @dx.op.dot3.f32(i32 55, float %1497, float %1499, float %1503, float %1497, float %1499, float %1503)  ; Dot3(ax,ay,az,bx,by,bz)
  %1505 = call float @dx.op.unary.f32(i32 25, float %1504)  ; Rsqrt(value)
  %1506 = fmul fast float %1497, %1505
  %1507 = fmul fast float %1499, %1505
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = and i32 %1509, 67108864
  %1511 = icmp eq i32 %1510, 0
  br i1 %1511, label %1528, label %1512

; <label>:1512                                    ; preds = %1460
  %1513 = add i32 %43, 296
  %1514 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1513, i32 undef)  ; BufferLoad(srv,index,wot)
  %1515 = extractvalue %dx.types.ResRet.i32 %1514, 0
  %1516 = and i32 %1515, 65535
  %1517 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1516)  ; LegacyF16ToF32(value)
  %1518 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %955, i32 undef)  ; BufferLoad(srv,index,wot)
  %1519 = extractvalue %dx.types.ResRet.i32 %1518, 0
  %1520 = and i32 %1519, 65535
  %1521 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1520)  ; LegacyF16ToF32(value)
  %1522 = lshr i32 %1515, 16
  %1523 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1522)  ; LegacyF16ToF32(value)
  %1524 = fsub fast float %1485, %1523
  %1525 = fmul fast float %1524, %1517
  %1526 = fadd fast float %1525, %1521
  %1527 = call float @dx.op.unary.f32(i32 7, float %1526)  ; Saturate(value)
  br label %1528

; <label>:1528                                    ; preds = %1512, %1460
  %1529 = phi float [ %1527, %1512 ], [ %1485, %1460 ]
  %1530 = call float @dx.op.dot2.f32(i32 54, float %1506, float %1507, float %949, float %950)  ; Dot2(ax,ay,bx,by)
  %1531 = call float @dx.op.dot2.f32(i32 54, float %1506, float %1507, float %951, float %952)  ; Dot2(ax,ay,bx,by)
  br label %1532

; <label>:1532                                    ; preds = %1528, %1438
  %1533 = phi float [ %1529, %1528 ], [ 0x3FD6666660000000, %1438 ]
  %1534 = phi float [ %1530, %1528 ], [ 0.000000e+00, %1438 ]
  %1535 = phi float [ %1531, %1528 ], [ 0.000000e+00, %1438 ]
  %1536 = phi float [ %1472, %1528 ], [ 1.000000e+00, %1438 ]
  %1537 = add i32 %43, 176
  %1538 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1537, i32 undef)  ; BufferLoad(srv,index,wot)
  %1539 = extractvalue %dx.types.ResRet.i32 %1538, 0
  %1540 = lshr i32 %1539, 22
  %1541 = shl nuw nsw i32 %1540, 5
  %1542 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1541)  ; LegacyF16ToF32(value)
  %1543 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1544 = extractvalue %dx.types.ResRet.i32 %1543, 0
  %1545 = and i32 %1544, 64
  %1546 = icmp eq i32 %1545, 0
  br i1 %1546, label %1580, label %1547

; <label>:1547                                    ; preds = %1532
  %1548 = add i32 %43, 412
  %1549 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1548, i32 undef)  ; BufferLoad(srv,index,wot)
  %1550 = extractvalue %dx.types.ResRet.i32 %1549, 0
  %1551 = add i32 %1550, 0
  %1552 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1551, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1554 = extractvalue %dx.types.ResRet.i32 %1553, 0
  %1555 = and i32 %1554, 131072
  %1556 = icmp eq i32 %1555, 0
  %1557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1552, %dx.types.Handle %74, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1558 = extractvalue %dx.types.ResRet.f32 %1557, 0
  %1559 = extractvalue %dx.types.ResRet.f32 %1557, 1
  %1560 = extractvalue %dx.types.ResRet.f32 %1557, 2
  %1561 = fmul fast float %1558, %245
  %1562 = fmul fast float %1559, %248
  %1563 = fmul fast float %1560, %251
  br i1 %1556, label %1570, label %1564

; <label>:1564                                    ; preds = %1547
  %1565 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1566 = extractvalue %dx.types.CBufRet.f32 %1565, 0
  %1567 = fmul fast float %1566, %1561
  %1568 = fmul fast float %1566, %1562
  %1569 = fmul fast float %1566, %1563
  br label %1570

; <label>:1570                                    ; preds = %1564, %1547
  %1571 = phi float [ %1567, %1564 ], [ %1561, %1547 ]
  %1572 = phi float [ %1568, %1564 ], [ %1562, %1547 ]
  %1573 = phi float [ %1569, %1564 ], [ %1563, %1547 ]
  %1574 = fmul fast float %1571, %1542
  %1575 = select i1 %183, float %1574, float %1571
  %1576 = call float @dx.op.dot3.f32(i32 55, float %1575, float %1572, float %1573, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1577 = select i1 %183, float 0.000000e+00, float %1571
  %1578 = select i1 %183, float %1576, float %1572
  %1579 = select i1 %183, float 0.000000e+00, float %1573
  br label %1580

; <label>:1580                                    ; preds = %1570, %1532
  %1581 = phi float [ %1577, %1570 ], [ 0.000000e+00, %1532 ]
  %1582 = phi float [ %1578, %1570 ], [ 0.000000e+00, %1532 ]
  %1583 = phi float [ %1579, %1570 ], [ 0.000000e+00, %1532 ]
  %1584 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1585 = extractvalue %dx.types.ResRet.i32 %1584, 0
  %1586 = and i32 %1585, 26624
  %1587 = icmp eq i32 %1586, 0
  br i1 %1587, label %1611, label %1588

; <label>:1588                                    ; preds = %1580
  %1589 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1590 = extractvalue %dx.types.ResRet.i32 %1589, 0
  %1591 = and i32 %1590, 16384
  %1592 = icmp eq i32 %1591, 0
  br i1 %1592, label %1611, label %1593

; <label>:1593                                    ; preds = %1588
  %1594 = and i32 %1590, 1048576
  %1595 = icmp ne i32 %1594, 0
  %1596 = add i32 %43, 476
  %1597 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1596, i32 undef)  ; BufferLoad(srv,index,wot)
  %1598 = extractvalue %dx.types.ResRet.i32 %1597, 0
  %1599 = add i32 %1598, 0
  %1600 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1599, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1601 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1600, %dx.types.Handle %75, float %1045, float %1046, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1602 = extractvalue %dx.types.ResRet.f32 %1601, 0
  %1603 = add i32 %43, 112
  %1604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1603, i32 undef)  ; BufferLoad(srv,index,wot)
  %1605 = extractvalue %dx.types.ResRet.i32 %1604, 0
  %1606 = lshr i32 %1605, 24
  %1607 = uitofp i32 %1606 to float
  %1608 = fmul fast float %1602, 0x3F70101020000000
  %1609 = select i1 %1595, float 0x3F70101020000000, float %1608
  %1610 = fmul fast float %1609, %1607
  br label %1611

; <label>:1611                                    ; preds = %1593, %1588, %1580
  %1612 = phi float [ %1610, %1593 ], [ 0.000000e+00, %1588 ], [ 0.000000e+00, %1580 ]
  %1613 = add i32 %43, 112
  %1614 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1613, i32 undef)  ; BufferLoad(srv,index,wot)
  %1615 = extractvalue %dx.types.ResRet.i32 %1614, 0
  %1616 = and i32 %1615, 255
  %1617 = uitofp i32 %1616 to float
  %1618 = lshr i32 %1615, 8
  %1619 = and i32 %1618, 255
  %1620 = uitofp i32 %1619 to float
  %1621 = call float @dx.op.dot3.f32(i32 55, float %1453, float %1454, float %1455, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1622 = fmul fast float %1620, %1621
  %1623 = fadd fast float %1622, %1617
  %1624 = fmul fast float %1623, 0x3F70101020000000
  %1625 = call float @dx.op.unary.f32(i32 7, float %1624)  ; Saturate(value)
  br i1 %937, label %1626, label %1634

; <label>:1626                                    ; preds = %1611
  %1627 = fsub fast float 1.000000e+00, %1233
  %1628 = fmul fast float %1627, %924
  %1629 = fmul fast float %1627, %925
  %1630 = fmul fast float %1627, %926
  %1631 = fmul fast float %1627, %927
  %1632 = fmul fast float %1627, %928
  %1633 = fmul fast float %1627, %929
  br label %1634

; <label>:1634                                    ; preds = %1626, %1611
  %1635 = phi float [ %1628, %1626 ], [ %924, %1611 ]
  %1636 = phi float [ %1629, %1626 ], [ %925, %1611 ]
  %1637 = phi float [ %1630, %1626 ], [ %926, %1611 ]
  %1638 = phi float [ %1631, %1626 ], [ %927, %1611 ]
  %1639 = phi float [ %1632, %1626 ], [ %928, %1611 ]
  %1640 = phi float [ %1633, %1626 ], [ %929, %1611 ]
  %1641 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %938, i32 undef)  ; BufferLoad(srv,index,wot)
  %1642 = extractvalue %dx.types.ResRet.i32 %1641, 0
  %1643 = and i32 %1642, 3
  %1644 = icmp eq i32 %1643, 3
  br i1 %1644, label %1723, label %1645

; <label>:1645                                    ; preds = %1634
  %1646 = and i32 %1642, 16
  %1647 = icmp ne i32 %1646, 0
  %1648 = select i1 %1647, float %1233, float 0.000000e+00
  %1649 = icmp eq i32 %1643, 0
  br i1 %1649, label %1650, label %1678

; <label>:1650                                    ; preds = %1645
  %1651 = and i32 %1642, 64
  %1652 = icmp ne i32 %1651, 0
  %1653 = select i1 %1652, float %1233, float 0.000000e+00
  %1654 = fsub fast float %1453, %1635
  %1655 = fsub fast float %1454, %1636
  %1656 = fsub fast float %1455, %1637
  %1657 = fmul fast float %1648, %1654
  %1658 = fmul fast float %1648, %1655
  %1659 = fmul fast float %1648, %1656
  %1660 = fadd fast float %1657, %1635
  %1661 = fadd fast float %1658, %1636
  %1662 = fadd fast float %1659, %1637
  %1663 = fsub fast float %1439, %930
  %1664 = fmul fast float %1648, %1663
  %1665 = fadd fast float %1664, %930
  %1666 = fsub fast float %1581, %1638
  %1667 = fsub fast float %1582, %1639
  %1668 = fsub fast float %1583, %1640
  %1669 = fmul fast float %1653, %1666
  %1670 = fmul fast float %1653, %1667
  %1671 = fmul fast float %1653, %1668
  %1672 = fadd fast float %1669, %1638
  %1673 = fadd fast float %1670, %1639
  %1674 = fadd fast float %1671, %1640
  %1675 = fsub fast float %1625, %935
  %1676 = fmul fast float %1648, %1675
  %1677 = fadd fast float %1676, %935
  br label %1723

; <label>:1678                                    ; preds = %1645
  %1679 = icmp eq i32 %1643, 1
  br i1 %1679, label %1680, label %1693

; <label>:1680                                    ; preds = %1678
  %1681 = fadd fast float %1453, -1.000000e+00
  %1682 = fadd fast float %1454, -1.000000e+00
  %1683 = fadd fast float %1455, -1.000000e+00
  %1684 = fmul fast float %1648, %1681
  %1685 = fmul fast float %1648, %1682
  %1686 = fmul fast float %1648, %1683
  %1687 = fadd fast float %1684, 1.000000e+00
  %1688 = fadd fast float %1685, 1.000000e+00
  %1689 = fadd fast float %1686, 1.000000e+00
  %1690 = fmul fast float %1687, %1635
  %1691 = fmul fast float %1688, %1636
  %1692 = fmul fast float %1689, %1637
  br label %1723

; <label>:1693                                    ; preds = %1678
  %1694 = icmp eq i32 %1643, 2
  br i1 %1694, label %1695, label %1723

; <label>:1695                                    ; preds = %1693
  %1696 = call float @dx.op.unary.f32(i32 24, float %1453)  ; Sqrt(value)
  %1697 = call float @dx.op.unary.f32(i32 24, float %1454)  ; Sqrt(value)
  %1698 = call float @dx.op.unary.f32(i32 24, float %1455)  ; Sqrt(value)
  %1699 = fadd fast float %1696, -5.000000e-01
  %1700 = fadd fast float %1697, -5.000000e-01
  %1701 = fadd fast float %1698, -5.000000e-01
  %1702 = fmul fast float %1699, %1648
  %1703 = fmul fast float %1700, %1648
  %1704 = fmul fast float %1701, %1648
  %1705 = fadd fast float %1702, 5.000000e-01
  %1706 = fadd fast float %1703, 5.000000e-01
  %1707 = fadd fast float %1704, 5.000000e-01
  %1708 = fmul fast float %1705, 2.000000e+00
  %1709 = fsub fast float 1.000000e+00, %1708
  %1710 = fmul fast float %1709, %1635
  %1711 = fadd fast float %1710, %1708
  %1712 = fmul fast float %1711, %1635
  %1713 = fmul fast float %1706, 2.000000e+00
  %1714 = fsub fast float 1.000000e+00, %1713
  %1715 = fmul fast float %1714, %1636
  %1716 = fadd fast float %1715, %1713
  %1717 = fmul fast float %1716, %1636
  %1718 = fmul fast float %1707, 2.000000e+00
  %1719 = fsub fast float 1.000000e+00, %1718
  %1720 = fmul fast float %1719, %1637
  %1721 = fadd fast float %1720, %1718
  %1722 = fmul fast float %1721, %1637
  br label %1723

; <label>:1723                                    ; preds = %1695, %1693, %1680, %1650, %1634
  %1724 = phi float [ %1635, %1634 ], [ %1712, %1695 ], [ %1635, %1693 ], [ %1690, %1680 ], [ %1660, %1650 ]
  %1725 = phi float [ %1636, %1634 ], [ %1717, %1695 ], [ %1636, %1693 ], [ %1691, %1680 ], [ %1661, %1650 ]
  %1726 = phi float [ %1637, %1634 ], [ %1722, %1695 ], [ %1637, %1693 ], [ %1692, %1680 ], [ %1662, %1650 ]
  %1727 = phi float [ %1638, %1634 ], [ %1638, %1695 ], [ %1638, %1693 ], [ %1638, %1680 ], [ %1672, %1650 ]
  %1728 = phi float [ %1639, %1634 ], [ %1639, %1695 ], [ %1639, %1693 ], [ %1639, %1680 ], [ %1673, %1650 ]
  %1729 = phi float [ %1640, %1634 ], [ %1640, %1695 ], [ %1640, %1693 ], [ %1640, %1680 ], [ %1674, %1650 ]
  %1730 = phi float [ %930, %1634 ], [ %930, %1695 ], [ %930, %1693 ], [ %930, %1680 ], [ %1665, %1650 ]
  %1731 = phi float [ %935, %1634 ], [ %935, %1695 ], [ %935, %1693 ], [ %935, %1680 ], [ %1677, %1650 ]
  %1732 = and i32 %1642, 12
  %1733 = icmp eq i32 %1732, 12
  br i1 %1733, label %1816, label %1734

; <label>:1734                                    ; preds = %1723
  %1735 = and i32 %1642, 2097184
  %1736 = icmp eq i32 %1735, 2097184
  %1737 = select i1 %1736, float %1233, float 0.000000e+00
  %1738 = and i32 %1642, 4194336
  %1739 = icmp eq i32 %1738, 4194336
  %1740 = select i1 %1739, float %1233, float 0.000000e+00
  %1741 = and i32 %1642, 8388640
  %1742 = icmp eq i32 %1741, 8388640
  %1743 = select i1 %1742, float %1233, float 0.000000e+00
  %1744 = and i32 %1642, 16384
  %1745 = icmp ne i32 %1744, 0
  %1746 = select i1 %1745, float %1233, float 0.000000e+00
  %1747 = icmp eq i32 %1732, 0
  br i1 %1747, label %1748, label %1764

; <label>:1748                                    ; preds = %1734
  %1749 = fsub fast float %1534, %922
  %1750 = fsub fast float %1535, %923
  %1751 = fmul fast float %1737, %1749
  %1752 = fmul fast float %1737, %1750
  %1753 = fadd fast float %1751, %922
  %1754 = fadd fast float %1752, %923
  %1755 = fsub fast float %1536, %933
  %1756 = fmul fast float %1740, %1755
  %1757 = fadd fast float %1756, %933
  %1758 = fsub fast float %1533, %932
  %1759 = fmul fast float %1743, %1758
  %1760 = fadd fast float %1759, %932
  %1761 = fsub fast float %1612, %934
  %1762 = fmul fast float %1746, %1761
  %1763 = fadd fast float %1762, %934
  br label %1816

; <label>:1764                                    ; preds = %1734
  %1765 = icmp eq i32 %1732, 4
  br i1 %1765, label %1766, label %1800

; <label>:1766                                    ; preds = %1764
  %1767 = fmul fast float %1737, %1534
  %1768 = fmul fast float %1737, %1535
  %1769 = fadd fast float %1767, %922
  %1770 = fadd fast float %1768, %923
  %1771 = call float @dx.op.binary.f32(i32 36, float %933, float %1536)  ; FMin(a,b)
  %1772 = fsub fast float %1771, %933
  %1773 = fmul fast float %1772, %1740
  %1774 = fadd fast float %1773, %933
  %1775 = fadd fast float %1533, %932
  %1776 = fmul fast float %1775, 0x3FF337FAE0000000
  %1777 = fmul fast float %932, %932
  %1778 = fmul fast float %1533, %1533
  %1779 = fadd fast float %1778, %1777
  %1780 = fmul fast float %1779, 0x3FE5152B00000000
  %1781 = fmul fast float %932, 0xBFCC1F85E0000000
  %1782 = fmul fast float %1781, %1533
  %1783 = fadd fast float %1782, 0xBFE1363700000000
  %1784 = fadd fast float %1783, %1776
  %1785 = fsub fast float %1784, %1780
  %1786 = fmul fast float %1775, 0x3FBA6F0D00000000
  %1787 = fmul fast float %1779, 0x3FD0432880000000
  %1788 = fmul fast float %932, 0xBFEF110800000000
  %1789 = fmul fast float %1788, %1533
  %1790 = fadd fast float %1789, 1.000000e+00
  %1791 = fsub fast float %1790, %1786
  %1792 = fadd fast float %1791, %1787
  %1793 = fdiv fast float %1785, %1792
  %1794 = call float @dx.op.unary.f32(i32 7, float %1793)  ; Saturate(value)
  %1795 = fsub fast float %1794, %932
  %1796 = fmul fast float %1795, %1743
  %1797 = fadd fast float %1796, %932
  %1798 = fmul fast float %1746, %1612
  %1799 = fadd fast float %1798, %934
  br label %1816

; <label>:1800                                    ; preds = %1764
  %1801 = icmp eq i32 %1732, 8
  br i1 %1801, label %1802, label %1816

; <label>:1802                                    ; preds = %1800
  %1803 = fmul fast float %1737, %1534
  %1804 = fmul fast float %1737, %1535
  %1805 = fadd fast float %1803, %922
  %1806 = fadd fast float %1804, %923
  %1807 = call float @dx.op.binary.f32(i32 36, float %933, float %1536)  ; FMin(a,b)
  %1808 = fsub fast float %1807, %933
  %1809 = fmul fast float %1808, %1740
  %1810 = fadd fast float %1809, %933
  %1811 = fsub fast float %1533, %932
  %1812 = fmul fast float %1743, %1811
  %1813 = fadd fast float %1812, %932
  %1814 = fmul fast float %1746, %1612
  %1815 = fadd fast float %1814, %934
  br label %1816

; <label>:1816                                    ; preds = %1802, %1800, %1766, %1748, %1723, %1232, %936, %921
  %1817 = phi float [ %922, %1723 ], [ %922, %1232 ], [ %922, %921 ], [ %1805, %1802 ], [ %922, %1800 ], [ %1769, %1766 ], [ %1753, %1748 ], [ %922, %936 ]
  %1818 = phi float [ %923, %1723 ], [ %923, %1232 ], [ %923, %921 ], [ %1806, %1802 ], [ %923, %1800 ], [ %1770, %1766 ], [ %1754, %1748 ], [ %923, %936 ]
  %1819 = phi float [ %1724, %1723 ], [ %924, %1232 ], [ %924, %921 ], [ %1724, %1802 ], [ %1724, %1800 ], [ %1724, %1766 ], [ %1724, %1748 ], [ %924, %936 ]
  %1820 = phi float [ %1725, %1723 ], [ %925, %1232 ], [ %925, %921 ], [ %1725, %1802 ], [ %1725, %1800 ], [ %1725, %1766 ], [ %1725, %1748 ], [ %925, %936 ]
  %1821 = phi float [ %1726, %1723 ], [ %926, %1232 ], [ %926, %921 ], [ %1726, %1802 ], [ %1726, %1800 ], [ %1726, %1766 ], [ %1726, %1748 ], [ %926, %936 ]
  %1822 = phi float [ %1727, %1723 ], [ %927, %1232 ], [ %927, %921 ], [ %1727, %1802 ], [ %1727, %1800 ], [ %1727, %1766 ], [ %1727, %1748 ], [ %927, %936 ]
  %1823 = phi float [ %1728, %1723 ], [ %928, %1232 ], [ %928, %921 ], [ %1728, %1802 ], [ %1728, %1800 ], [ %1728, %1766 ], [ %1728, %1748 ], [ %928, %936 ]
  %1824 = phi float [ %1729, %1723 ], [ %929, %1232 ], [ %929, %921 ], [ %1729, %1802 ], [ %1729, %1800 ], [ %1729, %1766 ], [ %1729, %1748 ], [ %929, %936 ]
  %1825 = phi float [ %1730, %1723 ], [ %930, %1232 ], [ %930, %921 ], [ %1730, %1802 ], [ %1730, %1800 ], [ %1730, %1766 ], [ %1730, %1748 ], [ %930, %936 ]
  %1826 = phi float [ %932, %1723 ], [ %932, %1232 ], [ %932, %921 ], [ %1813, %1802 ], [ %932, %1800 ], [ %1797, %1766 ], [ %1760, %1748 ], [ %932, %936 ]
  %1827 = phi float [ %933, %1723 ], [ %933, %1232 ], [ %933, %921 ], [ %1810, %1802 ], [ %933, %1800 ], [ %1774, %1766 ], [ %1757, %1748 ], [ %933, %936 ]
  %1828 = phi float [ %934, %1723 ], [ %934, %1232 ], [ %934, %921 ], [ %1815, %1802 ], [ %934, %1800 ], [ %1799, %1766 ], [ %1763, %1748 ], [ %934, %936 ]
  %1829 = phi float [ %1731, %1723 ], [ %935, %1232 ], [ %935, %921 ], [ %1731, %1802 ], [ %1731, %1800 ], [ %1731, %1766 ], [ %1731, %1748 ], [ %935, %936 ]
  br i1 %372, label %2710, label %1830

; <label>:1830                                    ; preds = %1816
  %1831 = icmp ult i32 %425, 3
  %1832 = add i32 %43, 56
  %1833 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %1834 = extractvalue %dx.types.ResRet.i32 %1833, 0
  %1835 = add i32 %43, 60
  %1836 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1835, i32 undef)  ; BufferLoad(srv,index,wot)
  %1837 = extractvalue %dx.types.ResRet.i32 %1836, 0
  %1838 = or i32 %1837, %1834
  %1839 = icmp eq i32 %1838, 0
  br i1 %1839, label %2710, label %1840

; <label>:1840                                    ; preds = %1830
  %1841 = and i32 %1834, 262144
  %1842 = icmp ne i32 %1841, 0
  %1843 = select i1 %1842, float %46, float 1.000000e+00
  %1844 = select i1 %1842, float %47, float 0.000000e+00
  %1845 = select i1 %1842, float %48, float 0.000000e+00
  %1846 = select i1 %1842, float %49, float 1.000000e+00
  %1847 = select i1 %1842, float %50, float %66
  %1848 = select i1 %1842, float %51, float %67
  %1849 = add i32 %43, 316
  %1850 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %1851 = extractvalue %dx.types.ResRet.i32 %1850, 0
  %1852 = lshr i32 %1851, 16
  %1853 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1852)  ; LegacyF16ToF32(value)
  %1854 = fmul fast float %1853, 0x3F50624DE0000000
  %1855 = add i32 %43, 120
  %1856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %1857 = extractvalue %dx.types.ResRet.i32 %1856, 0
  %1858 = lshr i32 %1857, 16
  %1859 = and i32 %1858, 255
  %1860 = lshr i32 %1857, 24
  %1861 = add i32 %43, 324
  %1862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1861, i32 undef)  ; BufferLoad(srv,index,wot)
  %1863 = extractvalue %dx.types.ResRet.i32 %1862, 0
  %1864 = and i32 %1863, 65535
  %1865 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1864)  ; LegacyF16ToF32(value)
  %1866 = lshr i32 %1863, 16
  %1867 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1866)  ; LegacyF16ToF32(value)
  %1868 = add i32 %43, 64
  %1869 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1868, i32 undef)  ; BufferLoad(srv,index,wot)
  %1870 = extractvalue %dx.types.ResRet.i32 %1869, 0
  %1871 = lshr i32 %1870, 22
  %1872 = shl nuw nsw i32 %1871, 5
  %1873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1872)  ; LegacyF16ToF32(value)
  %1874 = shl i32 %1870, 4
  %1875 = and i32 %1874, 32752
  %1876 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1875)  ; LegacyF16ToF32(value)
  %1877 = lshr i32 %1870, 7
  %1878 = and i32 %1877, 32752
  %1879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1878)  ; LegacyF16ToF32(value)
  %1880 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1881 = extractvalue %dx.types.CBufRet.f32 %1880, 3
  %1882 = fmul fast float %1881, 1.000000e+03
  %1883 = fmul fast float %322, %1882
  %1884 = call float @dx.op.unary.f32(i32 22, float %1883)  ; Frc(value)
  %1885 = fadd fast float %1884, %312
  %1886 = fmul fast float %323, %1882
  %1887 = call float @dx.op.unary.f32(i32 22, float %1886)  ; Frc(value)
  %1888 = fadd fast float %1887, %314
  %1889 = fmul fast float %1854, %1882
  %1890 = call float @dx.op.unary.f32(i32 22, float %1889)  ; Frc(value)
  %1891 = fmul fast float %1890, 0x401921FB60000000
  %1892 = fadd fast float %1891, %1873
  %1893 = call float @dx.op.unary.f32(i32 13, float %1892)  ; Sin(value)
  %1894 = call float @dx.op.unary.f32(i32 12, float %1892)  ; Cos(value)
  %1895 = fsub fast float -0.000000e+00, %1893
  %1896 = fadd fast float %1847, -5.000000e-01
  %1897 = fadd fast float %1848, -5.000000e-01
  %1898 = fmul fast float %1865, %1896
  %1899 = fmul fast float %1867, %1897
  %1900 = fadd fast float %1898, 5.000000e-01
  %1901 = fadd fast float %1899, 5.000000e-01
  %1902 = fmul fast float %1876, %1900
  %1903 = fmul fast float %1879, %1901
  %1904 = fmul fast float %1894, %1902
  %1905 = call float @dx.op.tertiary.f32(i32 46, float %1895, float %1903, float %1904)  ; FMad(a,b,c)
  %1906 = fmul fast float %1893, %1902
  %1907 = call float @dx.op.tertiary.f32(i32 46, float %1894, float %1903, float %1906)  ; FMad(a,b,c)
  %1908 = fadd fast float %1885, %1905
  %1909 = fadd fast float %1888, %1907
  %1910 = icmp ugt i32 %1859, 1
  %1911 = icmp ugt i32 %1857, 33554431
  %1912 = or i1 %1911, %1910
  br i1 %1912, label %1913, label %1938

; <label>:1913                                    ; preds = %1840
  %1914 = add i32 %43, 260
  %1915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1914, i32 undef)  ; BufferLoad(srv,index,wot)
  %1916 = extractvalue %dx.types.ResRet.i32 %1915, 0
  %1917 = lshr i32 %1916, 16
  %1918 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1917)  ; LegacyF16ToF32(value)
  %1919 = fmul fast float %1881, %1918
  %1920 = call float @dx.op.unary.f32(i32 22, float %1919)  ; Frc(value)
  %1921 = mul nuw nsw i32 %1859, %1860
  %1922 = uitofp i32 %1921 to float
  %1923 = fmul fast float %1920, %1922
  %1924 = call float @dx.op.unary.f32(i32 27, float %1923)  ; Round_ni(value)
  %1925 = fptoui float %1924 to i32
  %1926 = urem i32 %1925, %1859
  %1927 = udiv i32 %1925, %1860
  %1928 = call float @dx.op.unary.f32(i32 22, float %1908)  ; Frc(value)
  %1929 = call float @dx.op.unary.f32(i32 22, float %1909)  ; Frc(value)
  %1930 = uitofp i32 %1926 to float
  %1931 = uitofp i32 %1927 to float
  %1932 = fadd fast float %1928, %1930
  %1933 = fadd fast float %1929, %1931
  %1934 = uitofp i32 %1859 to float
  %1935 = uitofp i32 %1860 to float
  %1936 = fdiv fast float %1932, %1934
  %1937 = fdiv fast float %1933, %1935
  br label %1938

; <label>:1938                                    ; preds = %1913, %1840
  %1939 = phi float [ %1936, %1913 ], [ %1908, %1840 ]
  %1940 = phi float [ %1937, %1913 ], [ %1909, %1840 ]
  %1941 = and i32 %1834, 16777216
  %1942 = icmp eq i32 %1941, 0
  br i1 %1942, label %2052, label %1943

; <label>:1943                                    ; preds = %1938
  %1944 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1945 = extractvalue %dx.types.CBufRet.f32 %1944, 0
  %1946 = extractvalue %dx.types.CBufRet.f32 %1944, 1
  %1947 = extractvalue %dx.types.CBufRet.f32 %1944, 2
  %1948 = fadd fast float %1945, %141
  %1949 = fadd fast float %1946, %142
  %1950 = fadd fast float %1947, %143
  %1951 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1952 = extractvalue %dx.types.CBufRet.f32 %1951, 0
  %1953 = call float @dx.op.unary.f32(i32 7, float %1952)  ; Saturate(value)
  %1954 = icmp eq i32 %44, 65535
  br i1 %1954, label %2049, label %1955

; <label>:1955                                    ; preds = %1943
  %1956 = lshr i32 %44, 1
  %1957 = shl i32 %1956, 2
  %1958 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1957, i32 undef)  ; BufferLoad(srv,index,wot)
  %1959 = extractvalue %dx.types.ResRet.i32 %1958, 0
  %1960 = and i32 %44, 1
  %1961 = icmp ne i32 %1960, 0
  %1962 = lshr i32 %1959, 16
  %1963 = and i32 %1959, 65535
  %1964 = select i1 %1961, i32 %1962, i32 %1963
  %1965 = icmp eq i32 %1964, 65535
  br i1 %1965, label %2045, label %1966

; <label>:1966                                    ; preds = %1955
  %1967 = mul nuw nsw i32 %1964, 40
  %1968 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1967, i32 undef)  ; BufferLoad(srv,index,wot)
  %1969 = extractvalue %dx.types.ResRet.f32 %1968, 0
  %1970 = extractvalue %dx.types.ResRet.f32 %1968, 1
  %1971 = extractvalue %dx.types.ResRet.f32 %1968, 2
  %1972 = add nuw nsw i32 %1967, 12
  %1973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1972, i32 undef)  ; BufferLoad(srv,index,wot)
  %1974 = extractvalue %dx.types.ResRet.f32 %1973, 0
  %1975 = extractvalue %dx.types.ResRet.f32 %1973, 1
  %1976 = extractvalue %dx.types.ResRet.f32 %1973, 2
  %1977 = add nuw nsw i32 %1967, 24
  %1978 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1977, i32 undef)  ; BufferLoad(srv,index,wot)
  %1979 = extractvalue %dx.types.ResRet.f32 %1978, 0
  %1980 = extractvalue %dx.types.ResRet.f32 %1978, 1
  %1981 = extractvalue %dx.types.ResRet.f32 %1978, 2
  %1982 = add nuw nsw i32 %1967, 36
  %1983 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1982, i32 undef)  ; BufferLoad(srv,index,wot)
  %1984 = extractvalue %dx.types.ResRet.f32 %1983, 0
  %1985 = fsub fast float %1948, %1969
  %1986 = fsub fast float %1949, %1970
  %1987 = fsub fast float %1950, %1971
  %1988 = fmul fast float %1984, %1985
  %1989 = fmul fast float %1984, %1986
  %1990 = fmul fast float %1984, %1987
  %1991 = call float @dx.op.unary.f32(i32 27, float %1988)  ; Round_ni(value)
  %1992 = call float @dx.op.unary.f32(i32 27, float %1989)  ; Round_ni(value)
  %1993 = call float @dx.op.unary.f32(i32 27, float %1990)  ; Round_ni(value)
  %1994 = fadd fast float %1991, 5.000000e-01
  %1995 = fadd fast float %1992, 5.000000e-01
  %1996 = fadd fast float %1993, 5.000000e-01
  %1997 = fmul fast float %1994, %1974
  %1998 = fmul fast float %1995, %1975
  %1999 = fmul fast float %1996, %1976
  %2000 = shl i32 %44, 2
  %2001 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2002 = extractvalue %dx.types.ResRet.i32 %2001, 0
  %2003 = add i32 %2002, 0
  %2004 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2003, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2005 = call float @dx.op.unary.f32(i32 22, float %1997)  ; Frc(value)
  %2006 = call float @dx.op.unary.f32(i32 22, float %1998)  ; Frc(value)
  %2007 = call float @dx.op.unary.f32(i32 22, float %1999)  ; Frc(value)
  %2008 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2004, %dx.types.Handle %40, float %2005, float %2006, float %2007, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2009 = extractvalue %dx.types.ResRet.f32 %2008, 0
  %2010 = extractvalue %dx.types.ResRet.f32 %2008, 1
  %2011 = extractvalue %dx.types.ResRet.f32 %2008, 2
  %2012 = fmul fast float %2009, 1.023000e+03
  %2013 = fmul fast float %2010, 1.023000e+03
  %2014 = fmul fast float %2011, 1.023000e+03
  %2015 = fadd fast float %2012, 5.000000e-01
  %2016 = fadd fast float %2013, 5.000000e-01
  %2017 = fadd fast float %2014, 5.000000e-01
  %2018 = call float @dx.op.unary.f32(i32 27, float %2015)  ; Round_ni(value)
  %2019 = call float @dx.op.unary.f32(i32 27, float %2016)  ; Round_ni(value)
  %2020 = call float @dx.op.unary.f32(i32 27, float %2017)  ; Round_ni(value)
  %2021 = fsub fast float %1988, %1991
  %2022 = fsub fast float %1989, %1992
  %2023 = fsub fast float %1990, %1993
  %2024 = fmul fast float %2021, 7.500000e-01
  %2025 = fmul fast float %2022, 7.500000e-01
  %2026 = fmul fast float %2023, 7.500000e-01
  %2027 = fadd fast float %1991, 1.250000e-01
  %2028 = fadd fast float %2027, %2024
  %2029 = fadd fast float %2028, %2018
  %2030 = fadd fast float %1992, 1.250000e-01
  %2031 = fadd fast float %2030, %2025
  %2032 = fadd fast float %2031, %2019
  %2033 = fadd fast float %1993, 1.250000e-01
  %2034 = fadd fast float %2033, %2026
  %2035 = fadd fast float %2034, %2020
  %2036 = fmul fast float %2029, %1979
  %2037 = fmul fast float %2032, %1980
  %2038 = fmul fast float %2035, %1981
  %2039 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2000, i32 undef)  ; BufferLoad(srv,index,wot)
  %2040 = extractvalue %dx.types.ResRet.i32 %2039, 0
  %2041 = add i32 %2040, 0
  %2042 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2041, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2043 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2042, %dx.types.Handle %38, float %2036, float %2037, float %2038, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2044 = extractvalue %dx.types.ResRet.f32 %2043, 0
  br label %2045

; <label>:2045                                    ; preds = %1966, %1955
  %2046 = phi float [ %2044, %1966 ], [ -1.000000e+00, %1955 ]
  %2047 = fadd fast float %2046, %1953
  %2048 = call float @dx.op.unary.f32(i32 7, float %2047)  ; Saturate(value)
  br label %2049

; <label>:2049                                    ; preds = %2045, %1943
  %2050 = phi float [ %2048, %2045 ], [ %1953, %1943 ]
  %2051 = fmul fast float %2050, %421
  br label %2052

; <label>:2052                                    ; preds = %2049, %1938
  %2053 = phi float [ %2051, %2049 ], [ %421, %1938 ]
  %2054 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2055 = extractvalue %dx.types.ResRet.i32 %2054, 0
  %2056 = and i32 %2055, 256
  %2057 = icmp eq i32 %2056, 0
  br i1 %2057, label %2104, label %2058

; <label>:2058                                    ; preds = %2052
  %2059 = add i32 %43, 448
  %2060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2059, i32 undef)  ; BufferLoad(srv,index,wot)
  %2061 = extractvalue %dx.types.ResRet.i32 %2060, 0
  %2062 = add i32 %2061, 0
  %2063 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2062, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2064 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2063, %dx.types.Handle %75, float %1939, float %1940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2065 = extractvalue %dx.types.ResRet.f32 %2064, 0
  %2066 = add i32 %43, 132
  %2067 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2066, i32 undef)  ; BufferLoad(srv,index,wot)
  %2068 = extractvalue %dx.types.ResRet.i32 %2067, 0
  %2069 = shl i32 %2068, 4
  %2070 = and i32 %2069, 32752
  %2071 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2070)  ; LegacyF16ToF32(value)
  %2072 = lshr i32 %2068, 7
  %2073 = and i32 %2072, 32752
  %2074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2073)  ; LegacyF16ToF32(value)
  %2075 = fsub fast float 1.000000e+00, %2053
  %2076 = call float @dx.op.binary.f32(i32 35, float %2075, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2077 = bitcast float %2053 to i32
  %2078 = sitofp i32 %2077 to float
  %2079 = fadd fast float %2078, 0xC1CFBF8940000000
  %2080 = fmul fast float %2074, %2079
  %2081 = fadd fast float %2080, 0x41CFBF8940000000
  %2082 = fptosi float %2081 to i32
  %2083 = bitcast i32 %2082 to float
  %2084 = bitcast float %2076 to i32
  %2085 = sitofp i32 %2084 to float
  %2086 = fadd fast float %2085, 0xC1CFBF8940000000
  %2087 = fmul fast float %2086, %2074
  %2088 = fadd fast float %2087, 0x41CFBF8940000000
  %2089 = fptosi float %2088 to i32
  %2090 = bitcast i32 %2089 to float
  %2091 = fmul fast float %2083, %2071
  %2092 = fmul fast float %2090, %2071
  %2093 = fsub fast float %2076, %2091
  %2094 = fadd fast float %2092, %2076
  %2095 = call float @dx.op.unary.f32(i32 7, float %2093)  ; Saturate(value)
  %2096 = call float @dx.op.unary.f32(i32 7, float %2094)  ; Saturate(value)
  %2097 = fsub fast float %2065, %2095
  %2098 = fsub fast float %2096, %2095
  %2099 = bitcast float %2098 to i32
  %2100 = sub nsw i32 2129859010, %2099
  %2101 = bitcast i32 %2100 to float
  %2102 = fmul fast float %2101, %2097
  %2103 = call float @dx.op.unary.f32(i32 7, float %2102)  ; Saturate(value)
  br label %2104

; <label>:2104                                    ; preds = %2058, %2052
  %2105 = phi float [ %2103, %2058 ], [ %2053, %2052 ]
  %2106 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2107 = extractvalue %dx.types.ResRet.i32 %2106, 0
  %2108 = and i32 %2107, 128
  %2109 = icmp eq i32 %2108, 0
  br i1 %2109, label %2126, label %2110

; <label>:2110                                    ; preds = %2104
  %2111 = add i32 %43, 432
  %2112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2111, i32 undef)  ; BufferLoad(srv,index,wot)
  %2113 = extractvalue %dx.types.ResRet.i32 %2112, 0
  %2114 = add i32 %2113, 0
  %2115 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2114, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2116 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2115, %dx.types.Handle %75, float %1939, float %1940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2117 = extractvalue %dx.types.ResRet.f32 %2116, 0
  %2118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2119 = extractvalue %dx.types.ResRet.i32 %2118, 0
  %2120 = and i32 %2119, 524288
  %2121 = icmp ne i32 %2120, 0
  %2122 = fcmp fast ogt float %2117, 0x3FE0101020000000
  %2123 = select i1 %2122, float 1.000000e+00, float 0.000000e+00
  %2124 = select i1 %2121, float %2123, float %2117
  %2125 = fmul fast float %2124, %2105
  br label %2126

; <label>:2126                                    ; preds = %2110, %2104
  %2127 = phi float [ %2125, %2110 ], [ %2105, %2104 ]
  %2128 = fcmp fast ult float %2127, 0x3F70101020000000
  br i1 %2128, label %2710, label %2129

; <label>:2129                                    ; preds = %2126
  %2130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2131 = extractvalue %dx.types.ResRet.i32 %2130, 0
  %2132 = and i32 %2131, 16
  %2133 = icmp eq i32 %2132, 0
  br i1 %2133, label %2332, label %2134

; <label>:2134                                    ; preds = %2129
  %2135 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2136 = extractvalue %dx.types.ResRet.i32 %2135, 0
  %2137 = add i32 %43, 384
  %2138 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2137, i32 undef)  ; BufferLoad(srv,index,wot)
  %2139 = extractvalue %dx.types.ResRet.i32 %2138, 0
  %2140 = add i32 %2139, 0
  %2141 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2140, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2142 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2141, %dx.types.Handle %74, float %1939, float %1940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2143 = extractvalue %dx.types.ResRet.f32 %2142, 0
  %2144 = extractvalue %dx.types.ResRet.f32 %2142, 1
  %2145 = extractvalue %dx.types.ResRet.f32 %2142, 2
  %2146 = extractvalue %dx.types.ResRet.f32 %2142, 3
  %2147 = and i32 %2136, 255
  %2148 = uitofp i32 %2147 to float
  %2149 = lshr i32 %2136, 8
  %2150 = and i32 %2149, 255
  %2151 = uitofp i32 %2150 to float
  %2152 = fmul fast float %2146, %2148
  %2153 = fadd fast float %2152, %2151
  %2154 = fmul fast float %2153, 0x3F70101000000000
  %2155 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2156 = extractvalue %dx.types.ResRet.i32 %2155, 0
  %2157 = and i32 %2156, 512
  %2158 = icmp eq i32 %2157, 0
  br i1 %2158, label %2167, label %2159

; <label>:2159                                    ; preds = %2134
  %2160 = add i32 %43, 464
  %2161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2160, i32 undef)  ; BufferLoad(srv,index,wot)
  %2162 = extractvalue %dx.types.ResRet.i32 %2161, 0
  %2163 = add i32 %2162, 0
  %2164 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2163, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2165 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2164, %dx.types.Handle %75, float %1939, float %1940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2166 = extractvalue %dx.types.ResRet.f32 %2165, 0
  br label %2167

; <label>:2167                                    ; preds = %2159, %2134
  %2168 = phi float [ %2166, %2159 ], [ 1.000000e+00, %2134 ]
  %2169 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2170 = extractvalue %dx.types.ResRet.i32 %2169, 0
  %2171 = and i32 %2170, 33554432
  %2172 = icmp eq i32 %2171, 0
  br i1 %2172, label %2279, label %2173

; <label>:2173                                    ; preds = %2167
  %2174 = add i32 %43, 256
  %2175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2174, i32 undef)  ; BufferLoad(srv,index,wot)
  %2176 = extractvalue %dx.types.ResRet.i32 %2175, 0
  %2177 = and i32 %2176, 65535
  %2178 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2177)  ; LegacyF16ToF32(value)
  %2179 = lshr i32 %2176, 16
  %2180 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2179)  ; LegacyF16ToF32(value)
  %2181 = add i32 %43, 260
  %2182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2181, i32 undef)  ; BufferLoad(srv,index,wot)
  %2183 = extractvalue %dx.types.ResRet.i32 %2182, 0
  %2184 = and i32 %2183, 65535
  %2185 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2184)  ; LegacyF16ToF32(value)
  %2186 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2187 = extractvalue %dx.types.ResRet.i32 %2186, 0
  %2188 = lshr i32 %2187, 24
  %2189 = uitofp i32 %2188 to float
  %2190 = fmul fast float %2189, 0x3F70101020000000
  %2191 = and i32 %2187, 255
  %2192 = uitofp i32 %2191 to float
  %2193 = fmul fast float %2192, 0x3F70101020000000
  %2194 = lshr i32 %2187, 8
  %2195 = and i32 %2194, 255
  %2196 = uitofp i32 %2195 to float
  %2197 = fmul fast float %2196, 0x3F70101020000000
  %2198 = lshr i32 %2187, 16
  %2199 = and i32 %2198, 255
  %2200 = uitofp i32 %2199 to float
  %2201 = fmul fast float %2200, 0x3F70101020000000
  %2202 = add i32 %43, 252
  %2203 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2202, i32 undef)  ; BufferLoad(srv,index,wot)
  %2204 = extractvalue %dx.types.ResRet.i32 %2203, 0
  %2205 = lshr i32 %2204, 24
  %2206 = uitofp i32 %2205 to float
  %2207 = fmul fast float %2206, 0x3F70101020000000
  %2208 = and i32 %2204, 255
  %2209 = uitofp i32 %2208 to float
  %2210 = fmul fast float %2209, 0x3F70101020000000
  %2211 = lshr i32 %2204, 8
  %2212 = and i32 %2211, 255
  %2213 = uitofp i32 %2212 to float
  %2214 = fmul fast float %2213, 0x3F70101020000000
  %2215 = lshr i32 %2204, 16
  %2216 = and i32 %2215, 255
  %2217 = uitofp i32 %2216 to float
  %2218 = fmul fast float %2217, 0x3F70101020000000
  %2219 = bitcast float %2143 to i32
  %2220 = ashr i32 %2219, 1
  %2221 = sub nsw i32 1597463174, %2220
  %2222 = bitcast i32 %2221 to float
  %2223 = fmul fast float %2143, 5.000000e-01
  %2224 = fmul fast float %2222, %2222
  %2225 = fmul fast float %2224, %2223
  %2226 = fsub fast float 1.500000e+00, %2225
  %2227 = fmul fast float %2222, %2143
  %2228 = fmul fast float %2227, %2226
  %2229 = bitcast float %2144 to i32
  %2230 = ashr i32 %2229, 1
  %2231 = sub nsw i32 1597463174, %2230
  %2232 = bitcast i32 %2231 to float
  %2233 = fmul fast float %2144, 5.000000e-01
  %2234 = fmul fast float %2232, %2232
  %2235 = fmul fast float %2234, %2233
  %2236 = fsub fast float 1.500000e+00, %2235
  %2237 = fmul fast float %2232, %2144
  %2238 = fmul fast float %2237, %2236
  %2239 = bitcast float %2145 to i32
  %2240 = ashr i32 %2239, 1
  %2241 = sub nsw i32 1597463174, %2240
  %2242 = bitcast i32 %2241 to float
  %2243 = fmul fast float %2145, 5.000000e-01
  %2244 = fmul fast float %2242, %2242
  %2245 = fmul fast float %2244, %2243
  %2246 = fsub fast float 1.500000e+00, %2245
  %2247 = fmul fast float %2242, %2145
  %2248 = fmul fast float %2247, %2246
  %2249 = fsub fast float %2228, %2210
  %2250 = fsub fast float %2238, %2214
  %2251 = fsub fast float %2248, %2218
  %2252 = fmul fast float %2249, %2178
  %2253 = fmul fast float %2250, %2180
  %2254 = fmul fast float %2251, %2185
  %2255 = fadd fast float %2252, %2193
  %2256 = fadd fast float %2253, %2197
  %2257 = fadd fast float %2254, %2201
  %2258 = call float @dx.op.unary.f32(i32 7, float %2255)  ; Saturate(value)
  %2259 = call float @dx.op.unary.f32(i32 7, float %2256)  ; Saturate(value)
  %2260 = call float @dx.op.unary.f32(i32 7, float %2257)  ; Saturate(value)
  %2261 = fmul fast float %2258, %2258
  %2262 = fmul fast float %2259, %2259
  %2263 = fmul fast float %2260, %2260
  %2264 = fsub fast float %2261, %2143
  %2265 = fsub fast float %2262, %2144
  %2266 = fsub fast float %2263, %2145
  %2267 = fmul fast float %2264, %2168
  %2268 = fmul fast float %2265, %2168
  %2269 = fmul fast float %2266, %2168
  %2270 = fadd fast float %2267, %2143
  %2271 = fadd fast float %2268, %2144
  %2272 = fadd fast float %2269, %2145
  %2273 = fadd fast float %2190, %2154
  %2274 = fsub fast float %2273, %2207
  %2275 = call float @dx.op.unary.f32(i32 7, float %2274)  ; Saturate(value)
  %2276 = fsub fast float %2275, %2154
  %2277 = fmul fast float %2276, %2168
  %2278 = fadd fast float %2277, %2154
  br label %2332

; <label>:2279                                    ; preds = %2167
  %2280 = and i32 %2170, 134217728
  %2281 = icmp eq i32 %2280, 0
  br i1 %2281, label %2316, label %2282

; <label>:2282                                    ; preds = %2279
  %2283 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %2284 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %2285 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2286 = fadd fast float %2283, -5.000000e-01
  %2287 = fadd fast float %2284, -5.000000e-01
  %2288 = fadd fast float %2285, -5.000000e-01
  %2289 = fmul fast float %2286, %2168
  %2290 = fmul fast float %2287, %2168
  %2291 = fmul fast float %2288, %2168
  %2292 = fadd fast float %2289, 5.000000e-01
  %2293 = fadd fast float %2290, 5.000000e-01
  %2294 = fadd fast float %2291, 5.000000e-01
  %2295 = call float @dx.op.unary.f32(i32 24, float %2143)  ; Sqrt(value)
  %2296 = call float @dx.op.unary.f32(i32 24, float %2144)  ; Sqrt(value)
  %2297 = call float @dx.op.unary.f32(i32 24, float %2145)  ; Sqrt(value)
  %2298 = fmul fast float %2292, 2.000000e+00
  %2299 = fsub fast float 1.000000e+00, %2298
  %2300 = fmul fast float %2299, %2295
  %2301 = fadd fast float %2300, %2298
  %2302 = fmul fast float %2301, %2295
  %2303 = fmul fast float %2293, 2.000000e+00
  %2304 = fsub fast float 1.000000e+00, %2303
  %2305 = fmul fast float %2304, %2296
  %2306 = fadd fast float %2305, %2303
  %2307 = fmul fast float %2306, %2296
  %2308 = fmul fast float %2294, 2.000000e+00
  %2309 = fsub fast float 1.000000e+00, %2308
  %2310 = fmul fast float %2309, %2297
  %2311 = fadd fast float %2310, %2308
  %2312 = fmul fast float %2311, %2297
  %2313 = fmul fast float %2302, %2302
  %2314 = fmul fast float %2307, %2307
  %2315 = fmul fast float %2312, %2312
  br label %2332

; <label>:2316                                    ; preds = %2279
  %2317 = fmul fast float %299, %299
  %2318 = fmul fast float %303, %303
  %2319 = fmul fast float %307, %307
  %2320 = fadd fast float %2317, -1.000000e+00
  %2321 = fadd fast float %2318, -1.000000e+00
  %2322 = fadd fast float %2319, -1.000000e+00
  %2323 = fmul fast float %2168, %2320
  %2324 = fmul fast float %2168, %2321
  %2325 = fmul fast float %2168, %2322
  %2326 = fadd fast float %2323, 1.000000e+00
  %2327 = fadd fast float %2324, 1.000000e+00
  %2328 = fadd fast float %2325, 1.000000e+00
  %2329 = fmul fast float %2326, %2143
  %2330 = fmul fast float %2327, %2144
  %2331 = fmul fast float %2328, %2145
  br label %2332

; <label>:2332                                    ; preds = %2316, %2282, %2173, %2129
  %2333 = phi float [ %2278, %2173 ], [ %2154, %2282 ], [ %2154, %2316 ], [ 0x3FA23C0BE0000000, %2129 ]
  %2334 = phi float [ %2270, %2173 ], [ %2313, %2282 ], [ %2329, %2316 ], [ 1.000000e+00, %2129 ]
  %2335 = phi float [ %2271, %2173 ], [ %2314, %2282 ], [ %2330, %2316 ], [ 1.000000e+00, %2129 ]
  %2336 = phi float [ %2272, %2173 ], [ %2315, %2282 ], [ %2331, %2316 ], [ 1.000000e+00, %2129 ]
  %2337 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2338 = extractvalue %dx.types.CBufRet.i32 %2337, 1
  %2339 = and i32 %2338, 1
  %2340 = icmp ne i32 %2339, 0
  %2341 = add i32 %43, 356
  %2342 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2341, i32 undef)  ; BufferLoad(srv,index,wot)
  %2343 = extractvalue %dx.types.ResRet.i32 %2342, 0
  %2344 = and i32 %2343, 32
  %2345 = icmp ne i32 %2344, 0
  %2346 = and i1 %2340, %2345
  %2347 = select i1 %2346, float 1.000000e+00, float %2334
  %2348 = select i1 %2346, float 0x3FD3333340000000, float %2335
  %2349 = select i1 %2346, float 0x3FD3333340000000, float %2336
  %2350 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2351 = extractvalue %dx.types.ResRet.i32 %2350, 0
  %2352 = and i32 %2351, 32
  %2353 = icmp eq i32 %2352, 0
  br i1 %2353, label %2426, label %2354

; <label>:2354                                    ; preds = %2332
  %2355 = add i32 %43, 124
  %2356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2355, i32 undef)  ; BufferLoad(srv,index,wot)
  %2357 = extractvalue %dx.types.ResRet.i32 %2356, 0
  %2358 = add i32 %43, 400
  %2359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2358, i32 undef)  ; BufferLoad(srv,index,wot)
  %2360 = extractvalue %dx.types.ResRet.i32 %2359, 0
  %2361 = add i32 %2360, 0
  %2362 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2361, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2363 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2362, %dx.types.Handle %74, float %1939, float %1940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2364 = extractvalue %dx.types.ResRet.f32 %2363, 0
  %2365 = extractvalue %dx.types.ResRet.f32 %2363, 1
  %2366 = extractvalue %dx.types.ResRet.f32 %2363, 2
  %2367 = extractvalue %dx.types.ResRet.f32 %2363, 3
  %2368 = and i32 %2357, 255
  %2369 = uitofp i32 %2368 to float
  %2370 = lshr i32 %2357, 8
  %2371 = and i32 %2370, 255
  %2372 = uitofp i32 %2371 to float
  %2373 = lshr i32 %2357, 16
  %2374 = and i32 %2373, 255
  %2375 = uitofp i32 %2374 to float
  %2376 = fmul fast float %2375, 0x3F70101000000000
  %2377 = fmul fast float %2364, %2369
  %2378 = fadd fast float %2377, %2372
  %2379 = fmul fast float %2378, 0x3F70101000000000
  %2380 = fadd fast float %2365, -5.000000e-01
  %2381 = fadd fast float %2367, -5.000000e-01
  %2382 = fmul fast float %2380, %2376
  %2383 = fmul fast float %2381, %2376
  %2384 = fadd fast float %2382, 5.000000e-01
  %2385 = fadd fast float %2383, 5.000000e-01
  %2386 = fmul fast float %2384, 2.000000e+00
  %2387 = fadd fast float %2386, -1.000000e+00
  %2388 = fmul fast float %2385, 2.000000e+00
  %2389 = fadd fast float %2388, -1.000000e+00
  %2390 = fadd fast float %2387, %2389
  %2391 = fmul fast float %2390, 5.000000e-01
  %2392 = fsub fast float %2387, %2389
  %2393 = fmul fast float %2392, 5.000000e-01
  %2394 = call float @dx.op.unary.f32(i32 6, float %2391)  ; FAbs(value)
  %2395 = fsub fast float 1.000000e+00, %2394
  %2396 = call float @dx.op.unary.f32(i32 6, float %2393)  ; FAbs(value)
  %2397 = fsub fast float %2395, %2396
  %2398 = call float @dx.op.dot3.f32(i32 55, float %2391, float %2393, float %2397, float %2391, float %2393, float %2397)  ; Dot3(ax,ay,az,bx,by,bz)
  %2399 = call float @dx.op.unary.f32(i32 25, float %2398)  ; Rsqrt(value)
  %2400 = fmul fast float %2391, %2399
  %2401 = fmul fast float %2393, %2399
  %2402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2403 = extractvalue %dx.types.ResRet.i32 %2402, 0
  %2404 = and i32 %2403, 67108864
  %2405 = icmp eq i32 %2404, 0
  br i1 %2405, label %2422, label %2406

; <label>:2406                                    ; preds = %2354
  %2407 = add i32 %43, 312
  %2408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2407, i32 undef)  ; BufferLoad(srv,index,wot)
  %2409 = extractvalue %dx.types.ResRet.i32 %2408, 0
  %2410 = and i32 %2409, 65535
  %2411 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2410)  ; LegacyF16ToF32(value)
  %2412 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1849, i32 undef)  ; BufferLoad(srv,index,wot)
  %2413 = extractvalue %dx.types.ResRet.i32 %2412, 0
  %2414 = and i32 %2413, 65535
  %2415 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2414)  ; LegacyF16ToF32(value)
  %2416 = lshr i32 %2409, 16
  %2417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2416)  ; LegacyF16ToF32(value)
  %2418 = fsub fast float %2379, %2417
  %2419 = fmul fast float %2418, %2411
  %2420 = fadd fast float %2419, %2415
  %2421 = call float @dx.op.unary.f32(i32 7, float %2420)  ; Saturate(value)
  br label %2422

; <label>:2422                                    ; preds = %2406, %2354
  %2423 = phi float [ %2421, %2406 ], [ %2379, %2354 ]
  %2424 = call float @dx.op.dot2.f32(i32 54, float %2400, float %2401, float %1843, float %1844)  ; Dot2(ax,ay,bx,by)
  %2425 = call float @dx.op.dot2.f32(i32 54, float %2400, float %2401, float %1845, float %1846)  ; Dot2(ax,ay,bx,by)
  br label %2426

; <label>:2426                                    ; preds = %2422, %2332
  %2427 = phi float [ %2423, %2422 ], [ 0x3FD6666660000000, %2332 ]
  %2428 = phi float [ %2424, %2422 ], [ 0.000000e+00, %2332 ]
  %2429 = phi float [ %2425, %2422 ], [ 0.000000e+00, %2332 ]
  %2430 = phi float [ %2366, %2422 ], [ 1.000000e+00, %2332 ]
  %2431 = add i32 %43, 192
  %2432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2431, i32 undef)  ; BufferLoad(srv,index,wot)
  %2433 = extractvalue %dx.types.ResRet.i32 %2432, 0
  %2434 = lshr i32 %2433, 22
  %2435 = shl nuw nsw i32 %2434, 5
  %2436 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2435)  ; LegacyF16ToF32(value)
  %2437 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2438 = extractvalue %dx.types.ResRet.i32 %2437, 0
  %2439 = and i32 %2438, 64
  %2440 = icmp eq i32 %2439, 0
  br i1 %2440, label %2474, label %2441

; <label>:2441                                    ; preds = %2426
  %2442 = add i32 %43, 416
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2442, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = add i32 %2444, 0
  %2446 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2445, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2447 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2448 = extractvalue %dx.types.ResRet.i32 %2447, 0
  %2449 = and i32 %2448, 131072
  %2450 = icmp eq i32 %2449, 0
  %2451 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2446, %dx.types.Handle %74, float %1939, float %1940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2452 = extractvalue %dx.types.ResRet.f32 %2451, 0
  %2453 = extractvalue %dx.types.ResRet.f32 %2451, 1
  %2454 = extractvalue %dx.types.ResRet.f32 %2451, 2
  %2455 = fmul fast float %2452, %287
  %2456 = fmul fast float %2453, %290
  %2457 = fmul fast float %2454, %293
  br i1 %2450, label %2464, label %2458

; <label>:2458                                    ; preds = %2441
  %2459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2460 = extractvalue %dx.types.CBufRet.f32 %2459, 0
  %2461 = fmul fast float %2460, %2455
  %2462 = fmul fast float %2460, %2456
  %2463 = fmul fast float %2460, %2457
  br label %2464

; <label>:2464                                    ; preds = %2458, %2441
  %2465 = phi float [ %2461, %2458 ], [ %2455, %2441 ]
  %2466 = phi float [ %2462, %2458 ], [ %2456, %2441 ]
  %2467 = phi float [ %2463, %2458 ], [ %2457, %2441 ]
  %2468 = fmul fast float %2465, %2436
  %2469 = select i1 %183, float %2468, float %2465
  %2470 = call float @dx.op.dot3.f32(i32 55, float %2469, float %2466, float %2467, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2471 = select i1 %183, float 0.000000e+00, float %2465
  %2472 = select i1 %183, float %2470, float %2466
  %2473 = select i1 %183, float 0.000000e+00, float %2467
  br label %2474

; <label>:2474                                    ; preds = %2464, %2426
  %2475 = phi float [ %2471, %2464 ], [ 0.000000e+00, %2426 ]
  %2476 = phi float [ %2472, %2464 ], [ 0.000000e+00, %2426 ]
  %2477 = phi float [ %2473, %2464 ], [ 0.000000e+00, %2426 ]
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = and i32 %2479, 26624
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2505, label %2482

; <label>:2482                                    ; preds = %2474
  %2483 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2484 = extractvalue %dx.types.ResRet.i32 %2483, 0
  %2485 = and i32 %2484, 16384
  %2486 = icmp eq i32 %2485, 0
  br i1 %2486, label %2505, label %2487

; <label>:2487                                    ; preds = %2482
  %2488 = and i32 %2484, 1048576
  %2489 = icmp ne i32 %2488, 0
  %2490 = add i32 %43, 480
  %2491 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2490, i32 undef)  ; BufferLoad(srv,index,wot)
  %2492 = extractvalue %dx.types.ResRet.i32 %2491, 0
  %2493 = add i32 %2492, 0
  %2494 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2493, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2495 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2494, %dx.types.Handle %75, float %1939, float %1940, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2496 = extractvalue %dx.types.ResRet.f32 %2495, 0
  %2497 = add i32 %43, 128
  %2498 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2497, i32 undef)  ; BufferLoad(srv,index,wot)
  %2499 = extractvalue %dx.types.ResRet.i32 %2498, 0
  %2500 = lshr i32 %2499, 24
  %2501 = uitofp i32 %2500 to float
  %2502 = fmul fast float %2496, 0x3F70101020000000
  %2503 = select i1 %2489, float 0x3F70101020000000, float %2502
  %2504 = fmul fast float %2503, %2501
  br label %2505

; <label>:2505                                    ; preds = %2487, %2482, %2474
  %2506 = phi float [ %2504, %2487 ], [ 0.000000e+00, %2482 ], [ 0.000000e+00, %2474 ]
  %2507 = add i32 %43, 128
  %2508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2507, i32 undef)  ; BufferLoad(srv,index,wot)
  %2509 = extractvalue %dx.types.ResRet.i32 %2508, 0
  %2510 = and i32 %2509, 255
  %2511 = uitofp i32 %2510 to float
  %2512 = lshr i32 %2509, 8
  %2513 = and i32 %2512, 255
  %2514 = uitofp i32 %2513 to float
  %2515 = call float @dx.op.dot3.f32(i32 55, float %2347, float %2348, float %2349, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2516 = fmul fast float %2514, %2515
  %2517 = fadd fast float %2516, %2511
  %2518 = fmul fast float %2517, 0x3F70101020000000
  %2519 = call float @dx.op.unary.f32(i32 7, float %2518)  ; Saturate(value)
  br i1 %1831, label %2520, label %2528

; <label>:2520                                    ; preds = %2505
  %2521 = fsub fast float 1.000000e+00, %2127
  %2522 = fmul fast float %2521, %1819
  %2523 = fmul fast float %2521, %1820
  %2524 = fmul fast float %2521, %1821
  %2525 = fmul fast float %2521, %1822
  %2526 = fmul fast float %2521, %1823
  %2527 = fmul fast float %2521, %1824
  br label %2528

; <label>:2528                                    ; preds = %2520, %2505
  %2529 = phi float [ %2522, %2520 ], [ %1819, %2505 ]
  %2530 = phi float [ %2523, %2520 ], [ %1820, %2505 ]
  %2531 = phi float [ %2524, %2520 ], [ %1821, %2505 ]
  %2532 = phi float [ %2525, %2520 ], [ %1822, %2505 ]
  %2533 = phi float [ %2526, %2520 ], [ %1823, %2505 ]
  %2534 = phi float [ %2527, %2520 ], [ %1824, %2505 ]
  %2535 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1832, i32 undef)  ; BufferLoad(srv,index,wot)
  %2536 = extractvalue %dx.types.ResRet.i32 %2535, 0
  %2537 = and i32 %2536, 3
  %2538 = icmp eq i32 %2537, 3
  br i1 %2538, label %2617, label %2539

; <label>:2539                                    ; preds = %2528
  %2540 = and i32 %2536, 16
  %2541 = icmp ne i32 %2540, 0
  %2542 = select i1 %2541, float %2127, float 0.000000e+00
  %2543 = icmp eq i32 %2537, 0
  br i1 %2543, label %2544, label %2572

; <label>:2544                                    ; preds = %2539
  %2545 = and i32 %2536, 64
  %2546 = icmp ne i32 %2545, 0
  %2547 = select i1 %2546, float %2127, float 0.000000e+00
  %2548 = fsub fast float %2347, %2529
  %2549 = fsub fast float %2348, %2530
  %2550 = fsub fast float %2349, %2531
  %2551 = fmul fast float %2542, %2548
  %2552 = fmul fast float %2542, %2549
  %2553 = fmul fast float %2542, %2550
  %2554 = fadd fast float %2551, %2529
  %2555 = fadd fast float %2552, %2530
  %2556 = fadd fast float %2553, %2531
  %2557 = fsub fast float %2333, %1825
  %2558 = fmul fast float %2542, %2557
  %2559 = fadd fast float %2558, %1825
  %2560 = fsub fast float %2475, %2532
  %2561 = fsub fast float %2476, %2533
  %2562 = fsub fast float %2477, %2534
  %2563 = fmul fast float %2547, %2560
  %2564 = fmul fast float %2547, %2561
  %2565 = fmul fast float %2547, %2562
  %2566 = fadd fast float %2563, %2532
  %2567 = fadd fast float %2564, %2533
  %2568 = fadd fast float %2565, %2534
  %2569 = fsub fast float %2519, %1829
  %2570 = fmul fast float %2542, %2569
  %2571 = fadd fast float %2570, %1829
  br label %2617

; <label>:2572                                    ; preds = %2539
  %2573 = icmp eq i32 %2537, 1
  br i1 %2573, label %2574, label %2587

; <label>:2574                                    ; preds = %2572
  %2575 = fadd fast float %2347, -1.000000e+00
  %2576 = fadd fast float %2348, -1.000000e+00
  %2577 = fadd fast float %2349, -1.000000e+00
  %2578 = fmul fast float %2542, %2575
  %2579 = fmul fast float %2542, %2576
  %2580 = fmul fast float %2542, %2577
  %2581 = fadd fast float %2578, 1.000000e+00
  %2582 = fadd fast float %2579, 1.000000e+00
  %2583 = fadd fast float %2580, 1.000000e+00
  %2584 = fmul fast float %2581, %2529
  %2585 = fmul fast float %2582, %2530
  %2586 = fmul fast float %2583, %2531
  br label %2617

; <label>:2587                                    ; preds = %2572
  %2588 = icmp eq i32 %2537, 2
  br i1 %2588, label %2589, label %2617

; <label>:2589                                    ; preds = %2587
  %2590 = call float @dx.op.unary.f32(i32 24, float %2347)  ; Sqrt(value)
  %2591 = call float @dx.op.unary.f32(i32 24, float %2348)  ; Sqrt(value)
  %2592 = call float @dx.op.unary.f32(i32 24, float %2349)  ; Sqrt(value)
  %2593 = fadd fast float %2590, -5.000000e-01
  %2594 = fadd fast float %2591, -5.000000e-01
  %2595 = fadd fast float %2592, -5.000000e-01
  %2596 = fmul fast float %2593, %2542
  %2597 = fmul fast float %2594, %2542
  %2598 = fmul fast float %2595, %2542
  %2599 = fadd fast float %2596, 5.000000e-01
  %2600 = fadd fast float %2597, 5.000000e-01
  %2601 = fadd fast float %2598, 5.000000e-01
  %2602 = fmul fast float %2599, 2.000000e+00
  %2603 = fsub fast float 1.000000e+00, %2602
  %2604 = fmul fast float %2603, %2529
  %2605 = fadd fast float %2604, %2602
  %2606 = fmul fast float %2605, %2529
  %2607 = fmul fast float %2600, 2.000000e+00
  %2608 = fsub fast float 1.000000e+00, %2607
  %2609 = fmul fast float %2608, %2530
  %2610 = fadd fast float %2609, %2607
  %2611 = fmul fast float %2610, %2530
  %2612 = fmul fast float %2601, 2.000000e+00
  %2613 = fsub fast float 1.000000e+00, %2612
  %2614 = fmul fast float %2613, %2531
  %2615 = fadd fast float %2614, %2612
  %2616 = fmul fast float %2615, %2531
  br label %2617

; <label>:2617                                    ; preds = %2589, %2587, %2574, %2544, %2528
  %2618 = phi float [ %2529, %2528 ], [ %2606, %2589 ], [ %2529, %2587 ], [ %2584, %2574 ], [ %2554, %2544 ]
  %2619 = phi float [ %2530, %2528 ], [ %2611, %2589 ], [ %2530, %2587 ], [ %2585, %2574 ], [ %2555, %2544 ]
  %2620 = phi float [ %2531, %2528 ], [ %2616, %2589 ], [ %2531, %2587 ], [ %2586, %2574 ], [ %2556, %2544 ]
  %2621 = phi float [ %2532, %2528 ], [ %2532, %2589 ], [ %2532, %2587 ], [ %2532, %2574 ], [ %2566, %2544 ]
  %2622 = phi float [ %2533, %2528 ], [ %2533, %2589 ], [ %2533, %2587 ], [ %2533, %2574 ], [ %2567, %2544 ]
  %2623 = phi float [ %2534, %2528 ], [ %2534, %2589 ], [ %2534, %2587 ], [ %2534, %2574 ], [ %2568, %2544 ]
  %2624 = phi float [ %1825, %2528 ], [ %1825, %2589 ], [ %1825, %2587 ], [ %1825, %2574 ], [ %2559, %2544 ]
  %2625 = phi float [ %1829, %2528 ], [ %1829, %2589 ], [ %1829, %2587 ], [ %1829, %2574 ], [ %2571, %2544 ]
  %2626 = and i32 %2536, 12
  %2627 = icmp eq i32 %2626, 12
  br i1 %2627, label %2710, label %2628

; <label>:2628                                    ; preds = %2617
  %2629 = and i32 %2536, 2097184
  %2630 = icmp eq i32 %2629, 2097184
  %2631 = select i1 %2630, float %2127, float 0.000000e+00
  %2632 = and i32 %2536, 4194336
  %2633 = icmp eq i32 %2632, 4194336
  %2634 = select i1 %2633, float %2127, float 0.000000e+00
  %2635 = and i32 %2536, 8388640
  %2636 = icmp eq i32 %2635, 8388640
  %2637 = select i1 %2636, float %2127, float 0.000000e+00
  %2638 = and i32 %2536, 16384
  %2639 = icmp ne i32 %2638, 0
  %2640 = select i1 %2639, float %2127, float 0.000000e+00
  %2641 = icmp eq i32 %2626, 0
  br i1 %2641, label %2642, label %2658

; <label>:2642                                    ; preds = %2628
  %2643 = fsub fast float %2428, %1817
  %2644 = fsub fast float %2429, %1818
  %2645 = fmul fast float %2631, %2643
  %2646 = fmul fast float %2631, %2644
  %2647 = fadd fast float %2645, %1817
  %2648 = fadd fast float %2646, %1818
  %2649 = fsub fast float %2430, %1827
  %2650 = fmul fast float %2634, %2649
  %2651 = fadd fast float %2650, %1827
  %2652 = fsub fast float %2427, %1826
  %2653 = fmul fast float %2637, %2652
  %2654 = fadd fast float %2653, %1826
  %2655 = fsub fast float %2506, %1828
  %2656 = fmul fast float %2640, %2655
  %2657 = fadd fast float %2656, %1828
  br label %2710

; <label>:2658                                    ; preds = %2628
  %2659 = icmp eq i32 %2626, 4
  br i1 %2659, label %2660, label %2694

; <label>:2660                                    ; preds = %2658
  %2661 = fmul fast float %2631, %2428
  %2662 = fmul fast float %2631, %2429
  %2663 = fadd fast float %2661, %1817
  %2664 = fadd fast float %2662, %1818
  %2665 = call float @dx.op.binary.f32(i32 36, float %1827, float %2430)  ; FMin(a,b)
  %2666 = fsub fast float %2665, %1827
  %2667 = fmul fast float %2666, %2634
  %2668 = fadd fast float %2667, %1827
  %2669 = fadd fast float %2427, %1826
  %2670 = fmul fast float %2669, 0x3FF337FAE0000000
  %2671 = fmul fast float %1826, %1826
  %2672 = fmul fast float %2427, %2427
  %2673 = fadd fast float %2672, %2671
  %2674 = fmul fast float %2673, 0x3FE5152B00000000
  %2675 = fmul fast float %1826, 0xBFCC1F85E0000000
  %2676 = fmul fast float %2675, %2427
  %2677 = fadd fast float %2676, 0xBFE1363700000000
  %2678 = fadd fast float %2677, %2670
  %2679 = fsub fast float %2678, %2674
  %2680 = fmul fast float %2669, 0x3FBA6F0D00000000
  %2681 = fmul fast float %2673, 0x3FD0432880000000
  %2682 = fmul fast float %1826, 0xBFEF110800000000
  %2683 = fmul fast float %2682, %2427
  %2684 = fadd fast float %2683, 1.000000e+00
  %2685 = fsub fast float %2684, %2680
  %2686 = fadd fast float %2685, %2681
  %2687 = fdiv fast float %2679, %2686
  %2688 = call float @dx.op.unary.f32(i32 7, float %2687)  ; Saturate(value)
  %2689 = fsub fast float %2688, %1826
  %2690 = fmul fast float %2689, %2637
  %2691 = fadd fast float %2690, %1826
  %2692 = fmul fast float %2640, %2506
  %2693 = fadd fast float %2692, %1828
  br label %2710

; <label>:2694                                    ; preds = %2658
  %2695 = icmp eq i32 %2626, 8
  br i1 %2695, label %2696, label %2710

; <label>:2696                                    ; preds = %2694
  %2697 = fmul fast float %2631, %2428
  %2698 = fmul fast float %2631, %2429
  %2699 = fadd fast float %2697, %1817
  %2700 = fadd fast float %2698, %1818
  %2701 = call float @dx.op.binary.f32(i32 36, float %1827, float %2430)  ; FMin(a,b)
  %2702 = fsub fast float %2701, %1827
  %2703 = fmul fast float %2702, %2634
  %2704 = fadd fast float %2703, %1827
  %2705 = fsub fast float %2427, %1826
  %2706 = fmul fast float %2637, %2705
  %2707 = fadd fast float %2706, %1826
  %2708 = fmul fast float %2640, %2506
  %2709 = fadd fast float %2708, %1828
  br label %2710

; <label>:2710                                    ; preds = %2696, %2694, %2660, %2642, %2617, %2126, %1830, %1816
  %2711 = phi float [ %1817, %2617 ], [ %1817, %2126 ], [ %1817, %1816 ], [ %2699, %2696 ], [ %1817, %2694 ], [ %2663, %2660 ], [ %2647, %2642 ], [ %1817, %1830 ]
  %2712 = phi float [ %1818, %2617 ], [ %1818, %2126 ], [ %1818, %1816 ], [ %2700, %2696 ], [ %1818, %2694 ], [ %2664, %2660 ], [ %2648, %2642 ], [ %1818, %1830 ]
  %2713 = phi float [ %2618, %2617 ], [ %1819, %2126 ], [ %1819, %1816 ], [ %2618, %2696 ], [ %2618, %2694 ], [ %2618, %2660 ], [ %2618, %2642 ], [ %1819, %1830 ]
  %2714 = phi float [ %2619, %2617 ], [ %1820, %2126 ], [ %1820, %1816 ], [ %2619, %2696 ], [ %2619, %2694 ], [ %2619, %2660 ], [ %2619, %2642 ], [ %1820, %1830 ]
  %2715 = phi float [ %2620, %2617 ], [ %1821, %2126 ], [ %1821, %1816 ], [ %2620, %2696 ], [ %2620, %2694 ], [ %2620, %2660 ], [ %2620, %2642 ], [ %1821, %1830 ]
  %2716 = phi float [ %2621, %2617 ], [ %1822, %2126 ], [ %1822, %1816 ], [ %2621, %2696 ], [ %2621, %2694 ], [ %2621, %2660 ], [ %2621, %2642 ], [ %1822, %1830 ]
  %2717 = phi float [ %2622, %2617 ], [ %1823, %2126 ], [ %1823, %1816 ], [ %2622, %2696 ], [ %2622, %2694 ], [ %2622, %2660 ], [ %2622, %2642 ], [ %1823, %1830 ]
  %2718 = phi float [ %2623, %2617 ], [ %1824, %2126 ], [ %1824, %1816 ], [ %2623, %2696 ], [ %2623, %2694 ], [ %2623, %2660 ], [ %2623, %2642 ], [ %1824, %1830 ]
  %2719 = phi float [ %2624, %2617 ], [ %1825, %2126 ], [ %1825, %1816 ], [ %2624, %2696 ], [ %2624, %2694 ], [ %2624, %2660 ], [ %2624, %2642 ], [ %1825, %1830 ]
  %2720 = phi float [ %1826, %2617 ], [ %1826, %2126 ], [ %1826, %1816 ], [ %2707, %2696 ], [ %1826, %2694 ], [ %2691, %2660 ], [ %2654, %2642 ], [ %1826, %1830 ]
  %2721 = phi float [ %1827, %2617 ], [ %1827, %2126 ], [ %1827, %1816 ], [ %2704, %2696 ], [ %1827, %2694 ], [ %2668, %2660 ], [ %2651, %2642 ], [ %1827, %1830 ]
  %2722 = phi float [ %1828, %2617 ], [ %1828, %2126 ], [ %1828, %1816 ], [ %2709, %2696 ], [ %1828, %2694 ], [ %2693, %2660 ], [ %2657, %2642 ], [ %1828, %1830 ]
  %2723 = phi float [ %2625, %2617 ], [ %1829, %2126 ], [ %1829, %1816 ], [ %2625, %2696 ], [ %2625, %2694 ], [ %2625, %2660 ], [ %2625, %2642 ], [ %1829, %1830 ]
  br i1 %374, label %3604, label %2724

; <label>:2724                                    ; preds = %2710
  %2725 = icmp ult i32 %425, 4
  %2726 = add i32 %43, 72
  %2727 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2728 = extractvalue %dx.types.ResRet.i32 %2727, 0
  %2729 = add i32 %43, 76
  %2730 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2729, i32 undef)  ; BufferLoad(srv,index,wot)
  %2731 = extractvalue %dx.types.ResRet.i32 %2730, 0
  %2732 = or i32 %2731, %2728
  %2733 = icmp eq i32 %2732, 0
  br i1 %2733, label %3604, label %2734

; <label>:2734                                    ; preds = %2724
  %2735 = and i32 %2728, 262144
  %2736 = icmp ne i32 %2735, 0
  %2737 = select i1 %2736, float %46, float 1.000000e+00
  %2738 = select i1 %2736, float %47, float 0.000000e+00
  %2739 = select i1 %2736, float %48, float 0.000000e+00
  %2740 = select i1 %2736, float %49, float 1.000000e+00
  %2741 = select i1 %2736, float %50, float %66
  %2742 = select i1 %2736, float %51, float %67
  %2743 = add i32 %43, 332
  %2744 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %2745 = extractvalue %dx.types.ResRet.i32 %2744, 0
  %2746 = lshr i32 %2745, 16
  %2747 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2746)  ; LegacyF16ToF32(value)
  %2748 = fmul fast float %2747, 0x3F50624DE0000000
  %2749 = add i32 %43, 136
  %2750 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %2751 = extractvalue %dx.types.ResRet.i32 %2750, 0
  %2752 = lshr i32 %2751, 16
  %2753 = and i32 %2752, 255
  %2754 = lshr i32 %2751, 24
  %2755 = add i32 %43, 340
  %2756 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2755, i32 undef)  ; BufferLoad(srv,index,wot)
  %2757 = extractvalue %dx.types.ResRet.i32 %2756, 0
  %2758 = and i32 %2757, 65535
  %2759 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2758)  ; LegacyF16ToF32(value)
  %2760 = lshr i32 %2757, 16
  %2761 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2760)  ; LegacyF16ToF32(value)
  %2762 = add i32 %43, 80
  %2763 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2762, i32 undef)  ; BufferLoad(srv,index,wot)
  %2764 = extractvalue %dx.types.ResRet.i32 %2763, 0
  %2765 = lshr i32 %2764, 22
  %2766 = shl nuw nsw i32 %2765, 5
  %2767 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2766)  ; LegacyF16ToF32(value)
  %2768 = shl i32 %2764, 4
  %2769 = and i32 %2768, 32752
  %2770 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2769)  ; LegacyF16ToF32(value)
  %2771 = lshr i32 %2764, 7
  %2772 = and i32 %2771, 32752
  %2773 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2772)  ; LegacyF16ToF32(value)
  %2774 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2775 = extractvalue %dx.types.CBufRet.f32 %2774, 3
  %2776 = fmul fast float %2775, 1.000000e+03
  %2777 = fmul fast float %364, %2776
  %2778 = call float @dx.op.unary.f32(i32 22, float %2777)  ; Frc(value)
  %2779 = fadd fast float %2778, %354
  %2780 = fmul fast float %365, %2776
  %2781 = call float @dx.op.unary.f32(i32 22, float %2780)  ; Frc(value)
  %2782 = fadd fast float %2781, %356
  %2783 = fmul fast float %2748, %2776
  %2784 = call float @dx.op.unary.f32(i32 22, float %2783)  ; Frc(value)
  %2785 = fmul fast float %2784, 0x401921FB60000000
  %2786 = fadd fast float %2785, %2767
  %2787 = call float @dx.op.unary.f32(i32 13, float %2786)  ; Sin(value)
  %2788 = call float @dx.op.unary.f32(i32 12, float %2786)  ; Cos(value)
  %2789 = fsub fast float -0.000000e+00, %2787
  %2790 = fadd fast float %2741, -5.000000e-01
  %2791 = fadd fast float %2742, -5.000000e-01
  %2792 = fmul fast float %2759, %2790
  %2793 = fmul fast float %2761, %2791
  %2794 = fadd fast float %2792, 5.000000e-01
  %2795 = fadd fast float %2793, 5.000000e-01
  %2796 = fmul fast float %2770, %2794
  %2797 = fmul fast float %2773, %2795
  %2798 = fmul fast float %2788, %2796
  %2799 = call float @dx.op.tertiary.f32(i32 46, float %2789, float %2797, float %2798)  ; FMad(a,b,c)
  %2800 = fmul fast float %2787, %2796
  %2801 = call float @dx.op.tertiary.f32(i32 46, float %2788, float %2797, float %2800)  ; FMad(a,b,c)
  %2802 = fadd fast float %2779, %2799
  %2803 = fadd fast float %2782, %2801
  %2804 = icmp ugt i32 %2753, 1
  %2805 = icmp ugt i32 %2751, 33554431
  %2806 = or i1 %2805, %2804
  br i1 %2806, label %2807, label %2832

; <label>:2807                                    ; preds = %2734
  %2808 = add i32 %43, 276
  %2809 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2808, i32 undef)  ; BufferLoad(srv,index,wot)
  %2810 = extractvalue %dx.types.ResRet.i32 %2809, 0
  %2811 = lshr i32 %2810, 16
  %2812 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2811)  ; LegacyF16ToF32(value)
  %2813 = fmul fast float %2775, %2812
  %2814 = call float @dx.op.unary.f32(i32 22, float %2813)  ; Frc(value)
  %2815 = mul nuw nsw i32 %2753, %2754
  %2816 = uitofp i32 %2815 to float
  %2817 = fmul fast float %2814, %2816
  %2818 = call float @dx.op.unary.f32(i32 27, float %2817)  ; Round_ni(value)
  %2819 = fptoui float %2818 to i32
  %2820 = urem i32 %2819, %2753
  %2821 = udiv i32 %2819, %2754
  %2822 = call float @dx.op.unary.f32(i32 22, float %2802)  ; Frc(value)
  %2823 = call float @dx.op.unary.f32(i32 22, float %2803)  ; Frc(value)
  %2824 = uitofp i32 %2820 to float
  %2825 = uitofp i32 %2821 to float
  %2826 = fadd fast float %2822, %2824
  %2827 = fadd fast float %2823, %2825
  %2828 = uitofp i32 %2753 to float
  %2829 = uitofp i32 %2754 to float
  %2830 = fdiv fast float %2826, %2828
  %2831 = fdiv fast float %2827, %2829
  br label %2832

; <label>:2832                                    ; preds = %2807, %2734
  %2833 = phi float [ %2830, %2807 ], [ %2802, %2734 ]
  %2834 = phi float [ %2831, %2807 ], [ %2803, %2734 ]
  %2835 = and i32 %2728, 16777216
  %2836 = icmp eq i32 %2835, 0
  br i1 %2836, label %2946, label %2837

; <label>:2837                                    ; preds = %2832
  %2838 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2839 = extractvalue %dx.types.CBufRet.f32 %2838, 0
  %2840 = extractvalue %dx.types.CBufRet.f32 %2838, 1
  %2841 = extractvalue %dx.types.CBufRet.f32 %2838, 2
  %2842 = fadd fast float %2839, %141
  %2843 = fadd fast float %2840, %142
  %2844 = fadd fast float %2841, %143
  %2845 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2846 = extractvalue %dx.types.CBufRet.f32 %2845, 0
  %2847 = call float @dx.op.unary.f32(i32 7, float %2846)  ; Saturate(value)
  %2848 = icmp eq i32 %44, 65535
  br i1 %2848, label %2943, label %2849

; <label>:2849                                    ; preds = %2837
  %2850 = lshr i32 %44, 1
  %2851 = shl i32 %2850, 2
  %2852 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2851, i32 undef)  ; BufferLoad(srv,index,wot)
  %2853 = extractvalue %dx.types.ResRet.i32 %2852, 0
  %2854 = and i32 %44, 1
  %2855 = icmp ne i32 %2854, 0
  %2856 = lshr i32 %2853, 16
  %2857 = and i32 %2853, 65535
  %2858 = select i1 %2855, i32 %2856, i32 %2857
  %2859 = icmp eq i32 %2858, 65535
  br i1 %2859, label %2939, label %2860

; <label>:2860                                    ; preds = %2849
  %2861 = mul nuw nsw i32 %2858, 40
  %2862 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.f32 %2862, 0
  %2864 = extractvalue %dx.types.ResRet.f32 %2862, 1
  %2865 = extractvalue %dx.types.ResRet.f32 %2862, 2
  %2866 = add nuw nsw i32 %2861, 12
  %2867 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2866, i32 undef)  ; BufferLoad(srv,index,wot)
  %2868 = extractvalue %dx.types.ResRet.f32 %2867, 0
  %2869 = extractvalue %dx.types.ResRet.f32 %2867, 1
  %2870 = extractvalue %dx.types.ResRet.f32 %2867, 2
  %2871 = add nuw nsw i32 %2861, 24
  %2872 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2871, i32 undef)  ; BufferLoad(srv,index,wot)
  %2873 = extractvalue %dx.types.ResRet.f32 %2872, 0
  %2874 = extractvalue %dx.types.ResRet.f32 %2872, 1
  %2875 = extractvalue %dx.types.ResRet.f32 %2872, 2
  %2876 = add nuw nsw i32 %2861, 36
  %2877 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2876, i32 undef)  ; BufferLoad(srv,index,wot)
  %2878 = extractvalue %dx.types.ResRet.f32 %2877, 0
  %2879 = fsub fast float %2842, %2863
  %2880 = fsub fast float %2843, %2864
  %2881 = fsub fast float %2844, %2865
  %2882 = fmul fast float %2878, %2879
  %2883 = fmul fast float %2878, %2880
  %2884 = fmul fast float %2878, %2881
  %2885 = call float @dx.op.unary.f32(i32 27, float %2882)  ; Round_ni(value)
  %2886 = call float @dx.op.unary.f32(i32 27, float %2883)  ; Round_ni(value)
  %2887 = call float @dx.op.unary.f32(i32 27, float %2884)  ; Round_ni(value)
  %2888 = fadd fast float %2885, 5.000000e-01
  %2889 = fadd fast float %2886, 5.000000e-01
  %2890 = fadd fast float %2887, 5.000000e-01
  %2891 = fmul fast float %2888, %2868
  %2892 = fmul fast float %2889, %2869
  %2893 = fmul fast float %2890, %2870
  %2894 = shl i32 %44, 2
  %2895 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2894, i32 undef)  ; BufferLoad(srv,index,wot)
  %2896 = extractvalue %dx.types.ResRet.i32 %2895, 0
  %2897 = add i32 %2896, 0
  %2898 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2897, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2899 = call float @dx.op.unary.f32(i32 22, float %2891)  ; Frc(value)
  %2900 = call float @dx.op.unary.f32(i32 22, float %2892)  ; Frc(value)
  %2901 = call float @dx.op.unary.f32(i32 22, float %2893)  ; Frc(value)
  %2902 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2898, %dx.types.Handle %40, float %2899, float %2900, float %2901, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2903 = extractvalue %dx.types.ResRet.f32 %2902, 0
  %2904 = extractvalue %dx.types.ResRet.f32 %2902, 1
  %2905 = extractvalue %dx.types.ResRet.f32 %2902, 2
  %2906 = fmul fast float %2903, 1.023000e+03
  %2907 = fmul fast float %2904, 1.023000e+03
  %2908 = fmul fast float %2905, 1.023000e+03
  %2909 = fadd fast float %2906, 5.000000e-01
  %2910 = fadd fast float %2907, 5.000000e-01
  %2911 = fadd fast float %2908, 5.000000e-01
  %2912 = call float @dx.op.unary.f32(i32 27, float %2909)  ; Round_ni(value)
  %2913 = call float @dx.op.unary.f32(i32 27, float %2910)  ; Round_ni(value)
  %2914 = call float @dx.op.unary.f32(i32 27, float %2911)  ; Round_ni(value)
  %2915 = fsub fast float %2882, %2885
  %2916 = fsub fast float %2883, %2886
  %2917 = fsub fast float %2884, %2887
  %2918 = fmul fast float %2915, 7.500000e-01
  %2919 = fmul fast float %2916, 7.500000e-01
  %2920 = fmul fast float %2917, 7.500000e-01
  %2921 = fadd fast float %2885, 1.250000e-01
  %2922 = fadd fast float %2921, %2918
  %2923 = fadd fast float %2922, %2912
  %2924 = fadd fast float %2886, 1.250000e-01
  %2925 = fadd fast float %2924, %2919
  %2926 = fadd fast float %2925, %2913
  %2927 = fadd fast float %2887, 1.250000e-01
  %2928 = fadd fast float %2927, %2920
  %2929 = fadd fast float %2928, %2914
  %2930 = fmul fast float %2923, %2873
  %2931 = fmul fast float %2926, %2874
  %2932 = fmul fast float %2929, %2875
  %2933 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2894, i32 undef)  ; BufferLoad(srv,index,wot)
  %2934 = extractvalue %dx.types.ResRet.i32 %2933, 0
  %2935 = add i32 %2934, 0
  %2936 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2935, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2937 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2936, %dx.types.Handle %38, float %2930, float %2931, float %2932, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2938 = extractvalue %dx.types.ResRet.f32 %2937, 0
  br label %2939

; <label>:2939                                    ; preds = %2860, %2849
  %2940 = phi float [ %2938, %2860 ], [ -1.000000e+00, %2849 ]
  %2941 = fadd fast float %2940, %2847
  %2942 = call float @dx.op.unary.f32(i32 7, float %2941)  ; Saturate(value)
  br label %2943

; <label>:2943                                    ; preds = %2939, %2837
  %2944 = phi float [ %2942, %2939 ], [ %2847, %2837 ]
  %2945 = fmul fast float %2944, %420
  br label %2946

; <label>:2946                                    ; preds = %2943, %2832
  %2947 = phi float [ %2945, %2943 ], [ %420, %2832 ]
  %2948 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %2949 = extractvalue %dx.types.ResRet.i32 %2948, 0
  %2950 = and i32 %2949, 256
  %2951 = icmp eq i32 %2950, 0
  br i1 %2951, label %2998, label %2952

; <label>:2952                                    ; preds = %2946
  %2953 = add i32 %43, 452
  %2954 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2953, i32 undef)  ; BufferLoad(srv,index,wot)
  %2955 = extractvalue %dx.types.ResRet.i32 %2954, 0
  %2956 = add i32 %2955, 0
  %2957 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2956, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2958 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2957, %dx.types.Handle %75, float %2833, float %2834, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2959 = extractvalue %dx.types.ResRet.f32 %2958, 0
  %2960 = add i32 %43, 148
  %2961 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2960, i32 undef)  ; BufferLoad(srv,index,wot)
  %2962 = extractvalue %dx.types.ResRet.i32 %2961, 0
  %2963 = shl i32 %2962, 4
  %2964 = and i32 %2963, 32752
  %2965 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2964)  ; LegacyF16ToF32(value)
  %2966 = lshr i32 %2962, 7
  %2967 = and i32 %2966, 32752
  %2968 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2967)  ; LegacyF16ToF32(value)
  %2969 = fsub fast float 1.000000e+00, %2947
  %2970 = call float @dx.op.binary.f32(i32 35, float %2969, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2971 = bitcast float %2947 to i32
  %2972 = sitofp i32 %2971 to float
  %2973 = fadd fast float %2972, 0xC1CFBF8940000000
  %2974 = fmul fast float %2968, %2973
  %2975 = fadd fast float %2974, 0x41CFBF8940000000
  %2976 = fptosi float %2975 to i32
  %2977 = bitcast i32 %2976 to float
  %2978 = bitcast float %2970 to i32
  %2979 = sitofp i32 %2978 to float
  %2980 = fadd fast float %2979, 0xC1CFBF8940000000
  %2981 = fmul fast float %2980, %2968
  %2982 = fadd fast float %2981, 0x41CFBF8940000000
  %2983 = fptosi float %2982 to i32
  %2984 = bitcast i32 %2983 to float
  %2985 = fmul fast float %2977, %2965
  %2986 = fmul fast float %2984, %2965
  %2987 = fsub fast float %2970, %2985
  %2988 = fadd fast float %2986, %2970
  %2989 = call float @dx.op.unary.f32(i32 7, float %2987)  ; Saturate(value)
  %2990 = call float @dx.op.unary.f32(i32 7, float %2988)  ; Saturate(value)
  %2991 = fsub fast float %2959, %2989
  %2992 = fsub fast float %2990, %2989
  %2993 = bitcast float %2992 to i32
  %2994 = sub nsw i32 2129859010, %2993
  %2995 = bitcast i32 %2994 to float
  %2996 = fmul fast float %2995, %2991
  %2997 = call float @dx.op.unary.f32(i32 7, float %2996)  ; Saturate(value)
  br label %2998

; <label>:2998                                    ; preds = %2952, %2946
  %2999 = phi float [ %2997, %2952 ], [ %2947, %2946 ]
  %3000 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3001 = extractvalue %dx.types.ResRet.i32 %3000, 0
  %3002 = and i32 %3001, 128
  %3003 = icmp eq i32 %3002, 0
  br i1 %3003, label %3020, label %3004

; <label>:3004                                    ; preds = %2998
  %3005 = add i32 %43, 436
  %3006 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3005, i32 undef)  ; BufferLoad(srv,index,wot)
  %3007 = extractvalue %dx.types.ResRet.i32 %3006, 0
  %3008 = add i32 %3007, 0
  %3009 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3008, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3010 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3009, %dx.types.Handle %75, float %2833, float %2834, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3011 = extractvalue %dx.types.ResRet.f32 %3010, 0
  %3012 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3013 = extractvalue %dx.types.ResRet.i32 %3012, 0
  %3014 = and i32 %3013, 524288
  %3015 = icmp ne i32 %3014, 0
  %3016 = fcmp fast ogt float %3011, 0x3FE0101020000000
  %3017 = select i1 %3016, float 1.000000e+00, float 0.000000e+00
  %3018 = select i1 %3015, float %3017, float %3011
  %3019 = fmul fast float %3018, %2999
  br label %3020

; <label>:3020                                    ; preds = %3004, %2998
  %3021 = phi float [ %3019, %3004 ], [ %2999, %2998 ]
  %3022 = fcmp fast ult float %3021, 0x3F70101020000000
  br i1 %3022, label %3604, label %3023

; <label>:3023                                    ; preds = %3020
  %3024 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3025 = extractvalue %dx.types.ResRet.i32 %3024, 0
  %3026 = and i32 %3025, 16
  %3027 = icmp eq i32 %3026, 0
  br i1 %3027, label %3226, label %3028

; <label>:3028                                    ; preds = %3023
  %3029 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3030 = extractvalue %dx.types.ResRet.i32 %3029, 0
  %3031 = add i32 %43, 388
  %3032 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3031, i32 undef)  ; BufferLoad(srv,index,wot)
  %3033 = extractvalue %dx.types.ResRet.i32 %3032, 0
  %3034 = add i32 %3033, 0
  %3035 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3034, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3036 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3035, %dx.types.Handle %74, float %2833, float %2834, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3037 = extractvalue %dx.types.ResRet.f32 %3036, 0
  %3038 = extractvalue %dx.types.ResRet.f32 %3036, 1
  %3039 = extractvalue %dx.types.ResRet.f32 %3036, 2
  %3040 = extractvalue %dx.types.ResRet.f32 %3036, 3
  %3041 = and i32 %3030, 255
  %3042 = uitofp i32 %3041 to float
  %3043 = lshr i32 %3030, 8
  %3044 = and i32 %3043, 255
  %3045 = uitofp i32 %3044 to float
  %3046 = fmul fast float %3040, %3042
  %3047 = fadd fast float %3046, %3045
  %3048 = fmul fast float %3047, 0x3F70101000000000
  %3049 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3050 = extractvalue %dx.types.ResRet.i32 %3049, 0
  %3051 = and i32 %3050, 512
  %3052 = icmp eq i32 %3051, 0
  br i1 %3052, label %3061, label %3053

; <label>:3053                                    ; preds = %3028
  %3054 = add i32 %43, 468
  %3055 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3054, i32 undef)  ; BufferLoad(srv,index,wot)
  %3056 = extractvalue %dx.types.ResRet.i32 %3055, 0
  %3057 = add i32 %3056, 0
  %3058 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3057, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3059 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3058, %dx.types.Handle %75, float %2833, float %2834, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3060 = extractvalue %dx.types.ResRet.f32 %3059, 0
  br label %3061

; <label>:3061                                    ; preds = %3053, %3028
  %3062 = phi float [ %3060, %3053 ], [ 1.000000e+00, %3028 ]
  %3063 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3064 = extractvalue %dx.types.ResRet.i32 %3063, 0
  %3065 = and i32 %3064, 33554432
  %3066 = icmp eq i32 %3065, 0
  br i1 %3066, label %3173, label %3067

; <label>:3067                                    ; preds = %3061
  %3068 = add i32 %43, 272
  %3069 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3068, i32 undef)  ; BufferLoad(srv,index,wot)
  %3070 = extractvalue %dx.types.ResRet.i32 %3069, 0
  %3071 = and i32 %3070, 65535
  %3072 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3071)  ; LegacyF16ToF32(value)
  %3073 = lshr i32 %3070, 16
  %3074 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3073)  ; LegacyF16ToF32(value)
  %3075 = add i32 %43, 276
  %3076 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3075, i32 undef)  ; BufferLoad(srv,index,wot)
  %3077 = extractvalue %dx.types.ResRet.i32 %3076, 0
  %3078 = and i32 %3077, 65535
  %3079 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3078)  ; LegacyF16ToF32(value)
  %3080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3081 = extractvalue %dx.types.ResRet.i32 %3080, 0
  %3082 = lshr i32 %3081, 24
  %3083 = uitofp i32 %3082 to float
  %3084 = fmul fast float %3083, 0x3F70101020000000
  %3085 = and i32 %3081, 255
  %3086 = uitofp i32 %3085 to float
  %3087 = fmul fast float %3086, 0x3F70101020000000
  %3088 = lshr i32 %3081, 8
  %3089 = and i32 %3088, 255
  %3090 = uitofp i32 %3089 to float
  %3091 = fmul fast float %3090, 0x3F70101020000000
  %3092 = lshr i32 %3081, 16
  %3093 = and i32 %3092, 255
  %3094 = uitofp i32 %3093 to float
  %3095 = fmul fast float %3094, 0x3F70101020000000
  %3096 = add i32 %43, 268
  %3097 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3096, i32 undef)  ; BufferLoad(srv,index,wot)
  %3098 = extractvalue %dx.types.ResRet.i32 %3097, 0
  %3099 = lshr i32 %3098, 24
  %3100 = uitofp i32 %3099 to float
  %3101 = fmul fast float %3100, 0x3F70101020000000
  %3102 = and i32 %3098, 255
  %3103 = uitofp i32 %3102 to float
  %3104 = fmul fast float %3103, 0x3F70101020000000
  %3105 = lshr i32 %3098, 8
  %3106 = and i32 %3105, 255
  %3107 = uitofp i32 %3106 to float
  %3108 = fmul fast float %3107, 0x3F70101020000000
  %3109 = lshr i32 %3098, 16
  %3110 = and i32 %3109, 255
  %3111 = uitofp i32 %3110 to float
  %3112 = fmul fast float %3111, 0x3F70101020000000
  %3113 = bitcast float %3037 to i32
  %3114 = ashr i32 %3113, 1
  %3115 = sub nsw i32 1597463174, %3114
  %3116 = bitcast i32 %3115 to float
  %3117 = fmul fast float %3037, 5.000000e-01
  %3118 = fmul fast float %3116, %3116
  %3119 = fmul fast float %3118, %3117
  %3120 = fsub fast float 1.500000e+00, %3119
  %3121 = fmul fast float %3116, %3037
  %3122 = fmul fast float %3121, %3120
  %3123 = bitcast float %3038 to i32
  %3124 = ashr i32 %3123, 1
  %3125 = sub nsw i32 1597463174, %3124
  %3126 = bitcast i32 %3125 to float
  %3127 = fmul fast float %3038, 5.000000e-01
  %3128 = fmul fast float %3126, %3126
  %3129 = fmul fast float %3128, %3127
  %3130 = fsub fast float 1.500000e+00, %3129
  %3131 = fmul fast float %3126, %3038
  %3132 = fmul fast float %3131, %3130
  %3133 = bitcast float %3039 to i32
  %3134 = ashr i32 %3133, 1
  %3135 = sub nsw i32 1597463174, %3134
  %3136 = bitcast i32 %3135 to float
  %3137 = fmul fast float %3039, 5.000000e-01
  %3138 = fmul fast float %3136, %3136
  %3139 = fmul fast float %3138, %3137
  %3140 = fsub fast float 1.500000e+00, %3139
  %3141 = fmul fast float %3136, %3039
  %3142 = fmul fast float %3141, %3140
  %3143 = fsub fast float %3122, %3104
  %3144 = fsub fast float %3132, %3108
  %3145 = fsub fast float %3142, %3112
  %3146 = fmul fast float %3143, %3072
  %3147 = fmul fast float %3144, %3074
  %3148 = fmul fast float %3145, %3079
  %3149 = fadd fast float %3146, %3087
  %3150 = fadd fast float %3147, %3091
  %3151 = fadd fast float %3148, %3095
  %3152 = call float @dx.op.unary.f32(i32 7, float %3149)  ; Saturate(value)
  %3153 = call float @dx.op.unary.f32(i32 7, float %3150)  ; Saturate(value)
  %3154 = call float @dx.op.unary.f32(i32 7, float %3151)  ; Saturate(value)
  %3155 = fmul fast float %3152, %3152
  %3156 = fmul fast float %3153, %3153
  %3157 = fmul fast float %3154, %3154
  %3158 = fsub fast float %3155, %3037
  %3159 = fsub fast float %3156, %3038
  %3160 = fsub fast float %3157, %3039
  %3161 = fmul fast float %3158, %3062
  %3162 = fmul fast float %3159, %3062
  %3163 = fmul fast float %3160, %3062
  %3164 = fadd fast float %3161, %3037
  %3165 = fadd fast float %3162, %3038
  %3166 = fadd fast float %3163, %3039
  %3167 = fadd fast float %3084, %3048
  %3168 = fsub fast float %3167, %3101
  %3169 = call float @dx.op.unary.f32(i32 7, float %3168)  ; Saturate(value)
  %3170 = fsub fast float %3169, %3048
  %3171 = fmul fast float %3170, %3062
  %3172 = fadd fast float %3171, %3048
  br label %3226

; <label>:3173                                    ; preds = %3061
  %3174 = and i32 %3064, 134217728
  %3175 = icmp eq i32 %3174, 0
  br i1 %3175, label %3210, label %3176

; <label>:3176                                    ; preds = %3173
  %3177 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %3178 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %3179 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %3180 = fadd fast float %3177, -5.000000e-01
  %3181 = fadd fast float %3178, -5.000000e-01
  %3182 = fadd fast float %3179, -5.000000e-01
  %3183 = fmul fast float %3180, %3062
  %3184 = fmul fast float %3181, %3062
  %3185 = fmul fast float %3182, %3062
  %3186 = fadd fast float %3183, 5.000000e-01
  %3187 = fadd fast float %3184, 5.000000e-01
  %3188 = fadd fast float %3185, 5.000000e-01
  %3189 = call float @dx.op.unary.f32(i32 24, float %3037)  ; Sqrt(value)
  %3190 = call float @dx.op.unary.f32(i32 24, float %3038)  ; Sqrt(value)
  %3191 = call float @dx.op.unary.f32(i32 24, float %3039)  ; Sqrt(value)
  %3192 = fmul fast float %3186, 2.000000e+00
  %3193 = fsub fast float 1.000000e+00, %3192
  %3194 = fmul fast float %3193, %3189
  %3195 = fadd fast float %3194, %3192
  %3196 = fmul fast float %3195, %3189
  %3197 = fmul fast float %3187, 2.000000e+00
  %3198 = fsub fast float 1.000000e+00, %3197
  %3199 = fmul fast float %3198, %3190
  %3200 = fadd fast float %3199, %3197
  %3201 = fmul fast float %3200, %3190
  %3202 = fmul fast float %3188, 2.000000e+00
  %3203 = fsub fast float 1.000000e+00, %3202
  %3204 = fmul fast float %3203, %3191
  %3205 = fadd fast float %3204, %3202
  %3206 = fmul fast float %3205, %3191
  %3207 = fmul fast float %3196, %3196
  %3208 = fmul fast float %3201, %3201
  %3209 = fmul fast float %3206, %3206
  br label %3226

; <label>:3210                                    ; preds = %3173
  %3211 = fmul fast float %341, %341
  %3212 = fmul fast float %345, %345
  %3213 = fmul fast float %349, %349
  %3214 = fadd fast float %3211, -1.000000e+00
  %3215 = fadd fast float %3212, -1.000000e+00
  %3216 = fadd fast float %3213, -1.000000e+00
  %3217 = fmul fast float %3062, %3214
  %3218 = fmul fast float %3062, %3215
  %3219 = fmul fast float %3062, %3216
  %3220 = fadd fast float %3217, 1.000000e+00
  %3221 = fadd fast float %3218, 1.000000e+00
  %3222 = fadd fast float %3219, 1.000000e+00
  %3223 = fmul fast float %3220, %3037
  %3224 = fmul fast float %3221, %3038
  %3225 = fmul fast float %3222, %3039
  br label %3226

; <label>:3226                                    ; preds = %3210, %3176, %3067, %3023
  %3227 = phi float [ %3172, %3067 ], [ %3048, %3176 ], [ %3048, %3210 ], [ 0x3FA23C0BE0000000, %3023 ]
  %3228 = phi float [ %3164, %3067 ], [ %3207, %3176 ], [ %3223, %3210 ], [ 1.000000e+00, %3023 ]
  %3229 = phi float [ %3165, %3067 ], [ %3208, %3176 ], [ %3224, %3210 ], [ 1.000000e+00, %3023 ]
  %3230 = phi float [ %3166, %3067 ], [ %3209, %3176 ], [ %3225, %3210 ], [ 1.000000e+00, %3023 ]
  %3231 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3232 = extractvalue %dx.types.CBufRet.i32 %3231, 1
  %3233 = and i32 %3232, 1
  %3234 = icmp ne i32 %3233, 0
  %3235 = add i32 %43, 356
  %3236 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3235, i32 undef)  ; BufferLoad(srv,index,wot)
  %3237 = extractvalue %dx.types.ResRet.i32 %3236, 0
  %3238 = and i32 %3237, 32
  %3239 = icmp ne i32 %3238, 0
  %3240 = and i1 %3234, %3239
  %3241 = select i1 %3240, float 1.000000e+00, float %3228
  %3242 = select i1 %3240, float 0x3FD3333340000000, float %3229
  %3243 = select i1 %3240, float 0x3FD3333340000000, float %3230
  %3244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3245 = extractvalue %dx.types.ResRet.i32 %3244, 0
  %3246 = and i32 %3245, 32
  %3247 = icmp eq i32 %3246, 0
  br i1 %3247, label %3320, label %3248

; <label>:3248                                    ; preds = %3226
  %3249 = add i32 %43, 140
  %3250 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3249, i32 undef)  ; BufferLoad(srv,index,wot)
  %3251 = extractvalue %dx.types.ResRet.i32 %3250, 0
  %3252 = add i32 %43, 404
  %3253 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3252, i32 undef)  ; BufferLoad(srv,index,wot)
  %3254 = extractvalue %dx.types.ResRet.i32 %3253, 0
  %3255 = add i32 %3254, 0
  %3256 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3255, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3257 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3256, %dx.types.Handle %74, float %2833, float %2834, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3258 = extractvalue %dx.types.ResRet.f32 %3257, 0
  %3259 = extractvalue %dx.types.ResRet.f32 %3257, 1
  %3260 = extractvalue %dx.types.ResRet.f32 %3257, 2
  %3261 = extractvalue %dx.types.ResRet.f32 %3257, 3
  %3262 = and i32 %3251, 255
  %3263 = uitofp i32 %3262 to float
  %3264 = lshr i32 %3251, 8
  %3265 = and i32 %3264, 255
  %3266 = uitofp i32 %3265 to float
  %3267 = lshr i32 %3251, 16
  %3268 = and i32 %3267, 255
  %3269 = uitofp i32 %3268 to float
  %3270 = fmul fast float %3269, 0x3F70101000000000
  %3271 = fmul fast float %3258, %3263
  %3272 = fadd fast float %3271, %3266
  %3273 = fmul fast float %3272, 0x3F70101000000000
  %3274 = fadd fast float %3259, -5.000000e-01
  %3275 = fadd fast float %3261, -5.000000e-01
  %3276 = fmul fast float %3274, %3270
  %3277 = fmul fast float %3275, %3270
  %3278 = fadd fast float %3276, 5.000000e-01
  %3279 = fadd fast float %3277, 5.000000e-01
  %3280 = fmul fast float %3278, 2.000000e+00
  %3281 = fadd fast float %3280, -1.000000e+00
  %3282 = fmul fast float %3279, 2.000000e+00
  %3283 = fadd fast float %3282, -1.000000e+00
  %3284 = fadd fast float %3281, %3283
  %3285 = fmul fast float %3284, 5.000000e-01
  %3286 = fsub fast float %3281, %3283
  %3287 = fmul fast float %3286, 5.000000e-01
  %3288 = call float @dx.op.unary.f32(i32 6, float %3285)  ; FAbs(value)
  %3289 = fsub fast float 1.000000e+00, %3288
  %3290 = call float @dx.op.unary.f32(i32 6, float %3287)  ; FAbs(value)
  %3291 = fsub fast float %3289, %3290
  %3292 = call float @dx.op.dot3.f32(i32 55, float %3285, float %3287, float %3291, float %3285, float %3287, float %3291)  ; Dot3(ax,ay,az,bx,by,bz)
  %3293 = call float @dx.op.unary.f32(i32 25, float %3292)  ; Rsqrt(value)
  %3294 = fmul fast float %3285, %3293
  %3295 = fmul fast float %3287, %3293
  %3296 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3297 = extractvalue %dx.types.ResRet.i32 %3296, 0
  %3298 = and i32 %3297, 67108864
  %3299 = icmp eq i32 %3298, 0
  br i1 %3299, label %3316, label %3300

; <label>:3300                                    ; preds = %3248
  %3301 = add i32 %43, 328
  %3302 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3301, i32 undef)  ; BufferLoad(srv,index,wot)
  %3303 = extractvalue %dx.types.ResRet.i32 %3302, 0
  %3304 = and i32 %3303, 65535
  %3305 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3304)  ; LegacyF16ToF32(value)
  %3306 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2743, i32 undef)  ; BufferLoad(srv,index,wot)
  %3307 = extractvalue %dx.types.ResRet.i32 %3306, 0
  %3308 = and i32 %3307, 65535
  %3309 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3308)  ; LegacyF16ToF32(value)
  %3310 = lshr i32 %3303, 16
  %3311 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3310)  ; LegacyF16ToF32(value)
  %3312 = fsub fast float %3273, %3311
  %3313 = fmul fast float %3312, %3305
  %3314 = fadd fast float %3313, %3309
  %3315 = call float @dx.op.unary.f32(i32 7, float %3314)  ; Saturate(value)
  br label %3316

; <label>:3316                                    ; preds = %3300, %3248
  %3317 = phi float [ %3315, %3300 ], [ %3273, %3248 ]
  %3318 = call float @dx.op.dot2.f32(i32 54, float %3294, float %3295, float %2737, float %2738)  ; Dot2(ax,ay,bx,by)
  %3319 = call float @dx.op.dot2.f32(i32 54, float %3294, float %3295, float %2739, float %2740)  ; Dot2(ax,ay,bx,by)
  br label %3320

; <label>:3320                                    ; preds = %3316, %3226
  %3321 = phi float [ %3317, %3316 ], [ 0x3FD6666660000000, %3226 ]
  %3322 = phi float [ %3318, %3316 ], [ 0.000000e+00, %3226 ]
  %3323 = phi float [ %3319, %3316 ], [ 0.000000e+00, %3226 ]
  %3324 = phi float [ %3260, %3316 ], [ 1.000000e+00, %3226 ]
  %3325 = add i32 %43, 208
  %3326 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3325, i32 undef)  ; BufferLoad(srv,index,wot)
  %3327 = extractvalue %dx.types.ResRet.i32 %3326, 0
  %3328 = lshr i32 %3327, 22
  %3329 = shl nuw nsw i32 %3328, 5
  %3330 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3329)  ; LegacyF16ToF32(value)
  %3331 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3332 = extractvalue %dx.types.ResRet.i32 %3331, 0
  %3333 = and i32 %3332, 64
  %3334 = icmp eq i32 %3333, 0
  br i1 %3334, label %3368, label %3335

; <label>:3335                                    ; preds = %3320
  %3336 = add i32 %43, 420
  %3337 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3338 = extractvalue %dx.types.ResRet.i32 %3337, 0
  %3339 = add i32 %3338, 0
  %3340 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3339, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3341 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3342 = extractvalue %dx.types.ResRet.i32 %3341, 0
  %3343 = and i32 %3342, 131072
  %3344 = icmp eq i32 %3343, 0
  %3345 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3340, %dx.types.Handle %74, float %2833, float %2834, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3346 = extractvalue %dx.types.ResRet.f32 %3345, 0
  %3347 = extractvalue %dx.types.ResRet.f32 %3345, 1
  %3348 = extractvalue %dx.types.ResRet.f32 %3345, 2
  %3349 = fmul fast float %3346, %329
  %3350 = fmul fast float %3347, %332
  %3351 = fmul fast float %3348, %335
  br i1 %3344, label %3358, label %3352

; <label>:3352                                    ; preds = %3335
  %3353 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3354 = extractvalue %dx.types.CBufRet.f32 %3353, 0
  %3355 = fmul fast float %3354, %3349
  %3356 = fmul fast float %3354, %3350
  %3357 = fmul fast float %3354, %3351
  br label %3358

; <label>:3358                                    ; preds = %3352, %3335
  %3359 = phi float [ %3355, %3352 ], [ %3349, %3335 ]
  %3360 = phi float [ %3356, %3352 ], [ %3350, %3335 ]
  %3361 = phi float [ %3357, %3352 ], [ %3351, %3335 ]
  %3362 = fmul fast float %3359, %3330
  %3363 = select i1 %183, float %3362, float %3359
  %3364 = call float @dx.op.dot3.f32(i32 55, float %3363, float %3360, float %3361, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3365 = select i1 %183, float 0.000000e+00, float %3359
  %3366 = select i1 %183, float %3364, float %3360
  %3367 = select i1 %183, float 0.000000e+00, float %3361
  br label %3368

; <label>:3368                                    ; preds = %3358, %3320
  %3369 = phi float [ %3365, %3358 ], [ 0.000000e+00, %3320 ]
  %3370 = phi float [ %3366, %3358 ], [ 0.000000e+00, %3320 ]
  %3371 = phi float [ %3367, %3358 ], [ 0.000000e+00, %3320 ]
  %3372 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3373 = extractvalue %dx.types.ResRet.i32 %3372, 0
  %3374 = and i32 %3373, 26624
  %3375 = icmp eq i32 %3374, 0
  br i1 %3375, label %3399, label %3376

; <label>:3376                                    ; preds = %3368
  %3377 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3378 = extractvalue %dx.types.ResRet.i32 %3377, 0
  %3379 = and i32 %3378, 16384
  %3380 = icmp eq i32 %3379, 0
  br i1 %3380, label %3399, label %3381

; <label>:3381                                    ; preds = %3376
  %3382 = and i32 %3378, 1048576
  %3383 = icmp ne i32 %3382, 0
  %3384 = add i32 %43, 484
  %3385 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3384, i32 undef)  ; BufferLoad(srv,index,wot)
  %3386 = extractvalue %dx.types.ResRet.i32 %3385, 0
  %3387 = add i32 %3386, 0
  %3388 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3387, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3389 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3388, %dx.types.Handle %75, float %2833, float %2834, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3390 = extractvalue %dx.types.ResRet.f32 %3389, 0
  %3391 = add i32 %43, 144
  %3392 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3391, i32 undef)  ; BufferLoad(srv,index,wot)
  %3393 = extractvalue %dx.types.ResRet.i32 %3392, 0
  %3394 = lshr i32 %3393, 24
  %3395 = uitofp i32 %3394 to float
  %3396 = fmul fast float %3390, 0x3F70101020000000
  %3397 = select i1 %3383, float 0x3F70101020000000, float %3396
  %3398 = fmul fast float %3397, %3395
  br label %3399

; <label>:3399                                    ; preds = %3381, %3376, %3368
  %3400 = phi float [ %3398, %3381 ], [ 0.000000e+00, %3376 ], [ 0.000000e+00, %3368 ]
  %3401 = add i32 %43, 144
  %3402 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3401, i32 undef)  ; BufferLoad(srv,index,wot)
  %3403 = extractvalue %dx.types.ResRet.i32 %3402, 0
  %3404 = and i32 %3403, 255
  %3405 = uitofp i32 %3404 to float
  %3406 = lshr i32 %3403, 8
  %3407 = and i32 %3406, 255
  %3408 = uitofp i32 %3407 to float
  %3409 = call float @dx.op.dot3.f32(i32 55, float %3241, float %3242, float %3243, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3410 = fmul fast float %3408, %3409
  %3411 = fadd fast float %3410, %3405
  %3412 = fmul fast float %3411, 0x3F70101020000000
  %3413 = call float @dx.op.unary.f32(i32 7, float %3412)  ; Saturate(value)
  br i1 %2725, label %3414, label %3422

; <label>:3414                                    ; preds = %3399
  %3415 = fsub fast float 1.000000e+00, %3021
  %3416 = fmul fast float %3415, %2713
  %3417 = fmul fast float %3415, %2714
  %3418 = fmul fast float %3415, %2715
  %3419 = fmul fast float %3415, %2716
  %3420 = fmul fast float %3415, %2717
  %3421 = fmul fast float %3415, %2718
  br label %3422

; <label>:3422                                    ; preds = %3414, %3399
  %3423 = phi float [ %3416, %3414 ], [ %2713, %3399 ]
  %3424 = phi float [ %3417, %3414 ], [ %2714, %3399 ]
  %3425 = phi float [ %3418, %3414 ], [ %2715, %3399 ]
  %3426 = phi float [ %3419, %3414 ], [ %2716, %3399 ]
  %3427 = phi float [ %3420, %3414 ], [ %2717, %3399 ]
  %3428 = phi float [ %3421, %3414 ], [ %2718, %3399 ]
  %3429 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2726, i32 undef)  ; BufferLoad(srv,index,wot)
  %3430 = extractvalue %dx.types.ResRet.i32 %3429, 0
  %3431 = and i32 %3430, 3
  %3432 = icmp eq i32 %3431, 3
  br i1 %3432, label %3511, label %3433

; <label>:3433                                    ; preds = %3422
  %3434 = and i32 %3430, 16
  %3435 = icmp ne i32 %3434, 0
  %3436 = select i1 %3435, float %3021, float 0.000000e+00
  %3437 = icmp eq i32 %3431, 0
  br i1 %3437, label %3438, label %3466

; <label>:3438                                    ; preds = %3433
  %3439 = and i32 %3430, 64
  %3440 = icmp ne i32 %3439, 0
  %3441 = select i1 %3440, float %3021, float 0.000000e+00
  %3442 = fsub fast float %3241, %3423
  %3443 = fsub fast float %3242, %3424
  %3444 = fsub fast float %3243, %3425
  %3445 = fmul fast float %3436, %3442
  %3446 = fmul fast float %3436, %3443
  %3447 = fmul fast float %3436, %3444
  %3448 = fadd fast float %3445, %3423
  %3449 = fadd fast float %3446, %3424
  %3450 = fadd fast float %3447, %3425
  %3451 = fsub fast float %3227, %2719
  %3452 = fmul fast float %3436, %3451
  %3453 = fadd fast float %3452, %2719
  %3454 = fsub fast float %3369, %3426
  %3455 = fsub fast float %3370, %3427
  %3456 = fsub fast float %3371, %3428
  %3457 = fmul fast float %3441, %3454
  %3458 = fmul fast float %3441, %3455
  %3459 = fmul fast float %3441, %3456
  %3460 = fadd fast float %3457, %3426
  %3461 = fadd fast float %3458, %3427
  %3462 = fadd fast float %3459, %3428
  %3463 = fsub fast float %3413, %2723
  %3464 = fmul fast float %3436, %3463
  %3465 = fadd fast float %3464, %2723
  br label %3511

; <label>:3466                                    ; preds = %3433
  %3467 = icmp eq i32 %3431, 1
  br i1 %3467, label %3468, label %3481

; <label>:3468                                    ; preds = %3466
  %3469 = fadd fast float %3241, -1.000000e+00
  %3470 = fadd fast float %3242, -1.000000e+00
  %3471 = fadd fast float %3243, -1.000000e+00
  %3472 = fmul fast float %3436, %3469
  %3473 = fmul fast float %3436, %3470
  %3474 = fmul fast float %3436, %3471
  %3475 = fadd fast float %3472, 1.000000e+00
  %3476 = fadd fast float %3473, 1.000000e+00
  %3477 = fadd fast float %3474, 1.000000e+00
  %3478 = fmul fast float %3475, %3423
  %3479 = fmul fast float %3476, %3424
  %3480 = fmul fast float %3477, %3425
  br label %3511

; <label>:3481                                    ; preds = %3466
  %3482 = icmp eq i32 %3431, 2
  br i1 %3482, label %3483, label %3511

; <label>:3483                                    ; preds = %3481
  %3484 = call float @dx.op.unary.f32(i32 24, float %3241)  ; Sqrt(value)
  %3485 = call float @dx.op.unary.f32(i32 24, float %3242)  ; Sqrt(value)
  %3486 = call float @dx.op.unary.f32(i32 24, float %3243)  ; Sqrt(value)
  %3487 = fadd fast float %3484, -5.000000e-01
  %3488 = fadd fast float %3485, -5.000000e-01
  %3489 = fadd fast float %3486, -5.000000e-01
  %3490 = fmul fast float %3487, %3436
  %3491 = fmul fast float %3488, %3436
  %3492 = fmul fast float %3489, %3436
  %3493 = fadd fast float %3490, 5.000000e-01
  %3494 = fadd fast float %3491, 5.000000e-01
  %3495 = fadd fast float %3492, 5.000000e-01
  %3496 = fmul fast float %3493, 2.000000e+00
  %3497 = fsub fast float 1.000000e+00, %3496
  %3498 = fmul fast float %3497, %3423
  %3499 = fadd fast float %3498, %3496
  %3500 = fmul fast float %3499, %3423
  %3501 = fmul fast float %3494, 2.000000e+00
  %3502 = fsub fast float 1.000000e+00, %3501
  %3503 = fmul fast float %3502, %3424
  %3504 = fadd fast float %3503, %3501
  %3505 = fmul fast float %3504, %3424
  %3506 = fmul fast float %3495, 2.000000e+00
  %3507 = fsub fast float 1.000000e+00, %3506
  %3508 = fmul fast float %3507, %3425
  %3509 = fadd fast float %3508, %3506
  %3510 = fmul fast float %3509, %3425
  br label %3511

; <label>:3511                                    ; preds = %3483, %3481, %3468, %3438, %3422
  %3512 = phi float [ %3423, %3422 ], [ %3500, %3483 ], [ %3423, %3481 ], [ %3478, %3468 ], [ %3448, %3438 ]
  %3513 = phi float [ %3424, %3422 ], [ %3505, %3483 ], [ %3424, %3481 ], [ %3479, %3468 ], [ %3449, %3438 ]
  %3514 = phi float [ %3425, %3422 ], [ %3510, %3483 ], [ %3425, %3481 ], [ %3480, %3468 ], [ %3450, %3438 ]
  %3515 = phi float [ %3426, %3422 ], [ %3426, %3483 ], [ %3426, %3481 ], [ %3426, %3468 ], [ %3460, %3438 ]
  %3516 = phi float [ %3427, %3422 ], [ %3427, %3483 ], [ %3427, %3481 ], [ %3427, %3468 ], [ %3461, %3438 ]
  %3517 = phi float [ %3428, %3422 ], [ %3428, %3483 ], [ %3428, %3481 ], [ %3428, %3468 ], [ %3462, %3438 ]
  %3518 = phi float [ %2719, %3422 ], [ %2719, %3483 ], [ %2719, %3481 ], [ %2719, %3468 ], [ %3453, %3438 ]
  %3519 = phi float [ %2723, %3422 ], [ %2723, %3483 ], [ %2723, %3481 ], [ %2723, %3468 ], [ %3465, %3438 ]
  %3520 = and i32 %3430, 12
  %3521 = icmp eq i32 %3520, 12
  br i1 %3521, label %3604, label %3522

; <label>:3522                                    ; preds = %3511
  %3523 = and i32 %3430, 2097184
  %3524 = icmp eq i32 %3523, 2097184
  %3525 = select i1 %3524, float %3021, float 0.000000e+00
  %3526 = and i32 %3430, 4194336
  %3527 = icmp eq i32 %3526, 4194336
  %3528 = select i1 %3527, float %3021, float 0.000000e+00
  %3529 = and i32 %3430, 8388640
  %3530 = icmp eq i32 %3529, 8388640
  %3531 = select i1 %3530, float %3021, float 0.000000e+00
  %3532 = and i32 %3430, 16384
  %3533 = icmp ne i32 %3532, 0
  %3534 = select i1 %3533, float %3021, float 0.000000e+00
  %3535 = icmp eq i32 %3520, 0
  br i1 %3535, label %3536, label %3552

; <label>:3536                                    ; preds = %3522
  %3537 = fsub fast float %3322, %2711
  %3538 = fsub fast float %3323, %2712
  %3539 = fmul fast float %3525, %3537
  %3540 = fmul fast float %3525, %3538
  %3541 = fadd fast float %3539, %2711
  %3542 = fadd fast float %3540, %2712
  %3543 = fsub fast float %3324, %2721
  %3544 = fmul fast float %3528, %3543
  %3545 = fadd fast float %3544, %2721
  %3546 = fsub fast float %3321, %2720
  %3547 = fmul fast float %3531, %3546
  %3548 = fadd fast float %3547, %2720
  %3549 = fsub fast float %3400, %2722
  %3550 = fmul fast float %3534, %3549
  %3551 = fadd fast float %3550, %2722
  br label %3604

; <label>:3552                                    ; preds = %3522
  %3553 = icmp eq i32 %3520, 4
  br i1 %3553, label %3554, label %3588

; <label>:3554                                    ; preds = %3552
  %3555 = fmul fast float %3525, %3322
  %3556 = fmul fast float %3525, %3323
  %3557 = fadd fast float %3555, %2711
  %3558 = fadd fast float %3556, %2712
  %3559 = call float @dx.op.binary.f32(i32 36, float %2721, float %3324)  ; FMin(a,b)
  %3560 = fsub fast float %3559, %2721
  %3561 = fmul fast float %3560, %3528
  %3562 = fadd fast float %3561, %2721
  %3563 = fadd fast float %3321, %2720
  %3564 = fmul fast float %3563, 0x3FF337FAE0000000
  %3565 = fmul fast float %2720, %2720
  %3566 = fmul fast float %3321, %3321
  %3567 = fadd fast float %3566, %3565
  %3568 = fmul fast float %3567, 0x3FE5152B00000000
  %3569 = fmul fast float %2720, 0xBFCC1F85E0000000
  %3570 = fmul fast float %3569, %3321
  %3571 = fadd fast float %3570, 0xBFE1363700000000
  %3572 = fadd fast float %3571, %3564
  %3573 = fsub fast float %3572, %3568
  %3574 = fmul fast float %3563, 0x3FBA6F0D00000000
  %3575 = fmul fast float %3567, 0x3FD0432880000000
  %3576 = fmul fast float %2720, 0xBFEF110800000000
  %3577 = fmul fast float %3576, %3321
  %3578 = fadd fast float %3577, 1.000000e+00
  %3579 = fsub fast float %3578, %3574
  %3580 = fadd fast float %3579, %3575
  %3581 = fdiv fast float %3573, %3580
  %3582 = call float @dx.op.unary.f32(i32 7, float %3581)  ; Saturate(value)
  %3583 = fsub fast float %3582, %2720
  %3584 = fmul fast float %3583, %3531
  %3585 = fadd fast float %3584, %2720
  %3586 = fmul fast float %3534, %3400
  %3587 = fadd fast float %3586, %2722
  br label %3604

; <label>:3588                                    ; preds = %3552
  %3589 = icmp eq i32 %3520, 8
  br i1 %3589, label %3590, label %3604

; <label>:3590                                    ; preds = %3588
  %3591 = fmul fast float %3525, %3322
  %3592 = fmul fast float %3525, %3323
  %3593 = fadd fast float %3591, %2711
  %3594 = fadd fast float %3592, %2712
  %3595 = call float @dx.op.binary.f32(i32 36, float %2721, float %3324)  ; FMin(a,b)
  %3596 = fsub fast float %3595, %2721
  %3597 = fmul fast float %3596, %3528
  %3598 = fadd fast float %3597, %2721
  %3599 = fsub fast float %3321, %2720
  %3600 = fmul fast float %3531, %3599
  %3601 = fadd fast float %3600, %2720
  %3602 = fmul fast float %3534, %3400
  %3603 = fadd fast float %3602, %2722
  br label %3604

; <label>:3604                                    ; preds = %3590, %3588, %3554, %3536, %3511, %3020, %2724, %2710
  %3605 = phi float [ %2711, %3511 ], [ %2711, %3020 ], [ %2711, %2710 ], [ %2711, %2724 ], [ %3541, %3536 ], [ %3557, %3554 ], [ %2711, %3588 ], [ %3593, %3590 ]
  %3606 = phi float [ %2712, %3511 ], [ %2712, %3020 ], [ %2712, %2710 ], [ %2712, %2724 ], [ %3542, %3536 ], [ %3558, %3554 ], [ %2712, %3588 ], [ %3594, %3590 ]
  %3607 = phi float [ %3512, %3511 ], [ %2713, %3020 ], [ %2713, %2710 ], [ %2713, %2724 ], [ %3512, %3536 ], [ %3512, %3554 ], [ %3512, %3588 ], [ %3512, %3590 ]
  %3608 = phi float [ %3513, %3511 ], [ %2714, %3020 ], [ %2714, %2710 ], [ %2714, %2724 ], [ %3513, %3536 ], [ %3513, %3554 ], [ %3513, %3588 ], [ %3513, %3590 ]
  %3609 = phi float [ %3514, %3511 ], [ %2715, %3020 ], [ %2715, %2710 ], [ %2715, %2724 ], [ %3514, %3536 ], [ %3514, %3554 ], [ %3514, %3588 ], [ %3514, %3590 ]
  %3610 = phi float [ %3515, %3511 ], [ %2716, %3020 ], [ %2716, %2710 ], [ %2716, %2724 ], [ %3515, %3536 ], [ %3515, %3554 ], [ %3515, %3588 ], [ %3515, %3590 ]
  %3611 = phi float [ %3516, %3511 ], [ %2717, %3020 ], [ %2717, %2710 ], [ %2717, %2724 ], [ %3516, %3536 ], [ %3516, %3554 ], [ %3516, %3588 ], [ %3516, %3590 ]
  %3612 = phi float [ %3517, %3511 ], [ %2718, %3020 ], [ %2718, %2710 ], [ %2718, %2724 ], [ %3517, %3536 ], [ %3517, %3554 ], [ %3517, %3588 ], [ %3517, %3590 ]
  %3613 = phi float [ %3518, %3511 ], [ %2719, %3020 ], [ %2719, %2710 ], [ %2719, %2724 ], [ %3518, %3536 ], [ %3518, %3554 ], [ %3518, %3588 ], [ %3518, %3590 ]
  %3614 = phi float [ %2720, %3511 ], [ %2720, %3020 ], [ %2720, %2710 ], [ %2720, %2724 ], [ %3548, %3536 ], [ %3585, %3554 ], [ %2720, %3588 ], [ %3601, %3590 ]
  %3615 = phi float [ %2721, %3511 ], [ %2721, %3020 ], [ %2721, %2710 ], [ %2721, %2724 ], [ %3545, %3536 ], [ %3562, %3554 ], [ %2721, %3588 ], [ %3598, %3590 ]
  %3616 = phi float [ %2722, %3511 ], [ %2722, %3020 ], [ %2722, %2710 ], [ %2722, %2724 ], [ %3551, %3536 ], [ %3587, %3554 ], [ %2722, %3588 ], [ %3603, %3590 ]
  %3617 = phi float [ %3519, %3511 ], [ %2723, %3020 ], [ %2723, %2710 ], [ %2723, %2724 ], [ %3519, %3536 ], [ %3519, %3554 ], [ %3519, %3588 ], [ %3519, %3590 ]
  %3618 = add i32 %43, 360
  %3619 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3618, i32 undef)  ; BufferLoad(srv,index,wot)
  %3620 = extractvalue %dx.types.ResRet.i32 %3619, 0
  %3621 = bitcast i32 %3620 to float
  %3622 = fcmp fast oge float %3621, 0.000000e+00
  %3623 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3624 = extractvalue %dx.types.CBufRet.f32 %3623, 0
  %3625 = select i1 %3622, float %3621, float %3624
  %3626 = call float @dx.op.dot2.f32(i32 54, float %3605, float %3606, float %3605, float %3606)  ; Dot2(ax,ay,bx,by)
  %3627 = fmul fast float %3626, 0x3FE3333340000000
  %3628 = fsub fast float 1.000000e+00, %3627
  %3629 = call float @dx.op.dot3.f32(i32 55, float %3605, float %3606, float %3628, float %3605, float %3606, float %3628)  ; Dot3(ax,ay,az,bx,by,bz)
  %3630 = call float @dx.op.unary.f32(i32 25, float %3629)  ; Rsqrt(value)
  %3631 = fmul fast float %3630, %3605
  %3632 = fmul fast float %3630, %3606
  %3633 = fmul fast float %3628, %3630
  %3634 = fmul fast float %3633, %85
  %3635 = fmul fast float %3633, %86
  %3636 = fmul fast float %3633, %87
  %3637 = fmul fast float %3631, %59
  %3638 = fmul fast float %3631, %60
  %3639 = fmul fast float %3631, %61
  %3640 = fadd fast float %3634, %3637
  %3641 = fadd fast float %3635, %3638
  %3642 = fadd fast float %3636, %3639
  %3643 = fmul fast float %97, %3632
  %3644 = fmul fast float %98, %3632
  %3645 = fmul fast float %99, %3632
  %3646 = fadd fast float %3640, %3643
  %3647 = fadd fast float %3641, %3644
  %3648 = fadd fast float %3642, %3645
  %3649 = call float @dx.op.dot3.f32(i32 55, float %3646, float %3647, float %3648, float %3646, float %3647, float %3648)  ; Dot3(ax,ay,az,bx,by,bz)
  %3650 = call float @dx.op.unary.f32(i32 25, float %3649)  ; Rsqrt(value)
  %3651 = fmul fast float %3646, %3650
  %3652 = fmul fast float %3647, %3650
  %3653 = fmul fast float %3648, %3650
  %3654 = and i32 %45, 1
  %3655 = icmp eq i32 %3654, 0
  br i1 %3655, label %3656, label %4164

; <label>:3656                                    ; preds = %3604
  %3657 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3658 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3659 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3660 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3661 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3662 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3663 = fadd fast float %3657, %141
  %3664 = fadd fast float %3658, %142
  %3665 = fadd fast float %3659, %143
  %3666 = fadd fast float %3660, %141
  %3667 = fadd fast float %3661, %142
  %3668 = fadd fast float %3662, %143
  %3669 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3670 = extractvalue %dx.types.CBufRet.f32 %3669, 0
  %3671 = extractvalue %dx.types.CBufRet.f32 %3669, 1
  %3672 = extractvalue %dx.types.CBufRet.f32 %3669, 2
  %3673 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3674 = extractvalue %dx.types.CBufRet.f32 %3673, 2
  %3675 = extractvalue %dx.types.CBufRet.f32 %3673, 3
  %3676 = fmul fast float %3670, %78
  %3677 = fmul fast float %3676, %3674
  %3678 = fmul fast float %3671, %79
  %3679 = fmul fast float %3678, %3675
  %3680 = fptoui float %3677 to i32
  %3681 = fptoui float %3679 to i32
  %3682 = fadd fast float %3670, -1.000000e+00
  %3683 = fadd fast float %3671, -1.000000e+00
  %3684 = fptoui float %3682 to i32
  %3685 = fptoui float %3683 to i32
  %3686 = call i32 @dx.op.binary.i32(i32 40, i32 %3680, i32 %3684)  ; UMin(a,b)
  %3687 = call i32 @dx.op.binary.i32(i32 40, i32 %3681, i32 %3685)  ; UMin(a,b)
  %3688 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3689 = extractvalue %dx.types.CBufRet.f32 %3688, 2
  %3690 = extractvalue %dx.types.CBufRet.f32 %3688, 3
  %3691 = fmul fast float %3689, %73
  %3692 = fsub fast float %3691, %3690
  %3693 = fadd fast float %3672, -1.000000e+00
  %3694 = call float @dx.op.binary.f32(i32 36, float %3692, float %3693)  ; FMin(a,b)
  %3695 = fptoui float %3694 to i32
  %3696 = fptoui float %3670 to i32
  %3697 = fptoui float %3671 to i32
  %3698 = mul i32 %3695, %3697
  %3699 = add i32 %3698, %3687
  %3700 = mul i32 %3699, %3696
  %3701 = add i32 %3700, %3686
  %3702 = shl i32 %3701, 2
  %3703 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3702, i32 undef)  ; BufferLoad(srv,index,wot)
  %3704 = extractvalue %dx.types.ResRet.i32 %3703, 0
  %3705 = and i32 %3704, 1023
  %3706 = lshr i32 %3704, 10
  %3707 = icmp eq i32 %3705, 0
  br i1 %3707, label %4133, label %3708

; <label>:3708                                    ; preds = %3656
  %3709 = and i32 %3704, 1023
  br label %3710

; <label>:3710                                    ; preds = %3836, %3708
  %3711 = phi i32 [ %3786, %3836 ], [ 0, %3708 ]
  %3712 = phi float [ %3837, %3836 ], [ 0.000000e+00, %3708 ]
  %3713 = phi float [ %3838, %3836 ], [ %3625, %3708 ]
  %3714 = phi float [ %3839, %3836 ], [ %3617, %3708 ]
  %3715 = phi float [ %3840, %3836 ], [ %3616, %3708 ]
  %3716 = phi float [ %3841, %3836 ], [ 0.000000e+00, %3708 ]
  %3717 = phi float [ %3842, %3836 ], [ %3610, %3708 ]
  %3718 = phi float [ %3843, %3836 ], [ %3611, %3708 ]
  %3719 = phi float [ %3844, %3836 ], [ %3612, %3708 ]
  %3720 = phi float [ %3845, %3836 ], [ %3651, %3708 ]
  %3721 = phi float [ %3846, %3836 ], [ %3652, %3708 ]
  %3722 = phi float [ %3847, %3836 ], [ %3653, %3708 ]
  %3723 = phi float [ %3848, %3836 ], [ %3615, %3708 ]
  %3724 = phi float [ %3849, %3836 ], [ %3614, %3708 ]
  %3725 = phi float [ %3850, %3836 ], [ 0.000000e+00, %3708 ]
  %3726 = phi float [ %3851, %3836 ], [ %3613, %3708 ]
  %3727 = phi float [ %3852, %3836 ], [ %3607, %3708 ]
  %3728 = phi float [ %3853, %3836 ], [ %3608, %3708 ]
  %3729 = phi float [ %3854, %3836 ], [ %3609, %3708 ]
  %3730 = add nuw nsw i32 %3711, %3706
  %3731 = shl i32 %3730, 2
  %3732 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3731, i32 undef)  ; BufferLoad(srv,index,wot)
  %3733 = extractvalue %dx.types.ResRet.i32 %3732, 0
  %3734 = shl i32 %3733, 8
  %3735 = or i32 %3734, 48
  %3736 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3735, i32 undef)  ; BufferLoad(srv,index,wot)
  %3737 = extractvalue %dx.types.ResRet.f32 %3736, 0
  %3738 = extractvalue %dx.types.ResRet.f32 %3736, 1
  %3739 = extractvalue %dx.types.ResRet.f32 %3736, 2
  %3740 = extractvalue %dx.types.ResRet.f32 %3736, 3
  %3741 = or i32 %3734, 64
  %3742 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3741, i32 undef)  ; BufferLoad(srv,index,wot)
  %3743 = extractvalue %dx.types.ResRet.i32 %3742, 0
  %3744 = extractvalue %dx.types.ResRet.i32 %3742, 1
  %3745 = or i32 %3734, 80
  %3746 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3745, i32 undef)  ; BufferLoad(srv,index,wot)
  %3747 = extractvalue %dx.types.ResRet.f32 %3746, 2
  %3748 = extractvalue %dx.types.ResRet.f32 %3746, 3
  %3749 = or i32 %3734, 96
  %3750 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3749, i32 undef)  ; BufferLoad(srv,index,wot)
  %3751 = extractvalue %dx.types.ResRet.f32 %3750, 0
  %3752 = extractvalue %dx.types.ResRet.f32 %3750, 1
  %3753 = extractvalue %dx.types.ResRet.f32 %3750, 2
  %3754 = extractvalue %dx.types.ResRet.f32 %3750, 3
  %3755 = or i32 %3734, 112
  %3756 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3755, i32 undef)  ; BufferLoad(srv,index,wot)
  %3757 = extractvalue %dx.types.ResRet.f32 %3756, 2
  %3758 = or i32 %3734, 128
  %3759 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3758, i32 undef)  ; BufferLoad(srv,index,wot)
  %3760 = extractvalue %dx.types.ResRet.f32 %3759, 0
  %3761 = extractvalue %dx.types.ResRet.f32 %3759, 1
  %3762 = extractvalue %dx.types.ResRet.f32 %3759, 2
  %3763 = extractvalue %dx.types.ResRet.f32 %3759, 3
  %3764 = or i32 %3734, 144
  %3765 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3764, i32 undef)  ; BufferLoad(srv,index,wot)
  %3766 = extractvalue %dx.types.ResRet.f32 %3765, 0
  %3767 = extractvalue %dx.types.ResRet.f32 %3765, 1
  %3768 = extractvalue %dx.types.ResRet.f32 %3765, 2
  %3769 = extractvalue %dx.types.ResRet.f32 %3765, 3
  %3770 = or i32 %3734, 160
  %3771 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3770, i32 undef)  ; BufferLoad(srv,index,wot)
  %3772 = extractvalue %dx.types.ResRet.f32 %3771, 0
  %3773 = extractvalue %dx.types.ResRet.f32 %3771, 1
  %3774 = extractvalue %dx.types.ResRet.f32 %3771, 2
  %3775 = extractvalue %dx.types.ResRet.f32 %3771, 3
  %3776 = or i32 %3734, 192
  %3777 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3776, i32 undef)  ; BufferLoad(srv,index,wot)
  %3778 = extractvalue %dx.types.ResRet.i32 %3777, 0
  %3779 = or i32 %3734, 208
  %3780 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3779, i32 undef)  ; BufferLoad(srv,index,wot)
  %3781 = extractvalue %dx.types.ResRet.f32 %3780, 0
  %3782 = or i32 %3734, 248
  %3783 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3782, i32 undef)  ; BufferLoad(srv,index,wot)
  %3784 = extractvalue %dx.types.ResRet.f32 %3783, 0
  %3785 = extractvalue %dx.types.ResRet.f32 %3783, 1
  %3786 = add nuw nsw i32 %3711, 1
  %3787 = bitcast float %3740 to i32
  %3788 = and i32 %3787, 512
  %3789 = icmp eq i32 %3788, 0
  %3790 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3734, i32 undef)  ; BufferLoad(srv,index,wot)
  %3791 = extractvalue %dx.types.ResRet.f32 %3790, 0
  %3792 = extractvalue %dx.types.ResRet.f32 %3790, 1
  %3793 = extractvalue %dx.types.ResRet.f32 %3790, 2
  %3794 = extractvalue %dx.types.ResRet.f32 %3790, 3
  %3795 = call float @dx.op.dot4.f32(i32 56, float %3791, float %3792, float %3793, float %3794, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3796 = or i32 %3734, 16
  %3797 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3796, i32 undef)  ; BufferLoad(srv,index,wot)
  %3798 = extractvalue %dx.types.ResRet.f32 %3797, 0
  %3799 = extractvalue %dx.types.ResRet.f32 %3797, 1
  %3800 = extractvalue %dx.types.ResRet.f32 %3797, 2
  %3801 = extractvalue %dx.types.ResRet.f32 %3797, 3
  %3802 = call float @dx.op.dot4.f32(i32 56, float %3798, float %3799, float %3800, float %3801, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3803 = or i32 %3734, 32
  %3804 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3803, i32 undef)  ; BufferLoad(srv,index,wot)
  %3805 = extractvalue %dx.types.ResRet.f32 %3804, 0
  %3806 = extractvalue %dx.types.ResRet.f32 %3804, 1
  %3807 = extractvalue %dx.types.ResRet.f32 %3804, 2
  %3808 = extractvalue %dx.types.ResRet.f32 %3804, 3
  %3809 = call float @dx.op.dot4.f32(i32 56, float %3805, float %3806, float %3807, float %3808, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3810 = call float @dx.op.unary.f32(i32 27, float %3795)  ; Round_ni(value)
  %3811 = call float @dx.op.unary.f32(i32 6, float %3810)  ; FAbs(value)
  %3812 = call float @dx.op.unary.f32(i32 27, float %3802)  ; Round_ni(value)
  %3813 = call float @dx.op.unary.f32(i32 6, float %3812)  ; FAbs(value)
  %3814 = call float @dx.op.unary.f32(i32 6, float %3809)  ; FAbs(value)
  %3815 = call float @dx.op.unary.f32(i32 27, float %3814)  ; Round_ni(value)
  %3816 = fadd fast float %3813, %3811
  %3817 = fadd fast float %3816, %3815
  %3818 = fcmp fast oeq float %3817, 0.000000e+00
  %3819 = call float @dx.op.dot4.f32(i32 56, float %3791, float %3792, float %3793, float %3794, float %3663, float %3664, float %3665, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3820 = call float @dx.op.dot4.f32(i32 56, float %3798, float %3799, float %3800, float %3801, float %3663, float %3664, float %3665, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3821 = call float @dx.op.dot4.f32(i32 56, float %3791, float %3792, float %3793, float %3794, float %3666, float %3667, float %3668, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3822 = call float @dx.op.dot4.f32(i32 56, float %3798, float %3799, float %3800, float %3801, float %3666, float %3667, float %3668, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3823 = fsub fast float %3819, %3795
  %3824 = fsub fast float %3821, %3795
  %3825 = fsub fast float %3820, %3802
  %3826 = fsub fast float %3822, %3802
  %3827 = call float @dx.op.dot3.f32(i32 55, float %3737, float %3738, float %3739, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %3828 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3829 = extractvalue %dx.types.CBufRet.f32 %3828, 2
  %3830 = fadd fast float %3829, %3827
  %3831 = call float @dx.op.unary.f32(i32 7, float %3830)  ; Saturate(value)
  %3832 = extractvalue %dx.types.CBufRet.f32 %3828, 0
  %3833 = fcmp fast ogt float %3831, %3832
  %3834 = and i1 %3818, %3833
  %3835 = and i1 %3789, %3834
  br i1 %3835, label %3856, label %3836

; <label>:3836                                    ; preds = %4119, %3937, %3856, %3710
  %3837 = phi float [ %3712, %3856 ], [ %3940, %3937 ], [ %3940, %4119 ], [ %3712, %3710 ]
  %3838 = phi float [ %3713, %3856 ], [ %3713, %3937 ], [ %4094, %4119 ], [ %3713, %3710 ]
  %3839 = phi float [ %3714, %3856 ], [ %3714, %3937 ], [ %4092, %4119 ], [ %3714, %3710 ]
  %3840 = phi float [ %3715, %3856 ], [ %3715, %3937 ], [ %4064, %4119 ], [ %3715, %3710 ]
  %3841 = phi float [ %3716, %3856 ], [ %3716, %3937 ], [ %4062, %4119 ], [ %3716, %3710 ]
  %3842 = phi float [ %3717, %3856 ], [ %3717, %3937 ], [ %4129, %4119 ], [ %3717, %3710 ]
  %3843 = phi float [ %3718, %3856 ], [ %3718, %3937 ], [ %4130, %4119 ], [ %3718, %3710 ]
  %3844 = phi float [ %3719, %3856 ], [ %3719, %3937 ], [ %4131, %4119 ], [ %3719, %3710 ]
  %3845 = phi float [ %3720, %3856 ], [ %3720, %3937 ], [ %4043, %4119 ], [ %3720, %3710 ]
  %3846 = phi float [ %3721, %3856 ], [ %3721, %3937 ], [ %4044, %4119 ], [ %3721, %3710 ]
  %3847 = phi float [ %3722, %3856 ], [ %3722, %3937 ], [ %4045, %4119 ], [ %3722, %3710 ]
  %3848 = phi float [ %3723, %3856 ], [ %3723, %3937 ], [ %4072, %4119 ], [ %3723, %3710 ]
  %3849 = phi float [ %3724, %3856 ], [ %3724, %3937 ], [ %4069, %4119 ], [ %3724, %3710 ]
  %3850 = phi float [ %3725, %3856 ], [ %3725, %3937 ], [ %4066, %4119 ], [ %3725, %3710 ]
  %3851 = phi float [ %3726, %3856 ], [ %3726, %3937 ], [ %4060, %4119 ], [ %3726, %3710 ]
  %3852 = phi float [ %3727, %3856 ], [ %3727, %3937 ], [ %4055, %4119 ], [ %3727, %3710 ]
  %3853 = phi float [ %3728, %3856 ], [ %3728, %3937 ], [ %4056, %4119 ], [ %3728, %3710 ]
  %3854 = phi float [ %3729, %3856 ], [ %3729, %3937 ], [ %4057, %4119 ], [ %3729, %3710 ]
  %3855 = icmp eq i32 %3786, %3709
  br i1 %3855, label %4132, label %3710

; <label>:3856                                    ; preds = %3710
  %3857 = extractvalue %dx.types.ResRet.f32 %3756, 3
  %3858 = extractvalue %dx.types.ResRet.f32 %3756, 1
  %3859 = extractvalue %dx.types.ResRet.f32 %3756, 0
  %3860 = extractvalue %dx.types.ResRet.f32 %3746, 1
  %3861 = extractvalue %dx.types.ResRet.f32 %3746, 0
  %3862 = extractvalue %dx.types.ResRet.i32 %3742, 3
  %3863 = extractvalue %dx.types.ResRet.i32 %3742, 2
  %3864 = add i32 %3862, 0
  %3865 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3864, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3866 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3867 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3865, %dx.types.Handle %3866, float %3795, float %3802, float undef, float undef, i32 0, i32 0, i32 undef, float %3823, float %3825, float undef, float %3824, float %3826, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3868 = extractvalue %dx.types.ResRet.f32 %3867, 0
  %3869 = fmul fast float %3868, %3861
  %3870 = fadd fast float %3869, %3860
  %3871 = call float @dx.op.unary.f32(i32 7, float %3870)  ; Saturate(value)
  %3872 = fmul fast float %3795, %3751
  %3873 = call float @dx.op.tertiary.f32(i32 46, float %3752, float %3802, float %3872)  ; FMad(a,b,c)
  %3874 = fadd fast float %3873, %3859
  %3875 = fmul fast float %3795, %3753
  %3876 = call float @dx.op.tertiary.f32(i32 46, float %3754, float %3802, float %3875)  ; FMad(a,b,c)
  %3877 = fadd fast float %3876, %3858
  %3878 = fmul fast float %3823, %3751
  %3879 = call float @dx.op.tertiary.f32(i32 46, float %3752, float %3825, float %3878)  ; FMad(a,b,c)
  %3880 = fmul fast float %3823, %3753
  %3881 = call float @dx.op.tertiary.f32(i32 46, float %3754, float %3825, float %3880)  ; FMad(a,b,c)
  %3882 = fmul fast float %3824, %3751
  %3883 = call float @dx.op.tertiary.f32(i32 46, float %3752, float %3826, float %3882)  ; FMad(a,b,c)
  %3884 = fmul fast float %3824, %3753
  %3885 = call float @dx.op.tertiary.f32(i32 46, float %3754, float %3826, float %3884)  ; FMad(a,b,c)
  %3886 = add i32 %3863, 0
  %3887 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3886, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3888 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3887, %dx.types.Handle %3866, float %3874, float %3877, float undef, float undef, i32 0, i32 0, i32 undef, float %3879, float %3881, float undef, float %3883, float %3885, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3889 = extractvalue %dx.types.ResRet.f32 %3888, 0
  %3890 = and i32 %3787, 1024
  %3891 = icmp ne i32 %3890, 0
  %3892 = fcmp fast ogt float %3889, 0x3FE0101020000000
  %3893 = uitofp i1 %3892 to float
  %3894 = select i1 %3891, float %3893, float %3889
  %3895 = and i32 %3787, 8192
  %3896 = icmp ne i32 %3895, 0
  %3897 = select i1 %3896, float %3857, float 1.000000e+00
  %3898 = fmul fast float %3795, 2.000000e+00
  %3899 = fadd fast float %3898, -1.000000e+00
  %3900 = call float @dx.op.unary.f32(i32 6, float %3899)  ; FAbs(value)
  %3901 = fmul fast float %3900, %3784
  %3902 = fsub fast float %3901, %3784
  %3903 = call float @dx.op.unary.f32(i32 7, float %3902)  ; Saturate(value)
  %3904 = fmul fast float %3802, 2.000000e+00
  %3905 = fadd fast float %3904, -1.000000e+00
  %3906 = call float @dx.op.unary.f32(i32 6, float %3905)  ; FAbs(value)
  %3907 = fmul fast float %3906, %3785
  %3908 = fsub fast float %3907, %3785
  %3909 = call float @dx.op.unary.f32(i32 7, float %3908)  ; Saturate(value)
  %3910 = fmul fast float %3814, %3747
  %3911 = fsub fast float %3910, %3747
  %3912 = call float @dx.op.unary.f32(i32 7, float %3911)  ; Saturate(value)
  %3913 = fmul fast float %3871, %3897
  %3914 = fmul fast float %3913, %3868
  %3915 = fmul fast float %3914, %3903
  %3916 = fmul fast float %3915, %3894
  %3917 = fmul fast float %3916, %3909
  %3918 = fmul fast float %3917, %3912
  %3919 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %3920 = extractvalue %dx.types.CBufRet.f32 %3919, 1
  %3921 = extractvalue %dx.types.CBufRet.f32 %3919, 0
  %3922 = fsub fast float %3831, %3921
  %3923 = fmul fast float %3922, %3920
  %3924 = call float @dx.op.unary.f32(i32 7, float %3923)  ; Saturate(value)
  %3925 = fmul fast float %3918, %3748
  %3926 = fadd fast float %3918, %3748
  %3927 = fmul fast float %3926, %3757
  %3928 = fsub fast float %3927, %3757
  %3929 = call float @dx.op.unary.f32(i32 7, float %3928)  ; Saturate(value)
  %3930 = and i32 %3787, 128
  %3931 = icmp ne i32 %3930, 0
  %3932 = select i1 %3931, float %3929, float %3925
  %3933 = fmul fast float %3932, %3924
  %3934 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3935 = extractvalue %dx.types.CBufRet.f32 %3934, 0
  %3936 = fcmp fast ugt float %3933, %3935
  br i1 %3936, label %3937, label %3836

; <label>:3937                                    ; preds = %3856
  %3938 = select i1 %3896, float %3933, float 0.000000e+00
  %3939 = fadd fast float %3938, %3712
  %3940 = call float @dx.op.unary.f32(i32 7, float %3939)  ; Saturate(value)
  br i1 %3896, label %3836, label %3941

; <label>:3941                                    ; preds = %3937
  %3942 = and i32 %3787, 4
  %3943 = and i32 %3787, 8
  %3944 = add i32 %3743, 0
  %3945 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3944, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3946 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3947 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3945, %dx.types.Handle %3946, float %3874, float %3877, float undef, float undef, i32 0, i32 0, i32 undef, float %3879, float %3881, float undef, float %3883, float %3885, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3948 = extractvalue %dx.types.ResRet.f32 %3947, 0
  %3949 = extractvalue %dx.types.ResRet.f32 %3947, 1
  %3950 = extractvalue %dx.types.ResRet.f32 %3947, 2
  %3951 = extractvalue %dx.types.ResRet.f32 %3947, 3
  %3952 = bitcast float %3769 to i32
  %3953 = and i32 %3952, 255
  %3954 = uitofp i32 %3953 to float
  %3955 = lshr i32 %3952, 8
  %3956 = and i32 %3955, 255
  %3957 = uitofp i32 %3956 to float
  %3958 = fmul fast float %3951, %3954
  %3959 = fadd fast float %3958, %3957
  %3960 = fmul fast float %3959, 0x3F70101000000000
  %3961 = add i32 %3744, 0
  %3962 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %3961, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3963 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %3962, %dx.types.Handle %3946, float %3874, float %3877, float undef, float undef, i32 0, i32 0, i32 undef, float %3879, float %3881, float undef, float %3883, float %3885, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %3964 = extractvalue %dx.types.ResRet.f32 %3963, 0
  %3965 = extractvalue %dx.types.ResRet.f32 %3963, 1
  %3966 = extractvalue %dx.types.ResRet.f32 %3963, 2
  %3967 = extractvalue %dx.types.ResRet.f32 %3963, 3
  %3968 = bitcast float %3763 to i32
  %3969 = and i32 %3968, 255
  %3970 = uitofp i32 %3969 to float
  %3971 = lshr i32 %3968, 8
  %3972 = and i32 %3971, 255
  %3973 = uitofp i32 %3972 to float
  %3974 = lshr i32 %3968, 16
  %3975 = and i32 %3974, 255
  %3976 = uitofp i32 %3975 to float
  %3977 = fmul fast float %3976, 0x3F70101000000000
  %3978 = fmul fast float %3964, %3970
  %3979 = fadd fast float %3978, %3973
  %3980 = fmul fast float %3979, 0x3F70101000000000
  %3981 = fadd fast float %3965, -5.000000e-01
  %3982 = fadd fast float %3967, -5.000000e-01
  %3983 = fmul fast float %3981, %3977
  %3984 = fmul fast float %3982, %3977
  %3985 = fadd fast float %3983, 5.000000e-01
  %3986 = fadd fast float %3984, 5.000000e-01
  %3987 = fmul fast float %3948, %3772
  %3988 = fmul fast float %3949, %3773
  %3989 = fmul fast float %3950, %3774
  %3990 = fmul fast float %3985, 2.000000e+00
  %3991 = fadd fast float %3990, -1.000000e+00
  %3992 = fmul fast float %3986, 2.000000e+00
  %3993 = fadd fast float %3992, -1.000000e+00
  %3994 = fadd fast float %3991, %3993
  %3995 = fmul fast float %3994, 5.000000e-01
  %3996 = fsub fast float %3991, %3993
  %3997 = fmul fast float %3996, 5.000000e-01
  %3998 = call float @dx.op.unary.f32(i32 6, float %3995)  ; FAbs(value)
  %3999 = fsub fast float 1.000000e+00, %3998
  %4000 = call float @dx.op.unary.f32(i32 6, float %3997)  ; FAbs(value)
  %4001 = fsub fast float %3999, %4000
  %4002 = call float @dx.op.dot3.f32(i32 55, float %3995, float %3997, float %4001, float %3995, float %3997, float %4001)  ; Dot3(ax,ay,az,bx,by,bz)
  %4003 = call float @dx.op.unary.f32(i32 25, float %4002)  ; Rsqrt(value)
  %4004 = fmul fast float %3995, %4003
  %4005 = fmul fast float %3997, %4003
  %4006 = fmul fast float %4003, %4001
  %4007 = fmul fast float %4006, %3737
  %4008 = fmul fast float %4006, %3738
  %4009 = fmul fast float %4006, %3739
  %4010 = fmul fast float %4004, %3760
  %4011 = fmul fast float %4004, %3761
  %4012 = fmul fast float %4004, %3762
  %4013 = fadd fast float %4010, %4007
  %4014 = fadd fast float %4011, %4008
  %4015 = fadd fast float %4012, %4009
  %4016 = fmul fast float %4005, %3766
  %4017 = fmul fast float %4005, %3767
  %4018 = fmul fast float %4005, %3768
  %4019 = fadd fast float %4013, %4016
  %4020 = fadd fast float %4014, %4017
  %4021 = fadd fast float %4015, %4018
  %4022 = call float @dx.op.dot3.f32(i32 55, float %4019, float %4020, float %4021, float %4019, float %4020, float %4021)  ; Dot3(ax,ay,az,bx,by,bz)
  %4023 = call float @dx.op.unary.f32(i32 25, float %4022)  ; Rsqrt(value)
  %4024 = fmul fast float %4019, %4023
  %4025 = fmul fast float %4020, %4023
  %4026 = fmul fast float %4021, %4023
  %4027 = icmp ne i32 %3943, 0
  %4028 = select i1 %4027, float 1.000000e+00, float 0.000000e+00
  %4029 = fmul fast float %3933, %4028
  %4030 = and i32 %3787, 1
  %4031 = icmp eq i32 %4030, 0
  br i1 %4031, label %4032, label %4036

; <label>:4032                                    ; preds = %3941
  %4033 = fsub fast float %4024, %3720
  %4034 = fsub fast float %4025, %3721
  %4035 = fsub fast float %4026, %3722
  br label %4036

; <label>:4036                                    ; preds = %4032, %3941
  %4037 = phi float [ %4033, %4032 ], [ %4024, %3941 ]
  %4038 = phi float [ %4034, %4032 ], [ %4025, %3941 ]
  %4039 = phi float [ %4035, %4032 ], [ %4026, %3941 ]
  %4040 = fmul float %4039, %4029
  %4041 = fmul float %4038, %4029
  %4042 = fmul float %4037, %4029
  %4043 = fadd fast float %4042, %3720
  %4044 = fadd fast float %4041, %3721
  %4045 = fadd fast float %4040, %3722
  %4046 = icmp ne i32 %3942, 0
  %4047 = select i1 %4046, float 1.000000e+00, float 0.000000e+00
  %4048 = fmul fast float %3933, %4047
  %4049 = fsub fast float %3987, %3727
  %4050 = fsub fast float %3988, %3728
  %4051 = fsub fast float %3989, %3729
  %4052 = fmul fast float %4049, %4048
  %4053 = fmul fast float %4050, %4048
  %4054 = fmul fast float %4051, %4048
  %4055 = fadd fast float %4052, %3727
  %4056 = fadd fast float %4053, %3728
  %4057 = fadd fast float %4054, %3729
  %4058 = fsub fast float %3960, %3726
  %4059 = fmul fast float %4058, %4048
  %4060 = fadd fast float %4059, %3726
  %4061 = fmul fast float %4048, %3716
  %4062 = fsub fast float %3716, %4061
  %4063 = fmul fast float %4048, %3715
  %4064 = fsub fast float %3715, %4063
  %4065 = fadd fast float %3933, %3725
  %4066 = call float @dx.op.unary.f32(i32 7, float %4065)  ; Saturate(value)
  %4067 = fsub fast float %3980, %3724
  %4068 = fmul fast float %4067, %4029
  %4069 = fadd fast float %4068, %3724
  %4070 = fsub fast float %3966, %3723
  %4071 = fmul fast float %4070, %4029
  %4072 = fadd fast float %4071, %3723
  %4073 = call float @dx.op.dot3.f32(i32 55, float %3987, float %3988, float %3989, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4074 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4075 = extractvalue %dx.types.CBufRet.f32 %4074, 0
  %4076 = extractvalue %dx.types.CBufRet.f32 %4074, 1
  %4077 = fmul fast float %4076, %4073
  %4078 = fadd fast float %4077, %4075
  %4079 = call float @dx.op.unary.f32(i32 7, float %4078)  ; Saturate(value)
  %4080 = bitcast float %3775 to i32
  %4081 = and i32 %4080, 65535
  %4082 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4081)  ; LegacyF16ToF32(value)
  %4083 = lshr i32 %4080, 16
  %4084 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4083)  ; LegacyF16ToF32(value)
  %4085 = fcmp fast oge float %4082, 0.000000e+00
  %4086 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4087 = extractvalue %dx.types.CBufRet.f32 %4086, 0
  %4088 = select i1 %4085, float %4082, float %4087
  %4089 = fadd fast float %4088, %4084
  %4090 = fsub fast float %4079, %3714
  %4091 = fmul fast float %4090, %3933
  %4092 = fadd fast float %4091, %3714
  %4093 = fmul fast float %4089, %3933
  %4094 = call float @dx.op.binary.f32(i32 35, float %3713, float %4093)  ; FMax(a,b)
  %4095 = and i32 %3787, 16
  %4096 = icmp eq i32 %4095, 0
  br i1 %4096, label %4119, label %4097

; <label>:4097                                    ; preds = %4036
  %4098 = bitcast float %3781 to i32
  %4099 = add i32 %3778, 0
  %4100 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4099, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4101 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4100, %dx.types.Handle %3946, float %3874, float %3877, float undef, float undef, i32 0, i32 0, i32 undef, float %3879, float %3881, float undef, float %3883, float %3885, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4102 = extractvalue %dx.types.ResRet.f32 %4101, 0
  %4103 = extractvalue %dx.types.ResRet.f32 %4101, 1
  %4104 = extractvalue %dx.types.ResRet.f32 %4101, 2
  %4105 = and i32 %4098, 65535
  %4106 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4105)  ; LegacyF16ToF32(value)
  %4107 = fmul fast float %4102, %3772
  %4108 = fmul fast float %4103, %3773
  %4109 = fmul fast float %4104, %3774
  %4110 = and i32 %3787, 16384
  %4111 = icmp ne i32 %4110, 0
  %4112 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4113 = extractvalue %dx.types.CBufRet.f32 %4112, 0
  %4114 = select i1 %4111, float %4113, float 1.000000e+00
  %4115 = fmul fast float %4114, %4106
  %4116 = fmul fast float %4107, %4115
  %4117 = fmul fast float %4108, %4115
  %4118 = fmul fast float %4109, %4115
  br label %4119

; <label>:4119                                    ; preds = %4097, %4036
  %4120 = phi float [ %4116, %4097 ], [ 0.000000e+00, %4036 ]
  %4121 = phi float [ %4117, %4097 ], [ 0.000000e+00, %4036 ]
  %4122 = phi float [ %4118, %4097 ], [ 0.000000e+00, %4036 ]
  %4123 = fsub fast float %4120, %3717
  %4124 = fsub fast float %4121, %3718
  %4125 = fsub fast float %4122, %3719
  %4126 = fmul fast float %4123, %3933
  %4127 = fmul fast float %4124, %3933
  %4128 = fmul fast float %4125, %3933
  %4129 = fadd fast float %4126, %3717
  %4130 = fadd fast float %4127, %3718
  %4131 = fadd fast float %4128, %3719
  br label %3836

; <label>:4132                                    ; preds = %3836
  br label %4133

; <label>:4133                                    ; preds = %4132, %3656
  %4134 = phi float [ 0.000000e+00, %3656 ], [ %3837, %4132 ]
  %4135 = phi float [ %3625, %3656 ], [ %3838, %4132 ]
  %4136 = phi float [ %3617, %3656 ], [ %3839, %4132 ]
  %4137 = phi float [ %3616, %3656 ], [ %3840, %4132 ]
  %4138 = phi float [ 0.000000e+00, %3656 ], [ %3841, %4132 ]
  %4139 = phi float [ %3610, %3656 ], [ %3842, %4132 ]
  %4140 = phi float [ %3611, %3656 ], [ %3843, %4132 ]
  %4141 = phi float [ %3612, %3656 ], [ %3844, %4132 ]
  %4142 = phi float [ %3651, %3656 ], [ %3845, %4132 ]
  %4143 = phi float [ %3652, %3656 ], [ %3846, %4132 ]
  %4144 = phi float [ %3653, %3656 ], [ %3847, %4132 ]
  %4145 = phi float [ %3615, %3656 ], [ %3848, %4132 ]
  %4146 = phi float [ %3614, %3656 ], [ %3849, %4132 ]
  %4147 = phi float [ 0.000000e+00, %3656 ], [ %3850, %4132 ]
  %4148 = phi float [ %3613, %3656 ], [ %3851, %4132 ]
  %4149 = phi float [ %3607, %3656 ], [ %3852, %4132 ]
  %4150 = phi float [ %3608, %3656 ], [ %3853, %4132 ]
  %4151 = phi float [ %3609, %3656 ], [ %3854, %4132 ]
  %4152 = call float @dx.op.dot3.f32(i32 55, float %4142, float %4143, float %4144, float %4142, float %4143, float %4144)  ; Dot3(ax,ay,az,bx,by,bz)
  %4153 = call float @dx.op.unary.f32(i32 25, float %4152)  ; Rsqrt(value)
  %4154 = fmul fast float %4153, %4142
  %4155 = fmul fast float %4153, %4143
  %4156 = fmul fast float %4153, %4144
  %4157 = fadd fast float %4147, %931
  %4158 = call float @dx.op.unary.f32(i32 7, float %4157)  ; Saturate(value)
  %4159 = call float @dx.op.dot3.f32(i32 55, float %4154, float %4155, float %4156, float %4154, float %4155, float %4156)  ; Dot3(ax,ay,az,bx,by,bz)
  %4160 = call float @dx.op.unary.f32(i32 25, float %4159)  ; Rsqrt(value)
  %4161 = fmul fast float %4160, %4154
  %4162 = fmul fast float %4160, %4155
  %4163 = fmul fast float %4160, %4156
  br label %4164

; <label>:4164                                    ; preds = %4133, %3604
  %4165 = phi float [ %4161, %4133 ], [ %3651, %3604 ]
  %4166 = phi float [ %4162, %4133 ], [ %3652, %3604 ]
  %4167 = phi float [ %4163, %4133 ], [ %3653, %3604 ]
  %4168 = phi float [ %4149, %4133 ], [ %3607, %3604 ]
  %4169 = phi float [ %4150, %4133 ], [ %3608, %3604 ]
  %4170 = phi float [ %4151, %4133 ], [ %3609, %3604 ]
  %4171 = phi float [ %4139, %4133 ], [ %3610, %3604 ]
  %4172 = phi float [ %4140, %4133 ], [ %3611, %3604 ]
  %4173 = phi float [ %4141, %4133 ], [ %3612, %3604 ]
  %4174 = phi float [ %4148, %4133 ], [ %3613, %3604 ]
  %4175 = phi float [ %4158, %4133 ], [ %931, %3604 ]
  %4176 = phi float [ %4146, %4133 ], [ %3614, %3604 ]
  %4177 = phi float [ %4145, %4133 ], [ %3615, %3604 ]
  %4178 = phi float [ %4138, %4133 ], [ 0.000000e+00, %3604 ]
  %4179 = phi float [ %4137, %4133 ], [ %3616, %3604 ]
  %4180 = phi float [ %4134, %4133 ], [ 0.000000e+00, %3604 ]
  %4181 = phi float [ %4135, %4133 ], [ %3625, %3604 ]
  %4182 = phi float [ %4136, %4133 ], [ %3617, %3604 ]
  %4183 = fadd fast float %4174, 0xBFB99999A0000000
  %4184 = call float @dx.op.unary.f32(i32 7, float %4183)  ; Saturate(value)
  %4185 = fmul fast float %4184, 0x3FF1C71C80000000
  %4186 = call float @dx.op.binary.f32(i32 36, float %4174, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4187 = fsub fast float 1.000000e+00, %4185
  %4188 = call float @dx.op.unary.f32(i32 7, float %4187)  ; Saturate(value)
  %4189 = fmul fast float %4188, %4168
  %4190 = fmul fast float %4188, %4169
  %4191 = fmul fast float %4188, %4170
  %4192 = call float @dx.op.unary.f32(i32 7, float %4189)  ; Saturate(value)
  %4193 = call float @dx.op.unary.f32(i32 7, float %4190)  ; Saturate(value)
  %4194 = call float @dx.op.unary.f32(i32 7, float %4191)  ; Saturate(value)
  %4195 = fmul fast float %4185, %4168
  %4196 = fmul fast float %4185, %4169
  %4197 = fmul fast float %4185, %4170
  %4198 = fadd fast float %4195, %4186
  %4199 = fadd fast float %4196, %4186
  %4200 = fadd fast float %4197, %4186
  %4201 = call float @dx.op.unary.f32(i32 7, float %4198)  ; Saturate(value)
  %4202 = call float @dx.op.unary.f32(i32 7, float %4199)  ; Saturate(value)
  %4203 = call float @dx.op.unary.f32(i32 7, float %4200)  ; Saturate(value)
  %4204 = call float @dx.op.unary.f32(i32 7, float %4176)  ; Saturate(value)
  %4205 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4206 = extractvalue %dx.types.CBufRet.i32 %4205, 3
  %4207 = and i32 %4206, 8
  %4208 = icmp ne i32 %4207, 0
  %4209 = call float @dx.op.binary.f32(i32 35, float %4192, float %4168)  ; FMax(a,b)
  %4210 = call float @dx.op.binary.f32(i32 35, float %4193, float %4168)  ; FMax(a,b)
  %4211 = call float @dx.op.binary.f32(i32 35, float %4194, float %4168)  ; FMax(a,b)
  %4212 = call float @dx.op.dot3.f32(i32 55, float %4192, float %4193, float %4194, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4213 = select i1 %183, float %4168, float %4192
  %4214 = select i1 %183, float %4212, float %4193
  %4215 = select i1 %183, float 1.000000e+00, float %4194
  %4216 = select i1 %4208, float %4209, float %4213
  %4217 = select i1 %4208, float %4210, float %4214
  %4218 = select i1 %4208, float %4211, float %4215
  %4219 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4220 = extractvalue %dx.types.CBufRet.f32 %4219, 0
  %4221 = extractvalue %dx.types.CBufRet.f32 %4219, 1
  %4222 = extractvalue %dx.types.CBufRet.f32 %4219, 2
  %4223 = fadd fast float %4220, %141
  %4224 = fadd fast float %4221, %142
  %4225 = fadd fast float %4222, %143
  %4226 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4227 = extractvalue %dx.types.CBufRet.f32 %4226, 0
  %4228 = extractvalue %dx.types.CBufRet.f32 %4226, 1
  %4229 = fsub fast float %4223, %4227
  %4230 = fsub fast float %4224, %4228
  %4231 = fmul fast float %4229, %4229
  %4232 = fmul fast float %4230, %4230
  %4233 = fadd fast float %4231, %4232
  %4234 = call float @dx.op.unary.f32(i32 24, float %4233)  ; Sqrt(value)
  %4235 = extractvalue %dx.types.CBufRet.f32 %4226, 2
  %4236 = fcmp fast olt float %4234, %4235
  br i1 %4236, label %4237, label %4304

; <label>:4237                                    ; preds = %4164
  %4238 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4239 = extractvalue %dx.types.CBufRet.f32 %4238, 0
  %4240 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4241 = extractvalue %dx.types.CBufRet.f32 %4240, 0
  %4242 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4243 = extractvalue %dx.types.CBufRet.f32 %4242, 0
  %4244 = extractvalue %dx.types.CBufRet.f32 %4238, 1
  %4245 = extractvalue %dx.types.CBufRet.f32 %4240, 1
  %4246 = extractvalue %dx.types.CBufRet.f32 %4242, 1
  %4247 = extractvalue %dx.types.CBufRet.f32 %4238, 3
  %4248 = extractvalue %dx.types.CBufRet.f32 %4240, 3
  %4249 = extractvalue %dx.types.CBufRet.f32 %4242, 3
  %4250 = fadd fast float %4247, %4223
  %4251 = fadd fast float %4248, %4224
  %4252 = fadd fast float %4249, %4225
  %4253 = fmul fast float %4250, %4239
  %4254 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4241, float %4253)  ; FMad(a,b,c)
  %4255 = call float @dx.op.tertiary.f32(i32 46, float %4252, float %4243, float %4254)  ; FMad(a,b,c)
  %4256 = fmul fast float %4250, %4244
  %4257 = call float @dx.op.tertiary.f32(i32 46, float %4251, float %4245, float %4256)  ; FMad(a,b,c)
  %4258 = call float @dx.op.tertiary.f32(i32 46, float %4252, float %4246, float %4257)  ; FMad(a,b,c)
  %4259 = fsub fast float %4255, %4247
  %4260 = fsub fast float %4258, %4248
  %4261 = fsub fast float %4259, %4227
  %4262 = fadd fast float %4261, %4235
  %4263 = fsub fast float %4260, %4228
  %4264 = fadd fast float %4263, %4235
  %4265 = extractvalue %dx.types.CBufRet.f32 %4226, 3
  %4266 = fmul fast float %4262, %4265
  %4267 = fmul fast float %4264, %4265
  %4268 = call float @dx.op.unary.f32(i32 7, float %4266)  ; Saturate(value)
  %4269 = call float @dx.op.unary.f32(i32 7, float %4267)  ; Saturate(value)
  %4270 = fsub fast float 1.000000e+00, %4268
  %4271 = fsub fast float 1.000000e+00, %4269
  %4272 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4270, float %4271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4273 = extractvalue %dx.types.ResRet.f32 %4272, 0
  %4274 = fcmp fast ugt float %4273, 0.000000e+00
  br i1 %4274, label %4275, label %4578

; <label>:4275                                    ; preds = %4237
  %4276 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4277 = extractvalue %dx.types.CBufRet.f32 %4276, 2
  %4278 = fmul fast float %4277, %4273
  %4279 = extractvalue %dx.types.CBufRet.f32 %4276, 3
  %4280 = fadd fast float %4279, %4278
  %4281 = extractvalue %dx.types.CBufRet.f32 %4242, 2
  %4282 = fadd fast float %4280, %4249
  %4283 = fmul fast float %4255, %4243
  %4284 = call float @dx.op.tertiary.f32(i32 46, float %4258, float %4246, float %4283)  ; FMad(a,b,c)
  %4285 = call float @dx.op.tertiary.f32(i32 46, float %4282, float %4281, float %4284)  ; FMad(a,b,c)
  %4286 = fsub fast float %4285, %4249
  %4287 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4288 = extractvalue %dx.types.CBufRet.f32 %4287, 2
  %4289 = fsub fast float %4286, %4288
  %4290 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4270, float %4271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4291 = extractvalue %dx.types.ResRet.f32 %4290, 0
  %4292 = extractvalue %dx.types.ResRet.f32 %4290, 1
  %4293 = extractvalue %dx.types.ResRet.f32 %4290, 2
  %4294 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4270, float %4271, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4295 = extractvalue %dx.types.ResRet.f32 %4294, 0
  %4296 = extractvalue %dx.types.ResRet.f32 %4294, 1
  %4297 = extractvalue %dx.types.ResRet.f32 %4294, 2
  %4298 = fadd fast float %4295, %4291
  %4299 = fmul fast float %4298, 0x3F847AE140000000
  %4300 = fadd fast float %4296, %4292
  %4301 = fmul fast float %4300, 0x3F847AE140000000
  %4302 = fadd fast float %4297, %4293
  %4303 = fmul fast float %4302, 0x3F847AE140000000
  br label %4578

; <label>:4304                                    ; preds = %4164
  %4305 = and i32 %159, 1
  %4306 = icmp eq i32 %4305, 0
  br i1 %4306, label %4578, label %4307

; <label>:4307                                    ; preds = %4304
  %4308 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4309 = extractvalue %dx.types.CBufRet.f32 %4308, 0
  %4310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4311 = extractvalue %dx.types.CBufRet.f32 %4310, 0
  %4312 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4313 = extractvalue %dx.types.CBufRet.f32 %4312, 0
  %4314 = extractvalue %dx.types.CBufRet.f32 %4308, 1
  %4315 = extractvalue %dx.types.CBufRet.f32 %4310, 1
  %4316 = extractvalue %dx.types.CBufRet.f32 %4312, 1
  %4317 = extractvalue %dx.types.CBufRet.f32 %4308, 3
  %4318 = extractvalue %dx.types.CBufRet.f32 %4310, 3
  %4319 = extractvalue %dx.types.CBufRet.f32 %4312, 3
  %4320 = fadd fast float %4317, %4223
  %4321 = fadd fast float %4318, %4224
  %4322 = fadd fast float %4319, %4225
  %4323 = fmul fast float %4320, %4309
  %4324 = call float @dx.op.tertiary.f32(i32 46, float %4321, float %4311, float %4323)  ; FMad(a,b,c)
  %4325 = call float @dx.op.tertiary.f32(i32 46, float %4322, float %4313, float %4324)  ; FMad(a,b,c)
  %4326 = fmul fast float %4320, %4314
  %4327 = call float @dx.op.tertiary.f32(i32 46, float %4321, float %4315, float %4326)  ; FMad(a,b,c)
  %4328 = call float @dx.op.tertiary.f32(i32 46, float %4322, float %4316, float %4327)  ; FMad(a,b,c)
  %4329 = fsub fast float %4325, %4317
  %4330 = fsub fast float %4328, %4318
  %4331 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4332 = extractvalue %dx.types.CBufRet.f32 %4331, 0
  %4333 = extractvalue %dx.types.CBufRet.f32 %4331, 1
  %4334 = extractvalue %dx.types.CBufRet.f32 %4331, 2
  %4335 = extractvalue %dx.types.CBufRet.f32 %4331, 3
  %4336 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4337 = extractvalue %dx.types.CBufRet.f32 %4336, 3
  %4338 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4339 = extractvalue %dx.types.CBufRet.i32 %4338, 0
  %4340 = extractvalue %dx.types.CBufRet.i32 %4338, 1
  %4341 = udiv i32 %4340, %4339
  %4342 = fsub fast float %4329, %4332
  %4343 = fsub fast float %4330, %4333
  %4344 = call float @dx.op.binary.f32(i32 35, float %4342, float 0.000000e+00)  ; FMax(a,b)
  %4345 = call float @dx.op.binary.f32(i32 35, float %4343, float 0.000000e+00)  ; FMax(a,b)
  %4346 = call float @dx.op.binary.f32(i32 36, float %4344, float %4334)  ; FMin(a,b)
  %4347 = call float @dx.op.binary.f32(i32 36, float %4345, float %4335)  ; FMin(a,b)
  %4348 = add i32 %4339, -1
  %4349 = add i32 %4341, -1
  %4350 = fmul fast float %4346, %4337
  %4351 = fmul fast float %4347, %4337
  %4352 = fptoui float %4350 to i32
  %4353 = fptoui float %4351 to i32
  %4354 = call i32 @dx.op.binary.i32(i32 40, i32 %4352, i32 %4348)  ; UMin(a,b)
  %4355 = call i32 @dx.op.binary.i32(i32 40, i32 %4353, i32 %4349)  ; UMin(a,b)
  %4356 = mul i32 %4355, %4339
  %4357 = add i32 %4356, %4354
  %4358 = shl i32 %4357, 2
  %4359 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4358, i32 undef)  ; BufferLoad(srv,index,wot)
  %4360 = extractvalue %dx.types.ResRet.i32 %4359, 0
  %4361 = icmp eq i32 %4360, -1
  br i1 %4361, label %4578, label %4362

; <label>:4362                                    ; preds = %4307
  %4363 = mul i32 %4360, 148
  %4364 = add i32 %4363, 4
  %4365 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4364, i32 undef)  ; BufferLoad(srv,index,wot)
  %4366 = extractvalue %dx.types.ResRet.f32 %4365, 0
  %4367 = add i32 %4363, 8
  %4368 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4367, i32 undef)  ; BufferLoad(srv,index,wot)
  %4369 = extractvalue %dx.types.ResRet.f32 %4368, 0
  %4370 = add i32 %4363, 36
  %4371 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4370, i32 undef)  ; BufferLoad(srv,index,wot)
  %4372 = extractvalue %dx.types.ResRet.f32 %4371, 0
  %4373 = add i32 %4363, 60
  %4374 = add i32 %4363, 92
  %4375 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4374, i32 undef)  ; BufferLoad(srv,index,wot)
  %4376 = extractvalue %dx.types.ResRet.i32 %4375, 0
  %4377 = add i32 %4363, 116
  %4378 = fsub fast float %4329, %4366
  %4379 = fsub fast float %4330, %4369
  %4380 = fmul fast float %4337, %4378
  %4381 = fmul fast float %4337, %4379
  %4382 = call float @dx.op.unary.f32(i32 7, float %4380)  ; Saturate(value)
  %4383 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4384 = fsub fast float 1.000000e+00, %4383
  %4385 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4386 = extractvalue %dx.types.CBufRet.f32 %4385, 2
  %4387 = call float @dx.op.unary.f32(i32 83, float %4382)  ; DerivCoarseX(value)
  %4388 = call float @dx.op.unary.f32(i32 83, float %4384)  ; DerivCoarseX(value)
  %4389 = call float @dx.op.unary.f32(i32 84, float %4382)  ; DerivCoarseY(value)
  %4390 = call float @dx.op.unary.f32(i32 84, float %4384)  ; DerivCoarseY(value)
  %4391 = fmul fast float %4387, %4386
  %4392 = fmul fast float %4388, %4386
  %4393 = fmul fast float %4389, %4386
  %4394 = fmul fast float %4390, %4386
  %4395 = call float @dx.op.dot2.f32(i32 54, float %4393, float %4394, float %4393, float %4394)  ; Dot2(ax,ay,bx,by)
  %4396 = call float @dx.op.dot2.f32(i32 54, float %4391, float %4392, float %4391, float %4392)  ; Dot2(ax,ay,bx,by)
  %4397 = call float @dx.op.binary.f32(i32 35, float %4396, float %4395)  ; FMax(a,b)
  %4398 = call float @dx.op.unary.f32(i32 23, float %4397)  ; Log(value)
  %4399 = fmul fast float %4398, 5.000000e-01
  %4400 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4401 = extractvalue %dx.types.CBufRet.f32 %4400, 1
  %4402 = fadd fast float %4401, %4399
  %4403 = call float @dx.op.binary.f32(i32 35, float %4402, float 0.000000e+00)  ; FMax(a,b)
  %4404 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4405 = extractvalue %dx.types.CBufRet.f32 %4404, 3
  %4406 = fadd fast float %4405, %4403
  %4407 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4408 = extractvalue %dx.types.CBufRet.f32 %4407, 3
  %4409 = fadd fast float %4406, %4408
  %4410 = add i32 %4376, 0
  %4411 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4410, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4412 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4411, i32 0)  ; GetDimensions(handle,mipLevel)
  %4413 = extractvalue %dx.types.Dimensions %4412, 0
  %4414 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4413)  ; FirstbitLo(value)
  %4415 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4416 = extractvalue %dx.types.CBufRet.i32 %4415, 1
  %4417 = sub nsw i32 %4416, %4414
  %4418 = sitofp i32 %4417 to float
  %4419 = fsub fast float %4409, %4418
  %4420 = call float @dx.op.binary.f32(i32 35, float %4419, float 0.000000e+00)  ; FMax(a,b)
  %4421 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4411, %dx.types.Handle %37, float %4382, float %4384, float %4372, float undef, i32 0, i32 0, i32 undef, float %4420)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4422 = extractvalue %dx.types.ResRet.f32 %4421, 0
  %4423 = fcmp ule float %4422, 0x3FE0101020000000
  %4424 = extractvalue %dx.types.CBufRet.i32 %4415, 0
  %4425 = and i32 %4424, 128
  %4426 = icmp ne i32 %4425, 0
  %4427 = and i1 %4423, %4426
  br i1 %4427, label %4578, label %4428

; <label>:4428                                    ; preds = %4362
  %4429 = add i32 %4363, 20
  %4430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4429, i32 undef)  ; BufferLoad(srv,index,wot)
  %4431 = extractvalue %dx.types.ResRet.f32 %4430, 0
  %4432 = add i32 %4363, 24
  %4433 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4432, i32 undef)  ; BufferLoad(srv,index,wot)
  %4434 = extractvalue %dx.types.ResRet.f32 %4433, 0
  %4435 = add i32 %4363, 40
  %4436 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4435, i32 undef)  ; BufferLoad(srv,index,wot)
  %4437 = extractvalue %dx.types.ResRet.f32 %4436, 0
  %4438 = add i32 %4363, 96
  %4439 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4438, i32 undef)  ; BufferLoad(srv,index,wot)
  %4440 = extractvalue %dx.types.ResRet.i32 %4439, 0
  %4441 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4442 = extractvalue %dx.types.CBufRet.f32 %4441, 2
  %4443 = fmul fast float %4442, %4382
  %4444 = fmul fast float %4442, %4384
  %4445 = extractvalue %dx.types.CBufRet.f32 %4441, 3
  %4446 = fadd fast float %4443, %4445
  %4447 = fadd fast float %4444, %4445
  %4448 = add i32 %4440, 0
  %4449 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4448, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4450 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4449, i32 0)  ; GetDimensions(handle,mipLevel)
  %4451 = extractvalue %dx.types.Dimensions %4450, 0
  %4452 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4451)  ; FirstbitLo(value)
  %4453 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4454 = extractvalue %dx.types.CBufRet.i32 %4453, 1
  %4455 = sub nsw i32 %4454, %4452
  %4456 = sitofp i32 %4455 to float
  %4457 = fsub fast float %4406, %4456
  %4458 = call float @dx.op.binary.f32(i32 35, float %4457, float 0.000000e+00)  ; FMax(a,b)
  %4459 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4449, %dx.types.Handle %37, float %4446, float %4447, float %4437, float undef, i32 0, i32 0, i32 undef, float %4458)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4460 = extractvalue %dx.types.ResRet.f32 %4459, 0
  %4461 = fmul fast float %4460, %4431
  %4462 = fadd fast float %4461, %4434
  %4463 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4464 = extractvalue %dx.types.CBufRet.f32 %4463, 0
  %4465 = extractvalue %dx.types.CBufRet.f32 %4463, 1
  %4466 = extractvalue %dx.types.CBufRet.f32 %4463, 2
  %4467 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4468 = extractvalue %dx.types.CBufRet.f32 %4467, 3
  %4469 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4470 = extractvalue %dx.types.CBufRet.f32 %4469, 3
  %4471 = extractvalue %dx.types.CBufRet.f32 %4463, 3
  %4472 = fadd fast float %4468, %4329
  %4473 = fadd fast float %4470, %4330
  %4474 = fadd fast float %4462, %4471
  %4475 = fmul fast float %4472, %4464
  %4476 = call float @dx.op.tertiary.f32(i32 46, float %4473, float %4465, float %4475)  ; FMad(a,b,c)
  %4477 = call float @dx.op.tertiary.f32(i32 46, float %4474, float %4466, float %4476)  ; FMad(a,b,c)
  %4478 = fsub fast float %4477, %4471
  %4479 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4480 = extractvalue %dx.types.CBufRet.f32 %4479, 2
  %4481 = fsub fast float %4478, %4480
  %4482 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4483 = extractvalue %dx.types.CBufRet.i32 %4482, 0
  %4484 = call i32 @dx.op.binary.i32(i32 40, i32 %4360, i32 %4483)  ; UMin(a,b)
  %4485 = mul i32 %4484, 36
  %4486 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4485, i32 undef)  ; BufferLoad(srv,index,wot)
  %4487 = extractvalue %dx.types.ResRet.i32 %4486, 0
  %4488 = add i32 %4485, 4
  %4489 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4490 = extractvalue %dx.types.CBufRet.f32 %4489, 0
  %4491 = fmul fast float %4490, %4382
  %4492 = fmul fast float %4490, %4384
  %4493 = extractvalue %dx.types.CBufRet.f32 %4489, 1
  %4494 = fadd fast float %4491, %4493
  %4495 = fadd fast float %4492, %4493
  %4496 = icmp eq i32 %4487, 0
  br i1 %4496, label %4565, label %4497

; <label>:4497                                    ; preds = %4428
  br label %4498

; <label>:4498                                    ; preds = %4555, %4497
  %4499 = phi float [ %4556, %4555 ], [ 0.000000e+00, %4497 ]
  %4500 = phi float [ %4557, %4555 ], [ 0.000000e+00, %4497 ]
  %4501 = phi float [ %4558, %4555 ], [ 0.000000e+00, %4497 ]
  %4502 = phi float [ %4559, %4555 ], [ 0.000000e+00, %4497 ]
  %4503 = phi float [ %4560, %4555 ], [ 0.000000e+00, %4497 ]
  %4504 = phi float [ %4561, %4555 ], [ 0.000000e+00, %4497 ]
  %4505 = phi i32 [ %4562, %4555 ], [ 0, %4497 ]
  %4506 = shl i32 %4505, 2
  %4507 = add i32 %4373, %4506
  %4508 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4507, i32 undef)  ; BufferLoad(srv,index,wot)
  %4509 = extractvalue %dx.types.ResRet.f32 %4508, 0
  %4510 = add i32 %4377, %4506
  %4511 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4510, i32 undef)  ; BufferLoad(srv,index,wot)
  %4512 = extractvalue %dx.types.ResRet.i32 %4511, 0
  %4513 = add i32 %4512, 0
  %4514 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4513, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4515 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4514, i32 0)  ; GetDimensions(handle,mipLevel)
  %4516 = extractvalue %dx.types.Dimensions %4515, 0
  %4517 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4516)  ; FirstbitLo(value)
  %4518 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4519 = extractvalue %dx.types.CBufRet.i32 %4518, 1
  %4520 = sub nsw i32 %4519, %4517
  %4521 = sitofp i32 %4520 to float
  %4522 = fsub fast float %4406, %4521
  %4523 = call float @dx.op.binary.f32(i32 35, float %4522, float 0.000000e+00)  ; FMax(a,b)
  %4524 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4514, %dx.types.Handle %37, float %4494, float %4495, float %4509, float undef, i32 0, i32 0, i32 undef, float %4523)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4525 = extractvalue %dx.types.ResRet.f32 %4524, 0
  %4526 = fcmp fast ogt float %4525, 0.000000e+00
  br i1 %4526, label %4527, label %4555

; <label>:4527                                    ; preds = %4498
  %4528 = add i32 %4488, %4506
  %4529 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4528, i32 undef)  ; BufferLoad(srv,index,wot)
  %4530 = extractvalue %dx.types.ResRet.i32 %4529, 0
  %4531 = and i32 %4530, 32767
  %4532 = mul nuw nsw i32 %4531, 928
  %4533 = add nuw nsw i32 %4532, 48
  %4534 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4533, i32 undef)  ; BufferLoad(srv,index,wot)
  %4535 = extractvalue %dx.types.ResRet.f32 %4534, 0
  %4536 = extractvalue %dx.types.ResRet.f32 %4534, 1
  %4537 = extractvalue %dx.types.ResRet.f32 %4534, 2
  %4538 = add nuw nsw i32 %4532, 60
  %4539 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4538, i32 undef)  ; BufferLoad(srv,index,wot)
  %4540 = extractvalue %dx.types.ResRet.f32 %4539, 0
  %4541 = extractvalue %dx.types.ResRet.f32 %4539, 1
  %4542 = extractvalue %dx.types.ResRet.f32 %4539, 2
  %4543 = fmul fast float %4535, %4525
  %4544 = fmul fast float %4536, %4525
  %4545 = fmul fast float %4537, %4525
  %4546 = fadd fast float %4543, %4499
  %4547 = fadd fast float %4544, %4500
  %4548 = fadd fast float %4545, %4501
  %4549 = fmul fast float %4540, %4525
  %4550 = fmul fast float %4541, %4525
  %4551 = fmul fast float %4542, %4525
  %4552 = fadd fast float %4549, %4502
  %4553 = fadd fast float %4550, %4503
  %4554 = fadd fast float %4551, %4504
  br label %4555

; <label>:4555                                    ; preds = %4527, %4498
  %4556 = phi float [ %4546, %4527 ], [ %4499, %4498 ]
  %4557 = phi float [ %4547, %4527 ], [ %4500, %4498 ]
  %4558 = phi float [ %4548, %4527 ], [ %4501, %4498 ]
  %4559 = phi float [ %4552, %4527 ], [ %4502, %4498 ]
  %4560 = phi float [ %4553, %4527 ], [ %4503, %4498 ]
  %4561 = phi float [ %4554, %4527 ], [ %4504, %4498 ]
  %4562 = add nuw i32 %4505, 1
  %4563 = icmp eq i32 %4562, %4487
  br i1 %4563, label %4564, label %4498

; <label>:4564                                    ; preds = %4555
  br label %4565

; <label>:4565                                    ; preds = %4564, %4428
  %4566 = phi float [ 0.000000e+00, %4428 ], [ %4556, %4564 ]
  %4567 = phi float [ 0.000000e+00, %4428 ], [ %4557, %4564 ]
  %4568 = phi float [ 0.000000e+00, %4428 ], [ %4558, %4564 ]
  %4569 = phi float [ 0.000000e+00, %4428 ], [ %4559, %4564 ]
  %4570 = phi float [ 0.000000e+00, %4428 ], [ %4560, %4564 ]
  %4571 = phi float [ 0.000000e+00, %4428 ], [ %4561, %4564 ]
  %4572 = fadd fast float %4569, %4566
  %4573 = fmul fast float %4572, 0x3F847AE140000000
  %4574 = fadd fast float %4570, %4567
  %4575 = fmul fast float %4574, 0x3F847AE140000000
  %4576 = fadd fast float %4571, %4568
  %4577 = fmul fast float %4576, 0x3F847AE140000000
  br label %4578

; <label>:4578                                    ; preds = %4565, %4362, %4307, %4304, %4275, %4237
  %4579 = phi float [ %4289, %4275 ], [ -1.310720e+05, %4237 ], [ %4481, %4565 ], [ -1.310720e+05, %4307 ], [ -1.310720e+05, %4362 ], [ -1.310720e+05, %4304 ]
  %4580 = phi float [ %4299, %4275 ], [ 0.000000e+00, %4237 ], [ %4573, %4565 ], [ 0.000000e+00, %4307 ], [ 0.000000e+00, %4362 ], [ 0.000000e+00, %4304 ]
  %4581 = phi float [ %4301, %4275 ], [ 0.000000e+00, %4237 ], [ %4575, %4565 ], [ 0.000000e+00, %4307 ], [ 0.000000e+00, %4362 ], [ 0.000000e+00, %4304 ]
  %4582 = phi float [ %4303, %4275 ], [ 0.000000e+00, %4237 ], [ %4577, %4565 ], [ 0.000000e+00, %4307 ], [ 0.000000e+00, %4362 ], [ 0.000000e+00, %4304 ]
  %4583 = phi i1 [ true, %4275 ], [ false, %4237 ], [ true, %4565 ], [ false, %4307 ], [ false, %4362 ], [ false, %4304 ]
  %4584 = and i32 %159, 3
  %4585 = icmp eq i32 %4584, 1
  %4586 = select i1 %4585, float 1.000000e+00, float 0.000000e+00
  %4587 = fsub fast float %4579, %143
  %4588 = call float @dx.op.unary.f32(i32 7, float %4587)  ; Saturate(value)
  %4589 = select i1 %4583, float %4588, float 1.000000e+00
  %4590 = fmul fast float %4589, %4586
  %4591 = icmp eq i32 %4584, 3
  %4592 = select i1 %4591, float 1.000000e+00, float %4590
  %4593 = call float @dx.op.binary.f32(i32 35, float %4180, float %4592)  ; FMax(a,b)
  %4594 = call float @dx.op.unary.f32(i32 7, float %4593)  ; Saturate(value)
  %4595 = fcmp fast une float %4594, 0.000000e+00
  %4596 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4597 = call float @dx.op.unary.f32(i32 25, float %4596)  ; Rsqrt(value)
  br i1 %4595, label %4605, label %4598

; <label>:4598                                    ; preds = %4578
  %4599 = fmul fast float %4597, %141
  %4600 = fmul fast float %4597, %142
  %4601 = fmul fast float %4597, %143
  %4602 = fsub fast float -0.000000e+00, %4599
  %4603 = fsub fast float -0.000000e+00, %4600
  %4604 = fsub fast float -0.000000e+00, %4601
  br label %4773

; <label>:4605                                    ; preds = %4578
  %4606 = fmul fast float %141, %4597
  %4607 = fsub fast float -0.000000e+00, %4606
  %4608 = fmul fast float %142, %4597
  %4609 = fsub fast float -0.000000e+00, %4608
  %4610 = fmul fast float %143, %4597
  %4611 = fsub fast float -0.000000e+00, %4610
  %4612 = call float @dx.op.dot3.f32(i32 55, float %4607, float %4609, float %4611, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4613 = fmul fast float %4594, 2.500000e+00
  %4614 = call float @dx.op.unary.f32(i32 7, float %4613)  ; Saturate(value)
  %4615 = fmul fast float %4594, 0x4013FFFFE0000000
  %4616 = fadd fast float %4615, 0xBFFFFFFFE0000000
  %4617 = call float @dx.op.unary.f32(i32 7, float %4616)  ; Saturate(value)
  %4618 = fmul fast float %4594, 0x4004000020000000
  %4619 = fadd fast float %4618, 0xBFF8000040000000
  %4620 = call float @dx.op.unary.f32(i32 7, float %4619)  ; Saturate(value)
  %4621 = call float @dx.op.unary.f32(i32 7, float %4614)  ; Saturate(value)
  %4622 = fmul fast float %4183, 1.000000e+01
  %4623 = call float @dx.op.unary.f32(i32 7, float %4622)  ; Saturate(value)
  %4624 = fmul fast float %4623, 2.000000e+00
  %4625 = fsub fast float 3.000000e+00, %4624
  %4626 = fmul fast float %4623, %4623
  %4627 = fmul fast float %4626, %4625
  %4628 = fsub fast float 1.000000e+00, %4627
  %4629 = fsub fast float 0x3FE3333340000000, %4204
  %4630 = fmul fast float %4629, 0x400AAAAAA0000000
  %4631 = call float @dx.op.unary.f32(i32 7, float %4630)  ; Saturate(value)
  %4632 = fmul fast float %4628, %4631
  %4633 = fmul fast float %4216, 0x3FEA2B8620000000
  %4634 = fmul fast float %4217, 0x3FEA2B8620000000
  %4635 = fmul fast float %4218, 0x3FEA2B8620000000
  %4636 = fadd fast float %4633, 0x3FC81DFBA0000000
  %4637 = fmul fast float %4636, %4216
  %4638 = fadd fast float %4637, 0x3F910E6020000000
  %4639 = fadd fast float %4634, 0x3FC81DFBA0000000
  %4640 = fmul fast float %4639, %4217
  %4641 = fadd fast float %4640, 0x3F910E6020000000
  %4642 = fadd fast float %4635, 0x3FC81DFBA0000000
  %4643 = fmul fast float %4642, %4218
  %4644 = fadd fast float %4643, 0x3F910E6020000000
  %4645 = call float @dx.op.unary.f32(i32 7, float %4638)  ; Saturate(value)
  %4646 = call float @dx.op.unary.f32(i32 7, float %4641)  ; Saturate(value)
  %4647 = call float @dx.op.unary.f32(i32 7, float %4644)  ; Saturate(value)
  %4648 = fsub fast float %4645, %4216
  %4649 = fsub fast float %4646, %4217
  %4650 = fsub fast float %4647, %4218
  %4651 = fmul fast float %4648, %4621
  %4652 = fmul fast float %4651, %4632
  %4653 = fmul fast float %4649, %4621
  %4654 = fmul fast float %4653, %4632
  %4655 = fmul fast float %4650, %4621
  %4656 = fmul fast float %4655, %4632
  %4657 = fadd fast float %4652, %4216
  %4658 = fadd fast float %4654, %4217
  %4659 = fadd fast float %4656, %4218
  %4660 = fmul fast float %4177, %4177
  %4661 = fmul fast float %4660, %4660
  %4662 = fadd fast float %4617, 1.000000e+00
  %4663 = fsub fast float %4662, %4632
  %4664 = call float @dx.op.unary.f32(i32 7, float %4663)  ; Saturate(value)
  %4665 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4666 = call float @dx.op.unary.f32(i32 7, float %4665)  ; Saturate(value)
  %4667 = fsub fast float 1.000000e+00, %4661
  %4668 = call float @dx.op.binary.f32(i32 36, float %4664, float %4667)  ; FMin(a,b)
  %4669 = call float @dx.op.unary.f32(i32 7, float %4620)  ; Saturate(value)
  %4670 = call float @dx.op.binary.f32(i32 35, float %4668, float %4669)  ; FMax(a,b)
  %4671 = fadd fast float %4666, 0xBFE4CCCCC0000000
  %4672 = fmul fast float %4671, 0x4006DB6DA0000000
  %4673 = call float @dx.op.unary.f32(i32 7, float %4672)  ; Saturate(value)
  %4674 = fmul fast float %4673, 2.000000e+00
  %4675 = fsub fast float 3.000000e+00, %4674
  %4676 = bitcast float %4201 to i32
  %4677 = ashr i32 %4676, 1
  %4678 = add nsw i32 %4677, 532487669
  %4679 = bitcast i32 %4678 to float
  %4680 = fsub fast float 1.000000e+00, %4679
  %4681 = bitcast float %4680 to i32
  %4682 = sub nsw i32 2129859010, %4681
  %4683 = bitcast i32 %4682 to float
  %4684 = fmul fast float %4683, 2.000000e+00
  %4685 = bitcast float %4202 to i32
  %4686 = ashr i32 %4685, 1
  %4687 = add nsw i32 %4686, 532487669
  %4688 = bitcast i32 %4687 to float
  %4689 = fsub fast float 1.000000e+00, %4688
  %4690 = bitcast float %4689 to i32
  %4691 = sub nsw i32 2129859010, %4690
  %4692 = bitcast i32 %4691 to float
  %4693 = fmul fast float %4692, 2.000000e+00
  %4694 = bitcast float %4203 to i32
  %4695 = ashr i32 %4694, 1
  %4696 = add nsw i32 %4695, 532487669
  %4697 = bitcast i32 %4696 to float
  %4698 = fsub fast float 1.000000e+00, %4697
  %4699 = bitcast float %4698 to i32
  %4700 = sub nsw i32 2129859010, %4699
  %4701 = bitcast i32 %4700 to float
  %4702 = fmul fast float %4701, 2.000000e+00
  %4703 = fsub fast float 0x4002A9FBE0000000, %4684
  %4704 = fadd fast float %4684, 0x3FD54FDF00000000
  %4705 = bitcast float %4704 to i32
  %4706 = sub nsw i32 2129859010, %4705
  %4707 = bitcast i32 %4706 to float
  %4708 = fmul fast float %4707, %4703
  %4709 = fmul fast float %4708, %4708
  %4710 = fsub fast float 0x4002A9FBE0000000, %4693
  %4711 = fadd fast float %4693, 0x3FD54FDF00000000
  %4712 = bitcast float %4711 to i32
  %4713 = sub nsw i32 2129859010, %4712
  %4714 = bitcast i32 %4713 to float
  %4715 = fmul fast float %4714, %4710
  %4716 = fmul fast float %4715, %4715
  %4717 = fsub fast float 0x4002A9FBE0000000, %4702
  %4718 = fadd fast float %4702, 0x3FD54FDF00000000
  %4719 = bitcast float %4718 to i32
  %4720 = sub nsw i32 2129859010, %4719
  %4721 = bitcast i32 %4720 to float
  %4722 = fmul fast float %4721, %4717
  %4723 = fmul fast float %4722, %4722
  %4724 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4709)  ; FMax(a,b)
  %4725 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4716)  ; FMax(a,b)
  %4726 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4723)  ; FMax(a,b)
  %4727 = fsub fast float 1.000000e+00, %4612
  %4728 = fadd fast float %4727, %4628
  %4729 = call float @dx.op.unary.f32(i32 7, float %4728)  ; Saturate(value)
  %4730 = fsub fast float 1.000000e+00, %4592
  %4731 = fmul fast float %4670, %4730
  %4732 = fmul fast float %4673, %4673
  %4733 = fmul fast float %4732, %4731
  %4734 = fmul fast float %4733, %4675
  %4735 = fmul fast float %4730, 0xBFE99999A0000000
  %4736 = fmul fast float %4735, %4621
  %4737 = fmul fast float %4736, %4632
  %4738 = fadd fast float %4737, 1.000000e+00
  %4739 = fadd fast float %4204, -1.000000e+00
  %4740 = fmul fast float %4738, %4739
  %4741 = fadd fast float %4740, 1.000000e+00
  %4742 = fsub fast float %4724, %4201
  %4743 = fsub fast float %4725, %4202
  %4744 = fsub fast float %4726, %4203
  %4745 = fmul fast float %4734, %4742
  %4746 = fmul fast float %4734, %4743
  %4747 = fmul fast float %4734, %4744
  %4748 = fadd fast float %4745, %4201
  %4749 = fadd fast float %4746, %4202
  %4750 = fadd fast float %4747, %4203
  %4751 = fsub fast float %85, %4165
  %4752 = fsub fast float %86, %4166
  %4753 = fsub fast float %87, %4167
  %4754 = fmul fast float %4734, %4751
  %4755 = fmul fast float %4734, %4752
  %4756 = fmul fast float %4734, %4753
  %4757 = fadd fast float %4754, %4165
  %4758 = fadd fast float %4755, %4166
  %4759 = fadd fast float %4756, %4167
  %4760 = fmul fast float %4734, %4729
  %4761 = call float @dx.op.unary.f32(i32 7, float %4741)  ; Saturate(value)
  %4762 = fsub fast float 1.000000e+00, %4761
  %4763 = fmul fast float %4760, %4762
  %4764 = fadd fast float %4763, %4761
  %4765 = fsub fast float 1.000000e+00, %4177
  %4766 = fmul fast float %4734, %4765
  %4767 = fadd fast float %4766, %4177
  %4768 = call float @dx.op.dot3.f32(i32 55, float %4757, float %4758, float %4759, float %4757, float %4758, float %4759)  ; Dot3(ax,ay,az,bx,by,bz)
  %4769 = call float @dx.op.unary.f32(i32 25, float %4768)  ; Rsqrt(value)
  %4770 = fmul fast float %4757, %4769
  %4771 = fmul fast float %4758, %4769
  %4772 = fmul fast float %4759, %4769
  br label %4773

; <label>:4773                                    ; preds = %4605, %4598
  %4774 = phi float [ %4604, %4598 ], [ %4611, %4605 ]
  %4775 = phi float [ %4603, %4598 ], [ %4609, %4605 ]
  %4776 = phi float [ %4602, %4598 ], [ %4607, %4605 ]
  %4777 = phi float [ %4601, %4598 ], [ %4610, %4605 ]
  %4778 = phi float [ %4600, %4598 ], [ %4608, %4605 ]
  %4779 = phi float [ %4599, %4598 ], [ %4606, %4605 ]
  %4780 = phi float [ %4216, %4598 ], [ %4657, %4605 ]
  %4781 = phi float [ %4217, %4598 ], [ %4658, %4605 ]
  %4782 = phi float [ %4218, %4598 ], [ %4659, %4605 ]
  %4783 = phi float [ %4165, %4598 ], [ %4770, %4605 ]
  %4784 = phi float [ %4166, %4598 ], [ %4771, %4605 ]
  %4785 = phi float [ %4167, %4598 ], [ %4772, %4605 ]
  %4786 = phi float [ %4201, %4598 ], [ %4748, %4605 ]
  %4787 = phi float [ %4202, %4598 ], [ %4749, %4605 ]
  %4788 = phi float [ %4203, %4598 ], [ %4750, %4605 ]
  %4789 = phi float [ %4204, %4598 ], [ %4764, %4605 ]
  %4790 = phi float [ %4177, %4598 ], [ %4767, %4605 ]
  %4791 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4792 = extractvalue %dx.types.CBufRet.f32 %4791, 2
  %4793 = extractvalue %dx.types.CBufRet.f32 %4791, 3
  %4794 = fmul fast float %4792, %78
  %4795 = fmul fast float %4793, %79
  %4796 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4797 = extractvalue %dx.types.CBufRet.f32 %4796, 0
  %4798 = extractvalue %dx.types.CBufRet.f32 %4796, 1
  %4799 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4794, float %4795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4800 = extractvalue %dx.types.ResRet.f32 %4799, 0
  %4801 = fmul fast float %4800, %4798
  %4802 = call float @dx.op.unary.f32(i32 7, float %4801)  ; Saturate(value)
  %4803 = fadd fast float %4802, -1.000000e+00
  %4804 = fmul fast float %4803, %4797
  %4805 = fadd fast float %4804, 1.000000e+00
  %4806 = select i1 %183, float 0.000000e+00, float %4788
  %4807 = call float @dx.op.dot3.f32(i32 55, float %4783, float %4784, float %4785, float %4776, float %4775, float %4774)  ; Dot3(ax,ay,az,bx,by,bz)
  %4808 = call float @dx.op.unary.f32(i32 7, float %4807)  ; Saturate(value)
  %4809 = call float @dx.op.dot3.f32(i32 55, float %4779, float %4778, float %4777, float %4783, float %4784, float %4785)  ; Dot3(ax,ay,az,bx,by,bz)
  %4810 = fmul fast float %4809, 2.000000e+00
  %4811 = fmul fast float %4810, %4783
  %4812 = fmul fast float %4810, %4784
  %4813 = fmul fast float %4810, %4785
  %4814 = fsub fast float %4779, %4811
  %4815 = fsub fast float %4778, %4812
  %4816 = fsub fast float %4777, %4813
  %4817 = call float @dx.op.binary.f32(i32 36, float %4790, float %4805)  ; FMin(a,b)
  %4818 = fsub fast float 1.000000e+00, %4817
  %4819 = bitcast float %4818 to i32
  %4820 = ashr i32 %4819, 1
  %4821 = add nsw i32 %4820, 532487669
  %4822 = bitcast i32 %4821 to float
  %4823 = fsub fast float 1.000000e+00, %4789
  %4824 = call float @dx.op.binary.f32(i32 35, float %4823, float 0x3F847AE140000000)  ; FMax(a,b)
  %4825 = fmul fast float %4824, %4824
  %4826 = fmul fast float %4825, %4825
  %4827 = call float @dx.op.unary.f32(i32 7, float %4808)  ; Saturate(value)
  %4828 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %4822, float %4826, float %4827, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4829 = extractvalue %dx.types.ResRet.f32 %4828, 0
  %4830 = fsub fast float 1.000000e+00, %4790
  %4831 = bitcast float %4830 to i32
  %4832 = sub nsw i32 2129859010, %4831
  %4833 = fsub fast float 1.000000e+00, %55
  %4834 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4835 = call float @dx.op.binary.f32(i32 35, float %4834, float 0x3FA99999A0000000)  ; FMax(a,b)
  %4836 = fdiv fast float %4833, %4835
  %4837 = call float @dx.op.dot3.f32(i32 55, float %4783, float %4784, float %4785, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4838 = call float @dx.op.unary.f32(i32 7, float %4837)  ; Saturate(value)
  %4839 = fmul fast float %4838, 5.000000e-01
  %4840 = fadd fast float %4839, 5.000000e-01
  %4841 = fmul fast float %4840, %55
  %4842 = call float @dx.op.dot3.f32(i32 55, float %4783, float %4784, float %4785, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4843 = call float @dx.op.unary.f32(i32 7, float %4842)  ; Saturate(value)
  %4844 = fmul fast float %4843, %4836
  %4845 = fadd fast float %4841, %4844
  %4846 = fsub fast float 5.000000e-01, %4839
  %4847 = fmul fast float %4846, %4780
  %4848 = fmul fast float %4846, %4781
  %4849 = fmul fast float %4846, %4782
  %4850 = fadd fast float %4845, %4847
  %4851 = fadd fast float %4845, %4848
  %4852 = fadd fast float %4845, %4849
  %4853 = call float @dx.op.dot3.f32(i32 55, float %4814, float %4815, float %4816, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4854 = call float @dx.op.unary.f32(i32 7, float %4853)  ; Saturate(value)
  %4855 = fmul fast float %4854, 5.000000e-01
  %4856 = fadd fast float %4855, 5.000000e-01
  %4857 = fmul fast float %4856, %55
  %4858 = call float @dx.op.dot3.f32(i32 55, float %4814, float %4815, float %4816, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %4859 = call float @dx.op.unary.f32(i32 7, float %4858)  ; Saturate(value)
  %4860 = fmul fast float %4859, %4836
  %4861 = fadd fast float %4857, %4860
  %4862 = fsub fast float 5.000000e-01, %4855
  %4863 = fmul fast float %4862, %4780
  %4864 = fmul fast float %4862, %4781
  %4865 = fmul fast float %4862, %4782
  %4866 = fadd fast float %4861, %4863
  %4867 = fadd fast float %4861, %4864
  %4868 = fadd fast float %4861, %4865
  %4869 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4870 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %4871 = extractvalue %dx.types.CBufRet.f32 %4870, 0
  %4872 = call float @dx.op.binary.f32(i32 36, float %4780, float %4871)  ; FMin(a,b)
  %4873 = fmul fast float %4872, %4818
  %4874 = fsub fast float 1.000000e+00, %4873
  %4875 = bitcast float %4874 to i32
  %4876 = sub nsw i32 2129859010, %4875
  %4877 = bitcast i32 %4876 to float
  %4878 = call float @dx.op.binary.f32(i32 36, float %4781, float %4871)  ; FMin(a,b)
  %4879 = fmul fast float %4878, %4818
  %4880 = fsub fast float 1.000000e+00, %4879
  %4881 = bitcast float %4880 to i32
  %4882 = sub nsw i32 2129859010, %4881
  %4883 = bitcast i32 %4882 to float
  %4884 = call float @dx.op.binary.f32(i32 36, float %4782, float %4871)  ; FMin(a,b)
  %4885 = fmul fast float %4884, %4818
  %4886 = fsub fast float 1.000000e+00, %4885
  %4887 = bitcast float %4886 to i32
  %4888 = sub nsw i32 2129859010, %4887
  %4889 = bitcast i32 %4888 to float
  %4890 = fmul fast float %4817, %56
  %4891 = fmul fast float %4890, %4850
  %4892 = fmul fast float %4891, %4877
  %4893 = fmul fast float %4817, %57
  %4894 = fmul fast float %4893, %4851
  %4895 = fmul fast float %4894, %4883
  %4896 = fmul fast float %4817, %58
  %4897 = fmul fast float %4896, %4852
  %4898 = fmul fast float %4897, %4889
  %4899 = call float @dx.op.binary.f32(i32 36, float %4786, float %4871)  ; FMin(a,b)
  %4900 = fmul fast float %4899, %4818
  %4901 = fsub fast float 1.000000e+00, %4900
  %4902 = bitcast float %4901 to i32
  %4903 = sub nsw i32 2129859010, %4902
  %4904 = bitcast i32 %4903 to float
  %4905 = call float @dx.op.binary.f32(i32 36, float %4787, float %4871)  ; FMin(a,b)
  %4906 = fmul fast float %4905, %4818
  %4907 = fsub fast float 1.000000e+00, %4906
  %4908 = bitcast float %4907 to i32
  %4909 = sub nsw i32 2129859010, %4908
  %4910 = bitcast i32 %4909 to float
  %4911 = call float @dx.op.binary.f32(i32 36, float %4806, float %4871)  ; FMin(a,b)
  %4912 = fmul fast float %4911, %4818
  %4913 = fsub fast float 1.000000e+00, %4912
  %4914 = bitcast float %4913 to i32
  %4915 = sub nsw i32 2129859010, %4914
  %4916 = bitcast i32 %4915 to float
  %4917 = fmul fast float %4890, %4866
  %4918 = fmul fast float %4917, %4904
  %4919 = fmul fast float %4893, %4867
  %4920 = fmul fast float %4919, %4910
  %4921 = fmul fast float %4896, %4868
  %4922 = fmul fast float %4921, %4916
  %4923 = call float @dx.op.dot3.f32(i32 55, float %4892, float %4895, float %4898, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4924 = select i1 %183, float 0.000000e+00, float %4892
  %4925 = select i1 %183, float %4923, float %4895
  %4926 = select i1 %183, float 0.000000e+00, float %4898
  %4927 = call float @dx.op.dot3.f32(i32 55, float %4918, float %4920, float %4922, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4928 = select i1 %183, float 0.000000e+00, float %4918
  %4929 = select i1 %183, float %4927, float %4920
  %4930 = select i1 %183, float 0.000000e+00, float %4922
  %4931 = fmul fast float %4808, 9.843750e-01
  %4932 = fmul fast float %4789, 9.843750e-01
  %4933 = fadd fast float %4931, 7.812500e-03
  %4934 = fadd fast float %4932, 7.812500e-03
  %4935 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %4933, float %4934, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4936 = extractvalue %dx.types.ResRet.f32 %4935, 2
  %4937 = extractvalue %dx.types.ResRet.f32 %4935, 3
  %4938 = fmul fast float %4936, %4786
  %4939 = fmul fast float %4936, %4787
  %4940 = fmul fast float %4936, %4806
  %4941 = fadd fast float %4938, %4937
  %4942 = fadd fast float %4939, %4937
  %4943 = fadd fast float %4940, %4937
  %4944 = fcmp fast ogt float %4178, 0.000000e+00
  br i1 %4944, label %4945, label %4971

; <label>:4945                                    ; preds = %4773
  %4946 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4178, float %4808, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4947 = extractvalue %dx.types.ResRet.f32 %4946, 0
  %4948 = extractvalue %dx.types.ResRet.f32 %4946, 1
  %4949 = extractvalue %dx.types.ResRet.f32 %4946, 2
  %4950 = fadd fast float %4947, -5.000000e-01
  %4951 = fadd fast float %4948, -5.000000e-01
  %4952 = fadd fast float %4949, -5.000000e-01
  %4953 = fsub fast float 1.000000e+00, %4786
  %4954 = fsub fast float 1.000000e+00, %4787
  %4955 = fsub fast float 1.000000e+00, %4806
  %4956 = fmul fast float %4786, 4.000000e+00
  %4957 = fmul fast float %4956, %4953
  %4958 = fmul fast float %4957, %4950
  %4959 = fmul fast float %4787, 4.000000e+00
  %4960 = fmul fast float %4959, %4954
  %4961 = fmul fast float %4960, %4951
  %4962 = fmul fast float %4806, 4.000000e+00
  %4963 = fmul fast float %4962, %4955
  %4964 = fmul fast float %4963, %4952
  %4965 = fadd fast float %4958, %4941
  %4966 = fadd fast float %4961, %4942
  %4967 = fadd fast float %4964, %4943
  %4968 = call float @dx.op.unary.f32(i32 7, float %4965)  ; Saturate(value)
  %4969 = call float @dx.op.unary.f32(i32 7, float %4966)  ; Saturate(value)
  %4970 = call float @dx.op.unary.f32(i32 7, float %4967)  ; Saturate(value)
  br label %4971

; <label>:4971                                    ; preds = %4945, %4773
  %4972 = phi float [ %4968, %4945 ], [ %4941, %4773 ]
  %4973 = phi float [ %4969, %4945 ], [ %4942, %4773 ]
  %4974 = phi float [ %4970, %4945 ], [ %4943, %4773 ]
  %4975 = call float @dx.op.binary.f32(i32 35, float %4973, float %4974)  ; FMax(a,b)
  %4976 = call float @dx.op.binary.f32(i32 35, float %4972, float %4975)  ; FMax(a,b)
  %4977 = fsub fast float 1.000000e+00, %4976
  %4978 = fmul fast float %4976, %4789
  %4979 = fadd fast float %4978, %4789
  %4980 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %4981 = extractvalue %dx.types.CBufRet.f32 %4980, 0
  %4982 = extractvalue %dx.types.CBufRet.f32 %4980, 1
  %4983 = extractvalue %dx.types.CBufRet.f32 %4980, 2
  %4984 = extractvalue %dx.types.CBufRet.f32 %4980, 3
  %4985 = fmul fast float %4979, %4981
  %4986 = fadd fast float %4985, %4982
  %4987 = call float @dx.op.unary.f32(i32 7, float %4986)  ; Saturate(value)
  %4988 = fmul fast float %4983, %4979
  %4989 = fadd fast float %4988, %4984
  %4990 = call float @dx.op.unary.f32(i32 7, float %4989)  ; Saturate(value)
  %4991 = fsub fast float 1.000000e+00, %4829
  %4992 = fadd fast float %4991, %4990
  %4993 = call float @dx.op.unary.f32(i32 7, float %4992)  ; Saturate(value)
  %4994 = fcmp fast olt float %4993, 1.000000e+00
  br i1 %4994, label %4995, label %5850

; <label>:4995                                    ; preds = %4971
  %4996 = fcmp fast olt float %4987, 1.000000e+00
  %4997 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %4998 = extractvalue %dx.types.CBufRet.f32 %4997, 0
  %4999 = fcmp fast ogt float %4998, 0.000000e+00
  %5000 = or i1 %4996, %4999
  %5001 = or i1 %4996, %4999
  %5002 = xor i1 %5001, true
  %5003 = zext i1 %5002 to i32
  br i1 %5000, label %5004, label %5247

; <label>:5004                                    ; preds = %4995
  %5005 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5006 = extractvalue %dx.types.CBufRet.f32 %5005, 0
  %5007 = extractvalue %dx.types.CBufRet.f32 %5005, 1
  %5008 = extractvalue %dx.types.CBufRet.f32 %5005, 2
  %5009 = extractvalue %dx.types.CBufRet.f32 %5005, 3
  %5010 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5011 = extractvalue %dx.types.CBufRet.f32 %5010, 0
  %5012 = extractvalue %dx.types.CBufRet.f32 %5010, 1
  %5013 = extractvalue %dx.types.CBufRet.f32 %5010, 2
  %5014 = extractvalue %dx.types.CBufRet.f32 %5010, 3
  %5015 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5016 = extractvalue %dx.types.CBufRet.f32 %5015, 0
  %5017 = extractvalue %dx.types.CBufRet.f32 %5015, 1
  %5018 = extractvalue %dx.types.CBufRet.f32 %5015, 2
  %5019 = extractvalue %dx.types.CBufRet.f32 %5015, 3
  %5020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5021 = extractvalue %dx.types.CBufRet.f32 %5020, 0
  %5022 = extractvalue %dx.types.CBufRet.f32 %5020, 1
  %5023 = extractvalue %dx.types.CBufRet.f32 %5020, 2
  %5024 = extractvalue %dx.types.CBufRet.f32 %5020, 3
  %5025 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5026 = extractvalue %dx.types.CBufRet.f32 %5025, 0
  %5027 = extractvalue %dx.types.CBufRet.f32 %5025, 1
  %5028 = extractvalue %dx.types.CBufRet.f32 %5025, 2
  %5029 = extractvalue %dx.types.CBufRet.f32 %5025, 3
  %5030 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5031 = extractvalue %dx.types.CBufRet.f32 %5030, 0
  %5032 = extractvalue %dx.types.CBufRet.f32 %5030, 1
  %5033 = extractvalue %dx.types.CBufRet.f32 %5030, 2
  %5034 = extractvalue %dx.types.CBufRet.f32 %5030, 3
  %5035 = call float @dx.op.dot3.f32(i32 55, float %5031, float %5032, float %5033, float %4814, float %4815, float %4816)  ; Dot3(ax,ay,az,bx,by,bz)
  %5036 = call float @dx.op.dot3.f32(i32 55, float %4783, float %4784, float %4785, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5037 = call float @dx.op.unary.f32(i32 6, float %5036)  ; FAbs(value)
  %5038 = fmul fast float %5037, 8.000000e+00
  %5039 = fadd fast float %5038, -6.000000e+00
  %5040 = call float @dx.op.unary.f32(i32 7, float %5039)  ; Saturate(value)
  %5041 = fmul fast float %5035, 8.000000e+00
  %5042 = fmul fast float %5041, %4998
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = fcmp fast ogt float %5043, 0.000000e+00
  br i1 %5044, label %5045, label %5222, !dx.controlflow.hints !82

; <label>:5045                                    ; preds = %5004
  %5046 = extractvalue %dx.types.CBufRet.f32 %4997, 1
  %5047 = extractvalue %dx.types.CBufRet.f32 %4997, 2
  %5048 = fsub fast float %5046, %5047
  %5049 = fmul fast float %5048, %4789
  %5050 = fadd fast float %5049, %5047
  %5051 = fmul fast float %196, 2.000000e+00
  %5052 = fmul fast float %197, 2.000000e+00
  %5053 = fadd fast float %5051, -1.000000e+00
  %5054 = fadd fast float %5052, -1.000000e+00
  %5055 = fmul fast float %5050, %5053
  %5056 = fmul fast float %5050, %5054
  %5057 = fadd fast float %5055, %78
  %5058 = fadd fast float %5056, %79
  %5059 = fmul fast float %5057, %4792
  %5060 = fmul fast float %5058, %4793
  %5061 = fadd fast float %4789, 0xBFE3333340000000
  %5062 = fmul fast float %5061, 0x4004000020000000
  %5063 = fsub fast float 1.000000e+00, %5062
  %5064 = call float @dx.op.unary.f32(i32 7, float %5063)  ; Saturate(value)
  %5065 = fmul fast float %5064, 3.000000e+00
  %5066 = fadd fast float %5065, %196
  %5067 = call float @dx.op.unary.f32(i32 27, float %5066)  ; Round_ni(value)
  %5068 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5059, float %5060, float %5067, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5069 = extractvalue %dx.types.ResRet.f32 %5068, 0
  %5070 = fcmp fast une float %5069, 0xFFF0000000000000
  %5071 = fcmp fast une float %5069, 0x7FF0000000000000
  %5072 = and i1 %5070, %5071
  %5073 = fcmp fast olt float %5069, 0.000000e+00
  %5074 = call float @dx.op.unary.f32(i32 6, float %5069)  ; FAbs(value)
  %5075 = fsub fast float 1.000000e+00, %5074
  %5076 = select i1 %5072, float 1.000000e+00, float 0.000000e+00
  %5077 = fmul fast float %5076, %5043
  %5078 = fcmp fast ogt float %5077, 0.000000e+00
  br i1 %5078, label %5079, label %5222, !dx.controlflow.hints !83

; <label>:5079                                    ; preds = %5045
  %5080 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5081 = extractvalue %dx.types.CBufRet.f32 %5080, 0
  %5082 = extractvalue %dx.types.CBufRet.f32 %5080, 1
  %5083 = extractvalue %dx.types.CBufRet.f32 %5080, 2
  %5084 = select i1 %5073, float 0.000000e+00, float %5081
  %5085 = select i1 %5073, float 0.000000e+00, float %5082
  %5086 = select i1 %5073, float 0.000000e+00, float %5083
  %5087 = select i1 %5073, float %5006, float %5021
  %5088 = select i1 %5073, float %5011, float %5026
  %5089 = select i1 %5073, float %5016, float %5031
  %5090 = select i1 %5073, float %5007, float %5022
  %5091 = select i1 %5073, float %5012, float %5027
  %5092 = select i1 %5073, float %5017, float %5032
  %5093 = select i1 %5073, float %5008, float %5023
  %5094 = select i1 %5073, float %5013, float %5028
  %5095 = select i1 %5073, float %5018, float %5033
  %5096 = select i1 %5073, float %5009, float %5024
  %5097 = select i1 %5073, float %5014, float %5029
  %5098 = select i1 %5073, float %5019, float %5034
  %5099 = fadd fast float %5084, %141
  %5100 = fadd fast float %5085, %142
  %5101 = fadd fast float %5086, %143
  %5102 = fmul fast float %5099, %5087
  %5103 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5090, float %5102)  ; FMad(a,b,c)
  %5104 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5093, float %5103)  ; FMad(a,b,c)
  %5105 = fadd fast float %5104, %5096
  %5106 = fmul fast float %5099, %5088
  %5107 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5091, float %5106)  ; FMad(a,b,c)
  %5108 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5094, float %5107)  ; FMad(a,b,c)
  %5109 = fadd fast float %5108, %5097
  %5110 = fmul fast float %5099, %5089
  %5111 = call float @dx.op.tertiary.f32(i32 46, float %5100, float %5092, float %5110)  ; FMad(a,b,c)
  %5112 = call float @dx.op.tertiary.f32(i32 46, float %5101, float %5095, float %5111)  ; FMad(a,b,c)
  %5113 = fadd fast float %5112, %5098
  %5114 = fdiv fast float 1.000000e+00, %5113
  %5115 = fmul fast float %5114, %5105
  %5116 = fmul fast float %5114, %5109
  %5117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5118 = extractvalue %dx.types.CBufRet.f32 %5117, 0
  %5119 = extractvalue %dx.types.CBufRet.f32 %5117, 1
  %5120 = fmul fast float %5115, %5118
  %5121 = fmul fast float %5116, %5119
  %5122 = extractvalue %dx.types.CBufRet.f32 %5117, 2
  %5123 = extractvalue %dx.types.CBufRet.f32 %5117, 3
  %5124 = fadd fast float %5120, %5122
  %5125 = fadd fast float %5121, %5123
  %5126 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5127 = extractvalue %dx.types.CBufRet.f32 %5126, 3
  %5128 = fmul fast float %5127, %4814
  %5129 = fmul fast float %5127, %4815
  %5130 = fmul fast float %5127, %4816
  %5131 = fadd fast float %5128, %5099
  %5132 = fadd fast float %5129, %5100
  %5133 = fadd fast float %5130, %5101
  %5134 = fmul fast float %5131, %5087
  %5135 = call float @dx.op.tertiary.f32(i32 46, float %5132, float %5090, float %5134)  ; FMad(a,b,c)
  %5136 = call float @dx.op.tertiary.f32(i32 46, float %5133, float %5093, float %5135)  ; FMad(a,b,c)
  %5137 = fadd fast float %5136, %5096
  %5138 = fmul fast float %5131, %5088
  %5139 = call float @dx.op.tertiary.f32(i32 46, float %5132, float %5091, float %5138)  ; FMad(a,b,c)
  %5140 = call float @dx.op.tertiary.f32(i32 46, float %5133, float %5094, float %5139)  ; FMad(a,b,c)
  %5141 = fadd fast float %5140, %5097
  %5142 = fmul fast float %5131, %5089
  %5143 = call float @dx.op.tertiary.f32(i32 46, float %5132, float %5092, float %5142)  ; FMad(a,b,c)
  %5144 = call float @dx.op.tertiary.f32(i32 46, float %5133, float %5095, float %5143)  ; FMad(a,b,c)
  %5145 = fadd fast float %5144, %5098
  %5146 = fdiv fast float 1.000000e+00, %5145
  %5147 = fmul fast float %5146, %5137
  %5148 = fmul fast float %5146, %5141
  %5149 = fmul fast float %5124, 2.000000e+00
  %5150 = fadd fast float %5149, -1.000000e+00
  %5151 = call float @dx.op.unary.f32(i32 6, float %5150)  ; FAbs(value)
  %5152 = fmul fast float %5151, 5.000000e+00
  %5153 = fadd fast float %5152, -4.000000e+00
  %5154 = call float @dx.op.unary.f32(i32 7, float %5153)  ; Saturate(value)
  %5155 = fmul fast float %5154, %5040
  %5156 = fsub fast float %5115, %5147
  %5157 = fmul fast float %5118, %5156
  %5158 = fmul fast float %5155, %5157
  %5159 = fsub fast float %5147, %5115
  %5160 = fmul fast float %5118, %5159
  %5161 = fadd fast float %5160, %5158
  %5162 = fsub fast float %5148, %5116
  %5163 = fmul fast float %5119, %5162
  %5164 = fmul fast float %5161, %5075
  %5165 = fmul fast float %5163, %5075
  %5166 = fadd fast float %5164, %5124
  %5167 = fadd fast float %5165, %5125
  %5168 = fsub fast float %5146, %5114
  %5169 = fmul fast float %5168, %5075
  %5170 = fadd fast float %5169, %5114
  %5171 = fdiv fast float 1.000000e+00, %5170
  %5172 = fadd fast float %4789, -1.000000e+00
  %5173 = fsub fast float %5171, %5113
  %5174 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5175 = extractvalue %dx.types.CBufRet.f32 %5174, 2
  %5176 = fmul fast float %5175, %5171
  %5177 = fdiv fast float 1.600000e+02, %5176
  %5178 = fmul fast float %5172, %5172
  %5179 = fmul fast float %5178, 0xBFB5B17960000000
  %5180 = fmul fast float %5179, %5173
  %5181 = fmul fast float %5180, %5177
  %5182 = call float @dx.op.unary.f32(i32 21, float %5181)  ; Exp(value)
  %5183 = fmul fast float %5182, 0x3FF04B2960000000
  %5184 = fsub fast float 0x3FF04B2960000000, %5183
  %5185 = call float @dx.op.unary.f32(i32 7, float %5184)  ; Saturate(value)
  %5186 = fmul fast float %5185, 4.000000e+00
  %5187 = fadd fast float %196, -5.000000e-01
  %5188 = fadd fast float %197, -5.000000e-01
  %5189 = fmul fast float %5185, 0x3FBEB851E0000000
  %5190 = call float @dx.op.unary.f32(i32 7, float %5189)  ; Saturate(value)
  %5191 = fmul fast float %5190, %5187
  %5192 = fmul fast float %5190, %5188
  %5193 = fadd fast float %5166, %5191
  %5194 = fadd fast float %5167, %5192
  %5195 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5193, float %5194, float undef, float undef, i32 0, i32 0, i32 undef, float %5186)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5196 = extractvalue %dx.types.ResRet.f32 %5195, 0
  %5197 = extractvalue %dx.types.ResRet.f32 %5195, 1
  %5198 = extractvalue %dx.types.ResRet.f32 %5195, 2
  %5199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5199, 2
  %5201 = fmul fast float %5200, %5196
  %5202 = fmul fast float %5200, %5197
  %5203 = fmul fast float %5200, %5198
  %5204 = select i1 %183, float 0.000000e+00, float %5202
  %5205 = select i1 %183, float 0.000000e+00, float %5203
  %5206 = fmul fast float %5193, 2.000000e+00
  %5207 = fmul fast float %5194, 2.000000e+00
  %5208 = fadd fast float %5206, -1.000000e+00
  %5209 = fadd fast float %5207, -1.000000e+00
  %5210 = fmul fast float %5208, %5208
  %5211 = fsub fast float 1.000000e+00, %5210
  %5212 = call float @dx.op.unary.f32(i32 7, float %5211)  ; Saturate(value)
  %5213 = fsub fast float 1.000000e+00, %5212
  %5214 = fmul fast float %5213, %5040
  %5215 = fadd fast float %5214, %5212
  %5216 = fmul fast float %5209, %5209
  %5217 = fsub fast float 1.000000e+00, %5216
  %5218 = call float @dx.op.unary.f32(i32 7, float %5217)  ; Saturate(value)
  %5219 = fmul fast float %5215, %5218
  %5220 = call float @dx.op.unary.f32(i32 7, float %5219)  ; Saturate(value)
  %5221 = fmul fast float %5220, %5077
  br label %5222

; <label>:5222                                    ; preds = %5079, %5045, %5004
  %5223 = phi float [ %5201, %5079 ], [ 0.000000e+00, %5045 ], [ 0.000000e+00, %5004 ]
  %5224 = phi float [ %5204, %5079 ], [ 0.000000e+00, %5045 ], [ 0.000000e+00, %5004 ]
  %5225 = phi float [ %5205, %5079 ], [ 0.000000e+00, %5045 ], [ 0.000000e+00, %5004 ]
  %5226 = phi float [ %5221, %5079 ], [ 0.000000e+00, %5045 ], [ 0.000000e+00, %5004 ]
  %5227 = fcmp fast olt float %5226, 1.000000e+00
  %5228 = or i1 %5227, %5002
  %5229 = zext i1 %5228 to i32
  %5230 = fmul fast float %5226, %4987
  %5231 = fsub fast float %5226, %5230
  %5232 = fsub fast float 1.000000e+00, %4993
  %5233 = fmul fast float %5231, %5232
  %5234 = fadd fast float %5233, %4993
  %5235 = fsub fast float %5234, %5231
  %5236 = call float @dx.op.unary.f32(i32 7, float %5235)  ; Saturate(value)
  %5237 = fmul fast float %5236, %4928
  %5238 = fmul fast float %5236, %4929
  %5239 = fmul fast float %5236, %4930
  %5240 = fsub fast float -0.000000e+00, %5234
  %5241 = fmul fast float %5231, %5223
  %5242 = fmul fast float %5231, %5224
  %5243 = fmul fast float %5231, %5225
  %5244 = fadd fast float %5241, %5237
  %5245 = fadd fast float %5242, %5238
  %5246 = fadd fast float %5243, %5239
  br label %5247

; <label>:5247                                    ; preds = %5222, %4995
  %5248 = phi float [ %4993, %4995 ], [ %5240, %5222 ]
  %5249 = phi float [ %4928, %4995 ], [ %5244, %5222 ]
  %5250 = phi float [ %4929, %4995 ], [ %5245, %5222 ]
  %5251 = phi float [ %4930, %4995 ], [ %5246, %5222 ]
  %5252 = phi i32 [ %5003, %4995 ], [ %5229, %5222 ]
  %5253 = icmp eq i32 %5252, 0
  br i1 %5253, label %5850, label %5254

; <label>:5254                                    ; preds = %5247
  %5255 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5256 = extractvalue %dx.types.CBufRet.f32 %5255, 2
  %5257 = extractvalue %dx.types.CBufRet.f32 %5255, 3
  %5258 = fmul fast float %5256, %78
  %5259 = fmul fast float %5257, %79
  %5260 = fptoui float %5258 to i32
  %5261 = fptoui float %5259 to i32
  %5262 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5263 = extractvalue %dx.types.CBufRet.f32 %5262, 0
  %5264 = extractvalue %dx.types.CBufRet.f32 %5262, 2
  %5265 = extractvalue %dx.types.CBufRet.f32 %5262, 3
  %5266 = fadd fast float %73, -4.000000e+00
  %5267 = call float @dx.op.binary.f32(i32 35, float %5266, float 0.000000e+00)  ; FMax(a,b)
  %5268 = fadd fast float %5267, %5263
  %5269 = fmul fast float %5268, %5264
  %5270 = call float @dx.op.unary.f32(i32 23, float %5269)  ; Log(value)
  %5271 = fmul fast float %5270, %5265
  %5272 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5273 = extractvalue %dx.types.CBufRet.f32 %5272, 2
  %5274 = fmul fast float %5271, %5273
  %5275 = call float @dx.op.unary.f32(i32 7, float %5274)  ; Saturate(value)
  %5276 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5277 = extractvalue %dx.types.CBufRet.i32 %5276, 1
  %5278 = add i32 %5277, -1
  %5279 = uitofp i32 %5277 to float
  %5280 = fmul fast float %5279, %5275
  %5281 = fptoui float %5280 to i32
  %5282 = call i32 @dx.op.binary.i32(i32 40, i32 %5281, i32 %5278)  ; UMin(a,b)
  %5283 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5284 = extractvalue %dx.types.CBufRet.i32 %5283, 2
  %5285 = extractvalue %dx.types.CBufRet.i32 %5283, 3
  %5286 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5261, i32 %5284, i32 %5260)  ; UMad(a,b,c)
  %5287 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5282, i32 %5285, i32 %5286)  ; UMad(a,b,c)
  %5288 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5289 = fptoui float %5288 to i32
  %5290 = lshr i32 %5289, 5
  %5291 = call i32 @dx.op.binary.i32(i32 40, i32 %5290, i32 8191)  ; UMin(a,b)
  %5292 = fcmp fast ogt float %4588, 0.000000e+00
  %5293 = fcmp fast ogt float %4816, 0.000000e+00
  %5294 = and i1 %5293, %5292
  br i1 %5294, label %5295, label %5324

; <label>:5295                                    ; preds = %5254
  %5296 = call float @dx.op.dot3.f32(i32 55, float %4814, float %4815, float %4816, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5297 = call float @dx.op.binary.f32(i32 35, float %5296, float -1.000000e+00)  ; FMax(a,b)
  %5298 = call float @dx.op.binary.f32(i32 36, float %5297, float 1.000000e+00)  ; FMin(a,b)
  %5299 = fmul fast float %5298, %5298
  %5300 = fsub fast float 1.000000e+00, %5299
  %5301 = fmul fast float %5300, 0x3FFC6E2300000000
  %5302 = fsub fast float 1.000000e+00, %5301
  %5303 = fcmp fast ogt float %5302, 0.000000e+00
  %5304 = call float @dx.op.unary.f32(i32 24, float %5302)  ; Sqrt(value)
  %5305 = fsub fast float 1.000000e+00, %5304
  %5306 = call float @dx.op.unary.f32(i32 23, float %5305)  ; Log(value)
  %5307 = fmul fast float %5306, 5.000000e+00
  %5308 = call float @dx.op.unary.f32(i32 21, float %5307)  ; Exp(value)
  %5309 = fmul fast float %5308, 0x3FEF591A60000000
  %5310 = fadd fast float %5309, 0x3F94DCB540000000
  %5311 = select i1 %5303, float %5310, float 1.000000e+00
  %5312 = fcmp fast oge float %5311, 1.000000e+00
  %5313 = fmul fast float %5296, 2.000000e+00
  %5314 = fadd fast float %5313, %4816
  %5315 = select i1 %5312, float %5314, float %4816
  %5316 = fsub fast float %5315, %4816
  %5317 = fmul fast float %5316, %4588
  %5318 = fadd fast float %5317, %4816
  %5319 = call float @dx.op.dot3.f32(i32 55, float %4814, float %4815, float %5318, float %4814, float %4815, float %5318)  ; Dot3(ax,ay,az,bx,by,bz)
  %5320 = call float @dx.op.unary.f32(i32 25, float %5319)  ; Rsqrt(value)
  %5321 = fmul fast float %5320, %4814
  %5322 = fmul fast float %5320, %4815
  %5323 = fmul fast float %5318, %5320
  br label %5324

; <label>:5324                                    ; preds = %5295, %5254
  %5325 = phi float [ %5321, %5295 ], [ %4814, %5254 ]
  %5326 = phi float [ %5322, %5295 ], [ %4815, %5254 ]
  %5327 = phi float [ %5323, %5295 ], [ %4816, %5254 ]
  %5328 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5329 = extractvalue %dx.types.CBufRet.i32 %5328, 2
  %5330 = add nsw i32 %5329, -1
  %5331 = call i32 @dx.op.binary.i32(i32 37, i32 %5330, i32 0)  ; IMax(a,b)
  %5332 = shl i32 %5291, 2
  %5333 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5332, i32 undef)  ; BufferLoad(srv,index,wot)
  %5334 = extractvalue %dx.types.ResRet.i32 %5333, 0
  %5335 = lshr i32 %5334, 16
  %5336 = and i32 %5334, 65535
  %5337 = lshr i32 %5334, 21
  %5338 = lshr i32 %5336, 5
  %5339 = call i32 @dx.op.binary.i32(i32 40, i32 %5338, i32 %5331)  ; UMin(a,b)
  %5340 = icmp ugt i32 %5337, %5339
  br i1 %5340, label %5722, label %5341

; <label>:5341                                    ; preds = %5324
  br label %5342

; <label>:5342                                    ; preds = %5711, %5341
  %5343 = phi float [ %5712, %5711 ], [ 0.000000e+00, %5341 ]
  %5344 = phi float [ %5713, %5711 ], [ 0.000000e+00, %5341 ]
  %5345 = phi float [ %5714, %5711 ], [ 0.000000e+00, %5341 ]
  %5346 = phi float [ %5715, %5711 ], [ 1.000000e+00, %5341 ]
  %5347 = phi i32 [ %5719, %5711 ], [ %5337, %5341 ]
  %5348 = phi float [ %5716, %5711 ], [ 0.000000e+00, %5341 ]
  %5349 = phi float [ %5717, %5711 ], [ 0.000000e+00, %5341 ]
  %5350 = phi float [ %5718, %5711 ], [ 0.000000e+00, %5341 ]
  %5351 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5352 = extractvalue %dx.types.CBufRet.i32 %5351, 2
  %5353 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5287, i32 %5352, i32 %5347)  ; UMad(a,b,c)
  %5354 = shl i32 %5353, 2
  %5355 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5354, i32 undef)  ; BufferLoad(srv,index,wot)
  %5356 = extractvalue %dx.types.ResRet.i32 %5355, 0
  %5357 = shl i32 %5347, 5
  %5358 = sub nsw i32 %5335, %5357
  %5359 = call i32 @dx.op.binary.i32(i32 37, i32 %5358, i32 0)  ; IMax(a,b)
  %5360 = call i32 @dx.op.binary.i32(i32 38, i32 %5359, i32 31)  ; IMin(a,b)
  %5361 = sub nsw i32 1, %5335
  %5362 = add nsw i32 %5361, %5336
  %5363 = call i32 @dx.op.binary.i32(i32 37, i32 %5362, i32 0)  ; IMax(a,b)
  %5364 = call i32 @dx.op.binary.i32(i32 38, i32 %5363, i32 32)  ; IMin(a,b)
  %5365 = and i32 %5364, 31
  %5366 = shl i32 -1, %5365
  %5367 = xor i32 %5366, -1
  %5368 = and i32 %5360, 31
  %5369 = shl i32 %5367, %5368
  %5370 = icmp eq i32 %5364, 32
  %5371 = select i1 %5370, i32 -1, i32 %5369
  %5372 = and i32 %5371, %5356
  %5373 = icmp eq i32 %5372, 0
  br i1 %5373, label %5711, label %5374

; <label>:5374                                    ; preds = %5342
  br label %5375

; <label>:5375                                    ; preds = %5485, %5374
  %5376 = phi float [ %5486, %5485 ], [ %5343, %5374 ]
  %5377 = phi float [ %5487, %5485 ], [ %5344, %5374 ]
  %5378 = phi float [ %5488, %5485 ], [ %5345, %5374 ]
  %5379 = phi float [ %5489, %5485 ], [ %5346, %5374 ]
  %5380 = phi i32 [ %5388, %5485 ], [ %5372, %5374 ]
  %5381 = phi float [ %5490, %5485 ], [ %5348, %5374 ]
  %5382 = phi float [ %5491, %5485 ], [ %5349, %5374 ]
  %5383 = phi float [ %5492, %5485 ], [ %5350, %5374 ]
  %5384 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5380)  ; FirstbitLo(value)
  %5385 = add i32 %5384, %5357
  %5386 = and i32 %5384, 31
  %5387 = shl i32 1, %5386
  %5388 = xor i32 %5387, %5380
  %5389 = mul i32 %5385, 72
  %5390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5389, i32 undef)  ; BufferLoad(srv,index,wot)
  %5391 = extractvalue %dx.types.ResRet.f32 %5390, 0
  %5392 = extractvalue %dx.types.ResRet.f32 %5390, 1
  %5393 = extractvalue %dx.types.ResRet.f32 %5390, 2
  %5394 = add i32 %5389, 12
  %5395 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5394, i32 undef)  ; BufferLoad(srv,index,wot)
  %5396 = extractvalue %dx.types.ResRet.i32 %5395, 0
  %5397 = add i32 %5389, 16
  %5398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5397, i32 undef)  ; BufferLoad(srv,index,wot)
  %5399 = extractvalue %dx.types.ResRet.f32 %5398, 0
  %5400 = extractvalue %dx.types.ResRet.f32 %5398, 1
  %5401 = extractvalue %dx.types.ResRet.f32 %5398, 2
  %5402 = add i32 %5389, 28
  %5403 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5402, i32 undef)  ; BufferLoad(srv,index,wot)
  %5404 = extractvalue %dx.types.ResRet.f32 %5403, 0
  %5405 = add i32 %5389, 32
  %5406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5405, i32 undef)  ; BufferLoad(srv,index,wot)
  %5407 = extractvalue %dx.types.ResRet.f32 %5406, 0
  %5408 = extractvalue %dx.types.ResRet.f32 %5406, 1
  %5409 = extractvalue %dx.types.ResRet.f32 %5406, 2
  %5410 = extractvalue %dx.types.ResRet.f32 %5406, 3
  %5411 = add i32 %5389, 48
  %5412 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5411, i32 undef)  ; BufferLoad(srv,index,wot)
  %5413 = extractvalue %dx.types.ResRet.f32 %5412, 0
  %5414 = extractvalue %dx.types.ResRet.f32 %5412, 1
  %5415 = add i32 %5389, 56
  %5416 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5415, i32 undef)  ; BufferLoad(srv,index,wot)
  %5417 = extractvalue %dx.types.ResRet.f32 %5416, 0
  %5418 = extractvalue %dx.types.ResRet.f32 %5416, 1
  %5419 = add i32 %5389, 64
  %5420 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5419, i32 undef)  ; BufferLoad(srv,index,wot)
  %5421 = extractvalue %dx.types.ResRet.f32 %5420, 0
  %5422 = extractvalue %dx.types.ResRet.f32 %5420, 1
  %5423 = mul i32 %5385, 60
  %5424 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5423, i32 undef)  ; BufferLoad(srv,index,wot)
  %5425 = extractvalue %dx.types.ResRet.f32 %5424, 0
  %5426 = extractvalue %dx.types.ResRet.f32 %5424, 1
  %5427 = extractvalue %dx.types.ResRet.f32 %5424, 2
  %5428 = add i32 %5423, 12
  %5429 = add i32 %5423, 48
  %5430 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5429, i32 undef)  ; BufferLoad(srv,index,wot)
  %5431 = extractvalue %dx.types.ResRet.f32 %5430, 0
  %5432 = extractvalue %dx.types.ResRet.f32 %5430, 1
  %5433 = extractvalue %dx.types.ResRet.f32 %5430, 2
  %5434 = and i32 %5396, 32767
  %5435 = bitcast float %5391 to i32
  %5436 = icmp eq i32 %5435, -1
  %5437 = bitcast float %5392 to i32
  %5438 = and i32 %5396, 32768
  %5439 = icmp ne i32 %5438, 0
  %5440 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5441 = extractvalue %dx.types.CBufRet.f32 %5440, 0
  %5442 = extractvalue %dx.types.CBufRet.f32 %5440, 1
  %5443 = extractvalue %dx.types.CBufRet.f32 %5440, 2
  %5444 = fsub fast float %5425, %5441
  %5445 = fsub fast float %5426, %5442
  %5446 = fsub fast float %5427, %5443
  %5447 = fsub fast float %141, %5444
  %5448 = fsub fast float %142, %5445
  %5449 = fsub fast float %143, %5446
  %5450 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5428, i32 undef)  ; BufferLoad(srv,index,wot)
  %5451 = extractvalue %dx.types.ResRet.f32 %5450, 0
  %5452 = extractvalue %dx.types.ResRet.f32 %5450, 1
  %5453 = extractvalue %dx.types.ResRet.f32 %5450, 2
  %5454 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5449, float %5451, float %5452, float %5453)  ; Dot3(ax,ay,az,bx,by,bz)
  %5455 = add i32 %5423, 24
  %5456 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5455, i32 undef)  ; BufferLoad(srv,index,wot)
  %5457 = extractvalue %dx.types.ResRet.f32 %5456, 0
  %5458 = extractvalue %dx.types.ResRet.f32 %5456, 1
  %5459 = extractvalue %dx.types.ResRet.f32 %5456, 2
  %5460 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5449, float %5457, float %5458, float %5459)  ; Dot3(ax,ay,az,bx,by,bz)
  %5461 = add i32 %5423, 36
  %5462 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5461, i32 undef)  ; BufferLoad(srv,index,wot)
  %5463 = extractvalue %dx.types.ResRet.f32 %5462, 0
  %5464 = extractvalue %dx.types.ResRet.f32 %5462, 1
  %5465 = extractvalue %dx.types.ResRet.f32 %5462, 2
  %5466 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5449, float %5463, float %5464, float %5465)  ; Dot3(ax,ay,az,bx,by,bz)
  %5467 = call float @dx.op.unary.f32(i32 6, float %5454)  ; FAbs(value)
  %5468 = call float @dx.op.unary.f32(i32 6, float %5460)  ; FAbs(value)
  %5469 = call float @dx.op.unary.f32(i32 6, float %5466)  ; FAbs(value)
  %5470 = fsub fast float %5431, %5467
  %5471 = fsub fast float %5432, %5468
  %5472 = fsub fast float %5433, %5469
  %5473 = fmul fast float %5470, %5399
  %5474 = fmul fast float %5471, %5400
  %5475 = fmul fast float %5472, %5401
  %5476 = call float @dx.op.binary.f32(i32 36, float %5474, float %5475)  ; FMin(a,b)
  %5477 = call float @dx.op.binary.f32(i32 36, float %5473, float %5476)  ; FMin(a,b)
  %5478 = call float @dx.op.unary.f32(i32 7, float %5477)  ; Saturate(value)
  %5479 = call float @dx.op.binary.f32(i32 36, float %5379, float %5478)  ; FMin(a,b)
  %5480 = uitofp i1 %5439 to float
  %5481 = fadd fast float %4588, 1.000000e+00
  %5482 = fsub fast float %5481, %5480
  %5483 = fmul fast float %5479, %5482
  %5484 = fcmp fast ogt float %5483, 0.000000e+00
  br i1 %5484, label %5494, label %5485

; <label>:5485                                    ; preds = %5636, %5375
  %5486 = phi float [ %5700, %5636 ], [ %5376, %5375 ]
  %5487 = phi float [ %5701, %5636 ], [ %5377, %5375 ]
  %5488 = phi float [ %5702, %5636 ], [ %5378, %5375 ]
  %5489 = phi float [ %5709, %5636 ], [ %5379, %5375 ]
  %5490 = phi float [ %5706, %5636 ], [ %5381, %5375 ]
  %5491 = phi float [ %5707, %5636 ], [ %5382, %5375 ]
  %5492 = phi float [ %5708, %5636 ], [ %5383, %5375 ]
  %5493 = icmp eq i32 %5380, %5387
  br i1 %5493, label %5710, label %5375

; <label>:5494                                    ; preds = %5375
  br i1 %5436, label %5552, label %5495

; <label>:5495                                    ; preds = %5494
  %5496 = fsub fast float -0.000000e+00, %5451
  %5497 = fsub fast float -0.000000e+00, %5452
  %5498 = fsub fast float -0.000000e+00, %5453
  %5499 = call float @dx.op.dot3.f32(i32 55, float %5325, float %5326, float %5327, float %5496, float %5497, float %5498)  ; Dot3(ax,ay,az,bx,by,bz)
  %5500 = fsub fast float -0.000000e+00, %5499
  %5501 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5449, float %5496, float %5497, float %5498)  ; Dot3(ax,ay,az,bx,by,bz)
  %5502 = fadd fast float %5501, %5414
  %5503 = fadd fast float %5413, %5501
  %5504 = fsub fast float -0.000000e+00, %5503
  %5505 = fcmp ogt float %5499, -0.000000e+00
  %5506 = select i1 %5505, float %5504, float %5502
  %5507 = call float @dx.op.unary.f32(i32 6, float %5500)  ; FAbs(value)
  %5508 = fdiv fast float 1.000000e+00, %5507
  %5509 = fmul fast float %5506, %5508
  %5510 = call float @dx.op.binary.f32(i32 35, float %5509, float 0.000000e+00)  ; FMax(a,b)
  %5511 = fsub fast float -0.000000e+00, %5457
  %5512 = fsub fast float -0.000000e+00, %5458
  %5513 = fsub fast float -0.000000e+00, %5459
  %5514 = call float @dx.op.dot3.f32(i32 55, float %5325, float %5326, float %5327, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5515 = fsub fast float -0.000000e+00, %5514
  %5516 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5449, float %5511, float %5512, float %5513)  ; Dot3(ax,ay,az,bx,by,bz)
  %5517 = fadd fast float %5516, %5418
  %5518 = fadd fast float %5417, %5516
  %5519 = fsub fast float -0.000000e+00, %5518
  %5520 = fcmp ogt float %5514, -0.000000e+00
  %5521 = select i1 %5520, float %5519, float %5517
  %5522 = call float @dx.op.unary.f32(i32 6, float %5515)  ; FAbs(value)
  %5523 = fdiv fast float 1.000000e+00, %5522
  %5524 = fmul fast float %5521, %5523
  %5525 = call float @dx.op.binary.f32(i32 35, float %5524, float 0.000000e+00)  ; FMax(a,b)
  %5526 = fsub fast float -0.000000e+00, %5463
  %5527 = fsub fast float -0.000000e+00, %5464
  %5528 = fsub fast float -0.000000e+00, %5465
  %5529 = call float @dx.op.dot3.f32(i32 55, float %5325, float %5326, float %5327, float %5526, float %5527, float %5528)  ; Dot3(ax,ay,az,bx,by,bz)
  %5530 = fsub fast float -0.000000e+00, %5529
  %5531 = call float @dx.op.dot3.f32(i32 55, float %5447, float %5448, float %5449, float %5526, float %5527, float %5528)  ; Dot3(ax,ay,az,bx,by,bz)
  %5532 = fadd fast float %5531, %5422
  %5533 = fadd fast float %5421, %5531
  %5534 = fsub fast float -0.000000e+00, %5533
  %5535 = fcmp ogt float %5529, -0.000000e+00
  %5536 = select i1 %5535, float %5534, float %5532
  %5537 = call float @dx.op.unary.f32(i32 6, float %5530)  ; FAbs(value)
  %5538 = fdiv fast float 1.000000e+00, %5537
  %5539 = fmul fast float %5536, %5538
  %5540 = call float @dx.op.binary.f32(i32 35, float %5539, float 0.000000e+00)  ; FMax(a,b)
  %5541 = call float @dx.op.binary.f32(i32 36, float %5525, float %5540)  ; FMin(a,b)
  %5542 = call float @dx.op.binary.f32(i32 36, float %5510, float %5541)  ; FMin(a,b)
  %5543 = fmul fast float %5542, %5325
  %5544 = fmul fast float %5542, %5326
  %5545 = fmul fast float %5542, %5327
  %5546 = fadd fast float %5543, %141
  %5547 = fadd fast float %5544, %142
  %5548 = fadd fast float %5545, %143
  %5549 = fsub fast float %5546, %5391
  %5550 = fsub fast float %5547, %5392
  %5551 = fsub fast float %5548, %5393
  br label %5559

; <label>:5552                                    ; preds = %5494
  %5553 = fmul fast float %5325, 8.096000e+03
  %5554 = fmul fast float %5326, 8.096000e+03
  %5555 = fmul fast float %5327, 8.096000e+03
  %5556 = fadd fast float %5553, %141
  %5557 = fadd fast float %5554, %142
  %5558 = fadd fast float %5555, %143
  br label %5559

; <label>:5559                                    ; preds = %5552, %5495
  %5560 = phi float [ %5325, %5552 ], [ %5549, %5495 ]
  %5561 = phi float [ %5326, %5552 ], [ %5550, %5495 ]
  %5562 = phi float [ %5327, %5552 ], [ %5551, %5495 ]
  %5563 = phi float [ %5556, %5552 ], [ %5546, %5495 ]
  %5564 = phi float [ %5557, %5552 ], [ %5547, %5495 ]
  %5565 = phi float [ %5558, %5552 ], [ %5548, %5495 ]
  %5566 = fcmp fast olt float %5410, 1.000000e+00
  br i1 %5566, label %5567, label %5598, !dx.controlflow.hints !84

; <label>:5567                                    ; preds = %5559
  %5568 = fmul fast float %5562, %5408
  %5569 = fmul fast float %5561, %5409
  %5570 = fsub fast float %5568, %5569
  %5571 = fmul fast float %5560, %5409
  %5572 = fmul fast float %5562, %5407
  %5573 = fsub fast float %5571, %5572
  %5574 = fmul fast float %5561, %5407
  %5575 = fmul fast float %5560, %5408
  %5576 = fsub fast float %5574, %5575
  %5577 = fmul fast float %5570, 2.000000e+00
  %5578 = fmul fast float %5573, 2.000000e+00
  %5579 = fmul fast float %5576, 2.000000e+00
  %5580 = fmul fast float %5577, %5410
  %5581 = fmul fast float %5578, %5410
  %5582 = fmul fast float %5579, %5410
  %5583 = fmul fast float %5579, %5408
  %5584 = fmul fast float %5578, %5409
  %5585 = fmul fast float %5577, %5409
  %5586 = fmul fast float %5579, %5407
  %5587 = fmul fast float %5578, %5407
  %5588 = fmul fast float %5577, %5408
  %5589 = fadd fast float %5583, %5560
  %5590 = fadd fast float %5589, %5580
  %5591 = fsub fast float %5590, %5584
  %5592 = fsub fast float %5561, %5586
  %5593 = fadd fast float %5592, %5581
  %5594 = fadd fast float %5593, %5585
  %5595 = fadd fast float %5582, %5562
  %5596 = fsub fast float %5595, %5588
  %5597 = fadd fast float %5596, %5587
  br label %5598

; <label>:5598                                    ; preds = %5567, %5559
  %5599 = phi float [ %5591, %5567 ], [ %5560, %5559 ]
  %5600 = phi float [ %5594, %5567 ], [ %5561, %5559 ]
  %5601 = phi float [ %5597, %5567 ], [ %5562, %5559 ]
  br i1 %5436, label %5633, label %5602

; <label>:5602                                    ; preds = %5598
  %5603 = fmul fast float %4789, 0x400187C840000000
  %5604 = fadd fast float %5603, 0xC00EFC2120000000
  %5605 = fmul fast float %5604, %4789
  %5606 = fadd fast float %5605, 0x3FE5D16340000000
  %5607 = fmul fast float %5606, %4789
  %5608 = fadd fast float %5607, 1.000000e+00
  %5609 = call float @dx.op.unary.f32(i32 7, float %5608)  ; Saturate(value)
  %5610 = fsub fast float %5563, %141
  %5611 = fsub fast float %5564, %142
  %5612 = fsub fast float %5565, %143
  %5613 = fsub fast float %5563, %5391
  %5614 = fsub fast float %5564, %5392
  %5615 = fsub fast float %5565, %5393
  %5616 = call float @dx.op.dot3.f32(i32 55, float %5610, float %5611, float %5612, float %5610, float %5611, float %5612)  ; Dot3(ax,ay,az,bx,by,bz)
  %5617 = call float @dx.op.dot3.f32(i32 55, float %5613, float %5614, float %5615, float %5613, float %5614, float %5615)  ; Dot3(ax,ay,az,bx,by,bz)
  %5618 = fadd fast float %5617, 0x3EE4F8B580000000
  %5619 = fdiv fast float %5616, %5618
  %5620 = bitcast float %5619 to i32
  %5621 = ashr i32 %5620, 1
  %5622 = add nsw i32 %5621, 532487669
  %5623 = bitcast i32 %5622 to float
  %5624 = fmul fast float %5623, %5609
  %5625 = call float @dx.op.unary.f32(i32 7, float %5624)  ; Saturate(value)
  %5626 = fmul fast float %5625, 0x4009981AE0000000
  %5627 = fsub fast float 0x40111BBD80000000, %5626
  %5628 = fmul fast float %5627, %5625
  %5629 = fadd fast float %5628, 0xC0009F6020000000
  %5630 = fmul fast float %5629, %5625
  %5631 = fadd fast float %5630, 1.000000e+00
  %5632 = call float @dx.op.unary.f32(i32 7, float %5631)  ; Saturate(value)
  br label %5636

; <label>:5633                                    ; preds = %5598
  %5634 = icmp ne i32 %5437, -1
  %5635 = zext i1 %5634 to i32
  br label %5636

; <label>:5636                                    ; preds = %5633, %5602
  %5637 = phi float [ %4789, %5633 ], [ %5632, %5602 ]
  %5638 = phi i32 [ %5635, %5633 ], [ 0, %5602 ]
  %5639 = fmul float %5637, 5.000000e+00
  %5640 = fsub float 5.000000e+00, %5639
  %5641 = icmp ne i32 %5638, 0
  %5642 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5643 = extractvalue %dx.types.CBufRet.f32 %5642, 3
  %5644 = fadd fast float %5643, %5640
  %5645 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5644)  ; FMax(a,b)
  %5646 = call float @dx.op.unary.f32(i32 6, float %5599)  ; FAbs(value)
  %5647 = call float @dx.op.unary.f32(i32 6, float %5600)  ; FAbs(value)
  %5648 = fadd fast float %5647, %5646
  %5649 = call float @dx.op.unary.f32(i32 6, float %5601)  ; FAbs(value)
  %5650 = fadd fast float %5648, %5649
  %5651 = fcmp fast oeq float %5650, 0.000000e+00
  %5652 = fdiv fast float 1.000000e+00, %5650
  %5653 = select i1 %5651, float 1.000000e+00, float %5652
  %5654 = fmul fast float %5653, %5599
  %5655 = fmul fast float %5653, %5600
  %5656 = call float @dx.op.unary.f32(i32 6, float %5655)  ; FAbs(value)
  %5657 = call float @dx.op.unary.f32(i32 6, float %5654)  ; FAbs(value)
  %5658 = fsub fast float 1.000000e+00, %5656
  %5659 = fsub fast float 1.000000e+00, %5657
  %5660 = fcmp fast oge float %5654, 0.000000e+00
  %5661 = fcmp fast oge float %5655, 0.000000e+00
  %5662 = select i1 %5660, float 1.000000e+00, float -1.000000e+00
  %5663 = select i1 %5661, float 1.000000e+00, float -1.000000e+00
  %5664 = fcmp fast ole float %5601, 0.000000e+00
  %5665 = fmul fast float %5662, %5658
  %5666 = fmul fast float %5663, %5659
  %5667 = select i1 %5664, float %5665, float %5654
  %5668 = select i1 %5664, float %5666, float %5655
  %5669 = fmul fast float %5667, 5.000000e-01
  %5670 = fmul fast float %5668, 5.000000e-01
  %5671 = fadd fast float %5669, 5.000000e-01
  %5672 = fadd fast float %5670, 5.000000e-01
  %5673 = uitofp i32 %5434 to float
  %5674 = call float @dx.op.binary.f32(i32 36, float %5645, float 3.000000e+00)  ; FMin(a,b)
  %5675 = fadd fast float %5674, 2.000000e+00
  %5676 = call float @dx.op.unary.f32(i32 21, float %5675)  ; Exp(value)
  %5677 = extractvalue %dx.types.CBufRet.f32 %5642, 1
  %5678 = fmul fast float %5677, %5676
  %5679 = fmul fast float %5678, 2.000000e+00
  %5680 = fsub fast float 1.000000e+00, %5679
  %5681 = fmul fast float %5671, %5680
  %5682 = fmul fast float %5672, %5680
  %5683 = fadd fast float %5681, %5678
  %5684 = fadd fast float %5682, %5678
  %5685 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5683, float %5684, float %5673, float undef, i32 0, i32 0, i32 undef, float %5645)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5686 = extractvalue %dx.types.ResRet.f32 %5685, 0
  %5687 = extractvalue %dx.types.ResRet.f32 %5685, 1
  %5688 = extractvalue %dx.types.ResRet.f32 %5685, 2
  %5689 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5690 = extractvalue %dx.types.CBufRet.f32 %5689, 3
  %5691 = fmul fast float %5690, %5404
  %5692 = call float @dx.op.binary.f32(i32 36, float %4869, float %5691)  ; FMin(a,b)
  %5693 = select i1 %5641, float %5692, float %5691
  %5694 = fmul fast float %5686, %5483
  %5695 = fmul fast float %5694, %5693
  %5696 = fmul fast float %5687, %5483
  %5697 = fmul fast float %5696, %5693
  %5698 = fmul fast float %5688, %5483
  %5699 = fmul fast float %5698, %5693
  %5700 = fadd fast float %5695, %5376
  %5701 = fadd fast float %5697, %5377
  %5702 = fadd fast float %5699, %5378
  %5703 = fmul fast float %5563, %5483
  %5704 = fmul fast float %5564, %5483
  %5705 = fmul fast float %5565, %5483
  %5706 = fadd fast float %5703, %5381
  %5707 = fadd fast float %5704, %5382
  %5708 = fadd fast float %5705, %5383
  %5709 = fsub fast float %5379, %5483
  br label %5485

; <label>:5710                                    ; preds = %5485
  br label %5711

; <label>:5711                                    ; preds = %5710, %5342
  %5712 = phi float [ %5343, %5342 ], [ %5486, %5710 ]
  %5713 = phi float [ %5344, %5342 ], [ %5487, %5710 ]
  %5714 = phi float [ %5345, %5342 ], [ %5488, %5710 ]
  %5715 = phi float [ %5346, %5342 ], [ %5489, %5710 ]
  %5716 = phi float [ %5348, %5342 ], [ %5490, %5710 ]
  %5717 = phi float [ %5349, %5342 ], [ %5491, %5710 ]
  %5718 = phi float [ %5350, %5342 ], [ %5492, %5710 ]
  %5719 = add i32 %5347, 1
  %5720 = icmp ugt i32 %5719, %5339
  br i1 %5720, label %5721, label %5342, !llvm.loop !85

; <label>:5721                                    ; preds = %5711
  br label %5722

; <label>:5722                                    ; preds = %5721, %5324
  %5723 = phi float [ 0.000000e+00, %5324 ], [ %5712, %5721 ]
  %5724 = phi float [ 0.000000e+00, %5324 ], [ %5713, %5721 ]
  %5725 = phi float [ 0.000000e+00, %5324 ], [ %5714, %5721 ]
  %5726 = phi float [ 0.000000e+00, %5324 ], [ %5716, %5721 ]
  %5727 = phi float [ 0.000000e+00, %5324 ], [ %5717, %5721 ]
  %5728 = phi float [ 0.000000e+00, %5324 ], [ %5718, %5721 ]
  %5729 = call float @dx.op.dot3.f32(i32 55, float %5723, float %5724, float %5725, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5730 = select i1 %183, float 0.000000e+00, float %5723
  %5731 = select i1 %183, float %5729, float %5724
  %5732 = select i1 %183, float 0.000000e+00, float %5725
  %5733 = fcmp fast olt float %5248, 0.000000e+00
  %5734 = call float @dx.op.unary.f32(i32 6, float %5248)  ; FAbs(value)
  %5735 = fmul fast float %5734, %5249
  %5736 = fmul fast float %5734, %5250
  %5737 = fmul fast float %5734, %5251
  %5738 = select i1 %5733, float %5249, float %5735
  %5739 = select i1 %5733, float %5250, float %5736
  %5740 = select i1 %5733, float %5251, float %5737
  %5741 = fsub fast float 1.000000e+00, %5734
  %5742 = call float @dx.op.unary.f32(i32 7, float %5741)  ; Saturate(value)
  %5743 = fmul fast float %5742, %5730
  %5744 = fmul fast float %5742, %5731
  %5745 = fmul fast float %5742, %5732
  %5746 = fadd fast float %5738, %5743
  %5747 = fadd fast float %5739, %5744
  %5748 = fadd fast float %5740, %5745
  %5749 = fcmp fast une float %4998, 0.000000e+00
  br i1 %5749, label %5850, label %5750

; <label>:5750                                    ; preds = %5722
  %5751 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5752 = extractvalue %dx.types.CBufRet.f32 %5751, 0
  %5753 = extractvalue %dx.types.CBufRet.f32 %5751, 1
  %5754 = extractvalue %dx.types.CBufRet.f32 %5751, 2
  %5755 = extractvalue %dx.types.CBufRet.f32 %5751, 3
  %5756 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5757 = extractvalue %dx.types.CBufRet.f32 %5756, 0
  %5758 = extractvalue %dx.types.CBufRet.f32 %5756, 1
  %5759 = extractvalue %dx.types.CBufRet.f32 %5756, 2
  %5760 = extractvalue %dx.types.CBufRet.f32 %5756, 3
  %5761 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5762 = extractvalue %dx.types.CBufRet.f32 %5761, 0
  %5763 = extractvalue %dx.types.CBufRet.f32 %5761, 1
  %5764 = extractvalue %dx.types.CBufRet.f32 %5761, 2
  %5765 = extractvalue %dx.types.CBufRet.f32 %5761, 3
  %5766 = call float @dx.op.dot3.f32(i32 55, float %5762, float %5763, float %5764, float %4814, float %4815, float %4816)  ; Dot3(ax,ay,az,bx,by,bz)
  %5767 = call float @dx.op.dot3.f32(i32 55, float %5726, float %5727, float %5728, float %5762, float %5763, float %5764)  ; Dot3(ax,ay,az,bx,by,bz)
  %5768 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %5762, float %5763, float %5764)  ; Dot3(ax,ay,az,bx,by,bz)
  %5769 = fadd fast float %4789, -1.000000e+00
  %5770 = fsub fast float %5767, %5768
  %5771 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5772 = extractvalue %dx.types.CBufRet.f32 %5771, 2
  %5773 = fmul fast float %5772, %5767
  %5774 = fdiv fast float 1.600000e+02, %5773
  %5775 = fmul fast float %5769, %5769
  %5776 = fmul fast float %5775, 0xBFB5B17960000000
  %5777 = fmul fast float %5776, %5770
  %5778 = fmul fast float %5777, %5774
  %5779 = call float @dx.op.unary.f32(i32 21, float %5778)  ; Exp(value)
  %5780 = fmul fast float %5779, 0x3FF04B2960000000
  %5781 = fsub fast float 0x3FF04B2960000000, %5780
  %5782 = call float @dx.op.unary.f32(i32 7, float %5781)  ; Saturate(value)
  %5783 = fmul fast float %5782, 4.000000e+00
  %5784 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5785 = extractvalue %dx.types.CBufRet.f32 %5784, 0
  %5786 = extractvalue %dx.types.CBufRet.f32 %5784, 1
  %5787 = extractvalue %dx.types.CBufRet.f32 %5784, 2
  %5788 = fadd fast float %5785, %5726
  %5789 = fadd fast float %5786, %5727
  %5790 = fadd fast float %5787, %5728
  %5791 = fmul fast float %5788, %5752
  %5792 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5753, float %5791)  ; FMad(a,b,c)
  %5793 = call float @dx.op.tertiary.f32(i32 46, float %5790, float %5754, float %5792)  ; FMad(a,b,c)
  %5794 = fadd fast float %5793, %5755
  %5795 = fmul fast float %5788, %5757
  %5796 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5758, float %5795)  ; FMad(a,b,c)
  %5797 = call float @dx.op.tertiary.f32(i32 46, float %5790, float %5759, float %5796)  ; FMad(a,b,c)
  %5798 = fadd fast float %5797, %5760
  %5799 = fmul fast float %5788, %5762
  %5800 = call float @dx.op.tertiary.f32(i32 46, float %5789, float %5763, float %5799)  ; FMad(a,b,c)
  %5801 = call float @dx.op.tertiary.f32(i32 46, float %5790, float %5764, float %5800)  ; FMad(a,b,c)
  %5802 = fadd fast float %5801, %5765
  %5803 = fdiv fast float %5794, %5802
  %5804 = fdiv fast float %5798, %5802
  %5805 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5806 = extractvalue %dx.types.CBufRet.f32 %5805, 0
  %5807 = extractvalue %dx.types.CBufRet.f32 %5805, 1
  %5808 = fmul fast float %5806, %5803
  %5809 = fmul fast float %5807, %5804
  %5810 = extractvalue %dx.types.CBufRet.f32 %5805, 2
  %5811 = extractvalue %dx.types.CBufRet.f32 %5805, 3
  %5812 = fadd fast float %5808, %5810
  %5813 = fadd fast float %5809, %5811
  %5814 = fmul fast float %5766, 8.000000e+00
  %5815 = call float @dx.op.unary.f32(i32 7, float %5814)  ; Saturate(value)
  %5816 = fmul fast float %5812, 2.000000e+00
  %5817 = fmul fast float %5813, 2.000000e+00
  %5818 = fadd fast float %5816, -1.000000e+00
  %5819 = fadd fast float %5817, -1.000000e+00
  %5820 = fmul fast float %5818, %5818
  %5821 = fsub fast float 1.000000e+00, %5820
  %5822 = call float @dx.op.unary.f32(i32 7, float %5821)  ; Saturate(value)
  %5823 = fmul fast float %5819, %5819
  %5824 = fsub fast float 1.000000e+00, %5823
  %5825 = call float @dx.op.unary.f32(i32 7, float %5824)  ; Saturate(value)
  %5826 = fmul fast float %4998, %5822
  %5827 = fmul fast float %5826, %5825
  %5828 = call float @dx.op.unary.f32(i32 7, float %5827)  ; Saturate(value)
  %5829 = fmul fast float %5828, %5815
  %5830 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5812, float %5813, float undef, float undef, i32 0, i32 0, i32 undef, float %5783)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5831 = extractvalue %dx.types.ResRet.f32 %5830, 0
  %5832 = extractvalue %dx.types.ResRet.f32 %5830, 1
  %5833 = extractvalue %dx.types.ResRet.f32 %5830, 2
  %5834 = select i1 %183, float 0.000000e+00, float %5832
  %5835 = select i1 %183, float 0.000000e+00, float %5833
  %5836 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5837 = extractvalue %dx.types.CBufRet.f32 %5836, 2
  %5838 = fmul fast float %5837, %5831
  %5839 = fmul fast float %5834, %5837
  %5840 = fmul fast float %5835, %5837
  %5841 = fsub fast float %5838, %5730
  %5842 = fsub fast float %5839, %5731
  %5843 = fsub fast float %5840, %5732
  %5844 = fmul fast float %5841, %5829
  %5845 = fmul fast float %5842, %5829
  %5846 = fmul fast float %5843, %5829
  %5847 = fadd fast float %5844, %5730
  %5848 = fadd fast float %5845, %5731
  %5849 = fadd fast float %5846, %5732
  br label %5850

; <label>:5850                                    ; preds = %5750, %5722, %5247, %4971
  %5851 = phi float [ %5249, %5247 ], [ %5746, %5722 ], [ %4928, %4971 ], [ %5847, %5750 ]
  %5852 = phi float [ %5250, %5247 ], [ %5747, %5722 ], [ %4929, %4971 ], [ %5848, %5750 ]
  %5853 = phi float [ %5251, %5247 ], [ %5748, %5722 ], [ %4930, %4971 ], [ %5849, %5750 ]
  %5854 = fmul fast float %4977, %4924
  %5855 = fmul fast float %4977, %4925
  %5856 = fmul fast float %4977, %4926
  %5857 = call float @dx.op.dot3.f32(i32 55, float %4780, float %4781, float %4782, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5858 = fcmp fast ogt float %5857, 0x3E7FF19E20000000
  %5859 = fdiv fast float 1.000000e+00, %5857
  %5860 = select i1 %5858, float %5859, float 0.000000e+00
  %5861 = fmul fast float %5860, %4780
  %5862 = fmul fast float %5860, %4781
  %5863 = fmul fast float %5860, %4782
  %5864 = fadd fast float %5861, -1.000000e+00
  %5865 = fadd fast float %5862, -1.000000e+00
  %5866 = fadd fast float %5863, -1.000000e+00
  %5867 = fmul fast float %5864, 5.000000e-01
  %5868 = fmul fast float %5865, 5.000000e-01
  %5869 = fmul fast float %5866, 5.000000e-01
  %5870 = fadd fast float %5867, 1.000000e+00
  %5871 = fadd fast float %5868, 1.000000e+00
  %5872 = fadd fast float %5869, 1.000000e+00
  %5873 = fmul fast float %5851, %4972
  %5874 = fmul fast float %5852, %4973
  %5875 = fmul fast float %5853, %4974
  %5876 = fsub fast float 1.000000e+00, %4808
  %5877 = bitcast float %5876 to i32
  %5878 = sitofp i32 %5877 to float
  %5879 = fmul fast float %5878, 5.000000e+00
  %5880 = fadd fast float %5879, 0xC1EFBF8940000000
  %5881 = fptosi float %5880 to i32
  %5882 = bitcast i32 %5881 to float
  %5883 = fmul fast float %5882, %4179
  %5884 = fmul fast float %4924, %5883
  %5885 = fmul fast float %5884, %4977
  %5886 = fmul fast float %5885, %5870
  %5887 = fmul fast float %4925, %5883
  %5888 = fmul fast float %5887, %4977
  %5889 = fmul fast float %5888, %5871
  %5890 = fmul fast float %4926, %5883
  %5891 = fmul fast float %5890, %4977
  %5892 = fmul fast float %5891, %5872
  %5893 = fmul fast float %5854, %4175
  %5894 = fmul fast float %5855, %4175
  %5895 = fmul fast float %5856, %4175
  %5896 = fadd fast float %5873, %4171
  %5897 = fadd fast float %5896, %5886
  %5898 = fmul fast float %5897, %4175
  %5899 = fadd fast float %5874, %4172
  %5900 = fadd fast float %5899, %5889
  %5901 = fmul fast float %5900, %4175
  %5902 = fadd fast float %5875, %4173
  %5903 = fadd fast float %5902, %5892
  %5904 = fmul fast float %5903, %4175
  %5905 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %5906 = extractvalue %dx.types.CBufRet.f32 %5905, 3
  %5907 = fcmp fast oeq float %5906, 0.000000e+00
  br i1 %5907, label %6127, label %5908

; <label>:5908                                    ; preds = %5850
  %5909 = extractvalue %dx.types.CBufRet.f32 %5905, 0
  %5910 = extractvalue %dx.types.CBufRet.f32 %5905, 1
  %5911 = extractvalue %dx.types.CBufRet.f32 %5905, 2
  %5912 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %5913 = extractvalue %dx.types.CBufRet.f32 %5912, 0
  %5914 = extractvalue %dx.types.CBufRet.f32 %5912, 1
  %5915 = extractvalue %dx.types.CBufRet.f32 %5912, 2
  %5916 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %5917 = extractvalue %dx.types.CBufRet.f32 %5916, 0
  %5918 = extractvalue %dx.types.CBufRet.f32 %5916, 1
  %5919 = call float @dx.op.dot3.f32(i32 55, float %5913, float %5914, float %5915, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5920 = select i1 %183, float %5917, float %5913
  %5921 = select i1 %183, float %5919, float %5914
  %5922 = select i1 %183, float %5918, float %5915
  %5923 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %5924 = extractvalue %dx.types.CBufRet.f32 %5923, 1
  %5925 = fcmp fast une float %5924, 0.000000e+00
  br i1 %5925, label %5926, label %5943

; <label>:5926                                    ; preds = %5908
  %5927 = fptoui float %78 to i32
  %5928 = fptoui float %79 to i32
  %5929 = lshr i32 %5927, 4
  %5930 = lshr i32 %5928, 4
  %5931 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %5932 = extractvalue %dx.types.CBufRet.f32 %5931, 0
  %5933 = fptoui float %5932 to i32
  %5934 = add i32 %5933, 15
  %5935 = lshr i32 %5934, 4
  %5936 = mul i32 %5935, %5930
  %5937 = add i32 %5936, %5929
  %5938 = shl i32 %5937, 3
  %5939 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %5938, i32 undef)  ; BufferLoad(srv,index,wot)
  %5940 = extractvalue %dx.types.ResRet.i32 %5939, 0
  %5941 = and i32 %5940, -268435456
  %5942 = icmp eq i32 %5941, -1342177280
  br i1 %5942, label %5948, label %5943

; <label>:5943                                    ; preds = %5926, %5908
  %5944 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4794, float %4795, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5945 = extractvalue %dx.types.ResRet.f32 %5944, 0
  %5946 = extractvalue %dx.types.ResRet.f32 %5944, 1
  %5947 = extractvalue %dx.types.ResRet.f32 %5944, 2
  br label %5948

; <label>:5948                                    ; preds = %5943, %5926
  %5949 = phi float [ %5945, %5943 ], [ 0.000000e+00, %5926 ]
  %5950 = phi float [ %5946, %5943 ], [ 0.000000e+00, %5926 ]
  %5951 = phi float [ %5947, %5943 ], [ 0.000000e+00, %5926 ]
  %5952 = call float @dx.op.binary.f32(i32 36, float %5950, float %5951)  ; FMin(a,b)
  %5953 = call float @dx.op.binary.f32(i32 36, float %5949, float %5952)  ; FMin(a,b)
  %5954 = fcmp fast ogt float %5953, 0.000000e+00
  br i1 %5954, label %5955, label %6127, !dx.controlflow.hints !87

; <label>:5955                                    ; preds = %5948
  %5956 = fmul fast float %5949, %5920
  %5957 = fmul fast float %5950, %5921
  %5958 = fmul fast float %5951, %5922
  %5959 = fsub fast float %5909, %4779
  %5960 = fsub fast float %5910, %4778
  %5961 = fsub fast float %5911, %4777
  %5962 = call float @dx.op.dot3.f32(i32 55, float %5959, float %5960, float %5961, float %5959, float %5960, float %5961)  ; Dot3(ax,ay,az,bx,by,bz)
  %5963 = call float @dx.op.unary.f32(i32 25, float %5962)  ; Rsqrt(value)
  %5964 = fmul fast float %5963, %5959
  %5965 = fmul fast float %5963, %5960
  %5966 = fmul fast float %5963, %5961
  %5967 = call float @dx.op.dot3.f32(i32 55, float %5909, float %5910, float %5911, float %4783, float %4784, float %4785)  ; Dot3(ax,ay,az,bx,by,bz)
  %5968 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4775, float %4774, float %5964, float %5965, float %5966)  ; Dot3(ax,ay,az,bx,by,bz)
  %5969 = call float @dx.op.unary.f32(i32 7, float %5967)  ; Saturate(value)
  %5970 = bitcast i32 %4832 to float
  %5971 = fmul fast float %5969, %5969
  %5972 = fmul fast float %5971, %5970
  %5973 = call float @dx.op.unary.f32(i32 7, float %5972)  ; Saturate(value)
  %5974 = fmul fast float %5973, %5969
  %5975 = call float @dx.op.dot3.f32(i32 55, float %4783, float %4784, float %4785, float %5964, float %5965, float %5966)  ; Dot3(ax,ay,az,bx,by,bz)
  %5976 = fmul fast float %5975, %5975
  %5977 = call float @dx.op.unary.f32(i32 6, float %5967)  ; FAbs(value)
  %5978 = fsub fast float 1.000000e+00, %4826
  %5979 = fmul fast float %4808, %4808
  %5980 = fmul fast float %5979, %5978
  %5981 = fadd fast float %5980, %4826
  %5982 = bitcast float %5981 to i32
  %5983 = ashr i32 %5982, 1
  %5984 = add nsw i32 %5983, 532487669
  %5985 = bitcast i32 %5984 to float
  %5986 = fadd fast float %5985, %4808
  %5987 = fmul fast float %4826, %5976
  %5988 = fsub fast float 1.000000e+00, %5976
  %5989 = fadd fast float %5988, %5987
  %5990 = fmul fast float %5977, %5977
  %5991 = fmul fast float %5990, %5978
  %5992 = fadd fast float %5991, %4826
  %5993 = bitcast float %5992 to i32
  %5994 = ashr i32 %5993, 1
  %5995 = add nsw i32 %5994, 532487669
  %5996 = bitcast i32 %5995 to float
  %5997 = fadd fast float %5996, %5977
  %5998 = fmul fast float %5989, %5989
  %5999 = fmul fast float %5998, %5986
  %6000 = fmul fast float %5999, %5997
  %6001 = fdiv fast float 0x3FF0A00000000000, %6000
  %6002 = fmul fast float %6001, %4826
  %6003 = call float @dx.op.unary.f32(i32 6, float %5968)  ; FAbs(value)
  %6004 = fsub fast float 1.000000e+00, %6003
  %6005 = bitcast float %6004 to i32
  %6006 = sitofp i32 %6005 to float
  %6007 = fmul fast float %6006, 5.000000e+00
  %6008 = fadd fast float %6007, 0xC1EFBF8940000000
  %6009 = fptosi float %6008 to i32
  %6010 = bitcast i32 %6009 to float
  %6011 = fsub fast float 1.000000e+00, %4786
  %6012 = fsub fast float 1.000000e+00, %4787
  %6013 = fsub fast float 1.000000e+00, %4806
  %6014 = fmul fast float %6010, %6011
  %6015 = fmul fast float %6010, %6012
  %6016 = fmul fast float %6010, %6013
  %6017 = fadd fast float %6014, %4786
  %6018 = fadd fast float %6015, %4787
  %6019 = fadd fast float %6016, %4806
  br i1 %4944, label %6020, label %6043

; <label>:6020                                    ; preds = %5955
  %6021 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4178, float %6003, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6022 = extractvalue %dx.types.ResRet.f32 %6021, 0
  %6023 = extractvalue %dx.types.ResRet.f32 %6021, 1
  %6024 = extractvalue %dx.types.ResRet.f32 %6021, 2
  %6025 = fadd fast float %6022, -5.000000e-01
  %6026 = fadd fast float %6023, -5.000000e-01
  %6027 = fadd fast float %6024, -5.000000e-01
  %6028 = fmul fast float %4786, 4.000000e+00
  %6029 = fmul fast float %6028, %6011
  %6030 = fmul fast float %6029, %6025
  %6031 = fmul fast float %4787, 4.000000e+00
  %6032 = fmul fast float %6031, %6012
  %6033 = fmul fast float %6032, %6026
  %6034 = fmul fast float %4806, 4.000000e+00
  %6035 = fmul fast float %6034, %6013
  %6036 = fmul fast float %6035, %6027
  %6037 = fadd fast float %6030, %6017
  %6038 = fadd fast float %6033, %6018
  %6039 = fadd fast float %6036, %6019
  %6040 = call float @dx.op.unary.f32(i32 7, float %6037)  ; Saturate(value)
  %6041 = call float @dx.op.unary.f32(i32 7, float %6038)  ; Saturate(value)
  %6042 = call float @dx.op.unary.f32(i32 7, float %6039)  ; Saturate(value)
  br label %6043

; <label>:6043                                    ; preds = %6020, %5955
  %6044 = phi float [ %6040, %6020 ], [ %6017, %5955 ]
  %6045 = phi float [ %6041, %6020 ], [ %6018, %5955 ]
  %6046 = phi float [ %6042, %6020 ], [ %6019, %5955 ]
  %6047 = fmul fast float %5967, 9.843750e-01
  %6048 = fadd fast float %6047, 7.812500e-03
  %6049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6048, float %4934, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6050 = extractvalue %dx.types.ResRet.f32 %6049, 2
  %6051 = extractvalue %dx.types.ResRet.f32 %6049, 3
  %6052 = fmul fast float %6050, %4786
  %6053 = fmul fast float %6050, %4787
  %6054 = fmul fast float %6050, %4806
  %6055 = fadd fast float %6052, %6051
  %6056 = fadd fast float %6053, %6051
  %6057 = fadd fast float %6054, %6051
  br i1 %4944, label %6058, label %6081

; <label>:6058                                    ; preds = %6043
  %6059 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4178, float %5967, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6060 = extractvalue %dx.types.ResRet.f32 %6059, 0
  %6061 = extractvalue %dx.types.ResRet.f32 %6059, 1
  %6062 = extractvalue %dx.types.ResRet.f32 %6059, 2
  %6063 = fadd fast float %6060, -5.000000e-01
  %6064 = fadd fast float %6061, -5.000000e-01
  %6065 = fadd fast float %6062, -5.000000e-01
  %6066 = fmul fast float %4786, 4.000000e+00
  %6067 = fmul fast float %6066, %6011
  %6068 = fmul fast float %6067, %6063
  %6069 = fmul fast float %4787, 4.000000e+00
  %6070 = fmul fast float %6069, %6012
  %6071 = fmul fast float %6070, %6064
  %6072 = fmul fast float %4806, 4.000000e+00
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
  %6091 = fsub fast float 1.000000e+00, %5968
  %6092 = bitcast float %6091 to i32
  %6093 = sitofp i32 %6092 to float
  %6094 = fmul fast float %6093, 5.000000e+00
  %6095 = fadd fast float %6094, 0xC1EFBF8940000000
  %6096 = fptosi float %6095 to i32
  %6097 = bitcast i32 %6096 to float
  %6098 = fmul fast float %6097, %4179
  %6099 = fmul fast float %6087, %6098
  %6100 = fmul fast float %6099, %5870
  %6101 = fmul fast float %6099, %5871
  %6102 = fmul fast float %6099, %5872
  %6103 = fadd fast float %6100, %6088
  %6104 = fadd fast float %6101, %6089
  %6105 = fadd fast float %6102, %6090
  %6106 = fmul fast float %5974, %5956
  %6107 = fmul fast float %6106, %6087
  %6108 = fmul fast float %5974, %5957
  %6109 = fmul fast float %6108, %6087
  %6110 = fmul fast float %5974, %5958
  %6111 = fmul fast float %6110, %6087
  %6112 = fmul fast float %6106, %6103
  %6113 = fmul fast float %6108, %6104
  %6114 = fmul fast float %6110, %6105
  %6115 = fadd fast float %6107, %5854
  %6116 = fmul fast float %6115, %4175
  %6117 = fadd fast float %6109, %5855
  %6118 = fmul fast float %6117, %4175
  %6119 = fadd fast float %6111, %5856
  %6120 = fmul fast float %6119, %4175
  %6121 = fadd fast float %6112, %5897
  %6122 = fmul fast float %6121, %4175
  %6123 = fadd fast float %6113, %5900
  %6124 = fmul fast float %6123, %4175
  %6125 = fadd fast float %6114, %5903
  %6126 = fmul fast float %6125, %4175
  br label %6127

; <label>:6127                                    ; preds = %6081, %5948, %5850
  %6128 = phi float [ %5898, %5850 ], [ %5898, %5948 ], [ %6122, %6081 ]
  %6129 = phi float [ %5901, %5850 ], [ %5901, %5948 ], [ %6124, %6081 ]
  %6130 = phi float [ %5904, %5850 ], [ %5904, %5948 ], [ %6126, %6081 ]
  %6131 = phi float [ %5893, %5850 ], [ %5893, %5948 ], [ %6116, %6081 ]
  %6132 = phi float [ %5894, %5850 ], [ %5894, %5948 ], [ %6118, %6081 ]
  %6133 = phi float [ %5895, %5850 ], [ %5895, %5948 ], [ %6120, %6081 ]
  %6134 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6135 = extractvalue %dx.types.CBufRet.i32 %6134, 0
  %6136 = icmp eq i32 %6135, 0
  br i1 %6136, label %6568, label %6137

; <label>:6137                                    ; preds = %6127
  %6138 = fptoui float %78 to i32
  %6139 = fptoui float %79 to i32
  %6140 = lshr i32 %6138, 4
  %6141 = lshr i32 %6139, 4
  %6142 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6143 = extractvalue %dx.types.CBufRet.i32 %6142, 0
  %6144 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6141, i32 %6143, i32 %6140)  ; UMad(a,b,c)
  %6145 = add nsw i32 %6135, -1
  %6146 = call i32 @dx.op.binary.i32(i32 37, i32 %6145, i32 0)  ; IMax(a,b)
  %6147 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
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
  br i1 %6159, label %6568, label %6160

; <label>:6160                                    ; preds = %6137
  br label %6161

; <label>:6161                                    ; preds = %6558, %6160
  %6162 = phi i32 [ %6565, %6558 ], [ %6156, %6160 ]
  %6163 = phi float [ %6559, %6558 ], [ %6128, %6160 ]
  %6164 = phi float [ %6560, %6558 ], [ %6129, %6160 ]
  %6165 = phi float [ %6561, %6558 ], [ %6130, %6160 ]
  %6166 = phi float [ %6562, %6558 ], [ %6131, %6160 ]
  %6167 = phi float [ %6563, %6558 ], [ %6132, %6160 ]
  %6168 = phi float [ %6564, %6558 ], [ %6133, %6160 ]
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
  br i1 %6191, label %6558, label %6192

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
  %6227 = select i1 %183, float %6224, float %6208
  %6228 = select i1 %183, float %6226, float %6209
  %6229 = select i1 %183, float %6225, float %6210
  %6230 = fsub fast float %6219, %141
  %6231 = fsub fast float %6220, %142
  %6232 = fsub fast float %6221, %143
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
  br i1 %6245, label %6268, label %6246, !dx.controlflow.hints !88

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
  br i1 %6272, label %6281, label %6273, !dx.controlflow.hints !89

; <label>:6273                                    ; preds = %6514, %6268
  %6274 = phi float [ %6195, %6268 ], [ %6554, %6514 ]
  %6275 = phi float [ %6196, %6268 ], [ %6555, %6514 ]
  %6276 = phi float [ %6197, %6268 ], [ %6556, %6514 ]
  %6277 = phi float [ %6198, %6268 ], [ %6548, %6514 ]
  %6278 = phi float [ %6199, %6268 ], [ %6549, %6514 ]
  %6279 = phi float [ %6200, %6268 ], [ %6550, %6514 ]
  %6280 = icmp eq i32 %6194, %6204
  br i1 %6280, label %6557, label %6193

; <label>:6281                                    ; preds = %6268
  %6282 = fmul fast float %6269, %6227
  %6283 = fmul fast float %6269, %6228
  %6284 = fmul fast float %6269, %6229
  %6285 = fsub fast float %6221, %4579
  %6286 = fcmp fast ogt float %6285, 0.000000e+00
  %6287 = fsub fast float %143, %4579
  %6288 = fcmp fast ogt float %6287, 0.000000e+00
  %6289 = xor i1 %6288, %6286
  %6290 = fsub fast float %4579, %6221
  %6291 = fmul fast float %6290, 2.000000e+00
  %6292 = fadd fast float %6291, %6221
  %6293 = select i1 %6289, float %6221, float %6292
  %6294 = fsub fast float %6293, %143
  %6295 = call float @dx.op.dot3.f32(i32 55, float %6230, float %6231, float %6294, float %6230, float %6231, float %6294)  ; Dot3(ax,ay,az,bx,by,bz)
  %6296 = call float @dx.op.unary.f32(i32 25, float %6295)  ; Rsqrt(value)
  %6297 = fmul fast float %6296, %6230
  %6298 = fmul fast float %6296, %6231
  %6299 = fmul fast float %6296, %6294
  %6300 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4587)  ; Dot3(ax,ay,az,bx,by,bz)
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
  %6311 = fsub fast float %6293, %4579
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
  %6333 = fsub fast float %141, %6219
  %6334 = fsub fast float %142, %6220
  %6335 = fsub fast float %143, %6293
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
  %6347 = fmul fast float %4580, 0x3FF7154760000000
  %6348 = fmul fast float %6347, %6346
  %6349 = fmul fast float %4581, 0x3FF7154760000000
  %6350 = fmul fast float %6349, %6346
  %6351 = fmul fast float %4582, 0x3FF7154760000000
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
  %6362 = fsub fast float %6236, %4779
  %6363 = fsub fast float %6237, %4778
  %6364 = fsub fast float %6238, %4777
  %6365 = call float @dx.op.dot3.f32(i32 55, float %6362, float %6363, float %6364, float %6362, float %6363, float %6364)  ; Dot3(ax,ay,az,bx,by,bz)
  %6366 = call float @dx.op.unary.f32(i32 25, float %6365)  ; Rsqrt(value)
  %6367 = fmul fast float %6366, %6362
  %6368 = fmul fast float %6366, %6363
  %6369 = fmul fast float %6366, %6364
  %6370 = call float @dx.op.dot3.f32(i32 55, float %6236, float %6237, float %6238, float %4783, float %4784, float %4785)  ; Dot3(ax,ay,az,bx,by,bz)
  %6371 = call float @dx.op.dot3.f32(i32 55, float %4776, float %4775, float %4774, float %6367, float %6368, float %6369)  ; Dot3(ax,ay,az,bx,by,bz)
  %6372 = call float @dx.op.unary.f32(i32 7, float %6370)  ; Saturate(value)
  %6373 = fmul fast float %6372, %6243
  %6374 = bitcast i32 %4832 to float
  %6375 = fmul fast float %6372, %6372
  %6376 = fmul fast float %6375, %6374
  %6377 = call float @dx.op.unary.f32(i32 7, float %6376)  ; Saturate(value)
  %6378 = fmul fast float %6373, %6377
  %6379 = bitcast float %6233 to i32
  %6380 = ashr i32 %6379, 1
  %6381 = sub nsw i32 1597463007, %6380
  %6382 = bitcast i32 %6381 to float
  %6383 = fmul fast float %6382, %6230
  %6384 = fmul fast float %6382, %6231
  %6385 = fmul fast float %6382, %6232
  %6386 = fsub fast float %6383, %4779
  %6387 = fsub fast float %6384, %4778
  %6388 = fsub fast float %6385, %4777
  %6389 = call float @dx.op.dot3.f32(i32 55, float %6386, float %6387, float %6388, float %6386, float %6387, float %6388)  ; Dot3(ax,ay,az,bx,by,bz)
  %6390 = call float @dx.op.unary.f32(i32 25, float %6389)  ; Rsqrt(value)
  %6391 = fmul fast float %6386, %6390
  %6392 = fmul fast float %6387, %6390
  %6393 = fmul fast float %6388, %6390
  %6394 = call float @dx.op.dot3.f32(i32 55, float %4783, float %4784, float %4785, float %6391, float %6392, float %6393)  ; Dot3(ax,ay,az,bx,by,bz)
  %6395 = fmul fast float %6394, %6394
  %6396 = call float @dx.op.unary.f32(i32 6, float %6370)  ; FAbs(value)
  %6397 = fsub fast float 1.000000e+00, %4826
  %6398 = fmul fast float %4808, %4808
  %6399 = fmul fast float %6398, %6397
  %6400 = fadd fast float %6399, %4826
  %6401 = bitcast float %6400 to i32
  %6402 = ashr i32 %6401, 1
  %6403 = add nsw i32 %6402, 532487669
  %6404 = bitcast i32 %6403 to float
  %6405 = fadd fast float %6404, %4808
  %6406 = fmul fast float %4826, %6395
  %6407 = fsub fast float 1.000000e+00, %6395
  %6408 = fadd fast float %6407, %6406
  %6409 = fmul fast float %6396, %6396
  %6410 = fmul fast float %6409, %6397
  %6411 = fadd fast float %6410, %4826
  %6412 = bitcast float %6411 to i32
  %6413 = ashr i32 %6412, 1
  %6414 = add nsw i32 %6413, 532487669
  %6415 = bitcast i32 %6414 to float
  %6416 = fadd fast float %6415, %6396
  %6417 = fmul fast float %6408, %6408
  %6418 = fmul fast float %6417, %6405
  %6419 = fmul fast float %6418, %6416
  %6420 = fdiv fast float 1.000000e+00, %6419
  %6421 = bitcast float %4826 to i32
  %6422 = sitofp i32 %6421 to float
  %6423 = fmul fast float %6422, 0x3FE7F73180000000
  %6424 = fadd fast float %6423, 0x41AFE27C40000000
  %6425 = fptosi float %6424 to i32
  %6426 = bitcast i32 %6425 to float
  %6427 = fmul fast float %6216, 0x3FD80E9D60000000
  %6428 = fmul fast float %6427, %6382
  %6429 = fadd fast float %6426, %6428
  %6430 = bitcast float %6429 to i32
  %6431 = sub nsw i32 2129859010, %6430
  %6432 = bitcast i32 %6431 to float
  %6433 = fmul fast float %4826, %6420
  %6434 = fmul fast float %6433, %6426
  %6435 = fmul fast float %6434, %6432
  %6436 = call float @dx.op.unary.f32(i32 6, float %6371)  ; FAbs(value)
  %6437 = fsub fast float 1.000000e+00, %6436
  %6438 = bitcast float %6437 to i32
  %6439 = sitofp i32 %6438 to float
  %6440 = fmul fast float %6439, 5.000000e+00
  %6441 = fadd fast float %6440, 0xC1EFBF8940000000
  %6442 = fptosi float %6441 to i32
  %6443 = bitcast i32 %6442 to float
  %6444 = fsub fast float 1.000000e+00, %4786
  %6445 = fsub fast float 1.000000e+00, %4787
  %6446 = fsub fast float 1.000000e+00, %4806
  %6447 = fmul fast float %6443, %6444
  %6448 = fmul fast float %6443, %6445
  %6449 = fmul fast float %6443, %6446
  %6450 = fadd fast float %6447, %4786
  %6451 = fadd fast float %6448, %4787
  %6452 = fadd fast float %6449, %4806
  br i1 %4944, label %6453, label %6476

; <label>:6453                                    ; preds = %6342
  %6454 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4178, float %6436, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6455 = extractvalue %dx.types.ResRet.f32 %6454, 0
  %6456 = extractvalue %dx.types.ResRet.f32 %6454, 1
  %6457 = extractvalue %dx.types.ResRet.f32 %6454, 2
  %6458 = fadd fast float %6455, -5.000000e-01
  %6459 = fadd fast float %6456, -5.000000e-01
  %6460 = fadd fast float %6457, -5.000000e-01
  %6461 = fmul fast float %4786, 4.000000e+00
  %6462 = fmul fast float %6461, %6444
  %6463 = fmul fast float %6462, %6458
  %6464 = fmul fast float %4787, 4.000000e+00
  %6465 = fmul fast float %6464, %6445
  %6466 = fmul fast float %6465, %6459
  %6467 = fmul fast float %4806, 4.000000e+00
  %6468 = fmul fast float %6467, %6446
  %6469 = fmul fast float %6468, %6460
  %6470 = fadd fast float %6463, %6450
  %6471 = fadd fast float %6466, %6451
  %6472 = fadd fast float %6469, %6452
  %6473 = call float @dx.op.unary.f32(i32 7, float %6470)  ; Saturate(value)
  %6474 = call float @dx.op.unary.f32(i32 7, float %6471)  ; Saturate(value)
  %6475 = call float @dx.op.unary.f32(i32 7, float %6472)  ; Saturate(value)
  br label %6476

; <label>:6476                                    ; preds = %6453, %6342
  %6477 = phi float [ %6473, %6453 ], [ %6450, %6342 ]
  %6478 = phi float [ %6474, %6453 ], [ %6451, %6342 ]
  %6479 = phi float [ %6475, %6453 ], [ %6452, %6342 ]
  %6480 = fmul fast float %6370, 9.843750e-01
  %6481 = fadd fast float %6480, 7.812500e-03
  %6482 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6481, float %4934, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6483 = extractvalue %dx.types.ResRet.f32 %6482, 2
  %6484 = extractvalue %dx.types.ResRet.f32 %6482, 3
  %6485 = fmul fast float %6483, %4786
  %6486 = fmul fast float %6483, %4787
  %6487 = fmul fast float %6483, %4806
  %6488 = fadd fast float %6485, %6484
  %6489 = fadd fast float %6486, %6484
  %6490 = fadd fast float %6487, %6484
  br i1 %4944, label %6491, label %6514

; <label>:6491                                    ; preds = %6476
  %6492 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4178, float %6370, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6493 = extractvalue %dx.types.ResRet.f32 %6492, 0
  %6494 = extractvalue %dx.types.ResRet.f32 %6492, 1
  %6495 = extractvalue %dx.types.ResRet.f32 %6492, 2
  %6496 = fadd fast float %6493, -5.000000e-01
  %6497 = fadd fast float %6494, -5.000000e-01
  %6498 = fadd fast float %6495, -5.000000e-01
  %6499 = fmul fast float %4786, 4.000000e+00
  %6500 = fmul fast float %6499, %6444
  %6501 = fmul fast float %6500, %6496
  %6502 = fmul fast float %4787, 4.000000e+00
  %6503 = fmul fast float %6502, %6445
  %6504 = fmul fast float %6503, %6497
  %6505 = fmul fast float %4806, 4.000000e+00
  %6506 = fmul fast float %6505, %6446
  %6507 = fmul fast float %6506, %6498
  %6508 = fadd fast float %6501, %6488
  %6509 = fadd fast float %6504, %6489
  %6510 = fadd fast float %6507, %6490
  %6511 = call float @dx.op.unary.f32(i32 7, float %6508)  ; Saturate(value)
  %6512 = call float @dx.op.unary.f32(i32 7, float %6509)  ; Saturate(value)
  %6513 = call float @dx.op.unary.f32(i32 7, float %6510)  ; Saturate(value)
  br label %6514

; <label>:6514                                    ; preds = %6491, %6476
  %6515 = phi float [ %6511, %6491 ], [ %6488, %6476 ]
  %6516 = phi float [ %6512, %6491 ], [ %6489, %6476 ]
  %6517 = phi float [ %6513, %6491 ], [ %6490, %6476 ]
  %6518 = call float @dx.op.binary.f32(i32 35, float %6516, float %6517)  ; FMax(a,b)
  %6519 = call float @dx.op.binary.f32(i32 35, float %6515, float %6518)  ; FMax(a,b)
  %6520 = fsub fast float 1.000000e+00, %6519
  %6521 = fmul fast float %6477, %6435
  %6522 = fmul fast float %6478, %6435
  %6523 = fmul fast float %6479, %6435
  %6524 = fsub fast float 1.000000e+00, %6371
  %6525 = bitcast float %6524 to i32
  %6526 = sitofp i32 %6525 to float
  %6527 = fmul fast float %6526, 5.000000e+00
  %6528 = fadd fast float %6527, 0xC1EFBF8940000000
  %6529 = fptosi float %6528 to i32
  %6530 = bitcast i32 %6529 to float
  %6531 = fmul fast float %6530, %4179
  %6532 = fmul fast float %6520, %6531
  %6533 = fmul fast float %6532, %5870
  %6534 = fmul fast float %6532, %5871
  %6535 = fmul fast float %6532, %5872
  %6536 = fadd fast float %6533, %6521
  %6537 = fadd fast float %6534, %6522
  %6538 = fadd fast float %6535, %6523
  %6539 = fmul fast float %6359, %4175
  %6540 = fmul fast float %6539, %6378
  %6541 = fmul fast float %6540, %6520
  %6542 = fmul fast float %6360, %4175
  %6543 = fmul fast float %6542, %6378
  %6544 = fmul fast float %6543, %6520
  %6545 = fmul fast float %6361, %4175
  %6546 = fmul fast float %6545, %6378
  %6547 = fmul fast float %6546, %6520
  %6548 = fadd fast float %6541, %6198
  %6549 = fadd fast float %6544, %6199
  %6550 = fadd fast float %6547, %6200
  %6551 = fmul fast float %6540, %6536
  %6552 = fmul fast float %6543, %6537
  %6553 = fmul fast float %6546, %6538
  %6554 = fadd fast float %6551, %6195
  %6555 = fadd fast float %6552, %6196
  %6556 = fadd fast float %6553, %6197
  br label %6273

; <label>:6557                                    ; preds = %6273
  br label %6558

; <label>:6558                                    ; preds = %6557, %6161
  %6559 = phi float [ %6163, %6161 ], [ %6274, %6557 ]
  %6560 = phi float [ %6164, %6161 ], [ %6275, %6557 ]
  %6561 = phi float [ %6165, %6161 ], [ %6276, %6557 ]
  %6562 = phi float [ %6166, %6161 ], [ %6277, %6557 ]
  %6563 = phi float [ %6167, %6161 ], [ %6278, %6557 ]
  %6564 = phi float [ %6168, %6161 ], [ %6279, %6557 ]
  %6565 = add i32 %6162, 1
  %6566 = icmp ugt i32 %6565, %6158
  br i1 %6566, label %6567, label %6161

; <label>:6567                                    ; preds = %6558
  br label %6568

; <label>:6568                                    ; preds = %6567, %6137, %6127
  %6569 = phi float [ %6128, %6127 ], [ %6128, %6137 ], [ %6559, %6567 ]
  %6570 = phi float [ %6129, %6127 ], [ %6129, %6137 ], [ %6560, %6567 ]
  %6571 = phi float [ %6130, %6127 ], [ %6130, %6137 ], [ %6561, %6567 ]
  %6572 = phi float [ %6131, %6127 ], [ %6131, %6137 ], [ %6562, %6567 ]
  %6573 = phi float [ %6132, %6127 ], [ %6132, %6137 ], [ %6563, %6567 ]
  %6574 = phi float [ %6133, %6127 ], [ %6133, %6137 ], [ %6564, %6567 ]
  %6575 = call float @dx.op.unary.f32(i32 24, float %4780)  ; Sqrt(value)
  %6576 = call float @dx.op.unary.f32(i32 24, float %4781)  ; Sqrt(value)
  %6577 = call float @dx.op.unary.f32(i32 24, float %4782)  ; Sqrt(value)
  %6578 = fmul fast float %6575, %6572
  %6579 = fmul fast float %6576, %6573
  %6580 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6581 = extractvalue %dx.types.CBufRet.f32 %6580, 0
  br i1 %183, label %6582, label %6605

; <label>:6582                                    ; preds = %6568
  %6583 = fadd fast float %6574, %4181
  %6584 = fmul fast float %6583, %4182
  %6585 = fsub fast float 1.000000e+00, %4182
  %6586 = call float @dx.op.unary.f32(i32 7, float %6585)  ; Saturate(value)
  %6587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6588 = extractvalue %dx.types.CBufRet.f32 %6587, 3
  %6589 = fmul fast float %6588, %6586
  %6590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6591 = extractvalue %dx.types.CBufRet.f32 %6590, 0
  %6592 = fmul fast float %6591, %5876
  %6593 = extractvalue %dx.types.CBufRet.f32 %6590, 2
  %6594 = fmul fast float %6593, %4804
  %6595 = fadd fast float %6579, %6578
  %6596 = fmul fast float %6581, %6595
  %6597 = extractvalue %dx.types.CBufRet.f32 %6587, 1
  %6598 = fadd fast float %6589, %6584
  %6599 = fsub fast float %6598, %6592
  %6600 = fadd fast float %6599, %6594
  %6601 = fsub fast float %6600, %6597
  %6602 = extractvalue %dx.types.CBufRet.f32 %6587, 2
  %6603 = fmul fast float %6601, %6602
  %6604 = call float @dx.op.unary.f32(i32 7, float %6603)  ; Saturate(value)
  br label %6621

; <label>:6605                                    ; preds = %6568
  %6606 = fmul fast float %6577, %6574
  %6607 = fmul fast float %6581, %6578
  %6608 = fmul fast float %6581, %6579
  %6609 = fmul fast float %6606, %6581
  %6610 = add i32 %43, 356
  %6611 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6610, i32 undef)  ; BufferLoad(srv,index,wot)
  %6612 = extractvalue %dx.types.ResRet.i32 %6611, 0
  %6613 = and i32 %6612, 32
  %6614 = icmp eq i32 %6613, 0
  br i1 %6614, label %6621, label %6615

; <label>:6615                                    ; preds = %6605
  %6616 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6617 = extractvalue %dx.types.CBufRet.f32 %6616, 0
  %6618 = fmul fast float %6617, 0x3FE99999A0000000
  %6619 = fadd fast float %6617, %6607
  %6620 = fadd fast float %6618, %6609
  br label %6621

; <label>:6621                                    ; preds = %6615, %6605, %6582
  %6622 = phi float [ %6596, %6582 ], [ %6619, %6615 ], [ %6607, %6605 ]
  %6623 = phi float [ %6604, %6582 ], [ %6608, %6615 ], [ %6608, %6605 ]
  %6624 = phi float [ 1.000000e+00, %6582 ], [ %6620, %6615 ], [ %6609, %6605 ]
  %6625 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6626 = extractvalue %dx.types.CBufRet.f32 %6625, 0
  %6627 = fmul fast float %6626, %6570
  %6628 = fmul fast float %6626, %6571
  %6629 = fadd fast float %6570, %6569
  %6630 = select i1 %183, float %6629, float %6569
  %6631 = fmul float %6630, %6626
  %6632 = select i1 %183, float 0.000000e+00, float %6627
  %6633 = select i1 %183, float 0.000000e+00, float %6628
  %6634 = fmul fast float %6622, %6575
  %6635 = fmul fast float %6623, %6576
  %6636 = fmul fast float %6624, %6577
  %6637 = fadd fast float %6631, %6634
  %6638 = fadd fast float %6632, %6635
  %6639 = fadd fast float %6633, %6636
  %6640 = select i1 %183, float %6623, float %6638
  %6641 = select i1 %183, float %6624, float %6639
  %6642 = call float @dx.op.binary.f32(i32 36, float %6637, float 3.225500e+04)  ; FMin(a,b)
  %6643 = call float @dx.op.binary.f32(i32 36, float %6640, float 3.225500e+04)  ; FMin(a,b)
  %6644 = call float @dx.op.binary.f32(i32 36, float %6641, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6642)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6643)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6644)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

