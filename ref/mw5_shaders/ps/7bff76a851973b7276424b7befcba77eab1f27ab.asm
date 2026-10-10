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
; shader hash: 145a673aa120e2a23f7457adf86c839a
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
  %380 = add i32 %43, 504
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
  br i1 %433, label %892, label %434

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
  %879 = add i32 %43, 96
  %880 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %879, i32 undef)  ; BufferLoad(srv,index,wot)
  %881 = extractvalue %dx.types.ResRet.i32 %880, 0
  %882 = and i32 %881, 255
  %883 = uitofp i32 %882 to float
  %884 = lshr i32 %881, 8
  %885 = and i32 %884, 255
  %886 = uitofp i32 %885 to float
  %887 = call float @dx.op.dot3.f32(i32 55, float %748, float %749, float %750, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %888 = fmul fast float %886, %887
  %889 = fadd fast float %888, %883
  %890 = fmul fast float %889, 0x3F70101020000000
  %891 = call float @dx.op.unary.f32(i32 7, float %890)  ; Saturate(value)
  br label %892

; <label>:892                                     ; preds = %875, %419
  %893 = phi float [ 0.000000e+00, %419 ], [ %829, %875 ]
  %894 = phi float [ 0.000000e+00, %419 ], [ %830, %875 ]
  %895 = phi float [ 0.000000e+00, %419 ], [ %748, %875 ]
  %896 = phi float [ 0.000000e+00, %419 ], [ %749, %875 ]
  %897 = phi float [ 0.000000e+00, %419 ], [ %750, %875 ]
  %898 = phi float [ 0.000000e+00, %419 ], [ %876, %875 ]
  %899 = phi float [ 0.000000e+00, %419 ], [ %877, %875 ]
  %900 = phi float [ 0.000000e+00, %419 ], [ %878, %875 ]
  %901 = phi float [ 0.000000e+00, %419 ], [ %734, %875 ]
  %902 = phi float [ 0.000000e+00, %419 ], [ 1.000000e+00, %875 ]
  %903 = phi float [ 0.000000e+00, %419 ], [ %828, %875 ]
  %904 = phi float [ 0.000000e+00, %419 ], [ %831, %875 ]
  %905 = phi float [ 0.000000e+00, %419 ], [ %891, %875 ]
  br i1 %370, label %1858, label %906

; <label>:906                                     ; preds = %892
  %907 = icmp ult i32 %425, 2
  %908 = add i32 %43, 40
  %909 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %910 = extractvalue %dx.types.ResRet.i32 %909, 0
  %911 = add i32 %43, 44
  %912 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %911, i32 undef)  ; BufferLoad(srv,index,wot)
  %913 = extractvalue %dx.types.ResRet.i32 %912, 0
  %914 = or i32 %913, %910
  %915 = icmp eq i32 %914, 0
  br i1 %915, label %1858, label %916

; <label>:916                                     ; preds = %906
  %917 = and i32 %910, 262144
  %918 = icmp ne i32 %917, 0
  %919 = select i1 %918, float %46, float 1.000000e+00
  %920 = select i1 %918, float %47, float 0.000000e+00
  %921 = select i1 %918, float %48, float 0.000000e+00
  %922 = select i1 %918, float %49, float 1.000000e+00
  %923 = select i1 %918, float %50, float %66
  %924 = select i1 %918, float %51, float %67
  %925 = add i32 %43, 300
  %926 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %927 = extractvalue %dx.types.ResRet.i32 %926, 0
  %928 = lshr i32 %927, 16
  %929 = call float @dx.op.legacyF16ToF32(i32 131, i32 %928)  ; LegacyF16ToF32(value)
  %930 = fmul fast float %929, 0x3F50624DE0000000
  %931 = add i32 %43, 104
  %932 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %933 = extractvalue %dx.types.ResRet.i32 %932, 0
  %934 = lshr i32 %933, 16
  %935 = and i32 %934, 255
  %936 = lshr i32 %933, 24
  %937 = add i32 %43, 308
  %938 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %937, i32 undef)  ; BufferLoad(srv,index,wot)
  %939 = extractvalue %dx.types.ResRet.i32 %938, 0
  %940 = and i32 %939, 65535
  %941 = call float @dx.op.legacyF16ToF32(i32 131, i32 %940)  ; LegacyF16ToF32(value)
  %942 = lshr i32 %939, 16
  %943 = call float @dx.op.legacyF16ToF32(i32 131, i32 %942)  ; LegacyF16ToF32(value)
  %944 = add i32 %43, 48
  %945 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %944, i32 undef)  ; BufferLoad(srv,index,wot)
  %946 = extractvalue %dx.types.ResRet.i32 %945, 0
  %947 = lshr i32 %946, 22
  %948 = shl nuw nsw i32 %947, 5
  %949 = call float @dx.op.legacyF16ToF32(i32 131, i32 %948)  ; LegacyF16ToF32(value)
  %950 = shl i32 %946, 4
  %951 = and i32 %950, 32752
  %952 = call float @dx.op.legacyF16ToF32(i32 131, i32 %951)  ; LegacyF16ToF32(value)
  %953 = lshr i32 %946, 7
  %954 = and i32 %953, 32752
  %955 = call float @dx.op.legacyF16ToF32(i32 131, i32 %954)  ; LegacyF16ToF32(value)
  %956 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %957 = extractvalue %dx.types.CBufRet.f32 %956, 3
  %958 = fmul fast float %957, 1.000000e+03
  %959 = fmul fast float %280, %958
  %960 = call float @dx.op.unary.f32(i32 22, float %959)  ; Frc(value)
  %961 = fadd fast float %960, %270
  %962 = fmul fast float %281, %958
  %963 = call float @dx.op.unary.f32(i32 22, float %962)  ; Frc(value)
  %964 = fadd fast float %963, %272
  %965 = fmul fast float %930, %958
  %966 = call float @dx.op.unary.f32(i32 22, float %965)  ; Frc(value)
  %967 = fmul fast float %966, 0x401921FB60000000
  %968 = fadd fast float %967, %949
  %969 = call float @dx.op.unary.f32(i32 13, float %968)  ; Sin(value)
  %970 = call float @dx.op.unary.f32(i32 12, float %968)  ; Cos(value)
  %971 = fsub fast float -0.000000e+00, %969
  %972 = fadd fast float %923, -5.000000e-01
  %973 = fadd fast float %924, -5.000000e-01
  %974 = fmul fast float %941, %972
  %975 = fmul fast float %943, %973
  %976 = fadd fast float %974, 5.000000e-01
  %977 = fadd fast float %975, 5.000000e-01
  %978 = fmul fast float %952, %976
  %979 = fmul fast float %955, %977
  %980 = fmul fast float %970, %978
  %981 = call float @dx.op.tertiary.f32(i32 46, float %971, float %979, float %980)  ; FMad(a,b,c)
  %982 = fmul fast float %969, %978
  %983 = call float @dx.op.tertiary.f32(i32 46, float %970, float %979, float %982)  ; FMad(a,b,c)
  %984 = fadd fast float %961, %981
  %985 = fadd fast float %964, %983
  %986 = icmp ugt i32 %935, 1
  %987 = icmp ugt i32 %933, 33554431
  %988 = or i1 %987, %986
  br i1 %988, label %989, label %1014

; <label>:989                                     ; preds = %916
  %990 = add i32 %43, 244
  %991 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %990, i32 undef)  ; BufferLoad(srv,index,wot)
  %992 = extractvalue %dx.types.ResRet.i32 %991, 0
  %993 = lshr i32 %992, 16
  %994 = call float @dx.op.legacyF16ToF32(i32 131, i32 %993)  ; LegacyF16ToF32(value)
  %995 = fmul fast float %957, %994
  %996 = call float @dx.op.unary.f32(i32 22, float %995)  ; Frc(value)
  %997 = mul nuw nsw i32 %935, %936
  %998 = uitofp i32 %997 to float
  %999 = fmul fast float %996, %998
  %1000 = call float @dx.op.unary.f32(i32 27, float %999)  ; Round_ni(value)
  %1001 = fptoui float %1000 to i32
  %1002 = urem i32 %1001, %935
  %1003 = udiv i32 %1001, %936
  %1004 = call float @dx.op.unary.f32(i32 22, float %984)  ; Frc(value)
  %1005 = call float @dx.op.unary.f32(i32 22, float %985)  ; Frc(value)
  %1006 = uitofp i32 %1002 to float
  %1007 = uitofp i32 %1003 to float
  %1008 = fadd fast float %1004, %1006
  %1009 = fadd fast float %1005, %1007
  %1010 = uitofp i32 %935 to float
  %1011 = uitofp i32 %936 to float
  %1012 = fdiv fast float %1008, %1010
  %1013 = fdiv fast float %1009, %1011
  br label %1014

; <label>:1014                                    ; preds = %989, %916
  %1015 = phi float [ %1012, %989 ], [ %984, %916 ]
  %1016 = phi float [ %1013, %989 ], [ %985, %916 ]
  %1017 = and i32 %910, 16777216
  %1018 = icmp eq i32 %1017, 0
  br i1 %1018, label %1128, label %1019

; <label>:1019                                    ; preds = %1014
  %1020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1021 = extractvalue %dx.types.CBufRet.f32 %1020, 0
  %1022 = extractvalue %dx.types.CBufRet.f32 %1020, 1
  %1023 = extractvalue %dx.types.CBufRet.f32 %1020, 2
  %1024 = fadd fast float %1021, %141
  %1025 = fadd fast float %1022, %142
  %1026 = fadd fast float %1023, %143
  %1027 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1028 = extractvalue %dx.types.CBufRet.f32 %1027, 0
  %1029 = call float @dx.op.unary.f32(i32 7, float %1028)  ; Saturate(value)
  %1030 = icmp eq i32 %44, 65535
  br i1 %1030, label %1125, label %1031

; <label>:1031                                    ; preds = %1019
  %1032 = lshr i32 %44, 1
  %1033 = shl i32 %1032, 2
  %1034 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1033, i32 undef)  ; BufferLoad(srv,index,wot)
  %1035 = extractvalue %dx.types.ResRet.i32 %1034, 0
  %1036 = and i32 %44, 1
  %1037 = icmp ne i32 %1036, 0
  %1038 = lshr i32 %1035, 16
  %1039 = and i32 %1035, 65535
  %1040 = select i1 %1037, i32 %1038, i32 %1039
  %1041 = icmp eq i32 %1040, 65535
  br i1 %1041, label %1121, label %1042

; <label>:1042                                    ; preds = %1031
  %1043 = mul nuw nsw i32 %1040, 40
  %1044 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1043, i32 undef)  ; BufferLoad(srv,index,wot)
  %1045 = extractvalue %dx.types.ResRet.f32 %1044, 0
  %1046 = extractvalue %dx.types.ResRet.f32 %1044, 1
  %1047 = extractvalue %dx.types.ResRet.f32 %1044, 2
  %1048 = add nuw nsw i32 %1043, 12
  %1049 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1048, i32 undef)  ; BufferLoad(srv,index,wot)
  %1050 = extractvalue %dx.types.ResRet.f32 %1049, 0
  %1051 = extractvalue %dx.types.ResRet.f32 %1049, 1
  %1052 = extractvalue %dx.types.ResRet.f32 %1049, 2
  %1053 = add nuw nsw i32 %1043, 24
  %1054 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1053, i32 undef)  ; BufferLoad(srv,index,wot)
  %1055 = extractvalue %dx.types.ResRet.f32 %1054, 0
  %1056 = extractvalue %dx.types.ResRet.f32 %1054, 1
  %1057 = extractvalue %dx.types.ResRet.f32 %1054, 2
  %1058 = add nuw nsw i32 %1043, 36
  %1059 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %1058, i32 undef)  ; BufferLoad(srv,index,wot)
  %1060 = extractvalue %dx.types.ResRet.f32 %1059, 0
  %1061 = fsub fast float %1024, %1045
  %1062 = fsub fast float %1025, %1046
  %1063 = fsub fast float %1026, %1047
  %1064 = fmul fast float %1060, %1061
  %1065 = fmul fast float %1060, %1062
  %1066 = fmul fast float %1060, %1063
  %1067 = call float @dx.op.unary.f32(i32 27, float %1064)  ; Round_ni(value)
  %1068 = call float @dx.op.unary.f32(i32 27, float %1065)  ; Round_ni(value)
  %1069 = call float @dx.op.unary.f32(i32 27, float %1066)  ; Round_ni(value)
  %1070 = fadd fast float %1067, 5.000000e-01
  %1071 = fadd fast float %1068, 5.000000e-01
  %1072 = fadd fast float %1069, 5.000000e-01
  %1073 = fmul fast float %1070, %1050
  %1074 = fmul fast float %1071, %1051
  %1075 = fmul fast float %1072, %1052
  %1076 = shl i32 %44, 2
  %1077 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1078 = extractvalue %dx.types.ResRet.i32 %1077, 0
  %1079 = add i32 %1078, 0
  %1080 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1079, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1081 = call float @dx.op.unary.f32(i32 22, float %1073)  ; Frc(value)
  %1082 = call float @dx.op.unary.f32(i32 22, float %1074)  ; Frc(value)
  %1083 = call float @dx.op.unary.f32(i32 22, float %1075)  ; Frc(value)
  %1084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1080, %dx.types.Handle %40, float %1081, float %1082, float %1083, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1085 = extractvalue %dx.types.ResRet.f32 %1084, 0
  %1086 = extractvalue %dx.types.ResRet.f32 %1084, 1
  %1087 = extractvalue %dx.types.ResRet.f32 %1084, 2
  %1088 = fmul fast float %1085, 1.023000e+03
  %1089 = fmul fast float %1086, 1.023000e+03
  %1090 = fmul fast float %1087, 1.023000e+03
  %1091 = fadd fast float %1088, 5.000000e-01
  %1092 = fadd fast float %1089, 5.000000e-01
  %1093 = fadd fast float %1090, 5.000000e-01
  %1094 = call float @dx.op.unary.f32(i32 27, float %1091)  ; Round_ni(value)
  %1095 = call float @dx.op.unary.f32(i32 27, float %1092)  ; Round_ni(value)
  %1096 = call float @dx.op.unary.f32(i32 27, float %1093)  ; Round_ni(value)
  %1097 = fsub fast float %1064, %1067
  %1098 = fsub fast float %1065, %1068
  %1099 = fsub fast float %1066, %1069
  %1100 = fmul fast float %1097, 7.500000e-01
  %1101 = fmul fast float %1098, 7.500000e-01
  %1102 = fmul fast float %1099, 7.500000e-01
  %1103 = fadd fast float %1067, 1.250000e-01
  %1104 = fadd fast float %1103, %1100
  %1105 = fadd fast float %1104, %1094
  %1106 = fadd fast float %1068, 1.250000e-01
  %1107 = fadd fast float %1106, %1101
  %1108 = fadd fast float %1107, %1095
  %1109 = fadd fast float %1069, 1.250000e-01
  %1110 = fadd fast float %1109, %1102
  %1111 = fadd fast float %1110, %1096
  %1112 = fmul fast float %1105, %1055
  %1113 = fmul fast float %1108, %1056
  %1114 = fmul fast float %1111, %1057
  %1115 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %1076, i32 undef)  ; BufferLoad(srv,index,wot)
  %1116 = extractvalue %dx.types.ResRet.i32 %1115, 0
  %1117 = add i32 %1116, 0
  %1118 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %1117, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1118, %dx.types.Handle %38, float %1112, float %1113, float %1114, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %1120 = extractvalue %dx.types.ResRet.f32 %1119, 0
  br label %1121

; <label>:1121                                    ; preds = %1042, %1031
  %1122 = phi float [ %1120, %1042 ], [ -1.000000e+00, %1031 ]
  %1123 = fadd fast float %1122, %1029
  %1124 = call float @dx.op.unary.f32(i32 7, float %1123)  ; Saturate(value)
  br label %1125

; <label>:1125                                    ; preds = %1121, %1019
  %1126 = phi float [ %1124, %1121 ], [ %1029, %1019 ]
  %1127 = fmul fast float %1126, %422
  br label %1128

; <label>:1128                                    ; preds = %1125, %1014
  %1129 = phi float [ %1127, %1125 ], [ %422, %1014 ]
  %1130 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1131 = extractvalue %dx.types.ResRet.i32 %1130, 0
  %1132 = and i32 %1131, 256
  %1133 = icmp eq i32 %1132, 0
  br i1 %1133, label %1180, label %1134

; <label>:1134                                    ; preds = %1128
  %1135 = add i32 %43, 444
  %1136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1135, i32 undef)  ; BufferLoad(srv,index,wot)
  %1137 = extractvalue %dx.types.ResRet.i32 %1136, 0
  %1138 = add i32 %1137, 0
  %1139 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1138, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1140 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1139, %dx.types.Handle %75, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1141 = extractvalue %dx.types.ResRet.f32 %1140, 0
  %1142 = add i32 %43, 116
  %1143 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1142, i32 undef)  ; BufferLoad(srv,index,wot)
  %1144 = extractvalue %dx.types.ResRet.i32 %1143, 0
  %1145 = shl i32 %1144, 4
  %1146 = and i32 %1145, 32752
  %1147 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1146)  ; LegacyF16ToF32(value)
  %1148 = lshr i32 %1144, 7
  %1149 = and i32 %1148, 32752
  %1150 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1149)  ; LegacyF16ToF32(value)
  %1151 = fsub fast float 1.000000e+00, %1129
  %1152 = call float @dx.op.binary.f32(i32 35, float %1151, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %1153 = bitcast float %1129 to i32
  %1154 = sitofp i32 %1153 to float
  %1155 = fadd fast float %1154, 0xC1CFBF8940000000
  %1156 = fmul fast float %1150, %1155
  %1157 = fadd fast float %1156, 0x41CFBF8940000000
  %1158 = fptosi float %1157 to i32
  %1159 = bitcast i32 %1158 to float
  %1160 = bitcast float %1152 to i32
  %1161 = sitofp i32 %1160 to float
  %1162 = fadd fast float %1161, 0xC1CFBF8940000000
  %1163 = fmul fast float %1162, %1150
  %1164 = fadd fast float %1163, 0x41CFBF8940000000
  %1165 = fptosi float %1164 to i32
  %1166 = bitcast i32 %1165 to float
  %1167 = fmul fast float %1159, %1147
  %1168 = fmul fast float %1166, %1147
  %1169 = fsub fast float %1152, %1167
  %1170 = fadd fast float %1168, %1152
  %1171 = call float @dx.op.unary.f32(i32 7, float %1169)  ; Saturate(value)
  %1172 = call float @dx.op.unary.f32(i32 7, float %1170)  ; Saturate(value)
  %1173 = fsub fast float %1141, %1171
  %1174 = fsub fast float %1172, %1171
  %1175 = bitcast float %1174 to i32
  %1176 = sub nsw i32 2129859010, %1175
  %1177 = bitcast i32 %1176 to float
  %1178 = fmul fast float %1177, %1173
  %1179 = call float @dx.op.unary.f32(i32 7, float %1178)  ; Saturate(value)
  br label %1180

; <label>:1180                                    ; preds = %1134, %1128
  %1181 = phi float [ %1179, %1134 ], [ %1129, %1128 ]
  %1182 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1183 = extractvalue %dx.types.ResRet.i32 %1182, 0
  %1184 = and i32 %1183, 128
  %1185 = icmp eq i32 %1184, 0
  br i1 %1185, label %1202, label %1186

; <label>:1186                                    ; preds = %1180
  %1187 = add i32 %43, 428
  %1188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1187, i32 undef)  ; BufferLoad(srv,index,wot)
  %1189 = extractvalue %dx.types.ResRet.i32 %1188, 0
  %1190 = add i32 %1189, 0
  %1191 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1190, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1192 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1191, %dx.types.Handle %75, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1193 = extractvalue %dx.types.ResRet.f32 %1192, 0
  %1194 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1195 = extractvalue %dx.types.ResRet.i32 %1194, 0
  %1196 = and i32 %1195, 524288
  %1197 = icmp ne i32 %1196, 0
  %1198 = fcmp fast ogt float %1193, 0x3FE0101020000000
  %1199 = select i1 %1198, float 1.000000e+00, float 0.000000e+00
  %1200 = select i1 %1197, float %1199, float %1193
  %1201 = fmul fast float %1200, %1181
  br label %1202

; <label>:1202                                    ; preds = %1186, %1180
  %1203 = phi float [ %1201, %1186 ], [ %1181, %1180 ]
  %1204 = fcmp fast ult float %1203, 0x3F70101020000000
  br i1 %1204, label %1858, label %1205

; <label>:1205                                    ; preds = %1202
  %1206 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1207 = extractvalue %dx.types.ResRet.i32 %1206, 0
  %1208 = and i32 %1207, 16
  %1209 = icmp eq i32 %1208, 0
  br i1 %1209, label %1408, label %1210

; <label>:1210                                    ; preds = %1205
  %1211 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %931, i32 undef)  ; BufferLoad(srv,index,wot)
  %1212 = extractvalue %dx.types.ResRet.i32 %1211, 0
  %1213 = add i32 %43, 380
  %1214 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1213, i32 undef)  ; BufferLoad(srv,index,wot)
  %1215 = extractvalue %dx.types.ResRet.i32 %1214, 0
  %1216 = add i32 %1215, 0
  %1217 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1216, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1218 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1217, %dx.types.Handle %74, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1219 = extractvalue %dx.types.ResRet.f32 %1218, 0
  %1220 = extractvalue %dx.types.ResRet.f32 %1218, 1
  %1221 = extractvalue %dx.types.ResRet.f32 %1218, 2
  %1222 = extractvalue %dx.types.ResRet.f32 %1218, 3
  %1223 = and i32 %1212, 255
  %1224 = uitofp i32 %1223 to float
  %1225 = lshr i32 %1212, 8
  %1226 = and i32 %1225, 255
  %1227 = uitofp i32 %1226 to float
  %1228 = fmul fast float %1222, %1224
  %1229 = fadd fast float %1228, %1227
  %1230 = fmul fast float %1229, 0x3F70101000000000
  %1231 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1232 = extractvalue %dx.types.ResRet.i32 %1231, 0
  %1233 = and i32 %1232, 512
  %1234 = icmp eq i32 %1233, 0
  br i1 %1234, label %1243, label %1235

; <label>:1235                                    ; preds = %1210
  %1236 = add i32 %43, 460
  %1237 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1236, i32 undef)  ; BufferLoad(srv,index,wot)
  %1238 = extractvalue %dx.types.ResRet.i32 %1237, 0
  %1239 = add i32 %1238, 0
  %1240 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1239, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1241 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1240, %dx.types.Handle %75, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1242 = extractvalue %dx.types.ResRet.f32 %1241, 0
  br label %1243

; <label>:1243                                    ; preds = %1235, %1210
  %1244 = phi float [ %1242, %1235 ], [ 1.000000e+00, %1210 ]
  %1245 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1246 = extractvalue %dx.types.ResRet.i32 %1245, 0
  %1247 = and i32 %1246, 33554432
  %1248 = icmp eq i32 %1247, 0
  br i1 %1248, label %1355, label %1249

; <label>:1249                                    ; preds = %1243
  %1250 = add i32 %43, 240
  %1251 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1250, i32 undef)  ; BufferLoad(srv,index,wot)
  %1252 = extractvalue %dx.types.ResRet.i32 %1251, 0
  %1253 = and i32 %1252, 65535
  %1254 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1253)  ; LegacyF16ToF32(value)
  %1255 = lshr i32 %1252, 16
  %1256 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1255)  ; LegacyF16ToF32(value)
  %1257 = add i32 %43, 244
  %1258 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1257, i32 undef)  ; BufferLoad(srv,index,wot)
  %1259 = extractvalue %dx.types.ResRet.i32 %1258, 0
  %1260 = and i32 %1259, 65535
  %1261 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1260)  ; LegacyF16ToF32(value)
  %1262 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %252, i32 undef)  ; BufferLoad(srv,index,wot)
  %1263 = extractvalue %dx.types.ResRet.i32 %1262, 0
  %1264 = lshr i32 %1263, 24
  %1265 = uitofp i32 %1264 to float
  %1266 = fmul fast float %1265, 0x3F70101020000000
  %1267 = and i32 %1263, 255
  %1268 = uitofp i32 %1267 to float
  %1269 = fmul fast float %1268, 0x3F70101020000000
  %1270 = lshr i32 %1263, 8
  %1271 = and i32 %1270, 255
  %1272 = uitofp i32 %1271 to float
  %1273 = fmul fast float %1272, 0x3F70101020000000
  %1274 = lshr i32 %1263, 16
  %1275 = and i32 %1274, 255
  %1276 = uitofp i32 %1275 to float
  %1277 = fmul fast float %1276, 0x3F70101020000000
  %1278 = add i32 %43, 236
  %1279 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1278, i32 undef)  ; BufferLoad(srv,index,wot)
  %1280 = extractvalue %dx.types.ResRet.i32 %1279, 0
  %1281 = lshr i32 %1280, 24
  %1282 = uitofp i32 %1281 to float
  %1283 = fmul fast float %1282, 0x3F70101020000000
  %1284 = and i32 %1280, 255
  %1285 = uitofp i32 %1284 to float
  %1286 = fmul fast float %1285, 0x3F70101020000000
  %1287 = lshr i32 %1280, 8
  %1288 = and i32 %1287, 255
  %1289 = uitofp i32 %1288 to float
  %1290 = fmul fast float %1289, 0x3F70101020000000
  %1291 = lshr i32 %1280, 16
  %1292 = and i32 %1291, 255
  %1293 = uitofp i32 %1292 to float
  %1294 = fmul fast float %1293, 0x3F70101020000000
  %1295 = bitcast float %1219 to i32
  %1296 = ashr i32 %1295, 1
  %1297 = sub nsw i32 1597463174, %1296
  %1298 = bitcast i32 %1297 to float
  %1299 = fmul fast float %1219, 5.000000e-01
  %1300 = fmul fast float %1298, %1298
  %1301 = fmul fast float %1300, %1299
  %1302 = fsub fast float 1.500000e+00, %1301
  %1303 = fmul fast float %1298, %1219
  %1304 = fmul fast float %1303, %1302
  %1305 = bitcast float %1220 to i32
  %1306 = ashr i32 %1305, 1
  %1307 = sub nsw i32 1597463174, %1306
  %1308 = bitcast i32 %1307 to float
  %1309 = fmul fast float %1220, 5.000000e-01
  %1310 = fmul fast float %1308, %1308
  %1311 = fmul fast float %1310, %1309
  %1312 = fsub fast float 1.500000e+00, %1311
  %1313 = fmul fast float %1308, %1220
  %1314 = fmul fast float %1313, %1312
  %1315 = bitcast float %1221 to i32
  %1316 = ashr i32 %1315, 1
  %1317 = sub nsw i32 1597463174, %1316
  %1318 = bitcast i32 %1317 to float
  %1319 = fmul fast float %1221, 5.000000e-01
  %1320 = fmul fast float %1318, %1318
  %1321 = fmul fast float %1320, %1319
  %1322 = fsub fast float 1.500000e+00, %1321
  %1323 = fmul fast float %1318, %1221
  %1324 = fmul fast float %1323, %1322
  %1325 = fsub fast float %1304, %1286
  %1326 = fsub fast float %1314, %1290
  %1327 = fsub fast float %1324, %1294
  %1328 = fmul fast float %1325, %1254
  %1329 = fmul fast float %1326, %1256
  %1330 = fmul fast float %1327, %1261
  %1331 = fadd fast float %1328, %1269
  %1332 = fadd fast float %1329, %1273
  %1333 = fadd fast float %1330, %1277
  %1334 = call float @dx.op.unary.f32(i32 7, float %1331)  ; Saturate(value)
  %1335 = call float @dx.op.unary.f32(i32 7, float %1332)  ; Saturate(value)
  %1336 = call float @dx.op.unary.f32(i32 7, float %1333)  ; Saturate(value)
  %1337 = fmul fast float %1334, %1334
  %1338 = fmul fast float %1335, %1335
  %1339 = fmul fast float %1336, %1336
  %1340 = fsub fast float %1337, %1219
  %1341 = fsub fast float %1338, %1220
  %1342 = fsub fast float %1339, %1221
  %1343 = fmul fast float %1340, %1244
  %1344 = fmul fast float %1341, %1244
  %1345 = fmul fast float %1342, %1244
  %1346 = fadd fast float %1343, %1219
  %1347 = fadd fast float %1344, %1220
  %1348 = fadd fast float %1345, %1221
  %1349 = fadd fast float %1266, %1230
  %1350 = fsub fast float %1349, %1283
  %1351 = call float @dx.op.unary.f32(i32 7, float %1350)  ; Saturate(value)
  %1352 = fsub fast float %1351, %1230
  %1353 = fmul fast float %1352, %1244
  %1354 = fadd fast float %1353, %1230
  br label %1408

; <label>:1355                                    ; preds = %1243
  %1356 = and i32 %1246, 134217728
  %1357 = icmp eq i32 %1356, 0
  br i1 %1357, label %1392, label %1358

; <label>:1358                                    ; preds = %1355
  %1359 = call float @dx.op.unary.f32(i32 24, float %257)  ; Sqrt(value)
  %1360 = call float @dx.op.unary.f32(i32 24, float %261)  ; Sqrt(value)
  %1361 = call float @dx.op.unary.f32(i32 24, float %265)  ; Sqrt(value)
  %1362 = fadd fast float %1359, -5.000000e-01
  %1363 = fadd fast float %1360, -5.000000e-01
  %1364 = fadd fast float %1361, -5.000000e-01
  %1365 = fmul fast float %1362, %1244
  %1366 = fmul fast float %1363, %1244
  %1367 = fmul fast float %1364, %1244
  %1368 = fadd fast float %1365, 5.000000e-01
  %1369 = fadd fast float %1366, 5.000000e-01
  %1370 = fadd fast float %1367, 5.000000e-01
  %1371 = call float @dx.op.unary.f32(i32 24, float %1219)  ; Sqrt(value)
  %1372 = call float @dx.op.unary.f32(i32 24, float %1220)  ; Sqrt(value)
  %1373 = call float @dx.op.unary.f32(i32 24, float %1221)  ; Sqrt(value)
  %1374 = fmul fast float %1368, 2.000000e+00
  %1375 = fsub fast float 1.000000e+00, %1374
  %1376 = fmul fast float %1375, %1371
  %1377 = fadd fast float %1376, %1374
  %1378 = fmul fast float %1377, %1371
  %1379 = fmul fast float %1369, 2.000000e+00
  %1380 = fsub fast float 1.000000e+00, %1379
  %1381 = fmul fast float %1380, %1372
  %1382 = fadd fast float %1381, %1379
  %1383 = fmul fast float %1382, %1372
  %1384 = fmul fast float %1370, 2.000000e+00
  %1385 = fsub fast float 1.000000e+00, %1384
  %1386 = fmul fast float %1385, %1373
  %1387 = fadd fast float %1386, %1384
  %1388 = fmul fast float %1387, %1373
  %1389 = fmul fast float %1378, %1378
  %1390 = fmul fast float %1383, %1383
  %1391 = fmul fast float %1388, %1388
  br label %1408

; <label>:1392                                    ; preds = %1355
  %1393 = fmul fast float %257, %257
  %1394 = fmul fast float %261, %261
  %1395 = fmul fast float %265, %265
  %1396 = fadd fast float %1393, -1.000000e+00
  %1397 = fadd fast float %1394, -1.000000e+00
  %1398 = fadd fast float %1395, -1.000000e+00
  %1399 = fmul fast float %1244, %1396
  %1400 = fmul fast float %1244, %1397
  %1401 = fmul fast float %1244, %1398
  %1402 = fadd fast float %1399, 1.000000e+00
  %1403 = fadd fast float %1400, 1.000000e+00
  %1404 = fadd fast float %1401, 1.000000e+00
  %1405 = fmul fast float %1402, %1219
  %1406 = fmul fast float %1403, %1220
  %1407 = fmul fast float %1404, %1221
  br label %1408

; <label>:1408                                    ; preds = %1392, %1358, %1249, %1205
  %1409 = phi float [ %1354, %1249 ], [ %1230, %1358 ], [ %1230, %1392 ], [ 0x3FA23C0BE0000000, %1205 ]
  %1410 = phi float [ %1346, %1249 ], [ %1389, %1358 ], [ %1405, %1392 ], [ 1.000000e+00, %1205 ]
  %1411 = phi float [ %1347, %1249 ], [ %1390, %1358 ], [ %1406, %1392 ], [ 1.000000e+00, %1205 ]
  %1412 = phi float [ %1348, %1249 ], [ %1391, %1358 ], [ %1407, %1392 ], [ 1.000000e+00, %1205 ]
  %1413 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %1414 = extractvalue %dx.types.CBufRet.i32 %1413, 1
  %1415 = and i32 %1414, 1
  %1416 = icmp ne i32 %1415, 0
  %1417 = add i32 %43, 356
  %1418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1417, i32 undef)  ; BufferLoad(srv,index,wot)
  %1419 = extractvalue %dx.types.ResRet.i32 %1418, 0
  %1420 = and i32 %1419, 32
  %1421 = icmp ne i32 %1420, 0
  %1422 = and i1 %1416, %1421
  %1423 = select i1 %1422, float 1.000000e+00, float %1410
  %1424 = select i1 %1422, float 0x3FD3333340000000, float %1411
  %1425 = select i1 %1422, float 0x3FD3333340000000, float %1412
  %1426 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1427 = extractvalue %dx.types.ResRet.i32 %1426, 0
  %1428 = and i32 %1427, 32
  %1429 = icmp eq i32 %1428, 0
  br i1 %1429, label %1502, label %1430

; <label>:1430                                    ; preds = %1408
  %1431 = add i32 %43, 108
  %1432 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1431, i32 undef)  ; BufferLoad(srv,index,wot)
  %1433 = extractvalue %dx.types.ResRet.i32 %1432, 0
  %1434 = add i32 %43, 396
  %1435 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1434, i32 undef)  ; BufferLoad(srv,index,wot)
  %1436 = extractvalue %dx.types.ResRet.i32 %1435, 0
  %1437 = add i32 %1436, 0
  %1438 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1437, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1439 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1438, %dx.types.Handle %74, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1440 = extractvalue %dx.types.ResRet.f32 %1439, 0
  %1441 = extractvalue %dx.types.ResRet.f32 %1439, 1
  %1442 = extractvalue %dx.types.ResRet.f32 %1439, 2
  %1443 = extractvalue %dx.types.ResRet.f32 %1439, 3
  %1444 = and i32 %1433, 255
  %1445 = uitofp i32 %1444 to float
  %1446 = lshr i32 %1433, 8
  %1447 = and i32 %1446, 255
  %1448 = uitofp i32 %1447 to float
  %1449 = lshr i32 %1433, 16
  %1450 = and i32 %1449, 255
  %1451 = uitofp i32 %1450 to float
  %1452 = fmul fast float %1451, 0x3F70101000000000
  %1453 = fmul fast float %1440, %1445
  %1454 = fadd fast float %1453, %1448
  %1455 = fmul fast float %1454, 0x3F70101000000000
  %1456 = fadd fast float %1441, -5.000000e-01
  %1457 = fadd fast float %1443, -5.000000e-01
  %1458 = fmul fast float %1456, %1452
  %1459 = fmul fast float %1457, %1452
  %1460 = fadd fast float %1458, 5.000000e-01
  %1461 = fadd fast float %1459, 5.000000e-01
  %1462 = fmul fast float %1460, 2.000000e+00
  %1463 = fadd fast float %1462, -1.000000e+00
  %1464 = fmul fast float %1461, 2.000000e+00
  %1465 = fadd fast float %1464, -1.000000e+00
  %1466 = fadd fast float %1463, %1465
  %1467 = fmul fast float %1466, 5.000000e-01
  %1468 = fsub fast float %1463, %1465
  %1469 = fmul fast float %1468, 5.000000e-01
  %1470 = call float @dx.op.unary.f32(i32 6, float %1467)  ; FAbs(value)
  %1471 = fsub fast float 1.000000e+00, %1470
  %1472 = call float @dx.op.unary.f32(i32 6, float %1469)  ; FAbs(value)
  %1473 = fsub fast float %1471, %1472
  %1474 = call float @dx.op.dot3.f32(i32 55, float %1467, float %1469, float %1473, float %1467, float %1469, float %1473)  ; Dot3(ax,ay,az,bx,by,bz)
  %1475 = call float @dx.op.unary.f32(i32 25, float %1474)  ; Rsqrt(value)
  %1476 = fmul fast float %1467, %1475
  %1477 = fmul fast float %1469, %1475
  %1478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1479 = extractvalue %dx.types.ResRet.i32 %1478, 0
  %1480 = and i32 %1479, 67108864
  %1481 = icmp eq i32 %1480, 0
  br i1 %1481, label %1498, label %1482

; <label>:1482                                    ; preds = %1430
  %1483 = add i32 %43, 296
  %1484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1483, i32 undef)  ; BufferLoad(srv,index,wot)
  %1485 = extractvalue %dx.types.ResRet.i32 %1484, 0
  %1486 = and i32 %1485, 65535
  %1487 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1486)  ; LegacyF16ToF32(value)
  %1488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %925, i32 undef)  ; BufferLoad(srv,index,wot)
  %1489 = extractvalue %dx.types.ResRet.i32 %1488, 0
  %1490 = and i32 %1489, 65535
  %1491 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1490)  ; LegacyF16ToF32(value)
  %1492 = lshr i32 %1485, 16
  %1493 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1492)  ; LegacyF16ToF32(value)
  %1494 = fsub fast float %1455, %1493
  %1495 = fmul fast float %1494, %1487
  %1496 = fadd fast float %1495, %1491
  %1497 = call float @dx.op.unary.f32(i32 7, float %1496)  ; Saturate(value)
  br label %1498

; <label>:1498                                    ; preds = %1482, %1430
  %1499 = phi float [ %1497, %1482 ], [ %1455, %1430 ]
  %1500 = call float @dx.op.dot2.f32(i32 54, float %1476, float %1477, float %919, float %920)  ; Dot2(ax,ay,bx,by)
  %1501 = call float @dx.op.dot2.f32(i32 54, float %1476, float %1477, float %921, float %922)  ; Dot2(ax,ay,bx,by)
  br label %1502

; <label>:1502                                    ; preds = %1498, %1408
  %1503 = phi float [ %1499, %1498 ], [ 0x3FD6666660000000, %1408 ]
  %1504 = phi float [ %1500, %1498 ], [ 0.000000e+00, %1408 ]
  %1505 = phi float [ %1501, %1498 ], [ 0.000000e+00, %1408 ]
  %1506 = phi float [ %1442, %1498 ], [ 1.000000e+00, %1408 ]
  %1507 = add i32 %43, 176
  %1508 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1509 = extractvalue %dx.types.ResRet.i32 %1508, 0
  %1510 = lshr i32 %1509, 22
  %1511 = shl nuw nsw i32 %1510, 5
  %1512 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1511)  ; LegacyF16ToF32(value)
  %1513 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1514 = extractvalue %dx.types.ResRet.i32 %1513, 0
  %1515 = and i32 %1514, 64
  %1516 = icmp eq i32 %1515, 0
  br i1 %1516, label %1550, label %1517

; <label>:1517                                    ; preds = %1502
  %1518 = add i32 %43, 412
  %1519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1518, i32 undef)  ; BufferLoad(srv,index,wot)
  %1520 = extractvalue %dx.types.ResRet.i32 %1519, 0
  %1521 = add i32 %1520, 0
  %1522 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1521, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1523 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1524 = extractvalue %dx.types.ResRet.i32 %1523, 0
  %1525 = and i32 %1524, 131072
  %1526 = icmp eq i32 %1525, 0
  %1527 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1522, %dx.types.Handle %74, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1528 = extractvalue %dx.types.ResRet.f32 %1527, 0
  %1529 = extractvalue %dx.types.ResRet.f32 %1527, 1
  %1530 = extractvalue %dx.types.ResRet.f32 %1527, 2
  %1531 = fmul fast float %1528, %245
  %1532 = fmul fast float %1529, %248
  %1533 = fmul fast float %1530, %251
  br i1 %1526, label %1540, label %1534

; <label>:1534                                    ; preds = %1517
  %1535 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %1536 = extractvalue %dx.types.CBufRet.f32 %1535, 0
  %1537 = fmul fast float %1536, %1531
  %1538 = fmul fast float %1536, %1532
  %1539 = fmul fast float %1536, %1533
  br label %1540

; <label>:1540                                    ; preds = %1534, %1517
  %1541 = phi float [ %1537, %1534 ], [ %1531, %1517 ]
  %1542 = phi float [ %1538, %1534 ], [ %1532, %1517 ]
  %1543 = phi float [ %1539, %1534 ], [ %1533, %1517 ]
  %1544 = fmul fast float %1541, %1512
  %1545 = select i1 %183, float %1544, float %1541
  %1546 = call float @dx.op.dot3.f32(i32 55, float %1545, float %1542, float %1543, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1547 = select i1 %183, float 0.000000e+00, float %1541
  %1548 = select i1 %183, float %1546, float %1542
  %1549 = select i1 %183, float 0.000000e+00, float %1543
  br label %1550

; <label>:1550                                    ; preds = %1540, %1502
  %1551 = phi float [ %1547, %1540 ], [ 0.000000e+00, %1502 ]
  %1552 = phi float [ %1548, %1540 ], [ 0.000000e+00, %1502 ]
  %1553 = phi float [ %1549, %1540 ], [ 0.000000e+00, %1502 ]
  %1554 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1555 = extractvalue %dx.types.ResRet.i32 %1554, 0
  %1556 = and i32 %1555, 1024
  %1557 = icmp eq i32 %1556, 0
  br i1 %1557, label %1588, label %1558

; <label>:1558                                    ; preds = %1550
  %1559 = add i32 %43, 168
  %1560 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1559, i32 undef)  ; BufferLoad(srv,index,wot)
  %1561 = extractvalue %dx.types.ResRet.i32 %1560, 0
  %1562 = and i32 %1561, 255
  %1563 = uitofp i32 %1562 to float
  %1564 = fmul fast float %1563, 0x3F70101020000000
  %1565 = lshr i32 %1561, 8
  %1566 = and i32 %1565, 255
  %1567 = uitofp i32 %1566 to float
  %1568 = fmul fast float %1567, 0x3F70101020000000
  %1569 = lshr i32 %1561, 16
  %1570 = and i32 %1569, 255
  %1571 = uitofp i32 %1570 to float
  %1572 = fmul fast float %1571, 0x3F70101020000000
  %1573 = fmul fast float %1564, %1564
  %1574 = fmul fast float %1568, %1568
  %1575 = fmul fast float %1572, %1572
  %1576 = add i32 %43, 476
  %1577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1576, i32 undef)  ; BufferLoad(srv,index,wot)
  %1578 = extractvalue %dx.types.ResRet.i32 %1577, 0
  %1579 = add i32 %1578, 0
  %1580 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1579, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1581 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1580, %dx.types.Handle %75, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1582 = extractvalue %dx.types.ResRet.f32 %1581, 0
  %1583 = extractvalue %dx.types.ResRet.f32 %1581, 1
  %1584 = extractvalue %dx.types.ResRet.f32 %1581, 2
  %1585 = fmul fast float %1573, %1582
  %1586 = fmul fast float %1574, %1583
  %1587 = fmul fast float %1575, %1584
  br label %1588

; <label>:1588                                    ; preds = %1558, %1550
  %1589 = phi float [ %1585, %1558 ], [ 0.000000e+00, %1550 ]
  %1590 = phi float [ %1586, %1558 ], [ 0.000000e+00, %1550 ]
  %1591 = phi float [ %1587, %1558 ], [ 0.000000e+00, %1550 ]
  %1592 = fcmp fast ogt float %1589, 0.000000e+00
  %1593 = fcmp fast ogt float %1590, 0.000000e+00
  %1594 = fcmp fast ogt float %1591, 0.000000e+00
  %1595 = call float @dx.op.unary.f32(i32 23, float %1589)  ; Log(value)
  %1596 = call float @dx.op.unary.f32(i32 23, float %1590)  ; Log(value)
  %1597 = call float @dx.op.unary.f32(i32 23, float %1591)  ; Log(value)
  %1598 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1599 = extractvalue %dx.types.ResRet.i32 %1598, 0
  %1600 = lshr i32 %1599, 7
  %1601 = and i32 %1600, 32752
  %1602 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1601)  ; LegacyF16ToF32(value)
  %1603 = fmul fast float %1595, 0xBFE62E4300000000
  %1604 = fmul fast float %1603, %1602
  %1605 = fmul fast float %1596, 0xBFE62E4300000000
  %1606 = fmul fast float %1605, %1602
  %1607 = fmul fast float %1597, 0xBFE62E4300000000
  %1608 = fmul fast float %1607, %1602
  %1609 = select i1 %1592, float %1604, float 1.270000e+02
  %1610 = select i1 %1593, float %1606, float 1.270000e+02
  %1611 = select i1 %1594, float %1608, float 1.270000e+02
  %1612 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1613 = extractvalue %dx.types.ResRet.i32 %1612, 0
  %1614 = and i32 %1613, 10240
  %1615 = icmp eq i32 %1614, 0
  br i1 %1615, label %1636, label %1616

; <label>:1616                                    ; preds = %1588
  %1617 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1618 = extractvalue %dx.types.ResRet.i32 %1617, 0
  %1619 = and i32 %1618, 2048
  %1620 = icmp eq i32 %1619, 0
  br i1 %1620, label %1636, label %1621

; <label>:1621                                    ; preds = %1616
  %1622 = add i32 %43, 492
  %1623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1622, i32 undef)  ; BufferLoad(srv,index,wot)
  %1624 = extractvalue %dx.types.ResRet.i32 %1623, 0
  %1625 = add i32 %1624, 0
  %1626 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %1625, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %1627 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %1626, %dx.types.Handle %75, float %1015, float %1016, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %1628 = extractvalue %dx.types.ResRet.f32 %1627, 3
  %1629 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1507, i32 undef)  ; BufferLoad(srv,index,wot)
  %1630 = extractvalue %dx.types.ResRet.i32 %1629, 0
  %1631 = shl i32 %1630, 4
  %1632 = and i32 %1631, 32752
  %1633 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1632)  ; LegacyF16ToF32(value)
  %1634 = fmul fast float %1633, %1628
  %1635 = call float @dx.op.binary.f32(i32 35, float %1634, float 0x3F70101020000000)  ; FMax(a,b)
  br label %1636

; <label>:1636                                    ; preds = %1621, %1616, %1588
  %1637 = phi float [ %1635, %1621 ], [ 0x3F70101020000000, %1616 ], [ 0x3F70101020000000, %1588 ]
  %1638 = add i32 %43, 112
  %1639 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1638, i32 undef)  ; BufferLoad(srv,index,wot)
  %1640 = extractvalue %dx.types.ResRet.i32 %1639, 0
  %1641 = and i32 %1640, 255
  %1642 = uitofp i32 %1641 to float
  %1643 = lshr i32 %1640, 8
  %1644 = and i32 %1643, 255
  %1645 = uitofp i32 %1644 to float
  %1646 = call float @dx.op.dot3.f32(i32 55, float %1423, float %1424, float %1425, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %1647 = fmul fast float %1645, %1646
  %1648 = fadd fast float %1647, %1642
  %1649 = fmul fast float %1648, 0x3F70101020000000
  %1650 = call float @dx.op.unary.f32(i32 7, float %1649)  ; Saturate(value)
  br i1 %907, label %1651, label %1686

; <label>:1651                                    ; preds = %1636
  %1652 = fmul fast float %1637, 2.000000e+00
  %1653 = fcmp fast olt float %1609, 1.270000e+02
  %1654 = fcmp fast olt float %1610, 1.270000e+02
  %1655 = fcmp fast olt float %1611, 1.270000e+02
  %1656 = fmul fast float %1609, 0xBFF7154760000000
  %1657 = fmul fast float %1656, %1652
  %1658 = fmul fast float %1610, 0xBFF7154760000000
  %1659 = fmul fast float %1658, %1652
  %1660 = fmul fast float %1611, 0xBFF7154760000000
  %1661 = fmul fast float %1660, %1652
  %1662 = call float @dx.op.unary.f32(i32 21, float %1657)  ; Exp(value)
  %1663 = call float @dx.op.unary.f32(i32 21, float %1659)  ; Exp(value)
  %1664 = call float @dx.op.unary.f32(i32 21, float %1661)  ; Exp(value)
  %1665 = call float @dx.op.unary.f32(i32 7, float %1662)  ; Saturate(value)
  %1666 = call float @dx.op.unary.f32(i32 7, float %1663)  ; Saturate(value)
  %1667 = call float @dx.op.unary.f32(i32 7, float %1664)  ; Saturate(value)
  %1668 = fadd fast float %1665, -1.000000e+00
  %1669 = select i1 %1653, float %1668, float -1.000000e+00
  %1670 = fadd fast float %1666, -1.000000e+00
  %1671 = select i1 %1654, float %1670, float -1.000000e+00
  %1672 = fadd fast float %1667, -1.000000e+00
  %1673 = select i1 %1655, float %1672, float -1.000000e+00
  %1674 = fmul fast float %1669, %1203
  %1675 = fmul fast float %1671, %1203
  %1676 = fmul fast float %1673, %1203
  %1677 = fadd fast float %1674, 1.000000e+00
  %1678 = fadd fast float %1675, 1.000000e+00
  %1679 = fadd fast float %1676, 1.000000e+00
  %1680 = fmul fast float %1677, %895
  %1681 = fmul fast float %1678, %896
  %1682 = fmul fast float %1679, %897
  %1683 = fmul fast float %1677, %898
  %1684 = fmul fast float %1678, %899
  %1685 = fmul fast float %1679, %900
  br label %1686

; <label>:1686                                    ; preds = %1651, %1636
  %1687 = phi float [ %1680, %1651 ], [ %895, %1636 ]
  %1688 = phi float [ %1681, %1651 ], [ %896, %1636 ]
  %1689 = phi float [ %1682, %1651 ], [ %897, %1636 ]
  %1690 = phi float [ %1683, %1651 ], [ %898, %1636 ]
  %1691 = phi float [ %1684, %1651 ], [ %899, %1636 ]
  %1692 = phi float [ %1685, %1651 ], [ %900, %1636 ]
  %1693 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %908, i32 undef)  ; BufferLoad(srv,index,wot)
  %1694 = extractvalue %dx.types.ResRet.i32 %1693, 0
  %1695 = and i32 %1694, 3
  %1696 = icmp eq i32 %1695, 3
  br i1 %1696, label %1775, label %1697

; <label>:1697                                    ; preds = %1686
  %1698 = and i32 %1694, 16
  %1699 = icmp ne i32 %1698, 0
  %1700 = select i1 %1699, float %1203, float 0.000000e+00
  %1701 = icmp eq i32 %1695, 0
  br i1 %1701, label %1702, label %1730

; <label>:1702                                    ; preds = %1697
  %1703 = and i32 %1694, 64
  %1704 = icmp ne i32 %1703, 0
  %1705 = select i1 %1704, float %1203, float 0.000000e+00
  %1706 = fsub fast float %1423, %1687
  %1707 = fsub fast float %1424, %1688
  %1708 = fsub fast float %1425, %1689
  %1709 = fmul fast float %1700, %1706
  %1710 = fmul fast float %1700, %1707
  %1711 = fmul fast float %1700, %1708
  %1712 = fadd fast float %1709, %1687
  %1713 = fadd fast float %1710, %1688
  %1714 = fadd fast float %1711, %1689
  %1715 = fsub fast float %1409, %901
  %1716 = fmul fast float %1700, %1715
  %1717 = fadd fast float %1716, %901
  %1718 = fsub fast float %1551, %1690
  %1719 = fsub fast float %1552, %1691
  %1720 = fsub fast float %1553, %1692
  %1721 = fmul fast float %1705, %1718
  %1722 = fmul fast float %1705, %1719
  %1723 = fmul fast float %1705, %1720
  %1724 = fadd fast float %1721, %1690
  %1725 = fadd fast float %1722, %1691
  %1726 = fadd fast float %1723, %1692
  %1727 = fsub fast float %1650, %905
  %1728 = fmul fast float %1700, %1727
  %1729 = fadd fast float %1728, %905
  br label %1775

; <label>:1730                                    ; preds = %1697
  %1731 = icmp eq i32 %1695, 1
  br i1 %1731, label %1732, label %1745

; <label>:1732                                    ; preds = %1730
  %1733 = fadd fast float %1423, -1.000000e+00
  %1734 = fadd fast float %1424, -1.000000e+00
  %1735 = fadd fast float %1425, -1.000000e+00
  %1736 = fmul fast float %1700, %1733
  %1737 = fmul fast float %1700, %1734
  %1738 = fmul fast float %1700, %1735
  %1739 = fadd fast float %1736, 1.000000e+00
  %1740 = fadd fast float %1737, 1.000000e+00
  %1741 = fadd fast float %1738, 1.000000e+00
  %1742 = fmul fast float %1739, %1687
  %1743 = fmul fast float %1740, %1688
  %1744 = fmul fast float %1741, %1689
  br label %1775

; <label>:1745                                    ; preds = %1730
  %1746 = icmp eq i32 %1695, 2
  br i1 %1746, label %1747, label %1775

; <label>:1747                                    ; preds = %1745
  %1748 = call float @dx.op.unary.f32(i32 24, float %1423)  ; Sqrt(value)
  %1749 = call float @dx.op.unary.f32(i32 24, float %1424)  ; Sqrt(value)
  %1750 = call float @dx.op.unary.f32(i32 24, float %1425)  ; Sqrt(value)
  %1751 = fadd fast float %1748, -5.000000e-01
  %1752 = fadd fast float %1749, -5.000000e-01
  %1753 = fadd fast float %1750, -5.000000e-01
  %1754 = fmul fast float %1751, %1700
  %1755 = fmul fast float %1752, %1700
  %1756 = fmul fast float %1753, %1700
  %1757 = fadd fast float %1754, 5.000000e-01
  %1758 = fadd fast float %1755, 5.000000e-01
  %1759 = fadd fast float %1756, 5.000000e-01
  %1760 = fmul fast float %1757, 2.000000e+00
  %1761 = fsub fast float 1.000000e+00, %1760
  %1762 = fmul fast float %1761, %1687
  %1763 = fadd fast float %1762, %1760
  %1764 = fmul fast float %1763, %1687
  %1765 = fmul fast float %1758, 2.000000e+00
  %1766 = fsub fast float 1.000000e+00, %1765
  %1767 = fmul fast float %1766, %1688
  %1768 = fadd fast float %1767, %1765
  %1769 = fmul fast float %1768, %1688
  %1770 = fmul fast float %1759, 2.000000e+00
  %1771 = fsub fast float 1.000000e+00, %1770
  %1772 = fmul fast float %1771, %1689
  %1773 = fadd fast float %1772, %1770
  %1774 = fmul fast float %1773, %1689
  br label %1775

; <label>:1775                                    ; preds = %1747, %1745, %1732, %1702, %1686
  %1776 = phi float [ %1687, %1686 ], [ %1764, %1747 ], [ %1687, %1745 ], [ %1742, %1732 ], [ %1712, %1702 ]
  %1777 = phi float [ %1688, %1686 ], [ %1769, %1747 ], [ %1688, %1745 ], [ %1743, %1732 ], [ %1713, %1702 ]
  %1778 = phi float [ %1689, %1686 ], [ %1774, %1747 ], [ %1689, %1745 ], [ %1744, %1732 ], [ %1714, %1702 ]
  %1779 = phi float [ %1690, %1686 ], [ %1690, %1747 ], [ %1690, %1745 ], [ %1690, %1732 ], [ %1724, %1702 ]
  %1780 = phi float [ %1691, %1686 ], [ %1691, %1747 ], [ %1691, %1745 ], [ %1691, %1732 ], [ %1725, %1702 ]
  %1781 = phi float [ %1692, %1686 ], [ %1692, %1747 ], [ %1692, %1745 ], [ %1692, %1732 ], [ %1726, %1702 ]
  %1782 = phi float [ %901, %1686 ], [ %901, %1747 ], [ %901, %1745 ], [ %901, %1732 ], [ %1717, %1702 ]
  %1783 = phi float [ %905, %1686 ], [ %905, %1747 ], [ %905, %1745 ], [ %905, %1732 ], [ %1729, %1702 ]
  %1784 = and i32 %1694, 12
  %1785 = icmp eq i32 %1784, 12
  br i1 %1785, label %1858, label %1786

; <label>:1786                                    ; preds = %1775
  %1787 = and i32 %1694, 2097184
  %1788 = icmp eq i32 %1787, 2097184
  %1789 = select i1 %1788, float %1203, float 0.000000e+00
  %1790 = and i32 %1694, 4194336
  %1791 = icmp eq i32 %1790, 4194336
  %1792 = select i1 %1791, float %1203, float 0.000000e+00
  %1793 = and i32 %1694, 8388640
  %1794 = icmp eq i32 %1793, 8388640
  %1795 = select i1 %1794, float %1203, float 0.000000e+00
  %1796 = icmp eq i32 %1784, 0
  br i1 %1796, label %1797, label %1810

; <label>:1797                                    ; preds = %1786
  %1798 = fsub fast float %1504, %893
  %1799 = fsub fast float %1505, %894
  %1800 = fmul fast float %1789, %1798
  %1801 = fmul fast float %1789, %1799
  %1802 = fadd fast float %1800, %893
  %1803 = fadd fast float %1801, %894
  %1804 = fsub fast float %1506, %904
  %1805 = fmul fast float %1792, %1804
  %1806 = fadd fast float %1805, %904
  %1807 = fsub fast float %1503, %903
  %1808 = fmul fast float %1795, %1807
  %1809 = fadd fast float %1808, %903
  br label %1858

; <label>:1810                                    ; preds = %1786
  %1811 = icmp eq i32 %1784, 4
  br i1 %1811, label %1812, label %1844

; <label>:1812                                    ; preds = %1810
  %1813 = fmul fast float %1789, %1504
  %1814 = fmul fast float %1789, %1505
  %1815 = fadd fast float %1813, %893
  %1816 = fadd fast float %1814, %894
  %1817 = call float @dx.op.binary.f32(i32 36, float %904, float %1506)  ; FMin(a,b)
  %1818 = fsub fast float %1817, %904
  %1819 = fmul fast float %1818, %1792
  %1820 = fadd fast float %1819, %904
  %1821 = fadd fast float %1503, %903
  %1822 = fmul fast float %1821, 0x3FF337FAE0000000
  %1823 = fmul fast float %903, %903
  %1824 = fmul fast float %1503, %1503
  %1825 = fadd fast float %1824, %1823
  %1826 = fmul fast float %1825, 0x3FE5152B00000000
  %1827 = fmul fast float %903, 0xBFCC1F85E0000000
  %1828 = fmul fast float %1827, %1503
  %1829 = fadd fast float %1828, 0xBFE1363700000000
  %1830 = fadd fast float %1829, %1822
  %1831 = fsub fast float %1830, %1826
  %1832 = fmul fast float %1821, 0x3FBA6F0D00000000
  %1833 = fmul fast float %1825, 0x3FD0432880000000
  %1834 = fmul fast float %903, 0xBFEF110800000000
  %1835 = fmul fast float %1834, %1503
  %1836 = fadd fast float %1835, 1.000000e+00
  %1837 = fsub fast float %1836, %1832
  %1838 = fadd fast float %1837, %1833
  %1839 = fdiv fast float %1831, %1838
  %1840 = call float @dx.op.unary.f32(i32 7, float %1839)  ; Saturate(value)
  %1841 = fsub fast float %1840, %903
  %1842 = fmul fast float %1841, %1795
  %1843 = fadd fast float %1842, %903
  br label %1858

; <label>:1844                                    ; preds = %1810
  %1845 = icmp eq i32 %1784, 8
  br i1 %1845, label %1846, label %1858

; <label>:1846                                    ; preds = %1844
  %1847 = fmul fast float %1789, %1504
  %1848 = fmul fast float %1789, %1505
  %1849 = fadd fast float %1847, %893
  %1850 = fadd fast float %1848, %894
  %1851 = call float @dx.op.binary.f32(i32 36, float %904, float %1506)  ; FMin(a,b)
  %1852 = fsub fast float %1851, %904
  %1853 = fmul fast float %1852, %1792
  %1854 = fadd fast float %1853, %904
  %1855 = fsub fast float %1503, %903
  %1856 = fmul fast float %1795, %1855
  %1857 = fadd fast float %1856, %903
  br label %1858

; <label>:1858                                    ; preds = %1846, %1844, %1812, %1797, %1775, %1202, %906, %892
  %1859 = phi float [ %893, %1775 ], [ %893, %1202 ], [ %893, %892 ], [ %1849, %1846 ], [ %893, %1844 ], [ %1815, %1812 ], [ %1802, %1797 ], [ %893, %906 ]
  %1860 = phi float [ %894, %1775 ], [ %894, %1202 ], [ %894, %892 ], [ %1850, %1846 ], [ %894, %1844 ], [ %1816, %1812 ], [ %1803, %1797 ], [ %894, %906 ]
  %1861 = phi float [ %1776, %1775 ], [ %895, %1202 ], [ %895, %892 ], [ %1776, %1846 ], [ %1776, %1844 ], [ %1776, %1812 ], [ %1776, %1797 ], [ %895, %906 ]
  %1862 = phi float [ %1777, %1775 ], [ %896, %1202 ], [ %896, %892 ], [ %1777, %1846 ], [ %1777, %1844 ], [ %1777, %1812 ], [ %1777, %1797 ], [ %896, %906 ]
  %1863 = phi float [ %1778, %1775 ], [ %897, %1202 ], [ %897, %892 ], [ %1778, %1846 ], [ %1778, %1844 ], [ %1778, %1812 ], [ %1778, %1797 ], [ %897, %906 ]
  %1864 = phi float [ %1779, %1775 ], [ %898, %1202 ], [ %898, %892 ], [ %1779, %1846 ], [ %1779, %1844 ], [ %1779, %1812 ], [ %1779, %1797 ], [ %898, %906 ]
  %1865 = phi float [ %1780, %1775 ], [ %899, %1202 ], [ %899, %892 ], [ %1780, %1846 ], [ %1780, %1844 ], [ %1780, %1812 ], [ %1780, %1797 ], [ %899, %906 ]
  %1866 = phi float [ %1781, %1775 ], [ %900, %1202 ], [ %900, %892 ], [ %1781, %1846 ], [ %1781, %1844 ], [ %1781, %1812 ], [ %1781, %1797 ], [ %900, %906 ]
  %1867 = phi float [ %1782, %1775 ], [ %901, %1202 ], [ %901, %892 ], [ %1782, %1846 ], [ %1782, %1844 ], [ %1782, %1812 ], [ %1782, %1797 ], [ %901, %906 ]
  %1868 = phi float [ %903, %1775 ], [ %903, %1202 ], [ %903, %892 ], [ %1857, %1846 ], [ %903, %1844 ], [ %1843, %1812 ], [ %1809, %1797 ], [ %903, %906 ]
  %1869 = phi float [ %904, %1775 ], [ %904, %1202 ], [ %904, %892 ], [ %1854, %1846 ], [ %904, %1844 ], [ %1820, %1812 ], [ %1806, %1797 ], [ %904, %906 ]
  %1870 = phi float [ %1783, %1775 ], [ %905, %1202 ], [ %905, %892 ], [ %1783, %1846 ], [ %1783, %1844 ], [ %1783, %1812 ], [ %1783, %1797 ], [ %905, %906 ]
  br i1 %372, label %2823, label %1871

; <label>:1871                                    ; preds = %1858
  %1872 = icmp ult i32 %425, 3
  %1873 = add i32 %43, 56
  %1874 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %1875 = extractvalue %dx.types.ResRet.i32 %1874, 0
  %1876 = add i32 %43, 60
  %1877 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1876, i32 undef)  ; BufferLoad(srv,index,wot)
  %1878 = extractvalue %dx.types.ResRet.i32 %1877, 0
  %1879 = or i32 %1878, %1875
  %1880 = icmp eq i32 %1879, 0
  br i1 %1880, label %2823, label %1881

; <label>:1881                                    ; preds = %1871
  %1882 = and i32 %1875, 262144
  %1883 = icmp ne i32 %1882, 0
  %1884 = select i1 %1883, float %46, float 1.000000e+00
  %1885 = select i1 %1883, float %47, float 0.000000e+00
  %1886 = select i1 %1883, float %48, float 0.000000e+00
  %1887 = select i1 %1883, float %49, float 1.000000e+00
  %1888 = select i1 %1883, float %50, float %66
  %1889 = select i1 %1883, float %51, float %67
  %1890 = add i32 %43, 316
  %1891 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %1892 = extractvalue %dx.types.ResRet.i32 %1891, 0
  %1893 = lshr i32 %1892, 16
  %1894 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1893)  ; LegacyF16ToF32(value)
  %1895 = fmul fast float %1894, 0x3F50624DE0000000
  %1896 = add i32 %43, 120
  %1897 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %1898 = extractvalue %dx.types.ResRet.i32 %1897, 0
  %1899 = lshr i32 %1898, 16
  %1900 = and i32 %1899, 255
  %1901 = lshr i32 %1898, 24
  %1902 = add i32 %43, 324
  %1903 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1902, i32 undef)  ; BufferLoad(srv,index,wot)
  %1904 = extractvalue %dx.types.ResRet.i32 %1903, 0
  %1905 = and i32 %1904, 65535
  %1906 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1905)  ; LegacyF16ToF32(value)
  %1907 = lshr i32 %1904, 16
  %1908 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1907)  ; LegacyF16ToF32(value)
  %1909 = add i32 %43, 64
  %1910 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1909, i32 undef)  ; BufferLoad(srv,index,wot)
  %1911 = extractvalue %dx.types.ResRet.i32 %1910, 0
  %1912 = lshr i32 %1911, 22
  %1913 = shl nuw nsw i32 %1912, 5
  %1914 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1913)  ; LegacyF16ToF32(value)
  %1915 = shl i32 %1911, 4
  %1916 = and i32 %1915, 32752
  %1917 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1916)  ; LegacyF16ToF32(value)
  %1918 = lshr i32 %1911, 7
  %1919 = and i32 %1918, 32752
  %1920 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1919)  ; LegacyF16ToF32(value)
  %1921 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %1922 = extractvalue %dx.types.CBufRet.f32 %1921, 3
  %1923 = fmul fast float %1922, 1.000000e+03
  %1924 = fmul fast float %322, %1923
  %1925 = call float @dx.op.unary.f32(i32 22, float %1924)  ; Frc(value)
  %1926 = fadd fast float %1925, %312
  %1927 = fmul fast float %323, %1923
  %1928 = call float @dx.op.unary.f32(i32 22, float %1927)  ; Frc(value)
  %1929 = fadd fast float %1928, %314
  %1930 = fmul fast float %1895, %1923
  %1931 = call float @dx.op.unary.f32(i32 22, float %1930)  ; Frc(value)
  %1932 = fmul fast float %1931, 0x401921FB60000000
  %1933 = fadd fast float %1932, %1914
  %1934 = call float @dx.op.unary.f32(i32 13, float %1933)  ; Sin(value)
  %1935 = call float @dx.op.unary.f32(i32 12, float %1933)  ; Cos(value)
  %1936 = fsub fast float -0.000000e+00, %1934
  %1937 = fadd fast float %1888, -5.000000e-01
  %1938 = fadd fast float %1889, -5.000000e-01
  %1939 = fmul fast float %1906, %1937
  %1940 = fmul fast float %1908, %1938
  %1941 = fadd fast float %1939, 5.000000e-01
  %1942 = fadd fast float %1940, 5.000000e-01
  %1943 = fmul fast float %1917, %1941
  %1944 = fmul fast float %1920, %1942
  %1945 = fmul fast float %1935, %1943
  %1946 = call float @dx.op.tertiary.f32(i32 46, float %1936, float %1944, float %1945)  ; FMad(a,b,c)
  %1947 = fmul fast float %1934, %1943
  %1948 = call float @dx.op.tertiary.f32(i32 46, float %1935, float %1944, float %1947)  ; FMad(a,b,c)
  %1949 = fadd fast float %1926, %1946
  %1950 = fadd fast float %1929, %1948
  %1951 = icmp ugt i32 %1900, 1
  %1952 = icmp ugt i32 %1898, 33554431
  %1953 = or i1 %1952, %1951
  br i1 %1953, label %1954, label %1979

; <label>:1954                                    ; preds = %1881
  %1955 = add i32 %43, 260
  %1956 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1955, i32 undef)  ; BufferLoad(srv,index,wot)
  %1957 = extractvalue %dx.types.ResRet.i32 %1956, 0
  %1958 = lshr i32 %1957, 16
  %1959 = call float @dx.op.legacyF16ToF32(i32 131, i32 %1958)  ; LegacyF16ToF32(value)
  %1960 = fmul fast float %1922, %1959
  %1961 = call float @dx.op.unary.f32(i32 22, float %1960)  ; Frc(value)
  %1962 = mul nuw nsw i32 %1900, %1901
  %1963 = uitofp i32 %1962 to float
  %1964 = fmul fast float %1961, %1963
  %1965 = call float @dx.op.unary.f32(i32 27, float %1964)  ; Round_ni(value)
  %1966 = fptoui float %1965 to i32
  %1967 = urem i32 %1966, %1900
  %1968 = udiv i32 %1966, %1901
  %1969 = call float @dx.op.unary.f32(i32 22, float %1949)  ; Frc(value)
  %1970 = call float @dx.op.unary.f32(i32 22, float %1950)  ; Frc(value)
  %1971 = uitofp i32 %1967 to float
  %1972 = uitofp i32 %1968 to float
  %1973 = fadd fast float %1969, %1971
  %1974 = fadd fast float %1970, %1972
  %1975 = uitofp i32 %1900 to float
  %1976 = uitofp i32 %1901 to float
  %1977 = fdiv fast float %1973, %1975
  %1978 = fdiv fast float %1974, %1976
  br label %1979

; <label>:1979                                    ; preds = %1954, %1881
  %1980 = phi float [ %1977, %1954 ], [ %1949, %1881 ]
  %1981 = phi float [ %1978, %1954 ], [ %1950, %1881 ]
  %1982 = and i32 %1875, 16777216
  %1983 = icmp eq i32 %1982, 0
  br i1 %1983, label %2093, label %1984

; <label>:1984                                    ; preds = %1979
  %1985 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %1986 = extractvalue %dx.types.CBufRet.f32 %1985, 0
  %1987 = extractvalue %dx.types.CBufRet.f32 %1985, 1
  %1988 = extractvalue %dx.types.CBufRet.f32 %1985, 2
  %1989 = fadd fast float %1986, %141
  %1990 = fadd fast float %1987, %142
  %1991 = fadd fast float %1988, %143
  %1992 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %1993 = extractvalue %dx.types.CBufRet.f32 %1992, 0
  %1994 = call float @dx.op.unary.f32(i32 7, float %1993)  ; Saturate(value)
  %1995 = icmp eq i32 %44, 65535
  br i1 %1995, label %2090, label %1996

; <label>:1996                                    ; preds = %1984
  %1997 = lshr i32 %44, 1
  %1998 = shl i32 %1997, 2
  %1999 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %1998, i32 undef)  ; BufferLoad(srv,index,wot)
  %2000 = extractvalue %dx.types.ResRet.i32 %1999, 0
  %2001 = and i32 %44, 1
  %2002 = icmp ne i32 %2001, 0
  %2003 = lshr i32 %2000, 16
  %2004 = and i32 %2000, 65535
  %2005 = select i1 %2002, i32 %2003, i32 %2004
  %2006 = icmp eq i32 %2005, 65535
  br i1 %2006, label %2086, label %2007

; <label>:2007                                    ; preds = %1996
  %2008 = mul nuw nsw i32 %2005, 40
  %2009 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2008, i32 undef)  ; BufferLoad(srv,index,wot)
  %2010 = extractvalue %dx.types.ResRet.f32 %2009, 0
  %2011 = extractvalue %dx.types.ResRet.f32 %2009, 1
  %2012 = extractvalue %dx.types.ResRet.f32 %2009, 2
  %2013 = add nuw nsw i32 %2008, 12
  %2014 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2013, i32 undef)  ; BufferLoad(srv,index,wot)
  %2015 = extractvalue %dx.types.ResRet.f32 %2014, 0
  %2016 = extractvalue %dx.types.ResRet.f32 %2014, 1
  %2017 = extractvalue %dx.types.ResRet.f32 %2014, 2
  %2018 = add nuw nsw i32 %2008, 24
  %2019 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2018, i32 undef)  ; BufferLoad(srv,index,wot)
  %2020 = extractvalue %dx.types.ResRet.f32 %2019, 0
  %2021 = extractvalue %dx.types.ResRet.f32 %2019, 1
  %2022 = extractvalue %dx.types.ResRet.f32 %2019, 2
  %2023 = add nuw nsw i32 %2008, 36
  %2024 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2023, i32 undef)  ; BufferLoad(srv,index,wot)
  %2025 = extractvalue %dx.types.ResRet.f32 %2024, 0
  %2026 = fsub fast float %1989, %2010
  %2027 = fsub fast float %1990, %2011
  %2028 = fsub fast float %1991, %2012
  %2029 = fmul fast float %2025, %2026
  %2030 = fmul fast float %2025, %2027
  %2031 = fmul fast float %2025, %2028
  %2032 = call float @dx.op.unary.f32(i32 27, float %2029)  ; Round_ni(value)
  %2033 = call float @dx.op.unary.f32(i32 27, float %2030)  ; Round_ni(value)
  %2034 = call float @dx.op.unary.f32(i32 27, float %2031)  ; Round_ni(value)
  %2035 = fadd fast float %2032, 5.000000e-01
  %2036 = fadd fast float %2033, 5.000000e-01
  %2037 = fadd fast float %2034, 5.000000e-01
  %2038 = fmul fast float %2035, %2015
  %2039 = fmul fast float %2036, %2016
  %2040 = fmul fast float %2037, %2017
  %2041 = shl i32 %44, 2
  %2042 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2043 = extractvalue %dx.types.ResRet.i32 %2042, 0
  %2044 = add i32 %2043, 0
  %2045 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2044, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2046 = call float @dx.op.unary.f32(i32 22, float %2038)  ; Frc(value)
  %2047 = call float @dx.op.unary.f32(i32 22, float %2039)  ; Frc(value)
  %2048 = call float @dx.op.unary.f32(i32 22, float %2040)  ; Frc(value)
  %2049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2045, %dx.types.Handle %40, float %2046, float %2047, float %2048, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2050 = extractvalue %dx.types.ResRet.f32 %2049, 0
  %2051 = extractvalue %dx.types.ResRet.f32 %2049, 1
  %2052 = extractvalue %dx.types.ResRet.f32 %2049, 2
  %2053 = fmul fast float %2050, 1.023000e+03
  %2054 = fmul fast float %2051, 1.023000e+03
  %2055 = fmul fast float %2052, 1.023000e+03
  %2056 = fadd fast float %2053, 5.000000e-01
  %2057 = fadd fast float %2054, 5.000000e-01
  %2058 = fadd fast float %2055, 5.000000e-01
  %2059 = call float @dx.op.unary.f32(i32 27, float %2056)  ; Round_ni(value)
  %2060 = call float @dx.op.unary.f32(i32 27, float %2057)  ; Round_ni(value)
  %2061 = call float @dx.op.unary.f32(i32 27, float %2058)  ; Round_ni(value)
  %2062 = fsub fast float %2029, %2032
  %2063 = fsub fast float %2030, %2033
  %2064 = fsub fast float %2031, %2034
  %2065 = fmul fast float %2062, 7.500000e-01
  %2066 = fmul fast float %2063, 7.500000e-01
  %2067 = fmul fast float %2064, 7.500000e-01
  %2068 = fadd fast float %2032, 1.250000e-01
  %2069 = fadd fast float %2068, %2065
  %2070 = fadd fast float %2069, %2059
  %2071 = fadd fast float %2033, 1.250000e-01
  %2072 = fadd fast float %2071, %2066
  %2073 = fadd fast float %2072, %2060
  %2074 = fadd fast float %2034, 1.250000e-01
  %2075 = fadd fast float %2074, %2067
  %2076 = fadd fast float %2075, %2061
  %2077 = fmul fast float %2070, %2020
  %2078 = fmul fast float %2073, %2021
  %2079 = fmul fast float %2076, %2022
  %2080 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %2041, i32 undef)  ; BufferLoad(srv,index,wot)
  %2081 = extractvalue %dx.types.ResRet.i32 %2080, 0
  %2082 = add i32 %2081, 0
  %2083 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %2082, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2084 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %2083, %dx.types.Handle %38, float %2077, float %2078, float %2079, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %2085 = extractvalue %dx.types.ResRet.f32 %2084, 0
  br label %2086

; <label>:2086                                    ; preds = %2007, %1996
  %2087 = phi float [ %2085, %2007 ], [ -1.000000e+00, %1996 ]
  %2088 = fadd fast float %2087, %1994
  %2089 = call float @dx.op.unary.f32(i32 7, float %2088)  ; Saturate(value)
  br label %2090

; <label>:2090                                    ; preds = %2086, %1984
  %2091 = phi float [ %2089, %2086 ], [ %1994, %1984 ]
  %2092 = fmul fast float %2091, %421
  br label %2093

; <label>:2093                                    ; preds = %2090, %1979
  %2094 = phi float [ %2092, %2090 ], [ %421, %1979 ]
  %2095 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2096 = extractvalue %dx.types.ResRet.i32 %2095, 0
  %2097 = and i32 %2096, 256
  %2098 = icmp eq i32 %2097, 0
  br i1 %2098, label %2145, label %2099

; <label>:2099                                    ; preds = %2093
  %2100 = add i32 %43, 448
  %2101 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2100, i32 undef)  ; BufferLoad(srv,index,wot)
  %2102 = extractvalue %dx.types.ResRet.i32 %2101, 0
  %2103 = add i32 %2102, 0
  %2104 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2103, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2105 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2104, %dx.types.Handle %75, float %1980, float %1981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2106 = extractvalue %dx.types.ResRet.f32 %2105, 0
  %2107 = add i32 %43, 132
  %2108 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2107, i32 undef)  ; BufferLoad(srv,index,wot)
  %2109 = extractvalue %dx.types.ResRet.i32 %2108, 0
  %2110 = shl i32 %2109, 4
  %2111 = and i32 %2110, 32752
  %2112 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2111)  ; LegacyF16ToF32(value)
  %2113 = lshr i32 %2109, 7
  %2114 = and i32 %2113, 32752
  %2115 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2114)  ; LegacyF16ToF32(value)
  %2116 = fsub fast float 1.000000e+00, %2094
  %2117 = call float @dx.op.binary.f32(i32 35, float %2116, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %2118 = bitcast float %2094 to i32
  %2119 = sitofp i32 %2118 to float
  %2120 = fadd fast float %2119, 0xC1CFBF8940000000
  %2121 = fmul fast float %2115, %2120
  %2122 = fadd fast float %2121, 0x41CFBF8940000000
  %2123 = fptosi float %2122 to i32
  %2124 = bitcast i32 %2123 to float
  %2125 = bitcast float %2117 to i32
  %2126 = sitofp i32 %2125 to float
  %2127 = fadd fast float %2126, 0xC1CFBF8940000000
  %2128 = fmul fast float %2127, %2115
  %2129 = fadd fast float %2128, 0x41CFBF8940000000
  %2130 = fptosi float %2129 to i32
  %2131 = bitcast i32 %2130 to float
  %2132 = fmul fast float %2124, %2112
  %2133 = fmul fast float %2131, %2112
  %2134 = fsub fast float %2117, %2132
  %2135 = fadd fast float %2133, %2117
  %2136 = call float @dx.op.unary.f32(i32 7, float %2134)  ; Saturate(value)
  %2137 = call float @dx.op.unary.f32(i32 7, float %2135)  ; Saturate(value)
  %2138 = fsub fast float %2106, %2136
  %2139 = fsub fast float %2137, %2136
  %2140 = bitcast float %2139 to i32
  %2141 = sub nsw i32 2129859010, %2140
  %2142 = bitcast i32 %2141 to float
  %2143 = fmul fast float %2142, %2138
  %2144 = call float @dx.op.unary.f32(i32 7, float %2143)  ; Saturate(value)
  br label %2145

; <label>:2145                                    ; preds = %2099, %2093
  %2146 = phi float [ %2144, %2099 ], [ %2094, %2093 ]
  %2147 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2148 = extractvalue %dx.types.ResRet.i32 %2147, 0
  %2149 = and i32 %2148, 128
  %2150 = icmp eq i32 %2149, 0
  br i1 %2150, label %2167, label %2151

; <label>:2151                                    ; preds = %2145
  %2152 = add i32 %43, 432
  %2153 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2152, i32 undef)  ; BufferLoad(srv,index,wot)
  %2154 = extractvalue %dx.types.ResRet.i32 %2153, 0
  %2155 = add i32 %2154, 0
  %2156 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2155, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2157 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2156, %dx.types.Handle %75, float %1980, float %1981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2158 = extractvalue %dx.types.ResRet.f32 %2157, 0
  %2159 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2160 = extractvalue %dx.types.ResRet.i32 %2159, 0
  %2161 = and i32 %2160, 524288
  %2162 = icmp ne i32 %2161, 0
  %2163 = fcmp fast ogt float %2158, 0x3FE0101020000000
  %2164 = select i1 %2163, float 1.000000e+00, float 0.000000e+00
  %2165 = select i1 %2162, float %2164, float %2158
  %2166 = fmul fast float %2165, %2146
  br label %2167

; <label>:2167                                    ; preds = %2151, %2145
  %2168 = phi float [ %2166, %2151 ], [ %2146, %2145 ]
  %2169 = fcmp fast ult float %2168, 0x3F70101020000000
  br i1 %2169, label %2823, label %2170

; <label>:2170                                    ; preds = %2167
  %2171 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2172 = extractvalue %dx.types.ResRet.i32 %2171, 0
  %2173 = and i32 %2172, 16
  %2174 = icmp eq i32 %2173, 0
  br i1 %2174, label %2373, label %2175

; <label>:2175                                    ; preds = %2170
  %2176 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1896, i32 undef)  ; BufferLoad(srv,index,wot)
  %2177 = extractvalue %dx.types.ResRet.i32 %2176, 0
  %2178 = add i32 %43, 384
  %2179 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2178, i32 undef)  ; BufferLoad(srv,index,wot)
  %2180 = extractvalue %dx.types.ResRet.i32 %2179, 0
  %2181 = add i32 %2180, 0
  %2182 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2181, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2183 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2182, %dx.types.Handle %74, float %1980, float %1981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2184 = extractvalue %dx.types.ResRet.f32 %2183, 0
  %2185 = extractvalue %dx.types.ResRet.f32 %2183, 1
  %2186 = extractvalue %dx.types.ResRet.f32 %2183, 2
  %2187 = extractvalue %dx.types.ResRet.f32 %2183, 3
  %2188 = and i32 %2177, 255
  %2189 = uitofp i32 %2188 to float
  %2190 = lshr i32 %2177, 8
  %2191 = and i32 %2190, 255
  %2192 = uitofp i32 %2191 to float
  %2193 = fmul fast float %2187, %2189
  %2194 = fadd fast float %2193, %2192
  %2195 = fmul fast float %2194, 0x3F70101000000000
  %2196 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2197 = extractvalue %dx.types.ResRet.i32 %2196, 0
  %2198 = and i32 %2197, 512
  %2199 = icmp eq i32 %2198, 0
  br i1 %2199, label %2208, label %2200

; <label>:2200                                    ; preds = %2175
  %2201 = add i32 %43, 464
  %2202 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2201, i32 undef)  ; BufferLoad(srv,index,wot)
  %2203 = extractvalue %dx.types.ResRet.i32 %2202, 0
  %2204 = add i32 %2203, 0
  %2205 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2204, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2206 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2205, %dx.types.Handle %75, float %1980, float %1981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2207 = extractvalue %dx.types.ResRet.f32 %2206, 0
  br label %2208

; <label>:2208                                    ; preds = %2200, %2175
  %2209 = phi float [ %2207, %2200 ], [ 1.000000e+00, %2175 ]
  %2210 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2211 = extractvalue %dx.types.ResRet.i32 %2210, 0
  %2212 = and i32 %2211, 33554432
  %2213 = icmp eq i32 %2212, 0
  br i1 %2213, label %2320, label %2214

; <label>:2214                                    ; preds = %2208
  %2215 = add i32 %43, 256
  %2216 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2215, i32 undef)  ; BufferLoad(srv,index,wot)
  %2217 = extractvalue %dx.types.ResRet.i32 %2216, 0
  %2218 = and i32 %2217, 65535
  %2219 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2218)  ; LegacyF16ToF32(value)
  %2220 = lshr i32 %2217, 16
  %2221 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2220)  ; LegacyF16ToF32(value)
  %2222 = add i32 %43, 260
  %2223 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2222, i32 undef)  ; BufferLoad(srv,index,wot)
  %2224 = extractvalue %dx.types.ResRet.i32 %2223, 0
  %2225 = and i32 %2224, 65535
  %2226 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2225)  ; LegacyF16ToF32(value)
  %2227 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %294, i32 undef)  ; BufferLoad(srv,index,wot)
  %2228 = extractvalue %dx.types.ResRet.i32 %2227, 0
  %2229 = lshr i32 %2228, 24
  %2230 = uitofp i32 %2229 to float
  %2231 = fmul fast float %2230, 0x3F70101020000000
  %2232 = and i32 %2228, 255
  %2233 = uitofp i32 %2232 to float
  %2234 = fmul fast float %2233, 0x3F70101020000000
  %2235 = lshr i32 %2228, 8
  %2236 = and i32 %2235, 255
  %2237 = uitofp i32 %2236 to float
  %2238 = fmul fast float %2237, 0x3F70101020000000
  %2239 = lshr i32 %2228, 16
  %2240 = and i32 %2239, 255
  %2241 = uitofp i32 %2240 to float
  %2242 = fmul fast float %2241, 0x3F70101020000000
  %2243 = add i32 %43, 252
  %2244 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2243, i32 undef)  ; BufferLoad(srv,index,wot)
  %2245 = extractvalue %dx.types.ResRet.i32 %2244, 0
  %2246 = lshr i32 %2245, 24
  %2247 = uitofp i32 %2246 to float
  %2248 = fmul fast float %2247, 0x3F70101020000000
  %2249 = and i32 %2245, 255
  %2250 = uitofp i32 %2249 to float
  %2251 = fmul fast float %2250, 0x3F70101020000000
  %2252 = lshr i32 %2245, 8
  %2253 = and i32 %2252, 255
  %2254 = uitofp i32 %2253 to float
  %2255 = fmul fast float %2254, 0x3F70101020000000
  %2256 = lshr i32 %2245, 16
  %2257 = and i32 %2256, 255
  %2258 = uitofp i32 %2257 to float
  %2259 = fmul fast float %2258, 0x3F70101020000000
  %2260 = bitcast float %2184 to i32
  %2261 = ashr i32 %2260, 1
  %2262 = sub nsw i32 1597463174, %2261
  %2263 = bitcast i32 %2262 to float
  %2264 = fmul fast float %2184, 5.000000e-01
  %2265 = fmul fast float %2263, %2263
  %2266 = fmul fast float %2265, %2264
  %2267 = fsub fast float 1.500000e+00, %2266
  %2268 = fmul fast float %2263, %2184
  %2269 = fmul fast float %2268, %2267
  %2270 = bitcast float %2185 to i32
  %2271 = ashr i32 %2270, 1
  %2272 = sub nsw i32 1597463174, %2271
  %2273 = bitcast i32 %2272 to float
  %2274 = fmul fast float %2185, 5.000000e-01
  %2275 = fmul fast float %2273, %2273
  %2276 = fmul fast float %2275, %2274
  %2277 = fsub fast float 1.500000e+00, %2276
  %2278 = fmul fast float %2273, %2185
  %2279 = fmul fast float %2278, %2277
  %2280 = bitcast float %2186 to i32
  %2281 = ashr i32 %2280, 1
  %2282 = sub nsw i32 1597463174, %2281
  %2283 = bitcast i32 %2282 to float
  %2284 = fmul fast float %2186, 5.000000e-01
  %2285 = fmul fast float %2283, %2283
  %2286 = fmul fast float %2285, %2284
  %2287 = fsub fast float 1.500000e+00, %2286
  %2288 = fmul fast float %2283, %2186
  %2289 = fmul fast float %2288, %2287
  %2290 = fsub fast float %2269, %2251
  %2291 = fsub fast float %2279, %2255
  %2292 = fsub fast float %2289, %2259
  %2293 = fmul fast float %2290, %2219
  %2294 = fmul fast float %2291, %2221
  %2295 = fmul fast float %2292, %2226
  %2296 = fadd fast float %2293, %2234
  %2297 = fadd fast float %2294, %2238
  %2298 = fadd fast float %2295, %2242
  %2299 = call float @dx.op.unary.f32(i32 7, float %2296)  ; Saturate(value)
  %2300 = call float @dx.op.unary.f32(i32 7, float %2297)  ; Saturate(value)
  %2301 = call float @dx.op.unary.f32(i32 7, float %2298)  ; Saturate(value)
  %2302 = fmul fast float %2299, %2299
  %2303 = fmul fast float %2300, %2300
  %2304 = fmul fast float %2301, %2301
  %2305 = fsub fast float %2302, %2184
  %2306 = fsub fast float %2303, %2185
  %2307 = fsub fast float %2304, %2186
  %2308 = fmul fast float %2305, %2209
  %2309 = fmul fast float %2306, %2209
  %2310 = fmul fast float %2307, %2209
  %2311 = fadd fast float %2308, %2184
  %2312 = fadd fast float %2309, %2185
  %2313 = fadd fast float %2310, %2186
  %2314 = fadd fast float %2231, %2195
  %2315 = fsub fast float %2314, %2248
  %2316 = call float @dx.op.unary.f32(i32 7, float %2315)  ; Saturate(value)
  %2317 = fsub fast float %2316, %2195
  %2318 = fmul fast float %2317, %2209
  %2319 = fadd fast float %2318, %2195
  br label %2373

; <label>:2320                                    ; preds = %2208
  %2321 = and i32 %2211, 134217728
  %2322 = icmp eq i32 %2321, 0
  br i1 %2322, label %2357, label %2323

; <label>:2323                                    ; preds = %2320
  %2324 = call float @dx.op.unary.f32(i32 24, float %299)  ; Sqrt(value)
  %2325 = call float @dx.op.unary.f32(i32 24, float %303)  ; Sqrt(value)
  %2326 = call float @dx.op.unary.f32(i32 24, float %307)  ; Sqrt(value)
  %2327 = fadd fast float %2324, -5.000000e-01
  %2328 = fadd fast float %2325, -5.000000e-01
  %2329 = fadd fast float %2326, -5.000000e-01
  %2330 = fmul fast float %2327, %2209
  %2331 = fmul fast float %2328, %2209
  %2332 = fmul fast float %2329, %2209
  %2333 = fadd fast float %2330, 5.000000e-01
  %2334 = fadd fast float %2331, 5.000000e-01
  %2335 = fadd fast float %2332, 5.000000e-01
  %2336 = call float @dx.op.unary.f32(i32 24, float %2184)  ; Sqrt(value)
  %2337 = call float @dx.op.unary.f32(i32 24, float %2185)  ; Sqrt(value)
  %2338 = call float @dx.op.unary.f32(i32 24, float %2186)  ; Sqrt(value)
  %2339 = fmul fast float %2333, 2.000000e+00
  %2340 = fsub fast float 1.000000e+00, %2339
  %2341 = fmul fast float %2340, %2336
  %2342 = fadd fast float %2341, %2339
  %2343 = fmul fast float %2342, %2336
  %2344 = fmul fast float %2334, 2.000000e+00
  %2345 = fsub fast float 1.000000e+00, %2344
  %2346 = fmul fast float %2345, %2337
  %2347 = fadd fast float %2346, %2344
  %2348 = fmul fast float %2347, %2337
  %2349 = fmul fast float %2335, 2.000000e+00
  %2350 = fsub fast float 1.000000e+00, %2349
  %2351 = fmul fast float %2350, %2338
  %2352 = fadd fast float %2351, %2349
  %2353 = fmul fast float %2352, %2338
  %2354 = fmul fast float %2343, %2343
  %2355 = fmul fast float %2348, %2348
  %2356 = fmul fast float %2353, %2353
  br label %2373

; <label>:2357                                    ; preds = %2320
  %2358 = fmul fast float %299, %299
  %2359 = fmul fast float %303, %303
  %2360 = fmul fast float %307, %307
  %2361 = fadd fast float %2358, -1.000000e+00
  %2362 = fadd fast float %2359, -1.000000e+00
  %2363 = fadd fast float %2360, -1.000000e+00
  %2364 = fmul fast float %2209, %2361
  %2365 = fmul fast float %2209, %2362
  %2366 = fmul fast float %2209, %2363
  %2367 = fadd fast float %2364, 1.000000e+00
  %2368 = fadd fast float %2365, 1.000000e+00
  %2369 = fadd fast float %2366, 1.000000e+00
  %2370 = fmul fast float %2367, %2184
  %2371 = fmul fast float %2368, %2185
  %2372 = fmul fast float %2369, %2186
  br label %2373

; <label>:2373                                    ; preds = %2357, %2323, %2214, %2170
  %2374 = phi float [ %2319, %2214 ], [ %2195, %2323 ], [ %2195, %2357 ], [ 0x3FA23C0BE0000000, %2170 ]
  %2375 = phi float [ %2311, %2214 ], [ %2354, %2323 ], [ %2370, %2357 ], [ 1.000000e+00, %2170 ]
  %2376 = phi float [ %2312, %2214 ], [ %2355, %2323 ], [ %2371, %2357 ], [ 1.000000e+00, %2170 ]
  %2377 = phi float [ %2313, %2214 ], [ %2356, %2323 ], [ %2372, %2357 ], [ 1.000000e+00, %2170 ]
  %2378 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %2379 = extractvalue %dx.types.CBufRet.i32 %2378, 1
  %2380 = and i32 %2379, 1
  %2381 = icmp ne i32 %2380, 0
  %2382 = add i32 %43, 356
  %2383 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2382, i32 undef)  ; BufferLoad(srv,index,wot)
  %2384 = extractvalue %dx.types.ResRet.i32 %2383, 0
  %2385 = and i32 %2384, 32
  %2386 = icmp ne i32 %2385, 0
  %2387 = and i1 %2381, %2386
  %2388 = select i1 %2387, float 1.000000e+00, float %2375
  %2389 = select i1 %2387, float 0x3FD3333340000000, float %2376
  %2390 = select i1 %2387, float 0x3FD3333340000000, float %2377
  %2391 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2392 = extractvalue %dx.types.ResRet.i32 %2391, 0
  %2393 = and i32 %2392, 32
  %2394 = icmp eq i32 %2393, 0
  br i1 %2394, label %2467, label %2395

; <label>:2395                                    ; preds = %2373
  %2396 = add i32 %43, 124
  %2397 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2396, i32 undef)  ; BufferLoad(srv,index,wot)
  %2398 = extractvalue %dx.types.ResRet.i32 %2397, 0
  %2399 = add i32 %43, 400
  %2400 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2399, i32 undef)  ; BufferLoad(srv,index,wot)
  %2401 = extractvalue %dx.types.ResRet.i32 %2400, 0
  %2402 = add i32 %2401, 0
  %2403 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2402, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2404 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2403, %dx.types.Handle %74, float %1980, float %1981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2405 = extractvalue %dx.types.ResRet.f32 %2404, 0
  %2406 = extractvalue %dx.types.ResRet.f32 %2404, 1
  %2407 = extractvalue %dx.types.ResRet.f32 %2404, 2
  %2408 = extractvalue %dx.types.ResRet.f32 %2404, 3
  %2409 = and i32 %2398, 255
  %2410 = uitofp i32 %2409 to float
  %2411 = lshr i32 %2398, 8
  %2412 = and i32 %2411, 255
  %2413 = uitofp i32 %2412 to float
  %2414 = lshr i32 %2398, 16
  %2415 = and i32 %2414, 255
  %2416 = uitofp i32 %2415 to float
  %2417 = fmul fast float %2416, 0x3F70101000000000
  %2418 = fmul fast float %2405, %2410
  %2419 = fadd fast float %2418, %2413
  %2420 = fmul fast float %2419, 0x3F70101000000000
  %2421 = fadd fast float %2406, -5.000000e-01
  %2422 = fadd fast float %2408, -5.000000e-01
  %2423 = fmul fast float %2421, %2417
  %2424 = fmul fast float %2422, %2417
  %2425 = fadd fast float %2423, 5.000000e-01
  %2426 = fadd fast float %2424, 5.000000e-01
  %2427 = fmul fast float %2425, 2.000000e+00
  %2428 = fadd fast float %2427, -1.000000e+00
  %2429 = fmul fast float %2426, 2.000000e+00
  %2430 = fadd fast float %2429, -1.000000e+00
  %2431 = fadd fast float %2428, %2430
  %2432 = fmul fast float %2431, 5.000000e-01
  %2433 = fsub fast float %2428, %2430
  %2434 = fmul fast float %2433, 5.000000e-01
  %2435 = call float @dx.op.unary.f32(i32 6, float %2432)  ; FAbs(value)
  %2436 = fsub fast float 1.000000e+00, %2435
  %2437 = call float @dx.op.unary.f32(i32 6, float %2434)  ; FAbs(value)
  %2438 = fsub fast float %2436, %2437
  %2439 = call float @dx.op.dot3.f32(i32 55, float %2432, float %2434, float %2438, float %2432, float %2434, float %2438)  ; Dot3(ax,ay,az,bx,by,bz)
  %2440 = call float @dx.op.unary.f32(i32 25, float %2439)  ; Rsqrt(value)
  %2441 = fmul fast float %2432, %2440
  %2442 = fmul fast float %2434, %2440
  %2443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2444 = extractvalue %dx.types.ResRet.i32 %2443, 0
  %2445 = and i32 %2444, 67108864
  %2446 = icmp eq i32 %2445, 0
  br i1 %2446, label %2463, label %2447

; <label>:2447                                    ; preds = %2395
  %2448 = add i32 %43, 312
  %2449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2448, i32 undef)  ; BufferLoad(srv,index,wot)
  %2450 = extractvalue %dx.types.ResRet.i32 %2449, 0
  %2451 = and i32 %2450, 65535
  %2452 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2451)  ; LegacyF16ToF32(value)
  %2453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1890, i32 undef)  ; BufferLoad(srv,index,wot)
  %2454 = extractvalue %dx.types.ResRet.i32 %2453, 0
  %2455 = and i32 %2454, 65535
  %2456 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2455)  ; LegacyF16ToF32(value)
  %2457 = lshr i32 %2450, 16
  %2458 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2457)  ; LegacyF16ToF32(value)
  %2459 = fsub fast float %2420, %2458
  %2460 = fmul fast float %2459, %2452
  %2461 = fadd fast float %2460, %2456
  %2462 = call float @dx.op.unary.f32(i32 7, float %2461)  ; Saturate(value)
  br label %2463

; <label>:2463                                    ; preds = %2447, %2395
  %2464 = phi float [ %2462, %2447 ], [ %2420, %2395 ]
  %2465 = call float @dx.op.dot2.f32(i32 54, float %2441, float %2442, float %1884, float %1885)  ; Dot2(ax,ay,bx,by)
  %2466 = call float @dx.op.dot2.f32(i32 54, float %2441, float %2442, float %1886, float %1887)  ; Dot2(ax,ay,bx,by)
  br label %2467

; <label>:2467                                    ; preds = %2463, %2373
  %2468 = phi float [ %2464, %2463 ], [ 0x3FD6666660000000, %2373 ]
  %2469 = phi float [ %2465, %2463 ], [ 0.000000e+00, %2373 ]
  %2470 = phi float [ %2466, %2463 ], [ 0.000000e+00, %2373 ]
  %2471 = phi float [ %2407, %2463 ], [ 1.000000e+00, %2373 ]
  %2472 = add i32 %43, 192
  %2473 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2474 = extractvalue %dx.types.ResRet.i32 %2473, 0
  %2475 = lshr i32 %2474, 22
  %2476 = shl nuw nsw i32 %2475, 5
  %2477 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2476)  ; LegacyF16ToF32(value)
  %2478 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2479 = extractvalue %dx.types.ResRet.i32 %2478, 0
  %2480 = and i32 %2479, 64
  %2481 = icmp eq i32 %2480, 0
  br i1 %2481, label %2515, label %2482

; <label>:2482                                    ; preds = %2467
  %2483 = add i32 %43, 416
  %2484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2483, i32 undef)  ; BufferLoad(srv,index,wot)
  %2485 = extractvalue %dx.types.ResRet.i32 %2484, 0
  %2486 = add i32 %2485, 0
  %2487 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2486, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2488 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2489 = extractvalue %dx.types.ResRet.i32 %2488, 0
  %2490 = and i32 %2489, 131072
  %2491 = icmp eq i32 %2490, 0
  %2492 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2487, %dx.types.Handle %74, float %1980, float %1981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2493 = extractvalue %dx.types.ResRet.f32 %2492, 0
  %2494 = extractvalue %dx.types.ResRet.f32 %2492, 1
  %2495 = extractvalue %dx.types.ResRet.f32 %2492, 2
  %2496 = fmul fast float %2493, %287
  %2497 = fmul fast float %2494, %290
  %2498 = fmul fast float %2495, %293
  br i1 %2491, label %2505, label %2499

; <label>:2499                                    ; preds = %2482
  %2500 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %2501 = extractvalue %dx.types.CBufRet.f32 %2500, 0
  %2502 = fmul fast float %2501, %2496
  %2503 = fmul fast float %2501, %2497
  %2504 = fmul fast float %2501, %2498
  br label %2505

; <label>:2505                                    ; preds = %2499, %2482
  %2506 = phi float [ %2502, %2499 ], [ %2496, %2482 ]
  %2507 = phi float [ %2503, %2499 ], [ %2497, %2482 ]
  %2508 = phi float [ %2504, %2499 ], [ %2498, %2482 ]
  %2509 = fmul fast float %2506, %2477
  %2510 = select i1 %183, float %2509, float %2506
  %2511 = call float @dx.op.dot3.f32(i32 55, float %2510, float %2507, float %2508, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2512 = select i1 %183, float 0.000000e+00, float %2506
  %2513 = select i1 %183, float %2511, float %2507
  %2514 = select i1 %183, float 0.000000e+00, float %2508
  br label %2515

; <label>:2515                                    ; preds = %2505, %2467
  %2516 = phi float [ %2512, %2505 ], [ 0.000000e+00, %2467 ]
  %2517 = phi float [ %2513, %2505 ], [ 0.000000e+00, %2467 ]
  %2518 = phi float [ %2514, %2505 ], [ 0.000000e+00, %2467 ]
  %2519 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2520 = extractvalue %dx.types.ResRet.i32 %2519, 0
  %2521 = and i32 %2520, 1024
  %2522 = icmp eq i32 %2521, 0
  br i1 %2522, label %2553, label %2523

; <label>:2523                                    ; preds = %2515
  %2524 = add i32 %43, 184
  %2525 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2524, i32 undef)  ; BufferLoad(srv,index,wot)
  %2526 = extractvalue %dx.types.ResRet.i32 %2525, 0
  %2527 = and i32 %2526, 255
  %2528 = uitofp i32 %2527 to float
  %2529 = fmul fast float %2528, 0x3F70101020000000
  %2530 = lshr i32 %2526, 8
  %2531 = and i32 %2530, 255
  %2532 = uitofp i32 %2531 to float
  %2533 = fmul fast float %2532, 0x3F70101020000000
  %2534 = lshr i32 %2526, 16
  %2535 = and i32 %2534, 255
  %2536 = uitofp i32 %2535 to float
  %2537 = fmul fast float %2536, 0x3F70101020000000
  %2538 = fmul fast float %2529, %2529
  %2539 = fmul fast float %2533, %2533
  %2540 = fmul fast float %2537, %2537
  %2541 = add i32 %43, 480
  %2542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2541, i32 undef)  ; BufferLoad(srv,index,wot)
  %2543 = extractvalue %dx.types.ResRet.i32 %2542, 0
  %2544 = add i32 %2543, 0
  %2545 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2544, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2546 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2545, %dx.types.Handle %75, float %1980, float %1981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2547 = extractvalue %dx.types.ResRet.f32 %2546, 0
  %2548 = extractvalue %dx.types.ResRet.f32 %2546, 1
  %2549 = extractvalue %dx.types.ResRet.f32 %2546, 2
  %2550 = fmul fast float %2538, %2547
  %2551 = fmul fast float %2539, %2548
  %2552 = fmul fast float %2540, %2549
  br label %2553

; <label>:2553                                    ; preds = %2523, %2515
  %2554 = phi float [ %2550, %2523 ], [ 0.000000e+00, %2515 ]
  %2555 = phi float [ %2551, %2523 ], [ 0.000000e+00, %2515 ]
  %2556 = phi float [ %2552, %2523 ], [ 0.000000e+00, %2515 ]
  %2557 = fcmp fast ogt float %2554, 0.000000e+00
  %2558 = fcmp fast ogt float %2555, 0.000000e+00
  %2559 = fcmp fast ogt float %2556, 0.000000e+00
  %2560 = call float @dx.op.unary.f32(i32 23, float %2554)  ; Log(value)
  %2561 = call float @dx.op.unary.f32(i32 23, float %2555)  ; Log(value)
  %2562 = call float @dx.op.unary.f32(i32 23, float %2556)  ; Log(value)
  %2563 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2564 = extractvalue %dx.types.ResRet.i32 %2563, 0
  %2565 = lshr i32 %2564, 7
  %2566 = and i32 %2565, 32752
  %2567 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2566)  ; LegacyF16ToF32(value)
  %2568 = fmul fast float %2560, 0xBFE62E4300000000
  %2569 = fmul fast float %2568, %2567
  %2570 = fmul fast float %2561, 0xBFE62E4300000000
  %2571 = fmul fast float %2570, %2567
  %2572 = fmul fast float %2562, 0xBFE62E4300000000
  %2573 = fmul fast float %2572, %2567
  %2574 = select i1 %2557, float %2569, float 1.270000e+02
  %2575 = select i1 %2558, float %2571, float 1.270000e+02
  %2576 = select i1 %2559, float %2573, float 1.270000e+02
  %2577 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2578 = extractvalue %dx.types.ResRet.i32 %2577, 0
  %2579 = and i32 %2578, 10240
  %2580 = icmp eq i32 %2579, 0
  br i1 %2580, label %2601, label %2581

; <label>:2581                                    ; preds = %2553
  %2582 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2583 = extractvalue %dx.types.ResRet.i32 %2582, 0
  %2584 = and i32 %2583, 2048
  %2585 = icmp eq i32 %2584, 0
  br i1 %2585, label %2601, label %2586

; <label>:2586                                    ; preds = %2581
  %2587 = add i32 %43, 496
  %2588 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2587, i32 undef)  ; BufferLoad(srv,index,wot)
  %2589 = extractvalue %dx.types.ResRet.i32 %2588, 0
  %2590 = add i32 %2589, 0
  %2591 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %2590, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %2592 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %2591, %dx.types.Handle %75, float %1980, float %1981, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %2593 = extractvalue %dx.types.ResRet.f32 %2592, 3
  %2594 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2472, i32 undef)  ; BufferLoad(srv,index,wot)
  %2595 = extractvalue %dx.types.ResRet.i32 %2594, 0
  %2596 = shl i32 %2595, 4
  %2597 = and i32 %2596, 32752
  %2598 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2597)  ; LegacyF16ToF32(value)
  %2599 = fmul fast float %2598, %2593
  %2600 = call float @dx.op.binary.f32(i32 35, float %2599, float 0x3F70101020000000)  ; FMax(a,b)
  br label %2601

; <label>:2601                                    ; preds = %2586, %2581, %2553
  %2602 = phi float [ %2600, %2586 ], [ 0x3F70101020000000, %2581 ], [ 0x3F70101020000000, %2553 ]
  %2603 = add i32 %43, 128
  %2604 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2603, i32 undef)  ; BufferLoad(srv,index,wot)
  %2605 = extractvalue %dx.types.ResRet.i32 %2604, 0
  %2606 = and i32 %2605, 255
  %2607 = uitofp i32 %2606 to float
  %2608 = lshr i32 %2605, 8
  %2609 = and i32 %2608, 255
  %2610 = uitofp i32 %2609 to float
  %2611 = call float @dx.op.dot3.f32(i32 55, float %2388, float %2389, float %2390, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %2612 = fmul fast float %2610, %2611
  %2613 = fadd fast float %2612, %2607
  %2614 = fmul fast float %2613, 0x3F70101020000000
  %2615 = call float @dx.op.unary.f32(i32 7, float %2614)  ; Saturate(value)
  br i1 %1872, label %2616, label %2651

; <label>:2616                                    ; preds = %2601
  %2617 = fmul fast float %2602, 2.000000e+00
  %2618 = fcmp fast olt float %2574, 1.270000e+02
  %2619 = fcmp fast olt float %2575, 1.270000e+02
  %2620 = fcmp fast olt float %2576, 1.270000e+02
  %2621 = fmul fast float %2574, 0xBFF7154760000000
  %2622 = fmul fast float %2621, %2617
  %2623 = fmul fast float %2575, 0xBFF7154760000000
  %2624 = fmul fast float %2623, %2617
  %2625 = fmul fast float %2576, 0xBFF7154760000000
  %2626 = fmul fast float %2625, %2617
  %2627 = call float @dx.op.unary.f32(i32 21, float %2622)  ; Exp(value)
  %2628 = call float @dx.op.unary.f32(i32 21, float %2624)  ; Exp(value)
  %2629 = call float @dx.op.unary.f32(i32 21, float %2626)  ; Exp(value)
  %2630 = call float @dx.op.unary.f32(i32 7, float %2627)  ; Saturate(value)
  %2631 = call float @dx.op.unary.f32(i32 7, float %2628)  ; Saturate(value)
  %2632 = call float @dx.op.unary.f32(i32 7, float %2629)  ; Saturate(value)
  %2633 = fadd fast float %2630, -1.000000e+00
  %2634 = select i1 %2618, float %2633, float -1.000000e+00
  %2635 = fadd fast float %2631, -1.000000e+00
  %2636 = select i1 %2619, float %2635, float -1.000000e+00
  %2637 = fadd fast float %2632, -1.000000e+00
  %2638 = select i1 %2620, float %2637, float -1.000000e+00
  %2639 = fmul fast float %2634, %2168
  %2640 = fmul fast float %2636, %2168
  %2641 = fmul fast float %2638, %2168
  %2642 = fadd fast float %2639, 1.000000e+00
  %2643 = fadd fast float %2640, 1.000000e+00
  %2644 = fadd fast float %2641, 1.000000e+00
  %2645 = fmul fast float %2642, %1861
  %2646 = fmul fast float %2643, %1862
  %2647 = fmul fast float %2644, %1863
  %2648 = fmul fast float %2642, %1864
  %2649 = fmul fast float %2643, %1865
  %2650 = fmul fast float %2644, %1866
  br label %2651

; <label>:2651                                    ; preds = %2616, %2601
  %2652 = phi float [ %2645, %2616 ], [ %1861, %2601 ]
  %2653 = phi float [ %2646, %2616 ], [ %1862, %2601 ]
  %2654 = phi float [ %2647, %2616 ], [ %1863, %2601 ]
  %2655 = phi float [ %2648, %2616 ], [ %1864, %2601 ]
  %2656 = phi float [ %2649, %2616 ], [ %1865, %2601 ]
  %2657 = phi float [ %2650, %2616 ], [ %1866, %2601 ]
  %2658 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %1873, i32 undef)  ; BufferLoad(srv,index,wot)
  %2659 = extractvalue %dx.types.ResRet.i32 %2658, 0
  %2660 = and i32 %2659, 3
  %2661 = icmp eq i32 %2660, 3
  br i1 %2661, label %2740, label %2662

; <label>:2662                                    ; preds = %2651
  %2663 = and i32 %2659, 16
  %2664 = icmp ne i32 %2663, 0
  %2665 = select i1 %2664, float %2168, float 0.000000e+00
  %2666 = icmp eq i32 %2660, 0
  br i1 %2666, label %2667, label %2695

; <label>:2667                                    ; preds = %2662
  %2668 = and i32 %2659, 64
  %2669 = icmp ne i32 %2668, 0
  %2670 = select i1 %2669, float %2168, float 0.000000e+00
  %2671 = fsub fast float %2388, %2652
  %2672 = fsub fast float %2389, %2653
  %2673 = fsub fast float %2390, %2654
  %2674 = fmul fast float %2665, %2671
  %2675 = fmul fast float %2665, %2672
  %2676 = fmul fast float %2665, %2673
  %2677 = fadd fast float %2674, %2652
  %2678 = fadd fast float %2675, %2653
  %2679 = fadd fast float %2676, %2654
  %2680 = fsub fast float %2374, %1867
  %2681 = fmul fast float %2665, %2680
  %2682 = fadd fast float %2681, %1867
  %2683 = fsub fast float %2516, %2655
  %2684 = fsub fast float %2517, %2656
  %2685 = fsub fast float %2518, %2657
  %2686 = fmul fast float %2670, %2683
  %2687 = fmul fast float %2670, %2684
  %2688 = fmul fast float %2670, %2685
  %2689 = fadd fast float %2686, %2655
  %2690 = fadd fast float %2687, %2656
  %2691 = fadd fast float %2688, %2657
  %2692 = fsub fast float %2615, %1870
  %2693 = fmul fast float %2665, %2692
  %2694 = fadd fast float %2693, %1870
  br label %2740

; <label>:2695                                    ; preds = %2662
  %2696 = icmp eq i32 %2660, 1
  br i1 %2696, label %2697, label %2710

; <label>:2697                                    ; preds = %2695
  %2698 = fadd fast float %2388, -1.000000e+00
  %2699 = fadd fast float %2389, -1.000000e+00
  %2700 = fadd fast float %2390, -1.000000e+00
  %2701 = fmul fast float %2665, %2698
  %2702 = fmul fast float %2665, %2699
  %2703 = fmul fast float %2665, %2700
  %2704 = fadd fast float %2701, 1.000000e+00
  %2705 = fadd fast float %2702, 1.000000e+00
  %2706 = fadd fast float %2703, 1.000000e+00
  %2707 = fmul fast float %2704, %2652
  %2708 = fmul fast float %2705, %2653
  %2709 = fmul fast float %2706, %2654
  br label %2740

; <label>:2710                                    ; preds = %2695
  %2711 = icmp eq i32 %2660, 2
  br i1 %2711, label %2712, label %2740

; <label>:2712                                    ; preds = %2710
  %2713 = call float @dx.op.unary.f32(i32 24, float %2388)  ; Sqrt(value)
  %2714 = call float @dx.op.unary.f32(i32 24, float %2389)  ; Sqrt(value)
  %2715 = call float @dx.op.unary.f32(i32 24, float %2390)  ; Sqrt(value)
  %2716 = fadd fast float %2713, -5.000000e-01
  %2717 = fadd fast float %2714, -5.000000e-01
  %2718 = fadd fast float %2715, -5.000000e-01
  %2719 = fmul fast float %2716, %2665
  %2720 = fmul fast float %2717, %2665
  %2721 = fmul fast float %2718, %2665
  %2722 = fadd fast float %2719, 5.000000e-01
  %2723 = fadd fast float %2720, 5.000000e-01
  %2724 = fadd fast float %2721, 5.000000e-01
  %2725 = fmul fast float %2722, 2.000000e+00
  %2726 = fsub fast float 1.000000e+00, %2725
  %2727 = fmul fast float %2726, %2652
  %2728 = fadd fast float %2727, %2725
  %2729 = fmul fast float %2728, %2652
  %2730 = fmul fast float %2723, 2.000000e+00
  %2731 = fsub fast float 1.000000e+00, %2730
  %2732 = fmul fast float %2731, %2653
  %2733 = fadd fast float %2732, %2730
  %2734 = fmul fast float %2733, %2653
  %2735 = fmul fast float %2724, 2.000000e+00
  %2736 = fsub fast float 1.000000e+00, %2735
  %2737 = fmul fast float %2736, %2654
  %2738 = fadd fast float %2737, %2735
  %2739 = fmul fast float %2738, %2654
  br label %2740

; <label>:2740                                    ; preds = %2712, %2710, %2697, %2667, %2651
  %2741 = phi float [ %2652, %2651 ], [ %2729, %2712 ], [ %2652, %2710 ], [ %2707, %2697 ], [ %2677, %2667 ]
  %2742 = phi float [ %2653, %2651 ], [ %2734, %2712 ], [ %2653, %2710 ], [ %2708, %2697 ], [ %2678, %2667 ]
  %2743 = phi float [ %2654, %2651 ], [ %2739, %2712 ], [ %2654, %2710 ], [ %2709, %2697 ], [ %2679, %2667 ]
  %2744 = phi float [ %2655, %2651 ], [ %2655, %2712 ], [ %2655, %2710 ], [ %2655, %2697 ], [ %2689, %2667 ]
  %2745 = phi float [ %2656, %2651 ], [ %2656, %2712 ], [ %2656, %2710 ], [ %2656, %2697 ], [ %2690, %2667 ]
  %2746 = phi float [ %2657, %2651 ], [ %2657, %2712 ], [ %2657, %2710 ], [ %2657, %2697 ], [ %2691, %2667 ]
  %2747 = phi float [ %1867, %2651 ], [ %1867, %2712 ], [ %1867, %2710 ], [ %1867, %2697 ], [ %2682, %2667 ]
  %2748 = phi float [ %1870, %2651 ], [ %1870, %2712 ], [ %1870, %2710 ], [ %1870, %2697 ], [ %2694, %2667 ]
  %2749 = and i32 %2659, 12
  %2750 = icmp eq i32 %2749, 12
  br i1 %2750, label %2823, label %2751

; <label>:2751                                    ; preds = %2740
  %2752 = and i32 %2659, 2097184
  %2753 = icmp eq i32 %2752, 2097184
  %2754 = select i1 %2753, float %2168, float 0.000000e+00
  %2755 = and i32 %2659, 4194336
  %2756 = icmp eq i32 %2755, 4194336
  %2757 = select i1 %2756, float %2168, float 0.000000e+00
  %2758 = and i32 %2659, 8388640
  %2759 = icmp eq i32 %2758, 8388640
  %2760 = select i1 %2759, float %2168, float 0.000000e+00
  %2761 = icmp eq i32 %2749, 0
  br i1 %2761, label %2762, label %2775

; <label>:2762                                    ; preds = %2751
  %2763 = fsub fast float %2469, %1859
  %2764 = fsub fast float %2470, %1860
  %2765 = fmul fast float %2754, %2763
  %2766 = fmul fast float %2754, %2764
  %2767 = fadd fast float %2765, %1859
  %2768 = fadd fast float %2766, %1860
  %2769 = fsub fast float %2471, %1869
  %2770 = fmul fast float %2757, %2769
  %2771 = fadd fast float %2770, %1869
  %2772 = fsub fast float %2468, %1868
  %2773 = fmul fast float %2760, %2772
  %2774 = fadd fast float %2773, %1868
  br label %2823

; <label>:2775                                    ; preds = %2751
  %2776 = icmp eq i32 %2749, 4
  br i1 %2776, label %2777, label %2809

; <label>:2777                                    ; preds = %2775
  %2778 = fmul fast float %2754, %2469
  %2779 = fmul fast float %2754, %2470
  %2780 = fadd fast float %2778, %1859
  %2781 = fadd fast float %2779, %1860
  %2782 = call float @dx.op.binary.f32(i32 36, float %1869, float %2471)  ; FMin(a,b)
  %2783 = fsub fast float %2782, %1869
  %2784 = fmul fast float %2783, %2757
  %2785 = fadd fast float %2784, %1869
  %2786 = fadd fast float %2468, %1868
  %2787 = fmul fast float %2786, 0x3FF337FAE0000000
  %2788 = fmul fast float %1868, %1868
  %2789 = fmul fast float %2468, %2468
  %2790 = fadd fast float %2789, %2788
  %2791 = fmul fast float %2790, 0x3FE5152B00000000
  %2792 = fmul fast float %1868, 0xBFCC1F85E0000000
  %2793 = fmul fast float %2792, %2468
  %2794 = fadd fast float %2793, 0xBFE1363700000000
  %2795 = fadd fast float %2794, %2787
  %2796 = fsub fast float %2795, %2791
  %2797 = fmul fast float %2786, 0x3FBA6F0D00000000
  %2798 = fmul fast float %2790, 0x3FD0432880000000
  %2799 = fmul fast float %1868, 0xBFEF110800000000
  %2800 = fmul fast float %2799, %2468
  %2801 = fadd fast float %2800, 1.000000e+00
  %2802 = fsub fast float %2801, %2797
  %2803 = fadd fast float %2802, %2798
  %2804 = fdiv fast float %2796, %2803
  %2805 = call float @dx.op.unary.f32(i32 7, float %2804)  ; Saturate(value)
  %2806 = fsub fast float %2805, %1868
  %2807 = fmul fast float %2806, %2760
  %2808 = fadd fast float %2807, %1868
  br label %2823

; <label>:2809                                    ; preds = %2775
  %2810 = icmp eq i32 %2749, 8
  br i1 %2810, label %2811, label %2823

; <label>:2811                                    ; preds = %2809
  %2812 = fmul fast float %2754, %2469
  %2813 = fmul fast float %2754, %2470
  %2814 = fadd fast float %2812, %1859
  %2815 = fadd fast float %2813, %1860
  %2816 = call float @dx.op.binary.f32(i32 36, float %1869, float %2471)  ; FMin(a,b)
  %2817 = fsub fast float %2816, %1869
  %2818 = fmul fast float %2817, %2757
  %2819 = fadd fast float %2818, %1869
  %2820 = fsub fast float %2468, %1868
  %2821 = fmul fast float %2760, %2820
  %2822 = fadd fast float %2821, %1868
  br label %2823

; <label>:2823                                    ; preds = %2811, %2809, %2777, %2762, %2740, %2167, %1871, %1858
  %2824 = phi float [ %1859, %2740 ], [ %1859, %2167 ], [ %1859, %1858 ], [ %2814, %2811 ], [ %1859, %2809 ], [ %2780, %2777 ], [ %2767, %2762 ], [ %1859, %1871 ]
  %2825 = phi float [ %1860, %2740 ], [ %1860, %2167 ], [ %1860, %1858 ], [ %2815, %2811 ], [ %1860, %2809 ], [ %2781, %2777 ], [ %2768, %2762 ], [ %1860, %1871 ]
  %2826 = phi float [ %2741, %2740 ], [ %1861, %2167 ], [ %1861, %1858 ], [ %2741, %2811 ], [ %2741, %2809 ], [ %2741, %2777 ], [ %2741, %2762 ], [ %1861, %1871 ]
  %2827 = phi float [ %2742, %2740 ], [ %1862, %2167 ], [ %1862, %1858 ], [ %2742, %2811 ], [ %2742, %2809 ], [ %2742, %2777 ], [ %2742, %2762 ], [ %1862, %1871 ]
  %2828 = phi float [ %2743, %2740 ], [ %1863, %2167 ], [ %1863, %1858 ], [ %2743, %2811 ], [ %2743, %2809 ], [ %2743, %2777 ], [ %2743, %2762 ], [ %1863, %1871 ]
  %2829 = phi float [ %2744, %2740 ], [ %1864, %2167 ], [ %1864, %1858 ], [ %2744, %2811 ], [ %2744, %2809 ], [ %2744, %2777 ], [ %2744, %2762 ], [ %1864, %1871 ]
  %2830 = phi float [ %2745, %2740 ], [ %1865, %2167 ], [ %1865, %1858 ], [ %2745, %2811 ], [ %2745, %2809 ], [ %2745, %2777 ], [ %2745, %2762 ], [ %1865, %1871 ]
  %2831 = phi float [ %2746, %2740 ], [ %1866, %2167 ], [ %1866, %1858 ], [ %2746, %2811 ], [ %2746, %2809 ], [ %2746, %2777 ], [ %2746, %2762 ], [ %1866, %1871 ]
  %2832 = phi float [ %2747, %2740 ], [ %1867, %2167 ], [ %1867, %1858 ], [ %2747, %2811 ], [ %2747, %2809 ], [ %2747, %2777 ], [ %2747, %2762 ], [ %1867, %1871 ]
  %2833 = phi float [ %1868, %2740 ], [ %1868, %2167 ], [ %1868, %1858 ], [ %2822, %2811 ], [ %1868, %2809 ], [ %2808, %2777 ], [ %2774, %2762 ], [ %1868, %1871 ]
  %2834 = phi float [ %1869, %2740 ], [ %1869, %2167 ], [ %1869, %1858 ], [ %2819, %2811 ], [ %1869, %2809 ], [ %2785, %2777 ], [ %2771, %2762 ], [ %1869, %1871 ]
  %2835 = phi float [ %2748, %2740 ], [ %1870, %2167 ], [ %1870, %1858 ], [ %2748, %2811 ], [ %2748, %2809 ], [ %2748, %2777 ], [ %2748, %2762 ], [ %1870, %1871 ]
  br i1 %374, label %3788, label %2836

; <label>:2836                                    ; preds = %2823
  %2837 = icmp ult i32 %425, 4
  %2838 = add i32 %43, 72
  %2839 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %2840 = extractvalue %dx.types.ResRet.i32 %2839, 0
  %2841 = add i32 %43, 76
  %2842 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2841, i32 undef)  ; BufferLoad(srv,index,wot)
  %2843 = extractvalue %dx.types.ResRet.i32 %2842, 0
  %2844 = or i32 %2843, %2840
  %2845 = icmp eq i32 %2844, 0
  br i1 %2845, label %3788, label %2846

; <label>:2846                                    ; preds = %2836
  %2847 = and i32 %2840, 262144
  %2848 = icmp ne i32 %2847, 0
  %2849 = select i1 %2848, float %46, float 1.000000e+00
  %2850 = select i1 %2848, float %47, float 0.000000e+00
  %2851 = select i1 %2848, float %48, float 0.000000e+00
  %2852 = select i1 %2848, float %49, float 1.000000e+00
  %2853 = select i1 %2848, float %50, float %66
  %2854 = select i1 %2848, float %51, float %67
  %2855 = add i32 %43, 332
  %2856 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %2857 = extractvalue %dx.types.ResRet.i32 %2856, 0
  %2858 = lshr i32 %2857, 16
  %2859 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2858)  ; LegacyF16ToF32(value)
  %2860 = fmul fast float %2859, 0x3F50624DE0000000
  %2861 = add i32 %43, 136
  %2862 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %2863 = extractvalue %dx.types.ResRet.i32 %2862, 0
  %2864 = lshr i32 %2863, 16
  %2865 = and i32 %2864, 255
  %2866 = lshr i32 %2863, 24
  %2867 = add i32 %43, 340
  %2868 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2867, i32 undef)  ; BufferLoad(srv,index,wot)
  %2869 = extractvalue %dx.types.ResRet.i32 %2868, 0
  %2870 = and i32 %2869, 65535
  %2871 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2870)  ; LegacyF16ToF32(value)
  %2872 = lshr i32 %2869, 16
  %2873 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2872)  ; LegacyF16ToF32(value)
  %2874 = add i32 %43, 80
  %2875 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2874, i32 undef)  ; BufferLoad(srv,index,wot)
  %2876 = extractvalue %dx.types.ResRet.i32 %2875, 0
  %2877 = lshr i32 %2876, 22
  %2878 = shl nuw nsw i32 %2877, 5
  %2879 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2878)  ; LegacyF16ToF32(value)
  %2880 = shl i32 %2876, 4
  %2881 = and i32 %2880, 32752
  %2882 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2881)  ; LegacyF16ToF32(value)
  %2883 = lshr i32 %2876, 7
  %2884 = and i32 %2883, 32752
  %2885 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2884)  ; LegacyF16ToF32(value)
  %2886 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 360)  ; CBufferLoadLegacy(handle,regIndex)
  %2887 = extractvalue %dx.types.CBufRet.f32 %2886, 3
  %2888 = fmul fast float %2887, 1.000000e+03
  %2889 = fmul fast float %364, %2888
  %2890 = call float @dx.op.unary.f32(i32 22, float %2889)  ; Frc(value)
  %2891 = fadd fast float %2890, %354
  %2892 = fmul fast float %365, %2888
  %2893 = call float @dx.op.unary.f32(i32 22, float %2892)  ; Frc(value)
  %2894 = fadd fast float %2893, %356
  %2895 = fmul fast float %2860, %2888
  %2896 = call float @dx.op.unary.f32(i32 22, float %2895)  ; Frc(value)
  %2897 = fmul fast float %2896, 0x401921FB60000000
  %2898 = fadd fast float %2897, %2879
  %2899 = call float @dx.op.unary.f32(i32 13, float %2898)  ; Sin(value)
  %2900 = call float @dx.op.unary.f32(i32 12, float %2898)  ; Cos(value)
  %2901 = fsub fast float -0.000000e+00, %2899
  %2902 = fadd fast float %2853, -5.000000e-01
  %2903 = fadd fast float %2854, -5.000000e-01
  %2904 = fmul fast float %2871, %2902
  %2905 = fmul fast float %2873, %2903
  %2906 = fadd fast float %2904, 5.000000e-01
  %2907 = fadd fast float %2905, 5.000000e-01
  %2908 = fmul fast float %2882, %2906
  %2909 = fmul fast float %2885, %2907
  %2910 = fmul fast float %2900, %2908
  %2911 = call float @dx.op.tertiary.f32(i32 46, float %2901, float %2909, float %2910)  ; FMad(a,b,c)
  %2912 = fmul fast float %2899, %2908
  %2913 = call float @dx.op.tertiary.f32(i32 46, float %2900, float %2909, float %2912)  ; FMad(a,b,c)
  %2914 = fadd fast float %2891, %2911
  %2915 = fadd fast float %2894, %2913
  %2916 = icmp ugt i32 %2865, 1
  %2917 = icmp ugt i32 %2863, 33554431
  %2918 = or i1 %2917, %2916
  br i1 %2918, label %2919, label %2944

; <label>:2919                                    ; preds = %2846
  %2920 = add i32 %43, 276
  %2921 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2920, i32 undef)  ; BufferLoad(srv,index,wot)
  %2922 = extractvalue %dx.types.ResRet.i32 %2921, 0
  %2923 = lshr i32 %2922, 16
  %2924 = call float @dx.op.legacyF16ToF32(i32 131, i32 %2923)  ; LegacyF16ToF32(value)
  %2925 = fmul fast float %2887, %2924
  %2926 = call float @dx.op.unary.f32(i32 22, float %2925)  ; Frc(value)
  %2927 = mul nuw nsw i32 %2865, %2866
  %2928 = uitofp i32 %2927 to float
  %2929 = fmul fast float %2926, %2928
  %2930 = call float @dx.op.unary.f32(i32 27, float %2929)  ; Round_ni(value)
  %2931 = fptoui float %2930 to i32
  %2932 = urem i32 %2931, %2865
  %2933 = udiv i32 %2931, %2866
  %2934 = call float @dx.op.unary.f32(i32 22, float %2914)  ; Frc(value)
  %2935 = call float @dx.op.unary.f32(i32 22, float %2915)  ; Frc(value)
  %2936 = uitofp i32 %2932 to float
  %2937 = uitofp i32 %2933 to float
  %2938 = fadd fast float %2934, %2936
  %2939 = fadd fast float %2935, %2937
  %2940 = uitofp i32 %2865 to float
  %2941 = uitofp i32 %2866 to float
  %2942 = fdiv fast float %2938, %2940
  %2943 = fdiv fast float %2939, %2941
  br label %2944

; <label>:2944                                    ; preds = %2919, %2846
  %2945 = phi float [ %2942, %2919 ], [ %2914, %2846 ]
  %2946 = phi float [ %2943, %2919 ], [ %2915, %2846 ]
  %2947 = and i32 %2840, 16777216
  %2948 = icmp eq i32 %2947, 0
  br i1 %2948, label %3058, label %2949

; <label>:2949                                    ; preds = %2944
  %2950 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %2951 = extractvalue %dx.types.CBufRet.f32 %2950, 0
  %2952 = extractvalue %dx.types.CBufRet.f32 %2950, 1
  %2953 = extractvalue %dx.types.CBufRet.f32 %2950, 2
  %2954 = fadd fast float %2951, %141
  %2955 = fadd fast float %2952, %142
  %2956 = fadd fast float %2953, %143
  %2957 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 328)  ; CBufferLoadLegacy(handle,regIndex)
  %2958 = extractvalue %dx.types.CBufRet.f32 %2957, 0
  %2959 = call float @dx.op.unary.f32(i32 7, float %2958)  ; Saturate(value)
  %2960 = icmp eq i32 %44, 65535
  br i1 %2960, label %3055, label %2961

; <label>:2961                                    ; preds = %2949
  %2962 = lshr i32 %44, 1
  %2963 = shl i32 %2962, 2
  %2964 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %26, i32 %2963, i32 undef)  ; BufferLoad(srv,index,wot)
  %2965 = extractvalue %dx.types.ResRet.i32 %2964, 0
  %2966 = and i32 %44, 1
  %2967 = icmp ne i32 %2966, 0
  %2968 = lshr i32 %2965, 16
  %2969 = and i32 %2965, 65535
  %2970 = select i1 %2967, i32 %2968, i32 %2969
  %2971 = icmp eq i32 %2970, 65535
  br i1 %2971, label %3051, label %2972

; <label>:2972                                    ; preds = %2961
  %2973 = mul nuw nsw i32 %2970, 40
  %2974 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2973, i32 undef)  ; BufferLoad(srv,index,wot)
  %2975 = extractvalue %dx.types.ResRet.f32 %2974, 0
  %2976 = extractvalue %dx.types.ResRet.f32 %2974, 1
  %2977 = extractvalue %dx.types.ResRet.f32 %2974, 2
  %2978 = add nuw nsw i32 %2973, 12
  %2979 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2978, i32 undef)  ; BufferLoad(srv,index,wot)
  %2980 = extractvalue %dx.types.ResRet.f32 %2979, 0
  %2981 = extractvalue %dx.types.ResRet.f32 %2979, 1
  %2982 = extractvalue %dx.types.ResRet.f32 %2979, 2
  %2983 = add nuw nsw i32 %2973, 24
  %2984 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2983, i32 undef)  ; BufferLoad(srv,index,wot)
  %2985 = extractvalue %dx.types.ResRet.f32 %2984, 0
  %2986 = extractvalue %dx.types.ResRet.f32 %2984, 1
  %2987 = extractvalue %dx.types.ResRet.f32 %2984, 2
  %2988 = add nuw nsw i32 %2973, 36
  %2989 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %27, i32 %2988, i32 undef)  ; BufferLoad(srv,index,wot)
  %2990 = extractvalue %dx.types.ResRet.f32 %2989, 0
  %2991 = fsub fast float %2954, %2975
  %2992 = fsub fast float %2955, %2976
  %2993 = fsub fast float %2956, %2977
  %2994 = fmul fast float %2990, %2991
  %2995 = fmul fast float %2990, %2992
  %2996 = fmul fast float %2990, %2993
  %2997 = call float @dx.op.unary.f32(i32 27, float %2994)  ; Round_ni(value)
  %2998 = call float @dx.op.unary.f32(i32 27, float %2995)  ; Round_ni(value)
  %2999 = call float @dx.op.unary.f32(i32 27, float %2996)  ; Round_ni(value)
  %3000 = fadd fast float %2997, 5.000000e-01
  %3001 = fadd fast float %2998, 5.000000e-01
  %3002 = fadd fast float %2999, 5.000000e-01
  %3003 = fmul fast float %3000, %2980
  %3004 = fmul fast float %3001, %2981
  %3005 = fmul fast float %3002, %2982
  %3006 = shl i32 %44, 2
  %3007 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %25, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3008 = extractvalue %dx.types.ResRet.i32 %3007, 0
  %3009 = add i32 %3008, 0
  %3010 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3009, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3011 = call float @dx.op.unary.f32(i32 22, float %3003)  ; Frc(value)
  %3012 = call float @dx.op.unary.f32(i32 22, float %3004)  ; Frc(value)
  %3013 = call float @dx.op.unary.f32(i32 22, float %3005)  ; Frc(value)
  %3014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3010, %dx.types.Handle %40, float %3011, float %3012, float %3013, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3015 = extractvalue %dx.types.ResRet.f32 %3014, 0
  %3016 = extractvalue %dx.types.ResRet.f32 %3014, 1
  %3017 = extractvalue %dx.types.ResRet.f32 %3014, 2
  %3018 = fmul fast float %3015, 1.023000e+03
  %3019 = fmul fast float %3016, 1.023000e+03
  %3020 = fmul fast float %3017, 1.023000e+03
  %3021 = fadd fast float %3018, 5.000000e-01
  %3022 = fadd fast float %3019, 5.000000e-01
  %3023 = fadd fast float %3020, 5.000000e-01
  %3024 = call float @dx.op.unary.f32(i32 27, float %3021)  ; Round_ni(value)
  %3025 = call float @dx.op.unary.f32(i32 27, float %3022)  ; Round_ni(value)
  %3026 = call float @dx.op.unary.f32(i32 27, float %3023)  ; Round_ni(value)
  %3027 = fsub fast float %2994, %2997
  %3028 = fsub fast float %2995, %2998
  %3029 = fsub fast float %2996, %2999
  %3030 = fmul fast float %3027, 7.500000e-01
  %3031 = fmul fast float %3028, 7.500000e-01
  %3032 = fmul fast float %3029, 7.500000e-01
  %3033 = fadd fast float %2997, 1.250000e-01
  %3034 = fadd fast float %3033, %3030
  %3035 = fadd fast float %3034, %3024
  %3036 = fadd fast float %2998, 1.250000e-01
  %3037 = fadd fast float %3036, %3031
  %3038 = fadd fast float %3037, %3025
  %3039 = fadd fast float %2999, 1.250000e-01
  %3040 = fadd fast float %3039, %3032
  %3041 = fadd fast float %3040, %3026
  %3042 = fmul fast float %3035, %2985
  %3043 = fmul fast float %3038, %2986
  %3044 = fmul fast float %3041, %2987
  %3045 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %24, i32 %3006, i32 undef)  ; BufferLoad(srv,index,wot)
  %3046 = extractvalue %dx.types.ResRet.i32 %3045, 0
  %3047 = add i32 %3046, 0
  %3048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 3, i32 %3047, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3049 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %3048, %dx.types.Handle %38, float %3042, float %3043, float %3044, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %3050 = extractvalue %dx.types.ResRet.f32 %3049, 0
  br label %3051

; <label>:3051                                    ; preds = %2972, %2961
  %3052 = phi float [ %3050, %2972 ], [ -1.000000e+00, %2961 ]
  %3053 = fadd fast float %3052, %2959
  %3054 = call float @dx.op.unary.f32(i32 7, float %3053)  ; Saturate(value)
  br label %3055

; <label>:3055                                    ; preds = %3051, %2949
  %3056 = phi float [ %3054, %3051 ], [ %2959, %2949 ]
  %3057 = fmul fast float %3056, %420
  br label %3058

; <label>:3058                                    ; preds = %3055, %2944
  %3059 = phi float [ %3057, %3055 ], [ %420, %2944 ]
  %3060 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3061 = extractvalue %dx.types.ResRet.i32 %3060, 0
  %3062 = and i32 %3061, 256
  %3063 = icmp eq i32 %3062, 0
  br i1 %3063, label %3110, label %3064

; <label>:3064                                    ; preds = %3058
  %3065 = add i32 %43, 452
  %3066 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3065, i32 undef)  ; BufferLoad(srv,index,wot)
  %3067 = extractvalue %dx.types.ResRet.i32 %3066, 0
  %3068 = add i32 %3067, 0
  %3069 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3068, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3070 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3069, %dx.types.Handle %75, float %2945, float %2946, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3071 = extractvalue %dx.types.ResRet.f32 %3070, 0
  %3072 = add i32 %43, 148
  %3073 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3072, i32 undef)  ; BufferLoad(srv,index,wot)
  %3074 = extractvalue %dx.types.ResRet.i32 %3073, 0
  %3075 = shl i32 %3074, 4
  %3076 = and i32 %3075, 32752
  %3077 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3076)  ; LegacyF16ToF32(value)
  %3078 = lshr i32 %3074, 7
  %3079 = and i32 %3078, 32752
  %3080 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3079)  ; LegacyF16ToF32(value)
  %3081 = fsub fast float 1.000000e+00, %3059
  %3082 = call float @dx.op.binary.f32(i32 35, float %3081, float 0x3E7FF19E20000000)  ; FMax(a,b)
  %3083 = bitcast float %3059 to i32
  %3084 = sitofp i32 %3083 to float
  %3085 = fadd fast float %3084, 0xC1CFBF8940000000
  %3086 = fmul fast float %3080, %3085
  %3087 = fadd fast float %3086, 0x41CFBF8940000000
  %3088 = fptosi float %3087 to i32
  %3089 = bitcast i32 %3088 to float
  %3090 = bitcast float %3082 to i32
  %3091 = sitofp i32 %3090 to float
  %3092 = fadd fast float %3091, 0xC1CFBF8940000000
  %3093 = fmul fast float %3092, %3080
  %3094 = fadd fast float %3093, 0x41CFBF8940000000
  %3095 = fptosi float %3094 to i32
  %3096 = bitcast i32 %3095 to float
  %3097 = fmul fast float %3089, %3077
  %3098 = fmul fast float %3096, %3077
  %3099 = fsub fast float %3082, %3097
  %3100 = fadd fast float %3098, %3082
  %3101 = call float @dx.op.unary.f32(i32 7, float %3099)  ; Saturate(value)
  %3102 = call float @dx.op.unary.f32(i32 7, float %3100)  ; Saturate(value)
  %3103 = fsub fast float %3071, %3101
  %3104 = fsub fast float %3102, %3101
  %3105 = bitcast float %3104 to i32
  %3106 = sub nsw i32 2129859010, %3105
  %3107 = bitcast i32 %3106 to float
  %3108 = fmul fast float %3107, %3103
  %3109 = call float @dx.op.unary.f32(i32 7, float %3108)  ; Saturate(value)
  br label %3110

; <label>:3110                                    ; preds = %3064, %3058
  %3111 = phi float [ %3109, %3064 ], [ %3059, %3058 ]
  %3112 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3113 = extractvalue %dx.types.ResRet.i32 %3112, 0
  %3114 = and i32 %3113, 128
  %3115 = icmp eq i32 %3114, 0
  br i1 %3115, label %3132, label %3116

; <label>:3116                                    ; preds = %3110
  %3117 = add i32 %43, 436
  %3118 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3117, i32 undef)  ; BufferLoad(srv,index,wot)
  %3119 = extractvalue %dx.types.ResRet.i32 %3118, 0
  %3120 = add i32 %3119, 0
  %3121 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3120, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3122 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3121, %dx.types.Handle %75, float %2945, float %2946, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3123 = extractvalue %dx.types.ResRet.f32 %3122, 0
  %3124 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3125 = extractvalue %dx.types.ResRet.i32 %3124, 0
  %3126 = and i32 %3125, 524288
  %3127 = icmp ne i32 %3126, 0
  %3128 = fcmp fast ogt float %3123, 0x3FE0101020000000
  %3129 = select i1 %3128, float 1.000000e+00, float 0.000000e+00
  %3130 = select i1 %3127, float %3129, float %3123
  %3131 = fmul fast float %3130, %3111
  br label %3132

; <label>:3132                                    ; preds = %3116, %3110
  %3133 = phi float [ %3131, %3116 ], [ %3111, %3110 ]
  %3134 = fcmp fast ult float %3133, 0x3F70101020000000
  br i1 %3134, label %3788, label %3135

; <label>:3135                                    ; preds = %3132
  %3136 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3137 = extractvalue %dx.types.ResRet.i32 %3136, 0
  %3138 = and i32 %3137, 16
  %3139 = icmp eq i32 %3138, 0
  br i1 %3139, label %3338, label %3140

; <label>:3140                                    ; preds = %3135
  %3141 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2861, i32 undef)  ; BufferLoad(srv,index,wot)
  %3142 = extractvalue %dx.types.ResRet.i32 %3141, 0
  %3143 = add i32 %43, 388
  %3144 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3143, i32 undef)  ; BufferLoad(srv,index,wot)
  %3145 = extractvalue %dx.types.ResRet.i32 %3144, 0
  %3146 = add i32 %3145, 0
  %3147 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3146, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3148 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3147, %dx.types.Handle %74, float %2945, float %2946, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3149 = extractvalue %dx.types.ResRet.f32 %3148, 0
  %3150 = extractvalue %dx.types.ResRet.f32 %3148, 1
  %3151 = extractvalue %dx.types.ResRet.f32 %3148, 2
  %3152 = extractvalue %dx.types.ResRet.f32 %3148, 3
  %3153 = and i32 %3142, 255
  %3154 = uitofp i32 %3153 to float
  %3155 = lshr i32 %3142, 8
  %3156 = and i32 %3155, 255
  %3157 = uitofp i32 %3156 to float
  %3158 = fmul fast float %3152, %3154
  %3159 = fadd fast float %3158, %3157
  %3160 = fmul fast float %3159, 0x3F70101000000000
  %3161 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3162 = extractvalue %dx.types.ResRet.i32 %3161, 0
  %3163 = and i32 %3162, 512
  %3164 = icmp eq i32 %3163, 0
  br i1 %3164, label %3173, label %3165

; <label>:3165                                    ; preds = %3140
  %3166 = add i32 %43, 468
  %3167 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3166, i32 undef)  ; BufferLoad(srv,index,wot)
  %3168 = extractvalue %dx.types.ResRet.i32 %3167, 0
  %3169 = add i32 %3168, 0
  %3170 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3169, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3171 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3170, %dx.types.Handle %75, float %2945, float %2946, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3172 = extractvalue %dx.types.ResRet.f32 %3171, 0
  br label %3173

; <label>:3173                                    ; preds = %3165, %3140
  %3174 = phi float [ %3172, %3165 ], [ 1.000000e+00, %3140 ]
  %3175 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3176 = extractvalue %dx.types.ResRet.i32 %3175, 0
  %3177 = and i32 %3176, 33554432
  %3178 = icmp eq i32 %3177, 0
  br i1 %3178, label %3285, label %3179

; <label>:3179                                    ; preds = %3173
  %3180 = add i32 %43, 272
  %3181 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3180, i32 undef)  ; BufferLoad(srv,index,wot)
  %3182 = extractvalue %dx.types.ResRet.i32 %3181, 0
  %3183 = and i32 %3182, 65535
  %3184 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3183)  ; LegacyF16ToF32(value)
  %3185 = lshr i32 %3182, 16
  %3186 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3185)  ; LegacyF16ToF32(value)
  %3187 = add i32 %43, 276
  %3188 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3187, i32 undef)  ; BufferLoad(srv,index,wot)
  %3189 = extractvalue %dx.types.ResRet.i32 %3188, 0
  %3190 = and i32 %3189, 65535
  %3191 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3190)  ; LegacyF16ToF32(value)
  %3192 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %336, i32 undef)  ; BufferLoad(srv,index,wot)
  %3193 = extractvalue %dx.types.ResRet.i32 %3192, 0
  %3194 = lshr i32 %3193, 24
  %3195 = uitofp i32 %3194 to float
  %3196 = fmul fast float %3195, 0x3F70101020000000
  %3197 = and i32 %3193, 255
  %3198 = uitofp i32 %3197 to float
  %3199 = fmul fast float %3198, 0x3F70101020000000
  %3200 = lshr i32 %3193, 8
  %3201 = and i32 %3200, 255
  %3202 = uitofp i32 %3201 to float
  %3203 = fmul fast float %3202, 0x3F70101020000000
  %3204 = lshr i32 %3193, 16
  %3205 = and i32 %3204, 255
  %3206 = uitofp i32 %3205 to float
  %3207 = fmul fast float %3206, 0x3F70101020000000
  %3208 = add i32 %43, 268
  %3209 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3208, i32 undef)  ; BufferLoad(srv,index,wot)
  %3210 = extractvalue %dx.types.ResRet.i32 %3209, 0
  %3211 = lshr i32 %3210, 24
  %3212 = uitofp i32 %3211 to float
  %3213 = fmul fast float %3212, 0x3F70101020000000
  %3214 = and i32 %3210, 255
  %3215 = uitofp i32 %3214 to float
  %3216 = fmul fast float %3215, 0x3F70101020000000
  %3217 = lshr i32 %3210, 8
  %3218 = and i32 %3217, 255
  %3219 = uitofp i32 %3218 to float
  %3220 = fmul fast float %3219, 0x3F70101020000000
  %3221 = lshr i32 %3210, 16
  %3222 = and i32 %3221, 255
  %3223 = uitofp i32 %3222 to float
  %3224 = fmul fast float %3223, 0x3F70101020000000
  %3225 = bitcast float %3149 to i32
  %3226 = ashr i32 %3225, 1
  %3227 = sub nsw i32 1597463174, %3226
  %3228 = bitcast i32 %3227 to float
  %3229 = fmul fast float %3149, 5.000000e-01
  %3230 = fmul fast float %3228, %3228
  %3231 = fmul fast float %3230, %3229
  %3232 = fsub fast float 1.500000e+00, %3231
  %3233 = fmul fast float %3228, %3149
  %3234 = fmul fast float %3233, %3232
  %3235 = bitcast float %3150 to i32
  %3236 = ashr i32 %3235, 1
  %3237 = sub nsw i32 1597463174, %3236
  %3238 = bitcast i32 %3237 to float
  %3239 = fmul fast float %3150, 5.000000e-01
  %3240 = fmul fast float %3238, %3238
  %3241 = fmul fast float %3240, %3239
  %3242 = fsub fast float 1.500000e+00, %3241
  %3243 = fmul fast float %3238, %3150
  %3244 = fmul fast float %3243, %3242
  %3245 = bitcast float %3151 to i32
  %3246 = ashr i32 %3245, 1
  %3247 = sub nsw i32 1597463174, %3246
  %3248 = bitcast i32 %3247 to float
  %3249 = fmul fast float %3151, 5.000000e-01
  %3250 = fmul fast float %3248, %3248
  %3251 = fmul fast float %3250, %3249
  %3252 = fsub fast float 1.500000e+00, %3251
  %3253 = fmul fast float %3248, %3151
  %3254 = fmul fast float %3253, %3252
  %3255 = fsub fast float %3234, %3216
  %3256 = fsub fast float %3244, %3220
  %3257 = fsub fast float %3254, %3224
  %3258 = fmul fast float %3255, %3184
  %3259 = fmul fast float %3256, %3186
  %3260 = fmul fast float %3257, %3191
  %3261 = fadd fast float %3258, %3199
  %3262 = fadd fast float %3259, %3203
  %3263 = fadd fast float %3260, %3207
  %3264 = call float @dx.op.unary.f32(i32 7, float %3261)  ; Saturate(value)
  %3265 = call float @dx.op.unary.f32(i32 7, float %3262)  ; Saturate(value)
  %3266 = call float @dx.op.unary.f32(i32 7, float %3263)  ; Saturate(value)
  %3267 = fmul fast float %3264, %3264
  %3268 = fmul fast float %3265, %3265
  %3269 = fmul fast float %3266, %3266
  %3270 = fsub fast float %3267, %3149
  %3271 = fsub fast float %3268, %3150
  %3272 = fsub fast float %3269, %3151
  %3273 = fmul fast float %3270, %3174
  %3274 = fmul fast float %3271, %3174
  %3275 = fmul fast float %3272, %3174
  %3276 = fadd fast float %3273, %3149
  %3277 = fadd fast float %3274, %3150
  %3278 = fadd fast float %3275, %3151
  %3279 = fadd fast float %3196, %3160
  %3280 = fsub fast float %3279, %3213
  %3281 = call float @dx.op.unary.f32(i32 7, float %3280)  ; Saturate(value)
  %3282 = fsub fast float %3281, %3160
  %3283 = fmul fast float %3282, %3174
  %3284 = fadd fast float %3283, %3160
  br label %3338

; <label>:3285                                    ; preds = %3173
  %3286 = and i32 %3176, 134217728
  %3287 = icmp eq i32 %3286, 0
  br i1 %3287, label %3322, label %3288

; <label>:3288                                    ; preds = %3285
  %3289 = call float @dx.op.unary.f32(i32 24, float %341)  ; Sqrt(value)
  %3290 = call float @dx.op.unary.f32(i32 24, float %345)  ; Sqrt(value)
  %3291 = call float @dx.op.unary.f32(i32 24, float %349)  ; Sqrt(value)
  %3292 = fadd fast float %3289, -5.000000e-01
  %3293 = fadd fast float %3290, -5.000000e-01
  %3294 = fadd fast float %3291, -5.000000e-01
  %3295 = fmul fast float %3292, %3174
  %3296 = fmul fast float %3293, %3174
  %3297 = fmul fast float %3294, %3174
  %3298 = fadd fast float %3295, 5.000000e-01
  %3299 = fadd fast float %3296, 5.000000e-01
  %3300 = fadd fast float %3297, 5.000000e-01
  %3301 = call float @dx.op.unary.f32(i32 24, float %3149)  ; Sqrt(value)
  %3302 = call float @dx.op.unary.f32(i32 24, float %3150)  ; Sqrt(value)
  %3303 = call float @dx.op.unary.f32(i32 24, float %3151)  ; Sqrt(value)
  %3304 = fmul fast float %3298, 2.000000e+00
  %3305 = fsub fast float 1.000000e+00, %3304
  %3306 = fmul fast float %3305, %3301
  %3307 = fadd fast float %3306, %3304
  %3308 = fmul fast float %3307, %3301
  %3309 = fmul fast float %3299, 2.000000e+00
  %3310 = fsub fast float 1.000000e+00, %3309
  %3311 = fmul fast float %3310, %3302
  %3312 = fadd fast float %3311, %3309
  %3313 = fmul fast float %3312, %3302
  %3314 = fmul fast float %3300, 2.000000e+00
  %3315 = fsub fast float 1.000000e+00, %3314
  %3316 = fmul fast float %3315, %3303
  %3317 = fadd fast float %3316, %3314
  %3318 = fmul fast float %3317, %3303
  %3319 = fmul fast float %3308, %3308
  %3320 = fmul fast float %3313, %3313
  %3321 = fmul fast float %3318, %3318
  br label %3338

; <label>:3322                                    ; preds = %3285
  %3323 = fmul fast float %341, %341
  %3324 = fmul fast float %345, %345
  %3325 = fmul fast float %349, %349
  %3326 = fadd fast float %3323, -1.000000e+00
  %3327 = fadd fast float %3324, -1.000000e+00
  %3328 = fadd fast float %3325, -1.000000e+00
  %3329 = fmul fast float %3174, %3326
  %3330 = fmul fast float %3174, %3327
  %3331 = fmul fast float %3174, %3328
  %3332 = fadd fast float %3329, 1.000000e+00
  %3333 = fadd fast float %3330, 1.000000e+00
  %3334 = fadd fast float %3331, 1.000000e+00
  %3335 = fmul fast float %3332, %3149
  %3336 = fmul fast float %3333, %3150
  %3337 = fmul fast float %3334, %3151
  br label %3338

; <label>:3338                                    ; preds = %3322, %3288, %3179, %3135
  %3339 = phi float [ %3284, %3179 ], [ %3160, %3288 ], [ %3160, %3322 ], [ 0x3FA23C0BE0000000, %3135 ]
  %3340 = phi float [ %3276, %3179 ], [ %3319, %3288 ], [ %3335, %3322 ], [ 1.000000e+00, %3135 ]
  %3341 = phi float [ %3277, %3179 ], [ %3320, %3288 ], [ %3336, %3322 ], [ 1.000000e+00, %3135 ]
  %3342 = phi float [ %3278, %3179 ], [ %3321, %3288 ], [ %3337, %3322 ], [ 1.000000e+00, %3135 ]
  %3343 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %3344 = extractvalue %dx.types.CBufRet.i32 %3343, 1
  %3345 = and i32 %3344, 1
  %3346 = icmp ne i32 %3345, 0
  %3347 = add i32 %43, 356
  %3348 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3347, i32 undef)  ; BufferLoad(srv,index,wot)
  %3349 = extractvalue %dx.types.ResRet.i32 %3348, 0
  %3350 = and i32 %3349, 32
  %3351 = icmp ne i32 %3350, 0
  %3352 = and i1 %3346, %3351
  %3353 = select i1 %3352, float 1.000000e+00, float %3340
  %3354 = select i1 %3352, float 0x3FD3333340000000, float %3341
  %3355 = select i1 %3352, float 0x3FD3333340000000, float %3342
  %3356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3357 = extractvalue %dx.types.ResRet.i32 %3356, 0
  %3358 = and i32 %3357, 32
  %3359 = icmp eq i32 %3358, 0
  br i1 %3359, label %3432, label %3360

; <label>:3360                                    ; preds = %3338
  %3361 = add i32 %43, 140
  %3362 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3361, i32 undef)  ; BufferLoad(srv,index,wot)
  %3363 = extractvalue %dx.types.ResRet.i32 %3362, 0
  %3364 = add i32 %43, 404
  %3365 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3364, i32 undef)  ; BufferLoad(srv,index,wot)
  %3366 = extractvalue %dx.types.ResRet.i32 %3365, 0
  %3367 = add i32 %3366, 0
  %3368 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3367, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3369 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3368, %dx.types.Handle %74, float %2945, float %2946, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3370 = extractvalue %dx.types.ResRet.f32 %3369, 0
  %3371 = extractvalue %dx.types.ResRet.f32 %3369, 1
  %3372 = extractvalue %dx.types.ResRet.f32 %3369, 2
  %3373 = extractvalue %dx.types.ResRet.f32 %3369, 3
  %3374 = and i32 %3363, 255
  %3375 = uitofp i32 %3374 to float
  %3376 = lshr i32 %3363, 8
  %3377 = and i32 %3376, 255
  %3378 = uitofp i32 %3377 to float
  %3379 = lshr i32 %3363, 16
  %3380 = and i32 %3379, 255
  %3381 = uitofp i32 %3380 to float
  %3382 = fmul fast float %3381, 0x3F70101000000000
  %3383 = fmul fast float %3370, %3375
  %3384 = fadd fast float %3383, %3378
  %3385 = fmul fast float %3384, 0x3F70101000000000
  %3386 = fadd fast float %3371, -5.000000e-01
  %3387 = fadd fast float %3373, -5.000000e-01
  %3388 = fmul fast float %3386, %3382
  %3389 = fmul fast float %3387, %3382
  %3390 = fadd fast float %3388, 5.000000e-01
  %3391 = fadd fast float %3389, 5.000000e-01
  %3392 = fmul fast float %3390, 2.000000e+00
  %3393 = fadd fast float %3392, -1.000000e+00
  %3394 = fmul fast float %3391, 2.000000e+00
  %3395 = fadd fast float %3394, -1.000000e+00
  %3396 = fadd fast float %3393, %3395
  %3397 = fmul fast float %3396, 5.000000e-01
  %3398 = fsub fast float %3393, %3395
  %3399 = fmul fast float %3398, 5.000000e-01
  %3400 = call float @dx.op.unary.f32(i32 6, float %3397)  ; FAbs(value)
  %3401 = fsub fast float 1.000000e+00, %3400
  %3402 = call float @dx.op.unary.f32(i32 6, float %3399)  ; FAbs(value)
  %3403 = fsub fast float %3401, %3402
  %3404 = call float @dx.op.dot3.f32(i32 55, float %3397, float %3399, float %3403, float %3397, float %3399, float %3403)  ; Dot3(ax,ay,az,bx,by,bz)
  %3405 = call float @dx.op.unary.f32(i32 25, float %3404)  ; Rsqrt(value)
  %3406 = fmul fast float %3397, %3405
  %3407 = fmul fast float %3399, %3405
  %3408 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3409 = extractvalue %dx.types.ResRet.i32 %3408, 0
  %3410 = and i32 %3409, 67108864
  %3411 = icmp eq i32 %3410, 0
  br i1 %3411, label %3428, label %3412

; <label>:3412                                    ; preds = %3360
  %3413 = add i32 %43, 328
  %3414 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3413, i32 undef)  ; BufferLoad(srv,index,wot)
  %3415 = extractvalue %dx.types.ResRet.i32 %3414, 0
  %3416 = and i32 %3415, 65535
  %3417 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3416)  ; LegacyF16ToF32(value)
  %3418 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2855, i32 undef)  ; BufferLoad(srv,index,wot)
  %3419 = extractvalue %dx.types.ResRet.i32 %3418, 0
  %3420 = and i32 %3419, 65535
  %3421 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3420)  ; LegacyF16ToF32(value)
  %3422 = lshr i32 %3415, 16
  %3423 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3422)  ; LegacyF16ToF32(value)
  %3424 = fsub fast float %3385, %3423
  %3425 = fmul fast float %3424, %3417
  %3426 = fadd fast float %3425, %3421
  %3427 = call float @dx.op.unary.f32(i32 7, float %3426)  ; Saturate(value)
  br label %3428

; <label>:3428                                    ; preds = %3412, %3360
  %3429 = phi float [ %3427, %3412 ], [ %3385, %3360 ]
  %3430 = call float @dx.op.dot2.f32(i32 54, float %3406, float %3407, float %2849, float %2850)  ; Dot2(ax,ay,bx,by)
  %3431 = call float @dx.op.dot2.f32(i32 54, float %3406, float %3407, float %2851, float %2852)  ; Dot2(ax,ay,bx,by)
  br label %3432

; <label>:3432                                    ; preds = %3428, %3338
  %3433 = phi float [ %3429, %3428 ], [ 0x3FD6666660000000, %3338 ]
  %3434 = phi float [ %3430, %3428 ], [ 0.000000e+00, %3338 ]
  %3435 = phi float [ %3431, %3428 ], [ 0.000000e+00, %3338 ]
  %3436 = phi float [ %3372, %3428 ], [ 1.000000e+00, %3338 ]
  %3437 = add i32 %43, 208
  %3438 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3439 = extractvalue %dx.types.ResRet.i32 %3438, 0
  %3440 = lshr i32 %3439, 22
  %3441 = shl nuw nsw i32 %3440, 5
  %3442 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3441)  ; LegacyF16ToF32(value)
  %3443 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3444 = extractvalue %dx.types.ResRet.i32 %3443, 0
  %3445 = and i32 %3444, 64
  %3446 = icmp eq i32 %3445, 0
  br i1 %3446, label %3480, label %3447

; <label>:3447                                    ; preds = %3432
  %3448 = add i32 %43, 420
  %3449 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3448, i32 undef)  ; BufferLoad(srv,index,wot)
  %3450 = extractvalue %dx.types.ResRet.i32 %3449, 0
  %3451 = add i32 %3450, 0
  %3452 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3451, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3453 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3454 = extractvalue %dx.types.ResRet.i32 %3453, 0
  %3455 = and i32 %3454, 131072
  %3456 = icmp eq i32 %3455, 0
  %3457 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3452, %dx.types.Handle %74, float %2945, float %2946, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3458 = extractvalue %dx.types.ResRet.f32 %3457, 0
  %3459 = extractvalue %dx.types.ResRet.f32 %3457, 1
  %3460 = extractvalue %dx.types.ResRet.f32 %3457, 2
  %3461 = fmul fast float %3458, %329
  %3462 = fmul fast float %3459, %332
  %3463 = fmul fast float %3460, %335
  br i1 %3456, label %3470, label %3464

; <label>:3464                                    ; preds = %3447
  %3465 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %3466 = extractvalue %dx.types.CBufRet.f32 %3465, 0
  %3467 = fmul fast float %3466, %3461
  %3468 = fmul fast float %3466, %3462
  %3469 = fmul fast float %3466, %3463
  br label %3470

; <label>:3470                                    ; preds = %3464, %3447
  %3471 = phi float [ %3467, %3464 ], [ %3461, %3447 ]
  %3472 = phi float [ %3468, %3464 ], [ %3462, %3447 ]
  %3473 = phi float [ %3469, %3464 ], [ %3463, %3447 ]
  %3474 = fmul fast float %3471, %3442
  %3475 = select i1 %183, float %3474, float %3471
  %3476 = call float @dx.op.dot3.f32(i32 55, float %3475, float %3472, float %3473, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3477 = select i1 %183, float 0.000000e+00, float %3471
  %3478 = select i1 %183, float %3476, float %3472
  %3479 = select i1 %183, float 0.000000e+00, float %3473
  br label %3480

; <label>:3480                                    ; preds = %3470, %3432
  %3481 = phi float [ %3477, %3470 ], [ 0.000000e+00, %3432 ]
  %3482 = phi float [ %3478, %3470 ], [ 0.000000e+00, %3432 ]
  %3483 = phi float [ %3479, %3470 ], [ 0.000000e+00, %3432 ]
  %3484 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3485 = extractvalue %dx.types.ResRet.i32 %3484, 0
  %3486 = and i32 %3485, 1024
  %3487 = icmp eq i32 %3486, 0
  br i1 %3487, label %3518, label %3488

; <label>:3488                                    ; preds = %3480
  %3489 = add i32 %43, 200
  %3490 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3489, i32 undef)  ; BufferLoad(srv,index,wot)
  %3491 = extractvalue %dx.types.ResRet.i32 %3490, 0
  %3492 = and i32 %3491, 255
  %3493 = uitofp i32 %3492 to float
  %3494 = fmul fast float %3493, 0x3F70101020000000
  %3495 = lshr i32 %3491, 8
  %3496 = and i32 %3495, 255
  %3497 = uitofp i32 %3496 to float
  %3498 = fmul fast float %3497, 0x3F70101020000000
  %3499 = lshr i32 %3491, 16
  %3500 = and i32 %3499, 255
  %3501 = uitofp i32 %3500 to float
  %3502 = fmul fast float %3501, 0x3F70101020000000
  %3503 = fmul fast float %3494, %3494
  %3504 = fmul fast float %3498, %3498
  %3505 = fmul fast float %3502, %3502
  %3506 = add i32 %43, 484
  %3507 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3506, i32 undef)  ; BufferLoad(srv,index,wot)
  %3508 = extractvalue %dx.types.ResRet.i32 %3507, 0
  %3509 = add i32 %3508, 0
  %3510 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3509, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3511 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3510, %dx.types.Handle %75, float %2945, float %2946, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3512 = extractvalue %dx.types.ResRet.f32 %3511, 0
  %3513 = extractvalue %dx.types.ResRet.f32 %3511, 1
  %3514 = extractvalue %dx.types.ResRet.f32 %3511, 2
  %3515 = fmul fast float %3503, %3512
  %3516 = fmul fast float %3504, %3513
  %3517 = fmul fast float %3505, %3514
  br label %3518

; <label>:3518                                    ; preds = %3488, %3480
  %3519 = phi float [ %3515, %3488 ], [ 0.000000e+00, %3480 ]
  %3520 = phi float [ %3516, %3488 ], [ 0.000000e+00, %3480 ]
  %3521 = phi float [ %3517, %3488 ], [ 0.000000e+00, %3480 ]
  %3522 = fcmp fast ogt float %3519, 0.000000e+00
  %3523 = fcmp fast ogt float %3520, 0.000000e+00
  %3524 = fcmp fast ogt float %3521, 0.000000e+00
  %3525 = call float @dx.op.unary.f32(i32 23, float %3519)  ; Log(value)
  %3526 = call float @dx.op.unary.f32(i32 23, float %3520)  ; Log(value)
  %3527 = call float @dx.op.unary.f32(i32 23, float %3521)  ; Log(value)
  %3528 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3529 = extractvalue %dx.types.ResRet.i32 %3528, 0
  %3530 = lshr i32 %3529, 7
  %3531 = and i32 %3530, 32752
  %3532 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3531)  ; LegacyF16ToF32(value)
  %3533 = fmul fast float %3525, 0xBFE62E4300000000
  %3534 = fmul fast float %3533, %3532
  %3535 = fmul fast float %3526, 0xBFE62E4300000000
  %3536 = fmul fast float %3535, %3532
  %3537 = fmul fast float %3527, 0xBFE62E4300000000
  %3538 = fmul fast float %3537, %3532
  %3539 = select i1 %3522, float %3534, float 1.270000e+02
  %3540 = select i1 %3523, float %3536, float 1.270000e+02
  %3541 = select i1 %3524, float %3538, float 1.270000e+02
  %3542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3543 = extractvalue %dx.types.ResRet.i32 %3542, 0
  %3544 = and i32 %3543, 10240
  %3545 = icmp eq i32 %3544, 0
  br i1 %3545, label %3566, label %3546

; <label>:3546                                    ; preds = %3518
  %3547 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3548 = extractvalue %dx.types.ResRet.i32 %3547, 0
  %3549 = and i32 %3548, 2048
  %3550 = icmp eq i32 %3549, 0
  br i1 %3550, label %3566, label %3551

; <label>:3551                                    ; preds = %3546
  %3552 = add i32 %43, 500
  %3553 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3552, i32 undef)  ; BufferLoad(srv,index,wot)
  %3554 = extractvalue %dx.types.ResRet.i32 %3553, 0
  %3555 = add i32 %3554, 0
  %3556 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 0, i32 %3555, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %3557 = call %dx.types.ResRet.f32 @dx.op.sample.f32(i32 60, %dx.types.Handle %3556, %dx.types.Handle %75, float %2945, float %2946, float undef, float undef, i32 0, i32 0, i32 undef, float undef)  ; Sample(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,clamp)
  %3558 = extractvalue %dx.types.ResRet.f32 %3557, 3
  %3559 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3437, i32 undef)  ; BufferLoad(srv,index,wot)
  %3560 = extractvalue %dx.types.ResRet.i32 %3559, 0
  %3561 = shl i32 %3560, 4
  %3562 = and i32 %3561, 32752
  %3563 = call float @dx.op.legacyF16ToF32(i32 131, i32 %3562)  ; LegacyF16ToF32(value)
  %3564 = fmul fast float %3563, %3558
  %3565 = call float @dx.op.binary.f32(i32 35, float %3564, float 0x3F70101020000000)  ; FMax(a,b)
  br label %3566

; <label>:3566                                    ; preds = %3551, %3546, %3518
  %3567 = phi float [ %3565, %3551 ], [ 0x3F70101020000000, %3546 ], [ 0x3F70101020000000, %3518 ]
  %3568 = add i32 %43, 144
  %3569 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3568, i32 undef)  ; BufferLoad(srv,index,wot)
  %3570 = extractvalue %dx.types.ResRet.i32 %3569, 0
  %3571 = and i32 %3570, 255
  %3572 = uitofp i32 %3571 to float
  %3573 = lshr i32 %3570, 8
  %3574 = and i32 %3573, 255
  %3575 = uitofp i32 %3574 to float
  %3576 = call float @dx.op.dot3.f32(i32 55, float %3353, float %3354, float %3355, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %3577 = fmul fast float %3575, %3576
  %3578 = fadd fast float %3577, %3572
  %3579 = fmul fast float %3578, 0x3F70101020000000
  %3580 = call float @dx.op.unary.f32(i32 7, float %3579)  ; Saturate(value)
  br i1 %2837, label %3581, label %3616

; <label>:3581                                    ; preds = %3566
  %3582 = fmul fast float %3567, 2.000000e+00
  %3583 = fcmp fast olt float %3539, 1.270000e+02
  %3584 = fcmp fast olt float %3540, 1.270000e+02
  %3585 = fcmp fast olt float %3541, 1.270000e+02
  %3586 = fmul fast float %3539, 0xBFF7154760000000
  %3587 = fmul fast float %3586, %3582
  %3588 = fmul fast float %3540, 0xBFF7154760000000
  %3589 = fmul fast float %3588, %3582
  %3590 = fmul fast float %3541, 0xBFF7154760000000
  %3591 = fmul fast float %3590, %3582
  %3592 = call float @dx.op.unary.f32(i32 21, float %3587)  ; Exp(value)
  %3593 = call float @dx.op.unary.f32(i32 21, float %3589)  ; Exp(value)
  %3594 = call float @dx.op.unary.f32(i32 21, float %3591)  ; Exp(value)
  %3595 = call float @dx.op.unary.f32(i32 7, float %3592)  ; Saturate(value)
  %3596 = call float @dx.op.unary.f32(i32 7, float %3593)  ; Saturate(value)
  %3597 = call float @dx.op.unary.f32(i32 7, float %3594)  ; Saturate(value)
  %3598 = fadd fast float %3595, -1.000000e+00
  %3599 = select i1 %3583, float %3598, float -1.000000e+00
  %3600 = fadd fast float %3596, -1.000000e+00
  %3601 = select i1 %3584, float %3600, float -1.000000e+00
  %3602 = fadd fast float %3597, -1.000000e+00
  %3603 = select i1 %3585, float %3602, float -1.000000e+00
  %3604 = fmul fast float %3599, %3133
  %3605 = fmul fast float %3601, %3133
  %3606 = fmul fast float %3603, %3133
  %3607 = fadd fast float %3604, 1.000000e+00
  %3608 = fadd fast float %3605, 1.000000e+00
  %3609 = fadd fast float %3606, 1.000000e+00
  %3610 = fmul fast float %3607, %2826
  %3611 = fmul fast float %3608, %2827
  %3612 = fmul fast float %3609, %2828
  %3613 = fmul fast float %3607, %2829
  %3614 = fmul fast float %3608, %2830
  %3615 = fmul fast float %3609, %2831
  br label %3616

; <label>:3616                                    ; preds = %3581, %3566
  %3617 = phi float [ %3610, %3581 ], [ %2826, %3566 ]
  %3618 = phi float [ %3611, %3581 ], [ %2827, %3566 ]
  %3619 = phi float [ %3612, %3581 ], [ %2828, %3566 ]
  %3620 = phi float [ %3613, %3581 ], [ %2829, %3566 ]
  %3621 = phi float [ %3614, %3581 ], [ %2830, %3566 ]
  %3622 = phi float [ %3615, %3581 ], [ %2831, %3566 ]
  %3623 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %2838, i32 undef)  ; BufferLoad(srv,index,wot)
  %3624 = extractvalue %dx.types.ResRet.i32 %3623, 0
  %3625 = and i32 %3624, 3
  %3626 = icmp eq i32 %3625, 3
  br i1 %3626, label %3705, label %3627

; <label>:3627                                    ; preds = %3616
  %3628 = and i32 %3624, 16
  %3629 = icmp ne i32 %3628, 0
  %3630 = select i1 %3629, float %3133, float 0.000000e+00
  %3631 = icmp eq i32 %3625, 0
  br i1 %3631, label %3632, label %3660

; <label>:3632                                    ; preds = %3627
  %3633 = and i32 %3624, 64
  %3634 = icmp ne i32 %3633, 0
  %3635 = select i1 %3634, float %3133, float 0.000000e+00
  %3636 = fsub fast float %3353, %3617
  %3637 = fsub fast float %3354, %3618
  %3638 = fsub fast float %3355, %3619
  %3639 = fmul fast float %3630, %3636
  %3640 = fmul fast float %3630, %3637
  %3641 = fmul fast float %3630, %3638
  %3642 = fadd fast float %3639, %3617
  %3643 = fadd fast float %3640, %3618
  %3644 = fadd fast float %3641, %3619
  %3645 = fsub fast float %3339, %2832
  %3646 = fmul fast float %3630, %3645
  %3647 = fadd fast float %3646, %2832
  %3648 = fsub fast float %3481, %3620
  %3649 = fsub fast float %3482, %3621
  %3650 = fsub fast float %3483, %3622
  %3651 = fmul fast float %3635, %3648
  %3652 = fmul fast float %3635, %3649
  %3653 = fmul fast float %3635, %3650
  %3654 = fadd fast float %3651, %3620
  %3655 = fadd fast float %3652, %3621
  %3656 = fadd fast float %3653, %3622
  %3657 = fsub fast float %3580, %2835
  %3658 = fmul fast float %3630, %3657
  %3659 = fadd fast float %3658, %2835
  br label %3705

; <label>:3660                                    ; preds = %3627
  %3661 = icmp eq i32 %3625, 1
  br i1 %3661, label %3662, label %3675

; <label>:3662                                    ; preds = %3660
  %3663 = fadd fast float %3353, -1.000000e+00
  %3664 = fadd fast float %3354, -1.000000e+00
  %3665 = fadd fast float %3355, -1.000000e+00
  %3666 = fmul fast float %3630, %3663
  %3667 = fmul fast float %3630, %3664
  %3668 = fmul fast float %3630, %3665
  %3669 = fadd fast float %3666, 1.000000e+00
  %3670 = fadd fast float %3667, 1.000000e+00
  %3671 = fadd fast float %3668, 1.000000e+00
  %3672 = fmul fast float %3669, %3617
  %3673 = fmul fast float %3670, %3618
  %3674 = fmul fast float %3671, %3619
  br label %3705

; <label>:3675                                    ; preds = %3660
  %3676 = icmp eq i32 %3625, 2
  br i1 %3676, label %3677, label %3705

; <label>:3677                                    ; preds = %3675
  %3678 = call float @dx.op.unary.f32(i32 24, float %3353)  ; Sqrt(value)
  %3679 = call float @dx.op.unary.f32(i32 24, float %3354)  ; Sqrt(value)
  %3680 = call float @dx.op.unary.f32(i32 24, float %3355)  ; Sqrt(value)
  %3681 = fadd fast float %3678, -5.000000e-01
  %3682 = fadd fast float %3679, -5.000000e-01
  %3683 = fadd fast float %3680, -5.000000e-01
  %3684 = fmul fast float %3681, %3630
  %3685 = fmul fast float %3682, %3630
  %3686 = fmul fast float %3683, %3630
  %3687 = fadd fast float %3684, 5.000000e-01
  %3688 = fadd fast float %3685, 5.000000e-01
  %3689 = fadd fast float %3686, 5.000000e-01
  %3690 = fmul fast float %3687, 2.000000e+00
  %3691 = fsub fast float 1.000000e+00, %3690
  %3692 = fmul fast float %3691, %3617
  %3693 = fadd fast float %3692, %3690
  %3694 = fmul fast float %3693, %3617
  %3695 = fmul fast float %3688, 2.000000e+00
  %3696 = fsub fast float 1.000000e+00, %3695
  %3697 = fmul fast float %3696, %3618
  %3698 = fadd fast float %3697, %3695
  %3699 = fmul fast float %3698, %3618
  %3700 = fmul fast float %3689, 2.000000e+00
  %3701 = fsub fast float 1.000000e+00, %3700
  %3702 = fmul fast float %3701, %3619
  %3703 = fadd fast float %3702, %3700
  %3704 = fmul fast float %3703, %3619
  br label %3705

; <label>:3705                                    ; preds = %3677, %3675, %3662, %3632, %3616
  %3706 = phi float [ %3617, %3616 ], [ %3694, %3677 ], [ %3617, %3675 ], [ %3672, %3662 ], [ %3642, %3632 ]
  %3707 = phi float [ %3618, %3616 ], [ %3699, %3677 ], [ %3618, %3675 ], [ %3673, %3662 ], [ %3643, %3632 ]
  %3708 = phi float [ %3619, %3616 ], [ %3704, %3677 ], [ %3619, %3675 ], [ %3674, %3662 ], [ %3644, %3632 ]
  %3709 = phi float [ %3620, %3616 ], [ %3620, %3677 ], [ %3620, %3675 ], [ %3620, %3662 ], [ %3654, %3632 ]
  %3710 = phi float [ %3621, %3616 ], [ %3621, %3677 ], [ %3621, %3675 ], [ %3621, %3662 ], [ %3655, %3632 ]
  %3711 = phi float [ %3622, %3616 ], [ %3622, %3677 ], [ %3622, %3675 ], [ %3622, %3662 ], [ %3656, %3632 ]
  %3712 = phi float [ %2832, %3616 ], [ %2832, %3677 ], [ %2832, %3675 ], [ %2832, %3662 ], [ %3647, %3632 ]
  %3713 = phi float [ %2835, %3616 ], [ %2835, %3677 ], [ %2835, %3675 ], [ %2835, %3662 ], [ %3659, %3632 ]
  %3714 = and i32 %3624, 12
  %3715 = icmp eq i32 %3714, 12
  br i1 %3715, label %3788, label %3716

; <label>:3716                                    ; preds = %3705
  %3717 = and i32 %3624, 2097184
  %3718 = icmp eq i32 %3717, 2097184
  %3719 = select i1 %3718, float %3133, float 0.000000e+00
  %3720 = and i32 %3624, 4194336
  %3721 = icmp eq i32 %3720, 4194336
  %3722 = select i1 %3721, float %3133, float 0.000000e+00
  %3723 = and i32 %3624, 8388640
  %3724 = icmp eq i32 %3723, 8388640
  %3725 = select i1 %3724, float %3133, float 0.000000e+00
  %3726 = icmp eq i32 %3714, 0
  br i1 %3726, label %3727, label %3740

; <label>:3727                                    ; preds = %3716
  %3728 = fsub fast float %3434, %2824
  %3729 = fsub fast float %3435, %2825
  %3730 = fmul fast float %3719, %3728
  %3731 = fmul fast float %3719, %3729
  %3732 = fadd fast float %3730, %2824
  %3733 = fadd fast float %3731, %2825
  %3734 = fsub fast float %3436, %2834
  %3735 = fmul fast float %3722, %3734
  %3736 = fadd fast float %3735, %2834
  %3737 = fsub fast float %3433, %2833
  %3738 = fmul fast float %3725, %3737
  %3739 = fadd fast float %3738, %2833
  br label %3788

; <label>:3740                                    ; preds = %3716
  %3741 = icmp eq i32 %3714, 4
  br i1 %3741, label %3742, label %3774

; <label>:3742                                    ; preds = %3740
  %3743 = fmul fast float %3719, %3434
  %3744 = fmul fast float %3719, %3435
  %3745 = fadd fast float %3743, %2824
  %3746 = fadd fast float %3744, %2825
  %3747 = call float @dx.op.binary.f32(i32 36, float %2834, float %3436)  ; FMin(a,b)
  %3748 = fsub fast float %3747, %2834
  %3749 = fmul fast float %3748, %3722
  %3750 = fadd fast float %3749, %2834
  %3751 = fadd fast float %3433, %2833
  %3752 = fmul fast float %3751, 0x3FF337FAE0000000
  %3753 = fmul fast float %2833, %2833
  %3754 = fmul fast float %3433, %3433
  %3755 = fadd fast float %3754, %3753
  %3756 = fmul fast float %3755, 0x3FE5152B00000000
  %3757 = fmul fast float %2833, 0xBFCC1F85E0000000
  %3758 = fmul fast float %3757, %3433
  %3759 = fadd fast float %3758, 0xBFE1363700000000
  %3760 = fadd fast float %3759, %3752
  %3761 = fsub fast float %3760, %3756
  %3762 = fmul fast float %3751, 0x3FBA6F0D00000000
  %3763 = fmul fast float %3755, 0x3FD0432880000000
  %3764 = fmul fast float %2833, 0xBFEF110800000000
  %3765 = fmul fast float %3764, %3433
  %3766 = fadd fast float %3765, 1.000000e+00
  %3767 = fsub fast float %3766, %3762
  %3768 = fadd fast float %3767, %3763
  %3769 = fdiv fast float %3761, %3768
  %3770 = call float @dx.op.unary.f32(i32 7, float %3769)  ; Saturate(value)
  %3771 = fsub fast float %3770, %2833
  %3772 = fmul fast float %3771, %3725
  %3773 = fadd fast float %3772, %2833
  br label %3788

; <label>:3774                                    ; preds = %3740
  %3775 = icmp eq i32 %3714, 8
  br i1 %3775, label %3776, label %3788

; <label>:3776                                    ; preds = %3774
  %3777 = fmul fast float %3719, %3434
  %3778 = fmul fast float %3719, %3435
  %3779 = fadd fast float %3777, %2824
  %3780 = fadd fast float %3778, %2825
  %3781 = call float @dx.op.binary.f32(i32 36, float %2834, float %3436)  ; FMin(a,b)
  %3782 = fsub fast float %3781, %2834
  %3783 = fmul fast float %3782, %3722
  %3784 = fadd fast float %3783, %2834
  %3785 = fsub fast float %3433, %2833
  %3786 = fmul fast float %3725, %3785
  %3787 = fadd fast float %3786, %2833
  br label %3788

; <label>:3788                                    ; preds = %3776, %3774, %3742, %3727, %3705, %3132, %2836, %2823
  %3789 = phi float [ %2824, %3705 ], [ %2824, %3132 ], [ %2824, %2823 ], [ %2824, %2836 ], [ %3732, %3727 ], [ %3745, %3742 ], [ %2824, %3774 ], [ %3779, %3776 ]
  %3790 = phi float [ %2825, %3705 ], [ %2825, %3132 ], [ %2825, %2823 ], [ %2825, %2836 ], [ %3733, %3727 ], [ %3746, %3742 ], [ %2825, %3774 ], [ %3780, %3776 ]
  %3791 = phi float [ %3706, %3705 ], [ %2826, %3132 ], [ %2826, %2823 ], [ %2826, %2836 ], [ %3706, %3727 ], [ %3706, %3742 ], [ %3706, %3774 ], [ %3706, %3776 ]
  %3792 = phi float [ %3707, %3705 ], [ %2827, %3132 ], [ %2827, %2823 ], [ %2827, %2836 ], [ %3707, %3727 ], [ %3707, %3742 ], [ %3707, %3774 ], [ %3707, %3776 ]
  %3793 = phi float [ %3708, %3705 ], [ %2828, %3132 ], [ %2828, %2823 ], [ %2828, %2836 ], [ %3708, %3727 ], [ %3708, %3742 ], [ %3708, %3774 ], [ %3708, %3776 ]
  %3794 = phi float [ %3709, %3705 ], [ %2829, %3132 ], [ %2829, %2823 ], [ %2829, %2836 ], [ %3709, %3727 ], [ %3709, %3742 ], [ %3709, %3774 ], [ %3709, %3776 ]
  %3795 = phi float [ %3710, %3705 ], [ %2830, %3132 ], [ %2830, %2823 ], [ %2830, %2836 ], [ %3710, %3727 ], [ %3710, %3742 ], [ %3710, %3774 ], [ %3710, %3776 ]
  %3796 = phi float [ %3711, %3705 ], [ %2831, %3132 ], [ %2831, %2823 ], [ %2831, %2836 ], [ %3711, %3727 ], [ %3711, %3742 ], [ %3711, %3774 ], [ %3711, %3776 ]
  %3797 = phi float [ %3712, %3705 ], [ %2832, %3132 ], [ %2832, %2823 ], [ %2832, %2836 ], [ %3712, %3727 ], [ %3712, %3742 ], [ %3712, %3774 ], [ %3712, %3776 ]
  %3798 = phi float [ %2833, %3705 ], [ %2833, %3132 ], [ %2833, %2823 ], [ %2833, %2836 ], [ %3739, %3727 ], [ %3773, %3742 ], [ %2833, %3774 ], [ %3787, %3776 ]
  %3799 = phi float [ %2834, %3705 ], [ %2834, %3132 ], [ %2834, %2823 ], [ %2834, %2836 ], [ %3736, %3727 ], [ %3750, %3742 ], [ %2834, %3774 ], [ %3784, %3776 ]
  %3800 = phi float [ %3713, %3705 ], [ %2835, %3132 ], [ %2835, %2823 ], [ %2835, %2836 ], [ %3713, %3727 ], [ %3713, %3742 ], [ %3713, %3774 ], [ %3713, %3776 ]
  %3801 = add i32 %43, 360
  %3802 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %3801, i32 undef)  ; BufferLoad(srv,index,wot)
  %3803 = extractvalue %dx.types.ResRet.i32 %3802, 0
  %3804 = bitcast i32 %3803 to float
  %3805 = fcmp fast oge float %3804, 0.000000e+00
  %3806 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %3807 = extractvalue %dx.types.CBufRet.f32 %3806, 0
  %3808 = select i1 %3805, float %3804, float %3807
  %3809 = call float @dx.op.dot2.f32(i32 54, float %3789, float %3790, float %3789, float %3790)  ; Dot2(ax,ay,bx,by)
  %3810 = fmul fast float %3809, 0x3FE3333340000000
  %3811 = fsub fast float 1.000000e+00, %3810
  %3812 = call float @dx.op.dot3.f32(i32 55, float %3789, float %3790, float %3811, float %3789, float %3790, float %3811)  ; Dot3(ax,ay,az,bx,by,bz)
  %3813 = call float @dx.op.unary.f32(i32 25, float %3812)  ; Rsqrt(value)
  %3814 = fmul fast float %3813, %3789
  %3815 = fmul fast float %3813, %3790
  %3816 = fmul fast float %3811, %3813
  %3817 = fmul fast float %3816, %85
  %3818 = fmul fast float %3816, %86
  %3819 = fmul fast float %3816, %87
  %3820 = fmul fast float %3814, %59
  %3821 = fmul fast float %3814, %60
  %3822 = fmul fast float %3814, %61
  %3823 = fadd fast float %3817, %3820
  %3824 = fadd fast float %3818, %3821
  %3825 = fadd fast float %3819, %3822
  %3826 = fmul fast float %97, %3815
  %3827 = fmul fast float %98, %3815
  %3828 = fmul fast float %99, %3815
  %3829 = fadd fast float %3823, %3826
  %3830 = fadd fast float %3824, %3827
  %3831 = fadd fast float %3825, %3828
  %3832 = call float @dx.op.dot3.f32(i32 55, float %3829, float %3830, float %3831, float %3829, float %3830, float %3831)  ; Dot3(ax,ay,az,bx,by,bz)
  %3833 = call float @dx.op.unary.f32(i32 25, float %3832)  ; Rsqrt(value)
  %3834 = fmul fast float %3829, %3833
  %3835 = fmul fast float %3830, %3833
  %3836 = fmul fast float %3831, %3833
  %3837 = and i32 %45, 1
  %3838 = icmp eq i32 %3837, 0
  br i1 %3838, label %3839, label %4347

; <label>:3839                                    ; preds = %3788
  %3840 = call float @dx.op.unary.f32(i32 83, float %141)  ; DerivCoarseX(value)
  %3841 = call float @dx.op.unary.f32(i32 83, float %142)  ; DerivCoarseX(value)
  %3842 = call float @dx.op.unary.f32(i32 83, float %143)  ; DerivCoarseX(value)
  %3843 = call float @dx.op.unary.f32(i32 84, float %141)  ; DerivCoarseY(value)
  %3844 = call float @dx.op.unary.f32(i32 84, float %142)  ; DerivCoarseY(value)
  %3845 = call float @dx.op.unary.f32(i32 84, float %143)  ; DerivCoarseY(value)
  %3846 = fadd fast float %3840, %141
  %3847 = fadd fast float %3841, %142
  %3848 = fadd fast float %3842, %143
  %3849 = fadd fast float %3843, %141
  %3850 = fadd fast float %3844, %142
  %3851 = fadd fast float %3845, %143
  %3852 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 148)  ; CBufferLoadLegacy(handle,regIndex)
  %3853 = extractvalue %dx.types.CBufRet.f32 %3852, 0
  %3854 = extractvalue %dx.types.CBufRet.f32 %3852, 1
  %3855 = extractvalue %dx.types.CBufRet.f32 %3852, 2
  %3856 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %3857 = extractvalue %dx.types.CBufRet.f32 %3856, 2
  %3858 = extractvalue %dx.types.CBufRet.f32 %3856, 3
  %3859 = fmul fast float %3853, %78
  %3860 = fmul fast float %3859, %3857
  %3861 = fmul fast float %3854, %79
  %3862 = fmul fast float %3861, %3858
  %3863 = fptoui float %3860 to i32
  %3864 = fptoui float %3862 to i32
  %3865 = fadd fast float %3853, -1.000000e+00
  %3866 = fadd fast float %3854, -1.000000e+00
  %3867 = fptoui float %3865 to i32
  %3868 = fptoui float %3866 to i32
  %3869 = call i32 @dx.op.binary.i32(i32 40, i32 %3863, i32 %3867)  ; UMin(a,b)
  %3870 = call i32 @dx.op.binary.i32(i32 40, i32 %3864, i32 %3868)  ; UMin(a,b)
  %3871 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %3872 = extractvalue %dx.types.CBufRet.f32 %3871, 2
  %3873 = extractvalue %dx.types.CBufRet.f32 %3871, 3
  %3874 = fmul fast float %3872, %73
  %3875 = fsub fast float %3874, %3873
  %3876 = fadd fast float %3855, -1.000000e+00
  %3877 = call float @dx.op.binary.f32(i32 36, float %3875, float %3876)  ; FMin(a,b)
  %3878 = fptoui float %3877 to i32
  %3879 = fptoui float %3853 to i32
  %3880 = fptoui float %3854 to i32
  %3881 = mul i32 %3878, %3880
  %3882 = add i32 %3881, %3870
  %3883 = mul i32 %3882, %3879
  %3884 = add i32 %3883, %3869
  %3885 = shl i32 %3884, 2
  %3886 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3885, i32 undef)  ; BufferLoad(srv,index,wot)
  %3887 = extractvalue %dx.types.ResRet.i32 %3886, 0
  %3888 = and i32 %3887, 1023
  %3889 = lshr i32 %3887, 10
  %3890 = icmp eq i32 %3888, 0
  br i1 %3890, label %4316, label %3891

; <label>:3891                                    ; preds = %3839
  %3892 = and i32 %3887, 1023
  br label %3893

; <label>:3893                                    ; preds = %4019, %3891
  %3894 = phi i32 [ %3969, %4019 ], [ 0, %3891 ]
  %3895 = phi float [ %4020, %4019 ], [ 0.000000e+00, %3891 ]
  %3896 = phi float [ %4021, %4019 ], [ %3808, %3891 ]
  %3897 = phi float [ %4022, %4019 ], [ %3800, %3891 ]
  %3898 = phi float [ %4023, %4019 ], [ 0.000000e+00, %3891 ]
  %3899 = phi float [ %4024, %4019 ], [ 0.000000e+00, %3891 ]
  %3900 = phi float [ %4025, %4019 ], [ %3794, %3891 ]
  %3901 = phi float [ %4026, %4019 ], [ %3795, %3891 ]
  %3902 = phi float [ %4027, %4019 ], [ %3796, %3891 ]
  %3903 = phi float [ %4028, %4019 ], [ %3834, %3891 ]
  %3904 = phi float [ %4029, %4019 ], [ %3835, %3891 ]
  %3905 = phi float [ %4030, %4019 ], [ %3836, %3891 ]
  %3906 = phi float [ %4031, %4019 ], [ %3799, %3891 ]
  %3907 = phi float [ %4032, %4019 ], [ %3798, %3891 ]
  %3908 = phi float [ %4033, %4019 ], [ 0.000000e+00, %3891 ]
  %3909 = phi float [ %4034, %4019 ], [ %3797, %3891 ]
  %3910 = phi float [ %4035, %4019 ], [ %3791, %3891 ]
  %3911 = phi float [ %4036, %4019 ], [ %3792, %3891 ]
  %3912 = phi float [ %4037, %4019 ], [ %3793, %3891 ]
  %3913 = add nuw nsw i32 %3894, %3889
  %3914 = shl i32 %3913, 2
  %3915 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %22, i32 %3914, i32 undef)  ; BufferLoad(srv,index,wot)
  %3916 = extractvalue %dx.types.ResRet.i32 %3915, 0
  %3917 = shl i32 %3916, 8
  %3918 = or i32 %3917, 48
  %3919 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3918, i32 undef)  ; BufferLoad(srv,index,wot)
  %3920 = extractvalue %dx.types.ResRet.f32 %3919, 0
  %3921 = extractvalue %dx.types.ResRet.f32 %3919, 1
  %3922 = extractvalue %dx.types.ResRet.f32 %3919, 2
  %3923 = extractvalue %dx.types.ResRet.f32 %3919, 3
  %3924 = or i32 %3917, 64
  %3925 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3924, i32 undef)  ; BufferLoad(srv,index,wot)
  %3926 = extractvalue %dx.types.ResRet.i32 %3925, 0
  %3927 = extractvalue %dx.types.ResRet.i32 %3925, 1
  %3928 = or i32 %3917, 80
  %3929 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3928, i32 undef)  ; BufferLoad(srv,index,wot)
  %3930 = extractvalue %dx.types.ResRet.f32 %3929, 2
  %3931 = extractvalue %dx.types.ResRet.f32 %3929, 3
  %3932 = or i32 %3917, 96
  %3933 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3932, i32 undef)  ; BufferLoad(srv,index,wot)
  %3934 = extractvalue %dx.types.ResRet.f32 %3933, 0
  %3935 = extractvalue %dx.types.ResRet.f32 %3933, 1
  %3936 = extractvalue %dx.types.ResRet.f32 %3933, 2
  %3937 = extractvalue %dx.types.ResRet.f32 %3933, 3
  %3938 = or i32 %3917, 112
  %3939 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3938, i32 undef)  ; BufferLoad(srv,index,wot)
  %3940 = extractvalue %dx.types.ResRet.f32 %3939, 2
  %3941 = or i32 %3917, 128
  %3942 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3941, i32 undef)  ; BufferLoad(srv,index,wot)
  %3943 = extractvalue %dx.types.ResRet.f32 %3942, 0
  %3944 = extractvalue %dx.types.ResRet.f32 %3942, 1
  %3945 = extractvalue %dx.types.ResRet.f32 %3942, 2
  %3946 = extractvalue %dx.types.ResRet.f32 %3942, 3
  %3947 = or i32 %3917, 144
  %3948 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3947, i32 undef)  ; BufferLoad(srv,index,wot)
  %3949 = extractvalue %dx.types.ResRet.f32 %3948, 0
  %3950 = extractvalue %dx.types.ResRet.f32 %3948, 1
  %3951 = extractvalue %dx.types.ResRet.f32 %3948, 2
  %3952 = extractvalue %dx.types.ResRet.f32 %3948, 3
  %3953 = or i32 %3917, 160
  %3954 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3953, i32 undef)  ; BufferLoad(srv,index,wot)
  %3955 = extractvalue %dx.types.ResRet.f32 %3954, 0
  %3956 = extractvalue %dx.types.ResRet.f32 %3954, 1
  %3957 = extractvalue %dx.types.ResRet.f32 %3954, 2
  %3958 = extractvalue %dx.types.ResRet.f32 %3954, 3
  %3959 = or i32 %3917, 192
  %3960 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %23, i32 %3959, i32 undef)  ; BufferLoad(srv,index,wot)
  %3961 = extractvalue %dx.types.ResRet.i32 %3960, 0
  %3962 = or i32 %3917, 208
  %3963 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3962, i32 undef)  ; BufferLoad(srv,index,wot)
  %3964 = extractvalue %dx.types.ResRet.f32 %3963, 0
  %3965 = or i32 %3917, 248
  %3966 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3965, i32 undef)  ; BufferLoad(srv,index,wot)
  %3967 = extractvalue %dx.types.ResRet.f32 %3966, 0
  %3968 = extractvalue %dx.types.ResRet.f32 %3966, 1
  %3969 = add nuw nsw i32 %3894, 1
  %3970 = bitcast float %3923 to i32
  %3971 = and i32 %3970, 512
  %3972 = icmp eq i32 %3971, 0
  %3973 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3917, i32 undef)  ; BufferLoad(srv,index,wot)
  %3974 = extractvalue %dx.types.ResRet.f32 %3973, 0
  %3975 = extractvalue %dx.types.ResRet.f32 %3973, 1
  %3976 = extractvalue %dx.types.ResRet.f32 %3973, 2
  %3977 = extractvalue %dx.types.ResRet.f32 %3973, 3
  %3978 = call float @dx.op.dot4.f32(i32 56, float %3974, float %3975, float %3976, float %3977, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3979 = or i32 %3917, 16
  %3980 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3979, i32 undef)  ; BufferLoad(srv,index,wot)
  %3981 = extractvalue %dx.types.ResRet.f32 %3980, 0
  %3982 = extractvalue %dx.types.ResRet.f32 %3980, 1
  %3983 = extractvalue %dx.types.ResRet.f32 %3980, 2
  %3984 = extractvalue %dx.types.ResRet.f32 %3980, 3
  %3985 = call float @dx.op.dot4.f32(i32 56, float %3981, float %3982, float %3983, float %3984, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3986 = or i32 %3917, 32
  %3987 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %23, i32 %3986, i32 undef)  ; BufferLoad(srv,index,wot)
  %3988 = extractvalue %dx.types.ResRet.f32 %3987, 0
  %3989 = extractvalue %dx.types.ResRet.f32 %3987, 1
  %3990 = extractvalue %dx.types.ResRet.f32 %3987, 2
  %3991 = extractvalue %dx.types.ResRet.f32 %3987, 3
  %3992 = call float @dx.op.dot4.f32(i32 56, float %3988, float %3989, float %3990, float %3991, float %141, float %142, float %143, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %3993 = call float @dx.op.unary.f32(i32 27, float %3978)  ; Round_ni(value)
  %3994 = call float @dx.op.unary.f32(i32 6, float %3993)  ; FAbs(value)
  %3995 = call float @dx.op.unary.f32(i32 27, float %3985)  ; Round_ni(value)
  %3996 = call float @dx.op.unary.f32(i32 6, float %3995)  ; FAbs(value)
  %3997 = call float @dx.op.unary.f32(i32 6, float %3992)  ; FAbs(value)
  %3998 = call float @dx.op.unary.f32(i32 27, float %3997)  ; Round_ni(value)
  %3999 = fadd fast float %3996, %3994
  %4000 = fadd fast float %3999, %3998
  %4001 = fcmp fast oeq float %4000, 0.000000e+00
  %4002 = call float @dx.op.dot4.f32(i32 56, float %3974, float %3975, float %3976, float %3977, float %3846, float %3847, float %3848, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4003 = call float @dx.op.dot4.f32(i32 56, float %3981, float %3982, float %3983, float %3984, float %3846, float %3847, float %3848, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4004 = call float @dx.op.dot4.f32(i32 56, float %3974, float %3975, float %3976, float %3977, float %3849, float %3850, float %3851, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4005 = call float @dx.op.dot4.f32(i32 56, float %3981, float %3982, float %3983, float %3984, float %3849, float %3850, float %3851, float 1.000000e+00)  ; Dot4(ax,ay,az,aw,bx,by,bz,bw)
  %4006 = fsub fast float %4002, %3978
  %4007 = fsub fast float %4004, %3978
  %4008 = fsub fast float %4003, %3985
  %4009 = fsub fast float %4005, %3985
  %4010 = call float @dx.op.dot3.f32(i32 55, float %3920, float %3921, float %3922, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4011 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4012 = extractvalue %dx.types.CBufRet.f32 %4011, 2
  %4013 = fadd fast float %4012, %4010
  %4014 = call float @dx.op.unary.f32(i32 7, float %4013)  ; Saturate(value)
  %4015 = extractvalue %dx.types.CBufRet.f32 %4011, 0
  %4016 = fcmp fast ogt float %4014, %4015
  %4017 = and i1 %4001, %4016
  %4018 = and i1 %3972, %4017
  br i1 %4018, label %4039, label %4019

; <label>:4019                                    ; preds = %4302, %4120, %4039, %3893
  %4020 = phi float [ %3895, %4039 ], [ %4123, %4120 ], [ %4123, %4302 ], [ %3895, %3893 ]
  %4021 = phi float [ %3896, %4039 ], [ %3896, %4120 ], [ %4277, %4302 ], [ %3896, %3893 ]
  %4022 = phi float [ %3897, %4039 ], [ %3897, %4120 ], [ %4275, %4302 ], [ %3897, %3893 ]
  %4023 = phi float [ %3898, %4039 ], [ %3898, %4120 ], [ %4247, %4302 ], [ %3898, %3893 ]
  %4024 = phi float [ %3899, %4039 ], [ %3899, %4120 ], [ %4245, %4302 ], [ %3899, %3893 ]
  %4025 = phi float [ %3900, %4039 ], [ %3900, %4120 ], [ %4312, %4302 ], [ %3900, %3893 ]
  %4026 = phi float [ %3901, %4039 ], [ %3901, %4120 ], [ %4313, %4302 ], [ %3901, %3893 ]
  %4027 = phi float [ %3902, %4039 ], [ %3902, %4120 ], [ %4314, %4302 ], [ %3902, %3893 ]
  %4028 = phi float [ %3903, %4039 ], [ %3903, %4120 ], [ %4226, %4302 ], [ %3903, %3893 ]
  %4029 = phi float [ %3904, %4039 ], [ %3904, %4120 ], [ %4227, %4302 ], [ %3904, %3893 ]
  %4030 = phi float [ %3905, %4039 ], [ %3905, %4120 ], [ %4228, %4302 ], [ %3905, %3893 ]
  %4031 = phi float [ %3906, %4039 ], [ %3906, %4120 ], [ %4255, %4302 ], [ %3906, %3893 ]
  %4032 = phi float [ %3907, %4039 ], [ %3907, %4120 ], [ %4252, %4302 ], [ %3907, %3893 ]
  %4033 = phi float [ %3908, %4039 ], [ %3908, %4120 ], [ %4249, %4302 ], [ %3908, %3893 ]
  %4034 = phi float [ %3909, %4039 ], [ %3909, %4120 ], [ %4243, %4302 ], [ %3909, %3893 ]
  %4035 = phi float [ %3910, %4039 ], [ %3910, %4120 ], [ %4238, %4302 ], [ %3910, %3893 ]
  %4036 = phi float [ %3911, %4039 ], [ %3911, %4120 ], [ %4239, %4302 ], [ %3911, %3893 ]
  %4037 = phi float [ %3912, %4039 ], [ %3912, %4120 ], [ %4240, %4302 ], [ %3912, %3893 ]
  %4038 = icmp eq i32 %3969, %3892
  br i1 %4038, label %4315, label %3893

; <label>:4039                                    ; preds = %3893
  %4040 = extractvalue %dx.types.ResRet.f32 %3939, 3
  %4041 = extractvalue %dx.types.ResRet.f32 %3939, 1
  %4042 = extractvalue %dx.types.ResRet.f32 %3939, 0
  %4043 = extractvalue %dx.types.ResRet.f32 %3929, 1
  %4044 = extractvalue %dx.types.ResRet.f32 %3929, 0
  %4045 = extractvalue %dx.types.ResRet.i32 %3925, 3
  %4046 = extractvalue %dx.types.ResRet.i32 %3925, 2
  %4047 = add i32 %4045, 0
  %4048 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4047, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4049 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 10, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4050 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4048, %dx.types.Handle %4049, float %3978, float %3985, float undef, float undef, i32 0, i32 0, i32 undef, float %4006, float %4008, float undef, float %4007, float %4009, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4051 = extractvalue %dx.types.ResRet.f32 %4050, 0
  %4052 = fmul fast float %4051, %4044
  %4053 = fadd fast float %4052, %4043
  %4054 = call float @dx.op.unary.f32(i32 7, float %4053)  ; Saturate(value)
  %4055 = fmul fast float %3978, %3934
  %4056 = call float @dx.op.tertiary.f32(i32 46, float %3935, float %3985, float %4055)  ; FMad(a,b,c)
  %4057 = fadd fast float %4056, %4042
  %4058 = fmul fast float %3978, %3936
  %4059 = call float @dx.op.tertiary.f32(i32 46, float %3937, float %3985, float %4058)  ; FMad(a,b,c)
  %4060 = fadd fast float %4059, %4041
  %4061 = fmul fast float %4006, %3934
  %4062 = call float @dx.op.tertiary.f32(i32 46, float %3935, float %4008, float %4061)  ; FMad(a,b,c)
  %4063 = fmul fast float %4006, %3936
  %4064 = call float @dx.op.tertiary.f32(i32 46, float %3937, float %4008, float %4063)  ; FMad(a,b,c)
  %4065 = fmul fast float %4007, %3934
  %4066 = call float @dx.op.tertiary.f32(i32 46, float %3935, float %4009, float %4065)  ; FMad(a,b,c)
  %4067 = fmul fast float %4007, %3936
  %4068 = call float @dx.op.tertiary.f32(i32 46, float %3937, float %4009, float %4067)  ; FMad(a,b,c)
  %4069 = add i32 %4046, 0
  %4070 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4069, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4071 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4070, %dx.types.Handle %4049, float %4057, float %4060, float undef, float undef, i32 0, i32 0, i32 undef, float %4062, float %4064, float undef, float %4066, float %4068, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4072 = extractvalue %dx.types.ResRet.f32 %4071, 0
  %4073 = and i32 %3970, 1024
  %4074 = icmp ne i32 %4073, 0
  %4075 = fcmp fast ogt float %4072, 0x3FE0101020000000
  %4076 = uitofp i1 %4075 to float
  %4077 = select i1 %4074, float %4076, float %4072
  %4078 = and i32 %3970, 8192
  %4079 = icmp ne i32 %4078, 0
  %4080 = select i1 %4079, float %4040, float 1.000000e+00
  %4081 = fmul fast float %3978, 2.000000e+00
  %4082 = fadd fast float %4081, -1.000000e+00
  %4083 = call float @dx.op.unary.f32(i32 6, float %4082)  ; FAbs(value)
  %4084 = fmul fast float %4083, %3967
  %4085 = fsub fast float %4084, %3967
  %4086 = call float @dx.op.unary.f32(i32 7, float %4085)  ; Saturate(value)
  %4087 = fmul fast float %3985, 2.000000e+00
  %4088 = fadd fast float %4087, -1.000000e+00
  %4089 = call float @dx.op.unary.f32(i32 6, float %4088)  ; FAbs(value)
  %4090 = fmul fast float %4089, %3968
  %4091 = fsub fast float %4090, %3968
  %4092 = call float @dx.op.unary.f32(i32 7, float %4091)  ; Saturate(value)
  %4093 = fmul fast float %3997, %3930
  %4094 = fsub fast float %4093, %3930
  %4095 = call float @dx.op.unary.f32(i32 7, float %4094)  ; Saturate(value)
  %4096 = fmul fast float %4054, %4080
  %4097 = fmul fast float %4096, %4051
  %4098 = fmul fast float %4097, %4086
  %4099 = fmul fast float %4098, %4077
  %4100 = fmul fast float %4099, %4092
  %4101 = fmul fast float %4100, %4095
  %4102 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 149)  ; CBufferLoadLegacy(handle,regIndex)
  %4103 = extractvalue %dx.types.CBufRet.f32 %4102, 1
  %4104 = extractvalue %dx.types.CBufRet.f32 %4102, 0
  %4105 = fsub fast float %4014, %4104
  %4106 = fmul fast float %4105, %4103
  %4107 = call float @dx.op.unary.f32(i32 7, float %4106)  ; Saturate(value)
  %4108 = fmul fast float %4101, %3931
  %4109 = fadd fast float %4101, %3931
  %4110 = fmul fast float %4109, %3940
  %4111 = fsub fast float %4110, %3940
  %4112 = call float @dx.op.unary.f32(i32 7, float %4111)  ; Saturate(value)
  %4113 = and i32 %3970, 128
  %4114 = icmp ne i32 %4113, 0
  %4115 = select i1 %4114, float %4112, float %4108
  %4116 = fmul fast float %4115, %4107
  %4117 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 147)  ; CBufferLoadLegacy(handle,regIndex)
  %4118 = extractvalue %dx.types.CBufRet.f32 %4117, 0
  %4119 = fcmp fast ugt float %4116, %4118
  br i1 %4119, label %4120, label %4019

; <label>:4120                                    ; preds = %4039
  %4121 = select i1 %4079, float %4116, float 0.000000e+00
  %4122 = fadd fast float %4121, %3895
  %4123 = call float @dx.op.unary.f32(i32 7, float %4122)  ; Saturate(value)
  br i1 %4079, label %4019, label %4124

; <label>:4124                                    ; preds = %4120
  %4125 = and i32 %3970, 4
  %4126 = and i32 %3970, 8
  %4127 = add i32 %3926, 0
  %4128 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4127, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4129 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 3, i32 0, i32 8, i1 false)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4130 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4128, %dx.types.Handle %4129, float %4057, float %4060, float undef, float undef, i32 0, i32 0, i32 undef, float %4062, float %4064, float undef, float %4066, float %4068, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4131 = extractvalue %dx.types.ResRet.f32 %4130, 0
  %4132 = extractvalue %dx.types.ResRet.f32 %4130, 1
  %4133 = extractvalue %dx.types.ResRet.f32 %4130, 2
  %4134 = extractvalue %dx.types.ResRet.f32 %4130, 3
  %4135 = bitcast float %3952 to i32
  %4136 = and i32 %4135, 255
  %4137 = uitofp i32 %4136 to float
  %4138 = lshr i32 %4135, 8
  %4139 = and i32 %4138, 255
  %4140 = uitofp i32 %4139 to float
  %4141 = fmul fast float %4134, %4137
  %4142 = fadd fast float %4141, %4140
  %4143 = fmul fast float %4142, 0x3F70101000000000
  %4144 = add i32 %3927, 0
  %4145 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4144, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4146 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4145, %dx.types.Handle %4129, float %4057, float %4060, float undef, float undef, i32 0, i32 0, i32 undef, float %4062, float %4064, float undef, float %4066, float %4068, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4147 = extractvalue %dx.types.ResRet.f32 %4146, 0
  %4148 = extractvalue %dx.types.ResRet.f32 %4146, 1
  %4149 = extractvalue %dx.types.ResRet.f32 %4146, 2
  %4150 = extractvalue %dx.types.ResRet.f32 %4146, 3
  %4151 = bitcast float %3946 to i32
  %4152 = and i32 %4151, 255
  %4153 = uitofp i32 %4152 to float
  %4154 = lshr i32 %4151, 8
  %4155 = and i32 %4154, 255
  %4156 = uitofp i32 %4155 to float
  %4157 = lshr i32 %4151, 16
  %4158 = and i32 %4157, 255
  %4159 = uitofp i32 %4158 to float
  %4160 = fmul fast float %4159, 0x3F70101000000000
  %4161 = fmul fast float %4147, %4153
  %4162 = fadd fast float %4161, %4156
  %4163 = fmul fast float %4162, 0x3F70101000000000
  %4164 = fadd fast float %4148, -5.000000e-01
  %4165 = fadd fast float %4150, -5.000000e-01
  %4166 = fmul fast float %4164, %4160
  %4167 = fmul fast float %4165, %4160
  %4168 = fadd fast float %4166, 5.000000e-01
  %4169 = fadd fast float %4167, 5.000000e-01
  %4170 = fmul fast float %4131, %3955
  %4171 = fmul fast float %4132, %3956
  %4172 = fmul fast float %4133, %3957
  %4173 = fmul fast float %4168, 2.000000e+00
  %4174 = fadd fast float %4173, -1.000000e+00
  %4175 = fmul fast float %4169, 2.000000e+00
  %4176 = fadd fast float %4175, -1.000000e+00
  %4177 = fadd fast float %4174, %4176
  %4178 = fmul fast float %4177, 5.000000e-01
  %4179 = fsub fast float %4174, %4176
  %4180 = fmul fast float %4179, 5.000000e-01
  %4181 = call float @dx.op.unary.f32(i32 6, float %4178)  ; FAbs(value)
  %4182 = fsub fast float 1.000000e+00, %4181
  %4183 = call float @dx.op.unary.f32(i32 6, float %4180)  ; FAbs(value)
  %4184 = fsub fast float %4182, %4183
  %4185 = call float @dx.op.dot3.f32(i32 55, float %4178, float %4180, float %4184, float %4178, float %4180, float %4184)  ; Dot3(ax,ay,az,bx,by,bz)
  %4186 = call float @dx.op.unary.f32(i32 25, float %4185)  ; Rsqrt(value)
  %4187 = fmul fast float %4178, %4186
  %4188 = fmul fast float %4180, %4186
  %4189 = fmul fast float %4186, %4184
  %4190 = fmul fast float %4189, %3920
  %4191 = fmul fast float %4189, %3921
  %4192 = fmul fast float %4189, %3922
  %4193 = fmul fast float %4187, %3943
  %4194 = fmul fast float %4187, %3944
  %4195 = fmul fast float %4187, %3945
  %4196 = fadd fast float %4193, %4190
  %4197 = fadd fast float %4194, %4191
  %4198 = fadd fast float %4195, %4192
  %4199 = fmul fast float %4188, %3949
  %4200 = fmul fast float %4188, %3950
  %4201 = fmul fast float %4188, %3951
  %4202 = fadd fast float %4196, %4199
  %4203 = fadd fast float %4197, %4200
  %4204 = fadd fast float %4198, %4201
  %4205 = call float @dx.op.dot3.f32(i32 55, float %4202, float %4203, float %4204, float %4202, float %4203, float %4204)  ; Dot3(ax,ay,az,bx,by,bz)
  %4206 = call float @dx.op.unary.f32(i32 25, float %4205)  ; Rsqrt(value)
  %4207 = fmul fast float %4202, %4206
  %4208 = fmul fast float %4203, %4206
  %4209 = fmul fast float %4204, %4206
  %4210 = icmp ne i32 %4126, 0
  %4211 = select i1 %4210, float 1.000000e+00, float 0.000000e+00
  %4212 = fmul fast float %4116, %4211
  %4213 = and i32 %3970, 1
  %4214 = icmp eq i32 %4213, 0
  br i1 %4214, label %4215, label %4219

; <label>:4215                                    ; preds = %4124
  %4216 = fsub fast float %4207, %3903
  %4217 = fsub fast float %4208, %3904
  %4218 = fsub fast float %4209, %3905
  br label %4219

; <label>:4219                                    ; preds = %4215, %4124
  %4220 = phi float [ %4216, %4215 ], [ %4207, %4124 ]
  %4221 = phi float [ %4217, %4215 ], [ %4208, %4124 ]
  %4222 = phi float [ %4218, %4215 ], [ %4209, %4124 ]
  %4223 = fmul float %4222, %4212
  %4224 = fmul float %4221, %4212
  %4225 = fmul float %4220, %4212
  %4226 = fadd fast float %4225, %3903
  %4227 = fadd fast float %4224, %3904
  %4228 = fadd fast float %4223, %3905
  %4229 = icmp ne i32 %4125, 0
  %4230 = select i1 %4229, float 1.000000e+00, float 0.000000e+00
  %4231 = fmul fast float %4116, %4230
  %4232 = fsub fast float %4170, %3910
  %4233 = fsub fast float %4171, %3911
  %4234 = fsub fast float %4172, %3912
  %4235 = fmul fast float %4232, %4231
  %4236 = fmul fast float %4233, %4231
  %4237 = fmul fast float %4234, %4231
  %4238 = fadd fast float %4235, %3910
  %4239 = fadd fast float %4236, %3911
  %4240 = fadd fast float %4237, %3912
  %4241 = fsub fast float %4143, %3909
  %4242 = fmul fast float %4241, %4231
  %4243 = fadd fast float %4242, %3909
  %4244 = fmul fast float %4231, %3899
  %4245 = fsub fast float %3899, %4244
  %4246 = fmul fast float %4231, %3898
  %4247 = fsub fast float %3898, %4246
  %4248 = fadd fast float %4116, %3908
  %4249 = call float @dx.op.unary.f32(i32 7, float %4248)  ; Saturate(value)
  %4250 = fsub fast float %4163, %3907
  %4251 = fmul fast float %4250, %4212
  %4252 = fadd fast float %4251, %3907
  %4253 = fsub fast float %4149, %3906
  %4254 = fmul fast float %4253, %4212
  %4255 = fadd fast float %4254, %3906
  %4256 = call float @dx.op.dot3.f32(i32 55, float %4170, float %4171, float %4172, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4257 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 14)  ; CBufferLoadLegacy(handle,regIndex)
  %4258 = extractvalue %dx.types.CBufRet.f32 %4257, 0
  %4259 = extractvalue %dx.types.CBufRet.f32 %4257, 1
  %4260 = fmul fast float %4259, %4256
  %4261 = fadd fast float %4260, %4258
  %4262 = call float @dx.op.unary.f32(i32 7, float %4261)  ; Saturate(value)
  %4263 = bitcast float %3958 to i32
  %4264 = and i32 %4263, 65535
  %4265 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4264)  ; LegacyF16ToF32(value)
  %4266 = lshr i32 %4263, 16
  %4267 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4266)  ; LegacyF16ToF32(value)
  %4268 = fcmp fast oge float %4265, 0.000000e+00
  %4269 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %4270 = extractvalue %dx.types.CBufRet.f32 %4269, 0
  %4271 = select i1 %4268, float %4265, float %4270
  %4272 = fadd fast float %4271, %4267
  %4273 = fsub fast float %4262, %3897
  %4274 = fmul fast float %4273, %4116
  %4275 = fadd fast float %4274, %3897
  %4276 = fmul fast float %4272, %4116
  %4277 = call float @dx.op.binary.f32(i32 35, float %3896, float %4276)  ; FMax(a,b)
  %4278 = and i32 %3970, 16
  %4279 = icmp eq i32 %4278, 0
  br i1 %4279, label %4302, label %4280

; <label>:4280                                    ; preds = %4219
  %4281 = bitcast float %3964 to i32
  %4282 = add i32 %3961, 0
  %4283 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 1, i32 %4282, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4284 = call %dx.types.ResRet.f32 @dx.op.sampleGrad.f32(i32 63, %dx.types.Handle %4283, %dx.types.Handle %4129, float %4057, float %4060, float undef, float undef, i32 0, i32 0, i32 undef, float %4062, float %4064, float undef, float %4066, float %4068, float undef, float undef)  ; SampleGrad(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,ddx0,ddx1,ddx2,ddy0,ddy1,ddy2,clamp)
  %4285 = extractvalue %dx.types.ResRet.f32 %4284, 0
  %4286 = extractvalue %dx.types.ResRet.f32 %4284, 1
  %4287 = extractvalue %dx.types.ResRet.f32 %4284, 2
  %4288 = and i32 %4281, 65535
  %4289 = call float @dx.op.legacyF16ToF32(i32 131, i32 %4288)  ; LegacyF16ToF32(value)
  %4290 = fmul fast float %4285, %3955
  %4291 = fmul fast float %4286, %3956
  %4292 = fmul fast float %4287, %3957
  %4293 = and i32 %3970, 16384
  %4294 = icmp ne i32 %4293, 0
  %4295 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %4296 = extractvalue %dx.types.CBufRet.f32 %4295, 0
  %4297 = select i1 %4294, float %4296, float 1.000000e+00
  %4298 = fmul fast float %4297, %4289
  %4299 = fmul fast float %4290, %4298
  %4300 = fmul fast float %4291, %4298
  %4301 = fmul fast float %4292, %4298
  br label %4302

; <label>:4302                                    ; preds = %4280, %4219
  %4303 = phi float [ %4299, %4280 ], [ 0.000000e+00, %4219 ]
  %4304 = phi float [ %4300, %4280 ], [ 0.000000e+00, %4219 ]
  %4305 = phi float [ %4301, %4280 ], [ 0.000000e+00, %4219 ]
  %4306 = fsub fast float %4303, %3900
  %4307 = fsub fast float %4304, %3901
  %4308 = fsub fast float %4305, %3902
  %4309 = fmul fast float %4306, %4116
  %4310 = fmul fast float %4307, %4116
  %4311 = fmul fast float %4308, %4116
  %4312 = fadd fast float %4309, %3900
  %4313 = fadd fast float %4310, %3901
  %4314 = fadd fast float %4311, %3902
  br label %4019

; <label>:4315                                    ; preds = %4019
  br label %4316

; <label>:4316                                    ; preds = %4315, %3839
  %4317 = phi float [ 0.000000e+00, %3839 ], [ %4020, %4315 ]
  %4318 = phi float [ %3808, %3839 ], [ %4021, %4315 ]
  %4319 = phi float [ %3800, %3839 ], [ %4022, %4315 ]
  %4320 = phi float [ 0.000000e+00, %3839 ], [ %4023, %4315 ]
  %4321 = phi float [ 0.000000e+00, %3839 ], [ %4024, %4315 ]
  %4322 = phi float [ %3794, %3839 ], [ %4025, %4315 ]
  %4323 = phi float [ %3795, %3839 ], [ %4026, %4315 ]
  %4324 = phi float [ %3796, %3839 ], [ %4027, %4315 ]
  %4325 = phi float [ %3834, %3839 ], [ %4028, %4315 ]
  %4326 = phi float [ %3835, %3839 ], [ %4029, %4315 ]
  %4327 = phi float [ %3836, %3839 ], [ %4030, %4315 ]
  %4328 = phi float [ %3799, %3839 ], [ %4031, %4315 ]
  %4329 = phi float [ %3798, %3839 ], [ %4032, %4315 ]
  %4330 = phi float [ 0.000000e+00, %3839 ], [ %4033, %4315 ]
  %4331 = phi float [ %3797, %3839 ], [ %4034, %4315 ]
  %4332 = phi float [ %3791, %3839 ], [ %4035, %4315 ]
  %4333 = phi float [ %3792, %3839 ], [ %4036, %4315 ]
  %4334 = phi float [ %3793, %3839 ], [ %4037, %4315 ]
  %4335 = call float @dx.op.dot3.f32(i32 55, float %4325, float %4326, float %4327, float %4325, float %4326, float %4327)  ; Dot3(ax,ay,az,bx,by,bz)
  %4336 = call float @dx.op.unary.f32(i32 25, float %4335)  ; Rsqrt(value)
  %4337 = fmul fast float %4336, %4325
  %4338 = fmul fast float %4336, %4326
  %4339 = fmul fast float %4336, %4327
  %4340 = fadd fast float %4330, %902
  %4341 = call float @dx.op.unary.f32(i32 7, float %4340)  ; Saturate(value)
  %4342 = call float @dx.op.dot3.f32(i32 55, float %4337, float %4338, float %4339, float %4337, float %4338, float %4339)  ; Dot3(ax,ay,az,bx,by,bz)
  %4343 = call float @dx.op.unary.f32(i32 25, float %4342)  ; Rsqrt(value)
  %4344 = fmul fast float %4343, %4337
  %4345 = fmul fast float %4343, %4338
  %4346 = fmul fast float %4343, %4339
  br label %4347

; <label>:4347                                    ; preds = %4316, %3788
  %4348 = phi float [ %4344, %4316 ], [ %3834, %3788 ]
  %4349 = phi float [ %4345, %4316 ], [ %3835, %3788 ]
  %4350 = phi float [ %4346, %4316 ], [ %3836, %3788 ]
  %4351 = phi float [ %4332, %4316 ], [ %3791, %3788 ]
  %4352 = phi float [ %4333, %4316 ], [ %3792, %3788 ]
  %4353 = phi float [ %4334, %4316 ], [ %3793, %3788 ]
  %4354 = phi float [ %4322, %4316 ], [ %3794, %3788 ]
  %4355 = phi float [ %4323, %4316 ], [ %3795, %3788 ]
  %4356 = phi float [ %4324, %4316 ], [ %3796, %3788 ]
  %4357 = phi float [ %4331, %4316 ], [ %3797, %3788 ]
  %4358 = phi float [ %4341, %4316 ], [ %902, %3788 ]
  %4359 = phi float [ %4329, %4316 ], [ %3798, %3788 ]
  %4360 = phi float [ %4328, %4316 ], [ %3799, %3788 ]
  %4361 = phi float [ %4321, %4316 ], [ 0.000000e+00, %3788 ]
  %4362 = phi float [ %4320, %4316 ], [ 0.000000e+00, %3788 ]
  %4363 = phi float [ %4317, %4316 ], [ 0.000000e+00, %3788 ]
  %4364 = phi float [ %4318, %4316 ], [ %3808, %3788 ]
  %4365 = phi float [ %4319, %4316 ], [ %3800, %3788 ]
  %4366 = fadd fast float %4357, 0xBFB99999A0000000
  %4367 = call float @dx.op.unary.f32(i32 7, float %4366)  ; Saturate(value)
  %4368 = fmul fast float %4367, 0x3FF1C71C80000000
  %4369 = call float @dx.op.binary.f32(i32 36, float %4357, float 0x3FB99999A0000000)  ; FMin(a,b)
  %4370 = fsub fast float 1.000000e+00, %4368
  %4371 = call float @dx.op.unary.f32(i32 7, float %4370)  ; Saturate(value)
  %4372 = fmul fast float %4371, %4351
  %4373 = fmul fast float %4371, %4352
  %4374 = fmul fast float %4371, %4353
  %4375 = call float @dx.op.unary.f32(i32 7, float %4372)  ; Saturate(value)
  %4376 = call float @dx.op.unary.f32(i32 7, float %4373)  ; Saturate(value)
  %4377 = call float @dx.op.unary.f32(i32 7, float %4374)  ; Saturate(value)
  %4378 = fmul fast float %4368, %4351
  %4379 = fmul fast float %4368, %4352
  %4380 = fmul fast float %4368, %4353
  %4381 = fadd fast float %4378, %4369
  %4382 = fadd fast float %4379, %4369
  %4383 = fadd fast float %4380, %4369
  %4384 = call float @dx.op.unary.f32(i32 7, float %4381)  ; Saturate(value)
  %4385 = call float @dx.op.unary.f32(i32 7, float %4382)  ; Saturate(value)
  %4386 = call float @dx.op.unary.f32(i32 7, float %4383)  ; Saturate(value)
  %4387 = call float @dx.op.unary.f32(i32 7, float %4359)  ; Saturate(value)
  %4388 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %4389 = extractvalue %dx.types.CBufRet.i32 %4388, 3
  %4390 = and i32 %4389, 8
  %4391 = icmp ne i32 %4390, 0
  %4392 = call float @dx.op.binary.f32(i32 35, float %4375, float %4351)  ; FMax(a,b)
  %4393 = call float @dx.op.binary.f32(i32 35, float %4376, float %4351)  ; FMax(a,b)
  %4394 = call float @dx.op.binary.f32(i32 35, float %4377, float %4351)  ; FMax(a,b)
  %4395 = call float @dx.op.dot3.f32(i32 55, float %4375, float %4376, float %4377, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %4396 = select i1 %183, float %4351, float %4375
  %4397 = select i1 %183, float %4395, float %4376
  %4398 = select i1 %183, float 1.000000e+00, float %4377
  %4399 = select i1 %4391, float %4392, float %4396
  %4400 = select i1 %4391, float %4393, float %4397
  %4401 = select i1 %4391, float %4394, float %4398
  %4402 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4403 = extractvalue %dx.types.CBufRet.f32 %4402, 0
  %4404 = extractvalue %dx.types.CBufRet.f32 %4402, 1
  %4405 = extractvalue %dx.types.CBufRet.f32 %4402, 2
  %4406 = fadd fast float %4403, %141
  %4407 = fadd fast float %4404, %142
  %4408 = fadd fast float %4405, %143
  %4409 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 343)  ; CBufferLoadLegacy(handle,regIndex)
  %4410 = extractvalue %dx.types.CBufRet.f32 %4409, 0
  %4411 = extractvalue %dx.types.CBufRet.f32 %4409, 1
  %4412 = fsub fast float %4406, %4410
  %4413 = fsub fast float %4407, %4411
  %4414 = fmul fast float %4412, %4412
  %4415 = fmul fast float %4413, %4413
  %4416 = fadd fast float %4414, %4415
  %4417 = call float @dx.op.unary.f32(i32 24, float %4416)  ; Sqrt(value)
  %4418 = extractvalue %dx.types.CBufRet.f32 %4409, 2
  %4419 = fcmp fast olt float %4417, %4418
  br i1 %4419, label %4420, label %4487

; <label>:4420                                    ; preds = %4347
  %4421 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4422 = extractvalue %dx.types.CBufRet.f32 %4421, 0
  %4423 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4424 = extractvalue %dx.types.CBufRet.f32 %4423, 0
  %4425 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4426 = extractvalue %dx.types.CBufRet.f32 %4425, 0
  %4427 = extractvalue %dx.types.CBufRet.f32 %4421, 1
  %4428 = extractvalue %dx.types.CBufRet.f32 %4423, 1
  %4429 = extractvalue %dx.types.CBufRet.f32 %4425, 1
  %4430 = extractvalue %dx.types.CBufRet.f32 %4421, 3
  %4431 = extractvalue %dx.types.CBufRet.f32 %4423, 3
  %4432 = extractvalue %dx.types.CBufRet.f32 %4425, 3
  %4433 = fadd fast float %4430, %4406
  %4434 = fadd fast float %4431, %4407
  %4435 = fadd fast float %4432, %4408
  %4436 = fmul fast float %4433, %4422
  %4437 = call float @dx.op.tertiary.f32(i32 46, float %4434, float %4424, float %4436)  ; FMad(a,b,c)
  %4438 = call float @dx.op.tertiary.f32(i32 46, float %4435, float %4426, float %4437)  ; FMad(a,b,c)
  %4439 = fmul fast float %4433, %4427
  %4440 = call float @dx.op.tertiary.f32(i32 46, float %4434, float %4428, float %4439)  ; FMad(a,b,c)
  %4441 = call float @dx.op.tertiary.f32(i32 46, float %4435, float %4429, float %4440)  ; FMad(a,b,c)
  %4442 = fsub fast float %4438, %4430
  %4443 = fsub fast float %4441, %4431
  %4444 = fsub fast float %4442, %4410
  %4445 = fadd fast float %4444, %4418
  %4446 = fsub fast float %4443, %4411
  %4447 = fadd fast float %4446, %4418
  %4448 = extractvalue %dx.types.CBufRet.f32 %4409, 3
  %4449 = fmul fast float %4445, %4448
  %4450 = fmul fast float %4447, %4448
  %4451 = call float @dx.op.unary.f32(i32 7, float %4449)  ; Saturate(value)
  %4452 = call float @dx.op.unary.f32(i32 7, float %4450)  ; Saturate(value)
  %4453 = fsub fast float 1.000000e+00, %4451
  %4454 = fsub fast float 1.000000e+00, %4452
  %4455 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %18, %dx.types.Handle %39, float %4453, float %4454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4456 = extractvalue %dx.types.ResRet.f32 %4455, 0
  %4457 = fcmp fast ugt float %4456, 0.000000e+00
  br i1 %4457, label %4458, label %4761

; <label>:4458                                    ; preds = %4420
  %4459 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4460 = extractvalue %dx.types.CBufRet.f32 %4459, 2
  %4461 = fmul fast float %4460, %4456
  %4462 = extractvalue %dx.types.CBufRet.f32 %4459, 3
  %4463 = fadd fast float %4462, %4461
  %4464 = extractvalue %dx.types.CBufRet.f32 %4425, 2
  %4465 = fadd fast float %4463, %4432
  %4466 = fmul fast float %4438, %4426
  %4467 = call float @dx.op.tertiary.f32(i32 46, float %4441, float %4429, float %4466)  ; FMad(a,b,c)
  %4468 = call float @dx.op.tertiary.f32(i32 46, float %4465, float %4464, float %4467)  ; FMad(a,b,c)
  %4469 = fsub fast float %4468, %4432
  %4470 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4471 = extractvalue %dx.types.CBufRet.f32 %4470, 2
  %4472 = fsub fast float %4469, %4471
  %4473 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %17, %dx.types.Handle %39, float %4453, float %4454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4474 = extractvalue %dx.types.ResRet.f32 %4473, 0
  %4475 = extractvalue %dx.types.ResRet.f32 %4473, 1
  %4476 = extractvalue %dx.types.ResRet.f32 %4473, 2
  %4477 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %16, %dx.types.Handle %39, float %4453, float %4454, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4478 = extractvalue %dx.types.ResRet.f32 %4477, 0
  %4479 = extractvalue %dx.types.ResRet.f32 %4477, 1
  %4480 = extractvalue %dx.types.ResRet.f32 %4477, 2
  %4481 = fadd fast float %4478, %4474
  %4482 = fmul fast float %4481, 0x3F847AE140000000
  %4483 = fadd fast float %4479, %4475
  %4484 = fmul fast float %4483, 0x3F847AE140000000
  %4485 = fadd fast float %4480, %4476
  %4486 = fmul fast float %4485, 0x3F847AE140000000
  br label %4761

; <label>:4487                                    ; preds = %4347
  %4488 = and i32 %159, 1
  %4489 = icmp eq i32 %4488, 0
  br i1 %4489, label %4761, label %4490

; <label>:4490                                    ; preds = %4487
  %4491 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4492 = extractvalue %dx.types.CBufRet.f32 %4491, 0
  %4493 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4494 = extractvalue %dx.types.CBufRet.f32 %4493, 0
  %4495 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4496 = extractvalue %dx.types.CBufRet.f32 %4495, 0
  %4497 = extractvalue %dx.types.CBufRet.f32 %4491, 1
  %4498 = extractvalue %dx.types.CBufRet.f32 %4493, 1
  %4499 = extractvalue %dx.types.CBufRet.f32 %4495, 1
  %4500 = extractvalue %dx.types.CBufRet.f32 %4491, 3
  %4501 = extractvalue %dx.types.CBufRet.f32 %4493, 3
  %4502 = extractvalue %dx.types.CBufRet.f32 %4495, 3
  %4503 = fadd fast float %4500, %4406
  %4504 = fadd fast float %4501, %4407
  %4505 = fadd fast float %4502, %4408
  %4506 = fmul fast float %4503, %4492
  %4507 = call float @dx.op.tertiary.f32(i32 46, float %4504, float %4494, float %4506)  ; FMad(a,b,c)
  %4508 = call float @dx.op.tertiary.f32(i32 46, float %4505, float %4496, float %4507)  ; FMad(a,b,c)
  %4509 = fmul fast float %4503, %4497
  %4510 = call float @dx.op.tertiary.f32(i32 46, float %4504, float %4498, float %4509)  ; FMad(a,b,c)
  %4511 = call float @dx.op.tertiary.f32(i32 46, float %4505, float %4499, float %4510)  ; FMad(a,b,c)
  %4512 = fsub fast float %4508, %4500
  %4513 = fsub fast float %4511, %4501
  %4514 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 350)  ; CBufferLoadLegacy(handle,regIndex)
  %4515 = extractvalue %dx.types.CBufRet.f32 %4514, 0
  %4516 = extractvalue %dx.types.CBufRet.f32 %4514, 1
  %4517 = extractvalue %dx.types.CBufRet.f32 %4514, 2
  %4518 = extractvalue %dx.types.CBufRet.f32 %4514, 3
  %4519 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4520 = extractvalue %dx.types.CBufRet.f32 %4519, 3
  %4521 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 351)  ; CBufferLoadLegacy(handle,regIndex)
  %4522 = extractvalue %dx.types.CBufRet.i32 %4521, 0
  %4523 = extractvalue %dx.types.CBufRet.i32 %4521, 1
  %4524 = udiv i32 %4523, %4522
  %4525 = fsub fast float %4512, %4515
  %4526 = fsub fast float %4513, %4516
  %4527 = call float @dx.op.binary.f32(i32 35, float %4525, float 0.000000e+00)  ; FMax(a,b)
  %4528 = call float @dx.op.binary.f32(i32 35, float %4526, float 0.000000e+00)  ; FMax(a,b)
  %4529 = call float @dx.op.binary.f32(i32 36, float %4527, float %4517)  ; FMin(a,b)
  %4530 = call float @dx.op.binary.f32(i32 36, float %4528, float %4518)  ; FMin(a,b)
  %4531 = add i32 %4522, -1
  %4532 = add i32 %4524, -1
  %4533 = fmul fast float %4529, %4520
  %4534 = fmul fast float %4530, %4520
  %4535 = fptoui float %4533 to i32
  %4536 = fptoui float %4534 to i32
  %4537 = call i32 @dx.op.binary.i32(i32 40, i32 %4535, i32 %4531)  ; UMin(a,b)
  %4538 = call i32 @dx.op.binary.i32(i32 40, i32 %4536, i32 %4532)  ; UMin(a,b)
  %4539 = mul i32 %4538, %4522
  %4540 = add i32 %4539, %4537
  %4541 = shl i32 %4540, 2
  %4542 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %12, i32 %4541, i32 undef)  ; BufferLoad(srv,index,wot)
  %4543 = extractvalue %dx.types.ResRet.i32 %4542, 0
  %4544 = icmp eq i32 %4543, -1
  br i1 %4544, label %4761, label %4545

; <label>:4545                                    ; preds = %4490
  %4546 = mul i32 %4543, 148
  %4547 = add i32 %4546, 4
  %4548 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4547, i32 undef)  ; BufferLoad(srv,index,wot)
  %4549 = extractvalue %dx.types.ResRet.f32 %4548, 0
  %4550 = add i32 %4546, 8
  %4551 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4550, i32 undef)  ; BufferLoad(srv,index,wot)
  %4552 = extractvalue %dx.types.ResRet.f32 %4551, 0
  %4553 = add i32 %4546, 36
  %4554 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4553, i32 undef)  ; BufferLoad(srv,index,wot)
  %4555 = extractvalue %dx.types.ResRet.f32 %4554, 0
  %4556 = add i32 %4546, 60
  %4557 = add i32 %4546, 92
  %4558 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4557, i32 undef)  ; BufferLoad(srv,index,wot)
  %4559 = extractvalue %dx.types.ResRet.i32 %4558, 0
  %4560 = add i32 %4546, 116
  %4561 = fsub fast float %4512, %4549
  %4562 = fsub fast float %4513, %4552
  %4563 = fmul fast float %4520, %4561
  %4564 = fmul fast float %4520, %4562
  %4565 = call float @dx.op.unary.f32(i32 7, float %4563)  ; Saturate(value)
  %4566 = call float @dx.op.unary.f32(i32 7, float %4564)  ; Saturate(value)
  %4567 = fsub fast float 1.000000e+00, %4566
  %4568 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4569 = extractvalue %dx.types.CBufRet.f32 %4568, 2
  %4570 = call float @dx.op.unary.f32(i32 83, float %4565)  ; DerivCoarseX(value)
  %4571 = call float @dx.op.unary.f32(i32 83, float %4567)  ; DerivCoarseX(value)
  %4572 = call float @dx.op.unary.f32(i32 84, float %4565)  ; DerivCoarseY(value)
  %4573 = call float @dx.op.unary.f32(i32 84, float %4567)  ; DerivCoarseY(value)
  %4574 = fmul fast float %4570, %4569
  %4575 = fmul fast float %4571, %4569
  %4576 = fmul fast float %4572, %4569
  %4577 = fmul fast float %4573, %4569
  %4578 = call float @dx.op.dot2.f32(i32 54, float %4576, float %4577, float %4576, float %4577)  ; Dot2(ax,ay,bx,by)
  %4579 = call float @dx.op.dot2.f32(i32 54, float %4574, float %4575, float %4574, float %4575)  ; Dot2(ax,ay,bx,by)
  %4580 = call float @dx.op.binary.f32(i32 35, float %4579, float %4578)  ; FMax(a,b)
  %4581 = call float @dx.op.unary.f32(i32 23, float %4580)  ; Log(value)
  %4582 = fmul fast float %4581, 5.000000e-01
  %4583 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 8)  ; CBufferLoadLegacy(handle,regIndex)
  %4584 = extractvalue %dx.types.CBufRet.f32 %4583, 1
  %4585 = fadd fast float %4584, %4582
  %4586 = call float @dx.op.binary.f32(i32 35, float %4585, float 0.000000e+00)  ; FMax(a,b)
  %4587 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 345)  ; CBufferLoadLegacy(handle,regIndex)
  %4588 = extractvalue %dx.types.CBufRet.f32 %4587, 3
  %4589 = fadd fast float %4588, %4586
  %4590 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 347)  ; CBufferLoadLegacy(handle,regIndex)
  %4591 = extractvalue %dx.types.CBufRet.f32 %4590, 3
  %4592 = fadd fast float %4589, %4591
  %4593 = add i32 %4559, 0
  %4594 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4593, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4595 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4594, i32 0)  ; GetDimensions(handle,mipLevel)
  %4596 = extractvalue %dx.types.Dimensions %4595, 0
  %4597 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4596)  ; FirstbitLo(value)
  %4598 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4599 = extractvalue %dx.types.CBufRet.i32 %4598, 1
  %4600 = sub nsw i32 %4599, %4597
  %4601 = sitofp i32 %4600 to float
  %4602 = fsub fast float %4592, %4601
  %4603 = call float @dx.op.binary.f32(i32 35, float %4602, float 0.000000e+00)  ; FMax(a,b)
  %4604 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4594, %dx.types.Handle %37, float %4565, float %4567, float %4555, float undef, i32 0, i32 0, i32 undef, float %4603)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4605 = extractvalue %dx.types.ResRet.f32 %4604, 0
  %4606 = fcmp ule float %4605, 0x3FE0101020000000
  %4607 = extractvalue %dx.types.CBufRet.i32 %4598, 0
  %4608 = and i32 %4607, 128
  %4609 = icmp ne i32 %4608, 0
  %4610 = and i1 %4606, %4609
  br i1 %4610, label %4761, label %4611

; <label>:4611                                    ; preds = %4545
  %4612 = add i32 %4546, 20
  %4613 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4612, i32 undef)  ; BufferLoad(srv,index,wot)
  %4614 = extractvalue %dx.types.ResRet.f32 %4613, 0
  %4615 = add i32 %4546, 24
  %4616 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4615, i32 undef)  ; BufferLoad(srv,index,wot)
  %4617 = extractvalue %dx.types.ResRet.f32 %4616, 0
  %4618 = add i32 %4546, 40
  %4619 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4618, i32 undef)  ; BufferLoad(srv,index,wot)
  %4620 = extractvalue %dx.types.ResRet.f32 %4619, 0
  %4621 = add i32 %4546, 96
  %4622 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4621, i32 undef)  ; BufferLoad(srv,index,wot)
  %4623 = extractvalue %dx.types.ResRet.i32 %4622, 0
  %4624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4625 = extractvalue %dx.types.CBufRet.f32 %4624, 2
  %4626 = fmul fast float %4625, %4565
  %4627 = fmul fast float %4625, %4567
  %4628 = extractvalue %dx.types.CBufRet.f32 %4624, 3
  %4629 = fadd fast float %4626, %4628
  %4630 = fadd fast float %4627, %4628
  %4631 = add i32 %4623, 0
  %4632 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4631, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4633 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4632, i32 0)  ; GetDimensions(handle,mipLevel)
  %4634 = extractvalue %dx.types.Dimensions %4633, 0
  %4635 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4634)  ; FirstbitLo(value)
  %4636 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4637 = extractvalue %dx.types.CBufRet.i32 %4636, 1
  %4638 = sub nsw i32 %4637, %4635
  %4639 = sitofp i32 %4638 to float
  %4640 = fsub fast float %4589, %4639
  %4641 = call float @dx.op.binary.f32(i32 35, float %4640, float 0.000000e+00)  ; FMax(a,b)
  %4642 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4632, %dx.types.Handle %37, float %4629, float %4630, float %4620, float undef, i32 0, i32 0, i32 undef, float %4641)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4643 = extractvalue %dx.types.ResRet.f32 %4642, 0
  %4644 = fmul fast float %4643, %4614
  %4645 = fadd fast float %4644, %4617
  %4646 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 354)  ; CBufferLoadLegacy(handle,regIndex)
  %4647 = extractvalue %dx.types.CBufRet.f32 %4646, 0
  %4648 = extractvalue %dx.types.CBufRet.f32 %4646, 1
  %4649 = extractvalue %dx.types.CBufRet.f32 %4646, 2
  %4650 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 352)  ; CBufferLoadLegacy(handle,regIndex)
  %4651 = extractvalue %dx.types.CBufRet.f32 %4650, 3
  %4652 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 353)  ; CBufferLoadLegacy(handle,regIndex)
  %4653 = extractvalue %dx.types.CBufRet.f32 %4652, 3
  %4654 = extractvalue %dx.types.CBufRet.f32 %4646, 3
  %4655 = fadd fast float %4651, %4512
  %4656 = fadd fast float %4653, %4513
  %4657 = fadd fast float %4645, %4654
  %4658 = fmul fast float %4655, %4647
  %4659 = call float @dx.op.tertiary.f32(i32 46, float %4656, float %4648, float %4658)  ; FMad(a,b,c)
  %4660 = call float @dx.op.tertiary.f32(i32 46, float %4657, float %4649, float %4659)  ; FMad(a,b,c)
  %4661 = fsub fast float %4660, %4654
  %4662 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 124)  ; CBufferLoadLegacy(handle,regIndex)
  %4663 = extractvalue %dx.types.CBufRet.f32 %4662, 2
  %4664 = fsub fast float %4661, %4663
  %4665 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 332)  ; CBufferLoadLegacy(handle,regIndex)
  %4666 = extractvalue %dx.types.CBufRet.i32 %4665, 0
  %4667 = call i32 @dx.op.binary.i32(i32 40, i32 %4543, i32 %4666)  ; UMin(a,b)
  %4668 = mul i32 %4667, 36
  %4669 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4668, i32 undef)  ; BufferLoad(srv,index,wot)
  %4670 = extractvalue %dx.types.ResRet.i32 %4669, 0
  %4671 = add i32 %4668, 4
  %4672 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 330)  ; CBufferLoadLegacy(handle,regIndex)
  %4673 = extractvalue %dx.types.CBufRet.f32 %4672, 0
  %4674 = fmul fast float %4673, %4565
  %4675 = fmul fast float %4673, %4567
  %4676 = extractvalue %dx.types.CBufRet.f32 %4672, 1
  %4677 = fadd fast float %4674, %4676
  %4678 = fadd fast float %4675, %4676
  %4679 = icmp eq i32 %4670, 0
  br i1 %4679, label %4748, label %4680

; <label>:4680                                    ; preds = %4611
  br label %4681

; <label>:4681                                    ; preds = %4738, %4680
  %4682 = phi float [ %4739, %4738 ], [ 0.000000e+00, %4680 ]
  %4683 = phi float [ %4740, %4738 ], [ 0.000000e+00, %4680 ]
  %4684 = phi float [ %4741, %4738 ], [ 0.000000e+00, %4680 ]
  %4685 = phi float [ %4742, %4738 ], [ 0.000000e+00, %4680 ]
  %4686 = phi float [ %4743, %4738 ], [ 0.000000e+00, %4680 ]
  %4687 = phi float [ %4744, %4738 ], [ 0.000000e+00, %4680 ]
  %4688 = phi i32 [ %4745, %4738 ], [ 0, %4680 ]
  %4689 = shl i32 %4688, 2
  %4690 = add i32 %4556, %4689
  %4691 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %14, i32 %4690, i32 undef)  ; BufferLoad(srv,index,wot)
  %4692 = extractvalue %dx.types.ResRet.f32 %4691, 0
  %4693 = add i32 %4560, %4689
  %4694 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %14, i32 %4693, i32 undef)  ; BufferLoad(srv,index,wot)
  %4695 = extractvalue %dx.types.ResRet.i32 %4694, 0
  %4696 = add i32 %4695, 0
  %4697 = call %dx.types.Handle @dx.op.createHandle(i32 57, i8 0, i32 2, i32 %4696, i1 true)  ; CreateHandle(resourceClass,rangeId,index,nonUniformIndex)
  %4698 = call %dx.types.Dimensions @dx.op.getDimensions(i32 72, %dx.types.Handle %4697, i32 0)  ; GetDimensions(handle,mipLevel)
  %4699 = extractvalue %dx.types.Dimensions %4698, 0
  %4700 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %4699)  ; FirstbitLo(value)
  %4701 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 329)  ; CBufferLoadLegacy(handle,regIndex)
  %4702 = extractvalue %dx.types.CBufRet.i32 %4701, 1
  %4703 = sub nsw i32 %4702, %4700
  %4704 = sitofp i32 %4703 to float
  %4705 = fsub fast float %4589, %4704
  %4706 = call float @dx.op.binary.f32(i32 35, float %4705, float 0.000000e+00)  ; FMax(a,b)
  %4707 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4697, %dx.types.Handle %37, float %4677, float %4678, float %4692, float undef, i32 0, i32 0, i32 undef, float %4706)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4708 = extractvalue %dx.types.ResRet.f32 %4707, 0
  %4709 = fcmp fast ogt float %4708, 0.000000e+00
  br i1 %4709, label %4710, label %4738

; <label>:4710                                    ; preds = %4681
  %4711 = add i32 %4671, %4689
  %4712 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %13, i32 %4711, i32 undef)  ; BufferLoad(srv,index,wot)
  %4713 = extractvalue %dx.types.ResRet.i32 %4712, 0
  %4714 = and i32 %4713, 32767
  %4715 = mul nuw nsw i32 %4714, 928
  %4716 = add nuw nsw i32 %4715, 48
  %4717 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4716, i32 undef)  ; BufferLoad(srv,index,wot)
  %4718 = extractvalue %dx.types.ResRet.f32 %4717, 0
  %4719 = extractvalue %dx.types.ResRet.f32 %4717, 1
  %4720 = extractvalue %dx.types.ResRet.f32 %4717, 2
  %4721 = add nuw nsw i32 %4715, 60
  %4722 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %15, i32 %4721, i32 undef)  ; BufferLoad(srv,index,wot)
  %4723 = extractvalue %dx.types.ResRet.f32 %4722, 0
  %4724 = extractvalue %dx.types.ResRet.f32 %4722, 1
  %4725 = extractvalue %dx.types.ResRet.f32 %4722, 2
  %4726 = fmul fast float %4718, %4708
  %4727 = fmul fast float %4719, %4708
  %4728 = fmul fast float %4720, %4708
  %4729 = fadd fast float %4726, %4682
  %4730 = fadd fast float %4727, %4683
  %4731 = fadd fast float %4728, %4684
  %4732 = fmul fast float %4723, %4708
  %4733 = fmul fast float %4724, %4708
  %4734 = fmul fast float %4725, %4708
  %4735 = fadd fast float %4732, %4685
  %4736 = fadd fast float %4733, %4686
  %4737 = fadd fast float %4734, %4687
  br label %4738

; <label>:4738                                    ; preds = %4710, %4681
  %4739 = phi float [ %4729, %4710 ], [ %4682, %4681 ]
  %4740 = phi float [ %4730, %4710 ], [ %4683, %4681 ]
  %4741 = phi float [ %4731, %4710 ], [ %4684, %4681 ]
  %4742 = phi float [ %4735, %4710 ], [ %4685, %4681 ]
  %4743 = phi float [ %4736, %4710 ], [ %4686, %4681 ]
  %4744 = phi float [ %4737, %4710 ], [ %4687, %4681 ]
  %4745 = add nuw i32 %4688, 1
  %4746 = icmp eq i32 %4745, %4670
  br i1 %4746, label %4747, label %4681

; <label>:4747                                    ; preds = %4738
  br label %4748

; <label>:4748                                    ; preds = %4747, %4611
  %4749 = phi float [ 0.000000e+00, %4611 ], [ %4739, %4747 ]
  %4750 = phi float [ 0.000000e+00, %4611 ], [ %4740, %4747 ]
  %4751 = phi float [ 0.000000e+00, %4611 ], [ %4741, %4747 ]
  %4752 = phi float [ 0.000000e+00, %4611 ], [ %4742, %4747 ]
  %4753 = phi float [ 0.000000e+00, %4611 ], [ %4743, %4747 ]
  %4754 = phi float [ 0.000000e+00, %4611 ], [ %4744, %4747 ]
  %4755 = fadd fast float %4752, %4749
  %4756 = fmul fast float %4755, 0x3F847AE140000000
  %4757 = fadd fast float %4753, %4750
  %4758 = fmul fast float %4757, 0x3F847AE140000000
  %4759 = fadd fast float %4754, %4751
  %4760 = fmul fast float %4759, 0x3F847AE140000000
  br label %4761

; <label>:4761                                    ; preds = %4748, %4545, %4490, %4487, %4458, %4420
  %4762 = phi float [ %4472, %4458 ], [ -1.310720e+05, %4420 ], [ %4664, %4748 ], [ -1.310720e+05, %4490 ], [ -1.310720e+05, %4545 ], [ -1.310720e+05, %4487 ]
  %4763 = phi float [ %4482, %4458 ], [ 0.000000e+00, %4420 ], [ %4756, %4748 ], [ 0.000000e+00, %4490 ], [ 0.000000e+00, %4545 ], [ 0.000000e+00, %4487 ]
  %4764 = phi float [ %4484, %4458 ], [ 0.000000e+00, %4420 ], [ %4758, %4748 ], [ 0.000000e+00, %4490 ], [ 0.000000e+00, %4545 ], [ 0.000000e+00, %4487 ]
  %4765 = phi float [ %4486, %4458 ], [ 0.000000e+00, %4420 ], [ %4760, %4748 ], [ 0.000000e+00, %4490 ], [ 0.000000e+00, %4545 ], [ 0.000000e+00, %4487 ]
  %4766 = phi i1 [ true, %4458 ], [ false, %4420 ], [ true, %4748 ], [ false, %4490 ], [ false, %4545 ], [ false, %4487 ]
  %4767 = and i32 %159, 3
  %4768 = icmp eq i32 %4767, 1
  %4769 = select i1 %4768, float 1.000000e+00, float 0.000000e+00
  %4770 = fsub fast float %4762, %143
  %4771 = call float @dx.op.unary.f32(i32 7, float %4770)  ; Saturate(value)
  %4772 = select i1 %4766, float %4771, float 1.000000e+00
  %4773 = fmul fast float %4772, %4769
  %4774 = icmp eq i32 %4767, 3
  %4775 = select i1 %4774, float 1.000000e+00, float %4773
  %4776 = call float @dx.op.binary.f32(i32 35, float %4363, float %4775)  ; FMax(a,b)
  %4777 = call float @dx.op.unary.f32(i32 7, float %4776)  ; Saturate(value)
  %4778 = fcmp fast une float %4777, 0.000000e+00
  %4779 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %141, float %142, float %143)  ; Dot3(ax,ay,az,bx,by,bz)
  %4780 = call float @dx.op.unary.f32(i32 25, float %4779)  ; Rsqrt(value)
  br i1 %4778, label %4788, label %4781

; <label>:4781                                    ; preds = %4761
  %4782 = fmul fast float %4780, %141
  %4783 = fmul fast float %4780, %142
  %4784 = fmul fast float %4780, %143
  %4785 = fsub fast float -0.000000e+00, %4782
  %4786 = fsub fast float -0.000000e+00, %4783
  %4787 = fsub fast float -0.000000e+00, %4784
  br label %4956

; <label>:4788                                    ; preds = %4761
  %4789 = fmul fast float %141, %4780
  %4790 = fsub fast float -0.000000e+00, %4789
  %4791 = fmul fast float %142, %4780
  %4792 = fsub fast float -0.000000e+00, %4791
  %4793 = fmul fast float %143, %4780
  %4794 = fsub fast float -0.000000e+00, %4793
  %4795 = call float @dx.op.dot3.f32(i32 55, float %4790, float %4792, float %4794, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %4796 = fmul fast float %4777, 2.500000e+00
  %4797 = call float @dx.op.unary.f32(i32 7, float %4796)  ; Saturate(value)
  %4798 = fmul fast float %4777, 0x4013FFFFE0000000
  %4799 = fadd fast float %4798, 0xBFFFFFFFE0000000
  %4800 = call float @dx.op.unary.f32(i32 7, float %4799)  ; Saturate(value)
  %4801 = fmul fast float %4777, 0x4004000020000000
  %4802 = fadd fast float %4801, 0xBFF8000040000000
  %4803 = call float @dx.op.unary.f32(i32 7, float %4802)  ; Saturate(value)
  %4804 = call float @dx.op.unary.f32(i32 7, float %4797)  ; Saturate(value)
  %4805 = fmul fast float %4366, 1.000000e+01
  %4806 = call float @dx.op.unary.f32(i32 7, float %4805)  ; Saturate(value)
  %4807 = fmul fast float %4806, 2.000000e+00
  %4808 = fsub fast float 3.000000e+00, %4807
  %4809 = fmul fast float %4806, %4806
  %4810 = fmul fast float %4809, %4808
  %4811 = fsub fast float 1.000000e+00, %4810
  %4812 = fsub fast float 0x3FE3333340000000, %4387
  %4813 = fmul fast float %4812, 0x400AAAAAA0000000
  %4814 = call float @dx.op.unary.f32(i32 7, float %4813)  ; Saturate(value)
  %4815 = fmul fast float %4811, %4814
  %4816 = fmul fast float %4399, 0x3FEA2B8620000000
  %4817 = fmul fast float %4400, 0x3FEA2B8620000000
  %4818 = fmul fast float %4401, 0x3FEA2B8620000000
  %4819 = fadd fast float %4816, 0x3FC81DFBA0000000
  %4820 = fmul fast float %4819, %4399
  %4821 = fadd fast float %4820, 0x3F910E6020000000
  %4822 = fadd fast float %4817, 0x3FC81DFBA0000000
  %4823 = fmul fast float %4822, %4400
  %4824 = fadd fast float %4823, 0x3F910E6020000000
  %4825 = fadd fast float %4818, 0x3FC81DFBA0000000
  %4826 = fmul fast float %4825, %4401
  %4827 = fadd fast float %4826, 0x3F910E6020000000
  %4828 = call float @dx.op.unary.f32(i32 7, float %4821)  ; Saturate(value)
  %4829 = call float @dx.op.unary.f32(i32 7, float %4824)  ; Saturate(value)
  %4830 = call float @dx.op.unary.f32(i32 7, float %4827)  ; Saturate(value)
  %4831 = fsub fast float %4828, %4399
  %4832 = fsub fast float %4829, %4400
  %4833 = fsub fast float %4830, %4401
  %4834 = fmul fast float %4831, %4804
  %4835 = fmul fast float %4834, %4815
  %4836 = fmul fast float %4832, %4804
  %4837 = fmul fast float %4836, %4815
  %4838 = fmul fast float %4833, %4804
  %4839 = fmul fast float %4838, %4815
  %4840 = fadd fast float %4835, %4399
  %4841 = fadd fast float %4837, %4400
  %4842 = fadd fast float %4839, %4401
  %4843 = fmul fast float %4360, %4360
  %4844 = fmul fast float %4843, %4843
  %4845 = fadd fast float %4800, 1.000000e+00
  %4846 = fsub fast float %4845, %4815
  %4847 = call float @dx.op.unary.f32(i32 7, float %4846)  ; Saturate(value)
  %4848 = call float @dx.op.dot3.f32(i32 55, float %85, float %86, float %87, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %4849 = call float @dx.op.unary.f32(i32 7, float %4848)  ; Saturate(value)
  %4850 = fsub fast float 1.000000e+00, %4844
  %4851 = call float @dx.op.binary.f32(i32 36, float %4847, float %4850)  ; FMin(a,b)
  %4852 = call float @dx.op.unary.f32(i32 7, float %4803)  ; Saturate(value)
  %4853 = call float @dx.op.binary.f32(i32 35, float %4851, float %4852)  ; FMax(a,b)
  %4854 = fadd fast float %4849, 0xBFE4CCCCC0000000
  %4855 = fmul fast float %4854, 0x4006DB6DA0000000
  %4856 = call float @dx.op.unary.f32(i32 7, float %4855)  ; Saturate(value)
  %4857 = fmul fast float %4856, 2.000000e+00
  %4858 = fsub fast float 3.000000e+00, %4857
  %4859 = bitcast float %4384 to i32
  %4860 = ashr i32 %4859, 1
  %4861 = add nsw i32 %4860, 532487669
  %4862 = bitcast i32 %4861 to float
  %4863 = fsub fast float 1.000000e+00, %4862
  %4864 = bitcast float %4863 to i32
  %4865 = sub nsw i32 2129859010, %4864
  %4866 = bitcast i32 %4865 to float
  %4867 = fmul fast float %4866, 2.000000e+00
  %4868 = bitcast float %4385 to i32
  %4869 = ashr i32 %4868, 1
  %4870 = add nsw i32 %4869, 532487669
  %4871 = bitcast i32 %4870 to float
  %4872 = fsub fast float 1.000000e+00, %4871
  %4873 = bitcast float %4872 to i32
  %4874 = sub nsw i32 2129859010, %4873
  %4875 = bitcast i32 %4874 to float
  %4876 = fmul fast float %4875, 2.000000e+00
  %4877 = bitcast float %4386 to i32
  %4878 = ashr i32 %4877, 1
  %4879 = add nsw i32 %4878, 532487669
  %4880 = bitcast i32 %4879 to float
  %4881 = fsub fast float 1.000000e+00, %4880
  %4882 = bitcast float %4881 to i32
  %4883 = sub nsw i32 2129859010, %4882
  %4884 = bitcast i32 %4883 to float
  %4885 = fmul fast float %4884, 2.000000e+00
  %4886 = fsub fast float 0x4002A9FBE0000000, %4867
  %4887 = fadd fast float %4867, 0x3FD54FDF00000000
  %4888 = bitcast float %4887 to i32
  %4889 = sub nsw i32 2129859010, %4888
  %4890 = bitcast i32 %4889 to float
  %4891 = fmul fast float %4890, %4886
  %4892 = fmul fast float %4891, %4891
  %4893 = fsub fast float 0x4002A9FBE0000000, %4876
  %4894 = fadd fast float %4876, 0x3FD54FDF00000000
  %4895 = bitcast float %4894 to i32
  %4896 = sub nsw i32 2129859010, %4895
  %4897 = bitcast i32 %4896 to float
  %4898 = fmul fast float %4897, %4893
  %4899 = fmul fast float %4898, %4898
  %4900 = fsub fast float 0x4002A9FBE0000000, %4885
  %4901 = fadd fast float %4885, 0x3FD54FDF00000000
  %4902 = bitcast float %4901 to i32
  %4903 = sub nsw i32 2129859010, %4902
  %4904 = bitcast i32 %4903 to float
  %4905 = fmul fast float %4904, %4900
  %4906 = fmul fast float %4905, %4905
  %4907 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4892)  ; FMax(a,b)
  %4908 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4899)  ; FMax(a,b)
  %4909 = call float @dx.op.binary.f32(i32 35, float 0x3F999999A0000000, float %4906)  ; FMax(a,b)
  %4910 = fsub fast float 1.000000e+00, %4795
  %4911 = fadd fast float %4910, %4811
  %4912 = call float @dx.op.unary.f32(i32 7, float %4911)  ; Saturate(value)
  %4913 = fsub fast float 1.000000e+00, %4775
  %4914 = fmul fast float %4853, %4913
  %4915 = fmul fast float %4856, %4856
  %4916 = fmul fast float %4915, %4914
  %4917 = fmul fast float %4916, %4858
  %4918 = fmul fast float %4913, 0xBFE99999A0000000
  %4919 = fmul fast float %4918, %4804
  %4920 = fmul fast float %4919, %4815
  %4921 = fadd fast float %4920, 1.000000e+00
  %4922 = fadd fast float %4387, -1.000000e+00
  %4923 = fmul fast float %4921, %4922
  %4924 = fadd fast float %4923, 1.000000e+00
  %4925 = fsub fast float %4907, %4384
  %4926 = fsub fast float %4908, %4385
  %4927 = fsub fast float %4909, %4386
  %4928 = fmul fast float %4917, %4925
  %4929 = fmul fast float %4917, %4926
  %4930 = fmul fast float %4917, %4927
  %4931 = fadd fast float %4928, %4384
  %4932 = fadd fast float %4929, %4385
  %4933 = fadd fast float %4930, %4386
  %4934 = fsub fast float %85, %4348
  %4935 = fsub fast float %86, %4349
  %4936 = fsub fast float %87, %4350
  %4937 = fmul fast float %4917, %4934
  %4938 = fmul fast float %4917, %4935
  %4939 = fmul fast float %4917, %4936
  %4940 = fadd fast float %4937, %4348
  %4941 = fadd fast float %4938, %4349
  %4942 = fadd fast float %4939, %4350
  %4943 = fmul fast float %4917, %4912
  %4944 = call float @dx.op.unary.f32(i32 7, float %4924)  ; Saturate(value)
  %4945 = fsub fast float 1.000000e+00, %4944
  %4946 = fmul fast float %4943, %4945
  %4947 = fadd fast float %4946, %4944
  %4948 = fsub fast float 1.000000e+00, %4360
  %4949 = fmul fast float %4917, %4948
  %4950 = fadd fast float %4949, %4360
  %4951 = call float @dx.op.dot3.f32(i32 55, float %4940, float %4941, float %4942, float %4940, float %4941, float %4942)  ; Dot3(ax,ay,az,bx,by,bz)
  %4952 = call float @dx.op.unary.f32(i32 25, float %4951)  ; Rsqrt(value)
  %4953 = fmul fast float %4940, %4952
  %4954 = fmul fast float %4941, %4952
  %4955 = fmul fast float %4942, %4952
  br label %4956

; <label>:4956                                    ; preds = %4788, %4781
  %4957 = phi float [ %4787, %4781 ], [ %4794, %4788 ]
  %4958 = phi float [ %4786, %4781 ], [ %4792, %4788 ]
  %4959 = phi float [ %4785, %4781 ], [ %4790, %4788 ]
  %4960 = phi float [ %4784, %4781 ], [ %4793, %4788 ]
  %4961 = phi float [ %4783, %4781 ], [ %4791, %4788 ]
  %4962 = phi float [ %4782, %4781 ], [ %4789, %4788 ]
  %4963 = phi float [ %4348, %4781 ], [ %4953, %4788 ]
  %4964 = phi float [ %4349, %4781 ], [ %4954, %4788 ]
  %4965 = phi float [ %4350, %4781 ], [ %4955, %4788 ]
  %4966 = phi float [ %4384, %4781 ], [ %4931, %4788 ]
  %4967 = phi float [ %4385, %4781 ], [ %4932, %4788 ]
  %4968 = phi float [ %4386, %4781 ], [ %4933, %4788 ]
  %4969 = phi float [ %4399, %4781 ], [ %4840, %4788 ]
  %4970 = phi float [ %4400, %4781 ], [ %4841, %4788 ]
  %4971 = phi float [ %4401, %4781 ], [ %4842, %4788 ]
  %4972 = phi float [ %4387, %4781 ], [ %4947, %4788 ]
  %4973 = phi float [ %4360, %4781 ], [ %4950, %4788 ]
  %4974 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 7)  ; CBufferLoadLegacy(handle,regIndex)
  %4975 = extractvalue %dx.types.CBufRet.f32 %4974, 2
  %4976 = extractvalue %dx.types.CBufRet.f32 %4974, 3
  %4977 = fmul fast float %4975, %78
  %4978 = fmul fast float %4976, %79
  %4979 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 26)  ; CBufferLoadLegacy(handle,regIndex)
  %4980 = extractvalue %dx.types.CBufRet.f32 %4979, 0
  %4981 = extractvalue %dx.types.CBufRet.f32 %4979, 1
  %4982 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %1, %dx.types.Handle %39, float %4977, float %4978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %4983 = extractvalue %dx.types.ResRet.f32 %4982, 0
  %4984 = fmul fast float %4983, %4981
  %4985 = call float @dx.op.unary.f32(i32 7, float %4984)  ; Saturate(value)
  %4986 = fadd fast float %4985, -1.000000e+00
  %4987 = fmul fast float %4986, %4980
  %4988 = fadd fast float %4987, 1.000000e+00
  %4989 = select i1 %183, float 0.000000e+00, float %4968
  %4990 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %4959, float %4958, float %4957)  ; Dot3(ax,ay,az,bx,by,bz)
  %4991 = call float @dx.op.unary.f32(i32 7, float %4990)  ; Saturate(value)
  %4992 = call float @dx.op.dot3.f32(i32 55, float %4962, float %4961, float %4960, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %4993 = fmul fast float %4992, 2.000000e+00
  %4994 = fmul fast float %4993, %4963
  %4995 = fmul fast float %4993, %4964
  %4996 = fmul fast float %4993, %4965
  %4997 = fsub fast float %4962, %4994
  %4998 = fsub fast float %4961, %4995
  %4999 = fsub fast float %4960, %4996
  %5000 = call float @dx.op.binary.f32(i32 36, float %4973, float %4988)  ; FMin(a,b)
  %5001 = fsub fast float 1.000000e+00, %5000
  %5002 = bitcast float %5001 to i32
  %5003 = ashr i32 %5002, 1
  %5004 = add nsw i32 %5003, 532487669
  %5005 = bitcast i32 %5004 to float
  %5006 = fsub fast float 1.000000e+00, %4972
  %5007 = call float @dx.op.binary.f32(i32 35, float %5006, float 0x3F847AE140000000)  ; FMax(a,b)
  %5008 = fmul fast float %5007, %5007
  %5009 = fmul fast float %5008, %5008
  %5010 = call float @dx.op.unary.f32(i32 7, float %4991)  ; Saturate(value)
  %5011 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %7, %dx.types.Handle %39, float %5005, float %5009, float %5010, float undef, i32 0, i32 0, i32 0, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5012 = extractvalue %dx.types.ResRet.f32 %5011, 0
  %5013 = fsub fast float 1.000000e+00, %4973
  %5014 = bitcast float %5013 to i32
  %5015 = sub nsw i32 2129859010, %5014
  %5016 = bitcast i32 %5015 to float
  %5017 = fsub fast float 1.000000e+00, %55
  %5018 = call float @dx.op.dot3.f32(i32 55, float %105, float %106, float %107, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5019 = call float @dx.op.binary.f32(i32 35, float %5018, float 0x3FA99999A0000000)  ; FMax(a,b)
  %5020 = fdiv fast float %5017, %5019
  %5021 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5022 = call float @dx.op.unary.f32(i32 7, float %5021)  ; Saturate(value)
  %5023 = fmul fast float %5022, 5.000000e-01
  %5024 = fadd fast float %5023, 5.000000e-01
  %5025 = fmul fast float %5024, %55
  %5026 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5027 = call float @dx.op.unary.f32(i32 7, float %5026)  ; Saturate(value)
  %5028 = fmul fast float %5027, %5020
  %5029 = fadd fast float %5025, %5028
  %5030 = fsub fast float 5.000000e-01, %5023
  %5031 = fmul fast float %5030, %4969
  %5032 = fmul fast float %5030, %4970
  %5033 = fmul fast float %5030, %4971
  %5034 = fadd fast float %5029, %5031
  %5035 = fadd fast float %5029, %5032
  %5036 = fadd fast float %5029, %5033
  %5037 = call float @dx.op.dot3.f32(i32 55, float %4997, float %4998, float %4999, float %85, float %86, float %87)  ; Dot3(ax,ay,az,bx,by,bz)
  %5038 = call float @dx.op.unary.f32(i32 7, float %5037)  ; Saturate(value)
  %5039 = fmul fast float %5038, 5.000000e-01
  %5040 = fadd fast float %5039, 5.000000e-01
  %5041 = fmul fast float %5040, %55
  %5042 = call float @dx.op.dot3.f32(i32 55, float %4997, float %4998, float %4999, float %105, float %106, float %107)  ; Dot3(ax,ay,az,bx,by,bz)
  %5043 = call float @dx.op.unary.f32(i32 7, float %5042)  ; Saturate(value)
  %5044 = fmul fast float %5043, %5020
  %5045 = fadd fast float %5041, %5044
  %5046 = fsub fast float 5.000000e-01, %5039
  %5047 = fmul fast float %5046, %4969
  %5048 = fmul fast float %5046, %4970
  %5049 = fmul fast float %5046, %4971
  %5050 = fadd fast float %5045, %5047
  %5051 = fadd fast float %5045, %5048
  %5052 = fadd fast float %5045, %5049
  %5053 = call float @dx.op.dot3.f32(i32 55, float %56, float %57, float %58, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5054 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 27)  ; CBufferLoadLegacy(handle,regIndex)
  %5055 = extractvalue %dx.types.CBufRet.f32 %5054, 0
  %5056 = call float @dx.op.binary.f32(i32 36, float %4969, float %5055)  ; FMin(a,b)
  %5057 = fmul fast float %5056, %5001
  %5058 = fsub fast float 1.000000e+00, %5057
  %5059 = bitcast float %5058 to i32
  %5060 = sub nsw i32 2129859010, %5059
  %5061 = bitcast i32 %5060 to float
  %5062 = call float @dx.op.binary.f32(i32 36, float %4970, float %5055)  ; FMin(a,b)
  %5063 = fmul fast float %5062, %5001
  %5064 = fsub fast float 1.000000e+00, %5063
  %5065 = bitcast float %5064 to i32
  %5066 = sub nsw i32 2129859010, %5065
  %5067 = bitcast i32 %5066 to float
  %5068 = call float @dx.op.binary.f32(i32 36, float %4971, float %5055)  ; FMin(a,b)
  %5069 = fmul fast float %5068, %5001
  %5070 = fsub fast float 1.000000e+00, %5069
  %5071 = bitcast float %5070 to i32
  %5072 = sub nsw i32 2129859010, %5071
  %5073 = bitcast i32 %5072 to float
  %5074 = fmul fast float %5000, %56
  %5075 = fmul fast float %5074, %5034
  %5076 = fmul fast float %5075, %5061
  %5077 = fmul fast float %5000, %57
  %5078 = fmul fast float %5077, %5035
  %5079 = fmul fast float %5078, %5067
  %5080 = fmul fast float %5000, %58
  %5081 = fmul fast float %5080, %5036
  %5082 = fmul fast float %5081, %5073
  %5083 = call float @dx.op.binary.f32(i32 36, float %4966, float %5055)  ; FMin(a,b)
  %5084 = fmul fast float %5083, %5001
  %5085 = fsub fast float 1.000000e+00, %5084
  %5086 = bitcast float %5085 to i32
  %5087 = sub nsw i32 2129859010, %5086
  %5088 = bitcast i32 %5087 to float
  %5089 = call float @dx.op.binary.f32(i32 36, float %4967, float %5055)  ; FMin(a,b)
  %5090 = fmul fast float %5089, %5001
  %5091 = fsub fast float 1.000000e+00, %5090
  %5092 = bitcast float %5091 to i32
  %5093 = sub nsw i32 2129859010, %5092
  %5094 = bitcast i32 %5093 to float
  %5095 = call float @dx.op.binary.f32(i32 36, float %4989, float %5055)  ; FMin(a,b)
  %5096 = fmul fast float %5095, %5001
  %5097 = fsub fast float 1.000000e+00, %5096
  %5098 = bitcast float %5097 to i32
  %5099 = sub nsw i32 2129859010, %5098
  %5100 = bitcast i32 %5099 to float
  %5101 = fmul fast float %5074, %5050
  %5102 = fmul fast float %5101, %5088
  %5103 = fmul fast float %5077, %5051
  %5104 = fmul fast float %5103, %5094
  %5105 = fmul fast float %5080, %5052
  %5106 = fmul fast float %5105, %5100
  %5107 = call float @dx.op.dot3.f32(i32 55, float %5076, float %5079, float %5082, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5108 = select i1 %183, float 0.000000e+00, float %5076
  %5109 = select i1 %183, float %5107, float %5079
  %5110 = select i1 %183, float 0.000000e+00, float %5082
  %5111 = call float @dx.op.dot3.f32(i32 55, float %5102, float %5104, float %5106, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5112 = select i1 %183, float 0.000000e+00, float %5102
  %5113 = select i1 %183, float %5111, float %5104
  %5114 = select i1 %183, float 0.000000e+00, float %5106
  %5115 = fmul fast float %4991, 9.843750e-01
  %5116 = fmul fast float %4972, 9.843750e-01
  %5117 = fadd fast float %5115, 7.812500e-03
  %5118 = fadd fast float %5116, 7.812500e-03
  %5119 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %5117, float %5118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5120 = extractvalue %dx.types.ResRet.f32 %5119, 2
  %5121 = extractvalue %dx.types.ResRet.f32 %5119, 3
  %5122 = fmul fast float %5120, %4966
  %5123 = fmul fast float %5120, %4967
  %5124 = fmul fast float %5120, %4989
  %5125 = fadd fast float %5122, %5121
  %5126 = fadd fast float %5123, %5121
  %5127 = fadd fast float %5124, %5121
  %5128 = fcmp fast ogt float %4361, 0.000000e+00
  br i1 %5128, label %5129, label %5155

; <label>:5129                                    ; preds = %4956
  %5130 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4361, float %4991, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5131 = extractvalue %dx.types.ResRet.f32 %5130, 0
  %5132 = extractvalue %dx.types.ResRet.f32 %5130, 1
  %5133 = extractvalue %dx.types.ResRet.f32 %5130, 2
  %5134 = fadd fast float %5131, -5.000000e-01
  %5135 = fadd fast float %5132, -5.000000e-01
  %5136 = fadd fast float %5133, -5.000000e-01
  %5137 = fsub fast float 1.000000e+00, %4966
  %5138 = fsub fast float 1.000000e+00, %4967
  %5139 = fsub fast float 1.000000e+00, %4989
  %5140 = fmul fast float %4966, 4.000000e+00
  %5141 = fmul fast float %5140, %5137
  %5142 = fmul fast float %5141, %5134
  %5143 = fmul fast float %4967, 4.000000e+00
  %5144 = fmul fast float %5143, %5138
  %5145 = fmul fast float %5144, %5135
  %5146 = fmul fast float %4989, 4.000000e+00
  %5147 = fmul fast float %5146, %5139
  %5148 = fmul fast float %5147, %5136
  %5149 = fadd fast float %5142, %5125
  %5150 = fadd fast float %5145, %5126
  %5151 = fadd fast float %5148, %5127
  %5152 = call float @dx.op.unary.f32(i32 7, float %5149)  ; Saturate(value)
  %5153 = call float @dx.op.unary.f32(i32 7, float %5150)  ; Saturate(value)
  %5154 = call float @dx.op.unary.f32(i32 7, float %5151)  ; Saturate(value)
  br label %5155

; <label>:5155                                    ; preds = %5129, %4956
  %5156 = phi float [ %5152, %5129 ], [ %5125, %4956 ]
  %5157 = phi float [ %5153, %5129 ], [ %5126, %4956 ]
  %5158 = phi float [ %5154, %5129 ], [ %5127, %4956 ]
  %5159 = call float @dx.op.binary.f32(i32 35, float %5157, float %5158)  ; FMax(a,b)
  %5160 = call float @dx.op.binary.f32(i32 35, float %5156, float %5159)  ; FMax(a,b)
  %5161 = fsub fast float 1.000000e+00, %5160
  %5162 = fmul fast float %5160, %4972
  %5163 = fadd fast float %5162, %4972
  %5164 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 252)  ; CBufferLoadLegacy(handle,regIndex)
  %5165 = extractvalue %dx.types.CBufRet.f32 %5164, 0
  %5166 = extractvalue %dx.types.CBufRet.f32 %5164, 1
  %5167 = extractvalue %dx.types.CBufRet.f32 %5164, 2
  %5168 = extractvalue %dx.types.CBufRet.f32 %5164, 3
  %5169 = fmul fast float %5163, %5165
  %5170 = fadd fast float %5169, %5166
  %5171 = call float @dx.op.unary.f32(i32 7, float %5170)  ; Saturate(value)
  %5172 = fmul fast float %5167, %5163
  %5173 = fadd fast float %5172, %5168
  %5174 = call float @dx.op.unary.f32(i32 7, float %5173)  ; Saturate(value)
  %5175 = fsub fast float 1.000000e+00, %5012
  %5176 = fadd fast float %5175, %5174
  %5177 = call float @dx.op.unary.f32(i32 7, float %5176)  ; Saturate(value)
  %5178 = fcmp fast olt float %5177, 1.000000e+00
  br i1 %5178, label %5179, label %6034

; <label>:5179                                    ; preds = %5155
  %5180 = fcmp fast olt float %5171, 1.000000e+00
  %5181 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 161)  ; CBufferLoadLegacy(handle,regIndex)
  %5182 = extractvalue %dx.types.CBufRet.f32 %5181, 0
  %5183 = fcmp fast ogt float %5182, 0.000000e+00
  %5184 = or i1 %5180, %5183
  %5185 = or i1 %5180, %5183
  %5186 = xor i1 %5185, true
  %5187 = zext i1 %5186 to i32
  br i1 %5184, label %5188, label %5431

; <label>:5188                                    ; preds = %5179
  %5189 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 103)  ; CBufferLoadLegacy(handle,regIndex)
  %5190 = extractvalue %dx.types.CBufRet.f32 %5189, 0
  %5191 = extractvalue %dx.types.CBufRet.f32 %5189, 1
  %5192 = extractvalue %dx.types.CBufRet.f32 %5189, 2
  %5193 = extractvalue %dx.types.CBufRet.f32 %5189, 3
  %5194 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 104)  ; CBufferLoadLegacy(handle,regIndex)
  %5195 = extractvalue %dx.types.CBufRet.f32 %5194, 0
  %5196 = extractvalue %dx.types.CBufRet.f32 %5194, 1
  %5197 = extractvalue %dx.types.CBufRet.f32 %5194, 2
  %5198 = extractvalue %dx.types.CBufRet.f32 %5194, 3
  %5199 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 106)  ; CBufferLoadLegacy(handle,regIndex)
  %5200 = extractvalue %dx.types.CBufRet.f32 %5199, 0
  %5201 = extractvalue %dx.types.CBufRet.f32 %5199, 1
  %5202 = extractvalue %dx.types.CBufRet.f32 %5199, 2
  %5203 = extractvalue %dx.types.CBufRet.f32 %5199, 3
  %5204 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5205 = extractvalue %dx.types.CBufRet.f32 %5204, 0
  %5206 = extractvalue %dx.types.CBufRet.f32 %5204, 1
  %5207 = extractvalue %dx.types.CBufRet.f32 %5204, 2
  %5208 = extractvalue %dx.types.CBufRet.f32 %5204, 3
  %5209 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5210 = extractvalue %dx.types.CBufRet.f32 %5209, 0
  %5211 = extractvalue %dx.types.CBufRet.f32 %5209, 1
  %5212 = extractvalue %dx.types.CBufRet.f32 %5209, 2
  %5213 = extractvalue %dx.types.CBufRet.f32 %5209, 3
  %5214 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5215 = extractvalue %dx.types.CBufRet.f32 %5214, 0
  %5216 = extractvalue %dx.types.CBufRet.f32 %5214, 1
  %5217 = extractvalue %dx.types.CBufRet.f32 %5214, 2
  %5218 = extractvalue %dx.types.CBufRet.f32 %5214, 3
  %5219 = call float @dx.op.dot3.f32(i32 55, float %5215, float %5216, float %5217, float %4997, float %4998, float %4999)  ; Dot3(ax,ay,az,bx,by,bz)
  %5220 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5221 = call float @dx.op.unary.f32(i32 6, float %5220)  ; FAbs(value)
  %5222 = fmul fast float %5221, 8.000000e+00
  %5223 = fadd fast float %5222, -6.000000e+00
  %5224 = call float @dx.op.unary.f32(i32 7, float %5223)  ; Saturate(value)
  %5225 = fmul fast float %5219, 8.000000e+00
  %5226 = fmul fast float %5225, %5182
  %5227 = call float @dx.op.unary.f32(i32 7, float %5226)  ; Saturate(value)
  %5228 = fcmp fast ogt float %5227, 0.000000e+00
  br i1 %5228, label %5229, label %5406, !dx.controlflow.hints !82

; <label>:5229                                    ; preds = %5188
  %5230 = extractvalue %dx.types.CBufRet.f32 %5181, 1
  %5231 = extractvalue %dx.types.CBufRet.f32 %5181, 2
  %5232 = fsub fast float %5230, %5231
  %5233 = fmul fast float %5232, %4972
  %5234 = fadd fast float %5233, %5231
  %5235 = fmul fast float %196, 2.000000e+00
  %5236 = fmul fast float %197, 2.000000e+00
  %5237 = fadd fast float %5235, -1.000000e+00
  %5238 = fadd fast float %5236, -1.000000e+00
  %5239 = fmul fast float %5234, %5237
  %5240 = fmul fast float %5234, %5238
  %5241 = fadd fast float %5239, %78
  %5242 = fadd fast float %5240, %79
  %5243 = fmul fast float %5241, %4975
  %5244 = fmul fast float %5242, %4976
  %5245 = fadd fast float %4972, 0xBFE3333340000000
  %5246 = fmul fast float %5245, 0x4004000020000000
  %5247 = fsub fast float 1.000000e+00, %5246
  %5248 = call float @dx.op.unary.f32(i32 7, float %5247)  ; Saturate(value)
  %5249 = fmul fast float %5248, 3.000000e+00
  %5250 = fadd fast float %5249, %196
  %5251 = call float @dx.op.unary.f32(i32 27, float %5250)  ; Round_ni(value)
  %5252 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %19, %dx.types.Handle %40, float %5243, float %5244, float %5251, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5253 = extractvalue %dx.types.ResRet.f32 %5252, 0
  %5254 = fcmp fast une float %5253, 0xFFF0000000000000
  %5255 = fcmp fast une float %5253, 0x7FF0000000000000
  %5256 = and i1 %5254, %5255
  %5257 = fcmp fast olt float %5253, 0.000000e+00
  %5258 = call float @dx.op.unary.f32(i32 6, float %5253)  ; FAbs(value)
  %5259 = fsub fast float 1.000000e+00, %5258
  %5260 = select i1 %5256, float 1.000000e+00, float 0.000000e+00
  %5261 = fmul fast float %5260, %5227
  %5262 = fcmp fast ogt float %5261, 0.000000e+00
  br i1 %5262, label %5263, label %5406, !dx.controlflow.hints !83

; <label>:5263                                    ; preds = %5229
  %5264 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5265 = extractvalue %dx.types.CBufRet.f32 %5264, 0
  %5266 = extractvalue %dx.types.CBufRet.f32 %5264, 1
  %5267 = extractvalue %dx.types.CBufRet.f32 %5264, 2
  %5268 = select i1 %5257, float 0.000000e+00, float %5265
  %5269 = select i1 %5257, float 0.000000e+00, float %5266
  %5270 = select i1 %5257, float 0.000000e+00, float %5267
  %5271 = select i1 %5257, float %5190, float %5205
  %5272 = select i1 %5257, float %5195, float %5210
  %5273 = select i1 %5257, float %5200, float %5215
  %5274 = select i1 %5257, float %5191, float %5206
  %5275 = select i1 %5257, float %5196, float %5211
  %5276 = select i1 %5257, float %5201, float %5216
  %5277 = select i1 %5257, float %5192, float %5207
  %5278 = select i1 %5257, float %5197, float %5212
  %5279 = select i1 %5257, float %5202, float %5217
  %5280 = select i1 %5257, float %5193, float %5208
  %5281 = select i1 %5257, float %5198, float %5213
  %5282 = select i1 %5257, float %5203, float %5218
  %5283 = fadd fast float %5268, %141
  %5284 = fadd fast float %5269, %142
  %5285 = fadd fast float %5270, %143
  %5286 = fmul fast float %5283, %5271
  %5287 = call float @dx.op.tertiary.f32(i32 46, float %5284, float %5274, float %5286)  ; FMad(a,b,c)
  %5288 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %5277, float %5287)  ; FMad(a,b,c)
  %5289 = fadd fast float %5288, %5280
  %5290 = fmul fast float %5283, %5272
  %5291 = call float @dx.op.tertiary.f32(i32 46, float %5284, float %5275, float %5290)  ; FMad(a,b,c)
  %5292 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %5278, float %5291)  ; FMad(a,b,c)
  %5293 = fadd fast float %5292, %5281
  %5294 = fmul fast float %5283, %5273
  %5295 = call float @dx.op.tertiary.f32(i32 46, float %5284, float %5276, float %5294)  ; FMad(a,b,c)
  %5296 = call float @dx.op.tertiary.f32(i32 46, float %5285, float %5279, float %5295)  ; FMad(a,b,c)
  %5297 = fadd fast float %5296, %5282
  %5298 = fdiv fast float 1.000000e+00, %5297
  %5299 = fmul fast float %5298, %5289
  %5300 = fmul fast float %5298, %5293
  %5301 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5302 = extractvalue %dx.types.CBufRet.f32 %5301, 0
  %5303 = extractvalue %dx.types.CBufRet.f32 %5301, 1
  %5304 = fmul fast float %5299, %5302
  %5305 = fmul fast float %5300, %5303
  %5306 = extractvalue %dx.types.CBufRet.f32 %5301, 2
  %5307 = extractvalue %dx.types.CBufRet.f32 %5301, 3
  %5308 = fadd fast float %5304, %5306
  %5309 = fadd fast float %5305, %5307
  %5310 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 20)  ; CBufferLoadLegacy(handle,regIndex)
  %5311 = extractvalue %dx.types.CBufRet.f32 %5310, 3
  %5312 = fmul fast float %5311, %4997
  %5313 = fmul fast float %5311, %4998
  %5314 = fmul fast float %5311, %4999
  %5315 = fadd fast float %5312, %5283
  %5316 = fadd fast float %5313, %5284
  %5317 = fadd fast float %5314, %5285
  %5318 = fmul fast float %5315, %5271
  %5319 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5274, float %5318)  ; FMad(a,b,c)
  %5320 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5277, float %5319)  ; FMad(a,b,c)
  %5321 = fadd fast float %5320, %5280
  %5322 = fmul fast float %5315, %5272
  %5323 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5275, float %5322)  ; FMad(a,b,c)
  %5324 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5278, float %5323)  ; FMad(a,b,c)
  %5325 = fadd fast float %5324, %5281
  %5326 = fmul fast float %5315, %5273
  %5327 = call float @dx.op.tertiary.f32(i32 46, float %5316, float %5276, float %5326)  ; FMad(a,b,c)
  %5328 = call float @dx.op.tertiary.f32(i32 46, float %5317, float %5279, float %5327)  ; FMad(a,b,c)
  %5329 = fadd fast float %5328, %5282
  %5330 = fdiv fast float 1.000000e+00, %5329
  %5331 = fmul fast float %5330, %5321
  %5332 = fmul fast float %5330, %5325
  %5333 = fmul fast float %5308, 2.000000e+00
  %5334 = fadd fast float %5333, -1.000000e+00
  %5335 = call float @dx.op.unary.f32(i32 6, float %5334)  ; FAbs(value)
  %5336 = fmul fast float %5335, 5.000000e+00
  %5337 = fadd fast float %5336, -4.000000e+00
  %5338 = call float @dx.op.unary.f32(i32 7, float %5337)  ; Saturate(value)
  %5339 = fmul fast float %5338, %5224
  %5340 = fsub fast float %5299, %5331
  %5341 = fmul fast float %5302, %5340
  %5342 = fmul fast float %5339, %5341
  %5343 = fsub fast float %5331, %5299
  %5344 = fmul fast float %5302, %5343
  %5345 = fadd fast float %5344, %5342
  %5346 = fsub fast float %5332, %5300
  %5347 = fmul fast float %5303, %5346
  %5348 = fmul fast float %5345, %5259
  %5349 = fmul fast float %5347, %5259
  %5350 = fadd fast float %5348, %5308
  %5351 = fadd fast float %5349, %5309
  %5352 = fsub fast float %5330, %5298
  %5353 = fmul fast float %5352, %5259
  %5354 = fadd fast float %5353, %5298
  %5355 = fdiv fast float 1.000000e+00, %5354
  %5356 = fadd fast float %4972, -1.000000e+00
  %5357 = fsub fast float %5355, %5297
  %5358 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5359 = extractvalue %dx.types.CBufRet.f32 %5358, 2
  %5360 = fmul fast float %5359, %5355
  %5361 = fdiv fast float 1.600000e+02, %5360
  %5362 = fmul fast float %5356, %5356
  %5363 = fmul fast float %5362, 0xBFB5B17960000000
  %5364 = fmul fast float %5363, %5357
  %5365 = fmul fast float %5364, %5361
  %5366 = call float @dx.op.unary.f32(i32 21, float %5365)  ; Exp(value)
  %5367 = fmul fast float %5366, 0x3FF04B2960000000
  %5368 = fsub fast float 0x3FF04B2960000000, %5367
  %5369 = call float @dx.op.unary.f32(i32 7, float %5368)  ; Saturate(value)
  %5370 = fmul fast float %5369, 4.000000e+00
  %5371 = fadd fast float %196, -5.000000e-01
  %5372 = fadd fast float %197, -5.000000e-01
  %5373 = fmul fast float %5369, 0x3FBEB851E0000000
  %5374 = call float @dx.op.unary.f32(i32 7, float %5373)  ; Saturate(value)
  %5375 = fmul fast float %5374, %5371
  %5376 = fmul fast float %5374, %5372
  %5377 = fadd fast float %5350, %5375
  %5378 = fadd fast float %5351, %5376
  %5379 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5377, float %5378, float undef, float undef, i32 0, i32 0, i32 undef, float %5370)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5380 = extractvalue %dx.types.ResRet.f32 %5379, 0
  %5381 = extractvalue %dx.types.ResRet.f32 %5379, 1
  %5382 = extractvalue %dx.types.ResRet.f32 %5379, 2
  %5383 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5384 = extractvalue %dx.types.CBufRet.f32 %5383, 2
  %5385 = fmul fast float %5384, %5380
  %5386 = fmul fast float %5384, %5381
  %5387 = fmul fast float %5384, %5382
  %5388 = select i1 %183, float 0.000000e+00, float %5386
  %5389 = select i1 %183, float 0.000000e+00, float %5387
  %5390 = fmul fast float %5377, 2.000000e+00
  %5391 = fmul fast float %5378, 2.000000e+00
  %5392 = fadd fast float %5390, -1.000000e+00
  %5393 = fadd fast float %5391, -1.000000e+00
  %5394 = fmul fast float %5392, %5392
  %5395 = fsub fast float 1.000000e+00, %5394
  %5396 = call float @dx.op.unary.f32(i32 7, float %5395)  ; Saturate(value)
  %5397 = fsub fast float 1.000000e+00, %5396
  %5398 = fmul fast float %5397, %5224
  %5399 = fadd fast float %5398, %5396
  %5400 = fmul fast float %5393, %5393
  %5401 = fsub fast float 1.000000e+00, %5400
  %5402 = call float @dx.op.unary.f32(i32 7, float %5401)  ; Saturate(value)
  %5403 = fmul fast float %5399, %5402
  %5404 = call float @dx.op.unary.f32(i32 7, float %5403)  ; Saturate(value)
  %5405 = fmul fast float %5404, %5261
  br label %5406

; <label>:5406                                    ; preds = %5263, %5229, %5188
  %5407 = phi float [ %5385, %5263 ], [ 0.000000e+00, %5229 ], [ 0.000000e+00, %5188 ]
  %5408 = phi float [ %5388, %5263 ], [ 0.000000e+00, %5229 ], [ 0.000000e+00, %5188 ]
  %5409 = phi float [ %5389, %5263 ], [ 0.000000e+00, %5229 ], [ 0.000000e+00, %5188 ]
  %5410 = phi float [ %5405, %5263 ], [ 0.000000e+00, %5229 ], [ 0.000000e+00, %5188 ]
  %5411 = fcmp fast olt float %5410, 1.000000e+00
  %5412 = or i1 %5411, %5186
  %5413 = zext i1 %5412 to i32
  %5414 = fmul fast float %5410, %5171
  %5415 = fsub fast float %5410, %5414
  %5416 = fsub fast float 1.000000e+00, %5177
  %5417 = fmul fast float %5415, %5416
  %5418 = fadd fast float %5417, %5177
  %5419 = fsub fast float %5418, %5415
  %5420 = call float @dx.op.unary.f32(i32 7, float %5419)  ; Saturate(value)
  %5421 = fmul fast float %5420, %5112
  %5422 = fmul fast float %5420, %5113
  %5423 = fmul fast float %5420, %5114
  %5424 = fsub fast float -0.000000e+00, %5418
  %5425 = fmul fast float %5415, %5407
  %5426 = fmul fast float %5415, %5408
  %5427 = fmul fast float %5415, %5409
  %5428 = fadd fast float %5425, %5421
  %5429 = fadd fast float %5426, %5422
  %5430 = fadd fast float %5427, %5423
  br label %5431

; <label>:5431                                    ; preds = %5406, %5179
  %5432 = phi float [ %5177, %5179 ], [ %5424, %5406 ]
  %5433 = phi float [ %5112, %5179 ], [ %5428, %5406 ]
  %5434 = phi float [ %5113, %5179 ], [ %5429, %5406 ]
  %5435 = phi float [ %5114, %5179 ], [ %5430, %5406 ]
  %5436 = phi i32 [ %5187, %5179 ], [ %5413, %5406 ]
  %5437 = icmp eq i32 %5436, 0
  br i1 %5437, label %6034, label %5438

; <label>:5438                                    ; preds = %5431
  %5439 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 46)  ; CBufferLoadLegacy(handle,regIndex)
  %5440 = extractvalue %dx.types.CBufRet.f32 %5439, 2
  %5441 = extractvalue %dx.types.CBufRet.f32 %5439, 3
  %5442 = fmul fast float %5440, %78
  %5443 = fmul fast float %5441, %79
  %5444 = fptoui float %5442 to i32
  %5445 = fptoui float %5443 to i32
  %5446 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 40)  ; CBufferLoadLegacy(handle,regIndex)
  %5447 = extractvalue %dx.types.CBufRet.f32 %5446, 0
  %5448 = extractvalue %dx.types.CBufRet.f32 %5446, 2
  %5449 = extractvalue %dx.types.CBufRet.f32 %5446, 3
  %5450 = fadd fast float %73, -4.000000e+00
  %5451 = call float @dx.op.binary.f32(i32 35, float %5450, float 0.000000e+00)  ; FMax(a,b)
  %5452 = fadd fast float %5451, %5447
  %5453 = fmul fast float %5452, %5448
  %5454 = call float @dx.op.unary.f32(i32 23, float %5453)  ; Log(value)
  %5455 = fmul fast float %5454, %5449
  %5456 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5457 = extractvalue %dx.types.CBufRet.f32 %5456, 2
  %5458 = fmul fast float %5455, %5457
  %5459 = call float @dx.op.unary.f32(i32 7, float %5458)  ; Saturate(value)
  %5460 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 28)  ; CBufferLoadLegacy(handle,regIndex)
  %5461 = extractvalue %dx.types.CBufRet.i32 %5460, 1
  %5462 = add i32 %5461, -1
  %5463 = uitofp i32 %5461 to float
  %5464 = fmul fast float %5463, %5459
  %5465 = fptoui float %5464 to i32
  %5466 = call i32 @dx.op.binary.i32(i32 40, i32 %5465, i32 %5462)  ; UMin(a,b)
  %5467 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %5468 = extractvalue %dx.types.CBufRet.i32 %5467, 2
  %5469 = extractvalue %dx.types.CBufRet.i32 %5467, 3
  %5470 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5445, i32 %5468, i32 %5444)  ; UMad(a,b,c)
  %5471 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5466, i32 %5469, i32 %5470)  ; UMad(a,b,c)
  %5472 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %5473 = fptoui float %5472 to i32
  %5474 = lshr i32 %5473, 5
  %5475 = call i32 @dx.op.binary.i32(i32 40, i32 %5474, i32 8191)  ; UMin(a,b)
  %5476 = fcmp fast ogt float %4771, 0.000000e+00
  %5477 = fcmp fast ogt float %4999, 0.000000e+00
  %5478 = and i1 %5477, %5476
  br i1 %5478, label %5479, label %5508

; <label>:5479                                    ; preds = %5438
  %5480 = call float @dx.op.dot3.f32(i32 55, float %4997, float %4998, float %4999, float 0.000000e+00, float 0.000000e+00, float -1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %5481 = call float @dx.op.binary.f32(i32 35, float %5480, float -1.000000e+00)  ; FMax(a,b)
  %5482 = call float @dx.op.binary.f32(i32 36, float %5481, float 1.000000e+00)  ; FMin(a,b)
  %5483 = fmul fast float %5482, %5482
  %5484 = fsub fast float 1.000000e+00, %5483
  %5485 = fmul fast float %5484, 0x3FFC6E2300000000
  %5486 = fsub fast float 1.000000e+00, %5485
  %5487 = fcmp fast ogt float %5486, 0.000000e+00
  %5488 = call float @dx.op.unary.f32(i32 24, float %5486)  ; Sqrt(value)
  %5489 = fsub fast float 1.000000e+00, %5488
  %5490 = call float @dx.op.unary.f32(i32 23, float %5489)  ; Log(value)
  %5491 = fmul fast float %5490, 5.000000e+00
  %5492 = call float @dx.op.unary.f32(i32 21, float %5491)  ; Exp(value)
  %5493 = fmul fast float %5492, 0x3FEF591A60000000
  %5494 = fadd fast float %5493, 0x3F94DCB540000000
  %5495 = select i1 %5487, float %5494, float 1.000000e+00
  %5496 = fcmp fast oge float %5495, 1.000000e+00
  %5497 = fmul fast float %5480, 2.000000e+00
  %5498 = fadd fast float %5497, %4999
  %5499 = select i1 %5496, float %5498, float %4999
  %5500 = fsub fast float %5499, %4999
  %5501 = fmul fast float %5500, %4771
  %5502 = fadd fast float %5501, %4999
  %5503 = call float @dx.op.dot3.f32(i32 55, float %4997, float %4998, float %5502, float %4997, float %4998, float %5502)  ; Dot3(ax,ay,az,bx,by,bz)
  %5504 = call float @dx.op.unary.f32(i32 25, float %5503)  ; Rsqrt(value)
  %5505 = fmul fast float %5504, %4997
  %5506 = fmul fast float %5504, %4998
  %5507 = fmul fast float %5502, %5504
  br label %5508

; <label>:5508                                    ; preds = %5479, %5438
  %5509 = phi float [ %5505, %5479 ], [ %4997, %5438 ]
  %5510 = phi float [ %5506, %5479 ], [ %4998, %5438 ]
  %5511 = phi float [ %5507, %5479 ], [ %4999, %5438 ]
  %5512 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5513 = extractvalue %dx.types.CBufRet.i32 %5512, 2
  %5514 = add nsw i32 %5513, -1
  %5515 = call i32 @dx.op.binary.i32(i32 37, i32 %5514, i32 0)  ; IMax(a,b)
  %5516 = shl i32 %5475, 2
  %5517 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %31, i32 %5516, i32 undef)  ; BufferLoad(srv,index,wot)
  %5518 = extractvalue %dx.types.ResRet.i32 %5517, 0
  %5519 = lshr i32 %5518, 16
  %5520 = and i32 %5518, 65535
  %5521 = lshr i32 %5518, 21
  %5522 = lshr i32 %5520, 5
  %5523 = call i32 @dx.op.binary.i32(i32 40, i32 %5522, i32 %5515)  ; UMin(a,b)
  %5524 = icmp ugt i32 %5521, %5523
  br i1 %5524, label %5906, label %5525

; <label>:5525                                    ; preds = %5508
  br label %5526

; <label>:5526                                    ; preds = %5895, %5525
  %5527 = phi float [ %5896, %5895 ], [ 0.000000e+00, %5525 ]
  %5528 = phi float [ %5897, %5895 ], [ 0.000000e+00, %5525 ]
  %5529 = phi float [ %5898, %5895 ], [ 0.000000e+00, %5525 ]
  %5530 = phi float [ %5899, %5895 ], [ 1.000000e+00, %5525 ]
  %5531 = phi i32 [ %5903, %5895 ], [ %5521, %5525 ]
  %5532 = phi float [ %5900, %5895 ], [ 0.000000e+00, %5525 ]
  %5533 = phi float [ %5901, %5895 ], [ 0.000000e+00, %5525 ]
  %5534 = phi float [ %5902, %5895 ], [ 0.000000e+00, %5525 ]
  %5535 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %5536 = extractvalue %dx.types.CBufRet.i32 %5535, 2
  %5537 = call i32 @dx.op.tertiary.i32(i32 49, i32 %5471, i32 %5536, i32 %5531)  ; UMad(a,b,c)
  %5538 = shl i32 %5537, 2
  %5539 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %32, i32 %5538, i32 undef)  ; BufferLoad(srv,index,wot)
  %5540 = extractvalue %dx.types.ResRet.i32 %5539, 0
  %5541 = shl i32 %5531, 5
  %5542 = sub nsw i32 %5519, %5541
  %5543 = call i32 @dx.op.binary.i32(i32 37, i32 %5542, i32 0)  ; IMax(a,b)
  %5544 = call i32 @dx.op.binary.i32(i32 38, i32 %5543, i32 31)  ; IMin(a,b)
  %5545 = sub nsw i32 1, %5519
  %5546 = add nsw i32 %5545, %5520
  %5547 = call i32 @dx.op.binary.i32(i32 37, i32 %5546, i32 0)  ; IMax(a,b)
  %5548 = call i32 @dx.op.binary.i32(i32 38, i32 %5547, i32 32)  ; IMin(a,b)
  %5549 = and i32 %5548, 31
  %5550 = shl i32 -1, %5549
  %5551 = xor i32 %5550, -1
  %5552 = and i32 %5544, 31
  %5553 = shl i32 %5551, %5552
  %5554 = icmp eq i32 %5548, 32
  %5555 = select i1 %5554, i32 -1, i32 %5553
  %5556 = and i32 %5555, %5540
  %5557 = icmp eq i32 %5556, 0
  br i1 %5557, label %5895, label %5558

; <label>:5558                                    ; preds = %5526
  br label %5559

; <label>:5559                                    ; preds = %5669, %5558
  %5560 = phi float [ %5670, %5669 ], [ %5527, %5558 ]
  %5561 = phi float [ %5671, %5669 ], [ %5528, %5558 ]
  %5562 = phi float [ %5672, %5669 ], [ %5529, %5558 ]
  %5563 = phi float [ %5673, %5669 ], [ %5530, %5558 ]
  %5564 = phi i32 [ %5572, %5669 ], [ %5556, %5558 ]
  %5565 = phi float [ %5674, %5669 ], [ %5532, %5558 ]
  %5566 = phi float [ %5675, %5669 ], [ %5533, %5558 ]
  %5567 = phi float [ %5676, %5669 ], [ %5534, %5558 ]
  %5568 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %5564)  ; FirstbitLo(value)
  %5569 = add i32 %5568, %5541
  %5570 = and i32 %5568, 31
  %5571 = shl i32 1, %5570
  %5572 = xor i32 %5571, %5564
  %5573 = mul i32 %5569, 72
  %5574 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5573, i32 undef)  ; BufferLoad(srv,index,wot)
  %5575 = extractvalue %dx.types.ResRet.f32 %5574, 0
  %5576 = extractvalue %dx.types.ResRet.f32 %5574, 1
  %5577 = extractvalue %dx.types.ResRet.f32 %5574, 2
  %5578 = add i32 %5573, 12
  %5579 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %34, i32 %5578, i32 undef)  ; BufferLoad(srv,index,wot)
  %5580 = extractvalue %dx.types.ResRet.i32 %5579, 0
  %5581 = add i32 %5573, 16
  %5582 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5581, i32 undef)  ; BufferLoad(srv,index,wot)
  %5583 = extractvalue %dx.types.ResRet.f32 %5582, 0
  %5584 = extractvalue %dx.types.ResRet.f32 %5582, 1
  %5585 = extractvalue %dx.types.ResRet.f32 %5582, 2
  %5586 = add i32 %5573, 28
  %5587 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5586, i32 undef)  ; BufferLoad(srv,index,wot)
  %5588 = extractvalue %dx.types.ResRet.f32 %5587, 0
  %5589 = add i32 %5573, 32
  %5590 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5589, i32 undef)  ; BufferLoad(srv,index,wot)
  %5591 = extractvalue %dx.types.ResRet.f32 %5590, 0
  %5592 = extractvalue %dx.types.ResRet.f32 %5590, 1
  %5593 = extractvalue %dx.types.ResRet.f32 %5590, 2
  %5594 = extractvalue %dx.types.ResRet.f32 %5590, 3
  %5595 = add i32 %5573, 48
  %5596 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5595, i32 undef)  ; BufferLoad(srv,index,wot)
  %5597 = extractvalue %dx.types.ResRet.f32 %5596, 0
  %5598 = extractvalue %dx.types.ResRet.f32 %5596, 1
  %5599 = add i32 %5573, 56
  %5600 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5599, i32 undef)  ; BufferLoad(srv,index,wot)
  %5601 = extractvalue %dx.types.ResRet.f32 %5600, 0
  %5602 = extractvalue %dx.types.ResRet.f32 %5600, 1
  %5603 = add i32 %5573, 64
  %5604 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %34, i32 %5603, i32 undef)  ; BufferLoad(srv,index,wot)
  %5605 = extractvalue %dx.types.ResRet.f32 %5604, 0
  %5606 = extractvalue %dx.types.ResRet.f32 %5604, 1
  %5607 = mul i32 %5569, 60
  %5608 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5607, i32 undef)  ; BufferLoad(srv,index,wot)
  %5609 = extractvalue %dx.types.ResRet.f32 %5608, 0
  %5610 = extractvalue %dx.types.ResRet.f32 %5608, 1
  %5611 = extractvalue %dx.types.ResRet.f32 %5608, 2
  %5612 = add i32 %5607, 12
  %5613 = add i32 %5607, 48
  %5614 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5613, i32 undef)  ; BufferLoad(srv,index,wot)
  %5615 = extractvalue %dx.types.ResRet.f32 %5614, 0
  %5616 = extractvalue %dx.types.ResRet.f32 %5614, 1
  %5617 = extractvalue %dx.types.ResRet.f32 %5614, 2
  %5618 = and i32 %5580, 32767
  %5619 = bitcast float %5575 to i32
  %5620 = icmp eq i32 %5619, -1
  %5621 = bitcast float %5576 to i32
  %5622 = and i32 %5580, 32768
  %5623 = icmp ne i32 %5622, 0
  %5624 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 5)  ; CBufferLoadLegacy(handle,regIndex)
  %5625 = extractvalue %dx.types.CBufRet.f32 %5624, 0
  %5626 = extractvalue %dx.types.CBufRet.f32 %5624, 1
  %5627 = extractvalue %dx.types.CBufRet.f32 %5624, 2
  %5628 = fsub fast float %5609, %5625
  %5629 = fsub fast float %5610, %5626
  %5630 = fsub fast float %5611, %5627
  %5631 = fsub fast float %141, %5628
  %5632 = fsub fast float %142, %5629
  %5633 = fsub fast float %143, %5630
  %5634 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5612, i32 undef)  ; BufferLoad(srv,index,wot)
  %5635 = extractvalue %dx.types.ResRet.f32 %5634, 0
  %5636 = extractvalue %dx.types.ResRet.f32 %5634, 1
  %5637 = extractvalue %dx.types.ResRet.f32 %5634, 2
  %5638 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %5635, float %5636, float %5637)  ; Dot3(ax,ay,az,bx,by,bz)
  %5639 = add i32 %5607, 24
  %5640 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5639, i32 undef)  ; BufferLoad(srv,index,wot)
  %5641 = extractvalue %dx.types.ResRet.f32 %5640, 0
  %5642 = extractvalue %dx.types.ResRet.f32 %5640, 1
  %5643 = extractvalue %dx.types.ResRet.f32 %5640, 2
  %5644 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %5641, float %5642, float %5643)  ; Dot3(ax,ay,az,bx,by,bz)
  %5645 = add i32 %5607, 36
  %5646 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %33, i32 %5645, i32 undef)  ; BufferLoad(srv,index,wot)
  %5647 = extractvalue %dx.types.ResRet.f32 %5646, 0
  %5648 = extractvalue %dx.types.ResRet.f32 %5646, 1
  %5649 = extractvalue %dx.types.ResRet.f32 %5646, 2
  %5650 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %5647, float %5648, float %5649)  ; Dot3(ax,ay,az,bx,by,bz)
  %5651 = call float @dx.op.unary.f32(i32 6, float %5638)  ; FAbs(value)
  %5652 = call float @dx.op.unary.f32(i32 6, float %5644)  ; FAbs(value)
  %5653 = call float @dx.op.unary.f32(i32 6, float %5650)  ; FAbs(value)
  %5654 = fsub fast float %5615, %5651
  %5655 = fsub fast float %5616, %5652
  %5656 = fsub fast float %5617, %5653
  %5657 = fmul fast float %5654, %5583
  %5658 = fmul fast float %5655, %5584
  %5659 = fmul fast float %5656, %5585
  %5660 = call float @dx.op.binary.f32(i32 36, float %5658, float %5659)  ; FMin(a,b)
  %5661 = call float @dx.op.binary.f32(i32 36, float %5657, float %5660)  ; FMin(a,b)
  %5662 = call float @dx.op.unary.f32(i32 7, float %5661)  ; Saturate(value)
  %5663 = call float @dx.op.binary.f32(i32 36, float %5563, float %5662)  ; FMin(a,b)
  %5664 = uitofp i1 %5623 to float
  %5665 = fadd fast float %4771, 1.000000e+00
  %5666 = fsub fast float %5665, %5664
  %5667 = fmul fast float %5663, %5666
  %5668 = fcmp fast ogt float %5667, 0.000000e+00
  br i1 %5668, label %5678, label %5669

; <label>:5669                                    ; preds = %5820, %5559
  %5670 = phi float [ %5884, %5820 ], [ %5560, %5559 ]
  %5671 = phi float [ %5885, %5820 ], [ %5561, %5559 ]
  %5672 = phi float [ %5886, %5820 ], [ %5562, %5559 ]
  %5673 = phi float [ %5893, %5820 ], [ %5563, %5559 ]
  %5674 = phi float [ %5890, %5820 ], [ %5565, %5559 ]
  %5675 = phi float [ %5891, %5820 ], [ %5566, %5559 ]
  %5676 = phi float [ %5892, %5820 ], [ %5567, %5559 ]
  %5677 = icmp eq i32 %5564, %5571
  br i1 %5677, label %5894, label %5559

; <label>:5678                                    ; preds = %5559
  br i1 %5620, label %5736, label %5679

; <label>:5679                                    ; preds = %5678
  %5680 = fsub fast float -0.000000e+00, %5635
  %5681 = fsub fast float -0.000000e+00, %5636
  %5682 = fsub fast float -0.000000e+00, %5637
  %5683 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float %5680, float %5681, float %5682)  ; Dot3(ax,ay,az,bx,by,bz)
  %5684 = fsub fast float -0.000000e+00, %5683
  %5685 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %5680, float %5681, float %5682)  ; Dot3(ax,ay,az,bx,by,bz)
  %5686 = fadd fast float %5685, %5598
  %5687 = fadd fast float %5597, %5685
  %5688 = fsub fast float -0.000000e+00, %5687
  %5689 = fcmp ogt float %5683, -0.000000e+00
  %5690 = select i1 %5689, float %5688, float %5686
  %5691 = call float @dx.op.unary.f32(i32 6, float %5684)  ; FAbs(value)
  %5692 = fdiv fast float 1.000000e+00, %5691
  %5693 = fmul fast float %5690, %5692
  %5694 = call float @dx.op.binary.f32(i32 35, float %5693, float 0.000000e+00)  ; FMax(a,b)
  %5695 = fsub fast float -0.000000e+00, %5641
  %5696 = fsub fast float -0.000000e+00, %5642
  %5697 = fsub fast float -0.000000e+00, %5643
  %5698 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float %5695, float %5696, float %5697)  ; Dot3(ax,ay,az,bx,by,bz)
  %5699 = fsub fast float -0.000000e+00, %5698
  %5700 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %5695, float %5696, float %5697)  ; Dot3(ax,ay,az,bx,by,bz)
  %5701 = fadd fast float %5700, %5602
  %5702 = fadd fast float %5601, %5700
  %5703 = fsub fast float -0.000000e+00, %5702
  %5704 = fcmp ogt float %5698, -0.000000e+00
  %5705 = select i1 %5704, float %5703, float %5701
  %5706 = call float @dx.op.unary.f32(i32 6, float %5699)  ; FAbs(value)
  %5707 = fdiv fast float 1.000000e+00, %5706
  %5708 = fmul fast float %5705, %5707
  %5709 = call float @dx.op.binary.f32(i32 35, float %5708, float 0.000000e+00)  ; FMax(a,b)
  %5710 = fsub fast float -0.000000e+00, %5647
  %5711 = fsub fast float -0.000000e+00, %5648
  %5712 = fsub fast float -0.000000e+00, %5649
  %5713 = call float @dx.op.dot3.f32(i32 55, float %5509, float %5510, float %5511, float %5710, float %5711, float %5712)  ; Dot3(ax,ay,az,bx,by,bz)
  %5714 = fsub fast float -0.000000e+00, %5713
  %5715 = call float @dx.op.dot3.f32(i32 55, float %5631, float %5632, float %5633, float %5710, float %5711, float %5712)  ; Dot3(ax,ay,az,bx,by,bz)
  %5716 = fadd fast float %5715, %5606
  %5717 = fadd fast float %5605, %5715
  %5718 = fsub fast float -0.000000e+00, %5717
  %5719 = fcmp ogt float %5713, -0.000000e+00
  %5720 = select i1 %5719, float %5718, float %5716
  %5721 = call float @dx.op.unary.f32(i32 6, float %5714)  ; FAbs(value)
  %5722 = fdiv fast float 1.000000e+00, %5721
  %5723 = fmul fast float %5720, %5722
  %5724 = call float @dx.op.binary.f32(i32 35, float %5723, float 0.000000e+00)  ; FMax(a,b)
  %5725 = call float @dx.op.binary.f32(i32 36, float %5709, float %5724)  ; FMin(a,b)
  %5726 = call float @dx.op.binary.f32(i32 36, float %5694, float %5725)  ; FMin(a,b)
  %5727 = fmul fast float %5726, %5509
  %5728 = fmul fast float %5726, %5510
  %5729 = fmul fast float %5726, %5511
  %5730 = fadd fast float %5727, %141
  %5731 = fadd fast float %5728, %142
  %5732 = fadd fast float %5729, %143
  %5733 = fsub fast float %5730, %5575
  %5734 = fsub fast float %5731, %5576
  %5735 = fsub fast float %5732, %5577
  br label %5743

; <label>:5736                                    ; preds = %5678
  %5737 = fmul fast float %5509, 8.096000e+03
  %5738 = fmul fast float %5510, 8.096000e+03
  %5739 = fmul fast float %5511, 8.096000e+03
  %5740 = fadd fast float %5737, %141
  %5741 = fadd fast float %5738, %142
  %5742 = fadd fast float %5739, %143
  br label %5743

; <label>:5743                                    ; preds = %5736, %5679
  %5744 = phi float [ %5509, %5736 ], [ %5733, %5679 ]
  %5745 = phi float [ %5510, %5736 ], [ %5734, %5679 ]
  %5746 = phi float [ %5511, %5736 ], [ %5735, %5679 ]
  %5747 = phi float [ %5740, %5736 ], [ %5730, %5679 ]
  %5748 = phi float [ %5741, %5736 ], [ %5731, %5679 ]
  %5749 = phi float [ %5742, %5736 ], [ %5732, %5679 ]
  %5750 = fcmp fast olt float %5594, 1.000000e+00
  br i1 %5750, label %5751, label %5782, !dx.controlflow.hints !84

; <label>:5751                                    ; preds = %5743
  %5752 = fmul fast float %5746, %5592
  %5753 = fmul fast float %5745, %5593
  %5754 = fsub fast float %5752, %5753
  %5755 = fmul fast float %5744, %5593
  %5756 = fmul fast float %5746, %5591
  %5757 = fsub fast float %5755, %5756
  %5758 = fmul fast float %5745, %5591
  %5759 = fmul fast float %5744, %5592
  %5760 = fsub fast float %5758, %5759
  %5761 = fmul fast float %5754, 2.000000e+00
  %5762 = fmul fast float %5757, 2.000000e+00
  %5763 = fmul fast float %5760, 2.000000e+00
  %5764 = fmul fast float %5761, %5594
  %5765 = fmul fast float %5762, %5594
  %5766 = fmul fast float %5763, %5594
  %5767 = fmul fast float %5763, %5592
  %5768 = fmul fast float %5762, %5593
  %5769 = fmul fast float %5761, %5593
  %5770 = fmul fast float %5763, %5591
  %5771 = fmul fast float %5762, %5591
  %5772 = fmul fast float %5761, %5592
  %5773 = fadd fast float %5767, %5744
  %5774 = fadd fast float %5773, %5764
  %5775 = fsub fast float %5774, %5768
  %5776 = fsub fast float %5745, %5770
  %5777 = fadd fast float %5776, %5765
  %5778 = fadd fast float %5777, %5769
  %5779 = fadd fast float %5766, %5746
  %5780 = fsub fast float %5779, %5772
  %5781 = fadd fast float %5780, %5771
  br label %5782

; <label>:5782                                    ; preds = %5751, %5743
  %5783 = phi float [ %5775, %5751 ], [ %5744, %5743 ]
  %5784 = phi float [ %5778, %5751 ], [ %5745, %5743 ]
  %5785 = phi float [ %5781, %5751 ], [ %5746, %5743 ]
  br i1 %5620, label %5817, label %5786

; <label>:5786                                    ; preds = %5782
  %5787 = fmul fast float %4972, 0x400187C840000000
  %5788 = fadd fast float %5787, 0xC00EFC2120000000
  %5789 = fmul fast float %5788, %4972
  %5790 = fadd fast float %5789, 0x3FE5D16340000000
  %5791 = fmul fast float %5790, %4972
  %5792 = fadd fast float %5791, 1.000000e+00
  %5793 = call float @dx.op.unary.f32(i32 7, float %5792)  ; Saturate(value)
  %5794 = fsub fast float %5747, %141
  %5795 = fsub fast float %5748, %142
  %5796 = fsub fast float %5749, %143
  %5797 = fsub fast float %5747, %5575
  %5798 = fsub fast float %5748, %5576
  %5799 = fsub fast float %5749, %5577
  %5800 = call float @dx.op.dot3.f32(i32 55, float %5794, float %5795, float %5796, float %5794, float %5795, float %5796)  ; Dot3(ax,ay,az,bx,by,bz)
  %5801 = call float @dx.op.dot3.f32(i32 55, float %5797, float %5798, float %5799, float %5797, float %5798, float %5799)  ; Dot3(ax,ay,az,bx,by,bz)
  %5802 = fadd fast float %5801, 0x3EE4F8B580000000
  %5803 = fdiv fast float %5800, %5802
  %5804 = bitcast float %5803 to i32
  %5805 = ashr i32 %5804, 1
  %5806 = add nsw i32 %5805, 532487669
  %5807 = bitcast i32 %5806 to float
  %5808 = fmul fast float %5807, %5793
  %5809 = call float @dx.op.unary.f32(i32 7, float %5808)  ; Saturate(value)
  %5810 = fmul fast float %5809, 0x4009981AE0000000
  %5811 = fsub fast float 0x40111BBD80000000, %5810
  %5812 = fmul fast float %5811, %5809
  %5813 = fadd fast float %5812, 0xC0009F6020000000
  %5814 = fmul fast float %5813, %5809
  %5815 = fadd fast float %5814, 1.000000e+00
  %5816 = call float @dx.op.unary.f32(i32 7, float %5815)  ; Saturate(value)
  br label %5820

; <label>:5817                                    ; preds = %5782
  %5818 = icmp ne i32 %5621, -1
  %5819 = zext i1 %5818 to i32
  br label %5820

; <label>:5820                                    ; preds = %5817, %5786
  %5821 = phi float [ %4972, %5817 ], [ %5816, %5786 ]
  %5822 = phi i32 [ %5819, %5817 ], [ 0, %5786 ]
  %5823 = fmul float %5821, 5.000000e+00
  %5824 = fsub float 5.000000e+00, %5823
  %5825 = icmp ne i32 %5822, 0
  %5826 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 143)  ; CBufferLoadLegacy(handle,regIndex)
  %5827 = extractvalue %dx.types.CBufRet.f32 %5826, 3
  %5828 = fadd fast float %5827, %5824
  %5829 = call float @dx.op.binary.f32(i32 35, float 0.000000e+00, float %5828)  ; FMax(a,b)
  %5830 = call float @dx.op.unary.f32(i32 6, float %5783)  ; FAbs(value)
  %5831 = call float @dx.op.unary.f32(i32 6, float %5784)  ; FAbs(value)
  %5832 = fadd fast float %5831, %5830
  %5833 = call float @dx.op.unary.f32(i32 6, float %5785)  ; FAbs(value)
  %5834 = fadd fast float %5832, %5833
  %5835 = fcmp fast oeq float %5834, 0.000000e+00
  %5836 = fdiv fast float 1.000000e+00, %5834
  %5837 = select i1 %5835, float 1.000000e+00, float %5836
  %5838 = fmul fast float %5837, %5783
  %5839 = fmul fast float %5837, %5784
  %5840 = call float @dx.op.unary.f32(i32 6, float %5839)  ; FAbs(value)
  %5841 = call float @dx.op.unary.f32(i32 6, float %5838)  ; FAbs(value)
  %5842 = fsub fast float 1.000000e+00, %5840
  %5843 = fsub fast float 1.000000e+00, %5841
  %5844 = fcmp fast oge float %5838, 0.000000e+00
  %5845 = fcmp fast oge float %5839, 0.000000e+00
  %5846 = select i1 %5844, float 1.000000e+00, float -1.000000e+00
  %5847 = select i1 %5845, float 1.000000e+00, float -1.000000e+00
  %5848 = fcmp fast ole float %5785, 0.000000e+00
  %5849 = fmul fast float %5846, %5842
  %5850 = fmul fast float %5847, %5843
  %5851 = select i1 %5848, float %5849, float %5838
  %5852 = select i1 %5848, float %5850, float %5839
  %5853 = fmul fast float %5851, 5.000000e-01
  %5854 = fmul fast float %5852, 5.000000e-01
  %5855 = fadd fast float %5853, 5.000000e-01
  %5856 = fadd fast float %5854, 5.000000e-01
  %5857 = uitofp i32 %5618 to float
  %5858 = call float @dx.op.binary.f32(i32 36, float %5829, float 3.000000e+00)  ; FMin(a,b)
  %5859 = fadd fast float %5858, 2.000000e+00
  %5860 = call float @dx.op.unary.f32(i32 21, float %5859)  ; Exp(value)
  %5861 = extractvalue %dx.types.CBufRet.f32 %5826, 1
  %5862 = fmul fast float %5861, %5860
  %5863 = fmul fast float %5862, 2.000000e+00
  %5864 = fsub fast float 1.000000e+00, %5863
  %5865 = fmul fast float %5855, %5864
  %5866 = fmul fast float %5856, %5864
  %5867 = fadd fast float %5865, %5862
  %5868 = fadd fast float %5866, %5862
  %5869 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %9, %dx.types.Handle %37, float %5867, float %5868, float %5857, float undef, i32 0, i32 0, i32 undef, float %5829)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %5870 = extractvalue %dx.types.ResRet.f32 %5869, 0
  %5871 = extractvalue %dx.types.ResRet.f32 %5869, 1
  %5872 = extractvalue %dx.types.ResRet.f32 %5869, 2
  %5873 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %5874 = extractvalue %dx.types.CBufRet.f32 %5873, 3
  %5875 = fmul fast float %5874, %5588
  %5876 = call float @dx.op.binary.f32(i32 36, float %5053, float %5875)  ; FMin(a,b)
  %5877 = select i1 %5825, float %5876, float %5875
  %5878 = fmul fast float %5870, %5667
  %5879 = fmul fast float %5878, %5877
  %5880 = fmul fast float %5871, %5667
  %5881 = fmul fast float %5880, %5877
  %5882 = fmul fast float %5872, %5667
  %5883 = fmul fast float %5882, %5877
  %5884 = fadd fast float %5879, %5560
  %5885 = fadd fast float %5881, %5561
  %5886 = fadd fast float %5883, %5562
  %5887 = fmul fast float %5747, %5667
  %5888 = fmul fast float %5748, %5667
  %5889 = fmul fast float %5749, %5667
  %5890 = fadd fast float %5887, %5565
  %5891 = fadd fast float %5888, %5566
  %5892 = fadd fast float %5889, %5567
  %5893 = fsub fast float %5563, %5667
  br label %5669

; <label>:5894                                    ; preds = %5669
  br label %5895

; <label>:5895                                    ; preds = %5894, %5526
  %5896 = phi float [ %5527, %5526 ], [ %5670, %5894 ]
  %5897 = phi float [ %5528, %5526 ], [ %5671, %5894 ]
  %5898 = phi float [ %5529, %5526 ], [ %5672, %5894 ]
  %5899 = phi float [ %5530, %5526 ], [ %5673, %5894 ]
  %5900 = phi float [ %5532, %5526 ], [ %5674, %5894 ]
  %5901 = phi float [ %5533, %5526 ], [ %5675, %5894 ]
  %5902 = phi float [ %5534, %5526 ], [ %5676, %5894 ]
  %5903 = add i32 %5531, 1
  %5904 = icmp ugt i32 %5903, %5523
  br i1 %5904, label %5905, label %5526, !llvm.loop !85

; <label>:5905                                    ; preds = %5895
  br label %5906

; <label>:5906                                    ; preds = %5905, %5508
  %5907 = phi float [ 0.000000e+00, %5508 ], [ %5896, %5905 ]
  %5908 = phi float [ 0.000000e+00, %5508 ], [ %5897, %5905 ]
  %5909 = phi float [ 0.000000e+00, %5508 ], [ %5898, %5905 ]
  %5910 = phi float [ 0.000000e+00, %5508 ], [ %5900, %5905 ]
  %5911 = phi float [ 0.000000e+00, %5508 ], [ %5901, %5905 ]
  %5912 = phi float [ 0.000000e+00, %5508 ], [ %5902, %5905 ]
  %5913 = call float @dx.op.dot3.f32(i32 55, float %5907, float %5908, float %5909, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %5914 = select i1 %183, float 0.000000e+00, float %5907
  %5915 = select i1 %183, float %5913, float %5908
  %5916 = select i1 %183, float 0.000000e+00, float %5909
  %5917 = fcmp fast olt float %5432, 0.000000e+00
  %5918 = call float @dx.op.unary.f32(i32 6, float %5432)  ; FAbs(value)
  %5919 = fmul fast float %5918, %5433
  %5920 = fmul fast float %5918, %5434
  %5921 = fmul fast float %5918, %5435
  %5922 = select i1 %5917, float %5433, float %5919
  %5923 = select i1 %5917, float %5434, float %5920
  %5924 = select i1 %5917, float %5435, float %5921
  %5925 = fsub fast float 1.000000e+00, %5918
  %5926 = call float @dx.op.unary.f32(i32 7, float %5925)  ; Saturate(value)
  %5927 = fmul fast float %5926, %5914
  %5928 = fmul fast float %5926, %5915
  %5929 = fmul fast float %5926, %5916
  %5930 = fadd fast float %5922, %5927
  %5931 = fadd fast float %5923, %5928
  %5932 = fadd fast float %5924, %5929
  %5933 = fcmp fast une float %5182, 0.000000e+00
  br i1 %5933, label %6034, label %5934

; <label>:5934                                    ; preds = %5906
  %5935 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 156)  ; CBufferLoadLegacy(handle,regIndex)
  %5936 = extractvalue %dx.types.CBufRet.f32 %5935, 0
  %5937 = extractvalue %dx.types.CBufRet.f32 %5935, 1
  %5938 = extractvalue %dx.types.CBufRet.f32 %5935, 2
  %5939 = extractvalue %dx.types.CBufRet.f32 %5935, 3
  %5940 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 157)  ; CBufferLoadLegacy(handle,regIndex)
  %5941 = extractvalue %dx.types.CBufRet.f32 %5940, 0
  %5942 = extractvalue %dx.types.CBufRet.f32 %5940, 1
  %5943 = extractvalue %dx.types.CBufRet.f32 %5940, 2
  %5944 = extractvalue %dx.types.CBufRet.f32 %5940, 3
  %5945 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 159)  ; CBufferLoadLegacy(handle,regIndex)
  %5946 = extractvalue %dx.types.CBufRet.f32 %5945, 0
  %5947 = extractvalue %dx.types.CBufRet.f32 %5945, 1
  %5948 = extractvalue %dx.types.CBufRet.f32 %5945, 2
  %5949 = extractvalue %dx.types.CBufRet.f32 %5945, 3
  %5950 = call float @dx.op.dot3.f32(i32 55, float %5946, float %5947, float %5948, float %4997, float %4998, float %4999)  ; Dot3(ax,ay,az,bx,by,bz)
  %5951 = call float @dx.op.dot3.f32(i32 55, float %5910, float %5911, float %5912, float %5946, float %5947, float %5948)  ; Dot3(ax,ay,az,bx,by,bz)
  %5952 = call float @dx.op.dot3.f32(i32 55, float %141, float %142, float %143, float %5946, float %5947, float %5948)  ; Dot3(ax,ay,az,bx,by,bz)
  %5953 = fadd fast float %4972, -1.000000e+00
  %5954 = fsub fast float %5951, %5952
  %5955 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 92)  ; CBufferLoadLegacy(handle,regIndex)
  %5956 = extractvalue %dx.types.CBufRet.f32 %5955, 2
  %5957 = fmul fast float %5956, %5951
  %5958 = fdiv fast float 1.600000e+02, %5957
  %5959 = fmul fast float %5953, %5953
  %5960 = fmul fast float %5959, 0xBFB5B17960000000
  %5961 = fmul fast float %5960, %5954
  %5962 = fmul fast float %5961, %5958
  %5963 = call float @dx.op.unary.f32(i32 21, float %5962)  ; Exp(value)
  %5964 = fmul fast float %5963, 0x3FF04B2960000000
  %5965 = fsub fast float 0x3FF04B2960000000, %5964
  %5966 = call float @dx.op.unary.f32(i32 7, float %5965)  ; Saturate(value)
  %5967 = fmul fast float %5966, 4.000000e+00
  %5968 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 160)  ; CBufferLoadLegacy(handle,regIndex)
  %5969 = extractvalue %dx.types.CBufRet.f32 %5968, 0
  %5970 = extractvalue %dx.types.CBufRet.f32 %5968, 1
  %5971 = extractvalue %dx.types.CBufRet.f32 %5968, 2
  %5972 = fadd fast float %5969, %5910
  %5973 = fadd fast float %5970, %5911
  %5974 = fadd fast float %5971, %5912
  %5975 = fmul fast float %5972, %5936
  %5976 = call float @dx.op.tertiary.f32(i32 46, float %5973, float %5937, float %5975)  ; FMad(a,b,c)
  %5977 = call float @dx.op.tertiary.f32(i32 46, float %5974, float %5938, float %5976)  ; FMad(a,b,c)
  %5978 = fadd fast float %5977, %5939
  %5979 = fmul fast float %5972, %5941
  %5980 = call float @dx.op.tertiary.f32(i32 46, float %5973, float %5942, float %5979)  ; FMad(a,b,c)
  %5981 = call float @dx.op.tertiary.f32(i32 46, float %5974, float %5943, float %5980)  ; FMad(a,b,c)
  %5982 = fadd fast float %5981, %5944
  %5983 = fmul fast float %5972, %5946
  %5984 = call float @dx.op.tertiary.f32(i32 46, float %5973, float %5947, float %5983)  ; FMad(a,b,c)
  %5985 = call float @dx.op.tertiary.f32(i32 46, float %5974, float %5948, float %5984)  ; FMad(a,b,c)
  %5986 = fadd fast float %5985, %5949
  %5987 = fdiv fast float %5978, %5986
  %5988 = fdiv fast float %5982, %5986
  %5989 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %41, i32 4)  ; CBufferLoadLegacy(handle,regIndex)
  %5990 = extractvalue %dx.types.CBufRet.f32 %5989, 0
  %5991 = extractvalue %dx.types.CBufRet.f32 %5989, 1
  %5992 = fmul fast float %5990, %5987
  %5993 = fmul fast float %5991, %5988
  %5994 = extractvalue %dx.types.CBufRet.f32 %5989, 2
  %5995 = extractvalue %dx.types.CBufRet.f32 %5989, 3
  %5996 = fadd fast float %5992, %5994
  %5997 = fadd fast float %5993, %5995
  %5998 = fmul fast float %5950, 8.000000e+00
  %5999 = call float @dx.op.unary.f32(i32 7, float %5998)  ; Saturate(value)
  %6000 = fmul fast float %5996, 2.000000e+00
  %6001 = fmul fast float %5997, 2.000000e+00
  %6002 = fadd fast float %6000, -1.000000e+00
  %6003 = fadd fast float %6001, -1.000000e+00
  %6004 = fmul fast float %6002, %6002
  %6005 = fsub fast float 1.000000e+00, %6004
  %6006 = call float @dx.op.unary.f32(i32 7, float %6005)  ; Saturate(value)
  %6007 = fmul fast float %6003, %6003
  %6008 = fsub fast float 1.000000e+00, %6007
  %6009 = call float @dx.op.unary.f32(i32 7, float %6008)  ; Saturate(value)
  %6010 = fmul fast float %5182, %6006
  %6011 = fmul fast float %6010, %6009
  %6012 = call float @dx.op.unary.f32(i32 7, float %6011)  ; Saturate(value)
  %6013 = fmul fast float %6012, %5999
  %6014 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %20, %dx.types.Handle %37, float %5996, float %5997, float undef, float undef, i32 0, i32 0, i32 undef, float %5967)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6015 = extractvalue %dx.types.ResRet.f32 %6014, 0
  %6016 = extractvalue %dx.types.ResRet.f32 %6014, 1
  %6017 = extractvalue %dx.types.ResRet.f32 %6014, 2
  %6018 = select i1 %183, float 0.000000e+00, float %6016
  %6019 = select i1 %183, float 0.000000e+00, float %6017
  %6020 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6021 = extractvalue %dx.types.CBufRet.f32 %6020, 2
  %6022 = fmul fast float %6021, %6015
  %6023 = fmul fast float %6018, %6021
  %6024 = fmul fast float %6019, %6021
  %6025 = fsub fast float %6022, %5914
  %6026 = fsub fast float %6023, %5915
  %6027 = fsub fast float %6024, %5916
  %6028 = fmul fast float %6025, %6013
  %6029 = fmul fast float %6026, %6013
  %6030 = fmul fast float %6027, %6013
  %6031 = fadd fast float %6028, %5914
  %6032 = fadd fast float %6029, %5915
  %6033 = fadd fast float %6030, %5916
  br label %6034

; <label>:6034                                    ; preds = %5934, %5906, %5431, %5155
  %6035 = phi float [ %5433, %5431 ], [ %5930, %5906 ], [ %5112, %5155 ], [ %6031, %5934 ]
  %6036 = phi float [ %5434, %5431 ], [ %5931, %5906 ], [ %5113, %5155 ], [ %6032, %5934 ]
  %6037 = phi float [ %5435, %5431 ], [ %5932, %5906 ], [ %5114, %5155 ], [ %6033, %5934 ]
  %6038 = fmul fast float %5161, %5108
  %6039 = fmul fast float %5161, %5109
  %6040 = fmul fast float %5161, %5110
  %6041 = call float @dx.op.dot3.f32(i32 55, float %4969, float %4970, float %4971, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6042 = fcmp fast ogt float %6041, 0x3E7FF19E20000000
  %6043 = fdiv fast float 1.000000e+00, %6041
  %6044 = select i1 %6042, float %6043, float 0.000000e+00
  %6045 = fmul fast float %6044, %4969
  %6046 = fmul fast float %6044, %4970
  %6047 = fmul fast float %6044, %4971
  %6048 = fadd fast float %6045, -1.000000e+00
  %6049 = fadd fast float %6046, -1.000000e+00
  %6050 = fadd fast float %6047, -1.000000e+00
  %6051 = fmul fast float %6048, 5.000000e-01
  %6052 = fmul fast float %6049, 5.000000e-01
  %6053 = fmul fast float %6050, 5.000000e-01
  %6054 = fadd fast float %6051, 1.000000e+00
  %6055 = fadd fast float %6052, 1.000000e+00
  %6056 = fadd fast float %6053, 1.000000e+00
  %6057 = fmul fast float %6035, %5156
  %6058 = fmul fast float %6036, %5157
  %6059 = fmul fast float %6037, %5158
  %6060 = fsub fast float 1.000000e+00, %4991
  %6061 = bitcast float %6060 to i32
  %6062 = sitofp i32 %6061 to float
  %6063 = fmul fast float %6062, 5.000000e+00
  %6064 = fadd fast float %6063, 0xC1EFBF8940000000
  %6065 = fptosi float %6064 to i32
  %6066 = bitcast i32 %6065 to float
  %6067 = fmul fast float %6066, %4362
  %6068 = fmul fast float %5108, %6067
  %6069 = fmul fast float %6068, %5161
  %6070 = fmul fast float %6069, %6054
  %6071 = fmul fast float %5109, %6067
  %6072 = fmul fast float %6071, %5161
  %6073 = fmul fast float %6072, %6055
  %6074 = fmul fast float %5110, %6067
  %6075 = fmul fast float %6074, %5161
  %6076 = fmul fast float %6075, %6056
  %6077 = fmul fast float %6038, %4358
  %6078 = fmul fast float %6039, %4358
  %6079 = fmul fast float %6040, %4358
  %6080 = fadd fast float %6057, %4354
  %6081 = fadd fast float %6080, %6070
  %6082 = fmul fast float %6081, %4358
  %6083 = fadd fast float %6058, %4355
  %6084 = fadd fast float %6083, %6073
  %6085 = fmul fast float %6084, %4358
  %6086 = fadd fast float %6059, %4356
  %6087 = fadd fast float %6086, %6076
  %6088 = fmul fast float %6087, %4358
  %6089 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 54)  ; CBufferLoadLegacy(handle,regIndex)
  %6090 = extractvalue %dx.types.CBufRet.f32 %6089, 3
  %6091 = fcmp fast oeq float %6090, 0.000000e+00
  br i1 %6091, label %6310, label %6092

; <label>:6092                                    ; preds = %6034
  %6093 = extractvalue %dx.types.CBufRet.f32 %6089, 0
  %6094 = extractvalue %dx.types.CBufRet.f32 %6089, 1
  %6095 = extractvalue %dx.types.CBufRet.f32 %6089, 2
  %6096 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 55)  ; CBufferLoadLegacy(handle,regIndex)
  %6097 = extractvalue %dx.types.CBufRet.f32 %6096, 0
  %6098 = extractvalue %dx.types.CBufRet.f32 %6096, 1
  %6099 = extractvalue %dx.types.CBufRet.f32 %6096, 2
  %6100 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 56)  ; CBufferLoadLegacy(handle,regIndex)
  %6101 = extractvalue %dx.types.CBufRet.f32 %6100, 0
  %6102 = extractvalue %dx.types.CBufRet.f32 %6100, 1
  %6103 = call float @dx.op.dot3.f32(i32 55, float %6097, float %6098, float %6099, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6104 = select i1 %183, float %6101, float %6097
  %6105 = select i1 %183, float %6103, float %6098
  %6106 = select i1 %183, float %6102, float %6099
  %6107 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 82)  ; CBufferLoadLegacy(handle,regIndex)
  %6108 = extractvalue %dx.types.CBufRet.f32 %6107, 1
  %6109 = fcmp fast une float %6108, 0.000000e+00
  br i1 %6109, label %6110, label %6127

; <label>:6110                                    ; preds = %6092
  %6111 = fptoui float %78 to i32
  %6112 = fptoui float %79 to i32
  %6113 = lshr i32 %6111, 4
  %6114 = lshr i32 %6112, 4
  %6115 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 52)  ; CBufferLoadLegacy(handle,regIndex)
  %6116 = extractvalue %dx.types.CBufRet.f32 %6115, 0
  %6117 = fptoui float %6116 to i32
  %6118 = add i32 %6117, 15
  %6119 = lshr i32 %6118, 4
  %6120 = mul i32 %6119, %6114
  %6121 = add i32 %6120, %6113
  %6122 = shl i32 %6121, 3
  %6123 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %5, i32 %6122, i32 undef)  ; BufferLoad(srv,index,wot)
  %6124 = extractvalue %dx.types.ResRet.i32 %6123, 0
  %6125 = and i32 %6124, -268435456
  %6126 = icmp eq i32 %6125, -1342177280
  br i1 %6126, label %6132, label %6127

; <label>:6127                                    ; preds = %6110, %6092
  %6128 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %4, %dx.types.Handle %40, float %4977, float %4978, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6129 = extractvalue %dx.types.ResRet.f32 %6128, 0
  %6130 = extractvalue %dx.types.ResRet.f32 %6128, 1
  %6131 = extractvalue %dx.types.ResRet.f32 %6128, 2
  br label %6132

; <label>:6132                                    ; preds = %6127, %6110
  %6133 = phi float [ %6129, %6127 ], [ 0.000000e+00, %6110 ]
  %6134 = phi float [ %6130, %6127 ], [ 0.000000e+00, %6110 ]
  %6135 = phi float [ %6131, %6127 ], [ 0.000000e+00, %6110 ]
  %6136 = call float @dx.op.binary.f32(i32 36, float %6134, float %6135)  ; FMin(a,b)
  %6137 = call float @dx.op.binary.f32(i32 36, float %6133, float %6136)  ; FMin(a,b)
  %6138 = fcmp fast ogt float %6137, 0.000000e+00
  br i1 %6138, label %6139, label %6310, !dx.controlflow.hints !87

; <label>:6139                                    ; preds = %6132
  %6140 = fmul fast float %6133, %6104
  %6141 = fmul fast float %6134, %6105
  %6142 = fmul fast float %6135, %6106
  %6143 = fsub fast float %6093, %4962
  %6144 = fsub fast float %6094, %4961
  %6145 = fsub fast float %6095, %4960
  %6146 = call float @dx.op.dot3.f32(i32 55, float %6143, float %6144, float %6145, float %6143, float %6144, float %6145)  ; Dot3(ax,ay,az,bx,by,bz)
  %6147 = call float @dx.op.unary.f32(i32 25, float %6146)  ; Rsqrt(value)
  %6148 = fmul fast float %6147, %6143
  %6149 = fmul fast float %6147, %6144
  %6150 = fmul fast float %6147, %6145
  %6151 = call float @dx.op.dot3.f32(i32 55, float %6093, float %6094, float %6095, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %6152 = call float @dx.op.dot3.f32(i32 55, float %4959, float %4958, float %4957, float %6148, float %6149, float %6150)  ; Dot3(ax,ay,az,bx,by,bz)
  %6153 = call float @dx.op.unary.f32(i32 7, float %6151)  ; Saturate(value)
  %6154 = fmul fast float %6153, %6153
  %6155 = fmul fast float %6154, %5016
  %6156 = call float @dx.op.unary.f32(i32 7, float %6155)  ; Saturate(value)
  %6157 = fmul fast float %6156, %6153
  %6158 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %6148, float %6149, float %6150)  ; Dot3(ax,ay,az,bx,by,bz)
  %6159 = fmul fast float %6158, %6158
  %6160 = call float @dx.op.unary.f32(i32 6, float %6151)  ; FAbs(value)
  %6161 = fsub fast float 1.000000e+00, %5009
  %6162 = fmul fast float %4991, %4991
  %6163 = fmul fast float %6162, %6161
  %6164 = fadd fast float %6163, %5009
  %6165 = bitcast float %6164 to i32
  %6166 = ashr i32 %6165, 1
  %6167 = add nsw i32 %6166, 532487669
  %6168 = bitcast i32 %6167 to float
  %6169 = fadd fast float %6168, %4991
  %6170 = fmul fast float %5009, %6159
  %6171 = fsub fast float 1.000000e+00, %6159
  %6172 = fadd fast float %6171, %6170
  %6173 = fmul fast float %6160, %6160
  %6174 = fmul fast float %6173, %6161
  %6175 = fadd fast float %6174, %5009
  %6176 = bitcast float %6175 to i32
  %6177 = ashr i32 %6176, 1
  %6178 = add nsw i32 %6177, 532487669
  %6179 = bitcast i32 %6178 to float
  %6180 = fadd fast float %6179, %6160
  %6181 = fmul fast float %6172, %6172
  %6182 = fmul fast float %6181, %6169
  %6183 = fmul fast float %6182, %6180
  %6184 = fdiv fast float 0x3FF0A00000000000, %6183
  %6185 = fmul fast float %6184, %5009
  %6186 = call float @dx.op.unary.f32(i32 6, float %6152)  ; FAbs(value)
  %6187 = fsub fast float 1.000000e+00, %6186
  %6188 = bitcast float %6187 to i32
  %6189 = sitofp i32 %6188 to float
  %6190 = fmul fast float %6189, 5.000000e+00
  %6191 = fadd fast float %6190, 0xC1EFBF8940000000
  %6192 = fptosi float %6191 to i32
  %6193 = bitcast i32 %6192 to float
  %6194 = fsub fast float 1.000000e+00, %4966
  %6195 = fsub fast float 1.000000e+00, %4967
  %6196 = fsub fast float 1.000000e+00, %4989
  %6197 = fmul fast float %6193, %6194
  %6198 = fmul fast float %6193, %6195
  %6199 = fmul fast float %6193, %6196
  %6200 = fadd fast float %6197, %4966
  %6201 = fadd fast float %6198, %4967
  %6202 = fadd fast float %6199, %4989
  br i1 %5128, label %6203, label %6226

; <label>:6203                                    ; preds = %6139
  %6204 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4361, float %6186, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6205 = extractvalue %dx.types.ResRet.f32 %6204, 0
  %6206 = extractvalue %dx.types.ResRet.f32 %6204, 1
  %6207 = extractvalue %dx.types.ResRet.f32 %6204, 2
  %6208 = fadd fast float %6205, -5.000000e-01
  %6209 = fadd fast float %6206, -5.000000e-01
  %6210 = fadd fast float %6207, -5.000000e-01
  %6211 = fmul fast float %4966, 4.000000e+00
  %6212 = fmul fast float %6211, %6194
  %6213 = fmul fast float %6212, %6208
  %6214 = fmul fast float %4967, 4.000000e+00
  %6215 = fmul fast float %6214, %6195
  %6216 = fmul fast float %6215, %6209
  %6217 = fmul fast float %4989, 4.000000e+00
  %6218 = fmul fast float %6217, %6196
  %6219 = fmul fast float %6218, %6210
  %6220 = fadd fast float %6213, %6200
  %6221 = fadd fast float %6216, %6201
  %6222 = fadd fast float %6219, %6202
  %6223 = call float @dx.op.unary.f32(i32 7, float %6220)  ; Saturate(value)
  %6224 = call float @dx.op.unary.f32(i32 7, float %6221)  ; Saturate(value)
  %6225 = call float @dx.op.unary.f32(i32 7, float %6222)  ; Saturate(value)
  br label %6226

; <label>:6226                                    ; preds = %6203, %6139
  %6227 = phi float [ %6223, %6203 ], [ %6200, %6139 ]
  %6228 = phi float [ %6224, %6203 ], [ %6201, %6139 ]
  %6229 = phi float [ %6225, %6203 ], [ %6202, %6139 ]
  %6230 = fmul fast float %6151, 9.843750e-01
  %6231 = fadd fast float %6230, 7.812500e-03
  %6232 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6231, float %5118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6233 = extractvalue %dx.types.ResRet.f32 %6232, 2
  %6234 = extractvalue %dx.types.ResRet.f32 %6232, 3
  %6235 = fmul fast float %6233, %4966
  %6236 = fmul fast float %6233, %4967
  %6237 = fmul fast float %6233, %4989
  %6238 = fadd fast float %6235, %6234
  %6239 = fadd fast float %6236, %6234
  %6240 = fadd fast float %6237, %6234
  br i1 %5128, label %6241, label %6264

; <label>:6241                                    ; preds = %6226
  %6242 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4361, float %6151, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6243 = extractvalue %dx.types.ResRet.f32 %6242, 0
  %6244 = extractvalue %dx.types.ResRet.f32 %6242, 1
  %6245 = extractvalue %dx.types.ResRet.f32 %6242, 2
  %6246 = fadd fast float %6243, -5.000000e-01
  %6247 = fadd fast float %6244, -5.000000e-01
  %6248 = fadd fast float %6245, -5.000000e-01
  %6249 = fmul fast float %4966, 4.000000e+00
  %6250 = fmul fast float %6249, %6194
  %6251 = fmul fast float %6250, %6246
  %6252 = fmul fast float %4967, 4.000000e+00
  %6253 = fmul fast float %6252, %6195
  %6254 = fmul fast float %6253, %6247
  %6255 = fmul fast float %4989, 4.000000e+00
  %6256 = fmul fast float %6255, %6196
  %6257 = fmul fast float %6256, %6248
  %6258 = fadd fast float %6251, %6238
  %6259 = fadd fast float %6254, %6239
  %6260 = fadd fast float %6257, %6240
  %6261 = call float @dx.op.unary.f32(i32 7, float %6258)  ; Saturate(value)
  %6262 = call float @dx.op.unary.f32(i32 7, float %6259)  ; Saturate(value)
  %6263 = call float @dx.op.unary.f32(i32 7, float %6260)  ; Saturate(value)
  br label %6264

; <label>:6264                                    ; preds = %6241, %6226
  %6265 = phi float [ %6261, %6241 ], [ %6238, %6226 ]
  %6266 = phi float [ %6262, %6241 ], [ %6239, %6226 ]
  %6267 = phi float [ %6263, %6241 ], [ %6240, %6226 ]
  %6268 = call float @dx.op.binary.f32(i32 35, float %6266, float %6267)  ; FMax(a,b)
  %6269 = call float @dx.op.binary.f32(i32 35, float %6265, float %6268)  ; FMax(a,b)
  %6270 = fsub fast float 1.000000e+00, %6269
  %6271 = fmul fast float %6227, %6185
  %6272 = fmul fast float %6228, %6185
  %6273 = fmul fast float %6229, %6185
  %6274 = fsub fast float 1.000000e+00, %6152
  %6275 = bitcast float %6274 to i32
  %6276 = sitofp i32 %6275 to float
  %6277 = fmul fast float %6276, 5.000000e+00
  %6278 = fadd fast float %6277, 0xC1EFBF8940000000
  %6279 = fptosi float %6278 to i32
  %6280 = bitcast i32 %6279 to float
  %6281 = fmul fast float %6280, %4362
  %6282 = fmul fast float %6270, %6281
  %6283 = fmul fast float %6282, %6054
  %6284 = fmul fast float %6282, %6055
  %6285 = fmul fast float %6282, %6056
  %6286 = fadd fast float %6283, %6271
  %6287 = fadd fast float %6284, %6272
  %6288 = fadd fast float %6285, %6273
  %6289 = fmul fast float %6157, %6140
  %6290 = fmul fast float %6289, %6270
  %6291 = fmul fast float %6157, %6141
  %6292 = fmul fast float %6291, %6270
  %6293 = fmul fast float %6157, %6142
  %6294 = fmul fast float %6293, %6270
  %6295 = fmul fast float %6289, %6286
  %6296 = fmul fast float %6291, %6287
  %6297 = fmul fast float %6293, %6288
  %6298 = fadd fast float %6290, %6038
  %6299 = fmul fast float %6298, %4358
  %6300 = fadd fast float %6292, %6039
  %6301 = fmul fast float %6300, %4358
  %6302 = fadd fast float %6294, %6040
  %6303 = fmul fast float %6302, %4358
  %6304 = fadd fast float %6295, %6081
  %6305 = fmul fast float %6304, %4358
  %6306 = fadd fast float %6296, %6084
  %6307 = fmul fast float %6306, %4358
  %6308 = fadd fast float %6297, %6087
  %6309 = fmul fast float %6308, %4358
  br label %6310

; <label>:6310                                    ; preds = %6264, %6132, %6034
  %6311 = phi float [ %6082, %6034 ], [ %6082, %6132 ], [ %6305, %6264 ]
  %6312 = phi float [ %6085, %6034 ], [ %6085, %6132 ], [ %6307, %6264 ]
  %6313 = phi float [ %6088, %6034 ], [ %6088, %6132 ], [ %6309, %6264 ]
  %6314 = phi float [ %6077, %6034 ], [ %6077, %6132 ], [ %6299, %6264 ]
  %6315 = phi float [ %6078, %6034 ], [ %6078, %6132 ], [ %6301, %6264 ]
  %6316 = phi float [ %6079, %6034 ], [ %6079, %6132 ], [ %6303, %6264 ]
  %6317 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6318 = extractvalue %dx.types.CBufRet.i32 %6317, 0
  %6319 = icmp eq i32 %6318, 0
  br i1 %6319, label %6750, label %6320

; <label>:6320                                    ; preds = %6310
  %6321 = fptoui float %78 to i32
  %6322 = fptoui float %79 to i32
  %6323 = lshr i32 %6321, 4
  %6324 = lshr i32 %6322, 4
  %6325 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 47)  ; CBufferLoadLegacy(handle,regIndex)
  %6326 = extractvalue %dx.types.CBufRet.i32 %6325, 0
  %6327 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6324, i32 %6326, i32 %6323)  ; UMad(a,b,c)
  %6328 = add nsw i32 %6318, -1
  %6329 = call i32 @dx.op.binary.i32(i32 37, i32 %6328, i32 0)  ; IMax(a,b)
  %6330 = call float @dx.op.binary.f32(i32 35, float %73, float 0.000000e+00)  ; FMax(a,b)
  %6331 = fptoui float %6330 to i32
  %6332 = lshr i32 %6331, 5
  %6333 = call i32 @dx.op.binary.i32(i32 40, i32 %6332, i32 8191)  ; UMin(a,b)
  %6334 = shl i32 %6333, 2
  %6335 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %2, i32 %6334, i32 undef)  ; BufferLoad(srv,index,wot)
  %6336 = extractvalue %dx.types.ResRet.i32 %6335, 0
  %6337 = lshr i32 %6336, 16
  %6338 = and i32 %6336, 65535
  %6339 = lshr i32 %6336, 21
  %6340 = lshr i32 %6338, 5
  %6341 = call i32 @dx.op.binary.i32(i32 40, i32 %6340, i32 %6329)  ; UMin(a,b)
  %6342 = icmp ugt i32 %6339, %6341
  br i1 %6342, label %6750, label %6343

; <label>:6343                                    ; preds = %6320
  br label %6344

; <label>:6344                                    ; preds = %6740, %6343
  %6345 = phi i32 [ %6747, %6740 ], [ %6339, %6343 ]
  %6346 = phi float [ %6741, %6740 ], [ %6311, %6343 ]
  %6347 = phi float [ %6742, %6740 ], [ %6312, %6343 ]
  %6348 = phi float [ %6743, %6740 ], [ %6313, %6343 ]
  %6349 = phi float [ %6744, %6740 ], [ %6314, %6343 ]
  %6350 = phi float [ %6745, %6740 ], [ %6315, %6343 ]
  %6351 = phi float [ %6746, %6740 ], [ %6316, %6343 ]
  %6352 = call %dx.types.CBufRet.i32 @dx.op.cbufferLoadLegacy.i32(i32 59, %dx.types.Handle %42, i32 48)  ; CBufferLoadLegacy(handle,regIndex)
  %6353 = extractvalue %dx.types.CBufRet.i32 %6352, 0
  %6354 = call i32 @dx.op.tertiary.i32(i32 49, i32 %6327, i32 %6353, i32 %6345)  ; UMad(a,b,c)
  %6355 = shl i32 %6354, 2
  %6356 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %3, i32 %6355, i32 undef)  ; BufferLoad(srv,index,wot)
  %6357 = extractvalue %dx.types.ResRet.i32 %6356, 0
  %6358 = shl i32 %6345, 5
  %6359 = sub nsw i32 %6337, %6358
  %6360 = call i32 @dx.op.binary.i32(i32 37, i32 %6359, i32 0)  ; IMax(a,b)
  %6361 = call i32 @dx.op.binary.i32(i32 38, i32 %6360, i32 31)  ; IMin(a,b)
  %6362 = sub nsw i32 1, %6337
  %6363 = add nsw i32 %6362, %6338
  %6364 = call i32 @dx.op.binary.i32(i32 37, i32 %6363, i32 0)  ; IMax(a,b)
  %6365 = call i32 @dx.op.binary.i32(i32 38, i32 %6364, i32 32)  ; IMin(a,b)
  %6366 = and i32 %6365, 31
  %6367 = shl i32 -1, %6366
  %6368 = xor i32 %6367, -1
  %6369 = and i32 %6361, 31
  %6370 = shl i32 %6368, %6369
  %6371 = icmp eq i32 %6365, 32
  %6372 = select i1 %6371, i32 -1, i32 %6370
  %6373 = and i32 %6372, %6357
  %6374 = icmp eq i32 %6373, 0
  br i1 %6374, label %6740, label %6375

; <label>:6375                                    ; preds = %6344
  br label %6376

; <label>:6376                                    ; preds = %6456, %6375
  %6377 = phi i32 [ %6388, %6456 ], [ %6373, %6375 ]
  %6378 = phi float [ %6457, %6456 ], [ %6346, %6375 ]
  %6379 = phi float [ %6458, %6456 ], [ %6347, %6375 ]
  %6380 = phi float [ %6459, %6456 ], [ %6348, %6375 ]
  %6381 = phi float [ %6460, %6456 ], [ %6349, %6375 ]
  %6382 = phi float [ %6461, %6456 ], [ %6350, %6375 ]
  %6383 = phi float [ %6462, %6456 ], [ %6351, %6375 ]
  %6384 = call i32 @dx.op.unaryBits.i32(i32 32, i32 %6377)  ; FirstbitLo(value)
  %6385 = add i32 %6384, %6358
  %6386 = and i32 %6384, 31
  %6387 = shl i32 1, %6386
  %6388 = xor i32 %6387, %6377
  %6389 = mul i32 %6385, 112
  %6390 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6389, i32 undef)  ; BufferLoad(srv,index,wot)
  %6391 = extractvalue %dx.types.ResRet.f32 %6390, 0
  %6392 = extractvalue %dx.types.ResRet.f32 %6390, 1
  %6393 = extractvalue %dx.types.ResRet.f32 %6390, 2
  %6394 = or i32 %6389, 12
  %6395 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6394, i32 undef)  ; BufferLoad(srv,index,wot)
  %6396 = extractvalue %dx.types.ResRet.f32 %6395, 0
  %6397 = add i32 %6389, 44
  %6398 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6397, i32 undef)  ; BufferLoad(srv,index,wot)
  %6399 = extractvalue %dx.types.ResRet.f32 %6398, 0
  %6400 = add i32 %6389, 48
  %6401 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6400, i32 undef)  ; BufferLoad(srv,index,wot)
  %6402 = extractvalue %dx.types.ResRet.f32 %6401, 0
  %6403 = extractvalue %dx.types.ResRet.f32 %6401, 1
  %6404 = extractvalue %dx.types.ResRet.f32 %6401, 2
  %6405 = add i32 %6389, 80
  %6406 = call %dx.types.ResRet.f32 @dx.op.bufferLoad.f32(i32 68, %dx.types.Handle %6, i32 %6405, i32 undef)  ; BufferLoad(srv,index,wot)
  %6407 = extractvalue %dx.types.ResRet.f32 %6406, 1
  %6408 = extractvalue %dx.types.ResRet.f32 %6406, 2
  %6409 = call float @dx.op.dot3.f32(i32 55, float %6391, float %6392, float %6393, float 0x3FCB367A00000000, float 0x3FE6E2EB20000000, float 0x3FB27BB300000000)  ; Dot3(ax,ay,az,bx,by,bz)
  %6410 = select i1 %183, float %6407, float %6391
  %6411 = select i1 %183, float %6409, float %6392
  %6412 = select i1 %183, float %6408, float %6393
  %6413 = fsub fast float %6402, %141
  %6414 = fsub fast float %6403, %142
  %6415 = fsub fast float %6404, %143
  %6416 = call float @dx.op.dot3.f32(i32 55, float %6413, float %6414, float %6415, float %6413, float %6414, float %6415)  ; Dot3(ax,ay,az,bx,by,bz)
  %6417 = call float @dx.op.unary.f32(i32 24, float %6416)  ; Sqrt(value)
  %6418 = fdiv fast float 1.000000e+00, %6417
  %6419 = fmul fast float %6418, %6413
  %6420 = fmul fast float %6418, %6414
  %6421 = fmul fast float %6418, %6415
  %6422 = fadd fast float %6417, %6396
  %6423 = fdiv fast float 1.000000e+00, %6422
  %6424 = fmul float %6399, %6423
  %6425 = fmul float %6424, %6424
  %6426 = call float @dx.op.unary.f32(i32 7, float %6425)  ; Saturate(value)
  %6427 = and i32 %6387, %6373
  %6428 = icmp eq i32 %6427, 0
  br i1 %6428, label %6451, label %6429, !dx.controlflow.hints !88

; <label>:6429                                    ; preds = %6376
  %6430 = lshr i32 %6321, 5
  %6431 = lshr i32 %6322, 5
  %6432 = call %dx.types.ResRet.i32 @dx.op.textureLoad.i32(i32 66, %dx.types.Handle %30, i32 0, i32 %6430, i32 %6431, i32 %6385, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6433 = extractvalue %dx.types.ResRet.i32 %6432, 0
  %6434 = and i32 %6433, 3
  %6435 = icmp eq i32 %6434, 0
  %6436 = select i1 %6435, float 1.000000e+00, float 0.000000e+00
  %6437 = icmp eq i32 %6434, 3
  br i1 %6437, label %6438, label %6451

; <label>:6438                                    ; preds = %6429
  %6439 = lshr i32 %6433, 10
  %6440 = and i32 %6439, 8160
  %6441 = and i32 %6322, 31
  %6442 = or i32 %6440, %6441
  %6443 = lshr i32 %6433, 1
  %6444 = and i32 %6443, 16352
  %6445 = and i32 %6321, 31
  %6446 = or i32 %6444, %6445
  %6447 = lshr i32 %6433, 23
  %6448 = and i32 %6447, 255
  %6449 = call %dx.types.ResRet.f32 @dx.op.textureLoad.f32(i32 66, %dx.types.Handle %29, i32 0, i32 %6446, i32 %6442, i32 %6448, i32 undef, i32 undef, i32 undef)  ; TextureLoad(srv,mipLevelOrSampleCount,coord0,coord1,coord2,offset0,offset1,offset2)
  %6450 = extractvalue %dx.types.ResRet.f32 %6449, 0
  br label %6451

; <label>:6451                                    ; preds = %6438, %6429, %6376
  %6452 = phi float [ %6450, %6438 ], [ %6436, %6429 ], [ 0.000000e+00, %6376 ]
  %6453 = call float @dx.op.binary.f32(i32 36, float %6452, float %6452)  ; FMin(a,b)
  %6454 = call float @dx.op.binary.f32(i32 36, float %6452, float %6453)  ; FMin(a,b)
  %6455 = fcmp fast ogt float %6454, 0.000000e+00
  br i1 %6455, label %6464, label %6456, !dx.controlflow.hints !89

; <label>:6456                                    ; preds = %6696, %6451
  %6457 = phi float [ %6378, %6451 ], [ %6736, %6696 ]
  %6458 = phi float [ %6379, %6451 ], [ %6737, %6696 ]
  %6459 = phi float [ %6380, %6451 ], [ %6738, %6696 ]
  %6460 = phi float [ %6381, %6451 ], [ %6730, %6696 ]
  %6461 = phi float [ %6382, %6451 ], [ %6731, %6696 ]
  %6462 = phi float [ %6383, %6451 ], [ %6732, %6696 ]
  %6463 = icmp eq i32 %6377, %6387
  br i1 %6463, label %6739, label %6376

; <label>:6464                                    ; preds = %6451
  %6465 = fmul fast float %6452, %6410
  %6466 = fmul fast float %6452, %6411
  %6467 = fmul fast float %6452, %6412
  %6468 = fsub fast float %6404, %4762
  %6469 = fcmp fast ogt float %6468, 0.000000e+00
  %6470 = fsub fast float %143, %4762
  %6471 = fcmp fast ogt float %6470, 0.000000e+00
  %6472 = xor i1 %6471, %6469
  %6473 = fsub fast float %4762, %6404
  %6474 = fmul fast float %6473, 2.000000e+00
  %6475 = fadd fast float %6474, %6404
  %6476 = select i1 %6472, float %6404, float %6475
  %6477 = fsub fast float %6476, %143
  %6478 = call float @dx.op.dot3.f32(i32 55, float %6413, float %6414, float %6477, float %6413, float %6414, float %6477)  ; Dot3(ax,ay,az,bx,by,bz)
  %6479 = call float @dx.op.unary.f32(i32 25, float %6478)  ; Rsqrt(value)
  %6480 = fmul fast float %6479, %6413
  %6481 = fmul fast float %6479, %6414
  %6482 = fmul fast float %6479, %6477
  %6483 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float %4770)  ; Dot3(ax,ay,az,bx,by,bz)
  %6484 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float %6480, float %6481, float %6482)  ; Dot3(ax,ay,az,bx,by,bz)
  %6485 = fdiv fast float 1.000000e+00, %6484
  %6486 = fmul fast float %6485, %6483
  %6487 = call float @dx.op.dot3.f32(i32 55, float 0.000000e+00, float 0.000000e+00, float %6470, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6488 = fcmp fast ogt float %6487, 0.000000e+00
  %6489 = fcmp fast olt float %6487, 0.000000e+00
  %6490 = zext i1 %6488 to i32
  %6491 = zext i1 %6489 to i32
  %6492 = sub nsw i32 %6490, %6491
  %6493 = sitofp i32 %6492 to float
  %6494 = fsub fast float %6476, %4762
  %6495 = call float @dx.op.dot3.f32(i32 55, float %6413, float %6414, float %6494, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00)  ; Dot3(ax,ay,az,bx,by,bz)
  %6496 = fcmp fast ogt float %6495, 0.000000e+00
  %6497 = fcmp fast olt float %6495, 0.000000e+00
  %6498 = zext i1 %6496 to i32
  %6499 = zext i1 %6497 to i32
  %6500 = sub nsw i32 %6498, %6499
  %6501 = sitofp i32 %6500 to float
  %6502 = fcmp fast une float %6493, %6501
  br i1 %6502, label %6503, label %6513

; <label>:6503                                    ; preds = %6464
  %6504 = fmul fast float %6486, %6482
  %6505 = fmul fast float %6486, %6481
  %6506 = fmul fast float %6486, %6480
  %6507 = fmul fast float %6506, %6506
  %6508 = fmul fast float %6505, %6505
  %6509 = fadd fast float %6507, %6508
  %6510 = fmul fast float %6504, %6504
  %6511 = fadd fast float %6509, %6510
  %6512 = call float @dx.op.unary.f32(i32 24, float %6511)  ; Sqrt(value)
  br label %6525

; <label>:6513                                    ; preds = %6464
  %6514 = icmp slt i32 %6492, 0
  br i1 %6514, label %6515, label %6525

; <label>:6515                                    ; preds = %6513
  %6516 = fsub fast float %141, %6402
  %6517 = fsub fast float %142, %6403
  %6518 = fsub fast float %143, %6476
  %6519 = fmul fast float %6516, %6516
  %6520 = fmul fast float %6517, %6517
  %6521 = fadd fast float %6519, %6520
  %6522 = fmul fast float %6518, %6518
  %6523 = fadd fast float %6521, %6522
  %6524 = call float @dx.op.unary.f32(i32 24, float %6523)  ; Sqrt(value)
  br label %6525

; <label>:6525                                    ; preds = %6515, %6513, %6503
  %6526 = phi float [ %6512, %6503 ], [ %6524, %6515 ], [ 0.000000e+00, %6513 ]
  %6527 = and i1 %6471, %6469
  %6528 = fsub fast float -0.000000e+00, %6526
  %6529 = select i1 %6527, float -0.000000e+00, float %6528
  %6530 = fmul fast float %4763, 0x3FF7154760000000
  %6531 = fmul fast float %6530, %6529
  %6532 = fmul fast float %4764, 0x3FF7154760000000
  %6533 = fmul fast float %6532, %6529
  %6534 = fmul fast float %4765, 0x3FF7154760000000
  %6535 = fmul fast float %6534, %6529
  %6536 = call float @dx.op.unary.f32(i32 21, float %6531)  ; Exp(value)
  %6537 = call float @dx.op.unary.f32(i32 21, float %6533)  ; Exp(value)
  %6538 = call float @dx.op.unary.f32(i32 21, float %6535)  ; Exp(value)
  %6539 = call float @dx.op.unary.f32(i32 7, float %6536)  ; Saturate(value)
  %6540 = call float @dx.op.unary.f32(i32 7, float %6537)  ; Saturate(value)
  %6541 = call float @dx.op.unary.f32(i32 7, float %6538)  ; Saturate(value)
  %6542 = fmul fast float %6465, %6539
  %6543 = fmul fast float %6466, %6540
  %6544 = fmul fast float %6467, %6541
  %6545 = fsub fast float %6419, %4962
  %6546 = fsub fast float %6420, %4961
  %6547 = fsub fast float %6421, %4960
  %6548 = call float @dx.op.dot3.f32(i32 55, float %6545, float %6546, float %6547, float %6545, float %6546, float %6547)  ; Dot3(ax,ay,az,bx,by,bz)
  %6549 = call float @dx.op.unary.f32(i32 25, float %6548)  ; Rsqrt(value)
  %6550 = fmul fast float %6549, %6545
  %6551 = fmul fast float %6549, %6546
  %6552 = fmul fast float %6549, %6547
  %6553 = call float @dx.op.dot3.f32(i32 55, float %6419, float %6420, float %6421, float %4963, float %4964, float %4965)  ; Dot3(ax,ay,az,bx,by,bz)
  %6554 = call float @dx.op.dot3.f32(i32 55, float %4959, float %4958, float %4957, float %6550, float %6551, float %6552)  ; Dot3(ax,ay,az,bx,by,bz)
  %6555 = call float @dx.op.unary.f32(i32 7, float %6553)  ; Saturate(value)
  %6556 = fmul fast float %6555, %6426
  %6557 = fmul fast float %6555, %6555
  %6558 = fmul fast float %6557, %5016
  %6559 = call float @dx.op.unary.f32(i32 7, float %6558)  ; Saturate(value)
  %6560 = fmul fast float %6556, %6559
  %6561 = bitcast float %6416 to i32
  %6562 = ashr i32 %6561, 1
  %6563 = sub nsw i32 1597463007, %6562
  %6564 = bitcast i32 %6563 to float
  %6565 = fmul fast float %6564, %6413
  %6566 = fmul fast float %6564, %6414
  %6567 = fmul fast float %6564, %6415
  %6568 = fsub fast float %6565, %4962
  %6569 = fsub fast float %6566, %4961
  %6570 = fsub fast float %6567, %4960
  %6571 = call float @dx.op.dot3.f32(i32 55, float %6568, float %6569, float %6570, float %6568, float %6569, float %6570)  ; Dot3(ax,ay,az,bx,by,bz)
  %6572 = call float @dx.op.unary.f32(i32 25, float %6571)  ; Rsqrt(value)
  %6573 = fmul fast float %6568, %6572
  %6574 = fmul fast float %6569, %6572
  %6575 = fmul fast float %6570, %6572
  %6576 = call float @dx.op.dot3.f32(i32 55, float %4963, float %4964, float %4965, float %6573, float %6574, float %6575)  ; Dot3(ax,ay,az,bx,by,bz)
  %6577 = fmul fast float %6576, %6576
  %6578 = call float @dx.op.unary.f32(i32 6, float %6553)  ; FAbs(value)
  %6579 = fsub fast float 1.000000e+00, %5009
  %6580 = fmul fast float %4991, %4991
  %6581 = fmul fast float %6580, %6579
  %6582 = fadd fast float %6581, %5009
  %6583 = bitcast float %6582 to i32
  %6584 = ashr i32 %6583, 1
  %6585 = add nsw i32 %6584, 532487669
  %6586 = bitcast i32 %6585 to float
  %6587 = fadd fast float %6586, %4991
  %6588 = fmul fast float %5009, %6577
  %6589 = fsub fast float 1.000000e+00, %6577
  %6590 = fadd fast float %6589, %6588
  %6591 = fmul fast float %6578, %6578
  %6592 = fmul fast float %6591, %6579
  %6593 = fadd fast float %6592, %5009
  %6594 = bitcast float %6593 to i32
  %6595 = ashr i32 %6594, 1
  %6596 = add nsw i32 %6595, 532487669
  %6597 = bitcast i32 %6596 to float
  %6598 = fadd fast float %6597, %6578
  %6599 = fmul fast float %6590, %6590
  %6600 = fmul fast float %6599, %6587
  %6601 = fmul fast float %6600, %6598
  %6602 = fdiv fast float 1.000000e+00, %6601
  %6603 = bitcast float %5009 to i32
  %6604 = sitofp i32 %6603 to float
  %6605 = fmul fast float %6604, 0x3FE7F73180000000
  %6606 = fadd fast float %6605, 0x41AFE27C40000000
  %6607 = fptosi float %6606 to i32
  %6608 = bitcast i32 %6607 to float
  %6609 = fmul fast float %6399, 0x3FD80E9D60000000
  %6610 = fmul fast float %6609, %6564
  %6611 = fadd fast float %6608, %6610
  %6612 = bitcast float %6611 to i32
  %6613 = sub nsw i32 2129859010, %6612
  %6614 = bitcast i32 %6613 to float
  %6615 = fmul fast float %5009, %6602
  %6616 = fmul fast float %6615, %6608
  %6617 = fmul fast float %6616, %6614
  %6618 = call float @dx.op.unary.f32(i32 6, float %6554)  ; FAbs(value)
  %6619 = fsub fast float 1.000000e+00, %6618
  %6620 = bitcast float %6619 to i32
  %6621 = sitofp i32 %6620 to float
  %6622 = fmul fast float %6621, 5.000000e+00
  %6623 = fadd fast float %6622, 0xC1EFBF8940000000
  %6624 = fptosi float %6623 to i32
  %6625 = bitcast i32 %6624 to float
  %6626 = fsub fast float 1.000000e+00, %4966
  %6627 = fsub fast float 1.000000e+00, %4967
  %6628 = fsub fast float 1.000000e+00, %4989
  %6629 = fmul fast float %6625, %6626
  %6630 = fmul fast float %6625, %6627
  %6631 = fmul fast float %6625, %6628
  %6632 = fadd fast float %6629, %4966
  %6633 = fadd fast float %6630, %4967
  %6634 = fadd fast float %6631, %4989
  br i1 %5128, label %6635, label %6658

; <label>:6635                                    ; preds = %6525
  %6636 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4361, float %6618, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6637 = extractvalue %dx.types.ResRet.f32 %6636, 0
  %6638 = extractvalue %dx.types.ResRet.f32 %6636, 1
  %6639 = extractvalue %dx.types.ResRet.f32 %6636, 2
  %6640 = fadd fast float %6637, -5.000000e-01
  %6641 = fadd fast float %6638, -5.000000e-01
  %6642 = fadd fast float %6639, -5.000000e-01
  %6643 = fmul fast float %4966, 4.000000e+00
  %6644 = fmul fast float %6643, %6626
  %6645 = fmul fast float %6644, %6640
  %6646 = fmul fast float %4967, 4.000000e+00
  %6647 = fmul fast float %6646, %6627
  %6648 = fmul fast float %6647, %6641
  %6649 = fmul fast float %4989, 4.000000e+00
  %6650 = fmul fast float %6649, %6628
  %6651 = fmul fast float %6650, %6642
  %6652 = fadd fast float %6645, %6632
  %6653 = fadd fast float %6648, %6633
  %6654 = fadd fast float %6651, %6634
  %6655 = call float @dx.op.unary.f32(i32 7, float %6652)  ; Saturate(value)
  %6656 = call float @dx.op.unary.f32(i32 7, float %6653)  ; Saturate(value)
  %6657 = call float @dx.op.unary.f32(i32 7, float %6654)  ; Saturate(value)
  br label %6658

; <label>:6658                                    ; preds = %6635, %6525
  %6659 = phi float [ %6655, %6635 ], [ %6632, %6525 ]
  %6660 = phi float [ %6656, %6635 ], [ %6633, %6525 ]
  %6661 = phi float [ %6657, %6635 ], [ %6634, %6525 ]
  %6662 = fmul fast float %6553, 9.843750e-01
  %6663 = fadd fast float %6662, 7.812500e-03
  %6664 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %35, %dx.types.Handle %39, float %6663, float %5118, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6665 = extractvalue %dx.types.ResRet.f32 %6664, 2
  %6666 = extractvalue %dx.types.ResRet.f32 %6664, 3
  %6667 = fmul fast float %6665, %4966
  %6668 = fmul fast float %6665, %4967
  %6669 = fmul fast float %6665, %4989
  %6670 = fadd fast float %6667, %6666
  %6671 = fadd fast float %6668, %6666
  %6672 = fadd fast float %6669, %6666
  br i1 %5128, label %6673, label %6696

; <label>:6673                                    ; preds = %6658
  %6674 = call %dx.types.ResRet.f32 @dx.op.sampleLevel.f32(i32 62, %dx.types.Handle %8, %dx.types.Handle %39, float %4361, float %6553, float undef, float undef, i32 0, i32 0, i32 undef, float 0.000000e+00)  ; SampleLevel(srv,sampler,coord0,coord1,coord2,coord3,offset0,offset1,offset2,LOD)
  %6675 = extractvalue %dx.types.ResRet.f32 %6674, 0
  %6676 = extractvalue %dx.types.ResRet.f32 %6674, 1
  %6677 = extractvalue %dx.types.ResRet.f32 %6674, 2
  %6678 = fadd fast float %6675, -5.000000e-01
  %6679 = fadd fast float %6676, -5.000000e-01
  %6680 = fadd fast float %6677, -5.000000e-01
  %6681 = fmul fast float %4966, 4.000000e+00
  %6682 = fmul fast float %6681, %6626
  %6683 = fmul fast float %6682, %6678
  %6684 = fmul fast float %4967, 4.000000e+00
  %6685 = fmul fast float %6684, %6627
  %6686 = fmul fast float %6685, %6679
  %6687 = fmul fast float %4989, 4.000000e+00
  %6688 = fmul fast float %6687, %6628
  %6689 = fmul fast float %6688, %6680
  %6690 = fadd fast float %6683, %6670
  %6691 = fadd fast float %6686, %6671
  %6692 = fadd fast float %6689, %6672
  %6693 = call float @dx.op.unary.f32(i32 7, float %6690)  ; Saturate(value)
  %6694 = call float @dx.op.unary.f32(i32 7, float %6691)  ; Saturate(value)
  %6695 = call float @dx.op.unary.f32(i32 7, float %6692)  ; Saturate(value)
  br label %6696

; <label>:6696                                    ; preds = %6673, %6658
  %6697 = phi float [ %6693, %6673 ], [ %6670, %6658 ]
  %6698 = phi float [ %6694, %6673 ], [ %6671, %6658 ]
  %6699 = phi float [ %6695, %6673 ], [ %6672, %6658 ]
  %6700 = call float @dx.op.binary.f32(i32 35, float %6698, float %6699)  ; FMax(a,b)
  %6701 = call float @dx.op.binary.f32(i32 35, float %6697, float %6700)  ; FMax(a,b)
  %6702 = fsub fast float 1.000000e+00, %6701
  %6703 = fmul fast float %6659, %6617
  %6704 = fmul fast float %6660, %6617
  %6705 = fmul fast float %6661, %6617
  %6706 = fsub fast float 1.000000e+00, %6554
  %6707 = bitcast float %6706 to i32
  %6708 = sitofp i32 %6707 to float
  %6709 = fmul fast float %6708, 5.000000e+00
  %6710 = fadd fast float %6709, 0xC1EFBF8940000000
  %6711 = fptosi float %6710 to i32
  %6712 = bitcast i32 %6711 to float
  %6713 = fmul fast float %6712, %4362
  %6714 = fmul fast float %6702, %6713
  %6715 = fmul fast float %6714, %6054
  %6716 = fmul fast float %6714, %6055
  %6717 = fmul fast float %6714, %6056
  %6718 = fadd fast float %6715, %6703
  %6719 = fadd fast float %6716, %6704
  %6720 = fadd fast float %6717, %6705
  %6721 = fmul fast float %6542, %4358
  %6722 = fmul fast float %6721, %6560
  %6723 = fmul fast float %6722, %6702
  %6724 = fmul fast float %6543, %4358
  %6725 = fmul fast float %6724, %6560
  %6726 = fmul fast float %6725, %6702
  %6727 = fmul fast float %6544, %4358
  %6728 = fmul fast float %6727, %6560
  %6729 = fmul fast float %6728, %6702
  %6730 = fadd fast float %6723, %6381
  %6731 = fadd fast float %6726, %6382
  %6732 = fadd fast float %6729, %6383
  %6733 = fmul fast float %6722, %6718
  %6734 = fmul fast float %6725, %6719
  %6735 = fmul fast float %6728, %6720
  %6736 = fadd fast float %6733, %6378
  %6737 = fadd fast float %6734, %6379
  %6738 = fadd fast float %6735, %6380
  br label %6456

; <label>:6739                                    ; preds = %6456
  br label %6740

; <label>:6740                                    ; preds = %6739, %6344
  %6741 = phi float [ %6346, %6344 ], [ %6457, %6739 ]
  %6742 = phi float [ %6347, %6344 ], [ %6458, %6739 ]
  %6743 = phi float [ %6348, %6344 ], [ %6459, %6739 ]
  %6744 = phi float [ %6349, %6344 ], [ %6460, %6739 ]
  %6745 = phi float [ %6350, %6344 ], [ %6461, %6739 ]
  %6746 = phi float [ %6351, %6344 ], [ %6462, %6739 ]
  %6747 = add i32 %6345, 1
  %6748 = icmp ugt i32 %6747, %6341
  br i1 %6748, label %6749, label %6344

; <label>:6749                                    ; preds = %6740
  br label %6750

; <label>:6750                                    ; preds = %6749, %6320, %6310
  %6751 = phi float [ %6311, %6310 ], [ %6311, %6320 ], [ %6741, %6749 ]
  %6752 = phi float [ %6312, %6310 ], [ %6312, %6320 ], [ %6742, %6749 ]
  %6753 = phi float [ %6313, %6310 ], [ %6313, %6320 ], [ %6743, %6749 ]
  %6754 = phi float [ %6314, %6310 ], [ %6314, %6320 ], [ %6744, %6749 ]
  %6755 = phi float [ %6315, %6310 ], [ %6315, %6320 ], [ %6745, %6749 ]
  %6756 = phi float [ %6316, %6310 ], [ %6316, %6320 ], [ %6746, %6749 ]
  %6757 = call float @dx.op.unary.f32(i32 24, float %4969)  ; Sqrt(value)
  %6758 = call float @dx.op.unary.f32(i32 24, float %4970)  ; Sqrt(value)
  %6759 = call float @dx.op.unary.f32(i32 24, float %4971)  ; Sqrt(value)
  %6760 = fmul fast float %6757, %6754
  %6761 = fmul fast float %6758, %6755
  %6762 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6763 = extractvalue %dx.types.CBufRet.f32 %6762, 0
  br i1 %183, label %6764, label %6787

; <label>:6764                                    ; preds = %6750
  %6765 = fadd fast float %6756, %4364
  %6766 = fmul fast float %6765, %4365
  %6767 = fsub fast float 1.000000e+00, %4365
  %6768 = call float @dx.op.unary.f32(i32 7, float %6767)  ; Saturate(value)
  %6769 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 11)  ; CBufferLoadLegacy(handle,regIndex)
  %6770 = extractvalue %dx.types.CBufRet.f32 %6769, 3
  %6771 = fmul fast float %6770, %6768
  %6772 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 12)  ; CBufferLoadLegacy(handle,regIndex)
  %6773 = extractvalue %dx.types.CBufRet.f32 %6772, 0
  %6774 = fmul fast float %6773, %6060
  %6775 = extractvalue %dx.types.CBufRet.f32 %6772, 2
  %6776 = fmul fast float %6775, %4987
  %6777 = fadd fast float %6761, %6760
  %6778 = fmul fast float %6763, %6777
  %6779 = extractvalue %dx.types.CBufRet.f32 %6769, 1
  %6780 = fadd fast float %6771, %6766
  %6781 = fsub fast float %6780, %6774
  %6782 = fadd fast float %6781, %6776
  %6783 = fsub fast float %6782, %6779
  %6784 = extractvalue %dx.types.CBufRet.f32 %6769, 2
  %6785 = fmul fast float %6783, %6784
  %6786 = call float @dx.op.unary.f32(i32 7, float %6785)  ; Saturate(value)
  br label %6803

; <label>:6787                                    ; preds = %6750
  %6788 = fmul fast float %6759, %6756
  %6789 = fmul fast float %6763, %6760
  %6790 = fmul fast float %6763, %6761
  %6791 = fmul fast float %6788, %6763
  %6792 = add i32 %43, 356
  %6793 = call %dx.types.ResRet.i32 @dx.op.bufferLoad.i32(i32 68, %dx.types.Handle %36, i32 %6792, i32 undef)  ; BufferLoad(srv,index,wot)
  %6794 = extractvalue %dx.types.ResRet.i32 %6793, 0
  %6795 = and i32 %6794, 32
  %6796 = icmp eq i32 %6795, 0
  br i1 %6796, label %6803, label %6797

; <label>:6797                                    ; preds = %6787
  %6798 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 253)  ; CBufferLoadLegacy(handle,regIndex)
  %6799 = extractvalue %dx.types.CBufRet.f32 %6798, 0
  %6800 = fmul fast float %6799, 0x3FE99999A0000000
  %6801 = fadd fast float %6799, %6789
  %6802 = fadd fast float %6800, %6791
  br label %6803

; <label>:6803                                    ; preds = %6797, %6787, %6764
  %6804 = phi float [ %6778, %6764 ], [ %6801, %6797 ], [ %6789, %6787 ]
  %6805 = phi float [ %6786, %6764 ], [ %6790, %6797 ], [ %6790, %6787 ]
  %6806 = phi float [ 1.000000e+00, %6764 ], [ %6802, %6797 ], [ %6791, %6787 ]
  %6807 = call %dx.types.CBufRet.f32 @dx.op.cbufferLoadLegacy.f32(i32 59, %dx.types.Handle %42, i32 15)  ; CBufferLoadLegacy(handle,regIndex)
  %6808 = extractvalue %dx.types.CBufRet.f32 %6807, 0
  %6809 = fmul fast float %6808, %6752
  %6810 = fmul fast float %6808, %6753
  %6811 = fadd fast float %6752, %6751
  %6812 = select i1 %183, float %6811, float %6751
  %6813 = fmul float %6812, %6808
  %6814 = select i1 %183, float 0.000000e+00, float %6809
  %6815 = select i1 %183, float 0.000000e+00, float %6810
  %6816 = fmul fast float %6804, %6757
  %6817 = fmul fast float %6805, %6758
  %6818 = fmul fast float %6806, %6759
  %6819 = fadd fast float %6813, %6816
  %6820 = fadd fast float %6814, %6817
  %6821 = fadd fast float %6815, %6818
  %6822 = select i1 %183, float %6805, float %6820
  %6823 = select i1 %183, float %6806, float %6821
  %6824 = call float @dx.op.binary.f32(i32 36, float %6819, float 3.225500e+04)  ; FMin(a,b)
  %6825 = call float @dx.op.binary.f32(i32 36, float %6822, float 3.225500e+04)  ; FMin(a,b)
  %6826 = call float @dx.op.binary.f32(i32 36, float %6823, float 3.225500e+04)  ; FMin(a,b)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 0, float %6824)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 1, float %6825)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
  call void @dx.op.storeOutput.f32(i32 5, i32 0, i32 0, i8 2, float %6826)  ; StoreOutput(outputSigId,rowIndex,colIndex,value)
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

